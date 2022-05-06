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

- seo: https://openjianghu.org/doc

## 同步 admin/upload/xx 至 seo/upload/xx

mkdir /www/wwwroot/doc/upload
ln -s /www/wwwroot/openjianghu_admin/upload/articleMaterial /www/wwwroot/doc/upload/articleMaterial
ln -s /www/wwwroot/openjianghu_admin/upload/materialRepo /www/wwwroot/doc/upload/materialRepo

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

## Reference

- [文件上传demo](https://vuetify-file-browser-demo.herokuapp.com/)
