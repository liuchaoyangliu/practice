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

 Date: 05/08/2019 14:24:07
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
) ENGINE = InnoDB AUTO_INCREMENT = 61 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of attendance
-- ----------------------------
INSERT INTO `attendance` VALUES (12, '19_08_05 11:25:09', '20190711', '未到', NULL);
INSERT INTO `attendance` VALUES (13, '19_08_05 11:25:32', '20190712', '以到', NULL);
INSERT INTO `attendance` VALUES (14, '19_08_05 11:25:40', '20190713', '签到', NULL);
INSERT INTO `attendance` VALUES (15, '19_08_05 11:25:46', '20190712', '请假', NULL);
INSERT INTO `attendance` VALUES (16, '2019_08_05 11:26:34', '20190715', '请假', NULL);
INSERT INTO `attendance` VALUES (17, '2019_08_05 11:34:57', '20190711', '未到', NULL);
INSERT INTO `attendance` VALUES (18, '2019_08_05 11:40:27', '20190721', '以到', NULL);
INSERT INTO `attendance` VALUES (19, '2019_08_05 11:40:28', '20190731', '以到', NULL);
INSERT INTO `attendance` VALUES (20, '2019_08_05 11:40:28', '20190811', '以到', NULL);
INSERT INTO `attendance` VALUES (21, '2019_08_05 11:40:28', '20190812', '以到', NULL);
INSERT INTO `attendance` VALUES (22, '2019_08_05 11:40:28', '20190813', '以到', NULL);
INSERT INTO `attendance` VALUES (23, '2019_08_05 11:40:28', '20190814', '以到', NULL);
INSERT INTO `attendance` VALUES (24, '2019_08_05 11:40:28', '20190815', '以到', NULL);
INSERT INTO `attendance` VALUES (25, '2019_08_05 11:40:28', '20190816', '以到', NULL);
INSERT INTO `attendance` VALUES (26, '2019_08_05 11:40:28', '20190817', '以到', NULL);
INSERT INTO `attendance` VALUES (27, '2019_08_05 11:40:28', '20190818', '以到', NULL);
INSERT INTO `attendance` VALUES (28, '2019_08_05 12:55:18', '20190819', '以到', NULL);
INSERT INTO `attendance` VALUES (29, '2019_08_05 12:55:18', '20190820', '以到', NULL);
INSERT INTO `attendance` VALUES (30, '2019_08_05 12:55:18', '20190821', '以到', NULL);
INSERT INTO `attendance` VALUES (31, '2019_08_05 12:55:18', '20190822', '以到', NULL);
INSERT INTO `attendance` VALUES (32, '2019_08_05 12:55:18', '20190823', '以到', NULL);
INSERT INTO `attendance` VALUES (33, '2019_08_05 12:55:18', '20190824', '以到', NULL);
INSERT INTO `attendance` VALUES (34, '2019_08_05 12:55:18', '20190825', '以到', NULL);
INSERT INTO `attendance` VALUES (35, '2019_08_05 12:55:18', '20190826', '以到', NULL);
INSERT INTO `attendance` VALUES (36, '2019_08_05 12:55:18', '20190827', '以到', NULL);
INSERT INTO `attendance` VALUES (37, '2019_08_05 12:55:18', '20190828', '以到', NULL);
INSERT INTO `attendance` VALUES (38, '2019_08_05 12:55:25', '20190829', '以到', NULL);
INSERT INTO `attendance` VALUES (39, '2019_08_05 12:55:25', '20190830', '以到', NULL);
INSERT INTO `attendance` VALUES (40, '2019_08_05 12:55:25', '20190831', '以到', NULL);
INSERT INTO `attendance` VALUES (41, '2019_08_05 12:55:25', '20190832', '以到', NULL);
INSERT INTO `attendance` VALUES (42, '2019_08_05 12:55:25', '20190833', '以到', NULL);
INSERT INTO `attendance` VALUES (43, '2019_08_05 12:55:25', '20190834', '以到', NULL);
INSERT INTO `attendance` VALUES (44, '2019_08_05 12:55:25', '20190835', '以到', NULL);
INSERT INTO `attendance` VALUES (45, '2019_08_05 12:55:25', '20190836', '以到', NULL);
INSERT INTO `attendance` VALUES (46, '2019_08_05 12:55:25', '20190837', '以到', NULL);
INSERT INTO `attendance` VALUES (47, '2019_08_05 12:55:25', '20190838', '以到', NULL);
INSERT INTO `attendance` VALUES (48, '2019_08_05 12:59:13', '20190848', '请假', NULL);
INSERT INTO `attendance` VALUES (49, '2019_08_05 12:59:14', '20190847', '签到', NULL);
INSERT INTO `attendance` VALUES (50, '2019_08_05 12:59:15', '20190846', '以到', NULL);
INSERT INTO `attendance` VALUES (51, '2019_08_05 12:59:15', '20190845', '未到', NULL);
INSERT INTO `attendance` VALUES (52, '2019_08_05 12:59:16', '20190844', '未到', NULL);
INSERT INTO `attendance` VALUES (53, '2019_08_05 12:59:16', '20190843', '以到', NULL);
INSERT INTO `attendance` VALUES (54, '2019_08_05 12:59:17', '20190842', '签到', NULL);
INSERT INTO `attendance` VALUES (55, '2019_08_05 12:59:18', '20190841', '请假', NULL);
INSERT INTO `attendance` VALUES (56, '2019_08_05 12:59:18', '20190840', '签到', NULL);
INSERT INTO `attendance` VALUES (57, '2019_08_05 12:59:19', '20190840', '未到', NULL);
INSERT INTO `attendance` VALUES (58, '2019_08_05 12:59:19', '20190839', '以到', NULL);
INSERT INTO `attendance` VALUES (59, '2019_08_05 12:59:20', '20190839', '签到', NULL);
INSERT INTO `attendance` VALUES (60, '2019_08_05 12:59:20', '20190839', '请假', NULL);

