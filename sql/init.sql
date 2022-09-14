# ------------------------------------------------------------
# SCHEMA DUMP FOR TABLE: _cache
# ------------------------------------------------------------

DROP TABLE IF EXISTS `_cache`;
CREATE TABLE `_cache` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userId` varchar(255) NOT NULL COMMENT '用户Id',
  `content` longtext COMMENT '缓存数据',
  `recordStatus` varchar(255) DEFAULT 'active',
  `operation` varchar(255) DEFAULT 'insert' COMMENT '操作; insert, update, jhInsert, jhUpdate, jhDelete jhRestore',
  `operationByUserId` varchar(255) DEFAULT NULL COMMENT '操作者userId',
  `operationByUser` varchar(255) DEFAULT NULL COMMENT '操作者用户名',
  `operationAt` varchar(255) DEFAULT NULL COMMENT '操作时间; E.g: 2021-05-28T10:24:54+08:00 ',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB COMMENT = '缓存表';




# ------------------------------------------------------------
# SCHEMA DUMP FOR TABLE: _constant
# ------------------------------------------------------------

DROP TABLE IF EXISTS `_constant`;
CREATE TABLE `_constant` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `constantKey` varchar(255) DEFAULT NULL,
  `constantType` varchar(255) DEFAULT NULL COMMENT '常量类型; object, array',
  `desc` varchar(255) DEFAULT NULL COMMENT '描述',
  `constantValue` text COMMENT '常量内容; object, array',
  `operation` varchar(255) DEFAULT 'insert' COMMENT '操作; insert, update, jhInsert, jhUpdate, jhDelete jhRestore',
  `operationByUserId` varchar(255) DEFAULT NULL COMMENT '操作者userId',
  `operationByUser` varchar(255) DEFAULT NULL COMMENT '操作者用户名',
  `operationAt` varchar(255) DEFAULT NULL COMMENT '操作时间; E.g: 2021-05-28T10:24:54+08:00 ',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 66 COMMENT = '常量表;';


# ------------------------------------------------------------
# DATA DUMP FOR TABLE: _constant
# ------------------------------------------------------------

INSERT INTO `_constant` (`id`,`constantKey`,`constantType`,`desc`,`constantValue`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (6,'notice','object','','{\"title\":\"4.3.7 版本发布\",\"content\":\"快来使用吧！\\n测试12123123\\n快来使用吧！\\n测试12123123\\n快来使用吧！\\n测试12123123\\n快来使用吧！\\n测试12123123\\n\",\"imageSrc\":\"/noticeImage/1647076649263_719911_noticeImage.jpeg\",\"isImageShown\":false,\"isTextShown\":true}','update','admin01','admin01','2022-03-12T17:19:50+08:00');
INSERT INTO `_constant` (`id`,`constantKey`,`constantType`,`desc`,`constantValue`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (59,'userStatus','array',NULL,'[{\"value\": \"active\", \"text\": \"正常\"}, {\"value\": \"banned\", \"text\": \"禁用\"}]','insert',NULL,NULL,NULL);
INSERT INTO `_constant` (`id`,`constantKey`,`constantType`,`desc`,`constantValue`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (60,'userType','array',NULL,'[{\"value\": \"common\", \"text\": \"普通用户\"},{\"value\": \"xiaochengxu\", \"text\": \"小程序机器人\"}]','insert',NULL,NULL,NULL);
INSERT INTO `_constant` (`id`,`constantKey`,`constantType`,`desc`,`constantValue`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (61,'gender','array',NULL,'[{\"value\": \"male\", \"text\": \"男\"}, {\"value\": \"female\", \"text\": \"女\"}]','insert',NULL,NULL,NULL);
INSERT INTO `_constant` (`id`,`constantKey`,`constantType`,`desc`,`constantValue`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (62,'version','object',NULL,'{\"testUserIdList\": \"\",\"version\": \"4.3.11\", \"title\": \"4.3.7 版本发布\", \"note\": \"新版本介绍\\n 1. 聊天输入优化\", \"apkVersion\": \"5.0.20\", \"apkLink\": \"https://duoxing.openjianghu.org/duoxing/upload/10002/1647840662817_956853_D多星MD-4.7.10.apk\", \"apkNote\": \"\", \"desktopVersion\": \"4.3.2\", \"desktopLink\": \"http://192.168.110.215:8082/duoxing/upload/duoxing-1.0.1.dmg.zip\", \"desktopNote\": \"测试桌面客户端升级\" }','insert',NULL,NULL,NULL);
INSERT INTO `_constant` (`id`,`constantKey`,`constantType`,`desc`,`constantValue`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (64,'emotion','array',NULL,'[\n  {\n    \"dir\":\"face01\",\n    \"cover\":\"face-lbl\",\n    \"ext\":\"png\",\n    \"cols\":5,\n    \"total\":86\n  },\n  {\n    \"dir\":\"face02\",\n    \"cover\":\"face-lbl\",\n    \"ext\":\"gif\",\n    \"cols\":2,\n    \"total\":16\n  },\n  {\n    \"dir\":\"face03\",\n    \"cover\":\"face-lbl\",\n    \"ext\":\"gif\",\n    \"cols\":2,\n    \"total\":16\n  },\n  {\n    \"dir\":\"face04\",\n    \"cover\":\"face-lbl\",\n    \"ext\":\"gif\",\n    \"cols\":2,\n    \"total\":16\n  },\n  {\n    \"dir\":\"face05\",\n    \"cover\":\"face-lbl\",\n    \"ext\":\"gif\",\n    \"cols\":1,\n    \"total\":7\n  },\n  {\n    \"dir\":\"face06\",\n    \"cover\":\"face-lbl\",\n    \"ext\":\"gif\",\n    \"cols\":3,\n    \"total\":24\n  },\n  {\n    \"dir\":\"face07\",\n    \"cover\":\"face-lbl\",\n    \"ext\":\"gif\",\n    \"cols\":2,\n    \"total\":16\n  },\n  {\n    \"dir\":\"face08\",\n    \"cover\":\"face-lbl\",\n    \"ext\":\"gif\",\n    \"cols\":3,\n    \"total\":23\n  },\n  {\n    \"dir\":\"face09\",\n    \"cover\":\"face-lbl\",\n    \"ext\":\"gif\",\n    \"cols\":2,\n    \"total\":16\n  },\n  {\n    \"dir\":\"face10\",\n    \"cover\":\"face-lbl\",\n    \"ext\":\"gif\",\n    \"cols\":3,\n    \"total\":20\n  },\n  {\n    \"dir\":\"face11\",\n    \"cover\":\"face-lbl\",\n    \"ext\":\"gif\",\n    \"cols\":2,\n    \"total\":13\n  },\n  {\n    \"dir\":\"face12\",\n    \"cover\":\"face-lbl\",\n    \"ext\":\"gif\",\n    \"cols\":2,\n    \"total\":16\n  },\n  {\n    \"dir\":\"face13\",\n    \"cover\":\"face-lbl\",\n    \"ext\":\"gif\",\n    \"cols\":2,\n    \"total\":15\n  },\n  {\n    \"dir\":\"face14\",\n    \"cover\":\"face-lbl\",\n    \"ext\":\"gif\",\n    \"cols\":2,\n    \"total\":16\n  }\n]\n','insert',NULL,NULL,NULL);
INSERT INTO `_constant` (`id`,`constantKey`,`constantType`,`desc`,`constantValue`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (65,'appLinkActionConfig','array',NULL,'[{\"regex\":\".openjianghu.org\\/*\", \"action\": \"internal\"}, {\"regex\":\"http:\\/\\/192.168.\\/*\", \"action\": \"internal\"}]','insert',NULL,NULL,NULL);



# ------------------------------------------------------------
# SCHEMA DUMP FOR TABLE: _constant_ui
# ------------------------------------------------------------

DROP TABLE IF EXISTS `_constant_ui`;
CREATE TABLE `_constant_ui` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `constantKey` varchar(255) DEFAULT NULL,
  `constantType` varchar(255) DEFAULT NULL COMMENT '常量类型; object, array',
  `pageId` varchar(255) DEFAULT 'all' COMMENT '页面id',
  `desc` varchar(255) DEFAULT NULL COMMENT '描述',
  `en` text COMMENT '常量内容; object, array',
  `zh` text COMMENT '常量内容; object, array',
  `operation` varchar(255) DEFAULT 'insert' COMMENT '操作; insert, update, jhInsert, jhUpdate, jhDelete jhRestore',
  `operationByUserId` varchar(255) DEFAULT NULL COMMENT '操作者userId',
  `operationByUser` varchar(255) DEFAULT NULL COMMENT '操作者用户名',
  `operationAt` varchar(255) DEFAULT NULL COMMENT '操作时间; E.g: 2021-05-28T10:24:54+08:00 ',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE KEY `pageId_constantKey_unique` (`constantKey`, `pageId`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 23 COMMENT = '常量表;';


# ------------------------------------------------------------
# DATA DUMP FOR TABLE: _constant_ui
# ------------------------------------------------------------

INSERT INTO `_constant_ui` (`id`,`constantKey`,`constantType`,`pageId`,`desc`,`en`,`zh`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (1,'btn','object','all','按钮','{\"upload\":\"upload\", \"createFolder\":\"folder\",\"material\":\"material\",\"materialManagement\":\"material management\",\"logout\":\"logout\",\"logoutSuccess\":\"logout succeeded\",\"fileName\":\"file name\",\"rename\":\"rename\",\"cancel\":\"cancel\",\"paste\":\"paste\",\"create\":\"create\",\"fileName\":\"file name\",\"use\":\"use\",\"selectFile\":\"Please select a folder or file\",\"file\":\"file\",\"fileNotFound\":\"File or folder not found\",\"folderEmpty\":\"folder is empty\",\"enterFileName\":\"Please enter a file name\",\"fileRename\":\"file rename\",\"renamedSuccess\":\"File renamed successfully\",\"uploadProgress\":\"upload progress\",\"movedSuccess\":\"File moved successfully\",\"uploadTo\":\"upload to\",\"maxFileSize\":\"Max file size\",\"maxFilesCount\":\"Max files count\",\"delete\":\"delete\",\"sureDelete\":\"Are you sure you want to delete this \",\"yes\":\"yes\",\"folder\":\"folder\",\"uploadAll\":\"upload all\",\"removeAll\":\"remove all\"}','{\"upload\":\"上传\", \"createFolder\":\"创建文件夹\",\"material\":\"素材\",\"materialManagement\":\"素材管理\",\"logout\":\"退出登录\",\"logoutSuccess\":\"退出登录成功\",\"rename\":\"重命名\",\"cancel\":\"取消\",\"paste\":\"粘贴\",\"create\":\"创建\",\"fileName\":\"文件名\",\"use\":\"使用\",\"selectFile\":\"请选择一个文件夹或文件\",\"file\":\"文件\",\"fileNotFound\":\"找不到文件或文件夹\",\"folderEmpty\":\"文件夹为空\",\"enterFileName\":\"请输入文件名\",\"fileRename\":\"文件重命名\",\"renamedSuccess\":\"文件重命名成功\",\"uploadProgress\":\"上传进度\",\"movedSuccess\":\"文件移动成功\",\"uploadTo\":\"上传至\",\"maxFileSize\":\"最大文件大小\",\"maxFilesCount\":\"最大文件数\",\"delete\":\"删除\",\"sureDelete\":\"确定你想要删除这个\",\"yes\":\"是的\",\"folder\":\"文件夹\",\"uploadAll\":\"全部上传\",\"removeAll\":\"全部移除\"}','insert',NULL,NULL,NULL);
INSERT INTO `_constant_ui` (`id`,`constantKey`,`constantType`,`pageId`,`desc`,`en`,`zh`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (2,'header','object','all',NULL,'{\n\t\"logo\": \"/logo.png\",\n\t\"title\": \"JIANGHU\",\n\t\"menuList\": [{\n\t\t\"categoryId\": \"10004\",\n\t\t\"categoryName\": \"jianghuJS\",\n\t\t\"path\": \"/page/article/10004\",\n\t\t\"isLogin\": true\n\t}, {\n\t\t\"categoryName\": \"Training\",\n\t\t\"path\": \"/page/article/10083\",\n\t\t\"isLogin\": false\n\t}, {\n\t  \"categoryId\": \"10005\",\n\t\t\"categoryName\": \"duoxing-instant message\",\n\t\t\"path\": \"/page/article/10016\",\n\t\t\"isLogin\": true\n\t}, {\n\t    \"categoryId\": \"10009\",\n\t\t\"categoryName\": \"xuanfeng-content management\",\n\t\t\"path\": \"/page/article/10075\",\n\t\t\"isLogin\": true\n\t}, {\n\t  \"categoryId\": \"10010\",\n\t\t\"categoryName\": \"wulin-live classroom\",\n\t\t\"path\": \"/page/article/10076\",\n\t\t\"isLogin\": true\n\t}],\n\t\"userAction\": {\n\t\t\"isOpen\": true,\n\t\t\"admin\": true,\n\t\t\"password\": true,\n\t\t\"logout\": true\n\t}\n}','{\n\t\"logo\": \"/img/logo.svg\",\n\t\"title\": \"nunjuck demo\"\n}','insert',NULL,NULL,NULL);
INSERT INTO `_constant_ui` (`id`,`constantKey`,`constantType`,`pageId`,`desc`,`en`,`zh`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (10,'body','object','home','首页说明文字','{ \r\n  \"title\": \"<span class=\'jianghu-home-hero-accent\'>SEO DEMO</span></p>\", \r\n  \"desc\": \"beginners will enjoy learning and using\",\r\n\t\"btnGettingStarted\": \"Getting Started\"\r\n}','{\"title\": \"<span class=\'jianghu-home-hero-accent\'>nunjucks</span></br>SEO DEMO</p>\", \"desc\": \"构建短平快的学习路径，系统学习企业级应用开发的整体框架\", \"btnGettingStarted\": \"开始使用\"}','insert',NULL,NULL,NULL);
INSERT INTO `_constant_ui` (`id`,`constantKey`,`constantType`,`pageId`,`desc`,`en`,`zh`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (11,'features','array','home',NULL,'[{\r\n\t\"title\": \"learn enterprise application development\\n the overall framework\",\r\n\t\"content\": \"start with the overall framework，easy for beginners to learn，grasp the core concepts，improve learning and development efficiency。\",\r\n\t\"img\": \"/images/home/icon-3.png\"\r\n}, {\r\n\t\"title\": \"build the shortest learning path\",\r\n\t\"content\": \"learn what you need，put aside what you dont，bulid the shortest lerning path for enterprise application development。\",\r\n\t\"img\": \"/images/home/icon-4.png\"\r\n}, {\r\n\t\"title\": \"jianghu scaffold \\n quick page generation\",\r\n\t\"content\": \"integrate scaffold jianghu-init，It can be used to quickly build frameworks, pages, management, and other business components。\",\r\n\t\"img\": \"/images/home/icon-2.png\"\r\n}, {\r\n\t\"title\": \"Based on lake JS ecology \\n Out of the box application\",\r\n\t\"content\": \"jianghuJS、duoxing-IM、xuanfeng-Content management、wulin live classroom、training、IT primary programming training。\",\r\n\t\"img\": \"/images/home/icon-1.png\"\r\n}]','[{\r\n\t\"title\": \"学习企业级应用开发\\n整体框架\",\r\n\t\"content\": \"先从整体框架入手，便于新手学习，把握核心概念，提升学习与开发效率。\",\r\n\t\"img\": \"/images/home/icon-3.png\"\r\n}, {\r\n\t\"title\": \"构建最短学习路径\",\r\n\t\"content\": \"用到学习，不用的先放一放，构建能够开发企业级应用的最短学习路径。\",\r\n\t\"img\": \"/images/home/icon-4.png\"\r\n}, {\r\n\t\"title\": \"江湖脚手架\\n快速生成页面\",\r\n\t\"content\": \"集成脚手架 jianghu-init，可用于快速构建框架、页面、管理等业务组件。\",\r\n\t\"img\": \"/images/home/icon-2.png\"\r\n}, {\r\n\t\"title\": \"基于江湖JS生态\\n开箱即用的江湖应用\",\r\n\t\"content\": \"江湖JS、多星-即时通讯、旋风-内容管理、武林直播课堂、training、IT初级编程培训等。\",\r\n\t\"img\": \"/images/home/icon-1.png\"\r\n}]','insert',NULL,NULL,NULL);
INSERT INTO `_constant_ui` (`id`,`constantKey`,`constantType`,`pageId`,`desc`,`en`,`zh`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (12,'links','array','all',NULL,'[{\r\n\t\"label\": \"Reference\",\r\n\t\"list\": [{\r\n\t\t\"title\": \"EggJS\",\r\n\t\t\"path\": \"https://www.eggjs.org/\"\r\n\t}, {\r\n\t\t\"title\": \"CNode\",\r\n\t\t\"path\": \"https://cnodejs.org/\"\r\n\t}]\r\n}, {\r\n\t\"label\": \"jianghu application\",\r\n\t\"list\": [{\r\n\t\t\"title\": \"jianghuJS\",\r\n\t\t\"path\": \"/page/article/10005\"\r\n\t}, {\r\n\t\t\"title\": \"xuanfeng content management\",\r\n\t\t\"path\": \"/page/article/10075\"\r\n\t}]\r\n}, {\r\n\t\"label\": \"community\",\r\n\t\"list\": [{\r\n\t\t\"title\": \"CNode commuinty\",\r\n\t\t\"path\": \"https://cnodejs.org/\"\r\n\t}, {\r\n\t\t\"title\": \"BBS\",\r\n\t\t\"path\": \"\"\r\n\t}, {\r\n\t\t\"title\": \"submit feedback\",\r\n\t\t\"path\": \"\"\r\n\t}, {\r\n\t\t\"title\": \"release the log\",\r\n\t\t\"path\": \"\"\r\n\t}]\r\n}, {\r\n\t\"label\": \"take part in the discussion\",\r\n\t\"img\": \"OR code link\"\r\n}]','[{\r\n\t\"label\": \"Reference\",\r\n\t\"list\": [{\r\n\t\t\"title\": \"EggJS\",\r\n\t\t\"path\": \"https://www.eggjs.org/\"\r\n\t}, {\r\n\t\t\"title\": \"CNode\",\r\n\t\t\"path\": \"https://cnodejs.org/\"\r\n\t}]\r\n}, {\r\n\t\"label\": \"江湖应用\",\r\n\t\"list\": [{\r\n\t\t\"title\": \"江湖JS\",\r\n\t\t\"path\": \"/page/article/10005\"\r\n\t}, {\r\n\t\t\"title\": \"旋风内容管理\",\r\n\t\t\"path\": \"/page/article/10075\"\r\n\t}]\r\n}, {\r\n\t\"label\": \"社区\",\r\n\t\"list\": [{\r\n\t\t\"title\": \"CNode 社区\",\r\n\t\t\"path\": \"https://cnodejs.org/\"\r\n\t}, {\r\n\t\t\"title\": \"论坛\",\r\n\t\t\"path\": \"\"\r\n\t}, {\r\n\t\t\"title\": \"提交反馈\",\r\n\t\t\"path\": \"\"\r\n\t}, {\r\n\t\t\"title\": \"发布日志\",\r\n\t\t\"path\": \"\"\r\n\t}]\r\n}, {\r\n\t\"label\": \"参与讨论\",\r\n\t\"img\": \"二维码链接\"\r\n}]','insert',NULL,NULL,NULL);
INSERT INTO `_constant_ui` (`id`,`constantKey`,`constantType`,`pageId`,`desc`,`en`,`zh`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (13,'footer','object','all','','{ \"copyright\": \"Copyright © 2022 openjianghu.org\" }','{ \"copyright\": \"Copyright © 2022 cn.openjianghu.org\" }','insert',NULL,NULL,NULL);
INSERT INTO `_constant_ui` (`id`,`constantKey`,`constantType`,`pageId`,`desc`,`en`,`zh`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (20,'article','object','article',NULL,'{\"comment\": {\"isOpen\": false}}','{\"comment\": {\"isOpen\": true}}','insert',NULL,NULL,NULL);
INSERT INTO `_constant_ui` (`id`,`constantKey`,`constantType`,`pageId`,`desc`,`en`,`zh`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (21,'errorInfo','object','home','错误信息','{\"title\": \"Error\", \"contentEnum\": { \"article_not_found\": \"Article not found\" } }','{\"title\": \"错误\", \"contentEnum\": { \"article_not_found\": \"文章找不到\" } }','insert',NULL,NULL,NULL);



# ------------------------------------------------------------
# SCHEMA DUMP FOR TABLE: _file
# ------------------------------------------------------------

DROP TABLE IF EXISTS `_file`;
CREATE TABLE `_file` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `fileId` varchar(255) DEFAULT NULL COMMENT 'fileId',
  `fileDirectory` varchar(255) DEFAULT NULL COMMENT '文件保存路径;',
  `filename` varchar(255) DEFAULT NULL COMMENT '文件名;',
  `filenameStorage` varchar(255) DEFAULT NULL COMMENT '文件保存名',
  `downloadPath` varchar(255) DEFAULT NULL COMMENT '文件下载路径',
  `fileType` varchar(255) DEFAULT NULL COMMENT '文件类型;(预留字段)',
  `fileDesc` varchar(255) DEFAULT NULL COMMENT '文件描述',
  `binarySize` varchar(255) DEFAULT NULL COMMENT '文件二进制大小',
  `operation` varchar(255) DEFAULT 'insert' COMMENT '操作; insert, update, jhInsert, jhUpdate, jhDelete jhRestore',
  `operationByUserId` varchar(255) DEFAULT NULL COMMENT '操作者userId',
  `operationByUser` varchar(255) DEFAULT NULL COMMENT '操作者用户名',
  `operationAt` varchar(255) DEFAULT NULL COMMENT '操作时间; E.g: 2021-05-28T10:24:54+08:00 ',
  PRIMARY KEY (`id`) USING BTREE,
  KEY `fileId_index` (`fileId`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 134 COMMENT = '文件表; 软删除未启用;';




# ------------------------------------------------------------
# SCHEMA DUMP FOR TABLE: _group
# ------------------------------------------------------------

DROP TABLE IF EXISTS `_group`;
CREATE TABLE `_group` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `groupId` varchar(255) NOT NULL COMMENT 'groupId',
  `groupName` varchar(255) DEFAULT NULL COMMENT '群组名',
  `groupDesc` varchar(255) DEFAULT NULL COMMENT '群组描述',
  `groupAvatar` varchar(255) DEFAULT NULL COMMENT '群logo',
  `groupExtend` varchar(1024) DEFAULT '{}' COMMENT '拓展字段; { groupNotice: ''xx'' }',
  `operation` varchar(255) DEFAULT 'insert' COMMENT '操作; insert, update, jhInsert, jhUpdate, jhDelete jhRestore',
  `operationByUserId` varchar(255) DEFAULT NULL COMMENT '操作者userId',
  `operationByUser` varchar(255) DEFAULT NULL COMMENT '操作者用户名',
  `operationAt` varchar(255) DEFAULT NULL COMMENT '操作时间; E.g: 2021-05-28T10:24:54+08:00 ',
  PRIMARY KEY (`id`) USING BTREE,
  KEY `groupId_index` (`groupId`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 COMMENT = '群组表; 软删除未启用;';


# ------------------------------------------------------------
# DATA DUMP FOR TABLE: _group
# ------------------------------------------------------------

INSERT INTO `_group` (`id`,`groupId`,`groupName`,`groupDesc`,`groupAvatar`,`groupExtend`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (1,'adminGroup','管理组','管理组',NULL,'{}','insert',NULL,NULL,NULL);



# ------------------------------------------------------------
# SCHEMA DUMP FOR TABLE: _page
# ------------------------------------------------------------

DROP TABLE IF EXISTS `_page`;
CREATE TABLE `_page` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `pageId` varchar(255) DEFAULT NULL COMMENT 'pageId',
  `pageFile` varchar(255) DEFAULT NULL,
  `pageName` varchar(255) DEFAULT NULL COMMENT 'page name',
  `pageType` varchar(255) DEFAULT NULL COMMENT '页面类型; showInMenu, dynamicInMenu',
  `sort` varchar(255) DEFAULT NULL,
  `pageHook` text COMMENT '{\n  "beforeHook":[\n  {"field": "doc", "service": "doc", "serviceFunc": "getDoc"}\n  ]\n}',
  `operation` varchar(255) DEFAULT 'insert' COMMENT '操作; insert, update, jhInsert, jhUpdate, jhDelete jhRestore',
  `operationByUserId` varchar(255) DEFAULT NULL COMMENT '操作者userId',
  `operationByUser` varchar(255) DEFAULT NULL COMMENT '操作者用户名',
  `operationAt` varchar(255) DEFAULT NULL COMMENT '操作时间; E.g: 2021-05-28T10:24:54+08:00 ',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 58 COMMENT = '页面表; 软删除未启用;';


# ------------------------------------------------------------
# DATA DUMP FOR TABLE: _page
# ------------------------------------------------------------

INSERT INTO `_page` (`id`,`pageId`,`pageFile`,`pageName`,`pageType`,`sort`,`pageHook`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (2,'help','helpV3','帮助','dynamicInMenu','11',NULL,'insert',NULL,NULL,NULL);
INSERT INTO `_page` (`id`,`pageId`,`pageFile`,`pageName`,`pageType`,`sort`,`pageHook`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (3,'login','loginV3','登录','','','{\n  \"beforeHook\":[\r\n    {\"field\": \"constantUiMap\", \"service\": \"constantUi\", \"serviceFunc\": \"getConstantUiMap\"}\n  ]\n}','insert',NULL,NULL,NULL);
INSERT INTO `_page` (`id`,`pageId`,`pageFile`,`pageName`,`pageType`,`sort`,`pageHook`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (13,'home',NULL,'首页','showInMenu','1','{\n  \"beforeHook\":[\r\n    {\"field\": \"constantUiMap\", \"service\": \"constantUi\", \"serviceFunc\": \"getConstantUiMap\"},\n\t\t{\"field\": \"userInfo\", \"service\": \"user\", \"serviceFunc\": \"userInfo\"},\r\n    {\"field\": \"njk\", \"service\": \"njk\", \"serviceFunc\": \"test\"},\n\t\t{\"field\": \"categoryList\", \"service\": \"article\", \"serviceFunc\": \"getCategoryListAndArticleList\"}\n  ]\n}','insert',NULL,NULL,NULL);
INSERT INTO `_page` (`id`,`pageId`,`pageFile`,`pageName`,`pageType`,`sort`,`pageHook`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (14,'article',NULL,'文章预览','seo',NULL,'{\n  \"beforeHook\":[\n    {\"field\": \"article\", \"service\": \"article\", \"serviceFunc\": \"getArticleAndFillArticles\"}\n  ]\n}','insert',NULL,NULL,NULL);
INSERT INTO `_page` (`id`,`pageId`,`pageFile`,`pageName`,`pageType`,`sort`,`pageHook`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (15,'articleManagement',NULL,'文章管理','showInMenu','2',NULL,'insert',NULL,NULL,NULL);
INSERT INTO `_page` (`id`,`pageId`,`pageFile`,`pageName`,`pageType`,`sort`,`pageHook`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (57,'articleEdit','','文章编辑','dynamicInMenu',NULL,'{\n  \"beforeHook\":[\r\n    {\"field\": \"constantUiMap\", \"service\": \"constantUi\", \"serviceFunc\": \"getConstantUiMap\"}\n  ]\n}','insert',NULL,NULL,NULL);



# ------------------------------------------------------------
# SCHEMA DUMP FOR TABLE: _record_history
# ------------------------------------------------------------

DROP TABLE IF EXISTS `_record_history`;
CREATE TABLE `_record_history` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `table` varchar(255) DEFAULT NULL COMMENT '表',
  `recordId` int(11) DEFAULT NULL COMMENT '数据在table中的主键id; recordContent.id',
  `recordContent` longtext COMMENT '数据JSON',
  `packageContent` longtext COMMENT '当时请求的 package JSON',
  `operation` varchar(255) DEFAULT NULL COMMENT '操作; jhInsert, jhUpdate, jhDelete jhRestore',
  `operationByUserId` varchar(255) DEFAULT NULL COMMENT '操作者userId; recordContent.operationByUserId',
  `operationByUser` varchar(255) DEFAULT NULL COMMENT '操作者用户名; recordContent.operationByUser',
  `operationAt` varchar(255) DEFAULT NULL COMMENT '操作时间; recordContent.operationAt; E.g: 2021-05-28T10:24:54+08:00 ',
  PRIMARY KEY (`id`) USING BTREE,
  KEY `index_record_id` (`recordId`) USING BTREE,
  KEY `index_table_action` (`table`, `operation`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2969 COMMENT = '数据历史表';




# ------------------------------------------------------------
# SCHEMA DUMP FOR TABLE: _resource
# ------------------------------------------------------------

DROP TABLE IF EXISTS `_resource`;
CREATE TABLE `_resource` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `accessControlTable` varchar(255) DEFAULT NULL COMMENT '数据规则控制表',
  `resourceHook` text COMMENT '{ "before": [{"service": "xx", "serviceFunction": "xxx"}], "after": [] }',
  `pageId` varchar(255) DEFAULT NULL COMMENT 'page id; E.g: index',
  `actionId` varchar(255) DEFAULT NULL COMMENT 'action id; E.g: selectXXXByXXX',
  `desc` varchar(255) DEFAULT NULL COMMENT '描述',
  `resourceType` varchar(255) DEFAULT NULL COMMENT 'resource 类型; E.g: auth service sql',
  `appDataSchema` text COMMENT 'appData 参数校验',
  `resourceData` text COMMENT 'resource 数据; { "service": "auth", "serviceFunction": "passwordLogin" } or  { "table": "${tableName}", "action": "select", "whereCondition": ".where(function() {this.whereNot( { recordStatus: \\"active\\" })})" }',
  `requestDemo` text COMMENT '请求Demo',
  `responseDemo` text COMMENT '响应Demo',
  `operation` varchar(255) DEFAULT 'insert' COMMENT '操作; insert, update, jhInsert, jhUpdate, jhDelete jhRestore',
  `operationByUserId` varchar(255) DEFAULT NULL COMMENT '操作者userId',
  `operationByUser` varchar(255) DEFAULT NULL COMMENT '操作者用户名',
  `operationAt` varchar(255) DEFAULT NULL COMMENT '操作时间; E.g: 2021-05-28T10:24:54+08:00 ',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 472 COMMENT = '请求资源表; 软删除未启用; resourceId=`${appId}.${pageId}.${actionId}`';


# ------------------------------------------------------------
# DATA DUMP FOR TABLE: _resource
# ------------------------------------------------------------

INSERT INTO `_resource` (`id`,`accessControlTable`,`resourceHook`,`pageId`,`actionId`,`desc`,`resourceType`,`appDataSchema`,`resourceData`,`requestDemo`,`responseDemo`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (101,NULL,NULL,'allPage','getChunkInfo','✅ 文件分片下载-获取分片信息','service','{}','{ \"service\": \"file\", \"serviceFunction\": \"getChunkInfo\" }','','','update',NULL,NULL,'2022-03-10T22:27:32+08:00');
INSERT INTO `_resource` (`id`,`accessControlTable`,`resourceHook`,`pageId`,`actionId`,`desc`,`resourceType`,`appDataSchema`,`resourceData`,`requestDemo`,`responseDemo`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (102,NULL,NULL,'allPage','uploadFileDone','✅ 文件分片上传-所有分片上传完毕','service','{}','{ \"service\": \"file\", \"serviceFunction\": \"uploadFileDone\" }','','','insert',NULL,NULL,NULL);
INSERT INTO `_resource` (`id`,`accessControlTable`,`resourceHook`,`pageId`,`actionId`,`desc`,`resourceType`,`appDataSchema`,`resourceData`,`requestDemo`,`responseDemo`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (105,NULL,NULL,'allPage','httpUploadByStream','✅ 文件分片上传-http文件流','service','{}','{ \"service\": \"file\", \"serviceFunction\": \"uploadFileChunkByStream\" }','','','update',NULL,NULL,'2022-03-10T22:27:32+08:00');
INSERT INTO `_resource` (`id`,`accessControlTable`,`resourceHook`,`pageId`,`actionId`,`desc`,`resourceType`,`appDataSchema`,`resourceData`,`requestDemo`,`responseDemo`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (106,NULL,NULL,'allPage','httpUploadByBase64','✅ 文件分片上传-http base64','service','{}','{ \"service\": \"file\", \"serviceFunction\": \"uploadFileChunkByBase64\" }','','','update',NULL,NULL,'2022-03-10T22:27:32+08:00');
INSERT INTO `_resource` (`id`,`accessControlTable`,`resourceHook`,`pageId`,`actionId`,`desc`,`resourceType`,`appDataSchema`,`resourceData`,`requestDemo`,`responseDemo`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (112,NULL,NULL,'allPage','httpDownloadByBase64','✅ 文件分片下载-http base64','service','{}','{ \"service\": \"file\", \"serviceFunction\": \"downloadFileChunkByBase64\" }','','','update',NULL,NULL,'2022-03-10T22:27:32+08:00');
INSERT INTO `_resource` (`id`,`accessControlTable`,`resourceHook`,`pageId`,`actionId`,`desc`,`resourceType`,`appDataSchema`,`resourceData`,`requestDemo`,`responseDemo`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (231,NULL,NULL,'login','passwordLogin','✅登陆','service','{}','{ \"service\": \"user\", \"serviceFunction\": \"passwordLogin\" }','','','insert',NULL,NULL,NULL);
INSERT INTO `_resource` (`id`,`accessControlTable`,`resourceHook`,`pageId`,`actionId`,`desc`,`resourceType`,`appDataSchema`,`resourceData`,`requestDemo`,`responseDemo`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (251,NULL,NULL,'allPage','logout','✅登出','service','{}','{ \"service\": \"user\", \"serviceFunction\": \"logout\" }','','','insert',NULL,NULL,NULL);
INSERT INTO `_resource` (`id`,`accessControlTable`,`resourceHook`,`pageId`,`actionId`,`desc`,`resourceType`,`appDataSchema`,`resourceData`,`requestDemo`,`responseDemo`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (253,NULL,NULL,'allPage','userInfo','✅获取用户信息','service','{}','{ \"service\": \"user\", \"serviceFunction\": \"userInfo\" }','','','insert',NULL,NULL,NULL);
INSERT INTO `_resource` (`id`,`accessControlTable`,`resourceHook`,`pageId`,`actionId`,`desc`,`resourceType`,`appDataSchema`,`resourceData`,`requestDemo`,`responseDemo`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (254,NULL,NULL,'allPage','resetPassword','✅修改用户密码','service','{}','{ \"service\": \"user\", \"serviceFunction\": \"resetPassword\" }','','','insert',NULL,NULL,NULL);
INSERT INTO `_resource` (`id`,`accessControlTable`,`resourceHook`,`pageId`,`actionId`,`desc`,`resourceType`,`appDataSchema`,`resourceData`,`requestDemo`,`responseDemo`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (258,NULL,NULL,'allPage','getConstantList','✅查询常量','sql','{}','{ \"table\": \"_constant\", \"operation\": \"select\" }','','','insert',NULL,NULL,NULL);
INSERT INTO `_resource` (`id`,`accessControlTable`,`resourceHook`,`pageId`,`actionId`,`desc`,`resourceType`,`appDataSchema`,`resourceData`,`requestDemo`,`responseDemo`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (381,NULL,NULL,'articleEdit','selectArticleWithCategory','✅文章编辑-查询带文集信息的文章','service','{}','{ \"service\": \"article\", \"serviceFunction\": \"getArticleAndFillArticles\" }','','','insert',NULL,NULL,NULL);
INSERT INTO `_resource` (`id`,`accessControlTable`,`resourceHook`,`pageId`,`actionId`,`desc`,`resourceType`,`appDataSchema`,`resourceData`,`requestDemo`,`responseDemo`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (382,NULL,NULL,'articleEdit','useMaterial','✅文章编辑-使用素材','service','{}','{ \"service\": \"material\", \"serviceFunction\": \"useMaterial\" }','','','insert',NULL,NULL,NULL);
INSERT INTO `_resource` (`id`,`accessControlTable`,`resourceHook`,`pageId`,`actionId`,`desc`,`resourceType`,`appDataSchema`,`resourceData`,`requestDemo`,`responseDemo`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (383,NULL,NULL,'articleEdit','selectCategoryList','✅文章编辑-查询列表','sql','{}','{ \"table\": \"view01_category\", \"operation\": \"select\" }','','','insert',NULL,NULL,NULL);
INSERT INTO `_resource` (`id`,`accessControlTable`,`resourceHook`,`pageId`,`actionId`,`desc`,`resourceType`,`appDataSchema`,`resourceData`,`requestDemo`,`responseDemo`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (385,NULL,'{ \"before\": [\n{\"service\": \"article\", \"serviceFunction\": \"fillInsertItemParamsBeforeHook\"},\n{\"service\": \"articleParser\", \"serviceFunction\": \"parseJhTags\"}\n], \"after\": [\n] }','articleEdit','jhInsertItem','✅文章编辑-添加成员','sql','{}','{ \"table\": \"article\", \"operation\": \"jhInsert\" }','','','jhInsert',NULL,NULL,NULL);
INSERT INTO `_resource` (`id`,`accessControlTable`,`resourceHook`,`pageId`,`actionId`,`desc`,`resourceType`,`appDataSchema`,`resourceData`,`requestDemo`,`responseDemo`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (386,NULL,NULL,'articleEdit','selectItemList','✅文章编辑-查询文章列表','sql','{}','{ \"table\": \"article\", \"operation\": \"select\" }','','','jhInsert',NULL,NULL,NULL);
INSERT INTO `_resource` (`id`,`accessControlTable`,`resourceHook`,`pageId`,`actionId`,`desc`,`resourceType`,`appDataSchema`,`resourceData`,`requestDemo`,`responseDemo`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (387,NULL,'{ \"before\": [\n{\"service\": \"article\", \"serviceFunction\": \"fillUpdateItemParamsBeforeHook\"},\n{\"service\": \"articleParser\", \"serviceFunction\": \"parseJhTags\"}\n], \"after\": [\n] }','articleEdit','jhUpdateItem','✅文章编辑-更新成员','sql','{}','{ \"table\": \"article\", \"operation\": \"jhUpdate\" }','','','insert',NULL,NULL,NULL);
INSERT INTO `_resource` (`id`,`accessControlTable`,`resourceHook`,`pageId`,`actionId`,`desc`,`resourceType`,`appDataSchema`,`resourceData`,`requestDemo`,`responseDemo`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (388,NULL,'','articleEdit','deletedArticle','✅文章编辑-将文章移至回收站','service','{}','{ \"service\": \"article\", \"serviceFunction\": \"deletedArticle\" }','','','insert',NULL,NULL,NULL);
INSERT INTO `_resource` (`id`,`accessControlTable`,`resourceHook`,`pageId`,`actionId`,`desc`,`resourceType`,`appDataSchema`,`resourceData`,`requestDemo`,`responseDemo`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (389,NULL,NULL,'articleEdit','restoreArticle','✅文章编辑-文章恢复','service','{}','{ \"service\": \"article\", \"serviceFunction\": \"restoreArticle\" }','','','insert',NULL,NULL,NULL);
INSERT INTO `_resource` (`id`,`accessControlTable`,`resourceHook`,`pageId`,`actionId`,`desc`,`resourceType`,`appDataSchema`,`resourceData`,`requestDemo`,`responseDemo`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (461,NULL,NULL,'article','addComment','✅文章页面','sql','{}','{ \"table\": \"comment\", \"operation\": \"jhInsert\" }','','','insert',NULL,NULL,NULL);
INSERT INTO `_resource` (`id`,`accessControlTable`,`resourceHook`,`pageId`,`actionId`,`desc`,`resourceType`,`appDataSchema`,`resourceData`,`requestDemo`,`responseDemo`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (462,NULL,NULL,'articleManagement','selectItemList','✅文章管理-查询列表(不包含内容)','sql','{}','{ \"table\": \"view01_article\", \"operation\": \"select\" }','','','jhInsert',NULL,NULL,NULL);
INSERT INTO `_resource` (`id`,`accessControlTable`,`resourceHook`,`pageId`,`actionId`,`desc`,`resourceType`,`appDataSchema`,`resourceData`,`requestDemo`,`responseDemo`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (463,NULL,'{ \"before\": [\n{\"service\": \"article\", \"serviceFunction\": \"fillUpdateItemParamsBeforeHook\"}\n], \"after\": [\n] }','articleManagement','jhUpdateItem','✅文章编辑-更新成员','sql','{}','{ \"table\": \"article\", \"operation\": \"jhUpdate\" }','','','insert',NULL,NULL,NULL);
INSERT INTO `_resource` (`id`,`accessControlTable`,`resourceHook`,`pageId`,`actionId`,`desc`,`resourceType`,`appDataSchema`,`resourceData`,`requestDemo`,`responseDemo`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (464,NULL,NULL,'articleManagement','selectCategoryList','✅文章管理-查询分类列表','sql','{}','{ \"table\": \"view01_category\", \"operation\": \"select\" }','','','insert',NULL,NULL,NULL);
INSERT INTO `_resource` (`id`,`accessControlTable`,`resourceHook`,`pageId`,`actionId`,`desc`,`resourceType`,`appDataSchema`,`resourceData`,`requestDemo`,`responseDemo`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (465,NULL,NULL,'articleManagement','deletedArticle','✅文章编辑-将文章移至回收站','service','{}','{ \"service\": \"article\", \"serviceFunction\": \"deletedArticle\" }','','','insert',NULL,NULL,NULL);
INSERT INTO `_resource` (`id`,`accessControlTable`,`resourceHook`,`pageId`,`actionId`,`desc`,`resourceType`,`appDataSchema`,`resourceData`,`requestDemo`,`responseDemo`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (466,NULL,NULL,'articleManagement','restoreArticle','✅文章编辑-文章恢复','service','{}','{ \"service\": \"article\", \"serviceFunction\": \"restoreArticle\" }','','','insert',NULL,NULL,NULL);
INSERT INTO `_resource` (`id`,`accessControlTable`,`resourceHook`,`pageId`,`actionId`,`desc`,`resourceType`,`appDataSchema`,`resourceData`,`requestDemo`,`responseDemo`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (467,NULL,NULL,'materialManagement','list','✅素材管理-文件列表','service','{}','{ \"service\": \"material\", \"serviceFunction\": \"list\" }','','','insert',NULL,NULL,NULL);
INSERT INTO `_resource` (`id`,`accessControlTable`,`resourceHook`,`pageId`,`actionId`,`desc`,`resourceType`,`appDataSchema`,`resourceData`,`requestDemo`,`responseDemo`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (468,NULL,NULL,'materialManagement','mkdir','✅素材管理-创建文件夹','service','{}','{ \"service\": \"material\", \"serviceFunction\": \"mkdir\" }','','','insert',NULL,NULL,NULL);
INSERT INTO `_resource` (`id`,`accessControlTable`,`resourceHook`,`pageId`,`actionId`,`desc`,`resourceType`,`appDataSchema`,`resourceData`,`requestDemo`,`responseDemo`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (469,NULL,NULL,'materialManagement','delete','✅素材管理-删除','service','{}','{ \"service\": \"material\", \"serviceFunction\": \"delete\" }','','','insert',NULL,NULL,NULL);
INSERT INTO `_resource` (`id`,`accessControlTable`,`resourceHook`,`pageId`,`actionId`,`desc`,`resourceType`,`appDataSchema`,`resourceData`,`requestDemo`,`responseDemo`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (470,NULL,NULL,'materialManagement','clearRecycle','✅素材管理-清空回收站','service','{}','{ \"service\": \"material\", \"serviceFunction\": \"clearRecycle\" }','','','insert',NULL,NULL,NULL);
INSERT INTO `_resource` (`id`,`accessControlTable`,`resourceHook`,`pageId`,`actionId`,`desc`,`resourceType`,`appDataSchema`,`resourceData`,`requestDemo`,`responseDemo`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (471,NULL,NULL,'materialManagement','renameFile','✅素材管理-文件重命名','service','{}','{ \"service\": \"material\", \"serviceFunction\": \"renameFile\" }','','','insert',NULL,NULL,NULL);



# ------------------------------------------------------------
# SCHEMA DUMP FOR TABLE: _resource_request_log
# ------------------------------------------------------------

DROP TABLE IF EXISTS `_resource_request_log`;
CREATE TABLE `_resource_request_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `resourceId` varchar(255) DEFAULT NULL COMMENT 'resource id;',
  `packageId` varchar(255) DEFAULT NULL COMMENT 'resource package id',
  `userIp` varchar(255) DEFAULT NULL COMMENT '用户ip;',
  `userAgent` varchar(255) DEFAULT NULL COMMENT '设备信息',
  `userId` varchar(255) DEFAULT NULL COMMENT '用户ID',
  `deviceId` varchar(255) DEFAULT NULL COMMENT '设备id',
  `userIpRegion` varchar(255) DEFAULT NULL COMMENT '用户Ip区域',
  `executeSql` varchar(255) DEFAULT NULL COMMENT '执行的sql',
  `requestBody` mediumtext COMMENT '请求body',
  `responseBody` mediumtext COMMENT '响应body',
  `responseStatus` varchar(255) DEFAULT NULL COMMENT '执行的结果;  success, fail',
  `operation` varchar(255) DEFAULT 'insert' COMMENT '操作; insert, update, jhInsert, jhUpdate, jhDelete jhRestore',
  `operationByUserId` varchar(255) DEFAULT NULL COMMENT '操作者userId',
  `operationByUser` varchar(255) DEFAULT NULL COMMENT '操作者用户名',
  `operationAt` varchar(255) DEFAULT NULL COMMENT '操作时间; E.g: 2021-05-28T10:24:54+08:00 ',
  PRIMARY KEY (`id`) USING BTREE,
  KEY `resourceId_index` (`resourceId`) USING BTREE,
  KEY `packageId_index` (`packageId`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 133 COMMENT = '文件表; 软删除未启用;';




# ------------------------------------------------------------
# SCHEMA DUMP FOR TABLE: _role
# ------------------------------------------------------------

DROP TABLE IF EXISTS `_role`;
CREATE TABLE `_role` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `roleId` varchar(255) DEFAULT NULL COMMENT 'roleId',
  `roleName` varchar(255) DEFAULT NULL COMMENT 'role name',
  `roleDesc` varchar(255) DEFAULT NULL COMMENT 'role desc',
  `operation` varchar(255) DEFAULT 'insert' COMMENT '操作; insert, update, jhInsert, jhUpdate, jhDelete jhRestore',
  `operationByUserId` varchar(255) DEFAULT NULL COMMENT '操作者userId',
  `operationByUser` varchar(255) DEFAULT NULL COMMENT '操作者用户名',
  `operationAt` varchar(255) DEFAULT NULL COMMENT '操作时间; E.g: 2021-05-28T10:24:54+08:00 ',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 10 COMMENT = '角色表; 软删除未启用;';


# ------------------------------------------------------------
# DATA DUMP FOR TABLE: _role
# ------------------------------------------------------------

INSERT INTO `_role` (`id`,`roleId`,`roleName`,`roleDesc`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (3,'appAdmin','系统管理员','','insert',NULL,NULL,NULL);
INSERT INTO `_role` (`id`,`roleId`,`roleName`,`roleDesc`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (8,'editor','可编辑',NULL,'insert',NULL,NULL,NULL);
INSERT INTO `_role` (`id`,`roleId`,`roleName`,`roleDesc`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (9,'viewer','可查看',NULL,'insert',NULL,NULL,NULL);



# ------------------------------------------------------------
# SCHEMA DUMP FOR TABLE: _test_case
# ------------------------------------------------------------

DROP TABLE IF EXISTS `_test_case`;
CREATE TABLE `_test_case` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `pageId` varchar(255) DEFAULT NULL COMMENT '页面Id',
  `testId` varchar(255) DEFAULT NULL COMMENT '测试用例Id; 10000 ++',
  `testName` varchar(255) DEFAULT NULL COMMENT '测试用例名',
  `uiActionIdList` varchar(255) DEFAULT NULL COMMENT 'uiAction列表; 一个测试用例对应多个uiActionId',
  `testOpeartion` text COMMENT '测试用例步骤;',
  `operation` varchar(255) DEFAULT NULL COMMENT '操作; jhInsert, jhUpdate, jhDelete jhRestore',
  `operationByUserId` varchar(255) DEFAULT NULL COMMENT '操作者userId; recordContent.operationByUserId',
  `operationByUser` varchar(255) DEFAULT NULL COMMENT '操作者用户名; recordContent.operationByUser',
  `operationAt` varchar(255) DEFAULT NULL COMMENT '操作时间; recordContent.operationAt; E.g: 2021-05-28T10:24:54+08:00 ',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB COMMENT = '测试用例表';


# ------------------------------------------------------------
# DATA DUMP FOR TABLE: _test_case
# ------------------------------------------------------------




# ------------------------------------------------------------
# SCHEMA DUMP FOR TABLE: _ui
# ------------------------------------------------------------

DROP TABLE IF EXISTS `_ui`;
CREATE TABLE `_ui` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `pageId` varchar(255) DEFAULT NULL COMMENT 'page id; E.g: index',
  `uiActionType` varchar(255) DEFAULT NULL COMMENT 'ui 动作类型，如：fetchData, postData, changeUi',
  `uiActionId` varchar(255) DEFAULT NULL COMMENT 'action id; E.g: selectXXXByXXX',
  `desc` varchar(255) DEFAULT NULL COMMENT '描述',
  `uiActionConfig` text COMMENT 'ui 动作数据',
  `appDataSchema` text COMMENT 'ui 校验数据',
  `operation` varchar(255) DEFAULT 'insert' COMMENT '操作; insert, update, jhInsert, jhUpdate, jhDelete jhRestore',
  `operationByUserId` varchar(255) DEFAULT NULL COMMENT '操作者userId',
  `operationByUser` varchar(255) DEFAULT NULL COMMENT '操作者用户名',
  `operationAt` varchar(255) DEFAULT NULL COMMENT '操作时间; E.g: 2021-05-28T10:24:54+08:00 ',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB COMMENT = 'ui 施工方案';


# ------------------------------------------------------------
# DATA DUMP FOR TABLE: _ui
# ------------------------------------------------------------




# ------------------------------------------------------------
# SCHEMA DUMP FOR TABLE: _user
# ------------------------------------------------------------

DROP TABLE IF EXISTS `_user`;
CREATE TABLE `_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `idSequence` varchar(255) DEFAULT NULL,
  `userId` varchar(255) DEFAULT NULL COMMENT '用户id',
  `username` varchar(255) DEFAULT NULL COMMENT '用户名',
  `userAvatar` varchar(255) DEFAULT NULL COMMENT '用户头像',
  `contactNumber` varchar(255) DEFAULT NULL COMMENT '联系方式',
  `gender` varchar(255) DEFAULT 'male' COMMENT '性别; male, female',
  `birthday` varchar(255) DEFAULT NULL COMMENT '生日E.g: 2021-05-28T10:24:54+08:00 ',
  `signature` varchar(255) DEFAULT NULL COMMENT '签名',
  `email` varchar(255) DEFAULT NULL COMMENT '邮箱',
  `clearTextPassword` varchar(255) DEFAULT NULL COMMENT '初始明文密码',
  `password` varchar(255) DEFAULT NULL COMMENT 'password',
  `md5Salt` varchar(255) DEFAULT NULL COMMENT 'md5Salt',
  `userType` varchar(255) DEFAULT 'common' COMMENT '用户类型; common, xiaochengxu',
  `userStatus` varchar(255) DEFAULT 'active' COMMENT '用户类型; active, banned',
  `config` mediumtext COMMENT '置顶信息',
  `operation` varchar(255) DEFAULT 'insert' COMMENT '操作; insert, update, jhInsert, jhUpdate, jhDelete jhRestore',
  `operationByUserId` varchar(255) DEFAULT NULL COMMENT '操作者userId',
  `operationByUser` varchar(255) DEFAULT NULL COMMENT '操作者用户名',
  `operationAt` varchar(255) DEFAULT NULL COMMENT '操作时间; E.g: 2021-05-28T10:24:54+08:00 ',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE KEY `userId_unique` (`userId`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 179 COMMENT = '用户表;';


# ------------------------------------------------------------
# DATA DUMP FOR TABLE: _user
# ------------------------------------------------------------

INSERT INTO `_user` (`id`,`idSequence`,`userId`,`username`,`userAvatar`,`contactNumber`,`gender`,`birthday`,`signature`,`email`,`clearTextPassword`,`password`,`md5Salt`,`userType`,`userStatus`,`config`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (1,NULL,'admin','武林盟主','/userAvatar/2022/4/4//1649055579149_130916_1.gif','17177777001','male','2022-04-15T00:00:00.000Z','FX啊水电费','电饭锅回电话','123456','9525292c00d70aed4d9caf09bd6fad16','HsH0S8V-F-xX','common','active',NULL,'jhUpdate','admin','武林盟主','2022-07-05T10:42:21+08:00');
INSERT INTO `_user` (`id`,`idSequence`,`userId`,`username`,`userAvatar`,`contactNumber`,`gender`,`birthday`,`signature`,`email`,`clearTextPassword`,`password`,`md5Salt`,`userType`,`userStatus`,`config`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (5,NULL,'100004Q','伽勒','/userAvatar/2022/4/8//1649422517016_792036_11.jpeg','17177777001','male','2022-04-15T00:00:00.000Z','FX啊水电费','电饭锅回电话','123456','9d868aad4af212de6a26e39efbdd86ee','4ThJGJbAPe5m','common','active',NULL,'jhUpdate','admin','武林盟主','2022-04-08T20:55:17+08:00');
INSERT INTO `_user` (`id`,`idSequence`,`userId`,`username`,`userAvatar`,`contactNumber`,`gender`,`birthday`,`signature`,`email`,`clearTextPassword`,`password`,`md5Salt`,`userType`,`userStatus`,`config`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (6,NULL,'m3995Q','雪园','/userAvatar/2022/4/8//1649422517016_792036_11.jpeg','17177777001','male','2022-04-15T00:00:00.000Z','FX啊水电费','电饭锅回电话','123456','9d868aad4af212de6a26e39efbdd86ee','4ThJGJbAPe5m','common','active',NULL,'jhUpdate','admin','武林盟主','2022-04-08T20:55:17+08:00');
INSERT INTO `_user` (`id`,`idSequence`,`userId`,`username`,`userAvatar`,`contactNumber`,`gender`,`birthday`,`signature`,`email`,`clearTextPassword`,`password`,`md5Salt`,`userType`,`userStatus`,`config`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (7,NULL,'m3862G','louis','/userAvatar/2022/4/8//1649422517016_792036_11.jpeg','17177777001','male','2022-04-15T00:00:00.000Z','FX啊水电费','电饭锅回电话','123456','9d868aad4af212de6a26e39efbdd86ee','4ThJGJbAPe5m','common','active',NULL,'jhUpdate','m3862G','louis','2022-05-05T19:47:16+08:00');
INSERT INTO `_user` (`id`,`idSequence`,`userId`,`username`,`userAvatar`,`contactNumber`,`gender`,`birthday`,`signature`,`email`,`clearTextPassword`,`password`,`md5Salt`,`userType`,`userStatus`,`config`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (9,NULL,'m3662X','张超','/userAvatar/2022/4/8//1649422517016_792036_11.jpeg','17177777001','male','2022-04-15T00:00:00.000Z','FX啊水电费','电饭锅回电话','123456','9d868aad4af212de6a26e39efbdd86ee','4ThJGJbAPe5m','common','active',NULL,'jhUpdate','admin','武林盟主','2022-04-08T20:55:17+08:00');
INSERT INTO `_user` (`id`,`idSequence`,`userId`,`username`,`userAvatar`,`contactNumber`,`gender`,`birthday`,`signature`,`email`,`clearTextPassword`,`password`,`md5Salt`,`userType`,`userStatus`,`config`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (10,NULL,'m3659N','汗蒸','/userAvatar/2022/4/8//1649422517016_792036_11.jpeg','17177777001','male','2022-04-15T00:00:00.000Z','FX啊水电费','电饭锅回电话','123456','9d868aad4af212de6a26e39efbdd86ee','4ThJGJbAPe5m','common','active',NULL,'jhUpdate','admin','武林盟主','2022-04-08T20:55:17+08:00');
INSERT INTO `_user` (`id`,`idSequence`,`userId`,`username`,`userAvatar`,`contactNumber`,`gender`,`birthday`,`signature`,`email`,`clearTextPassword`,`password`,`md5Salt`,`userType`,`userStatus`,`config`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (11,NULL,'m3658K','本善','/userAvatar/2022/4/8//1649422517016_792036_11.jpeg','17177777001','male','2022-04-15T00:00:00.000Z','FX啊水电费','电饭锅回电话','123456','9d868aad4af212de6a26e39efbdd86ee','4ThJGJbAPe5m','common','active',NULL,'jhUpdate','admin','武林盟主','2022-04-08T20:55:17+08:00');
INSERT INTO `_user` (`id`,`idSequence`,`userId`,`username`,`userAvatar`,`contactNumber`,`gender`,`birthday`,`signature`,`email`,`clearTextPassword`,`password`,`md5Salt`,`userType`,`userStatus`,`config`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (12,NULL,'m3611F','Colin','/userAvatar/2022/4/8//1649422517016_792036_11.jpeg','17177777001','male','2022-04-15T00:00:00.000Z','FX啊水电费','电饭锅回电话','123456','9d868aad4af212de6a26e39efbdd86ee','4ThJGJbAPe5m','common','active',NULL,'jhUpdate','m3611F','Colin','2022-05-05T15:50:16+08:00');
INSERT INTO `_user` (`id`,`idSequence`,`userId`,`username`,`userAvatar`,`contactNumber`,`gender`,`birthday`,`signature`,`email`,`clearTextPassword`,`password`,`md5Salt`,`userType`,`userStatus`,`config`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (173,'26260000','100005W','安宁',NULL,NULL,'male',NULL,NULL,NULL,'123456','9d868aad4af212de6a26e39efbdd86ee','4ThJGJbAPe5m','common','active',NULL,'insert','admin','武林盟主','2022-04-28T17:03:01+08:00');
INSERT INTO `_user` (`id`,`idSequence`,`userId`,`username`,`userAvatar`,`contactNumber`,`gender`,`birthday`,`signature`,`email`,`clearTextPassword`,`password`,`md5Salt`,`userType`,`userStatus`,`config`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (174,'26260001','meilisearchW','meilisearch',NULL,NULL,'male',NULL,NULL,NULL,'123456','9d868aad4af212de6a26e39efbdd86ee','4ThJGJbAPe5m','common','active',NULL,'insert','m3611F','Colin','2022-06-07T20:37:53+08:00');
INSERT INTO `_user` (`id`,`idSequence`,`userId`,`username`,`userAvatar`,`contactNumber`,`gender`,`birthday`,`signature`,`email`,`clearTextPassword`,`password`,`md5Salt`,`userType`,`userStatus`,`config`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (175,'26260002','100080M','贝贝JH',NULL,NULL,'male',NULL,NULL,NULL,'123456','9d868aad4af212de6a26e39efbdd86ee','4ThJGJbAPe5m','common','active',NULL,'insert','m3611F','Colin','2022-06-16T16:21:00+08:00');
INSERT INTO `_user` (`id`,`idSequence`,`userId`,`username`,`userAvatar`,`contactNumber`,`gender`,`birthday`,`signature`,`email`,`clearTextPassword`,`password`,`md5Salt`,`userType`,`userStatus`,`config`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (176,'26260003','m3111G','安琪',NULL,NULL,'male',NULL,NULL,NULL,'123456','9d868aad4af212de6a26e39efbdd86ee','4ThJGJbAPe5m','common','active',NULL,'insert','m3611F','Colin','2022-06-16T16:21:18+08:00');
INSERT INTO `_user` (`id`,`idSequence`,`userId`,`username`,`userAvatar`,`contactNumber`,`gender`,`birthday`,`signature`,`email`,`clearTextPassword`,`password`,`md5Salt`,`userType`,`userStatus`,`config`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (177,'26260004','100062Y','雅飒JH',NULL,NULL,'male',NULL,NULL,NULL,'123456','9d868aad4af212de6a26e39efbdd86ee','4ThJGJbAPe5m','common','active',NULL,'insert','m3611F','Colin','2022-06-16T16:21:40+08:00');
INSERT INTO `_user` (`id`,`idSequence`,`userId`,`username`,`userAvatar`,`contactNumber`,`gender`,`birthday`,`signature`,`email`,`clearTextPassword`,`password`,`md5Salt`,`userType`,`userStatus`,`config`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (178,'26260005','100013V','杉泥JH',NULL,NULL,'male',NULL,NULL,NULL,'123456','9d868aad4af212de6a26e39efbdd86ee','4ThJGJbAPe5m','common','active',NULL,'insert','m3611F','Colin','2022-06-16T16:21:57+08:00');



# ------------------------------------------------------------
# SCHEMA DUMP FOR TABLE: _user_group_role
# ------------------------------------------------------------

DROP TABLE IF EXISTS `_user_group_role`;
CREATE TABLE `_user_group_role` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userId` varchar(255) NOT NULL COMMENT '用户id',
  `groupId` varchar(255) NOT NULL COMMENT '群组Id',
  `roleId` varchar(255) DEFAULT NULL COMMENT '角色Id',
  `operation` varchar(255) DEFAULT 'insert' COMMENT '操作; insert, update, jhInsert, jhUpdate, jhDelete jhRestore',
  `operationByUserId` varchar(255) DEFAULT NULL COMMENT '操作者userId',
  `operationByUser` varchar(255) DEFAULT NULL COMMENT '操作者用户名',
  `operationAt` varchar(255) DEFAULT NULL COMMENT '操作时间; E.g: 2021-05-28T10:24:54+08:00 ',
  PRIMARY KEY (`id`) USING BTREE,
  KEY `groupId_index` (`groupId`) USING BTREE,
  KEY `userId_index` (`userId`) USING BTREE
) ENGINE = InnoDB COMMENT = '用户群组角色关联表; 软删除未启用;';


# ------------------------------------------------------------
# DATA DUMP FOR TABLE: _user_group_role
# ------------------------------------------------------------




# ------------------------------------------------------------
# SCHEMA DUMP FOR TABLE: _user_group_role_page
# ------------------------------------------------------------

DROP TABLE IF EXISTS `_user_group_role_page`;
CREATE TABLE `_user_group_role_page` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user` varchar(255) DEFAULT NULL COMMENT 'userId 或者 通配符; 通配符: *',
  `group` varchar(255) DEFAULT NULL COMMENT 'groupId 或者 通配符; 通配符: *',
  `role` varchar(255) DEFAULT NULL COMMENT 'roleId 或者 通配符; 通配符: *',
  `page` varchar(255) DEFAULT NULL COMMENT 'pageId id',
  `allowOrDeny` varchar(255) DEFAULT NULL COMMENT '用户群组角色 匹配后 执行动作; allow、deny',
  `desc` varchar(255) DEFAULT NULL COMMENT '映射描述',
  `operation` varchar(255) DEFAULT 'insert' COMMENT '操作; insert, update, jhInsert, jhUpdate, jhDelete jhRestore',
  `operationByUserId` varchar(255) DEFAULT NULL COMMENT '操作者userId',
  `operationByUser` varchar(255) DEFAULT NULL COMMENT '操作者用户名',
  `operationAt` varchar(255) DEFAULT NULL COMMENT '操作时间; E.g: 2021-05-28T10:24:54+08:00 ',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 61 COMMENT = '用户群组角色 - 页面 映射表; 软删除未启用;';


# ------------------------------------------------------------
# DATA DUMP FOR TABLE: _user_group_role_page
# ------------------------------------------------------------

INSERT INTO `_user_group_role_page` (`id`,`user`,`group`,`role`,`page`,`allowOrDeny`,`desc`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (53,'*','public','*','help','allow',' ','insert',NULL,NULL,NULL);
INSERT INTO `_user_group_role_page` (`id`,`user`,`group`,`role`,`page`,`allowOrDeny`,`desc`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (56,'*','public','*','login','allow',' ','insert',NULL,NULL,NULL);
INSERT INTO `_user_group_role_page` (`id`,`user`,`group`,`role`,`page`,`allowOrDeny`,`desc`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (57,'*','public','*','home','allow',' ','insert',NULL,NULL,NULL);
INSERT INTO `_user_group_role_page` (`id`,`user`,`group`,`role`,`page`,`allowOrDeny`,`desc`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (58,'*','public','*','article','allow',' ','insert',NULL,NULL,NULL);
INSERT INTO `_user_group_role_page` (`id`,`user`,`group`,`role`,`page`,`allowOrDeny`,`desc`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (59,'*','public','*','manual','allow',' ','insert',NULL,NULL,NULL);
INSERT INTO `_user_group_role_page` (`id`,`user`,`group`,`role`,`page`,`allowOrDeny`,`desc`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (60,'admin,10000Q,m3995Q,m3862G,m3666K,m3662X,m3659N,m3658K,m3611F,100005W','*','*','*','allow','管理用户, 开放所有页面权限','insert',NULL,NULL,NULL);



# ------------------------------------------------------------
# SCHEMA DUMP FOR TABLE: _user_group_role_resource
# ------------------------------------------------------------

DROP TABLE IF EXISTS `_user_group_role_resource`;
CREATE TABLE `_user_group_role_resource` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user` varchar(255) DEFAULT NULL COMMENT 'userId 或者 通配符; 通配符: *',
  `group` varchar(255) DEFAULT NULL COMMENT 'groupId 或者 通配符; 通配符: *',
  `role` varchar(255) DEFAULT NULL COMMENT 'roleId 或者 通配符; 通配符: *',
  `resource` varchar(255) DEFAULT NULL COMMENT 'resourceId 或者 通配符; 通配符: *, !resourceId',
  `allowOrDeny` varchar(255) DEFAULT NULL COMMENT '用户群组角色 匹配后 执行动作; allow、deny',
  `desc` varchar(255) DEFAULT NULL COMMENT '映射描述',
  `operation` varchar(255) DEFAULT 'insert' COMMENT '操作; insert, update, jhInsert, jhUpdate, jhDelete jhRestore',
  `operationByUserId` varchar(255) DEFAULT NULL COMMENT '操作者userId',
  `operationByUser` varchar(255) DEFAULT NULL COMMENT '操作者用户名',
  `operationAt` varchar(255) DEFAULT NULL COMMENT '操作时间; E.g: 2021-05-28T10:24:54+08:00 ',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 56 COMMENT = '用户群组角色 - 请求资源 映射表; 软删除未启用;';


# ------------------------------------------------------------
# DATA DUMP FOR TABLE: _user_group_role_resource
# ------------------------------------------------------------

INSERT INTO `_user_group_role_resource` (`id`,`user`,`group`,`role`,`resource`,`allowOrDeny`,`desc`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (51,'*','public','*','login.passwordLogin','allow','登录resouce, 赋予给所有用户','insert',NULL,NULL,NULL);
INSERT INTO `_user_group_role_resource` (`id`,`user`,`group`,`role`,`resource`,`allowOrDeny`,`desc`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (52,'*','login','*','allPage.*','allow','allPage 相关接口, 赋予给所有登录用户','insert',NULL,NULL,NULL);
INSERT INTO `_user_group_role_resource` (`id`,`user`,`group`,`role`,`resource`,`allowOrDeny`,`desc`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (55,'admin,10000Q,m3995Q,m3862G,m3666K,m3662X,m3659N,m3658K,m3611F,100005W','*','*','*','allow','所有resource权限, 赋予给所有用户','insert',NULL,NULL,NULL);



# ------------------------------------------------------------
# SCHEMA DUMP FOR TABLE: _user_session
# ------------------------------------------------------------

DROP TABLE IF EXISTS `_user_session`;
CREATE TABLE `_user_session` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userId` varchar(255) DEFAULT NULL COMMENT '用户id',
  `userIp` varchar(255) DEFAULT NULL COMMENT '用户ip',
  `userAgent` varchar(255) DEFAULT NULL COMMENT '请求的 agent',
  `deviceId` varchar(255) DEFAULT NULL COMMENT '设备id',
  `deviceType` varchar(255) DEFAULT NULL COMMENT '设备类型',
  `userIpRegion` varchar(255) DEFAULT NULL,
  `socketStatus` varchar(255) NOT NULL DEFAULT 'offline' COMMENT 'socket状态',
  `authToken` varchar(2048) DEFAULT NULL COMMENT 'auth token',
  `refreshToken` varchar(2048) DEFAULT NULL COMMENT 'refresh token',
  `operation` varchar(255) DEFAULT 'insert' COMMENT '操作; insert, update, jhInsert, jhUpdate, jhDelete jhRestore',
  `operationByUserId` varchar(255) DEFAULT NULL COMMENT '操作者userId',
  `operationByUser` varchar(255) DEFAULT NULL COMMENT '操作者用户名',
  `operationAt` varchar(255) DEFAULT NULL COMMENT '操作时间; E.g: 2021-05-28T10:24:54+08:00 ',
  PRIMARY KEY (`id`) USING BTREE,
  KEY `userId_index` (`userId`) USING BTREE,
  KEY `userId_deviceId_unique` (`userId`, `deviceId`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 100 COMMENT = '用户session表; deviceId 维度;软删除未启用;';




# ------------------------------------------------------------
# SCHEMA DUMP FOR TABLE: article
# ------------------------------------------------------------

DROP TABLE IF EXISTS `article`;
CREATE TABLE `article` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `articleId` bigint(20) DEFAULT NULL COMMENT '文章id, 10000 ++',
  `categoryId` varchar(255) DEFAULT NULL COMMENT '分类id',
  `articleGroupName` varchar(255) DEFAULT '' COMMENT '文章所属分组名',
  `articleTagList` text COMMENT '标签; 用, 拼接',
  `articlePublishStatus` varchar(255) DEFAULT '' COMMENT '文章类型(状态)：public, login, draft, deleted',
  `articlePublishTime` varchar(255) DEFAULT NULL COMMENT '文章发布时间',
  `articleTitle` varchar(255) DEFAULT NULL COMMENT '标题',
  `articleCoverImage` varchar(255) DEFAULT NULL COMMENT '封面',
  `articleContent` longtext COMMENT '编辑的内容',
  `articleContentForSeo` longtext COMMENT 'HTML 用于渲染',
  `articleAssignmentList` text COMMENT '文章作业 [{ }]',
  `articleAssignmentListWithAnswer` text COMMENT '文章作业答案 [{ }]',
  `articleAudioUrl` varchar(1023) DEFAULT NULL COMMENT '默认音频URL唯一的',
  `articleVideoUrl` varchar(1023) DEFAULT '' COMMENT '默认视频URL',
  `articleCreateTime` varchar(255) DEFAULT NULL COMMENT '创建时间',
  `articleCreateUserId` varchar(255) DEFAULT '' COMMENT '创建者用户ID',
  `articleCreateUsername` varchar(255) DEFAULT '' COMMENT '创建者用户名',
  `articleUpdateTime` varchar(255) DEFAULT '' COMMENT '更新时间',
  `articleUpdateUserId` varchar(255) DEFAULT '' COMMENT '更新者用户ID',
  `articleUpdateUsername` varchar(255) DEFAULT '' COMMENT '更新者用户名',
  `operation` varchar(255) DEFAULT '' COMMENT '操作: insert, update, jhInsert, jhUpdate, jhDelete jhRestore',
  `operationByUserId` varchar(255) DEFAULT '' COMMENT '操作者userId',
  `operationByUser` varchar(255) DEFAULT '' COMMENT '操作者用户名',
  `operationAt` varchar(255) DEFAULT '' COMMENT '操作时间; E.g: 2021-05-28T10:24:54+08:00',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE KEY `article_unique` (`articleId`) USING BTREE,
  KEY `categoryId_index` (`categoryId`) USING BTREE,
  KEY `articlePublishTime` (`articlePublishTime`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1572;




# ------------------------------------------------------------
# SCHEMA DUMP FOR TABLE: category
# ------------------------------------------------------------

DROP TABLE IF EXISTS `category`;
CREATE TABLE `category` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `categoryId` bigint(255) DEFAULT NULL COMMENT '分类id',
  `categoryName` varchar(255) DEFAULT '',
  `categoryArticleIgnoreTiltle` varchar(255) DEFAULT NULL COMMENT '目录中需要省略的文字',
  `categoryIntro` text,
  `categoryGroup` varchar(255) DEFAULT NULL,
  `categoryGroupSort` varchar(255) DEFAULT NULL,
  `categoryPublishStatus` varchar(255) DEFAULT '',
  `categoryCreateTime` varchar(255) DEFAULT '',
  `categoryCreateUserId` varchar(255) DEFAULT '',
  `categoryCreateUsername` varchar(255) DEFAULT '',
  `categoryUpdateTime` varchar(255) DEFAULT '',
  `categoryUpdateUserId` varchar(255) DEFAULT '',
  `categoryUpdateUsername` varchar(255) DEFAULT '',
  `operation` varchar(255) DEFAULT '',
  `operationByUserId` varchar(255) DEFAULT '',
  `operationByUser` varchar(255) DEFAULT '',
  `operationAt` varchar(255) DEFAULT '',
  PRIMARY KEY (`id`) USING BTREE,
  KEY `categoryId_unique` (`categoryId`) USING BTREE,
  KEY `categoryName_unique` (`categoryName`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 145;


# ------------------------------------------------------------
# DATA DUMP FOR TABLE: category
# ------------------------------------------------------------

INSERT INTO `category` (`id`,`categoryId`,`categoryName`,`categoryArticleIgnoreTiltle`,`categoryIntro`,`categoryGroup`,`categoryGroupSort`,`categoryPublishStatus`,`categoryCreateTime`,`categoryCreateUserId`,`categoryCreateUsername`,`categoryUpdateTime`,`categoryUpdateUserId`,`categoryUpdateUsername`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (129,10000,'测试分类01',NULL,'测试分类01','测试分类','1','deleted','2022-04-21T21:01:43+08:00','m3611F','刘计','2022-04-23T13:38:09+08:00','m3611F','刘计','jhUpdate','m3611F','刘计','2022-04-23T13:38:09+08:00');
INSERT INTO `category` (`id`,`categoryId`,`categoryName`,`categoryArticleIgnoreTiltle`,`categoryIntro`,`categoryGroup`,`categoryGroupSort`,`categoryPublishStatus`,`categoryCreateTime`,`categoryCreateUserId`,`categoryCreateUsername`,`categoryUpdateTime`,`categoryUpdateUserId`,`categoryUpdateUsername`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (130,10001,'测试分类02',NULL,'测试分类02','测试分类','2','deleted','2022-04-21T21:02:03+08:00','m3611F','刘计','2022-04-23T13:38:13+08:00','m3611F','刘计','jhUpdate','m3611F','刘计','2022-04-23T13:38:13+08:00');
INSERT INTO `category` (`id`,`categoryId`,`categoryName`,`categoryArticleIgnoreTiltle`,`categoryIntro`,`categoryGroup`,`categoryGroupSort`,`categoryPublishStatus`,`categoryCreateTime`,`categoryCreateUserId`,`categoryCreateUsername`,`categoryUpdateTime`,`categoryUpdateUserId`,`categoryUpdateUsername`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (131,10002,'测试分类03',NULL,'测试分类03','测试分类','3','deleted','2022-04-21T21:02:44+08:00','m3611F','刘计','2022-04-23T13:38:16+08:00','m3611F','刘计','jhUpdate','m3611F','刘计','2022-04-23T13:38:16+08:00');
INSERT INTO `category` (`id`,`categoryId`,`categoryName`,`categoryArticleIgnoreTiltle`,`categoryIntro`,`categoryGroup`,`categoryGroupSort`,`categoryPublishStatus`,`categoryCreateTime`,`categoryCreateUserId`,`categoryCreateUsername`,`categoryUpdateTime`,`categoryUpdateUserId`,`categoryUpdateUsername`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (132,10003,'测试分类04',NULL,'测试分类04','测试分类','4','deleted','2022-04-22T13:57:53+08:00','m3611F','刘计','2022-04-23T13:38:19+08:00','m3611F','刘计','jhUpdate','m3611F','刘计','2022-04-23T13:38:19+08:00');
INSERT INTO `category` (`id`,`categoryId`,`categoryName`,`categoryArticleIgnoreTiltle`,`categoryIntro`,`categoryGroup`,`categoryGroupSort`,`categoryPublishStatus`,`categoryCreateTime`,`categoryCreateUserId`,`categoryCreateUsername`,`categoryUpdateTime`,`categoryUpdateUserId`,`categoryUpdateUsername`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (133,10004,'江湖JS',NULL,'小白也容易学习的企业级框架','江湖JS','0','public','2022-04-23T13:37:19+08:00','m3611F','刘计','2022-04-23T13:37:58+08:00','m3611F','刘计','jhUpdate','m3611F','刘计','2022-04-23T13:37:58+08:00');
INSERT INTO `category` (`id`,`categoryId`,`categoryName`,`categoryArticleIgnoreTiltle`,`categoryIntro`,`categoryGroup`,`categoryGroupSort`,`categoryPublishStatus`,`categoryCreateTime`,`categoryCreateUserId`,`categoryCreateUsername`,`categoryUpdateTime`,`categoryUpdateUserId`,`categoryUpdateUsername`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (134,10005,'多星-即时通讯',NULL,'暂无文集简介','多星-即时通讯','5','public','2022-04-23T20:24:44+08:00','m3611F','刘计','2022-05-03T21:49:35+08:00','m3611F','刘计','jhUpdate','m3611F','刘计','2022-05-03T21:49:35+08:00');
INSERT INTO `category` (`id`,`categoryId`,`categoryName`,`categoryArticleIgnoreTiltle`,`categoryIntro`,`categoryGroup`,`categoryGroupSort`,`categoryPublishStatus`,`categoryCreateTime`,`categoryCreateUserId`,`categoryCreateUsername`,`categoryUpdateTime`,`categoryUpdateUserId`,`categoryUpdateUsername`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (135,10006,' 江湖JS-工具',NULL,'暂无文集简介',' 江湖JS-工具','4','deleted','2022-04-23T22:01:57+08:00','W00001','张三丰','2022-05-03T21:47:36+08:00','m3611F','刘计','jhUpdate','m3611F','刘计','2022-05-03T21:47:36+08:00');
INSERT INTO `category` (`id`,`categoryId`,`categoryName`,`categoryArticleIgnoreTiltle`,`categoryIntro`,`categoryGroup`,`categoryGroupSort`,`categoryPublishStatus`,`categoryCreateTime`,`categoryCreateUserId`,`categoryCreateUsername`,`categoryUpdateTime`,`categoryUpdateUserId`,`categoryUpdateUsername`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (136,10007,'江湖JS-部署',NULL,'暂无文集简介','江湖JS-部署','6','deleted','2022-04-23T22:07:49+08:00','W00001','张三丰','2022-05-03T21:49:17+08:00','m3611F','刘计','jhUpdate','m3611F','刘计','2022-05-03T21:49:17+08:00');
INSERT INTO `category` (`id`,`categoryId`,`categoryName`,`categoryArticleIgnoreTiltle`,`categoryIntro`,`categoryGroup`,`categoryGroupSort`,`categoryPublishStatus`,`categoryCreateTime`,`categoryCreateUserId`,`categoryCreateUsername`,`categoryUpdateTime`,`categoryUpdateUserId`,`categoryUpdateUsername`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (137,10008,'机器学习训练营 - 资料',NULL,'暂无文集简介','机器学习训练营 - 资料','4','deleted','2022-04-23T22:14:30+08:00','W00001','张三丰','2022-04-23T22:17:35+08:00','W00001','张三丰','jhUpdate','W00001','张三丰','2022-04-23T22:17:35+08:00');
INSERT INTO `category` (`id`,`categoryId`,`categoryName`,`categoryArticleIgnoreTiltle`,`categoryIntro`,`categoryGroup`,`categoryGroupSort`,`categoryPublishStatus`,`categoryCreateTime`,`categoryCreateUserId`,`categoryCreateUsername`,`categoryUpdateTime`,`categoryUpdateUserId`,`categoryUpdateUsername`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (138,10009,'旋风-内容管理',NULL,'旋风-内容管理','旋风','7','login','2022-05-03T21:51:52+08:00','m3611F','刘计','2022-05-03T21:51:52+08:00','m3611F','刘计','jhInsert','m3611F','刘计','2022-05-03T21:51:52+08:00');
INSERT INTO `category` (`id`,`categoryId`,`categoryName`,`categoryArticleIgnoreTiltle`,`categoryIntro`,`categoryGroup`,`categoryGroupSort`,`categoryPublishStatus`,`categoryCreateTime`,`categoryCreateUserId`,`categoryCreateUsername`,`categoryUpdateTime`,`categoryUpdateUserId`,`categoryUpdateUsername`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (139,10010,'武林-直播课堂',NULL,'武林-直播课堂','武林','8','login','2022-05-03T21:52:21+08:00','m3611F','刘计','2022-05-03T21:52:21+08:00','m3611F','刘计','jhInsert','m3611F','刘计','2022-05-03T21:52:21+08:00');
INSERT INTO `category` (`id`,`categoryId`,`categoryName`,`categoryArticleIgnoreTiltle`,`categoryIntro`,`categoryGroup`,`categoryGroupSort`,`categoryPublishStatus`,`categoryCreateTime`,`categoryCreateUserId`,`categoryCreateUsername`,`categoryUpdateTime`,`categoryUpdateUserId`,`categoryUpdateUsername`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (140,10011,'Training',NULL,'Collection of IT Training tutorials and documents.','Training','1','public','2022-05-10T19:06:25+08:00','100005W','安宁','2022-05-10T19:06:25+08:00','100005W','安宁','jhInsert','100005W','安宁','2022-05-10T19:06:25+08:00');
INSERT INTO `category` (`id`,`categoryId`,`categoryName`,`categoryArticleIgnoreTiltle`,`categoryIntro`,`categoryGroup`,`categoryGroupSort`,`categoryPublishStatus`,`categoryCreateTime`,`categoryCreateUserId`,`categoryCreateUsername`,`categoryUpdateTime`,`categoryUpdateUserId`,`categoryUpdateUsername`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (141,10012,'IT初级编程培训','【学习方法课程】IT初级编程','IT中文初级编程培训','IT培训','1','public','2022-05-15T23:32:29+08:00','100002D','王番','2022-06-12T14:42:05+08:00','m3611F','Colin','jhUpdate','m3611F','Colin','2022-06-12T14:42:05+08:00');
INSERT INTO `category` (`id`,`categoryId`,`categoryName`,`categoryArticleIgnoreTiltle`,`categoryIntro`,`categoryGroup`,`categoryGroupSort`,`categoryPublishStatus`,`categoryCreateTime`,`categoryCreateUserId`,`categoryCreateUsername`,`categoryUpdateTime`,`categoryUpdateUserId`,`categoryUpdateUsername`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (142,10013,'江湖JS框架编程培训','【学习方法课程】IT高级编程','IT江湖JS框架编程培训','IT培训','3','public','2022-05-15T23:42:35+08:00','100002D','王番','2022-06-12T14:59:11+08:00','m3611F','Colin','jhUpdate','m3611F','Colin','2022-06-12T14:59:11+08:00');
INSERT INTO `category` (`id`,`categoryId`,`categoryName`,`categoryArticleIgnoreTiltle`,`categoryIntro`,`categoryGroup`,`categoryGroupSort`,`categoryPublishStatus`,`categoryCreateTime`,`categoryCreateUserId`,`categoryCreateUsername`,`categoryUpdateTime`,`categoryUpdateUserId`,`categoryUpdateUsername`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (143,10014,'IT中级编程培训',NULL,'IT中文中级编程培训','IT培训','2','public','2022-06-03T00:00:46+08:00','100005W','安宁','2022-06-03T00:01:19+08:00','100005W','安宁','jhUpdate','100005W','安宁','2022-06-03T00:01:19+08:00');
INSERT INTO `category` (`id`,`categoryId`,`categoryName`,`categoryArticleIgnoreTiltle`,`categoryIntro`,`categoryGroup`,`categoryGroupSort`,`categoryPublishStatus`,`categoryCreateTime`,`categoryCreateUserId`,`categoryCreateUsername`,`categoryUpdateTime`,`categoryUpdateUserId`,`categoryUpdateUsername`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (144,10015,'江湖JS-草稿',NULL,'江湖JS-草稿','江湖JS','9','login','2022-06-12T16:14:55+08:00','m3611F','Colin','2022-06-12T16:14:55+08:00','m3611F','Colin','jhInsert','m3611F','Colin','2022-06-12T16:14:55+08:00');



# ------------------------------------------------------------
# SCHEMA DUMP FOR TABLE: _view01_user
# ------------------------------------------------------------

CREATE OR REPLACE VIEW `_view01_user` AS
select
  `_user`.`id` AS `id`,
  `_user`.`userId` AS `userId`,
  `_user`.`username` AS `username`,
  `_user`.`userAvatar` AS `userAvatar`,
  `_user`.`contactNumber` AS `contactNumber`,
  `_user`.`gender` AS `gender`,
  `_user`.`birthday` AS `birthday`,
  `_user`.`signature` AS `signature`,
  `_user`.`email` AS `email`,
  `_user`.`clearTextPassword` AS `clearTextPassword`,
  `_user`.`password` AS `password`,
  `_user`.`md5Salt` AS `md5Salt`,
  `_user`.`userType` AS `userType`,
  `_user`.`userStatus` AS `userStatus`,
  `_user`.`config` AS `config`,
  `_user`.`operation` AS `operation`,
  `_user`.`operationByUserId` AS `operationByUserId`,
  `_user`.`operationByUser` AS `operationByUser`,
  `_user`.`operationAt` AS `operationAt`
from
  `_user`;





# ------------------------------------------------------------
# SCHEMA DUMP FOR TABLE: view01_article
# ------------------------------------------------------------

CREATE OR REPLACE VIEW `view01_article` AS
select
  `article`.`id` AS `id`,
  `article`.`articleId` AS `articleId`,
  `article`.`categoryId` AS `categoryId`,
  `article`.`articleGroupName` AS `articleGroupName`,
  `article`.`articleTagList` AS `articleTagList`,
  `article`.`articlePublishStatus` AS `articlePublishStatus`,
  `article`.`articlePublishTime` AS `articlePublishTime`,
  `article`.`articleTitle` AS `articleTitle`,
  `article`.`articleCoverImage` AS `articleCoverImage`,
  `article`.`articleAudioUrl` AS `articleAudioUrl`,
  `article`.`articleVideoUrl` AS `articleVideoUrl`,
  `article`.`articleCreateTime` AS `articleCreateTime`,
  `article`.`articleCreateUserId` AS `articleCreateUserId`,
  `article`.`articleCreateUsername` AS `articleCreateUsername`,
  `article`.`articleUpdateTime` AS `articleUpdateTime`,
  `article`.`articleUpdateUserId` AS `articleUpdateUserId`,
  `article`.`articleUpdateUsername` AS `articleUpdateUsername`,
  `article`.`operation` AS `operation`,
  `article`.`operationByUserId` AS `operationByUserId`,
  `article`.`operationByUser` AS `operationByUser`,
  `article`.`operationAt` AS `operationAt`,
  `category`.`categoryName` AS `categoryName`,
  `category`.`categoryIntro` AS `categoryIntro`,
  `category`.`categoryGroup` AS `categoryGroup`,
  `category`.`categoryGroupSort` AS `categoryGroupSort`
from
  (
  `article`
  left join `category` on(
    (`article`.`categoryId` = `category`.`categoryId`)
  )
  );





# ------------------------------------------------------------
# SCHEMA DUMP FOR TABLE: view01_category
# ------------------------------------------------------------

CREATE OR REPLACE VIEW `view01_category` AS
select
  count(
  (
    `article`.`articlePublishStatus` in ('public', 'login')
  )
  ) AS `count`,
  `category`.`id` AS `id`,
  `category`.`categoryId` AS `categoryId`,
  `category`.`categoryName` AS `categoryName`,
  `category`.`categoryArticleIgnoreTiltle` AS `categoryArticleIgnoreTiltle`,
  `category`.`categoryGroup` AS `categoryGroup`,
  `category`.`categoryGroupSort` AS `categoryGroupSort`,
  concat(
  '<',
  `category`.`categoryGroup`,
  `category`.`categoryGroupSort`,
  '>'
  ) AS `categoryGroupConcat`,
  `category`.`categoryIntro` AS `categoryIntro`,
  `category`.`categoryPublishStatus` AS `categoryPublishStatus`,
  `category`.`categoryCreateTime` AS `categoryCreateTime`,
  `category`.`categoryCreateUserId` AS `categoryCreateUserId`,
  `category`.`categoryCreateUsername` AS `categoryCreateUsername`,
  `category`.`categoryUpdateTime` AS `categoryUpdateTime`,
  `category`.`categoryUpdateUserId` AS `categoryUpdateUserId`,
  `category`.`categoryUpdateUsername` AS `categoryUpdateUsername`,
  `category`.`operation` AS `operation`,
  `category`.`operationByUserId` AS `operationByUserId`,
  `category`.`operationByUser` AS `operationByUser`,
  `category`.`operationAt` AS `operationAt`
from
  (
  `category`
  left join `article` on(
    (`category`.`categoryId` = `article`.`categoryId`)
  )
  )
group by
  `category`.`categoryId`;





