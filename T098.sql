/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8mb3 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

DROP DATABASE IF EXISTS `t098`;
CREATE DATABASE IF NOT EXISTS `t098` /*!40100 DEFAULT CHARACTER SET utf8mb3 */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `t098`;

DROP TABLE IF EXISTS `config`;
CREATE TABLE IF NOT EXISTS `config` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) NOT NULL COMMENT '配置参数名称',
  `value` varchar(100) DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb3 COMMENT='配置文件';

DELETE FROM `config`;
INSERT INTO `config` (`id`, `name`, `value`) VALUES
	(1, 'picture1', 'http://localhost:8080/springboot073x3/upload/picture1.jpg'),
	(2, 'picture2', 'http://localhost:8080/springboot073x3/upload/picture2.jpg'),
	(3, 'picture3', 'http://localhost:8080/springboot073x3/upload/picture3.jpg'),
	(6, 'homepage', 'http://localhost:8080/springboot073x3/upload/1619755801403.jpg');

DROP TABLE IF EXISTS `diqu`;
CREATE TABLE IF NOT EXISTS `diqu` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `diqu` varchar(200) DEFAULT NULL COMMENT '地区',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=57 DEFAULT CHARSET=utf8mb3 COMMENT='地区';

DELETE FROM `diqu`;
INSERT INTO `diqu` (`id`, `addtime`, `diqu`) VALUES
	(51, '2021-04-30 03:47:47', '地区1'),
	(52, '2021-04-30 03:47:47', '地区2'),
	(53, '2021-04-30 03:47:47', '地区3'),
	(54, '2021-04-30 03:47:47', '地区4'),
	(55, '2021-04-30 03:47:47', '地区5'),
	(56, '2021-04-30 03:47:47', '地区6');

DROP TABLE IF EXISTS `discussjingdianxinxi`;
CREATE TABLE IF NOT EXISTS `discussjingdianxinxi` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `refid` bigint NOT NULL COMMENT '关联表id',
  `userid` bigint NOT NULL COMMENT '用户id',
  `nickname` varchar(200) DEFAULT NULL COMMENT '用户名',
  `content` longtext NOT NULL COMMENT '评论内容',
  `reply` longtext COMMENT '回复内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=187 DEFAULT CHARSET=utf8mb3 COMMENT='景点信息评论表';

DELETE FROM `discussjingdianxinxi`;
INSERT INTO `discussjingdianxinxi` (`id`, `addtime`, `refid`, `userid`, `nickname`, `content`, `reply`) VALUES
	(181, '2021-04-30 03:47:47', 1, 1, '用户名1', '评论内容1', '回复内容1'),
	(182, '2021-04-30 03:47:47', 2, 2, '用户名2', '评论内容2', '回复内容2'),
	(183, '2021-04-30 03:47:47', 3, 3, '用户名3', '评论内容3', '回复内容3'),
	(184, '2021-04-30 03:47:47', 4, 4, '用户名4', '评论内容4', '回复内容4'),
	(185, '2021-04-30 03:47:47', 5, 5, '用户名5', '评论内容5', '回复内容5'),
	(186, '2021-04-30 03:47:47', 6, 6, '用户名6', '评论内容6', '回复内容6');

DROP TABLE IF EXISTS `discussjiudianxinxi`;
CREATE TABLE IF NOT EXISTS `discussjiudianxinxi` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `refid` bigint NOT NULL COMMENT '关联表id',
  `userid` bigint NOT NULL COMMENT '用户id',
  `nickname` varchar(200) DEFAULT NULL COMMENT '用户名',
  `content` longtext NOT NULL COMMENT '评论内容',
  `reply` longtext COMMENT '回复内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=197 DEFAULT CHARSET=utf8mb3 COMMENT='酒店信息评论表';

DELETE FROM `discussjiudianxinxi`;
INSERT INTO `discussjiudianxinxi` (`id`, `addtime`, `refid`, `userid`, `nickname`, `content`, `reply`) VALUES
	(191, '2021-04-30 03:47:47', 1, 1, '用户名1', '评论内容1', '回复内容1'),
	(192, '2021-04-30 03:47:47', 2, 2, '用户名2', '评论内容2', '回复内容2'),
	(193, '2021-04-30 03:47:47', 3, 3, '用户名3', '评论内容3', '回复内容3'),
	(194, '2021-04-30 03:47:47', 4, 4, '用户名4', '评论内容4', '回复内容4'),
	(195, '2021-04-30 03:47:47', 5, 5, '用户名5', '评论内容5', '回复内容5'),
	(196, '2021-04-30 03:47:47', 6, 6, '用户名6', '评论内容6', '回复内容6');

DROP TABLE IF EXISTS `discusstechan`;
CREATE TABLE IF NOT EXISTS `discusstechan` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `refid` bigint NOT NULL COMMENT '关联表id',
  `userid` bigint NOT NULL COMMENT '用户id',
  `nickname` varchar(200) DEFAULT NULL COMMENT '用户名',
  `content` longtext NOT NULL COMMENT '评论内容',
  `reply` longtext COMMENT '回复内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=207 DEFAULT CHARSET=utf8mb3 COMMENT='特产评论表';

DELETE FROM `discusstechan`;
INSERT INTO `discusstechan` (`id`, `addtime`, `refid`, `userid`, `nickname`, `content`, `reply`) VALUES
	(201, '2021-04-30 03:47:47', 1, 1, '用户名1', '评论内容1', '回复内容1'),
	(202, '2021-04-30 03:47:47', 2, 2, '用户名2', '评论内容2', '回复内容2'),
	(203, '2021-04-30 03:47:47', 3, 3, '用户名3', '评论内容3', '回复内容3'),
	(204, '2021-04-30 03:47:47', 4, 4, '用户名4', '评论内容4', '回复内容4'),
	(205, '2021-04-30 03:47:47', 5, 5, '用户名5', '评论内容5', '回复内容5'),
	(206, '2021-04-30 03:47:47', 6, 6, '用户名6', '评论内容6', '回复内容6');

DROP TABLE IF EXISTS `goupiaoquxiaodingdan`;
CREATE TABLE IF NOT EXISTS `goupiaoquxiaodingdan` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `youkezhanghao` varchar(200) DEFAULT NULL COMMENT '游客账号',
  `youkexingming` varchar(200) DEFAULT NULL COMMENT '游客姓名',
  `lianxifangshi` varchar(200) DEFAULT NULL COMMENT '联系方式',
  `shenfenzheng` varchar(200) DEFAULT NULL COMMENT '身份证',
  `jingdianmingcheng` varchar(200) DEFAULT NULL COMMENT '景点名称',
  `suozaishengqu` varchar(200) DEFAULT NULL COMMENT '所在省区',
  `suozaichengshi` varchar(200) DEFAULT NULL COMMENT '所在城市',
  `suozaidiqu` varchar(200) DEFAULT NULL COMMENT '所在地区',
  `piaoshu` varchar(200) DEFAULT NULL COMMENT '票数',
  `jiage` int DEFAULT NULL COMMENT '价格',
  `zongjine` varchar(200) DEFAULT NULL COMMENT '总金额',
  `tupian` varchar(200) DEFAULT NULL COMMENT '图片',
  `goupiaoshijian` varchar(200) DEFAULT NULL COMMENT '购票时间',
  `quxiaoshijian` datetime DEFAULT NULL COMMENT '取消时间',
  `quxiaoyuanyin` longtext COMMENT '取消原因',
  `sfsh` varchar(200) DEFAULT '否' COMMENT '是否审核',
  `shhf` longtext COMMENT '审核回复',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1619756130711 DEFAULT CHARSET=utf8mb3 COMMENT='购票取消订单';

