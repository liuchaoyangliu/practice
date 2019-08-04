/*
 Navicat Premium Data Transfer

 Source Server         : localhost
 Source Server Type    : MySQL
 Source Server Version : 50725
 Source Host           : localhost:3306
 Source Schema         : practice

 Target Server Type    : MySQL
 Target Server Version : 50725
 File Encoding         : 65001

 Date: 04/08/2019 19:51:26
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for attendance
-- ----------------------------
DROP TABLE IF EXISTS `attendance`;
CREATE TABLE `attendance`  (
  `id` int(50) NOT NULL AUTO_INCREMENT COMMENT '每一条记录id',
  `time` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '考勤的时间',
  `workNumber` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '员工工号',
  `status` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '状态',
  `note` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 12 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of attendance
-- ----------------------------
INSERT INTO `attendance` VALUES (1, '11', '11', '请假', '11');
INSERT INTO `attendance` VALUES (2, '22', '22', '未到', '22');
INSERT INTO `attendance` VALUES (3, '33', '33', 'dsvfd', '33');
INSERT INTO `attendance` VALUES (4, '44', '44', 'dsvfd', '44');
INSERT INTO `attendance` VALUES (5, NULL, NULL, 'dfhb', NULL);
INSERT INTO `attendance` VALUES (6, NULL, NULL, ',,,,,,', NULL);
INSERT INTO `attendance` VALUES (7, NULL, NULL, 'rtyuuu', NULL);
INSERT INTO `attendance` VALUES (8, NULL, NULL, 'jjjjkk', NULL);
INSERT INTO `attendance` VALUES (9, NULL, NULL, 'sdff', NULL);
INSERT INTO `attendance` VALUES (10, NULL, NULL, 'rttu', NULL);
INSERT INTO `attendance` VALUES (11, '111', '111', 'sdfgj', '11');

-- ----------------------------
-- Table structure for institutions
-- ----------------------------
DROP TABLE IF EXISTS `institutions`;
CREATE TABLE `institutions`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '机构id号',
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '机构名称',
  `describe` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '机构描述',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 10 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of institutions
-- ----------------------------
INSERT INTO `institutions` VALUES (1, '教学部', '四川省郫都区德源硅谷人才创业楼111');
INSERT INTO `institutions` VALUES (2, '行政部', '四川省郫都区德源硅谷人才创业楼');
INSERT INTO `institutions` VALUES (3, '后勤部', '四川省郫都区德源硅谷人才创业楼');
INSERT INTO `institutions` VALUES (4, '接待部', '四川省郫都区德源硅谷人才创业楼');
INSERT INTO `institutions` VALUES (5, '嗡嗡嗡', '四川省郫都区德源硅谷人才创业楼');
INSERT INTO `institutions` VALUES (6, '杀杀杀', '四川省郫都区德源硅谷人才创业楼');
INSERT INTO `institutions` VALUES (7, '吱吱吱', '四川省郫都区德源硅谷人才创业楼');
INSERT INTO `institutions` VALUES (8, '嘻嘻嘻', '四川省郫都区德源硅谷人才创业楼');

-- ----------------------------
-- Table structure for log
-- ----------------------------
DROP TABLE IF EXISTS `log`;
CREATE TABLE `log`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `createtime` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `operation` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `workNumber` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1558 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of log
-- ----------------------------
INSERT INTO `log` VALUES (1019, '19_08_03 13:02:32', '获取日志列表', '1111');
INSERT INTO `log` VALUES (1020, '19_08_03 13:02:34', '获取用户列表', '1111');
INSERT INTO `log` VALUES (1021, '19_08_03 13:02:36', '获取日志列表', '1111');
INSERT INTO `log` VALUES (1022, '19_08_03 13:02:47', '用户登录', '1111');
INSERT INTO `log` VALUES (1023, '19_08_03 13:02:50', '获取用户列表', '2222');
INSERT INTO `log` VALUES (1024, '19_08_03 13:02:52', '获取日志列表', '2222');
INSERT INTO `log` VALUES (1025, '19_08_03 13:03:00', '获取用户列表', '2222');
INSERT INTO `log` VALUES (1026, '19_08_03 13:03:01', '获取日志列表', '2222');
INSERT INTO `log` VALUES (1027, '19_08_03 13:03:04', '获取用户列表', '2222');
INSERT INTO `log` VALUES (1028, '19_08_03 13:03:06', '获取日志列表', '2222');
INSERT INTO `log` VALUES (1029, '19_08_03 13:58:54', '获取用户列表', '2222');
INSERT INTO `log` VALUES (1030, '19_08_03 13:59:28', '获取用户信息', '2222');
INSERT INTO `log` VALUES (1031, '19_08_03 13:59:30', '获取用户信息', '2222');
INSERT INTO `log` VALUES (1032, '19_08_03 13:59:37', '获取用户信息', '2222');
INSERT INTO `log` VALUES (1033, '19_08_03 13:59:56', '获取用户信息', '2222');
INSERT INTO `log` VALUES (1034, '19_08_03 14:25:21', '获取用户列表', NULL);
INSERT INTO `log` VALUES (1035, '19_08_03 14:25:59', '获取用户列表', NULL);
INSERT INTO `log` VALUES (1036, '19_08_03 14:26:03', '获取日志列表', NULL);
INSERT INTO `log` VALUES (1037, '19_08_03 14:26:05', '获取用户列表', NULL);
INSERT INTO `log` VALUES (1038, '19_08_03 14:26:58', '获取用户列表', NULL);
INSERT INTO `log` VALUES (1039, '19_08_03 14:27:08', '获取用户信息', NULL);
INSERT INTO `log` VALUES (1040, '19_08_03 14:27:13', '获取用户信息', NULL);
INSERT INTO `log` VALUES (1041, '19_08_03 14:28:49', '获取用户列表', NULL);
INSERT INTO `log` VALUES (1042, '19_08_03 14:30:29', '获取用户列表', NULL);
INSERT INTO `log` VALUES (1043, '19_08_03 14:30:48', '获取用户列表', NULL);
INSERT INTO `log` VALUES (1044, '19_08_03 14:30:53', '删除用户', NULL);
INSERT INTO `log` VALUES (1045, '19_08_03 14:31:05', '获取用户列表', NULL);
INSERT INTO `log` VALUES (1046, '19_08_03 14:31:08', '删除用户', NULL);
INSERT INTO `log` VALUES (1047, '19_08_03 14:31:08', '获取用户列表', NULL);
INSERT INTO `log` VALUES (1048, '19_08_03 14:31:12', '删除用户', NULL);
INSERT INTO `log` VALUES (1049, '19_08_03 14:31:12', '获取用户列表', NULL);
INSERT INTO `log` VALUES (1050, '19_08_03 14:31:46', '获取用户列表', NULL);
INSERT INTO `log` VALUES (1051, '19_08_03 14:31:51', '获取用户信息', NULL);
INSERT INTO `log` VALUES (1052, '19_08_03 14:31:57', '获取用户信息', NULL);
INSERT INTO `log` VALUES (1053, '19_08_03 14:32:04', '删除用户', NULL);
INSERT INTO `log` VALUES (1054, '19_08_03 14:32:04', '获取用户列表', NULL);
INSERT INTO `log` VALUES (1055, '19_08_03 14:32:32', '删除用户', NULL);
INSERT INTO `log` VALUES (1056, '19_08_03 14:32:32', '获取用户列表', NULL);
INSERT INTO `log` VALUES (1057, '19_08_03 14:32:39', '删除用户', NULL);
INSERT INTO `log` VALUES (1058, '19_08_03 14:32:39', '获取用户列表', NULL);
INSERT INTO `log` VALUES (1059, '19_08_03 14:33:44', '获取用户列表', NULL);
INSERT INTO `log` VALUES (1060, '19_08_03 14:33:47', '获取用户信息', NULL);
INSERT INTO `log` VALUES (1061, '19_08_03 14:33:52', '删除用户', NULL);
INSERT INTO `log` VALUES (1062, '19_08_03 14:33:52', '获取用户列表', NULL);
INSERT INTO `log` VALUES (1063, '19_08_03 14:34:26', '获取用户列表', NULL);
INSERT INTO `log` VALUES (1064, '19_08_03 14:34:30', '获取用户列表', NULL);
INSERT INTO `log` VALUES (1065, '19_08_03 14:34:35', '获取用户列表', NULL);
INSERT INTO `log` VALUES (1066, '19_08_03 14:34:40', '获取用户列表', NULL);
INSERT INTO `log` VALUES (1067, '19_08_03 14:47:02', '获取用户列表', NULL);
INSERT INTO `log` VALUES (1068, '19_08_03 14:47:08', '录取员工', NULL);
INSERT INTO `log` VALUES (1069, '19_08_03 14:47:08', '获取用户列表', NULL);


-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user`  (
  `workNumber` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '员工工号',
  `name` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '姓名',
  `age` int(11) NULL DEFAULT NULL COMMENT '年龄',
  `sex` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '性别',
  `password` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '员工登录密码',
  `address` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '住址',
  `phone` varchar(12) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '电话',
  `position` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '职位',
  `institutions` int(11) NULL DEFAULT NULL COMMENT '所属机构',
  `salary` double(10, 2) NULL DEFAULT NULL COMMENT '薪酬',
  `flag` int(11) NULL DEFAULT NULL COMMENT '是否为正式员工，值为0或1',
  PRIMARY KEY (`workNumber`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES ('1111', NULL, NULL, NULL, '1111', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `user` VALUES ('20190702', '李四', 18, '女', '123456', '四川省郫都区德源硅谷人才创业楼', '12345678901', '项目总监', 2, 10000.00, 1);
INSERT INTO `user` VALUES ('20190703', '王五', 18, '女', '123456', '四川省郫都区德源硅谷人才创业楼', '12345678901', '项目总监', 2, 10000.00, 1);
INSERT INTO `user` VALUES ('20190704', '赵六', 18, '女', '123456', '四川省郫都区德源硅谷人才创业楼', '12345678901', '项目总监', 2, 10000.00, 1);
INSERT INTO `user` VALUES ('20190705', '刘七', 18, '女', '123456', '四川省郫都区德源硅谷人才创业楼', '12345678901', '项目总监', 2, 10000.00, 1);
INSERT INTO `user` VALUES ('20190706', '孙八', 18, '女', '123456', '四川省郫都区德源硅谷人才创业楼', '12345678901', '工程师', 1, 8000.00, 1);
INSERT INTO `user` VALUES ('20190707', '沙九', 18, '女', '123456', '四川省郫都区德源硅谷人才创业楼', '12345678901', '工程师', 1, 8000.00, 1);
INSERT INTO `user` VALUES ('20190708', '唐十', 18, '女', '123456', '四川省郫都区德源硅谷人才创业楼', '12345678901', '工程师', 1, 8000.00, 1);
INSERT INTO `user` VALUES ('20190709', '猪一', 18, '女', '123456', '四川省郫都区德源硅谷人才创业楼', '12345678901', '工程师', 1, 8000.00, 1);
INSERT INTO `user` VALUES ('20190710', '如来', 18, '女', '123456', '四川省郫都区德源硅谷人才创业楼', '12345678901', '工程师', 1, 8000.00, 1);
INSERT INTO `user` VALUES ('20190717', '玉皇大帝', 18, '女', '123456', '四川省郫都区德源硅谷人才创业楼', '12345678901', '3', 3, 80000.00, 1);
INSERT INTO `user` VALUES ('20190718', '王母娘娘', 18, '女', '123456', '四川省郫都区德源硅谷人才创业楼', '12345678901', '3', 3, 80000.00, 1);
INSERT INTO `user` VALUES ('20190719', '王母娘娘', 18, '女', '123456', '四川省郫都区德源硅谷人才创业楼', '12345678901', '3', 4, 80000.00, 1);
INSERT INTO `user` VALUES ('20190720', '太白金星', 18, '女', '123456', '四川省郫都区德源硅谷人才创业楼', '12345678901', '3', 4, 80000.00, 1);
INSERT INTO `user` VALUES ('20190721', '托塔天王', 18, '女', '123456', '四川省郫都区德源硅谷人才创业楼', '12345678901', '3', 3, 80000.00, 1);
INSERT INTO `user` VALUES ('20190724', '四大天王', 18, '女', '123456', '四川省郫都区德源硅谷人才创业楼', '12345678901', '3', 4, 80000.00, 0);
INSERT INTO `user` VALUES ('20190725', '齐天大圣', 18, '女', '123456', '四川省郫都区德源硅谷人才创业楼', '12345678901', '3', 3, 80000.00, 0);
INSERT INTO `user` VALUES ('20190726', '无法无天', 18, '女', '123456', '四川省郫都区德源硅谷人才创业楼', '12345678901', '3', 4, 80000.00, 0);
INSERT INTO `user` VALUES ('20190727', '玉皇大帝', 18, '女', '123456', '四川省郫都区德源硅谷人才创业楼', '12345678901', '3', 4, 80000.00, 0);
INSERT INTO `user` VALUES ('20190728', '玉皇大帝', 18, '女', '123456', '四川省郫都区德源硅谷人才创业楼', '12345678901', '3', 3, 80000.00, 0);
INSERT INTO `user` VALUES ('20190729', '玉皇大帝', 18, '女', '123456', '四川省郫都区德源硅谷人才创业楼', '12345678901', '3', 4, 80000.00, 0);
INSERT INTO `user` VALUES ('20190730', '玉皇大帝', 18, '女', '123456', '四川省郫都区德源硅谷人才创业楼', '12345678901', '3', 4, 80000.00, 0);
INSERT INTO `user` VALUES ('20190731', '玉皇大帝', 18, '女', '123456', '四川省郫都区德源硅谷人才创业楼', '12345678901', '3', 4, 80000.00, 0);
INSERT INTO `user` VALUES ('20190732', '玉皇大帝', 18, '女', '123456', '四川省郫都区德源硅谷人才创业楼', '12345678901', '3', 4, 80000.00, 0);
INSERT INTO `user` VALUES ('2222', NULL, NULL, NULL, '2222', NULL, NULL, NULL, NULL, NULL, NULL);

SET FOREIGN_KEY_CHECKS = 1;
