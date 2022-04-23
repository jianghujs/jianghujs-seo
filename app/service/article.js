'use strict';
const Service = require('egg').Service;
const { tableEnum } = require("../constant/constant");
const _ = require("lodash");
const path = require("path");

// TODO: 封装一下
const dayjs = require("dayjs");
const utc = require('dayjs/plugin/utc')
const timezone = require('dayjs/plugin/timezone') // dependent on utc plugin
dayjs.extend(utc)
dayjs.extend(timezone)
const { BizError, errorInfoEnum } = require("../constant/error");
const actionDataScheme = Object.freeze({
});

class ArticleService extends Service {

  async getArticleAndFillArticles() {
    const { ctx, app } = this;
    const { jianghuKnex } = app;
    const articleId = ctx.pathParams && ctx.pathParams[0]
      || this.ctx.request.body.appData.actionData.articleId;
    const article = await jianghuKnex(tableEnum.article)
      .where({ articleId })
      .first();
    if (!article) {
      throw new BizError(errorInfoEnum.article_not_found)
    }

    const { categoryId } = article;
    let articlelist = await jianghuKnex(tableEnum.view01_article)
      .where({
        categoryId,
      })
      .whereNot('articlePublishStatus', 'deleted')
      .select();
    articlelist = articlelist.map(
      ({
        articleId,
        articleTitle,
        categoryId,
        categoryName,
        articleCoverImage,
        articlePublishStatus,
        articleGroupName,
      }) => {
        return {
          articleId,
          articleTitle,
          categoryId,
          categoryName,
          articleCoverImage,
          articlePublishStatus,
          articleGroupName,
        };
      }
    );
    const groupNameArticlelist = articlelist.filter(({ articleGroupName }) => !!articleGroupName);
    const noGroupNameArticlelist = articlelist.filter(
      ({ articleGroupName }) => !articleGroupName
    );
    const groupByArticleMap = _.groupBy(groupNameArticlelist, "articleGroupName");
    const hasGroupNameArticlelist = Object.values(groupByArticleMap).map(list => {
      const { articleGroupName } = list[0];
      return {
        articleTitle: articleGroupName,
        isGroup: true,
        childrenList: list,
      };
    });
    let newArticleList = hasGroupNameArticlelist.concat(noGroupNameArticlelist);
    newArticleList = _.orderBy(
      newArticleList,
      ["id"],
      ["asc"]
    );
    article.articleList = newArticleList;

    const categoryList = await ctx.service.category.getCategoryList();
    for (const category of categoryList) {
      category['active'] = '';
      if (category.articleList.find(e => e.articleId === articleId)) {
        category['active'] = 'layui-this';
      }
    }
    ctx.locals.article = article;
    ctx.locals.categoryList = categoryList;
    return article;
  }

}

module.exports = ArticleService;
