/*
Navicat MySQL Data Transfer

Source Server         : user
Source Server Version : 50712
Source Host           : localhost:3306
Source Database       : oels

Target Server Type    : MYSQL
Target Server Version : 50712
File Encoding         : 65001

Date: 2017-05-20 12:54:17
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for admin
-- ----------------------------
DROP TABLE IF EXISTS `admin`;
CREATE TABLE `admin` (
  `adminid` int(11) NOT NULL AUTO_INCREMENT,
  `adminname` varchar(15) NOT NULL,
  `adminauthod` varchar(10) DEFAULT NULL,
  `adminpassword` varchar(15) NOT NULL,
  PRIMARY KEY (`adminid`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of admin
-- ----------------------------
INSERT INTO `admin` VALUES ('1', 'admin', null, 'admin');

-- ----------------------------
-- Table structure for answer
-- ----------------------------
DROP TABLE IF EXISTS `answer`;
CREATE TABLE `answer` (
  `answer_id` int(11) NOT NULL AUTO_INCREMENT,
  `cet_type` varchar(25) NOT NULL,
  `a_username` varchar(15) NOT NULL,
  `a_part1` varchar(1000) DEFAULT NULL,
  `answer1` char(1) DEFAULT NULL,
  `answer2` char(1) DEFAULT NULL,
  `answer3` char(1) DEFAULT NULL,
  `answer4` char(1) DEFAULT NULL,
  `answer5` char(1) DEFAULT NULL,
  `answer6` char(1) DEFAULT NULL,
  `answer7` char(1) DEFAULT NULL,
  `answer8` char(1) DEFAULT NULL,
  `answer9` char(1) DEFAULT NULL,
  `answer10` char(1) DEFAULT NULL,
  `answer11` char(1) DEFAULT NULL,
  `answer12` char(1) DEFAULT NULL,
  `answer13` char(1) DEFAULT NULL,
  `answer14` char(1) DEFAULT NULL,
  `answer15` char(1) DEFAULT NULL,
  `answer16` char(1) DEFAULT NULL,
  `answer17` char(1) DEFAULT NULL,
  `answer18` char(1) DEFAULT NULL,
  `answer19` char(1) DEFAULT NULL,
  `answer20` char(1) DEFAULT NULL,
  `answer21` char(1) DEFAULT NULL,
  `answer22` char(1) DEFAULT NULL,
  `answer23` char(1) DEFAULT NULL,
  `answer24` char(1) DEFAULT NULL,
  `answer25` char(1) DEFAULT NULL,
  `answer26` char(1) DEFAULT NULL,
  `answer27` char(1) DEFAULT NULL,
  `answer28` char(1) DEFAULT NULL,
  `answer29` char(1) DEFAULT NULL,
  `answer30` char(1) DEFAULT NULL,
  `answer31` char(1) DEFAULT NULL,
  `answer32` char(1) DEFAULT NULL,
  `answer33` char(1) DEFAULT NULL,
  `answer34` char(1) DEFAULT NULL,
  `answer35` char(1) DEFAULT NULL,
  `answer36` char(1) DEFAULT NULL,
  `answer37` char(1) DEFAULT NULL,
  `answer38` char(1) DEFAULT NULL,
  `answer39` char(1) DEFAULT NULL,
  `answer40` char(1) DEFAULT NULL,
  `answer41` char(1) DEFAULT NULL,
  `answer42` char(1) DEFAULT NULL,
  `answer43` char(1) DEFAULT NULL,
  `answer44` char(1) DEFAULT NULL,
  `answer45` char(1) DEFAULT NULL,
  `answer46` char(1) DEFAULT NULL,
  `answer47` char(1) DEFAULT NULL,
  `answer48` char(1) DEFAULT NULL,
  `answer49` char(1) DEFAULT NULL,
  `answer50` char(1) DEFAULT NULL,
  `answer51` char(1) DEFAULT NULL,
  `answer52` char(1) DEFAULT NULL,
  `answer53` char(1) DEFAULT NULL,
  `answer54` char(1) DEFAULT NULL,
  `answer55` char(1) DEFAULT NULL,
  `a_part4` varchar(750) DEFAULT NULL,
  PRIMARY KEY (`answer_id`),
  KEY `username` (`a_username`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of answer
-- ----------------------------
INSERT INTO `answer` VALUES ('13', 'cet4_2016_6_1', 'wynne', 'successful', 'B', 'A', 'A', 'A', 'A', 'A', 'A', 'A', 'A', 'A', 'A', 'A', 'A', 'A', 'C', 'A', 'A', 'A', 'A', 'A', 'D', 'B', 'B', 'D', 'B', 'A', 'A', 'A', 'B', 'A', 'A', 'A', 'A', 'A', 'B', 'E', 'F', 'G', 'H', 'I', 'J', 'K', 'L', 'N', 'M', 'A', 'A', 'A', 'A', 'A', 'B', 'B', 'D', 'A', 'A', '123123');
INSERT INTO `answer` VALUES ('14', 'cet4_2016_6_1', 'jack', '第一个用户测试', 'C', 'C', null, 'A', null, 'D', 'D', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, 'D', 'B', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `answer` VALUES ('15', 'cet4_2016_6_3', 'wynne', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '谷银行股');

-- ----------------------------
-- Table structure for answer2
-- ----------------------------
DROP TABLE IF EXISTS `answer2`;
CREATE TABLE `answer2` (
  `a_cet_id` varchar(15) NOT NULL,
  `a_part1` varchar(750) DEFAULT NULL,
  `a_part4` varchar(750) DEFAULT NULL,
  `a1` char(1) DEFAULT NULL,
  `a2` char(11) DEFAULT NULL,
  `a3` char(1) DEFAULT NULL,
  `a4` char(1) DEFAULT NULL,
  `a5` char(1) DEFAULT NULL,
  `a6` char(1) DEFAULT NULL,
  `a7` char(1) DEFAULT NULL,
  `a8` char(1) DEFAULT NULL,
  `a9` char(1) DEFAULT NULL,
  `a10` char(1) DEFAULT NULL,
  `a11` char(1) DEFAULT NULL,
  `a12` char(1) DEFAULT NULL,
  `a13` char(1) DEFAULT NULL,
  `a14` char(1) DEFAULT NULL,
  `a15` char(1) DEFAULT NULL,
  `a16` char(1) DEFAULT NULL,
  `a17` char(1) DEFAULT NULL,
  `a18` char(1) DEFAULT NULL,
  `a19` char(1) DEFAULT NULL,
  `a20` char(1) DEFAULT NULL,
  `a21` char(1) DEFAULT NULL,
  `a22` char(1) DEFAULT NULL,
  `a23` char(1) DEFAULT NULL,
  `a24` char(1) DEFAULT NULL,
  `a25` char(1) DEFAULT NULL,
  `a26` char(1) DEFAULT NULL,
  `a27` char(1) DEFAULT NULL,
  `a28` char(1) DEFAULT NULL,
  `a29` char(1) DEFAULT NULL,
  `a30` char(1) DEFAULT NULL,
  `a31` char(1) DEFAULT NULL,
  `a32` char(1) DEFAULT NULL,
  `a33` char(1) DEFAULT NULL,
  `a34` char(1) DEFAULT NULL,
  `a35` char(1) DEFAULT NULL,
  `a36` char(1) DEFAULT NULL,
  `a37` char(1) DEFAULT NULL,
  `a38` char(1) DEFAULT NULL,
  `a39` char(1) DEFAULT NULL,
  `a40` char(1) DEFAULT NULL,
  `a41` char(1) DEFAULT NULL,
  `a42` char(1) DEFAULT NULL,
  `a43` char(1) DEFAULT NULL,
  `a44` char(1) DEFAULT NULL,
  `a45` char(1) DEFAULT NULL,
  `a46` char(1) DEFAULT NULL,
  `a47` char(1) DEFAULT NULL,
  `a48` char(1) DEFAULT NULL,
  `a49` char(1) DEFAULT NULL,
  `a50` char(1) DEFAULT NULL,
  `a51` char(1) DEFAULT NULL,
  `a52` char(1) DEFAULT NULL,
  `a53` char(1) DEFAULT NULL,
  `a54` char(1) DEFAULT NULL,
  `a55` char(1) DEFAULT NULL,
  PRIMARY KEY (`a_cet_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of answer2
-- ----------------------------
INSERT INTO `answer2` VALUES ('cet4_2014_12_1', 'Dear Walt,\n　　I am writing to express my heartfelt gratitude for your help. I am referring to that unfortunate accident the other day, when I was knocked off my bike by a taxi.\n　　Most importantly, if it had not been for your timely assistance in giving me first aid, I fear that the consequences might have been much serious. Everyone agrees that it was your quick-witted response in that emergency that has led to this satisfactory outcome. Although nowadays people in mounting numbers talk about the need to be unselfish, we see very few people practice what they preach. If there were more people like you, this world would be a much nicer place.\n　　My thanks to you for the help you render me are beyond words.\n　　Yours faithfully,\n　　Wynnes', 'Wuzhen, an ancient water town in Zhejiang, lies at the riverside of Beijing-Hangzhou Grand Canal. It is an attractive town, enjoying many ancient bridges, Chinese style inns and restaurants. Wuzhen did not experience much change in its river system and life style through the past one thousand years, which can be called a museum that displays the old civilization. All the houses there are built with stones and woods. For hundreds of years, the local people have built their markets and houses along the riverside. Tourists will be surprised by the spacious and well-built courtyards among the houses everywhere they go.123', 'A', 'A', 'D', 'D', 'C', 'B', 'C', 'D', 'B', 'A', 'C', 'A', 'C', 'D', 'D', 'A', 'C', 'D', 'B', 'D', 'C', 'B', 'D', 'A', 'D', 'M', 'N', 'L', 'K', 'O', 'E', 'J', 'H', 'F', 'I', 'E', 'L', 'B', 'H', 'N', 'J', 'F', 'C', 'I', 'G', 'C', 'D', 'C', 'B', 'A', 'A', 'D', 'C', 'D', 'B');
INSERT INTO `answer2` VALUES ('cet4_2014_12_2', 'Dear Walt,\r\n　　I am writing to express my heartfelt gratitude for your help. I am referring to that unfortunate accident the other day, when I was knocked off my bike by a taxi.\r\n　　Most importantly, if it had not been for your timely assistance in giving me first aid, I fear that the consequences might have been much serious. Everyone agrees that it was your quick-witted response in that emergency that has led to this satisfactory outcome. Although nowadays people in mounting numbers talk about the need to be unselfish, we see very few people practice what they preach. If there were more people like you, this world would be a much nicer place.\r\n　　My thanks to you for the help you render me are beyond words.\r\n　　Yours faithfully,\r\n　　XXXX', 'Wuzhen, an ancient water town in Zhejiang, lies at the riverside of Beijing-Hangzhou Grand Canal. It is an attractive town, enjoying many ancient bridges, Chinese style inns and restaurants. Wuzhen did not experience much change in its river system and life style through the past one thousand years, which can be called a museum that displays the old civilization. All the houses there are built with stones and woods. For hundreds of years, the local people have built their markets and houses along the riverside. Tourists will be surprised by the spacious and well-built courtyards among the houses everywhere they go.', 'C', 'C', 'B', 'A', 'D', 'B', 'C', 'D', 'B', 'A', 'C', 'A', 'C', 'D', 'D', 'A', 'C', 'D', 'B', 'D', 'C', 'B', 'D', 'A', 'C', 'O', 'M', 'L', 'K', 'N', 'E', 'J', 'H', 'F', 'I', 'E', 'L', 'B', 'H', 'N', 'J', 'F', 'C', 'I', 'G', 'C', 'D', 'C', 'B', 'A', 'A', 'D', 'C', 'D', 'B');
INSERT INTO `answer2` VALUES ('cet4_2014_12_3', 'Dear Walt,\r\n　　I am writing to express my heartfelt gratitude for your help. I am referring to that unfortunate accident the other day, when I was knocked off my bike by a taxi.\r\n　　Most importantly, if it had not been for your timely assistance in giving me first aid, I fear that the consequences might have been much serious. Everyone agrees that it was your quick-witted response in that emergency that has led to this satisfactory outcome. Although nowadays people in mounting numbers talk about the need to be unselfish, we see very few people practice what they preach. If there were more people like you, this world would be a much nicer place.\r\n　　My thanks to you for the help you render me are beyond words.\r\n　　Yours faithfully,\r\n　　XXXX', 'Wuzhen, an ancient water town in Zhejiang, lies at the riverside of Beijing-Hangzhou Grand Canal. It is an attractive town, enjoying many ancient bridges, Chinese style inns and restaurants. Wuzhen did not experience much change in its river system and life style through the past one thousand years, which can be called a museum that displays the old civilization. All the houses there are built with stones and woods. For hundreds of years, the local people have built their markets and houses along the riverside. Tourists will be surprised by the spacious and well-built courtyards among the houses everywhere they go.', 'C', 'C', 'B', 'A', 'D', 'B', 'C', 'D', 'B', 'A', 'C', 'A', 'C', 'D', 'D', 'A', 'C', 'D', 'B', 'D', 'C', 'B', 'D', 'A', 'C', 'O', 'M', 'L', 'K', 'N', 'E', 'J', 'H', 'F', 'I', 'E', 'L', 'B', 'H', 'N', 'J', 'F', 'C', 'I', 'G', 'C', 'D', 'C', 'B', 'A', 'A', 'D', 'C', 'D', 'B');
INSERT INTO `answer2` VALUES ('cet4_2014_6_1', 'Dear Walt,\r\n　　I am writing to express my heartfelt gratitude for your help. I am referring to that unfortunate accident the other day, when I was knocked off my bike by a taxi.\r\n　　Most importantly, if it had not been for your timely assistance in giving me first aid, I fear that the consequences might have been much serious. Everyone agrees that it was your quick-witted response in that emergency that has led to this satisfactory outcome. Although nowadays people in mounting numbers talk about the need to be unselfish, we see very few people practice what they preach. If there were more people like you, this world would be a much nicer place.\r\n　　My thanks to you for the help you render me are beyond words.\r\n　　Yours faithfully,\r\n　　XXXX', 'Wuzhen, an ancient water town in Zhejiang, lies at the riverside of Beijing-Hangzhou Grand Canal. It is an attractive town, enjoying many ancient bridges, Chinese style inns and restaurants. Wuzhen did not experience much change in its river system and life style through the past one thousand years, which can be called a museum that displays the old civilization. All the houses there are built with stones and woods. For hundreds of years, the local people have built their markets and houses along the riverside. Tourists will be surprised by the spacious and well-built courtyards among the houses everywhere they go.', 'C', 'C', 'B', 'A', 'D', 'B', 'C', 'D', 'B', 'A', 'C', 'A', 'C', 'D', 'D', 'A', 'C', 'D', 'B', 'D', 'C', 'B', 'D', 'A', 'C', 'O', 'M', 'L', 'K', 'N', 'E', 'J', 'H', 'F', 'I', 'E', 'L', 'B', 'H', 'N', 'J', 'F', 'C', 'I', 'G', 'C', 'D', 'C', 'B', 'A', 'A', 'D', 'C', 'D', 'B');
INSERT INTO `answer2` VALUES ('cet4_2014_6_2', 'Dear Walt,\r\n　　I am writing to express my heartfelt gratitude for your help. I am referring to that unfortunate accident the other day, when I was knocked off my bike by a taxi.\r\n　　Most importantly, if it had not been for your timely assistance in giving me first aid, I fear that the consequences might have been much serious. Everyone agrees that it was your quick-witted response in that emergency that has led to this satisfactory outcome. Although nowadays people in mounting numbers talk about the need to be unselfish, we see very few people practice what they preach. If there were more people like you, this world would be a much nicer place.\r\n　　My thanks to you for the help you render me are beyond words.\r\n　　Yours faithfully,\r\n　　XXXX', 'Wuzhen, an ancient water town in Zhejiang, lies at the riverside of Beijing-Hangzhou Grand Canal. It is an attractive town, enjoying many ancient bridges, Chinese style inns and restaurants. Wuzhen did not experience much change in its river system and life style through the past one thousand years, which can be called a museum that displays the old civilization. All the houses there are built with stones and woods. For hundreds of years, the local people have built their markets and houses along the riverside. Tourists will be surprised by the spacious and well-built courtyards among the houses everywhere they go.', 'C', 'C', 'B', 'A', 'D', 'B', 'C', 'D', 'B', 'A', 'C', 'A', 'C', 'D', 'D', 'A', 'C', 'D', 'B', 'D', 'C', 'B', 'D', 'A', 'C', 'O', 'M', 'L', 'K', 'N', 'E', 'J', 'H', 'F', 'I', 'E', 'L', 'B', 'H', 'N', 'J', 'F', 'C', 'I', 'G', 'C', 'D', 'C', 'B', 'A', 'A', 'D', 'C', 'D', 'B');
INSERT INTO `answer2` VALUES ('cet4_2014_6_3', 'Dear Walt,\r\n　　I am writing to express my heartfelt gratitude for your help. I am referring to that unfortunate accident the other day, when I was knocked off my bike by a taxi.\r\n　　Most importantly, if it had not been for your timely assistance in giving me first aid, I fear that the consequences might have been much serious. Everyone agrees that it was your quick-witted response in that emergency that has led to this satisfactory outcome. Although nowadays people in mounting numbers talk about the need to be unselfish, we see very few people practice what they preach. If there were more people like you, this world would be a much nicer place.\r\n　　My thanks to you for the help you render me are beyond words.\r\n　　Yours faithfully,\r\n　　XXXX', 'Wuzhen, an ancient water town in Zhejiang, lies at the riverside of Beijing-Hangzhou Grand Canal. It is an attractive town, enjoying many ancient bridges, Chinese style inns and restaurants. Wuzhen did not experience much change in its river system and life style through the past one thousand years, which can be called a museum that displays the old civilization. All the houses there are built with stones and woods. For hundreds of years, the local people have built their markets and houses along the riverside. Tourists will be surprised by the spacious and well-built courtyards among the houses everywhere they go.', 'C', 'C', 'B', 'A', 'D', 'B', 'C', 'D', 'B', 'A', 'C', 'A', 'C', 'D', 'D', 'A', 'C', 'D', 'B', 'D', 'C', 'B', 'D', 'A', 'C', 'O', 'M', 'L', 'K', 'N', 'E', 'J', 'H', 'F', 'I', 'E', 'L', 'B', 'H', 'N', 'J', 'F', 'C', 'I', 'G', 'C', 'D', 'C', 'B', 'A', 'A', 'D', 'C', 'D', 'B');
INSERT INTO `answer2` VALUES ('cet4_2015_12_2', 'Dear Walt,\r\n　　I am writing to express my heartfelt gratitude for your help. I am referring to that unfortunate accident the other day, when I was knocked off my bike by a taxi.\r\n　　Most importantly, if it had not been for your timely assistance in giving me first aid, I fear that the consequences might have been much serious. Everyone agrees that it was your quick-witted response in that emergency that has led to this satisfactory outcome. Although nowadays people in mounting numbers talk about the need to be unselfish, we see very few people practice what they preach. If there were more people like you, this world would be a much nicer place.\r\n　　My thanks to you for the help you render me are beyond words.\r\n　　Yours faithfully,\r\n　　XXXX', 'Wuzhen, an ancient water town in Zhejiang, lies at the riverside of Beijing-Hangzhou Grand Canal. It is an attractive town, enjoying many ancient bridges, Chinese style inns and restaurants. Wuzhen did not experience much change in its river system and life style through the past one thousand years, which can be called a museum that displays the old civilization. All the houses there are built with stones and woods. For hundreds of years, the local people have built their markets and houses along the riverside. Tourists will be surprised by the spacious and well-built courtyards among the houses everywhere they go.', 'C', 'C', 'B', 'A', 'D', 'B', 'C', 'D', 'B', 'A', 'C', 'A', 'C', 'D', 'D', 'A', 'C', 'D', 'B', 'D', 'C', 'B', 'D', 'A', 'C', 'O', 'M', 'L', 'K', 'N', 'E', 'J', 'H', 'F', 'I', 'E', 'L', 'B', 'H', 'N', 'J', 'F', 'C', 'I', 'G', 'C', 'D', 'C', 'B', 'A', 'A', 'D', 'C', 'D', 'B');
INSERT INTO `answer2` VALUES ('cet4_2015_12_3', 'Dear Walt,\r\n　　I am writing to express my heartfelt gratitude for your help. I am referring to that unfortunate accident the other day, when I was knocked off my bike by a taxi.\r\n　　Most importantly, if it had not been for your timely assistance in giving me first aid, I fear that the consequences might have been much serious. Everyone agrees that it was your quick-witted response in that emergency that has led to this satisfactory outcome. Although nowadays people in mounting numbers talk about the need to be unselfish, we see very few people practice what they preach. If there were more people like you, this world would be a much nicer place.\r\n　　My thanks to you for the help you render me are beyond words.\r\n　　Yours faithfully,\r\n　　XXXX', 'Wuzhen, an ancient water town in Zhejiang, lies at the riverside of Beijing-Hangzhou Grand Canal. It is an attractive town, enjoying many ancient bridges, Chinese style inns and restaurants. Wuzhen did not experience much change in its river system and life style through the past one thousand years, which can be called a museum that displays the old civilization. All the houses there are built with stones and woods. For hundreds of years, the local people have built their markets and houses along the riverside. Tourists will be surprised by the spacious and well-built courtyards among the houses everywhere they go.', 'C', 'C', 'B', 'A', 'D', 'B', 'C', 'D', 'B', 'A', 'C', 'A', 'C', 'D', 'D', 'A', 'C', 'D', 'B', 'D', 'C', 'B', 'D', 'A', 'C', 'O', 'M', 'L', 'K', 'N', 'E', 'J', 'H', 'F', 'I', 'E', 'L', 'B', 'H', 'N', 'J', 'F', 'C', 'I', 'G', 'C', 'D', 'C', 'B', 'A', 'A', 'D', 'C', 'D', 'B');
INSERT INTO `answer2` VALUES ('cet4_2015_6_1', 'Dear Walt,\r\n　　I am writing to express my heartfelt gratitude for your help. I am referring to that unfortunate accident the other day, when I was knocked off my bike by a taxi.\r\n　　Most importantly, if it had not been for your timely assistance in giving me first aid, I fear that the consequences might have been much serious. Everyone agrees that it was your quick-witted response in that emergency that has led to this satisfactory outcome. Although nowadays people in mounting numbers talk about the need to be unselfish, we see very few people practice what they preach. If there were more people like you, this world would be a much nicer place.\r\n　　My thanks to you for the help you render me are beyond words.\r\n　　Yours faithfully,\r\n　　XXXX', 'Wuzhen, an ancient water town in Zhejiang, lies at the riverside of Beijing-Hangzhou Grand Canal. It is an attractive town, enjoying many ancient bridges, Chinese style inns and restaurants. Wuzhen did not experience much change in its river system and life style through the past one thousand years, which can be called a museum that displays the old civilization. All the houses there are built with stones and woods. For hundreds of years, the local people have built their markets and houses along the riverside. Tourists will be surprised by the spacious and well-built courtyards among the houses everywhere they go.', 'C', 'C', 'B', 'A', 'D', 'B', 'C', 'D', 'B', 'A', 'C', 'A', 'C', 'D', 'D', 'A', 'C', 'D', 'B', 'D', 'C', 'B', 'D', 'A', 'C', 'O', 'M', 'L', 'K', 'N', 'E', 'J', 'H', 'F', 'I', 'E', 'L', 'B', 'H', 'N', 'J', 'F', 'C', 'I', 'G', 'C', 'D', 'C', 'B', 'A', 'A', 'D', 'C', 'D', 'B');
INSERT INTO `answer2` VALUES ('cet4_2015_6_2', 'Dear Walt,\r\n　　I am writing to express my heartfelt gratitude for your help. I am referring to that unfortunate accident the other day, when I was knocked off my bike by a taxi.\r\n　　Most importantly, if it had not been for your timely assistance in giving me first aid, I fear that the consequences might have been much serious. Everyone agrees that it was your quick-witted response in that emergency that has led to this satisfactory outcome. Although nowadays people in mounting numbers talk about the need to be unselfish, we see very few people practice what they preach. If there were more people like you, this world would be a much nicer place.\r\n　　My thanks to you for the help you render me are beyond words.\r\n　　Yours faithfully,\r\n　　XXXX', 'Wuzhen, an ancient water town in Zhejiang, lies at the riverside of Beijing-Hangzhou Grand Canal. It is an attractive town, enjoying many ancient bridges, Chinese style inns and restaurants. Wuzhen did not experience much change in its river system and life style through the past one thousand years, which can be called a museum that displays the old civilization. All the houses there are built with stones and woods. For hundreds of years, the local people have built their markets and houses along the riverside. Tourists will be surprised by the spacious and well-built courtyards among the houses everywhere they go.', 'C', 'C', 'B', 'A', 'D', 'B', 'C', 'D', 'B', 'A', 'C', 'A', 'C', 'D', 'D', 'A', 'C', 'D', 'B', 'D', 'C', 'B', 'D', 'A', 'C', 'O', 'M', 'L', 'K', 'N', 'E', 'J', 'H', 'F', 'I', 'E', 'L', 'B', 'H', 'N', 'J', 'F', 'C', 'I', 'G', 'C', 'D', 'C', 'B', 'A', 'A', 'D', 'C', 'D', 'B');
INSERT INTO `answer2` VALUES ('cet4_2015_6_3', 'Dear Walt,\r\n　　I am writing to express my heartfelt gratitude for your help. I am referring to that unfortunate accident the other day, when I was knocked off my bike by a taxi.\r\n　　Most importantly, if it had not been for your timely assistance in giving me first aid, I fear that the consequences might have been much serious. Everyone agrees that it was your quick-witted response in that emergency that has led to this satisfactory outcome. Although nowadays people in mounting numbers talk about the need to be unselfish, we see very few people practice what they preach. If there were more people like you, this world would be a much nicer place.\r\n　　My thanks to you for the help you render me are beyond words.\r\n　　Yours faithfully,\r\n　　XXXX', 'Wuzhen, an ancient water town in Zhejiang, lies at the riverside of Beijing-Hangzhou Grand Canal. It is an attractive town, enjoying many ancient bridges, Chinese style inns and restaurants. Wuzhen did not experience much change in its river system and life style through the past one thousand years, which can be called a museum that displays the old civilization. All the houses there are built with stones and woods. For hundreds of years, the local people have built their markets and houses along the riverside. Tourists will be surprised by the spacious and well-built courtyards among the houses everywhere they go.', 'C', 'C', 'B', 'A', 'D', 'B', 'C', 'D', 'B', 'A', 'C', 'A', 'C', 'D', 'D', 'A', 'C', 'D', 'B', 'D', 'C', 'B', 'D', 'A', 'C', 'O', 'M', 'L', 'K', 'N', 'E', 'J', 'H', 'F', 'I', 'E', 'L', 'B', 'H', 'N', 'J', 'F', 'C', 'I', 'G', 'C', 'D', 'C', 'B', 'A', 'A', 'D', 'C', 'D', 'B');
INSERT INTO `answer2` VALUES ('cet4_2016_12_1', 'Dear Walt,\r\n　　I am writing to express my heartfelt gratitude for your help. I am referring to that unfortunate accident the other day, when I was knocked off my bike by a taxi.\r\n　　Most importantly, if it had not been for your timely assistance in giving me first aid, I fear that the consequences might have been much serious. Everyone agrees that it was your quick-witted response in that emergency that has led to this satisfactory outcome. Although nowadays people in mounting numbers talk about the need to be unselfish, we see very few people practice what they preach. If there were more people like you, this world would be a much nicer place.\r\n　　My thanks to you for the help you render me are beyond words.\r\n　　Yours faithfully,\r\n　　XXXX', 'Wuzhen, an ancient water town in Zhejiang, lies at the riverside of Beijing-Hangzhou Grand Canal. It is an attractive town, enjoying many ancient bridges, Chinese style inns and restaurants. Wuzhen did not experience much change in its river system and life style through the past one thousand years, which can be called a museum that displays the old civilization. All the houses there are built with stones and woods. For hundreds of years, the local people have built their markets and houses along the riverside. Tourists will be surprised by the spacious and well-built courtyards among the houses everywhere they go.', 'C', 'C', 'B', 'A', 'D', 'B', 'C', 'D', 'B', 'A', 'C', 'A', 'C', 'D', 'D', 'A', 'C', 'D', 'B', 'D', 'C', 'B', 'D', 'A', 'C', 'O', 'M', 'L', 'K', 'N', 'E', 'J', 'H', 'F', 'I', 'E', 'L', 'B', 'H', 'N', 'J', 'F', 'C', 'I', 'G', 'C', 'D', 'C', 'B', 'A', 'A', 'D', 'C', 'D', 'B');
INSERT INTO `answer2` VALUES ('cet4_2016_12_2', 'Dear Walt,\r\n　　I am writing to express my heartfelt gratitude for your help. I am referring to that unfortunate accident the other day, when I was knocked off my bike by a taxi.\r\n　　Most importantly, if it had not been for your timely assistance in giving me first aid, I fear that the consequences might have been much serious. Everyone agrees that it was your quick-witted response in that emergency that has led to this satisfactory outcome. Although nowadays people in mounting numbers talk about the need to be unselfish, we see very few people practice what they preach. If there were more people like you, this world would be a much nicer place.\r\n　　My thanks to you for the help you render me are beyond words.\r\n　　Yours faithfully,\r\n　　XXXX', 'Wuzhen, an ancient water town in Zhejiang, lies at the riverside of Beijing-Hangzhou Grand Canal. It is an attractive town, enjoying many ancient bridges, Chinese style inns and restaurants. Wuzhen did not experience much change in its river system and life style through the past one thousand years, which can be called a museum that displays the old civilization. All the houses there are built with stones and woods. For hundreds of years, the local people have built their markets and houses along the riverside. Tourists will be surprised by the spacious and well-built courtyards among the houses everywhere they go.', 'C', 'C', 'B', 'A', 'D', 'B', 'C', 'D', 'B', 'A', 'C', 'A', 'C', 'D', 'D', 'A', 'C', 'D', 'B', 'D', 'C', 'B', 'D', 'A', 'C', 'O', 'M', 'L', 'K', 'N', 'E', 'J', 'H', 'F', 'I', 'E', 'L', 'B', 'H', 'N', 'J', 'F', 'C', 'I', 'G', 'C', 'D', 'C', 'B', 'A', 'A', 'D', 'C', 'D', 'B');
INSERT INTO `answer2` VALUES ('cet4_2016_12_3', 'Dear Walt,\r\n　　I am writing to express my heartfelt gratitude for your help. I am referring to that unfortunate accident the other day, when I was knocked off my bike by a taxi.\r\n　　Most importantly, if it had not been for your timely assistance in giving me first aid, I fear that the consequences might have been much serious. Everyone agrees that it was your quick-witted response in that emergency that has led to this satisfactory outcome. Although nowadays people in mounting numbers talk about the need to be unselfish, we see very few people practice what they preach. If there were more people like you, this world would be a much nicer place.\r\n　　My thanks to you for the help you render me are beyond words.\r\n　　Yours faithfully,\r\n　　XXXX', 'Wuzhen, an ancient water town in Zhejiang, lies at the riverside of Beijing-Hangzhou Grand Canal. It is an attractive town, enjoying many ancient bridges, Chinese style inns and restaurants. Wuzhen did not experience much change in its river system and life style through the past one thousand years, which can be called a museum that displays the old civilization. All the houses there are built with stones and woods. For hundreds of years, the local people have built their markets and houses along the riverside. Tourists will be surprised by the spacious and well-built courtyards among the houses everywhere they go.', 'C', 'C', 'B', 'A', 'D', 'B', 'C', 'D', 'B', 'A', 'C', 'A', 'C', 'D', 'D', 'A', 'C', 'D', 'B', 'D', 'C', 'B', 'D', 'A', 'C', 'O', 'M', 'L', 'K', 'N', 'E', 'J', 'H', 'F', 'I', 'E', 'L', 'B', 'H', 'N', 'J', 'F', 'C', 'I', 'G', 'C', 'D', 'C', 'B', 'A', 'A', 'D', 'C', 'D', 'B');
INSERT INTO `answer2` VALUES ('cet4_2016_6_1', 'Dear Walt,\r\n　　I am writing to express my heartfelt gratitude for your help. I am referring to that unfortunate accident the other day, when I was knocked off my bike by a taxi.\r\n　　Most importantly, if it had not been for your timely assistance in giving me first aid, I fear that the consequences might have been much serious. Everyone agrees that it was your quick-witted response in that emergency that has led to this satisfactory outcome. Although nowadays people in mounting numbers talk about the need to be unselfish, we see very few people practice what they preach. If there were more people like you, this world would be a much nicer place.\r\n　　My thanks to you for the help you render me are beyond words.\r\n　　Yours faithfully,\r\n　　XXXX', 'Wuzhen, an ancient water town in Zhejiang, lies at the riverside of Beijing-Hangzhou Grand Canal. It is an attractive town, enjoying many ancient bridges, Chinese style inns and restaurants. Wuzhen did not experience much change in its river system and life style through the past one thousand years, which can be called a museum that displays the old civilization. All the houses there are built with stones and woods. For hundreds of years, the local people have built their markets and houses along the riverside. Tourists will be surprised by the spacious and well-built courtyards among the houses everywhere they go.', 'C', 'C', 'B', 'A', 'D', 'B', 'C', 'D', 'B', 'A', 'C', 'A', 'C', 'D', 'D', 'A', 'C', 'D', 'B', 'D', 'C', 'B', 'D', 'A', 'C', 'O', 'M', 'L', 'K', 'N', 'E', 'J', 'H', 'F', 'I', 'E', 'L', 'B', 'H', 'N', 'J', 'F', 'C', 'I', 'G', 'C', 'D', 'C', 'B', 'A', 'A', 'D', 'C', 'D', 'B');
INSERT INTO `answer2` VALUES ('cet4_2016_6_3', 'Dear Walt,\r\n　　I am writing to express my heartfelt gratitude for your help. I am referring to that unfortunate accident the other day, when I was knocked off my bike by a taxi.\r\n　　Most importantly, if it had not been for your timely assistance in giving me first aid, I fear that the consequences might have been much serious. Everyone agrees that it was your quick-witted response in that emergency that has led to this satisfactory outcome. Although nowadays people in mounting numbers talk about the need to be unselfish, we see very few people practice what they preach. If there were more people like you, this world would be a much nicer place.\r\n　　My thanks to you for the help you render me are beyond words.\r\n　　Yours faithfully,\r\n　　XXXX', 'Wuzhen, an ancient water town in Zhejiang, lies at the riverside of Beijing-Hangzhou Grand Canal. It is an attractive town, enjoying many ancient bridges, Chinese style inns and restaurants. Wuzhen did not experience much change in its river system and life style through the past one thousand years, which can be called a museum that displays the old civilization. All the houses there are built with stones and woods. For hundreds of years, the local people have built their markets and houses along the riverside. Tourists will be surprised by the spacious and well-built courtyards among the houses everywhere they go.', 'C', 'C', 'B', 'A', 'D', 'B', 'C', 'D', 'B', 'A', 'C', 'A', 'C', 'D', 'D', 'A', 'C', 'D', 'B', 'D', 'C', 'B', 'D', 'A', 'C', 'O', 'M', 'L', 'K', 'N', 'E', 'J', 'H', 'F', 'I', 'E', 'L', 'B', 'H', 'N', 'J', 'F', 'C', 'I', 'G', 'C', 'D', 'C', 'B', 'A', 'A', 'D', 'C', 'D', 'B');
INSERT INTO `answer2` VALUES ('cet6_2014_12_2', 'Dear Walt,\r\n　　I am writing to express my heartfelt gratitude for your help. I am referring to that unfortunate accident the other day, when I was knocked off my bike by a taxi.\r\n　　Most importantly, if it had not been for your timely assistance in giving me first aid, I fear that the consequences might have been much serious. Everyone agrees that it was your quick-witted response in that emergency that has led to this satisfactory outcome. Although nowadays people in mounting numbers talk about the need to be unselfish, we see very few people practice what they preach. If there were more people like you, this world would be a much nicer place.\r\n　　My thanks to you for the help you render me are beyond words.\r\n　　Yours faithfully,\r\n　　XXXX', 'Wuzhen, an ancient water town in Zhejiang, lies at the riverside of Beijing-Hangzhou Grand Canal. It is an attractive town, enjoying many ancient bridges, Chinese style inns and restaurants. Wuzhen did not experience much change in its river system and life style through the past one thousand years, which can be called a museum that displays the old civilization. All the houses there are built with stones and woods. For hundreds of years, the local people have built their markets and houses along the riverside. Tourists will be surprised by the spacious and well-built courtyards among the houses everywhere they go.', 'C', 'C', 'B', 'A', 'D', 'B', 'C', 'D', 'B', 'A', 'C', 'A', 'C', 'D', 'D', 'A', 'C', 'D', 'B', 'D', 'C', 'B', 'D', 'A', 'C', 'O', 'M', 'L', 'K', 'N', 'E', 'J', 'H', 'F', 'I', 'E', 'L', 'B', 'H', 'N', 'J', 'F', 'C', 'I', 'G', 'C', 'D', 'C', 'B', 'A', 'A', 'D', 'C', 'D', 'B');
INSERT INTO `answer2` VALUES ('cet6_2014_6_2', 'Dear Walt,\r\n　　I am writing to express my heartfelt gratitude for your help. I am referring to that unfortunate accident the other day, when I was knocked off my bike by a taxi.\r\n　　Most importantly, if it had not been for your timely assistance in giving me first aid, I fear that the consequences might have been much serious. Everyone agrees that it was your quick-witted response in that emergency that has led to this satisfactory outcome. Although nowadays people in mounting numbers talk about the need to be unselfish, we see very few people practice what they preach. If there were more people like you, this world would be a much nicer place.\r\n　　My thanks to you for the help you render me are beyond words.\r\n　　Yours faithfully,\r\n　　XXXX', 'Wuzhen, an ancient water town in Zhejiang, lies at the riverside of Beijing-Hangzhou Grand Canal. It is an attractive town, enjoying many ancient bridges, Chinese style inns and restaurants. Wuzhen did not experience much change in its river system and life style through the past one thousand years, which can be called a museum that displays the old civilization. All the houses there are built with stones and woods. For hundreds of years, the local people have built their markets and houses along the riverside. Tourists will be surprised by the spacious and well-built courtyards among the houses everywhere they go.', 'C', 'C', 'B', 'A', 'D', 'B', 'C', 'D', 'B', 'A', 'C', 'A', 'C', 'D', 'D', 'A', 'C', 'D', 'B', 'D', 'C', 'B', 'D', 'A', 'C', 'O', 'M', 'L', 'K', 'N', 'E', 'J', 'H', 'F', 'I', 'E', 'L', 'B', 'H', 'N', 'J', 'F', 'C', 'I', 'G', 'C', 'D', 'C', 'B', 'A', 'A', 'D', 'C', 'D', 'B');
INSERT INTO `answer2` VALUES ('cet6_2014_6_3', 'Dear Walt,\r\n　　I am writing to express my heartfelt gratitude for your help. I am referring to that unfortunate accident the other day, when I was knocked off my bike by a taxi.\r\n　　Most importantly, if it had not been for your timely assistance in giving me first aid, I fear that the consequences might have been much serious. Everyone agrees that it was your quick-witted response in that emergency that has led to this satisfactory outcome. Although nowadays people in mounting numbers talk about the need to be unselfish, we see very few people practice what they preach. If there were more people like you, this world would be a much nicer place.\r\n　　My thanks to you for the help you render me are beyond words.\r\n　　Yours faithfully,\r\n　　XXXX', 'Wuzhen, an ancient water town in Zhejiang, lies at the riverside of Beijing-Hangzhou Grand Canal. It is an attractive town, enjoying many ancient bridges, Chinese style inns and restaurants. Wuzhen did not experience much change in its river system and life style through the past one thousand years, which can be called a museum that displays the old civilization. All the houses there are built with stones and woods. For hundreds of years, the local people have built their markets and houses along the riverside. Tourists will be surprised by the spacious and well-built courtyards among the houses everywhere they go.', 'C', 'C', 'B', 'A', 'D', 'B', 'C', 'D', 'B', 'A', 'C', 'A', 'C', 'D', 'D', 'A', 'C', 'D', 'B', 'D', 'C', 'B', 'D', 'A', 'C', 'O', 'M', 'L', 'K', 'N', 'E', 'J', 'H', 'F', 'I', 'E', 'L', 'B', 'H', 'N', 'J', 'F', 'C', 'I', 'G', 'C', 'D', 'C', 'B', 'A', 'A', 'D', 'C', 'D', 'B');
INSERT INTO `answer2` VALUES ('cet6_2015_12_1', 'Dear Walt,\r\n　　I am writing to express my heartfelt gratitude for your help. I am referring to that unfortunate accident the other day, when I was knocked off my bike by a taxi.\r\n　　Most importantly, if it had not been for your timely assistance in giving me first aid, I fear that the consequences might have been much serious. Everyone agrees that it was your quick-witted response in that emergency that has led to this satisfactory outcome. Although nowadays people in mounting numbers talk about the need to be unselfish, we see very few people practice what they preach. If there were more people like you, this world would be a much nicer place.\r\n　　My thanks to you for the help you render me are beyond words.\r\n　　Yours faithfully,\r\n　　XXXX', 'Wuzhen, an ancient water town in Zhejiang, lies at the riverside of Beijing-Hangzhou Grand Canal. It is an attractive town, enjoying many ancient bridges, Chinese style inns and restaurants. Wuzhen did not experience much change in its river system and life style through the past one thousand years, which can be called a museum that displays the old civilization. All the houses there are built with stones and woods. For hundreds of years, the local people have built their markets and houses along the riverside. Tourists will be surprised by the spacious and well-built courtyards among the houses everywhere they go.', 'C', 'C', 'B', 'A', 'D', 'B', 'C', 'D', 'B', 'A', 'C', 'A', 'C', 'D', 'D', 'A', 'C', 'D', 'B', 'D', 'C', 'B', 'D', 'A', 'C', 'O', 'M', 'L', 'K', 'N', 'E', 'J', 'H', 'F', 'I', 'E', 'L', 'B', 'H', 'N', 'J', 'F', 'C', 'I', 'G', 'C', 'D', 'C', 'B', 'A', 'A', 'D', 'C', 'D', 'B');
INSERT INTO `answer2` VALUES ('cet6_2015_12_2', 'Dear Walt,\r\n　　I am writing to express my heartfelt gratitude for your help. I am referring to that unfortunate accident the other day, when I was knocked off my bike by a taxi.\r\n　　Most importantly, if it had not been for your timely assistance in giving me first aid, I fear that the consequences might have been much serious. Everyone agrees that it was your quick-witted response in that emergency that has led to this satisfactory outcome. Although nowadays people in mounting numbers talk about the need to be unselfish, we see very few people practice what they preach. If there were more people like you, this world would be a much nicer place.\r\n　　My thanks to you for the help you render me are beyond words.\r\n　　Yours faithfully,\r\n　　XXXX', 'Wuzhen, an ancient water town in Zhejiang, lies at the riverside of Beijing-Hangzhou Grand Canal. It is an attractive town, enjoying many ancient bridges, Chinese style inns and restaurants. Wuzhen did not experience much change in its river system and life style through the past one thousand years, which can be called a museum that displays the old civilization. All the houses there are built with stones and woods. For hundreds of years, the local people have built their markets and houses along the riverside. Tourists will be surprised by the spacious and well-built courtyards among the houses everywhere they go.', 'C', 'C', 'B', 'A', 'D', 'B', 'C', 'D', 'B', 'A', 'C', 'A', 'C', 'D', 'D', 'A', 'C', 'D', 'B', 'D', 'C', 'B', 'D', 'A', 'C', 'O', 'M', 'L', 'K', 'N', 'E', 'J', 'H', 'F', 'I', 'E', 'L', 'B', 'H', 'N', 'J', 'F', 'C', 'I', 'G', 'C', 'D', 'C', 'B', 'A', 'A', 'D', 'C', 'D', 'B');
INSERT INTO `answer2` VALUES ('cet6_2015_12_3', 'Dear Walt,\r\n　　I am writing to express my heartfelt gratitude for your help. I am referring to that unfortunate accident the other day, when I was knocked off my bike by a taxi.\r\n　　Most importantly, if it had not been for your timely assistance in giving me first aid, I fear that the consequences might have been much serious. Everyone agrees that it was your quick-witted response in that emergency that has led to this satisfactory outcome. Although nowadays people in mounting numbers talk about the need to be unselfish, we see very few people practice what they preach. If there were more people like you, this world would be a much nicer place.\r\n　　My thanks to you for the help you render me are beyond words.\r\n　　Yours faithfully,\r\n　　XXXX', 'Wuzhen, an ancient water town in Zhejiang, lies at the riverside of Beijing-Hangzhou Grand Canal. It is an attractive town, enjoying many ancient bridges, Chinese style inns and restaurants. Wuzhen did not experience much change in its river system and life style through the past one thousand years, which can be called a museum that displays the old civilization. All the houses there are built with stones and woods. For hundreds of years, the local people have built their markets and houses along the riverside. Tourists will be surprised by the spacious and well-built courtyards among the houses everywhere they go.', 'C', 'C', 'B', 'A', 'D', 'B', 'C', 'D', 'B', 'A', 'C', 'A', 'C', 'D', 'D', 'A', 'C', 'D', 'B', 'D', 'C', 'B', 'D', 'A', 'C', 'O', 'M', 'L', 'K', 'N', 'E', 'J', 'H', 'F', 'I', 'E', 'L', 'B', 'H', 'N', 'J', 'F', 'C', 'I', 'G', 'C', 'D', 'C', 'B', 'A', 'A', 'D', 'C', 'D', 'B');
INSERT INTO `answer2` VALUES ('cet6_2015_6_1', 'Dear Walt,\r\n　　I am writing to express my heartfelt gratitude for your help. I am referring to that unfortunate accident the other day, when I was knocked off my bike by a taxi.\r\n　　Most importantly, if it had not been for your timely assistance in giving me first aid, I fear that the consequences might have been much serious. Everyone agrees that it was your quick-witted response in that emergency that has led to this satisfactory outcome. Although nowadays people in mounting numbers talk about the need to be unselfish, we see very few people practice what they preach. If there were more people like you, this world would be a much nicer place.\r\n　　My thanks to you for the help you render me are beyond words.\r\n　　Yours faithfully,\r\n　　XXXX', 'Wuzhen, an ancient water town in Zhejiang, lies at the riverside of Beijing-Hangzhou Grand Canal. It is an attractive town, enjoying many ancient bridges, Chinese style inns and restaurants. Wuzhen did not experience much change in its river system and life style through the past one thousand years, which can be called a museum that displays the old civilization. All the houses there are built with stones and woods. For hundreds of years, the local people have built their markets and houses along the riverside. Tourists will be surprised by the spacious and well-built courtyards among the houses everywhere they go.', 'C', 'C', 'B', 'A', 'D', 'B', 'C', 'D', 'B', 'A', 'C', 'A', 'C', 'D', 'D', 'A', 'C', 'D', 'B', 'D', 'C', 'B', 'D', 'A', 'C', 'O', 'M', 'L', 'K', 'N', 'E', 'J', 'H', 'F', 'I', 'E', 'L', 'B', 'H', 'N', 'J', 'F', 'C', 'I', 'G', 'C', 'D', 'C', 'B', 'A', 'A', 'D', 'C', 'D', 'B');
INSERT INTO `answer2` VALUES ('cet6_2015_6_2', 'Dear Walt,\r\n　　I am writing to express my heartfelt gratitude for your help. I am referring to that unfortunate accident the other day, when I was knocked off my bike by a taxi.\r\n　　Most importantly, if it had not been for your timely assistance in giving me first aid, I fear that the consequences might have been much serious. Everyone agrees that it was your quick-witted response in that emergency that has led to this satisfactory outcome. Although nowadays people in mounting numbers talk about the need to be unselfish, we see very few people practice what they preach. If there were more people like you, this world would be a much nicer place.\r\n　　My thanks to you for the help you render me are beyond words.\r\n　　Yours faithfully,\r\n　　XXXX', 'Wuzhen, an ancient water town in Zhejiang, lies at the riverside of Beijing-Hangzhou Grand Canal. It is an attractive town, enjoying many ancient bridges, Chinese style inns and restaurants. Wuzhen did not experience much change in its river system and life style through the past one thousand years, which can be called a museum that displays the old civilization. All the houses there are built with stones and woods. For hundreds of years, the local people have built their markets and houses along the riverside. Tourists will be surprised by the spacious and well-built courtyards among the houses everywhere they go.', 'C', 'C', 'B', 'A', 'D', 'B', 'C', 'D', 'B', 'A', 'C', 'A', 'C', 'D', 'D', 'A', 'C', 'D', 'B', 'D', 'C', 'B', 'D', 'A', 'C', 'O', 'M', 'L', 'K', 'N', 'E', 'J', 'H', 'F', 'I', 'E', 'L', 'B', 'H', 'N', 'J', 'F', 'C', 'I', 'G', 'C', 'D', 'C', 'B', 'A', 'A', 'D', 'C', 'D', 'B');
INSERT INTO `answer2` VALUES ('cet6_2015_6_3', 'Dear Walt,\r\n　　I am writing to express my heartfelt gratitude for your help. I am referring to that unfortunate accident the other day, when I was knocked off my bike by a taxi.\r\n　　Most importantly, if it had not been for your timely assistance in giving me first aid, I fear that the consequences might have been much serious. Everyone agrees that it was your quick-witted response in that emergency that has led to this satisfactory outcome. Although nowadays people in mounting numbers talk about the need to be unselfish, we see very few people practice what they preach. If there were more people like you, this world would be a much nicer place.\r\n　　My thanks to you for the help you render me are beyond words.\r\n　　Yours faithfully,\r\n　　XXXX', 'Wuzhen, an ancient water town in Zhejiang, lies at the riverside of Beijing-Hangzhou Grand Canal. It is an attractive town, enjoying many ancient bridges, Chinese style inns and restaurants. Wuzhen did not experience much change in its river system and life style through the past one thousand years, which can be called a museum that displays the old civilization. All the houses there are built with stones and woods. For hundreds of years, the local people have built their markets and houses along the riverside. Tourists will be surprised by the spacious and well-built courtyards among the houses everywhere they go.', 'C', 'C', 'B', 'A', 'D', 'B', 'C', 'D', 'B', 'A', 'C', 'A', 'C', 'D', 'D', 'A', 'C', 'D', 'B', 'D', 'C', 'B', 'D', 'A', 'C', 'O', 'M', 'L', 'K', 'N', 'E', 'J', 'H', 'F', 'I', 'E', 'L', 'B', 'H', 'N', 'J', 'F', 'C', 'I', 'G', 'C', 'D', 'C', 'B', 'A', 'A', 'D', 'C', 'D', 'B');
INSERT INTO `answer2` VALUES ('cet6_2016_12_1', 'Dear Walt,\r\n　　I am writing to express my heartfelt gratitude for your help. I am referring to that unfortunate accident the other day, when I was knocked off my bike by a taxi.\r\n　　Most importantly, if it had not been for your timely assistance in giving me first aid, I fear that the consequences might have been much serious. Everyone agrees that it was your quick-witted response in that emergency that has led to this satisfactory outcome. Although nowadays people in mounting numbers talk about the need to be unselfish, we see very few people practice what they preach. If there were more people like you, this world would be a much nicer place.\r\n　　My thanks to you for the help you render me are beyond words.\r\n　　Yours faithfully,\r\n　　XXXX', 'Wuzhen, an ancient water town in Zhejiang, lies at the riverside of Beijing-Hangzhou Grand Canal. It is an attractive town, enjoying many ancient bridges, Chinese style inns and restaurants. Wuzhen did not experience much change in its river system and life style through the past one thousand years, which can be called a museum that displays the old civilization. All the houses there are built with stones and woods. For hundreds of years, the local people have built their markets and houses along the riverside. Tourists will be surprised by the spacious and well-built courtyards among the houses everywhere they go.', 'C', 'C', 'B', 'A', 'D', 'B', 'C', 'D', 'B', 'A', 'C', 'A', 'C', 'D', 'D', 'A', 'C', 'D', 'B', 'D', 'C', 'B', 'D', 'A', 'C', 'O', 'M', 'L', 'K', 'N', 'E', 'J', 'H', 'F', 'I', 'E', 'L', 'B', 'H', 'N', 'J', 'F', 'C', 'I', 'G', 'C', 'D', 'C', 'B', 'A', 'A', 'D', 'C', 'D', 'B');
INSERT INTO `answer2` VALUES ('cet6_2016_12_2', 'Dear Walt,\r\n　　I am writing to express my heartfelt gratitude for your help. I am referring to that unfortunate accident the other day, when I was knocked off my bike by a taxi.\r\n　　Most importantly, if it had not been for your timely assistance in giving me first aid, I fear that the consequences might have been much serious. Everyone agrees that it was your quick-witted response in that emergency that has led to this satisfactory outcome. Although nowadays people in mounting numbers talk about the need to be unselfish, we see very few people practice what they preach. If there were more people like you, this world would be a much nicer place.\r\n　　My thanks to you for the help you render me are beyond words.\r\n　　Yours faithfully,\r\n　　XXXX', 'Wuzhen, an ancient water town in Zhejiang, lies at the riverside of Beijing-Hangzhou Grand Canal. It is an attractive town, enjoying many ancient bridges, Chinese style inns and restaurants. Wuzhen did not experience much change in its river system and life style through the past one thousand years, which can be called a museum that displays the old civilization. All the houses there are built with stones and woods. For hundreds of years, the local people have built their markets and houses along the riverside. Tourists will be surprised by the spacious and well-built courtyards among the houses everywhere they go.', 'C', 'C', 'B', 'A', 'D', 'B', 'C', 'D', 'B', 'A', 'C', 'A', 'C', 'D', 'D', 'A', 'C', 'D', 'B', 'D', 'C', 'B', 'D', 'A', 'C', 'O', 'M', 'L', 'K', 'N', 'E', 'J', 'H', 'F', 'I', 'E', 'L', 'B', 'H', 'N', 'J', 'F', 'C', 'I', 'G', 'C', 'D', 'C', 'B', 'A', 'A', 'D', 'C', 'D', 'B');
INSERT INTO `answer2` VALUES ('cet6_2016_12_3', 'Dear Walt,\r\n　　I am writing to express my heartfelt gratitude for your help. I am referring to that unfortunate accident the other day, when I was knocked off my bike by a taxi.\r\n　　Most importantly, if it had not been for your timely assistance in giving me first aid, I fear that the consequences might have been much serious. Everyone agrees that it was your quick-witted response in that emergency that has led to this satisfactory outcome. Although nowadays people in mounting numbers talk about the need to be unselfish, we see very few people practice what they preach. If there were more people like you, this world would be a much nicer place.\r\n　　My thanks to you for the help you render me are beyond words.\r\n　　Yours faithfully,\r\n　　XXXX', 'Wuzhen, an ancient water town in Zhejiang, lies at the riverside of Beijing-Hangzhou Grand Canal. It is an attractive town, enjoying many ancient bridges, Chinese style inns and restaurants. Wuzhen did not experience much change in its river system and life style through the past one thousand years, which can be called a museum that displays the old civilization. All the houses there are built with stones and woods. For hundreds of years, the local people have built their markets and houses along the riverside. Tourists will be surprised by the spacious and well-built courtyards among the houses everywhere they go.', 'C', 'C', 'B', 'A', 'D', 'B', 'C', 'D', 'B', 'A', 'C', 'A', 'C', 'D', 'D', 'A', 'C', 'D', 'B', 'D', 'C', 'B', 'D', 'A', 'C', 'O', 'M', 'L', 'K', 'N', 'E', 'J', 'H', 'F', 'I', 'E', 'L', 'B', 'H', 'N', 'J', 'F', 'C', 'I', 'G', 'C', 'D', 'C', 'B', 'A', 'A', 'D', 'C', 'D', 'B');
INSERT INTO `answer2` VALUES ('cet6_2016_6_1', 'Dear Walt,\r\n　　I am writing to express my heartfelt gratitude for your help. I am referring to that unfortunate accident the other day, when I was knocked off my bike by a taxi.\r\n　　Most importantly, if it had not been for your timely assistance in giving me first aid, I fear that the consequences might have been much serious. Everyone agrees that it was your quick-witted response in that emergency that has led to this satisfactory outcome. Although nowadays people in mounting numbers talk about the need to be unselfish, we see very few people practice what they preach. If there were more people like you, this world would be a much nicer place.\r\n　　My thanks to you for the help you render me are beyond words.\r\n　　Yours faithfully,\r\n　　XXXX', 'Wuzhen, an ancient water town in Zhejiang, lies at the riverside of Beijing-Hangzhou Grand Canal. It is an attractive town, enjoying many ancient bridges, Chinese style inns and restaurants. Wuzhen did not experience much change in its river system and life style through the past one thousand years, which can be called a museum that displays the old civilization. All the houses there are built with stones and woods. For hundreds of years, the local people have built their markets and houses along the riverside. Tourists will be surprised by the spacious and well-built courtyards among the houses everywhere they go.', 'C', 'C', 'B', 'A', 'D', 'B', 'C', 'D', 'B', 'A', 'C', 'A', 'C', 'D', 'D', 'A', 'C', 'D', 'B', 'D', 'C', 'B', 'D', 'A', 'C', 'O', 'M', 'L', 'K', 'N', 'E', 'J', 'H', 'F', 'I', 'E', 'L', 'B', 'H', 'N', 'J', 'F', 'C', 'I', 'G', 'C', 'D', 'C', 'B', 'A', 'A', 'D', 'C', 'D', 'B');
INSERT INTO `answer2` VALUES ('cet6_2016_6_2', 'Dear Walt,\r\n　　I am writing to express my heartfelt gratitude for your help. I am referring to that unfortunate accident the other day, when I was knocked off my bike by a taxi.\r\n　　Most importantly, if it had not been for your timely assistance in giving me first aid, I fear that the consequences might have been much serious. Everyone agrees that it was your quick-witted response in that emergency that has led to this satisfactory outcome. Although nowadays people in mounting numbers talk about the need to be unselfish, we see very few people practice what they preach. If there were more people like you, this world would be a much nicer place.\r\n　　My thanks to you for the help you render me are beyond words.\r\n　　Yours faithfully,\r\n　　XXXX', 'Wuzhen, an ancient water town in Zhejiang, lies at the riverside of Beijing-Hangzhou Grand Canal. It is an attractive town, enjoying many ancient bridges, Chinese style inns and restaurants. Wuzhen did not experience much change in its river system and life style through the past one thousand years, which can be called a museum that displays the old civilization. All the houses there are built with stones and woods. For hundreds of years, the local people have built their markets and houses along the riverside. Tourists will be surprised by the spacious and well-built courtyards among the houses everywhere they go.', 'C', 'C', 'B', 'A', 'D', 'B', 'C', 'D', 'B', 'A', 'C', 'A', 'C', 'D', 'D', 'A', 'C', 'D', 'B', 'D', 'C', 'B', 'D', 'A', 'C', 'O', 'M', 'L', 'K', 'N', 'E', 'J', 'H', 'F', 'I', 'E', 'L', 'B', 'H', 'N', 'J', 'F', 'C', 'I', 'G', 'C', 'D', 'C', 'B', 'A', 'A', 'D', 'C', 'D', 'B');

-- ----------------------------
-- Table structure for article
-- ----------------------------
DROP TABLE IF EXISTS `article`;
CREATE TABLE `article` (
  `article_id` int(11) NOT NULL AUTO_INCREMENT,
  `article_chinese` varchar(750) NOT NULL,
  `article_english` varchar(750) NOT NULL,
  `article_time` varchar(20) DEFAULT NULL,
  `article_scan` int(11) DEFAULT NULL,
  `article_like` int(11) DEFAULT NULL,
  `article_other` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`article_id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of article
-- ----------------------------
INSERT INTO `article` VALUES ('1', '暗黄的灯光，仅仅也只能照射过彼此。你、我肩上共同担当的责任，犹如一片灰尘遮掩。怕只怕灯丝的突然熄灭在这无尽的黑夜和数不尽的孤单之中。', 'Dark light, just light each other. The responsibility that \r\nyou and my shoulders take together, such as \r\none dust covers up. Only afraid the light suddenly put\r\n out in theendless dark night and countless\r\n loneliness.', '2017-05-11 16:14:37 ', '123', '12', null);
INSERT INTO `article` VALUES ('2', '我们每个人都像是农夫。洒下良种将有丰收，播下劣种或生满野草便将毁去收成。没有耕耘则会一无所获。我希望未来比过去更加美好，希望未来不会沾染历史的错误与过失。我们都应举目向前，因我们的余生要用未来书写。', 'We are all in the position of the farmer. If we plant a good seed, we reap a good harvest. If our seed\r\n is poor and full of weeds, we reap a useless crop. If we plant nothing at all, we harvest nothing at all. I \r\nwant the future to be better than the past. I do not want it contaminated by the mistakes and errors \r\nwith which history is filled. We should all be concerned about the future because that is where we \r\nwill spend the remainder of our lives.', '2017-05-11 16:14:37 ', '123', '23', null);
INSERT INTO `article` VALUES ('3', '现在我知道，灵魂倍受煎熬的时刻，也正是生命中最多选择与机会的时刻。任何事情的成败取决于我在寻求帮助时是抬起头还是低下头。无论何时，当我被可怕的失败击倒，在最初的阵痛过去之后，我都要想方设法将苦难变成好事。伟大的机遇就在这一刻闪现——这苦涩的根必将迎来满园芬芳！', '  Now I know that there are no times in life when opportunity, the chance to be and do gathers\r\n so richly about my soul when it has to suffer cruel adversity. Then everything depends on whether\r\n I raise my head or lower it in seeking help. \r\n \r\n      Whenever I am struck down, in the future, by any terrible defeat, I will inquire of myself, \r\nafter the first pain has passed, how I can turn that adversity into good. What a great opportunity\r\n that moment may present——to take the bitter root I am holding and transform it into fragrant\r\n garden of flowers.', '2017-05-11 16:14:37 ', '123', '34', null);
INSERT INTO `article` VALUES ('4', ' 如果这是我的末日，那么它就是不朽的纪念日，我把它当成最美好的日子。我要把每分每秒化为甘露，一口一口，细细品尝，满怀感激。我要每一分钟都有价值。我要加倍努力，直到精疲力竭。即使这样，我还要继续努力。今天的每一分钟都胜过昨天的每一小时，最后的也是最好的。假如今天是我生命中的最后一天。如果不是的话，我要跪倒在上苍面前，深深致谢。', 'If it is my last, it will be my greatest moment. This day I will make the best day of my life. \r\nThis day I will drink every minute to its full. I will savor its taste and give thanks. I will make the \r\nevery hour count and each minute I will trade only for something of value. \r\n \r\n    I will labor harder than ever before and push my muscles until they cry for relief, and then\r\n I will continue. Each minute of today will be more fruitful than hours of yesterday. My last\r\n must be my best.I will live this day as if it is my last. And if it is not, I shall fall to my knees \r\nand give thanks to god.\r\n ', '2017-05-11 16:14:37 ', '234', '12', null);
INSERT INTO `article` VALUES ('5', '人生的纷纷扰扰，杂杂乱乱，在一个特定的时间，特定的地点，做脑海中安排了千万遍的事，一次一个步骤，人生难免精致，却也死板，永远没有激情，没有意料之外的惊喜。于是，也只有在心里默默地问：下一班幸福，几点开?', ' Life is full of confusing and disordering particular time, a particular location, do the \r\narranged thing of ten million time in the brain. Step by step , the life is hard to avoid \r\ndelicacy and stiffness, no enthusiasm forever and no unexpected happening of surprising\r\n and pleasing. So, only silently ask myself in mind：next happiness, when will come?', '2017-05-11 16:14:37 ', '234', '12', null);
INSERT INTO `article` VALUES ('6', '一扇通往幸福的门关闭了，另一扇幸福之门打开了，可有多少次啊，我们徘徊在那扇关闭的门前，却忽略了那扇早已为我们开启的新的幸福之门。不要以貌取人，外貌可能会欺骗你；不要追逐财富，财富会消失的。去寻找那个让你笑口常开的人吧，一个微笑就可以使暗淡的日子豁然开朗。去追寻那个令你心灵愉悦的人吧！', 'When the door of happiness closes, another opens, but often times we look so long \r\nat the closed door that we don\'t see the one which has been opened for us. Don\'t go for \r\nlooks, they can deceive. Don\'t go for wealth, even that fades away. Go for someone who\r\n makes you smile because it takes only a smile to make a dark day seem bright. Find \r\nthe one that makes your heart smiles.', '2017-05-11 16:14:37 ', '123', '34', null);
INSERT INTO `article` VALUES ('7', '重要的不是你认识多少人，而是在你离开后，别人会认为是个永远的损失。重要的不是你想念谁，而是爱你的人想念你。重要的是别人会记你多长时间，谁记着你，为什么记着你。过一种有意义的生活不是一件偶然的事情。', ' What will matter is not how many people you knew, but how many will feel a lasting\r\n loss when you\'re gone. What will matter is not your memories, but the memories of \r\nthose who loved you. What will matter is how long you will be remembered, by whom\r\n and for what. Living a life that matters doesn’t happen by accident.', '2017-05-11 16:14:37 ', '123', '56', null);
INSERT INTO `article` VALUES ('8', '珍惜你所拥有的每一个瞬间。昨日已成历史，而明日仍是个谜。今天则是珍贵的礼物，那是它为何被称做“礼物”的原因。', 'Treasure every moment that you have! Yesterday is history, tomorrow is mystery.\r\n Today is a gift. That\'s why it\'s called \"the present\".', '2017-05-11 16:14:37 ', '111', '67', null);
INSERT INTO `article` VALUES ('9', '我们要对我们的人生负责。这不是别人的责任。尽管所有的成功都需要别人的帮助与合作，但我们的成功不能依赖别人来替我们取得。等待好运降临并非上策。 ', 'We Are Responsible for Our Life. And nobody else. Although all success requires the assistance and cooperation of others, our success can never be left to anyone else. Luck is not a strategy. ', '2017-05-11 16:14:37 ', '123', '78', null);
INSERT INTO `article` VALUES ('10', '人生短暂。不管我们活到20岁还是100岁，我们的人生都过得很快。所以我们更加要在有生之年做自己热爱的事情。既然我们还剩多少时日都是未知的，我们应该把每一天当成自己的最后一天来过——况且很有这个可能。 ', 'Life is Short. Whether we live 20 years or 100, our lives pass quickly. All the more reason to spend our life doing what we love. Since we never know how much time we have left, we should live each day as if it is our last—for it just may be. ', '2017-05-11 16:14:37 ', '452', '123', null);
INSERT INTO `article` VALUES ('11', '知识只会越学越多。我们只会增加我们的知识。我们不用放弃一些知识来交换新的知识。我们吸收和掌握知识的能力很可能是无限的。', 'You Can\'t Learn Less. We can only add to our knowledge. We don\'t have to give some of it up in exchange for new knowledge. Our ability to absorb and retain knowledge may just be unlimited. ', '2017-05-11 16:14:37 ', '657', '248', null);
INSERT INTO `article` VALUES ('12', '思路清晰能够产生能量。当我们思路清晰时，我们的效率会更高。清晰的思维能够减少我们的错误，并争取到别人的帮助。当我们思路清晰时，我们就更加强大；当我们烦恼困惑时，我们则变得弱小。', 'Clarity Leads to Power. When we\'re clear, we\'re more effective. Our clarity reduces our mistakes and enables us to enlist the help of others. We are more powerful when we are clear, and we are weaker when we are confused. ', '2017-05-11 16:14:37 ', '897', '605', null);
INSERT INTO `article` VALUES ('13', '种瓜得瓜，种豆得豆。这叫农场定律，也叫回报定律。如果你想继续获得，你就要学会付出。 ', 'What You Sow, You Reap. This is also called The Law of the Farm or The Law of Reciprocity. In order to continue to receive, we must give. ', '2017-05-11 16:14:37 ', '344', '123', null);
INSERT INTO `article` VALUES ('14', '覆水难收。事情既已发生，谁也无法改变。木已成舟，夫复奈何？我们是从事情中吸取教训，还是一直为其所困，这些都取决于我们自己。 ', 'You Can\'t Un-ring a Bell. No one can change what\'s already happened. Whatever is done is done. It\'s up to us whether we use the experience to learn or allow ourselves to be run by the experience. ', '2017-05-11 16:14:37 ', '1233', '249', null);
INSERT INTO `article` VALUES ('15', '信誉建难毁易。信任和声誉是慢慢建立起来的，但却能毁于一旦。 ', 'It Takes a Long Time to Build a Good Reputation and Only a Short While to Ruin It. Trust and credibility is built slowly but can be lost almost instantly. ', '2017-05-11 16:14:37 ', '856', '350', null);
INSERT INTO `article` VALUES ('16', '如果你不相信自己，没有人会相信你。人们是不会尊重或者追随那些没有自信的人的。我认为，你有多自信，世界就有多相信你。', ' If You Don\'t Believe in Yourself, No One Else Will. People don\'t respect or follow anyone who doesn\'t have confidence in themselves. I think the Universe tends to trust us to the degree we trust ourselves. ', '2017-05-11 16:14:37 ', '896', '317', null);
INSERT INTO `article` VALUES ('17', '放弃并不需要勇气。每个都可以放弃。而且大部分也在这么做——放弃梦想和放弃自我。 \r\n', 'It Doesn\'t Take Guts to Quit. Anyone can quit. And most people do—on their dreams and on themselves．', '2017-05-11 16:14:37 ', '1231', '237', null);
INSERT INTO `article` VALUES ('18', '我们能够完成任何我们想做的事情，但不是所有的事情。世界这么大，有太多的选择，太多的事情，而我们只有有限的时间。', 'We Can Accomplish Anything We Want, Just Not EVERYTHING We Want. It\'s too big a world. There are too many options, too many things and only a certain amount of time. ', '2017-05-11 16:14:37 ', '1385', '473', null);

-- ----------------------------
-- Table structure for cet
-- ----------------------------
DROP TABLE IF EXISTS `cet`;
CREATE TABLE `cet` (
  `CET_Primary` int(11) NOT NULL AUTO_INCREMENT,
  `CETID` varchar(14) NOT NULL,
  `CET_info` varchar(50) DEFAULT NULL,
  `CET_entend1` varchar(255) DEFAULT NULL,
  `CET_entend2` int(11) DEFAULT NULL,
  `CET_entend3` varchar(255) DEFAULT NULL,
  `CET_entend4` varchar(255) DEFAULT NULL,
  `CET_entend5` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`CET_Primary`),
  UNIQUE KEY `CETID` (`CETID`),
  UNIQUE KEY `CETID_2` (`CETID`)
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of cet
-- ----------------------------
INSERT INTO `cet` VALUES ('4', 'cet4_2015_12_1', '2015年四级12月第一套', '2017-04-11 11:55', '123', null, null, null);
INSERT INTO `cet` VALUES ('5', 'cet4_2015_12_2', '2015年四级12月第二套', '2017-04-11 11:55', '123', null, null, null);
INSERT INTO `cet` VALUES ('6', 'cet4_2015_12_3', '2015年四级12月第三套', '2017-04-11 11:55', '123', null, null, null);
INSERT INTO `cet` VALUES ('7', 'cet4_2016_12_1', '2016年四级12月第一套', '2017-04-11 11:55', '234', null, null, null);
INSERT INTO `cet` VALUES ('8', 'cet4_2016_12_2', '2016年四级12月第二套', '2017-04-11 11:55', '12', null, null, null);
INSERT INTO `cet` VALUES ('9', 'cet4_2016_12_3', '2016年四级12月第三套', '2017-04-11 11:55', '657', null, null, null);
INSERT INTO `cet` VALUES ('11', 'cet4_2016_6_1', '2016年四级6月第一套', '2017-04-17 11:55', '1203', null, null, null);
INSERT INTO `cet` VALUES ('12', 'cet4_2016_6_2', '2016年四级6月第二套', '2017-04-11 11:55', '786', null, null, null);
INSERT INTO `cet` VALUES ('13', 'cet4_2016_6_3', '2016年四级6月第三套', '2017-03-11 11:55', '569', null, null, null);
INSERT INTO `cet` VALUES ('14', 'cet4_2015_6_1', '2015年四级6月第一套', '2017-04-11 11:55', '123', null, null, null);
INSERT INTO `cet` VALUES ('16', 'cet4_2015_6_2', '2015年四级6月第二套', '2017-04-11 11:55', '123', null, null, null);
INSERT INTO `cet` VALUES ('17', 'cet4_2015_6_3', '2015年四级6月第三套', '2017-04-11 11:55', '213', null, null, null);
INSERT INTO `cet` VALUES ('18', 'cet6_2015_6_2', '2015年六级6月第二套', '2017-04-11 11:55', '45', null, null, null);
INSERT INTO `cet` VALUES ('22', 'cet6_2015_6_1', '2015年六级6月第一套', '2017-04-11 11:55', '123', null, null, null);
INSERT INTO `cet` VALUES ('23', 'cet6_2015_6_3', '2015年六级6月第三套', '2017-04-11 11:55', '21', null, null, null);
INSERT INTO `cet` VALUES ('24', 'cet6_2016_6_2', '2016年六级6月第二套', '2017-04-11 11:55', '123', null, null, null);
INSERT INTO `cet` VALUES ('25', 'cet6_2016_6_1', '2016年六级6月第一套', '2017-04-11 11:55', '234', null, null, null);
INSERT INTO `cet` VALUES ('26', 'cet6_2016_6_3', '2016年六级6月第三套', '2017-04-11 11:55', '34', null, null, null);
INSERT INTO `cet` VALUES ('27', 'cet6_2016_12_1', '2016年六级12月第一套', '2017-04-11 11:55', '564', null, null, null);
INSERT INTO `cet` VALUES ('29', 'cet6_2016_12_2', '2016年六级6月第二套', '2017-04-11 11:55', '123', null, null, null);
INSERT INTO `cet` VALUES ('30', 'cet6_2016_12_3', '2016年六级6月第三套', '2017-04-11 11:55', '123', null, null, null);
INSERT INTO `cet` VALUES ('31', 'cet4_2014_12_1', '2014年四级12月份第一套', '2017-05-11 11:00', '24', null, null, null);
INSERT INTO `cet` VALUES ('36', 'cet4_2014_12_3', '2014年四级12月份第三套', '2017-05-11 11:55', '123', null, null, null);

-- ----------------------------
-- Table structure for cet4
-- ----------------------------
DROP TABLE IF EXISTS `cet4`;
CREATE TABLE `cet4` (
  `cet4_id` char(9) NOT NULL,
  `cet4_vocabulary` varchar(45) DEFAULT NULL,
  `cet4_pronunciation` varchar(40) DEFAULT NULL,
  `cet4_meaning` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`cet4_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of cet4
-- ----------------------------
INSERT INTO `cet4` VALUES ('cet4_0002', '　　aboard', '/ ə’bɔ:d/', 'ad.在船(车)上；上船');
INSERT INTO `cet4` VALUES ('cet4_0003', '　　absolute', '/ ‘æbsəlu:t/', 'a.绝对的；纯粹的');
INSERT INTO `cet4` VALUES ('cet4_0004', '　　absolutely', '/ ‘æbsəlu:tli/', 'ad.完全地；绝对地');
INSERT INTO `cet4` VALUES ('cet4_0005', '　　absorb', '/ əb’sɔ:b/', 'vt.吸收；使专心');
INSERT INTO `cet4` VALUES ('cet4_0006', '     abstract', '/ ’æbstrækt/ ', 'n.摘要');
INSERT INTO `cet4` VALUES ('cet4_0007', '　　abundant', '/ ə’bΛndənt/', 'a.丰富的；大量的');
INSERT INTO `cet4` VALUES ('cet4_0008', '　　abuse', '/ ə’bju:z, ə’bju:s/', 'vt.滥用；虐待 n.滥用');
INSERT INTO `cet4` VALUES ('cet4_0009', '　　academic', '/ ækə’demik/', 'a.学院的；学术的');
INSERT INTO `cet4` VALUES ('cet4_0010', '　　accelerate', '/ æk’seləreit/', 'vt.(使)加快；促进');
INSERT INTO `cet4` VALUES ('cet4_0011', '　　access', '/ ‘ækses/', 'n.接近；通道，入口');
INSERT INTO `cet4` VALUES ('cet4_0012', '　　accidental', '/ æksi’dentl/', 'a.偶然的；非本质的');
INSERT INTO `cet4` VALUES ('cet4_0013', '　　accommodate', '/ ə’kɔmədeit/', 'vt.容纳；供应，供给');
INSERT INTO `cet4` VALUES ('cet4_0014', '　　accommodation', '/ ə,kɔmə’deiʃən/', 'n.招待设备；预定铺位');
INSERT INTO `cet4` VALUES ('cet4_0015', '　　accompany', '/ ə’kΛmpəni/', 'vt.陪伴，陪同；伴随');
INSERT INTO `cet4` VALUES ('cet4_0016', '　　accomplish', '/ ə’kɔmpliʃ/', 'vt.达到(目的)；完成');
INSERT INTO `cet4` VALUES ('cet4_0017', '　　accordance', '/ ə’kɔr:dəns/', 'n.一致；和谐；授予');
INSERT INTO `cet4` VALUES ('cet4_0018', '　　accordingly', '/ ə’kɔr:diŋli/', 'ad.因此，所以；照着');
INSERT INTO `cet4` VALUES ('cet4_0019', '　　account', '/ ə’kaunt/', 'n.记述；解释；帐目');
INSERT INTO `cet4` VALUES ('cet4_0020', '　　accumulate', '/ ə’kju:mjuleit/', 'vt.积累 vi.堆积');
INSERT INTO `cet4` VALUES ('cet4_0025', '　　acquaintance', '/ ə’kweintəns/', 'n.认识；了解；熟人');
INSERT INTO `cet4` VALUES ('cet4_0027', '　　acre', '/ ‘eikə/', 'n.英亩(=6.07亩)');
INSERT INTO `cet4` VALUES ('cet4_0028', '　　adapt', '/ ə’dæpt/', 'vt.使适应；改编');
INSERT INTO `cet4` VALUES ('cet4_0029', '　　addition', '/ ə’diʃən/', 'n.加，加法；附加物');
INSERT INTO `cet4` VALUES ('cet4_0030', '　　additional', '/ ə’diʃənl/', 'a.附加的，追加的');
INSERT INTO `cet4` VALUES ('cet4_0031', '　　address', '/ ə’dres/', 'n.地址；演说；谈吐');
INSERT INTO `cet4` VALUES ('cet4_0032', '　　adequate', '/ ‘ædikwit/', 'a.足够的；可以胜任的');
INSERT INTO `cet4` VALUES ('cet4_0033', '　　adjust', '/ ə’dʒΛst/', 'vt.调整，调节；校正');
INSERT INTO `cet4` VALUES ('cet4_0034', '　　administration', '/ ədminis’treiʃən/', 'n.管理；管理部门');
INSERT INTO `cet4` VALUES ('cet4_0035', '　　admission', '/ əd’miʃən/', 'n.允许进入；承认');
INSERT INTO `cet4` VALUES ('cet4_0036', '　　admit', '/ əd’mit/', 'vt.承认；准许…进入');
INSERT INTO `cet4` VALUES ('cet4_0037', '　　advance', '/ əd’va:ns/', 'vi.前进；提高 n.进展');
INSERT INTO `cet4` VALUES ('cet4_0038', '　　advanced', '/ əd’va:nst/', 'a.先进的；高级的');
INSERT INTO `cet4` VALUES ('cet4_0039', '　　adventure', '/ əd’ventʃə/', 'n.冒险；惊险活动');
INSERT INTO `cet4` VALUES ('cet4_0040', '　　advisable', '/ əd’vaizəbl/', 'n.明智的；可取的');
INSERT INTO `cet4` VALUES ('cet4_0041', '　　affair', '/ ə’feə/', 'n.事情，事件；事务');
INSERT INTO `cet4` VALUES ('cet4_0042', '　　affect', '/ ə’fekt/', 'vt.影响；感动');
INSERT INTO `cet4` VALUES ('cet4_0043', '　　affection', '/ ə’fekʃən/', 'n.慈爱，爱；爱慕');
INSERT INTO `cet4` VALUES ('cet4_0044', '　　afford', '/ ə’fɔr:d/', 'vt.担负得起…；提供');
INSERT INTO `cet4` VALUES ('cet4_0045', '　　afterward', '/ ‘a:ftəwəd(z)/', 'ad.后来，以后');
INSERT INTO `cet4` VALUES ('cet4_0046', '　　age', '/ eidʒ/', 'vt.变老');
INSERT INTO `cet4` VALUES ('cet4_0048', '　　aircraft', '/ ‘eəkra:ft/', 'n.飞机，飞行器');
INSERT INTO `cet4` VALUES ('cet4_0049', '　　alarm', '/ ə’la:m/', 'n.惊恐，忧虑；警报');
INSERT INTO `cet4` VALUES ('cet4_0050', '　　alcohol', '/ ‘ælkəhɔl/', 'n.酒精，乙醇');
INSERT INTO `cet4` VALUES ('cet4_0051', '　　alike', '/ ə’laik/', 'a.同样的，相同的');
INSERT INTO `cet4` VALUES ('cet4_0052', '　　alloy', '/ ‘ælɔi, ə’lɔi/', 'n.合金；(金属的)成色');
INSERT INTO `cet4` VALUES ('cet4_0053', '　　alphabet', '/ ‘ælfəbit/', 'n.字母表，字母系统');
INSERT INTO `cet4` VALUES ('cet4_0054', '　　alter', '/ ‘ɔ:ltə/', 'vt.改变，变更；改做');
INSERT INTO `cet4` VALUES ('cet4_0055', '　　alternative', '/ ɔ:l’tə:nətiv/', 'n.替换物；取舍，抉择');
INSERT INTO `cet4` VALUES ('cet4_0056', '　　altitude', '/ ‘æltitju:d/', 'n.高，高度；高处');
INSERT INTO `cet4` VALUES ('cet4_0057', '　　aluminium', '/ ælju’minjəm/', 'n.铝');
INSERT INTO `cet4` VALUES ('cet4_0058', '　　amaze', '/ ə’meiz/', 'vt.使惊奇，使惊愕');
INSERT INTO `cet4` VALUES ('cet4_0059', '　　ambulance', '/ ‘æmbjuləns/', 'n.救护车；野战医院');
INSERT INTO `cet4` VALUES ('cet4_006', 'abstract', '/ ’æbstrækt/', 'n.摘要');
INSERT INTO `cet4` VALUES ('cet4_0060', '　　amongst', '/ ə’mΛŋst/', 'prep在…之中(=among)');
INSERT INTO `cet4` VALUES ('cet4_0061', '　　amuse', '/ ə’mju:z/', 'vt.逗…乐；给…娱乐');
INSERT INTO `cet4` VALUES ('cet4_0062', '　　analyse', '/ ‘ænəlaiz/', 'vt.分析，分解，解析');
INSERT INTO `cet4` VALUES ('cet4_0063', '　　analysis', '/ ə’næləsis/', 'n.分析，分解，解析');
INSERT INTO `cet4` VALUES ('cet4_0064', '　　ancestor', '/ ‘ænsistə/', 'n.祖宗，祖先');
INSERT INTO `cet4` VALUES ('cet4_0065', '　　anchor', '/ ‘æŋkə/', 'n.锚 vi.抛锚，停泊');
INSERT INTO `cet4` VALUES ('cet4_0066', '　　ancient', '/ ‘einʃənt/', 'a.古代的，古老的');
INSERT INTO `cet4` VALUES ('cet4_0067', '　　ankle', '/ ‘æŋkl/', 'n.踝，踝节部');
INSERT INTO `cet4` VALUES ('cet4_0068', '　　announce', '/ ə’nauns/', 'vt.宣布，宣告，发表');
INSERT INTO `cet4` VALUES ('cet4_0069', '　　annoy', '/ ə’nɔi/', 'vt.使恼怒；打搅');
INSERT INTO `cet4` VALUES ('cet4_0070', '　　annual', '/ ‘ænjuəl/', 'a.每年的 n.年报');
INSERT INTO `cet4` VALUES ('cet4_0071', '　　anticipate', '/ æn’tisipeit/', 'vt.预料，预期，期望');
INSERT INTO `cet4` VALUES ('cet4_0072', '　　anxiety', '/ æŋg’zaiəti/', 'n.焦虑，忧虑；渴望');
INSERT INTO `cet4` VALUES ('cet4_0073', '　　anxious', '/ ‘æŋkʃəs/', 'a.忧虑的；渴望的');
INSERT INTO `cet4` VALUES ('cet4_0074', '　　apart', '/ ə’pa:t/', 'ad.相隔；分开；除去');
INSERT INTO `cet4` VALUES ('cet4_0075', '　　apologize', '/ ə’pɔlədʒaiz/', 'vi.道歉，谢罪，认错');
INSERT INTO `cet4` VALUES ('cet4_0076', '　　apparatus', '/ ,æpə’reitəs/', 'n.器械，仪器；器官');
INSERT INTO `cet4` VALUES ('cet4_0077', '　　appeal', '/ ə’pi:l/', 'vi.&n.呼吁；申述');
INSERT INTO `cet4` VALUES ('cet4_0078', '　　appetite', '/ ‘æpitait/', 'n.食欲，胃口；欲望');
INSERT INTO `cet4` VALUES ('cet4_0079', '　　appliance', '/ ə’plaiəns/', 'n.用具，器具，器械');
INSERT INTO `cet4` VALUES ('cet4_0080', '　　applicable', '/ ‘æplikəbl/', 'a.能应用的；适当的');
INSERT INTO `cet4` VALUES ('cet4_0081', '　　application', '/ æpli’keiʃən/', 'n.请求，申请；施用');
INSERT INTO `cet4` VALUES ('cet4_0082', '　　appɔint', '/ ə’pɔint/', 'vt.任命，委任；约定');
INSERT INTO `cet4` VALUES ('cet4_0083', '　　appreciate', '/ ə’pri:ʃieit/', 'vt.欣赏；领会；感谢');
INSERT INTO `cet4` VALUES ('cet4_0084', '　　approval', '/ ə’pru:vəl/', 'n.赞成，同意；批准');
INSERT INTO `cet4` VALUES ('cet4_0085', '　　approve', '/ ə’pru:v/', 'vt.赞成，称许；批准');
INSERT INTO `cet4` VALUES ('cet4_0086', '　　approximate', '/ ə’prɔksimit/', 'a.近似的 vt.近似');
INSERT INTO `cet4` VALUES ('cet4_0087', '　　arbitrary', '/ ‘a:bitrəri/', 'a.随心所欲的；专断的');
INSERT INTO `cet4` VALUES ('cet4_0088', '　　architecture', '/ ‘a:kitektʃə/', 'n.建筑学；建筑式样');
INSERT INTO `cet4` VALUES ('cet4_0089', '　　argue', '/ ‘a:gju:/', 'vi.争论，争辩，辩论');
INSERT INTO `cet4` VALUES ('cet4_0090', '　　argument', '/ ‘a:gju:mənt/', 'n.争论，辩论；理由');
INSERT INTO `cet4` VALUES ('cet4_0091', '　　arise', '/ ə’raiz/', 'vi.出现；由…引起');
INSERT INTO `cet4` VALUES ('cet4_0092', '　　arithmetic', '/ ə’riθmətik/', 'n.算术，四则运算');
INSERT INTO `cet4` VALUES ('cet4_0093', '　　arouse', '/ ə’rauz/', 'vt.引起，唤起；唤醒');
INSERT INTO `cet4` VALUES ('cet4_0094', '　　article', '/ ‘a:tikl/', 'n.条款；物品');
INSERT INTO `cet4` VALUES ('cet4_0095', '　　artificial', '/ a:ti’fiʃəl/', 'a.人工的；娇揉造作的');
INSERT INTO `cet4` VALUES ('cet4_0096', '　　artistic', '/ a:’tistik/', 'a.艺术的；艺术家的');
INSERT INTO `cet4` VALUES ('cet4_0097', '　　ash', '/ æʃ/', 'n.灰，灰末；骨灰');
INSERT INTO `cet4` VALUES ('cet4_0098', '　　ashamed', '/ ə’ʃeimd/', 'a.惭愧(的)；羞耻(的)');
INSERT INTO `cet4` VALUES ('cet4_0099', '　　aspect', '/ ‘æspekt/', 'n.方面；样子，外表');
INSERT INTO `cet4` VALUES ('cet4_0100', '　　assemble', '/ ə’sembl/', 'vt.集合，召集；装配');
INSERT INTO `cet4` VALUES ('cet4_0101', '　　assembly', '/ ə’sembli/', 'n.集合；集会；装配');
INSERT INTO `cet4` VALUES ('cet4_0102', '　　assess', '/ ə’ses/', 'vt.对(财产等)估价');
INSERT INTO `cet4` VALUES ('cet4_0103', '　　assign', '/ ə’sain/', 'vt.指派；分配；指定');
INSERT INTO `cet4` VALUES ('cet4_0104', '　　assist', '/ ə’sist/', 'vt.援助，帮助；搀扶');
INSERT INTO `cet4` VALUES ('cet4_0105', '　　assistance', '/ ə’sistəns/', 'n. 协助,援助');
INSERT INTO `cet4` VALUES ('cet4_0106', '　　associate', '/ ə’səuʃieit/', 'vi.交往 n.伙伴，同事');
INSERT INTO `cet4` VALUES ('cet4_0107', '　　association', '/ əsəusi’eiʃən/', 'n.协会，团体；联合');
INSERT INTO `cet4` VALUES ('cet4_0108', '　　assume', '/ ə’sju:m/', 'vt.假定；承担；呈现');
INSERT INTO `cet4` VALUES ('cet4_0109', '　　assure', '/ ə’ʃuə/', 'vt.使确信；向…保证');
INSERT INTO `cet4` VALUES ('cet4_0110', '　　astonish', '/ əs’tɔniʃ/', 'vt.使惊讶，使吃惊');
INSERT INTO `cet4` VALUES ('cet4_0111', '　　astronaut', '/ ‘æstʃəunɔ:t/', 'n.宇宙航行员，宇航员');
INSERT INTO `cet4` VALUES ('cet4_0112', '　　ætlantic', '/ ət’læntik/', 'a.大西洋的 n.大西洋');
INSERT INTO `cet4` VALUES ('cet4_0113', '　　atom', '/ ‘ætəm/', 'n.原子；微粒；微量');
INSERT INTO `cet4` VALUES ('cet4_0114', '　　atomic', '/ ə’tɔmik/', 'a.原子的；原子能的');
INSERT INTO `cet4` VALUES ('cet4_0115', '　　attach', '/ ə’tætʃ/', 'vt.缚，系，贴；附加');
INSERT INTO `cet4` VALUES ('cet4_0116', '　　attain', '/’tein/', 'vt.达到，获得，完成');
INSERT INTO `cet4` VALUES ('cet4_0117', '　　attempt', '/ ə’tempt/', 'vt.尝试，试图 n.企图');
INSERT INTO `cet4` VALUES ('cet4_0118', '　　attend', '/ ə’tend/', 'vt.出席；照顾，护理');
INSERT INTO `cet4` VALUES ('cet4_0119', '　　attribute', '/ ‘ætribju:t/', 'vt.把…归因于 n.属性');
INSERT INTO `cet4` VALUES ('cet4_0120', '　　audience', '/ ‘ɔ:djəns/', 'n.听众，观众，读者');
INSERT INTO `cet4` VALUES ('cet4_0121', '　　authority', '/ ɔ:’θɔriti/', 'n.当局，官方；权力');
INSERT INTO `cet4` VALUES ('cet4_0122', '　　automatic', '/ ɔ:tə’mætik/', 'a.自动的；机械的');
INSERT INTO `cet4` VALUES ('cet4_0123', '　　automobile', '/ ‘ɔ:təməbi:l/', 'n.汽车，机动车');
INSERT INTO `cet4` VALUES ('cet4_0124', '　　auxiliary', '/ ɔ:g’ziljəri/', 'a.辅助的；附属的');
INSERT INTO `cet4` VALUES ('cet4_0125', '　　available', '/ ə’veiləbl/', 'a.可利用的；通用的');
INSERT INTO `cet4` VALUES ('cet4_0126', '　　avenue', '/ ‘ævinju:/', 'n.林荫道，道路；大街');
INSERT INTO `cet4` VALUES ('cet4_0127', '　　await', '/ ə’weit/', 'vt.等候，期待');
INSERT INTO `cet4` VALUES ('cet4_0128', '　　awake', '/ ə’weik/', 'a.醒着的 vt.唤醒');
INSERT INTO `cet4` VALUES ('cet4_0129', '　　award', '/ ə’wɔ:d/', 'n.奖，奖品；判定');
INSERT INTO `cet4` VALUES ('cet4_0130', '　　aware', '/ ə’weə/', 'a.知道的，意识到的');
INSERT INTO `cet4` VALUES ('cet4_0131', '　　awful', '/ ‘ɔ:ful/', 'a.令人不愉快的');
INSERT INTO `cet4` VALUES ('cet4_0132', '　　awkward', '/ ‘ɔ:kwəd/', 'a.笨拙的；尴尬的');
INSERT INTO `cet4` VALUES ('cet4_0133', '　　ax', '/ æks/', 'n.斧子');
INSERT INTO `cet4` VALUES ('cet4_0134', 'baby', '/ ‘beibi/', 'n.婴儿；孩子气的人');
INSERT INTO `cet4` VALUES ('cet4_0135', '　　back', '/ bæk/', 'ad.在后；回原处；回');
INSERT INTO `cet4` VALUES ('cet4_0136', '　　background', '/ ‘bækgraund/', 'n.背景，后景，经历');
INSERT INTO `cet4` VALUES ('cet4_0137', '　　backward', '/ ‘bækwəd/', 'a.向后的；倒的 ad.倒');
INSERT INTO `cet4` VALUES ('cet4_0138', '　　bacteria', '/ bæk’tiəriə/', 'n.细菌');
INSERT INTO `cet4` VALUES ('cet4_0139', '　　bad', '/ bæd/', 'a.坏的，恶的；严重的');
INSERT INTO `cet4` VALUES ('cet4_0140', '　　badly', '/ ‘bædli/', 'ad.坏，差；严重地');
INSERT INTO `cet4` VALUES ('cet4_0141', '　　bag', '/ bæg/', 'n.袋，包，钱包，背包');
INSERT INTO `cet4` VALUES ('cet4_0143', '　　bake', '/ beik/', 'vt.烤，烘，焙；烧硬');
INSERT INTO `cet4` VALUES ('cet4_0144', '　　balance', '/ ‘bæləns/', 'vt.使平衡；称 n.天平');
INSERT INTO `cet4` VALUES ('cet4_0145', '　　ball', '/ bɔ:l/', 'n.球，球状物；舞会');
INSERT INTO `cet4` VALUES ('cet4_0146', '　　balloon', '/ bə’lu:n/', 'n.气球，玩具气球');
INSERT INTO `cet4` VALUES ('cet4_0147', '　　banana', '/ bə’na:nə/', 'n.香蕉；芭蕉属植物');
INSERT INTO `cet4` VALUES ('cet4_0148', '　　band', '/ bænd/', 'n.乐队；带；波段');
INSERT INTO `cet4` VALUES ('cet4_0149', '　　bang', '/ bæŋ/', 'n.巨响，枪声；猛击');
INSERT INTO `cet4` VALUES ('cet4_0150', '　　bank', '/ bæŋk/', 'n.银行；库；岩，堤');
INSERT INTO `cet4` VALUES ('cet4_0151', '　　bar', '/ ba:/', 'n.酒吧间；条，杆；栅');
INSERT INTO `cet4` VALUES ('cet4_0152', '　　barber', '/ ‘ba:bə/', 'n.理发师');
INSERT INTO `cet4` VALUES ('cet4_0153', '　　bare', '/ beə/', 'a.赤裸的；仅仅的');
INSERT INTO `cet4` VALUES ('cet4_0154', '　　bargain', '/ ‘ba:gin/', 'n.交易 vi.议价；成交');
INSERT INTO `cet4` VALUES ('cet4_0155', '　　barrel', '/ ‘bærəl/', 'n.桶；圆筒；枪管');
INSERT INTO `cet4` VALUES ('cet4_0156', '　　barrier', '/ ‘bæriə/', 'n.栅栏，屏障；障碍');
INSERT INTO `cet4` VALUES ('cet4_0157', '　　base', '/ beis/', 'n.基础，底层；基地');
INSERT INTO `cet4` VALUES ('cet4_0158', '　　basic', '/ ‘beisik/', 'a.基本的，基础的');
INSERT INTO `cet4` VALUES ('cet4_0159', '　　basically', '/ ‘beisikəli/', 'ad.基本上');
INSERT INTO `cet4` VALUES ('cet4_0160', '　　basin', '/ ‘beisn/', 'n.盆，洗脸盆；盆地');
INSERT INTO `cet4` VALUES ('cet4_0161', '　　basis', '/ ‘beisis/', 'n.基础，根据');
INSERT INTO `cet4` VALUES ('cet4_0162', '　　basket', '/ ‘ba:skit/', 'n.篮，篓，筐');
INSERT INTO `cet4` VALUES ('cet4_0163', '　　basketball', '/ ‘ba:skitbɔ:l/', 'n.篮球；篮球运动');
INSERT INTO `cet4` VALUES ('cet4_0164', '　　bath', '/ ba:θ/', 'n.浴，洗澡；浴缸');
INSERT INTO `cet4` VALUES ('cet4_0165', '　　bathe', '/ beið/', 'vt.给…洗澡；弄湿');
INSERT INTO `cet4` VALUES ('cet4_0166', '　　bathroom', '/ ‘ba:θrum/', 'n.浴室；盥洗室');
INSERT INTO `cet4` VALUES ('cet4_0167', '　　battery', '/ ‘bætəri/', 'n.电池；一套，一组');
INSERT INTO `cet4` VALUES ('cet4_0168', '　　battle', '/ ‘bætl/', 'n.战役；斗争 vi.作战');
INSERT INTO `cet4` VALUES ('cet4_0169', '　　bay', '/ bei/', 'n.湾；山脉中的凹处');
INSERT INTO `cet4` VALUES ('cet4_0170', '　　be', '/ bi:/', 'aux.v.&vi.是，在，做');
INSERT INTO `cet4` VALUES ('cet4_0171', '　　beach', '/ bi:tʃ/', 'n.海滩，湖滩，河滩');
INSERT INTO `cet4` VALUES ('cet4_0172', '　　beam', '/ bi:m/', 'n.梁；横梁；束，柱');
INSERT INTO `cet4` VALUES ('cet4_0173', '　　bean', '/ bi:n/', 'n.豆，蚕豆');
INSERT INTO `cet4` VALUES ('cet4_0174', '　　bear', '/ beə/', 'n.熊；粗鲁的人');
INSERT INTO `cet4` VALUES ('cet4_0175', '　　bear', '/ beə/', 'vt.容忍；负担；生育');
INSERT INTO `cet4` VALUES ('cet4_0176', '　　beard', '/ biəd/', 'n.胡须，络腮胡子');
INSERT INTO `cet4` VALUES ('cet4_0177', '　　beast', '/ bi:st/', 'n.兽，野兽；牲畜');
INSERT INTO `cet4` VALUES ('cet4_0178', '　　beat', '/ bi:t/', 'vt.&vi.打，敲；打败');
INSERT INTO `cet4` VALUES ('cet4_0179', '　　beautiful', '/ ‘bju:tiful/', 'a.美的，美丽的');
INSERT INTO `cet4` VALUES ('cet4_0180', '　　beauty', '/ ‘bju:ti/', 'n.美，美丽；美人');
INSERT INTO `cet4` VALUES ('cet4_0181', '　　because', '/ bi’kɔz/', 'conj.由于，因为');
INSERT INTO `cet4` VALUES ('cet4_0182', '　　become', '/ bi’kΛm/', 'vi.变成；成为，变得');
INSERT INTO `cet4` VALUES ('cet4_0183', '　　bed', '/ bed/', 'n.床，床位；圃；河床');
INSERT INTO `cet4` VALUES ('cet4_0184', '　　bee', '/ bi:/', 'n.蜂，密蜂；忙碌的人');
INSERT INTO `cet4` VALUES ('cet4_0185', '　　beef', '/ bi:f/', 'n.牛肉；菜牛');
INSERT INTO `cet4` VALUES ('cet4_0186', '　　beer', '/ biə/', 'n.啤酒');
INSERT INTO `cet4` VALUES ('cet4_0187', '　　before', '/ bi’fɔ:/', 'prep.在…以前；向…');
INSERT INTO `cet4` VALUES ('cet4_0188', '　　beg', '/ beg/', 'vt.&vi.乞求；请求');
INSERT INTO `cet4` VALUES ('cet4_0189', '　　begin', '/ bi’gin/', 'vi.开始 vt.开始');
INSERT INTO `cet4` VALUES ('cet4_0190', '　　beginning', '/ bi’giniŋ/', 'n.开始，开端；起源');
INSERT INTO `cet4` VALUES ('cet4_0191', '　　behalf', '/ bi’ha:f/', 'n.利益，维护，支持');
INSERT INTO `cet4` VALUES ('cet4_0192', '　　behave', '/ bi’heiv/', 'vi.表现，举止；运转');
INSERT INTO `cet4` VALUES ('cet4_0193', '　　behavior', '/ bi’heivjə/', 'n.行为，举止，态度');
INSERT INTO `cet4` VALUES ('cet4_0195', '　　being', '/ ‘bi:iŋ/', 'n.存在；生物；生命');
INSERT INTO `cet4` VALUES ('cet4_0196', '　　belief', '/ bi’li:f/', 'n.信任，相信；信念');
INSERT INTO `cet4` VALUES ('cet4_0197', '　　believe', '/ bi’li:v/', 'vt.相信；认为');
INSERT INTO `cet4` VALUES ('cet4_0198', '　　bell', '/ bel/', 'n.钟，铃，门铃；钟声');
INSERT INTO `cet4` VALUES ('cet4_0199', '　　belong', '/ bi’lɔŋ/', 'vi.属于，附属');
INSERT INTO `cet4` VALUES ('cet4_0200', '　　below', '/ bi’ləu/', 'prep.在…下面(以下)');
INSERT INTO `cet4` VALUES ('cet4_0201', '　　belt', '/ belt/', 'n.带，腰带；皮带；区');
INSERT INTO `cet4` VALUES ('cet4_0202', '　　bench', '/ bentʃ/', 'n.长凳，条凳；工作台');
INSERT INTO `cet4` VALUES ('cet4_0203', '　　bend', '/ bend/', 'vt.使弯曲 vi.弯曲');
INSERT INTO `cet4` VALUES ('cet4_0204', '　　beneath', '/ bi’ni:θ/', 'prep.在…下方');
INSERT INTO `cet4` VALUES ('cet4_0205', '　　beneficial', '/ beni’fiʃəl/', 'a.有利的，有益的');
INSERT INTO `cet4` VALUES ('cet4_0206', '　　benefit', '/ ‘benifit/', 'n.利益；恩惠；津贴');
INSERT INTO `cet4` VALUES ('cet4_0207', '　　beside', '/ bi’said/', 'prep.在…旁边');
INSERT INTO `cet4` VALUES ('cet4_0208', '　　besides', '/ bi’saidz/', 'ad.而且prep.除…之外');
INSERT INTO `cet4` VALUES ('cet4_0209', '　　best', '/ best/', 'a.最好的；最大的');
INSERT INTO `cet4` VALUES ('cet4_0210', '　　bet', '/ bet/', 'vt.&vi.&n.打赌');
INSERT INTO `cet4` VALUES ('cet4_0211', '　　better', '/ ‘betə/', 'a.较好的 ad.更好地');
INSERT INTO `cet4` VALUES ('cet4_0212', '　　between', '/ bi’twi:n/', 'prep.在…中间');
INSERT INTO `cet4` VALUES ('cet4_0213', '　　beyond', '/ bi’jɔnd/', 'prep.在…的那边');
INSERT INTO `cet4` VALUES ('cet4_0214', '　　Bible', '/ ‘baibl/', 'n.基督教《圣经》');
INSERT INTO `cet4` VALUES ('cet4_0215', '　　bicycle', '/ ‘baisikl/', 'n.自行车，脚踏车');
INSERT INTO `cet4` VALUES ('cet4_0216', '　　big', '/ big/', 'a.大的，巨大的');
INSERT INTO `cet4` VALUES ('cet4_0217', '　　bike', '/ baik/', 'n.自行车 vi.骑自行车');
INSERT INTO `cet4` VALUES ('cet4_0218', '　　bill', '/ bil/', 'n.账单；招贴；票据');
INSERT INTO `cet4` VALUES ('cet4_0219', '　　billion', '/ ‘biljən/', 'num.万亿(英)');
INSERT INTO `cet4` VALUES ('cet4_0220', '　　bind', '/ baind/', 'vt.捆绑；包扎；装钉');
INSERT INTO `cet4` VALUES ('cet4_0221', '　　biology', '/ bai’ɔlədʒi/', 'n.生物学；生态学');
INSERT INTO `cet4` VALUES ('cet4_0222', '　　bird', '/ bə:d/', 'n.鸟，禽');
INSERT INTO `cet4` VALUES ('cet4_0223', '　　birth', '/ bə:θ/', 'n.分娩，出生；出身');
INSERT INTO `cet4` VALUES ('cet4_0224', '　　birthday', '/ ‘bə:θdi/', 'n.生日，诞生的日期');
INSERT INTO `cet4` VALUES ('cet4_0225', '　　biscuit', '/ ‘biskit/', 'n.(英)饼干；(美)软饼');
INSERT INTO `cet4` VALUES ('cet4_0226', '　　bit', '/ bit/', 'n.一点，一些，小片');
INSERT INTO `cet4` VALUES ('cet4_0227', '　　bite', '/ bait/', 'vt.咬，叮，螫；剌穿');
INSERT INTO `cet4` VALUES ('cet4_0228', '　　bitter', '/ ‘bitə/', 'a.痛苦的；严寒的');
INSERT INTO `cet4` VALUES ('cet4_0229', '　　black', '/ blæk/', 'a.黑色的；黑暗的');
INSERT INTO `cet4` VALUES ('cet4_0230', '　　blackboard', '/ ‘blækbɔ:d/', 'n.黑板');
INSERT INTO `cet4` VALUES ('cet4_0231', '　　blade', '/ bleid/', 'n.刀刃，刀片；叶片');
INSERT INTO `cet4` VALUES ('cet4_0232', '　　blame', '/ bleim/', 'vt.责备，把…归咎于');
INSERT INTO `cet4` VALUES ('cet4_0233', '　　blank', '/ blæŋk/', 'a.空白的 n.空白');
INSERT INTO `cet4` VALUES ('cet4_0234', '　　blanket', '/ ‘blæŋkit/', 'n.毛毯，毯子，羊毛毯');
INSERT INTO `cet4` VALUES ('cet4_0235', '　　blast', '/ bla:st/', 'n.爆炸，冲击波 vt.炸');
INSERT INTO `cet4` VALUES ('cet4_0236', '　　bleed', '/ bli:d/', 'vi.出血，流血；泌脂');
INSERT INTO `cet4` VALUES ('cet4_0237', '　　blend', '/ blend/', 'vt.&vi.&n.混和');
INSERT INTO `cet4` VALUES ('cet4_0238', '　　blind', '/ blaind/', 'a.瞎的；盲目的');
INSERT INTO `cet4` VALUES ('cet4_0239', '　　block', '/ blɔk/', 'n.街区 vt.堵塞，拦阻');
INSERT INTO `cet4` VALUES ('cet4_0240', '　　blood', '/ blΛd/', 'n.血，血液；血统');
INSERT INTO `cet4` VALUES ('cet4_0241', '　　bloom', '/ blu:m/', 'n.花；开花，开花期');
INSERT INTO `cet4` VALUES ('cet4_0242', '　　blow', '/ bləu/', 'vi.吹，吹动；吹响');
INSERT INTO `cet4` VALUES ('cet4_0243', '　　blue', '/ blu:/', 'a.蓝色的 n.蓝色');
INSERT INTO `cet4` VALUES ('cet4_0244', '　　board', '/ bɔ:d/', 'n.板 vt.上(船、车等)');
INSERT INTO `cet4` VALUES ('cet4_0245', '　　boast', '/ bəust/', 'vi.自夸 vt.吹嘘');
INSERT INTO `cet4` VALUES ('cet4_0246', '　　boat', '/ bəut/', 'n.小船，艇；渔船');
INSERT INTO `cet4` VALUES ('cet4_0247', '　　body', '/ ‘bɔdi/', 'n.身体；主体；尸体');
INSERT INTO `cet4` VALUES ('cet4_0248', '　　bɔil', '/ bɔil/', 'vi.沸腾；汽化vt.煮沸');
INSERT INTO `cet4` VALUES ('cet4_0249', '　　bold', '/ bəuld/', 'a.大胆的；冒失的');
INSERT INTO `cet4` VALUES ('cet4_0250', '　　bolt', '/ bəult/', 'n.螺栓；插销 vt.闩门');
INSERT INTO `cet4` VALUES ('cet4_0251', '　　bomb', '/ bɔm/', 'n.炸弹 vt.轰炸');
INSERT INTO `cet4` VALUES ('cet4_0252', '　　bond', '/ bɔnd/', 'n.联结，联系；公债');
INSERT INTO `cet4` VALUES ('cet4_0253', '　　bone', '/ bəun/', 'n.骨，骨骼');
INSERT INTO `cet4` VALUES ('cet4_0254', '　　book', '/ buk/', 'n.书，书籍 vt.预定');
INSERT INTO `cet4` VALUES ('cet4_0255', '　　boot', '/ bu:t/', 'n.靴子，长统靴');
INSERT INTO `cet4` VALUES ('cet4_0256', '　　border', '/ ‘bɔ:də/', 'n.边，边缘；边界');
INSERT INTO `cet4` VALUES ('cet4_0257', '　　bore', '/ bɔ:/', 'vt.使厌烦；钻，挖');
INSERT INTO `cet4` VALUES ('cet4_0258', '　　born', '/ bɔ:n/', 'a.天生的；出生的');
INSERT INTO `cet4` VALUES ('cet4_0259', '　　borrow', '/ ‘bɔrəu/', 'vt.借，借用，借人');
INSERT INTO `cet4` VALUES ('cet4_0260', '　　boss', '/ bɔs/', 'n.老板，上司 vt.指挥');
INSERT INTO `cet4` VALUES ('cet4_0261', '　　both', '/ bəuθ/', 'pron.两者(都)');
INSERT INTO `cet4` VALUES ('cet4_0262', '　　bother', '/ ‘bɔðə/', 'vt.烦扰，迷惑 n.麻烦');
INSERT INTO `cet4` VALUES ('cet4_0263', '　　bottle', '/ ‘bɔtl/', 'n.瓶，酒瓶；一瓶');
INSERT INTO `cet4` VALUES ('cet4_0264', '　　bottom', '/ ‘bɔtəm/', 'n.底，底部，根基');
INSERT INTO `cet4` VALUES ('cet4_0265', '　　bounce', '/ bauns/', 'vi.反跳，弹起；跳起');
INSERT INTO `cet4` VALUES ('cet4_0266', '　　bound', '/ baund/', 'a.一定的；有义务的');
INSERT INTO `cet4` VALUES ('cet4_0267', '　　boundary', '/ ‘baundəri/', 'n.分界线，办界');
INSERT INTO `cet4` VALUES ('cet4_0268', '　　bow', '/ bau/', 'n.弓；蝴蝶结；鞠躬');
INSERT INTO `cet4` VALUES ('cet4_0269', '　　bowl', '/ bəul/', 'n.碗，钵；碗状物');
INSERT INTO `cet4` VALUES ('cet4_0270', '　　box', '/ bɔks/', 'n.箱，盒；包箱');
INSERT INTO `cet4` VALUES ('cet4_0271', '　　box', '/ bɔks/', 'vi. 拳击，打拳');
INSERT INTO `cet4` VALUES ('cet4_0272', '　　boy', '/ bɔi/', 'n.男孩，少年；家伙');
INSERT INTO `cet4` VALUES ('cet4_0273', '　　brain', '/ brein/', 'n.脑，脑髓；脑力');
INSERT INTO `cet4` VALUES ('cet4_0274', '　　brake', '/ breik/', 'n.闸，刹车 vi.制动');
INSERT INTO `cet4` VALUES ('cet4_0275', '　　branch', '/ bra:ntʃ/', 'n.树枝；分部；分科');
INSERT INTO `cet4` VALUES ('cet4_0276', '　　brand', '/ brænd/', 'n.商品；烙印 vt.铭刻');
INSERT INTO `cet4` VALUES ('cet4_0277', '　　brass', '/ bra:s/', 'n.黄铜；黄铜器');
INSERT INTO `cet4` VALUES ('cet4_0278', '　　brave', '/ breiv/', 'a.勇敢的，华丽的');
INSERT INTO `cet4` VALUES ('cet4_0279', '　　bread', '/ bred/', 'n.面包；食物，粮食');
INSERT INTO `cet4` VALUES ('cet4_0280', '　　breadth', '/ bredð/', 'n.宽度，幅度；幅面');
INSERT INTO `cet4` VALUES ('cet4_0281', '　　break', '/ breik/', 'vt.打破；损坏；破坏');
INSERT INTO `cet4` VALUES ('cet4_0282', '　　breakfast', '/ ‘brekfəst/', 'n.早饭，早餐');
INSERT INTO `cet4` VALUES ('cet4_0283', '　　breast', '/ brest/', 'n.乳房；胸脯，胸膛');
INSERT INTO `cet4` VALUES ('cet4_0284', '　　breath', '/ breθ/', 'n.气息，呼吸；气味');
INSERT INTO `cet4` VALUES ('cet4_0285', '　　breathe', '/ bri:ð/', 'vi.呼吸 vt.呼吸');
INSERT INTO `cet4` VALUES ('cet4_0286', '　　breed', '/ bri:d/', 'n.品种 vt.使繁殖');
INSERT INTO `cet4` VALUES ('cet4_0287', '　　breeze', '/ bri:z/', 'n.微风，和风');
INSERT INTO `cet4` VALUES ('cet4_0288', '　　brick', '/ brik/', 'n.砖，砖块；砖状物');
INSERT INTO `cet4` VALUES ('cet4_0289', '　　bride', '/ braid/', 'n. 新娘');
INSERT INTO `cet4` VALUES ('cet4_0290', '　　bridge', '/ bridʒ/', 'n.桥，桥梁；桥牌');
INSERT INTO `cet4` VALUES ('cet4_0291', '　　brief', '/ bri:f/', 'a.简短的；短暂的');
INSERT INTO `cet4` VALUES ('cet4_0292', '　　bright', '/ brait/', 'a.明亮的；聪明的');
INSERT INTO `cet4` VALUES ('cet4_0293', '　　brilliant', '/ ‘briljənt/', 'a.光辉的；卓越的');
INSERT INTO `cet4` VALUES ('cet4_0294', '　　bring', '/ briŋ/', 'vt.带来；引出；促使');
INSERT INTO `cet4` VALUES ('cet4_0295', '　　British', '/ ‘britiʃ/', 'a.不列颠的，英联邦的');
INSERT INTO `cet4` VALUES ('cet4_0296', '　　broad', '/ brɔ:d/', 'a.宽的，阔的；广泛的');
INSERT INTO `cet4` VALUES ('cet4_0297', '　　broadcast', '/ ‘brɔ:dka:st/', 'n.广播，播音');
INSERT INTO `cet4` VALUES ('cet4_0298', '　　brother', '/ ‘brΛðə/', 'n.兄弟；同事，同胞');
INSERT INTO `cet4` VALUES ('cet4_0299', '　　brow', '/ brau/', 'n.额；眉，眉毛');
INSERT INTO `cet4` VALUES ('cet4_0300', '　　brown', '/ braun/', 'n.褐色，棕色');
INSERT INTO `cet4` VALUES ('cet4_0301', '　　brush', '/ brΛʃ/', 'n.刷子，毛刷；画笔');
INSERT INTO `cet4` VALUES ('cet4_0302', '　　bubble', '/ ‘bΛbl/', 'n.泡 vi.冒泡，沸腾');
INSERT INTO `cet4` VALUES ('cet4_0303', '　　bucket', '/ ‘bΛkit/', 'n.水桶；吊桶；铲斗');
INSERT INTO `cet4` VALUES ('cet4_0304', '　　build', '/ bild/', 'vt.建筑；建立；创立');
INSERT INTO `cet4` VALUES ('cet4_0305', '　　building', '/ ‘bildiŋ/', 'n.建筑物，大楼；建筑');
INSERT INTO `cet4` VALUES ('cet4_0306', '　　bulb', '/ bΛlb/', 'n.电灯泡；球状物');
INSERT INTO `cet4` VALUES ('cet4_0307', '　　bulk', '/ bΛlk/', 'n.物体，容积，大批');
INSERT INTO `cet4` VALUES ('cet4_0308', '　　bullet', '/ ‘bulit/', 'n.枪弹，子弹，弹丸');
INSERT INTO `cet4` VALUES ('cet4_0309', '　　bundle', '/ ‘bΛndl/', 'n.捆，包，束；包袱');
INSERT INTO `cet4` VALUES ('cet4_0310', '　　burden', '/ ‘bə:dn/', 'n.担子，重担；装载量');
INSERT INTO `cet4` VALUES ('cet4_0311', '　　bureau', '/ ‘bjuərəu/', 'n.局，司，处；社，所');
INSERT INTO `cet4` VALUES ('cet4_0312', '　　burn', '/ bə:n/', 'vi.烧，燃烧 n.烧伤');
INSERT INTO `cet4` VALUES ('cet4_0313', '　　burst', '/ bə:st/', 'vt.使爆裂 vi.&n.爆炸');
INSERT INTO `cet4` VALUES ('cet4_0314', '　　bury', '/ ‘beri/', 'vt.埋葬，葬；埋藏');
INSERT INTO `cet4` VALUES ('cet4_0315', '　　bus', '/ bΛs/', 'n.公共汽车');
INSERT INTO `cet4` VALUES ('cet4_0316', '　　bush', '/ buʃ/', 'n.灌木，灌木丛，矮树');
INSERT INTO `cet4` VALUES ('cet4_0317', '　　business', '/ ‘biznis/', 'n.商业，生意；事务');
INSERT INTO `cet4` VALUES ('cet4_0318', '　　busy', '/ ‘bizi/', 'a.忙的，繁忙的');
INSERT INTO `cet4` VALUES ('cet4_0319', '　　but', '/ bΛt/', 'conj.但是，可是');
INSERT INTO `cet4` VALUES ('cet4_0320', '　　butter', '/ ‘bΛtə/', 'n.黄油；奶油');
INSERT INTO `cet4` VALUES ('cet4_0321', '　　button', '/ ‘bΛtn/', 'n.扣子；按钮 vt.扣紧');
INSERT INTO `cet4` VALUES ('cet4_0322', '　　buy', '/ bai/', 'vt.买，购买 vi.买');
INSERT INTO `cet4` VALUES ('cet4_0323', '　　by', '/ bai/', 'prep.在…旁；被，由');
INSERT INTO `cet4` VALUES ('cet4_0324', 'cabbage', '/ ‘kæbidʒ/', 'n.洋白菜，卷心菜');
INSERT INTO `cet4` VALUES ('cet4_0325', '　　cabin', '/ ‘kæbin/', 'n.小屋；船舱，机舱');
INSERT INTO `cet4` VALUES ('cet4_0326', '　　cabinet', '/ ‘kæbinit/', 'n.橱，柜；内阁');
INSERT INTO `cet4` VALUES ('cet4_0327', '　　cable', '/ ‘keibl/', 'n.缆，索；电缆；电报');
INSERT INTO `cet4` VALUES ('cet4_0328', '　　cafe', '/ ‘kæfei, kə’fei/', 'n.咖啡馆；小餐厅');
INSERT INTO `cet4` VALUES ('cet4_0329', '　　cage', '/ keidʒ/', 'n.笼；鸟笼，囚笼');
INSERT INTO `cet4` VALUES ('cet4_0330', '　　cake', '/ keik/', 'n.饼，糕，蛋糕');
INSERT INTO `cet4` VALUES ('cet4_0331', '　　calculate', '/ ‘kælkjuleit/', 'vt.计算；估计；计划');
INSERT INTO `cet4` VALUES ('cet4_0332', '　　calculator', '/ ‘kælkjuleitə/', 'n.计算器，计算者');
INSERT INTO `cet4` VALUES ('cet4_0333', '　　calendar', '/ ‘kælində/', 'n. 日历，历书；历法');
INSERT INTO `cet4` VALUES ('cet4_0334', '　　call', '/ kɔ:l/', 'vt.把…叫做；叫，喊');
INSERT INTO `cet4` VALUES ('cet4_0335', '　　calm', '/ ka:m/', 'a.静的，平静的');
INSERT INTO `cet4` VALUES ('cet4_0336', '　　camel', '/ ‘kæməl/', 'n.骆驼');
INSERT INTO `cet4` VALUES ('cet4_0337', '　　camera', '/ ‘kæmərə/', 'n.照相机，摄影机');
INSERT INTO `cet4` VALUES ('cet4_0338', '　　camp', '/ kæmp/', 'n.野营，营地，兵营');
INSERT INTO `cet4` VALUES ('cet4_0339', '　　campaign', '/ kæm’pein/', 'n.战役；运动');
INSERT INTO `cet4` VALUES ('cet4_0340', '　　campus', '/ ‘kæmpəs/', 'n.校园，学校场地');
INSERT INTO `cet4` VALUES ('cet4_0341', '　　can', '/ kæn/', 'aux.v.能，会，可能');
INSERT INTO `cet4` VALUES ('cet4_0342', '　　can', '/ kæn/', 'n.罐头，听头；容器');
INSERT INTO `cet4` VALUES ('cet4_0343', '　　Canadian', '/ kə’neidjən/', 'a.加拿大的');
INSERT INTO `cet4` VALUES ('cet4_0344', '　　canal', '/ kə’næl/', 'n.运河；沟渠；管');
INSERT INTO `cet4` VALUES ('cet4_0345', '　　cancel', '/ ‘kænsəl/', 'vt.取消，撤消；删去');
INSERT INTO `cet4` VALUES ('cet4_0346', '　　cancer', '/ ‘kænsə/', 'n.癌，癌症，肿瘤');
INSERT INTO `cet4` VALUES ('cet4_0347', '　　candidate', '/ ‘kændidit/', 'n.候选人；投考者');
INSERT INTO `cet4` VALUES ('cet4_0348', '　　candle', '/ ‘kændl/', 'n.蜡烛；烛形物；烛光');
INSERT INTO `cet4` VALUES ('cet4_0349', '　　cap', '/ kæp/', 'n.帽子，便帽；帽状物');
INSERT INTO `cet4` VALUES ('cet4_0350', '　　capable', '/ ‘keipəbl/', 'a.有能力的，有才能的');
INSERT INTO `cet4` VALUES ('cet4_0351', '　　capacity', '/ kə’pæsiti/', 'n.容量；能力；能量');
INSERT INTO `cet4` VALUES ('cet4_0352', '　　capital', '/ ‘kæpitl/', 'n.资本，资金；首都');
INSERT INTO `cet4` VALUES ('cet4_0353', '　　captain', '/ ‘kæptin/', 'n.陆军上尉；队长');
INSERT INTO `cet4` VALUES ('cet4_0354', '　　capture', '/ ‘kæptʃə/', 'vt.捕获，俘获；夺得');
INSERT INTO `cet4` VALUES ('cet4_0355', '　　car', '/ ka:/', 'n.汽车，小汽车，轿车');
INSERT INTO `cet4` VALUES ('cet4_0356', '　　carbon', '/ ‘ka:bən/', 'n.碳');
INSERT INTO `cet4` VALUES ('cet4_0357', '　　card', '/ ka:d/', 'n.卡，卡片，名片');
INSERT INTO `cet4` VALUES ('cet4_0358', '　　care', '/ keə/', 'vi.关心，介意 n.小心');
INSERT INTO `cet4` VALUES ('cet4_0359', '　　career', '/ kə’riə/', 'n.生涯，职业，经历');
INSERT INTO `cet4` VALUES ('cet4_0360', '　　careful', '/ ‘keəful/', 'a.仔细的；细致的');
INSERT INTO `cet4` VALUES ('cet4_0361', '　　careless', '/ ‘keəlis/', 'a.粗心的，漫不经心的');
INSERT INTO `cet4` VALUES ('cet4_0362', '　　cargo', '/ ‘ka:gəu/', 'n.船货，货物');
INSERT INTO `cet4` VALUES ('cet4_0363', '　　carpenter', '/ ‘ka:pintə/', 'n.木工，木匠');
INSERT INTO `cet4` VALUES ('cet4_0364', '　　carpet', '/ ‘ka:pit/', 'n.地毯，毡毯，毛毯');
INSERT INTO `cet4` VALUES ('cet4_0365', '　　carriage', '/ ‘kæridʒ/', 'n.客车厢；四轮马车');
INSERT INTO `cet4` VALUES ('cet4_0366', '　　carrier', '/ ‘kæriə/', 'n.运输工具；运载工具');
INSERT INTO `cet4` VALUES ('cet4_0367', '　　carry', '/ ‘kæri/', 'vt.携带；运载；传送');
INSERT INTO `cet4` VALUES ('cet4_0368', '　　cart', '/ ka:t/', 'n.二轮运货马车');
INSERT INTO `cet4` VALUES ('cet4_0369', '　　case', '/ keis/', 'n.情况；事实；病例');
INSERT INTO `cet4` VALUES ('cet4_0370', '　　case', '/ keis/', 'n.箱(子)，盒(子)，套');
INSERT INTO `cet4` VALUES ('cet4_0371', '　　cash', '/ kæʃ/', 'n.现金，现款');
INSERT INTO `cet4` VALUES ('cet4_0372', '　　cassette', '/ ka:’set/', 'n.盒式录音带；盒子');
INSERT INTO `cet4` VALUES ('cet4_0373', '　　cast', '/ ka:st/', 'vt.投，扔，抛；浇铸');
INSERT INTO `cet4` VALUES ('cet4_0374', '　　castle', '/ ‘ka:sl/', 'n.城堡；巨大建筑物');
INSERT INTO `cet4` VALUES ('cet4_0375', '　　casual', '/ ‘kæʒjuəl/', 'a.偶然的；随便的');
INSERT INTO `cet4` VALUES ('cet4_0376', '　　cat', '/ kæt/', 'n.猫，猫科，猫皮');
INSERT INTO `cet4` VALUES ('cet4_0377', '　　catalog', '/ ‘kætəlɔg/', 'n.目录，目录册');
INSERT INTO `cet4` VALUES ('cet4_0378', '　　catch', '/ kætʃ/', 'vt.捉住；赶上；领会');
INSERT INTO `cet4` VALUES ('cet4_0379', '　　cattle', '/ ‘kætl/', 'n.牛；牲口，家畜');
INSERT INTO `cet4` VALUES ('cet4_0380', '　　cause', '/ kɔ:z/', 'n.原因，理由；事业');
INSERT INTO `cet4` VALUES ('cet4_0381', '　　cave', '/ keiv/', 'n.山洞，洞穴，窑洞');
INSERT INTO `cet4` VALUES ('cet4_0382', '　　cease', '/ si:s/', 'vi.&vi.&n.停止，停息');
INSERT INTO `cet4` VALUES ('cet4_0383', '　　ceiling', '/ ‘si:liŋ/', 'n. 天花板，顶蓬');
INSERT INTO `cet4` VALUES ('cet4_0384', '　　celebrate', '/ ‘selibreit/', 'vt.庆祝；歌颂，赞美');
INSERT INTO `cet4` VALUES ('cet4_0385', '　　cell', '/ sel/', 'n.细胞；小房间');
INSERT INTO `cet4` VALUES ('cet4_0386', '　　cement', '/ si’ment/', 'n.水泥；胶泥 vt.粘结');
INSERT INTO `cet4` VALUES ('cet4_0387', '　　cent', '/ sent/', 'n.分；分币；百');
INSERT INTO `cet4` VALUES ('cet4_0388', '　　centimetre', '/ ‘sentimi:tə/', 'n.公分，厘米');
INSERT INTO `cet4` VALUES ('cet4_0389', '　　central', '/ ‘sentrəl/', 'a.中心的；主要的');
INSERT INTO `cet4` VALUES ('cet4_0390', '　　centre', '/ ‘sentə/', 'n.中心；中枢 vt.集中');
INSERT INTO `cet4` VALUES ('cet4_0391', '　　century', '/ ‘sentʃuri/', 'n.世纪，百年');
INSERT INTO `cet4` VALUES ('cet4_0392', '　　ceremony', '/ ‘seriməni/', 'n.典礼，仪式；礼节');
INSERT INTO `cet4` VALUES ('cet4_0393', '　　certain', '/ ‘sə:tən/', 'a.确实的；肯定的');
INSERT INTO `cet4` VALUES ('cet4_0394', '　　certainly', '/ ‘sə:tənli/', 'ad.一定，必定；当然');
INSERT INTO `cet4` VALUES ('cet4_0395', '　　certificate', '/ sə’tifikit/', 'n.证书，证件，执照');
INSERT INTO `cet4` VALUES ('cet4_0396', '　　chain', '/ tʃein/', 'n.链，链条，项圈');
INSERT INTO `cet4` VALUES ('cet4_0397', '　　chair', '/ tʃeə/', 'n.椅子；主席');
INSERT INTO `cet4` VALUES ('cet4_0398', '　　chairman', '/ ‘tʃeəmən/', 'n.主席；议长，会长');
INSERT INTO `cet4` VALUES ('cet4_0399', '　　chalk', '/ tʃɔ:k/', 'n.白垩；粉笔');
INSERT INTO `cet4` VALUES ('cet4_0400', '　　challenge', '/ ‘tʃæləndʒ/', 'n.挑战；要求，需要');
INSERT INTO `cet4` VALUES ('cet4_0401', '　　chamber', '/ ‘tʃeimbə/', 'n.会议室；房间；腔');
INSERT INTO `cet4` VALUES ('cet4_0402', '　　champion', '/ ‘tʃæmpjən/', 'n.冠军，得胜者');
INSERT INTO `cet4` VALUES ('cet4_0403', '　　chance', '/ tʃa:ns/', 'n.机会，机遇；可能性');
INSERT INTO `cet4` VALUES ('cet4_0404', '　　change', '/ tʃeindʒ/', 'n.改变，变化；零钱');
INSERT INTO `cet4` VALUES ('cet4_0405', '　　channel', '/ ‘tʃænl/', 'n.海峡；渠道；频道');
INSERT INTO `cet4` VALUES ('cet4_0406', '　　chapter', '/ ‘tʃæptə/', 'n.章，回，篇');
INSERT INTO `cet4` VALUES ('cet4_0407', '　　character', '/ ‘kæriktə/', 'n.性格；特性；角色');
INSERT INTO `cet4` VALUES ('cet4_0408', '　　characteristic', '/ kæriktə’ristik/', 'a.特有的 n.特性');
INSERT INTO `cet4` VALUES ('cet4_0409', '　　charge', '/ tʃa:dʒ/', 'vt.索价；控告 n.费用');
INSERT INTO `cet4` VALUES ('cet4_0410', '　　chart', '/ tʃa:t/', 'n.图，图表；海图');
INSERT INTO `cet4` VALUES ('cet4_0411', '　　chase', '/ tʃeis/', 'n.追逐，追赶，追求');
INSERT INTO `cet4` VALUES ('cet4_0412', '　　cheap', '/ tʃi:p/', 'a.廉价的；劣质的');
INSERT INTO `cet4` VALUES ('cet4_0413', '　　cheat', '/ tʃi:t/', 'vt.骗取；哄 vi.行骗');
INSERT INTO `cet4` VALUES ('cet4_0414', '　　check', '/ tʃek/', 'vt.检查；制止 n.检查');
INSERT INTO `cet4` VALUES ('cet4_0415', '　　cheek', '/ tʃi:k/', 'n.面颊，脸蛋');
INSERT INTO `cet4` VALUES ('cet4_0416', '　　cheer', '/ tʃiə/', 'vt.使振作；欢呼');
INSERT INTO `cet4` VALUES ('cet4_0417', '　　cheerful', '/ ‘tʃiəful/', 'a.快乐的，愉快的');
INSERT INTO `cet4` VALUES ('cet4_0418', '　　cheese', '/ tʃi:z/', 'n.乳酪，干酪');
INSERT INTO `cet4` VALUES ('cet4_0419', '　　chemical', '/ ‘kemikl/', 'a.化学的 n.化学制品');
INSERT INTO `cet4` VALUES ('cet4_0420', '　　chemist', '/ ‘kemist/', 'n.化学家；药剂师');
INSERT INTO `cet4` VALUES ('cet4_0421', '　　chemistry', '/ ‘kemistri/', 'n.化学');
INSERT INTO `cet4` VALUES ('cet4_0422', '　　cheque', '/ tʃek/', 'n.支票');
INSERT INTO `cet4` VALUES ('cet4_0423', '　　chess', '/ tʃes/', 'n.棋；国际象棋');
INSERT INTO `cet4` VALUES ('cet4_0424', '　　chest', '/ tʃest/', 'n.胸腔，胸膛；箱子');
INSERT INTO `cet4` VALUES ('cet4_0425', '　　chew', '/ tʃu:/', 'vt.咀嚼，嚼碎');
INSERT INTO `cet4` VALUES ('cet4_0426', '　　chicken', '/ ‘tʃikin/', 'n.小鸡，小鸟；鸡肉');
INSERT INTO `cet4` VALUES ('cet4_0427', '　　chief', '/ tʃi:f/', 'a.主要的；首席的');
INSERT INTO `cet4` VALUES ('cet4_0428', '　　child', '/ tʃaild/', 'n.小孩，儿童；儿子');
INSERT INTO `cet4` VALUES ('cet4_0429', '　　childhood', '/ ‘tʃaildhud/', 'n.童年，幼年；早期');
INSERT INTO `cet4` VALUES ('cet4_0430', '　　chill', '/ tʃil/', 'vt.使变冷 n.寒冷');
INSERT INTO `cet4` VALUES ('cet4_0431', '　　chimney', '/ ‘tʃimni/', 'n.烟囱，烟筒；玻璃罩');
INSERT INTO `cet4` VALUES ('cet4_0432', '　　chin', '/ tʃin/', 'n.颏，下巴');
INSERT INTO `cet4` VALUES ('cet4_0433', '　　China', '/ ‘tʃainə/', 'n.中国');
INSERT INTO `cet4` VALUES ('cet4_0434', '　　china', '/ ‘tʃainə/', 'n.瓷器，瓷料');
INSERT INTO `cet4` VALUES ('cet4_0435', '　　Chinese', '/ ‘tʃai’ni:z/', 'a.中国的 n.中国人');
INSERT INTO `cet4` VALUES ('cet4_0436', '　　chocolate', '/ ‘tʃɔkəlit/', 'n.巧克力；巧克力糖');
INSERT INTO `cet4` VALUES ('cet4_0437', '　　chɔice', '/ tʃɔis/', 'n.选择，抉择');
INSERT INTO `cet4` VALUES ('cet4_0438', '　　choke', '/ tʃəuk/', 'vt.使窒息；塞满');
INSERT INTO `cet4` VALUES ('cet4_0439', '　　choose', '/ tʃu:z/', 'vt.选择，挑选；情愿');
INSERT INTO `cet4` VALUES ('cet4_0440', '　　chop', '/ tʃɔp/', 'vt.砍，劈；切细vi.砍');
INSERT INTO `cet4` VALUES ('cet4_0441', '　　Christian', '/ ‘kristiən/', 'n.基督教徒；信徒');
INSERT INTO `cet4` VALUES ('cet4_0442', '　　Christmas', '/ ‘krisməs/', 'n.圣诞节');
INSERT INTO `cet4` VALUES ('cet4_0443', '　　church', '/ tʃə:tʃ/', 'n.教堂，礼拜堂；教会');
INSERT INTO `cet4` VALUES ('cet4_0444', '　　cigarette', '/ sigə’ret/', 'n.香烟，纸烟，卷烟');
INSERT INTO `cet4` VALUES ('cet4_0445', '　　cinema', '/ ‘sinimə/', 'n.电影院；电影，影片');
INSERT INTO `cet4` VALUES ('cet4_0446', '　　circle', '/ ‘sə:kl/', 'n.圆，圆周；圈子');
INSERT INTO `cet4` VALUES ('cet4_0447', '　　circuit', '/ ‘sə:kit/', 'n.电路；环行；巡行');
INSERT INTO `cet4` VALUES ('cet4_0448', '　　circular', '/ ‘sə:kjulə/', 'a.圆的；循环的');
INSERT INTO `cet4` VALUES ('cet4_0449', '　　circulate', '/ ‘sə:kjuleit/', 'vt.使循环 vi.循环');
INSERT INTO `cet4` VALUES ('cet4_0450', '　　circumference', '/ sə’kΛmfərəns/', 'n.圆周，周长，圆周线');
INSERT INTO `cet4` VALUES ('cet4_0451', '　　circumstance', '/ ‘sə:kəmstəns/', 'n.情况，条件；境遇');
INSERT INTO `cet4` VALUES ('cet4_0452', '　　citizen', '/ ‘sitizn/', 'n.公民；市民，居民');
INSERT INTO `cet4` VALUES ('cet4_0453', '　　city', '/ ‘siti/', 'n.城市，都市');
INSERT INTO `cet4` VALUES ('cet4_0454', '　　civil', '/ ‘sivl/', 'a.公民的；文职的');
INSERT INTO `cet4` VALUES ('cet4_0455', '　　civilization', '/ sivilai’zeiʃən/', 'n.文明，文化；开化');
INSERT INTO `cet4` VALUES ('cet4_0456', '　　civilize', '/ ‘sivilaiz/', 'vt.使文明；教育');
INSERT INTO `cet4` VALUES ('cet4_0457', '　　claim', '/ kleim/', 'vt.声称，主张；索取');
INSERT INTO `cet4` VALUES ('cet4_0458', '　　clap', '/ klæp/', 'vi.拍手 vt.拍，轻拍');
INSERT INTO `cet4` VALUES ('cet4_0459', '　　clarify', '/ ‘klærifai/', 'vt.澄清，阐明');
INSERT INTO `cet4` VALUES ('cet4_0460', '　　class', '/ kla:s/', 'n.班，班级；阶级');
INSERT INTO `cet4` VALUES ('cet4_0461', '　　classical', '/ ‘klæsikəl/', 'a.古典的；经典的');
INSERT INTO `cet4` VALUES ('cet4_0462', '　　classification', '/ klæsifi’keiʃən/', 'n.分类；分级；分类法');
INSERT INTO `cet4` VALUES ('cet4_0463', '　　classify', '/ ‘klæsifai/', 'vt.把…分类');
INSERT INTO `cet4` VALUES ('cet4_0464', '　　classmate', '/ ‘kla:smeit/', 'n.同班同学');
INSERT INTO `cet4` VALUES ('cet4_0465', '　　classroom', '/ ‘kla:srum/', 'n.教室，课堂');
INSERT INTO `cet4` VALUES ('cet4_0466', '　　claw', '/ klɔ:/', 'n.爪，脚爪，螯');
INSERT INTO `cet4` VALUES ('cet4_0467', '　　clay', '/ klei/', 'n.粘土，泥土；肉体');
INSERT INTO `cet4` VALUES ('cet4_0468', '　　clean', '/ kli:n/', 'a.清洁的；纯洁的');
INSERT INTO `cet4` VALUES ('cet4_0469', '　　clear', '/ kliə/', 'a.清晰的 vt.清除');
INSERT INTO `cet4` VALUES ('cet4_0470', '　　clerk', '/ kla:k, klə:k/', 'n.店员；办事员，职员');
INSERT INTO `cet4` VALUES ('cet4_0471', '　　clever', '/ ‘klevə/', 'a.聪明的；机敏的');
INSERT INTO `cet4` VALUES ('cet4_0472', '　　cliff', '/ klif/', 'n.悬崖，峭壁');
INSERT INTO `cet4` VALUES ('cet4_0473', '　　climate', '/ ‘klaimit/', 'n.气候；风土，地带');
INSERT INTO `cet4` VALUES ('cet4_0474', '　　climb', '/ klaim/', 'vi.攀登，爬 vt.爬');
INSERT INTO `cet4` VALUES ('cet4_0475', '　　clock', '/ klɔk/', 'n.钟，仪表');
INSERT INTO `cet4` VALUES ('cet4_0476', '　　close', '/ kləuz, kləus/', 'vt.关，闭；结束');
INSERT INTO `cet4` VALUES ('cet4_0477', '　　cloth', '/ klɔ:θ/', 'n.布；衣料；桌布');
INSERT INTO `cet4` VALUES ('cet4_0478', '　　clothe', '/ kləuð/', 'vt.给…穿衣服');
INSERT INTO `cet4` VALUES ('cet4_0479', '　　clothes', '/ kləuðz/', 'n.衣服，服装；被褥');
INSERT INTO `cet4` VALUES ('cet4_0480', '　　clothing', '/ ‘kləuðiŋ/', 'n.衣服，被褥');
INSERT INTO `cet4` VALUES ('cet4_0481', '　　cloud', '/ klaud/', 'n.云；云状物；阴影');
INSERT INTO `cet4` VALUES ('cet4_0482', '　　cloudy', '/ klaudi/', 'a.多云的；云一般的');
INSERT INTO `cet4` VALUES ('cet4_0483', '　　club', '/ klΛb/', 'n.俱乐部，夜总会');
INSERT INTO `cet4` VALUES ('cet4_0484', '　　clue', '/ klu:/', 'n.线索，暗示，提示');
INSERT INTO `cet4` VALUES ('cet4_0485', '　　clumsy', '/ ‘klΛmzi/', 'a.笨拙的；愚笨的');
INSERT INTO `cet4` VALUES ('cet4_0486', '　　coach', '/ kəutʃ/', 'n.长途公共汽车');
INSERT INTO `cet4` VALUES ('cet4_0487', '　　coal', '/ kəul/', 'n.煤，煤块');
INSERT INTO `cet4` VALUES ('cet4_0488', '　　coarse', '/ kɔ:s/', 'a.粗的，粗糙的');
INSERT INTO `cet4` VALUES ('cet4_0489', '　　coast', '/ kəust/', 'n.海岸，海滨(地区)');
INSERT INTO `cet4` VALUES ('cet4_0490', '　　coat', '/ kəut/', 'n.外套，上衣；表皮');
INSERT INTO `cet4` VALUES ('cet4_0491', '　　cock', '/ kɔk/', 'n.公鸡；雄禽；旋塞');
INSERT INTO `cet4` VALUES ('cet4_0492', '　　code', '/ kəud/', 'n.准则；法典；代码');
INSERT INTO `cet4` VALUES ('cet4_0493', '　　coffee', '/ ‘kɔfi/', 'n.咖啡，咖啡茶');
INSERT INTO `cet4` VALUES ('cet4_0494', '　　cɔil', '/ kɔil/', 'n.(一)卷；线圈 vt.卷');
INSERT INTO `cet4` VALUES ('cet4_0495', '　　cɔin', '/ kɔin/', 'n.硬币；铸造(硬币)');
INSERT INTO `cet4` VALUES ('cet4_0496', '　　cold', '/ kəuld/', 'a.冷的；冷淡的 n.冷');
INSERT INTO `cet4` VALUES ('cet4_0497', '　　collapse', '/ kə’læps/', 'vi.倒坍；崩溃，瓦解');
INSERT INTO `cet4` VALUES ('cet4_0498', '　　collar', '/ ‘kɔlə/', 'n.衣领，项圈');
INSERT INTO `cet4` VALUES ('cet4_0499', '　　colleague', '/ ‘kɔli:g/', 'n.同事，同僚');
INSERT INTO `cet4` VALUES ('cet4_0500', '　　collect', '/ kə’lekt/', 'vt.收集 vi.收款');
INSERT INTO `cet4` VALUES ('cet4_0501', '　　collection', '/ kə’lekʃən/', 'n.搜集，收集；收藏品');
INSERT INTO `cet4` VALUES ('cet4_0502', '　　collective', '/ kə’lektiv/', 'a.集体的；集合性的');
INSERT INTO `cet4` VALUES ('cet4_0503', '　　college', '/ ‘kɔlidʒ/', 'n.学院；大学');
INSERT INTO `cet4` VALUES ('cet4_0504', '　　collision', '/ kə’liʒ(ə)n/', 'n.碰撞；冲突');
INSERT INTO `cet4` VALUES ('cet4_0505', '　　colony', '/ ‘kɔləni/', 'n.殖民地；侨居地');
INSERT INTO `cet4` VALUES ('cet4_0506', '　　color', '/ ‘kΛlə/', 'n.颜色，彩色；颜料');
INSERT INTO `cet4` VALUES ('cet4_0507', '　　column', '/ ‘kɔləm/', 'n.柱，支柱，圆柱');
INSERT INTO `cet4` VALUES ('cet4_0508', '　　comb', '/ kəum/', 'n.梳子 vt.梳理');
INSERT INTO `cet4` VALUES ('cet4_0509', '　　combination', '/ kɔmbi’neiʃən/', 'n.结合，联合；化合');
INSERT INTO `cet4` VALUES ('cet4_0510', '　　combine', '/ kəm’bain/', 'vt.使结合；兼有');
INSERT INTO `cet4` VALUES ('cet4_0511', '　　come', '/ kΛm/', 'vi.来，来到；出现');
INSERT INTO `cet4` VALUES ('cet4_0512', '　　comfort', '/ ‘kΛmfət/', 'n.舒适；安慰 vt.安慰');
INSERT INTO `cet4` VALUES ('cet4_0513', '　　comfortable', '/ ‘kΛmfətəbl/', 'a.舒适的，安慰的');
INSERT INTO `cet4` VALUES ('cet4_0514', '　　command', '/ kə’ma:nd/', 'vt.命令，指挥；控制');
INSERT INTO `cet4` VALUES ('cet4_0515', '　　commander', '/ kə’ma:ndə/', 'n.司令官，指挥员');
INSERT INTO `cet4` VALUES ('cet4_0516', '　　comment', '/ ‘kɔment/', 'n.评论，意见；注释');
INSERT INTO `cet4` VALUES ('cet4_0517', '　　commerce', '/ ‘kɔmə(:)s/', 'n.商业，贸易；社交');
INSERT INTO `cet4` VALUES ('cet4_0518', '　　commercial', '/ kə’mə:ʃəl/', 'a.商业的；商品化的');
INSERT INTO `cet4` VALUES ('cet4_0519', '　　commission', '/ kə’miʃən/', 'n.委任状；委员会');
INSERT INTO `cet4` VALUES ('cet4_0520', '　　commit', '/ kə’mit/', 'vt.犯(错误);干(坏事)');
INSERT INTO `cet4` VALUES ('cet4_0521', '　　committee', '/ kə’miti/', 'n.委员会；全体委员');
INSERT INTO `cet4` VALUES ('cet4_0522', '　　common', '/ ‘kɔmən/', 'a.普通的；共同的');
INSERT INTO `cet4` VALUES ('cet4_0523', '　　communicate', '/ kə’mju:nikeit/', 'vi.通讯；传达；传播');
INSERT INTO `cet4` VALUES ('cet4_0524', '　　communication', '/ kə’mju:nikeiʃən/', 'n.通讯；传达；交通');
INSERT INTO `cet4` VALUES ('cet4_0525', '　　communism', '/ ‘kɔmjunizəm/', 'n.共产主义');
INSERT INTO `cet4` VALUES ('cet4_0526', '　　communist', '/ ‘kɔmjunist/', 'n.共产党员');
INSERT INTO `cet4` VALUES ('cet4_0527', '　　community', '/ kə’mju:niti/', 'n.社区；社会；公社');
INSERT INTO `cet4` VALUES ('cet4_0528', '　　companion', '/ kəm’pæniən/', 'n.同伴；共事者；伴侣');
INSERT INTO `cet4` VALUES ('cet4_0529', '　　company', '/ ‘kΛmpəni/', 'n.公司，商号；同伴');
INSERT INTO `cet4` VALUES ('cet4_0530', '　　comparative', '/ kəm’pærətiv/', 'a.比较的，相对的');
INSERT INTO `cet4` VALUES ('cet4_0531', '　　compare', '/ kəm’peə/', 'vt.比较，对照；比作');
INSERT INTO `cet4` VALUES ('cet4_0532', '　　comparison', '/ kəm’pærisn/', 'n.比较，对照；比似');
INSERT INTO `cet4` VALUES ('cet4_0533', '　　compass', '/ ‘kΛmpəs/', 'n.罗盘，指南针；圆规');
INSERT INTO `cet4` VALUES ('cet4_0534', '　　compel', '/ kəm’pel/', 'vt.强迫，迫使屈服');
INSERT INTO `cet4` VALUES ('cet4_0535', '　　compete', '/ kəm’pi:t/', 'vi.比赛；竞争；对抗');
INSERT INTO `cet4` VALUES ('cet4_0536', '　　competent', '/ ‘kɔmpitənt/', 'a.有能力的；应该做的');
INSERT INTO `cet4` VALUES ('cet4_0537', '　　competition', '/ kɔmpə’tiʃən/', 'n.竞争，比赛');
INSERT INTO `cet4` VALUES ('cet4_0538', '　　complain', '/ kəm’plein/', 'vi.抱怨，拆苦；控告');
INSERT INTO `cet4` VALUES ('cet4_0539', '　　complaint', '/ kəm’pleint/', 'n.抱怨；怨言；控告');
INSERT INTO `cet4` VALUES ('cet4_0540', '　　complete', '/ kəm’pli:t/', 'a.完整的；完成的');
INSERT INTO `cet4` VALUES ('cet4_0541', '　　complex', '/ ‘kɔmpleks/', 'a.结合的；复杂的');
INSERT INTO `cet4` VALUES ('cet4_0542', '　　complicated', '/ ‘kɔmplikeitid/', 'a.复杂的，难懂的');
INSERT INTO `cet4` VALUES ('cet4_0543', '　　component', '/ kəm’pəunənt/', 'n.组成部分；分；组件');
INSERT INTO `cet4` VALUES ('cet4_0544', '　　compose', '/ kəm’pəuz/', 'vt.组成，构成；创作');
INSERT INTO `cet4` VALUES ('cet4_0545', '　　composition', '/ kɔmpə’ziʃən/', 'n.构成；作品；写作');
INSERT INTO `cet4` VALUES ('cet4_0546', '　　compound', '/ ‘kɔmpaund, kəm’paund/', 'n.化合物；复合词');
INSERT INTO `cet4` VALUES ('cet4_0547', '　　comprehension', '/ kɔmpri’henʃən/', 'n.理解，理解力；领悟');
INSERT INTO `cet4` VALUES ('cet4_0548', '　　comprehensive', '/ kɔmpri’hensiv/', 'a.广泛的；理解的');
INSERT INTO `cet4` VALUES ('cet4_0549', '　　compress', '/ kəm’pres/', 'vt.压紧，压缩');
INSERT INTO `cet4` VALUES ('cet4_0550', '　　comprise', '/ kəm’praiz/', 'vt.包含，包括；构成');
INSERT INTO `cet4` VALUES ('cet4_0551', '　　compromise', '/ ‘kɔmprəmaiz/', 'n.妥协，和解');
INSERT INTO `cet4` VALUES ('cet4_0552', '　　compute', '/ kəm’pju:t/', 'vt.计算，估计，估算');
INSERT INTO `cet4` VALUES ('cet4_0553', '　　computer', '/ kəm’pju:tə/', 'n.计算机，电脑');
INSERT INTO `cet4` VALUES ('cet4_0554', '　　conceal', '/ kən’si:l/', 'vt.把…隐藏起来');
INSERT INTO `cet4` VALUES ('cet4_0555', '　　concentrate', '/ ‘kɔnsəntreit/', 'vt.集中；聚集；浓缩');
INSERT INTO `cet4` VALUES ('cet4_0556', '　　concentration', '/ kɔnsən’treiʃən/', 'n.集中；专注；浓缩');
INSERT INTO `cet4` VALUES ('cet4_0557', '　　concept', '/ ‘kɔnsept/', 'n.概念，观念，设想');
INSERT INTO `cet4` VALUES ('cet4_0558', '　　concern', '/ kən’sə:n/', 'n.关心，挂念；关系');
INSERT INTO `cet4` VALUES ('cet4_0559', '　　concerning', '/ kən’sə:niŋ/', 'prep.关于');
INSERT INTO `cet4` VALUES ('cet4_0560', '　　concert', '/ ‘kɔnsət/', 'n.音乐会，演奏会');
INSERT INTO `cet4` VALUES ('cet4_0561', '　　conclude', '/ kən’klu:d/', 'vt.推断出；结束');
INSERT INTO `cet4` VALUES ('cet4_0562', '　　conclusion', '/ kən’klu:ʒən/', 'n.结论，推论；结尾');
INSERT INTO `cet4` VALUES ('cet4_0563', '　　concrete', '/ ‘kɔnkri:t/', 'n.混凝土；具体物');
INSERT INTO `cet4` VALUES ('cet4_0564', '　　condemn', '/ kən’dem/', 'vt.谴责，指责；判刑');
INSERT INTO `cet4` VALUES ('cet4_0565', '　　condense', '/ kən’dens/', 'vt.压缩，使缩短');
INSERT INTO `cet4` VALUES ('cet4_0566', '　　condition', '/ kən’diʃən/', 'n.状况，状态；环境');
INSERT INTO `cet4` VALUES ('cet4_0567', '　　conduct', '/ ‘kɔndəkt, kən’dΛkt/', 'n.举止，行为；指导');
INSERT INTO `cet4` VALUES ('cet4_0568', '　　conductor', '/ kən’dΛktə/', 'n.售票员；(乐队)指挥');
INSERT INTO `cet4` VALUES ('cet4_0569', '　　conference', '/ ‘kɔnfərəns/', 'n.会议，讨论会');
INSERT INTO `cet4` VALUES ('cet4_0570', '　　confess', '/ kən’fes/', 'vt.供认，承认；坦白');
INSERT INTO `cet4` VALUES ('cet4_0571', '　　confidence', '/ ‘kɔnfidəns/', 'n.信任；信赖；信心');
INSERT INTO `cet4` VALUES ('cet4_0572', '　　confident', '/ ‘kɔnfidənt/', 'n.确信的，自信的');
INSERT INTO `cet4` VALUES ('cet4_0573', '　　confine', '/ kən’fain/', 'vt.限制；禁闭');
INSERT INTO `cet4` VALUES ('cet4_0574', '　　confirm', '/ kən’fə:m/', 'vt.证实，肯定；批准');
INSERT INTO `cet4` VALUES ('cet4_0575', '　　conflict', '/ ‘kɔnflikt, kən’flikt/', 'n.争论；冲突；斗争');
INSERT INTO `cet4` VALUES ('cet4_0576', '　　confuse', '/ kən’fju:z/', 'vt.使混乱，混淆');
INSERT INTO `cet4` VALUES ('cet4_0577', '　　congratulate', '/ kən’grætjuleit/', 'vt.祝贺，向…道喜');
INSERT INTO `cet4` VALUES ('cet4_0578', '　　congress', '/ ‘kɔŋgres/', 'n.大会；国会，议会');
INSERT INTO `cet4` VALUES ('cet4_0579', '　　conjunction', '/ kən’dʒΛŋkʃən/', 'n.接合，连接；连接词');
INSERT INTO `cet4` VALUES ('cet4_0580', '　　connect', '/ kə’nekt/', 'vt.连接，连结；联系');
INSERT INTO `cet4` VALUES ('cet4_0581', '　　connection', '/ kə’nekʃən/', 'n.连接，联系；连贯性');
INSERT INTO `cet4` VALUES ('cet4_0582', '　　conquer', '/ ‘kɔŋkə/', 'vt.征服，战胜；破除');
INSERT INTO `cet4` VALUES ('cet4_0583', '　　conquest', '/ ‘kɔŋkwest/', 'n.攻取，征服；克服');
INSERT INTO `cet4` VALUES ('cet4_0584', '　　conscience', '/ ‘kɔnʃəns/', 'n.良心，道德心');
INSERT INTO `cet4` VALUES ('cet4_0585', '　　conscious', '/ ‘kɔnʃəs/', 'a.意识到的；有意的');
INSERT INTO `cet4` VALUES ('cet4_0586', '　　consciousness', '/ ‘kɔnʃəsnis/', 'n.意识，觉悟；知觉');
INSERT INTO `cet4` VALUES ('cet4_0587', '　　consent', '/ kən’sent/', 'n.同意，赞成 vi.同意');
INSERT INTO `cet4` VALUES ('cet4_0588', '　　consequence', '/ ‘kɔnsikwəns/', 'n.结果，后果');
INSERT INTO `cet4` VALUES ('cet4_0589', '　　consequently', '/ ‘kɔnsikwəntli/', 'ad.因此，因而，所以');
INSERT INTO `cet4` VALUES ('cet4_0590', '　　conservation', '/ kɔnsə(:)’veiʃən/', 'n.保存，保护；守恒');
INSERT INTO `cet4` VALUES ('cet4_0591', '　　conservative', '/ kən’sə:vətiv/', 'a.保守的 n.保守的人');
INSERT INTO `cet4` VALUES ('cet4_0592', '　　consider', '/ kən’sidə/', 'vt.认为；考虑；关心');
INSERT INTO `cet4` VALUES ('cet4_0593', '　　considerable', '/ kən’sidərəbl/', 'a.相当大的；重要的');
INSERT INTO `cet4` VALUES ('cet4_0594', '　　considerate', '/ kən’sidərit/', 'a.考虑周到的；体谅的');
INSERT INTO `cet4` VALUES ('cet4_0595', '　　consideration', '/ kənsidə’reiʃən/', 'n.考虑，思考；体贴');
INSERT INTO `cet4` VALUES ('cet4_0596', '　　consist', '/ kən’sist/', 'vi.由…组成；在于');
INSERT INTO `cet4` VALUES ('cet4_0597', '　　consistent', '/ kən’sistənt/', 'a.坚持的，一贯的');
INSERT INTO `cet4` VALUES ('cet4_0598', '　　constant', '/ ‘kɔnstənt/', 'a.经常的；永恒的');
INSERT INTO `cet4` VALUES ('cet4_0599', '　　constitute', '/ ‘kɔnstitju:t/', 'vt. 构成,组成,任命');
INSERT INTO `cet4` VALUES ('cet4_0600', '　　constitution', '/ kɔnsti’tju:ʃən/', 'n.章程；体质；构造');
INSERT INTO `cet4` VALUES ('cet4_0601', '　　construct', '/ kən’strΛkt/', 'vt.建造；建设；构筑');
INSERT INTO `cet4` VALUES ('cet4_0602', '　　construction', '/ kən’strΛkʃən/', 'n.建造；建筑；建筑物');
INSERT INTO `cet4` VALUES ('cet4_0603', '　　consult', '/ kən’sΛlt/', 'vt.请教，查阅');
INSERT INTO `cet4` VALUES ('cet4_0604', '　　consume', '/ kən’sju:m/', 'vt.消耗，消费；消灭');
INSERT INTO `cet4` VALUES ('cet4_0605', '　　consumption', '/ kən’sΛmpʃən/', 'n.消耗量；消耗');
INSERT INTO `cet4` VALUES ('cet4_0606', '　　contact', '/ ‘kɔntækt, kən’tækt/', 'vt.使接触；与…联系');
INSERT INTO `cet4` VALUES ('cet4_0607', '　　contain', '/ kən’tein/', 'vt.包含，容纳；等于');
INSERT INTO `cet4` VALUES ('cet4_0608', '　　container', '/ kən’teinə/', 'n.容器；集装箱');
INSERT INTO `cet4` VALUES ('cet4_0609', '　　contemporary', '/ kən’tempərəri/', 'a.当代的，同时代的');
INSERT INTO `cet4` VALUES ('cet4_0610', '　　contempt', '/ kən’tempt/', 'n.轻蔑；藐视；受辱');
INSERT INTO `cet4` VALUES ('cet4_0611', '　　content', '/ ‘kɔntent, kən’tent/', 'n.内容，目录；容量');
INSERT INTO `cet4` VALUES ('cet4_0612', '　　content', '/ ‘kɔntent, kən’tent/', 'a.满意的，满足的');
INSERT INTO `cet4` VALUES ('cet4_0613', '　　contest', '/ kən’test, ‘kɔntest/', 'vt.争夺，争取；辩驳');
INSERT INTO `cet4` VALUES ('cet4_0614', '　　continent', '/ ‘kɔntinənt/', 'n.大陆；陆地；洲');
INSERT INTO `cet4` VALUES ('cet4_0615', '　　continual', '/ kən’tinjuəl/', 'a.不断的；连续的');
INSERT INTO `cet4` VALUES ('cet4_0616', '　　continue', '/ kən’tinju(:)/', 'vt.继续，连续；延伸');
INSERT INTO `cet4` VALUES ('cet4_0617', '　　continuous', '/ kən’tinjuəs/', 'a.连续不断的，持续的');
INSERT INTO `cet4` VALUES ('cet4_0618', '　　contract', '/ ‘kɔntrækt, kən’trækt/', 'n.契约，合同；婚约');
INSERT INTO `cet4` VALUES ('cet4_0619', '　　contradiction', '/ kɔntrə’dikʃən/', 'n.矛盾，不一致；否认');
INSERT INTO `cet4` VALUES ('cet4_0620', '　　contrary', '/ ‘kɔntrəri/', 'a.相反的 n.相反');
INSERT INTO `cet4` VALUES ('cet4_0621', '　　contrast', '/ ‘kɔntræst, kən’træst/', 'n.对比，对照，悬殊');
INSERT INTO `cet4` VALUES ('cet4_0622', '　　contribute', '/ kən’tribju(:)t/', 'vt.捐献，捐助；投稿');
INSERT INTO `cet4` VALUES ('cet4_0623', '　　control', '/ kən’trəul/', 'vt.控制，克制 n.控制');
INSERT INTO `cet4` VALUES ('cet4_0624', '　　convenience', '/ kən’vi:njəns/', 'n.便利，方便；厕所');
INSERT INTO `cet4` VALUES ('cet4_0625', '　　convenient', '/ kən’vi:njənt/', 'a.便利的；近便的');
INSERT INTO `cet4` VALUES ('cet4_0626', '　　convention', '/ kən’venʃən/', 'n.习俗，惯例；公约');
INSERT INTO `cet4` VALUES ('cet4_0627', '　　conventional', '/ kən’venʃənl/', 'a.普通的；习惯的');
INSERT INTO `cet4` VALUES ('cet4_0628', '　　conversation', '/ kɔnvə’seiʃən/', 'n.会话，非正式会谈');
INSERT INTO `cet4` VALUES ('cet4_0629', '　　conversely', '/ ‘kɔnvə:sli/', 'ad.相反地');
INSERT INTO `cet4` VALUES ('cet4_0630', '　　conversion', '/ kən’və:ʃən/', 'n.转变，转化；改变');
INSERT INTO `cet4` VALUES ('cet4_0631', '　　convert', '/ kən’və:t, ‘kɔnvə:t/', 'vt.使转变；使改变');
INSERT INTO `cet4` VALUES ('cet4_0632', '　　convey', '/ kən’vei/', 'vt.传送；运送；传播');
INSERT INTO `cet4` VALUES ('cet4_0633', '　　convince', '/ kən’vins/', 'vt.使确信，使信服');
INSERT INTO `cet4` VALUES ('cet4_0634', '　　cook', '/ kuk/', 'vt.烹调，煮 vt.烧菜');
INSERT INTO `cet4` VALUES ('cet4_0635', '　　cool', '/ ku:l/', 'a.凉的，冷静的');
INSERT INTO `cet4` VALUES ('cet4_0636', '　　cooperate', '/ kəu’ɔpəreit/', 'vi.合作，协作；配合');
INSERT INTO `cet4` VALUES ('cet4_0637', '　　coordinate', '/ kəu’ɔdinit/', 'vt.使协调，调节');
INSERT INTO `cet4` VALUES ('cet4_0638', '　　cope', '/ kəup/', 'vi.对付，应付');
INSERT INTO `cet4` VALUES ('cet4_0639', '　　copper', '/ ‘kɔpə/', 'n.铜；铜币，铜制器');
INSERT INTO `cet4` VALUES ('cet4_0640', '　　copy', '/ ‘kɔpi/', 'n.抄件 vt.抄写，复制');
INSERT INTO `cet4` VALUES ('cet4_0641', '　　cord', '/ kɔ:d/', 'n.细绳，粗线，索');
INSERT INTO `cet4` VALUES ('cet4_0642', '　　core', '/ kɔ:/', 'n.果实的心，核心');
INSERT INTO `cet4` VALUES ('cet4_0643', '　　corn', '/ kɔ:n/', 'n.谷物；(英)小麦');
INSERT INTO `cet4` VALUES ('cet4_0644', '　　corner', '/ ‘kɔ:nə/', 'n.角；犄角；边远地区');
INSERT INTO `cet4` VALUES ('cet4_0645', '　　corporation', '/ kɔ:pə’reiʃən/', 'n.公司，企业；社团');
INSERT INTO `cet4` VALUES ('cet4_0646', '　　correct', '/ kə’rekt/', 'a.正确的 vt.纠正');
INSERT INTO `cet4` VALUES ('cet4_0647', '　　correspond', '/ kɔris’pɔnd/', 'vi.相符合；相当');
INSERT INTO `cet4` VALUES ('cet4_0648', '　　corresponding', '/ kɔris’pɔndiŋ/', 'a.相应的；符合的');
INSERT INTO `cet4` VALUES ('cet4_0649', '　　corridor', '/ ‘kɔridɔ:/', 'n.走廊，回廊，通路');
INSERT INTO `cet4` VALUES ('cet4_0650', '　　cost', '/ kɔst/', 'n.价格，代价；成本');
INSERT INTO `cet4` VALUES ('cet4_0651', '　　costly', '/ ‘kɔstli/', 'a.昂贵的；价值高的');
INSERT INTO `cet4` VALUES ('cet4_0652', '　　cottage', '/ ‘kɔtidʒ/', 'n.村舍，小屋');
INSERT INTO `cet4` VALUES ('cet4_0653', '　　cotton', '/ ‘kɔtn/', 'n.棉；棉线；棉布');
INSERT INTO `cet4` VALUES ('cet4_0654', '　　cough', '/ kɔf/', 'vi.咳，咳嗽 n.咳嗽');
INSERT INTO `cet4` VALUES ('cet4_0655', '　　could', '/ kud, kəd/', 'aux.v.(can的过去式)');
INSERT INTO `cet4` VALUES ('cet4_0656', '　　council', '/ ‘kaunsil/', 'n.理事会，委员会');
INSERT INTO `cet4` VALUES ('cet4_0657', '　　count', '/ kaunt/', 'vt.计算 vi.数，计数');
INSERT INTO `cet4` VALUES ('cet4_0658', '　　counter', '/ ‘kauntə/', 'n.柜台；计数器');
INSERT INTO `cet4` VALUES ('cet4_0659', '　　country', '/ ‘kΛntri/', 'n.国家，国土；农村');
INSERT INTO `cet4` VALUES ('cet4_0660', '　　countryside', '/ ‘kΛntrisaid/', 'n.乡下，农村');
INSERT INTO `cet4` VALUES ('cet4_0661', '　　county', '/ ‘kaunti/', 'n.英国的郡，美国的县');
INSERT INTO `cet4` VALUES ('cet4_0662', '　　couple', '/ ‘kΛpl/', 'n.夫妇；(一)对；几个');
INSERT INTO `cet4` VALUES ('cet4_0663', '　　courage', '/ ‘kΛridʒ/', 'n.勇气，胆量，胆识');
INSERT INTO `cet4` VALUES ('cet4_0664', '　　course', '/ kɔ:s/', 'n.课程；过程；一道菜');
INSERT INTO `cet4` VALUES ('cet4_0665', '　　court', '/ kɔ:t/', 'n.法院，法庭；庭院');
INSERT INTO `cet4` VALUES ('cet4_0666', '　　cousin', '/ ‘kΛzn/', 'n.堂(或表)兄弟(姐妹)');
INSERT INTO `cet4` VALUES ('cet4_0667', '　　cover', '/ ‘kΛvə/', 'vt.盖，包括 n.盖子');
INSERT INTO `cet4` VALUES ('cet4_0668', '　　cow', '/ kau/', 'n.母牛，奶牛；母兽');
INSERT INTO `cet4` VALUES ('cet4_0669', '　　crack', '/ kræk/', 'n.裂缝，裂纹 vi.爆裂');
INSERT INTO `cet4` VALUES ('cet4_0670', '　　craft', '/ kra:ft/', 'n.工艺；手艺，行业');
INSERT INTO `cet4` VALUES ('cet4_0671', '　　crane', '/ krein/', 'n.起重机，摄影升降机');
INSERT INTO `cet4` VALUES ('cet4_0672', '　　crash', '/ kræʃ/', 'vi.碰撞，坠落 n.碰撞');
INSERT INTO `cet4` VALUES ('cet4_0673', '　　crawl', '/ krɔ:l/', 'vi.爬，爬行');
INSERT INTO `cet4` VALUES ('cet4_0674', '　　crazy', '/ ‘kreizi/', 'a.疯狂的，荒唐的');
INSERT INTO `cet4` VALUES ('cet4_0675', '　　cream', '/ kri:m/', 'n.奶油，乳脂；奶油色');
INSERT INTO `cet4` VALUES ('cet4_0676', '　　create', '/ kri(:)’eit/', 'vt.创造；引起，产生');
INSERT INTO `cet4` VALUES ('cet4_0677', '　　creative', '/ kri(:)’eitiv/', 'a.创造性的，创作的');
INSERT INTO `cet4` VALUES ('cet4_0678', '　　creature', '/ ‘kri:tʃə/', 'n.生物，动物，家畜');
INSERT INTO `cet4` VALUES ('cet4_0679', '　　credit', '/ ‘kredit/', 'n.信用贷款；信用');
INSERT INTO `cet4` VALUES ('cet4_0680', '　　creep', '/ kri:p/', 'vi.爬行；缓慢地行进');
INSERT INTO `cet4` VALUES ('cet4_0681', '　　crew', '/ kru:/', 'n.全体船员');
INSERT INTO `cet4` VALUES ('cet4_0682', '　　crime', '/ kraim/', 'n.罪，罪行；犯罪');
INSERT INTO `cet4` VALUES ('cet4_0683', '　　criminal', '/ ‘kriminl/', 'n.犯人，罪犯，刑事犯');
INSERT INTO `cet4` VALUES ('cet4_0684', '　　crisis', '/ ‘kraisis/', 'n.危机；存亡之际');
INSERT INTO `cet4` VALUES ('cet4_0685', '　　critic', '/ ‘kritik/', 'n.批评家，爱挑剔的人');
INSERT INTO `cet4` VALUES ('cet4_0686', '　　critical', '/ ‘kritikəl/', 'a.决定性的；批评的');
INSERT INTO `cet4` VALUES ('cet4_0687', '　　criticism', '/ ‘kritisizəm/', 'n.批评；批判；评论');
INSERT INTO `cet4` VALUES ('cet4_0688', '　　criticize', '/ ‘kritisaiz/', 'vt.批评；评论；非难');
INSERT INTO `cet4` VALUES ('cet4_0689', '　　crop', '/ krɔp/', 'n.农作物，庄稼；一熟');
INSERT INTO `cet4` VALUES ('cet4_0690', '　　cross', '/ krɔs/', 'vt.穿过；使交叉');
INSERT INTO `cet4` VALUES ('cet4_0691', '　　crowd', '/ kraud/', 'n.群；大众；一伙人');
INSERT INTO `cet4` VALUES ('cet4_0692', '　　crown', '/ kraun/', 'n.王冠，冕；花冠');
INSERT INTO `cet4` VALUES ('cet4_0693', '　　crude', '/ kru:d/', 'a.简陋的；天然的');
INSERT INTO `cet4` VALUES ('cet4_0694', '　　cruel', '/ ‘kruəl/', 'a.残忍的，残酷的');
INSERT INTO `cet4` VALUES ('cet4_0695', '　　crush', '/ krΛʃ/', 'vt.压碎，碾碎；镇压');
INSERT INTO `cet4` VALUES ('cet4_0696', '　　crust', '/ krΛst/', 'n.面包皮；硬外皮');
INSERT INTO `cet4` VALUES ('cet4_0697', '　　cry', '/ krai/', 'vi.哭，哭泣；叫喊');
INSERT INTO `cet4` VALUES ('cet4_0698', '　　crystal', '/ ‘kristl/', 'n.水晶，结晶体；晶粒');
INSERT INTO `cet4` VALUES ('cet4_0699', '　　cube', '/ kju:b/', 'n.立方形；立方');
INSERT INTO `cet4` VALUES ('cet4_0700', '　　cubic', '/ ‘kju:bik/', 'a.立方形的；立方的');
INSERT INTO `cet4` VALUES ('cet4_0701', '　　cultivate', '/ ‘kΛltiveit/', 'vt.耕；种植；培养');
INSERT INTO `cet4` VALUES ('cet4_0702', '　　culture', '/ ‘kΛltʃə/', 'n.文化，文明；教养');
INSERT INTO `cet4` VALUES ('cet4_0703', '　　cup', '/ kΛp/', 'n.杯子；(一)杯；奖杯');
INSERT INTO `cet4` VALUES ('cet4_0704', '　　cupboard', '/ ‘kΛbəd/', 'n.碗柜，碗碟橱；食橱');
INSERT INTO `cet4` VALUES ('cet4_0705', '　　cure', '/ kjuə/', 'vt.医治；消除 n.治愈');
INSERT INTO `cet4` VALUES ('cet4_0706', '　　curiosity', '/ kjuəri’ositi/', 'n.好奇，好奇心；珍品');
INSERT INTO `cet4` VALUES ('cet4_0707', '　　curious', '/ ‘kjuəriəs/', 'a.好奇的；稀奇古怪的');
INSERT INTO `cet4` VALUES ('cet4_0708', '　　current', '/ ‘kΛrənt/', 'a.当前的；通用的');
INSERT INTO `cet4` VALUES ('cet4_0709', '　　curse', '/ kə:s/', 'n.诅咒，咒骂；天谴');
INSERT INTO `cet4` VALUES ('cet4_0710', '　　curtain', '/ ‘kə:tn/', 'n.帘，窗帘；幕(布)');
INSERT INTO `cet4` VALUES ('cet4_0711', '　　curve', '/ kə:v/', 'n.曲线；弯 vt.弄弯');
INSERT INTO `cet4` VALUES ('cet4_0712', '　　cushion', '/ ‘kuʃən/', 'n.垫子，坐垫，靠垫');
INSERT INTO `cet4` VALUES ('cet4_0713', '　　custom', '/ ‘kΛstəm/', 'n.习惯，风俗；海关');
INSERT INTO `cet4` VALUES ('cet4_0714', '　　customer', '/ ‘kΛstəmə/', 'n.顾客，主顾');
INSERT INTO `cet4` VALUES ('cet4_0715', '　　cut', '/ kΛt/', 'vt.切，割，剪；减少');
INSERT INTO `cet4` VALUES ('cet4_0716', '　　cycle', '/ ‘saikl/', 'n自行车，循环');
INSERT INTO `cet4` VALUES ('cet4_0960', 'each', '/ i:tʃ/', 'pron.各，各自 a.各');
INSERT INTO `cet4` VALUES ('cet4_0961', '　　eager', '/ ‘i:gə/', 'a.渴望的，热切的');
INSERT INTO `cet4` VALUES ('cet4_0962', '　　eagle', '/ ‘i:gl/', 'n.鹰');
INSERT INTO `cet4` VALUES ('cet4_0963', '　　ear', '/ iə/', 'n.耳朵；听力，听觉');
INSERT INTO `cet4` VALUES ('cet4_0964', '　　early', '/ ‘ə:li/', 'ad.早 a.早的，早期的');
INSERT INTO `cet4` VALUES ('cet4_0965', '　　earn', '/ ə:n/', 'vt.赚得，挣得；获得');
INSERT INTO `cet4` VALUES ('cet4_0966', '　　earnest', '/ ‘ə:nist/', 'a.认真的，诚恳的');
INSERT INTO `cet4` VALUES ('cet4_0967', '　　earth', '/ ə:θ/', 'n.地球；陆地，地面');
INSERT INTO `cet4` VALUES ('cet4_0968', '　　earthquake', '/ ‘ə:θkweik/', 'n.地震；大震荡');
INSERT INTO `cet4` VALUES ('cet4_0969', '　　ease', '/ i:z/', 'n.容易，舒适 vt.缓和');
INSERT INTO `cet4` VALUES ('cet4_0970', '　　east', '/ i:st/', 'n.东；东部 ad.在东方');
INSERT INTO `cet4` VALUES ('cet4_0971', '　　eastern', '/ ‘i:stən/', 'a.东方的；朝东的');
INSERT INTO `cet4` VALUES ('cet4_0972', '　　easy', '/ ‘i:zi/', 'a.容易的；安逸的');
INSERT INTO `cet4` VALUES ('cet4_0973', '　　eat', '/ i:t/', 'vt.吃，喝 vi.吃饭');
INSERT INTO `cet4` VALUES ('cet4_0974', '　　echo', '/ ‘ekəu/', 'n.回声，反响 vi.重复');
INSERT INTO `cet4` VALUES ('cet4_0975', '　　economic', '/ i:kə’nɔmik/', 'a.经济的，经济学的');
INSERT INTO `cet4` VALUES ('cet4_0976', '　　economical', '/ i:kə’nɔmikəl/', 'a.节约的；经济学的');
INSERT INTO `cet4` VALUES ('cet4_0977', '　　economy', '/ i(:)’kɔnəmi/', 'n.经济；节约，节省');
INSERT INTO `cet4` VALUES ('cet4_0978', '　　edge', '/ edʒ/', 'n.边缘，边；刀口');
INSERT INTO `cet4` VALUES ('cet4_0979', '　　edition', '/ i’diʃən/', 'n.版，版本，版次');
INSERT INTO `cet4` VALUES ('cet4_0980', '　　editor', '/ ‘editə/', 'n.编辑，编者，校订者');
INSERT INTO `cet4` VALUES ('cet4_0981', '　　educate', '/ ‘edju(:)keit/', 'vt.教育；培养；训练');
INSERT INTO `cet4` VALUES ('cet4_0982', '　　education', '/ edju:’keiʃən/', 'n.教育；训导；教育学');
INSERT INTO `cet4` VALUES ('cet4_0983', '　　effect', '/ i’fekt/', 'n.结果；效果，效力');
INSERT INTO `cet4` VALUES ('cet4_0984', '　　effective', '/ i’fektiv/', 'a.有效的；有影响的');
INSERT INTO `cet4` VALUES ('cet4_0985', '　　efficiency', '/ i’fiʃənsi/', 'n.效率；功效，效能');
INSERT INTO `cet4` VALUES ('cet4_0986', '　　efficient', '/ i’fiʃənt/', 'a.效率高的，有能力的');
INSERT INTO `cet4` VALUES ('cet4_0987', '　　effort', '/ ‘efət/', 'n.努力；努力的成果');
INSERT INTO `cet4` VALUES ('cet4_0988', '　　egg', '/ eg/', 'n.蛋，鸡蛋，卵');
INSERT INTO `cet4` VALUES ('cet4_0989', '　　eight', '/ eit/', 'num.八，八个，第八');
INSERT INTO `cet4` VALUES ('cet4_0990', '　　eighteen', '/ ‘ei’ti:n/', 'num.十八，十八个');
INSERT INTO `cet4` VALUES ('cet4_0991', '　　eighth', '/ eitθ/', 'num.第八 n.八分之一');
INSERT INTO `cet4` VALUES ('cet4_0992', '　　eighty', '/ ‘eiti/', 'num.八十，八十个');
INSERT INTO `cet4` VALUES ('cet4_0993', '　　either', '/ ‘aiðə, ‘i:ðə/', 'pron.(两者)任何一个');
INSERT INTO `cet4` VALUES ('cet4_0994', '　　elaborate', '/ i’læbərit/', 'a.复杂的；精心制作的');
INSERT INTO `cet4` VALUES ('cet4_0995', '　　elastic', '/ i’læstik/', 'n.松紧带 a.有弹性的');
INSERT INTO `cet4` VALUES ('cet4_0996', '　　elder', '/ ‘eldə/', 'a.年龄较大的 n.长者');
INSERT INTO `cet4` VALUES ('cet4_0997', '　　elect', '/ i’lekt/', 'vt.选举，推选；选择');
INSERT INTO `cet4` VALUES ('cet4_0998', '　　election', '/ i’lekʃən/', 'n.选举，选择权；当选');
INSERT INTO `cet4` VALUES ('cet4_0999', '　　electric', '/ i’lektrik/', 'a.电的，电动的');
INSERT INTO `cet4` VALUES ('cet4_1000', '　　electrical', '/ i’lektrikəl/', 'a.电的，电气科学的');
INSERT INTO `cet4` VALUES ('cet4_1001', '　　electricity', '/ ilek’trisiti/', 'n.电，电学；电流');
INSERT INTO `cet4` VALUES ('cet4_1002', '　　electron', '/ i’lektrɔn/', 'n.电子');
INSERT INTO `cet4` VALUES ('cet4_1003', '　　electronic', '/ ilek’trɔnik/', 'a.电子的');
INSERT INTO `cet4` VALUES ('cet4_1004', '　　element', '/ ‘elimənt/', 'n.成分；要素；元素');
INSERT INTO `cet4` VALUES ('cet4_1005', '　　elementary', '/ eli’mentəri/', 'a.基本的；初级的');
INSERT INTO `cet4` VALUES ('cet4_1006', '　　elephant', '/ ‘elifənt/', 'n.象');
INSERT INTO `cet4` VALUES ('cet4_1007', '　　elevator', '/ ‘eliveitə/', 'n.电梯；升降机');
INSERT INTO `cet4` VALUES ('cet4_1008', '　　eleven', '/ i’levn/', 'num.十一，十一个');
INSERT INTO `cet4` VALUES ('cet4_1009', '　　eliminate', '/ i’limineit/', 'vt.消灭，消除，排除');
INSERT INTO `cet4` VALUES ('cet4_1010', '　　else', '/ els/', 'ad.其它，另外 a.别的');
INSERT INTO `cet4` VALUES ('cet4_1011', '　　elsewhere', '/ els’weə/', 'ad.在别处，向别处');
INSERT INTO `cet4` VALUES ('cet4_1012', '　　embarrass', '/ im’bærəs/', 'vt.使窘迫，使为难');
INSERT INTO `cet4` VALUES ('cet4_1013', '　　embrace', '/ im’breis/', 'vt.拥抱；包括；包围');
INSERT INTO `cet4` VALUES ('cet4_1014', '　　emerge', '/ i’mə:dʒ/', 'vi.出现，涌现；冒出');
INSERT INTO `cet4` VALUES ('cet4_1015', '　　emergency', '/ i’mə:dʒənsi/', 'n.紧急情况，突然事件');
INSERT INTO `cet4` VALUES ('cet4_1016', '　　emit', '/ i’mit/', 'vt.散发；发射；发表');
INSERT INTO `cet4` VALUES ('cet4_1017', '　　emotion', '/ i’məuʃən/', 'n.情感，感情；激动');
INSERT INTO `cet4` VALUES ('cet4_1018', '　　emotional', '/ i’məuʃənl/', 'a.感情的，情绪的');
INSERT INTO `cet4` VALUES ('cet4_1019', '　　emperor', '/ ‘empərə/', 'n.皇帝');
INSERT INTO `cet4` VALUES ('cet4_1020', '　　emphasis', '/ ‘emfəsis/', 'n.强调，重点，重要性');
INSERT INTO `cet4` VALUES ('cet4_1021', '　　emphasize', '/ ‘emfəsaiz/', 'vt.强调，着重');
INSERT INTO `cet4` VALUES ('cet4_1022', '　　empire', '/ ‘empaiə/', 'n.帝国');
INSERT INTO `cet4` VALUES ('cet4_1023', '　　employ', '/ im’plɔi/', 'vi.雇用；用；使忙于');
INSERT INTO `cet4` VALUES ('cet4_1024', '　　employee', '/ emplɔi’i:/', 'n.受雇者，雇员，雇工');
INSERT INTO `cet4` VALUES ('cet4_1025', '　　employer', '/ im’plɔiə/', 'n.雇佣者，雇主');
INSERT INTO `cet4` VALUES ('cet4_1026', '　　employment', '/ im’plɔimənt/', 'n.工业；雇用；使用');
INSERT INTO `cet4` VALUES ('cet4_1027', '　　empty', '/ ‘empti/', 'a.空的；空洞的');
INSERT INTO `cet4` VALUES ('cet4_1028', '　　enable', '/ i’neibl/', 'vt.使能够，使可能');
INSERT INTO `cet4` VALUES ('cet4_1029', '　　enclose', '/ in’kləuz/', 'vt.围住，圈起；附上');
INSERT INTO `cet4` VALUES ('cet4_1030', '　　encounter', '/ in’kauntə/', 'vt.遭遇，遇到 n.遭遇');
INSERT INTO `cet4` VALUES ('cet4_1031', '　　encourage', '/ in’kΛridʒ/', 'vt.鼓励，支持，助长');
INSERT INTO `cet4` VALUES ('cet4_1032', '　　end', '/ end/', 'n.末端；目标 vt.结束');
INSERT INTO `cet4` VALUES ('cet4_1033', '　　ending', '/ ‘endiŋ/', 'n.结尾，结局；死亡');
INSERT INTO `cet4` VALUES ('cet4_1034', '　　endless', '/ ‘endlis/', 'a.无止境的');
INSERT INTO `cet4` VALUES ('cet4_1035', '　　endure', '/ in’djuə/', 'vt.忍受；容忍');
INSERT INTO `cet4` VALUES ('cet4_1036', '　　enemy', '/ ‘enimi/', 'n.敌人；仇敌；敌兵');
INSERT INTO `cet4` VALUES ('cet4_1037', '　　energy', '/ ‘enədʒi/', 'n.活力；精力；能');
INSERT INTO `cet4` VALUES ('cet4_1038', '　　enforce', '/ in’fɔ:s/', 'vt.实施，执行；强制');
INSERT INTO `cet4` VALUES ('cet4_1039', '　　engage', '/ in’geidʒ/', 'vt.使从事于；聘用');
INSERT INTO `cet4` VALUES ('cet4_1040', '　　engine', '/ ‘endʒin/', 'n. 发动机，引擎；机车');
INSERT INTO `cet4` VALUES ('cet4_1041', '　　engineer', '/ endʒi’niə/', 'n.工程师，技师');
INSERT INTO `cet4` VALUES ('cet4_1042', '　　engineering', '/ endʒi’niəriŋ/', 'n.工程，工程学');
INSERT INTO `cet4` VALUES ('cet4_1043', '　　enlarge', '/ in’la:dʒ/', 'vt.扩大，扩展；放大');
INSERT INTO `cet4` VALUES ('cet4_1044', '　　enormous', '/ i’nɔ:məs/', 'a.巨大的，庞大的');
INSERT INTO `cet4` VALUES ('cet4_1045', '　　enough', '/ i’nΛf/', 'a.足够的 ad.足够地');
INSERT INTO `cet4` VALUES ('cet4_1046', '　　enquire', '/ in’kwaiə/', 'vi.vt. 询问');
INSERT INTO `cet4` VALUES ('cet4_1047', '　　enquiry', '/ /', 'n. 询问');
INSERT INTO `cet4` VALUES ('cet4_1048', '　　ensure', '/ in’ʃuə/', 'vt.保证；保护；赋予');
INSERT INTO `cet4` VALUES ('cet4_1049', '　　entertain', '/ entə’tein/', 'vt.使欢乐；招待');
INSERT INTO `cet4` VALUES ('cet4_1050', '　　enthusiasm', '/ in’θju:ziæzəm/', 'n.热情，热心，热忱');
INSERT INTO `cet4` VALUES ('cet4_1051', '　　entitle', '/ in’taitl/', 'vt.给…权利(或资格)');
INSERT INTO `cet4` VALUES ('cet4_1052', '　　entry', '/ ‘entri/', 'n.入口处；登记；进入');
INSERT INTO `cet4` VALUES ('cet4_1053', '　　environment', '/ in’vaiərənmənt/', 'n.环境，外界；围绕');
INSERT INTO `cet4` VALUES ('cet4_1054', '　　envy', '/ ‘envi/', 'vt.&n.妒忌；羡慕');
INSERT INTO `cet4` VALUES ('cet4_1055', '　　equal', '/ ‘i:kwəl/', 'a.相等的；平等的');
INSERT INTO `cet4` VALUES ('cet4_1056', '　　equality', '/ i(:)’kwɔliti/', 'n.等同，平等；相等');
INSERT INTO `cet4` VALUES ('cet4_1057', '　　equation', '/ i’kweiʃən/', 'n.方程(式)；等式');
INSERT INTO `cet4` VALUES ('cet4_1058', '　　equip', '/ i’kwip/', 'vt.装备，配备');
INSERT INTO `cet4` VALUES ('cet4_1059', '　　equipment', '/ i’kwipmənt/', 'n.装备，设备，配备');
INSERT INTO `cet4` VALUES ('cet4_1060', '　　equivalent', '/ i’kwivələnt/', 'a.相等的；等量的');
INSERT INTO `cet4` VALUES ('cet4_1061', '　　era', '/ ‘iərə/', 'n.时代，年代；纪元');
INSERT INTO `cet4` VALUES ('cet4_1062', '　　erect', '/ i’rekt/', 'vt.建造；使竖立');
INSERT INTO `cet4` VALUES ('cet4_1063', '　　error', '/ ‘erə/', 'n.错误，谬误；差错');
INSERT INTO `cet4` VALUES ('cet4_1064', '　　escape', '/ is’keip/', 'vi.逃跑；逸出 n.逃跑');
INSERT INTO `cet4` VALUES ('cet4_1065', '　　especially', '/ is’peʃəli/', 'ad.特别，尤其，格外');
INSERT INTO `cet4` VALUES ('cet4_1066', '　　essay', '/ ‘esei/', 'n.短文，散文，小品文');
INSERT INTO `cet4` VALUES ('cet4_1067', '　　essential', '/ i’senʃəl/', 'a.必要的，本质的');
INSERT INTO `cet4` VALUES ('cet4_1068', '　　establish', '/ is’tæbliʃ/', 'vt.建立，设立；确立');
INSERT INTO `cet4` VALUES ('cet4_1069', '　　establishment', '/ is’tæbliʃmənt/', 'n.建立，设立，确立');
INSERT INTO `cet4` VALUES ('cet4_1070', '　　estimate', '/ ‘estimit, ‘estimeit/', 'vt.估计，评价 n.估计');
INSERT INTO `cet4` VALUES ('cet4_1071', '　　əurope', '/ ‘juərəp/', 'n.欧洲');
INSERT INTO `cet4` VALUES ('cet4_1072', '　　əuropean', '/ juərə’pi:ən/', 'a.欧洲的 n.欧洲人');
INSERT INTO `cet4` VALUES ('cet4_1073', '　　evaluate', '/ i’væljueit/', 'vt.评价，估…的价');
INSERT INTO `cet4` VALUES ('cet4_1074', '　　evaporate', '/ i’væpəreit/', 'vt.使蒸发 vi.蒸发');
INSERT INTO `cet4` VALUES ('cet4_1075', '　　eve', '/ i:v/', 'n.前夜，前夕，前一刻');
INSERT INTO `cet4` VALUES ('cet4_1076', '　　even', '/ ‘i:vən/', 'ad.甚至；甚至更，还');
INSERT INTO `cet4` VALUES ('cet4_1077', '　　even', '/ ‘i:vən/', 'a.均匀的；平的');
INSERT INTO `cet4` VALUES ('cet4_1078', '　　evening', '/ ‘i:vniŋ/', 'n.傍晚，黄昏，晚上');
INSERT INTO `cet4` VALUES ('cet4_1079', '　　event', '/ i’vent/', 'n.事件，大事；事变');
INSERT INTO `cet4` VALUES ('cet4_1080', '　　eventually', '/ i’ventjuəli/', 'ad.终于；最后');
INSERT INTO `cet4` VALUES ('cet4_1081', '　　ever', '/ ‘evə/', 'ad.在任何时候；曾经');
INSERT INTO `cet4` VALUES ('cet4_1082', '　　every', '/ ‘evri/', 'a.每一的；每隔…的');
INSERT INTO `cet4` VALUES ('cet4_1083', '　　everybody', '/ ‘evribɔdi/', 'pron.每人，人人');
INSERT INTO `cet4` VALUES ('cet4_1084', '　　everyday', '/ ‘evridei/', 'a.每天的，日常的');
INSERT INTO `cet4` VALUES ('cet4_1085', '　　everyone', '/ ‘evriwΛn/', 'pron.每人，人人');
INSERT INTO `cet4` VALUES ('cet4_1086', '　　everything', '/ ‘evriθiŋ/', 'pron.每件事，事事');
INSERT INTO `cet4` VALUES ('cet4_1087', '　　everywhere', '/ ‘evriweə/', 'ad.到处，处处');
INSERT INTO `cet4` VALUES ('cet4_1088', '　　evidence', '/ ‘evidəns/', 'n.根据；证据，证人');
INSERT INTO `cet4` VALUES ('cet4_1089', '　　evident', '/ ‘evidənt/', 'a.明显的，明白的');
INSERT INTO `cet4` VALUES ('cet4_1090', '　　evil', '/ ‘i:vl/', 'n.邪恶；祸害 a.坏的');
INSERT INTO `cet4` VALUES ('cet4_1091', '　　evolution', '/ i:və’lju:ʃən/', 'n.进化，演化；发展');
INSERT INTO `cet4` VALUES ('cet4_1092', '　　evolve', '/ i’vɔlv/', 'vt.使进化；使发展');
INSERT INTO `cet4` VALUES ('cet4_1093', '　　exact', '/ ig’zækt/', 'a.确切的；精确的');
INSERT INTO `cet4` VALUES ('cet4_1094', '　　exaggerate', '/ ig’zædʒəreit/', 'vt.&vi.夸大，夸张');
INSERT INTO `cet4` VALUES ('cet4_1095', '　　exam', '/ ig’zæm/', 'n.考试；检查，细查');
INSERT INTO `cet4` VALUES ('cet4_1096', '　　examination', '/ igzæmi’neiʃən/', 'n.考试；检查，细查');
INSERT INTO `cet4` VALUES ('cet4_1097', '　　examine', '/ ig’zæmin/', 'vt.检查，仔细观察');
INSERT INTO `cet4` VALUES ('cet4_1098', '　　example', '/ ig’za:mpl/', 'n.例子，实例；模范');
INSERT INTO `cet4` VALUES ('cet4_1099', '　　exceed', '/ ik’si:d/', 'vt.超过，胜过；超出');
INSERT INTO `cet4` VALUES ('cet4_1100', '　　exceedingly', '/ ik’si:diŋli/', 'ad.极端地，非常');
INSERT INTO `cet4` VALUES ('cet4_1101', '　　excellent', '/ ‘eksələnt/', 'a.优秀的，杰出的');
INSERT INTO `cet4` VALUES ('cet4_1102', '　　except', '/ ik’sept/', 'prep.除…之外');
INSERT INTO `cet4` VALUES ('cet4_1103', '　　exception', '/ ik’sepʃən/', 'n.例外，除外');
INSERT INTO `cet4` VALUES ('cet4_1104', '　　excess', '/ ik’ses, ‘ekses/', 'n.超越；过量；过度');
INSERT INTO `cet4` VALUES ('cet4_1105', '　　excessive', '/ ik’sesiv/', 'a.过多的，极度的');
INSERT INTO `cet4` VALUES ('cet4_1106', '　　exchange', '/ iks’tʃeindʒ/', 'vt.交换；交流 n.交换');
INSERT INTO `cet4` VALUES ('cet4_1107', '　　excite', '/ ik’sait/', 'vt.使激动；引起');
INSERT INTO `cet4` VALUES ('cet4_1108', '　　exciting', '/ ik’saitiŋ/', 'a.令人兴奋的');
INSERT INTO `cet4` VALUES ('cet4_1109', '　　exclaim', '/ iks’kleim/', 'vi.呼喊；惊叫');
INSERT INTO `cet4` VALUES ('cet4_1110', '　　exclude', '/ iks’klu:d/', 'vt.把…排除在外');
INSERT INTO `cet4` VALUES ('cet4_1111', '　　exclusively', '/ iks’klu:sivli/', 'ad.专门地');
INSERT INTO `cet4` VALUES ('cet4_1112', '　　excursion', '/ iks’kə:ʃən/', 'n.远足；短途旅行');
INSERT INTO `cet4` VALUES ('cet4_1113', '　　excuse', '/ iks’kju:z, iks’kju:s/', 'vt.原谅；免除 n.借口');
INSERT INTO `cet4` VALUES ('cet4_1114', '　　execute', '/ ‘eksikju:t/', 'vt.将…处死；实施');
INSERT INTO `cet4` VALUES ('cet4_1115', '　　executive', '/ ig’zekjutiv/', 'a.执行的 n.执行者');
INSERT INTO `cet4` VALUES ('cet4_1116', '　　exercise', '/ ‘eksəsaiz/', 'n.锻炼，训练 vi.练习');
INSERT INTO `cet4` VALUES ('cet4_1117', '　　exert', '/ ig’zə:t/', 'vt.尽(力)，运用');
INSERT INTO `cet4` VALUES ('cet4_1118', '　　exhaust', '/ ig’zɔ:st/', 'vt.使筋疲力尽；用尽');
INSERT INTO `cet4` VALUES ('cet4_1119', '　　exhibit', '/ ig’zibit/', 'vt.显示；陈列，展览');
INSERT INTO `cet4` VALUES ('cet4_1120', '　　exhibition', '/ eksi’biʃən/', 'n.展览，陈列；展览会');
INSERT INTO `cet4` VALUES ('cet4_1121', '　　exist', '/ ig’zist/', 'vi.存在；生存，生活');
INSERT INTO `cet4` VALUES ('cet4_1122', '　　existence', '/ ig’zistəns/', 'n.存在，实在；生存');
INSERT INTO `cet4` VALUES ('cet4_1123', '　　exit', '/ ‘eksit/', 'n.出口；退场 vi.退出');
INSERT INTO `cet4` VALUES ('cet4_1124', '　　expand', '/ iks’pænd/', 'vt.扩大；使膨胀');
INSERT INTO `cet4` VALUES ('cet4_1125', '　　expansion', '/ iks’pænʃən/', 'n.扩大，扩充；扩张');
INSERT INTO `cet4` VALUES ('cet4_1126', '　　expect', '/ iks’pekt/', 'vt.预料，预期；等待');
INSERT INTO `cet4` VALUES ('cet4_1127', '　　expectation', '/ ekspek’teiʃən/', 'n.期待，期望，预期');
INSERT INTO `cet4` VALUES ('cet4_1128', '　　expense', '/ iks’pens/', 'n.花费，消费；费用');
INSERT INTO `cet4` VALUES ('cet4_1129', '　　expensive', '/ iks’pensiv/', 'a.昂贵的，花钱多的');
INSERT INTO `cet4` VALUES ('cet4_1130', '　　experience', '/ iks’piəriəns/', 'n.经验，感受；经历');
INSERT INTO `cet4` VALUES ('cet4_1131', '　　experiment', '/ iks’perimənt/', 'n.实验；试验');
INSERT INTO `cet4` VALUES ('cet4_1132', '　　experimental', '/ iksperi’mentl/', 'a.实验的，试验的');
INSERT INTO `cet4` VALUES ('cet4_1133', '　　expert', '/ ‘ekspə:t/', 'n.专家 a.熟练的');
INSERT INTO `cet4` VALUES ('cet4_1134', '　　explain', '/ iks’plein/', 'vt.解释；为…辩解');
INSERT INTO `cet4` VALUES ('cet4_1135', '　　explanation', '/ eksplə’neiʃən/', 'n.解释，说明；辩解');
INSERT INTO `cet4` VALUES ('cet4_1136', '　　explode', '/ iks’pləud/', 'vt.使爆炸 vi.爆炸');
INSERT INTO `cet4` VALUES ('cet4_1137', '　　explɔit', '/ ‘eksplɔit, iks’plɔit/', 'vt.剥削；利用；开拓');
INSERT INTO `cet4` VALUES ('cet4_1138', '　　explore', '/ iks’plɔ:/', 'vt.&vi.探险，探索');
INSERT INTO `cet4` VALUES ('cet4_1139', '　　explosion', '/ iks’pləuʒən/', 'n.爆炸，爆发，炸裂');
INSERT INTO `cet4` VALUES ('cet4_1140', '　　explosive', '/ iks’pləusiv/', 'n.炸药 a.爆炸的');
INSERT INTO `cet4` VALUES ('cet4_1141', '　　export', '/ eks’pɔ:t, ‘ekspɔ:t/', 'vt.输出，出口；运走');
INSERT INTO `cet4` VALUES ('cet4_1142', '　　expose', '/ iks’pəuz/', 'vt.使暴露；揭露');
INSERT INTO `cet4` VALUES ('cet4_1143', '　　exposure', '/ iks’pəuʒə/', 'n.暴露；揭露；曝光');
INSERT INTO `cet4` VALUES ('cet4_1144', '　　express', '/ iks’pres/', 'vt.表示 n.快车，快递');
INSERT INTO `cet4` VALUES ('cet4_1145', '　　expression', '/ iks’preʃən/', 'n.词句；表达；表情');
INSERT INTO `cet4` VALUES ('cet4_1146', '　　extend', '/ iks’tend/', 'vt.延长；扩大；致');
INSERT INTO `cet4` VALUES ('cet4_1147', '　　extension', '/ iks’tenʃən/', 'n.延长部分；伸展');
INSERT INTO `cet4` VALUES ('cet4_1148', '　　extensive', '/ iks’tensiv/', 'a.广阔的；广泛的');
INSERT INTO `cet4` VALUES ('cet4_1149', '　　extent', '/ iks’tent/', 'n.广度；范围；程度');
INSERT INTO `cet4` VALUES ('cet4_1150', '　　exterior', '/ eks’tiəriə/', 'a.外部的；对外的');
INSERT INTO `cet4` VALUES ('cet4_1151', '　　external', '/ eks’tə:nl/', 'a.外部的，外面的');
INSERT INTO `cet4` VALUES ('cet4_1152', '　　extra', '/ ‘ekstrə/', 'a.额外的 ad.特别地');
INSERT INTO `cet4` VALUES ('cet4_1153', '　　extraordinary', '/ iks’trɔ:dinəri/', 'a.非同寻常的，特别的');
INSERT INTO `cet4` VALUES ('cet4_1154', '　　extreme', '/ iks’tri:m/', 'a.极度的；尽头的');
INSERT INTO `cet4` VALUES ('cet4_1155', '　　eye', '/ ai/', 'n.眼睛；眼力；鉴赏力');
INSERT INTO `cet4` VALUES ('cet4_1156', '　　eyesight', '/ ‘aisait/', 'n.视力，目力');
INSERT INTO `cet4` VALUES ('cet4_1159', 'fabric', '/ ‘fæbrik/', 'n.织物，纺织品；结构');
INSERT INTO `cet4` VALUES ('cet4_1160', '　　face', '/ feis/', 'n.脸；表面；外表');
INSERT INTO `cet4` VALUES ('cet4_1161', '　　facility', '/ fə’siliti/', 'n.设备；容易；便利');
INSERT INTO `cet4` VALUES ('cet4_1162', '　　fact', '/ fækt/', 'n.事实；实际，实情');
INSERT INTO `cet4` VALUES ('cet4_1163', '　　factor', '/ ‘fæktə/', 'n.因素；因子，系数');
INSERT INTO `cet4` VALUES ('cet4_1164', '　　factory', '/ ‘fæktəri/', 'n.工厂，制造厂');
INSERT INTO `cet4` VALUES ('cet4_1165', '　　faculty', '/ ‘fækəlti/', 'n.才能，能力；系，科');
INSERT INTO `cet4` VALUES ('cet4_1166', '　　fade', '/ feid/', 'vi.褪色；逐渐消失');
INSERT INTO `cet4` VALUES ('cet4_1167', '　　fail', '/ feil/', 'vi.失败；失灵；不能');
INSERT INTO `cet4` VALUES ('cet4_1168', '　　failure', '/ ‘feiljə/', 'n.失败；失败的人');
INSERT INTO `cet4` VALUES ('cet4_1169', '　　faint', '/ feint/', 'a.微弱的；虚弱的');
INSERT INTO `cet4` VALUES ('cet4_1170', '　　fair', '/ feə/', 'a.公平的；相当的');
INSERT INTO `cet4` VALUES ('cet4_1171', '　　fair', '/ feə/', 'n.定期集市；博览会');
INSERT INTO `cet4` VALUES ('cet4_1172', '　　fairly', '/ ‘feəli/', 'ad.相当；公平地');
INSERT INTO `cet4` VALUES ('cet4_1173', '　　faith', '/ feiθ/', 'n.信任，信心；信仰');
INSERT INTO `cet4` VALUES ('cet4_1174', '　　faithful', '/ ‘feiθful/', 'a.忠诚的；如实的');
INSERT INTO `cet4` VALUES ('cet4_1175', '　　fall', '/ fɔ:l/', 'vi.落下；跌倒；陷落');
INSERT INTO `cet4` VALUES ('cet4_1176', '　　false', '/ fɔ:ls/', 'a.不真实的；伪造的');
INSERT INTO `cet4` VALUES ('cet4_1177', '　　fame', '/ feim/', 'n.名声，名望');
INSERT INTO `cet4` VALUES ('cet4_1178', '　　familiar', '/ fə’miljə/', 'a.熟悉的；冒昧的');
INSERT INTO `cet4` VALUES ('cet4_1179', '　　family', '/ ‘fæmili/', 'n.家，家庭；家族');
INSERT INTO `cet4` VALUES ('cet4_1180', '　　famine', '/ ‘fæmin/', 'n.饥荒；严重的缺乏');
INSERT INTO `cet4` VALUES ('cet4_1181', '　　famous', '/ ‘feiməs/', 'a.著名的，出名的');
INSERT INTO `cet4` VALUES ('cet4_1182', '　　fan', '/ fæn/', 'n.(运动等)狂热爱好者');
INSERT INTO `cet4` VALUES ('cet4_1183', '　　fan', '/ fæn/', 'n.扇子，风扇 vt.扇');
INSERT INTO `cet4` VALUES ('cet4_1184', '　　fancy', '/ ‘fænsi/', 'n.想象力；设想；爱好');
INSERT INTO `cet4` VALUES ('cet4_1185', '　　far', '/ fa:/', 'a.远的 ad.远，遥远');
INSERT INTO `cet4` VALUES ('cet4_1186', '　　fare', '/ feə/', 'n.车费，船费，票价');
INSERT INTO `cet4` VALUES ('cet4_1187', '　　farewell', '/ ‘feə’wel/', 'int.再会 n.告别');
INSERT INTO `cet4` VALUES ('cet4_1188', '　　farm', '/ fa:m/', 'n.农场，农庄；饲养场');
INSERT INTO `cet4` VALUES ('cet4_1189', '　　farmer', '/ ‘fa:mə/', 'n.农民，农夫；农场主');
INSERT INTO `cet4` VALUES ('cet4_1190', '　　farther', '/ ‘fa:ðə/', 'ad.更远地 a.更远的');
INSERT INTO `cet4` VALUES ('cet4_1191', '　　fashion', '/ ‘fæʃən/', 'n.样子，方式；风尚');
INSERT INTO `cet4` VALUES ('cet4_1192', '　　fashionable', '/ ‘fæʃənəbl/', 'a.流行的，时髦的');
INSERT INTO `cet4` VALUES ('cet4_1193', '　　fast', '/ fa:st/', 'a.快的；偏快的 ad.快');
INSERT INTO `cet4` VALUES ('cet4_1194', '　　fasten', '/ ‘fa:sn/', 'vt.扎牢，扣住');
INSERT INTO `cet4` VALUES ('cet4_1195', '　　fat', '/ fæt/', 'n. 脂肪,肥肉 a. 肥胖的');
INSERT INTO `cet4` VALUES ('cet4_1196', '　　fatal', '/ ‘feitl/', 'a.致命的；命运的');
INSERT INTO `cet4` VALUES ('cet4_1197', '　　fate', '/ feit/', 'n.命运，天数');
INSERT INTO `cet4` VALUES ('cet4_1198', '　　father', '/ ‘fa:ðə/', 'n.父亲；神父；创始人');
INSERT INTO `cet4` VALUES ('cet4_1199', '　　fatigue', '/ fə’ti:g/', 'n.疲劳，劳累');
INSERT INTO `cet4` VALUES ('cet4_1200', '　　fault', '/ fɔ:lt/', 'n.缺点；过失；故障');
INSERT INTO `cet4` VALUES ('cet4_1201', '　　faulty', '/ ‘fɔ:lti/', 'a.有错误的，有缺点的');
INSERT INTO `cet4` VALUES ('cet4_1202', '　　favour', '/ ‘feivə/', 'n.好感；赞同；恩惠');
INSERT INTO `cet4` VALUES ('cet4_1203', '　　favourable', '/ ‘feivərəbl/', 'a.有利的；赞成的');
INSERT INTO `cet4` VALUES ('cet4_1204', '　　favourite', '/ ‘feivərit/', 'a.特别受喜爱的');
INSERT INTO `cet4` VALUES ('cet4_1205', '　　fear', '/ fiə/', 'n.害怕；担心 vt.害怕');
INSERT INTO `cet4` VALUES ('cet4_1206', '　　fearful', '/ ‘fiəful/', 'a.害怕的，可怕的');
INSERT INTO `cet4` VALUES ('cet4_1207', '　　feasible', '/ ‘fi:zəbl/', 'a.可行的；可能的');
INSERT INTO `cet4` VALUES ('cet4_1208', '　　feather', '/ ‘feðə/', 'n.羽毛；翎毛；羽状物');
INSERT INTO `cet4` VALUES ('cet4_1209', '　　feature', '/ ‘fi:tʃə/', 'n.特征，特色；面貌');
INSERT INTO `cet4` VALUES ('cet4_1210', '　　ʃebruary', '/ ‘februəri/', 'n.二月');
INSERT INTO `cet4` VALUES ('cet4_1211', '　　federal', '/ ‘fedərəl/', 'a.联邦的；联盟的');
INSERT INTO `cet4` VALUES ('cet4_1212', '　　fee', '/ fi:/', 'n.费，酬金；赏金');
INSERT INTO `cet4` VALUES ('cet4_1213', '　　feed', '/ fi:d/', 'vt.喂(养) vi.吃饲料');
INSERT INTO `cet4` VALUES ('cet4_1214', '　　feedback', '/ ‘fi:dbæk/', 'n.回授，反馈，反应');
INSERT INTO `cet4` VALUES ('cet4_1215', '　　feel', '/ fi:l/', 'vi.有知觉 vt.触，摸');
INSERT INTO `cet4` VALUES ('cet4_1216', '　　feeling', '/ ‘fi:liŋ/', 'n.感情；感觉，知觉');
INSERT INTO `cet4` VALUES ('cet4_1217', '　　fellow', '/ ‘feləu/', 'n.人，家伙；伙伴');
INSERT INTO `cet4` VALUES ('cet4_1218', '　　female', '/ ‘fi:meil/', 'n.雌性的动物；女子');
INSERT INTO `cet4` VALUES ('cet4_1219', '　　fence', '/ fens/', 'n.栅栏');
INSERT INTO `cet4` VALUES ('cet4_1220', '　　fertile', '/ ‘fə:tail/', 'a.肥沃的；多产的');
INSERT INTO `cet4` VALUES ('cet4_1221', '　　fertilizer', '/ ‘fə:tilaizə/', 'n.肥料');
INSERT INTO `cet4` VALUES ('cet4_1222', '　　festival', '/ ‘festəvəl/', 'n.节日；音乐节');
INSERT INTO `cet4` VALUES ('cet4_1223', '　　fetch', '/ fetʃ/', 'vt.拿来；请来，接去');
INSERT INTO `cet4` VALUES ('cet4_1224', '　　fever', '/ ‘fi:və/', 'n.发热，发烧；狂热');
INSERT INTO `cet4` VALUES ('cet4_1225', '　　few', '/ fju:/', 'a.很少的；少数的');
INSERT INTO `cet4` VALUES ('cet4_1226', '　　fibre', '/ ‘faibə/', 'n.纤维，纤维质');
INSERT INTO `cet4` VALUES ('cet4_1227', '　　fiction', '/ ‘fikʃən/', 'n.小说；虚构，杜撰');
INSERT INTO `cet4` VALUES ('cet4_1228', '　　field', '/ fi:ld/', 'n.田野；田；运动场');
INSERT INTO `cet4` VALUES ('cet4_1229', '　　fierce', '/ fiəs/', 'a.凶猛的，狂热的');
INSERT INTO `cet4` VALUES ('cet4_1230', '　　fifteen', '/ ‘fif’ti:n/', 'num.十五；十五个');
INSERT INTO `cet4` VALUES ('cet4_1231', '　　fifth', '/ fifθ/', 'num.第五 n.五分之一');
INSERT INTO `cet4` VALUES ('cet4_1232', '　　fifty', '/ ‘fifti/', 'num.五十，五十个');
INSERT INTO `cet4` VALUES ('cet4_1233', '　　fight', '/ fait/', 'vi.打(仗)；斗争');
INSERT INTO `cet4` VALUES ('cet4_1234', '　　figure', '/ ‘figə/', 'n.数字；外形；人物');
INSERT INTO `cet4` VALUES ('cet4_1235', '　　file', '/ fail/', 'n.档案 vt.把…归档');
INSERT INTO `cet4` VALUES ('cet4_1236', '　　fill', '/ fil/', 'vt.装满，盛满；占满');
INSERT INTO `cet4` VALUES ('cet4_1237', '　　film', '/ film/', 'n.影片；胶卷；薄层');
INSERT INTO `cet4` VALUES ('cet4_1238', '　　filter', '/ ‘filtə/', 'vt.过滤 n.滤纸');
INSERT INTO `cet4` VALUES ('cet4_1239', '　　final', '/ ‘fainl/', 'a.最后的；决定性的');
INSERT INTO `cet4` VALUES ('cet4_1240', '　　finally', '/ ‘fainəli/', 'ad.最后；不可更改的');
INSERT INTO `cet4` VALUES ('cet4_1241', '　　finance', '/ fai’næns, fi-/', 'n.财政，金融；财源');
INSERT INTO `cet4` VALUES ('cet4_1242', '　　financial', '/ fai’nænʃəl, fi-/', 'a.财政的，金融的');
INSERT INTO `cet4` VALUES ('cet4_1243', '　　find', '/ faind/', 'vt.找到；发觉；找出');
INSERT INTO `cet4` VALUES ('cet4_1244', '　　finding', '/ faindiŋ/', 'n.发现；调查的结果');
INSERT INTO `cet4` VALUES ('cet4_1245', '　　fine', '/ fain/', 'a.美好的；纤细的');
INSERT INTO `cet4` VALUES ('cet4_1246', '　　fine', '/ fain/', 'n.罚金，罚款');
INSERT INTO `cet4` VALUES ('cet4_1247', '　　finger', '/ ‘fiŋgə/', 'n.手指；指状物');
INSERT INTO `cet4` VALUES ('cet4_1248', '　　finish', '/ ‘finiʃ/', 'vt.完成，结束 n.结束');
INSERT INTO `cet4` VALUES ('cet4_1249', '　　fire', '/ ‘faiə/', 'n.火；火灾 vi.开火');
INSERT INTO `cet4` VALUES ('cet4_1250', '　　fireman', '/ ‘faiəmən/', 'n.消防队员；司炉工');
INSERT INTO `cet4` VALUES ('cet4_1251', '　　firm', '/ fə:m/', 'n.商行，商号，公司');
INSERT INTO `cet4` VALUES ('cet4_1252', '　　first', '/ fə:st/', 'num.第一 ad.最初');
INSERT INTO `cet4` VALUES ('cet4_1253', '　　fish', '/ fiʃ/', 'n.鱼，鱼肉 vi.钓鱼');
INSERT INTO `cet4` VALUES ('cet4_1254', '　　fisherman', '/ ‘fiʃəmən/', 'n.渔民，渔夫，打鱼人');
INSERT INTO `cet4` VALUES ('cet4_1255', '　　fit', '/ fit/', 'vt.适合；安装vi.适合');
INSERT INTO `cet4` VALUES ('cet4_1256', '　　five', '/ faiv/', 'num.五，五个，第五');
INSERT INTO `cet4` VALUES ('cet4_1257', '　　fix', '/ fiks/', 'vt.使固定；决定');
INSERT INTO `cet4` VALUES ('cet4_1258', '　　flag', '/ flæg/', 'n.旗，旗帜；旗舰旗');
INSERT INTO `cet4` VALUES ('cet4_1259', '　　flame', '/ fleim/', 'n.火焰；光辉；热情');
INSERT INTO `cet4` VALUES ('cet4_1260', '　　flash', '/ flæʃ/', 'n.闪光 vi.闪，闪烁');
INSERT INTO `cet4` VALUES ('cet4_1261', '　　flat', '/ flæt/', 'a.平的，扁平的');
INSERT INTO `cet4` VALUES ('cet4_1262', '　　flat', '/ flæt/', 'n.一套房间；单元住宅');
INSERT INTO `cet4` VALUES ('cet4_1263', '　　flavour', '/ ‘fleivə/', 'n.味，味道；风味');
INSERT INTO `cet4` VALUES ('cet4_1264', '　　fleet', '/ fli:t/', 'n.舰队；船队，机群');
INSERT INTO `cet4` VALUES ('cet4_1265', '　　flesh', '/ fleʃ/', 'n.肉，肌肉；肉体');
INSERT INTO `cet4` VALUES ('cet4_1266', '　　flexible', '/ ‘fleksəbl/', 'a.易弯曲的；灵活的');
INSERT INTO `cet4` VALUES ('cet4_1267', '　　flight', '/ flait/', 'n.航班；飞行；逃跑');
INSERT INTO `cet4` VALUES ('cet4_1268', '　　float', '/ fləut/', 'vi.漂浮 vt.使漂浮');
INSERT INTO `cet4` VALUES ('cet4_1269', '　　flock', '/ flɔk/', 'n.羊群，群；大量');
INSERT INTO `cet4` VALUES ('cet4_1270', '　　flood', '/ flΛd/', 'n.洪水 vt.淹没');
INSERT INTO `cet4` VALUES ('cet4_1271', '　　floor', '/ flɔ:/', 'n.地板；楼层');
INSERT INTO `cet4` VALUES ('cet4_1272', '　　flour', '/ ‘flauə/', 'n.面粉，粉；粉状物质');
INSERT INTO `cet4` VALUES ('cet4_1273', '　　flourish', '/ ‘flΛriʃ/', 'vi.繁荣，茂盛，兴旺');
INSERT INTO `cet4` VALUES ('cet4_1274', '　　flow', '/ fləu/', 'vi.流动；飘垂；涨潮');
INSERT INTO `cet4` VALUES ('cet4_1275', '　　flower', '/ ‘flauə/', 'n.花，花卉；开花');
INSERT INTO `cet4` VALUES ('cet4_1276', '　　fluent', '/ ‘flu(:)ənt/', 'a.流利的，流畅的');
INSERT INTO `cet4` VALUES ('cet4_1277', '　　fluid', '/ ‘flu(:)id/', 'n.流体，液体');
INSERT INTO `cet4` VALUES ('cet4_1278', '　　fly', '/ flai/', 'n.蝇，苍蝇 vi.飞行');
INSERT INTO `cet4` VALUES ('cet4_1279', '　　focus', '/ ‘fəukəs/', 'vi.聚焦，注视 n.焦点');
INSERT INTO `cet4` VALUES ('cet4_1280', '　　fog', '/ fɔg/', 'n.雾；烟雾，尘雾');
INSERT INTO `cet4` VALUES ('cet4_1281', '　　fold', '/ fəuld/', 'vt.折叠；合拢 n.褶');
INSERT INTO `cet4` VALUES ('cet4_1282', '　　folk', '/ fəulk/', 'n.人们，家属，亲属');
INSERT INTO `cet4` VALUES ('cet4_1283', '　　follow', '/ ‘fɔləu/', 'vt.跟随；结果是');
INSERT INTO `cet4` VALUES ('cet4_1284', '　　following', '/ ‘fɔləuiŋ/', 'a.接着的；下列的');
INSERT INTO `cet4` VALUES ('cet4_1285', '　　fond', '/ fɔnd/', 'a.喜爱的；溺爱的');
INSERT INTO `cet4` VALUES ('cet4_1286', '　　food', '/ fu:d/', 'n.食物，食品，养料');
INSERT INTO `cet4` VALUES ('cet4_1287', '　　fool', '/ fu:l/', 'n.蠢人，傻子 vt.欺骗');
INSERT INTO `cet4` VALUES ('cet4_1288', '　　foolish', '/ ‘fu:liʃ/', 'a.愚蠢的；鲁莽的');
INSERT INTO `cet4` VALUES ('cet4_1289', '　　foot', '/ fut/', 'n.脚；最下部；英尺');
INSERT INTO `cet4` VALUES ('cet4_1290', '　　football', '/ ‘futbɔ:l/', 'n.足球比赛；足球');
INSERT INTO `cet4` VALUES ('cet4_1291', '　　footstep', '/ ‘futstep/', 'n.脚步；脚步声；足迹');
INSERT INTO `cet4` VALUES ('cet4_1292', '　　for', '/ fɔ:, fə/', 'prep.为；给；因为');
INSERT INTO `cet4` VALUES ('cet4_1293', '　　forbid', '/ fə’bid/', 'vt.禁止，不许；阻止');
INSERT INTO `cet4` VALUES ('cet4_1294', '　　force', '/ fɔ:s/', 'vt.强迫 n.力，力量');
INSERT INTO `cet4` VALUES ('cet4_1295', '　　forecast', '/ ‘fɔ:ka:st/', 'n.预测，预报 vt.预示');
INSERT INTO `cet4` VALUES ('cet4_1296', '　　forehead', '/ ‘fɔrid, ‘fɔ:hed/', 'n.额头，前部');
INSERT INTO `cet4` VALUES ('cet4_1297', '　　foreign', '/ ‘fɔrin/', 'a.外国的；外来的');
INSERT INTO `cet4` VALUES ('cet4_1298', '　　foreigner', '/ ‘fɔrinə/', 'n.外国人');
INSERT INTO `cet4` VALUES ('cet4_1299', '　　forest', '/ ‘fɔrist/', 'n.森林；森林地带');
INSERT INTO `cet4` VALUES ('cet4_1300', '　　forever', '/ fə’revə/', 'ad.永远，总是，老是');
INSERT INTO `cet4` VALUES ('cet4_1301', '　　forge', '/ fɔ:dʒ/', 'n. 熔炉,铁工厂 vt. 打制,锻造,伪造');
INSERT INTO `cet4` VALUES ('cet4_1302', '　　forget', '/ fə’get/', 'vt.忘记，遗忘');
INSERT INTO `cet4` VALUES ('cet4_1303', '　　forgive', '/ fə’giv/', 'vt.原谅，饶恕，宽恕');
INSERT INTO `cet4` VALUES ('cet4_1304', '　　fork', '/ fɔ:k/', 'n.餐叉；叉；分叉');
INSERT INTO `cet4` VALUES ('cet4_1305', '　　form', '/ fɔ:m/', 'n.形式；形状 vt.形成');
INSERT INTO `cet4` VALUES ('cet4_1306', '　　formal', '/ ‘fɔ:məl/', 'a.正式的；礼仪上的');
INSERT INTO `cet4` VALUES ('cet4_1307', '　　formation', '/ fɔ:’meiʃən/', 'n.形成；构成；形成物');
INSERT INTO `cet4` VALUES ('cet4_1308', '　　former', '/ ‘fɔ:mə/', 'a.在前的 n.前者');
INSERT INTO `cet4` VALUES ('cet4_1309', '　　formula', '/ ‘fɔ:mjulə/', 'n.公式，式');
INSERT INTO `cet4` VALUES ('cet4_1310', '　　forth', '/ fɔ:θ/', 'ad.向前；向外，往外');
INSERT INTO `cet4` VALUES ('cet4_1311', '　　fortnight', '/ ‘fɔ:tnait/', 'n.两星期，十四天');
INSERT INTO `cet4` VALUES ('cet4_1312', '　　fortunate', '/ ‘fɔ:tʃənit/', 'a.幸运的，侥幸的');
INSERT INTO `cet4` VALUES ('cet4_1313', '　　fortunately', '/ ‘fɔ:tʃənitli/', 'ad.幸运地，幸亏');
INSERT INTO `cet4` VALUES ('cet4_1314', '　　fortune', '/ ‘fɔ:tʃən/', 'n.命运，运气；财产');
INSERT INTO `cet4` VALUES ('cet4_1315', '　　forty', '/ ‘fɔ:ti/', 'num.四十，第四十');
INSERT INTO `cet4` VALUES ('cet4_1316', '　　forward', '/ ‘fɔ:wəd/', 'ad.向前；今后，往后');
INSERT INTO `cet4` VALUES ('cet4_1317', '　　found', '/ faund/', 'vt.创立，创办；建立');
INSERT INTO `cet4` VALUES ('cet4_1318', '　　foundation', '/ faun’deiʃən/', 'n.基础；地基；基金');
INSERT INTO `cet4` VALUES ('cet4_1319', '　　fountain', '/ ‘fauntin/', 'n.泉水，喷泉；源泉');
INSERT INTO `cet4` VALUES ('cet4_1320', '　　four', '/ fɔ:/', 'num.四，四个，第四');
INSERT INTO `cet4` VALUES ('cet4_1321', '　　fourteen', '/ ‘fɔ:’ti:n/', 'num.十四，第十四');
INSERT INTO `cet4` VALUES ('cet4_1322', '　　fox', '/ fɔks/', 'n.狐狸；狡猾的人');
INSERT INTO `cet4` VALUES ('cet4_1323', '　　fraction', '/ ‘frækʃən/', 'n.小部分；片断；分数');
INSERT INTO `cet4` VALUES ('cet4_1324', '　　fragment', '/ ‘frægmənt/', 'n.碎片，破片，碎块');
INSERT INTO `cet4` VALUES ('cet4_1325', '　　frame', '/ freim/', 'n.框架，框子；构架');
INSERT INTO `cet4` VALUES ('cet4_1326', '　　framework', '/ ‘freimwə:k/', 'n.框架，构架，结构');
INSERT INTO `cet4` VALUES ('cet4_1327', '　　frank', '/ fræŋk/', 'a.坦白的，直率的');
INSERT INTO `cet4` VALUES ('cet4_1328', '　　free', '/ fri:/', 'a.自由的；空闲的');
INSERT INTO `cet4` VALUES ('cet4_1329', '　　freedom', '/ ‘fri:dəm/', 'n.自由；自主');
INSERT INTO `cet4` VALUES ('cet4_1330', '　　freeze', '/ fri:z/', 'vi.冻；结冻vt.使结冰');
INSERT INTO `cet4` VALUES ('cet4_1331', '　　freight', '/ freit/', 'n.货运；货物；运费');
INSERT INTO `cet4` VALUES ('cet4_1332', '　　ʃrench', '/ frentʃ/', 'a.法国的 n.法国人');
INSERT INTO `cet4` VALUES ('cet4_1333', '　　frequency', '/ ‘fri:kwənsi/', 'n.屡次；次数；频率');
INSERT INTO `cet4` VALUES ('cet4_1334', '　　frequent', '/ ‘fri:kwənt/', 'a.时常发生的；经常的');
INSERT INTO `cet4` VALUES ('cet4_1335', '　　fresh', '/ freʃ/', 'a.新的；新鲜的');
INSERT INTO `cet4` VALUES ('cet4_1336', '　　friction', '/ ‘frikʃən/', 'n.摩擦，摩擦力');
INSERT INTO `cet4` VALUES ('cet4_1337', '　　ʃriday', '/ ‘fraidi/', 'n.星期五');
INSERT INTO `cet4` VALUES ('cet4_1338', '　　fridge', '/ fridʒ/', 'n.电冰箱');
INSERT INTO `cet4` VALUES ('cet4_1339', '　　friend', '/ frend/', 'n.朋友，友人');
INSERT INTO `cet4` VALUES ('cet4_1340', '　　friendly', '/ ‘frendli/', 'a.友好的，友谊的');
INSERT INTO `cet4` VALUES ('cet4_1341', '　　friendship', '/ ‘frendʃip/', 'n.友谊，友好');
INSERT INTO `cet4` VALUES ('cet4_1342', '　　frighten', '/ ‘fraitn/', 'vt.使惊恐，吓唬');
INSERT INTO `cet4` VALUES ('cet4_1343', '　　frog', '/ frɔg/', 'n.蛙');
INSERT INTO `cet4` VALUES ('cet4_1344', '　　from', '/ frɔm, frəm, frm/', 'prep.从…来；离开');
INSERT INTO `cet4` VALUES ('cet4_1345', '　　front', '/ frΛnt/', 'a.前面的 n.前部');
INSERT INTO `cet4` VALUES ('cet4_1346', '　　frontier', '/ ‘frΛntjə/', 'n.边境；边疆；新领域');
INSERT INTO `cet4` VALUES ('cet4_1347', '　　frost', '/ frɔst/', 'n.冰冻，严寒；霜');
INSERT INTO `cet4` VALUES ('cet4_1348', '　　frown', '/ fraun/', 'vi.皱眉，蹙额');
INSERT INTO `cet4` VALUES ('cet4_1349', '　　fruit', '/ fru:t/', 'n.水果；果实；成果');
INSERT INTO `cet4` VALUES ('cet4_1350', '　　fruitful', '/ ‘fru:tful/', 'a.多产的；肥沃的');
INSERT INTO `cet4` VALUES ('cet4_1351', '　　fry', '/ frai/', 'vt.油煎，油炸，油炒');
INSERT INTO `cet4` VALUES ('cet4_1352', '　　fuel', '/ fjuəl/', 'n.燃料 vt.给…加燃料');
INSERT INTO `cet4` VALUES ('cet4_1353', '　　fulfil', '/ ful’fil/', 'vt.履行；满足；完成');
INSERT INTO `cet4` VALUES ('cet4_1354', '　　full', '/ ful/', 'a.满的；完全的');
INSERT INTO `cet4` VALUES ('cet4_1355', '　　fun', '/ fΛn/', 'n.乐趣，娱乐；玩笑');
INSERT INTO `cet4` VALUES ('cet4_1356', '　　function', '/ ‘fΛŋkʃən/', 'n.功能；职务；函数');
INSERT INTO `cet4` VALUES ('cet4_1357', '　　fund', '/ fΛnd/', 'n.资金；基金；存款');
INSERT INTO `cet4` VALUES ('cet4_1358', '　　fundamental', '/ fΛndə’mentl/', 'a.基础的，基本的');
INSERT INTO `cet4` VALUES ('cet4_1359', '　　funeral', '/ ‘fju:nərəl/', 'n.葬礼，丧礼，丧葬');
INSERT INTO `cet4` VALUES ('cet4_1360', '　　funny', '/ ‘fΛni/', 'a.古怪的；滑稽的');
INSERT INTO `cet4` VALUES ('cet4_1361', '　　fur', '/ fə:/', 'n.软毛；毛皮，裘皮');
INSERT INTO `cet4` VALUES ('cet4_1362', '　　furnace', '/ ‘fə:nis/', 'n.炉子，熔炉；鼓风炉');
INSERT INTO `cet4` VALUES ('cet4_1363', '　　furnish', '/ ‘fə:niʃ/', 'vt.供应，提供；装备');
INSERT INTO `cet4` VALUES ('cet4_1364', '　　furniture', '/ ‘fə:nitʃə/', 'n.家具；装置，设备');
INSERT INTO `cet4` VALUES ('cet4_1365', '　　further', '/ ‘fə:ðə/', 'ad.更远地 a.更远的');
INSERT INTO `cet4` VALUES ('cet4_1366', '　　furthermore', '/ ‘fə:ðə’mɔ:/', 'ad.而且，此外');
INSERT INTO `cet4` VALUES ('cet4_1367', '　　future', '/ ‘fju:tʃə/', 'n.将来，未来；前途');
INSERT INTO `cet4` VALUES ('cet4_1370', 'gain', '/ gein/', 'vt.获得；增加 n.增进');
INSERT INTO `cet4` VALUES ('cet4_1371', '　　gallon', '/ ‘gælən/', 'n.加仑');
INSERT INTO `cet4` VALUES ('cet4_1372', '　　game', '/ geim/', 'n.游戏；比赛；猎物');
INSERT INTO `cet4` VALUES ('cet4_1373', '　　gang', '/ gæŋ/', 'n.一帮，一伙');
INSERT INTO `cet4` VALUES ('cet4_1374', '　　gap', '/ gæp/', 'n.缺口；间隔；差距');
INSERT INTO `cet4` VALUES ('cet4_1375', '　　garage', '/ ‘gæra:ʒ/', 'n.车库；加油站');
INSERT INTO `cet4` VALUES ('cet4_1376', '　　garden', '/ ‘ga:dn/', 'n.花园，菜园；公园');
INSERT INTO `cet4` VALUES ('cet4_1377', '　　gardener', '/ ‘ga:dnə/', 'n.园丁，花匠');
INSERT INTO `cet4` VALUES ('cet4_1378', '　　gas', '/ gæs/', 'n.煤气；气体；汽油');
INSERT INTO `cet4` VALUES ('cet4_1379', '　　gaseous', '/ ‘geizjəs/', 'a.气体的，气态的');
INSERT INTO `cet4` VALUES ('cet4_1380', '　　gasoline', '/ ‘gæsəli:n/', 'n.(美)汽油');
INSERT INTO `cet4` VALUES ('cet4_1381', '　　gate', '/ geit/', 'n.大门；篱笆门');
INSERT INTO `cet4` VALUES ('cet4_1382', '　　gather', '/ ‘gæðə/', 'vi.聚集；集合vt.收集');
INSERT INTO `cet4` VALUES ('cet4_1383', '　　gauge', '/ geidʒ/', 'vt.量，测量 n.量器');
INSERT INTO `cet4` VALUES ('cet4_1384', '　　gay', '/ gei/', 'a.快乐的；鲜明的');
INSERT INTO `cet4` VALUES ('cet4_1385', '　　gaze', '/ geiz/', 'vi.凝视，盯，注视');
INSERT INTO `cet4` VALUES ('cet4_1386', '　　general', '/ ‘dʒenərəl/', 'a.总的；一般的n.将军');
INSERT INTO `cet4` VALUES ('cet4_1387', '　　generally', '/ ‘dʒenərəli/', 'ad.一般地；通常地');
INSERT INTO `cet4` VALUES ('cet4_1388', '　　generate', '/ ‘dʒenəreit/', 'vt.发生；引起；生殖');
INSERT INTO `cet4` VALUES ('cet4_1389', '　　generation', '/ dʒenə’reiʃən/', 'n.一代，一代人；产生');
INSERT INTO `cet4` VALUES ('cet4_1390', '　　generator', '/ ‘dʒenəreitə/', 'n.发电机；发生者');
INSERT INTO `cet4` VALUES ('cet4_1391', '　　generous', '/ ‘dʒenərəs/', 'a.慷慨的；宽厚的');
INSERT INTO `cet4` VALUES ('cet4_1392', '　　genius', '/ ‘dʒi:njəs/', 'n.天才，天赋，天资');
INSERT INTO `cet4` VALUES ('cet4_1393', '　　gentle', '/ ‘dʒentl/', 'a.和蔼的；轻柔的');
INSERT INTO `cet4` VALUES ('cet4_1394', '　　gentleman', '/ ‘dʒentlmən/', 'n.绅士；有教养的人');
INSERT INTO `cet4` VALUES ('cet4_1395', '　　genuine', '/ ‘dʒenjuin/', 'a.真的；真正的');
INSERT INTO `cet4` VALUES ('cet4_1396', '　　geography', '/ dʒi’ɔgrəfi/', 'n.地理，地理学');
INSERT INTO `cet4` VALUES ('cet4_1397', '　　geometry', '/ dʒi’ɔmitri/', 'n.几何，几何学');
INSERT INTO `cet4` VALUES ('cet4_1398', '　　germ', '/ dʒə:m/', 'n.微生物，细菌，幼芽');
INSERT INTO `cet4` VALUES ('cet4_1399', '　　German', '/ ‘dʒə:mən/', 'a.德国的 n.德国人');
INSERT INTO `cet4` VALUES ('cet4_1400', '　　gesture', '/ ‘dʒestʃə/', 'n.姿势，手势；姿态');
INSERT INTO `cet4` VALUES ('cet4_1401', '　　get', '/ get/', 'vi.变得，成为；到达');
INSERT INTO `cet4` VALUES ('cet4_1402', '　　ghost', '/ gəust/', 'n.鬼，灵魂；鬼魂');
INSERT INTO `cet4` VALUES ('cet4_1403', '　　giant', '/ ‘dʒaiənt/', 'n.巨人；巨物');
INSERT INTO `cet4` VALUES ('cet4_1404', '　　gift', '/ gift/', 'n.礼物，赠品；天赋');
INSERT INTO `cet4` VALUES ('cet4_1405', '　　girl', '/ gə:l/', 'n.女孩子，姑娘；女儿');
INSERT INTO `cet4` VALUES ('cet4_1406', '　　give', '/ giv/', 'vt.做，作；送给');
INSERT INTO `cet4` VALUES ('cet4_1407', '　　glad', '/ glæd/', 'a.高兴的；乐意的');
INSERT INTO `cet4` VALUES ('cet4_1408', '　　glance', '/ gla:ns/', 'vi.看一下 n.一瞥');
INSERT INTO `cet4` VALUES ('cet4_1409', '　　glass', '/ gla:s/', 'n.玻璃；玻璃杯');
INSERT INTO `cet4` VALUES ('cet4_1410', '　　glimpse', '/ glimps/', 'vt.瞥见 n.一瞥，一看');
INSERT INTO `cet4` VALUES ('cet4_1411', '　　globe', '/ gləub/', 'n.地球，世界；地界仪');
INSERT INTO `cet4` VALUES ('cet4_1412', '　　glorious', '/ ‘glɔ:riəs/', 'a.光荣的；壮丽的');
INSERT INTO `cet4` VALUES ('cet4_1413', '　　glory', '/ ‘glɔ:ri/', 'n.光荣；荣誉的事');
INSERT INTO `cet4` VALUES ('cet4_1414', '　　glove', '/ glΛv/', 'n.手套');
INSERT INTO `cet4` VALUES ('cet4_1415', '　　glow', '/ gləu/', 'n.白热光 vi.发白热光');
INSERT INTO `cet4` VALUES ('cet4_1416', '　　glue', '/ glu:/', 'n.胶，胶水 vt.胶合');
INSERT INTO `cet4` VALUES ('cet4_1417', '　　go', '/ gəu/', 'vi.去；走；变为');
INSERT INTO `cet4` VALUES ('cet4_1418', '　　goal', '/ gəul/', 'n.球门；得分；目的');
INSERT INTO `cet4` VALUES ('cet4_1419', '　　goat', '/ gəut/', 'n.山羊');
INSERT INTO `cet4` VALUES ('cet4_1420', '　　God', '/ gɔd/', 'n.神，神像；上帝');
INSERT INTO `cet4` VALUES ('cet4_1421', '　　gold', '/ gəuld/', 'n.金；钱财 a.金制的');
INSERT INTO `cet4` VALUES ('cet4_1422', '　　golden', '/ ‘gəuldən/', 'a.金色的；极好的');
INSERT INTO `cet4` VALUES ('cet4_1423', '　　good', '/ gud/', 'a.好的；有本事的');
INSERT INTO `cet4` VALUES ('cet4_1424', '　　goodbye', '/ /', 'int.再见，再会');
INSERT INTO `cet4` VALUES ('cet4_1425', '　　goods', '/ gudz/', 'n.货物，商品');
INSERT INTO `cet4` VALUES ('cet4_1426', '　　goose', '/ gu:s/', 'n.鹅，雌鹅');
INSERT INTO `cet4` VALUES ('cet4_1427', '　　govern', '/ ‘gΛvən/', 'vt.统治，治理；支配');
INSERT INTO `cet4` VALUES ('cet4_1428', '　　government', '/ ‘gΛvənmənt/', 'n.政府；治理；政治');
INSERT INTO `cet4` VALUES ('cet4_1429', '　　governor', '/ ‘gΛvənə/', 'n.州长；主管人员');
INSERT INTO `cet4` VALUES ('cet4_1430', '　　grace', '/ greis/', 'n.优美，文雅；雅致');
INSERT INTO `cet4` VALUES ('cet4_1431', '　　graceful', '/ ‘greisful/', 'a.优美的，优雅的');
INSERT INTO `cet4` VALUES ('cet4_1432', '　　grade', '/ greid/', 'vt.给…分等级 n.等级');
INSERT INTO `cet4` VALUES ('cet4_1433', '　　gradual', '/ ‘grædjuəl/', 'a.逐渐的；渐进的');
INSERT INTO `cet4` VALUES ('cet4_1434', '　　graduate', '/ ‘grædjueit/', 'n.毕业生 vi.大学毕业');
INSERT INTO `cet4` VALUES ('cet4_1435', '　　grain', '/ ‘grein/', 'n.谷物，谷粒；颗粒');
INSERT INTO `cet4` VALUES ('cet4_1436', '　　gram', '/ græm/', 'n. 克');
INSERT INTO `cet4` VALUES ('cet4_1437', '　　grammar', '/ ‘græmə/', 'n.语法；语法书');
INSERT INTO `cet4` VALUES ('cet4_1438', '　　grammatical', '/ grə’mætikəl/', 'a.语法上的');
INSERT INTO `cet4` VALUES ('cet4_1439', '　　gramme', '/ græm/', 'n. 克');
INSERT INTO `cet4` VALUES ('cet4_1440', '　　grand', '/ grænd/', 'a.宏伟的；重大的');
INSERT INTO `cet4` VALUES ('cet4_1441', '　　grandfather', '/ ‘grændfa:ðə/', 'n.祖父；外祖父');
INSERT INTO `cet4` VALUES ('cet4_1442', '　　grandmother', '/ ‘grændmΛðə/', 'n.祖母，外祖母');
INSERT INTO `cet4` VALUES ('cet4_1443', '　　grant', '/ gra:nt/', 'n.授给物 vt.授予');
INSERT INTO `cet4` VALUES ('cet4_1444', '　　grape', '/ greip/', 'n.葡萄；葡萄藤');
INSERT INTO `cet4` VALUES ('cet4_1445', '　　graph', '/ græf/', 'n.(曲线)图，图表');
INSERT INTO `cet4` VALUES ('cet4_1446', '　　grasp', '/ gra:sp/', 'vt.抓紧；掌握 n.抓');
INSERT INTO `cet4` VALUES ('cet4_1447', '　　grass', '/ gra:s/', 'n.草；牧草；草地');
INSERT INTO `cet4` VALUES ('cet4_1448', '　　grateful', '/ ‘greitful/', 'a.感激的；令人愉快的');
INSERT INTO `cet4` VALUES ('cet4_1449', '　　gratitude', '/ ‘grætitju:d/', 'a.感激，感谢，感恩');
INSERT INTO `cet4` VALUES ('cet4_1450', '　　grave', '/ greiv/', 'n.坟墓 a.严重的');
INSERT INTO `cet4` VALUES ('cet4_1451', '　　gravity', '/ ‘græviti/', 'n.重力，引力；严重性');
INSERT INTO `cet4` VALUES ('cet4_1452', '　　gray', '/ grei/', 'a.灰色的 n.灰色');
INSERT INTO `cet4` VALUES ('cet4_1453', '　　great', '/ greit/', 'a.大的；伟大的');
INSERT INTO `cet4` VALUES ('cet4_1454', '　　greedy', '/ ‘gri:di/', 'a.贪吃的；贪婪的');
INSERT INTO `cet4` VALUES ('cet4_1455', '　　Greek', '/ gri:k/', 'a.希腊的 n.希腊人');
INSERT INTO `cet4` VALUES ('cet4_1456', '　　green', '/ gri:n/', 'a.绿色的 n.绿色');
INSERT INTO `cet4` VALUES ('cet4_1457', '　　greet', '/ gri:t/', 'vt.问候，招呼；反应');
INSERT INTO `cet4` VALUES ('cet4_1458', '　　greeting', '/ ‘gri:tiŋ/', 'n.问候，招呼，致敬');
INSERT INTO `cet4` VALUES ('cet4_1459', '　　grey', '/ grei/', 'a.灰色的 n.灰色');
INSERT INTO `cet4` VALUES ('cet4_1460', '　　grind', '/ graind/', 'vt.磨(碎)；磨快');
INSERT INTO `cet4` VALUES ('cet4_1461', '　　grip', '/ grip/', 'vt.握紧，抓牢 n.紧握');
INSERT INTO `cet4` VALUES ('cet4_1462', '　　grocer', '/ ‘grəusə/', 'n.食品商；杂货商');
INSERT INTO `cet4` VALUES ('cet4_1463', '　　gross', '/ grəus/', 'a.总的；严重的');
INSERT INTO `cet4` VALUES ('cet4_1464', '　　ground', '/ graund/', 'n.地；场地；根据');
INSERT INTO `cet4` VALUES ('cet4_1465', '　　group', '/ gru:p/', 'n.小组，群 vi.聚集');
INSERT INTO `cet4` VALUES ('cet4_1466', '　　grow', '/ grəu/', 'vi.生长；变得；增长');
INSERT INTO `cet4` VALUES ('cet4_1467', '　　growth', '/ grəuθ/', 'n.增长；增长量；生长');
INSERT INTO `cet4` VALUES ('cet4_1468', '　　guarantee', '/ gærən’ti:/', 'n.保证；担保物');
INSERT INTO `cet4` VALUES ('cet4_1469', '　　guard', '/ ga:d/', 'vt.守卫；看守 n.卫兵');
INSERT INTO `cet4` VALUES ('cet4_1470', '　　guess', '/ ges/', 'vt.&vi.&n.猜测，推测');
INSERT INTO `cet4` VALUES ('cet4_1471', '　　guest', '/ gest/', 'n.客人，宾客；旅客');
INSERT INTO `cet4` VALUES ('cet4_1472', '　　guidance', '/ ‘gaidəns/', 'n.引导，指导，领导');
INSERT INTO `cet4` VALUES ('cet4_1473', '　　guide', '/ gaid/', 'n.导游者 vt.给…导游');
INSERT INTO `cet4` VALUES ('cet4_1474', '　　guilty', '/ ‘gilti/', 'a.内疚的；有罪的');
INSERT INTO `cet4` VALUES ('cet4_1475', '　　gulf', '/ gΛlf/', 'n.海湾');
INSERT INTO `cet4` VALUES ('cet4_1476', '　　gum', '/ gΛm/', 'n.口香糖；树胶');
INSERT INTO `cet4` VALUES ('cet4_1477', '　　gun', '/ gΛn/', 'n.枪，炮，手枪');
INSERT INTO `cet4` VALUES ('cet4_1478', '　　gym', '/ dʒim/', 'n.体育馆，健身房');
INSERT INTO `cet4` VALUES ('cet4_1479', '　　gymnasium', '/ dʒim’neizjəm/', 'n.体育馆，健身房');
INSERT INTO `cet4` VALUES ('cet4_1481', 'habit', '/ ‘hæbit/', 'n.习惯；习性');
INSERT INTO `cet4` VALUES ('cet4_1482', '　　hair', '/ heə/', 'n.头发，毛发；毛');
INSERT INTO `cet4` VALUES ('cet4_1483', '　　half', '/ ha:f/', 'n.半，一半 a.一半的');
INSERT INTO `cet4` VALUES ('cet4_1484', '　　hall', '/ hɔ:l/', 'n.门厅；过道；会堂');
INSERT INTO `cet4` VALUES ('cet4_1485', '　　halt', '/ hɔ:lt/', 'vi.停止；立定 n.停住');
INSERT INTO `cet4` VALUES ('cet4_1486', '　　hammer', '/ ‘hæmə/', 'n.锤，榔头 vt.锤击');
INSERT INTO `cet4` VALUES ('cet4_1487', '　　hand', '/ hænd/', 'n.手；人手；指针');
INSERT INTO `cet4` VALUES ('cet4_1488', '　　handful', '/ hændful/', 'n.一把；少数，一小撮');
INSERT INTO `cet4` VALUES ('cet4_1489', '　　handkerchief', '/ ‘hæŋkətʃif/', 'n.手帕');
INSERT INTO `cet4` VALUES ('cet4_1490', '　　handle', '/ ‘hændl/', 'n.柄，把手 vt.拿，触');
INSERT INTO `cet4` VALUES ('cet4_1491', '　　handsome', '/ ‘hændsəm/', 'a.英俊的；相当大的');
INSERT INTO `cet4` VALUES ('cet4_1492', '　　handwriting', '/ ‘hændraitiŋ/', 'n.笔迹，手迹，书法');
INSERT INTO `cet4` VALUES ('cet4_1493', '　　handy', '/ ‘hændi/', 'a.手边的；便于使用的');
INSERT INTO `cet4` VALUES ('cet4_1494', '　　hang', '/ hæŋ/', 'vt.挂，悬；吊死');
INSERT INTO `cet4` VALUES ('cet4_1495', '　　happen', '/ ‘hæpən/', 'vi.发生；碰巧，恰好');
INSERT INTO `cet4` VALUES ('cet4_1496', '　　happy', '/ ‘hæpi/', 'a.快乐的；幸福的');
INSERT INTO `cet4` VALUES ('cet4_1497', '　　harbour', '/ ‘ha:bə/', 'n.海港，港口 vt.庇护');
INSERT INTO `cet4` VALUES ('cet4_1498', '　　hard', '/ ‘ha:d/', 'a.硬的；困难的');
INSERT INTO `cet4` VALUES ('cet4_1499', '　　harden', '/ ‘ha:dn/', 'vt.使变硬 vi.变硬');
INSERT INTO `cet4` VALUES ('cet4_1500', '　　hardly', '/ ‘ha:dli/', 'ad.几乎不，简直不');
INSERT INTO `cet4` VALUES ('cet4_1501', '　　hardship', '/ ‘ha:dʃip/', 'n.艰难，困苦');
INSERT INTO `cet4` VALUES ('cet4_1502', '　　hardware', '/ ‘ha:dweə/', 'n.五金器具；硬件');
INSERT INTO `cet4` VALUES ('cet4_1503', '　　harm', '/ ha:m/', 'n.伤害，损害 vt.损害');
INSERT INTO `cet4` VALUES ('cet4_1504', '　　harmony', '/ ‘ha:məni/', 'n.调合，协调，和谐');
INSERT INTO `cet4` VALUES ('cet4_1505', '　　harness', '/ ‘ha:nis/', 'vt.治理 n.马具，挽具');
INSERT INTO `cet4` VALUES ('cet4_1506', '　　harsh', '/ ha:ʃ/', 'a.严厉的；刺耳的');
INSERT INTO `cet4` VALUES ('cet4_1507', '　　harvest', '/ ‘ha:vist/', 'n.收获，收成 vt.收割');
INSERT INTO `cet4` VALUES ('cet4_1508', '　　haste', '/ heist/', 'n.急速，急忙；草率');
INSERT INTO `cet4` VALUES ('cet4_1509', '　　hat', '/ hæt/', 'n.帽子(一般指有边的)');
INSERT INTO `cet4` VALUES ('cet4_1510', '　　hate', '/ heit/', 'vt.恨，憎恨；不喜欢');
INSERT INTO `cet4` VALUES ('cet4_1511', '　　hatred', '/ ‘heitrid/', 'n.憎恶，憎恨，仇恨');
INSERT INTO `cet4` VALUES ('cet4_1512', '　　have', '/ hæv, həv/', 'v.aux.已经 vt.有；吃');
INSERT INTO `cet4` VALUES ('cet4_1513', '　　hay', '/ hei/', 'n.干草');
INSERT INTO `cet4` VALUES ('cet4_1514', '　　hazard', '/ ‘hæzəd/', 'n.危险；公害');
INSERT INTO `cet4` VALUES ('cet4_1515', '　　he', '/ hi:/', 'pron.(主格)他');
INSERT INTO `cet4` VALUES ('cet4_1516', '　　head', '/ hed/', 'n.头；上端 vt.率领');
INSERT INTO `cet4` VALUES ('cet4_1517', '　　headache', '/ ‘hedeik/', 'n.头痛；头痛的事');
INSERT INTO `cet4` VALUES ('cet4_1518', '　　heading', '/ ‘hediŋ/', 'n.标题，题词，题名');
INSERT INTO `cet4` VALUES ('cet4_1519', '　　headline', '/ ‘hedlain/', 'n.大字标题；新闻提要');
INSERT INTO `cet4` VALUES ('cet4_1520', '　　headquarters', '/ ‘hed’kwɔ:təz/', 'n.司令部；总部');
INSERT INTO `cet4` VALUES ('cet4_1521', '　　health', '/ helθ/', 'n.健康，健康状况');
INSERT INTO `cet4` VALUES ('cet4_1522', '　　healthy', '/ ‘helθi/', 'a.健康的；有益健康的');
INSERT INTO `cet4` VALUES ('cet4_1523', '　　heap', '/ hi:p/', 'n.(一)堆；大量');
INSERT INTO `cet4` VALUES ('cet4_1524', '　　hear', '/ hiə/', 'vt.听见；审讯；听说');
INSERT INTO `cet4` VALUES ('cet4_1525', '　　heart', '/ ha:t/', 'n.心，内心；勇气');
INSERT INTO `cet4` VALUES ('cet4_1526', '　　heat', '/ hi:t/', 'n.热，炎热 vi.变热');
INSERT INTO `cet4` VALUES ('cet4_1527', '　　heaven', '/ ‘hevn/', 'n.天堂；天，天空');
INSERT INTO `cet4` VALUES ('cet4_1528', '　　heavy', '/ ‘hevi/', 'a.重的；大的；充满的');
INSERT INTO `cet4` VALUES ('cet4_1529', '　　hedge', '/ hedʒ/', 'n.篱笆，树篱；障碍物');
INSERT INTO `cet4` VALUES ('cet4_1530', '　　heel', '/ hi:l/', 'n.脚后跟，踵，后跟');
INSERT INTO `cet4` VALUES ('cet4_1531', '　　height', '/ hait/', 'n.高，高度；高处');
INSERT INTO `cet4` VALUES ('cet4_1532', '　　helicopter', '/ ‘helikɔptə/', 'n.直升机');
INSERT INTO `cet4` VALUES ('cet4_1533', '　　hell', '/ hel/', 'n.地狱；极大的痛苦');
INSERT INTO `cet4` VALUES ('cet4_1534', '　　hello', '/ ‘hə’ləu/', 'int.喂');
INSERT INTO `cet4` VALUES ('cet4_1535', '　　help', '/ help/', 'vt.帮助；援助 n.帮手');
INSERT INTO `cet4` VALUES ('cet4_1536', '　　helpful', '/ ‘helpful/', 'a.给予帮助的；有用的');
INSERT INTO `cet4` VALUES ('cet4_1537', '　　helpless', '/ ‘helplis/', 'a.无助的；无能的');
INSERT INTO `cet4` VALUES ('cet4_1538', '　　hen', '/ hen/', 'n.母鸡，雌禽');
INSERT INTO `cet4` VALUES ('cet4_1539', '　　hence', '/ hens/', 'ad.因此，所以；今后');
INSERT INTO `cet4` VALUES ('cet4_1540', '　　her', '/ hə:, hə/', 'pron.(宾格)她；她的');
INSERT INTO `cet4` VALUES ('cet4_1541', '　　herd', '/ hə:d/', 'n.兽群，牧群 vt.放牧');
INSERT INTO `cet4` VALUES ('cet4_1542', '　　here', '/ hiə/', 'ad.这里；向这里');
INSERT INTO `cet4` VALUES ('cet4_1543', '　　hero', '/ ‘hiərəu/', 'n.男主角；英雄；勇士');
INSERT INTO `cet4` VALUES ('cet4_1544', '　　herɔic', '/ hi’rəuik/', 'a.英雄的；英勇的');
INSERT INTO `cet4` VALUES ('cet4_1545', '　　hers', '/ hə:z/', 'pron.她的(所有物)');
INSERT INTO `cet4` VALUES ('cet4_1546', '　　herself', '/ hə:’self/', 'pron.她自己；她亲自');
INSERT INTO `cet4` VALUES ('cet4_1547', '　　hesitate', '/ ‘heziteit/', 'vi.犹豫，踌躇；含糊');
INSERT INTO `cet4` VALUES ('cet4_1548', '　　hi', '/ hai/', 'ini.嗨(表示问候等)');
INSERT INTO `cet4` VALUES ('cet4_1549', '　　hide', '/ haid/', 'vt.把…藏起来；隐瞒');
INSERT INTO `cet4` VALUES ('cet4_1550', '　　high', '/ hai/', 'a.高的；高级的 ad.高');
INSERT INTO `cet4` VALUES ('cet4_1551', '　　highly', '/ ‘haili/', 'ad.高度地，很，非常');
INSERT INTO `cet4` VALUES ('cet4_1552', '　　highway', '/ ‘haiwei/', 'n.公路；大路');
INSERT INTO `cet4` VALUES ('cet4_1553', '　　hill', '/ hil/', 'n.小山，山岗；丘陵');
INSERT INTO `cet4` VALUES ('cet4_1554', '　　hillside', '/ ‘hil’said/', 'n.(小山)山腰，山坡');
INSERT INTO `cet4` VALUES ('cet4_1555', '　　him', '/ him/', 'pron.(宾格)他');
INSERT INTO `cet4` VALUES ('cet4_1556', '　　himself', '/ him’self/', 'pron.他自己；他亲自');
INSERT INTO `cet4` VALUES ('cet4_1557', '　　hint', '/ hint/', 'n.暗示，示意；建议');
INSERT INTO `cet4` VALUES ('cet4_1558', '　　hire', '/ ‘haiə/', 'vt.租借 n.租用，雇用');
INSERT INTO `cet4` VALUES ('cet4_1559', '　　his', '/ his/', 'pron.他的，他的东西');
INSERT INTO `cet4` VALUES ('cet4_1560', '　　historical', '/ his’tɔrikəl/', 'a.历史的，有关历史的');
INSERT INTO `cet4` VALUES ('cet4_1561', '　　history', '/ ‘histəri/', 'n.历史；个人经历');
INSERT INTO `cet4` VALUES ('cet4_1562', '　　hit', '/ hit/', 'vt.打；碰撞 n.击');
INSERT INTO `cet4` VALUES ('cet4_1563', '　　hobby', '/ ‘hɔbi/', 'n.业余爱好，癖好');
INSERT INTO `cet4` VALUES ('cet4_1564', '　　hold', '/ həuld/', 'vt.拿住；掌握；拥有');
INSERT INTO `cet4` VALUES ('cet4_1565', '　　hole', '/ həul/', 'n.洞；孔眼，裂开处');
INSERT INTO `cet4` VALUES ('cet4_1566', '　　holiday', '/ ‘hɔlədi/', 'n.假日，节日；假期');
INSERT INTO `cet4` VALUES ('cet4_1567', '　　hollow', '/ ‘hɔləu/', 'a.空的；空洞的');
INSERT INTO `cet4` VALUES ('cet4_1568', '　　holy', '/ ‘həuli/', 'a.神圣的；圣洁的');
INSERT INTO `cet4` VALUES ('cet4_1569', '　　home', '/ həum/', 'n.家；家乡 a.家庭的');
INSERT INTO `cet4` VALUES ('cet4_1570', '　　honest', '/ ‘ɔnist/', 'a.诚实的；可敬的');
INSERT INTO `cet4` VALUES ('cet4_1571', '　　honey', '/ ‘hΛni/', 'n.蜜， 蜂蜜；甜，甜蜜');
INSERT INTO `cet4` VALUES ('cet4_1572', '　　honour', '/ ‘ɔnə/', 'n.光荣；尊敬，敬意');
INSERT INTO `cet4` VALUES ('cet4_1573', '　　honourable', '/ ‘ɔnərəbl/', 'a.诚实的；光荣的');
INSERT INTO `cet4` VALUES ('cet4_1574', '　　hook', '/ huk/', 'n.钩，挂钩 vt.钩住');
INSERT INTO `cet4` VALUES ('cet4_1575', '　　hope', '/ həup/', 'n.&vt.&vi.希望');
INSERT INTO `cet4` VALUES ('cet4_1576', '　　hopeful', '/ ‘həupful/', 'a.有希望的');
INSERT INTO `cet4` VALUES ('cet4_1577', '　　hopeless', '/ ‘həuplis/', 'a.没有希望的，绝望的');
INSERT INTO `cet4` VALUES ('cet4_1578', '　　horizon', '/ hə’raizn/', 'n.地平线；眼界，见识');
INSERT INTO `cet4` VALUES ('cet4_1579', '　　horizontal', '/ hɔri’zɔntl/', 'a.地平的；水平的');
INSERT INTO `cet4` VALUES ('cet4_1580', '　　horn', '/ hɔ:n/', 'n.号角；警报器；角');
INSERT INTO `cet4` VALUES ('cet4_1581', '　　horror', '/ ‘hɔrə/', 'n.恐怖；战栗；憎恶');
INSERT INTO `cet4` VALUES ('cet4_1582', '　　horse', '/ hɔ:s/', 'n.马；马科动物');
INSERT INTO `cet4` VALUES ('cet4_1583', '　　horsepower', '/ ‘hɔ:spauə/', 'n.马力');
INSERT INTO `cet4` VALUES ('cet4_1584', '　　hospital', '/ ‘hɔspitl/', 'n.医院');
INSERT INTO `cet4` VALUES ('cet4_1585', '　　host', '/ həust/', 'n.主人；东道主');
INSERT INTO `cet4` VALUES ('cet4_1586', '　　hostile', '/ ‘hɔstail/', 'a.敌方的；不友善的');
INSERT INTO `cet4` VALUES ('cet4_1587', '　　hot', '/ hɔt/', 'a.热的；刺激的；辣的');
INSERT INTO `cet4` VALUES ('cet4_1588', '　　hotel', '/ həu’tel/', 'n.旅馆');
INSERT INTO `cet4` VALUES ('cet4_1589', '　　hour', '/ ‘auə/', 'n.小时；时间，时刻');
INSERT INTO `cet4` VALUES ('cet4_1590', '　　house', '/ haus/', 'n.房屋，住宅；商号');
INSERT INTO `cet4` VALUES ('cet4_1591', '　　household', '/ ‘haushəuld/', 'n.家庭，户；家务');
INSERT INTO `cet4` VALUES ('cet4_1592', '　　housewife', '/ ‘hauswaif/', 'n.家庭主妇');
INSERT INTO `cet4` VALUES ('cet4_1593', '　　how', '/ hau/', 'ad.怎么；怎样；多少');
INSERT INTO `cet4` VALUES ('cet4_1594', '　　however', '/ hau’evə/', 'ad.然而；不管怎样');
INSERT INTO `cet4` VALUES ('cet4_1595', '　　huge', '/ hju:dʒ/', 'a.巨大的，庞大的');
INSERT INTO `cet4` VALUES ('cet4_1596', '　　human', '/ ‘hju:mən/', 'a.人的，人类的 n.人');
INSERT INTO `cet4` VALUES ('cet4_1597', '　　humble', '/ ‘hΛmbl/', 'a.谦逊的；地位低下的');
INSERT INTO `cet4` VALUES ('cet4_1598', '　　humorous', '/ ‘hju:mərəs/', 'a.富于幽默的，诙谐的');
INSERT INTO `cet4` VALUES ('cet4_1599', '　　humour', '/ ‘hju:mə/', 'n.幽默，诙谐，幽默感');
INSERT INTO `cet4` VALUES ('cet4_1600', '　　hundred', '/ ‘hΛndrid/', 'num.百，百个 n.许多');
INSERT INTO `cet4` VALUES ('cet4_1601', '　　hunger', '/ ‘hΛŋgə/', 'n.饿，饥饿；渴望');
INSERT INTO `cet4` VALUES ('cet4_1602', '　　hungry', '/ ‘hΛŋgri/', 'a.饥饿的；渴望的');
INSERT INTO `cet4` VALUES ('cet4_1603', '　　hunt', '/ hΛnt/', 'n.打猎；搜寻 vt.追猎');
INSERT INTO `cet4` VALUES ('cet4_1604', '　　hurry', '/ ‘hΛri/', 'vi.赶紧 vt.催促');
INSERT INTO `cet4` VALUES ('cet4_1605', '　　hurt', '/ hə:t/', 'vt.使受伤；使痛心');
INSERT INTO `cet4` VALUES ('cet4_1606', '　　husband', '/ ‘hΛzbənd/', 'n.丈夫');
INSERT INTO `cet4` VALUES ('cet4_1607', '　　hut', '/ hΛt/', 'n.小屋，棚屋');
INSERT INTO `cet4` VALUES ('cet4_1608', '　　hydrogen', '/ ‘haidridʒən/', 'n.氢');
INSERT INTO `cet4` VALUES ('cet4_1611', 'I', '/ ai/', 'pron.(主格)我');
INSERT INTO `cet4` VALUES ('cet4_1612', '　　ice', '/ ais/', 'n.冰，冰块 vt.冰镇');
INSERT INTO `cet4` VALUES ('cet4_1615', '　　ice-cream', '/ ‘ais’kri:m/', 'n.冰淇淋');
INSERT INTO `cet4` VALUES ('cet4_1616', '　　idea', '/ ai’diə/', 'n.想法；思想；意见');
INSERT INTO `cet4` VALUES ('cet4_1617', '　　ideal', '/ ai’diəl/', 'a.理想的；观念的');
INSERT INTO `cet4` VALUES ('cet4_1618', '　　identical', '/ ai’dentikəl/', 'a.完全相同的；同一的');
INSERT INTO `cet4` VALUES ('cet4_1619', '　　identify', '/ ai’dentifai/', 'vt.认出，识别，鉴定');
INSERT INTO `cet4` VALUES ('cet4_1620', '　　idle', '/ ‘aidl/', 'a.空闲的；懒散的');
INSERT INTO `cet4` VALUES ('cet4_1621', '　　if', '/ if/', 'conj.假如，如果');
INSERT INTO `cet4` VALUES ('cet4_1622', '　　ignorant', '/ ‘ignərənt/', 'a.不知道的；无知的');
INSERT INTO `cet4` VALUES ('cet4_1623', '　　ignore', '/ ig’nɔ:/', 'vt.不顾，不理，忽视');
INSERT INTO `cet4` VALUES ('cet4_1624', '　　ill', '/ il/', 'a.有病的；坏的 ad.坏');
INSERT INTO `cet4` VALUES ('cet4_1625', '　　illegal', '/ i’li:gəl/', 'a.不合法的，非法的');
INSERT INTO `cet4` VALUES ('cet4_1626', '　　illness', '/ ‘ilnis/', 'n.病，疾病');
INSERT INTO `cet4` VALUES ('cet4_1627', '　　illustrate', '/ ‘iləstreit/', 'vt.(用图等)说明');
INSERT INTO `cet4` VALUES ('cet4_1628', '　　illustration', '/ iləs’treiʃən/', 'n.说明，图解；例证');
INSERT INTO `cet4` VALUES ('cet4_1629', '　　image', '/ ‘imidʒ/', 'n.像；形象；映象');
INSERT INTO `cet4` VALUES ('cet4_1630', '　　imaginary', '/ i’mædʒinəri/', 'a.想象中的，假想的');
INSERT INTO `cet4` VALUES ('cet4_1631', '　　imagination', '/ imædʒi’neiʃən/', 'n.想象；想象力；空想');
INSERT INTO `cet4` VALUES ('cet4_1632', '　　imagine', '/ i’mædʒin/', 'vt.想象，设想；料想');
INSERT INTO `cet4` VALUES ('cet4_1633', '　　imitate', '/ ‘imiteit/', 'vt.模仿，仿效；仿制');
INSERT INTO `cet4` VALUES ('cet4_1634', '　　immediate', '/ i’mi:djət/', 'a.立即的；直接的');
INSERT INTO `cet4` VALUES ('cet4_1635', '　　immense', '/ i’mens/', 'a.巨大的；极好的');
INSERT INTO `cet4` VALUES ('cet4_1636', '　　immigrant', '/ ‘imigrənt/', 'n.移民 a.移民的');
INSERT INTO `cet4` VALUES ('cet4_1637', '　　impact', '/ ‘impækt/', 'n.影响，作用；冲击');
INSERT INTO `cet4` VALUES ('cet4_1638', '　　impatient', '/ im’peiʃənt/', 'a.不耐烦的，急躁的');
INSERT INTO `cet4` VALUES ('cet4_1639', '　　implication', '/ impli’keiʃən/', 'n.含义，暗示，暗指');
INSERT INTO `cet4` VALUES ('cet4_1640', '　　imply', '/ im’plai/', 'vt.暗示，意指');
INSERT INTO `cet4` VALUES ('cet4_1641', '　　import', '/ im’pɔ:t ‘impɔ:t/', 'vt.&n.输入，进口');
INSERT INTO `cet4` VALUES ('cet4_1642', '　　importance', '/ im’pɔ:təns/', 'n.重要；重要性');
INSERT INTO `cet4` VALUES ('cet4_1643', '　　important', '/ im’pɔ:tənt/', 'a.重要的；有势力的');
INSERT INTO `cet4` VALUES ('cet4_1644', '　　impose', '/ im’pəuz/', 'vt.把…强加；征(税)');
INSERT INTO `cet4` VALUES ('cet4_1645', '　　impossible', '/ im’pɔsəbl/', 'a.不可能的，办不到的');
INSERT INTO `cet4` VALUES ('cet4_1646', '　　impress', '/ im’pres, ‘impres/', 'vt.给…深刻印象');
INSERT INTO `cet4` VALUES ('cet4_1647', '　　impression', '/ im’preʃən/', 'n.印；印象；印记');
INSERT INTO `cet4` VALUES ('cet4_1648', '　　impressive', '/ im’presiv/', 'a.给人印象深刻的');
INSERT INTO `cet4` VALUES ('cet4_1649', '　　improve', '/ im’pru:v/', 'vt.使更好 vi.改善');
INSERT INTO `cet4` VALUES ('cet4_1650', '　　improvement', '/ im’pru:vmənt/', 'n.改进，改善；改进处');
INSERT INTO `cet4` VALUES ('cet4_1651', '　　in', '/ in/', 'prep.在…里ad.进，入');
INSERT INTO `cet4` VALUES ('cet4_1652', '　　inch', '/ intʃ/', 'n.英寸');
INSERT INTO `cet4` VALUES ('cet4_1653', '　　incident', '/ ‘insidənt/', 'n.发生的事；事件');
INSERT INTO `cet4` VALUES ('cet4_1654', '　　incline', '/ in’klain/', 'n.斜坡 vt.使倾斜');
INSERT INTO `cet4` VALUES ('cet4_1655', '　　include', '/ in’klu:d/', 'vt.包括，包含');
INSERT INTO `cet4` VALUES ('cet4_1656', '　　income', '/ ‘inkΛm/', 'n.收入；收益；进款');
INSERT INTO `cet4` VALUES ('cet4_1657', '　　increase', '/ in’kri:s, ‘inkri:s/', 'vt.&vi.&n.增加');
INSERT INTO `cet4` VALUES ('cet4_1658', '　　increasingly', '/ in’kri:siŋli/', 'ad.日益，越来越多地');
INSERT INTO `cet4` VALUES ('cet4_1659', '　　indeed', '/ in’di:d/', 'ad.真正地；确实');
INSERT INTO `cet4` VALUES ('cet4_1660', '　　independence', '/ indi’pendəns/', 'n.独立，自主，自立');
INSERT INTO `cet4` VALUES ('cet4_1661', '　　independent', '/ indi’pendənt/', 'a.独立的；自主的');
INSERT INTO `cet4` VALUES ('cet4_1662', '　　index', '/ ‘indeks/', 'n.索引；指数；指标');
INSERT INTO `cet4` VALUES ('cet4_1663', '　　Indian', '/ ‘indiən/', 'a.印度的 n.印度人');
INSERT INTO `cet4` VALUES ('cet4_1664', '　　indicate', '/ ‘indikeit/', 'vt.标示，表示；表明');
INSERT INTO `cet4` VALUES ('cet4_1665', '　　indication', '/ indi’keiʃən/', 'n.指示；表示；表明');
INSERT INTO `cet4` VALUES ('cet4_1666', '　　indifferent', '/ in’difrənt/', 'a.冷漠的；不积极的');
INSERT INTO `cet4` VALUES ('cet4_1667', '　　indirect', '/ indi’rekt/', 'a.间接的；不坦率的');
INSERT INTO `cet4` VALUES ('cet4_1668', '　　indispensable', '/ indis’pensəbl/', 'a.必不可少的，必需的');
INSERT INTO `cet4` VALUES ('cet4_1669', '　　individual', '/ indi’vidjuəl/', 'a.个别的；独特的');
INSERT INTO `cet4` VALUES ('cet4_1670', '　　indoors', '/ in’dɔ:z/', 'ad.在室内，在屋里');
INSERT INTO `cet4` VALUES ('cet4_1671', '　　industrial', '/ in’dΛstriəl/', 'a.工业的；产业的');
INSERT INTO `cet4` VALUES ('cet4_1672', '　　industrialize', '/ in’dΛstriəlaiz/', 'vt.使工业化');
INSERT INTO `cet4` VALUES ('cet4_1673', '　　industry', '/ ‘indəstri/', 'n.工业，产业；勤劳');
INSERT INTO `cet4` VALUES ('cet4_1674', '　　inevitable', '/ in’evitəbl/', 'a.不可避免的，必然的');
INSERT INTO `cet4` VALUES ('cet4_1675', '　　infant', '/ ‘infənt/', 'n.婴儿 a.婴儿的');
INSERT INTO `cet4` VALUES ('cet4_1676', '　　infect', '/ in’fekt/', 'vt.传染；感染');
INSERT INTO `cet4` VALUES ('cet4_1677', '　　infer', '/ in’fə:/', 'vt.推论，推断；猜想');
INSERT INTO `cet4` VALUES ('cet4_1678', '　　inferior', '/ in’fiəriə/', 'a.下等的；劣等的');
INSERT INTO `cet4` VALUES ('cet4_1679', '　　infinite', '/ ‘infinit/', 'a.无限的；无数的');
INSERT INTO `cet4` VALUES ('cet4_1680', '　　influence', '/ ‘influəns/', 'n.影响；势力 vt.影响');
INSERT INTO `cet4` VALUES ('cet4_1681', '　　influential', '/ influ’enʃəl/', 'a.有影响的；有权势的');
INSERT INTO `cet4` VALUES ('cet4_1682', '　　inform', '/ in’fɔ:m/', 'vt.通知，向…报告');
INSERT INTO `cet4` VALUES ('cet4_1683', '　　information', '/ infə’meiʃən/', 'n.消息，信息；通知');
INSERT INTO `cet4` VALUES ('cet4_1684', '　　inhabitant', '/ in’hæbitənt/', 'n.居民，住户');
INSERT INTO `cet4` VALUES ('cet4_1685', '　　inherit', '/ in’herit/', 'vt.继承(传统等)');
INSERT INTO `cet4` VALUES ('cet4_1686', '　　initial', '/ i’niʃəl/', 'a.最初的；词首的');
INSERT INTO `cet4` VALUES ('cet4_1687', '　　injection', '/ in’dʒekʃən/', 'n.注射，注入；充满');
INSERT INTO `cet4` VALUES ('cet4_1688', '　　injure', '/ ‘indʒə/', 'vt.伤害，损害，损伤');
INSERT INTO `cet4` VALUES ('cet4_1689', '　　injury', '/ ‘indʒəri/', 'n.损害，伤害；受伤处');
INSERT INTO `cet4` VALUES ('cet4_1690', '　　ink', '/ iŋk/', 'n.墨水，油墨');
INSERT INTO `cet4` VALUES ('cet4_1691', '　　inn', '/ in/', 'n.小旅店；小酒店');
INSERT INTO `cet4` VALUES ('cet4_1692', '　　inner', '/ ‘inə/', 'a.内部的；内心的');
INSERT INTO `cet4` VALUES ('cet4_1693', '　　innocent', '/ ‘inəsnt/', 'a.清白的，幼稚的');
INSERT INTO `cet4` VALUES ('cet4_1694', '　　input', '/ ‘input/', 'n.输入；投入的资金');
INSERT INTO `cet4` VALUES ('cet4_1695', '　　inquire', '/ in’kwaiə/', 'vt.打听，询问；调查');
INSERT INTO `cet4` VALUES ('cet4_1696', '　　inquiry', '/ in’kwaiəri/', 'n.询问，打听；调查');
INSERT INTO `cet4` VALUES ('cet4_1697', '　　insect', '/ ‘insekt/', 'n.昆虫，虫');
INSERT INTO `cet4` VALUES ('cet4_1698', '　　insert', '/ in’sə:t, ‘insə:t/', 'vt.插入; 嵌入; 登载');
INSERT INTO `cet4` VALUES ('cet4_1699', '　　inside', '/ in’said/', 'prep.在…里面 n.内部');
INSERT INTO `cet4` VALUES ('cet4_1700', '　　insist', '/ in’sist/', 'vi.坚持；坚持要求');
INSERT INTO `cet4` VALUES ('cet4_1701', '　　inspect', '/ in’spekt/', 'vt.检查，审查；检阅');
INSERT INTO `cet4` VALUES ('cet4_1702', '　　inspire', '/ in’spaiə/', 'vt.鼓舞；给…以灵感');
INSERT INTO `cet4` VALUES ('cet4_1703', '　　install', '/ in’stɔ:l/', 'vt.安装，设置');
INSERT INTO `cet4` VALUES ('cet4_1704', '　　installation', '/ instə’leiʃən/', 'n.安装；装置；设施');
INSERT INTO `cet4` VALUES ('cet4_1705', '　　instance', '/ ‘instəns/', 'n.例子，实例，事例');
INSERT INTO `cet4` VALUES ('cet4_1706', '　　instant', '/ ‘instənt/', 'n.瞬间 a.立即的');
INSERT INTO `cet4` VALUES ('cet4_1707', '　　instead', '/ in’sted/', 'ad.代替，顶替；反而');
INSERT INTO `cet4` VALUES ('cet4_1708', '　　instinct', '/ ‘instiŋkt/', 'n.本能；直觉；生性');
INSERT INTO `cet4` VALUES ('cet4_1709', '　　institute', '/ ‘institju:t/', 'n.研究所；学院');
INSERT INTO `cet4` VALUES ('cet4_1710', '　　institution', '/ insti’tju:ʃən/', 'n.协会；制度，习俗');
INSERT INTO `cet4` VALUES ('cet4_1711', '　　instruct', '/ in’strΛkt/', 'vt.教；指示；通知');
INSERT INTO `cet4` VALUES ('cet4_1712', '　　instruction', '/ in’strΛkʃən/', 'n.命令；教学；教训');
INSERT INTO `cet4` VALUES ('cet4_1713', '　　instrument', '/ ‘instrumənt/', 'n.仪器；工具；乐器');
INSERT INTO `cet4` VALUES ('cet4_1714', '　　insult', '/ ‘insΛlt, in’sΛlt/', 'vt.&n.侮辱，凌辱');
INSERT INTO `cet4` VALUES ('cet4_1715', '　　insurance', '/ in’ʃuərəns/', 'n.保险；保险费');
INSERT INTO `cet4` VALUES ('cet4_1716', '　　insure', '/ in’ʃuə/', 'vt.给…保险；确保');
INSERT INTO `cet4` VALUES ('cet4_1717', '　　intellectual', '/ inti’lektjuəl/', 'n.知识分子 a.智力的');
INSERT INTO `cet4` VALUES ('cet4_1718', '　　intelligence', '/ in’telidʒəns/', 'n.智力；理解力；情报');
INSERT INTO `cet4` VALUES ('cet4_1719', '　　intelligent', '/ in’telidʒənt/', 'a.聪明的；理智的');
INSERT INTO `cet4` VALUES ('cet4_1720', '　　intend', '/ in’tend/', 'vt.想要，打算；意指');
INSERT INTO `cet4` VALUES ('cet4_1721', '　　intense', '/ in’tens/', 'a.强烈的；紧张的');
INSERT INTO `cet4` VALUES ('cet4_1722', '　　intensity', '/ in’tensiti/', 'n.强烈，剧烈；强度');
INSERT INTO `cet4` VALUES ('cet4_1723', '　　intensive', '/ in’tensiv/', 'a.加强的；精耕细作的');
INSERT INTO `cet4` VALUES ('cet4_1724', '　　intention', '/ in’tenʃən/', 'n.意图，意向，目的');
INSERT INTO `cet4` VALUES ('cet4_1725', '　　interaction', '/ intə’rækʃən/', 'n.相互作用；干扰');
INSERT INTO `cet4` VALUES ('cet4_1726', '　　interest', '/ ‘intrist/', 'n.兴趣；利益；利息');
INSERT INTO `cet4` VALUES ('cet4_1727', '　　interesting', '/ ‘intristiŋ/', 'a.有趣的，引人入胜的');
INSERT INTO `cet4` VALUES ('cet4_1728', '　　interfere', '/ intə’fiə/', 'vi.干涉，干预；妨碍');
INSERT INTO `cet4` VALUES ('cet4_1729', '　　interference', '/ intə’fiərəns/', 'n.干涉，干预；阻碍');
INSERT INTO `cet4` VALUES ('cet4_1730', '　　interior', '/ in’tiəriə/', 'a.内的；内地的n.内部');
INSERT INTO `cet4` VALUES ('cet4_1731', '　　intermediate', '/ intə’mi:djət/', 'a.中间的；中级的');
INSERT INTO `cet4` VALUES ('cet4_1732', '　　internal', '/ in’tə:nl/', 'a.内的；国内的');
INSERT INTO `cet4` VALUES ('cet4_1733', '　　international', '/ intə(:)’næʃənl/', 'a.国际的，世界(性)的');
INSERT INTO `cet4` VALUES ('cet4_1734', '　　interpret', '/ in’tə:prit/', 'vt.解释，说明；口译');
INSERT INTO `cet4` VALUES ('cet4_1735', '　　interpretation', '/ intə:pri’teiʃən/', 'n.解释；口译');
INSERT INTO `cet4` VALUES ('cet4_1736', '　　interrupt', '/ intə’rΛpt/', 'vt.打断，打扰；中止');
INSERT INTO `cet4` VALUES ('cet4_1737', '　　interval', '/ ‘intəvəl/', 'n.间隔；休息；间距');
INSERT INTO `cet4` VALUES ('cet4_1738', '　　interview', '/ ‘intəvju:/', 'n.接见；会见；面谈');
INSERT INTO `cet4` VALUES ('cet4_1739', '　　intimate', '/ ‘intimit/', 'a.亲密的；个人的');
INSERT INTO `cet4` VALUES ('cet4_1740', '　　into', '/ ‘intu, ‘intə/', 'prep.进，入；进入到');
INSERT INTO `cet4` VALUES ('cet4_1741', '　　introduce', '/ ‘intrə’dju:s/', 'vt.介绍；引进，传入');
INSERT INTO `cet4` VALUES ('cet4_1742', '　　introduction', '/ intrə’dΛkʃən/', 'n.介绍；引进；引言');
INSERT INTO `cet4` VALUES ('cet4_1743', '　　invade', '/ in’veid/', 'vt.入侵，侵略；侵袭');
INSERT INTO `cet4` VALUES ('cet4_1744', '　　invasion', '/ in’veiʒən/', 'n.入侵，侵略；侵犯');
INSERT INTO `cet4` VALUES ('cet4_1745', '　　invent', '/ in’vent/', 'vt.发明，创造；捏造');
INSERT INTO `cet4` VALUES ('cet4_1746', '　　invention', '/ in’venʃən/', 'n.发明，创造；捏造');
INSERT INTO `cet4` VALUES ('cet4_1747', '　　inventor', '/ in’ventə/', 'n.发明者；发明家');
INSERT INTO `cet4` VALUES ('cet4_1748', '　　invest', '/ in’vest/', 'vt.投资；投入');
INSERT INTO `cet4` VALUES ('cet4_1749', '　　investigate', '/ in’vestigeit/', 'vt.&vi.调查');
INSERT INTO `cet4` VALUES ('cet4_1750', '　　investment', '/ in’vestmənt/', 'n.投资，投资额，投入');
INSERT INTO `cet4` VALUES ('cet4_1751', '　　invisible', '/ in’vizəbl/', 'a.看不见的，无形的');
INSERT INTO `cet4` VALUES ('cet4_1752', '　　invitation', '/ invi’teiʃən/', 'n.邀请，招待；请柬');
INSERT INTO `cet4` VALUES ('cet4_1753', '　　invite', '/ in’vait/', 'vt.邀请，聘请；招待');
INSERT INTO `cet4` VALUES ('cet4_1754', '　　involve', '/ in’vɔlv/', 'vt.使卷入；牵涉');
INSERT INTO `cet4` VALUES ('cet4_1755', '　　inward', '/ ‘inwəd/', 'a.里面的 ad.向内');
INSERT INTO `cet4` VALUES ('cet4_1756', '　　iron', '/ ‘aiən/', 'n.铁；烙铁 vt.烫(衣)');
INSERT INTO `cet4` VALUES ('cet4_1757', '　　island', '/ ‘ailənd/', 'n.岛，岛屿');
INSERT INTO `cet4` VALUES ('cet4_1758', '　　isolate', '/ ‘aisəleit/', 'vt.使隔离，使孤立');
INSERT INTO `cet4` VALUES ('cet4_1759', '　　issue', '/ ‘iʃu:/', 'n.问题；发行 vt.发行');
INSERT INTO `cet4` VALUES ('cet4_1760', '　　it', '/ it/', 'pron.这，那，它');
INSERT INTO `cet4` VALUES ('cet4_1761', '　　Italian', '/ i’tæljən/', 'a. 意大利的n.意大利人');
INSERT INTO `cet4` VALUES ('cet4_1762', '　　item', '/ ‘aitəm/', 'n.条，条款；一条');
INSERT INTO `cet4` VALUES ('cet4_1763', '　　its', '/ its/', 'pron.它的');
INSERT INTO `cet4` VALUES ('cet4_1764', '　　itself', '/ it’self/', 'pron.它自己；自身');
INSERT INTO `cet4` VALUES ('cet4_1767', 'jacket', '/ ‘dʒækit/', 'n.短上衣，茄克衫');
INSERT INTO `cet4` VALUES ('cet4_1768', '　　jam', '/ dʒæm/', 'n.果酱');
INSERT INTO `cet4` VALUES ('cet4_1771', '　　jam', '/ dʒæm/', 'vt.使塞满；使堵塞');
INSERT INTO `cet4` VALUES ('cet4_1772', '　　January', '/ ‘dʒænjuəri/', 'n.一月');
INSERT INTO `cet4` VALUES ('cet4_1773', '　　Japanese', '/ dʒæpə’ni:z/', 'a.日本的 n.日本人');
INSERT INTO `cet4` VALUES ('cet4_1774', '　　jar', '/ dʒa:/', 'n.罐子，坛子，广口瓶');
INSERT INTO `cet4` VALUES ('cet4_1775', '　　jaw', '/ dʒɔ:/', 'n.颌，颚');
INSERT INTO `cet4` VALUES ('cet4_1776', '　　jazz', '/ dʒæz/', 'n.爵士音乐，爵士舞曲');
INSERT INTO `cet4` VALUES ('cet4_1777', '　　jealous', '/ ‘dʒeləs/', 'a.妒忌的；猜疑的');
INSERT INTO `cet4` VALUES ('cet4_1778', '　　jet', '/ dʒet/', 'n.喷气式飞机；喷嘴');
INSERT INTO `cet4` VALUES ('cet4_1779', '　　jewel', '/ ‘dʒu:əl/', 'n.宝石；宝石饰物');
INSERT INTO `cet4` VALUES ('cet4_1780', '　　job', '/ dʒob/', 'n.职业；工作；零活');
INSERT INTO `cet4` VALUES ('cet4_1781', '　　jɔin', '/ dʒɔin/', 'vt.参加；连接');
INSERT INTO `cet4` VALUES ('cet4_1782', '　　jɔint', '/ dʒɔint/', 'n.接头，接缝；关节');
INSERT INTO `cet4` VALUES ('cet4_1783', '　　joke', '/ dʒəuk/', 'n.笑话 vi.说笑话');
INSERT INTO `cet4` VALUES ('cet4_1784', '　　journal', '/ ‘dʒə:nl/', 'n.日报，杂志；日志');
INSERT INTO `cet4` VALUES ('cet4_1785', '　　journey', '/ ‘dʒə:ni/', 'n.旅行，旅程 n.旅行');
INSERT INTO `cet4` VALUES ('cet4_1786', '　　joy', '/ dʒɔi/', 'n.欢乐，喜悦；乐事');
INSERT INTO `cet4` VALUES ('cet4_1787', '　　judge', '/ dʒΛdʒ/', 'n.法官；裁判员');
INSERT INTO `cet4` VALUES ('cet4_1788', '　　judgement', '/ ‘dʒΛdʒmənt/', 'n.意见；审判；判断');
INSERT INTO `cet4` VALUES ('cet4_1789', '　　juice', '/ dʒu:s/', 'n.(水果等)汁，液');
INSERT INTO `cet4` VALUES ('cet4_1790', '　　July', '/ dʒu:’lai/', 'n.七月');
INSERT INTO `cet4` VALUES ('cet4_1791', '　　jump', '/ dʒΛmp/', 'vi.跳；暴涨 vt.跳过');
INSERT INTO `cet4` VALUES ('cet4_1792', '　　June', '/ dʒu:n/', 'n.六月');
INSERT INTO `cet4` VALUES ('cet4_1793', '　　jungle', '/ ‘dʒΛŋgl/', 'n.丛林，密林，莽丛');
INSERT INTO `cet4` VALUES ('cet4_1794', '　　junior', '/ ‘dʒu:njə/', 'a.年少的 n.晚辈');
INSERT INTO `cet4` VALUES ('cet4_1795', '　　jury', '/ ‘dʒuəri/', 'n.陪审团；评奖团');
INSERT INTO `cet4` VALUES ('cet4_1796', '　　just', '/ dʒΛst/', 'ad.刚才；只是；正好');
INSERT INTO `cet4` VALUES ('cet4_1797', '　　justice', '/ ‘dʒΛstis/', 'n.正义，公正；司法');
INSERT INTO `cet4` VALUES ('cet4_1798', 'justify', '/ ‘dʒΛstifai/', 'vt.证明…是正当的');
INSERT INTO `cet4` VALUES ('cet4_1801', '　　keen', '/ ki:n/', 'a.热心的；激烈的');
INSERT INTO `cet4` VALUES ('cet4_1802', '　　keep', '/ ki:p/', 'vi.保持；坚持');
INSERT INTO `cet4` VALUES ('cet4_1803', '　　kettle', '/ ‘ketl/', 'n.水壶，水锅');
INSERT INTO `cet4` VALUES ('cet4_1804', '　　key', '/ ki:/', 'n.钥匙；键；答案');
INSERT INTO `cet4` VALUES ('cet4_1805', '　　keyboard', '/ ‘kibɔ:d/', 'n.键盘');
INSERT INTO `cet4` VALUES ('cet4_1806', '　　kick', '/ kik/', 'vi.&vt.&n.踢');
INSERT INTO `cet4` VALUES ('cet4_1807', '　　kid', '/ kid/', 'n.小孩，儿童，少年');
INSERT INTO `cet4` VALUES ('cet4_1808', '　　kill', '/ kil/', 'vi.杀死；扼杀；消磨');
INSERT INTO `cet4` VALUES ('cet4_1809', '　　kilogram', '/ ‘kiləgræm/', 'n.千克，公斤');
INSERT INTO `cet4` VALUES ('cet4_1810', '　　kilometer', '/ ‘kiləmi:tə/', 'n.千米，公里');
INSERT INTO `cet4` VALUES ('cet4_1811', '　　kind', '/ kaind/', 'n.种类');
INSERT INTO `cet4` VALUES ('cet4_1812', '　　kind', '/ kaind/', 'a.友好的；和蔼的');
INSERT INTO `cet4` VALUES ('cet4_1813', '　　kindness', '/ ‘kaindnis/', 'n.仁慈，好意');
INSERT INTO `cet4` VALUES ('cet4_1814', '　　king', '/ kiŋ/', 'n.国王，君主');
INSERT INTO `cet4` VALUES ('cet4_1815', '　　kingdom', '/ ‘kiŋdəm/', 'n.王国；领域，界');
INSERT INTO `cet4` VALUES ('cet4_1816', '　　kiss', '/ kis/', 'vt.吻 vi.接吻 n.吻');
INSERT INTO `cet4` VALUES ('cet4_1817', '　　kitchen', '/ ‘kitʃin/', 'n.厨房，灶间');
INSERT INTO `cet4` VALUES ('cet4_1818', '　　knee', '/ ni:/', 'n.膝，膝盖，膝关节');
INSERT INTO `cet4` VALUES ('cet4_1819', '　　kneel', '/ ni:l/', 'vi.跪，跪下，跪着');
INSERT INTO `cet4` VALUES ('cet4_1820', '　　knife', '/ naif/', 'n.小刀，刀，餐刀');
INSERT INTO `cet4` VALUES ('cet4_1821', '　　knock', '/ nɔk/', 'vi.&vt.&n.敲，击，打');
INSERT INTO `cet4` VALUES ('cet4_1822', '　　knot', '/ nɔt/', 'n.(绳的)结，(树的)节');
INSERT INTO `cet4` VALUES ('cet4_1823', '　　know', '/ nəu/', 'vt.知道；认识；通晓');
INSERT INTO `cet4` VALUES ('cet4_1824', '　　knowledge', '/ ‘nɔlidʒ/', 'n.知识，学识；知道');
INSERT INTO `cet4` VALUES ('cet4_1827', 'lab', '/ læb/', 'n.实验室，研究室');
INSERT INTO `cet4` VALUES ('cet4_1828', '　　label', '/ ‘leibl/', 'n.标签；标记，符号');
INSERT INTO `cet4` VALUES ('cet4_1829', '　　laboratory', '/ lə’bɔrətri/', 'n.实验室，研究室');
INSERT INTO `cet4` VALUES ('cet4_1830', '　　labour', '/ ‘leibə/', 'n.劳动；工作；劳工');
INSERT INTO `cet4` VALUES ('cet4_1831', '　　lack', '/ læk/', 'vi.&vi.&n.缺乏，不足');
INSERT INTO `cet4` VALUES ('cet4_1832', '　　ladder', '/ ‘lædə/', 'n.梯子，梯状物');
INSERT INTO `cet4` VALUES ('cet4_1833', '　　lady', '/ ‘leidi/', 'n.女士，夫人；贵妇人');
INSERT INTO `cet4` VALUES ('cet4_1834', '　　lag', '/ læg/', 'vi.走得慢 n.落后');
INSERT INTO `cet4` VALUES ('cet4_1835', '　　lake', '/ leik/', 'n.湖');
INSERT INTO `cet4` VALUES ('cet4_1836', '　　lamp', '/ læmp/', 'n.灯');
INSERT INTO `cet4` VALUES ('cet4_1837', '　　land', '/ lænd/', 'n.陆地；土地 vi.上岸');
INSERT INTO `cet4` VALUES ('cet4_1838', '　　landlord', '/ ‘lændlɔ:d/', 'n.地主；房东，店主');
INSERT INTO `cet4` VALUES ('cet4_1839', '　　lane', '/ lein/', 'n.(乡间)小路；跑道');
INSERT INTO `cet4` VALUES ('cet4_1840', '　　language', '/ ‘læŋgwidʒ/', 'n.语言，语言课程');
INSERT INTO `cet4` VALUES ('cet4_1841', '　　lap', '/ læp/', 'n.膝部；一圈');
INSERT INTO `cet4` VALUES ('cet4_1842', '　　large', '/ la:dʒ/', 'a.大的；巨大的');
INSERT INTO `cet4` VALUES ('cet4_1843', '　　largely', '/ ‘la:dʒli/', 'ad.大部分；大量地');
INSERT INTO `cet4` VALUES ('cet4_1844', '　　laser', '/ ‘leizə/', 'n.激光');
INSERT INTO `cet4` VALUES ('cet4_1845', '　　last', '/ la:st/', 'a.最后的 ad.最后');
INSERT INTO `cet4` VALUES ('cet4_1846', '　　last', '/ la:st/', 'vi.持续，持久；耐久');
INSERT INTO `cet4` VALUES ('cet4_1847', '　　late', '/ leit/', 'a.迟的 ad.迟，晚');
INSERT INTO `cet4` VALUES ('cet4_1848', '　　lately', '/ ‘leitli/', 'ad.最近，不久前');
INSERT INTO `cet4` VALUES ('cet4_1849', '　　later', '/ ‘leitə/', 'ad.后来；过一会儿');
INSERT INTO `cet4` VALUES ('cet4_1850', '　　Latin', '/ ‘lætin/', 'a.拉丁的 n.拉丁语');
INSERT INTO `cet4` VALUES ('cet4_1851', '　　latter', '/ ‘lætə/', 'a.(两者中)后者的');
INSERT INTO `cet4` VALUES ('cet4_1852', '　　laugh', '/ la:f/', 'vi.笑，发笑 n.笑');
INSERT INTO `cet4` VALUES ('cet4_1853', '　　laughter', '/ la:ftə/', 'n.笑，笑声');
INSERT INTO `cet4` VALUES ('cet4_1854', '　　launch', '/ lɔ:ntʃ/', 'vt.发射，投射；发动');
INSERT INTO `cet4` VALUES ('cet4_1855', '　　laundry', '/ ‘lɔ:ndri/', 'n.洗衣房，洗衣店');
INSERT INTO `cet4` VALUES ('cet4_1856', '　　lavatory', '/ ‘lævətəri/', 'n.盥洗室，厕所');
INSERT INTO `cet4` VALUES ('cet4_1857', '　　law', '/ lɔ:/', 'n.法律，法令；法则');
INSERT INTO `cet4` VALUES ('cet4_1858', '　　lawn', '/ lɔ:n/', 'n.草地，草坪，草场');
INSERT INTO `cet4` VALUES ('cet4_1859', '　　lawyer', '/ ‘lɔ:jə/', 'n.律师；法学家');
INSERT INTO `cet4` VALUES ('cet4_1860', '　　lay', '/ lei/', 'vt.置放；铺设；设置');
INSERT INTO `cet4` VALUES ('cet4_1861', '　　layer', '/ ‘leiə/', 'n.层，层次；铺设者');
INSERT INTO `cet4` VALUES ('cet4_1862', '　　layout', '/ ‘leiaut/', 'n.布局，安排，设计');
INSERT INTO `cet4` VALUES ('cet4_1863', '　　lazy', '/ ‘leizi/', 'a.懒惰的，懒散的');
INSERT INTO `cet4` VALUES ('cet4_1864', '　　lead', '/ li:d/', 'vt.为…带路；领导');
INSERT INTO `cet4` VALUES ('cet4_1865', '　　lead', '/ li:d/', 'n.铅，铅制品');
INSERT INTO `cet4` VALUES ('cet4_1866', '　　leader', '/ ‘li:də/', 'n.领袖，领导人；首领');
INSERT INTO `cet4` VALUES ('cet4_1867', '　　leadership', '/ ‘li:dəʃip/', 'n.领导');
INSERT INTO `cet4` VALUES ('cet4_1868', '　　leading', '/ ‘li:diŋ/', 'a.指导的；最主要的');
INSERT INTO `cet4` VALUES ('cet4_1869', '　　leaf', '/ li:f/', 'n.叶，叶子');
INSERT INTO `cet4` VALUES ('cet4_1870', '　　league', '/ li:g/', 'n.同盟，联盟；联合会');
INSERT INTO `cet4` VALUES ('cet4_1871', '　　leak', '/ li:k/', 'vi.漏；泄露 n.漏洞');
INSERT INTO `cet4` VALUES ('cet4_1872', '　　lean', '/ li:n/', 'vi.倾斜，屈身；靠');
INSERT INTO `cet4` VALUES ('cet4_1873', '　　leap', '/ li:p/', 'vi.跳，跃 n.跳跃');
INSERT INTO `cet4` VALUES ('cet4_1874', '　　learn', '/ lə:n/', 'vi.&vt.学，学习');
INSERT INTO `cet4` VALUES ('cet4_1875', '　　learned', '/ ‘lə:nid/', 'a.有学问的；学术上的');
INSERT INTO `cet4` VALUES ('cet4_1876', '　　learning', '/ ‘lə:niŋ/', 'n.学习；学问，知识');
INSERT INTO `cet4` VALUES ('cet4_1877', '　　least', '/ li:st/', 'a.最少的 ad.最少');
INSERT INTO `cet4` VALUES ('cet4_1878', '　　leather', '/ ‘leðə/', 'n.皮革；皮革制品');
INSERT INTO `cet4` VALUES ('cet4_1879', '　　leave', '/ li:v/', 'vi.离去 vt.离开');
INSERT INTO `cet4` VALUES ('cet4_1881', '　　left', '/ left/', 'a.左边的 ad.在左边');
INSERT INTO `cet4` VALUES ('cet4_1882', '　　leg', '/ leg/', 'n.腿，腿部');
INSERT INTO `cet4` VALUES ('cet4_1883', '　　legal', '/ ‘li:gl/', 'a.法律的；合法的');
INSERT INTO `cet4` VALUES ('cet4_1884', '　　leisure', '/ ‘leʒə/', 'n.空闲时间；悠闲');
INSERT INTO `cet4` VALUES ('cet4_1885', '　　lend', '/ lend/', 'vt.把…借给，贷(款)');
INSERT INTO `cet4` VALUES ('cet4_1886', '　　length', '/ leŋθ/', 'n.长，长度；一段');
INSERT INTO `cet4` VALUES ('cet4_1887', '　　lens', '/ lenz/', 'n.透镜，镜片；镜头');
INSERT INTO `cet4` VALUES ('cet4_1888', '　　less', '/ les/', 'a.更少的 ad.更少地');
INSERT INTO `cet4` VALUES ('cet4_1889', '　　lessen', '/ ‘lesn/', 'vt.减少，减轻；缩小');
INSERT INTO `cet4` VALUES ('cet4_1890', '　　lesson', '/ ‘lesn/', 'n.功课，课；课程');
INSERT INTO `cet4` VALUES ('cet4_1891', '　　lest', '/ lest/', 'conj.惟恐，以免');
INSERT INTO `cet4` VALUES ('cet4_1892', '　　let', '/ let/', 'vt.允许，让；使');
INSERT INTO `cet4` VALUES ('cet4_1893', '　　letter', '/ ‘letə/', 'n.信；证书；字母');
INSERT INTO `cet4` VALUES ('cet4_1894', '　　level', '/ ‘levl/', 'n.水平面 a.水平的');
INSERT INTO `cet4` VALUES ('cet4_1895', '　　lever', '/ ‘li:və/', 'n.杆，杠杆；控制杆');
INSERT INTO `cet4` VALUES ('cet4_1896', '　　liable', '/ ‘laiəbl/', 'a.易于…的；可能的');
INSERT INTO `cet4` VALUES ('cet4_1897', '　　liberal', '/ ‘libərəl/', 'a.心胸宽大的；慷慨的');
INSERT INTO `cet4` VALUES ('cet4_1898', '　　liberate', '/ ‘libəreit/', 'vt.解放；释放');
INSERT INTO `cet4` VALUES ('cet4_1899', '　　liberty', '/ ‘libəti/', 'n.自由；释放；许可');
INSERT INTO `cet4` VALUES ('cet4_1900', '　　librarian', '/ lai’breəriən/', 'n. 图书馆馆长');
INSERT INTO `cet4` VALUES ('cet4_1901', '　　library', '/ ‘laibrəri/', 'n.图书馆；藏书');
INSERT INTO `cet4` VALUES ('cet4_1902', '　　license', '/ ‘laisəns/', 'n.许可；执照 vt.准许');
INSERT INTO `cet4` VALUES ('cet4_1903', '　　lid', '/ lid/', 'n.盖子，盖，囊盖');
INSERT INTO `cet4` VALUES ('cet4_1904', '　　lie', '/ lai/', 'vi.躺，平放；位于');
INSERT INTO `cet4` VALUES ('cet4_1905', '　　lie', '/ lai/', 'vi.说谎，欺骗 n.谎话');
INSERT INTO `cet4` VALUES ('cet4_1906', '　　life', '/ laif/', 'n.生命；一生；寿命');
INSERT INTO `cet4` VALUES ('cet4_1907', '　　lifetime', '/ ‘laiftaim/', 'n.一生，终身');
INSERT INTO `cet4` VALUES ('cet4_1908', '　　lift', '/ lift/', 'vt.提起，提高 n.电梯');
INSERT INTO `cet4` VALUES ('cet4_1909', '　　light', '/ lait/', 'n.光，光线；灯，光源');
INSERT INTO `cet4` VALUES ('cet4_1910', '　　light', '/ lait/', 'a.轻的，少量的');
INSERT INTO `cet4` VALUES ('cet4_1911', '　　lightning', '/ ‘laitniŋ/', 'n.闪电，闪电放电');
INSERT INTO `cet4` VALUES ('cet4_1912', '　　like', '/ laik/', 'vt.喜欢；喜爱；希望');
INSERT INTO `cet4` VALUES ('cet4_1913', '　　like', '/ laik/', 'prep.像，如；像要');
INSERT INTO `cet4` VALUES ('cet4_1914', '　　likely', '/ ‘laikli/', 'a.可能的 ad.很可能');
INSERT INTO `cet4` VALUES ('cet4_1915', '　　likewise', '/ ‘laikwaiz/', 'ad.同样地；也，又');
INSERT INTO `cet4` VALUES ('cet4_1916', '　　limb', '/ lim/', 'n.肢，臂，翼；树枝');
INSERT INTO `cet4` VALUES ('cet4_1917', '　　lime', '/ laim/', 'n.石灰');
INSERT INTO `cet4` VALUES ('cet4_1918', '　　limit', '/ ‘limit/', 'n.限度；限制；范围');
INSERT INTO `cet4` VALUES ('cet4_1919', '　　limitation', '/ limi’teiʃən/', 'n.限制；限度，局限');
INSERT INTO `cet4` VALUES ('cet4_1920', '　　limited', '/ ‘limitid/', 'a.有限的');
INSERT INTO `cet4` VALUES ('cet4_1921', '　　line', '/ lain/', 'n.线；排；路线；线条');
INSERT INTO `cet4` VALUES ('cet4_1922', '　　link', '/ liŋk/', 'vt.有环连接 n.环');
INSERT INTO `cet4` VALUES ('cet4_1923', '　　lion', '/ ‘laiən/', 'n.狮子；勇猛的人');
INSERT INTO `cet4` VALUES ('cet4_1924', '　　lip', '/ lip/', 'n.嘴唇');
INSERT INTO `cet4` VALUES ('cet4_1925', '　　liquid', '/ ‘likwid/', 'n.液体 a.液体的');
INSERT INTO `cet4` VALUES ('cet4_1926', '　　liquor', '/ ‘likə/', 'n.酒；溶液，液剂');
INSERT INTO `cet4` VALUES ('cet4_1927', '　　list', '/ list/', 'n.表，目录 n.列举');
INSERT INTO `cet4` VALUES ('cet4_1928', '　　listen', '/ ‘lisn/', 'vi.听，留神听；听从');
INSERT INTO `cet4` VALUES ('cet4_1929', '　　liter', '/ ‘li:tə/', 'n. 公升');
INSERT INTO `cet4` VALUES ('cet4_1930', '　　litre', '/ ‘li:tə/', 'n. 公升');
INSERT INTO `cet4` VALUES ('cet4_1931', '　　literary', '/ ‘litərəri/', 'a.文学(上)的');
INSERT INTO `cet4` VALUES ('cet4_1932', '　　literature', '/ ‘litəritʃə/', 'n.文学；文献');
INSERT INTO `cet4` VALUES ('cet4_1933', '　　little', '/ ‘litl/', 'a.小的；少；幼小的');
INSERT INTO `cet4` VALUES ('cet4_1934', '　　live', '/ liv laiv/', 'vi.居住；活 a.活的');
INSERT INTO `cet4` VALUES ('cet4_1935', '　　lively', '/ ‘laivli/', 'a.活泼的；逼真的');
INSERT INTO `cet4` VALUES ('cet4_1936', '　　liver', '/ ‘livə/', 'n.肝；肝脏');
INSERT INTO `cet4` VALUES ('cet4_1937', '　　living', '/ ‘liviŋ/', 'a.活的 n.生活，生计');
INSERT INTO `cet4` VALUES ('cet4_1938', '　　living-room', '/ ‘liviŋ’ru:m/', 'n.起居室');
INSERT INTO `cet4` VALUES ('cet4_1939', '　　load', '/ ləud/', 'vt.装；装满 n.负载');
INSERT INTO `cet4` VALUES ('cet4_1940', '　　loaf', '/ ləuf/', 'n.一条面包，一个面包');
INSERT INTO `cet4` VALUES ('cet4_1941', '　　loan', '/ ləun/', 'n.贷款；暂借 vt.借出');
INSERT INTO `cet4` VALUES ('cet4_1942', '　　local', '/ ‘ləukəl/', 'a.地方的；局部的');
INSERT INTO `cet4` VALUES ('cet4_1943', '　　locate', '/ ləu’keit/', 'vt.探明，找出，查出');
INSERT INTO `cet4` VALUES ('cet4_1944', '　　location', '/ ləu’keiʃən/', 'n.位置，场所');
INSERT INTO `cet4` VALUES ('cet4_1945', '　　lock', '/ lɔk/', 'n.锁 vt.锁上，锁住');
INSERT INTO `cet4` VALUES ('cet4_1946', '　　lodge', '/ lɔdʒ/', 'vi.暂住，借宿，投宿');
INSERT INTO `cet4` VALUES ('cet4_1947', '　　log', '/ lɔg/', 'n.原木，木料');
INSERT INTO `cet4` VALUES ('cet4_1948', '　　logic', '/ ‘lɔdʒik/', 'n.逻辑，推理；逻辑性');
INSERT INTO `cet4` VALUES ('cet4_1949', '　　logical', '/ ‘lɔdʒikəl/', 'a.逻辑的；符合逻辑的');
INSERT INTO `cet4` VALUES ('cet4_1950', '　　lonely', '/ ‘ləunli/', 'a.孤独的；荒凉的');
INSERT INTO `cet4` VALUES ('cet4_1951', '　　long', '/ lɔŋ/', 'a.长的；远的 ad.长久');
INSERT INTO `cet4` VALUES ('cet4_1952', '　　long', '/ lɔŋ/', 'vi.渴望，极想念');
INSERT INTO `cet4` VALUES ('cet4_1953', '　　look', '/ luk/', 'vi.看，显得 n.看');
INSERT INTO `cet4` VALUES ('cet4_1954', '　　loop', '/ lu:p/', 'n.圈，环，环孔');
INSERT INTO `cet4` VALUES ('cet4_1955', '　　loose', '/ lu:s/', 'a.松的；宽松的');
INSERT INTO `cet4` VALUES ('cet4_1956', '　　loosen', '/ ‘lu:sn/', 'vt.解开；使松驰');
INSERT INTO `cet4` VALUES ('cet4_1957', '　　lord', '/ lɔ:d/', 'n.贵族；上帝，基督');
INSERT INTO `cet4` VALUES ('cet4_1958', '　　lorry', '/ ‘lɔri/', 'n.运货汽车，卡车');
INSERT INTO `cet4` VALUES ('cet4_1959', '　　lose', '/ lu:z/', 'vt.失去；迷失；输掉');
INSERT INTO `cet4` VALUES ('cet4_1960', '　　loss', '/ lɔs/', 'n.遗失；损失；失败');
INSERT INTO `cet4` VALUES ('cet4_1961', '　　lot', '/ lɔt/', 'n.许多，大量；签，阄');
INSERT INTO `cet4` VALUES ('cet4_1962', '　　loud', '/ laud/', 'a.响亮的；吵闹的');
INSERT INTO `cet4` VALUES ('cet4_1963', '　　love', '/ lΛv/', 'vt.爱，喜欢 n.爱');
INSERT INTO `cet4` VALUES ('cet4_1964', '　　lovely', '/ ‘lΛvli/', 'a.可爱的；令人愉快的');
INSERT INTO `cet4` VALUES ('cet4_1965', '　　lover', '/ lΛvə/', 'n.爱好者；情人；情侣');
INSERT INTO `cet4` VALUES ('cet4_1966', '　　low', '/ ləu/', 'a.低的，矮的；低下的');
INSERT INTO `cet4` VALUES ('cet4_1967', '　　lower', '/ ‘ləuə/', 'a.较低的 vt.放下');
INSERT INTO `cet4` VALUES ('cet4_1968', '　　loyal', '/ ‘lɔiəl/', 'a.忠诚的，忠心的');
INSERT INTO `cet4` VALUES ('cet4_1969', '　　loyalty', '/ ‘lɔiəlti/', 'n.忠诚，忠心');
INSERT INTO `cet4` VALUES ('cet4_1970', '　　luck', '/ lΛk/', 'n.运气；好运，幸运');
INSERT INTO `cet4` VALUES ('cet4_1971', '　　lucky', '/ ‘lΛki/', 'a.幸运的；吉祥的');
INSERT INTO `cet4` VALUES ('cet4_1972', '　　luggage', '/ ‘lΛgidʒ/', 'n.行李；皮箱，皮包');
INSERT INTO `cet4` VALUES ('cet4_1973', '　　lump', '/ lΛmp/', 'n.团，块；肿块');
INSERT INTO `cet4` VALUES ('cet4_1974', '　　lunch', '/ lΛntʃ/', 'n.午餐，(美)便餐');
INSERT INTO `cet4` VALUES ('cet4_1975', '　　lung', '/ lΛŋ/', 'n.肺脏，肺');
INSERT INTO `cet4` VALUES ('cet4_1976', '　　luxury', '/ ‘lΛkʃəri/', 'n.奢侈，奢华； 奢侈品');
INSERT INTO `cet4` VALUES ('cet4_1979', 'machine', '/ mə’ʃi:n/', 'n.机器；机械');
INSERT INTO `cet4` VALUES ('cet4_1980', '　　machinery', '/ mə’ʃi:nəri/', 'n. 机器,机关,结构');
INSERT INTO `cet4` VALUES ('cet4_1981', '　　mad', '/ mæd/', 'a.发疯的；恼火的');
INSERT INTO `cet4` VALUES ('cet4_1982', '　　magazine', '/ mægə’zi:n/', 'n.杂志，期刊');
INSERT INTO `cet4` VALUES ('cet4_1983', '　　magic', '/ ‘mædʒik/', 'n.魔法，巫术；戏法');
INSERT INTO `cet4` VALUES ('cet4_1984', '　　magnet', '/ ‘mægnit/', 'n.磁铁，磁石，磁体');
INSERT INTO `cet4` VALUES ('cet4_1985', '　　magnetic', '/ mæg’netik/', 'a.磁的，有吸引力的');
INSERT INTO `cet4` VALUES ('cet4_1986', '　　magnificent', '/ mæg’nifisnt/', 'n.壮丽的；华丽的');
INSERT INTO `cet4` VALUES ('cet4_1987', '　　maid', '/ meid/', 'n.女佣，女仆；少女');
INSERT INTO `cet4` VALUES ('cet4_1988', '　　mail', '/ meil/', 'n.邮件 vt.邮寄');
INSERT INTO `cet4` VALUES ('cet4_1989', '　　main', '/ mein/', 'a.主要的，最重要的');
INSERT INTO `cet4` VALUES ('cet4_1990', '　　mainland', '/ ‘meinlænd/', 'n.大陆');
INSERT INTO `cet4` VALUES ('cet4_1991', '　　maintain', '/ mein’tein/', 'vt.维持；赡养；维修');
INSERT INTO `cet4` VALUES ('cet4_1992', '　　maintenance', '/ ‘meintinəns/', 'n.维持，保持；维修');
INSERT INTO `cet4` VALUES ('cet4_1993', '　　major', '/ ‘meidʒə/', 'a.较大的 n.专业');
INSERT INTO `cet4` VALUES ('cet4_1994', '　　majority', '/ mə’dʒoriti/', 'n.多数，大多数');
INSERT INTO `cet4` VALUES ('cet4_1995', '　　make', '/ meik/', 'vt.使；做，制造');
INSERT INTO `cet4` VALUES ('cet4_1996', '　　male', '/ meil/', 'a.男的，雄的 n.男子');
INSERT INTO `cet4` VALUES ('cet4_1997', '　　man', '/ mæn/', 'n.男人；人；人类');
INSERT INTO `cet4` VALUES ('cet4_1998', '　　manage', '/ ‘mænidʒ/', 'vt.管理；设法；对付');
INSERT INTO `cet4` VALUES ('cet4_1999', '　　management', '/ ‘mænidʒmənt/', 'n.管理；经营，处理');
INSERT INTO `cet4` VALUES ('cet4_2000', '　　manager', '/ ‘mænidʒə/', 'n.经理，管理人');
INSERT INTO `cet4` VALUES ('cet4_2001', '　　mankind', '/ mæn’kaind/', 'n.人类');
INSERT INTO `cet4` VALUES ('cet4_2002', '　　manner', '/ ‘mænə/', 'n.方式；态度；礼貌');
INSERT INTO `cet4` VALUES ('cet4_2003', '　　manual', '/ ‘mænjuəl/', 'a.体力的 n.手册');
INSERT INTO `cet4` VALUES ('cet4_2004', '　　manufacture', '/ mænju’fæktʃə/', 'vt.制造 n.制造；产品');
INSERT INTO `cet4` VALUES ('cet4_2005', '　　manufacturer', '/ mænju’fæktʃərə/', 'n.制造商；制造厂');
INSERT INTO `cet4` VALUES ('cet4_2006', '　　many', '/ ‘meni/', 'a.许多的 pron.许多人');
INSERT INTO `cet4` VALUES ('cet4_2007', '　　map', '/ mæp/', 'n.地图；图；天体图');
INSERT INTO `cet4` VALUES ('cet4_2008', '　　March', '/ ma:tʃ/', 'n.三月');
INSERT INTO `cet4` VALUES ('cet4_2009', '　　march', '/ ma:tʃ/', 'vi.行军；游行示威');
INSERT INTO `cet4` VALUES ('cet4_2010', '　　margin', '/ ‘ma:dʒin/', 'n.页边的空白；边缘');
INSERT INTO `cet4` VALUES ('cet4_2011', '　　marine', '/ mə’ri:n/', 'a.海的；海上的');
INSERT INTO `cet4` VALUES ('cet4_2012', '　　mark', '/ ma:k/', 'n.斑点；记号 vt.标明');
INSERT INTO `cet4` VALUES ('cet4_2013', '　　market', '/ ‘ma:kit/', 'n.市场；集市；销路');
INSERT INTO `cet4` VALUES ('cet4_2014', '　　marriage', '/ ‘mæridʒ/', 'n.结婚，婚姻；婚礼');
INSERT INTO `cet4` VALUES ('cet4_2015', '　　married', '/ ‘mærid/', 'a.已婚的；婚姻的');
INSERT INTO `cet4` VALUES ('cet4_2016', '　　marry', '/ ‘mæri/', 'vt.娶，嫁 vi.结婚');
INSERT INTO `cet4` VALUES ('cet4_2017', '　　marvelous', '/ ‘ma:viləs/', 'a.奇迹般的；了不起的');
INSERT INTO `cet4` VALUES ('cet4_2018', '　　Marxist', '/ ‘ma:ksist/', 'a.马克思主义的');
INSERT INTO `cet4` VALUES ('cet4_2019', '　　mask', '/ ma:sk/', 'n.面具；伪装 vt.掩饰');
INSERT INTO `cet4` VALUES ('cet4_2020', '　　mass', '/ mæs/', 'n.众多；团；群众');
INSERT INTO `cet4` VALUES ('cet4_2021', '　　master', '/ ‘ma:stə/', 'n.主人；能手；硕士');
INSERT INTO `cet4` VALUES ('cet4_2022', '　　mat', '/ mæt/', 'n.席子；草席；垫子');
INSERT INTO `cet4` VALUES ('cet4_2023', '　　match', '/ mætʃ/', 'n.比赛，竞赛；对手');
INSERT INTO `cet4` VALUES ('cet4_2024', '　　match', '/ mætʃ/', 'n.(一根)火柴');
INSERT INTO `cet4` VALUES ('cet4_2025', '　　mate', '/ meit/', 'n.伙伴，同事；配偶');
INSERT INTO `cet4` VALUES ('cet4_2026', '　　material', '/ mə’tiəriəl/', 'n.材料；素材a.物质的');
INSERT INTO `cet4` VALUES ('cet4_2027', '　　mathematical', '/ mæθi’mætikəl/', 'a.数学的，数学上的');
INSERT INTO `cet4` VALUES ('cet4_2028', '　　mathematics', '/ mæθi’mætiks/', 'n.数学');
INSERT INTO `cet4` VALUES ('cet4_2029', '　　maths', '/ mæθs/', 'n.(英)数学');
INSERT INTO `cet4` VALUES ('cet4_2030', '　　matter', '/ ‘mætə/', 'n.事情；物质 vi.要紧');
INSERT INTO `cet4` VALUES ('cet4_2031', '　　mature', '/ mə’tjuə/', 'a.成熟的 vt.使成熟');
INSERT INTO `cet4` VALUES ('cet4_2032', '　　maximum', '/ ‘mæksiməm/', 'n.最大量 a.最大的');
INSERT INTO `cet4` VALUES ('cet4_2033', '　　May', '/ mei/', 'n.五月');
INSERT INTO `cet4` VALUES ('cet4_2034', '　　may', '/ mei/', 'v.aux.可能；可以，祝');
INSERT INTO `cet4` VALUES ('cet4_2035', '　　maybe', '/ ‘meibi:/', 'ad.大概，或许；也许');
INSERT INTO `cet4` VALUES ('cet4_2036', '　　mayor', '/ ‘meə/', 'n.市长');
INSERT INTO `cet4` VALUES ('cet4_2037', '　　me', '/ mi:, mi/', 'pron.(宾格)我');
INSERT INTO `cet4` VALUES ('cet4_2038', '　　meal', '/ mi:l/', 'n.膳食，一餐');
INSERT INTO `cet4` VALUES ('cet4_2039', '　　mean', '/ mi:n/', 'vt.作…解释；意指');
INSERT INTO `cet4` VALUES ('cet4_2040', '　　mean', '/ mi:n/', 'a.自私的；吝啬的');
INSERT INTO `cet4` VALUES ('cet4_2041', '　　mean', '/ mi:n/', 'a.平均的 n.平均值');
INSERT INTO `cet4` VALUES ('cet4_2042', '　　meaning', '/ ‘mi:niŋ/', 'n.意义，意思；意图');
INSERT INTO `cet4` VALUES ('cet4_2043', '　　means', '/ mi:nz/', 'n.方法，手段，工具');
INSERT INTO `cet4` VALUES ('cet4_2044', '　　meantime', '/ ‘mi:n’taim/', 'n.其时，其间 ad.当时');
INSERT INTO `cet4` VALUES ('cet4_2045', '　　meanwhile', '/ ‘mi:n’wail/', 'ad.同时，当时');
INSERT INTO `cet4` VALUES ('cet4_2046', '　　measure', '/ ‘meʒə/', 'vt.量，测量 n.分量');
INSERT INTO `cet4` VALUES ('cet4_2047', '　　measurement', '/ ‘meʒəmənt/', 'n.衡量，测量；尺寸');
INSERT INTO `cet4` VALUES ('cet4_2048', '　　meat', '/ mi:t/', 'n.肉');
INSERT INTO `cet4` VALUES ('cet4_2049', '　　mechanic', '/ mi’kænik/', 'n.技工，机械，机修工');
INSERT INTO `cet4` VALUES ('cet4_2050', '　　mechanical', '/ mi’kænikəl/', 'a.机械的；力学的');
INSERT INTO `cet4` VALUES ('cet4_2051', '　　mechanics', '/ mi’kæniks/', 'n.力学；技术性细节');
INSERT INTO `cet4` VALUES ('cet4_2052', '　　medical', '/ ‘medikəl/', 'a.医学的；内科的');
INSERT INTO `cet4` VALUES ('cet4_2053', '　　medicine', '/ ‘medisin/', 'n.内服药；医学');
INSERT INTO `cet4` VALUES ('cet4_2054', '　　medium', '/ ‘mi:djəm/', 'n.媒质；中间a.中等的');
INSERT INTO `cet4` VALUES ('cet4_2055', '　　meet', '/ mi:t/', 'vt.遇见 vi.相遇');
INSERT INTO `cet4` VALUES ('cet4_2056', '　　meeting', '/ mi:tiŋ/', 'n.聚集，会合，会见');
INSERT INTO `cet4` VALUES ('cet4_2057', '　　melt', '/ melt/', 'vi.融化 vt.使融化');
INSERT INTO `cet4` VALUES ('cet4_2058', '　　member', '/ ‘membə/', 'n.成员，会员');
INSERT INTO `cet4` VALUES ('cet4_2059', '　　memorial', '/ mi’mɔ:riəl/', 'a.纪念的；记忆的');
INSERT INTO `cet4` VALUES ('cet4_2060', '　　memory', '/ ‘meməri/', 'n.记忆；回忆；存储');
INSERT INTO `cet4` VALUES ('cet4_2061', '　　mend', '/ mend/', 'vt.修理，修补，缝补');
INSERT INTO `cet4` VALUES ('cet4_2062', '　　mental', '/ ‘mentl/', 'a.智力的；精神的');
INSERT INTO `cet4` VALUES ('cet4_2063', '　　mention', '/ ‘menʃən/', 'vt.&n.提及，说起');
INSERT INTO `cet4` VALUES ('cet4_2064', '　　menu', '/ ‘menju:/', 'n.菜单；饭菜，菜肴');
INSERT INTO `cet4` VALUES ('cet4_2065', '　　merchant', '/ ‘mə:tʃənt/', 'n.商人；零售商');
INSERT INTO `cet4` VALUES ('cet4_2066', '　　mercury', '/ ‘mə:kjuri/', 'n.水银，汞');
INSERT INTO `cet4` VALUES ('cet4_2067', '　　Mercury', '/ ‘mə:kjuri/', 'n.水星');
INSERT INTO `cet4` VALUES ('cet4_2068', '　　mercy', '/ ‘mə:si/', 'n.仁慈，慈悲，恩惠');
INSERT INTO `cet4` VALUES ('cet4_2069', '　　mere', '/ miə/', 'a.仅仅的；纯粹的');
INSERT INTO `cet4` VALUES ('cet4_2070', '　　merely', '/ ‘miəli/', 'ad.仅仅，只不过');
INSERT INTO `cet4` VALUES ('cet4_2071', '　　merit', '/ ‘merit/', 'n.长处，优点；功过');
INSERT INTO `cet4` VALUES ('cet4_2072', '　　merry', '/ ‘meri/', 'a.欢乐的，愉快的');
INSERT INTO `cet4` VALUES ('cet4_2073', '　　message', '/ ‘mesidʒ/', 'n.信息，消息；启示');
INSERT INTO `cet4` VALUES ('cet4_2074', '　　metal', '/ ‘metl/', 'n.金属，金属制品');
INSERT INTO `cet4` VALUES ('cet4_2075', '　　meter', '/ ‘mi:tə/', 'n.计量器，计，表');
INSERT INTO `cet4` VALUES ('cet4_2076', '　　method', '/ ‘meθəd/', 'n.方法，办法；教学法');
INSERT INTO `cet4` VALUES ('cet4_2077', '　　metre', '/ ‘mi:tə/', 'n.米，公尺');
INSERT INTO `cet4` VALUES ('cet4_2078', '　　metric', '/ ‘metrik/', 'a.公制的，米制的');
INSERT INTO `cet4` VALUES ('cet4_2079', '　　microphone', '/ ‘maikrəfəun/', 'n.话筒，麦克风');
INSERT INTO `cet4` VALUES ('cet4_2080', '　　microscope', '/ ‘maikrəskəup/', 'n.显微镜');
INSERT INTO `cet4` VALUES ('cet4_2081', '　　middle', '/ ‘midl/', 'n.中部 a.中部的');
INSERT INTO `cet4` VALUES ('cet4_2082', '　　midnight', '/ ‘midnait/', 'n.午夜，子夜，夜半');
INSERT INTO `cet4` VALUES ('cet4_2083', '　　might', '/ mait/', 'v.aux.可能，会，也许');
INSERT INTO `cet4` VALUES ('cet4_2084', '　　might', '/ mait/', 'n.力量，威力，能力');
INSERT INTO `cet4` VALUES ('cet4_2085', '　　mild', '/ maild/', 'a.和缓的；温柔的');
INSERT INTO `cet4` VALUES ('cet4_2086', '　　mile', '/ mail/', 'n.英里');
INSERT INTO `cet4` VALUES ('cet4_2087', '　　military', '/ ‘militəri/', 'a.军事的；军人的');
INSERT INTO `cet4` VALUES ('cet4_2088', '　　milk', '/ milk/', 'n.乳，牛奶 vt.挤(奶)');
INSERT INTO `cet4` VALUES ('cet4_2089', '　　mill', '/ mil/', 'n.磨坊；制造厂');
INSERT INTO `cet4` VALUES ('cet4_2090', '　　millimetre', '/ ‘milimi:tə/', 'n.毫米');
INSERT INTO `cet4` VALUES ('cet4_2091', '　　million', '/ ‘miljən/', 'num.百万 n.许多');
INSERT INTO `cet4` VALUES ('cet4_2092', '　　mind', '/ maind/', 'n.头脑；理智；记忆');
INSERT INTO `cet4` VALUES ('cet4_2093', '　　mine', '/ main/', 'pron.我的');
INSERT INTO `cet4` VALUES ('cet4_2094', '　　mine', '/ main/', 'n.矿，矿山；地雷');
INSERT INTO `cet4` VALUES ('cet4_2095', '　　mineral', '/ ‘minərəl/', 'n.矿物 a.矿物的');
INSERT INTO `cet4` VALUES ('cet4_2096', '　　minimum', '/ ‘miniməm/', 'n.最小量 a.最小的');
INSERT INTO `cet4` VALUES ('cet4_2097', '　　minister', '/ ‘ministə/', 'n.部长，大臣；公使');
INSERT INTO `cet4` VALUES ('cet4_2098', '　　ministry', '/ ‘ministri/', 'n.(政府的)部');
INSERT INTO `cet4` VALUES ('cet4_2099', '　　minor', '/ ‘mainə/', 'a.较小的；较次要的');
INSERT INTO `cet4` VALUES ('cet4_2100', '　　minority', '/ mai’nɔriti/', 'n.少数；少数民族');
INSERT INTO `cet4` VALUES ('cet4_2101', '　　minus', '/ ‘mainəs/', 'a.负的 prep.减(去)');
INSERT INTO `cet4` VALUES ('cet4_2102', '　　minute', '/ ‘minit, mai’nju:t/', 'n.分，分钟；一会儿');
INSERT INTO `cet4` VALUES ('cet4_2103', '　　minute', '/ ‘minit, mai’nju:t/', 'a.微细的；详细的');
INSERT INTO `cet4` VALUES ('cet4_2104', '　　miracle', '/ ‘mirəkl/', 'n.奇迹，令人惊奇的人');
INSERT INTO `cet4` VALUES ('cet4_2105', '　　mirror', '/ ‘mirə/', 'n.镜子 vt.反映，反射');
INSERT INTO `cet4` VALUES ('cet4_2106', '　　miserable', '/ ‘mizərəbl/', 'a.痛苦的，悲惨的');
INSERT INTO `cet4` VALUES ('cet4_2107', '　　mislead', '/ mis’li:d/', 'vt.使误入岐途');
INSERT INTO `cet4` VALUES ('cet4_2108', '　　miss', '/ mis/', 'n.小姐');
INSERT INTO `cet4` VALUES ('cet4_2109', '　　miss', '/ mis/', 'vt.未看到；惦念');
INSERT INTO `cet4` VALUES ('cet4_2110', '　　missile', '/ ‘misail/', 'n.发射物；导弹');
INSERT INTO `cet4` VALUES ('cet4_2111', '　　missing', '/ ‘misiŋ/', 'a.缺掉的，失去的');
INSERT INTO `cet4` VALUES ('cet4_2112', '　　mission', '/ ‘miʃən/', 'n.使命，任务；使团');
INSERT INTO `cet4` VALUES ('cet4_2113', '　　mist', '/ mist/', 'n.薄雾');
INSERT INTO `cet4` VALUES ('cet4_2114', '　　mistake', '/ mis’teik/', 'n.错误 vi.误解，弄错');
INSERT INTO `cet4` VALUES ('cet4_2115', '　　misunderstand', '/ misΛndə’stænd/', 'vt.误解，误会，曲解');
INSERT INTO `cet4` VALUES ('cet4_2116', '　　mix', '/ miks/', 'vt.使混合，混淆');
INSERT INTO `cet4` VALUES ('cet4_2117', '　　mixture', '/ ‘mikstʃə/', 'n.混合；混合物');
INSERT INTO `cet4` VALUES ('cet4_2118', '　　mobile', '/ ‘məubail/', 'a.运动的；流动的');
INSERT INTO `cet4` VALUES ('cet4_2119', '　　mode', '/ məud/', 'n.方式，样式');
INSERT INTO `cet4` VALUES ('cet4_2120', '　　model', '/ ‘mɔdl/', 'n.模型；模式；模特儿');
INSERT INTO `cet4` VALUES ('cet4_2121', '　　moderate', '/ ‘mɔdərit/', 'a.温和的；有节制的');
INSERT INTO `cet4` VALUES ('cet4_2122', '　　modern', '/ ‘mɔdən/', 'a.现代的，近代的');
INSERT INTO `cet4` VALUES ('cet4_2123', '　　modest', '/ ‘mɔdist/', 'a.有节制的；谦虚的');
INSERT INTO `cet4` VALUES ('cet4_2124', '　　modify', '/ ‘mɔdifai/', 'vt.更改，修改；修饰');
INSERT INTO `cet4` VALUES ('cet4_2125', '　　mɔist', '/ mɔist/', 'a.湿润的；多雨的');
INSERT INTO `cet4` VALUES ('cet4_2126', '　　mɔisture', '/ ‘mɔistʃə/', 'n.潮湿，湿气；温度');
INSERT INTO `cet4` VALUES ('cet4_2127', '　　molecule', '/ ‘mɔlikju:l/', 'n.分子，克分子');
INSERT INTO `cet4` VALUES ('cet4_2128', '　　moment', '/ ‘məumənt/', 'n.片刻，瞬间，时刻');
INSERT INTO `cet4` VALUES ('cet4_2129', '　　Monday', '/ ‘mΛndi/', 'n.星期一');
INSERT INTO `cet4` VALUES ('cet4_2130', '　　money', '/ ‘mΛni/', 'n.货币；金钱，财富');
INSERT INTO `cet4` VALUES ('cet4_2131', '　　monitor', '/ ‘mɔnitə/', 'n.班长；监视器');
INSERT INTO `cet4` VALUES ('cet4_2132', '　　monkey', '/ ‘mΛŋki/', 'n.猴子，猿');
INSERT INTO `cet4` VALUES ('cet4_2133', '　　month', '/ mΛnθ/', 'n.月，月份');
INSERT INTO `cet4` VALUES ('cet4_2134', '　　monthly', '/ ‘mΛnθli/', 'a.每月的 ad.每月');
INSERT INTO `cet4` VALUES ('cet4_2135', '　　monument', '/ ‘mɔnjumənt/', 'n.纪念碑；纪念馆');
INSERT INTO `cet4` VALUES ('cet4_2136', '　　mood', '/ mu:d/', 'n.心情，情绪；语气');
INSERT INTO `cet4` VALUES ('cet4_2137', '　　moon', '/ mu:n/', 'n.月球，月亮；卫星');
INSERT INTO `cet4` VALUES ('cet4_2138', '　　moral', '/ ‘mɔrəl/', 'a.道德的；合乎道德的');
INSERT INTO `cet4` VALUES ('cet4_2139', '　　more', '/ mɔ:/', 'a.更多的 ad.更');
INSERT INTO `cet4` VALUES ('cet4_2140', '　　moreover', '/ mɔ:’rəuvə/', 'ad.再者，加之，此外');
INSERT INTO `cet4` VALUES ('cet4_2141', '　　morning', '/ ‘mɔ:niŋ/', 'n.早晨，上午');
INSERT INTO `cet4` VALUES ('cet4_2142', '　　mosquito', '/ məs’ki:təu/', 'n.蚊子');
INSERT INTO `cet4` VALUES ('cet4_2143', '　　most', '/ məust/', 'a.最多的 ad.最，很');
INSERT INTO `cet4` VALUES ('cet4_2144', '　　mostly', '/ ‘məustli/', 'ad.主要的，大部分');
INSERT INTO `cet4` VALUES ('cet4_2145', '　　mother', '/ ‘mΛðə/', 'n.母亲，妈妈');
INSERT INTO `cet4` VALUES ('cet4_2146', '　　motion', '/ ‘məuʃən/', 'n.运动；手势；提议');
INSERT INTO `cet4` VALUES ('cet4_2147', '　　motivate', '/ ‘məutiveit/', 'vt.促动；激励，激发');
INSERT INTO `cet4` VALUES ('cet4_2148', '　　motive', '/ ‘məutiv/', 'n.动机，目的');
INSERT INTO `cet4` VALUES ('cet4_2149', '　　motor', '/ ‘məutə/', 'n. 发动机；机动车');
INSERT INTO `cet4` VALUES ('cet4_2150', '　　mould', '/ məuld/', 'n.模子，模型 vt.浇铸');
INSERT INTO `cet4` VALUES ('cet4_2151', '　　mount', '/ maunt/', 'vt.登上，爬上 n.…山');
INSERT INTO `cet4` VALUES ('cet4_2152', '　　mountain', '/ ‘mauntin/', 'n.山，山岳；山脉');
INSERT INTO `cet4` VALUES ('cet4_2153', '　　mouse', '/ maus/', 'n.鼠，耗子');
INSERT INTO `cet4` VALUES ('cet4_2154', '　　mouth', '/ mauθ/', 'n.嘴，口，口腔');
INSERT INTO `cet4` VALUES ('cet4_2155', '　　move', '/ mu:v/', 'vt.移动；感动 n.动');
INSERT INTO `cet4` VALUES ('cet4_2156', '　　movement', '/ ‘mu:vmənt/', 'n.动作，活动；移动');
INSERT INTO `cet4` VALUES ('cet4_2157', '　　movie', '/ ‘mu:vi/', 'n.电影；电影院');
INSERT INTO `cet4` VALUES ('cet4_2158', '　　much', '/ mΛtʃ/', 'ad.非常，很 a.许多的');
INSERT INTO `cet4` VALUES ('cet4_2159', '　　mud', '/ mΛd/', 'n.软泥，泥浆');
INSERT INTO `cet4` VALUES ('cet4_2160', '　　multiple', '/ ‘mΛltipl/', 'a.复合的；并联的');
INSERT INTO `cet4` VALUES ('cet4_2161', '　　multiply', '/ ‘mΛltiplai/', 'vt.使增加；乘');
INSERT INTO `cet4` VALUES ('cet4_2162', '　　murder', '/ ‘mə:də/', 'n.&vi.谋杀，凶杀');
INSERT INTO `cet4` VALUES ('cet4_2163', '　　muscle', '/ ‘mΛsl/', 'n.肌肉，肌；体力');
INSERT INTO `cet4` VALUES ('cet4_2164', '　　museum', '/ mju:’ziəm/', 'n.博物馆；展览馆');
INSERT INTO `cet4` VALUES ('cet4_2165', '　　music', '/ ‘mju:zik/', 'n.音乐，乐曲，乐谱');
INSERT INTO `cet4` VALUES ('cet4_2166', '　　musical', '/ ‘mju:zikəl/', 'a.音乐的；和谐的');
INSERT INTO `cet4` VALUES ('cet4_2167', '　　musician', '/ mju:’ziʃən/', 'n.音乐家；作曲家');
INSERT INTO `cet4` VALUES ('cet4_2168', '　　must', '/ mΛst/', 'v.aux.必须；必然要');
INSERT INTO `cet4` VALUES ('cet4_2169', '　　mutual', '/ ‘mju:tjuəl/', 'a.相互的；共同的');
INSERT INTO `cet4` VALUES ('cet4_2170', '　　my', '/ mai/', 'pron.我的');
INSERT INTO `cet4` VALUES ('cet4_2171', '　　myself', '/ mai’self/', 'pron.我自己；我亲自');
INSERT INTO `cet4` VALUES ('cet4_2172', '　　mysterious', '/ mis’tiəriəs/', 'a.神秘的；难以理解的');
INSERT INTO `cet4` VALUES ('cet4_2173', '　　mystery', '/ ‘mistəri/', 'n.神秘；神秘的事物');
INSERT INTO `cet4` VALUES ('cet4_2176', 'nail', '/ neil/', 'n.钉；指甲 vt.钉');
INSERT INTO `cet4` VALUES ('cet4_2177', '　　naked', '/ ‘neikid/', 'a.裸体的；无遮敝的');
INSERT INTO `cet4` VALUES ('cet4_2181', '　　name', '/ ‘neim/', 'n.名字；名誉 vt.说出');
INSERT INTO `cet4` VALUES ('cet4_2182', '　　namely', '/ ‘neimli/', 'ad.即，也就是');
INSERT INTO `cet4` VALUES ('cet4_2183', '　　narrow', '/ ‘nærəu/', 'a.狭的，狭窄的');
INSERT INTO `cet4` VALUES ('cet4_2184', '　　nation', '/ ‘neiʃən/', 'n.民族；国家');
INSERT INTO `cet4` VALUES ('cet4_2185', '　　national', '/ ‘næʃənl/', 'a.民族的；国家的');
INSERT INTO `cet4` VALUES ('cet4_2186', '　　nationality', '/ næʃə’næliti/', 'n.国籍；民族，族');
INSERT INTO `cet4` VALUES ('cet4_2187', '　　native', '/ ‘neitiv/', 'a.本土的 n.本地人');
INSERT INTO `cet4` VALUES ('cet4_2188', '　　natural', '/ ‘nætʃərəl/', 'a.自然界的；天然的');
INSERT INTO `cet4` VALUES ('cet4_2189', '　　naturally', '/ ‘nætʃərəli/', 'ad.自然地；天然地');
INSERT INTO `cet4` VALUES ('cet4_2190', '　　nature', '/ ‘neitʃə/', 'n.大自然；本性；性质');
INSERT INTO `cet4` VALUES ('cet4_2191', '　　naval', '/ ‘neivəl/', 'n.海军的，军舰的');
INSERT INTO `cet4` VALUES ('cet4_2192', '　　navigation', '/ nævi’geiʃən/', 'n.航行；航海术；导航');
INSERT INTO `cet4` VALUES ('cet4_2193', '　　navy', '/ ‘neivi/', 'n.海军');
INSERT INTO `cet4` VALUES ('cet4_2194', '　　near', '/ niə/', 'ad.近，接近 a.近的');
INSERT INTO `cet4` VALUES ('cet4_2195', '　　nearby', '/ ‘niəbai/', 'a.附近的 ad.在附近');
INSERT INTO `cet4` VALUES ('cet4_2196', '　　nearly', '/ ‘niəli/', 'ad.差不多；密切地');
INSERT INTO `cet4` VALUES ('cet4_2197', '　　neat', '/ ni:t/', 'a.整洁的；熟练的');
INSERT INTO `cet4` VALUES ('cet4_2198', '　　necessarily', '/ ‘nesisərili/', 'ad.必然，必定');
INSERT INTO `cet4` VALUES ('cet4_2199', '　　necessary', '/ ‘nesisəri/', 'a.必要的；必然的');
INSERT INTO `cet4` VALUES ('cet4_2200', '　　necessity', '/ ni’sesiti/', 'n.必要性；必然性');
INSERT INTO `cet4` VALUES ('cet4_2201', '　　neck', '/ nek/', 'n.颈，脖子');
INSERT INTO `cet4` VALUES ('cet4_2202', '　　need', '/ ni:d/', 'vt.需要 v.aux.需要');
INSERT INTO `cet4` VALUES ('cet4_2203', '　　needle', '/ ‘ni:dl/', 'n.针，缝补，编织针');
INSERT INTO `cet4` VALUES ('cet4_2204', '　　negative', '/ ‘negətiv/', 'a.否定的；消极的');
INSERT INTO `cet4` VALUES ('cet4_2205', '　　neglect', '/ ni’glekt/', 'vt.忽视，忽略；疏忽');
INSERT INTO `cet4` VALUES ('cet4_2206', '　　ŋegro', '/ ‘ni:grəu/', 'n.黑人');
INSERT INTO `cet4` VALUES ('cet4_2207', '　　neighbour', '/ ‘neibə/', 'n.邻居，邻国，邻人');
INSERT INTO `cet4` VALUES ('cet4_2208', '　　neighbourhood', '/ ‘neibəhud/', 'n.邻居关系；邻近');
INSERT INTO `cet4` VALUES ('cet4_2209', '　　neither', '/ ‘naiðə, ‘ni:ðə/', 'a.(两者)都不的');
INSERT INTO `cet4` VALUES ('cet4_2210', '　　nephew', '/ ‘nevju:/', 'n.侄子，外甥');
INSERT INTO `cet4` VALUES ('cet4_2211', '　　nerve', '/ nə:v/', 'n.神经；勇敢，胆量');
INSERT INTO `cet4` VALUES ('cet4_2212', '　　nervous', '/ ‘nə:vəs/', 'a.神经的；易激动的');
INSERT INTO `cet4` VALUES ('cet4_2213', '　　nest', '/ nest/', 'n.巢，窝，穴');
INSERT INTO `cet4` VALUES ('cet4_2214', '　　net', '/ net/', 'n.网，网状物；通信网');
INSERT INTO `cet4` VALUES ('cet4_2215', '　　network', '/ ‘netwə:k/', 'n.网状物；网络');
INSERT INTO `cet4` VALUES ('cet4_2216', '　　neutral', '/ ‘nju:trəl/', 'a.中立的；中性的');
INSERT INTO `cet4` VALUES ('cet4_2217', '　　never', '/ ‘nevə/', 'ad.永不，决不；不');
INSERT INTO `cet4` VALUES ('cet4_2218', '　　nevertheless', '/ nevəðəles/', 'conj.然而 ad.仍然');
INSERT INTO `cet4` VALUES ('cet4_2219', '　　new', '/ nju:/', 'a.新的；新近出现的');
INSERT INTO `cet4` VALUES ('cet4_2220', '　　news', '/ nju:z/', 'n.新闻，消息');
INSERT INTO `cet4` VALUES ('cet4_2221', '　　newspaper', '/ ‘nju:zpeipə/', 'n.报纸，报');
INSERT INTO `cet4` VALUES ('cet4_2222', '　　next', '/ nekst/', 'a.紧接的；贴近的');
INSERT INTO `cet4` VALUES ('cet4_2223', '　　nice', '/ ‘nais/', 'a.美好的，令人愉快的');
INSERT INTO `cet4` VALUES ('cet4_2224', '　　niece', '/ ni:s/', 'n.侄女，外甥女');
INSERT INTO `cet4` VALUES ('cet4_2225', '　　night', '/ nait/', 'n.夜，夜间');
INSERT INTO `cet4` VALUES ('cet4_2226', '　　nine', '/ nain/', 'num.九，九个');
INSERT INTO `cet4` VALUES ('cet4_2227', '　　nineteen', '/ ‘nain’ti:n/', 'num.十九，十九个');
INSERT INTO `cet4` VALUES ('cet4_2228', '　　ninety', '/ ‘nainti/', 'num.九十，九十个');
INSERT INTO `cet4` VALUES ('cet4_2229', '　　ninth', '/ nainθ/', 'num.第九；九分之一');
INSERT INTO `cet4` VALUES ('cet4_2230', '　　nitrogen', '/ ‘naitridʒən/', 'n.氮');
INSERT INTO `cet4` VALUES ('cet4_2231', '　　no', '/ nəu/', 'ad.不；并不 a.没有');
INSERT INTO `cet4` VALUES ('cet4_2232', '　　noble', '/ ‘nəubl/', 'a.贵族的；高尚的');
INSERT INTO `cet4` VALUES ('cet4_2233', '　　nobody', '/ ‘nəubədi/', 'pron.谁也不；无人');
INSERT INTO `cet4` VALUES ('cet4_2234', '　　nod', '/ nɔd/', 'vt.点(头)；点头表示');
INSERT INTO `cet4` VALUES ('cet4_2235', '　　nɔise', '/ nɔiz/', 'n.喧闹声；响声；噪声');
INSERT INTO `cet4` VALUES ('cet4_2236', '　　nɔisy', '/ ‘nɔizi/', 'a.嘈杂的；喧闹的');
INSERT INTO `cet4` VALUES ('cet4_2237', '　　none', '/ nΛn/', 'pron.没有人 ad.毫不');
INSERT INTO `cet4` VALUES ('cet4_2238', '　　nonsense', '/ ‘nɔnsəns/', 'n.胡说，废话');
INSERT INTO `cet4` VALUES ('cet4_2239', '　　noon', '/ nu:n/', 'n.正午，中午');
INSERT INTO `cet4` VALUES ('cet4_2240', '　　nor', '/ nɔ:/', 'conj.也不；不');
INSERT INTO `cet4` VALUES ('cet4_2241', '　　normal', '/ ‘nɔ:məli/', 'a.正常的，普通的');
INSERT INTO `cet4` VALUES ('cet4_2242', '　　normally', '/ ‘nɔ:məli/', 'ad.通常，正常地');
INSERT INTO `cet4` VALUES ('cet4_2243', '　　north', '/ nɔ:θ/', 'n.北，北方 a.北方的');
INSERT INTO `cet4` VALUES ('cet4_2244', '　　northeast', '/ ‘nɔ:θ’i:st/', 'n.东北 a.位于东北的');
INSERT INTO `cet4` VALUES ('cet4_2245', '　　northern', '/ ‘nɔ:ðən/', 'a.北方的，北部的');
INSERT INTO `cet4` VALUES ('cet4_2246', '　　northwest', '/ ‘nɔ:θ’west/', 'n.西北 a.位于西北的');
INSERT INTO `cet4` VALUES ('cet4_2247', '　　nose', '/ nəuz/', 'n.鼻子；突出部分');
INSERT INTO `cet4` VALUES ('cet4_2248', '　　not', '/ nɔt/', 'ad.不，没有');
INSERT INTO `cet4` VALUES ('cet4_2249', '　　note', '/ nəut/', 'n.笔记；便条；注释');
INSERT INTO `cet4` VALUES ('cet4_2250', '　　notebook', '/ ‘nəutbuk/', 'n.笔记本，期票簿');
INSERT INTO `cet4` VALUES ('cet4_2251', '　　nothing', '/ ‘nΛθiŋ/', 'n.没有东西 ad.毫不');
INSERT INTO `cet4` VALUES ('cet4_2252', '　　notice', '/ ‘nəutis/', 'vt.注意 n.通知；注意');
INSERT INTO `cet4` VALUES ('cet4_2253', '　　noticeable', '/ ‘nəutisəbl/', 'a.显而易见的；重要的');
INSERT INTO `cet4` VALUES ('cet4_2254', '　　noun', '/ naun/', 'n.名词');
INSERT INTO `cet4` VALUES ('cet4_2255', '　　novel', '/ ‘nɔvəl/', 'n.小说 a.新的');
INSERT INTO `cet4` VALUES ('cet4_2256', '　　ŋovember', '/ nəu’vembə/', 'n.十一月');
INSERT INTO `cet4` VALUES ('cet4_2257', '　　now', '/ nau/', 'ad.现在；立刻；于是');
INSERT INTO `cet4` VALUES ('cet4_2258', '　　nowadays', '/ ‘nauədeiz/', 'ad.现今，现在');
INSERT INTO `cet4` VALUES ('cet4_2259', '　　nowhere', '/ ‘nəuhweə/', 'ad.任何地方都不');
INSERT INTO `cet4` VALUES ('cet4_2260', '　　nuclear', '/ ‘nju:kliə/', 'a.原子核的；核心的');
INSERT INTO `cet4` VALUES ('cet4_2261', '　　nucleus', '/ ‘nju:kliəs/', 'n.核，核心；(原子)核');
INSERT INTO `cet4` VALUES ('cet4_2262', '　　nuisance', '/ ‘nju:sns/', 'n.讨厌的东西');
INSERT INTO `cet4` VALUES ('cet4_2263', '　　number', '/ ‘nΛmbə/', 'n.数，数字；号码');
INSERT INTO `cet4` VALUES ('cet4_2264', '　　numerous', '/ ‘nju:mərəs/', 'a.为数众多的；许多');
INSERT INTO `cet4` VALUES ('cet4_2265', '　　nurse', '/ nə:s/', 'n.保姆；护士 vt.看护');
INSERT INTO `cet4` VALUES ('cet4_2266', '　　nursery', '/ ‘nə:səri/', 'n.托儿所；苗圃');
INSERT INTO `cet4` VALUES ('cet4_2267', '　　nut', '/ nΛt/', 'n.坚果，干果；螺母');
INSERT INTO `cet4` VALUES ('cet4_2268', '　　nylon', '/ ‘nailən/', 'n.尼龙，耐纶');
INSERT INTO `cet4` VALUES ('cet4_2271', 'obey', '/ ə’bei/', 'vt.顺从 vi.服从');
INSERT INTO `cet4` VALUES ('cet4_2272', '　　object', '/ ‘obdʒikt əb’dʒekt/', 'n.物，物体；目的');
INSERT INTO `cet4` VALUES ('cet4_2275', '　　object', '/ ‘obdʒikt əb’dʒekt/', 'vi.反对；抱反感');
INSERT INTO `cet4` VALUES ('cet4_2276', '　　objection', '/ əb’dʒekʃən/', 'n.反对，异议；不喜欢');
INSERT INTO `cet4` VALUES ('cet4_2277', '　　objective', '/ ob’dʒektiv/', 'a.客观的；无偏见的');
INSERT INTO `cet4` VALUES ('cet4_2278', '　　oblige', '/ ə’blaidʒ/', 'vt.迫使；施恩惠于');
INSERT INTO `cet4` VALUES ('cet4_2279', '　　observation', '/ obzə:’veiʃən/', 'n.注意；观察；观察力');
INSERT INTO `cet4` VALUES ('cet4_2280', '　　observe', '/ əb’zə:v/', 'vt.遵守；看到；说');
INSERT INTO `cet4` VALUES ('cet4_2281', '　　observer', '/ əb’zə:və/', 'n.观察员，观测者');
INSERT INTO `cet4` VALUES ('cet4_2282', '　　obstacle', '/ ‘obstəkl/', 'n.障碍，障碍物，妨害');
INSERT INTO `cet4` VALUES ('cet4_2283', '　　obtain', '/ əb’tein/', 'vt.获得，得到，买到');
INSERT INTO `cet4` VALUES ('cet4_2284', '　　obvious', '/ ‘obviəs/', 'a.明显的，显而易见的');
INSERT INTO `cet4` VALUES ('cet4_2285', '　　occasion', '/ ə’keiʒən/', 'n.场合，时刻；时机');
INSERT INTO `cet4` VALUES ('cet4_2286', '　　occasional', '/ ə’keiʒənəl/', 'a.偶然的；临时的');
INSERT INTO `cet4` VALUES ('cet4_2287', '　　occupation', '/ ɔkju’peiʃənl/', 'n.占领，占据；职业');
INSERT INTO `cet4` VALUES ('cet4_2288', '　　occupy', '/ ‘ɔkjupəai/', 'vt.占领；占，占有');
INSERT INTO `cet4` VALUES ('cet4_2289', '　　occur', '/ ə’kə:/', 'vi.发生；出现，存在');
INSERT INTO `cet4` VALUES ('cet4_2290', '　　occurrence', '/ ə’kΛrəns/', 'n.发生，出现；事件');
INSERT INTO `cet4` VALUES ('cet4_2291', '　　ocean', '/ ‘əuʃən/', 'n.海洋；洋');
INSERT INTO `cet4` VALUES ('cet4_2292', '　　o\'clock', '/ ə’klɔk/', 'ad.…点钟');
INSERT INTO `cet4` VALUES ('cet4_2293', '　　October', '/ ɔk’təubə/', 'n.十月');
INSERT INTO `cet4` VALUES ('cet4_2294', '　　odd', '/ od/', 'a.奇数的；单只的');
INSERT INTO `cet4` VALUES ('cet4_2295', '　　of', '/ ɔv, əv/', 'prep.…的；由于');
INSERT INTO `cet4` VALUES ('cet4_2296', '　　off', '/ ɔ:f/', 'ad.(离)开；(停)止');
INSERT INTO `cet4` VALUES ('cet4_2297', '　　offend', '/ ə’fend/', 'vt.冒犯 vi.犯过错');
INSERT INTO `cet4` VALUES ('cet4_2298', '　　offer', '/ ‘ɔfə/', 'vt.提供；提出 n.提供');
INSERT INTO `cet4` VALUES ('cet4_2299', '　　office', '/ ‘ɔfis/', 'n.办公室；处，局，社');
INSERT INTO `cet4` VALUES ('cet4_2300', '　　officer', '/ ‘ɔfisə/', 'n.官员；干事；军官');
INSERT INTO `cet4` VALUES ('cet4_2301', '　　official', '/ ə’fiʃəl/', 'a.官员的；官方的');
INSERT INTO `cet4` VALUES ('cet4_2302', '　　often', '/ ‘ɔ:fn/', 'ad.经常，常常');
INSERT INTO `cet4` VALUES ('cet4_2303', '　　oh', '/ əu/', 'int.嗬，哦，唉呀');
INSERT INTO `cet4` VALUES ('cet4_2304', '　　ɔil', '/ ɔil/', 'n.油；石油 vt.加油于');
INSERT INTO `cet4` VALUES ('cet4_2305', '　　okay', '/ ‘əu’kei/', '(缩作OK)a.&ad.对，好');
INSERT INTO `cet4` VALUES ('cet4_2306', '　　old', '/ əuld/', 'a.老的；…岁的');
INSERT INTO `cet4` VALUES ('cet4_2307', '　　omit', '/ əu’mit/', 'vt.省略，省去；遗漏');
INSERT INTO `cet4` VALUES ('cet4_2308', '　　on', '/ on/', 'prep.在…上；在…旁');
INSERT INTO `cet4` VALUES ('cet4_2309', '　　once', '/ wΛns/', 'ad.一次；曾经 n.一次');
INSERT INTO `cet4` VALUES ('cet4_2310', '　　one', '/ wΛn/', 'num.一 pron.一个人');
INSERT INTO `cet4` VALUES ('cet4_2311', '　　oneself', '/ wΛn’self/', 'pron.自己；亲自');
INSERT INTO `cet4` VALUES ('cet4_2312', '　　onion', '/ ‘Λnjən/', 'n.洋葱，洋葱头');
INSERT INTO `cet4` VALUES ('cet4_2313', '　　only', '/ ‘əunli/', 'ad.只，仅仅 a.唯一的');
INSERT INTO `cet4` VALUES ('cet4_2314', '　　onto', '/ ‘ontu/', 'prep.到…上');
INSERT INTO `cet4` VALUES ('cet4_2315', '　　open', '/ ‘əupən/', 'a.开的；开放的 vt.开');
INSERT INTO `cet4` VALUES ('cet4_2316', '　　opening', '/ ‘əupəniŋ/', 'a.开始的 n.开始');
INSERT INTO `cet4` VALUES ('cet4_2317', '　　opera', '/ ‘ɔpərə/', 'n.歌剧');
INSERT INTO `cet4` VALUES ('cet4_2318', '　　operate', '/ ‘ɔpəreit/', 'vi.操作；施行手术');
INSERT INTO `cet4` VALUES ('cet4_2319', '　　operation', '/ ɔpə’reiʃən/', 'n.操作；手术；运算');
INSERT INTO `cet4` VALUES ('cet4_2320', '　　operational', '/ ɔpə’reiʃənl/', 'a.操作上的；可使用的');
INSERT INTO `cet4` VALUES ('cet4_2321', '　　operator', '/ ‘ɔpəreitə/', 'n.操作人员，接线员');
INSERT INTO `cet4` VALUES ('cet4_2322', '　　opinion', '/ ə’pinjən/', 'n.意见，看法，主张');
INSERT INTO `cet4` VALUES ('cet4_2323', '　　opponent', '/ ə’pəunənt/', 'n.对手，敌手；对抗者');
INSERT INTO `cet4` VALUES ('cet4_2324', '　　opportunity', '/ pə’tju:niti/', 'n.机会，良机');
INSERT INTO `cet4` VALUES ('cet4_2325', '　　oppose', '/ ə’pəuz/', 'vt.反对；反抗');
INSERT INTO `cet4` VALUES ('cet4_2326', '　　opposite', '/ ‘ɔpəzit/', 'a.对面的 n.对立物');
INSERT INTO `cet4` VALUES ('cet4_2327', '　　optical', '/ ‘ɔptikəl/', 'a.眼的；光学的');
INSERT INTO `cet4` VALUES ('cet4_2328', '　　optimistic', '/ ɔptimistik/', 'a.乐观的；乐观主义的');
INSERT INTO `cet4` VALUES ('cet4_2329', '　　optional', '/ ‘ɔpʃənl/', 'a.可以任意选择的');
INSERT INTO `cet4` VALUES ('cet4_2330', '　　or', '/ ɔ:, ə/', 'conj.或，或者；即');
INSERT INTO `cet4` VALUES ('cet4_2331', '　　oral', '/ ‘ɔ:rəl/', 'a.口头的；口的');
INSERT INTO `cet4` VALUES ('cet4_2332', '　　orange', '/ ‘orindʒ/', 'n.橙(树)；柑(树)');
INSERT INTO `cet4` VALUES ('cet4_2333', '　　orbit', '/ ‘ɔ:bit/', 'n.运行轨道 vt.环绕');
INSERT INTO `cet4` VALUES ('cet4_2334', '　　orchestra', '/ ‘ɔ:kistrə/', 'n.管弦乐队');
INSERT INTO `cet4` VALUES ('cet4_2335', '　　order', '/ ‘ɔ:də/', 'n.次序；整齐 vt.命令');
INSERT INTO `cet4` VALUES ('cet4_2336', '　　orderly', '/ ‘ɔ:dəli/', 'a.整洁的；有秩序的');
INSERT INTO `cet4` VALUES ('cet4_2337', '　　ordinary', '/ ‘ɔ:dinəri/', 'a.平常的；平凡的');
INSERT INTO `cet4` VALUES ('cet4_2338', '　　ore', '/ ɔ:/', 'n.矿，矿石，矿砂');
INSERT INTO `cet4` VALUES ('cet4_2339', '　　organ', '/ ‘ɔ:gən/', 'n.器官；机构；管风琴');
INSERT INTO `cet4` VALUES ('cet4_2340', '　　organic', '/ ɔ:’gænik/', 'a.有机体的；器官的');
INSERT INTO `cet4` VALUES ('cet4_2341', '　　organism', '/ ‘ɔ:gənizəm/', 'n.生物体；有机体');
INSERT INTO `cet4` VALUES ('cet4_2342', '　　organization', '/ ɔ:gənai’zeiʃən/', 'n.组织；团体，机构');
INSERT INTO `cet4` VALUES ('cet4_2343', '　　organize', '/ ‘ɔ:gənaiz/', 'vt.组织，编组');
INSERT INTO `cet4` VALUES ('cet4_2344', '　　origin', '/ ‘oridʒin/', 'n.起源，由来；出身');
INSERT INTO `cet4` VALUES ('cet4_2345', '　　original', '/ ə’ridʒənəl/', 'a.最初的；新颖的');
INSERT INTO `cet4` VALUES ('cet4_2346', '　　other', '/ ‘Λðə/', 'a.另外的；其余的');
INSERT INTO `cet4` VALUES ('cet4_2347', '　　otherwise', '/ ‘Λðəwaiz/', 'ad.另外；要不然');
INSERT INTO `cet4` VALUES ('cet4_2348', '　　ought', '/ ɔ:t/', 'v.aux.应当，应该');
INSERT INTO `cet4` VALUES ('cet4_2349', '　　ounce', '/ auns/', 'n.盎司，英两');
INSERT INTO `cet4` VALUES ('cet4_2350', '　　our', '/ ‘auə/', 'pron.我们的');
INSERT INTO `cet4` VALUES ('cet4_2351', '　　ours', '/ ‘auəz/', 'pron.我们的');
INSERT INTO `cet4` VALUES ('cet4_2352', '　　ourselves', '/ auə’selvz/', 'pron.我们自己');
INSERT INTO `cet4` VALUES ('cet4_2353', '　　out', '/ aut/', 'ad.出，在外；现出来');
INSERT INTO `cet4` VALUES ('cet4_2354', '　　outcome', '/ ‘autkəm/', 'n.结果，后果，成果');
INSERT INTO `cet4` VALUES ('cet4_2355', '　　outdoors', '/ ‘aut’dɔ:z/', 'ad.在户外，在野外');
INSERT INTO `cet4` VALUES ('cet4_2356', '　　outer', '/ ‘autə/', 'a.外部的，外面的');
INSERT INTO `cet4` VALUES ('cet4_2357', '　　outlet', '/ ‘aut-let/', 'n.出口，出路；排遣');
INSERT INTO `cet4` VALUES ('cet4_2358', '　　outline', '/ ‘aut-lain/', 'n.轮廓；略图；大纲');
INSERT INTO `cet4` VALUES ('cet4_2359', '　　outlook', '/ ‘aut-luk/', 'n.观点，看法；展望');
INSERT INTO `cet4` VALUES ('cet4_2360', '　　output', '/ ‘autput/', 'n.产量；输出量；输出');
INSERT INTO `cet4` VALUES ('cet4_2361', '　　outset', '/ ‘aut-set/', 'n.开始，开端');
INSERT INTO `cet4` VALUES ('cet4_2362', '　　outside', '/ ‘aut’said/', 'n.外部；外表a.外部的');
INSERT INTO `cet4` VALUES ('cet4_2363', '　　outstanding', '/ aut’stændiŋ/', 'a.突出的，杰出的');
INSERT INTO `cet4` VALUES ('cet4_2364', '　　outward', '/ ‘autwəd/', 'a.外面的；向外的');
INSERT INTO `cet4` VALUES ('cet4_2365', '　　oven', '/ ‘Λvn/', 'n.炉，灶；烘箱');
INSERT INTO `cet4` VALUES ('cet4_2366', '　　over', '/ ‘əuvə/', 'prep.在…上方；超过');
INSERT INTO `cet4` VALUES ('cet4_2367', '　　overall', '/ ‘əuvərɔ:l/', 'n.工装裤 a.全面的');
INSERT INTO `cet4` VALUES ('cet4_2368', '　　overcoat', '/ ‘əuvəkəut/', 'n.外衣，大衣');
INSERT INTO `cet4` VALUES ('cet4_2369', '　　overcome', '/ əuvə’kΛm/', 'vt.战胜，克服');
INSERT INTO `cet4` VALUES ('cet4_2370', '　　overhead', '/ ‘əuvə’hed, ‘əuvəhed/', 'a.在头顶上的；架空的');
INSERT INTO `cet4` VALUES ('cet4_2371', '　　overlook', '/ əuvə’luk/', 'vt.眺望；看漏；放任');
INSERT INTO `cet4` VALUES ('cet4_2372', '　　overnight', '/ ‘əuvənait/', 'ad.一夜；突然');
INSERT INTO `cet4` VALUES ('cet4_2373', '　　overseas', '/ ‘əuve’si:z/', 'ad.海外 a.在海外的');
INSERT INTO `cet4` VALUES ('cet4_2374', '　　overtake', '/ əuvə’teik/', 'vt.追上，赶上；压倒');
INSERT INTO `cet4` VALUES ('cet4_2375', '　　owe', '/ əu/', 'vt.欠；应把…归功于');
INSERT INTO `cet4` VALUES ('cet4_2376', '　　owl', '/ aul/', 'n.猫头鹰，枭');
INSERT INTO `cet4` VALUES ('cet4_2377', '　　own', '/ əun/', 'a.自己的 vt.有，拥有');
INSERT INTO `cet4` VALUES ('cet4_2378', '　　owner', '/ ‘əunə/', 'n.物主，所有人');
INSERT INTO `cet4` VALUES ('cet4_2379', '　　ownership', '/ ‘əunəʃip/', 'n.所有(权)，所有制');
INSERT INTO `cet4` VALUES ('cet4_2380', '　　ox', '/ ɔks/', 'n.牛；公牛，阉牛');
INSERT INTO `cet4` VALUES ('cet4_2381', '　　oxygen', '/ ‘ɔksidʒən/', 'n. 氧气');
INSERT INTO `cet4` VALUES ('cet4_2384', 'pace', '/ peis/', 'n.步，步速 vi.踱步');
INSERT INTO `cet4` VALUES ('cet4_2385', '　　pacific', '/ pə’sifik/', 'a.和平的 n.太平洋');
INSERT INTO `cet4` VALUES ('cet4_2386', '　　pack', '/ pæk/', 'vt.捆扎；挤满 n.包');
INSERT INTO `cet4` VALUES ('cet4_2387', '　　package', '/ ‘pækidʒ/', 'n.包裹，包，捆');
INSERT INTO `cet4` VALUES ('cet4_2388', '　　packet', '/ ‘pækit/', 'n.小包(裹)，小捆');
INSERT INTO `cet4` VALUES ('cet4_2389', '　　pad', '/ pæd/', 'n.垫；本子 vt.填塞');
INSERT INTO `cet4` VALUES ('cet4_2390', '　　page', '/ peidʒ/', 'n.页');
INSERT INTO `cet4` VALUES ('cet4_2391', '　　pain', '/ pein/', 'n.痛，疼痛；辛苦');
INSERT INTO `cet4` VALUES ('cet4_2392', '　　painful', '/ ‘peinful/', 'a.使痛的；费力的');
INSERT INTO `cet4` VALUES ('cet4_2393', '　　paint', '/ peint/', 'vt.画；油漆 vi.绘画');
INSERT INTO `cet4` VALUES ('cet4_2394', '　　painter', '/ ‘peintə/', 'n.漆工，画家，绘画者');
INSERT INTO `cet4` VALUES ('cet4_2395', '　　painting', '/ ‘peintiŋ/', 'n.油画；绘画；着色');
INSERT INTO `cet4` VALUES ('cet4_2396', '　　pair', '/ peə/', 'n.一对 vi.成对，配对');
INSERT INTO `cet4` VALUES ('cet4_2397', '　　palace', '/ ‘pælis/', 'n.宫，宫殿');
INSERT INTO `cet4` VALUES ('cet4_2398', '　　pale', '/ peil/', 'a.苍白的；浅的');
INSERT INTO `cet4` VALUES ('cet4_2399', '　　palm', '/ pa:m/', 'n.手掌，手心；掌状物');
INSERT INTO `cet4` VALUES ('cet4_2400', '　　pan', '/ pæn/', 'n.平底锅，盘子');
INSERT INTO `cet4` VALUES ('cet4_2401', '　　panel', '/ ‘pænl/', 'n.专门小组；面，板');
INSERT INTO `cet4` VALUES ('cet4_2402', '　　paper', '/ ‘peipə/', 'n.纸；官方文件；文章');
INSERT INTO `cet4` VALUES ('cet4_2403', '　　parade', '/ pə’reid/', 'n.游行；检阅 vi.游行');
INSERT INTO `cet4` VALUES ('cet4_2404', '　　paragraph', '/ ‘pærəgra:f/', 'n.(文章的)段，节');
INSERT INTO `cet4` VALUES ('cet4_2405', '　　parallel', '/ ‘pærəlel/', 'a.平行的；相同的');
INSERT INTO `cet4` VALUES ('cet4_2406', '　　parcel', '/ ‘pa:sl/', 'n.包裹，小包，邮包');
INSERT INTO `cet4` VALUES ('cet4_2407', '　　pardon', '/ ‘pa:dn/', 'n.原谅；赦免 vt.原谅');
INSERT INTO `cet4` VALUES ('cet4_2408', '　　parent', '/ ‘peərənt/', 'n.父亲，母亲，双亲');
INSERT INTO `cet4` VALUES ('cet4_2409', '　　park', '/ pa:k/', 'n.公园；停车场');
INSERT INTO `cet4` VALUES ('cet4_2410', '　　parliament', '/ ‘pa:ləmənt/', 'n.议会，国会');
INSERT INTO `cet4` VALUES ('cet4_2411', '　　part', '/ pa:t/', 'n.一部分；零件；本份');
INSERT INTO `cet4` VALUES ('cet4_2412', '　　partial', '/ ‘pa:ʃəl/', 'a.部分的；不公平的');
INSERT INTO `cet4` VALUES ('cet4_2413', '　　participate', '/ pa:’tisipeit/', 'vi.参与，参加；分享');
INSERT INTO `cet4` VALUES ('cet4_2414', '　　particle', '/ ‘pa:tikl/', 'n.粒子，微粒');
INSERT INTO `cet4` VALUES ('cet4_2415', '　　particular', '/ pə’tikjulə/', 'a.特殊的；特定的');
INSERT INTO `cet4` VALUES ('cet4_2416', '　　particularly', '/ pə’tikjuləli/', 'ad.特别，尤其，格外');
INSERT INTO `cet4` VALUES ('cet4_2417', '　　partly', '/ ‘pa:tli/', 'ad.部分地，不完全地');
INSERT INTO `cet4` VALUES ('cet4_2418', '　　partner', '/ ‘pa:tnə/', 'n.伙伴；搭挡；配偶');
INSERT INTO `cet4` VALUES ('cet4_2419', '　　party', '/ ‘pa:ti/', 'n.党，党派；聚会');
INSERT INTO `cet4` VALUES ('cet4_2420', '　　pass', '/ pa:s/', 'vt.经过；通过；度过');
INSERT INTO `cet4` VALUES ('cet4_2421', '　　passage', '/ ‘pæsidʒ/', 'n.通过；通路，通道');
INSERT INTO `cet4` VALUES ('cet4_2422', '　　passenger', '/ ‘pæsindʒə/', 'n.乘客，旅客，过路人');
INSERT INTO `cet4` VALUES ('cet4_2423', '　　passion', '/ ‘pæʃən/', 'n.激情，热情；爱好');
INSERT INTO `cet4` VALUES ('cet4_2424', '　　passive', '/ ‘pæsiv/', 'a.被动的；消极的');
INSERT INTO `cet4` VALUES ('cet4_2425', '　　passport', '/ ‘pa:spɔ:t/', 'n.护照');
INSERT INTO `cet4` VALUES ('cet4_2426', '　　past', '/ past/', 'a.过去的 n.过去');
INSERT INTO `cet4` VALUES ('cet4_2427', '　　paste', '/ peist/', 'n.糊，酱；浆湖');
INSERT INTO `cet4` VALUES ('cet4_2428', '　　pat', '/ pæt/', 'n.&vt.&n.轻拍');
INSERT INTO `cet4` VALUES ('cet4_2429', '　　patch', '/ pætʃ/', 'n.补钉；碎片 vt.补缀');
INSERT INTO `cet4` VALUES ('cet4_2430', '　　path', '/ pa:θ/', 'n.路，小道；道路');
INSERT INTO `cet4` VALUES ('cet4_2431', '　　patience', '/ ‘peiʃəns/', 'n.忍耐，容忍，耐心');
INSERT INTO `cet4` VALUES ('cet4_2432', '　　patient', '/ ‘peiʃənt/', 'a.忍耐的 n.病人');
INSERT INTO `cet4` VALUES ('cet4_2433', '　　pattern', '/ ‘pætən/', 'n.型，式样，模，模型');
INSERT INTO `cet4` VALUES ('cet4_2434', '　　pause', '/ pɔ:z/', 'n.&vi.中止，暂停');
INSERT INTO `cet4` VALUES ('cet4_2435', '　　paw', '/ pɔ:/', 'n.脚爪，爪子');
INSERT INTO `cet4` VALUES ('cet4_2436', '　　pay', '/ pei/', 'vt.支付；付给；给予');
INSERT INTO `cet4` VALUES ('cet4_2437', '　　payment', '/ ‘peimənt/', 'n.支付，支付的款项');
INSERT INTO `cet4` VALUES ('cet4_2438', '　　pea', '/ pi:/', 'n.豌豆；豌豆属植物');
INSERT INTO `cet4` VALUES ('cet4_2439', '　　peace', '/ pi:s/', 'n.和平；和睦；平静');
INSERT INTO `cet4` VALUES ('cet4_2440', '　　peaceful', '/ ‘pi:sful/', 'a.和平的；安静的');
INSERT INTO `cet4` VALUES ('cet4_2441', '　　peach', '/ pi:tʃ/', 'n.桃子，桃树');
INSERT INTO `cet4` VALUES ('cet4_2442', '　　peak', '/ pi:k/', 'n.山顶，巅 a.最高的');
INSERT INTO `cet4` VALUES ('cet4_2443', '　　pear', '/ peə/', 'n.梨子，梨树');
INSERT INTO `cet4` VALUES ('cet4_2444', '　　peasant', '/ ‘pezənt/', 'n.农民');
INSERT INTO `cet4` VALUES ('cet4_2445', '　　peculiar', '/ pi’kju:ljə/', 'a.特有的；特别的');
INSERT INTO `cet4` VALUES ('cet4_2446', '　　pen', '/ pen/', 'n.钢笔，自来水笔');
INSERT INTO `cet4` VALUES ('cet4_2447', '　　pencil', '/ ‘pensl/', 'n.铅笔');
INSERT INTO `cet4` VALUES ('cet4_2448', '　　penetrate', '/ ‘penitreit/', 'vt.穿过 vi.穿入');
INSERT INTO `cet4` VALUES ('cet4_2449', '　　penny', '/ ‘peni/', 'n.(英)便士；(美)分');
INSERT INTO `cet4` VALUES ('cet4_2450', '　　people', '/ ‘pi:pl/', 'n.人民，民族；人');
INSERT INTO `cet4` VALUES ('cet4_2451', '　　per', '/ pə:/', 'prep.每');
INSERT INTO `cet4` VALUES ('cet4_2452', '　　perceive', '/ pə’si:v/', 'vt.察觉，发觉；理解');
INSERT INTO `cet4` VALUES ('cet4_2453', '　　percent', '/ pə’sent/', 'n.百分之…');
INSERT INTO `cet4` VALUES ('cet4_2454', '　　percentage', '/ pə’sentidʒ/', 'n.百分比，百分率');
INSERT INTO `cet4` VALUES ('cet4_2455', '　　perfect', '/ ‘pə:fikt, ‘pə:fekt/', 'a.完美的；完全的');
INSERT INTO `cet4` VALUES ('cet4_2456', '　　perform', '/ pə’fɔ:m/', 'vt.履行，执行；演出');
INSERT INTO `cet4` VALUES ('cet4_2457', '　　performance', '/ pə’fɔ:məns/', 'n.履行；演出；行为');
INSERT INTO `cet4` VALUES ('cet4_2458', '　　perhaps', '/ pə’hæps/', 'ad.也许，可能，多半');
INSERT INTO `cet4` VALUES ('cet4_2459', '　　period', '/ ‘piəriəd/', 'n.时期；学时；句号');
INSERT INTO `cet4` VALUES ('cet4_2460', '　　permanent', '/ ‘pə:mənənt/', 'a.永久的，持久的');
INSERT INTO `cet4` VALUES ('cet4_2461', '　　permission', '/ pə(:)’miʃən/', 'n.允许，许可，同意');
INSERT INTO `cet4` VALUES ('cet4_2462', '　　permit', '/ pə:’mit, ‘pə:mit/', 'vt.允许 n.执照');
INSERT INTO `cet4` VALUES ('cet4_2463', '　　persist', '/ pə:’sist/', 'vi.坚持，固执；持续');
INSERT INTO `cet4` VALUES ('cet4_2464', '　　person', '/ ‘pə:sn/', 'n.人；人身；本人');
INSERT INTO `cet4` VALUES ('cet4_2465', '　　personal', '/ ‘pə:sənl/', 'a.个人的；本人的');
INSERT INTO `cet4` VALUES ('cet4_2466', '　　personnel', '/ pə:sə’nel/', 'n.全体人员，全体职员');
INSERT INTO `cet4` VALUES ('cet4_2467', '　　perspective', '/ pə:’spektiv/', 'n.透视；远景；观点');
INSERT INTO `cet4` VALUES ('cet4_2468', '　　persuade', '/ pə:’sweid/', 'vt.说服 vi.被说服');
INSERT INTO `cet4` VALUES ('cet4_2469', '　　pessimistic', '/ pesi’mistik/', 'a.悲观的；厌世的');
INSERT INTO `cet4` VALUES ('cet4_2470', '　　pet', '/ pet/', 'n.爱畜；宠儿a.宠爱的');
INSERT INTO `cet4` VALUES ('cet4_2471', '　　petrol', '/ ‘petrəl/', 'n.(英)汽油');
INSERT INTO `cet4` VALUES ('cet4_2472', '　　petroleum', '/ pi’trəuljəm/', 'n.石油');
INSERT INTO `cet4` VALUES ('cet4_2473', '　　phase', '/ feiz/', 'n.阶段；方面；相位');
INSERT INTO `cet4` VALUES ('cet4_2474', '　　phenomenon', '/ fi’nɔminən/', 'n.现象');
INSERT INTO `cet4` VALUES ('cet4_2475', '　　philosopher', '/ fi’lɔsəfə/', 'n.哲学家');
INSERT INTO `cet4` VALUES ('cet4_2476', '　　philosophy', '/ fi’lɔsəfi/', 'n.哲学；哲理；人生观');
INSERT INTO `cet4` VALUES ('cet4_2477', '　　phone', '/ fəun/', 'n.电话，电话机；耳机');
INSERT INTO `cet4` VALUES ('cet4_2478', '　　photo', '/ ‘fəutəu/', 'n.照片，相片');
INSERT INTO `cet4` VALUES ('cet4_2479', '　　photograph', '/ ‘fəutəgra:f/', 'n.照片，相片');
INSERT INTO `cet4` VALUES ('cet4_2480', '　　phrase', '/ freiz/', 'n.短语；习惯用语');
INSERT INTO `cet4` VALUES ('cet4_2481', '　　physical', '/ ‘fizikəl/', 'a.物质的；物理的');
INSERT INTO `cet4` VALUES ('cet4_2482', '　　physician', '/ fi’ziʃən/', 'n.医生，内科医生');
INSERT INTO `cet4` VALUES ('cet4_2483', '　　physicist', '/ ‘fizisist/', 'n.物理学家');
INSERT INTO `cet4` VALUES ('cet4_2484', '　　physics', '/ ‘fiziks/', 'n.物理学');
INSERT INTO `cet4` VALUES ('cet4_2485', '　　piano', '/ pi’ænəu/', 'n.钢琴');
INSERT INTO `cet4` VALUES ('cet4_2486', '　　pick', '/ pik/', 'n.镐，鹤嘴锄');
INSERT INTO `cet4` VALUES ('cet4_2487', '　　pick', '/ pik/', 'vt.拾，摘 vi.采摘');
INSERT INTO `cet4` VALUES ('cet4_2488', '　　picnic', '/ ‘piknik/', 'n.郊游，野餐 vi.野餐');
INSERT INTO `cet4` VALUES ('cet4_2489', '　　picture', '/ ‘piktʃə/', 'n.画，图片 vt.画');
INSERT INTO `cet4` VALUES ('cet4_2490', '　　pie', '/ pai/', 'n.(西点)馅饼');
INSERT INTO `cet4` VALUES ('cet4_2491', '　　piece', '/ pi:s/', 'n.碎片，块 vt.拼合');
INSERT INTO `cet4` VALUES ('cet4_2492', '　　pierce', '/ piəs/', 'vt.剌穿 vi.穿入');
INSERT INTO `cet4` VALUES ('cet4_2493', '　　pig', '/ pig/', 'n.猪，小猪，野猪');
INSERT INTO `cet4` VALUES ('cet4_2494', '　　pigeon', '/ pidʒin/', 'n.鸽子');
INSERT INTO `cet4` VALUES ('cet4_2495', '　　pile', '/ pail/', 'n.堆 vt.堆叠，累积');
INSERT INTO `cet4` VALUES ('cet4_2496', '　　pill', '/ pil/', 'n.药丸，丸剂');
INSERT INTO `cet4` VALUES ('cet4_2497', '　　pillar', '/ ‘pilə/', 'n.柱，柱子；栋梁');
INSERT INTO `cet4` VALUES ('cet4_2498', '　　pillow', '/ ‘piləu/', 'n.枕头');
INSERT INTO `cet4` VALUES ('cet4_2499', '　　pilot', '/ ‘pailət/', 'n.领航员；飞行员');
INSERT INTO `cet4` VALUES ('cet4_2500', '　　pin', '/ pin/', 'n.针，饰针 n.别住');
INSERT INTO `cet4` VALUES ('cet4_2501', '　　pinch', '/ pintʃ/', 'vt.捏，拧，掐掉');
INSERT INTO `cet4` VALUES ('cet4_2502', '　　pine', '/ pain/', 'n.松树，松木');
INSERT INTO `cet4` VALUES ('cet4_2503', '　　pink', '/ piŋk/', 'n.粉红色 a.粉红色的');
INSERT INTO `cet4` VALUES ('cet4_2504', '　　pint', '/ paint/', 'n.品脱');
INSERT INTO `cet4` VALUES ('cet4_2505', '　　pioneer', '/ paiə’niə/', 'n.拓荒者；先驱者');
INSERT INTO `cet4` VALUES ('cet4_2506', '　　pipe', '/ paip/', 'n.管子，导管；烟斗');
INSERT INTO `cet4` VALUES ('cet4_2507', '　　pit', '/ pit/', 'n.坑，地坑；煤矿');
INSERT INTO `cet4` VALUES ('cet4_2508', '　　pitch', '/ pitʃ/', 'n.沥青');
INSERT INTO `cet4` VALUES ('cet4_2509', '　　pitch', '/ pitʃ/', 'vt.投，掷 vi.投掷');
INSERT INTO `cet4` VALUES ('cet4_2510', '　　pity', '/ ‘piti/', 'n.怜悯；遗憾 vt.同情');
INSERT INTO `cet4` VALUES ('cet4_2511', '　　place', '/ pleis/', 'n.地方，地点；住所');
INSERT INTO `cet4` VALUES ('cet4_2512', '　　plain', '/ plein/', 'n.平原 a.清楚的');
INSERT INTO `cet4` VALUES ('cet4_2513', '　　plan', '/ plæn/', 'n.&vt.计划，打算');
INSERT INTO `cet4` VALUES ('cet4_2514', '　　plane', '/ plein/', 'n.平面；飞机');
INSERT INTO `cet4` VALUES ('cet4_2515', '　　planet', '/ ‘plænit/', 'n.行星');
INSERT INTO `cet4` VALUES ('cet4_2516', '　　plant', '/ pla:nt/', 'n.植物；工厂 vt.栽种');
INSERT INTO `cet4` VALUES ('cet4_2517', '　　plantation', '/ plæn’teiʃən/', 'n.种植园；栽植');
INSERT INTO `cet4` VALUES ('cet4_2518', '　　plastic', '/ ‘plæstik/', 'a.可塑的 n.塑料');
INSERT INTO `cet4` VALUES ('cet4_2519', '　　plate', '/ pleit/', 'n.板，片，盘 vt.电镀');
INSERT INTO `cet4` VALUES ('cet4_2520', '　　platform', '/ ‘plætfɔ:m/', 'n.平台；站台；讲台');
INSERT INTO `cet4` VALUES ('cet4_2521', '　　play', '/ plei/', 'vi.玩，游戏；演奏');
INSERT INTO `cet4` VALUES ('cet4_2522', '　　player', '/ ‘pleiə/', 'n.游戏的人；比赛者');
INSERT INTO `cet4` VALUES ('cet4_2523', '　　playground', '/ ‘pleigraund/', 'n.操场，运动场');
INSERT INTO `cet4` VALUES ('cet4_2524', '　　pleasant', '/ ‘pleznt/', 'a.令人愉快的，舒适的');
INSERT INTO `cet4` VALUES ('cet4_2525', '　　please', '/ pli:z/', 'vt.使高兴，请vi.满意');
INSERT INTO `cet4` VALUES ('cet4_2526', '　　pleasure', '/ ‘pleʒə/', 'n.愉快，快乐；乐事');
INSERT INTO `cet4` VALUES ('cet4_2527', '　　plentiful', '/ ‘plentiful/', 'a.丰富的，富裕的');
INSERT INTO `cet4` VALUES ('cet4_2528', '　　plenty', '/ ‘plenti/', 'n.丰富，充足，大量');
INSERT INTO `cet4` VALUES ('cet4_2529', '　　plot', '/ plɔt/', 'n.小块土地 vt.密谋');
INSERT INTO `cet4` VALUES ('cet4_2530', '　　plough', '/ plau/', 'n.犁 vt.&vi.犁，耕');
INSERT INTO `cet4` VALUES ('cet4_2531', '　　plug', '/ plΛg/', 'n.塞子；插头 vt.塞');
INSERT INTO `cet4` VALUES ('cet4_2532', '　　plunge', '/ plΛndʒ/', 'vt.使投入；使陷入');
INSERT INTO `cet4` VALUES ('cet4_2533', '　　plural', '/ ‘pluərəl/', 'a.复数的 n.复数');
INSERT INTO `cet4` VALUES ('cet4_2534', '　　plus', '/ plΛs/', 'prep.加，加上 a.正的');
INSERT INTO `cet4` VALUES ('cet4_2535', '　　pocket', '/ ‘pɔkit/', 'n.衣袋 n.袖珍的');
INSERT INTO `cet4` VALUES ('cet4_2536', '　　poem', '/ ‘pəuim/', 'n.诗，韵文，诗体文');
INSERT INTO `cet4` VALUES ('cet4_2537', '　　poet', '/ pəuit/', 'n.诗人');
INSERT INTO `cet4` VALUES ('cet4_2538', '　　poetry', '/ ‘pəuitri/', 'n.诗，诗歌，诗作');
INSERT INTO `cet4` VALUES ('cet4_2539', '　　pɔint', '/ pɔint/', 'n.点；要点；细目；分');
INSERT INTO `cet4` VALUES ('cet4_2540', '　　pɔison', '/ ‘pɔizn/', 'n.毒，毒药 vt.毒害');
INSERT INTO `cet4` VALUES ('cet4_2541', '　　pɔisonous', '/ ‘pɔiznəs/', 'a.有毒的，有害的');
INSERT INTO `cet4` VALUES ('cet4_2542', '　　pole', '/ pəul/', 'n.杆，柱');
INSERT INTO `cet4` VALUES ('cet4_2543', '　　pole', '/ pəul/', 'n.极(点)，磁极，电极');
INSERT INTO `cet4` VALUES ('cet4_2544', '　　police', '/ pə’li:s/', 'n.警察；警察当局');
INSERT INTO `cet4` VALUES ('cet4_2545', '　　policeman', '/ pə’li:smən/', 'n.警察');
INSERT INTO `cet4` VALUES ('cet4_2546', '　　policy', '/ ‘pɔlisi/', 'n.政策，方针');
INSERT INTO `cet4` VALUES ('cet4_2547', '　　polish', '/ ‘pɔliʃ/', 'vt.磨光；使优美');
INSERT INTO `cet4` VALUES ('cet4_2548', '　　polite', '/ pə’lait/', 'a.有礼貌的；有教养的');
INSERT INTO `cet4` VALUES ('cet4_2549', '　　political', '/ pə’litikəl/', 'a.政治的，政治上的');
INSERT INTO `cet4` VALUES ('cet4_2550', '　　politician', '/ pɔli’tiʃən/', 'n.政治家；政客');
INSERT INTO `cet4` VALUES ('cet4_2551', '　　politics', '/ ‘pɔlitiks/', 'n.政治，政治学；政纲');
INSERT INTO `cet4` VALUES ('cet4_2552', '　　pollute', '/ pə’lju:t/', 'vt.弄脏，污染，沾污');
INSERT INTO `cet4` VALUES ('cet4_2553', '　　pollution', '/ pə’lu:ʃən/', 'n.污染');
INSERT INTO `cet4` VALUES ('cet4_2554', '　　pond', '/ pɔnd/', 'n.池塘');
INSERT INTO `cet4` VALUES ('cet4_2555', '　　pool', '/ pu:l/', 'n.水塘，游泳池，水池');
INSERT INTO `cet4` VALUES ('cet4_2556', '　　pool', '/ pu:l/', 'n.共用物 vt.共有');
INSERT INTO `cet4` VALUES ('cet4_2557', '　　poor', '/ puə/', 'a.贫穷的；贫乏的');
INSERT INTO `cet4` VALUES ('cet4_2558', '　　pop', '/ pɔp/', 'n.流行音乐，流行歌曲');
INSERT INTO `cet4` VALUES ('cet4_2559', '　　pop', '/ pɔp/', 'n.砰的一声，爆破声');
INSERT INTO `cet4` VALUES ('cet4_2560', '　　popular', '/ ‘pɔpjulə/', 'a.民众的；流行的');
INSERT INTO `cet4` VALUES ('cet4_2561', '　　population', '/ pɔpju’leiʃən/', 'n.人口；全体居民');
INSERT INTO `cet4` VALUES ('cet4_2562', '　　pork', '/ pɔ:k/', 'n.猪肉');
INSERT INTO `cet4` VALUES ('cet4_2563', '　　port', '/ pɔ:t/', 'n.港，港口');
INSERT INTO `cet4` VALUES ('cet4_2564', '　　portable', '/ ‘pɔ:təbl/', 'a.轻便的；手提的');
INSERT INTO `cet4` VALUES ('cet4_2565', '　　porter', '/ ‘pɔ:tə/', 'n.搬运工人');
INSERT INTO `cet4` VALUES ('cet4_2566', '　　portion', '/ ‘pɔ:ʃən/', 'n.一部分；一分');
INSERT INTO `cet4` VALUES ('cet4_2567', '　　portrait', '/ ‘pɔ:trit/', 'n.消像，画像');
INSERT INTO `cet4` VALUES ('cet4_2568', '　　position', '/ pə’ziʃən/', 'n.位置；职位；姿势');
INSERT INTO `cet4` VALUES ('cet4_2569', '　　positive', '/ ‘pɔzətiv/', 'a.确定的；积极的');
INSERT INTO `cet4` VALUES ('cet4_2570', '　　possess', '/ ‘pə’zes/', 'vt.占用，拥有(财产)');
INSERT INTO `cet4` VALUES ('cet4_2571', '　　possession', '/ pə’zeʃən/', 'n.有，所有；占有物');
INSERT INTO `cet4` VALUES ('cet4_2572', '　　possibility', '/ pɔsə’biliti/', 'n.可能；可能的事');
INSERT INTO `cet4` VALUES ('cet4_2573', '　　possible', '/ ‘pɔsəbl/', 'a.可能的；可能存在的');
INSERT INTO `cet4` VALUES ('cet4_2574', '　　possibly', '/ ‘pɔsəbli/', 'ad.可能地；也许');
INSERT INTO `cet4` VALUES ('cet4_2575', '　　post', '/ pəust/', 'n.柱，桩，杆 vt.贴出');
INSERT INTO `cet4` VALUES ('cet4_2576', '　　post', '/ pəust/', 'n. 邮政，邮寄；邮件');
INSERT INTO `cet4` VALUES ('cet4_2577', '　　post', '/ pəust/', 'n.岗位，哨所；职位');
INSERT INTO `cet4` VALUES ('cet4_2578', '　　postage', '/ ‘pəustidʒ/', 'n.邮费，邮资');
INSERT INTO `cet4` VALUES ('cet4_2579', '　　postman', '/ ‘pəustmən/', 'n.邮递员');
INSERT INTO `cet4` VALUES ('cet4_2580', '　　postpone', '/ pəust’pəun/', 'vt.延迟，推迟，延缓');
INSERT INTO `cet4` VALUES ('cet4_2581', '　　pot', '/ pɔt/', 'n.锅，壶，罐，盆');
INSERT INTO `cet4` VALUES ('cet4_2582', '　　potato', '/ pəu’teitəu/', 'n.马铃薯，土豆');
INSERT INTO `cet4` VALUES ('cet4_2583', '　　potential', '/ pə’tenʃəl/', 'a.潜在的 n.潜力');
INSERT INTO `cet4` VALUES ('cet4_2584', '　　pound', '/ paund/', 'n.磅；英磅');
INSERT INTO `cet4` VALUES ('cet4_2585', '　　pound', '/ paund/', 'vt.捣碎；舂烂；猛击');
INSERT INTO `cet4` VALUES ('cet4_2586', '　　pour', '/ pɔ:/', 'vt.灌，倒 vi.倾泻');
INSERT INTO `cet4` VALUES ('cet4_2587', '　　poverty', '/ ‘pɔvəti/', 'n.贫穷，贫困');
INSERT INTO `cet4` VALUES ('cet4_2588', '　　powder', '/ ‘paudə/', 'n.粉末；药粉；火药');
INSERT INTO `cet4` VALUES ('cet4_2589', '　　power', '/ ‘pauə/', 'n.能力；力；权；幂');
INSERT INTO `cet4` VALUES ('cet4_2590', '　　powerful', '/ ‘pauəful/', 'a.强有力的；有权威的');
INSERT INTO `cet4` VALUES ('cet4_2591', '　　practical', '/ ‘præktikəl/', 'a.实践的；实用的');
INSERT INTO `cet4` VALUES ('cet4_2592', '　　practically', '/ ‘præktikəli/', 'ad.实际上；几乎');
INSERT INTO `cet4` VALUES ('cet4_2593', '　　practice', '/ ‘præktis/', 'n.实践；练习；业务');
INSERT INTO `cet4` VALUES ('cet4_2594', '　　practise', '/ ‘præktis/', 'vt.练习，实习，训练');
INSERT INTO `cet4` VALUES ('cet4_2595', '　　praise', '/ preiz/', 'n.赞扬，赞美 vi.赞扬');
INSERT INTO `cet4` VALUES ('cet4_2596', '　　pray', '/ prei/', 'vt.&vi.请求；祈祷');
INSERT INTO `cet4` VALUES ('cet4_2597', '　　precaution', '/ pri’kɔ:ʃən/', 'n.预防；警惕');
INSERT INTO `cet4` VALUES ('cet4_2598', '　　preceding', '/ pri(:)’si:diŋ/', 'a.在前的；在先的');
INSERT INTO `cet4` VALUES ('cet4_2599', '　　precious', '/ ‘preʃəs/', 'a.珍贵的，宝贵的');
INSERT INTO `cet4` VALUES ('cet4_2600', '　　precise', '/ pri’sais/', 'a.精确的，准确的');
INSERT INTO `cet4` VALUES ('cet4_2601', '　　precision', '/ pri’siʒən/', 'n.精确，精密，精密度');
INSERT INTO `cet4` VALUES ('cet4_2602', '　　predict', '/ pri’dikt/', 'v.预言，预告，预测');
INSERT INTO `cet4` VALUES ('cet4_2603', '　　preface', '/ ‘prefis/', 'n.序言，前言，引语');
INSERT INTO `cet4` VALUES ('cet4_2604', '　　prefer', '/ pri’fə:/', 'vt.宁可，宁愿');
INSERT INTO `cet4` VALUES ('cet4_2605', '　　preferable', '/ ‘prefərəbl/', 'a.更可取的，更好的');
INSERT INTO `cet4` VALUES ('cet4_2606', '　　preference', '/ ‘prefərəns/', 'n.偏爱，优先；优先权');
INSERT INTO `cet4` VALUES ('cet4_2607', '　　prejudice', '/ ‘predʒudis/', 'n.偏见，成见');
INSERT INTO `cet4` VALUES ('cet4_2608', '　　preliminary', '/ pri’liminəri/', 'a.预备的，初步的');
INSERT INTO `cet4` VALUES ('cet4_2609', '　　preparation', '/ prepə’reiʃən/', 'n.准备，预备；制备');
INSERT INTO `cet4` VALUES ('cet4_2610', '　　prepare', '/ pri’peə/', 'vt.&vi.准备，预备');
INSERT INTO `cet4` VALUES ('cet4_2611', '　　preposition', '/ prepə’ziʃən/', 'n.前置词，介词');
INSERT INTO `cet4` VALUES ('cet4_2612', '　　prescribe', '/ pris’kraib/', 'vt.命令；处(方)');
INSERT INTO `cet4` VALUES ('cet4_2613', '　　presence', '/ ‘prezns/', 'n.出席，到场；在');
INSERT INTO `cet4` VALUES ('cet4_2614', '　　present', '/ ‘preznt/', 'a.现在的 n.目前');
INSERT INTO `cet4` VALUES ('cet4_2615', '　　present', '/ ‘preznt/', 'vt.赠送; 介绍; 提出');
INSERT INTO `cet4` VALUES ('cet4_2616', '　　present', '/ ‘preznt/', 'n.礼物，赠送物');
INSERT INTO `cet4` VALUES ('cet4_2617', '　　presently', '/ ‘prezəntli/', 'ad.一会儿；目前');
INSERT INTO `cet4` VALUES ('cet4_2618', '　　preserve', '/ pri’zə:v/', 'vt.保护；保存；腌渍');
INSERT INTO `cet4` VALUES ('cet4_2619', '　　president', '/ ‘prezidənt/', 'n.总统；校长；会长');
INSERT INTO `cet4` VALUES ('cet4_2620', '　　press', '/ pres/', 'vt.压，按，揿；催促');
INSERT INTO `cet4` VALUES ('cet4_2621', '　　pressure', '/ ‘preʃə/', 'n.压力；压力；压，按');
INSERT INTO `cet4` VALUES ('cet4_2622', '　　pretend', '/ pri’tend/', 'vt.假托，借口vi.假装');
INSERT INTO `cet4` VALUES ('cet4_2623', '　　pretty', '/ ‘priti/', 'a.漂亮的，标致的');
INSERT INTO `cet4` VALUES ('cet4_2624', '　　prevail', '/ pri’veil/', 'vi.胜，优胜；流行');
INSERT INTO `cet4` VALUES ('cet4_2625', '　　prevent', '/ pri’vent/', 'vt.预防，防止；阻止');
INSERT INTO `cet4` VALUES ('cet4_2626', '　　previous', '/ ‘pri:vjəs/', 'a.先的；前的 ad.在前');
INSERT INTO `cet4` VALUES ('cet4_2627', '　　price', '/ prais/', 'n.价格，价钱；代价');
INSERT INTO `cet4` VALUES ('cet4_2628', '　　pride', '/ praid/', 'n.骄傲；自豪 vt.自夸');
INSERT INTO `cet4` VALUES ('cet4_2629', '　　primarily', '/ ‘praimərili/', 'ad.首先；主要地');
INSERT INTO `cet4` VALUES ('cet4_2630', '　　primary', '/ ‘praiməri/', 'a.最初的；基本的');
INSERT INTO `cet4` VALUES ('cet4_2631', '　　prime', '/ praim/', 'a.首要的 n.春，青春');
INSERT INTO `cet4` VALUES ('cet4_2632', '　　primitive', '/ ‘primitiv/', 'a.原始的；粗糙的');
INSERT INTO `cet4` VALUES ('cet4_2633', '　　prince', '/ ‘prins/', 'n.王子，亲王');
INSERT INTO `cet4` VALUES ('cet4_2634', '　　princess', '/ prin’ses/', 'n.公主，王妃');
INSERT INTO `cet4` VALUES ('cet4_2635', '　　principal', '/ ‘prinsəpəl/', 'a.主要的 n.负责人');
INSERT INTO `cet4` VALUES ('cet4_2636', '　　principle', '/ ‘prinsəpl/', 'n.原则，原理；主义');
INSERT INTO `cet4` VALUES ('cet4_2637', '　　print', '/ print/', 'vt.印刷 n.印刷；正片');
INSERT INTO `cet4` VALUES ('cet4_2638', '　　prior', '/ ‘praiə/', 'a.在先的；优先的');
INSERT INTO `cet4` VALUES ('cet4_2639', '　　prison', '/ ‘prizn/', 'n.监狱，监禁');
INSERT INTO `cet4` VALUES ('cet4_2640', '　　prisoner', '/ ‘priznə/', 'n.囚犯');
INSERT INTO `cet4` VALUES ('cet4_2641', '　　private', '/ ‘praivit/', 'a.私人的；私下的');
INSERT INTO `cet4` VALUES ('cet4_2642', '　　privilege', '/ ‘privilidʒ/', 'n.特权，优惠');
INSERT INTO `cet4` VALUES ('cet4_2643', '　　prize', '/ praiz/', 'n.奖赏，奖金 vt.珍视');
INSERT INTO `cet4` VALUES ('cet4_2644', '　　probability', '/ prɔbə’biliti/', 'n.可能性；概率');
INSERT INTO `cet4` VALUES ('cet4_2645', '　　probable', '/ ‘prɔbəbl/', 'a.或有的；大概的');
INSERT INTO `cet4` VALUES ('cet4_2646', '　　probably', '/ ‘prɔbəbli/', 'ad.或许，大概');
INSERT INTO `cet4` VALUES ('cet4_2647', '　　problem', '/ ‘prɔbləm/', 'n.问题；习题，问题');
INSERT INTO `cet4` VALUES ('cet4_2648', '　　procedure', '/ prə’si:dʒə/', 'n.程序；手续；过程');
INSERT INTO `cet4` VALUES ('cet4_2649', '　　proceed', '/ prə’si:d/', 'vi.进行；继续进行');
INSERT INTO `cet4` VALUES ('cet4_2650', '　　process', '/ ‘prəuses/', 'n.过程；工序 vt.加工');
INSERT INTO `cet4` VALUES ('cet4_2651', '　　procession', '/ prə’seʃən/', 'n.队伍，行列');
INSERT INTO `cet4` VALUES ('cet4_2652', '　　produce', '/ prə’dju:s, ‘prɔdju:s/', 'vt.生产；产生；展现');
INSERT INTO `cet4` VALUES ('cet4_2653', '　　product', '/ ‘prɔdəkt/', 'n.产品，产物；(乘)积');
INSERT INTO `cet4` VALUES ('cet4_2654', '　　production', '/ prə’dΛkʃən/', 'n.生产；产品；总产量');
INSERT INTO `cet4` VALUES ('cet4_2655', '　　profession', '/ prə’feʃən/', 'n.职业');
INSERT INTO `cet4` VALUES ('cet4_2656', '　　professional', '/ prə’feʃənl/', 'a.职业的 n.专业人员');
INSERT INTO `cet4` VALUES ('cet4_2657', '　　professor', '/ prə’fesə/', 'n.教授');
INSERT INTO `cet4` VALUES ('cet4_2658', '　　profit', '/ ‘prɔfit/', 'n.益处；利润 vi.得益');
INSERT INTO `cet4` VALUES ('cet4_2659', '　　program', '/ ‘prəugræm/', 'n.节目单；大纲；程序');
INSERT INTO `cet4` VALUES ('cet4_2660', '　　progress', '/ ‘prəugres, prə’gres/', 'n.前进，进展；进步');
INSERT INTO `cet4` VALUES ('cet4_2661', '　　progressive', '/ prə’gresiv/', 'a.进步的；向前进的');
INSERT INTO `cet4` VALUES ('cet4_2662', '　　prohibit', '/ prə’hibit/', 'vt.禁止，阻止');
INSERT INTO `cet4` VALUES ('cet4_2663', '　　project', '/ prə’dʒekt, ‘prɔdʒekt/', 'n.方案，工程 vi.伸出');
INSERT INTO `cet4` VALUES ('cet4_2664', '　　prominent', '/ ‘prɔminənt/', 'a.实起的；突出的');
INSERT INTO `cet4` VALUES ('cet4_2665', '　　promise', '/ ‘prɔmis/', 'n.诺言；指望 vt.允诺');
INSERT INTO `cet4` VALUES ('cet4_2666', '　　promote', '/ prə’məut/', 'vt.促进，发扬；提升');
INSERT INTO `cet4` VALUES ('cet4_2667', '　　prompt', '/ prɔmpt/', 'a.及时的 vt.敦促');
INSERT INTO `cet4` VALUES ('cet4_2668', '　　pronoun', '/ ‘prəunaun/', 'n.代名词');
INSERT INTO `cet4` VALUES ('cet4_2669', '　　pronounce', '/ prə’nauns/', 'vt.发…的音；宣布');
INSERT INTO `cet4` VALUES ('cet4_2670', '　　pronunciation', '/ prənΛnsi’eiʃən/', 'n.发音，发音法');
INSERT INTO `cet4` VALUES ('cet4_2671', '　　proof', '/ pru:f/', 'n.证据；证明；校样');
INSERT INTO `cet4` VALUES ('cet4_2672', '　　proper', '/ ‘prɔpə/', 'a.适合的；合乎体统的');
INSERT INTO `cet4` VALUES ('cet4_2673', '　　property', '/ ‘prɔpəti/', 'n.财产，资产；性质');
INSERT INTO `cet4` VALUES ('cet4_2674', '　　proportion', '/ prə’pɔ:ʃən/', 'n.比，比率，部分');
INSERT INTO `cet4` VALUES ('cet4_2675', '　　proportional', '/ prə’pɔ:ʃənl/', 'a.比例的；相称的');
INSERT INTO `cet4` VALUES ('cet4_2676', '　　proposal', '/ prə’pəuzəl/', 'n.提议，建议；求婚');
INSERT INTO `cet4` VALUES ('cet4_2677', '　　propose', '/ prə’pəuz/', 'vt.提议 vi.求婚');
INSERT INTO `cet4` VALUES ('cet4_2678', '　　prospect', '/ ‘prɔspekt, prəs’pekt/', 'n.展望；前景，前程');
INSERT INTO `cet4` VALUES ('cet4_2679', '　　prosperity', '/ prɔs’periti/', 'n.繁荣；昌盛，兴旺');
INSERT INTO `cet4` VALUES ('cet4_2680', '　　prosperous', '/ ‘prɔspərəs/', 'a.繁荣的，昌盛的');
INSERT INTO `cet4` VALUES ('cet4_2681', '　　protect', '/ prə’tekt/', 'vt.保护，保卫，警戒');
INSERT INTO `cet4` VALUES ('cet4_2682', '　　protection', '/ prə’tekʃən/', 'n.保护，警戒');
INSERT INTO `cet4` VALUES ('cet4_2683', '　　protective', '/ prə’tektiv/', 'a.保护的，防护的');
INSERT INTO `cet4` VALUES ('cet4_2684', '　　protein', '/ ‘prəuti:n/', 'n.蛋白质，朊');
INSERT INTO `cet4` VALUES ('cet4_2685', '　　protest', '/ prə’test, ‘prəutest/', 'vt.&vi.&n.抗议');
INSERT INTO `cet4` VALUES ('cet4_2686', '　　proud', '/ praud/', 'a.骄傲的；自豪的');
INSERT INTO `cet4` VALUES ('cet4_2687', '　　prove', '/ pru:v/', 'vt.证明 vi.结果是');
INSERT INTO `cet4` VALUES ('cet4_2688', '　　provide', '/ prə’vaid/', 'vt.提供；装备，供给');
INSERT INTO `cet4` VALUES ('cet4_2689', '　　provided', '/ prə’vaidid/', 'conj.以…为条件');
INSERT INTO `cet4` VALUES ('cet4_2690', '　　province', '/ ‘prɔvins/', 'n.省；领域，部门');
INSERT INTO `cet4` VALUES ('cet4_2691', '　　provision', '/ prə’viʒən/', 'n.供应；预备；存粮');
INSERT INTO `cet4` VALUES ('cet4_2692', '　　psychological', '/ saikə’lɔdʒikəl/', 'a.心理的，心理学的');
INSERT INTO `cet4` VALUES ('cet4_2693', '　　public', '/ ‘pΛblik/', 'a.公众的 n.公众');
INSERT INTO `cet4` VALUES ('cet4_2694', '　　publication', '/ pΛbli’keiʃən/', 'n.公布；出版；出版物');
INSERT INTO `cet4` VALUES ('cet4_2695', '　　publish', '/ ‘pΛbliʃ/', 'vt.公布；发表；出版');
INSERT INTO `cet4` VALUES ('cet4_2696', '　　pull', '/ pul/', 'vt.拉，拖；拉，拉力');
INSERT INTO `cet4` VALUES ('cet4_2697', '　　pulse', '/ pΛls/', 'n.脉搏；脉冲，脉动');
INSERT INTO `cet4` VALUES ('cet4_2698', '　　pump', '/ pΛmp/', 'n.泵 vt.用抽机抽');
INSERT INTO `cet4` VALUES ('cet4_2699', '　　punch', '/ pΛntʃ/', 'vt.冲出 n.冲压机');
INSERT INTO `cet4` VALUES ('cet4_2700', '　　punch', '/ pΛntʃ/', 'vt.用拳猛击 n.拳打');
INSERT INTO `cet4` VALUES ('cet4_2701', '　　punctual', '/ ‘pΛŋktjuəl/', 'a.严守时刻的；准时的');
INSERT INTO `cet4` VALUES ('cet4_2702', '　　punish', '/ ‘pΛniʃ/', 'vt.罚，惩罚，处罚');
INSERT INTO `cet4` VALUES ('cet4_2703', '　　pupil', '/ ‘pju:pl/', 'n.学生，小学生');
INSERT INTO `cet4` VALUES ('cet4_2704', '　　pupil', '/ ‘pju:pl/', 'n.瞳孔');
INSERT INTO `cet4` VALUES ('cet4_2705', '　　purchase', '/ ‘pə:tʃəs/', 'n.买，购买 vt.买');
INSERT INTO `cet4` VALUES ('cet4_2706', '　　pure', '/ pjuə/', 'a.纯粹的；纯洁的');
INSERT INTO `cet4` VALUES ('cet4_2707', '　　purple', '/ ‘pə:pl/', 'n.紫色 a.紫的');
INSERT INTO `cet4` VALUES ('cet4_2708', '　　purpose', '/ ‘pə:pəs/', 'n.目的；意图；效果');
INSERT INTO `cet4` VALUES ('cet4_2709', '　　purse', '/ pə:s/', 'n.钱包，小钱袋，手袋');
INSERT INTO `cet4` VALUES ('cet4_2710', '　　pursue', '/ pə’sju:/', 'vt.追赶，追踪；进行');
INSERT INTO `cet4` VALUES ('cet4_2711', '　　push', '/ puʃ/', 'vt.推，逼迫 vi.推');
INSERT INTO `cet4` VALUES ('cet4_2712', '　　put', '/ put/', 'vt.放，摆；使处于');
INSERT INTO `cet4` VALUES ('cet4_2713', '　　puzzle', '/ ‘pΛzl/', 'n.难题；谜 vi.使迷惑');
INSERT INTO `cet4` VALUES ('cet4_2716', 'qualify', '/ ‘kwɔlifai/', 'vt.使具有资格');
INSERT INTO `cet4` VALUES ('cet4_2717', '　　quality', '/ ‘kwɔliti/', 'n.质量；品质，特性');
INSERT INTO `cet4` VALUES ('cet4_2718', '　　quantity', '/ ‘kwɔntiti/', 'n.量，数量，分量');
INSERT INTO `cet4` VALUES ('cet4_2719', '　　quarrel', '/ ‘kwɔrəl/', 'n.争吵，吵架，口角');
INSERT INTO `cet4` VALUES ('cet4_2720', '　　quarter', '/ ‘kwɔ:tə/', 'n.四分之一；一刻钟');
INSERT INTO `cet4` VALUES ('cet4_2721', '　　queen', '/ kwi:n/', 'n.王后；女王');
INSERT INTO `cet4` VALUES ('cet4_2722', '　　question', '/ ‘kwestʃən/', 'n.发问；问题；疑问');
INSERT INTO `cet4` VALUES ('cet4_2723', '　　queue', '/ kju:/', 'n.行列 vi.排队等候');
INSERT INTO `cet4` VALUES ('cet4_2724', '　　quick', '/ kwik/', 'a.快的；敏捷的');
INSERT INTO `cet4` VALUES ('cet4_2725', '　　quiet', '/ ‘kwaiət/', 'a.寂静的；安静的');
INSERT INTO `cet4` VALUES ('cet4_2726', '　　quit', '/ kwit/', 'vt.离开，退出；停止');
INSERT INTO `cet4` VALUES ('cet4_2727', '　　quite', '/ kwait/', 'ad.完全；相当；的确');
INSERT INTO `cet4` VALUES ('cet4_2728', '　　quotation', '/ kwəu’teiʃən/', 'n.引用；引文；报价单');
INSERT INTO `cet4` VALUES ('cet4_2729', '　　quote', '/ kwəut/', 'vt.引用，引证；报价');
INSERT INTO `cet4` VALUES ('cet4_2732', '　　rabbit', '/ ‘ræbit/', 'n.兔子，野兔');
INSERT INTO `cet4` VALUES ('cet4_2733', '　　race', '/ reis/', 'n.比赛，竞赛，竞争');
INSERT INTO `cet4` VALUES ('cet4_2734', '　　race', '/ reis/', 'n.人种，种族，民族');
INSERT INTO `cet4` VALUES ('cet4_2735', '　　racial', '/ ‘reiʃəl/', 'a.种族的，人种的');
INSERT INTO `cet4` VALUES ('cet4_2736', '　　rack', '/ ræk/', 'n.搁物架；行李架');
INSERT INTO `cet4` VALUES ('cet4_2737', '　　rack', '/ ræk/', 'vt.使苦痛，折磨');
INSERT INTO `cet4` VALUES ('cet4_2738', '　　radar', '/ ‘reidə/', 'n.雷达，无线电探测器');
INSERT INTO `cet4` VALUES ('cet4_2739', '　　radiation', '/ reidi’eiʃən/', 'n.放射，发射；辐射能');
INSERT INTO `cet4` VALUES ('cet4_2740', '　　radio', '/ ‘reidiəu/', 'n.无线电；收音机');
INSERT INTO `cet4` VALUES ('cet4_2741', '　　radioactive', '/ reidiəu’æktiv/', 'a.放射性的');
INSERT INTO `cet4` VALUES ('cet4_2742', '　　radius', '/ ‘reidjəs/', 'n.半径');
INSERT INTO `cet4` VALUES ('cet4_2743', '　　rag', '/ ræg/', 'n.破布，碎布，抹布');
INSERT INTO `cet4` VALUES ('cet4_2744', '　　rail', '/ reil/', 'n.横条，横杆；铁轨');
INSERT INTO `cet4` VALUES ('cet4_2745', '　　railroad', '/ ‘reilrəud/', 'n.铁路 vi.由铁路运输');
INSERT INTO `cet4` VALUES ('cet4_2746', '　　railway', '/ ‘reilwei/', 'n.铁路，铁道');
INSERT INTO `cet4` VALUES ('cet4_2747', '　　rain', '/ rein/', 'n.雨，雨水 vi.下雨');
INSERT INTO `cet4` VALUES ('cet4_2748', '　　rainbow', '/ ‘reinbəu/', 'n.虹，彩虹');
INSERT INTO `cet4` VALUES ('cet4_2749', '　　rainy', '/ ‘reini/', 'a.下雨的，多雨的');
INSERT INTO `cet4` VALUES ('cet4_2750', '　　raise', '/ ‘reiz/', 'vt.举起；引起；提高');
INSERT INTO `cet4` VALUES ('cet4_2751', '　　range', '/ reindʒ/', 'n.排，行；山脉；范围');
INSERT INTO `cet4` VALUES ('cet4_2752', '　　rank', '/ ræŋk/', 'n.排，横行；社会阶层');
INSERT INTO `cet4` VALUES ('cet4_2753', '　　rapid', '/ ‘ræpid/', 'a.快的 n.急流');
INSERT INTO `cet4` VALUES ('cet4_2754', '　　rare', '/ reə/', 'a.稀薄的；稀有的');
INSERT INTO `cet4` VALUES ('cet4_2755', '　　rarely', '/ ‘reəli/', 'ad.很少，难得');
INSERT INTO `cet4` VALUES ('cet4_2756', '　　rat', '/ ræt/', 'n.老鼠，耗子');
INSERT INTO `cet4` VALUES ('cet4_2757', '　　rate', '/ reit/', 'n.比率；速度；价格');
INSERT INTO `cet4` VALUES ('cet4_2758', '　　rather', '/ ‘ra:ðə/', 'ad.宁可，宁愿；相当');
INSERT INTO `cet4` VALUES ('cet4_2759', '　　ratio', '/ ‘reiʃiəu/', 'n.比，比率');
INSERT INTO `cet4` VALUES ('cet4_2760', '　　rational', '/ ‘ræʃənl/', 'a.理性的；出于理性的');
INSERT INTO `cet4` VALUES ('cet4_2761', '　　raw', '/ rɔ:/', 'a.未煮过的；未加工的');
INSERT INTO `cet4` VALUES ('cet4_2762', '　　ray', '/ rei/', 'n.光线，射线，辐射线');
INSERT INTO `cet4` VALUES ('cet4_2763', '　　reach', '/ ri:tʃ/', 'vt.抵达；伸出vi.达到');
INSERT INTO `cet4` VALUES ('cet4_2764', '　　react', '/ ri’ækt/', 'vi.起反应；有影响');
INSERT INTO `cet4` VALUES ('cet4_2765', '　　reaction', '/ ri’ækʃən/', 'n.反应；反作用');
INSERT INTO `cet4` VALUES ('cet4_2766', '　　read', '/ ri:d/', 'vt.读，看懂 vi.读');
INSERT INTO `cet4` VALUES ('cet4_2767', '　　reader', '/ ‘ri:də/', 'n.读者；读物，读本');
INSERT INTO `cet4` VALUES ('cet4_2768', '　　reading', '/ ‘ri:diŋ/', 'n.读，阅读；读书');
INSERT INTO `cet4` VALUES ('cet4_2769', '　　ready', '/ ‘redi/', 'a.准备好的；愿意的');
INSERT INTO `cet4` VALUES ('cet4_2770', '　　real', '/ riəl/', 'a.真的；现实的');
INSERT INTO `cet4` VALUES ('cet4_2771', '　　reality', '/ ri’æliti/', 'n.现实；真实');
INSERT INTO `cet4` VALUES ('cet4_2772', '　　realize', '/ ‘riəlaiz/', 'vt.实现；认识到');
INSERT INTO `cet4` VALUES ('cet4_2773', '　　really', '/ ‘riəli/', 'ad.真正地；实在');
INSERT INTO `cet4` VALUES ('cet4_2774', '　　realm', '/ ‘relm/', 'n.王国，国土；领域');
INSERT INTO `cet4` VALUES ('cet4_2775', '　　rear', '/ riə/', 'n.后部，后面；背面');
INSERT INTO `cet4` VALUES ('cet4_2776', '　　rear', '/ riə/', 'vt.抚养，培养；栽种');
INSERT INTO `cet4` VALUES ('cet4_2777', '　　reason', '/ ‘ri:zn/', 'n.理由；理性 vi.推理');
INSERT INTO `cet4` VALUES ('cet4_2778', '　　reasonable', '/ ‘ri:znəbl/', 'a.合情合理的；公道的');
INSERT INTO `cet4` VALUES ('cet4_2779', '　　rebel', '/ ‘rebəl, ri’bel/', 'vi.造反 n.造反者');
INSERT INTO `cet4` VALUES ('cet4_2780', '　　recall', '/ ri’kɔ:l/', 'vt.回想；叫回；收回');
INSERT INTO `cet4` VALUES ('cet4_2781', '　　receipt', '/ ri’si:t/', 'n.收到；收条，收据');
INSERT INTO `cet4` VALUES ('cet4_2782', '　　receive', '/ ri’si:v/', 'vt.收到；得到；接待');
INSERT INTO `cet4` VALUES ('cet4_2783', '　　receiver', '/ ri’si:və/', 'n.收受者，收件人');
INSERT INTO `cet4` VALUES ('cet4_2784', '　　recent', '/ ‘ri:snt/', 'a.新近的，最近的');
INSERT INTO `cet4` VALUES ('cet4_2785', '　　recently', '/ ‘ri:sntli/', 'ad.最近，新近');
INSERT INTO `cet4` VALUES ('cet4_2786', '　　reception', '/ ri’sepʃən/', 'a.接待；招待会；接受');
INSERT INTO `cet4` VALUES ('cet4_2787', '　　recognition', '/ rekəg’niʃən/', 'n.认出，识别；承认');
INSERT INTO `cet4` VALUES ('cet4_2788', '　　recognize', '/ ‘rekəgnaiz/', 'vt.认识，认出；承认');
INSERT INTO `cet4` VALUES ('cet4_2789', '　　recommend', '/ rekə’mend/', 'vt.推荐，介绍；劝告');
INSERT INTO `cet4` VALUES ('cet4_2790', '　　recommendation', '/ rekəmen’deiʃən/', 'n.推荐，介绍；劝告');
INSERT INTO `cet4` VALUES ('cet4_2791', '　　record', '/ ‘rekɔ:d, ri’kɔ:d/', 'n.记录；履历 vt.记录');
INSERT INTO `cet4` VALUES ('cet4_2792', '　　recorder', '/ ri’kɔ:də/', 'n.记录者；录音机');
INSERT INTO `cet4` VALUES ('cet4_2793', '　　recover', '/ ri’kΛvə/', 'vt.重新获得；挽回');
INSERT INTO `cet4` VALUES ('cet4_2794', '　　recovery', '/ ri’kΛvəri/', 'n.重获；痊愈，恢复');
INSERT INTO `cet4` VALUES ('cet4_2795', '　　red', '/ red/', 'a.红色的 n.红色');
INSERT INTO `cet4` VALUES ('cet4_2796', '　　reduce', '/ ri’dju:s/', 'vt.减少，减小；简化');
INSERT INTO `cet4` VALUES ('cet4_2797', '　　reduction', '/ ri’dΛkʃən/', 'n.减少，减小，缩减');
INSERT INTO `cet4` VALUES ('cet4_2798', '　　refer', '/ ri’fə:/', 'vt.使求助于 vi.谈到');
INSERT INTO `cet4` VALUES ('cet4_2799', '　　reference', '/ ‘refərəns/', 'n.参考；出处；提及');
INSERT INTO `cet4` VALUES ('cet4_2800', '　　refine', '/ ri’fain/', 'vt.&vi.精炼，提纯');
INSERT INTO `cet4` VALUES ('cet4_2801', '　　reflect', '/ ri’flekt/', 'vt.反射；反映；思考');
INSERT INTO `cet4` VALUES ('cet4_2802', '　　reflection', '/ ri’flekʃən/', 'n.反射；映象；反映');
INSERT INTO `cet4` VALUES ('cet4_2803', '　　reflexion', '/ ri’flekʃən/', 'n.反射；映象；反映');
INSERT INTO `cet4` VALUES ('cet4_2804', '　　reform', '/ ri’fɔ:m/', 'vt.&n.改革，改良');
INSERT INTO `cet4` VALUES ('cet4_2805', '　　refresh', '/ ri’freʃ/', 'vt.使清新vi.恢复精神');
INSERT INTO `cet4` VALUES ('cet4_2806', '　　refrigerator', '/ ri’fridʒəreitə/', 'n. 冰箱，冷藏库');
INSERT INTO `cet4` VALUES ('cet4_2807', '　　refusal', '/ ri’fju:zəl/', 'n.拒绝');
INSERT INTO `cet4` VALUES ('cet4_2808', '　　refuse', '/ ri’fju:z/', 'vt.拒绝 vt.拒绝');
INSERT INTO `cet4` VALUES ('cet4_2809', '　　regard', '/ ri’ga:d/', 'vt.把…看作；尊敬');
INSERT INTO `cet4` VALUES ('cet4_2810', '　　regarding', '/ ri’ga:diŋ/', 'prep.关于');
INSERT INTO `cet4` VALUES ('cet4_2811', '　　regardless', '/ ri’ga:dlis/', 'ad.不顾一切地');
INSERT INTO `cet4` VALUES ('cet4_2812', '　　region', '/ ‘ri:dʒən/', 'n.地区，地带；领域');
INSERT INTO `cet4` VALUES ('cet4_2813', '　　register', '/ ‘redʒistə/', 'n.&vt.登记，注册');
INSERT INTO `cet4` VALUES ('cet4_2814', '　　regret', '/ ri’gret/', 'vt.懊悔；抱歉 n.懊悔');
INSERT INTO `cet4` VALUES ('cet4_2815', '　　regular', '/ ‘regjulə/', 'a.规则的；整齐的');
INSERT INTO `cet4` VALUES ('cet4_2816', '　　regulate', '/ ‘regjuleit/', 'vt.管理，控制；调整');
INSERT INTO `cet4` VALUES ('cet4_2817', '　　regulation', '/ regju’leiʃən/', 'n.规则，规章；管理');
INSERT INTO `cet4` VALUES ('cet4_2818', '　　reinforce', '/ ri:in’fɔ:s/', 'vt.增援，支援；加强');
INSERT INTO `cet4` VALUES ('cet4_2819', '　　reject', '/ ri’dʒekt/', 'vt.拒绝；丢掉；驳回');
INSERT INTO `cet4` VALUES ('cet4_2820', '　　relate', '/ ri’leit/', 'vt.叙述；使联系');
INSERT INTO `cet4` VALUES ('cet4_2821', '　　relation', '/ ri’leiʃən/', 'n.关系，联系；家属');
INSERT INTO `cet4` VALUES ('cet4_2822', '　　relationship', '/ ri’leiʃənʃip/', 'n.关系，联系');
INSERT INTO `cet4` VALUES ('cet4_2823', '　　relative', '/ ‘relətiv/', 'a.有关系的；相对的');
INSERT INTO `cet4` VALUES ('cet4_2824', '　　relativity', '/ relə’tiviti/', 'n.相关性；相对性');
INSERT INTO `cet4` VALUES ('cet4_2825', '　　relax', '/ ri’læks/', 'vt.使松弛 vi.松弛');
INSERT INTO `cet4` VALUES ('cet4_2826', '　　release', '/ ri’li:s/', 'vt.释放；放松；发表');
INSERT INTO `cet4` VALUES ('cet4_2827', '　　relevant', '/ ‘relivənt/', 'a.有关的，贴切的');
INSERT INTO `cet4` VALUES ('cet4_2828', '　　reliability', '/ rilaiə’biliti/', 'n.可靠性');
INSERT INTO `cet4` VALUES ('cet4_2829', '　　reliable', '/ ri’laiəbl/', 'a.可靠的，可信赖的');
INSERT INTO `cet4` VALUES ('cet4_2830', '　　relief', '/ ri’li:f/', 'n.减轻；救济；援救');
INSERT INTO `cet4` VALUES ('cet4_2831', '　　relieve', '/ ri’li:v/', 'vt.减轻，解除；救济');
INSERT INTO `cet4` VALUES ('cet4_2832', '　　religion', '/ ri’lidʒən/', 'n.宗教；宗教信仰');
INSERT INTO `cet4` VALUES ('cet4_2833', '　　religious', '/ ri’lidʒəs/', 'a.宗教的；虔诚的');
INSERT INTO `cet4` VALUES ('cet4_2834', '　　reluctant', '/ ri’lΛktənt/', 'a.不愿的，勉强的');
INSERT INTO `cet4` VALUES ('cet4_2835', '　　rely', '/ ri’lai/', 'vi.依赖，依靠；信赖');
INSERT INTO `cet4` VALUES ('cet4_2836', '　　remain', '/ ri’mein/', 'vi.剩下，余留；保持');
INSERT INTO `cet4` VALUES ('cet4_2837', '　　remark', '/ ri’ma:k/', 'vt.&vi.&n.评论，谈论');
INSERT INTO `cet4` VALUES ('cet4_2838', '　　remarkable', '/ ri’ma:kəbl/', 'a.异常的，非凡的');
INSERT INTO `cet4` VALUES ('cet4_2839', '　　remedy', '/ ‘remidi/', 'n.&vt.治疗；补救');
INSERT INTO `cet4` VALUES ('cet4_2840', '　　remember', '/ ri’membə/', 'vt.记得，想起；记住');
INSERT INTO `cet4` VALUES ('cet4_2841', '　　remind', '/ ri’maind/', 'vt.提醒，使想起');
INSERT INTO `cet4` VALUES ('cet4_2842', '　　remote', '/ ri’məut/', 'a.相隔很远的；冷淡的');
INSERT INTO `cet4` VALUES ('cet4_2843', '　　removal', '/ ri’mu:vəl/', 'n.移动；迁移；除掉');
INSERT INTO `cet4` VALUES ('cet4_2844', '　　remove', '/ ri’mu:v/', 'vt.移动，搬开；脱掉');
INSERT INTO `cet4` VALUES ('cet4_2845', '　　render', '/ ‘rendə/', 'vt.表示，给予；使得');
INSERT INTO `cet4` VALUES ('cet4_2846', '　　renew', '/ ri’nju:/', 'vt.使更新 vi.更新');
INSERT INTO `cet4` VALUES ('cet4_2847', '　　rent', '/ rent/', 'n.租金，租 vi.出租');
INSERT INTO `cet4` VALUES ('cet4_2848', '　　repair', '/ ri’peə/', 'vt.&n.修理，修补');
INSERT INTO `cet4` VALUES ('cet4_2849', '　　repeat', '/ ri’pi:t/', 'vt.重说，重做 n.重复');
INSERT INTO `cet4` VALUES ('cet4_2850', '　　repeatedly', '/ ri’pi:tidli/', 'ad.重复地；一再');
INSERT INTO `cet4` VALUES ('cet4_2851', '　　repetition', '/ repi’tiʃən/', 'n.重复，反复');
INSERT INTO `cet4` VALUES ('cet4_2852', '　　reply', '/ ri’plai/', 'vi.&n.回答，答复');
INSERT INTO `cet4` VALUES ('cet4_2853', '　　report', '/ ri’pɔ:t/', 'vt.&vi.报告；汇报');
INSERT INTO `cet4` VALUES ('cet4_2854', '　　reporter', '/ ri’pɔ:tə/', 'n.记者，通讯员');
INSERT INTO `cet4` VALUES ('cet4_2855', '　　represent', '/ repri’zent/', 'vt.描绘；代表；象征');
INSERT INTO `cet4` VALUES ('cet4_2856', '　　representative', '/ repri’zentətiv/', 'a.代表性的 n.代表');
INSERT INTO `cet4` VALUES ('cet4_2857', '　　reproduce', '/ ri:prə’dju:s/', 'vt.&vi.繁殖，生殖');
INSERT INTO `cet4` VALUES ('cet4_2858', '　　republic', '/ ri’pΛblik/', 'n.共和国，共和政体');
INSERT INTO `cet4` VALUES ('cet4_2859', '　　reputation', '/ repju(:)’teiʃən/', 'n.名誉，名声；好名声');
INSERT INTO `cet4` VALUES ('cet4_2860', '　　request', '/ ri’kwest/', 'n.&v.请求，要求');
INSERT INTO `cet4` VALUES ('cet4_2861', '　　require', '/ ri’kwaiə/', 'vt.需要；要求，命令');
INSERT INTO `cet4` VALUES ('cet4_2862', '　　requirement', '/ ri’kwaiəmənt/', 'n.需要；要求');
INSERT INTO `cet4` VALUES ('cet4_2863', '　　rescue', '/ ‘reskju:/', 'vt.&n.援救，营救');
INSERT INTO `cet4` VALUES ('cet4_2864', '　　resemble', '/ ri’zembl/', 'vt.像，类似');
INSERT INTO `cet4` VALUES ('cet4_2865', '　　reserve', '/ ri’zə:v/', 'vt.储备，保留；预定');
INSERT INTO `cet4` VALUES ('cet4_2866', '　　reservior', '/ /', 'n.水库；蓄水池');
INSERT INTO `cet4` VALUES ('cet4_2867', '　　residence', '/ ‘rezidəns/', 'n.居住；驻扎；住处');
INSERT INTO `cet4` VALUES ('cet4_2868', '　　resident', '/ ‘rezidənt/', 'a.居住的 n.居民');
INSERT INTO `cet4` VALUES ('cet4_2869', '　　resign', '/ ri’zain/', 'vt.放弃 vi.辞职');
INSERT INTO `cet4` VALUES ('cet4_2870', '　　resist', '/ ri’zist/', 'vt.&vi.抵抗，抵制');
INSERT INTO `cet4` VALUES ('cet4_2871', '　　resistance', '/ ri’zistəns/', 'n.抵抗；抵制；抵抗力');
INSERT INTO `cet4` VALUES ('cet4_2872', '　　resistant', '/ ri’zistənt/', 'a.抵抗的，反抗的');
INSERT INTO `cet4` VALUES ('cet4_2873', '　　resolution', '/ rezə’lju:ʃən/', 'n.坚决，坚定；决定');
INSERT INTO `cet4` VALUES ('cet4_2874', '　　resolve', '/ ri’zɔlv/', 'vt.解决；决心 n.决心');
INSERT INTO `cet4` VALUES ('cet4_2875', '　　resort', '/ ri’zɔ:t/', 'vi.&n.求助，凭借;诉诸于(+ to武力等)');
INSERT INTO `cet4` VALUES ('cet4_2876', '　　respective', '/ ris’pektiv/', '各自的，各个的');
INSERT INTO `cet4` VALUES ('cet4_2877', '　　respectively', '/ ris’pektivli/', 'ad.各自地，分别地');
INSERT INTO `cet4` VALUES ('cet4_2878', '　　respond', '/ ris’pɔnd/', 'vi.作答；响应');
INSERT INTO `cet4` VALUES ('cet4_2879', '　　response', '/ ris’pɔns/', 'n.作答，回答；响应');
INSERT INTO `cet4` VALUES ('cet4_2880', '　　restless', '/ ‘restlis/', 'a.不安定的，焦虑的');
INSERT INTO `cet4` VALUES ('cet4_2881', '　　restore', '/ ris’tɔ:/', 'vt.恢复；归还；修补');
INSERT INTO `cet4` VALUES ('cet4_2882', '　　restrain', '/ ris’trein/', 'vt.抑制，遏制；限制');
INSERT INTO `cet4` VALUES ('cet4_2883', '　　restraint', '/ ris’treint/', 'n.抑制；遏制；克制');
INSERT INTO `cet4` VALUES ('cet4_2884', '　　restrict', '/ ris’trikt/', 'vt限制，限定，约束');
INSERT INTO `cet4` VALUES ('cet4_2885', '　　resume', '/ ri’zju:m/', 'vt.恢复；重新开始');
INSERT INTO `cet4` VALUES ('cet4_2886', '　　retain', '/ ri’tein/', 'vt.保持，保留，保有');
INSERT INTO `cet4` VALUES ('cet4_2887', '　　retire', '/ ri’taiə/', 'vi.退下；引退；就寝');
INSERT INTO `cet4` VALUES ('cet4_2888', '　　retreat', '/ ri’tri:t/', 'vi.(被迫)退却，后退');
INSERT INTO `cet4` VALUES ('cet4_2889', '　　reveal', '/ ri’vi:l/', 'vt.展现；揭示，揭露');
INSERT INTO `cet4` VALUES ('cet4_2890', '　　reverse', '/ ri’və:s/', 'vt.颠倒，翻转 n.背面');
INSERT INTO `cet4` VALUES ('cet4_2891', '　　review', '/ ri’vju:/', 'vt.再检查 n.复习');
INSERT INTO `cet4` VALUES ('cet4_2892', '　　revise', '/ ri’vaiz/', 'vt.修订，校订；修改');
INSERT INTO `cet4` VALUES ('cet4_2893', '　　revolt', '/ ri’vəult/', 'vi.&n.反抗，造反');
INSERT INTO `cet4` VALUES ('cet4_2894', '　　revolution', '/ revə’lu:ʃən/', 'n.革命；旋转，绕转');
INSERT INTO `cet4` VALUES ('cet4_2895', '　　revolutionary', '/ revə’lu:ʃənəri/', 'a.革命的 n.革命者');
INSERT INTO `cet4` VALUES ('cet4_2896', '　　reward', '/ ri’wɔ:d/', 'n.报答；报酬 vt.报答');
INSERT INTO `cet4` VALUES ('cet4_2897', '　　rhythm', '/ ‘riðəm/', 'n.韵律，格律；节奏');
INSERT INTO `cet4` VALUES ('cet4_2898', '　　rib', '/ rib/', 'n.肋，肋骨');
INSERT INTO `cet4` VALUES ('cet4_2899', '　　ribbon', '/ ‘ribən/', 'n.缎带，丝带；带');
INSERT INTO `cet4` VALUES ('cet4_2900', '　　rid', '/ rid/', 'vt.使摆脱，使去掉');
INSERT INTO `cet4` VALUES ('cet4_2901', '　　ridge', '/ ridʒ/', 'n.脊；岭，山脉；垄');
INSERT INTO `cet4` VALUES ('cet4_2902', '　　ridiculous', '/ ri’dikjuləs/', 'a.荒谬的，可笑的');
INSERT INTO `cet4` VALUES ('cet4_2903', '　　rifle', '/ ‘raifl/', 'n.步枪，来复枪');
INSERT INTO `cet4` VALUES ('cet4_2904', '　　rigid', '/ ‘ridʒid/', 'a.刚硬的；僵硬的');
INSERT INTO `cet4` VALUES ('cet4_2905', '　　ripe', '/ raip/', 'a.熟的；时机成熟的');
INSERT INTO `cet4` VALUES ('cet4_2906', '　　risk', '/ risk/', 'n.风险，危险，冒险');
INSERT INTO `cet4` VALUES ('cet4_2907', '　　rival', '/ ‘raivəl/', 'n.竞争者 a.竞争的');
INSERT INTO `cet4` VALUES ('cet4_2908', '　　roar', '/ rɔ:/', 'vi.吼叫；呼喊 n.吼');
INSERT INTO `cet4` VALUES ('cet4_2909', '　　roast', '/ rəust/', 'vt.&vi.烤，炙，烘');
INSERT INTO `cet4` VALUES ('cet4_2910', '　　robot', '/ ‘rəubɔt/', 'n.机器人；自动机');
INSERT INTO `cet4` VALUES ('cet4_2911', '　　rocket', '/ ‘rɔkit/', 'n. 火箭，火箭发动机');
INSERT INTO `cet4` VALUES ('cet4_2912', '　　rod', '/ rɔd/', 'n.杆，竿，棒');
INSERT INTO `cet4` VALUES ('cet4_2913', '　　roll', '/ rəul/', 'vi.&vt.滚动；转动');
INSERT INTO `cet4` VALUES ('cet4_2914', '　　roller', '/ ‘rəulə/', 'n.滚柱，滚筒，滚轴');
INSERT INTO `cet4` VALUES ('cet4_2915', '　　ooman', '/ ‘rəumən/', 'n.古罗马人 a.罗马的');
INSERT INTO `cet4` VALUES ('cet4_2916', '　　romantic', '/ rəu’mæntik/', 'a.浪漫的；传奇的');
INSERT INTO `cet4` VALUES ('cet4_2917', '　　rotary', '/ ‘rəutəri/', 'a.旋转的，转动的');
INSERT INTO `cet4` VALUES ('cet4_2918', '　　rotate', '/ rəu’teit/', 'vi.旋转 vt.使旋转');
INSERT INTO `cet4` VALUES ('cet4_2919', '　　rotation', '/ rəu’teiʃən/', 'n.旋转，转动；循环');
INSERT INTO `cet4` VALUES ('cet4_2920', '　　rotten', '/ ‘rɔtn/', 'a.腐烂的，发臭的');
INSERT INTO `cet4` VALUES ('cet4_2921', '　　rough', '/ rΛf/', 'a.表面不平的；粗略的');
INSERT INTO `cet4` VALUES ('cet4_2922', '　　rouse', '/ rauz/', 'vt.唤醒，唤起；惊起');
INSERT INTO `cet4` VALUES ('cet4_2923', '　　route', '/ ru:t/', 'n.路，路线，路程');
INSERT INTO `cet4` VALUES ('cet4_2924', '　　routine', '/ ru:’ti:n/', 'n.例行公事 a.日常的');
INSERT INTO `cet4` VALUES ('cet4_2925', '　　row', '/ rəu/', 'n.(一)排，(一)行');
INSERT INTO `cet4` VALUES ('cet4_2926', '　　row', '/ rəu/', 'vt.划(船等) vi.划船');
INSERT INTO `cet4` VALUES ('cet4_2927', '　　royal', '/ ‘rɔiəl/', 'a.王的；皇家的');
INSERT INTO `cet4` VALUES ('cet4_2928', '　　rug', '/ rΛg/', 'n.小地毯；毛毯');
INSERT INTO `cet4` VALUES ('cet4_2929', '　　rural', '/ ‘ruərəl/', 'a.农村的，田园的');
INSERT INTO `cet4` VALUES ('cet4_2930', '　　rush', '/ rΛʃ/', 'vi.冲，奔 vt.催促');
INSERT INTO `cet4` VALUES ('cet4_2931', '　　rust', '/ rΛst/', 'n.锈 vi.生锈，氧化');
INSERT INTO `cet4` VALUES ('cet4_2934', 'sack', '/ sæk/', 'n.袋，麻袋；开除');
INSERT INTO `cet4` VALUES ('cet4_2935', '　　sacrifice', '/ ‘sækrifais/', 'n.&vt.牺牲；南祭');
INSERT INTO `cet4` VALUES ('cet4_2936', '　　saddle', '/ ‘sædl/', 'n.鞍子，马鞍');
INSERT INTO `cet4` VALUES ('cet4_2937', '　　sail', '/ seil/', 'n.帆；船 vi.航行');
INSERT INTO `cet4` VALUES ('cet4_2938', '　　sake', '/ seik/', 'n.缘故，理由');
INSERT INTO `cet4` VALUES ('cet4_2939', '　　sample', '/ ‘sa:mpl/', 'n.样品；实例，标本');
INSERT INTO `cet4` VALUES ('cet4_2940', '　　satellite', '/ ‘sætəlait/', 'n.卫星；人造卫星');
INSERT INTO `cet4` VALUES ('cet4_2941', '　　satisfactory', '/ sætis’fæktəri/', 'a.令人满意的，良好的');
INSERT INTO `cet4` VALUES ('cet4_2942', '　　saucer', '/ ‘sɔ:sə/', 'n.茶托，浅碟');
INSERT INTO `cet4` VALUES ('cet4_2943', '　　sausage', '/ ‘sɔsidʒ/', 'n.香肠，腊肠');
INSERT INTO `cet4` VALUES ('cet4_2944', '　　saw', '/ sɔ:/', 'n.锯子 vt.锯，锯开');
INSERT INTO `cet4` VALUES ('cet4_2945', '　　say', '/ sei/', 'vt.比如说[用于举例]');
INSERT INTO `cet4` VALUES ('cet4_2946', '　　scale', '/ skeil/', 'n.天平，磅秤，秤');
INSERT INTO `cet4` VALUES ('cet4_2947', '　　scale', '/ skeil/', 'n.标度；比例；大小');
INSERT INTO `cet4` VALUES ('cet4_2948', '　　scan', '/ skæn/', 'vt.细看；浏览；扫描');
INSERT INTO `cet4` VALUES ('cet4_2949', '　　scarcely', '/ ‘skeəsli/', 'ad.仅仅；几乎不');
INSERT INTO `cet4` VALUES ('cet4_2950', '　　scatter', '/ ‘skætə/', 'vt.使消散；撒；散播');
INSERT INTO `cet4` VALUES ('cet4_2951', '　　scenery', '/ ‘si:nəri/', 'n.舞台布景；风景');
INSERT INTO `cet4` VALUES ('cet4_2952', '　　schedule', '/ ‘ʃedju:l/', 'n.时间表；计划表');
INSERT INTO `cet4` VALUES ('cet4_2953', '　　scheme', '/ ski:m/', 'n.计划，规划；诡计');
INSERT INTO `cet4` VALUES ('cet4_2954', '　　scholar', '/ ‘skɔlə/', 'n.学者(尤指文学方面)');
INSERT INTO `cet4` VALUES ('cet4_2955', '　　scientific', '/ saiən’tifik/', 'a.科学(上)的');
INSERT INTO `cet4` VALUES ('cet4_2956', '　　scissors', '/ ‘sizəz/', 'n.剪刀，剪子');
INSERT INTO `cet4` VALUES ('cet4_2957', '　　score', '/ skɔ:/', 'n.得分，比数，成绩');
INSERT INTO `cet4` VALUES ('cet4_2958', '　　scout', '/ skaut/', 'n.侦察员，侦察机');
INSERT INTO `cet4` VALUES ('cet4_2959', '　　scrape', '/ skreip/', 'vt.&vi.&n.刮，擦');
INSERT INTO `cet4` VALUES ('cet4_2960', '　　scratch', '/ skrætʃ/', 'vt.&vi.&n.搔；抓');
INSERT INTO `cet4` VALUES ('cet4_2961', '　　screw', '/ skru:/', 'n.螺旋，螺丝 vt.拧紧');
INSERT INTO `cet4` VALUES ('cet4_2962', '　　seal', '/ ‘si:l/', 'n.封蜡；印记 vt.封');
INSERT INTO `cet4` VALUES ('cet4_2963', '　　seal', '/ ‘si:l/', 'n.海豹');
INSERT INTO `cet4` VALUES ('cet4_2964', '　　secondary', '/ ‘sekəndəri/', 'a.第二的；次要的');
INSERT INTO `cet4` VALUES ('cet4_2965', '　　secretary', '/ ‘sekrətri/', 'n.秘书；书记；大臣');
INSERT INTO `cet4` VALUES ('cet4_2966', '　　section', '/ ‘sekʃən/', 'n.切片；一段；部门');
INSERT INTO `cet4` VALUES ('cet4_2967', '　　secure', '/ si’kjuə/', 'a.安心的；安全的');
INSERT INTO `cet4` VALUES ('cet4_2968', '　　security', '/ si’kjuəriti/', 'n.安全，安全感');
INSERT INTO `cet4` VALUES ('cet4_2969', '　　seed', '/ si:d/', 'n.种(子)，籽，萌芽');
INSERT INTO `cet4` VALUES ('cet4_2970', '　　seek', '/ si:k/', 'vt.寻找，探索；试图');
INSERT INTO `cet4` VALUES ('cet4_2971', '　　seize', '/ si:z/', 'vt.抓住，逮捕；夺取');
INSERT INTO `cet4` VALUES ('cet4_2972', '　　semiconductor', '/ semikən’dΛktə/', 'n. 半导体');
INSERT INTO `cet4` VALUES ('cet4_2973', '　　senate', '/ senit/', 'n.参议院，上院');
INSERT INTO `cet4` VALUES ('cet4_2974', '　　senior', '/ ‘si:njə/', 'a.年少的；地位较高的');
INSERT INTO `cet4` VALUES ('cet4_2975', '　　sensible', '/ ‘sensəbl/', 'a.感觉得到的；明智的');
INSERT INTO `cet4` VALUES ('cet4_2976', '　　sensitive', '/ ‘sensitiv/', 'a.敏感的；灵敏的');
INSERT INTO `cet4` VALUES ('cet4_2977', '　　separate', '/ ‘sepəreit, ‘sepərit/', 'a.分离的；个别的');
INSERT INTO `cet4` VALUES ('cet4_2978', '　　sequence', '/ ‘si:kwəns/', 'n.连续，继续；次序');
INSERT INTO `cet4` VALUES ('cet4_2979', '　　series', '/ ‘siəri:z/', 'n.连续，系列；丛书');
INSERT INTO `cet4` VALUES ('cet4_2980', '　　serve', '/ sə:v/', 'vt.为…服务；招待');
INSERT INTO `cet4` VALUES ('cet4_2981', '　　session', '/ ‘seʃən/', 'n.会议，一段时间');
INSERT INTO `cet4` VALUES ('cet4_2982', '　　setting', '/ ‘setiŋ/', 'n.安装，调整；环境');
INSERT INTO `cet4` VALUES ('cet4_2983', '　　settle', '/ ‘setl/', 'vt.安排；安放；调停');
INSERT INTO `cet4` VALUES ('cet4_2984', '　　settlement', '/ ‘setlmənt/', 'n.解决；殖民，殖民地');
INSERT INTO `cet4` VALUES ('cet4_2985', '　　severe', '/ si’viə/', 'a.严格的；严厉的');
INSERT INTO `cet4` VALUES ('cet4_2986', '　　sew', '/ səu/', 'vt.缝制 vi.缝纫');
INSERT INTO `cet4` VALUES ('cet4_2987', '　　shade', '/ ʃeid/', 'n.荫；遮光物 vi.荫蔽');
INSERT INTO `cet4` VALUES ('cet4_2988', '　　shave', '/ ʃeiv/', 'vt.剃，刮 vi.修面');
INSERT INTO `cet4` VALUES ('cet4_2989', '　　shear', '/ ʃiə/', 'vt.剪；剥夺 vi.剪');
INSERT INTO `cet4` VALUES ('cet4_2990', '　　shed', '/ ʃed/', 'vt.流出；散发；脱落');
INSERT INTO `cet4` VALUES ('cet4_2991', '　　shed', '/ ʃed/', 'n.棚，小屋；贷棚');
INSERT INTO `cet4` VALUES ('cet4_2992', '　　sheet', '/ ʃi:t/', 'n.被单；纸张；薄板');
INSERT INTO `cet4` VALUES ('cet4_2993', '　　shelf', '/ ʃelf/', 'n.搁板，架子');
INSERT INTO `cet4` VALUES ('cet4_2994', '　　shelter', '/ ‘ʃeltə/', 'n.隐蔽处；掩蔽，庇护');
INSERT INTO `cet4` VALUES ('cet4_2995', '　　shield', '/ ʃi:ld/', 'n.盾；防护物 vt.保护');
INSERT INTO `cet4` VALUES ('cet4_2996', '　　shift', '/ ʃift/', 'vt.替换，转移 n.转换');
INSERT INTO `cet4` VALUES ('cet4_2997', '　　shiver', '/ ‘ʃivə/', 'vi.颤抖，哆嗦 n.冷颤');
INSERT INTO `cet4` VALUES ('cet4_2998', '　　shoot', '/ ʃu:t/', 'vt.发射；射中 n.发芽');
INSERT INTO `cet4` VALUES ('cet4_2999', '　　shore', '/ ʃɔ:/', 'n.滨，岸');
INSERT INTO `cet4` VALUES ('cet4_3000', '　　shortage', '/ ‘ʃɔ:tidʒ/', 'n.不足，缺少，不足额');
INSERT INTO `cet4` VALUES ('cet4_3001', '　　shortly', '/ ‘ʃɔ:tli/', 'ad.立刻；简短地');
INSERT INTO `cet4` VALUES ('cet4_3002', '　　shot', '/ ʃɔt/', 'n.发射；弹丸；射门');
INSERT INTO `cet4` VALUES ('cet4_3003', '　　shower', '/ ‘ʃəuə, ‘ʃauə/', 'n.阵雨；(一)阵；淋浴');
INSERT INTO `cet4` VALUES ('cet4_3004', '　　shriek', '/ ʃri:k/', 'vi.尖声喊叫 n.尖叫声');
INSERT INTO `cet4` VALUES ('cet4_3005', '　　sideways', '/ ‘saidweiz/', 'ad.斜着，斜向一边地');
INSERT INTO `cet4` VALUES ('cet4_3006', '　　sightseeing', '/ ‘saitsi:iŋ/', 'n.观光，游览');
INSERT INTO `cet4` VALUES ('cet4_3007', '　　sign', '/ sain/', 'n.符号；招牌 n.签名');
INSERT INTO `cet4` VALUES ('cet4_3008', '　　signal', '/ ‘signəl/', 'n.信号 vi.发信号');
INSERT INTO `cet4` VALUES ('cet4_3009', '　　signature', '/ ‘signitʃə/', 'n.署名，签字，签名');
INSERT INTO `cet4` VALUES ('cet4_3010', '　　significance', '/ sig’nifikəns/', 'n.意义，意味；重要性');
INSERT INTO `cet4` VALUES ('cet4_3011', '　　significant', '/ sig’nifikənt/', 'n.有意义的；重要的');
INSERT INTO `cet4` VALUES ('cet4_3012', '　　silence', '/ ‘sailəns/', 'n.沉默 vt.使沉默');
INSERT INTO `cet4` VALUES ('cet4_3013', '　　silent', '/ ‘sailənt/', 'a.沉默的；寂静无声的');
INSERT INTO `cet4` VALUES ('cet4_3014', '　　silk', '/ silk/', 'n.蚕丝，丝，丝织品');
INSERT INTO `cet4` VALUES ('cet4_3015', '　　silly', '/ ‘sili/', 'a.傻的，愚蠢的');
INSERT INTO `cet4` VALUES ('cet4_3016', '　　silver', '/ ‘silvə/', 'n.银；银子；银器');
INSERT INTO `cet4` VALUES ('cet4_3017', '　　similar', '/ ‘similə/', 'a.相似的，类似的');
INSERT INTO `cet4` VALUES ('cet4_3018', '　　similarly', '/ ‘similəli/', 'ad.类似地，相似地');
INSERT INTO `cet4` VALUES ('cet4_3019', '　　simplicity', '/ sim’plisiti/', 'n.简单，简易；朴素');
INSERT INTO `cet4` VALUES ('cet4_3020', '　　simplify', '/ ‘simplifai/', 'vt.简化，使单纯');
INSERT INTO `cet4` VALUES ('cet4_3021', '　　simply', '/ ‘simpli/', 'ad.简单地；朴素地');
INSERT INTO `cet4` VALUES ('cet4_3022', '　　sincere', '/ sin’siə/', 'a.真诚的；真挚的');
INSERT INTO `cet4` VALUES ('cet4_3023', '　　singular', '/ ‘siŋgjulə/', 'a.单一的；非凡的');
INSERT INTO `cet4` VALUES ('cet4_3024', '　　site', '/ sait/', 'n.地点，地基；场所');
INSERT INTO `cet4` VALUES ('cet4_3025', '　　sketch', '/ sketʃ/', 'n.略图；速写；概略');
INSERT INTO `cet4` VALUES ('cet4_3026', '　　skilled', '/ skild/', 'a.有技能的，熟练的');
INSERT INTO `cet4` VALUES ('cet4_3027', '　　skillful', '/ ‘skilful/', 'a.灵巧的，娴熟的');
INSERT INTO `cet4` VALUES ('cet4_3028', '　　skim', '/ skim/', 'vt.掠过，擦过；略读');
INSERT INTO `cet4` VALUES ('cet4_3029', '　　slam', '/ slæm/', 'vt.使劲关，砰地放下');
INSERT INTO `cet4` VALUES ('cet4_3030', '　　sleeve', '/ sli:v/', 'n.袖子，袖套');
INSERT INTO `cet4` VALUES ('cet4_3031', '　　slender', '/ ‘slendə/', 'a.细长的；微薄的');
INSERT INTO `cet4` VALUES ('cet4_3032', '　　slice', '/ slais/', 'n.薄片，切片；部分');
INSERT INTO `cet4` VALUES ('cet4_3033', '　　slide', '/ slaid/', 'vi.滑 vt.使滑动 n.滑');
INSERT INTO `cet4` VALUES ('cet4_3034', '　　slippery', '/ ‘slipəri/', 'a.滑的，使人滑跤的');
INSERT INTO `cet4` VALUES ('cet4_3035', '　　slit', '/ slit/', 'n.裂缝 vt.切开，撕开');
INSERT INTO `cet4` VALUES ('cet4_3036', '　　slope', '/ sləup/', 'n.倾斜；斜面 vi.倾斜');
INSERT INTO `cet4` VALUES ('cet4_3037', '　　smart', '/ sma:t/', 'a.巧妙的；洒脱的');
INSERT INTO `cet4` VALUES ('cet4_3038', '　　soak', '/ səuk/', 'vt.浸，泡 vi.浸泡');
INSERT INTO `cet4` VALUES ('cet4_3039', '　　sɔil', '/ sɔil/', 'vt.弄脏 vi.变脏');
INSERT INTO `cet4` VALUES ('cet4_3040', '　　solar', '/ ‘səulə/', 'a.太阳的，日光的');
INSERT INTO `cet4` VALUES ('cet4_3041', '　　sole', '/ səul/', 'n.脚底，鞋底，袜底');
INSERT INTO `cet4` VALUES ('cet4_3042', '　　sole', '/ səul/', 'a.单独的，唯一的');
INSERT INTO `cet4` VALUES ('cet4_3043', '　　solemn', '/ ‘sɔləm/', 'a.庄严的；隆重的');
INSERT INTO `cet4` VALUES ('cet4_3044', '　　solid', '/ ‘sɔlid/', 'a.固体的 n.固体');
INSERT INTO `cet4` VALUES ('cet4_3045', '　　soluble', '/ ‘sɔljubl/', 'a.可溶的；可以解决的');
INSERT INTO `cet4` VALUES ('cet4_3046', '　　solution', '/ sə’lju:ʃən/', 'n.解决，解答；溶解');
INSERT INTO `cet4` VALUES ('cet4_3047', '　　solve', '/ ‘sɔlv/', 'vt.解答，解释，解决');
INSERT INTO `cet4` VALUES ('cet4_3048', '　　somebody', '/ ‘sΛmbədi/', 'pron.某人，有人');
INSERT INTO `cet4` VALUES ('cet4_3049', '　　somehow', '/ ‘sΛmhau/', 'ad.由于某种原因');
INSERT INTO `cet4` VALUES ('cet4_3050', '　　sometime', '/ ‘sΛmtaim/', 'ad.在某一时候；从前');
INSERT INTO `cet4` VALUES ('cet4_3051', '　　somewhat', '/ ‘sΛmwɔt/', 'pron.一点儿 ad.有点');
INSERT INTO `cet4` VALUES ('cet4_3052', '　　sophisticated', '/ sə’fistikeitid/', 'a.老于世故的；高级的');
INSERT INTO `cet4` VALUES ('cet4_3053', '　　sore', '/ sɔ:/', 'a.痛的；恼火的 n.疮');
INSERT INTO `cet4` VALUES ('cet4_3054', '　　sorrow', '/ ‘sɔrəu/', 'n.悲痛，悲哀，悲伤');
INSERT INTO `cet4` VALUES ('cet4_3055', '　　sort', '/ sɔ:t/', 'n.种类；类别 vt.整理');
INSERT INTO `cet4` VALUES ('cet4_3056', '　　sound', '/ saund/', 'a.健康的；完好的');
INSERT INTO `cet4` VALUES ('cet4_3057', '　　sour', '/ ‘sauə/', 'a.酸的；脾气坏的');
INSERT INTO `cet4` VALUES ('cet4_3058', '　　sow', '/ səu/', 'vt.播(种) vi.播种');
INSERT INTO `cet4` VALUES ('cet4_3059', '　　spacecraft', '/ ‘speiskra:ft/', 'n.航天器，宇宙飞船');
INSERT INTO `cet4` VALUES ('cet4_3060', '　　spade', '/ speid/', 'n.铲，铁锹');
INSERT INTO `cet4` VALUES ('cet4_3061', '　　span', '/ spæn/', 'n.跨距；一段时间');
INSERT INTO `cet4` VALUES ('cet4_3062', '　　spare', '/ speə/', 'vt.节约 a.多余的');
INSERT INTO `cet4` VALUES ('cet4_3063', '　　spark', '/ spa:k/', 'n.火花， 火星');
INSERT INTO `cet4` VALUES ('cet4_3064', '　　specialist', '/ speʃəlist/', 'n.专家');
INSERT INTO `cet4` VALUES ('cet4_3065', '　　specialize', '/ ‘speʃəlaiz/', 'vi.成为…专家；专攻');
INSERT INTO `cet4` VALUES ('cet4_3066', '　　specific', '/ spi’sifik/', 'a.特有的；具体的');
INSERT INTO `cet4` VALUES ('cet4_3067', '　　specify', '/ ‘spesifai/', 'vi.指定，详细说明');
INSERT INTO `cet4` VALUES ('cet4_3068', '　　specimen', '/ ‘spesimin/', 'n.样本，标本，样品');
INSERT INTO `cet4` VALUES ('cet4_3069', '　　sphere', '/ sfiə/', 'n.球，圆体；范围');
INSERT INTO `cet4` VALUES ('cet4_3070', '　　spill', '/ spil/', 'vt.使溢出 vi.溢出');
INSERT INTO `cet4` VALUES ('cet4_3071', '　　spin', '/ spin/', 'vt.纺；使旋转 n.旋转');
INSERT INTO `cet4` VALUES ('cet4_3072', '　　spite', '/ spait/', 'n. 恶意,怨恨,不顾 vt. 刁难,欺侮');
INSERT INTO `cet4` VALUES ('cet4_3073', '　　split', '/ split/', 'vt.劈开 vi.被劈开');
INSERT INTO `cet4` VALUES ('cet4_3074', '　　spɔil', '/ spɔil/', 'vt.损坏，糟蹋；宠坏');
INSERT INTO `cet4` VALUES ('cet4_3075', '　　sponsor', '/ ‘spɔnsə/', 'n.发起者 vt.发起');
INSERT INTO `cet4` VALUES ('cet4_3076', '　　sportsman', '/ ‘spɔ:tsmən/', 'n.运动员');
INSERT INTO `cet4` VALUES ('cet4_3077', '　　spray', '/ sprei/', 'n.浪花；喷雾 vt.喷');
INSERT INTO `cet4` VALUES ('cet4_3078', '　　spring', '/ spriŋ/', 'vi.跳，跃 n.跳跃；泉');
INSERT INTO `cet4` VALUES ('cet4_3079', '　　spur', '/ spə:/', 'n.刺激物 vt.刺激');
INSERT INTO `cet4` VALUES ('cet4_3080', '　　square', '/ skweə/', 'n.正方形；广场');
INSERT INTO `cet4` VALUES ('cet4_3081', '　　squeeze', '/ ‘skwi:z/', 'vt.&vi.榨，挤；压榨');
INSERT INTO `cet4` VALUES ('cet4_3082', '　　stability', '/ stə’biliti/', 'n.稳定，稳定性，巩固');
INSERT INTO `cet4` VALUES ('cet4_3083', '　　stable', '/ ‘steibl/', 'a.稳定的，不变的');
INSERT INTO `cet4` VALUES ('cet4_3084', '　　stable', '/ ‘steibl/', 'n.厩，马厩，牛棚');
INSERT INTO `cet4` VALUES ('cet4_3085', '　　stack', '/ stæk/', 'n.堆，垛 vt.堆积');
INSERT INTO `cet4` VALUES ('cet4_3086', '　　staff', '/ sta:f/', 'n.工作人员；参谋');
INSERT INTO `cet4` VALUES ('cet4_3087', '　　stage', '/ steidʒ/', 'n.舞台；戏剧；阶段');
INSERT INTO `cet4` VALUES ('cet4_3088', '　　stain', '/ stein/', 'vt.沾污；给…着色');
INSERT INTO `cet4` VALUES ('cet4_3089', '　　stair', '/ steə/', 'n.楼梯');
INSERT INTO `cet4` VALUES ('cet4_3090', '　　stake', '/ steik/', 'n.桩；赌金；奖品');
INSERT INTO `cet4` VALUES ('cet4_3091', '　　stale', '/ steil/', 'n.陈腐的；走了气的');
INSERT INTO `cet4` VALUES ('cet4_3092', '　　static', '/ ‘stætikl/', 'a.静的；静态的');
INSERT INTO `cet4` VALUES ('cet4_3093', '　　statistical', '/ stə’tistikl/', 'a.统计的，统计学的');
INSERT INTO `cet4` VALUES ('cet4_3094', '　　statue', '/ ‘stætju:/', 'n.塑像，雕像，铸像');
INSERT INTO `cet4` VALUES ('cet4_3095', '　　status', '/ ‘steitəs/', 'n.地位，身分');
INSERT INTO `cet4` VALUES ('cet4_3096', '　　steady', '/ ‘stedi/', 'a.稳固的 vt.使稳定');
INSERT INTO `cet4` VALUES ('cet4_3097', '　　steam', '/ sti:m/', 'n.蒸汽 vi.蒸发 vt.蒸');
INSERT INTO `cet4` VALUES ('cet4_3098', '　　steamer', '/ ‘sti:mə/', 'n.轮船，汽船');
INSERT INTO `cet4` VALUES ('cet4_3099', '　　steel', '/ ‘sti:l/', 'n.钢，钢铁');
INSERT INTO `cet4` VALUES ('cet4_3100', '　　steep', '/ sti:p/', 'a.险峻的，陡峭的');
INSERT INTO `cet4` VALUES ('cet4_3101', '　　steer', '/ stiə/', 'vt.&vi.驾驶');
INSERT INTO `cet4` VALUES ('cet4_3102', '　　stem', '/ stem/', 'n.茎，(树)干 vi.起源');
INSERT INTO `cet4` VALUES ('cet4_3103', '　　sticky', '/ ‘stiki/', 'a.粘性的；胶粘的');
INSERT INTO `cet4` VALUES ('cet4_3104', '　　stiff', '/ stif/', 'a.硬的；僵直的');
INSERT INTO `cet4` VALUES ('cet4_3105', '　　stimulate', '/ ‘stimjuleit/', 'vt.刺激，激励，激发');
INSERT INTO `cet4` VALUES ('cet4_3106', '　　sting', '/ stiŋ/', 'vt.刺；刺痛 vi.&n.刺');
INSERT INTO `cet4` VALUES ('cet4_3107', '　　stir', '/ stə:/', 'vt.动；拨动；激动');
INSERT INTO `cet4` VALUES ('cet4_3108', '　　stock', '/ stɔk/', 'n.原料；库存品；股本');
INSERT INTO `cet4` VALUES ('cet4_3109', '　　stocking', '/ ‘stɔkiŋ/', 'n.长(统)袜');
INSERT INTO `cet4` VALUES ('cet4_3110', '　　stoop', '/ stu:p/', 'vi.俯身；弯身 n.弯腰');
INSERT INTO `cet4` VALUES ('cet4_3111', '　　storage', '/ ‘stɔ:ridʒ/', 'n.贮藏；贮藏量');
INSERT INTO `cet4` VALUES ('cet4_3112', '　　store', '/ stɔ:/', 'n.贮藏；贮存品；商店');
INSERT INTO `cet4` VALUES ('cet4_3113', '　　storey', '/ ‘stɔ:ri/', 'n.(层)楼');
INSERT INTO `cet4` VALUES ('cet4_3114', '　　stove', '/ stəuv/', 'n.炉，火炉，电炉');
INSERT INTO `cet4` VALUES ('cet4_3115', '　　strain', '/ ‘strein/', 'vt.拉紧 vi.尽力');
INSERT INTO `cet4` VALUES ('cet4_3116', '　　strange', '/ streindʒ/', 'a.陌生的；奇怪的');
INSERT INTO `cet4` VALUES ('cet4_3117', '　　stranger', '/ ‘streindʒə/', 'n.陌生人；新来者');
INSERT INTO `cet4` VALUES ('cet4_3118', '　　strap', '/ stræp/', 'n.带子 vt.捆扎');
INSERT INTO `cet4` VALUES ('cet4_3119', '　　strategy', '/ ‘strætidʒi/', 'n.战略；策略');
INSERT INTO `cet4` VALUES ('cet4_3120', '　　straw', '/ strɔ:/', 'n.稻草，麦杆吸管');
INSERT INTO `cet4` VALUES ('cet4_3121', '　　strengthen', '/ ‘streŋθən/', 'vt.加强，巩固');
INSERT INTO `cet4` VALUES ('cet4_3122', '　　stress', '/ stres/', 'n.压力；重音 vt.着重');
INSERT INTO `cet4` VALUES ('cet4_3123', '　　stretch', '/ stretʃ/', 'vt.伸展 vi.伸 n.伸展');
INSERT INTO `cet4` VALUES ('cet4_3124', '　　string', '/ striŋ/', 'n.线，细绳；一串');
INSERT INTO `cet4` VALUES ('cet4_3125', '　　strip', '/ strip/', 'vt.剥；夺去 n.条带');
INSERT INTO `cet4` VALUES ('cet4_3126', '　　stripe', '/ straip/', 'n.条纹，条子');
INSERT INTO `cet4` VALUES ('cet4_3127', '　　stroke', '/ strəuk/', 'n.打，击；鸣声；中风');
INSERT INTO `cet4` VALUES ('cet4_3128', '　　stroke', '/ strəuk/', 'vt.&n.抚，摩，捋');
INSERT INTO `cet4` VALUES ('cet4_3129', '　　structural', '/ ‘strΛktʃərəl/', 'a.结构的，构造的');
INSERT INTO `cet4` VALUES ('cet4_3130', '　　stuff', '/ stΛf/', 'n.材料 vt.装，填，塞');
INSERT INTO `cet4` VALUES ('cet4_3131', '　　submarine', '/ ‘sΛbməri:n/', 'a.水下的 n.潜水艇');
INSERT INTO `cet4` VALUES ('cet4_3132', '　　submerge', '/ sΛb’mə:dʒ/', 'vt.浸没 vi.潜入水中');
INSERT INTO `cet4` VALUES ('cet4_3133', '　　submit', '/ sΛb’mit/', 'vt.使服从 vi.服从');
INSERT INTO `cet4` VALUES ('cet4_3134', '　　subsequent', '/ ‘sΛbsikwənt/', 'a.随后的，后来的');
INSERT INTO `cet4` VALUES ('cet4_3135', '　　substance', '/ ‘sΛbstəns/', 'n.物质；实质；本旨');
INSERT INTO `cet4` VALUES ('cet4_3136', '　　substantial', '/ səb’stænʃəl/', 'a.物质的；坚固的');
INSERT INTO `cet4` VALUES ('cet4_3137', '　　substitute', '/ ‘sΛbstitju:t/', 'n.代替人 vt.用…代替');
INSERT INTO `cet4` VALUES ('cet4_3138', '　　subtract', '/ səb’trækt/', 'vt.减，减去，去掉');
INSERT INTO `cet4` VALUES ('cet4_3139', '　　subway', '/ ‘sΛbwei/', 'n.地道；地下铁路');
INSERT INTO `cet4` VALUES ('cet4_3140', '　　succession', '/ sək’seʃən/', 'n.连续；继任，继承');
INSERT INTO `cet4` VALUES ('cet4_3141', '　　successive', '/ sək’sesiv/', 'a.连续的；接连的');
INSERT INTO `cet4` VALUES ('cet4_3142', '　　suck', '/ sΛk/', 'vt.吸，吮，啜；吸收');
INSERT INTO `cet4` VALUES ('cet4_3143', '　　sufficient', '/ sə’fiʃənt/', 'a.足够的，充分的');
INSERT INTO `cet4` VALUES ('cet4_3144', '　　suit', '/ sju:t/', 'n.起拆，诉讼【其动词形式为sue】 vt.适合');
INSERT INTO `cet4` VALUES ('cet4_3145', '　　sulfur', '/ ‘sΛlfə/', 'n.硫(磺)，硫黄');
INSERT INTO `cet4` VALUES ('cet4_3146', '　　sulphur', '/ ‘sΛlfə/', 'n.硫(磺)，硫黄');
INSERT INTO `cet4` VALUES ('cet4_3147', '　　sum', '/ sΛm/', 'n.总数；金额 vi.共计');
INSERT INTO `cet4` VALUES ('cet4_3148', '　　summarize', '/ ‘sΛməraiz/', 'vt.概括，概述，总结');
INSERT INTO `cet4` VALUES ('cet4_3149', '　　superficial', '/ sju:pə’fiʃəl/', 'a.表面的；肤浅的');
INSERT INTO `cet4` VALUES ('cet4_3150', '　　superior', '/ sju:’piəriə/', 'a.较高的；优越的');
INSERT INTO `cet4` VALUES ('cet4_3151', '　　supplement', '/ ‘sΛplimənt/', 'n.&vt.增补，补充');
INSERT INTO `cet4` VALUES ('cet4_3152', '　　suppose', '/ sə’pəuz/', 'vt.猜想；假定；让');
INSERT INTO `cet4` VALUES ('cet4_3153', '　　supreme', '/ sju:’pri:m/', 'a.最高的；最大的');
INSERT INTO `cet4` VALUES ('cet4_3154', '　　surgery', '/ ‘sə:dʒəri/', 'n.外科，外科手术');
INSERT INTO `cet4` VALUES ('cet4_3155', '　　surrender', '/ sə’rendə/', 'vt.交出 vi.投降');
INSERT INTO `cet4` VALUES ('cet4_3156', '　　surroundings', '/ sə’raundiŋz/', 'n.周围的事物，环境');
INSERT INTO `cet4` VALUES ('cet4_3157', '　　survey', '/ sə:’vei/', 'vt.俯瞰；检查；测量');
INSERT INTO `cet4` VALUES ('cet4_3158', '　　survive', '/ sə’vaiv/', 'vt.幸免于 vi.活下来');
INSERT INTO `cet4` VALUES ('cet4_3159', '　　suspect', '/ səs’pekt, ‘sΛspekt/', 'vt.怀疑 vi.疑心');
INSERT INTO `cet4` VALUES ('cet4_3160', '　　suspend', '/ səs’pend/', 'vt.吊，悬；推迟');
INSERT INTO `cet4` VALUES ('cet4_3161', '　　suspicion', '/ səs’piʃən/', 'n.怀疑，疑心，猜疑');
INSERT INTO `cet4` VALUES ('cet4_3162', '　　suspicious', '/ səs’piʃəs/', 'adj.怀疑的；可疑的');
INSERT INTO `cet4` VALUES ('cet4_3163', '　　sustain', '/ səs’tein/', 'vt.支撑；供养；忍受');
INSERT INTO `cet4` VALUES ('cet4_3164', '　　swallow', '/ ‘swɔləu/', 'n.燕子');
INSERT INTO `cet4` VALUES ('cet4_3165', '　　swallow', '/ ‘swɔləu/', 'vt.&vi.吞下，咽下');
INSERT INTO `cet4` VALUES ('cet4_3166', '　　sway', '/ swei/', 'vi.摇动 vt.摇；摇动');
INSERT INTO `cet4` VALUES ('cet4_3167', '　　swear', '/ sweə/', 'vt.宣(誓) vi.诅咒');
INSERT INTO `cet4` VALUES ('cet4_3168', '　　sweater', '/ ‘swetə/', 'n.厚运动衫，毛线衫');
INSERT INTO `cet4` VALUES ('cet4_3169', '　　sweep', '/ swi:p/', 'vt.扫；刮起；扫过');
INSERT INTO `cet4` VALUES ('cet4_3170', '　　swell', '/ swel/', 'vi.膨胀；隆起；增长');
INSERT INTO `cet4` VALUES ('cet4_3171', '　　swift', '/ swift/', 'a.快的；反应快的');
INSERT INTO `cet4` VALUES ('cet4_3172', '　　swing', '/ swiŋ/', 'vi.摇摆；回转 n.摇摆');
INSERT INTO `cet4` VALUES ('cet4_3173', '　　switch', '/ switʃ/', 'n.开关；转换 vt.转换');
INSERT INTO `cet4` VALUES ('cet4_3174', '　　sword', '/ sɔ:d/', 'n.剑，刀');
INSERT INTO `cet4` VALUES ('cet4_3175', '　　symbol', '/ ‘simbəl/', 'n.象征；符号，记号');
INSERT INTO `cet4` VALUES ('cet4_3176', '　　sympathetic', '/ simpə’θetik/', 'a.同情的；和谐的');
INSERT INTO `cet4` VALUES ('cet4_3177', '　　sympathize', '/ ‘simpəθaiz/', 'vi.同情；同感，共鸣');
INSERT INTO `cet4` VALUES ('cet4_3178', '　　synthetic', '/ sin’θetik/', 'a.综合的；合成的');
INSERT INTO `cet4` VALUES ('cet4_3179', '　　systematic(al)', '/ sisti’mætik(əl)/', 'a.有系统的；有计划的');
INSERT INTO `cet4` VALUES ('cet4_3182', 'tag', '/ tæg/', 'n.附加语；标签');
INSERT INTO `cet4` VALUES ('cet4_3183', '　　tailor', '/ ‘teilə/', 'n.裁缝 vt.裁制衣服');
INSERT INTO `cet4` VALUES ('cet4_3187', '　　tale', '/ teil/', 'n.故事，传说');
INSERT INTO `cet4` VALUES ('cet4_3188', '　　talent', '/ ‘tælənt/', 'n.天才；才能；人才');
INSERT INTO `cet4` VALUES ('cet4_3189', '　　talk', '/ tɔ:k/', 'vi.讲话 vt.谈论');
INSERT INTO `cet4` VALUES ('cet4_3190', '　　tame', '/ teim/', 'a.驯服的；顺从的');
INSERT INTO `cet4` VALUES ('cet4_3191', '　　tank', '/ tæŋk/', 'n.坦克；大容器，槽');
INSERT INTO `cet4` VALUES ('cet4_3192', '　　tap', '/ tæp/', 'vt.&vi.&n.轻叩');
INSERT INTO `cet4` VALUES ('cet4_3193', '　　tap', '/ tæp/', 'n.塞子；龙头 vt.开发');
INSERT INTO `cet4` VALUES ('cet4_3194', '　　taste', '/ teist/', 'n.味觉，品味');
INSERT INTO `cet4` VALUES ('cet4_3195', '　　technical', '/ ‘teknikəl/', 'a.技术的，工艺的');
INSERT INTO `cet4` VALUES ('cet4_3196', '　　technician', '/ tek’niʃən/', 'n.技术员，技师');
INSERT INTO `cet4` VALUES ('cet4_3197', '　　tedious', '/ ‘ti:diəs/', 'a.冗长乏味的，沉闷的');
INSERT INTO `cet4` VALUES ('cet4_3198', '　　telegram', '/ ‘teligræm/', 'n.电报');
INSERT INTO `cet4` VALUES ('cet4_3199', '　　telescope', '/ ‘teliskəup/', 'n.望远镜');
INSERT INTO `cet4` VALUES ('cet4_3200', '　　temple', '/ ‘templ/', 'n.圣堂，神殿，庙宇');
INSERT INTO `cet4` VALUES ('cet4_3201', '　　temporary', '/ ‘tempərəri/', 'a.暂时的，临时的');
INSERT INTO `cet4` VALUES ('cet4_3202', '　　tempt', '/ tempt/', 'vt.引诱，诱惑；吸引');
INSERT INTO `cet4` VALUES ('cet4_3203', '　　temptation', '/ temp’teiʃən/', 'n.诱惑，引诱');
INSERT INTO `cet4` VALUES ('cet4_3204', '　　tend', '/ tend/', 'vt.照管，照料，护理');
INSERT INTO `cet4` VALUES ('cet4_3205', '　　tend', '/ tend/', 'vi.走向，趋向；倾向');
INSERT INTO `cet4` VALUES ('cet4_3206', '　　tendency', '/ ‘tendənsi/', 'n.趋向，趋势，倾向');
INSERT INTO `cet4` VALUES ('cet4_3207', '　　tender', '/ ‘tendə/', 'a.嫩的；脆弱的');
INSERT INTO `cet4` VALUES ('cet4_3208', '　　tense', '/ tens/', 'n.时态，时');
INSERT INTO `cet4` VALUES ('cet4_3209', '　　tense', '/ tens/', 'a.拉紧的，绷紧的');
INSERT INTO `cet4` VALUES ('cet4_3210', '　　tension', '/ ‘tenʃən/', 'n. 紧张,不安,拉紧,张力');
INSERT INTO `cet4` VALUES ('cet4_3211', '　　terminal', '/ ‘tə:minl/', 'a.末端的 n.末端');
INSERT INTO `cet4` VALUES ('cet4_3212', '　　terrible', '/ ‘terəbl/', 'a.可怕的；极度的');
INSERT INTO `cet4` VALUES ('cet4_3213', '　　territory', '/ ‘teritəri/', 'n.领土，版图；领域');
INSERT INTO `cet4` VALUES ('cet4_3214', '　　terror', '/ ‘terə/', 'n.恐怖，惊骇');
INSERT INTO `cet4` VALUES ('cet4_3215', '　　textile', '/ ‘tekstail/', 'n. 纺织品 a.纺织的');
INSERT INTO `cet4` VALUES ('cet4_3216', '　　theoretical', '/ θiə’retikəl/', 'a.理论(上)的');
INSERT INTO `cet4` VALUES ('cet4_3217', '　　thereby', '/ ‘ðeə’bai/', 'ad.因此，从而，由此');
INSERT INTO `cet4` VALUES ('cet4_3218', '　　therefore', '/ ‘ðeəfɔ:/', 'ad.因此，所以【绝对不可以直接连接两个独立的句子】');
INSERT INTO `cet4` VALUES ('cet4_3219', '　　thermometer', '/ θə’mɔmitə/', 'n.温度计，寒暑表');
INSERT INTO `cet4` VALUES ('cet4_3220', '　　thickness', '/ ‘θiknis/', 'n.厚(度)；密(度)');
INSERT INTO `cet4` VALUES ('cet4_3221', '　　thorough', '/ ‘θΛrə/', 'a.彻底的；详尽的');
INSERT INTO `cet4` VALUES ('cet4_3222', '　　thoughtful', '/ ‘θɔ:tful/', 'a.沉思的；体贴的');
INSERT INTO `cet4` VALUES ('cet4_3223', '　　thread', '/ θred/', 'n.线；丝；螺纹；头绪');
INSERT INTO `cet4` VALUES ('cet4_3224', '　　threat', '/ θret/', 'n.威胁，恐吓，凶兆');
INSERT INTO `cet4` VALUES ('cet4_3225', '　　threaten', '/ ‘θretn/', 'vt.&vi.威胁，恐吓');
INSERT INTO `cet4` VALUES ('cet4_3226', '　　thrive', '/ θraiv/', 'vi.兴旺，繁荣，旺盛');
INSERT INTO `cet4` VALUES ('cet4_3227', '　　throat', '/ θrəut/', 'n.咽喉，喉咙；嗓音');
INSERT INTO `cet4` VALUES ('cet4_3228', '　　throughout', '/ θru:’aut/', 'prep.遍及 ad.到处');
INSERT INTO `cet4` VALUES ('cet4_3229', '　　thrust', '/ θrΛst/', 'vt.插，刺 n.插；讽刺');
INSERT INTO `cet4` VALUES ('cet4_3230', '　　thunder', '/ ‘θΛndə/', 'n.雷 vi.打雷 vt.吼出');
INSERT INTO `cet4` VALUES ('cet4_3231', '　　thus', '/ ðΛs/', 'ad.如此，这样；因而');
INSERT INTO `cet4` VALUES ('cet4_3232', '　　tide', '/ taid/', 'n.潮，潮汐；潮流');
INSERT INTO `cet4` VALUES ('cet4_3233', '　　tidy', '/ ‘taidi/', 'a.整洁的；整齐的');
INSERT INTO `cet4` VALUES ('cet4_3234', '　　tin', '/ tin/', 'n.锡；罐头');
INSERT INTO `cet4` VALUES ('cet4_3235', '　　tip', '/ tip/', 'vt.轻击 vi.给小费');
INSERT INTO `cet4` VALUES ('cet4_3236', '　　tire', '/ ‘taiə/', 'vi.疲劳，累；厌倦');
INSERT INTO `cet4` VALUES ('cet4_3237', '　　tissue', '/ ‘tisju:/', 'n.薄绢；薄纸；组织');
INSERT INTO `cet4` VALUES ('cet4_3238', '　　toast', '/ təust/', 'n.烤面包 vt.烘，烤');
INSERT INTO `cet4` VALUES ('cet4_3239', '　　toast', '/ təust/', 'n.祝酒；祝酒词');
INSERT INTO `cet4` VALUES ('cet4_3240', '　　toe', '/ təu/', 'n.脚趾，足尖');
INSERT INTO `cet4` VALUES ('cet4_3241', '　　tɔilet', '/ ‘tɔilit/', 'n.厕所，盥洗室，浴室');
INSERT INTO `cet4` VALUES ('cet4_3242', '　　tolerance', '/ ‘tɔlərəns/', 'n.忍受，容忍；公差');
INSERT INTO `cet4` VALUES ('cet4_3243', '　　tolerate', '/ ‘tɔləreit/', 'vt.忍受，容忍，宽恕');
INSERT INTO `cet4` VALUES ('cet4_3244', '　　tone', '/ təun/', 'n.音；腔调；声调');
INSERT INTO `cet4` VALUES ('cet4_3245', '　　torch', '/ tɔ:tʃ/', 'n.火炬，火把；手电筒');
INSERT INTO `cet4` VALUES ('cet4_3246', '　　torture', '/ ‘tɔ:tʃə/', 'n.拷问；折磨 vt.拷打');
INSERT INTO `cet4` VALUES ('cet4_3247', '　　total', '/ ‘təutl/', 'a.总的 vi.合计，总共');
INSERT INTO `cet4` VALUES ('cet4_3248', '　　touch', '/ tΛtʃ/', 'vt.触摸；触动；感动 n.触');
INSERT INTO `cet4` VALUES ('cet4_3249', '　　tough', '/ tΛf/', 'a.坚韧的；健壮的');
INSERT INTO `cet4` VALUES ('cet4_3250', '　　tour', '/ tuə/', 'n.&vi.旅行，游历');
INSERT INTO `cet4` VALUES ('cet4_3251', '　　tourist', '/ ‘tuərist/', 'n.旅游者，观光者');
INSERT INTO `cet4` VALUES ('cet4_3252', '　　towel', '/ ‘tauəl/', 'n.毛巾，手巾');
INSERT INTO `cet4` VALUES ('cet4_3253', '　　tower', '/ ‘tauə/', 'n.塔 vi.屹立，高耸');
INSERT INTO `cet4` VALUES ('cet4_3254', '　　trace', '/ treis/', 'n.痕迹；丝毫 vt.跟踪');
INSERT INTO `cet4` VALUES ('cet4_3255', '　　track', '/ træk/', 'n.行踪；路径；轨道');
INSERT INTO `cet4` VALUES ('cet4_3256', '　　tractor', '/ ‘træktə/', 'n.拖拉机；牵引车');
INSERT INTO `cet4` VALUES ('cet4_3257', '　　trade', '/ treid/', 'n.贸易；职业 vi.交易');
INSERT INTO `cet4` VALUES ('cet4_3258', '　　traffic', '/ ‘træfik/', 'n.交通，通行；交通量');
INSERT INTO `cet4` VALUES ('cet4_3259', '　　tragedy', '/ ‘trædʒidi/', 'n.悲剧；惨事，惨案');
INSERT INTO `cet4` VALUES ('cet4_3260', '　　trail', '/ treil/', 'n.痕迹；小径 vt.跟踪');
INSERT INTO `cet4` VALUES ('cet4_3261', '　　transfer', '/ træns’fə:/', 'vt.转移；调动vi.转移');
INSERT INTO `cet4` VALUES ('cet4_3262', '　　transform', '/ træns’fɔ:m/', 'vt.改变；改造；变换');
INSERT INTO `cet4` VALUES ('cet4_3263', '　　transformation', '/ trænsfə’meiʃən/', 'n.变化；改造；转变');
INSERT INTO `cet4` VALUES ('cet4_3264', '　　transformer', '/ træns’fɔ:mə/', 'n.变压器，转换器');
INSERT INTO `cet4` VALUES ('cet4_3265', '　　transistor', '/ træn’sistə/', 'n.晶体管');
INSERT INTO `cet4` VALUES ('cet4_3266', '　　transmission', '/ trænz’miʃən/', 'n.传送；传动；发射');
INSERT INTO `cet4` VALUES ('cet4_3267', '　　transmit', '/ trænz’mit/', 'vt.传送，传达；发射');
INSERT INTO `cet4` VALUES ('cet4_3268', '　　transparent', '/ træns’peərənt/', 'a.透明的；易识破的');
INSERT INTO `cet4` VALUES ('cet4_3269', '　　transport', '/ træns’pɔ:t/', 'vt.运输 n.运输');
INSERT INTO `cet4` VALUES ('cet4_3270', '　　transportation', '/ trænspɔ:’teiʃən/', 'n.运输，运送，客运');
INSERT INTO `cet4` VALUES ('cet4_3271', '　　trap', '/ træp/', 'n.陷阱；诡计 vt.诱骗');
INSERT INTO `cet4` VALUES ('cet4_3272', '　　tray', '/ trei/', 'n.(浅)盘，托盘，碟');
INSERT INTO `cet4` VALUES ('cet4_3273', '　　treasure', '/ ‘treʒə/', 'n.财富；珍宝 vt.珍视');
INSERT INTO `cet4` VALUES ('cet4_3274', '　　treat', '/ tri:t/', 'vt.对待；处理 n.款待');
INSERT INTO `cet4` VALUES ('cet4_3275', '　　treatment', '/ ‘tri:tmənt/', 'n.待遇；治疗，疗法');
INSERT INTO `cet4` VALUES ('cet4_3276', '　　treaty', '/ ‘tri:ti/', 'n.条约；协议，协定');
INSERT INTO `cet4` VALUES ('cet4_3277', '　　tremble', '/ ‘trembl/', 'vi.发抖，哆嗦；摇动');
INSERT INTO `cet4` VALUES ('cet4_3278', '　　tremendous', '/ tri’mendəs/', 'a.极大的，非常的');
INSERT INTO `cet4` VALUES ('cet4_3279', '　　trend', '/ trend/', 'vi.伸向；倾向 n.倾向');
INSERT INTO `cet4` VALUES ('cet4_3280', '　　trial', '/ ‘traiəl/', 'n.试，试验；审判');
INSERT INTO `cet4` VALUES ('cet4_3281', '　　triangle', '/ ‘traiængl/', 'n.三角(形)');
INSERT INTO `cet4` VALUES ('cet4_3282', '　　trick', '/ trik/', 'n.诡计；窍门 vt.哄骗');
INSERT INTO `cet4` VALUES ('cet4_3283', '　　trim', '/ trim/', 'a.整齐的 vt.使整齐');
INSERT INTO `cet4` VALUES ('cet4_3284', '　　triumph', '/ ‘traiəmf/', 'n.凯旋；胜利 vi.成功');
INSERT INTO `cet4` VALUES ('cet4_3285', '　　troop', '/ tru:p/', 'n.军队；一群，大量');
INSERT INTO `cet4` VALUES ('cet4_3286', '　　tropical', '/ ‘trɔpikəl/', 'a.热带的');
INSERT INTO `cet4` VALUES ('cet4_3287', '　　troublesome', '/ ‘trΛblsəm/', 'a.令人烦恼的；麻烦的');
INSERT INTO `cet4` VALUES ('cet4_3288', '　　trumpet', '/ ‘trΛmpit/', 'n.喇叭，小号');
INSERT INTO `cet4` VALUES ('cet4_3289', '　　trunk', '/ trΛŋk/', 'n.树干；大衣箱，皮箱');
INSERT INTO `cet4` VALUES ('cet4_3290', '　　trust', '/ trΛst/', 'n.信任 vt.相信；委托');
INSERT INTO `cet4` VALUES ('cet4_3291', '　　truth', '/ tru:θ/', 'n.真理；真实；真实性');
INSERT INTO `cet4` VALUES ('cet4_3292', '　　tube', '/ tju:b/', 'n.管；电子管，显像管');
INSERT INTO `cet4` VALUES ('cet4_3293', '　　tune', '/ tju:n/', 'n.调子；和谐 vt.调谐');
INSERT INTO `cet4` VALUES ('cet4_3294', '　　tunnel', '/ ‘tΛnl/', 'n.隧道，坑道，地道');
INSERT INTO `cet4` VALUES ('cet4_3295', '　　turbine', '/ ‘tə:bin/', 'n.叶轮机，汽轮机');
INSERT INTO `cet4` VALUES ('cet4_3296', '　　twin', '/ twin/', 'a.孪生的 n.孪生儿');
INSERT INTO `cet4` VALUES ('cet4_3297', '　　twist', '/ twist/', 'vt.捻；拧 vi.&n.扭弯');
INSERT INTO `cet4` VALUES ('cet4_3298', '　　type', '/ taip/', 'n.型，类型 vi.打字');
INSERT INTO `cet4` VALUES ('cet4_3299', '　　typewriter', '/ ‘taipraitə/', 'n.打字机');
INSERT INTO `cet4` VALUES ('cet4_3300', '　　typical', '/ ‘tipikəl/', 'a.典型的，代表性的');
INSERT INTO `cet4` VALUES ('cet4_3301', '　　typist', '/ ‘taipist/', 'n.打字员');
INSERT INTO `cet4` VALUES ('cet4_3302', 'tyre', '/ ‘taiə/', 'n.轮胎，车胎');
INSERT INTO `cet4` VALUES ('cet4_3305', '　　ultimate', '/ ‘Λltimit/', 'a.最后的，最终的');
INSERT INTO `cet4` VALUES ('cet4_3306', '　　unconscious', '/ Λn’kɔʃəs/', 'a.不省人事的');
INSERT INTO `cet4` VALUES ('cet4_3307', '　　uncover', '/ Λn’kΛvə/', 'vt.揭开…的盖子');
INSERT INTO `cet4` VALUES ('cet4_3308', '　　undergo', '/ Λndə’gəu/', 'vt.经历，经受，忍受');
INSERT INTO `cet4` VALUES ('cet4_3309', '　　undergraduate', '/ Λndə’grædjuit/', 'n.大学在校生');
INSERT INTO `cet4` VALUES ('cet4_3310', '　　underline', '/ Λndə’lain/', 'vt.划线于…之下');
INSERT INTO `cet4` VALUES ('cet4_3311', '　　underneath', '/ Λndə’ni:θ/', 'ad.在下面，在底下');
INSERT INTO `cet4` VALUES ('cet4_3312', '　　undertake', '/ Λndə’teik/', 'vt.从事；承担；保证');
INSERT INTO `cet4` VALUES ('cet4_3313', '　　undo', '/ ‘Λn’du:/', 'vt.解开，打开；取消');
INSERT INTO `cet4` VALUES ('cet4_3314', '　　undoubtedly', '/ Λn’dautidli/', 'ad.无容置疑，肯定地');
INSERT INTO `cet4` VALUES ('cet4_3315', '　　uneasy', '/ Λn’i:zi/', 'a.心神不安的，忧虑的');
INSERT INTO `cet4` VALUES ('cet4_3316', '　　unexpected', '/ ‘Λniks’pektid/', 'a.想不到的，意外的');
INSERT INTO `cet4` VALUES ('cet4_3317', '　　uniform', '/ ‘ju:nifɔ:m/', 'a.一样的 n.制服');
INSERT INTO `cet4` VALUES ('cet4_3318', '　　union', '/ ‘ju:njən/', 'n.联合；团结；协会');
INSERT INTO `cet4` VALUES ('cet4_3319', '　　unique', '/ ju:’ni:k/', 'a.唯一的，独一无二的');
INSERT INTO `cet4` VALUES ('cet4_3320', '　　unit', '/ ‘ju:nit/', 'n.单位；单元；部件');
INSERT INTO `cet4` VALUES ('cet4_3321', '　　unite', '/ ju’nait/', 'vi.联合 vt.使联合');
INSERT INTO `cet4` VALUES ('cet4_3322', '　　unity', '/ ‘ju:niti/', 'n.单一；统一；团结');
INSERT INTO `cet4` VALUES ('cet4_3323', '　　universal', '/ ju:ni’və:səl/', 'a.宇宙的；普遍的');
INSERT INTO `cet4` VALUES ('cet4_3324', '　　unknown', '/ ‘Λn’nəun/', 'a.不知道的；未知的');
INSERT INTO `cet4` VALUES ('cet4_3325', '　　unless', '/ ‘Λn’les/', 'conj.除非，如果不');
INSERT INTO `cet4` VALUES ('cet4_3326', '　　unlike', '/ ‘Λn’laik/', 'a.不同的 prep.不象…');
INSERT INTO `cet4` VALUES ('cet4_3327', '　　unlikely', '/ Λn’laikli/', 'a.未必的，未必可能的');
INSERT INTO `cet4` VALUES ('cet4_3328', '　　unload', '/ Λn’ləud/', 'vt.卸(货) vi.卸货');
INSERT INTO `cet4` VALUES ('cet4_3329', '　　upper', '/ ‘Λpə/', 'a.上面的；地位较高的');
INSERT INTO `cet4` VALUES ('cet4_3330', '　　upright', '/ ‘Λprait/', 'a.垂直的；正直的');
INSERT INTO `cet4` VALUES ('cet4_3331', '　　upset', '/ Λp’set/', 'vt.弄翻，打翻，倾覆');
INSERT INTO `cet4` VALUES ('cet4_3332', '　　up-to-date', '/ ‘Λptə’deit/', 'a.直到最近的，现代的');
INSERT INTO `cet4` VALUES ('cet4_3333', '　　upward', '/ ‘Λpwəd/', 'a.向上的，上升的');
INSERT INTO `cet4` VALUES ('cet4_3334', '　　urban', '/ ‘ə:bən/', 'a. 都市的,住在都市的');
INSERT INTO `cet4` VALUES ('cet4_3335', '　　urge', '/ ə:dʒ/', 'vt.推进；催促 n.冲动');
INSERT INTO `cet4` VALUES ('cet4_3336', '　　urgent', '/ ‘ə:dʒənt/', 'a.紧急的；强求的');
INSERT INTO `cet4` VALUES ('cet4_3337', '　　usage', '/ ‘ju:zidʒ/', 'n.使用，对待；惯用法');
INSERT INTO `cet4` VALUES ('cet4_3338', '　　utility', '/ ju:’tiliti/', 'n.效用，有用，实用');
INSERT INTO `cet4` VALUES ('cet4_3339', '　　utilize', '/ ‘ju:tilaiz/', 'vt.利用');
INSERT INTO `cet4` VALUES ('cet4_3340', '　　utmost', '/ ‘Λtməust/', 'a.最远的 n.极限');
INSERT INTO `cet4` VALUES ('cet4_3341', '　　utter', '/ ‘Λtə/', 'a.完全的，彻底的');
INSERT INTO `cet4` VALUES ('cet4_3342', 'utter', '/ ‘Λtə/', 'vt.发出，说，讲');
INSERT INTO `cet4` VALUES ('cet4_3345', '　　vacant', '/ ‘veikənt/', 'a.空的；未被占用的');
INSERT INTO `cet4` VALUES ('cet4_3346', '　　vacuum', '/ ‘vækjuəm/', 'n.真空；真空吸尘器');
INSERT INTO `cet4` VALUES ('cet4_3347', '　　vague', '/ veig/', 'a.模糊的，含糊的');
INSERT INTO `cet4` VALUES ('cet4_3348', '　　vain', '/ vein/', 'a.徒劳的；自负的');
INSERT INTO `cet4` VALUES ('cet4_3349', '　　valid', '/ ‘vælid/', 'a.有效的；正当的');
INSERT INTO `cet4` VALUES ('cet4_3350', '　　value', '/ ‘vælju:/', 'n.价值；价格 vt.评价');
INSERT INTO `cet4` VALUES ('cet4_3351', '　　van', '/ væn/', 'n.大篷车，运货车');
INSERT INTO `cet4` VALUES ('cet4_3352', '　　vanish', '/ ‘væniʃ/', 'vi.突然不见，消失');
INSERT INTO `cet4` VALUES ('cet4_3353', '　　vapour', '/ ‘veipə/', 'n.汽，蒸气');
INSERT INTO `cet4` VALUES ('cet4_3354', '　　variable', '/ ‘veəriəbl/', 'a.易变的 n.变量');
INSERT INTO `cet4` VALUES ('cet4_3355', '　　variation', '/ veəri’eiʃən/', 'n.变化，变动；变异');
INSERT INTO `cet4` VALUES ('cet4_3356', '　　variety', '/ və’raiəti/', 'n.多样化；种类；变种');
INSERT INTO `cet4` VALUES ('cet4_3357', '　　various', '/ ‘veəriəs/', 'a.各种各样的，不同的');
INSERT INTO `cet4` VALUES ('cet4_3358', '　　vary', '/ ‘veəri/', 'vt.改变；使多样化');
INSERT INTO `cet4` VALUES ('cet4_3359', '　　vast', '/ va:st/', 'a.巨大的；大量的');
INSERT INTO `cet4` VALUES ('cet4_3360', '　　vehicle', '/ ‘vi:ikl/', 'n.车辆，机动车');
INSERT INTO `cet4` VALUES ('cet4_3361', '　　velocity', '/ vi’lɔsiti/', 'n.速度，速率');
INSERT INTO `cet4` VALUES ('cet4_3362', '　　venture', '/ ‘ventʃə/', 'n.&vi.冒险 vt.敢于');
INSERT INTO `cet4` VALUES ('cet4_3363', '　　verify', '/ ‘verifai/', 'vt.证实，查证；证明');
INSERT INTO `cet4` VALUES ('cet4_3364', '　　version', '/ ‘və:ʃən/', 'n.译文；说法；改写本');
INSERT INTO `cet4` VALUES ('cet4_3365', '　　vertical', '/ ‘və:tikəl/', 'a.垂直的，竖式的');
INSERT INTO `cet4` VALUES ('cet4_3366', '　　vessel', '/ ‘vesl/', 'n.容器；船，飞船；管');
INSERT INTO `cet4` VALUES ('cet4_3367', '　　veteran', '/ ‘vetərən/', 'n.老兵，老手');
INSERT INTO `cet4` VALUES ('cet4_3368', '　　via', '/ ‘vaiə/', 'prep.经过；通过');
INSERT INTO `cet4` VALUES ('cet4_3369', '　　vibrate', '/ vai’breit/', 'vt.使颤动 vi.颤动');
INSERT INTO `cet4` VALUES ('cet4_3370', '　　vice', '/ vais/', 'n.罪恶；恶习；缺点');
INSERT INTO `cet4` VALUES ('cet4_3371', '　　vice', '/ vais/', 'n.(老)虎钳');
INSERT INTO `cet4` VALUES ('cet4_3372', '　　vigorous', '/ ‘vigərəs/', 'a.朝气蓬勃的');
INSERT INTO `cet4` VALUES ('cet4_3373', '　　vinegar', '/ ‘vinigə/', 'n.醋');
INSERT INTO `cet4` VALUES ('cet4_3374', '　　violent', '/ ‘vaiələnt/', 'a.猛烈的；狂暴的');
INSERT INTO `cet4` VALUES ('cet4_3375', '　　violet', '/ ‘vaiəlit/', 'n.紫罗兰');
INSERT INTO `cet4` VALUES ('cet4_3376', '　　virtually', '/ ‘və:tjuəli/', 'ad.实际上，事实上');
INSERT INTO `cet4` VALUES ('cet4_3377', '　　virtue', '/ ‘və:tju:/', 'n.善；美德；优点');
INSERT INTO `cet4` VALUES ('cet4_3378', '　　visible', '/ ‘vizəbl/', 'a.可见的，看得见的');
INSERT INTO `cet4` VALUES ('cet4_3379', '　　vision', '/ ‘viʒən/', 'n.视；想象力；梦幻');
INSERT INTO `cet4` VALUES ('cet4_3380', '　　visual', '/ ‘vizjuəl/', 'a.看的；看得见的');
INSERT INTO `cet4` VALUES ('cet4_3381', '　　vital', '/ ‘vaitl/', 'a.生命的；有生命力的');
INSERT INTO `cet4` VALUES ('cet4_3382', '　　vitamin', '/ ‘vitəmin/', 'n.维生素，维他命');
INSERT INTO `cet4` VALUES ('cet4_3383', '　　vivid', '/ ‘vivid/', 'a.鲜艳的；生动的');
INSERT INTO `cet4` VALUES ('cet4_3384', '　　volcano', '/ vɔl’keinəu/', 'n.火山');
INSERT INTO `cet4` VALUES ('cet4_3385', '　　volt', '/ vəult/', 'n.伏特，伏');
INSERT INTO `cet4` VALUES ('cet4_3386', '　　voltage', '/ ‘vaultidʒ/', 'n.电压');
INSERT INTO `cet4` VALUES ('cet4_3387', '　　volume', '/ ‘vɔljum/', 'n.卷，册；容积；音量');
INSERT INTO `cet4` VALUES ('cet4_3388', '　　voluntary', '/ ‘vɔləntəri/', 'a.自愿的，志愿的');
INSERT INTO `cet4` VALUES ('cet4_3389', 'voyage', '/ vɔidʒ/', 'n.&vi.航海，航空 字');
INSERT INTO `cet4` VALUES ('cet4_3392', '　　wage', '/ weidʒ/', 'vt.开展(运动)');
INSERT INTO `cet4` VALUES ('cet4_3393', '　　waggon', '/ ‘wægən/', 'n.四轮运货马车');
INSERT INTO `cet4` VALUES ('cet4_3394', '　　waken', '/ ‘weikən/', 'vi.醒来 vt.弄醒');
INSERT INTO `cet4` VALUES ('cet4_3395', '　　wander', '/ ‘wɔndə/', 'vi.漫游；迷路；离题');
INSERT INTO `cet4` VALUES ('cet4_3396', '　　want', '/ wɔnt/', 'n.需要；缺乏');
INSERT INTO `cet4` VALUES ('cet4_3397', '　　warmth', '/ wɔ:mθ/', 'n.暖和，温暖；热烈');
INSERT INTO `cet4` VALUES ('cet4_3398', '　　water', '/ ‘wɔ:tə/', 'n.水 vt.使湿，灌溉');
INSERT INTO `cet4` VALUES ('cet4_3399', '　　waterproof', '/ ‘wɔ:təpru:f/', 'a.不透水的，防水的');
INSERT INTO `cet4` VALUES ('cet4_3400', '　　wave', '/ weiv/', 'n.波；波涛 vi.波动');
INSERT INTO `cet4` VALUES ('cet4_3401', '　　wax', '/ wæks/', 'n.蜡，蜂蜡');
INSERT INTO `cet4` VALUES ('cet4_3402', '　　weaken', '/ ‘wi:kən/', 'vt.削弱 vi.变弱');
INSERT INTO `cet4` VALUES ('cet4_3403', '　　weakness', '/ ‘wi:knis/', 'n.虚弱，软弱；弱点');
INSERT INTO `cet4` VALUES ('cet4_3404', '　　wear', '/ weə/', 'vt.磨损');
INSERT INTO `cet4` VALUES ('cet4_3405', '　　weave', '/ ‘wi:v/', 'vt.织，编 vi.纺织');
INSERT INTO `cet4` VALUES ('cet4_3406', '　　weed', '/ wi:d/', 'n.杂草，野草 vi.除草');
INSERT INTO `cet4` VALUES ('cet4_3407', '　　weep', '/ wi:p/', 'vi.哭泣，流泪');
INSERT INTO `cet4` VALUES ('cet4_3408', '　　weld', '/ weld/', 'vt.&n.焊接，熔接');
INSERT INTO `cet4` VALUES ('cet4_3409', '　　welfare', '/ ‘welfeə/', 'n.幸福，福利');
INSERT INTO `cet4` VALUES ('cet4_3410', '　　wheat', '/ wi:t/', 'n.小麦');
INSERT INTO `cet4` VALUES ('cet4_3411', '　　wheel', '/ wi:l/', 'n.轮，车轮');
INSERT INTO `cet4` VALUES ('cet4_3412', '　　whilst', '/ ‘wailst/', 'conj.&n.当…的时候');
INSERT INTO `cet4` VALUES ('cet4_3413', '　　whip', '/ wip/', 'vt.鞭笞；搅打 n.鞭子');
INSERT INTO `cet4` VALUES ('cet4_3414', '　　whisper', '/ ‘wispə/', 'vt.低声地讲 vi.低语');
INSERT INTO `cet4` VALUES ('cet4_3415', '　　whistle', '/ ‘wisl/', 'n.口哨 vi.吹口哨');
INSERT INTO `cet4` VALUES ('cet4_3416', '　　wholly', '/ ‘həuli/', 'ad.完全地，全部');
INSERT INTO `cet4` VALUES ('cet4_3417', '　　wicked', '/ ‘wikid/', 'a.坏的；令人厌恶的');
INSERT INTO `cet4` VALUES ('cet4_3418', '　　widen', '/ ‘waidn/', 'vt.加宽 vi.变宽');
INSERT INTO `cet4` VALUES ('cet4_3419', '　　widow', '/ ‘widəu/', 'n.寡妇');
INSERT INTO `cet4` VALUES ('cet4_3420', '　　width', '/ widθ/', 'n.宽阔，广阔；宽度');
INSERT INTO `cet4` VALUES ('cet4_3421', '　　willing', '/ ‘wiliŋ/', 'a.愿意的，心甘情愿的');
INSERT INTO `cet4` VALUES ('cet4_3422', '　　wind', '/ waind/', 'vt.绕，缠绕 vi.卷曲');
INSERT INTO `cet4` VALUES ('cet4_3423', '　　wing', '/ wiŋ/', 'n.翼，翅膀，翅');
INSERT INTO `cet4` VALUES ('cet4_3424', '　　wire', '/ ‘waiə/', 'n.金属线；电缆；电信');
INSERT INTO `cet4` VALUES ('cet4_3425', '　　wit', '/ wit/', 'n.智力，才智，智能');
INSERT INTO `cet4` VALUES ('cet4_3426', '　　withdraw', '/ wið’drɔ:/', 'vt.收回；撤回vi.撤退');
INSERT INTO `cet4` VALUES ('cet4_3427', '　　withstand', '/ wið’stænd/', 'vt.抵挡，反抗');
INSERT INTO `cet4` VALUES ('cet4_3428', '　　witness', '/ ‘witnis/', 'n.证据；证人 vt.目击');
INSERT INTO `cet4` VALUES ('cet4_3429', '　　wooden', '/ ‘wudn/', 'a.木制的；呆板的');
INSERT INTO `cet4` VALUES ('cet4_3430', '　　wool', '/ wul/', 'n.羊毛；毛线，绒线');
INSERT INTO `cet4` VALUES ('cet4_3431', '　　workman', '/ ‘wə:kmən/', 'n.工人，劳动者，工匠');
INSERT INTO `cet4` VALUES ('cet4_3432', '　　workshop', '/ ‘wə:kʃɔp/', 'n.车间，工场；创作室');
INSERT INTO `cet4` VALUES ('cet4_3433', '　　world-wide', '/ ‘wə:ldwaid/', 'a.遍及全球的');
INSERT INTO `cet4` VALUES ('cet4_3434', '　　worm', '/ wə:m/', 'n.虫，蠕虫');
INSERT INTO `cet4` VALUES ('cet4_3435', '　　worship', '/ ‘wə:ʃip/', 'n.礼拜；崇拜 vt.崇拜');
INSERT INTO `cet4` VALUES ('cet4_3436', '　　worst', '/ wə:st/', 'a.最坏的 ad.最坏地');
INSERT INTO `cet4` VALUES ('cet4_3437', '　　worth', '/ wə:θ/', 'a.值…的 n.价值');
INSERT INTO `cet4` VALUES ('cet4_3438', '　　worthless', '/ ‘wə:θlis/', 'a.无价值的，无用的');
INSERT INTO `cet4` VALUES ('cet4_3439', '　　worthwhile', '/ ‘wə:θ’wail/', 'a.值得花时间的');
INSERT INTO `cet4` VALUES ('cet4_3440', '　　worthy', '/ ‘wə:ði/', 'a.有价值的；值得的');
INSERT INTO `cet4` VALUES ('cet4_3441', '　　wound', '/ wu:nd/', 'n.创伤，伤 vt.使受伤');
INSERT INTO `cet4` VALUES ('cet4_3442', '　　wrap', '/ ræp/', 'vt.裹，包，捆 n.披肩');
INSERT INTO `cet4` VALUES ('cet4_3443', '　　wreck', '/ rek/', 'n.失事；残骸 vt.破坏');
INSERT INTO `cet4` VALUES ('cet4_3444', '　　wrist', '/ rist/', 'n.腕，腕关节');
INSERT INTO `cet4` VALUES ('cet4_3445', '　　X-ray', '/ ‘eks’rei/', 'n.X射线，X光');
INSERT INTO `cet4` VALUES ('cet4_3446', '　　yard', '/ ja:d/', 'n.院子，庭院；场地');
INSERT INTO `cet4` VALUES ('cet4_3447', '　　yard', '/ ja:d/', 'n.码');
INSERT INTO `cet4` VALUES ('cet4_3448', '　　yawn', '/ jɔ:n/', 'vi.打呵欠 n.呵欠');
INSERT INTO `cet4` VALUES ('cet4_3449', '　　yearly', '/ ‘jə:li/', 'a.每年的 ad.一年一度');
INSERT INTO `cet4` VALUES ('cet4_3450', '　　yield', '/ ji:ld/', 'vt.&vi.出产 n.产量');
INSERT INTO `cet4` VALUES ('cet4_3451', 'youth', '/ ju:θ/', 'n.青春；青年们；青年');
INSERT INTO `cet4` VALUES ('cet4_3452', 'zone', '/ zəun/', 'n.地区，区域，范围');
INSERT INTO `cet4` VALUES ('cet6_0003', 'abnormal', '/ æb’nɔ:məl/', 'a.不正常的；变态的');
INSERT INTO `cet4` VALUES ('cet6_0004', 'aggravate', '/ ‘ægrəveit/', 'vt. 使恶化,使更加重');
INSERT INTO `cet4` VALUES ('cet6_0005', 'abolish', '/ ə’bɔliʃ/', 'vt.废除，取消');
INSERT INTO `cet4` VALUES ('cet6_0006', 'agitation', '/ ædʒi’teiʃən/', 'n.鼓动，煸动；搅动');
INSERT INTO `cet4` VALUES ('cet6_0007', 'agony', '/ ‘ægəni/', 'n.极度痛苦');
INSERT INTO `cet4` VALUES ('cet6_0008', 'abrupt', '/ ə’brΛpt/', 'a. 突然的，意外的，唐突的');
INSERT INTO `cet4` VALUES ('cet6_0009', 'absurd', '/ əb’sə:d/', 'a.不合理的，荒唐的');
INSERT INTO `cet4` VALUES ('cet6_0010', 'abundance', '/ ə’bΛndəns/', 'n.丰富，充裕');
INSERT INTO `cet4` VALUES ('cet6_0011', 'academy', '/ ə’kædəmi/', 'n.私立中学；专科院校');
INSERT INTO `cet4` VALUES ('cet6_0012', 'accessory', '/ æk’sesəri/', 'n.同谋 a.附属的');
INSERT INTO `cet4` VALUES ('cet6_0013', 'accommodate', '/ ə’kɔmədeit/', 'vt.容纳；供应，供给');
INSERT INTO `cet4` VALUES ('cet6_0014', 'accord', '/ ə’kɔ:d/', 'vt.一致(~ with)；给予');
INSERT INTO `cet4` VALUES ('cet6_0015', 'acknowledge', '/ ək’nɔlidʒ/', 'vt.承认；告知收到');
INSERT INTO `cet4` VALUES ('cet6_0016', 'acquaint', '/ ə’kweint/', 'vt.使认识，使了解');
INSERT INTO `cet4` VALUES ('cet6_0017', 'acquisition', '/ ‘ækwi’ziʃən/', 'n. 获得,添加的物品');
INSERT INTO `cet4` VALUES ('cet6_0018', 'activate', '/ ‘æktiveit/', 'vt. 刺激,使活动');
INSERT INTO `cet4` VALUES ('cet6_0019', 'agreeable', '/ ə’griəbl/', 'a.惬意的；同意的');
INSERT INTO `cet4` VALUES ('cet6_0020', 'alert', '/ ə’lə:t/', 'a.警惕的；活跃的');
INSERT INTO `cet4` VALUES ('cet6_0021', 'alien', '/ ‘eiljən/', 'a.外国的 n.外国人');
INSERT INTO `cet4` VALUES ('cet6_0022', 'allege', '/ ə’ledʒ/', 'vt. 宣称,申述,主张,断言');
INSERT INTO `cet4` VALUES ('cet6_0023', 'alleviate', '/ ə’li:vieit/', 'vt. 减轻,使缓和');
INSERT INTO `cet4` VALUES ('cet6_0024', 'alliance', '/ ə’laiəns/', 'n. 联盟,联合');
INSERT INTO `cet4` VALUES ('cet6_0025', 'allocate', '/ ‘æləkeit/', 'vt. 分派,分配');
INSERT INTO `cet4` VALUES ('cet6_0026', 'allowance', '/ ə’lauəns/', 'n 津贴，补助费');
INSERT INTO `cet4` VALUES ('cet6_0027', 'ally', '/ ‘ælai, ə’lai/', 'n.盟国，同盟者，伙伴');
INSERT INTO `cet4` VALUES ('cet6_0028', 'alongside', '/ ə’lɔŋ’said/', 'prep.在…旁边');
INSERT INTO `cet4` VALUES ('cet6_0029', 'alternate', '/ ɔ:l’tə:nit/', 'vt.使交替 a.交替的');
INSERT INTO `cet4` VALUES ('cet6_0030', 'amateur', '/ ‘æmətə:/', 'a.业余的 n.业余爱好者');
INSERT INTO `cet4` VALUES ('cet6_0031', 'ambassador', '/ æm’bæsədə/', 'n.大使，使节');
INSERT INTO `cet4` VALUES ('cet6_0032', 'ambiguous', '/ æm’bigjuəs/', 'a.模棱两可的；分歧的');
INSERT INTO `cet4` VALUES ('cet6_0033', 'ambitious', '/ æm’biʃəs/', 'a.有雄心的；热望的');
INSERT INTO `cet4` VALUES ('cet6_0034', 'amend', '/ ə’mend/', 'vt. 修正,改善,vi. 改过自新');
INSERT INTO `cet4` VALUES ('cet6_0035', 'amends', '/ ə’mendz/', 'n. 赔偿');
INSERT INTO `cet4` VALUES ('cet6_0036', 'acute', '/ ə’kju:t/', 'a. 敏锐的');
INSERT INTO `cet4` VALUES ('cet6_0037', 'adhere', '/ əd’hiə/', 'vi. (fml)粘附;追随;坚持(~ to sth)');
INSERT INTO `cet4` VALUES ('cet6_0038', 'adjacent', '/ ə’dʒeisənt/', 'a.毗连的；紧接着的');
INSERT INTO `cet4` VALUES ('cet6_0039', 'adjoin', '/ ə’dʒɔin/', 'vt.贴近，毗连；靠近');
INSERT INTO `cet4` VALUES ('cet6_0040', 'administer', '/ əd’ministə/', 'vt.执行,管理,治理,');
INSERT INTO `cet4` VALUES ('cet6_0041', 'adolescent', '/ædə’lesənt/', 'a.青春期的,青年的 n.青少年');
INSERT INTO `cet4` VALUES ('cet6_0042', 'advent', '/ ‘ædvənt/', 'n. 来到,来临');
INSERT INTO `cet4` VALUES ('cet6_0043', 'adverse', '/ ‘ædvə:s/', 'a. 不利的,敌对的,相反的,逆的');
INSERT INTO `cet4` VALUES ('cet6_0044', 'advertise', '/ ‘ædvətaiz/', 'vt.通知 vi.登广告');
INSERT INTO `cet4` VALUES ('cet6_0045', 'advocate', '/ ‘ædvəkit/', 'n.辩护者 vt.拥护');
INSERT INTO `cet4` VALUES ('cet6_0046', 'aerial', '/ ‘ɛəriəl/', 'a.空气的；航空的');
INSERT INTO `cet4` VALUES ('cet6_0047', 'ample', '/ ‘æmpl/', 'a.足够的；宽敞的');
INSERT INTO `cet4` VALUES ('cet6_0048', 'amplify', '/ ‘æmplifai/', 'vt.放大，增强；扩大');
INSERT INTO `cet4` VALUES ('cet6_0049', 'analogy', '/ ə’nælədʒi/', 'n.相似，类似；比拟');
INSERT INTO `cet4` VALUES ('cet6_0050', 'analytic', '/ ænə’litik/', 'a. 分析的,解析的');
INSERT INTO `cet4` VALUES ('cet6_0051', 'analytical', '/ ænə’litikl/', 'a. 分析的,解析的');
INSERT INTO `cet4` VALUES ('cet6_0052', 'angel', '/ ‘eindʒəl/', 'n.天使，神差，安琪儿');
INSERT INTO `cet4` VALUES ('cet6_0053', 'anniversary', '/ ,æni’və:səri/', 'n.周年纪念日');
INSERT INTO `cet4` VALUES ('cet6_0054', 'anonymous', '/ ə’nɔniməs/', 'a. 匿名的');
INSERT INTO `cet4` VALUES ('cet6_0055', 'aesthetic', '/ i:s’θetik/', 'a. 美学的,审美的,有美感');
INSERT INTO `cet4` VALUES ('cet6_0056', 'affiliate', '/ ə’filieit/', 'vt. 附属,接纳 vi. 有关');
INSERT INTO `cet4` VALUES ('cet6_0057', 'affirm', '/ ə’fə:m/', 'vt.断言，批准；证实');
INSERT INTO `cet4` VALUES ('cet6_0058', 'afflict', '/ ə’flikt/', 'vt. 使痛苦,折磨');
INSERT INTO `cet4` VALUES ('cet6_0059', 'agenda', '/ ə’dʒendə/', 'n. 议程,应办事项');
INSERT INTO `cet4` VALUES ('cet6_0060', 'antarctic', '/ ænt’a:ktik/', 'a.南极的 n.南极区');
INSERT INTO `cet4` VALUES ('cet6_0065', 'antique', '/ æn’ti:k/', 'a.古代的 n.古物');
INSERT INTO `cet4` VALUES ('cet6_0066', 'authorize', '/ ‘ɔ:θəraiz/', 'vt. 授权与,批准,委托代替');
INSERT INTO `cet4` VALUES ('cet6_0067', 'automation', '/ ɔ:tə’meiʃən/', 'n.自动，自动化');
INSERT INTO `cet4` VALUES ('cet6_0068', 'autonomy', '/ ɔ:’tɔnəmi/', 'n. 自治');
INSERT INTO `cet4` VALUES ('cet6_0069', 'appendix', '/ ə’pendiks/', 'n.附录，附属物；阑尾');
INSERT INTO `cet4` VALUES ('cet6_0070', 'applaud', '/ ə’plɔ:d/', 'vt.喝彩；欢呼 vi.欢呼');
INSERT INTO `cet4` VALUES ('cet6_0071', 'appraisal', '/ ə’preizl/', 'n. 评价,估价,鉴定');
INSERT INTO `cet4` VALUES ('cet6_0072', 'appreciable', '/ ə’pri:ʃəbl/', 'a.可估价的；可察觉的');
INSERT INTO `cet4` VALUES ('cet6_0073', 'apprehension', '/ æpri’henʃən/', 'n. 理解,忧惧,逮捕');
INSERT INTO `cet4` VALUES ('cet6_0074', 'apt', '/ æpt/', 'a.恰当的；聪明的');
INSERT INTO `cet4` VALUES ('cet6_0075', 'avail', '/ ə’veil/', 'vt.有益于 n.效用');
INSERT INTO `cet4` VALUES ('cet6_0076', 'avert', '/ ə’və:t/', 'vt. 转开,避免,防止');
INSERT INTO `cet4` VALUES ('cet6_0077', 'aviation', '/ eivi’eiʃən/', 'n.飞行');
INSERT INTO `cet4` VALUES ('cet6_0078', 'axis', '/ ‘æksis/', 'n.轴，轴线；第二颈椎');
INSERT INTO `cet4` VALUES ('cet6_0080', 'arc', '/ a:k/', 'n.弧，弓形物；弧光');
INSERT INTO `cet4` VALUES ('cet6_0081', 'arch', '/ a:tʃ/', 'n.拱门 vt.用拱连接');
INSERT INTO `cet4` VALUES ('cet6_0082', 'bachelor', '/ ‘bætʃələ/', 'n.未婚男子；学士');
INSERT INTO `cet4` VALUES ('cet6_0083', 'badge', '/ bædʒ/', 'n.徽章，像章；标志');
INSERT INTO `cet4` VALUES ('cet6_0084', 'baffle', '/ ‘bæfl/', 'vt.使挫折 n.迷惑');
INSERT INTO `cet4` VALUES ('cet6_0085', 'architect', '/ ‘a:kitekt/', 'n.建筑师；创造者');
INSERT INTO `cet4` VALUES ('cet6_0086', 'arctic', '/ ‘a:ktik/', 'a.北极的 n.北极');
INSERT INTO `cet4` VALUES ('cet6_0087', 'array', '/ ə’rei/', 'vt.装扮 n.队列；排列');
INSERT INTO `cet4` VALUES ('cet6_0088', 'articulate', '/ a:’tikjulit/', 'a. 发音清晰的，听得懂的');
INSERT INTO `cet4` VALUES ('cet6_0089', 'ascend', '/ ə’send/', 'vi.攀登，登高；追溯');
INSERT INTO `cet4` VALUES ('cet6_0090', 'ascertain', '/ æsə’tein/', 'vt.查明，确定，弄清');
INSERT INTO `cet4` VALUES ('cet6_0091', 'ascribe', '/ əs’kraib/', 'vt.把…归于');
INSERT INTO `cet4` VALUES ('cet6_0092', 'bald', '/ bɔ:ld/', 'a.秃头的；无毛的');
INSERT INTO `cet4` VALUES ('cet6_0093', 'ballet', '/ ‘bælei, bæ’lei/', 'n.芭蕾舞；舞剧');
INSERT INTO `cet4` VALUES ('cet6_0094', 'ban', '/ bæn/', 'n. 禁令 vt. 禁止,取缔');
INSERT INTO `cet4` VALUES ('cet6_0095', 'bandage', '/ ‘bændidʒ/', 'n.绷带，包带');
INSERT INTO `cet4` VALUES ('cet6_0096', 'bankrupt', '/ ‘bæŋkrəpt/', 'a.破产的 vt.使破产');
INSERT INTO `cet4` VALUES ('cet6_0097', 'barely', '/ ‘bɛəli/', 'ad.仅仅，勉强');
INSERT INTO `cet4` VALUES ('cet6_0098', 'assault', '/ ə’sɔ:lt/', 'vt.袭击；殴打 n.攻击');
INSERT INTO `cet4` VALUES ('cet6_0099', 'assert', '/ ə’sə:t/', 'vt.断言，宣称；维护');
INSERT INTO `cet4` VALUES ('cet6_0100', 'asset', '/ ‘æset/', 'n. 资产,有用的东西');
INSERT INTO `cet4` VALUES ('cet6_0101', 'barren', '/ ‘bærən/', 'a.贫瘠的；不妊的');
INSERT INTO `cet4` VALUES ('cet6_0102', 'basement', '/ ‘beismənt/', 'n.地下室；地窖；底层');
INSERT INTO `cet4` VALUES ('cet6_0103', 'batch', '/ bætʃ/', 'n. 一组,分批,成批,批');
INSERT INTO `cet4` VALUES ('cet6_0104', 'bearing', '/ ‘bɛəriŋ/', 'n.支承；忍受；方位');
INSERT INTO `cet4` VALUES ('cet6_0105', 'beforehand', '/ bi’fɔ:hænd/', 'ad.预先；提前地');
INSERT INTO `cet4` VALUES ('cet6_0106', 'betray', '/ bi’trei/', 'vt.背叛；辜负；泄漏');
INSERT INTO `cet4` VALUES ('cet6_0107', 'bewilder', '/ bi’wildə/', 'vt.迷惑，把…弄糊涂');
INSERT INTO `cet4` VALUES ('cet6_0108', 'bias', '/ ‘baiəs/', 'n. 偏见,偏袒,斜线 vt.使有偏见');
INSERT INTO `cet4` VALUES ('cet6_0109', 'bibliography', '/ bibli’ɔgrəfi/', 'n. 参考书目');
INSERT INTO `cet4` VALUES ('cet6_0110', 'bid', '/ bid/', 'n. 出价 vt.vi. 命令,吩咐,投标');
INSERT INTO `cet4` VALUES ('cet6_0111', 'biography', '/ bai’ɔgrəfi/', 'n. 传记');
INSERT INTO `cet4` VALUES ('cet6_0112', 'assimilate', '/ ə’simileit/', 'vt. 使同化,吸收,比较');
INSERT INTO `cet4` VALUES ('cet6_0113', 'assumption', '/ ə’sΛmpʃən/', 'n.采取；假定；傲慢');
INSERT INTO `cet4` VALUES ('cet6_0114', 'assurance', '/ ə’ʃuərəns/', 'n.保证；财产转让书');
INSERT INTO `cet4` VALUES ('cet6_0115', 'astronomy', '/ əs’trɔnəmi/', 'n.天文学');
INSERT INTO `cet4` VALUES ('cet6_0116', 'athlete', '/ ‘æθli:t/', 'n.运动员；田径运动员');
INSERT INTO `cet4` VALUES ('cet6_0117', 'attendance', '/ ə’tendəns/', 'n.到场；出席人数');
INSERT INTO `cet4` VALUES ('cet6_0118', 'attendant', '/ ə’tendənt/', 'n.侍者；护理人员');
INSERT INTO `cet4` VALUES ('cet6_0119', 'attorney', '/ ə’tə:ni/', 'n.代理人；辩护律师');
INSERT INTO `cet4` VALUES ('cet6_0120', 'augment', '/ɔ:g’ment,‘ɔ:gmənt/', 'vt.vi.n. 增加,增大');
INSERT INTO `cet4` VALUES ('cet6_0121', 'authentic', '/ ɔ:’θentik/', 'a. 真实的,可靠的,可信的');
INSERT INTO `cet4` VALUES ('cet6_0122', 'authoritative', '/ ɔ:’θɔritətiv/', 'a. 权威的,有权威的,命令式的');
INSERT INTO `cet4` VALUES ('cet6_0123', 'bizarre', '/ bi’za:/', 'a. 奇异的');
INSERT INTO `cet4` VALUES ('cet6_0124', 'blaze', '/ bleiz/', 'n.火；闪光 vi.燃烧');
INSERT INTO `cet4` VALUES ('cet6_0125', 'bleak', '/ bli:k/', 'a. 萧瑟的,苍白的,荒凉的');
INSERT INTO `cet4` VALUES ('cet6_0130', 'bless', '/ bles/', 'vt.为…祝福');
INSERT INTO `cet4` VALUES ('cet6_0131', 'cafeteria', '/ kæfi’tiəriə/', 'n.自助食堂');
INSERT INTO `cet4` VALUES ('cet6_0132', 'blossom', '/ ‘blɔsəm/', 'n.花，开花 vi.开花');
INSERT INTO `cet4` VALUES ('cet6_0133', 'blunder', '/ ‘blΛndə/', 'vi.犯大错 n.大错');
INSERT INTO `cet4` VALUES ('cet6_0134', 'blunt', '/ blΛnt/', 'a. 钝的,坦率的,麻痹的');
INSERT INTO `cet4` VALUES ('cet6_0135', 'blush', '/ blΛʃ/', 'vi.脸红，害臊 n.脸红');
INSERT INTO `cet4` VALUES ('cet6_0136', 'bonus', '/ ‘bəunəs/', 'n. 奖金,红利');
INSERT INTO `cet4` VALUES ('cet6_0137', 'canvas', '/ ‘kænvəs/', 'n.粗帆布；一块油画布');
INSERT INTO `cet4` VALUES ('cet6_0138', 'capsule', '/ ‘kæpsju:l/', 'n. 胶囊,瓶帽,太空舱');
INSERT INTO `cet4` VALUES ('cet6_0139', 'captive', '/ ‘kæptiv/', 'n.俘虏，被监禁的人');
INSERT INTO `cet4` VALUES ('cet6_0140', 'cartoon', '/ ka:’tu:n/', 'n.漫画，动画片');
INSERT INTO `cet4` VALUES ('cet6_0141', 'carve', '/ ka:v/', 'vt.刻，雕刻；切开');
INSERT INTO `cet4` VALUES ('cet6_0142', 'boom', '/ bu:m/', 'vi. n. 急速发展,繁荣,隆隆响');
INSERT INTO `cet4` VALUES ('cet6_0143', 'boost', '/ bu:st/', 'vt. n. 推进,支援,吹捧');
INSERT INTO `cet4` VALUES ('cet6_0144', 'boycott', '/ ‘bɔikət/', 'vt.&n.联合抵制');
INSERT INTO `cet4` VALUES ('cet6_0145', 'brace', '/ breis/', 'n.支柱 vt.拉紧，撑牢');
INSERT INTO `cet4` VALUES ('cet6_0146', 'bracket', '/ ‘brækit/', 'n. 支架,括弧,托架');
INSERT INTO `cet4` VALUES ('cet6_0147', 'breakdown', '/ ‘breikdaun/', 'n.崩溃，倒塌；失败');
INSERT INTO `cet4` VALUES ('cet6_0148', 'bribe', '/ braib/', 'n.贿赂 vt.向…行贿');
INSERT INTO `cet4` VALUES ('cet6_0149', 'brisk', '/ brisk/', 'a.活泼的；清新的');
INSERT INTO `cet4` VALUES ('cet6_0150', 'casualty', '/ ‘kæʒjuəlti/', 'n. 伤亡,受害者');
INSERT INTO `cet4` VALUES ('cet6_0151', 'category', '/ ‘kætigəri/', 'n.种类，类目；范畴');
INSERT INTO `cet4` VALUES ('cet6_0152', 'cater', '/ ‘keitə/', 'vi.迎合，投合');
INSERT INTO `cet4` VALUES ('cet6_0153', 'cathedral', '/ kə’θi:drəl/', 'n.总教堂；大教堂');
INSERT INTO `cet4` VALUES ('cet6_0154', 'catholic', '/ ‘kæθəlik/', 'a.天主教的 n.天主教徒');
INSERT INTO `cet4` VALUES ('cet6_0155', 'caution', '/ ‘kɔ:ʃən/', 'n.小心；告诫 vt.警告');
INSERT INTO `cet4` VALUES ('cet6_0156', 'cautious', '/ ‘kɔ:ʃəs/', 'a.小心的，谨慎的');
INSERT INTO `cet4` VALUES ('cet6_0157', 'cavity', '/ ‘kæviti/', 'n.洞，穴，空腔');
INSERT INTO `cet4` VALUES ('cet6_0158', 'brittle', '/ ‘britl/', 'a.脆的；易损坏的');
INSERT INTO `cet4` VALUES ('cet6_0159', 'bronze', '/ brɔnz/', 'n.青铜色');
INSERT INTO `cet4` VALUES ('cet6_0160', 'cellar', '/ ‘selə/', 'n.地窑，地下室');
INSERT INTO `cet4` VALUES ('cet6_0161', 'census', '/ ‘sensəs/', 'n. 户口普查 vt.统计调查');
INSERT INTO `cet4` VALUES ('cet6_0162', 'ceramic', '/ si’ræmik/', 'a. 陶器的 n. 陶瓷制品');
INSERT INTO `cet4` VALUES ('cet6_0163', 'cereal', '/ ‘siəriəl/', 'n.谷类，五谷，禾谷');
INSERT INTO `cet4` VALUES ('cet6_0164', 'certainty', '/ ‘sə:tnti/', 'n.确实性，确信，确实');
INSERT INTO `cet4` VALUES ('cet6_0165', 'certify', '/ ‘sə:tifai/', 'vt.vi. 证明,保证');
INSERT INTO `cet4` VALUES ('cet6_0166', 'brood', '/ bru:d/', 'n.同窝幼鸟 vt.孵(蛋)');
INSERT INTO `cet4` VALUES ('cet6_0167', 'bruise', '/ bru:z/', 'n.青肿，伤痕；擦伤');
INSERT INTO `cet4` VALUES ('cet6_0168', 'brutal', '/ ‘bru:tl/', 'a. 残忍的,野蛮的,不讲理的');
INSERT INTO `cet4` VALUES ('cet6_0169', 'bud', '/ bΛd/', 'n.芽，萌芽；蓓蕾');
INSERT INTO `cet4` VALUES ('cet6_0170', 'budget', '/ ‘bΛdʒit/', 'n.预算，预算案');
INSERT INTO `cet4` VALUES ('cet6_0171', 'buffer', '/ ‘bΛfə/', 'n. 缓冲,缓冲区 vt. 缓冲');
INSERT INTO `cet4` VALUES ('cet6_0172', 'bug', '/ bΛg/', 'n.虫子；臭虫');
INSERT INTO `cet4` VALUES ('cet6_0173', 'chaos', '/ ‘keiɔs/', 'n. 大混乱,混沌');
INSERT INTO `cet4` VALUES ('cet6_0174', 'characterize', '/ ‘kæriktəraiz/', 'vt.表示…的特性');
INSERT INTO `cet4` VALUES ('cet6_0175', 'charity', '/ ‘tʃæriti/', 'n.施舍；慈善事业');
INSERT INTO `cet4` VALUES ('cet6_0176', 'charm', '/ tʃa:m/', 'n.魅力；妩媚 vi.迷人');
INSERT INTO `cet4` VALUES ('cet6_0177', 'charter', '/ ‘tʃa:tə/', 'vt.租 n.宪章；契据');
INSERT INTO `cet4` VALUES ('cet6_0178', 'chat', '/ tʃæt/', 'n. 闲谈 vi. 闲谈,聊天');
INSERT INTO `cet4` VALUES ('cet6_0179', 'cherish', '/ ‘tʃeriʃ/', 'vt.珍爱；怀有(感情)');
INSERT INTO `cet4` VALUES ('cet6_0180', 'chip', '/ tʃip/', 'n.薄片，碎片');
INSERT INTO `cet4` VALUES ('cet6_0181', 'bull', '/ bul/', 'n.买空的 证券 投机商');
INSERT INTO `cet4` VALUES ('cet6_0182', 'bulletin', '/ ‘bulitin/', '告示，公告，公报');
INSERT INTO `cet4` VALUES ('cet6_0183', 'bump', '/ bΛmp/', 'vt.撞击 vi.撞 n.肿块');
INSERT INTO `cet4` VALUES ('cet6_0184', 'bunch', '/ bΛntʃ/', 'n.束，球，串；一群');
INSERT INTO `cet4` VALUES ('cet6_0185', 'bureaucracy', '/ bjuə’rɔkrəsi/', 'n.官僚主义；官僚机构');
INSERT INTO `cet4` VALUES ('cet6_0186', 'burial', '/ ‘beriəl/', 'n.安葬，埋葬，埋藏');
INSERT INTO `cet4` VALUES ('cet6_0187', 'buzz', '/ bΛz/', 'vi.(蜂等)嗡嗡叫');
INSERT INTO `cet4` VALUES ('cet6_0188', 'chord', '/ kɔ:d/', 'n.(乐器的)弦 vi.协调');
INSERT INTO `cet4` VALUES ('cet6_0189', 'chorus', '/ ‘kɔ:rəs/', 'vt.&vi.合唱');
INSERT INTO `cet4` VALUES ('cet6_0190', 'bypass', '/ ‘bai-pa:s/', 'n.旁通管 vt.绕过');
INSERT INTO `cet4` VALUES ('cet6_0191', 'chronic', '/ ‘krɔnik/', 'a.慢性的,习惯性的 n.慢性病患者');
INSERT INTO `cet4` VALUES ('cet6_0196', 'circulation', '/ sə:kju’leiʃən//', 'n.循环；(货币等)流通');
INSERT INTO `cet4` VALUES ('cet6_0197', 'circus', '/ ‘sə:kəs/', 'n.马戏；马戏团');
INSERT INTO `cet4` VALUES ('cet6_0198', 'commend', '/ kə’mend/', 'vt.称赞，表扬；推荐');
INSERT INTO `cet4` VALUES ('cet6_0199', 'commentary', '/ ‘kɔməntəri/', 'n. 注释,评论,批评');
INSERT INTO `cet4` VALUES ('cet6_0200', 'commitment', '/kə’mitmənt/', 'n. 委托,承担义务,赞助');
INSERT INTO `cet4` VALUES ('cet6_0201', 'commodity', '/ kə’mɔditi/', 'n.日用品，商品，物品');
INSERT INTO `cet4` VALUES ('cet6_0202', 'commonplace', '/ ‘kɔmənpleis/', 'a.平凡的 n.平常话');
INSERT INTO `cet4` VALUES ('cet6_0203', 'commonwealth', '/ ‘kɔmənwelθ/', 'n.共和国；联邦');
INSERT INTO `cet4` VALUES ('cet6_0204', 'commute', '/ kə’mju:t/', 'vt. 交换,兑换, 经常来往');
INSERT INTO `cet4` VALUES ('cet6_0205', 'compact', '/‘kɔmpækt,kəm’pækt/', 'a.紧密的 vt.使紧凑');
INSERT INTO `cet4` VALUES ('cet6_0206', 'comparable', '/ ‘kɔmpərəbl/', 'a.可比较的；类似的');
INSERT INTO `cet4` VALUES ('cet6_0207', 'compartment', '/ kəm’pa:tmənt/', 'n. 间隔,个别室,车厢');
INSERT INTO `cet4` VALUES ('cet6_0208', 'compatible', '/ kəm’pætəbl/', 'a.一致的；兼容制的');
INSERT INTO `cet4` VALUES ('cet6_0209', 'compensate', '/ ‘kɔmpenseit/', 'vt.&vi.补偿，赔偿');
INSERT INTO `cet4` VALUES ('cet6_0210', 'competence', '/ ‘kɔmpitəns/', 'n. 胜任,资格,能力');
INSERT INTO `cet4` VALUES ('cet6_0211', 'competitive', '/ kəm’petitiv/', 'a.竞争的，比赛的');
INSERT INTO `cet4` VALUES ('cet6_0212', 'compile', '/ kəm’pail/', 'vt.编辑，编制，搜集');
INSERT INTO `cet4` VALUES ('cet6_0213', 'complement', '/ ‘kəmplimənt/', 'vt.补充 n.补足(物)');
INSERT INTO `cet4` VALUES ('cet6_0214', 'complication', '/ kɔmpli’keiʃən/', 'n.复杂，混乱；并发症');
INSERT INTO `cet4` VALUES ('cet6_0215', 'compliment', '/ ‘kɔmplimənt/', 'n.问候 vt.赞美，祝贺');
INSERT INTO `cet4` VALUES ('cet6_0216', 'comply', '/ kəm’plai/', 'vi.应允，遵照，照做');
INSERT INTO `cet4` VALUES ('cet6_0217', 'composite', '/ ‘kɔmpəzit/', 'a.合成的 n.合成物');
INSERT INTO `cet4` VALUES ('cet6_0218', 'compulsory', '/ kəm’pΛlsəri/', 'a.强迫的，义务的');
INSERT INTO `cet4` VALUES ('cet6_0219', 'concede', '/ kən’si:d/', 'vt. 承认,退让 vi. 让步');
INSERT INTO `cet4` VALUES ('cet6_0220', 'conceive', '/ kən’si:v/', 'vt.设想，以为；怀孕');
INSERT INTO `cet4` VALUES ('cet6_0221', 'conception', '/ kən’sepʃən/', 'n.概念，观念，想法');
INSERT INTO `cet4` VALUES ('cet6_0222', 'concession', '/ kən’seʃən/', 'n.让步，迁就');
INSERT INTO `cet4` VALUES ('cet6_0223', 'cite', '/ sait/', 'vt.引用，引证；举例');
INSERT INTO `cet4` VALUES ('cet6_0224', 'civilian', '/ si’viljən/', 'n.平民 a.平民的');
INSERT INTO `cet4` VALUES ('cet6_0225', 'clamp', '/ klæmp/', 'n.夹子 vt.夹住，夹紧');
INSERT INTO `cet4` VALUES ('cet6_0226', 'clarity', '/ ‘klæriti/', 'n. 清楚,透明');
INSERT INTO `cet4` VALUES ('cet6_0227', 'clash', '/ klæʃ/', 'n.碰撞声；抵触，冲突');
INSERT INTO `cet4` VALUES ('cet6_0228', 'clasp', '/ kla:sp/', 'n.扣子，钩子；别针');
INSERT INTO `cet4` VALUES ('cet6_0229', 'classic', '/ ‘klæsik/', 'n.名著 a.不朽的');
INSERT INTO `cet4` VALUES ('cet6_0230', 'clause', '/ klɔ:z/', 'n. 子句,条款');
INSERT INTO `cet4` VALUES ('cet6_0231', 'clearance', '/ ‘kliərəns/', 'n. 清除,解除,间隙');
INSERT INTO `cet4` VALUES ('cet6_0232', 'client', '/ ‘klaiənt/', 'n.顾客；诉讼委托人');
INSERT INTO `cet4` VALUES ('cet6_0233', 'climax', '/ ‘klaimæks/', 'n.顶点，高潮');
INSERT INTO `cet4` VALUES ('cet6_0234', 'cling', '/ kliŋ/', 'vi.粘住；依附；坚持');
INSERT INTO `cet4` VALUES ('cet6_0235', 'clinic', '/ klinik/', 'n.诊所，医务室；会诊');
INSERT INTO `cet4` VALUES ('cet6_0236', 'clip', '/ klip/', 'vt.剪；剪辑报刊');
INSERT INTO `cet4` VALUES ('cet6_0237', 'clockwise', '/ ‘klɔkwaiz/', 'a.&ad.顺时针方向转的');
INSERT INTO `cet4` VALUES ('cet6_0238', 'closet', '/ ‘klɔzit/', 'n.小房间；壁碗橱');
INSERT INTO `cet4` VALUES ('cet6_0239', 'cluster', '/ ‘klΛstə/', 'n.一串 vt.使成群');
INSERT INTO `cet4` VALUES ('cet6_0240', 'clutch', '/ klΛtʃ/', 'vt.抓住 vi.掌握，攫');
INSERT INTO `cet4` VALUES ('cet6_0241', 'coherent', '/ kəu’hiərənt/', 'a.粘着的；紧凑的');
INSERT INTO `cet4` VALUES ('cet6_0242', 'coincide', '/ kəuin’said/', 'vi.相符合；相巧合');
INSERT INTO `cet4` VALUES ('cet6_0243', 'coincidence', '/ kəuin’sidəns/', 'n. 巧合,同时发生');
INSERT INTO `cet4` VALUES ('cet6_0244', 'collaboration', '/ kəlæbə’reiʃən/', 'n. 合作,通敌');
INSERT INTO `cet4` VALUES ('cet6_0245', 'collide', '/ kə’laid/', 'vi.碰撞；冲突，抵触');
INSERT INTO `cet4` VALUES ('cet6_0246', 'colonial', '/ kə’ləuniəl/', 'a.殖民地的，殖民的');
INSERT INTO `cet4` VALUES ('cet6_0247', 'combat', '/ ‘kɔmbæt/', 'vt.跟…战斗 vi.格斗');
INSERT INTO `cet4` VALUES ('cet6_0248', 'comedy', '/ ‘kɔmidi/', 'n.喜剧；喜剧场面');
INSERT INTO `cet4` VALUES ('cet6_0249', 'comet', '/ ‘kɔmit/', 'n. 慧星');
INSERT INTO `cet4` VALUES ('cet6_0250', 'concise', '/ kən’sais/', 'a. 简洁的,简明的');
INSERT INTO `cet4` VALUES ('cet6_0251', 'confer', '/ kən’fə:/', 'vt. 赠予,协议 vi. 协商');
INSERT INTO `cet4` VALUES ('cet6_0252', 'confidential', '/ kɔnfi’denʃəl/', 'a.秘密的；亲信的');
INSERT INTO `cet4` VALUES ('cet6_0253', 'configuration', '/ kənfigju’reiʃən/', 'n. 结构,配置,形态');
INSERT INTO `cet4` VALUES ('cet6_0254', 'conform', '/ kən’fɔ:m/', 'vt.使遵守 vi.一致');
INSERT INTO `cet4` VALUES ('cet6_0255', 'commemorate', '/ kə’meməreit/', 'vt. 纪念');
INSERT INTO `cet4` VALUES ('cet6_0256', 'commence', '/ kə’mens/', 'vt.开始 vi.获得学位');
INSERT INTO `cet4` VALUES ('cet6_0257', 'confront', '/ kən’frΛnt/', 'vt.使面对；使对证');
INSERT INTO `cet4` VALUES ('cet6_0262', 'confusion', '/ kən’fju:ʒən/', 'n.混乱；骚乱；混淆');
INSERT INTO `cet4` VALUES ('cet6_0263', 'conscientious', '/ kɔnʃi’enʃəs/', 'a. 本着良心的,负责的');
INSERT INTO `cet4` VALUES ('cet6_0264', 'consecutive', '/kən’sekjutiv/a.连续/', '联贯的,始的');
INSERT INTO `cet4` VALUES ('cet6_0265', 'consensus', '/ kən’sensəs/', 'n. 一致');
INSERT INTO `cet4` VALUES ('cet6_0266', 'corporate', '/ ‘kɔ:pərit/', 'n. 组织');
INSERT INTO `cet4` VALUES ('cet6_0267', 'corps', '/ kɔ:ps/', 'n. 军团,队,团,兵种');
INSERT INTO `cet4` VALUES ('cet6_0268', 'correlate', '/ ‘kɔrileit/', 'n.互相关联的事物');
INSERT INTO `cet4` VALUES ('cet6_0269', 'correspondence', '/ kɔris’pɔndəns/', 'n.通信；符合；对应');
INSERT INTO `cet4` VALUES ('cet6_0270', 'correspondent', '/ kɔris’pɔndənt/', 'n.通信者；通讯员');
INSERT INTO `cet4` VALUES ('cet6_0271', 'corrode', '/ kə’rəud/', 'vt.vi 腐蚀,侵蚀,破坏');
INSERT INTO `cet4` VALUES ('cet6_0272', 'corrupt', '/ kə’rΛpt/', 'vt.贿赂 a.腐败的');
INSERT INTO `cet4` VALUES ('cet6_0273', 'consequent', '/ ‘kɔnsikwənt/', 'a.作为结果的；必然的');
INSERT INTO `cet4` VALUES ('cet6_0274', 'conserve', '/ kən’sə:v/', 'vt. 保存,保全 n. 蜜饯,果酱');
INSERT INTO `cet4` VALUES ('cet6_0275', 'consolidate', '/ kən’sɔlideit/', 'vt.巩固 vi.合并');
INSERT INTO `cet4` VALUES ('cet6_0276', 'conspicuous', '/ kən’spikjuəs/', 'a. 显著的,显眼的,出众的');
INSERT INTO `cet4` VALUES ('cet6_0277', 'cosmic', '/ ‘kɔzmik/', 'a.宇宙的；广大无边的');
INSERT INTO `cet4` VALUES ('cet6_0278', 'costume', '/ ‘kɔstju:m/', 'n. 装束,服装');
INSERT INTO `cet4` VALUES ('cet6_0279', 'constituent', '/ kən’stitjuənt/', 'a.形成的 n.选民');
INSERT INTO `cet4` VALUES ('cet6_0280', 'constrain', '/ kən’strein/', 'vt. 强迫,勉强,驱使');
INSERT INTO `cet4` VALUES ('cet6_0281', 'consultant', '/ kən’sΛltənt/', 'n. 顾问,商议者');
INSERT INTO `cet4` VALUES ('cet6_0282', 'consumer', '/ kən’sju:mə/', 'n.消费者，用户');
INSERT INTO `cet4` VALUES ('cet6_0283', 'contaminate', '/ kən’tæmineit/', 'vt. 弄脏,毒害,传染');
INSERT INTO `cet4` VALUES ('cet6_0284', 'contemplate', '/ ‘kɔntempleit/', 'vt. 注视,沉思,打算 vi.冥思苦想');
INSERT INTO `cet4` VALUES ('cet6_0285', 'couch', '/ kautʃ/', 'n.睡椅，长沙发椅');
INSERT INTO `cet4` VALUES ('cet6_0286', 'counsel', '/ ‘kaunsəl/', 'n.商议；忠告；律师');
INSERT INTO `cet4` VALUES ('cet6_0287', 'counterpart', '/ ‘kauntəpa:t/n.副/', '复本,配对物,相应物');
INSERT INTO `cet4` VALUES ('cet6_0288', 'courtesy', '/ ‘kə:tisi/', 'n.礼貌，谦恭，请安');
INSERT INTO `cet4` VALUES ('cet6_0289', 'coward', '/ ‘kauəd/', 'a.懦怯的，胆小的');
INSERT INTO `cet4` VALUES ('cet6_0290', 'cradle', '/ ‘kreidl/', 'n.摇篮，发源地');
INSERT INTO `cet4` VALUES ('cet6_0291', 'creation', '/ kri’eiʃən/', 'n. 创造,创作物,发明');
INSERT INTO `cet4` VALUES ('cet6_0292', 'cripple', '/ ‘kripl/', 'n.跛子；残废的人');
INSERT INTO `cet4` VALUES ('cet6_0293', 'contempt', '/ kən’tempt/', 'n.轻蔑；藐视');
INSERT INTO `cet4` VALUES ('cet6_0294', 'contend', '/ kən’tend/', 'vi.竞争 vt.坚决主张');
INSERT INTO `cet4` VALUES ('cet6_0295', 'context', '/ ‘kɔntekst/', 'n.上下文；来龙去脉');
INSERT INTO `cet4` VALUES ('cet6_0296', 'contradict', '/ kɔntrə’dikt/', 'vt.反驳，否认');
INSERT INTO `cet4` VALUES ('cet6_0297', 'contribution', '/ kɔntri’bju:ʃən/', 'n. 捐助,捐助之物,贡献');
INSERT INTO `cet4` VALUES ('cet6_0298', 'crisp', '/ krisp/', 'a.脆的；卷曲的');
INSERT INTO `cet4` VALUES ('cet6_0299', 'criterion', '/ krai’tiəriən/', 'n.标准，准则，尺度');
INSERT INTO `cet4` VALUES ('cet6_0300', 'crucial', '/ ‘kru:ʃiəl/', 'a. 决定性的,重要的,严厉的');
INSERT INTO `cet4` VALUES ('cet6_0301', 'cruise', '/ kru:z/', 'vi.巡航 vt.巡航于…');
INSERT INTO `cet4` VALUES ('cet6_0302', 'cue', '/ kju:/', 'n. 开端,线索,发辫,长队');
INSERT INTO `cet4` VALUES ('cet6_0303', 'contrive', '/ kən’traiv/', 'vt.vi. 发明,设计,图谋');
INSERT INTO `cet4` VALUES ('cet6_0304', 'controversial', '/kɔntrə’və:ʃəl/', 'a.争论的,有争议的，被议论的');
INSERT INTO `cet4` VALUES ('cet6_0305', 'culminate', '/ ‘kΛlmineit/vi.到绝顶,达于极点/', '高潮');
INSERT INTO `cet4` VALUES ('cet6_0306', 'cumulative', '/ ‘kjumjuleitiv/', 'a. 累积的');
INSERT INTO `cet4` VALUES ('cet6_0307', 'curb', '/ kə:b/', 'n. 抑制,勒马绳 vt. 抑制,束缚');
INSERT INTO `cet4` VALUES ('cet6_0308', 'curt', '/ kə:t/', 'a. 简略的,简短的,生硬的');
INSERT INTO `cet4` VALUES ('cet6_0309', 'currency', '/ ‘kΛrənsi/', 'n.通货；通用；市价');
INSERT INTO `cet4` VALUES ('cet6_0310', 'curriculum', '/ kə’rikjuləm/', 'n. 课程');
INSERT INTO `cet4` VALUES ('cet6_0311', 'controversy', '/ ‘kɔntrəvə:si/', 'n.争论，辩论，争吵');
INSERT INTO `cet4` VALUES ('cet6_0312', 'converge', '/ kən’və:dʒ/', 'vi. 聚合,集中于一点');
INSERT INTO `cet4` VALUES ('cet6_0313', 'convict', '/kən’vikt,‘kɔnvikt/', 'n.囚犯,罪犯 vt.宣告有罪');
INSERT INTO `cet4` VALUES ('cet6_0314', 'conviction', '/ kən’vikʃən/', 'n.确信，信服，深信');
INSERT INTO `cet4` VALUES ('cet6_0315', 'cooperative', '/ kəu’ɔpərətiv/', 'a.合作的 n.合作社');
INSERT INTO `cet4` VALUES ('cet6_0316', 'cordial', '/ ‘kɔ:djəl/', 'a.真诚的，诚恳的');
INSERT INTO `cet4` VALUES ('cet6_0317', 'customary', '/ ‘kΛstəməri/', 'a.通常的；照惯例的');
INSERT INTO `cet4` VALUES ('cet6_0318', 'cylinder', '/ ‘silində/', 'n.圆筒；柱(面)；汽缸');
INSERT INTO `cet4` VALUES ('cet6_0319', 'cynical', '/ ‘sinikəl/', 'a. 愤世嫉俗的,讽刺的,冷嘲的');
INSERT INTO `cet4` VALUES ('cet6_0324', 'damn', '/ dæm/', 'vt.诅咒 n.诅咒；丝毫');
INSERT INTO `cet4` VALUES ('cet6_0325', 'dazzle', '/ ‘dæzl/', 'vt.&vi.炫耀；迷惑');
INSERT INTO `cet4` VALUES ('cet6_0326', 'destined', '/ ‘destind/', 'a. (由神、命运) 预定的,注定的');
INSERT INTO `cet4` VALUES ('cet6_0327', 'destiny', '/ ‘destini/', 'n. 命运,定数');
INSERT INTO `cet4` VALUES ('cet6_0328', 'deadly', '/ ‘dedli/', 'a.致命的，死一般的');
INSERT INTO `cet4` VALUES ('cet6_0329', 'decent', '/ ‘di:snt/', 'a.正派的；体面的');
INSERT INTO `cet4` VALUES ('cet6_0330', 'decimal', '/ ‘desiməl/', 'a.小数的，十进制的');
INSERT INTO `cet4` VALUES ('cet6_0331', 'decisive', '/ di’saisiv/', 'a.决定性的；果断的');
INSERT INTO `cet4` VALUES ('cet6_0332', 'declaration', '/ deklə’reiʃən/', 'n.宣布，宣言；申诉');
INSERT INTO `cet4` VALUES ('cet6_0333', 'decline', '/ di’klain/', 'vt.下倾；偏斜；衰退');
INSERT INTO `cet4` VALUES ('cet6_0334', 'dedicate', '/ ‘dedikeit/', 'vt.奉献；献身');
INSERT INTO `cet4` VALUES ('cet6_0335', 'deem', '/ di:m/', 'vt.认为，相信 vi.想');
INSERT INTO `cet4` VALUES ('cet6_0336', 'destructive', '/ dis’trΛktiv/', 'a.破坏(性)的，危害的');
INSERT INTO `cet4` VALUES ('cet6_0337', 'detach', '/ di’tætʃ/', 'vt.分开；派遣(军队)');
INSERT INTO `cet4` VALUES ('cet6_0338', 'detective', '/ di’tektiv/', 'n.侦探，密探');
INSERT INTO `cet4` VALUES ('cet6_0339', 'deteriorate', '/ di’tiəriəreit/', 'vt.vi. (使)恶化');
INSERT INTO `cet4` VALUES ('cet6_0340', 'deviate', '/ ‘di:vieit/', 'vt.(使)背离，偏离');
INSERT INTO `cet4` VALUES ('cet6_0341', 'diagnose', '/ ‘daiəgnəuz/', 'vt.诊断(疾病)');
INSERT INTO `cet4` VALUES ('cet6_0342', 'diet', '/ ‘daiət/', 'n.饮食，食物');
INSERT INTO `cet4` VALUES ('cet6_0343', 'differentiate', '/ difə’renʃieit/', 'vt.vi. 区别,区分');
INSERT INTO `cet4` VALUES ('cet6_0344', 'diffuse', '/ di’fju:z/', 'vt.vi. 散播,传播 a. 散开的,弥漫的');
INSERT INTO `cet4` VALUES ('cet6_0345', 'dignity', '/ ‘digniti/', 'a.尊贵；(举止)庄严');
INSERT INTO `cet4` VALUES ('cet6_0346', 'dilemma', '/ di’lemə/', 'n. 困境,进退两难的局面');
INSERT INTO `cet4` VALUES ('cet6_0347', 'dilute', '/ dai’lut/', 'vt. 冲淡,稀释 a. 淡的,稀释的');
INSERT INTO `cet4` VALUES ('cet6_0348', 'diminish', '/ di’miniʃ/', 'vt.减少，减小，递减');
INSERT INTO `cet4` VALUES ('cet6_0349', 'dine', '/ dain/', 'vi.吃饭 vt.宴请');
INSERT INTO `cet4` VALUES ('cet6_0350', 'deficiency', '/ di’fiʃənsi/', 'n.缺乏；不足之数');
INSERT INTO `cet4` VALUES ('cet6_0351', 'deficit', '/ ‘defisit/', 'n. 赤字,不足额');
INSERT INTO `cet4` VALUES ('cet6_0352', 'defy', '/ di’fai/', 'vt.向…挑战；蔑视');
INSERT INTO `cet4` VALUES ('cet6_0353', 'degenerate', '/ di’dʒenəreit/', 'a.堕落的 vi.vt.(使)变质,(使)退化');
INSERT INTO `cet4` VALUES ('cet6_0354', 'degrade', '/ di’greid/', 'vt.使降给；使堕落');
INSERT INTO `cet4` VALUES ('cet6_0355', 'delegate', '/ ‘deligeit/', 'n.代表，委员，特派员');
INSERT INTO `cet4` VALUES ('cet6_0356', 'deliberate', '/ di’libərit/', 'a.深思熟虑的；审慎的');
INSERT INTO `cet4` VALUES ('cet6_0357', 'denial', '/ di’naiəl/', 'n.否定；拒绝相信');
INSERT INTO `cet4` VALUES ('cet6_0358', 'denote', '/ di’nəut/', 'vt.指示，意味着');
INSERT INTO `cet4` VALUES ('cet6_0359', 'diploma', '/ di’pləumə/', 'n.毕业文凭，学位证书');
INSERT INTO `cet4` VALUES ('cet6_0360', 'diplomatic', '/ diplə’mætik/', 'a.外交的；有策略的');
INSERT INTO `cet4` VALUES ('cet6_0361', 'directory', '/ di’rektəri/', 'n.姓名地址录；董事会');
INSERT INTO `cet4` VALUES ('cet6_0362', 'disable', '/ dis’eibl/', 'vt.使无能，使伤残');
INSERT INTO `cet4` VALUES ('cet6_0363', 'denounce', '/ di’nauns/', 'vt.谴责，声讨；告发');
INSERT INTO `cet4` VALUES ('cet6_0364', 'dentist', '/ ‘dentist/', 'n.牙科医生');
INSERT INTO `cet4` VALUES ('cet6_0365', 'disastrous', '/ di’za:strəs/', 'a.灾难性的；悲惨的');
INSERT INTO `cet4` VALUES ('cet6_0366', 'discern', '/ di’sə:n/', 'vt.看出，辨出；辨别');
INSERT INTO `cet4` VALUES ('cet6_0367', 'disclose', '/ dis’kləuz/', 'vt.揭开，揭发；透露');
INSERT INTO `cet4` VALUES ('cet6_0368', 'discount', '/ ‘diskaunt/', 'n.折扣；打折扣卖');
INSERT INTO `cet4` VALUES ('cet6_0369', 'discrepancy', '/ dis’krepənsi/', 'n. 相差,差异,差别');
INSERT INTO `cet4` VALUES ('cet6_0370', 'discrete', '/ di’skrit/', 'a. 不连续的, 离散的');
INSERT INTO `cet4` VALUES ('cet6_0371', 'discriminate', '/ dis’krimineit/', 'vt.vi. 区别对待，歧视');
INSERT INTO `cet4` VALUES ('cet6_0372', 'disguise', '/ dis’gaiz/', 'vi.隐瞒，掩埋 n.假装');
INSERT INTO `cet4` VALUES ('cet6_0373', 'dismay', '/ dis’mei/', 'n.惊慌，沮丧，灰心');
INSERT INTO `cet4` VALUES ('cet6_0374', 'dispatch', '/ dis’pætʃ/', 'vt.派遣；调度 n.急件');
INSERT INTO `cet4` VALUES ('cet6_0375', 'disperse', '/ dis’pə:s/', 'vt.(使)分散；驱散');
INSERT INTO `cet4` VALUES ('cet6_0376', 'depict', '/ di’pikt/', 'vt. 描述,描写');
INSERT INTO `cet4` VALUES ('cet6_0377', 'depression', '/ di’preʃən/', 'n.消沉；不景气萧条期');
INSERT INTO `cet4` VALUES ('cet6_0378', 'deprive', '/ di’praiv/', 'vt.夺去；使(人)失去');
INSERT INTO `cet4` VALUES ('cet6_0379', 'depute', '/ di’pju:t/', 'vt. 指定代理人,委任');
INSERT INTO `cet4` VALUES ('cet6_0380', 'descendant', '/ di’sendənt/', 'n.子孙，后裔；弟子');
INSERT INTO `cet4` VALUES ('cet6_0381', 'descent', '/ di’sent/', 'n.下降；出身；斜坡');
INSERT INTO `cet4` VALUES ('cet6_0382', 'designate', '/ ‘dezigneit/', 'vt.指出，指示；指定');
INSERT INTO `cet4` VALUES ('cet6_0383', 'despatch', '/ dis’pætʃ/', 'vt.vi.n. 派遣');
INSERT INTO `cet4` VALUES ('cet6_0384', 'despise', '/ dis’paiz/', 'vt.鄙视，蔑视');
INSERT INTO `cet4` VALUES ('cet6_0389', 'displace', '/ dis’pleis/', 'vt.移置；取代；置换');
INSERT INTO `cet4` VALUES ('cet6_0390', 'disposition', '/ dispə’ziʃən/', 'n. 性情,处置,处理,布置');
INSERT INTO `cet4` VALUES ('cet6_0391', 'disregard', '/ ‘disri’ga:d/', 'vt.不管，不顾 n.不管');
INSERT INTO `cet4` VALUES ('cet6_0392', 'disrupt', '/ dis’rΛpt/a.分裂的,分散的 vt.使分裂/', '瓦解');
INSERT INTO `cet4` VALUES ('cet6_0393', 'dissipate', '/ ‘disipeit/', 'vt.驱散；浪费vi.消散');
INSERT INTO `cet4` VALUES ('cet6_0394', 'distil', '/ dis’til/', 'v. 蒸馏, 提取....的精华');
INSERT INTO `cet4` VALUES ('cet6_0395', 'distort', '/ dis’tɔ:t/', 'vt.歪曲，曲解，扭曲');
INSERT INTO `cet4` VALUES ('cet6_0396', 'distract', '/ dis’trækt/', 'vt.分散(心思)；打扰');
INSERT INTO `cet4` VALUES ('cet6_0397', 'disturbance', '/ dis’tə:bəns/', 'n.动乱；干扰；侵犯');
INSERT INTO `cet4` VALUES ('cet6_0398', 'diversion', '/ dai’və:ʃən/', 'n.转移；改道；娱乐');
INSERT INTO `cet4` VALUES ('cet6_0399', 'divert', '/ dai’və:t/', 'vt.使转向 vi.转移');
INSERT INTO `cet4` VALUES ('cet6_0400', 'earnings', '/ ‘ə:niŋz/', 'n.工资，收入；收益');
INSERT INTO `cet4` VALUES ('cet6_0401', 'əaster', '/ ‘i:stə/', 'n. 复活节');
INSERT INTO `cet4` VALUES ('cet6_0402', 'eccentric', '/ ik’sentrik/', 'n.怪人,偏心圆 a.古怪的,不同圆心的');
INSERT INTO `cet4` VALUES ('cet6_0403', 'eclipse', '/ i’klips/', 'n.(日，月)食');
INSERT INTO `cet4` VALUES ('cet6_0404', 'ecology', '/ i(:)’kɔlədʒi/', 'n.生态学；个体生态学');
INSERT INTO `cet4` VALUES ('cet6_0405', 'economics', '/ i:kə’nɔmiks/', 'n.经济学；经济');
INSERT INTO `cet4` VALUES ('cet6_0406', 'edible', '/ ‘edibl/', 'a. 可食用的 n. 食品,食物');
INSERT INTO `cet4` VALUES ('cet6_0407', 'edit', '/ ‘edit/', 'vt.编辑，编纂；校订');
INSERT INTO `cet4` VALUES ('cet6_0408', 'editorial', '/ edi’tɔ:riəl/', 'n.社论，期刊的社论');
INSERT INTO `cet4` VALUES ('cet6_0409', 'ego', '/ ‘egəu/', 'n. 自我');
INSERT INTO `cet4` VALUES ('cet6_0410', 'divine', '/ di’vain/', 'a.神的；敬神的');
INSERT INTO `cet4` VALUES ('cet6_0411', 'eject', '/ i:’dʒekt/', 'vt.逐出，排斥；喷射');
INSERT INTO `cet4` VALUES ('cet6_0412', 'elapse', '/ i’læps/', 'vi.(时间)过去，消逝');
INSERT INTO `cet4` VALUES ('cet6_0413', 'elbow', '/ ‘elbəu/', 'n.肘，肘部；弯管');
INSERT INTO `cet4` VALUES ('cet6_0414', 'dizzy', '/ ‘dizi/', 'a.头晕眼花的，眩晕的');
INSERT INTO `cet4` VALUES ('cet6_0415', 'dock', '/ dɔk/', 'n.船坞；码头；船厂');
INSERT INTO `cet4` VALUES ('cet6_0416', 'doctrine', '/ ‘dɔktrin/', 'n.教义，主义；学说');
INSERT INTO `cet4` VALUES ('cet6_0417', 'domain', '/ də’mein/', 'n. 领域,领土,产业,范围');
INSERT INTO `cet4` VALUES ('cet6_0418', 'dome', '/ dəum/', 'n.圆屋顶，拱顶');
INSERT INTO `cet4` VALUES ('cet6_0419', 'elderly', '/ ‘eldəli/', 'a. 过了中年的,稍老的');
INSERT INTO `cet4` VALUES ('cet6_0420', 'electrician', '/ ilek’triʃən/', 'n.电工，电气技师');
INSERT INTO `cet4` VALUES ('cet6_0421', 'electronics', '/ ilek’trɔniks/', 'n.电子学');
INSERT INTO `cet4` VALUES ('cet6_0422', 'dominant', '/ ‘dɔminənt/', 'a.统治的 n.主因');
INSERT INTO `cet4` VALUES ('cet6_0423', 'dominate', '/ ‘dɔmineit/', 'vt.统治，支配，控制');
INSERT INTO `cet4` VALUES ('cet6_0424', 'donate', '/ dəu’neit/', 'vt.vi. 捐赠');
INSERT INTO `cet4` VALUES ('cet6_0425', 'elegant', '/ ‘eligənt/', 'a.(举止、服饰)雅致的');
INSERT INTO `cet4` VALUES ('cet6_0426', 'elevate', '/ ‘eliveit/', 'vt.提高(思想)；抬高');
INSERT INTO `cet4` VALUES ('cet6_0427', 'elicit', '/ i’lisit/', 'vt. 引出,抽出,引起');
INSERT INTO `cet4` VALUES ('cet6_0428', 'doom', '/ du:m/', 'n.命运，毁灭 vt.注定');
INSERT INTO `cet4` VALUES ('cet6_0429', 'doubtless', '/ ‘dautlis/', 'ad.无疑地；很可能');
INSERT INTO `cet4` VALUES ('cet6_0430', 'drainage', '/ ‘dreinidʒ/', 'n.排水；下水道');
INSERT INTO `cet4` VALUES ('cet6_0431', 'drastic', '/ ‘dræstik/', 'a.激烈的；严厉的');
INSERT INTO `cet4` VALUES ('cet6_0432', 'drawback', '/ ‘drɔ:bæk/', 'n.退款；妨碍；弊端');
INSERT INTO `cet4` VALUES ('cet6_0433', 'dreadfu', '/ ‘dredful/', 'a.可怕的；令人敬畏的');
INSERT INTO `cet4` VALUES ('cet6_0434', 'drought', '/ draut/', 'n.旱灾，干旱');
INSERT INTO `cet4` VALUES ('cet6_0435', 'eligible', '/ ‘elidʒəbl/', 'n. 有资格者,合格者 a.有资格的');
INSERT INTO `cet4` VALUES ('cet6_0436', 'elite', '/ ei’li:t/', 'n. 精华,精锐,中坚分子');
INSERT INTO `cet4` VALUES ('cet6_0437', 'eloquent', '/ ‘eləkwənt/', 'a. 雄辩的,有口才的,动人的');
INSERT INTO `cet4` VALUES ('cet6_0438', 'embark', '/ im’ba:k/', 'vi. 乘船,着手,从事,上飞机');
INSERT INTO `cet4` VALUES ('cet6_0439', 'embassy', '/ ‘embəsi/', 'n.大使馆；大使的职务');
INSERT INTO `cet4` VALUES ('cet6_0440', 'embed', '/ im’bed/', 'vt. 使插入,使嵌入');
INSERT INTO `cet4` VALUES ('cet6_0441', 'embody', '/ im’bɔdi/', 'vt.体现；包含，收录');
INSERT INTO `cet4` VALUES ('cet6_0442', 'empirical', '/ im’pirikəl/', 'a.经验主义的');
INSERT INTO `cet4` VALUES ('cet6_0443', 'enclosure', '/ in’kləuʒə/', 'n.围绕；围场，围栏');
INSERT INTO `cet4` VALUES ('cet6_0444', 'endeavor', '/ in’dɛvə/', 'vi.&n.努力，尽力');
INSERT INTO `cet4` VALUES ('cet6_0445', 'endow', '/ in’dau/', 'vt.资助；赋予，授予');
INSERT INTO `cet4` VALUES ('cet6_0446', 'dual', '/ ‘dju:əl/', 'a. 双重的,双的 n. 双数');
INSERT INTO `cet4` VALUES ('cet6_0447', 'dubious', '/ ‘dju:bjəs/', 'a. 可疑的,不确定的');
INSERT INTO `cet4` VALUES ('cet6_0448', 'duplicate', '/ ‘dju:plikit/', 'n.复制品 vt.复制');
INSERT INTO `cet4` VALUES ('cet6_0449', 'dwell', '/ dwel/', 'n.居住 vi.凝思，细想');
INSERT INTO `cet4` VALUES ('cet6_0454', 'endurance', '/ in’djuərəns/', 'n.耐久力，持久力');
INSERT INTO `cet4` VALUES ('cet6_0455', 'energetic', '/ enə’dʒetik/', 'a.积极的；精力旺盛的');
INSERT INTO `cet4` VALUES ('cet6_0456', 'engagement', '/ in’geidʒmənt/', 'n.婚约；约会，债务');
INSERT INTO `cet4` VALUES ('cet6_0457', 'enhance', '/ in’ha:ns/', 'vt.提高，增加；夸张');
INSERT INTO `cet4` VALUES ('cet6_0458', 'enlighten', '/ in’laitn/', 'vt.启发，开导；启蒙');
INSERT INTO `cet4` VALUES ('cet6_0459', 'enrich', '/ in’ritʃ/', 'vt.使富裕；使丰富');
INSERT INTO `cet4` VALUES ('cet6_0460', 'exclusive', '/ iks’klu:siv/', 'a.排外的；孤傲的');
INSERT INTO `cet4` VALUES ('cet6_0461', 'execution', '/ eksi’kju:ʃən/', 'n.实行，执行；处死刑');
INSERT INTO `cet4` VALUES ('cet6_0462', 'exemplify', '/ ig’zəmplifai/', 'vt.举例证明(解释)');
INSERT INTO `cet4` VALUES ('cet6_0463', 'exempt', '/ ig’zempt/', 'a. 免除的 vt. 使免除,豁免');
INSERT INTO `cet4` VALUES ('cet6_0464', 'exile', '/ ‘eksail/', 'vt.流放 n.被流放者');
INSERT INTO `cet4` VALUES ('cet6_0465', 'exotic', '/ ig’zɔutik/', 'a.异国的,外来的 n.外来物,舶来品');
INSERT INTO `cet4` VALUES ('cet6_0466', 'expedition', '/ ekspi’diʃən/', 'n.探险；探险队');
INSERT INTO `cet4` VALUES ('cet6_0467', 'expel', '/ iks’pel/', 'vt.驱逐，开除；排出');
INSERT INTO `cet4` VALUES ('cet6_0468', 'enroll', '/ in’rəul/', 'vt.登记，招收 vi.参军');
INSERT INTO `cet4` VALUES ('cet6_0469', 'ensue', '/ in’sju:/', 'vt. 追求 vi. 跟着发生,继起');
INSERT INTO `cet4` VALUES ('cet6_0470', 'entail', '/ in’teil/', 'vt. 使必需,使承担');
INSERT INTO `cet4` VALUES ('cet6_0471', 'expend', '/ iks’pend/', 'vt. 花费,消耗,支出');
INSERT INTO `cet4` VALUES ('cet6_0472', 'expenditure', '/ iks’penditʃ/', 'n.(时间等)支出，消费');
INSERT INTO `cet4` VALUES ('cet6_0473', 'expertise', '/ ekspə’ti:z/', 'n. 专家的意见,专门技术');
INSERT INTO `cet4` VALUES ('cet6_0474', 'expire', '/ iks’paiə/', 'vi.满期，到期；断气');
INSERT INTO `cet4` VALUES ('cet6_0475', 'explicit', '/ iks’plisit/', 'a.明晰的；直率的');
INSERT INTO `cet4` VALUES ('cet6_0476', 'exposition', '/ ekspə’ziʃən/', 'n.说明，解释；陈列');
INSERT INTO `cet4` VALUES ('cet6_0477', 'exquisite', '/ ‘ekskwizit/', 'a. 精致的,细腻的,敏锐的');
INSERT INTO `cet4` VALUES ('cet6_0478', 'extinct', '/ iks’tiŋkt/', 'a.绝种的；熄灭了的');
INSERT INTO `cet4` VALUES ('cet6_0479', 'extinguish', '/ iks’tiŋgwiʃ/', 'vt.熄灭，扑灭；消灭');
INSERT INTO `cet4` VALUES ('cet6_0480', 'extract', '/ iks’trækt, ‘ekstrækt/', 'vt.取出；榨取 n.摘录');
INSERT INTO `cet4` VALUES ('cet6_0481', 'extravagant', '/ iks’trævigənt/', 'a.奢侈的；过度的');
INSERT INTO `cet4` VALUES ('cet6_0482', 'fabricate', '/ ‘fæbrikeit/', 'vt.制作，组合；捏造');
INSERT INTO `cet4` VALUES ('cet6_0483', 'facet', '/ ‘fæsit/', 'n. 小平面,方面,刻面');
INSERT INTO `cet4` VALUES ('cet6_0484', 'enterprise', '/ ‘entəpraiz/', 'n.企业，事业心');
INSERT INTO `cet4` VALUES ('cet6_0485', 'entertainment', '/ entə’teinmənt/', 'n.娱乐,款待,娱乐表演');
INSERT INTO `cet4` VALUES ('cet6_0486', 'enthusiastic', '/ inθju:zi’æstik/', 'a.热情的，热心的');
INSERT INTO `cet4` VALUES ('cet6_0487', 'entity', '/ ‘entiti/', 'n. 实体,实存物,存在');
INSERT INTO `cet4` VALUES ('cet6_0488', 'entrepreneur', '/ ‘ɔntrəprə’nə:/', 'n. 企业家,主办人');
INSERT INTO `cet4` VALUES ('cet6_0489', 'envisage', '/ in’vizidʒ/', 'vt. 面对,正视,想象');
INSERT INTO `cet4` VALUES ('cet6_0490', 'episode', '/ ‘episəud/', 'n.一段情节；插曲');
INSERT INTO `cet4` VALUES ('cet6_0491', 'epoch', '/ ‘i:pɔk/', 'n.(新)时代；历元');
INSERT INTO `cet4` VALUES ('cet6_0492', 'equator', '/ i’kweitə/', 'n.赤道，天球赤道');
INSERT INTO `cet4` VALUES ('cet6_0493', 'equilibrium', '/ i:kwi’libriəm/', 'n.平衡，均衡；均衡论');
INSERT INTO `cet4` VALUES ('cet6_0494', 'erosion', '/ i’rəuʒən/', 'n.腐蚀，侵蚀；糜烂');
INSERT INTO `cet4` VALUES ('cet6_0495', 'erroneous', '/ i’rəunjəs/', 'a. 错误的,不正确的');
INSERT INTO `cet4` VALUES ('cet6_0496', 'erupt', '/ i’rΛpt/', 'vi. 爆发 vt. 喷出');
INSERT INTO `cet4` VALUES ('cet6_0497', 'facilitate', '/ fə’siliteit/', 'vt.使容易；助长');
INSERT INTO `cet4` VALUES ('cet6_0498', 'fake', '/ feik/', 'n.假货，膺品 a.假的');
INSERT INTO `cet4` VALUES ('cet6_0499', 'escort', '/ ‘eskɔ:t/', 'n.&vt.护卫，护送');
INSERT INTO `cet4` VALUES ('cet6_0500', 'essence', '/ ‘esns/', 'n.本质，本体；精华');
INSERT INTO `cet4` VALUES ('cet6_0501', 'estate', '/ is’teit/', 'n. 房地产 ；财产，产业');
INSERT INTO `cet4` VALUES ('cet6_0502', 'esthetic', '/ es’θetik/', 'a. 审美的');
INSERT INTO `cet4` VALUES ('cet6_0503', 'fantastic', '/ fæn’tæstik/', 'a.空想的；奇异的');
INSERT INTO `cet4` VALUES ('cet6_0504', 'fantasy', '/ ‘fæntəsi/', 'n. 幻想,白日梦');
INSERT INTO `cet4` VALUES ('cet6_0505', 'fascinate', '/ ‘fæsineit/', 'vt.迷住 vi.迷人');
INSERT INTO `cet4` VALUES ('cet6_0506', 'eternal', '/ i’tə:nl/', 'n.永久的；不朽的');
INSERT INTO `cet4` VALUES ('cet6_0507', 'fax', '/ fæks/', 'n. 传真 vt. 传真');
INSERT INTO `cet4` VALUES ('cet6_0508', 'ethics', '/ ‘eθiks/', 'n. 道德规范');
INSERT INTO `cet4` VALUES ('cet6_0509', 'feast', '/ fi:st/', 'n.盛宴，筵席；节日');
INSERT INTO `cet4` VALUES ('cet6_0510', 'ethnic', '/ ‘ɛθnik/', 'a.民族特有的');
INSERT INTO `cet4` VALUES ('cet6_0511', 'federation', '/ fedə’reiʃən/', 'n. 联邦,联合,联盟');
INSERT INTO `cet4` VALUES ('cet6_0512', 'feeble', '/ ‘fi:bl/', 'a.虚弱的；微弱的');
INSERT INTO `cet4` VALUES ('cet6_0513', 'evoke', '/ i’vəuk/', 'vt. 唤起,引起');
INSERT INTO `cet4` VALUES ('cet6_0514', 'exceptional', '/ ik’sepʃənl/', 'a.例外的；优越的');
INSERT INTO `cet4` VALUES ('cet6_0515', 'fellowship', '/ ‘feləuʃip/', 'n.伙伴关系；联谊会');
INSERT INTO `cet4` VALUES ('cet6_0520', 'feminine', '/ ‘feminin/', 'a.女性的；女子气的');
INSERT INTO `cet4` VALUES ('cet6_0521', 'ferry', '/ ‘feri/', 'n.渡船；渡口 vt.运送');
INSERT INTO `cet4` VALUES ('cet6_0522', 'finite', '/ ‘fainait/', 'a.有限的；有尽的');
INSERT INTO `cet4` VALUES ('cet6_0523', 'fist', '/ fist/', 'n.拳(头)');
INSERT INTO `cet4` VALUES ('cet6_0524', 'fraud', '/ frɔ:d/', 'n. 骗子,欺骗,欺诈,诡计');
INSERT INTO `cet4` VALUES ('cet6_0525', 'fringe', '/ ‘frindʒ/', 'n.穗，毛边；边缘');
INSERT INTO `cet4` VALUES ('cet6_0526', 'frustrate', '/ frΛs’treit/', 'vt.挫败；使无效');
INSERT INTO `cet4` VALUES ('cet6_0527', 'furious', '/ ‘fjuəriəs/', 'a.狂怒的；狂暴的');
INSERT INTO `cet4` VALUES ('cet6_0528', 'fuse', '/ fju:z/', 'n.保险丝，导火线');
INSERT INTO `cet4` VALUES ('cet6_0529', 'fitting', '/ ‘fitiŋ/', 'a.适当的 n.配合');
INSERT INTO `cet4` VALUES ('cet6_0530', 'fixture', '/ ‘fikstʃə/', 'n.固定；定期存款');
INSERT INTO `cet4` VALUES ('cet6_0531', 'flank', '/ flæŋk/', 'n.肋，肋腹；侧面');
INSERT INTO `cet4` VALUES ('cet6_0532', 'flap', '/ flæp/', 'vt.&n.拍打 vi.拍动');
INSERT INTO `cet4` VALUES ('cet6_0533', 'fusion', '/ ‘fjuʒən/', 'n. 熔合物,结合,熔合');
INSERT INTO `cet4` VALUES ('cet6_0534', 'fuss', '/ fΛs/', 'n.忙乱；吹捧 vi.忙乱');
INSERT INTO `cet4` VALUES ('cet6_0535', 'galaxy', '/ ‘gæləksi/', 'n. 银河,星系,一群显赫的人物');
INSERT INTO `cet4` VALUES ('cet6_0536', 'gallery', '/ ‘gæləri/', 'n.长廊，游廊；画廊');
INSERT INTO `cet4` VALUES ('cet6_0537', 'gamble', '/ ‘gæmbl/', 'n.赌博 vt.冒…的险');
INSERT INTO `cet4` VALUES ('cet6_0538', 'gaol', '/ dʒeil/', 'n. 监禁,监狱 vt. 监禁');
INSERT INTO `cet4` VALUES ('cet6_0539', 'garbage', '/ ‘ga:bidʒ/', 'n.垃圾，污物，废料');
INSERT INTO `cet4` VALUES ('cet6_0540', 'garment', '/ ‘ga:mənt/', 'n.衣服；服装，衣着');
INSERT INTO `cet4` VALUES ('cet6_0541', 'gasp', '/ ga:sp/', 'vi.气喘，喘息');
INSERT INTO `cet4` VALUES ('cet6_0542', 'flare', '/ flɛə/', 'vi.闪耀 vt.使闪亮');
INSERT INTO `cet4` VALUES ('cet6_0543', 'flatter', '/ ‘flætə/', 'vt.奉承，阿谀，谄媚');
INSERT INTO `cet4` VALUES ('cet6_0544', 'flaw', '/ flɔ:/', 'n.缺点，瑕疵；裂隙');
INSERT INTO `cet4` VALUES ('cet6_0545', 'flee', '/ fli:/', 'vi.逃走 vt.逃避');
INSERT INTO `cet4` VALUES ('cet6_0546', 'fling', '/ fliŋ/', 'vi.&vt.(用力)扔，抛');
INSERT INTO `cet4` VALUES ('cet6_0547', 'fluctuate', '/ ‘flΛktjueit/', 'vi.波动 vt.使波动');
INSERT INTO `cet4` VALUES ('cet6_0548', 'flush', '/ flΛʃ/', 'vi.奔流；(脸)发红');
INSERT INTO `cet4` VALUES ('cet6_0549', 'gear', '/ giə/', 'n.齿轮，传动装置');
INSERT INTO `cet4` VALUES ('cet6_0550', 'flutter', '/ ‘flΛtə/', 'vi.(鸟)振翼；飘动');
INSERT INTO `cet4` VALUES ('cet6_0551', 'foam', '/ fəum/', 'n.泡沫；泡沫塑料');
INSERT INTO `cet4` VALUES ('cet6_0552', 'foil', '/ fɔil/', 'n. 箔,金属薄片 vt. 贴箔于, 衬托');
INSERT INTO `cet4` VALUES ('cet6_0553', 'foremost', '/ ‘fɔ:məust/', 'a.最初的；第一流的');
INSERT INTO `cet4` VALUES ('cet6_0554', 'foresee', '/ fɔ:’si:/', 'vt.预见，预知，看穿');
INSERT INTO `cet4` VALUES ('cet6_0555', 'format', '/ ‘fɔ:mæt/', 'n. 格式 v. 格式化');
INSERT INTO `cet4` VALUES ('cet6_0556', 'formidable', '/ ‘fɔ:midəbl/', 'a.可怕的；难对付的');
INSERT INTO `cet4` VALUES ('cet6_0557', 'formulate', '/ ‘fɔ:mjuleit/', 'vt.用公式表示');
INSERT INTO `cet4` VALUES ('cet6_0558', 'fort', '/ fɔ:t/', 'n.要塞，堡垒');
INSERT INTO `cet4` VALUES ('cet6_0559', 'gene', '/ dʒi:n/', 'n. 基因,因子');
INSERT INTO `cet4` VALUES ('cet6_0560', 'generalize', '/ ‘dʒenərəlaiz/', 'vt.概括出 vi.形成概念');
INSERT INTO `cet4` VALUES ('cet6_0561', 'genetic', '/ dʒə’netik/', 'a. 遗传的,起源的');
INSERT INTO `cet4` VALUES ('cet6_0562', 'geology', '/ dʒi’ɔlədʒi/', 'n.地质学；(某地)地质');
INSERT INTO `cet4` VALUES ('cet6_0563', 'gigantic', '/ dʒai’gæntik/', 'a.巨大的；巨人似的');
INSERT INTO `cet4` VALUES ('cet6_0564', 'given', '/ ‘givn/', 'a. 赠予的,沉溺的,约定的');
INSERT INTO `cet4` VALUES ('cet6_0565', 'glare', '/ glɛə/', 'vi.瞪眼 n.瞪眼');
INSERT INTO `cet4` VALUES ('cet6_0566', 'gleam', '/ gli:m/', 'n.微光 vi.发微光');
INSERT INTO `cet4` VALUES ('cet6_0567', 'glide', '/ glaid/', 'vi.滑动；消逝 n.滑行');
INSERT INTO `cet4` VALUES ('cet6_0568', 'glitter', '/ ‘glitə/', 'vi.闪闪发光 n.闪光');
INSERT INTO `cet4` VALUES ('cet6_0569', 'global', '/ ‘gləubəl/', 'a.球面的；全球的');
INSERT INTO `cet4` VALUES ('cet6_0570', 'gloomy', '/ ‘glu:mi/', 'a.黑暗的；令人沮丧的');
INSERT INTO `cet4` VALUES ('cet6_0571', 'gorgeous', '/ ‘gɔ:dʒəs/', 'a.绚丽的；极好的');
INSERT INTO `cet4` VALUES ('cet6_0572', 'gossip', '/ ‘gɔsip/', 'n.闲谈；碎嘴子；漫笔');
INSERT INTO `cet4` VALUES ('cet6_0573', 'grab', '/ græb/', 'vt.&vi.攫取，抓取');
INSERT INTO `cet4` VALUES ('cet6_0574', 'forthcoming', '/ fɔ:θ’kΛmiŋ/', 'a.即将到来的；现有的');
INSERT INTO `cet4` VALUES ('cet6_0575', 'forum', '/ ‘fɔ:rəm/', 'n.论坛，讨论会');
INSERT INTO `cet4` VALUES ('cet6_0576', 'fossil', '/ ‘fɔsl/', 'n.化石 a.化石的');
INSERT INTO `cet4` VALUES ('cet6_0577', 'foster', '/ ‘fɔstə/', 'vt.养育，抚养；培养');
INSERT INTO `cet4` VALUES ('cet6_0578', 'foul', '/ faul/', 'a.肮脏的；丑恶的');
INSERT INTO `cet4` VALUES ('cet6_0579', 'fracture', '/ ‘fræktʃə/', 'n.破裂；裂痕 vi.破裂');
INSERT INTO `cet4` VALUES ('cet6_0580', 'fragile', '/ ‘frædʒail/', 'a.脆的；体质弱的');
INSERT INTO `cet4` VALUES ('cet6_0581', 'gracious', '/ ‘greiʃəs/', 'a.谦和的');
INSERT INTO `cet4` VALUES ('cet6_0586', 'graze', '/ greiz/', 'vi.喂草；放牧(牲畜)');
INSERT INTO `cet4` VALUES ('cet6_0587', 'grease', '/ gri:s, gri:z/', 'n.动物脂，脂肪');
INSERT INTO `cet4` VALUES ('cet6_0588', 'grief', '/ gri:f/', 'n.悲哀，悲痛，悲伤');
INSERT INTO `cet4` VALUES ('cet6_0589', 'historic', '/ his’tɔrik/', 'a.历史的；历史性的');
INSERT INTO `cet4` VALUES ('cet6_0590', 'hitherto', '/ ‘hiðə’tu:/', 'ad.迄今，到目前为止');
INSERT INTO `cet4` VALUES ('cet6_0591', 'hoist', '/ hɔist/', 'vt.升起 vi.扯起来');
INSERT INTO `cet4` VALUES ('cet6_0592', 'grieve', '/ gri:v/', 'vt.使悲痛 vi.悲痛');
INSERT INTO `cet4` VALUES ('cet6_0593', 'homogeneous', '/ hɔmə’dʒi:njəs/', 'a.同类的；均匀的');
INSERT INTO `cet4` VALUES ('cet6_0594', 'horrible', '/ ‘hɔrəbl/', 'a. 可怕的,极可憎的,极可厌的');
INSERT INTO `cet4` VALUES ('cet6_0595', 'hose', '/ həuz/', 'n.长筒袜；软管');
INSERT INTO `cet4` VALUES ('cet6_0596', 'grim', '/ grim/', 'a.冷酷无情的，严厉的');
INSERT INTO `cet4` VALUES ('cet6_0597', 'grin', '/ grin/', 'vi.咧着嘴笑');
INSERT INTO `cet4` VALUES ('cet6_0598', 'groan', '/ grəun/', 'vi.哼，呻吟 n.呻吟');
INSERT INTO `cet4` VALUES ('cet6_0599', 'grope', '/ grəup/', 'vi.(暗中)摸索，探索');
INSERT INTO `cet4` VALUES ('cet6_0600', 'guardian', '/ ‘ga:djən/', 'n. 监护人,保护人 a. 保护的');
INSERT INTO `cet4` VALUES ('cet6_0601', 'guideline', '/ ‘gaidlain/', 'n. 指导路线,方针,指标');
INSERT INTO `cet4` VALUES ('cet6_0602', 'guy', '/ gai/', 'n. 家伙,支索 vt.用支索撑住,取笑');
INSERT INTO `cet4` VALUES ('cet6_0603', 'hamper', '/ ‘hæmpə/', 'vt.妨碍，阻碍，牵制');
INSERT INTO `cet4` VALUES ('cet6_0604', 'handbook', '/ ‘hændbuk/', 'n.手册，便览，指南');
INSERT INTO `cet4` VALUES ('cet6_0605', 'handicap', '/ ‘hændikæp/', 'vt.妨碍，使不利');
INSERT INTO `cet4` VALUES ('cet6_0606', 'hasty', '/ ‘heisti/', 'a.急速的；仓促的');
INSERT INTO `cet4` VALUES ('cet6_0607', 'hospitality', '/ hɔspi’tæliti/', 'n.好客，殷勤；宜人');
INSERT INTO `cet4` VALUES ('cet6_0608', 'hostage', '/ ‘hɔstidʒ/', 'n.人质，抵押品');
INSERT INTO `cet4` VALUES ('cet6_0609', 'hover', '/ ‘hɔvə/', 'vi.徘徊；傍徨；翱翔');
INSERT INTO `cet4` VALUES ('cet6_0610', 'hug', '/ hΛg/', 'vt.搂 n.紧紧拥抱');
INSERT INTO `cet4` VALUES ('cet6_0611', 'humanity', '/ hju:’mæniti/', 'n.人类；人性，人情');
INSERT INTO `cet4` VALUES ('cet6_0612', 'humidity', '/ hju:’miditi/', 'n.湿气；湿度');
INSERT INTO `cet4` VALUES ('cet6_0613', 'hurl', '/ hə:l/', 'vt.猛投 vi.猛冲');
INSERT INTO `cet4` VALUES ('cet6_0614', 'hurricane', '/ ‘hΛrikən/', 'n.飓风，十二级风');
INSERT INTO `cet4` VALUES ('cet6_0615', 'hypothesis', '/ hai’pɔθisi:z/', 'n.假设；前提');
INSERT INTO `cet4` VALUES ('cet6_0616', 'hysterical', '/ his’terikəl/', 'a. 歇斯底里的,异常兴奋的');
INSERT INTO `cet4` VALUES ('cet6_0617', 'identification', '/ aidentifi’keiʃən/', 'n.认出，鉴定；身份证');
INSERT INTO `cet4` VALUES ('cet6_0618', 'hatch', '/ hætʃ/', 'vt.舱盖，舱口；短门');
INSERT INTO `cet4` VALUES ('cet6_0619', 'haul', '/ hɔ:l/', 'vt.拖曳；拖运');
INSERT INTO `cet4` VALUES ('cet6_0620', 'haunt', '/ hɔ:nt/', 'vt.常去 vi.经常出没');
INSERT INTO `cet4` VALUES ('cet6_0621', 'heal', '/ hi:l/', 'vt.治愈；使和解');
INSERT INTO `cet4` VALUES ('cet6_0622', 'identity', '/ ai’dentiti/', 'n. 相同,身分,恒等式,特性,一致');
INSERT INTO `cet4` VALUES ('cet6_0623', 'ideology', '/ aidi’ɔlədʒi/', 'n. 意识形态,思想体系');
INSERT INTO `cet4` VALUES ('cet6_0624', 'idiom', '/ ‘idiəm/', 'n.习语，成语');
INSERT INTO `cet4` VALUES ('cet6_0625', 'hearing', '/ ‘hiəriŋ/', 'n. 听,听觉');
INSERT INTO `cet4` VALUES ('cet6_0626', 'heave', '/ hi:v/', 'vt.(用力地)举起；抛');
INSERT INTO `cet4` VALUES ('cet6_0627', 'heighten', '/ ‘haitn/', 'vt.加高，提高；增加');
INSERT INTO `cet4` VALUES ('cet6_0628', 'heir', '/ ɛə/', 'n.后嗣，继承人');
INSERT INTO `cet4` VALUES ('cet6_0629', 'ignite', '/ ig’nait/', 'vt.引燃 vi.着火');
INSERT INTO `cet4` VALUES ('cet6_0630', 'ignorance', '/ ‘ignərəns/', 'n.无知，无学，愚昧');
INSERT INTO `cet4` VALUES ('cet6_0631', 'illuminate', '/ i’lju:mineit/', 'vt.照明，照亮；阐明');
INSERT INTO `cet4` VALUES ('cet6_0632', 'illusion', '/ i’lju:ʒən/', 'n.幻想；错觉；假象');
INSERT INTO `cet4` VALUES ('cet6_0633', 'imaginative', '/ i’mædʒənətiv/', 'a. 想象的,虚构的');
INSERT INTO `cet4` VALUES ('cet6_0634', 'imitation', '/ imi’teiʃən/', 'n.仿制品，伪制物');
INSERT INTO `cet4` VALUES ('cet6_0635', 'immerse', '/ i’mə:s/', 'vt.沉浸；给…施洗礼');
INSERT INTO `cet4` VALUES ('cet6_0636', 'immune', '/ i’mjun/', 'a. 免疫的,免除的,不受影响的');
INSERT INTO `cet4` VALUES ('cet6_0637', 'impair', '/ im’pɛə/', 'vt. 损害,减少,削弱');
INSERT INTO `cet4` VALUES ('cet6_0638', 'impart', '/ im’pa:t/', 'vt.给予，传递；告诉');
INSERT INTO `cet4` VALUES ('cet6_0639', 'hemisphere', '/ ‘hemisfiə/', 'n.半球；半球地图');
INSERT INTO `cet4` VALUES ('cet6_0640', 'henceforth', '/ ‘hens’fɔ:θ/', 'ad.今后，从今以后');
INSERT INTO `cet4` VALUES ('cet6_0641', 'heritage', '/ ‘heritidʒ/', 'n. 遗产,继承物,传统');
INSERT INTO `cet4` VALUES ('cet6_0642', 'hierarchy', '/ ‘haiəra:ki/', 'n.等级制度，统治集团');
INSERT INTO `cet4` VALUES ('cet6_0643', 'highlight', '/ ‘hailait/', 'n.突出,精彩场面 vt.加亮,使显著');
INSERT INTO `cet4` VALUES ('cet6_0644', 'hinder', '/ ‘hində, ‘haində/', 'a. 后面的 vt.vi. 阻碍,打扰');
INSERT INTO `cet4` VALUES ('cet6_0645', 'hinge', '/ hindʒ/', 'n.合页，折叶，铰链');
INSERT INTO `cet4` VALUES ('cet6_0646', 'historian', '/ his’tɔ:riən/', 'n.历史学家；编史家');
INSERT INTO `cet4` VALUES ('cet6_0651', 'imperative', '/ im’perətiv/', 'n. 命令, a.命令式的,急需的,');
INSERT INTO `cet4` VALUES ('cet6_0653', 'initiate', '/ i’niʃieit/', 'vt.开始，创始；启蒙');
INSERT INTO `cet4` VALUES ('cet6_0654', 'initiative', '/ i’niʃiətiv/', 'a.创始的 n.第一步');
INSERT INTO `cet4` VALUES ('cet6_0655', 'inject', '/ in’dʒekt/', 'vt.注射；注满；喷射');
INSERT INTO `cet4` VALUES ('cet6_0656', 'imperial', '/ im’piəriəl/', 'a. 帝王的,至尊的 n. 特等品');
INSERT INTO `cet4` VALUES ('cet6_0657', 'impetus', '/ ‘impitəs/', 'n. 动力,推动力,激励');
INSERT INTO `cet4` VALUES ('cet6_0658', 'implement', '/ ‘implimənt/', 'n.工具 vt. 实现,使生效,执行');
INSERT INTO `cet4` VALUES ('cet6_0659', 'inland', '/ ‘inlənd, in’lænd/', 'a.国内的；内地的');
INSERT INTO `cet4` VALUES ('cet6_0660', 'inlet', '/ ‘inlet/', 'n.进口，水湾 vt.引进');
INSERT INTO `cet4` VALUES ('cet6_0661', 'innovation', '/ inəu’veiʃən/', 'n.创新，改革，新设施');
INSERT INTO `cet4` VALUES ('cet6_0662', 'innumerable', '/ i’nju:mərəbl/', 'a.无数的，数不清的');
INSERT INTO `cet4` VALUES ('cet6_0663', 'insane', '/ in’sein/', 'a. 患精神病的,不理智的');
INSERT INTO `cet4` VALUES ('cet6_0664', 'insight', '/ ‘insait/', 'n.洞察力，洞悉，见识');
INSERT INTO `cet4` VALUES ('cet6_0665', 'inspiration', '/ inspə’reiʃən/', 'n.灵感；妙想；鼓舞');
INSERT INTO `cet4` VALUES ('cet6_0666', 'installment', '/ in’stɔ:lmənt/', 'n.分期付款');
INSERT INTO `cet4` VALUES ('cet6_0667', 'implicit', '/ im’plisit/', 'a. 暗示的,盲从的,绝对的,固有的');
INSERT INTO `cet4` VALUES ('cet6_0668', 'impulse', '/ ‘impΛls/', 'n.冲动，推动，脉冲');
INSERT INTO `cet4` VALUES ('cet6_0669', 'inaugurate', '/ i’nɔ:gjureit/', 'vt.开始；使就职');
INSERT INTO `cet4` VALUES ('cet6_0670', 'incentive', '/ in’sentiv/', 'n. 动机 a. 激励的');
INSERT INTO `cet4` VALUES ('cet6_0671', 'incidence', '/ ‘insidəns/', 'n.发生，影响；入射');
INSERT INTO `cet4` VALUES ('cet6_0672', 'incidentally', '/ insi’dentəli/', 'ad.附带地；顺便提及');
INSERT INTO `cet4` VALUES ('cet6_0673', 'inclusive', '/ in’klu:siv/', 'a.包围住的；包括的');
INSERT INTO `cet4` VALUES ('cet6_0674', 'incorporate', '/ in’kɔ:pəreit/', 'vt.结合，合并，收编');
INSERT INTO `cet4` VALUES ('cet6_0675', 'incredible', '/ in’kredəbl/', 'a.难以置信的，惊人的');
INSERT INTO `cet4` VALUES ('cet6_0676', 'incur', '/ in’kə:/', 'vt. 招致,蒙受,遭遇');
INSERT INTO `cet4` VALUES ('cet6_0677', 'instantaneous', '/ instən’teinjəs/', 'a.瞬间的，即刻的');
INSERT INTO `cet4` VALUES ('cet6_0678', 'instrumental', '/ instru’mentl/', 'a.仪器的；有帮助的');
INSERT INTO `cet4` VALUES ('cet6_0679', 'insulate', '/ ‘insjuleit/', 'vt.使绝缘，使绝热');
INSERT INTO `cet4` VALUES ('cet6_0680', 'intact', '/ in’tækt/', 'a.原封不动的,完整的');
INSERT INTO `cet4` VALUES ('cet6_0681', 'integral', '/ ‘intigrəl/', 'a.组成的；整的');
INSERT INTO `cet4` VALUES ('cet6_0682', 'indefinite', '/ in’definit/', 'a.不明确的；不定的');
INSERT INTO `cet4` VALUES ('cet6_0683', 'indicative', '/ in’dikətiv/', 'a.指示的；陈述的');
INSERT INTO `cet4` VALUES ('cet6_0684', 'indignant', '/ in’dignənt/', 'a.愤慨的，义愤的');
INSERT INTO `cet4` VALUES ('cet6_0685', 'indignation', '/ indig’neiʃən/', 'n.愤怒，愤慨，义愤');
INSERT INTO `cet4` VALUES ('cet6_0686', 'induce', '/ in’dju:s/', 'vt.劝诱；引起；感应');
INSERT INTO `cet4` VALUES ('cet6_0687', 'indulge', '/ in’dΛldʒ/', 'vt.放纵(感情)vi.纵情');
INSERT INTO `cet4` VALUES ('cet6_0688', 'inertia', '/ i’nə:ʃjə/', 'n.惯性，惯量；无力');
INSERT INTO `cet4` VALUES ('cet6_0689', 'infectious', '/ in’fekʃəs/', 'a.传染的；感染性的');
INSERT INTO `cet4` VALUES ('cet6_0690', 'inference', '/ ‘infərəns/', 'n.推论；推断的结果');
INSERT INTO `cet4` VALUES ('cet6_0691', 'inflation', '/ in’fleiʃən/', 'n.通货膨胀，物价飞涨');
INSERT INTO `cet4` VALUES ('cet6_0692', 'inflict', '/ in’flikt/', 'vt. 施以,加害,使承受');
INSERT INTO `cet4` VALUES ('cet6_0693', 'ingenious', '/ in’dʒi:njəs/', 'a.机灵的；精巧制成的');
INSERT INTO `cet4` VALUES ('cet6_0694', 'ingredient', '/ in’gri:djənt/', 'n.配料，成分');
INSERT INTO `cet4` VALUES ('cet6_0695', 'inhabit', '/ in’hæbit/', 'vt.居住于，栖息于');
INSERT INTO `cet4` VALUES ('cet6_0696', 'inhibit', '/ in’hibit/', 'vt. 禁止,抑制');
INSERT INTO `cet4` VALUES ('cet6_0697', 'integrate', '/ ‘intigreit/', 'vt.使结合，使并入');
INSERT INTO `cet4` VALUES ('cet6_0698', 'integrity', '/ in’tegriti/', 'n.诚实，正直');
INSERT INTO `cet4` VALUES ('cet6_0699', 'intellect', '/ ‘intilekt/', 'n.理智，智力，才智');
INSERT INTO `cet4` VALUES ('cet6_0700', 'intelligible', '/ in’tælidʒəbl/a.可理解/', '易理解的,明了的');
INSERT INTO `cet4` VALUES ('cet6_0701', 'intensify', '/ in’tensifai/', 'vt.vi. 加强，强化');
INSERT INTO `cet4` VALUES ('cet6_0702', 'intent', '/ in’tent/', 'a.目不转睛的，热切的');
INSERT INTO `cet4` VALUES ('cet6_0703', 'interact', '/ intə’rækt/', 'vi.相互作用');
INSERT INTO `cet4` VALUES ('cet6_0704', 'interim', '/ ‘intərim/a.中间的,暂时/', '间歇的,n.过渡时期');
INSERT INTO `cet4` VALUES ('cet6_0705', 'intermittent', '/ intə’mitnt/', 'a. 间歇的,断断续续的');
INSERT INTO `cet4` VALUES ('cet6_0706', 'intersection', '/ intə’sekʃən/', 'n. 交集,十字路口,交叉点');
INSERT INTO `cet4` VALUES ('cet6_0707', 'intervene', '/ intə’vi:n/', 'vi.干涉，干预；播进');
INSERT INTO `cet4` VALUES ('cet6_0708', 'intimidate', '/ in’timideit/', 'vt. 威胁,恐吓,胁迫');
INSERT INTO `cet4` VALUES ('cet6_0709', 'intricate', '/ ‘intrikit/', 'a. 复杂的,错综的,缠结的,难懂的');
INSERT INTO `cet4` VALUES ('cet6_0710', 'intrigue', '/ in’tri:g/', 'n.阴谋 vi.密谋,耍诡计 vt.激起兴趣');
INSERT INTO `cet4` VALUES ('cet6_0711', 'intrinsic', '/ in’trinsik/', 'a. 本质的,原有的,真正的');
INSERT INTO `cet4` VALUES ('cet6_0716', 'intuition', '/ intju’iʃən/', 'n. 直觉,直觉的知识');
INSERT INTO `cet4` VALUES ('cet6_0717', 'invalid', '/ ‘invəli:d, in’vælid/', 'n.病人 a.有病的，无效的');
INSERT INTO `cet4` VALUES ('cet6_0718', 'invaluable', '/ in’væljuəbl/', 'a. 无价的,价值无法衡量的');
INSERT INTO `cet4` VALUES ('cet6_0719', 'invariably', '/ in’vɛəriəbli/', 'ad.不变地，永恒地');
INSERT INTO `cet4` VALUES ('cet6_0720', 'inventory', '/ ‘invən’təuri/', 'n. 详细目录,存货清单');
INSERT INTO `cet4` VALUES ('cet6_0721', 'invert', '/ in’və:t, ‘invə:t/', 'vt. 使反转,使颠倒,使转化');
INSERT INTO `cet4` VALUES ('cet6_0722', 'irony', '/ ‘aiərəni/', 'n. 反讽,讽剌,讽剌之事');
INSERT INTO `cet4` VALUES ('cet6_0723', 'irrespective', '/ iris’pektiv/', 'a.不考虑的，不顾的');
INSERT INTO `cet4` VALUES ('cet6_0724', 'irrigation', '/ iri’geiʃən/', 'n.灌溉；冲洗法');
INSERT INTO `cet4` VALUES ('cet6_0725', 'irritate', '/ ‘iriteit/', 'vt.激怒；引起不愉快');
INSERT INTO `cet4` VALUES ('cet6_0726', 'ivory', '/ ‘aivəri/', 'n.象牙；牙质；乳白色');
INSERT INTO `cet4` VALUES ('cet6_0727', 'jail', '/ dʒeil/', 'n.监狱 vi.监禁');
INSERT INTO `cet4` VALUES ('cet6_0728', 'lease', '/ li:s/', 'n.租约，契约，租契');
INSERT INTO `cet4` VALUES ('cet6_0729', 'legend', '/ ‘ledʒənd/', 'n.传说，传奇');
INSERT INTO `cet4` VALUES ('cet6_0730', 'legislation', '/ ledʒis’leiʃən/', 'n.立法；法规');
INSERT INTO `cet4` VALUES ('cet6_0731', 'legitimate', '/ li’dʒitimit/', 'a. 合法的,正当的 vt. 使合法');
INSERT INTO `cet4` VALUES ('cet6_0732', 'liability', '/ laiə’biliti/', 'n.责任；倾向；债务');
INSERT INTO `cet4` VALUES ('cet6_0733', 'lick', '/ lik/', 'vt.舔；舔吃');
INSERT INTO `cet4` VALUES ('cet6_0734', 'likelihood', '/ ‘laiklihud/', 'n.可能(性)');
INSERT INTO `cet4` VALUES ('cet6_0735', 'limp', '/ limp/', 'vi.蹒跚，跛行 n.跛行');
INSERT INTO `cet4` VALUES ('cet6_0736', 'linear', '/ ‘liniə/', 'a.线的；长度的');
INSERT INTO `cet4` VALUES ('cet6_0737', 'liner', '/ ‘lainə/', 'n.班船，班机');
INSERT INTO `cet4` VALUES ('cet6_0738', 'linger', '/ ‘liŋgə/', 'vi.逗留，徘徊；拖延');
INSERT INTO `cet4` VALUES ('cet6_0739', 'literacy', '/ ‘litərəsi/', 'n. 读写能力,识字');
INSERT INTO `cet4` VALUES ('cet6_0740', 'literal', '/ ‘litərəl/', 'a.文字(上)的；字面的');
INSERT INTO `cet4` VALUES ('cet6_0741', 'litter', '/ ‘litə/', 'n.废物，杂乱 vi.乱扔');
INSERT INTO `cet4` VALUES ('cet6_0742', 'lobby', '/ ‘lɔbi/', 'n.前厅，(剧院的)门廊');
INSERT INTO `cet4` VALUES ('cet6_0743', 'locality', '/ ləu’kæliti/', 'n.位置，地点，发生地');
INSERT INTO `cet4` VALUES ('cet6_0744', 'locomotive', '/ ‘ləukəməutiv/', 'a.运动的；机动');
INSERT INTO `cet4` VALUES ('cet6_0745', 'lofty', '/ ‘lɔfti/', 'a.高耸的；高尚的');
INSERT INTO `cet4` VALUES ('cet6_0746', 'jeopardize', '/ ‘dʒepədaiz/', 'vt. 危害,使受危困,使陷危地');
INSERT INTO `cet4` VALUES ('cet6_0747', 'jerk', '/ dʒə:k/', 'vt.猛地一拉 vi.急拉');
INSERT INTO `cet4` VALUES ('cet6_0748', 'journalist', '/ ‘dʒə:nəlist/', 'n.记者，新闻工作者');
INSERT INTO `cet4` VALUES ('cet6_0749', 'junction', '/ ‘dʒΛŋkʃən/', 'n.连接；接头；中继线');
INSERT INTO `cet4` VALUES ('cet6_0750', 'jury', '/ ‘dʒuəri/', 'n.陪审团；评奖团');
INSERT INTO `cet4` VALUES ('cet6_0751', 'justification', '/ dʒΛstifi’keiʃən/', 'n. 辩护,证明是正当');
INSERT INTO `cet4` VALUES ('cet6_0753', 'longitude', '/ ‘lɔndʒitju:d/', 'n.经线，经度');
INSERT INTO `cet4` VALUES ('cet6_0754', 'lounge', '/ laundʒ/', 'n.(旅馆等的)休息室');
INSERT INTO `cet4` VALUES ('cet6_0755', 'lubricate', '/ ‘lju:brikeit/', 'vt.使润滑 vi.加 润滑油');
INSERT INTO `cet4` VALUES ('cet6_0756', 'luminous', '/ ‘lju:minəs/', 'a.发光的；光明的');
INSERT INTO `cet4` VALUES ('cet6_0757', 'lunar', '/ ‘lju:nə/', 'a.月亮的');
INSERT INTO `cet4` VALUES ('cet6_0758', 'kidney', '/ ‘kidni/', 'n.肾，腰子；性格');
INSERT INTO `cet4` VALUES ('cet6_0760', 'knit', '/ nit/', 'vt.把…编结 vi.编织');
INSERT INTO `cet4` VALUES ('cet6_0761', 'knob', '/ nɔb/', 'n.门把，拉手；旋纽');
INSERT INTO `cet4` VALUES ('cet6_0762', 'lamb', '/ læm/', 'n.羔羊，小羊；羔羊肉');
INSERT INTO `cet4` VALUES ('cet6_0763', 'lame', '/ leim/', 'a.跛的；瘸的，残废的');
INSERT INTO `cet4` VALUES ('cet6_0764', 'landscape', '/ ‘lændskeip/', 'n.风景，景色，景致');
INSERT INTO `cet4` VALUES ('cet6_0765', 'latent', '/ ‘leitənt/', 'a.存在但看不见的');
INSERT INTO `cet4` VALUES ('cet6_0766', 'magnify', '/ ‘mægnifai/', 'vt.放大，扩大');
INSERT INTO `cet4` VALUES ('cet6_0767', 'magnitude', '/ ‘mægnitju:d/', 'n.大小；重大；星等');
INSERT INTO `cet4` VALUES ('cet6_0768', 'majesty', '/ ‘mædʒisti/', 'n.威严，尊严；陛下');
INSERT INTO `cet4` VALUES ('cet6_0769', 'mall', '/ mɔ:l/', 'n.大型购物中心');
INSERT INTO `cet4` VALUES ('cet6_0770', 'latitude', '/ ‘lætitju:d/', 'n.纬度；黄纬');
INSERT INTO `cet4` VALUES ('cet6_0771', 'manifest', '/ ‘mænifest/', 'vt.表明 a.明白的');
INSERT INTO `cet4` VALUES ('cet6_0772', 'manipulate', '/ mə’nipjuleit/', 'vt.操作；控制，手持');
INSERT INTO `cet4` VALUES ('cet6_0773', 'layman', '/ ‘leimən/', 'n. 俗人,门外汉,凡人');
INSERT INTO `cet4` VALUES ('cet6_0774', 'leaflet', '/ ‘li:flit/', 'n.传单，活页；广告');
INSERT INTO `cet4` VALUES ('cet6_0779', 'manoeuvre', '/ mə’nu:və/', 'n.vi. 调遣,演习 vt. 调动,操纵');
INSERT INTO `cet4` VALUES ('cet6_0780', 'minimal', '/ ‘miniml/', 'a. 最小的,极微的,最小限度的');
INSERT INTO `cet4` VALUES ('cet6_0781', 'minimize', '/ ‘minimaiz/', 'vt.使减到最小');
INSERT INTO `cet4` VALUES ('cet6_0782', 'misery', '/ ‘mizəri/', 'n.痛苦，悲惨，不幸');
INSERT INTO `cet4` VALUES ('cet6_0783', 'misfortune', '/ mis’fɔ:tʃən/', 'n.不幸，灾祸，灾难');
INSERT INTO `cet4` VALUES ('cet6_0784', 'missionary', '/ ‘miʃənəri/', 'n.传教士');
INSERT INTO `cet4` VALUES ('cet6_0785', 'manuscript', '/ ‘mænjuskript/', 'n.手稿，底稿，原稿');
INSERT INTO `cet4` VALUES ('cet6_0786', 'marble', '/ ‘ma:bl/', 'n.大理石');
INSERT INTO `cet4` VALUES ('cet6_0787', 'marginal', '/ ‘ma:dʒinəl/', 'a.记在页边的；边缘的');
INSERT INTO `cet4` VALUES ('cet6_0788', 'marsh', '/ ma:ʃ/', 'n.沼泽地，湿地');
INSERT INTO `cet4` VALUES ('cet6_0789', 'mobilize', '/ ‘məubilaiz/', 'vt.动员 vi.动员起来');
INSERT INTO `cet4` VALUES ('cet6_0790', 'mock', '/ mɔk/', 'n.嘲弄 vt.嘲弄，挖苦');
INSERT INTO `cet4` VALUES ('cet6_0791', 'marshal', '/ ‘ma:ʃəl/', 'n.元帅；陆军元帅');
INSERT INTO `cet4` VALUES ('cet6_0792', 'masculine', '/ ‘ma:skjulin/', 'a.男性的；强壮的');
INSERT INTO `cet4` VALUES ('cet6_0793', 'massive', '/ ‘mæsiv/', 'a.粗大的；大而重的');
INSERT INTO `cet4` VALUES ('cet6_0794', 'masterpiece', '/ ‘ma:stəpi:s/', 'n.杰作，名著');
INSERT INTO `cet4` VALUES ('cet6_0795', 'meadow', '/ ‘medəu/', 'n.草地，牧草地');
INSERT INTO `cet4` VALUES ('cet6_0796', 'mechanism', '/ ‘mekənizəm/', 'n.机械装置；机制');
INSERT INTO `cet4` VALUES ('cet6_0797', 'medal', '/ ‘medl/', 'n.奖章，勋章，纪念章');
INSERT INTO `cet4` VALUES ('cet6_0798', 'media', '/ ‘mi:diə/', 'n. 媒体');
INSERT INTO `cet4` VALUES ('cet6_0799', 'momentum', '/ mou’mentəm/', 'n. 动力,要素');
INSERT INTO `cet4` VALUES ('cet6_0800', 'monopoly', '/ mə’nɔpəli/', 'n.垄断，独占，专利');
INSERT INTO `cet4` VALUES ('cet6_0801', 'monster', '/ ‘mɔnstə/', 'n.怪物；畸形的动植物');
INSERT INTO `cet4` VALUES ('cet6_0802', 'morality', '/ mə’ræliti/', 'n.道德，美德，品行');
INSERT INTO `cet4` VALUES ('cet6_0803', 'mortal', '/ ‘mɔ:tl/', 'a.终有一死的；致死的');
INSERT INTO `cet4` VALUES ('cet6_0804', 'mortgage', '/ ‘mɔ:gidʒ/', 'n.抵押 vt.抵押');
INSERT INTO `cet4` VALUES ('cet6_0805', 'motel', '/ məu’tel/', 'n.汽车游客旅馆');
INSERT INTO `cet4` VALUES ('cet6_0806', 'mediate', '/ ‘midieit/', 'a. 居间的,间接的 vt. 斡旋,调停');
INSERT INTO `cet4` VALUES ('cet6_0807', 'medieval', '/ medi’i:vəl/', 'a. 中古的,中世纪的');
INSERT INTO `cet4` VALUES ('cet6_0808', 'mediterranean', '/ meditə’reinjən/', 'n.地中海 a.地中海的');
INSERT INTO `cet4` VALUES ('cet6_0809', 'mourn', '/ mɔ:n/', 'vi.哀痛，哀悼');
INSERT INTO `cet4` VALUES ('cet6_0810', 'muddy', '/ ‘mΛdi/', 'a.多泥的，泥泞的');
INSERT INTO `cet4` VALUES ('cet6_0811', 'multitude', '/ ‘mΛltitju:d/', 'n.大批，大群；大量');
INSERT INTO `cet4` VALUES ('cet6_0812', 'municipal', '/ mju:’nisipəl/', 'a.市的，市立的');
INSERT INTO `cet4` VALUES ('cet6_0813', 'murmur', '/ ‘mə:mə/', 'vi. 低语,低声而言 n.低语');
INSERT INTO `cet4` VALUES ('cet6_0814', 'muscular', '/ ‘mΛskjulə/', 'a.肌肉发达的，强健的');
INSERT INTO `cet4` VALUES ('cet6_0815', 'mutter', '/ ‘mΛtə/', 'vi.轻声低语；抱怨');
INSERT INTO `cet4` VALUES ('cet6_0816', 'melody', '/ ‘melədi/', 'n.旋律，曲调；歌曲');
INSERT INTO `cet4` VALUES ('cet6_0817', 'membership', '/ ‘membəʃip/', 'n.成员资格；会员人数');
INSERT INTO `cet4` VALUES ('cet6_0818', 'menace', '/ ‘menəs/', 'vt.&vi.&n.(进行)威胁');
INSERT INTO `cet4` VALUES ('cet6_0819', 'merge', '/ mə:dʒ/', 'vt. 使合并,使并为一体');
INSERT INTO `cet4` VALUES ('cet6_0820', 'mess', '/ mes/', 'vt.弄脏，弄乱，搞糟');
INSERT INTO `cet4` VALUES ('cet6_0821', 'myth', '/ miθ/', 'n. 神话 ,虚构的事,虚构的人');
INSERT INTO `cet4` VALUES ('cet6_0822', 'naive', '/ na:’i:v/', 'a. 天真的,纯真的,朴素的');
INSERT INTO `cet4` VALUES ('cet6_0823', 'narrative', '/ ‘nærətiv/', 'n. 叙述,故事 a. 叙述的,叙事的');
INSERT INTO `cet4` VALUES ('cet6_0824', 'nasty', '/ ‘na:sti/', 'a.龌龊的；淫猥的');
INSERT INTO `cet4` VALUES ('cet6_0825', 'messenger', '/ ‘mesindʒə/', 'n.送信者，信使');
INSERT INTO `cet4` VALUES ('cet6_0826', 'metallic', '/ mi’tælik/', 'a.金属的 n.金属粒子');
INSERT INTO `cet4` VALUES ('cet6_0827', 'metropolitan', '/ metrə’pɔlitən/', 'a.主要都市的 n.大主教');
INSERT INTO `cet4` VALUES ('cet6_0828', 'midst', '/ ‘midst/', 'n.中部，中间，当中');
INSERT INTO `cet4` VALUES ('cet6_0829', 'migrate', '/ mai’greit/', 'vi.迁移，移居');
INSERT INTO `cet4` VALUES ('cet6_0830', 'Necessitate', '/ ni’sesiteit/', 'vt. 迫使,使成为必需,需要');
INSERT INTO `cet4` VALUES ('cet6_0831', 'negligible', '/ ‘neglidʒəbl/', 'a.微不足道的');
INSERT INTO `cet4` VALUES ('cet6_0832', 'negotiate', '/ ni’gəuʃieit/', 'vi.谈判，交涉，议定');
INSERT INTO `cet4` VALUES ('cet6_0833', 'nickel', '/ ‘nikl/', 'n.镍；镍币');
INSERT INTO `cet4` VALUES ('cet6_0834', 'militant', '/ ‘militənt/', 'a. 好战的');
INSERT INTO `cet4` VALUES ('cet6_0835', 'mingle', '/ ‘miŋgl/', 'vt.使混合 vi.混合起来');
INSERT INTO `cet4` VALUES ('cet6_0836', 'miniature', '/ ‘minjətʃə/', 'n.缩影 a.缩小的');
INSERT INTO `cet4` VALUES ('cet6_0837', 'nightmare', '/ ‘naitmɛə/', 'n.恶梦；经常的恐惧');
INSERT INTO `cet4` VALUES ('cet6_0842', 'Nominal', '/ ‘nɔminl/', 'a. 名义上的,名字的 n. 名词性词');
INSERT INTO `cet4` VALUES ('cet6_0843', 'oriental', '/ ɔri’entl/', 'a.东方的；东方国家的');
INSERT INTO `cet4` VALUES ('cet6_0844', 'orientation', '/ ɔ:rien’teiʃən/', 'n.向东；定位；方向');
INSERT INTO `cet4` VALUES ('cet6_0845', 'originate', '/ ə’ridʒineit/', 'vi.发源 vt.首创');
INSERT INTO `cet4` VALUES ('cet6_0846', 'ornament', '/‘ɔ:nəmənt, ɔ:nəment/', 'n.装饰物 vt. 装修');
INSERT INTO `cet4` VALUES ('cet6_0847', 'Orthodox', '/ ‘ɔ:θədɔks/', 'a. 正统的,传统的,惯常的');
INSERT INTO `cet4` VALUES ('cet6_0848', 'Outbreak', '/ ‘autbreik/', 'n.(战争、愤怒等)爆发');
INSERT INTO `cet4` VALUES ('cet6_0849', 'oval', '/ ‘əuvəl/', 'a.卵形的 n.卵形');
INSERT INTO `cet4` VALUES ('cet6_0850', 'nominate', '/ ‘nɔmineit/', 'vt.提名，推荐；任命');
INSERT INTO `cet4` VALUES ('cet6_0851', 'Nonetheless', '/ ‘nΛnðə’les/', 'adv. 尽管如此,然而');
INSERT INTO `cet4` VALUES ('cet6_0852', 'norm', '/ nɔ:m/', 'n.标准，规范；平均数');
INSERT INTO `cet4` VALUES ('cet6_0853', 'notable', '/ ‘nəutəbl/', 'n.值得注意的；著名的');
INSERT INTO `cet4` VALUES ('cet6_0854', 'Notation', '/ nou’teiʃən/', 'n. 记号法,表示法,注释');
INSERT INTO `cet4` VALUES ('cet6_0855', 'notify', '/ ‘nəutifai/', 'vt.通知，告知；报告');
INSERT INTO `cet4` VALUES ('cet6_0856', 'notion', '/ ‘nəuʃən/', 'n.概念，意念；看法');
INSERT INTO `cet4` VALUES ('cet6_0857', 'notorious', '/ nəu’tɔ:riəs/', 'a.臭名昭著的');
INSERT INTO `cet4` VALUES ('cet6_0858', 'notwithstanding', '/ nɔtwiθ’stændiŋ/', 'prep.尽管，虽然');
INSERT INTO `cet4` VALUES ('cet6_0859', 'nourish', '/ ‘nΛriʃ/', 'vt.提供养分，养育');
INSERT INTO `cet4` VALUES ('cet6_0860', 'novelty', '/ ‘nɔvəlti/', 'n.新颖；新奇的事物');
INSERT INTO `cet4` VALUES ('cet6_0861', 'numerical', '/ nju’merikəl/', 'a.数字的，数值的');
INSERT INTO `cet4` VALUES ('cet6_0862', 'Nutrition', '/ nju:’triʃən/', 'n. 营养,营养学');
INSERT INTO `cet4` VALUES ('cet6_0863', 'oath', '/ əuθ/', 'n.誓言，誓约，宣誓');
INSERT INTO `cet4` VALUES ('cet6_0864', 'overflow', '/ əuvə’fləu/', 'vt.从…中溢出');
INSERT INTO `cet4` VALUES ('cet6_0865', 'overhear', '/ əuvə’hiə/', 'vt.偶然听到；偷听');
INSERT INTO `cet4` VALUES ('cet6_0866', 'overlap', '/ əuvə’læp/', 'vt.与…交搭 vi.重迭');
INSERT INTO `cet4` VALUES ('cet6_0867', 'Overt', '/ ‘əuvə:t/', 'a. 明显的,公然的');
INSERT INTO `cet4` VALUES ('cet6_0868', 'overthrow', '/ ,əuvə’θrəu/', 'vt.推翻 n.推翻，瓦解');
INSERT INTO `cet4` VALUES ('cet6_0869', 'overwhelm', '/ əuvə’hwelm/', 'vt.压倒，使不知所措');
INSERT INTO `cet4` VALUES ('cet6_0870', 'oxide', '/ ‘ɔksaid/', 'n.氧化物');
INSERT INTO `cet4` VALUES ('cet6_0871', 'pamphlet', '/ ‘pæmflit/', 'n.小册子');
INSERT INTO `cet4` VALUES ('cet6_0872', 'panic', '/ ‘pænik/', 'n.恐慌，惊慌');
INSERT INTO `cet4` VALUES ('cet6_0873', 'obedient', '/ ə’bi:djənt/', 'n.服从的，顺从的');
INSERT INTO `cet4` VALUES ('cet6_0874', 'obligation', '/ ɔbli’geiʃən/', 'n.义务，职责，责任');
INSERT INTO `cet4` VALUES ('cet6_0875', 'obscene', '/ ɔb’si:n/', 'a. 淫秽的,猥亵的');
INSERT INTO `cet4` VALUES ('cet6_0876', 'obscure', '/ əb’skjuə/', 'a.阴暗的；蒙昧的');
INSERT INTO `cet4` VALUES ('cet6_0877', 'odor', '/ ‘əudə/', 'n. 气味,名声,味');
INSERT INTO `cet4` VALUES ('cet6_0878', 'paradise', '/ ‘pærədais/', 'n.伊甸乐园；天堂');
INSERT INTO `cet4` VALUES ('cet6_0879', 'paradox', '/ ‘pærədɔks/', 'n. 似非而是的论点,自相矛盾的话');
INSERT INTO `cet4` VALUES ('cet6_0880', 'paralyze', '/ ‘pærəlaiz/', 'vt. 使瘫痪,使麻痹');
INSERT INTO `cet4` VALUES ('cet6_0881', 'parameter', '/ pə’ræmitə/', 'n.参(变)数；参量');
INSERT INTO `cet4` VALUES ('cet6_0882', 'participant', '/ pa:’tisipənt/', 'n.参加者 a.有份的');
INSERT INTO `cet4` VALUES ('cet6_0883', 'partition', '/ pa:’tiʃən/', 'n.分开，分割；融墙');
INSERT INTO `cet4` VALUES ('cet6_0884', 'pastime', '/ ‘pa:staim/', 'n.消遣，娱乐');
INSERT INTO `cet4` VALUES ('cet6_0885', 'offence', '/ ə’fens/', 'n.犯罪，犯规；冒犯');
INSERT INTO `cet4` VALUES ('cet6_0886', 'offensive', '/ ə’fensiv/', 'a.冒犯的；进攻的');
INSERT INTO `cet4` VALUES ('cet6_0887', 'offset', '/ ‘ɔ:fset/', 'n.分支，抵销 vt.抵销');
INSERT INTO `cet4` VALUES ('cet6_0888', 'offspring', '/ ‘ɔ(:)fspriŋ/', 'n.儿女，子孙，后代');
INSERT INTO `cet4` VALUES ('cet6_0889', 'opaque', '/ əu’peik/', 'a.不透明的；不传导的');
INSERT INTO `cet4` VALUES ('cet6_0890', 'oppress', '/ ə’pres/', 'vt.压迫，压制；压抑');
INSERT INTO `cet4` VALUES ('cet6_0891', 'optimism', '/ ‘ɔptimizm/', 'n.乐观，乐观主义');
INSERT INTO `cet4` VALUES ('cet6_0892', 'optimum', '/ ‘ɔptimiəm/', 'n.最适条件，最适度');
INSERT INTO `cet4` VALUES ('cet6_0893', 'option', '/ ‘ɔpʃən/', 'n.选择，取舍');
INSERT INTO `cet4` VALUES ('cet6_0894', 'pasture', '/ ‘pa:stʃə/', 'n.牧场；牲畜饲养');
INSERT INTO `cet4` VALUES ('cet6_0895', 'patent', '/ ‘peitənt/', 'a.专利的 n.专利');
INSERT INTO `cet4` VALUES ('cet6_0896', 'pathetic', '/ pə’θetik/', 'a.哀婉动人的；可怜的');
INSERT INTO `cet4` VALUES ('cet6_0897', 'patriotic', '/ pætri’ɔtik/', 'a.爱国的');
INSERT INTO `cet4` VALUES ('cet6_0898', 'patrol', '/ pə’trəul/', 'n.巡逻 n.巡逻，巡查');
INSERT INTO `cet4` VALUES ('cet6_0899', 'pave', '/ peiv/', 'vt.铺，筑(路等)');
INSERT INTO `cet4` VALUES ('cet6_0900', 'orient', '/ ‘ɔ:riənt/', 'n.东方；亚洲，远东');
INSERT INTO `cet4` VALUES ('cet6_0901', 'pearl', '/ pə:l/', 'n.珍珠；珍珠母');
INSERT INTO `cet4` VALUES ('cet6_0906', 'pedal', '/ ‘pedl/', 'n.踏脚，踏板，脚蹬');
INSERT INTO `cet4` VALUES ('cet6_0907', 'pedestrian', '/ pi’destriən/', 'n.行人，步行者');
INSERT INTO `cet4` VALUES ('cet6_0908', 'peel', '/ pi:l/', 'vt.剥(皮)，削(皮)');
INSERT INTO `cet4` VALUES ('cet6_0909', 'pledge', '/ pledʒ/', 'n.誓言 vt.使发誓');
INSERT INTO `cet4` VALUES ('cet6_0910', 'poke', '/ pəuk/', 'vt.戳，刺；伸(头等)');
INSERT INTO `cet4` VALUES ('cet6_0911', 'polar', '/ ‘pəulə/', 'a.南(北)极的；极性的');
INSERT INTO `cet4` VALUES ('cet6_0912', 'poll', '/ pəul/', 'n.投票 vi.投票');
INSERT INTO `cet4` VALUES ('cet6_0913', 'peer', '/ piə/', 'vi.凝视；隐约出现');
INSERT INTO `cet4` VALUES ('cet6_0914', 'penalty', '/ ‘penlti/', 'n.处罚，刑罚；罚款');
INSERT INTO `cet4` VALUES ('cet6_0915', 'Pendulum', '/ ‘pendjuləm/', 'n.(钟等的)摆');
INSERT INTO `cet4` VALUES ('cet6_0916', 'pension', '/ ‘penʃən/', 'n.抚恤金，年金');
INSERT INTO `cet4` VALUES ('cet6_0917', 'perception', '/ pə’sepʃən/', 'n.感觉；概念；理解力');
INSERT INTO `cet4` VALUES ('cet6_0918', 'perfection', '/ pə’fekʃən/', 'n.尽善尽美；无比精确');
INSERT INTO `cet4` VALUES ('cet6_0919', 'perfume', '/ ‘pə:fju:m, pə:’fju:m/', 'n.香味，芳香；香料');
INSERT INTO `cet4` VALUES ('cet6_0920', 'periodic', '/ ‘piəri’ɔdik/', 'n.周期的；一定时期的');
INSERT INTO `cet4` VALUES ('cet6_0921', 'periodical', '/ piəri’ɔdikəl/', 'n.期刊，杂志');
INSERT INTO `cet4` VALUES ('cet6_0922', 'perish', '/ ‘periʃ/', 'vi.死亡，夭折；枯萎');
INSERT INTO `cet4` VALUES ('cet6_0923', 'Permeate', '/ ‘pə:miet/', 'vt. 弥漫,渗透,充满 vi. 透入');
INSERT INTO `cet4` VALUES ('cet6_0924', 'Permissible', '/ pə’misəbl/', 'a. 可允许的');
INSERT INTO `cet4` VALUES ('cet6_0925', 'perpetual', '/ pə’petʃuəl/', 'a.永久的；四季开花的');
INSERT INTO `cet4` VALUES ('cet6_0926', 'perplex', '/ pə’pleks/', 'vt.迷惑，困惑，难住');
INSERT INTO `cet4` VALUES ('cet6_0927', 'Persistent', '/ pə (:)’sistənt/', 'a. 固执的, 坚持的, 持续的');
INSERT INTO `cet4` VALUES ('cet6_0928', 'ponder', '/ ‘pɔndə/', 'vt.考虑 vi.沉思');
INSERT INTO `cet4` VALUES ('cet6_0929', 'Pope', '/ pəup/', 'n.(罗马 天主教的)教皇');
INSERT INTO `cet4` VALUES ('cet6_0930', 'porch', '/ pɔ:tʃ/', 'n.门廊，入口处');
INSERT INTO `cet4` VALUES ('cet6_0931', 'pore', '/ pɔ:/', 'n.毛孔，气孔，细孔');
INSERT INTO `cet4` VALUES ('cet6_0932', 'portray', '/ pɔ:’trei/', 'vt. 描绘,描写,描写...的肖像,');
INSERT INTO `cet4` VALUES ('cet6_0933', 'pose', '/ pəuz/', 'vi.假装，摆姿势 n.姿势');
INSERT INTO `cet4` VALUES ('cet6_0934', 'poster', '/ ‘pəustə/', 'n. 海报,招贴,脚夫');
INSERT INTO `cet4` VALUES ('cet6_0935', 'postulate', '/ ‘pɔstjuleit/', 'vt.要求，假定，假设');
INSERT INTO `cet4` VALUES ('cet6_0936', 'practicable', '/ ‘præktikəbl/', 'a.能实行的；适用的');
INSERT INTO `cet4` VALUES ('cet6_0937', 'prayer', '/ ‘prɛə/', 'n.祈祷，祈求');
INSERT INTO `cet4` VALUES ('cet6_0938', 'preach', '/ pri:tʃ/', 'vt.说教，布道；鼓吹');
INSERT INTO `cet4` VALUES ('cet6_0939', 'precede', '/ pri(:)’si:d/', 'vt.先于… vi.领先');
INSERT INTO `cet4` VALUES ('cet6_0940', 'precipitate', '/ pri’sipiteit/', 'a.突如其来的 vt.使突然发生 n.沉淀物');
INSERT INTO `cet4` VALUES ('cet6_0941', 'preclude', '/ pri’klu:d/', 'vt. 预先排除,预防,阻止,妨碍');
INSERT INTO `cet4` VALUES ('cet6_0942', 'predecessor', '/ ‘pri:disesə/', 'n.前辈，前任者');
INSERT INTO `cet4` VALUES ('cet6_0943', 'predominant', '/ pri’dɔminənt/', 'a.占优势的；主要的');
INSERT INTO `cet4` VALUES ('cet6_0944', 'pregnant', '/ ‘pregnənt/', 'a.怀孕的；意义深长的');
INSERT INTO `cet4` VALUES ('cet6_0945', 'premature', '/ pri:mə’tjuə/a. 早熟/', '过早的 n. 早产儿');
INSERT INTO `cet4` VALUES ('cet6_0946', 'premise', '/ ‘premis, pri’maiz/', 'n. 前提,假设，房产');
INSERT INTO `cet4` VALUES ('cet6_0947', 'premium', '/ ‘pri:mjəm/', 'n. 额外费用,奖金,奖赏,保险费');
INSERT INTO `cet4` VALUES ('cet6_0948', 'pest', '/ pest/', 'n.害虫；害人虫');
INSERT INTO `cet4` VALUES ('cet6_0949', 'petition', '/ pi’tiʃən/', 'n.请愿 vt.向…请愿');
INSERT INTO `cet4` VALUES ('cet6_0950', 'petty', '/ ‘peti/', 'a.细小的；器量小的');
INSERT INTO `cet4` VALUES ('cet6_0951', 'Physiological', '/ fiziə’lɔdʒikəl/', 'a. 生理学的, 生理学上的');
INSERT INTO `cet4` VALUES ('cet6_0952', 'plague', '/ pleig/', 'n.瘟疫，鼠疫；天灾');
INSERT INTO `cet4` VALUES ('cet6_0953', 'plaster', '/ ‘pla:stə/', 'n.灰泥；硬膏；熟石膏');
INSERT INTO `cet4` VALUES ('cet6_0954', 'plateau', '/ ‘plætəu/', 'n.高原；平稳时期');
INSERT INTO `cet4` VALUES ('cet6_0955', 'Plausible', '/ ‘plɔ: zəbl/', 'a. 似乎真实的, 似乎合理的');
INSERT INTO `cet4` VALUES ('cet6_0956', 'plea', '/ pli:/', 'n.请愿，请求，恳求');
INSERT INTO `cet4` VALUES ('cet6_0957', 'prescription', '/ pris’kripʃən/', 'n.药方，处方的药');
INSERT INTO `cet4` VALUES ('cet6_0958', 'presentation', '/ prezen’teiʃən/', 'n.介绍；赠送；呈现');
INSERT INTO `cet4` VALUES ('cet6_0959', 'preside', '/ pri’zaid/', 'vi.主持；主奏');
INSERT INTO `cet4` VALUES ('cet6_0960', 'plea', '/ pli:/', 'n.请愿，请求，恳求');
INSERT INTO `cet4` VALUES ('cet6_0961', 'prestige', '/ pres’ti:ʒ/', 'n.威望，威信，声望');
INSERT INTO `cet4` VALUES ('cet6_0962', 'presumably', '/ pri’zju:məbli/', 'ad.推测起来，大概');
INSERT INTO `cet4` VALUES ('cet6_0963', 'plead', '/ pli:d/', 'vt.为…辩护 vi.抗辩');
INSERT INTO `cet4` VALUES ('cet6_0968', 'presume', '/ pri’zju:m/', 'vt.假定，假设，揣测');
INSERT INTO `cet4` VALUES ('cet6_0969', 'pretext', '/ ‘pri:tekst/', 'n. 借口,托辞');
INSERT INTO `cet4` VALUES ('cet6_0970', 'purify', '/ ‘pjuərifai/', 'vt.提纯，精炼(金属)');
INSERT INTO `cet4` VALUES ('cet6_0971', 'purity', '/ ‘pjuəriti/', 'n.纯净；纯洁；纯度');
INSERT INTO `cet4` VALUES ('cet6_0972', 'pursuit', '/ pə’sju:t/', 'n.追赶；追求；事务');
INSERT INTO `cet4` VALUES ('cet6_0973', 'qualification', '/ kwɔlifi’keiʃən/', 'n.资格；限制条件');
INSERT INTO `cet4` VALUES ('cet6_0974', 'qualitative', '/ ‘kwɔlitətiv/', 'a.质的；定性的');
INSERT INTO `cet4` VALUES ('cet6_0975', 'quantify', '/ ‘kwɔntifai/', 'vt.确定…的数量');
INSERT INTO `cet4` VALUES ('cet6_0976', 'quantitative', '/ ‘kwɔntitətiv/', 'a.量的；定量的');
INSERT INTO `cet4` VALUES ('cet6_0977', 'quart', '/ ‘kwɔ:t/', 'n.夸脱(=2 品脱)');
INSERT INTO `cet4` VALUES ('cet6_0978', 'prevalent', '/ ‘prevələnt/', 'a.流行的；盛行的');
INSERT INTO `cet4` VALUES ('cet6_0979', 'prey', '/ prei/', 'vi.猎物 vi.捕获');
INSERT INTO `cet4` VALUES ('cet6_0980', 'priest', '/ pri:st/', 'n.教士，牧师，神父');
INSERT INTO `cet4` VALUES ('cet6_0981', 'priority', '/ prai’ɔriti/', 'n.先，前；优先，重点');
INSERT INTO `cet4` VALUES ('cet6_0982', 'privacy', '/ ‘praivəsi/', 'n. 隐私,隐居,秘密');
INSERT INTO `cet4` VALUES ('cet6_0983', 'probe', '/ prəub/', 'n.探针 vt.用探针探查');
INSERT INTO `cet4` VALUES ('cet6_0984', 'proceeding', '/ prə’si:diŋ/', 'n.程序，行动，事项');
INSERT INTO `cet4` VALUES ('cet6_0985', 'proclaim', '/ prə’kleim/', 'vt.宣告，宣布；表明');
INSERT INTO `cet4` VALUES ('cet6_0986', 'productive', '/ prə’dΛktiv/', 'a.生产的；出产…的');
INSERT INTO `cet4` VALUES ('cet6_0987', 'productivity', '/ prədΛk’tiviti/', 'n.生产率；多产');
INSERT INTO `cet4` VALUES ('cet6_0988', 'proficiency', '/ prə’fiʃənsi/', 'n.熟练，精通');
INSERT INTO `cet4` VALUES ('cet6_0989', 'profile', '/ ‘prəufail/', 'n. 侧面,轮廓,人物素描,传略');
INSERT INTO `cet4` VALUES ('cet6_0990', 'profitable', '/ ‘prɔfitəbl/', 'a.有利的；有益的');
INSERT INTO `cet4` VALUES ('cet6_0991', 'profound', '/ prə’faund/', 'a.深刻的；渊博的');
INSERT INTO `cet4` VALUES ('cet6_0992', 'prolong', '/ prə’lɔŋ/', 'vt.延长，拉长，拖延');
INSERT INTO `cet4` VALUES ('cet6_0993', 'promising', '/ ‘prɔmisiŋ/', 'a.有希望的；有前途的');
INSERT INTO `cet4` VALUES ('cet6_0994', 'prone', '/ prəun/', 'a. 俯伏的,易于...的');
INSERT INTO `cet4` VALUES ('cet6_0995', 'quarterly', '/ ‘kwɔ:təli/', 'a.季度的 ad.季度地');
INSERT INTO `cet4` VALUES ('cet6_0996', 'quartz', '/ kwɔ:ts/', 'n.石英');
INSERT INTO `cet4` VALUES ('cet6_0997', 'queer', '/ ‘kwiə/', 'a.奇怪的，古怪的');
INSERT INTO `cet4` VALUES ('cet6_0998', 'quench', '/ kwentʃ/', 'vt.熄灭，扑灭；压制');
INSERT INTO `cet4` VALUES ('cet6_0999', 'quest', '/ kwest/', 'vt.寻找 vi.追求');
INSERT INTO `cet4` VALUES ('cet6_1000', 'questionnaire', '/ kwestʃə’nɛə/', 'n.调查表，征求意见表');
INSERT INTO `cet4` VALUES ('cet6_1001', 'quiver', '/ ‘kwivə/', 'vi.(轻微地)颤动');
INSERT INTO `cet4` VALUES ('cet6_1002', 'racket', '/ ‘rækit/', 'n.球拍');
INSERT INTO `cet4` VALUES ('cet6_1003', 'radiant', '/ ‘reidjənt/', 'a.绚丽的；容光焕发的');
INSERT INTO `cet4` VALUES ('cet6_1004', 'radiate', '/ ‘reidieit/', 'vi.发射光线；辐射');
INSERT INTO `cet4` VALUES ('cet6_1005', 'radical', '/ ‘rædikəl/', 'a.基本的；激进的');
INSERT INTO `cet4` VALUES ('cet6_1006', 'rage', '/ reidʒ/', 'n.(一阵)狂怒，盛怒');
INSERT INTO `cet4` VALUES ('cet6_1007', 'propaganda', '/ prɔpə’gændə/', 'n.宣传；宣传机构');
INSERT INTO `cet4` VALUES ('cet6_1008', 'propagate', '/ ‘prɔpəgeit/', 'vt.繁殖；传播，普及');
INSERT INTO `cet4` VALUES ('cet6_1009', 'propel', '/ prə’pel/', 'vt.推进，推动');
INSERT INTO `cet4` VALUES ('cet6_1010', 'raid', '/ reid/', 'n.袭击；突然搜查');
INSERT INTO `cet4` VALUES ('cet6_1011', 'rally', '/ ‘ræli/', 'n.&vt.&vi.(重新)集合');
INSERT INTO `cet4` VALUES ('cet6_1012', 'random', '/ ‘rændəm/', 'n.随机 a.随机的');
INSERT INTO `cet4` VALUES ('cet6_1013', 'rating', '/ ‘reitiŋ/', 'n. 等级,评定结果，收视(听)率');
INSERT INTO `cet4` VALUES ('cet6_1014', 'readily', '/ ‘redili/', 'ad.乐意地；无困难地');
INSERT INTO `cet4` VALUES ('cet6_1015', 'realistic', '/ riə’listik/', 'a.现实的；现实主义的');
INSERT INTO `cet4` VALUES ('cet6_1016', 'reap', '/ ri:p/', 'vt.&vi.收割，收获');
INSERT INTO `cet4` VALUES ('cet6_1017', 'prophet', '/‘prɔfit/', 'n.预言家，先知');
INSERT INTO `cet4` VALUES ('cet6_1018', 'proposition', '/ prɔpə’ziʃən/', 'n.命题，主题；提议');
INSERT INTO `cet4` VALUES ('cet6_1019', 'prose', '/ prəuz/', 'n.散文');
INSERT INTO `cet4` VALUES ('cet6_1020', 'prospective', '/ prəs’pektiv/a. 有希望的,预期/', '将来的');
INSERT INTO `cet4` VALUES ('cet6_1021', 'prototype', '/ ‘prəutətaip/', 'n.原型；典型，范例');
INSERT INTO `cet4` VALUES ('cet6_1022', 'provocative', '/ prə’vɔkətiv/', 'a. 挑衅的,刺激的,挑逗的');
INSERT INTO `cet4` VALUES ('cet6_1023', 'provoke', '/ prə’vəuk/', 'vt. 激怒,惹起,驱使');
INSERT INTO `cet4` VALUES ('cet6_1024', 'proximity', '/ prak’siməti/', 'n. 接近,亲近');
INSERT INTO `cet4` VALUES ('cet6_1025', 'publicity', '/ pΛb’lisiti/', 'n. 公开,名声,宣传');
INSERT INTO `cet4` VALUES ('cet6_1026', 'rebellion', '/ ri’beljən/', 'n.造反；叛乱；反抗');
INSERT INTO `cet4` VALUES ('cet6_1027', 'recession', '/ ri’seʃən/', 'n. (经济)衰退,不景气');
INSERT INTO `cet4` VALUES ('cet6_1028', 'recipe', '/ ‘resipi/', 'n. 菜谱 ，烹饪法；处方');
INSERT INTO `cet4` VALUES ('cet6_1029', 'recipient', '/ ri’sipiənt/', 'n. 接受者，接收者');
INSERT INTO `cet4` VALUES ('cet6_1034', 'reciprocal', '/ ri’siprəkəl/', 'a.相互的；互利的');
INSERT INTO `cet4` VALUES ('cet6_1035', 'recite', '/ ri’sait/', 'vt.&vi.背诵，朗诵');
INSERT INTO `cet4` VALUES ('cet6_1036', 'republican', '/ ri’pΛblikən/', 'a.共和国的');
INSERT INTO `cet4` VALUES ('cet6_1037', 'resemblance', '/ ri’zembləns/', 'n.相似，相似性');
INSERT INTO `cet4` VALUES ('cet6_1038', 'resent', '/ ri’zent/', 'vt.对…不满，怨恨');
INSERT INTO `cet4` VALUES ('cet6_1039', 'reservation', '/ rezə’veiʃən/', 'n.保留；预定，预订');
INSERT INTO `cet4` VALUES ('cet6_1040', 'reside', '/ ri’zaid/', 'vi.居住，驻扎；属于');
INSERT INTO `cet4` VALUES ('cet6_1041', 'residential', '/ rezi’denʃəl/', 'a. 住宅的,与居住有关的');
INSERT INTO `cet4` VALUES ('cet6_1042', 'resonance', '/ ‘rɛznəns/', 'n. 共鸣,回声,共振');
INSERT INTO `cet4` VALUES ('cet6_1043', 'resultant', '/ ri’zΛltənt/', 'a.作为结果而发生的');
INSERT INTO `cet4` VALUES ('cet6_1044', 'retail', '/ ‘ri:teil/', 'n.零售 a.零售的');
INSERT INTO `cet4` VALUES ('cet6_1045', 'reckless', '/ ‘reklis/', 'a.粗心大意的；鲁莽的');
INSERT INTO `cet4` VALUES ('cet6_1046', 'reckon', '/ ‘rekən/', 'vi.数，算帐 vt.认为');
INSERT INTO `cet4` VALUES ('cet6_1047', 'reclaim', '/ ri’kleim/', 'vt.开垦，开拓；回收');
INSERT INTO `cet4` VALUES ('cet6_1048', 'reconcile', '/ ‘rekənsail/', 'vt.使和好；调停');
INSERT INTO `cet4` VALUES ('cet6_1049', 'recreation', '/ rekri’eiʃən/', 'n.消遣，娱乐活动');
INSERT INTO `cet4` VALUES ('cet6_1050', 'recruit', '/ ri’kru:t/', 'vi.征募(新兵),招收 n. 新兵,新成员');
INSERT INTO `cet4` VALUES ('cet6_1051', 'rectangular', '/ rek’tæŋgjulə/', 'a. 矩形的,成直角的');
INSERT INTO `cet4` VALUES ('cet6_1052', 'rectify', '/ ‘rektifai/', 'vt.纠正；调整；精馏');
INSERT INTO `cet4` VALUES ('cet6_1053', 'recur', '/ ri’kə:/', 'vi. 复发,重现,再发生');
INSERT INTO `cet4` VALUES ('cet6_1054', 'retention', '/ ri’tenʃən/', 'n. 保留,保有,保持');
INSERT INTO `cet4` VALUES ('cet6_1055', 'retort', '/ ri’tɔ:t/', 'vt.&vi.反击；反驳');
INSERT INTO `cet4` VALUES ('cet6_1056', 'recycle', '/ ‘ri:’saikl/', 'vt. 使再循环,再利用,再制');
INSERT INTO `cet4` VALUES ('cet6_1057', 'redundant', '/ ri’dΛndənt/', 'a. 多余的,过多的,冗长的');
INSERT INTO `cet4` VALUES ('cet6_1058', 'refrain', '/ ri’frein/', 'vi.抑制，制止，忍住');
INSERT INTO `cet4` VALUES ('cet6_1059', 'refreshment', '/ ri’freʃmənt/', 'n.茶点，点心，便餐');
INSERT INTO `cet4` VALUES ('cet6_1060', 'refugee', '/ refju:’dʒi:/', 'n.难民，流亡者');
INSERT INTO `cet4` VALUES ('cet6_1061', 'retrieve', '/ ri’tri:v/', 'vt. 取回,挽回, 检索');
INSERT INTO `cet4` VALUES ('cet6_1062', 'retrospect', '/ ‘retrəspekt/', 'n. 回顾,追忆,回溯');
INSERT INTO `cet4` VALUES ('cet6_1063', 'revelation', '/ revi’leiʃən/', 'n. 揭露,泄露,启示,展示');
INSERT INTO `cet4` VALUES ('cet6_1064', 'revenge', '/ ri’vendʒ/', 'vt.替…报仇 n.报仇');
INSERT INTO `cet4` VALUES ('cet6_1065', 'revive', '/ ri’vaiv/', 'vt.&vi.苏醒；复兴');
INSERT INTO `cet4` VALUES ('cet6_1066', 'refute', '/ ri’fju:t/', 'vt.驳斥，反驳，驳倒');
INSERT INTO `cet4` VALUES ('cet6_1067', 'regime', '/ rei’ʒi:m/', 'n.政体，政权；制度');
INSERT INTO `cet4` VALUES ('cet6_1068', 'reign', '/ rein/', 'n.朝代');
INSERT INTO `cet4` VALUES ('cet6_1069', 'revolve', '/ ri’vɔlv/', 'vt.&vi.(使)旋转');
INSERT INTO `cet4` VALUES ('cet6_1070', 'rig', '/ rig/', 'vt. 操纵,垄断 n. 钻井架,塔台');
INSERT INTO `cet4` VALUES ('cet6_1071', 'rigorous', '/ ‘rigərəs/', 'a.(性格等)严峻的');
INSERT INTO `cet4` VALUES ('cet6_1072', 'rim', '/ rim/', 'n.边；边缘，(眼镜)框');
INSERT INTO `cet4` VALUES ('cet6_1073', 'rejoice', '/ ri’dʒɔis/', 'vi.欣喜，高兴');
INSERT INTO `cet4` VALUES ('cet6_1074', 'relay', '/ ‘ri:lei/', 'vt.分程传递；使接替');
INSERT INTO `cet4` VALUES ('cet6_1075', 'riot', '/ ‘raiət/', 'n.&vi.骚乱，暴乱');
INSERT INTO `cet4` VALUES ('cet6_1076', 'reliance', '/ ri’laiəns/', 'n.信任，信赖，信心');
INSERT INTO `cet4` VALUES ('cet6_1077', 'remainder', '/ ri’meində/', 'n.剩余(物)；余数');
INSERT INTO `cet4` VALUES ('cet6_1078', 'remnant', '/‘remnənt/n.残留部分，遗迹 a.剩余/', '残余的');
INSERT INTO `cet4` VALUES ('cet6_1079', 'renaissance', '/ rə’neisəns/', 'n. 复活,复兴,文艺复兴');
INSERT INTO `cet4` VALUES ('cet6_1080', 'repay', '/ ri:’pei/', 'vt.&vi.偿还，报答');
INSERT INTO `cet4` VALUES ('cet6_1081', 'rip', '/ rip/', 'vi.撕啐，扯破，划破');
INSERT INTO `cet4` VALUES ('cet6_1082', 'ripple', '/ ‘ripl/', 'n.涟漪，细浪，波纹');
INSERT INTO `cet4` VALUES ('cet6_1083', 'ritual', '/ ‘ritjuəl/', 'n. 仪式 a. 仪式的,例行公事的');
INSERT INTO `cet4` VALUES ('cet6_1084', 'robust', '/ rəu’bΛst/', 'a. 强健的,粗野的,坚定的');
INSERT INTO `cet4` VALUES ('cet6_1085', 'romance', '/ rəu’mæns/', 'n.传奇；浪漫文学');
INSERT INTO `cet4` VALUES ('cet6_1086', 'rot', '/ rɔt/', 'vt.烂，腐坏 n.腐烂');
INSERT INTO `cet4` VALUES ('cet6_1087', 'repel', '/ ri’pel/', 'vt.拒绝；使厌恶');
INSERT INTO `cet4` VALUES ('cet6_1088', 'repertoire', '/‘repətwa:/n.全部/', '保留剧目,全部技能');
INSERT INTO `cet4` VALUES ('cet6_1089', 'replacement', '/ ri’pleismənt/', 'n.归还；取代；置换');
INSERT INTO `cet4` VALUES ('cet6_1090', 'representation', '/ reprizen’teiʃən/', 'n.描写；陈述；代表');
INSERT INTO `cet4` VALUES ('cet6_1091', 'reproach', '/ ri’prəutʃ/', 'vt.&n.责备，指责');
INSERT INTO `cet4` VALUES ('cet6_1092', 'royalty', '/ ‘rɔiəlti/', 'n.皇家，王族，皇族');
INSERT INTO `cet4` VALUES ('cet6_1093', 'rupture', '/ ‘rΛptʃə/', 'n. 破裂,决裂 vt.(使)破裂');
INSERT INTO `cet4` VALUES ('cet6_1094', 'safeguard', '/ ‘seifga:d/', 'n.保护措施；护照');
INSERT INTO `cet4` VALUES ('cet6_1095', 'saint', '/ seint/', 'n.圣徒；基督教徒');
INSERT INTO `cet4` VALUES ('cet6_1100', 'sanction', '/ ‘sæŋkʃən/', 'n. 制裁，批准');
INSERT INTO `cet4` VALUES ('cet6_1101', 'saturate', '/ ‘sætʃəreit/', 'vt. 使浸透,使充满,使饱和');
INSERT INTO `cet4` VALUES ('cet6_1102', 'sauce', '/ sɔ:s/', 'n.调味汁，酱汁');
INSERT INTO `cet4` VALUES ('cet6_1103', 'shrug', '/ ʃrΛg/', 'vt.&vi.耸(肩) n.耸肩');
INSERT INTO `cet4` VALUES ('cet6_1104', 'shutter', '/ ‘ʃΛtə/', 'n.百叶窗；(相机)快门');
INSERT INTO `cet4` VALUES ('cet6_1105', 'shuttle', '/ ‘ʃΛtl/', 'n.(织机的)梭');
INSERT INTO `cet4` VALUES ('cet6_1106', 'savage', '/ ‘sævidʒ/a.未开发的,野蛮/', '残暴的 n.野蛮人');
INSERT INTO `cet4` VALUES ('cet6_1107', 'scandal', '/ ‘skændl/', 'n.丑事，丑闻；耻辱');
INSERT INTO `cet4` VALUES ('cet6_1108', 'scar', '/ ska:/', 'n.瘢痕');
INSERT INTO `cet4` VALUES ('cet6_1109', 'signify', '/ ‘signifai/', 'vt.表示，意味着');
INSERT INTO `cet4` VALUES ('cet6_1110', 'silicon', '/ ‘silikən/', 'n.硅(旧名矽)');
INSERT INTO `cet4` VALUES ('cet6_1111', 'simulate', '/ ‘simjuleit/', 'vt. 模拟,假装,模仿');
INSERT INTO `cet4` VALUES ('cet6_1112', 'simultaneous', '/ siməl’teinjəs/', 'a.同时的，同时存在的');
INSERT INTO `cet4` VALUES ('cet6_1113', 'sin', '/ sin/', 'n.罪，罪孽 vi.犯罪');
INSERT INTO `cet4` VALUES ('cet6_1114', 'scared', '/skɛəd /', 'adj. 受惊吓的');
INSERT INTO `cet4` VALUES ('cet6_1115', 'scent', '/ sent/', 'n.气味，香味；香水');
INSERT INTO `cet4` VALUES ('cet6_1116', 'sceptical', '/ ‘skeptikəl/', 'a. 怀疑的');
INSERT INTO `cet4` VALUES ('cet6_1117', 'situated', '/ ‘sitjueitid/', 'a.位于…的');
INSERT INTO `cet4` VALUES ('cet6_1118', 'scorn', '/ skɔ:n/', 'n.轻蔑；嘲笑 vt.轻蔑');
INSERT INTO `cet4` VALUES ('cet6_1119', 'scrap', '/ skræp/', 'n.碎片；废料 vt.废弃');
INSERT INTO `cet4` VALUES ('cet6_1120', 'script', '/ skript/', 'n. 手迹,手稿,剧本,字母表');
INSERT INTO `cet4` VALUES ('cet6_1121', 'scrutiny', '/ ‘skrutni/', 'n. 细看,仔细检查,监视');
INSERT INTO `cet4` VALUES ('cet6_1122', 'sculpture', '/ ‘skΛlptʃə/', 'n. 雕刻,雕塑,雕刻(术)');
INSERT INTO `cet4` VALUES ('cet6_1123', 'seam', '/ si:m/', 'n.缝口；接缝；骨缝');
INSERT INTO `cet4` VALUES ('cet6_1124', 'skeleton', '/ ‘skelitən/', 'n.骨骼，骷髅；骨架');
INSERT INTO `cet4` VALUES ('cet6_1125', 'skeptical', '/ ‘skeptikl/', 'a. 怀疑的,多疑的');
INSERT INTO `cet4` VALUES ('cet6_1126', 'skip', '/ skip/', 'vi.跳；跳绳；略过');
INSERT INTO `cet4` VALUES ('cet6_1127', 'slack', '/ slæk/', 'a.松弛的; 萧条的;懈怠的；vt.使松弛');
INSERT INTO `cet4` VALUES ('cet6_1128', 'slap', '/ slæp/', 'vt.掴，拍 n.巴掌，拍');
INSERT INTO `cet4` VALUES ('cet6_1129', 'slaughter', '/ ‘slɔ:tə/', 'vt.&n.屠杀，屠宰');
INSERT INTO `cet4` VALUES ('cet6_1130', 'slim', '/ slim/', 'a.细长的；微小的');
INSERT INTO `cet4` VALUES ('cet6_1131', 'sector', '/ ‘sektə/', 'n.部门,部分,扇形');
INSERT INTO `cet4` VALUES ('cet6_1132', 'seemingly', '/ ‘si:miŋli/', 'ad.表面上，外表上');
INSERT INTO `cet4` VALUES ('cet6_1133', 'segment', '/ ‘segmənt/', 'n.切片，部分；段，节');
INSERT INTO `cet4` VALUES ('cet6_1134', 'segregate', '/ ‘segrigeit/', 'a.分离的,被隔离的 vt.使分离,使隔离');
INSERT INTO `cet4` VALUES ('cet6_1135', 'slogan', '/ ‘sləugən/', 'n.标语，口号');
INSERT INTO `cet4` VALUES ('cet6_1136', 'slot', '/ slɔt/', 'n. 缝,狭槽,位置,职位');
INSERT INTO `cet4` VALUES ('cet6_1137', 'slum', '/ slΛm/', 'n.贫民窟，贫民区');
INSERT INTO `cet4` VALUES ('cet6_1138', 'smash', '/ smæʃ/', 'vt.打碎，打破，粉碎');
INSERT INTO `cet4` VALUES ('cet6_1139', 'smuggle', '/ ‘smΛgl/', 'vt.私运 vi.走私');
INSERT INTO `cet4` VALUES ('cet6_1140', 'snack', '/ snæk/', 'n.快餐，小吃');
INSERT INTO `cet4` VALUES ('cet6_1141', 'seminar', '/ ‘semina:/', 'n. 研究会,讨论发表会');
INSERT INTO `cet4` VALUES ('cet6_1142', 'senator', '/ ‘senətə/', 'n.参议员；评议员');
INSERT INTO `cet4` VALUES ('cet6_1143', 'sensation', '/ sen’seiʃən/', 'n.感觉，知觉；轰动');
INSERT INTO `cet4` VALUES ('cet6_1144', 'sentiment', '/ ‘sentimənt/', 'n.感情；情操；情绪');
INSERT INTO `cet4` VALUES ('cet6_1145', 'sexual', '/ ‘seksjuəl/', 'a. 性的,性别的');
INSERT INTO `cet4` VALUES ('cet6_1146', 'snap', '/ snæp/', 'vt.猛咬，突然折断');
INSERT INTO `cet4` VALUES ('cet6_1147', 'snatch', '/ snætʃ/', 'n. 抢夺,攫取,片段 vt. 夺取,攫取');
INSERT INTO `cet4` VALUES ('cet6_1148', 'soar', '/ sɔ:/', 'vi. 猛增，高耸，高飞,翱翔');
INSERT INTO `cet4` VALUES ('cet6_1149', 'sober', '/ ‘səubə/', 'a.清醒的；适度的');
INSERT INTO `cet4` VALUES ('cet6_1150', 'sociology', '/ səusi’ɔlədʒi/', 'n.社会学');
INSERT INTO `cet4` VALUES ('cet6_1151', 'software', '/ ‘sɔftwɛə/', 'n.(计算机的)软件');
INSERT INTO `cet4` VALUES ('cet6_1152', 'solidarity', '/ sɔli’dæriti/', 'n.团结；休戚相关');
INSERT INTO `cet4` VALUES ('cet6_1153', 'solitary', '/ ‘sɔlitəri/', 'n. 独居者 a. 孤独的,独居的');
INSERT INTO `cet4` VALUES ('cet6_1154', 'solo', '/ ‘səuləu/', 'n.独唱，独奏；独唱曲');
INSERT INTO `cet4` VALUES ('cet6_1155', 'shabby', '/ ‘ʃæbi/', 'a.褴褛的；破旧的');
INSERT INTO `cet4` VALUES ('cet6_1156', 'shaft', '/ ʃa:ft/', 'n.(工具的)柄，杆状物');
INSERT INTO `cet4` VALUES ('cet6_1157', 'shatter', '/ ‘ʃætə/', 'vt.粉碎，破碎；毁坏');
INSERT INTO `cet4` VALUES ('cet6_1158', 'sheer', '/ ʃiə/', 'a.纯粹的；全然的；陡峭的');
INSERT INTO `cet4` VALUES ('cet6_1159', 'shipment', '/ ‘ʃipmənt/', 'n.装货；装载的货物');
INSERT INTO `cet4` VALUES ('cet6_1160', 'shrewd', '/ ʃru:d/', 'a. 精明的,敏锐的,机灵的');
INSERT INTO `cet4` VALUES ('cet6_1165', 'sovereign', '/ ‘sɔvrin/', 'n.君主 a.统治的');
INSERT INTO `cet4` VALUES ('cet6_1166', 'spacious', '/ ‘speiʃəs/', 'a.广阔的，广大的');
INSERT INTO `cet4` VALUES ('cet6_1167', 'sparkle', '/ ‘spa:kl/', 'vi.发火花 vt.使闪耀');
INSERT INTO `cet4` VALUES ('cet6_1168', 'spatial', '/ ‘speiʃəl/', 'a.空间的，占据空间的');
INSERT INTO `cet4` VALUES ('cet6_1169', 'speciality', '/ speʃi’æliti/', 'n.专业，特长；特产');
INSERT INTO `cet4` VALUES ('cet6_1170', 'species', '/ ‘spi:ʃi:z/', 'n.种，物种；种类');
INSERT INTO `cet4` VALUES ('cet6_1171', 'specifically', '/ spe’sifikəli/', 'ad. 特定的,明确的');
INSERT INTO `cet4` VALUES ('cet6_1172', 'specification', '/ spesifi’keiʃən/', 'n.载明，详述；规格');
INSERT INTO `cet4` VALUES ('cet6_1173', 'spectacle', '/ ‘spektəkl/', 'n.场面；景象，奇观');
INSERT INTO `cet4` VALUES ('cet6_1174', 'spectacular', '/ spek’tækjulə/', 'a. 公开展示的,惊人的 n.展览物');
INSERT INTO `cet4` VALUES ('cet6_1175', 'stimulus', '/ ‘stimjuləs/', 'n. 刺激,激励,刺激品');
INSERT INTO `cet4` VALUES ('cet6_1176', 'stitch', '/ stitʃ/', 'n.一针，缝线 vt.缝');
INSERT INTO `cet4` VALUES ('cet6_1177', 'straightforward', '/ streit’fɔ:wəd/', 'a.老实的 ad.坦率地');
INSERT INTO `cet4` VALUES ('cet6_1178', 'strategic', '/ strə’ti:dʒik/', 'a. 战略的,战略上的');
INSERT INTO `cet4` VALUES ('cet6_1179', 'streamline', '/ stri:mlain/', 'n.流线；流线型');
INSERT INTO `cet4` VALUES ('cet6_1180', 'stride', '/ straid/', 'vi.大踏步走 n.大步');
INSERT INTO `cet4` VALUES ('cet6_1181', 'striking', '/ ‘straikiŋ/', 'a.显著的，惊人的');
INSERT INTO `cet4` VALUES ('cet6_1182', 'strive', '/ straiv/', 'vi.努力，奋斗，力求');
INSERT INTO `cet4` VALUES ('cet6_1183', 'stubborn', '/ ‘stΛbən/', 'a.顽固的；顽强的');
INSERT INTO `cet4` VALUES ('cet6_1184', 'studio', '/ ‘stju:diəu/', 'n.工作室；播音室');
INSERT INTO `cet4` VALUES ('cet6_1185', 'stumble', '/ ‘stΛmbl/', 'vi.绊倒；犯错误');
INSERT INTO `cet4` VALUES ('cet6_1186', 'sturdy', '/ ‘stə:di/', 'a.坚定的；牢固的');
INSERT INTO `cet4` VALUES ('cet6_1187', 'spectator', '/ spek’teitə/', 'n.参观者，观众');
INSERT INTO `cet4` VALUES ('cet6_1188', 'spectrum', '/ ‘spektrəm/', 'n.系列，范围；波谱');
INSERT INTO `cet4` VALUES ('cet6_1189', 'speculate', '/ ‘spekjuleit/', 'vi.思索，沉思；投机');
INSERT INTO `cet4` VALUES ('cet6_1190', 'spiral', '/ ‘spaiərəl/', 'a.螺旋(形)的，盘旋的');
INSERT INTO `cet4` VALUES ('cet6_1191', 'splash', '/ splæʃ/', 'vt.溅泼 vi.泼水 n.溅');
INSERT INTO `cet4` VALUES ('cet6_1192', 'spokesman', '/ ‘spəuksmən/', 'n.发言人，代言人');
INSERT INTO `cet4` VALUES ('cet6_1193', 'sponge', '/ spΛndʒ/', 'n.海绵');
INSERT INTO `cet4` VALUES ('cet6_1194', 'subjective', '/ sΛb’dʒektiv/', 'a. 主观的,个人的');
INSERT INTO `cet4` VALUES ('cet6_1195', 'subordinate', '/ sə’bɔ:dənit/', 'a.下级的，辅助的');
INSERT INTO `cet4` VALUES ('cet6_1196', 'subscribe', '/ səb’skraib/', 'vi.订购，认购；预订');
INSERT INTO `cet4` VALUES ('cet6_1197', 'subsidiary', '/ səb’sidjəri/', 'a.辅助的，补充的');
INSERT INTO `cet4` VALUES ('cet6_1198', 'subsidy', '/ ‘sΛbsidi/', 'n. 补助金,津贴');
INSERT INTO `cet4` VALUES ('cet6_1199', 'subtle', '/ ‘sΛbtl/', 'a.微妙的；精巧的');
INSERT INTO `cet4` VALUES ('cet6_1200', 'spontaneous', '/ spɔn’teinjəs/', 'a.自发的；本能的');
INSERT INTO `cet4` VALUES ('cet6_1201', 'spouse', '/ spauz/', 'n. 配偶,夫妻');
INSERT INTO `cet4` VALUES ('cet6_1202', 'successor', '/ sək’sesə/', 'n.继承人，继任者');
INSERT INTO `cet4` VALUES ('cet6_1203', 'sue', '/ sju:/', 'vt. 控告,请愿');
INSERT INTO `cet4` VALUES ('cet6_1204', 'spy', '/ spai/', 'n.间谍，特务 vt.侦察');
INSERT INTO `cet4` VALUES ('cet6_1205', 'suffice', '/ sə’fais/', 'vi.足够；有能力');
INSERT INTO `cet4` VALUES ('cet6_1206', 'stabilize', '/ ‘steibilaiz/', 'vt.使稳定,使坚固 vi.稳定,安定');
INSERT INTO `cet4` VALUES ('cet6_1207', 'stagger', '/ ‘stægə/', 'vi.蹒跚 vt.使摇晃');
INSERT INTO `cet4` VALUES ('cet6_1208', 'suicide', '/ ‘sjuisaid/', 'n.&vi.&vt.自杀');
INSERT INTO `cet4` VALUES ('cet6_1209', 'suitcase', '/ ‘sju:tkeis/', 'n.小提箱，衣箱');
INSERT INTO `cet4` VALUES ('cet6_1210', 'summit', '/ ‘sΛmit/', 'n.顶点，最高点；极度');
INSERT INTO `cet4` VALUES ('cet6_1211', 'summon', '/ ‘sΛmən/', 'vt.召唤；鼓起(勇气)');
INSERT INTO `cet4` VALUES ('cet6_1212', 'superb', '/ sju:’pə:b/', 'a.壮丽的；超等的');
INSERT INTO `cet4` VALUES ('cet6_1213', 'superiority', '/sju:pəri’ɔriti/', 'n.优越(性)，优势');
INSERT INTO `cet4` VALUES ('cet6_1214', 'supersonic', '/ ‘sju:pə’sɔnik/', 'a.超声的，超声速的');
INSERT INTO `cet4` VALUES ('cet6_1215', 'supervise', '/ ‘sju:pəvaiz/', 'vt.&vi.监督，监视');
INSERT INTO `cet4` VALUES ('cet6_1216', 'supplementary', '/sΛpli’mentəri/a.补足/补充/', '追加的');
INSERT INTO `cet4` VALUES ('cet6_1217', 'suppress', '/ sə’pres/', 'vt.镇压；抑制；隐瞒');
INSERT INTO `cet4` VALUES ('cet6_1218', 'staircase', '/ ‘stɛəkeis/', 'n.楼梯，楼梯间');
INSERT INTO `cet4` VALUES ('cet6_1219', 'stall', '/ stɔ:l/', 'n.货摊，书摊；厩');
INSERT INTO `cet4` VALUES ('cet6_1220', 'startle', '/ ‘sta:tl/', 'vt.使大吃一惊 n.吃惊');
INSERT INTO `cet4` VALUES ('cet6_1221', 'stationary', '/ ‘steiʃnəri/', 'a.固定的,静止不动的');
INSERT INTO `cet4` VALUES ('cet6_1222', 'statistics', '/ stə’tistiks/', 'n.统计，统计数字');
INSERT INTO `cet4` VALUES ('cet6_1223', 'stereo', '/ ‘stiəriəu/', 'n.立体声 a.立体声的');
INSERT INTO `cet4` VALUES ('cet6_1224', 'stereotype', '/ stiəriətaip/', 'n.陈腔滥调,老套');
INSERT INTO `cet4` VALUES ('cet6_1225', 'stern', '/ stə:n/', 'n.艉，船尾；臀部');
INSERT INTO `cet4` VALUES ('cet6_1230', 'surge', '/ sə:dʒ/', 'n.vt. 激增,奔放,汹涌,澎湃');
INSERT INTO `cet4` VALUES ('cet6_1231', 'surgeon', '/ ‘sə:dʒən/', 'n.外科医师；军医');
INSERT INTO `cet4` VALUES ('cet6_1232', 'surpass', '/ sə:’pa:s/', 'vt.超过，超越，胜过');
INSERT INTO `cet4` VALUES ('cet6_1233', 'surplus', '/ ‘sə:pləs/', 'n.过剩，剩余(物资)');
INSERT INTO `cet4` VALUES ('cet6_1234', 'survival', '/ sə’vaivəl/', 'n.幸存，残存；幸存者');
INSERT INTO `cet4` VALUES ('cet6_1235', 'susceptible', '/ sə’septəbl/', 'a. 易受影响的,易感动的');
INSERT INTO `cet4` VALUES ('cet6_1236', 'suspension', '/ səs’penʃən/', 'n. 悬挂,暂停,中止');
INSERT INTO `cet4` VALUES ('cet6_1237', 'suspicious', '/ səs’piʃəs/', 'a.可疑的；猜疑的');
INSERT INTO `cet4` VALUES ('cet6_1238', 'swamp', '/ swɔmp/', 'n.沼泽，沼泽地');
INSERT INTO `cet4` VALUES ('cet6_1239', 'testimony', '/ ‘testiməni/', 'n. 证言,证据,声明');
INSERT INTO `cet4` VALUES ('cet6_1240', 'texture', '/ ‘tekstʃə/', 'n. 质地，纹理');
INSERT INTO `cet4` VALUES ('cet6_1241', 'thanksgiving', '/ ‘θæŋksgiviŋ/', 'n.感恩节');
INSERT INTO `cet4` VALUES ('cet6_1242', 'theft', '/ θeft/', 'n.盗窃，偷窃(行为)');
INSERT INTO `cet4` VALUES ('cet6_1243', 'theme', '/ θi:m/', 'n.题目；词干；主旋律');
INSERT INTO `cet4` VALUES ('cet6_1244', 'therapy', '/ ‘θerəpi/', 'n. 治疗');
INSERT INTO `cet4` VALUES ('cet6_1245', 'thereafter', '/ ðɛə’ra:ftə/', 'ad.此后，以后');
INSERT INTO `cet4` VALUES ('cet6_1246', 'thermal', '/ ‘ðə:məl/', 'a.热的；温泉的');
INSERT INTO `cet4` VALUES ('cet6_1247', 'thesis', '/ ‘θi:sis/', 'n.论题，论点；论文');
INSERT INTO `cet4` VALUES ('cet6_1248', 'thirst', '/ θə:st/', 'n.渴，口渴；渴望');
INSERT INTO `cet4` VALUES ('cet6_1249', 'thorn', '/ θɔ:n/', 'n.刺，棘；荆棘；蒺藜');
INSERT INTO `cet4` VALUES ('cet6_1250', 'threshold', '/ ‘θreʃhəuld/', 'n.门槛；入门，开端');
INSERT INTO `cet4` VALUES ('cet6_1251', 'thrill', '/ θril/', 'vt.&vi.(使)激动');
INSERT INTO `cet4` VALUES ('cet6_1252', 'symmetry', '/ ‘simitri/', 'n.对称(性)，匀称');
INSERT INTO `cet4` VALUES ('cet6_1253', 'symphony', '/ ‘simfəni/', 'n.交响乐；交响乐团');
INSERT INTO `cet4` VALUES ('cet6_1254', 'symposium', '/ sim’pəuzjəm/', 'n.酒会；座谈会');
INSERT INTO `cet4` VALUES ('cet6_1255', 'symptom', '/ ‘simptəm/', 'n.症状，征候，征兆');
INSERT INTO `cet4` VALUES ('cet6_1256', 'synthesis', '/ ‘sinθisis/', 'n.合成；综合，综合物');
INSERT INTO `cet4` VALUES ('cet6_1257', 'tablet', '/ ‘tæblit/', 'n.碑，匾；药片');
INSERT INTO `cet4` VALUES ('cet6_1258', 'tick', '/ tik/', 'n.滴答声；记号');
INSERT INTO `cet4` VALUES ('cet6_1259', 'tile', '/ tail/', 'n.瓦片，瓷砖 ；贴砖');
INSERT INTO `cet4` VALUES ('cet6_1260', 'tilt', '/ tilt/', 'vt.&vi.(使)倾斜');
INSERT INTO `cet4` VALUES ('cet6_1261', 'tackle', '/ ‘tækl/', 'vt.解决，对付 n.用具');
INSERT INTO `cet4` VALUES ('cet6_1262', 'tactics', '/ ‘tæktiks/', 'n.策略；战术，兵法');
INSERT INTO `cet4` VALUES ('cet6_1263', 'tangle', '/ ‘tæŋgl/', 'vt.使缠结，使纠缠');
INSERT INTO `cet4` VALUES ('cet6_1264', 'timber', '/ ‘timbə/', 'n.木材，木料');
INSERT INTO `cet4` VALUES ('cet6_1265', 'timely', '/ ‘taimli/', 'a.及时的；适时的');
INSERT INTO `cet4` VALUES ('cet6_1266', 'timid', '/ ‘timid/', 'a.胆怯的；羞怯的');
INSERT INTO `cet4` VALUES ('cet6_1267', 'token', '/ ‘təukən/', 'n.象征；辅币；纪念品');
INSERT INTO `cet4` VALUES ('cet6_1268', 'tolerant', '/ ‘tɔlərənt/', 'a.容忍的；有耐力的');
INSERT INTO `cet4` VALUES ('cet6_1269', 'toss', '/ tɔs/', 'vi.翻来复去');
INSERT INTO `cet4` VALUES ('cet6_1270', 'tar', '/ ta:/', 'n.柏油，焦油');
INSERT INTO `cet4` VALUES ('cet6_1271', 'tariff', '/ ‘tærif/', 'n.关税,价格表,收费表 vt. 课以关税');
INSERT INTO `cet4` VALUES ('cet6_1272', 'tease', '/ ti:z/', 'vt.逗乐，戏弄；强求');
INSERT INTO `cet4` VALUES ('cet6_1273', 'temperament', '/ ‘tempərəmənt/', 'n. 气质,性质,性情');
INSERT INTO `cet4` VALUES ('cet6_1274', 'tempo', '/ ‘tempəu/', 'n. 拍子,速率,节奏');
INSERT INTO `cet4` VALUES ('cet6_1275', 'tenant', '/ ‘tenənt/', 'n.承租人，房客，佃户');
INSERT INTO `cet4` VALUES ('cet6_1276', 'tentative', '/‘tentətiv/n.试验,假设 a.试验性/', '暂时的');
INSERT INTO `cet4` VALUES ('cet6_1277', 'terminate', '/ ‘tə:mineit/', 'vt.&vi.停止，终止');
INSERT INTO `cet4` VALUES ('cet6_1278', 'terrace', '/ ‘terəs/', 'n.平台，阳台，露台');
INSERT INTO `cet4` VALUES ('cet6_1279', 'terrain', '/ ‘terein/', 'n. 地带,地域,范围,领域');
INSERT INTO `cet4` VALUES ('cet6_1280', 'terrific', '/ tə’rifik/', 'a.可怕的；极大的');
INSERT INTO `cet4` VALUES ('cet6_1281', 'tow', '/ təu/', 'vt.&n.拖引，牵引');
INSERT INTO `cet4` VALUES ('cet6_1282', 'tract', '/ ‘trækt/', 'n.传单,小册子,大片(土地或森林)');
INSERT INTO `cet4` VALUES ('cet6_1283', 'tragic', '/ ‘trædʒik/', 'a.悲剧性的，悲惨的');
INSERT INTO `cet4` VALUES ('cet6_1284', 'trait', '/ treit/', 'n. 显著特点，特性');
INSERT INTO `cet4` VALUES ('cet6_1285', 'transaction', '/ træn’zækʃən/', 'n.处理；交易；和解');
INSERT INTO `cet4` VALUES ('cet6_1286', 'transcend', '/ træn’send/', 'vt. 超越,胜过');
INSERT INTO `cet4` VALUES ('cet6_1287', 'transient', '/ ‘trænziənt/', 'a.短暂的,转瞬即逝的,临时的,');
INSERT INTO `cet4` VALUES ('cet6_1289', 'terrify', '/ ‘terifai/', 'vt.使恐怖，使惊吓');
INSERT INTO `cet4` VALUES ('cet6_1290', 'testify', '/ ‘testifai/', 'v.证明，证实，作证');
INSERT INTO `cet4` VALUES ('cet6_1291', 'transit', '/ ‘trænsit/', 'n.运输 a.中转的，过境的');
INSERT INTO `cet4` VALUES ('cet6_1296', 'transition', '/ træn’siʃən/', 'n.转变，变迁；过渡');
INSERT INTO `cet4` VALUES ('cet6_1297', 'transplant', '/ træns’pla:nt/', 'vt.&vi.移植，移种');
INSERT INTO `cet4` VALUES ('cet6_1298', 'traverse', '/ ‘trævə:s/', 'vt.横越，横切，横断');
INSERT INTO `cet4` VALUES ('cet6_1299', 'trench', '/ trentʃ/', 'n.深沟；壕沟，战壕');
INSERT INTO `cet4` VALUES ('cet6_1300', 'tribe', '/ traib/', 'n.部落，宗族');
INSERT INTO `cet4` VALUES ('cet6_1301', 'vegetation', '/ vedʒi’teiʃən/', 'n. 植物,草木');
INSERT INTO `cet4` VALUES ('cet6_1302', 'veil', '/ veil/', 'n.面纱，面罩；遮蔽物');
INSERT INTO `cet4` VALUES ('cet6_1303', 'vein', '/ vein/', 'n.静脉，血管，矿脉');
INSERT INTO `cet4` VALUES ('cet6_1304', 'vent', '/ vent/', 'n. 排放口,通风口 vt. 发泄,表达');
INSERT INTO `cet4` VALUES ('cet6_1305', 'ventilate', '/ ‘ventileit/', 'vt.使通风，使换气');
INSERT INTO `cet4` VALUES ('cet6_1306', 'verbal', '/ ‘və:bəl/', 'a. 言辞的,文字的,口头的,动词的');
INSERT INTO `cet4` VALUES ('cet6_1307', 'verdict', '/ ‘və:dikt/', 'n. 裁决,结论,定论,判断');
INSERT INTO `cet4` VALUES ('cet6_1308', 'verge', '/ və:dʒ/', 'n.边缘，边界，界限');
INSERT INTO `cet4` VALUES ('cet6_1309', 'versatile', '/ ‘və:sətail/', 'a.多方面的；通用的');
INSERT INTO `cet4` VALUES ('cet6_1310', 'verse', '/ və:s/', 'n.诗，韵文；诗行');
INSERT INTO `cet4` VALUES ('cet6_1311', 'tribute', '/ ‘tribju:t/', 'n.贡物；献礼，贡献');
INSERT INTO `cet4` VALUES ('cet6_1312', 'trifle', '/ ‘traifl/', 'n.小事，琐事；少许');
INSERT INTO `cet4` VALUES ('cet6_1313', 'trigger', '/ ‘trigə/', 'n.扳机 vt.触发，引起');
INSERT INTO `cet4` VALUES ('cet6_1314', 'triple', '/ ‘tripl/', 'a. 三倍的,三方的 vt. 使增至三倍');
INSERT INTO `cet4` VALUES ('cet6_1315', 'trivial', '/ ‘triviəl/', 'a.琐碎的；平常的');
INSERT INTO `cet4` VALUES ('cet6_1316', 'tuck', '/ tΛk/', 'vt.折短，卷起；塞');
INSERT INTO `cet4` VALUES ('cet6_1317', 'versus', '/‘və:səs/', 'prep.(比赛等中)对');
INSERT INTO `cet4` VALUES ('cet6_1318', 'tug', '/ tΛg/', 'vi.用力拖 n.猛拉，拖');
INSERT INTO `cet4` VALUES ('cet6_1319', 'veto', '/ ‘vi:təu/', 'n.否决，否决权，禁止');
INSERT INTO `cet4` VALUES ('cet6_1320', 'vicinity', '/ vi’siniti/', 'n.邻近；附近地区');
INSERT INTO `cet4` VALUES ('cet6_1321', 'vicious', '/ ‘viʃəs/', 'a.邪恶的；恶性的');
INSERT INTO `cet4` VALUES ('cet6_1322', 'violate', '/ ‘vaiəleit/', 'vt.违犯，违背；侵犯');
INSERT INTO `cet4` VALUES ('cet6_1323', 'virgin', '/ ‘və:dʒin/', 'n.处女 a.处女的');
INSERT INTO `cet4` VALUES ('cet6_1324', 'tuition', '/ tju:’iʃən/', 'n.教，教诲；学费');
INSERT INTO `cet4` VALUES ('cet6_1325', 'tumble', '/ ‘tΛmbl/', 'vi.摔倒，跌倒；打滚');
INSERT INTO `cet4` VALUES ('cet6_1326', 'turbulent', '/ ‘tə:bjulənt/', 'a.骚动的，骚乱的');
INSERT INTO `cet4` VALUES ('cet6_1327', 'turnover', '/ ‘tə:nouvə/', 'n. 人员调整，营业额，成交量');
INSERT INTO `cet4` VALUES ('cet6_1328', 'tutor', '/ ‘tju:tə/', 'vt.教，指导');
INSERT INTO `cet4` VALUES ('cet6_1329', 'virtual', '/ ‘və:tjuəl/', 'a.实际上的，实质上的');
INSERT INTO `cet4` VALUES ('cet6_1330', 'virus', '/ ‘vaiərəs/', 'n. 病毒');
INSERT INTO `cet4` VALUES ('cet6_1331', 'ultraviolet', '/ ‘Λltrə’vaiəlit/', 'a.紫外的 n.紫外线辐射');
INSERT INTO `cet4` VALUES ('cet6_1332', 'unanimous', '/ ju(:)’næniməs/', 'a.(全体)一致的');
INSERT INTO `cet4` VALUES ('cet6_1333', 'underestimate', '/ Λndər’estimeit/', 'vt.低估，看轻');
INSERT INTO `cet4` VALUES ('cet6_1334', 'underlying', '/ Λndə’laiiŋ/', 'a. 在下的,含蓄的,潜在的');
INSERT INTO `cet4` VALUES ('cet6_1335', 'undermine', '/ Λndə’main/', 'vt. 渐渐破坏,暗中破坏,侵');
INSERT INTO `cet4` VALUES ('cet6_1337', 'visualize', '/‘vizjuəlaiz/vt.使看得见/', '具体化,想象,设想');
INSERT INTO `cet4` VALUES ('cet6_1338', 'vocal', '/ ‘vəukəl/', 'a. 直言不讳的，嗓音的,有声的');
INSERT INTO `cet4` VALUES ('cet6_1339', 'vocational', '/ vəu’keiʃənl/', 'a. 职业的');
INSERT INTO `cet4` VALUES ('cet6_1340', 'void', '/ vɔid/', 'a.空的；无效的');
INSERT INTO `cet4` VALUES ('cet6_1341', 'volunteer', '/ vɔlən’tiə/', 'n.志愿者 vt.志愿');
INSERT INTO `cet4` VALUES ('cet6_1342', 'vulgar', '/ ‘vΛlgə/', 'a.粗俗的，庸俗的');
INSERT INTO `cet4` VALUES ('cet6_1343', 'unemployment', '/ ‘Λnim’plɔimənt/', 'n.失业；失业人数');
INSERT INTO `cet4` VALUES ('cet6_1344', 'unfold', '/ Λn’fəuld/', 'vt.展开 vi.呈现');
INSERT INTO `cet4` VALUES ('cet6_1345', 'vulnerable', '/ ‘vΛlnərəbl/a. 易受伤害/', '攻击的,脆弱的');
INSERT INTO `cet4` VALUES ('cet6_1346', 'wallet', '/ ‘wɔlit/', 'n.钱包，皮夹子');
INSERT INTO `cet4` VALUES ('cet6_1347', 'unify', '/ ‘ju:nifai/', 'vt. 统一,使成一体');
INSERT INTO `cet4` VALUES ('cet6_1348', 'update', '/ Λp’deit/', 'vt. 更新,使现代化');
INSERT INTO `cet4` VALUES ('cet6_1349', 'upgrade', '/ ‘Λp’greid/', 'vt. 使升级,提升');
INSERT INTO `cet4` VALUES ('cet6_1350', 'uphold', '/Λp’həuld/', 'vt.举起；支撑；赞成');
INSERT INTO `cet4` VALUES ('cet6_1351', 'validity', '/ və’liditi/', 'n.有效，效力；正确');
INSERT INTO `cet4` VALUES ('cet6_1352', 'valve', '/ vælv/', 'n.阀，阀门；电子管');
INSERT INTO `cet4` VALUES ('cet6_1353', 'ward', '/ wɔ:d/', 'n.病房，病室；监房');
INSERT INTO `cet4` VALUES ('cet6_1354', 'warehouse', '/‘wɛəhaus/', 'n.仓库，货栈');
INSERT INTO `cet4` VALUES ('cet6_1355', 'warfare', '/ ‘wɔ:fɛə/', 'n.战争，战争状态');
INSERT INTO `cet4` VALUES ('cet6_1356', 'warrant', '/ ‘wɔrənt/', 'n. 正当理由, 委任状，许可证');
INSERT INTO `cet4` VALUES ('cet6_1357', 'watertight', '/ ‘wɔ:tətait/', 'a.不漏水的，防水的');
INSERT INTO `cet4` VALUES ('cet6_1362', 'watt', '/ wɔt/', 'n.瓦(特)');
INSERT INTO `cet4` VALUES ('cet6_1363', 'wrench', '/ rentʃ/', 'vt.拧，扭伤 n.拧');
INSERT INTO `cet4` VALUES ('cet6_1364', 'wretched', '/ ‘retʃid/', 'a.不幸的；卑鄙的');
INSERT INTO `cet4` VALUES ('cet6_1365', 'wrinkle', '/ ‘riŋkl/', 'n.皱纹 vt.使起皱纹');
INSERT INTO `cet4` VALUES ('cet6_1366', 'yacht', '/ jɔt/', 'n.游艇，快艇');
INSERT INTO `cet4` VALUES ('cet6_1367', 'weary', '/ ‘wiəri/', 'a.疲倦的 vt.使疲乏');
INSERT INTO `cet4` VALUES ('cet6_1368', 'web', '/ web/', 'n.网，丝，网状物');
INSERT INTO `cet4` VALUES ('cet6_1369', 'wedge', '/ wedʒ/', 'n.楔 vt.楔入；挤入');
INSERT INTO `cet4` VALUES ('cet6_1370', 'whereas', '/ wɛər’æz/', 'conj.而，却，反之');
INSERT INTO `cet4` VALUES ('cet6_1371', 'whereby', '/ wɛə’bai/', 'ad.靠什么；靠那个');
INSERT INTO `cet4` VALUES ('cet6_1372', 'whirl', '/ wə:l/', 'vt.使回旋 vi.&n.回旋');
INSERT INTO `cet4` VALUES ('cet6_1373', 'withhold', '/ wið’həuld/', 'vt. 拒绝，不给，使停止，阻');
INSERT INTO `cet4` VALUES ('cet6_1376', 'yoke', '/ jəuk/', 'n.轭，牛轭；枷锁');
INSERT INTO `cet4` VALUES ('cet6_1377', 'youngster', '/ ‘jΛŋstə/', 'n.儿童，少年，年轻人');
INSERT INTO `cet4` VALUES ('cet6_1378', 'zinc', '/ ziŋk/', 'n.锌');

-- ----------------------------
-- Table structure for cet4_part1
-- ----------------------------
DROP TABLE IF EXISTS `cet4_part1`;
CREATE TABLE `cet4_part1` (
  `cet4_test_id` varchar(15) NOT NULL,
  `cet4_test_content` varchar(500) DEFAULT NULL,
  `cet4_title` varchar(70) DEFAULT NULL,
  PRIMARY KEY (`cet4_test_id`),
  CONSTRAINT `cetid3` FOREIGN KEY (`cet4_test_id`) REFERENCES `cet` (`CETID`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of cet4_part1
-- ----------------------------
INSERT INTO `cet4_part1` VALUES ('cet4_2014_12_1', 'Suppose a foreign friend of yours is coming to visit your hometown , what is the most interesting place youwouldlike to take him/her to see and why?', null);
INSERT INTO `cet4_part1` VALUES ('cet4_2014_12_3', 'Suppose a foreign friend of yours is coming to visit your campus , what is the most interesting place you would like to take him/her to see and why?', null);
INSERT INTO `cet4_part1` VALUES ('cet4_2015_12_1', 'Directions: For this part, you are allowed 30 minutes to write an essay based on the picture below. You should start you essay with a brief description of the picture and then comment on this kind of modern life. You should write at least 120 words but no more than 180 words.', null);
INSERT INTO `cet4_part1` VALUES ('cet4_2015_12_2', 'Directions: For this part, you are allowed 30 minutes to write an essay based on the picture below. You should start you essay with a brief description of the picture and then comment on parents’ role in their children’s growth. You should write at least 120 words but no more than 150 words.', null);
INSERT INTO `cet4_part1` VALUES ('cet4_2015_12_3', 'Directions: For this part, you are allowed 30 minutes to write an essay based on the picture below. You should start you essay with a brief description of the picture and then comment on the kid’s understanding of going to school. You should write at least 120 words but no more than 150 words.', null);
INSERT INTO `cet4_part1` VALUES ('cet4_2015_6_1', 'Directions: For this part, you are allowed 30 minutes to write an essay commenting on the saying “Listening is more important than talking.” You can cite examples to illustrate the importance of listening. You should write at least 120 words but no more than 180 words。', null);
INSERT INTO `cet4_part1` VALUES ('cet4_2015_6_2', 'Directions: For this part, you are allowed 30 minutes to write an essay commenting on the saying “Never go out there to see what happens, go out there to make something happen” You can cite examples to illustrate the importance of being creative rather than mere onlookers in life. You should write at least 120 words, no more than 180 words.', null);
INSERT INTO `cet4_part1` VALUES ('cet4_2015_6_3', 'Directions: For this part, you are allowed 30 minutes to write an essay commenting on the saying ‘Learning is a daily experience and a lifetime mission.” You can cite examples to illustrate the importance of lifelong learning. You should write at least 120 words but no more than 180 words.', null);
INSERT INTO `cet4_part1` VALUES ('cet4_2016_12_1', 'For this part, you are allowed 30 minutes to write an essay. Suppose you have two options upon graduation: one is to find a job somewhere and the other to start a business of your own. You are to make a decision. Write an essay to explain the reasons for your decision. You should write at least 120 words but no more than 180 words.', null);
INSERT INTO `cet4_part1` VALUES ('cet4_2016_12_2', 'For this part, you are allowed 30 minutes to write an essay. Suppose you have two options upon graduation: one is to take a job in a company and the other to go to a graduate school. You are to make a choice between the two. Write an essay to explain the reasons for your choice. You should write at least 120 words but no more than 180 words.', null);
INSERT INTO `cet4_part1` VALUES ('cet4_2016_12_3', 'For this part, you are allowed 30 minutes to write an essay. Suppose you have two options upon graduation: one is to work in a state-owned business and the other in a joint venture. You are to make a choice between the two. Write an essay to explain the reasons for your choice. You should write at least 120 words but no more than 180 words.', null);
INSERT INTO `cet4_part1` VALUES ('cet4_2016_6_1', 'Directions: For this part, you are allowed 30 minutes to write a letter to express your thanks to one of your friends who helped you most when you were in difficulty. You should write at least 120 words but no more than 180 words.', '2016年6月四级考试真题(第一套)');
INSERT INTO `cet4_part1` VALUES ('cet4_2016_6_2', 'Directions：For this part,you are allowed 30 minutes to write a letter to express your thanks to your parents or any other family member upon making a memorable achievement．You should write at least 120 words but no more than 180 words．', '2016年6月四级考试真题(第二套)');
INSERT INTO `cet4_part1` VALUES ('cet4_2016_6_3', 'Directions：For this part,you are allowed 30 minutes to write a letter to express your thanks to one of your school teachers upon entering college.You should write at least 120 words but no more than 180 words．', '2016年6月四级考试真题（第三套）');
INSERT INTO `cet4_part1` VALUES ('cet6_2015_6_1', 'For this part, you are allowed 30 minutes to write an essay based on the picture below. You should start your essay with a brief description of the picture and then discuss whether technology is indispensable in education. You should give sound arguments to support your views and write at least 150 words but no more than 200 ', null);
INSERT INTO `cet4_part1` VALUES ('cet6_2015_6_3', 'Directions：For this part, you are allowed 30 minutes to write an essay about the impact of information explosion by referring to the saying \"a wealth of information creates a poverty of attention\". You can cite examples to illustrate your point and then explain what you can do to avoid being distracted by irrelevant information? You should write at least 150 words but no more than 200 words.', null);
INSERT INTO `cet4_part1` VALUES ('cet6_2016_12_1', 'For this part , your are alloed 30 minutes to write an essay explaining why it is unwise to judge a person by their appearance. You can give explain to illustrate your point .You should write at least 150 words but no more than 200words。', null);
INSERT INTO `cet4_part1` VALUES ('cet6_2016_12_2', 'or this part, you are allowed 30 minutes to write an essay based on the picture below. You should start your essay with a brief description of the picture and then discuss whether technology is indispensable in education. You should give sound arguments to support your views and write at least 150 words but no more than 200 words.', null);
INSERT INTO `cet4_part1` VALUES ('cet6_2016_12_3', 'Directions: For this part, you are allowed 30 minutes to write an essay commenting on the saying “Knowledge is a treasure, but practice is the key to it.” You can cite one example or two to illustrate your point of view. You should write at least 150 but no more than 200 words.', null);
INSERT INTO `cet4_part1` VALUES ('cet6_2016_6_1', 'he impact of the Internet on interpersonal communication 要求：commenting on \"Dad：Hi sweetie, how was school, today? Daughter: You can read all about it on my blog, Dad\"', null);
INSERT INTO `cet4_part1` VALUES ('cet6_2016_6_3', 'Directions：For this part, you are allowed 30 minutes to write an essay about the impact of information explosion by referring to the saying \"a wealth of information creates a poverty of attention\". You can cite examples to illustrate your point and then explain what you can do to avoid being distracted by irrelevant information? You should write at least 150 words but no more than 200 words.', null);

-- ----------------------------
-- Table structure for cet4_part2
-- ----------------------------
DROP TABLE IF EXISTS `cet4_part2`;
CREATE TABLE `cet4_part2` (
  `cet4_2_id` int(11) NOT NULL AUTO_INCREMENT,
  `cet4_2_test_id` varchar(13) DEFAULT NULL,
  `cet4_2_section` varchar(15) DEFAULT NULL,
  `cet4_2_topic` varchar(500) DEFAULT NULL,
  `cet4_2_title` varchar(100) DEFAULT NULL,
  `cet4_2_A` varchar(100) DEFAULT NULL,
  `cet4_2_B` varchar(100) DEFAULT NULL,
  `cet4_2_C` varchar(100) DEFAULT NULL,
  `cet4_2_D` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`cet4_2_id`)
) ENGINE=InnoDB AUTO_INCREMENT=76 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of cet4_part2
-- ----------------------------
INSERT INTO `cet4_part2` VALUES ('1', 'cet4_2016_6_1', 'Section A', 'Directions: In this section, you will hear three news reports. At the end of each news report, you will hear two or three questions. Both the news report and the questions will be spoken only once. After you hear a question, you must choose the best answer from the four choices marked A), B), C) and D). Then mark the corresponding letter on Answer Sheet 1 with a single line through the centre.', 'Questions 1 and 2 are based on the news report you have just heard.', 'The International Labor Organization’s key objective.', 'The basic social protection for the most vulnerable.', 'Rising unemployment worldwide.', 'Global economic recovery.');
INSERT INTO `cet4_part2` VALUES ('2', 'cet4_2016_6_1', null, null, null, 'Many countries have not taken measures to create enough jobs.', 'Few countries know how to address the current economic crisis.', 'Few countries have realized the seriousness of the current crisis.', 'Many countries need support to improve their people’s livelihood.');
INSERT INTO `cet4_part2` VALUES ('3', 'cet4_2016_6_1', null, null, 'Questions 3 and 4 are based on the news report you have just heard.', 'Serve standardized food nationwide.', 'Put calorie information on the menu.', 'Increase protein content in the food.', 'Offer convenient food to customers.');
INSERT INTO `cet4_part2` VALUES ('4', 'cet4_2016_6_1', null, null, null, 'They will be fined.', 'They will be closed.', 'They will get a warning.', 'They will lose customers.');
INSERT INTO `cet4_part2` VALUES ('5', 'cet4_2016_6_1', null, null, 'Questions 5 to 7 are based on the news report you have just heard.', 'Inability to implement their business plans.', 'Inability to keep turning out novel products.', 'Lack of a successful business model of their own.', 'Failure to integrate innovation into their business.');
INSERT INTO `cet4_part2` VALUES ('6', 'cet4_2016_6_1', null, null, null, 'It is the secret to business success.', 'It is the creation of something new.', 'It is a magic tool to bring big rewards.', 'It is an essential part of business culture.');
INSERT INTO `cet4_part2` VALUES ('7', 'cet4_2016_6_1', null, null, null, 'Its hardworking employees.', 'Its flexible promotion strategy.', 'Its innovation culture.', 'Its willingness to make investments.');
INSERT INTO `cet4_part2` VALUES ('8', 'cet4_2016_6_1', 'Section B', 'Directions: In this section, you will hear two long conversations. At the end of each conversations you will hear four questions. Both the conversations and the question-s will be spoken only once. After you hear a question. You must choose the best answer from the four choices marked A),B),C)and D). Then mark the corresponding letter on Answer Sheet 1 with a single line through the centre.', 'Questions 8 to 11 are based on the conversation you have just heard.', 'He’s got addicted to technology.', 'He is not very good at socializing.', 'He is crazy about text-messaging.', 'He does not talk long on the phone.');
INSERT INTO `cet4_part2` VALUES ('9', 'cet4_2016_6_1', null, null, null, 'Talk big.', 'Talk at length.', 'Gossip a lot.', 'Forget herself.');
INSERT INTO `cet4_part2` VALUES ('10', 'cet4_2016_6_1', null, null, null, 'He thought it was cool.', 'He needed the practice.', 'He wanted to stay connected with them.', 'He had an urgent message to send.');
INSERT INTO `cet4_part2` VALUES ('11', 'cet4_2016_6_1', null, null, null, 'It poses a challenge to seniors.He wants to change his job It poses a challenge to seniors.', 'It saves both time and money.', 'It is childish and unprofessional.', 'It is cool and convenient.');
INSERT INTO `cet4_part2` VALUES ('12', 'cet4_2016_6_1', null, null, 'Questions 12 to 15 are based on the conversation you have just heard.', ')He wants to change his job assignment.', 'He is unhappy with his department manager.', 'He thinks he deserves extra pay for overtime.', 'He is often singled out for criticism by his boss.');
INSERT INTO `cet4_part2` VALUES ('13', 'cet4_2016_6_1', null, null, null, 'His workload was much too heavy.', 'His immediate boss did not trust him.', 'His colleagues often refused to cooperate.', 'His salary was too low for his responsibility.');
INSERT INTO `cet4_part2` VALUES ('14', 'cet4_2016_6_1', null, null, null, ')He never knows how to refuse.', 'He is always ready to help others.', 'His boss has a lot of trust in him.', 'His boss has no sense of fairness.');
INSERT INTO `cet4_part2` VALUES ('15', 'cet4_2016_6_1', null, null, null, 'Put all his complaints in writing.', 'Wait and see what happens next.', 'Learn to say no when necessary.', 'Talk to his boss in person first. ');
INSERT INTO `cet4_part2` VALUES ('16', 'cet4_2016_6_1', 'Section C', 'Directions: In this section, you will hear three passages. At the end of each passage, you will hear three or four questions. Both the passage and the questions will be spoken only once. After you hear a question, you must choose the best answer from the four choices marked A),B),C)and D).Then mark the corresponding letter on Answer Sheet 1 with a single line through the centre.', 'Questions 16 to 18 are based on the passage you have just heard.', 'The importance of sleep to a healthy life.', 'Reasons for Americans’ decline in sleep.', 'Some tips to improve the quality of sleep.', 'Diseases associated with lack of sleep.');
INSERT INTO `cet4_part2` VALUES ('17', 'cet4_2016_6_1', null, null, null, 'They are more health-conscious.', 'They are changing their living habits.', 'They get less and less sleep.', 'They know the dangers of lack of sleep.');
INSERT INTO `cet4_part2` VALUES ('18', 'cet4_2016_6_1', null, null, null, 'Their weight will go down.', 'Their mind function will deteriorate.', 'Their work efficiency will decrease.', 'Their blood pressure will rise.');
INSERT INTO `cet4_part2` VALUES ('19', 'cet4_2016_6_1', null, null, 'Questions 19 to 21 are based on the passage you have just heard.', 'How much you can afford to pay.', 'What course you are going to choose.', 'Which university you are going to apply to.', 'When you are going to submit your application.');
INSERT INTO `cet4_part2` VALUES ('20', 'cet4_2016_6_1', null, null, null, 'The list of courses studied.', 'The full record of scores.', 'The references from teachers.', 'The personal statement.');
INSERT INTO `cet4_part2` VALUES ('21', 'cet4_2016_6_1', null, null, null, 'Specify what they would like to do after graduation.', 'Describe in detail how much they would enjoy studying.', 'Indicate they have reflected and thought about the subject.', 'Emphasize that they admire the professors in the university.');
INSERT INTO `cet4_part2` VALUES ('22', 'cet4_2016_6_1', null, null, 'Questions 22 to 25 are based on the passage you have just heard.', 'It was equipped with rubber tyres.', 'It was built in the late 19th century.', 'It was purchased by the Royal family.', 'It was designed by an English engineer.');
INSERT INTO `cet4_part2` VALUES ('23', 'cet4_2016_6_1', null, null, null, 'They consumed lots of petrol.', 'They took two passengers only.', 'They were difficult to drive.', 'They often broke down.');
INSERT INTO `cet4_part2` VALUES ('24', 'cet4_2016_6_1', null, null, null, 'They were produced on the assembly line.', 'They were built with less costly materials.', 'They were modeled after British cars.', 'They were made for ordinary use.');
INSERT INTO `cet4_part2` VALUES ('25', 'cet4_2016_6_1', null, null, null, 'It made news all over the world.', 'It was built for the Royal family.', 'It marked a new era in motor travel.', 'It attracted large numbers of motorists.');
INSERT INTO `cet4_part2` VALUES ('26', 'cet4_2016_6_2', 'Section A', 'Directions：In this section，you will hear three news reports．At the end of each news report,you will hear two or three questions．Both the news report and the questions will be spoken only once．After you hear a question,you must choose the best answer from the four choices marked A．，B．，C．,and D．,Then mark the corresponding letter on answer Sheet 1 with d single line through the centre.', 'Questions 1 and 2 are based on the news report you have just heard．', 'How college students can handle their psychological problems．', 'Why college students are more likely to have stress problems．', 'Why sufficient sleep is important for college students．', 'HOW college students can improve their sleep habits．');
INSERT INTO `cet4_part2` VALUES ('27', 'cet4_2016_6_2', null, null, null, 'It is not easy to improve one’s sleep habits．', 'It is not good for students to play video games．', 'Making last．minute preparations for tests may be less effective than sleeping．', 'Students who are better prepared generally get higher scores in examinations ');
INSERT INTO `cet4_part2` VALUES ('28', 'cet4_2016_6_2', null, null, 'Questions 3 and 4 are based on the news report you have just heard .', 'Whether adequate investment is being made to improve airport facilities', 'Whether the British Airports Authority should sell off some of its assets．', 'Whether the Spanish company could offer better service．', 'Whether more airports should be built around London．');
INSERT INTO `cet4_part2` VALUES ('29', 'cet4_2016_6_2', null, null, null, 'Poor ownership structure．    ', 'Lack of innovation and competition．', 'Inefficient management．', 'Lack of runway and terminal capacity．');
INSERT INTO `cet4_part2` VALUES ('30', 'cet4_2016_6_2', null, null, 'Questions 5 to7 are based on the news report you have just heard.', 'Study the effects of nicotine on young smokers．', 'Set a limit to the production of their cigarettes．', 'Take steps to reduce nicotine in their products．', 'Report the nicotine content of their cigarettes．');
INSERT INTO `cet4_part2` VALUES ('31', 'cet4_2016_6_2', null, null, null, 'The biggest increase in nicotine content tended to be in brands young smokers like．', ' Brands which contain higher nicotine content were found to be much more popular．', 'Tobacco companies refused to discuss the detailed nicotine content of their products．', 'Big tobacco companies were flank with their customers about the hazards of smoking ．');
INSERT INTO `cet4_part2` VALUES ('32', 'cet4_2016_6_2', null, null, null, 'They will pay more attention to the quality of their products．', 'They were not prepared to comment on the cigarette study．', 'They promised to reduce the nicotine content in cigarettes．', 'They have not fully realized the harmful effect of nicotine．');
INSERT INTO `cet4_part2` VALUES ('33', 'cet4_2016_6_2', 'Section B', 'Directions：In this section，you will hear two long conversations．At the end of each conversation，you will hear four questions．Both the conversation and the questions will be spoken only once．After you hear a question，you must choose the best answer from the four choices marked A，B，C and D．Then mark the corresponding letter on Answer Sheet 1 with a single line through the centre．', 'Questions 8 tol1 are based on the conversation you have just heard．', 'Holland． ', 'Indonesia．', 'England．', 'Sweden．');
INSERT INTO `cet4_part2` VALUES ('34', 'cet4_2016_6_2', null, null, null, 'Talking with her boyfriend in Dutch．', 'Getting a coach who can offer real help．', 'Acquiring the necessary ability to socialize．', 'Learning a language where it is not spoken．');
INSERT INTO `cet4_part2` VALUES ('35', 'cet4_2016_6_2', null, null, null, 'Practicing reading aloud as often as possible．', 'Listening to language programs on the radio．', 'Trying to speak it as much as one can．', 'Making friends with native speakers．');
INSERT INTO `cet4_part2` VALUES ('36', 'cet4_2016_6_2', null, null, null, 'It provides opportunities for language practice．', 'It trains young people’s leadership abilities．', 'It offers various courses with credit points．', 'It creates an environment for socializing ．');
INSERT INTO `cet4_part2` VALUES ('37', 'cet4_2016_6_2', null, null, 'Questions 12 tol5 are based on the conversation you have just heard．', 'A sense of freedom driving gives．', 'Rules and regulations for driving ．', 'The role policemen play in traffic safety．', ' The impact of engine design on road safety．');
INSERT INTO `cet4_part2` VALUES ('38', 'cet4_2016_6_2', null, null, null, 'Make cars with automatic control．', 'Make cars with higher standards．', 'Make cars that are less powerful．', 'Make cars that have better brakes．');
INSERT INTO `cet4_part2` VALUES ('39', 'cet4_2016_6_2', null, null, null, 'They follow traffic rules closely．', 'They keep within speed limits．', 'They like to go at high speed．', 'They tend to drive responsibly．');
INSERT INTO `cet4_part2` VALUES ('40', 'cet4_2016_6_2', null, null, null, ' It is a bad idea．', 'It is as effective as speed bumps．', 'It is not useful．', '．It should be combined with education．');
INSERT INTO `cet4_part2` VALUES ('41', 'cet4_2016_6_2', 'Section C', 'Directions：In this section，you will hear three passages．At the end of each passage,you will hear three or four questions．Both the passage and the questions will be spoken only once．After you hear a question，you must choose the best answer from the four choices marked A，B，C,and D,Then mark the corresponding letter on Answer Sheet l with a single line through the centre', 'Questions 16 tol8 are based on the passage you have just heard．', 'The card got damaged．  ', 'The card was found invalid．', 'The card reader broke down unexpectedly．', 'The card reader failed to do the scanning．');
INSERT INTO `cet4_part2` VALUES ('42', 'cet4_2016_6_2', null, null, null, 'By seeking help from the card reader maker Verifone．', 'By covering the credit card with a layer of plastic．', 'By calling the credit card company for confirmation．', 'By typing the credit card number into the cash register．');
INSERT INTO `cet4_part2` VALUES ('43', 'cet4_2016_6_2', null, null, null, 'Produce many low-tech fixes for high．tech failures．', 'Give birth to many new technological inventions．', ' Change the lifestyle of many Americans．', 'Affect the sales of high．tech appliances．');
INSERT INTO `cet4_part2` VALUES ('44', 'cet4_2016_6_2', null, null, 'Questions 19 to21 are based on the passage you have just heard．', 'They vary among different departments．', 'They leave much room for improvement．  ', 'They are determined by the advising board．', 'They are set by the dean of the graduate school．');
INSERT INTO `cet4_part2` VALUES ('45', 'cet4_2016_6_2', null, null, null, 'By consulting the examining committee． ', 'By reading the Bulletin of Information．', 'By visiting the university’s website．', 'By contacting the departmental office．');
INSERT INTO `cet4_part2` VALUES ('46', 'cet4_2016_6_2', null, null, null, 'They are harder to meet than those for undergraduates．', 'They specify the number of credits students must earn．', 'They have to be approved by the examining committee．', 'They are the same among various divisions of the university．');
INSERT INTO `cet4_part2` VALUES ('47', 'cet4_2016_6_2', null, null, 'Questions 22 to 25 are based oil the passage you have just heard．', 'Ph．D．candidates in dieting．', 'Students majoring in nutrition．   ', 'Students in health classes．', 'Middle and high school teachers．');
INSERT INTO `cet4_part2` VALUES ('48', 'cet4_2016_6_2', null, null, null, 'Its overemphasis on thinness．', 'Its changing criteria for beauty．', 'Its mistaken conception of nutrition．', 'Its overestimate of the effect of dieting．');
INSERT INTO `cet4_part2` VALUES ('49', 'cet4_2016_6_2', null, null, null, 'To demonstrate the magic effect of dieting on women．', 'To explain how computer images can be misleading．', 'To prove that technology has impacted our culture．', 'To illustrate her point that beauty is but skin deep．');
INSERT INTO `cet4_part2` VALUES ('50', 'cet4_2016_6_2', null, null, null, 'To help students rid themselves of bad living habits．', 'To establish an emotional connection with students．', 'To promote her own concept of beauty．', 'To persuade girls to stop dieting．');
INSERT INTO `cet4_part2` VALUES ('51', 'cet6_2015_6_2', null, null, null, 'sdf', 'sdf', 'sdf', 'sdf');
INSERT INTO `cet4_part2` VALUES ('52', 'cet6_2015_6_2', null, null, null, '', '', '', '');
INSERT INTO `cet4_part2` VALUES ('53', 'cet6_2015_6_2', null, null, null, '', '', '', '');
INSERT INTO `cet4_part2` VALUES ('54', 'cet6_2015_6_2', null, null, null, '', '', '', '');
INSERT INTO `cet4_part2` VALUES ('55', 'cet6_2015_6_2', null, null, null, '', '', '', '');
INSERT INTO `cet4_part2` VALUES ('56', 'cet6_2015_6_2', null, null, null, '', '', '', '');
INSERT INTO `cet4_part2` VALUES ('57', 'cet6_2015_6_2', null, null, null, '', '', '', '');
INSERT INTO `cet4_part2` VALUES ('58', 'cet6_2015_6_2', null, null, null, '', '', '', '');
INSERT INTO `cet4_part2` VALUES ('59', 'cet6_2015_6_2', null, null, null, '', '', '', '');
INSERT INTO `cet4_part2` VALUES ('60', 'cet6_2015_6_2', null, null, null, '', '', '', '');
INSERT INTO `cet4_part2` VALUES ('61', 'cet6_2015_6_2', null, null, null, '', '', '', '');
INSERT INTO `cet4_part2` VALUES ('62', 'cet6_2015_6_2', null, null, null, '', '', '', '');
INSERT INTO `cet4_part2` VALUES ('63', 'cet6_2015_6_2', null, null, null, '', '', '', '');
INSERT INTO `cet4_part2` VALUES ('64', 'cet6_2015_6_2', null, null, null, '', '', '', '');
INSERT INTO `cet4_part2` VALUES ('65', 'cet6_2015_6_2', null, null, null, '', '', '', '');
INSERT INTO `cet4_part2` VALUES ('66', 'cet6_2015_6_2', null, null, null, '', '', '', '');
INSERT INTO `cet4_part2` VALUES ('67', 'cet6_2015_6_2', null, null, null, '', '', '', '');
INSERT INTO `cet4_part2` VALUES ('68', 'cet6_2015_6_2', null, null, null, '', '', '', '');
INSERT INTO `cet4_part2` VALUES ('69', 'cet6_2015_6_2', null, null, null, '', '', '', '');
INSERT INTO `cet4_part2` VALUES ('70', 'cet6_2015_6_2', null, null, null, '', '', '', '');
INSERT INTO `cet4_part2` VALUES ('71', 'cet6_2015_6_2', null, null, null, '', '', '', '');
INSERT INTO `cet4_part2` VALUES ('72', 'cet6_2015_6_2', null, null, null, '', '', '', '');
INSERT INTO `cet4_part2` VALUES ('73', 'cet6_2015_6_2', null, null, null, '', '', '', '');
INSERT INTO `cet4_part2` VALUES ('74', 'cet6_2015_6_2', null, null, null, '', '', '', '');
INSERT INTO `cet4_part2` VALUES ('75', 'cet6_2015_6_2', null, null, null, '', '', '', '');

-- ----------------------------
-- Table structure for cet4_part3a
-- ----------------------------
DROP TABLE IF EXISTS `cet4_part3a`;
CREATE TABLE `cet4_part3a` (
  `cet4_part3A_id` varchar(15) NOT NULL,
  `cet4_part3A_body` varchar(2000) DEFAULT NULL,
  `cet4_part3A_comment` varchar(50) DEFAULT NULL,
  `cet4_part3A_A` varchar(20) DEFAULT NULL,
  `cet4_part3A_B` varchar(20) DEFAULT NULL,
  `cet4_part3A_C` varchar(20) DEFAULT NULL,
  `cet4_part3A_D` varchar(20) DEFAULT NULL,
  `cet4_part3A_E` varchar(20) DEFAULT NULL,
  `cet4_part3A_F` varchar(20) DEFAULT NULL,
  `cet4_part3A_G` varchar(20) DEFAULT NULL,
  `cet4_part3A_H` varchar(20) DEFAULT NULL,
  `cet4_part3A_I` varchar(20) DEFAULT NULL,
  `cet4_part3A_J` varchar(20) DEFAULT NULL,
  `cet4_part3A_K` varchar(20) DEFAULT NULL,
  `cet4_part3A_L` varchar(20) DEFAULT NULL,
  `cet4_part3A_M` varchar(20) DEFAULT NULL,
  `cet4_part3A_N` varchar(20) DEFAULT NULL,
  `cet4_part3A_O` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`cet4_part3A_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of cet4_part3a
-- ----------------------------
INSERT INTO `cet4_part3a` VALUES ('cet4_2016_6_1', 'Physical activity does the body good, and there’s growing evidence that it helps the brain too. Researchers in the Netherlands report that children who get more exercise, whether at school or on their own, 　26　to have higher GPAs and better scores on standardized tests. In a 　27　 of 14 studies that looked at physical activity and academic　28　, investigators found that the more children moved, the better their grades were in school, 　29　 in the basic subjects of math, English and reading.\nThe data will certainly fuel the ongoing debate over whether physical education classes should be cut as schools struggle to 　30　 on smaller budgets. The arguments against physical education have included concerns that gym time may be taking away from study time. With standardized test scores in the U.S. 　31　 in recent years, some administrators believe students need to spend more time in the classroom instead of on the playground. But as these findings show, exercise and academics may not be 　32　 exclusive. Physical activity can improve blood 　33　 to the brain, fueling memory, attention and creativity, which are 　34　 to learning. And exercise releases hormones that can improve 　35　 and relieve stress, which can also help learning. So while it may seem as if kids are just exercising their bodies when they’re running around, they may actually be exercising their brains as well.', '注意：此部分试题请在答题卡2上作答。', 'A) attendance', 'B) consequently', 'C) current', 'D) depressing', 'E) dropping', 'F) essential', 'F) essential', 'F) essential', 'G) feasible', 'J) mutually', 'K) particularly', 'L) performance', 'M) review', 'N) survive', 'O) tend');
INSERT INTO `cet4_part3a` VALUES ('cet4_2016_6_2', ' Signs barring cell—phone use are a familiar sight to anyone who has ever sat in a hospital waiting room．But the  26 popularity of electronic medical records has forced hospital．based doctors to become  27 on computers throughout the day,and desktops—which keep doctors from bedsides—are  28  giving way to wireless devices．\r\n    As clerical loads increased，“something had to 29  ．and that was always face time with patients．”says Dr．Bhakti Patel．a former chief resident in the University of Chicago’s intenal-medicine program．In fall 2010，she helped  30  a pilot project in Chicago to see if the iPad could improve working conditions and patient care．The experiment was so 31 that all internal．medicine residents at the university now get iPads when they begin the program．Johns Hopkins’ internal．medicine program adopted the same  32 in 2011．Medical schools at Yale and Stanford now have paperless．iPad-based curriculums．“You’11 want an iPad just so you can wear this”is the slogan for one of the new lab coats  33  with large pockets to accommodate tablet computers．\r\n    A study of the University of Chicago iPad project found that patients got tests and  34  faster if they were cared for by iPad．equipped residents．Many patients also 35 a better understanding of the illnesses mat landed them in the hospital in the first place．\r\n', '注意：此部分试题请在答题卡2上作答。', 'A．dependent', ' B． designed', ' C． fast', ' D． flying', ' E．gained', ' F．give', ' G．growing', ' H．launch', 'I．policy', 'J．prospect', 'K．rather', 'L．reliable', 'M．signal', 'N．successful', 'O．treatments');
INSERT INTO `cet4_part3a` VALUES ('cet4_2016_6_3', ' Contrary to popular belief,older people generally do not want to live with their children．Moreover,most adult children  26  every bit as much care and support to their aging parents as was the case in the“good old days”，and most older people do not feel  27  ．\r\n    About 80％of people 65 years and older have living children，and about 90％of them have  28 contact with their children．About 75％of elderly parents who don’t go to nursing homes live within 30 minutes of at least one of their children．\r\n    However,29 having contact with children does not guarantee happiness in old age．In fact．some research has found that people who are most involved with their families have the lowest spirits．This research may be 30，however,as ill health often makes older people more 31 and thereby increases contact\r\nwith family members．So it is more likely that poor health，not iust family involvement，  32 spirits．\r\n    Increasingly,researchers have begun to look at the quality of relationships，rather than at the frequency of contact，between the elderly and their children．If parents and children share interests and values and agree on childrearing practices and religious 33，they are likely to enjoy each other’s company．Disagreements on such matters can 34 cause problems．If parents are angered by their daughter’s divorce，dislike her new husband．and disapprove of how she is raising their grandchildren， 35 are that they are not going to enjoy her visits．\r\n', '注意：此部分试题请在答题卡2上作答。', 'A．abandoned', 'B．advanced', 'C．biased', 'D．chances', 'E．commitment', 'F．dampens', 'G．dependent', 'H．distant', 'I．frequent', 'J．fulfillment', 'K．grant', 'L．merely', 'M．provide', 'N．understandably', 'O．unrealistically');

-- ----------------------------
-- Table structure for cet4_part3b
-- ----------------------------
DROP TABLE IF EXISTS `cet4_part3b`;
CREATE TABLE `cet4_part3b` (
  `cet4_part3B_id` varchar(15) NOT NULL,
  `cet4_part3B_A` varchar(750) DEFAULT NULL,
  `cet4_part3B_B` varchar(750) DEFAULT NULL,
  `cet4_part3B_C` varchar(750) DEFAULT NULL,
  `cet4_part3B_D` varchar(1000) DEFAULT NULL,
  `cet4_part3B_E` varchar(750) DEFAULT NULL,
  `cet4_part3B_F` varchar(750) DEFAULT NULL,
  `cet4_part3B_G` varchar(750) DEFAULT NULL,
  `cet4_part3B_H` varchar(750) DEFAULT NULL,
  `cet4_part3B_I` varchar(750) DEFAULT NULL,
  `cet4_part3B_J` varchar(750) DEFAULT NULL,
  `cet4_part3B_K` varchar(750) DEFAULT NULL,
  `cet4_part3B_L` varchar(750) DEFAULT NULL,
  `cet4_part3B_M` varchar(750) DEFAULT NULL,
  `cet4_part3B_N` varchar(750) DEFAULT NULL,
  `cet4_part3B_36` varchar(200) DEFAULT NULL,
  `cet4_part3B_37` varchar(200) DEFAULT NULL,
  `cet4_part3B_38` varchar(200) DEFAULT NULL,
  `cet4_part3B_39` varchar(200) DEFAULT NULL,
  `cet4_part3B_40` varchar(200) DEFAULT NULL,
  `cet4_part3B_41` varchar(200) DEFAULT NULL,
  `cet4_part3B_42` varchar(200) DEFAULT NULL,
  `cet4_part3B_43` varchar(200) DEFAULT NULL,
  `cet4_part3B_44` varchar(200) DEFAULT NULL,
  `cet4_part3B_45` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`cet4_part3B_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of cet4_part3b
-- ----------------------------
INSERT INTO `cet4_part3b` VALUES ('cet4_2016_6_1', '[A] When your elderly relative needs to enter some sort of long-term care facility—a moment few parents or children approach without fear—what you would like is to have everything made clear.', '[B] Does assisted living really mark a great improvement over a nursing home, or has the industry simply hired better interior designers? Are nursing homes as bad as people fear, or is that an out-moded stereotype (固定看法)? Can doing one’s homework really steer families to the best places? It is genuinely hard to know.', '[C] I am about to make things more complicated by suggesting that what kind of facility an older person lives in may matter less than we have assumed. And that the characteristics adult children look for when they begin the search are not necessarily the things that make a difference to the people who are going to move in. I am not talking about the quality of care, let me hastily add. Nobody flourishes in a gloomy environment with irresponsible staff and a poor safety record. But an accumulating body of research indicates that some distinctions between one type of elder care and another have little real bearing on how well residents do.', '[D] The most recent of these studies, published in The journal of Applied Gerontology, surveyed 150 Connecticut residents of assisted living, nursing homes and smaller residential care homes (known in some states as board and care homes or adult care homes). Researchers from the University of Connecticut Health Center asked the residents a large number of questions about their quality of life, emotional well-being and social interaction, as well as about the quality of the facilities.', '[E] “We thought we would see differences based on the housing types,” said the lead author of the study, Julie Robison, an associate professor of medicine at the university. A reasonable assumption—don’t families struggle to avoid nursing homes and suffer real guilt if they can’t', '[F] In the initial results, assisted living residents did paint the most positive picture. They were less likely to report symptoms of depression than those in the other facilities, for instance, and less likely to be bored or lonely. They scored higher on social interaction.', '[G] But when the researchers plugged in a number of other variables, such differences disappeared. It is not the housing type, they found, that creates differences in residents’ responses. “It is the characteristics of the specific environment they are in, combined with their own personal characteristics—how healthy they feel they are, their age and marital status,” Dr. Robison explained. Whether residents felt involved in the decision to move and how long they had lived there also proved significant.', '[H] An elderly person who describes herself as in poor health, therefore, might be no less depressed in assisted living (even if her children preferred it) than in a nursing home. A person who bad input into where he would move and has had time to adapt to it might do as well in a nursing home as in a small residential care home, other factors being equal. It is an interaction between the person and the place, not the sort of place in itself, that leads to better or worse experiences. “You can’t just say, ‘Let’s put this person in a residential care home instead of a nursing home—she will be much better off,” Dr. Robison said. What matters, she added, “is a combination of what people bring in with them, and what they find there.”', '[I] Such findings, which run counter to common sense, have surfaced before. In a multi-state study of assisted living, for instance, University of North Carolina researchers found that a host of variables—the facility’s type, size or age; whether a chain owned it; how attractive the neighborhood was—had no significant relationship to how the residents fared in terms of illness, mental decline, hospitalizations or mortality. What mattered most was the residents’ physical health and mental status. What people were like when they came in had greater consequence than what happened one they were there.', '[J] As I was considering all this, a press release from a respected research firm crossed my desk, announcing that the five-star rating system that Medicare developed in 2008 to help families compare nursing home quality also has little relationship to how satisfied its residents or their family members are. As a matter of fact, consumers expressed higher satisfaction with the one-star facilities, the lowest rated, than with the five-star ones. (More on this study and the star ratings will appear in a subsequent post.)', '[K] Before we collectively tear our hair out—how are we supposed to find our way in a landscape this confusing?—here is a thought from Dr. Philip Sloane, a geriatrician（老年病学专家）at the University of North Carolina：“In a way, that could be liberating for families.”', '[L] Of course, sons and daughters want to visit the facilities, talk to the administrators and residents and other families, and do everything possible to fulfill their duties. But perhaps they don’t have to turn themselves into private investigators or Congressional subcommittees. “Families can look a bit more for where the residents are going to be happy，” Dr. Sloane said. And involving the future resident in the process can be very important.', '[M] We all have our own ideas about what would bring our parents happiness. They have their ideas, too. A friend recently took her mother to visit an expensive assisted living/nursing home near my town. I have seen this place—it is elegant, inside and out. But nobody greeted the daughter and mother when they arrived, though the visit had been planned; nobody introduced them to the other residents. When they had lunch in the dining room, they sat alone at a table.', '[N] The daughter feared her mother would be ignored there, and so she decided to move her into a more welcoming facility. Based on what is emerging from some of this research, that might have been as rational a way as any to reach a decision.', '36. Many people feel guilty when they cannot find a place other than a nursing home for their parents.', '37.Though it helps for children to investigate care facilities, involving their parents in the decision-making process may prove very important.', '38.It is really difficult to tell if assisted living is better than a nursing home.', '39.How a resident feels depends on an interaction between themselves and the care facility they live in.', '40.The author thinks her friend made a rational decision in choosing a more hospitable place over an apparently elegant assisted living home.', '41.The system Medicare developed to rate nursing home quality is of little help to finding a satisfactory place.', '42.At first the researchers of the most recent study found residents in assisted living facilities gave higher scores on social interaction.', '43.What kind of care facility old people live in may be less important than we think.', '44.The findings of the latest research were similar to an earlier multi-state study of assisted living.', '45.A resident’s satisfaction with a care facility has much to do with whether they had participated in the decision to move in and how long they had stayed there.');
INSERT INTO `cet4_part3b` VALUES ('cet4_2016_6_2', 'A．Is it possible to enjoy a peaceful life in a world that is increasingly challenged by threats and uncertainties from wars，terrorism，economic crises and a widespread outbreak of infectious diseases?\r\n  The answer is yes，according to a new book The 10 Golden Rules．\"Ancient Wisdom from the Greek Philosophers on Living a Good Life．The book is co-authored by Long Island University’s philosophy professor Michael Soupios and economics professor Panos Mourdoukoutas．\r\n', 'B．The wisdom of the ancient Greek philosophers is timeless，says Soupios．The philosophy professor says it is as relevant today as when it was first written many centuries ago．“There is no expiration(失效) date on wisdom．”he says．“There is no shelf life on intelligence．I think that things have become very gloomy these days，lots of misunderstanding，misleading cues，a lot of what the ancients would have called sophistry(诡辩)．The nice thing about ancient philosophy as offered by the Greeks is that they tended to see life clear and whole，in a way that we tend not to see life today．”', 'C．Soupios，along with his co—author Panos Mourdoukoutas，developed their 10 golden rules by turning to the men behind that philosophy—Aristotle，Socrates，Epictetus and Pythagoras，among others．The first rule—examine your life—is the common thread that runs through the entire book．Soupios says that it is based on Plato’s observation that the unexamined life is not worth living．“The Greeks are always concerned about boxing themselves in，in terms of convictions(信念)，”he says．“So take a step back， switch off the automatic pilot and actually stop and reflect about things like our priorities，our values， and our relationships．”', 'D．As we begin to examine our life，Soupios says，we come to Rule No．2：Worry only about things that you can control．“The individual who promoted this idea was a Stoic philosopher．His name is Epictetus，”he says．“And what the Stoics say in general is simply this：There is a larger plan in life．You are not really going to be able to understand all of the dimensions of this plan．You are not going to be able to control the dimensions of this plan．”', 'E．So，Soupios explains，it is not worth it to waste our physical，intellectual and spiritual energy worrying about things that are beyond our control．“I can not control whether or not l wind up getting the disease swine flu，for example，”he says．“I mean，there are some cautious steps I can take，but ultimately I can not guarantee myself that．So what Epictetus would say is sitting at home worrying about that would be wrong and wasteful and irrational．You should live your life attempting to identify and control those things which you can genuinely control．’’', 'F．To have a meaningful，happy life we need friends．But according to Aristotle—a student of Plato and teacher of Alexander the Great—most relationships don’t qualify as true friendships．“Just because I have a business relationship with an individual．In our pursuit of the good life，he says，it is important to seek out true pleasures—advice which was originally offered by Epicurus．But unlike the modem definition of Epicureanism as a life of indulgence (放纵)and luxury', 'G for the ancient Greeks，it meant finding a state of calm，peace and mental ease．\r\ndual and I can profit from that relationship．it does not necessarily mean that this person is my friend，”Soupios says．“Real friendship is when two individuals share the same soul．It is a beautiful and uncharacteristically poetic image that Aristotle offers．”\r\n', 'H．“This was the highest and most desirable form of pleasure and happiness for the ancient Epicureans，” Soupios says．“This is something that is very much well worth considering here in the modem era．I do not think that we spend nearly enough time trying to concentrate on achieving a sort of calmness，a sort of contentment in a mental and spiritual way,which was identified by these people as the highest form of happiness and pleasure．”', 'I．  Other golden rules counsel us to master ourselves，to avoid excess and not to be a prosperous(发迹的) fool．There are also rules dealing with interpersonal relationships：Be a responsible human being and do not do evil things to others．', 'J．“This is Hesiod，of course，a younger contemporary poet，we believe，with Homer,”Soupios says．“Hesiod offers an idea—which you very often find in some of the world’s great religions。in the Judeo—Christian tradition and in Islam and others——that in some sense、when you hurt another human being，you hurt yourself．That damaging other people in your community and in your life，trashing relationships，results in a kind of self-inflicted(自己招致的)spiritual wound．”', 'K．Instead，Soupios says，ancient wisdom urges us to do good．Golden Rule No．10 for a good life is that kindness toward others tends to be rewarded．', 'L．“This is Aesop，the fabulist(寓言家)，the man of these charming little tales，often told in terms of animals and animal relationships．”he says．“I think what Aesop was suggesting is that when you offer a good rum to another human being，one can hope that that good deed will come back and sort of pay a profit to you，the doer of the good deed．Even if there is no concrete benefit paid in response to your good deed，at the very least，the doer of the good deed has the opportunity to enjoy a kind of spiritually enlightened moment，”', 'M．Soupios says following the 10 Golden Rules based on ancient wisdom can guide us to the path of the good life where we stop living as onlookers and become engaged and happier human beings．And that， he notes，is a life worth living．', 'N“Just because I have a business relationship with an individual．In our pursuit of the good life，he says，it is important to seek out true pleasures—advice which was originally offered by Epicurus．But unlike the modem definition of Epicureanism as a life of indulgence (放纵)and luxury,for the ancient Greeks，it meant finding a state of calm，peace and mental ease．\r\ndual and I can profit from that relationship．it does not necessarily mean that this person is my friend，”Soupios says．“Real friendship is when two individuals share the same soul．It is a beautiful and uncharacteristically poetic image that Aristotle offers．”\r\n', '36．According to an ancient Greek philosopher,it is impossible for us to understand every aspect of our life．', '37．Ancient philosophers saw life in a different light from people of today．', '38．Not all your business partners are your soul mates．', '39．We can live a peaceful life despite the various challenges of the modem world．', '40．The doer of a good deed can feel spiritually rewarded even when they gain no concrete benefits．', '41．How to achieve mental calmness and contentment is well worth our consideration today．', '42．Michael Soupios suggests that we should stop and think carefully about our priorities in life．', '43．Ancient philosophers strongly advise that we do good．', '44．The wise teachings of ancient Greek thinkers are timeless，and are applicable to contemporary life．', '45．Do harm to others and you do harm to yourself.');
INSERT INTO `cet4_part3b` VALUES ('cet4_2016_6_3', 'A．For many years I have studied global agricultural，population，environmental and economic trends and their interactions．The combined effects of those trends and the political tensions they generate point to the breakdown of governments and societies．Yet I，too，have resisted the idea that food shortages could bring down not only individual governments but also our global civilization．', 'B．I can no longer ignore that risk．Our continuing failure to deal with the environmental declines that are undermining the world food economy forces me to conclude that such a collapse is possible．', 'C．As demand for food rises faster than supplies are growing，the resulting food．price inflation puts severe stress on the governments of many countries．Unable to buy grain or grow their own，hungry people take to the streets．Indeed，even before the steep climb in grain prices in 2008。the number of failing states was expanding．If the food situation continues to worsen，entire nations will break down at an ever increasing rate．In the 20th century the main threat to international security was superpower conflict；today it is failing states．', 'D．States fail when national governments can no longer provide personal security,food security and basic social services such as education and health care．When governments lose their control on power law and order begin to disintegrate．After a point，countries can become so dangerous that food relief workers are no longer safe and their programs are halted．Failing states are of international concern because they are a source of terrorists，drugs，weapons and refugees(难民)threatening political stability everywhere．', 'E．The surge in world grain prices in 2007 and 2008～and the threat they pose to food security-has a different，more troubling quality than the increases of the past．During the second half of the 20th century,grain prices rose dramatically several times．In 1972，for instance，the Soviets，recognizing their poor harvest early,quietly cornered the world wheat market．As a result．wheat prices elsewhere more than doubled，pulling rice and corn prices up with them．But this and other price shocks were event． Driven-drought in the Soviet Union．Crop-shrinking heat in the U．S．Corn Belt．And the rises were short-lived：prices typically returned to normal with the next harvest．', 'F．In contrast，the recent surge in world grain prices is trend-driven，making it unlikely to reverse without a reversal in the trends themselves．On the demand side．those trends include the ongoing addition of more than 70 million people a year,a growing number of people wanting to move up the food chain to consume highly grain-intensive meat products，and the massive diversion(转向)of U．S．grain to the production of bio-fuel．', 'G．As incomes rise among low-income consumers，the potential for further grain consumption is huge．But that potential pales beside the never-ending demand for crop-based fuels．A fourth of this year’s U．S． grain harvest will go to fuel cars．', 'H． What about supply?The three environmental trends-the shortage of fresh water．the loss of topsoil and the rising temperatures-are making it increasingly hard to expand the world’s grain supply fast enough to keep up with demand．Of all those trends．however,the spread of water shortages poses the most immediate threat．The biggest challenge here is irrigation．which consumes 70％of the world’s fresh water．Millions of irrigation wells in many countries are now pumping water out of underground sources faster than rainfall can refill them．The result is falling water tables (地下水位) in countries with half the world’s people，including the three big grain producers—China，India and the U．S．', 'I．As water tables have fallen and irrigation wells have gone dry,China’s wheat crop，the world’s largest，has declined by 8％since it peaked at 123 million tons in 1997．But water shortages are even more worrying in India．Millions of irrigation wells have significantly lowered water tables in almost every state．', 'J．As the world’s food security falls to pieces。individual countries acting in their own self-interest are actually worsening the troubles of many．The trend began in 2007，when leading wheat-exporting countries such as Russia and Argentina limited or banned their exports．in hopes of increasing local food supplies and thereby bringing down domestic food prices．Vietnam banned its exports for several months for the same reason．Such moves may eliminate the fears of those living in the exporting countries，but they are creating panic in importing countries that must rely on what is then left for export．', 'K．In response to those restrictions，grain-importing countries are trying to nail down long-term trade agreements that would lock up future grain supplies．Food-import anxiety is even leading to new efforts by Food-importing countries to buy or lease farmland in other countries．In spite of such temporary measures，soaring food prices and spreading hunger in many other countries are beginning to break down the social order.', 'L．Since the current world food shortage is trend-driven，the environmental trends that cause it must be reversed．We must cut carbon emissions by 80％from their 2006 levels by 2020．stabilize the world’s population at eight billion by 2040，completely remove poverty,and restore forests and soils．There is nothing new about the four objectives．Indeed，we have made substantial progress in some parts of the world on at least one of these-the distribution of family-planning services and the associated shift to smaller families．', 'M．For many in the development community,the four objectives were seen as positive，promoting development as long as they did not cost too much．Others saw them as politically correct and morally appropriate．Now a third and far more significant motivation presents itself: meeting these goals may be necessary to prevent the collapse of our civilization．Yet me cost we project for saving civilization would amount to less than $200 billion a year,1／6 of current global military spending．In effect，our plan is the new security budget．', null, '36．The more recent steep climb in grain prices partly results from the fact that more and more people want to consume meat products．', '37．Social order is breaking down in many countries because of food shortages．', '38．Rather than superpower conflict，countries unable to cope with food shortages now constitute the main threat to world security．', '39．Some pans of the world have seen successful implementation of family planning．', '40．The author has come to agree that food shortages could ultimately lead to the collapse of world civilization．', '41．Increasing water shortages prove to be the biggest obstacle to boosting the world’s grain production．', '42．The cost for saving our civilization would be considerably less than the world’s current military spending．', '43．To lower domestic food prices，some countries limited or stopped their grain exports．', '44．Environmental problems must be solved to ease the current global food shortage．', '45．A quarter of this year’s American grain harvest will be used to produce bio-fuel for cars．');

-- ----------------------------
-- Table structure for cet4_part3c
-- ----------------------------
DROP TABLE IF EXISTS `cet4_part3c`;
CREATE TABLE `cet4_part3c` (
  `cet4_partC_id` int(11) NOT NULL AUTO_INCREMENT,
  `cet4_partC_ids` varchar(15) DEFAULT NULL,
  `cet4_partC_passage` varchar(100) DEFAULT NULL,
  `cet4_partC_article` varchar(4000) DEFAULT NULL,
  `cet4_partC_question` varchar(200) DEFAULT NULL,
  `cet4_partC_A` varchar(100) DEFAULT NULL,
  `cet4_partC_B` varchar(100) DEFAULT NULL,
  `cet4_partC_C` varchar(100) DEFAULT NULL,
  `cet4_partC_D` varchar(100) DEFAULT NULL,
  `cet4_partC_info` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`cet4_partC_id`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of cet4_part3c
-- ----------------------------
INSERT INTO `cet4_part3c` VALUES ('1', 'cet4_2016_6_1', 'Passage one', 'As Artificial Intelligence(AI) becomes increasingly sophisticated, there are growing concerns that robots could become a threat. This danger can be avoided, according to computer science professor Stuart Russell, if we figure out how to turn human values into a programmable code.\nRussell argues that as robots take on more complicated tasks, it’s necessary to translate our morals into AI language.\nFor example, if a robot does chores around the house, you wouldn’t want it to put the pet cat in the oven to make dinner for the hungry children. “You would want that robot preloaded with a good set of values,” said Russell.\nSome robots are already programmed with basic human values. For example, mobile robots have been programmed to keep a comfortable distance from humans. Obviously there are cultural differences, but if you were talking to another person and they came up close in your personal space, you wouldn’t think that’s the kind of thing a properly brought-up person would do.\nIt will be possible to create more sophisticated moral machines, if only we can find a way to set out human values as clear rules.\nRobots could also learn values from drawing patterns from large sets of data on human behavior. They are dangerous only if programmers are careless.\nThe biggest concern with robots going against human values is that human beings fail to so sufficient testing and they’ve produced a system that will break some kind of taboo（禁忌）.\nOne simple check would be to program a robot to check the correct course of action with a human when presented with an unusual situation.\nIf the robot is unsure whether an animal is suitable for the microwave, it has the opportunity to stop, send out beeps(嘟嘟声), and ask for directions from a human. If we humans aren’t quite sure about a decision, we go and ask somebody else.\nThe most difficult step in programming values will be deciding exactly what we believe in moral, and how to create a set of ethical rules. But if we come up with an answer, robots could be good for humanity.', '46.What does the author say about the threat of robots?', 'It may constitute a challenge to computer progranmers.', 'It accompanies all machinery involving high technology.', 'It can be avoided if human values are translated into their language.', 'It has become an inevitable peril as technology gets more sophisticated.', 'Questions 46 to 50 are based on the following passage.');
INSERT INTO `cet4_part3c` VALUES ('2', 'cet4_2016_6_1', null, null, '47.What would we think of a person who invades our personal space according to the author?', 'They are aggressive.', 'They are outgoing.', 'They are ignorant.', 'They are ill-bred.', null);
INSERT INTO `cet4_part3c` VALUES ('3', 'cet4_2016_6_1', null, null, '48.How do robots learn human values?', 'By interacting with humans in everyday life situations.', 'By following the daily routines of civilized human beings.', 'By picking up patterns from massive data on human behavior.', 'By imitating the behavior of property brought-up human beings.', null);
INSERT INTO `cet4_part3c` VALUES ('4', 'cet4_2016_6_1', null, null, '49.What will a well-programmed robot do when facing an unusual ', 'keep a distance from possible dangers.', 'Stop to seek advice from a human being.', 'Trigger its built-in alarm system at once.', 'Do sufficient testing before taking action.', null);
INSERT INTO `cet4_part3c` VALUES ('5', 'cet4_2016_6_1', null, null, '50.What is most difficult to do when we turn human values into a programmable code?', 'Determine what is moral and ethical.', 'Design some large-scale experiments.', 'Set rules for man-machine interaction.', 'Develop a more sophisticated program.', null);
INSERT INTO `cet4_part3c` VALUES ('6', 'cet4_2016_6_1', 'Passage Two', 'Why do some people live to be older than others? You know the standard explanations: keeping a moderate diet, engaging in regular exercise, etc. But what effect does your personality have on your longevity（长寿）?Do some kinds of personalities lead to longer lives? A new study in the Journal of the American Geriatrics Society looked at this question by examining the personality characteristics of 246 children of people who had lived to be at least 100.\nThe study shows that those living the longest are more outgoing, more active and less neurotic (神经质的) than other people. Long-living women are also more likely to be sympathetic and cooperative than women with a normal life span. These findings are in agreement with what you would expect from the evolutionary theory: those who like to make friends and help others can gather enough resources to make it through tough times.\nInterestingly, however, other characteristics that you might consider advantageous had no impact on whether study participants were likely to live longer. Those who were more self-disciplined, for instance, were no more likely to live to be very old. Also, being open to new ideas had no relationship to long life, which might explain all those bad-tempered old people who are fixed in their ways.\nWhether you can successfully change your personality as an adult is the subject of a longstanding psychological debate. But the new paper suggests that if you want long life, you should strive to be as outgoing as possible.\nUnfortunately, another recent study shows that your mother’s personality may also help determine your longevity. That study looked at nearly 28,000 Norwegian mothers and found that those moms who were more anxious, depressed and angry were more likely to feed their kids unhealthy diets. Patterns of childhood eating can be hard to break when we’re adults, which may mean that kids of depressed moms end up dying younger.\nPersonality isn’t destiny(命运), and everyone knows that individuals can learn to change. But both studies show that long life isn’t just a matter of your physical health but of your mental health.', '51. The aim of the study in the Journal of the American Geriatrics Society is____.', 'to see whether people’s personality affects their life span', 'to find out if one’s lifestyle has any effect on their health', 'to investigate the role of exercise in living a long life', 'to examine all the factors contributing to longevity', 'Questions 51 to 55 are based on the following passage.');
INSERT INTO `cet4_part3c` VALUES ('7', 'cet4_2016_6_1', null, null, '52. What does the author imply about outgoing and sympathetic people?', 'They have a good understanding of evolution.', 'They are better at negotiating an agreement.', 'They generally appear more resourceful.', 'They are more likely to get over hardship.', null);
INSERT INTO `cet4_part3c` VALUES ('8', 'cet4_2016_6_1', null, null, '53. What finding of the study might prove somewhat out of our expectation?', 'Easy-going people can also live a relatively long life.', 'Personality characteristics that prove advantageous actually vary with times.', 'Such personality characteristics as self-discipline have no effect on longevity.', 'Readiness to accept new ideas helps one enjoy longevity.', null);
INSERT INTO `cet4_part3c` VALUES ('9', 'cet4_2016_6_1', null, null, '54. What does the recent study of Norwegian mothers show?', 'Children’s personality characteristics are invariably determined by their mothers.', 'People with unhealthy eating habits are likely to die sooner.', 'Mothers’ influence on children may last longer than fathers’.', 'Mothers’ negative personality characteristics may affect their children’s life spans.', null);
INSERT INTO `cet4_part3c` VALUES ('10', 'cet4_2016_6_1', '', null, '55.What can we learn from the findings of the two new studies?', 'Anxiety and depression more often than not cut short one’s life span.', 'Longevity results from a combination of mental and physical health.', 'Personality plays a decisive role in how healthy one is.', 'Health is in large part related to one’s lifestyle.', null);
INSERT INTO `cet4_part3c` VALUES ('11', 'cet4_2016_6_2', 'Passage One', 'Attitudes toward new technologies often fall along generational lines．That is，generally younger people tend to outnumber older people on the front end of a technological shift．\r\n    It is not always the case．though．When you look at attitudes toward driverless cars，there doesn’t seem to be a clear generational divide．The public overall is split on whether they’d like to use a driverless car．In a study last year,of all people surveyed，48 percent said they wanted to ride in one，while 50 percent did not．\r\n  The fact that attitudes toward self-driving cars appear to be so steady across generations suggests how transformative the shift to driverless cars could be．Not everyone wants a driverless car now—and no one can get one yet—but among those who are open to them，every age group is similarly engaged．\r\n  Actually，this isn’t surprising．Whereas older generations are sometimes reluctant to adopt new technologies，driverless cars promise real value to these age groups in particular．Older adults，especially those with limited mobility or difficulty driving on their own，are one of the classic use-cases for driverless cars．\r\n  This is especially interesting when you consider that younger people are generally more interested in travel-related technologies than older ones．\r\n  When it comes to driverless cars，differences in attitudes are more pronounced based on factors not related to age．College graduates，for example，are particularly interested in driverless cars compared with those who have less education：59 percent of college graduates said they would like to use a driverless car compared with 38 percent of those with a high—school diploma or less．\r\n  Where a person lives matters，too．More people who lived in cities and suburbs said they wanted to try driverless cars than those who lived in rural areas．\r\n  Wh1ile there’s reason to believe that interest in self-driving cars is going up across the board．a person’s age will have little to do with how self-driving cars can become mainstream．Once driverless cars are actually available for sale，the early adopters will be the people who can afford to buy them．\r\n', '46．What happens when a new technology emerges?', ' A．It further widens the gap between the old and the young．', '  B．It often leads to innovations in other related fields．', '  C．It contributes greatly to the advance of society as a whole．', '  D．It usually draws different reactions from different age groups．', 'Questions 46 to50 are based on the following passage．');
INSERT INTO `cet4_part3c` VALUES ('12', 'cet4_2016_6_2', null, null, '47．What does the author say about the driverless car?', ' A．It does not seem to create a generational divide．', ' B．It will not necessarily reduce road accidents．', ' C．It may start a revolution in the car industry．', 'D．It has given rise to unrealistic expectations．', null);
INSERT INTO `cet4_part3c` VALUES ('13', 'cet4_2016_6_2', null, null, '48．Why does the driverless car appeal to some old people?', 'A．It saves their energy．', 'B．It helps with their mobility．', 'C．It adds to the safety of their travel．', 'D．It stirs up their interest in life．', null);
INSERT INTO `cet4_part3c` VALUES ('14', 'cet4_2016_6_2', null, null, '49．What is likely to affect one’s attitude toward the driverless car?', 'A．The location of their residence．', 'B．The field of their special interest．', 'C．The amount of training they received．', 'D．The length of their driving experience．', null);
INSERT INTO `cet4_part3c` VALUES ('15', 'cet4_2016_6_2', null, null, '50．Who are likely to be the first to buy the driverless car?', 'A．The seniors．', 'B．The educated．', 'C．The wealthy．', 'D．The tech fans．', null);
INSERT INTO `cet4_part3c` VALUES ('16', 'cet4_2016_6_2', '  Passage Two', 'In agrarian(农业的)，pre-industrial Europe，“you’d want to wake up early start working with the sunrise，have a break to have the largest meal，and then you’d go back to work，”says Ken Albala，a professor of history at the University of the Pacific．“Later,at 5 or 6．you’d have a smaller supper”\r\n  This comfortable cycle,in which the rhythms of the day helped shape the rhythms of the meals，gave rise to the custom of the large midday meal．eaten with the extended family．“Meals are the foundation of the family” says Carole Counihan a professor at Millersville University n Pennsylvania so there was a very important interconnection between eating together”and strengthening family ties．\r\n  Since industrialization，maintaining such a slow cultural metabolism has been much harder,with the long midday meal shrinking to whatever could be stuffed into a lunch bucket or bought at a food stand．Certainly, there were benefits．Modem techniques for producing and shipping food led to greater variety and quantity, including a tremendous increase in the amount of animal protein and dairy products available，making us more vigorous than our ancestors．\r\n  Yet plenty has been lost too．even in cultures that still live to eat．Take Italy．It’s no secret that the Mediterranean diet is healthy,but it was also a joy to prepare and eat．Italians，says Counihan，traditionally began the day with a small meal．The big meal came at around 1 p．m．In between the midday meal and a late,smaller dinner came a small snack．Today,when time zones have less and less meaning，there is little tolerance for offices’closing for lunch，and worsening traffic in cities means workers can’t make it home and back fast enough anyway．So the formerly small supper after sundown becomes the big meal of the day,the only one at which the family has a chance to get together．“The evening meal carries the full burden that used\r\nto be spread over two meals，”says Counihan．\r\n', '51．What do we learn from the passage about people in pre—industrial Europe?', '  A．They had to work from early morning till late at night．', ' B．They were so busy working that they only ate simple meals．', 'C．Their daily routine followed the rhythm of the natural cycle．', '  D．Their lire was much more comfortable than that of today．', 'Questions 51 to 55 are based on the following passage．');
INSERT INTO `cet4_part3c` VALUES ('17', 'cet4_2016_6_2', null, null, '52．What does Professor Carole Counihan say about pre-industrial European families eating meals together?', '  A．It was helpful to maintaining a nation’s tradition．', ' B．It brought family members closer to each other．', ' C．It was characteristic of the agrarian culture．', ' D．It enabled families to save a lot of money．', null);
INSERT INTO `cet4_part3c` VALUES ('18', 'cet4_2016_6_2', null, null, '53．What does“cultural metabolism”(Line l，Para．3)refer to?', ' A．Evolutionary adaptation．   ', 'B．Changes in lifestyle． ', '  C．Social progress．', ' D．Pace of life．', null);
INSERT INTO `cet4_part3c` VALUES ('19', 'cet4_2016_6_2', null, null, '54．What does the author think of the food people eat today?', '  A．Its quality is usually guaranteed．', ' B．It is varied，abundant and nutritious．', '  C．It is more costly than what our ancestors ate．', ' D．Its production depends too much on technology．', null);
INSERT INTO `cet4_part3c` VALUES ('20', 'cet4_2016_6_2', null, null, '55．What does the author say about Italians of the old days?', '  A．They enjoyed cooking as well as eating．', ' B．They ate a big dinner late in the evening． ', ' C．They ate three meals regularly every day．', ' D．They were expert at cooking meals．', null);
INSERT INTO `cet4_part3c` VALUES ('21', 'cet4_2016_6_3', 'Passage One', '  Declining mental function is often seen as a problem of old age，but certain aspects of brain function actually begin their decline in young adulthood，a new study suggests．\r\n  The study,which followed more than 2,000 healthy adults between the ages of 18 and 60，found that certain mental functions-including measures of abstract reasoning．mental speed and puzzle-solving-started to dull as early as age 27．\r\n  Dips in memory,meanwhile，generally became apparent around age 37．\r\n  On the other hand．indicators of a person’s accumulated knowledge-like performance on tests of vocabulary and general knowledge-kept improving with age，according to findings published in the journal Neurobiology of Aging．\r\n  The results do not mean that young adults need to start worrying about their memories．Most people’s minds function at a high level even in their later years，according to researcher Timothy Salthouse．\r\n  “These patterns suggest that some types of mental flexibility decrease relatively early in adulthood，but that the amount of knowledge one has，and the effectiveness of integrating it with one’s abilities，may increase throughout all of adulthood if there are no diseases，”Salthouse said in a news release．\r\n  The study included healthy,educated adults who took standard tests of memory,reasoning and perception at the outset and at some point over the next seven years．\r\n  The tests are designed to detect subtle(细微的)changes in mental function，and involve solving puzzles，recalling words and details from stories，and identifying patterns in collections of letters and symbols．\r\n  In general，Salthouse and his colleagues found，certain aspects of cognition(认知能力)generally started to decline in the late 20s to 30s．\r\n  The findings shed light on normal age—related changes in mental function，which could aid in understanding the process of dementia(痴呆)，according to the researchers．\r\n  “By following individuals over time，”Salthouse said，“we gain insight in cognition changes，and may possibly discover ways to slow the rate of decline．”\r\n  The researchers are currently analyzing the study participants’health and lifestyle to see which factors might influence age．related cognitive changes．\r\n', '46．What is the common view of mental function?', ' A．It varies from person to person．    ', ' B．It weakens in one’s later years．', ' C．It gradually expands with age．', 'D．It indicates one’s health condition', 'Questions 46 to 50 are based on the following passage．');
INSERT INTO `cet4_part3c` VALUES ('22', 'cet4_2016_6_3', null, null, '47．What does the new study find about mental functions?', ' A．Some diseases inevitably lead to their decline．', '  B．They reach a peak at the age of 20 for most people．', ' C．They are closely related to physical and mental exercise．', ' D．Some of them begin to decline when people are still young．', null);
INSERT INTO `cet4_part3c` VALUES ('23', 'cet4_2016_6_3', null, null, '48．What does Timothy Salthouse say about people’s minds in most cases?', ' A．They tend to decline in people’s later years．  ', ' B．Their flexibility determines one’s abilities．', '  C．They function quite well even in old age．', ' D．Their functioning is still a puzzle to be solved．', null);
INSERT INTO `cet4_part3c` VALUES ('24', 'cet4_2016_6_3', null, null, '49．Although people’s minds may function less flexibly as they age，they    ．', ' A．may be better at solving puzzles', ' B．can memorize things with more ease', '  C．may have greater facility in abstract reasoning', '  D．can put what they have learnt into more effective use', null);
INSERT INTO `cet4_part3c` VALUES ('25', 'cet4_2016_6_3', null, null, '50．According to Salthouse，their study may help us    ．', ' A．find ways to slow down our mental decline', ' B．find ways to boost our memories', ' C．understand the complex process of mental functioning', ' D．understand the relation between physical and mental health', null);
INSERT INTO `cet4_part3c` VALUES ('26', 'cet4_2016_6_3', '    Passage Two', ' The most important thing in the news last week was the rising discussion in Nashville about the educational needs of children．The shorthand(简写)educators use for this is“pre-K”-meaning instruction before kindergarten-and the big idea is to prepare 4-year-oldsandevenyoungerkidstobe ready to succeed on their K-12journey．\r\n  But it gets complicated．The concept has multiple forms，and scholars and policymakers argue about the shape，scope and cost of the ideal program．\r\n  The federal Head Start program．launched 50 years ago。has served more than 30 million children．It was based on concepts developed at Vanderbilt University’s Peabody College by Susan Gray,the legendary pioneer in early childhood education research．\r\n  A new Peabody study of the Tennessee Voluntary Pre-K program reports that pre-K works．but the gains are not sustained through the third grade．It seems to me this highlights quality issues in elementary schools more than pre-K，and indicates longer-term success must connect pre-K with all the other issues related to educating a child．\r\n  Pre-K is controversial．Some critics say it is a luxury and shouldn’t be flee to families able to Pay．Pre-K advocates insist it is proven and will succeed if integrated with the rest of the child’s schooling．I lean toward the latter view．\r\n  This is，in any case，the right conversation to be having now as Mayor Megan Barry takes office．She was the first candidate to speak out for strong pre-K programming．The important thing is for all of us to keep in mind the real goal and the longer,bigger picture．\r\n  The weight of the evidence is on the side of pre-K that early intervention(干预)works．What government has not yet found is the political will to put that understanding into full practice with a sequence of smart schooling that provides the early foundation．\r\n  For this purpose，our schools need both the talent and the organization to educate each child who arrives at the schoolhouse door．Some show up ready,but many do not at this critical time when young brains are developing rapidly．\r\n', '51．What does the author say about pre-kindergarten education?', '  A．It should cater to the needs of individual children．', '  B．It is essential to a person’s future academic Success．', ' C．Scholars and policymakers have different opinions about it．', '  D．Parents regard it as the first phase of children’s development．', 'Questions 51 to 55 are based on the following passage．');
INSERT INTO `cet4_part3c` VALUES ('27', 'cet4_2016_6_3', null, null, '52．What does the new Peabody study find?', '  A．They have a good understanding of evolution．', '  B．They are better at negotiating an agreement．', '  C．They generally appear more resourceful．', '  D．They are more likely to get over hardship．', null);
INSERT INTO `cet4_part3c` VALUES ('28', 'cet4_2016_6_3', null, null, '53．What finding of the study might prove somewhat out of our expectation?', ' A．Easy—going people can also live a relatively long life．', '  B．Personality characteristics that prove advantageous actually vary with times．', ' C．Such personality characteristics as self-discipline have no effect on longevity.', '  D．Readiness to accept new ideas helps one enjoy longevity．', null);
INSERT INTO `cet4_part3c` VALUES ('29', 'cet4_2016_6_3', null, null, '54．What does the recent study of Norwegian mothers show?', ' A．Children’s personality characteristics are invariably determined by their mothers·', ' B．People with unhealthy eating habits are likely to die sooner．', '  C．Mothers’ influence on children may last longer than fathers’．', '  D．Mothers’ negative personality characteristics may affect their children’s life spans.', null);
INSERT INTO `cet4_part3c` VALUES ('30', 'cet4_2016_6_3', null, null, '55．What can we learn from the findings of the two new studies?', ' A．Anxiety and depression more often than not cut short one’s life span．', '  B．Longevity results from a combination of mental and physical health．', '  C．Personality plays a decisive role in how healthy one is．', '  D．Health is in large part related to one’s lifestyle．', null);

-- ----------------------------
-- Table structure for cet4_part4
-- ----------------------------
DROP TABLE IF EXISTS `cet4_part4`;
CREATE TABLE `cet4_part4` (
  `cet4_part4_id` varchar(15) NOT NULL,
  `cet4_part4_content` varchar(500) DEFAULT NULL,
  PRIMARY KEY (`cet4_part4_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of cet4_part4
-- ----------------------------
INSERT INTO `cet4_part4` VALUES ('cet4_2016_6_1', '功夫（Kong Fu) 是中国武术（martial arts）的俗称。中国武术的起源可以追溯到自卫的需要，狩猎活动以及古代中国的军士训练。它是中国传统体育运动的一种，年轻人和老年人都练。它已逐渐演变成了中国文化的独特元素。作为中国的国宝，武术有上百种不同的风格，是世界上练得最多的武术形式。有些风格模仿了动物的动作，还有一些则受到了中国哲学思想，神话和传说的启发');
INSERT INTO `cet4_part4` VALUES ('cet4_2016_6_2', '在山东省潍坊市，风筝不仅仅是玩具，而且还是这座城市文化的标志。潍坊以“风筝之都”而闻名，已有将近2400年放飞风筝的历史。传说中国古代哲学家墨子用了三年时间在潍坊制作了世界上首个风筝，但放飞的第一天风筝就坠落并摔坏了。也有人相信风筝是中国古代木匠鲁班发明的。据说他的风筝用木头和竹子制作，飞了三天后才落地。');
INSERT INTO `cet4_part4` VALUES ('cet4_2016_6_3', ' 乌镇是浙江的一座古老水镇，坐落在京杭大运河畔。这是一处迷人的地方，有许多古桥、中式旅店和餐馆。在过去一千年里，乌镇的水系和生活方式并未经历多少变化，是一座展现古文明的博物馆。乌镇所有房屋都用石木建造。数百年来，当地人沿着河边建起了住宅和集市。无数宽敞美丽的庭院藏身于屋舍之间，游客们每到一处都会有惊喜的发现。');

-- ----------------------------
-- Table structure for chart
-- ----------------------------
DROP TABLE IF EXISTS `chart`;
CREATE TABLE `chart` (
  `chart_id` int(11) NOT NULL AUTO_INCREMENT,
  `chart_cet_id` varchar(15) DEFAULT NULL,
  `chart_part1` int(11) DEFAULT NULL,
  `chart_part2` int(11) DEFAULT NULL,
  `chart_part3` int(255) DEFAULT NULL,
  `chart_part4` int(11) DEFAULT NULL,
  `chart_username` varchar(225) DEFAULT NULL,
  `chart_cet_title` varchar(30) DEFAULT NULL,
  `chart_correct` int(11) DEFAULT NULL,
  `chart_error` int(11) DEFAULT NULL,
  `chart_sum` int(11) DEFAULT NULL,
  `chart_pec` varchar(7) DEFAULT NULL,
  PRIMARY KEY (`chart_id`),
  KEY `username` (`chart_username`),
  CONSTRAINT `username` FOREIGN KEY (`chart_username`) REFERENCES `user` (`UserName`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of chart
-- ----------------------------
INSERT INTO `chart` VALUES ('1', 'cet4_2016_6_1', '5', '0', '3', '1', 'wynne', '2016年四级六月第一套', null, null, null, null);
INSERT INTO `chart` VALUES ('2', 'cet4_2016_6_2', '6', '7', '8', '4', 'wynne', '2016年四级六月第二套', null, null, null, null);
INSERT INTO `chart` VALUES ('3', 'cet4_2016_6_3', '5', '3', '7', '9', 'wynne', '2016年四级六月第三套', null, null, null, null);

-- ----------------------------
-- Table structure for comment
-- ----------------------------
DROP TABLE IF EXISTS `comment`;
CREATE TABLE `comment` (
  `comment_id` int(11) NOT NULL AUTO_INCREMENT,
  `topic_id` char(9) NOT NULL,
  `comment_content` varchar(200) DEFAULT NULL,
  `comment_from_username` varchar(15) DEFAULT NULL,
  `comment_time` datetime DEFAULT NULL,
  `topic_type` varchar(15) DEFAULT NULL,
  `comment_to_username` varchar(15) DEFAULT NULL,
  PRIMARY KEY (`comment_id`),
  KEY `comment_from_uid` (`comment_from_username`),
  KEY `topic_id` (`topic_id`),
  KEY `comment_to_uid` (`comment_to_username`),
  CONSTRAINT `comment_from_uid` FOREIGN KEY (`comment_from_username`) REFERENCES `user` (`UserName`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `topic_id` FOREIGN KEY (`topic_id`) REFERENCES `cet4` (`cet4_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of comment
-- ----------------------------
INSERT INTO `comment` VALUES ('10', 'cet6_0003', 'test', 'wynne', '2017-05-19 16:48:57', '六级单词', null);
INSERT INTO `comment` VALUES ('12', 'cet4_0002', 'tests', 'wynne', '2017-05-19 19:32:53', '四级单词', 'wynne');
INSERT INTO `comment` VALUES ('14', 'cet4_0006', 'test', 'wynne', '2017-05-20 11:46:54', '四级单词', null);

-- ----------------------------
-- Table structure for download
-- ----------------------------
DROP TABLE IF EXISTS `download`;
CREATE TABLE `download` (
  `FileID` int(11) NOT NULL AUTO_INCREMENT,
  `FileType` varchar(10) DEFAULT NULL,
  `FilePath` varchar(100) DEFAULT NULL,
  `Filedownloadsum` int(11) DEFAULT NULL,
  `FileName` varchar(50) DEFAULT NULL,
  `Filetime` varchar(20) DEFAULT NULL,
  `Filesize` varchar(11) DEFAULT NULL,
  `fileRealName` varchar(100) DEFAULT NULL,
  `fileTypes` varchar(5) DEFAULT NULL,
  PRIMARY KEY (`FileID`),
  KEY `cetid` (`fileRealName`)
) ENGINE=InnoDB AUTO_INCREMENT=38 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of download
-- ----------------------------
INSERT INTO `download` VALUES ('1', 'mp3', '/test/Download/Mp3/2013年12月六级考试真题 （第二套）.mp3', '0', '2013年12月六级考试真题 （第二套）.mp3', '2017-5-1', '23M', '2013年12月六级考试真题 （第二套）', '六级');
INSERT INTO `download` VALUES ('2', 'mp3', '/test/Download/Mp3/2013年12月六级考试真题 （第一套）.mp3', '2', '2013年12月六级考试真题 （第一套）.mp3', '2017-5-1', '22M', '2013年12月六级考试真题 （第一套）', '六级');
INSERT INTO `download` VALUES ('4', 'mp3', '/test/Download/Mp3/2014年6月六级考试真题 （第一套）.mp3', '11', '2014年6月六级考试真题 （第一套）.mp3', '2017-5-1', '23M', '2014年6月六级考试真题 （第一套）', '六级');
INSERT INTO `download` VALUES ('5', 'mp3', '/test/Download/Mp3/2014年12月六级考试真题 （第二套）.mp3', '3', '2014年12月六级考试真题 （第二套）.mp3', '2017-5-1', '23M', '2014年12月六级考试真题 （第二套）', '六级');
INSERT INTO `download` VALUES ('6', 'mp3', '/test/Download/Mp3/2014年12月六级考试真题 （第一套）.mp3', '12', '2014年12月六级考试真题 （第一套）.mp3', '2017-5-1', '23M', '2014年12月六级考试真题 （第一套）', '六级');
INSERT INTO `download` VALUES ('7', 'mp3', '/test/Download/Mp3/2015年6月六级考试真题（第二套）.mp3', '23', '2015年6月六级考试真题（第二套）.mp3', '2017-5-1', '23M', '2015年6月六级考试真题（第二套）', '六级');
INSERT INTO `download` VALUES ('8', 'mp3', '/test/Download/Mp3/2015年6月六级考试真题（第一套）.mp3', '34', '2015年6月六级考试真题（第一套）.mp3', '2017-5-1', '8.0MB', '2015年6月六级考试真题（第一套）', '六级');
INSERT INTO `download` VALUES ('9', 'mp3', '/test/Download/Mp3/2014年12月四级考试真题（第一套）.mp3', '12', '2014年12月四级考试真题（第一套）.mp3', '2017-5-1', '23M', '2014年12月四级考试真题（第一套）', '四级');
INSERT INTO `download` VALUES ('11', 'mp3', '/test/Download/Mp3/2014年12月四级考试真题（第三套）.mp3', '23', '2014年12月四级考试真题（第三套）.mp3', '2017-5-1', '23M', '2014年12月四级考试真题（第三套）', '四级');
INSERT INTO `download` VALUES ('12', 'mp3', '/test/Download/Mp3/2013年12月六级考试真题 （第二套）.mp3', '23', '2016年12月四级考试真题（第一套）.mp3', '2017-5-1', '23M', '2016年12月四级考试真题（第一套）', '四级');
INSERT INTO `download` VALUES ('13', 'mp3', '/test/Download/Mp3/2016年12月四级考试真题（第二套）.mp3', '23', '2016年12月四级考试真题（第二套）.mp3', '2017-5-1', '23M', '2016年12月四级考试真题（第二套）', '四级');
INSERT INTO `download` VALUES ('14', 'mp3', '/test/Download/Mp3/2016年12月四级考试真题（第二套）.mp3', '23', '2016年12月四级考试真题（第三套）.mp3', '2017-5-1', '23M', '2016年12月四级考试真题（第三套）', '四级');
INSERT INTO `download` VALUES ('15', 'mp3', '/test/Download/Mp3/2016年6月四级考试真题（第一套）.mp3', '23', '2016年6月四级考试真题（第一套）.mp3', '2017-5-1', '23M', '2016年6月四级考试真题（第一套）', '四级');
INSERT INTO `download` VALUES ('16', 'mp3', '/test/Download/Mp3/2016年6月四级考试真题（第二套）.mp3', '23', '2016年6月四级考试真题（第二套）.mp3', '2017-5-1', '23M', '2016年6月四级考试真题（第二套）', '四级');
INSERT INTO `download` VALUES ('17', 'mp3', '/test/Download/Mp3/2016年6月四级考试真题（第三套）.mp3', '10', '2016年6月四级考试真题（第三套））.mp3', '2017-4-22', '22M', '2016年6月四级考试真题（第三套）', '四级');
INSERT INTO `download` VALUES ('18', 'mp3', '/test/Download/Mp3/2016年6月六级考试真题（第三套）.mp3', '20', '2016年6月六级考试真题（第三套）.mp3', '2017-3-29', '19M', '2016年6月六级考试真题（第三套）', '四级');
INSERT INTO `download` VALUES ('19', 'doc', '/test/Download/test/2015年12月英语六级考试真题（第二套）.docx', '10', '2015年12月英语六级考试真题（第二套）.docx', '2017-3-31', '1273KB', '2015年12月英语六级考试真题（第二套）', '六级');
INSERT INTO `download` VALUES ('20', 'doc', '/test/Download/test/2015年12月英语六级考试真题（第一套）.docx', '12', '2015年12月英语六级考试真题（第一套）.docx', '2017-5-1', '1077KB', '2015年12月英语六级考试真题（第一套）', '六级');
INSERT INTO `download` VALUES ('21', 'doc', '/test/Download/test/2015年12月英语四级考试真题（第二套）.doc', '56', '2015年12月英语四级考试真题（第二套）.doc', '2017-5-1', '2974KB', '2015年12月英语四级考试真题（第二套）.doc', '四级');
INSERT INTO `download` VALUES ('22', 'doc', '/test/Download/test/2016年12月大学英语四级真题及答案第一套.docx', '12', '2016年12月大学英语四级真题及答案第一套.docx', '2017-5-1', '47KB', '2016年12月大学英语四级真题及答案第一套', '四级');
INSERT INTO `download` VALUES ('23', 'doc', '/test/Download/test/2016年6月英语四级真题答案（卷1）word版.doc', '56', '2016年6月英语四级真题答案（卷1）word版.doc', '2017-5-1', '103KB', '2016年6月英语四级真题答案（卷1）word版', '四级');
INSERT INTO `download` VALUES ('24', 'doc', '/test/Download/test/2016年12月大学英语六级考试真题第二套.docx', '56', '2016年12月大学英语六级考试真题第二套.docx', '2017-5-1', '156KB', '2016年12月大学英语六级考试真题第二套', '六级');
INSERT INTO `download` VALUES ('25', 'doc', '/test/Download/test/2016年12月大学英语六级考试真题第三套.docx', '78', '2016年12月大学英语六级考试真题第三套.docx', '2017-5-1', '120KB', '2016年12月大学英语六级考试真题第三套', '六级');
INSERT INTO `download` VALUES ('26', 'doc', '/test/Download/test/2016年12月大学英语六级考试真题第一套.docx', '56', '2016年12月大学英语六级考试真题第一套.docx', '2017-5-1', '158KB', '2016年12月大学英语六级考试真题第一套', '六级');
INSERT INTO `download` VALUES ('27', 'doc', '/test/Download/test/2016年12月大学英语四级真题及答案第二套.docx', '47', '2016年12月大学英语四级真题及答案第二套.docx', '2017-5-1', '39KB', '2016年12月大学英语四级真题及答案第二套', '四级');
INSERT INTO `download` VALUES ('28', 'doc', '/test/Download/test/2016年12月大学英语四级真题及答案第三套.docx', '96', '2016年12月大学英语四级真题及答案第三套.docx', '2017-5-1', '40KB', '2016年12月大学英语四级真题及答案第三套', '四级');
INSERT INTO `download` VALUES ('29', 'docx', '/test/Download/test【大学英语】英语四级词汇表带音标word版(免费下载).doc', '15', '【大学英语】英语四级词汇表带音标word版(免费下载).doc', '2017-4-29', '538KB', '【大学英语】英语四级词汇表带音标word版(免费下载)', '四级');
INSERT INTO `download` VALUES ('30', 'docx', '/test/Download/test/大学英语六级词汇表带音标.doc', '10', '大学英语六级词汇表带音标.doc', '2017-4-23', '297KB', '大学英语六级词汇表带音标', '六级');
INSERT INTO `download` VALUES ('31', 'docx', '/test/Download/test/六级核心词汇完整版.doc', '25', '六级核心词汇完整版.doc', '2017-5-4', '140KB', '六级核心词汇完整版', '六级');
INSERT INTO `download` VALUES ('32', 'docx', '/test/Download/test/四级核心词汇表.doc', '23', '四级核心词汇表.doc', '2014-5-9', '98KB', '四级核心词汇表', '四级');
INSERT INTO `download` VALUES ('37', 'mp3', '/test/Download/Mp3/123.txt', '12', '123.txt', '2014-7-21', '62KB', '123', null);

-- ----------------------------
-- Table structure for feedback
-- ----------------------------
DROP TABLE IF EXISTS `feedback`;
CREATE TABLE `feedback` (
  `feedback_id` int(11) NOT NULL AUTO_INCREMENT,
  `feedback_username` varchar(15) NOT NULL,
  `feedback_first` varchar(20) NOT NULL,
  `feedback_second` varchar(20) DEFAULT NULL,
  `feedback_title` varchar(50) NOT NULL,
  `feedback_desctiption` varchar(300) NOT NULL,
  `feedback_advice` varchar(300) NOT NULL,
  `feedback_stime` varchar(20) NOT NULL,
  `feedback_htime` varchar(20) DEFAULT NULL,
  `feedback_state` varchar(10) NOT NULL,
  `feedback_accept` varchar(2) NOT NULL,
  `feedback_other` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`feedback_id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of feedback
-- ----------------------------
INSERT INTO `feedback` VALUES ('1', 'wynne', '测试', '四级试题', '单词有错', '有错误', '希望改进', '2017-03-22  23:45:16', '2017-05-15 00:52:26', '已处理', '否', null);
INSERT INTO `feedback` VALUES ('2', 'wynne', '测试', '四级试题', '单词有错', '有错误', '希望改进', '2017-03-22  23:45:16', '2017-05-06 20:20:25', '正在处理', '是', null);
INSERT INTO `feedback` VALUES ('3', 'wynne', '测试', '四级试题', '单词有错', '有错误', '希望改进', '2017-03-22  23:45:16', '2017-05-06 20:20:25', '新建', '否', null);
INSERT INTO `feedback` VALUES ('4', 'wynne', '测试', '四级试题', '单词有错', '有错误', '希望改进', '2017-03-22  23:45:16', '2017-05-06 20:20:25', '正在处理', '是', null);
INSERT INTO `feedback` VALUES ('5', 'wynne', '测试', '四级试题', '单词有错', '有错误', '希望改进', '2017-03-22  23:45:16', '2017-05-06 20:20:25', '正在处理', '是', null);
INSERT INTO `feedback` VALUES ('6', 'wynne', '测试', '四级试题', '单词有错', '有错误', '希望改进', '2017-03-22  23:45:16', '2017-05-06 20:20:25', '新建', '是', null);

-- ----------------------------
-- Table structure for log
-- ----------------------------
DROP TABLE IF EXISTS `log`;
CREATE TABLE `log` (
  `UserId` int(8) NOT NULL,
  `UserName` varchar(15) NOT NULL,
  `UserOperate` varchar(10) NOT NULL,
  `Time` varchar(20) NOT NULL,
  KEY `UserId` (`UserId`),
  CONSTRAINT `UserId` FOREIGN KEY (`UserId`) REFERENCES `user` (`UserID`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of log
-- ----------------------------
INSERT INTO `log` VALUES ('20170037', 'wynne', '评论', '2017-04-19  16:48:56');
INSERT INTO `log` VALUES ('20170037', 'wynne', '增加默认词汇', '2017-04-19  17:37:59');
INSERT INTO `log` VALUES ('20170037', 'wynne', '评论', '2017-04-19  19:34:14');
INSERT INTO `log` VALUES ('20170037', 'wynne', '更新进度信息', '2017-04-19  19:39:36');
INSERT INTO `log` VALUES ('20170037', 'wynne', '试题测试', '2017-04-19  20:24:43');
INSERT INTO `log` VALUES ('20170037', 'wynne', '试题测试', '2017-04-19  20:31:12');
INSERT INTO `log` VALUES ('20170037', 'wynne', '查看答案', '2017-04-19  20:31:15');
INSERT INTO `log` VALUES ('20170037', 'wynne', '试题测试', '2017-04-19  20:34:35');
INSERT INTO `log` VALUES ('20170037', 'wynne', '试题测试', '2017-04-19  23:08:45');
INSERT INTO `log` VALUES ('20170037', 'wynne', '查看答案', '2017-04-19  23:11:11');
INSERT INTO `log` VALUES ('20170037', 'wynne', '增加默认词汇', '2017-04-20  09:11:05');
INSERT INTO `log` VALUES ('20170037', 'wynne', '增加默认词汇', '2017-04-20  09:11:10');
INSERT INTO `log` VALUES ('20170037', 'wynne', '增加默认词汇', '2017-04-20  09:11:14');
INSERT INTO `log` VALUES ('20170037', 'wynne', '评论', '2017-04-20  11:46:53');
INSERT INTO `log` VALUES ('20170037', 'wynne', '查看答案', '2017-04-20  11:48:16');

-- ----------------------------
-- Table structure for new
-- ----------------------------
DROP TABLE IF EXISTS `new`;
CREATE TABLE `new` (
  `NewId` int(11) NOT NULL AUTO_INCREMENT,
  `NewType` varchar(20) DEFAULT NULL,
  `NewTopic` varchar(100) DEFAULT NULL,
  `NewLead` varchar(255) DEFAULT NULL,
  `NewOther1` varchar(200) DEFAULT NULL,
  `NewOther` varchar(200) DEFAULT NULL,
  `NewmainId` int(11) DEFAULT NULL,
  PRIMARY KEY (`NewId`),
  KEY `NewmainId` (`NewmainId`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of new
-- ----------------------------
INSERT INTO `new` VALUES ('1', '1', '新版四六级听力考“懵”学生 考生普遍喊难', '2016年全国大学英语四、六级夏季考试于18日开考，北京共有27.4万大学生走进考场。北青报记者还从市考试院了解到，自今年6月起，英语四级听力时间缩短5分钟，减少至25分钟，考试在上午11时20分结束，而下午的六级考试时间不变。', '2016年6月英语四级真题及答案专题，在线交流对答案！', '参与吐槽：2016年听力试题调整后首次开考，难易度如何？一起来聊聊！', '1');
INSERT INTO `new` VALUES ('2', '1', '2016年6月英语四六级“没想到败在语文上”', '原标题：“考英语，没想到败在语文上” 大学英语四六级考试再“变脸”', '参与投票：2016年6月英语四级考试哪个题型最难？等你来吐槽！', '神翻译不断，四六级吐槽大会开会啦！　新版四六级听力考“懵” 考生普遍喊难', '2');
INSERT INTO `new` VALUES ('3', '1', '神翻译不断，四六级吐槽大会开会啦！', '2016年6月英语四级真题及答案专题，在线交流对答案！', '参与投票：2016年6月英语四级考试哪个题型最难？等你来吐槽！', null, '3');
INSERT INTO `new` VALUES ('4', '1', '2016年6月英语四级考试：听力秒杀雅思作文初中水平', '2016年6月英语四级考试：听力秒杀雅思作文初中水平', '2016年6月英语四级真题及答案专题，在线交流对答案！', null, '4');
INSERT INTO `new` VALUES ('5', '1', '全国大学英语四六级开考 900万考生挑战新题型', '原标题：全国大学英语四六级开考 900万考生挑战新题型', '', null, '5');
INSERT INTO `new` VALUES ('6', '1', '全国大学英语四六级6月18日开考 启用新题型采用新格式', null, null, null, '6');
INSERT INTO `new` VALUES ('7', '1', '报考口语注意了！2017年5月英语四六级口语报名今日开始', null, null, null, '7');
INSERT INTO `new` VALUES ('8', '2', '2017年5月河南财经政法大学英语四级口语报名通知', '以下2017年5月河南财经政法大学英语四级口语报名通知全部内容，要想英语四六级考试一次过,就来233网校!暖心大白丁老师陪你一起通过四级考试!<font color=\"red\"> 四级快速通关秘诀 </font>', null, null, '8');
INSERT INTO `new` VALUES ('9', '2', '2017年5月江西理工大学英语四级口语报名通知', '以下2017年5月江西理工大学英语四级口语报名通知全部内容，要想英语四六级考试一次过,就来233网校!暖心大白丁老师陪你一起通过四级考试!<font color=\"red\"> 四级快速通关秘诀</font>', null, null, '9');
INSERT INTO `new` VALUES ('10', '2', '2017年5月北京理工大学珠海学院大学英语四级口语报名通知', '以下2017年5月北京理工大学珠海学院大学英语四级口语报名通知全部内容，要想英语四六级考试一次过,就来233网校!暖心大白丁老师陪你一起通过四级考试!<font color=\"red\"> 四级快速通关秘诀</font>', null, null, '10');
INSERT INTO `new` VALUES ('11', '2', '英语四六级口语报名考生可以更改考点和考生日期吗', '2017年5月大学英语四六级口语报名将在4月25日开始，考生怎么更改考点、考生日期或场次，现在OELS英语四六级考试网就来为您解答。<font color=\"red\">四级快速通关秘诀 </font>', null, null, '11');
INSERT INTO `new` VALUES ('12', '2', '英语四六级口语报名考生是否可以选择场次', '2017年5月大学英语四六级口语报名将在4月25日开始，考生怎么更改考点、考生日期或场次，现在OELS英语四六级考试网就来为您解答。<font color=\"red\">四级快速通关秘诀 </font>', null, null, '12');
INSERT INTO `new` VALUES ('13', '2', '英语四六级口语报考缴费重复支付了怎么办', '2017年5月大学英语四六级口语报名将在4月25日开始，重复支付了怎么办？，现在233网校英语四六级考试网就来为您解答。', null, null, '13');
INSERT INTO `new` VALUES ('14', '2', '已经确认完成支付为什么网站无缴费到账确认', '2017年5月大学英语四六级口语报名将在4月25日开始，在报名过程中已经确认完成网上支付，为何报名网站无缴费到账确认，现在OELS英语四六级考试网就来为您解答。', null, null, '14');
INSERT INTO `new` VALUES ('15', '3', '2017年5月大学英语四级口语成绩什么时候公布', '2017年5月大学英语四级口语报名将在4月25日开始，英语四级口语成绩什么时候公布，现在233网校英语六级考试网就来为您解答。', null, null, '15');
INSERT INTO `new` VALUES ('16', '3', '2016年12月英语四级成绩查询中常见问题', '以下是2016年12月大学英语四级成绩2月22日可查由233网校为您提供。<font color=\"red\"> >>四级考试太难？只是你没有找对方法而已！</font>', null, null, '16');
INSERT INTO `new` VALUES ('17', '3', '大学英语四级通过以后成绩在网上保存多久', '以下是英语四级通过以后成绩在网上保存多久由OELS网校为您提供。 ', null, null, '17');
INSERT INTO `new` VALUES ('18', '3', '2017年6月大学英语四级考试翻译与作文评分标准', '作文和翻译都是主观题，所以考生们很难把握他的评分标准，现在233网校英语四级考试频道就来解答你的问题，要仔细看看下面的评分标准哦，不要丢分哦!', null, null, '18');
INSERT INTO `new` VALUES ('19', '3', '怎么用支付宝查询英语四六级成绩 这里看教程', '以下是怎么用支付宝查询英语四六级成绩 这里看教程由OELS为您提供。 <font color=\"red\">>>四级考试太难？只是你没有找对方法而已！</font>  <font color=\"blue\">手机app也能查分</font>', null, null, '19');
INSERT INTO `new` VALUES ('20', '4', '2017年上半年大学英语四级口语准考证打印时间', '2017年5月大学英语四六级口语报名将在4月25日开始，什么时候打印准考证号，现在233网校英语四六级考试网就来为您解答。 <font color=\"red\">四级快速通关秘诀 </font>  <font color=\"blue\">六级快速通关秘诀</font>', null, null, '20');
INSERT INTO `new` VALUES ('21', '4', '2016年英语四六级成绩查询准考证找回方法', '2016年英语四六级成绩查询必备准考证号和姓名。如果忘记准考证号怎么办呢？', null, null, '21');
INSERT INTO `new` VALUES ('22', '4', '2016年12月大学英语四级准考证找回有哪些方法', '以下2017年6月英语四级成绩查询准考证找回有哪些方法由OELS为您提供。', null, null, '22');
INSERT INTO `new` VALUES ('23', '4', '2016年12月大学英语四级准考证号怎么推算', '以下2017年6月英语四级成绩查询准考证找回有哪些方法由OELS为您提供。', null, null, '23');
INSERT INTO `new` VALUES ('24', '4', '2017年6月英语四级成绩查询准考证找回方法汇总', '以下是2017年6月英语四级成绩查询准考证找回方法汇总的全部内容由OELS为您提供。', null, null, '24');

-- ----------------------------
-- Table structure for p
-- ----------------------------
DROP TABLE IF EXISTS `p`;
CREATE TABLE `p` (
  `BodyId` int(11) NOT NULL,
  `p1` varchar(500) DEFAULT NULL,
  `p2` varchar(500) DEFAULT NULL,
  `p3` varchar(500) DEFAULT NULL,
  `p4` varchar(1000) DEFAULT NULL,
  `p5` varchar(500) DEFAULT NULL,
  `p6` varchar(500) DEFAULT NULL,
  `p7` varchar(1000) DEFAULT NULL,
  `p8` varchar(500) DEFAULT NULL,
  `p9` varchar(500) DEFAULT NULL,
  `p10` varchar(500) DEFAULT NULL,
  PRIMARY KEY (`BodyId`),
  CONSTRAINT `id` FOREIGN KEY (`BodyId`) REFERENCES `new` (`NewmainId`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of p
-- ----------------------------
INSERT INTO `p` VALUES ('1', '　今年三月，全国大学英语四、六级考试委员会发布消息称，为了适应新形势下社会对大学生英语听力能力需求的变化，进一步提高听力测试的难度，对四六级听力题型做出改革。四六级的听力取消短对话和短文听写，四级新增了短篇新闻，六级的听力篇章由3篇调整为2篇，新增了3篇讲座内容。', '北师大的大三考生小杜今年是“二刷”六级英语，上一次她已经顺利过了六级，此次尝鲜“新听力”后，她向记者坦言难度增加了不少：“虽然提前知道题型变化，但自己还是不太能适应，答题的时间也很紧，没有之前的从容了。尤其是听讲座内容，我不太能听懂，蒙了好几道。两年前我六级考了570，今年本来争取冲一冲600分，这次估计希望泡汤了。”北京邮电大学的康同学是首次报考大学英语四级，这次的听力题也成了他的“心头痛”：“考前，听力没咋准备，就看了下单词。考完一脸懵懂，很多题都不会。作文和翻译题都比较常规。”随访的几位四六级考生都表达了相似的感受。', '专家表示，如今大学校园里，英语四、六级“裸考”现象非常严重， 改革后的听力难度一定程度上会增强学生对此的重视程度，“如果一个考试在难度上不行， 有模式化套路可循的话，学生肯定不会重视。”', '　北青报记者还从市考试院了解到，自今年6月起，英语四级听力时间缩短5分钟，减少至25分钟，考试在上午11时20分结束，而下午的六级考试时间不变。', '往年英语四级真题及答案解析专题', '2017年6月英语四级成绩查询时间', '对学生普遍喊难的“新”四六级，新东方四六级主管卢根向北青报记者分析了成因，首先四级听力新增了短篇新闻，六级听力增加讲座内容篇章，新增的内容和新的素材来提升考试的难度，更倾向于语言运用能力测试，“我们注意到，考查知识面广了很多，此前考查的内容重点在校园生活，比如去图书馆、选课、点餐等等。而新增的短片新闻其考查的范围包罗万象，时政、科技、讲座等听力素材所涵盖的容量远远超过此前。”', '卢根表示，如今大学校园里，英语四、六级“裸考“现象非常严重，改革后的听力难度一定程度上会增强学生对此的重视程度，“如果一个考试在考试难度上不行，有模式化套路可循的话，学生肯定不会重视。”', '　北青报记者还注意到北京4月发布了北京高考改革方案—— “北京考试招生改革实施方案”，从2017年起，北京高考英语将采用计算机化的社会考试方式，英语听力从笔试分离，一年两考。业内专家对此表示，高考新政会继续弱化大学英语四六级的考试功能，因此，“国产”特色的大学英语四六级应试风格将会进一步改变。“相比以往，我们会越来越倾向于把四六级考试看作是一次能力考试。”', '今年是“作弊入刑”出台后举行的首次四六级考试，北青报记者从多所大学考点了解到，今年学校各相关部门指定了专人负责监控网络和微博上与考试相关的有害信息，如发现本校学生有在公共场所或网上贩卖所谓“试题、答案”等非法行为，各考点学校将上报有关部门，对所涉及的学生严肃处理。');
INSERT INTO `p` VALUES ('2', '2016年6月18日，本年度全国大学英语四、六级举行了首场考试结束。全国共有约900万人参加了此次考试。此前，全国大学英语四六级考试委员会发布消息称，自2016年6月考试起将对四、六级考试的听力试题作局部调整。不少学生考试后称，听力考试调整之后，四、六级难度更大了。', '据了解，这是四、六级考试在2013年对题目结构进行改革后，时隔三年的再次“变脸”：四级听力试题取消了短对话，取消了短文听写，新增3段短篇新闻；六级听力试题取消了短对话，取消了短文听写，听力篇章由原来的3篇调整为2篇，新增3篇讲座/讲话。新题型引起了考生们的热议，“整体感觉难度上升了”。部分学生反映，听新闻太难了，分数肯定高不了。', '　专家表示，如今大学校园里，英语四、六级“裸考”现象非常严重，改革后的听力难度一定程度上会增强学生对此的重视程度，“如果一个考试在难度上不行，有模式化套路可循的话，学生肯定不会重视。”', '让人颇感意外的是，考试后，学生在网上留言吐槽最多的除了听力，竟是翻译。许多网友称这回四、六级英语考试翻译题更像考语文、历史，“考英语，没想到败在语文上”。四级的三套试卷翻译题分别考《风筝》、《功夫》、《乌镇》，六级的三套试卷翻译题分别是《旗袍》、《创新》、《深圳》。看上去很类似，一个中国特色产品，一个文化意识类，再一个地区类，而且，让人哭笑不得的是，连吐槽的风格都是一样的。', '往年英语四级真题及答案解析专题', '2017年6月英语四级成绩查询时间', '　根据历年英语四级成绩查询时间，预测2016年6月英语四级成绩查询于8月中下旬开始，请广大考生密切关注233网校英语四级成绩查询栏目。', '加入OELS英语四级QQ群488641071233网校英语四级QQ群我们为您送达2017\r\n							年英语四级最新资讯。可扫描下方二维码下载233网校英语四级APP，掌上看真题对答案，\r\n							考后查分!', null, null);
INSERT INTO `p` VALUES ('3', '2016年上半年英语四六级考试结束！此时，还是要心疼要下考四六级的同学们，刷了一下微博，大批段子手倾巢而出，各种脑洞大开的神翻译，好像每年考四六级最大的乐趣就是考后吐槽了！', '自打我上大学以来啊，就独得四级恩宠，我劝四级一定要雨露均沾，可它非是不听呢，就挂我就挂我！\r\n\r\n　　多少同学和我一样去考场练了一套最新真题？\r\n\r\n　　国宝我翻译成Chinese baby，阅卷老师你会给我分的对不对？纵观全卷，蒙的比会的多！年底再约！\r\n\r\n　　“什么？什么做的最好？”\r\n\r\n　　“哦，条形码贴的挺好的！”', '虽然我每次都意气风发斗志昂扬的奔赴四级考场，然而并没有什么卵用，完全跟不上全都是套路的四级。\r\n\r\n　　四级的翻译题回归中国风，同学们的脑洞大开，最先现在脑子里全是国宝“chinese baby”，炸了炸了！', '我觉得考四级是一件特别崩溃的事情，但是自从刷完微博我TM要笑死了，把墨子翻译成Mozi，是不是只有我，快抱紧我！\r\n\r\n　　四级，一个女生翻译考的潍坊，结果她不知道潍坊怎么念，是念wei 还是 huai，她说从来没有想过英语会栽在语文上。', '往年英语四级真题及答案解析专题', '2017年6月英语四级成绩查询时间', '今年的翻译总体来说也挺简单，几个别词不会，比如风筝，然而这个词贯穿了全文。\r\n\r\n　　考的是风筝，憋了好久憋出来flies，我局的自己还挺鸡汁的，然而后来我查了翻译是flies是苍蝇的意思，所以整篇文章就成了“围挡是苍蝇之都，墨子制造的第一个苍蝇，第一次飞就坠落了，鲁班发明的风筝废了三天才落下。', '加入OELS英语四级QQ群488641071233网校英语四级QQ群我们为您送达2017\r\n							年英语四级最新资讯。可扫描下方二维码下载233网校英语四级APP，掌上看真题对答案，\r\n							考后查分!', '昨天晚上到底是谁的微博里推荐了kate眉粉！！我今天翻译段落风筝全写的kate[微笑。jpg]\r\n\r\n　　风筝写成了fly paper，希望阅卷老师看得懂！\r\n\r\n　　楼上的，我风筝写的是fengzheng，这个怎么破？\r\n\r\n　　风筝写成了skite，我准备了好几个范文，但几年的考题成功避开了所有热点话题。', '相信不会只有我不认识潍坊这两个字，拼音都无法造，全是套路啊！\r\n\r\n　　逃过了翻译，不少人又落入了作文和听力的坑里。\r\n\r\n　　作文写道一半才知道是写信外加第一人称，急忙改过来。。。。。。听力全程懵逼。\r\n\r\n　　看到每个单词的感觉都是，最熟悉的陌生人，我认识你，脑海里全都是你，但是一个都记不起来，学了那么多年英语，最后还是用了拼音写完作文。');
INSERT INTO `p` VALUES ('4', '　新浪教育讯：2016年上半年全国大学英语四、六级考试于今日开考【过级许愿墙，来留言吧！】。本次考试英语四级和英语六级启用新题型。预计全国共有超过900万大学生参加四六级考试。这也是“作弊入刑”法规出台后举行的首次四六级考试。', '又出来套路了：最严考试季、新题型。\r\n\r\n　　能不能有点创新？？答案是，有。\r\n\r\n　　早前，全国大学英语四、六级考试委员会发布消息称，为了适应新的形势下社会对大学生英语听力能力需求的变化，进一步提高听力测试的效度，自2016年6月考试起将对四、六级考试的听力试题作局部调整。具体如下：', '四级听力试题取消了短对话，取消了短文听写，新增3段短篇新闻。\r\n\r\n　　六级听力试题取消了短对话，取消了短文听 写，听力篇章由原来的3篇调整为2篇，新增3篇讲座/讲话。　', '听力作为中国学生一直以来的弱项，命题人大笔一挥本着从严从难的角度出发，题型设计基本类似于专四考试、雅思听力等，区别在于难度还是略小于对手。毕竟CET4还是为广大900万在校大学生而命题。', '往年英语四级真题及答案解析专题', '2017年6月英语四级成绩查询时间', '所以从得知这个消息的时候，业内人士就预测，本次四六级考试，英语听力一定是再来一次“哀鸿遍野”。果然不出所望，部分学生认为改革后的四级听力难度超过雅思（对这个结论我是抱有保留态度的），同时也有一些英语专业的同学抱着要去秒杀大家的心情去试了下本次听力：本届听力打击了英语专业学生的自尊心。', '“功夫（Kung Fu）是中国武术（material arts）的俗称。中国武术的起源可以追溯到自卫的需要、狩猎活动以及古代中国的军事训练。它是中国传统体育运动的一种，年轻人和老年人都练。它已逐渐演变成了中国文化的独特元素。作为中国的国宝，功夫有上百种不同的风格，是世界上练得最多的武术形式。有些风格模仿了动物的动作，还有一些则受到了中国哲学 思想、神话和传说的启发。”---摘自2016年6月大学英语四级翻译题之一《功夫》', '先不说翻译能否实现信雅达，单说单词是不是能写出来，凑到完整的句子里，对于多数裸考学生来说都是一个巨大的坎儿。\r\n\r\n　　正如一个抽中翻译《乌镇》的同学形容：“四级考试英语翻译第一句是乌镇是浙江的一个水镇，我写的是Wuzhen is a water zhen of zhejiang”', '写信！\r\n\r\n　　从小编的角度来说，如果正确的用英文写Email才是每个大学毕业生必备技能。但是多年以来，四六级作文都以图表、漫话等为主流方向，所以当考生作文提笔就来写到一半才发现要求是“ write a letter ”，其实大家是理解的——这些年，都是套路。\r\n\r\n　　但是很高兴看到这样的，贴地气的出题。虽然被业内人士理解为简单，但是从一个过来人的经验来看：大学英语四六级考试不就是检验一个大学生是否具备合格的英语能力，而并非选拔类考试。而且，你知道现在多少大学生连个中文的Email都不会发吗？');
INSERT INTO `p` VALUES ('5', '6月17日上午，北京地区四六级考卷由武警全程押运送至全市30余所高校的70余个考点。（图片来源：新京报）', '新浪教育讯　2016年上半年全国大学英语四、六级考试于6月18日开考。本次考试英语四级和英语六级启用新题型。预计全国共有超过900万大学生参加四六级考试。这也是“作弊入刑”法规出台后举行的首次四六级考试。', '早前，全国大学英语四、六级考试委员会发布消息称，为了适应新的形势下社会对大学生英语听力能力需求的变化，进一步提高听力测试的效度，自2016年6月考试起将对四、六级考试的听力试题作局部调整。四级听力试题取消了短对话，取消了短文听写，新增3段短篇新闻。六级听力试题取消了短对话，取消了短文听写，听力篇章由原来的3篇调整为2篇，新增3篇讲座/讲话。', '英语四级听力时间比之前减少5分钟，现为25分钟，英语六级听力时间不变，依旧为30分钟。另外，CET成绩报告单从本次考试开始调整为包含笔试及口语两部分成绩的成绩单，口语考试单报单考。', '往年英语四级真题及答案解析专题', '2017年6月英语四级成绩查询时间', '　另外按照《中华人民共和国刑法》（修正案九）相关条文，考试作弊要追究刑事责任，考生及相关人员不要抱有侥幸心理，坚决抵制考试作弊，自觉诚信考试。', null, null, null);
INSERT INTO `p` VALUES ('6', '6月17日，记者从省教育考试院获悉，2016年上半年全国大学英语四、六级考试和全国高等学校英语应用能力考试分别于6月18日和19日举行。', '据悉，我省英语四六级考试报考171387人，英语应用能力考试报考37208人。本次考试英语四级和英语六级启用新题型，英语应用能力考试试卷袋和答题卡采用新的格式。', '据悉，我省英语四六级考试报考171387人，英语应用能力考试报考37208人。本次考试英语四级和英语六级启用新题型，英语应用能力考试试卷袋和答题卡采用新的格式。', null, '往年英语四级真题及答案解析专题', '2017年6月英语四级成绩查询时间', null, null, null, null);
INSERT INTO `p` VALUES ('7', '　2017年5月英语四六级口语报名4月25日开始，考生须在4月25日-5月2日期间通过网上报名系统(含APP)自主完成报名，其中包括资格审核、场次选择、网上缴费等操作。考试费为50元/人，除下文另有规定外，成功缴费后不退费。英语四六级快速通关>>', '1.英语四六级口语报名资格：<br/>\r\n\r\n　　大学英语四级口试(CET-SET4): 仅接受完成2017年06月大学英语四级笔试报考的考生;<br/>\r\n\r\n　　大学英语六级口试(CET-SET6): 仅接受完成2017年06月大学英语六级笔试报考的考生<br/>', '\r\n　2. 英语四六级口语考试时间：<br/>\r\n\r\n　　5月20日：CET-SET4<br/>\r\n\r\n　　5月21日：CET-SET6<br/>', '3、英语四六级口语网上报名的步骤<br/>\r\n\r\n　　1.在报名网站上输入姓名、身份证<br/>\r\n\r\n　　2.系统自动审核考生是否已报考对应级别的笔试考试。<br/>\r\n\r\n　　3.考生选择考点、考试日期。<br/>\r\n\r\n　　4.考生缴纳50元考试费。<br/>\r\n\r\n　　5.缴费成功后，考生可于5月11日9时上网自行打印准考证<br/>', '往年英语四级真题及答案解析专题', '2017年6月英语四级成绩查询时间', '4. 英语四六级口语支付方式：<br/>\r\n\r\n　　在原有网银支付的基础上，新增支付宝支付。支付宝支付支持借记卡和支付宝余额，不支持信用卡。<br/>\r\n\r\n　　费用及缴纳方式<br/>\r\n\r\n　　1.报名费为50元/人(全国统一标准)<br/>\r\n\r\n　　2.缴纳方式为网上支付，支持的银行和银行卡如下：<br/>\r\n\r\n　　[1]中国工商银行：牡丹信用卡;牡丹储蓄卡;工行活期存折;<br/>\r\n\r\n　　[2] 中信银行：中信借记卡;中信信用卡;<br/>\r\n\r\n　　[3]招商银行：一卡通;信用卡<br/>\r\n\r\n　　[4]中国建设银行：龙卡准贷记卡;龙卡储蓄卡<br/>\r\n\r\n　　[5]中国农业银行：金穗准贷记卡;金穗储蓄卡<br/>\r\n\r\n　　[6]平安银行：信用卡/一账通卡信用账户; 借记卡/活期存折/一账通卡存款账户<br/>\r\n\r\n　　[7]兴业银行：兴业储蓄卡;兴业信用卡<br/>\r\n\r\n　　[8]华夏银行：华夏储蓄卡<br/>\r\n\r\n　　[9]交通银行：太平洋信用卡;太平洋借记卡<br/>\r\n\r\n　　[10]中国邮政储蓄银行：绿卡;信用卡', null, null, null);
INSERT INTO `p` VALUES ('8', '河南财经政法大学教务处公布《关于2017年上半年大学英语四六级口语报名工作的通知》，2017年6月河南财经政法大学英语六级口语报名时间：4月25日9 时至5月2日17时。', '2017年5月全国大学英语四、六级口语考试将于5月20日至21日进行，考生报名时间为4月25日至5月2日。', '<strong>一、考试时间</strong><br/>\r\n5月20日开考CET-SET4，5月21日开考CET-SET6，每天安排8个场次，考生可按自己选定的场次进行考试，具体场次安排详见附件。<br/>', '<strong>二、报考资格</strong><br/>\r\n\r\n　　1、大学英语四级口试(CET-SET4):仅接受完成2017年6月大学英语四级笔试报考的考生;</br>\r\n\r\n　　2、大学英语六级口试(CET-SET6):仅接受完成2017年6月大学英语六级笔试报考的考生。</br>', '往年英语四级真题及答案解析专题', '2017年6月英语四级成绩查询时间', '<strong>三、报名安排</strong><br/>\r\n\r\n　　1、河南省考点名称及联系方式<br/>\r\n\r\n　　我省确定河南大学、郑州工商学院与郑州大学西亚斯国际学院为首批全国大学英语四、六级考试口语考试试点考点，考生报考资格由网站系统自动审核。<br/>\r\n\r\n\r\n\r\n　　2、CET-SET报名采用全国集中网上报名，上半年报名时间安排二个阶段：<br/>\r\n\r\n　　第一阶段:4月25日9时至26日17时，接受本校已报对应级别CET笔试科目的考生优先报名;<br/>\r\n\r\n　　第二阶段:4月27日9时至5月2日17时，若有剩余机位可接受其它CET考点学校已报对应级别CET笔试科目的考生网上报名。考生自行登录www.cet.edu.cn网站(全国大学英语四、六级考试网站)，点击〈CET口试报名〉栏目进行报名，完成信息填报、选择考点、网上缴费等报名手续。考生也可以下载、安装“CET”手机APP，完成报名及缴费。<br/>\r\n\r\n　　目前，我校不是四六级口语考试考点，请学生注意报名时间，选择有空余机位试点考点进行报名。<br/>\r\n\r\n　　3、5月11日考生上网自行完成准考证打印<br/>\r\n\r\n　　成功完成报名的考生登录全国大学英语四、六级考试网站(www.cet.edu.cn)<br/>或手机APP自行打印准考证;考生的考试具体时间及地点均以准考证上所示为准，不得更改。<br/>', '<strong>四、考试安排</strong><br/>\r\n\r\n　　1、英语四级口语考试(CET-SET4)考试时间为5月20日(F171次)，英语六级口语考试(CET-SET6)考试时间为5月21日(S172次)，具体场次安排如下：	<br/>\r\n2、考试内容及时间分配<br/><br/>', '<strong>五、考后相关工作</strong><br/>\r\n\r\n　　1、本次CET-SET成绩将与6月CET成绩同期发布，考生可登陆教育部考试中心网站查询，成绩报告单在成绩发布后陆续下发。<br/>\r\n\r\n　　2、2017年6月CET成绩报告单将包含CET成绩和CET-SET成绩，按原有模式，由教育部考试中心统一制作下发至省级承办机构，再由省级承办机构下发至考点。<br/>\r\n\r\n　　每场次30分钟，包含登录入场、测试、考试、收卷、退场等部分，其中测试及考试具体时间安排如下：<br/>', null);
INSERT INTO `p` VALUES ('9', '江西理工大学教务处公布《关于2017年上半年大学英语四六级口语报名工作的通知》，2017年6月江西理工大学英语四级口语报名时间：4月25日9 时至5月2日17时。', '全国大学英语四、六级口语(CET-SET)考试通知已由《关于开展2017年上半年全国大学英语四、六级考试笔试及口语考试报名的通知》(教务通知〔2017〕18号)下发，为优先我校学生报考，我校学生可以在正式开始前2天即4月23日起开始报名;4月25日起，对本省内所有考生开放报名。', '<strong>一、考生报名有2种方式</strong><br/>\r\n\r\n　　方式1：考生报名网址地址为www.cet.edu.cn，选择“CET口语网上报名”栏目进入报名系统。<br/>\r\n\r\n　　方式2：考生通过手机app 【CETapp】进行报名。下载地址为www.cet.edu.cn，选择“CET App 下载”栏目。<br/>\r\n\r\n　　考生报名时须提供身份证号和姓名进行资格验证，符合资格者可进行考点选择及缴费(每生50元/人次)，报名完成后，考生须在24小时内完成缴费，否则所选机位将被系统自动释放。(注意：凡参加本次笔试报名成功的考生均可参加本次相应级别口语考试报名，不再有笔试成绩分数限制)<br/>', '<strong>二、CET-SET报名要求及考试时间、考试形式</strong><br/>\r\n\r\n　　1.报名时间：4月23日9：00—5月2日17:00。<br/>\r\n\r\n　　2.网上打印准考证时间：成功完成报名的考生在2017年5月11日登录全国大学英语四、六级考试网站(http://www.cet.edu.cn/)或手机APP自行打印准考证;考生的考试具体时间和地点均以准考证上所示为准，不得更改。(注：CET-SET有一定的难度，建议同学们报名时多考虑)<br/>\r\n\r\n　　3.考试时间：5月20日：英语四级口语考试(30分钟机考);<br/>\r\n\r\n　　5月21日：英语六级口语考试(30分钟机考)。<br/>', '往年英语四级真题及答案解析专题', '2017年6月英语四级成绩查询时间', '<strong>更多</strong>: 英语四级报名 英语四级口语报名<br/>\r\n温馨提示：因考试政策、内容不断变化与调整，233网校网站提供的以上信息仅供参考，如有异议，请考生以权威部门公布的内容为准！<br/>', null, null, null);
INSERT INTO `p` VALUES ('10', '北京理工大学珠海学院教务处公布《关于2017年上半年大学英语四六级口语报名工作的通知》，2017年6月北京理工大学珠海学院英语四级口语报名时间：4月25日9 时至5月2日17时。', '各学院、各学生班级：<br/>\r\n\r\n　　根据全国大学英语四、六级考试委员会工作安排及文件通知，2017年上半年全国大学英语四、六级口语考试(以下简称“CET-SET”)将于5月20日(四级口语)、21日(六级口语)举行，本次口试全部采用机考，分四级(CET-SET4)和六级(CET-SET6)两个级别。现将报名工作通知如下：<br/>', '<strong>一、报名时间：</strong><br/>\r\n\r\n　　4月25日9时至5月2日17时。<br/>', '<strong>二、报名资格：</strong><br/>\r\n\r\n　　四级口语考试：仅接受完成2017年6月大学英语四级笔试报考的考生;<br/>\r\n\r\n　　六级口语考试：仅接受完成2017年6月大学英语六级笔试报考的考生。<br/>', '往年英语四级真题及答案解析专题', '2017年6月英语四级成绩查询时间', '<strong>三、报名流程</strong><br/>\r\n\r\n　　我省现有吉林大学、东北师范大学、吉林大学莱姆顿学院、长春建筑学院、北华大学，东北电力大学、吉林化工学院、延边大学等八所院校为口语考试考点，我校学生可选择以上任意一所考点报名考试。\r\n\r\n\r\n<strong>考生报名有2种方式</strong><br/>\r\n\r\n\r\n　　方式1：考生报名网址地址为www.cet.edu.cn，选择“CET口语网上报名”栏目进入报名系统。><br/>\r\n\r\n　　方式2：考生通过手机app 【CETapp】进行报名。下载地址为www.cet.edu.cn，选择“CET App 下载”栏目。><br/>\r\n\r\n　　考生报名时须提供身份证号和姓名进行资格验证，符合资格者可进行考点选择及缴费，报名完成后，考生须在24小时内完成缴费，否则所选机位将被系统自动释放。><br/>', '<strong>四、收费标准</strong><br/>\r\n\r\n　　考试费为每名考生50元，通过网银支付考试费。<br/>', '<strong>五、考试成绩</strong><br/>\r\n\r\n　　1.成绩发布：本次考试成绩于2017年9月底与笔试成绩同时发布，具体发布的时间和方式以全国大学英语四、六级考试网站(www.cet.edu.cn)发布的公告为准。考试成绩由CET考委办在 www.cet.edu.cn 网站上发布，考生可自行上网查询。<br/>\r\n\r\n　　2.成绩报告单将同时报告本次口试成绩及6月份笔试成绩，如考生仅参加笔试，成绩报告单照常发放，口试成绩栏部分显示为空。<br/>', '<strong>更多: </strong>英语四级口语 英语四级口语报名<br/>\r\n温馨提示：因考试政策、内容不断变化与调整，233网校网站提供的以上信息仅供参考，如有异议，请考生以权威部门公布的内容为准！<br/>');
INSERT INTO `p` VALUES ('11', '英语四六级口语报名考生可以更改考点和考生日期吗', '<strong>考生怎么更改考点、考生日期或场次</strong><br/>\r\n\r\n　　1.考生是否已经支付成功。<br/>\r\n\r\n　　2.若已支付成功，则无法更改。<br/>\r\n\r\n　　3.若未支付，考生可自行登陆网站或者APP更改。<br/>', '<strong>一、报名时间：</strong><br/>\r\n\r\n　　4月25日9时至5月2日17时。<br/>', '<strong>二、报名资格：</strong><br/>\r\n\r\n　　四级口语考试：仅接受完成2017年6月大学英语四级笔试报考的考生;<br/>\r\n\r\n　　六级口语考试：仅接受完成2017年6月大学英语六级笔试报考的考生。<br/>', '往年英语四级真题及答案解析专题', '2017年6月英语四级成绩查询时间', null, null, null, '<strong>更多: </strong>英语四级口语 英语四级口语报名<br/>\r\n温馨提示：因考试政策、内容不断变化与调整，233网校网站提供的以上信息仅供参考，如有异议，请考生以权威部门公布的内容为准！<br/>');
INSERT INTO `p` VALUES ('12', '<strong>考生是否可以选择场次 </strong><br/>\r\n\r\n　　考生在报名时，可选择考点，场次是由系统自动分配，无法进行选择。<br/>', null, null, null, '往年英语四级真题及答案解析专题', '2017年6月英语四级成绩查询时间', null, null, null, '<strong>更多: </strong>英语四级口语 英语四级口语报名<br/>\r\n温馨提示：因考试政策、内容不断变化与调整，233网校网站提供的以上信息仅供参考，如有异议，请考生以权威部门公布的内容为准！<br/>');
INSERT INTO `p` VALUES ('13', '　考生在报名时，可选择考点，场次是由系统自动分配，无法进行选择。<br/>\r\n\r\n<strong>重复支付了怎么办？ </strong><br/>\r\n\r\n　　1.登记考生的准考证号、姓名等信息。<br/>\r\n\r\n　　2. 告之退费时间：2017年05月中旬在报名工作结束后统一处理。<br/>\r\n\r\n　　3.退费方式：返回考生交费所用银行卡账户。退款到账通常需要1至7 天，特殊情况有可能出现半个月左右时间。因此，考生可在退款工作完毕后一个月之内查询到账情况，发现问题请与首信易支付联系(考生与我中心联系)。<br/>', null, null, null, '往年英语四级真题及答案解析专题', '2017年6月英语四级成绩查询时间', null, null, null, '<strong>更多: </strong>英语四级口语 英语四级口语报名<br/>\r\n温馨提示：因考试政策、内容不断变化与调整，233网校网站提供的以上信息仅供参考，如有异议，请考生以权威部门公布的内容为准！<br/>');
INSERT INTO `p` VALUES ('14', '<strong>已经确认完成网上支付，为何报名网站无缴费到账确认? </strong><br/>\r\n\r\n\r\n　　通常情况下，报名网站会即时收到您的付款。在极少数情况下，银行系统会延迟与报名网站的付款确认，最晚的缴费到账确认时间为网上成功支付后24小时，请于24小时以后重新登陆报名网站确认您的支付状态。如仍显示未支付，请致电呼叫中心。无论支付是否成功，考生已报考的机位都将保留24小时。', null, null, null, '往年英语四级真题及答案解析专题', '2017年6月英语四级成绩查询时间', null, null, null, '<strong>更多: </strong>英语四级口语 英语四级口语报名<br/>\r\n温馨提示：因考试政策、内容不断变化与调整，233网校网站提供的以上信息仅供参考，如有异议，请考生以权威部门公布的内容为准！<br/>');
INSERT INTO `p` VALUES ('15', '<strong>2017年5月英语四级口语成绩什么时候公布 </strong><br/>\r\n\r\n　　本次考试成绩与2017年06月CET成绩同时发布，预计在2017年8月底公布，具体发布的时间和方式以全国大学英语四、六级考试网站(www.cet.edu.cn)发布的公告为准。<br>', '<strong>成绩报告单名称及等级 </strong><br/>', '1.成绩报告单名称为《全国大学英语四、六级口语考试成绩报告单》，成绩报告单分为 A、B、C、D四个等级。成绩为D 等及以上的考生可以领取成绩报告单。', '　选择成绩报告单领取方式的选择', '往年英语四级真题及答案解析专题', '2017年6月英语四级成绩查询时间', '本次考试取消成绩单邮寄方式，笔试成绩和口试成绩印制在一张成绩单上，考生到笔试考点领取成绩报告单。', null, null, '<strong>更多: </strong>英语四级口语 英语四级口语报名<br/>\r\n温馨提示：因考试政策、内容不断变化与调整，233网校网站提供的以上信息仅供参考，如有异议，请考生以权威部门公布的内容为准！<br/>');
INSERT INTO `p` VALUES ('16', '英语四级成绩查询的时候我们常常会碰见很多的问题，下面这些问题你可能会碰见哦，不要慌张，看看下面的解决方法，你就知道啦！提前收藏本页面，遇见查分问题不慌张！', '<strong>2016年12月英语四级成绩查询中常见问题：</strong><br/>\r\n\r\n　　2016年12月大学英语四级成绩查询查出零分怎么办<br/>\r\n\r\n　　可以用身份证查英语四级成绩吗<br/>\r\n\r\n　　英语四级成绩查询显示无法找到对应分数<br/>\r\n\r\n　　2016年12月四级成绩查询结果不一致怎么办<br/>\r\n\r\n　　2016年12月大学英语四级成绩单什么时候发放<br/>\r\n\r\n　　2016年12月英语四级考试成绩应该如何申请核查<br/>', '<font color=\"red\">没有准考证号，在233网校提交姓名和院校信息，小编帮您查！马上提交 </font>', '英语四级成绩查询“无准考证”查分专区入口开通，提交你的真实姓名和院校信息，英语四级查分入口开通后，再次输入姓名和院校即可！', '往年英语四级真题及答案解析专题', '2017年6月英语四级成绩查询时间', '成绩单能换钱哦！快来OELS网校晒分啦！晒分还有奖学金领！还不快来晒分', null, null, '<strong>更多: </strong>英语四级口语 英语四级口语报名<br/>\r\n温馨提示：因考试政策、内容不断变化与调整，233网校网站提供的以上信息仅供参考，如有异议，请考生以权威部门公布的内容为准！<br/>');
INSERT INTO `p` VALUES ('17', '英语四级通过以后成绩在网上保存多久由233网校英语四级考试频道为您解答。', '<strong>小编解答：</strong>\r\n英语四级通过以后成绩在网上保存多久？', '　1、输入准考证号从网上查询有半年查询期', '2、网络上查询成绩，只是教育局提供的一个平台!它每年都会开放!但是只是针对当次考试，有效期至下一次该科考试的查询!一方面，学校会有档案里保存成绩，另外，教育局内部资料会有成绩，只是已经存档!调用会很麻烦啊!', '往年英语四级真题及答案解析专题', '2017年6月英语四级成绩查询时间', '<font color=\"red\">　没有准考证号，在233网校提交姓名和院校信息，小编帮您查！马上提交 \r\n\r\n</font>', null, null, '<strong>更多: </strong>英语四级口语 英语四级口语报名<br/>\r\n温馨提示：因考试政策、内容不断变化与调整，233网校网站提供的以上信息仅供参考，如有异议，请考生以权威部门公布的内容为准！<br/>');
INSERT INTO `p` VALUES ('18', '<strong>评分标准</strong><br/>\r\n\r\n　<strong>　1) 作文评分标准</strong><br/>\r\n\r\n　　本题满分为15分，成绩分为六个档次：13-15分、10-12分、7-9分、4-6分、1-3分和0分。各档次的评分标准见下表：', '<strong>2) 翻译评分标准</strong><br/>\r\n\r\n　　本题满分为15分，成绩分为六个档次：13-15分、10-12分、7-9分、4-6分、1-3分和0分。各档次的评分标准见下表：', '', null, '往年英语四级真题及答案解析专题', '2017年6月英语四级成绩查询时间', null, null, null, '<strong>更多: </strong>英语四级口语 英语四级口语报名<br/>\r\n温馨提示：因考试政策、内容不断变化与调整，233网校网站提供的以上信息仅供参考，如有异议，请考生以权威部门公布的内容为准！<br/>');
INSERT INTO `p` VALUES ('19', '2016年下半年英语四六级考试的成绩已经公布了，你过了吗?', '其实支付宝早就为我们推出了四六级查成绩的功能，只不过隐藏的比较深，四步就可以搞定。', '一、打开支付宝---点击“全部”', '二、找到“教育公益”这一栏，点击“校园生活”', '往年英语四级真题及答案解析专题', '2017年6月英语四级成绩查询时间', '三、打开就能看到“考分查询”了', '四、输入“姓名”和“准考证号”即可查询', null, '<strong>更多: </strong>英语四级口语 英语四级口语报名<br/>\r\n温馨提示：因考试政策、内容不断变化与调整，233网校网站提供的以上信息仅供参考，如有异议，请考生以权威部门公布的内容为准！<br/>');
INSERT INTO `p` VALUES ('20', '<strong>什么时候打印准考证号</strong>', '\r\n确认缴费成功后，5月11日开始考生可以自行上网打印准考证。<br/>\r\n\r\n　　考生进行打印准考证操作时发现学校名称、照片有误<br/>\r\n\r\n　　请联系报名网站客服电话：010-62987880<br/>', '\r\n<strong>　点击查看：</strong>', '<font color=\"blue\">2017年5月英语四六级口语报名常见问题</font><br/>\r\n\r\n　　<font color=\"blue\">2017年5月英语四六级口语报考指南大全</font>', '往年英语四级真题及答案解析专题', '2017年6月英语四级成绩查询时间', '<strong>更多:</strong> 英语四级准考证打印 英语四级口语准考证打印', '温馨提示：因考试政策、内容不断变化与调整，233网校网站提供的以上信息仅供参考，如有异议，请考生以权威部门公布的内容为准！', null, '<strong>更多: </strong>英语四级口语 英语四级口语报名<br/>\r\n温馨提示：因考试政策、内容不断变化与调整，233网校网站提供的以上信息仅供参考，如有异议，请考生以权威部门公布的内容为准！<br/>');
INSERT INTO `p` VALUES ('21', '<strong>2016年英语四六级成绩查询必备准考证号和姓名，缺一不可。</strong>（请仔细核对准考证号，四六级考试一共15位。英语四六级查询“准考证号”和“姓名”必须完全正确，姓名超过两个字的考生仅需在“姓名”栏输入姓名前两字即可。）', '<strong>2016年英语四六级成绩查询：找回准考证号方法功能使用说明</strong><br/>\r\n\r\n　　为方便广大考生查询分数，99宿舍提供准考证号找回服务。准考证找回功能仅供参考，准确准考证号信息，请联系报考学校查询。<br/>\r\n\r\n　　1、安装99宿舍客服系统软件：<font color=\"blue\">立即下载 四六级晒分赢199元</font><br/>\r\n\r\n　　2、打开99宿舍客服软件，在主界面单击“找回准考证号”按钮。<br/>\r\n\r\n　　3、输入姓名全名，选择省市、学校、考试类型，选填考场号。单击“提交”按钮查询，如下示例<br/>', '姓名中包含特殊字符如“艾克拜尔·麦麦提”，请分别尝试“·”和“.”（不包含引号）。<br/>\r\n\r\n　　考场号为选填项，位于准考证号的第11-13位，为了确保能够精确查询，99宿舍建议您询问同考场同学获取考场号。', '4、安装或启动时提示“系统中存在不兼容软件，无法继续”检测到不兼容的程序，请换其它计算机再尝试。', '往年英语四级真题及答案解析专题', '2017年6月英语四级成绩查询时间', '5、提示“无法找到对应的准考证号”<br/>\r\n\r\n　　系统无法确定您所提交的内容指向唯一准考证号，建议您输入确定的考场号再进行查询；<br/>\r\n\r\n　　如果您提交了考场号仍然出现此提示，请检查您所选择的学校是否正确，例如澳门科技大学哲学系，您需要选择哲学系。<br/>\r\n\r\n　　以上功能都已尝试仍然无法找到，99宿舍的小伙伴们也无能为力了！<br/>', '\r\n　6、注意：本功能不支持找回口语准考证号。<br/>\r\n\r\n　　填写完毕后，点击提交！系统提示准考证号，准考证号找回。选择查分入口，即可查到成绩！', '英语四级成绩查询“无准考证”查分专区入口开通，提交你的真实姓名和院校信息，英语四级查分入口开通后，再次输入姓名和院校即可！', '<strong>更多: </strong>英语四级口语 英语四级口语报名<br/>\r\n温馨提示：因考试政策、内容不断变化与调整，233网校网站提供的以上信息仅供参考，如有异议，请考生以权威部门公布的内容为准！<br/>');
INSERT INTO `p` VALUES ('22', '很多考生不知道英语四级成绩查询是需要准考证号码，所以在考完英语四级后，就把准考证丢了导致自己查不到成绩，现在我们就来看看在成绩查询在即我们应该怎么去找回准考证号吧！', '<font color=\"red\">无准考证英语四级成绩查询入口上线！！！></font>开通英语四级成绩查询“无准考证”查分专区入口开通，现在提交你的真实姓名和院校信息，英语四级查分入口，再次输入姓名和院校即可！详情查看无准考证成绩查询攻略', '更多: 英语四级准考证 英语四级准考证找回', null, '往年英语四级真题及答案解析专题', '2017年6月英语四级成绩查询时间', null, null, null, null);
INSERT INTO `p` VALUES ('23', '很多考生不知道英语四级成绩查询是需要准考证号码，所以在考完英语四级后，就把准考证丢了导致自己查不到成绩，现在我们就来看看在成绩查询在即我们应该怎么用推算法去找回准考证号吧！', '<strong>英语四级准考证号码怎么推算</strong>', '英语四级准考证号一共由15位组成：', '1、前5位是学校代码<br/>\r\n\r\n　　2、第6位是学校的校区代码　大学英语四六级考试院校考点代码大全(前6位)<br/>\r\n\r\n　　3、第7-8位是考试年份，如2014年考试此处应为14，14代表2014年。<br/>\r\n\r\n　　4、第9位是该年中第几次四六级考试，上半年是第1次，下半年是第2次，那么2014年12月就是2。<br/>\r\n\r\n　　5、第10位是四六级类别，六级是1，六级是2。<br/>\r\n\r\n　　6、第11-13位是考场号，比如你在100考场的，那就是100，14考场的就是014。<br/>\r\n\r\n　　7、第14-15位是座位号。<br/>', '往年英语四级真题及答案解析专题', '2017年6月英语四级成绩查询时间', '<font color=\"red\"><strong>无准考证英语四级成绩查询入口上线！！</strong>！<font>', '开通英语四级成绩查询“无准考证”查分专区入口开通，现在提交你的真实姓名和院校信息，英语四级查分入口，再次输入姓名和院校即可！详情查看无准考证成绩查询攻略', null, null);
INSERT INTO `p` VALUES ('24', '2017年6月英语四级成绩查询入口预计2月24日开通，每次英语四级成绩查询之后，考生就开始焦虑，原来查分需要准考证号码，那么准考证号码遗失了我们应该怎么找回呢？现在我们就来看看都有哪几种方法吧！', '2017年6月英语四级成绩查询准考证找回方法一：通过下载99宿舍客服软件找回', '2017年6月英语四级成绩查询准考证找回方法二：学校代码推算', '无准考证英语四级成绩查询入口上线！！！', '往年英语四级真题及答案解析专题', '2017年6月英语四级成绩查询时间', '开通英语四级成绩查询“无准考证”查分专区入口开通，现在提交你的真实姓名和院校信息，英语四级查分入口，再次输入姓名和院校即可！详情查看无准考证成绩查询攻略【无准考证四级成绩查询攻略】', null, null, null);

-- ----------------------------
-- Table structure for process
-- ----------------------------
DROP TABLE IF EXISTS `process`;
CREATE TABLE `process` (
  `process_id` int(11) NOT NULL AUTO_INCREMENT,
  `p_user_id` int(8) NOT NULL,
  `p_cet4_id` char(9) DEFAULT NULL,
  `p_cet6_id` char(9) DEFAULT NULL,
  PRIMARY KEY (`process_id`),
  KEY `pro_username` (`p_user_id`),
  KEY `procet4id` (`p_cet4_id`),
  KEY `procet6id` (`p_cet6_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of process
-- ----------------------------
INSERT INTO `process` VALUES ('1', '20170001', 'cet4_0001', 'cet6_0005');
INSERT INTO `process` VALUES ('2', '20170014', 'cet4_0007', 'cet6_0015');
INSERT INTO `process` VALUES ('3', '20170037', 'cet4_0005', 'cet6_0007');

-- ----------------------------
-- Table structure for sentence
-- ----------------------------
DROP TABLE IF EXISTS `sentence`;
CREATE TABLE `sentence` (
  `sentence_Id` int(11) NOT NULL AUTO_INCREMENT,
  `sentence_Chinese` varchar(225) NOT NULL,
  `sentence_English` varchar(255) NOT NULL,
  `sentence_Scan` int(11) DEFAULT NULL,
  `sentence_Upvote` int(11) DEFAULT NULL,
  `sentence_Time` varchar(20) DEFAULT NULL,
  `sentence_Type` varchar(10) DEFAULT NULL,
  `sentence_ImagePath` varchar(100) DEFAULT NULL,
  `sentence_Extend1` varchar(255) DEFAULT NULL,
  `sentence_Extend2` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`sentence_Id`)
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sentence
-- ----------------------------
INSERT INTO `sentence` VALUES ('1', '活要活得美好，梦要梦得热烈，爱要爱得完整。', 'Live beautifully, dream passionately, love completely.', '123', '45', '2017-5-10 21:26', null, null, null, null);
INSERT INTO `sentence` VALUES ('2', '　世界上对勇气的最大考验是忍受失败而不丧失信心。', 'The greatest test of courage on earth is to bear defeat without losing heart.', '213', '236', '2017-5-10 21:26', null, null, null, null);
INSERT INTO `sentence` VALUES ('3', '人最好的朋友是自己的十个手指。', 'A man\'s best friends are his ten fingers.', '34', '44', '2017-5-8 20:45', null, null, null, null);
INSERT INTO `sentence` VALUES ('4', '只有在日常生活中尽责的人才会在重大时刻尽责。', 'Only they who fulfill their duties in everyday matters will fulfill them on great occasions.', '213', '58', '2017-5-10 21:26', null, null, null, null);
INSERT INTO `sentence` VALUES ('5', '　做许多事情的捷径就是一次只做一件一件事。', 'The shortest way to do many things is to only one thing at a time.', '56', '71', '2017-5-10 21:26', null, null, null, null);
INSERT INTO `sentence` VALUES ('6', '　天生我才必有用。', 'All things in their being are good for something.', '231', '905', '2017-5-10 21:26', null, null, null, null);
INSERT INTO `sentence` VALUES ('7', '困难坎坷是人们的生活教科书。', 'Difficult circumstances serve as a textbook of life for people.', '677', '458', '2017-5-10 21:26', null, null, null, null);
INSERT INTO `sentence` VALUES ('8', '失败乃成功之母。', 'Failure is the mother of success. - Thomas Paine', '123', '345', '2017-5-10 21:26', null, null, null, null);
INSERT INTO `sentence` VALUES ('9', '苦难是人生最伟大的老师。', 'Suffering is the most powerful teacher of life.', '78', '675', '2017-5-10 21:26', null, null, null, null);
INSERT INTO `sentence` VALUES ('10', '生活没有目标，犹如航海没有罗盘。-- 罗斯金', 'Living without an aim is like sailing without a compass. -- John Ruskin', '123', '234', '2017-5-10 21:26', null, null, null, null);
INSERT INTO `sentence` VALUES ('11', '艰难困苦出能人。', 'Bad times make a good man.', '45', '454', '2017-5-10 21:26', null, null, null, null);
INSERT INTO `sentence` VALUES ('12', '你的腰不弯，别人就不能骑在你的背上。', 'A man can\'t ride your back unless it is bent.', '676', '452', '2017-5-10 21:26', null, null, null, null);
INSERT INTO `sentence` VALUES ('13', '行动胜于言语！', 'Action speak louder than words.', '234', '463', '2017-5-10 21:26', null, null, null, null);
INSERT INTO `sentence` VALUES ('14', '知识改变命运，英语成就未来。', 'Knowlegde can change your fate and English can accomplish your future.', '342', '657', '2017-5-10 21:26', null, null, null, null);
INSERT INTO `sentence` VALUES ('15', '人不可貌相，海不可斗量。', 'Judge not from appearances.', '3434', '768', '2017-5-10 21:26', null, null, null, null);
INSERT INTO `sentence` VALUES ('16', '知识就是力量。', 'Knowledge is power.', '23432', '874', '2017-5-10 21:26', null, null, null, null);
INSERT INTO `sentence` VALUES ('17', '不学无术。', 'Learn not and know not.', '2343', '876', '2017-5-10 21:26', null, null, null, null);
INSERT INTO `sentence` VALUES ('18', '先学走，再学跑。', 'Learn to walk before you run.', '234', '905', '2017-5-10 21:26', null, null, null, null);
INSERT INTO `sentence` VALUES ('19', '一次只做一件事，做到最好！', '先学走，再学跑。', '678', '888', '2017-5-10 21:26', null, null, null, null);
INSERT INTO `sentence` VALUES ('20', '勇往直前， 决不放弃！', 'Keep on going never give up.', '2546', '982', '2017-5-10 21:26', null, null, null, null);
INSERT INTO `sentence` VALUES ('21', '1231', '12312', '0', '0', '2017-05-19 13:44:25', null, null, null, null);
INSERT INTO `sentence` VALUES ('22', '123', '123', '0', '0', '2017-05-19 13:44:42', null, null, null, null);
INSERT INTO `sentence` VALUES ('23', '1231231', '12312312', '0', '0', '2017-05-19 13:45:02', null, null, null, null);

-- ----------------------------
-- Table structure for unknown_word
-- ----------------------------
DROP TABLE IF EXISTS `unknown_word`;
CREATE TABLE `unknown_word` (
  `unknown_word_id` int(11) NOT NULL AUTO_INCREMENT,
  `un_cet_id` char(9) NOT NULL,
  `un_cet_vocabulary` varchar(45) NOT NULL,
  `un_cet_pronunciation` varchar(40) NOT NULL,
  `un_cet_meaning` varchar(50) NOT NULL,
  `username` varchar(15) NOT NULL,
  PRIMARY KEY (`unknown_word_id`),
  KEY `unknown_word_ibfk_2` (`username`),
  KEY `unknown_word_ibfk_1` (`un_cet_id`),
  CONSTRAINT `unknown_word_ibfk_1` FOREIGN KEY (`un_cet_id`) REFERENCES `cet4` (`cet4_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `unknown_word_ibfk_2` FOREIGN KEY (`username`) REFERENCES `user` (`UserName`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=103 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of unknown_word
-- ----------------------------
INSERT INTO `unknown_word` VALUES ('93', 'cet4_0008', '　　abuse', '/ ə’bju:z, ə’bju:s/', 'vt.滥用；虐待 n.滥用', 'nuputne');
INSERT INTO `unknown_word` VALUES ('94', 'cet4_0016', '　　accomplish', '/ ə’kɔmpliʃ/', 'vt.达到(目的)；完成', 'nuputne');
INSERT INTO `unknown_word` VALUES ('96', 'cet6_0003', 'abnormal', '/ æb’nɔ:məl/', 'a.不正常的；变态的', 'nuputne');
INSERT INTO `unknown_word` VALUES ('99', 'cet6_0016', 'acquaint', '/ ə’kweint/', 'vt.使认识，使了解', 'wynne');
INSERT INTO `unknown_word` VALUES ('100', 'cet4_0006', 'abstract', '/ ’æbstrækt/', 'n.摘要', 'wynne');
INSERT INTO `unknown_word` VALUES ('101', 'cet4_0010', '　　accelerate', '/ æk’seləreit/', 'vt.(使)加快；促进', 'wynne');
INSERT INTO `unknown_word` VALUES ('102', 'cet4_0014', '　　accommodation', '/ ə,kɔmə’deiʃən/', 'n.招待设备；预定铺位', 'wynne');

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `UserID` int(8) NOT NULL AUTO_INCREMENT,
  `UserName` varchar(15) NOT NULL,
  `UserPassword` varchar(16) NOT NULL,
  `UserPhone` char(11) DEFAULT NULL,
  `UserEmail` varchar(18) DEFAULT NULL,
  PRIMARY KEY (`UserID`),
  KEY `UserName` (`UserName`)
) ENGINE=InnoDB AUTO_INCREMENT=20170053 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES ('20170014', 'nuputne', '123456e', '13660571242', '13660571242@qq.com');
INSERT INTO `user` VALUES ('20170015', 'swing', '123456', '13660571243', '13660571243@qq.com');
INSERT INTO `user` VALUES ('20170017', 'joe', '123456', '13660571245', '13660571245@qq.com');
INSERT INTO `user` VALUES ('20170019', 'jack', '123456', '13660571247', '13660571247@qq.com');
INSERT INTO `user` VALUES ('20170024', 'gawing', '123456', '13660571212', '13660571249@qq.com');
INSERT INTO `user` VALUES ('20170037', 'wynne', 'wynne12', null, null);
INSERT INTO `user` VALUES ('20170045', 'werwe', 'sdf123', null, null);
INSERT INTO `user` VALUES ('20170050', 'wynne123123', 'sdf12312', null, null);
INSERT INTO `user` VALUES ('20170051', 'wynne345345', 'wynne12', null, null);
INSERT INTO `user` VALUES ('20170052', 'rerew32423', '234234234sdf123', null, null);
