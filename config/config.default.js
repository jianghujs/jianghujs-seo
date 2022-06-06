"use strict";

const path = require("path");
const assert = require("assert");

const {
  middleware,
  middlewareMatch,
} = require("egg-jianghu/config/middlewareConfig");
const fs = require("fs");

const eggJianghuPathTemp = require.resolve("egg-jianghu");
const eggJianghuPath = path.join(eggJianghuPathTemp, "../");

module.exports = (appInfo) => {
  assert(appInfo);
  const appId = "doc";
  const uploadDir = path.join(appInfo.baseDir, "upload");
  const downloadBasePath = `/${appId}/upload`;

  return {
    appId,
    appTitle: "开源江湖",
    meilisearch: {
      host: 'https://meilisearch.openjianghu.org',
      apiKey: 'masterKey',
    },
    appLogo: `${appId}/public/img/logo.png`,
    appType: "single",
    appDirectoryLink: "/",
    indexPage: `/${appId}/page/home`,
    loginPage: `/${appId}/page/login`,
    helpPage: `/${appId}/page/help`,
    adminUrl: `http://127.0.0.1:8306/admin`,
    language: 'zh',
    uploadDir,
    uploadDirConfig: [
      "/articleMaterial",
      "/articleMaterial/_recycle",
      "/materialRepo",
      "/materialRepo/_recycle",
      "/materialRepo/attachment",
      "/materialRepo/image",
      "/materialRepo/audio",
      "/materialRepo/video",
    ],
    materialRepoDir: path.join(uploadDir, "materialRepo"),
    articleMaterialDir: path.join(uploadDir, "articleMaterial"),
    downloadBasePath,
    static: {
      maxAge: 0,
      buffer: false,
      preload: false,
      maxFiles: 0,
      dir: [
        {
          prefix: `/${appId}/public/`,
          dir: path.join(appInfo.baseDir, "app/public"),
        },
        {
          prefix: `/${appId}/public/`,
          dir: path.join(eggJianghuPath, "app/public"),
        },
      ],
    },
    view: {
      defaultViewEngine: "nunjucks",
      mapping: { ".html": "nunjucks" },
      root: [
        path.join(appInfo.baseDir, "app/view"),
        path.join(eggJianghuPath, "app/view"),
      ].join(","),
    },
    middleware,
    ...middlewareMatch,
    // 覆盖 downloadUserInfo，适配 /upload/ 开头的路由
    downloadUserInfo: {
      match(ctx) {
        // url 格式符合 /appId/upload
        return (ctx.request.method === 'GET' || ctx.request.method === 'HEAD')
          && (
            ctx.request.path.startsWith(`/${ctx.app.config.appId}/upload/`)
            || ctx.request.path.startsWith(`/upload/`));
      },
    },
    siteFile: {
      "/favicon.ico": fs.readFileSync(
        path.join(__dirname, "../app/public/favicon.ico")
      ),
    },
  };
};
