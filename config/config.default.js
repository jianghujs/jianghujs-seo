"use strict";

const path = require("path");
const assert = require("assert");

const {
  middleware,
  middlewareMatch,
} = require("@jianghujs/jianghu/config/middlewareConfig");
const fs = require("fs");

const jianghuPathTemp = require.resolve('@jianghujs/jianghu');
const jianghuPath = path.join(jianghuPathTemp, "../");

module.exports = (appInfo) => {
  assert(appInfo);
  const appId = "jianghujs_seo";
  const uploadDir = path.join(appInfo.baseDir, "upload");
  const downloadBasePath = `/${appId}/upload`;

  return {
    appId,
    appTitle: "服务端渲染",
    appLogo: `/${appId}/public/logo02.png`,
    appType: "single",
    appDirectoryLink: "/",
    indexPage: `/${appId}/page/home`,
    loginPage: `/${appId}/page/login`,
    helpPage: `/${appId}/page/help`,
    language: 'zh',
    primaryColor: '#4caf50',
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
          dir: path.join(jianghuPath, "app/public"),
        },
      ],
    },
    view: {
      defaultViewEngine: "nunjucks",
      mapping: { ".html": "nunjucks" },
      root: [
        path.join(appInfo.baseDir, "app/view"),
        path.join(jianghuPath, "app/view"),
      ].join(","),
    },
    middleware,
    ...middlewareMatch
  };
};