DELETE FROM `goupiaoquxiaodingdan`;
INSERT INTO `goupiaoquxiaodingdan` (`id`, `addtime`, `youkezhanghao`, `youkexingming`, `lianxifangshi`, `shenfenzheng`, `jingdianmingcheng`, `suozaishengqu`, `suozaichengshi`, `suozaidiqu`, `piaoshu`, `jiage`, `zongjine`, `tupian`, `goupiaoshijian`, `quxiaoshijian`, `quxiaoyuanyin`, `sfsh`, `shhf`) VALUES
	(101, '2021-04-30 03:47:47', '游客账号1', '游客姓名1', '联系方式1', '身份证1', '景点名称1', '所在省区1', '所在城市1', '所在地区1', '票数1', 1, '总金额1', 'http://localhost:8080/springboot073x3/upload/goupiaoquxiaodingdan_tupian1.jpg', '购票时间1', '2021-04-30 11:47:47', '取消原因1', '是', ''),
	(102, '2021-04-30 03:47:47', '游客账号2', '游客姓名2', '联系方式2', '身份证2', '景点名称2', '所在省区2', '所在城市2', '所在地区2', '票数2', 2, '总金额2', 'http://localhost:8080/springboot073x3/upload/goupiaoquxiaodingdan_tupian2.jpg', '购票时间2', '2021-04-30 11:47:47', '取消原因2', '是', ''),
	(103, '2021-04-30 03:47:47', '游客账号3', '游客姓名3', '联系方式3', '身份证3', '景点名称3', '所在省区3', '所在城市3', '所在地区3', '票数3', 3, '总金额3', 'http://localhost:8080/springboot073x3/upload/goupiaoquxiaodingdan_tupian3.jpg', '购票时间3', '2021-04-30 11:47:47', '取消原因3', '是', ''),
	(104, '2021-04-30 03:47:47', '游客账号4', '游客姓名4', '联系方式4', '身份证4', '景点名称4', '所在省区4', '所在城市4', '所在地区4', '票数4', 4, '总金额4', 'http://localhost:8080/springboot073x3/upload/goupiaoquxiaodingdan_tupian4.jpg', '购票时间4', '2021-04-30 11:47:47', '取消原因4', '是', ''),
	(105, '2021-04-30 03:47:47', '游客账号5', '游客姓名5', '联系方式5', '身份证5', '景点名称5', '所在省区5', '所在城市5', '所在地区5', '票数5', 5, '总金额5', 'http://localhost:8080/springboot073x3/upload/goupiaoquxiaodingdan_tupian5.jpg', '购票时间5', '2021-04-30 11:47:47', '取消原因5', '是', ''),
	(106, '2021-04-30 03:47:47', '游客账号6', '游客姓名6', '联系方式6', '身份证6', '景点名称6', '所在省区6', '所在城市6', '所在地区6', '票数6', 6, '总金额6', 'http://localhost:8080/springboot073x3/upload/goupiaoquxiaodingdan_tupian6.jpg', '购票时间6', '2021-04-30 11:47:47', '取消原因6', '是', ''),
	(1619756130710, '2021-04-30 04:15:30', '123', '小v', '13923532031', '123456789123456789', '景点', '省区2', '市区2', '地区2', '2', 50, '100', 'http://localhost:8080/springboot073x3/upload/1619755590846.jpg', '2021-04-30 00:00:00', '2021-04-30 12:15:21', '不想要了', '是', NULL);

DROP TABLE IF EXISTS `jingdiangoupiaodingdan`;
CREATE TABLE IF NOT EXISTS `jingdiangoupiaodingdan` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `youkezhanghao` varchar(200) DEFAULT NULL COMMENT '游客账号',
  `youkexingming` varchar(200) DEFAULT NULL COMMENT '游客姓名',
  `lianxifangshi` varchar(200) DEFAULT NULL COMMENT '联系方式',
  `shenfenzheng` varchar(200) DEFAULT NULL COMMENT '身份证',
  `jingdianmingcheng` varchar(200) DEFAULT NULL COMMENT '景点名称',
  `suozaishengqu` varchar(200) DEFAULT NULL COMMENT '所在省区',
  `suozaichengshi` varchar(200) DEFAULT NULL COMMENT '所在城市',
  `suozaidiqu` varchar(200) DEFAULT NULL COMMENT '所在地区',
  `piaoshu` int DEFAULT NULL COMMENT '票数',
  `jiage` int DEFAULT NULL COMMENT '价格',
  `zongjine` varchar(200) DEFAULT NULL COMMENT '总金额',
  `goupiaoshijian` datetime DEFAULT NULL COMMENT '购票时间',
  `tupian` varchar(200) DEFAULT NULL COMMENT '图片',
  `sfsh` varchar(200) DEFAULT '否' COMMENT '是否审核',
  `shhf` longtext COMMENT '审核回复',
  `ispay` varchar(200) DEFAULT '未支付' COMMENT '是否支付',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1619755910026 DEFAULT CHARSET=utf8mb3 COMMENT='景点购票订单';

DELETE FROM `jingdiangoupiaodingdan`;
INSERT INTO `jingdiangoupiaodingdan` (`id`, `addtime`, `youkezhanghao`, `youkexingming`, `lianxifangshi`, `shenfenzheng`, `jingdianmingcheng`, `suozaishengqu`, `suozaichengshi`, `suozaidiqu`, `piaoshu`, `jiage`, `zongjine`, `goupiaoshijian`, `tupian`, `sfsh`, `shhf`, `ispay`) VALUES
	(91, '2021-04-30 03:47:47', '游客账号1', '游客姓名1', '联系方式1', '身份证1', '景点名称1', '所在省区1', '所在城市1', '所在地区1', 1, 1, '总金额1', '2021-04-30 11:47:47', 'http://localhost:8080/springboot073x3/upload/jingdiangoupiaodingdan_tupian1.jpg', '是', '', '未支付'),
	(92, '2021-04-30 03:47:47', '游客账号2', '游客姓名2', '联系方式2', '身份证2', '景点名称2', '所在省区2', '所在城市2', '所在地区2', 2, 2, '总金额2', '2021-04-30 11:47:47', 'http://localhost:8080/springboot073x3/upload/jingdiangoupiaodingdan_tupian2.jpg', '是', '', '未支付'),
	(93, '2021-04-30 03:47:47', '游客账号3', '游客姓名3', '联系方式3', '身份证3', '景点名称3', '所在省区3', '所在城市3', '所在地区3', 3, 3, '总金额3', '2021-04-30 11:47:47', 'http://localhost:8080/springboot073x3/upload/jingdiangoupiaodingdan_tupian3.jpg', '是', '', '未支付'),
	(94, '2021-04-30 03:47:47', '游客账号4', '游客姓名4', '联系方式4', '身份证4', '景点名称4', '所在省区4', '所在城市4', '所在地区4', 4, 4, '总金额4', '2021-04-30 11:47:47', 'http://localhost:8080/springboot073x3/upload/jingdiangoupiaodingdan_tupian4.jpg', '是', '', '未支付'),
	(95, '2021-04-30 03:47:47', '游客账号5', '游客姓名5', '联系方式5', '身份证5', '景点名称5', '所在省区5', '所在城市5', '所在地区5', 5, 5, '总金额5', '2021-04-30 11:47:47', 'http://localhost:8080/springboot073x3/upload/jingdiangoupiaodingdan_tupian5.jpg', '是', '', '未支付'),
	(96, '2021-04-30 03:47:47', '游客账号6', '游客姓名6', '联系方式6', '身份证6', '景点名称6', '所在省区6', '所在城市6', '所在地区6', 6, 6, '总金额6', '2021-04-30 11:47:47', 'http://localhost:8080/springboot073x3/upload/jingdiangoupiaodingdan_tupian6.jpg', '是', '', '未支付'),
	(1619755910025, '2021-04-30 04:11:49', '123', '小v', '13923532031', '123456789123456789', '景点', '省区2', '市区2', '地区2', 2, 50, '100', '2021-04-30 00:00:00', 'http://localhost:8080/springboot073x3/upload/1619755590846.jpg', '是', NULL, '已支付');

