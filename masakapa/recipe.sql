/*
Navicat MySQL Data Transfer

Source Server         : connection
Source Server Version : 50505
Source Host           : localhost:3306
Source Database       : recipe

Target Server Type    : MYSQL
Target Server Version : 50505
File Encoding         : 65001

Date: 2022-06-15 00:31:24
*/

SET FOREIGN_KEY_CHECKS=0;
-- ----------------------------
-- Table structure for `tbladmin`
-- ----------------------------
DROP TABLE IF EXISTS `tbladmin`;
CREATE TABLE `tbladmin` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `AdminUserName` varchar(255) NOT NULL,
  `AdminPassword` varchar(255) NOT NULL,
  `AdminEmailId` varchar(255) NOT NULL,
  `Is_Active` int(11) NOT NULL,
  `CreationDate` timestamp NOT NULL DEFAULT current_timestamp(),
  `UpdationDate` timestamp NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE current_timestamp(),
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of tbladmin
-- ----------------------------
INSERT INTO `tbladmin` VALUES ('1', 'admin', '$2y$12$i4LMfeFPQpGSNPTaccIkKuwxAkJ4PhBr3JND7FpXwWFjRvchQn17C', 'campcodes@gmail.com', '1', '2020-03-28 00:51:00', '2020-04-25 01:21:07');

-- ----------------------------
-- Table structure for `tblcategory`
-- ----------------------------
DROP TABLE IF EXISTS `tblcategory`;
CREATE TABLE `tblcategory` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `CategoryName` varchar(200) DEFAULT NULL,
  `Description` mediumtext DEFAULT NULL,
  `PostingDate` timestamp NULL DEFAULT current_timestamp(),
  `UpdationDate` timestamp NULL DEFAULT NULL,
  `Is_Active` int(1) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of tblcategory
-- ----------------------------
INSERT INTO `tblcategory` VALUES ('8', 'Makanan', 'Makanan', '2022-06-02 20:36:01', null, '1');
INSERT INTO `tblcategory` VALUES ('9', 'Minuman', 'Minuman', '2022-06-02 20:36:11', null, '1');

-- ----------------------------
-- Table structure for `tblcomments`
-- ----------------------------
DROP TABLE IF EXISTS `tblcomments`;
CREATE TABLE `tblcomments` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `postId` char(11) DEFAULT NULL,
  `name` varchar(120) DEFAULT NULL,
  `email` varchar(150) DEFAULT NULL,
  `comment` mediumtext DEFAULT NULL,
  `postingDate` timestamp NULL DEFAULT current_timestamp(),
  `status` int(1) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of tblcomments
-- ----------------------------
INSERT INTO `tblcomments` VALUES ('1', '12', 'Anuj', 'anuj@gmail.com', 'Cras sit amet nibh libero, in gravida nulla. Nulla vel metus scelerisque ante sollicitudin. Cras purus odio, vestibulum in vulputate at, tempus viverra turpis.', '2018-11-21 18:06:22', '0');
INSERT INTO `tblcomments` VALUES ('2', '12', 'Test user', 'test@gmail.com', 'This is sample text for testing.', '2018-11-21 18:25:56', '1');
INSERT INTO `tblcomments` VALUES ('3', '7', 'ABC', 'abc@test.com', 'This is sample text for testing.', '2018-11-21 18:27:06', '1');

-- ----------------------------
-- Table structure for `tblpages`
-- ----------------------------
DROP TABLE IF EXISTS `tblpages`;
CREATE TABLE `tblpages` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `PageName` varchar(200) DEFAULT NULL,
  `PageTitle` mediumtext DEFAULT NULL,
  `Description` longtext DEFAULT NULL,
  `PostingDate` timestamp NULL DEFAULT current_timestamp(),
  `UpdationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp(),
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of tblpages
-- ----------------------------
INSERT INTO `tblpages` VALUES ('1', 'aboutus', 'MasakApa?', '<font color=\"#7b8898\" face=\"Mercury SSm A, Mercury SSm B, Georgia, Times, Times New Roman, Microsoft YaHei New, Microsoft Yahei, å¾®è½¯é›…é»‘, å®‹ä½“, SimSun, STXihei, åŽæ–‡ç»†é»‘, serif\"><span style=\"font-size: 26px;\">Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</span></font><br>', '2018-07-01 01:01:03', '2022-06-02 20:48:10');
INSERT INTO `tblpages` VALUES ('2', 'contactus', 'Tentang Kami', '<p><br></p>', '2018-07-01 01:01:36', '2022-06-02 20:51:42');

-- ----------------------------
-- Table structure for `tblposts`
-- ----------------------------
DROP TABLE IF EXISTS `tblposts`;
CREATE TABLE `tblposts` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `PostTitle` longtext DEFAULT NULL,
  `CategoryId` int(11) DEFAULT NULL,
  `SubCategoryId` int(11) DEFAULT NULL,
  `PostDetails` longtext CHARACTER SET utf8 DEFAULT NULL,
  `PostingDate` timestamp NULL DEFAULT current_timestamp(),
  `UpdationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp(),
  `Is_Active` int(1) DEFAULT NULL,
  `PostUrl` mediumtext DEFAULT NULL,
  `PostImage` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=30 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of tblposts
