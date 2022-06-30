/*
Navicat MySQL Data Transfer

Source Server         : MySQL localhost
Source Server Version : 50617
Source Host           : 127.0.0.1:3306
Source Database       : php_stock

Target Server Type    : MYSQL
Target Server Version : 50617
File Encoding         : 65001

Date: 2015-02-14 12:32:07
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for announcement
-- ----------------------------
DROP TABLE IF EXISTS `announcement`;
CREATE TABLE `announcement` (
  `Announcement_ID` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `Is_Active` enum('N','Y') NOT NULL DEFAULT 'N',
  `Topic` varchar(50) NOT NULL,
  `Message` mediumtext NOT NULL,
  `Date_LastUpdate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `Language` char(2) NOT NULL DEFAULT 'en',
  `Auto_Publish` enum('Y','N') DEFAULT 'N',
  `Date_Start` datetime DEFAULT NULL,
  `Date_End` datetime DEFAULT NULL,
  `Date_Created` datetime DEFAULT NULL,
  `Created_By` varchar(200) DEFAULT NULL,
  `Translated_ID` int(11) DEFAULT NULL,
  PRIMARY KEY (`Announcement_ID`)
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of announcement
-- ----------------------------
INSERT INTO `announcement` VALUES ('1', 'Y', 'First Announcement (English)', '<p>Please note that this is the <strong>First Announcement</strong> in <strong>English</strong>. This announcement text came from announcement table which also supports for multi-language and auto-publish. Thanks for seeing this! <img src=\"http://www.ilovephpmaker.com/wp-includes/images/smilies/icon_smile.gif\" alt=\":)\" class=\"wp-smiley\">  <strong><span style=\"background-color: #ffffff; color: #ff00ff;\"><br /></span></strong></p>', '2014-02-06 14:26:46', 'en', 'Y', '2014-02-01 00:00:01', '2014-02-10 23:59:59', '2014-02-06 13:27:51', 'andrew', '2');
INSERT INTO `announcement` VALUES ('2', 'Y', 'First Announcement (Indonesian)', '<p>Ini teks <strong>Pengumuman </strong>yang<strong> Pertama</strong> dalam <strong>Bahasa Indonesia</strong>. Teks pengumuman ini berasal dari tabel announcement yang mendukung <strong>multi-bahasa</strong> dan <strong>terbit-otomatis</strong> berdasarkan durasi tanggal tertentu. :)</p>', '2014-02-06 14:26:46', 'id', 'Y', '2014-02-01 00:00:01', '2014-02-10 23:59:59', '2014-02-06 13:28:08', 'janet', '1');
INSERT INTO `announcement` VALUES ('3', 'N', 'Second Announcement (English)', '<p>This is the <strong>Second Announcement</strong> in <strong>English</strong>. This announcement text came from announcement table which also supports for <strong>multi-language</strong> and <strong>auto-publish</strong>.</p>', '2014-02-06 07:09:25', 'en', 'Y', '2014-02-11 00:00:01', '2014-02-20 23:59:59', '2014-02-06 10:57:43', 'nancy', '4');
INSERT INTO `announcement` VALUES ('4', 'N', 'Second Announcement (Indonesian)', '<p>Ini <strong>Pengumuman</strong> yang <strong>Kedua</strong> dalam <strong>Bahasa Indonesia</strong>.&nbsp;Teks pengumuman ini berasal dari tabel announcement yang mendukung <strong>multi-bahasa</strong> dan <strong>terbit-otomatis</strong> berdasarkan durasi tanggal tertentu. :)</p>', '2014-02-06 07:11:17', 'id', 'Y', '2014-02-11 00:00:01', '2014-02-20 23:59:59', '2014-02-06 13:29:21', 'margaret', '3');
INSERT INTO `announcement` VALUES ('5', 'N', 'Third Announcement (English)', '<p>This is the third Announcement in English.</p>', '2013-04-12 22:01:31', 'en', 'Y', '2014-08-01 00:00:01', '2014-08-31 23:59:59', '2014-02-06 10:59:24', 'janet', '6');
INSERT INTO `announcement` VALUES ('6', 'N', 'Third Announcement (Indonesian)', '<p>Ini teks pengumuman yang ketiga dalam bahasa Indonesia.<em><strong><br /></strong></em></p>', '2014-02-06 13:09:52', 'id', 'Y', '2014-08-01 00:00:01', '2014-08-31 23:59:59', '2014-02-06 13:30:06', 'robert', '5');
INSERT INTO `announcement` VALUES ('7', 'N', 'Fourth Announcement (English)', '<p>This is the fourth announcement in English.</p>', '2014-02-06 11:02:38', 'en', 'Y', '2014-05-01 00:00:01', '2014-05-31 23:59:59', '2014-02-06 10:21:35', 'margaret', '8');
INSERT INTO `announcement` VALUES ('8', 'N', 'Fourth Announcement (Indonesian)', '<p>Ini adalah teks pengumuman yang keempat (dalam bahasa Indonesia).</p>', '2014-02-06 09:45:17', 'id', 'Y', '2014-05-01 00:00:01', '2014-05-31 23:59:59', '2014-02-06 11:06:20', 'janet', '7');
INSERT INTO `announcement` VALUES ('9', 'N', 'Fifth Announcement (English)', '<p>This is the fifth announcement in English.</p>', '2014-02-05 20:01:14', 'en', 'Y', '2014-06-01 00:00:01', '2014-06-30 23:59:59', '2014-02-05 19:47:24', 'andrew', '10');
INSERT INTO `announcement` VALUES ('10', 'N', 'Fifth Announcement (Indonesian)', '<p>Sedangkan yang ini adalah pengumuman yang kelima dalam bahasa Indonesia.</p>', '2014-02-05 20:01:14', 'id', 'Y', '2014-06-01 00:00:01', '2014-06-30 23:59:59', '2014-02-05 19:47:24', 'andrew', '9');

-- ----------------------------
-- Table structure for a_customers
-- ----------------------------
DROP TABLE IF EXISTS `a_customers`;
CREATE TABLE `a_customers` (
  `Customer_ID` int(11) NOT NULL AUTO_INCREMENT,
  `Customer_Number` varchar(20) NOT NULL,
  `Customer_Name` varchar(50) NOT NULL,
  `Address` text NOT NULL,
  `City` varchar(50) NOT NULL,
  `Country` varchar(30) NOT NULL,
  `Contact_Person` varchar(50) NOT NULL,
  `Phone_Number` varchar(50) NOT NULL,
  `Email` varchar(100) NOT NULL,
  `Mobile_Number` varchar(50) NOT NULL,
  `Notes` varchar(50) NOT NULL,
  `Balance` double DEFAULT '0',
  `Date_Added` datetime DEFAULT NULL,
  `Added_By` varchar(50) DEFAULT NULL,
  `Date_Updated` datetime DEFAULT NULL,
  `Updated_By` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`Customer_ID`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of a_customers
-- ----------------------------
INSERT INTO `a_customers` VALUES ('1', 'Customer-00000000001', 'First Customer', 'Address for the first customer', 'Bekasi', 'Indonesia', 'CP First Customer', '021323235232', 'cp.first@gmail.com', '08123242490', 'Another note again.', '720000', '2015-02-14 11:42:54', 'Administrator', '2015-02-14 11:43:41', 'Administrator');
INSERT INTO `a_customers` VALUES ('2', 'Customer-00000000002', 'Second Customer', 'Address for the second customer.', 'Depok', 'Indonesia', 'CP Second Customer', '0214982008', 'cp.second@gmail.com', '08124242422', 'Any note here', '150000', '2015-02-14 11:43:45', 'Administrator', '2015-02-14 11:44:20', 'Administrator');
INSERT INTO `a_customers` VALUES ('3', 'Customer-00000000003', 'Third Customer', 'Another address again for third customer', 'Tangerang', 'Indonesia', 'CP Third Customer', '0215800823', 'cp.third@gmail.com', '0812482092300', 'Some note here', '280000', '2015-02-14 11:44:24', 'Administrator', '2015-02-14 11:45:03', 'Administrator');
INSERT INTO `a_customers` VALUES ('4', 'Customer-00000000004', 'Fourth Customer', 'Address for the fourth customer', 'Jakarta', 'Indonesia', 'CP Fourth Customer', '02183204800', 'cp.fourth@gmail.com', '081282084902', 'What note here', '900000', '2015-02-14 11:45:09', 'Administrator', '2015-02-14 11:45:49', 'Administrator');

-- ----------------------------
-- Table structure for a_payment_transactions
-- ----------------------------
DROP TABLE IF EXISTS `a_payment_transactions`;
CREATE TABLE `a_payment_transactions` (
  `Payment_ID` int(11) NOT NULL AUTO_INCREMENT,
  `Ref_ID` varchar(20) DEFAULT NULL,
  `Type` enum('sales','purchase') DEFAULT NULL,
  `Customer` varchar(20) DEFAULT NULL,
  `Supplier` varchar(20) DEFAULT NULL,
  `Sub_Total` double NOT NULL DEFAULT '0',
  `Payment` double NOT NULL DEFAULT '0',
  `Balance` double NOT NULL DEFAULT '0',
  `Due_Date` date DEFAULT NULL,
  `Date_Transaction` date DEFAULT NULL,
  `Date_Added` datetime DEFAULT NULL,
  `Added_By` varchar(50) DEFAULT NULL,
  `Date_Updated` datetime DEFAULT NULL,
  `Updated_By` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`Payment_ID`)
) ENGINE=MyISAM AUTO_INCREMENT=23 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of a_payment_transactions
-- ----------------------------
INSERT INTO `a_payment_transactions` VALUES ('1', 'Purchase-00000000007', 'purchase', '-', 'Supplier-00000000001', '30000000', '2500000', '27500000', '2015-02-14', '2015-02-14', '2015-02-14 12:10:52', 'Administrator', '2015-02-14 12:11:04', 'Administrator');
INSERT INTO `a_payment_transactions` VALUES ('2', 'Purchase-00000000007', 'purchase', '-', 'Supplier-00000000001', '27500000', '1000000', '26500000', '2015-02-14', '2015-02-14', '2015-02-14 12:11:08', 'Administrator', '2015-02-14 12:11:18', 'Administrator');
INSERT INTO `a_payment_transactions` VALUES ('3', 'Purchase-00000000007', 'purchase', '-', 'Supplier-00000000001', '26500000', '5000000', '21500000', '2015-02-14', '2015-02-14', '2015-02-14 12:12:00', 'Administrator', '2015-02-14 12:12:12', 'Administrator');
INSERT INTO `a_payment_transactions` VALUES ('4', 'Purchase-00000000007', 'purchase', '-', 'Supplier-00000000001', '21500000', '7000000', '14500000', '2015-02-14', '2015-02-14', '2015-02-14 12:12:15', 'Administrator', '2015-02-14 12:12:20', 'Administrator');
INSERT INTO `a_payment_transactions` VALUES ('5', 'Purchase-00000000005', 'purchase', '-', 'Supplier-00000000001', '4640000', '1200000', '3440000', '2015-02-14', '2015-02-14', '2015-02-14 12:13:48', 'Administrator', '2015-02-14 12:13:56', 'Administrator');
INSERT INTO `a_payment_transactions` VALUES ('6', 'Purchase-00000000005', 'purchase', '-', 'Supplier-00000000001', '3440000', '700000', '2740000', '2015-02-14', '2015-02-14', '2015-02-14 12:14:00', 'Administrator', '2015-02-14 12:14:13', 'Administrator');
INSERT INTO `a_payment_transactions` VALUES ('7', 'Purchase-00000000006', 'purchase', '-', 'Supplier-00000000002', '7500000', '1100000', '6400000', '2015-02-14', '2015-02-14', '2015-02-14 12:14:43', 'Administrator', '2015-02-14 12:14:53', 'Administrator');
INSERT INTO `a_payment_transactions` VALUES ('8', 'Purchase-00000000006', 'purchase', '-', 'Supplier-00000000002', '6400000', '1000000', '5400000', '2015-02-14', '2015-02-14', '2015-02-14 12:15:07', 'Administrator', '2015-02-14 12:15:18', 'Administrator');
INSERT INTO `a_payment_transactions` VALUES ('9', 'Purchase-00000000005', 'purchase', '-', 'Supplier-00000000001', '2740000', '500000', '2240000', '2015-02-14', '2015-02-14', '2015-02-14 12:15:29', 'Administrator', '2015-02-14 12:15:36', 'Administrator');
INSERT INTO `a_payment_transactions` VALUES ('10', 'Purchase-00000000002', 'purchase', '-', 'Supplier-00000000002', '5250000', '1200000', '4050000', '2015-02-14', '2015-02-14', '2015-02-14 12:16:09', 'Administrator', '2015-02-14 12:16:15', 'Administrator');
INSERT INTO `a_payment_transactions` VALUES ('11', 'Purchase-00000000002', 'purchase', '-', 'Supplier-00000000002', '4050000', '500000', '3550000', '2015-02-14', '2015-02-14', '2015-02-14 12:16:27', 'Administrator', '2015-02-14 12:16:32', 'Administrator');
INSERT INTO `a_payment_transactions` VALUES ('12', 'Purchase-00000000004', 'purchase', '-', 'Supplier-00000000004', '2000000', '300000', '1700000', '2015-02-14', '2015-02-14', '2015-02-14 12:16:54', 'Administrator', '2015-02-14 12:17:03', 'Administrator');
INSERT INTO `a_payment_transactions` VALUES ('13', 'Purchase-00000000003', 'purchase', '-', 'Supplier-00000000003', '5000000', '1400000', '3600000', '2015-02-14', '2015-02-14', '2015-02-14 12:17:36', 'Administrator', '2015-02-14 12:17:45', 'Administrator');
INSERT INTO `a_payment_transactions` VALUES ('14', 'Sales-00000000000003', 'sales', 'Customer-00000000003', '-', '400000', '120000', '280000', '2015-02-14', '2015-02-14', '2015-02-14 12:17:56', 'Administrator', '2015-02-14 12:18:02', 'Administrator');
INSERT INTO `a_payment_transactions` VALUES ('15', 'Sales-00000000000002', 'sales', 'Customer-00000000002', '-', '30500', '30500', '0', '2015-02-14', '2015-02-14', '2015-02-14 12:18:11', 'Administrator', '2015-02-14 12:18:21', 'Administrator');
INSERT INTO `a_payment_transactions` VALUES ('16', 'Sales-00000000000001', 'sales', 'Customer-00000000001', '-', '700000', '50000', '650000', '2015-02-14', '2015-02-14', '2015-02-14 12:18:30', 'Administrator', '2015-02-14 12:18:36', 'Administrator');
INSERT INTO `a_payment_transactions` VALUES ('17', 'Sales-00000000000001', 'sales', 'Customer-00000000001', '-', '650000', '80000', '570000', '2015-02-14', '2015-02-14', '2015-02-14 12:18:40', 'Administrator', '2015-02-14 12:18:45', 'Administrator');
INSERT INTO `a_payment_transactions` VALUES ('18', 'Sales-00000000000008', 'sales', 'Customer-00000000004', '-', '1300000', '400000', '900000', '2015-02-14', '2015-02-14', '2015-02-14 12:25:04', 'Administrator', '2015-02-14 12:25:12', 'Administrator');
INSERT INTO `a_payment_transactions` VALUES ('19', 'Purchase-00000000007', 'purchase', '-', 'Supplier-00000000001', '14500000', '3000000', '11500000', '2015-02-14', '2015-02-14', '2015-02-14 12:25:25', 'Administrator', '2015-02-14 12:25:31', 'Administrator');
INSERT INTO `a_payment_transactions` VALUES ('20', 'Purchase-00000000006', 'purchase', '-', 'Supplier-00000000002', '5400000', '1200000', '4200000', '2015-02-14', '2015-02-14', '2015-02-14 12:26:12', 'Administrator', '2015-02-14 12:26:20', 'Administrator');
INSERT INTO `a_payment_transactions` VALUES ('21', 'Purchase-00000000007', 'purchase', '-', 'Supplier-00000000001', '11500000', '200000', '11300000', '2015-02-14', '2015-02-14', '2015-02-14 12:26:45', 'Administrator', '2015-02-14 12:26:51', 'Administrator');
INSERT INTO `a_payment_transactions` VALUES ('22', 'Sales-00000000000001', 'sales', 'Customer-00000000001', '-', '570000', '200000', '370000', '2015-02-14', '2015-02-14', '2015-02-14 12:27:30', 'Administrator', '2015-02-14 12:27:37', 'Administrator');

-- ----------------------------
-- Table structure for a_purchases
-- ----------------------------
DROP TABLE IF EXISTS `a_purchases`;
CREATE TABLE `a_purchases` (
  `Purchase_ID` int(11) NOT NULL AUTO_INCREMENT,
  `Purchase_Number` varchar(20) NOT NULL,
  `Purchase_Date` datetime NOT NULL,
  `Supplier_ID` varchar(20) NOT NULL,
  `Notes` varchar(50) DEFAULT NULL,
  `Total_Amount` double(20,0) DEFAULT '0',
  `Total_Payment` double(20,0) DEFAULT '0',
  `Total_Balance` double(20,0) DEFAULT '0',
  `Date_Added` datetime DEFAULT NULL,
  `Added_By` varchar(50) DEFAULT NULL,
  `Date_Updated` datetime DEFAULT NULL,
  `Updated_By` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`Purchase_ID`),
  KEY `TSupplierTBeli` (`Supplier_ID`)
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of a_purchases
-- ----------------------------
INSERT INTO `a_purchases` VALUES ('1', 'Purchase-00000000001', '2015-02-14 11:47:05', 'Supplier-00000000001', null, '182500000', '180000000', '2500000', '2015-02-14 11:47:05', 'Administrator', '2015-02-14 11:47:39', 'Administrator');
INSERT INTO `a_purchases` VALUES ('2', 'Purchase-00000000002', '2015-02-14 11:48:20', 'Supplier-00000000002', null, '65250000', '61700000', '3550000', '2015-02-14 11:48:20', 'Administrator', '2015-02-14 11:49:00', 'Administrator');
INSERT INTO `a_purchases` VALUES ('3', 'Purchase-00000000003', '2015-02-14 11:49:36', 'Supplier-00000000003', null, '40000000', '36400000', '3600000', '2015-02-14 11:49:36', 'Administrator', '2015-02-14 11:50:19', 'Administrator');
INSERT INTO `a_purchases` VALUES ('4', 'Purchase-00000000004', '2015-02-14 11:54:01', 'Supplier-00000000004', null, '10000000', '8300000', '1700000', '2015-02-14 11:54:01', 'Administrator', '2015-02-14 11:54:30', 'Administrator');
INSERT INTO `a_purchases` VALUES ('5', 'Purchase-00000000005', '2015-02-14 11:55:39', 'Supplier-00000000001', null, '52640000', '50400000', '2240000', '2015-02-14 11:55:39', 'Administrator', '2015-02-14 11:56:15', 'Administrator');
INSERT INTO `a_purchases` VALUES ('6', 'Purchase-00000000006', '2015-02-14 11:58:46', 'Supplier-00000000002', null, '50000000', '45800000', '4200000', '2015-02-14 11:58:46', 'Administrator', '2015-02-14 12:00:11', 'Administrator');
INSERT INTO `a_purchases` VALUES ('7', 'Purchase-00000000007', '2015-02-14 12:01:04', 'Supplier-00000000001', null, '100000000', '88700000', '11300000', '2015-02-14 12:01:04', 'Administrator', '2015-02-14 12:01:52', 'Administrator');

-- ----------------------------
-- Table structure for a_purchases_detail
-- ----------------------------
DROP TABLE IF EXISTS `a_purchases_detail`;
CREATE TABLE `a_purchases_detail` (
  `Purchase_ID` int(11) NOT NULL AUTO_INCREMENT,
  `Purchase_Number` varchar(20) NOT NULL,
  `Supplier_Number` varchar(20) NOT NULL,
  `Stock_Item` varchar(15) NOT NULL,
  `Purchasing_Quantity` double(20,0) NOT NULL DEFAULT '0',
  `Purchasing_Price` double(20,0) NOT NULL DEFAULT '0',
  `Selling_Price` double(20,0) NOT NULL DEFAULT '0',
  `Purchasing_Total_Amount` double(20,0) NOT NULL DEFAULT '0',
  PRIMARY KEY (`Purchase_ID`),
  KEY `TBarangTDBeli` (`Stock_Item`),
  KEY `TBeliTDBeli` (`Purchase_Number`)
) ENGINE=MyISAM AUTO_INCREMENT=18 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of a_purchases_detail
-- ----------------------------
INSERT INTO `a_purchases_detail` VALUES ('1', 'Purchase-00000000001', 'Supplier-00000000001', 'Stock-000000001', '1000', '100000', '110000', '100000000');
INSERT INTO `a_purchases_detail` VALUES ('2', 'Purchase-00000000001', 'Supplier-00000000001', 'Stock-000000002', '25000', '3300', '3500', '82500000');
INSERT INTO `a_purchases_detail` VALUES ('3', 'Purchase-00000000002', 'Supplier-00000000002', 'Stock-000000003', '500', '12500', '15000', '6250000');
INSERT INTO `a_purchases_detail` VALUES ('4', 'Purchase-00000000002', 'Supplier-00000000002', 'Stock-000000007', '10000', '2000', '2300', '20000000');
INSERT INTO `a_purchases_detail` VALUES ('5', 'Purchase-00000000002', 'Supplier-00000000002', 'Stock-000000009', '2000', '7000', '7900', '14000000');
INSERT INTO `a_purchases_detail` VALUES ('6', 'Purchase-00000000002', 'Supplier-00000000002', 'Stock-000000008', '5000', '5000', '5800', '25000000');
INSERT INTO `a_purchases_detail` VALUES ('7', 'Purchase-00000000003', 'Supplier-00000000003', 'Stock-000000004', '50000', '200', '250', '10000000');
INSERT INTO `a_purchases_detail` VALUES ('8', 'Purchase-00000000003', 'Supplier-00000000003', 'Stock-000000005', '10000', '1500', '1800', '15000000');
INSERT INTO `a_purchases_detail` VALUES ('9', 'Purchase-00000000003', 'Supplier-00000000003', 'Stock-000000006', '5000', '3000', '3200', '15000000');
INSERT INTO `a_purchases_detail` VALUES ('10', 'Purchase-00000000004', 'Supplier-00000000004', 'Stock-000000010', '2000', '5000', '5400', '10000000');
INSERT INTO `a_purchases_detail` VALUES ('11', 'Purchase-00000000005', 'Supplier-00000000001', 'Stock-000000001', '500', '100000', '110000', '50000000');
INSERT INTO `a_purchases_detail` VALUES ('12', 'Purchase-00000000005', 'Supplier-00000000001', 'Stock-000000002', '800', '3300', '3500', '2640000');
INSERT INTO `a_purchases_detail` VALUES ('13', 'Purchase-00000000006', 'Supplier-00000000002', 'Stock-000000003', '2000', '12500', '15000', '25000000');
INSERT INTO `a_purchases_detail` VALUES ('14', 'Purchase-00000000006', 'Supplier-00000000002', 'Stock-000000007', '3000', '2000', '2300', '6000000');
INSERT INTO `a_purchases_detail` VALUES ('15', 'Purchase-00000000006', 'Supplier-00000000002', 'Stock-000000008', '1000', '5000', '5800', '5000000');
INSERT INTO `a_purchases_detail` VALUES ('16', 'Purchase-00000000006', 'Supplier-00000000002', 'Stock-000000009', '2000', '7000', '7900', '14000000');
INSERT INTO `a_purchases_detail` VALUES ('17', 'Purchase-00000000007', 'Supplier-00000000001', 'Stock-000000001', '1000', '100000', '110000', '100000000');

-- ----------------------------
-- Table structure for a_sales
-- ----------------------------
DROP TABLE IF EXISTS `a_sales`;
CREATE TABLE `a_sales` (
  `Sales_ID` int(11) NOT NULL AUTO_INCREMENT,
  `Sales_Number` varchar(20) NOT NULL,
  `Sales_Date` datetime NOT NULL,
  `Customer_ID` varchar(20) NOT NULL,
  `Notes` varchar(50) DEFAULT NULL,
  `Total_Amount` double DEFAULT '0',
  `Total_Payment` double DEFAULT '0',
  `Total_Balance` double DEFAULT '0',
  `Discount_Type` char(1) DEFAULT NULL,
  `Discount_Percentage` double DEFAULT '0',
  `Discount_Amount` double DEFAULT '0',
  `Tax_Percentage` double DEFAULT '0',
  `Tax_Amount` double DEFAULT '0',
  `Tax_Description` varchar(50) DEFAULT NULL,
  `Final_Total_Amount` double DEFAULT '0',
  `Date_Added` datetime DEFAULT NULL,
  `Added_By` varchar(50) DEFAULT NULL,
  `Date_Updated` datetime DEFAULT NULL,
  `Updated_By` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`Sales_ID`),
  UNIQUE KEY `NoFaktur` (`Sales_Number`),
  KEY `TCustomerTJual` (`Customer_ID`)
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of a_sales
-- ----------------------------
INSERT INTO `a_sales` VALUES ('1', 'Sales-00000000000001', '2015-02-14 12:03:06', 'Customer-00000000001', null, '1807300', '1527665', '370000', 'P', '5', '90365', '10', '180730', null, '1897665', '2015-02-14 12:03:06', 'Administrator', '2015-02-14 12:06:06', 'Administrator');
INSERT INTO `a_sales` VALUES ('2', 'Sales-00000000000002', '2015-02-14 12:06:38', 'Customer-00000000002', null, '130500', '130500', '0', 'P', '0', '0', '0', '0', null, '130500', '2015-02-14 12:06:38', 'Administrator', '2015-02-14 12:07:12', 'Administrator');
INSERT INTO `a_sales` VALUES ('3', 'Sales-00000000000003', '2015-02-14 12:07:48', 'Customer-00000000003', null, '866400', '629720', '280000', 'P', '5', '43320', '10', '86640', 'PPh Pasal 21', '909720', '2015-02-14 12:07:48', 'Administrator', '2015-02-14 12:09:18', 'Administrator');
INSERT INTO `a_sales` VALUES ('4', 'Sales-00000000000004', '2015-02-14 12:09:30', 'Customer-00000000004', null, '157400', '165270', '0', 'P', '5', '7870', '10', '15740', 'Pph Pasal 21', '165270', '2015-02-14 12:09:30', 'Administrator', '2015-02-14 12:10:21', 'Administrator');
INSERT INTO `a_sales` VALUES ('5', 'Sales-00000000000005', '2015-02-14 12:19:45', 'Customer-00000000001', null, '513500', '239175', '300000', 'P', '5', '25675', '10', '51350', 'Pph Pasal 21', '539175', '2015-02-14 12:19:45', 'Administrator', '2015-02-14 12:20:21', 'Administrator');
INSERT INTO `a_sales` VALUES ('6', 'Sales-00000000000006', '2015-02-14 12:20:49', 'Customer-00000000001', null, '154300', '104300', '50000', 'P', '0', '0', '0', '0', null, '154300', '2015-02-14 12:20:49', 'Administrator', '2015-02-14 12:21:23', 'Administrator');
INSERT INTO `a_sales` VALUES ('7', 'Sales-00000000000007', '2015-02-14 12:21:39', 'Customer-00000000002', null, '244600', '106830', '150000', 'P', '5', '12230', '10', '24460', null, '256830', '2015-02-14 12:21:39', 'Administrator', '2015-02-14 12:22:43', 'Administrator');
INSERT INTO `a_sales` VALUES ('8', 'Sales-00000000000008', '2015-02-14 12:23:05', 'Customer-00000000004', null, '2255000', '1467750', '900000', 'P', '5', '112750', '10', '225500', null, '2367750', '2015-02-14 12:23:05', 'Administrator', '2015-02-14 12:24:00', 'Administrator');

-- ----------------------------
-- Table structure for a_sales_detail
-- ----------------------------
DROP TABLE IF EXISTS `a_sales_detail`;
CREATE TABLE `a_sales_detail` (
  `Sales_ID` int(11) NOT NULL AUTO_INCREMENT,
  `Sales_Number` varchar(20) NOT NULL,
  `Supplier_Number` varchar(20) NOT NULL,
  `Stock_Item` varchar(15) NOT NULL,
  `Sales_Quantity` double NOT NULL DEFAULT '0',
  `Purchasing_Price` double NOT NULL DEFAULT '0',
  `Sales_Price` double NOT NULL DEFAULT '0',
  `Sales_Total_Amount` double NOT NULL DEFAULT '0',
  PRIMARY KEY (`Sales_ID`),
  KEY `TBarangTDJual` (`Stock_Item`),
  KEY `TJualTDJual` (`Sales_Number`)
) ENGINE=MyISAM AUTO_INCREMENT=33 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of a_sales_detail
-- ----------------------------
INSERT INTO `a_sales_detail` VALUES ('1', 'Sales-00000000000001', 'Supplier-00000000001', 'Stock-000000001', '10', '100000', '110000', '1100000');
INSERT INTO `a_sales_detail` VALUES ('2', 'Sales-00000000000001', 'Supplier-00000000001', 'Stock-000000002', '35', '3300', '3500', '122500');
INSERT INTO `a_sales_detail` VALUES ('3', 'Sales-00000000000001', 'Supplier-00000000002', 'Stock-000000003', '10', '12500', '15000', '150000');
INSERT INTO `a_sales_detail` VALUES ('4', 'Sales-00000000000001', 'Supplier-00000000002', 'Stock-000000007', '20', '2000', '2300', '46000');
INSERT INTO `a_sales_detail` VALUES ('5', 'Sales-00000000000001', 'Supplier-00000000002', 'Stock-000000008', '15', '5000', '5800', '87000');
INSERT INTO `a_sales_detail` VALUES ('6', 'Sales-00000000000001', 'Supplier-00000000002', 'Stock-000000009', '30', '7000', '7900', '237000');
INSERT INTO `a_sales_detail` VALUES ('7', 'Sales-00000000000001', 'Supplier-00000000004', 'Stock-000000010', '12', '5000', '5400', '64800');
INSERT INTO `a_sales_detail` VALUES ('8', 'Sales-00000000000002', 'Supplier-00000000003', 'Stock-000000004', '50', '200', '250', '12500');
INSERT INTO `a_sales_detail` VALUES ('9', 'Sales-00000000000002', 'Supplier-00000000003', 'Stock-000000005', '30', '1500', '1800', '54000');
INSERT INTO `a_sales_detail` VALUES ('10', 'Sales-00000000000002', 'Supplier-00000000003', 'Stock-000000006', '20', '3000', '3200', '64000');
INSERT INTO `a_sales_detail` VALUES ('11', 'Sales-00000000000003', 'Supplier-00000000001', 'Stock-000000001', '5', '100000', '110000', '550000');
INSERT INTO `a_sales_detail` VALUES ('12', 'Sales-00000000000003', 'Supplier-00000000002', 'Stock-000000003', '12', '12500', '15000', '180000');
INSERT INTO `a_sales_detail` VALUES ('13', 'Sales-00000000000003', 'Supplier-00000000003', 'Stock-000000005', '20', '1500', '1800', '36000');
INSERT INTO `a_sales_detail` VALUES ('14', 'Sales-00000000000003', 'Supplier-00000000004', 'Stock-000000010', '10', '5000', '5400', '54000');
INSERT INTO `a_sales_detail` VALUES ('15', 'Sales-00000000000003', 'Supplier-00000000002', 'Stock-000000008', '8', '5000', '5800', '46400');
INSERT INTO `a_sales_detail` VALUES ('16', 'Sales-00000000000004', 'Supplier-00000000001', 'Stock-000000002', '12', '3300', '3500', '42000');
INSERT INTO `a_sales_detail` VALUES ('17', 'Sales-00000000000004', 'Supplier-00000000002', 'Stock-000000007', '10', '2000', '2300', '23000');
INSERT INTO `a_sales_detail` VALUES ('18', 'Sales-00000000000004', 'Supplier-00000000003', 'Stock-000000006', '12', '3000', '3200', '38400');
INSERT INTO `a_sales_detail` VALUES ('19', 'Sales-00000000000004', 'Supplier-00000000004', 'Stock-000000010', '10', '5000', '5400', '54000');
INSERT INTO `a_sales_detail` VALUES ('20', 'Sales-00000000000005', 'Supplier-00000000001', 'Stock-000000001', '4', '100000', '110000', '440000');
INSERT INTO `a_sales_detail` VALUES ('21', 'Sales-00000000000005', 'Supplier-00000000001', 'Stock-000000002', '21', '3300', '3500', '73500');
INSERT INTO `a_sales_detail` VALUES ('22', 'Sales-00000000000006', 'Supplier-00000000002', 'Stock-000000003', '6', '12500', '15000', '90000');
INSERT INTO `a_sales_detail` VALUES ('23', 'Sales-00000000000006', 'Supplier-00000000002', 'Stock-000000008', '7', '5000', '5800', '40600');
INSERT INTO `a_sales_detail` VALUES ('24', 'Sales-00000000000006', 'Supplier-00000000002', 'Stock-000000009', '3', '7000', '7900', '23700');
INSERT INTO `a_sales_detail` VALUES ('25', 'Sales-00000000000007', 'Supplier-00000000004', 'Stock-000000010', '12', '5000', '5400', '64800');
INSERT INTO `a_sales_detail` VALUES ('26', 'Sales-00000000000007', 'Supplier-00000000002', 'Stock-000000007', '36', '2000', '2300', '82800');
INSERT INTO `a_sales_detail` VALUES ('27', 'Sales-00000000000007', 'Supplier-00000000003', 'Stock-000000005', '40', '1500', '1800', '72000');
INSERT INTO `a_sales_detail` VALUES ('28', 'Sales-00000000000007', 'Supplier-00000000003', 'Stock-000000004', '100', '200', '250', '25000');
INSERT INTO `a_sales_detail` VALUES ('29', 'Sales-00000000000008', 'Supplier-00000000001', 'Stock-000000001', '12', '100000', '110000', '1320000');
INSERT INTO `a_sales_detail` VALUES ('30', 'Sales-00000000000008', 'Supplier-00000000001', 'Stock-000000002', '30', '3300', '3500', '105000');
INSERT INTO `a_sales_detail` VALUES ('31', 'Sales-00000000000008', 'Supplier-00000000002', 'Stock-000000003', '40', '12500', '15000', '600000');
INSERT INTO `a_sales_detail` VALUES ('32', 'Sales-00000000000008', 'Supplier-00000000002', 'Stock-000000007', '100', '2000', '2300', '230000');

-- ----------------------------
-- Table structure for a_stock_categories
-- ----------------------------
DROP TABLE IF EXISTS `a_stock_categories`;
CREATE TABLE `a_stock_categories` (
  `Category_ID` int(11) NOT NULL AUTO_INCREMENT,
  `Category_Name` varchar(20) NOT NULL,
  PRIMARY KEY (`Category_ID`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of a_stock_categories
-- ----------------------------
INSERT INTO `a_stock_categories` VALUES ('1', 'First Category');
INSERT INTO `a_stock_categories` VALUES ('2', 'Second Category');
INSERT INTO `a_stock_categories` VALUES ('3', 'Third Category');
INSERT INTO `a_stock_categories` VALUES ('4', 'Fourth Category');
INSERT INTO `a_stock_categories` VALUES ('5', 'Fifth Category');

-- ----------------------------
-- Table structure for a_stock_items
-- ----------------------------
DROP TABLE IF EXISTS `a_stock_items`;
CREATE TABLE `a_stock_items` (
  `Stock_ID` int(11) NOT NULL AUTO_INCREMENT,
  `Supplier_Number` varchar(20) NOT NULL,
  `Stock_Number` varchar(15) NOT NULL,
  `Stock_Name` varchar(50) NOT NULL,
  `Unit_Of_Measurement` varchar(20) NOT NULL,
  `Category` int(11) NOT NULL,
  `Purchasing_Price` double(20,0) NOT NULL DEFAULT '0',
  `Selling_Price` double(20,0) NOT NULL DEFAULT '0',
  `Notes` varchar(50) NOT NULL,
  `Quantity` double(20,0) NOT NULL DEFAULT '0',
  `Date_Added` datetime DEFAULT NULL,
  `Added_By` varchar(50) DEFAULT NULL,
  `Date_Updated` datetime DEFAULT NULL,
  `Updated_By` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`Stock_ID`)
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of a_stock_items
-- ----------------------------
INSERT INTO `a_stock_items` VALUES ('1', 'Supplier-00000000001', 'Stock-000000001', 'First Stock Item', 'Item', '1', '100000', '110000', 'Keterangan untuk barang pertama.', '2469', '2014-02-11 08:21:22', 'Administrator', '2015-02-12 19:37:46', 'Administrator');
INSERT INTO `a_stock_items` VALUES ('2', 'Supplier-00000000001', 'Stock-000000002', 'Second Stock Item', 'Item', '2', '3300', '3500', 'Keterangan barang kedua.', '25702', '2014-02-11 08:21:22', 'Administrator', '2015-02-12 19:37:24', 'Administrator');
INSERT INTO `a_stock_items` VALUES ('3', 'Supplier-00000000002', 'Stock-000000003', 'Third Stock Item', 'Item', '3', '12500', '15000', 'Keterangan untuk barang ketiga.', '2432', '2014-02-11 08:21:22', 'Administrator', '2015-02-12 19:37:24', 'Administrator');
INSERT INTO `a_stock_items` VALUES ('4', 'Supplier-00000000003', 'Stock-000000004', 'Fourth Stock Item', 'Item', '4', '200', '250', 'Keterangan untuk barang keempat.', '49850', '2014-02-11 08:21:22', 'Administrator', '2015-02-12 19:37:24', 'Administrator');
INSERT INTO `a_stock_items` VALUES ('5', 'Supplier-00000000003', 'Stock-000000005', 'Fifth Stock Item', 'Item', '1', '1500', '1800', '-', '9910', '2014-02-11 08:21:22', 'Administrator', '2015-02-12 19:38:16', 'Administrator');
INSERT INTO `a_stock_items` VALUES ('6', 'Supplier-00000000003', 'Stock-000000006', 'Sixth Stock Item', 'Item', '2', '3000', '3200', '-', '4968', '2014-02-11 08:21:22', 'Administrator', '2015-02-12 19:37:24', 'Administrator');
INSERT INTO `a_stock_items` VALUES ('7', 'Supplier-00000000002', 'Stock-000000007', 'Seventh Stock Item', 'Item', '1', '2000', '2300', 'This is only another notes.', '12834', '2014-02-11 08:21:22', 'Administrator', '2015-02-12 19:37:24', 'Administrator');
INSERT INTO `a_stock_items` VALUES ('8', 'Supplier-00000000002', 'Stock-000000008', 'Eighth Stock Item', 'Item', '2', '5000', '5800', 'Another notes again.', '5970', '2014-02-11 08:21:22', 'Administrator', '2015-02-12 19:37:24', 'Administrator');
INSERT INTO `a_stock_items` VALUES ('9', 'Supplier-00000000002', 'Stock-000000009', 'Ninth Stock Item', 'Item', '3', '7000', '7900', 'Again another notes haha.', '3967', '2014-02-11 08:21:22', 'Administrator', '2015-02-12 19:37:24', 'Administrator');
INSERT INTO `a_stock_items` VALUES ('10', 'Supplier-00000000004', 'Stock-000000010', 'Tenth Stock Item', 'Item', '1', '5000', '5400', 'Another note for the tenth stock item.', '1956', '2015-02-14 11:52:25', 'Administrator', '2015-02-14 11:53:28', 'Administrator');

-- ----------------------------
-- Table structure for a_suppliers
-- ----------------------------
DROP TABLE IF EXISTS `a_suppliers`;
CREATE TABLE `a_suppliers` (
  `Supplier_ID` int(11) NOT NULL AUTO_INCREMENT,
  `Supplier_Number` varchar(20) NOT NULL,
  `Supplier_Name` varchar(50) NOT NULL,
  `Address` text NOT NULL,
  `City` varchar(20) NOT NULL,
  `Country` varchar(50) NOT NULL,
  `Contact_Person` varchar(50) NOT NULL,
  `Phone_Number` varchar(50) NOT NULL,
  `Email` varchar(100) NOT NULL,
  `Mobile_Number` varchar(50) NOT NULL,
  `Notes` text NOT NULL,
  `Balance` double DEFAULT '0',
  `Is_Stock_Available` enum('N','Y') NOT NULL DEFAULT 'N',
  `Date_Added` datetime DEFAULT NULL,
  `Added_By` varchar(50) DEFAULT NULL,
  `Date_Updated` datetime DEFAULT NULL,
  `Updated_By` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`Supplier_ID`),
  UNIQUE KEY `KodeCust` (`Supplier_Number`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of a_suppliers
-- ----------------------------
INSERT INTO `a_suppliers` VALUES ('1', 'Supplier-00000000001', 'First Supplier', 'Address for the first supplier', 'Bandung', 'Indonesia', 'John Mc. Enroe', '022124415093', 'john.mcenroe@gmail.com', '0824132048929', 'Just a note', '16040000', 'Y', '2015-02-14 11:38:08', 'Administrator', '2015-02-14 11:39:05', 'Administrator');
INSERT INTO `a_suppliers` VALUES ('2', 'Supplier-00000000002', 'Second Supplier', 'Address for the second supplier', 'Jakarta', 'Indonesia', 'Martina Navatrilova', '02148272080', 'martina.nav@gmail.com', '081232442840', 'Just a note for Martina.', '7750000', 'Y', '2015-02-14 11:39:16', 'Administrator', '2015-02-14 11:40:00', 'Administrator');
INSERT INTO `a_suppliers` VALUES ('3', 'Supplier-00000000003', 'Third Supplier', 'Address for the third supplier.', 'Surabaya', 'Indonesia', 'Joko Sentul', '03142348293', 'joko.sentoel@gmail.com', '081242009827', 'A note for third supplier.', '3600000', 'Y', '2015-02-14 11:40:03', 'Administrator', '2015-02-14 11:41:39', 'Administrator');
INSERT INTO `a_suppliers` VALUES ('4', 'Supplier-00000000004', 'Fourth Supplier', 'Address for the fourth supplier.', 'Yogyakarta', 'Indonesia', 'Siapa Sajalah', '0213248290', 'siapa.saja@gmail.com', '081242932890', 'Another note for the fourth supplier.', '1700000', 'Y', '2015-02-14 11:41:44', 'Administrator', '2015-02-14 11:42:42', 'Administrator');

-- ----------------------------
-- Table structure for a_unit_of_measurement
-- ----------------------------
DROP TABLE IF EXISTS `a_unit_of_measurement`;
CREATE TABLE `a_unit_of_measurement` (
  `UOM_ID` varchar(10) NOT NULL,
  `UOM_Description` varchar(20) NOT NULL,
  PRIMARY KEY (`UOM_ID`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of a_unit_of_measurement
-- ----------------------------
INSERT INTO `a_unit_of_measurement` VALUES ('Item', 'Item');

-- ----------------------------
-- Table structure for breadcrumblinks
-- ----------------------------
DROP TABLE IF EXISTS `breadcrumblinks`;
CREATE TABLE `breadcrumblinks` (
  `Page_Title` varchar(100) NOT NULL,
  `Page_URL` varchar(100) NOT NULL,
  `Lft` int(4) NOT NULL,
  `Rgt` int(4) NOT NULL,
  PRIMARY KEY (`Page_Title`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of breadcrumblinks
-- ----------------------------

-- ----------------------------
-- Table structure for help
-- ----------------------------
DROP TABLE IF EXISTS `help`;
CREATE TABLE `help` (
  `Help_ID` int(11) NOT NULL,
  `Language` char(2) NOT NULL,
  `Topic` varchar(255) NOT NULL,
  `Description` longtext NOT NULL,
  `Category` int(11) NOT NULL,
  `Order` int(11) NOT NULL,
  `Display_in_Page` varchar(100) NOT NULL,
  `Updated_By` varchar(20) DEFAULT NULL,
  `Last_Updated` datetime DEFAULT NULL,
  PRIMARY KEY (`Help_ID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of help
-- ----------------------------
INSERT INTO `help` VALUES ('1', 'en', 'Login', 'This is help for Login page.', '1', '1', 'login.php', 'Masino', '2014-05-26 21:32:24');
INSERT INTO `help` VALUES ('2', 'en', 'Request Password', 'This is help for Request Password page.', '2', '1', 'forgotpwd.php', 'Admin', '2014-05-26 14:39:50');
INSERT INTO `help` VALUES ('3', 'en', 'Change Password', 'This is help for Change Password page.', '2', '2', 'changepwd.php', 'Admin', '2014-05-26 14:40:24');
INSERT INTO `help` VALUES ('4', 'en', 'Registration', 'This is help for Registration page.', '1', '2', 'register.php', 'Admin', '2014-05-26 14:50:46');
INSERT INTO `help` VALUES ('5', 'en', 'Help', 'This is help for Help page.', '3', '1', 'helplist.php', null, null);
INSERT INTO `help` VALUES ('6', 'en', 'Help (Categories)', 'This is help for Help (Categories) page.', '3', '2', 'help_categorieslist.php', null, null);

-- ----------------------------
-- Table structure for help_categories
-- ----------------------------
DROP TABLE IF EXISTS `help_categories`;
CREATE TABLE `help_categories` (
  `Category_ID` int(11) NOT NULL,
  `Language` char(2) NOT NULL,
  `Category_Description` varchar(100) NOT NULL,
  PRIMARY KEY (`Category_ID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of help_categories
-- ----------------------------
INSERT INTO `help_categories` VALUES ('1', 'en', 'First Category');
INSERT INTO `help_categories` VALUES ('2', 'en', 'Second Category');
INSERT INTO `help_categories` VALUES ('3', 'en', 'Third Category');

-- ----------------------------
-- Table structure for languages
-- ----------------------------
DROP TABLE IF EXISTS `languages`;
CREATE TABLE `languages` (
  `Language_Code` char(2) NOT NULL,
  `Language_Name` varchar(20) NOT NULL,
  `Default` enum('Y','N') DEFAULT 'N',
  `Site_Logo` varchar(100) NOT NULL,
  `Site_Title` varchar(100) NOT NULL,
  `Default_Thousands_Separator` varchar(5) DEFAULT NULL,
  `Default_Decimal_Point` varchar(5) DEFAULT NULL,
  `Default_Currency_Symbol` varchar(10) DEFAULT NULL,
  `Default_Money_Thousands_Separator` varchar(5) DEFAULT NULL,
  `Default_Money_Decimal_Point` varchar(5) DEFAULT NULL,
  `Terms_And_Condition_Text` text NOT NULL,
  `Announcement_Text` text NOT NULL,
  `About_Text` text NOT NULL,
  PRIMARY KEY (`Language_Code`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of languages
-- ----------------------------
INSERT INTO `languages` VALUES ('en', 'English', 'Y', '-', 'PHPMaker Demo Project', ',', '.', '$', ',', '.', 'This is the terms and conditions text from database. You can edit this text from the languages table ...', 'This is the announcement text from database. You can edit this text from the languages table ...', '<span class=\'dialogtitle\' style=\'white-space: nowrap;\'>Stock Inventory Management, version 1.0</span><br><br>Managing your stock inventory so easily...<br><br><br><br><br>Web Developer:<br></span>Masino Sinaga (masino.sinaga@gmail.com)<br>Website: <a href=\'http://www.ilovephpmaker.com\' title=\'I Love PHPMaker\' target=\'_blank\'>http://www.ilovephpmaker.com</a><br><br><br>');
INSERT INTO `languages` VALUES ('id', 'Indonesia', 'N', '-', 'PHPMaker Proyek Demo', '.', ',', 'Rp', '.', ',', 'Ini teks syarat dan ketentuan dari database. Anda dapat mengubah teks ini dari tabel languages ... ', 'Ini teks pengumuman dari database. Anda dapat mengubah teks ini dari tabel languages ...', '<span class=\'dialogtitle\' style=\'white-space: nowrap;\'>Stock Inventory Management, version 1.0</span><br><br>Mengelola persediaan barang Anda dengan begitu mudahnya...<br><br><br><br><br>Web Developer:<br></span>Masino Sinaga (masino.sinaga@gmail.com)<br>Website: <a href=\'http://www.ilovephpmaker.com\' title=\'I Love PHPMaker\' target=\'_blank\'>http://www.ilovephpmaker.com</a><br><br><br>');

-- ----------------------------
-- Table structure for settings
-- ----------------------------
DROP TABLE IF EXISTS `settings`;
CREATE TABLE `settings` (
  `Option_ID` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `Option_Default` enum('Y','N') DEFAULT 'N',
  `Default_Theme` varchar(30) DEFAULT NULL,
  `Menu_Horizontal` enum('Y','N') DEFAULT 'Y',
  `Vertical_Menu_Width` int(3) DEFAULT '150',
  `Show_Border_Layout` enum('N','Y') DEFAULT 'Y',
  `Show_Shadow_Layout` enum('N','Y') DEFAULT 'Y',
  `Show_Announcement` enum('Y','N') DEFAULT 'N',
  `Demo_Mode` enum('N','Y') DEFAULT 'N',
  `Show_Page_Processing_Time` enum('Y','N') DEFAULT 'N',
  `Allow_User_Preferences` enum('N','Y') DEFAULT 'Y',
  `SMTP_Server` varchar(50) DEFAULT NULL,
  `SMTP_Server_Port` varchar(5) DEFAULT NULL,
  `SMTP_Server_Username` varchar(50) DEFAULT NULL,
  `SMTP_Server_Password` varchar(50) DEFAULT NULL,
  `Sender_Email` varchar(50) DEFAULT NULL,
  `Recipient_Email` varchar(50) DEFAULT NULL,
  `Use_Default_Locale` enum('Y','N') DEFAULT 'Y',
  `Default_Language` varchar(5) DEFAULT NULL,
  `Default_Timezone` varchar(50) DEFAULT NULL,
  `Default_Thousands_Separator` varchar(5) DEFAULT NULL,
  `Default_Decimal_Point` varchar(5) DEFAULT NULL,
  `Default_Currency_Symbol` varchar(10) DEFAULT NULL,
  `Default_Money_Thousands_Separator` varchar(5) DEFAULT NULL,
  `Default_Money_Decimal_Point` varchar(5) DEFAULT NULL,
  `Maintenance_Mode` enum('N','Y') DEFAULT 'N',
  `Maintenance_Finish_DateTime` datetime DEFAULT NULL,
  `Auto_Normal_After_Maintenance` enum('Y','N') DEFAULT 'Y',
  `Allow_User_To_Register` enum('Y','N') DEFAULT 'Y',
  `Suspend_New_User_Account` enum('N','Y') DEFAULT 'N',
  `User_Need_Activation_After_Registered` enum('Y','N') DEFAULT 'Y',
  `Show_Captcha_On_Registration_Page` enum('Y','N') DEFAULT 'N',
  `Show_Terms_And_Conditions_On_Registration_Page` enum('Y','N') DEFAULT 'Y',
  `Show_Captcha_On_Login_Page` enum('N','Y') DEFAULT 'N',
  `Show_Captcha_On_Forgot_Password_Page` enum('N','Y') DEFAULT 'N',
  `Show_Captcha_On_Change_Password_Page` enum('N','Y') DEFAULT 'N',
  `User_Auto_Login_After_Activation_Or_Registration` enum('Y','N') DEFAULT 'Y',
  `User_Auto_Logout_After_Idle_In_Minutes` int(3) DEFAULT '20',
  `User_Login_Maximum_Retry` int(3) DEFAULT '3',
  `User_Login_Retry_Lockout` int(3) DEFAULT '5',
  `Redirect_To_Last_Visited_Page_After_Login` enum('Y','N') DEFAULT 'Y',
  `Enable_Password_Expiry` enum('Y','N') DEFAULT 'Y',
  `Password_Expiry_In_Days` int(3) DEFAULT '90',
  `Show_Entire_Header` enum('Y','N') DEFAULT 'Y',
  `Logo_Width` int(3) DEFAULT '170',
  `Show_Site_Title_In_Header` enum('Y','N') DEFAULT 'Y',
  `Show_Current_User_In_Header` enum('Y','N') DEFAULT 'Y',
  `Text_Align_In_Header` enum('left','center','right') DEFAULT 'left',
  `Site_Title_Text_Style` enum('normal','capitalize','uppercase') DEFAULT 'normal',
  `Language_Selector_Visibility` enum('inheader','belowheader','hidethemall') DEFAULT 'inheader',
  `Language_Selector_Align` enum('autoadjust','left','center','right') DEFAULT 'autoadjust',
  `Show_Entire_Footer` enum('Y','N') DEFAULT 'Y',
  `Show_Text_In_Footer` enum('Y','N') DEFAULT 'Y',
  `Show_Back_To_Top_On_Footer` enum('N','Y') DEFAULT 'Y',
  `Show_Terms_And_Conditions_On_Footer` enum('Y','N') DEFAULT 'Y',
  `Show_About_Us_On_Footer` enum('N','Y') DEFAULT 'Y',
  `Pagination_Position` enum('1','2','3') DEFAULT '3',
  `Pagination_Style` enum('1','2') DEFAULT '2',
  `Selectable_Records_Per_Page` varchar(50) DEFAULT '1,2,3,5,10,15,20,50',
  `Selectable_Groups_Per_Page` varchar(50) DEFAULT '1,2,3,5,10',
  `Default_Record_Per_Page` int(3) DEFAULT '10',
  `Default_Group_Per_Page` int(3) DEFAULT '3',
  `Maximum_Selected_Records` int(3) DEFAULT '50',
  `Maximum_Selected_Groups` int(3) DEFAULT '50',
  `Show_PageNum_If_Record_Not_Over_Pagesize` enum('Y','N') DEFAULT 'Y',
  `Table_Width_Style` enum('1','2','3') DEFAULT '2' COMMENT '1 = Scroll, 2 = Normal, 3 = 100%',
  `Scroll_Table_Width` int(4) DEFAULT '800',
  `Scroll_Table_Height` int(4) DEFAULT '300',
  `Show_Record_Number_On_List_Page` enum('N','Y') DEFAULT 'Y',
  `Show_Empty_Table_On_List_Page` enum('N','Y') DEFAULT 'Y',
  `Search_Panel_Collapsed` enum('Y','N') DEFAULT 'Y',
  `Filter_Panel_Collapsed` enum('Y','N') DEFAULT 'Y',
  `Rows_Vertical_Align_Top` enum('N','Y') DEFAULT 'Y',
  `Show_Add_Success_Message` enum('N','Y') DEFAULT 'Y',
  `Show_Edit_Success_Message` enum('N','Y') DEFAULT 'Y',
  `jQuery_Auto_Hide_Success_Message` enum('N','Y') DEFAULT 'N',
  `Show_Record_Number_On_Detail_Preview` enum('N','Y') DEFAULT 'Y',
  `Show_Empty_Table_In_Detail_Preview` enum('N','Y') DEFAULT 'Y',
  `Detail_Preview_Table_Width` int(3) DEFAULT '100',
  `Password_Minimum_Length` int(2) DEFAULT '6',
  `Password_Maximum_Length` int(2) DEFAULT '20',
  `Password_Must_Comply_With_Minumum_Length` enum('N','Y') DEFAULT 'Y',
  `Password_Must_Comply_With_Maximum_Length` enum('N','Y') DEFAULT 'Y',
  `Password_Must_Contain_At_Least_One_Lower_Case` enum('N','Y') DEFAULT 'Y',
  `Password_Must_Contain_At_Least_One_Upper_Case` enum('N','Y') DEFAULT 'Y',
  `Password_Must_Contain_At_Least_One_Numeric` enum('N','Y') DEFAULT 'Y',
  `Password_Must_Contain_At_Least_One_Symbol` enum('N','Y') DEFAULT 'Y',
  `Password_Must_Be_Difference_Between_Old_And_New` enum('N','Y') DEFAULT 'Y',
  `Export_Record_Options` enum('selectedrecords','currentpage','allpages') DEFAULT 'selectedrecords',
  `Show_Record_Number_On_Exported_List_Page` enum('N','Y') DEFAULT 'Y',
  `Use_Table_Setting_For_Export_Field_Caption` enum('N','Y') DEFAULT 'Y',
  `Use_Table_Setting_For_Export_Original_Value` enum('N','Y') DEFAULT 'Y',
  `Font_Name` varchar(50) DEFAULT 'tahoma',
  `Font_Size` varchar(4) DEFAULT '11px',
  `Use_Javascript_Message` enum('1','0') DEFAULT '1',
  `Login_Window_Type` enum('popup','default') DEFAULT 'popup',
  `Forgot_Password_Window_Type` enum('popup','default') DEFAULT 'popup',
  `Change_Password_Window_Type` enum('popup','default') DEFAULT 'popup',
  `Registration_Window_Type` enum('popup','default') DEFAULT 'popup',
  `Reset_Password_Field_Options` enum('EmailOrUsername','Username','Email') DEFAULT 'EmailOrUsername',
  `Action_Button_Alignment` enum('Right','Left') DEFAULT 'Right',
  PRIMARY KEY (`Option_ID`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of settings
-- ----------------------------
INSERT INTO `settings` VALUES ('1', 'Y', 'theme-default.css', 'Y', '150', 'N', 'N', 'N', 'Y', 'N', 'Y', 'mail.posindonesia.co.id', '25', 'masino_sinaga@posindonesia.co.id', null, 'masino_sinaga@posindonesia.co.id', 'masino_sinaga@posindonesia.co.id', 'Y', 'id', 'Asia/Jakarta', '.', ',', 'Rp&nbsp;', '.', ',', 'N', '2013-11-12 00:00:00', 'Y', 'Y', 'N', 'Y', 'Y', 'Y', 'N', 'N', 'N', 'Y', '15', '2', '1', 'Y', 'Y', '30', 'Y', '480', 'Y', 'Y', 'right', 'normal', 'belowheader', 'autoadjust', 'Y', 'Y', 'Y', 'Y', 'Y', '3', '2', '1,2,3,5,7,10,15,20,50,100,500,1000', '1,2,3,4,5,10', '10', '3', '50', '5', 'N', '3', '1200', '400', 'Y', 'Y', 'Y', 'N', 'Y', 'Y', 'Y', 'N', 'Y', 'Y', '0', '4', '20', 'N', 'N', 'N', 'N', 'N', 'N', 'N', 'currentpage', 'Y', 'Y', 'Y', 'arial', '13px', '1', 'popup', 'popup', 'popup', 'popup', 'EmailOrUsername', 'Right');

-- ----------------------------
-- Table structure for stats_counter
-- ----------------------------
DROP TABLE IF EXISTS `stats_counter`;
CREATE TABLE `stats_counter` (
  `Type` varchar(50) NOT NULL DEFAULT '',
  `Variable` varchar(50) NOT NULL DEFAULT '',
  `Counter` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`Type`,`Variable`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of stats_counter
-- ----------------------------
INSERT INTO `stats_counter` VALUES ('total', 'hits', '451');
INSERT INTO `stats_counter` VALUES ('browser', 'WebTV', '0');
INSERT INTO `stats_counter` VALUES ('browser', 'Lynx', '0');
INSERT INTO `stats_counter` VALUES ('browser', 'MSIE', '0');
INSERT INTO `stats_counter` VALUES ('browser', 'Opera', '0');
INSERT INTO `stats_counter` VALUES ('browser', 'Konqueror', '0');
INSERT INTO `stats_counter` VALUES ('browser', 'Netscape', '0');
INSERT INTO `stats_counter` VALUES ('browser', 'FireFox', '451');
INSERT INTO `stats_counter` VALUES ('browser', 'Bot', '0');
INSERT INTO `stats_counter` VALUES ('browser', 'Other', '0');
INSERT INTO `stats_counter` VALUES ('os', 'Windows', '451');
INSERT INTO `stats_counter` VALUES ('os', 'Linux', '0');
INSERT INTO `stats_counter` VALUES ('os', 'Mac', '0');
INSERT INTO `stats_counter` VALUES ('os', 'FreeBSD', '0');
INSERT INTO `stats_counter` VALUES ('os', 'SunOS', '0');
INSERT INTO `stats_counter` VALUES ('os', 'IRIX', '0');
INSERT INTO `stats_counter` VALUES ('os', 'BeOS', '0');
INSERT INTO `stats_counter` VALUES ('os', 'OS/2', '0');
INSERT INTO `stats_counter` VALUES ('os', 'AIX', '0');
INSERT INTO `stats_counter` VALUES ('os', 'Other', '0');

-- ----------------------------
-- Table structure for stats_counterlog
-- ----------------------------
DROP TABLE IF EXISTS `stats_counterlog`;
CREATE TABLE `stats_counterlog` (
  `IP_Address` varchar(50) NOT NULL DEFAULT '',
  `Hostname` varchar(50) DEFAULT NULL,
  `First_Visit` datetime NOT NULL,
  `Last_Visit` datetime NOT NULL,
  `Counter` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`IP_Address`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of stats_counterlog
-- ----------------------------
INSERT INTO `stats_counterlog` VALUES ('127.0.0.1', 'MasinoSinaga-PC', '2015-02-13 12:46:22', '2015-02-14 12:30:59', '451');

-- ----------------------------
-- Table structure for stats_date
-- ----------------------------
DROP TABLE IF EXISTS `stats_date`;
CREATE TABLE `stats_date` (
  `Year` smallint(6) NOT NULL DEFAULT '0',
  `Month` tinyint(4) NOT NULL DEFAULT '0',
  `Date` tinyint(4) NOT NULL DEFAULT '0',
  `Hits` bigint(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`Date`,`Month`,`Year`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of stats_date
-- ----------------------------
INSERT INTO `stats_date` VALUES ('2015', '1', '1', '0');
INSERT INTO `stats_date` VALUES ('2015', '1', '2', '0');
INSERT INTO `stats_date` VALUES ('2015', '1', '3', '0');
INSERT INTO `stats_date` VALUES ('2015', '1', '4', '0');
INSERT INTO `stats_date` VALUES ('2015', '1', '5', '0');
INSERT INTO `stats_date` VALUES ('2015', '1', '6', '0');
INSERT INTO `stats_date` VALUES ('2015', '1', '7', '0');
INSERT INTO `stats_date` VALUES ('2015', '1', '8', '0');
INSERT INTO `stats_date` VALUES ('2015', '1', '9', '0');
INSERT INTO `stats_date` VALUES ('2015', '1', '10', '0');
INSERT INTO `stats_date` VALUES ('2015', '1', '11', '0');
INSERT INTO `stats_date` VALUES ('2015', '1', '12', '0');
INSERT INTO `stats_date` VALUES ('2015', '1', '13', '0');
INSERT INTO `stats_date` VALUES ('2015', '1', '14', '0');
INSERT INTO `stats_date` VALUES ('2015', '1', '15', '0');
INSERT INTO `stats_date` VALUES ('2015', '1', '16', '0');
INSERT INTO `stats_date` VALUES ('2015', '1', '17', '0');
INSERT INTO `stats_date` VALUES ('2015', '1', '18', '0');
INSERT INTO `stats_date` VALUES ('2015', '1', '19', '0');
INSERT INTO `stats_date` VALUES ('2015', '1', '20', '0');
INSERT INTO `stats_date` VALUES ('2015', '1', '21', '0');
INSERT INTO `stats_date` VALUES ('2015', '1', '22', '0');
INSERT INTO `stats_date` VALUES ('2015', '1', '23', '0');
INSERT INTO `stats_date` VALUES ('2015', '1', '24', '0');
INSERT INTO `stats_date` VALUES ('2015', '1', '25', '0');
INSERT INTO `stats_date` VALUES ('2015', '1', '26', '0');
INSERT INTO `stats_date` VALUES ('2015', '1', '27', '0');
INSERT INTO `stats_date` VALUES ('2015', '1', '28', '0');
INSERT INTO `stats_date` VALUES ('2015', '1', '29', '0');
INSERT INTO `stats_date` VALUES ('2015', '1', '30', '0');
INSERT INTO `stats_date` VALUES ('2015', '1', '31', '0');
INSERT INTO `stats_date` VALUES ('2015', '2', '1', '0');
INSERT INTO `stats_date` VALUES ('2015', '2', '2', '0');
INSERT INTO `stats_date` VALUES ('2015', '2', '3', '0');
INSERT INTO `stats_date` VALUES ('2015', '2', '4', '0');
INSERT INTO `stats_date` VALUES ('2015', '2', '5', '0');
INSERT INTO `stats_date` VALUES ('2015', '2', '6', '0');
INSERT INTO `stats_date` VALUES ('2015', '2', '7', '0');
INSERT INTO `stats_date` VALUES ('2015', '2', '8', '0');
INSERT INTO `stats_date` VALUES ('2015', '2', '9', '0');
INSERT INTO `stats_date` VALUES ('2015', '2', '10', '0');
INSERT INTO `stats_date` VALUES ('2015', '2', '11', '0');
INSERT INTO `stats_date` VALUES ('2015', '2', '12', '0');
INSERT INTO `stats_date` VALUES ('2015', '2', '13', '27');
INSERT INTO `stats_date` VALUES ('2015', '2', '14', '424');
INSERT INTO `stats_date` VALUES ('2015', '2', '15', '0');
INSERT INTO `stats_date` VALUES ('2015', '2', '16', '0');
INSERT INTO `stats_date` VALUES ('2015', '2', '17', '0');
INSERT INTO `stats_date` VALUES ('2015', '2', '18', '0');
INSERT INTO `stats_date` VALUES ('2015', '2', '19', '0');
INSERT INTO `stats_date` VALUES ('2015', '2', '20', '0');
INSERT INTO `stats_date` VALUES ('2015', '2', '21', '0');
INSERT INTO `stats_date` VALUES ('2015', '2', '22', '0');
INSERT INTO `stats_date` VALUES ('2015', '2', '23', '0');
INSERT INTO `stats_date` VALUES ('2015', '2', '24', '0');
INSERT INTO `stats_date` VALUES ('2015', '2', '25', '0');
INSERT INTO `stats_date` VALUES ('2015', '2', '26', '0');
INSERT INTO `stats_date` VALUES ('2015', '2', '27', '0');
INSERT INTO `stats_date` VALUES ('2015', '2', '28', '0');
INSERT INTO `stats_date` VALUES ('2015', '3', '1', '0');
INSERT INTO `stats_date` VALUES ('2015', '3', '2', '0');
INSERT INTO `stats_date` VALUES ('2015', '3', '3', '0');
INSERT INTO `stats_date` VALUES ('2015', '3', '4', '0');
INSERT INTO `stats_date` VALUES ('2015', '3', '5', '0');
INSERT INTO `stats_date` VALUES ('2015', '3', '6', '0');
INSERT INTO `stats_date` VALUES ('2015', '3', '7', '0');
INSERT INTO `stats_date` VALUES ('2015', '3', '8', '0');
INSERT INTO `stats_date` VALUES ('2015', '3', '9', '0');
INSERT INTO `stats_date` VALUES ('2015', '3', '10', '0');
INSERT INTO `stats_date` VALUES ('2015', '3', '11', '0');
INSERT INTO `stats_date` VALUES ('2015', '3', '12', '0');
INSERT INTO `stats_date` VALUES ('2015', '3', '13', '0');
INSERT INTO `stats_date` VALUES ('2015', '3', '14', '0');
INSERT INTO `stats_date` VALUES ('2015', '3', '15', '0');
INSERT INTO `stats_date` VALUES ('2015', '3', '16', '0');
INSERT INTO `stats_date` VALUES ('2015', '3', '17', '0');
INSERT INTO `stats_date` VALUES ('2015', '3', '18', '0');
INSERT INTO `stats_date` VALUES ('2015', '3', '19', '0');
INSERT INTO `stats_date` VALUES ('2015', '3', '20', '0');
INSERT INTO `stats_date` VALUES ('2015', '3', '21', '0');
INSERT INTO `stats_date` VALUES ('2015', '3', '22', '0');
INSERT INTO `stats_date` VALUES ('2015', '3', '23', '0');
INSERT INTO `stats_date` VALUES ('2015', '3', '24', '0');
INSERT INTO `stats_date` VALUES ('2015', '3', '25', '0');
INSERT INTO `stats_date` VALUES ('2015', '3', '26', '0');
INSERT INTO `stats_date` VALUES ('2015', '3', '27', '0');
INSERT INTO `stats_date` VALUES ('2015', '3', '28', '0');
INSERT INTO `stats_date` VALUES ('2015', '3', '29', '0');
INSERT INTO `stats_date` VALUES ('2015', '3', '30', '0');
INSERT INTO `stats_date` VALUES ('2015', '3', '31', '0');
INSERT INTO `stats_date` VALUES ('2015', '4', '1', '0');
INSERT INTO `stats_date` VALUES ('2015', '4', '2', '0');
INSERT INTO `stats_date` VALUES ('2015', '4', '3', '0');
INSERT INTO `stats_date` VALUES ('2015', '4', '4', '0');
INSERT INTO `stats_date` VALUES ('2015', '4', '5', '0');
INSERT INTO `stats_date` VALUES ('2015', '4', '6', '0');
INSERT INTO `stats_date` VALUES ('2015', '4', '7', '0');
INSERT INTO `stats_date` VALUES ('2015', '4', '8', '0');
INSERT INTO `stats_date` VALUES ('2015', '4', '9', '0');
INSERT INTO `stats_date` VALUES ('2015', '4', '10', '0');
INSERT INTO `stats_date` VALUES ('2015', '4', '11', '0');
INSERT INTO `stats_date` VALUES ('2015', '4', '12', '0');
INSERT INTO `stats_date` VALUES ('2015', '4', '13', '0');
INSERT INTO `stats_date` VALUES ('2015', '4', '14', '0');
INSERT INTO `stats_date` VALUES ('2015', '4', '15', '0');
INSERT INTO `stats_date` VALUES ('2015', '4', '16', '0');
INSERT INTO `stats_date` VALUES ('2015', '4', '17', '0');
INSERT INTO `stats_date` VALUES ('2015', '4', '18', '0');
INSERT INTO `stats_date` VALUES ('2015', '4', '19', '0');
INSERT INTO `stats_date` VALUES ('2015', '4', '20', '0');
INSERT INTO `stats_date` VALUES ('2015', '4', '21', '0');
INSERT INTO `stats_date` VALUES ('2015', '4', '22', '0');
INSERT INTO `stats_date` VALUES ('2015', '4', '23', '0');
INSERT INTO `stats_date` VALUES ('2015', '4', '24', '0');
INSERT INTO `stats_date` VALUES ('2015', '4', '25', '0');
INSERT INTO `stats_date` VALUES ('2015', '4', '26', '0');
INSERT INTO `stats_date` VALUES ('2015', '4', '27', '0');
INSERT INTO `stats_date` VALUES ('2015', '4', '28', '0');
INSERT INTO `stats_date` VALUES ('2015', '4', '29', '0');
INSERT INTO `stats_date` VALUES ('2015', '4', '30', '0');
INSERT INTO `stats_date` VALUES ('2015', '5', '1', '0');
INSERT INTO `stats_date` VALUES ('2015', '5', '2', '0');
INSERT INTO `stats_date` VALUES ('2015', '5', '3', '0');
INSERT INTO `stats_date` VALUES ('2015', '5', '4', '0');
INSERT INTO `stats_date` VALUES ('2015', '5', '5', '0');
INSERT INTO `stats_date` VALUES ('2015', '5', '6', '0');
INSERT INTO `stats_date` VALUES ('2015', '5', '7', '0');
INSERT INTO `stats_date` VALUES ('2015', '5', '8', '0');
INSERT INTO `stats_date` VALUES ('2015', '5', '9', '0');
INSERT INTO `stats_date` VALUES ('2015', '5', '10', '0');
INSERT INTO `stats_date` VALUES ('2015', '5', '11', '0');
INSERT INTO `stats_date` VALUES ('2015', '5', '12', '0');
INSERT INTO `stats_date` VALUES ('2015', '5', '13', '0');
INSERT INTO `stats_date` VALUES ('2015', '5', '14', '0');
INSERT INTO `stats_date` VALUES ('2015', '5', '15', '0');
INSERT INTO `stats_date` VALUES ('2015', '5', '16', '0');
INSERT INTO `stats_date` VALUES ('2015', '5', '17', '0');
INSERT INTO `stats_date` VALUES ('2015', '5', '18', '0');
INSERT INTO `stats_date` VALUES ('2015', '5', '19', '0');
INSERT INTO `stats_date` VALUES ('2015', '5', '20', '0');
INSERT INTO `stats_date` VALUES ('2015', '5', '21', '0');
INSERT INTO `stats_date` VALUES ('2015', '5', '22', '0');
INSERT INTO `stats_date` VALUES ('2015', '5', '23', '0');
INSERT INTO `stats_date` VALUES ('2015', '5', '24', '0');
INSERT INTO `stats_date` VALUES ('2015', '5', '25', '0');
INSERT INTO `stats_date` VALUES ('2015', '5', '26', '0');
INSERT INTO `stats_date` VALUES ('2015', '5', '27', '0');
INSERT INTO `stats_date` VALUES ('2015', '5', '28', '0');
INSERT INTO `stats_date` VALUES ('2015', '5', '29', '0');
INSERT INTO `stats_date` VALUES ('2015', '5', '30', '0');
INSERT INTO `stats_date` VALUES ('2015', '5', '31', '0');
INSERT INTO `stats_date` VALUES ('2015', '6', '1', '0');
INSERT INTO `stats_date` VALUES ('2015', '6', '2', '0');
INSERT INTO `stats_date` VALUES ('2015', '6', '3', '0');
INSERT INTO `stats_date` VALUES ('2015', '6', '4', '0');
INSERT INTO `stats_date` VALUES ('2015', '6', '5', '0');
INSERT INTO `stats_date` VALUES ('2015', '6', '6', '0');
INSERT INTO `stats_date` VALUES ('2015', '6', '7', '0');
INSERT INTO `stats_date` VALUES ('2015', '6', '8', '0');
INSERT INTO `stats_date` VALUES ('2015', '6', '9', '0');
INSERT INTO `stats_date` VALUES ('2015', '6', '10', '0');
INSERT INTO `stats_date` VALUES ('2015', '6', '11', '0');
INSERT INTO `stats_date` VALUES ('2015', '6', '12', '0');
INSERT INTO `stats_date` VALUES ('2015', '6', '13', '0');
INSERT INTO `stats_date` VALUES ('2015', '6', '14', '0');
INSERT INTO `stats_date` VALUES ('2015', '6', '15', '0');
INSERT INTO `stats_date` VALUES ('2015', '6', '16', '0');
INSERT INTO `stats_date` VALUES ('2015', '6', '17', '0');
INSERT INTO `stats_date` VALUES ('2015', '6', '18', '0');
INSERT INTO `stats_date` VALUES ('2015', '6', '19', '0');
INSERT INTO `stats_date` VALUES ('2015', '6', '20', '0');
INSERT INTO `stats_date` VALUES ('2015', '6', '21', '0');
INSERT INTO `stats_date` VALUES ('2015', '6', '22', '0');
INSERT INTO `stats_date` VALUES ('2015', '6', '23', '0');
INSERT INTO `stats_date` VALUES ('2015', '6', '24', '0');
INSERT INTO `stats_date` VALUES ('2015', '6', '25', '0');
INSERT INTO `stats_date` VALUES ('2015', '6', '26', '0');
INSERT INTO `stats_date` VALUES ('2015', '6', '27', '0');
INSERT INTO `stats_date` VALUES ('2015', '6', '28', '0');
INSERT INTO `stats_date` VALUES ('2015', '6', '29', '0');
INSERT INTO `stats_date` VALUES ('2015', '6', '30', '0');
INSERT INTO `stats_date` VALUES ('2015', '7', '1', '0');
INSERT INTO `stats_date` VALUES ('2015', '7', '2', '0');
INSERT INTO `stats_date` VALUES ('2015', '7', '3', '0');
INSERT INTO `stats_date` VALUES ('2015', '7', '4', '0');
INSERT INTO `stats_date` VALUES ('2015', '7', '5', '0');
INSERT INTO `stats_date` VALUES ('2015', '7', '6', '0');
INSERT INTO `stats_date` VALUES ('2015', '7', '7', '0');
INSERT INTO `stats_date` VALUES ('2015', '7', '8', '0');
INSERT INTO `stats_date` VALUES ('2015', '7', '9', '0');
INSERT INTO `stats_date` VALUES ('2015', '7', '10', '0');
INSERT INTO `stats_date` VALUES ('2015', '7', '11', '0');
INSERT INTO `stats_date` VALUES ('2015', '7', '12', '0');
INSERT INTO `stats_date` VALUES ('2015', '7', '13', '0');
INSERT INTO `stats_date` VALUES ('2015', '7', '14', '0');
INSERT INTO `stats_date` VALUES ('2015', '7', '15', '0');
INSERT INTO `stats_date` VALUES ('2015', '7', '16', '0');
INSERT INTO `stats_date` VALUES ('2015', '7', '17', '0');
INSERT INTO `stats_date` VALUES ('2015', '7', '18', '0');
INSERT INTO `stats_date` VALUES ('2015', '7', '19', '0');
INSERT INTO `stats_date` VALUES ('2015', '7', '20', '0');
INSERT INTO `stats_date` VALUES ('2015', '7', '21', '0');
INSERT INTO `stats_date` VALUES ('2015', '7', '22', '0');
INSERT INTO `stats_date` VALUES ('2015', '7', '23', '0');
INSERT INTO `stats_date` VALUES ('2015', '7', '24', '0');
INSERT INTO `stats_date` VALUES ('2015', '7', '25', '0');
INSERT INTO `stats_date` VALUES ('2015', '7', '26', '0');
INSERT INTO `stats_date` VALUES ('2015', '7', '27', '0');
INSERT INTO `stats_date` VALUES ('2015', '7', '28', '0');
INSERT INTO `stats_date` VALUES ('2015', '7', '29', '0');
INSERT INTO `stats_date` VALUES ('2015', '7', '30', '0');
INSERT INTO `stats_date` VALUES ('2015', '7', '31', '0');
INSERT INTO `stats_date` VALUES ('2015', '8', '1', '0');
INSERT INTO `stats_date` VALUES ('2015', '8', '2', '0');
INSERT INTO `stats_date` VALUES ('2015', '8', '3', '0');
INSERT INTO `stats_date` VALUES ('2015', '8', '4', '0');
INSERT INTO `stats_date` VALUES ('2015', '8', '5', '0');
INSERT INTO `stats_date` VALUES ('2015', '8', '6', '0');
INSERT INTO `stats_date` VALUES ('2015', '8', '7', '0');
INSERT INTO `stats_date` VALUES ('2015', '8', '8', '0');
INSERT INTO `stats_date` VALUES ('2015', '8', '9', '0');
INSERT INTO `stats_date` VALUES ('2015', '8', '10', '0');
INSERT INTO `stats_date` VALUES ('2015', '8', '11', '0');
INSERT INTO `stats_date` VALUES ('2015', '8', '12', '0');
INSERT INTO `stats_date` VALUES ('2015', '8', '13', '0');
INSERT INTO `stats_date` VALUES ('2015', '8', '14', '0');
INSERT INTO `stats_date` VALUES ('2015', '8', '15', '0');
INSERT INTO `stats_date` VALUES ('2015', '8', '16', '0');
INSERT INTO `stats_date` VALUES ('2015', '8', '17', '0');
INSERT INTO `stats_date` VALUES ('2015', '8', '18', '0');
INSERT INTO `stats_date` VALUES ('2015', '8', '19', '0');
INSERT INTO `stats_date` VALUES ('2015', '8', '20', '0');
INSERT INTO `stats_date` VALUES ('2015', '8', '21', '0');
INSERT INTO `stats_date` VALUES ('2015', '8', '22', '0');
INSERT INTO `stats_date` VALUES ('2015', '8', '23', '0');
INSERT INTO `stats_date` VALUES ('2015', '8', '24', '0');
INSERT INTO `stats_date` VALUES ('2015', '8', '25', '0');
INSERT INTO `stats_date` VALUES ('2015', '8', '26', '0');
INSERT INTO `stats_date` VALUES ('2015', '8', '27', '0');
INSERT INTO `stats_date` VALUES ('2015', '8', '28', '0');
INSERT INTO `stats_date` VALUES ('2015', '8', '29', '0');
INSERT INTO `stats_date` VALUES ('2015', '8', '30', '0');
INSERT INTO `stats_date` VALUES ('2015', '8', '31', '0');
INSERT INTO `stats_date` VALUES ('2015', '9', '1', '0');
INSERT INTO `stats_date` VALUES ('2015', '9', '2', '0');
INSERT INTO `stats_date` VALUES ('2015', '9', '3', '0');
INSERT INTO `stats_date` VALUES ('2015', '9', '4', '0');
INSERT INTO `stats_date` VALUES ('2015', '9', '5', '0');
INSERT INTO `stats_date` VALUES ('2015', '9', '6', '0');
INSERT INTO `stats_date` VALUES ('2015', '9', '7', '0');
INSERT INTO `stats_date` VALUES ('2015', '9', '8', '0');
INSERT INTO `stats_date` VALUES ('2015', '9', '9', '0');
INSERT INTO `stats_date` VALUES ('2015', '9', '10', '0');
INSERT INTO `stats_date` VALUES ('2015', '9', '11', '0');
INSERT INTO `stats_date` VALUES ('2015', '9', '12', '0');
INSERT INTO `stats_date` VALUES ('2015', '9', '13', '0');
INSERT INTO `stats_date` VALUES ('2015', '9', '14', '0');
INSERT INTO `stats_date` VALUES ('2015', '9', '15', '0');
INSERT INTO `stats_date` VALUES ('2015', '9', '16', '0');
INSERT INTO `stats_date` VALUES ('2015', '9', '17', '0');
INSERT INTO `stats_date` VALUES ('2015', '9', '18', '0');
INSERT INTO `stats_date` VALUES ('2015', '9', '19', '0');
INSERT INTO `stats_date` VALUES ('2015', '9', '20', '0');
INSERT INTO `stats_date` VALUES ('2015', '9', '21', '0');
INSERT INTO `stats_date` VALUES ('2015', '9', '22', '0');
INSERT INTO `stats_date` VALUES ('2015', '9', '23', '0');
INSERT INTO `stats_date` VALUES ('2015', '9', '24', '0');
INSERT INTO `stats_date` VALUES ('2015', '9', '25', '0');
INSERT INTO `stats_date` VALUES ('2015', '9', '26', '0');
INSERT INTO `stats_date` VALUES ('2015', '9', '27', '0');
INSERT INTO `stats_date` VALUES ('2015', '9', '28', '0');
INSERT INTO `stats_date` VALUES ('2015', '9', '29', '0');
INSERT INTO `stats_date` VALUES ('2015', '9', '30', '0');
INSERT INTO `stats_date` VALUES ('2015', '10', '1', '0');
INSERT INTO `stats_date` VALUES ('2015', '10', '2', '0');
INSERT INTO `stats_date` VALUES ('2015', '10', '3', '0');
INSERT INTO `stats_date` VALUES ('2015', '10', '4', '0');
INSERT INTO `stats_date` VALUES ('2015', '10', '5', '0');
INSERT INTO `stats_date` VALUES ('2015', '10', '6', '0');
INSERT INTO `stats_date` VALUES ('2015', '10', '7', '0');
INSERT INTO `stats_date` VALUES ('2015', '10', '8', '0');
INSERT INTO `stats_date` VALUES ('2015', '10', '9', '0');
INSERT INTO `stats_date` VALUES ('2015', '10', '10', '0');
INSERT INTO `stats_date` VALUES ('2015', '10', '11', '0');
INSERT INTO `stats_date` VALUES ('2015', '10', '12', '0');
INSERT INTO `stats_date` VALUES ('2015', '10', '13', '0');
INSERT INTO `stats_date` VALUES ('2015', '10', '14', '0');
INSERT INTO `stats_date` VALUES ('2015', '10', '15', '0');
INSERT INTO `stats_date` VALUES ('2015', '10', '16', '0');
INSERT INTO `stats_date` VALUES ('2015', '10', '17', '0');
INSERT INTO `stats_date` VALUES ('2015', '10', '18', '0');
INSERT INTO `stats_date` VALUES ('2015', '10', '19', '0');
INSERT INTO `stats_date` VALUES ('2015', '10', '20', '0');
INSERT INTO `stats_date` VALUES ('2015', '10', '21', '0');
INSERT INTO `stats_date` VALUES ('2015', '10', '22', '0');
INSERT INTO `stats_date` VALUES ('2015', '10', '23', '0');
INSERT INTO `stats_date` VALUES ('2015', '10', '24', '0');
INSERT INTO `stats_date` VALUES ('2015', '10', '25', '0');
INSERT INTO `stats_date` VALUES ('2015', '10', '26', '0');
INSERT INTO `stats_date` VALUES ('2015', '10', '27', '0');
INSERT INTO `stats_date` VALUES ('2015', '10', '28', '0');
INSERT INTO `stats_date` VALUES ('2015', '10', '29', '0');
INSERT INTO `stats_date` VALUES ('2015', '10', '30', '0');
INSERT INTO `stats_date` VALUES ('2015', '10', '31', '0');
INSERT INTO `stats_date` VALUES ('2015', '11', '1', '0');
INSERT INTO `stats_date` VALUES ('2015', '11', '2', '0');
INSERT INTO `stats_date` VALUES ('2015', '11', '3', '0');
INSERT INTO `stats_date` VALUES ('2015', '11', '4', '0');
INSERT INTO `stats_date` VALUES ('2015', '11', '5', '0');
INSERT INTO `stats_date` VALUES ('2015', '11', '6', '0');
INSERT INTO `stats_date` VALUES ('2015', '11', '7', '0');
INSERT INTO `stats_date` VALUES ('2015', '11', '8', '0');
INSERT INTO `stats_date` VALUES ('2015', '11', '9', '0');
INSERT INTO `stats_date` VALUES ('2015', '11', '10', '0');
INSERT INTO `stats_date` VALUES ('2015', '11', '11', '0');
INSERT INTO `stats_date` VALUES ('2015', '11', '12', '0');
INSERT INTO `stats_date` VALUES ('2015', '11', '13', '0');
INSERT INTO `stats_date` VALUES ('2015', '11', '14', '0');
INSERT INTO `stats_date` VALUES ('2015', '11', '15', '0');
INSERT INTO `stats_date` VALUES ('2015', '11', '16', '0');
INSERT INTO `stats_date` VALUES ('2015', '11', '17', '0');
INSERT INTO `stats_date` VALUES ('2015', '11', '18', '0');
INSERT INTO `stats_date` VALUES ('2015', '11', '19', '0');
INSERT INTO `stats_date` VALUES ('2015', '11', '20', '0');
INSERT INTO `stats_date` VALUES ('2015', '11', '21', '0');
INSERT INTO `stats_date` VALUES ('2015', '11', '22', '0');
INSERT INTO `stats_date` VALUES ('2015', '11', '23', '0');
INSERT INTO `stats_date` VALUES ('2015', '11', '24', '0');
INSERT INTO `stats_date` VALUES ('2015', '11', '25', '0');
INSERT INTO `stats_date` VALUES ('2015', '11', '26', '0');
INSERT INTO `stats_date` VALUES ('2015', '11', '27', '0');
INSERT INTO `stats_date` VALUES ('2015', '11', '28', '0');
INSERT INTO `stats_date` VALUES ('2015', '11', '29', '0');
INSERT INTO `stats_date` VALUES ('2015', '11', '30', '0');
INSERT INTO `stats_date` VALUES ('2015', '12', '1', '0');
INSERT INTO `stats_date` VALUES ('2015', '12', '2', '0');
INSERT INTO `stats_date` VALUES ('2015', '12', '3', '0');
INSERT INTO `stats_date` VALUES ('2015', '12', '4', '0');
INSERT INTO `stats_date` VALUES ('2015', '12', '5', '0');
INSERT INTO `stats_date` VALUES ('2015', '12', '6', '0');
INSERT INTO `stats_date` VALUES ('2015', '12', '7', '0');
INSERT INTO `stats_date` VALUES ('2015', '12', '8', '0');
INSERT INTO `stats_date` VALUES ('2015', '12', '9', '0');
INSERT INTO `stats_date` VALUES ('2015', '12', '10', '0');
INSERT INTO `stats_date` VALUES ('2015', '12', '11', '0');
INSERT INTO `stats_date` VALUES ('2015', '12', '12', '0');
INSERT INTO `stats_date` VALUES ('2015', '12', '13', '0');
INSERT INTO `stats_date` VALUES ('2015', '12', '14', '0');
INSERT INTO `stats_date` VALUES ('2015', '12', '15', '0');
INSERT INTO `stats_date` VALUES ('2015', '12', '16', '0');
INSERT INTO `stats_date` VALUES ('2015', '12', '17', '0');
INSERT INTO `stats_date` VALUES ('2015', '12', '18', '0');
INSERT INTO `stats_date` VALUES ('2015', '12', '19', '0');
INSERT INTO `stats_date` VALUES ('2015', '12', '20', '0');
INSERT INTO `stats_date` VALUES ('2015', '12', '21', '0');
INSERT INTO `stats_date` VALUES ('2015', '12', '22', '0');
INSERT INTO `stats_date` VALUES ('2015', '12', '23', '0');
INSERT INTO `stats_date` VALUES ('2015', '12', '24', '0');
INSERT INTO `stats_date` VALUES ('2015', '12', '25', '0');
INSERT INTO `stats_date` VALUES ('2015', '12', '26', '0');
INSERT INTO `stats_date` VALUES ('2015', '12', '27', '0');
INSERT INTO `stats_date` VALUES ('2015', '12', '28', '0');
INSERT INTO `stats_date` VALUES ('2015', '12', '29', '0');
INSERT INTO `stats_date` VALUES ('2015', '12', '30', '0');
INSERT INTO `stats_date` VALUES ('2015', '12', '31', '0');

-- ----------------------------
-- Table structure for stats_hour
-- ----------------------------
DROP TABLE IF EXISTS `stats_hour`;
CREATE TABLE `stats_hour` (
  `Year` smallint(6) NOT NULL DEFAULT '0',
  `Month` tinyint(4) NOT NULL DEFAULT '0',
  `Date` tinyint(4) NOT NULL DEFAULT '0',
  `Hour` tinyint(4) NOT NULL DEFAULT '0',
  `Hits` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`Date`,`Hour`,`Month`,`Year`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of stats_hour
-- ----------------------------
INSERT INTO `stats_hour` VALUES ('2015', '2', '13', '0', '0');
INSERT INTO `stats_hour` VALUES ('2015', '2', '13', '1', '0');
INSERT INTO `stats_hour` VALUES ('2015', '2', '13', '2', '0');
INSERT INTO `stats_hour` VALUES ('2015', '2', '13', '3', '0');
INSERT INTO `stats_hour` VALUES ('2015', '2', '13', '4', '0');
INSERT INTO `stats_hour` VALUES ('2015', '2', '13', '5', '0');
INSERT INTO `stats_hour` VALUES ('2015', '2', '13', '6', '0');
INSERT INTO `stats_hour` VALUES ('2015', '2', '13', '7', '0');
INSERT INTO `stats_hour` VALUES ('2015', '2', '13', '8', '0');
INSERT INTO `stats_hour` VALUES ('2015', '2', '13', '9', '0');
INSERT INTO `stats_hour` VALUES ('2015', '2', '13', '10', '0');
INSERT INTO `stats_hour` VALUES ('2015', '2', '13', '11', '0');
INSERT INTO `stats_hour` VALUES ('2015', '2', '13', '12', '3');
INSERT INTO `stats_hour` VALUES ('2015', '2', '13', '13', '2');
INSERT INTO `stats_hour` VALUES ('2015', '2', '13', '14', '14');
INSERT INTO `stats_hour` VALUES ('2015', '2', '13', '15', '0');
INSERT INTO `stats_hour` VALUES ('2015', '2', '13', '16', '0');
INSERT INTO `stats_hour` VALUES ('2015', '2', '13', '17', '0');
INSERT INTO `stats_hour` VALUES ('2015', '2', '13', '18', '8');
INSERT INTO `stats_hour` VALUES ('2015', '2', '13', '19', '0');
INSERT INTO `stats_hour` VALUES ('2015', '2', '13', '20', '0');
INSERT INTO `stats_hour` VALUES ('2015', '2', '13', '21', '0');
INSERT INTO `stats_hour` VALUES ('2015', '2', '13', '22', '0');
INSERT INTO `stats_hour` VALUES ('2015', '2', '13', '23', '0');
INSERT INTO `stats_hour` VALUES ('2015', '2', '14', '0', '0');
INSERT INTO `stats_hour` VALUES ('2015', '2', '14', '1', '0');
INSERT INTO `stats_hour` VALUES ('2015', '2', '14', '2', '0');
INSERT INTO `stats_hour` VALUES ('2015', '2', '14', '3', '0');
INSERT INTO `stats_hour` VALUES ('2015', '2', '14', '4', '0');
INSERT INTO `stats_hour` VALUES ('2015', '2', '14', '5', '0');
INSERT INTO `stats_hour` VALUES ('2015', '2', '14', '6', '0');
INSERT INTO `stats_hour` VALUES ('2015', '2', '14', '7', '0');
INSERT INTO `stats_hour` VALUES ('2015', '2', '14', '8', '0');
INSERT INTO `stats_hour` VALUES ('2015', '2', '14', '9', '0');
INSERT INTO `stats_hour` VALUES ('2015', '2', '14', '10', '43');
INSERT INTO `stats_hour` VALUES ('2015', '2', '14', '11', '225');
INSERT INTO `stats_hour` VALUES ('2015', '2', '14', '12', '156');
INSERT INTO `stats_hour` VALUES ('2015', '2', '14', '13', '0');
INSERT INTO `stats_hour` VALUES ('2015', '2', '14', '14', '0');
INSERT INTO `stats_hour` VALUES ('2015', '2', '14', '15', '0');
INSERT INTO `stats_hour` VALUES ('2015', '2', '14', '16', '0');
INSERT INTO `stats_hour` VALUES ('2015', '2', '14', '17', '0');
INSERT INTO `stats_hour` VALUES ('2015', '2', '14', '18', '0');
INSERT INTO `stats_hour` VALUES ('2015', '2', '14', '19', '0');
INSERT INTO `stats_hour` VALUES ('2015', '2', '14', '20', '0');
INSERT INTO `stats_hour` VALUES ('2015', '2', '14', '21', '0');
INSERT INTO `stats_hour` VALUES ('2015', '2', '14', '22', '0');
INSERT INTO `stats_hour` VALUES ('2015', '2', '14', '23', '0');

-- ----------------------------
-- Table structure for stats_month
-- ----------------------------
DROP TABLE IF EXISTS `stats_month`;
CREATE TABLE `stats_month` (
  `Year` smallint(6) NOT NULL DEFAULT '0',
  `Month` tinyint(4) NOT NULL DEFAULT '0',
  `Hits` bigint(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`Year`,`Month`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of stats_month
-- ----------------------------
INSERT INTO `stats_month` VALUES ('2015', '1', '0');
INSERT INTO `stats_month` VALUES ('2015', '2', '451');
INSERT INTO `stats_month` VALUES ('2015', '3', '0');
INSERT INTO `stats_month` VALUES ('2015', '4', '0');
INSERT INTO `stats_month` VALUES ('2015', '5', '0');
INSERT INTO `stats_month` VALUES ('2015', '6', '0');
INSERT INTO `stats_month` VALUES ('2015', '7', '0');
INSERT INTO `stats_month` VALUES ('2015', '8', '0');
INSERT INTO `stats_month` VALUES ('2015', '9', '0');
INSERT INTO `stats_month` VALUES ('2015', '10', '0');
INSERT INTO `stats_month` VALUES ('2015', '11', '0');
INSERT INTO `stats_month` VALUES ('2015', '12', '0');

-- ----------------------------
-- Table structure for stats_year
-- ----------------------------
DROP TABLE IF EXISTS `stats_year`;
CREATE TABLE `stats_year` (
  `Year` smallint(6) NOT NULL DEFAULT '0',
  `Hits` bigint(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`Year`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of stats_year
-- ----------------------------
INSERT INTO `stats_year` VALUES ('2015', '451');

-- ----------------------------
-- Table structure for themes
-- ----------------------------
DROP TABLE IF EXISTS `themes`;
CREATE TABLE `themes` (
  `Theme_ID` varchar(25) NOT NULL,
  `Theme_Name` varchar(25) NOT NULL,
  `Default` enum('Y','N') NOT NULL DEFAULT 'N',
  PRIMARY KEY (`Theme_ID`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of themes
-- ----------------------------
INSERT INTO `themes` VALUES ('theme-blue.css', 'Blue', 'N');
INSERT INTO `themes` VALUES ('theme-dark.css', 'Dark', 'N');
INSERT INTO `themes` VALUES ('theme-darkglass.css', 'Dark Glass', 'N');
INSERT INTO `themes` VALUES ('theme-glass.css', 'Glass', 'N');
INSERT INTO `themes` VALUES ('theme-green.css', 'Green', 'N');
INSERT INTO `themes` VALUES ('theme-maroon.css', 'Maroon', 'Y');
INSERT INTO `themes` VALUES ('theme-olive.css', 'Olive', 'N');
INSERT INTO `themes` VALUES ('theme-professional.css', 'Professional', 'N');
INSERT INTO `themes` VALUES ('theme-purple.css', 'Purple', 'N');
INSERT INTO `themes` VALUES ('theme-red.css', 'Red', 'N');
INSERT INTO `themes` VALUES ('theme-sand.css', 'Sand', 'N');
INSERT INTO `themes` VALUES ('theme-silver.css', 'Silver', 'N');
INSERT INTO `themes` VALUES ('theme-default.css', 'Default', 'N');
INSERT INTO `themes` VALUES ('theme-black.css', 'Black', 'N');
INSERT INTO `themes` VALUES ('theme-gray.css', 'Gray', 'N');
INSERT INTO `themes` VALUES ('theme-white.cs', 'White', 'N');

-- ----------------------------
-- Table structure for timezone
-- ----------------------------
DROP TABLE IF EXISTS `timezone`;
CREATE TABLE `timezone` (
  `Timezone` varchar(50) NOT NULL,
  `Default` enum('Y','N') NOT NULL DEFAULT 'N',
  PRIMARY KEY (`Timezone`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of timezone
-- ----------------------------
INSERT INTO `timezone` VALUES ('Africa/Abidjan', 'N');
INSERT INTO `timezone` VALUES ('Africa/Accra', 'N');
INSERT INTO `timezone` VALUES ('Africa/Addis_Ababa', 'N');
INSERT INTO `timezone` VALUES ('Africa/Algiers', 'N');
INSERT INTO `timezone` VALUES ('Africa/Asmara', 'N');
INSERT INTO `timezone` VALUES ('Africa/Asmera', 'N');
INSERT INTO `timezone` VALUES ('Africa/Bamako', 'N');
INSERT INTO `timezone` VALUES ('Africa/Bangui', 'N');
INSERT INTO `timezone` VALUES ('Africa/Banjul', 'N');
INSERT INTO `timezone` VALUES ('Africa/Bissau', 'N');
INSERT INTO `timezone` VALUES ('Africa/Blantyre', 'N');
INSERT INTO `timezone` VALUES ('Africa/Brazzaville', 'N');
INSERT INTO `timezone` VALUES ('Africa/Bujumbura', 'N');
INSERT INTO `timezone` VALUES ('Africa/Cairo', 'N');
INSERT INTO `timezone` VALUES ('Africa/Casablanca', 'N');
INSERT INTO `timezone` VALUES ('Africa/Ceuta', 'N');
INSERT INTO `timezone` VALUES ('Africa/Conakry', 'N');
INSERT INTO `timezone` VALUES ('Africa/Dakar', 'N');
INSERT INTO `timezone` VALUES ('Africa/Dar_es_Salaam', 'N');
INSERT INTO `timezone` VALUES ('Africa/Djibouti', 'N');
INSERT INTO `timezone` VALUES ('Africa/Douala', 'N');
INSERT INTO `timezone` VALUES ('Africa/El_Aaiun', 'N');
INSERT INTO `timezone` VALUES ('Africa/Freetown', 'N');
INSERT INTO `timezone` VALUES ('Africa/Gaborone', 'N');
INSERT INTO `timezone` VALUES ('Africa/Harare', 'N');
INSERT INTO `timezone` VALUES ('Africa/Johannesburg', 'N');
INSERT INTO `timezone` VALUES ('Africa/Kampala', 'N');
INSERT INTO `timezone` VALUES ('Africa/Khartoum', 'N');
INSERT INTO `timezone` VALUES ('Africa/Kigali', 'N');
INSERT INTO `timezone` VALUES ('Africa/Kinshasa', 'N');
INSERT INTO `timezone` VALUES ('Africa/Lagos', 'N');
INSERT INTO `timezone` VALUES ('Africa/Libreville', 'N');
INSERT INTO `timezone` VALUES ('Africa/Lome', 'N');
INSERT INTO `timezone` VALUES ('Africa/Luanda', 'N');
INSERT INTO `timezone` VALUES ('Africa/Lubumbashi', 'N');
INSERT INTO `timezone` VALUES ('Africa/Lusaka', 'N');
INSERT INTO `timezone` VALUES ('Africa/Malabo', 'N');
INSERT INTO `timezone` VALUES ('Africa/Maputo', 'N');
INSERT INTO `timezone` VALUES ('Africa/Maseru', 'N');
INSERT INTO `timezone` VALUES ('Africa/Mbabane', 'N');
INSERT INTO `timezone` VALUES ('Africa/Mogadishu', 'N');
INSERT INTO `timezone` VALUES ('Africa/Monrovia', 'N');
INSERT INTO `timezone` VALUES ('Africa/Nairobi', 'N');
INSERT INTO `timezone` VALUES ('Africa/Ndjamena', 'N');
INSERT INTO `timezone` VALUES ('Africa/Niamey', 'N');
INSERT INTO `timezone` VALUES ('Africa/Nouakchott', 'N');
INSERT INTO `timezone` VALUES ('Africa/Ouagadougou', 'N');
INSERT INTO `timezone` VALUES ('Africa/Porto-Novo', 'N');
INSERT INTO `timezone` VALUES ('Africa/Sao_Tome', 'N');
INSERT INTO `timezone` VALUES ('Africa/Timbuktu', 'N');
INSERT INTO `timezone` VALUES ('Africa/Tripoli', 'N');
INSERT INTO `timezone` VALUES ('Africa/Tunis', 'N');
INSERT INTO `timezone` VALUES ('Africa/Windhoek', 'N');
INSERT INTO `timezone` VALUES ('America/Adak', 'N');
INSERT INTO `timezone` VALUES ('America/Anchorage', 'N');
INSERT INTO `timezone` VALUES ('America/Anguilla', 'N');
INSERT INTO `timezone` VALUES ('America/Antigua', 'N');
INSERT INTO `timezone` VALUES ('America/Araguaina', 'N');
INSERT INTO `timezone` VALUES ('America/Argentina/Buenos_Aires', 'N');
INSERT INTO `timezone` VALUES ('America/Argentina/Catamarca', 'N');
INSERT INTO `timezone` VALUES ('America/Argentina/ComodRivadavia', 'N');
INSERT INTO `timezone` VALUES ('America/Argentina/Cordoba', 'N');
INSERT INTO `timezone` VALUES ('America/Argentina/Jujuy', 'N');
INSERT INTO `timezone` VALUES ('America/Argentina/La_Rioja', 'N');
INSERT INTO `timezone` VALUES ('America/Argentina/Mendoza', 'N');
INSERT INTO `timezone` VALUES ('America/Argentina/Rio_Gallegos', 'N');
INSERT INTO `timezone` VALUES ('America/Argentina/Salta', 'N');
INSERT INTO `timezone` VALUES ('America/Argentina/San_Juan', 'N');
INSERT INTO `timezone` VALUES ('America/Argentina/San_Luis', 'N');
INSERT INTO `timezone` VALUES ('America/Argentina/Tucuman', 'N');
INSERT INTO `timezone` VALUES ('America/Argentina/Ushuaia', 'N');
INSERT INTO `timezone` VALUES ('America/Aruba', 'N');
INSERT INTO `timezone` VALUES ('America/Asuncion', 'N');
INSERT INTO `timezone` VALUES ('America/Atikokan', 'N');
INSERT INTO `timezone` VALUES ('America/Atka', 'N');
INSERT INTO `timezone` VALUES ('America/Bahia', 'N');
INSERT INTO `timezone` VALUES ('America/Bahia_Banderas', 'N');
INSERT INTO `timezone` VALUES ('America/Barbados', 'N');
INSERT INTO `timezone` VALUES ('America/Belem', 'N');
INSERT INTO `timezone` VALUES ('America/Belize', 'N');
INSERT INTO `timezone` VALUES ('America/Blanc-Sablon', 'N');
INSERT INTO `timezone` VALUES ('America/Boa_Vista', 'N');
INSERT INTO `timezone` VALUES ('America/Bogota', 'N');
INSERT INTO `timezone` VALUES ('America/Boise', 'N');
INSERT INTO `timezone` VALUES ('America/Buenos_Aires', 'N');
INSERT INTO `timezone` VALUES ('America/Cambridge_Bay', 'N');
INSERT INTO `timezone` VALUES ('America/Campo_Grande', 'N');
INSERT INTO `timezone` VALUES ('America/Cancun', 'N');
INSERT INTO `timezone` VALUES ('America/Caracas', 'N');
INSERT INTO `timezone` VALUES ('America/Catamarca', 'N');
INSERT INTO `timezone` VALUES ('America/Cayenne', 'N');
INSERT INTO `timezone` VALUES ('America/Cayman', 'N');
INSERT INTO `timezone` VALUES ('America/Chicago', 'N');
INSERT INTO `timezone` VALUES ('America/Chihuahua', 'N');
INSERT INTO `timezone` VALUES ('America/Coral_Harbour', 'N');
INSERT INTO `timezone` VALUES ('America/Cordoba', 'N');
INSERT INTO `timezone` VALUES ('America/Costa_Rica', 'N');
INSERT INTO `timezone` VALUES ('America/Cuiaba', 'N');
INSERT INTO `timezone` VALUES ('America/Curacao', 'N');
INSERT INTO `timezone` VALUES ('America/Danmarkshavn', 'N');
INSERT INTO `timezone` VALUES ('America/Dawson', 'N');
INSERT INTO `timezone` VALUES ('America/Dawson_Creek', 'N');
INSERT INTO `timezone` VALUES ('America/Denver', 'N');
INSERT INTO `timezone` VALUES ('America/Detroit', 'N');
INSERT INTO `timezone` VALUES ('America/Dominica', 'N');
INSERT INTO `timezone` VALUES ('America/Edmonton', 'N');
INSERT INTO `timezone` VALUES ('America/Eirunepe', 'N');
INSERT INTO `timezone` VALUES ('America/El_Salvador', 'N');
INSERT INTO `timezone` VALUES ('America/Ensenada', 'N');
INSERT INTO `timezone` VALUES ('America/Fort_Wayne', 'N');
INSERT INTO `timezone` VALUES ('America/Fortaleza', 'N');
INSERT INTO `timezone` VALUES ('America/Glace_Bay', 'N');
INSERT INTO `timezone` VALUES ('America/Godthab', 'N');
INSERT INTO `timezone` VALUES ('America/Goose_Bay', 'N');
INSERT INTO `timezone` VALUES ('America/Grand_Turk', 'N');
INSERT INTO `timezone` VALUES ('America/Grenada', 'N');
INSERT INTO `timezone` VALUES ('America/Guadeloupe', 'N');
INSERT INTO `timezone` VALUES ('America/Guatemala', 'N');
INSERT INTO `timezone` VALUES ('America/Guayaquil', 'N');
INSERT INTO `timezone` VALUES ('America/Guyana', 'N');
INSERT INTO `timezone` VALUES ('America/Halifax', 'N');
INSERT INTO `timezone` VALUES ('America/Havana', 'N');
INSERT INTO `timezone` VALUES ('America/Hermosillo', 'N');
INSERT INTO `timezone` VALUES ('America/Indiana/Indianapolis', 'N');
INSERT INTO `timezone` VALUES ('America/Indiana/Knox', 'N');
INSERT INTO `timezone` VALUES ('America/Indiana/Marengo', 'N');
INSERT INTO `timezone` VALUES ('America/Indiana/Petersburg', 'N');
INSERT INTO `timezone` VALUES ('America/Indiana/Tell_City', 'N');
INSERT INTO `timezone` VALUES ('America/Indiana/Vevay', 'N');
INSERT INTO `timezone` VALUES ('America/Indiana/Vincennes', 'N');
INSERT INTO `timezone` VALUES ('America/Indiana/Winamac', 'N');
INSERT INTO `timezone` VALUES ('America/Indianapolis', 'N');
INSERT INTO `timezone` VALUES ('America/Inuvik', 'N');
INSERT INTO `timezone` VALUES ('America/Iqaluit', 'N');
INSERT INTO `timezone` VALUES ('America/Jamaica', 'N');
INSERT INTO `timezone` VALUES ('America/Jujuy', 'N');
INSERT INTO `timezone` VALUES ('America/Juneau', 'N');
INSERT INTO `timezone` VALUES ('America/Kentucky/Louisville', 'N');
INSERT INTO `timezone` VALUES ('America/Kentucky/Monticello', 'N');
INSERT INTO `timezone` VALUES ('America/Knox_IN', 'N');
INSERT INTO `timezone` VALUES ('America/La_Paz', 'N');
INSERT INTO `timezone` VALUES ('America/Lima', 'N');
INSERT INTO `timezone` VALUES ('America/Los_Angeles', 'N');
INSERT INTO `timezone` VALUES ('America/Louisville', 'N');
INSERT INTO `timezone` VALUES ('America/Maceio', 'N');
INSERT INTO `timezone` VALUES ('America/Managua', 'N');
INSERT INTO `timezone` VALUES ('America/Manaus', 'N');
INSERT INTO `timezone` VALUES ('America/Marigot', 'N');
INSERT INTO `timezone` VALUES ('America/Martinique', 'N');
INSERT INTO `timezone` VALUES ('America/Matamoros', 'N');
INSERT INTO `timezone` VALUES ('America/Mazatlan', 'N');
INSERT INTO `timezone` VALUES ('America/Mendoza', 'N');
INSERT INTO `timezone` VALUES ('America/Menominee', 'N');
INSERT INTO `timezone` VALUES ('America/Merida', 'N');
INSERT INTO `timezone` VALUES ('America/Mexico_City', 'N');
INSERT INTO `timezone` VALUES ('America/Miquelon', 'N');
INSERT INTO `timezone` VALUES ('America/Moncton', 'N');
INSERT INTO `timezone` VALUES ('America/Monterrey', 'N');
INSERT INTO `timezone` VALUES ('America/Montevideo', 'N');
INSERT INTO `timezone` VALUES ('America/Montreal', 'N');
INSERT INTO `timezone` VALUES ('America/Montserrat', 'N');
INSERT INTO `timezone` VALUES ('America/Nassau', 'N');
INSERT INTO `timezone` VALUES ('America/New_York', 'N');
INSERT INTO `timezone` VALUES ('America/Nipigon', 'N');
INSERT INTO `timezone` VALUES ('America/Nome', 'N');
INSERT INTO `timezone` VALUES ('America/Noronha', 'N');
INSERT INTO `timezone` VALUES ('America/North_Dakota/Center', 'N');
INSERT INTO `timezone` VALUES ('America/North_Dakota/New_Salem', 'N');
INSERT INTO `timezone` VALUES ('America/Ojinaga', 'N');
INSERT INTO `timezone` VALUES ('America/Panama', 'N');
INSERT INTO `timezone` VALUES ('America/Pangnirtung', 'N');
INSERT INTO `timezone` VALUES ('America/Paramaribo', 'N');
INSERT INTO `timezone` VALUES ('America/Phoenix', 'N');
INSERT INTO `timezone` VALUES ('America/Port-au-Prince', 'N');
INSERT INTO `timezone` VALUES ('America/Port_of_Spain', 'N');
INSERT INTO `timezone` VALUES ('America/Porto_Acre', 'N');
INSERT INTO `timezone` VALUES ('America/Porto_Velho', 'N');
INSERT INTO `timezone` VALUES ('America/Puerto_Rico', 'N');
INSERT INTO `timezone` VALUES ('America/Rainy_River', 'N');
INSERT INTO `timezone` VALUES ('America/Rankin_Inlet', 'N');
INSERT INTO `timezone` VALUES ('America/Recife', 'N');
INSERT INTO `timezone` VALUES ('America/Regina', 'N');
INSERT INTO `timezone` VALUES ('America/Resolute', 'N');
INSERT INTO `timezone` VALUES ('America/Rio_Branco', 'N');
INSERT INTO `timezone` VALUES ('America/Rosario', 'N');
INSERT INTO `timezone` VALUES ('America/Santa_Isabel', 'N');
INSERT INTO `timezone` VALUES ('America/Santarem', 'N');
INSERT INTO `timezone` VALUES ('America/Santiago', 'N');
INSERT INTO `timezone` VALUES ('America/Santo_Domingo', 'N');
INSERT INTO `timezone` VALUES ('America/Sao_Paulo', 'N');
INSERT INTO `timezone` VALUES ('America/Scoresbysund', 'N');
INSERT INTO `timezone` VALUES ('America/Shiprock', 'N');
INSERT INTO `timezone` VALUES ('America/St_Barthelemy', 'N');
INSERT INTO `timezone` VALUES ('America/St_Johns', 'N');
INSERT INTO `timezone` VALUES ('America/St_Kitts', 'N');
INSERT INTO `timezone` VALUES ('America/St_Lucia', 'N');
INSERT INTO `timezone` VALUES ('America/St_Thomas', 'N');
INSERT INTO `timezone` VALUES ('America/St_Vincent', 'N');
INSERT INTO `timezone` VALUES ('America/Swift_Current', 'N');
INSERT INTO `timezone` VALUES ('America/Tegucigalpa', 'N');
INSERT INTO `timezone` VALUES ('America/Thule', 'N');
INSERT INTO `timezone` VALUES ('America/Thunder_Bay', 'N');
INSERT INTO `timezone` VALUES ('America/Tijuana', 'N');
INSERT INTO `timezone` VALUES ('America/Toronto', 'N');
INSERT INTO `timezone` VALUES ('America/Tortola', 'N');
INSERT INTO `timezone` VALUES ('America/Vancouver', 'N');
INSERT INTO `timezone` VALUES ('America/Virgin', 'N');
INSERT INTO `timezone` VALUES ('America/Whitehorse', 'N');
INSERT INTO `timezone` VALUES ('America/Winnipeg', 'N');
INSERT INTO `timezone` VALUES ('America/Yakutat', 'N');
INSERT INTO `timezone` VALUES ('America/Yellowknife', 'N');
INSERT INTO `timezone` VALUES ('Antarctica/Casey', 'N');
INSERT INTO `timezone` VALUES ('Antarctica/Davis', 'N');
INSERT INTO `timezone` VALUES ('Antarctica/DumontDUrville', 'N');
INSERT INTO `timezone` VALUES ('Antarctica/Macquarie', 'N');
INSERT INTO `timezone` VALUES ('Antarctica/Mawson', 'N');
INSERT INTO `timezone` VALUES ('Antarctica/McMurdo', 'N');
INSERT INTO `timezone` VALUES ('Antarctica/Palmer', 'N');
INSERT INTO `timezone` VALUES ('Antarctica/Rothera', 'N');
INSERT INTO `timezone` VALUES ('Antarctica/South_Pole', 'N');
INSERT INTO `timezone` VALUES ('Antarctica/Syowa', 'N');
INSERT INTO `timezone` VALUES ('Antarctica/Vostok', 'N');
INSERT INTO `timezone` VALUES ('Asia/Aden', 'N');
INSERT INTO `timezone` VALUES ('Asia/Almaty', 'N');
INSERT INTO `timezone` VALUES ('Asia/Amman', 'N');
INSERT INTO `timezone` VALUES ('Asia/Anadyr', 'N');
INSERT INTO `timezone` VALUES ('Asia/Aqtau', 'N');
INSERT INTO `timezone` VALUES ('Asia/Aqtobe', 'N');
INSERT INTO `timezone` VALUES ('Asia/Ashgabat', 'N');
INSERT INTO `timezone` VALUES ('Asia/Ashkhabad', 'N');
INSERT INTO `timezone` VALUES ('Asia/Baghdad', 'N');
INSERT INTO `timezone` VALUES ('Asia/Bahrain', 'N');
INSERT INTO `timezone` VALUES ('Asia/Baku', 'N');
INSERT INTO `timezone` VALUES ('Asia/Bangkok', 'N');
INSERT INTO `timezone` VALUES ('Asia/Beirut', 'N');
INSERT INTO `timezone` VALUES ('Asia/Bishkek', 'N');
INSERT INTO `timezone` VALUES ('Asia/Brunei', 'N');
INSERT INTO `timezone` VALUES ('Asia/Calcutta', 'N');
INSERT INTO `timezone` VALUES ('Asia/Choibalsan', 'N');
INSERT INTO `timezone` VALUES ('Asia/Chongqing', 'N');
INSERT INTO `timezone` VALUES ('Asia/Chungking', 'N');
INSERT INTO `timezone` VALUES ('Asia/Colombo', 'N');
INSERT INTO `timezone` VALUES ('Asia/Dacca', 'N');
INSERT INTO `timezone` VALUES ('Asia/Damascus', 'N');
INSERT INTO `timezone` VALUES ('Asia/Dhaka', 'N');
INSERT INTO `timezone` VALUES ('Asia/Dili', 'N');
INSERT INTO `timezone` VALUES ('Asia/Dubai', 'N');
INSERT INTO `timezone` VALUES ('Asia/Dushanbe', 'N');
INSERT INTO `timezone` VALUES ('Asia/Gaza', 'N');
INSERT INTO `timezone` VALUES ('Asia/Harbin', 'N');
INSERT INTO `timezone` VALUES ('Asia/Ho_Chi_Minh', 'N');
INSERT INTO `timezone` VALUES ('Asia/Hong_Kong', 'N');
INSERT INTO `timezone` VALUES ('Asia/Hovd', 'N');
INSERT INTO `timezone` VALUES ('Asia/Irkutsk', 'N');
INSERT INTO `timezone` VALUES ('Asia/Istanbul', 'N');
INSERT INTO `timezone` VALUES ('Asia/Jakarta', 'Y');
INSERT INTO `timezone` VALUES ('Asia/Jayapura', 'N');
INSERT INTO `timezone` VALUES ('Asia/Jerusalem', 'N');
INSERT INTO `timezone` VALUES ('Asia/Kabul', 'N');
INSERT INTO `timezone` VALUES ('Asia/Kamchatka', 'N');
INSERT INTO `timezone` VALUES ('Asia/Karachi', 'N');
INSERT INTO `timezone` VALUES ('Asia/Kashgar', 'N');
INSERT INTO `timezone` VALUES ('Asia/Kathmandu', 'N');
INSERT INTO `timezone` VALUES ('Asia/Katmandu', 'N');
INSERT INTO `timezone` VALUES ('Asia/Kolkata', 'N');
INSERT INTO `timezone` VALUES ('Asia/Krasnoyarsk', 'N');
INSERT INTO `timezone` VALUES ('Asia/Kuala_Lumpur', 'N');
INSERT INTO `timezone` VALUES ('Asia/Kuching', 'N');
INSERT INTO `timezone` VALUES ('Asia/Kuwait', 'N');
INSERT INTO `timezone` VALUES ('Asia/Macao', 'N');
INSERT INTO `timezone` VALUES ('Asia/Macau', 'N');
INSERT INTO `timezone` VALUES ('Asia/Magadan', 'N');
INSERT INTO `timezone` VALUES ('Asia/Makassar', 'N');
INSERT INTO `timezone` VALUES ('Asia/Manila', 'N');
INSERT INTO `timezone` VALUES ('Asia/Muscat', 'N');
INSERT INTO `timezone` VALUES ('Asia/Nicosia', 'N');
INSERT INTO `timezone` VALUES ('Asia/Novokuznetsk', 'N');
INSERT INTO `timezone` VALUES ('Asia/Novosibirsk', 'N');
INSERT INTO `timezone` VALUES ('Asia/Omsk', 'N');
INSERT INTO `timezone` VALUES ('Asia/Oral', 'N');
INSERT INTO `timezone` VALUES ('Asia/Phnom_Penh', 'N');
INSERT INTO `timezone` VALUES ('Asia/Pontianak', 'N');
INSERT INTO `timezone` VALUES ('Asia/Pyongyang', 'N');
INSERT INTO `timezone` VALUES ('Asia/Qatar', 'N');
INSERT INTO `timezone` VALUES ('Asia/Qyzylorda', 'N');
INSERT INTO `timezone` VALUES ('Asia/Rangoon', 'N');
INSERT INTO `timezone` VALUES ('Asia/Riyadh', 'N');
INSERT INTO `timezone` VALUES ('Asia/Saigon', 'N');
INSERT INTO `timezone` VALUES ('Asia/Sakhalin', 'N');
INSERT INTO `timezone` VALUES ('Asia/Samarkand', 'N');
INSERT INTO `timezone` VALUES ('Asia/Seoul', 'N');
INSERT INTO `timezone` VALUES ('Asia/Shanghai', 'N');
INSERT INTO `timezone` VALUES ('Asia/Singapore', 'N');
INSERT INTO `timezone` VALUES ('Asia/Taipei', 'N');
INSERT INTO `timezone` VALUES ('Asia/Tashkent', 'N');
INSERT INTO `timezone` VALUES ('Asia/Tbilisi', 'N');
INSERT INTO `timezone` VALUES ('Asia/Tehran', 'N');
INSERT INTO `timezone` VALUES ('Asia/Tel_Aviv', 'N');
INSERT INTO `timezone` VALUES ('Asia/Thimbu', 'N');
INSERT INTO `timezone` VALUES ('Asia/Thimphu', 'N');
INSERT INTO `timezone` VALUES ('Asia/Tokyo', 'N');
INSERT INTO `timezone` VALUES ('Asia/Ujung_Pandang', 'N');
INSERT INTO `timezone` VALUES ('Asia/Ulaanbaatar', 'N');
INSERT INTO `timezone` VALUES ('Asia/Ulan_Bator', 'N');
INSERT INTO `timezone` VALUES ('Asia/Urumqi', 'N');
INSERT INTO `timezone` VALUES ('Asia/Vientiane', 'N');
INSERT INTO `timezone` VALUES ('Asia/Vladivostok', 'N');
INSERT INTO `timezone` VALUES ('Asia/Yakutsk', 'N');
INSERT INTO `timezone` VALUES ('Asia/Yekaterinburg', 'N');
INSERT INTO `timezone` VALUES ('Asia/Yerevan', 'N');
INSERT INTO `timezone` VALUES ('Atlantic/Azores', 'N');
INSERT INTO `timezone` VALUES ('Atlantic/Bermuda', 'N');
INSERT INTO `timezone` VALUES ('Atlantic/Canary', 'N');
INSERT INTO `timezone` VALUES ('Atlantic/Cape_Verde', 'N');
INSERT INTO `timezone` VALUES ('Atlantic/Faeroe', 'N');
INSERT INTO `timezone` VALUES ('Atlantic/Faroe', 'N');
INSERT INTO `timezone` VALUES ('Atlantic/Jan_Mayen', 'N');
INSERT INTO `timezone` VALUES ('Atlantic/Madeira', 'N');
INSERT INTO `timezone` VALUES ('Atlantic/Reykjavik', 'N');
INSERT INTO `timezone` VALUES ('Atlantic/South_Georgia', 'N');
INSERT INTO `timezone` VALUES ('Atlantic/St_Helena', 'N');
INSERT INTO `timezone` VALUES ('Atlantic/Stanley', 'N');
INSERT INTO `timezone` VALUES ('Australia/ACT', 'N');
INSERT INTO `timezone` VALUES ('Australia/Adelaide', 'N');
INSERT INTO `timezone` VALUES ('Australia/Brisbane', 'N');
INSERT INTO `timezone` VALUES ('Australia/Broken_Hill', 'N');
INSERT INTO `timezone` VALUES ('Australia/Canberra', 'N');
INSERT INTO `timezone` VALUES ('Australia/Currie', 'N');
INSERT INTO `timezone` VALUES ('Australia/Darwin', 'N');
INSERT INTO `timezone` VALUES ('Australia/Eucla', 'N');
INSERT INTO `timezone` VALUES ('Australia/Hobart', 'N');
INSERT INTO `timezone` VALUES ('Australia/LHI', 'N');
INSERT INTO `timezone` VALUES ('Australia/Lindeman', 'N');
INSERT INTO `timezone` VALUES ('Australia/Lord_Howe', 'N');
INSERT INTO `timezone` VALUES ('Australia/Melbourne', 'N');
INSERT INTO `timezone` VALUES ('Australia/North', 'N');
INSERT INTO `timezone` VALUES ('Australia/NSW', 'N');
INSERT INTO `timezone` VALUES ('Australia/Perth', 'N');
INSERT INTO `timezone` VALUES ('Australia/Queensland', 'N');
INSERT INTO `timezone` VALUES ('Australia/South', 'N');
INSERT INTO `timezone` VALUES ('Australia/Sydney', 'N');
INSERT INTO `timezone` VALUES ('Australia/Tasmania', 'N');
INSERT INTO `timezone` VALUES ('Australia/Victoria', 'N');
INSERT INTO `timezone` VALUES ('Australia/West', 'N');
INSERT INTO `timezone` VALUES ('Australia/Yancowinna', 'N');
INSERT INTO `timezone` VALUES ('Europe/Amsterdam', 'N');
INSERT INTO `timezone` VALUES ('Europe/Andorra', 'N');
INSERT INTO `timezone` VALUES ('Europe/Athens', 'N');
INSERT INTO `timezone` VALUES ('Europe/Belfast', 'N');
INSERT INTO `timezone` VALUES ('Europe/Belgrade', 'N');
INSERT INTO `timezone` VALUES ('Europe/Berlin', 'N');
INSERT INTO `timezone` VALUES ('Europe/Bratislava', 'N');
INSERT INTO `timezone` VALUES ('Europe/Brussels', 'N');
INSERT INTO `timezone` VALUES ('Europe/Bucharest', 'N');
INSERT INTO `timezone` VALUES ('Europe/Budapest', 'N');
INSERT INTO `timezone` VALUES ('Europe/Chisinau', 'N');
INSERT INTO `timezone` VALUES ('Europe/Copenhagen', 'N');
INSERT INTO `timezone` VALUES ('Europe/Dublin', 'N');
INSERT INTO `timezone` VALUES ('Europe/Gibraltar', 'N');
INSERT INTO `timezone` VALUES ('Europe/Guernsey', 'N');
INSERT INTO `timezone` VALUES ('Europe/Helsinki', 'N');
INSERT INTO `timezone` VALUES ('Europe/Isle_of_Man', 'N');
INSERT INTO `timezone` VALUES ('Europe/Istanbul', 'N');
INSERT INTO `timezone` VALUES ('Europe/Jersey', 'N');
INSERT INTO `timezone` VALUES ('Europe/Kaliningrad', 'N');
INSERT INTO `timezone` VALUES ('Europe/Kiev', 'N');
INSERT INTO `timezone` VALUES ('Europe/Lisbon', 'N');
INSERT INTO `timezone` VALUES ('Europe/Ljubljana', 'N');
INSERT INTO `timezone` VALUES ('Europe/London', 'N');
INSERT INTO `timezone` VALUES ('Europe/Luxembourg', 'N');
INSERT INTO `timezone` VALUES ('Europe/Madrid', 'N');
INSERT INTO `timezone` VALUES ('Europe/Malta', 'N');
INSERT INTO `timezone` VALUES ('Europe/Mariehamn', 'N');
INSERT INTO `timezone` VALUES ('Europe/Minsk', 'N');
INSERT INTO `timezone` VALUES ('Europe/Monaco', 'N');
INSERT INTO `timezone` VALUES ('Europe/Moscow', 'N');
INSERT INTO `timezone` VALUES ('Europe/Nicosia', 'N');
INSERT INTO `timezone` VALUES ('Europe/Oslo', 'N');
INSERT INTO `timezone` VALUES ('Europe/Paris', 'N');
INSERT INTO `timezone` VALUES ('Europe/Podgorica', 'N');
INSERT INTO `timezone` VALUES ('Europe/Prague', 'N');
INSERT INTO `timezone` VALUES ('Europe/Riga', 'N');
INSERT INTO `timezone` VALUES ('Europe/Rome', 'N');
INSERT INTO `timezone` VALUES ('Europe/Samara', 'N');
INSERT INTO `timezone` VALUES ('Europe/San_Marino', 'N');
INSERT INTO `timezone` VALUES ('Europe/Sarajevo', 'N');
INSERT INTO `timezone` VALUES ('Europe/Simferopol', 'N');
INSERT INTO `timezone` VALUES ('Europe/Skopje', 'N');
INSERT INTO `timezone` VALUES ('Europe/Sofia', 'N');
INSERT INTO `timezone` VALUES ('Europe/Stockholm', 'N');
INSERT INTO `timezone` VALUES ('Europe/Tallinn', 'N');
INSERT INTO `timezone` VALUES ('Europe/Tirane', 'N');
INSERT INTO `timezone` VALUES ('Europe/Tiraspol', 'N');
INSERT INTO `timezone` VALUES ('Europe/Uzhgorod', 'N');
INSERT INTO `timezone` VALUES ('Europe/Vaduz', 'N');
INSERT INTO `timezone` VALUES ('Europe/Vatican', 'N');
INSERT INTO `timezone` VALUES ('Europe/Vienna', 'N');
INSERT INTO `timezone` VALUES ('Europe/Vilnius', 'N');
INSERT INTO `timezone` VALUES ('Europe/Volgograd', 'N');
INSERT INTO `timezone` VALUES ('Europe/Warsaw', 'N');
INSERT INTO `timezone` VALUES ('Europe/Zagreb', 'N');
INSERT INTO `timezone` VALUES ('Europe/Zaporozhye', 'N');
INSERT INTO `timezone` VALUES ('Europe/Zurich', 'N');
INSERT INTO `timezone` VALUES ('Indian/Antananarivo', 'N');
INSERT INTO `timezone` VALUES ('Indian/Chagos', 'N');
INSERT INTO `timezone` VALUES ('Indian/Christmas', 'N');
INSERT INTO `timezone` VALUES ('Indian/Cocos', 'N');
INSERT INTO `timezone` VALUES ('Indian/Comoro', 'N');
INSERT INTO `timezone` VALUES ('Indian/Kerguelen', 'N');
INSERT INTO `timezone` VALUES ('Indian/Mahe', 'N');
INSERT INTO `timezone` VALUES ('Indian/Maldives', 'N');
INSERT INTO `timezone` VALUES ('Indian/Mauritius', 'N');
INSERT INTO `timezone` VALUES ('Indian/Mayotte', 'N');
INSERT INTO `timezone` VALUES ('Indian/Reunion', 'N');
INSERT INTO `timezone` VALUES ('Pacific/Apia', 'N');
INSERT INTO `timezone` VALUES ('Pacific/Auckland', 'N');
INSERT INTO `timezone` VALUES ('Pacific/Chatham', 'N');
INSERT INTO `timezone` VALUES ('Pacific/Chuuk', 'N');
INSERT INTO `timezone` VALUES ('Pacific/Easter', 'N');
INSERT INTO `timezone` VALUES ('Pacific/Efate', 'N');
INSERT INTO `timezone` VALUES ('Pacific/Enderbury', 'N');
INSERT INTO `timezone` VALUES ('Pacific/Fakaofo', 'N');
INSERT INTO `timezone` VALUES ('Pacific/Fiji', 'N');
INSERT INTO `timezone` VALUES ('Pacific/Funafuti', 'N');
INSERT INTO `timezone` VALUES ('Pacific/Galapagos', 'N');
INSERT INTO `timezone` VALUES ('Pacific/Gambier', 'N');
INSERT INTO `timezone` VALUES ('Pacific/Guadalcanal', 'N');
INSERT INTO `timezone` VALUES ('Pacific/Guam', 'N');
INSERT INTO `timezone` VALUES ('Pacific/Honolulu', 'N');
INSERT INTO `timezone` VALUES ('Pacific/Johnston', 'N');
INSERT INTO `timezone` VALUES ('Pacific/Kiritimati', 'N');
INSERT INTO `timezone` VALUES ('Pacific/Kosrae', 'N');
INSERT INTO `timezone` VALUES ('Pacific/Kwajalein', 'N');
INSERT INTO `timezone` VALUES ('Pacific/Majuro', 'N');
INSERT INTO `timezone` VALUES ('Pacific/Marquesas', 'N');
INSERT INTO `timezone` VALUES ('Pacific/Midway', 'N');
INSERT INTO `timezone` VALUES ('Pacific/Nauru', 'N');
INSERT INTO `timezone` VALUES ('Pacific/Niue', 'N');
INSERT INTO `timezone` VALUES ('Pacific/Norfolk', 'N');
INSERT INTO `timezone` VALUES ('Pacific/Noumea', 'N');
INSERT INTO `timezone` VALUES ('Pacific/Pago_Pago', 'N');
INSERT INTO `timezone` VALUES ('Pacific/Palau', 'N');
INSERT INTO `timezone` VALUES ('Pacific/Pitcairn', 'N');
INSERT INTO `timezone` VALUES ('Pacific/Pohnpei', 'N');
INSERT INTO `timezone` VALUES ('Pacific/Ponape', 'N');
INSERT INTO `timezone` VALUES ('Pacific/Port_Moresby', 'N');
INSERT INTO `timezone` VALUES ('Pacific/Rarotonga', 'N');
INSERT INTO `timezone` VALUES ('Pacific/Saipan', 'N');
INSERT INTO `timezone` VALUES ('Pacific/Samoa', 'N');
INSERT INTO `timezone` VALUES ('Pacific/Tahiti', 'N');
INSERT INTO `timezone` VALUES ('Pacific/Tarawa', 'N');
INSERT INTO `timezone` VALUES ('Pacific/Tongatapu', 'N');
INSERT INTO `timezone` VALUES ('Pacific/Truk', 'N');
INSERT INTO `timezone` VALUES ('Pacific/Wake', 'N');
INSERT INTO `timezone` VALUES ('Pacific/Wallis', 'N');
INSERT INTO `timezone` VALUES ('Pacific/Yap', 'N');

-- ----------------------------
-- Table structure for userlevelpermissions
-- ----------------------------
DROP TABLE IF EXISTS `userlevelpermissions`;
CREATE TABLE `userlevelpermissions` (
  `User_Level_ID` int(11) NOT NULL,
  `Table_Name` varchar(255) NOT NULL,
  `Permission` int(11) NOT NULL,
  PRIMARY KEY (`User_Level_ID`,`Table_Name`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of userlevelpermissions
-- ----------------------------
INSERT INTO `userlevelpermissions` VALUES ('1', '{6C2D28B4-9AD2-4C08-A6B0-679C21196D80}announcement', '0');
INSERT INTO `userlevelpermissions` VALUES ('1', '{6C2D28B4-9AD2-4C08-A6B0-679C21196D80}breadcrumblinks', '0');
INSERT INTO `userlevelpermissions` VALUES ('1', '{6C2D28B4-9AD2-4C08-A6B0-679C21196D80}help', '1512');
INSERT INTO `userlevelpermissions` VALUES ('1', '{6C2D28B4-9AD2-4C08-A6B0-679C21196D80}help_categories', '1512');
INSERT INTO `userlevelpermissions` VALUES ('1', '{6C2D28B4-9AD2-4C08-A6B0-679C21196D80}languages', '0');
INSERT INTO `userlevelpermissions` VALUES ('1', '{6C2D28B4-9AD2-4C08-A6B0-679C21196D80}settings', '0');
INSERT INTO `userlevelpermissions` VALUES ('1', '{6C2D28B4-9AD2-4C08-A6B0-679C21196D80}stats_counter', '0');
INSERT INTO `userlevelpermissions` VALUES ('1', '{6C2D28B4-9AD2-4C08-A6B0-679C21196D80}stats_counterlog', '0');
INSERT INTO `userlevelpermissions` VALUES ('1', '{6C2D28B4-9AD2-4C08-A6B0-679C21196D80}stats_date', '0');
INSERT INTO `userlevelpermissions` VALUES ('1', '{6C2D28B4-9AD2-4C08-A6B0-679C21196D80}stats_hour', '0');
INSERT INTO `userlevelpermissions` VALUES ('1', '{6C2D28B4-9AD2-4C08-A6B0-679C21196D80}stats_month', '0');
INSERT INTO `userlevelpermissions` VALUES ('1', '{6C2D28B4-9AD2-4C08-A6B0-679C21196D80}stats_year', '0');
INSERT INTO `userlevelpermissions` VALUES ('1', '{6C2D28B4-9AD2-4C08-A6B0-679C21196D80}themes', '0');
INSERT INTO `userlevelpermissions` VALUES ('1', '{6C2D28B4-9AD2-4C08-A6B0-679C21196D80}timezone', '0');
INSERT INTO `userlevelpermissions` VALUES ('1', '{6C2D28B4-9AD2-4C08-A6B0-679C21196D80}users', '0');
INSERT INTO `userlevelpermissions` VALUES ('1', '{6C2D28B4-9AD2-4C08-A6B0-679C21196D80}userlevelpermissions', '0');
INSERT INTO `userlevelpermissions` VALUES ('1', '{6C2D28B4-9AD2-4C08-A6B0-679C21196D80}userlevels', '0');
INSERT INTO `userlevelpermissions` VALUES ('1', '{B36B93AF-B58F-461B-B767-5F08C12493E9}a_stock_items', '8');
INSERT INTO `userlevelpermissions` VALUES ('1', '{B36B93AF-B58F-461B-B767-5F08C12493E9}a_suppliers', '8');
INSERT INTO `userlevelpermissions` VALUES ('1', '{B36B93AF-B58F-461B-B767-5F08C12493E9}a_purchases', '8');
INSERT INTO `userlevelpermissions` VALUES ('1', '{B36B93AF-B58F-461B-B767-5F08C12493E9}a_purchases_detail', '0');
INSERT INTO `userlevelpermissions` VALUES ('1', '{B36B93AF-B58F-461B-B767-5F08C12493E9}a_customers', '8');
INSERT INTO `userlevelpermissions` VALUES ('1', '{B36B93AF-B58F-461B-B767-5F08C12493E9}a_sales', '8');
INSERT INTO `userlevelpermissions` VALUES ('1', '{B36B93AF-B58F-461B-B767-5F08C12493E9}a_sales_detail', '0');
INSERT INTO `userlevelpermissions` VALUES ('1', '{B36B93AF-B58F-461B-B767-5F08C12493E9}a_payment_transactions', '0');
INSERT INTO `userlevelpermissions` VALUES ('1', '{B36B93AF-B58F-461B-B767-5F08C12493E9}a_stock_categories', '0');
INSERT INTO `userlevelpermissions` VALUES ('1', '{B36B93AF-B58F-461B-B767-5F08C12493E9}a_unit_of_measurement', '0');
INSERT INTO `userlevelpermissions` VALUES ('1', '{B36B93AF-B58F-461B-B767-5F08C12493E9}announcement', '0');
INSERT INTO `userlevelpermissions` VALUES ('1', '{B36B93AF-B58F-461B-B767-5F08C12493E9}breadcrumblinks', '0');
INSERT INTO `userlevelpermissions` VALUES ('1', '{B36B93AF-B58F-461B-B767-5F08C12493E9}help', '0');
INSERT INTO `userlevelpermissions` VALUES ('1', '{B36B93AF-B58F-461B-B767-5F08C12493E9}help_categories', '0');
INSERT INTO `userlevelpermissions` VALUES ('1', '{B36B93AF-B58F-461B-B767-5F08C12493E9}languages', '0');
INSERT INTO `userlevelpermissions` VALUES ('1', '{B36B93AF-B58F-461B-B767-5F08C12493E9}settings', '0');
INSERT INTO `userlevelpermissions` VALUES ('1', '{B36B93AF-B58F-461B-B767-5F08C12493E9}stats_counter', '0');
INSERT INTO `userlevelpermissions` VALUES ('1', '{B36B93AF-B58F-461B-B767-5F08C12493E9}stats_counterlog', '0');
INSERT INTO `userlevelpermissions` VALUES ('1', '{B36B93AF-B58F-461B-B767-5F08C12493E9}stats_date', '0');
INSERT INTO `userlevelpermissions` VALUES ('1', '{B36B93AF-B58F-461B-B767-5F08C12493E9}stats_hour', '0');
INSERT INTO `userlevelpermissions` VALUES ('1', '{B36B93AF-B58F-461B-B767-5F08C12493E9}stats_month', '0');
INSERT INTO `userlevelpermissions` VALUES ('1', '{B36B93AF-B58F-461B-B767-5F08C12493E9}stats_year', '0');
INSERT INTO `userlevelpermissions` VALUES ('1', '{B36B93AF-B58F-461B-B767-5F08C12493E9}themes', '0');
INSERT INTO `userlevelpermissions` VALUES ('1', '{B36B93AF-B58F-461B-B767-5F08C12493E9}timezone', '0');
INSERT INTO `userlevelpermissions` VALUES ('1', '{B36B93AF-B58F-461B-B767-5F08C12493E9}userlevelpermissions', '0');
INSERT INTO `userlevelpermissions` VALUES ('1', '{B36B93AF-B58F-461B-B767-5F08C12493E9}userlevels', '0');
INSERT INTO `userlevelpermissions` VALUES ('1', '{B36B93AF-B58F-461B-B767-5F08C12493E9}users', '0');
INSERT INTO `userlevelpermissions` VALUES ('1', '{B36B93AF-B58F-461B-B767-5F08C12493E9}view_sales_outstandings', '8');
INSERT INTO `userlevelpermissions` VALUES ('1', '{B36B93AF-B58F-461B-B767-5F08C12493E9}view_purchases_outstandings', '8');
INSERT INTO `userlevelpermissions` VALUES ('1', '{B36B93AF-B58F-461B-B767-5F08C12493E9}view_sales_details', '0');
INSERT INTO `userlevelpermissions` VALUES ('1', '{B36B93AF-B58F-461B-B767-5F08C12493E9}view_purchases_details', '0');
INSERT INTO `userlevelpermissions` VALUES ('1', '{B36B93AF-B58F-461B-B767-5F08C12493E9}dashboard.php', '0');

-- ----------------------------
-- Table structure for userlevels
-- ----------------------------
DROP TABLE IF EXISTS `userlevels`;
CREATE TABLE `userlevels` (
  `User_Level_ID` int(11) NOT NULL,
  `User_Level_Name` varchar(255) NOT NULL,
  PRIMARY KEY (`User_Level_ID`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of userlevels
-- ----------------------------
INSERT INTO `userlevels` VALUES ('-1', 'Administrator');
INSERT INTO `userlevels` VALUES ('0', 'Default');
INSERT INTO `userlevels` VALUES ('1', 'Standar');

-- ----------------------------
-- Table structure for users
-- ----------------------------
DROP TABLE IF EXISTS `users`;
CREATE TABLE `users` (
  `Username` varchar(50) NOT NULL,
  `Password` varchar(64) NOT NULL,
  `First_Name` varchar(50) DEFAULT NULL,
  `Last_Name` varchar(50) DEFAULT NULL,
  `Email` varchar(100) DEFAULT NULL,
  `User_Level` int(11) DEFAULT NULL,
  `Report_To` int(11) DEFAULT NULL,
  `Activated` enum('N','Y') NOT NULL DEFAULT 'N',
  `Locked` enum('Y','N') DEFAULT 'N',
  `Profile` text,
  `Current_URL` text,
  `Theme` varchar(30) DEFAULT 'theme-default.css',
  `Menu_Horizontal` enum('N','Y') DEFAULT 'Y',
  `Table_Width_Style` enum('3','2','1') DEFAULT '2' COMMENT '1 = Scroll, 2 = Normal, 3 = 100%',
  `Scroll_Table_Width` int(11) DEFAULT '1100',
  `Scroll_Table_Height` int(11) DEFAULT '300',
  `Rows_Vertical_Align_Top` enum('Y','N') DEFAULT 'Y',
  `Language` char(2) DEFAULT 'en',
  `Redirect_To_Last_Visited_Page_After_Login` enum('Y','N') DEFAULT 'N',
  `Font_Name` varchar(50) DEFAULT 'arial',
  `Font_Size` varchar(4) DEFAULT '13px',
  PRIMARY KEY (`Username`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of users
-- ----------------------------
INSERT INTO `users` VALUES ('Masino', 'c001e0fef85ccf22a925f1bd22aebc73', 'Masino', 'Sinaga', 'masino.sinaga@gmail.com', '1', null, 'Y', 'N', 'a:8:{s:9:\"SessionID\";s:0:\"\";s:20:\"LastAccessedDateTime\";s:0:\"\";s:15:\"LoginRetryCount\";i:0;s:20:\"LastBadLoginDateTime\";s:0:\"\";s:18:\"RegisteredDateTime\";s:0:\"\";s:17:\"LastLoginDateTime\";s:0:\"\";s:18:\"LastLogoutDateTime\";s:19:\"2015/02/14 11:27:21\";s:23:\"LastPasswordChangedDate\";s:0:\"\";}', '/php_stock/view_sales_outstandingslist.php', 'theme-default.css', 'Y', '3', '1100', '300', 'Y', 'en', 'N', 'lucidasanstypewriter', '13px');

-- ----------------------------
-- View structure for view_purchases_details
-- ----------------------------
DROP VIEW IF EXISTS `view_purchases_details`;
CREATE VIEW `view_purchases_details` AS SELECT
a_purchases_detail.Purchase_ID,
a_purchases_detail.Purchase_Number,
a_purchases_detail.Supplier_Number,
a_purchases_detail.Stock_Item,
a_purchases_detail.Purchasing_Quantity,
a_purchases_detail.Purchasing_Price,
a_purchases_detail.Selling_Price,
a_purchases_detail.Purchasing_Total_Amount
FROM
a_purchases_detail ;

-- ----------------------------
-- View structure for view_purchases_outstandings
-- ----------------------------
DROP VIEW IF EXISTS `view_purchases_outstandings`;
CREATE VIEW `view_purchases_outstandings` AS SELECT
a_purchases.Purchase_ID,
a_purchases.Purchase_Number,
a_purchases.Purchase_Date,
a_purchases.Supplier_ID,
a_purchases.Notes,
a_purchases.Total_Amount,
a_purchases.Total_Payment,
a_purchases.Total_Balance
FROM
a_purchases 
WHERE a_purchases.Total_Balance <> 0 ;

-- ----------------------------
-- View structure for view_sales_details
-- ----------------------------
DROP VIEW IF EXISTS `view_sales_details`;
CREATE VIEW `view_sales_details` AS SELECT
a_sales_detail.Sales_ID,
a_sales_detail.Sales_Number,
a_sales_detail.Supplier_Number,
a_sales_detail.Stock_Item,
a_sales_detail.Sales_Quantity,
a_sales_detail.Purchasing_Price,
a_sales_detail.Sales_Price,
a_sales_detail.Sales_Total_Amount
FROM
a_sales_detail ;

-- ----------------------------
-- View structure for view_sales_outstandings
-- ----------------------------
DROP VIEW IF EXISTS `view_sales_outstandings`;
CREATE VIEW `view_sales_outstandings` AS SELECT
a_sales.Sales_ID,
a_sales.Sales_Number,
a_sales.Sales_Date,
a_sales.Customer_ID,
a_sales.Notes,
a_sales.Total_Amount,
a_sales.Total_Payment,
a_sales.Total_Balance,
a_sales.Discount_Type,
a_sales.Discount_Percentage,
a_sales.Discount_Amount,
a_sales.Tax_Percentage,
a_sales.Tax_Description,
a_sales.Final_Total_Amount
FROM
a_sales 
WHERE a_sales.Total_Balance <> 0 ;

-- ----------------------------
-- Procedure structure for addnewbreadcrumb
-- ----------------------------
DROP PROCEDURE IF EXISTS `addnewbreadcrumb`;
DELIMITER ;;
CREATE PROCEDURE `addnewbreadcrumb`(IN PageTitleParent VARCHAR(100),
                                    PageTitle VARCHAR(100),
                                    PageURL VARCHAR(100))
GoodBye: BEGIN
-- Need three parameters (PageTitleParent, PageTitle, and PageURL),
-- look at this line --> `Page_Title` = PageTitleParent);
-- look at this line --> VALUES (PageTitle, PageURL, ParentLevel, (ParentLevel + 1));
DECLARE ParentLevel INTEGER;
DECLARE RecCount INTEGER;
DECLARE CheckRecCount INTEGER;
DECLARE MyPageTitle VARCHAR(100);
  
SET ParentLevel = (SELECT Rgt FROM `breadcrumblinks` WHERE
`Page_Title` = PageTitleParent);
  
SET CheckRecCount = (SELECT COUNT(*) AS RecCount FROM `breadcrumblinks` WHERE
`Page_Title` = PageTitle);
    IF CheckRecCount > 0 THEN
        SET MyPageTitle = CONCAT("The following Page_Title is already exists in database: ", PageTitle);
        SELECT MyPageTitle;
        LEAVE GoodBye;
  END IF;
  
UPDATE `breadcrumblinks`
   SET Lft = CASE WHEN Lft > ParentLevel THEN
      Lft + 2
    ELSE
      Lft + 0
    END,
   Rgt = CASE WHEN Rgt >= ParentLevel THEN
      Rgt + 2
   ELSE
      Rgt + 0
   END
WHERE  Rgt >= ParentLevel;
  
SET RecCount = (SELECT COUNT(*) FROM `breadcrumblinks`);
    IF RecCount = 0 THEN
        -- this is for handling the first record
        INSERT INTO `breadcrumblinks` (Page_Title, Page_URL, Lft, Rgt)
                    VALUES (PageTitle, PageURL, 1, 2);
    ELSE
        -- whereas the following is for the second record, and so forth!
        INSERT INTO `breadcrumblinks` (Page_Title, Page_URL, Lft, Rgt)
                    VALUES (PageTitle, PageURL, ParentLevel, (ParentLevel + 1));
    END IF;
  
END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for deletebreadcrumbbasedonpagetitle
-- ----------------------------
DROP PROCEDURE IF EXISTS `deletebreadcrumbbasedonpagetitle`;
DELIMITER ;;
CREATE PROCEDURE `deletebreadcrumbbasedonpagetitle`(IN `PageTitle` VARCHAR(100))
BEGIN
-- Need one parameter (PageTitle), look at the line: WHERE  Page_Title = PageTitle;
DECLARE DeletedPageTitle VARCHAR(100);
DECLARE DeletedLft INTEGER;
DECLARE DeletedRgt INTEGER;
  
SELECT `Page_Title`, `Lft`, `Rgt`
INTO   DeletedPageTitle, DeletedLft, DeletedRgt
FROM   `breadcrumblinks`
WHERE `Page_Title` = PageTitle;
  
DELETE FROM `breadcrumblinks`
WHERE Lft BETWEEN DeletedLft AND DeletedRgt;
  
UPDATE `breadcrumblinks`
   SET Lft = CASE WHEN Lft > DeletedLft THEN
             Lft - (DeletedRgt - DeletedLft + 1)
          ELSE
             Lft
          END,
       Rgt = CASE WHEN Rgt > DeletedLft THEN
             Rgt - (DeletedRgt - DeletedLft + 1)
          ELSE
             Rgt
          END
   WHERE Lft > DeletedLft
      OR Rgt > DeletedLft;
END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for getbreadcrumblinks
-- ----------------------------
DROP PROCEDURE IF EXISTS `getbreadcrumblinks`;
DELIMITER ;;
CREATE PROCEDURE `getbreadcrumblinks`(IN PageTitleParent VARCHAR(100),
                                    PageTitle VARCHAR(100),
                                    PageURL VARCHAR(100))
GoodBye: BEGIN
-- Need three parameters (PageTitleParent, PageTitle, and PageURL),
-- look at this line --> `Page_Title` = PageTitleParent);
-- look at this line --> VALUES (PageTitle, PageURL, ParentLevel, (ParentLevel + 1));
DECLARE ParentLevel INTEGER;
DECLARE RecCount INTEGER;
DECLARE CheckRecCount INTEGER;
DECLARE MyPageTitle VARCHAR(100);
  
SET ParentLevel = (SELECT Rgt FROM `breadcrumblinks` WHERE
`Page_Title` = PageTitleParent);
  
SET CheckRecCount = (SELECT COUNT(*) AS RecCount FROM `breadcrumblinks` WHERE
`Page_Title` = PageTitle);
    IF CheckRecCount > 0 THEN
        SET MyPageTitle = CONCAT("The following Page_Title is already exists in database: ", PageTitle);
        SELECT MyPageTitle;
        LEAVE GoodBye;
  END IF;
  
UPDATE `breadcrumblinks`
   SET Lft = CASE WHEN Lft > ParentLevel THEN
      Lft + 2
    ELSE
      Lft + 0
    END,
   Rgt = CASE WHEN Rgt >= ParentLevel THEN
      Rgt + 2
   ELSE
      Rgt + 0
   END
WHERE  Rgt >= ParentLevel;
  
SET RecCount = (SELECT COUNT(*) FROM `breadcrumblinks`);
    IF RecCount = 0 THEN
        -- this is for handling the first record
        INSERT INTO `breadcrumblinks` (Page_Title, Page_URL, Lft, Rgt)
                    VALUES (PageTitle, PageURL, 1, 2);
    ELSE
        -- whereas the following is for the second record, and so forth!
        INSERT INTO `breadcrumblinks` (Page_Title, Page_URL, Lft, Rgt)
                    VALUES (PageTitle, PageURL, ParentLevel, (ParentLevel + 1));
    END IF;
  
END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for movebreadcrumb
-- ----------------------------
DROP PROCEDURE IF EXISTS `movebreadcrumb`;
DELIMITER ;;
CREATE PROCEDURE `movebreadcrumb`(IN CurrentRoot VARCHAR(100), IN NewParent VARCHAR(100))
BEGIN
-- Need two parameters: (1) CurrentRoot, and (2) NewParent.
DECLARE Origin_Lft INTEGER;
DECLARE Origin_Rgt INTEGER;
DECLARE NewParent_Rgt INTEGER;
  
SELECT `Lft`, `Rgt`
    INTO Origin_Lft, Origin_Rgt
    FROM `breadcrumblinks`
    WHERE `Page_Title` = CurrentRoot;
SET NewParent_Rgt = (SELECT `Rgt` FROM `breadcrumblinks`
    WHERE `Page_Title` = NewParent);
UPDATE `breadcrumblinks`
    SET `Lft` = `Lft` +
    CASE
        WHEN NewParent_Rgt < Origin_Lft
            THEN CASE
                WHEN Lft BETWEEN Origin_Lft AND Origin_Rgt
                    THEN NewParent_Rgt - Origin_Lft
                WHEN Lft BETWEEN NewParent_Rgt  AND Origin_Lft - 1
                    THEN Origin_Rgt - Origin_Lft + 1
                ELSE 0 END
        WHEN NewParent_Rgt > Origin_Rgt
            THEN CASE
                WHEN Lft BETWEEN Origin_Lft AND Origin_Rgt
                    THEN NewParent_Rgt - Origin_Rgt - 1
                WHEN Lft BETWEEN Origin_Rgt + 1 AND NewParent_Rgt - 1
                    THEN Origin_Lft - Origin_Rgt - 1
                ELSE 0 END
            ELSE 0 END,
    Rgt = Rgt +
    CASE
        WHEN NewParent_Rgt < Origin_Lft
            THEN CASE
        WHEN Rgt BETWEEN Origin_Lft AND Origin_Rgt
            THEN NewParent_Rgt - Origin_Lft
        WHEN Rgt BETWEEN NewParent_Rgt AND Origin_Lft - 1
            THEN Origin_Rgt - Origin_Lft + 1
        ELSE 0 END
        WHEN NewParent_Rgt > Origin_Rgt
            THEN CASE
                WHEN Rgt BETWEEN Origin_Lft AND Origin_Rgt
                    THEN NewParent_Rgt - Origin_Rgt - 1
                WHEN Rgt BETWEEN Origin_Rgt + 1 AND NewParent_Rgt - 1
                    THEN Origin_Lft - Origin_Rgt - 1
                ELSE 0 END
            ELSE 0 END;
END
;;
DELIMITER ;
