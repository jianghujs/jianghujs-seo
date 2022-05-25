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
    const constantUi = Object.fromEntries(
      constantUiList.map(obj => [obj.constantKey, JSON.parse(obj[language] || '{}')])
    );
    return constantUi;
  }
}

module.exports = ConstantUiService;
