-- phpMyAdmin SQL Dump
-- version 4.7.3
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Jan 09, 2018 at 04:03 PM
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
-- Database: `tammanag_library`
--

-- --------------------------------------------------------

--
-- Table structure for table `ci_sessions`
--

CREATE TABLE `ci_sessions` (
  `session_id` varchar(40) NOT NULL DEFAULT '0',
  `ip_address` varchar(16) NOT NULL DEFAULT '0',
  `user_agent` varchar(250) NOT NULL,
  `last_activity` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `user_data` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ci_sessions`
--

INSERT INTO `ci_sessions` (`session_id`, `ip_address`, `user_agent`, `last_activity`, `user_data`) VALUES
('1093f791c058e84120358059362585f0', '103.93.194.175', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.84 Safari/537.36', 1515436570, 'a:1:{s:9:\"user_data\";s:0:\"\";}'),
('1d84baaf222f968437197f041ea7c6d6', '103.248.122.126', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36', 1508825346, 'a:10:{s:9:\"user_data\";s:0:\"\";s:5:\"lu_id\";s:1:\"1\";s:12:\"lu_full_name\";s:10:\"Admin User\";s:8:\"lu_email\";s:15:\"admin@admin.com\";s:6:\"lu_pwd\";s:32:\"21232f297a57a5a743894a0e4a801fc3\";s:11:\"lu_acc_type\";s:1:\"3\";s:13:\"lu_acc_status\";s:1:\"1\";s:11:\"lu_reg_date\";s:19:\"2016-04-20 04:30:00\";s:6:\"lu_phn\";s:11:\"23500000000\";s:8:\"passport\";s:12:\"passport.png\";}'),
('209bc58b6244b918c26608ad5fa5e418', '45.119.237.73', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36', 1515065985, 'a:1:{s:9:\"user_data\";s:0:\"\";}'),
('2a45231954d745958c74a526a1aba098', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.2; rv:48.0) Gecko/20100101 Firefox/48.0', 1470906300, 'a:10:{s:9:\"user_data\";s:0:\"\";s:5:\"lu_id\";s:1:\"1\";s:12:\"lu_full_name\";s:10:\"Admin User\";s:8:\"lu_email\";s:15:\"admin@admin.com\";s:6:\"lu_pwd\";s:32:\"21232f297a57a5a743894a0e4a801fc3\";s:11:\"lu_acc_type\";s:1:\"3\";s:13:\"lu_acc_status\";s:1:\"1\";s:11:\"lu_reg_date\";s:19:\"2016-04-19 16:00:00\";s:6:\"lu_phn\";s:11:\"23500000000\";s:8:\"passport\";s:12:\"passport.png\";}'),
('41f8869abe6ed82be01b03316ab03c12', '103.254.206.187', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36', 1508822883, 'a:10:{s:9:\"user_data\";s:0:\"\";s:5:\"lu_id\";s:1:\"1\";s:12:\"lu_full_name\";s:10:\"Admin User\";s:8:\"lu_email\";s:15:\"admin@admin.com\";s:6:\"lu_pwd\";s:32:\"21232f297a57a5a743894a0e4a801fc3\";s:11:\"lu_acc_type\";s:1:\"3\";s:13:\"lu_acc_status\";s:1:\"1\";s:11:\"lu_reg_date\";s:19:\"2016-04-20 04:30:00\";s:6:\"lu_phn\";s:11:\"23500000000\";s:8:\"passport\";s:12:\"passport.png\";}'),
('465748b15dea3725ce74be74f1de1cda', '115.97.162.21', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36', 1508829814, 'a:11:{s:9:\"user_data\";s:0:\"\";s:5:\"lu_id\";s:1:\"1\";s:12:\"lu_full_name\";s:10:\"Admin User\";s:8:\"lu_email\";s:15:\"admin@admin.com\";s:6:\"lu_pwd\";s:32:\"21232f297a57a5a743894a0e4a801fc3\";s:11:\"lu_acc_type\";s:1:\"3\";s:13:\"lu_acc_status\";s:1:\"1\";s:11:\"lu_reg_date\";s:19:\"2016-04-20 04:30:00\";s:6:\"lu_phn\";s:11:\"23500000000\";s:8:\"passport\";s:12:\"passport.png\";s:8:\"sSuccess\";s:43:\"Your account has been created successfully.\";}'),
('592a1e20d4fb613b4e873d2b70df5dbd', '103.254.206.187', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36', 1508829924, 'a:1:{s:9:\"user_data\";s:0:\"\";}'),
('631329bf92d3a5bf81111abdda4c231a', '178.79.138.22', 'Mozilla/5.0 (Windows NT 5.1; rv:31.0) Gecko/20100101 Firefox/31.0', 1515489157, 'a:1:{s:9:\"user_data\";s:0:\"\";}'),
('8eff6aac7f4107aaef50b99f57a6414b', '178.79.138.22', 'Mozilla/5.0 (Windows NT 5.1; rv:31.0) Gecko/20100101 Firefox/31.0', 1512657278, ''),
('b9934aca299052db8de8445dee7b7174', '139.167.33.79', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.132 Safari/537.36', 1515254461, 'a:1:{s:9:\"user_data\";s:0:\"\";}'),
('cde3b6ea11f1e26fe9666b2b49b13634', '103.254.206.187', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36', 1508821155, 'a:10:{s:9:\"user_data\";s:0:\"\";s:5:\"lu_id\";s:1:\"1\";s:12:\"lu_full_name\";s:10:\"Admin User\";s:8:\"lu_email\";s:15:\"admin@admin.com\";s:6:\"lu_pwd\";s:32:\"21232f297a57a5a743894a0e4a801fc3\";s:11:\"lu_acc_type\";s:1:\"3\";s:13:\"lu_acc_status\";s:1:\"1\";s:11:\"lu_reg_date\";s:19:\"2016-04-20 04:30:00\";s:6:\"lu_phn\";s:11:\"23500000000\";s:8:\"passport\";s:12:\"passport.png\";}'),
('ec85c852b7bccbb6bf2609a087e6fa43', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.2; rv:48.0) Gecko/20100101 Firefox/48.0', 1470988433, 'a:10:{s:9:\"user_data\";s:0:\"\";s:5:\"lu_id\";s:1:\"1\";s:12:\"lu_full_name\";s:10:\"Admin User\";s:8:\"lu_email\";s:15:\"admin@admin.com\";s:6:\"lu_pwd\";s:32:\"21232f297a57a5a743894a0e4a801fc3\";s:11:\"lu_acc_type\";s:1:\"3\";s:13:\"lu_acc_status\";s:1:\"1\";s:11:\"lu_reg_date\";s:19:\"2016-04-19 16:00:00\";s:6:\"lu_phn\";s:11:\"23500000000\";s:8:\"passport\";s:12:\"passport.png\";}'),
('f82d0459295b1b6b8155c5538e8fdb32', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.2; rv:47.0) Gecko/20100101 Firefox/47.0', 1469896920, 'a:10:{s:9:\"user_data\";s:0:\"\";s:5:\"lu_id\";s:1:\"1\";s:12:\"lu_full_name\";s:10:\"Admin User\";s:8:\"lu_email\";s:15:\"admin@admin.com\";s:6:\"lu_pwd\";s:32:\"21232f297a57a5a743894a0e4a801fc3\";s:11:\"lu_acc_type\";s:1:\"3\";s:13:\"lu_acc_status\";s:1:\"1\";s:11:\"lu_reg_date\";s:19:\"2016-04-19 16:00:00\";s:6:\"lu_phn\";s:11:\"23500000000\";s:8:\"passport\";s:12:\"passport.png\";}');

-- --------------------------------------------------------

--
-- Table structure for table `library_book_reservation`
--

CREATE TABLE `library_book_reservation` (
  `lbr_id` int(11) NOT NULL,
  `lbr_trans_id` int(11) NOT NULL,
  `lbr_library_id` int(5) NOT NULL,
  `lbr_date_reserverd_for` date DEFAULT NULL,
  `lbr_date_reserved` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `lbr_date_to_be_returned` date DEFAULT NULL,
  `lbr_catalog_item_id` int(11) NOT NULL,
  `lbr_reservedby` varchar(250) NOT NULL,
  `lbr_status` tinyint(1) NOT NULL DEFAULT '0',
  `lbr_processedby` varchar(250) NOT NULL,
  `lbr_admin_note` text NOT NULL,
  `lbr_user_note` text
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `library_borrowed_catalog_item`
--

CREATE TABLE `library_borrowed_catalog_item` (
  `lbci_id` int(11) NOT NULL,
  `lbci_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `lbci_user_id` varchar(250) NOT NULL,
  `lbci_user_type` tinyint(1) NOT NULL,
  `lbci_transaction_id` int(11) NOT NULL,
  `lbci_date_to_be_returned` date DEFAULT NULL,
  `lbci_issuer_id` varchar(250) NOT NULL,
  `lbci_catalog_item_id` int(11) NOT NULL,
  `lbci_date_collected` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `lbci_return_resource_condition` tinyint(1) NOT NULL DEFAULT '1',
  `lbci_date_returned` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `lbci_returned` tinyint(1) NOT NULL DEFAULT '0',
  `lbci_offense` int(11) NOT NULL,
  `lbci_cleared` tinyint(1) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `library_catalogue_categories`
--

CREATE TABLE `library_catalogue_categories` (
  `lcc_id` int(3) NOT NULL,
  `lcc_title` varchar(200) CHARACTER SET latin1 NOT NULL,
  `lcc_enabled` tinyint(1) NOT NULL DEFAULT '1',
  `lcc_data_added` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `library_catalogue_categories`
--

INSERT INTO `library_catalogue_categories` (`lcc_id`, `lcc_title`, `lcc_enabled`, `lcc_data_added`) VALUES
(1, 'Books', 1, '2016-04-04 12:24:13'),
(6, 'Journals', 1, '2016-04-15 22:40:08'),
(7, 'Newspapers', 1, '2016-04-15 22:40:08'),
(8, 'Magazines', 1, '2016-04-15 22:40:25');

-- --------------------------------------------------------

--
-- Table structure for table `library_catalogue_format`
--

CREATE TABLE `library_catalogue_format` (
  `lcf_id` int(3) NOT NULL,
  `lcf_title` varchar(200) CHARACTER SET latin1 NOT NULL,
  `lcf_snapshot` varchar(50) CHARACTER SET latin1 NOT NULL,
  `lcf_enabled` tinyint(1) NOT NULL DEFAULT '1',
  `lcf_date_created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `library_catalogue_format`
--

INSERT INTO `library_catalogue_format` (`lcf_id`, `lcf_title`, `lcf_snapshot`, `lcf_enabled`, `lcf_date_created`) VALUES
(1, 'PDF', '', 1, '2016-04-15 16:06:45'),
(2, 'MP3', '', 1, '2016-04-15 16:06:45'),
(3, 'Video', '', 1, '2016-04-15 16:07:03'),
(4, 'Physical Doc', '', 1, '2016-04-15 16:07:03'),
(5, 'Microsoft Doc', '', 1, '2016-04-15 16:07:13');

-- --------------------------------------------------------

--
-- Table structure for table `library_catalog_item`
--

CREATE TABLE `library_catalog_item` (
  `lci_id` int(15) NOT NULL,
  `lci_title` varchar(200) NOT NULL,
  `lci_date_added` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `lci_library_id` int(4) NOT NULL,
  `lci_publisher` varchar(50) NOT NULL,
  `lci_year_published` int(6) NOT NULL,
  `lci_date_acquired` varchar(10) NOT NULL,
  `lci_subject_id` int(11) NOT NULL,
  `lci_note` text NOT NULL,
  `lci_is__active` tinyint(1) NOT NULL DEFAULT '1',
  `lci_description` text NOT NULL,
  `lci_author` varchar(60) NOT NULL,
  `lci_qty_remaining` tinyint(5) NOT NULL,
  `lci_snapshot` varchar(200) NOT NULL,
  `lci_callnumber` varchar(200) NOT NULL,
  `lci_category` tinyint(3) NOT NULL,
  `lci_downloadable` tinyint(1) NOT NULL DEFAULT '0',
  `lci_download_link` varchar(250) NOT NULL,
  `lci_qty_acquired` int(3) NOT NULL,
  `lci_isbn` varchar(30) NOT NULL,
  `lci_format` tinyint(3) NOT NULL,
  `lci_preliminary_page_no` varchar(10) NOT NULL,
  `lci_page_past_no` varchar(10) NOT NULL,
  `lci_place_of_publish` varchar(200) NOT NULL,
  `lci_edition` varchar(50) NOT NULL,
  `lci_accession` varchar(100) NOT NULL,
  `lci_source` varchar(100) NOT NULL,
  `lci_cost` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `library_catalog_item_authors`
--

CREATE TABLE `library_catalog_item_authors` (
  `lcia_title` varchar(50) NOT NULL,
  `lcia_date_added` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `lcia_catalog_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `library_catalog_item_source`
--

CREATE TABLE `library_catalog_item_source` (
  `lcis_id` int(3) NOT NULL,
  `lcis_title` varchar(250) NOT NULL,
  `lcis_description` text NOT NULL,
  `lcis_date_added` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `lcis_type` int(3) NOT NULL,
  `lcis_is_active` tinyint(1) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `library_catalog_item_source`
--

INSERT INTO `library_catalog_item_source` (`lcis_id`, `lcis_title`, `lcis_description`, `lcis_date_added`, `lcis_type`, `lcis_is_active`) VALUES
(1, 'Purchased', '', '2016-04-04 12:24:33', 0, 1),
(2, 'Federal Govt. Given', '', '2016-04-04 06:48:51', 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `library_catalog_item_subject`
--

CREATE TABLE `library_catalog_item_subject` (
  `lcis_id` int(3) NOT NULL,
  `lcis_title` varchar(250) NOT NULL,
  `lcis_description` text NOT NULL,
  `lcis_date_added` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `lcis_type` int(3) NOT NULL,
  `lcis_is_active` tinyint(1) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `library_catalog_item_subjects`
--

CREATE TABLE `library_catalog_item_subjects` (
  `lcis_title` varchar(100) NOT NULL,
  `lcis_date_added` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `lcis_catalog_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `library_external_libraries`
--

CREATE TABLE `library_external_libraries` (
  `lel_id` tinyint(3) NOT NULL,
  `lel_title` varchar(200) NOT NULL,
  `lel_searc_page` varchar(200) NOT NULL,
  `lel_enabled` tinyint(1) DEFAULT '1',
  `lel_homepage` varchar(200) NOT NULL,
  `lel_description` text NOT NULL,
  `lel_date_added` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `library_external_libraries`
--

INSERT INTO `library_external_libraries` (`lel_id`, `lel_title`, `lel_searc_page`, `lel_enabled`, `lel_homepage`, `lel_description`, `lel_date_added`) VALUES
(1, 'NUC VIRTUAL LIBRARY', 'http://www.nigerianvirtualibrary.com', 1, 'http://www.nigerianvirtualibrary.com', 'NUC VIRTUAL LIBRARY', '2015-08-10 23:21:09'),
(8, 'Google Scholars', 'https://scholar.google.com/scholar?hl=en&q=', 1, 'https://scholar.google.com/', 'Google Scholars', '2015-08-10 23:40:21'),
(11, 'MIT OPEN COURSEWARE', 'http://ocw.mit.edu/?q=', 1, 'http://ocw.mit.edu/', 'MIT OPEN COURSEWARE', '2015-08-10 23:57:20'),
(12, 'EBSCO', 'http://search.ebscohost.com/?q=', 1, 'http://search.epnet.com', 'EBSCO', '2015-08-13 22:33:33'),
(13, 'JSTOR', 'http://www.jstor.org/?q=', 1, 'http://www.jstor.org', 'JSTOR', '2015-08-13 22:34:38'),
(14, 'HINARI', 'http://www.oaresciences.org/?q=', 1, 'http://www.oaresciences.org', 'HINARI', '2015-08-13 22:35:31'),
(15, 'Science Direct', 'http://www.sciencedirect.com/?=', 1, 'http://www.sciencedirect.com', 'Science Direct', '2015-08-13 22:36:09'),
(17, 'Electronic Thesis/Dissertation ', 'http://www.thesis.patent-invent.com/?q=', 1, 'http://www.thesis.patent-invent.com/', 'Electronic Thesis/Dissertation ', '2015-08-13 22:38:10'),
(18, 'SAGE', 'http://online.sagepub.com//?=', 1, 'http://online.sagepub.com/', 'SAGE', '2015-08-13 22:38:52'),
(19, 'Ebrary', 'http://covenant.bravecontent.com/?q=', 1, 'http://covenant.bravecontent.com/', 'Ebrary', '2015-08-13 22:39:47'),
(20, 'Myilibrary', 'http://www.myilibrary.com/?q=', 1, 'http://www.myilibrary.com/', 'Myilibrary', '2015-08-13 22:40:23'),
(21, 'Scopus', 'http://www.scopus.com/?=', 1, 'http://www.myilibrary.com/', 'Scopus', '2015-08-13 22:40:50');

-- --------------------------------------------------------

--
-- Table structure for table `library_libraries`
--

CREATE TABLE `library_libraries` (
  `ll_id` int(5) NOT NULL,
  `ll_title` varchar(200) NOT NULL,
  `ll_description` text NOT NULL,
  `ll_location` varchar(200) NOT NULL,
  `ll_is_active` tinyint(1) NOT NULL DEFAULT '1',
  `ll_date_created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `ll_type` tinyint(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `library_libraries`
--

INSERT INTO `library_libraries` (`ll_id`, `ll_title`, `ll_description`, `ll_location`, `ll_is_active`, `ll_date_created`, `ll_type`) VALUES
(1, 'Main Library', 'Main School Library', 'University Library AUI', 1, '2015-12-02 12:12:22', 2);

-- --------------------------------------------------------

--
-- Table structure for table `library_news_events`
--

CREATE TABLE `library_news_events` (
  `lne_id` int(11) NOT NULL,
  `lne_subject` varchar(250) DEFAULT NULL,
  `lne_type` tinyint(1) NOT NULL DEFAULT '1',
  `lne_content` text,
  `lne_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `lne_show` tinyint(1) NOT NULL DEFAULT '0',
  `lne_user` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `library_offenders`
--

CREATE TABLE `library_offenders` (
  `lo_id` int(12) NOT NULL,
  `lo_offence_id` tinyint(5) NOT NULL,
  `lo_date_added` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `lo_user_id` varchar(250) NOT NULL,
  `lo_note` text NOT NULL,
  `lo_user_type` tinyint(1) NOT NULL,
  `lo_offence_cleared` tinyint(4) NOT NULL DEFAULT '0',
  `lo_cleared_by` int(11) NOT NULL COMMENT 'staff the cleared the issue if any',
  `lo_date_commited` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `library_offense_fine_types`
--

CREATE TABLE `library_offense_fine_types` (
  `loft_id` int(5) NOT NULL,
  `loft_title` varchar(250) NOT NULL,
  `loft_description` text NOT NULL,
  `loft_fee` varchar(500) NOT NULL,
  `loft_is_active` tinyint(1) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `library_offense_fine_types`
--

INSERT INTO `library_offense_fine_types` (`loft_id`, `loft_title`, `loft_description`, `loft_fee`, `loft_is_active`) VALUES
(1, 'Delayed Return', 'Amount to be paid for violation', '2000', 1),
(2, 'Item Damaged', 'Item Damaged', '2000', 1);

-- --------------------------------------------------------

--
-- Table structure for table `library_recomended_resources`
--

CREATE TABLE `library_recomended_resources` (
  `lrr_id` int(11) NOT NULL,
  `lrr_title` varchar(200) NOT NULL,
  `lrr_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `lrr_recomended_by` varchar(250) NOT NULL,
  `lrr_attended_to_by` varchar(250) NOT NULL,
  `lrr_date_attended_to` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `lrr_admin_note` text NOT NULL,
  `lrr_recomender_note` text NOT NULL,
  `lrr_status` tinyint(1) NOT NULL DEFAULT '1',
  `lrr_isbn` varchar(100) NOT NULL,
  `lrr_author` varchar(250) NOT NULL,
  `lrr_release_year` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `library_system_config`
--

CREATE TABLE `library_system_config` (
  `lsc_key` varchar(50) NOT NULL,
  `lsc_value` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `library_system_config`
--

INSERT INTO `library_system_config` (`lsc_key`, `lsc_value`) VALUES
('system.title', 'Modern elibrary'),
('system.address', 'No Address\r\n');

-- --------------------------------------------------------

--
-- Table structure for table `library_users`
--

CREATE TABLE `library_users` (
  `lu_id` int(11) NOT NULL,
  `lu_full_name` varchar(200) NOT NULL,
  `lu_email` varchar(50) NOT NULL,
  `lu_pwd` varchar(50) NOT NULL,
  `lu_acc_type` tinyint(1) NOT NULL DEFAULT '1',
  `lu_acc_status` tinyint(1) NOT NULL DEFAULT '1',
  `lu_reg_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `lu_phn` varchar(20) NOT NULL,
  `passport` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `library_users`
--

INSERT INTO `library_users` (`lu_id`, `lu_full_name`, `lu_email`, `lu_pwd`, `lu_acc_type`, `lu_acc_status`, `lu_reg_date`, `lu_phn`, `passport`) VALUES
(1, 'Admin User', 'admin@admin.com', '21232f297a57a5a743894a0e4a801fc3', 3, 1, '2016-04-19 23:00:00', '23500000000', 'passport.png'),
(2, 'user', 'user@user.com', '5f4dcc3b5aa765d61d8327deb882cf99', 1, 1, '2017-10-24 04:58:32', '888888888', ''),
(3, 'varun', 'varun7king@gmail.com', 'f6fdffe48c908deb0f4c3bd36c032e72', 1, 1, '0000-00-00 00:00:00', '8886770357', 'passport.png');

-- --------------------------------------------------------

--
-- Table structure for table `library_user_favourite_list`
--

CREATE TABLE `library_user_favourite_list` (
  `lufl_id` int(22) NOT NULL,
  `lufl_title` varchar(200) NOT NULL,
  `lufl_user_id` varchar(250) NOT NULL,
  `lufl_user_type` tinyint(1) NOT NULL,
  `lufl_date_added` datetime DEFAULT NULL,
  `lufl_hidden` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `library_user_favourite_list_items`
--

CREATE TABLE `library_user_favourite_list_items` (
  `lufli_id` int(11) NOT NULL,
  `lufli_item` int(11) NOT NULL,
  `lufli_bag_id` int(11) NOT NULL,
  `lufli_is_deleted` tinyint(1) NOT NULL,
  `lufli_user_id` varchar(250) NOT NULL,
  `lufli_date_added` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `library_user_message`
--

CREATE TABLE `library_user_message` (
  `lur_id` int(11) NOT NULL,
  `lur_sender_id` varchar(250) NOT NULL,
  `lur_reciever_id` varchar(250) NOT NULL,
  `lur_msg` text NOT NULL,
  `lur_reciever_deleted` tinyint(1) NOT NULL DEFAULT '0',
  `lur_sender_deleted` tinyint(1) NOT NULL DEFAULT '0',
  `lur_date_sent` timestamp NULL DEFAULT NULL,
  `lur_msg_read` tinyint(1) NOT NULL DEFAULT '0',
  `lur_msg_subject` varchar(255) NOT NULL,
  `lur_msg_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `lur_has_attachement` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `library_user_saved_search`
--

CREATE TABLE `library_user_saved_search` (
  `luss_id` int(11) NOT NULL,
  `luss_query` varchar(200) NOT NULL,
  `luss_date_added` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `luss_user` int(11) NOT NULL,
  `luss_search_type` varchar(20) NOT NULL,
  `luss_link` text NOT NULL,
  `luss_last_search` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `luss_no_of_visits` int(5) NOT NULL,
  `luss_seachable_link` int(200) NOT NULL,
  `luss_keyword` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `library_user_upload`
--

CREATE TABLE `library_user_upload` (
  `luu_id` int(11) NOT NULL,
  `luu_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `luu_location` varchar(200) NOT NULL,
  `luu_mime` varchar(20) NOT NULL,
  `luu_user_id` varchar(250) NOT NULL,
  `luu_title` varchar(200) NOT NULL,
  `luu_description` text NOT NULL,
  `luu_is_hidden` tinyint(1) NOT NULL DEFAULT '0',
  `luu_size` int(5) NOT NULL,
  `luu_ext` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `ci_sessions`
--
ALTER TABLE `ci_sessions`
  ADD PRIMARY KEY (`session_id`),
  ADD KEY `last_activity_idx` (`last_activity`);

--
-- Indexes for table `library_book_reservation`
--
ALTER TABLE `library_book_reservation`
  ADD PRIMARY KEY (`lbr_id`);

--
-- Indexes for table `library_borrowed_catalog_item`
--
ALTER TABLE `library_borrowed_catalog_item`
  ADD PRIMARY KEY (`lbci_id`);

--
-- Indexes for table `library_catalogue_categories`
--
ALTER TABLE `library_catalogue_categories`
  ADD PRIMARY KEY (`lcc_id`);

--
-- Indexes for table `library_catalogue_format`
--
ALTER TABLE `library_catalogue_format`
  ADD PRIMARY KEY (`lcf_id`);

--
-- Indexes for table `library_catalog_item`
--
ALTER TABLE `library_catalog_item`
  ADD PRIMARY KEY (`lci_id`);

--
-- Indexes for table `library_catalog_item_source`
--
ALTER TABLE `library_catalog_item_source`
  ADD PRIMARY KEY (`lcis_id`),
  ADD UNIQUE KEY `lcis_title` (`lcis_title`);

--
-- Indexes for table `library_catalog_item_subject`
--
ALTER TABLE `library_catalog_item_subject`
  ADD PRIMARY KEY (`lcis_id`),
  ADD UNIQUE KEY `lcis_title` (`lcis_title`);

--
-- Indexes for table `library_external_libraries`
--
ALTER TABLE `library_external_libraries`
  ADD PRIMARY KEY (`lel_id`);

--
-- Indexes for table `library_libraries`
--
ALTER TABLE `library_libraries`
  ADD PRIMARY KEY (`ll_id`);

--
-- Indexes for table `library_news_events`
--
ALTER TABLE `library_news_events`
  ADD PRIMARY KEY (`lne_id`);

--
-- Indexes for table `library_offenders`
--
ALTER TABLE `library_offenders`
  ADD PRIMARY KEY (`lo_id`);

--
-- Indexes for table `library_offense_fine_types`
--
ALTER TABLE `library_offense_fine_types`
  ADD PRIMARY KEY (`loft_id`),
  ADD UNIQUE KEY `loft_title` (`loft_title`);

--
-- Indexes for table `library_recomended_resources`
--
ALTER TABLE `library_recomended_resources`
  ADD PRIMARY KEY (`lrr_id`);

--
-- Indexes for table `library_users`
--
ALTER TABLE `library_users`
  ADD PRIMARY KEY (`lu_id`);

--
-- Indexes for table `library_user_favourite_list`
--
ALTER TABLE `library_user_favourite_list`
  ADD PRIMARY KEY (`lufl_id`);

--
-- Indexes for table `library_user_favourite_list_items`
--
ALTER TABLE `library_user_favourite_list_items`
  ADD PRIMARY KEY (`lufli_id`);

--
-- Indexes for table `library_user_message`
--
ALTER TABLE `library_user_message`
  ADD PRIMARY KEY (`lur_id`),
  ADD KEY `lur_id` (`lur_id`);

--
-- Indexes for table `library_user_saved_search`
--
ALTER TABLE `library_user_saved_search`
  ADD PRIMARY KEY (`luss_id`);

--
-- Indexes for table `library_user_upload`
--
ALTER TABLE `library_user_upload`
  ADD PRIMARY KEY (`luu_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `library_book_reservation`
--
ALTER TABLE `library_book_reservation`
  MODIFY `lbr_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `library_borrowed_catalog_item`
--
ALTER TABLE `library_borrowed_catalog_item`
  MODIFY `lbci_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `library_catalogue_categories`
--
ALTER TABLE `library_catalogue_categories`
  MODIFY `lcc_id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `library_catalogue_format`
--
ALTER TABLE `library_catalogue_format`
  MODIFY `lcf_id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `library_catalog_item`
--
ALTER TABLE `library_catalog_item`
  MODIFY `lci_id` int(15) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `library_catalog_item_source`
--
ALTER TABLE `library_catalog_item_source`
  MODIFY `lcis_id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `library_catalog_item_subject`
--
ALTER TABLE `library_catalog_item_subject`
  MODIFY `lcis_id` int(3) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `library_external_libraries`
--
ALTER TABLE `library_external_libraries`
  MODIFY `lel_id` tinyint(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;
--
-- AUTO_INCREMENT for table `library_libraries`
--
ALTER TABLE `library_libraries`
  MODIFY `ll_id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `library_news_events`
--
ALTER TABLE `library_news_events`
  MODIFY `lne_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `library_offenders`
--
ALTER TABLE `library_offenders`
  MODIFY `lo_id` int(12) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `library_offense_fine_types`
--
ALTER TABLE `library_offense_fine_types`
  MODIFY `loft_id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `library_recomended_resources`
--
ALTER TABLE `library_recomended_resources`
  MODIFY `lrr_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `library_users`
--
ALTER TABLE `library_users`
  MODIFY `lu_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `library_user_favourite_list`
--
ALTER TABLE `library_user_favourite_list`
  MODIFY `lufl_id` int(22) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `library_user_favourite_list_items`
--
ALTER TABLE `library_user_favourite_list_items`
  MODIFY `lufli_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `library_user_message`
--
ALTER TABLE `library_user_message`
  MODIFY `lur_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `library_user_saved_search`
--
ALTER TABLE `library_user_saved_search`
  MODIFY `luss_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `library_user_upload`
--
ALTER TABLE `library_user_upload`
  MODIFY `luu_id` int(11) NOT NULL AUTO_INCREMENT;COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
