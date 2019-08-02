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

 Date: 02/08/2019 12:41:07
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for attendance
-- ----------------------------
DROP TABLE IF EXISTS `attendance`;
CREATE TABLE `attendance`  (
  `id` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '每一条记录id',
  `time` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '考勤的时间',
  `workNumber` varchar(0) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '员工工号',
  `status` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '状态',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for institutions
-- ----------------------------
DROP TABLE IF EXISTS `institutions`;
CREATE TABLE `institutions`  (
  `id` int(11) NOT NULL COMMENT '机构id号',
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '机构名称',
  `describe` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '机构描述',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of institutions
-- ----------------------------
INSERT INTO `institutions` VALUES (1, '教学部', NULL);
INSERT INTO `institutions` VALUES (2, '行政部', NULL);
INSERT INTO `institutions` VALUES (3, '后勤部', NULL);
INSERT INTO `institutions` VALUES (4, '接待部', NULL);

-- ----------------------------
-- Table structure for log
-- ----------------------------
DROP TABLE IF EXISTS `log`;
CREATE TABLE `log`  (
  `id` int(11) NOT NULL,
  `createtime` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `operation` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `workNumber` varbinary(20) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

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
INSERT INTO `user` VALUES ('20190701', '张三', 18, '女', '1111111111', '四川省郫都区德源硅谷人才创业楼', '12345678901', '项目总监', 2, 10000.00, 1);
INSERT INTO `user` VALUES ('20190702', '李四', 18, '女', '123456', '四川省郫都区德源硅谷人才创业楼', '12345678901', '项目总监', 2, 10000.00, 1);
INSERT INTO `user` VALUES ('20190703', '王五', 18, '女', '123456', '四川省郫都区德源硅谷人才创业楼', '12345678901', '项目总监', 2, 10000.00, 1);
INSERT INTO `user` VALUES ('20190704', '赵六', 18, '女', '123456', '四川省郫都区德源硅谷人才创业楼', '12345678901', '项目总监', 2, 10000.00, 1);
INSERT INTO `user` VALUES ('20190705', '刘七', 18, '女', '123456', '四川省郫都区德源硅谷人才创业楼', '12345678901', '项目总监', 2, 10000.00, 1);
INSERT INTO `user` VALUES ('20190706', '孙八', 18, '女', '123456', '四川省郫都区德源硅谷人才创业楼', '12345678901', '工程师', 1, 8000.00, 1);
INSERT INTO `user` VALUES ('20190707', '沙九', 18, '女', '123456', '四川省郫都区德源硅谷人才创业楼', '12345678901', '工程师', 1, 8000.00, 1);
INSERT INTO `user` VALUES ('20190708', '唐十', 18, '女', '123456', '四川省郫都区德源硅谷人才创业楼', '12345678901', '工程师', 1, 8000.00, 1);
INSERT INTO `user` VALUES ('20190709', '猪一', 18, '女', '123456', '四川省郫都区德源硅谷人才创业楼', '12345678901', '工程师', 1, 8000.00, 1);
INSERT INTO `user` VALUES ('20190710', '如来', 18, '女', '123456', '四川省郫都区德源硅谷人才创业楼', '12345678901', '工程师', 1, 8000.00, 1);
INSERT INTO `user` VALUES ('20190711', '玉皇大帝', 18, '女', '123456', '四川省郫都区德源硅谷人才创业楼', '12345678901', '3', 4, 80000.00, 1);
INSERT INTO `user` VALUES ('20190712', '玉皇大帝', 18, '女', '123456', '四川省郫都区德源硅谷人才创业楼', '12345678901', '3', 4, 80000.00, 1);
INSERT INTO `user` VALUES ('20190713', '玉皇大帝', 18, '女', '123456', '四川省郫都区德源硅谷人才创业楼', '12345678901', '3', 4, 80000.00, 1);
INSERT INTO `user` VALUES ('20190714', '玉皇大帝', 18, '女', '123456', '四川省郫都区德源硅谷人才创业楼', '12345678901', '3', 4, 80000.00, 1);
INSERT INTO `user` VALUES ('20190715', '玉皇大帝', 18, '女', '123456', '四川省郫都区德源硅谷人才创业楼', '12345678901', '3', 4, 80000.00, 1);
INSERT INTO `user` VALUES ('20190716', '玉皇大帝', 18, '女', '123456', '四川省郫都区德源硅谷人才创业楼', '12345678901', '3', 3, 80000.00, 1);
INSERT INTO `user` VALUES ('20190717', '玉皇大帝', 18, '女', '123456', '四川省郫都区德源硅谷人才创业楼', '12345678901', '3', 3, 80000.00, 1);
INSERT INTO `user` VALUES ('20190718', '玉皇大帝', 18, '女', '123456', '四川省郫都区德源硅谷人才创业楼', '12345678901', '3', 3, 80000.00, 1);
INSERT INTO `user` VALUES ('20190719', '玉皇大帝', 18, '女', '123456', '四川省郫都区德源硅谷人才创业楼', '12345678901', '3', 4, 80000.00, 1);
INSERT INTO `user` VALUES ('20190720', '玉皇大帝', 18, '女', '123456', '四川省郫都区德源硅谷人才创业楼', '12345678901', '3', 4, 80000.00, 1);
INSERT INTO `user` VALUES ('20190721', '玉皇大帝', 18, '女', '123456', '四川省郫都区德源硅谷人才创业楼', '12345678901', '3', 3, 80000.00, 1);
INSERT INTO `user` VALUES ('20190722', '玉皇大帝', 18, '女', '123456', '四川省郫都区德源硅谷人才创业楼', '12345678901', '3', 3, 80000.00, 1);
INSERT INTO `user` VALUES ('20190723', '玉皇大帝', 18, '女', '123456', '四川省郫都区德源硅谷人才创业楼', '12345678901', '3', 4, 80000.00, 1);
INSERT INTO `user` VALUES ('20190724', '玉皇大帝', 18, '女', '123456', '四川省郫都区德源硅谷人才创业楼', '12345678901', '3', 4, 80000.00, 1);
INSERT INTO `user` VALUES ('20190725', '玉皇大帝', 18, '女', '123456', '四川省郫都区德源硅谷人才创业楼', '12345678901', '3', 3, 80000.00, 1);
INSERT INTO `user` VALUES ('20190726', '玉皇大帝', 18, '女', '123456', '四川省郫都区德源硅谷人才创业楼', '12345678901', '3', 4, 80000.00, 1);
INSERT INTO `user` VALUES ('20190727', '玉皇大帝', 18, '女', '123456', '四川省郫都区德源硅谷人才创业楼', '12345678901', '3', 4, 80000.00, 1);
INSERT INTO `user` VALUES ('20190728', '玉皇大帝', 18, '女', '123456', '四川省郫都区德源硅谷人才创业楼', '12345678901', '3', 3, 80000.00, 1);
INSERT INTO `user` VALUES ('20190729', '玉皇大帝', 18, '女', '123456', '四川省郫都区德源硅谷人才创业楼', '12345678901', '3', 4, 80000.00, 1);
INSERT INTO `user` VALUES ('20190730', '玉皇大帝', 18, '女', '123456', '四川省郫都区德源硅谷人才创业楼', '12345678901', '3', 4, 80000.00, 1);
INSERT INTO `user` VALUES ('20190731', '玉皇大帝', 18, '女', '123456', '四川省郫都区德源硅谷人才创业楼', '12345678901', '3', 4, 80000.00, 1);
INSERT INTO `user` VALUES ('20190732', '玉皇大帝', 18, '女', '123456', '四川省郫都区德源硅谷人才创业楼', '12345678901', '3', 4, 80000.00, 1);
INSERT INTO `user` VALUES ('20190733', '玉皇大帝', 18, '女', '123456', '四川省郫都区德源硅谷人才创业楼', '12345678901', '3', 4, 80000.00, 1);
INSERT INTO `user` VALUES ('20190734', '玉皇大帝', 18, '女', '123456', '四川省郫都区德源硅谷人才创业楼', '12345678901', '3', 4, 80000.00, 1);
INSERT INTO `user` VALUES ('20190735', '玉皇大帝', 18, '女', '123456', '四川省郫都区德源硅谷人才创业楼', '12345678901', '3', 4, 80000.00, 1);
INSERT INTO `user` VALUES ('20190736', '玉皇大帝', 18, '女', '123456', '四川省郫都区德源硅谷人才创业楼', '12345678901', '3', 4, 80000.00, 1);
INSERT INTO `user` VALUES ('20190737', '玉皇大帝', 18, '女', '123456', '四川省郫都区德源硅谷人才创业楼', '12345678901', '3', 4, 80000.00, 1);
INSERT INTO `user` VALUES ('20190738', '玉皇大帝', 18, '女', '123456', '四川省郫都区德源硅谷人才创业楼', '12345678901', '3', 4, 80000.00, 1);
INSERT INTO `user` VALUES ('20190739', '玉皇大帝', 18, '女', '123456', '四川省郫都区德源硅谷人才创业楼', '12345678901', '3', 4, 80000.00, 1);
INSERT INTO `user` VALUES ('20190740', '玉皇大帝', 18, '女', '123456', '四川省郫都区德源硅谷人才创业楼', '12345678901', '3', 4, 80000.00, 1);
INSERT INTO `user` VALUES ('20190741', '玉皇大帝', 18, '女', '123456', '四川省郫都区德源硅谷人才创业楼', '12345678901', '3', 4, 80000.00, 1);
INSERT INTO `user` VALUES ('20190742', '玉皇大帝', 18, '女', '123456', '四川省郫都区德源硅谷人才创业楼', '12345678901', '3', 4, 80000.00, 1);
INSERT INTO `user` VALUES ('20190743', '玉皇大帝', 18, '女', '123456', '四川省郫都区德源硅谷人才创业楼', '12345678901', '3', 4, 80000.00, 1);
INSERT INTO `user` VALUES ('20190744', '玉皇大帝', 18, '女', '123456', '四川省郫都区德源硅谷人才创业楼', '12345678901', '3', 4, 80000.00, 1);
INSERT INTO `user` VALUES ('20190745', '玉皇大帝', 18, '女', '123456', '四川省郫都区德源硅谷人才创业楼', '12345678901', '3', 4, 80000.00, 1);
INSERT INTO `user` VALUES ('20190746', '玉皇大帝', 18, '女', '123456', '四川省郫都区德源硅谷人才创业楼', '12345678901', '3', 4, 80000.00, 1);
INSERT INTO `user` VALUES ('20190747', '玉皇大帝', 18, '女', '123456', '四川省郫都区德源硅谷人才创业楼', '12345678901', '3', 4, 80000.00, 1);
INSERT INTO `user` VALUES ('20190748', '玉皇大帝', 18, '女', '123456', '四川省郫都区德源硅谷人才创业楼', '12345678901', '3', 4, 80000.00, 1);
INSERT INTO `user` VALUES ('20190749', '玉皇大帝', 18, '女', '123456', '四川省郫都区德源硅谷人才创业楼', '12345678901', '3', 4, 80000.00, 1);
INSERT INTO `user` VALUES ('20190750', '玉皇大帝', 18, '女', '123456', '四川省郫都区德源硅谷人才创业楼', '12345678901', '3', 4, 80000.00, 1);

SET FOREIGN_KEY_CHECKS = 1;