DROP TABLE IF EXISTS `jingdianxinxi`;
CREATE TABLE IF NOT EXISTS `jingdianxinxi` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `jingdianmingcheng` varchar(200) DEFAULT NULL COMMENT '景点名称',
  `jingdiandengji` varchar(200) DEFAULT NULL COMMENT '景点等级',
  `jingdianjieshao` longtext COMMENT '景点介绍',
  `suozaishengqu` varchar(200) DEFAULT NULL COMMENT '所在省区',
  `suozaichengshi` varchar(200) DEFAULT NULL COMMENT '所在城市',
  `suozaidiqu` varchar(200) DEFAULT NULL COMMENT '所在地区',
  `meitiankaifangshijian` datetime DEFAULT NULL COMMENT '每天开放时间',
  `meitianguanbishijian` datetime DEFAULT NULL COMMENT '每天关闭时间',
  `beizhu` varchar(200) DEFAULT NULL COMMENT '备注',
  `jiage` int DEFAULT NULL COMMENT '价格',
  `tupian` varchar(200) DEFAULT NULL COMMENT '图片',
  `thumbsupnum` int DEFAULT '0' COMMENT '赞',
  `crazilynum` int DEFAULT '0' COMMENT '踩',
  `clicktime` datetime DEFAULT NULL COMMENT '最近点击时间',
  `clicknum` int DEFAULT '0' COMMENT '点击次数',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1619755601698 DEFAULT CHARSET=utf8mb3 COMMENT='景点信息';

DELETE FROM `jingdianxinxi`;
INSERT INTO `jingdianxinxi` (`id`, `addtime`, `jingdianmingcheng`, `jingdiandengji`, `jingdianjieshao`, `suozaishengqu`, `suozaichengshi`, `suozaidiqu`, `meitiankaifangshijian`, `meitianguanbishijian`, `beizhu`, `jiage`, `tupian`, `thumbsupnum`, `crazilynum`, `clicktime`, `clicknum`) VALUES
	(21, '2021-04-30 03:47:47', '景点名称1', 'A', '景点介绍1', '所在省区1', '所在城市1', '所在地区1', '2021-04-30 11:47:47', '2021-04-30 11:47:47', '备注1', 1, 'http://localhost:8080/springboot073x3/upload/jingdianxinxi_tupian1.jpg', 1, 1, '2024-02-15 10:35:48', 3),
	(22, '2021-04-30 03:47:47', '景点名称2', 'A', '景点介绍2', '所在省区2', '所在城市2', '所在地区2', '2021-04-30 11:47:47', '2021-04-30 11:47:47', '备注2', 2, 'http://localhost:8080/springboot073x3/upload/jingdianxinxi_tupian2.jpg', 2, 2, '2021-04-30 11:47:47', 2),
	(23, '2021-04-30 03:47:47', '景点名称3', 'A', '景点介绍3', '所在省区3', '所在城市3', '所在地区3', '2021-04-30 11:47:47', '2021-04-30 11:47:47', '备注3', 3, 'http://localhost:8080/springboot073x3/upload/jingdianxinxi_tupian3.jpg', 3, 3, '2024-02-15 10:37:40', 4),
	(24, '2021-04-30 03:47:47', '景点名称4', 'A', '景点介绍4', '所在省区4', '所在城市4', '所在地区4', '2021-04-30 11:47:47', '2021-04-30 11:47:47', '备注4', 4, 'http://localhost:8080/springboot073x3/upload/jingdianxinxi_tupian4.jpg', 4, 4, '2021-04-30 11:47:47', 4),
	(25, '2021-04-30 03:47:47', '景点名称5', 'A', '景点介绍5', '所在省区5', '所在城市5', '所在地区5', '2021-04-30 11:47:47', '2021-04-30 11:47:47', '备注5', 5, 'http://localhost:8080/springboot073x3/upload/jingdianxinxi_tupian5.jpg', 5, 5, '2021-04-30 11:47:47', 5),
	(26, '2021-04-30 03:47:47', '景点名称6', 'A', '景点介绍6', '所在省区6', '所在城市6', '所在地区6', '2021-04-30 11:47:47', '2021-04-30 11:47:47', '备注6', 6, 'http://localhost:8080/springboot073x3/upload/jingdianxinxi_tupian6.jpg', 6, 6, '2021-04-30 11:47:47', 6),
	(1619755601697, '2021-04-30 04:06:41', '景点', 'B', '好景点', '省区2', '市区2', '地区2', '2021-04-30 12:06:03', '2021-04-30 12:06:08', '每天正常开放', 50, 'http://localhost:8080/springboot073x3/upload/1619755590846.jpg', 0, 0, '2021-04-30 12:13:44', 3);

DROP TABLE IF EXISTS `jiudiandingdan`;
CREATE TABLE IF NOT EXISTS `jiudiandingdan` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `youkezhanghao` varchar(200) DEFAULT NULL COMMENT '游客账号',
  `youkexingming` varchar(200) DEFAULT NULL COMMENT '游客姓名',
  `lianxifangshi` varchar(200) DEFAULT NULL COMMENT '联系方式',
  `shenfenzheng` varchar(200) DEFAULT NULL COMMENT '身份证',
  `jiudianmingcheng` varchar(200) DEFAULT NULL COMMENT '酒店名称',
  `fangjianshu` int DEFAULT NULL COMMENT '房间数',
  `suozaishengqu` varchar(200) DEFAULT NULL COMMENT '所在省区',
  `suozaichengshi` varchar(200) DEFAULT NULL COMMENT '所在城市',
  `suozaidiqu` varchar(200) DEFAULT NULL COMMENT '所在地区',
  `jiudianjiage` int DEFAULT NULL COMMENT '酒店价格',
  `ruzhushijian` datetime DEFAULT NULL COMMENT '入住时间',
  `ruzhutianshu` int DEFAULT NULL COMMENT '入住天数',
  `xiadanshijian` datetime DEFAULT NULL COMMENT '下单时间',
  `zongjine` varchar(200) DEFAULT NULL COMMENT '总金额',
  `tupian` varchar(200) DEFAULT NULL COMMENT '图片',
  `sfsh` varchar(200) DEFAULT '否' COMMENT '是否审核',
  `shhf` longtext COMMENT '审核回复',
  `ispay` varchar(200) DEFAULT '未支付' COMMENT '是否支付',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1619755945819 DEFAULT CHARSET=utf8mb3 COMMENT='酒店订单';

