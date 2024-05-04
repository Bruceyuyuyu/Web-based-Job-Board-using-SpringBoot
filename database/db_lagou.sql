/*
 Navicat Premium Data Transfer

 Source Server         : localhost_3306
 Source Server Type    : MySQL
 Source Server Version : 80022 (8.0.22)
 Source Host           : localhost:3306
 Source Schema         : db_lagou

 Target Server Type    : MySQL
 Target Server Version : 80022 (8.0.22)
 File Encoding         : 65001

 Date: 04/05/2024 12:50:38
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for admin
-- ----------------------------
DROP TABLE IF EXISTS `admin`;
CREATE TABLE `admin`  (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `create_time` datetime NOT NULL,
  `update_time` datetime NOT NULL,
  `admin_name` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `email` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `head_pic` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `mobile` varchar(12) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `password` varchar(16) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `sex` int NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `UK_775atqwkcr2t6m8fyocxro333`(`admin_name` ASC) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of admin
-- ----------------------------
INSERT INTO `admin` VALUES (1, '2023-07-02 22:41:01', '2024-04-16 16:56:06', 'admin', '1627346308@qq.com', '20240416/1713257703740.jpg', '13438526337', '123456', 1);

-- ----------------------------
-- Table structure for company
-- ----------------------------
DROP TABLE IF EXISTS `company`;
CREATE TABLE `company`  (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `create_time` datetime NOT NULL,
  `update_time` datetime NOT NULL,
  `finance` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `founder_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `founder_photo` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `founder_position` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `introduction` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `locale` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `name` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `photo` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `product_content` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `product_photo` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `product_title` varchar(15) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `scale` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `state` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `tags` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `territory` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `url` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `value` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `user_id` bigint NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `FKdy4v2yb46hefqicjpyj7b7e4s`(`user_id` ASC) USING BTREE,
  CONSTRAINT `FKdy4v2yb46hefqicjpyj7b7e4s` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 16 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of company
-- ----------------------------
INSERT INTO `company` VALUES (8, '2023-07-14 18:19:39', '2024-04-28 12:21:49', 'listed company', 'Pony Ma', '20200717/1595000870023.jpg', 'CEO', '', 'Shenzhen Nanshan District Yuehai street Maling community technology road Tencent building', 'Shenzhen Tencent Computer Syst', '20200718/1595001608927.png', '一个简单但功能齐全的茶商城系统，网址：https://www.yuanlrc.com/product/details.html?pid=346', '20200714/1594722060538.png', '茶售卖商城系统', 'Over 2000 people', 'Certified', 'IT, Internet, gaming', 'Internet', 'www.tencent.com', 'Tencent is one of the largest Internet integrated ', 2);
INSERT INTO `company` VALUES (9, '2023-07-14 18:19:39', '2024-04-28 12:23:52', 'listed company', 'Wang Haibin', '20200718/1595002974686.jpg', 'CEO', 'Shanghai Taomie Network Technology Co., Ltd. launched the first virtual community product for children aged 6 to 14 years old - \"Moore Manor\" in 2008, when the society generally does not recognize the use of children\'s networks. Hundreds of millions of registered users; Then it launched \"Sayer\", \"Little Flower Fairy\", \"Kung Fu Pie\" and other virtual community products, with 240 million registered users and more than 50 million active users, occupying a monopoly position in the domestic children\'s virtual community market.\nTaomie\'s children\'s virtual community products have won a number of industry awards with their innovative form and good market performance. With the in-depth development of Taomie in the field of children\'s Internet, more and more people see the commercial value contained in this blue ocean.', '12-16 Floor, Building A2, 1528 Gumei Road, Xuhui District, Shanghai', 'Shanghai Taomie Network Techno', '20200718/1595040677796.jpg', '好项目，真的，上网址：https://www.yuanlrc.com/product/details.html?pid=346', '20200714/1594738011393.png', '茶叶售卖商城', 'Over 2000 people', 'Certified', 'Games, movies, Internet', 'Games, Internet', 'www.taomi.com', 'Careful operation, happy childhood', 5);
INSERT INTO `company` VALUES (10, '2023-07-14 18:19:39', '2024-05-04 12:37:17', 'listed company', 'Guo Xiao', '20200718/1595003580234.jpg', 'CEO', 'Stevock generally refers to thoughtworks. Founded in 1993, thoughtWorks is a global software and consulting company dedicated to driving business change with technology, providing professional organizational transformation consulting, innovative software delivery, user experience design, products and integrated solutions for customers\' digital businesses around the world.', 'Room 2806, Central Centre, Queen\'s Road, Central, Hong Kong', 'Stevock Software Technology ', '20200714/1594739359406.jpg', 'very good 项目，地址：https://www.yuanlrc.com/product/details.html?pid=346，真的棒！！！', '20200714/1594739434006.png', '茶售卖商城系统', 'Over 2000 people', 'Certified', 'Software, hardware, services', 'Software, Information', 'www.skwt.com', 'A global information technology services company', 6);
INSERT INTO `company` VALUES (11, '2023-07-14 18:19:39', '2024-04-28 12:32:24', 'D-wheel and above', 'Zhang Juan', '20200718/1595004849321.jpg', 'CEO', 'Hei Sugar provides super fast photo collection tools, one-click collection to share interests, and various interest theme groups, you can easily find friends who are difficult to meet in daily life and have the same interests as your own.', 'Room 810-1, Block B, 666 East Beijing Road, Huangpu District, Shanghai', 'Shanghai Duitang ', '20200715/1594784541084.jpg', '一个简单但功能齐全的博客系统，网址：https://www.yuanlrc.com/product/details.html?pid=366  oh!!this 项目真的很nice', '20200715/1594784798049.png', '博客发布系统', '500-2000 people', 'Certified', 'Community,technology, Internet', 'Community, information sharing, collection', 'www.duitang.com', 'Pile Sugar Network is a new community.', 7);
INSERT INTO `company` VALUES (12, '2023-07-14 18:19:39', '2024-04-23 16:23:25', 'listed company', 'Yang Yuanqing\n', '20200717/1594958155589.jpg', 'CEO', 'Lenovo Group was founded in 1984 with an investment of 200,000 yuan by the Institute of Computing Technology of the Chinese Academy of Sciences and was founded by 11 scientific and technical personnel. It is a large enterprise group with diversified development in the information industry and an innovative international technology company in China. Since 1996, Lenovo computer sales have been the first in the Chinese domestic market; As a leader in the global computer market, Lenovo develops, manufactures and sells reliable, secure, easy-to-use technology products and high-quality professional services to help customers and partners around the world succeed. Lenovo mainly produces desktop computers, servers, laptops, smart TVS, printers, handheld computers, motherboards, mobile phones, all-in-one computers and other products.\nIn 2005, Lenovo Group acquired IBM PC (Personal computer) division. In 2013, Lenovo became the world\'s largest PC manufacturer by sales volume. ', '201-H2-6, Floor 2, Building 2, No.6 Shangdi West Road, Haidian District, Beijing', 'Legend Holdings Limited', '20200717/1594957977512.jpg', '好项目，快来买，网址：https://www.yuanlrc.com/product/details.html?pid=346', '20200717/1594957988969.png', '茶商城售卖系统', 'Over 2000 people', 'Certified', 'R&d, computer, electronics', 'Develop, manufacture, repair and test electronic computers', 'www.lianxiang.com', 'A large and diversified Chinese enterprise group ', 8);
INSERT INTO `company` VALUES (14, '2023-07-14 18:19:39', '2024-05-02 14:51:36', 'listed company', 'Yang Weidong', '20200718/1595039832842.jpg', 'CEO', 'Youku is a leading video sharing website in China and the number one brand in China\'s online video industry. Youku.com takes \"the fast is king\" as the product concept, focuses on user experience, and constantly improves service strategy. Its outstanding product features of \"fast playback, fast release, and fast search\" fully meet users\' growing diversified interactive needs, making it a leading force in China\'s video websites. Youku.com has become a gathering place for Internet photographers. On December 8, 2010, Eastern time, Youku was officially listed on the New York Stock Exchange.\nBased on video sharing, Youku.com has developed a successful application model of three-in-one, providing users with the highest quality services for browsing, searching, creating and sharing videos. Youku is a comprehensive interpretation of Gu Yongqiang\'s interpretation of the concept of \"micro video\". Regarding the origin of the name \"Youku\", Gu Yongqiang said: \"Excellent, on behalf of service quality, Youku advocates a fine video culture, so that fine content surfaced, so that the user value is fully displayed; Cool, represents the user experience, the first time to taste the unique video buffet, to meet the enthusiasm of everyone to participate in the expression of personalized lifestyle.\" On Youku you can browse, upload, search and share colorful micro-video content in the fastest and most convenient way. Different from podcasts, Youku does not have to be original to perform on stage, whether amateur or professional, whether individual or institution, Youku welcomes all video collection, self-creation and sharing in the form of micro-videos.', 'Room 701-01, 7th Floor, No. 2 Haidian East 3rd Street, Haidian District, Beijing', 'Youku Information Technology ', '20200718/1595039582295.png', 'Youku.com described Unity Network Technology', '20200718/1595039609248.png', 'Blog system', 'Over 2000 people', 'Certified', 'Video, technology, Internet', 'Information, technology and technology', 'www.youku.com', 'Youku.com described Unity Network Technology ', 11);
INSERT INTO `company` VALUES (15, '2023-07-14 18:19:39', '2024-04-28 12:49:49', 'listed company', 'Xie Shaojun', '20200718/1595041703235.png', 'CEO', 'The business scope of Shenzhen Strange Cat Technology Co., Ltd. is: computer database, computer system analysis; Computer technology services; Database service, database management; Computer programming; Computer software design and development; Engaged in advertising business; System integration of radio and external equipment, online games, multimedia products and technology development and sales of electronic products; R&d and sales of wireless access equipment and wireless repeater equipment; Web design.', 'Longgang District,Shenzhen Longcheng street center', 'Shenzhen strange cat technolog', '20200718/1595041368631.png', 'SSM项目，真不错，网址：https://www.yuanlrc.com/product/details.html?pid=346 ', '20200718/1595041452248.png', '茶售卖商城系统', '500-2000 people', 'Certified', 'Internet, products, technology', 'Internet, Technology', 'www.qimao.com', 'Shenzhen Qimao Technology is a technology company', 12);

-- ----------------------------
-- Table structure for education_background
-- ----------------------------
DROP TABLE IF EXISTS `education_background`;
CREATE TABLE `education_background`  (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `create_time` datetime NOT NULL,
  `update_time` datetime NOT NULL,
  `end_year` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `major` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `school_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `start_year` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `study_record` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `user_id` bigint NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `FKfjmjepb8jchkn9nw92q0gj1l`(`user_id` ASC) USING BTREE,
  CONSTRAINT `FKfjmjepb8jchkn9nw92q0gj1l` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of education_background
-- ----------------------------
INSERT INTO `education_background` VALUES (1, '2023-07-13 11:54:56', '2024-04-27 16:48:55', '2022', 'Software engineering', 'Fujian Normal University', '2018', 'undergraduate course', 1);
INSERT INTO `education_background` VALUES (3, '2020-07-18 11:26:22', '2024-05-02 18:10:35', '2014', 'Software engineering', 'Fujian Normal University', '2010', 'junior college', 10);

-- ----------------------------
-- Table structure for expect_work
-- ----------------------------
DROP TABLE IF EXISTS `expect_work`;
CREATE TABLE `expect_work`  (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `create_time` datetime NOT NULL,
  `update_time` datetime NOT NULL,
  `city` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `money` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `position` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `user_id` bigint NULL DEFAULT NULL,
  `type` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `FK2kpbn1nwuixp9d8il9jyrst2l`(`user_id` ASC) USING BTREE,
  CONSTRAINT `FK2kpbn1nwuixp9d8il9jyrst2l` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 6 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of expect_work
-- ----------------------------
INSERT INTO `expect_work` VALUES (2, '2020-07-12 18:01:48', '2024-04-27 16:48:11', 'Ningbo', 'Above 50k', 'Project director', 1, 'full-time');
INSERT INTO `expect_work` VALUES (5, '2024-05-02 18:09:42', '2024-05-02 18:09:42', 'Beijing', '5k-10k', 'Project director', 10, 'full-time');

-- ----------------------------
-- Table structure for operater_log
-- ----------------------------
DROP TABLE IF EXISTS `operater_log`;
CREATE TABLE `operater_log`  (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `create_time` datetime NOT NULL,
  `update_time` datetime NOT NULL,
  `content` varchar(512) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `operator` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 547 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of operater_log
-- ----------------------------
INSERT INTO `operater_log` VALUES (487, '2024-04-23 16:22:15', '2024-04-23 16:22:15', 'Logged in to the background management system。', '【admin】：');
INSERT INTO `operater_log` VALUES (488, '2024-04-23 16:24:48', '2024-04-23 16:24:48', 'Logged in to the background management system。', '【admin】：');
INSERT INTO `operater_log` VALUES (489, '2024-04-23 16:51:21', '2024-04-23 16:51:21', 'Logged in to the background management system。', '【admin】：');
INSERT INTO `operater_log` VALUES (490, '2024-04-27 11:25:56', '2024-04-27 11:25:56', 'Logged in to the background management system。', '【admin】：');
INSERT INTO `operater_log` VALUES (491, '2024-04-27 11:27:19', '2024-04-27 11:27:19', 'Occupation Category (ID) removed：【81】。', '【admin】：');
INSERT INTO `operater_log` VALUES (492, '2024-04-27 11:27:23', '2024-04-27 11:27:23', 'Occupation Category (ID) removed：【21】。', '【admin】：');
INSERT INTO `operater_log` VALUES (493, '2024-04-27 11:34:17', '2024-04-27 11:34:17', 'Occupation Category (ID) removed：【82】。', '【admin】：');
INSERT INTO `operater_log` VALUES (494, '2024-04-27 11:34:20', '2024-04-27 11:34:20', 'Occupation Category (ID) removed：【84】。', '【admin】：');
INSERT INTO `operater_log` VALUES (495, '2024-04-27 11:34:24', '2024-04-27 11:34:24', 'Occupation Category (ID) removed：【83】。', '【admin】：');
INSERT INTO `operater_log` VALUES (496, '2024-04-27 11:34:27', '2024-04-27 11:34:27', 'Occupation Category (ID) removed：【85】。', '【admin】：');
INSERT INTO `operater_log` VALUES (497, '2024-04-27 11:34:30', '2024-04-27 11:34:30', 'Occupation Category (ID) removed：【86】。', '【admin】：');
INSERT INTO `operater_log` VALUES (498, '2024-04-27 11:34:33', '2024-04-27 11:34:33', 'Occupation Category (ID) removed：【87】。', '【admin】：');
INSERT INTO `operater_log` VALUES (499, '2024-04-27 11:34:36', '2024-04-27 11:34:36', 'Occupation Category (ID) removed：【22】。', '【admin】：');
INSERT INTO `operater_log` VALUES (500, '2024-04-27 11:35:39', '2024-04-27 11:35:39', 'The occupational categories have been modified：【PositionCategory [parentId=PositionCategory [parentId=null, _parentId=null, name=Product, url=], _parentId=9, name=Manager, url=]】。', '【admin】：');
INSERT INTO `operater_log` VALUES (501, '2024-04-27 11:35:48', '2024-04-27 11:35:48', 'The occupational categories have been modified：【PositionCategory [parentId=PositionCategory [parentId=null, _parentId=null, name=Product, url=], _parentId=9, name=Designer, url=]】。', '【admin】：');
INSERT INTO `operater_log` VALUES (502, '2024-04-27 11:36:26', '2024-04-27 11:36:26', 'Occupation Category (ID) removed：【97】。', '【admin】：');
INSERT INTO `operater_log` VALUES (503, '2024-04-27 11:36:29', '2024-04-27 11:36:29', 'Occupation Category (ID) removed：【98】。', '【admin】：');
INSERT INTO `operater_log` VALUES (504, '2024-04-27 11:36:32', '2024-04-27 11:36:32', 'Occupation Category (ID) removed：【25】。', '【admin】：');
INSERT INTO `operater_log` VALUES (505, '2024-04-27 11:37:04', '2024-04-27 11:37:04', 'The occupational categories have been modified：【PositionCategory [parentId=PositionCategory [parentId=null, _parentId=null, name=Design, url=], _parentId=10, name=Interaction, url=]】。', '【admin】：');
INSERT INTO `operater_log` VALUES (506, '2024-04-27 11:37:39', '2024-04-27 11:37:39', 'Occupation Category (ID) removed：【140】。', '【admin】：');
INSERT INTO `operater_log` VALUES (507, '2024-04-27 11:37:42', '2024-04-27 11:37:42', 'Occupation Category (ID) removed：【141】。', '【admin】：');
INSERT INTO `operater_log` VALUES (508, '2024-04-27 11:37:47', '2024-04-27 11:37:47', 'Occupation Category (ID) removed：【32】。', '【admin】：');
INSERT INTO `operater_log` VALUES (509, '2024-04-27 11:37:50', '2024-04-27 11:37:50', 'Occupation Category (ID) removed：【143】。', '【admin】：');
INSERT INTO `operater_log` VALUES (510, '2024-04-27 11:37:53', '2024-04-27 11:37:53', 'Occupation Category (ID) removed：【144】。', '【admin】：');
INSERT INTO `operater_log` VALUES (511, '2024-04-27 11:37:57', '2024-04-27 11:37:57', 'Occupation Category (ID) removed：【142】。', '【admin】：');
INSERT INTO `operater_log` VALUES (512, '2024-04-27 11:38:00', '2024-04-27 11:38:00', 'Occupation Category (ID) removed：【33】。', '【admin】：');
INSERT INTO `operater_log` VALUES (513, '2024-04-27 11:42:04', '2024-04-27 11:42:04', 'The occupational categories have been modified：【PositionCategory [parentId=PositionCategory [parentId=null, _parentId=null, name=Marketing and sales, url=], _parentId=12, name=Marketing, url=]】。', '【admin】：');
INSERT INTO `operater_log` VALUES (514, '2024-04-27 11:42:25', '2024-04-27 11:42:25', 'Occupation Category (ID) removed：【169】。', '【admin】：');
INSERT INTO `operater_log` VALUES (515, '2024-04-27 11:42:28', '2024-04-27 11:42:28', 'Occupation Category (ID) removed：【168】。', '【admin】：');
INSERT INTO `operater_log` VALUES (516, '2024-04-27 11:42:30', '2024-04-27 11:42:30', 'Occupation Category (ID) removed：【167】。', '【admin】：');
INSERT INTO `operater_log` VALUES (517, '2024-04-27 11:42:35', '2024-04-27 11:42:35', 'Occupation Category (ID) removed：【166】。', '【admin】：');
INSERT INTO `operater_log` VALUES (518, '2024-04-27 11:42:37', '2024-04-27 11:42:37', 'Occupation Category (ID) removed：【165】。', '【admin】：');
INSERT INTO `operater_log` VALUES (519, '2024-04-27 11:42:40', '2024-04-27 11:42:40', 'Occupation Category (ID) removed：【37】。', '【admin】：');
INSERT INTO `operater_log` VALUES (520, '2024-04-27 11:43:13', '2024-04-27 11:43:13', 'The occupational categories have been modified：【PositionCategory [parentId=PositionCategory [parentId=null, _parentId=null, name=Function, url=], _parentId=13, name=HR, url=]】。', '【admin】：');
INSERT INTO `operater_log` VALUES (521, '2024-04-27 11:43:33', '2024-04-27 11:43:33', 'Occupation Category (ID) removed：【187】。', '【admin】：');
INSERT INTO `operater_log` VALUES (522, '2024-04-27 11:43:35', '2024-04-27 11:43:35', 'Occupation Category (ID) removed：【186】。', '【admin】：');
INSERT INTO `operater_log` VALUES (523, '2024-04-27 11:43:38', '2024-04-27 11:43:38', 'Occupation Category (ID) removed：【185】。', '【admin】：');
INSERT INTO `operater_log` VALUES (524, '2024-04-27 11:43:42', '2024-04-27 11:43:42', 'Occupation Category (ID) removed：【184】。', '【admin】：');
INSERT INTO `operater_log` VALUES (525, '2024-04-27 11:43:45', '2024-04-27 11:43:45', 'Occupation Category (ID) removed：【41】。', '【admin】：');
INSERT INTO `operater_log` VALUES (526, '2024-04-27 11:59:09', '2024-04-27 11:59:09', 'The occupational categories have been modified：【PositionCategory [parentId=PositionCategory [parentId=PositionCategory [parentId=null, _parentId=null, name=Technology, url=], _parentId=8, name=Backend Dev, url=], _parentId=14, name=.NET developer, url=/home/position/list?search_value=.NET developer]】。', '【admin】：');
INSERT INTO `operater_log` VALUES (527, '2024-04-27 12:05:14', '2024-04-27 12:05:14', 'Occupation Category (ID) removed：【176】。', '【admin】：');
INSERT INTO `operater_log` VALUES (528, '2024-04-27 12:06:14', '2024-04-27 12:06:14', 'Occupation Category (ID) removed：【115】。', '【admin】：');
INSERT INTO `operater_log` VALUES (529, '2024-04-27 12:06:27', '2024-04-27 12:06:27', 'Occupation Category (ID) removed：【117】。', '【admin】：');
INSERT INTO `operater_log` VALUES (530, '2024-04-27 12:42:11', '2024-04-27 12:42:11', 'Occupation Category (ID) removed：【173】。', '【admin】：');
INSERT INTO `operater_log` VALUES (531, '2024-04-27 14:21:41', '2024-04-27 14:21:41', 'Logged in to the background management system。', '【admin】：');
INSERT INTO `operater_log` VALUES (532, '2024-04-27 14:22:01', '2024-04-27 14:22:01', 'The occupational categories have been modified：【PositionCategory [parentId=PositionCategory [parentId=null, _parentId=null, name=Technology, url=], _parentId=8, name=Mobile Dev, url=]】。', '【admin】：');
INSERT INTO `operater_log` VALUES (533, '2024-04-27 16:30:43', '2024-04-27 16:30:43', 'Logged in to the background management system。', '【admin】：');
INSERT INTO `operater_log` VALUES (534, '2024-04-27 16:31:10', '2024-04-27 16:31:10', 'Logged in to the background management system。', '【admin】：');
INSERT INTO `operater_log` VALUES (535, '2024-04-27 19:55:46', '2024-04-27 19:55:46', 'Logged in to the background management system。', '【admin】：');
INSERT INTO `operater_log` VALUES (536, '2024-04-27 20:25:22', '2024-04-27 20:25:22', 'Logged in to the background management system。', '【admin】：');
INSERT INTO `operater_log` VALUES (537, '2024-04-28 12:14:33', '2024-04-28 12:14:33', 'Logged in to the background management system。', '【admin】：');
INSERT INTO `operater_log` VALUES (538, '2024-04-28 12:28:12', '2024-04-28 12:28:12', 'Logged in to the background management system。', '【admin】：');
INSERT INTO `operater_log` VALUES (539, '2024-04-28 18:24:50', '2024-04-28 18:24:50', 'Logged in to the background management system。', '【admin】：');
INSERT INTO `operater_log` VALUES (540, '2024-05-02 00:06:42', '2024-05-02 00:06:42', 'Logged in to the background management system。', '【admin】：');
INSERT INTO `operater_log` VALUES (541, '2024-05-02 00:25:14', '2024-05-02 00:25:14', 'Logged in to the background management system。', '【admin】：');
INSERT INTO `operater_log` VALUES (542, '2024-05-02 00:33:54', '2024-05-02 00:33:54', 'Logged in to the background management system。', '【admin】：');
INSERT INTO `operater_log` VALUES (543, '2024-05-02 14:37:42', '2024-05-02 14:37:42', 'Logged in to the background management system。', '【admin】：');
INSERT INTO `operater_log` VALUES (544, '2024-05-03 00:50:47', '2024-05-03 00:50:47', 'Logged in to the background management system。', '【admin】：');
INSERT INTO `operater_log` VALUES (545, '2024-05-03 11:00:42', '2024-05-03 11:00:42', 'Logged in to the background management system。', '【admin】：');
INSERT INTO `operater_log` VALUES (546, '2024-05-04 12:37:04', '2024-05-04 12:37:04', 'Logged in to the background management system。', '【admin】：');

-- ----------------------------
-- Table structure for position
-- ----------------------------
DROP TABLE IF EXISTS `position`;
CREATE TABLE `position`  (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `create_time` datetime NOT NULL,
  `update_time` datetime NOT NULL,
  `address` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `advantage` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `city` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `degree` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `department` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `description` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `max_money` int NOT NULL,
  `min_money` int NOT NULL,
  `name` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `type` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `work_experience` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `work_type` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `company_id` bigint NULL DEFAULT NULL,
  `state` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `number` int NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `FKkpqfp6ontwcnqpkrfwv02iw1y`(`company_id` ASC) USING BTREE,
  CONSTRAINT `FKkpqfp6ontwcnqpkrfwv02iw1y` FOREIGN KEY (`company_id`) REFERENCES `company` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 29 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of position
-- ----------------------------
INSERT INTO `position` VALUES (1, '2023-12-15 17:04:05', '2024-04-27 12:13:42', 'No. 69 Bancang Street, Xuanwu District, Nanjing', 'Good pay, salary can be interviewed', 'Nanjing', 'doctor', 'Human Resources Management department', '1. Handle cash transactions accurately and efficiently, including deposits, withdrawals and transfers.<br/>2. Provide customers with quality face to face service, answer customers\' questions, and assist customers to complete transactions.<br/>3. Maintain and update customer account information to ensure the accuracy of account data.<br/>4. Responsible for daily cash settlement and reconciliation, ensure cash balance is consistent with system records.<br/>5. Identify and report any suspicious or unusual transactions to ensure compliance and security.<br/>6. Assist other team members in dealing with financial issues and provide necessary support.', 13, 10, 'Teller', 'Finance', '5-10 years', '', 8, 'effective', 2);
INSERT INTO `position` VALUES (3, '2023-12-15 17:04:05', '2024-05-02 20:18:22', '319 Hubin East Road, Xiamen City', 'Suitable for senior students internship, the treatment is also good', 'Xiamen ', 'junior college', 'Development department', '1. Design and develop high-quality Web front-end interfaces to ensure compatibility on different devices and browsers.<br/>2. Work closely with UI/UX designers, back-end developers, and product managers to turn designs into efficient, maintainable front-end code.<br/>3. Optimize front-end performance and response speed to improve user experience.<br/>4. Debug and solve problems and errors in front-end code.<br/>5. Participate in the selection of front-end technology and promote the improvement and innovation of team technology.<br/>6. Write and maintain development documents, participate in code review to improve code quality.', 8, 5, 'Web FED', 'Frontend Dev', 'Fresh graduates', 'full-time', 8, 'effective', 2);
INSERT INTO `position` VALUES (7, '2023-12-15 17:04:05', '2024-04-27 12:13:42', '22 Guangfu Avenue, Nanan District, Chongqing', 'There are specialized industry leaders to take you hand in hand to do projects, treatment is also good', 'Chongqing', 'undergraduate course', 'Development department', '1. Participate in user demand research, record user needs in detail;<br/>2. NET programming language to write a complete code to achieve the functions;<br/>3. Responsible for the optimization and maintenance of website code to ensure the operation efficiency of the website;<br/>4. Completed the daily programming and development technical work of the company\'s website business on time and in accordance with quality and quantity;<br/>5. Responsible for the continuous optimization and improvement of the system or software.<br/>Job Requirements:<br/>1. More than one year. NET development experience, working experience as a lead programmer;<br/>2. Master ASP.NET, C#, CSS, JavaScript, XML, jQuery,AJAX, JOSN and other development technologies;<br/>3. Familiar with relational database knowledge, proficient in writing SQL language and stored procedure; Proficient in SQL Server database or Oracle database;<br/>4. Excellent object-oriented design experience, familiar with common design patterns;<br/>5. Have good software engineering knowledge and quality awareness, and have excellent programming style habits.', 7, 5, '.NET developer', 'Backend Dev', 'Less than 1 year', 'full-time', 8, 'effective', 0);
INSERT INTO `position` VALUES (8, '2023-12-14 17:04:05', '2024-04-27 12:13:42', 'No.11 Duanjie, Daoli District, Harbin City', 'You can learn a lot', 'Harbin', 'undergraduate course', 'Development department', '1. Responsible for assisting bai Technical Director in technical evaluation, bug handling and code development;<br/>2. Responsible for the design and development of website database zhi, columns and program modules;<br/>3. Responsible for erp, oa, crm system and other project development according to company requirements;<br/>4. Regularly communicate with training department and testing department to obtain feedback and handle accordingly;<br/>5. Complete the company\'s assigned level development, system evaluation and other tasks on time and in good quality;<br/>6. Regularly maintain the website program and deal with the feedback of system bugs;<br/>7. Preparation of website program development documents.', 7, 5, 'PHP developer', 'Backend Dev', 'Fresh graduates', 'full-time', 8, 'effective', 1);
INSERT INTO `position` VALUES (9, '2023-12-14 17:04:05', '2024-05-04 12:48:52', 'No.155 Dongxin Road, Xiacheng District, Hangzhou', 'Professional training, increased pay, more benefits', 'Hangzhou', 'junior college', 'Administrative department', '1. Reception of visiting guests.<br/>2. Handle calls and convey information in a correct and timely manner.<br/>3. Send and receive company letters, faxes, newspapers, magazines, etc.<br/>4. Book hotels and flights.<br/>5. Application and control of office stationery.<br/>6. Meeting room use reservation and arrangement.<br/>7. Monthly attendance records and statistics.<br/>8. Other daily administrative work.', 8, 5, 'Invite for a job', 'HR', 'Less than 1 year', 'full-time', 10, 'effective', 0);
INSERT INTO `position` VALUES (12, '2023-12-14 17:04:05', '2024-05-04 12:48:55', 'No. 168 Fuqiao Street, Licheng District, Quanzhou City', 'Quick start, five insurance, one fund, lots of benefits', 'Quanzhou', 'junior college', 'Design department', 'The duties of a web designer are as follows:<br/>1. Responsible for page design and aesthetic optimization of the company\'s website;<br/>2, responsible for the design and production of various thematic templates on the website;<br/>3, responsible for all kinds of activities of the website advertising, slogan picture design;<br/>4. Responsible for the art design of website products, and have a deeper understanding of interactive experience;<br/>5. Continuously optimize the page to continuously improve the user experience of visitors;<br/>6, write reusable user interface components;<br/>7, cooperate with other technical departments to do front-end development technical support.', 7, 5, 'Web product designer', 'Designer', 'Fresh graduates', 'full-time', 10, 'effective', 0);
INSERT INTO `position` VALUES (13, '2023-12-15 17:04:05', '2024-04-27 12:13:42', 'Room 4201-4204, World Trade Building, No. 686 Jiefang Avenue, Hankou, Wuhan', 'The work is not too tiring, the salary is good, and there is professional training', 'Wuhan ', 'master', 'Editorial department', '1. Adhere to the policy of running the journal, and be responsible for the academic, editorial and publishing quality of the journal.<br/>2. Assist the chief editor in the work of the editorial committee.<br/>3. Assist and guide the editorial department to formulate work plans, complete the overall design and orientation, and check the implementation.<br/>4. Responsible for the review of two proofs of periodicals.<br/>5. Pay attention to the development trend of journal work, strengthen information feedback, learn from advanced methods at home and abroad, and pay attention to improving the academic influence of journals at home and abroad.', 9, 7, 'Associate editor', 'Editor', '1-3 years', 'full-time', 11, 'effective', 0);
INSERT INTO `position` VALUES (14, '2023-12-15 17:04:05', '2024-04-27 12:13:42', 'Yongan Road Roman Garden, Heping District, Tianjin', 'Five insurance and one fund, good treatment, dividend', 'Tianjin', 'master', 'Development department', 'Job responsibilities:<br/>1. Responsible for the operation, maintenance, management and performance tuning of the database system (SQL Server);<br/>2. Responsible for the deployment, monitoring and tuning of system software and hardware, including JVM tuning, middleware tuning and optimization of underlying hardware devices;<br/>3, responsible for key data backup and recovery, design recoverable backup strategy.<br/>Job Requirements:<br/>1, proficient in SQL Server, Oracle database operating mechanism and architecture and system tuning; 2, skilled installation and establishment of database Server and cluster system, dual-system hot backup, including SQL Server and Oracle; 3, can provide database technical support to developers, and optimize the sql statements called in the program development; 4, familiar with Linux, FreeBSD and other operating systems installation, configuration and use; 5, have a certain basis of JAVA development programming, as well as database scripting ability, master database maintenance related scripting tools; 6, familiar with the database system monitoring, can find and solve problems in time; 7, in-depth understanding of storage systems, proficient in application-oriented IO performance optimization.', 12, 8, 'SQLServer designer', 'DBA', '5-10 years', 'full-time', 11, 'effective', 0);
INSERT INTO `position` VALUES (15, '2023-12-15 17:04:05', '2024-04-27 12:13:42', '486 North Shaanxi Road, Jing \'an District, Shanghai', 'Higher pay, more benefits, more security', 'Shanghai', 'doctor', 'administrative department', 'The main responsibilities are:<br/>1. Responsible for the management of project initiation, demand research, demand analysis, system development, system deployment and implementation;<br/>2. Responsible for project team management and project development, including determining the work arrangement of project personnel;<br/>3. Prepare project development plan; Identify and control project risks; Effectively control the project development process and project quality;<br/>4. Participate in project review and evaluation meetings;<br/>5. Effectively manage project resources, provide sufficient equipment, effective tools and project development process for all project members;<br/>6. Responsible for communicating with customers, effectively controlling customer needs, and solving quality problems and management problems encountered in project development;<br/>7. Responsible for the collection, sorting, filing and preservation of project materials.', 16, 13, 'Product manager', 'Manager', '5-10 years', 'full-time', 11, 'effective', 0);
INSERT INTO `position` VALUES (16, '2023-12-15 17:04:05', '2024-04-27 12:13:42', 'No.11, Hong Kong Middle Road, Shinan District, Qingdao', 'High salary, good benefits, good prospects', 'Qingdao', 'doctor', 'Development department', 'Job responsibilities:<br/>1. System architecture design, coding, debugging and maintenance upgrade;<br/>2. Responsible for writing documents and materials during project development.<br/>Job Requirements:<br/>1. Bachelor degree or above, more than two years of java development experience;<br/>2. Proficient in java development, master java multi-threaded concurrent processing and socket communication technology<br/>3. Familiar with application (Spring, Spring mvc, Spring boot, Hibernate/MyBatis)<br/>4. Proficient in Tomcat use and project release;<br/>', 11, 9, 'JavaProgrammer', 'Backend Dev', '3-5 years', 'full-time', 12, 'effective', 1);
INSERT INTO `position` VALUES (17, '2023-12-15 17:04:05', '2024-04-27 12:13:42', 'No. 1699 Jingdong Avenue, Nanchang High-tech Zone, Jiangxi Province', 'There are special training personnel to take you to get started, fast hand, practice for a few years can be converted', 'Nanchang', 'undergraduate course', 'Development department', 'Job responsibilities:<br/>1. Design and complete Android development according to product requirements<br/>2. Participate in product requirement analysis and technical implementation plan design<br/>3. Responsible for writing and maintaining technical documentation<br/>4. Development of an interactive mobile platform with html5<br/>Job Requirements:<br/>1. Bachelor degree or above, major in computer related<br/>2. More than 2 years of Android software development experience, at least 3 independently developed and launched apps<br/>3. Strong Java and object-oriented language capabilities,Android application development expert<br/>4. Excellent communication skills', 6, 4, 'Android developer', 'Mobile Dev', 'Fresh graduates', 'full-time', 12, 'effective', 0);
INSERT INTO `position` VALUES (18, '2023-12-15 17:04:05', '2024-04-27 12:13:42', 'No.35 Jinlin Road, Jianxin Town, Cangshan District, Fuzhou', 'A part-time job with few tasks and good pay is worth considering!', 'Fuzhou', 'master', 'Development department', 'Job Description:<br/>Mobile app Development:<br/>1. Design and develop apps on the IOS mobile terminal according to requirements;<br/>2. Participate in the interface development and architecture design of mobile terminal;<br/>3. Independently complete the development work, conduct module testing, and ensure the quality of the code;<br/>Job Requirements:<br/>1. Familiar with IOS network programming and UI framework, familiar with Xcode, interface Builder and other development tools;<br/>2. Proficient in XML, Json, familiar with encryption algorithm;<br/>3. Proficient in Object-c programming, familiar with iphone sdk and related development tools, familiar with the development process of IOS platform applications;<br/>4. Existing apps are preferred in Apple App store;<br/><br/>', 8, 6, 'IOS developer', 'Mobile Dev', '1-3 years', 'part-time job', 12, 'effective', 0);
INSERT INTO `position` VALUES (19, '2023-12-15 17:04:05', '2024-04-27 12:13:42', 'No.109 Fengcheng 8th Road, Xi \'an City', 'Fast promotion, good pay, five insurance and one fund', 'Xi \'an', 'doctor', 'Development department', 'Implement a best-in-class Web interface for the products and services offered on the site, optimize the code and maintain good compatibility;<br/>1. Design and development of the HTML5 development presentation layer and the architecture interacting with the front and back end;<br/>2.JavaScript program module development, general class library, framework writing;<br/>3. Use various Web technologies to simulate and develop product prototypes;<br/>4. Cooperate with background developers to realize product interface and functions;<br/>5.Web new technology research and information sorting;<br/>6. Proficient in HTML/XHTML, CSS, familiar with page architecture and layout, have a deep understanding of Web standards and label semantics;<br/>7. Proficient in Ajax, JavaScript(or ActionScript), DOM and other front-end technologies, master object-oriented programming ideas;<br/>8. Familiar with more than one background development language (such as PHP/Java or C/C++/.NET) and a database (such as MySQL/Oracle), with Linux system operation;', 10, 8, 'Html5 developer', 'Frontend Dev', '5-10 years', 'full-time', 9, 'effective', 0);
INSERT INTO `position` VALUES (20, '2023-12-15 17:04:05', '2024-04-27 12:13:42', 'No.104 Dongfeng Road, Xiangzhou District, Zhuhai City', 'High salary, more dividends, the company\'s development prospects are good!', 'Zhuhai', 'doctor', 'Product department', '1.responsible for product demand discovery and analysis, product function design;<br/>2. Continuously explore user needs for product innovation, rationally plan product development and function planning, coordinate and promote the implementation of product functions;<br/>3.pay attention to operational data, user research and feedback, and continue to optimize products;<br/>4. Pay attention to the situation of competitors and respond to market changes;<br/>5. Responsible for the overall and detailed design of product interface and interaction, and promote the continuous improvement of product interaction experience;<br/>6. Planned and managed the project schedule, promoted the technical realization of the project, and controlled the quality and efficiency of the project implementation;<br/>7. Guide and manage product designers, build high quality UI& interaction team;<br/>8.put forward constructive opinions on the long-term development strategy of the product, conducted relevant market research, and provided the corresponding basis for the company\'s decision-making level.<br/>', 14, 11, 'Product manager', 'Manager', '5-10 years', 'full-time', 9, 'effective', 0);
INSERT INTO `position` VALUES (21, '2023-12-15 17:04:05', '2024-04-27 12:13:42', '902, Block B, New Hongji Building, Haikou', 'Large dividends, good treatment, the company is large', 'Haikou', 'master', 'Sales department', '1. Under the leadership of sales headquarters, work closely with all departments to complete the work.<br/>2, strictly abide by the company\'s rules and regulations, everywhere play an exemplary role.<br/>3. Make sales plans.<br/>4. Determine sales policy.<br/>5. Design sales model.<br/>6. Recruitment, selection, training and deployment of sales staff.<br/>7. Investigation and evaluation of sales performance.<br/>8. Sales channel and customer management.<br/>9. Financial management, countermeasures to prevent bad debts and account recovery.<br/>10, timely summary of sales, report and put forward reasonable suggestions.', 9, 6, 'Sales manager', 'Sell', 'Less than 1 year', 'full-time', 9, 'effective', 1);
INSERT INTO `position` VALUES (22, '2023-12-15 17:04:05', '2024-04-27 12:13:42', '139 Shulin Street, Xishan District, Kunming City, Yunnan Province', 'The workload is small, the pay is not cheap, the position is urgent shortage of talents, you can apply for the top', 'Kunming', 'master', 'Human resources department', 'Job responsibilities of Personnel Department:<br/>1, responsible for the company\'s human resources work planning, establishment and implementation of recruitment, training, attendance, labor discipline and other personnel procedures or rules and regulations;<br/>2. Responsible for formulating and improving the company\'s position establishment, coordinating the effective development and utilization of manpower by all departments of the company to meet the company\'s operation and management needs;<br/>3, according to the existing knitting and business development needs, coordinate and statistics of the recruitment needs of various departments, prepare annual/monthly personnel recruitment plan, and implement it after approval;<br/>4, do a good job of the job description, and according to the company\'s position adjustment team to make corresponding changes, to ensure that the job description is consistent with the actual;<br/>5, responsible for the entry procedures, responsible for the management and storage of personnel files, the signing of employment contracts;', 8, 6, 'Human resources', 'HR', '1-3 years', 'full-time', 14, 'effective', 1);
INSERT INTO `position` VALUES (23, '2023-12-15 17:04:05', '2024-04-27 12:13:42', 'No. 1 Xinjinkui Road, Binhu District, Wuxi City, Jiangsu Province', 'Generous treatment, fast promotion, good prospects!', 'Wuxi', 'doctor', 'Public relations department', 'Media manager job responsibilities:<br/>1. Participate in the organization and implementation of company-made advertising plans and zhi expenses and budgets;<br/>2. Coordinate and guide the advertising, promotion, public relations and other work of agents around the country;<br/>3. Supervise the implementation of vi systems in various places, exercise the veto power that does not meet the requirements, and instruct regular rectification;<br/>4. Evaluate the effectiveness of the company\'s advertising;<br/>5. Make annual media publicity plan;<br/>6. Maintain media relations and hold regular media meetings;<br/>7. Make relevant plans for the launch and promotion of new products;<br/>8. Responsible for shooting the company\'s advertising films and product feature films (brand film, product film, product function feature film).', 11, 9, 'Media manager', 'Public relation', '5-10 years', 'full-time', 14, 'effective', 1);
INSERT INTO `position` VALUES (24, '2023-12-15 17:04:05', '2024-05-02 19:32:11', '18 Yuxiu Road, Yunyan District, Guiyang City, Guizhou Province', 'Get started fast, there are professional big guys to take you to get started, do well can be turned!', 'Guiyang', 'junior college', 'Marketing Department', 'Marketing Responsibilities:<br/>(1) Correctly grasp the market and reasonably assist the General manager office to set sales targets.<br/>(2) Determine sales strategies and establish sales plans, and take actions to implement them.<br/>(3) Make good use of the salesman\'s ability and trigger the salesman\'s fighting spirit.<br/>(4) Manage sales activities, job assignment and internal communication.<br/>(5) Effectively organize sales affairs, statistics, analysis and workload measurement<br/>(6) Benefit planning and management.<br/>(7) Summarize and report the situation timely and submit it to the General manager\'s office', 5, 3, 'Marketing promotion', 'Marketing', 'Less than 1 year', 'full-time', 14, 'effective', 1);
INSERT INTO `position` VALUES (25, '2023-12-15 17:04:05', '2024-04-27 12:13:42', 'No.56 Huaihe West Road, Zhongyuan District, Zhengzhou City', 'Job shortage of data analyst talent, pay excellent!', 'Zhengzhou', 'doctor', 'Research department', 'Data analyst recruitment requirements<br/>1, 3 years or above relevant working experience, well-known education and Internet company working experience is preferred<br/>2, good logical thinking skills, communication skills and ability to work under pressure<br/>3, proficient in SQL & Hive SQL, familiar with a scripting language, such as Python<br/>4, with an open team mentality, and hard work state<br/>5, applied mathematics, statistics, e-commerce, computer and other related professional background, bachelor degree or above, more than 5 years of data analysis experience<br/>6, Have good communication skills and expression skills, can independently carry out business research, data analysis, report writing work<br/>7. Strong data sensitivity, good communication and coordination skills, able to work under pressure<br/>8. Have professional business research and analysis ability, and the ability to find problems timely according to business data changes<br/>9, proficient in operating Excel, Powerpoint and other software, familiar with at least one database, familiar with SQL/ SAS, SPSS and other professional statistical analysis tools<br/>10, strong work initiative and ability to work under pressure, work carefully and patiently, have a sense of responsibility, have a strong sense of confidentiality, strong sense of teamwork<br/>11. Familiar with common data mining algorithms is preferred, Internet work experience is preferred', 14, 10, 'Data analyst', 'User research', 'Over 10 years', 'full-time', 15, 'effective', 0);

-- ----------------------------
-- Table structure for position_category
-- ----------------------------
DROP TABLE IF EXISTS `position_category`;
CREATE TABLE `position_category`  (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `create_time` datetime NOT NULL,
  `update_time` datetime NOT NULL,
  `name` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `url` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `_parent_id` bigint NULL DEFAULT NULL,
  `parent_id` bigint NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `FKfa2drl4ultklu8022uwenvfbh`(`parent_id` ASC) USING BTREE,
  CONSTRAINT `FKfa2drl4ultklu8022uwenvfbh` FOREIGN KEY (`parent_id`) REFERENCES `position_category` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 188 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of position_category
-- ----------------------------
INSERT INTO `position_category` VALUES (8, '2023-07-09 18:13:17', '2024-04-16 17:40:27', 'Technology', '', NULL, NULL);
INSERT INTO `position_category` VALUES (9, '2023-07-09 18:13:17', '2024-04-16 20:59:48', 'Product', '', NULL, NULL);
INSERT INTO `position_category` VALUES (10, '2023-07-09 18:13:17', '2024-04-20 10:13:34', 'Design', '', NULL, NULL);
INSERT INTO `position_category` VALUES (11, '2023-07-09 18:13:17', '2024-04-16 21:25:53', 'Operate', '', NULL, NULL);
INSERT INTO `position_category` VALUES (12, '2023-07-09 18:13:17', '2024-04-16 21:09:52', 'Marketing and sales', '', NULL, NULL);
INSERT INTO `position_category` VALUES (13, '2023-07-09 18:13:17', '2024-04-16 21:00:56', 'Function', '', NULL, NULL);
INSERT INTO `position_category` VALUES (14, '2023-07-09 18:13:17', '2024-04-16 17:39:38', 'Backend Dev', '', 8, 8);
INSERT INTO `position_category` VALUES (15, '2023-07-09 18:13:17', '2024-04-27 14:22:01', 'Mobile Dev', '', 8, 8);
INSERT INTO `position_category` VALUES (16, '2023-07-09 18:13:17', '2024-04-16 17:50:45', 'Frontend Dev', '', 8, 8);
INSERT INTO `position_category` VALUES (17, '2023-07-09 18:13:17', '2024-04-16 18:01:38', 'Test', '', 8, 8);
INSERT INTO `position_category` VALUES (18, '2023-07-09 18:13:17', '2024-04-16 20:43:51', 'OPS', '', 8, 8);
INSERT INTO `position_category` VALUES (20, '2023-07-09 18:13:17', '2020-07-09 18:17:52', 'DBA', '', 8, 8);
INSERT INTO `position_category` VALUES (23, '2023-07-09 18:13:17', '2024-04-27 11:35:39', 'Manager', '', 9, 9);
INSERT INTO `position_category` VALUES (24, '2023-07-09 18:13:17', '2024-04-27 11:35:48', 'Designer', '', 9, 9);
INSERT INTO `position_category` VALUES (26, '2023-07-09 18:13:17', '2024-04-20 10:13:45', 'Visual design', '', 10, 10);
INSERT INTO `position_category` VALUES (27, '2023-07-09 18:13:17', '2024-04-27 11:37:04', 'Interaction', '', 10, 10);
INSERT INTO `position_category` VALUES (28, '2023-07-09 18:13:17', '2024-04-20 10:20:01', 'User research', '', 10, 10);
INSERT INTO `position_category` VALUES (30, '2023-07-09 18:13:17', '2024-04-16 21:26:09', 'Operate', '', 11, 11);
INSERT INTO `position_category` VALUES (31, '2023-07-09 18:13:17', '2024-04-16 21:28:46', 'Editor', '', 11, 11);
INSERT INTO `position_category` VALUES (34, '2023-07-09 18:13:17', '2024-04-27 11:42:04', 'Marketing', '', 12, 12);
INSERT INTO `position_category` VALUES (35, '2023-07-09 18:13:17', '2024-04-16 21:16:40', 'Public relation', '', 12, 12);
INSERT INTO `position_category` VALUES (36, '2023-07-09 18:13:17', '2024-04-16 21:19:56', 'Sell', '', 12, 12);
INSERT INTO `position_category` VALUES (38, '2023-07-09 18:13:17', '2024-04-27 11:43:13', 'HR', '', 13, 13);
INSERT INTO `position_category` VALUES (39, '2023-07-09 18:13:17', '2024-04-16 21:03:41', 'Administartion', '', 13, 13);
INSERT INTO `position_category` VALUES (40, '2023-07-09 18:13:17', '2024-04-16 21:05:53', 'Finance', '', 13, 13);
INSERT INTO `position_category` VALUES (42, '2023-07-09 18:13:17', '2024-04-14 18:05:47', 'JavaProgrammer', '/home/position/list?search_value=JavaProgrammer', 14, 14);
INSERT INTO `position_category` VALUES (43, '2023-07-09 18:13:17', '2024-04-16 17:35:06', 'C++ developer', '/home/position/list?search_value=C++ developer', 14, 14);
INSERT INTO `position_category` VALUES (44, '2023-07-09 18:13:17', '2024-04-16 17:35:27', 'PHP developer', '/home/position/list?search_value=PHP developer', 14, 14);
INSERT INTO `position_category` VALUES (45, '2023-07-09 18:13:17', '2024-04-16 17:36:16', 'Data mining', '/home/position/list?search_value=Data mining', 14, 14);
INSERT INTO `position_category` VALUES (46, '2023-07-09 18:13:17', '2024-04-16 17:40:04', 'C Developer', '/home/position/list?search_value=C Developer', 14, 14);
INSERT INTO `position_category` VALUES (47, '2023-07-09 18:13:17', '2024-04-16 17:40:54', ' C# developer', '/home/position/list?search_value= C# developer', 14, 14);
INSERT INTO `position_category` VALUES (48, '2023-07-09 18:13:17', '2024-04-27 11:59:09', '.NET developer', '/home/position/list?search_value=.NET developer', 14, 14);
INSERT INTO `position_category` VALUES (49, '2023-07-09 18:13:17', '2024-04-20 10:31:41', 'Hadoop developer', '/home/position/list?search_value=Hadoop developer', 14, 14);
INSERT INTO `position_category` VALUES (50, '2023-07-09 18:13:17', '2024-04-16 17:41:42', 'Python developer', '/home/position/list?search_value=Python developer', 14, 14);
INSERT INTO `position_category` VALUES (51, '2023-07-09 18:13:17', '2024-04-16 17:46:25', 'Delphi developer', '/home/position/list?search_value=Delphi developer', 14, 14);
INSERT INTO `position_category` VALUES (52, '2023-07-09 18:13:17', '2024-04-20 10:31:29', 'VB developer', '/home/position/list?search_value=VB developer', 14, 14);
INSERT INTO `position_category` VALUES (53, '2023-07-09 18:13:17', '2024-04-16 17:46:56', 'Perl developer', '/home/position/list?search_value=Perl developer', 14, 14);
INSERT INTO `position_category` VALUES (54, '2023-07-09 18:13:17', '2024-04-20 10:29:39', 'Ruby developer', '/home/position/list?search_value=Ruby developer', 14, 14);
INSERT INTO `position_category` VALUES (55, '2023-07-09 18:13:17', '2024-04-16 17:47:31', 'Node.js developer', '/home/position/list?search_value=Node.js developer', 14, 14);
INSERT INTO `position_category` VALUES (56, '2023-07-09 18:13:17', '2024-04-20 10:29:27', 'HTML5 developer', '/home/position/list?search_value=HTML5 developer', 15, 15);
INSERT INTO `position_category` VALUES (57, '2023-07-09 18:13:17', '2024-04-20 10:29:17', 'Android developer', '/home/position/list?search_value=Android developer', 15, 15);
INSERT INTO `position_category` VALUES (58, '2023-07-09 18:13:17', '2024-04-20 10:29:05', 'IOS developer', '/home/position/list?search_value=IOS developer', 15, 15);
INSERT INTO `position_category` VALUES (59, '2023-07-09 18:13:17', '2024-04-16 17:49:55', 'WP developer', '/home/position/list?search_value=WP developer', 15, 15);
INSERT INTO `position_category` VALUES (60, '2023-07-09 18:13:17', '2024-04-16 17:53:55', 'Web FED', '/home/position/list?search_value=Web FED', 16, 16);
INSERT INTO `position_category` VALUES (61, '2023-07-09 18:13:17', '2024-04-20 10:28:39', 'Flash developer', '/home/position/list?search_value=Flash developer', 16, 16);
INSERT INTO `position_category` VALUES (62, '2023-07-09 18:13:17', '2024-04-20 10:28:48', 'Html5 developer', '/home/position/list?search_value=Html5 developer', 16, 16);
INSERT INTO `position_category` VALUES (63, '2023-07-09 18:13:17', '2024-04-16 17:59:49', 'JavaScript Dev', '/home/position/list?search_value=JavaScript Dev', 16, 16);
INSERT INTO `position_category` VALUES (64, '2023-07-09 18:13:17', '2024-04-16 18:00:11', 'U3D developer', '/home/position/list?search_value=U3D developer', 16, 16);
INSERT INTO `position_category` VALUES (66, '2023-07-09 18:13:17', '2024-04-16 18:02:03', 'Test engineer', '/home/position/list?search_value=Test engineer', 17, 17);
INSERT INTO `position_category` VALUES (67, '2023-07-09 18:13:17', '2024-04-16 20:41:43', 'Automated tester', '/home/position/list?search_value=Automated tester', 17, 17);
INSERT INTO `position_category` VALUES (68, '2023-07-09 18:13:17', '2024-04-16 20:42:08', 'Functional tester', '/home/position/list?search_value=Functional tester', 17, 17);
INSERT INTO `position_category` VALUES (69, '2023-07-09 18:13:17', '2024-04-16 20:42:34', 'Performance tester', '/home/position/list?search_value=Performance tester', 17, 17);
INSERT INTO `position_category` VALUES (71, '2023-07-09 18:13:17', '2024-04-16 20:44:32', 'OPS engineer', '/home/position/list?search_value=OPS engineer', 18, 18);
INSERT INTO `position_category` VALUES (72, '2023-07-09 18:13:17', '2024-04-16 20:48:40', 'OPS development engineer', '/home/position/list?search_value=OPS development engineer', 18, 18);
INSERT INTO `position_category` VALUES (73, '2023-07-09 18:13:17', '2024-04-16 20:49:05', 'Network engineer', '/home/position/list?search_value=Network engineer', 18, 18);
INSERT INTO `position_category` VALUES (74, '2023-07-09 18:13:17', '2024-04-16 20:49:40', 'Systems engineer', '/home/position/list?search_value=Systems engineer', 18, 18);
INSERT INTO `position_category` VALUES (75, '2023-07-09 18:13:17', '2024-04-16 20:49:59', 'IT Support Engineer', '/home/position/list?search_value=IT Support Engineer', 18, 18);
INSERT INTO `position_category` VALUES (76, '2023-07-09 18:13:17', '2024-04-20 10:27:32', 'MySQL designer', '/home/position/list?search_value=MySQL designer', 20, 20);
INSERT INTO `position_category` VALUES (77, '2023-07-09 18:13:17', '2024-04-20 10:27:45', 'SQLServer designer', '/home/position/list?search_value=SQLServer designer', 20, 20);
INSERT INTO `position_category` VALUES (78, '2023-07-09 18:13:17', '2024-04-20 10:27:56', 'Oracle designer', '/home/position/list?search_value=Oracle designer', 20, 20);
INSERT INTO `position_category` VALUES (79, '2023-07-09 18:13:17', '2024-04-20 10:28:06', 'DB2 designer', '/home/position/list?search_value=DB2 designer', 20, 20);
INSERT INTO `position_category` VALUES (80, '2023-07-09 18:13:17', '2024-04-20 10:28:16', 'MongoDB designer', '/home/position/list?search_value=MongoDB designer', 20, 20);
INSERT INTO `position_category` VALUES (88, '2023-07-09 18:13:17', '2024-04-20 10:22:34', 'Product manager', '/home/position/list?search_value=Product manager', 23, 23);
INSERT INTO `position_category` VALUES (89, '2023-07-09 18:13:17', '2024-04-20 10:25:50', 'Web product manager', '/home/position/list?search_value=Web product manager', 23, 23);
INSERT INTO `position_category` VALUES (90, '2023-07-09 18:13:17', '2024-04-20 10:25:29', 'Mobile product manager', '/home/position/list?search_value=Mobile product manager', 23, 23);
INSERT INTO `position_category` VALUES (91, '2023-07-09 18:13:17', '2024-04-20 10:24:52', 'Product assistant', '/home/position/list?search_value=Product assistant', 23, 23);
INSERT INTO `position_category` VALUES (92, '2023-07-09 18:13:17', '2024-04-20 10:25:12', 'Data product manager', '/home/position/list?search_value=Data product manager', 23, 23);
INSERT INTO `position_category` VALUES (93, '2023-07-09 18:13:17', '2024-04-20 10:26:05', 'E-commerce product manager', '/home/position/list?search_value=E-commerce product manager', 23, 23);
INSERT INTO `position_category` VALUES (94, '2023-07-09 18:13:17', '2024-04-20 10:26:16', 'Game planning', '/home/position/list?search_value=Game planning', 23, 23);
INSERT INTO `position_category` VALUES (95, '2023-07-09 18:13:17', '2024-04-20 10:26:39', 'Web product designer', '/home/position/list?search_value=Web product designer', 24, 24);
INSERT INTO `position_category` VALUES (96, '2023-07-09 18:13:17', '2024-04-20 10:26:47', 'Wireless product designer', '/home/position/list?search_value=Wireless product designer', 24, 24);
INSERT INTO `position_category` VALUES (99, '2023-07-09 18:13:17', '2024-04-20 10:13:57', 'Visual designer', '/home/position/list?search_value=Visual designer', 26, 26);
INSERT INTO `position_category` VALUES (100, '2023-07-09 18:13:17', '2024-04-20 10:14:08', 'Web designer', '/home/position/list?search_value=Web designer', 26, 26);
INSERT INTO `position_category` VALUES (101, '2023-07-09 18:13:17', '2024-04-20 10:15:42', 'Flash designer', '/home/position/list?search_value=Flash designer', 26, 26);
INSERT INTO `position_category` VALUES (102, '2023-07-09 18:13:17', '2024-04-20 10:16:05', 'APP designer', '/home/position/list?search_value=APP designer', 26, 26);
INSERT INTO `position_category` VALUES (103, '2023-07-09 18:13:17', '2024-04-20 10:16:15', 'UI designer', '/home/position/list?search_value=UI designer', 26, 26);
INSERT INTO `position_category` VALUES (104, '2023-07-09 18:13:17', '2024-04-20 10:16:25', 'Graphic designer', '/home/position/list?search_value=Graphic designer', 26, 26);
INSERT INTO `position_category` VALUES (105, '2023-07-09 18:13:17', '2024-04-20 10:16:35', 'Graphic Designer (2D/3D)', '/home/position/list?search_value=Graphic Designer (2D/3D)', 26, 26);
INSERT INTO `position_category` VALUES (106, '2023-07-09 18:13:17', '2024-04-20 10:16:44', 'Advertising designer', '/home/position/list?search_value=Advertising designer', 26, 26);
INSERT INTO `position_category` VALUES (107, '2023-07-09 18:13:17', '2024-04-20 10:16:53', 'Multimedia designer', '/home/position/list?search_value=Multimedia designer', 26, 26);
INSERT INTO `position_category` VALUES (108, '2023-07-09 18:13:17', '2024-04-20 10:17:03', 'Concept artist', '/home/position/list?search_value=Concept artist', 26, 26);
INSERT INTO `position_category` VALUES (109, '2023-07-09 18:13:17', '2024-04-20 10:17:17', 'Game effects designer', '/home/position/list?search_value=Game effects designer', 26, 26);
INSERT INTO `position_category` VALUES (110, '2023-07-09 18:13:17', '2024-04-20 10:17:27', 'Game interface designer', '/home/position/list?search_value=Game interface designer', 26, 26);
INSERT INTO `position_category` VALUES (111, '2023-07-09 18:13:17', '2024-04-20 10:17:35', 'Game scene designer', '/home/position/list?search_value=Game scene designer', 26, 26);
INSERT INTO `position_category` VALUES (112, '2023-07-09 18:13:17', '2024-04-20 10:17:44', 'Game character designer', '/home/position/list?search_value=Game character designer', 26, 26);
INSERT INTO `position_category` VALUES (113, '2023-07-09 18:13:17', '2024-04-20 10:17:53', 'Game action designer', '/home/position/list?search_value=Game action designer', 26, 26);
INSERT INTO `position_category` VALUES (114, '2023-07-09 18:13:17', '2024-04-20 10:18:20', 'Interaction designer', '/home/position/list?search_value=Interaction designer', 27, 27);
INSERT INTO `position_category` VALUES (116, '2023-07-09 18:13:17', '2024-04-20 10:18:56', 'Web interaction designer', '/home/position/list?search_value=Web interaction designer', 27, 27);
INSERT INTO `position_category` VALUES (118, '2023-07-09 18:13:17', '2024-04-20 10:20:13', 'Data analyst', '/home/position/list?search_value=Data analyst', 28, 28);
INSERT INTO `position_category` VALUES (119, '2023-07-09 18:13:17', '2024-04-20 10:20:21', 'User researcher', '/home/position/list?search_value=User researcher', 28, 28);
INSERT INTO `position_category` VALUES (120, '2023-07-09 18:13:17', '2024-04-20 10:20:31', 'Game numerical planner', '/home/position/list?search_value=Game numerical planner', 28, 28);
INSERT INTO `position_category` VALUES (129, '2023-07-09 18:13:17', '2024-04-16 21:26:21', 'User operation', '/home/position/list?search_value=User operation', 30, 30);
INSERT INTO `position_category` VALUES (130, '2023-07-09 18:13:17', '2024-04-16 21:26:32', 'Product operation', '/home/position/list?search_value=Product operation', 30, 30);
INSERT INTO `position_category` VALUES (131, '2023-07-09 18:13:17', '2024-04-16 21:26:54', 'Data operation', '/home/position/list?search_value=Data operation', 30, 30);
INSERT INTO `position_category` VALUES (132, '2023-07-09 18:13:17', '2024-04-16 21:27:41', 'Content operation', '/home/position/list?search_value=Content operation', 30, 30);
INSERT INTO `position_category` VALUES (133, '2023-07-09 18:13:17', '2024-04-16 21:27:53', 'Event operation', '/home/position/list?search_value=Event operation', 30, 30);
INSERT INTO `position_category` VALUES (134, '2023-07-09 18:13:17', '2024-04-16 21:28:03', 'Merchant operation', '/home/position/list?search_value=Merchant operation', 30, 30);
INSERT INTO `position_category` VALUES (135, '2023-07-09 18:13:17', '2024-04-16 21:28:13', 'Category operation', '/home/position/list?search_value=Category operation', 30, 30);
INSERT INTO `position_category` VALUES (136, '2023-07-09 18:13:17', '2024-04-16 21:28:22', 'Game operation', '/home/position/list?search_value=Game operation', 30, 30);
INSERT INTO `position_category` VALUES (137, '2023-07-09 18:13:17', '2024-04-16 21:28:32', 'Network promotion', '/home/position/list?search_value=Network promotion', 30, 30);
INSERT INTO `position_category` VALUES (138, '2023-07-09 18:13:17', '2024-04-16 21:29:05', 'Associate editor', '/home/position/list?search_value=Associate editor', 31, 31);
INSERT INTO `position_category` VALUES (139, '2023-07-09 18:13:17', '2024-04-20 10:13:02', 'Content editing', '/home/position/list?search_value=Content editing', 31, 31);
INSERT INTO `position_category` VALUES (145, '2023-07-09 18:13:17', '2024-04-16 21:10:18', 'Marketing', '/home/position/list?search_value=Marketing', 34, 34);
INSERT INTO `position_category` VALUES (146, '2023-07-09 18:13:17', '2024-04-16 21:10:38', 'Market planning', '/home/position/list?search_value=Market planning', 34, 34);
INSERT INTO `position_category` VALUES (147, '2023-07-09 18:13:17', '2024-04-16 21:10:48', 'Marketing consultant', '/home/position/list?search_value=Marketing consultant', 34, 34);
INSERT INTO `position_category` VALUES (148, '2023-07-09 18:13:17', '2024-04-16 21:15:24', 'Marketing promotion', '/home/position/list?search_value=Marketing promotion', 34, 34);
INSERT INTO `position_category` VALUES (149, '2023-07-09 18:13:17', '2020-07-17 14:58:48', 'SEO', '/home/position/list?search_value=SEO', 34, 34);
INSERT INTO `position_category` VALUES (150, '2023-07-09 18:13:17', '2020-07-17 14:58:48', 'SEM', '/home/position/list?search_value=SEM', 34, 34);
INSERT INTO `position_category` VALUES (151, '2023-07-09 18:13:17', '2024-04-16 21:15:37', 'Business channel', '/home/position/list?search_value=Business channel', 34, 34);
INSERT INTO `position_category` VALUES (152, '2023-07-09 18:13:17', '2024-04-16 21:15:48', 'Business data analysis', '/home/position/list?search_value=Business data analysis', 34, 34);
INSERT INTO `position_category` VALUES (153, '2023-07-09 18:13:17', '2024-04-16 21:16:05', 'Event planning', '/home/position/list?search_value=Event planning', 34, 34);
INSERT INTO `position_category` VALUES (154, '2023-07-09 18:13:17', '2024-04-16 21:16:56', 'Media manager', '/home/position/list?search_value=Media manager', 35, 35);
INSERT INTO `position_category` VALUES (155, '2023-07-09 18:13:17', '2024-04-16 21:19:27', 'Advertising coordination', '/home/position/list?search_value=Advertising coordination', 35, 35);
INSERT INTO `position_category` VALUES (156, '2023-07-09 18:13:17', '2024-04-16 21:19:42', 'Brand public relations', '/home/position/list?search_value=Brand public relations', 35, 35);
INSERT INTO `position_category` VALUES (157, '2023-07-09 18:13:17', '2024-04-16 21:20:56', 'Sales specialist', '/home/position/list?search_value=Sales specialist', 36, 36);
INSERT INTO `position_category` VALUES (158, '2023-07-09 18:13:17', '2024-04-16 21:21:09', 'Sales manager', '/home/position/list?search_value=Sales manager', 36, 36);
INSERT INTO `position_category` VALUES (159, '2023-07-09 18:13:17', '2024-04-16 21:22:28', 'Customer representative', '/home/position/list?search_value=Customer representative', 36, 36);
INSERT INTO `position_category` VALUES (160, '2023-07-09 18:13:17', '2024-04-16 21:22:42', 'Key account representative', '/home/position/list?search_value=Key account representative', 36, 36);
INSERT INTO `position_category` VALUES (161, '2023-07-09 18:13:17', '2024-04-16 21:24:03', 'BD Manager', '/home/position/list?search_value=BD Manager', 36, 36);
INSERT INTO `position_category` VALUES (162, '2023-07-09 18:13:17', '2024-04-16 21:24:12', 'Business channel', '/home/position/list?search_value=Business channel', 36, 36);
INSERT INTO `position_category` VALUES (163, '2023-07-09 18:13:17', '2024-04-16 21:24:21', 'Channel sales', '/home/position/list?search_value=Channel sales', 36, 36);
INSERT INTO `position_category` VALUES (164, '2023-07-09 18:13:17', '2024-04-16 21:24:31', 'Agent sales', '/home/position/list?search_value=Agent sales', 36, 36);
INSERT INTO `position_category` VALUES (170, '2023-07-09 18:13:17', '2024-04-16 21:01:26', 'Human resources', '/home/position/list?search_value=Human resources', 38, 38);
INSERT INTO `position_category` VALUES (171, '2023-07-09 18:13:17', '2024-04-16 21:01:41', 'Invite for a job', '/home/position/list?search_value=Invite for a job', 38, 38);
INSERT INTO `position_category` VALUES (172, '2023-07-09 18:13:17', '2020-07-17 14:58:48', 'HRBP', '/home/position/list?search_value=HRBP', 38, 38);
INSERT INTO `position_category` VALUES (174, '2023-07-09 18:13:17', '2024-04-16 21:02:08', 'Training manager', '/home/position/list?search_value=Training manager', 38, 38);
INSERT INTO `position_category` VALUES (175, '2023-07-09 18:13:17', '2024-04-16 21:02:22', 'Payroll manager', '/home/position/list?search_value=Payroll manager', 38, 38);
INSERT INTO `position_category` VALUES (177, '2023-07-09 18:13:17', '2024-04-16 21:04:02', 'Assistant', '/home/position/list?search_value=Assistant', 39, 39);
INSERT INTO `position_category` VALUES (178, '2023-07-09 18:13:17', '2024-04-16 21:04:18', 'Foreground', '/home/position/list?search_value=Foreground', 39, 39);
INSERT INTO `position_category` VALUES (179, '2023-07-09 18:13:17', '2024-04-16 21:04:38', 'Legal', '/home/position/list?search_value=Legal', 39, 39);
INSERT INTO `position_category` VALUES (180, '2023-07-09 18:13:17', '2024-04-16 21:05:25', 'Administartion', '/home/position/list?search_value=Administartion', 39, 39);
INSERT INTO `position_category` VALUES (181, '2023-07-09 18:13:17', '2024-04-16 21:06:15', 'Accountant', '/home/position/list?search_value=Accountant', 40, 40);
INSERT INTO `position_category` VALUES (182, '2023-07-09 18:13:17', '2024-04-16 21:06:33', 'Teller', '/home/position/list?search_value=Teller', 40, 40);
INSERT INTO `position_category` VALUES (183, '2023-07-09 18:13:17', '2024-04-16 21:06:55', 'Finace', '/home/position/list?search_value=Finace', 40, 40);

-- ----------------------------
-- Table structure for project_experience
-- ----------------------------
DROP TABLE IF EXISTS `project_experience`;
CREATE TABLE `project_experience`  (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `create_time` datetime NOT NULL,
  `update_time` datetime NOT NULL,
  `content` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `end_month` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `end_year` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `position` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `start_month` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `start_year` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `user_id` bigint NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `FK6mjj5tpthn13i66qsn48e0kbs`(`user_id` ASC) USING BTREE,
  CONSTRAINT `FK6mjj5tpthn13i66qsn48e0kbs` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of project_experience
-- ----------------------------
INSERT INTO `project_experience` VALUES (1, '2023-07-13 10:16:26', '2024-04-27 16:51:31', 'My first project. It\'s great!', '02', '2020', 'Tea mall ticketing system', 'Project director', '05', '2017', 1);
INSERT INTO `project_experience` VALUES (3, '2023-07-18 11:25:38', '2024-05-02 18:10:18', '', '01', '2016', 'springboot framework blog publishing system', 'project leader', '05', '2015', 10);

-- ----------------------------
-- Table structure for resume
-- ----------------------------
DROP TABLE IF EXISTS `resume`;
CREATE TABLE `resume`  (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `create_time` datetime NOT NULL,
  `update_time` datetime NOT NULL,
  `position_id` bigint NULL DEFAULT NULL,
  `user_id` bigint NULL DEFAULT NULL,
  `state` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `company_id` bigint NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `FKfs3x0i2rlgf11kqrgd22185mj`(`position_id` ASC) USING BTREE,
  INDEX `FKiqntisdlc7ta7sjr6d8rj5ae2`(`user_id` ASC) USING BTREE,
  INDEX `FK681rm6lwm57pvwir58nqboosr`(`company_id` ASC) USING BTREE,
  CONSTRAINT `FK681rm6lwm57pvwir58nqboosr` FOREIGN KEY (`company_id`) REFERENCES `company` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `FKfs3x0i2rlgf11kqrgd22185mj` FOREIGN KEY (`position_id`) REFERENCES `position` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `FKiqntisdlc7ta7sjr6d8rj5ae2` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 16 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of resume
-- ----------------------------
INSERT INTO `resume` VALUES (5, '2023-07-16 18:17:27', '2024-04-28 07:20:14', 1, 1, 'out', 8);
INSERT INTO `resume` VALUES (9, '2023-07-16 18:17:27', '2024-04-28 12:20:14', 21, 10, 'wait', 9);
INSERT INTO `resume` VALUES (10, '2023-07-16 18:17:27', '2024-04-28 12:20:14', 1, 10, 'effective', 8);
INSERT INTO `resume` VALUES (12, '2023-07-16 18:17:27', '2024-05-02 18:15:45', 16, 10, 'wait', 12);
INSERT INTO `resume` VALUES (14, '2024-05-02 19:32:11', '2024-05-02 19:32:11', 24, 10, 'wait', 14);
INSERT INTO `resume` VALUES (15, '2024-05-02 20:18:22', '2024-05-02 20:18:22', 3, 10, 'wait', 8);

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user`  (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `create_time` datetime NOT NULL,
  `update_time` datetime NOT NULL,
  `email` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `password` varchar(16) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `head_pic` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `mobile` varchar(12) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `sex` int NULL DEFAULT NULL,
  `type` bigint NOT NULL,
  `username` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `content` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `work_experience` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `degree` varchar(256) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 15 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES (1, '2024-01-11 16:12:19', '2024-04-27 16:51:31', '832858782@qq.com', '123456', '20200712/1594541168216.jpg', '13774559485', 0, 0, 'Heng', 'Love programming', '3 year', 'master');
INSERT INTO `user` VALUES (2, '2024-01-11 16:12:19', '2023-07-13 21:42:36', '2250173789@qq.com', '123456', 'common/default_img.jpg', '', 1, 1, 'Tencent recruiters', NULL, '10年以上', '博士');
INSERT INTO `user` VALUES (5, '2024-01-11 16:12:19', '2023-07-14 22:24:01', '2250125345@qq.com', '123456', 'common/default_img.jpg', NULL, 2, 1, 'Taomi recruiter', NULL, '10年以上', '博士');
INSERT INTO `user` VALUES (6, '2024-01-11 16:12:19', '2023-07-14 23:04:47', '745623953@qq.com', '123456', 'common/default_img.jpg', NULL, 2, 1, 'Stevock recruitment', NULL, '10年以上', '博士');
INSERT INTO `user` VALUES (7, '2024-01-11 16:12:19', '2023-07-15 11:36:02', '347195327@qq.com', '123456', 'common/default_img.jpg', NULL, 2, 1, 'The recruiter at Pile Sugar', NULL, NULL, NULL);
INSERT INTO `user` VALUES (8, '2024-01-11 16:12:19', '2023-07-17 11:45:51', '348127542@qq.com', '123456', 'common/default_img.jpg', NULL, 1, 1, 'Lenovo recruiter', NULL, NULL, NULL);
INSERT INTO `user` VALUES (10, '2024-01-11 16:12:19', '2024-05-02 18:10:53', '1627346308@163.com', '123456', '20200718/1595042553725.jpg', '15932744218', 1, 0, 'Liu', '123', 'Fresh graduates', 'undergraduate');
INSERT INTO `user` VALUES (11, '2024-01-11 16:12:19', '2023-07-08 10:25:27', '876352874@qq.com', '123456', 'common/default_img.jpg', NULL, 1, 1, 'Youku recruiter', NULL, NULL, NULL);
INSERT INTO `user` VALUES (12, '2024-01-11 16:12:19', '2023-07-15 10:52:27', '809812692@qq.com', '123456', 'common/default_img.jpg', NULL, 0, 1, 'Odd cat recruiter', NULL, NULL, NULL);
INSERT INTO `user` VALUES (13, '2024-01-11 16:12:19', '2024-04-23 17:11:43', '1627346308@qq.com', '123456', 'common/default_img.jpg', '13438526637', 0, 0, 'Bruce', NULL, '5 year', 'master');

-- ----------------------------
-- Table structure for work_experience
-- ----------------------------
DROP TABLE IF EXISTS `work_experience`;
CREATE TABLE `work_experience`  (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `create_time` datetime NOT NULL,
  `update_time` datetime NOT NULL,
  `end_month` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `end_year` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `position` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `start_month` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `start_year` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `user_id` bigint NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `FKhnxjamc0hrv0uok9w7aayk6kk`(`user_id` ASC) USING BTREE,
  CONSTRAINT `FKhnxjamc0hrv0uok9w7aayk6kk` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of work_experience
-- ----------------------------
INSERT INTO `work_experience` VALUES (1, '2020-07-12 23:24:16', '2024-04-27 16:48:30', '03', '2019', 'Tencent', 'Product manager', '04', '2017', 1);
INSERT INTO `work_experience` VALUES (3, '2020-07-18 11:24:30', '2024-05-02 18:09:27', '03', '2015', 'New world corporation', 'front desk', '03', '2013', 10);

-- ----------------------------
-- Table structure for work_show
-- ----------------------------
DROP TABLE IF EXISTS `work_show`;
CREATE TABLE `work_show`  (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `create_time` datetime NOT NULL,
  `update_time` datetime NOT NULL,
  `content` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `url` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `user_id` bigint NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `FKiagbp8nnl01v528v8uuf79lod`(`user_id` ASC) USING BTREE,
  CONSTRAINT `FKiagbp8nnl01v528v8uuf79lod` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of work_show
-- ----------------------------
INSERT INTO `work_show` VALUES (1, '2023-07-13 13:46:12', '2024-04-27 16:50:31', 'no', '', 1);
INSERT INTO `work_show` VALUES (2, '2024-05-02 18:10:53', '2024-05-02 18:10:53', '123', '123', 10);

SET FOREIGN_KEY_CHECKS = 1;
