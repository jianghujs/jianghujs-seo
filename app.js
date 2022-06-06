'use strict';

const fs = require('fs');
const path = require('path');
const fsPromises = require("fs").promises;
const util = require("util");
const exists = util.promisify(fs.exists);
const { MeiliSearch } = require('meilisearch');
const docs_searchbar_demo = require('./app/meilisearch/docs_searchbar_demo.json');

class AppBootHook {
  constructor(app) {
    this.app = app;
  }

  async serverDidReady() {
    await this.uploadDirCreate();
    // await this.initMeiliSearchData();
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
    const config = this.app.config;
    const client = new MeiliSearch({ 
      host: config.meilisearch.host,
      apiKey: config.meilisearch.apiKey,
    })
    // await client.deleteIndex('docs_searchbar_demo');
    await client.index('docs_searchbar_demo').deleteAllDocuments();
    const addDocumentsRes = await client.index('docs_searchbar_demo').addDocuments(docs_searchbar_demo);
    this.app.logger.info("[AppBootHook] initMeiliSearchData", addDocumentsRes);
  }

}

module.exports = AppBootHook;

