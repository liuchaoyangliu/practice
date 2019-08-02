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

 Date: 02/08/2019 16:28:29
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
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `createtime` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `operation` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `workNumber` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 170 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of log
-- ----------------------------
INSERT INTO `log` VALUES (1, '19_08_02 13:22:22', '获取用户列表', '11111');
INSERT INTO `log` VALUES (2, '19_08_02 13:44:19', '获取用户列表', '11111');
INSERT INTO `log` VALUES (3, '19_08_02 13:47:29', '用户登录', '11111');
INSERT INTO `log` VALUES (4, '19_08_02 13:47:32', '获取用户列表', '11111');
INSERT INTO `log` VALUES (5, '19_08_02 13:47:46', '获取用户信息', '11111');
INSERT INTO `log` VALUES (6, '19_08_02 13:47:46', '获取机构列表', '11111');
INSERT INTO `log` VALUES (7, '19_08_02 13:47:53', '获取用户列表', '11111');
INSERT INTO `log` VALUES (8, '19_08_02 13:47:56', '删除用户', '11111');
INSERT INTO `log` VALUES (9, '19_08_02 13:47:56', '获取用户列表', '11111');
INSERT INTO `log` VALUES (10, '19_08_02 13:48:07', '删除用户', '11111');
INSERT INTO `log` VALUES (11, '19_08_02 13:48:07', '获取用户列表', '11111');
INSERT INTO `log` VALUES (12, '19_08_02 13:48:08', '删除用户', '11111');
INSERT INTO `log` VALUES (13, '19_08_02 13:48:08', '获取用户列表', '11111');
INSERT INTO `log` VALUES (14, '19_08_02 13:48:08', '删除用户', '11111');
INSERT INTO `log` VALUES (15, '19_08_02 13:48:08', '获取用户列表', '11111');
INSERT INTO `log` VALUES (16, '19_08_02 13:48:09', '删除用户', '11111');
INSERT INTO `log` VALUES (17, '19_08_02 13:48:09', '获取用户列表', '11111');
INSERT INTO `log` VALUES (18, '19_08_02 13:48:10', '删除用户', '11111');
INSERT INTO `log` VALUES (19, '19_08_02 13:48:10', '获取用户列表', '11111');
INSERT INTO `log` VALUES (20, '19_08_02 13:48:11', '删除用户', '11111');
INSERT INTO `log` VALUES (21, '19_08_02 13:48:11', '获取用户列表', '11111');
INSERT INTO `log` VALUES (22, '19_08_02 13:48:11', '删除用户', '11111');
INSERT INTO `log` VALUES (23, '19_08_02 13:48:11', '获取用户列表', '11111');
INSERT INTO `log` VALUES (24, '19_08_02 14:04:08', '获取日志列表', '11111');
INSERT INTO `log` VALUES (25, '19_08_02 14:06:41', '获取用户列表', '11111');
INSERT INTO `log` VALUES (26, '19_08_02 14:06:48', '获取机构列表', '11111');
INSERT INTO `log` VALUES (27, '19_08_02 14:06:48', '获取用户信息', '11111');
INSERT INTO `log` VALUES (28, '19_08_02 14:54:08', '获取用户列表', '11111');
INSERT INTO `log` VALUES (29, '19_08_02 14:54:10', '获取用户信息', '11111');
INSERT INTO `log` VALUES (30, '19_08_02 14:54:10', '获取机构列表', '11111');
INSERT INTO `log` VALUES (31, '19_08_02 15:27:34', '获取用户列表', '11111');
INSERT INTO `log` VALUES (32, '19_08_02 15:27:56', '获取用户列表', '11111');
INSERT INTO `log` VALUES (33, '19_08_02 15:31:36', '获取用户列表', '11111');
INSERT INTO `log` VALUES (34, '19_08_02 15:31:53', '获取用户列表', '11111');
INSERT INTO `log` VALUES (35, '19_08_02 15:34:06', '获取用户列表', '11111');
INSERT INTO `log` VALUES (36, '19_08_02 15:34:10', '获取用户列表', '11111');
INSERT INTO `log` VALUES (37, '19_08_02 15:34:12', '获取用户信息', '11111');
INSERT INTO `log` VALUES (38, '19_08_02 15:34:12', '获取机构列表', '11111');
INSERT INTO `log` VALUES (39, '19_08_02 15:34:30', '获取机构列表', '11111');
INSERT INTO `log` VALUES (40, '19_08_02 15:34:30', '获取用户信息', '11111');
INSERT INTO `log` VALUES (41, '19_08_02 15:34:35', '更新用户信息', '11111');
INSERT INTO `log` VALUES (42, '19_08_02 15:35:49', '获取用户列表', '11111');
INSERT INTO `log` VALUES (43, '19_08_02 15:35:51', '获取用户信息', '11111');
INSERT INTO `log` VALUES (44, '19_08_02 15:35:51', '获取机构列表', '11111');
INSERT INTO `log` VALUES (45, '19_08_02 15:36:32', '获取机构列表', '11111');
INSERT INTO `log` VALUES (46, '19_08_02 15:36:32', '获取用户信息', '11111');
INSERT INTO `log` VALUES (47, '19_08_02 15:36:56', '获取用户信息', '11111');
INSERT INTO `log` VALUES (48, '19_08_02 15:36:56', '获取机构列表', '11111');
INSERT INTO `log` VALUES (49, '19_08_02 15:38:15', '获取用户信息', '11111');
INSERT INTO `log` VALUES (50, '19_08_02 15:38:15', '获取机构列表', '11111');
INSERT INTO `log` VALUES (51, '19_08_02 15:38:42', '获取机构列表', '11111');
INSERT INTO `log` VALUES (52, '19_08_02 15:38:42', '获取用户信息', '11111');
INSERT INTO `log` VALUES (53, '19_08_02 15:45:31', '获取用户信息', '11111');
INSERT INTO `log` VALUES (54, '19_08_02 15:45:31', '获取机构列表', '11111');
INSERT INTO `log` VALUES (55, '19_08_02 15:45:58', '获取用户列表', '11111');
INSERT INTO `log` VALUES (56, '19_08_02 15:46:00', '获取用户信息', '11111');
INSERT INTO `log` VALUES (57, '19_08_02 15:46:00', '获取机构列表', '11111');
INSERT INTO `log` VALUES (58, '19_08_02 15:46:05', '获取机构列表', '11111');
INSERT INTO `log` VALUES (59, '19_08_02 15:46:05', '获取用户信息', '11111');
INSERT INTO `log` VALUES (60, '19_08_02 15:46:27', '获取用户列表', '11111');
INSERT INTO `log` VALUES (61, '19_08_02 15:46:29', '获取用户信息', '11111');
INSERT INTO `log` VALUES (62, '19_08_02 15:46:29', '获取机构列表', '11111');
INSERT INTO `log` VALUES (63, '19_08_02 15:46:32', '获取机构列表', '11111');
INSERT INTO `log` VALUES (64, '19_08_02 15:46:32', '获取用户信息', '11111');
INSERT INTO `log` VALUES (65, '19_08_02 15:47:23', '获取机构列表', '11111');
INSERT INTO `log` VALUES (66, '19_08_02 15:47:23', '获取用户信息', '11111');
INSERT INTO `log` VALUES (67, '19_08_02 15:47:31', '获取机构列表', '11111');
INSERT INTO `log` VALUES (68, '19_08_02 15:47:31', '获取用户信息', '11111');
INSERT INTO `log` VALUES (69, '19_08_02 15:47:36', '获取用户列表', '11111');
INSERT INTO `log` VALUES (70, '19_08_02 15:47:38', '获取用户信息', '11111');
INSERT INTO `log` VALUES (71, '19_08_02 15:47:38', '获取机构列表', '11111');
INSERT INTO `log` VALUES (72, '19_08_02 15:48:39', '获取用户信息', '11111');
INSERT INTO `log` VALUES (73, '19_08_02 15:48:39', '获取机构列表', '11111');
INSERT INTO `log` VALUES (74, '19_08_02 15:51:26', '获取用户列表', '11111');
INSERT INTO `log` VALUES (75, '19_08_02 15:51:28', '获取用户信息', '11111');
INSERT INTO `log` VALUES (76, '19_08_02 15:51:28', '获取机构列表', '11111');
INSERT INTO `log` VALUES (77, '19_08_02 15:52:32', '获取用户列表', '11111');
INSERT INTO `log` VALUES (78, '19_08_02 15:52:33', '获取用户信息', '11111');
INSERT INTO `log` VALUES (79, '19_08_02 15:52:33', '获取机构列表', '11111');
INSERT INTO `log` VALUES (80, '19_08_02 15:56:16', '获取用户信息', '11111');
INSERT INTO `log` VALUES (81, '19_08_02 15:56:16', '获取机构列表', '11111');
INSERT INTO `log` VALUES (82, '19_08_02 15:57:09', '获取机构列表', '11111');
INSERT INTO `log` VALUES (83, '19_08_02 15:57:09', '获取用户信息', '11111');
INSERT INTO `log` VALUES (84, '19_08_02 15:57:09', '获取机构列表', '11111');
INSERT INTO `log` VALUES (85, '19_08_02 15:57:09', '获取用户信息', '11111');
INSERT INTO `log` VALUES (86, '19_08_02 15:58:58', '获取用户列表', '11111');
INSERT INTO `log` VALUES (87, '19_08_02 15:59:02', '获取机构列表', '11111');
INSERT INTO `log` VALUES (88, '19_08_02 15:59:02', '获取用户信息', '11111');
INSERT INTO `log` VALUES (89, '19_08_02 15:59:06', '更新用户信息', '11111');
INSERT INTO `log` VALUES (90, '19_08_02 15:59:47', '获取用户信息', '11111');
INSERT INTO `log` VALUES (91, '19_08_02 15:59:47', '获取机构列表', '11111');
INSERT INTO `log` VALUES (92, '19_08_02 15:59:57', '更新用户信息', '11111');
INSERT INTO `log` VALUES (93, '19_08_02 16:00:17', '获取用户信息', '11111');
INSERT INTO `log` VALUES (94, '19_08_02 16:00:17', '获取机构列表', '11111');
INSERT INTO `log` VALUES (95, '19_08_02 16:00:21', '更新用户信息', '11111');
INSERT INTO `log` VALUES (96, '19_08_02 16:00:24', '获取机构列表', '11111');
INSERT INTO `log` VALUES (97, '19_08_02 16:00:24', '获取用户信息', '11111');
INSERT INTO `log` VALUES (98, '19_08_02 16:00:26', '获取机构列表', '11111');
INSERT INTO `log` VALUES (99, '19_08_02 16:00:26', '获取用户信息', '11111');
INSERT INTO `log` VALUES (100, '19_08_02 16:00:28', '获取机构列表', '11111');
INSERT INTO `log` VALUES (101, '19_08_02 16:00:28', '获取用户信息', '11111');
INSERT INTO `log` VALUES (102, '19_08_02 16:00:29', '更新用户信息', '11111');
INSERT INTO `log` VALUES (103, '19_08_02 16:01:12', '获取机构列表', '11111');
INSERT INTO `log` VALUES (104, '19_08_02 16:01:12', '获取用户信息', '11111');
INSERT INTO `log` VALUES (105, '19_08_02 16:01:15', '更新用户信息', '11111');
INSERT INTO `log` VALUES (106, '19_08_02 16:01:27', '获取用户信息', '11111');
INSERT INTO `log` VALUES (107, '19_08_02 16:01:27', '获取机构列表', '11111');
INSERT INTO `log` VALUES (108, '19_08_02 16:01:30', '获取机构列表', '11111');
INSERT INTO `log` VALUES (109, '19_08_02 16:01:30', '获取用户信息', '11111');
INSERT INTO `log` VALUES (110, '19_08_02 16:01:34', '更新用户信息', '11111');
INSERT INTO `log` VALUES (111, '19_08_02 16:01:38', '获取用户信息', '11111');
INSERT INTO `log` VALUES (112, '19_08_02 16:01:38', '获取机构列表', '11111');
INSERT INTO `log` VALUES (113, '19_08_02 16:02:03', '获取用户信息', '11111');
INSERT INTO `log` VALUES (114, '19_08_02 16:02:03', '获取机构列表', '11111');
INSERT INTO `log` VALUES (115, '19_08_02 16:03:12', '获取机构列表', '11111');
INSERT INTO `log` VALUES (116, '19_08_02 16:03:12', '获取用户信息', '11111');
INSERT INTO `log` VALUES (117, '19_08_02 16:03:17', '获取用户列表', '11111');
INSERT INTO `log` VALUES (118, '19_08_02 16:03:23', '获取用户信息', '11111');
INSERT INTO `log` VALUES (119, '19_08_02 16:03:23', '获取机构列表', '11111');
INSERT INTO `log` VALUES (120, '19_08_02 16:03:39', '获取用户信息', '11111');
INSERT INTO `log` VALUES (121, '19_08_02 16:03:39', '获取机构列表', '11111');
INSERT INTO `log` VALUES (122, '19_08_02 16:03:45', '获取用户列表', '11111');
INSERT INTO `log` VALUES (123, '19_08_02 16:03:48', '获取用户列表', '11111');
INSERT INTO `log` VALUES (124, '19_08_02 16:03:52', '获取用户信息', '11111');
INSERT INTO `log` VALUES (125, '19_08_02 16:03:52', '获取机构列表', '11111');
INSERT INTO `log` VALUES (126, '19_08_02 16:04:39', '获取用户列表', '11111');
INSERT INTO `log` VALUES (127, '19_08_02 16:04:41', '获取机构列表', '11111');
INSERT INTO `log` VALUES (128, '19_08_02 16:04:41', '获取用户信息', '11111');
INSERT INTO `log` VALUES (129, '19_08_02 16:06:03', '获取用户列表', '11111');
INSERT INTO `log` VALUES (130, '19_08_02 16:06:05', '获取机构列表', '11111');
INSERT INTO `log` VALUES (131, '19_08_02 16:06:05', '获取用户信息', '11111');
INSERT INTO `log` VALUES (132, '19_08_02 16:06:08', '删除用户', '11111');
INSERT INTO `log` VALUES (133, '19_08_02 16:06:08', '获取用户列表', '11111');
INSERT INTO `log` VALUES (134, '19_08_02 16:06:13', '删除用户', '11111');
INSERT INTO `log` VALUES (135, '19_08_02 16:06:13', '获取用户列表', '11111');
INSERT INTO `log` VALUES (136, '19_08_02 16:06:18', '搜索', '11111');
INSERT INTO `log` VALUES (137, '19_08_02 16:06:22', '删除用户', '11111');
INSERT INTO `log` VALUES (138, '19_08_02 16:06:22', '获取用户列表', '11111');
INSERT INTO `log` VALUES (139, '19_08_02 16:06:25', '获取用户列表', '11111');
INSERT INTO `log` VALUES (140, '19_08_02 16:06:26', '获取用户列表', '11111');
INSERT INTO `log` VALUES (141, '19_08_02 16:06:27', '获取用户列表', '11111');
INSERT INTO `log` VALUES (142, '19_08_02 16:06:28', '获取用户列表', '11111');
INSERT INTO `log` VALUES (143, '19_08_02 16:06:31', '获取用户列表', '11111');
INSERT INTO `log` VALUES (144, '19_08_02 16:09:26', '获取用户列表', '11111');
INSERT INTO `log` VALUES (145, '19_08_02 16:09:30', '获取机构列表', '11111');
INSERT INTO `log` VALUES (146, '19_08_02 16:09:30', '获取用户信息', '11111');
INSERT INTO `log` VALUES (147, '19_08_02 16:09:33', '获取机构列表', '11111');
INSERT INTO `log` VALUES (148, '19_08_02 16:09:33', '获取用户信息', '11111');
INSERT INTO `log` VALUES (149, '19_08_02 16:09:49', '获取用户信息', '11111');
INSERT INTO `log` VALUES (150, '19_08_02 16:09:49', '获取机构列表', '11111');
INSERT INTO `log` VALUES (151, '19_08_02 16:13:09', '获取用户列表', '11111');
INSERT INTO `log` VALUES (152, '19_08_02 16:13:10', '获取用户信息', '11111');
INSERT INTO `log` VALUES (153, '19_08_02 16:13:10', '获取机构列表', '11111');
INSERT INTO `log` VALUES (154, '19_08_02 16:13:52', '获取用户列表', '11111');
INSERT INTO `log` VALUES (155, '19_08_02 16:18:03', '获取用户列表', '11111');
INSERT INTO `log` VALUES (156, '19_08_02 16:19:36', '获取用户列表', '11111');
INSERT INTO `log` VALUES (157, '19_08_02 16:21:13', '获取用户列表', '11111');
INSERT INTO `log` VALUES (158, '19_08_02 16:21:40', '获取用户列表', '11111');
INSERT INTO `log` VALUES (159, '19_08_02 16:21:55', '获取用户列表', '11111');
INSERT INTO `log` VALUES (160, '19_08_02 16:23:26', '获取用户列表', '11111');
INSERT INTO `log` VALUES (161, '19_08_02 16:23:31', '获取用户列表', '11111');
INSERT INTO `log` VALUES (162, '19_08_02 16:24:09', '获取用户列表', '11111');
INSERT INTO `log` VALUES (163, '19_08_02 16:25:05', '获取用户列表', '11111');
INSERT INTO `log` VALUES (164, '19_08_02 16:26:17', '获取用户列表', '11111');
INSERT INTO `log` VALUES (165, '19_08_02 16:26:44', '获取用户列表', '11111');
INSERT INTO `log` VALUES (166, '19_08_02 16:26:52', '获取用户列表', '11111');
INSERT INTO `log` VALUES (167, '19_08_02 16:27:51', '获取用户列表', '11111');
INSERT INTO `log` VALUES (168, '19_08_02 16:27:54', '获取用户信息', '11111');
INSERT INTO `log` VALUES (169, '19_08_02 16:27:54', '获取机构列表', '11111');

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
INSERT INTO `user` VALUES ('20190748', '玉皇大帝', 18, '女', '123456', '四川省郫都区德源硅谷人才创业楼', '12345678901', '3', 4, 80000.00, 1);

SET FOREIGN_KEY_CHECKS = 1;
