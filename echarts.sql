/*
Navicat MySQL Data Transfer

Source Server         : 腾讯
Source Server Version : 50728
Source Host           : 122.51.34.215:3306
Source Database       : echarts

Target Server Type    : MYSQL
Target Server Version : 50728
File Encoding         : 65001

Date: 2019-12-25 16:54:52
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for illness
-- ----------------------------
DROP TABLE IF EXISTS `illness`;
CREATE TABLE `illness` (
  `iid` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `illnessName` varchar(255) COLLATE utf8_unicode_ci NOT NULL COMMENT '疾病名称',
  PRIMARY KEY (`iid`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of illness
-- ----------------------------
INSERT INTO `illness` VALUES ('1', '传染病');
INSERT INTO `illness` VALUES ('2', '恶性肿瘤');
INSERT INTO `illness` VALUES ('3', '良性肿瘤');
INSERT INTO `illness` VALUES ('4', '血液,造血器官及免疫的疾病');
INSERT INTO `illness` VALUES ('5', '内分泌,营养和代谢疾病');
INSERT INTO `illness` VALUES ('6', '精神障碍');
INSERT INTO `illness` VALUES ('7', '精神系统疾病');
INSERT INTO `illness` VALUES ('8', '心脏病');
INSERT INTO `illness` VALUES ('9', '脑血管病');
INSERT INTO `illness` VALUES ('10', '呼吸系统疾病');
INSERT INTO `illness` VALUES ('11', '消化系统疾病');

-- ----------------------------
-- Table structure for illnessYear
-- ----------------------------
DROP TABLE IF EXISTS `illnessYear`;
CREATE TABLE `illnessYear` (
  `yid` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `year` varchar(4) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`yid`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of illnessYear
-- ----------------------------
INSERT INTO `illnessYear` VALUES ('1', '1997');
INSERT INTO `illnessYear` VALUES ('2', '1998');
INSERT INTO `illnessYear` VALUES ('3', '1999');
INSERT INTO `illnessYear` VALUES ('4', '2000');
INSERT INTO `illnessYear` VALUES ('5', '2001');
INSERT INTO `illnessYear` VALUES ('6', '2002');
INSERT INTO `illnessYear` VALUES ('7', '2003');
INSERT INTO `illnessYear` VALUES ('8', '2004');
INSERT INTO `illnessYear` VALUES ('9', '2005');
INSERT INTO `illnessYear` VALUES ('10', '2006');
INSERT INTO `illnessYear` VALUES ('11', '2007');
INSERT INTO `illnessYear` VALUES ('12', '2008');
INSERT INTO `illnessYear` VALUES ('13', '2009');
INSERT INTO `illnessYear` VALUES ('14', '2010');
INSERT INTO `illnessYear` VALUES ('15', '2011');
INSERT INTO `illnessYear` VALUES ('16', '2012');
INSERT INTO `illnessYear` VALUES ('17', '2013');
INSERT INTO `illnessYear` VALUES ('18', '2014');
INSERT INTO `illnessYear` VALUES ('19', '2015');
INSERT INTO `illnessYear` VALUES ('20', '2016');
INSERT INTO `illnessYear` VALUES ('21', '2017');
INSERT INTO `illnessYear` VALUES ('24', '2018');
INSERT INTO `illnessYear` VALUES ('25', '2019');

-- ----------------------------
-- Table structure for statistics
-- ----------------------------
DROP TABLE IF EXISTS `statistics`;
CREATE TABLE `statistics` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `yid` int(11) DEFAULT NULL,
  `iid` int(11) DEFAULT NULL,
  `sum` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=256 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of statistics
-- ----------------------------
INSERT INTO `statistics` VALUES ('1', '1', '1', '11');
INSERT INTO `statistics` VALUES ('2', '2', '1', '21');
INSERT INTO `statistics` VALUES ('3', '3', '1', '31');
INSERT INTO `statistics` VALUES ('4', '4', '1', '41');
INSERT INTO `statistics` VALUES ('5', '5', '1', '51');
INSERT INTO `statistics` VALUES ('6', '6', '1', '61');
INSERT INTO `statistics` VALUES ('7', '7', '1', '71');
INSERT INTO `statistics` VALUES ('8', '8', '1', '81');
INSERT INTO `statistics` VALUES ('9', '9', '1', '91');
INSERT INTO `statistics` VALUES ('10', '10', '1', '101');
INSERT INTO `statistics` VALUES ('11', '11', '1', '111');
INSERT INTO `statistics` VALUES ('12', '12', '1', '121');
INSERT INTO `statistics` VALUES ('13', '13', '1', '131');
INSERT INTO `statistics` VALUES ('14', '14', '1', '141');
INSERT INTO `statistics` VALUES ('15', '15', '1', '1000');
INSERT INTO `statistics` VALUES ('16', '16', '1', '161');
INSERT INTO `statistics` VALUES ('17', '17', '1', '171');
INSERT INTO `statistics` VALUES ('18', '18', '1', '181');
INSERT INTO `statistics` VALUES ('19', '19', '1', '191');
INSERT INTO `statistics` VALUES ('20', '20', '1', '201');
INSERT INTO `statistics` VALUES ('21', '21', '1', '211');
INSERT INTO `statistics` VALUES ('22', '1', '2', '12');
INSERT INTO `statistics` VALUES ('23', '2', '2', '23');
INSERT INTO `statistics` VALUES ('24', '3', '2', '12');
INSERT INTO `statistics` VALUES ('25', '4', '2', '123');
INSERT INTO `statistics` VALUES ('26', '5', '2', '132');
INSERT INTO `statistics` VALUES ('27', '6', '2', '432');
INSERT INTO `statistics` VALUES ('28', '7', '2', '234');
INSERT INTO `statistics` VALUES ('29', '8', '2', '567');
INSERT INTO `statistics` VALUES ('30', '9', '2', '123');
INSERT INTO `statistics` VALUES ('31', '10', '2', '321');
INSERT INTO `statistics` VALUES ('32', '11', '2', '234');
INSERT INTO `statistics` VALUES ('33', '12', '2', '456');
INSERT INTO `statistics` VALUES ('34', '13', '2', '678');
INSERT INTO `statistics` VALUES ('35', '14', '2', '890');
INSERT INTO `statistics` VALUES ('36', '15', '2', '456');
INSERT INTO `statistics` VALUES ('37', '16', '2', '632');
INSERT INTO `statistics` VALUES ('38', '17', '2', '234');
INSERT INTO `statistics` VALUES ('39', '18', '2', '546');
INSERT INTO `statistics` VALUES ('40', '19', '2', '234');
INSERT INTO `statistics` VALUES ('41', '20', '2', '467');
INSERT INTO `statistics` VALUES ('42', '21', '2', '123');
INSERT INTO `statistics` VALUES ('43', '1', '3', '638');
INSERT INTO `statistics` VALUES ('44', '2', '3', '2354');
INSERT INTO `statistics` VALUES ('45', '3', '3', '234');
INSERT INTO `statistics` VALUES ('46', '4', '3', '546');
INSERT INTO `statistics` VALUES ('47', '5', '3', '5678');
INSERT INTO `statistics` VALUES ('48', '6', '3', '354');
INSERT INTO `statistics` VALUES ('49', '7', '3', '5678');
INSERT INTO `statistics` VALUES ('50', '8', '3', '2354');
INSERT INTO `statistics` VALUES ('51', '9', '3', '568');
INSERT INTO `statistics` VALUES ('52', '10', '3', '354');
INSERT INTO `statistics` VALUES ('53', '11', '3', '67');
INSERT INTO `statistics` VALUES ('54', '12', '3', '234');
INSERT INTO `statistics` VALUES ('55', '13', '3', '345');
INSERT INTO `statistics` VALUES ('56', '14', '3', '234');
INSERT INTO `statistics` VALUES ('57', '15', '3', '54');
INSERT INTO `statistics` VALUES ('58', '16', '3', '546');
INSERT INTO `statistics` VALUES ('59', '17', '3', '234');
INSERT INTO `statistics` VALUES ('60', '18', '3', '234');
INSERT INTO `statistics` VALUES ('61', '19', '3', '546');
INSERT INTO `statistics` VALUES ('62', '20', '3', '678');
INSERT INTO `statistics` VALUES ('63', '21', '3', '2354');
INSERT INTO `statistics` VALUES ('64', '1', '4', '3124');
INSERT INTO `statistics` VALUES ('65', '2', '4', '4355');
INSERT INTO `statistics` VALUES ('66', '3', '4', '345');
INSERT INTO `statistics` VALUES ('67', '4', '4', '3455');
INSERT INTO `statistics` VALUES ('68', '5', '4', '5467');
INSERT INTO `statistics` VALUES ('69', '6', '4', '567');
INSERT INTO `statistics` VALUES ('70', '7', '4', '3546');
INSERT INTO `statistics` VALUES ('71', '8', '4', '678');
INSERT INTO `statistics` VALUES ('72', '9', '4', '346');
INSERT INTO `statistics` VALUES ('73', '10', '4', '2343');
INSERT INTO `statistics` VALUES ('74', '11', '4', '456');
INSERT INTO `statistics` VALUES ('75', '12', '4', '765');
INSERT INTO `statistics` VALUES ('76', '13', '4', '768');
INSERT INTO `statistics` VALUES ('77', '14', '4', '678');
INSERT INTO `statistics` VALUES ('78', '15', '4', '789');
INSERT INTO `statistics` VALUES ('79', '16', '4', '890');
INSERT INTO `statistics` VALUES ('80', '17', '4', '978');
INSERT INTO `statistics` VALUES ('81', '18', '4', '264');
INSERT INTO `statistics` VALUES ('82', '19', '4', '123');
INSERT INTO `statistics` VALUES ('83', '20', '4', '345');
INSERT INTO `statistics` VALUES ('84', '21', '4', '5467');
INSERT INTO `statistics` VALUES ('85', '1', '5', '890');
INSERT INTO `statistics` VALUES ('86', '2', '5', '789');
INSERT INTO `statistics` VALUES ('87', '3', '5', '678');
INSERT INTO `statistics` VALUES ('88', '4', '5', '567');
INSERT INTO `statistics` VALUES ('89', '5', '5', '456');
INSERT INTO `statistics` VALUES ('90', '6', '5', '345');
INSERT INTO `statistics` VALUES ('91', '7', '5', '234');
INSERT INTO `statistics` VALUES ('92', '8', '5', '123');
INSERT INTO `statistics` VALUES ('93', '9', '5', '786');
INSERT INTO `statistics` VALUES ('94', '10', '5', '345');
INSERT INTO `statistics` VALUES ('95', '11', '5', '765');
INSERT INTO `statistics` VALUES ('96', '12', '5', '653');
INSERT INTO `statistics` VALUES ('97', '13', '5', '243');
INSERT INTO `statistics` VALUES ('98', '14', '5', '3456');
INSERT INTO `statistics` VALUES ('99', '15', '5', '3454');
INSERT INTO `statistics` VALUES ('100', '16', '5', '234');
INSERT INTO `statistics` VALUES ('101', '17', '5', '234');
INSERT INTO `statistics` VALUES ('102', '18', '5', '534');
INSERT INTO `statistics` VALUES ('103', '19', '5', '234');
INSERT INTO `statistics` VALUES ('104', '20', '5', '123');
INSERT INTO `statistics` VALUES ('105', '21', '5', '123');
INSERT INTO `statistics` VALUES ('106', '1', '6', '123');
INSERT INTO `statistics` VALUES ('107', '2', '6', '123');
INSERT INTO `statistics` VALUES ('108', '3', '6', '234');
INSERT INTO `statistics` VALUES ('109', '4', '6', '345');
INSERT INTO `statistics` VALUES ('110', '5', '6', '456');
INSERT INTO `statistics` VALUES ('111', '6', '6', '567');
INSERT INTO `statistics` VALUES ('112', '7', '6', '678');
INSERT INTO `statistics` VALUES ('113', '8', '6', '789');
INSERT INTO `statistics` VALUES ('114', '9', '6', '890');
INSERT INTO `statistics` VALUES ('115', '10', '6', '987');
INSERT INTO `statistics` VALUES ('116', '11', '6', '765');
INSERT INTO `statistics` VALUES ('117', '12', '6', '654');
INSERT INTO `statistics` VALUES ('118', '13', '6', '543');
INSERT INTO `statistics` VALUES ('119', '14', '6', '432');
INSERT INTO `statistics` VALUES ('120', '15', '6', '321');
INSERT INTO `statistics` VALUES ('121', '16', '6', '143');
INSERT INTO `statistics` VALUES ('122', '17', '6', '542');
INSERT INTO `statistics` VALUES ('123', '18', '6', '654');
INSERT INTO `statistics` VALUES ('124', '19', '6', '764');
INSERT INTO `statistics` VALUES ('125', '20', '6', '875');
INSERT INTO `statistics` VALUES ('126', '21', '6', '387');
INSERT INTO `statistics` VALUES ('127', '1', '7', '687');
INSERT INTO `statistics` VALUES ('128', '2', '7', '576');
INSERT INTO `statistics` VALUES ('129', '3', '7', '465');
INSERT INTO `statistics` VALUES ('130', '4', '7', '354');
INSERT INTO `statistics` VALUES ('131', '5', '7', '243');
INSERT INTO `statistics` VALUES ('132', '6', '7', '312');
INSERT INTO `statistics` VALUES ('133', '7', '7', '321');
INSERT INTO `statistics` VALUES ('134', '8', '7', '432');
INSERT INTO `statistics` VALUES ('135', '9', '7', '543');
INSERT INTO `statistics` VALUES ('136', '10', '7', '654');
INSERT INTO `statistics` VALUES ('137', '11', '7', '756');
INSERT INTO `statistics` VALUES ('138', '12', '7', '876');
INSERT INTO `statistics` VALUES ('139', '13', '7', '987');
INSERT INTO `statistics` VALUES ('140', '14', '7', '890');
INSERT INTO `statistics` VALUES ('141', '15', '7', '789');
INSERT INTO `statistics` VALUES ('142', '16', '7', '678');
INSERT INTO `statistics` VALUES ('143', '17', '7', '567');
INSERT INTO `statistics` VALUES ('144', '18', '7', '456');
INSERT INTO `statistics` VALUES ('145', '19', '7', '345');
INSERT INTO `statistics` VALUES ('146', '20', '7', '234');
INSERT INTO `statistics` VALUES ('147', '21', '7', '123');
INSERT INTO `statistics` VALUES ('148', '1', '8', '567');
INSERT INTO `statistics` VALUES ('149', '2', '8', '456');
INSERT INTO `statistics` VALUES ('150', '3', '8', '543');
INSERT INTO `statistics` VALUES ('151', '4', '8', '234');
INSERT INTO `statistics` VALUES ('152', '5', '8', '321');
INSERT INTO `statistics` VALUES ('153', '6', '8', '123');
INSERT INTO `statistics` VALUES ('154', '7', '8', '890');
INSERT INTO `statistics` VALUES ('155', '8', '8', '780');
INSERT INTO `statistics` VALUES ('156', '9', '8', '679');
INSERT INTO `statistics` VALUES ('157', '10', '8', '865');
INSERT INTO `statistics` VALUES ('158', '11', '8', '754');
INSERT INTO `statistics` VALUES ('159', '12', '8', '246');
INSERT INTO `statistics` VALUES ('160', '13', '8', '463');
INSERT INTO `statistics` VALUES ('161', '14', '8', '574');
INSERT INTO `statistics` VALUES ('162', '15', '8', '568');
INSERT INTO `statistics` VALUES ('163', '16', '8', '678');
INSERT INTO `statistics` VALUES ('164', '17', '8', '567');
INSERT INTO `statistics` VALUES ('165', '18', '8', '354');
INSERT INTO `statistics` VALUES ('166', '19', '8', '234');
INSERT INTO `statistics` VALUES ('167', '20', '8', '354');
INSERT INTO `statistics` VALUES ('168', '21', '8', '123');
INSERT INTO `statistics` VALUES ('169', '1', '9', '376');
INSERT INTO `statistics` VALUES ('170', '2', '9', '491');
INSERT INTO `statistics` VALUES ('171', '3', '9', '547');
INSERT INTO `statistics` VALUES ('172', '4', '9', '856');
INSERT INTO `statistics` VALUES ('173', '5', '9', '679');
INSERT INTO `statistics` VALUES ('174', '6', '9', '856');
INSERT INTO `statistics` VALUES ('175', '7', '9', '754');
INSERT INTO `statistics` VALUES ('176', '8', '9', '234');
INSERT INTO `statistics` VALUES ('177', '9', '9', '354');
INSERT INTO `statistics` VALUES ('178', '10', '9', '234');
INSERT INTO `statistics` VALUES ('179', '11', '9', '345');
INSERT INTO `statistics` VALUES ('180', '12', '9', '467');
INSERT INTO `statistics` VALUES ('181', '13', '9', '890');
INSERT INTO `statistics` VALUES ('182', '14', '9', '789');
INSERT INTO `statistics` VALUES ('183', '15', '9', '678');
INSERT INTO `statistics` VALUES ('184', '16', '9', '678');
INSERT INTO `statistics` VALUES ('185', '17', '9', '567');
INSERT INTO `statistics` VALUES ('186', '18', '9', '456');
INSERT INTO `statistics` VALUES ('187', '19', '9', '345');
INSERT INTO `statistics` VALUES ('188', '20', '9', '234');
INSERT INTO `statistics` VALUES ('189', '21', '9', '234');
INSERT INTO `statistics` VALUES ('190', '1', '10', '567');
INSERT INTO `statistics` VALUES ('191', '2', '10', '546');
INSERT INTO `statistics` VALUES ('192', '3', '10', '124');
INSERT INTO `statistics` VALUES ('193', '4', '10', '346');
INSERT INTO `statistics` VALUES ('194', '5', '10', '124');
INSERT INTO `statistics` VALUES ('195', '6', '10', '346');
INSERT INTO `statistics` VALUES ('196', '7', '10', '124');
INSERT INTO `statistics` VALUES ('197', '8', '10', '523');
INSERT INTO `statistics` VALUES ('198', '9', '10', '548');
INSERT INTO `statistics` VALUES ('199', '10', '10', '463');
INSERT INTO `statistics` VALUES ('200', '11', '10', '532');
INSERT INTO `statistics` VALUES ('201', '12', '10', '253');
INSERT INTO `statistics` VALUES ('202', '13', '10', '357');
INSERT INTO `statistics` VALUES ('203', '14', '10', '234');
INSERT INTO `statistics` VALUES ('204', '15', '10', '543');
INSERT INTO `statistics` VALUES ('205', '16', '10', '456');
INSERT INTO `statistics` VALUES ('206', '17', '10', '875');
INSERT INTO `statistics` VALUES ('207', '18', '10', '456');
INSERT INTO `statistics` VALUES ('208', '19', '10', '534');
INSERT INTO `statistics` VALUES ('209', '20', '10', '321');
INSERT INTO `statistics` VALUES ('210', '21', '10', '123');
INSERT INTO `statistics` VALUES ('211', '1', '11', '123');
INSERT INTO `statistics` VALUES ('212', '2', '11', '234');
INSERT INTO `statistics` VALUES ('213', '3', '11', '543');
INSERT INTO `statistics` VALUES ('214', '4', '11', '234');
INSERT INTO `statistics` VALUES ('215', '5', '11', '456');
INSERT INTO `statistics` VALUES ('216', '6', '11', '765');
INSERT INTO `statistics` VALUES ('217', '7', '11', '543');
INSERT INTO `statistics` VALUES ('218', '8', '11', '234');
INSERT INTO `statistics` VALUES ('219', '9', '11', '456');
INSERT INTO `statistics` VALUES ('220', '10', '11', '234');
INSERT INTO `statistics` VALUES ('221', '11', '11', '456');
INSERT INTO `statistics` VALUES ('222', '12', '11', '234');
INSERT INTO `statistics` VALUES ('223', '13', '11', '456');
INSERT INTO `statistics` VALUES ('224', '14', '11', '765');
INSERT INTO `statistics` VALUES ('225', '15', '11', '345');
INSERT INTO `statistics` VALUES ('226', '16', '11', '234');
INSERT INTO `statistics` VALUES ('227', '17', '11', '456');
INSERT INTO `statistics` VALUES ('228', '18', '11', '657');
INSERT INTO `statistics` VALUES ('229', '19', '11', '789');
INSERT INTO `statistics` VALUES ('230', '20', '11', '890');
INSERT INTO `statistics` VALUES ('231', '21', '11', '987');
INSERT INTO `statistics` VALUES ('234', '24', '1', '0');
INSERT INTO `statistics` VALUES ('235', '24', '2', '0');
INSERT INTO `statistics` VALUES ('236', '24', '3', '0');
INSERT INTO `statistics` VALUES ('237', '24', '4', '0');
INSERT INTO `statistics` VALUES ('238', '24', '5', '0');
INSERT INTO `statistics` VALUES ('239', '24', '6', '0');
INSERT INTO `statistics` VALUES ('240', '24', '7', '0');
INSERT INTO `statistics` VALUES ('241', '24', '8', '0');
INSERT INTO `statistics` VALUES ('242', '24', '9', '0');
INSERT INTO `statistics` VALUES ('243', '24', '10', '0');
INSERT INTO `statistics` VALUES ('244', '24', '11', '0');
INSERT INTO `statistics` VALUES ('245', '25', '10', '1');
INSERT INTO `statistics` VALUES ('246', '25', '8', '1');
INSERT INTO `statistics` VALUES ('247', '25', '6', '1');
INSERT INTO `statistics` VALUES ('248', '25', '2', '1');
INSERT INTO `statistics` VALUES ('249', '25', '3', '1');
INSERT INTO `statistics` VALUES ('250', '25', '1', '1');
INSERT INTO `statistics` VALUES ('251', '25', '4', '1');
INSERT INTO `statistics` VALUES ('252', '25', '5', '1');
INSERT INTO `statistics` VALUES ('253', '25', '7', '1');
INSERT INTO `statistics` VALUES ('254', '25', '9', '1');
INSERT INTO `statistics` VALUES ('255', '25', '11', '1');
