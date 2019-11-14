/*
Navicat MySQL Data Transfer

Source Server         : jiang
Source Server Version : 50527
Source Host           : localhost:3306
Source Database       : exp

Target Server Type    : MYSQL
Target Server Version : 50527
File Encoding         : 65001

Date: 2019-11-14 21:53:21
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `employee`
-- ----------------------------
DROP TABLE IF EXISTS `employee`;
CREATE TABLE `employee` (
  `EMPID` int(11) NOT NULL AUTO_INCREMENT,
  `EMP_NAME` char(10) DEFAULT NULL,
  `JOB` char(10) DEFAULT NULL,
  `SALARY` double DEFAULT NULL,
  `DEPT` int(11) DEFAULT NULL,
  PRIMARY KEY (`EMPID`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of employee
-- ----------------------------
INSERT INTO `employee` VALUES ('1', '王楠', 'clerk', '4300', '10');
INSERT INTO `employee` VALUES ('2', '张敬', 'clerk', '4300', '10');
INSERT INTO `employee` VALUES ('3', '李刚', 'manager', '5000', '20');

-- ----------------------------
-- Table structure for `user`
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(20) NOT NULL,
  `password` varchar(20) NOT NULL,
  `flag` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES ('1', '001', '111111', '0');
INSERT INTO `user` VALUES ('2', 'jack', '123456', '0');
