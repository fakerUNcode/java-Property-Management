/*
 Navicat Premium Data Transfer

 Source Server         : test
 Source Server Type    : MySQL
 Source Server Version : 80040 (8.0.40)
 Source Host           : localhost:3306
 Source Schema         : management_room

 Target Server Type    : MySQL
 Target Server Version : 80040 (8.0.40)
 File Encoding         : 65001

 Date: 19/11/2024 13:14:16
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for admin
-- ----------------------------
DROP TABLE IF EXISTS `admin`;
CREATE TABLE `admin` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `password` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `sex` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `age` double NOT NULL,
  `tel` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `phone` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `addr` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `memo` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=44 DEFAULT CHARSET=utf8mb3 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of admin
-- ----------------------------
BEGIN;
INSERT INTO `admin` (`id`, `name`, `password`, `sex`, `age`, `tel`, `phone`, `addr`, `memo`) VALUES (12, 'admin', '4QrcOUm6Wau+VuBX8g+IPg==', '男', 30, '12233', '123', '123', '123');
INSERT INTO `admin` (`id`, `name`, `password`, `sex`, `age`, `tel`, `phone`, `addr`, `memo`) VALUES (20, '赵越超', '4QrcOUm6Wau+VuBX8g+IPg==', '男', 20, '66', '555', 'dd', '22');
INSERT INTO `admin` (`id`, `name`, `password`, `sex`, `age`, `tel`, `phone`, `addr`, `memo`) VALUES (36, '张三', '4QrcOUm6Wau+VuBX8g+IPg==', '男', 20, '111', '222', '333', '444');
INSERT INTO `admin` (`id`, `name`, `password`, `sex`, `age`, `tel`, `phone`, `addr`, `memo`) VALUES (42, '李四', '4QrcOUm6Wau+VuBX8g+IPg==', '男', 30, '', '', 'dddd', '');
INSERT INTO `admin` (`id`, `name`, `password`, `sex`, `age`, `tel`, `phone`, `addr`, `memo`) VALUES (43, 'vvvvvvvvvv', '4QrcOUm6Wau+VuBX8g+IPg==', '男', 30, '', '', 'ffffffffff', '');
COMMIT;

-- ----------------------------
-- Table structure for charge
-- ----------------------------
DROP TABLE IF EXISTS `charge`;
CREATE TABLE `charge` (
  `id` int NOT NULL AUTO_INCREMENT,
  `metre` double NOT NULL,
  `name` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NOT NULL,
  `phone` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NOT NULL,
  `username` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NOT NULL,
  `status` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NOT NULL,
  `sdate` date NOT NULL,
  `rdate` date DEFAULT '1970-01-01',
  `tcost` double NOT NULL,
  `scost` double NOT NULL,
  `smemo` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of charge
-- ----------------------------
BEGIN;
INSERT INTO `charge` (`id`, `metre`, `name`, `phone`, `username`, `status`, `sdate`, `rdate`, `tcost`, `scost`, `smemo`) VALUES (1, 110, '赵越超02', '222222', '赵越超', '未支付', '2019-06-27', '2019-07-14', 2500, 3200, '021313');
INSERT INTO `charge` (`id`, `metre`, `name`, `phone`, `username`, `status`, `sdate`, `rdate`, `tcost`, `scost`, `smemo`) VALUES (2, 120, '赵越超01', '66666', '赵越超', '正在处理', '2019-06-26', '1970-01-01', 2500, 2000, '无');
INSERT INTO `charge` (`id`, `metre`, `name`, `phone`, `username`, `status`, `sdate`, `rdate`, `tcost`, `scost`, `smemo`) VALUES (3, 120, '赵越超03', '58888', '赵越超', '未支付', '2019-07-11', '1970-01-01', 8500, 8500, '220');
INSERT INTO `charge` (`id`, `metre`, `name`, `phone`, `username`, `status`, `sdate`, `rdate`, `tcost`, `scost`, `smemo`) VALUES (5, 6525, '赵越超04', '33333', '赵越超', '未支付', '2020-04-08', '1970-01-01', 62, 90, '9999');
INSERT INTO `charge` (`id`, `metre`, `name`, `phone`, `username`, `status`, `sdate`, `rdate`, `tcost`, `scost`, `smemo`) VALUES (7, 66, '55', '88', 'ggg', '未支付', '2020-04-15', '1970-01-01', 21, 33, '');
INSERT INTO `charge` (`id`, `metre`, `name`, `phone`, `username`, `status`, `sdate`, `rdate`, `tcost`, `scost`, `smemo`) VALUES (8, 3333, '赵越超07', '赵越超', '方法', '未支付', '2020-04-10', '1970-01-01', 66, 99, '');
INSERT INTO `charge` (`id`, `metre`, `name`, `phone`, `username`, `status`, `sdate`, `rdate`, `tcost`, `scost`, `smemo`) VALUES (12, 55, '赵越超06', '66', '赵越超', '未支付', '2020-04-09', '1970-01-01', 66, 66, '');
INSERT INTO `charge` (`id`, `metre`, `name`, `phone`, `username`, `status`, `sdate`, `rdate`, `tcost`, `scost`, `smemo`) VALUES (14, 66, '555', '66', '66', '未支付', '2020-04-16', '1970-01-01', 66, 99, '');
INSERT INTO `charge` (`id`, `metre`, `name`, `phone`, `username`, `status`, `sdate`, `rdate`, `tcost`, `scost`, `smemo`) VALUES (15, 66, '66', '66', '66', '未支付', '2020-04-10', '1970-01-01', 66, 66, '');
INSERT INTO `charge` (`id`, `metre`, `name`, `phone`, `username`, `status`, `sdate`, `rdate`, `tcost`, `scost`, `smemo`) VALUES (16, 20, '赵越超05', '20', '赵越超', '未支付', '2020-04-08', '1970-01-01', 55, 66, '');
INSERT INTO `charge` (`id`, `metre`, `name`, `phone`, `username`, `status`, `sdate`, `rdate`, `tcost`, `scost`, `smemo`) VALUES (17, 100, '赵越超', '10086', '赵越超', '未支付', '2020-04-01', '1970-01-01', 1234, 500, '无');
COMMIT;

-- ----------------------------
-- Table structure for custom_account
-- ----------------------------
DROP TABLE IF EXISTS `custom_account`;
CREATE TABLE `custom_account` (
  `accountid` int NOT NULL AUTO_INCREMENT,
  `username` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `password` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `ownerid` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `carid` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  PRIMARY KEY (`accountid`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb3 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of custom_account
-- ----------------------------
BEGIN;
INSERT INTO `custom_account` (`accountid`, `username`, `password`, `ownerid`, `carid`) VALUES (11, '赵越超', '4QrcOUm6Wau+VuBX8g+IPg==', '100000', '10086');
INSERT INTO `custom_account` (`accountid`, `username`, `password`, `ownerid`, `carid`) VALUES (12, '赵越超1', '4QrcOUm6Wau+VuBX8g+IPg==', '100001', '');
INSERT INTO `custom_account` (`accountid`, `username`, `password`, `ownerid`, `carid`) VALUES (13, '赵越超2', '4QrcOUm6Wau+VuBX8g+IPg==', '100002', '');
INSERT INTO `custom_account` (`accountid`, `username`, `password`, `ownerid`, `carid`) VALUES (14, '赵越超3', '4QrcOUm6Wau+VuBX8g+IPg==', '100003', '');
INSERT INTO `custom_account` (`accountid`, `username`, `password`, `ownerid`, `carid`) VALUES (15, '赵越超4', '4QrcOUm6Wau+VuBX8g+IPg==', '100004', '');
INSERT INTO `custom_account` (`accountid`, `username`, `password`, `ownerid`, `carid`) VALUES (16, 'faker', 'LKwjDzGjyrcgtD8tYMPyhQ==', '100005', '');
COMMIT;

-- ----------------------------
-- Table structure for house
-- ----------------------------
DROP TABLE IF EXISTS `house`;
CREATE TABLE `house` (
  `id` int NOT NULL AUTO_INCREMENT,
  `num` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `dep` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `type` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `area` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `sell` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `unit` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `floor` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `direction` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `memo` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `ownerid` varchar(32) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb3 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of house
-- ----------------------------
BEGIN;
INSERT INTO `house` (`id`, `num`, `dep`, `type`, `area`, `sell`, `unit`, `floor`, `direction`, `memo`, `ownerid`) VALUES (4, '601', '1号楼', '小高层', '和风区', '已售', '五单元', '3', '南', '无', '100000');
INSERT INTO `house` (`id`, `num`, `dep`, `type`, `area`, `sell`, `unit`, `floor`, `direction`, `memo`, `ownerid`) VALUES (5, '201', '2号楼', '多层', '和风区', '已售', '五单元', '4', '西', '无', '100000');
INSERT INTO `house` (`id`, `num`, `dep`, `type`, `area`, `sell`, `unit`, `floor`, `direction`, `memo`, `ownerid`) VALUES (6, '402', '3号楼', '小高层', '和风区', '已售', '八单元', '4', '南', '', '100002');
INSERT INTO `house` (`id`, `num`, `dep`, `type`, `area`, `sell`, `unit`, `floor`, `direction`, `memo`, `ownerid`) VALUES (7, '801', '1号楼', '小高层', '	和风区', '已售', '2单元', '4', '西', '', '100005');
COMMIT;

-- ----------------------------
-- Table structure for inspection
-- ----------------------------
DROP TABLE IF EXISTS `inspection`;
CREATE TABLE `inspection` (
  `id` int NOT NULL AUTO_INCREMENT,
  `person` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `type` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `itime` date NOT NULL,
  `conductor` varchar(32) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `party` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `result` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `memo` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb3 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of inspection
-- ----------------------------
BEGIN;
INSERT INTO `inspection` (`id`, `person`, `type`, `itime`, `conductor`, `party`, `result`, `memo`) VALUES (1, '赵越超', '一级', '2019-08-02', '赵越超', '赵越超', '五', '啦啦啦啦啦啦啦啦啦啦啦啦3');
INSERT INTO `inspection` (`id`, `person`, `type`, `itime`, `conductor`, `party`, `result`, `memo`) VALUES (2, '赵越超', '四级', '2020-04-16', '赵越超', '赵越超', '发现小偷一名', '');
INSERT INTO `inspection` (`id`, `person`, `type`, `itime`, `conductor`, `party`, `result`, `memo`) VALUES (3, '赵越超', '四级', '2020-04-09', '赵越超', '赵越超', '无', '');
INSERT INTO `inspection` (`id`, `person`, `type`, `itime`, `conductor`, `party`, `result`, `memo`) VALUES (4, '赵越超', '四级', '2020-04-01', '赵越超', '赵越超', '发现小区大门没关好', '');
COMMIT;

-- ----------------------------
-- Table structure for maintain
-- ----------------------------
DROP TABLE IF EXISTS `maintain`;
CREATE TABLE `maintain` (
  `id` int NOT NULL AUTO_INCREMENT,
  `thing` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `status` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `homesnumber` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `sdate` date NOT NULL,
  `rdate` date DEFAULT '1970-01-01',
  `tcost` double NOT NULL,
  `scost` double DEFAULT NULL,
  `maintainer` varchar(32) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `smemo` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=utf8mb3 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of maintain
-- ----------------------------
BEGIN;
INSERT INTO `maintain` (`id`, `thing`, `status`, `homesnumber`, `sdate`, `rdate`, `tcost`, `scost`, `maintainer`, `smemo`) VALUES (1, '大门', '正在处理', '10086', '2019-07-10', '2019-07-12', 8500, 5820, '赵越超', '');
INSERT INTO `maintain` (`id`, `thing`, `status`, `homesnumber`, `sdate`, `rdate`, `tcost`, `scost`, `maintainer`, `smemo`) VALUES (2, '大门', '等待处理', '201', '2019-07-03', '2019-07-06', 6200, 66663, '赵越超', '');
INSERT INTO `maintain` (`id`, `thing`, `status`, `homesnumber`, `sdate`, `rdate`, `tcost`, `scost`, `maintainer`, `smemo`) VALUES (3, '大门', '正在处理', '201', '2019-07-03', '2019-07-13', 250, 360, '赵越超', '');
INSERT INTO `maintain` (`id`, `thing`, `status`, `homesnumber`, `sdate`, `rdate`, `tcost`, `scost`, `maintainer`, `smemo`) VALUES (5, '把手', '等待处理', '201', '2019-07-11', '2020-04-13', 690, 0, '赵越超', '');
INSERT INTO `maintain` (`id`, `thing`, `status`, `homesnumber`, `sdate`, `rdate`, `tcost`, `scost`, `maintainer`, `smemo`) VALUES (6, '把手', '等待处理', '201', '2019-07-11', '1970-01-01', 63, 3, '赵越超', '');
INSERT INTO `maintain` (`id`, `thing`, `status`, `homesnumber`, `sdate`, `rdate`, `tcost`, `scost`, `maintainer`, `smemo`) VALUES (7, '把手', '等待处理', '401', '2019-07-11', '1970-01-01', 12, 5, '赵越超', '');
INSERT INTO `maintain` (`id`, `thing`, `status`, `homesnumber`, `sdate`, `rdate`, `tcost`, `scost`, `maintainer`, `smemo`) VALUES (8, '把手', '等待处理', '401', '2019-07-11', '1970-01-01', 26, 4, '赵越超', '');
INSERT INTO `maintain` (`id`, `thing`, `status`, `homesnumber`, `sdate`, `rdate`, `tcost`, `scost`, `maintainer`, `smemo`) VALUES (10, '把手', '等待处理', '401', '2019-07-11', '1970-01-01', 22, 6, '赵越超', '');
INSERT INTO `maintain` (`id`, `thing`, `status`, `homesnumber`, `sdate`, `rdate`, `tcost`, `scost`, `maintainer`, `smemo`) VALUES (13, '楼梯把手', '已完成', '203', '2019-08-06', '2019-08-09', 850, 500, '赵越超', '1号楼3单元2层楼梯把手坏了');
COMMIT;

-- ----------------------------
-- Table structure for notice
-- ----------------------------
DROP TABLE IF EXISTS `notice`;
CREATE TABLE `notice` (
  `id` int NOT NULL AUTO_INCREMENT,
  `content` varchar(300) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `ndate` date NOT NULL,
  `title` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `uper` varchar(32) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb3 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of notice
-- ----------------------------
BEGIN;
INSERT INTO `notice` (`id`, `content`, `ndate`, `title`, `uper`) VALUES (4, '2020年04月01日23：00—4月02日06：30进行停电\r\n停电范围：1号楼到10号楼进行停电。\r\n停电原因：设备维修；', '2020-04-01', '2020年4月01日停电通知', '赵越超');
INSERT INTO `notice` (`id`, `content`, `ndate`, `title`, `uper`) VALUES (5, '请没有缴纳物业费的居民进行物业费缴纳。', '2020-04-02', '2020年4月02日物业费', '赵越超');
INSERT INTO `notice` (`id`, `content`, `ndate`, `title`, `uper`) VALUES (6, '2020年04月24日23：00—4月25日06：30\r\n停水范围：1号楼到10号楼\r\n停水原因：设备维修；', '2020-04-03', '2020年4月0日停水通知', '赵越超');
COMMIT;

SET FOREIGN_KEY_CHECKS = 1;