DELETE FROM `jiudiandingdan`;
INSERT INTO `jiudiandingdan` (`id`, `addtime`, `youkezhanghao`, `youkexingming`, `lianxifangshi`, `shenfenzheng`, `jiudianmingcheng`, `fangjianshu`, `suozaishengqu`, `suozaichengshi`, `suozaidiqu`, `jiudianjiage`, `ruzhushijian`, `ruzhutianshu`, `xiadanshijian`, `zongjine`, `tupian`, `sfsh`, `shhf`, `ispay`) VALUES
	(111, '2021-04-30 03:47:47', '游客账号1', '游客姓名1', '联系方式1', '身份证1', '酒店名称1', 1, '所在省区1', '所在城市1', '所在地区1', 1, '2021-04-30 11:47:47', 1, '2021-04-30 11:47:47', '总金额1', 'http://localhost:8080/springboot073x3/upload/jiudiandingdan_tupian1.jpg', '是', '', '未支付'),
	(112, '2021-04-30 03:47:47', '游客账号2', '游客姓名2', '联系方式2', '身份证2', '酒店名称2', 2, '所在省区2', '所在城市2', '所在地区2', 2, '2021-04-30 11:47:47', 2, '2021-04-30 11:47:47', '总金额2', 'http://localhost:8080/springboot073x3/upload/jiudiandingdan_tupian2.jpg', '是', '', '未支付'),
	(113, '2021-04-30 03:47:47', '游客账号3', '游客姓名3', '联系方式3', '身份证3', '酒店名称3', 3, '所在省区3', '所在城市3', '所在地区3', 3, '2021-04-30 11:47:47', 3, '2021-04-30 11:47:47', '总金额3', 'http://localhost:8080/springboot073x3/upload/jiudiandingdan_tupian3.jpg', '是', '', '未支付'),
	(114, '2021-04-30 03:47:47', '游客账号4', '游客姓名4', '联系方式4', '身份证4', '酒店名称4', 4, '所在省区4', '所在城市4', '所在地区4', 4, '2021-04-30 11:47:47', 4, '2021-04-30 11:47:47', '总金额4', 'http://localhost:8080/springboot073x3/upload/jiudiandingdan_tupian4.jpg', '是', '', '未支付'),
	(115, '2021-04-30 03:47:47', '游客账号5', '游客姓名5', '联系方式5', '身份证5', '酒店名称5', 5, '所在省区5', '所在城市5', '所在地区5', 5, '2021-04-30 11:47:47', 5, '2021-04-30 11:47:47', '总金额5', 'http://localhost:8080/springboot073x3/upload/jiudiandingdan_tupian5.jpg', '是', '', '未支付'),
	(116, '2021-04-30 03:47:47', '游客账号6', '游客姓名6', '联系方式6', '身份证6', '酒店名称6', 6, '所在省区6', '所在城市6', '所在地区6', 6, '2021-04-30 11:47:47', 6, '2021-04-30 11:47:47', '总金额6', 'http://localhost:8080/springboot073x3/upload/jiudiandingdan_tupian6.jpg', '是', '', '未支付'),
	(1619755945818, '2021-04-30 04:12:25', '123', '小v', '13923532031', '123456789123456789', '酒店名称5', 1, '所在省区5', '所在城市5', '所在地区5', 5, '2021-04-30 00:00:00', 1, '2021-04-30 00:00:00', '5', 'http://localhost:8080/springboot073x3/upload/jiudianxinxi_tupian5.jpg', '否', NULL, '已支付');

DROP TABLE IF EXISTS `jiudianquxiaodingdan`;
CREATE TABLE IF NOT EXISTS `jiudianquxiaodingdan` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `youkezhanghao` varchar(200) DEFAULT NULL COMMENT '游客账号',
  `youkexingming` varchar(200) DEFAULT NULL COMMENT '游客姓名',
  `lianxifangshi` varchar(200) DEFAULT NULL COMMENT '联系方式',
  `shenfenzheng` varchar(200) DEFAULT NULL COMMENT '身份证',
  `jiudianmingcheng` varchar(200) DEFAULT NULL COMMENT '酒店名称',
  `fangjianshu` int DEFAULT NULL COMMENT '房间数',
  `suozaishengqu` varchar(200) DEFAULT NULL COMMENT '所在省区',
  `suozaichengshi` varchar(200) DEFAULT NULL COMMENT '所在城市',
  `suozaidiqu` varchar(200) DEFAULT NULL COMMENT '所在地区',
  `ruzhushijian` varchar(200) DEFAULT NULL COMMENT '入住时间',
  `jiudianjiage` int DEFAULT NULL COMMENT '酒店价格',
  `ruzhutianshu` int DEFAULT NULL COMMENT '入住天数',
  `xiadanshijian` varchar(200) DEFAULT NULL COMMENT '下单时间',
  `zongjine` varchar(200) DEFAULT NULL COMMENT '总金额',
  `quxiaoshijian` datetime DEFAULT NULL COMMENT '取消时间',
  `quxiaoyuanyin` longtext COMMENT '取消原因',
  `tupian` varchar(200) DEFAULT NULL COMMENT '图片',
  `sfsh` varchar(200) DEFAULT '否' COMMENT '是否审核',
  `shhf` longtext COMMENT '审核回复',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1619756178352 DEFAULT CHARSET=utf8mb3 COMMENT='酒店取消订单';

DELETE FROM `jiudianquxiaodingdan`;
INSERT INTO `jiudianquxiaodingdan` (`id`, `addtime`, `youkezhanghao`, `youkexingming`, `lianxifangshi`, `shenfenzheng`, `jiudianmingcheng`, `fangjianshu`, `suozaishengqu`, `suozaichengshi`, `suozaidiqu`, `ruzhushijian`, `jiudianjiage`, `ruzhutianshu`, `xiadanshijian`, `zongjine`, `quxiaoshijian`, `quxiaoyuanyin`, `tupian`, `sfsh`, `shhf`) VALUES
	(121, '2021-04-30 03:47:47', '游客账号1', '游客姓名1', '联系方式1', '身份证1', '酒店名称1', 1, '所在省区1', '所在城市1', '所在地区1', '入住时间1', 1, 1, '下单时间1', '总金额1', '2021-04-30 11:47:47', '取消原因1', 'http://localhost:8080/springboot073x3/upload/jiudianquxiaodingdan_tupian1.jpg', '是', ''),
	(122, '2021-04-30 03:47:47', '游客账号2', '游客姓名2', '联系方式2', '身份证2', '酒店名称2', 2, '所在省区2', '所在城市2', '所在地区2', '入住时间2', 2, 2, '下单时间2', '总金额2', '2021-04-30 11:47:47', '取消原因2', 'http://localhost:8080/springboot073x3/upload/jiudianquxiaodingdan_tupian2.jpg', '是', ''),
	(123, '2021-04-30 03:47:47', '游客账号3', '游客姓名3', '联系方式3', '身份证3', '酒店名称3', 3, '所在省区3', '所在城市3', '所在地区3', '入住时间3', 3, 3, '下单时间3', '总金额3', '2021-04-30 11:47:47', '取消原因3', 'http://localhost:8080/springboot073x3/upload/jiudianquxiaodingdan_tupian3.jpg', '是', ''),
	(124, '2021-04-30 03:47:47', '游客账号4', '游客姓名4', '联系方式4', '身份证4', '酒店名称4', 4, '所在省区4', '所在城市4', '所在地区4', '入住时间4', 4, 4, '下单时间4', '总金额4', '2021-04-30 11:47:47', '取消原因4', 'http://localhost:8080/springboot073x3/upload/jiudianquxiaodingdan_tupian4.jpg', '是', ''),
	(125, '2021-04-30 03:47:47', '游客账号5', '游客姓名5', '联系方式5', '身份证5', '酒店名称5', 5, '所在省区5', '所在城市5', '所在地区5', '入住时间5', 5, 5, '下单时间5', '总金额5', '2021-04-30 11:47:47', '取消原因5', 'http://localhost:8080/springboot073x3/upload/jiudianquxiaodingdan_tupian5.jpg', '是', ''),
	(126, '2021-04-30 03:47:47', '游客账号6', '游客姓名6', '联系方式6', '身份证6', '酒店名称6', 6, '所在省区6', '所在城市6', '所在地区6', '入住时间6', 6, 6, '下单时间6', '总金额6', '2021-04-30 11:47:47', '取消原因6', 'http://localhost:8080/springboot073x3/upload/jiudianquxiaodingdan_tupian6.jpg', '是', ''),
	(1619756178351, '2021-04-30 04:16:17', '123', '小v', '13923532031', '123456789123456789', '酒店名称5', 1, '所在省区5', '所在城市5', '所在地区5', '2021-04-30 00:00:00', 5, 1, '2021-04-30 00:00:00', '5', '2021-04-30 12:16:17', NULL, 'http://localhost:8080/springboot073x3/upload/jiudianxinxi_tupian5.jpg', '是', '可以');

