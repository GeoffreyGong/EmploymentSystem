/*
MySQL Data Transfer
Source Host: localhost
Source Database: online
Target Host: localhost
Target Database: online
Date: 2010-9-5 ÏÂÎç 01:50:47
*/

SET FOREIGN_KEY_CHECKS=0;
-- ----------------------------
-- Table structure for admin
-- ----------------------------
DROP TABLE IF EXISTS `admin`;
CREATE TABLE `admin` (
  `Auser` char(10) NOT NULL DEFAULT '',
  `Apassword` char(10) DEFAULT NULL,
  PRIMARY KEY (`Auser`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for candidates
-- ----------------------------
DROP TABLE IF EXISTS `candidates`;
CREATE TABLE `candidates` (
  `Yuser` char(10) NOT NULL,
  `Ypassword` char(10) DEFAULT NULL,
  `Ysex` char(2) DEFAULT NULL,
  `Ytel` char(20) DEFAULT NULL,
  `Ymail` char(20) DEFAULT NULL,
  `Yintro` char(200) DEFAULT NULL,
  PRIMARY KEY (`Yuser`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for news
-- ----------------------------
DROP TABLE IF EXISTS `news`;
CREATE TABLE `news` (
  `Nid` int(11) NOT NULL AUTO_INCREMENT,
  `Auser` char(10) DEFAULT NULL,
  `Ntitle` char(20) DEFAULT NULL,
  `Ntime` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `Ncontent` text,
  PRIMARY KEY (`Nid`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for postnews
-- ----------------------------
DROP TABLE IF EXISTS `postnews`;
CREATE TABLE `postnews` (
  `Zuser` char(10) NOT NULL,
  `Ztimea` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `Ztitle` char(20) DEFAULT NULL,
  `Znum` int(2) DEFAULT NULL,
  `Zgrade` char(10) DEFAULT NULL,
  `Zcontent` char(200) DEFAULT NULL,
  `Ztimeb` datetime NOT NULL,
  `Yuser` char(10) DEFAULT NULL,
  PRIMARY KEY (`Zuser`,`Ztimea`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for recruiters
-- ----------------------------
DROP TABLE IF EXISTS `recruiters`;
CREATE TABLE `recruiters` (
  `Zuser` char(10) NOT NULL,
  `Zpassword` char(10) DEFAULT NULL,
  `Zmail` char(20) DEFAULT NULL,
  `Zintro` char(100) DEFAULT NULL,
  PRIMARY KEY (`Zuser`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records 
-- ----------------------------
INSERT INTO `admin` VALUES ('admin', 'admin');
INSERT INTO `candidates` VALUES ('test', 'test', 'ç·', '123456789999', '646749375@qq.com', 'ä½ å¥½ããããããä½ å¥½ããããããä½ å¥½ããããããä½ å¥½ããããããä½ å¥½ããããããä½ å¥½ãããããã');
INSERT INTO `news` VALUES ('1', 'admin', 'å¤§å®¶å¥½ï¼æå«Google~è®¸æ³¢èå¸å¥½ï¼', '2010-09-04 01:10:52', 'OK~~~~~~~~~~~~~~~~~~~~~');
INSERT INTO `news` VALUES ('2', 'admin', 'å¤å·å¤å·~', '2010-09-14 02:18:27', 'A BIG ORANGEUUUUUUUA BIG ORANGEUUUUUUUA BIG ORANGEUUUUUUU');
INSERT INTO `news` VALUES ('3', 'admin', 'ä»å¤©æ£äºä¸åé±ï¼', '2010-09-04 02:34:47', 'ä»å¤©æ£äºä¸åé±ï¼ä»å¤©æ£äºä¸åé±ï¼ä»å¤©æ£äºä¸åé±ï¼ä»å¤©æ£äºä¸åé±ï¼');
INSERT INTO `postnews` VALUES ('test', '2010-09-08 00:08:14', 'å¤§æè', '55', 'è±è¯­åçº§', 'ä¸ä¸çç¥ï¼éåºè¿äºå¥¹çæ', '2010-09-05 23:14:07', null);
INSERT INTO `postnews` VALUES ('test', '2010-09-12 00:52:40', 'ä½ æ³å¹²ä»ä¹å¢ï¼', '66', 'åå£«', 'æé æé æé æé æé æé ', '2010-09-16 23:13:58', null);
INSERT INTO `postnews` VALUES ('test', '2010-09-20 00:41:30', 'å¤§æè', '2', 'å¤§å­¦æ¬ç§', 'ä¸ä¸çç¥ï¼éåºè¿äºå¥¹çææï¼çº¢çº¢çé²è¡ä»éå£æµäºåºæ¥ï¼æä¸ç¹è¡æ»´è½å¨é£è¿çªå­çéªè±ä¸ã\r\nå¥¹è¥æææå°åè§çç¹ç¼å¨ç½éªä¸çé²çº¢è¡æ»´ï¼åçäºçä¹æ¨çªå°ï¼è¯´éï¼âä½æ¿æå°å¥³å¿çç®è¤\r\né¿å¾ç½ééçº¢ï¼çèµ·æ¥å°±åè¿æ´ç½çéªåé²çº¢çè¡ä¸æ ·ï¼é£ä¹è³ä¸½ï¼é£ä¹éªå«©ï¼å¤´åé¿å¾å°±åè¿çª\r\nå­çä¹æ¨ä¸è¬åé»åäº®ï¼', '2010-09-21 23:13:54', null);
INSERT INTO `postnews` VALUES ('test', '2010-09-30 00:52:00', 'å¤§æè', '4', 'å°å­¦ç', 'ä¸ä¸çç¥ï¼éåºè¿äºå¥¹çæ', '2010-09-12 23:14:02', null);
INSERT INTO `recruiters` VALUES ('test', 'test', '110', 'IBM å¬å¸æ¬¢è¿ä½ ï¼ï¼ï¼ï¼');
