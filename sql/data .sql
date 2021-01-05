-- MySQL dump 10.13  Distrib 5.7.28, for Win64 (x86_64)
--
-- Host: localhost    Database: blog_db
-- ------------------------------------------------------
-- Server version	5.7.28-log

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `blog`
--

DROP TABLE IF EXISTS `blog`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `blog` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'id递增',
  `title` varchar(255) NOT NULL COMMENT '文章标题',
  `photo` varchar(255) DEFAULT NULL COMMENT '文章封面图路径',
  `view` int(10) NOT NULL COMMENT '文章浏览量',
  `tags` text COMMENT '博客标签，多个标签使用，分割开',
  `catalog` varchar(20) DEFAULT NULL COMMENT '博客所属目录',
  `uploadTime` datetime NOT NULL COMMENT '上传时间(按照时间顺序取出博客)',
  `content` mediumtext NOT NULL COMMENT '文章内容路径',
  `updateTime` datetime NOT NULL COMMENT '最后更改时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT COMMENT='博客文章表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `blog`
--

LOCK TABLES `blog` WRITE;
/*!40000 ALTER TABLE `blog` DISABLE KEYS */;
/*!40000 ALTER TABLE `blog` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `category`
--

DROP TABLE IF EXISTS `category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `category` (
  `id` int(10) NOT NULL AUTO_INCREMENT COMMENT 'id主键递增',
  `name` varchar(100) NOT NULL COMMENT '分类,采用,分割开显示出来',
  `createTime` datetime NOT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT COMMENT='目录表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `category`
--

LOCK TABLES `category` WRITE;
/*!40000 ALTER TABLE `category` DISABLE KEYS */;
INSERT INTO `category` VALUES (1,'java','2021-01-03 17:36:06'),(2,'算法','2021-01-03 19:33:16'),(3,'C++','2021-01-03 19:33:26'),(4,'js','2021-01-03 19:33:43'),(5,'Spring','2021-01-03 19:33:55');
/*!40000 ALTER TABLE `category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `comment`
--

DROP TABLE IF EXISTS `comment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `comment` (
  `id` int(10) NOT NULL AUTO_INCREMENT COMMENT 'id主键递增',
  `flag` varchar(10) NOT NULL COMMENT '是否开启评论管理',
  `appId` varchar(50) NOT NULL COMMENT '如果开启填写APP ID AppID 是该项目的唯一标识符。此 ID 不可变更',
  `appKey` varchar(50) NOT NULL COMMENT '如果开启请填写APP Key  AppKey 是公开的访问密钥，适用于在公开的客户端中使用。使用 AppKey 进行的访问受到 ACL 的限制',
  `placeholder` varchar(255) NOT NULL DEFAULT '欢迎留言！在这里说出你的想法！' COMMENT '提示评论什么',
  `placePhoto` varchar(255) NOT NULL DEFAULT 'https:Todcsw.github.io/images/comment_bg.png' COMMENT '占位图片的链接',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT COMMENT='评论表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `comment`
--

LOCK TABLES `comment` WRITE;
/*!40000 ALTER TABLE `comment` DISABLE KEYS */;
INSERT INTO `comment` VALUES (1,'0','','','','');
/*!40000 ALTER TABLE `comment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `description`
--

DROP TABLE IF EXISTS `description`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `description` (
  `id` int(10) NOT NULL AUTO_INCREMENT COMMENT 'id递增主键',
  `name` varchar(40) DEFAULT NULL COMMENT '昵称',
  `constellation` varchar(40) DEFAULT NULL COMMENT '星座',
  `experience` varchar(255) DEFAULT NULL COMMENT '教育经历',
  `sentence` varchar(255) DEFAULT NULL COMMENT '最喜欢的一句话',
  `idol` varchar(50) DEFAULT NULL COMMENT '偶像',
  `character1` varchar(50) DEFAULT NULL COMMENT '性格',
  `contact` varchar(255) DEFAULT NULL COMMENT '联系方式',
  `information` varchar(255) DEFAULT NULL COMMENT '个人详细介绍',
  `language` varchar(50) DEFAULT NULL COMMENT '开发语言介绍,及工作',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT COMMENT='个人表述表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `description`
--

LOCK TABLES `description` WRITE;
/*!40000 ALTER TABLE `description` DISABLE KEYS */;
/*!40000 ALTER TABLE `description` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `footer`
--

DROP TABLE IF EXISTS `footer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `footer` (
  `id` int(10) NOT NULL AUTO_INCREMENT COMMENT 'id递增主键',
  `about` varchar(50) DEFAULT NULL COMMENT '底部about',
  `number` varchar(50) DEFAULT NULL COMMENT '底部备案号',
  `copyright` varchar(50) DEFAULT NULL COMMENT '资讯著作权',
  `powerby` varchar(50) DEFAULT NULL COMMENT '技术支持',
  `byurl` varchar(50) DEFAULT NULL COMMENT '博客的超链接',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT COMMENT='底部栏目表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `footer`
--

LOCK TABLES `footer` WRITE;
/*!40000 ALTER TABLE `footer` DISABLE KEYS */;
/*!40000 ALTER TABLE `footer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `information`
--

DROP TABLE IF EXISTS `information`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `information` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'id主键递增',
  `photo` varchar(50) NOT NULL COMMENT '个人头像',
  `sentence` varchar(40) DEFAULT NULL COMMENT '姓名下的句子',
  `email` varchar(30) DEFAULT NULL COMMENT '个人邮箱',
  `github` varchar(50) DEFAULT NULL COMMENT 'github网址',
  `name` varchar(255) NOT NULL COMMENT '姓名',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT COMMENT='个人信息表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `information`
--

LOCK TABLES `information` WRITE;
/*!40000 ALTER TABLE `information` DISABLE KEYS */;
INSERT INTO `information` VALUES (1,'','','982289931@qq.com','https://github/maserhe','');
/*!40000 ALTER TABLE `information` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `link`
--

DROP TABLE IF EXISTS `link`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `link` (
  `id` int(10) NOT NULL AUTO_INCREMENT COMMENT 'id递增',
  `hphoto` varchar(100) NOT NULL COMMENT '友链图片',
  `url` varchar(100) NOT NULL COMMENT '友情链接，写网址时提示必须填写的是https: 不加www.的网址',
  `name` varchar(20) NOT NULL COMMENT '友链名称',
  `introduce` varchar(50) NOT NULL COMMENT '友链介绍',
  `create_time` datetime NOT NULL COMMENT '添加时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT COMMENT='友情链接表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `link`
--

LOCK TABLES `link` WRITE;
/*!40000 ALTER TABLE `link` DISABLE KEYS */;
/*!40000 ALTER TABLE `link` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `photo`
--

DROP TABLE IF EXISTS `photo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `photo` (
  `id` int(10) NOT NULL AUTO_INCREMENT COMMENT '主键递增',
  `linkPhoto` varchar(100) DEFAULT NULL COMMENT '友情链接页上面的图片',
  `aboutPhoto` varchar(100) DEFAULT NULL COMMENT '关于页上面的图片',
  `tagPhoto` varchar(100) DEFAULT NULL COMMENT '标签页上面的图片',
  `indexPhoto` varchar(100) DEFAULT NULL COMMENT '首页上面的图片',
  `categoryPhoto` varchar(100) DEFAULT NULL COMMENT '目录页上面的图片',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `photo`
--

LOCK TABLES `photo` WRITE;
/*!40000 ALTER TABLE `photo` DISABLE KEYS */;
/*!40000 ALTER TABLE `photo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `site`
--

DROP TABLE IF EXISTS `site`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `site` (
  `name` varchar(20) NOT NULL COMMENT '站点名称',
  `id` int(10) NOT NULL AUTO_INCREMENT COMMENT 'id主键递增',
  `description` varchar(50) NOT NULL COMMENT '站点描述',
  `logo` varchar(40) NOT NULL COMMENT '站点Logo图片路径',
  `favicon` varchar(40) NOT NULL COMMENT '站点favico图片路径',
  `notice` varchar(40) NOT NULL COMMENT '站点公告',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT COMMENT='站点信息表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `site`
--

LOCK TABLES `site` WRITE;
/*!40000 ALTER TABLE `site` DISABLE KEYS */;
INSERT INTO `site` VALUES ('Maserhe的博客',1,'动态规划的人生比贪心更有趣','','没有~~~~','');
/*!40000 ALTER TABLE `site` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tag`
--

DROP TABLE IF EXISTS `tag`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tag` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'id主键',
  `name` varchar(100) NOT NULL COMMENT '标签名称',
  `deleted` int(10) NOT NULL COMMENT '是否被删除,0=否 1=是',
  `createTime` datetime NOT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`,`name`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT COMMENT='标签表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tag`
--

LOCK TABLES `tag` WRITE;
/*!40000 ALTER TABLE `tag` DISABLE KEYS */;
/*!40000 ALTER TABLE `tag` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'id递增',
  `account` varchar(30) NOT NULL COMMENT '登录后台管理账号一般只允许用邮箱注册',
  `password` varchar(50) NOT NULL COMMENT '登录后台管理密码',
  `problem` varchar(20) NOT NULL COMMENT '密保问题',
  `answer` varchar(20) NOT NULL COMMENT '密保答案',
  `createTime` datetime DEFAULT NULL COMMENT '用户创建时间,也就是博客创建时间',
  `identify` varchar(255) NOT NULL COMMENT '身份',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT COMMENT='个人信息表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES (1,'Maserhe','MTIzNDU2','456','456','2020-12-23 19:09:21','456');
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-01-03 19:44:08
