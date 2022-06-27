'use strict';

const { MeiliSearch } = require('meilisearch');

// 测试代码
async function createAnSearchApiKey () {
    const masterKey = "123456";
    const client = new MeiliSearch({ 
        host: 'http://local.liujiji.com',
        apiKey: masterKey,
    });

    // 删除文档
    // await client.deleteIndex('test');
    // await client.index('docs_searchbar_demo').deleteAllDocuments();

    // 创建一个只读的 api key
    const createKeyRes = await client.createKey({
      description: '只读的api key',
      actions: ['search'],
      indexes: ['cn_openjianghu_org_doc_public', 'openjianghu_org_doc_public', 'cn_openjianghu_org_doc_all', 'openjianghu_org_doc_all'],
      expiresAt: '2026-01-01T00:00:00Z'
    })
    console.log("[AppBootHook] createKeyRes:", createKeyRes);

    // 删除一个 api key
    // for (const keyObj of getKeysRes.results) {
    //   const { key, description } = keyObj;
    //   if (description === "只读的api key") {
    //     await client.deleteKey(key)
    //     console.log("[AppBootHook] deleteKey:", key);
    //   }
    // }

    // 查询所有的 api key
    // const getKeysRes = await client.getKeys();
    // console.log("[AppBootHook] getKeysRes:", getKeysRes);
}

createAnSearchApiKey();