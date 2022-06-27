# openjianghu

## 风格

- [参考](https://layui.itze.cn/)

## 配置

1. npm install
2. 复制 `config.local.example.js` 为 `config.local.js`
3. 并且修改数据库配置为自己的数据库, 例如：
   ```
   host: '127.0.0.1',
   port: 3306,
   user: 'root',
   password: '123456',
   database: 'doc'
   ```
4. 启动 npm run dev
   
## 数据库

```sql
# 数据库初始化
create database `doc` default character set utf8mb4 collate utf8mb4_bin;
use doc;
# 运行 sql/init.sql 文件
```

## 线上

- 英文: https://openjianghu.org/doc
- 中文: https://cn.openjianghu.org/doc

## 同步 admin/upload/xx 至 seo/upload/xx

```bash
mkdir /www/wwwroot/openjianghu-seo/upload
ln -s /www/wwwroot/openjianghu-admin/upload/articleMaterial /www/wwwroot/openjianghu-seo/upload/articleMaterial
ln -s /www/wwwroot/openjianghu-admin/upload/materialRepo /www/wwwroot/openjianghu-seo/upload/materialRepo

mkdir /www/wwwroot/cn-openjianghu-seo/upload
ln -s /www/wwwroot/cn-openjianghu-admin/upload/articleMaterial /www/wwwroot/cn-openjianghu-seo/upload/articleMaterial
ln -s /www/wwwroot/cn-openjianghu-admin/upload/materialRepo /www/wwwroot/cn-openjianghu-seo/upload/materialRepo
```

## 测试环境

- 密思文档版 openjianghu https://temp.openjianghu.org/
- 新的openjianghu  https://openjianghu.org/
- openjianghu admin  https://openjianghu.org/openjianghu_admin

## meilisearch 服务器搭建

1. 创建`/www/wwwroot/meilisearch/docker-compose.yml`
```bash
version: "3"
services:
    meilisearch:
        image: getmeili/meilisearch:v0.27.1
        container_name: meilisearch
        restart: always
        volumes:
            - /www/wwwroot/meilisearch/meili_data:/meili_data
        ports:
            - "7700:7700"
        command: "/bin/meilisearch --master-key='123456'"
```
> 进入容器:`docker exec -it --user root meilisearch /bin/bash`
1. 启动
```bash
cd /www/wwwroot/meilisearch
docker-compose up -d
```
1. 访问 http://127.0.0.1:7700  密码: 123456
1. nginx配置
```config
    location / {
        proxy_pass http://127.0.0.1:7700;
        proxy_set_header Host $host;
        proxy_set_header X-Real-IP $remote_addr;
        proxy_set_header X-Forwarded-For $proxy_add_x_forwarded_for;
        proxy_set_header REMOTE-HOST $remote_addr;

        # wss 支持
        proxy_http_version 1.1;
        proxy_set_header Upgrade $http_upgrade;
        proxy_set_header Connection "upgrade";
    }
```
1. 停止
```bash
cd /www/wwwroot/meilisearch
docker-compose down -v
```
1. 创建一个只读的api key(前端使用)
```bash
cd /www/wwwroot/openjianghu-seo
# 修改 app/meilisearch/createAnSearchApiKey.js 内的master-key值
node app/meilisearch/createAnSearchApiKey.js
# 拷贝控制台输出的key 将其配置到 config/config.prod.js 的 `apiKey`
```
1. **docs-scraper 爬取网站数据 到meilisearch:**（需要python3.8+环境）
> [linux python3.x 安装](https://cn.openjianghu.org/doc/page/article/10071)
```bash
cd /www/wwwroot/openjianghu-seo/app/meilisearch/docs-scraper
pip3 install pipenv
pipenv install
# 拷贝.env 并配置参数
cp .env.example .env
# 依次执行这四个脚本
pipenv run ./cn_openjianghu_org_doc_public
pipenv run ./openjianghu_org_doc_public
pipenv run ./cn_openjianghu_org_doc_all
pipenv run ./openjianghu_org_doc_all
```

## Reference

- [创建一个只读的 api key](https://docs.meilisearch.com/learn/security/master_api_keys.html#using-the-master-key-to-manage-api-keys)
- [chrome 307 解决方案](https://www.cnblogs.com/Don/p/12192420.html)