-- ----------------------------
-- Table structure for institutions
-- ----------------------------
DROP TABLE IF EXISTS `institutions`;
CREATE TABLE `institutions`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '机构id号',
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '机构名称',
  `describe` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '机构描述',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 11 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of institutions
-- ----------------------------
INSERT INTO `institutions` VALUES (1, '教学部', '四川省郫都区德源硅谷人才创业楼111');
INSERT INTO `institutions` VALUES (2, '行政部', '四川省郫都区德源硅谷人才创业楼');
INSERT INTO `institutions` VALUES (3, '后勤部', '四川省郫都区德源硅谷人才创业楼');
INSERT INTO `institutions` VALUES (4, '接待部', '四川省郫都区德源硅谷人才创业楼');

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
) ENGINE = InnoDB AUTO_INCREMENT = 2189 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of log
-- ----------------------------
INSERT INTO `log` VALUES (1973, '19_08_05 10:27:45', '单个删除日志', NULL);
INSERT INTO `log` VALUES (1974, '19_08_05 10:27:45', '获取日志列表', NULL);
INSERT INTO `log` VALUES (1975, '19_08_05 10:27:54', '单个删除日志', NULL);
INSERT INTO `log` VALUES (1976, '19_08_05 10:27:54', '获取日志列表', NULL);
INSERT INTO `log` VALUES (1977, '19_08_05 10:27:56', '单个删除日志', NULL);
INSERT INTO `log` VALUES (1978, '19_08_05 10:27:56', '获取日志列表', NULL);
INSERT INTO `log` VALUES (1979, '19_08_05 10:28:14', '获取日志列表', NULL);
INSERT INTO `log` VALUES (1980, '19_08_05 10:28:17', '单个删除日志', NULL);
INSERT INTO `log` VALUES (1981, '19_08_05 10:28:17', '获取日志列表', NULL);
INSERT INTO `log` VALUES (1982, '19_08_05 10:28:19', '单个删除日志', NULL);
INSERT INTO `log` VALUES (1983, '19_08_05 10:28:19', '获取日志列表', NULL);
INSERT INTO `log` VALUES (1984, '19_08_05 10:28:20', '单个删除日志', NULL);
INSERT INTO `log` VALUES (1985, '19_08_05 10:28:21', '获取日志列表', NULL);
INSERT INTO `log` VALUES (1986, '19_08_05 10:28:22', '单个删除日志', NULL);
INSERT INTO `log` VALUES (1987, '19_08_05 10:28:22', '获取日志列表', NULL);
INSERT INTO `log` VALUES (1988, '19_08_05 10:28:24', '单个删除日志', NULL);
INSERT INTO `log` VALUES (1989, '19_08_05 10:28:24', '获取日志列表', NULL);
INSERT INTO `log` VALUES (1990, '19_08_05 10:28:25', '单个删除日志', NULL);
INSERT INTO `log` VALUES (1991, '19_08_05 10:28:25', '获取日志列表', NULL);
INSERT INTO `log` VALUES (1992, '19_08_05 10:28:27', '单个删除日志', NULL);
INSERT INTO `log` VALUES (1993, '19_08_05 10:28:27', '获取日志列表', NULL);
INSERT INTO `log` VALUES (1994, '19_08_05 10:28:28', '单个删除日志', NULL);
INSERT INTO `log` VALUES (1995, '19_08_05 10:28:28', '获取日志列表', NULL);
INSERT INTO `log` VALUES (1996, '19_08_05 10:28:30', '单个删除日志', NULL);
INSERT INTO `log` VALUES (1997, '19_08_05 10:28:30', '获取日志列表', NULL);
INSERT INTO `log` VALUES (1998, '19_08_05 10:28:32', '单个删除日志', NULL);
INSERT INTO `log` VALUES (1999, '19_08_05 10:28:32', '获取日志列表', NULL);
INSERT INTO `log` VALUES (2000, '19_08_05 10:28:34', '单个删除日志', NULL);
INSERT INTO `log` VALUES (2001, '19_08_05 10:28:34', '获取日志列表', NULL);
INSERT INTO `log` VALUES (2002, '19_08_05 10:28:35', '单个删除日志', NULL);
INSERT INTO `log` VALUES (2003, '19_08_05 10:28:35', '获取日志列表', NULL);
INSERT INTO `log` VALUES (2004, '19_08_05 10:28:38', '单个删除日志', NULL);
INSERT INTO `log` VALUES (2005, '19_08_05 10:28:38', '获取日志列表', NULL);
INSERT INTO `log` VALUES (2006, '19_08_05 10:28:40', '单个删除日志', NULL);
INSERT INTO `log` VALUES (2007, '19_08_05 10:28:40', '获取日志列表', NULL);
INSERT INTO `log` VALUES (2008, '19_08_05 10:28:42', '单个删除日志', NULL);
INSERT INTO `log` VALUES (2009, '19_08_05 10:28:42', '获取日志列表', NULL);
INSERT INTO `log` VALUES (2010, '19_08_05 10:29:22', '获取日志列表', NULL);
INSERT INTO `log` VALUES (2011, '19_08_05 10:29:24', '单个删除日志', NULL);
INSERT INTO `log` VALUES (2012, '19_08_05 10:29:24', '获取日志列表', NULL);
INSERT INTO `log` VALUES (2013, '19_08_05 10:29:26', '单个删除日志', NULL);
INSERT INTO `log` VALUES (2014, '19_08_05 10:29:26', '获取日志列表', NULL);
INSERT INTO `log` VALUES (2015, '19_08_05 10:29:28', '单个删除日志', NULL);
INSERT INTO `log` VALUES (2016, '19_08_05 10:29:28', '获取日志列表', NULL);
INSERT INTO `log` VALUES (2017, '19_08_05 10:29:29', '单个删除日志', NULL);
INSERT INTO `log` VALUES (2018, '19_08_05 10:29:29', '获取日志列表', NULL);
INSERT INTO `log` VALUES (2019, '19_08_05 10:29:33', '单个删除日志', NULL);
INSERT INTO `log` VALUES (2020, '19_08_05 10:29:33', '获取日志列表', NULL);
INSERT INTO `log` VALUES (2021, '19_08_05 10:29:34', '单个删除日志', NULL);
INSERT INTO `log` VALUES (2022, '19_08_05 10:29:34', '获取日志列表', NULL);
INSERT INTO `log` VALUES (2023, '19_08_05 10:29:40', '获取日志列表', NULL);
INSERT INTO `log` VALUES (2024, '19_08_05 10:29:44', '单个删除日志', NULL);
INSERT INTO `log` VALUES (2025, '19_08_05 10:29:45', '获取日志列表', NULL);
INSERT INTO `log` VALUES (2026, '19_08_05 10:29:50', '获取日志列表', NULL);
INSERT INTO `log` VALUES (2027, '19_08_05 10:30:04', '获取用户列表', NULL);
INSERT INTO `log` VALUES (2028, '19_08_05 10:31:11', '获取用户列表', NULL);
INSERT INTO `log` VALUES (2029, '19_08_05 10:31:59', '获取用户列表', NULL);
INSERT INTO `log` VALUES (2030, '19_08_05 10:32:27', '获取用户列表', NULL);
INSERT INTO `log` VALUES (2031, '19_08_05 10:32:31', '获取用户列表', NULL);
INSERT INTO `log` VALUES (2032, '19_08_05 10:36:21', '获取考勤信息', NULL);
INSERT INTO `log` VALUES (2033, '19_08_05 10:42:41', '获取用户列表', NULL);
INSERT INTO `log` VALUES (2034, '19_08_05 10:45:30', '获取用户列表', NULL);
INSERT INTO `log` VALUES (2035, '19_08_05 10:46:10', '获取用户列表', NULL);
INSERT INTO `log` VALUES (2036, '19_08_05 10:46:40', '获取用户列表', NULL);
INSERT INTO `log` VALUES (2037, '19_08_05 10:49:00', '获取用户列表', NULL);
INSERT INTO `log` VALUES (2038, '19_08_05 10:49:12', '获取用户列表', NULL);
INSERT INTO `log` VALUES (2039, '19_08_05 10:49:12', '批量删除用户信息', NULL);
INSERT INTO `log` VALUES (2040, '19_08_05 10:50:48', '获取用户列表', NULL);
INSERT INTO `log` VALUES (2041, '19_08_05 10:50:48', '批量删除用户信息', NULL);
INSERT INTO `log` VALUES (2042, '19_08_05 10:54:27', '获取用户列表', NULL);
INSERT INTO `log` VALUES (2043, '19_08_05 10:58:16', '获取用户列表', NULL);
INSERT INTO `log` VALUES (2044, '19_08_05 10:58:20', '获取用户列表', NULL);
INSERT INTO `log` VALUES (2045, '19_08_05 10:59:27', '获取考勤信息', NULL);
INSERT INTO `log` VALUES (2046, '19_08_05 11:01:42', '获取考勤信息', NULL);
INSERT INTO `log` VALUES (2047, '19_08_05 11:01:42', '更改考勤状态', NULL);
INSERT INTO `log` VALUES (2048, '19_08_05 11:03:02', '获取考勤信息', NULL);
INSERT INTO `log` VALUES (2049, '19_08_05 11:04:22', '获取考勤信息', NULL);
INSERT INTO `log` VALUES (2050, '19_08_05 11:05:14', '获取考勤信息', NULL);
INSERT INTO `log` VALUES (2051, '19_08_05 11:05:36', '获取用户列表', NULL);
INSERT INTO `log` VALUES (2052, '19_08_05 11:11:54', '获取用户列表', NULL);
INSERT INTO `log` VALUES (2053, '19_08_05 11:12:17', '获取用户列表', NULL);
INSERT INTO `log` VALUES (2054, '19_08_05 11:22:00', '获取用户列表', NULL);
INSERT INTO `log` VALUES (2055, '19_08_05 11:25:04', '获取用户列表', NULL);
INSERT INTO `log` VALUES (2056, '19_08_05 11:25:09', '添加一条考勤信息', NULL);
INSERT INTO `log` VALUES (2057, '19_08_05 11:25:22', '获取用户列表', NULL);
INSERT INTO `log` VALUES (2058, '19_08_05 11:25:32', '添加一条考勤信息', NULL);
INSERT INTO `log` VALUES (2059, '19_08_05 11:25:40', '添加一条考勤信息', NULL);
INSERT INTO `log` VALUES (2060, '19_08_05 11:25:46', '添加一条考勤信息', NULL);
INSERT INTO `log` VALUES (2061, '19_08_05 11:26:34', '添加一条考勤信息', NULL);
INSERT INTO `log` VALUES (2062, '2019_08_05 11:34:57', '添加一条考勤信息', NULL);
INSERT INTO `log` VALUES (2063, '2019_08_05 11:36:02', '获取用户列表', NULL);
INSERT INTO `log` VALUES (2064, '2019_08_05 11:36:08', '获取用户列表', NULL);
INSERT INTO `log` VALUES (2065, '2019_08_05 11:36:13', '获取用户列表', NULL);
INSERT INTO `log` VALUES (2066, '2019_08_05 11:36:13', '批量删除用户信息', NULL);
INSERT INTO `log` VALUES (2067, '2019_08_05 11:38:28', '获取用户列表', NULL);
INSERT INTO `log` VALUES (2068, '2019_08_05 11:38:29', '获取用户列表', NULL);
INSERT INTO `log` VALUES (2069, '2019_08_05 11:39:11', '获取用户列表', NULL);
INSERT INTO `log` VALUES (2070, '2019_08_05 11:40:28', '获取用户列表', NULL);
INSERT INTO `log` VALUES (2071, '2019_08_05 11:40:28', '批量签到成功', NULL);
INSERT INTO `log` VALUES (2072, '2019_08_05 11:41:28', '获取用户列表', NULL);
INSERT INTO `log` VALUES (2073, '2019_08_05 12:55:14', '获取用户列表', NULL);
INSERT INTO `log` VALUES (2074, '2019_08_05 12:55:18', '获取用户列表', NULL);
INSERT INTO `log` VALUES (2075, '2019_08_05 12:55:18', '批量签到成功', NULL);
INSERT INTO `log` VALUES (2076, '2019_08_05 12:55:22', '获取用户列表', NULL);
INSERT INTO `log` VALUES (2077, '2019_08_05 12:55:25', '获取用户列表', NULL);
INSERT INTO `log` VALUES (2078, '2019_08_05 12:55:25', '批量签到成功', NULL);
INSERT INTO `log` VALUES (2079, '2019_08_05 12:55:35', '获取考勤信息', NULL);
INSERT INTO `log` VALUES (2080, '2019_08_05 12:55:41', '获取考勤信息', NULL);
INSERT INTO `log` VALUES (2081, '2019_08_05 12:55:43', '获取考勤信息', NULL);
INSERT INTO `log` VALUES (2082, '2019_08_05 12:55:44', '获取考勤信息', NULL);
INSERT INTO `log` VALUES (2083, '2019_08_05 12:55:45', '获取考勤信息', NULL);
INSERT INTO `log` VALUES (2084, '2019_08_05 12:57:30', '获取考勤信息', NULL);
INSERT INTO `log` VALUES (2085, '2019_08_05 12:57:35', '获取考勤信息', NULL);
INSERT INTO `log` VALUES (2086, '2019_08_05 12:57:58', '获取考勤信息', NULL);
INSERT INTO `log` VALUES (2087, '2019_08_05 12:58:30', '获取考勤信息', NULL);
INSERT INTO `log` VALUES (2088, '2019_08_05 12:58:48', '获取考勤信息', NULL);
INSERT INTO `log` VALUES (2089, '2019_08_05 12:59:05', '获取考勤信息', NULL);
INSERT INTO `log` VALUES (2090, '2019_08_05 12:59:06', '获取考勤信息', NULL);
INSERT INTO `log` VALUES (2091, '2019_08_05 12:59:06', '获取考勤信息', NULL);
INSERT INTO `log` VALUES (2092, '2019_08_05 12:59:09', '获取用户列表', NULL);
INSERT INTO `log` VALUES (2093, '2019_08_05 12:59:11', '获取用户列表', NULL);
INSERT INTO `log` VALUES (2094, '2019_08_05 12:59:13', '添加一条考勤信息', NULL);
INSERT INTO `log` VALUES (2095, '2019_08_05 12:59:14', '添加一条考勤信息', NULL);
INSERT INTO `log` VALUES (2096, '2019_08_05 12:59:15', '添加一条考勤信息', NULL);
INSERT INTO `log` VALUES (2097, '2019_08_05 12:59:15', '添加一条考勤信息', NULL);
INSERT INTO `log` VALUES (2098, '2019_08_05 12:59:16', '添加一条考勤信息', NULL);
INSERT INTO `log` VALUES (2099, '2019_08_05 12:59:16', '添加一条考勤信息', NULL);
INSERT INTO `log` VALUES (2100, '2019_08_05 12:59:17', '添加一条考勤信息', NULL);
INSERT INTO `log` VALUES (2101, '2019_08_05 12:59:18', '添加一条考勤信息', NULL);
INSERT INTO `log` VALUES (2102, '2019_08_05 12:59:18', '添加一条考勤信息', NULL);
INSERT INTO `log` VALUES (2103, '2019_08_05 12:59:19', '添加一条考勤信息', NULL);
INSERT INTO `log` VALUES (2104, '2019_08_05 12:59:19', '添加一条考勤信息', NULL);
INSERT INTO `log` VALUES (2105, '2019_08_05 12:59:20', '添加一条考勤信息', NULL);
INSERT INTO `log` VALUES (2106, '2019_08_05 12:59:20', '添加一条考勤信息', NULL);
INSERT INTO `log` VALUES (2107, '2019_08_05 12:59:26', '获取考勤信息', NULL);
INSERT INTO `log` VALUES (2108, '2019_08_05 12:59:30', '获取考勤信息', NULL);
INSERT INTO `log` VALUES (2109, '2019_08_05 12:59:48', '查询考勤信息', NULL);
INSERT INTO `log` VALUES (2110, '2019_08_05 12:59:52', '查询考勤信息', NULL);
INSERT INTO `log` VALUES (2111, '2019_08_05 12:59:56', '获取用户列表', NULL);
INSERT INTO `log` VALUES (2112, '2019_08_05 12:59:57', '获取机构列表', NULL);
INSERT INTO `log` VALUES (2113, '2019_08_05 12:59:58', '获取考勤信息', NULL);
INSERT INTO `log` VALUES (2114, '2019_08_05 12:59:59', '获取用户列表', NULL);
INSERT INTO `log` VALUES (2115, '2019_08_05 13:00:01', '获取用户列表', NULL);
INSERT INTO `log` VALUES (2116, '2019_08_05 13:00:02', '获取用户列表', NULL);
INSERT INTO `log` VALUES (2117, '2019_08_05 13:00:03', '获取用户列表', NULL);
INSERT INTO `log` VALUES (2118, '2019_08_05 13:00:04', '获取用户列表', NULL);
INSERT INTO `log` VALUES (2119, '2019_08_05 13:00:06', '获取用户列表', NULL);
INSERT INTO `log` VALUES (2120, '2019_08_05 13:14:24', '获取机构列表', NULL);
INSERT INTO `log` VALUES (2121, '2019_08_05 13:14:26', '获取考勤信息', NULL);
INSERT INTO `log` VALUES (2122, '2019_08_05 13:15:04', '获取用户列表', NULL);
INSERT INTO `log` VALUES (2123, '2019_08_05 13:15:19', '获取考勤信息', NULL);
INSERT INTO `log` VALUES (2124, '2019_08_05 13:16:15', '获取考勤信息', NULL);
INSERT INTO `log` VALUES (2125, '2019_08_05 13:16:45', '获取考勤信息', NULL);
INSERT INTO `log` VALUES (2126, '2019_08_05 13:34:26', '获取用户列表', NULL);
INSERT INTO `log` VALUES (2127, '2019_08_05 13:34:44', '获取所有机构', NULL);
INSERT INTO `log` VALUES (2128, '2019_08_05 13:44:25', '获取所有机构', NULL);
INSERT INTO `log` VALUES (2129, '2019_08_05 13:45:06', '获取所有机构', NULL);
INSERT INTO `log` VALUES (2130, '2019_08_05 13:45:06', '获取考勤信息', NULL);
INSERT INTO `log` VALUES (2131, '2019_08_05 13:46:48', '获取所有机构', NULL);
INSERT INTO `log` VALUES (2132, '2019_08_05 13:46:48', '获取考勤信息', NULL);
INSERT INTO `log` VALUES (2133, '2019_08_05 13:48:05', '获取所有机构', NULL);
INSERT INTO `log` VALUES (2134, '2019_08_05 13:48:05', '获取考勤信息', NULL);
INSERT INTO `log` VALUES (2135, '2019_08_05 13:48:19', '获取机构列表', NULL);
INSERT INTO `log` VALUES (2136, '2019_08_05 13:48:25', '删除机构', NULL);
INSERT INTO `log` VALUES (2137, '2019_08_05 13:48:25', '获取机构列表', NULL);
INSERT INTO `log` VALUES (2138, '2019_08_05 13:48:27', '删除机构', NULL);
INSERT INTO `log` VALUES (2139, '2019_08_05 13:48:27', '获取机构列表', NULL);
INSERT INTO `log` VALUES (2140, '2019_08_05 13:48:28', '删除机构', NULL);
INSERT INTO `log` VALUES (2141, '2019_08_05 13:48:28', '获取机构列表', NULL);
INSERT INTO `log` VALUES (2142, '2019_08_05 13:48:29', '删除机构', NULL);
INSERT INTO `log` VALUES (2143, '2019_08_05 13:48:29', '获取机构列表', NULL);
INSERT INTO `log` VALUES (2144, '2019_08_05 13:48:30', '删除机构', NULL);
INSERT INTO `log` VALUES (2145, '2019_08_05 13:48:30', '获取机构列表', NULL);
INSERT INTO `log` VALUES (2146, '2019_08_05 13:48:33', '获取所有机构', NULL);
INSERT INTO `log` VALUES (2147, '2019_08_05 13:48:33', '获取考勤信息', NULL);
INSERT INTO `log` VALUES (2148, '2019_08_05 13:54:05', '获取所有机构', NULL);
INSERT INTO `log` VALUES (2149, '2019_08_05 13:54:05', '获取考勤信息', NULL);
INSERT INTO `log` VALUES (2150, '2019_08_05 13:55:24', '获取所有机构', NULL);
INSERT INTO `log` VALUES (2151, '2019_08_05 13:55:24', '获取考勤信息', NULL);
INSERT INTO `log` VALUES (2152, '2019_08_05 13:57:48', '通过机构获取员工', NULL);
INSERT INTO `log` VALUES (2153, '2019_08_05 14:04:29', '获取所有机构', NULL);
INSERT INTO `log` VALUES (2154, '2019_08_05 14:04:29', '获取考勤信息', NULL);
INSERT INTO `log` VALUES (2155, '2019_08_05 14:04:36', '通过机构获取员工', NULL);
INSERT INTO `log` VALUES (2156, '2019_08_05 14:05:43', '获取所有机构', NULL);
INSERT INTO `log` VALUES (2157, '2019_08_05 14:05:43', '获取考勤信息', NULL);
INSERT INTO `log` VALUES (2158, '2019_08_05 14:05:50', '通过机构获取员工', NULL);
INSERT INTO `log` VALUES (2159, '2019_08_05 14:07:15', '通过机构获取员工', NULL);
INSERT INTO `log` VALUES (2160, '2019_08_05 14:09:36', '获取所有机构', NULL);
INSERT INTO `log` VALUES (2161, '2019_08_05 14:09:36', '获取考勤信息', NULL);
INSERT INTO `log` VALUES (2162, '2019_08_05 14:09:37', '获取所有机构', NULL);
INSERT INTO `log` VALUES (2163, '2019_08_05 14:09:37', '获取考勤信息', NULL);
INSERT INTO `log` VALUES (2164, '2019_08_05 14:09:45', '获取机构列表', NULL);
INSERT INTO `log` VALUES (2165, '2019_08_05 14:09:48', '获取用户列表', NULL);
INSERT INTO `log` VALUES (2166, '2019_08_05 14:09:50', '获取所有机构', NULL);
INSERT INTO `log` VALUES (2167, '2019_08_05 14:09:50', '获取考勤信息', NULL);
INSERT INTO `log` VALUES (2168, '2019_08_05 14:09:52', '获取用户列表', NULL);
INSERT INTO `log` VALUES (2169, '2019_08_05 14:09:55', '获取日志列表', NULL);
INSERT INTO `log` VALUES (2170, '2019_08_05 14:09:56', '获取用户列表', NULL);
INSERT INTO `log` VALUES (2171, '2019_08_05 14:09:57', '获取机构列表', NULL);
INSERT INTO `log` VALUES (2172, '2019_08_05 14:09:58', '获取日志列表', NULL);
INSERT INTO `log` VALUES (2173, '2019_08_05 14:10:02', '获取用户列表', NULL);
INSERT INTO `log` VALUES (2174, '2019_08_05 14:10:07', '获取用户列表', NULL);
INSERT INTO `log` VALUES (2175, '2019_08_05 14:18:57', '获取用户列表', NULL);
INSERT INTO `log` VALUES (2176, '2019_08_05 14:18:58', '获取日志列表', NULL);
INSERT INTO `log` VALUES (2177, '2019_08_05 14:19:00', '获取用户列表', NULL);
INSERT INTO `log` VALUES (2178, '2019_08_05 14:19:01', '获取机构列表', NULL);
INSERT INTO `log` VALUES (2179, '2019_08_05 14:19:02', '获取所有机构', NULL);
INSERT INTO `log` VALUES (2180, '2019_08_05 14:19:02', '获取考勤信息', NULL);
INSERT INTO `log` VALUES (2181, '2019_08_05 14:19:03', '获取用户列表', NULL);
INSERT INTO `log` VALUES (2182, '2019_08_05 14:22:35', '获取用户列表', NULL);
INSERT INTO `log` VALUES (2183, '2019_08_05 14:22:36', '获取日志列表', NULL);
INSERT INTO `log` VALUES (2184, '2019_08_05 14:22:37', '获取用户列表', NULL);
INSERT INTO `log` VALUES (2185, '2019_08_05 14:22:38', '获取机构列表', NULL);
INSERT INTO `log` VALUES (2186, '2019_08_05 14:22:39', '获取所有机构', NULL);
INSERT INTO `log` VALUES (2187, '2019_08_05 14:22:39', '获取考勤信息', NULL);
INSERT INTO `log` VALUES (2188, '2019_08_05 14:22:40', '获取用户列表', NULL);

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
INSERT INTO `user` VALUES ('20190721', '托塔天王', 18, '女', '123456', '四川省郫都区德源硅谷人才创业楼', '12345678901', '3', 3, 80000.00, 1);
INSERT INTO `user` VALUES ('20190724', '四大天王', 18, '女', '123456', '四川省郫都区德源硅谷人才创业楼', '12345678901', '3', 4, 80000.00, 0);
INSERT INTO `user` VALUES ('20190725', '齐天大圣', 18, '女', '123456', '四川省郫都区德源硅谷人才创业楼', '12345678901', '3', 3, 80000.00, 0);
INSERT INTO `user` VALUES ('20190726', '无法无天', 18, '女', '123456', '四川省郫都区德源硅谷人才创业楼', '12345678901', '3', 4, 80000.00, 0);
INSERT INTO `user` VALUES ('20190727', '玉皇大帝', 18, '女', '123456', '四川省郫都区德源硅谷人才创业楼', '12345678901', '3', 4, 80000.00, 0);
INSERT INTO `user` VALUES ('20190728', '玉皇大帝', 18, '女', '123456', '四川省郫都区德源硅谷人才创业楼', '12345678901', '3', 3, 80000.00, 0);
INSERT INTO `user` VALUES ('20190729', '玉皇大帝', 18, '女', '123456', '四川省郫都区德源硅谷人才创业楼', '12345678901', '3', 4, 80000.00, 0);
INSERT INTO `user` VALUES ('20190730', '玉皇大帝', 18, '女', '123456', '四川省郫都区德源硅谷人才创业楼', '12345678901', '3', 4, 80000.00, 0);
INSERT INTO `user` VALUES ('20190731', '玉皇大帝', 18, '女', '123456', '四川省郫都区德源硅谷人才创业楼', '12345678901', '3', 4, 80000.00, 1);
INSERT INTO `user` VALUES ('20190811', '玉皇大帝', 18, '女', '123456', '四川省郫都区德源硅谷人才创业楼', '12345678901', '3', 4, 80000.00, 1);
INSERT INTO `user` VALUES ('20190812', '玉皇大帝', 18, '女', '123456', '四川省郫都区德源硅谷人才创业楼', '12345678901', '3', 4, 80000.00, 1);
INSERT INTO `user` VALUES ('20190813', '玉皇大帝', 18, '女', '123456', '四川省郫都区德源硅谷人才创业楼', '12345678901', '3', 4, 80000.00, 1);
INSERT INTO `user` VALUES ('20190814', '玉皇大帝', 18, '女', '123456', '四川省郫都区德源硅谷人才创业楼', '12345678901', '3', 4, 80000.00, 1);
INSERT INTO `user` VALUES ('20190815', '玉皇大帝', 18, '女', '123456', '四川省郫都区德源硅谷人才创业楼', '12345678901', '3', 4, 80000.00, 1);
INSERT INTO `user` VALUES ('20190816', '玉皇大帝', 18, '女', '123456', '四川省郫都区德源硅谷人才创业楼', '12345678901', '3', 4, 80000.00, 1);
INSERT INTO `user` VALUES ('20190817', '玉皇大帝', 18, '女', '123456', '四川省郫都区德源硅谷人才创业楼', '12345678901', '3', 4, 80000.00, 1);
INSERT INTO `user` VALUES ('20190818', '玉皇大帝', 18, '女', '123456', '四川省郫都区德源硅谷人才创业楼', '12345678901', '3', 4, 80000.00, 1);
INSERT INTO `user` VALUES ('20190819', '玉皇大帝', 18, '女', '123456', '四川省郫都区德源硅谷人才创业楼', '12345678901', '3', 4, 80000.00, 1);
INSERT INTO `user` VALUES ('20190820', '玉皇大帝', 18, '女', '123456', '四川省郫都区德源硅谷人才创业楼', '12345678901', '3', 4, 80000.00, 1);
INSERT INTO `user` VALUES ('20190821', '玉皇大帝', 18, '女', '123456', '四川省郫都区德源硅谷人才创业楼', '12345678901', '3', 4, 80000.00, 1);
INSERT INTO `user` VALUES ('20190822', '玉皇大帝', 18, '女', '123456', '四川省郫都区德源硅谷人才创业楼', '12345678901', '3', 4, 80000.00, 1);
INSERT INTO `user` VALUES ('20190823', '玉皇大帝', 18, '女', '123456', '四川省郫都区德源硅谷人才创业楼', '12345678901', '3', 4, 80000.00, 1);
INSERT INTO `user` VALUES ('20190824', '玉皇大帝', 18, '女', '123456', '四川省郫都区德源硅谷人才创业楼', '12345678901', '3', 4, 80000.00, 1);
INSERT INTO `user` VALUES ('20190825', '玉皇大帝', 18, '女', '123456', '四川省郫都区德源硅谷人才创业楼', '12345678901', '3', 4, 80000.00, 1);
INSERT INTO `user` VALUES ('20190826', '玉皇大帝', 18, '女', '123456', '四川省郫都区德源硅谷人才创业楼', '12345678901', '3', 4, 80000.00, 1);
INSERT INTO `user` VALUES ('20190827', '玉皇大帝', 18, '女', '123456', '四川省郫都区德源硅谷人才创业楼', '12345678901', '3', 4, 80000.00, 1);
INSERT INTO `user` VALUES ('20190828', '玉皇大帝', 18, '女', '123456', '四川省郫都区德源硅谷人才创业楼', '12345678901', '3', 4, 80000.00, 1);
INSERT INTO `user` VALUES ('20190829', '玉皇大帝', 18, '女', '123456', '四川省郫都区德源硅谷人才创业楼', '12345678901', '3', 4, 80000.00, 1);
INSERT INTO `user` VALUES ('20190830', '玉皇大帝', 18, '女', '123456', '四川省郫都区德源硅谷人才创业楼', '12345678901', '3', 4, 80000.00, 1);
INSERT INTO `user` VALUES ('20190831', '玉皇大帝', 18, '女', '123456', '四川省郫都区德源硅谷人才创业楼', '12345678901', '3', 4, 80000.00, 1);
INSERT INTO `user` VALUES ('20190832', '玉皇大帝', 18, '女', '123456', '四川省郫都区德源硅谷人才创业楼', '12345678901', '3', 4, 80000.00, 1);
INSERT INTO `user` VALUES ('20190833', '玉皇大帝', 18, '女', '123456', '四川省郫都区德源硅谷人才创业楼', '12345678901', '3', 4, 80000.00, 1);
INSERT INTO `user` VALUES ('20190834', '玉皇大帝', 18, '女', '123456', '四川省郫都区德源硅谷人才创业楼', '12345678901', '3', 4, 80000.00, 1);
INSERT INTO `user` VALUES ('20190835', '玉皇大帝', 18, '女', '123456', '四川省郫都区德源硅谷人才创业楼', '12345678901', '3', 4, 80000.00, 1);
INSERT INTO `user` VALUES ('20190836', '玉皇大帝', 18, '女', '123456', '四川省郫都区德源硅谷人才创业楼', '12345678901', '3', 4, 80000.00, 1);
INSERT INTO `user` VALUES ('20190837', '玉皇大帝', 18, '女', '123456', '四川省郫都区德源硅谷人才创业楼', '12345678901', '3', 4, 80000.00, 1);
INSERT INTO `user` VALUES ('20190838', '玉皇大帝', 18, '女', '123456', '四川省郫都区德源硅谷人才创业楼', '12345678901', '3', 4, 80000.00, 1);
INSERT INTO `user` VALUES ('20190839', '玉皇大帝', 18, '女', '123456', '四川省郫都区德源硅谷人才创业楼', '12345678901', '3', 4, 80000.00, 1);
INSERT INTO `user` VALUES ('20190840', '玉皇大帝', 18, '女', '123456', '四川省郫都区德源硅谷人才创业楼', '12345678901', '3', 4, 80000.00, 1);
INSERT INTO `user` VALUES ('20190841', '玉皇大帝', 18, '女', '123456', '四川省郫都区德源硅谷人才创业楼', '12345678901', '3', 4, 80000.00, 1);
INSERT INTO `user` VALUES ('20190842', '玉皇大帝', 18, '女', '123456', '四川省郫都区德源硅谷人才创业楼', '12345678901', '3', 4, 80000.00, 1);
INSERT INTO `user` VALUES ('20190843', '玉皇大帝', 18, '女', '123456', '四川省郫都区德源硅谷人才创业楼', '12345678901', '3', 4, 80000.00, 1);
INSERT INTO `user` VALUES ('20190844', '玉皇大帝', 18, '女', '123456', '四川省郫都区德源硅谷人才创业楼', '12345678901', '3', 4, 80000.00, 1);
INSERT INTO `user` VALUES ('20190845', '玉皇大帝', 18, '女', '123456', '四川省郫都区德源硅谷人才创业楼', '12345678901', '3', 4, 80000.00, 1);
INSERT INTO `user` VALUES ('20190846', '玉皇大帝', 18, '女', '123456', '四川省郫都区德源硅谷人才创业楼', '12345678901', '3', 4, 80000.00, 1);
INSERT INTO `user` VALUES ('20190847', '玉皇大帝', 18, '女', '123456', '四川省郫都区德源硅谷人才创业楼', '12345678901', '3', 4, 80000.00, 1);
INSERT INTO `user` VALUES ('20190848', '玉皇大帝', 18, '女', '123456', '四川省郫都区德源硅谷人才创业楼', '12345678901', '3', 4, 80000.00, 1);
INSERT INTO `user` VALUES ('20190849', '玉皇大帝', 18, '女', '123456', '四川省郫都区德源硅谷人才创业楼', '12345678901', '3', 4, 80000.00, 1);
INSERT INTO `user` VALUES ('20190850', '玉皇大帝', 18, '女', '123456', '四川省郫都区德源硅谷人才创业楼', '12345678901', '3', 4, 80000.00, 1);
INSERT INTO `user` VALUES ('2222', NULL, NULL, NULL, '2222', NULL, NULL, NULL, NULL, NULL, NULL);

SET FOREIGN_KEY_CHECKS = 1;
