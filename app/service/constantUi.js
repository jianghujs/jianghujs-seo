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
      if (item.constantKey === 'header') {
        const menuArticleIds = _.map(menuArray.menuList, (item, index) => {
          if (item.path.includes('/page/article/')) {
            return item.path.split('/')[3];
          }
        });

        if (pageId === 'article') {
          if (!menuArticleIds.length) continue;
          console.log(menuArticleIds)
          const articleId = ctx.pathParams && ctx.pathParams[0] || this.ctx.request.body.appData.actionData.articleId;
          const articleList = await jianghuKnex(tableEnum.article)
            .whereIn('articleId', menuArticleIds)
            .select(['categoryId', 'articleId']);
          const nowArticle = await jianghuKnex(tableEnum.article)
            .where('articleId', articleId)
            .first(['categoryId']);
          const nowArticleCache = articleList.find(e => +e.categoryId === +nowArticle.categoryId);
          _.forEach(menuArray.menuList, (item, index) => {
            if (item.path.includes(nowArticleCache.articleId)) {
              item.active = 'layui-this';
            }
          })
        }
      }
      constantUi[item.constantKey] = menuArray;
    }
    return constantUi;
  }
}

module.exports = ConstantUiService;
