'use strict';

// ========================================常用 require start===========================================
const Service = require('egg').Service;
const { BizError } = require('../constant/error');
const validateUtil = require('egg-jianghu/app/common/validateUtil');
const idGenerateUtil = require('egg-jianghu/app/common/idGenerateUtil');
const { tableEnum } = require('../constant/constant');
const errorInfoEnum = Object.freeze({
  user_id_exist: {
    errorCode: "user_id_exist",
    errorReason: "用户ID已存在",
  },
  user_not_exist: {
    errorCode: "user_not_exist",
    errorReason: "用户不存在",
  },
});
// ========================================常用 require end=============================================
const _ = require('lodash');
const md5 = require('md5-node');
const actionDataScheme = Object.freeze({
  addUser: {
    type: 'object',
    additionalProperties: true,
    required: [ 'userId', 'username', 'clearTextPassword' ],
    properties: {
      clearTextPassword: { type: 'string' },
      userId: { type: 'string' },
      username: { type: 'string' },
      userType: { type: 'string' },
      userStatus: { type: 'string' },
    },
  },
  initUserPassword: {
    type: 'object',
    additionalProperties: true,
    required: [ 'userId', 'clearTextPassword' ],
    properties: {
      userId: { type: 'string' },
      clearTextPassword: { type: 'string' },
    },
  },
});


class UserManagementService extends Service {

  async addUser() {
    const { jianghuKnex } = this.app;
    const actionData = this.ctx.request.body.appData.actionData;
    validateUtil.validate(actionDataScheme.addUser, actionData);
    const { clearTextPassword, userId } = actionData;
    const md5Salt = idGenerateUtil.randomString(12);
    const password = md5(`${clearTextPassword}_${md5Salt}`);
    const idSequence = await this.getNextIdByTableAndField({ table: '_user', field: 'idSequence' });
    const userExistCountResult = await jianghuKnex(tableEnum._user, this.ctx).where({ userId }).count('*', { as: 'count' });
    const userExistCount = userExistCountResult[0].count;
    if (userExistCount > 0) {
      throw new BizError(errorInfoEnum.user_id_exist);
    }
    const insertParams = _.pick(actionData, [ 'username', 'contactNumber', 'gender',
      'birthday', 'signature', 'email', 'userType',
      'userStatus', 'userAvatar' ]);
    await jianghuKnex(tableEnum._user, this.ctx).insert({ ...insertParams, idSequence, userId, password, clearTextPassword, md5Salt });
    return {};
  }

  async resetUserPassword() {
    const { jianghuKnex } = this.app;
    const actionData = this.ctx.request.body.appData.actionData;
    validateUtil.validate(actionDataScheme.initUserPassword, actionData);
    const { userId, clearTextPassword } = actionData;
    const userExistCountResult = await jianghuKnex(tableEnum._user, this.ctx).where({ userId }).count('*', {as: 'count'});
    const userExistCount = userExistCountResult[0].count;
    if (userExistCount === 0) {
      throw new BizError(errorInfoEnum.user_not_exist);
    }
    const md5Salt = idGenerateUtil.randomString(12);
    const password = md5(`${clearTextPassword}_${md5Salt}`);
    await jianghuKnex(tableEnum._user, this.ctx).where({userId}).update({ password, clearTextPassword, md5Salt });
    return {};
  }

  async getNextIdByTableAndField({ table, field }) {
    const knex = this.app.knex;
    const rows = await knex(table).max(`${field} as maxValue`);
    let maxValue = null;
    if (rows.length > 0 && rows[0].maxValue) {
      maxValue = parseInt(rows[0].maxValue) + 1;
    } else {
      maxValue = 26260000;
    }
    return maxValue;
  }
}

module.exports = UserManagementService;