DROP TABLE IF EXISTS `jiudianxinxi`;
CREATE TABLE IF NOT EXISTS `jiudianxinxi` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `jiudianmingcheng` varchar(200) DEFAULT NULL COMMENT '酒店名称',
  `jiudianjieshao` longtext COMMENT '酒店介绍',
  `fangjianshu` int DEFAULT NULL COMMENT '房间数',
  `suozaishengqu` varchar(200) DEFAULT NULL COMMENT '所在省区',
  `suozaichengshi` varchar(200) DEFAULT NULL COMMENT '所在城市',
  `suozaidiqu` varchar(200) DEFAULT NULL COMMENT '所在地区',
  `jiudianjiage` int DEFAULT NULL COMMENT '酒店价格',
  `tupian` varchar(200) DEFAULT NULL COMMENT '图片',
  `thumbsupnum` int DEFAULT '0' COMMENT '赞',
  `crazilynum` int DEFAULT '0' COMMENT '踩',
  `clicktime` datetime DEFAULT NULL COMMENT '最近点击时间',
  `clicknum` int DEFAULT '0' COMMENT '点击次数',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1619755664353 DEFAULT CHARSET=utf8mb3 COMMENT='酒店信息';

DELETE FROM `jiudianxinxi`;
INSERT INTO `jiudianxinxi` (`id`, `addtime`, `jiudianmingcheng`, `jiudianjieshao`, `fangjianshu`, `suozaishengqu`, `suozaichengshi`, `suozaidiqu`, `jiudianjiage`, `tupian`, `thumbsupnum`, `crazilynum`, `clicktime`, `clicknum`) VALUES
	(71, '2021-04-30 03:47:47', '酒店名称1', '酒店介绍1', 1, '所在省区1', '所在城市1', '所在地区1', 1, 'http://localhost:8080/springboot073x3/upload/jiudianxinxi_tupian1.jpg', 1, 1, '2021-04-30 12:07:04', 3),
	(72, '2021-04-30 03:47:47', '酒店名称2', '酒店介绍2', 2, '所在省区2', '所在城市2', '所在地区2', 2, 'http://localhost:8080/springboot073x3/upload/jiudianxinxi_tupian2.jpg', 2, 2, '2024-02-15 10:37:53', 3),
	(73, '2021-04-30 03:47:47', '酒店名称3', '酒店介绍3', 3, '所在省区3', '所在城市3', '所在地区3', 3, 'http://localhost:8080/springboot073x3/upload/jiudianxinxi_tupian3.jpg', 3, 3, '2024-02-15 10:36:12', 4),
	(74, '2021-04-30 03:47:47', '酒店名称4', '酒店介绍4', 4, '所在省区4', '所在城市4', '所在地区4', 4, 'http://localhost:8080/springboot073x3/upload/jiudianxinxi_tupian4.jpg', 4, 4, '2021-04-30 11:47:47', 4),
	(75, '2021-04-30 03:47:47', '酒店名称5', '酒店介绍5', 4, '所在省区5', '所在城市5', '所在地区5', 5, 'http://localhost:8080/springboot073x3/upload/jiudianxinxi_tupian5.jpg', 5, 5, '2021-04-30 12:12:29', 7),
	(76, '2021-04-30 03:47:47', '酒店名称6', '酒店介绍6', 6, '所在省区6', '所在城市6', '所在地区6', 6, 'http://localhost:8080/springboot073x3/upload/jiudianxinxi_tupian6.jpg', 6, 6, '2021-04-30 11:47:47', 6),
	(1619755664352, '2021-04-30 04:07:43', '好酒店', NULL, 50, '省区2', '市区2', '地区2', 100, 'http://localhost:8080/springboot073x3/upload/1619755660795.jpg', 0, 0, NULL, 0);

DROP TABLE IF EXISTS `lvyouxianlu`;
CREATE TABLE IF NOT EXISTS `lvyouxianlu` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `youkezhanghao` varchar(200) DEFAULT NULL COMMENT '游客账号',
  `youkexingming` varchar(200) DEFAULT NULL COMMENT '游客姓名',
  `xianluguihua` varchar(200) DEFAULT NULL COMMENT '线路规划',
  `xianlutupian` varchar(200) DEFAULT NULL COMMENT '线路图片',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1619756103306 DEFAULT CHARSET=utf8mb3 COMMENT='旅游线路';

DELETE FROM `lvyouxianlu`;
INSERT INTO `lvyouxianlu` (`id`, `addtime`, `youkezhanghao`, `youkexingming`, `xianluguihua`, `xianlutupian`) VALUES
	(61, '2021-04-30 03:47:47', '游客账号1', '游客姓名1', '线路规划1', 'http://localhost:8080/springboot073x3/upload/lvyouxianlu_xianlutupian1.jpg'),
	(62, '2021-04-30 03:47:47', '游客账号2', '游客姓名2', '线路规划2', 'http://localhost:8080/springboot073x3/upload/lvyouxianlu_xianlutupian2.jpg'),
	(63, '2021-04-30 03:47:47', '游客账号3', '游客姓名3', '线路规划3', 'http://localhost:8080/springboot073x3/upload/lvyouxianlu_xianlutupian3.jpg'),
	(64, '2021-04-30 03:47:47', '游客账号4', '游客姓名4', '线路规划4', 'http://localhost:8080/springboot073x3/upload/lvyouxianlu_xianlutupian4.jpg'),
	(65, '2021-04-30 03:47:47', '游客账号5', '游客姓名5', '线路规划5', 'http://localhost:8080/springboot073x3/upload/lvyouxianlu_xianlutupian5.jpg'),
	(66, '2021-04-30 03:47:47', '游客账号6', '游客姓名6', '线路规划6', 'http://localhost:8080/springboot073x3/upload/lvyouxianlu_xianlutupian6.jpg'),
	(1619756103305, '2021-04-30 04:15:02', '123', '小v', '线路规划', 'http://localhost:8080/springboot073x3/upload/1619756101405.jpg');

DROP TABLE IF EXISTS `messages`;
CREATE TABLE IF NOT EXISTS `messages` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `userid` bigint NOT NULL COMMENT '留言人id',
  `username` varchar(200) DEFAULT NULL COMMENT '用户名',
  `content` longtext NOT NULL COMMENT '留言内容',
  `reply` longtext COMMENT '回复内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1707964692130 DEFAULT CHARSET=utf8mb3 COMMENT='留言板';

