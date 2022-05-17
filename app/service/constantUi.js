'use strict';

// ========================================常用 require start===========================================
const Service = require('egg').Service;
const { BizError } = require('../constant/error');
const validateUtil = require('egg-jianghu/app/common/validateUtil');
const idGenerateUtil = require('egg-jianghu/app/common/idGenerateUtil');
const { tableEnum } = require('../constant/constant');
// ========================================常用 require end=============================================
const _ = require('lodash');
const md5 = require('md5-node');


class ConstantUiService extends Service {

  async constantUiList() {
    const { ctx } = this;
    const { jianghuKnex } = this.app;
    const { pageId } = this.ctx.packagePage;
    const { language } = this.app.config;
    const constantUiList = await jianghuKnex(tableEnum._constant_ui).whereIn('pageId', ['all', pageId]).select();
    const constantUi = {};

    for (const item of constantUiList) {
      const menuArray = ['array', 'object'].includes(item.constantType) ? JSON.parse(item[language]) : item[language];
      constantUi[item.constantKey] = menuArray;
      if (item.constantKey === 'header') {
        const menuArticleIds = _.map(menuArray.menuList, (item, index) => {
          return item.articleId;
        });

        if (pageId === 'article') {
          if (!menuArticleIds.length) continue;
          const articleId = ctx.pathParams && ctx.pathParams[0] || this.ctx.request.body.appData.actionData.articleId;
          const articleList = await jianghuKnex(tableEnum.article)
            .whereIn('articleId', menuArticleIds)
            .select(['categoryId', 'articleId']);
          const nowArticle = await jianghuKnex(tableEnum.article)
            .where('articleId', articleId)
            .first(['categoryId']);
          const nowArticleIndex = articleList.findIndex(e => +e.categoryId === +nowArticle.categoryId);
          if (nowArticleIndex > -1) {
            menuArray.menuList[nowArticleIndex].active = 'layui-this';
          }
        }
      }
    }
    return constantUi;
  }
}

module.exports = ConstantUiService;
