'use strict';

const path = require('path');

module.exports = appInfo => {

  return {
    language: 'zh',
    static: {
      maxAge: 0,
      buffer: false,
      preload: false,
      maxFiles: 0,
    },
    jiangHuConfig: {
      jianghuConfigDataIgnoreIdList: {
        _constant: [],
        _page: [],
        _resource: [],
        _test_case: [],
        _ui: [],
      }
    },
    logger: {
      outputJSON: true,
      consoleLevel: "DEBUG",
      level: "DEBUG",
      dir: path.join(appInfo.baseDir, "logs"),
      contextFormatter(meta) {
        return `[${meta.date}] [${meta.level}] [${meta.ctx.method} ${meta.ctx.url}] ${meta.message}`;
      },
    },
    knex: {
      client: {
        dialect: "mysql",
        connection: {
          host: "127.0.0.1",
          port: 3306,
          user: "root",
          password: "123456",
          database: 'jianghujs_seo',
        },
        pool: { min: 0, max: 30 },
        acquireConnectionTimeout: 30000,
      },
      app: true,
    },
  };

};