DELETE FROM `messages`;
INSERT INTO `messages` (`id`, `addtime`, `userid`, `username`, `content`, `reply`) VALUES
	(171, '2021-04-30 03:47:47', 1, '用户名1', '留言内容1', '回复内容1'),
	(172, '2021-04-30 03:47:47', 2, '用户名2', '留言内容2', '回复内容2'),
	(173, '2021-04-30 03:47:47', 3, '用户名3', '留言内容3', '回复内容3'),
	(174, '2021-04-30 03:47:47', 4, '用户名4', '留言内容4', '回复内容4'),
	(175, '2021-04-30 03:47:47', 5, '用户名5', '留言内容5', '回复内容5'),
	(176, '2021-04-30 03:47:47', 6, '用户名6', '留言内容6', '回复内容6'),
	(1619755979886, '2021-04-30 04:12:59', 1619755888203, '123', 'hello', NULL),
	(1707964692129, '2024-02-15 02:38:11', 11, '游客1', '666', NULL);

DROP TABLE IF EXISTS `news`;
CREATE TABLE IF NOT EXISTS `news` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `title` varchar(200) NOT NULL COMMENT '标题',
  `introduction` longtext COMMENT '简介',
  `picture` varchar(200) NOT NULL COMMENT '图片',
  `content` longtext NOT NULL COMMENT '内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1619755792577 DEFAULT CHARSET=utf8mb3 COMMENT='旅游新闻公告';

DELETE FROM `news`;
INSERT INTO `news` (`id`, `addtime`, `title`, `introduction`, `picture`, `content`) VALUES
	(161, '2021-04-30 03:47:47', '标题1', '简介1', 'http://localhost:8080/springboot073x3/upload/news_picture1.jpg', '内容1'),
	(162, '2021-04-30 03:47:47', '标题2', '简介2', 'http://localhost:8080/springboot073x3/upload/news_picture2.jpg', '内容2'),
	(163, '2021-04-30 03:47:47', '标题3', '简介3', 'http://localhost:8080/springboot073x3/upload/news_picture3.jpg', '内容3'),
	(164, '2021-04-30 03:47:47', '标题4', '简介4', 'http://localhost:8080/springboot073x3/upload/news_picture4.jpg', '内容4'),
	(165, '2021-04-30 03:47:47', '标题5', '简介5', 'http://localhost:8080/springboot073x3/upload/news_picture5.jpg', '内容5'),
	(166, '2021-04-30 03:47:47', '标题6', '简介6', 'http://localhost:8080/springboot073x3/upload/news_picture6.jpg', '内容6'),
	(1619755792576, '2021-04-30 04:09:52', '旅游', '旅游', 'http://localhost:8080/springboot073x3/upload/1619755785279.jpg', '<p>旅游</p>');

DROP TABLE IF EXISTS `shengqu`;
CREATE TABLE IF NOT EXISTS `shengqu` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `shengqu` varchar(200) DEFAULT NULL COMMENT '省区',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8mb3 COMMENT='省区';

DELETE FROM `shengqu`;
INSERT INTO `shengqu` (`id`, `addtime`, `shengqu`) VALUES
	(31, '2021-04-30 03:47:47', '省区1'),
	(32, '2021-04-30 03:47:47', '省区2'),
	(33, '2021-04-30 03:47:47', '省区3'),
	(34, '2021-04-30 03:47:47', '省区4'),
	(35, '2021-04-30 03:47:47', '省区5'),
	(36, '2021-04-30 03:47:47', '省区6');

DROP TABLE IF EXISTS `shiqu`;
CREATE TABLE IF NOT EXISTS `shiqu` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `shiqu` varchar(200) DEFAULT NULL COMMENT '市区',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=47 DEFAULT CHARSET=utf8mb3 COMMENT='市区';

DELETE FROM `shiqu`;
INSERT INTO `shiqu` (`id`, `addtime`, `shiqu`) VALUES
	(41, '2021-04-30 03:47:47', '市区1'),
	(42, '2021-04-30 03:47:47', '市区2'),
	(43, '2021-04-30 03:47:47', '市区3'),
	(44, '2021-04-30 03:47:47', '市区4'),
	(45, '2021-04-30 03:47:47', '市区5'),
	(46, '2021-04-30 03:47:47', '市区6');

DROP TABLE IF EXISTS `storeup`;
CREATE TABLE IF NOT EXISTS `storeup` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `userid` bigint NOT NULL COMMENT '用户id',
  `refid` bigint DEFAULT NULL COMMENT '收藏id',
  `tablename` varchar(200) DEFAULT NULL COMMENT '表名',
  `name` varchar(200) NOT NULL COMMENT '收藏名称',
  `picture` varchar(200) NOT NULL COMMENT '收藏图片',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1707964682169 DEFAULT CHARSET=utf8mb3 COMMENT='收藏表';

DELETE FROM `storeup`;
INSERT INTO `storeup` (`id`, `addtime`, `userid`, `refid`, `tablename`, `name`, `picture`) VALUES
	(1619756025796, '2021-04-30 04:13:45', 1619755888203, 1619755601697, 'jingdianxinxi', '景点', 'http://localhost:8080/springboot073x3/upload/1619755590846.jpg'),
	(1707964392904, '2024-02-15 02:33:11', 11, 21, 'jingdianxinxi', '景点名称1', 'http://localhost:8080/springboot073x3/upload/jingdianxinxi_tupian1.jpg'),
	(1707964662100, '2024-02-15 02:37:41', 11, 23, 'jingdianxinxi', '景点名称3', 'http://localhost:8080/springboot073x3/upload/jingdianxinxi_tupian3.jpg'),
	(1707964675776, '2024-02-15 02:37:55', 11, 72, 'jiudianxinxi', '酒店名称2', 'http://localhost:8080/springboot073x3/upload/jiudianxinxi_tupian2.jpg'),
	(1707964682168, '2024-02-15 02:38:01', 11, 82, 'techan', '特产名称2', 'http://localhost:8080/springboot073x3/upload/techan_tupian2.jpg');

DROP TABLE IF EXISTS `techan`;
CREATE TABLE IF NOT EXISTS `techan` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `techanmingcheng` varchar(200) DEFAULT NULL COMMENT '特产名称',
  `techanjieshao` longtext COMMENT '特产介绍',
  `jiage` int DEFAULT NULL COMMENT '价格',
  `shumu` int DEFAULT NULL COMMENT '数目',
  `suozaishengqu` varchar(200) DEFAULT NULL COMMENT '所在省区',
  `suozaichengshi` varchar(200) DEFAULT NULL COMMENT '所在城市',
  `suozaidiqu` varchar(200) DEFAULT NULL COMMENT '所在地区',
  `tupian` varchar(200) DEFAULT NULL COMMENT '图片',
  `thumbsupnum` int DEFAULT '0' COMMENT '赞',
  `crazilynum` int DEFAULT '0' COMMENT '踩',
  `clicktime` datetime DEFAULT NULL COMMENT '最近点击时间',
  `clicknum` int DEFAULT '0' COMMENT '点击次数',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1619755722750 DEFAULT CHARSET=utf8mb3 COMMENT='特产';

