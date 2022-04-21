'use strict';

// ========================================常用 require start===========================================
const Service = require('egg').Service;
// ========================================常用 require end=============================================
const actionDataaScheme = Object.freeze({
});

class UserService extends Service {

  async userInfo() {
    const { userInfo } = this.ctx;
    return userInfo;
  }

}

module.exports = UserService;
