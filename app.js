'use strict';

const fs = require('fs');
const path = require('path');
const fsPromises = require("fs").promises;
const util = require("util");
const exists = util.promisify(fs.exists);
const { MeiliSearch } = require('meilisearch');
const movies = require('./movies.json');

class AppBootHook {
  constructor(app) {
    this.app = app;
  }

  async serverDidReady() {
    await this.uploadDirCreate();
    await this.initMeiliSearchData();
  }

  async uploadDirCreate () {
    const { uploadDir, uploadDirConfig } = this.app.config;
    if (!await exists(uploadDir)) {
        await fsPromises.mkdir(uploadDir, { recursive: true });
    }
    for (const dir of uploadDirConfig) {
      const targetDir = path.join(uploadDir, dir);
      if (!await exists(targetDir)) {
          await fsPromises.mkdir(targetDir, { recursive: true });
      }
    }
  }

  async initMeiliSearchData () {
    const client = new MeiliSearch({ host: 'http://127.0.0.1:7700' })
    client.index('movie').addDocuments(movies)
      .then((res) => {
        this.app.logger.info("[AppBootHook] initMeiliSearchData", res);
      })
  }

}

module.exports = AppBootHook;