DELETE FROM `techan`;
INSERT INTO `techan` (`id`, `addtime`, `techanmingcheng`, `techanjieshao`, `jiage`, `shumu`, `suozaishengqu`, `suozaichengshi`, `suozaidiqu`, `tupian`, `thumbsupnum`, `crazilynum`, `clicktime`, `clicknum`) VALUES
	(81, '2021-04-30 03:47:47', '特产名称1', '特产介绍1', 1, 1, '所在省区1', '所在城市1', '所在地区1', 'http://localhost:8080/springboot073x3/upload/techan_tupian1.jpg', 1, 1, '2021-04-30 11:47:47', 1),
	(82, '2021-04-30 03:47:47', '特产名称2', '特产介绍2', 2, 2, '所在省区2', '所在城市2', '所在地区2', 'http://localhost:8080/springboot073x3/upload/techan_tupian2.jpg', 2, 2, '2024-02-15 10:38:00', 4),
	(83, '2021-04-30 03:47:47', '特产名称3', '特产介绍3', 3, 3, '所在省区3', '所在城市3', '所在地区3', 'http://localhost:8080/springboot073x3/upload/techan_tupian3.jpg', 3, 3, '2021-04-30 11:47:47', 3),
	(84, '2021-04-30 03:47:47', '特产名称4', '特产介绍4', 4, 4, '所在省区4', '所在城市4', '所在地区4', 'http://localhost:8080/springboot073x3/upload/techan_tupian4.jpg', 4, 4, '2021-04-30 11:47:47', 4),
	(85, '2021-04-30 03:47:47', '特产名称5', '特产介绍5', 5, 5, '所在省区5', '所在城市5', '所在地区5', 'http://localhost:8080/springboot073x3/upload/techan_tupian5.jpg', 5, 5, '2021-04-30 11:47:47', 5),
	(86, '2021-04-30 03:47:47', '特产名称6', '特产介绍6', 6, 6, '所在省区6', '所在城市6', '所在地区6', 'http://localhost:8080/springboot073x3/upload/techan_tupian6.jpg', 6, 6, '2021-04-30 11:47:47', 6),
	(1619755722749, '2021-04-30 04:08:41', '特产', NULL, 50, 48, '省区2', '市区2', '地区2', 'http://localhost:8080/springboot073x3/upload/1619755720451.jpg', 0, 0, '2021-04-30 12:12:45', 2);

DROP TABLE IF EXISTS `techandingdan`;
CREATE TABLE IF NOT EXISTS `techandingdan` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `youkezhanghao` varchar(200) DEFAULT NULL COMMENT '游客账号',
  `youkexingming` varchar(200) DEFAULT NULL COMMENT '游客姓名',
  `lianxifangshi` varchar(200) DEFAULT NULL COMMENT '联系方式',
  `techanmingcheng` varchar(200) DEFAULT NULL COMMENT '特产名称',
  `suozaishengqu` varchar(200) DEFAULT NULL COMMENT '所在省区',
  `suozaichengshi` varchar(200) DEFAULT NULL COMMENT '所在城市',
  `suozaidiqu` varchar(200) DEFAULT NULL COMMENT '所在地区',
  `shumu` int DEFAULT NULL COMMENT '数目',
  `jiage` int DEFAULT NULL COMMENT '价格',
  `zongjine` varchar(200) DEFAULT NULL COMMENT '总金额',
  `xiadanshijian` datetime DEFAULT NULL COMMENT '下单时间',
  `tupian` varchar(200) DEFAULT NULL COMMENT '图片',
  `sfsh` varchar(200) DEFAULT '否' COMMENT '是否审核',
  `shhf` longtext COMMENT '审核回复',
  `ispay` varchar(200) DEFAULT '未支付' COMMENT '是否支付',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1619755962562 DEFAULT CHARSET=utf8mb3 COMMENT='特产订单';

DELETE FROM `techandingdan`;
INSERT INTO `techandingdan` (`id`, `addtime`, `youkezhanghao`, `youkexingming`, `lianxifangshi`, `techanmingcheng`, `suozaishengqu`, `suozaichengshi`, `suozaidiqu`, `shumu`, `jiage`, `zongjine`, `xiadanshijian`, `tupian`, `sfsh`, `shhf`, `ispay`) VALUES
	(131, '2021-04-30 03:47:47', '游客账号1', '游客姓名1', '联系方式1', '特产名称1', '所在省区1', '所在城市1', '所在地区1', 1, 1, '总金额1', '2021-04-30 11:47:47', 'http://localhost:8080/springboot073x3/upload/techandingdan_tupian1.jpg', '是', '', '未支付'),
	(132, '2021-04-30 03:47:47', '游客账号2', '游客姓名2', '联系方式2', '特产名称2', '所在省区2', '所在城市2', '所在地区2', 2, 2, '总金额2', '2021-04-30 11:47:47', 'http://localhost:8080/springboot073x3/upload/techandingdan_tupian2.jpg', '是', '', '未支付'),
	(133, '2021-04-30 03:47:47', '游客账号3', '游客姓名3', '联系方式3', '特产名称3', '所在省区3', '所在城市3', '所在地区3', 3, 3, '总金额3', '2021-04-30 11:47:47', 'http://localhost:8080/springboot073x3/upload/techandingdan_tupian3.jpg', '是', '', '未支付'),
	(134, '2021-04-30 03:47:47', '游客账号4', '游客姓名4', '联系方式4', '特产名称4', '所在省区4', '所在城市4', '所在地区4', 4, 4, '总金额4', '2021-04-30 11:47:47', 'http://localhost:8080/springboot073x3/upload/techandingdan_tupian4.jpg', '是', '', '未支付'),
	(135, '2021-04-30 03:47:47', '游客账号5', '游客姓名5', '联系方式5', '特产名称5', '所在省区5', '所在城市5', '所在地区5', 5, 5, '总金额5', '2021-04-30 11:47:47', 'http://localhost:8080/springboot073x3/upload/techandingdan_tupian5.jpg', '是', '', '未支付'),
	(136, '2021-04-30 03:47:47', '游客账号6', '游客姓名6', '联系方式6', '特产名称6', '所在省区6', '所在城市6', '所在地区6', 6, 6, '总金额6', '2021-04-30 11:47:47', 'http://localhost:8080/springboot073x3/upload/techandingdan_tupian6.jpg', '是', '', '未支付'),
	(1619755962561, '2021-04-30 04:12:42', '123', '小v', '13923532031', '特产', '省区2', '市区2', '地区2', 2, 50, '100', '2021-04-30 00:00:00', 'http://localhost:8080/springboot073x3/upload/1619755720451.jpg', '是', NULL, '已支付');

DROP TABLE IF EXISTS `techanquxiaodingdan`;
CREATE TABLE IF NOT EXISTS `techanquxiaodingdan` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `youkezhanghao` varchar(200) DEFAULT NULL COMMENT '游客账号',
  `youkexingming` varchar(200) DEFAULT NULL COMMENT '游客姓名',
  `lianxifangshi` varchar(200) DEFAULT NULL COMMENT '联系方式',
  `techanmingcheng` varchar(200) DEFAULT NULL COMMENT '特产名称',
  `suozaishengqu` varchar(200) DEFAULT NULL COMMENT '所在省区',
  `suozaichengshi` varchar(200) DEFAULT NULL COMMENT '所在城市',
  `suozaidiqu` varchar(200) DEFAULT NULL COMMENT '所在地区',
  `shumu` int DEFAULT NULL COMMENT '数目',
  `jiage` int DEFAULT NULL COMMENT '价格',
  `zongjine` varchar(200) DEFAULT NULL COMMENT '总金额',
  `xiadanshijian` varchar(200) DEFAULT NULL COMMENT '下单时间',
  `quxiaoshijian` datetime DEFAULT NULL COMMENT '取消时间',
  `quxiaoyuanyin` longtext COMMENT '取消原因',
  `tupian` varchar(200) DEFAULT NULL COMMENT '图片',
  `sfsh` varchar(200) DEFAULT '否' COMMENT '是否审核',
  `shhf` longtext COMMENT '审核回复',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1619756163435 DEFAULT CHARSET=utf8mb3 COMMENT='特产取消订单';

