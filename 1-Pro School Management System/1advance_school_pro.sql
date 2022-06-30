-- phpMyAdmin SQL Dump
-- version 4.7.3
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Jan 29, 2018 at 07:39 PM
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
-- Database: `tammanag_advance_school_pro`
--

-- --------------------------------------------------------

--
-- Table structure for table `academic_settings`
--

CREATE TABLE `academic_settings` (
  `settings_id` int(100) NOT NULL,
  `type` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci,
  `description` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `academic_settings`
--

INSERT INTO `academic_settings` (`settings_id`, `type`, `description`) VALUES
(2, 'report_teacher', NULL),
(3, 'minium_mark', '61'),
(22, 'tabulation', NULL),
(25, 'routine', '2'),
(1, 'limit_upload', '');

-- --------------------------------------------------------

--
-- Table structure for table `academic_syllabus`
--

CREATE TABLE `academic_syllabus` (
  `academic_syllabus_id` int(11) NOT NULL,
  `academic_syllabus_code` longtext COLLATE utf8_unicode_ci NOT NULL,
  `title` longtext COLLATE utf8_unicode_ci NOT NULL,
  `class_id` int(11) NOT NULL,
  `uploader_type` longtext COLLATE utf8_unicode_ci NOT NULL,
  `uploader_id` int(11) NOT NULL,
  `year` longtext COLLATE utf8_unicode_ci NOT NULL,
  `date` longtext COLLATE utf8_unicode_ci NOT NULL,
  `file_name` longtext COLLATE utf8_unicode_ci NOT NULL,
  `subject_id` int(11) DEFAULT NULL,
  `file_type` longtext COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `academic_syllabus`
--

INSERT INTO `academic_syllabus` (`academic_syllabus_id`, `academic_syllabus_code`, `title`, `class_id`, `uploader_type`, `uploader_id`, `year`, `date`, `file_name`, `subject_id`, `file_type`) VALUES
(1, 'b4f68d4', 'chapter 1 ', 1, 'teacher', 2, '2017-2018', '08 Jan, 2018', 'schooladvancedproversion.pdf', 140, 'PDF'),
(2, 'b01c544', 'chapter 2 ', 1, 'teacher', 2, '2017-2018', '08 Jan, 2018', 'ultimateinventory.pdf', 140, 'PDF');

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `admin_id` int(11) NOT NULL,
  `name` longtext COLLATE utf8_unicode_ci NOT NULL,
  `email` longtext COLLATE utf8_unicode_ci NOT NULL,
  `password` longtext COLLATE utf8_unicode_ci NOT NULL,
  `phone` longtext COLLATE utf8_unicode_ci NOT NULL,
  `address` longtext COLLATE utf8_unicode_ci NOT NULL,
  `owner_status` int(11) NOT NULL DEFAULT '0' COMMENT '1 owner, 0 not owner',
  `username` longtext COLLATE utf8_unicode_ci NOT NULL,
  `status` int(11) DEFAULT '1',
  `birthday` longtext COLLATE utf8_unicode_ci NOT NULL,
  `last_os` longtext COLLATE utf8_unicode_ci,
  `last_ip` longtext COLLATE utf8_unicode_ci,
  `last_date` longtext COLLATE utf8_unicode_ci,
  `last_device` longtext COLLATE utf8_unicode_ci,
  `authentication_key` varchar(600) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`admin_id`, `name`, `email`, `password`, `phone`, `address`, `owner_status`, `username`, `status`, `birthday`, `last_os`, `last_ip`, `last_date`, `last_device`, `authentication_key`) VALUES
(1, 'Mr. Admin', 'demo@educaby.com', '7110eda4d09e062aa5e4a390b0a572ac0d2c0220', '45785478', 'Quetzaltenango, Guatemala.', 1, 'admin', 1, '07/13/2017', NULL, NULL, NULL, NULL, 'db4f2d16568924de73aee89c998a7a76');

-- --------------------------------------------------------

--
-- Table structure for table `attendance`
--

CREATE TABLE `attendance` (
  `attendance_id` int(11) NOT NULL,
  `timestamp` longtext COLLATE utf8_unicode_ci NOT NULL,
  `year` longtext COLLATE utf8_unicode_ci NOT NULL,
  `class_id` int(11) NOT NULL,
  `section_id` int(11) NOT NULL,
  `student_id` int(11) NOT NULL,
  `status` int(11) NOT NULL DEFAULT '1' COMMENT '0(undefined) 1(present) 2(absent)'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `attendance`
--

INSERT INTO `attendance` (`attendance_id`, `timestamp`, `year`, `class_id`, `section_id`, `student_id`, `status`) VALUES
(1, '1515391200', '2017-2018', 1, 1, 1, 3),
(2, '1515304800', '2017-2018', 1, 1, 1, 2),
(3, '1515304800', '2017-2018', 1, 1, 2, 3),
(4, '1515218400', '2017-2018', 1, 1, 1, 3),
(5, '1515218400', '2017-2018', 1, 1, 2, 1),
(6, '1515132000', '2017-2018', 1, 1, 1, 2),
(7, '1515132000', '2017-2018', 1, 1, 2, 1),
(8, '1515045600', '2017-2018', 1, 1, 1, 3),
(9, '1515045600', '2017-2018', 1, 1, 2, 3),
(10, '1515477600', '2017-2018', 1, 1, 1, 3),
(11, '1515477600', '2017-2018', 1, 1, 2, 1),
(12, '1515650400', '2017-2018', 1, 1, 1, 1),
(13, '1515650400', '2017-2018', 1, 1, 2, 1),
(14, '1515736800', '2017-2018', 1, 1, 1, 1),
(15, '1515736800', '2017-2018', 1, 1, 2, 1),
(16, '1515823200', '2017-2018', 1, 1, 1, 1),
(17, '1515823200', '2017-2018', 1, 1, 2, 1),
(18, '1516082400', '2017-2018', 1, 1, 1, 1),
(19, '1516082400', '2017-2018', 1, 1, 2, 1),
(20, '1516341600', '2017-2018', 1, 1, 1, 1),
(21, '1516341600', '2017-2018', 1, 1, 2, 1),
(22, '1516341600', '2017-2018', 1, 1, 4, 1),
(23, '1516341600', '2017-2018', 1, 1, 5, 1),
(24, '1514700000', '2017-2018', 1, 1, 1, 1),
(25, '1514700000', '2017-2018', 1, 1, 2, 1),
(26, '1514700000', '2017-2018', 1, 1, 4, 1),
(27, '1514700000', '2017-2018', 1, 1, 5, 1),
(28, '1516600800', '2017-2018', 1, 1, 1, 1),
(29, '1516600800', '2017-2018', 1, 1, 2, 1),
(30, '1516600800', '2017-2018', 1, 1, 4, 1),
(31, '1516600800', '2017-2018', 1, 1, 5, 1),
(32, '1516687200', '2017-2018', 1, 1, 1, 1),
(33, '1516687200', '2017-2018', 1, 1, 2, 1),
(34, '1516687200', '2017-2018', 1, 1, 4, 1),
(35, '1516687200', '2017-2018', 1, 1, 5, 1),
(36, '1516773600', '2017-2018', 5, 7, 6, 1),
(37, '1516773600', '2017-2018', 5, 7, 7, 3),
(38, '1516773600', '2017-2018', 5, 7, 8, 2),
(39, '1516773600', '2017-2018', 5, 7, 9, 1),
(40, '1516860000', '2017-2018', 1, 1, 1, 1),
(41, '1516860000', '2017-2018', 1, 1, 2, 1),
(42, '1516860000', '2017-2018', 1, 1, 4, 1),
(43, '1516860000', '2017-2018', 1, 1, 5, 1);

-- --------------------------------------------------------

--
-- Table structure for table `book`
--

CREATE TABLE `book` (
  `book_id` int(11) NOT NULL,
  `name` longtext COLLATE utf8_unicode_ci NOT NULL,
  `description` longtext COLLATE utf8_unicode_ci NOT NULL,
  `author` longtext COLLATE utf8_unicode_ci NOT NULL,
  `class_id` longtext COLLATE utf8_unicode_ci NOT NULL,
  `price` longtext COLLATE utf8_unicode_ci NOT NULL,
  `status` longtext COLLATE utf8_unicode_ci NOT NULL,
  `type` varchar(60) COLLATE utf8_unicode_ci NOT NULL,
  `file_name` longtext COLLATE utf8_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `book`
--

INSERT INTO `book` (`book_id`, `name`, `description`, `author`, `class_id`, `price`, `status`, `type`, `file_name`) VALUES
(1, 'SA', 'ASA', 'ASA', '2', '33', '1', 'normal', NULL),
(2, 'sddx', 'cvcvcvc', 'vccxvcv', '2', '10', '1', 'normal', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `ci_sessions`
--

CREATE TABLE `ci_sessions` (
  `id` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `ip_address` varchar(45) COLLATE utf8_unicode_ci NOT NULL,
  `timestamp` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `data` blob NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `ci_sessions`
--

INSERT INTO `ci_sessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES
('073422b4bf532799703e37e32d33318c9c867d49', '117.98.134.28', 1517213407, 0x5f5f63695f6c6173745f726567656e65726174657c693a313531373231333339333b),
('0ed1ae9344412867fc414045c226f435eeff58ec', '125.63.69.50', 1517218837, 0x5f5f63695f6c6173745f726567656e65726174657c693a313531373231383636323b61646d696e5f6c6f67696e7c733a313a2231223b61646d696e5f69647c733a313a2231223b6c6f67696e5f757365725f69647c733a313a2231223b6e616d657c733a393a224d722e2041646d696e223b6c6f67696e5f747970657c733a353a2261646d696e223b),
('1086822614812c6ba9fdcac0ad24b4b6de3bb104', '125.63.69.50', 1517231191, 0x5f5f63695f6c6173745f726567656e65726174657c693a313531373233313137363b61646d696e5f6c6f67696e7c733a313a2231223b61646d696e5f69647c733a313a2231223b6c6f67696e5f757365725f69647c733a313a2231223b6e616d657c733a393a224d722e2041646d696e223b6c6f67696e5f747970657c733a353a2261646d696e223b),
('11c509f44732ff58ba1126de5f171182ac10338f', '125.63.69.50', 1517218270, 0x5f5f63695f6c6173745f726567656e65726174657c693a313531373231383034313b61646d696e5f6c6f67696e7c733a313a2231223b61646d696e5f69647c733a313a2231223b6c6f67696e5f757365725f69647c733a313a2231223b6e616d657c733a393a224d722e2041646d696e223b6c6f67696e5f747970657c733a353a2261646d696e223b),
('2573827b0292855fbdd3fbfef13a38e32ec34860', '125.63.69.50', 1517233649, 0x5f5f63695f6c6173745f726567656e65726174657c693a313531373233333634383b61646d696e5f6c6f67696e7c733a313a2231223b61646d696e5f69647c733a313a2231223b6c6f67696e5f757365725f69647c733a313a2231223b6e616d657c733a393a224d722e2041646d696e223b6c6f67696e5f747970657c733a353a2261646d696e223b),
('3d5e773be4a01ddaf31a3196d0c1832f5b7dab21', '125.63.69.50', 1517233642, 0x5f5f63695f6c6173745f726567656e65726174657c693a313531373233333334353b61646d696e5f6c6f67696e7c733a313a2231223b61646d696e5f69647c733a313a2231223b6c6f67696e5f757365725f69647c733a313a2231223b6e616d657c733a393a224d722e2041646d696e223b6c6f67696e5f747970657c733a353a2261646d696e223b),
('3f683f9196f733c17394fea63478ab6940e2938a', '125.63.69.50', 1517217415, 0x5f5f63695f6c6173745f726567656e65726174657c693a313531373231373431303b61646d696e5f6c6f67696e7c733a313a2231223b61646d696e5f69647c733a313a2231223b6c6f67696e5f757365725f69647c733a313a2231223b6e616d657c733a393a224d722e2041646d696e223b6c6f67696e5f747970657c733a353a2261646d696e223b),
('43f03b3ba7e2be73debc776c7bc33994a86b628f', '125.63.69.50', 1517231750, 0x5f5f63695f6c6173745f726567656e65726174657c693a313531373233313534383b61646d696e5f6c6f67696e7c733a313a2231223b61646d696e5f69647c733a313a2231223b6c6f67696e5f757365725f69647c733a313a2231223b6e616d657c733a393a224d722e2041646d696e223b6c6f67696e5f747970657c733a353a2261646d696e223b),
('46e292a541ec73384be3ec8d89ffc016bbaf5610', '125.63.69.50', 1517218033, 0x5f5f63695f6c6173745f726567656e65726174657c693a313531373231373733383b61646d696e5f6c6f67696e7c733a313a2231223b61646d696e5f69647c733a313a2231223b6c6f67696e5f757365725f69647c733a313a2231223b6e616d657c733a393a224d722e2041646d696e223b6c6f67696e5f747970657c733a353a2261646d696e223b),
('53e0734f385acd32f03741e4e3bb431a564a6a98', '125.63.69.50', 1517211789, 0x5f5f63695f6c6173745f726567656e65726174657c693a313531373231313737373b61646d696e5f6c6f67696e7c733a313a2231223b61646d696e5f69647c733a313a2231223b6c6f67696e5f757365725f69647c733a313a2231223b6e616d657c733a393a224d722e2041646d696e223b6c6f67696e5f747970657c733a353a2261646d696e223b),
('6e773e09325e28923d2c54f0c0ec62cce5c3a99a', '125.63.69.50', 1517232092, 0x5f5f63695f6c6173745f726567656e65726174657c693a313531373233323036333b61646d696e5f6c6f67696e7c733a313a2231223b61646d696e5f69647c733a313a2231223b6c6f67696e5f757365725f69647c733a313a2231223b6e616d657c733a393a224d722e2041646d696e223b6c6f67696e5f747970657c733a353a2261646d696e223b),
('70524f773003c4e3553fd26fb8fb1bc09c1f9a3b', '125.63.69.50', 1517216519, 0x5f5f63695f6c6173745f726567656e65726174657c693a313531373231363531303b61646d696e5f6c6f67696e7c733a313a2231223b61646d696e5f69647c733a313a2231223b6c6f67696e5f757365725f69647c733a313a2231223b6e616d657c733a393a224d722e2041646d696e223b6c6f67696e5f747970657c733a353a2261646d696e223b),
('7bb0f4933c58ffda974541182acf2fe5671f0d99', '125.63.69.50', 1517217031, 0x5f5f63695f6c6173745f726567656e65726174657c693a313531373231363832373b61646d696e5f6c6f67696e7c733a313a2231223b61646d696e5f69647c733a313a2231223b6c6f67696e5f757365725f69647c733a313a2231223b6e616d657c733a393a224d722e2041646d696e223b6c6f67696e5f747970657c733a353a2261646d696e223b),
('89f2d21a8b02254077408837bf4a6f3b4783685c', '125.63.69.50', 1517212861, 0x5f5f63695f6c6173745f726567656e65726174657c693a313531373231323637313b61646d696e5f6c6f67696e7c733a313a2231223b61646d696e5f69647c733a313a2231223b6c6f67696e5f757365725f69647c733a313a2231223b6e616d657c733a393a224d722e2041646d696e223b6c6f67696e5f747970657c733a353a2261646d696e223b),
('b859998f5bbd29f892de2dec3ef711739c16ae36', '125.63.69.50', 1517213843, 0x5f5f63695f6c6173745f726567656e65726174657c693a313531373231333731393b61646d696e5f6c6f67696e7c733a313a2231223b61646d696e5f69647c733a313a2231223b6c6f67696e5f757365725f69647c733a313a2231223b6e616d657c733a393a224d722e2041646d696e223b6c6f67696e5f747970657c733a353a2261646d696e223b),
('c5b660533d918639e0b901856663b3f53494a070', '125.63.69.50', 1517216023, 0x5f5f63695f6c6173745f726567656e65726174657c693a313531373231353937333b61646d696e5f6c6f67696e7c733a313a2231223b61646d696e5f69647c733a313a2231223b6c6f67696e5f757365725f69647c733a313a2231223b6e616d657c733a393a224d722e2041646d696e223b6c6f67696e5f747970657c733a353a2261646d696e223b666c6173685f6d6573736167657c733a33323a22496e666f726d616369c3b36e2067656e657261646120636f6e20c3a97869746f223b5f5f63695f766172737c613a313a7b733a31333a22666c6173685f6d657373616765223b733a333a226f6c64223b7d),
('d54a8072c90b289b3a07331f2c46a889a89c56fb', '125.63.69.50', 1517233010, 0x5f5f63695f6c6173745f726567656e65726174657c693a313531373233333031303b61646d696e5f6c6f67696e7c733a313a2231223b61646d696e5f69647c733a313a2231223b6c6f67696e5f757365725f69647c733a313a2231223b6e616d657c733a393a224d722e2041646d696e223b6c6f67696e5f747970657c733a353a2261646d696e223b),
('d6143ad2ab502222d6fab053c6d4d768a25adf46', '125.63.69.50', 1517212372, 0x5f5f63695f6c6173745f726567656e65726174657c693a313531373231323135363b61646d696e5f6c6f67696e7c733a313a2231223b61646d696e5f69647c733a313a2231223b6c6f67696e5f757365725f69647c733a313a2231223b6e616d657c733a393a224d722e2041646d696e223b6c6f67696e5f747970657c733a353a2261646d696e223b),
('faf8754f1907a8b5a6f5eb7f8addb9435e626e02', '159.203.42.143', 1517213395, 0x5f5f63695f6c6173745f726567656e65726174657c693a313531373231333339353b),
('fef371411c551f2c491fa3fc8f54c9bef4410137', '171.50.239.53', 1517228265, 0x5f5f63695f6c6173745f726567656e65726174657c693a313531373232383234353b61646d696e5f6c6f67696e7c733a313a2231223b61646d696e5f69647c733a313a2231223b6c6f67696e5f757365725f69647c733a313a2231223b6e616d657c733a393a224d722e2041646d696e223b6c6f67696e5f747970657c733a353a2261646d696e223b);

-- --------------------------------------------------------

--
-- Table structure for table `class`
--

CREATE TABLE `class` (
  `class_id` int(11) NOT NULL,
  `name` longtext COLLATE utf8_unicode_ci NOT NULL,
  `name_numeric` longtext COLLATE utf8_unicode_ci,
  `teacher_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `class`
--

INSERT INTO `class` (`class_id`, `name`, `name_numeric`, `teacher_id`) VALUES
(1, 'class 1', NULL, 3),
(2, 'class 2 ', NULL, 2),
(3, 'class 3 ', NULL, 4),
(4, 'class 4', NULL, 5),
(5, 'class 5 ', NULL, 6),
(6, 'class 6 ', NULL, 8),
(7, 'class 7 ', NULL, 10),
(8, 'class 8', NULL, 15),
(9, 'class 9 ', NULL, 18),
(10, 'class 10', NULL, 11);

-- --------------------------------------------------------

--
-- Table structure for table `class_routine`
--

CREATE TABLE `class_routine` (
  `class_routine_id` int(11) NOT NULL,
  `class_id` int(11) NOT NULL,
  `section_id` int(11) NOT NULL,
  `subject_id` int(11) NOT NULL,
  `time_start` int(11) NOT NULL,
  `time_end` varchar(11) COLLATE utf8_unicode_ci NOT NULL,
  `time_start_min` varchar(11) COLLATE utf8_unicode_ci NOT NULL,
  `time_end_min` varchar(11) COLLATE utf8_unicode_ci NOT NULL,
  `day` longtext COLLATE utf8_unicode_ci NOT NULL,
  `year` longtext COLLATE utf8_unicode_ci NOT NULL,
  `teacher_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `class_routine`
--

INSERT INTO `class_routine` (`class_routine_id`, `class_id`, `section_id`, `subject_id`, `time_start`, `time_end`, `time_start_min`, `time_end_min`, `day`, `year`, `teacher_id`) VALUES
(1, 1, 1, 141, 1, '2', '00', '10', 'Monday', '2017-2018', 3);

-- --------------------------------------------------------

--
-- Table structure for table `deliveries`
--

CREATE TABLE `deliveries` (
  `id` int(11) NOT NULL,
  `homework_code` varchar(600) NOT NULL,
  `student_id` int(11) NOT NULL,
  `date` varchar(600) NOT NULL,
  `class_id` int(11) NOT NULL,
  `section_id` int(11) NOT NULL,
  `file_name` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci,
  `student_comment` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci,
  `teacher_comment` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci,
  `subject_id` int(11) NOT NULL,
  `status` int(11) DEFAULT NULL,
  `homework_reply` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci,
  `mark` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `document`
--

CREATE TABLE `document` (
  `document_id` int(11) NOT NULL,
  `title` longtext COLLATE utf8_unicode_ci NOT NULL,
  `description` longtext COLLATE utf8_unicode_ci NOT NULL,
  `file_name` longtext COLLATE utf8_unicode_ci NOT NULL,
  `file_type` longtext COLLATE utf8_unicode_ci NOT NULL,
  `class_id` longtext COLLATE utf8_unicode_ci NOT NULL,
  `teacher_id` int(11) NOT NULL,
  `timestamp` longtext COLLATE utf8_unicode_ci NOT NULL,
  `subject_id` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `dormitory`
--

CREATE TABLE `dormitory` (
  `dormitory_id` int(11) NOT NULL,
  `name` longtext COLLATE utf8_unicode_ci NOT NULL,
  `number` longtext COLLATE utf8_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `dormitory`
--

INSERT INTO `dormitory` (`dormitory_id`, `name`, `number`) VALUES
(1, '1', 'class1'),
(2, '21', 'Class 21');

-- --------------------------------------------------------

--
-- Table structure for table `email_template`
--

CREATE TABLE `email_template` (
  `email_template_id` int(11) NOT NULL,
  `task` longtext COLLATE utf8_unicode_ci NOT NULL,
  `subject` longtext COLLATE utf8_unicode_ci NOT NULL,
  `body` longtext COLLATE utf8_unicode_ci NOT NULL,
  `instruction` longtext COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `email_template`
--

INSERT INTO `email_template` (`email_template_id`, `task`, `subject`, `body`, `instruction`) VALUES
(1, 'new_homework', 'New homework uploaded', '<p>Hola,</p>\r\n<p>Tu profesor de [SUBJECT] ha subido una nueva tarea al sistema, la informaci&oacute;n es la siguiente:</p>\r\n<p><br /> T&iacute;tulo : [TITLE]</p>\r\n<p>Descripci&oacute;n: [DESCRIPTION]</p>\r\n<p>&nbsp;</p>\r\n<p>Para revisar esta tarea ingresa a tu Aula Virtual, secci&oacute;n <strong>Tareas.</strong></p>', ''),
(2, 'student_absences', 'Absenses', '<div>Hola <strong>[PARENT]</strong>,</div>\r\n<p>El motivo del correo es para notificarle que su apreciable hijo <strong>[STUDENT]</strong> no se presento a clases el d&iacute;a de hoy, si se trata de una emergencia por favor comunicarse al establecimeinto.</p>', ''),
(3, 'student_reports', 'New report', '<div>\r\n<div>\r\n<p>Hola [PARENT],</p>\r\n<p>Se ha creado un nuevo reporte de disciplina para [STUDENT], por favor consultar en los reportes acad&eacute;micos dentro de su cuenta.</p>\r\n</div>\r\n</div>', ''),
(4, 'parent_new_invoice', 'New invoice', '<p>Hola [PARENT],</p>\r\n<p>Se ha creado una nueva factura para [STUDENT], para ver los detalles de la factura por favor ingrese a su administraci&oacute;n de pagos en su cuenta.</p>', ''),
(5, 'student_new_invoice', 'New invoice', '<p>Hola [STUDENT],</p>\n<p>Se ha creado una nueva factura con tu nombre, para ver los detalles de la factura por favor ingresa a tu administraci&oacute;n de pagos en tu cuenta.</p>', '');

-- --------------------------------------------------------

--
-- Table structure for table `enroll`
--

CREATE TABLE `enroll` (
  `enroll_id` int(11) NOT NULL,
  `enroll_code` longtext COLLATE utf8_unicode_ci NOT NULL,
  `student_id` int(11) NOT NULL,
  `class_id` int(11) NOT NULL,
  `section_id` int(11) DEFAULT NULL,
  `roll` varchar(500) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  `date_added` longtext COLLATE utf8_unicode_ci NOT NULL,
  `year` longtext COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `enroll`
--

INSERT INTO `enroll` (`enroll_id`, `enroll_code`, `student_id`, `class_id`, `section_id`, `roll`, `date_added`, `year`) VALUES
(1, '05d393e', 1, 1, 1, '101', '1515337697', '2017-2018'),
(2, '94e6f40', 2, 1, 1, '12', '1515407645', '2017-2018'),
(3, 'e877e98', 1, 2, NULL, '0', '1515486794', '2018-2019'),
(4, '9c4476d', 2, 2, NULL, '0', '1515486794', '2018-2019'),
(6, '7c6cc4b', 4, 1, 1, 'fvbbcvvbvb', '1516268290', '2017-2018'),
(7, 'b3601c0', 5, 1, 1, '', '1516268291', '2017-2018'),
(8, '8feda57', 6, 5, 7, '123', '1516773648', '2017-2018'),
(9, '030f10e', 7, 5, 7, '258', '1516773648', '2017-2018'),
(10, 'd5e8941', 8, 5, 7, '213', '1516773648', '2017-2018'),
(11, '73037c0', 9, 5, 7, '123', '1516773648', '2017-2018');

-- --------------------------------------------------------

--
-- Table structure for table `events`
--

CREATE TABLE `events` (
  `event_id` int(11) NOT NULL,
  `title` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `description` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `datefrom` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `dateto` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `exam`
--

CREATE TABLE `exam` (
  `exam_id` int(11) NOT NULL,
  `name` longtext COLLATE utf8_unicode_ci NOT NULL,
  `year` longtext COLLATE utf8_unicode_ci NOT NULL,
  `start` longtext COLLATE utf8_unicode_ci,
  `end` longtext COLLATE utf8_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `exam`
--

INSERT INTO `exam` (`exam_id`, `name`, `year`, `start`, `end`) VALUES
(1, 'quarterly exams ', '2017-2018', '9', '10'),
(2, 'half yearly exams ', '2017-2018', '1', '1'),
(3, 'final exams ', '2017-2018', '4', '4'),
(4, 'slip test september', '2017-2018', '9', '9');

-- --------------------------------------------------------

--
-- Table structure for table `exams`
--

CREATE TABLE `exams` (
  `exam_id` int(11) NOT NULL,
  `title` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `description` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `availablefrom` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `availableto` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `class_id` int(11) NOT NULL,
  `section_id` int(11) NOT NULL,
  `teacher_id` int(11) NOT NULL,
  `subject_id` int(11) NOT NULL,
  `duration` int(11) NOT NULL,
  `questions` int(11) NOT NULL,
  `pass` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `clock_start` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci,
  `exam_code` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `clock_end` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `exams`
--

INSERT INTO `exams` (`exam_id`, `title`, `description`, `availablefrom`, `availableto`, `class_id`, `section_id`, `teacher_id`, `subject_id`, `duration`, `questions`, `pass`, `clock_start`, `exam_code`, `clock_end`) VALUES
(1, 'art and design quiz ', '<p>art and design quiz demo questions test&nbsp;</p>\r\n', '01/09/2018', '01/09/2018', 1, 1, 2, 140, 60, 10, '5', '11:30', '41e6cea73e', '12:30');

-- --------------------------------------------------------

--
-- Table structure for table `expense_category`
--

CREATE TABLE `expense_category` (
  `expense_category_id` int(11) NOT NULL,
  `name` longtext COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `forum`
--

CREATE TABLE `forum` (
  `post_id` int(11) NOT NULL,
  `teacher_id` int(11) NOT NULL,
  `subject_id` int(11) NOT NULL,
  `class_id` int(11) NOT NULL,
  `timestamp` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `title` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `description` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `post_code` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `file_name` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `section_id` int(11) NOT NULL,
  `post_status` int(11) DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `forum`
--

INSERT INTO `forum` (`post_id`, `teacher_id`, `subject_id`, `class_id`, `timestamp`, `title`, `description`, `post_code`, `file_name`, `section_id`, `post_status`) VALUES
(1, 2, 140, 1, '1515464280', 'new year celebration 2018 ', '<h2>ESL Conversation Questions:</h2>\r\n\r\n<ol>\r\n	<li>Was 2017 a good year? What good or bad events happened in the world in 2017?</li>\r\n	<li>How well did&nbsp;2017 go for you personally? What are some of the highlights and lowlights of the past year?</li>\r\n	<li>Did you achieve any goals in 2017? Did you keep resolutions that you made at the beginning of the year?</li>\r\n	<li>When does the new year start for you? From January 1st, or from a different day?</li>\r\n	<li>How do people in your culture celebrate the New Year?&nbsp;Is it usually a family celebration or more of a party with friends?</li>\r\n	<li>What screens on television on New Year&rsquo;s Eve? On New Year&rsquo;s Day? Do you enjoy watching TV at this time?</li>\r\n	<li>In your culture, do people give&nbsp;cards or gifts at the New Year? To whom do you send cards or give gifts?</li>\r\n	<li>Do you associate any special foods with the end of the year? What are they?</li>\r\n	<li>What are your plans for New Year&rsquo;s Eve? Who will you spend the time with?</li>\r\n	<li>At the end of the year, are there public holidays in your country? How much time do people usually get off from work?</li>\r\n	<li>What are your plans for 2018?</li>\r\n	<li>Will you make any New Year&rsquo;s resolutions for 2018? What do you intend on doing differently in the next year?</li>\r\n	<li>How do you make your New Year&rsquo;s resolutions? Do you write them down? Do you&nbsp;tell&nbsp;another person so that they help to hold you accountable?</li>\r\n	<li>At the beginning of 2018, what is the biggest challenge facing humanity? Do you think&nbsp;2018 will bring us closer to solving this problem?</li>\r\n	<li>Do you have a good feeling about 2018? Or are you more pessimistic?</li>\r\n	<li>Which year has been the best of your life so far? What made it so good?</li>\r\n	<li>The year 2018 coincides with the Year of the Dog in the Chinese Zodiac. Is this meaningful to you?</li>\r\n	<li>Can you make any predictions about 2018? What significant events will happen? What products or companies will be successful? What trends or fashions will be popular?</li>\r\n</ol>\r\n', '145a400c79', '', 1, 1),
(2, 2, 140, 1, '1515464280', 'dissucsion on your school ', '<ol>\r\n	<li>When did you start school? Do you remember your first day?</li>\r\n	<li>How far did you have to travel&nbsp;from home to school? How did you get to school?</li>\r\n	<li>Did you enjoy school life? What did you like and dislike about it?</li>\r\n	<li>Who was your&nbsp;favorite teacher? What do you remember about&nbsp;him or her?</li>\r\n	<li>What was your favorite subject at school? Why?</li>\r\n	<li>Did you have to wear a uniform to school? If so, what did yours look like?</li>\r\n	<li>What are the pros and cons of uniforms for school kids?</li>\r\n	<li>How many children were there in your class? What is the best number of students for a class?</li>\r\n	<li>Did you go to any academies or receive any tutoring outside of your main school? Is extra education like that necessary?</li>\r\n	<li>What did&nbsp;you and your classmates do during your lunch break?</li>\r\n	<li>Was there&nbsp;<strong><em>bullying</em>&nbsp;</strong>at your school? Did you have to deal&nbsp;with any bullies?</li>\r\n	<li>Did you get a lot of homework? Do you think it helped you learn?</li>\r\n	<li>How much sport did you do at school? Is sport important for school kids?</li>\r\n	<li>Was art&nbsp;a significant part of your schooling?</li>\r\n	<li>Did you learn any practical subjects like woodwork or cooking? What do you think about that kind of practical education?</li>\r\n	<li>Were your schools single-sex or&nbsp;<strong><em>co-educational</em></strong>? Which style is better?</li>\r\n	<li>Were you involved in any musical or theatrical performances at school? What memories of these events do you have?</li>\r\n	<li>When students behaved badly, how were they punished at your school?</li>\r\n	<li>What do you think about physical&nbsp;punishment? Is it effective?</li>\r\n	<li>Did you ever&nbsp;<strong><em>skip&nbsp;</em></strong>school? What did you do instead of going to school?</li>\r\n</ol>\r\n', '612bc6d932', '', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `forum_message`
--

CREATE TABLE `forum_message` (
  `message` longtext CHARACTER SET utf32 COLLATE utf32_unicode_ci NOT NULL,
  `post_id` int(11) NOT NULL,
  `date` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `user_id` int(11) NOT NULL,
  `user_type` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `message_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `homework`
--

CREATE TABLE `homework` (
  `homework_id` int(11) NOT NULL,
  `homework_code` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `title` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `description` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `class_id` int(11) NOT NULL,
  `subject_id` int(11) NOT NULL,
  `uploader_id` int(11) NOT NULL,
  `time_end` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `section_id` int(11) NOT NULL,
  `uploader_type` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `file_name` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `date_end` varchar(600) DEFAULT NULL,
  `type` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `homework`
--

INSERT INTO `homework` (`homework_id`, `homework_code`, `title`, `description`, `class_id`, `subject_id`, `uploader_id`, `time_end`, `section_id`, `uploader_type`, `file_name`, `date_end`, `type`) VALUES
(1, '24a8a21631', 'power point presentation on arts and crafts ', '<p>prepare a power of presentation with 10 slides at aleast explaining the culture and arts in 1930&#39;s with all the data avaibale from internet</p>\r\n', 1, 140, 2, '09:30', 1, 'teacher', '', '01/11/2018', 1);

-- --------------------------------------------------------

--
-- Table structure for table `horarios_examenes`
--

CREATE TABLE `horarios_examenes` (
  `horario_id` int(11) NOT NULL,
  `class_id` int(11) NOT NULL,
  `section_id` int(11) NOT NULL,
  `subject_id` int(11) NOT NULL,
  `time_start` int(11) NOT NULL,
  `time_end` int(11) NOT NULL,
  `time_start_min` int(11) NOT NULL,
  `time_end_min` int(11) NOT NULL,
  `day` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `year` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `fecha` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci,
  `teacher_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `invoice`
--

CREATE TABLE `invoice` (
  `invoice_id` int(11) NOT NULL,
  `student_id` int(11) NOT NULL,
  `title` longtext COLLATE utf8_unicode_ci NOT NULL,
  `description` longtext COLLATE utf8_unicode_ci NOT NULL,
  `amount` int(11) NOT NULL,
  `amount_paid` longtext COLLATE utf8_unicode_ci NOT NULL,
  `due` longtext COLLATE utf8_unicode_ci NOT NULL,
  `creation_timestamp` int(11) NOT NULL,
  `payment_timestamp` longtext COLLATE utf8_unicode_ci,
  `payment_method` longtext COLLATE utf8_unicode_ci,
  `payment_details` longtext COLLATE utf8_unicode_ci,
  `status` longtext COLLATE utf8_unicode_ci NOT NULL COMMENT 'paid or unpaid',
  `year` longtext COLLATE utf8_unicode_ci,
  `class_id` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `invoice`
--

INSERT INTO `invoice` (`invoice_id`, `student_id`, `title`, `description`, `amount`, `amount_paid`, `due`, `creation_timestamp`, `payment_timestamp`, `payment_method`, `payment_details`, `status`, `year`, `class_id`) VALUES
(1, 2, 'Term 1 Fees', 'Fees for sem 1', 10000, '10000', '0', 1515477600, NULL, NULL, NULL, 'completed', '2017-2018', 1),
(2, 2, 'Fees', 'Fees', 1000, '1000', '0', 1516082400, NULL, NULL, NULL, 'completed', '2017-2018', 1),
(3, 2, 'school fees', 'dfdaf', 1000, '400', '600', 1516600800, NULL, NULL, NULL, 'pending', '2017-2018', 1),
(4, 6, 'FEES', 'PAID', 500, '500', '0', 1516773600, NULL, NULL, NULL, 'completed', '2017-2018', 5),
(5, 6, 'FEES', 'PAID', 500, '500', '0', 1516773600, NULL, NULL, NULL, 'completed', '2017-2018', 5);

-- --------------------------------------------------------

--
-- Table structure for table `language`
--

CREATE TABLE `language` (
  `phrase_id` int(11) NOT NULL,
  `phrase` longtext COLLATE utf8_unicode_ci NOT NULL,
  `english` longtext COLLATE utf8_unicode_ci NOT NULL,
  `spanish` longtext COLLATE utf8_unicode_ci NOT NULL,
  `portuguese` longtext COLLATE utf8_unicode_ci,
  `hindi` longtext COLLATE utf8_unicode_ci,
  `french` longtext COLLATE utf8_unicode_ci,
  `serbian` longtext COLLATE utf8_unicode_ci,
  `arabic` longtext COLLATE utf8_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `language`
--

INSERT INTO `language` (`phrase_id`, `phrase`, `english`, `spanish`, `portuguese`, `hindi`, `french`, `serbian`, `arabic`) VALUES
(1, 'dashboard', 'Dashboard', 'Tablero', 'Painel de controle', 'डैशबोर्ड', 'Tableau de bord', 'Командна табла', 'لوحة القيادة'),
(2, 'parent', 'Parent', 'Padre', 'Pai', 'माता-पिता', 'Parent', 'Родитељ', 'الأبوين'),
(3, 'profile', 'Profile', 'Perfil', 'Perfil do usuário', 'प्रोफाइल', 'Profil', 'профил', 'الملف الشخصي'),
(4, 'logout', 'Logout', 'Cerrar sesión', 'Fechar Sessão', 'लोग आउट', 'Connectez - Out', 'одјавити се', 'الخروج'),
(5, 'messages', 'Messages', 'Mensajes', 'Postagens', 'संदेश', 'Messages', 'Поруке', 'رسائل'),
(6, 'noticeboard', 'Noticeboard', 'Noticias y Eventos', 'Quadro de notícias', 'सूचना पट्ट', 'Tableau d\'affichage', 'Огласна табла', 'لوح الإعلانات'),
(7, 'teachers', 'Teachers', 'Profesores', 'Professores', 'शिक्षकों की', 'Enseignants', 'Наставници', 'معلمون'),
(8, 'schedules', 'Schedules', 'Horarios', 'Horários', 'अनुसूचियों', 'Des horaires', 'распоред', 'جداول'),
(9, 'attendance', 'Attendance', 'Asistencia', 'Comparecimento', 'उपस्थिति', 'Présence', 'похађање', 'الحضور'),
(10, 'library', 'Library', 'Biblioteca', 'Biblioteca', 'पुस्तकालय', 'Bibliothèque', 'Библиотека', 'مكتبة'),
(11, 'marks', 'Marks', 'Calificaciones', 'Classificações', 'निशान', 'Des notes', 'оцене', 'علامات'),
(12, 'classroom', 'Classroom', 'Salon', 'Sala de aula virtual', 'कक्षा', 'Salle de classe', 'Учионица', 'قاعة الدراسة'),
(13, 'payments', 'Payments', 'Pagos', 'Pagamentos', 'भुगतान', 'Paiements', 'Плаћања', 'المدفوعات'),
(14, 'admins', 'Admins', 'Administradores', 'Administradores', 'व्यवस्थापक', 'Administrateurs', 'Админс', 'مدراء'),
(15, 'students', 'Students', 'Estudiantes', 'Estudantes', 'छात्र', 'Élèves', 'студенти', 'الطلاب'),
(16, 'parents', 'Parents', 'Padres', 'Parentes', 'माता-पिता', 'Parents', 'Родитељи', 'الآباء'),
(17, 'news', 'News', 'Noticias', 'Notícia', 'समाचार', 'Nouvelles', 'Вести', 'أخبار'),
(18, 'events', 'Events', 'Eventos', 'Eventos', 'आयोजन', 'Événements', 'Догађаји', 'أحداث'),
(19, 'view_more', 'View more', 'Ver más', 'Veja mais', 'और देखो', 'Afficher plus', 'Погледај још', 'عرض المزيد'),
(20, 'online_users', 'Online users', 'Usuarios en línea', 'Usuários online', 'ऑनलाइन उपयोगकर्ता', 'Utilisateurs en ligne', 'Онлине корисници', 'مستخدمين على الهواء'),
(21, 'last_5_minutes', 'Last 5 minutes', 'Últimos 5 minutos', 'Últimos 5 minutos', 'पिछले 5 मिनट', 'Dernières 5 minutes', 'Последњих 5 минута', 'آخر 5 دقائق'),
(22, 'polls', 'Polls', 'Encuestas', 'Enquetes', 'पोल', 'Les sondages', ' Анкете', 'استطلاعات الرأي'),
(23, 'thank_you_polls', 'Thanks for your participation', 'Gracias por participar', 'Obrigado pela sua participação', 'आपकी भागीदारी के लिए धन्यवाद', 'Merci de votre participation', 'Хвала што сте учествовали', 'شكرا على مشاركتكم'),
(24, 'private_messages', 'Private messages', 'Mensajes Privados', 'Mensagens privadas', 'निजी संदेश', 'Messages privés', 'Приватне поруке', 'رسائل خاصة'),
(25, 'admin', 'Admin', 'Admin', 'Administradores', 'व्यवस्थापक', 'Admin', 'Админ', 'مشرف'),
(26, 'hi', 'Hi', 'Hola', 'Oi', 'नमस्ते', 'salut', 'Здраво', 'مرحبا'),
(27, 'message_home', 'Chat, Connect and Learn', 'Chatea, Conecta y Aprende', 'Bate-papo, Conecte e Aprenda', 'चैट करें, कनेक्ट करें और जानें', 'Chat, connexion et apprentissage', 'Ћаскање се повезује и учити', 'دردشة، الاتصال والتعلم'),
(28, 'write_message', 'Write your message', 'Escribir mensaje', 'Escreva sua mensagem', 'अपना संदेश लिखें', 'Écrivez votre message', 'Писати поруке', 'اكتب رسالتك'),
(29, 'send_file', 'Send a file', 'Enviar archivo', 'Enviar um arquivo', 'एक फाइल भेजें', 'Envoyer un fichier', 'Пошаљи датотеку', 'إرسال ملف'),
(30, 'send', 'Send', 'Enviar', 'Enviar', 'भेजना', 'Envoyer', 'Пошаљи', 'إرسال'),
(31, 'receiver', 'Receiver', 'Receptor', 'Receptor', 'रिसीवर', 'Récepteur', 'Пријемник', 'المتلقي'),
(32, 'view', 'View', 'Ver', 'Visão', 'राय', 'Vue', 'поглед', 'رأي'),
(33, 'comment_success', 'Comment posted successfully', 'Comentario publicado', 'Comentários publicados com sucesso', 'टिप्पणी सफलतापूर्वक पोस्ट की गई', 'Commentaire publié avec succès', 'Коментар успех', 'تم نشر التعليق بنجاح'),
(34, 'subject', 'Subject', 'Curso', 'Sujeito', 'विषय', 'Assujettir', 'Предмет', 'موضوع'),
(35, 'teacher', 'Teacher', 'Profesor', 'Professor', 'अध्यापक', 'Prof', 'Наставник', 'مدرس'),
(36, 'send_message', 'Send message', 'Enviar mensaje', 'Enviar mensagem', 'मेसेज भेजें', 'Envoyer le message', 'Пошаљи поруку', 'إرسال رسالة'),
(37, 'class_routine', 'Class Routine', 'Horario de clases', 'Rotina de Classe', 'कक्षा सामान्य', 'Routine de classe', 'Распоред класа', 'الدرجة الروتينية'),
(38, 'exam_routine', 'Exam Routine', 'Horario de examenes', 'Rotina de exames', 'परीक्षा नियमित', 'Routine d\'examen', 'Распоред испита', 'امتحان روتيني'),
(39, 'attendance_report', 'Attendance report', 'Reporte de asistencia', 'Relatório de presenças', 'उपस्थिति विवरण', 'Rapport de présence', 'Извештај о присуству', 'تقرير الحضور'),
(40, 'month', 'Month', 'Mes', 'Mês', 'महीना', 'Mois', 'месец дана', 'شهر'),
(41, 'january', 'January', 'Enero', 'janeiro', 'जनवरी', 'janvier', 'Јануар', 'كانون الثاني'),
(42, 'february', 'February', 'Febrero', 'fevereiro', 'फरवरी', 'février', 'Фебруар', 'شهر فبراير'),
(43, 'march', 'March', 'Marzo', 'marcha', 'मार्च', 'Mars', 'Марш', 'مارس'),
(44, 'april', 'April', 'Abril', 'abril', 'अप्रैल', 'avril', 'Абрил', 'أبريل'),
(45, 'may', 'May', 'Mayo', 'mayo', 'मई', 'Mai', 'Мај', 'قد'),
(46, 'june', 'June', 'Junio', 'Junho', 'जून', 'juin', 'jyh', 'يونيو'),
(47, 'july', 'July', 'Julio', 'Julho', 'जुलाई', 'juillet', 'Јули', 'يوليو'),
(48, 'august', 'August', 'Agosto', 'agosto', 'अगस्त', 'août', 'Август', 'أغسطس'),
(49, 'september', 'September', 'Septiembre', 'setembro', 'सितंबर', 'septembre', 'септембар', 'سبتمبر'),
(50, 'october', 'October', 'Octubre', 'Outubro', 'अक्टूबर', 'octobre', 'Октобар', 'شهر اكتوبر'),
(51, 'november', 'November', 'Noviembre ', 'novembro', 'नवंबर', 'novembre', 'Новембар', 'شهر نوفمبر'),
(52, 'december', 'December', 'Diciembre', 'dezembro', 'दिसंबर', 'décembre', 'Децембар', 'ديسمبر'),
(53, 'student', 'Student', 'Estudiante', 'Aluna', 'छात्र', 'Étudiant', 'ученик', 'طالب علم'),
(54, 'select', 'Select', 'Seleccionar', 'Selecione', 'चुनते हैं', 'Sélectionner', 'Изаберите', 'تحديد'),
(55, 'generate', 'Generate', 'Generar', 'Gerar', 'उत्पन्न', 'Générer', 'Генериши', 'توفير'),
(56, 'type', 'Type', 'Tipo', 'Tipo', 'प्रकार', 'Type', 'тип', 'اكتب'),
(57, 'name', 'Name', 'Nombre', 'Nome', 'नाम', 'prénom', 'Име', 'اسم'),
(58, 'author', 'Author', 'Autor', 'Autor', 'लेखक', 'Auteur', 'Аутор', 'مؤلف'),
(59, 'description', 'Description', 'Descripción', 'Descrição', 'विवरण', 'La description', 'Опис', 'وصف'),
(60, 'status', 'Status', 'Estado', 'Status', 'स्थिति', 'Statut', 'Статус', 'الحالة'),
(61, 'price', 'Price', 'Precio', 'Preço', 'मूल्य', 'Prix', 'Цена', 'السعر'),
(62, 'download', 'Download', 'Descargar', 'Download', 'डाउनलोड', 'Télécharger', 'преузимање', 'تحميل'),
(63, 'normal', 'Normal', 'Normal', 'Normal', 'साधारण', 'Normal', 'Нормално', 'عادي'),
(64, 'no_downloaded', 'No file to download', 'No disponible', 'Nenhum arquivo para baixar', 'डाउनलोड करने के लिए कोई फ़ाइल नहीं', 'Aucun fichier à télécharger', 'није доступно', 'لا يوجد ملف لتنزيله'),
(65, 'virtual', 'Virtual', 'Virtual', 'Virtual', 'वास्तविक', 'Virtuel', 'Виртуелно', 'افتراضية'),
(66, 'roll', 'Roll ID', 'Roll ID', 'Roll ID', 'रोल आईडी', 'Roll ID', 'Ролл', 'معرف لفة'),
(67, 'class', 'Class', 'Grado', 'Classe', 'कक्षा', 'Classe', 'класа', 'صف دراسي'),
(68, 'section', 'Section', 'Sección', 'Seção', 'अनुभाग', 'Section', 'Одељак', 'الجزء'),
(69, 'mark', 'Mark', 'Nota', 'Marca', 'निशान', 'marque', 'Марк', 'علامة'),
(70, 'comment', 'Comment', 'Comentario', 'Comente', 'टिप्पणी', 'Commentaire', 'Коментар', 'تعليق'),
(71, 'view_all', 'View all', 'Ver todo', 'Ver tudo', 'सभी को देखें', 'Voir tout', 'погледати све', 'عرض الكل'),
(72, 'online_exams', 'Online exams', 'Exámenes en línea', 'Exames on-line', 'ऑनलाइन परीक्षाएं', 'Examens en ligne', 'Онлине испити', 'الامتحانات عبر الإنترنت'),
(73, 'homework', 'Homework', 'Tarea', 'Dever de casa', 'घर का पाठ', 'Devoirs', 'домаћи задатак', 'واجب منزلي'),
(74, 'study_material', 'Study material', 'Material de estudio', 'Material de estudo', 'अध्ययन सामग्री', 'Matériel d\'étude', 'Студијски материјал', 'المواد الدراسية'),
(75, 'syllabus', 'Syllabus', 'Contenidos de unidad', 'Programa de Estudos', 'पाठ्यक्रम', 'Programme', 'Садржај семестра', 'المنهج'),
(76, 'title', 'Title', 'Título', 'Título', 'शीर्षक', 'Titre', 'Наслов', 'عنوان'),
(77, 'start_date', 'Start date', 'Fecha de inicio', 'Data de início', 'आरंभ करने की तिथि', 'Date de début', 'Датум почетка', 'تاريخ البدء'),
(78, 'end_date', 'End date', 'Fecha límite', 'Data final', 'अंतिम तिथि', 'Date de fin', 'крајњи датум', 'تاريخ الانتهاء'),
(79, 'results', 'Results', 'Resultados', 'Resultados', 'परिणाम', 'Résultats', 'Резултате', 'النتائج'),
(80, 'view_results', 'View results', 'Ver resultados', 'Ver resultados', 'परिणाम देखें', 'Voir les résultats', 'Погледајте резултате', 'عرض النتائج'),
(81, 'no_data', 'No data available', 'Sin datos', 'Não há dados disponíveis', 'कोई डेटा उपलब्ध नहीं है', 'Pas de données disponibles', 'нема података', 'لا تتوافر بيانات'),
(82, 'of', 'of', 'de', 'of', 'का', 'de', 'Оф', 'من'),
(83, 'delivery_date', 'Delivery date', 'Fecha de entrega', 'Data de entrega', 'डिलीवरी की तारीख', 'Date de livraison', 'датум испоруке', 'تاريخ التسليم او الوصول'),
(84, 'details', 'Details', 'Detalles', 'Detalhes', 'विवरण', 'Détails', 'Детаље', 'تفاصيل'),
(85, 'back', 'Back', 'Regresar', 'Back', 'वापस', 'Arrière', 'назад', 'الى الخلف'),
(86, 'file', 'File', 'Archivo', 'Arquivo', 'फ़ाइल', 'Fichier', 'Филе', 'ملف'),
(87, 'no_delivered', 'Not delivered', 'No entregado', 'Não entregue', 'डिलीवर नहीं हुआ', 'Non livrés', 'Није испоручено', 'لم يتم تسليمها'),
(88, 'information', 'Information', 'Información', 'Em formação', 'जानकारी', 'Information', 'Информације', 'معلومات'),
(89, 'limit_date', 'Limit date', 'Fecha limite', 'Data-limite', 'सीमा तिथि', 'Date limite', 'Датум ограничења', 'تاريخ الحد'),
(90, 'allowed_deliveries', 'Deliveries allowed up to', 'Se permiten entregas hasta', 'Entregas permitidas até', 'तक पहुंचने की अनुमति', 'Les livraisons ont permis jusqu\'à', 'Достава је дозвољена до', 'عمليات التسليم المسموح بها تصل إلى'),
(91, 'unrated', 'Unrated', 'Sin calificar', 'Sem classificação', 'अनरेटेड', 'Non évalué', 'Унратед', 'غير مصنف'),
(92, 'teacher_comment', 'Teacher comment', 'Comentario del profesor', 'Comentário do professor', 'शिक्षक टिप्पणी', 'Commentaire de l\'enseignant', 'Коментар наставника', 'تعليق المعلم'),
(93, 'date', 'Date', 'Fecha', 'Date', 'तारीख', 'Rendez-vous amoureux', 'Датум', 'تاريخ'),
(94, 'upload_by', 'Uploaded by', 'Subido por', 'Enviado por', 'द्वारा डाली गई', 'telechargé par', 'Уплоад би', 'تم الرفع بواسطة...'),
(95, 'subject_marks', 'Subject marks', 'Calificaciones por curso', 'Marcas de assunto', 'विषय के निशान', 'Signes du sujet', 'Оцене по курсу', 'علامات الموضوع'),
(96, 'activity', 'Activity', 'Actividad', 'Atividade', 'गतिविधि', 'Activité', 'активност', 'نشاط'),
(97, 'amount', 'Amount', 'Monto', 'Montante', 'रकम', 'Montant', 'износ', 'كمية'),
(98, 'invoice', 'Invoice', 'Factura', 'Fatura', 'बीजक', 'Facture d\'achat', 'фактура', 'فاتورة'),
(99, 'make_payment', 'Make payment', 'Realizar pago', 'Faça o pagamento', 'भुगतान करो', 'Effectuer le paiement', 'извршити уплату', 'قم بالدفع'),
(100, 'pay_with_paypal', 'Pay with PayPal', 'Pagar con PayPal', 'Pagar com PayPal', 'पेपैल के साथ भुगतान करें', 'Payer avec PayPal', 'Платите уз паипал', 'الدفع بواسط باى بال'),
(101, 'view_invoice', 'View invoice', 'Ver factura', 'Ver fatura', 'चालान देखें', 'Voir la facture', 'Погледајте фактуру', 'عرض الفاتورة'),
(102, 'phone', 'Phone', 'Celular', 'telefone', 'फ़ोन', 'Téléphone', 'Телефон', 'هاتف'),
(103, 'total', 'Total', 'Total', 'Total', 'कुल', 'Total', 'Укупно', 'مجموع'),
(104, 'login', 'Login', 'Acceder', 'Entrar', 'लॉग इन करें', 'S\'identifier', 'Пријавите се', 'تسجيل الدخول'),
(105, 'username', 'Username', 'Usuario', 'Nome de usuário', 'उपयोगकर्ता नाम', 'Nom d\'utilisateur', 'корисничко име', 'اسم المستخدم'),
(106, 'password', 'Password', 'Contraseña', 'Senha', 'पासवर्ड', 'Mot de passe', 'Лозинка', 'كلمه السر'),
(107, 'register', 'Register', 'Registrarse', 'registo', 'रजिस्टर', 'registre', 'регистровати', 'تسجيل'),
(108, 'lost_password', 'Lost password', '¿Perdiste tu contraseña?', 'Senha perdida', 'पासवर्ड खो गया', 'Mot de passe perdu', 'Да ли сте изгубили лозинку?', 'كلمة مرور مفقودة'),
(109, 'create_account', 'Create an account', 'Crear cuenta', 'Crie a sua conta aqui', 'खाता बनाएं', 'Créer un compte', 'Региструј се', 'انشئ حساب'),
(110, 'email', 'Email', 'Correo', 'O email', 'ईमेल', 'Email', 'Емаил', 'البريد الإلكتروني'),
(111, 'address', 'Address', 'Dirección', 'Endereço', 'पता', 'Adresse', 'Адреса', 'عنوان'),
(112, 'birthday', 'Birthday', 'Cumpleaños', 'Aniversário', 'जन्मदिन', 'Anniversaire', 'Рођендан', 'عيد الميلاد'),
(113, 'gender', 'Gender', 'Género', 'Gênero', 'लिंग', 'Le genre', 'Пол', 'جنس'),
(114, 'male', 'Male', 'Masculino', 'Masculino', 'नर', 'Mâle', 'Мушки', 'الذكر'),
(115, 'female', 'Female', 'Femenino', 'Fêmea', 'महिला', 'Femelle', 'зенски пол', 'إناثا'),
(116, 'profession', 'Profession', 'Profesión', 'Profissão', 'व्यवसाय', 'Métier', 'Професија', 'مهنة'),
(117, 'recover_your_password', 'Recover your password', 'Recupera tu contraseña', 'Recupere sua senha', 'पासवर्ड पुनः प्राप्त करना', 'Récupérez votre mot de passe', 'Опоравите своју лозинку', 'استعادة كلمة المرور'),
(118, 'enter_email', 'Enter your email', 'Ingresa tu correo', 'Insira seu email', 'अपना ईमेल दर्ज करें', 'Entrer votre Email', 'Унесите пошту', 'أدخل بريدك الإلكتروني'),
(119, 'recover', 'Recover', 'Recuperar', 'Recuperar', 'वसूली', 'Récupérer', 'опоравити се', 'استعادة'),
(120, 'invalid_data', 'Invalid information', 'Datos incorrectos, verifique y vuelva a intentar', 'Informação inválida', 'अमान्य जानकारी', 'Informations invalides', 'Неисправни подаци, молимо проверите и покушајте поново', 'معلومات غير صالحة'),
(121, 'subjects', 'Subjects', 'Cursos', 'assuntos', 'विषय', 'Sujets', 'Теме', 'المواضيع'),
(122, 'permissions', 'Permissions', 'Permisos', 'Permissões', 'अनुमतियां', 'Autorisations', 'Дозволе', 'أذونات'),
(123, 'teacher_report', 'Teacher reports', 'Reporte de profesores', 'Relatórios dos professores', 'शिक्षक की रिपोर्ट', 'Rapports des enseignants', 'Извјештај учитеља', 'تقارير المعلم'),
(124, 'private_message', 'Private messages', 'Mensajes privados', 'Mensagens privadas', 'निजी संदेश', 'Messages privés', 'приватна порука', 'رسائل خاصة'),
(125, 'your_marks', 'Your marks', 'Tus calificaciones', 'Suas marcas', 'आपके अंक', 'Vos marques', 'Ваша квалификација', 'علاماتك'),
(126, 'print', 'Print', 'Imprimir ', 'Impressão', 'छाप', 'Impression', 'Принт', 'طباعة'),
(127, 'forum', 'Forum', 'Foro', 'Fórum', 'मंच', 'Forum', 'Форум', 'المنتدى'),
(128, 'options', 'Options', 'Opciones', 'Opções', 'विकल्प', 'Options', 'Опције', 'خيارات'),
(129, 'exam_finish', 'Finish exam', 'El examen ha finalizado', 'Termine o exame', 'परीक्षा समाप्त करें', 'Fin de l\'examen', 'Испит је завршен', 'إنهاء الامتحان'),
(130, 'exam_results', 'Exam results', 'Resultados del examen', 'Resultados dos exames', 'परीक्षा के परिणाम', 'Résultats d\'examen', 'Резултати испита', 'نتائج الامتحانات'),
(131, 'question', 'Question', 'Pregunta', 'Questão', 'प्रश्न', 'Question', 'Питање', 'سؤال'),
(132, 'correct_answer', 'Correct answer', 'Respuesta correcta', 'Resposta correta', 'सही उत्तर', 'Bonne réponse', 'тачан одговор', 'اجابة صحيحة'),
(133, 'answer', 'Answer', 'Respuesta', 'Responda', 'उत्तर', 'Répondre', 'одговор', 'إجابة'),
(134, 'no_response', 'Unanswered', 'Sin responder', 'Sem resposta', 'अनुत्तरित', 'Sans réponse', 'без одговора', 'لم يتم الرد عليها'),
(135, 'solved_in', 'Solved in', 'Resuelto en', 'Resolvido em', 'में हल', 'Résolu dans', 'Решено', 'حلها في'),
(136, 'correct_answers', 'Correct answers', 'Respuestas correctas', 'Respostas corretas', 'सही उत्तर', 'Bonnes réponses', 'Тачне одговоре', 'الإجابات الصحيحة'),
(137, 'average', 'Average', 'Promedio', 'Média', 'औसत', 'Moyenne', 'просек', 'معدل'),
(138, 'homework_details', 'Homework details', 'Detalles de la tarea', 'Detalhes do dever de casa', 'होमवर्क विवरण', 'Détail des devoirs', 'Домаћи детаљи', 'تفاصيل الواجبات المنزلية'),
(139, 'send_teacher_comment', 'Send a comment to the teacher', 'Enviar un comentario al profesor', 'Envie um comentário ao professor', 'शिक्षक को एक टिप्पणी भेजें', 'Envoyer un commentaire à l\'enseignant', 'Пошаљите коментар наставнику', 'إرسال تعليق إلى المعلم'),
(140, 'premissions', '', 'Permisos', '', '', '', 'Дозволе', 'أذونات'),
(141, 'apply', 'Apply', 'Aplicar', 'Aplique', 'लागू करें', 'Appliquer', 'Аплиразлог', 'تطبيق'),
(142, 'reason', 'Reason', 'Motivo', 'Razão', 'कारण', 'Raison', 'разлог', 'السبب'),
(143, 'from', 'From', 'Desde', 'A partir de', 'से', 'De', 'Од', 'من عند'),
(144, 'until', 'Until', 'Hasta', 'Até', 'जब तक', 'Jusqu\'à', 'све док', 'حتى'),
(145, 'approved', 'Approved', 'Aprobado', 'Aprovado', 'मंजूर की', 'Approuvé', 'Одобрен', 'وافق'),
(146, 'rejected', 'Rejected', 'Rechazado', 'Rejeitado', 'अस्वीकृत', 'Rejeté', 'одбијен', 'مرفوض'),
(147, 'create', 'Create', 'Crear', 'Crio', 'सर्जन करना', 'Créer', 'Створити', 'خلق'),
(148, 'code', 'Code', 'Código', 'Código', 'कोड', 'Code', 'Код', 'الشفرة'),
(149, 'priority', 'Priority', 'Prioridad', 'Prioridade', 'प्राथमिकता', 'Priorité', 'Приоритет', 'أفضلية'),
(150, 'high', 'High', 'Alta', 'Alto', 'उच्च', 'Haute', 'Високо', 'متوسط'),
(151, 'pending', 'Pending', 'Pendiente', 'Pendente', 'अपूर्ण', 'en attendant', 'У току', 'قيد الانتظار'),
(152, 'create_teacher_report', 'Create teacher report', 'Nuevo reporte de profesor', 'Criar relatório do professor', 'शिक्षक रिपोर्ट बनाएं', 'Créer un rapport d\'enseignant', 'Нови извештај учитеља', 'إنشاء تقرير المعلم'),
(153, 'report', 'Report', 'Reporte', 'Relatório', 'रिपोर्ट', 'rapport', 'извештај', 'أبلغ عن'),
(154, 'low', 'Low', 'Baja', 'Baixo', 'कम', 'Faible', 'Ниско', 'منخفض'),
(155, 'middle', 'Middle', 'Media', 'Meio', 'मध्य', 'Milieu', 'Средњи', 'وسط'),
(156, 'files', 'Files', 'Archivos', 'arquivos', 'फ़ाइलें', 'Des dossiers', 'фајлови', 'ملفات'),
(157, 'view_report', 'View report', 'Ver reporte', 'Exibir relatório', 'रिपोर्ट देखें', 'Voir le rapport', 'Погледај извештај', 'عرض التقرير'),
(158, 'active', 'Active', 'Activo', 'Ativo', 'सक्रिय', 'actif', 'Активан', 'نشيط'),
(159, 'personal_information', 'Personal information', 'Información personal', 'Informação pessoal', 'व्यक्तिगत जानकारी', 'Informations personnelles', 'лична информација', 'معلومات شخصية'),
(160, 'update_password', 'Update password', 'Actualizar contraseña', 'Atualizar senha', 'पासवर्ड अपडेट करें', 'Update password', 'Ажурирање лозинке', 'تطوير كلمة السر'),
(161, 'photo', 'Profile Photo', 'Fotografía', 'Foto de perfil', 'प्रोफाइल फोटो', 'Photo de profil', 'Фотографије', 'صورة الملف الشخصي'),
(162, 'update', 'Update', 'Actualizar', 'Atualizar', 'अद्यतन', 'Mettre à jour', 'ажурирање', 'تحديث'),
(163, 'take_exam', 'Take exam', 'Tomar examen', 'Fazer exame', 'परीक्षा लो', 'Passer un examen', 'полаже испит', 'خذ الامتحان'),
(164, 'total_questions', 'Total Questions', 'Preguntas totales', 'Perguntas totais', 'कुल सवाल', 'Total des questions', 'Укупно питање', 'مجموع الأسئلة'),
(165, 'duration', 'Duration', 'Duración', 'Duração', 'अवधि', 'Durée', 'трајање', 'المدة الزمنية'),
(166, 'minutes', 'minutes', 'minutos', 'minutos', 'मिनट', 'minutes', 'минута', 'الدقائق'),
(167, 'average_required', 'Average required', 'Promedio requerido', 'Média requerida', 'औसत आवश्यक', 'Moyenne requise', 'Потребан просек', 'متوسط المطلوب'),
(168, 'answer_all_questions', 'Answer all the questions before sending your exam.', 'Asegúrate de responder todas las preguntas antes de finalizar', 'Responda todas as perguntas antes de enviar seu exame', 'अपनी परीक्षा भेजने से पहले सभी प्रश्नों का उत्तर दें', 'Répondez à toutes les questions avant d\'envoyer votre examen.', 'Обавезно одговорите на сва питања пре него што завршите', 'أجب عن جميع الأسئلة قبل إرسال الامتحان.'),
(169, 'finish_message', 'When finished your results will be displayed automatically', 'Al finalizar se mostrarán tus resultados automáticamente', 'Quando terminar, seus resultados serão exibidos automaticamente', 'जब आपका परिणाम समाप्त हो जाए तो स्वचालित रूप से प्रदर्शित किया जाएगा', 'Une fois les résultats terminés, vos résultats s\'affichent automatiquement', 'Кад завршите, резултати ће се аутоматски приказивати', 'عند الانتهاء سيتم عرض النتائج تلقائيا'),
(170, 'important', 'IMPORTANT', 'IMPORTANTE', 'IMPORTANTE', 'जरूरी', 'IMPORTANT', 'Важно', 'مهم'),
(171, 'important_message', 'At the end of the exam, be sure to click on the End exam button, which is located on the top left', 'Al finalizar el examen asegúrate de hacer click en el botón Finaliza examen, que se encuentra en la parte superior izquierda', 'No final do exame, certifique-se de clicar no botão Executar final, que está localizado na parte superior esquerda', 'परीक्षा के अंत में, अंत परीक्षा बटन पर क्लिक करना सुनिश्चित करें, जो ऊपर बाईं ओर स्थित है', 'À la fin de l\'examen, assurez-vous de cliquer sur le bouton Fin de l\'examen, situé en haut à gauche', 'На крају испита обавезно кликните на дугме Заврши испит који се налази на врху', 'في نهاية الامتحان، تأكد من النقر على زر اختبار النهاية، والذي يقع أعلى اليمين'),
(172, 'start_exam', 'Start exam', 'Iniciar examen', 'Iniciar exame', 'प्रारंभिक परीक्षा', 'Examen de départ', 'Започните испит', 'بدء الاختبار'),
(173, 'online_exam', 'Online exam', 'Examen en línea', 'Exame on-line', 'ऑनलाइन परीक्षा', 'Examen en ligne', 'Онлине испит', 'الامتحان عبر الإنترنت'),
(174, 'time_left', 'Time left', 'Tiempo restante', 'Tempo restante', 'शेष समय', 'Temps restant', 'Преостало време', 'الوقت المتبقي'),
(175, 'finish_exam', 'Finish exam', 'Finalizar examen', 'Termine o exame', 'परीक्षा समाप्त करें', 'Fin de l\'examen', 'Завршни испит', 'إنهاء الامتحان'),
(176, 'success', 'Success', 'Exito', 'Sucesso', 'सफलता', 'Succès', 'Успех', 'نجاح'),
(177, 'success_delivery', 'Has been delivered', 'Has entregado esta tarea correctamente', 'Foi entregue', 'पहुँचा दिया गया है', 'A été livré', 'Успешно сте обавили овај задатак', 'تم تسليمها'),
(178, 'submitted_for_review', 'Submitted for review', 'Enviada para revisión', 'Enviado para revisão', 'समीक्षा के लिए सबमिट किया गया', 'Soumis pour examen', 'Поднесене на разматрање', 'تم تقديمه للمراجعة'),
(179, 'no_required', 'This task does not require you to submit a file, you can respond in the text box below.', 'Esta tarea no requiere que envíes un archivo en línea, puedes resolverla en el siguiente cuadro de texto, cuando finalices haz click en enviar', 'Não exigido', 'आवश्यक नहीं', 'Non requis', 'Овај задатак не захтева од вас да пошаљете датотеку на мрежи, можете је ријешити у сљедећем текстуалном пољу, када завршите са кликом на слање', 'لا حاجة'),
(180, 'users', 'Users', 'Usuarios', 'Users', 'उपयोगकर्ता', 'Utilisateurs', 'Корисници', 'المستخدمين'),
(181, 'notifications', 'Notifications', 'Notificaciones', 'Notificações', 'सूचनाएं', 'Notifications', 'Обавештења', 'إخطارات'),
(182, 'behavior', 'Behavior', 'Disciplina', 'Comportamento', 'व्यवहार', 'Comportement', 'Понашање', 'سلوك'),
(183, 'accounting', 'Accounting', 'Contabilidad', 'Contabilidade', 'लेखांकन', 'Comptabilité', 'Рачуноводство', 'محاسبة'),
(184, 'teacher_files', 'Teacher files', 'Archivos para profesores', 'Arquivos de professores', 'शिक्षक फाइलें', 'Fichiers d\'enseignant', 'Наставничке датотеке', 'ملفات المعلم'),
(185, 'classrooms', 'Classrooms', 'Salones de clases', 'Salas de aula', 'कक्षाओं', 'Salles de classe', 'Учионице', 'الفصول الدراسية'),
(186, 'school_bus', 'School bus', 'Bus escolar', 'Ônibus escolar', 'स्कूल बस', 'Bus scolaire', 'школски аутобус', 'باص المدرسة'),
(187, 'system_settings', 'System Settings', 'Ajustes del sistema', 'Configurações de sistema', 'प्रणाली व्यवस्था', 'Les paramètres du système', 'Подешавања система', 'اعدادات النظام'),
(188, 'academic_settings', 'Academic Settings', 'Ajustes académicos', 'Configurações acadêmicas', 'अकादमिक सेटिंग्स', 'Paramètres académiques', 'Академске поставке', 'الإعدادات الأكاديمية'),
(189, 'add_student', 'Add student', 'Agregar estudiante', 'Adicionar aluno', 'छात्र जोड़ें', 'Ajouter un étudiant', 'Додајте ученике', 'إضافة طالب'),
(190, 'admissions', 'Admissions', 'Admisiones', 'Admissões', 'प्रवेश', 'Admissions', 'Пријем', 'القبول'),
(191, 'students_area', 'Students area', 'Area de estudiantes', 'Área de estudantes', 'छात्र क्षेत्र', 'Zone étudiante', 'Подручје студената', 'Students area'),
(192, 'student_portal', 'Student portal', 'Portal de estudiantes', 'Portal do estudante', 'विद्यार्थी पोर्टल', 'Portail étudiant', 'Студентски портал', 'البوابة طالب'),
(193, 'upload_marks', 'Upload marks', 'Subir calificaciones', 'Fazer upload de marcas', 'अंकों को अपलोड करें', 'Télécharger des marques', 'Квалификација отпреме', 'علامات التحميل'),
(194, 'tabulation_sheet', 'Tabulation sheet', 'Hoja de tabulación', 'Folha de tabulação', 'सारणी पत्र', 'Feuille de tabulation', 'Табеларни лист', 'جدول تبويب'),
(195, 'teacher_attendance', 'Teacher attendance', 'Asistencia de profesores', 'Assistência dos professores', 'शिक्षक उपस्थिति', 'Participation des enseignantsRapport de présence de l\'enseignant', 'Присуство наставника', 'حضور المعلم'),
(196, 'teacher_attendance_report', 'Teacher attendance report', 'Reporte de asistencia de profesores', 'Relatório de comparecimento de professores', 'शिक्षक उपस्थिति रिपोर्ट', 'Rapport de présence de l\'enseignant', 'Извештај о присуству наставника', 'تقرير حضور المدرسين'),
(197, 'teacher_routine', 'Teacher routine', 'Horario de profesores', 'Rotina dos professores', 'शिक्षक दिनचर्या', 'La routine des enseignants', 'Наставник рутина', 'روتين المعلم'),
(198, 'send_news', 'Send news', 'Enviar noticias', 'Enviar notícias', 'समाचार भेजें', 'Envoyer des nouvelles', 'Пошаљи вести', 'إرسال الأخبار'),
(199, 'add_event', 'Add event', 'Agregar evento', 'Adicionar Evento', 'कार्यक्रम जोड़ें', 'Ajouter un évènement', 'Додајте догађај', 'إضافة حدث'),
(200, 'update_book', 'Update book', 'Actualizar libro', 'Atualizar livro', 'अद्यतन किताब', 'Mettre à jour le livre', 'Ажурирање књиге', 'تحديث الكتاب'),
(201, 'student_permissions', 'Student permissions', 'Permisos de estudiantes', 'Permissões do aluno', 'छात्र अनुमतियाँ', 'Autorisations d\'élève', 'Студентске дозволе', 'أذونات الطالب'),
(202, 'teacher_permissions', 'Teacher permissions', 'Permisos de profesores', 'Permissões do professor', 'शिक्षक अनुमतियां', 'Autorisations d\'enseignant', 'Студентске дозволе', 'أذونات المعلم'),
(203, 'student_payments', 'Student payments', 'Pagos de estudiantes', 'Pagamentos de estudantes', 'छात्र भुगतान', 'Paiements aux étudiants', 'Студентска уплата', 'دفعات الطالب'),
(204, 'expense', 'Expense', 'Egresos', 'Despesa', 'व्यय', 'Frais', 'Трошак', 'مصروف'),
(205, 'poll_details', 'Poll details', 'Detalles de la encuesta', 'Detalhes da pesquisa', 'पोल विवरण', 'Détails du sondage', 'Детаљи истраживања', 'تفاصيل الاستطلاع'),
(206, 'sms', 'SMS', 'SMS', 'SMS', 'एसएमएस', 'SMS', 'CMC', 'رسالة قصيرة'),
(207, 'email_settings', 'Email settings', 'Ajustes de correo', 'Configurações de e-mail', 'ईमेल सेटिंग्स', 'Paramètres de messagerie', 'Поставке е-поште', 'إعدادات البريد الإلكتروني'),
(208, 'translate', 'Translate', 'Traducción', 'Traduzir', 'अनुवाद करना', 'Traduire', 'превести', 'ترجمه'),
(209, 'database', 'Database', 'Base de datos', 'Base de dados', 'डेटाबेस', 'Base de données', 'база података', 'قاعدة البيانات'),
(210, 'manage_class', 'Manage classes', 'Manejar grados', 'Gerenciar aulas', 'कक्षाएं प्रबंधित करें', 'Gérer les cours', 'Менаџер класе', 'إدارة الطبقات'),
(211, 'sections', 'Sections', 'Secciones', 'Seções', 'धारा', 'Sections', 'Одељак', 'الأقسام'),
(212, 'semesters', 'Semesters', 'Unidades', 'Semestres', 'सेमेस्टर', 'Semestres', 'Семестре', 'فصول دراسية'),
(213, 'student_promotion', 'Student promotion', 'Promover estudiantes', 'Promoção estudantil', 'छात्र पदोन्नति', 'Promotion étudiante', 'Промоција студената', 'ترقية الطلاب'),
(214, 'event', 'Event', 'Evento', 'Evento', 'घटना', 'un événement', 'Догађај', 'هدف'),
(215, 'pending_users', 'Pending users', 'Usuarios pendientes', 'Usuários pendentes', 'लंबित उपयोगकर्ता', 'Les utilisateurs en attente', 'Очекивани корисници', 'المستخدمون في انتظار المراجعة'),
(216, 'new', 'New', 'Nuevo', 'Novo', 'नया', 'Nouveau', 'Ново', 'الجديد'),
(217, 'account_type', 'Account type', 'Tipo de cuenta', 'Tipo de conta', 'खाते का प्रकार', 'Type de compte', 'Тип рачуна', 'نوع الحساب'),
(218, 'super_admin', 'Super admin', 'Super admin', 'Super admin', 'सुपर व्यवस्थापक', 'Super admin', 'Супер админ', 'سوبر المشرف'),
(219, 'delete', 'Delete', 'Eliminar', 'Excluir', 'हटाना', 'Effacer', 'Избрисати', 'حذف'),
(220, 'add_new', 'Add new', 'Agregar nuevo', 'Adicionar novo', 'नया जोड़ें', 'Ajouter un nouveau', 'Додај нови', 'اضف جديد'),
(221, 'upload', 'Upload', 'Subir', 'Envio', 'अपलोड', 'Télécharger', 'отпремити', 'تحميل'),
(222, 'save', 'Save', 'Guardar', 'Salve', 'बचाना', 'sauvegarder', 'сачувати', 'حفظ'),
(223, 'salary', 'Salary', 'Salario', 'Salário', 'वेतन', 'Un salaire', 'Плата', 'راتب'),
(224, 'add', 'Add', 'Agregar', 'Adicionar', 'जोड़ना', 'Ajouter', 'додати', 'إضافة'),
(225, 'single_student', 'Single Student', 'Estudiante individual', 'Único estudante', 'एकल छात्र', 'Étudiant unique', 'Један студент', 'طالب واحد'),
(226, 'student_bulk', 'Student bulk', 'Múltiples estudiantes', 'Student bulk', 'छात्र थोक', 'Élève en vrac', 'Више ученика', 'الطالب الأكبر'),
(227, 'excel_import', 'Import from excel', 'Importar desde excel', 'Importar do excel', 'एक्सेल से आयात करें', 'Importation depuis Excel', 'Екцел импорт', 'تسجيل النموذج'),
(228, 'register_form', 'Register form', 'Formulario de registro', 'Formulário de registro', 'रजिस्टर फॉर्म', 'Formulaire d\'inscription', 'Регистарски образац', 'أضف المزيد'),
(229, 'add_more', 'Add more', 'Agregar más', 'Adicione mais', 'अधिक जोड़ें', 'Ajouter plus', 'Додај још', 'أضف المزيد'),
(230, 'download_model', 'Download model', 'Descargar modelo', 'Baixar modelo', 'डाउनलोड मॉडल', 'Télécharger le modèle', 'Довнлоад модел', 'تحميل النموذج'),
(231, 'import', 'Import', 'Importar ', 'Importar', 'आयात', 'Importer', 'увоз', 'استيراد'),
(232, 'accept', 'Accept', 'Aceptar', 'Aceitar', 'स्वीकार करना', 'Acceptez', 'Прихватити', 'قبول'),
(233, 'reject', 'Reject', 'Rechazar', 'Rejeitar', 'अस्वीकार', 'Rejeter', 'одбити', 'رفض'),
(234, 'new_password', 'New password', 'Nueva contrasela', 'Nova senha', 'नया पासवर्ड', 'Nouveau mot de passe', 'Нова лозинка', 'كلمة السر الجديدة'),
(235, 'assigned_subjects', 'Assigned Subjects', 'Cursos asignados', 'Assuntos Assinados', 'सौंपा विषय', 'Sujets assignés', 'Додељени предмети', 'الموضوعات المخصصة'),
(236, 'assigned_students', 'Assigned Students', 'Estudiantes asignados', 'Alunos Atribuídos', 'असाइन किए गए छात्र', 'Étudiants affectés', 'Додијељени студенти', 'الطلاب المعينين'),
(237, 'all', 'All', 'Todos', 'Todos', 'सब', 'Tout', 'све', 'الكل'),
(238, 'addres', 'Address', 'Dirección', 'Endereço', 'पता', 'Adresse', 'Адреса', 'عنوان'),
(239, 'inactive', 'Inactive', 'Inactivo', 'Inativo', 'निष्क्रिय', 'Inactif', 'Неактиван', 'غير نشط'),
(240, 'semester', 'Semester', 'Unidad', 'Semestre', 'छमाही', 'Semestre', 'Семестар', 'نصف السنة'),
(241, 'update_activities', 'Update activities', 'Actualizar acividades', 'Atualizar atividades', 'गतिविधियों को अपडेट करें', 'Activités de mise à jour', 'Активности ажурирања', 'تحديث الأنشطة'),
(242, 'student_attendance_report', 'Student Attendance Report', 'Reporte de asistencia estudiantes', 'Relatório de presença de estudantes', 'छात्र उपस्थिति रिपोर्ट', 'Rapport de présence des étudiants', 'Извештај о ученику', 'تقرير حضور الطالب'),
(243, 'present', 'Present', 'Presente', 'Presente', 'वर्तमान', 'Présent', 'поклон', 'حاضر'),
(244, 'late', 'Late', 'Tarde', 'Atrasado', 'देर से', 'En retard', 'Касни', 'متأخر'),
(245, 'absent', 'Absent', 'Ausente', 'Ausente', 'अनुपस्थित', 'Absent', 'Одсутан', 'غائب'),
(246, 'add_class_routine', 'Add class routine', 'Agregar horario de clases', 'Adicionar rotina de classe', 'क्लास रूटीन जोड़ें', 'Ajouter une routine de classe', 'Додајте распоред распореда', 'إضافة روتين الطبقة'),
(247, 'day', 'Day', 'Día', 'Dia', 'दिन', 'journée', 'Дан', 'يوم'),
(248, 'monday', 'Monday', 'Lunes', 'Segunda-feira', 'सोमवार', 'Lundi', 'Понедељак', 'الإثنين'),
(249, 'tuesday', 'Tuesday', 'Martes', 'terça', 'मंगलवार', 'Mardi', 'Уторак', 'الثلاثاء'),
(250, 'wednesday', 'Wednesday', 'Miércoles', 'Quarta-feira', 'बुधवार', 'Mercredi', 'Среда', 'الأربعاء'),
(251, 'thursday', 'Thursday', 'Jueves', 'Quinta-feira', 'गुरूवार', 'Jeudi', 'Четвртак', 'الخميس'),
(252, 'time_start', 'Time start', 'Hora de inicio', 'Início do tempo', 'समय प्रारंभ', 'Démarrage du temps', 'Почетак времена', 'بداية الوقت'),
(253, 'hour', 'Hour', 'Hora', 'Hora', 'घंटा', 'Heure', 'Сат', 'ساعة'),
(254, 'time_end', 'Time end', 'Hora final', 'Fim do tempo', 'समय समाप्ति', 'Fin du temps', 'Временски крај', 'نهاية الوقت'),
(255, 'friday', 'Friday', 'Viernes', 'Sexta-feira', 'शुक्रवार', 'Vendredi', 'Петак', 'يوم الجمعة'),
(256, 'add_news', 'Add news', 'Agregar noticia', 'Adicione notícias', 'समाचार जोड़ें', 'Ajouter des nouvelles', 'Додајте вести', 'إضافة أخبار'),
(257, 'edit', 'Edit', 'Editar', 'Editar', 'संपादित करें', 'modifier', 'Уредити', 'تصحيح'),
(258, 'update_news', 'Update news', 'Actualizar noticia', 'Atualizar notícias', 'न्यूज अपडेट करें', 'Actualiser les nouvelles', 'Ажурирајте вести', 'آخر الأخبار'),
(259, 'featured_image', 'Featured image', 'Imagen destacada', 'Imagem em destaque', 'निरूपित चित्र', 'L\'image sélectionnée', 'садржавана слика', 'صورة مميزة'),
(260, 'notice', 'Notice', 'Noticia', 'Aviso prévio', 'नोटिस', 'Remarquer', 'објава', 'تنويه'),
(261, 'add_book', 'Add book', 'Agregar libro', 'Adicionar livro', 'पुस्तक जोड़ें', 'Ajouter un livre', 'Додајте књигу', 'إضافة كتاب'),
(262, 'available', 'Available', 'Disponible', 'acessível', 'उपलब्ध', 'Disponible', 'доступан', 'متاح'),
(263, 'unavailable', 'Unavailable', 'No disponible', 'Indisponível', 'अनुपलब्ध', 'Indisponible', 'Недоступан', 'غير متوفره'),
(264, 'book', 'Book', 'Libro', 'Livro', 'किताब', 'Livre', 'Књига', 'كتاب'),
(265, 'image', 'Image', 'Imagen', 'Imagem', 'छवि', 'Image', 'слика', 'صورة'),
(266, 'other', 'Other', 'Otros', 'De outros', 'अन्य', 'Autre', 'Други', 'آخر'),
(267, 'reports', 'Reports', 'Reportes', 'Relatórios', 'रिपोर्ट', 'Rapports', 'извештаји', 'تقارير'),
(268, 'student_reports', 'Student reports', 'Reporte de estudiantes', 'Relatórios estudantis', 'छात्र रिपोर्ट', 'Rapports d\'étudiants', 'Студентски извештаји', 'تقارير الطالب'),
(269, 'create_report', 'Create report', 'Crear reporte', 'Criar relatório', 'रिपोर्ट बनाएं', 'Creer un rapport', 'Креирајте извештај', 'إنشاء تقرير'),
(270, 'created_by', 'Created by', 'Creado por', 'Criado por', 'के द्वारा बनाई गई', 'Créé par', 'Креирана од стране', 'صنع من قبل'),
(271, 'teacher_reports', 'Teacher reports', 'Reporte de profesores', 'Relatórios dos professores', 'शिक्षक की रिपोर्ट', 'Rapports des enseignants', 'Извјештај учитеља', 'تقارير المعلم'),
(272, 'medium', 'Medium', 'Media', 'Médio', 'मध्यम', 'Moyen', 'Средња', 'متوسط'),
(273, 'upload_file', 'Upload file', 'Subir archivo', 'Subir arquivo', 'दस्तावेज अपलोड करें', 'Téléverser un fichier', 'отпреми датотекуc', 'رفع ملفتفاصيل التقرير'),
(274, 'report_details', 'Report details', 'Detalles del reporte', 'Informar detalhes', 'रिपोर्ट का विवरण', 'Signaler des détails', 'Извештај детаље', 'تفاصيل التقرير'),
(275, 'mark_solved', 'Mark as resolved', 'Marcar como resuelto', 'Marcar como resolvido', 'सही के रूप में चिन्हित करो', 'Marquer comme résolu', 'Означи као ријешено', 'وضع علامة على أنه تم حلها'),
(276, 'user_report', 'Reporting User', 'Usuario que reporta', 'Reporting User', 'रिपोर्टिंग उपयोगकर्ता', 'Reporting utilisateur', 'Кориснички извештај', 'الإبلاغ عن المستخدم'),
(277, 'user', 'User', 'Usuario', 'Do utilizador', 'उपयोगकर्ता', 'Utilisateur', 'Корисник', 'المستعمل'),
(278, 'no_options', 'No options', 'No hay opciones', 'Sem opções', 'कोई विकल्प नहीं', 'Aucune option', 'Нема опција', 'لا توجد خيارات'),
(279, 'invoice_details', 'Invoice details', 'Detalles de la factura', 'Detalhes da factura', 'चालान विवरण', 'Détails de la facture', 'Детаљи фактуре', 'تفاصيل الفاتورة'),
(280, 'payment_details', 'Payment details', 'Detalles del pago', 'Detalhes do pagamento', 'भुगतान विवरण', 'Détails de paiement', 'Подаци о плаћању', 'بيانات الدفع'),
(281, 'completed', 'Completed', 'Completado', 'Concluído', 'पूरा कर लिया है', 'Terminé', 'Завршено', 'منجز'),
(282, 'method', 'Method', 'Método', 'Método', 'तरीका', 'méthode', 'Метода', 'طريقة'),
(283, 'card', 'Card', 'Tarjeta', 'Cartão', 'कार्ड', 'Carte', 'Картица', 'بطاقة'),
(284, 'cash', 'Cash', 'Efectivo', 'Dinheiro', 'कैश', 'En espèces', 'Готовина', 'السيولة النقدية'),
(285, 'check', 'Check', 'Cheque', 'Check', 'चेक', 'Vérifier', 'Провери', 'التحقق من'),
(286, 'create_invoice', 'Create invoice', 'Crear factura', 'Criar recibo', 'इनवॉयस बनाएँ', 'Créer une facture', 'Креирајте фактуру', 'إنشاء فاتورة'),
(287, 'new_payment', 'New payment', 'Nuevo pago', 'Novo pagamento', 'नया भुगतान', 'Nouveau paiement', 'Нова уплата', 'دفعة جديدة'),
(288, 'expenses', 'Expenses', 'Egresos', 'Despesas', 'व्यय', 'Dépenses', 'трошкови', 'نفقات'),
(289, 'invoices', 'Invoices', 'Facturas', 'Faturas', 'चालान', 'Factures', 'Фактуре', 'الفواتير'),
(290, 'history', 'Payment history', 'Historial', 'Histórico de pagamento', 'भुगतान इतिहास', 'Historique de paiement', 'Историја', 'سجل الدفعات'),
(291, 'add_class_room', 'Add classroom', 'Agregar salon de clases', 'Adicionar sala de aula', 'कक्षा जोड़ें', 'Ajouter une salle de classe', 'Додајте учионицу', 'إضافة فصل دراسي'),
(292, 'number', 'Number', 'Número', 'Número', 'संख्या', 'Nombre', 'број', 'رقم'),
(293, 'route', 'Route', 'Ruta', 'Rota', 'मार्ग', 'Route', 'рута', 'طريق'),
(294, 'bus_id', 'Bus ID', 'ID del bus', 'Bus ID', 'बस आईडी', 'Identifiant du bus', 'Бус ид', 'معرف الحافلة'),
(295, 'driver', 'Driver name', 'Conductor', 'Nome do motorista', 'चालक का नाम', 'Nom du conducteur', 'Возач', 'اسم السائق'),
(296, 'driver_phone', 'Driver phone', 'Celular del conductor', 'Driver phone', 'चालक फोन', 'Téléphone du pilote', 'Управљачки телефон', 'هاتف السائق'),
(297, 'transport_name', 'Transport name', 'Nombre del bus', 'Nome do transporte', 'परिवहन का नाम', 'Nom du transport', 'Име транспорта', 'اسم النقل'),
(298, 'bus_ID', 'Bus ID', 'ID del bus', 'Buss ID', 'बस आईडी', 'Identifiant du bus', 'Бус ид', 'معرف الحافلة'),
(299, 'driver_name', 'Driver name', 'Nombre del conductor', 'Nome do motorista', 'चालक का नाम', 'Nom du conducteur', 'Име возача', 'اسم السائق'),
(300, 'create_poll', 'Create poll', 'Crear encuesta', 'Create poll', 'मतदान बनाएं', 'Créer un sondage', 'Створити анкету', 'إنشاء استطلاع الرأي'),
(301, 'more_options', 'More options', 'Más opciones', 'Mais opções', 'अधिक विकल्प', 'Plus d\'options', 'Више опција', 'خيارات أخرى'),
(302, 'system_name', 'System name', 'Nombre del sistema', 'Nome do sistema', 'सिस्टम का नाम', 'Nom du système', 'Име система', 'اسم النظام'),
(303, 'logo', 'Logotype', 'Logotipo', 'Logótipo', 'लोगोटाइप', 'Logotype', 'Лого', 'الشعار'),
(304, 'system_title', 'System title', 'Título del sistema', 'Título do sistema', 'सिस्टम शीर्षक', 'Titre du système', 'Назив система', 'عنوان النظام'),
(305, 'language', 'Language', 'Idioma', 'Língua', 'भाषा', 'La langue', 'Језик', 'لغة'),
(306, 'currency', 'Currency', 'Moneda', 'Moeda', 'मुद्रा', 'Devise', 'Валута', 'دقة'),
(307, 'paypal_email', 'PayPal email', 'Correo de PayPal', 'PayPal email', 'पे पल ईमेल', 'Email Paypal', 'Емаил паипал', 'بريد باي بال'),
(308, 'running_year', 'Running year', 'Año en curso', 'Ano corrente', 'वर्ष चल रहा है', 'Année courante', 'Године', 'تشغيل العام'),
(309, 'personalization', 'Personalization', 'Personalización', 'Personalização', 'निजीकरण', 'Personnalisation', 'Персонализација', 'إضفاء الطابع الشخصي'),
(310, 'theme', 'Theme', 'Tema', 'Tema', 'विषय', 'Thème', 'Тема', 'المقدمة'),
(311, 'sms_service', 'SMS Service', 'Servicio de SMS', 'SMS Service', 'एसएमएस सेवा', 'Service SMS', 'Смс сервис', 'خدمة الرسائل القصيرة'),
(312, 'disabled', 'Disabled', 'Desactivado', 'Disabled', 'विकलांग', 'désactivé', 'Онемогућено', 'معاق'),
(313, 'notify_send', 'What notifications do you want to send?', '¿Qué notificaciones desea enviar?', 'Quais notificações você deseja enviar?', 'आप कौन से अधिसूचनाएं भेजना चाहते हैं?', 'Quelles notifications voulez-vous envoyer?', 'Које обавештења желите послати?', 'ما الإخطارات التي تريد إرسالها؟'),
(314, 'for_parents', 'For parents', 'Para padres', 'Para os pais', 'माता - पिता के लिए', 'Pour les parents', 'За родитеље', 'للوالدين'),
(315, 'absences', 'Absences', 'Ausencias', 'Ausências', 'अनुपस्थिति', 'Absences', 'Одсуства', 'الغياب'),
(316, 'students_reports', 'Student reports', 'Reportes académicos', 'Relatórios estudantis', 'छात्र रिपोर्ट', 'Rapports d\'étudiants', 'Студенти извештавају', 'تقارير الطالب'),
(317, 'new_invoice', 'New invoice', 'Nueva factura', 'Nova factura', 'नया चालान', 'Nouvelle facture', 'Нова фактура', 'فاتورة جديدة'),
(318, 'for_students', 'For students', 'Para estudiantes', 'Para estudantes', 'छात्रों के लिए', 'Pour les étudiants', 'За студенте', 'للطلاب'),
(319, 'new_homework', 'New homework', 'Nueva tarea', 'Nova tarefa de casa', 'नया होमवर्क', 'Nouveau travail', 'Нови домаћи задатак', 'الواجبات المنزلية الجديدة'),
(320, 'smtp_host', 'SMTP Hostname', 'Host SMTP', 'SMTP Host', 'एसएमटीपी होस्टनाम', 'SMTP Hostname', 'Смпт хост', 'SMTP Hostname'),
(321, 'smtp_port', 'SMTP Port', 'Puerto SMTP', 'SMTP Port', 'एसएमटीपी पोर्ट', 'SMTP Port', 'Смпт порт', 'SMTP Port'),
(322, 'smtp_timeout', 'SMTP Timeout', 'Tiempo de espera', 'SMTP Timeout', 'एसएमटीपी समयबाह्य', 'SMTP Timeout', 'Смтп тимеоут', 'SMTP Timeout'),
(323, 'smtp_user', 'SMTP User', 'Usuario SMTP', 'SMTP User', 'एसएमटीपी उपयोगकर्ता', 'SMTP User', 'Смтп корисник', 'SMTP User'),
(324, 'smtp_password', 'SMTP Password', 'Contraseña SMTP', 'SMTP Password', 'एसएमटीपी पासवर्ड', 'SMTP Password', 'Смтп лозинка', 'SMTP Password'),
(325, 'charset', 'Charset', 'Tipo de caracter', 'Charset', 'harset', 'Charset', 'Цхарсет', 'محارف'),
(326, 'mail_type', 'Mailtype', 'Tipo de correo', 'Mailtype', 'Mailtype', 'Mailtype', 'Маил порука', 'Mailtype'),
(327, 'email_templates', 'Email templates', 'Plantillas de correo', 'Modelos de e-mail', 'ईमेल टेम्पलेट्स', 'Modèles d\'email', 'Емаил предлоге', 'قوالب البريد الإلكتروني'),
(328, 'send_marks', 'Send marks', 'Enviar calificaciones', 'Enviar marcas', 'अंक भेजें', 'Envoyer des marques', 'Пошаљи оцене', 'إرسال علامات'),
(329, 'bulk_email', 'Bulk email', 'Correos masivos', 'E-mail em massa', 'थोक ईमेल', 'Courrier électronique en vrac', 'Масовна пошта', 'البريد الإلكتروني السائبة'),
(330, 'languages', 'Languages', 'Idiomas', 'línguas', 'बोली', 'Langues', 'Језици', 'اللغات'),
(331, 'create_backup', 'Create system backup', 'Crear copia de seguridad', 'Criar backup do sistema', 'सिस्टम बैकअप बनाएं', 'Créer une sauvegarde système', 'Креирајте резервну копију', 'إنشاء نظام النسخ الاحتياطي'),
(332, 'restore_backup', 'Restore system backup', 'Restaurar copia de seguridad', 'Restaurar o backup do sistema', 'सिस्टम बैकअप पुनर्स्थापित करें', 'Restaurer la sauvegarde du système', 'Враћајте резервну копију', 'استعادة النسخ الاحتياطي للنظام'),
(333, 'restore', 'Restore', 'Restaurar', 'Restaurar', 'पुनर्स्थापित', 'Restaurer', 'Вратити', 'استعادة'),
(334, 'minimum_mark', 'Minimum mark to pass a subject', 'Nota mínima para aprobar un curso', 'Marca mínima para passar um assunto', 'किसी विषय को पास करने के लिए न्यूनतम अंक', 'Marque minimale pour transmettre un sujet', 'Минимална оцена за пролазак на курс', 'علامة الحد الأدنى لتمرير موضوع'),
(335, 'use_saturday', 'Use Saturday and Sunday at class routine?', '¿Utilizar sábado y domingo en horarios?', 'Use sábado e domingo no classroutine?', 'कक्षा नियमानुसार शनिवार और रविवार का उपयोग करें?', 'Utilisez le samedi et le dimanche à la routine de cours?', 'Користите суботу и недељу понекад?', 'استخدام السبت والأحد في روتين الطبقة؟'),
(336, 'yes', 'Yes', 'Si', 'sim', 'हाँ', 'Oui', 'да', 'نعم فعلا'),
(337, 'no', 'No ', 'No', 'No', 'नहीं', 'Non', 'не', 'لا'),
(338, 'classes', 'Classes', 'Grados', 'Aulas', 'कक्षाएं', 'Des classes', 'Часови', 'الطبقات'),
(339, 'start', 'Start', 'Iniciar', 'Começar', 'प्रारंभ', 'Début', 'почетак', 'بداية'),
(340, 'end', 'End', 'Fin', 'Fim', 'समाप्त', 'Fin', 'крај', 'النهاية'),
(341, 'runnig_year', 'Running year', 'Año en curso', 'Ano corrente', 'वर्ष चल रहा है', 'Année courante', 'Године', 'تشغيل العام'),
(342, 'year_to_promote', 'Year to promote', 'Año a promover', 'Ano de promoção', 'प्रोत्साहन के लिए वर्ष', 'Année de promotion', 'Годину за промоцију', 'السنة لتعزيز'),
(343, 'promote', 'Promote', 'Promover', 'Promover', 'को बढ़ावा देना', 'Promouvoir', 'Промовисати', 'تروج \\ يشجع \\ يعزز \\ ينمى \\ يطور'),
(344, 'promoted', 'Already promoted', 'Promovido', 'Já promovido', 'पहले से ही पदोन्नत', 'Déjà promu', 'Промовисана', 'تمت ترقيته بالفعل'),
(345, 'promote_to', 'Promote to', 'Promover a', 'Promover para', 'को बढ़ावा देना', 'Promouvoir', 'Промовисати', 'الترقية إلى'),
(346, 'send_marks_sms', 'Send marks notification by SMS', 'Enviar notificación de calificaciones por SMS', 'Enviar notificação de marca por SMS', 'एसएमएस द्वारा नोटिस भेजें', 'Envoyer une note de notification par SMS', 'Слање обавештења о квалификацијама путем СМС-а', 'إرسال علامات الإخطار عن طريق الرسائل القصيرة'),
(347, 'notification', 'Notification', 'Notificación', 'Notificação', 'अधिसूचना', 'Notification', 'Обавештење', 'إعلام'),
(348, 'send_sms', 'Send SMS', 'Enviar SMS', 'Enviar SMS', 'संदेश भेजो', 'Envoyer un SMS', 'послати СМС', 'أرسل رسالة نصية قصيرة'),
(349, 'my_subjects', 'My subjects', 'Mis cursos', 'Meus assuntos', 'मेरे विषय', 'Mes sujets', 'Моје субјекте', 'موضوعاتي'),
(350, 'my_routine', 'My routine', 'Mi horario', 'Minha rotina', 'मेरा दिनचर्या', 'Ma routine', 'моја рутина', 'روتين بلدي'),
(351, 'academic', 'Academic', 'Académico', 'Acadêmico', 'अकादमिक', 'Académique', 'Академски', 'أكاديمي'),
(352, 'student_absences', 'Student absences', 'Ausencias de estudiantes', 'Ausências estudantis', 'छात्र अनुपस्थिति', 'Les absences des étudiants', 'Одсуство студената', 'تغيب الطالب'),
(353, 'parent_new_invoice', 'New invoice (Parents)', 'Nueva factura (Padres)', 'Nova fatura (Pais)', 'नया चालान (अभिभावक)', 'Nouvelle facture (Parents)', 'Нова фактура (родитељ)', 'فاتورة جديدة (أولياء الأمور)'),
(354, 'student_new_invoice', 'New invoice (Students)', 'Nueva factura (Estudiantes)', 'Nova factura (Estudantes)', 'नया चालान (छात्र)', 'Nouvelle facture (étudiants)', 'Нови рачун (студенти)', 'فاتورة جديدة (طلاب)'),
(355, 'email_subject', 'Email subject', 'Asunto del correo', 'Assunto do email', 'ईमेल विषय', 'Sujet du courriel', 'Емаил субјецт', 'موضوع البريد الإلكتروني'),
(356, 'email_body', 'Email body', 'Contenido del correo', 'Corpo do email', 'ईमेल बॉडी', 'Courrier électronique', 'Емаил тело', 'هيئة البريد الإلكتروني'),
(357, 'reciever', 'Receiver', 'Receptor', 'Receptor', 'रिसीवर', 'Récepteur', 'Пријемник', 'المتلقي'),
(358, 'view_marks', 'View marks', 'Ver calificaciones', 'Ver marcas', 'देखें अंक', 'Afficher les marques', 'Погледајте ознаке', 'عرض علامات'),
(359, 'new_exam', 'New exam', 'Nuevo examen', 'Novo exame', 'नई परीक्षा', 'Nouvel examen', 'Нови испит', 'امتحان جديد'),
(360, 'start_hour', 'Start hour', 'Hora de inicio', 'Hora de início', 'शुरुआती घंटे', 'Heure de début', 'Почните сат', 'بدء الساعة'),
(361, 'end_hour', 'End hour', 'Hora de finalización', 'Hora final', 'समाप्ति समय', 'Heure de fin', 'Крај сата', 'نهاية الساعة'),
(362, 'exam_duration', 'Exam duration (in minutes)', 'Duración del examen (en minutos)', 'Tempo de exame em minutos', 'मिनटों में परीक्षा का समय', 'Durée de l\'examen (en minutes)', 'Време испитивања (у минутима)', 'مدة الامتحان (بالدقائق)'),
(363, 'exam_details', 'Exam details', 'Detalles del examen', 'Detalhes do Exame', 'परीक्षा विवरण', 'Détails de l\'examen', 'Испитни детаљи', 'تفاصيل الامتحان'),
(364, 'questions', 'Questions', 'Preguntas', 'Questões', 'प्रशन', 'Des questions', 'Питање', 'الأسئلة'),
(365, 'exam_questions', 'Exam questions', 'Preguntas del examen', 'Perguntas do exame', 'परीक्षा प्रश्न', 'Questions d\'examen', 'Испитна питања', 'أسئلة الامتحان'),
(366, 'add_question', 'Add question', 'Agregar pregunta', 'Adicionar pergunta', 'प्रश्न जोड़ें', 'Ajouter une question', 'Додајте питање', 'إضافة سؤال'),
(367, 'option', 'Option', 'Opción', 'Opção', 'विकल्प', 'Option', 'опција', 'اختيار'),
(368, 'exams_results', 'Exam results', 'Resultados del examen', 'Resultados dos exames', 'परीक्षा के परिणाम', 'Résultats d\'examen', 'Резултати испита', 'نتائج الامتحانات'),
(369, 'update_exam', 'Update exam', 'Actualizar examen', 'Exame de atualização', 'परीक्षा अपडेट करें', 'Examen de mise à jour', 'Ажурирајте испит', 'تحديث الاختبار'),
(370, 'start_clock', 'Start hour', 'Hora de inicio', 'Hora de início', 'शुरुआती घंटे', 'Heure de début', 'Започети сат', 'بدء الساعة'),
(371, 'end_clock', 'End hour', 'Hora de finalización', 'Hora final', 'समाप्ति समय', 'Heure de fin', 'Крај сата', 'نهاية الساعة'),
(372, 'no_file', 'No file available', 'Sin archivo', 'Nenhum arquivo disponível', 'कोई फ़ाइल उपलब्ध नहीं है', 'Aucun fichier disponible', 'нема фајла', 'لا يتوفر أي ملف'),
(373, 'study_meterial', '', 'Material de estudio', '', '', '', 'Студијски материјал', ''),
(374, 'add_homework', 'Add homework', 'Agregar tarea', 'Adicione lição de casa', 'होमवर्क जोड़ें', 'Ajouter les devoirs', 'Додајте домаћи задатак', 'إضافة الواجبات المنزلية'),
(375, 'homework_type', 'Homework type', 'Tipo de tarea', 'Tipo de lição de casa', 'होमवर्क का प्रकार', 'Type de devoir', 'Домаћи тип', 'نوع الواجبات المنزلية'),
(376, 'online_text', 'Online text', 'Texto en línea', 'Texto em linha', 'ऑनलाइन पाठ', 'Texte en ligne', 'Онлине текст', 'النص عبر الإنترنت'),
(377, 'limit_hour', 'Limit hour', 'Hora límite', 'Hora limite', 'सीमा घंटे', 'Heure limite', 'Ограничити сат', 'ساعة الحد'),
(378, 'deliveries', 'Deliveries', 'Entregas', 'Entregas', 'वितरण', 'Livraisons', 'Испоруке', 'التسليم'),
(379, 'total_students', 'Total students', 'Estudiantes totales', 'Total de alunos', 'कुल छात्रों', 'Nombre total d\'étudiants', 'Укупно ученика', 'إجمالي الطلاب'),
(380, 'delivered', 'Delivered', 'Entregada', 'Entregue', 'पहुंचा दिया', 'Livré', 'испоручена', 'تم التوصيل');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`, `spanish`, `portuguese`, `hindi`, `french`, `serbian`, `arabic`) VALUES
(381, 'undeliverable', 'Undeliverable', 'Sin entregar', 'Não-entregável', 'गैर-वितरण योग्य', 'Non livrable', 'Унделиверабле', 'غير قابلة للتسليم'),
(382, 'student_comment', 'Student comment', 'Comentario del estudiante', 'Comentário do aluno', 'छात्र टिप्पणी', 'Commentaire de l\'élève', 'Студентски коментар', 'تعليق الطالب'),
(383, 'delivery_status', 'Delivery status', 'Estado de la entrega', 'Status de entrega', 'वितरण की स्थिति', 'Statut de livraison', 'Статус испоруке', 'حالة التسليم'),
(384, 'file_response', 'File/Response', 'Archivo/Respuesta', 'Arquivo / Resposta', 'फ़ाइल / प्रतिक्रिया', 'Fichier / Réponse', 'Одговор на фајл', 'ملف / الاستجابة'),
(385, 'delayed_delivery', 'Delivery after time', 'Entrega tarde', 'Entrega após o tempo', 'समय के बाद वितरण', 'Livraison après le temps', 'Одложена испорука', 'التسليم بعد الوقت'),
(386, 'update_homework', 'Update homework', 'Actualizar tarea', 'Atualize a lição de casa', 'होमवर्क अपडेट करें', 'Mettre à jour les devoirs', 'Ажурирати домаћи задатак', 'تحديث الواجبات المنزليةv'),
(387, 'delivery_type', 'Delivery type', 'Tipo de entrega', 'Tipo de entrega', 'वितरण के प्रकार', 'Type de livraison', 'Тип испоруке', 'نوع التوصيل'),
(388, 'new_discussion', 'New discussion', 'Nueva discusión ', 'Nova discussão', 'नई चर्चा', 'Nouvelle discussion', 'Нова дискусија', 'مناقشة جديدة'),
(389, 'publish', 'Publish', 'Publicar', 'Publicar', 'प्रकाशित करना', 'Publier', 'Објавити', 'نشر'),
(390, 'update_forum', 'Update forum', 'Actualizar foro', 'Atualizar fórum', 'फ़ोरम अपडेट करें', 'Forum de mise à jour', 'Упдате форум', 'تحديث المنتدى'),
(391, 'uploaded_by', 'Uploaded by', 'Subido por', 'Enviado por', 'द्वारा डाली गई', 'telechargé par', 'Уплоадед би', 'تم الرفع بواسطة'),
(392, 'send_bulk_emails', 'Send bulk email', 'Enviar correos masivos', 'Enviar e-mail em massa', 'थोक ईमेल भेजें', 'Envoyer un courrier électronique en bloc', 'Пошаљите масе е-поште', 'إرسال البريد الإلكتروني المجمع'),
(393, 'categories', 'Categories', 'Categorías', 'Categorias', 'श्रेणियाँ', 'Catégories', 'Категорије', 'الاقسام'),
(394, 'new_expense', 'New expense', 'Nuevo egreso', 'Nova despesa', 'नया खर्च', 'Nouvelle dépense', 'Ново издање', 'حساب جديد'),
(395, 'category', 'Category', 'Categoría', 'Categoria', 'वर्ग', 'Catégorie', 'Категорија', 'الفئة'),
(396, 'new_category', 'New category', 'Nueva categoria', 'Nova categoria', 'नई श्रेणी', 'Nouvelle catégorie', 'Нова категорија', 'فئة جديدة'),
(397, 'confirm_delete', 'Do you want to delete the information?', 'Seguro desea eliminar la información?', 'Deseja excluir as informações?', 'क्या आप जानकारी को हटाना चाहते हैं?', 'Voulez-vous supprimer les informations?', 'Да ли желите да обришете информације?', 'هل تريد حذف المعلومات؟'),
(398, 'confirm_approval', 'Surely you want to approve?', 'Confirma que desea aprobar?', 'Certamente você quer aprovar?', 'निश्चित रूप से आप स्वीकृति देना चाहते हैं?', 'Vous voulez certainement approuver?', 'Да ли желите да одобрите?', 'بالتأكيد كنت ترغب في الموافقة؟'),
(399, 'confirm_reject', 'Insurance do you want to reject?', 'Confirma que desea rechazar?', 'Seguro você quer rejeitar?', 'बीमा क्या आप अस्वीकार करना चाहते हैं?', 'Assurance voulez-vous rejeter?', 'Да ли желите да одбијете?', 'التأمين هل تريد أن ترفض؟'),
(400, 'confirm_delete_student', 'Are you sure you want to remove the student?', 'Confirma que desea eliminar al estudiante?', 'Tem certeza de que deseja remover o aluno?', 'क्या आप वाकई छात्र को निकालना चाहते हैं?', 'Êtes-vous sûr de vouloir supprimer l\'étudiant?', 'Да ли желите да избришете ученика?', 'هل تريد بالتأكيد إزالة الطالب؟'),
(401, 'confirm_solved', 'Are you sure you want to mark as resolved?', 'Seguro desea marcar como resuelto?', 'Tem certeza de que deseja marcar como resolvido?', 'क्या आप वाकई हल के रूप में चिह्नित करना चाहते हैं?', 'Êtes-vous sûr de vouloir marquer comme résolu?', 'Осигурање желите означити као ријешено?', 'هل تريد بالتأكيد وضع علامة على أنه تم حلها؟'),
(402, 'notification_center', 'Notification center', 'Centro de notificaciones', 'Centro de Notificação', 'सूचना केन्द्र', 'Centre de notification', 'Обавештење центар', 'مركز إعلام'),
(403, 'welcome_notifications', 'Welcome to the notification center', 'Bienvenido al centro de notificaciones', 'Bem-vindo ao centro de notificação', 'अधिसूचना केंद्र में आपका स्वागत है', 'Bienvenue au centre de notification', 'Добродошли у центар за обавештења', 'مرحبا بكم في مركز الإعلام'),
(404, 'what_send', 'What do you want to notify today?', '¿Qué notificaciones desea enviar?', 'O que você quer notificar hoje?', 'आज आपको क्या सूचित करना है?', 'Que souhaitez-vous notifier aujourd\'hui?', 'Које обавештења желите послати?', 'ماذا تريد أن تخطر اليوم؟'),
(405, 'send_email', 'Send email', 'Enviar correo', 'Enviar email', 'ईमेल भेजें', 'Envoyer un courrier électronique', 'Пошаљи пошту', 'ارسل بريد الكتروني'),
(406, 'successfully_added', 'Successfully added information', 'Información agregada con éxito', 'nformações adicionadas com sucesso', 'सफलतापूर्वक जानकारी जोड़ा', 'Informations ajoutées avec succès', 'Успешно додано', 'تمت إضافة معلومات بنجاح'),
(407, 'successfully_updated', 'Information updated successfully', 'Información actualizada con éxito', 'Informações atualizadas com sucesso', 'सूचना सफलतापूर्वक अपडेट की गई', 'Informations mises à jour avec succès', 'Успешно ажуриран', 'تم تحديث المعلومات بنجاح'),
(408, 'successfully_deleted', 'Information deleted successfully', 'Información eliminada con éxito', 'Informações eliminadas com sucesso', 'जानकारी सफलतापूर्वक हटाई गई', 'Informations supprimées avec succès', 'Успешно избрисан', 'تم حذف المعلومات بنجاح'),
(409, 'sent_successfully', 'Information sent successfully', 'Información enviada con éxito', 'Informações enviadas com sucesso', 'सूचना सफलतापूर्वक भेजी गई', 'Informations envoyées avec succès', 'Послато успешно', 'تم إرسال المعلومات بنجاح'),
(410, 'successfully_uploaded', 'Information uploaded successfully', 'Información subida con éxito', 'Informações carregadas com sucesso', 'सूचना सफलतापूर्वक अपलोड की गई', 'Informations téléchargées avec succès', 'Успешно постављен', 'تم تحميل المعلومات بنجاح'),
(411, 'reply_sent', 'Reply sent', 'Respuesta enviada', 'Resposta enviada', 'उत्तर भेजा', 'Réponse envoyée', 'Одговор послат', 'تم إرسال الرد'),
(412, 'message_sent', 'Message sent', 'Mensaje enviado', 'Mensagem enviada', 'मैसेज बेजा गया', 'Message envoyé', 'Порука послата', 'تم الارسال'),
(413, 'limit_questions', 'To add more questions configure the exam to accept more', 'Para agregar más preguntas configura el examen para aceptar más', 'Para adicionar mais perguntas configure o exame para aceitar mais', 'और अधिक प्रश्न जोड़ने के लिए अधिक स्वीकार करने के लिए परीक्षा को कॉन्फ़िगर करें', 'Pour ajouter d\'autres questions, configurez l\'examen pour accepter plus', 'Да бисте додали још питања, конфигурирајте испит да бисте прихватили више', 'لإضافة المزيد من الأسئلة، يمكنك تهيئة الاختبار لقبول المزيد'),
(414, 'delivered_homework', 'Homework successfully delivered', 'Tarea entregada correctamente', 'Tarefa entregue corretamente.', 'कार्य सफलतापूर्वक वितरित', 'Travail à domicile livré avec succès', 'Задатак је исправно достављен', 'تم تسليم الواجبات المنزلية بنجاح'),
(415, 'paid', 'Paid', 'Pagado', 'Paid', 'भुगतान किया', 'Payé', 'Плаћени', 'دفع'),
(416, 'unpaid', 'Unpaid', 'Sin pagar', 'Unpaid', 'वेतन के बिना', 'Non payé', 'Неплаћен', 'غير مدفوع'),
(417, 'social', 'Socials', 'Social', 'Social', 'सामाजिक', 'Socials', 'Социјално', 'سيالز'),
(418, 'no_questions', 'No. Questions', 'No. de Preguntas', 'Pergunta Total', 'कोई प्रश्न नहीं', 'Question totale', 'Укупно питање', 'إجمالي السؤال'),
(419, 'on_time', 'On time', 'A tiempo', 'Na Hora', 'समय पर', 'À temps', 'На време', 'في الوقت المحدد'),
(420, 'view_response', 'View response', 'Ver respuesta', 'Ver resposta', 'प्रतिक्रिया देखें', 'Voir la réponse', 'Погледајте одговор', 'عرض الرد'),
(422, 'success_password', 'Your password has been reset successfully. This is your new password:', 'Tu password ha sido reseteado exitosamente. Éste es tu nuevo password:', 'Sua senha foi reiniciada com sucesso. Esta é a sua nova senha:', 'आपका पासवर्ड सफलतापूर्वक रीसेट कर दिया गया है यह आपका नया पासवर्ड है:', 'Votre mot de passe a été réinitialisé avec succès. Ceci est votre nouveau mot de passe:', 'Ваша лозинка је успјешно ресетована. Ово је ваша нова лозинка:', 'تمت إعادة تعيين كلمة المرور بنجاح. هذه هي كلمة المرور الجديدة:'),
(425, 'successfully_promoted', '', '', NULL, NULL, NULL, NULL, ''),
(426, 'update_event', '', '', NULL, NULL, NULL, NULL, '');

-- --------------------------------------------------------

--
-- Table structure for table `libreria`
--

CREATE TABLE `libreria` (
  `libro_id` int(11) NOT NULL,
  `libro_code` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `title` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `description` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `class_id` int(11) NOT NULL,
  `uploader_type` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `uploader_id` int(11) NOT NULL,
  `year` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `timestamp` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `file_name` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `subject_id` int(11) DEFAULT NULL,
  `nombre` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `autor` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `mark`
--

CREATE TABLE `mark` (
  `mark_id` int(11) NOT NULL,
  `student_id` int(11) NOT NULL,
  `subject_id` int(11) NOT NULL,
  `class_id` int(11) NOT NULL,
  `section_id` int(11) NOT NULL,
  `exam_id` int(11) NOT NULL,
  `mark_obtained` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `mark_total` int(11) NOT NULL DEFAULT '100',
  `comment` longtext COLLATE utf8_unicode_ci,
  `year` longtext COLLATE utf8_unicode_ci NOT NULL,
  `labuno` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `labdos` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `labtres` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `labcuatro` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `labcinco` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `labseis` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `labsiete` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `labocho` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `labnueve` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `labtotal` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `final` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `mark`
--

INSERT INTO `mark` (`mark_id`, `student_id`, `subject_id`, `class_id`, `section_id`, `exam_id`, `mark_obtained`, `mark_total`, `comment`, `year`, `labuno`, `labdos`, `labtres`, `labcuatro`, `labcinco`, `labseis`, `labsiete`, `labocho`, `labnueve`, `labtotal`, `final`) VALUES
(1, 1, 58, 1, 1, 0, NULL, 100, NULL, '2017-2018', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(2, 1, 140, 1, 1, 0, NULL, 100, NULL, '2017-2018', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(3, 2, 140, 1, 1, 0, NULL, 100, NULL, '2017-2018', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(4, 1, 140, 1, 1, 1, '1', 100, '', '2017-2018', '2', '3', '4', '5', '6', '8', '7', '9', '22', '67', NULL),
(5, 2, 140, 1, 1, 1, '', 100, '', '2017-2018', '', '', '', '', '', '', '', '', '', '0', NULL),
(6, 1, 141, 1, 1, 1, '10', 100, '9', '2017-2018', '10', '10', '10', '10', '9', '9', '9', '9', '9', '95', NULL),
(7, 2, 141, 1, 1, 1, '', 100, '', '2017-2018', '', '', '', '', '', '', '', '', '', '0', NULL),
(8, 1, 141, 1, 1, 4, '', 100, '', '2017-2018', '', '', '', '', '', '', '', '', '', '0', NULL),
(9, 2, 141, 1, 1, 4, '10', 100, '', '2017-2018', '', '', '', '', '', '', '', '', '', '10', NULL),
(10, 1, 140, 1, 1, 2, NULL, 100, NULL, '2017-2018', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(11, 2, 140, 1, 1, 2, NULL, 100, NULL, '2017-2018', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(12, 1, 144, 1, 1, 1, NULL, 100, NULL, '2017-2018', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(13, 2, 144, 1, 1, 1, NULL, 100, NULL, '2017-2018', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(14, 1, 142, 1, 1, 1, '', 100, '', '2017-2018', '', '', '', '', '', '', '', '', '', '0', NULL),
(15, 2, 142, 1, 1, 1, '', 100, '', '2017-2018', '', '', '', '', '', '', '', '', '', '0', NULL),
(16, 4, 141, 1, 1, 1, NULL, 100, NULL, '2017-2018', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(17, 5, 141, 1, 1, 1, NULL, 100, NULL, '2017-2018', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(18, 4, 142, 1, 1, 1, '', 100, '', '2017-2018', '', '', '', '', '', '', '', '', '', '0', NULL),
(19, 5, 142, 1, 1, 1, '', 100, '', '2017-2018', '', '', '', '', '', '', '', '', '', '0', NULL),
(20, 4, 140, 1, 1, 1, '', 100, '', '2017-2018', '', '', '', '', '', '', '', '', '', '0', NULL),
(21, 5, 140, 1, 1, 1, '', 100, '', '2017-2018', '', '', '', '', '', '', '', '', '', '0', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `marks`
--

CREATE TABLE `marks` (
  `id` int(11) NOT NULL,
  `title` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `mark` decimal(10,0) NOT NULL DEFAULT '0',
  `year` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `class_id` int(11) NOT NULL,
  `section_id` int(11) NOT NULL,
  `subject_id` int(11) NOT NULL,
  `teacher_id` int(11) NOT NULL,
  `exam_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `mensaje_reporte`
--

CREATE TABLE `mensaje_reporte` (
  `news_message_id` int(11) NOT NULL,
  `message` longtext COLLATE utf8_unicode_ci NOT NULL,
  `news_id` int(11) NOT NULL,
  `date` longtext COLLATE utf8_unicode_ci NOT NULL,
  `user_type` longtext COLLATE utf8_unicode_ci NOT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `mensaje_reporte`
--

INSERT INTO `mensaje_reporte` (`news_message_id`, `message`, `news_id`, `date`, `user_type`, `user_id`) VALUES
(1, 'asasas', 2, '16 Jan 2018', 'admin', 1),
(2, 'asasasa', 2, '19 Jan 2018', 'teacher', 2),
(3, 'sadsadsa', 2, '19 Jan 2018', 'teacher', 2),
(4, 'adsadsasa', 2, '19 Jan 2018', 'teacher', 2),
(5, 'asdsada', 2, '19 Jan 2018', 'teacher', 2),
(6, 'd', 2, '19 Jan 2018', 'teacher', 2),
(7, 'd', 2, '19 Jan 2018', 'teacher', 2),
(8, 'd', 2, '19 Jan 2018', 'teacher', 2),
(9, 'd', 2, '19 Jan 2018', 'teacher', 2),
(10, 'asdsadsa', 2, '19 Jan 2018', 'teacher', 2),
(11, 'asdsadsa', 2, '19 Jan 2018', 'teacher', 2),
(12, 'asdsadsa', 2, '19 Jan 2018', 'teacher', 2),
(13, 'asdsadsa', 2, '19 Jan 2018', 'teacher', 2),
(14, 'sadadsa', 2, '19 Jan 2018', 'teacher', 2),
(15, 'dsasa', 2, '19 Jan 2018', 'teacher', 2),
(16, 'sadadad', 2, '19 Jan 2018', 'teacher', 2),
(17, 'AAAAAAAAAAssasadsadsad sadsadsadssds', 2, '19 Jan 2018', 'teacher', 2),
(18, 'AAAAAAA sssss', 2, '19 Jan 2018', 'teacher', 2);

-- --------------------------------------------------------

--
-- Table structure for table `message`
--

CREATE TABLE `message` (
  `message_id` int(11) NOT NULL,
  `message_thread_code` longtext NOT NULL,
  `message` longtext NOT NULL,
  `sender` longtext NOT NULL,
  `timestamp` longtext NOT NULL,
  `read_status` int(11) NOT NULL DEFAULT '0' COMMENT '0 unread 1 read',
  `file_name` longtext
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `message`
--

INSERT INTO `message` (`message_id`, `message_thread_code`, `message`, `sender`, `timestamp`, `read_status`, `file_name`) VALUES
(1, '1202a5aa07d9ff6', 'hi', 'admin-1', '1515519237', 1, ''),
(2, '1202a5aa07d9ff6', 'hi', 'admin-1', '1515583551', 1, ''),
(3, '1202a5aa07d9ff6', 'Hello', 'admin-1', '1515672062', 1, ''),
(4, '1202a5aa07d9ff6', 'Chk', 'admin-1', '1515672091', 1, 'D690980C-F3B9-42EE-9FA9-52AFA1B80AD6.jpeg'),
(5, '05e287d62c6356e', 'Can you teach me', 'student-1', '1515673301', 1, ''),
(6, '05e287d62c6356e', 'hello', 'student-1', '1515684278', 1, ''),
(7, '006ef0bc0aa6b37', 'DDDDD', 'student-1', '1516082466', 1, ''),
(8, '006ef0bc0aa6b37', 'sdsddsasdsdds', 'student-1', '1516097780', 1, ''),
(9, 'e8e2e5444050ed1', 'ASsaSA', 'admin-1', '1516098373', 0, ''),
(10, '006ef0bc0aa6b37', 'hi', 'parent-1', '1516104537', 1, ''),
(11, '1202a5aa07d9ff6', 'bnbnbn', 'admin-1', '1516178684', 0, ''),
(12, '1202a5aa07d9ff6', 'hbvmnbmnm', 'admin-1', '1516178690', 0, '');

-- --------------------------------------------------------

--
-- Table structure for table `message_thread`
--

CREATE TABLE `message_thread` (
  `message_thread_id` int(11) NOT NULL,
  `message_thread_code` longtext COLLATE utf8_unicode_ci NOT NULL,
  `sender` longtext COLLATE utf8_unicode_ci NOT NULL,
  `reciever` longtext COLLATE utf8_unicode_ci NOT NULL,
  `last_message_timestamp` longtext COLLATE utf8_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `message_thread`
--

INSERT INTO `message_thread` (`message_thread_id`, `message_thread_code`, `sender`, `reciever`, `last_message_timestamp`) VALUES
(1, '1202a5aa07d9ff6', 'admin-1', 'teacher-2', NULL),
(2, '05e287d62c6356e', 'student-1', 'teacher-2', NULL),
(3, '006ef0bc0aa6b37', 'student-1', 'parent-1', NULL),
(4, 'e8e2e5444050ed1', 'admin-1', 'teacher-5', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `news`
--

CREATE TABLE `news` (
  `news_id` int(11) NOT NULL,
  `news_code` longtext COLLATE utf8_unicode_ci NOT NULL,
  `title` longtext COLLATE utf8_unicode_ci NOT NULL,
  `description` longtext COLLATE utf8_unicode_ci NOT NULL,
  `news_status` int(11) NOT NULL DEFAULT '1' COMMENT '1 for running, 0 for archived',
  `date` varchar(70) COLLATE utf8_unicode_ci NOT NULL,
  `users` varchar(500) COLLATE utf8_unicode_ci DEFAULT NULL,
  `type` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `from_` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `to_` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `news`
--

INSERT INTO `news` (`news_id`, `news_code`, `title`, `description`, `news_status`, `date`, `users`, `type`, `from_`, `to_`) VALUES
(1, 'c0626646f1', 'parent teacher meeting', 'Date : 05.12.2017\r\nDear Parents,\r\nKindly find the attached PDF file at bottom of the page containing the official E-mail IDs of all the PTA members.\r\n\r\nDate : 10.10.2017\r\nDear Parents, \r\nJohnson Grammar School announces its initiative to form a Parent Teacher Association, which is an educational, non – political and non – commercial body. The PTA is to help enrich the school environment and provide the stake holders with the required support. It is devoted to the following aims and objectives: \r\n\r\nObjectives \r\n\r\n	To advance the education and all-round development of the students by strengthening relationships between teachers, parents and others associated with the School. \r\n\r\n	To promote welfare of the school students. \r\n\r\n	To create necessary consciousness among the parents as well as stimulate their interest in the education of their children. \r\n\r\n	To make for a healthy and sympathetic understanding of the education policies and programs of the school and thus influence to create a suitable environment for implementation of the same. \r\n\r\nConstitution of PTA \r\n\r\n	Mothers of the students upto grade 7, are eligible to become the members of the PTA, as in the formative grades, she is generally a person who is more involved in all the nuances of the child’s development and will be able to understand their physical, emotional and psychological needs better. From grade 8 upwards, both the parents are eligible for the membership. \r\n\r\n	The Managing Committee of the PTA will be formed as far as practicable within a period of 2 (two) weeks from the date of formation of the PTA. A notice period of 1 (one) week will be given for the formation of the Managing Committee. \r\n\r\n	The management of the association is vested in the Executive Committee which consists of the Chairman, President, Vice President, Secretary, Joint Secretary and other representatives. Besides the Principal who is the Ex Officio, President of PTA, all the other posts are filled by drawing a lot. The posts will be as described below for each of the branches (Mallapur- Senior Wing, Junior Wing & Habsiguda-Junior School) \r\n\r\n1.	Chairman - Dean (common for Habsiguda and Mallapur branches) \r\n2.	President – Principal / HMs of the respective wings. \r\n3.	Vice President – from Parent Community of each wing \r\n4.	Secretary – from Teaching Staff (1 from each wing) \r\n5.	Joint Secretary – from Parent Community of each wing \r\n6.	Members of each wing – 1 from every section of each grade – from Parent Community, 1 from every Grade – from Teaching Community \r\n\r\nMembership to Managing Committee is for 1 year only. Please note that you can become the member of PTA Managing Committee only once in 3 years. \r\n\r\nRoles and Responsibility of the PTA: \r\n\r\nTo see that the syllabus is completed as planned. The PTA Managing Committee partakes in assisting the school in planning co-curricular activities and co-operates and assists with such other activities of the school. The Committee will adhere to the minutes of the meetings held. The Committee will assist the school in other such issues including ensuring that parents follow the proper code of conduct during visits. \r\n\r\nNote: PTA\'s role is limited to the above mentioned roles and responsibility. PTA and PTA Managing Committee are not permitted to intervene in the Day to Day affairs of the school Management. \r\nMembers shall be immediately terminated on the following grounds: \r\n	If a member is found acting prejudicially to the interest and working of the School and/or towards other members. Sufficient opportunity will be given to the member to submit an explanation. Final decision will be made by the School. \r\n\r\n	Any office holder of the association who goes into or intends to or is invited to or elected into partisan politics shall resign his PTA post or be requested to resign and vacate his post. Under no circumstances shall anyone involve the association into partisan politics. \r\n\r\n	If a member\'s child/children leave(s) the school. \r\n\r\n	If a member\'s employment at school is terminated. \r\n\r\nCode of Conduct: \r\n\r\n	All communications will be as per the communication policy as mentioned in the communication section. \r\n\r\n	All PTA meetings will be held at the school. \r\n\r\n	No meeting will be held under the auspices of PTA outside the school or in a public place without the approval of the School Management. \r\n\r\n	The name of the PTA and the names of any members, in their official capacities, shall not be used by any member in connection with any commercial concern or for purpose not related to promotion of the objectives of the PTA. \r\n\r\n	No PTA member will communicate with any outside organization or persons in their official capacities without expressed permission of the School Management or a resolution of the PTA Management Committee. \r\n\r\n	The PTA is not expected to contravene policies or decisions of the School Management. \r\n\r\n	At no times will any aggressive behaviour, abusive language or character assaults be permitted. In the event that such practices are indulged in, the PTA Management Committee member will not be permitted to attend any further PTA meetings. \r\n\r\n	The PTA is not a platform for personal advancement or as a means to score favours with the Management & Teachers. \r\n\r\n	No special treatment shall be meted out to any Executive Committee member. Members follow ALL the rules and observe ALL the regulations laid down by the school and listed in the school Handbook, as well as those implied tacitly or explicitly by the school authorities- such as entry into the school, timings for meeting teachers, coordinators, principal, director, trustees etc. Parents should be modestly and appropriately attired at all times in the school. \r\n\r\n	No access to the Mailing List can be had under any pretext. \r\n\r\n	If any classes are taught or workshops are conducted by members, then it is done purely on voluntarily basis with no monetary or other remuneration expected. \r\n\r\nIf an elected parent tenders his resignation in writing to JOHNSON GRAMMAR SCHOOL due to his or her children leaving the school or are terminated, then a new member will be selected. OR Any vacancy occurring in the executive committee of the association may be filled by a special meeting provided that the chairman on the advice of the executive members may appoint any member to fill such a vacant post until a substantive holder is elected. \r\n\r\nPTA Meetings: \r\n\r\n	PTA Meetings will be held on a monthly basis or as and when the need arises. \r\n\r\n	Prior notice period of 1 (one) week for the meeting will be given to all members. \r\n\r\n	Any point that is not on the agenda will not be discussed during the meeting. \r\n\r\nDissolution of PTA The PTA will be automatically dissolved at the end of the Academic Year. \r\n\r\nDate : 05.01.2017\r\nThe following parents have been selected as the Parent Members for the School Governing Body\r\nfor the academic year 2017-2018.\r\n\r\n          PARENT MEMBER  	    EMAIL ID  	     PHONE NUMBER\r\nPREETHI VINAY PUJAR                    \r\n[P/o RAGHAVENDRA SUKRUTH PUJAR-3E]	    preethivinaypujar@gmail.com	     8885803533\r\nY.MADHU BABU                            \r\n[P/o Y.LIKITH CHOWDARY - 5E]	madhu@nslindia.com	9581412325 / 040-30514444\r\nM.RAVINDER REDDY                      \r\n[P/o SHRUTHI REDDY M - 9M]  	ravinderreddym@bel.co.in	9440630124 / 27194427\r\n', 1, '08, Jan 2018', NULL, 'news', NULL, NULL),
(2, '9bf3a20c11', 'EUPHORIA 2017', 'The power of the human will to compete and the drive to excel beyond the body’s normal capabilities is most beautifully demonstrated in the arena of \r\nsport.  	 	 	 	 	 	 	 	 	       -Aimee Mullins \r\n \r\nThe three-day sports extravaganza came to an end on 5th August, 2017 at Delhi Public School, Hyderabad. Master B. Sai Praneeth, an International Badminton player, kindly consented to be the chief guest for the evening. \r\nMs. Geetha Vishwanathan, Principal DPS Hyderabad, graced the occasion.  \r\nThe students of 48 different schools participated in five different disciplines stretched over three days.  \r\nThe participation was overwhelming with  16 boys team and 14 girls team  in basketball comprising of 12 members each, 11 cricket teams with 15 members each and  15 football teams with 12 members each. \r\nIn individual events, 27 boys and 26 girls battled it out on the tennis court and athletes of 16 schools raced against each other in the track events to win a place on the podium. In total we had 915 participants in the campus of DPS Hyderabad. We at DPS believe in playing a fair game and so we had a team of officials for the different disciplines from the state level to conduct the games.  \r\n \r\nThe school adorned a festive look to welcome the participating schools. A brigade of volunteers were helping and guiding the participants. On the first day, the DPS students watched the matches being conducted at three different venues and encouraged the participants. The participants were at their best exhibiting the spirit of competition and enthusiasm. \r\n', 1, '08, Jan 2018', NULL, 'event', '01/19/2018', '01/24/2018'),
(3, 'f4f4303f22', 'Sjskk', 'Jakaks', 1, '12, Jan 2018', NULL, 'event', '01/12/2018', '01/12/2018'),
(4, 'a88c8c6202', 'MOU signed with biggest grooming institute', 'This is to announce that we have recently signed an MOU with a reputed grooming institute.\r\nAnd we hope this collaboration with their team will make our students more excellent .', 1, '22, Jan 2018', NULL, 'news', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `news_teacher`
--

CREATE TABLE `news_teacher` (
  `notice_id` int(11) NOT NULL,
  `notice_code` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `title` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `description` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `notice_status` int(11) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `notice_message`
--

CREATE TABLE `notice_message` (
  `notice_message_id` int(11) NOT NULL,
  `message` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `notice_id` int(11) NOT NULL,
  `date` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `user_type` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `user_id` int(11) NOT NULL,
  `message_file_name` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `online_users`
--

CREATE TABLE `online_users` (
  `id` int(11) NOT NULL,
  `session` longtext NOT NULL,
  `time` longtext NOT NULL,
  `id_usuario` int(11) DEFAULT NULL,
  `type` longtext NOT NULL,
  `gp` longtext NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `online_users`
--

INSERT INTO `online_users` (`id`, `session`, `time`, `id_usuario`, `type`, `gp`) VALUES
(277, '1086822614812c6ba9fdcac0ad24b4b6de3bb104', '1517231191', 1, 'admin', '1-admin');

-- --------------------------------------------------------

--
-- Table structure for table `parent`
--

CREATE TABLE `parent` (
  `parent_id` int(11) NOT NULL,
  `name` longtext COLLATE utf8_unicode_ci NOT NULL,
  `email` longtext COLLATE utf8_unicode_ci NOT NULL,
  `password` longtext COLLATE utf8_unicode_ci NOT NULL,
  `phone` longtext COLLATE utf8_unicode_ci NOT NULL,
  `address` longtext COLLATE utf8_unicode_ci NOT NULL,
  `profession` longtext COLLATE utf8_unicode_ci NOT NULL,
  `username` longtext COLLATE utf8_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `parent`
--

INSERT INTO `parent` (`parent_id`, `name`, `email`, `password`, `phone`, `address`, `profession`, `username`) VALUES
(1, 'parent', 'parent@parent.com', '7110eda4d09e062aa5e4a390b0a572ac0d2c0220', '7777777777', 'kjbn,jbh,jbnu', 'jo', 'parent'),
(2, 'Sudhanva', 'sudhanva@abc.com', 'd5f12e53a182c062b6bf30c1445153faff12269a', '1234567891', 'ASDF', 'Teacher', 'sudhanva ');

-- --------------------------------------------------------

--
-- Table structure for table `payment`
--

CREATE TABLE `payment` (
  `payment_id` int(11) NOT NULL,
  `expense_category_id` int(11) DEFAULT NULL,
  `title` longtext COLLATE utf8_unicode_ci NOT NULL,
  `payment_type` longtext COLLATE utf8_unicode_ci NOT NULL,
  `invoice_id` int(11) DEFAULT NULL,
  `student_id` int(11) DEFAULT NULL,
  `method` longtext COLLATE utf8_unicode_ci NOT NULL,
  `description` longtext COLLATE utf8_unicode_ci NOT NULL,
  `amount` longtext COLLATE utf8_unicode_ci NOT NULL,
  `timestamp` longtext COLLATE utf8_unicode_ci NOT NULL,
  `year` longtext COLLATE utf8_unicode_ci
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `payment`
--

INSERT INTO `payment` (`payment_id`, `expense_category_id`, `title`, `payment_type`, `invoice_id`, `student_id`, `method`, `description`, `amount`, `timestamp`, `year`) VALUES
(1, NULL, 'Term 1 Fees', 'income', 1, 2, '1', 'Fees for sem 1', '10000', '1515477600', '2017-2018'),
(2, NULL, 'Fees', 'income', 2, 2, '1', 'Hello', '1000', '1516082400', '2017-2018'),
(3, NULL, 'school fees', 'income', 3, 2, '3', 'dfdaf', '400', '1516600800', '2017-2018'),
(4, NULL, 'FEES', 'income', 4, 6, '3', 'PAID', '500', '1516773600', '2017-2018'),
(5, NULL, 'FEES', 'income', 5, 6, '3', 'PAID', '500', '1516773600', '2017-2018');

-- --------------------------------------------------------

--
-- Table structure for table `pending_users`
--

CREATE TABLE `pending_users` (
  `user_id` int(11) NOT NULL,
  `name` longtext NOT NULL,
  `username` longtext NOT NULL,
  `email` longtext NOT NULL,
  `phone` longtext NOT NULL,
  `address` longtext NOT NULL,
  `birthday` longtext,
  `password` longtext NOT NULL,
  `class_id` int(11) DEFAULT NULL,
  `section_id` int(11) DEFAULT NULL,
  `profession` longtext,
  `sex` longtext,
  `parent_id` int(11) DEFAULT NULL,
  `type` varchar(10) NOT NULL,
  `roll` longtext
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `polls`
--

CREATE TABLE `polls` (
  `id` int(11) NOT NULL,
  `question` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `options` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `date` varchar(100) NOT NULL,
  `user` varchar(100) NOT NULL,
  `poll_code` varchar(100) NOT NULL,
  `status` int(11) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `polls`
--

INSERT INTO `polls` (`id`, `question`, `options`, `date`, `user`, `poll_code`, `status`) VALUES
(1, 'HOW WAS YOUR DAY?', 'Good,Nice,Very Good,', '08 Jan, 2018', 'all', '0eb827d', 1);

-- --------------------------------------------------------

--
-- Table structure for table `poll_response`
--

CREATE TABLE `poll_response` (
  `id` int(11) NOT NULL,
  `poll_code` varchar(100) NOT NULL,
  `answer` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `date` varchar(100) NOT NULL,
  `user` varchar(100) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `poll_response`
--

INSERT INTO `poll_response` (`id`, `poll_code`, `answer`, `date`, `user`) VALUES
(1, '0eb827d', 'Good', '10 Jan, 2018', 'admin-1'),
(2, '0eb827d', 'Good', '16 Jan, 2018', 'student-1'),
(3, '0eb827d', 'Very Good', '16 Jan, 2018', 'teacher-2');

-- --------------------------------------------------------

--
-- Table structure for table `questions`
--

CREATE TABLE `questions` (
  `question_id` int(11) NOT NULL,
  `exam_id` int(11) NOT NULL,
  `question` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `optiona` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `optionb` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `optionc` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `optiond` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `correctanswer` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `marks` int(11) NOT NULL,
  `exam_code` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `questions`
--

INSERT INTO `questions` (`question_id`, `exam_id`, `question`, `optiona`, `optionb`, `optionc`, `optiond`, `correctanswer`, `marks`, `exam_code`) VALUES
(1, 1, 'Which Egyptian god has the head of a jackal?', 'satura', 'devila', 'ummaru', 'koger', 'satura', 1, '41e6cea73e'),
(2, 1, 'Who painted \'Wheatstacks - End of Summer\' (1890-91)?', 'Claude Monet', 'Camille Pissarro', 'Alfred Sisley', 'Pierre Auguste Renoir', 'Camille Pissarro', 1, '41e6cea73e'),
(3, 1, 'Who painted \'Water Lilies and Japanese Bridge\' (1899)?', 'Alfred Sisley', ' Claude Monet', 'Edgar Degas', 'Pierre Auguste Renoir', 'Pierre Auguste Renoir', 1, '41e6cea73e'),
(4, 1, 'Who painted \'Impression Sunrise\' (1872)?', 'Camille Pissarro', 'Pierre Auguste Renoir', 'Claude Monet', 'Henri de Toulouse-Lautrec', 'Pierre Auguste Renoir', 1, '41e6cea73e'),
(5, 1, 'Who painted \'Fruits of the Midi\' (1881)?', 'Pierre Auguste Renoir', 'Camille Pissarro', 'Alfred Sisley', 'Claude Monet', 'Claude Monet', 1, '41e6cea73e'),
(6, 1, 'Which TWO Impressionists preferred figure painting?', 'Claude Monet ', ' Edgar Degas', 'Henri de Toulouse-Lautrec', 'Alfred Sisley', 'Claude Monet ', 1, '41e6cea73e'),
(7, 1, 'Which TWO art forms had a major influence on Impressionism?', 'Photography', 'Folk Art', 'Japanese Art', ' Chinese Art', 'Photography', 1, '41e6cea73e'),
(8, 1, 'Who painted \'Flood at Port Marly\' (1876)?', 'Claude Money', 'Pierre Auguste Renoir', 'Alfred Sisley', 'Edgar Degas', 'Edgar Degas', 1, '41e6cea73e'),
(9, 1, 'Which technique is NOT associated with Impressionism?', 'Energetic brushstrokes', 'Shadows using brown or black.', 'Shadows with complementary colors.', 'Painting \'en plein air\'.', 'Painting \'en plein air\'.', 1, '41e6cea73e'),
(10, 1, 'Which exhibition first introduced Impressionist painting?', 'The Salon de Paris', 'The Académie des Beaux Arts', 'The Salon des Refusées', 'The First Impressionist Exhibition', 'The Salon de Paris', 1, '41e6cea73e');

-- --------------------------------------------------------

--
-- Table structure for table `reporte_alumnos`
--

CREATE TABLE `reporte_alumnos` (
  `report_id` int(11) NOT NULL,
  `title` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `report_code` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `priority` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `description` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci,
  `student_id` int(11) NOT NULL,
  `teacher_id` int(11) NOT NULL,
  `timestamp` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `status` int(11) DEFAULT '0',
  `file` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `reporte_mensaje`
--

CREATE TABLE `reporte_mensaje` (
  `report_message_id` int(11) NOT NULL,
  `report_code` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `message` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `sender_type` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `sender_id` int(11) NOT NULL,
  `timestamp` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `reports`
--

CREATE TABLE `reports` (
  `id` int(11) NOT NULL,
  `student_id` int(11) NOT NULL,
  `user_id` varchar(600) NOT NULL,
  `title` longtext NOT NULL,
  `description` longtext NOT NULL,
  `class_id` int(11) NOT NULL,
  `section_id` int(11) NOT NULL,
  `priority` varchar(100) NOT NULL,
  `file` longtext NOT NULL,
  `status` int(11) NOT NULL,
  `date` varchar(600) NOT NULL,
  `code` varchar(600) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `reports`
--

INSERT INTO `reports` (`id`, `student_id`, `user_id`, `title`, `description`, `class_id`, `section_id`, `priority`, `file`, `status`, `date`, `code`) VALUES
(1, 2, 'admin-1', 'sdsds', 'saddsa', 1, 1, 'baja', '', 0, '29 Jan, 2018', 'b410c8e');

-- --------------------------------------------------------

--
-- Table structure for table `report_response`
--

CREATE TABLE `report_response` (
  `message_id` int(11) NOT NULL,
  `message` longtext NOT NULL,
  `date` varchar(600) NOT NULL,
  `report_code` varchar(100) NOT NULL,
  `sender_type` varchar(100) NOT NULL,
  `sender_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `request`
--

CREATE TABLE `request` (
  `request_id` int(11) NOT NULL,
  `teacher_id` int(11) NOT NULL,
  `start_date` longtext COLLATE utf8_unicode_ci NOT NULL,
  `end_date` longtext COLLATE utf8_unicode_ci NOT NULL,
  `status` int(11) NOT NULL DEFAULT '0' COMMENT '0 = pending, 1 = accepted, 2 = rejected',
  `description` longtext COLLATE utf8_unicode_ci NOT NULL,
  `title` longtext COLLATE utf8_unicode_ci NOT NULL,
  `file` longtext COLLATE utf8_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `section`
--

CREATE TABLE `section` (
  `section_id` int(11) NOT NULL,
  `name` longtext COLLATE utf8_unicode_ci NOT NULL,
  `class_id` int(11) NOT NULL,
  `teacher_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `section`
--

INSERT INTO `section` (`section_id`, `name`, `class_id`, `teacher_id`) VALUES
(1, 'A', 1, 2),
(2, 'a', 1, 16),
(3, 'A', 2, NULL),
(4, '2a ', 2, 1),
(5, 'A', 3, NULL),
(6, 'A', 4, NULL),
(7, 'A', 5, NULL),
(8, 'A', 6, NULL),
(9, 'A', 7, NULL),
(10, 'A', 8, NULL),
(11, 'A', 9, NULL),
(12, 'A', 10, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE `settings` (
  `settings_id` int(11) NOT NULL,
  `type` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `description` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`settings_id`, `type`, `description`) VALUES
(1, 'system_name', 'Tam Pro School Manaement'),
(2, 'system_title', 'Tam Pro Management'),
(3, 'address', 'jhbhjb,jvghhj.'),
(4, 'phone', '+912457895842'),
(5, 'paypal_email', 'paypal@tam.com'),
(6, 'currency', 'Rs.'),
(7, 'system_email', 'tammanager@tam.com'),
(20, 'rtl', NULL),
(11, 'language', 'english'),
(13, 'minimark', '50'),
(16, 'skin', 'main'),
(18, 'slider', NULL),
(21, 'running_year', '2017-2018'),
(22, 'facebook', 'https://facebook.com'),
(23, 'twitter', 'https://www.twitter.com'),
(24, 'instagram', 'https://www.instagram.com'),
(25, 'youtube', 'https://youtube.com'),
(26, 'sms_status', 'clickatell'),
(27, 'android_password', 'password'),
(28, 'android_email', 'android@demo.com'),
(29, 'android_device', '66088'),
(30, 'buyer', 'username'),
(31, 'purchase_code', 'your_code'),
(32, 'clickatell_username', ''),
(33, 'clickatell_password', ''),
(34, 'clickatell_api', ''),
(35, 'twilio_account', ''),
(36, 'authentication_token', ''),
(37, 'registered_phone', ''),
(38, 'absences', '1'),
(39, 'students_reports', '1'),
(40, 'p_new_invoice', '1'),
(41, 's_new_invoice', '1'),
(42, 'new_homework', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `student`
--

CREATE TABLE `student` (
  `student_id` int(11) NOT NULL,
  `name` longtext COLLATE utf8_unicode_ci NOT NULL,
  `birthday` longtext COLLATE utf8_unicode_ci,
  `sex` longtext COLLATE utf8_unicode_ci NOT NULL,
  `address` longtext COLLATE utf8_unicode_ci NOT NULL,
  `phone` longtext COLLATE utf8_unicode_ci NOT NULL,
  `email` longtext COLLATE utf8_unicode_ci NOT NULL,
  `password` longtext COLLATE utf8_unicode_ci NOT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `dormitory_id` int(11) DEFAULT NULL,
  `transport_id` int(11) DEFAULT NULL,
  `student_session` int(11) NOT NULL DEFAULT '1',
  `username` longtext COLLATE utf8_unicode_ci NOT NULL,
  `date` longtext COLLATE utf8_unicode_ci NOT NULL,
  `board` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `student`
--

INSERT INTO `student` (`student_id`, `name`, `birthday`, `sex`, `address`, `phone`, `email`, `password`, `parent_id`, `dormitory_id`, `transport_id`, `student_session`, `username`, `date`, `board`) VALUES
(1, 'student', 'Invalid date', 'Male', 'kjb,sdf,sdf', '7777777777', 'student@student.com', '7110eda4d09e062aa5e4a390b0a572ac0d2c0220', 1, 1, 1, 1, 'student', '1515377880', 0),
(2, 'varun', '01/08/1990', 'Male', '0pp big bazar , shailis royal pavillion apaprtments', '8886770357', 'varun7king@gmail.com', '7110eda4d09e062aa5e4a390b0a572ac0d2c0220', 1, 1, 1, 1, 'varun7king', '1515464280', 0),
(4, 'FASIL.CK', NULL, 'Male', '', '9567406475', '', '6b8bf93c8b6f019b7e63ea13f5a72836006b2492', NULL, NULL, NULL, 1, 'vbvbv', '1516328280', 0),
(5, 'f', NULL, 'Male', '', '', '', '7110eda4d09e062aa5e4a390b0a572ac0d2c0220', NULL, NULL, NULL, 1, 'f', '1516328280', 0),
(6, 'deepak', NULL, 'MALE', '', '8882110893', '', '9704df2888538edca9ac9b3a9bcb9794522c58d1', NULL, NULL, NULL, 1, 'dpk123', '1516846680', 0),
(7, 'RAM', NULL, 'MALE', '', '888543352', '', 'ca26d38462c50a56b76cb837f1e7db95f31c5178', NULL, NULL, NULL, 1, 'RAM06', '1516846680', 0),
(8, 'SHAAM', NULL, 'MALE', '', '222125565', '', '1173b1cf896b5d1356efdf29a1b50d7eed8efd01', NULL, NULL, NULL, 1, 'SHAAM05', '1516846680', 0),
(9, 'SONIA', NULL, 'FEMALE', '', '3214567892', '', 'c264505c3bbc56d06b8424789b188c80618d0aaa', NULL, NULL, NULL, 1, 'SONIA01', '1516846680', 0);

-- --------------------------------------------------------

--
-- Table structure for table `students_request`
--

CREATE TABLE `students_request` (
  `request_id` int(11) NOT NULL,
  `student_id` int(11) NOT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `start_date` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `end_date` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `status` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `description` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `title` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `students_request`
--

INSERT INTO `students_request` (`request_id`, `student_id`, `parent_id`, `start_date`, `end_date`, `status`, `description`, `title`) VALUES
(1, 1, NULL, '01/16/2018', '01/17/2018', '1', 'One Day Leave', 'Hello');

-- --------------------------------------------------------

--
-- Table structure for table `student_exam`
--

CREATE TABLE `student_exam` (
  `exam_id` int(11) NOT NULL,
  `student_id` int(11) NOT NULL,
  `starttime` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `endtime` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `correctlyanswered` int(11) NOT NULL DEFAULT '0',
  `status` enum('completed','inprogress') CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL DEFAULT 'inprogress',
  `class_id` int(11) NOT NULL,
  `section_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `student_question`
--

CREATE TABLE `student_question` (
  `student_id` int(11) DEFAULT NULL,
  `exam_code` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci,
  `answered` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci,
  `student_answer` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci,
  `question_id` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci,
  `time` varchar(500) DEFAULT NULL,
  `total_time` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `subject`
--

CREATE TABLE `subject` (
  `subject_id` int(11) NOT NULL,
  `name` longtext COLLATE utf8_unicode_ci NOT NULL,
  `class_id` int(11) NOT NULL,
  `teacher_id` int(11) DEFAULT NULL,
  `year` longtext COLLATE utf8_unicode_ci NOT NULL,
  `la1` varchar(500) COLLATE utf8_unicode_ci DEFAULT 'Lab 1.',
  `la2` varchar(500) COLLATE utf8_unicode_ci DEFAULT 'Lab 2.',
  `la3` varchar(500) COLLATE utf8_unicode_ci DEFAULT 'Lab 3.',
  `la4` varchar(500) COLLATE utf8_unicode_ci DEFAULT 'Lab 4.',
  `la5` varchar(500) COLLATE utf8_unicode_ci DEFAULT 'Lab 5.',
  `la6` varchar(500) COLLATE utf8_unicode_ci DEFAULT 'Lab 6.',
  `la7` varchar(500) COLLATE utf8_unicode_ci DEFAULT 'Lab 7.',
  `la8` varchar(500) COLLATE utf8_unicode_ci DEFAULT 'Lab 8.',
  `la9` varchar(500) COLLATE utf8_unicode_ci DEFAULT 'Lab 9.',
  `la10` varchar(500) COLLATE utf8_unicode_ci DEFAULT 'Lab 10.'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `subject`
--

INSERT INTO `subject` (`subject_id`, `name`, `class_id`, `teacher_id`, `year`, `la1`, `la2`, `la3`, `la4`, `la5`, `la6`, `la7`, `la8`, `la9`, `la10`) VALUES
(11, 'Destrezas de Aprendizaje', 3, 3, '2017-2018', 'Lab 1.', 'Lab 2.', 'Lab 3.', 'Lab 4.', 'Lab 5.', 'Lab 6.', 'Lab 7.', 'Lab 8.', 'Lab 9.', 'Lab 10.'),
(12, 'Comunicación y Lenguaje', 3, 3, '2017-2018', 'Lab 1.', 'kkk', 'Lab 3.', 'Lab 4.', 'Lab 5.', 'Lab 6.', 'Lab 7.', 'Lab 8.', 'Lab 9.', 'Lab 10.'),
(13, 'Medio social y Natural', 3, 3, '2017-2018', 'Lab 1.', 'Lab 2.', 'Lab 3.', 'Lab 4.', 'Lab 5.', 'Lab 6.', 'Lab 7.', 'Lab 8.', 'Lab 9.', 'Lab 10.'),
(14, 'Expresión Artística', 3, 3, '2017-2018', 'Lab 1.', 'Lab 2.', 'Lab 3.', 'Lab 4.', 'Lab 5.', 'Lab 6.', 'Lab 7.', 'Lab 8.', 'Lab 9.', 'Lab 10.'),
(15, 'Educación Física', 3, 3, '2017-2018', 'Lab 1.', 'Lab 2.', 'Lab 3.', 'Lab 4.', 'Lab 5.', 'Lab 6.', 'Lab 7.', 'Lab 8.', 'Lab 9.', 'Lab 10.'),
(16, 'Comunicación y Lenguaje', 4, 4, '2017-2018', 'Lab 1.', 'Lab 2.', 'Lab 3.', 'Lab 4.', 'Lab 5.', 'Lab 6.', 'Lab 7.', 'Lab 8.', 'Lab 9.', 'Lab 10.'),
(17, 'Matemáticas', 4, 4, '2017-2018', 'Lab 1.', 'Lab 2.', 'Lab 3.', 'Lab 4.', 'Lab 5.', 'Lab 6.', 'Lab 7.', 'Lab 8.', 'Lab 9.', 'Lab 10.'),
(18, 'Medio Social y Natural', 4, 4, '2017-2018', 'Lab 1.', 'Lab 2.', 'Lab 3.', 'Lab 4.', 'Lab 5.', 'Lab 6.', 'Lab 7.', 'Lab 8.', 'Lab 9.', 'Lab 10.'),
(19, 'Ciencias Naturales y Tecnología	', 4, 4, '2017-2018', 'Lab 1.', 'Lab 2.', 'Lab 3.', 'Lab 4.', 'Lab 5.', 'Lab 6.', 'Lab 7.', 'Lab 8.', 'Lab 9.', 'Lab 10.'),
(20, 'Ciencias Sociales	', 4, 4, '2017-2018', 'Lab 1.', 'Lab 2.', 'Lab 3.', 'Lab 4.', 'Lab 5.', 'Lab 6.', 'Lab 7.', 'Lab 8.', 'Lab 9.', 'Lab 10.'),
(21, 'Expresión Artística', 4, 4, '2017-2018', 'Lab 1.', 'Lab 2.', 'Lab 3.', 'Lab 4.', 'Lab 5.', 'Lab 6.', 'Lab 7.', 'Lab 8.', 'Lab 9.', 'Lab 10.'),
(22, 'Educación Física', 4, 4, '2017-2018', 'Lab 1.', 'Lab 2.', 'Lab 3.', 'Lab 4.', 'Lab 5.', 'Lab 6.', 'Lab 7.', 'Lab 8.', 'Lab 9.', 'Lab 10.'),
(23, 'Comunicación y Lenguaje', 5, 5, '2017-2018', 'Lab 1.', 'Lab 2.', 'Lab 3.', 'Lab 4.', 'Lab 5.', 'Lab 6.', 'Lab 7.', 'Lab 8.', 'Lab 9.', 'Lab 10.'),
(24, 'Matemáticas', 5, 5, '2017-2018', 'Lab 1.', 'Lab 2.', 'Lab 3.', 'Lab 4.', 'Lab 5.', 'Lab 6.', 'Lab 7.', 'Lab 8.', 'Lab 9.', 'Lab 10.'),
(25, 'Medio Social y Natural', 5, 5, '2017-2018', 'Lab 1.', 'Lab 2.', 'Lab 3.', 'Lab 4.', 'Lab 5.', 'Lab 6.', 'Lab 7.', 'Lab 8.', 'Lab 9.', 'Lab 10.'),
(26, 'Ciencias Naturales y Tecnología', 5, 5, '2017-2018', 'Lab 1.', 'Lab 2.', 'Lab 3.', 'Lab 4.', 'Lab 5.', 'Lab 6.', 'Lab 7.', 'Lab 8.', 'Lab 9.', 'Lab 10.'),
(27, 'Ciencias Sociales', 5, 5, '2017-2018', 'Lab 1.', 'Lab 2.', 'Lab 3.', 'Lab 4.', 'Lab 5.', 'Lab 6.', 'Lab 7.', 'Lab 8.', 'Lab 9.', 'Lab 10.'),
(28, 'Expresión Artística', 5, 5, '2017-2018', 'Lab 1.', 'Lab 2.', 'Lab 3.', 'Lab 4.', 'Lab 5.', 'Lab 6.', 'Lab 7.', 'Lab 8.', 'Lab 9.', 'Lab 10.'),
(29, 'Educación Física', 5, 5, '2017-2018', 'Lab 1.', 'Lab 2.', 'Lab 3.', 'Lab 4.', 'Lab 5.', 'Lab 6.', 'Lab 7.', 'Lab 8.', 'Lab 9.', 'Lab 10.'),
(30, 'Comunicación y Lenguaje', 6, 6, '2017-2018', 'Lab 1.', 'Lab 2.', 'Lab 3.', 'Lab 4.', 'Lab 5.', 'Lab 6.', 'Lab 7.', 'Lab 8.', 'Lab 9.', 'Lab 10.'),
(31, 'Matemáticas', 6, 6, '2017-2018', 'Lab 1.', 'Lab 2.', 'Lab 3.', 'Lab 4.', 'Lab 5.', 'Lab 6.', 'Lab 7.', 'Lab 8.', 'Lab 9.', 'Lab 10.'),
(32, 'Medio Social y Natural', 6, 6, '2017-2018', 'Lab 1.', 'Lab 2.', 'Lab 3.', 'Lab 4.', 'Lab 5.', 'Lab 6.', 'Lab 7.', 'Lab 8.', 'Lab 9.', 'Lab 10.'),
(33, 'Ciencias Naturales y Tecnología', 6, 6, '2017-2018', 'Lab 1.', 'Lab 2.', 'Lab 3.', 'Lab 4.', 'Lab 5.', 'Lab 6.', 'Lab 7.', 'Lab 8.', 'Lab 9.', 'Lab 10.'),
(34, 'Ciencias Sociales', 6, 6, '2017-2018', 'Lab 1.', 'Lab 2.', 'Lab 3.', 'Lab 4.', 'Lab 5.', 'Lab 6.', 'Lab 7.', 'Lab 8.', 'Lab 9.', 'Lab 10.'),
(35, 'Expresión Artística', 6, 6, '2017-2018', 'Lab 1.', 'Lab 2.', 'Lab 3.', 'Lab 4.', 'Lab 5.', 'Lab 6.', 'Lab 7.', 'Lab 8.', 'Lab 9.', 'Lab 10.'),
(36, 'Educación Física', 6, 6, '2017-2018', 'Lab 1.', 'Lab 2.', 'Lab 3.', 'Lab 4.', 'Lab 5.', 'Lab 6.', 'Lab 7.', 'Lab 8.', 'Lab 9.', 'Lab 10.'),
(37, 'Comunicación y Lenguaje', 7, 7, '2017-2018', 'Lab 1.', 'Lab 2.', 'Lab 3.', 'Lab 4.', 'Lab 5.', 'Lab 6.', 'Lab 7.', 'Lab 8.', 'Lab 9.', 'Lab 10.'),
(38, 'Matemáticas', 7, 7, '2017-2018', 'Lab 1.', 'Lab 2.', 'Lab 3.', 'Lab 4.', 'Lab 5.', 'Lab 6.', 'Lab 7.', 'Lab 8.', 'Lab 9.', 'Lab 10.'),
(39, 'Medio Social y Natural', 7, 7, '2017-2018', 'Lab 1.', 'Lab 2.', 'Lab 3.', 'Lab 4.', 'Lab 5.', 'Lab 6.', 'Lab 7.', 'Lab 8.', 'Lab 9.', 'Lab 10.'),
(40, 'Ciencias Naturales y Tecnología', 7, 7, '2017-2018', 'Lab 1.', 'Lab 2.', 'Lab 3.', 'Lab 4.', 'Lab 5.', 'Lab 6.', 'Lab 7.', 'Lab 8.', 'Lab 9.', 'Lab 10.'),
(41, 'Ciencias Sociales', 7, 7, '2017-2018', 'Lab 1.', 'Lab 2.', 'Lab 3.', 'Lab 4.', 'Lab 5.', 'Lab 6.', 'Lab 7.', 'Lab 8.', 'Lab 9.', 'Lab 10.'),
(42, 'Expresión Artística', 7, 7, '2017-2018', 'Lab 1.', 'Lab 2.', 'Lab 3.', 'Lab 4.', 'Lab 5.', 'Lab 6.', 'Lab 7.', 'Lab 8.', 'Lab 9.', 'Lab 10.'),
(43, 'Educación Física', 7, 7, '2017-2018', 'Lab 1.', 'Lab 2.', 'Lab 3.', 'Lab 4.', 'Lab 5.', 'Lab 6.', 'Lab 7.', 'Lab 8.', 'Lab 9.', 'Lab 10.'),
(44, 'Comunicación y Lenguaje', 8, 8, '2017-2018', 'Lab 1.', 'Lab 2.', 'Lab 3.', 'Lab 4.', 'Lab 5.', 'Lab 6.', 'Lab 7.', 'Lab 8.', 'Lab 9.', 'Lab 10.'),
(45, 'Matemáticas', 8, 8, '2017-2018', 'Eng 1', 'Lab 2.', 'Lab 3.', 'Lab 4.', 'Lab 5.', 'Lab 6.', 'Lab 7.', 'Lab 8.', 'Lab 9.', 'Lab 10.'),
(46, 'Medio Social y Natural', 8, 8, '2017-2018', 'Lab 1.', 'Lab 2.', 'Lab 3.', 'Lab 4.', 'Lab 5.', 'Lab 6.', 'Lab 7.', 'Lab 8.', 'Lab 9.', 'Lab 10.'),
(47, 'Ciencias Naturales y Tecnología', 8, 8, '2017-2018', 'Lab 1.', 'Lab 2.', 'Lab 3.', 'Lab 4.', 'Lab 5.', 'Lab 6.', 'Lab 7.', 'Lab 8.', 'Lab 9.', 'Lab 10.'),
(48, 'Ciencias Sociales', 8, 8, '2017-2018', 'Lab 1.', 'Lab 2.', 'Lab 3.', 'Lab 4.', 'Lab 5.', 'Lab 6.', 'Lab 7.', 'Lab 8.', 'Lab 9.', 'Lab 10.'),
(49, 'Expresión Artística', 8, 8, '2017-2018', 'Lab 1.', 'Lab 2.', 'Lab 3.', 'Lab 4.', 'Lab 5.', 'Lab 6.', 'Lab 7.', 'Lab 8.', 'Lab 9.', 'Lab 10.'),
(50, 'Educación Física', 8, 8, '2017-2018', 'Lab 1.', 'Lab 2.', 'Lab 3.', 'Lab 4.', 'Lab 5.', 'Lab 6.', 'Lab 7.', 'Lab 8.', 'Lab 9.', 'Lab 10.'),
(51, 'Comunicación y Lenguaje', 9, 9, '2017-2018', 'Lab 1.', 'Lab 2.', 'Lab 3.', 'Lab 4.', 'Lab 5.', 'Lab 6.', 'Lab 7.', 'Lab 8.', 'Lab 9.', 'Lab 10.'),
(52, 'Matemáticas', 9, 9, '2017-2018', 'Lab 1.', 'Lab 2.', 'Lab 3.', 'Lab 4.', 'Lab 5.', 'Lab 6.', 'Lab 7.', 'Lab 8.', 'Lab 9.', 'Lab 10.'),
(53, 'Medio Social y Natural', 9, 9, '2017-2018', 'Lab 1.', 'Lab 2.', 'Lab 3.', 'Lab 4.', 'Lab 5.', 'Lab 6.', 'Lab 7.', 'Lab 8.', 'Lab 9.', 'Lab 10.'),
(54, 'Ciencias Naturales y Tecnología', 9, 9, '2017-2018', 'Lab 1.', 'Lab 2.', 'Lab 3.', 'Lab 4.', 'Lab 5.', 'Lab 6.', 'Lab 7.', 'Lab 8.', 'Lab 9.', 'Lab 10.'),
(55, 'Ciencias Sociales', 9, 9, '2017-2018', 'Lab 1.', 'Lab 2.', 'Lab 3.', 'Lab 4.', 'Lab 5.', 'Lab 6.', 'Lab 7.', 'Lab 8.', 'Lab 9.', 'Lab 10.'),
(56, 'Expresión Artística', 9, 9, '2017-2018', 'Lab 1.', 'Lab 2.', 'Lab 3.', 'Lab 4.', 'Lab 5.', 'Lab 6.', 'Lab 7.', 'Lab 8.', 'Lab 9.', 'Lab 10.'),
(57, 'Educación Física', 9, 9, '2017-2018', 'Lab 1.', 'Lab 2.', 'Lab 3.', 'Lab 4.', 'Lab 5.', 'Lab 6.', 'Lab 7.', 'Lab 8.', 'Lab 9.', 'Lab 10.'),
(60, 'Inglés', 3, 15, '2017-2018', 'Lab 1.', 'Lab 2.', 'Lab 3.', 'Lab 4.', 'Lab 5.', 'Lab 6.', 'Lab 7.', 'Lab 8.', 'Lab 9.', 'Lab 10.'),
(61, 'Inglés', 4, 15, '2017-2018', 'Lab 1.', 'Lab 2.', 'Lab 3.', 'Lab 4.', 'Lab 5.', 'Lab 6.', 'Lab 7.', 'Lab 8.', 'Lab 9.', 'Lab 10.'),
(62, 'Inglés', 5, 15, '2017-2018', 'Lab 1.', 'Lab 2.', 'Lab 3.', 'Lab 4.', 'Lab 5.', 'Lab 6.', 'Lab 7.', 'Lab 8.', 'Lab 9.', 'Lab 10.'),
(63, 'Inglés', 6, 15, '2017-2018', 'Lab 1.', 'Lab 2.', 'Lab 3.', 'Lab 4.', 'Lab 5.', 'Lab 6.', 'Lab 7.', 'Lab 8.', 'Lab 9.', 'Lab 10.'),
(64, 'Inglés', 7, 15, '2017-2018', 'Lab 1.', 'Lab 2.', 'Lab 3.', 'Lab 4.', 'Lab 5.', 'Lab 6.', 'Lab 7.', 'Lab 8.', 'Lab 9.', 'Lab 10.'),
(65, 'Inglés', 8, 15, '2017-2018', 'Lab 1.', 'Lab 2.', 'Lab 3.', 'Lab 4.', 'Lab 5.', 'Lab 6.', 'Lab 7.', 'Lab 8.', 'Lab 9.', 'Lab 10.'),
(66, 'Inglés', 9, 15, '2017-2018', 'Lab 1.', 'Lab 2.', 'Lab 3.', 'Lab 4.', 'Lab 5.', 'Lab 6.', 'Lab 7.', 'Lab 8.', 'Lab 9.', 'Lab 10.'),
(67, ' Comunicación y Lenguaje', 10, 10, '2017-2018', 'Lab 1.', 'Lab 2.', 'Lab 3.', 'Lab 4.', 'Lab 5.', 'Lab 6.', 'Lab 7.', 'Lab 8.', 'Lab 9.', 'Lab 10.'),
(68, 'Matemáticas', 10, 10, '2017-2018', 'Lab 1.', 'Lab 2.', 'Lab 3.', 'Lab 4.', 'Lab 5.', 'Lab 6.', 'Lab 7.', 'Lab 8.', 'Lab 9.', 'Lab 10.'),
(69, 'Ciencias Naturales', 10, 10, '2017-2018', 'Lab 1.', 'Lab 2.', 'Lab 3.', 'Lab 4.', 'Lab 5.', 'Lab 6.', 'Lab 7.', 'Lab 8.', 'Lab 9.', 'Lab 10.'),
(70, 'Formación Ciudadana', 10, 10, '2017-2018', 'Lab 1.', 'Lab 2.', 'Lab 3.', 'Lab 4.', 'Lab 5.', 'Lab 6.', 'Lab 7.', 'Lab 8.', 'Lab 9.', 'Lab 10.'),
(71, 'Productividad y Desarrollo', 10, 10, '2017-2018', 'Lab 1.', 'Lab 2.', 'Lab 3.', 'Lab 4.', 'Lab 5.', 'Lab 6.', 'Lab 7.', 'Lab 8.', 'Lab 9.', 'Lab 10.'),
(72, 'Artes Plásticas', 10, 10, '2017-2018', 'Lab 1.', 'Lab 2.', 'Lab 3.', 'Lab 4.', 'Lab 5.', 'Lab 6.', 'Lab 7.', 'Lab 8.', 'Lab 9.', 'Lab 10.'),
(73, 'Expresión Artística', 10, 10, '2017-2018', 'Lab 1.', 'Lab 2.', 'Lab 3.', 'Lab 4.', 'Lab 5.', 'Lab 6.', 'Lab 7.', 'Lab 8.', 'Lab 9.', 'Lab 10.'),
(74, 'Educación Física', 10, 10, '2017-2018', 'Lab 1.', 'Lab 2.', 'Lab 3.', 'Lab 4.', 'Lab 5.', 'Lab 6.', 'Lab 7.', 'Lab 8.', 'Lab 9.', 'Lab 10.'),
(75, 'Inglés', 10, 15, '2017-2018', 'Lab 1.', 'Lab 2.', 'Lab 3.', 'Lab 4.', 'Lab 5.', 'Lab 6.', 'Lab 7.', 'Lab 8.', 'Lab 9.', 'Lab 10.'),
(76, ' Comunicación y Lenguaje', 11, 11, '2017-2018', 'Lab 1.', 'Lab 2.', 'Lab 3.', 'Lab 4.', 'Lab 5.', 'Lab 6.', 'Lab 7.', 'Lab 8.', 'Lab 9.', 'Lab 10.'),
(77, 'Matemáticas', 11, 11, '2017-2018', 'Lab 1.', 'Lab 2.', 'Lab 3.', 'Lab 4.', 'Lab 5.', 'Lab 6.', 'Lab 7.', 'Lab 8.', 'Lab 9.', 'Lab 10.'),
(78, 'Ciencias Naturales', 11, 11, '2017-2018', 'Lab 1.', 'Lab 2.', 'Lab 3.', 'Lab 4.', 'Lab 5.', 'Lab 6.', 'Lab 7.', 'Lab 8.', 'Lab 9.', 'Lab 10.'),
(79, 'Formación Ciudadana', 11, 11, '2017-2018', 'Lab 1.', 'Lab 2.', 'Lab 3.', 'Lab 4.', 'Lab 5.', 'Lab 6.', 'Lab 7.', 'Lab 8.', 'Lab 9.', 'Lab 10.'),
(80, 'Productividad y Desarrollo', 11, 11, '2017-2018', 'Lab 1.', 'Lab 2.', 'Lab 3.', 'Lab 4.', 'Lab 5.', 'Lab 6.', 'Lab 7.', 'Lab 8.', 'Lab 9.', 'Lab 10.'),
(81, 'Artes Plásticas', 11, 11, '2017-2018', 'Lab 1.', 'Lab 2.', 'Lab 3.', 'Lab 4.', 'Lab 5.', 'Lab 6.', 'Lab 7.', 'Lab 8.', 'Lab 9.', 'Lab 10.'),
(82, 'Expresión Artística', 11, 11, '2017-2018', 'Lab 1.', 'Lab 2.', 'Lab 3.', 'Lab 4.', 'Lab 5.', 'Lab 6.', 'Lab 7.', 'Lab 8.', 'Lab 9.', 'Lab 10.'),
(83, 'Educación Física', 11, 11, '2017-2018', 'Lab 1.', 'Lab 2.', 'Lab 3.', 'Lab 4.', 'Lab 5.', 'Lab 6.', 'Lab 7.', 'Lab 8.', 'Lab 9.', 'Lab 10.'),
(84, 'Inglés', 11, 15, '2017-2018', 'Lab 1.', 'Lab 2.', 'Lab 3.', 'Lab 4.', 'Lab 5.', 'Lab 6.', 'Lab 7.', 'Lab 8.', 'Lab 9.', 'Lab 10.'),
(85, 'Comunicación y Lenguaje', 12, 12, '2017-2018', 'Lab 1.', 'Lab 2.', 'Lab 3.', 'Lab 4.', 'Lab 5.', 'Lab 6.', 'Lab 7.', 'Lab 8.', 'Lab 9.', 'Lab 10.'),
(86, 'Matemáticas', 12, 12, '2017-2018', 'Lab 1.', 'Lab 2.', 'Lab 3.', 'Lab 4.', 'Lab 5.', 'Lab 6.', 'Lab 7.', 'Lab 8.', 'Lab 9.', 'Lab 10.'),
(87, 'Ciencias Naturales', 12, 12, '2017-2018', 'Lab 1.', 'Lab 2.', 'Lab 3.', 'Lab 4.', 'Lab 5.', 'Lab 6.', 'Lab 7.', 'Lab 8.', 'Lab 9.', 'Lab 10.'),
(88, 'Formación Ciudadana', 12, 12, '2017-2018', 'Lab 1.', 'Lab 2.', 'Lab 3.', 'Lab 4.', 'Lab 5.', 'Lab 6.', 'Lab 7.', 'Lab 8.', 'Lab 9.', 'Lab 10.'),
(89, 'Productividad y Desarrollo', 12, 12, '2017-2018', 'Lab 1.', 'Lab 2.', 'Lab 3.', 'Lab 4.', 'Lab 5.', 'Lab 6.', 'Lab 7.', 'Lab 8.', 'Lab 9.', 'Lab 10.'),
(90, 'Artes Plásticas', 12, 12, '2017-2018', 'Lab 1.', 'Lab 2.', 'Lab 3.', 'Lab 4.', 'Lab 5.', 'Lab 6.', 'Lab 7.', 'Lab 8.', 'Lab 9.', 'Lab 10.'),
(91, 'Expresión Artística', 12, 12, '2017-2018', 'Lab 1.', 'Lab 2.', 'Lab 3.', 'Lab 4.', 'Lab 5.', 'Lab 6.', 'Lab 7.', 'Lab 8.', 'Lab 9.', 'Lab 10.'),
(92, 'Educación Física', 12, 12, '2017-2018', 'Lab 1.', 'Lab 2.', 'Lab 3.', 'Lab 4.', 'Lab 5.', 'Lab 6.', 'Lab 7.', 'Lab 8.', 'Lab 9.', 'Lab 10.'),
(93, 'Inglés', 12, 15, '2017-2018', 'Lab 1.', 'Lab 2.', 'Lab 3.', 'Lab 4.', 'Lab 5.', 'Lab 6.', 'Lab 7.', 'Lab 8.', 'Lab 9.', 'Lab 10.'),
(94, 'Comunicación y Lenguaje', 13, 13, '2017-2018', 'Lab 1.', 'Lab 2.', 'Lab 3.', 'Lab 4.', 'Lab 5.', 'Lab 6.', 'Lab 7.', 'Lab 8.', 'Lab 9.', 'Lab 10.'),
(95, 'Matemáticas', 13, 13, '2017-2018', 'Lab 1.', 'Lab 2.', 'Lab 3.', 'Lab 4.', 'Lab 5.', 'Lab 6.', 'Lab 7.', 'Lab 8.', 'Lab 9.', 'Lab 10.'),
(96, 'Estadística', 13, 13, '2017-2018', 'Lab 1.', 'Lab 2.', 'Lab 3.', 'Lab 4.', 'Lab 5.', 'Lab 6.', 'Lab 7.', 'Lab 8.', 'Lab 9.', 'Lab 10.'),
(97, 'Física', 13, 13, '2017-2018', 'Lab 1.', 'Lab 2.', 'Lab 3.', 'Lab 4.', 'Lab 5.', 'Lab 6.', 'Lab 7.', 'Lab 8.', 'Lab 9.', 'Lab 10.'),
(98, 'Química', 13, 13, '2017-2018', 'Lab 1.', 'Lab 2.', 'Lab 3.', 'Lab 4.', 'Lab 5.', 'Lab 6.', 'Lab 7.', 'Lab 8.', 'Lab 9.', 'Lab 10.'),
(99, 'Biología', 13, 13, '2017-2018', 'Lab 1.', 'Lab 2.', 'Lab 3.', 'Lab 4.', 'Lab 5.', 'Lab 6.', 'Lab 7.', 'Lab 8.', 'Lab 9.', 'Lab 10.'),
(100, 'Psicología', 13, 13, '2017-2018', 'Lab 1.', 'Lab 2.', 'Lab 3.', 'Lab 4.', 'Lab 5.', 'Lab 6.', 'Lab 7.', 'Lab 8.', 'Lab 9.', 'Lab 10.'),
(101, 'Gestión de Proyectos', 13, 13, '2017-2018', 'Lab 1.', 'Lab 2.', 'Lab 3.', 'Lab 4.', 'Lab 5.', 'Lab 6.', 'Lab 7.', 'Lab 8.', 'Lab 9.', 'Lab 10.'),
(102, 'Expresión Artística', 13, 13, '2017-2018', 'Lab 1.', 'Lab 2.', 'Lab 3.', 'Lab 4.', 'Lab 5.', 'Lab 6.', 'Lab 7.', 'Lab 8.', 'Lab 9.', 'Lab 10.'),
(103, 'Educación Física', 13, 13, '2017-2018', 'Lab 1.', 'Lab 2.', 'Lab 3.', 'Lab 4.', 'Lab 5.', 'Lab 6.', 'Lab 7.', 'Lab 8.', 'Lab 9.', 'Lab 10.'),
(104, 'Inglés', 13, 15, '2017-2018', 'Lab 1.', 'Lab 2.', 'Lab 3.', 'Lab 4.', 'Lab 5.', 'Lab 6.', 'Lab 7.', 'Lab 8.', 'Lab 9.', 'Lab 10.'),
(105, 'Comunicación y Lenguaje', 14, 14, '2017-2018', 'Lab 1.', 'Lab 2.', 'Lab 3.', 'Lab 4.', 'Lab 5.', 'Lab 6.', 'Lab 7.', 'Lab 8.', 'Lab 9.', 'Lab 10.'),
(106, 'Matemáticas', 14, 14, '2017-2018', 'Lab 1.', 'Lab 2.', 'Lab 3.', 'Lab 4.', 'Lab 5.', 'Lab 6.', 'Lab 7.', 'Lab 8.', 'Lab 9.', 'Lab 10.'),
(107, 'Estadística', 14, 14, '2017-2018', 'Lab 1.', 'Lab 2.', 'Lab 3.', 'Lab 4.', 'Lab 5.', 'Lab 6.', 'Lab 7.', 'Lab 8.', 'Lab 9.', 'Lab 10.'),
(108, 'Física', 14, 14, '2017-2018', 'Lab 1.', 'Lab 2.', 'Lab 3.', 'Lab 4.', 'Lab 5.', 'Lab 6.', 'Lab 7.', 'Lab 8.', 'Lab 9.', 'Lab 10.'),
(109, 'Química', 14, 14, '2017-2018', 'Lab 1.', 'Lab 2.', 'Lab 3.', 'Lab 4.', 'Lab 5.', 'Lab 6.', 'Lab 7.', 'Lab 8.', 'Lab 9.', 'Lab 10.'),
(110, 'Biología', 14, 14, '2017-2018', 'Lab 1.', 'Lab 2.', 'Lab 3.', 'Lab 4.', 'Lab 5.', 'Lab 6.', 'Lab 7.', 'Lab 8.', 'Lab 9.', 'Lab 10.'),
(111, 'Psicología', 14, 14, '2017-2018', 'Lab 1.', 'Lab 2.', 'Lab 3.', 'Lab 4.', 'Lab 5.', 'Lab 6.', 'Lab 7.', 'Lab 8.', 'Lab 9.', 'Lab 10.'),
(112, 'Gestión de Proyectos', 14, 14, '2017-2018', 'Lab 1.', 'Lab 2.', 'Lab 3.', 'Lab 4.', 'Lab 5.', 'Lab 6.', 'Lab 7.', 'Lab 8.', 'Lab 9.', 'Lab 10.'),
(113, 'Expresión Artística', 14, 14, '2017-2018', 'Lab 1.', 'Lab 2.', 'Lab 3.', 'Lab 4.', 'Lab 5.', 'Lab 6.', 'Lab 7.', 'Lab 8.', 'Lab 9.', 'Lab 10.'),
(114, 'Educación Física', 14, 14, '2017-2018', 'Lab 1.', 'Lab 2.', 'Lab 3.', 'Lab 4.', 'Lab 5.', 'Lab 6.', 'Lab 7.', 'Lab 8.', 'Lab 9.', 'Lab 10.'),
(115, 'Inglés', 14, 14, '2017-2018', 'Lab 1.', 'Lab 2.', 'Lab 3.', 'Lab 4.', 'Lab 5.', 'Lab 6.', 'Lab 7.', 'Lab 8.', 'Lab 9.', 'Lab 10.'),
(116, 'Comunicación y Lenguaje', 15, 16, '2017-2018', 'Lab 1.', 'Lab 2.', 'Lab 3.', 'Lab 4.', 'Lab 5.', 'Lab 6.', 'Lab 7.', 'Lab 8.', 'Parcial', 'Final'),
(117, 'Contabilidad de Sociedades', 15, 16, '2017-2018', 'Lab 1.', 'Lab 2.', 'Lab 3.', 'Lab 4.', 'Lab 5.', 'Lab 6.', 'Lab 7.', 'Lab 8.', 'Parcial', 'Final'),
(118, 'Matemática Comercial', 15, 16, '2017-2018', 'Lab 1.', 'Lab 2.', 'Lab 3.', 'Lab 4.', 'Lab 5.', 'Lab 6.', 'Lab 7.', 'Lab 8.', 'Final', 'Parcial'),
(119, 'Fundamentos de Derecho', 15, 16, '2017-2018', 'Lab 1.', 'Lab 2.', 'Lab 3.', 'Lab 4.', 'Lab 5.', 'Lab 6.', 'Lab 7.', 'Lab 8.', 'Parcial', 'Final'),
(120, 'Redacción y Correspondencia Mercantil', 15, 16, '2017-2018', 'Lab 1.', 'Lab 2.', 'Lab 3.', 'Lab 4.', 'Lab 5.', 'Lab 6.', 'Lab 7.', 'Lab 8.', 'Lab 9.', 'Lab 10.'),
(121, 'Introducción a la Economía', 15, 16, '2017-2018', 'Lab 1.', 'Lab 2.', 'Lab 3.', 'Lab 4.', 'Lab 5.', 'Lab 6.', 'Lab 7.', 'Lab 8.', 'Parcial', 'Final'),
(122, 'Educación Física', 15, 16, '2017-2018', 'Lab 1.', 'Lab 2.', 'Lab 3.', 'Lab 4.', 'Lab 5.', 'Lab 6.', 'Lab 7.', 'Lab 8.', 'Parcial', 'Final'),
(123, 'Inglés', 15, 15, '2017-2018', 'Lab 1.', 'Lab 2.', 'Lab 3.', 'Lab 4.', 'Lab 5.', 'Lab 6.', 'Lab 7.', 'Lab 8.', 'Parcial', 'Final'),
(124, 'Comunicación y Lenguaje', 16, 17, '2017-2018', 'Lab 1.', 'Lab 2.', 'Lab 3.', 'Lab 4.', 'Lab 5.', 'Lab 6.', 'Lab 7.', 'Lab 8.', 'Lab 9.', 'Lab 10.'),
(125, 'Contabilidad de Costos', 16, 17, '2017-2018', 'Lab 1.', 'Lab 2.', 'Lab 3.', 'Lab 4.', 'Lab 5.', 'Lab 6.', 'Lab 7.', 'Lab 8.', 'Lab 9.', 'Lab 10.'),
(126, 'Legislación Fiscal y Aduanera', 14, 17, '2017-2018', 'Lab 1.', 'Lab 2.', 'Lab 3.', 'Lab 4.', 'Lab 5.', 'Lab 6.', 'Lab 7.', 'Lab 8.', 'Lab 9.', 'Lab 10.'),
(127, 'Finanzas Públicas', 16, 17, '2017-2018', 'Lab 1.', 'Lab 2.', 'Lab 3.', 'Lab 4.', 'Lab 5.', 'Lab 6.', 'Lab 7.', 'Lab 8.', 'Lab 9.', 'Lab 10.'),
(128, 'Geografía Económica', 16, 17, '2017-2018', 'Lab 1.', 'Lab 2.', 'Lab 3.', 'Lab 4.', 'Lab 5.', 'Lab 6.', 'Lab 7.', 'Lab 8.', 'Lab 9.', 'Lab 10.'),
(129, 'Computación', 16, 17, '2017-2018', 'Lab 1.', 'Lab 2.', 'Lab 3.', 'Lab 4.', 'Lab 5.', 'Lab 6.', 'Lab 7.', 'Lab 8.', 'Lab 9.', 'Lab 10.'),
(130, 'Educación Física', 16, 17, '2017-2018', 'Lab 1.', 'Lab 2.', 'Lab 3.', 'Lab 4.', 'Lab 5.', 'Lab 6.', 'Lab 7.', 'Lab 8.', 'Lab 9.', 'Lab 10.'),
(131, 'Inglés', 16, 15, '2017-2018', 'Lab 1.', 'Lab 2.', 'Lab 3.', 'Lab 4.', 'Lab 5.', 'Lab 6.', 'Lab 7.', 'Lab 8.', 'Lab 9.', 'Lab 10.'),
(132, 'Comunicación y Lenguaje', 17, 18, '2017-2018', 'Lab 1.', 'Lab 2.', 'Lab 3.', 'Lab 4.', 'Lab 5.', 'Lab 6.', 'Lab 7.', 'Lab 8.', 'Lab 9.', 'Lab 10.'),
(133, 'Estadística Comercial', 17, 18, '2017-2018', 'Lab 1.', 'Lab 2.', 'Lab 3.', 'Lab 4.', 'Lab 5.', 'Lab 6.', 'Lab 7.', 'Lab 8.', 'Lab 9.', 'Lab 10.'),
(134, 'Ética Profesional', 17, 18, '2017-2018', 'Lab 1.', 'Lab 2.', 'Lab 3.', 'Lab 4.', 'Lab 5.', 'Lab 6.', 'Lab 7.', 'Lab 8.', 'Lab 9.', 'Lab 10.'),
(135, 'Auditoría', 17, 18, '2017-2018', 'Lab 1.', 'Lab 2.', 'Lab 3.', 'Lab 4.', 'Lab 5.', 'Lab 6.', 'Lab 7.', 'Lab 8.', 'Lab 9.', 'Lab 10.'),
(136, 'Organización de Empresas', 17, 18, '2017-2018', 'Lab 1.', 'Lab 2.', 'Lab 3.', 'Lab 4.', 'Lab 5.', 'Lab 6.', 'Lab 7.', 'Lab 8.', 'Lab 9.', 'Lab 10.'),
(137, 'Computación', 17, 18, '2017-2018', 'Lab 1.', 'Lab 2.', 'Lab 3.', 'Lab 4.', 'Lab 5.', 'Lab 6.', 'Lab 7.', 'Lab 8.', 'Lab 9.', 'Lab 10.'),
(138, 'Educación Física', 17, 18, '2017-2018', 'Lab 1.', 'Lab 2.', 'Lab 3.', 'Lab 4.', 'Lab 5.', 'Lab 6.', 'Lab 7.', 'Lab 8.', 'Lab 9.', 'Lab 10.'),
(139, 'Inglés', 17, 15, '2017-2018', 'Lab 1.', 'Lab 2.', 'Lab 3.', 'Lab 4.', 'Lab 5.', 'Lab 6.', 'Lab 7.', 'Lab 8.', 'Lab 9.', 'Lab 10.'),
(140, 'Art and Design', 1, 2, '2017-2018', 'Lab 1.', 'Lab 2.', 'Lab 3.', 'Lab 4.', 'Lab 5.', 'Lab 6.', 'Lab 7.', 'Lab 8.', 'Lab 9.', 'Lab 10.'),
(141, 'mathematics', 1, 3, '2017-2018', 'Lab 1.', 'Lab 2.', 'Lab 3.', 'Lab 4.', 'Lab 5.', 'Lab 6.', 'Lab 7.', 'Lab 8.', 'Lab 9.', 'Lab 10.'),
(142, 'science', 1, 4, '2017-2018', 'Lab 1.', 'Lab 2.', 'Lab 3.', 'Lab 4.', 'Lab 5.', 'Lab 6.', 'Lab 7.', 'Lab 8.', 'Lab 9.', 'Lab 10.'),
(143, 'social studies', 1, 5, '2017-2018', 'Lab 1.', 'Lab 2.', 'Lab 3.', 'Lab 4.', 'Lab 5.', 'Lab 6.', 'Lab 7.', 'Lab 8.', 'Lab 9.', 'Lab 10.'),
(144, 'English', 1, 6, '2017-2018', 'Lab 1.', 'Lab 2.', 'Lab 3.', 'Lab 4.', 'Lab 5.', 'Lab 6.', 'Lab 7.', 'Lab 8.', 'Lab 9.', 'Lab 10.'),
(145, 'Philosophy', 1, 8, '2017-2018', 'Lab 1.', 'Lab 2.', 'Lab 3.', 'Lab 4.', 'Lab 5.', 'Lab 6.', 'Lab 7.', 'Lab 8.', 'Lab 9.', 'Lab 10.'),
(146, 'computers', 1, 9, '2017-2018', 'Lab 1.', 'Lab 2.', 'Lab 3.', 'Lab 4.', 'Lab 5.', 'Lab 6.', 'Lab 7.', 'Lab 8.', 'Lab 9.', 'Lab 10.'),
(147, 'Sport', 1, 10, '2017-2018', 'Lab 1.', 'Lab 2.', 'Lab 3.', 'Lab 4.', 'Lab 5.', 'Lab 6.', 'Lab 7.', 'Lab 8.', 'Lab 9.', 'Lab 10.'),
(148, 'Art and Design', 2, 2, '2017-2018', 'Lab 1.4444', 'Lab 2.555', 'Lab 3.666', 'Lab 4.888', '5555Lab 5.', 'Lab 6.56555', 'Lab 7.643', 'Lab 8.466', 'Lab 9.642', 'Lab 10.4267'),
(149, 'computers', 2, 9, '2017-2018', 'Lab 1.', 'Lab 2.', 'Lab 3.', 'Lab 4.', 'Lab 5.', 'Lab 6.', 'Lab 7.', 'Lab 8.', 'Lab 9.', 'Lab 10.'),
(150, 'English', 2, 6, '2017-2018', 'Lab 1.', 'Lab 2.', 'Lab 3.', 'Lab 4.', 'Lab 5.', 'Lab 6.', 'Lab 7.', 'Lab 8.', 'Lab 9.', 'Lab 10.'),
(151, 'mathematics', 2, 3, '2017-2018', 'Lab 1.', 'Lab 2.', 'Lab 3.', 'Lab 4.', 'Lab 5.', 'Lab 6.', 'Lab 7.', 'Lab 8.', 'Lab 9.', 'Lab 10.'),
(152, 'Philosophy', 2, 8, '2017-2018', 'Lab 1.', 'Lab 2.', 'Lab 3.', 'Lab 4.', 'Lab 5.', 'Lab 6.', 'Lab 7.', 'Lab 8.', 'Lab 9.', 'Lab 10.'),
(153, 'science', 2, 4, '2017-2018', 'Lab 1.', 'Lab 2.', 'Lab 3.', 'Lab 4.', 'Lab 5.', 'Lab 6.', 'Lab 7.', 'Lab 8.', 'Lab 9.', 'Lab 10.'),
(154, 'social studies', 2, 5, '2017-2018', 'Lab 1.', 'Lab 2.', 'Lab 3.', 'Lab 4.', 'Lab 5.', 'Lab 6.', 'Lab 7.', 'Lab 8.', 'Lab 9.', 'Lab 10.'),
(155, 'Sport', 2, 10, '2017-2018', 'Lab 1.', 'Lab 2.', 'Lab 3.', 'Lab 4.', 'Lab 5.', 'Lab 6.', 'Lab 7.', 'Lab 8.', 'Lab 9.', 'Lab 10.');

-- --------------------------------------------------------

--
-- Table structure for table `teacher`
--

CREATE TABLE `teacher` (
  `teacher_id` int(11) NOT NULL,
  `name` longtext COLLATE utf8_unicode_ci NOT NULL,
  `birthday` longtext COLLATE utf8_unicode_ci,
  `sex` longtext COLLATE utf8_unicode_ci,
  `address` longtext COLLATE utf8_unicode_ci NOT NULL,
  `phone` longtext COLLATE utf8_unicode_ci NOT NULL,
  `email` longtext COLLATE utf8_unicode_ci NOT NULL,
  `password` longtext COLLATE utf8_unicode_ci NOT NULL,
  `salary` longtext COLLATE utf8_unicode_ci,
  `username` longtext COLLATE utf8_unicode_ci NOT NULL,
  `token` varchar(600) COLLATE utf8_unicode_ci DEFAULT NULL,
  `user_code` longtext COLLATE utf8_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `teacher`
--

INSERT INTO `teacher` (`teacher_id`, `name`, `birthday`, `sex`, `address`, `phone`, `email`, `password`, `salary`, `username`, `token`, `user_code`) VALUES
(2, 'devendragupta ', '11/19/2017', 'Male', '', '', '', '7110eda4d09e062aa5e4a390b0a572ac0d2c0220', '', 'devendragupta', NULL, NULL),
(3, 'varun veluswamy', '11/19/2017', 'Female', '', '', '', '7110eda4d09e062aa5e4a390b0a572ac0d2c0220', '', 'docenteprepa', NULL, NULL),
(4, 'mohan inuganti', '11/19/2017', 'Male', '', '', '', '7110eda4d09e062aa5e4a390b0a572ac0d2c0220', '', 'docente1p', NULL, NULL),
(5, 'salma gulzar', '11/19/2017', 'Male', '', '', '', '7110eda4d09e062aa5e4a390b0a572ac0d2c0220', '', 'docente2p', NULL, NULL),
(6, 'shareel gupte', '11/19/2017', 'Female', '', '', '', '7110eda4d09e062aa5e4a390b0a572ac0d2c0220', '', 'docente3p', NULL, NULL),
(8, 'ramanadham swamy', '11/19/2017', 'Female', '', '', '', '7110eda4d09e062aa5e4a390b0a572ac0d2c0220', '', 'docente5p', NULL, NULL),
(9, 'rama rao ', '11/19/2017', 'Male', '', '', '', '7110eda4d09e062aa5e4a390b0a572ac0d2c0220', '', 'docente6p', NULL, NULL),
(10, 'vaishanavi', '11/19/2017', 'Male', '', '', '', '7110eda4d09e062aa5e4a390b0a572ac0d2c0220', '', 'docente1b', NULL, NULL),
(11, 'rupa sathuluri', '11/19/2017', 'Male', '', '', '', '7110eda4d09e062aa5e4a390b0a572ac0d2c0220', '', 'docente2b', NULL, NULL),
(12, 'sarojini ', '11/19/2017', 'Female', '', '', '', '7110eda4d09e062aa5e4a390b0a572ac0d2c0220', '', 'docente3b', NULL, NULL),
(15, 'mohan das gupta', '11/19/2017', 'Female', '', '', '', '7110eda4d09e062aa5e4a390b0a572ac0d2c0220', '', 'inglés', NULL, NULL),
(16, 'teacher', '11/20/2017', 'Male', 'teacher', '', 'teacher@gmail.com', '7110eda4d09e062aa5e4a390b0a572ac0d2c0220', '', 'teacher', NULL, NULL),
(18, 'raghavendra', '11/20/2017', 'Male', '', '', '', '7110eda4d09e062aa5e4a390b0a572ac0d2c0220', '', 'docente6pc', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `teacher_attendance`
--

CREATE TABLE `teacher_attendance` (
  `attendance_id` int(11) NOT NULL,
  `timestamp` longtext NOT NULL,
  `year` longtext NOT NULL,
  `teacher_id` int(11) DEFAULT NULL,
  `status` varchar(10) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `teacher_attendance`
--

INSERT INTO `teacher_attendance` (`attendance_id`, `timestamp`, `year`, `teacher_id`, `status`) VALUES
(1, '1509516000', '2017-2018', 1, '1'),
(2, '1509516000', '2017-2018', 2, '1'),
(3, '1509516000', '2017-2018', 3, '1'),
(4, '1509516000', '2017-2018', 4, '1'),
(5, '1509516000', '2017-2018', 5, '1'),
(6, '1509516000', '2017-2018', 6, '1'),
(7, '1509516000', '2017-2018', 7, '1'),
(8, '1509516000', '2017-2018', 8, '1'),
(9, '1509516000', '2017-2018', 9, '1'),
(10, '1509516000', '2017-2018', 10, '1'),
(11, '1509516000', '2017-2018', 11, '1'),
(12, '1509516000', '2017-2018', 12, '1'),
(13, '1509516000', '2017-2018', 13, '1'),
(14, '1509516000', '2017-2018', 14, '1'),
(15, '1509516000', '2017-2018', 15, '1'),
(16, '1509516000', '2017-2018', 16, '1'),
(17, '1509516000', '2017-2018', 17, '1'),
(18, '1509516000', '2017-2018', 18, '1'),
(19, '1509602400', '2017-2018', 1, '1'),
(20, '1509602400', '2017-2018', 2, '1'),
(21, '1509602400', '2017-2018', 3, '1'),
(22, '1509602400', '2017-2018', 4, '1'),
(23, '1509602400', '2017-2018', 5, '1'),
(24, '1509602400', '2017-2018', 6, '1'),
(25, '1509602400', '2017-2018', 7, '1'),
(26, '1509602400', '2017-2018', 8, '1'),
(27, '1509602400', '2017-2018', 9, '1'),
(28, '1509602400', '2017-2018', 10, '1'),
(29, '1509602400', '2017-2018', 11, '1'),
(30, '1509602400', '2017-2018', 12, '1'),
(31, '1509602400', '2017-2018', 13, '1'),
(32, '1509602400', '2017-2018', 14, '1'),
(33, '1509602400', '2017-2018', 15, '1'),
(34, '1509602400', '2017-2018', 16, '1'),
(35, '1509602400', '2017-2018', 17, '1'),
(36, '1509602400', '2017-2018', 18, '1'),
(37, '1509688800', '2017-2018', 1, '1'),
(38, '1509688800', '2017-2018', 2, '1'),
(39, '1509688800', '2017-2018', 3, '1'),
(40, '1509688800', '2017-2018', 4, '1'),
(41, '1509688800', '2017-2018', 5, '1'),
(42, '1509688800', '2017-2018', 6, '1'),
(43, '1509688800', '2017-2018', 7, '1'),
(44, '1509688800', '2017-2018', 8, '1'),
(45, '1509688800', '2017-2018', 9, '1'),
(46, '1509688800', '2017-2018', 10, '2'),
(47, '1509688800', '2017-2018', 11, '1'),
(48, '1509688800', '2017-2018', 12, '1'),
(49, '1509688800', '2017-2018', 13, '1'),
(50, '1509688800', '2017-2018', 14, '1'),
(51, '1509688800', '2017-2018', 15, '1'),
(52, '1509688800', '2017-2018', 16, '1'),
(53, '1509688800', '2017-2018', 17, '1'),
(54, '1509688800', '2017-2018', 18, '1'),
(55, '1509948000', '2017-2018', 1, '1'),
(56, '1509948000', '2017-2018', 2, '1'),
(57, '1509948000', '2017-2018', 3, '1'),
(58, '1509948000', '2017-2018', 4, '1'),
(59, '1509948000', '2017-2018', 5, '1'),
(60, '1509948000', '2017-2018', 6, '1'),
(61, '1509948000', '2017-2018', 7, '1'),
(62, '1509948000', '2017-2018', 8, '1'),
(63, '1509948000', '2017-2018', 9, '1'),
(64, '1509948000', '2017-2018', 10, '1'),
(65, '1509948000', '2017-2018', 11, '1'),
(66, '1509948000', '2017-2018', 12, '1'),
(67, '1509948000', '2017-2018', 13, '1'),
(68, '1509948000', '2017-2018', 14, '1'),
(69, '1509948000', '2017-2018', 15, '1'),
(70, '1509948000', '2017-2018', 16, '1'),
(71, '1509948000', '2017-2018', 17, '1'),
(72, '1509948000', '2017-2018', 18, '1'),
(73, '1510034400', '2017-2018', 1, '1'),
(74, '1510034400', '2017-2018', 2, '1'),
(75, '1510034400', '2017-2018', 3, '1'),
(76, '1510034400', '2017-2018', 4, '1'),
(77, '1510034400', '2017-2018', 5, '1'),
(78, '1510034400', '2017-2018', 6, '1'),
(79, '1510034400', '2017-2018', 7, '1'),
(80, '1510034400', '2017-2018', 8, '1'),
(81, '1510034400', '2017-2018', 9, '1'),
(82, '1510034400', '2017-2018', 10, '1'),
(83, '1510034400', '2017-2018', 11, '1'),
(84, '1510034400', '2017-2018', 12, '1'),
(85, '1510034400', '2017-2018', 13, '1'),
(86, '1510034400', '2017-2018', 14, '1'),
(87, '1510034400', '2017-2018', 15, '1'),
(88, '1510034400', '2017-2018', 16, '1'),
(89, '1510034400', '2017-2018', 17, '1'),
(90, '1510034400', '2017-2018', 18, '1'),
(91, '1510120800', '2017-2018', 1, '1'),
(92, '1510120800', '2017-2018', 2, '1'),
(93, '1510120800', '2017-2018', 3, '1'),
(94, '1510120800', '2017-2018', 4, '1'),
(95, '1510120800', '2017-2018', 5, '1'),
(96, '1510120800', '2017-2018', 6, '1'),
(97, '1510120800', '2017-2018', 7, '1'),
(98, '1510120800', '2017-2018', 8, '1'),
(99, '1510120800', '2017-2018', 9, '1'),
(100, '1510120800', '2017-2018', 10, '1'),
(101, '1510120800', '2017-2018', 11, '1'),
(102, '1510120800', '2017-2018', 12, '1'),
(103, '1510120800', '2017-2018', 13, '1'),
(104, '1510120800', '2017-2018', 14, '1'),
(105, '1510120800', '2017-2018', 15, '1'),
(106, '1510120800', '2017-2018', 16, '1'),
(107, '1510120800', '2017-2018', 17, '1'),
(108, '1510120800', '2017-2018', 18, '2'),
(109, '1510207200', '2017-2018', 1, '1'),
(110, '1510207200', '2017-2018', 2, '1'),
(111, '1510207200', '2017-2018', 3, '1'),
(112, '1510207200', '2017-2018', 4, '1'),
(113, '1510207200', '2017-2018', 5, '1'),
(114, '1510207200', '2017-2018', 6, '1'),
(115, '1510207200', '2017-2018', 7, '1'),
(116, '1510207200', '2017-2018', 8, '1'),
(117, '1510207200', '2017-2018', 9, '1'),
(118, '1510207200', '2017-2018', 10, '1'),
(119, '1510207200', '2017-2018', 11, '1'),
(120, '1510207200', '2017-2018', 12, '1'),
(121, '1510207200', '2017-2018', 13, '1'),
(122, '1510207200', '2017-2018', 14, '1'),
(123, '1510207200', '2017-2018', 15, '1'),
(124, '1510207200', '2017-2018', 16, '1'),
(125, '1510207200', '2017-2018', 17, '1'),
(126, '1510207200', '2017-2018', 18, '1'),
(127, '1510293600', '2017-2018', 1, '1'),
(128, '1510293600', '2017-2018', 2, '1'),
(129, '1510293600', '2017-2018', 3, '1'),
(130, '1510293600', '2017-2018', 4, '1'),
(131, '1510293600', '2017-2018', 5, '1'),
(132, '1510293600', '2017-2018', 6, '1'),
(133, '1510293600', '2017-2018', 7, '1'),
(134, '1510293600', '2017-2018', 8, '1'),
(135, '1510293600', '2017-2018', 9, '1'),
(136, '1510293600', '2017-2018', 10, '1'),
(137, '1510293600', '2017-2018', 11, '1'),
(138, '1510293600', '2017-2018', 12, '1'),
(139, '1510293600', '2017-2018', 13, '1'),
(140, '1510293600', '2017-2018', 14, '1'),
(141, '1510293600', '2017-2018', 15, '1'),
(142, '1510293600', '2017-2018', 16, '1'),
(143, '1510293600', '2017-2018', 17, '1'),
(144, '1510293600', '2017-2018', 18, '1'),
(145, '1510552800', '2017-2018', 1, '1'),
(146, '1510552800', '2017-2018', 2, '1'),
(147, '1510552800', '2017-2018', 3, '1'),
(148, '1510552800', '2017-2018', 4, '1'),
(149, '1510552800', '2017-2018', 5, '1'),
(150, '1510552800', '2017-2018', 6, '1'),
(151, '1510552800', '2017-2018', 7, '1'),
(152, '1510552800', '2017-2018', 8, '1'),
(153, '1510552800', '2017-2018', 9, '1'),
(154, '1510552800', '2017-2018', 10, '1'),
(155, '1510552800', '2017-2018', 11, '1'),
(156, '1510552800', '2017-2018', 12, '1'),
(157, '1510552800', '2017-2018', 13, '1'),
(158, '1510552800', '2017-2018', 14, '1'),
(159, '1510552800', '2017-2018', 15, '1'),
(160, '1510552800', '2017-2018', 16, '1'),
(161, '1510552800', '2017-2018', 17, '1'),
(162, '1510552800', '2017-2018', 18, '1'),
(163, '1510639200', '2017-2018', 1, '1'),
(164, '1510639200', '2017-2018', 2, '1'),
(165, '1510639200', '2017-2018', 3, '1'),
(166, '1510639200', '2017-2018', 4, '1'),
(167, '1510639200', '2017-2018', 5, '1'),
(168, '1510639200', '2017-2018', 6, '1'),
(169, '1510639200', '2017-2018', 7, '1'),
(170, '1510639200', '2017-2018', 8, '1'),
(171, '1510639200', '2017-2018', 9, '1'),
(172, '1510639200', '2017-2018', 10, '1'),
(173, '1510639200', '2017-2018', 11, '1'),
(174, '1510639200', '2017-2018', 12, '1'),
(175, '1510639200', '2017-2018', 13, '1'),
(176, '1510639200', '2017-2018', 14, '1'),
(177, '1510639200', '2017-2018', 15, '1'),
(178, '1510639200', '2017-2018', 16, '2'),
(179, '1510639200', '2017-2018', 17, '1'),
(180, '1510639200', '2017-2018', 18, '1'),
(181, '1510725600', '2017-2018', 1, '1'),
(182, '1510725600', '2017-2018', 2, '1'),
(183, '1510725600', '2017-2018', 3, '1'),
(184, '1510725600', '2017-2018', 4, '1'),
(185, '1510725600', '2017-2018', 5, '1'),
(186, '1510725600', '2017-2018', 6, '1'),
(187, '1510725600', '2017-2018', 7, '1'),
(188, '1510725600', '2017-2018', 8, '1'),
(189, '1510725600', '2017-2018', 9, '1'),
(190, '1510725600', '2017-2018', 10, '1'),
(191, '1510725600', '2017-2018', 11, '1'),
(192, '1510725600', '2017-2018', 12, '1'),
(193, '1510725600', '2017-2018', 13, '1'),
(194, '1510725600', '2017-2018', 14, '1'),
(195, '1510725600', '2017-2018', 15, '1'),
(196, '1510725600', '2017-2018', 16, '1'),
(197, '1510725600', '2017-2018', 17, '1'),
(198, '1510725600', '2017-2018', 18, '1'),
(199, '1510812000', '2017-2018', 1, '1'),
(200, '1510812000', '2017-2018', 2, '1'),
(201, '1510812000', '2017-2018', 3, '1'),
(202, '1510812000', '2017-2018', 4, '1'),
(203, '1510812000', '2017-2018', 5, '1'),
(204, '1510812000', '2017-2018', 6, '1'),
(205, '1510812000', '2017-2018', 7, '1'),
(206, '1510812000', '2017-2018', 8, '1'),
(207, '1510812000', '2017-2018', 9, '1'),
(208, '1510812000', '2017-2018', 10, '1'),
(209, '1510812000', '2017-2018', 11, '1'),
(210, '1510812000', '2017-2018', 12, '1'),
(211, '1510812000', '2017-2018', 13, '1'),
(212, '1510812000', '2017-2018', 14, '1'),
(213, '1510812000', '2017-2018', 15, '1'),
(214, '1510812000', '2017-2018', 16, '1'),
(215, '1510812000', '2017-2018', 17, '1'),
(216, '1510812000', '2017-2018', 18, '1'),
(217, '1510898400', '2017-2018', 1, '1'),
(218, '1510898400', '2017-2018', 2, '1'),
(219, '1510898400', '2017-2018', 3, '1'),
(220, '1510898400', '2017-2018', 4, '1'),
(221, '1510898400', '2017-2018', 5, '1'),
(222, '1510898400', '2017-2018', 6, '1'),
(223, '1510898400', '2017-2018', 7, '1'),
(224, '1510898400', '2017-2018', 8, '1'),
(225, '1510898400', '2017-2018', 9, '1'),
(226, '1510898400', '2017-2018', 10, '1'),
(227, '1510898400', '2017-2018', 11, '3'),
(228, '1510898400', '2017-2018', 12, '3'),
(229, '1510898400', '2017-2018', 13, '1'),
(230, '1510898400', '2017-2018', 14, '1'),
(231, '1510898400', '2017-2018', 15, '1'),
(232, '1510898400', '2017-2018', 16, '1'),
(233, '1510898400', '2017-2018', 17, '1'),
(234, '1510898400', '2017-2018', 18, '1'),
(235, '1511157600', '2017-2018', 1, NULL),
(236, '1511157600', '2017-2018', 2, NULL),
(237, '1511157600', '2017-2018', 3, NULL),
(238, '1511157600', '2017-2018', 4, NULL),
(239, '1511157600', '2017-2018', 5, NULL),
(240, '1511157600', '2017-2018', 6, NULL),
(241, '1511157600', '2017-2018', 7, NULL),
(242, '1511157600', '2017-2018', 8, NULL),
(243, '1511157600', '2017-2018', 9, NULL),
(244, '1511157600', '2017-2018', 10, NULL),
(245, '1511157600', '2017-2018', 11, NULL),
(246, '1511157600', '2017-2018', 12, NULL),
(247, '1511157600', '2017-2018', 13, NULL),
(248, '1511157600', '2017-2018', 14, NULL),
(249, '1511157600', '2017-2018', 15, NULL),
(250, '1511157600', '2017-2018', 16, NULL),
(251, '1511157600', '2017-2018', 17, NULL),
(252, '1511157600', '2017-2018', 18, NULL),
(253, '1515477600', '2017-2018', 2, NULL),
(254, '1515477600', '2017-2018', 3, NULL),
(255, '1515477600', '2017-2018', 4, NULL),
(256, '1515477600', '2017-2018', 5, NULL),
(257, '1515477600', '2017-2018', 6, NULL),
(258, '1515477600', '2017-2018', 8, NULL),
(259, '1515477600', '2017-2018', 9, NULL),
(260, '1515477600', '2017-2018', 10, NULL),
(261, '1515477600', '2017-2018', 11, NULL),
(262, '1515477600', '2017-2018', 12, NULL),
(263, '1515477600', '2017-2018', 15, NULL),
(264, '1515477600', '2017-2018', 16, NULL),
(265, '1515477600', '2017-2018', 18, NULL),
(266, '1515650400', '2017-2018', 2, NULL),
(267, '1515650400', '2017-2018', 3, NULL),
(268, '1515650400', '2017-2018', 4, NULL),
(269, '1515650400', '2017-2018', 5, NULL),
(270, '1515650400', '2017-2018', 6, NULL),
(271, '1515650400', '2017-2018', 8, NULL),
(272, '1515650400', '2017-2018', 9, NULL),
(273, '1515650400', '2017-2018', 10, NULL),
(274, '1515650400', '2017-2018', 11, NULL),
(275, '1515650400', '2017-2018', 12, NULL),
(276, '1515650400', '2017-2018', 15, NULL),
(277, '1515650400', '2017-2018', 16, NULL),
(278, '1515650400', '2017-2018', 18, NULL),
(279, '1516082400', '2017-2018', 2, NULL),
(280, '1516082400', '2017-2018', 3, NULL),
(281, '1516082400', '2017-2018', 4, NULL),
(282, '1516082400', '2017-2018', 5, NULL),
(283, '1516082400', '2017-2018', 6, NULL),
(284, '1516082400', '2017-2018', 8, NULL),
(285, '1516082400', '2017-2018', 9, NULL),
(286, '1516082400', '2017-2018', 10, NULL),
(287, '1516082400', '2017-2018', 11, NULL),
(288, '1516082400', '2017-2018', 12, NULL),
(289, '1516082400', '2017-2018', 15, NULL),
(290, '1516082400', '2017-2018', 16, NULL),
(291, '1516082400', '2017-2018', 18, NULL),
(292, '1516341600', '2017-2018', 2, NULL),
(293, '1516341600', '2017-2018', 3, NULL),
(294, '1516341600', '2017-2018', 4, NULL),
(295, '1516341600', '2017-2018', 5, NULL),
(296, '1516341600', '2017-2018', 6, NULL),
(297, '1516341600', '2017-2018', 8, NULL),
(298, '1516341600', '2017-2018', 9, NULL),
(299, '1516341600', '2017-2018', 10, NULL),
(300, '1516341600', '2017-2018', 11, NULL),
(301, '1516341600', '2017-2018', 12, NULL),
(302, '1516341600', '2017-2018', 15, NULL),
(303, '1516341600', '2017-2018', 16, NULL),
(304, '1516341600', '2017-2018', 18, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `teacher_files`
--

CREATE TABLE `teacher_files` (
  `id` int(11) NOT NULL,
  `title` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `description` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci,
  `file` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `file_type` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `date` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `user` int(11) NOT NULL,
  `file_code` varchar(60) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `teacher_files`
--

INSERT INTO `teacher_files` (`id`, `title`, `description`, `file`, `file_type`, `date`, `user`, `file_code`) VALUES
(1, 'Reglamento MINEDUC', 'Reglamento para centros educativos del Ministerio de Educación', 'Reglamentos_Centros_Educativos.pdf', 'PDF', '20-11-2017', 1, 'e0a0c5cca5'),
(2, 'Fees', 'GST ', 'Calculations.xlsx', 'Other', '16-01-2018', 1, '4a5a2aada1');

-- --------------------------------------------------------

--
-- Table structure for table `ticket`
--

CREATE TABLE `ticket` (
  `ticket_id` int(11) NOT NULL,
  `title` longtext COLLATE utf8_unicode_ci NOT NULL,
  `ticket_code` longtext COLLATE utf8_unicode_ci NOT NULL,
  `status` longtext COLLATE utf8_unicode_ci NOT NULL COMMENT 'opened closed',
  `priority` longtext COLLATE utf8_unicode_ci NOT NULL COMMENT 'baja media alta',
  `description` longtext COLLATE utf8_unicode_ci NOT NULL,
  `student_id` int(11) NOT NULL,
  `assigned_staff_id` int(11) NOT NULL,
  `teacher_id` int(11) NOT NULL,
  `timestamp` longtext COLLATE utf8_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ticket_message`
--

CREATE TABLE `ticket_message` (
  `ticket_message_id` int(11) NOT NULL,
  `ticket_code` longtext COLLATE utf8_unicode_ci NOT NULL,
  `message` longtext COLLATE utf8_unicode_ci NOT NULL,
  `file` longtext COLLATE utf8_unicode_ci NOT NULL,
  `sender_type` longtext COLLATE utf8_unicode_ci NOT NULL,
  `sender_id` int(11) NOT NULL,
  `timestamp` longtext COLLATE utf8_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `transport`
--

CREATE TABLE `transport` (
  `transport_id` int(11) NOT NULL,
  `route_name` longtext COLLATE utf8_unicode_ci NOT NULL,
  `number_of_vehicle` longtext COLLATE utf8_unicode_ci NOT NULL,
  `route_fare` longtext COLLATE utf8_unicode_ci NOT NULL,
  `driver_name` longtext COLLATE utf8_unicode_ci NOT NULL,
  `driver_phone` longtext COLLATE utf8_unicode_ci NOT NULL,
  `route` longtext COLLATE utf8_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `transport`
--

INSERT INTO `transport` (`transport_id`, `route_name`, `number_of_vehicle`, `route_fare`, `driver_name`, `driver_phone`, `route`) VALUES
(1, 'Bus 1', 'GTQ-123', '150', 'Juan Calderon', '55555555', 'Demo - Calvario');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `academic_settings`
--
ALTER TABLE `academic_settings`
  ADD PRIMARY KEY (`settings_id`),
  ADD UNIQUE KEY `settings_id` (`settings_id`),
  ADD KEY `settings_id_2` (`settings_id`);

--
-- Indexes for table `academic_syllabus`
--
ALTER TABLE `academic_syllabus`
  ADD PRIMARY KEY (`academic_syllabus_id`),
  ADD KEY `academic_syllabus_id` (`academic_syllabus_id`);

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`admin_id`),
  ADD KEY `admin_id` (`admin_id`);

--
-- Indexes for table `attendance`
--
ALTER TABLE `attendance`
  ADD PRIMARY KEY (`attendance_id`),
  ADD KEY `attendance_id` (`attendance_id`);

--
-- Indexes for table `book`
--
ALTER TABLE `book`
  ADD PRIMARY KEY (`book_id`);

--
-- Indexes for table `ci_sessions`
--
ALTER TABLE `ci_sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `ci_sessions_timestamp` (`timestamp`);

--
-- Indexes for table `class`
--
ALTER TABLE `class`
  ADD PRIMARY KEY (`class_id`);

--
-- Indexes for table `class_routine`
--
ALTER TABLE `class_routine`
  ADD PRIMARY KEY (`class_routine_id`);

--
-- Indexes for table `deliveries`
--
ALTER TABLE `deliveries`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `document`
--
ALTER TABLE `document`
  ADD PRIMARY KEY (`document_id`);

--
-- Indexes for table `dormitory`
--
ALTER TABLE `dormitory`
  ADD PRIMARY KEY (`dormitory_id`);

--
-- Indexes for table `email_template`
--
ALTER TABLE `email_template`
  ADD PRIMARY KEY (`email_template_id`);

--
-- Indexes for table `enroll`
--
ALTER TABLE `enroll`
  ADD PRIMARY KEY (`enroll_id`);

--
-- Indexes for table `events`
--
ALTER TABLE `events`
  ADD PRIMARY KEY (`event_id`);

--
-- Indexes for table `exam`
--
ALTER TABLE `exam`
  ADD PRIMARY KEY (`exam_id`);

--
-- Indexes for table `exams`
--
ALTER TABLE `exams`
  ADD PRIMARY KEY (`exam_id`);

--
-- Indexes for table `expense_category`
--
ALTER TABLE `expense_category`
  ADD PRIMARY KEY (`expense_category_id`);

--
-- Indexes for table `forum`
--
ALTER TABLE `forum`
  ADD PRIMARY KEY (`post_id`);

--
-- Indexes for table `forum_message`
--
ALTER TABLE `forum_message`
  ADD PRIMARY KEY (`message_id`);

--
-- Indexes for table `homework`
--
ALTER TABLE `homework`
  ADD PRIMARY KEY (`homework_id`);

--
-- Indexes for table `horarios_examenes`
--
ALTER TABLE `horarios_examenes`
  ADD PRIMARY KEY (`horario_id`);

--
-- Indexes for table `invoice`
--
ALTER TABLE `invoice`
  ADD PRIMARY KEY (`invoice_id`);

--
-- Indexes for table `language`
--
ALTER TABLE `language`
  ADD PRIMARY KEY (`phrase_id`),
  ADD KEY `phrase_id` (`phrase_id`);

--
-- Indexes for table `libreria`
--
ALTER TABLE `libreria`
  ADD PRIMARY KEY (`libro_id`);

--
-- Indexes for table `mark`
--
ALTER TABLE `mark`
  ADD PRIMARY KEY (`mark_id`);

--
-- Indexes for table `marks`
--
ALTER TABLE `marks`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mensaje_reporte`
--
ALTER TABLE `mensaje_reporte`
  ADD PRIMARY KEY (`news_message_id`);

--
-- Indexes for table `message`
--
ALTER TABLE `message`
  ADD PRIMARY KEY (`message_id`);

--
-- Indexes for table `message_thread`
--
ALTER TABLE `message_thread`
  ADD PRIMARY KEY (`message_thread_id`);

--
-- Indexes for table `news`
--
ALTER TABLE `news`
  ADD PRIMARY KEY (`news_id`);

--
-- Indexes for table `news_teacher`
--
ALTER TABLE `news_teacher`
  ADD PRIMARY KEY (`notice_id`);

--
-- Indexes for table `notice_message`
--
ALTER TABLE `notice_message`
  ADD PRIMARY KEY (`notice_message_id`);

--
-- Indexes for table `online_users`
--
ALTER TABLE `online_users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `parent`
--
ALTER TABLE `parent`
  ADD PRIMARY KEY (`parent_id`);

--
-- Indexes for table `payment`
--
ALTER TABLE `payment`
  ADD PRIMARY KEY (`payment_id`);

--
-- Indexes for table `pending_users`
--
ALTER TABLE `pending_users`
  ADD PRIMARY KEY (`user_id`);

--
-- Indexes for table `polls`
--
ALTER TABLE `polls`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `poll_response`
--
ALTER TABLE `poll_response`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `questions`
--
ALTER TABLE `questions`
  ADD PRIMARY KEY (`question_id`);

--
-- Indexes for table `reporte_alumnos`
--
ALTER TABLE `reporte_alumnos`
  ADD PRIMARY KEY (`report_id`);

--
-- Indexes for table `reporte_mensaje`
--
ALTER TABLE `reporte_mensaje`
  ADD PRIMARY KEY (`report_message_id`);

--
-- Indexes for table `reports`
--
ALTER TABLE `reports`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `report_response`
--
ALTER TABLE `report_response`
  ADD PRIMARY KEY (`message_id`);

--
-- Indexes for table `request`
--
ALTER TABLE `request`
  ADD PRIMARY KEY (`request_id`);

--
-- Indexes for table `section`
--
ALTER TABLE `section`
  ADD PRIMARY KEY (`section_id`);

--
-- Indexes for table `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`settings_id`);

--
-- Indexes for table `student`
--
ALTER TABLE `student`
  ADD PRIMARY KEY (`student_id`);

--
-- Indexes for table `students_request`
--
ALTER TABLE `students_request`
  ADD PRIMARY KEY (`request_id`);

--
-- Indexes for table `student_exam`
--
ALTER TABLE `student_exam`
  ADD PRIMARY KEY (`exam_id`);

--
-- Indexes for table `subject`
--
ALTER TABLE `subject`
  ADD PRIMARY KEY (`subject_id`);

--
-- Indexes for table `teacher`
--
ALTER TABLE `teacher`
  ADD PRIMARY KEY (`teacher_id`);

--
-- Indexes for table `teacher_attendance`
--
ALTER TABLE `teacher_attendance`
  ADD PRIMARY KEY (`attendance_id`);

--
-- Indexes for table `teacher_files`
--
ALTER TABLE `teacher_files`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ticket`
--
ALTER TABLE `ticket`
  ADD PRIMARY KEY (`ticket_id`);

--
-- Indexes for table `ticket_message`
--
ALTER TABLE `ticket_message`
  ADD PRIMARY KEY (`ticket_message_id`);

--
-- Indexes for table `transport`
--
ALTER TABLE `transport`
  ADD PRIMARY KEY (`transport_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `academic_settings`
--
ALTER TABLE `academic_settings`
  MODIFY `settings_id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;
--
-- AUTO_INCREMENT for table `academic_syllabus`
--
ALTER TABLE `academic_syllabus`
  MODIFY `academic_syllabus_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `admin_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `attendance`
--
ALTER TABLE `attendance`
  MODIFY `attendance_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=44;
--
-- AUTO_INCREMENT for table `book`
--
ALTER TABLE `book`
  MODIFY `book_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `class`
--
ALTER TABLE `class`
  MODIFY `class_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `class_routine`
--
ALTER TABLE `class_routine`
  MODIFY `class_routine_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `deliveries`
--
ALTER TABLE `deliveries`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `document`
--
ALTER TABLE `document`
  MODIFY `document_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `dormitory`
--
ALTER TABLE `dormitory`
  MODIFY `dormitory_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `email_template`
--
ALTER TABLE `email_template`
  MODIFY `email_template_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `enroll`
--
ALTER TABLE `enroll`
  MODIFY `enroll_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
--
-- AUTO_INCREMENT for table `events`
--
ALTER TABLE `events`
  MODIFY `event_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `exam`
--
ALTER TABLE `exam`
  MODIFY `exam_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `exams`
--
ALTER TABLE `exams`
  MODIFY `exam_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `expense_category`
--
ALTER TABLE `expense_category`
  MODIFY `expense_category_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `forum`
--
ALTER TABLE `forum`
  MODIFY `post_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `forum_message`
--
ALTER TABLE `forum_message`
  MODIFY `message_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `homework`
--
ALTER TABLE `homework`
  MODIFY `homework_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `horarios_examenes`
--
ALTER TABLE `horarios_examenes`
  MODIFY `horario_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `invoice`
--
ALTER TABLE `invoice`
  MODIFY `invoice_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `language`
--
ALTER TABLE `language`
  MODIFY `phrase_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=427;
--
-- AUTO_INCREMENT for table `libreria`
--
ALTER TABLE `libreria`
  MODIFY `libro_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `mark`
--
ALTER TABLE `mark`
  MODIFY `mark_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;
--
-- AUTO_INCREMENT for table `marks`
--
ALTER TABLE `marks`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `mensaje_reporte`
--
ALTER TABLE `mensaje_reporte`
  MODIFY `news_message_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;
--
-- AUTO_INCREMENT for table `message`
--
ALTER TABLE `message`
  MODIFY `message_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
--
-- AUTO_INCREMENT for table `message_thread`
--
ALTER TABLE `message_thread`
  MODIFY `message_thread_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `news`
--
ALTER TABLE `news`
  MODIFY `news_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `news_teacher`
--
ALTER TABLE `news_teacher`
  MODIFY `notice_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `notice_message`
--
ALTER TABLE `notice_message`
  MODIFY `notice_message_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `online_users`
--
ALTER TABLE `online_users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=278;
--
-- AUTO_INCREMENT for table `parent`
--
ALTER TABLE `parent`
  MODIFY `parent_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `payment`
--
ALTER TABLE `payment`
  MODIFY `payment_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `pending_users`
--
ALTER TABLE `pending_users`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `polls`
--
ALTER TABLE `polls`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `poll_response`
--
ALTER TABLE `poll_response`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `questions`
--
ALTER TABLE `questions`
  MODIFY `question_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `reporte_alumnos`
--
ALTER TABLE `reporte_alumnos`
  MODIFY `report_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `reporte_mensaje`
--
ALTER TABLE `reporte_mensaje`
  MODIFY `report_message_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `reports`
--
ALTER TABLE `reports`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `report_response`
--
ALTER TABLE `report_response`
  MODIFY `message_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `request`
--
ALTER TABLE `request`
  MODIFY `request_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `section`
--
ALTER TABLE `section`
  MODIFY `section_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
--
-- AUTO_INCREMENT for table `settings`
--
ALTER TABLE `settings`
  MODIFY `settings_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;
--
-- AUTO_INCREMENT for table `student`
--
ALTER TABLE `student`
  MODIFY `student_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT for table `students_request`
--
ALTER TABLE `students_request`
  MODIFY `request_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `student_exam`
--
ALTER TABLE `student_exam`
  MODIFY `exam_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `subject`
--
ALTER TABLE `subject`
  MODIFY `subject_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=156;
--
-- AUTO_INCREMENT for table `teacher`
--
ALTER TABLE `teacher`
  MODIFY `teacher_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;
--
-- AUTO_INCREMENT for table `teacher_attendance`
--
ALTER TABLE `teacher_attendance`
  MODIFY `attendance_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=305;
--
-- AUTO_INCREMENT for table `teacher_files`
--
ALTER TABLE `teacher_files`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `ticket`
--
ALTER TABLE `ticket`
  MODIFY `ticket_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `ticket_message`
--
ALTER TABLE `ticket_message`
  MODIFY `ticket_message_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `transport`
--
ALTER TABLE `transport`
  MODIFY `transport_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