-- ----------------------------
INSERT INTO `tblposts` VALUES ('13', 'Resep Bakso', '8', '10', '<span style=\"caret-color: rgb(42, 42, 42); color: rgb(42, 42, 42); font-family: Roboto, sans-serif;\">Bahan bakso : 250 gram daging dengan sedikit urat dan lemak, potong-potong&nbsp; 1 putih telur dingin 2 siung bawang putih, haluskan&nbsp; 2 sdm bawang goreng, haluskan&nbsp; 60-75 gram es batu&nbsp; 4 sdm tepung tapioka&nbsp; 2 sdt garam kasar 1/2 sdt gula&nbsp; 1/2 sdt kaldu sapi bubuk&nbsp; 1/3 sdt merica&nbsp; 1/2 sdt baking powder</span><br style=\"caret-color: rgb(42, 42, 42); color: rgb(42, 42, 42); font-family: Roboto, sans-serif;\"><br style=\"caret-color: rgb(42, 42, 42); color: rgb(42, 42, 42); font-family: Roboto, sans-serif;\"><br style=\"caret-color: rgb(42, 42, 42); color: rgb(42, 42, 42); font-family: Roboto, sans-serif;\"><br>', '2022-06-02 20:40:32', null, '1', 'Resep-Bakso', 'e8d3cba8720903f52d284687847d23f1.jpg');
INSERT INTO `tblposts` VALUES ('14', 'Resep Es Teh', '9', '12', '<p>ES Batu</p><p>Teh</p><p>Gula</p><p><br></p><p>Bikin lah kawan !!!</p>', '2022-06-02 21:23:09', null, '1', 'Resep-Es-Teh', 'e88cd7a490b1f47131f19c8e740394ef.jpg');
INSERT INTO `tblposts` VALUES ('23', 'Resep Apple Pie', '8', '11', '<h4>Bahan Kulit</h4><ul><li>Terigu</li><li>Mentega</li></ul><h4>Bahan Isian</h4><ul><li>Apel</li><li>Gula</li></ul>', '2022-06-14 21:57:41', null, '1', 'Resep-Apple-Pie', 'bce0cd2d62de2b8d27c900395002645e.jpg');

-- ----------------------------
-- Table structure for `tblsubcategory`
-- ----------------------------
DROP TABLE IF EXISTS `tblsubcategory`;
CREATE TABLE `tblsubcategory` (
  `SubCategoryId` int(11) NOT NULL AUTO_INCREMENT,
  `CategoryId` int(11) DEFAULT NULL,
  `Subcategory` varchar(255) DEFAULT NULL,
  `SubCatDescription` mediumtext DEFAULT NULL,
  `PostingDate` timestamp NOT NULL DEFAULT current_timestamp(),
  `UpdationDate` timestamp NULL DEFAULT NULL,
  `Is_Active` int(1) DEFAULT NULL,
  PRIMARY KEY (`SubCategoryId`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of tblsubcategory
-- ----------------------------
INSERT INTO `tblsubcategory` VALUES ('10', '8', 'Makanan Berat', 'Makanan Berat', '2022-06-02 20:37:12', null, '1');
INSERT INTO `tblsubcategory` VALUES ('11', '8', 'Makanan Ringan', 'Makanan Ringan', '2022-06-02 20:37:27', null, '1');
INSERT INTO `tblsubcategory` VALUES ('12', '9', 'Minuman', 'Minuman', '2022-06-02 21:22:24', null, '1');

-- ----------------------------
-- Table structure for `tblusers`
-- ----------------------------
DROP TABLE IF EXISTS `tblusers`;
CREATE TABLE `tblusers` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of tblusers
-- ----------------------------
INSERT INTO `tblusers` VALUES ('4', 'sarah', '$2y$10$wAxOUPb8mYrcoE8h9bWIPObt4yP7stwbZ/qDvasv9ku0uGhwzgj0i');
INSERT INTO `tblusers` VALUES ('5', 'user', '$2y$12$9xgI8j.4A9zWc..vR/uf8OCzdwFSNlX5EcD1DGsXTuS.q/rFJL.bW');
INSERT INTO `tblusers` VALUES ('6', 'username', '$2y$10$i5BTwegyEr3fxakdAPeZkO3g.tsf3.ju4RlnADFiUeAkssgCQ9SVK');
INSERT INTO `tblusers` VALUES ('7', 'user1', '$2y$10$X7t6WrSD2ukULXKmD.zRrOTOFFEbLSusFCCXcEx2a30qgUNVOEAHS');
INSERT INTO `tblusers` VALUES ('8', 'user2', '$2y$10$3VTd.B2kyOKn3t5TJSlLN.GfWIQCJnnFr/knuwEC3qlVzlQnb1qjq');
INSERT INTO `tblusers` VALUES ('9', 'test', '$2y$10$oLvwPgaNM.f17RSOZ1/s/uf0baeFPEkRRVjVOlycOHUHkwRk6xseW');
INSERT INTO `tblusers` VALUES ('10', 'user5', '$2y$10$kVEmSbWR5uvWG4FItKn.kujv7z9W08WcxY9hQy5TDErP3qAzzF8zK');
