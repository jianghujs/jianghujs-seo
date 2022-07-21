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
      apiKey: 'Iy4kJeGu643c54a953fdc6a5d0cbf752a228a8fc58cb1a00ddaf1634fe4e82f07475718e',
      allIndexUid: 'cn_openjianghu_org_doc_all',
      publicIndexUid: 'cn_openjianghu_org_doc_public',
    },
    appLogo: `${appId}/public/img/logo.png`,
    appType: "single",
    appDirectoryLink: "/",
    indexPage: `/${appId}/page/home`,
    loginPage: `/${appId}/page/login`,
    helpPage: `/${appId}/page/help`,
    adminUrl: `http://127.0.0.1:8306/admin`,
    junshiHost: "https://junshi.openjianghu.org",
    junshiWebsiteUuid: "XYXOVr_eFenMR6Xi1n9Gt",
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
    jiangHuConfig: {
      // ignoreListOfResourceRequestLog: [
      //   'allPage.getConstantList', 'allPage.httpUploadByStream', 'allPage.httpUploadByBase64', 'allPage.httpDownloadByBase64',
      //   'socket.disconnect', 'socket.connect', 'index.pingRecord', 'chat.getGroupInfo',
      //   'allPage.getUserGroupRoleList', 'allPage.userInfo', 'chat.getMessageHistory', 'index.getSrsToken',
      //   'index.srsRtcRequest', 'index.cleanCurrentUserGroupSession',
      // ],
      // Tip: 兼容配置, 下一个大版本删除
      compatibleConfig: {
        resourceRequestLogRecordUserId: true
      }
    },
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
    onerror: {
      html(error, ctx) {
        const appId = ctx.app.config.appId
        ctx.app.logger.error("[config.default.js] onerror html:", error);
        const { errorCode, errorReason } = error;
        ctx.redirect(`/${appId}/page/home?errorCode=${errorCode}&errorReason=${errorReason}`);
      },
    },     
    siteFile: {
      "/favicon.ico": fs.readFileSync(
        path.join(__dirname, "../app/public/favicon.ico")
      ),
    },
  };
};
