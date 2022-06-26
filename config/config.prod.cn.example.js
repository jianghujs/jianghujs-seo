'use strict';

const path = require('path');

module.exports = appInfo => {

  return {
    language: 'zh',
    meilisearch: {
      host: 'https://meilisearch.openjianghu.org',
      apiKey: 'masterKey',
      allIndexUid: 'cn_openjianghu_org_doc_all',
      publicIndexUid: 'cn_openjianghu_org_doc_public',
    },
    adminUrl: 'https://cn.openjianghu.org/admin',
    static: {
      maxAge: 30 * 24 * 60 * 60,
      buffer: true,
      preload: false,
      maxFiles: 0
    },
    logger: {
      outputJSON: true,
      level: "INFO",
      // level: 'DEBUG',
      // allowDebugAtProd: true,
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
          port: "3306",
          user: "cn_openjianghu_seo",
          password: "123456",
          database: 'cn_openjianghu_seo',
        },
        pool: { min: 0, max: 30 },
        acquireConnectionTimeout: 30000,
      },
      app: true,
    },
  };
};
