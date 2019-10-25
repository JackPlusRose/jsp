/*
Navicat MySQL Data Transfer

Source Server         : jiang
Source Server Version : 50527
Source Host           : localhost:3306
Source Database       : exp6

Target Server Type    : MYSQL
Target Server Version : 50527
File Encoding         : 65001

Date: 2019-10-25 18:18:06
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `employee`
-- ----------------------------
DROP TABLE IF EXISTS `employee`;
CREATE TABLE `employee` (
  `EMP_ID` int(2) NOT NULL AUTO_INCREMENT,
  `EMP_NAME` char(20) NOT NULL,
  `JOB` char(20) NOT NULL,
  `SALARY` double(10,2) NOT NULL,
  `DEPT` int(2) NOT NULL,
  PRIMARY KEY (`EMP_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of employee
-- ----------------------------
INSERT INTO `employee` VALUES ('11', '张敬', 'clerk', '4500.00', '10');
INSERT INTO `employee` VALUES ('13', '马明', 'manager', '5500.00', '20');

-- ----------------------------
-- Table structure for `employees`
-- ----------------------------
DROP TABLE IF EXISTS `employees`;
CREATE TABLE `employees` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(64) NOT NULL DEFAULT '',
  `age` int(3) unsigned NOT NULL DEFAULT '0',
  `education` varchar(32) DEFAULT '' COMMENT '学历',
  `address` varchar(254) DEFAULT NULL,
  `salary` float(8,2) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=17 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of employees
-- ----------------------------
INSERT INTO `employees` VALUES ('1', '李家诚', '23', '其它', '海口市人民大道1800号', '8900.00');
INSERT INTO `employees` VALUES ('2', '张辉', '28', '本科', '广州天河区珠村市场', '15800.98');
INSERT INTO `employees` VALUES ('3', '林贤弟', '29', '博士', '广州白云区龙塘村120号', '18990.99');
INSERT INTO `employees` VALUES ('4', '王小简', '23', '本科', '海口人民大道1688号', '899.98');
INSERT INTO `employees` VALUES ('5', '蔡世杰', '27', '专科', '上海市宝山区联杨路2211弄26号', '15800.00');
INSERT INTO `employees` VALUES ('16', '李路路', '0', '', '北京朝阳区', '13600.00');
INSERT INTO `employees` VALUES ('15', '李路路', '0', '', '北京朝阳区', '13600.00');
