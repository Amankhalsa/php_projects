-- phpMyAdmin SQL Dump
-- version 4.7.3
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Feb 02, 2018 at 11:09 PM
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
-- Database: `tammanag_onlinequiz`
--

-- --------------------------------------------------------

--
-- Table structure for table `advertisement`
--

CREATE TABLE `advertisement` (
  `add_id` int(11) NOT NULL,
  `add_position` varchar(255) DEFAULT NULL,
  `add_code` text,
  `add_status` int(11) DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `advertisement`
--

INSERT INTO `advertisement` (`add_id`, `add_position`, `add_code`, `add_status`) VALUES
(1, 'Left Ads', '<a href=\"\" target=\"_blank\"><img src=\"http://quiz.bdtask.com/demo/my-assets/images/add_image/ac71240c468d5c2525423f30c5669291.png\" alt=\"\" class=\"img-responsive center-block\"></a>', 1);

-- --------------------------------------------------------

--
-- Table structure for table `answer_sheet`
--

CREATE TABLE `answer_sheet` (
  `answer_id` int(11) NOT NULL,
  `question_id` int(11) NOT NULL,
  `answer_option_id` int(11) NOT NULL,
  `partial_answer` varchar(255) CHARACTER SET latin1 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `answer_sheet`
--

INSERT INTO `answer_sheet` (`answer_id`, `question_id`, `answer_option_id`, `partial_answer`) VALUES
(1, 1, 2, ''),
(2, 2, 11, ''),
(3, 3, 17, ''),
(4, 4, 20, ''),
(5, 5, 29, ''),
(6, 5, 30, ''),
(7, 6, 34, ''),
(8, 7, 36, ''),
(22, 20, 89, ''),
(32, 29, 126, ''),
(34, 28, 121, ''),
(35, 27, 116, ''),
(38, 26, 112, ''),
(39, 25, 111, ''),
(40, 24, 106, ''),
(41, 8, 39, ''),
(42, 9, 47, ''),
(43, 10, 49, ''),
(45, 11, 51, ''),
(46, 12, 57, ''),
(47, 13, 60, ''),
(48, 13, 62, ''),
(49, 14, 64, ''),
(50, 15, 69, ''),
(51, 16, 75, ''),
(52, 17, 79, ''),
(53, 18, 82, ''),
(54, 19, 84, ''),
(55, 21, 95, ''),
(56, 22, 96, ''),
(57, 23, 101, '');

-- --------------------------------------------------------

--
-- Table structure for table `ci_sessions`
--

CREATE TABLE `ci_sessions` (
  `id` varchar(128) NOT NULL,
  `ip_address` varchar(45) NOT NULL,
  `timestamp` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `data` blob NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ci_sessions`
--

INSERT INTO `ci_sessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES
('839e5dc2f695622f1c1c5688b661310540c68798', '118.179.160.126', 1488117187, 0x5f5f63695f6c6173745f726567656e65726174657c693a313438383131363839303b4642524c485f73746174657c733a33323a226131653361316636323339343434316166636537643766343734636338633534223b757365725f69647c733a313a2231223b757365725f6e616d657c733a31353a2261646d696e4061646d696e2e636f6d223b75736572747970657c733a31313a2273757065725f61646d696e223b66756c6c5f6e616d657c733a353a2241646d696e223b696d6167657c733a35343a22687474703a2f2f646f776e6c6f61646c6c632e636f6d2f6d6f64656c2f6d792d6173736574732f696d616765732f757365722e706e67223b6c6f676765645f696e7c623a313b6578616d5f72656c617465645f646174617c613a353a7b733a31333a226d6f64656c5f746573745f6964223b733a313a2236223b733a31353a226d6f64656c5f746573745f6e616d65223b733a32313a224578636c7573697665204d6f64656c205465737420223b733a31343a226e6f5f6f665f7175657374696f6e223b733a313a2233223b733a373a226578616d5f6964223b693a31323b733a31393a226d6f64656c5f746573745f6475726174696f6e223b733a383a2230313a30303a3030223b7d6578616d5f646174617c613a343a7b733a31373a226578616d5f7175657374696f6e5f696473223b613a333a7b693a303b733a323a223234223b693a313b733a323a223235223b693a323b733a323a223239223b7d733a31333a2263757272656e745f696e646578223b693a323b733a31303a226c6173745f696e646578223b693a323b733a31353a226578616d5f73746172745f74696d65223b733a383a2231323a35353a3239223b7d726573756c745f646174617c613a333a7b693a303b613a323a7b733a31313a227175657374696f6e5f6964223b733a323a223234223b733a31303a226f7074696f6e5f696473223b613a313a7b693a303b733a333a22313035223b7d7d693a313b613a323a7b733a31313a227175657374696f6e5f6964223b733a323a223235223b733a31303a226f7074696f6e5f696473223b613a313a7b693a303b733a333a22313039223b7d7d693a323b613a323a7b733a31313a227175657374696f6e5f6964223b733a323a223239223b733a31303a226f7074696f6e5f696473223b613a313a7b693a303b733a333a22313234223b7d7d7d6578616d5f69647c693a31323b),
('6db46a8d6aebe38e46a11b8c2d5bee4426f6933b', '118.179.160.126', 1488117042, 0x5f5f63695f6c6173745f726567656e65726174657c693a313438383131373034323b4642524c485f73746174657c733a33323a226665336362623434306332616663616534386138313036666662316264366566223b757365725f69647c733a313a2231223b757365725f6e616d657c733a31353a2261646d696e4061646d696e2e636f6d223b75736572747970657c733a31313a2273757065725f61646d696e223b66756c6c5f6e616d657c733a353a2241646d696e223b696d6167657c733a35343a22687474703a2f2f646f776e6c6f61646c6c632e636f6d2f6d6f64656c2f6d792d6173736574732f696d616765732f757365722e706e67223b6c6f676765645f696e7c623a313b6578616d5f72656c617465645f646174617c613a343a7b733a393a22636f757273655f6964223b733a313a2231223b733a31313a22636f757273655f6e616d65223b733a31353a2247656e6572616c20536369656e6365223b733a31343a226e6f5f6f665f7175657374696f6e223b733a313a2237223b733a373a226578616d5f6964223b693a32363b7d6578616d5f646174617c613a343a7b733a31373a226578616d5f7175657374696f6e5f696473223b613a323a7b693a303b733a323a223237223b693a313b733a323a223238223b7d733a31333a2263757272656e745f696e646578223b693a313b733a31303a226c6173745f696e646578223b693a313b733a31353a226578616d5f73746172745f74696d65223b733a383a2231323a32343a3333223b7d6578616d5f69647c693a32363b726573756c745f646174617c613a323a7b693a303b613a323a7b733a31313a227175657374696f6e5f6964223b733a323a223237223b733a31303a226f7074696f6e5f696473223b613a313a7b693a303b733a333a22313137223b7d7d693a313b613a323a7b733a31313a227175657374696f6e5f6964223b733a323a223238223b733a31303a226f7074696f6e5f696473223b613a313a7b693a303b733a333a22313139223b7d7d7d),
('b5b2dfaceea31de2c37950899330238e437b25ac', '118.179.160.126', 1488117244, 0x5f5f63695f6c6173745f726567656e65726174657c693a313438383131373233353b4642524c485f73746174657c733a33323a226131653361316636323339343434316166636537643766343734636338633534223b757365725f69647c733a313a2231223b757365725f6e616d657c733a31353a2261646d696e4061646d696e2e636f6d223b75736572747970657c733a31313a2273757065725f61646d696e223b66756c6c5f6e616d657c733a353a2241646d696e223b696d6167657c733a35343a22687474703a2f2f646f776e6c6f61646c6c632e636f6d2f6d6f64656c2f6d792d6173736574732f696d616765732f757365722e706e67223b6c6f676765645f696e7c623a313b6578616d5f72656c617465645f646174617c613a353a7b733a31333a226d6f64656c5f746573745f6964223b733a313a2236223b733a31353a226d6f64656c5f746573745f6e616d65223b733a32313a224578636c7573697665204d6f64656c205465737420223b733a31343a226e6f5f6f665f7175657374696f6e223b733a313a2233223b733a373a226578616d5f6964223b693a31323b733a31393a226d6f64656c5f746573745f6475726174696f6e223b733a383a2230313a30303a3030223b7d6578616d5f646174617c613a343a7b733a31373a226578616d5f7175657374696f6e5f696473223b613a333a7b693a303b733a323a223234223b693a313b733a323a223235223b693a323b733a323a223239223b7d733a31333a2263757272656e745f696e646578223b693a323b733a31303a226c6173745f696e646578223b693a323b733a31353a226578616d5f73746172745f74696d65223b733a383a2231323a35353a3239223b7d726573756c745f646174617c613a333a7b693a303b613a323a7b733a31313a227175657374696f6e5f6964223b733a323a223234223b733a31303a226f7074696f6e5f696473223b613a313a7b693a303b733a333a22313035223b7d7d693a313b613a323a7b733a31313a227175657374696f6e5f6964223b733a323a223235223b733a31303a226f7074696f6e5f696473223b613a313a7b693a303b733a333a22313039223b7d7d693a323b613a323a7b733a31313a227175657374696f6e5f6964223b733a323a223239223b733a31303a226f7074696f6e5f696473223b613a313a7b693a303b733a333a22313234223b7d7d7d6578616d5f69647c693a31323b),
('15a3c3c745e139860beec629d5d3cc845f3c5252', '118.179.160.126', 1488119120, 0x5f5f63695f6c6173745f726567656e65726174657c693a313438383131393131393b4642524c485f73746174657c733a33323a226131653361316636323339343434316166636537643766343734636338633534223b757365725f69647c733a313a2231223b757365725f6e616d657c733a31353a2261646d696e4061646d696e2e636f6d223b75736572747970657c733a31313a2273757065725f61646d696e223b66756c6c5f6e616d657c733a353a2241646d696e223b696d6167657c733a35343a22687474703a2f2f646f776e6c6f61646c6c632e636f6d2f6d6f64656c2f6d792d6173736574732f696d616765732f757365722e706e67223b6c6f676765645f696e7c623a313b6578616d5f72656c617465645f646174617c613a353a7b733a31333a226d6f64656c5f746573745f6964223b733a313a2236223b733a31353a226d6f64656c5f746573745f6e616d65223b733a32313a224578636c7573697665204d6f64656c205465737420223b733a31343a226e6f5f6f665f7175657374696f6e223b733a313a2233223b733a373a226578616d5f6964223b693a31323b733a31393a226d6f64656c5f746573745f6475726174696f6e223b733a383a2230313a30303a3030223b7d6578616d5f646174617c613a343a7b733a31373a226578616d5f7175657374696f6e5f696473223b613a333a7b693a303b733a323a223234223b693a313b733a323a223235223b693a323b733a323a223239223b7d733a31333a2263757272656e745f696e646578223b693a323b733a31303a226c6173745f696e646578223b693a323b733a31353a226578616d5f73746172745f74696d65223b733a383a2231323a35353a3239223b7d726573756c745f646174617c613a333a7b693a303b613a323a7b733a31313a227175657374696f6e5f6964223b733a323a223234223b733a31303a226f7074696f6e5f696473223b613a313a7b693a303b733a333a22313035223b7d7d693a313b613a323a7b733a31313a227175657374696f6e5f6964223b733a323a223235223b733a31303a226f7074696f6e5f696473223b613a313a7b693a303b733a333a22313039223b7d7d693a323b613a323a7b733a31313a227175657374696f6e5f6964223b733a323a223239223b733a31303a226f7074696f6e5f696473223b613a313a7b693a303b733a333a22313234223b7d7d7d6578616d5f69647c693a31323b),
('2f628306dbc09ef9accbab52a48d267a013a6aa4', '118.179.160.126', 1488121485, 0x5f5f63695f6c6173745f726567656e65726174657c693a313438383132313438353b),
('ba045fbf18ef47d5237956048f5d9e7f1281b875', '118.179.160.126', 1488122686, 0x5f5f63695f6c6173745f726567656e65726174657c693a313438383132323431383b757365725f69647c733a313a2231223b757365725f6e616d657c733a31353a2261646d696e4061646d696e2e636f6d223b75736572747970657c733a31313a2273757065725f61646d696e223b66756c6c5f6e616d657c733a353a2241646d696e223b696d6167657c733a35343a22687474703a2f2f646f776e6c6f61646c6c632e636f6d2f6d6f64656c2f6d792d6173736574732f696d616765732f757365722e706e67223b6c6f676765645f696e7c623a313b),
('3da7496054dbfd8b082f693efb2a38c10607d0c3', '118.179.160.126', 1488123038, 0x5f5f63695f6c6173745f726567656e65726174657c693a313438383132323737393b757365725f69647c733a313a2231223b757365725f6e616d657c733a31353a2261646d696e4061646d696e2e636f6d223b75736572747970657c733a31313a2273757065725f61646d696e223b66756c6c5f6e616d657c733a353a2241646d696e223b696d6167657c733a35343a22687474703a2f2f646f776e6c6f61646c6c632e636f6d2f6d6f64656c2f6d792d6173736574732f696d616765732f757365722e706e67223b6c6f676765645f696e7c623a313b),
('0ad6b7d071b0e1d185fa5d89b4eac4be66351f14', '118.179.160.126', 1488123343, 0x5f5f63695f6c6173745f726567656e65726174657c693a313438383132333130373b757365725f69647c733a313a2231223b757365725f6e616d657c733a31353a2261646d696e4061646d696e2e636f6d223b75736572747970657c733a31313a2273757065725f61646d696e223b66756c6c5f6e616d657c733a353a2241646d696e223b696d6167657c733a35343a22687474703a2f2f646f776e6c6f61646c6c632e636f6d2f6d6f64656c2f6d792d6173736574732f696d616765732f757365722e706e67223b6c6f676765645f696e7c623a313b),
('b517e5df16a26931b1f4d4cde1a60f0015093ddb', '43.250.81.52', 1488123405, 0x5f5f63695f6c6173745f726567656e65726174657c693a313438383132333334313b),
('883c90df137674c77edac8981a9d01866689d609', '118.179.160.126', 1488123712, 0x5f5f63695f6c6173745f726567656e65726174657c693a313438383132333431373b757365725f69647c733a313a2231223b757365725f6e616d657c733a31353a2261646d696e4061646d696e2e636f6d223b75736572747970657c733a31313a2273757065725f61646d696e223b66756c6c5f6e616d657c733a353a2241646d696e223b696d6167657c733a35343a22687474703a2f2f646f776e6c6f61646c6c632e636f6d2f6d6f64656c2f6d792d6173736574732f696d616765732f757365722e706e67223b6c6f676765645f696e7c623a313b),
('a664af40eabb261921972c3a53456d243dbd6983', '118.179.160.126', 1488124035, 0x5f5f63695f6c6173745f726567656e65726174657c693a313438383132333738383b757365725f69647c733a313a2231223b757365725f6e616d657c733a31353a2261646d696e4061646d696e2e636f6d223b75736572747970657c733a31313a2273757065725f61646d696e223b66756c6c5f6e616d657c733a353a2241646d696e223b696d6167657c733a35343a22687474703a2f2f646f776e6c6f61646c6c632e636f6d2f6d6f64656c2f6d792d6173736574732f696d616765732f757365722e706e67223b6c6f676765645f696e7c623a313b),
('54913aec7e0b99a2edd2c640b58117c72b10a5a5', '43.250.81.52', 1488123869, 0x5f5f63695f6c6173745f726567656e65726174657c693a313438383132333834343b),
('ca7fa684caf20c235a416694fefc855ed56db770', '103.15.141.92', 1488130114, 0x5f5f63695f6c6173745f726567656e65726174657c693a313438383132393838313b70726573656e745f75726c7c733a34333a22687474703a2f2f646f776e6c6f61646c6c632e636f6d2f6d6f64656c2f636f757273655f6578616d2f3134223b4642524c485f73746174657c733a33323a226637623532643363663461373264363834613731663862383132386166306161223b757365725f69647c733a32303a2266586d4f32706c74673759427a7144566d324c58223b757365725f6e616d657c733a31373a2273747564656e7440676d61696c2e636f6d223b75736572747970657c733a373a2273747564656e74223b66756c6c5f6e616d657c733a373a2273747564656e74223b696d6167657c733a35343a22687474703a2f2f646f776e6c6f61646c6c632e636f6d2f6d6f64656c2f6d792d6173736574732f696d616765732f757365722e706e67223b6c6f676765645f696e7c623a313b6578616d5f72656c617465645f646174617c613a343a7b733a393a22636f757273655f6964223b733a313a2231223b733a31343a226e6f5f6f665f7175657374696f6e223b733a313a2231223b733a373a226578616d5f6964223b733a313a2235223b733a31313a22636f757273655f6e616d65223b733a31353a2247656e6572616c20536369656e6365223b7d6578616d5f646174617c613a343a7b733a31373a226578616d5f7175657374696f6e5f696473223b613a313a7b693a303b733a313a2231223b7d733a31333a2263757272656e745f696e646578223b693a303b733a31303a226c6173745f696e646578223b693a303b733a31353a226578616d5f73746172745f74696d65223b733a383a2231373a32383a3234223b7d726573756c745f646174617c613a303a7b7d6578616d5f69647c693a32383b),
('fcbaab494aea310077671c1544e3535db4ddfb46', '103.15.141.92', 1488131287, 0x5f5f63695f6c6173745f726567656e65726174657c693a313438383133313232383b),
('1ae19b26c96088352bc62746d32419deb0f13f05', '52.4.48.181', 1488170292, 0x5f5f63695f6c6173745f726567656e65726174657c693a313438383137303239323b70726573656e745f75726c7c733a34323a22687474703a2f2f646f776e6c6f61646c6c632e636f6d2f6d6f64656c2f636f757273655f6578616d2f31223b4642524c485f73746174657c733a33323a223738396439376334373761336636313131653933623432356638393061386537223b),
('f0322ff258e80f7aac50c2c0c9285d39aecaf340', '106.219.192.34', 1517588097, 0x5f5f63695f6c6173745f726567656e65726174657c693a313531373538383039363b),
('7786be3cdec6b2e8f660855210299ea25fdafbab', '106.219.192.34', 1517588449, 0x5f5f63695f6c6173745f726567656e65726174657c693a313531373538383433323b4642524c485f73746174657c733a33323a223533326465633766386639613533666538663732643365343039643264383337223b),
('4712510fffcf533dbb3684a04cae949a800237bf', '74.82.4.63', 1517588579, 0x5f5f63695f6c6173745f726567656e65726174657c693a313531373538383537363b),
('6d2f548fff3765d736c5e74c9e96225a03abf1f7', '66.160.201.65', 1517589229, 0x5f5f63695f6c6173745f726567656e65726174657c693a313531373538393232393b4642524c485f73746174657c733a33323a223734623062666338613361623464343464613830366662656363356136303331223b),
('aac5b14fb3d63b66a7a15ee69f550e95775d9a73', '66.160.201.66', 1517592106, 0x5f5f63695f6c6173745f726567656e65726174657c693a313531373539323130353b4642524c485f73746174657c733a33323a223734623062666338613361623464343464613830366662656363356136303331223b),
('2760fe4f1ecd273cc322c5ff40e3e16fc3ad0e8e', '66.160.201.66', 1517592751, 0x5f5f63695f6c6173745f726567656e65726174657c693a313531373539323438393b4642524c485f73746174657c733a33323a223734623062666338613361623464343464613830366662656363356136303331223b757365725f69647c733a313a2231223b757365725f6e616d657c733a31353a2261646d696e4061646d696e2e636f6d223b75736572747970657c733a31313a2273757065725f61646d696e223b66756c6c5f6e616d657c733a353a2241646d696e223b696d6167657c733a35323a22687474703a2f2f74616d6d616e616765722e636f6d2f7175697a2f6d792d6173736574732f696d616765732f757365722e706e67223b6c6f676765645f696e7c623a313b);

-- --------------------------------------------------------

--
-- Table structure for table `class_add`
--

CREATE TABLE `class_add` (
  `class_id` int(11) NOT NULL,
  `class_name` varchar(255) NOT NULL,
  `status` int(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `class_add`
--

INSERT INTO `class_add` (`class_id`, `class_name`, `status`) VALUES
(1, 'Class one', 1),
(2, 'Class two', 1),
(3, 'Class five', 2),
(4, '12th Grade', 1),
(5, '1st Grade', 1),
(6, '2nd Grade', 1),
(7, '3rd Grade', 1),
(8, '4th Grade', 1),
(9, '5th Grade ', 1),
(10, '6th Grade ', 1),
(11, '7th Grade', 1),
(12, '8th Grade ', 1),
(13, '9th Grade ', 1),
(14, '10th Grade ', 1),
(15, '11th Grade', 1),
(16, 'BSc in CSE', 1),
(17, 'BSc in IT', 1);

-- --------------------------------------------------------

--
-- Table structure for table `client_user_login`
--

CREATE TABLE `client_user_login` (
  `user_id` varchar(256) CHARACTER SET latin1 NOT NULL,
  `email` varchar(256) CHARACTER SET latin1 NOT NULL,
  `password` varchar(256) CHARACTER SET latin1 NOT NULL,
  `status` int(2) NOT NULL,
  `user_type` varchar(20) CHARACTER SET latin1 NOT NULL,
  `redirect_url` varchar(255) CHARACTER SET latin1 DEFAULT NULL,
  `activation_code` varchar(256) CHARACTER SET latin1 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `client_user_login`
--

INSERT INTO `client_user_login` (`user_id`, `email`, `password`, `status`, `user_type`, `redirect_url`, `activation_code`) VALUES
('1', 'admin@admin.com', 'dd87f99e3c18c44a6b47baa42b80274d', 1, 'super_admin', 'admin/Admin_dashboard', ''),
('2fSJkr3FSumMIveU5FwO', 'rob@bdtask.com', 'a7a83a805880c0ca3ed5b88fc11c2684', 1, 'operator', 'operator/Operator_dashboard', ''),
('8X7IEstrkYK4gRAwOt22', 'testsytudent@gmail.com', 'dd87f99e3c18c44a6b47baa42b80274d', 1, 'student', NULL, '2b6d1990fab010e2e34e9bcf9cb5856f'),
('aWFUONUsYN2vL6YE6t2U', 'rakin28325@gmail.com', 'a7a83a805880c0ca3ed5b88fc11c2684', 0, 'student', NULL, 'e055e03936e4c06693d1824ccf43620d'),
('BWQmLFpp2zIHbNwI91oa', 'khan@bdtask.com', '6c46149e8eeee0e7580988eef2c3382d', 0, 'student', NULL, 'a1420b43211010ef9a246a585bc874be'),
('eNNeckZAjZKoNXoS0zU8', 'misu@bdtask.com', 'dd87f99e3c18c44a6b47baa42b80274d', 1, 'operator', 'operator/Operator_dashboard', ''),
('Fs5HqU1V7b22EU78GDOu', 'tanzil4091@gmail.com', 'dd87f99e3c18c44a6b47baa42b80274d', 0, 'student', NULL, '25be5b6199ed8546c87243094b33b42f'),
('fXmO2pltg7YBzqDVm2LX', 'student@gmail.com', 'dd87f99e3c18c44a6b47baa42b80274d', 1, 'student', NULL, '5e0bdb878e5c985036d5ad49512077a2'),
('g047wlr5kyJrscLpN1Fm', 'tohidsowkot@gmail.com', 'f6e0c454fe7f13c241cf213b234ac26e', 2, 'teacher', 'tutor/Tutor_dashboard', '7d8b8498f67020a825a431bca49292c0'),
('Gl5UrUThUpYygWZnZoM7', 'operator@gmail.com', 'dd87f99e3c18c44a6b47baa42b80274d', 1, 'operator', 'operator/Operator_dashboard', ''),
('I5U7cIoOe4u6VVeX6dMz', 'teacher1@gmail.com', 'dd87f99e3c18c44a6b47baa42b80274d', 1, 'teacher', 'tutor/Tutor_dashboard', ''),
('k0U4HPuGigsHPhKCaiap', 'bdtask@gmail.com', '20e326a084cfa3d91db573f4af5dfa69', 1, 'student', NULL, '9a4834d14172ce13e0331cb5e57128a2'),
('KM3FAuXv3J7lo8142rOx', 'bdtask@gmail.com', 'a7a83a805880c0ca3ed5b88fc11c2684', 3, 'teacher', 'tutor/Tutor_dashboard', 'b03b2ab92724949c4a29d1c3818e05d4'),
('mf3S3DLgMzIc5k1hx6gS', 'azad@gmail.com', 'a7a83a805880c0ca3ed5b88fc11c2684', 1, 'student', NULL, '83c2332b4be3c80b1e017fc3e7c1f001'),
('q44s4TpKySgDcECKojhP', 'tuhin@gmail.com', '4f9ca2d54bc7f07788295141bffd1a62', 1, 'teacher', 'tutor/Tutor_dashboard', ''),
('rzWZyPSSZe9H871KV3Ch', 'tanzil4091@gmail.com', '20e326a084cfa3d91db573f4af5dfa69', 1, 'student', NULL, 'db50232a6df3a7ae2ab7fbf19c6039c0'),
('S7rA7uL9CN9HwtM3wvga', 'raseel@bdtask.com', 'f498946ca27b792ee1974eb52767b26b', 1, 'student', NULL, ''),
('uoHEevsIYxKJHmDAAq2e', 'sumchtarek@gmail.com', '4f9ca2d54bc7f07788295141bffd1a62', 1, 'teacher', 'tutor/Tutor_dashboard', ''),
('wYna2yYlm8I3g7FEjU7h', 'teacher@gmail.com', 'dd87f99e3c18c44a6b47baa42b80274d', 1, 'teacher', 'tutor/tutor_dashboard', ''),
('yhbYrOJX2jaRsmgBB8Nq', 'tanzil4091@yahoo.com', '20e326a084cfa3d91db573f4af5dfa69', 1, 'student', NULL, '2a04d56f7f8e8176ea7e46f477dfdd6e'),
('z9JxvFnBVj0XK8xwrzco', 'nico@bftask.com', '4f9ca2d54bc7f07788295141bffd1a62', 1, 'operator', 'operator/Operator_dashboard', ''),
('zUt6Q2srXMgwXIBQfPld', 'asad@gmail.com', 'a7a83a805880c0ca3ed5b88fc11c2684', 1, 'teacher', 'tutor/Tutor_dashboard', '');

-- --------------------------------------------------------

--
-- Table structure for table `company_information`
--

CREATE TABLE `company_information` (
  `company_id` varchar(250) NOT NULL,
  `company_name` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `address` text NOT NULL,
  `mobile` int(11) NOT NULL,
  `website` varchar(50) NOT NULL,
  `status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `company_information`
--

INSERT INTO `company_information` (`company_id`, `company_name`, `email`, `address`, `mobile`, `website`, `status`) VALUES
('NOILG8EGCRXXBWUEUQBM', 'New Company', 'bdtask@gmail.com', '98,Green Road,Dhaka', 3243242, 'http://www.bdtask.com', 1);

-- --------------------------------------------------------

--
-- Table structure for table `course_add`
--

CREATE TABLE `course_add` (
  `course_id` int(11) NOT NULL,
  `course_name` varchar(255) NOT NULL,
  `class_id` int(11) NOT NULL,
  `is_new` tinyint(2) NOT NULL,
  `course_details` text,
  `image` varchar(255) DEFAULT NULL,
  `status` int(2) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `course_add`
--

INSERT INTO `course_add` (`course_id`, `course_name`, `class_id`, `is_new`, `course_details`, `image`, `status`) VALUES
(1, 'General Science', 9, 1, '<p>Proin eu pretium sem, eget convallis tellus. Fusce varius leo at aliquet iaculis. Aenean aliquam purus sed rutrum porta. Proin laoreet suscipit ante, at gravida nulla dapibus eget. Aliquam at ornare velit, sed commodo quam. Praesent a mi massa. Ut aliquet risus nibh, nec auctor erat vulputate ac. Pellentesque dictum arcu ac malesuada lacinia. Praesent tincidunt posuere nunc, nec viverra tellus viverra ac. Quisque ipsum magna, laoreet feugiat ligula eu, fermentum auctor erat. Cras accumsan felis quis congue venenatis. Nunc tortor eros, suscipit id volutpat vitae, cursus vitae massa. Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Quisque lectus metus, rhoncus quis tincidunt et, fermentum euismod nisi.</p>', 'http://quiz.bdtask.com/demo/my-assets/images/course_image/fdec4cff4ff955e7859dd203ee0c4ff3.jpeg', 1),
(2, 'Spanish', 11, 1, '<p>Proin eu pretium sem, eget convallis tellus. Fusce varius leo at aliquet iaculis. Aenean aliquam purus sed rutrum porta. Proin laoreet suscipit ante, at gravida nulla dapibus eget. Aliquam at ornare velit, sed commodo quam. Praesent a mi massa. Ut aliquet risus nibh, nec auctor erat vulputate ac. Pellentesque dictum arcu ac malesuada lacinia. Praesent tincidunt posuere nunc, nec viverra tellus viverra ac. Quisque ipsum magna, laoreet feugiat ligula eu, fermentum auctor erat. Cras accumsan felis quis congue venenatis. Nunc tortor eros, suscipit id volutpat vitae, cursus vitae massa. Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Quisque lectus metus, rhoncus quis tincidunt et, fermentum euismod nisi.</p>', 'http://quiz.bdtask.com/demo/my-assets/images/course_image/a1c44375a29bb3ed8e847516e34d0eef.jpeg', 1),
(3, 'Math', 1, 1, NULL, NULL, 2),
(4, 'Spelling Activities', 8, 1, '<p>Proin eu pretium sem, eget convallis tellus. Fusce varius leo at aliquet iaculis. Aenean aliquam purus sed rutrum porta. Proin laoreet suscipit ante, at gravida nulla dapibus eget. Aliquam at ornare velit, sed commodo quam. Praesent a mi massa. Ut aliquet risus nibh, nec auctor erat vulputate ac. Pellentesque dictum arcu ac malesuada lacinia. Praesent tincidunt posuere nunc, nec viverra tellus viverra ac. Quisque ipsum magna, laoreet feugiat ligula eu, fermentum auctor erat. Cras accumsan felis quis congue venenatis. Nunc tortor eros, suscipit id volutpat vitae, cursus vitae massa. Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Quisque lectus metus, rhoncus quis tincidunt et, fermentum euismod nisi.</p>', 'http://quiz.bdtask.com/demo/my-assets/images/course_image/73bc24569b7f7ee5fad8bd5d2202400a.jpg', 1),
(5, 'English', 4, 1, '<p>Proin eu pretium sem, eget convallis tellus. Fusce varius leo at aliquet iaculis. Aenean aliquam purus sed rutrum porta. Proin laoreet suscipit ante, at gravida nulla dapibus eget. Aliquam at ornare velit, sed commodo quam. Praesent a mi massa. Ut aliquet risus nibh, nec auctor erat vulputate ac. Pellentesque dictum arcu ac malesuada lacinia. Praesent tincidunt posuere nunc, nec viverra tellus viverra ac. Quisque ipsum magna, laoreet feugiat ligula eu, fermentum auctor erat. Cras accumsan felis quis congue venenatis. Nunc tortor eros, suscipit id volutpat vitae, cursus vitae massa. Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Quisque lectus metus, rhoncus quis tincidunt et, fermentum euismod nisi.</p>', 'http://quiz.bdtask.com/demo/my-assets/images/course_image/3508ebb2c88dc55d71f8611ca85cf6e3.jpeg', 1),
(6, 'Social Studies', 4, 1, '<p>Proin eu pretium sem, eget convallis tellus. Fusce varius leo at aliquet iaculis. Aenean aliquam purus sed rutrum porta. Proin laoreet suscipit ante, at gravida nulla dapibus eget. Aliquam at ornare velit, sed commodo quam. Praesent a mi massa. Ut aliquet risus nibh, nec auctor erat vulputate ac. Pellentesque dictum arcu ac malesuada lacinia. Praesent tincidunt posuere nunc, nec viverra tellus viverra ac. Quisque ipsum magna, laoreet feugiat ligula eu, fermentum auctor erat. Cras accumsan felis quis congue venenatis. Nunc tortor eros, suscipit id volutpat vitae, cursus vitae massa. Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Quisque lectus metus, rhoncus quis tincidunt et, fermentum euismod nisi.</p>', 'http://quiz.bdtask.com/demo/my-assets/images/course_image/b8d028d679965a2d35c495b04b3c466f.jpg', 1),
(7, ' Language Arts', 5, 1, '<p>Proin eu pretium sem, eget convallis tellus. Fusce varius leo at aliquet iaculis. Aenean aliquam purus sed rutrum porta. Proin laoreet suscipit ante, at gravida nulla dapibus eget. Aliquam at ornare velit, sed commodo quam. Praesent a mi massa. Ut aliquet risus nibh, nec auctor erat vulputate ac. Pellentesque dictum arcu ac malesuada lacinia. Praesent tincidunt posuere nunc, nec viverra tellus viverra ac. Quisque ipsum magna, laoreet feugiat ligula eu, fermentum auctor erat. Cras accumsan felis quis congue venenatis. Nunc tortor eros, suscipit id volutpat vitae, cursus vitae massa. Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Quisque lectus metus, rhoncus quis tincidunt et, fermentum euismod nisi.</p>', 'http://quiz.bdtask.com/demo/my-assets/images/course_image/b650d381c13350757744af10f5f7c26e.jpeg', 1),
(8, 'Mathematics', 6, 1, '<p>Proin eu pretium sem, eget convallis tellus. Fusce varius leo at aliquet iaculis. Aenean aliquam purus sed rutrum porta. Proin laoreet suscipit ante, at gravida nulla dapibus eget. Aliquam at ornare velit, sed commodo quam. Praesent a mi massa. Ut aliquet risus nibh, nec auctor erat vulputate ac. Pellentesque dictum arcu ac malesuada lacinia. Praesent tincidunt posuere nunc, nec viverra tellus viverra ac. Quisque ipsum magna, laoreet feugiat ligula eu, fermentum auctor erat. Cras accumsan felis quis congue venenatis. Nunc tortor eros, suscipit id volutpat vitae, cursus vitae massa. Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Quisque lectus metus, rhoncus quis tincidunt et, fermentum euismod nisi.</p>', 'http://quiz.bdtask.com/demo/my-assets/images/course_image/7d56fc3a839ce6565121d9e71e07c25a.png', 1),
(9, 'Written Communication', 7, 1, '<p>Proin eu pretium sem, eget convallis tellus. Fusce varius leo at aliquet iaculis. Aenean aliquam purus sed rutrum porta. Proin laoreet suscipit ante, at gravida nulla dapibus eget. Aliquam at ornare velit, sed commodo quam. Praesent a mi massa. Ut aliquet risus nibh, nec auctor erat vulputate ac. Pellentesque dictum arcu ac malesuada lacinia. Praesent tincidunt posuere nunc, nec viverra tellus viverra ac. Quisque ipsum magna, laoreet feugiat ligula eu, fermentum auctor erat. Cras accumsan felis quis congue venenatis. Nunc tortor eros, suscipit id volutpat vitae, cursus vitae massa. Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Quisque lectus metus, rhoncus quis tincidunt et, fermentum euismod nisi.</p>', 'http://quiz.bdtask.com/demo/my-assets/images/course_image/98a023b1565f80cccddd7c07e8103b27.jpg', 1),
(10, 'Science', 10, 1, '<p>Proin eu pretium sem, eget convallis tellus. Fusce varius leo at aliquet iaculis. Aenean aliquam purus sed rutrum porta. Proin laoreet suscipit ante, at gravida nulla dapibus eget. Aliquam at ornare velit, sed commodo quam. Praesent a mi massa. Ut aliquet risus nibh, nec auctor erat vulputate ac. Pellentesque dictum arcu ac malesuada lacinia. Praesent tincidunt posuere nunc, nec viverra tellus viverra ac. Quisque ipsum magna, laoreet feugiat ligula eu, fermentum auctor erat. Cras accumsan felis quis congue venenatis. Nunc tortor eros, suscipit id volutpat vitae, cursus vitae massa. Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Quisque lectus metus, rhoncus quis tincidunt et, fermentum euismod nisi.</p>', 'http://quiz.bdtask.com/demo/my-assets/images/course_image/872271035313e89762371495de5fcbab.png', 1),
(11, 'Arabic Learning', 11, 1, 'Proin eu pretium sem, eget convallis tellus. Fusce varius leo at aliquet iaculis. Aenean aliquam purus sed rutrum porta. Proin laoreet suscipit ante, at gravida nulla dapibus eget. Aliquam at ornare velit, sed commodo quam. Praesent a mi massa. Ut aliquet risus nibh, nec auctor erat vulputate ac. Pellentesque dictum arcu ac malesuada lacinia. Praesent tincidunt posuere nunc, nec viverra tellus viverra ac. Quisque ipsum magna, laoreet feugiat ligula eu, fermentum auctor erat. Cras accumsan felis quis congue venenatis. Nunc tortor eros, suscipit id volutpat vitae, cursus vitae massa. Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Quisque lectus metus, rhoncus quis tincidunt et, fermentum euismod nisi.', 'http://quiz.bdtask.com/demo/my-assets/images/course_image/af42088b796c49989e9880423948ba9e.jpg', 1),
(12, 'Higher Mathematics', 12, 1, '<p>Proin eu pretium sem, eget convallis tellus. Fusce varius leo at aliquet iaculis. Aenean aliquam purus sed rutrum porta. Proin laoreet suscipit ante, at gravida nulla dapibus eget. Aliquam at ornare velit, sed commodo quam. Praesent a mi massa. Ut aliquet risus nibh, nec auctor erat vulputate ac. Pellentesque dictum arcu ac malesuada lacinia. Praesent tincidunt posuere nunc, nec viverra tellus viverra ac. Quisque ipsum magna, laoreet feugiat ligula eu, fermentum auctor erat. Cras accumsan felis quis congue venenatis. Nunc tortor eros, suscipit id volutpat vitae, cursus vitae massa. Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Quisque lectus metus, rhoncus quis tincidunt et, fermentum euismod nisi.</p>', 'http://quiz.bdtask.com/demo/my-assets/images/course_image/272b8f7fe9f8e0fc59b8009e0071754a.jpg', 1),
(13, 'Agriculture ', 13, 1, '<p>Proin eu pretium sem, eget convallis tellus. Fusce varius leo at aliquet iaculis. Aenean aliquam purus sed rutrum porta. Proin laoreet suscipit ante, at gravida nulla dapibus eget. Aliquam at ornare velit, sed commodo quam. Praesent a mi massa. Ut aliquet risus nibh, nec auctor erat vulputate ac. Pellentesque dictum arcu ac malesuada lacinia. Praesent tincidunt posuere nunc, nec viverra tellus viverra ac. Quisque ipsum magna, laoreet feugiat ligula eu, fermentum auctor erat. Cras accumsan felis quis congue venenatis. Nunc tortor eros, suscipit id volutpat vitae, cursus vitae massa. Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Quisque lectus metus, rhoncus quis tincidunt et, fermentum euismod nisi.</p>', 'http://quiz.bdtask.com/demo/my-assets/images/course_image/47f15bb02cc81ea1f9e652a2ac8430d6.jpeg', 1),
(14, 'Biology ', 14, 1, '<p>Proin eu pretium sem, eget convallis tellus. Fusce varius leo at aliquet iaculis. Aenean aliquam purus sed rutrum porta. Proin laoreet suscipit ante, at gravida nulla dapibus eget. Aliquam at ornare velit, sed commodo quam. Praesent a mi massa. Ut aliquet risus nibh, nec auctor erat vulputate ac. Pellentesque dictum arcu ac malesuada lacinia. Praesent tincidunt posuere nunc, nec viverra tellus viverra ac. Quisque ipsum magna, laoreet feugiat ligula eu, fermentum auctor erat. Cras accumsan felis quis congue venenatis. Nunc tortor eros, suscipit id volutpat vitae, cursus vitae massa. Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Quisque lectus metus, rhoncus quis tincidunt et, fermentum euismod nisi.</p>', 'http://quiz.bdtask.com/demo/my-assets/images/course_image/3e80783c2e421991a8cc815d81f1b6b3.jpg', 1),
(15, 'Zoology', 15, 1, '<p>Proin eu pretium sem, eget convallis tellus. Fusce varius leo at aliquet iaculis. Aenean aliquam purus sed rutrum porta. Proin laoreet suscipit ante, at gravida nulla dapibus eget. Aliquam at ornare velit, sed commodo quam. Praesent a mi massa. Ut aliquet risus nibh, nec auctor erat vulputate ac. Pellentesque dictum arcu ac malesuada lacinia. Praesent tincidunt posuere nunc, nec viverra tellus viverra ac. Quisque ipsum magna, laoreet feugiat ligula eu, fermentum auctor erat. Cras accumsan felis quis congue venenatis. Nunc tortor eros, suscipit id volutpat vitae, cursus vitae massa. Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Quisque lectus metus, rhoncus quis tincidunt et, fermentum euismod nisi.</p>', 'http://quiz.bdtask.com/demo/my-assets/images/course_image/97f31cb8ac14e36146ec81f6ecc948e6.jpg', 1),
(16, 'c', 16, 1, '<p>Proin eu pretium sem, eget convallis tellus. Fusce varius leo at aliquet iaculis. Aenean aliquam purus sed rutrum porta. Proin laoreet suscipit ante, at gravida nulla dapibus eget. Aliquam at ornare velit, sed commodo quam. Praesent a mi massa. Ut aliquet risus nibh, nec auctor erat vulputate ac. Pellentesque dictum arcu ac malesuada lacinia. Praesent tincidunt posuere nunc, nec viverra tellus viverra ac. Quisque ipsum magna, laoreet feugiat ligula eu, fermentum auctor erat. Cras accumsan felis quis congue venenatis. Nunc tortor eros, suscipit id volutpat vitae, cursus vitae massa. Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Quisque lectus metus, rhoncus quis tincidunt et, fermentum euismod nisi.</p>', 'http://quiz.bdtask.com/demo/my-assets/images/course_image/282236a926501e166bdcfee0d537c6dd.jpeg', 1),
(17, 'Computer Networking', 17, 1, '<p>Proin eu pretium sem, eget convallis tellus. Fusce varius leo at aliquet iaculis. Aenean aliquam purus sed rutrum porta. Proin laoreet suscipit ante, at gravida nulla dapibus eget. Aliquam at ornare velit, sed commodo quam. Praesent a mi massa. Ut aliquet risus nibh, nec auctor erat vulputate ac. Pellentesque dictum arcu ac malesuada lacinia. Praesent tincidunt posuere nunc, nec viverra tellus viverra ac. Quisque ipsum magna, laoreet feugiat ligula eu, fermentum auctor erat. Cras accumsan felis quis congue venenatis. Nunc tortor eros, suscipit id volutpat vitae, cursus vitae massa. Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Quisque lectus metus, rhoncus quis tincidunt et, fermentum euismod nisi.</p>', 'http://quiz.bdtask.com/demo/my-assets/images/course_image/76a4da0e7425869beb3c8c5a697be49e.jpeg', 1);

-- --------------------------------------------------------

--
-- Table structure for table `course_chapter_add`
--

CREATE TABLE `course_chapter_add` (
  `chapter_id` int(11) NOT NULL,
  `course_id` int(11) NOT NULL,
  `chapter_name` varchar(255) NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `chapter_file` varchar(255) DEFAULT NULL,
  `youtube_url` varchar(255) DEFAULT NULL,
  `status` int(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `course_chapter_add`
--

INSERT INTO `course_chapter_add` (`chapter_id`, `course_id`, `chapter_name`, `image`, `chapter_file`, `youtube_url`, `status`) VALUES
(1, 1, 'Lorem Ipsum&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been', 'http://quiz.bdtask.com/demo/my-assets/images/chapter_image/9743deae33842eae2308faede97957e5.jpeg', 'http://quiz.bdtask.com/demo/my-assets/images/chapter_image/65255f6d3ffea60c0c1286b8b614565d.jpg', 'https://www.bdtask.com', 1),
(2, 1, '<p>Chapter one&nbsp;2342354325</p>', 'http://quiz.bdtask.com/demo/my-assets/images/chapter_image/7ce9da7c741a35af87b349dbf34b3c8e.jpg', 'http://quiz.bdtask.com/demo/my-assets/images/chapter_image/81e41a36375d5e87ce38d1d88ef7639c.pdf', 'https://www.bdtask.com', 1),
(3, 1, '3RD CHAPTER', NULL, NULL, NULL, 2),
(4, 1, 'sdfsdfsd', 'http://quiz.bdtask.com/demo/my-assets/images/course.png', '', 'sdfsdf', 1),
(5, 5, 'Lorem ipsum dolor sit amet, consectetu', 'http://quiz.bdtask.com/demo/my-assets/images/chapter_image/906c52a72dfb943d01777f26ccb93039.jpeg', 'http://quiz.bdtask.com/demo/my-assets/images/chapter_image/6636caca4f239fd0416c307f0d790b9b.jpeg', 'https://www.youtube.com/watch?v=oLvfbLPe508', 1),
(6, 5, 'Ipsum dolor sit amet, consectetu Lorem ', 'http://quiz.bdtask.com/demo/my-assets/images/course.png', '', '', 1),
(7, 5, 'Dolor sit amet, consectetu lorem ipsum', 'http://quiz.bdtask.com/demo/my-assets/images/course.png', '', 'https://www.youtube.com/watch?v=oLvfbLPe608', 1),
(8, 5, 'Sit amet, consectetu lorem ipsum dolor', 'http://quiz.bdtask.com/demo/my-assets/images/course.png', '', '', 1),
(9, 7, 'Duis rhoncus nisl ut mi maximus imperdiet.', 'http://quiz.bdtask.com/demo/my-assets/images/course.png', '', '', 1),
(10, 7, 'Rhoncus nisl ut mi maximus imperdiet', 'http://quiz.bdtask.com/demo/my-assets/images/course.png', '', '', 1),
(11, 7, 'Nisl ut mi maximus imperdiet ipsum lorer', 'http://quiz.bdtask.com/demo/my-assets/images/course.png', '', '', 1),
(12, 8, 'Duis rhoncus nisl ut mi maximus imperdiet', 'http://quiz.bdtask.com/demo/my-assets/images/course.png', '', '', 1),
(13, 8, 'Ut mi maximus imperdiet mandit parom', 'http://quiz.bdtask.com/demo/my-assets/images/course.png', '', '', 1),
(14, 8, 'Mi maximus imperdiet natolus x sitr', 'http://quiz.bdtask.com/demo/my-assets/images/course.png', '', '', 1),
(15, 9, 'Duis vitae tristique lorem.', 'http://quiz.bdtask.com/demo/my-assets/images/course.png', '', '', 1),
(16, 9, 'Duis vitae tristique lorem ipsum lorer', 'http://quiz.bdtask.com/demo/my-assets/images/course.png', '', '', 1),
(17, 9, 'Duis vitae tristique lorem maxuta secxza', 'http://quiz.bdtask.com/demo/my-assets/images/course.png', '', '', 1),
(18, 4, 'Cras accumsan felis quis congue venenatis.', 'http://quiz.bdtask.com/demo/my-assets/images/course.png', '', '', 1),
(19, 4, 'Accumsan felis quis congue venenatis', 'http://quiz.bdtask.com/demo/my-assets/images/course.png', '', '', 1),
(20, 4, 'Felis quis congue venenatis caras', 'http://quiz.bdtask.com/demo/my-assets/images/course.png', '', '', 1),
(21, 1, 'Pellentesque finibus lacus sed molestie.', 'http://quiz.bdtask.com/demo/my-assets/images/course.png', '', '', 1),
(22, 1, 'Lacus sed molestie vestibulum. ', 'http://quiz.bdtask.com/demo/my-assets/images/course.png', '', '', 1),
(23, 1, 'Pellentesque finibus lacus sed', 'http://quiz.bdtask.com/demo/my-assets/images/course.png', '', '', 1),
(24, 10, 'Lasaacus sed molestie vestibulum. ', 'http://quiz.bdtask.com/demo/my-assets/images/course.png', '', '', 1),
(25, 10, 'Pellentesque finibus ipsum', 'http://quiz.bdtask.com/demo/my-assets/images/course.png', '', 'https://www.youtube.com/watch?v=oLvfbLPe608', 1),
(26, 10, 'Lorem lacus sed molestie vestibulum. ', 'http://quiz.bdtask.com/demo/my-assets/images/course.png', '', '', 1),
(27, 2, 'Etiam non fermentum lacus.', 'http://quiz.bdtask.com/demo/my-assets/images/course.png', '', '', 1),
(28, 2, 'Etiam non fermentum lacus, sit amet', 'http://quiz.bdtask.com/demo/my-assets/images/course.png', '', '', 1),
(29, 2, 'Etiam non fermentum lacus, sit amet temp', 'http://quiz.bdtask.com/demo/my-assets/images/course.png', '', '', 1),
(30, 2, 'Fermentum lacus, sit amet tempor nibh. ', 'http://quiz.bdtask.com/demo/my-assets/images/course.png', '', '', 1),
(31, 11, 'Sit amet tempor nibh. ', 'http://quiz.bdtask.com/demo/my-assets/images/course.png', '', '', 1),
(32, 11, 'Lacus, sit amet tempor nibh loras.', 'http://quiz.bdtask.com/demo/my-assets/images/course.png', '', '', 1),
(33, 12, 'Vivamus laoreet dui vitae ipsum sodales lacinia. ', 'http://quiz.bdtask.com/demo/my-assets/images/course.png', '', '', 1),
(34, 12, 'Vivamus laoreet dui vitae ipsum sodales', 'http://quiz.bdtask.com/demo/my-assets/images/course.png', '', '', 1),
(35, 12, 'Vivamus laoreet dui vitae ipsum', 'http://quiz.bdtask.com/demo/my-assets/images/course.png', '', '', 1),
(36, 12, 'Laoreet dui vitae ipsum sodales lacini', 'http://quiz.bdtask.com/demo/my-assets/images/course.png', '', '', 1),
(37, 13, 'Vivamus laoreet dui vita lore ipass', 'http://quiz.bdtask.com/demo/my-assets/images/course.png', '', '', 1),
(38, 13, 'Lorem vivamus laoreet dui vitae ipsum.', 'http://quiz.bdtask.com/demo/my-assets/images/course.png', '', '', 1),
(39, 14, 'Vivamus laoreet dui vitae ipsum ogrt', 'http://quiz.bdtask.com/demo/my-assets/images/course.png', '', '', 1),
(40, 14, 'Dui vitae ipsum sodales lacinia. ', 'http://quiz.bdtask.com/demo/my-assets/images/course.png', '', '', 1),
(41, 14, 'Laoreet dui vitae ipsum loremn gtrs', 'http://quiz.bdtask.com/demo/my-assets/images/course.png', '', '', 1),
(42, 14, 'Vitae ipsum sodales lacinia saxzd', 'http://quiz.bdtask.com/demo/my-assets/images/course.png', '', '', 1),
(43, 15, 'In hac habitasse platea dictumst', 'http://quiz.bdtask.com/demo/my-assets/images/course.png', '', '', 1),
(44, 15, 'Hac habitasse platea dictumst imapko', 'http://quiz.bdtask.com/demo/my-assets/images/course.png', '', '', 1),
(45, 15, 'Platea dictumst lorem ipasumas', 'http://quiz.bdtask.com/demo/my-assets/images/course.png', '', '', 1),
(46, 6, ' Pellentesque ut porttitor leo, eget accum', 'http://quiz.bdtask.com/demo/my-assets/images/course.png', '', '', 1),
(47, 6, 'Llentesque ut porttitor leo, eget accum', 'http://quiz.bdtask.com/demo/my-assets/images/course.png', '', '', 1),
(48, 6, ' Lorem ut porttitor leo, eget accum', 'http://quiz.bdtask.com/demo/my-assets/images/course.png', '', 'https://www.youtube.com/watch?v=oLvfbLPe508', 1),
(49, 16, 'Etiam non fermentum lacus\r\n\r\n', 'http://quiz.bdtask.com/demo/my-assets/images/course.png', '', '', 1),
(50, 16, 'Suscipit lacus ultrices sit amet.\r\n\r\n', 'http://quiz.bdtask.com/demo/my-assets/images/course.png', '', '', 1),
(51, 17, 'Sed luctus arcu diam, ut suscipit lacus \r\n', 'http://quiz.bdtask.com/demo/my-assets/images/course.png', '', '', 1),
(52, 17, 'Luctus arcu diam, ut suscipit lacus \r\n', 'http://quiz.bdtask.com/demo/my-assets/images/course.png', '', '', 1),
(53, 17, 'Arcu diam, ut suscipit lacus ipsum', 'http://quiz.bdtask.com/demo/my-assets/images/course.png', '', '', 1);

-- --------------------------------------------------------

--
-- Table structure for table `course_question_relation`
--

CREATE TABLE `course_question_relation` (
  `question_id` int(11) NOT NULL,
  `course_chapter_id` int(11) NOT NULL,
  `status` int(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `course_question_relation`
--

INSERT INTO `course_question_relation` (`question_id`, `course_chapter_id`, `status`) VALUES
(1, 2, 1),
(2, 2, 1),
(3, 1, 1),
(4, 2, 1),
(5, 2, 1),
(6, 5, 1),
(7, 6, 1),
(8, 5, 1),
(9, 6, 1),
(10, 5, 1),
(11, 6, 1),
(12, 47, 1),
(13, 48, 1),
(14, 47, 1),
(15, 9, 1),
(16, 9, 1),
(17, 9, 1),
(18, 13, 1),
(19, 13, 1),
(20, 14, 1),
(21, 16, 1),
(22, 15, 1),
(23, 13, 1),
(24, 18, 1),
(25, 18, 1),
(26, 18, 1),
(27, 2, 1),
(28, 2, 1),
(29, 18, 1);

-- --------------------------------------------------------

--
-- Table structure for table `data_entry_operator`
--

CREATE TABLE `data_entry_operator` (
  `operator_id` varchar(255) CHARACTER SET latin1 NOT NULL,
  `password` varchar(255) CHARACTER SET latin1 NOT NULL,
  `status` int(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `exam_backup`
--

CREATE TABLE `exam_backup` (
  `exam_id` int(11) NOT NULL,
  `user_id` int(255) NOT NULL,
  `questions_ids` text CHARACTER SET latin1 NOT NULL,
  `answers_ids` int(11) NOT NULL,
  `status` int(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `exam_details`
--

CREATE TABLE `exam_details` (
  `exam_id` int(11) NOT NULL,
  `question_ids` longtext CHARACTER SET latin1 NOT NULL,
  `status` int(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `exam_details`
--

INSERT INTO `exam_details` (`exam_id`, `question_ids`, `status`) VALUES
(1, '{\"0\":\"1\"}', 1),
(2, '{\"0\":\"3\"}', 1),
(3, '{\"0\":\"3\"}', 1),
(4, '{\"0\":\"3\",\"1\":\"2\",\"2\":\"1\",\"3\":\"4\"}', 1),
(5, '{\"0\":\"1\"}', 1),
(6, '{\"0\":\"4\"}', 1),
(7, '{\"0\":\"4\"}', 1),
(8, '{\"0\":\"6\",\"1\":\"8\",\"2\":\"10\",\"3\":\"7\",\"4\":\"9\"}', 1),
(15, '{\"0\":\"29\"}', 1),
(16, '{\"0\":\"28\"}', 1),
(25, '{\"0\":\"9\"}', 1),
(26, '{\"0\":\"28\",\"1\":\"27\"}', 1),
(27, '{\"0\":\"16\",\"1\":\"17\",\"2\":\"15\"}', 1),
(28, '{\"0\":\"28\",\"1\":\"27\"}', 1);

-- --------------------------------------------------------

--
-- Table structure for table `exam_head`
--

CREATE TABLE `exam_head` (
  `exam_id` int(11) NOT NULL,
  `exam_name` varchar(255) NOT NULL,
  `tutor_id` varchar(255) CHARACTER SET latin1 NOT NULL,
  `course_id` int(11) NOT NULL,
  `number_of_question` int(5) NOT NULL,
  `duration` float NOT NULL,
  `generated_procedure` int(5) NOT NULL,
  `chapter_ids` longtext CHARACTER SET latin1 NOT NULL,
  `status` int(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `exam_head`
--

INSERT INTO `exam_head` (`exam_id`, `exam_name`, `tutor_id`, `course_id`, `number_of_question`, `duration`, `generated_procedure`, `chapter_ids`, `status`) VALUES
(1, '', '1', 1, 1, 0, 5, '{\"0\":\"2\"}', 1),
(2, '', 'mf3S3DLgMzIc5k1hx6gS', 1, 1, 0, 5, '{\"0\":\"1\"}', 1),
(3, 'test', 'wYna2yYlm8I3g7FEjU7h', 1, 1, 0, 1, '{\"0\":\"1\"}', 1),
(4, '', 'k0U4HPuGigsHPhKCaiap', 1, 4, 0, 5, '{\"0\":\"1\",\"1\":\"2\",\"2\":\"3\",\"3\":\"4\"}', 1),
(5, 'test exam', 'I5U7cIoOe4u6VVeX6dMz', 1, 1, 0, 1, '{\"0\":\"2\"}', 1),
(6, 'HSC Model Test', 'q44s4TpKySgDcECKojhP', 1, 1, 0, 1, '{\"0\":\"2\"}', 1),
(7, 'HSC Model Test', 'q44s4TpKySgDcECKojhP', 1, 1, 0, 1, '{\"0\":\"2\"}', 1),
(8, '', '1', 5, 5, 0, 5, '{\"0\":\"5\",\"1\":\"6\",\"2\":\"7\",\"3\":\"8\"}', 1),
(9, '', 'mf3S3DLgMzIc5k1hx6gS', 14, 0, 0, 5, '{\"0\":\"39\",\"1\":\"40\"}', 1),
(10, '', '1', 17, 0, 0, 5, '{\"0\":\"51\",\"1\":\"52\",\"2\":\"53\"}', 1),
(11, '', '1', 14, 0, 0, 5, '{\"0\":\"39\"}', 1),
(12, '', 'fXmO2pltg7YBzqDVm2LX', 1, 0, 0, 5, '{\"0\":\"3\"}', 1),
(13, '', 'fXmO2pltg7YBzqDVm2LX', 1, 4, 0, 5, '{\"0\":\"2\"}', 1),
(14, '', 'fXmO2pltg7YBzqDVm2LX', 1, 4, 0, 5, '{\"0\":\"2\"}', 1),
(15, '', 'fXmO2pltg7YBzqDVm2LX', 1, 5, 0, 5, '{\"0\":\"2\",\"1\":\"23\"}', 1),
(16, '', 'fXmO2pltg7YBzqDVm2LX', 1, 1, 0, 5, '{\"0\":\"22\"}', 1),
(17, '', 'fXmO2pltg7YBzqDVm2LX', 1, 4, 0, 5, '{\"0\":\"2\"}', 1),
(18, '', 'fXmO2pltg7YBzqDVm2LX', 14, 0, 0, 5, '{\"0\":\"41\"}', 1),
(19, '', 'fXmO2pltg7YBzqDVm2LX', 14, 0, 0, 5, '{\"0\":\"39\"}', 1),
(20, '', 'fXmO2pltg7YBzqDVm2LX', 1, 0, 0, 5, '{\"0\":\"4\"}', 1),
(21, '', 'fXmO2pltg7YBzqDVm2LX', 1, 0, 0, 5, '{\"0\":\"3\"}', 1),
(22, '', 'fXmO2pltg7YBzqDVm2LX', 1, 1, 0, 5, '{\"0\":\"1\"}', 1),
(23, '', 'fXmO2pltg7YBzqDVm2LX', 1, 4, 0, 5, '{\"0\":\"2\"}', 1),
(24, '', 'fXmO2pltg7YBzqDVm2LX', 1, 4, 0, 5, '{\"0\":\"2\"}', 1),
(25, '', 'mf3S3DLgMzIc5k1hx6gS', 5, 1, 0, 5, '{\"0\":\"8\"}', 1),
(26, '', '1', 1, 7, 0, 5, '{\"0\":\"1\",\"1\":\"2\",\"2\":\"3\",\"3\":\"21\",\"4\":\"22\"}', 1),
(27, '', '1', 7, 3, 0, 5, '{\"0\":\"9\"}', 1),
(28, '', 'fXmO2pltg7YBzqDVm2LX', 1, 7, 0, 5, '{\"0\":\"1\",\"1\":\"2\"}', 1);

-- --------------------------------------------------------

--
-- Table structure for table `exam_notifications`
--

CREATE TABLE `exam_notifications` (
  `notification_id` int(11) NOT NULL,
  `student_id` varchar(255) CHARACTER SET latin1 NOT NULL,
  `exam_id` int(11) NOT NULL,
  `assign_date` datetime NOT NULL,
  `status` int(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `exam_notifications`
--

INSERT INTO `exam_notifications` (`notification_id`, `student_id`, `exam_id`, `assign_date`, `status`) VALUES
(1, 'fXmO2pltg7YBzqDVm2LX', 5, '2017-02-25 00:00:00', 1),
(2, 'mf3S3DLgMzIc5k1hx6gS', 6, '2017-02-25 00:00:00', 2);

-- --------------------------------------------------------

--
-- Table structure for table `facebook_config`
--

CREATE TABLE `facebook_config` (
  `facebook_id` int(11) NOT NULL,
  `fb_app_id` varchar(255) DEFAULT NULL,
  `fb_app_secret` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `facebook_config`
--

INSERT INTO `facebook_config` (`facebook_id`, `fb_app_id`, `fb_app_secret`) VALUES
(1, '169424100216985', '50be74c896c1fbd5df98b718fff5f284');

-- --------------------------------------------------------

--
-- Table structure for table `find_popular_course`
--

CREATE TABLE `find_popular_course` (
  `course_id` int(11) NOT NULL,
  `total_exam` int(11) NOT NULL,
  `status` int(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `find_popular_course`
--

INSERT INTO `find_popular_course` (`course_id`, `total_exam`, `status`) VALUES
(1, 16, 1),
(5, 2, 1),
(14, 4, 1),
(17, 1, 1),
(7, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `google_config`
--

CREATE TABLE `google_config` (
  `google_id` int(11) NOT NULL,
  `google_client_id` varchar(255) DEFAULT NULL,
  `google_secret_id` varchar(255) DEFAULT NULL,
  `google_api_key` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `google_config`
--

INSERT INTO `google_config` (`google_id`, `google_client_id`, `google_secret_id`, `google_api_key`) VALUES
(1, '708461812169-tottvok071gdq5s72uqed0aj3v9u9luf.apps.googleusercontent.com', 'wV2umeyg_6Y94YQl550lanst', 'AIzaSyBk8DAPFWulljbanq4jFqF03anZNQs3EVw');

-- --------------------------------------------------------

--
-- Table structure for table `language`
--

CREATE TABLE `language` (
  `id` int(11) UNSIGNED NOT NULL,
  `phrase` text NOT NULL,
  `english` text,
  `bangla` text,
  `spanish` text,
  `arabic` text,
  `hindi` text,
  `urdu` text,
  `france` text,
  `portuguese` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `language`
--

INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`, `spanish`, `arabic`, `hindi`, `urdu`, `france`, `portuguese`) VALUES
(1, 'home', 'Home', 'প্রথম পাতা ', NULL, NULL, NULL, NULL, NULL, NULL),
(2, 'class', 'Class', 'শ্রেণী', NULL, NULL, NULL, NULL, NULL, NULL),
(3, 'course', 'Course', 'কোর্স', NULL, NULL, NULL, NULL, NULL, NULL),
(4, 'chapter', 'Chapter', 'অধ্যায়', NULL, NULL, NULL, NULL, NULL, NULL),
(5, 'question', 'Question', 'প্রশ্ন', NULL, NULL, NULL, NULL, NULL, NULL),
(6, 'model_test', 'Model <b>Test</b>', 'মডেল টেস্ট', NULL, NULL, NULL, NULL, NULL, NULL),
(7, 'user_settings', 'User Settings', ' সেটিং', NULL, NULL, NULL, NULL, NULL, NULL),
(8, 'operator', 'Operator', 'অপারেটর', NULL, NULL, NULL, NULL, NULL, NULL),
(9, 'teacher', 'Teacher', 'শিক্ষক', NULL, NULL, NULL, NULL, NULL, NULL),
(10, 'language', 'Language', 'ভাষা', NULL, NULL, NULL, NULL, NULL, NULL),
(11, 'manage_language', 'Manage Language', 'ভাষা পরিচালনা', NULL, NULL, NULL, NULL, NULL, NULL),
(12, 'profile_setting', 'Profile setting', 'প্রোফাইল সেটিং', NULL, NULL, NULL, NULL, NULL, NULL),
(13, 'logout', 'Logout', 'প্রস্থান', NULL, NULL, NULL, NULL, NULL, NULL),
(14, 'manage_class', 'Manage Class', 'শ্রেণী পরিচালনা', NULL, NULL, NULL, NULL, NULL, NULL),
(15, 'add_class', 'Add Class', 'ক্লাস যোগ', NULL, NULL, NULL, NULL, NULL, NULL),
(16, 'request_class', 'Requested Class', 'অনুরোধ শ্রেণী', NULL, NULL, NULL, NULL, NULL, NULL),
(17, 'add_course', 'Add Course', 'অবশ্যই যোগ', NULL, NULL, NULL, NULL, NULL, NULL),
(18, 'manage_course', 'Manage Course', 'কোর্স পরিচালনা', NULL, NULL, NULL, NULL, NULL, NULL),
(19, 'request_course', 'Requested Course', 'অনুরোধ কোর্স ', NULL, NULL, NULL, NULL, NULL, NULL),
(20, 'class_list', 'Class List', 'শ্রেণী তালিকা', NULL, NULL, NULL, NULL, NULL, NULL),
(21, 'search_keyword', 'Search Keyword', 'শব্দ অনুসন্ধান ', NULL, NULL, NULL, NULL, NULL, NULL),
(22, 'search', 'Search', 'অনুসন্ধান', NULL, NULL, NULL, NULL, NULL, NULL),
(23, 'action', 'Action', 'কার্যকলাপ', NULL, NULL, NULL, NULL, NULL, NULL),
(24, 'class_name', 'Class Name', 'শ্রেণির নাম', NULL, NULL, NULL, NULL, NULL, NULL),
(25, 'save_another', 'Save and add another', 'জমা করুণ', NULL, NULL, NULL, NULL, NULL, NULL),
(26, 'save', 'Save', 'জমা করুণ', NULL, NULL, NULL, NULL, NULL, NULL),
(27, 'enter_keyword', 'Enter Keyword', 'কী ওয়ার্ড দিন', NULL, NULL, NULL, NULL, NULL, NULL),
(28, 'enter_class', 'Enter Class', 'শ্রেণী দিন', NULL, NULL, NULL, NULL, NULL, NULL),
(29, 'request_class_list', 'Requested Class List', 'অনুরোধ শ্রেণী তালিকা', NULL, NULL, NULL, NULL, NULL, NULL),
(30, 'dont_found_request_class', 'Don\'t Found Requested Class', 'রিকোয়েস্ট ক্লাস পাওয়া যাইনি', NULL, NULL, NULL, NULL, NULL, NULL),
(31, 'course_list', 'Course List', 'কোর্স তালিকা', NULL, NULL, NULL, NULL, NULL, NULL),
(32, 'select_class', 'Select Class', 'নির্বাচন শ্রেণী', NULL, NULL, NULL, NULL, NULL, NULL),
(33, 'course_name', 'Course Name', 'কোর্সের নাম', NULL, NULL, NULL, NULL, NULL, NULL),
(34, 'status', 'Status', 'অবস্থান', NULL, NULL, NULL, NULL, NULL, NULL),
(35, 'please_select', 'Please Select', 'অনুগ্রহ করে নির্বাচন করুন', NULL, NULL, NULL, NULL, NULL, NULL),
(36, 'is_new', 'Is New', 'নতুন ?', NULL, NULL, NULL, NULL, NULL, NULL),
(37, 'enter_course', 'Enter Course', 'কোর্স  দিন', NULL, NULL, NULL, NULL, NULL, NULL),
(38, 'dont_found_course', 'Don\'t Found Course List', ' কোর্স  পাওয়া যাইনি', NULL, NULL, NULL, NULL, NULL, NULL),
(39, 'save_changes', 'Save Changes', 'পরিবর্তন জমা করুণ', NULL, NULL, NULL, NULL, NULL, NULL),
(40, 'close', 'Close', 'বাতিল', NULL, NULL, NULL, NULL, NULL, NULL),
(41, 'edit_course', 'Edit Course', 'কোর্স  পরিবর্তন ', NULL, NULL, NULL, NULL, NULL, NULL),
(42, 'edit_class', 'Edit Class', 'শ্রেণী পরিবর্তন ', NULL, NULL, NULL, NULL, NULL, NULL),
(43, 'request_course_list', 'Request Course List', 'অনুরোধ কোর্স তালিকা', NULL, NULL, NULL, NULL, NULL, NULL),
(44, 'dont_found_request_course', 'Don\'t Found Requested Course', 'রিকোয়েস্ট কোর্স পাওয়া যাইনি', NULL, NULL, NULL, NULL, NULL, NULL),
(45, 'approved', 'Approved', 'অনুমোদিত', NULL, NULL, NULL, NULL, NULL, NULL),
(46, 'deny', 'Deny', 'প্রত্যাখ্যান করুন', NULL, NULL, NULL, NULL, NULL, NULL),
(47, 'manage_chapter', 'Manage Chapter', 'অধ্যায় পরিচালনা', NULL, NULL, NULL, NULL, NULL, NULL),
(48, 'add_chapter', 'Add Chapter', 'অধ্যায় যুক্ত', NULL, NULL, NULL, NULL, NULL, NULL),
(49, 'requested_chapter', 'Requested Chapter', 'অনুরোধ অধ্যায়', NULL, NULL, NULL, NULL, NULL, NULL),
(50, 'edit_chapter', 'Edit Chapter', 'চ্যাপ্টার পরিবর্তন ', NULL, NULL, NULL, NULL, NULL, NULL),
(51, 'chapter_list', 'Chapter List', 'অধ্যায় তালিকা', NULL, NULL, NULL, NULL, NULL, NULL),
(52, 'select_course', 'Select Course', 'নির্বাচন কোর্স ', NULL, NULL, NULL, NULL, NULL, NULL),
(53, 'chapter_name', 'Chapter Name', 'অধ্যায়ের নাম', NULL, NULL, NULL, NULL, NULL, NULL),
(54, 'request_chapter_list', 'Requested Chapter List', 'অনুরোধ অধ্যায় তালিকা', NULL, NULL, NULL, NULL, NULL, NULL),
(55, 'dont_found_request_chapter', 'Don\'t Found Requested Chapter', 'রিকোয়েস্ট চ্যাপ্টার পাওয়া যাইনি', NULL, NULL, NULL, NULL, NULL, NULL),
(56, 'manage_question', 'Manage Question', 'প্রশ্ন পরিচালনা', NULL, NULL, NULL, NULL, NULL, NULL),
(57, 'add_question', 'Add Question', 'প্রশ্ন যোগ', NULL, NULL, NULL, NULL, NULL, NULL),
(58, 'add_question_option', 'Add Question Option', 'প্রশ্ন বিকল্প যোগ', NULL, NULL, NULL, NULL, NULL, NULL),
(59, 'edit_question', 'Edit Question', 'প্রশ্ন পরিবর্তন ', NULL, NULL, NULL, NULL, NULL, NULL),
(60, 'answer', 'Answer', 'উত্তর', NULL, NULL, NULL, NULL, NULL, NULL),
(61, 'question_option', 'Question Option', 'বিকল্প প্রশ্ন ', NULL, NULL, NULL, NULL, NULL, NULL),
(62, 'option', 'Option', 'বিকল্প', NULL, NULL, NULL, NULL, NULL, NULL),
(63, 'question_list', 'Question List', 'প্রশ্ন তালিকা', NULL, NULL, NULL, NULL, NULL, NULL),
(64, 'option_1', 'Option 1', 'বিকল্প-১', NULL, NULL, NULL, NULL, NULL, NULL),
(65, 'option_2', 'Option 2', 'বিকল্প-২', NULL, NULL, NULL, NULL, NULL, NULL),
(66, 'option_3', 'Option 3', 'বিকল্প-৩', NULL, NULL, NULL, NULL, NULL, NULL),
(67, 'option_4', 'Option 4', 'বিকল্প-৪', NULL, NULL, NULL, NULL, NULL, NULL),
(68, 'option_5', 'Option 5', 'বিকল্প-৫', NULL, NULL, NULL, NULL, NULL, NULL),
(69, 'option_6', 'Option 6', 'বিকল্প-৬', NULL, NULL, NULL, NULL, NULL, NULL),
(70, 'is_answer', 'Is it answer?', 'এটা উত্তর ?', NULL, NULL, NULL, NULL, NULL, NULL),
(71, 'answer_type', 'Answer Type', 'উত্তরের ধরন', NULL, NULL, NULL, NULL, NULL, NULL),
(72, 'question_details', 'Question Details', 'বিস্তারিত প্রশ্ন ', NULL, NULL, NULL, NULL, NULL, NULL),
(73, 'option_image', 'Option Image', 'বিকল্প ইমেজ', NULL, NULL, NULL, NULL, NULL, NULL),
(74, 'option_details', 'Option Details', 'বিকল্প বিবরণ', NULL, NULL, NULL, NULL, NULL, NULL),
(75, 'manage_model_test', 'Manage Model Test', 'মডেল পরীক্ষা পরিচালনা', NULL, NULL, NULL, NULL, NULL, NULL),
(76, 'add_model_test', 'Add Model Test', 'মডেল পরীক্ষা যোগ', NULL, NULL, NULL, NULL, NULL, NULL),
(77, 'edit_model_test', 'Edit Model Test', 'মডেল টেস্ট পরিবর্তন ', NULL, NULL, NULL, NULL, NULL, NULL),
(78, 'subject', 'Subject', 'বিষয়', NULL, NULL, NULL, NULL, NULL, NULL),
(79, 'no_of_question', 'No Of Question', 'কয়টা  প্রশ্ন', NULL, NULL, NULL, NULL, NULL, NULL),
(80, 'model_test_list', 'Model Test List', 'মডেল পরীক্ষা তালিকা', NULL, NULL, NULL, NULL, NULL, NULL),
(81, 'model_test_name', 'Model Test Name', 'মডেল পরীক্ষা নাম', NULL, NULL, NULL, NULL, NULL, NULL),
(82, 'time_duration', 'Time Duration', 'সময়কাল', NULL, NULL, NULL, NULL, NULL, NULL),
(83, '01_hour', '01 Hour', '১ ঘন্টা', NULL, NULL, NULL, NULL, NULL, NULL),
(84, '02_hour', '02 Hour', '০২ ঘন্টা', NULL, NULL, NULL, NULL, NULL, NULL),
(85, '03_hour', '03 Hour', '০৩ ঘন্টা', NULL, NULL, NULL, NULL, NULL, NULL),
(86, '04_hour', '04 Hour', '০৪ ঘন্টা', NULL, NULL, NULL, NULL, NULL, NULL),
(87, '05_hour', '05 Hour', '০৫ ঘন্টা', NULL, NULL, NULL, NULL, NULL, NULL),
(88, '06_hour', '06 Hour', '০৬ ঘন্টা', NULL, NULL, NULL, NULL, NULL, NULL),
(89, '07_hour', '07 Hour', '০৭ ঘন্টা', NULL, NULL, NULL, NULL, NULL, NULL),
(90, '08_hour', '08 Hour', '০৮ ঘন্টা', NULL, NULL, NULL, NULL, NULL, NULL),
(91, '09_hour', '09 Hour', '০৯ ঘন্টা', NULL, NULL, NULL, NULL, NULL, NULL),
(92, '10_hour', '10 Hour', '১০ ঘন্টা', NULL, NULL, NULL, NULL, NULL, NULL),
(93, '11_hour', '11 Hour', '১১ ঘন্টা', NULL, NULL, NULL, NULL, NULL, NULL),
(94, '12_hour', '12 Hour', '১২ ঘন্টা', NULL, NULL, NULL, NULL, NULL, NULL),
(95, '05_minutes', '05 Minutes', '০৫ মিনিট', NULL, NULL, NULL, NULL, NULL, NULL),
(96, '10_minutes', '10 Minutes', '১০ মিনিট', NULL, NULL, NULL, NULL, NULL, NULL),
(97, '15_minutes', '15 Minutes', '১৫ মিনিট', NULL, NULL, NULL, NULL, NULL, NULL),
(98, '20_minutes', '20 Minutes', '২০ মিনিট', NULL, NULL, NULL, NULL, NULL, NULL),
(99, '30_minutes', '30  Minutes', '৩০ মিনিট', NULL, NULL, NULL, NULL, NULL, NULL),
(100, '35_minutes', '45 Minutes', '৩৫ মিনিট', NULL, NULL, NULL, NULL, NULL, NULL),
(101, '40_minutes', '40 Minutes', '৪০ মিনিট', NULL, NULL, NULL, NULL, NULL, NULL),
(102, '45_minutes', '45 Minutes', '৪৫ মিনিট', NULL, NULL, NULL, NULL, NULL, NULL),
(103, '50_minutes', '50 Minutes', '৫০ মিনিট', NULL, NULL, NULL, NULL, NULL, NULL),
(104, '55_minutes', '55 Minutes', '৫৫ মিনিট', NULL, NULL, NULL, NULL, NULL, NULL),
(105, '58_minutes', '58 Minutes', '৫৮ মিনিট', NULL, NULL, NULL, NULL, NULL, NULL),
(106, '00_hour', '00 Hour', '০০ ঘণ্টা', NULL, NULL, NULL, NULL, NULL, NULL),
(107, '00_minutes', '00  Minutes', '০০ মিনিট', NULL, NULL, NULL, NULL, NULL, NULL),
(108, 'generate', 'Generate', 'তৈরী করুণ', NULL, NULL, NULL, NULL, NULL, NULL),
(109, 'select_hour', 'Select Hour', 'ঘন্টা নির্বাচন করুণ', NULL, NULL, NULL, NULL, NULL, NULL),
(110, 'select_minutes', 'Select Minutes', 'মিনিট নির্বাচন করুণ', NULL, NULL, NULL, NULL, NULL, NULL),
(111, 'manage_operator', 'Manage Operator', 'অপারেটর পরিচালনা', NULL, NULL, NULL, NULL, NULL, NULL),
(112, 'add_operator', 'Add Operator', 'অপারেটর যোগ', NULL, NULL, NULL, NULL, NULL, NULL),
(113, 'edit_operator', 'Edit Operator', 'অপারেটর পরিবর্তন ', NULL, NULL, NULL, NULL, NULL, NULL),
(114, 'operator_list', 'Operator List', 'অপারেটর তালিকা', NULL, NULL, NULL, NULL, NULL, NULL),
(115, 'operator_name', 'Operator Name', 'অপারেটরের নাম', NULL, NULL, NULL, NULL, NULL, NULL),
(116, 'operator_email', 'OperatorEmail', 'অপারেটর ইমেইল', NULL, NULL, NULL, NULL, NULL, NULL),
(117, 'assign_course', 'Assign Course', 'নির্দিষ্ট কোর্সে', NULL, NULL, NULL, NULL, NULL, NULL),
(118, 'edit', 'Edit', 'পরিবর্তন ', NULL, NULL, NULL, NULL, NULL, NULL),
(119, 'email', 'Email', 'ই-মেল', NULL, NULL, NULL, NULL, NULL, NULL),
(120, 'mobile', 'Mobile', 'মোবাইল ', NULL, NULL, NULL, NULL, NULL, NULL),
(121, 'password', 'Password', 'পিন', NULL, NULL, NULL, NULL, NULL, NULL),
(122, 'confirm_password', 'Confirm Password', 'পাসওয়ার্ড নিশ্চিত করুন', NULL, NULL, NULL, NULL, NULL, NULL),
(123, 'create', 'Create', 'নির্মাণ করা', NULL, NULL, NULL, NULL, NULL, NULL),
(124, 'teacher_name', 'Teacher Name', 'শিক্ষক এর নাম', NULL, NULL, NULL, NULL, NULL, NULL),
(125, 'teacher_email', 'Teacher Email', 'শিক্ষক এর  ই-মেইল', NULL, NULL, NULL, NULL, NULL, NULL),
(126, 'mobile_no', 'Mobile No', 'মোবাইল নাম্বার', NULL, NULL, NULL, NULL, NULL, NULL),
(127, 'delete', 'Delete', 'মুছে ফেলুন', NULL, NULL, NULL, NULL, NULL, NULL),
(128, 'no_data_found', 'No Data Found!', 'তথ্য পাওয়া জাইনি', NULL, NULL, NULL, NULL, NULL, NULL),
(129, 'active_teacher', 'All Active Teacher', 'সক্রিয় শিক্ষক', NULL, NULL, NULL, NULL, NULL, NULL),
(130, 'new_register_teacher', 'New Register Teacher', 'নতুন রেজিস্টার শিক্ষক', NULL, NULL, NULL, NULL, NULL, NULL),
(131, 'inactive_teacher', 'All Inactive Teacher', 'নিষ্ক্রিয় শিক্ষক', NULL, NULL, NULL, NULL, NULL, NULL),
(132, 'add_new_teacher', 'Add New Teacher', 'নতুন টিচার যোগ', NULL, NULL, NULL, NULL, NULL, NULL),
(133, 'edit_teacher', 'Edit Teacher', 'শিক্ষক পরিবর্তন ', NULL, NULL, NULL, NULL, NULL, NULL),
(134, 'login', 'Login', 'প্রবেশ করুণ ', NULL, NULL, NULL, NULL, NULL, NULL),
(135, 'full_name', 'Full Name', 'পুরা নাম দিন', NULL, NULL, NULL, NULL, NULL, NULL),
(136, 'general_account_setting', 'General Account Setting', 'সাধারণ অ্যাকাউন্ট সেটিং', NULL, NULL, NULL, NULL, NULL, NULL),
(137, 'cancel', 'Cancel', 'বাতিল', NULL, NULL, NULL, NULL, NULL, NULL),
(138, 'current', 'Current', 'বর্তমান', NULL, NULL, NULL, NULL, NULL, NULL),
(139, 'new', 'New', 'নতুন ', NULL, NULL, NULL, NULL, NULL, NULL),
(140, 're_type_new', 'Re-Type-Password', 'পুনরায় নতুন পিন দিন', NULL, NULL, NULL, NULL, NULL, NULL),
(141, 'enter_new_password', 'Enter New Password', 'নতুন পিন দিন', NULL, NULL, NULL, NULL, NULL, NULL),
(142, 'enter_old_password', 'Enter Old Password', 'পুরাতন পিন দিন', NULL, NULL, NULL, NULL, NULL, NULL),
(143, 'admin_login_area', 'Administration Login Area', 'অ্যাডমিন লগইন এলাকা', NULL, NULL, NULL, NULL, NULL, NULL),
(144, 'successfully_changed', 'Successfully Changed !', 'সফলভাবে পরিবর্তন হয়েছে ', NULL, NULL, NULL, NULL, NULL, NULL),
(145, 'successfully_update', 'Update Successfully  !', 'সফলভাবে পরিবর্তন হয়েছে ', NULL, NULL, NULL, NULL, NULL, NULL),
(146, 'successfully_insert', 'Successfully Inserted!', 'সফলভাবে যোগ করা হয়েছে ', NULL, NULL, NULL, NULL, NULL, NULL),
(147, 'successfully_approved_requested_class', 'Succeessfully Approved Requested Class !', 'সফলভাবে  অনুরোধ করা  শ্রেণী  অনুমোদন হয়েছে ', NULL, NULL, NULL, NULL, NULL, NULL),
(148, 'successfully_deleted_requested_class', 'Successfully Delete Requested Class !', 'সফলভাবে  অনুরোধ শ্রেণী  মুছে ফেলা  হয়েছে ', NULL, NULL, NULL, NULL, NULL, NULL),
(149, 'successfully_approved_requested_chapter', 'Succeessfully Approved Requested Chapter !', 'সফলভাবে  অনুরোধ করা  অধ্যায়  অনুমোদন হয়েছে ', NULL, NULL, NULL, NULL, NULL, NULL),
(150, 'successfully_deleted_requested_chapter', 'Successfully Delete Requested Chapter !', 'সফলভাবে  অনুরোধ অধ্যায় মুছে ফেলা  হয়েছে ', NULL, NULL, NULL, NULL, NULL, NULL),
(151, 'successfully_approved_requested_course', 'Succeessfully Approved Requested Course !', 'সফলভাবে  অনুরোধ করা  কোর্স  অনুমোদন হয়েছে ', NULL, NULL, NULL, NULL, NULL, NULL),
(152, 'successfully_deleted_requested_course', 'Successfully Delete Requested Course !', 'সফলভাবে  অনুরোধ কোর্স  মুছে ফেলা  হয়েছে ', NULL, NULL, NULL, NULL, NULL, NULL),
(153, 'successfully_delete', 'Succeessfully Delete !', 'সফলভাবে মুছে ফেলা  হয়েছে ', NULL, NULL, NULL, NULL, NULL, NULL),
(154, 'successfully_status_changed', 'Successfully Status Changed !', 'সফলভাবে অবস্থা পরিবর্তন হয়েছে ', NULL, NULL, NULL, NULL, NULL, NULL),
(155, 'successfully_added_question', 'Successfully Added Question !', 'সফলভাবে  প্রশ্ন যোগ করা হয়েছে ', NULL, NULL, NULL, NULL, NULL, NULL),
(156, 'successfully_option_add', 'Successfully Option Add', 'সফলভাবে  অপশন যোগ করা হয়েছে ', NULL, NULL, NULL, NULL, NULL, NULL),
(157, 'successfully_option_add_another', 'Successfully Add Option And Another', 'সফলভাবে  অপশন যোগ করা হয়েছে , বিকল্প আরেকটি যোগ করুণ ', NULL, NULL, NULL, NULL, NULL, NULL),
(158, 'teacher_successfully_approved', 'Teacher Successfully Approved', 'শিক্ষক সফলভাবে অনুমোদন হয়েছে ', NULL, NULL, NULL, NULL, NULL, NULL),
(159, 'teacher_not_approved', 'Teacher Not Approved', 'শিক্ষক অনুমোদন হয়নি', NULL, NULL, NULL, NULL, NULL, NULL),
(160, 'sorry_password_dosent_match', 'Sorry Password Does not Match !', 'দুঃখিত পাসওয়ার্ড মিলছে না', NULL, NULL, NULL, NULL, NULL, NULL),
(161, 'successfully_password_changed', 'Successfully Password Changed !', 'সফলভাবে পাসওয়ার্ড পরিবর্তন হয়েছে ', NULL, NULL, NULL, NULL, NULL, NULL),
(162, 'language_settings', 'Language Settings', 'ভাষা ব্যাবস্থা', NULL, NULL, NULL, NULL, NULL, NULL),
(163, 'batch', 'Batch', 'শ্রেণীবদ্ধ', NULL, NULL, NULL, NULL, NULL, NULL),
(164, 'student', 'Student', 'ছাত্র', NULL, NULL, NULL, NULL, NULL, NULL),
(165, 'exam', 'Exam', 'পরীক্ষা', NULL, NULL, NULL, NULL, NULL, NULL),
(166, 'request', 'Request', 'অনুরোধ', NULL, NULL, NULL, NULL, NULL, NULL),
(167, 'select_chapter', 'Select Chapter', 'অধ্যায় নির্বাচন ', NULL, NULL, NULL, NULL, NULL, NULL),
(168, 'manage_batch', 'Manage Batch', 'ব্যাচ পরিচালনা', NULL, NULL, NULL, NULL, NULL, NULL),
(169, 'add_batch', 'Add Batch', 'শ্রেণীবদ্ধ করুন', NULL, NULL, NULL, NULL, NULL, NULL),
(170, 'edit_batch', 'Edit Batch', ' ব্যাচ পরিবর্তন ', NULL, NULL, NULL, NULL, NULL, NULL),
(171, 'batch_list', 'All Batch List', 'ব্যাচ তালিকা', NULL, NULL, NULL, NULL, NULL, NULL),
(172, 'batch_name', 'Batch Name', 'ব্যাচ নাম', NULL, NULL, NULL, NULL, NULL, NULL),
(173, 'no_of_student', 'No Of Student', 'ছাত্র সংখ্যা', NULL, NULL, NULL, NULL, NULL, NULL),
(174, 'no_student_registered_by_this_id', 'No Student Registered  By This ID ', 'কোন ছাত্র এই আইডি দ্বারা নিবন্ধিত নই ', NULL, NULL, NULL, NULL, NULL, NULL),
(175, 'already_exists_this_batch', 'Student Already Exists This Batch', 'ইতিমধ্যে এই ব্যাচ বিদ্যমান', NULL, NULL, NULL, NULL, NULL, NULL),
(176, 'add_student', 'Add Student', 'ছাত্র  যুক্ত করুণ', NULL, NULL, NULL, NULL, NULL, NULL),
(177, 'manage_student', 'Manage Student', 'ছাত্র  পরিচালনা', NULL, NULL, NULL, NULL, NULL, NULL),
(178, 'search_by_batch', 'Search By Batch', 'ব্যাচ দ্বারা অনুসন্ধান', NULL, NULL, NULL, NULL, NULL, NULL),
(179, 'all_student', 'All Student', 'সব ছাত্র', NULL, NULL, NULL, NULL, NULL, NULL),
(180, 'student_name', 'Student Name', 'ছাত্রের  নাম', NULL, NULL, NULL, NULL, NULL, NULL),
(181, 'student_email', 'Student Email', ' ছাত্রের  ই-মেইল ', NULL, NULL, NULL, NULL, NULL, NULL),
(182, 'contact_no', 'Contact No', 'যোগাযোগের নম্বর', NULL, NULL, NULL, NULL, NULL, NULL),
(183, 'select_batch_name', 'Select Batch Name', 'নির্বাচিত ব্যাচ নাম', NULL, NULL, NULL, NULL, NULL, NULL),
(184, 'add', 'Add', 'যুক্ত করুণ ', NULL, NULL, NULL, NULL, NULL, NULL),
(185, 'manage_exam', 'Manage Exam', 'পরীক্ষা  পরিচালনা', NULL, NULL, NULL, NULL, NULL, NULL),
(186, 'add_exam', 'Add Exam', 'পরীক্ষা যুক্ত করুণ', NULL, NULL, NULL, NULL, NULL, NULL),
(187, 'delete_exam', 'Delete Exam', 'পরীক্ষার মুছে ফেলুন', NULL, NULL, NULL, NULL, NULL, NULL),
(188, 'exam_assign', 'Exam Assign', 'পরীক্ষার বরাদ্দ', NULL, NULL, NULL, NULL, NULL, NULL),
(189, 'assign_exam_list', 'Assigned Exam List', 'পরীক্ষার তালিকা ধার্য', NULL, NULL, NULL, NULL, NULL, NULL),
(190, 'student_detail_result', 'Student Details Result', 'ছাত্রের  বিস্তারিত ফলাফল', NULL, NULL, NULL, NULL, NULL, NULL),
(191, 'student_result', 'Student Result', 'ছাত্রের  ফলাফল ', NULL, NULL, NULL, NULL, NULL, NULL),
(192, 'error_in_your_url', 'Error In Your URL !', 'আপনার URL টি  ভুল !', NULL, NULL, NULL, NULL, NULL, NULL),
(193, 'assign_exam_update_successfully', 'Assigned Exam Update Successfully !', ' পরীক্ষা সাফল্যের সাথে হালনাগাদ হয়েছে ', NULL, NULL, NULL, NULL, NULL, NULL),
(194, 'assigned_exam_successfully', 'Assigned Exam Course', ' পরীক্ষা সাফল্যের সাথে নিয়োগ হয়েছে ', NULL, NULL, NULL, NULL, NULL, NULL),
(195, 'selected_question_cancelled', 'Selected Question Cancelled', 'নির্বাচিত প্রশ্ন বাতিল', NULL, NULL, NULL, NULL, NULL, NULL),
(196, 'question_set_is_create_successfully', 'Question Set is Created Successfully !', 'প্রশ্ন সেট সফলভাবে তৈরি হয়েছে ', NULL, NULL, NULL, NULL, NULL, NULL),
(197, 'exam_list', 'Exam List', 'পরীক্ষার তালিকা', NULL, NULL, NULL, NULL, NULL, NULL),
(198, 'exam_name', 'Exam Name', 'পরীক্ষার নাম', NULL, NULL, NULL, NULL, NULL, NULL),
(199, 'generated_procedure', 'Generate Procedure', 'উত্পন্ন পদ্ধতি', NULL, NULL, NULL, NULL, NULL, NULL),
(200, 'create_new_exam', 'Create New Exam', 'নতুন পরীক্ষায় তৈরি', NULL, NULL, NULL, NULL, NULL, NULL),
(201, 'exam_details', 'Exam Details', 'পরীক্ষার বিস্তারিত', NULL, NULL, NULL, NULL, NULL, NULL),
(202, 'question_source', 'Question Source', 'প্রশ্ন উৎস ', NULL, NULL, NULL, NULL, NULL, NULL),
(203, 'computer_generate_question_bank', 'Computer Generate Question Bank', 'কম্পিউটার প্রশ্ন ব্যাংক জেনারেট', NULL, NULL, NULL, NULL, NULL, NULL),
(204, 'my_question_bank_randomly', 'My Question Bank Randomly', 'আমার প্রশ্ন ব্যাংক  রেনডমলি ', NULL, NULL, NULL, NULL, NULL, NULL),
(205, 'my_question_bank_sequencially', 'My Question Ban Sequencially', 'আমার প্রশ্ন ব্যাংক ক্রমানুশারে', NULL, NULL, NULL, NULL, NULL, NULL),
(206, 'choose_question_form_question_bank', 'Choose Question Form Question Bank', 'প্রশ্ন ফর্ম প্রশ্ন ব্যাংক চয়ন', NULL, NULL, NULL, NULL, NULL, NULL),
(207, 'subject_name', 'Subject Name', 'বিষয়ের নাম ', NULL, NULL, NULL, NULL, NULL, NULL),
(208, 'press_ctrl_key_for_multiple_select', 'Press Ctrl Key For Multiple Select', 'একাধিক নির্বাচন জন্য (Ctrl) কী চাপুন ', NULL, NULL, NULL, NULL, NULL, NULL),
(209, 'next_step', 'Next Step', 'পরবর্তী ধাপ', NULL, NULL, NULL, NULL, NULL, NULL),
(210, 'create_exam', 'Create Exam', 'পরীক্ষার তৈরি', NULL, NULL, NULL, NULL, NULL, NULL),
(211, 'exam_assign_in_batch', 'Exam Assign In Batch', 'ব্যাচ পরীক্ষার বরাদ্দ', NULL, NULL, NULL, NULL, NULL, NULL),
(212, 'select_batch', 'Select Batch', ' ব্যাচ নির্বাচন', NULL, NULL, NULL, NULL, NULL, NULL),
(213, 'select_exam', 'Select Exam', 'পরীক্ষা নির্বাচন করুণ', NULL, NULL, NULL, NULL, NULL, NULL),
(214, 'assign', 'Assign', 'নিযুক্ত করুন', NULL, NULL, NULL, NULL, NULL, NULL),
(215, 'successfully_request_send', 'Successfully Request Send', 'সফলভাবে অনুরোধ পাঠান হয়েছে ', NULL, NULL, NULL, NULL, NULL, NULL),
(216, 'request_chapter', 'Request Chapter', 'অধ্যায় অনুরোধ ', NULL, NULL, NULL, NULL, NULL, NULL),
(217, 'request_for_class', 'Request For Class', 'শ্রেণীর জন্য অনুরোধ', NULL, NULL, NULL, NULL, NULL, NULL),
(218, 'send_request', 'Send Request', 'অনুরোধ পাঠান', NULL, NULL, NULL, NULL, NULL, NULL),
(219, 'request_for_course', 'Request For Course', 'কোর্স এর জন্য অনুরোধ', NULL, NULL, NULL, NULL, NULL, NULL),
(220, 'request_for_chapter', 'Request For Chapter', 'অধ্যায়ের জন্য অনুরোধ', NULL, NULL, NULL, NULL, NULL, NULL),
(221, 'to_save_this_setting_enter_password', 'To Save This Setting Enter Password', 'এই সেটিং সংরক্ষণ করতে পুনরায় পাসওয়ার্ড লিখুন', NULL, NULL, NULL, NULL, NULL, NULL),
(222, 'search_question', 'Search Question', 'প্রশ্ন অনুসন্ধান', NULL, NULL, NULL, NULL, NULL, NULL),
(223, 'question_detalils', 'Question Details', 'প্রশ্ন বিস্তারিত', NULL, NULL, NULL, NULL, NULL, NULL),
(224, 'teacher_login_area', 'Teacher Login Area', 'শিক্ষক  লগইন এলাকা', NULL, NULL, NULL, NULL, NULL, NULL),
(225, 'operator_login_area', 'Operator Login Area', 'অপারেটর  লগইন এলাকা', NULL, NULL, NULL, NULL, NULL, NULL),
(226, 'add_another_option', 'Add Another Option For This Question', 'এই প্রশ্নের জন্য অন্য কোনো বিকল্প যোগ করুণ ', NULL, NULL, NULL, NULL, NULL, NULL),
(227, 'company', 'Company', 'কোম্পানি', NULL, NULL, NULL, NULL, NULL, NULL),
(228, 'manage_company', 'Manage Company', 'কোম্পানি পরিচালনা', NULL, NULL, NULL, NULL, NULL, NULL),
(229, 'company_list', 'Company List', 'কোম্পানির তালিকা', NULL, NULL, NULL, NULL, NULL, NULL),
(230, 'company_name', 'Company Name', 'কোম্পানির নাম', NULL, NULL, NULL, NULL, NULL, NULL),
(231, 'company_email', 'Company Email', 'কোম্পানির ই-মেইল', NULL, NULL, NULL, NULL, NULL, NULL),
(232, 'company_address', 'Company Address', 'প্রতিস্থান এর ঠিকানা', NULL, NULL, NULL, NULL, NULL, NULL),
(233, 'company_mobile', 'Company Mobile', 'কোম্পানির মোবাইল', NULL, NULL, NULL, NULL, NULL, NULL),
(234, 'company_website', 'Company Website', 'কোম্পানির ওয়েবসাইট', NULL, NULL, NULL, NULL, NULL, NULL),
(235, 'edit_company', 'Edit Company', 'কোম্পানি পরিবর্তন ', NULL, NULL, NULL, NULL, NULL, NULL),
(236, 'exam_assign_in_batch_edit', 'Exam Assign In Batch Edit', 'ব্যাচ সম্পাদনা পরীক্ষার বরাদ্দ', NULL, NULL, NULL, NULL, NULL, NULL),
(237, 'student_list', 'Student List', 'ছাত্র তালিকা', NULL, NULL, NULL, NULL, NULL, NULL),
(238, 'user_name', 'User Name', 'ব্যবহারকারীর নাম', NULL, NULL, NULL, NULL, NULL, NULL),
(239, 'edit_student', 'Edit Student', 'ছাত্র পরিবর্তন ', NULL, NULL, NULL, NULL, NULL, NULL),
(240, 'setting', 'Setting', 'সেটিং', NULL, NULL, NULL, NULL, NULL, NULL),
(241, 'assigned_exam_result', 'Assigned Exam Result', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(242, 'inactive', 'Inactive', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(243, 'active', 'Active', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(244, 'not_now', 'Not Now', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(245, 'seacrh_by_batch', 'Search By Batch', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(246, 'select_image', 'Select Image', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(247, 'image', 'Image', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(248, 'fb_setting', 'Facebook', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(249, 'google_setting', 'Google', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(250, 'facebook_config', 'Facebook Configuration', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(251, 'manage_facebook', 'Manage Facebook', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(252, 'edit_facebook', 'Edit Facebook', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(253, 'fb_app_id', 'Facebook App ID', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(254, 'fb_app_secret', 'Facebook App Secret', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(255, 'id', 'SL', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(256, 'edit_fb_config', 'Edit Facebook Config', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(257, 'google_client_id', 'Google Client ID', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(258, 'google_secret_id', 'Google Secret ID', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(259, 'google_api_key', 'Google API Key', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(260, 'google_config', 'Google Configuration', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(261, 'manage_google', 'Manage Google', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(262, 'edit_google', 'Edit Google', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(263, 'select_file', 'Select File', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(264, 'youtube_url', 'Youtube URL', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(265, 'course_details', 'Course Details', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(266, 'image_not_uploaded', 'Image Not Uplaoded !', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(267, 'model_test_details', 'Model Test Details', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(268, 'start_exam', 'Start Exam', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(269, 'start_model_test', 'Start Model Test', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(270, 'sign_in', 'Sign In', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(271, 'new_added_courses', 'New <b>Added Courses</b>', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(272, 'all_courses', 'All <b>Courses</b>', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(273, 'what_are_you_looking_for', 'If you have any question you can ask below or enter what you are looking for!', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(274, 'have_any_query', 'Have Any Query ?', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(275, 'what_you_search', 'Enter what you want to search', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(276, 'types_your_term_here', 'What you Like to Search !', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(277, 'popular_courses', 'Popular Courses', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(278, 'hi', 'HI', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(279, 'exam_statics', 'Exam Statics', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(280, 'profile_settings', 'Profile Settings', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(281, 'exam_schedule', 'Exam Schedule', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(282, 'copyright_all_right_reserved', 'Copyright All Right Reserved', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(283, 'developed_by', 'Developed By', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(284, 'exam_now', 'Exam Now', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(285, 'instructions', 'Instructions', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(286, 'instruction_1', 'Tick one or more chapter/sub-subject or Select all', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(287, 'instruction_2', 'Write down the No. of question and click Start Exam button.', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(288, 'instruction_3', 'Time countdown will begin as soon as you click the Start Exam button.', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(289, 'count_your_score', 'Count Your Score', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(290, 'start_an_exam', 'Start Exam', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(291, 'chapter_not_found', 'Chapter Not Found !', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(292, 'related_courses', 'Related Courses', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(293, 'join_our_global_community', 'Join our growing global community of over 25 million learners.', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(294, 'count_your_score_details', 'You will get 1 point for each correct answer. At the end of the Quiz, your total score will be displayed.', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(295, 'time', 'Time', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(296, 'previous', 'Previous', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(297, 'next', 'Next', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(298, 'finish', 'Finish', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(299, 'question_wise_result', 'Question Wise Result', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(300, 'result_summarized', 'Result Summary', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(301, 'your_answered', 'Your Answere', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(302, 'preview', 'Preview', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(303, 'total_time', 'Total Time', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(304, 'precentage', 'Percentage', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(305, 'score', 'Score', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(306, 'incorrect_answer', 'Incorrect Answer', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(307, 'correct_answer', 'Correct Answer', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(308, 'answer_questions', 'Answer Questions', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(309, 'result_view', 'Result View', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(310, 'preview_your_result', 'Preview Your Result', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(311, 'exam_date', 'Exam Date', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(312, 'view', 'View', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(313, 'all_model_test', 'All Model Test', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(314, 'advertisement', 'Advertisement', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(315, 'manage_advertisement', 'Manage Advertisement', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(316, 'edit_advertisement', 'Edit Advertisement', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(317, 'add_advertisement', 'Add Advertisement', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(318, 'adds_type', 'Adds Type', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(319, 'add_url', 'Add Url', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(320, 'advertisement_list', 'Advertisement List', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(321, 'sl', 'id', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(322, 'add_position', 'Ads Postition', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(323, 'add_code', 'Ads Preview', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(324, 'add_status', 'Add Status', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(325, 'enter_login_info', 'Please enter your credentials to login.', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(326, 'register', 'Register', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(327, 'facebook', 'Facebook', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(328, 'google', 'Google', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(329, 'unique_email', 'Your email to contact', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(330, 'strong_password', 'Your hard to guess password', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(331, 'unique_username', ' Your unique username to app', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(332, 'unique_mobile', 'Your mobile no to contact', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(333, 'reset_password', 'Please repeat your pasword', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(334, 'others', 'Others', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(335, 'user_type', 'User Type ', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(336, 'total_question', 'Total Questions', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(337, 'sign_up', 'Sign Up', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(338, 'related_model_test', 'Related Model Test', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(339, 'web_setting', 'Web Setting', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(340, 'manage_setting', 'Manage Web Setting', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(341, 'update_web_setting', 'Update Web Setting', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(342, 'site_logo', 'Site Logo', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(343, 'back_image', 'Background Image', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(344, 'site_link', 'Site Link', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(345, 'copyright_text', 'Copyright Text', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(346, 'footer_image', 'Footer Image', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(347, 'footer_image_update', 'Footer Image Update', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(348, 'image_1', 'Image 1', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(349, 'image_2', 'Image 2', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(350, 'image_3', 'Image 3', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(351, 'image_url_3', 'Image URL 3', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(352, 'image_url_2', 'Image URL 2', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(353, 'image_url_1', 'Image URL 1', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(354, 'footer_link_name', 'bdtask', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(355, 'search_result', 'Search Result', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(356, 'select_ads_position', 'Select Ads Position', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(357, 'top_ads', 'Top Ads', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(358, 'left_ads', 'Left Ads', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(359, 'ads_type', 'Ads Type', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(360, 'select_ads_type', 'Select Ads Type', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(361, 'embed_code', 'Embed Code', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(362, 'ads_image', 'Ads Image', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(363, 'ads_position', 'Ads Position', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(364, 'model_tests', 'Model Tests', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(365, 'assigned_exam', 'Assigned Exam', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(366, 'personal_exam', 'Personal Exam', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(367, 'details', 'Details', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(368, 'participate_exam', 'Partipate Exam', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(369, 'admin_dashboard', 'Admin Dashboard', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(370, 'data_not_found', 'No Data Found !', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(371, 'favicon', 'Favicon', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(372, 'view_result_summary', 'View Result Summary', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(373, 'lesson', 'Lesson', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(374, 'questions', 'Questions', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(375, 'total_students', 'Total Student', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(376, 'total_chapter', 'Total Chapter', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(377, 'total_opetator', 'Total Operator', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(378, 'total_classes', 'Total Class', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(379, 'total_courses', 'Total Course', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(380, 'total_modeltest', 'Total Model Test', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(381, 'total_questions', 'Total Question', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(382, 'total_teachers', 'Total Teacher', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(383, 'sign_up_registration_message', 'Registration Successfull.', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(384, 'total_batch', 'Total Batch', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(385, 'total_exam', 'Total Exam', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(386, 'tutor_dashboard', 'Tutor Dashboard', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(387, 'you_already_logged_in', 'You have already logged in,To do new registration please first log out', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(388, 'no_registration_code', 'Error!! No registration code in URL', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(389, 'your_account_successfully_activated', 'Your Account Activate Successfully.', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(390, 'you_fail_to_registerd', 'You Fail To Registered', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(391, 'change_successfully', 'Changed Successfully.', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(392, 'password_does_not_match', 'Password Does Not Match !', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(393, 'unique_image', 'Your profile picture.', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(394, 'please_select_a_chapter', 'Please Select A Chapter.', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(395, 'no_question_availabe', 'No Question Select !', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(396, 'out_of_question', 'You Enter Out Of Question !', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(397, 'no_exam_found', 'No Exam Found !', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(398, 'no_question_found', 'No Question Found!', NULL, NULL, NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `model_test_details`
--

CREATE TABLE `model_test_details` (
  `model_test_id` int(11) NOT NULL,
  `question_ids` longtext CHARACTER SET latin1 NOT NULL,
  `status` int(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `model_test_details`
--

INSERT INTO `model_test_details` (`model_test_id`, `question_ids`, `status`) VALUES
(1, '{\"0\":\"1\"}', 1),
(2, '{\"0\":\"1\"}', 1),
(3, '{\"0\":\"3\"}', 1),
(4, '{\"0\":\"4\"}', 1),
(5, '{\"0\":\"6\",\"1\":\"7\",\"2\":\"8\",\"3\":\"9\",\"4\":\"10\",\"5\":\"14\",\"6\":\"13\",\"7\":\"11\",\"8\":\"12\"}', 1),
(6, '{\"0\":\"21\",\"1\":\"22\",\"2\":\"23\"}', 1),
(7, '{\"0\":\"23\",\"1\":\"21\",\"2\":\"22\"}', 1),
(8, '{\"0\":\"29\",\"1\":\"25\",\"2\":\"24\"}', 1),
(9, '{\"0\":\"17\",\"1\":\"16\",\"2\":\"15\"}', 1),
(10, '{\"0\":\"24\",\"1\":\"29\",\"2\":\"25\"}', 1),
(11, '{\"0\":\"24\",\"1\":\"25\",\"2\":\"29\"}', 1),
(12, '{\"0\":\"29\",\"1\":\"25\",\"2\":\"24\"}', 1),
(13, '{\"0\":\"18\",\"1\":\"23\",\"2\":\"19\"}', 1);

-- --------------------------------------------------------

--
-- Table structure for table `model_test_head`
--

CREATE TABLE `model_test_head` (
  `model_test_id` int(11) NOT NULL,
  `model_test_settings_id` int(11) NOT NULL,
  `user_id` varchar(255) CHARACTER SET latin1 NOT NULL,
  `number_of_question` int(5) NOT NULL,
  `duration` float NOT NULL,
  `subject_ids` longtext CHARACTER SET latin1 NOT NULL,
  `status` int(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `model_test_head`
--

INSERT INTO `model_test_head` (`model_test_id`, `model_test_settings_id`, `user_id`, `number_of_question`, `duration`, `subject_ids`, `status`) VALUES
(1, 1, '1', 1, 0, '{\"0\":\"1\"}', 1),
(2, 1, 'mf3S3DLgMzIc5k1hx6gS', 1, 0, '{\"0\":\"1\"}', 1),
(3, 1, 'k0U4HPuGigsHPhKCaiap', 1, 0, '{\"0\":\"1\"}', 1),
(4, 1, 'k0U4HPuGigsHPhKCaiap', 1, 0, '{\"0\":\"1\"}', 1),
(5, 2, '1', 9, 0, '{\"0\":\"5\",\"1\":\"6\"}', 1),
(6, 5, 'mf3S3DLgMzIc5k1hx6gS', 3, 0, '{\"0\":\"9\"}', 1),
(7, 5, 'mf3S3DLgMzIc5k1hx6gS', 3, 0, '{\"0\":\"9\"}', 1),
(8, 6, '1', 3, 0, '{\"0\":\"4\"}', 1),
(9, 3, 'mf3S3DLgMzIc5k1hx6gS', 3, 0, '{\"0\":\"7\"}', 1),
(10, 6, 'mf3S3DLgMzIc5k1hx6gS', 3, 0, '{\"0\":\"4\"}', 1),
(11, 6, 'mf3S3DLgMzIc5k1hx6gS', 3, 0, '{\"0\":\"4\"}', 1),
(12, 6, '1', 3, 0, '{\"0\":\"4\"}', 1),
(13, 4, 'fXmO2pltg7YBzqDVm2LX', 3, 0, '{\"0\":\"8\"}', 1);

-- --------------------------------------------------------

--
-- Table structure for table `model_test_result`
--

CREATE TABLE `model_test_result` (
  `model_test_id` int(11) NOT NULL,
  `user_id` varchar(255) CHARACTER SET latin1 NOT NULL,
  `model_test_settings_id` int(11) NOT NULL,
  `attend_date` datetime NOT NULL,
  `number_of_question` int(8) NOT NULL,
  `duration` varchar(100) CHARACTER SET latin1 NOT NULL,
  `total_answered` int(11) NOT NULL,
  `marks` varchar(50) CHARACTER SET latin1 NOT NULL,
  `status` int(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `model_test_result`
--

INSERT INTO `model_test_result` (`model_test_id`, `user_id`, `model_test_settings_id`, `attend_date`, `number_of_question`, `duration`, `total_answered`, `marks`, `status`) VALUES
(1, '1', 1, '2017-02-22 08:29:53', 1, '00:00:06', 1, '0', 1),
(2, 'mf3S3DLgMzIc5k1hx6gS', 1, '2017-02-23 06:58:57', 1, '00:00:07', 1, '0', 1),
(3, 'k0U4HPuGigsHPhKCaiap', 1, '2017-02-23 09:17:08', 1, '00:00:16', 1, '0', 1),
(4, 'k0U4HPuGigsHPhKCaiap', 1, '2017-02-23 09:17:44', 1, '00:00:23', 1, '0', 1),
(5, '1', 2, '2017-02-25 07:27:19', 9, '00:00:59', 9, '22.22', 1),
(6, 'mf3S3DLgMzIc5k1hx6gS', 5, '2017-02-26 01:21:59', 3, '00:00:19', 2, '0', 1),
(7, 'mf3S3DLgMzIc5k1hx6gS', 5, '2017-02-26 02:56:12', 3, '00:00:10', 3, '66.67', 1),
(8, '1', 6, '2017-02-26 05:49:35', 3, '00:00:11', 3, '0', 1),
(9, 'mf3S3DLgMzIc5k1hx6gS', 3, '2017-02-26 06:50:16', 3, '00:00:11', 3, '0', 1),
(10, 'mf3S3DLgMzIc5k1hx6gS', 6, '2017-02-26 06:50:49', 3, '00:00:09', 3, '0', 1),
(11, 'mf3S3DLgMzIc5k1hx6gS', 6, '2017-02-26 06:51:31', 3, '00:00:10', 3, '100', 1),
(12, '1', 6, '2017-02-26 06:55:39', 3, '00:00:10', 3, '0', 1);

-- --------------------------------------------------------

--
-- Table structure for table `model_test_result_details`
--

CREATE TABLE `model_test_result_details` (
  `model_test_id` int(11) NOT NULL,
  `user_id` varchar(255) CHARACTER SET latin1 NOT NULL,
  `questions_ids` text CHARACTER SET latin1 NOT NULL,
  `answers_ids` text CHARACTER SET latin1 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `model_test_result_details`
--

INSERT INTO `model_test_result_details` (`model_test_id`, `user_id`, `questions_ids`, `answers_ids`) VALUES
(1, '1', '{\"0\":\"1\"}', '{\"1\":{\"question_id\":\"1\",\"option_ids\":{\"0\":\"3\"}}}'),
(2, 'mf3S3DLgMzIc5k1hx6gS', '{\"0\":\"1\"}', '{\"1\":{\"question_id\":\"1\",\"option_ids\":{\"0\":\"3\"}}}'),
(3, 'k0U4HPuGigsHPhKCaiap', '{\"0\":\"3\"}', '{\"1\":{\"question_id\":\"3\",\"option_ids\":{\"0\":\"13\"}}}'),
(4, 'k0U4HPuGigsHPhKCaiap', '{\"0\":\"4\"}', '{\"1\":{\"question_id\":\"4\",\"option_ids\":{\"0\":\"21\"}}}'),
(5, '1', '{\"0\":\"6\",\"1\":\"7\",\"2\":\"8\",\"3\":\"9\",\"4\":\"10\",\"5\":\"11\",\"6\":\"12\",\"7\":\"13\",\"8\":\"14\"}', '{\"0\":{\"question_id\":\"6\",\"option_ids\":{\"0\":\"31\"}},\"1\":{\"question_id\":\"7\",\"option_ids\":{\"0\":\"36\"}},\"2\":{\"question_id\":\"8\",\"option_ids\":{\"0\":\"40\"}},\"3\":{\"question_id\":\"9\",\"option_ids\":{\"0\":\"46\"}},\"4\":{\"question_id\":\"10\",\"option_ids\":{\"0\":\"50\"}},\"5\":{\"question_id\":\"11\",\"option_ids\":{\"0\":\"53\"}},\"6\":{\"question_id\":\"12\",\"option_ids\":{\"0\":\"57\"}},\"7\":{\"question_id\":\"13\",\"option_ids\":{\"0\":\"62\"}},\"8\":{\"question_id\":\"14\",\"option_ids\":{\"0\":\"66\"}}}'),
(6, 'mf3S3DLgMzIc5k1hx6gS', '{\"0\":\"21\",\"1\":\"22\",\"2\":\"23\"}', '{\"0\":{\"question_id\":\"21\",\"option_ids\":{\"0\":\"93\"}},\"1\":{\"question_id\":\"22\",\"option_ids\":{\"0\":\"98\"}}}'),
(7, 'mf3S3DLgMzIc5k1hx6gS', '{\"0\":\"21\",\"1\":\"22\",\"2\":\"23\"}', '{\"0\":{\"question_id\":\"21\",\"option_ids\":{\"0\":\"92\"}},\"1\":{\"question_id\":\"22\",\"option_ids\":{\"0\":\"96\"}},\"2\":{\"question_id\":\"23\",\"option_ids\":{\"0\":\"101\"}}}'),
(8, '1', '{\"0\":\"24\",\"1\":\"25\",\"2\":\"29\"}', '{\"0\":{\"question_id\":\"24\",\"option_ids\":{\"0\":\"104\"}},\"1\":{\"question_id\":\"25\",\"option_ids\":{\"0\":\"109\"}},\"2\":{\"question_id\":\"29\",\"option_ids\":{\"0\":\"125\"}}}'),
(9, 'mf3S3DLgMzIc5k1hx6gS', '{\"0\":\"15\",\"1\":\"16\",\"2\":\"17\"}', '{\"0\":{\"question_id\":\"15\",\"option_ids\":{\"0\":\"67\"}},\"1\":{\"question_id\":\"16\",\"option_ids\":{\"0\":\"71\"}},\"2\":{\"question_id\":\"17\",\"option_ids\":{\"0\":\"77\"}}}'),
(10, 'mf3S3DLgMzIc5k1hx6gS', '{\"0\":\"24\",\"1\":\"25\",\"2\":\"29\"}', '{\"0\":{\"question_id\":\"24\",\"option_ids\":{\"0\":\"104\"}},\"1\":{\"question_id\":\"25\",\"option_ids\":{\"0\":\"108\"}},\"2\":{\"question_id\":\"29\",\"option_ids\":{\"0\":\"123\"}}}'),
(11, 'mf3S3DLgMzIc5k1hx6gS', '{\"0\":\"24\",\"1\":\"25\",\"2\":\"29\"}', '{\"0\":{\"question_id\":\"24\",\"option_ids\":{\"0\":\"106\"}},\"1\":{\"question_id\":\"25\",\"option_ids\":{\"0\":\"111\"}},\"2\":{\"question_id\":\"29\",\"option_ids\":{\"0\":\"126\"}}}'),
(12, '1', '{\"0\":\"24\",\"1\":\"25\",\"2\":\"29\"}', '{\"0\":{\"question_id\":\"24\",\"option_ids\":{\"0\":\"105\"}},\"1\":{\"question_id\":\"25\",\"option_ids\":{\"0\":\"109\"}},\"2\":{\"question_id\":\"29\",\"option_ids\":{\"0\":\"124\"}}}');

-- --------------------------------------------------------

--
-- Table structure for table `model_test_settings`
--

CREATE TABLE `model_test_settings` (
  `model_test_id` int(11) NOT NULL,
  `model_test_name` varchar(255) CHARACTER SET latin1 NOT NULL,
  `model_test_details` text CHARACTER SET latin1 NOT NULL,
  `class_id` int(11) NOT NULL,
  `duration` time NOT NULL,
  `test_details` text,
  `image` varchar(255) DEFAULT NULL,
  `status` int(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `model_test_settings`
--

INSERT INTO `model_test_settings` (`model_test_id`, `model_test_name`, `model_test_details`, `class_id`, `duration`, `test_details`, `image`, `status`) VALUES
(2, '12th Grade Model Test', '[{\"subject_id\":\"5\",\"no_of_ques\":\"5\"},{\"subject_id\":\"6\",\"no_of_ques\":\"4\"}]', 4, '00:10:00', '<p>&lt;p&gt;Etiam non fermentum lacus, sit amet tempor nibh. Praesent accumsan, elit a faucibus volutpat, sem urna scelerisque urna, et luctus risus mi vel elit. Pellentesque lacinia condimentum arcu, non laoreet enim. Nullam vel molestie nulla. Donec ornare tristique ipsum vel vulputate. Aliquam tincidunt ullamcorper dui, eu congue diam semper at. In hac habitasse platea dictumst. Quisque ultricies nisl nec velit pharetra tempor. Aliquam lacinia risus quis mi iaculis fringilla. Sed et hendrerit dolor. Fusce molestie tincidunt tortor, vitae suscipit ante vestibulum ut. Integer tempus id velit quis maximus. Sed luctus arcu diam, ut suscipit lacus ultrices sit amet.&lt;/p&gt;</p>', 'http://quiz.bdtask.com/demo/my-assets/images/test_image/547e359e2bc27c1595dbe08505dce095.jpg', 1),
(3, '1st Grade Model Test', '[{\"subject_id\":\"7\",\"no_of_ques\":\"3\"}]', 5, '00:05:00', '<p>Etiam non fermentum lacus, sit amet tempor nibh. Praesent accumsan, elit a faucibus volutpat, sem urna scelerisque urna, et luctus risus mi vel elit. Pellentesque lacinia condimentum arcu, non laoreet enim. Nullam vel molestie nulla. Donec ornare tristique ipsum vel vulputate. Aliquam tincidunt ullamcorper dui, eu congue diam semper at. In hac habitasse platea dictumst. Quisque ultricies nisl nec velit pharetra tempor. Aliquam lacinia risus quis mi iaculis fringilla. Sed et hendrerit dolor. Fusce molestie tincidunt tortor, vitae suscipit ante vestibulum ut. Integer tempus id velit quis maximus. Sed luctus arcu diam, ut suscipit lacus ultrices sit amet.</p>', 'http://quiz.bdtask.com/demo/my-assets/images/test_image/6680243775e3866c1d0a5fa9bac30ef0.png', 1),
(4, '2nd Grade Model Test ', '[{\"subject_id\":\"8\",\"no_of_ques\":\"3\"}]', 6, '00:05:00', '<p>Etiam non fermentum lacus, sit amet tempor nibh. Praesent accumsan, elit a faucibus volutpat, sem urna scelerisque urna, et luctus risus mi vel elit. Pellentesque lacinia condimentum arcu, non laoreet enim. Nullam vel molestie nulla. Donec ornare tristique ipsum vel vulputate. Aliquam tincidunt ullamcorper dui, eu congue diam semper at. In hac habitasse platea dictumst. Quisque ultricies nisl nec velit pharetra tempor. Aliquam lacinia risus quis mi iaculis fringilla. Sed et hendrerit dolor. Fusce molestie tincidunt tortor, vitae suscipit ante vestibulum ut. Integer tempus id velit quis maximus. Sed luctus arcu diam, ut suscipit lacus ultrices sit amet.</p>', 'http://quiz.bdtask.com/demo/my-assets/images/test_image/164cf4e5ea5ead1141ba201cbc15e061.jpg', 1),
(5, '3rd Grade Model Test', '[{\"subject_id\":\"9\",\"no_of_ques\":\"3\"}]', 7, '00:10:00', '<p>Etiam non fermentum lacus, sit amet tempor nibh. Praesent accumsan, elit a faucibus volutpat, sem urna scelerisque urna, et luctus risus mi vel elit. Pellentesque lacinia condimentum arcu, non laoreet enim. Nullam vel molestie nulla. Donec ornare tristique ipsum vel vulputate. Aliquam tincidunt ullamcorper dui, eu congue diam semper at. In hac habitasse platea dictumst. Quisque ultricies nisl nec velit pharetra tempor. Aliquam lacinia risus quis mi iaculis fringilla. Sed et hendrerit dolor. Fusce molestie tincidunt tortor, vitae suscipit ante vestibulum ut. Integer tempus id velit quis maximus. Sed luctus arcu diam, ut suscipit lacus ultrices sit amet.</p>', 'http://quiz.bdtask.com/demo/my-assets/images/test_image/7c37c498fe4894687bcceaa05d5fe8b0.jpg', 1),
(6, 'Exclusive Model Test ', '[{\"subject_id\":\"4\",\"no_of_ques\":\"3\"}]', 8, '01:00:00', '<p>Etiam non fermentum lacus, sit amet tempor nibh. Praesent accumsan, elit a faucibus volutpat, sem urna scelerisque urna, et luctus risus mi vel elit. Pellentesque lacinia condimentum arcu, non laoreet enim. Nullam vel molestie nulla. Donec ornare tristique ipsum vel vulputate. Aliquam tincidunt ullamcorper dui, eu congue diam semper at. In hac habitasse platea dictumst. Quisque ultricies nisl nec velit pharetra tempor. Aliquam lacinia risus quis mi iaculis fringilla. Sed et hendrerit dolor. Fusce molestie tincidunt tortor, vitae suscipit ante vestibulum ut. Integer tempus id velit quis maximus. Sed luctus arcu diam, ut suscipit lacus ultrices sit amet.</p>', 'http://quiz.bdtask.com/demo/my-assets/images/test_image/32ac7555c4ba7e28f0786e7716d99eb5.jpg', 1);

-- --------------------------------------------------------

--
-- Table structure for table `operator_permission`
--

CREATE TABLE `operator_permission` (
  `permission_id` int(11) NOT NULL,
  `operator_id` varchar(255) CHARACTER SET latin1 NOT NULL,
  `course_id` int(11) NOT NULL,
  `status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `operator_permission`
--

INSERT INTO `operator_permission` (`permission_id`, `operator_id`, `course_id`, `status`) VALUES
(1, 'eNNeckZAjZKoNXoS0zU8', 5, 1),
(2, '2fSJkr3FSumMIveU5FwO', 4, 1),
(3, 'z9JxvFnBVj0XK8xwrzco', 8, 1);

-- --------------------------------------------------------

--
-- Table structure for table `question_creator_relation`
--

CREATE TABLE `question_creator_relation` (
  `relation_id` int(11) NOT NULL,
  `creator_id` varchar(255) CHARACTER SET latin1 NOT NULL,
  `question_id` int(11) NOT NULL,
  `entry_ip` varchar(255) CHARACTER SET latin1 NOT NULL,
  `time_info` datetime NOT NULL,
  `status` int(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `question_creator_relation`
--

INSERT INTO `question_creator_relation` (`relation_id`, `creator_id`, `question_id`, `entry_ip`, `time_info`, `status`) VALUES
(1, '1', 1, '', '0000-00-00 00:00:00', 1),
(2, 'zUt6Q2srXMgwXIBQfPld', 2, '', '0000-00-00 00:00:00', 1),
(3, 'zUt6Q2srXMgwXIBQfPld', 3, '', '0000-00-00 00:00:00', 1),
(4, 'wYna2yYlm8I3g7FEjU7h', 4, '', '0000-00-00 00:00:00', 1),
(5, 'q44s4TpKySgDcECKojhP', 5, '', '0000-00-00 00:00:00', 1),
(6, '1', 6, '', '0000-00-00 00:00:00', 1),
(7, '1', 7, '', '0000-00-00 00:00:00', 1),
(8, '1', 8, '', '0000-00-00 00:00:00', 1),
(9, '1', 9, '', '0000-00-00 00:00:00', 1),
(10, '1', 10, '', '0000-00-00 00:00:00', 1),
(11, '1', 11, '', '0000-00-00 00:00:00', 1),
(12, '1', 12, '', '0000-00-00 00:00:00', 1),
(13, '1', 13, '', '0000-00-00 00:00:00', 1),
(14, '1', 14, '', '0000-00-00 00:00:00', 1),
(15, '1', 15, '', '0000-00-00 00:00:00', 1),
(16, '1', 16, '', '0000-00-00 00:00:00', 1),
(17, '1', 17, '', '0000-00-00 00:00:00', 1),
(18, '1', 18, '', '0000-00-00 00:00:00', 1),
(19, '1', 19, '', '0000-00-00 00:00:00', 1),
(20, '1', 20, '', '0000-00-00 00:00:00', 1),
(21, '1', 21, '', '0000-00-00 00:00:00', 1),
(22, '1', 22, '', '0000-00-00 00:00:00', 1),
(23, '1', 23, '', '0000-00-00 00:00:00', 1),
(24, '1', 24, '', '0000-00-00 00:00:00', 1),
(25, '1', 25, '', '0000-00-00 00:00:00', 1),
(26, '1', 26, '', '0000-00-00 00:00:00', 1),
(27, '1', 27, '', '0000-00-00 00:00:00', 1),
(28, '1', 28, '', '0000-00-00 00:00:00', 1),
(29, '1', 29, '', '0000-00-00 00:00:00', 1);

-- --------------------------------------------------------

--
-- Table structure for table `question_head`
--

CREATE TABLE `question_head` (
  `question_id` int(11) NOT NULL,
  `question_detals` longtext NOT NULL,
  `language` varchar(255) CHARACTER SET latin1 NOT NULL,
  `question_image` text CHARACTER SET latin1 NOT NULL,
  `answer_type` varchar(100) CHARACTER SET latin1 NOT NULL,
  `status` int(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `question_head`
--

INSERT INTO `question_head` (`question_id`, `question_detals`, `language`, `question_image`, `answer_type`, `status`) VALUES
(6, '&lt;p&gt;Sed luctus arcu diam, ut suscipit lacus&amp;nbsp;&lt;/p&gt;\r\n&lt;p&gt;&amp;nbsp;&lt;/p&gt;', 'English', '', 'radio', 1),
(7, '&lt;p&gt;luctus arcu diam, ut suscipit lacus&amp;nbsp;&lt;/p&gt;\r\n&lt;p&gt;&amp;nbsp;&lt;/p&gt;', 'English', '', 'radio', 1),
(8, '<p>Ut sem sem, sagittis a hendrerit et, interdum nec diam.&nbsp;</p>', 'English', '', 'radio', 1),
(9, '<p>Sem, sagittis a hendrerit et, interdum nec diam. ?</p>', 'English', '', 'radio', 1),
(10, '<p>Lorem &nbsp;sem, sagittis a hendrerit et, interdum nec diam.?&nbsp;</p>', 'English', '', 'radio', 1),
(11, '<p>Gittis a hendrerit et, interdum nec diam ?</p>', 'English', '', 'radio', 1),
(12, '<p>Lorem imp&nbsp;hendrerit et, interdum nec diam. ?</p>', 'English', '', 'radio', 1),
(13, '<p>Lora hexama sagittis a hendrerit et, interdum nec diam.?&nbsp;</p>', 'English', '', 'radio', 1),
(14, '<p>&nbsp;Aliquam tincidunt ullamcorper dui, eu congue diam ?</p>', 'English', '', 'radio', 1),
(15, '<p>Lorem ipsum maxida congue diam ogamoga ?</p>', 'English', '', 'radio', 1),
(16, '<p>Lorem natoque penatibus et magnis dis&nbsp;?</p>', 'English', '', 'radio', 1),
(17, '<p>Ipsum varius natoque penatibus et magnis&nbsp;?</p>', 'English', '', 'radio', 1),
(18, '<p>Menatibus et magnis dis parturient montes ?</p>', 'English', '', 'radio', 1),
(19, '<p>Is apmuvarius natoque penatibus et ?</p>', 'English', '', 'radio', 1),
(20, '&lt;p&gt;Cigatana&amp;nbsp;&lt;span style=&quot;font-family: \'Open Sans\', Arial, sans-serif; text-align: justify;&quot;&gt;Orci varius natoque penatibus et magnis dis&amp;nbsp;&lt;/span&gt;&lt;/p&gt;', 'English', '', 'radio', 1),
(21, '<p>Orci varius natoque penatibus et magnis&nbsp;?</p>', 'English', '', 'radio', 1),
(22, '<p>Oxama ta natibus et magnis dis&nbsp;?</p>', 'English', '', 'radio', 1),
(23, '<p>Orci Orama dakaz magnis dis parturient&nbsp;?</p>', 'English', '', 'radio', 1),
(24, '<p>Aliquam sed sem tortor. Morbi posuere, ?</p>', 'English', '', 'radio', 1),
(25, '<p>Morbi posuere, ex elementum commodo tristique ?</p>', 'English', '', 'radio', 1),
(27, '<p>Maxi elementum commodo tristique, est odio scelerisque tortor.</p>', 'English', '', 'radio', 1),
(28, '<p>Lorem morbi posuere, ex elementum ?</p>', 'English', '', 'radio', 1),
(29, '<p style=\"text-align: left;\">Occara maxdita commodo tristique, est odio scelerisque tortor.</p>', 'English', '', 'radio', 1);

-- --------------------------------------------------------

--
-- Table structure for table `question_options`
--

CREATE TABLE `question_options` (
  `question_option_id` int(11) NOT NULL,
  `question_id` int(11) NOT NULL,
  `option_details` varchar(255) NOT NULL,
  `language` varchar(255) CHARACTER SET latin1 NOT NULL,
  `option_image` text CHARACTER SET latin1 NOT NULL,
  `status` int(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `question_options`
--

INSERT INTO `question_options` (`question_option_id`, `question_id`, `option_details`, `language`, `option_image`, `status`) VALUES
(31, 6, '&lt;p&gt;ut suscipit lacus&amp;nbsp;&lt;/p&gt;\r\n&lt;p&gt;&amp;nbsp;&lt;/p&gt;', 'English', '', 1),
(32, 6, '&lt;p&gt;Sed luctus&lt;/p&gt;', 'English', '', 1),
(33, 6, '&lt;p&gt;arcu diam&lt;/p&gt;\r\n&lt;p&gt;&amp;nbsp;&lt;/p&gt;', 'English', '', 1),
(34, 6, '&lt;p&gt;Sed luctus diam&lt;/p&gt;', 'English', '', 1),
(35, 7, '&lt;p&gt;Suscipit lacus&amp;nbsp;&lt;/p&gt;\r\n&lt;p&gt;&amp;nbsp;&lt;/p&gt;', 'English', '', 1),
(36, 7, '&lt;p&gt;Srcu suscipit lacus&amp;nbsp;&lt;/p&gt;\r\n&lt;p&gt;&amp;nbsp;&lt;/p&gt;', 'English', '', 1),
(37, 7, '&lt;p&gt;Sed t suscipit lacus&amp;nbsp;&lt;/p&gt;\r\n&lt;p&gt;&amp;nbsp;&lt;/p&gt;', 'English', '', 1),
(38, 7, '&lt;p&gt;Ut suscipit lacus&amp;nbsp;&lt;/p&gt;\r\n&lt;p&gt;&amp;nbsp;&lt;/p&gt;', 'English', '', 1),
(39, 8, '&lt;p&gt;&lt;span style=&quot;font-family: \'Open Sans\', Arial, sans-serif; text-align: justify;&quot;&gt;Sagittis a hendrerit et&lt;/span&gt;&lt;/p&gt;', 'English', '', 1),
(40, 8, '&lt;p&gt;&lt;span style=&quot;font-family: \'Open Sans\', Arial, sans-serif; text-align: justify;&quot;&gt;Ut sem sem ipsum&lt;/span&gt;&lt;/p&gt;', 'English', '', 1),
(41, 8, '&lt;p&gt;&lt;span style=&quot;font-family: \'Open Sans\', Arial, sans-serif; text-align: justify;&quot;&gt;Gittis a hendrerit et lorea&lt;/span&gt;&lt;/p&gt;', 'English', '', 1),
(42, 8, '&lt;p&gt;&lt;span style=&quot;font-family: \'Open Sans\', Arial, sans-serif; text-align: justify;&quot;&gt;Interdum nec diam.&amp;nbsp;&lt;/span&gt;&lt;/p&gt;', 'English', '', 1),
(43, 9, '&lt;p&gt;&lt;span style=&quot;font-family: \'Open Sans\', Arial, sans-serif; text-align: justify;&quot;&gt;Hendrerit et, interdum nec diam.&amp;nbsp;&lt;/span&gt;&lt;/p&gt;', 'English', '', 1),
(44, 9, '&lt;p&gt;&lt;span style=&quot;font-family: \'Open Sans\', Arial, sans-serif; text-align: justify;&quot;&gt;Et, interdum nec diam.&amp;nbsp;&lt;/span&gt;&lt;/p&gt;', 'English', '', 1),
(45, 9, '&lt;p&gt;&lt;span style=&quot;font-family: \'Open Sans\', Arial, sans-serif; text-align: justify;&quot;&gt;Ut sem sem nec diam.&amp;nbsp;&lt;/span&gt;&lt;/p&gt;', 'English', '', 1),
(46, 9, '&lt;p&gt;&lt;span style=&quot;font-family: \'Open Sans\', Arial, sans-serif; text-align: justify;&quot;&gt;Ut sem interdum nec diam.&amp;nbsp;&lt;/span&gt;&lt;/p&gt;', 'English', '', 1),
(47, 9, '&lt;p&gt;&lt;span style=&quot;font-family: \'Open Sans\', Arial, sans-serif; text-align: justify;&quot;&gt;Lgittis a hendrerit et, interdum nec diam.&amp;nbsp;&lt;/span&gt;&lt;/p&gt;', 'English', '', 1),
(48, 10, '&lt;p&gt;Ips&lt;span style=&quot;font-family: \'Open Sans\', Arial, sans-serif; text-align: justify;&quot;&gt;&amp;nbsp;interdum nec diam.&lt;/span&gt;&lt;span style=&quot;font-family: \'Open Sans\', Arial, sans-serif; text-align: justify;&quot;&gt;&amp;nbsp;', 'English', '', 1),
(49, 10, '&lt;p&gt;&lt;span style=&quot;font-family: \'Open Sans\', Arial, sans-serif; text-align: justify;&quot;&gt;Lorar hendrerit et, interdum nec diam.&amp;nbsp;&lt;/span&gt;&lt;/p&gt;', 'English', '', 1),
(50, 10, '&lt;p&gt;&lt;span style=&quot;font-family: \'Open Sans\', Arial, sans-serif; text-align: justify;&quot;&gt;Ipusum&amp;nbsp;a hendrerit et, interdum nec diam.&amp;nbsp;&lt;/span&gt;&lt;/p&gt;', 'English', '', 1),
(51, 11, '&lt;p&gt;&lt;span style=&quot;font-family: \'Open Sans\', Arial, sans-serif; text-align: justify;&quot;&gt;Lendrerit et, interdum nec diam.&amp;nbsp;&lt;/span&gt;&lt;/p&gt;', 'English', '', 1),
(52, 11, '&lt;p&gt;&lt;span style=&quot;font-family: \'Open Sans\', Arial, sans-serif; text-align: justify;&quot;&gt;Ut sem interdum nec diam.&amp;nbsp;&lt;/span&gt;&lt;/p&gt;', 'English', '', 1),
(53, 11, '&lt;p&gt;&lt;span style=&quot;font-family: \'Open Sans\', Arial, sans-serif; text-align: justify;&quot;&gt;Gdrerit et, interdum nec diam.&amp;nbsp;&lt;/span&gt;&lt;/p&gt;', 'English', '', 1),
(54, 11, '&lt;p&gt;&lt;span style=&quot;font-family: \'Open Sans\', Arial, sans-serif; text-align: justify;&quot;&gt;Lore interdum nec diam.&amp;nbsp;&lt;/span&gt;&lt;/p&gt;', 'English', '', 1),
(55, 12, '&lt;p&gt;&lt;span style=&quot;font-family: \'Open Sans\', Arial, sans-serif; text-align: justify;&quot;&gt;Axita drerit et, interdum nec diam.&amp;nbsp;&lt;/span&gt;&lt;/p&gt;', 'English', '', 1),
(56, 12, '&lt;p&gt;Lorax orenddsa maxidanaz&amp;nbsp;&lt;/p&gt;', 'English', '', 1),
(57, 12, '&lt;p&gt;Janax orabata hagabat tulakay&lt;/p&gt;', 'English', '', 1),
(58, 12, '&lt;p&gt;Maxi lorem ipsum naxida huxada&lt;/p&gt;', 'English', '', 1),
(59, 13, '&lt;p&gt;Daxi&amp;nbsp;&lt;span style=&quot;font-family: \'Open Sans\', Arial, sans-serif; text-align: justify;&quot;&gt;Ut sem sem, sagittis a hendrerit&lt;/span&gt;&lt;/p&gt;', 'English', '', 1),
(60, 13, '&lt;p&gt;Maxadix lorem handirta oxidata&lt;/p&gt;', 'English', '', 1),
(61, 13, '&lt;p&gt;Banda kagigo hagada marifala&lt;/p&gt;', 'English', '', 1),
(62, 13, '&lt;p&gt;Dori kila mamu khobor&amp;nbsp;&lt;/p&gt;', 'English', '', 1),
(63, 14, '&lt;p&gt;&lt;span style=&quot;font-family: \'Open Sans\', Arial, sans-serif; text-align: justify;&quot;&gt;Llamcorper dui, eu congue diam&lt;/span&gt;&lt;/p&gt;', 'English', '', 1),
(64, 14, '&lt;p&gt;Lorema Dixidata&amp;nbsp;&lt;span style=&quot;font-family: \'Open Sans\', Arial, sans-serif; text-align: justify;&quot;&gt;&amp;nbsp;&lt;/span&gt;&lt;span style=&quot;font-family: \'Open Sans\', Arial, sans-serif; text-align: justify;&quot;&gt;Aliqua', 'English', '', 1),
(65, 14, '&lt;p&gt;&lt;span style=&quot;font-family: \'Open Sans\', Arial, sans-serif; text-align: justify;&quot;&gt;Tinincidunt ullamcorper dui, eu congue diam&lt;/span&gt;&lt;/p&gt;', 'English', '', 1),
(66, 14, '&lt;p&gt;&lt;span style=&quot;font-family: \'Open Sans\', Arial, sans-serif; text-align: justify;&quot;&gt;Lullamcorper dui, eu congue diam&lt;/span&gt;&lt;/p&gt;', 'English', '', 1),
(67, 15, '&lt;p&gt;Bal da rend dalallla&lt;/p&gt;', 'English', '', 1),
(68, 15, '&lt;p&gt;Hukumu chukumu ohuku&lt;/p&gt;', 'English', '', 1),
(69, 15, '&lt;p&gt;Lorer maxibada hankubada&lt;/p&gt;', 'English', '', 1),
(70, 15, '&lt;p&gt;Congumata hija rataka bama&lt;/p&gt;', 'English', '', 1),
(71, 16, '&lt;p&gt;&lt;span style=&quot;font-family: \'Open Sans\', Arial, sans-serif; text-align: justify;&quot;&gt;Natoque penatibus et magnis dis parturient montes&lt;/span&gt;&lt;/p&gt;', 'English', '', 1),
(72, 16, '&lt;p&gt;&lt;span style=&quot;font-family: \'Open Sans\', Arial, sans-serif; text-align: justify;&quot;&gt;Et magnis dis parturient montes&lt;/span&gt;&lt;/p&gt;', 'English', '', 1),
(73, 16, '&lt;p&gt;&lt;span style=&quot;font-family: \'Open Sans\', Arial, sans-serif; text-align: justify;&quot;&gt;Dis parturient montes&lt;/span&gt;&lt;/p&gt;', 'English', '', 1),
(74, 16, '&lt;p&gt;&lt;span style=&quot;font-family: \'Open Sans\', Arial, sans-serif; text-align: justify;&quot;&gt;Lorem atoque penatibus et magnis dis parturient montes&lt;/span&gt;&lt;/p&gt;', 'English', '', 1),
(75, 16, '&lt;p&gt;&lt;span style=&quot;font-family: \'Open Sans\', Arial, sans-serif; text-align: justify;&quot;&gt;Ipsum sixuma&amp;nbsp;et magnis dis parturient montes&lt;/span&gt;&lt;/p&gt;', 'English', '', 1),
(76, 17, '&lt;p&gt;&lt;span style=&quot;font-family: \'Open Sans\', Arial, sans-serif; text-align: justify;&quot;&gt;Orci varius montes&lt;/span&gt;&lt;/p&gt;', 'English', '', 1),
(77, 17, '&lt;p&gt;&lt;span style=&quot;font-family: \'Open Sans\', Arial, sans-serif; text-align: justify;&quot;&gt;Orci &amp;nbsp;et magnis dis parturient montes&lt;/span&gt;&lt;/p&gt;', 'English', '', 1),
(78, 17, '&lt;p&gt;&lt;span style=&quot;font-family: \'Open Sans\', Arial, sans-serif; text-align: justify;&quot;&gt;Masatoque penatibus et magnis dis parturient.&lt;/span&gt;&lt;/p&gt;', 'English', '', 1),
(79, 17, '&lt;p&gt;&lt;span style=&quot;font-family: \'Open Sans\', Arial, sans-serif; text-align: justify;&quot;&gt;Loremet magnis dis parturient montes&lt;/span&gt;&lt;/p&gt;', 'English', '', 1),
(80, 18, '&lt;p&gt;&lt;span style=&quot;font-family: \'Open Sans\', Arial, sans-serif; text-align: justify;&quot;&gt;Lore et magnis dis parturient montes&lt;/span&gt;&lt;/p&gt;', 'English', '', 1),
(81, 18, '&lt;p&gt;&lt;span style=&quot;font-family: \'Open Sans\', Arial, sans-serif; text-align: justify;&quot;&gt;Xadnatibus et magnis dis parturient montes&lt;/span&gt;&lt;/p&gt;', 'English', '', 1),
(82, 18, '&lt;p&gt;&lt;span style=&quot;font-family: \'Open Sans\', Arial, sans-serif; text-align: justify;&quot;&gt;Lorem arturient montes&lt;/span&gt;&lt;/p&gt;', 'English', '', 1),
(83, 18, '&lt;p&gt;&lt;span style=&quot;font-family: \'Open Sans\', Arial, sans-serif; text-align: justify;&quot;&gt;Pixabaus et magnis dis parturient montes&lt;/span&gt;&lt;/p&gt;', 'English', '', 1),
(84, 19, '&lt;p&gt;&lt;span style=&quot;font-family: \'Open Sans\', Arial, sans-serif; text-align: justify;&quot;&gt;Hand atibus et magnis dis parturient montes&lt;/span&gt;&lt;/p&gt;', 'English', '', 1),
(85, 19, '&lt;p&gt;Nasxi rataba didt oirta&lt;/p&gt;', 'English', '', 1),
(86, 19, '&lt;p&gt;Lorem ipsum naxidata kdndfjsd&lt;/p&gt;', 'English', '', 1),
(87, 19, '&lt;p&gt;Handaix&amp;nbsp;ag lorema saxibaha&amp;nbsp;&lt;/p&gt;', 'English', '', 1),
(88, 20, '&lt;p&gt;&lt;span style=&quot;font-family: \'Open Sans\', Arial, sans-serif; text-align: justify;&quot;&gt;Kidr natibus et magnis dis parturient montes&lt;/span&gt;&lt;/p&gt;', 'English', '', 1),
(89, 20, '&lt;p&gt;&lt;span style=&quot;font-family: \'Open Sans\', Arial, sans-serif; text-align: justify;&quot;&gt;Naziius natoque penatibus et magnis dis montes&lt;/span&gt;&lt;/p&gt;', 'English', '', 1),
(90, 20, '&lt;p&gt;&lt;span style=&quot;font-family: \'Open Sans\', Arial, sans-serif; text-align: justify;&quot;&gt;Orci parturient montes&lt;/span&gt;&lt;/p&gt;', 'English', '', 1),
(91, 20, '&lt;p&gt;&lt;span style=&quot;font-family: \'Open Sans\', Arial, sans-serif; text-align: justify;&quot;&gt;Lorem bahshta urient montes&lt;/span&gt;&lt;/p&gt;', 'English', '', 1),
(92, 21, '&lt;p&gt;&lt;span style=&quot;font-family: \'Open Sans\', Arial, sans-serif; text-align: justify;&quot;&gt;Mmmagnis dis parturient montes&lt;/span&gt;&lt;/p&gt;', 'English', '', 1),
(93, 21, '&lt;p&gt;&lt;span style=&quot;font-family: \'Open Sans\', Arial, sans-serif; text-align: justify;&quot;&gt;Ipsum ana long parturient montes&lt;/span&gt;&lt;/p&gt;', 'English', '', 1),
(94, 21, '&lt;p&gt;&lt;span style=&quot;font-family: \'Open Sans\', Arial, sans-serif; text-align: justify;&quot;&gt;Loque penatibus et magnis dis parturient montes&lt;/span&gt;&lt;/p&gt;', 'English', '', 1),
(95, 21, '&lt;p&gt;&lt;span style=&quot;font-family: \'Open Sans\', Arial, sans-serif; text-align: justify;&quot;&gt;Harabita lomera dandatika montes&lt;/span&gt;&lt;/p&gt;', 'English', '', 1),
(96, 22, '&lt;p&gt;&lt;span style=&quot;font-family: \'Open Sans\', Arial, sans-serif; text-align: justify;&quot;&gt;Raki que penatibus&amp;nbsp;&lt;/span&gt;&lt;/p&gt;', 'English', '', 1),
(97, 22, '&lt;p&gt;&lt;span style=&quot;font-family: \'Open Sans\', Arial, sans-serif; text-align: justify;&quot;&gt;Orci varius&amp;nbsp;&lt;/span&gt;&lt;/p&gt;', 'English', '', 1),
(98, 22, '&lt;p&gt;&lt;span style=&quot;font-family: \'Open Sans\', Arial, sans-serif; text-align: justify;&quot;&gt;R penatibus et magnis dis parturient montes&lt;/span&gt;&lt;/p&gt;', 'English', '', 1),
(99, 22, '&lt;p&gt;&lt;span style=&quot;font-family: \'Open Sans\', Arial, sans-serif; text-align: justify;&quot;&gt;Nanatibus et magnis dis parturient montes&lt;/span&gt;&lt;/p&gt;', 'English', '', 1),
(100, 23, '&lt;p&gt;&lt;span style=&quot;font-family: \'Open Sans\', Arial, sans-serif; text-align: justify;&quot;&gt;Orci varius nattes&lt;/span&gt;&lt;/p&gt;', 'English', '', 1),
(101, 23, '&lt;p&gt;&lt;span style=&quot;font-family: \'Open Sans\', Arial, sans-serif; text-align: justify;&quot;&gt;Nenatibus et magnis dis parturient montes&lt;/span&gt;&lt;/p&gt;', 'English', '', 1),
(102, 23, '&lt;p&gt;&lt;span style=&quot;font-family: \'Open Sans\', Arial, sans-serif; text-align: justify;&quot;&gt;Orci varius magnis dis parturient montes&lt;/span&gt;&lt;/p&gt;', 'English', '', 1),
(103, 23, '&lt;p&gt;&lt;span style=&quot;font-family: \'Open Sans\', Arial, sans-serif; text-align: justify;&quot;&gt;Orci varra &amp;nbsp;dfwsd vd nt montes&lt;/span&gt;&lt;/p&gt;', 'English', '', 1),
(104, 24, '&lt;p&gt;&lt;span style=&quot;font-family: \'Open Sans\', Arial, sans-serif; text-align: justify;&quot;&gt;Aliquam sed&amp;nbsp;&lt;/span&gt;&lt;/p&gt;', 'English', '', 1),
(105, 24, '&lt;p&gt;&lt;span style=&quot;font-family: \'Open Sans\', Arial, sans-serif; text-align: justify;&quot;&gt;Nementum commodo tristique&lt;/span&gt;&lt;/p&gt;', 'English', '', 1),
(106, 24, '&lt;p&gt;&lt;span style=&quot;font-family: \'Open Sans\', Arial, sans-serif; text-align: justify;&quot;&gt;Rementum commodo tristique&lt;/span&gt;&lt;/p&gt;', 'English', '', 1),
(107, 24, '&lt;p&gt;&lt;span style=&quot;font-family: \'Open Sans\', Arial, sans-serif; text-align: justify;&quot;&gt;Hentum commodo tristique&lt;/span&gt;&lt;/p&gt;', 'English', '', 1),
(108, 25, '&lt;p&gt;&lt;span style=&quot;font-family: \'Open Sans\', Arial, sans-serif; text-align: justify;&quot;&gt;Elementum commodo tristique&lt;/span&gt;&lt;/p&gt;', 'English', '', 1),
(109, 25, '&lt;p&gt;&lt;span style=&quot;font-family: \'Open Sans\', Arial, sans-serif; text-align: justify;&quot;&gt;Nem tortor. Morbi posuere, ex elementum commodo tristique&lt;/span&gt;&lt;/p&gt;', 'English', '', 1),
(110, 25, '&lt;p&gt;&lt;span style=&quot;font-family: \'Open Sans\', Arial, sans-serif; text-align: justify;&quot;&gt;Rlementum commodo tristique&lt;/span&gt;&lt;/p&gt;', 'English', '', 1),
(111, 25, '&lt;p&gt;&lt;span style=&quot;font-family: \'Open Sans\', Arial, sans-serif; text-align: justify;&quot;&gt;Rtatca elementum commodo tristique&lt;/span&gt;&lt;/p&gt;', 'English', '', 1),
(115, 27, '&lt;p&gt;&lt;span style=&quot;font-family: \'Open Sans\', Arial, sans-serif; text-align: justify;&quot;&gt;Morbi posuere rax&lt;/span&gt;&lt;/p&gt;', 'English', '', 1),
(116, 27, '&lt;p&gt;&lt;span style=&quot;font-family: \'Open Sans\', Arial, sans-serif; text-align: justify;&quot;&gt;Rst odio scelerisque tortor.&lt;/span&gt;&lt;/p&gt;', 'English', '', 1),
(117, 27, '&lt;p&gt;&lt;span style=&quot;font-family: \'Open Sans\', Arial, sans-serif; text-align: justify;&quot;&gt;Scelerisque tortor.&lt;/span&gt;&lt;/p&gt;', 'English', '', 1),
(118, 27, '&lt;p&gt;Maxida tara ulala&lt;/p&gt;', 'English', '', 1),
(119, 28, '&lt;p style=&quot;text-align: left;&quot;&gt;&lt;span style=&quot;font-family: \'Open Sans\', Arial, sans-serif; text-align: justify;&quot;&gt;Morb lorama ismpas&amp;nbsp;&lt;/span&gt;&lt;/p&gt;', 'English', '', 1),
(120, 28, '&lt;p&gt;Lorem saha dkgarta&amp;nbsp;&lt;/p&gt;', 'English', '', 1),
(121, 28, '&lt;p&gt;Sarata bagahta rakagat&lt;/p&gt;', 'English', '', 1),
(122, 28, '&lt;p&gt;&lt;span style=&quot;font-family: \'Open Sans\', Arial, sans-serif; text-align: justify;&quot;&gt;Raxa fyth scelerisque tortor.&lt;/span&gt;&lt;/p&gt;', 'English', '', 1),
(123, 29, '&lt;p&gt;Saclar marata kahana&amp;nbsp;&lt;/p&gt;', 'English', '', 1),
(124, 29, '&lt;p&gt;Latrix maxadita handita&lt;/p&gt;', 'English', '', 1),
(125, 29, '&lt;p&gt;Martida anxita maxidata&amp;nbsp;&lt;/p&gt;', 'English', '', 1),
(126, 29, '&lt;p&gt;Ipsum naka rataga kas akdijta&amp;nbsp;&lt;/p&gt;', 'English', '', 1);

-- --------------------------------------------------------

--
-- Table structure for table `setting`
--

CREATE TABLE `setting` (
  `id` int(11) NOT NULL,
  `language` varchar(20) DEFAULT NULL,
  `logo` varchar(255) DEFAULT NULL,
  `favicon` varchar(255) DEFAULT NULL,
  `back_image` varchar(255) DEFAULT NULL,
  `copyright` varchar(255) DEFAULT NULL,
  `link` varchar(255) DEFAULT NULL,
  `first_image` varchar(255) DEFAULT NULL,
  `first_url` varchar(255) DEFAULT NULL,
  `second_image` varchar(255) DEFAULT NULL,
  `second_url` varchar(255) DEFAULT NULL,
  `third_image` varchar(255) DEFAULT NULL,
  `third_url` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `setting`
--

INSERT INTO `setting` (`id`, `language`, `logo`, `favicon`, `back_image`, `copyright`, `link`, `first_image`, `first_url`, `second_image`, `second_url`, `third_image`, `third_url`) VALUES
(1, 'english', 'http://quiz.bdtask.com/demo/my-assets/images/logo_image/ee14919d73be7bb9bc796cd457cf2dfd.png', 'http://quiz.bdtask.com/demo/my-assets/images/logo_image/8fd20aa09dcc7fc940472065fd7722bf.png', 'http://quiz.bdtask.com/demo/my-assets/images/logo_image/946a0dae423beeba3ad7a24300dbffcf.jpg', 'All Right Reserved Copyright', 'https://www.bdtask.com', 'http://quiz.bdtask.com/demo/my-assets/images/logo_image/dcf13dc7d9fa45d507738574404fe2c8.jpg', 'http://www.bt.com', 'http://quiz.bdtask.com/demo/my-assets/images/logo_image/4df23452c256989b6d976a1d14110637.jpg', 'http://www.ae.com', 'http://quiz.bdtask.com/demo/my-assets/images/logo_image/901ebde172305fc34fe33a7757c080d1.jpg', 'http://www.google.com');

-- --------------------------------------------------------

--
-- Table structure for table `tutor_batch`
--

CREATE TABLE `tutor_batch` (
  `batch_id` int(11) NOT NULL,
  `tutor_id` varchar(255) CHARACTER SET latin1 NOT NULL,
  `batch_name` varchar(255) NOT NULL,
  `status` int(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tutor_batch`
--

INSERT INTO `tutor_batch` (`batch_id`, `tutor_id`, `batch_name`, `status`) VALUES
(1, 'zUt6Q2srXMgwXIBQfPld', 'Batch-12', 1),
(2, 'wYna2yYlm8I3g7FEjU7h', 'new batch', 1),
(3, 'I5U7cIoOe4u6VVeX6dMz', 'new batch', 1),
(4, 'q44s4TpKySgDcECKojhP', 'Batch-14', 1),
(5, 'q44s4TpKySgDcECKojhP', 'Batch-15', 1);

-- --------------------------------------------------------

--
-- Table structure for table `tutor_batch_details`
--

CREATE TABLE `tutor_batch_details` (
  `batch_id` int(11) NOT NULL,
  `student_ids` longtext CHARACTER SET latin1 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tutor_batch_details`
--

INSERT INTO `tutor_batch_details` (`batch_id`, `student_ids`) VALUES
(1, '{\"0\":\"mf3S3DLgMzIc5k1hx6gS\"}'),
(2, '{\"0\":\"fXmO2pltg7YBzqDVm2LX\"}'),
(3, '{\"0\":\"fXmO2pltg7YBzqDVm2LX\"}'),
(4, '{\"0\":\"mf3S3DLgMzIc5k1hx6gS\"}'),
(5, '{\"0\":\"mf3S3DLgMzIc5k1hx6gS\"}');

-- --------------------------------------------------------

--
-- Table structure for table `tutor_batch_exam`
--

CREATE TABLE `tutor_batch_exam` (
  `batch_assign_id` int(11) NOT NULL,
  `batch_id` int(11) NOT NULL,
  `tutor_id` varchar(255) CHARACTER SET latin1 NOT NULL,
  `exam_id` int(11) NOT NULL,
  `status` int(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tutor_batch_exam`
--

INSERT INTO `tutor_batch_exam` (`batch_assign_id`, `batch_id`, `tutor_id`, `exam_id`, `status`) VALUES
(1, 3, 'I5U7cIoOe4u6VVeX6dMz', 5, 1),
(2, 4, 'q44s4TpKySgDcECKojhP', 6, 1);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `user_id` varchar(255) CHARACTER SET latin1 NOT NULL,
  `user_name` varchar(255) CHARACTER SET latin1 NOT NULL,
  `mobile_no` bigint(20) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `others` varchar(255) CHARACTER SET latin1 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`user_id`, `user_name`, `mobile_no`, `image`, `others`) VALUES
('1', 'Admin', 1856923654, NULL, ''),
('2fSJkr3FSumMIveU5FwO', 'Jnax Rob', 21211338394, 'http://quiz.bdtask.com/demo/my-assets/images/operator_image/b0935286a19b15b5347c2bb4493601a3.jpg', ''),
('8X7IEstrkYK4gRAwOt22', 'teststudent', 1234567890, 'http://quiz.bdtask.com/demo/my-assets/images/student_image/391ab413c66035b98c3fc6ffd9754d3d.jpg', ''),
('aWFUONUsYN2vL6YE6t2U', 'sumch tarek', 1922296292, NULL, ''),
('BWQmLFpp2zIHbNwI91oa', 'Tawhid Khan', 98712562747749, 'http://quiz.bdtask.com/demo/my-assets/images/student_image/50b2d82837159c6d64eca7588f6b900e.jpg', ''),
('eNNeckZAjZKoNXoS0zU8', 'Misutasa Hanxida', 183883838, 'http://quiz.bdtask.com/demo/my-assets/images/operator_image/63281a73b2adff576074eac810b3319e.jpg', ''),
('Fs5HqU1V7b22EU78GDOu', 'Tanzil', 1922296392, NULL, ''),
('fXmO2pltg7YBzqDVm2LX', 'student', 2176867675, NULL, ''),
('g047wlr5kyJrscLpN1Fm', 'Tohidul', 181111111111, 'http://quiz.bdtask.com/demo/my-assets/images/student_image/4a840a53f7b3797469f3a8b864b7a0b0.jpg', ''),
('Gl5UrUThUpYygWZnZoM7', 'Operator', 4564654654, 'http://localhost/online_exam_system_ci3/my-assets/images/operator_image/8f975a94cec91a6c8465fb93c23ea94c.jpg', ''),
('I5U7cIoOe4u6VVeX6dMz', 'teacher', 13232467789, NULL, ''),
('k0U4HPuGigsHPhKCaiap', 'BDTASK', NULL, 'https://lh3.googleusercontent.com/-XdUIqdMkCWA/AAAAAAAAAAI/AAAAAAAAAAA/4252rscbv5M/photo.jpg', ''),
('KM3FAuXv3J7lo8142rOx', 'ahmedullah', 1922296789, NULL, ''),
('mf3S3DLgMzIc5k1hx6gS', 'azad hossain', 1922296378, NULL, ''),
('q44s4TpKySgDcECKojhP', 'Tuhin Sarkar', 1922296389, NULL, ''),
('rzWZyPSSZe9H871KV3Ch', 'Tanzil Ahmad', NULL, 'https://lh3.googleusercontent.com/-nnXeCHw-6Ik/AAAAAAAAAAI/AAAAAAAAABQ/5nVhcPpkW0Q/photo.jpg', ''),
('S7rA7uL9CN9HwtM3wvga', 'Alburt Rassel ', 172221117772, 'http://quiz.bdtask.com/demo/./my-assets/images/student_image/b88b39d2f89f6494863eb63f032c9016.jpg', ''),
('uoHEevsIYxKJHmDAAq2e', 'Sumch Mohammad Tarek', 1922296390, NULL, ''),
('wYna2yYlm8I3g7FEjU7h', 'Teacher', 123153466, 'http://localhost/online_exam_system_ci3/./my-assets/images/teacher_image/727cdc5c85b1624d4485d96fd4f209ca.jpg', ''),
('yhbYrOJX2jaRsmgBB8Nq', 'Tanzil Ahmad', NULL, 'https://scontent.xx.fbcdn.net/v/t1.0-1/p50x50/12654416_1105334276156888_2392502231423439600_n.jpg?oh=1c0f3e6a3f75892c2f73b8d64e247ce6&oe=5940C620', ''),
('z9JxvFnBVj0XK8xwrzco', 'Rob Nicolasss', 99812563383, 'http://quiz.bdtask.com/demo/my-assets/images/operator_image/fd9f7e5030331d99cbd2fb43f6ed0e12.jpg', ''),
('zUt6Q2srXMgwXIBQfPld', 'Asad vai', 1989876893, NULL, '');

-- --------------------------------------------------------

--
-- Table structure for table `user_contact`
--

CREATE TABLE `user_contact` (
  `user_id` varchar(255) CHARACTER SET latin1 NOT NULL,
  `contact_type` varchar(255) CHARACTER SET latin1 NOT NULL,
  `contact_details` text CHARACTER SET latin1 NOT NULL,
  `contact-sequence` varchar(255) CHARACTER SET latin1 NOT NULL,
  `status` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `user_exam_result`
--

CREATE TABLE `user_exam_result` (
  `user_id` varchar(255) CHARACTER SET latin1 NOT NULL,
  `exam_id` int(11) NOT NULL,
  `course_id` int(11) NOT NULL,
  `attend_date` datetime NOT NULL,
  `number_of_question` int(8) NOT NULL,
  `duration` varchar(100) CHARACTER SET latin1 NOT NULL,
  `total_answered` int(11) NOT NULL,
  `marks` varchar(50) CHARACTER SET latin1 NOT NULL,
  `status` int(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `user_exam_result`
--

INSERT INTO `user_exam_result` (`user_id`, `exam_id`, `course_id`, `attend_date`, `number_of_question`, `duration`, `total_answered`, `marks`, `status`) VALUES
('1', 1, 1, '2017-02-22 08:31:17', 1, '00:00:13', 1, '100', 1),
('mf3S3DLgMzIc5k1hx6gS', 2, 1, '2017-02-23 06:58:10', 1, '00:00:19', 1, '0', 1),
('k0U4HPuGigsHPhKCaiap', 4, 1, '2017-02-23 09:13:41', 4, '00:00:25', 4, '25', 1),
('1', 8, 5, '2017-02-25 06:19:02', 5, '00:00:34', 5, '40', 1),
('mf3S3DLgMzIc5k1hx6gS', 6, 1, '2017-02-26 01:26:50', 1, '00:00:08', 0, '0', 1),
('mf3S3DLgMzIc5k1hx6gS', 25, 5, '2017-02-26 04:25:03', 1, '00:00:15', 1, '0', 1),
('1', 26, 1, '2017-02-26 06:24:43', 7, '00:00:10', 2, '0', 1),
('1', 27, 7, '2017-02-26 06:44:58', 3, '00:00:09', 3, '0', 1),
('fXmO2pltg7YBzqDVm2LX', 28, 1, '2017-02-26 11:27:22', 7, '00:00:16', 2, '0', 1);

-- --------------------------------------------------------

--
-- Table structure for table `user_exam_result_details`
--

CREATE TABLE `user_exam_result_details` (
  `id` int(11) NOT NULL,
  `exam_id` int(11) NOT NULL,
  `user_id` varchar(255) CHARACTER SET latin1 NOT NULL,
  `questions_id` text CHARACTER SET latin1 NOT NULL,
  `answers_id` text CHARACTER SET latin1 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `user_exam_result_details`
--

INSERT INTO `user_exam_result_details` (`id`, `exam_id`, `user_id`, `questions_id`, `answers_id`) VALUES
(1, 1, '1', '{\"0\":\"1\"}', '{\"1\":{\"question_id\":\"1\",\"option_ids\":{\"0\":\"2\"}}}'),
(2, 2, 'mf3S3DLgMzIc5k1hx6gS', '{\"0\":\"3\"}', '{\"1\":{\"question_id\":\"3\",\"option_ids\":{\"0\":\"14\"}}}'),
(3, 4, 'k0U4HPuGigsHPhKCaiap', '{\"0\":\"1\",\"1\":\"2\",\"2\":\"3\",\"3\":\"4\"}', '{\"0\":{\"question_id\":\"1\",\"option_ids\":{\"0\":\"2\"}},\"1\":{\"question_id\":\"2\",\"option_ids\":{\"0\":\"8\"}},\"2\":{\"question_id\":\"3\",\"option_ids\":{\"0\":\"14\"}},\"3\":{\"question_id\":\"4\",\"option_ids\":{\"0\":\"22\"}}}'),
(4, 8, '1', '{\"0\":\"6\",\"1\":\"7\",\"2\":\"8\",\"3\":\"9\",\"4\":\"10\"}', '{\"0\":{\"question_id\":\"6\",\"option_ids\":{\"0\":\"31\"}},\"1\":{\"question_id\":\"7\",\"option_ids\":{\"0\":\"36\"}},\"2\":{\"question_id\":\"8\",\"option_ids\":{\"0\":\"41\"}},\"3\":{\"question_id\":\"9\",\"option_ids\":{\"0\":\"47\"}},\"4\":{\"question_id\":\"10\",\"option_ids\":{\"0\":\"48\"}}}'),
(5, 6, 'mf3S3DLgMzIc5k1hx6gS', '{\"0\":\"4\"}', '{}'),
(6, 25, 'mf3S3DLgMzIc5k1hx6gS', '{\"0\":\"9\"}', '{\"1\":{\"question_id\":\"9\",\"option_ids\":{\"0\":\"43\"}}}'),
(7, 26, '1', '{\"0\":\"27\",\"1\":\"28\"}', '{\"0\":{\"question_id\":\"27\",\"option_ids\":{\"0\":\"117\"}},\"1\":{\"question_id\":\"28\",\"option_ids\":{\"0\":\"119\"}}}'),
(8, 27, '1', '{\"0\":\"15\",\"1\":\"16\",\"2\":\"17\"}', '{\"0\":{\"question_id\":\"15\",\"option_ids\":{\"0\":\"68\"}},\"1\":{\"question_id\":\"16\",\"option_ids\":{\"0\":\"72\"}},\"2\":{\"question_id\":\"17\",\"option_ids\":{\"0\":\"76\"}}}'),
(9, 28, 'fXmO2pltg7YBzqDVm2LX', '{\"0\":\"27\",\"1\":\"28\"}', '{\"0\":{\"question_id\":\"27\",\"option_ids\":{\"0\":\"115\"}},\"1\":{\"question_id\":\"28\",\"option_ids\":{\"0\":\"119\"}}}');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `advertisement`
--
ALTER TABLE `advertisement`
  ADD PRIMARY KEY (`add_id`);

--
-- Indexes for table `answer_sheet`
--
ALTER TABLE `answer_sheet`
  ADD PRIMARY KEY (`answer_id`);

--
-- Indexes for table `ci_sessions`
--
ALTER TABLE `ci_sessions`
  ADD KEY `ci_sessions_timestamp` (`timestamp`);

--
-- Indexes for table `class_add`
--
ALTER TABLE `class_add`
  ADD PRIMARY KEY (`class_id`);

--
-- Indexes for table `client_user_login`
--
ALTER TABLE `client_user_login`
  ADD PRIMARY KEY (`user_id`);

--
-- Indexes for table `company_information`
--
ALTER TABLE `company_information`
  ADD PRIMARY KEY (`company_id`);

--
-- Indexes for table `course_add`
--
ALTER TABLE `course_add`
  ADD PRIMARY KEY (`course_id`);

--
-- Indexes for table `course_chapter_add`
--
ALTER TABLE `course_chapter_add`
  ADD PRIMARY KEY (`chapter_id`);

--
-- Indexes for table `exam_backup`
--
ALTER TABLE `exam_backup`
  ADD PRIMARY KEY (`exam_id`);

--
-- Indexes for table `exam_details`
--
ALTER TABLE `exam_details`
  ADD PRIMARY KEY (`exam_id`);

--
-- Indexes for table `exam_head`
--
ALTER TABLE `exam_head`
  ADD PRIMARY KEY (`exam_id`);

--
-- Indexes for table `exam_notifications`
--
ALTER TABLE `exam_notifications`
  ADD PRIMARY KEY (`notification_id`);

--
-- Indexes for table `facebook_config`
--
ALTER TABLE `facebook_config`
  ADD PRIMARY KEY (`facebook_id`);

--
-- Indexes for table `google_config`
--
ALTER TABLE `google_config`
  ADD PRIMARY KEY (`google_id`);

--
-- Indexes for table `language`
--
ALTER TABLE `language`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `model_test_details`
--
ALTER TABLE `model_test_details`
  ADD PRIMARY KEY (`model_test_id`);

--
-- Indexes for table `model_test_head`
--
ALTER TABLE `model_test_head`
  ADD PRIMARY KEY (`model_test_id`);

--
-- Indexes for table `model_test_result`
--
ALTER TABLE `model_test_result`
  ADD PRIMARY KEY (`model_test_id`);

--
-- Indexes for table `model_test_result_details`
--
ALTER TABLE `model_test_result_details`
  ADD PRIMARY KEY (`model_test_id`);

--
-- Indexes for table `model_test_settings`
--
ALTER TABLE `model_test_settings`
  ADD PRIMARY KEY (`model_test_id`);

--
-- Indexes for table `operator_permission`
--
ALTER TABLE `operator_permission`
  ADD PRIMARY KEY (`permission_id`);

--
-- Indexes for table `question_creator_relation`
--
ALTER TABLE `question_creator_relation`
  ADD PRIMARY KEY (`relation_id`);

--
-- Indexes for table `question_head`
--
ALTER TABLE `question_head`
  ADD PRIMARY KEY (`question_id`);

--
-- Indexes for table `question_options`
--
ALTER TABLE `question_options`
  ADD PRIMARY KEY (`question_option_id`);

--
-- Indexes for table `setting`
--
ALTER TABLE `setting`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tutor_batch`
--
ALTER TABLE `tutor_batch`
  ADD PRIMARY KEY (`batch_id`);

--
-- Indexes for table `tutor_batch_exam`
--
ALTER TABLE `tutor_batch_exam`
  ADD PRIMARY KEY (`batch_assign_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`user_id`);

--
-- Indexes for table `user_contact`
--
ALTER TABLE `user_contact`
  ADD PRIMARY KEY (`user_id`);

--
-- Indexes for table `user_exam_result_details`
--
ALTER TABLE `user_exam_result_details`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `advertisement`
--
ALTER TABLE `advertisement`
  MODIFY `add_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `answer_sheet`
--
ALTER TABLE `answer_sheet`
  MODIFY `answer_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=58;
--
-- AUTO_INCREMENT for table `class_add`
--
ALTER TABLE `class_add`
  MODIFY `class_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;
--
-- AUTO_INCREMENT for table `course_add`
--
ALTER TABLE `course_add`
  MODIFY `course_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;
--
-- AUTO_INCREMENT for table `course_chapter_add`
--
ALTER TABLE `course_chapter_add`
  MODIFY `chapter_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=54;
--
-- AUTO_INCREMENT for table `exam_backup`
--
ALTER TABLE `exam_backup`
  MODIFY `exam_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `exam_head`
--
ALTER TABLE `exam_head`
  MODIFY `exam_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;
--
-- AUTO_INCREMENT for table `exam_notifications`
--
ALTER TABLE `exam_notifications`
  MODIFY `notification_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `facebook_config`
--
ALTER TABLE `facebook_config`
  MODIFY `facebook_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `google_config`
--
ALTER TABLE `google_config`
  MODIFY `google_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `language`
--
ALTER TABLE `language`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=399;
--
-- AUTO_INCREMENT for table `model_test_head`
--
ALTER TABLE `model_test_head`
  MODIFY `model_test_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
--
-- AUTO_INCREMENT for table `model_test_settings`
--
ALTER TABLE `model_test_settings`
  MODIFY `model_test_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `operator_permission`
--
ALTER TABLE `operator_permission`
  MODIFY `permission_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `question_creator_relation`
--
ALTER TABLE `question_creator_relation`
  MODIFY `relation_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;
--
-- AUTO_INCREMENT for table `question_head`
--
ALTER TABLE `question_head`
  MODIFY `question_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;
--
-- AUTO_INCREMENT for table `question_options`
--
ALTER TABLE `question_options`
  MODIFY `question_option_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=127;
--
-- AUTO_INCREMENT for table `setting`
--
ALTER TABLE `setting`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `tutor_batch`
--
ALTER TABLE `tutor_batch`
  MODIFY `batch_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `tutor_batch_exam`
--
ALTER TABLE `tutor_batch_exam`
  MODIFY `batch_assign_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `user_exam_result_details`
--
ALTER TABLE `user_exam_result_details`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
