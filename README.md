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

mkdir /www/wwwroot/openjianghu_seo/upload
ln -s /www/wwwroot/openjianghu_admin/upload/articleMaterial /www/wwwroot/openjianghu_seo/upload/articleMaterial
ln -s /www/wwwroot/openjianghu_admin/upload/materialRepo /www/wwwroot/openjianghu_seo/upload/materialRepo
ln -s /www/wwwroot/cn_openjianghu_admin/upload/articleMaterial /www/wwwroot/cn_openjianghu_seo/upload/articleMaterial
ln -s /www/wwwroot/cn_openjianghu_admin/upload/materialRepo /www/wwwroot/cn_openjianghu_seo/upload/materialRepo

## 测试环境

- 密思文档版 openjianghu https://temp.openjianghu.org/
- 新的openjianghu  https://openjianghu.org/
- openjianghu admin  https://openjianghu.org/openjianghu_admin

## nginx

```config

    # 将favicon.ico 上传到 /www/wwwroot/openjianghu.org/
    location = /favicon.ico {
      root  /www/wwwroot/openjianghu.org;
    }

    location / {
        proxy_pass http://127.0.0.1:8301;
        proxy_set_header Host $host;
        proxy_set_header X-Real-IP $remote_addr;
        proxy_set_header X-Forwarded-For $proxy_add_x_forwarded_for;
        proxy_set_header REMOTE-HOST $remote_addr;
    
        # wss 支持
        proxy_http_version 1.1;
        proxy_set_header Upgrade $http_upgrade;
        proxy_set_header Connection "upgrade";
        
        # 禁用缓存
        expires 1s;
        add_header X-Cache $upstream_cache_status;
        add_header Cache-Control no-cache;
        proxy_no_cache 1;
        proxy_cache_bypass 1;
    }

```

## meilisearch 服务器搭建

**meilisearch server docker运行:**
```bash
# 创建目录
mkdir /www/wwwroot/meilisearch

# 拉取镜像
docker pull getmeili/meilisearch:v0.27.1

# 启动 meilisearch
docker run -d --rm --name meilisearch -p 7700:7700 -v /www/wwwroot/docker-data/meili_data:/meili_data getmeili/meilisearch:v0.27.1 /bin/meilisearch --master-key='FDsaf343efDsf#$325FGDg435$%fgDG'   

# 进入 meilisearch docker容器
docker exec -it --user root meilisearch /bin/bash
```

> [chrome 307 解决方案](https://www.cnblogs.com/Don/p/12192420.html)

**meilisearch server nginx配置:**(注意不要开启https 重定向)
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
> [meilisearch api调用 支持 ssl](https://docs.meilisearch.com/learn/cookbooks/http2_ssl.html#try-to-use-http-2-without-ssl)

**docs-scraper 爬取网站数据:**(注意：mac m1 不支持)
```bash
docker run -t --rm -e MEILISEARCH_HOST_URL=http://127.0.0.1:7700 -e MEILISEARCH_API_KEY=FDsaf343efDsf#$325FGDg435$%fgDG -v /www/wwwroot/openjianghu_seo/app/meilisearch/docs_scraper.json:/docs-scraper/config.json getmeili/docs-scraper:latest pipenv run ./docs_scraper config.json
```

## Reference

- [文件上传demo](https://vuetify-file-browser-demo.herokuapp.com/)
