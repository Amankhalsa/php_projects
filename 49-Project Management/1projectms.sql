-- phpMyAdmin SQL Dump
-- version 4.7.3
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Dec 30, 2017 at 02:53 PM
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
-- Database: `tammanag_projectms`
--

-- --------------------------------------------------------

--
-- Table structure for table `bugs`
--

CREATE TABLE `bugs` (
  `bugs_id` int(11) NOT NULL,
  `bugs_project_id` int(11) NOT NULL,
  `bugs_client_id` int(11) NOT NULL,
  `bugs_title` varchar(250) NOT NULL,
  `bugs_description` text NOT NULL,
  `bugs_reported_by_id` int(11) NOT NULL,
  `bugs_date` datetime NOT NULL,
  `bugs_status` varchar(20) NOT NULL DEFAULT 'new-bug' COMMENT 'new-bug/resolved/not-a-bug/in-progress',
  `bugs_comment` text NOT NULL,
  `bugs_resolved_by_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `ci_sessions`
--

CREATE TABLE `ci_sessions` (
  `session_id` varchar(40) COLLATE utf8_bin NOT NULL DEFAULT '0' COMMENT 'This Table: Has no default data',
  `ip_address` varchar(45) COLLATE utf8_bin NOT NULL DEFAULT '0',
  `user_agent` varchar(120) COLLATE utf8_bin NOT NULL,
  `last_activity` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `user_data` text COLLATE utf8_bin NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `ci_sessions`
--

INSERT INTO `ci_sessions` (`session_id`, `ip_address`, `user_agent`, `last_activity`, `user_data`) VALUES
('b5dd4a3700cf1b9ebc94bc5b131533e7', '157.55.39.101', 'Mozilla/5.0 (compatible; bingbot/2.0; +http://www.bing.com/bingbot.htm)', 1514547705, ''),
('f4df4e91b9c5b9f0dfe52252f90b698c', '159.203.103.62', 'Mozilla/5.0 (compatible; DnyzBot/1.0)', 1514570218, ''),
('b7e79a05a0e8f9a994205ea672eb6f57', '139.162.49.196', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.84 Safari/537.36', 1514487686, ''),
('6af8827395b22b1ebb3cb537aa3505cf', '157.55.39.101', 'Mozilla/5.0 (compatible; bingbot/2.0; +http://www.bing.com/bingbot.htm)', 1514547703, ''),
('2d3cb75ab9bace1c16713e33cf62a649', '157.55.39.101', 'Mozilla/5.0 (compatible; bingbot/2.0; +http://www.bing.com/bingbot.htm)', 1514547704, '');

-- --------------------------------------------------------

--
-- Table structure for table `clients`
--

CREATE TABLE `clients` (
  `clients_id` int(11) NOT NULL COMMENT 'This Table: Has no default data',
  `clients_date_created` date NOT NULL,
  `clients_company_name` varchar(150) NOT NULL,
  `clients_address` varchar(100) DEFAULT NULL,
  `clients_city` varchar(50) DEFAULT NULL,
  `clients_state` varchar(50) DEFAULT NULL,
  `clients_zipcode` varchar(50) DEFAULT NULL,
  `clients_country` varchar(50) DEFAULT NULL,
  `clients_website` varchar(50) DEFAULT NULL,
  `clients_optionalfield1` text,
  `clients_optionalfield2` text,
  `clients_optionalfield3` text,
  `client_unique_code` varchar(20) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `clients`
--

INSERT INTO `clients` (`clients_id`, `clients_date_created`, `clients_company_name`, `clients_address`, `clients_city`, `clients_state`, `clients_zipcode`, `clients_country`, `clients_website`, `clients_optionalfield1`, `clients_optionalfield2`, `clients_optionalfield3`, `client_unique_code`) VALUES
(3, '2017-10-23', 'Abc', 'Sasdada', 'New Delhi', 'New Delhi', '110001', 'India', 'abc.com', '', '', '', 'CKCPydxFKBCVXasfjkNV'),
(4, '2017-10-23', 'Bbc', 'Abs', 'Nd', 'Nd', '2222222', 'Sdn', 'sds.com', '', '', '', 'dUihZj0hetyykeqNlrAF'),
(2, '2017-10-22', 'Hackmeifyoucan', 'Hackmeifyoucan', 'Hackmeifyoucan', 'Hackmeifyoucan', 'HackMeIfYouCan', 'Hackmeifyoucan', 'HackMeIfYouCan', '', '', '', 'RM4rcsJEgT6cn7ki8brC'),
(6, '2017-12-01', 'Ghc', 'Hgfth', 'Hgfc', 'Hgtfhgh', '656565', 'Tyfr', 'fytg', '', '', '', 'Qd3d32qoFUyJVyszv7aM'),
(7, '2017-12-01', 'Iuh', 'Hg', 'Jhg', 'Hjgfy', '777777', 'Gyugyu', 'hgh', '', '', '', 'WiQS5nqQmOIt5qrHrW6L'),
(8, '2017-12-07', 'Sspower', '123', 'Tdthd', 'Frsgrfs', '620057', 'India', 'www.exc.com', '', '', '', 'rpkVKVGK1wEFOSIbWCtx'),
(9, '2017-12-08', 'Abcd1', 'Asdasd,dasd,adasd', 'Ads', 'Jjnh', '8787', 'Hjhj', 'jhjhk.com', '', '', '', 'sbGhqb55oyccxtWe7iNe');

-- --------------------------------------------------------

--
-- Table structure for table `clients_optionalfields`
--

CREATE TABLE `clients_optionalfields` (
  `clients_optionalfield_name` varchar(100) DEFAULT NULL COMMENT 'This table has 3 default rows',
  `clients_optionalfield_title` varchar(50) DEFAULT NULL,
  `clients_optionalfield_status` varchar(10) DEFAULT NULL,
  `clients_optionalfield_require` varchar(10) DEFAULT 'no' COMMENT 'yes/no'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `clients_optionalfields`
--

INSERT INTO `clients_optionalfields` (`clients_optionalfield_name`, `clients_optionalfield_title`, `clients_optionalfield_status`, `clients_optionalfield_require`) VALUES
('clients_optionalfield1', 'Sample Text', 'disabled', 'no'),
('clients_optionalfield2', 'Sample Text', 'disabled', 'no'),
('clients_optionalfield3', 'Sample Text', 'disabled', 'no');

-- --------------------------------------------------------

--
-- Table structure for table `client_users`
--

CREATE TABLE `client_users` (
  `client_users_id` int(11) NOT NULL COMMENT 'This Table: Has no default data',
  `client_users_clients_id` int(11) NOT NULL,
  `client_users_uniqueid` varchar(20) DEFAULT NULL,
  `client_users_avatar_filename` varchar(150) DEFAULT NULL,
  `client_users_full_name` varchar(75) NOT NULL,
  `client_users_job_position_title` varchar(50) DEFAULT NULL,
  `client_users_email` varchar(75) NOT NULL,
  `client_users_password` varchar(50) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT 'case sensitive utf8_bin',
  `client_users_telephone` varchar(50) DEFAULT NULL,
  `client_users_main_contact` varchar(5) NOT NULL DEFAULT 'no' COMMENT 'yes/no',
  `client_users_reset_code` varchar(50) DEFAULT NULL,
  `client_users_reset_timestamp` datetime DEFAULT NULL,
  `client_users_last_active` datetime DEFAULT NULL,
  `client_users_file_added` varchar(5) DEFAULT 'yes',
  `client_users_milestone_added` varchar(5) DEFAULT 'yes',
  `client_users_milestone_completed` varchar(5) DEFAULT 'yes',
  `client_users_message_added` varchar(5) DEFAULT 'yes',
  `client_users_file_message_added` varchar(5) DEFAULT 'yes',
  `client_users_invoice_added` varchar(5) DEFAULT 'yes',
  `client_notifications_system` varchar(5) DEFAULT 'yes'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `client_users`
--

INSERT INTO `client_users` (`client_users_id`, `client_users_clients_id`, `client_users_uniqueid`, `client_users_avatar_filename`, `client_users_full_name`, `client_users_job_position_title`, `client_users_email`, `client_users_password`, `client_users_telephone`, `client_users_main_contact`, `client_users_reset_code`, `client_users_reset_timestamp`, `client_users_last_active`, `client_users_file_added`, `client_users_milestone_added`, `client_users_milestone_completed`, `client_users_message_added`, `client_users_file_message_added`, `client_users_invoice_added`, `client_notifications_system`) VALUES
(3, 3, 'SbX6SZyD0kkkvt2R3ZcM', NULL, 'Mr. Abcdef', 'Ceo', 'abc@gmail.com', '9f6a3ef13b60b303099fe40335c8f106', '0909090909', 'yes', NULL, NULL, NULL, 'yes', 'yes', 'yes', 'yes', 'yes', 'yes', 'yes'),
(2, 2, 'BXlYX0HuYjZnsTWmg7jY', NULL, 'Hackmeifyoucan', 'Hackmeifyoucan', 'HackMeIfYouCan@hotmail.com', '6ce6904493a2fea346690f2b3bfb7daa', 'HackMeIfYouCan', 'yes', NULL, NULL, NULL, 'yes', 'yes', 'yes', 'yes', 'yes', 'yes', 'yes'),
(4, 4, 'moxyHGTmp4u5xUV3mYza', NULL, 'Cbsds', 'Bhb', 'BBC@GMAIL.COM', '9f6a3ef13b60b303099fe40335c8f106', 'HBHBBH', 'yes', NULL, NULL, NULL, 'yes', 'yes', 'yes', 'yes', 'yes', 'yes', 'yes'),
(6, 6, 'WZLRe1ZjxFpavnc5280d', NULL, 'Client', 'Jhgbh', 'client@client.com', 'a3e49089bae3ffe250cedbbe9b02cd5b', '7777777777', 'yes', NULL, NULL, '2017-12-01 10:09:45', 'yes', 'yes', 'yes', 'yes', 'yes', 'yes', 'yes'),
(7, 7, 'ESLSjJ146EpizP01hic4', NULL, 'Client', '', 'bkhgjg@nfng.com', 'fa51a9998f7008d8c670e86f2db9c9bf', '8888888888', 'yes', NULL, NULL, NULL, 'yes', 'yes', 'yes', 'yes', 'yes', 'yes', 'yes'),
(8, 8, 'JokP39hKPAhWL8D8nEKu', NULL, 'Ss', 'Web Site Development', 'bb@bbb.com', '25d55ad283aa400af464c76d713c07ad', '1234567891', 'yes', NULL, NULL, NULL, 'yes', 'yes', 'yes', 'yes', 'yes', 'yes', 'yes'),
(9, 9, 'RyWwRowPAS8PzFRiAUGl', NULL, 'User', 'Hjbsc', 'user@demo.com', '25f9e794323b453885f5181f1b624d0b', '6666666666', 'yes', NULL, NULL, '2017-12-15 17:47:30', 'yes', 'yes', 'yes', 'yes', 'yes', 'yes', 'yes');

-- --------------------------------------------------------

--
-- Table structure for table `cronjobs`
--

CREATE TABLE `cronjobs` (
  `cronjobs_id` varchar(100) NOT NULL,
  `cronjobs_last_run` datetime DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `cronjobs`
--

INSERT INTO `cronjobs` (`cronjobs_id`, `cronjobs_last_run`) VALUES
('default', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `email_queue`
--

CREATE TABLE `email_queue` (
  `email_queue_id` int(11) NOT NULL,
  `email_queue_email` varchar(100) NOT NULL,
  `email_queue_subject` varchar(250) NOT NULL,
  `email_queue_message` text NOT NULL,
  `email_queue_date` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `filedownloads`
--

CREATE TABLE `filedownloads` (
  `filedownloads_id` int(11) NOT NULL,
  `filedownloads_project_id` int(11) NOT NULL,
  `filedownloads_client_id` int(11) NOT NULL,
  `filedownloads_file_id` int(11) NOT NULL,
  `filedownloads_date` datetime NOT NULL,
  `filedownloads_user_type` varchar(10) NOT NULL COMMENT 'client/team',
  `filedownloads_user_id` int(11) NOT NULL COMMENT 'id of client user/team member'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `filedownloads`
--

INSERT INTO `filedownloads` (`filedownloads_id`, `filedownloads_project_id`, `filedownloads_client_id`, `filedownloads_file_id`, `filedownloads_date`, `filedownloads_user_type`, `filedownloads_user_id`) VALUES
(1, 3, 3, 1, '2017-10-23 06:03:28', 'team', 0);

-- --------------------------------------------------------

--
-- Table structure for table `files`
--

CREATE TABLE `files` (
  `files_id` int(11) NOT NULL,
  `files_project_id` int(11) NOT NULL,
  `files_client_id` int(11) NOT NULL,
  `files_uploaded_by` varchar(10) NOT NULL COMMENT 'client/team',
  `files_uploaded_by_id` int(11) NOT NULL,
  `files_name` varchar(250) NOT NULL,
  `files_description` text NOT NULL,
  `files_size` int(11) NOT NULL,
  `files_size_human` varchar(20) NOT NULL,
  `files_date_uploaded` date NOT NULL,
  `files_time_uploaded` time NOT NULL,
  `files_foldername` varchar(50) NOT NULL,
  `files_extension` varchar(50) NOT NULL,
  `files_events_id` varchar(50) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `files`
--

INSERT INTO `files` (`files_id`, `files_project_id`, `files_client_id`, `files_uploaded_by`, `files_uploaded_by_id`, `files_name`, `files_description`, `files_size`, `files_size_human`, `files_date_uploaded`, `files_time_uploaded`, `files_foldername`, `files_extension`, `files_events_id`) VALUES
(1, 3, 3, 'team', 1, 'will-reagan-united-pursuit-bless-the-lord-we-have-come-continued.mp3', 'file_abc_1', 6076289, '5.79 MB', '2017-10-23', '06:03:23', 'AOkZ8a05Z2vW9K8L2vVI', 'mp3', '2q8QVwk8leSOiN5ZZCo7mt8bPY35XDf9ChFZmLXw');

-- --------------------------------------------------------

--
-- Table structure for table `file_comments`
--

CREATE TABLE `file_comments` (
  `file_comments_id` int(11) NOT NULL,
  `file_comments_file_id` int(11) NOT NULL,
  `file_comments_project_id` int(11) NOT NULL,
  `file_comments_client_id` int(11) NOT NULL,
  `file_comments_text` text NOT NULL,
  `file_comments_date` datetime NOT NULL,
  `file_comments_by` varchar(10) NOT NULL COMMENT 'team/client',
  `file_comments_by_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `file_messages`
--

CREATE TABLE `file_messages` (
  `messages_id` int(11) NOT NULL,
  `messages_project_id` int(11) NOT NULL,
  `messages_file_id` int(11) NOT NULL,
  `messages_date` datetime NOT NULL,
  `messages_text` text NOT NULL,
  `messages_by_id` int(11) NOT NULL,
  `messages_by` varchar(20) NOT NULL COMMENT 'client/team'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `file_messages`
--

INSERT INTO `file_messages` (`messages_id`, `messages_project_id`, `messages_file_id`, `messages_date`, `messages_text`, `messages_by_id`, `messages_by`) VALUES
(1, 3, 1, '2017-11-21 12:23:13', 'Happy', 1, 'team');

-- --------------------------------------------------------

--
-- Table structure for table `file_messages_replies`
--

CREATE TABLE `file_messages_replies` (
  `messages_replies_id` int(11) NOT NULL,
  `messages_replies_message_id` int(11) NOT NULL,
  `messages_replies_date` datetime NOT NULL,
  `messages_replies_text` text NOT NULL,
  `messages_replies_by_id` int(11) NOT NULL,
  `messages_replies_by` varchar(20) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `groups`
--

CREATE TABLE `groups` (
  `groups_id` int(11) NOT NULL COMMENT 'This table: Has 1 default row for admin group. Group ID must be [1] & Group Name must be [Administrator]',
  `groups_name` varchar(250) NOT NULL,
  `my_project_details` tinyint(4) NOT NULL DEFAULT '1',
  `my_project_files` tinyint(4) NOT NULL DEFAULT '1',
  `my_project_milestones` tinyint(4) NOT NULL DEFAULT '1',
  `my_project_my_tasks` tinyint(4) NOT NULL DEFAULT '1',
  `my_project_others_tasks` tinyint(4) NOT NULL DEFAULT '1',
  `my_project_messages` tinyint(4) NOT NULL DEFAULT '1',
  `my_project_team_messages` tinyint(4) NOT NULL DEFAULT '1',
  `my_project_invoices` tinyint(4) NOT NULL DEFAULT '1',
  `bugs` tinyint(4) NOT NULL DEFAULT '1',
  `clients` tinyint(4) NOT NULL DEFAULT '1',
  `tickets` tinyint(4) NOT NULL DEFAULT '1',
  `quotations` tinyint(4) NOT NULL DEFAULT '1',
  `groups_allow_delete` tinyint(1) NOT NULL DEFAULT '1',
  `groups_allow_edit` tinyint(1) NOT NULL DEFAULT '1',
  `groups_allow_migrate` tinyint(1) NOT NULL DEFAULT '1',
  `groups_allow_change_permissions` tinyint(1) NOT NULL DEFAULT '1',
  `groups_allow_zero_members` tinyint(1) NOT NULL DEFAULT '1'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `groups`
--

INSERT INTO `groups` (`groups_id`, `groups_name`, `my_project_details`, `my_project_files`, `my_project_milestones`, `my_project_my_tasks`, `my_project_others_tasks`, `my_project_messages`, `my_project_team_messages`, `my_project_invoices`, `bugs`, `clients`, `tickets`, `quotations`, `groups_allow_delete`, `groups_allow_edit`, `groups_allow_migrate`, `groups_allow_change_permissions`, `groups_allow_zero_members`) VALUES
(1, 'Administrator', 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 0, 0, 0, 0, 0),
(4, 'user', 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1),
(5, 'AD USER', 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1),
(6, 'iuio', 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `invoices`
--

CREATE TABLE `invoices` (
  `invoices_id` int(11) NOT NULL,
  `invoices_custom_id` varchar(150) DEFAULT NULL,
  `invoices_unique_id` varchar(75) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `invoices_project_id` int(11) NOT NULL,
  `invoices_clients_id` int(11) NOT NULL,
  `invoices_pretax_amount` decimal(10,2) NOT NULL DEFAULT '0.00',
  `invoices_tax_amount` decimal(10,2) NOT NULL DEFAULT '0.00',
  `invoices_amount` decimal(10,2) DEFAULT '0.00',
  `invoices_tax_rate` decimal(10,2) DEFAULT '0.00',
  `invoices_date` date NOT NULL,
  `invoices_due_date` date NOT NULL,
  `invoices_status` varchar(30) NOT NULL DEFAULT 'due' COMMENT 'new/paid/due/partpaid/overdue [new is the status of an unpublished/unsent invoice]',
  `invoices_notes` varchar(250) DEFAULT NULL,
  `invoices_created_by_id` int(11) DEFAULT NULL,
  `invoices_times_emailed` int(11) DEFAULT '0',
  `invoices_last_emailed` date DEFAULT NULL,
  `invoices_events_id` varchar(40) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `invoice_items`
--

CREATE TABLE `invoice_items` (
  `invoice_items_id` int(11) NOT NULL,
  `invoice_items_date_added` date NOT NULL,
  `invoice_items_title` varchar(250) NOT NULL,
  `invoice_items_description` varchar(250) DEFAULT NULL,
  `invoice_items_amount` decimal(10,2) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `invoice_items`
--

INSERT INTO `invoice_items` (`invoice_items_id`, `invoice_items_date_added`, `invoice_items_title`, `invoice_items_description`, `invoice_items_amount`) VALUES
(1, '2017-10-23', 'web dev', '1 web', '40.00');

-- --------------------------------------------------------

--
-- Table structure for table `invoice_products`
--

CREATE TABLE `invoice_products` (
  `invoice_products_id` int(11) NOT NULL,
  `invoice_products_project_id` int(11) NOT NULL,
  `invoice_products_invoice_id` int(11) NOT NULL,
  `invoice_products_title` varchar(250) NOT NULL,
  `invoice_products_description` varchar(250) NOT NULL,
  `invoice_products_quantity` int(11) NOT NULL,
  `invoice_products_rate` decimal(10,2) NOT NULL,
  `invoice_products_total` decimal(10,2) NOT NULL DEFAULT '0.00'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `messages`
--

CREATE TABLE `messages` (
  `messages_id` int(11) NOT NULL,
  `messages_project_id` int(11) NOT NULL,
  `messages_date` datetime NOT NULL,
  `messages_text` text NOT NULL,
  `messages_by` varchar(15) NOT NULL COMMENT 'client/team',
  `messages_by_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `messages_replies`
--

CREATE TABLE `messages_replies` (
  `messages_replies_id` int(11) NOT NULL,
  `messages_replies_project_id` int(11) NOT NULL,
  `messages_replies_message_id` int(11) NOT NULL,
  `messages_replies_date` datetime NOT NULL,
  `messages_replies_text` text NOT NULL,
  `messages_replies_by` varchar(15) NOT NULL COMMENT 'client/team',
  `messages_replies_by_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `milestones`
--

CREATE TABLE `milestones` (
  `milestones_id` int(11) NOT NULL,
  `milestones_project_id` int(11) NOT NULL,
  `milestones_client_id` int(11) NOT NULL,
  `milestones_title` varchar(250) NOT NULL,
  `milestones_start_date` date NOT NULL,
  `milestones_end_date` date NOT NULL,
  `milestones_created_by` int(11) NOT NULL,
  `milestones_status` varchar(50) NOT NULL DEFAULT 'pending' COMMENT 'pending/completed/behind schedule',
  `milestones_events_id` varchar(40) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `milestones`
--

INSERT INTO `milestones` (`milestones_id`, `milestones_project_id`, `milestones_client_id`, `milestones_title`, `milestones_start_date`, `milestones_end_date`, `milestones_created_by`, `milestones_status`, `milestones_events_id`) VALUES
(1, 4, 4, 'Reskinning', '2017-11-03', '2017-11-05', 1, 'behind schedule', 'loU1zG8QKIhEUoczSbs6PMaklrGzaKmqyLPmxJjJ'),
(2, 4, 4, 'Deployment', '2017-11-01', '2017-11-08', 1, 'behind schedule', 'P7X0bkQzQl9xABOcYlATtKbBFeOohp2mBOEjX45h'),
(3, 4, 4, 'Bug Fixing', '2017-11-08', '2017-11-10', 1, 'behind schedule', 'Wo21Mhi4TGklPfeNZtNea62Vl2nWMzSR8RT9Fjdh'),
(4, 5, 8, 'Banner', '2017-12-07', '2017-12-08', 1, 'completed', 'PcXGREvrTRVLE4SZPnrsti4zvcbrkxPumuDmcKfV');

-- --------------------------------------------------------

--
-- Table structure for table `mynotes`
--

CREATE TABLE `mynotes` (
  `mynotes_id` int(11) NOT NULL,
  `mynotes_project_id` int(11) NOT NULL,
  `mynotes_team_id` int(11) NOT NULL,
  `mynotes_last_edited` datetime NOT NULL,
  `mynotes_text` text
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `mynotes`
--

INSERT INTO `mynotes` (`mynotes_id`, `mynotes_project_id`, `mynotes_team_id`, `mynotes_last_edited`, `mynotes_text`) VALUES
(1, 4, 1, '0000-00-00 00:00:00', NULL),
(2, 5, 3, '0000-00-00 00:00:00', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `online_status`
--

CREATE TABLE `online_status` (
  `online_status_id` int(11) NOT NULL COMMENT 'This Table: Has no default data',
  `online_status_userid` int(11) NOT NULL,
  `online_status_usertype` int(11) NOT NULL,
  `online_status_last_seen` time DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `payments`
--

CREATE TABLE `payments` (
  `payments_id` int(11) NOT NULL,
  `payments_invoice_id` int(11) NOT NULL,
  `payments_project_id` int(11) NOT NULL,
  `payments_client_id` int(11) NOT NULL,
  `payments_amount` decimal(10,2) NOT NULL,
  `payments_currency_code` varchar(25) NOT NULL,
  `payments_transaction_id` varchar(100) DEFAULT NULL,
  `payments_transaction_status` varchar(50) DEFAULT NULL,
  `payments_date` datetime NOT NULL,
  `payments_method` varchar(50) NOT NULL,
  `payments_notes` text
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `permissions`
--

CREATE TABLE `permissions` (
  `level` tinyint(4) DEFAULT NULL,
  `view_item` varchar(3) NOT NULL DEFAULT 'no',
  `add_item` varchar(3) NOT NULL DEFAULT 'no',
  `edit_item` varchar(3) NOT NULL DEFAULT 'no',
  `delete_item` varchar(3) NOT NULL DEFAULT 'no'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `permissions`
--

INSERT INTO `permissions` (`level`, `view_item`, `add_item`, `edit_item`, `delete_item`) VALUES
(0, 'no', 'no', 'no', 'no'),
(1, 'yes', 'no', 'no', 'no'),
(2, 'yes', 'yes', 'no', 'no'),
(3, 'yes', 'yes', 'yes', 'no'),
(4, 'yes', 'yes', 'yes', 'yes');

-- --------------------------------------------------------

--
-- Table structure for table `projects`
--

CREATE TABLE `projects` (
  `projects_id` int(11) NOT NULL,
  `projects_date_created` date NOT NULL,
  `project_deadline` date DEFAULT NULL,
  `projects_date_completed` date DEFAULT NULL,
  `projects_clients_id` int(11) NOT NULL,
  `projects_team_lead_id` int(11) DEFAULT NULL,
  `projects_title` varchar(250) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `projects_description` text CHARACTER SET utf8 COLLATE utf8_bin,
  `projects_last_activity` datetime DEFAULT NULL,
  `projects_progress_percentage` tinyint(3) DEFAULT '0',
  `projects_status` varchar(30) NOT NULL DEFAULT 'in progress' COMMENT 'in progress/completed/behind schedule',
  `projects_events_id` varchar(40) DEFAULT NULL,
  `projects_optionalfield1` text,
  `projects_optionalfield2` text,
  `projects_optionalfield3` text,
  `projects_optionalfield4` text,
  `projects_optionalfield5` text
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `projects`
--

INSERT INTO `projects` (`projects_id`, `projects_date_created`, `project_deadline`, `projects_date_completed`, `projects_clients_id`, `projects_team_lead_id`, `projects_title`, `projects_description`, `projects_last_activity`, `projects_progress_percentage`, `projects_status`, `projects_events_id`, `projects_optionalfield1`, `projects_optionalfield2`, `projects_optionalfield3`, `projects_optionalfield4`, `projects_optionalfield5`) VALUES
(2, '2017-10-23', '2017-10-21', NULL, 2, NULL, 'pika', '[ika', NULL, 0, 'behind schedule', NULL, 'pika', 'pika', 'pika', '', ''),
(3, '2017-10-23', '2017-10-24', NULL, 3, NULL, 'web dev', 'hdjasdh jashdk jasdlasjdhjksah kjdh ksjad', NULL, 0, 'behind schedule', NULL, 'abc.com', 'abc.com/1', 'abcabc', '', ''),
(4, '2017-10-23', '2017-10-26', NULL, 4, NULL, 'Wow test', 'Wow test​Wow test​Wow test​Wow test​Wow test​Wow test', NULL, 0, 'behind schedule', NULL, 'www.edufiyy.com', 'pallove', 'pallove', '', ''),
(5, '2017-12-07', '2017-12-08', NULL, 8, NULL, 'web design', 'banner', NULL, 100, 'completed', NULL, 'www.ssweb.com', 'ftp.ssweb.com', 'ftp.ssweb.com', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `projects_optionalfields`
--

CREATE TABLE `projects_optionalfields` (
  `projects_optionalfield_name` varchar(100) NOT NULL,
  `projects_optionalfield_title` varchar(50) NOT NULL,
  `projects_optionalfield_status` varchar(10) NOT NULL COMMENT 'enabled/disabled',
  `projects_optionalfield_require` varchar(10) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `projects_optionalfields`
--

INSERT INTO `projects_optionalfields` (`projects_optionalfield_name`, `projects_optionalfield_title`, `projects_optionalfield_status`, `projects_optionalfield_require`) VALUES
('projects_optionalfield1', 'Website URL', 'enabled', 'yes'),
('projects_optionalfield2', 'FTP User Name', 'enabled', 'yes'),
('projects_optionalfield3', 'FTP Password', 'enabled', 'yes'),
('projects_optionalfield4', 'Sample Text', 'disabled', 'no'),
('projects_optionalfield5', 'Sample Text', 'disabled', 'no');

-- --------------------------------------------------------

--
-- Table structure for table `project_events`
--

CREATE TABLE `project_events` (
  `project_events_id` int(11) NOT NULL,
  `project_events_project_id` varchar(40) NOT NULL,
  `project_events_date` datetime NOT NULL,
  `project_events_type` varchar(100) DEFAULT NULL COMMENT 'deleted/milestone/ file/invoice/file-message/project-message/milestone/task/project/bug/payment',
  `project_events_details` varchar(100) DEFAULT NULL,
  `project_events_action` varchar(100) DEFAULT NULL,
  `project_events_target_id` varchar(150) DEFAULT NULL,
  `project_events_user_id` int(11) DEFAULT NULL,
  `project_events_user_type` varchar(30) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `project_events`
--

INSERT INTO `project_events` (`project_events_id`, `project_events_project_id`, `project_events_date`, `project_events_type`, `project_events_details`, `project_events_action`, `project_events_target_id`, `project_events_user_id`, `project_events_user_type`) VALUES
(2, '2', '2017-10-23 05:22:25', 'project', 'pika', 'lang_tl_created_new_project', '2', 1, 'team'),
(3, '3', '2017-10-23 06:00:48', 'project', 'web dev', 'lang_tl_created_new_project', '3', 1, 'team'),
(4, '3', '2017-10-23 06:03:23', 'file', 'will-reagan-united-pursuit-bless-the-lord-we-have-come-continued.mp3', 'lang_tl_uplaoded_file', '1', 1, 'team'),
(5, '4', '2017-10-23 17:19:23', 'project', 'Wow test', 'lang_tl_created_new_project', '4', 1, 'team'),
(6, '4', '2017-11-07 02:16:29', 'milestone', 'Reskinning', 'lang_tl_added_milestone', '1', 1, 'team'),
(7, '4', '2017-11-07 02:17:42', 'milestone', 'Deployment', 'lang_tl_added_milestone', '2', 1, 'team'),
(8, '4', '2017-11-07 02:18:21', 'milestone', 'Bug Fixing', 'lang_tl_added_milestone', '3', 1, 'team'),
(9, '3', '2017-11-21 12:23:13', 'file-message', '(will-reagan-united-pursuit-bless-the-lord-we-have-come-continued.mp3) Happy', 'lang_tl_comented_file', '0', 1, 'team'),
(10, '5', '2017-12-07 11:36:57', 'project', 'web design', 'lang_tl_created_new_project', '5', 1, 'team'),
(11, '5', '2017-12-07 11:46:10', 'milestone', 'Banner', 'lang_tl_added_milestone', '4', 1, 'team'),
(12, '5', '2017-12-07 11:46:53', 'task', 'BANNER', 'lang_tl_add_new_task', '0', 3, 'team'),
(13, '5', '2017-12-07 11:53:11', 'task', 'BANNER', 'lang_tl_completed_task', '0', 1, 'team');

-- --------------------------------------------------------

--
-- Table structure for table `project_members`
--

CREATE TABLE `project_members` (
  `project_members_index` tinyint(4) NOT NULL,
  `project_members_team_id` int(11) NOT NULL,
  `project_members_project_id` int(11) NOT NULL,
  `project_members_project_lead` varchar(5) NOT NULL DEFAULT 'no'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `project_members`
--

INSERT INTO `project_members` (`project_members_index`, `project_members_team_id`, `project_members_project_id`, `project_members_project_lead`) VALUES
(2, 1, 2, 'yes'),
(3, 1, 3, 'yes'),
(4, 1, 4, 'yes'),
(5, 1, 5, 'yes'),
(6, 3, 5, 'no');

-- --------------------------------------------------------

--
-- Table structure for table `quotationforms`
--

CREATE TABLE `quotationforms` (
  `quotationforms_id` int(11) NOT NULL,
  `quotationforms_title` varchar(200) NOT NULL,
  `quotationforms_code` text NOT NULL,
  `quotationforms_date_created` datetime NOT NULL,
  `quotationforms_status` varchar(20) NOT NULL DEFAULT 'enabled' COMMENT 'enabled/disabled',
  `quotations_created_by_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `quotationforms`
--

INSERT INTO `quotationforms` (`quotationforms_id`, `quotationforms_title`, `quotationforms_code`, `quotationforms_date_created`, `quotationforms_status`, `quotations_created_by_id`) VALUES
(1, 'Web Design Quotation Form', '{\"fields\":[{\"label\":\"Do you have your existing site for redesign or you need new website\",\"field_type\":\"paragraph\",\"required\":true,\"field_options\":{\"size\":\"small\"},\"cid\":\"c35\"},{\"label\":\"Can you please describe your business\",\"field_type\":\"paragraph\",\"required\":true,\"field_options\":{\"size\":\"small\"},\"cid\":\"c10\"},{\"label\":\"Who are your competitors\",\"field_type\":\"paragraph\",\"required\":true,\"field_options\":{\"size\":\"small\"},\"cid\":\"c14\"},{\"label\":\"Do you have special features in mind\",\"field_type\":\"paragraph\",\"required\":true,\"field_options\":{\"size\":\"small\"},\"cid\":\"c18\"},{\"label\":\" Is the content ready for your web site\",\"field_type\":\"paragraph\",\"required\":true,\"field_options\":{\"size\":\"small\"},\"cid\":\"c40\"},{\"label\":\"Are there any example websites that you like\",\"field_type\":\"paragraph\",\"required\":true,\"field_options\":{\"size\":\"small\"},\"cid\":\"c30\"},{\"label\":\"What is your approximate budget for this project\",\"field_type\":\"paragraph\",\"required\":true,\"field_options\":{\"size\":\"small\"},\"cid\":\"c26\"},{\"label\":\"What is your deadline for finishing the site\",\"field_type\":\"paragraph\",\"required\":true,\"field_options\":{\"size\":\"small\"},\"cid\":\"c44\"}]}', '2014-12-11 08:34:00', 'enabled', 1);

-- --------------------------------------------------------

--
-- Table structure for table `quotationforms_templates`
--

CREATE TABLE `quotationforms_templates` (
  `quotationforms_templates_id` varchar(100) NOT NULL,
  `quotationforms_templates_title` varchar(150) NOT NULL,
  `quotationforms_templates_content` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `quotations`
--

CREATE TABLE `quotations` (
  `quotations_id` int(11) NOT NULL,
  `quotations_date` datetime NOT NULL,
  `quotations_form_title` varchar(250) NOT NULL,
  `quotations_post_data` text NOT NULL,
  `quotations_form_data` text NOT NULL,
  `quotations_by_client` varchar(10) DEFAULT 'no' COMMENT 'yes/no',
  `quotations_client_id` int(11) DEFAULT NULL,
  `quotations_company_name` varchar(100) DEFAULT NULL,
  `quotations_name` varchar(100) DEFAULT NULL,
  `quotations_email` varchar(100) DEFAULT NULL,
  `quotations_telephone` varchar(100) DEFAULT NULL,
  `quotations_amount` decimal(10,2) DEFAULT NULL,
  `quotations_admin_notes` text,
  `quotations_reviewed_by_id` int(11) DEFAULT NULL,
  `quotations_reviewed_date` date DEFAULT NULL,
  `quotations_status` varchar(15) DEFAULT 'pending' COMMENT 'completed/pending'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `search_cache`
--

CREATE TABLE `search_cache` (
  `id` int(11) NOT NULL COMMENT 'This Table: Has no default data',
  `query_string` text CHARACTER SET utf8 COLLATE utf8_bin,
  `date_added` datetime DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `search_cache`
--

INSERT INTO `search_cache` (`id`, `query_string`, `date_added`) VALUES
(1, 'invoices_id=&invoices_project_id=&invoices_clients_id=&invoices_status=', '2017-10-23 06:00:00'),
(2, 'invoices_id=&invoices_project_id=2&invoices_clients_id=4&invoices_status=due', '2017-10-24 14:06:39'),
(3, 'invoices_id=&invoices_project_id=4&invoices_clients_id=3&invoices_status=', '2017-10-26 10:17:03'),
(4, 'invoices_id=&invoices_project_id=2&invoices_clients_id=&invoices_status=', '2017-10-26 10:17:15'),
(5, 'bugs_client_id=4&bugs_project_id=2&bugs_status=in-progress', '2017-11-07 10:03:35'),
(6, 'tasks_text=&tasks_project_id=2&tasks_status=pending', '2017-11-07 10:10:08'),
(7, 'tasks_text=&tasks_project_id=&tasks_status=pending', '2017-11-07 10:10:16'),
(8, 'tickets_department_id=1&tickets_by_user_id=2&tickets_by_team_member_id=1&tickets_status=answered', '2017-11-10 20:07:10'),
(9, 'timer_status=running&projects_id=2', '2017-11-10 20:09:56'),
(10, 'payments_transaction_id=12&payment_date=2017-11-14&payments_client_id=4&payments_project_id=2', '2017-11-10 20:10:58'),
(11, 'bugs_client_id=3&bugs_project_id=2&bugs_status=in-progress', '2017-11-14 14:03:24'),
(12, 'bugs_client_id=2&bugs_project_id=2&bugs_status=resolved', '2017-11-17 07:00:48'),
(13, 'bugs_client_id=&bugs_project_id=&bugs_status=not-a-bug', '2017-11-17 07:00:53'),
(14, 'payments_transaction_id=&payment_date=&payments_client_id=&payments_project_id=', '2017-11-23 14:38:09'),
(15, 'payments_transaction_id=&payment_date=&payments_client_id=&payments_project_id=', '2017-11-24 18:22:02'),
(16, 'tickets_department_id=1&tickets_by_user_id=6&tickets_by_team_member_id=1&tickets_status=open', '2017-12-15 08:54:30'),
(17, 'invoices_id=&invoices_project_id=2&invoices_clients_id=4&invoices_status=new', '2017-12-28 08:02:03');

-- --------------------------------------------------------

--
-- Table structure for table `settings_bank`
--

CREATE TABLE `settings_bank` (
  `settings_id` varchar(20) NOT NULL,
  `bank_active` varchar(20) NOT NULL COMMENT 'yes/no',
  `settings_bank_details` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `settings_bank`
--

INSERT INTO `settings_bank` (`settings_id`, `bank_active`, `settings_bank_details`) VALUES
('default', 'no', 'To make a bank transfer, please use the following banking details<br />\n<br />\n<strong>Bank Name:</strong> bank pvt ltd<br />\n<strong>Bank Address:</strong> 1 some road, some city, some country<br />\n<strong>Account Number:</strong> 000-000-000-000<br />\n<strong>Sort Code:</strong> 000-000<br />\n<strong>Swift Code:</strong> XYZ-00-0-00<br />\n<br />\nOnce your payment has been received, your invoice will be updated.<br />\n&nbsp;');

-- --------------------------------------------------------

--
-- Table structure for table `settings_cash`
--

CREATE TABLE `settings_cash` (
  `settings_id` varchar(20) NOT NULL,
  `cash_active` varchar(10) NOT NULL COMMENT 'yes/no',
  `settings_cash_details` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `settings_cash`
--

INSERT INTO `settings_cash` (`settings_id`, `cash_active`, `settings_cash_details`) VALUES
('default', 'yes', 'Once you have made your cash payment please advise us so that your invoice can be updated.');

-- --------------------------------------------------------

--
-- Table structure for table `settings_company`
--

CREATE TABLE `settings_company` (
  `settings_id` varchar(20) NOT NULL,
  `company_name` varchar(100) NOT NULL COMMENT 'This Table: Has one default row with place holder company details. [company_sys: default]',
  `company_address_street` varchar(150) DEFAULT NULL,
  `company_address_city` varchar(100) DEFAULT NULL,
  `company_address_state` varchar(100) DEFAULT NULL,
  `company_address_zip` varchar(50) DEFAULT NULL,
  `company_address_country` varchar(50) DEFAULT NULL,
  `company_telephone` varchar(25) DEFAULT NULL,
  `company_email` varchar(100) NOT NULL,
  `company_email_name` varchar(50) NOT NULL,
  `company_email_signature` text
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `settings_company`
--

INSERT INTO `settings_company` (`settings_id`, `company_name`, `company_address_street`, `company_address_city`, `company_address_state`, `company_address_zip`, `company_address_country`, `company_telephone`, `company_email`, `company_email_name`, `company_email_signature`) VALUES
('default', 'Tam Project Management', '1 Some Street', 'Some City', 'Some State', '000000', 'Some Country', '000000000', 'you@somecompnay.ccc', 'Some Company Name', '');

-- --------------------------------------------------------

--
-- Table structure for table `settings_emailtemplates`
--

CREATE TABLE `settings_emailtemplates` (
  `id` int(11) NOT NULL,
  `settings_id` varchar(50) NOT NULL,
  `title` varchar(100) NOT NULL,
  `subject` varchar(250) NOT NULL,
  `message` text NOT NULL,
  `restore_subject` varchar(250) NOT NULL COMMENT 'restore data',
  `restore_message` text NOT NULL COMMENT 'restore data',
  `variables` text NOT NULL COMMENT 'available vars',
  `type` varchar(10) NOT NULL COMMENT 'admin/client',
  `DELETE_POST_DEV` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `settings_emailtemplates`
--

INSERT INTO `settings_emailtemplates` (`id`, `settings_id`, `title`, `subject`, `message`, `restore_subject`, `restore_message`, `variables`, `type`, `DELETE_POST_DEV`) VALUES
(3, 'new_client_welcome_client', 'lang_new_client', 'Project Dashboard - Welcome ', '<div style=\"height:7px; background-color:#535353\">&nbsp;</div>\n\n<div style=\"background-color:#f5f5f5; margin:0px; padding:55px 20px 40px 20px; font-family:Helvetica, sans-serif; font-size:13px; color:#535353;\">\n<div style=\"text-align:center; font-size:34px; font-weight:bold; color:#535353;\">Welcome<br />\n[var.clients_company_name]</div>\n\n<div style=\"border-radius: 5px 5px 5px 5px; padding:20px; margin-top:45px; background-color:#FFFFFF; font-family:Arial, Helvetica, sans-serif; font-size:13px;\"><span style=\"font-weight:bold;\">[var.client_users_full_name]</span><br />\n<br />\nYour company has just been added to our Project Management Dashboard.<br />\n<br />\nBelow are your primary users login details.<br />\n<br />\nRemember, you can easily add more users to your company account via the Dashboard.<br />\n&nbsp;\n<table cellpadding=\"8\" style=\"border: 1px solid #DDDDDD; border-collapse: collapse; border-spacing: 0;font-size:13px;\" width=\"100%\">\n <tbody>\n  <tr>\n   <td style=\"border: 1px solid #DDDDDD;\" width=\"150\">Username</td>\n   <td style=\"border: 1px solid #DDDDDD;\" width=\"276\">[var.client_users_email]</td>\n  </tr>\n  <tr>\n   <td style=\"border: 1px solid #DDDDDD;\">Password</td>\n   <td style=\"border: 1px solid #DDDDDD;\">[var.client_users_password]</td>\n  </tr>\n </tbody>\n</table>\n&nbsp;\n\n<div style=\" border:#CCCCCC solid 1px; padding:8px;\"><strong>Dashboard Link </strong><span style=\"font-size:14px;\"><a href=\"[var.client_dashboard_url]\">[var.client_dashboard_url]</a></span></div>\n<br />\n[var.company_email_signature]\n</div>\n</div>\n', 'Project Dashboard - Welcome ', '<div style=\"height:7px; background-color:#535353\">&nbsp;</div>\n\n<div style=\"background-color:#f5f5f5; margin:0px; padding:55px 20px 40px 20px; font-family:Helvetica, sans-serif; font-size:13px; color:#535353;\">\n<div style=\"text-align:center; font-size:34px; font-weight:bold; color:#535353;\">Welcome<br />\n[var.clients_company_name]</div>\n\n<div style=\"border-radius: 5px 5px 5px 5px; padding:20px; margin-top:45px; background-color:#FFFFFF; font-family:Arial, Helvetica, sans-serif; font-size:13px;\"><span style=\"font-weight:bold;\">[var.client_users_full_name]</span><br />\n<br />\nYour company has just been added to our Project Management Dashboard.<br />\n<br />\nBelow are your primary users login details.<br />\n<br />\nRemember, you can easily add more users to your company account via the Dashboard.<br />\n&nbsp;\n<table cellpadding=\"8\" style=\"border: 1px solid #DDDDDD; border-collapse: collapse; border-spacing: 0;font-size:13px;\" width=\"100%\">\n	<tbody>\n		<tr>\n			<td style=\"border: 1px solid #DDDDDD;\" width=\"150\">Username</td>\n			<td style=\"border: 1px solid #DDDDDD;\" width=\"276\">[var.client_users_email]</td>\n		</tr>\n		<tr>\n			<td style=\"border: 1px solid #DDDDDD;\">Password</td>\n			<td style=\"border: 1px solid #DDDDDD;\">[var.client_users_password]</td>\n		</tr>\n	</tbody>\n</table>\n&nbsp;\n\n<div style=\" border:#CCCCCC solid 1px; padding:8px;\"><strong>Dashboard Link </strong><span style=\"font-size:14px;\"><a href=\"[var.client_dashboard_url]\">[var.client_dashboard_url]</a></span></div>\n\n<br />\n[var.company_email_signature]\n</div>\n</div>', '[var.clients_company_name], [var.client_users_full_name], [var.client_users_email], [var.client_users_password], [var.todays_date], [var.company_email_signature], [var.client_dashboard_url]', 'client', ''),
(4, 'new_invoice_client', 'lang_new_invoice', 'New Invoice', '<div style=\"height:7px; background-color:#535353\"></div>\n<div style=\"background-color:#f5f5f5; margin:0px; padding:55px 20px 40px 20px; font-family:Helvetica, sans-serif; font-size:13px; color:#535353;\">\n\n<div style=\"text-align:center; font-size:34px; font-weight:bold; color:#535353;\">INVOICE</div>\n<div style=\"border-radius: 5px 5px 5px 5px; padding:20px; margin-top:45px; background-color:#FFFFFF; font-family:Arial, Helvetica, sans-serif; font-size:13px;\"><span class=\"style1\"><span style=\"font-weight:bold;\">[var.client_users_full_name]<br />\n</span></span><br /> \n  Please find attched your invoice. You can download the attachment and print it for your records.<br>\n  <br>\n  You can also log into the control panel and manage/pay the invoice.<br />\n  <br />\n  <div style=\" border:#CCCCCC solid 1px; padding:8px;\"><strong>Invoice Payment Link </strong><span style=\"font-size:14px;\"><a href=\"[var.client_dashboard_url]\">[var.client_dashboard_url]</a></span><br>\n    <br>\n  [var.invoice_standard_terms]</div>\n  <br>\n  Thank you for your prompt payment<br>\n  <br />\n[var.company_email_signature]\n</div>\n</div>', 'New Invoice', '<div style=\"height:7px; background-color:#535353\"></div>\n<div style=\"background-color:#f5f5f5; margin:0px; padding:55px 20px 40px 20px; font-family:Helvetica, sans-serif; font-size:13px; color:#535353;\">\n\n<div style=\"text-align:center; font-size:34px; font-weight:bold; color:#535353;\">INVOICE</div>\n<div style=\"border-radius: 5px 5px 5px 5px; padding:20px; margin-top:45px; background-color:#FFFFFF; font-family:Arial, Helvetica, sans-serif; font-size:13px;\"><span class=\"style1\"><span style=\"font-weight:bold;\">[var.client_users_full_name]<br />\n</span></span><br /> \n  Please find attched your invoice. You can download the attachment and print it for your records.<br>\n  <br>\n  You can also log into the control panel and manage/pay the invoice.<br />\n  <br />\n  <div style=\" border:#CCCCCC solid 1px; padding:8px;\"><strong>Invoice Payment Link </strong><span style=\"font-size:14px;\"><a href=\"[var.client_dashboard_url]\">[var.client_dashboard_url]</a></span><br>\n    <br>\n  [var.invoice_standard_terms]</div>\n  <br>\n  Thank you for your prompt payment<br>\n  <br />\n[var.company_email_signature]\n</div>\n</div>', '[var.client_users_full_name],[var.company_name], [var.clients_company_name], [var.company_email_signature], [var.todays_date], [var.client_dashboard_url], [var.invoices_id]', 'client', ''),
(5, 'overdue_invoice_client', 'lang_overdue_invoice', 'Overdue Invoice', '<div style=\"height:7px; background-color:#535353\"></div>\n<div style=\"background-color:#f5f5f5; margin:0px; padding:55px 20px 40px 20px; font-family:Helvetica, sans-serif; font-size:13px; color:#535353;\">\n\n<div style=\"text-align:center; font-size:34px; font-weight:bold; color:#535353;\">OVERDUE INVOICE</div>\n<div style=\"border-radius: 5px 5px 5px 5px; padding:20px; margin-top:45px; background-color:#FFFFFF; font-family:Arial, Helvetica, sans-serif; font-size:13px;\"><span class=\"style1\"><span style=\"font-weight:bold;\">[var.client_users_full_name]<br />\n</span></span><br /> \n  This is a notice that an invoice that was generated on<strong> [var.invoices_date] </strong>is now overdue<br />\n  <br />\n  Invoice Details:<br />\n  <br />\n  <table width=\"100%\" cellpadding=\"8\" style=\"border: 1px solid #DDDDDD; border-collapse: collapse; border-spacing: 0;font-size:13px;\">\n    <tr>\n      <td width=\"150\" style=\"border: 1px solid #DDDDDD;\">Invoice Date</td>\n<td width=\"276\" style=\"border: 1px solid #DDDDDD;\">[var.invoices_date]</td>\n    </tr>\n    <tr>\n      <td style=\"border: 1px solid #DDDDDD;\">Invoice Invoice Due Date</td>\n      <td style=\"border: 1px solid #DDDDDD;\">[var.invoices_due_date]</td>\n    </tr>\n    <tr>\n      <td bgcolor=\"#F5F5F5\" style=\"border: 1px solid #DDDDDD;\"><strong>Invoice Amount</strong></td>\n      <td bgcolor=\"#F5F5F5\" style=\"border: 1px solid #DDDDDD;\"><strong>[var.currency_symbol][var.invoices_amount]</strong></td>\n    </tr>\n  </table>\n  <br />\n  Please kindly make payment using the link below<br />\n  <br />\n  <div style=\" border:#CCCCCC solid 1px; padding:8px;\"><strong>Invoice Payment Link </strong><span style=\"font-size:14px;\"><a href=\"[var.invoice_payment_link]\">[var.invoice_payment_link]</a></span></div>\n<br />\n[var.company_email_signature]\n</div>\n</div>', 'Overdue Invoice', '<div style=\"height:7px; background-color:#535353\"></div>\n<div style=\"background-color:#f5f5f5; margin:0px; padding:55px 20px 40px 20px; font-family:Helvetica, sans-serif; font-size:13px; color:#535353;\">\n\n<div style=\"text-align:center; font-size:34px; font-weight:bold; color:#535353;\">OVERDUE INVOICE</div>\n<div style=\"border-radius: 5px 5px 5px 5px; padding:20px; margin-top:45px; background-color:#FFFFFF; font-family:Arial, Helvetica, sans-serif; font-size:13px;\"><span class=\"style1\"><span style=\"font-weight:bold;\">[var.client_users_full_name]<br />\n</span></span><br /> \n  This is a notice that an invoice that was generated on<strong> [var.invoices_date] </strong>is now overdue<br />\n  <br />\n  Invoice Details:<br />\n  <br />\n  <table width=\"100%\" cellpadding=\"8\" style=\"border: 1px solid #DDDDDD; border-collapse: collapse; border-spacing: 0;font-size:13px;\">\n    <tr>\n      <td width=\"150\" style=\"border: 1px solid #DDDDDD;\">Invoice Date</td>\n<td width=\"276\" style=\"border: 1px solid #DDDDDD;\">[var.invoices_date]</td>\n    </tr>\n    <tr>\n      <td style=\"border: 1px solid #DDDDDD;\">Invoice Invoice Due Date</td>\n      <td style=\"border: 1px solid #DDDDDD;\">[var.invoices_due_date]</td>\n    </tr>\n    <tr>\n      <td bgcolor=\"#F5F5F5\" style=\"border: 1px solid #DDDDDD;\"><strong>Invoice Amount</strong></td>\n      <td bgcolor=\"#F5F5F5\" style=\"border: 1px solid #DDDDDD;\"><strong>[var.currency_symbol][var.invoices_amount]</strong></td>\n    </tr>\n  </table>\n  <br />\n  Please kindly make payment using the link below<br />\n  <br />\n  <div style=\" border:#CCCCCC solid 1px; padding:8px;\"><strong>Invoice Payment Link </strong><span style=\"font-size:14px;\"><a href=\"[var.invoice_payment_link]\">[var.invoice_payment_link]</a></span></div>\n<br />\n[var.company_email_signature]\n</div>\n</div>', '[var.client_users_full_name], [var.invoices_date], [var.invoices_due_date], [var.currency_symbol], [var.invoices_amount], [var.invoice_payment_link], [var.company_name], [var.clients_company_name], [var.company_email_signature], [var.todays_date], [var.client_dashboard_url], [var.project_link], [var.invoices_id]', 'client', ''),
(6, 'new_project_client', 'lang_new_project', 'New Project Created', '<div style=\"height:7px; background-color:#535353\"></div>\n<div style=\"background-color:#f5f5f5; margin:0px; padding:55px 20px 40px 20px; font-family:Helvetica, sans-serif; font-size:13px; color:#535353;\">\n\n<div style=\"text-align:center; font-size:34px; font-weight:bold; color:#535353;\">NEW PROJECT</div>\n<div style=\"text-align:center; font-size:24px; font-weight:bold; color:#535353;\">[var.projects_title]</div>\n<div style=\"border-radius: 5px 5px 5px 5px; padding:20px; margin-top:45px; background-color:#FFFFFF; font-family:Arial, Helvetica, sans-serif; font-size:13px;\"><span class=\"style1\"><span style=\"font-weight:bold;\">[var.client_users_full_name]<br />\n</span></span><br /> \n  A new project has been added to your Project Dashboard.\n  <br />\n  <br />\n  <table width=\"100%\" cellpadding=\"8\" style=\"border: 1px solid #DDDDDD; border-collapse: collapse; border-spacing: 0;font-size:13px;\">\n    <tr>\n      <td width=\"150\" style=\"border: 1px solid #DDDDDD;\">Project Title</td>\n<td width=\"276\" style=\"border: 1px solid #DDDDDD;\">[var.projects_title]</td>\n    </tr>\n    <tr>\n      <td style=\"border: 1px solid #DDDDDD;\">Date Created</td>\n      <td style=\"border: 1px solid #DDDDDD;\">[var.projects_date_created]</td>\n    </tr>\n    <tr>\n      <td style=\"border: 1px solid #DDDDDD;\">Anticipated Completion Date</td>\n      <td style=\"border: 1px solid #DDDDDD;\">[var.project_deadline]</td>\n    </tr>\n    <tr>\n      <td bgcolor=\"#F5F5F5\" style=\"border: 1px solid #DDDDDD;\"><strong>Project ID</strong></td>\n      <td bgcolor=\"#F5F5F5\" style=\"border: 1px solid #DDDDDD;\"><strong>[var.projects_id]</strong></td>\n    </tr>\n  </table>\n  <br />\n  You can \n  login to the Project Dashboard to keep manage and keep track of this project<br />\n  <br />\n  <div style=\" border:#CCCCCC solid 1px; padding:8px;\"><strong> Direct Link </strong><span style=\"font-size:14px;\"><a href=\"[var.str_project_link]\">[var.str_project_link]</a></span></div>\n<br />\n[var.company_email_signature]\n</div>\n</div>', 'New Project Created', '<div style=\"height:7px; background-color:#535353\"></div>\n<div style=\"background-color:#f5f5f5; margin:0px; padding:55px 20px 40px 20px; font-family:Helvetica, sans-serif; font-size:13px; color:#535353;\">\n\n<div style=\"text-align:center; font-size:34px; font-weight:bold; color:#535353;\">NEW PROJECT</div>\n<div style=\"text-align:center; font-size:24px; font-weight:bold; color:#535353;\">[var.projects_title]</div>\n<div style=\"border-radius: 5px 5px 5px 5px; padding:20px; margin-top:45px; background-color:#FFFFFF; font-family:Arial, Helvetica, sans-serif; font-size:13px;\"><span class=\"style1\"><span style=\"font-weight:bold;\">[var.client_users_full_name]<br />\n</span></span><br /> \n  A new project has been added to your Project Dashboard.\n  <br />\n  <br />\n  <table width=\"100%\" cellpadding=\"8\" style=\"border: 1px solid #DDDDDD; border-collapse: collapse; border-spacing: 0;font-size:13px;\">\n    <tr>\n      <td width=\"150\" style=\"border: 1px solid #DDDDDD;\">Project Title</td>\n<td width=\"276\" style=\"border: 1px solid #DDDDDD;\">[var.projects_title]</td>\n    </tr>\n    <tr>\n      <td style=\"border: 1px solid #DDDDDD;\">Date Created</td>\n      <td style=\"border: 1px solid #DDDDDD;\">[var.projects_date_created]</td>\n    </tr>\n    <tr>\n      <td style=\"border: 1px solid #DDDDDD;\">Anticipated Completion Date</td>\n      <td style=\"border: 1px solid #DDDDDD;\">[var.project_deadline]</td>\n    </tr>\n    <tr>\n      <td bgcolor=\"#F5F5F5\" style=\"border: 1px solid #DDDDDD;\"><strong>Project ID</strong></td>\n      <td bgcolor=\"#F5F5F5\" style=\"border: 1px solid #DDDDDD;\"><strong>[var.projects_id]</strong></td>\n    </tr>\n  </table>\n  <br />\n  You can \n  login to the Project Dashboard to keep manage and keep track of this project<br />\n  <br />\n  <div style=\" border:#CCCCCC solid 1px; padding:8px;\"><strong> Direct Link </strong><span style=\"font-size:14px;\"><a href=\"[var.str_project_link]\">[var.str_project_link]</a></span></div>\n<br />\n[var.company_email_signature]\n</div>\n</div>', '[var.clients_company_name], [var.client_users_full_name], [var.todays_date], [var.company_email_signature], [var.client_dashboard_url], [var.projects_title], [var.projects_date_created], [var.project_deadline], [var.project_link]', 'client', ''),
(7, 'general_notification_client', 'lang_general_notification', 'Project Notification', '<div style=\"height:7px; background-color:#535353\"></div>\n<div style=\"background-color:#f5f5f5; margin:0px; padding:55px 20px 40px 20px; font-family:Helvetica, sans-serif; font-size:13px; color:#535353;\">\n\n<div style=\"text-align:center; font-size:34px; font-weight:bold; color:#535353;\">  [var.email_title]</div>\n<div style=\"border-radius: 5px 5px 5px 5px; padding:20px; margin-top:45px; background-color:#FFFFFF; font-family:Arial, Helvetica, sans-serif; font-size:13px;\"><span style=\"font-weight:bold;\">[var.addressed_to]<br />\n</span><br /> \n  [var.email_message]<br />\n  <br />\n  <br>\n<div style=\" border:#CCCCCC solid 1px; padding:8px;\"><strong>Dashboard Link </strong><span style=\"font-size:14px;\"><a href=\"[var.client_dashboard_url]\">[var.client_dashboard_url]</a></span></div>\n<br />\n[var.company_email_signature]\n</div>\n</div>', 'Project Notification', '<div style=\"height:7px; background-color:#535353\"></div>\n<div style=\"background-color:#f5f5f5; margin:0px; padding:55px 20px 40px 20px; font-family:Helvetica, sans-serif; font-size:13px; color:#535353;\">\n\n<div style=\"text-align:center; font-size:34px; font-weight:bold; color:#535353;\">  [var.email_title]</div>\n<div style=\"border-radius: 5px 5px 5px 5px; padding:20px; margin-top:45px; background-color:#FFFFFF; font-family:Arial, Helvetica, sans-serif; font-size:13px;\"><span style=\"font-weight:bold;\">[var.addressed_to]<br />\n</span><br /> \n  [var.email_message]<br />\n  <br />\n  <br>\n<div style=\" border:#CCCCCC solid 1px; padding:8px;\"><strong>Dashboard Link </strong><span style=\"font-size:14px;\"><a href=\"[var.client_dashboard_url]\">[var.client_dashboard_url]</a></span></div>\n<br />\n[var.company_email_signature]\n</div>\n</div>', '[var.company_email_signature], [var.todays_date], [var.client_dashboard_url], [var.notification_message]', 'client', 'completed & tested'),
(10, 'new_user_client', 'lang_new_user', 'Dashboard Login Details', '<div style=\"height:7px; background-color:#535353\"></div>\n<div style=\"background-color:#f5f5f5; margin:0px; padding:55px 20px 40px 20px; font-family:Helvetica, sans-serif; font-size:13px; color:#535353;\">\n\n<div style=\"text-align:center; font-size:34px; font-weight:bold; color:#535353;\">Dashboard Login Details</div>\n<div style=\"border-radius: 5px 5px 5px 5px; padding:20px; margin-top:45px; background-color:#FFFFFF; font-family:Arial, Helvetica, sans-serif; font-size:13px;\"><span style=\"font-weight:bold;\">[var.client_users_full_name]<br />\n</span><br /> \n  You have just been added to the Project Dashboard<br />\n  <br />\n  Below are your users login details<br />\n<br>\n<table width=\"100%\" cellpadding=\"8\" style=\"border: 1px solid #DDDDDD; border-collapse: collapse; border-spacing: 0;font-size:13px;\">\n    <tr>\n      <td width=\"150\" style=\"border: 1px solid #DDDDDD;\">Username</td>\n      <td width=\"276\" style=\"border: 1px solid #DDDDDD;\">[var.client_users_email]</td>\n    </tr>\n    <tr>\n      <td style=\"border: 1px solid #DDDDDD;\">Password</td>\n      <td style=\"border: 1px solid #DDDDDD;\">[var.client_users_password]</td>\n    </tr>\n  </table>\n<br>\n<div style=\" border:#CCCCCC solid 1px; padding:8px;\"><strong>Dashboard Link </strong><span style=\"font-size:14px;\"><a href=\"[var.client_dashboard_url]\">[var.client_dashboard_url]</a></span></div>\n<br />\n[var.company_email_signature]\n</div>\n</div>', 'Dashboard Login Details', '<div style=\"height:7px; background-color:#535353\"></div>\n<div style=\"background-color:#f5f5f5; margin:0px; padding:55px 20px 40px 20px; font-family:Helvetica, sans-serif; font-size:13px; color:#535353;\">\n\n<div style=\"text-align:center; font-size:34px; font-weight:bold; color:#535353;\">Dashboard Login Details</div>\n<div style=\"border-radius: 5px 5px 5px 5px; padding:20px; margin-top:45px; background-color:#FFFFFF; font-family:Arial, Helvetica, sans-serif; font-size:13px;\"><span style=\"font-weight:bold;\">[var.client_users_full_name]<br />\n</span><br /> \n  You have just been added to the Project Dashboard<br />\n  <br />\n  Below are your users login details<br />\n<br>\n<table width=\"100%\" cellpadding=\"8\" style=\"border: 1px solid #DDDDDD; border-collapse: collapse; border-spacing: 0;font-size:13px;\">\n    <tr>\n      <td width=\"150\" style=\"border: 1px solid #DDDDDD;\">Username</td>\n      <td width=\"276\" style=\"border: 1px solid #DDDDDD;\">[var.client_users_email]</td>\n    </tr>\n    <tr>\n      <td style=\"border: 1px solid #DDDDDD;\">Password</td>\n      <td style=\"border: 1px solid #DDDDDD;\">[var.client_users_password]</td>\n    </tr>\n  </table>\n<br>\n<div style=\" border:#CCCCCC solid 1px; padding:8px;\"><strong>Dashboard Link </strong><span style=\"font-size:14px;\"><a href=\"[var.client_dashboard_url]\">[var.client_dashboard_url]</a></span></div>\n<br />\n[var.company_email_signature]\n</div>\n</div>', '[var.client_users_email], [var.client_users_password], [var.clients_company_name], [var.company_email_signature], [var.str_todays_date], [var.str_client_dashboard_url]', 'client', 'completed & tested'),
(11, 'general_notification_admin', 'lang_general_notification', 'Project Notification', '<div style=\"height:7px; background-color:#535353\"></div>\n<div style=\"background-color:#f5f5f5; margin:0px; padding:55px 20px 40px 20px; font-family:Helvetica, sans-serif; font-size:13px; color:#535353;\">\n\n<div style=\"text-align:center; font-size:34px; font-weight:bold; color:#535353;\">  [var.email_title]</div>\n<div style=\"border-radius: 5px 5px 5px 5px; padding:20px; margin-top:45px; background-color:#FFFFFF; font-family:Arial, Helvetica, sans-serif; font-size:13px;\"><span style=\"font-weight:bold;\">[var.addressed_to]<br />\n</span><br /> \n  [var.email_message]<br />\n  <br />\n  <br>\n<div style=\" border:#CCCCCC solid 1px; padding:8px;\"><strong>Dashboard Link </strong><span style=\"font-size:14px;\"><a href=\"[var.admin_dashboard_url]\">[var.admin_dashboard_url]</a></span></div>\n<br />\n</div>\n</div>', 'Project Notification', '<div style=\"height:7px; background-color:#535353\"></div>\n<div style=\"background-color:#f5f5f5; margin:0px; padding:55px 20px 40px 20px; font-family:Helvetica, sans-serif; font-size:13px; color:#535353;\">\n\n<div style=\"text-align:center; font-size:34px; font-weight:bold; color:#535353;\">  [var.email_title]</div>\n<div style=\"border-radius: 5px 5px 5px 5px; padding:20px; margin-top:45px; background-color:#FFFFFF; font-family:Arial, Helvetica, sans-serif; font-size:13px;\"><span style=\"font-weight:bold;\">[var.addressed_to]<br />\n</span><br /> \n  [var.email_message]<br />\n  <br />\n  <br>\n<div style=\" border:#CCCCCC solid 1px; padding:8px;\"><strong>Dashboard Link </strong><span style=\"font-size:14px;\"><a href=\"[var.admin_dashboard_url]\">[var.admin_dashboard_url]</a></span></div>\n<br />\n</div>\n</div>', '[var.company_email_signature], [var.todays_date], [var.client_dashboard_url], [var.notification_message]', 'admin', ''),
(13, 'new_client_admin', 'lang_new_client', 'New Client Added', '<div style=\"height:7px; background-color:#535353\">&nbsp;</div>\n\n<div style=\"background-color:#f5f5f5; margin:0px; padding:55px 20px 40px 20px; font-family:Helvetica, sans-serif; font-size:13px; color:#535353;\">\n<div style=\"text-align:center; font-size:34px; font-weight:bold; color:#535353;\">New Client</div>\n\n<div style=\"border-radius: 5px 5px 5px 5px; padding:20px; margin-top:45px; background-color:#FFFFFF; font-family:Arial, Helvetica, sans-serif; font-size:13px;\">Hello,<br />\n<br />\nA new client has just been added to the Project Management Dashboard<br />\n&nbsp;\n<table cellpadding=\"8\" style=\"border: 1px solid #DDDDDD; border-collapse: collapse; border-spacing: 0;font-size:13px;\" width=\"100%\">\n <tbody>\n  <tr>\n   <td style=\"border: 1px solid #DDDDDD;\" width=\"150\">Username</td>\n   <td style=\"border: 1px solid #DDDDDD;\" width=\"276\">[var.client_users_email]</td>\n  </tr>\n  <tr>\n   <td style=\"border: 1px solid #DDDDDD;\">Company Name</td>\n   <td style=\"border: 1px solid #DDDDDD;\">[var.clients_company_name]</td>\n  </tr>\n </tbody>\n</table>\n&nbsp;\n\n<div style=\" border:#CCCCCC solid 1px; padding:8px;\"><strong>Dashboard Link </strong><span style=\"font-size:14px;\"><a href=\"[var.admin_dashboard_url]\">[var.admin_dashboard_url]</a></div><br />\n[var.company_email_signature]\n</div>\n</div>', 'New Client Added', '<div style=\"height:7px; background-color:#535353\">&nbsp;</div>\n\n<div style=\"background-color:#f5f5f5; margin:0px; padding:55px 20px 40px 20px; font-family:Helvetica, sans-serif; font-size:13px; color:#535353;\">\n<div style=\"text-align:center; font-size:34px; font-weight:bold; color:#535353;\">New Client</div>\n\n<div style=\"border-radius: 5px 5px 5px 5px; padding:20px; margin-top:45px; background-color:#FFFFFF; font-family:Arial, Helvetica, sans-serif; font-size:13px;\">Hello,<br />\n<br />\nA new client has just been added to the Project Management Dashboard<br />\n&nbsp;\n<table cellpadding=\"8\" style=\"border: 1px solid #DDDDDD; border-collapse: collapse; border-spacing: 0;font-size:13px;\" width=\"100%\">\n <tbody>\n  <tr>\n   <td style=\"border: 1px solid #DDDDDD;\" width=\"150\">Username</td>\n   <td style=\"border: 1px solid #DDDDDD;\" width=\"276\">[var.client_users_email]</td>\n  </tr>\n  <tr>\n   <td style=\"border: 1px solid #DDDDDD;\">Company Name</td>\n   <td style=\"border: 1px solid #DDDDDD;\">[var.clients_company_name]</td>\n  </tr>\n </tbody>\n</table>\n&nbsp;\n\n<div style=\" border:#CCCCCC solid 1px; padding:8px;\"><strong>Dashboard Link </strong><span style=\"font-size:14px;\"><a href=\"[var.admin_dashboard_url]\">[var.admin_dashboard_url]</a></div><br />\n[var.company_email_signature]\n</div>\n</div>', '[var.clients_company_name], [var.client_users_full_name], [var.client_users_email], [var.client_users_password], [var.company_email_signature], [var.todays_date], [var.admin_dashboard_url]', 'admin', ''),
(15, 'new_project_admin', 'lang_new_project', 'New Project Created', '<div style=\"height:7px; background-color:#535353\"></div>\n<div style=\"background-color:#f5f5f5; margin:0px; padding:55px 20px 40px 20px; font-family:Helvetica, sans-serif; font-size:13px; color:#535353;\">\n\n<div style=\"text-align:center; font-size:34px; font-weight:bold; color:#535353;\">NEW PROJECT</div>\n<div style=\"text-align:center; font-size:24px; font-weight:bold; color:#535353;\">[var.projects_title]</div>\n<div style=\"border-radius: 5px 5px 5px 5px; padding:20px; margin-top:45px; background-color:#FFFFFF; font-family:Arial, Helvetica, sans-serif; font-size:13px;\"><span class=\"style1\"><span style=\"font-weight:bold;\"> [var.team_profile_full_name]<br />\n</span></span><br /> \n  A new project has been added to the Project Dashboard<br />\n  <br />\n  <table width=\"100%\" cellpadding=\"8\" style=\"border: 1px solid #DDDDDD; border-collapse: collapse; border-spacing: 0;font-size:13px;\">\n    <tr>\n      <td width=\"150\" style=\"border: 1px solid #DDDDDD;\">Project Title</td>\n<td width=\"276\" style=\"border: 1px solid #DDDDDD;\">[var.projects_title]</td>\n    </tr>\n    <tr>\n      <td style=\"border: 1px solid #DDDDDD;\">Date Created</td>\n      <td style=\"border: 1px solid #DDDDDD;\">[var.projects_date_created]</td>\n    </tr>\n    <tr>\n      <td style=\"border: 1px solid #DDDDDD;\">Anticipated Completion Date</td>\n      <td style=\"border: 1px solid #DDDDDD;\">[var.project_deadline]</td>\n    </tr>\n    <tr>\n      <td bgcolor=\"#F5F5F5\" style=\"border: 1px solid #DDDDDD;\"><strong>Project ID</strong></td>\n      <td bgcolor=\"#F5F5F5\" style=\"border: 1px solid #DDDDDD;\"><strong>[var.projects_id]</strong></td>\n    </tr>\n  </table>\n  <br />\n  <div style=\" border:#CCCCCC solid 1px; padding:8px;\"><strong> Dashboard Link </strong><span style=\"font-size:14px;\"><a href=\"[var.admin_dashboard_url]\">[var.admin_dashboard_url]</a></span></div><br />\n[var.company_email_signature]\n</div>\n</div>', 'New Project Created', '<div style=\"height:7px; background-color:#535353\"></div>\n<div style=\"background-color:#f5f5f5; margin:0px; padding:55px 20px 40px 20px; font-family:Helvetica, sans-serif; font-size:13px; color:#535353;\">\n\n<div style=\"text-align:center; font-size:34px; font-weight:bold; color:#535353;\">NEW PROJECT</div>\n<div style=\"text-align:center; font-size:24px; font-weight:bold; color:#535353;\">[var.projects_title]</div>\n<div style=\"border-radius: 5px 5px 5px 5px; padding:20px; margin-top:45px; background-color:#FFFFFF; font-family:Arial, Helvetica, sans-serif; font-size:13px;\"><span class=\"style1\"><span style=\"font-weight:bold;\"> [var.team_profile_full_name]<br />\n</span></span><br /> \n  A new project has been added to the Project Dashboard<br />\n  <br />\n  <table width=\"100%\" cellpadding=\"8\" style=\"border: 1px solid #DDDDDD; border-collapse: collapse; border-spacing: 0;font-size:13px;\">\n    <tr>\n      <td width=\"150\" style=\"border: 1px solid #DDDDDD;\">Project Title</td>\n<td width=\"276\" style=\"border: 1px solid #DDDDDD;\">[var.projects_title]</td>\n    </tr>\n    <tr>\n      <td style=\"border: 1px solid #DDDDDD;\">Date Created</td>\n      <td style=\"border: 1px solid #DDDDDD;\">[var.projects_date_created]</td>\n    </tr>\n    <tr>\n      <td style=\"border: 1px solid #DDDDDD;\">Anticipated Completion Date</td>\n      <td style=\"border: 1px solid #DDDDDD;\">[var.project_deadline]</td>\n    </tr>\n    <tr>\n      <td bgcolor=\"#F5F5F5\" style=\"border: 1px solid #DDDDDD;\"><strong>Project ID</strong></td>\n      <td bgcolor=\"#F5F5F5\" style=\"border: 1px solid #DDDDDD;\"><strong>[var.projects_id]</strong></td>\n    </tr>\n  </table>\n  <br />\n  <div style=\" border:#CCCCCC solid 1px; padding:8px;\"><strong> Dashboard Link </strong><span style=\"font-size:14px;\"><a href=\"[var.admin_dashboard_url]\">[var.admin_dashboard_url]</a></span></div><br />\n[var.company_email_signature]\n</div>\n</div>', '[var.clients_company_name], [var.client_users_full_name], [var.todays_date], [var.company_email_signature], [var.client_dashboard_url], [var.projects_title], [var.projects_date_created], [var.project_deadline], [var.project_link], [var.team_profile_full_name]', 'admin', ''),
(16, 'new_user_admin', 'lang_new_user', 'New Client User', '<div style=\"height:7px; background-color:#535353\"></div>\n<div style=\"background-color:#f5f5f5; margin:0px; padding:55px 20px 40px 20px; font-family:Helvetica, sans-serif; font-size:13px; color:#535353;\">\n  <div style=\"text-align:center; font-size:34px; font-weight:bold; color:#535353;\">New Client User</div>\n  <div style=\"border-radius: 5px 5px 5px 5px; padding:20px; margin-top:45px; background-color:#FFFFFF; font-family:Arial, Helvetica, sans-serif; font-size:13px;\"> A new Client User  has just been added to the Project Dashboard<br />\n    <br />\n    Below are the user\'s login details<br />\n    <br>\n    <table width=\"100%\" cellpadding=\"8\" style=\"border: 1px solid #DDDDDD; border-collapse: collapse; border-spacing: 0;font-size:13px;\">\n      <tr>\n        <td style=\"border: 1px solid #DDDDDD;\">Client Name</td>\n        <td style=\"border: 1px solid #DDDDDD;\">[var.clients_company_name]</td>\n      </tr>\n      <tr>\n        <td style=\"border: 1px solid #DDDDDD;\">New Users Name</td>\n        <td style=\"border: 1px solid #DDDDDD;\">[var.client_users_full_name]</td>\n      </tr>\n      <tr>\n        <td width=\"150\" style=\"border: 1px solid #DDDDDD;\">New Users Email</td>\n        <td width=\"276\" style=\"border: 1px solid #DDDDDD;\">[var.client_users_email]</td>\n      </tr>\n    </table>\n    <br>\n    <div style=\" border:#CCCCCC solid 1px; padding:8px;\"><strong>Dashboard Link </strong><span style=\"font-size:14px;\"><a href=\"[var.admin_dashboard_url]\">[var.admin_dashboard_url]</a> </div>\n  </div>\n</div>', 'Dashboard Login Details', '<div style=\"height:7px; background-color:#535353\"></div>\n<div style=\"background-color:#f5f5f5; margin:0px; padding:55px 20px 40px 20px; font-family:Helvetica, sans-serif; font-size:13px; color:#535353;\">\n  <div style=\"text-align:center; font-size:34px; font-weight:bold; color:#535353;\">New Client User</div>\n  <div style=\"border-radius: 5px 5px 5px 5px; padding:20px; margin-top:45px; background-color:#FFFFFF; font-family:Arial, Helvetica, sans-serif; font-size:13px;\"> A new Client User  has just been added to the Project Dashboard<br />\n    <br />\n    Below are the user\'s login details<br />\n    <br>\n    <table width=\"100%\" cellpadding=\"8\" style=\"border: 1px solid #DDDDDD; border-collapse: collapse; border-spacing: 0;font-size:13px;\">\n      <tr>\n        <td style=\"border: 1px solid #DDDDDD;\">Client Name</td>\n        <td style=\"border: 1px solid #DDDDDD;\">[var.clients_company_name]</td>\n      </tr>\n      <tr>\n        <td style=\"border: 1px solid #DDDDDD;\">New Users Name</td>\n        <td style=\"border: 1px solid #DDDDDD;\">[var.client_users_full_name]</td>\n      </tr>\n      <tr>\n        <td width=\"150\" style=\"border: 1px solid #DDDDDD;\">New Users Email</td>\n        <td width=\"276\" style=\"border: 1px solid #DDDDDD;\">[var.client_users_email]</td>\n      </tr>\n    </table>\n    <br>\n    <div style=\" border:#CCCCCC solid 1px; padding:8px;\"><strong>Dashboard Link </strong><span style=\"font-size:14px;\"><a href=\"[var.admin_dashboard_url]\">[var.admin_dashboard_url]</a> </div>\n  </div>\n</div>', '[var.client_users_email], [var.clients_company_name], [var.client_users_name], [var.company_email_signature], [var.str_todays_date], [var.str_client_dashboard_url]', 'admin', 'completed & tested'),
(17, 'password_reset_client', 'lang_reset_password', 'Reset Password', '<div style=\"height:7px; background-color:#535353\"></div>\n<div style=\"background-color:#f5f5f5; margin:0px; padding:55px 20px 40px 20px; font-family:Helvetica, sans-serif; font-size:13px; color:#535353;\">\n\n<div style=\"text-align:center; font-size:34px; font-weight:bold; color:#535353;\">Password Reset</div>\n<div style=\"border-radius: 5px 5px 5px 5px; padding:20px; margin-top:45px; background-color:#FFFFFF; font-family:Arial, Helvetica, sans-serif; font-size:13px;\"><span class=\"style1\"><span style=\"font-weight:bold;\">Hello [var.client_users_full_name]<br />\n</span></span><br /> \n  You have requeste to reset your password. You can reset you password using the link below.<br />\n  <br />\n  This link will expire after <strong>30 Minutes</strong>.<br />\n  <br />\n  If you have not requested this email please notify us.<br />\n<br>\n<div style=\" border:#CCCCCC solid 1px; padding:8px;\"><strong>Password reset link: </strong><span style=\"font-size:14px;\"><a href=\"[var.password_reset_link]\">[var.password_reset_link]</a>\n</div><br />\n[var.company_email_signature]\n</div></div>', 'Reset Password', '<div style=\"height:7px; background-color:#535353\"></div>\n<div style=\"background-color:#f5f5f5; margin:0px; padding:55px 20px 40px 20px; font-family:Helvetica, sans-serif; font-size:13px; color:#535353;\">\n\n<div style=\"text-align:center; font-size:34px; font-weight:bold; color:#535353;\">Password Reset</div>\n<div style=\"border-radius: 5px 5px 5px 5px; padding:20px; margin-top:45px; background-color:#FFFFFF; font-family:Arial, Helvetica, sans-serif; font-size:13px;\"><span class=\"style1\"><span style=\"font-weight:bold;\">Hello [var.client_users_full_name]<br />\n</span></span><br /> \n  You have requeste to reset your password. You can reset you password using the link below.<br />\n  <br />\n  This link will expire after <strong>30 Minutes</strong>.<br />\n  <br />\n  If you have not requested this email please notify us.<br />\n<br>\n<div style=\" border:#CCCCCC solid 1px; padding:8px;\"><strong>Password reset link: </strong><span style=\"font-size:14px;\"><a href=\"[var.password_reset_link]\">[var.password_reset_link]</a>\n</div><br />\n[var.company_email_signature]\n</div></div>', '[var.password_reset_link], [var.company_email_signature], [var.str_todays_date], [var.str_client_dashboard_url], [var.client_users_full_name]', 'client', 'completed & tested'),
(18, 'password_reset_admin', 'lang_reset_password', 'Reset Password', '<div style=\"height:7px; background-color:#535353\"></div>\n<div style=\"background-color:#f5f5f5; margin:0px; padding:55px 20px 40px 20px; font-family:Helvetica, sans-serif; font-size:13px; color:#535353;\">\n\n<div style=\"text-align:center; font-size:34px; font-weight:bold; color:#535353;\">Password Reset</div>\n<div style=\"border-radius: 5px 5px 5px 5px; padding:20px; margin-top:45px; background-color:#FFFFFF; font-family:Arial, Helvetica, sans-serif; font-size:13px;\"><span class=\"style1\"><span style=\"font-weight:bold;\">[var.team_profile_full_name]<br />\n</span></span><br /> \n  You have requeste to reset your password. You can reset you password using the link below.<br />\n  <br />\n  This link will expire after <strong>30 Minutes</strong>.<br />\n  <br />\n  If you have not requested this email please notify us.<br />\n<br>\n<div style=\" border:#CCCCCC solid 1px; padding:8px;\"><strong>Password reset link: </strong><span style=\"font-size:14px;\"><a href=\"[var.password_reset_link]\">[var.password_reset_link]</a>\n</div><br />\n    [var.company_email_signature]\n</div></div>', 'Reset Password', '<div style=\"height:7px; background-color:#535353\"></div>\n<div style=\"background-color:#f5f5f5; margin:0px; padding:55px 20px 40px 20px; font-family:Helvetica, sans-serif; font-size:13px; color:#535353;\">\n\n<div style=\"text-align:center; font-size:34px; font-weight:bold; color:#535353;\">Password Reset</div>\n<div style=\"border-radius: 5px 5px 5px 5px; padding:20px; margin-top:45px; background-color:#FFFFFF; font-family:Arial, Helvetica, sans-serif; font-size:13px;\"><span class=\"style1\"><span style=\"font-weight:bold;\">[var.team_profile_full_name]<br />\n</span></span><br /> \n  You have requeste to reset your password. You can reset you password using the link below.<br />\n  <br />\n  This link will expire after <strong>30 Minutes</strong>.<br />\n  <br />\n  If you have not requested this email please notify us.<br />\n<br>\n<div style=\" border:#CCCCCC solid 1px; padding:8px;\"><strong>Password reset link: </strong><span style=\"font-size:14px;\"><a href=\"[var.password_reset_link]\">[var.password_reset_link]</a>\n</div><br />\n    [var.company_email_signature]\n</div></div>', '[var.password_reset_link], [var.team_profile_full_name], [var.company_email_signature], [var.str_todays_date], [var.str_client_dashboard_url]', 'admin', ''),
(19, 'new_quotation_client', 'lang_new_quotation', 'Your Quotation Request', '<div style=\"height:7px; background-color:#535353\">&nbsp;</div>\n\n<div style=\"background-color:#f5f5f5; margin:0px; padding:55px 20px 40px 20px; font-family:Helvetica, sans-serif; font-size:13px; color:#535353;\">\n<div style=\"text-align:center; font-size:34px; font-weight:bold; color:#535353;\">QUOTATION</div>\n\n<div style=\"border-radius: 5px 5px 5px 5px; padding:20px; margin-top:45px; background-color:#FFFFFF; font-family:Arial, Helvetica, sans-serif; font-size:13px;\"><strong>[var.client_users_full_name]</strong><br />\n<br />\nThank you for you for filling in our Quotation Request Form.<br />\n<br />\nPlease find below are our quotation:<br />\n&nbsp;\n<table cellpadding=\"8\" style=\"border: 1px solid #DDDDDD; border-collapse: collapse; border-spacing: 0;font-size:13px;\" width=\"100%\">\n <tbody>\n  <tr>\n   <td style=\"border: 1px solid #DDDDDD;\" width=\"150\">Quotation Date</td>\n   <td style=\"border: 1px solid #DDDDDD;\" width=\"276\">[var.todays_date]</td>\n  </tr>\n  <tr>\n   <td style=\"border: 1px solid #DDDDDD;\">Our Quotation</td>\n   <td style=\"border: 1px solid #DDDDDD;\"><strong>[var.currency_symbol][var.quotation_amount]</strong></td>\n  </tr>\n  <tr>\n   <td bgcolor=\"#F5F5F5\" style=\"border: 1px solid #DDDDDD;\">Addtitional Comments</td>\n   <td bgcolor=\"#F5F5F5\" style=\"border: 1px solid #DDDDDD;\">[var.quotation_notes]</td>\n  </tr>\n </tbody>\n</table>\n<br />\nThank you and we look forward to working with you.<br />\n<br />\n[var.company_email_signature]</div>\n</div>', 'Your Quotation Request', '<div style=\"height:7px; background-color:#535353\">&nbsp;</div>\n\n<div style=\"background-color:#f5f5f5; margin:0px; padding:55px 20px 40px 20px; font-family:Helvetica, sans-serif; font-size:13px; color:#535353;\">\n<div style=\"text-align:center; font-size:34px; font-weight:bold; color:#535353;\">QUOTATION</div>\n\n<div style=\"border-radius: 5px 5px 5px 5px; padding:20px; margin-top:45px; background-color:#FFFFFF; font-family:Arial, Helvetica, sans-serif; font-size:13px;\"><strong>[var.client_users_full_name]</strong><br />\n<br />\nThank you for you for filling in our Quotation Request Form.<br />\n<br />\nPlease find below are our quotation:<br />\n&nbsp;\n<table cellpadding=\"8\" style=\"border: 1px solid #DDDDDD; border-collapse: collapse; border-spacing: 0;font-size:13px;\" width=\"100%\">\n <tbody>\n  <tr>\n   <td style=\"border: 1px solid #DDDDDD;\" width=\"150\">Quotation Date</td>\n   <td style=\"border: 1px solid #DDDDDD;\" width=\"276\">[var.todays_date]</td>\n  </tr>\n  <tr>\n   <td style=\"border: 1px solid #DDDDDD;\">Our Quotation</td>\n   <td style=\"border: 1px solid #DDDDDD;\"><strong>[var.currency_symbol][var.quotation_amount]</strong></td>\n  </tr>\n  <tr>\n   <td bgcolor=\"#F5F5F5\" style=\"border: 1px solid #DDDDDD;\">Addtitional Comments</td>\n   <td bgcolor=\"#F5F5F5\" style=\"border: 1px solid #DDDDDD;\">[var.quotation_notes]</td>\n  </tr>\n </tbody>\n</table>\n<br />\nThank you and we look forward to working with you.<br />\n<br />\n[var.company_email_signature]</div>\n</div>', '[var.client_users_full_name],[var.currency_symbol], [var.quotation_amount], [var.quotation_notes],[var.company_email_signature], [var.todays_date], [var.client_dashboard_url]', 'client', 'completed & tested'),
(20, 'new_payment_admin', 'lang_new_payment', 'New Payment Received', '<div style=\"height:7px; background-color:#535353\">&nbsp;</div>\n\n<div style=\"background-color:#f5f5f5; margin:0px; padding:55px 20px 40px 20px; font-family:Helvetica, sans-serif; font-size:13px; color:#535353;\">\n<div style=\"text-align:center; font-size:34px; font-weight:bold; color:#535353;\">New Payment</div>\n\n<div style=\"border-radius: 5px 5px 5px 5px; padding:20px; margin-top:45px; background-color:#FFFFFF; font-family:Arial, Helvetica, sans-serif; font-size:13px;\">Hello,<br />\n<br />\nA new payment has been made.<br />\n&nbsp;\n<table cellpadding=\"8\" style=\"border: 1px solid #DDDDDD; border-collapse: collapse; border-spacing: 0;font-size:13px;\" width=\"100%\">\n <tbody>\n  <tr>\n   <td style=\"border: 1px solid #DDDDDD;\" width=\"150\">Client Name</td>\n   <td style=\"border: 1px solid #DDDDDD;\" width=\"276\">[var.clients_company_name]</td>\n  </tr>\n  <tr>\n    <td style=\"border: 1px solid #DDDDDD;\">Invoice ID</td>\n    <td style=\"border: 1px solid #DDDDDD;\">[var.invoice_id]</td>\n  </tr>\n  <tr>\n    <td style=\"border: 1px solid #DDDDDD;\">Transaction ID</td>\n    <td style=\"border: 1px solid #DDDDDD;\">[var.transaction_id]</td>\n  </tr>\n  <tr>\n   <td style=\"border: 1px solid #DDDDDD;\">Amount</td>\n   <td style=\"border: 1px solid #DDDDDD;\">[var.amount]</td>\n  </tr>\n  <tr>\n    <td style=\"border: 1px solid #DDDDDD;\">Currency</td>\n    <td style=\"border: 1px solid #DDDDDD;\">[var.currency]</td>\n  </tr>\n </tbody>\n</table>\n</div>\n</div>', 'New Payment Received', '<div style=\"height:7px; background-color:#535353\">&nbsp;</div>\n\n<div style=\"background-color:#f5f5f5; margin:0px; padding:55px 20px 40px 20px; font-family:Helvetica, sans-serif; font-size:13px; color:#535353;\">\n<div style=\"text-align:center; font-size:34px; font-weight:bold; color:#535353;\">New Payment</div>\n\n<div style=\"border-radius: 5px 5px 5px 5px; padding:20px; margin-top:45px; background-color:#FFFFFF; font-family:Arial, Helvetica, sans-serif; font-size:13px;\">Hello,<br />\n<br />\nA new payment has been made.<br />\n&nbsp;\n<table cellpadding=\"8\" style=\"border: 1px solid #DDDDDD; border-collapse: collapse; border-spacing: 0;font-size:13px;\" width=\"100%\">\n <tbody>\n  <tr>\n   <td style=\"border: 1px solid #DDDDDD;\" width=\"150\">Client Name</td>\n   <td style=\"border: 1px solid #DDDDDD;\" width=\"276\">[var.clients_company_name]</td>\n  </tr>\n  <tr>\n    <td style=\"border: 1px solid #DDDDDD;\">Invoice ID</td>\n    <td style=\"border: 1px solid #DDDDDD;\">[var.invoice_id]</td>\n  </tr>\n  <tr>\n    <td style=\"border: 1px solid #DDDDDD;\">Transaction ID</td>\n    <td style=\"border: 1px solid #DDDDDD;\">[var.transaction_id]</td>\n  </tr>\n  <tr>\n   <td style=\"border: 1px solid #DDDDDD;\">Amount</td>\n   <td style=\"border: 1px solid #DDDDDD;\">[var.amount]</td>\n  </tr>\n  <tr>\n    <td style=\"border: 1px solid #DDDDDD;\">Currency</td>\n    <td style=\"border: 1px solid #DDDDDD;\">[var.currency]</td>\n  </tr>\n </tbody>\n</table>\n</div>\n</div>', '[var.clients_company_name], [var.invoice_id], [var.transaction_id], [var.amount], [var.currency]', 'admin', ''),
(22, 'new_team_member', 'lang_new_team_member', 'Your Dashboard Account Details', '<div style=\"height:7px; background-color:#535353\"></div>\n<div style=\"background-color:#f5f5f5; margin:0px; padding:55px 20px 40px 20px; font-family:Helvetica, sans-serif; font-size:13px; color:#535353;\">\n  <div style=\"text-align:center; font-size:34px; font-weight:bold; color:#535353;\">Welcome<br>\n  - account details -</div>\n  <div style=\"border-radius: 5px 5px 5px 5px; padding:20px; margin-top:45px; background-color:#FFFFFF; font-family:Arial, Helvetica, sans-serif; font-size:13px;\">[var.team_profile_full_name]<br />\n    <br />\n    Below are your new Dashboard login details<br />\n    <br>\n    <table width=\"100%\" cellpadding=\"8\" style=\"border: 1px solid #DDDDDD; border-collapse: collapse; border-spacing: 0;font-size:13px;\">\n      <tr>\n        <td style=\"border: 1px solid #DDDDDD;\">Username</td>\n        <td style=\"border: 1px solid #DDDDDD;\">[var.team_profile_email]</td>\n      </tr>\n      <tr>\n        <td width=\"150\" style=\"border: 1px solid #DDDDDD;\">Password</td>\n        <td width=\"276\" style=\"border: 1px solid #DDDDDD;\">[var.team_profile_password]</td>\n      </tr>\n    </table>\n    <br>\n    <div style=\" border:#CCCCCC solid 1px; padding:8px;\"><strong>Dashboard Link </strong><span style=\"font-size:14px;\"><a href=\"[var.admin_dashboard_url]\">[var.admin_dashboard_url]</a> </div>\n  </div>\n</div>', 'Your Dashboard Account Details', '<div style=\"height:7px; background-color:#535353\"></div>\n<div style=\"background-color:#f5f5f5; margin:0px; padding:55px 20px 40px 20px; font-family:Helvetica, sans-serif; font-size:13px; color:#535353;\">\n  <div style=\"text-align:center; font-size:34px; font-weight:bold; color:#535353;\">Welcome<br>\n  - account details -</div>\n  <div style=\"border-radius: 5px 5px 5px 5px; padding:20px; margin-top:45px; background-color:#FFFFFF; font-family:Arial, Helvetica, sans-serif; font-size:13px;\">[var.team_profile_full_name]<br />\n    <br />\n    Below are your new Dashboard login details<br />\n    <br>\n    <table width=\"100%\" cellpadding=\"8\" style=\"border: 1px solid #DDDDDD; border-collapse: collapse; border-spacing: 0;font-size:13px;\">\n      <tr>\n        <td style=\"border: 1px solid #DDDDDD;\">Username</td>\n        <td style=\"border: 1px solid #DDDDDD;\">[var.team_profile_email]</td>\n      </tr>\n      <tr>\n        <td width=\"150\" style=\"border: 1px solid #DDDDDD;\">Password</td>\n        <td width=\"276\" style=\"border: 1px solid #DDDDDD;\">[var.team_profile_password]</td>\n      </tr>\n    </table>\n    <br>\n    <div style=\" border:#CCCCCC solid 1px; padding:8px;\"><strong>Dashboard Link </strong><span style=\"font-size:14px;\"><a href=\"[var.admin_dashboard_url]\">[var.admin_dashboard_url]</a> </div>\n  </div>\n</div>', '[var.team_profile_full_name], [var.team_profile_email],  [var.team_profile_password], [var.company_email_signature], [var.str_todays_date], [var.admin_dashboard_url]', 'admin', 'completed & tested');

-- --------------------------------------------------------

--
-- Table structure for table `settings_events`
--

CREATE TABLE `settings_events` (
  `settings_events_name` varchar(100) NOT NULL,
  `settings_events_enabled` varchar(5) NOT NULL DEFAULT 'yes'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `settings_general`
--

CREATE TABLE `settings_general` (
  `settings_id` varchar(30) NOT NULL DEFAULT 'default',
  `language` varchar(50) NOT NULL DEFAULT 'english',
  `theme` varchar(50) NOT NULL DEFAULT 'default',
  `date_format` varchar(30) NOT NULL DEFAULT 'm-d-Y',
  `results_limit` smallint(6) NOT NULL DEFAULT '25',
  `messages_limit` smallint(6) NOT NULL DEFAULT '10',
  `timeline_limit` smallint(6) NOT NULL DEFAULT '25',
  `currency_symbol` varchar(10) NOT NULL DEFAULT '$',
  `currency_code` varchar(20) NOT NULL DEFAULT 'USD',
  `dashboard_title` varchar(250) NOT NULL DEFAULT 'Project Manager',
  `show_information_tips` varchar(10) NOT NULL DEFAULT 'yes' COMMENT 'yes/no',
  `client_registration` varchar(10) NOT NULL DEFAULT 'yes' COMMENT 'yes/no',
  `notifications_display_duration` int(11) NOT NULL DEFAULT '350',
  `product_purchase_code` varchar(100) DEFAULT NULL,
  `restore_language` varchar(50) NOT NULL DEFAULT 'english',
  `restore_theme` varchar(50) NOT NULL DEFAULT 'default',
  `restore_date_format` varchar(30) NOT NULL DEFAULT 'm-d-Y',
  `restore_results_limit` smallint(6) NOT NULL DEFAULT '25',
  `restore_messages_limit` smallint(6) NOT NULL DEFAULT '10',
  `restore_timeline_limit` smallint(6) NOT NULL DEFAULT '25',
  `restore_currency_code` varchar(20) NOT NULL DEFAULT 'USD',
  `restore_currency_symbol` varchar(10) NOT NULL DEFAULT '$',
  `restore_dashboard_title` varchar(100) NOT NULL DEFAULT 'Project Manager',
  `restore_show_information_tips` varchar(10) NOT NULL DEFAULT 'yes',
  `restore_notifications_display_duration` int(11) NOT NULL DEFAULT '350',
  `restore_client_registration` varchar(10) NOT NULL DEFAULT 'yes',
  `restore_product_purchase_code` varchar(100) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `settings_general`
--

INSERT INTO `settings_general` (`settings_id`, `language`, `theme`, `date_format`, `results_limit`, `messages_limit`, `timeline_limit`, `currency_symbol`, `currency_code`, `dashboard_title`, `show_information_tips`, `client_registration`, `notifications_display_duration`, `product_purchase_code`, `restore_language`, `restore_theme`, `restore_date_format`, `restore_results_limit`, `restore_messages_limit`, `restore_timeline_limit`, `restore_currency_code`, `restore_currency_symbol`, `restore_dashboard_title`, `restore_show_information_tips`, `restore_notifications_display_duration`, `restore_client_registration`, `restore_product_purchase_code`) VALUES
('default', 'english', 'default', 'd-m-Y', 25, 10, 100, '$', 'USD', 'Tam Project Management', 'yes', 'yes', 4500, '', 'english', 'default', 'm-d-Y', 25, 10, 100, 'USD', '$', 'Project Dashboard', 'yes', 4500, 'yes', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `settings_invoices`
--

CREATE TABLE `settings_invoices` (
  `settings_id` varchar(30) NOT NULL,
  `settings_invoices_notes` text,
  `settings_invoices_allow_partial_payment` varchar(10) DEFAULT 'yes' COMMENT 'yes/no',
  `settings_invoices_email_overdue_reminder` varchar(10) DEFAULT 'yes' COMMENT 'yes/no'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `settings_invoices`
--

INSERT INTO `settings_invoices` (`settings_id`, `settings_invoices_notes`, `settings_invoices_allow_partial_payment`, `settings_invoices_email_overdue_reminder`) VALUES
('default', 'Payment is due upon receipt of the invoice. Thank you for your business.', 'yes', 'yes');

-- --------------------------------------------------------

--
-- Table structure for table `settings_payment_methods`
--

CREATE TABLE `settings_payment_methods` (
  `settings_payment_methods_name` varchar(100) NOT NULL COMMENT 'Unique ID: Also used in PAYMENTS table ''payments_method'' to identify payment method',
  `settings_payment_methods_status` varchar(20) NOT NULL COMMENT 'enabled/disabled'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `settings_payment_methods`
--

INSERT INTO `settings_payment_methods` (`settings_payment_methods_name`, `settings_payment_methods_status`) VALUES
('Paypal', 'enabled'),
('Cash', 'enabled'),
('Bank', 'disabled');

-- --------------------------------------------------------

--
-- Table structure for table `settings_paypal`
--

CREATE TABLE `settings_paypal` (
  `settings_id` varchar(20) NOT NULL COMMENT 'This Table: Has 1 default record (settings_id = default)',
  `paypal_active` varchar(10) DEFAULT 'no' COMMENT 'yes/no',
  `paypal_email_address` varchar(150) DEFAULT 'USD',
  `paypal_currency` varchar(10) DEFAULT NULL,
  `paypal_ipn_url` varchar(250) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `settings_paypal`
--

INSERT INTO `settings_paypal` (`settings_id`, `paypal_active`, `paypal_email_address`, `paypal_currency`, `paypal_ipn_url`) VALUES
('default', 'yes', 'paypal@somdomain.ccc', 'USD', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `setting_system`
--

CREATE TABLE `setting_system` (
  `setting_system_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `system_events`
--

CREATE TABLE `system_events` (
  `id` int(11) NOT NULL,
  `system_events_id` varchar(40) NOT NULL,
  `system_events_project_id` varchar(40) NOT NULL,
  `system_events_date` datetime NOT NULL,
  `events_item` varchar(100) NOT NULL COMMENT 'client,cron,invoice',
  `events_action` varchar(100) NOT NULL,
  `events_user_id` int(11) DEFAULT NULL,
  `event_user_type` varchar(30) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tasks`
--

CREATE TABLE `tasks` (
  `tasks_id` int(11) NOT NULL,
  `tasks_milestones_id` int(11) NOT NULL,
  `tasks_project_id` int(11) NOT NULL,
  `tasks_client_id` int(11) NOT NULL,
  `tasks_assigned_to_id` int(11) NOT NULL,
  `tasks_text` varchar(250) NOT NULL,
  `tasks_start_date` date NOT NULL,
  `tasks_end_date` date NOT NULL,
  `tasks_created_by_id` int(11) NOT NULL,
  `tasks_status` varchar(50) NOT NULL DEFAULT 'pending' COMMENT 'pending/completed/behind schedule',
  `tasks_events_id` varchar(40) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tasks`
--

INSERT INTO `tasks` (`tasks_id`, `tasks_milestones_id`, `tasks_project_id`, `tasks_client_id`, `tasks_assigned_to_id`, `tasks_text`, `tasks_start_date`, `tasks_end_date`, `tasks_created_by_id`, `tasks_status`, `tasks_events_id`) VALUES
(1, 4, 5, 8, 3, 'BANNER', '2017-12-07', '2017-12-08', 3, 'completed', 'SiQGdgiwbxk5MNO1UUZfQXMapLUwtMb8wAkBg7aT');

-- --------------------------------------------------------

--
-- Table structure for table `team_messages`
--

CREATE TABLE `team_messages` (
  `messages_id` int(11) NOT NULL,
  `messages_project_id` int(11) NOT NULL,
  `messages_date` datetime NOT NULL,
  `messages_text` text NOT NULL,
  `messages_by_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `team_messages_replies`
--

CREATE TABLE `team_messages_replies` (
  `messages_replies_id` int(11) NOT NULL,
  `messages_replies_project_id` int(11) NOT NULL,
  `messages_replies_message_id` int(11) NOT NULL,
  `messages_replies_date` datetime NOT NULL,
  `messages_replies_text` text NOT NULL,
  `messages_replies_by_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `team_notes`
--

CREATE TABLE `team_notes` (
  `team_notes_id` int(11) NOT NULL,
  `team_notes_project_id` int(11) NOT NULL,
  `team_notes_by_id` int(11) NOT NULL,
  `team_notes_date` datetime NOT NULL,
  `team_notes_notes` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `team_profile`
--

CREATE TABLE `team_profile` (
  `team_profile_id` int(11) NOT NULL COMMENT 'This table: Has 1 default row with placeholder admin',
  `team_profile_groups_id` int(11) NOT NULL,
  `team_profile_uniqueid` varchar(20) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `team_profile_avatar_filename` varchar(30) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `team_profile_full_name` varchar(50) NOT NULL,
  `team_profile_job_position_title` varchar(50) DEFAULT NULL,
  `team_profile_email` varchar(75) NOT NULL,
  `team_profile_password` varchar(50) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT 'case sensitive utf8_bin',
  `team_profile_telephone` varchar(50) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `team_profile_reset_code` varchar(50) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `team_profile_reset_timestamp` datetime DEFAULT NULL,
  `team_profile_notifications_system` varchar(10) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT 'yes' COMMENT 'yes/no',
  `team_profile_last_active` datetime DEFAULT NULL,
  `team_profile_notify_file_added` varchar(5) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT 'yes',
  `team_profile_notify_milestone_added` varchar(5) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT 'yes',
  `team_profile_notify_milestone_completed` varchar(5) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT 'yes',
  `team_profile_notify_file_message_added` varchar(5) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT 'yes',
  `team_profile_notify_message_added` varchar(5) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT 'yes',
  `team_profile_notify_team_message_added` varchar(5) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT 'yes',
  `team_profile_notify_invoice_added` varchar(5) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT 'no',
  `team_profile_notify_payment_received` varchar(5) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT 'no'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `team_profile`
--

INSERT INTO `team_profile` (`team_profile_id`, `team_profile_groups_id`, `team_profile_uniqueid`, `team_profile_avatar_filename`, `team_profile_full_name`, `team_profile_job_position_title`, `team_profile_email`, `team_profile_password`, `team_profile_telephone`, `team_profile_reset_code`, `team_profile_reset_timestamp`, `team_profile_notifications_system`, `team_profile_last_active`, `team_profile_notify_file_added`, `team_profile_notify_milestone_added`, `team_profile_notify_milestone_completed`, `team_profile_notify_file_message_added`, `team_profile_notify_message_added`, `team_profile_notify_team_message_added`, `team_profile_notify_invoice_added`, `team_profile_notify_payment_received`) VALUES
(1, 1, '59ea230c99cb5', '59ea230c99cb5.jpg', 'admin', 'Manager', 'pmt@tammanager.com', '9f6a3ef13b60b303099fe40335c8f106', '(000)-000-000-000', NULL, NULL, 'yes', '2017-12-28 16:59:27', 'yes', 'yes', 'yes', 'yes', 'yes', 'yes', 'yes', 'yes'),
(3, 4, '9d6LmdUmIE710I9apCAn', NULL, 'deepa', 'TL', '123@123.com', '25d55ad283aa400af464c76d713c07ad', '1234567891', NULL, NULL, 'yes', '2017-12-07 11:57:07', 'yes', 'yes', 'yes', 'yes', 'yes', 'yes', 'no', 'no');

-- --------------------------------------------------------

--
-- Table structure for table `tickets`
--

CREATE TABLE `tickets` (
  `tickets_id` int(11) NOT NULL,
  `tickets_department_id` int(11) NOT NULL,
  `tickets_assigned_to_id` int(11) NOT NULL DEFAULT '0' COMMENT 'un-assigned tickets have ''0'' value',
  `tickets_date` datetime NOT NULL,
  `tickets_title` varchar(250) NOT NULL,
  `tickets_message` text NOT NULL,
  `tickets_client_id` int(11) NOT NULL,
  `tickets_by_user_id` int(11) NOT NULL,
  `tickets_by_user_type` varchar(20) NOT NULL COMMENT 'client/team',
  `tickets_last_active_date` datetime NOT NULL,
  `tickets_status` varchar(20) NOT NULL DEFAULT 'new' COMMENT 'new/answered/client-replied/closed',
  `tickets_file_name` varchar(250) DEFAULT NULL,
  `tickets_file_folder` varchar(250) DEFAULT NULL,
  `tickets_file_size` varchar(250) DEFAULT NULL,
  `tickets_file_extension` varchar(250) DEFAULT NULL,
  `tickets_has_attachment` varchar(250) DEFAULT 'no'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tickets`
--

INSERT INTO `tickets` (`tickets_id`, `tickets_department_id`, `tickets_assigned_to_id`, `tickets_date`, `tickets_title`, `tickets_message`, `tickets_client_id`, `tickets_by_user_id`, `tickets_by_user_type`, `tickets_last_active_date`, `tickets_status`, `tickets_file_name`, `tickets_file_folder`, `tickets_file_size`, `tickets_file_extension`, `tickets_has_attachment`) VALUES
(2, 1, 1, '2017-11-12 06:51:17', 'This is the title', 'Some data here', 2, 1, 'team', '2017-11-12 06:51:17', 'answered', '', '', '', '', 'no');

-- --------------------------------------------------------

--
-- Table structure for table `tickets_departments`
--

CREATE TABLE `tickets_departments` (
  `department_id` int(11) NOT NULL COMMENT 'This Table: Has 1 default row. General Support department',
  `department_name` varchar(100) NOT NULL,
  `department_description` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tickets_departments`
--

INSERT INTO `tickets_departments` (`department_id`, `department_name`, `department_description`) VALUES
(1, 'General Support', 'none');

-- --------------------------------------------------------

--
-- Table structure for table `tickets_mailer`
--

CREATE TABLE `tickets_mailer` (
  `tickets_mailer_id` int(11) NOT NULL COMMENT 'default',
  `tickets_mailer_enabled` varchar(50) DEFAULT 'no' COMMENT 'yes/no',
  `tickets_mailer_delete_read` varchar(50) DEFAULT 'yes' COMMENT 'yes/no',
  `tickets_mailer_imap_pop` varchar(50) DEFAULT 'IMAP' COMMENT 'IMAP/POP',
  `tickets_mailer_ssl` varchar(50) DEFAULT 'no' COMMENT 'yes/no',
  `tickets_mailer_email_address` varchar(100) DEFAULT NULL,
  `tickets_mailer_server` varchar(100) DEFAULT 'localhost',
  `tickets_mailer_server_port` varchar(50) DEFAULT '143',
  `tickets_mailer_username` varchar(100) DEFAULT NULL,
  `tickets_mailer_password` varchar(250) DEFAULT NULL,
  `tickets_mailer_flags` varchar(250) DEFAULT NULL,
  `tickets_mailer_imap_settings` varchar(250) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tickets_mailer`
--

INSERT INTO `tickets_mailer` (`tickets_mailer_id`, `tickets_mailer_enabled`, `tickets_mailer_delete_read`, `tickets_mailer_imap_pop`, `tickets_mailer_ssl`, `tickets_mailer_email_address`, `tickets_mailer_server`, `tickets_mailer_server_port`, `tickets_mailer_username`, `tickets_mailer_password`, `tickets_mailer_flags`, `tickets_mailer_imap_settings`) VALUES
(0, 'no', 'no', 'IMAP', 'no', 'foo@somadomain.ccc', 'mail.foobar.com', '100', 'foo', 'bar', 'NONE', 'CODE');

-- --------------------------------------------------------

--
-- Table structure for table `tickets_replies`
--

CREATE TABLE `tickets_replies` (
  `tickets_replies_id` int(11) NOT NULL,
  `tickets_replies_ticket_id` int(11) NOT NULL DEFAULT '0' COMMENT 'un-assigned ticket_replies have ''0'' value',
  `tickets_replies_date` datetime NOT NULL,
  `tickets_replies_message` text NOT NULL,
  `tickets_replies_by_user_id` int(11) NOT NULL,
  `tickets_replies_by_user_type` varchar(20) NOT NULL COMMENT 'client/team',
  `tickets_replies_file_name` varchar(250) DEFAULT NULL,
  `tickets_replies_file_folder` varchar(250) DEFAULT NULL,
  `tickets_replies_file_size` varchar(250) DEFAULT NULL,
  `tickets_replies_file_extension` varchar(250) DEFAULT NULL,
  `tickets_replies_has_attachment` varchar(250) DEFAULT 'no'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `timer`
--

CREATE TABLE `timer` (
  `timer_id` int(11) NOT NULL,
  `timer_project_id` int(11) NOT NULL,
  `timer_start_datetime` datetime DEFAULT NULL,
  `timer_seconds` int(11) DEFAULT '0',
  `timer_team_member_id` int(11) DEFAULT NULL,
  `timer_status` varchar(30) DEFAULT 'stopped' COMMENT 'running/stopped'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `timer`
--

INSERT INTO `timer` (`timer_id`, `timer_project_id`, `timer_start_datetime`, `timer_seconds`, `timer_team_member_id`, `timer_status`) VALUES
(2, 2, '2017-11-23 14:37:56', 43284, 1, 'stopped'),
(3, 3, '2017-11-23 18:50:46', 1227926, 1, 'running'),
(4, 4, '2017-12-28 16:58:46', 3579049, 1, 'running'),
(5, 5, '2017-12-27 17:11:28', 30, 1, 'running'),
(6, 5, '2017-12-07 11:54:05', 18147, 3, 'stopped'),
(7, 5, '2017-12-15 08:55:52', 0, 9, 'stopped');

-- --------------------------------------------------------

--
-- Table structure for table `version`
--

CREATE TABLE `version` (
  `id` varchar(30) CHARACTER SET latin1 NOT NULL COMMENT 'This table: Has 1 default row after installation or update',
  `version` varchar(20) CHARACTER SET latin1 NOT NULL,
  `date_installed` datetime NOT NULL,
  `install_type` varchar(20) CHARACTER SET latin1 NOT NULL COMMENT 'new/update'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `version`
--

INSERT INTO `version` (`id`, `version`, `date_installed`, `install_type`) VALUES
('default', '1.05', '2017-10-20 21:53:40', 'new');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `bugs`
--
ALTER TABLE `bugs`
  ADD PRIMARY KEY (`bugs_id`);

--
-- Indexes for table `ci_sessions`
--
ALTER TABLE `ci_sessions`
  ADD PRIMARY KEY (`session_id`),
  ADD KEY `last_activity_idx` (`last_activity`);

--
-- Indexes for table `clients`
--
ALTER TABLE `clients`
  ADD PRIMARY KEY (`clients_id`);

--
-- Indexes for table `client_users`
--
ALTER TABLE `client_users`
  ADD PRIMARY KEY (`client_users_id`);

--
-- Indexes for table `email_queue`
--
ALTER TABLE `email_queue`
  ADD PRIMARY KEY (`email_queue_id`);

--
-- Indexes for table `filedownloads`
--
ALTER TABLE `filedownloads`
  ADD PRIMARY KEY (`filedownloads_id`);

--
-- Indexes for table `files`
--
ALTER TABLE `files`
  ADD PRIMARY KEY (`files_id`);

--
-- Indexes for table `file_comments`
--
ALTER TABLE `file_comments`
  ADD PRIMARY KEY (`file_comments_id`);

--
-- Indexes for table `file_messages`
--
ALTER TABLE `file_messages`
  ADD PRIMARY KEY (`messages_id`);

--
-- Indexes for table `file_messages_replies`
--
ALTER TABLE `file_messages_replies`
  ADD PRIMARY KEY (`messages_replies_id`);

--
-- Indexes for table `groups`
--
ALTER TABLE `groups`
  ADD PRIMARY KEY (`groups_id`);

--
-- Indexes for table `invoices`
--
ALTER TABLE `invoices`
  ADD PRIMARY KEY (`invoices_id`),
  ADD UNIQUE KEY `invoices_unique_id` (`invoices_unique_id`);

--
-- Indexes for table `invoice_items`
--
ALTER TABLE `invoice_items`
  ADD PRIMARY KEY (`invoice_items_id`);

--
-- Indexes for table `invoice_products`
--
ALTER TABLE `invoice_products`
  ADD PRIMARY KEY (`invoice_products_id`);

--
-- Indexes for table `messages`
--
ALTER TABLE `messages`
  ADD PRIMARY KEY (`messages_id`);

--
-- Indexes for table `messages_replies`
--
ALTER TABLE `messages_replies`
  ADD PRIMARY KEY (`messages_replies_id`);

--
-- Indexes for table `milestones`
--
ALTER TABLE `milestones`
  ADD PRIMARY KEY (`milestones_id`);

--
-- Indexes for table `mynotes`
--
ALTER TABLE `mynotes`
  ADD PRIMARY KEY (`mynotes_id`);

--
-- Indexes for table `payments`
--
ALTER TABLE `payments`
  ADD PRIMARY KEY (`payments_id`);

--
-- Indexes for table `projects`
--
ALTER TABLE `projects`
  ADD PRIMARY KEY (`projects_id`);

--
-- Indexes for table `project_events`
--
ALTER TABLE `project_events`
  ADD UNIQUE KEY `project_events_id` (`project_events_id`);

--
-- Indexes for table `project_members`
--
ALTER TABLE `project_members`
  ADD PRIMARY KEY (`project_members_index`),
  ADD UNIQUE KEY `project_members_unique_index` (`project_members_team_id`,`project_members_project_id`);

--
-- Indexes for table `quotationforms`
--
ALTER TABLE `quotationforms`
  ADD PRIMARY KEY (`quotationforms_id`);

--
-- Indexes for table `quotations`
--
ALTER TABLE `quotations`
  ADD PRIMARY KEY (`quotations_id`);

--
-- Indexes for table `search_cache`
--
ALTER TABLE `search_cache`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `settings_company`
--
ALTER TABLE `settings_company`
  ADD UNIQUE KEY `settings_id` (`settings_id`);

--
-- Indexes for table `settings_emailtemplates`
--
ALTER TABLE `settings_emailtemplates`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `settings_id` (`settings_id`);

--
-- Indexes for table `settings_general`
--
ALTER TABLE `settings_general`
  ADD UNIQUE KEY `settings_id` (`settings_id`);

--
-- Indexes for table `settings_invoices`
--
ALTER TABLE `settings_invoices`
  ADD UNIQUE KEY `settings_id` (`settings_id`);

--
-- Indexes for table `setting_system`
--
ALTER TABLE `setting_system`
  ADD PRIMARY KEY (`setting_system_id`);

--
-- Indexes for table `system_events`
--
ALTER TABLE `system_events`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tasks`
--
ALTER TABLE `tasks`
  ADD PRIMARY KEY (`tasks_id`);

--
-- Indexes for table `team_messages`
--
ALTER TABLE `team_messages`
  ADD PRIMARY KEY (`messages_id`);

--
-- Indexes for table `team_messages_replies`
--
ALTER TABLE `team_messages_replies`
  ADD PRIMARY KEY (`messages_replies_id`);

--
-- Indexes for table `team_notes`
--
ALTER TABLE `team_notes`
  ADD PRIMARY KEY (`team_notes_id`);

--
-- Indexes for table `team_profile`
--
ALTER TABLE `team_profile`
  ADD PRIMARY KEY (`team_profile_id`);

--
-- Indexes for table `tickets`
--
ALTER TABLE `tickets`
  ADD PRIMARY KEY (`tickets_id`);

--
-- Indexes for table `tickets_departments`
--
ALTER TABLE `tickets_departments`
  ADD PRIMARY KEY (`department_id`);

--
-- Indexes for table `tickets_replies`
--
ALTER TABLE `tickets_replies`
  ADD PRIMARY KEY (`tickets_replies_id`);

--
-- Indexes for table `timer`
--
ALTER TABLE `timer`
  ADD PRIMARY KEY (`timer_id`),
  ADD UNIQUE KEY `unique_timer` (`timer_project_id`,`timer_team_member_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `bugs`
--
ALTER TABLE `bugs`
  MODIFY `bugs_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `clients`
--
ALTER TABLE `clients`
  MODIFY `clients_id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'This Table: Has no default data', AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT for table `client_users`
--
ALTER TABLE `client_users`
  MODIFY `client_users_id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'This Table: Has no default data', AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT for table `email_queue`
--
ALTER TABLE `email_queue`
  MODIFY `email_queue_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `filedownloads`
--
ALTER TABLE `filedownloads`
  MODIFY `filedownloads_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `files`
--
ALTER TABLE `files`
  MODIFY `files_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `file_comments`
--
ALTER TABLE `file_comments`
  MODIFY `file_comments_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `file_messages`
--
ALTER TABLE `file_messages`
  MODIFY `messages_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `file_messages_replies`
--
ALTER TABLE `file_messages_replies`
  MODIFY `messages_replies_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `groups`
--
ALTER TABLE `groups`
  MODIFY `groups_id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'This table: Has 1 default row for admin group. Group ID must be [1] & Group Name must be [Administrator]', AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `invoices`
--
ALTER TABLE `invoices`
  MODIFY `invoices_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `invoice_items`
--
ALTER TABLE `invoice_items`
  MODIFY `invoice_items_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `invoice_products`
--
ALTER TABLE `invoice_products`
  MODIFY `invoice_products_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `messages`
--
ALTER TABLE `messages`
  MODIFY `messages_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `messages_replies`
--
ALTER TABLE `messages_replies`
  MODIFY `messages_replies_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `milestones`
--
ALTER TABLE `milestones`
  MODIFY `milestones_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `mynotes`
--
ALTER TABLE `mynotes`
  MODIFY `mynotes_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `payments`
--
ALTER TABLE `payments`
  MODIFY `payments_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `projects`
--
ALTER TABLE `projects`
  MODIFY `projects_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `project_events`
--
ALTER TABLE `project_events`
  MODIFY `project_events_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
--
-- AUTO_INCREMENT for table `project_members`
--
ALTER TABLE `project_members`
  MODIFY `project_members_index` tinyint(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `quotationforms`
--
ALTER TABLE `quotationforms`
  MODIFY `quotationforms_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `quotations`
--
ALTER TABLE `quotations`
  MODIFY `quotations_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `search_cache`
--
ALTER TABLE `search_cache`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'This Table: Has no default data', AUTO_INCREMENT=18;
--
-- AUTO_INCREMENT for table `settings_emailtemplates`
--
ALTER TABLE `settings_emailtemplates`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;
--
-- AUTO_INCREMENT for table `setting_system`
--
ALTER TABLE `setting_system`
  MODIFY `setting_system_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `system_events`
--
ALTER TABLE `system_events`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `tasks`
--
ALTER TABLE `tasks`
  MODIFY `tasks_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `team_messages`
--
ALTER TABLE `team_messages`
  MODIFY `messages_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `team_messages_replies`
--
ALTER TABLE `team_messages_replies`
  MODIFY `messages_replies_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `team_notes`
--
ALTER TABLE `team_notes`
  MODIFY `team_notes_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `team_profile`
--
ALTER TABLE `team_profile`
  MODIFY `team_profile_id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'This table: Has 1 default row with placeholder admin', AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `tickets`
--
ALTER TABLE `tickets`
  MODIFY `tickets_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `tickets_departments`
--
ALTER TABLE `tickets_departments`
  MODIFY `department_id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'This Table: Has 1 default row. General Support department', AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `tickets_replies`
--
ALTER TABLE `tickets_replies`
  MODIFY `tickets_replies_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `timer`
--
ALTER TABLE `timer`
  MODIFY `timer_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