DELETE FROM `techanquxiaodingdan`;
INSERT INTO `techanquxiaodingdan` (`id`, `addtime`, `youkezhanghao`, `youkexingming`, `lianxifangshi`, `techanmingcheng`, `suozaishengqu`, `suozaichengshi`, `suozaidiqu`, `shumu`, `jiage`, `zongjine`, `xiadanshijian`, `quxiaoshijian`, `quxiaoyuanyin`, `tupian`, `sfsh`, `shhf`) VALUES
	(141, '2021-04-30 03:47:47', '游客账号1', '游客姓名1', '联系方式1', '特产名称1', '所在省区1', '所在城市1', '所在地区1', 1, 1, '总金额1', '下单时间1', '2021-04-30 11:47:47', '取消原因1', 'http://localhost:8080/springboot073x3/upload/techanquxiaodingdan_tupian1.jpg', '是', ''),
	(142, '2021-04-30 03:47:47', '游客账号2', '游客姓名2', '联系方式2', '特产名称2', '所在省区2', '所在城市2', '所在地区2', 2, 2, '总金额2', '下单时间2', '2021-04-30 11:47:47', '取消原因2', 'http://localhost:8080/springboot073x3/upload/techanquxiaodingdan_tupian2.jpg', '是', ''),
	(143, '2021-04-30 03:47:47', '游客账号3', '游客姓名3', '联系方式3', '特产名称3', '所在省区3', '所在城市3', '所在地区3', 3, 3, '总金额3', '下单时间3', '2021-04-30 11:47:47', '取消原因3', 'http://localhost:8080/springboot073x3/upload/techanquxiaodingdan_tupian3.jpg', '是', ''),
	(144, '2021-04-30 03:47:47', '游客账号4', '游客姓名4', '联系方式4', '特产名称4', '所在省区4', '所在城市4', '所在地区4', 4, 4, '总金额4', '下单时间4', '2021-04-30 11:47:47', '取消原因4', 'http://localhost:8080/springboot073x3/upload/techanquxiaodingdan_tupian4.jpg', '是', ''),
	(145, '2021-04-30 03:47:47', '游客账号5', '游客姓名5', '联系方式5', '特产名称5', '所在省区5', '所在城市5', '所在地区5', 5, 5, '总金额5', '下单时间5', '2021-04-30 11:47:47', '取消原因5', 'http://localhost:8080/springboot073x3/upload/techanquxiaodingdan_tupian5.jpg', '是', ''),
	(146, '2021-04-30 03:47:47', '游客账号6', '游客姓名6', '联系方式6', '特产名称6', '所在省区6', '所在城市6', '所在地区6', 6, 6, '总金额6', '下单时间6', '2021-04-30 11:47:47', '取消原因6', 'http://localhost:8080/springboot073x3/upload/techanquxiaodingdan_tupian6.jpg', '是', ''),
	(1619756163434, '2021-04-30 04:16:02', '123', '小v', '13923532031', '特产', '省区2', '市区2', '地区2', 2, 50, '100', '2021-04-30 00:00:00', '2021-04-30 12:16:03', NULL, 'http://localhost:8080/springboot073x3/upload/1619755720451.jpg', '否', NULL);

DROP TABLE IF EXISTS `token`;
CREATE TABLE IF NOT EXISTS `token` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `userid` bigint NOT NULL COMMENT '用户id',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `tablename` varchar(100) DEFAULT NULL COMMENT '表名',
  `role` varchar(100) DEFAULT NULL COMMENT '角色',
  `token` varchar(200) NOT NULL COMMENT '密码',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  `expiratedtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '过期时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb3 COMMENT='token表';

DELETE FROM `token`;
INSERT INTO `token` (`id`, `userid`, `username`, `tablename`, `role`, `token`, `addtime`, `expiratedtime`) VALUES
	(1, 1, 'abo', 'users', '管理员', 'pa23jzrr4pqpf1nrrfx8zo9j40en5gj1', '2021-04-30 03:58:34', '2024-02-15 03:35:37'),
	(2, 1619755888203, '123', 'youke', '游客', 'azaudddkfggxahw3vw93hk1nfxj344l9', '2021-04-30 04:11:33', '2021-04-30 05:17:49'),
	(3, 11, '游客1', 'youke', '游客', 'mri12txrtm1juqbli2u594yjl9976jxb', '2024-02-15 02:33:04', '2024-02-15 03:37:28');

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `password` varchar(100) NOT NULL COMMENT '密码',
  `role` varchar(100) DEFAULT '管理员' COMMENT '角色',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb3 COMMENT='用户表';

DELETE FROM `users`;
INSERT INTO `users` (`id`, `username`, `password`, `role`, `addtime`) VALUES
	(1, 'admin', '123456', '管理员', '2021-04-30 03:47:47');

DROP TABLE IF EXISTS `youke`;
CREATE TABLE IF NOT EXISTS `youke` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `youkezhanghao` varchar(200) NOT NULL COMMENT '游客账号',
  `mima` varchar(200) NOT NULL COMMENT '密码',
  `youkexingming` varchar(200) DEFAULT NULL COMMENT '游客姓名',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `lianxifangshi` varchar(200) DEFAULT NULL COMMENT '联系方式',
  `shenfenzheng` varchar(200) DEFAULT NULL COMMENT '身份证',
  `youxiang` varchar(200) DEFAULT NULL COMMENT '邮箱',
  `touxiang` varchar(200) DEFAULT NULL COMMENT '头像',
  PRIMARY KEY (`id`),
  UNIQUE KEY `youkezhanghao` (`youkezhanghao`)
) ENGINE=InnoDB AUTO_INCREMENT=1619755888204 DEFAULT CHARSET=utf8mb3 COMMENT='游客';

DELETE FROM `youke`;
INSERT INTO `youke` (`id`, `addtime`, `youkezhanghao`, `mima`, `youkexingming`, `xingbie`, `lianxifangshi`, `shenfenzheng`, `youxiang`, `touxiang`) VALUES
	(11, '2021-04-30 03:47:47', '游客1', '123456', '游客姓名1', '女', '13823888881', '440300199101010001', '773890001@qq.com', 'http://localhost:8080/springboot073x3/upload/youke_touxiang1.jpg'),
	(12, '2021-04-30 03:47:47', '游客2', '123456', '游客姓名2', '男', '13823888882', '440300199202020002', '773890002@qq.com', 'http://localhost:8080/springboot073x3/upload/youke_touxiang2.jpg'),
	(13, '2021-04-30 03:47:47', '游客3', '123456', '游客姓名3', '男', '13823888883', '440300199303030003', '773890003@qq.com', 'http://localhost:8080/springboot073x3/upload/youke_touxiang3.jpg'),
	(14, '2021-04-30 03:47:47', '游客4', '123456', '游客姓名4', '男', '13823888884', '440300199404040004', '773890004@qq.com', 'http://localhost:8080/springboot073x3/upload/youke_touxiang4.jpg'),
	(15, '2021-04-30 03:47:47', '游客5', '123456', '游客姓名5', '男', '13823888885', '440300199505050005', '773890005@qq.com', 'http://localhost:8080/springboot073x3/upload/youke_touxiang5.jpg'),
	(16, '2021-04-30 03:47:47', '游客6', '123456', '游客姓名6', '女', '13823888886', '440300199606060006', '773890006@qq.com', 'http://localhost:8080/springboot073x3/upload/youke_touxiang6.jpg'),
	(1619755888203, '2021-04-30 04:11:28', '123', '1', '小v', '男', '13923532031', '123456789123456789', '1234561231@qq.com', 'http://localhost:8080/springboot073x3/upload/1619756013226.jpg');

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
