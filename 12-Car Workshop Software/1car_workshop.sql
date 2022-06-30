-- phpMyAdmin SQL Dump
-- version 4.7.3
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Dec 30, 2017 at 03:25 PM
-- Server version: 5.6.38
-- PHP Version: 5.6.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `tammanag_car_workshop`
--

-- --------------------------------------------------------

--
-- Table structure for table `cars`
--

CREATE TABLE `cars` (
  `id` int(11) NOT NULL,
  `owner_id` int(11) NOT NULL,
  `car_model` varchar(499) COLLATE utf8_unicode_ci NOT NULL,
  `car_make_id` int(11) NOT NULL,
  `plate_number` varchar(499) COLLATE utf8_unicode_ci NOT NULL,
  `color` varchar(499) COLLATE utf8_unicode_ci NOT NULL,
  `chassis_number` varchar(499) COLLATE utf8_unicode_ci NOT NULL,
  `registration_date` date NOT NULL,
  `transmission` int(1) NOT NULL COMMENT '1: Auto, 2: Manual',
  `mileage` int(11) NOT NULL,
  `photo_name` varchar(499) COLLATE utf8_unicode_ci NOT NULL,
  `created_user_id` int(11) NOT NULL,
  `created_datetime` datetime NOT NULL,
  `updated_user_id` int(11) NOT NULL,
  `updated_datetime` datetime NOT NULL,
  `status` int(1) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `cars`
--

INSERT INTO `cars` (`id`, `owner_id`, `car_model`, `car_make_id`, `plate_number`, `color`, `chassis_number`, `registration_date`, `transmission`, `mileage`, `photo_name`, `created_user_id`, `created_datetime`, `updated_user_id`, `updated_datetime`, `status`) VALUES
(1, 1, '23423', 22, '23423', 'gre', '438957', '0000-00-00', 1, 16, 'no_image.jpg', 3, '2017-12-12 16:33:00', 0, '0000-00-00 00:00:00', 1);

-- --------------------------------------------------------

--
-- Table structure for table `car_make`
--

CREATE TABLE `car_make` (
  `id` int(11) NOT NULL,
  `name` varchar(25) NOT NULL,
  `type` int(1) NOT NULL COMMENT '1: Asian, 2: Continental',
  `created_user_id` int(11) NOT NULL,
  `created_datetime` datetime NOT NULL,
  `updated_user_id` int(11) NOT NULL,
  `updated_datetime` datetime NOT NULL,
  `status` int(1) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `car_make`
--

INSERT INTO `car_make` (`id`, `name`, `type`, `created_user_id`, `created_datetime`, `updated_user_id`, `updated_datetime`, `status`) VALUES
(1, 'Honda', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 1),
(2, 'Toyota', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 1),
(3, 'Aston Martin', 2, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 1),
(4, 'BMW', 2, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 1),
(5, 'Mitsubishi', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 1),
(6, 'Subaru', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 1),
(7, 'Ferrari', 2, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 1),
(8, 'Lamborghini', 2, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 1),
(9, 'Ford', 2, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 1),
(10, 'Dodge', 2, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 1),
(11, 'Chevrolet', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 1),
(12, 'Mazda', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 1),
(13, 'Volkswagen', 2, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 1),
(14, 'Mercedes-Benz', 2, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 1),
(15, 'Audi', 2, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 1),
(16, 'Bentley', 2, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 1),
(17, 'Jaguar', 2, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 1),
(18, 'Kia', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 1),
(19, 'Hyundai', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 1),
(20, 'Jeep', 2, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 1),
(21, 'Land Rover', 2, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 1),
(22, 'Lexus', 2, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 1),
(23, 'Porsche', 2, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 1),
(24, 'Suzuki', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 1),
(25, 'Volvo', 2, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 1),
(26, 'Maserati', 2, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 1),
(27, 'Alfa Romeo', 2, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 1),
(28, 'Daihatsu', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 1),
(29, 'NISSAN ', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 1),
(30, 'ISUZU ', 2, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 1),
(31, 'ISUZU', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 1),
(32, 'Perodua ', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 1),
(33, 'Fiat ', 2, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 1),
(34, 'CHERY', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 1),
(35, 'Citroen', 2, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 1),
(36, 'Renault ', 2, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 1),
(37, 'Proton', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 1),
(38, 'Geely', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 1),
(39, 'Mini Cooper', 2, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 1),
(40, 'OPEL ', 2, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 1),
(41, 'SSANGYONG', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 1),
(42, 'Hino ', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 1),
(43, 'OTHER ', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 1),
(44, 'OTHER', 2, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 1),
(45, 'PEUGEOT', 2, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 1),
(46, 'LEXUS', 2, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 1),
(47, 'SAAB', 2, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 1),
(48, 'P.G.O. (MOTORBIKE)', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 1),
(49, 'ISUZU', 1, 0, '0000-00-00 00:00:00', 1, '2016-11-10 22:02:35', 1);

-- --------------------------------------------------------

--
-- Table structure for table `ci_sessions`
--

CREATE TABLE `ci_sessions` (
  `id` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `ip_address` varchar(45) COLLATE utf8_unicode_ci NOT NULL,
  `timestamp` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `data` blob NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `ci_sessions`
--

INSERT INTO `ci_sessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES
('3b4nksborgtcte2oo968937kavagqqok', '142.54.161.186', 1514587853, 0x5f5f63695f6c6173745f726567656e65726174657c693a313531343538373835333b),
('l54hsd5nt825hi6si11euiugkvkpbq3c', '216.244.66.245', 1514578106, 0x5f5f63695f6c6173745f726567656e65726174657c693a313531343537383130363b),
('bu8fjrtrm0pr5it65tqb9fvq3nvk2lt1', '159.203.103.62', 1514570214, 0x5f5f63695f6c6173745f726567656e65726174657c693a313531343537303231343b),
('jcrce8n6417brgf4m1cp4af6lec0vf3d', '183.78.55.242', 1514528934, 0x5f5f63695f6c6173745f726567656e65726174657c693a313531343532383933343b),
('ngl54b6642s185gdefspo92ppml5pv30', '37.210.228.168', 1514480423, 0x5f5f63695f6c6173745f726567656e65726174657c693a313531343438303432333b),
('i9nk29kit4g21euu2it0hf7rthb1u6ve', '37.210.228.168', 1514479798, 0x5f5f63695f6c6173745f726567656e65726174657c693a313531343437393733353b73657373696f6e69647c733a333a22706f73223b757365725f69647c733a313a2233223b757365725f656d61696c7c733a31373a2261647669736f7240676d61696c2e636f6d223b757365725f726f6c657c733a313a2232223b),
('n4ljlf36pf7lcdkq776s10bq7gijpj85', '207.46.13.122', 1514436289, 0x5f5f63695f6c6173745f726567656e65726174657c693a313531343433363238393b),
('sqjliu9phlh2kln0rm80egrc86jjq28s', '194.187.170.148', 1514380197, 0x5f5f63695f6c6173745f726567656e65726174657c693a313531343338303139373b),
('o691et33m9bgk02auumdsk3djv7jrk8v', '178.152.115.166', 1514389927, 0x5f5f63695f6c6173745f726567656e65726174657c693a313531343338393839393b73657373696f6e69647c733a333a22706f73223b757365725f69647c733a313a2231223b757365725f656d61696c7c733a31353a226f776e657240676d61696c2e636f6d223b757365725f726f6c657c733a313a2231223b),
('3gqg7q860krhan2ubmnbhaautmnm32gd', '103.207.148.30', 1514298633, 0x5f5f63695f6c6173745f726567656e65726174657c693a313531343239383538383b73657373696f6e69647c733a333a22706f73223b757365725f69647c733a313a2231223b757365725f656d61696c7c733a31353a226f776e657240676d61696c2e636f6d223b757365725f726f6c657c733a313a2231223b),
('9g4jcgde7o0c57k108js9ej2jnvt7fro', '159.203.121.1', 1514274479, 0x5f5f63695f6c6173745f726567656e65726174657c693a313531343237343437393b),
('qndb2n4kdgohi4sbsuuhoud7th66sd5f', '54.221.49.137', 1514183365, 0x5f5f63695f6c6173745f726567656e65726174657c693a313531343138333336353b),
('1d56f29h0un5vit7qel27tlrp8m3heil', '88.198.22.8', 1514273318, 0x5f5f63695f6c6173745f726567656e65726174657c693a313531343237333331383b),
('j5pcivt4jps76a0rvfidgma0mvutjroa', '54.87.43.20', 1514182006, 0x5f5f63695f6c6173745f726567656e65726174657c693a313531343138323030363b),
('elin3sar320uvi1f9qjpbuvekmjhebqq', '66.249.65.221', 1514176090, 0x5f5f63695f6c6173745f726567656e65726174657c693a313531343137363039303b),
('bi1dc4ahckfvfv0n3m3n76kvjq9fsaaq', '157.36.228.87', 1514115401, 0x5f5f63695f6c6173745f726567656e65726174657c693a313531343131353336393b73657373696f6e69647c733a333a22706f73223b757365725f69647c733a313a2231223b757365725f656d61696c7c733a31353a226f776e657240676d61696c2e636f6d223b757365725f726f6c657c733a313a2231223b),
('pq29u9cn12dh7t94u4cm277ev0lq687e', '47.247.154.63', 1514049632, 0x5f5f63695f6c6173745f726567656e65726174657c693a313531343034393633323b),
('5ab1c7vo3jpi700420ulfg9mr60u30a3', '213.152.161.5', 1513875641, 0x5f5f63695f6c6173745f726567656e65726174657c693a313531333837353634303b),
('t4enkrklre75okm7ulq6s5jca49vl4fs', '183.82.137.186', 1513930077, 0x5f5f63695f6c6173745f726567656e65726174657c693a313531333933303037373b),
('lto9an336d98r07hrcufq3j7p3fndvjt', '159.203.81.93', 1513840549, 0x5f5f63695f6c6173745f726567656e65726174657c693a313531333834303534393b),
('63k9tdnituo6tg0utauskac9qc5fu9v8', '171.61.243.219', 1513840641, 0x5f5f63695f6c6173745f726567656e65726174657c693a313531333834303432303b73657373696f6e69647c733a333a22706f73223b757365725f69647c733a313a2231223b757365725f656d61696c7c733a31353a226f776e657240676d61696c2e636f6d223b757365725f726f6c657c733a313a2231223b),
('sr63d3b91fj64r87as4jemuos8pnq660', '47.11.218.108', 1513791197, 0x5f5f63695f6c6173745f726567656e65726174657c693a313531333739313139373b),
('naq6acihio8i51pmu9ij4kvfv092tcj4', '183.82.137.186', 1513751267, 0x5f5f63695f6c6173745f726567656e65726174657c693a313531333735313236373b),
('lsilib26tmr7j5pc5dm2opvede9g1p07', '49.205.15.75', 1513734064, 0x5f5f63695f6c6173745f726567656e65726174657c693a313531333733343036343b),
('i3882hb3q9g5uacg8oqupcojl6d82825', '1.23.124.200', 1513603356, 0x5f5f63695f6c6173745f726567656e65726174657c693a313531333630333335363b),
('7shpurqrupmn2rlrvvb1fgloaa19v8tv', '139.167.15.87', 1513603691, 0x5f5f63695f6c6173745f726567656e65726174657c693a313531333630333639313b),
('jc53u3omvp7dj59me795624ev8qitacl', '139.167.220.85', 1513733563, 0x5f5f63695f6c6173745f726567656e65726174657c693a313531333733333536323b),
('kclqi8ilr3mouaf0csuqrou8uf002f15', '164.132.161.65', 1513562410, 0x5f5f63695f6c6173745f726567656e65726174657c693a313531333536323431303b),
('fjc9k237g8uiabcd7qmsebic2i5cgo5p', '103.87.57.90', 1513523721, 0x5f5f63695f6c6173745f726567656e65726174657c693a313531333532333439333b),
('cquen5dk423u6qq94a47hekv12oskv8a', '199.101.132.251', 1513455078, 0x5f5f63695f6c6173745f726567656e65726174657c693a313531333435353037383b),
('9a3qchttamqik3alkcacdc3p31vbtp2d', '159.203.109.45', 1513369913, 0x5f5f63695f6c6173745f726567656e65726174657c693a313531333336393931333b),
('cl80dv7ue5c18d963clhatqvhab0bsbl', '43.243.174.169', 1513322884, 0x5f5f63695f6c6173745f726567656e65726174657c693a313531333332323830303b73657373696f6e69647c733a333a22706f73223b757365725f69647c733a313a2232223b757365725f656d61696c7c733a32303a22746563686e696369616e40676d61696c2e636f6d223b757365725f726f6c657c733a313a2233223b),
('bmbshhpoa065b02lttr6npl2ntabh04v', '54.173.35.129', 1513094083, 0x5f5f63695f6c6173745f726567656e65726174657c693a313531333039343038333b),
('qv5t3bfkvq62db91qnnhpvcba8s29oeh', '157.37.161.130', 1513127810, 0x5f5f63695f6c6173745f726567656e65726174657c693a313531333132373831303b),
('jae4ro0kkr15mm90l4ecerqqctajci77', '122.175.87.85', 1513166989, 0x5f5f63695f6c6173745f726567656e65726174657c693a313531333136363839383b73657373696f6e69647c733a333a22706f73223b757365725f69647c733a313a2231223b757365725f656d61696c7c733a31353a226f776e657240676d61696c2e636f6d223b757365725f726f6c657c733a313a2231223b),
('8ddsdtl913u3h5jrq5ke8llqlrs19eom', '54.173.35.129', 1513174771, 0x5f5f63695f6c6173745f726567656e65726174657c693a313531333137343737313b),
('m722ovklshqip9htmu2seh134o7gmedh', '64.233.173.11', 1513189773, 0x5f5f63695f6c6173745f726567656e65726174657c693a313531333138393737333b),
('p0l5pp03r9tassglbmu48049ahdspbc0', '137.97.10.98', 1513222027, 0x5f5f63695f6c6173745f726567656e65726174657c693a313531333232313936333b73657373696f6e69647c733a333a22706f73223b757365725f69647c733a313a2231223b757365725f656d61696c7c733a31353a226f776e657240676d61696c2e636f6d223b757365725f726f6c657c733a313a2231223b),
('rrlnpt6volptbqepj6qp7sqka9mggf8g', '54.87.56.27', 1513275238, 0x5f5f63695f6c6173745f726567656e65726174657c693a313531333237353233383b),
('gmg5u2v78v26gjhfmuv3j6h07f03rhm7', '54.87.56.27', 1513275238, 0x5f5f63695f6c6173745f726567656e65726174657c693a313531333237353233383b),
('qcie83n0ektds814mf9ohhsmhfv19bhf', '43.243.174.169', 1513322698, 0x5f5f63695f6c6173745f726567656e65726174657c693a313531333332323430363b73657373696f6e69647c733a333a22706f73223b757365725f69647c733a313a2231223b757365725f656d61696c7c733a31353a226f776e657240676d61696c2e636f6d223b757365725f726f6c657c733a313a2231223b),
('vflgha19g4rgc3cv2skildc20ga9um1b', '54.173.35.129', 1513092706, 0x5f5f63695f6c6173745f726567656e65726174657c693a313531333039323730363b),
('fdu7vbi74grk7lo4m527d6c8kl8388di', '54.173.35.129', 1513093889, 0x5f5f63695f6c6173745f726567656e65726174657c693a313531333039333838393b),
('j9bcluk7v1ghk6rojsoqfga14k55m9ji', '54.173.35.129', 1513092262, 0x5f5f63695f6c6173745f726567656e65726174657c693a313531333039323236323b),
('m5uagpmt7lv9pq4mre6c6it8ipaeicbe', '207.46.13.2', 1513080446, 0x5f5f63695f6c6173745f726567656e65726174657c693a313531333038303434363b),
('ca8kh3i3ijeb60abghb2al78oh1nncu9', '54.173.35.129', 1513090845, 0x5f5f63695f6c6173745f726567656e65726174657c693a313531333039303834353b);

-- --------------------------------------------------------

--
-- Table structure for table `countries`
--

CREATE TABLE `countries` (
  `id` int(11) NOT NULL,
  `code` char(2) NOT NULL COMMENT 'Two-letter country code (ISO 3166-1 alpha-2)',
  `name` varchar(64) NOT NULL COMMENT 'English country name',
  `full_name` varchar(128) NOT NULL COMMENT 'Full English country name'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

--
-- Dumping data for table `countries`
--

INSERT INTO `countries` (`id`, `code`, `name`, `full_name`) VALUES
(1, 'AD', 'Andorra', 'Principality of Andorra'),
(2, 'AE', 'United Arab Emirates', 'United Arab Emirates'),
(3, 'AF', 'Afghanistan', 'Islamic Republic of Afghanistan'),
(4, 'AG', 'Antigua and Barbuda', 'Antigua and Barbuda'),
(5, 'AI', 'Anguilla', 'Anguilla'),
(6, 'AL', 'Albania', 'Republic of Albania'),
(7, 'AM', 'Armenia', 'Republic of Armenia'),
(8, 'AN', 'Netherlands Antilles', 'Netherlands Antilles'),
(9, 'AO', 'Angola', 'Republic of Angola'),
(10, 'AQ', 'Antarctica', 'Antarctica (the territory South of 60 deg S)'),
(11, 'AR', 'Argentina', 'Argentine Republic'),
(12, 'AS', 'American Samoa', 'American Samoa'),
(13, 'AT', 'Austria', 'Republic of Austria'),
(14, 'AU', 'Australia', 'Commonwealth of Australia'),
(15, 'AW', 'Aruba', 'Aruba'),
(16, 'AX', 'Ã…land', 'Ã…land Islands'),
(17, 'AZ', 'Azerbaijan', 'Republic of Azerbaijan'),
(18, 'BA', 'Bosnia and Herzegovina', 'Bosnia and Herzegovina'),
(19, 'BB', 'Barbados', 'Barbados'),
(20, 'BD', 'Bangladesh', 'People\'s Republic of Bangladesh'),
(21, 'BE', 'Belgium', 'Kingdom of Belgium'),
(22, 'BF', 'Burkina Faso', 'Burkina Faso'),
(23, 'BG', 'Bulgaria', 'Republic of Bulgaria'),
(24, 'BH', 'Bahrain', 'Kingdom of Bahrain'),
(25, 'BI', 'Burundi', 'Republic of Burundi'),
(26, 'BJ', 'Benin', 'Republic of Benin'),
(27, 'BL', 'Saint BarthÃ©lemy', 'Saint Barthelemy'),
(28, 'BM', 'Bermuda', 'Bermuda'),
(29, 'BN', 'Brunei Darussalam', 'Brunei Darussalam'),
(30, 'BO', 'Bolivia', 'Republic of Bolivia'),
(31, 'BR', 'Brazil', 'Federative Republic of Brazil'),
(32, 'BS', 'Bahamas', 'Commonwealth of the Bahamas'),
(33, 'BT', 'Bhutan', 'Kingdom of Bhutan'),
(34, 'BV', 'Bouvet Island', 'Bouvet Island (Bouvetoya)'),
(35, 'BW', 'Botswana', 'Republic of Botswana'),
(36, 'BY', 'Belarus', 'Republic of Belarus'),
(37, 'BZ', 'Belize', 'Belize'),
(38, 'CA', 'Canada', 'Canada'),
(39, 'CC', 'Cocos (Keeling) Islands', 'Cocos (Keeling) Islands'),
(40, 'CD', 'Congo (Kinshasa)', 'Democratic Republic of the Congo'),
(41, 'CF', 'Central African Republic', 'Central African Republic'),
(42, 'CG', 'Congo (Brazzaville)', 'Republic of the Congo'),
(43, 'CH', 'Switzerland', 'Swiss Confederation'),
(44, 'CI', 'CÃ´te d\'Ivoire', 'Republic of Cote d\'Ivoire'),
(45, 'CK', 'Cook Islands', 'Cook Islands'),
(46, 'CL', 'Chile', 'Republic of Chile'),
(47, 'CM', 'Cameroon', 'Republic of Cameroon'),
(48, 'CN', 'China', 'People\'s Republic of China'),
(49, 'CO', 'Colombia', 'Republic of Colombia'),
(50, 'CR', 'Costa Rica', 'Republic of Costa Rica'),
(51, 'CU', 'Cuba', 'Republic of Cuba'),
(52, 'CV', 'Cape Verde', 'Republic of Cape Verde'),
(53, 'CX', 'Christmas Island', 'Christmas Island'),
(54, 'CY', 'Cyprus', 'Republic of Cyprus'),
(55, 'CZ', 'Czech Republic', 'Czech Republic'),
(56, 'DE', 'Germany', 'Federal Republic of Germany'),
(57, 'DJ', 'Djibouti', 'Republic of Djibouti'),
(58, 'DK', 'Denmark', 'Kingdom of Denmark'),
(59, 'DM', 'Dominica', 'Commonwealth of Dominica'),
(60, 'DO', 'Dominican Republic', 'Dominican Republic'),
(61, 'DZ', 'Algeria', 'People\'s Democratic Republic of Algeria'),
(62, 'EC', 'Ecuador', 'Republic of Ecuador'),
(63, 'EE', 'Estonia', 'Republic of Estonia'),
(64, 'EG', 'Egypt', 'Arab Republic of Egypt'),
(65, 'EH', 'Western Sahara', 'Western Sahara'),
(66, 'ER', 'Eritrea', 'State of Eritrea'),
(67, 'ES', 'Spain', 'Kingdom of Spain'),
(68, 'ET', 'Ethiopia', 'Federal Democratic Republic of Ethiopia'),
(69, 'FI', 'Finland', 'Republic of Finland'),
(70, 'FJ', 'Fiji', 'Republic of the Fiji Islands'),
(71, 'FK', 'Falkland Islands', 'Falkland Islands (Malvinas)'),
(72, 'FM', 'Micronesia', 'Federated States of Micronesia'),
(73, 'FO', 'Faroe Islands', 'Faroe Islands'),
(74, 'FR', 'France', 'French Republic'),
(75, 'GA', 'Gabon', 'Gabonese Republic'),
(76, 'GB', 'United Kingdom', 'United Kingdom of Great Britain & Northern Ireland'),
(77, 'GD', 'Grenada', 'Grenada'),
(78, 'GE', 'Georgia', 'Georgia'),
(79, 'GF', 'French Guiana', 'French Guiana'),
(80, 'GG', 'Guernsey', 'Bailiwick of Guernsey'),
(81, 'GH', 'Ghana', 'Republic of Ghana'),
(82, 'GI', 'Gibraltar', 'Gibraltar'),
(83, 'GL', 'Greenland', 'Greenland'),
(84, 'GM', 'Gambia', 'Republic of the Gambia'),
(85, 'GN', 'Guinea', 'Republic of Guinea'),
(86, 'GP', 'Guadeloupe', 'Guadeloupe'),
(87, 'GQ', 'Equatorial Guinea', 'Republic of Equatorial Guinea'),
(88, 'GR', 'Greece', 'Hellenic Republic Greece'),
(89, 'GS', 'South Georgia and South Sandwich Islands', 'South Georgia and the South Sandwich Islands'),
(90, 'GT', 'Guatemala', 'Republic of Guatemala'),
(91, 'GU', 'Guam', 'Guam'),
(92, 'GW', 'Guinea-Bissau', 'Republic of Guinea-Bissau'),
(93, 'GY', 'Guyana', 'Co-operative Republic of Guyana'),
(94, 'HK', 'Hong Kong', 'Hong Kong Special Administrative Region of China'),
(95, 'HM', 'Heard and McDonald Islands', 'Heard Island and McDonald Islands'),
(96, 'HN', 'Honduras', 'Republic of Honduras'),
(97, 'HR', 'Croatia', 'Republic of Croatia'),
(98, 'HT', 'Haiti', 'Republic of Haiti'),
(99, 'HU', 'Hungary', 'Republic of Hungary'),
(100, 'ID', 'Indonesia', 'Republic of Indonesia'),
(101, 'IE', 'Ireland', 'Ireland'),
(102, 'IL', 'Israel', 'State of Israel'),
(103, 'IM', 'Isle of Man', 'Isle of Man'),
(104, 'IN', 'India', 'Republic of India'),
(105, 'IO', 'British Indian Ocean Territory', 'British Indian Ocean Territory (Chagos Archipelago)'),
(106, 'IQ', 'Iraq', 'Republic of Iraq'),
(107, 'IR', 'Iran', 'Islamic Republic of Iran'),
(108, 'IS', 'Iceland', 'Republic of Iceland'),
(109, 'IT', 'Italy', 'Italian Republic'),
(110, 'JE', 'Jersey', 'Bailiwick of Jersey'),
(111, 'JM', 'Jamaica', 'Jamaica'),
(112, 'JO', 'Jordan', 'Hashemite Kingdom of Jordan'),
(113, 'JP', 'Japan', 'Japan'),
(114, 'KE', 'Kenya', 'Republic of Kenya'),
(115, 'KG', 'Kyrgyzstan', 'Kyrgyz Republic'),
(116, 'KH', 'Cambodia', 'Kingdom of Cambodia'),
(117, 'KI', 'Kiribati', 'Republic of Kiribati'),
(118, 'KM', 'Comoros', 'Union of the Comoros'),
(119, 'KN', 'Saint Kitts and Nevis', 'Federation of Saint Kitts and Nevis'),
(120, 'KP', 'Korea, North', 'Democratic People\'s Republic of Korea'),
(121, 'KR', 'Korea, South', 'Republic of Korea'),
(122, 'KW', 'Kuwait', 'State of Kuwait'),
(123, 'KY', 'Cayman Islands', 'Cayman Islands'),
(124, 'KZ', 'Kazakhstan', 'Republic of Kazakhstan'),
(125, 'LA', 'Laos', 'Lao People\'s Democratic Republic'),
(126, 'LB', 'Lebanon', 'Lebanese Republic'),
(127, 'LC', 'Saint Lucia', 'Saint Lucia'),
(128, 'LI', 'Liechtenstein', 'Principality of Liechtenstein'),
(129, 'LK', 'Sri Lanka', 'Democratic Socialist Republic of Sri Lanka'),
(130, 'LR', 'Liberia', 'Republic of Liberia'),
(131, 'LS', 'Lesotho', 'Kingdom of Lesotho'),
(132, 'LT', 'Lithuania', 'Republic of Lithuania'),
(133, 'LU', 'Luxembourg', 'Grand Duchy of Luxembourg'),
(134, 'LV', 'Latvia', 'Republic of Latvia'),
(135, 'LY', 'Libya', 'Libyan Arab Jamahiriya'),
(136, 'MA', 'Morocco', 'Kingdom of Morocco'),
(137, 'MC', 'Monaco', 'Principality of Monaco'),
(138, 'MD', 'Moldova', 'Republic of Moldova'),
(139, 'ME', 'Montenegro', 'Republic of Montenegro'),
(140, 'MF', 'Saint Martin (French part)', 'Saint Martin'),
(141, 'MG', 'Madagascar', 'Republic of Madagascar'),
(142, 'MH', 'Marshall Islands', 'Republic of the Marshall Islands'),
(143, 'MK', 'Macedonia', 'Republic of Macedonia'),
(144, 'ML', 'Mali', 'Republic of Mali'),
(145, 'MM', 'Myanmar', 'Union of Myanmar'),
(146, 'MN', 'Mongolia', 'Mongolia'),
(147, 'MO', 'Macau', 'Macao Special Administrative Region of China'),
(148, 'MP', 'Northern Mariana Islands', 'Commonwealth of the Northern Mariana Islands'),
(149, 'MQ', 'Martinique', 'Martinique'),
(150, 'MR', 'Mauritania', 'Islamic Republic of Mauritania'),
(151, 'MS', 'Montserrat', 'Montserrat'),
(152, 'MT', 'Malta', 'Republic of Malta'),
(153, 'MU', 'Mauritius', 'Republic of Mauritius'),
(154, 'MV', 'Maldives', 'Republic of Maldives'),
(155, 'MW', 'Malawi', 'Republic of Malawi'),
(156, 'MX', 'Mexico', 'United Mexican States'),
(157, 'MY', 'Malaysia', 'Malaysia'),
(158, 'MZ', 'Mozambique', 'Republic of Mozambique'),
(159, 'NA', 'Namibia', 'Republic of Namibia'),
(160, 'NC', 'New Caledonia', 'New Caledonia'),
(161, 'NE', 'Niger', 'Republic of Niger'),
(162, 'NF', 'Norfolk Island', 'Norfolk Island'),
(163, 'NG', 'Nigeria', 'Federal Republic of Nigeria'),
(164, 'NI', 'Nicaragua', 'Republic of Nicaragua'),
(165, 'NL', 'Netherlands', 'Kingdom of the Netherlands'),
(166, 'NO', 'Norway', 'Kingdom of Norway'),
(167, 'NP', 'Nepal', 'State of Nepal'),
(168, 'NR', 'Nauru', 'Republic of Nauru'),
(169, 'NU', 'Niue', 'Niue'),
(170, 'NZ', 'New Zealand', 'New Zealand'),
(171, 'OM', 'Oman', 'Sultanate of Oman'),
(172, 'PA', 'Panama', 'Republic of Panama'),
(173, 'PE', 'Peru', 'Republic of Peru'),
(174, 'PF', 'French Polynesia', 'French Polynesia'),
(175, 'PG', 'Papua New Guinea', 'Independent State of Papua New Guinea'),
(176, 'PH', 'Philippines', 'Republic of the Philippines'),
(177, 'PK', 'Pakistan', 'Islamic Republic of Pakistan'),
(178, 'PL', 'Poland', 'Republic of Poland'),
(179, 'PM', 'Saint Pierre and Miquelon', 'Saint Pierre and Miquelon'),
(180, 'PN', 'Pitcairn', 'Pitcairn Islands'),
(181, 'PR', 'Puerto Rico', 'Commonwealth of Puerto Rico'),
(182, 'PS', 'Palestine', 'Occupied Palestinian Territory'),
(183, 'PT', 'Portugal', 'Portuguese Republic'),
(184, 'PW', 'Palau', 'Republic of Palau'),
(185, 'PY', 'Paraguay', 'Republic of Paraguay'),
(186, 'QA', 'Qatar', 'State of Qatar'),
(187, 'RE', 'Reunion', 'Reunion'),
(188, 'RO', 'Romania', 'Romania'),
(189, 'RS', 'Serbia', 'Republic of Serbia'),
(190, 'RU', 'Russian Federation', 'Russian Federation'),
(191, 'RW', 'Rwanda', 'Republic of Rwanda'),
(192, 'SA', 'Saudi Arabia', 'Kingdom of Saudi Arabia'),
(193, 'SB', 'Solomon Islands', 'Solomon Islands'),
(194, 'SC', 'Seychelles', 'Republic of Seychelles'),
(195, 'SD', 'Sudan', 'Republic of Sudan'),
(196, 'SE', 'Sweden', 'Kingdom of Sweden'),
(197, 'SG', 'Singapore', 'Republic of Singapore'),
(198, 'SH', 'Saint Helena', 'Saint Helena'),
(199, 'SI', 'Slovenia', 'Republic of Slovenia'),
(200, 'SJ', 'Svalbard and Jan Mayen Islands', 'Svalbard & Jan Mayen Islands'),
(201, 'SK', 'Slovakia', 'Slovakia (Slovak Republic)'),
(202, 'SL', 'Sierra Leone', 'Republic of Sierra Leone'),
(203, 'SM', 'San Marino', 'Republic of San Marino'),
(204, 'SN', 'Senegal', 'Republic of Senegal'),
(205, 'SO', 'Somalia', 'Somali Republic'),
(206, 'SR', 'Suriname', 'Republic of Suriname'),
(207, 'ST', 'Sao Tome and Principe', 'Democratic Republic of Sao Tome and Principe'),
(208, 'SV', 'El Salvador', 'Republic of El Salvador'),
(209, 'SY', 'Syria', 'Syrian Arab Republic'),
(210, 'SZ', 'Swaziland', 'Kingdom of Swaziland'),
(211, 'TC', 'Turks and Caicos Islands', 'Turks and Caicos Islands'),
(212, 'TD', 'Chad', 'Republic of Chad'),
(213, 'TF', 'French Southern Lands', 'French Southern Territories'),
(214, 'TG', 'Togo', 'Togolese Republic'),
(215, 'TH', 'Thailand', 'Kingdom of Thailand'),
(216, 'TJ', 'Tajikistan', 'Republic of Tajikistan'),
(217, 'TK', 'Tokelau', 'Tokelau'),
(218, 'TL', 'Timor-Leste', 'Democratic Republic of Timor-Leste'),
(219, 'TM', 'Turkmenistan', 'Turkmenistan'),
(220, 'TN', 'Tunisia', 'Tunisian Republic'),
(221, 'TO', 'Tonga', 'Kingdom of Tonga'),
(222, 'TR', 'Turkey', 'Republic of Turkey'),
(223, 'TT', 'Trinidad and Tobago', 'Republic of Trinidad and Tobago'),
(224, 'TV', 'Tuvalu', 'Tuvalu'),
(225, 'TW', 'Taiwan', 'Taiwan'),
(226, 'TZ', 'Tanzania', 'United Republic of Tanzania'),
(227, 'UA', 'Ukraine', 'Ukraine'),
(228, 'UG', 'Uganda', 'Republic of Uganda'),
(229, 'UM', 'United States Minor Outlying Islands', 'United States Minor Outlying Islands'),
(230, 'US', 'United States of America', 'United States of America'),
(231, 'UY', 'Uruguay', 'Eastern Republic of Uruguay'),
(232, 'UZ', 'Uzbekistan', 'Republic of Uzbekistan'),
(233, 'VA', 'Vatican City', 'Holy See (Vatican City State)'),
(234, 'VC', 'Saint Vincent and the Grenadines', 'Saint Vincent and the Grenadines'),
(235, 'VE', 'Venezuela', 'Bolivarian Republic of Venezuela'),
(236, 'VG', 'Virgin Islands, British', 'British Virgin Islands'),
(237, 'VI', 'Virgin Islands, U.S.', 'United States Virgin Islands'),
(238, 'VN', 'Vietnam', 'Socialist Republic of Vietnam'),
(239, 'VU', 'Vanuatu', 'Republic of Vanuatu'),
(240, 'WF', 'Wallis and Futuna Islands', 'Wallis and Futuna'),
(241, 'WS', 'Samoa', 'Independent State of Samoa'),
(242, 'YE', 'Yemen', 'Yemen'),
(243, 'YT', 'Mayotte', 'Mayotte'),
(244, 'ZA', 'South Africa', 'Republic of South Africa'),
(245, 'ZM', 'Zambia', 'Republic of Zambia'),
(246, 'ZW', 'Zimbabwe', 'Republic of Zimbabwe');

-- --------------------------------------------------------

--
-- Table structure for table `currency`
--

CREATE TABLE `currency` (
  `iso` char(3) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `name` varchar(200) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `currency`
--

INSERT INTO `currency` (`iso`, `name`) VALUES
('KRW', '(South) Korean Won'),
('AFA', 'Afghanistan Afghani'),
('ALL', 'Albanian Lek'),
('DZD', 'Algerian Dinar'),
('ADP', 'Andorran Peseta'),
('AOK', 'Angolan Kwanza'),
('ARS', 'Argentine Peso'),
('AMD', 'Armenian Dram'),
('AWG', 'Aruban Florin'),
('AUD', 'Australian Dollar'),
('BSD', 'Bahamian Dollar'),
('BHD', 'Bahraini Dinar'),
('BDT', 'Bangladeshi Taka'),
('BBD', 'Barbados Dollar'),
('BZD', 'Belize Dollar'),
('BMD', 'Bermudian Dollar'),
('BTN', 'Bhutan Ngultrum'),
('BOB', 'Bolivian Boliviano'),
('BWP', 'Botswanian Pula'),
('BRL', 'Brazilian Real'),
('GBP', 'British Pound'),
('BND', 'Brunei Dollar'),
('BGN', 'Bulgarian Lev'),
('BUK', 'Burma Kyat'),
('BIF', 'Burundi Franc'),
('CAD', 'Canadian Dollar'),
('CVE', 'Cape Verde Escudo'),
('KYD', 'Cayman Islands Dollar'),
('CLP', 'Chilean Peso'),
('CLF', 'Chilean Unidades de Fomento'),
('COP', 'Colombian Peso'),
('XOF', 'CommunautÃ© FinanciÃ¨re Africaine BCEAO - Francs'),
('XAF', 'CommunautÃ© FinanciÃ¨re Africaine BEAC, Francs'),
('KMF', 'Comoros Franc'),
('XPF', 'Comptoirs FranÃ§ais du Pacifique Francs'),
('CRC', 'Costa Rican Colon'),
('CUP', 'Cuban Peso'),
('CYP', 'Cyprus Pound'),
('CZK', 'Czech Republic Koruna'),
('DKK', 'Danish Krone'),
('YDD', 'Democratic Yemeni Dinar'),
('DOP', 'Dominican Peso'),
('XCD', 'East Caribbean Dollar'),
('TPE', 'East Timor Escudo'),
('ECS', 'Ecuador Sucre'),
('EGP', 'Egyptian Pound'),
('SVC', 'El Salvador Colon'),
('EEK', 'Estonian Kroon (EEK)'),
('ETB', 'Ethiopian Birr'),
('EUR', 'Euro'),
('FKP', 'Falkland Islands Pound'),
('FJD', 'Fiji Dollar'),
('GMD', 'Gambian Dalasi'),
('GHC', 'Ghanaian Cedi'),
('GIP', 'Gibraltar Pound'),
('XAU', 'Gold, Ounces'),
('GTQ', 'Guatemalan Quetzal'),
('GNF', 'Guinea Franc'),
('GWP', 'Guinea-Bissau Peso'),
('GYD', 'Guyanan Dollar'),
('HTG', 'Haitian Gourde'),
('HNL', 'Honduran Lempira'),
('HKD', 'Hong Kong Dollar'),
('HUF', 'Hungarian Forint'),
('INR', 'Indian Rupee'),
('IDR', 'Indonesian Rupiah'),
('XDR', 'International Monetary Fund (IMF) Special Drawing Rights'),
('IRR', 'Iranian Rial'),
('IQD', 'Iraqi Dinar'),
('IEP', 'Irish Punt'),
('ILS', 'Israeli Shekel'),
('JMD', 'Jamaican Dollar'),
('JPY', 'Japanese Yen'),
('JOD', 'Jordanian Dinar'),
('KHR', 'Kampuchean (Cambodian) Riel'),
('KES', 'Kenyan Schilling'),
('KWD', 'Kuwaiti Dinar'),
('LAK', 'Lao Kip'),
('LBP', 'Lebanese Pound'),
('LSL', 'Lesotho Loti'),
('LRD', 'Liberian Dollar'),
('LYD', 'Libyan Dinar'),
('MOP', 'Macau Pataca'),
('MGF', 'Malagasy Franc'),
('MWK', 'Malawi Kwacha'),
('MYR', 'Malaysian Ringgit'),
('MVR', 'Maldive Rufiyaa'),
('MTL', 'Maltese Lira'),
('MRO', 'Mauritanian Ouguiya'),
('MUR', 'Mauritius Rupee'),
('MXP', 'Mexican Peso'),
('MNT', 'Mongolian Tugrik'),
('MAD', 'Moroccan Dirham'),
('MZM', 'Mozambique Metical'),
('NAD', 'Namibian Dollar'),
('NPR', 'Nepalese Rupee'),
('ANG', 'Netherlands Antillian Guilder'),
('YUD', 'New Yugoslavia Dinar'),
('NZD', 'New Zealand Dollar'),
('NIO', 'Nicaraguan Cordoba'),
('NGN', 'Nigerian Naira'),
('KPW', 'North Korean Won'),
('NOK', 'Norwegian Kroner'),
('OMR', 'Omani Rial'),
('PKR', 'Pakistan Rupee'),
('XPD', 'Palladium Ounces'),
('PAB', 'Panamanian Balboa'),
('PGK', 'Papua New Guinea Kina'),
('PYG', 'Paraguay Guarani'),
('PEN', 'Peruvian Nuevo Sol'),
('PHP', 'Philippine Peso'),
('XPT', 'Platinum, Ounces'),
('PLN', 'Polish Zloty'),
('QAR', 'Qatari Rial'),
('RON', 'Romanian Leu'),
('RUB', 'Russian Ruble'),
('RWF', 'Rwanda Franc'),
('WST', 'Samoan Tala'),
('STD', 'Sao Tome and Principe Dobra'),
('SAR', 'Saudi Arabian Riyal'),
('SCR', 'Seychelles Rupee'),
('SLL', 'Sierra Leone Leone'),
('XAG', 'Silver, Ounces'),
('SGD', 'Singapore Dollar'),
('SKK', 'Slovak Koruna'),
('SBD', 'Solomon Islands Dollar'),
('SOS', 'Somali Schilling'),
('ZAR', 'South African Rand'),
('LKR', 'Sri Lanka Rupee'),
('SHP', 'St. Helena Pound'),
('SDP', 'Sudanese Pound'),
('SRG', 'Suriname Guilder'),
('SZL', 'Swaziland Lilangeni'),
('SEK', 'Swedish Krona'),
('CHF', 'Swiss Franc'),
('SYP', 'Syrian Potmd'),
('TWD', 'Taiwan Dollar'),
('TZS', 'Tanzanian Schilling'),
('THB', 'Thai Baht'),
('TOP', 'Tongan Paanga'),
('TTD', 'Trinidad and Tobago Dollar'),
('TND', 'Tunisian Dinar'),
('TRY', 'Turkish Lira'),
('UGX', 'Uganda Shilling'),
('AED', 'United Arab Emirates Dirham'),
('UYU', 'Uruguayan Peso'),
('USD', 'US Dollar'),
('VUV', 'Vanuatu Vatu'),
('VEF', 'Venezualan Bolivar'),
('VND', 'Vietnamese Dong'),
('YER', 'Yemeni Rial'),
('CNY', 'Yuan (Chinese) Renminbi'),
('ZRZ', 'Zaire Zaire'),
('ZMK', 'Zambian Kwacha'),
('ZWD', 'Zimbabwe Dollar');

-- --------------------------------------------------------

--
-- Table structure for table `customers`
--

CREATE TABLE `customers` (
  `id` int(11) NOT NULL,
  `firstname` varchar(499) COLLATE utf8_unicode_ci NOT NULL,
  `lastname` varchar(499) COLLATE utf8_unicode_ci NOT NULL,
  `nric` varchar(99) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(499) COLLATE utf8_unicode_ci NOT NULL,
  `mobile` varchar(499) COLLATE utf8_unicode_ci NOT NULL,
  `address` longtext COLLATE utf8_unicode_ci NOT NULL,
  `postal_code` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `country` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `customer_group` int(11) NOT NULL,
  `created_user_id` int(11) NOT NULL,
  `created_datetime` datetime NOT NULL,
  `updated_user_id` int(11) NOT NULL,
  `updated_datetime` datetime NOT NULL,
  `status` int(1) NOT NULL COMMENT '1: Active, 0: Inactive'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `customers`
--

INSERT INTO `customers` (`id`, `firstname`, `lastname`, `nric`, `email`, `mobile`, `address`, `postal_code`, `country`, `customer_group`, `created_user_id`, `created_datetime`, `updated_user_id`, `updated_datetime`, `status`) VALUES
(1, 'Sher ', ' A K', '1', 'sher.apac@gmail.com', '0596335191', 'R', '5765767', 'IN', 2, 3, '2017-12-12 16:32:19', 0, '0000-00-00 00:00:00', 1);

-- --------------------------------------------------------

--
-- Table structure for table `customer_groups`
--

CREATE TABLE `customer_groups` (
  `id` int(11) NOT NULL,
  `name` varchar(499) COLLATE utf8_unicode_ci NOT NULL,
  `discount_percentage` double(11,2) NOT NULL,
  `created_user_id` int(11) NOT NULL,
  `created_datetime` datetime NOT NULL,
  `updated_user_id` int(11) NOT NULL,
  `updated_datetime` datetime NOT NULL,
  `status` int(1) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `customer_groups`
--

INSERT INTO `customer_groups` (`id`, `name`, `discount_percentage`, `created_user_id`, `created_datetime`, `updated_user_id`, `updated_datetime`, `status`) VALUES
(1, 'General', 0.00, 1, '2016-11-10 23:18:31', 1, '2016-11-11 00:06:24', 1),
(2, 'VIP', 10.00, 1, '2016-11-10 23:18:49', 0, '0000-00-00 00:00:00', 1),
(3, 'Staff', 15.00, 1, '2016-11-10 23:21:31', 1, '2016-11-11 00:02:44', 1);

-- --------------------------------------------------------

--
-- Table structure for table `defects`
--

CREATE TABLE `defects` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_user_id` int(11) NOT NULL,
  `created_datetime` datetime NOT NULL,
  `updated_user_id` int(11) NOT NULL,
  `updated_datetime` datetime NOT NULL,
  `status` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `defects`
--

INSERT INTO `defects` (`id`, `name`, `created_user_id`, `created_datetime`, `updated_user_id`, `updated_datetime`, `status`) VALUES
(1, 'Tyres', 1, '2016-11-15 00:00:00', 0, '0000-00-00 00:00:00', 1),
(2, 'Steering', 1, '2016-11-15 00:00:00', 0, '0000-00-00 00:00:00', 1),
(3, 'Engine', 1, '2016-11-15 00:00:00', 0, '0000-00-00 00:00:00', 1),
(4, 'Suspension', 1, '2016-11-15 00:00:00', 0, '0000-00-00 00:00:00', 1),
(5, 'Battery', 1, '2016-11-15 00:00:00', 0, '0000-00-00 00:00:00', 1),
(6, 'Others', 1, '2016-11-15 00:00:00', 0, '0000-00-00 00:00:00', 1);

-- --------------------------------------------------------

--
-- Table structure for table `inventory`
--

CREATE TABLE `inventory` (
  `id` int(11) NOT NULL,
  `materials_id` int(11) NOT NULL,
  `sku` varchar(499) COLLATE utf8_unicode_ci NOT NULL,
  `quantity` double(11,2) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `inventory_updated_logs`
--

CREATE TABLE `inventory_updated_logs` (
  `id` int(11) NOT NULL,
  `inventory_id` int(11) NOT NULL,
  `material_id` int(11) NOT NULL,
  `sku` varchar(499) COLLATE utf8_unicode_ci NOT NULL,
  `before_qty` double(11,2) NOT NULL,
  `update_qty` double(11,2) NOT NULL,
  `after_qty` double(11,2) NOT NULL,
  `created_user_id` int(11) NOT NULL,
  `created_datetime` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `materials`
--

CREATE TABLE `materials` (
  `id` int(11) NOT NULL,
  `sku` varchar(499) COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(499) COLLATE utf8_unicode_ci NOT NULL,
  `material_type` int(11) NOT NULL,
  `cost` double(11,2) NOT NULL,
  `price` double(11,2) NOT NULL,
  `created_user_id` int(11) NOT NULL,
  `created_datetime` datetime NOT NULL,
  `updated_user_id` int(11) NOT NULL,
  `updated_datetime` datetime NOT NULL,
  `status` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `material_type`
--

CREATE TABLE `material_type` (
  `id` int(11) NOT NULL,
  `name` varchar(499) COLLATE utf8_unicode_ci NOT NULL,
  `created_user_id` int(11) NOT NULL,
  `created_datetime` datetime NOT NULL,
  `updated_user_id` int(11) NOT NULL,
  `updated_datetime` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `material_type`
--

INSERT INTO `material_type` (`id`, `name`, `created_user_id`, `created_datetime`, `updated_user_id`, `updated_datetime`) VALUES
(1, 'Japanese & Korean', 1, '2017-02-12 00:00:00', 0, '0000-00-00 00:00:00'),
(2, 'Continental', 1, '2017-02-12 00:00:00', 0, '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `payment_method`
--

CREATE TABLE `payment_method` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_user_id` int(11) NOT NULL,
  `created_datetime` datetime NOT NULL,
  `updated_user_id` int(11) NOT NULL,
  `updated_datetime` datetime NOT NULL,
  `status` int(1) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `payment_method`
--

INSERT INTO `payment_method` (`id`, `name`, `created_user_id`, `created_datetime`, `updated_user_id`, `updated_datetime`, `status`) VALUES
(1, 'Cash', 1, '2016-11-07 22:15:22', 0, '0000-00-00 00:00:00', 1),
(2, 'NETS', 1, '2016-11-07 22:15:52', 0, '0000-00-00 00:00:00', 1),
(3, 'VISA', 1, '2016-11-07 22:15:56', 0, '0000-00-00 00:00:00', 1),
(4, 'MASTER', 1, '2016-11-07 22:16:01', 0, '0000-00-00 00:00:00', 1),
(5, 'Cheque', 1, '2016-11-07 22:16:08', 1, '2016-11-10 22:03:46', 1);

-- --------------------------------------------------------

--
-- Table structure for table `purchase_order`
--

CREATE TABLE `purchase_order` (
  `id` int(11) NOT NULL,
  `po_number` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `discount_amount` double(11,2) NOT NULL,
  `discount_percentage` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `subTotal` double(11,2) NOT NULL,
  `tax` double(11,2) NOT NULL,
  `grandTotal` double(11,2) NOT NULL,
  `supplier_id` int(11) NOT NULL,
  `supplier_name` varchar(499) COLLATE utf8_unicode_ci NOT NULL,
  `supplier_email` varchar(499) COLLATE utf8_unicode_ci NOT NULL,
  `supplier_tel` varchar(499) COLLATE utf8_unicode_ci NOT NULL,
  `supplier_fax` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `supplier_address` longtext COLLATE utf8_unicode_ci NOT NULL,
  `supplier_tax` double(11,2) NOT NULL,
  `po_date` date NOT NULL,
  `note` longtext COLLATE utf8_unicode_ci NOT NULL,
  `created_user_id` int(11) NOT NULL,
  `created_datetime` datetime NOT NULL,
  `updated_user_id` int(11) NOT NULL,
  `updated_datetime` datetime NOT NULL,
  `received_user_id` int(11) NOT NULL,
  `received_datetime` datetime NOT NULL,
  `status` int(1) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `purchase_order_items`
--

CREATE TABLE `purchase_order_items` (
  `id` int(11) NOT NULL,
  `purchase_order_id` int(11) NOT NULL,
  `material_id` int(11) NOT NULL,
  `material_sku` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `ordered_qty` int(11) NOT NULL,
  `received_qty` int(11) NOT NULL,
  `cost` double(11,2) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `purchase_order_status`
--

CREATE TABLE `purchase_order_status` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_user_id` int(11) NOT NULL,
  `created_datetime` datetime NOT NULL,
  `updated_user_id` int(11) NOT NULL,
  `updated_datetime` datetime NOT NULL,
  `status` int(1) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `purchase_order_status`
--

INSERT INTO `purchase_order_status` (`id`, `name`, `created_user_id`, `created_datetime`, `updated_user_id`, `updated_datetime`, `status`) VALUES
(1, 'Created', 1, '2017-03-04 00:00:00', 0, '0000-00-00 00:00:00', 1),
(2, 'Sent To Supplier', 1, '2017-03-04 00:00:00', 0, '0000-00-00 00:00:00', 1),
(3, 'Received From Supplier', 1, '2017-03-04 00:00:00', 0, '0000-00-00 00:00:00', 1);

-- --------------------------------------------------------

--
-- Table structure for table `service_jobs`
--

CREATE TABLE `service_jobs` (
  `id` int(11) NOT NULL,
  `invoice_number` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `discount_percentage` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `discount_amt` double(11,2) NOT NULL,
  `subtotal_amt` double(11,2) NOT NULL,
  `tax_amt` double(11,2) NOT NULL,
  `grandtotal_amt` double(11,2) NOT NULL,
  `service_advisor_id` int(11) NOT NULL,
  `technician_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `firstname` varchar(499) COLLATE utf8_unicode_ci NOT NULL,
  `lastname` varchar(499) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(499) COLLATE utf8_unicode_ci NOT NULL,
  `mobile` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `car_id` int(11) NOT NULL,
  `car_plate_number` varchar(499) COLLATE utf8_unicode_ci NOT NULL,
  `mileage_before` int(11) NOT NULL,
  `mileage_after` int(11) NOT NULL,
  `created_user_id` int(11) NOT NULL,
  `created_datetime` datetime NOT NULL,
  `updated_user_id` int(11) NOT NULL,
  `updated_datetime` datetime NOT NULL,
  `ended_user_id` int(11) NOT NULL,
  `ended_datetime` datetime NOT NULL,
  `invoice_user_id` int(11) NOT NULL,
  `invoice_datetime` datetime NOT NULL,
  `payment_action` int(11) NOT NULL COMMENT '1: Full Payment, 2: Split Payment',
  `vt_status` int(11) NOT NULL COMMENT '0: Not Paid, 1: Paid',
  `status` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `service_jobs`
--

INSERT INTO `service_jobs` (`id`, `invoice_number`, `discount_percentage`, `discount_amt`, `subtotal_amt`, `tax_amt`, `grandtotal_amt`, `service_advisor_id`, `technician_id`, `customer_id`, `firstname`, `lastname`, `email`, `mobile`, `car_id`, `car_plate_number`, `mileage_before`, `mileage_after`, `created_user_id`, `created_datetime`, `updated_user_id`, `updated_datetime`, `ended_user_id`, `ended_datetime`, `invoice_user_id`, `invoice_datetime`, `payment_action`, `vt_status`, `status`) VALUES
(1, '', '', 0.00, 0.00, 0.00, 0.00, 3, 2, 1, 'Sher ', ' A K', 'sher.apac@gmail.com', '0596335191', 1, '23423', 16, 17, 3, '2017-12-12 16:35:26', 2, '2017-12-15 15:27:54', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, 0, 3);

-- --------------------------------------------------------

--
-- Table structure for table `service_job_defects`
--

CREATE TABLE `service_job_defects` (
  `id` int(11) NOT NULL,
  `service_job_id` int(11) NOT NULL,
  `defect_id` int(11) NOT NULL,
  `defect_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `remarks` longtext COLLATE utf8_unicode_ci NOT NULL,
  `started_user_id` int(11) NOT NULL,
  `started_datetime` datetime NOT NULL,
  `ended_user_id` int(11) NOT NULL,
  `ended_datetime` datetime NOT NULL,
  `status` int(11) NOT NULL COMMENT '0: Haven''t Check, 1: Checked'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `service_job_defects`
--

INSERT INTO `service_job_defects` (`id`, `service_job_id`, `defect_id`, `defect_name`, `remarks`, `started_user_id`, `started_datetime`, `ended_user_id`, `ended_datetime`, `status`) VALUES
(1, 1, 1, 'Tyres', 'aw', 2, '2017-12-15 15:27:33', 0, '0000-00-00 00:00:00', 1),
(2, 1, 2, 'Steering', 'a1', 2, '2017-12-15 15:27:33', 0, '0000-00-00 00:00:00', 1),
(3, 1, 3, 'Engine', 'a1', 2, '2017-12-15 15:27:33', 0, '0000-00-00 00:00:00', 1),
(4, 1, 4, 'Suspension', 'a1', 2, '2017-12-15 15:27:33', 0, '0000-00-00 00:00:00', 1),
(5, 1, 5, 'Battery', 'a1', 2, '2017-12-15 15:27:33', 0, '0000-00-00 00:00:00', 1),
(6, 1, 6, 'Others', 'a1', 2, '2017-12-15 15:27:33', 0, '0000-00-00 00:00:00', 1);

-- --------------------------------------------------------

--
-- Table structure for table `service_job_defects_material`
--

CREATE TABLE `service_job_defects_material` (
  `id` int(11) NOT NULL,
  `service_job_id` int(11) NOT NULL,
  `service_job_defects_id` int(11) NOT NULL,
  `material_id` int(11) NOT NULL,
  `material_sku` varchar(499) COLLATE utf8_unicode_ci NOT NULL,
  `material_name` varchar(499) COLLATE utf8_unicode_ci NOT NULL,
  `request_qty` int(11) NOT NULL,
  `issued_qty` int(11) NOT NULL,
  `cost` double(11,2) NOT NULL,
  `price` double(11,2) NOT NULL,
  `requested_user_id` int(11) NOT NULL,
  `requested_datetime` datetime NOT NULL,
  `issued_user_id` int(11) DEFAULT NULL,
  `issued_datetime` datetime DEFAULT NULL,
  `customer_approved` int(1) NOT NULL COMMENT '0: Nothing, 1: Approved, 2: Rejected by Customer',
  `status` int(1) NOT NULL COMMENT '0: Requested, 1: Issued'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `service_job_packages`
--

CREATE TABLE `service_job_packages` (
  `id` int(11) NOT NULL,
  `service_job_id` int(11) NOT NULL,
  `package_id` int(11) NOT NULL,
  `package_name` varchar(499) COLLATE utf8_unicode_ci NOT NULL,
  `package_price` double(11,2) NOT NULL,
  `package_type` int(11) NOT NULL COMMENT '1: Japan, 2: Continent',
  `discount_applicable` int(11) NOT NULL COMMENT '0: No, 1 : Yes',
  `started_user_id` int(11) NOT NULL,
  `started_datetime` datetime NOT NULL,
  `ended_user_id` int(11) NOT NULL,
  `ended_datetime` datetime NOT NULL,
  `status` int(11) NOT NULL COMMENT '0: Haven''t Check, 1: Checked'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `service_job_package_material`
--

CREATE TABLE `service_job_package_material` (
  `id` int(11) NOT NULL,
  `service_job_id` int(11) NOT NULL,
  `service_job_package_id` int(11) NOT NULL,
  `task_id` int(11) NOT NULL,
  `material_id` int(11) NOT NULL,
  `material_sku` varchar(499) COLLATE utf8_unicode_ci NOT NULL,
  `material_name` varchar(499) COLLATE utf8_unicode_ci NOT NULL,
  `request_qty` int(11) NOT NULL,
  `issued_qty` int(11) NOT NULL,
  `cost` double(11,2) NOT NULL,
  `price` double(11,2) NOT NULL,
  `requested_user_id` int(11) NOT NULL,
  `requested_datetime` datetime NOT NULL,
  `issued_user_id` int(11) NOT NULL,
  `issued_datetime` datetime NOT NULL,
  `request_approved` int(11) NOT NULL COMMENT '0: Nothing, 1: Approved, 2: Rejected by Service Advisor',
  `status` int(11) NOT NULL COMMENT '0: Requested, 1: Issued'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `service_job_payments`
--

CREATE TABLE `service_job_payments` (
  `id` int(11) NOT NULL,
  `service_job_id` int(11) NOT NULL,
  `invoice_numb` varchar(99) COLLATE utf8_unicode_ci NOT NULL,
  `payment_type_id` int(11) NOT NULL,
  `payment_type_name` varchar(99) COLLATE utf8_unicode_ci NOT NULL,
  `payment_amount` double(11,2) NOT NULL,
  `cheque_number` varchar(499) COLLATE utf8_unicode_ci NOT NULL,
  `created_user_id` int(11) NOT NULL,
  `created_datetime` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `service_job_status`
--

CREATE TABLE `service_job_status` (
  `id` int(11) NOT NULL,
  `name` varchar(499) COLLATE utf8_unicode_ci NOT NULL,
  `created_user_id` int(11) NOT NULL,
  `created_datetime` datetime NOT NULL,
  `updated_user_id` int(11) NOT NULL,
  `updated_datetime` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `service_job_status`
--

INSERT INTO `service_job_status` (`id`, `name`, `created_user_id`, `created_datetime`, `updated_user_id`, `updated_datetime`) VALUES
(1, 'Opened', 1, '2016-11-22 00:00:00', 0, '0000-00-00 00:00:00'),
(2, 'Started', 1, '2016-11-22 00:00:00', 0, '0000-00-00 00:00:00'),
(3, 'Request Inventory', 1, '2016-11-22 00:00:00', 0, '0000-00-00 00:00:00'),
(4, 'Drew out Inventory', 1, '2016-11-22 00:00:00', 0, '0000-00-00 00:00:00'),
(5, 'Completed', 1, '2016-11-22 00:00:00', 0, '0000-00-00 00:00:00'),
(6, 'Invoiced', 1, '2016-11-22 00:00:00', 0, '0000-00-00 00:00:00'),
(7, 'Closed', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `service_packages`
--

CREATE TABLE `service_packages` (
  `id` int(11) NOT NULL,
  `name` varchar(499) COLLATE utf8_unicode_ci NOT NULL,
  `description` longtext COLLATE utf8_unicode_ci NOT NULL,
  `price` double(11,2) NOT NULL,
  `car_make_type` int(11) NOT NULL COMMENT '1: Japanese & Korean, 2: Continental',
  `discount_applicable` int(11) NOT NULL COMMENT '0: No, 1: Yes',
  `created_user_id` int(11) NOT NULL,
  `created_datetime` datetime NOT NULL,
  `updated_user_id` int(11) NOT NULL,
  `updated_datetime` datetime NOT NULL,
  `status` int(1) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `service_package_tasks`
--

CREATE TABLE `service_package_tasks` (
  `id` int(11) NOT NULL,
  `service_package_id` int(11) NOT NULL,
  `task_id` int(11) NOT NULL,
  `created_user_id` int(11) NOT NULL,
  `created_datetime` datetime NOT NULL,
  `updated_user_id` int(11) NOT NULL,
  `updated_datetime` datetime NOT NULL,
  `status` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `site_setting`
--

CREATE TABLE `site_setting` (
  `id` int(11) NOT NULL,
  `site_name` varchar(499) COLLATE utf8_unicode_ci NOT NULL,
  `site_logo` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `address` longtext COLLATE utf8_unicode_ci NOT NULL,
  `telephone` varchar(499) COLLATE utf8_unicode_ci NOT NULL,
  `fax` varchar(499) COLLATE utf8_unicode_ci NOT NULL,
  `timezone` varchar(499) COLLATE utf8_unicode_ci NOT NULL,
  `pagination` int(11) NOT NULL,
  `tax` double(11,2) NOT NULL,
  `currency` char(3) COLLATE utf8_unicode_ci NOT NULL,
  `datetime_format` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `updated_user_id` int(11) NOT NULL,
  `updated_datetime` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `site_setting`
--

INSERT INTO `site_setting` (`id`, `site_name`, `site_logo`, `address`, `telephone`, `fax`, `timezone`, `pagination`, `tax`, `currency`, `datetime_format`, `updated_user_id`, `updated_datetime`) VALUES
(1, 'Tam Car Workshop System', 'logo.png', 'Upper Serangoon Road \r\n#01-123, Serangoon Central\r\nSingapore 123949', '61239878', '61239877', 'Asia/Singapore', 10, 7.00, 'SGD', 'd/m/Y', 1, '2017-12-08 12:35:07');

-- --------------------------------------------------------

--
-- Table structure for table `suppliers`
--

CREATE TABLE `suppliers` (
  `id` int(11) NOT NULL,
  `name` varchar(499) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(499) COLLATE utf8_unicode_ci NOT NULL,
  `telephone` varchar(90) COLLATE utf8_unicode_ci NOT NULL,
  `fax` varchar(90) COLLATE utf8_unicode_ci NOT NULL,
  `address` longtext COLLATE utf8_unicode_ci NOT NULL,
  `tax` double(11,2) NOT NULL,
  `created_user_id` int(11) NOT NULL,
  `created_datetime` datetime NOT NULL,
  `updated_user_id` int(11) NOT NULL,
  `updated_datetime` datetime NOT NULL,
  `status` int(1) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tasks`
--

CREATE TABLE `tasks` (
  `id` int(11) NOT NULL,
  `name` varchar(4999) COLLATE utf8_unicode_ci NOT NULL,
  `created_user_id` int(11) NOT NULL,
  `created_datetime` datetime NOT NULL,
  `updated_user_id` int(11) NOT NULL,
  `updated_datetime` datetime NOT NULL,
  `status` int(1) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `timezones`
--

CREATE TABLE `timezones` (
  `id` int(11) NOT NULL,
  `code` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `timezone` varchar(499) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `timezones`
--

INSERT INTO `timezones` (`id`, `code`, `timezone`) VALUES
(1, 'AD', 'Europe/Andorra'),
(2, 'AE', 'Asia/Dubai'),
(3, 'AF', 'Asia/Kabul'),
(4, 'AG', 'America/Antigua'),
(5, 'AI', 'America/Anguilla'),
(6, 'AL', 'Europe/Tirane'),
(7, 'AM', 'Asia/Yerevan'),
(8, 'AO', 'Africa/Luanda'),
(9, 'AQ', 'Antarctica/McMurdo'),
(10, 'AQ', 'Antarctica/Casey'),
(11, 'AQ', 'Antarctica/Davis'),
(12, 'AQ', 'Antarctica/DumontDUrville'),
(13, 'AQ', 'Antarctica/Mawson'),
(14, 'AQ', 'Antarctica/Palmer'),
(15, 'AQ', 'Antarctica/Rothera'),
(16, 'AQ', 'Antarctica/Syowa'),
(17, 'AQ', 'Antarctica/Troll'),
(18, 'AQ', 'Antarctica/Vostok'),
(19, 'AR', 'America/Argentina/Buenos_Aires'),
(20, 'AR', 'America/Argentina/Cordoba'),
(21, 'AR', 'America/Argentina/Salta'),
(22, 'AR', 'America/Argentina/Jujuy'),
(23, 'AR', 'America/Argentina/Tucuman'),
(24, 'AR', 'America/Argentina/Catamarca'),
(25, 'AR', 'America/Argentina/La_Rioja'),
(26, 'AR', 'America/Argentina/San_Juan'),
(27, 'AR', 'America/Argentina/Mendoza'),
(28, 'AR', 'America/Argentina/San_Luis'),
(29, 'AR', 'America/Argentina/Rio_Gallegos'),
(30, 'AR', 'America/Argentina/Ushuaia'),
(31, 'AS', 'Pacific/Pago_Pago'),
(32, 'AT', 'Europe/Vienna'),
(33, 'AU', 'Australia/Lord_Howe'),
(34, 'AU', 'Antarctica/Macquarie'),
(35, 'AU', 'Australia/Hobart'),
(36, 'AU', 'Australia/Currie'),
(37, 'AU', 'Australia/Melbourne'),
(38, 'AU', 'Australia/Sydney'),
(39, 'AU', 'Australia/Broken_Hill'),
(40, 'AU', 'Australia/Brisbane'),
(41, 'AU', 'Australia/Lindeman'),
(42, 'AU', 'Australia/Adelaide'),
(43, 'AU', 'Australia/Darwin'),
(44, 'AU', 'Australia/Perth'),
(45, 'AU', 'Australia/Eucla'),
(46, 'AW', 'America/Aruba'),
(47, 'AX', 'Europe/Mariehamn'),
(48, 'AZ', 'Asia/Baku'),
(49, 'BA', 'Europe/Sarajevo'),
(50, 'BB', 'America/Barbados'),
(51, 'BD', 'Asia/Dhaka'),
(52, 'BE', 'Europe/Brussels'),
(53, 'BF', 'Africa/Ouagadougou'),
(54, 'BG', 'Europe/Sofia'),
(55, 'BH', 'Asia/Bahrain'),
(56, 'BI', 'Africa/Bujumbura'),
(57, 'BJ', 'Africa/Porto-Novo'),
(58, 'BL', 'America/St_Barthelemy'),
(59, 'BM', 'Atlantic/Bermuda'),
(60, 'BN', 'Asia/Brunei'),
(61, 'BO', 'America/La_Paz'),
(62, 'BQ', 'America/Kralendijk'),
(63, 'BR', 'America/Noronha'),
(64, 'BR', 'America/Belem'),
(65, 'BR', 'America/Fortaleza'),
(66, 'BR', 'America/Recife'),
(67, 'BR', 'America/Araguaina'),
(68, 'BR', 'America/Maceio'),
(69, 'BR', 'America/Bahia'),
(70, 'BR', 'America/Sao_Paulo'),
(71, 'BR', 'America/Campo_Grande'),
(72, 'BR', 'America/Cuiaba'),
(73, 'BR', 'America/Santarem'),
(74, 'BR', 'America/Porto_Velho'),
(75, 'BR', 'America/Boa_Vista'),
(76, 'BR', 'America/Manaus'),
(77, 'BR', 'America/Eirunepe'),
(78, 'BR', 'America/Rio_Branco'),
(79, 'BS', 'America/Nassau'),
(80, 'BT', 'Asia/Thimphu'),
(81, 'BW', 'Africa/Gaborone'),
(82, 'BY', 'Europe/Minsk'),
(83, 'BZ', 'America/Belize'),
(84, 'CA', 'America/St_Johns'),
(85, 'CA', 'America/Halifax'),
(86, 'CA', 'America/Glace_Bay'),
(87, 'CA', 'America/Moncton'),
(88, 'CA', 'America/Goose_Bay'),
(89, 'CA', 'America/Blanc-Sablon'),
(90, 'CA', 'America/Toronto'),
(91, 'CA', 'America/Nipigon'),
(92, 'CA', 'America/Thunder_Bay'),
(93, 'CA', 'America/Iqaluit'),
(94, 'CA', 'America/Pangnirtung'),
(95, 'CA', 'America/Atikokan'),
(96, 'CA', 'America/Winnipeg'),
(97, 'CA', 'America/Rainy_River'),
(98, 'CA', 'America/Resolute'),
(99, 'CA', 'America/Rankin_Inlet'),
(100, 'CA', 'America/Regina'),
(101, 'CA', 'America/Swift_Current'),
(102, 'CA', 'America/Edmonton'),
(103, 'CA', 'America/Cambridge_Bay'),
(104, 'CA', 'America/Yellowknife'),
(105, 'CA', 'America/Inuvik'),
(106, 'CA', 'America/Creston'),
(107, 'CA', 'America/Dawson_Creek'),
(108, 'CA', 'America/Fort_Nelson'),
(109, 'CA', 'America/Vancouver'),
(110, 'CA', 'America/Whitehorse'),
(111, 'CA', 'America/Dawson'),
(112, 'CC', 'Indian/Cocos'),
(113, 'CD', 'Africa/Kinshasa'),
(114, 'CD', 'Africa/Lubumbashi'),
(115, 'CF', 'Africa/Bangui'),
(116, 'CG', 'Africa/Brazzaville'),
(117, 'CH', 'Europe/Zurich'),
(118, 'CI', 'Africa/Abidjan'),
(119, 'CK', 'Pacific/Rarotonga'),
(120, 'CL', 'America/Santiago'),
(121, 'CL', 'Pacific/Easter'),
(122, 'CM', 'Africa/Douala'),
(123, 'CN', 'Asia/Shanghai'),
(124, 'CN', 'Asia/Urumqi'),
(125, 'CO', 'America/Bogota'),
(126, 'CR', 'America/Costa_Rica'),
(127, 'CU', 'America/Havana'),
(128, 'CV', 'Atlantic/Cape_Verde'),
(129, 'CW', 'America/Curacao'),
(130, 'CX', 'Indian/Christmas'),
(131, 'CY', 'Asia/Nicosia'),
(132, 'CZ', 'Europe/Prague'),
(133, 'DE', 'Europe/Berlin'),
(134, 'DE', 'Europe/Busingen'),
(135, 'DJ', 'Africa/Djibouti'),
(136, 'DK', 'Europe/Copenhagen'),
(137, 'DM', 'America/Dominica'),
(138, 'DO', 'America/Santo_Domingo'),
(139, 'DZ', 'Africa/Algiers'),
(140, 'EC', 'America/Guayaquil'),
(141, 'EC', 'Pacific/Galapagos'),
(142, 'EE', 'Europe/Tallinn'),
(143, 'EG', 'Africa/Cairo'),
(144, 'EH', 'Africa/El_Aaiun'),
(145, 'ER', 'Africa/Asmara'),
(146, 'ES', 'Europe/Madrid'),
(147, 'ES', 'Africa/Ceuta'),
(148, 'ES', 'Atlantic/Canary'),
(149, 'ET', 'Africa/Addis_Ababa'),
(150, 'FI', 'Europe/Helsinki'),
(151, 'FJ', 'Pacific/Fiji'),
(152, 'FK', 'Atlantic/Stanley'),
(153, 'FM', 'Pacific/Chuuk'),
(154, 'FM', 'Pacific/Pohnpei'),
(155, 'FM', 'Pacific/Kosrae'),
(156, 'FO', 'Atlantic/Faroe'),
(157, 'FR', 'Europe/Paris'),
(158, 'GA', 'Africa/Libreville'),
(159, 'GB', 'Europe/London'),
(160, 'GD', 'America/Grenada'),
(161, 'GE', 'Asia/Tbilisi'),
(162, 'GF', 'America/Cayenne'),
(163, 'GG', 'Europe/Guernsey'),
(164, 'GH', 'Africa/Accra'),
(165, 'GI', 'Europe/Gibraltar'),
(166, 'GL', 'America/Godthab'),
(167, 'GL', 'America/Danmarkshavn'),
(168, 'GL', 'America/Scoresbysund'),
(169, 'GL', 'America/Thule'),
(170, 'GM', 'Africa/Banjul'),
(171, 'GN', 'Africa/Conakry'),
(172, 'GP', 'America/Guadeloupe'),
(173, 'GQ', 'Africa/Malabo'),
(174, 'GR', 'Europe/Athens'),
(175, 'GS', 'Atlantic/South_Georgia'),
(176, 'GT', 'America/Guatemala'),
(177, 'GU', 'Pacific/Guam'),
(178, 'GW', 'Africa/Bissau'),
(179, 'GY', 'America/Guyana'),
(180, 'HK', 'Asia/Hong_Kong'),
(181, 'HN', 'America/Tegucigalpa'),
(182, 'HR', 'Europe/Zagreb'),
(183, 'HT', 'America/Port-au-Prince'),
(184, 'HU', 'Europe/Budapest'),
(185, 'ID', 'Asia/Jakarta'),
(186, 'ID', 'Asia/Pontianak'),
(187, 'ID', 'Asia/Makassar'),
(188, 'ID', 'Asia/Jayapura'),
(189, 'IE', 'Europe/Dublin'),
(190, 'IL', 'Asia/Jerusalem'),
(191, 'IM', 'Europe/Isle_of_Man'),
(192, 'IN', 'Asia/Kolkata'),
(193, 'IO', 'Indian/Chagos'),
(194, 'IQ', 'Asia/Baghdad'),
(195, 'IR', 'Asia/Tehran'),
(196, 'IS', 'Atlantic/Reykjavik'),
(197, 'IT', 'Europe/Rome'),
(198, 'JE', 'Europe/Jersey'),
(199, 'JM', 'America/Jamaica'),
(200, 'JO', 'Asia/Amman'),
(201, 'JP', 'Asia/Tokyo'),
(202, 'KE', 'Africa/Nairobi'),
(203, 'KG', 'Asia/Bishkek'),
(204, 'KH', 'Asia/Phnom_Penh'),
(205, 'KI', 'Pacific/Tarawa'),
(206, 'KI', 'Pacific/Enderbury'),
(207, 'KI', 'Pacific/Kiritimati'),
(208, 'KM', 'Indian/Comoro'),
(209, 'KN', 'America/St_Kitts'),
(210, 'KP', 'Asia/Pyongyang'),
(211, 'KR', 'Asia/Seoul'),
(212, 'KW', 'Asia/Kuwait'),
(213, 'KY', 'America/Cayman'),
(214, 'KZ', 'Asia/Almaty'),
(215, 'KZ', 'Asia/Qyzylorda'),
(216, 'KZ', 'Asia/Aqtobe'),
(217, 'KZ', 'Asia/Aqtau'),
(218, 'KZ', 'Asia/Oral'),
(219, 'LA', 'Asia/Vientiane'),
(220, 'LB', 'Asia/Beirut'),
(221, 'LC', 'America/St_Lucia'),
(222, 'LI', 'Europe/Vaduz'),
(223, 'LK', 'Asia/Colombo'),
(224, 'LR', 'Africa/Monrovia'),
(225, 'LS', 'Africa/Maseru'),
(226, 'LT', 'Europe/Vilnius'),
(227, 'LU', 'Europe/Luxembourg'),
(228, 'LV', 'Europe/Riga'),
(229, 'LY', 'Africa/Tripoli'),
(230, 'MA', 'Africa/Casablanca'),
(231, 'MC', 'Europe/Monaco'),
(232, 'MD', 'Europe/Chisinau'),
(233, 'ME', 'Europe/Podgorica'),
(234, 'MF', 'America/Marigot'),
(235, 'MG', 'Indian/Antananarivo'),
(236, 'MH', 'Pacific/Majuro'),
(237, 'MH', 'Pacific/Kwajalein'),
(238, 'MK', 'Europe/Skopje'),
(239, 'ML', 'Africa/Bamako'),
(240, 'MM', 'Asia/Rangoon'),
(241, 'MN', 'Asia/Ulaanbaatar'),
(242, 'MN', 'Asia/Hovd'),
(243, 'MN', 'Asia/Choibalsan'),
(244, 'MO', 'Asia/Macau'),
(245, 'MP', 'Pacific/Saipan'),
(246, 'MQ', 'America/Martinique'),
(247, 'MR', 'Africa/Nouakchott'),
(248, 'MS', 'America/Montserrat'),
(249, 'MT', 'Europe/Malta'),
(250, 'MU', 'Indian/Mauritius'),
(251, 'MV', 'Indian/Maldives'),
(252, 'MW', 'Africa/Blantyre'),
(253, 'MX', 'America/Mexico_City'),
(254, 'MX', 'America/Cancun'),
(255, 'MX', 'America/Merida'),
(256, 'MX', 'America/Monterrey'),
(257, 'MX', 'America/Matamoros'),
(258, 'MX', 'America/Mazatlan'),
(259, 'MX', 'America/Chihuahua'),
(260, 'MX', 'America/Ojinaga'),
(261, 'MX', 'America/Hermosillo'),
(262, 'MX', 'America/Tijuana'),
(263, 'MX', 'America/Bahia_Banderas'),
(264, 'MY', 'Asia/Kuala_Lumpur'),
(265, 'MY', 'Asia/Kuching'),
(266, 'MZ', 'Africa/Maputo'),
(267, 'NA', 'Africa/Windhoek'),
(268, 'NC', 'Pacific/Noumea'),
(269, 'NE', 'Africa/Niamey'),
(270, 'NF', 'Pacific/Norfolk'),
(271, 'NG', 'Africa/Lagos'),
(272, 'NI', 'America/Managua'),
(273, 'NL', 'Europe/Amsterdam'),
(274, 'NO', 'Europe/Oslo'),
(275, 'NP', 'Asia/Kathmandu'),
(276, 'NR', 'Pacific/Nauru'),
(277, 'NU', 'Pacific/Niue'),
(278, 'NZ', 'Pacific/Auckland'),
(279, 'NZ', 'Pacific/Chatham'),
(280, 'OM', 'Asia/Muscat'),
(281, 'PA', 'America/Panama'),
(282, 'PE', 'America/Lima'),
(283, 'PF', 'Pacific/Tahiti'),
(284, 'PF', 'Pacific/Marquesas'),
(285, 'PF', 'Pacific/Gambier'),
(286, 'PG', 'Pacific/Port_Moresby'),
(287, 'PG', 'Pacific/Bougainville'),
(288, 'PH', 'Asia/Manila'),
(289, 'PK', 'Asia/Karachi'),
(290, 'PL', 'Europe/Warsaw'),
(291, 'PM', 'America/Miquelon'),
(292, 'PN', 'Pacific/Pitcairn'),
(293, 'PR', 'America/Puerto_Rico'),
(294, 'PS', 'Asia/Gaza'),
(295, 'PS', 'Asia/Hebron'),
(296, 'PT', 'Europe/Lisbon'),
(297, 'PT', 'Atlantic/Madeira'),
(298, 'PT', 'Atlantic/Azores'),
(299, 'PW', 'Pacific/Palau'),
(300, 'PY', 'America/Asuncion'),
(301, 'QA', 'Asia/Qatar'),
(302, 'RE', 'Indian/Reunion'),
(303, 'RO', 'Europe/Bucharest'),
(304, 'RS', 'Europe/Belgrade'),
(305, 'RU', 'Europe/Kaliningrad'),
(306, 'RU', 'Europe/Moscow'),
(307, 'RU', 'Europe/Simferopol'),
(308, 'RU', 'Europe/Volgograd'),
(309, 'RU', 'Europe/Kirov'),
(310, 'RU', 'Europe/Astrakhan'),
(311, 'RU', 'Europe/Samara'),
(312, 'RU', 'Europe/Ulyanovsk'),
(313, 'RU', 'Asia/Yekaterinburg'),
(314, 'RU', 'Asia/Omsk'),
(315, 'RU', 'Asia/Novosibirsk'),
(316, 'RU', 'Asia/Barnaul'),
(317, 'RU', 'Asia/Tomsk'),
(318, 'RU', 'Asia/Novokuznetsk'),
(319, 'RU', 'Asia/Krasnoyarsk'),
(320, 'RU', 'Asia/Irkutsk'),
(321, 'RU', 'Asia/Chita'),
(322, 'RU', 'Asia/Yakutsk'),
(323, 'RU', 'Asia/Khandyga'),
(324, 'RU', 'Asia/Vladivostok'),
(325, 'RU', 'Asia/Ust-Nera'),
(326, 'RU', 'Asia/Magadan'),
(327, 'RU', 'Asia/Sakhalin'),
(328, 'RU', 'Asia/Srednekolymsk'),
(329, 'RU', 'Asia/Kamchatka'),
(330, 'RU', 'Asia/Anadyr'),
(331, 'RW', 'Africa/Kigali'),
(332, 'SA', 'Asia/Riyadh'),
(333, 'SB', 'Pacific/Guadalcanal'),
(334, 'SC', 'Indian/Mahe'),
(335, 'SD', 'Africa/Khartoum'),
(336, 'SE', 'Europe/Stockholm'),
(337, 'SG', 'Asia/Singapore'),
(338, 'SH', 'Atlantic/St_Helena'),
(339, 'SI', 'Europe/Ljubljana'),
(340, 'SJ', 'Arctic/Longyearbyen'),
(341, 'SK', 'Europe/Bratislava'),
(342, 'SL', 'Africa/Freetown'),
(343, 'SM', 'Europe/San_Marino'),
(344, 'SN', 'Africa/Dakar'),
(345, 'SO', 'Africa/Mogadishu'),
(346, 'SR', 'America/Paramaribo'),
(347, 'SS', 'Africa/Juba'),
(348, 'ST', 'Africa/Sao_Tome'),
(349, 'SV', 'America/El_Salvador'),
(350, 'SX', 'America/Lower_Princes'),
(351, 'SY', 'Asia/Damascus'),
(352, 'SZ', 'Africa/Mbabane'),
(353, 'TC', 'America/Grand_Turk'),
(354, 'TD', 'Africa/Ndjamena'),
(355, 'TF', 'Indian/Kerguelen'),
(356, 'TG', 'Africa/Lome'),
(357, 'TH', 'Asia/Bangkok'),
(358, 'TJ', 'Asia/Dushanbe'),
(359, 'TK', 'Pacific/Fakaofo'),
(360, 'TL', 'Asia/Dili'),
(361, 'TM', 'Asia/Ashgabat'),
(362, 'TN', 'Africa/Tunis'),
(363, 'TO', 'Pacific/Tongatapu'),
(364, 'TR', 'Europe/Istanbul'),
(365, 'TT', 'America/Port_of_Spain'),
(366, 'TV', 'Pacific/Funafuti'),
(367, 'TW', 'Asia/Taipei'),
(368, 'TZ', 'Africa/Dar_es_Salaam'),
(369, 'UA', 'Europe/Kiev'),
(370, 'UA', 'Europe/Uzhgorod'),
(371, 'UA', 'Europe/Zaporozhye'),
(372, 'UG', 'Africa/Kampala'),
(373, 'UM', 'Pacific/Johnston'),
(374, 'UM', 'Pacific/Midway'),
(375, 'UM', 'Pacific/Wake'),
(376, 'US', 'America/New_York'),
(377, 'US', 'America/Detroit'),
(378, 'US', 'America/Kentucky/Louisville'),
(379, 'US', 'America/Kentucky/Monticello'),
(380, 'US', 'America/Indiana/Indianapolis'),
(381, 'US', 'America/Indiana/Vincennes'),
(382, 'US', 'America/Indiana/Winamac'),
(383, 'US', 'America/Indiana/Marengo'),
(384, 'US', 'America/Indiana/Petersburg'),
(385, 'US', 'America/Indiana/Vevay'),
(386, 'US', 'America/Chicago'),
(387, 'US', 'America/Indiana/Tell_City'),
(388, 'US', 'America/Indiana/Knox'),
(389, 'US', 'America/Menominee'),
(390, 'US', 'America/North_Dakota/Center'),
(391, 'US', 'America/North_Dakota/New_Salem'),
(392, 'US', 'America/North_Dakota/Beulah'),
(393, 'US', 'America/Denver'),
(394, 'US', 'America/Boise'),
(395, 'US', 'America/Phoenix'),
(396, 'US', 'America/Los_Angeles'),
(397, 'US', 'America/Anchorage'),
(398, 'US', 'America/Juneau'),
(399, 'US', 'America/Sitka'),
(400, 'US', 'America/Metlakatla'),
(401, 'US', 'America/Yakutat'),
(402, 'US', 'America/Nome'),
(403, 'US', 'America/Adak'),
(404, 'US', 'Pacific/Honolulu'),
(405, 'UY', 'America/Montevideo'),
(406, 'UZ', 'Asia/Samarkand'),
(407, 'UZ', 'Asia/Tashkent'),
(408, 'VA', 'Europe/Vatican'),
(409, 'VC', 'America/St_Vincent'),
(410, 'VE', 'America/Caracas'),
(411, 'VG', 'America/Tortola'),
(412, 'VI', 'America/St_Thomas'),
(413, 'VN', 'Asia/Ho_Chi_Minh'),
(414, 'VU', 'Pacific/Efate'),
(415, 'WF', 'Pacific/Wallis'),
(416, 'WS', 'Pacific/Apia'),
(417, 'YE', 'Asia/Aden'),
(418, 'YT', 'Indian/Mayotte'),
(419, 'ZA', 'Africa/Johannesburg'),
(420, 'ZM', 'Africa/Lusaka'),
(421, 'ZW', 'Africa/Harare');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `fullname` varchar(499) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(499) COLLATE utf8_unicode_ci NOT NULL,
  `role_id` int(11) NOT NULL,
  `created_user_id` int(11) NOT NULL,
  `created_datetime` datetime NOT NULL,
  `updated_user_id` int(11) NOT NULL,
  `updated_datetime` datetime NOT NULL,
  `status` int(1) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `fullname`, `email`, `password`, `role_id`, `created_user_id`, `created_datetime`, `updated_user_id`, `updated_datetime`, `status`) VALUES
(1, 'Owner', 'owner@gmail.com', '5f4dcc3b5aa765d61d8327deb882cf99', 1, 1, '2017-03-05 00:00:00', 1, '2017-03-05 18:10:46', 1),
(2, 'Technician', 'technician@gmail.com', '5f4dcc3b5aa765d61d8327deb882cf99', 3, 1, '2017-03-05 12:53:28', 1, '2017-03-05 18:11:57', 1),
(3, 'Advisor', 'advisor@gmail.com', '5f4dcc3b5aa765d61d8327deb882cf99', 2, 1, '2017-03-05 12:54:28', 1, '2017-03-05 18:11:46', 1);

-- --------------------------------------------------------

--
-- Table structure for table `user_roles`
--

CREATE TABLE `user_roles` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_user_id` int(11) NOT NULL,
  `created_datetime` datetime NOT NULL,
  `updated_user_id` int(11) NOT NULL,
  `updated_datetime` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `user_roles`
--

INSERT INTO `user_roles` (`id`, `name`, `created_user_id`, `created_datetime`, `updated_user_id`, `updated_datetime`) VALUES
(1, 'Administrator', 1, '2016-11-05 00:00:00', 0, '0000-00-00 00:00:00'),
(2, 'Service Advisor', 1, '2016-11-05 00:00:00', 0, '0000-00-00 00:00:00'),
(3, 'Technician', 1, '2016-11-05 00:00:00', 0, '0000-00-00 00:00:00');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cars`
--
ALTER TABLE `cars`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `car_make`
--
ALTER TABLE `car_make`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ci_sessions`
--
ALTER TABLE `ci_sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `ci_sessions_timestamp` (`timestamp`);

--
-- Indexes for table `countries`
--
ALTER TABLE `countries`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `idx_code` (`code`) USING BTREE;

--
-- Indexes for table `currency`
--
ALTER TABLE `currency`
  ADD PRIMARY KEY (`iso`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indexes for table `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `customer_groups`
--
ALTER TABLE `customer_groups`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `defects`
--
ALTER TABLE `defects`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `inventory`
--
ALTER TABLE `inventory`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `inventory_updated_logs`
--
ALTER TABLE `inventory_updated_logs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `materials`
--
ALTER TABLE `materials`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `material_type`
--
ALTER TABLE `material_type`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `payment_method`
--
ALTER TABLE `payment_method`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `purchase_order`
--
ALTER TABLE `purchase_order`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `purchase_order_items`
--
ALTER TABLE `purchase_order_items`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `purchase_order_status`
--
ALTER TABLE `purchase_order_status`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `service_jobs`
--
ALTER TABLE `service_jobs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `service_job_defects`
--
ALTER TABLE `service_job_defects`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `service_job_defects_material`
--
ALTER TABLE `service_job_defects_material`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `service_job_packages`
--
ALTER TABLE `service_job_packages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `service_job_package_material`
--
ALTER TABLE `service_job_package_material`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `service_job_payments`
--
ALTER TABLE `service_job_payments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `service_job_status`
--
ALTER TABLE `service_job_status`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `service_packages`
--
ALTER TABLE `service_packages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `service_package_tasks`
--
ALTER TABLE `service_package_tasks`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `site_setting`
--
ALTER TABLE `site_setting`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `suppliers`
--
ALTER TABLE `suppliers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tasks`
--
ALTER TABLE `tasks`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `timezones`
--
ALTER TABLE `timezones`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_roles`
--
ALTER TABLE `user_roles`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `cars`
--
ALTER TABLE `cars`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `car_make`
--
ALTER TABLE `car_make`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=50;
--
-- AUTO_INCREMENT for table `countries`
--
ALTER TABLE `countries`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=247;
--
-- AUTO_INCREMENT for table `customers`
--
ALTER TABLE `customers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `customer_groups`
--
ALTER TABLE `customer_groups`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `defects`
--
ALTER TABLE `defects`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `inventory`
--
ALTER TABLE `inventory`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `inventory_updated_logs`
--
ALTER TABLE `inventory_updated_logs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `materials`
--
ALTER TABLE `materials`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `material_type`
--
ALTER TABLE `material_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `payment_method`
--
ALTER TABLE `payment_method`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `purchase_order`
--
ALTER TABLE `purchase_order`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `purchase_order_items`
--
ALTER TABLE `purchase_order_items`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `purchase_order_status`
--
ALTER TABLE `purchase_order_status`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `service_jobs`
--
ALTER TABLE `service_jobs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `service_job_defects`
--
ALTER TABLE `service_job_defects`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `service_job_defects_material`
--
ALTER TABLE `service_job_defects_material`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `service_job_packages`
--
ALTER TABLE `service_job_packages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `service_job_package_material`
--
ALTER TABLE `service_job_package_material`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `service_job_payments`
--
ALTER TABLE `service_job_payments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `service_job_status`
--
ALTER TABLE `service_job_status`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `service_packages`
--
ALTER TABLE `service_packages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `service_package_tasks`
--
ALTER TABLE `service_package_tasks`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `site_setting`
--
ALTER TABLE `site_setting`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `suppliers`
--
ALTER TABLE `suppliers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `tasks`
--
ALTER TABLE `tasks`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `timezones`
--
ALTER TABLE `timezones`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=422;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `user_roles`
--
ALTER TABLE `user_roles`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
