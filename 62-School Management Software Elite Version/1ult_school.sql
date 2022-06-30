-- phpMyAdmin SQL Dump
-- version 4.0.10.18
-- https://www.phpmyadmin.net
--
-- Host: localhost:3306
-- Generation Time: Apr 06, 2018 at 07:14 AM
-- Server version: 5.6.31-77.0-log
-- PHP Version: 5.6.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `kitchenw_ult_school`
--

-- --------------------------------------------------------

--
-- Table structure for table `activities`
--

CREATE TABLE IF NOT EXISTS `activities` (
  `activitiesID` int(11) NOT NULL AUTO_INCREMENT,
  `activitiescategoryID` int(11) NOT NULL,
  `description` text NOT NULL,
  `create_date` datetime NOT NULL,
  `modify_date` datetime NOT NULL,
  `time_to` varchar(40) DEFAULT NULL,
  `time_from` varchar(40) DEFAULT NULL,
  `time_at` varchar(40) DEFAULT NULL,
  `usertypeID` int(11) NOT NULL,
  `userID` int(11) NOT NULL,
  `schoolyearID` int(11) NOT NULL,
  PRIMARY KEY (`activitiesID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `activitiescategory`
--

CREATE TABLE IF NOT EXISTS `activitiescategory` (
  `activitiescategoryID` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL,
  `fa_icon` varchar(40) DEFAULT NULL,
  `schoolyearID` int(11) NOT NULL,
  `create_date` datetime NOT NULL,
  `modify_date` datetime NOT NULL,
  `userID` int(11) NOT NULL,
  `usertypeID` int(40) NOT NULL,
  PRIMARY KEY (`activitiescategoryID`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=11 ;

--
-- Dumping data for table `activitiescategory`
--

INSERT INTO `activitiescategory` (`activitiescategoryID`, `title`, `fa_icon`, `schoolyearID`, `create_date`, `modify_date`, `userID`, `usertypeID`) VALUES
(2, 'Photos', 'fa-picture-o', 19, '2017-04-30 09:04:15', '2017-08-01 05:15:23', 1, 1),
(3, 'Food', 'fa-cutlery', 19, '2017-04-30 02:28:09', '2017-04-30 02:28:09', 1, 1),
(4, 'Sleep', 'fa-bed', 19, '2017-04-30 02:51:08', '2017-04-30 02:51:08', 1, 1),
(5, 'Sports', 'fa-trophy', 19, '2017-04-30 02:52:04', '2017-04-30 02:52:04', 1, 1),
(6, 'Activities', 'fa-puzzle-piece', 19, '2017-04-30 02:52:36', '2017-04-30 02:56:41', 1, 1),
(7, 'Note', 'fa-edit', 19, '2017-04-30 02:55:08', '2017-04-30 02:55:08', 1, 1),
(8, 'Incident', 'fa-times', 19, '2017-04-30 03:00:54', '2017-04-30 03:02:37', 1, 1),
(9, 'Meds', 'fa-medkit', 19, '2017-04-30 03:02:47', '2017-04-30 03:02:47', 1, 1),
(10, 'Art', 'fa-paint-brush', 19, '2017-04-30 03:06:07', '2017-04-30 03:06:07', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `activitiescomment`
--

CREATE TABLE IF NOT EXISTS `activitiescomment` (
  `activitiescommentID` int(11) NOT NULL AUTO_INCREMENT,
  `activitiesID` int(11) NOT NULL,
  `comment` text NOT NULL,
  `userID` int(11) NOT NULL,
  `usertypeID` int(11) NOT NULL,
  `create_date` datetime NOT NULL,
  PRIMARY KEY (`activitiescommentID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `activitiesmedia`
--

CREATE TABLE IF NOT EXISTS `activitiesmedia` (
  `activitiesmediaID` int(11) NOT NULL AUTO_INCREMENT,
  `activitiesID` int(11) NOT NULL,
  `attachment` text NOT NULL,
  `create_date` datetime NOT NULL,
  PRIMARY KEY (`activitiesmediaID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `activitiesstudent`
--

CREATE TABLE IF NOT EXISTS `activitiesstudent` (
  `activitiesstudentID` int(11) NOT NULL AUTO_INCREMENT,
  `activitiesID` int(11) NOT NULL,
  `studentID` int(11) NOT NULL,
  `classesID` int(11) NOT NULL,
  PRIMARY KEY (`activitiesstudentID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `alert`
--

CREATE TABLE IF NOT EXISTS `alert` (
  `alertID` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `noticeID` int(128) NOT NULL,
  `username` varchar(128) NOT NULL,
  `usertype` varchar(128) NOT NULL,
  PRIMARY KEY (`alertID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `asset`
--

CREATE TABLE IF NOT EXISTS `asset` (
  `assetID` int(11) NOT NULL AUTO_INCREMENT,
  `serial` varchar(255) DEFAULT NULL,
  `description` text COMMENT 'Title',
  `manufacturer` varchar(255) DEFAULT NULL,
  `brand` varchar(255) DEFAULT NULL,
  `asset_number` varchar(255) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `asset_condition` int(11) DEFAULT NULL,
  `attachment` text,
  `originalfile` text,
  `asset_categoryID` int(11) DEFAULT NULL,
  `asset_locationID` int(11) DEFAULT NULL,
  `create_date` date NOT NULL,
  `modify_date` date NOT NULL,
  `create_userID` int(11) NOT NULL,
  `create_usertypeID` int(11) NOT NULL,
  PRIMARY KEY (`assetID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `asset_assignment`
--

CREATE TABLE IF NOT EXISTS `asset_assignment` (
  `asset_assignmentID` int(11) NOT NULL AUTO_INCREMENT,
  `assetID` int(11) NOT NULL COMMENT 'Description and title',
  `usertypeID` int(11) DEFAULT NULL,
  `check_out_to` int(11) NOT NULL,
  `due_date` date DEFAULT NULL,
  `note` text,
  `assigned_quantity` int(11) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `asset_locationID` int(11) DEFAULT NULL,
  `check_out_date` date DEFAULT NULL,
  `check_in_date` date DEFAULT NULL,
  `create_date` date NOT NULL,
  `modify_date` date NOT NULL,
  `create_userID` int(11) NOT NULL,
  `create_usertypeID` int(11) NOT NULL,
  PRIMARY KEY (`asset_assignmentID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `asset_category`
--

CREATE TABLE IF NOT EXISTS `asset_category` (
  `asset_categoryID` int(11) NOT NULL AUTO_INCREMENT,
  `category` varchar(255) NOT NULL,
  `create_date` date NOT NULL,
  `modify_date` date NOT NULL,
  `create_userID` int(11) NOT NULL,
  `create_usertypeID` int(11) NOT NULL,
  `active` int(11) NOT NULL,
  PRIMARY KEY (`asset_categoryID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `assignment`
--

CREATE TABLE IF NOT EXISTS `assignment` (
  `assignmentID` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(128) NOT NULL,
  `description` text NOT NULL,
  `deadlinedate` date NOT NULL,
  `usertypeID` int(11) NOT NULL,
  `userID` int(11) NOT NULL,
  `originalfile` text NOT NULL,
  `file` text NOT NULL,
  `classesID` longtext NOT NULL,
  `schoolyearID` int(11) NOT NULL,
  `sectionID` longtext,
  `subjectID` longtext,
  `assignusertypeID` int(11) DEFAULT NULL,
  `assignuserID` int(11) DEFAULT NULL,
  PRIMARY KEY (`assignmentID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `assignmentanswer`
--

CREATE TABLE IF NOT EXISTS `assignmentanswer` (
  `assignmentanswerID` int(11) NOT NULL AUTO_INCREMENT,
  `assignmentID` int(11) NOT NULL,
  `schoolyearID` int(11) NOT NULL,
  `uploaderID` int(11) NOT NULL,
  `uploadertypeID` int(11) NOT NULL,
  `answerfile` text NOT NULL,
  `answerfileoriginal` text NOT NULL,
  `answerdate` date NOT NULL,
  PRIMARY KEY (`assignmentanswerID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `attendance`
--

CREATE TABLE IF NOT EXISTS `attendance` (
  `attendanceID` int(200) unsigned NOT NULL AUTO_INCREMENT,
  `schoolyearID` int(11) NOT NULL,
  `studentID` int(11) NOT NULL,
  `classesID` int(11) NOT NULL,
  `sectionID` int(11) NOT NULL,
  `userID` int(11) NOT NULL,
  `usertype` varchar(20) NOT NULL,
  `monthyear` varchar(10) NOT NULL,
  `a1` varchar(3) DEFAULT NULL,
  `a2` varchar(3) DEFAULT NULL,
  `a3` varchar(3) DEFAULT NULL,
  `a4` varchar(3) DEFAULT NULL,
  `a5` varchar(3) DEFAULT NULL,
  `a6` varchar(3) DEFAULT NULL,
  `a7` varchar(3) DEFAULT NULL,
  `a8` varchar(3) DEFAULT NULL,
  `a9` varchar(3) DEFAULT NULL,
  `a10` varchar(3) DEFAULT NULL,
  `a11` varchar(3) DEFAULT NULL,
  `a12` varchar(3) DEFAULT NULL,
  `a13` varchar(3) DEFAULT NULL,
  `a14` varchar(3) DEFAULT NULL,
  `a15` varchar(3) DEFAULT NULL,
  `a16` varchar(3) DEFAULT NULL,
  `a17` varchar(3) DEFAULT NULL,
  `a18` varchar(3) DEFAULT NULL,
  `a19` varchar(3) DEFAULT NULL,
  `a20` varchar(3) DEFAULT NULL,
  `a21` varchar(3) DEFAULT NULL,
  `a22` varchar(3) DEFAULT NULL,
  `a23` varchar(3) DEFAULT NULL,
  `a24` varchar(3) DEFAULT NULL,
  `a25` varchar(3) DEFAULT NULL,
  `a26` varchar(3) DEFAULT NULL,
  `a27` varchar(3) DEFAULT NULL,
  `a28` varchar(3) DEFAULT NULL,
  `a29` varchar(3) DEFAULT NULL,
  `a30` varchar(3) DEFAULT NULL,
  `a31` varchar(3) DEFAULT NULL,
  PRIMARY KEY (`attendanceID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `automation_rec`
--

CREATE TABLE IF NOT EXISTS `automation_rec` (
  `automation_recID` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `studentID` int(11) NOT NULL,
  `date` date NOT NULL,
  `day` varchar(3) NOT NULL,
  `month` varchar(3) NOT NULL,
  `year` year(4) NOT NULL,
  `nofmodule` int(11) NOT NULL,
  PRIMARY KEY (`automation_recID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `automation_shudulu`
--

CREATE TABLE IF NOT EXISTS `automation_shudulu` (
  `automation_shuduluID` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `date` date NOT NULL,
  `day` varchar(3) NOT NULL,
  `month` varchar(3) NOT NULL,
  `year` year(4) NOT NULL,
  PRIMARY KEY (`automation_shuduluID`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `automation_shudulu`
--

INSERT INTO `automation_shudulu` (`automation_shuduluID`, `date`, `day`, `month`, `year`) VALUES
(1, '2018-02-09', '09', '02', 2018);

-- --------------------------------------------------------

--
-- Table structure for table `book`
--

CREATE TABLE IF NOT EXISTS `book` (
  `bookID` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `book` varchar(60) NOT NULL,
  `subject_code` tinytext NOT NULL,
  `author` varchar(100) NOT NULL,
  `price` int(11) NOT NULL,
  `quantity` int(11) NOT NULL,
  `due_quantity` int(11) NOT NULL,
  `rack` tinytext NOT NULL,
  PRIMARY KEY (`bookID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE IF NOT EXISTS `category` (
  `categoryID` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `hostelID` int(11) NOT NULL,
  `class_type` varchar(60) NOT NULL,
  `hbalance` varchar(20) NOT NULL,
  `note` text,
  PRIMARY KEY (`categoryID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `certificate_template`
--

CREATE TABLE IF NOT EXISTS `certificate_template` (
  `certificate_templateID` int(11) NOT NULL AUTO_INCREMENT,
  `usertypeID` int(11) NOT NULL,
  `name` varchar(60) NOT NULL,
  `theme` int(11) NOT NULL,
  `top_heading_title` text,
  `top_heading_left` text,
  `top_heading_right` text,
  `top_heading_middle` text,
  `main_middle_text` text NOT NULL,
  `template` text NOT NULL,
  `footer_left_text` text,
  `footer_right_text` text,
  `footer_middle_text` text,
  `background_image` varchar(250) DEFAULT NULL,
  PRIMARY KEY (`certificate_templateID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `childcare`
--

CREATE TABLE IF NOT EXISTS `childcare` (
  `childcareID` int(11) NOT NULL AUTO_INCREMENT,
  `dropped_at` timestamp NULL DEFAULT NULL,
  `received_at` timestamp NULL DEFAULT NULL,
  `usertypeID` int(11) NOT NULL,
  `userID` int(11) NOT NULL,
  `parentID` int(11) NOT NULL,
  `signature` text,
  `classesID` int(11) NOT NULL,
  `schoolyearID` int(11) NOT NULL,
  `comment` text,
  `received_status` int(11) NOT NULL DEFAULT '0',
  `receiver_name` varchar(40) NOT NULL,
  `phone` varchar(40) DEFAULT NULL,
  PRIMARY KEY (`childcareID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `classes`
--

CREATE TABLE IF NOT EXISTS `classes` (
  `classesID` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `classes` varchar(60) NOT NULL,
  `classes_numeric` int(11) NOT NULL,
  `teacherID` int(11) NOT NULL,
  `studentmaxID` int(11) DEFAULT NULL,
  `note` text,
  `create_date` datetime NOT NULL,
  `modify_date` datetime NOT NULL,
  `create_userID` int(11) NOT NULL,
  `create_username` varchar(40) NOT NULL,
  `create_usertype` varchar(20) NOT NULL,
  PRIMARY KEY (`classesID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `complain`
--

CREATE TABLE IF NOT EXISTS `complain` (
  `complainID` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL,
  `usertypeID` int(11) NOT NULL,
  `userID` int(11) DEFAULT NULL,
  `description` text,
  `attachment` text,
  `originalfile` text,
  PRIMARY KEY (`complainID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `conversation_user`
--

CREATE TABLE IF NOT EXISTS `conversation_user` (
  `conversation_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `usertypeID` int(11) NOT NULL,
  `is_sender` int(11) DEFAULT '0',
  `trash` int(11) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `eattendance`
--

CREATE TABLE IF NOT EXISTS `eattendance` (
  `eattendanceID` int(200) unsigned NOT NULL AUTO_INCREMENT,
  `schoolyearID` int(11) NOT NULL,
  `examID` int(11) NOT NULL,
  `classesID` int(11) NOT NULL,
  `sectionID` int(11) NOT NULL,
  `subjectID` int(11) NOT NULL,
  `date` date NOT NULL,
  `studentID` int(11) DEFAULT NULL,
  `s_name` varchar(60) DEFAULT NULL,
  `eattendance` varchar(20) DEFAULT NULL,
  `year` year(4) NOT NULL,
  `eextra` varchar(60) DEFAULT NULL,
  PRIMARY KEY (`eattendanceID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `event`
--

CREATE TABLE IF NOT EXISTS `event` (
  `eventID` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `fdate` date NOT NULL,
  `ftime` time NOT NULL,
  `tdate` date NOT NULL,
  `ttime` time NOT NULL,
  `title` varchar(128) NOT NULL,
  `details` text NOT NULL,
  `photo` varchar(200) DEFAULT NULL,
  `create_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`eventID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `eventcounter`
--

CREATE TABLE IF NOT EXISTS `eventcounter` (
  `eventcounterID` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `eventID` int(11) NOT NULL,
  `username` varchar(40) NOT NULL,
  `type` varchar(20) NOT NULL,
  `name` varchar(128) NOT NULL,
  `photo` varchar(200) DEFAULT NULL,
  `status` int(11) NOT NULL,
  `create_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`eventcounterID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `exam`
--

CREATE TABLE IF NOT EXISTS `exam` (
  `examID` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `exam` varchar(60) NOT NULL,
  `date` date NOT NULL,
  `note` text,
  PRIMARY KEY (`examID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `examschedule`
--

CREATE TABLE IF NOT EXISTS `examschedule` (
  `examscheduleID` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `examID` int(11) NOT NULL,
  `classesID` int(11) NOT NULL,
  `sectionID` int(11) NOT NULL,
  `subjectID` int(11) NOT NULL,
  `edate` date NOT NULL,
  `examfrom` varchar(10) NOT NULL,
  `examto` varchar(10) NOT NULL,
  `room` tinytext,
  `schoolyearID` int(11) NOT NULL,
  PRIMARY KEY (`examscheduleID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `expense`
--

CREATE TABLE IF NOT EXISTS `expense` (
  `expenseID` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `create_date` date NOT NULL,
  `date` date NOT NULL,
  `expenseday` varchar(11) NOT NULL,
  `expensemonth` varchar(11) NOT NULL,
  `expenseyear` year(4) NOT NULL,
  `expense` varchar(128) NOT NULL,
  `amount` double NOT NULL,
  `userID` int(11) NOT NULL,
  `usertypeID` int(11) NOT NULL,
  `uname` varchar(40) NOT NULL,
  `schoolyearID` int(11) NOT NULL,
  `note` text,
  PRIMARY KEY (`expenseID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `feetypes`
--

CREATE TABLE IF NOT EXISTS `feetypes` (
  `feetypesID` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `feetypes` varchar(60) NOT NULL,
  `note` text,
  PRIMARY KEY (`feetypesID`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `feetypes`
--

INSERT INTO `feetypes` (`feetypesID`, `feetypes`, `note`) VALUES
(1, 'Library Fee', ''),
(2, 'Transport Fee', ''),
(3, 'Hostel Fee', ''),
(4, 'Books Fine', '');

-- --------------------------------------------------------

--
-- Table structure for table `fmenu`
--

CREATE TABLE IF NOT EXISTS `fmenu` (
  `fmenuID` int(11) NOT NULL AUTO_INCREMENT,
  `menu_name` varchar(128) NOT NULL,
  `status` int(11) NOT NULL COMMENT 'Only for active',
  `topbar` int(11) NOT NULL,
  `socal` int(11) NOT NULL,
  PRIMARY KEY (`fmenuID`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `fmenu`
--

INSERT INTO `fmenu` (`fmenuID`, `menu_name`, `status`, `topbar`, `socal`) VALUES
(1, 'Top', 1, 1, 0),
(2, 'Socal', 1, 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `fmenu_relation`
--

CREATE TABLE IF NOT EXISTS `fmenu_relation` (
  `fmenu_relationID` int(11) NOT NULL AUTO_INCREMENT,
  `fmenuID` int(11) DEFAULT NULL,
  `menu_typeID` int(11) DEFAULT NULL COMMENT '1 => Pages, 2 => Post, 3 => Links',
  `menu_parentID` varchar(128) DEFAULT NULL,
  `menu_orderID` int(11) DEFAULT NULL,
  `menu_pagesID` int(11) DEFAULT NULL,
  `menu_label` varchar(128) DEFAULT NULL,
  `menu_status` int(11) DEFAULT NULL,
  PRIMARY KEY (`fmenu_relationID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `frontend_setting`
--

CREATE TABLE IF NOT EXISTS `frontend_setting` (
  `fieldoption` varchar(100) NOT NULL,
  `value` varchar(255) NOT NULL,
  PRIMARY KEY (`fieldoption`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `frontend_setting`
--

INSERT INTO `frontend_setting` (`fieldoption`, `value`) VALUES
('facebook', ''),
('google', ''),
('linkedin', ''),
('twitter', ''),
('youtube', '');

-- --------------------------------------------------------

--
-- Table structure for table `frontend_template`
--

CREATE TABLE IF NOT EXISTS `frontend_template` (
  `frontend_templateID` int(11) NOT NULL AUTO_INCREMENT,
  `template_name` varchar(128) NOT NULL,
  PRIMARY KEY (`frontend_templateID`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=8 ;

--
-- Dumping data for table `frontend_template`
--

INSERT INTO `frontend_template` (`frontend_templateID`, `template_name`) VALUES
(1, 'home'),
(2, 'about'),
(3, 'event'),
(4, 'teacher'),
(5, 'gallery'),
(6, 'notice'),
(7, 'contact');

-- --------------------------------------------------------

--
-- Table structure for table `grade`
--

CREATE TABLE IF NOT EXISTS `grade` (
  `gradeID` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `grade` varchar(60) NOT NULL,
  `point` varchar(11) NOT NULL,
  `gradefrom` int(11) NOT NULL,
  `gradeupto` int(11) NOT NULL,
  `note` text,
  PRIMARY KEY (`gradeID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `hmember`
--

CREATE TABLE IF NOT EXISTS `hmember` (
  `hmemberID` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `hostelID` int(11) NOT NULL,
  `categoryID` int(11) NOT NULL,
  `studentID` int(11) NOT NULL,
  `hbalance` varchar(20) DEFAULT NULL,
  `hjoindate` date NOT NULL,
  PRIMARY KEY (`hmemberID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `holiday`
--

CREATE TABLE IF NOT EXISTS `holiday` (
  `holidayID` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `schoolyearID` int(11) NOT NULL,
  `fdate` date NOT NULL,
  `tdate` date NOT NULL,
  `title` varchar(128) NOT NULL,
  `details` text NOT NULL,
  `photo` varchar(200) DEFAULT NULL,
  `create_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`holidayID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `hostel`
--

CREATE TABLE IF NOT EXISTS `hostel` (
  `hostelID` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(128) NOT NULL,
  `htype` varchar(11) NOT NULL,
  `address` varchar(200) NOT NULL,
  `note` text,
  PRIMARY KEY (`hostelID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `hourly_template`
--

CREATE TABLE IF NOT EXISTS `hourly_template` (
  `hourly_templateID` int(11) NOT NULL AUTO_INCREMENT,
  `hourly_grades` varchar(128) NOT NULL,
  `hourly_rate` int(11) NOT NULL,
  PRIMARY KEY (`hourly_templateID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `idmanager`
--

CREATE TABLE IF NOT EXISTS `idmanager` (
  `idmanagerID` int(11) NOT NULL AUTO_INCREMENT,
  `schooltype` varchar(20) NOT NULL,
  `idtitle` varchar(128) NOT NULL,
  `idtype` varchar(128) NOT NULL,
  PRIMARY KEY (`idmanagerID`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=21 ;

--
-- Dumping data for table `idmanager`
--

INSERT INTO `idmanager` (`idmanagerID`, `schooltype`, `idtitle`, `idtype`) VALUES
(1, 'semesterbase', 'Year+Semester Code+Department Code+Student Max ID', 'schoolyear+semestercode+classes_numeric+studentmaxID'),
(2, 'semesterbase', 'Year+Department Code+Semester Code+Student Max ID', 'schoolyear+classes_numeric+semestercode+studentmaxID'),
(3, 'semesterbase', 'Year+Semester Code+Student Max ID', 'schoolyear+semestercode+studentmaxID'),
(4, 'semesterbase', 'Year+Department Code+Student Max ID', 'schoolyear+classes_numeric+studentmaxID'),
(5, 'semesterbase', 'Student Max ID+Year+Semester Code+Department Code', 'studentmaxID+schoolyear+semestercode+classes_numeric'),
(6, 'semesterbase', 'Student Max ID+Semester Code+Department Code+Year', 'studentmaxID+semestercode+classes_numeric+schoolyear'),
(7, 'semesterbase', 'Student Max ID+Semester Code+Department Code', 'studentmaxID+semestercode+classes_numeric'),
(8, 'semesterbase', 'Student Max ID+Department Code+Semester Code', 'studentmaxID+classes_numeric+semestercode'),
(9, 'semesterbase', 'Semester Code+Department Code+Student Max ID', 'semestercode+classes_numeric+studentmaxID'),
(10, 'semesterbase', 'Department Code+Semester Code+Student Max ID', 'classes_numeric+semestercode+studentmaxID'),
(11, 'semesterbase', 'Semester Code+Student Max ID', 'semestercode+studentmaxID'),
(12, 'semesterbase', 'Department Code+Student Max ID', 'classes_numeric+studentmaxID'),
(13, 'semesterbase', 'Student Max ID', 'studentmaxID'),
(14, 'classbase', 'Year+Class Numeric+Student Max ID', 'schoolyear+classes_numeric+studentmaxID'),
(15, 'Classbase', 'Class Numeric+Year+Student Max ID', 'classes_numeric+schoolyear+studentmaxID'),
(16, 'classbase', 'Year+Student Max ID', 'schoolyear+studentmaxID'),
(17, 'classbase', 'Class Numeric+Student Max ID', 'classes_numeric+studentmaxID'),
(18, 'classbase', 'Student Max ID', 'studentmaxID'),
(19, 'semesterbase', 'None', 'none'),
(20, 'classbase', 'None', 'none');

-- --------------------------------------------------------

--
-- Table structure for table `ini_config`
--

CREATE TABLE IF NOT EXISTS `ini_config` (
  `configID` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `type` varchar(255) NOT NULL,
  `config_key` varchar(255) NOT NULL,
  `value` varchar(255) NOT NULL,
  PRIMARY KEY (`configID`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=20 ;

--
-- Dumping data for table `ini_config`
--

INSERT INTO `ini_config` (`configID`, `type`, `config_key`, `value`) VALUES
(1, 'paypal', 'paypal_api_username', ''),
(2, 'paypal', 'paypal_api_password', ''),
(3, 'paypal', 'paypal_api_signature', ''),
(4, 'paypal', 'paypal_email', ''),
(5, 'paypal', 'paypal_demo', ''),
(6, 'stripe', 'stripe_secret', ''),
(8, 'stripe', 'stripe_demo', ''),
(9, 'payumoney', 'payumoney_key', ''),
(10, 'payumoney', 'payumoney_salt', ''),
(11, 'payumoney', 'payumoney_demo', ''),
(12, 'paypal', 'paypal_status', ''),
(13, 'stripe', 'stripe_status', ''),
(14, 'payumoney', 'payumoney_status', ''),
(15, 'voguepay', 'voguepay_merchant_id', ''),
(16, 'voguepay', 'voguepay_merchant_ref', ''),
(17, 'voguepay', 'voguepay_developer_code', ''),
(18, 'voguepay', 'voguepay_demo', ''),
(19, 'voguepay', 'voguepay_status', '');

-- --------------------------------------------------------

--
-- Table structure for table `instruction`
--

CREATE TABLE IF NOT EXISTS `instruction` (
  `instructionID` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(512) NOT NULL,
  `content` text NOT NULL,
  PRIMARY KEY (`instructionID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `invoice`
--

CREATE TABLE IF NOT EXISTS `invoice` (
  `invoiceID` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `schoolyearID` int(11) NOT NULL,
  `classesID` int(11) NOT NULL,
  `studentID` int(11) NOT NULL,
  `feetype` varchar(128) NOT NULL,
  `amount` double NOT NULL,
  `discount` double NOT NULL DEFAULT '0',
  `userID` int(11) DEFAULT NULL,
  `usertypeID` int(11) DEFAULT NULL,
  `uname` varchar(60) DEFAULT NULL,
  `date` date NOT NULL,
  `create_date` date NOT NULL,
  `day` varchar(20) DEFAULT NULL,
  `month` varchar(20) DEFAULT NULL,
  `year` year(4) NOT NULL,
  `paidstatus` int(11) DEFAULT NULL,
  `deleted_at` int(11) NOT NULL DEFAULT '1',
  PRIMARY KEY (`invoiceID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `issue`
--

CREATE TABLE IF NOT EXISTS `issue` (
  `issueID` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `lID` varchar(128) NOT NULL,
  `bookID` int(11) NOT NULL,
  `serial_no` varchar(40) NOT NULL,
  `issue_date` date NOT NULL,
  `due_date` date NOT NULL,
  `return_date` date DEFAULT NULL,
  `note` text,
  PRIMARY KEY (`issueID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `leaveapp`
--

CREATE TABLE IF NOT EXISTS `leaveapp` (
  `leaveID` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `fdate` date NOT NULL,
  `tdate` date NOT NULL,
  `title` varchar(128) NOT NULL,
  `details` text NOT NULL,
  `touserID` int(11) NOT NULL,
  `tousertypeID` int(11) NOT NULL,
  `fromuserID` int(11) NOT NULL,
  `fromusertypeID` int(11) NOT NULL,
  `status` int(11) NOT NULL DEFAULT '0',
  `create_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `schoolyearID` int(11) NOT NULL,
  PRIMARY KEY (`leaveID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `lmember`
--

CREATE TABLE IF NOT EXISTS `lmember` (
  `lmemberID` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `lID` varchar(40) NOT NULL,
  `studentID` int(11) NOT NULL,
  `name` varchar(60) NOT NULL,
  `email` varchar(40) DEFAULT NULL,
  `phone` tinytext,
  `lbalance` varchar(20) DEFAULT NULL,
  `ljoindate` date NOT NULL,
  PRIMARY KEY (`lmemberID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `location`
--

CREATE TABLE IF NOT EXISTS `location` (
  `locationID` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `location` varchar(128) NOT NULL,
  `description` text,
  `create_date` date NOT NULL,
  `modify_date` date NOT NULL,
  `create_userID` int(11) NOT NULL,
  `create_usertypeID` int(11) NOT NULL,
  `active` int(11) NOT NULL,
  PRIMARY KEY (`locationID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `loginlog`
--

CREATE TABLE IF NOT EXISTS `loginlog` (
  `loginlogID` int(11) NOT NULL AUTO_INCREMENT,
  `ip` varchar(45) DEFAULT NULL,
  `browser` varchar(128) DEFAULT NULL,
  `operatingsystem` varchar(128) DEFAULT NULL,
  `login` int(11) unsigned DEFAULT NULL,
  `logout` int(11) unsigned DEFAULT NULL,
  `usertypeID` int(11) DEFAULT NULL,
  `userID` int(11) DEFAULT NULL,
  PRIMARY KEY (`loginlogID`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=9 ;

--
-- Dumping data for table `loginlog`
--

INSERT INTO `loginlog` (`loginlogID`, `ip`, `browser`, `operatingsystem`, `login`, `logout`, `usertypeID`, `userID`) VALUES
(1, '150.107.205.157', 'Google Chrome', 'windows', 1518129093, 1518172829, 1, 1),
(2, '150.107.205.157', 'Google Chrome', 'windows', 1518172983, 1518179472, 1, 1),
(3, '183.87.60.202', 'Google Chrome', 'windows', 1518178561, NULL, 1, 1),
(4, '150.107.205.157', 'Google Chrome', 'windows', 1518179476, NULL, 1, 1),
(5, '142.234.162.5', 'Google Chrome', 'windows', 1518248293, NULL, 1, 1),
(6, '106.219.22.189', 'Google Chrome', 'windows', 1518248321, NULL, 1, 1),
(7, '117.224.54.76', 'Google Chrome', 'windows', 1518248336, NULL, 1, 1),
(8, '139.167.167.254', 'Google Chrome', 'windows', 1522998547, 1522998815, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `mailandsms`
--

CREATE TABLE IF NOT EXISTS `mailandsms` (
  `mailandsmsID` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `usertypeID` int(11) NOT NULL,
  `users` text NOT NULL,
  `type` varchar(10) NOT NULL,
  `senderusertypeID` int(11) NOT NULL,
  `senderID` int(11) NOT NULL,
  `message` text NOT NULL,
  `create_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `year` year(4) NOT NULL,
  PRIMARY KEY (`mailandsmsID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `mailandsmstemplate`
--

CREATE TABLE IF NOT EXISTS `mailandsmstemplate` (
  `mailandsmstemplateID` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(128) NOT NULL,
  `usertypeID` int(11) NOT NULL,
  `type` varchar(10) NOT NULL,
  `template` text NOT NULL,
  `create_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`mailandsmstemplateID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `mailandsmstemplatetag`
--

CREATE TABLE IF NOT EXISTS `mailandsmstemplatetag` (
  `mailandsmstemplatetagID` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `usertypeID` int(11) NOT NULL,
  `tagname` varchar(128) NOT NULL,
  `mailandsmstemplatetag_extra` varchar(255) DEFAULT NULL,
  `create_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`mailandsmstemplatetagID`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=49 ;

--
-- Dumping data for table `mailandsmstemplatetag`
--

INSERT INTO `mailandsmstemplatetag` (`mailandsmstemplatetagID`, `usertypeID`, `tagname`, `mailandsmstemplatetag_extra`, `create_date`) VALUES
(1, 1, '[name]', NULL, '2016-12-11 08:36:33'),
(2, 1, '[dob]', NULL, '2016-12-11 08:37:31'),
(3, 1, '[gender]', NULL, '2016-12-11 08:37:31'),
(4, 1, '[religion]', NULL, '2016-12-11 08:39:51'),
(5, 1, '[email]', NULL, '2016-12-11 08:39:51'),
(6, 1, '[phone]', NULL, '2016-12-11 08:39:51'),
(7, 1, '[address]', NULL, '2016-12-11 08:39:51'),
(8, 1, '[jod]', NULL, '2016-12-11 08:39:51'),
(9, 1, '[username]', NULL, '2016-12-11 08:39:51'),
(10, 2, '[name]', NULL, '2016-12-11 08:40:50'),
(11, 2, '[designation]', NULL, '2016-12-11 08:43:27'),
(12, 2, '[dob]', NULL, '2016-12-11 08:46:21'),
(13, 2, '[gender]', NULL, '2016-12-11 08:46:21'),
(14, 2, '[religion]', NULL, '2016-12-11 08:46:21'),
(15, 2, '[email]', NULL, '2016-12-11 08:46:21'),
(16, 2, '[phone]', NULL, '2016-12-11 08:46:21'),
(17, 2, '[address]', NULL, '2016-12-11 08:46:21'),
(18, 2, '[jod]', NULL, '2016-12-11 08:46:21'),
(19, 2, '[username]', NULL, '2016-12-11 08:46:21'),
(20, 3, '[name]', NULL, '2016-12-11 08:47:09'),
(21, 3, '[dob]', NULL, '2016-12-11 08:55:54'),
(22, 3, '[gender]', NULL, '2016-12-11 08:55:54'),
(23, 3, '[blood_group]', NULL, '2016-12-11 08:55:54'),
(24, 3, '[religion]', NULL, '2016-12-11 08:55:54'),
(25, 3, '[email]', NULL, '2016-12-11 08:55:54'),
(26, 3, '[phone]', NULL, '2016-12-11 08:55:54'),
(27, 3, '[address]', NULL, '2016-12-11 08:55:54'),
(28, 3, '[state]', NULL, '2017-02-12 06:21:49'),
(29, 3, '[country]', NULL, '2017-02-12 06:21:27'),
(30, 3, '[class]', NULL, '2016-12-19 09:34:20'),
(31, 3, '[section]', NULL, '2016-12-11 08:55:54'),
(32, 3, '[group]', NULL, '2016-12-11 08:55:54'),
(33, 3, '[optional_subject]', NULL, '2016-12-11 08:55:54'),
(34, 3, '[register_no]', NULL, '2017-02-12 06:21:27'),
(35, 3, '[roll]', NULL, '2017-02-12 06:22:56'),
(36, 3, '[extra_curricular_activities]', NULL, '2017-02-12 06:22:56'),
(37, 3, '[remarks]', NULL, '2017-02-12 06:22:56'),
(38, 3, '[username]', NULL, '2016-12-11 08:55:54'),
(39, 3, '[result_table]', NULL, '2016-12-11 08:55:54'),
(40, 4, '[name]', NULL, '2016-12-11 08:57:31'),
(41, 4, '[father''s_name]', NULL, '2016-12-11 09:04:19'),
(42, 4, '[mother''s_name]', NULL, '2016-12-11 09:04:19'),
(43, 4, '[father''s_profession]', NULL, '2016-12-11 09:04:19'),
(44, 4, '[mother''s_profession]', NULL, '2016-12-11 09:04:19'),
(45, 4, '[email]', NULL, '2016-12-11 09:04:19'),
(46, 4, '[phone]', NULL, '2016-12-11 09:04:19'),
(47, 4, '[address]', NULL, '2016-12-11 09:04:19'),
(48, 4, '[username]', NULL, '2016-12-11 09:04:19');

-- --------------------------------------------------------

--
-- Table structure for table `make_payment`
--

CREATE TABLE IF NOT EXISTS `make_payment` (
  `make_paymentID` int(11) NOT NULL AUTO_INCREMENT,
  `month` text NOT NULL,
  `gross_salary` text NOT NULL,
  `total_deduction` text NOT NULL,
  `net_salary` text NOT NULL,
  `payment_amount` text NOT NULL,
  `payment_method` int(11) NOT NULL,
  `comments` text,
  `templateID` int(11) NOT NULL,
  `salaryID` int(11) NOT NULL,
  `usertypeID` int(11) NOT NULL,
  `userID` int(11) NOT NULL,
  `create_date` datetime NOT NULL,
  `modify_date` datetime NOT NULL,
  `create_userID` int(11) NOT NULL,
  `create_username` varchar(40) NOT NULL,
  `create_usertype` varchar(40) NOT NULL,
  `total_hours` text,
  PRIMARY KEY (`make_paymentID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `manage_salary`
--

CREATE TABLE IF NOT EXISTS `manage_salary` (
  `manage_salaryID` int(11) NOT NULL AUTO_INCREMENT,
  `userID` int(11) NOT NULL,
  `usertypeID` int(11) NOT NULL,
  `salary` int(11) NOT NULL,
  `template` int(11) NOT NULL,
  `create_date` datetime NOT NULL,
  `modify_date` datetime NOT NULL,
  `create_userID` int(11) NOT NULL,
  `create_username` varchar(40) NOT NULL,
  `create_usertype` varchar(40) NOT NULL,
  PRIMARY KEY (`manage_salaryID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `mark`
--

CREATE TABLE IF NOT EXISTS `mark` (
  `markID` int(200) unsigned NOT NULL AUTO_INCREMENT,
  `schoolyearID` int(11) NOT NULL,
  `examID` int(11) NOT NULL,
  `exam` varchar(60) NOT NULL,
  `studentID` int(11) NOT NULL,
  `classesID` int(11) NOT NULL,
  `subjectID` int(11) NOT NULL,
  `subject` varchar(60) NOT NULL,
  `year` year(4) NOT NULL,
  PRIMARY KEY (`markID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `markpercentage`
--

CREATE TABLE IF NOT EXISTS `markpercentage` (
  `markpercentageID` int(11) NOT NULL AUTO_INCREMENT,
  `markpercentagetype` varchar(100) NOT NULL,
  `percentage` double NOT NULL,
  `examID` int(11) DEFAULT NULL,
  `classesID` int(11) DEFAULT NULL,
  `subjectID` int(11) DEFAULT NULL,
  `create_date` datetime NOT NULL,
  `modify_date` datetime NOT NULL,
  `create_userID` int(11) NOT NULL,
  `create_username` varchar(40) NOT NULL,
  `create_usertype` varchar(40) NOT NULL,
  PRIMARY KEY (`markpercentageID`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `markpercentage`
--

INSERT INTO `markpercentage` (`markpercentageID`, `markpercentagetype`, `percentage`, `examID`, `classesID`, `subjectID`, `create_date`, `modify_date`, `create_userID`, `create_username`, `create_usertype`) VALUES
(1, 'Exam', 100, NULL, NULL, NULL, '2017-01-05 06:11:54', '2017-01-05 06:12:08', 1, 'admin', 'Admin');

-- --------------------------------------------------------

--
-- Table structure for table `markrelation`
--

CREATE TABLE IF NOT EXISTS `markrelation` (
  `markrelationID` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `markID` int(11) NOT NULL,
  `markpercentageID` int(11) NOT NULL,
  `mark` varchar(128) DEFAULT NULL,
  PRIMARY KEY (`markrelationID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `media`
--

CREATE TABLE IF NOT EXISTS `media` (
  `mediaID` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `userID` int(11) NOT NULL,
  `usertypeID` int(11) NOT NULL,
  `mcategoryID` int(11) NOT NULL DEFAULT '0',
  `file_name` varchar(255) NOT NULL,
  `file_name_display` varchar(255) NOT NULL,
  PRIMARY KEY (`mediaID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `media_category`
--

CREATE TABLE IF NOT EXISTS `media_category` (
  `mcategoryID` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `userID` int(11) NOT NULL,
  `usertypeID` int(11) NOT NULL,
  `folder_name` varchar(255) NOT NULL,
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`mcategoryID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `media_gallery`
--

CREATE TABLE IF NOT EXISTS `media_gallery` (
  `media_galleryID` int(11) NOT NULL AUTO_INCREMENT,
  `media_gallery_type` int(11) NOT NULL,
  `file_type` varchar(40) DEFAULT NULL,
  `file_name` varchar(255) DEFAULT NULL,
  `file_original_name` varchar(255) DEFAULT NULL,
  `file_title` text NOT NULL,
  `file_size` varchar(40) DEFAULT NULL,
  `file_width_height` varchar(40) DEFAULT NULL,
  `file_upload_date` datetime DEFAULT NULL,
  `file_caption` text,
  `file_alt_text` varchar(255) DEFAULT NULL,
  `file_description` text,
  `file_length` varchar(128) DEFAULT NULL,
  `file_artist` varchar(128) DEFAULT NULL,
  `file_album` varchar(128) DEFAULT NULL,
  PRIMARY KEY (`media_galleryID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `media_share`
--

CREATE TABLE IF NOT EXISTS `media_share` (
  `shareID` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `classesID` int(11) NOT NULL DEFAULT '0',
  `public` int(11) NOT NULL,
  `file_or_folder` int(11) NOT NULL,
  `item_id` int(11) NOT NULL,
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`shareID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `menu`
--

CREATE TABLE IF NOT EXISTS `menu` (
  `menuID` int(11) NOT NULL AUTO_INCREMENT,
  `menuName` varchar(128) NOT NULL,
  `link` varchar(512) NOT NULL,
  `icon` varchar(128) DEFAULT NULL,
  `pullRight` text,
  `status` int(11) NOT NULL DEFAULT '1',
  `parentID` int(11) NOT NULL DEFAULT '0',
  `priority` int(11) NOT NULL DEFAULT '1000',
  PRIMARY KEY (`menuID`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=102 ;

--
-- Dumping data for table `menu`
--

INSERT INTO `menu` (`menuID`, `menuName`, `link`, `icon`, `pullRight`, `status`, `parentID`, `priority`) VALUES
(1, 'dashboard', 'dashboard', 'fa-laptop', '', 1, 0, 10000),
(2, 'student', 'student', 'icon-student', NULL, 1, 0, 1000),
(3, 'parents', 'parents', 'fa-user', NULL, 1, 0, 1000),
(4, 'teacher', 'teacher', 'icon-teacher', NULL, 1, 0, 1000),
(5, 'user', 'user', 'fa-users', NULL, 1, 0, 1000),
(6, 'main_academic', '#', 'icon-academicmain', '', 1, 0, 1000),
(7, 'main_attendance', '#', 'icon-attendance', NULL, 1, 0, 1000),
(8, 'main_exam', '#', 'icon-exam', NULL, 1, 0, 1000),
(9, 'main_mark', '#', 'icon-markmain', NULL, 1, 0, 1000),
(10, 'conversation', 'conversation', 'fa-envelope', NULL, 1, 0, 1000),
(11, 'media', 'media', 'fa-film', NULL, 1, 0, 1000),
(12, 'mailandsms', 'mailandsms', 'icon-mailandsms', NULL, 1, 0, 1000),
(13, 'main_library', '#', 'icon-library', '', 1, 0, 390),
(14, 'main_transport', '#', 'icon-bus', '', 1, 0, 350),
(15, 'main_hostel', '#', 'icon-hhostel', '', 1, 0, 320),
(16, 'main_account', '#', 'icon-account', '', 1, 0, 280),
(17, 'main_announcement', '#', 'icon-noticemain', '', 1, 0, 230),
(18, 'main_report', '#', 'fa-clipboard', '', 1, 0, 190),
(19, 'visitorinfo', 'visitorinfo', 'icon-visitorinfo', '', 1, 0, 150),
(20, 'main_administrator', '#', 'icon-administrator', '', 1, 0, 140),
(21, 'main_settings', '#', 'fa-gavel', '', 1, 0, 40),
(22, 'classes', 'classes', 'fa-sitemap', NULL, 1, 6, 5000),
(23, 'section', 'section', 'fa-star', NULL, 1, 6, 4000),
(24, 'subject', 'subject', 'icon-subject', NULL, 1, 6, 4500),
(25, 'routine', 'routine', 'icon-routine', NULL, 1, 6, 1000),
(26, 'syllabus', 'syllabus', 'icon-syllabus', NULL, 1, 6, 3500),
(27, 'assignment', 'assignment', 'icon-assignment', NULL, 1, 6, 3000),
(28, 'sattendance', 'sattendance', 'icon-sattendance', NULL, 1, 7, 1000),
(29, 'tattendance', 'tattendance', 'icon-tattendance', NULL, 1, 7, 1000),
(30, 'exam', 'exam', 'fa-pencil', NULL, 1, 8, 1000),
(31, 'examschedule', 'examschedule', 'fa-puzzle-piece', NULL, 1, 8, 1000),
(32, 'grade', 'grade', 'fa-signal', NULL, 1, 8, 1000),
(33, 'eattendance', 'eattendance', 'icon-eattendance', NULL, 1, 8, 1000),
(34, 'mark', 'mark', 'fa-flask', NULL, 1, 9, 1000),
(35, 'markpercentage', 'markpercentage', 'icon-markpercentage', NULL, 1, 9, 1000),
(36, 'promotion', 'promotion', 'icon-promotion', NULL, 1, 9, 1000),
(37, 'notice', 'notice', 'fa-calendar', '', 1, 17, 220),
(38, 'event', 'event', 'fa-calendar-check-o', '', 1, 17, 210),
(39, 'holiday', 'holiday', 'icon-holiday', '', 1, 17, 200),
(40, 'classreport', 'report/classreport', 'icon-classreport', '', 1, 18, 180),
(41, 'attendancereport', 'report/attendancereport', 'icon-attendancereport', '', 1, 18, 170),
(42, 'studentreport', 'report/studentreport', 'icon-studentreport', '', 1, 18, 160),
(43, 'schoolyear', 'schoolyear', 'fa fa-calendar-plus-o', '', 1, 20, 130),
(44, 'mailandsmstemplate', 'mailandsmstemplate', 'icon-template', '', 1, 20, 100),
(46, 'backup', 'backup', 'fa-download', '', 1, 20, 80),
(47, 'systemadmin', 'systemadmin', 'icon-systemadmin', '', 1, 20, 120),
(48, 'resetpassword', 'resetpassword', 'icon-reset_password', '', 1, 20, 110),
(49, 'permission', 'permission', 'icon-permission', '', 1, 20, 60),
(50, 'usertype', 'usertype', 'icon-role', '', 1, 20, 70),
(51, 'setting', 'setting', 'fa-gears', '', 1, 21, 30),
(52, 'paymentsettings', 'paymentsettings', 'icon-paymentsettings', '', 1, 21, 20),
(53, 'smssettings', 'smssettings', 'fa-wrench', '', 1, 21, 10),
(54, 'invoice', 'invoice', 'icon-invoice', '', 1, 16, 260),
(55, 'paymenthistory', 'paymenthistory', 'icon-payment', '', 1, 16, 250),
(56, 'transport', 'transport', 'icon-sbus', '', 1, 14, 340),
(57, 'member', 'tmember', 'icon-member', '', 1, 14, 330),
(58, 'hostel', 'hostel', 'icon-hostel', '', 1, 15, 310),
(59, 'category', 'category', 'fa-leaf', '', 1, 15, 300),
(61, 'member', 'hmember', 'icon-member', '', 1, 15, 290),
(62, 'feetypes', 'feetypes', 'icon-feetypes', '', 1, 16, 270),
(63, 'expense', 'expense', 'icon-expense', '', 1, 16, 240),
(64, 'member', 'lmember', 'icon-member', '', 1, 13, 380),
(65, 'books', 'book', 'icon-lbooks', '', 1, 13, 370),
(66, 'issue', 'issue', 'icon-issue', '', 1, 13, 360),
(69, 'import', 'bulkimport', 'fa-upload', '', 1, 20, 90),
(70, 'update', 'update', 'fa-refresh', '', 1, 20, 50),
(71, 'main_child', '#', 'fa-child', '', 1, 0, 430),
(72, 'activitiescategory', 'activitiescategory', 'fa-pagelines', '', 1, 71, 420),
(73, 'activities', 'activities', 'fa-fighter-jet', '', 1, 71, 410),
(74, 'childcare', 'childcare', 'fa-wheelchair', '', 1, 71, 400),
(75, 'uattendance', 'uattendance', 'fa-user-secret', NULL, 1, 7, 1000),
(76, 'studentgroup', 'studentgroup', 'fa-object-group', '', 1, 20, 129),
(77, 'vendor', 'vendor', 'fa-rss', '', 1, 96, 1000),
(78, 'location', 'location', 'fa-newspaper-o', '', 1, 96, 1000),
(79, 'asset_category', 'asset_category', 'fa-life-ring', '', 1, 96, 1000),
(80, 'asset', 'asset', 'fa-fax', '', 1, 96, 1000),
(81, 'complain', 'complain', 'fa-commenting', '', 1, 20, 128),
(82, 'question_group', 'question_group', 'fa-question-circle', '', 1, 88, 1000),
(83, 'question_level', 'question_level', 'fa-level-up', '', 1, 88, 1000),
(84, 'question_bank', 'question_bank', 'fa-qrcode', '', 1, 88, 1000),
(85, 'online_exam', 'online_exam', 'fa-slideshare', '', 1, 88, 1000),
(86, 'instruction', 'instruction', 'fa-map-signs', '', 1, 88, 1000),
(87, 'take_exam', 'take_exam', 'fa-user-secret', '', 1, 88, 1000),
(88, 'online_exam', '#', 'fa-graduation-cap', '', 1, 0, 1000),
(89, 'certificate', 'report/certificate', 'fa-diamond', '', 1, 18, 159),
(90, 'certificate_template', 'certificate_template', 'fa-certificate', '', 1, 20, 128),
(91, 'main_payroll', '#', 'fa-usd', NULL, 1, 0, 1000),
(92, 'salary_template', 'salary_template', 'fa-calculator', '', 1, 91, 1000),
(93, 'hourly_template', 'hourly_template', 'fa fa-clock-o', '', 1, 91, 1000),
(94, 'manage_salary', 'manage_salary', 'fa-beer', '', 1, 91, 1000),
(95, 'make_payment', 'make_payment', 'fa-money', NULL, 1, 91, 1000),
(96, 'main_asset_management', '#', 'fa-archive', NULL, 1, 0, 1000),
(97, 'asset_assignment', 'asset_assignment', 'fa-plug', NULL, 1, 96, 1000),
(98, 'purchase', 'purchase', 'fa-cart-plus', NULL, 1, 96, 1000),
(99, 'main_frontend', '#', 'fa-home', '', 1, 0, 30),
(100, 'pages', 'pages', 'fa-connectdevelop', '', 1, 99, 1000),
(101, 'frontend_setting', 'frontend_setting', 'fa-asterisk', '', 1, 99, 1000);

-- --------------------------------------------------------

--
-- Table structure for table `message`
--

CREATE TABLE IF NOT EXISTS `message` (
  `messageID` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `email` varchar(128) NOT NULL,
  `receiverID` int(11) NOT NULL,
  `receiverType` varchar(20) NOT NULL,
  `subject` varchar(255) NOT NULL,
  `message` text NOT NULL,
  `attach` text,
  `attach_file_name` text,
  `userID` int(11) NOT NULL,
  `usertype` varchar(20) NOT NULL,
  `useremail` varchar(40) NOT NULL,
  `year` year(4) NOT NULL,
  `date` date NOT NULL,
  `create_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `read_status` tinyint(1) NOT NULL,
  `from_status` int(11) NOT NULL,
  `to_status` int(11) NOT NULL,
  `fav_status` tinyint(1) NOT NULL,
  `fav_status_sent` tinyint(1) NOT NULL,
  `reply_status` int(11) NOT NULL,
  PRIMARY KEY (`messageID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE IF NOT EXISTS `migrations` (
  `version` int(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`version`) VALUES
(1);

-- --------------------------------------------------------

--
-- Table structure for table `notice`
--

CREATE TABLE IF NOT EXISTS `notice` (
  `noticeID` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(128) NOT NULL,
  `notice` text NOT NULL,
  `schoolyearID` int(11) NOT NULL,
  `date` date NOT NULL,
  `create_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`noticeID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `online_exam`
--

CREATE TABLE IF NOT EXISTS `online_exam` (
  `onlineExamID` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(512) NOT NULL,
  `description` text,
  `classID` int(11) DEFAULT '0',
  `sectionID` int(11) DEFAULT '0',
  `studentGroupID` int(11) DEFAULT '0',
  `subjectID` int(11) DEFAULT '0',
  `userTypeID` int(11) DEFAULT '0',
  `instructionID` int(11) DEFAULT '0',
  `schoolYearID` int(11) NOT NULL,
  `examTypeNumber` int(11) DEFAULT NULL,
  `startDateTime` datetime DEFAULT NULL,
  `endDateTime` datetime DEFAULT NULL,
  `duration` int(11) DEFAULT '0',
  `random` int(11) DEFAULT '0',
  `public` int(11) DEFAULT '0',
  `status` int(11) DEFAULT '1',
  `negativeMark` int(11) DEFAULT '0',
  `bonusMark` int(11) DEFAULT '0',
  `point` int(11) DEFAULT '0',
  `percentage` int(11) DEFAULT '0',
  `showMarkAfterExam` int(11) DEFAULT '0',
  `judge` int(11) DEFAULT '1' COMMENT 'Auto Judge = 1, Manually Judge = 0',
  `paid` int(11) DEFAULT '0',
  `validDays` int(11) DEFAULT '0',
  `cost` int(11) DEFAULT '0',
  `img` varchar(512) DEFAULT NULL,
  `create_date` datetime NOT NULL,
  `modify_date` datetime NOT NULL,
  `create_userID` int(11) NOT NULL,
  `create_usertypeID` int(11) NOT NULL,
  PRIMARY KEY (`onlineExamID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `online_exam_question`
--

CREATE TABLE IF NOT EXISTS `online_exam_question` (
  `onlineExamQuestionID` int(11) NOT NULL AUTO_INCREMENT,
  `onlineExamID` int(11) NOT NULL,
  `questionID` int(11) DEFAULT NULL,
  PRIMARY KEY (`onlineExamQuestionID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `online_exam_type`
--

CREATE TABLE IF NOT EXISTS `online_exam_type` (
  `onlineExamTypeID` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(512) DEFAULT NULL,
  `examTypeNumber` int(11) DEFAULT NULL,
  `status` int(11) DEFAULT '1',
  PRIMARY KEY (`onlineExamTypeID`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=6 ;

--
-- Dumping data for table `online_exam_type`
--

INSERT INTO `online_exam_type` (`onlineExamTypeID`, `title`, `examTypeNumber`, `status`) VALUES
(1, 'Date , Time and Duration', 5, 1),
(2, 'Date and Duration', 4, 1),
(3, 'Only Date', 3, 0),
(4, 'Only Duration', 2, 1),
(5, 'None', 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `online_exam_user_answer`
--

CREATE TABLE IF NOT EXISTS `online_exam_user_answer` (
  `onlineExamUserAnswerID` int(11) NOT NULL AUTO_INCREMENT,
  `onlineExamQuestionID` int(11) NOT NULL,
  `onlineExamRegisteredUserID` int(11) DEFAULT NULL,
  `userID` int(11) DEFAULT NULL,
  PRIMARY KEY (`onlineExamUserAnswerID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `online_exam_user_answer_option`
--

CREATE TABLE IF NOT EXISTS `online_exam_user_answer_option` (
  `onlineExamUserAnswerOptionID` int(11) NOT NULL AUTO_INCREMENT,
  `questionID` int(11) NOT NULL,
  `optionID` int(11) DEFAULT NULL,
  `typeID` int(11) NOT NULL,
  `text` text,
  `time` datetime NOT NULL,
  PRIMARY KEY (`onlineExamUserAnswerOptionID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `online_exam_user_status`
--

CREATE TABLE IF NOT EXISTS `online_exam_user_status` (
  `onlineExamUserStatus` int(11) NOT NULL AUTO_INCREMENT,
  `onlineExamID` int(11) NOT NULL,
  `duration` int(11) NOT NULL,
  `score` int(11) NOT NULL,
  `totalQuestion` int(11) NOT NULL,
  `nagetiveMark` int(11) NOT NULL,
  `time` datetime NOT NULL,
  PRIMARY KEY (`onlineExamUserStatus`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `pages`
--

CREATE TABLE IF NOT EXISTS `pages` (
  `pagesID` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(128) DEFAULT NULL,
  `url` varchar(250) DEFAULT NULL,
  `content` text,
  `status` int(11) DEFAULT NULL COMMENT '1 => active, 2 => draft, 3 => trash, 4 => review  ',
  `visibility` int(11) DEFAULT NULL COMMENT '1 => public 2 => protected 3 => private ',
  `publish_date` datetime DEFAULT NULL,
  `parentID` int(11) NOT NULL DEFAULT '0',
  `pageorder` int(11) NOT NULL DEFAULT '0',
  `template` varchar(250) DEFAULT NULL,
  `featured_image` varchar(11) DEFAULT NULL,
  `create_date` datetime DEFAULT NULL,
  `modify_date` datetime DEFAULT NULL,
  `create_userID` int(11) DEFAULT NULL,
  `create_username` varchar(40) DEFAULT NULL,
  `create_usertype` varchar(20) DEFAULT NULL,
  `password` varchar(40) DEFAULT NULL,
  PRIMARY KEY (`pagesID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `parents`
--

CREATE TABLE IF NOT EXISTS `parents` (
  `parentsID` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(60) NOT NULL,
  `father_name` varchar(60) NOT NULL,
  `mother_name` varchar(60) NOT NULL,
  `father_profession` varchar(40) NOT NULL,
  `mother_profession` varchar(40) NOT NULL,
  `email` varchar(40) DEFAULT NULL,
  `phone` tinytext,
  `address` text,
  `photo` varchar(200) DEFAULT NULL,
  `username` varchar(40) NOT NULL,
  `password` varchar(128) NOT NULL,
  `usertypeID` int(11) NOT NULL,
  `create_date` datetime NOT NULL,
  `modify_date` datetime NOT NULL,
  `create_userID` int(11) NOT NULL,
  `create_username` varchar(40) NOT NULL,
  `create_usertype` varchar(20) NOT NULL,
  `active` int(11) NOT NULL,
  PRIMARY KEY (`parentsID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `payment`
--

CREATE TABLE IF NOT EXISTS `payment` (
  `paymentID` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `schoolyearID` int(11) NOT NULL,
  `invoiceID` int(11) NOT NULL,
  `studentID` int(11) NOT NULL,
  `paymentamount` double NOT NULL,
  `paymenttype` varchar(128) NOT NULL,
  `paymentdate` date NOT NULL,
  `paymentday` varchar(11) NOT NULL,
  `paymentmonth` varchar(10) NOT NULL,
  `paymentyear` year(4) NOT NULL,
  `userID` int(11) NOT NULL,
  `usertypeID` int(11) NOT NULL,
  `uname` varchar(40) NOT NULL,
  `transactionID` text,
  PRIMARY KEY (`paymentID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `permissions`
--

CREATE TABLE IF NOT EXISTS `permissions` (
  `permissionID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `description` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL DEFAULT '' COMMENT 'In most cases, this should be the name of the module (e.g. news)',
  `active` enum('yes','no') CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL DEFAULT 'yes',
  PRIMARY KEY (`permissionID`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=775 ;

--
-- Dumping data for table `permissions`
--

INSERT INTO `permissions` (`permissionID`, `description`, `name`, `active`) VALUES
(501, 'Dashboard', 'dashboard', 'yes'),
(502, 'Student', 'student', 'yes'),
(503, 'Student Add', 'student_add', 'yes'),
(504, 'Student Edit', 'student_edit', 'yes'),
(505, 'Student Delete', 'student_delete', 'yes'),
(506, 'Student View', 'student_view', 'yes'),
(507, 'Parents', 'parents', 'yes'),
(508, 'Parents Add', 'parents_add', 'yes'),
(509, 'Parents Edit', 'parents_edit', 'yes'),
(510, 'Parents Delete', 'parents_delete', 'yes'),
(511, 'Parents View', 'parents_view', 'yes'),
(512, 'Teacher', 'teacher', 'yes'),
(513, 'Teacher Add', 'teacher_add', 'yes'),
(514, 'Teacher Edit', 'teacher_edit', 'yes'),
(515, 'Teacher Delete', 'teacher_delete', 'yes'),
(516, 'Teacher View', 'teacher_view', 'yes'),
(517, 'User', 'user', 'yes'),
(518, 'User Add', 'user_add', 'yes'),
(519, 'User Edit', 'user_edit', 'yes'),
(520, 'User Delete', 'user_delete', 'yes'),
(521, 'User View', 'user_view', 'yes'),
(522, 'Class', 'classes', 'yes'),
(523, 'Class Add', 'classes_add', 'yes'),
(524, 'Class Edit', 'classes_edit', 'yes'),
(525, 'Class Delete', 'classes_delete', 'yes'),
(526, 'Subject', 'subject', 'yes'),
(527, 'Subject Add', 'subject_add', 'yes'),
(528, 'Subject Edit', 'subject_edit', 'yes'),
(529, 'Subject Delete', 'subject_delete', 'yes'),
(530, 'Section', 'section', 'yes'),
(531, 'Section Add', 'section_add', 'yes'),
(532, 'Section Edit', 'section_edit', 'yes'),
(533, 'Semester Delete', 'semester_delete', 'yes'),
(534, 'Section Delete', 'section_delete', 'yes'),
(535, 'Syllabus', 'syllabus', 'yes'),
(536, 'Syllabus Add', 'syllabus_add', 'yes'),
(537, 'Syllabus Edit', 'syllabus_edit', 'yes'),
(538, 'Syllabus Delete', 'syllabus_delete', 'yes'),
(539, 'Assignment', 'assignment', 'yes'),
(540, 'Assignment Add', 'assignment_add', 'yes'),
(541, 'Assignment Edit', 'assignment_edit', 'yes'),
(542, 'Assignment Delete', 'assignment_delete', 'yes'),
(543, 'Assignment View', 'assignment_view', 'yes'),
(544, 'Routine', 'routine', 'yes'),
(545, 'Routine Add', 'routine_add', 'yes'),
(546, 'Routine Edit', 'routine_edit', 'yes'),
(547, 'Routine Delete', 'routine_delete', 'yes'),
(548, 'Student Attendance', 'sattendance', 'yes'),
(549, 'Student Attendance Add', 'sattendance_add', 'yes'),
(550, 'Student Attendance View', 'sattendance_view', 'yes'),
(551, 'Teacher Attendance', 'tattendance', 'yes'),
(552, 'Teacher Attendance Add', 'tattendance_add', 'yes'),
(553, 'Teacher Attendance View', 'tattendance_view', 'yes'),
(554, 'User Attendance', 'uattendance', 'yes'),
(555, 'User Attendance Add', 'uattendance_add', 'yes'),
(556, 'User Attendance View', 'uattendance_view', 'yes'),
(557, 'Exam', 'exam', 'yes'),
(558, 'Exam Add', 'exam_add', 'yes'),
(559, 'Exam Edit', 'exam_edit', 'yes'),
(560, 'Exam Delete', 'exam_delete', 'yes'),
(561, 'Examschedule', 'examschedule', 'yes'),
(562, 'Examschedule Add', 'examschedule_add', 'yes'),
(563, 'Examschedule Edit', 'examschedule_edit', 'yes'),
(564, 'Examschedule Delete', 'examschedule_delete', 'yes'),
(565, 'Grade', 'grade', 'yes'),
(566, 'Grade Add', 'grade_add', 'yes'),
(567, 'Grade Edit', 'grade_edit', 'yes'),
(568, 'Grade Delete', 'grade_delete', 'yes'),
(569, 'Exam Attendance', 'eattendance', 'yes'),
(570, 'Exam Attendance Add', 'eattendance_add', 'yes'),
(571, 'Mark', 'mark', 'yes'),
(572, 'Mark Add', 'mark_add', 'yes'),
(573, 'Mark View', 'mark_view', 'yes'),
(574, 'mark percentage', 'markpercentage', 'yes'),
(575, 'Mark Percentage Add', 'markpercentage_add', 'yes'),
(576, 'Mark Percentage Edit', 'markpercentage_edit', 'yes'),
(577, 'Mark Percentage Delete', 'markpercentage_delete', 'yes'),
(578, 'Promotion', 'promotion', 'yes'),
(579, 'Message', 'conversation', 'yes'),
(580, 'Media', 'media', 'yes'),
(581, 'Media Add', 'media_add', 'yes'),
(582, 'Media Delete', 'media_delete', 'yes'),
(583, 'Mail / SMS', 'mailandsms', 'yes'),
(584, 'Mail / SMS Add', 'mailandsms_add', 'yes'),
(585, 'Mail / SMS View', 'mailandsms_view', 'yes'),
(586, 'Question Group', 'question_group', 'yes'),
(587, 'Question Group Add', 'question_group_add', 'yes'),
(588, 'Question Group Edit', 'question_group_edit', 'yes'),
(589, 'Question Group Delete', 'question_group_delete', 'yes'),
(590, 'Question Level', 'question_level', 'yes'),
(591, 'Question Level Add', 'question_level_add', 'yes'),
(592, 'Question Level Edit', 'question_level_edit', 'yes'),
(593, 'Question Level Delete', 'question_level_delete', 'yes'),
(594, 'Question Bank', 'question_bank', 'yes'),
(595, 'Question Bank Add', 'question_bank_add', 'yes'),
(596, 'Question Bank Edit', 'question_bank_edit', 'yes'),
(597, 'Question Bank Delete', 'question_bank_delete', 'yes'),
(598, 'Question Bank View', 'question_bank_view', 'yes'),
(599, 'Online Exam', 'online_exam', 'yes'),
(600, 'Online Exam Add', 'online_exam_add', 'yes'),
(601, 'Online Exam Edit', 'online_exam_edit', 'yes'),
(602, 'Online Exam Delete', 'online_exam_delete', 'yes'),
(603, 'Instruction', 'instruction', 'yes'),
(604, 'Instruction Add', 'instruction_add', 'yes'),
(605, 'Instruction Edit', 'instruction_edit', 'yes'),
(606, 'Instruction Delete', 'instruction_delete', 'yes'),
(607, 'Instruction View', 'instruction_view', 'yes'),
(608, 'Salary Template', 'salary_template', 'yes'),
(609, 'Salary Template Add', 'salary_template_add', 'yes'),
(610, 'Salary Template Edit', 'salary_template_edit', 'yes'),
(611, 'Salary Template Delete', 'salary_template_delete', 'yes'),
(612, 'Salary Template View', 'salary_template_view', 'yes'),
(613, 'Hourly Template', 'hourly_template', 'yes'),
(614, 'Hourly Template Add', 'hourly_template_add', 'yes'),
(615, 'Hourly Template Edit', 'hourly_template_edit', 'yes'),
(616, 'Hourly Template Delete', 'hourly_template_delete', 'yes'),
(617, 'Manage Salary', 'manage_salary', 'yes'),
(618, 'Manage Salary Add', 'manage_salary_add', 'yes'),
(619, 'Manage Salary Edit', 'manage_salary_edit', 'yes'),
(620, 'Manage Salary Delete', 'manage_salary_delete', 'yes'),
(621, 'Manage Salary View', 'manage_salary_view', 'yes'),
(622, 'Make Payment', 'make_payment', 'yes'),
(623, 'Vendor', 'vendor', 'yes'),
(624, 'Vendor Add', 'vendor_add', 'yes'),
(625, 'Vendor Edit', 'vendor_edit', 'yes'),
(626, 'Vendor Delete', 'vendor_delete', 'yes'),
(627, 'Location', 'location', 'yes'),
(628, 'Location Add', 'location_add', 'yes'),
(629, 'Location Edit', 'location_edit', 'yes'),
(630, 'Location Delete', 'location_delete', 'yes'),
(631, 'Asset Category', 'asset_category', 'yes'),
(632, 'Asset Category Add', 'asset_category_add', 'yes'),
(633, 'Asset Category Edit', 'asset_category_edit', 'yes'),
(634, 'Asset Category Delete', 'asset_category_delete', 'yes'),
(635, 'Asset', 'asset', 'yes'),
(636, 'Asset Add', 'asset_add', 'yes'),
(637, 'Asset Edit', 'asset_edit', 'yes'),
(638, 'Asset Delete', 'asset_delete', 'yes'),
(639, 'Asset View', 'asset_view', 'yes'),
(640, 'Asset Assignment', 'asset_assignment', 'yes'),
(641, 'Asset Assignment Add', 'asset_assignment_add', 'yes'),
(642, 'Asset Assignment Edit', 'asset_assignment_edit', 'yes'),
(643, 'Asset Assignment Delete', 'asset_assignment_delete', 'yes'),
(644, 'Asset Assignment View', 'asset_assignment_view', 'yes'),
(645, 'Purchase', 'purchase', 'yes'),
(646, 'Purchase Add', 'purchase_add', 'yes'),
(647, 'Purchase Edit', 'purchase_edit', 'yes'),
(648, 'Purchase Delete', 'purchase_delete', 'yes'),
(649, 'Activities Category', 'activitiescategory', 'yes'),
(650, 'Activities Category Add', 'activitiescategory_add', 'yes'),
(651, 'Activities Category Edit', 'activitiescategory_edit', 'yes'),
(652, 'Activities Category Delete', 'activitiescategory_delete', 'yes'),
(653, 'Activities', 'activities', 'yes'),
(654, 'Activities Add', 'activities_add', 'yes'),
(655, 'Activities Delete', 'activities_delete', 'yes'),
(656, 'Child Care', 'childcare', 'yes'),
(657, 'Child Care Add', 'childcare_add', 'yes'),
(658, 'Child Care Delete', 'childcare_delete', 'yes'),
(659, 'Library Member', 'lmember', 'yes'),
(660, 'Library Member Add', 'lmember_add', 'yes'),
(661, 'Library Member Edit', 'lmember_edit', 'yes'),
(662, 'Library Member Delete', 'lmember_delete', 'yes'),
(663, 'Library Member View', 'lmember_view', 'yes'),
(664, 'Books', 'book', 'yes'),
(665, 'Books Add', 'book_add', 'yes'),
(666, 'Books Edit', 'book_edit', 'yes'),
(667, 'Books Delete', 'book_delete', 'yes'),
(668, 'Issue Book', 'issue', 'yes'),
(669, 'Issue Book Add', 'issue_add', 'yes'),
(670, 'Issue Book Edit', 'issue_edit', 'yes'),
(671, 'Issue Book View', 'issue_view', 'yes'),
(672, 'Transport', 'transport', 'yes'),
(673, 'Transport Add', 'transport_add', 'yes'),
(674, 'Transport Edit', 'transport_edit', 'yes'),
(675, 'Transport Delete', 'transport_delete', 'yes'),
(676, 'Transport Member', 'tmember', 'yes'),
(677, 'Transport Member Add', 'tmember_add', 'yes'),
(678, 'Transport Member Edit', 'tmember_edit', 'yes'),
(679, 'Transport Member Delete', 'tmember_delete', 'yes'),
(680, 'Transport Member View', 'tmember_view', 'yes'),
(681, 'Hostel', 'hostel', 'yes'),
(682, 'Hostel Add', 'hostel_add', 'yes'),
(683, 'Hostel Edit', 'hostel_edit', 'yes'),
(684, 'Hostel Delete', 'hostel_delete', 'yes'),
(685, 'Hostel Category', 'category', 'yes'),
(686, 'Hostel Category Add', 'category_add', 'yes'),
(687, 'Hostel Category Edit', 'category_edit', 'yes'),
(688, 'Hostel Category Delete', 'category_delete', 'yes'),
(689, 'Hostel Member', 'hmember', 'yes'),
(690, 'Hostel Member Add', 'hmember_add', 'yes'),
(691, 'Hostel Member Edit', 'hmember_edit', 'yes'),
(692, 'Hostel Member Delete', 'hmember_delete', 'yes'),
(693, 'Hostel Member View', 'hmember_view', 'yes'),
(694, 'Fee Types', 'feetypes', 'yes'),
(695, 'Fee Types Add', 'feetypes_add', 'yes'),
(696, 'Fee Types Edit', 'feetypes_edit', 'yes'),
(697, 'Fee Types Delete', 'feetypes_delete', 'yes'),
(698, 'Invoice', 'invoice', 'yes'),
(699, 'Invoice Add', 'invoice_add', 'yes'),
(700, 'Invoice Edit', 'invoice_edit', 'yes'),
(701, 'Invoice Delete', 'invoice_delete', 'yes'),
(702, 'Invoice View', 'invoice_view', 'yes'),
(703, 'Payment History', 'paymenthistory', 'yes'),
(704, 'Payment History Edit', 'paymenthistory_edit', 'yes'),
(705, 'Payment History Delete', 'paymenthistory_delete', 'yes'),
(706, 'Expense', 'expense', 'yes'),
(707, 'Expense Add', 'expense_add', 'yes'),
(708, 'Expense Edit', 'expense_edit', 'yes'),
(709, 'Expense Delete', 'expense_delete', 'yes'),
(710, 'Notice', 'notice', 'yes'),
(711, 'Notice Add', 'notice_add', 'yes'),
(712, 'Notice Edit', 'notice_edit', 'yes'),
(713, 'Notice Delete', 'notice_delete', 'yes'),
(714, 'Notice View', 'notice_view', 'yes'),
(715, 'Event', 'event', 'yes'),
(716, 'Event Add', 'event_add', 'yes'),
(717, 'Event Edit', 'event_edit', 'yes'),
(718, 'Event Delete', 'event_delete', 'yes'),
(719, 'Event View', 'event_view', 'yes'),
(720, 'Holiday', 'holiday', 'yes'),
(721, 'Holiday Add', 'holiday_add', 'yes'),
(722, 'Holiday Edit', 'holiday_edit', 'yes'),
(723, 'Holiday Delete', 'holiday_delete', 'yes'),
(724, 'Holiday View', 'holiday_view', 'yes'),
(725, 'Report', 'report', 'yes'),
(726, 'Visitor Information', 'visitorinfo', 'yes'),
(727, 'Visitor Information Delete', 'visitorinfo_delete', 'yes'),
(728, 'Visitor Infomation View', 'visitorinfo_view', 'yes'),
(729, 'Academic Year', 'schoolyear', 'yes'),
(730, 'Academic Year Add', 'schoolyear_add', 'yes'),
(731, 'Academic Year Edit', 'schoolyear_edit', 'yes'),
(732, 'Academic Year Delete', 'schoolyear_delete', 'yes'),
(733, 'Student Group', 'studentgroup', 'yes'),
(734, 'Student Group Add', 'studentgroup_add', 'yes'),
(735, 'Student Group Edit', 'studentgroup_edit', 'yes'),
(736, 'Student Group Delete', 'studentgroup_delete', 'yes'),
(737, 'Complain', 'complain', 'yes'),
(738, 'Complain Add', 'complain_add', 'yes'),
(739, 'Complain Edit', 'complain_edit', 'yes'),
(740, 'Complain Delete', 'complain_delete', 'yes'),
(741, 'Complain View', 'complain_view', 'yes'),
(742, 'Certificate Template', 'certificate_template', 'yes'),
(743, 'Certificate Template Add', 'certificate_template_add', 'yes'),
(744, 'Certificate Template Edit', 'certificate_template_edit', 'yes'),
(745, 'Certificate Template Delete', 'certificate_template_delete', 'yes'),
(746, 'Certificate Template View', 'certificate_template_view', 'yes'),
(747, 'System Admin', 'systemadmin', 'yes'),
(748, 'System Admin Add', 'systemadmin_add', 'yes'),
(749, 'System Admin Edit', 'systemadmin_edit', 'yes'),
(750, 'System Admin Delete', 'systemadmin_delete', 'yes'),
(751, 'System Admin View', 'systemadmin_view', 'yes'),
(752, 'Reset Password', 'resetpassword', 'yes'),
(753, 'Mail / SMS Template', 'mailandsmstemplate', 'yes'),
(754, 'Mail / SMS Template Add', 'mailandsmstemplate_add', 'yes'),
(755, 'Mail / SMS Template Edit', 'mailandsmstemplate_edit', 'yes'),
(756, 'Mail / SMS Template Delete', 'mailandsmstemplate_delete', 'yes'),
(757, 'Mail / SMS Template View', 'mailandsmstemplate_view', 'yes'),
(758, 'Import', 'bulkimport ', 'yes'),
(759, 'Backup', 'backup', 'yes'),
(760, 'Role', 'usertype', 'yes'),
(761, 'Role Add', 'usertype_add', 'yes'),
(762, 'Role Edit', 'usertype_edit', 'yes'),
(763, 'Role Delete', 'usertype_delete', 'yes'),
(764, 'Permission', 'permission', 'yes'),
(765, 'Auto Update', 'update', 'yes'),
(766, 'General Setting', 'setting', 'yes'),
(767, 'General Setting Edit', 'setting_edit', 'yes'),
(768, 'Payment Settings', 'paymentsettings', 'yes'),
(769, 'SMS Settings', 'smssettings', 'yes'),
(770, 'Pages', 'pages', 'yes'),
(771, 'Pages Add', 'pages_add', 'yes'),
(772, 'Pages Edit', 'pages_edit', 'yes'),
(773, 'Pages Delete', 'pages_delete', 'yes'),
(774, 'Frontend Setting', 'frontend_setting', 'yes');

-- --------------------------------------------------------

--
-- Table structure for table `permission_relationships`
--

CREATE TABLE IF NOT EXISTS `permission_relationships` (
  `permission_id` int(11) NOT NULL,
  `usertype_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `permission_relationships`
--

INSERT INTO `permission_relationships` (`permission_id`, `usertype_id`) VALUES
(501, 1),
(502, 1),
(503, 1),
(504, 1),
(505, 1),
(506, 1),
(507, 1),
(508, 1),
(509, 1),
(510, 1),
(511, 1),
(512, 1),
(513, 1),
(514, 1),
(515, 1),
(516, 1),
(517, 1),
(518, 1),
(519, 1),
(520, 1),
(521, 1),
(522, 1),
(523, 1),
(524, 1),
(525, 1),
(526, 1),
(527, 1),
(528, 1),
(529, 1),
(530, 1),
(531, 1),
(532, 1),
(534, 1),
(535, 1),
(536, 1),
(537, 1),
(538, 1),
(539, 1),
(540, 1),
(541, 1),
(542, 1),
(543, 1),
(544, 1),
(545, 1),
(546, 1),
(547, 1),
(548, 1),
(549, 1),
(550, 1),
(551, 1),
(552, 1),
(553, 1),
(554, 1),
(555, 1),
(556, 1),
(557, 1),
(558, 1),
(559, 1),
(560, 1),
(561, 1),
(562, 1),
(563, 1),
(564, 1),
(565, 1),
(566, 1),
(567, 1),
(568, 1),
(569, 1),
(570, 1),
(571, 1),
(572, 1),
(573, 1),
(574, 1),
(575, 1),
(576, 1),
(577, 1),
(578, 1),
(579, 1),
(580, 1),
(581, 1),
(582, 1),
(583, 1),
(584, 1),
(585, 1),
(586, 1),
(587, 1),
(588, 1),
(589, 1),
(590, 1),
(591, 1),
(592, 1),
(593, 1),
(594, 1),
(595, 1),
(596, 1),
(597, 1),
(598, 1),
(599, 1),
(600, 1),
(601, 1),
(602, 1),
(603, 1),
(604, 1),
(605, 1),
(606, 1),
(607, 1),
(608, 1),
(609, 1),
(610, 1),
(611, 1),
(612, 1),
(613, 1),
(614, 1),
(615, 1),
(616, 1),
(617, 1),
(618, 1),
(619, 1),
(620, 1),
(621, 1),
(622, 1),
(623, 1),
(624, 1),
(625, 1),
(626, 1),
(627, 1),
(628, 1),
(629, 1),
(630, 1),
(631, 1),
(632, 1),
(633, 1),
(634, 1),
(635, 1),
(636, 1),
(637, 1),
(638, 1),
(639, 1),
(640, 1),
(641, 1),
(642, 1),
(643, 1),
(644, 1),
(645, 1),
(646, 1),
(647, 1),
(648, 1),
(649, 1),
(650, 1),
(651, 1),
(652, 1),
(653, 1),
(654, 1),
(655, 1),
(656, 1),
(657, 1),
(658, 1),
(659, 1),
(660, 1),
(661, 1),
(662, 1),
(663, 1),
(664, 1),
(665, 1),
(666, 1),
(667, 1),
(668, 1),
(669, 1),
(670, 1),
(671, 1),
(672, 1),
(673, 1),
(674, 1),
(675, 1),
(676, 1),
(677, 1),
(678, 1),
(679, 1),
(680, 1),
(681, 1),
(682, 1),
(683, 1),
(684, 1),
(685, 1),
(686, 1),
(687, 1),
(688, 1),
(689, 1),
(690, 1),
(691, 1),
(692, 1),
(693, 1),
(694, 1),
(695, 1),
(696, 1),
(697, 1),
(698, 1),
(699, 1),
(700, 1),
(701, 1),
(702, 1),
(703, 1),
(704, 1),
(705, 1),
(706, 1),
(707, 1),
(708, 1),
(709, 1),
(710, 1),
(711, 1),
(712, 1),
(713, 1),
(714, 1),
(715, 1),
(716, 1),
(717, 1),
(718, 1),
(719, 1),
(720, 1),
(721, 1),
(722, 1),
(723, 1),
(724, 1),
(725, 1),
(726, 1),
(727, 1),
(728, 1),
(729, 1),
(730, 1),
(731, 1),
(732, 1),
(733, 1),
(734, 1),
(735, 1),
(736, 1),
(737, 1),
(738, 1),
(739, 1),
(740, 1),
(741, 1),
(742, 1),
(743, 1),
(744, 1),
(745, 1),
(746, 1),
(747, 1),
(748, 1),
(749, 1),
(750, 1),
(751, 1),
(752, 1),
(753, 1),
(754, 1),
(755, 1),
(756, 1),
(757, 1),
(758, 1),
(759, 1),
(760, 1),
(761, 1),
(762, 1),
(763, 1),
(764, 1),
(765, 1),
(766, 1),
(767, 1),
(768, 1),
(769, 1),
(770, 1),
(771, 1),
(772, 1),
(773, 1),
(774, 1),
(501, 2),
(502, 2),
(506, 2),
(507, 2),
(511, 2),
(512, 2),
(516, 2),
(526, 2),
(535, 2),
(536, 2),
(537, 2),
(538, 2),
(539, 2),
(540, 2),
(541, 2),
(542, 2),
(543, 2),
(544, 2),
(548, 2),
(549, 2),
(550, 2),
(551, 2),
(553, 2),
(554, 2),
(556, 2),
(561, 2),
(569, 2),
(570, 2),
(571, 2),
(572, 2),
(573, 2),
(579, 2),
(580, 2),
(581, 2),
(582, 2),
(586, 2),
(587, 2),
(588, 2),
(590, 2),
(591, 2),
(592, 2),
(594, 2),
(595, 2),
(596, 2),
(598, 2),
(599, 2),
(600, 2),
(601, 2),
(603, 2),
(604, 2),
(605, 2),
(607, 2),
(653, 2),
(654, 2),
(655, 2),
(664, 2),
(672, 2),
(681, 2),
(685, 2),
(710, 2),
(714, 2),
(715, 2),
(719, 2),
(720, 2),
(724, 2),
(737, 2),
(738, 2),
(501, 3),
(512, 3),
(526, 3),
(535, 3),
(539, 3),
(543, 3),
(544, 3),
(548, 3),
(561, 3),
(571, 3),
(579, 3),
(580, 3),
(653, 3),
(659, 3),
(664, 3),
(668, 3),
(671, 3),
(672, 3),
(676, 3),
(681, 3),
(685, 3),
(689, 3),
(698, 3),
(702, 3),
(703, 3),
(710, 3),
(714, 3),
(715, 3),
(719, 3),
(720, 3),
(724, 3),
(737, 3),
(738, 3),
(501, 4),
(512, 4),
(516, 4),
(526, 4),
(535, 4),
(544, 4),
(548, 4),
(550, 4),
(561, 4),
(571, 4),
(573, 4),
(579, 4),
(580, 4),
(653, 4),
(656, 4),
(659, 4),
(663, 4),
(664, 4),
(668, 4),
(671, 4),
(672, 4),
(676, 4),
(680, 4),
(681, 4),
(685, 4),
(689, 4),
(693, 4),
(698, 4),
(702, 4),
(703, 4),
(710, 4),
(714, 4),
(715, 4),
(719, 4),
(720, 4),
(724, 4),
(737, 4),
(738, 4),
(501, 5),
(512, 5),
(516, 5),
(554, 5),
(556, 5),
(579, 5),
(580, 5),
(608, 5),
(609, 5),
(610, 5),
(611, 5),
(612, 5),
(613, 5),
(614, 5),
(615, 5),
(616, 5),
(617, 5),
(618, 5),
(619, 5),
(620, 5),
(621, 5),
(622, 5),
(672, 5),
(676, 5),
(677, 5),
(678, 5),
(679, 5),
(680, 5),
(681, 5),
(685, 5),
(689, 5),
(690, 5),
(691, 5),
(692, 5),
(693, 5),
(694, 5),
(695, 5),
(696, 5),
(697, 5),
(698, 5),
(699, 5),
(700, 5),
(701, 5),
(702, 5),
(703, 5),
(704, 5),
(705, 5),
(706, 5),
(707, 5),
(708, 5),
(709, 5),
(710, 5),
(714, 5),
(715, 5),
(719, 5),
(720, 5),
(724, 5),
(737, 5),
(738, 5),
(501, 6),
(512, 6),
(516, 6),
(526, 6),
(554, 6),
(556, 6),
(579, 6),
(580, 6),
(659, 6),
(660, 6),
(661, 6),
(662, 6),
(663, 6),
(664, 6),
(665, 6),
(666, 6),
(667, 6),
(668, 6),
(669, 6),
(670, 6),
(671, 6),
(672, 6),
(681, 6),
(685, 6),
(710, 6),
(714, 6),
(715, 6),
(719, 6),
(720, 6),
(724, 6),
(737, 6),
(738, 6),
(501, 7),
(502, 7),
(506, 7),
(507, 7),
(511, 7),
(512, 7),
(516, 7),
(517, 7),
(521, 7),
(554, 7),
(556, 7),
(579, 7),
(580, 7),
(681, 7),
(685, 7),
(689, 7),
(693, 7),
(710, 7),
(714, 7),
(715, 7),
(719, 7),
(720, 7),
(724, 7),
(726, 7),
(727, 7),
(728, 7),
(737, 7),
(738, 7),
(501, 8);

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE IF NOT EXISTS `posts` (
  `postsID` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(128) DEFAULT NULL,
  `url` varchar(250) DEFAULT NULL,
  `content` text,
  `status` int(11) DEFAULT NULL COMMENT '1 => active, 2 => draft, 3 => trash, 4 => review  ',
  `visibility` int(11) DEFAULT NULL COMMENT '1 => public 2 => protected 3 => private ',
  `publish_date` datetime DEFAULT NULL,
  `parentID` int(11) NOT NULL DEFAULT '0',
  `postorder` int(11) NOT NULL DEFAULT '0',
  `featured_image` varchar(11) DEFAULT NULL,
  `create_date` datetime DEFAULT NULL,
  `modify_date` datetime DEFAULT NULL,
  `create_userID` int(11) DEFAULT NULL,
  `create_username` varchar(40) DEFAULT NULL,
  `create_usertype` varchar(20) DEFAULT NULL,
  `password` varchar(40) DEFAULT NULL,
  PRIMARY KEY (`postsID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `posts_categories`
--

CREATE TABLE IF NOT EXISTS `posts_categories` (
  `posts_categoriesID` int(11) NOT NULL AUTO_INCREMENT,
  `posts_categories` varchar(40) DEFAULT NULL,
  `posts_slug` varchar(250) DEFAULT NULL,
  `posts_parent` int(11) DEFAULT '0',
  `posts_description` text,
  PRIMARY KEY (`posts_categoriesID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `posts_category`
--

CREATE TABLE IF NOT EXISTS `posts_category` (
  `posts_categoryID` int(11) NOT NULL AUTO_INCREMENT,
  `postsID` int(11) NOT NULL,
  `posts_categoriesID` int(11) NOT NULL,
  PRIMARY KEY (`posts_categoryID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `promotionlog`
--

CREATE TABLE IF NOT EXISTS `promotionlog` (
  `promotionLogID` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `promotionType` varchar(50) DEFAULT NULL,
  `classesID` int(11) NOT NULL,
  `jumpClassID` int(11) NOT NULL,
  `schoolYearID` int(11) NOT NULL,
  `jumpSchoolYearID` int(11) NOT NULL,
  `subjectandsubjectcodeandmark` longtext,
  `exams` longtext,
  `markpercentages` longtext,
  `promoteStudents` longtext,
  `status` int(11) NOT NULL DEFAULT '0',
  `created_at` datetime NOT NULL,
  `create_userID` int(11) NOT NULL,
  PRIMARY KEY (`promotionLogID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `purchase`
--

CREATE TABLE IF NOT EXISTS `purchase` (
  `purchaseID` int(11) NOT NULL AUTO_INCREMENT,
  `assetID` int(11) NOT NULL,
  `vendorID` int(11) NOT NULL,
  `quantity` int(11) NOT NULL,
  `unit` int(11) DEFAULT NULL,
  `purchase_date` date DEFAULT NULL,
  `service_date` date DEFAULT NULL,
  `purchase_price` double NOT NULL,
  `purchased_by` int(11) NOT NULL,
  `usertypeID` int(11) NOT NULL,
  `status` int(11) NOT NULL DEFAULT '0',
  `expire_date` date DEFAULT NULL,
  `create_date` date NOT NULL,
  `modify_date` date NOT NULL,
  `create_userID` int(11) NOT NULL,
  `create_usertypeID` int(11) NOT NULL,
  PRIMARY KEY (`purchaseID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `question_answer`
--

CREATE TABLE IF NOT EXISTS `question_answer` (
  `answerID` int(11) NOT NULL AUTO_INCREMENT,
  `questionID` int(11) NOT NULL,
  `optionID` int(11) DEFAULT NULL,
  `typeNumber` int(11) NOT NULL,
  `text` text,
  PRIMARY KEY (`answerID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `question_bank`
--

CREATE TABLE IF NOT EXISTS `question_bank` (
  `questionBankID` int(11) NOT NULL AUTO_INCREMENT,
  `question` text NOT NULL,
  `explanation` text,
  `levelID` int(11) DEFAULT NULL,
  `groupID` int(11) DEFAULT NULL,
  `totalQuestion` int(11) DEFAULT '0',
  `totalOption` int(11) DEFAULT NULL,
  `typeNumber` int(11) DEFAULT NULL,
  `parentID` int(11) DEFAULT '0',
  `time` int(11) DEFAULT '0',
  `mark` int(11) DEFAULT '0',
  `hints` text,
  `upload` varchar(512) DEFAULT NULL,
  `subjectID` int(11) DEFAULT NULL,
  `create_date` datetime NOT NULL,
  `modify_date` datetime NOT NULL,
  `create_userID` int(11) NOT NULL,
  `create_usertypeID` int(11) NOT NULL,
  PRIMARY KEY (`questionBankID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `question_group`
--

CREATE TABLE IF NOT EXISTS `question_group` (
  `questionGroupID` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(250) NOT NULL,
  PRIMARY KEY (`questionGroupID`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=6 ;

--
-- Dumping data for table `question_group`
--

INSERT INTO `question_group` (`questionGroupID`, `title`) VALUES
(1, 'Reasoning'),
(2, 'Computer Knowledge'),
(3, 'General'),
(4, 'Math'),
(5, 'GRE');

-- --------------------------------------------------------

--
-- Table structure for table `question_level`
--

CREATE TABLE IF NOT EXISTS `question_level` (
  `questionLevelID` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(250) NOT NULL,
  PRIMARY KEY (`questionLevelID`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `question_level`
--

INSERT INTO `question_level` (`questionLevelID`, `name`) VALUES
(1, 'Easy'),
(2, 'Medium'),
(3, 'Hard');

-- --------------------------------------------------------

--
-- Table structure for table `question_option`
--

CREATE TABLE IF NOT EXISTS `question_option` (
  `optionID` int(11) NOT NULL AUTO_INCREMENT,
  `questionID` int(11) NOT NULL,
  `name` varchar(512) NOT NULL,
  `img` varchar(512) DEFAULT NULL,
  PRIMARY KEY (`optionID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `question_type`
--

CREATE TABLE IF NOT EXISTS `question_type` (
  `questionTypeID` int(11) NOT NULL AUTO_INCREMENT,
  `typeNumber` int(11) NOT NULL,
  `name` varchar(512) NOT NULL,
  PRIMARY KEY (`questionTypeID`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `question_type`
--

INSERT INTO `question_type` (`questionTypeID`, `typeNumber`, `name`) VALUES
(1, 1, 'Single Answer'),
(2, 2, 'Multi Answer'),
(3, 3, 'Fill in the blanks');

-- --------------------------------------------------------

--
-- Table structure for table `reply_msg`
--

CREATE TABLE IF NOT EXISTS `reply_msg` (
  `replyID` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `messageID` int(11) NOT NULL,
  `reply_msg` text NOT NULL,
  `status` int(11) NOT NULL,
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`replyID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `reset`
--

CREATE TABLE IF NOT EXISTS `reset` (
  `resetID` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `keyID` varchar(128) NOT NULL,
  `email` varchar(60) NOT NULL,
  PRIMARY KEY (`resetID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `routine`
--

CREATE TABLE IF NOT EXISTS `routine` (
  `routineID` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `classesID` int(11) NOT NULL,
  `sectionID` int(11) NOT NULL,
  `subjectID` int(11) NOT NULL,
  `schoolyearID` int(11) NOT NULL,
  `teacherID` int(11) NOT NULL,
  `day` varchar(60) NOT NULL,
  `start_time` varchar(10) NOT NULL,
  `end_time` varchar(10) NOT NULL,
  `room` tinytext NOT NULL,
  PRIMARY KEY (`routineID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `salary_option`
--

CREATE TABLE IF NOT EXISTS `salary_option` (
  `salary_optionID` int(11) NOT NULL AUTO_INCREMENT,
  `salary_templateID` int(11) NOT NULL,
  `option_type` int(11) NOT NULL COMMENT 'Allowances =1, Dllowances = 2, Increment = 3',
  `label_name` varchar(128) DEFAULT NULL,
  `label_amount` int(11) NOT NULL,
  PRIMARY KEY (`salary_optionID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `salary_template`
--

CREATE TABLE IF NOT EXISTS `salary_template` (
  `salary_templateID` int(11) NOT NULL AUTO_INCREMENT,
  `salary_grades` varchar(128) NOT NULL,
  `basic_salary` text NOT NULL,
  `overtime_rate` text NOT NULL,
  PRIMARY KEY (`salary_templateID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `schoolyear`
--

CREATE TABLE IF NOT EXISTS `schoolyear` (
  `schoolyearID` int(11) NOT NULL AUTO_INCREMENT,
  `schooltype` varchar(40) DEFAULT NULL,
  `schoolyear` varchar(128) NOT NULL,
  `schoolyeartitle` varchar(128) DEFAULT NULL,
  `semestercode` int(11) DEFAULT NULL,
  `create_date` datetime NOT NULL,
  `modify_date` datetime NOT NULL,
  `create_userID` int(11) NOT NULL,
  `create_username` varchar(100) NOT NULL,
  `create_usertype` varchar(100) NOT NULL,
  PRIMARY KEY (`schoolyearID`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `schoolyear`
--

INSERT INTO `schoolyear` (`schoolyearID`, `schooltype`, `schoolyear`, `schoolyeartitle`, `semestercode`, `create_date`, `modify_date`, `create_userID`, `create_username`, `create_usertype`) VALUES
(1, 'classbase', '2017-2018', '', 0, '2017-01-01 06:21:11', '2017-01-01 08:22:20', 1, 'admin', 'Admin'),
(2, 'semesterbase', '2017-2018', 'Spring', 11, '2017-01-01 08:19:17', '2017-01-06 08:23:15', 1, 'admin', 'Admin');

-- --------------------------------------------------------

--
-- Table structure for table `school_sessions`
--

CREATE TABLE IF NOT EXISTS `school_sessions` (
  `id` varchar(128) NOT NULL,
  `ip_address` varchar(45) NOT NULL,
  `timestamp` int(10) unsigned NOT NULL DEFAULT '0',
  `data` blob NOT NULL,
  KEY `ci_sessions_timestamp` (`timestamp`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `school_sessions`
--

INSERT INTO `school_sessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES
('41qqo51ilt11li8igjqb2dksqo3vr87i', '150.107.205.157', 1518172293, 0x5f5f63695f6c6173745f726567656e65726174657c693a313531383137323239333b6c616e677c733a373a22656e676c697368223b6c6f67696e7573657249447c733a313a2231223b6e616d657c733a353a2261646d696e223b656d61696c7c733a32313a22646173616d72697468746440676d61696c2e636f6d223b757365727479706549447c733a313a2231223b75736572747970657c733a353a2241646d696e223b757365726e616d657c733a353a2261646d696e223b70686f746f7c733a31313a2264656661756c742e706e67223b64656661756c747363686f6f6c7965617249447c733a313a2231223b6c6f67676564696e7c623a313b6765745f7065726d697373696f6e7c623a313b6d61737465725f7065726d697373696f6e5f7365747c613a3237393a7b733a393a2264617368626f617264223b733a333a22796573223b733a373a2273747564656e74223b733a333a22796573223b733a31313a2273747564656e745f616464223b733a333a22796573223b733a31323a2273747564656e745f65646974223b733a333a22796573223b733a31343a2273747564656e745f64656c657465223b733a333a22796573223b733a31323a2273747564656e745f76696577223b733a333a22796573223b733a373a22706172656e7473223b733a333a22796573223b733a31313a22706172656e74735f616464223b733a333a22796573223b733a31323a22706172656e74735f65646974223b733a333a22796573223b733a31343a22706172656e74735f64656c657465223b733a333a22796573223b733a31323a22706172656e74735f76696577223b733a333a22796573223b733a373a2274656163686572223b733a333a22796573223b733a31313a22746561636865725f616464223b733a333a22796573223b733a31323a22746561636865725f65646974223b733a333a22796573223b733a31343a22746561636865725f64656c657465223b733a333a22796573223b733a31323a22746561636865725f76696577223b733a333a22796573223b733a343a2275736572223b733a333a22796573223b733a383a22757365725f616464223b733a333a22796573223b733a393a22757365725f65646974223b733a333a22796573223b733a31313a22757365725f64656c657465223b733a333a22796573223b733a393a22757365725f76696577223b733a333a22796573223b733a373a22636c6173736573223b733a333a22796573223b733a31313a22636c61737365735f616464223b733a333a22796573223b733a31323a22636c61737365735f65646974223b733a333a22796573223b733a31343a22636c61737365735f64656c657465223b733a333a22796573223b733a373a227375626a656374223b733a333a22796573223b733a31313a227375626a6563745f616464223b733a333a22796573223b733a31323a227375626a6563745f65646974223b733a333a22796573223b733a31343a227375626a6563745f64656c657465223b733a333a22796573223b733a373a2273656374696f6e223b733a333a22796573223b733a31313a2273656374696f6e5f616464223b733a333a22796573223b733a31323a2273656374696f6e5f65646974223b733a333a22796573223b733a31353a2273656d65737465725f64656c657465223b733a333a22796573223b733a31343a2273656374696f6e5f64656c657465223b733a333a22796573223b733a383a2273796c6c61627573223b733a333a22796573223b733a31323a2273796c6c616275735f616464223b733a333a22796573223b733a31333a2273796c6c616275735f65646974223b733a333a22796573223b733a31353a2273796c6c616275735f64656c657465223b733a333a22796573223b733a31303a2261737369676e6d656e74223b733a333a22796573223b733a31343a2261737369676e6d656e745f616464223b733a333a22796573223b733a31353a2261737369676e6d656e745f65646974223b733a333a22796573223b733a31373a2261737369676e6d656e745f64656c657465223b733a333a22796573223b733a31353a2261737369676e6d656e745f76696577223b733a333a22796573223b733a373a22726f7574696e65223b733a333a22796573223b733a31313a22726f7574696e655f616464223b733a333a22796573223b733a31323a22726f7574696e655f65646974223b733a333a22796573223b733a31343a22726f7574696e655f64656c657465223b733a333a22796573223b733a31313a2273617474656e64616e6365223b733a333a22796573223b733a31353a2273617474656e64616e63655f616464223b733a333a22796573223b733a31363a2273617474656e64616e63655f76696577223b733a333a22796573223b733a31313a2274617474656e64616e6365223b733a333a22796573223b733a31353a2274617474656e64616e63655f616464223b733a333a22796573223b733a31363a2274617474656e64616e63655f76696577223b733a333a22796573223b733a31313a2275617474656e64616e6365223b733a333a22796573223b733a31353a2275617474656e64616e63655f616464223b733a333a22796573223b733a31363a2275617474656e64616e63655f76696577223b733a333a22796573223b733a343a226578616d223b733a333a22796573223b733a383a226578616d5f616464223b733a333a22796573223b733a393a226578616d5f65646974223b733a333a22796573223b733a31313a226578616d5f64656c657465223b733a333a22796573223b733a31323a226578616d7363686564756c65223b733a333a22796573223b733a31363a226578616d7363686564756c655f616464223b733a333a22796573223b733a31373a226578616d7363686564756c655f65646974223b733a333a22796573223b733a31393a226578616d7363686564756c655f64656c657465223b733a333a22796573223b733a353a226772616465223b733a333a22796573223b733a393a2267726164655f616464223b733a333a22796573223b733a31303a2267726164655f65646974223b733a333a22796573223b733a31323a2267726164655f64656c657465223b733a333a22796573223b733a31313a2265617474656e64616e6365223b733a333a22796573223b733a31353a2265617474656e64616e63655f616464223b733a333a22796573223b733a343a226d61726b223b733a333a22796573223b733a383a226d61726b5f616464223b733a333a22796573223b733a393a226d61726b5f76696577223b733a333a22796573223b733a31343a226d61726b70657263656e74616765223b733a333a22796573223b733a31383a226d61726b70657263656e746167655f616464223b733a333a22796573223b733a31393a226d61726b70657263656e746167655f65646974223b733a333a22796573223b733a32313a226d61726b70657263656e746167655f64656c657465223b733a333a22796573223b733a393a2270726f6d6f74696f6e223b733a333a22796573223b733a31323a22636f6e766572736174696f6e223b733a333a22796573223b733a353a226d65646961223b733a333a22796573223b733a393a226d656469615f616464223b733a333a22796573223b733a31323a226d656469615f64656c657465223b733a333a22796573223b733a31303a226d61696c616e64736d73223b733a333a22796573223b733a31343a226d61696c616e64736d735f616464223b733a333a22796573223b733a31353a226d61696c616e64736d735f76696577223b733a333a22796573223b733a31343a227175657374696f6e5f67726f7570223b733a333a22796573223b733a31383a227175657374696f6e5f67726f75705f616464223b733a333a22796573223b733a31393a227175657374696f6e5f67726f75705f65646974223b733a333a22796573223b733a32313a227175657374696f6e5f67726f75705f64656c657465223b733a333a22796573223b733a31343a227175657374696f6e5f6c6576656c223b733a333a22796573223b733a31383a227175657374696f6e5f6c6576656c5f616464223b733a333a22796573223b733a31393a227175657374696f6e5f6c6576656c5f65646974223b733a333a22796573223b733a32313a227175657374696f6e5f6c6576656c5f64656c657465223b733a333a22796573223b733a31333a227175657374696f6e5f62616e6b223b733a333a22796573223b733a31373a227175657374696f6e5f62616e6b5f616464223b733a333a22796573223b733a31383a227175657374696f6e5f62616e6b5f65646974223b733a333a22796573223b733a32303a227175657374696f6e5f62616e6b5f64656c657465223b733a333a22796573223b733a31383a227175657374696f6e5f62616e6b5f76696577223b733a333a22796573223b733a31313a226f6e6c696e655f6578616d223b733a333a22796573223b733a31353a226f6e6c696e655f6578616d5f616464223b733a333a22796573223b733a31363a226f6e6c696e655f6578616d5f65646974223b733a333a22796573223b733a31383a226f6e6c696e655f6578616d5f64656c657465223b733a333a22796573223b733a31313a22696e737472756374696f6e223b733a333a22796573223b733a31353a22696e737472756374696f6e5f616464223b733a333a22796573223b733a31363a22696e737472756374696f6e5f65646974223b733a333a22796573223b733a31383a22696e737472756374696f6e5f64656c657465223b733a333a22796573223b733a31363a22696e737472756374696f6e5f76696577223b733a333a22796573223b733a31353a2273616c6172795f74656d706c617465223b733a333a22796573223b733a31393a2273616c6172795f74656d706c6174655f616464223b733a333a22796573223b733a32303a2273616c6172795f74656d706c6174655f65646974223b733a333a22796573223b733a32323a2273616c6172795f74656d706c6174655f64656c657465223b733a333a22796573223b733a32303a2273616c6172795f74656d706c6174655f76696577223b733a333a22796573223b733a31353a22686f75726c795f74656d706c617465223b733a333a22796573223b733a31393a22686f75726c795f74656d706c6174655f616464223b733a333a22796573223b733a32303a22686f75726c795f74656d706c6174655f65646974223b733a333a22796573223b733a32323a22686f75726c795f74656d706c6174655f64656c657465223b733a333a22796573223b733a31333a226d616e6167655f73616c617279223b733a333a22796573223b733a31373a226d616e6167655f73616c6172795f616464223b733a333a22796573223b733a31383a226d616e6167655f73616c6172795f65646974223b733a333a22796573223b733a32303a226d616e6167655f73616c6172795f64656c657465223b733a333a22796573223b733a31383a226d616e6167655f73616c6172795f76696577223b733a333a22796573223b733a31323a226d616b655f7061796d656e74223b733a333a22796573223b733a363a2276656e646f72223b733a333a22796573223b733a31303a2276656e646f725f616464223b733a333a22796573223b733a31313a2276656e646f725f65646974223b733a333a22796573223b733a31333a2276656e646f725f64656c657465223b733a333a22796573223b733a383a226c6f636174696f6e223b733a333a22796573223b733a31323a226c6f636174696f6e5f616464223b733a333a22796573223b733a31333a226c6f636174696f6e5f65646974223b733a333a22796573223b733a31353a226c6f636174696f6e5f64656c657465223b733a333a22796573223b733a31343a2261737365745f63617465676f7279223b733a333a22796573223b733a31383a2261737365745f63617465676f72795f616464223b733a333a22796573223b733a31393a2261737365745f63617465676f72795f65646974223b733a333a22796573223b733a32313a2261737365745f63617465676f72795f64656c657465223b733a333a22796573223b733a353a226173736574223b733a333a22796573223b733a393a2261737365745f616464223b733a333a22796573223b733a31303a2261737365745f65646974223b733a333a22796573223b733a31323a2261737365745f64656c657465223b733a333a22796573223b733a31303a2261737365745f76696577223b733a333a22796573223b733a31363a2261737365745f61737369676e6d656e74223b733a333a22796573223b733a32303a2261737365745f61737369676e6d656e745f616464223b733a333a22796573223b733a32313a2261737365745f61737369676e6d656e745f65646974223b733a333a22796573223b733a32333a2261737365745f61737369676e6d656e745f64656c657465223b733a333a22796573223b733a32313a2261737365745f61737369676e6d656e745f76696577223b733a333a22796573223b733a383a227075726368617365223b733a333a22796573223b733a31323a2270757263686173655f616464223b733a333a22796573223b733a31333a2270757263686173655f65646974223b733a333a22796573223b733a31353a2270757263686173655f64656c657465223b733a333a22796573223b733a31383a226163746976697469657363617465676f7279223b733a333a22796573223b733a32323a226163746976697469657363617465676f72795f616464223b733a333a22796573223b733a32333a226163746976697469657363617465676f72795f65646974223b733a333a22796573223b733a32353a226163746976697469657363617465676f72795f64656c657465223b733a333a22796573223b733a31303a2261637469766974696573223b733a333a22796573223b733a31343a22616374697669746965735f616464223b733a333a22796573223b733a31373a22616374697669746965735f64656c657465223b733a333a22796573223b733a393a226368696c6463617265223b733a333a22796573223b733a31333a226368696c64636172655f616464223b733a333a22796573223b733a31363a226368696c64636172655f64656c657465223b733a333a22796573223b733a373a226c6d656d626572223b733a333a22796573223b733a31313a226c6d656d6265725f616464223b733a333a22796573223b733a31323a226c6d656d6265725f65646974223b733a333a22796573223b733a31343a226c6d656d6265725f64656c657465223b733a333a22796573223b733a31323a226c6d656d6265725f76696577223b733a333a22796573223b733a343a22626f6f6b223b733a333a22796573223b733a383a22626f6f6b5f616464223b733a333a22796573223b733a393a22626f6f6b5f65646974223b733a333a22796573223b733a31313a22626f6f6b5f64656c657465223b733a333a22796573223b733a353a226973737565223b733a333a22796573223b733a393a2269737375655f616464223b733a333a22796573223b733a31303a2269737375655f65646974223b733a333a22796573223b733a31303a2269737375655f76696577223b733a333a22796573223b733a393a227472616e73706f7274223b733a333a22796573223b733a31333a227472616e73706f72745f616464223b733a333a22796573223b733a31343a227472616e73706f72745f65646974223b733a333a22796573223b733a31363a227472616e73706f72745f64656c657465223b733a333a22796573223b733a373a22746d656d626572223b733a333a22796573223b733a31313a22746d656d6265725f616464223b733a333a22796573223b733a31323a22746d656d6265725f65646974223b733a333a22796573223b733a31343a22746d656d6265725f64656c657465223b733a333a22796573223b733a31323a22746d656d6265725f76696577223b733a333a22796573223b733a363a22686f7374656c223b733a333a22796573223b733a31303a22686f7374656c5f616464223b733a333a22796573223b733a31313a22686f7374656c5f65646974223b733a333a22796573223b733a31333a22686f7374656c5f64656c657465223b733a333a22796573223b733a383a2263617465676f7279223b733a333a22796573223b733a31323a2263617465676f72795f616464223b733a333a22796573223b733a31333a2263617465676f72795f65646974223b733a333a22796573223b733a31353a2263617465676f72795f64656c657465223b733a333a22796573223b733a373a22686d656d626572223b733a333a22796573223b733a31313a22686d656d6265725f616464223b733a333a22796573223b733a31323a22686d656d6265725f65646974223b733a333a22796573223b733a31343a22686d656d6265725f64656c657465223b733a333a22796573223b733a31323a22686d656d6265725f76696577223b733a333a22796573223b733a383a226665657479706573223b733a333a22796573223b733a31323a2266656574797065735f616464223b733a333a22796573223b733a31333a2266656574797065735f65646974223b733a333a22796573223b733a31353a2266656574797065735f64656c657465223b733a333a22796573223b733a373a22696e766f696365223b733a333a22796573223b733a31313a22696e766f6963655f616464223b733a333a22796573223b733a31323a22696e766f6963655f65646974223b733a333a22796573223b733a31343a22696e766f6963655f64656c657465223b733a333a22796573223b733a31323a22696e766f6963655f76696577223b733a333a22796573223b733a31343a227061796d656e74686973746f7279223b733a333a22796573223b733a31393a227061796d656e74686973746f72795f65646974223b733a333a22796573223b733a32313a227061796d656e74686973746f72795f64656c657465223b733a333a22796573223b733a373a22657870656e7365223b733a333a22796573223b733a31313a22657870656e73655f616464223b733a333a22796573223b733a31323a22657870656e73655f65646974223b733a333a22796573223b733a31343a22657870656e73655f64656c657465223b733a333a22796573223b733a363a226e6f74696365223b733a333a22796573223b733a31303a226e6f746963655f616464223b733a333a22796573223b733a31313a226e6f746963655f65646974223b733a333a22796573223b733a31333a226e6f746963655f64656c657465223b733a333a22796573223b733a31313a226e6f746963655f76696577223b733a333a22796573223b733a353a226576656e74223b733a333a22796573223b733a393a226576656e745f616464223b733a333a22796573223b733a31303a226576656e745f65646974223b733a333a22796573223b733a31323a226576656e745f64656c657465223b733a333a22796573223b733a31303a226576656e745f76696577223b733a333a22796573223b733a373a22686f6c69646179223b733a333a22796573223b733a31313a22686f6c696461795f616464223b733a333a22796573223b733a31323a22686f6c696461795f65646974223b733a333a22796573223b733a31343a22686f6c696461795f64656c657465223b733a333a22796573223b733a31323a22686f6c696461795f76696577223b733a333a22796573223b733a363a227265706f7274223b733a333a22796573223b733a32303a227265706f72742f73747564656e747265706f7274223b733a333a22796573223b733a31383a227265706f72742f636c6173737265706f7274223b733a333a22796573223b733a32333a227265706f72742f617474656e64616e63657265706f7274223b733a333a22796573223b733a31383a227265706f72742f6365727469666963617465223b733a333a22796573223b733a31313a2276697369746f72696e666f223b733a333a22796573223b733a31383a2276697369746f72696e666f5f64656c657465223b733a333a22796573223b733a31363a2276697369746f72696e666f5f76696577223b733a333a22796573223b733a31303a227363686f6f6c79656172223b733a333a22796573223b733a31343a227363686f6f6c796561725f616464223b733a333a22796573223b733a31353a227363686f6f6c796561725f65646974223b733a333a22796573223b733a31373a227363686f6f6c796561725f64656c657465223b733a333a22796573223b733a31323a2273747564656e7467726f7570223b733a333a22796573223b733a31363a2273747564656e7467726f75705f616464223b733a333a22796573223b733a31373a2273747564656e7467726f75705f65646974223b733a333a22796573223b733a31393a2273747564656e7467726f75705f64656c657465223b733a333a22796573223b733a383a22636f6d706c61696e223b733a333a22796573223b733a31323a22636f6d706c61696e5f616464223b733a333a22796573223b733a31333a22636f6d706c61696e5f65646974223b733a333a22796573223b733a31353a22636f6d706c61696e5f64656c657465223b733a333a22796573223b733a31333a22636f6d706c61696e5f76696577223b733a333a22796573223b733a32303a2263657274696669636174655f74656d706c617465223b733a333a22796573223b733a32343a2263657274696669636174655f74656d706c6174655f616464223b733a333a22796573223b733a32353a2263657274696669636174655f74656d706c6174655f65646974223b733a333a22796573223b733a32373a2263657274696669636174655f74656d706c6174655f64656c657465223b733a333a22796573223b733a32353a2263657274696669636174655f74656d706c6174655f76696577223b733a333a22796573223b733a31313a2273797374656d61646d696e223b733a333a22796573223b733a31353a2273797374656d61646d696e5f616464223b733a333a22796573223b733a31363a2273797374656d61646d696e5f65646974223b733a333a22796573223b733a31383a2273797374656d61646d696e5f64656c657465223b733a333a22796573223b733a31363a2273797374656d61646d696e5f76696577223b733a333a22796573223b733a31333a22726573657470617373776f7264223b733a333a22796573223b733a31383a226d61696c616e64736d7374656d706c617465223b733a333a22796573223b733a32323a226d61696c616e64736d7374656d706c6174655f616464223b733a333a22796573223b733a32333a226d61696c616e64736d7374656d706c6174655f65646974223b733a333a22796573223b733a32353a226d61696c616e64736d7374656d706c6174655f64656c657465223b733a333a22796573223b733a32333a226d61696c616e64736d7374656d706c6174655f76696577223b733a333a22796573223b733a31303a2262756c6b696d706f7274223b733a333a22796573223b733a363a226261636b7570223b733a333a22796573223b733a383a227573657274797065223b733a333a22796573223b733a31323a2275736572747970655f616464223b733a333a22796573223b733a31333a2275736572747970655f65646974223b733a333a22796573223b733a31353a2275736572747970655f64656c657465223b733a333a22796573223b733a31303a227065726d697373696f6e223b733a333a22796573223b733a363a22757064617465223b733a333a22796573223b733a373a2273657474696e67223b733a333a22796573223b733a31323a2273657474696e675f65646974223b733a333a22796573223b733a31353a227061796d656e7473657474696e6773223b733a333a22796573223b733a31313a22736d7373657474696e6773223b733a333a22796573223b733a353a227061676573223b733a333a22796573223b733a393a2270616765735f616464223b733a333a22796573223b733a31303a2270616765735f65646974223b733a333a22796573223b733a31323a2270616765735f64656c657465223b733a333a22796573223b733a31363a2266726f6e74656e645f73657474696e67223b733a333a22796573223b733a393a2274616b655f6578616d223b733a333a22796573223b7d),
('rvhbq65p47qk1buflmau2qkgfe7qu7d1', '150.107.205.157', 1518173084, 0x5f5f63695f6c6173745f726567656e65726174657c693a313531383137323833323b6c616e677c733a373a22656e676c697368223b6c6f67696e7573657249447c733a313a2231223b6e616d657c733a353a2261646d696e223b656d61696c7c733a32303a227072616b61726b68617240676d61696c2e636f6d223b757365727479706549447c733a313a2231223b75736572747970657c733a353a2241646d696e223b757365726e616d657c733a353a2261646d696e223b70686f746f7c733a31313a2264656661756c742e706e67223b64656661756c747363686f6f6c7965617249447c733a313a2231223b6c6f67676564696e7c623a313b6765745f7065726d697373696f6e7c623a313b6d61737465725f7065726d697373696f6e5f7365747c613a3237393a7b733a393a2264617368626f617264223b733a333a22796573223b733a373a2273747564656e74223b733a333a22796573223b733a31313a2273747564656e745f616464223b733a333a22796573223b733a31323a2273747564656e745f65646974223b733a333a22796573223b733a31343a2273747564656e745f64656c657465223b733a333a22796573223b733a31323a2273747564656e745f76696577223b733a333a22796573223b733a373a22706172656e7473223b733a333a22796573223b733a31313a22706172656e74735f616464223b733a333a22796573223b733a31323a22706172656e74735f65646974223b733a333a22796573223b733a31343a22706172656e74735f64656c657465223b733a333a22796573223b733a31323a22706172656e74735f76696577223b733a333a22796573223b733a373a2274656163686572223b733a333a22796573223b733a31313a22746561636865725f616464223b733a333a22796573223b733a31323a22746561636865725f65646974223b733a333a22796573223b733a31343a22746561636865725f64656c657465223b733a333a22796573223b733a31323a22746561636865725f76696577223b733a333a22796573223b733a343a2275736572223b733a333a22796573223b733a383a22757365725f616464223b733a333a22796573223b733a393a22757365725f65646974223b733a333a22796573223b733a31313a22757365725f64656c657465223b733a333a22796573223b733a393a22757365725f76696577223b733a333a22796573223b733a373a22636c6173736573223b733a333a22796573223b733a31313a22636c61737365735f616464223b733a333a22796573223b733a31323a22636c61737365735f65646974223b733a333a22796573223b733a31343a22636c61737365735f64656c657465223b733a333a22796573223b733a373a227375626a656374223b733a333a22796573223b733a31313a227375626a6563745f616464223b733a333a22796573223b733a31323a227375626a6563745f65646974223b733a333a22796573223b733a31343a227375626a6563745f64656c657465223b733a333a22796573223b733a373a2273656374696f6e223b733a333a22796573223b733a31313a2273656374696f6e5f616464223b733a333a22796573223b733a31323a2273656374696f6e5f65646974223b733a333a22796573223b733a31353a2273656d65737465725f64656c657465223b733a333a22796573223b733a31343a2273656374696f6e5f64656c657465223b733a333a22796573223b733a383a2273796c6c61627573223b733a333a22796573223b733a31323a2273796c6c616275735f616464223b733a333a22796573223b733a31333a2273796c6c616275735f65646974223b733a333a22796573223b733a31353a2273796c6c616275735f64656c657465223b733a333a22796573223b733a31303a2261737369676e6d656e74223b733a333a22796573223b733a31343a2261737369676e6d656e745f616464223b733a333a22796573223b733a31353a2261737369676e6d656e745f65646974223b733a333a22796573223b733a31373a2261737369676e6d656e745f64656c657465223b733a333a22796573223b733a31353a2261737369676e6d656e745f76696577223b733a333a22796573223b733a373a22726f7574696e65223b733a333a22796573223b733a31313a22726f7574696e655f616464223b733a333a22796573223b733a31323a22726f7574696e655f65646974223b733a333a22796573223b733a31343a22726f7574696e655f64656c657465223b733a333a22796573223b733a31313a2273617474656e64616e6365223b733a333a22796573223b733a31353a2273617474656e64616e63655f616464223b733a333a22796573223b733a31363a2273617474656e64616e63655f76696577223b733a333a22796573223b733a31313a2274617474656e64616e6365223b733a333a22796573223b733a31353a2274617474656e64616e63655f616464223b733a333a22796573223b733a31363a2274617474656e64616e63655f76696577223b733a333a22796573223b733a31313a2275617474656e64616e6365223b733a333a22796573223b733a31353a2275617474656e64616e63655f616464223b733a333a22796573223b733a31363a2275617474656e64616e63655f76696577223b733a333a22796573223b733a343a226578616d223b733a333a22796573223b733a383a226578616d5f616464223b733a333a22796573223b733a393a226578616d5f65646974223b733a333a22796573223b733a31313a226578616d5f64656c657465223b733a333a22796573223b733a31323a226578616d7363686564756c65223b733a333a22796573223b733a31363a226578616d7363686564756c655f616464223b733a333a22796573223b733a31373a226578616d7363686564756c655f65646974223b733a333a22796573223b733a31393a226578616d7363686564756c655f64656c657465223b733a333a22796573223b733a353a226772616465223b733a333a22796573223b733a393a2267726164655f616464223b733a333a22796573223b733a31303a2267726164655f65646974223b733a333a22796573223b733a31323a2267726164655f64656c657465223b733a333a22796573223b733a31313a2265617474656e64616e6365223b733a333a22796573223b733a31353a2265617474656e64616e63655f616464223b733a333a22796573223b733a343a226d61726b223b733a333a22796573223b733a383a226d61726b5f616464223b733a333a22796573223b733a393a226d61726b5f76696577223b733a333a22796573223b733a31343a226d61726b70657263656e74616765223b733a333a22796573223b733a31383a226d61726b70657263656e746167655f616464223b733a333a22796573223b733a31393a226d61726b70657263656e746167655f65646974223b733a333a22796573223b733a32313a226d61726b70657263656e746167655f64656c657465223b733a333a22796573223b733a393a2270726f6d6f74696f6e223b733a333a22796573223b733a31323a22636f6e766572736174696f6e223b733a333a22796573223b733a353a226d65646961223b733a333a22796573223b733a393a226d656469615f616464223b733a333a22796573223b733a31323a226d656469615f64656c657465223b733a333a22796573223b733a31303a226d61696c616e64736d73223b733a333a22796573223b733a31343a226d61696c616e64736d735f616464223b733a333a22796573223b733a31353a226d61696c616e64736d735f76696577223b733a333a22796573223b733a31343a227175657374696f6e5f67726f7570223b733a333a22796573223b733a31383a227175657374696f6e5f67726f75705f616464223b733a333a22796573223b733a31393a227175657374696f6e5f67726f75705f65646974223b733a333a22796573223b733a32313a227175657374696f6e5f67726f75705f64656c657465223b733a333a22796573223b733a31343a227175657374696f6e5f6c6576656c223b733a333a22796573223b733a31383a227175657374696f6e5f6c6576656c5f616464223b733a333a22796573223b733a31393a227175657374696f6e5f6c6576656c5f65646974223b733a333a22796573223b733a32313a227175657374696f6e5f6c6576656c5f64656c657465223b733a333a22796573223b733a31333a227175657374696f6e5f62616e6b223b733a333a22796573223b733a31373a227175657374696f6e5f62616e6b5f616464223b733a333a22796573223b733a31383a227175657374696f6e5f62616e6b5f65646974223b733a333a22796573223b733a32303a227175657374696f6e5f62616e6b5f64656c657465223b733a333a22796573223b733a31383a227175657374696f6e5f62616e6b5f76696577223b733a333a22796573223b733a31313a226f6e6c696e655f6578616d223b733a333a22796573223b733a31353a226f6e6c696e655f6578616d5f616464223b733a333a22796573223b733a31363a226f6e6c696e655f6578616d5f65646974223b733a333a22796573223b733a31383a226f6e6c696e655f6578616d5f64656c657465223b733a333a22796573223b733a31313a22696e737472756374696f6e223b733a333a22796573223b733a31353a22696e737472756374696f6e5f616464223b733a333a22796573223b733a31363a22696e737472756374696f6e5f65646974223b733a333a22796573223b733a31383a22696e737472756374696f6e5f64656c657465223b733a333a22796573223b733a31363a22696e737472756374696f6e5f76696577223b733a333a22796573223b733a31353a2273616c6172795f74656d706c617465223b733a333a22796573223b733a31393a2273616c6172795f74656d706c6174655f616464223b733a333a22796573223b733a32303a2273616c6172795f74656d706c6174655f65646974223b733a333a22796573223b733a32323a2273616c6172795f74656d706c6174655f64656c657465223b733a333a22796573223b733a32303a2273616c6172795f74656d706c6174655f76696577223b733a333a22796573223b733a31353a22686f75726c795f74656d706c617465223b733a333a22796573223b733a31393a22686f75726c795f74656d706c6174655f616464223b733a333a22796573223b733a32303a22686f75726c795f74656d706c6174655f65646974223b733a333a22796573223b733a32323a22686f75726c795f74656d706c6174655f64656c657465223b733a333a22796573223b733a31333a226d616e6167655f73616c617279223b733a333a22796573223b733a31373a226d616e6167655f73616c6172795f616464223b733a333a22796573223b733a31383a226d616e6167655f73616c6172795f65646974223b733a333a22796573223b733a32303a226d616e6167655f73616c6172795f64656c657465223b733a333a22796573223b733a31383a226d616e6167655f73616c6172795f76696577223b733a333a22796573223b733a31323a226d616b655f7061796d656e74223b733a333a22796573223b733a363a2276656e646f72223b733a333a22796573223b733a31303a2276656e646f725f616464223b733a333a22796573223b733a31313a2276656e646f725f65646974223b733a333a22796573223b733a31333a2276656e646f725f64656c657465223b733a333a22796573223b733a383a226c6f636174696f6e223b733a333a22796573223b733a31323a226c6f636174696f6e5f616464223b733a333a22796573223b733a31333a226c6f636174696f6e5f65646974223b733a333a22796573223b733a31353a226c6f636174696f6e5f64656c657465223b733a333a22796573223b733a31343a2261737365745f63617465676f7279223b733a333a22796573223b733a31383a2261737365745f63617465676f72795f616464223b733a333a22796573223b733a31393a2261737365745f63617465676f72795f65646974223b733a333a22796573223b733a32313a2261737365745f63617465676f72795f64656c657465223b733a333a22796573223b733a353a226173736574223b733a333a22796573223b733a393a2261737365745f616464223b733a333a22796573223b733a31303a2261737365745f65646974223b733a333a22796573223b733a31323a2261737365745f64656c657465223b733a333a22796573223b733a31303a2261737365745f76696577223b733a333a22796573223b733a31363a2261737365745f61737369676e6d656e74223b733a333a22796573223b733a32303a2261737365745f61737369676e6d656e745f616464223b733a333a22796573223b733a32313a2261737365745f61737369676e6d656e745f65646974223b733a333a22796573223b733a32333a2261737365745f61737369676e6d656e745f64656c657465223b733a333a22796573223b733a32313a2261737365745f61737369676e6d656e745f76696577223b733a333a22796573223b733a383a227075726368617365223b733a333a22796573223b733a31323a2270757263686173655f616464223b733a333a22796573223b733a31333a2270757263686173655f65646974223b733a333a22796573223b733a31353a2270757263686173655f64656c657465223b733a333a22796573223b733a31383a226163746976697469657363617465676f7279223b733a333a22796573223b733a32323a226163746976697469657363617465676f72795f616464223b733a333a22796573223b733a32333a226163746976697469657363617465676f72795f65646974223b733a333a22796573223b733a32353a226163746976697469657363617465676f72795f64656c657465223b733a333a22796573223b733a31303a2261637469766974696573223b733a333a22796573223b733a31343a22616374697669746965735f616464223b733a333a22796573223b733a31373a22616374697669746965735f64656c657465223b733a333a22796573223b733a393a226368696c6463617265223b733a333a22796573223b733a31333a226368696c64636172655f616464223b733a333a22796573223b733a31363a226368696c64636172655f64656c657465223b733a333a22796573223b733a373a226c6d656d626572223b733a333a22796573223b733a31313a226c6d656d6265725f616464223b733a333a22796573223b733a31323a226c6d656d6265725f65646974223b733a333a22796573223b733a31343a226c6d656d6265725f64656c657465223b733a333a22796573223b733a31323a226c6d656d6265725f76696577223b733a333a22796573223b733a343a22626f6f6b223b733a333a22796573223b733a383a22626f6f6b5f616464223b733a333a22796573223b733a393a22626f6f6b5f65646974223b733a333a22796573223b733a31313a22626f6f6b5f64656c657465223b733a333a22796573223b733a353a226973737565223b733a333a22796573223b733a393a2269737375655f616464223b733a333a22796573223b733a31303a2269737375655f65646974223b733a333a22796573223b733a31303a2269737375655f76696577223b733a333a22796573223b733a393a227472616e73706f7274223b733a333a22796573223b733a31333a227472616e73706f72745f616464223b733a333a22796573223b733a31343a227472616e73706f72745f65646974223b733a333a22796573223b733a31363a227472616e73706f72745f64656c657465223b733a333a22796573223b733a373a22746d656d626572223b733a333a22796573223b733a31313a22746d656d6265725f616464223b733a333a22796573223b733a31323a22746d656d6265725f65646974223b733a333a22796573223b733a31343a22746d656d6265725f64656c657465223b733a333a22796573223b733a31323a22746d656d6265725f76696577223b733a333a22796573223b733a363a22686f7374656c223b733a333a22796573223b733a31303a22686f7374656c5f616464223b733a333a22796573223b733a31313a22686f7374656c5f65646974223b733a333a22796573223b733a31333a22686f7374656c5f64656c657465223b733a333a22796573223b733a383a2263617465676f7279223b733a333a22796573223b733a31323a2263617465676f72795f616464223b733a333a22796573223b733a31333a2263617465676f72795f65646974223b733a333a22796573223b733a31353a2263617465676f72795f64656c657465223b733a333a22796573223b733a373a22686d656d626572223b733a333a22796573223b733a31313a22686d656d6265725f616464223b733a333a22796573223b733a31323a22686d656d6265725f65646974223b733a333a22796573223b733a31343a22686d656d6265725f64656c657465223b733a333a22796573223b733a31323a22686d656d6265725f76696577223b733a333a22796573223b733a383a226665657479706573223b733a333a22796573223b733a31323a2266656574797065735f616464223b733a333a22796573223b733a31333a2266656574797065735f65646974223b733a333a22796573223b733a31353a2266656574797065735f64656c657465223b733a333a22796573223b733a373a22696e766f696365223b733a333a22796573223b733a31313a22696e766f6963655f616464223b733a333a22796573223b733a31323a22696e766f6963655f65646974223b733a333a22796573223b733a31343a22696e766f6963655f64656c657465223b733a333a22796573223b733a31323a22696e766f6963655f76696577223b733a333a22796573223b733a31343a227061796d656e74686973746f7279223b733a333a22796573223b733a31393a227061796d656e74686973746f72795f65646974223b733a333a22796573223b733a32313a227061796d656e74686973746f72795f64656c657465223b733a333a22796573223b733a373a22657870656e7365223b733a333a22796573223b733a31313a22657870656e73655f616464223b733a333a22796573223b733a31323a22657870656e73655f65646974223b733a333a22796573223b733a31343a22657870656e73655f64656c657465223b733a333a22796573223b733a363a226e6f74696365223b733a333a22796573223b733a31303a226e6f746963655f616464223b733a333a22796573223b733a31313a226e6f746963655f65646974223b733a333a22796573223b733a31333a226e6f746963655f64656c657465223b733a333a22796573223b733a31313a226e6f746963655f76696577223b733a333a22796573223b733a353a226576656e74223b733a333a22796573223b733a393a226576656e745f616464223b733a333a22796573223b733a31303a226576656e745f65646974223b733a333a22796573223b733a31323a226576656e745f64656c657465223b733a333a22796573223b733a31303a226576656e745f76696577223b733a333a22796573223b733a373a22686f6c69646179223b733a333a22796573223b733a31313a22686f6c696461795f616464223b733a333a22796573223b733a31323a22686f6c696461795f65646974223b733a333a22796573223b733a31343a22686f6c696461795f64656c657465223b733a333a22796573223b733a31323a22686f6c696461795f76696577223b733a333a22796573223b733a363a227265706f7274223b733a333a22796573223b733a32303a227265706f72742f73747564656e747265706f7274223b733a333a22796573223b733a31383a227265706f72742f636c6173737265706f7274223b733a333a22796573223b733a32333a227265706f72742f617474656e64616e63657265706f7274223b733a333a22796573223b733a31383a227265706f72742f6365727469666963617465223b733a333a22796573223b733a31313a2276697369746f72696e666f223b733a333a22796573223b733a31383a2276697369746f72696e666f5f64656c657465223b733a333a22796573223b733a31363a2276697369746f72696e666f5f76696577223b733a333a22796573223b733a31303a227363686f6f6c79656172223b733a333a22796573223b733a31343a227363686f6f6c796561725f616464223b733a333a22796573223b733a31353a227363686f6f6c796561725f65646974223b733a333a22796573223b733a31373a227363686f6f6c796561725f64656c657465223b733a333a22796573223b733a31323a2273747564656e7467726f7570223b733a333a22796573223b733a31363a2273747564656e7467726f75705f616464223b733a333a22796573223b733a31373a2273747564656e7467726f75705f65646974223b733a333a22796573223b733a31393a2273747564656e7467726f75705f64656c657465223b733a333a22796573223b733a383a22636f6d706c61696e223b733a333a22796573223b733a31323a22636f6d706c61696e5f616464223b733a333a22796573223b733a31333a22636f6d706c61696e5f65646974223b733a333a22796573223b733a31353a22636f6d706c61696e5f64656c657465223b733a333a22796573223b733a31333a22636f6d706c61696e5f76696577223b733a333a22796573223b733a32303a2263657274696669636174655f74656d706c617465223b733a333a22796573223b733a32343a2263657274696669636174655f74656d706c6174655f616464223b733a333a22796573223b733a32353a2263657274696669636174655f74656d706c6174655f65646974223b733a333a22796573223b733a32373a2263657274696669636174655f74656d706c6174655f64656c657465223b733a333a22796573223b733a32353a2263657274696669636174655f74656d706c6174655f76696577223b733a333a22796573223b733a31313a2273797374656d61646d696e223b733a333a22796573223b733a31353a2273797374656d61646d696e5f616464223b733a333a22796573223b733a31363a2273797374656d61646d696e5f65646974223b733a333a22796573223b733a31383a2273797374656d61646d696e5f64656c657465223b733a333a22796573223b733a31363a2273797374656d61646d696e5f76696577223b733a333a22796573223b733a31333a22726573657470617373776f7264223b733a333a22796573223b733a31383a226d61696c616e64736d7374656d706c617465223b733a333a22796573223b733a32323a226d61696c616e64736d7374656d706c6174655f616464223b733a333a22796573223b733a32333a226d61696c616e64736d7374656d706c6174655f65646974223b733a333a22796573223b733a32353a226d61696c616e64736d7374656d706c6174655f64656c657465223b733a333a22796573223b733a32333a226d61696c616e64736d7374656d706c6174655f76696577223b733a333a22796573223b733a31303a2262756c6b696d706f7274223b733a333a22796573223b733a363a226261636b7570223b733a333a22796573223b733a383a227573657274797065223b733a333a22796573223b733a31323a2275736572747970655f616464223b733a333a22796573223b733a31333a2275736572747970655f65646974223b733a333a22796573223b733a31353a2275736572747970655f64656c657465223b733a333a22796573223b733a31303a227065726d697373696f6e223b733a333a22796573223b733a363a22757064617465223b733a333a22796573223b733a373a2273657474696e67223b733a333a22796573223b733a31323a2273657474696e675f65646974223b733a333a22796573223b733a31353a227061796d656e7473657474696e6773223b733a333a22796573223b733a31313a22736d7373657474696e6773223b733a333a22796573223b733a353a227061676573223b733a333a22796573223b733a393a2270616765735f616464223b733a333a22796573223b733a31303a2270616765735f65646974223b733a333a22796573223b733a31323a2270616765735f64656c657465223b733a333a22796573223b733a31363a2266726f6e74656e645f73657474696e67223b733a333a22796573223b733a393a2274616b655f6578616d223b733a333a22796573223b7d6572726f727c4e3b);
INSERT INTO `school_sessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES
('3reu9tftsu7l2c1g5m0i8mo2erng087f', '150.107.205.157', 1518173405, 0x5f5f63695f6c6173745f726567656e65726174657c693a313531383137333133353b6c616e677c733a373a22656e676c697368223b6c6f67696e7573657249447c733a313a2231223b6e616d657c733a353a2261646d696e223b656d61696c7c733a32303a227072616b61726b68617240676d61696c2e636f6d223b757365727479706549447c733a313a2231223b75736572747970657c733a353a2241646d696e223b757365726e616d657c733a353a2261646d696e223b70686f746f7c733a31313a2264656661756c742e706e67223b64656661756c747363686f6f6c7965617249447c733a313a2231223b6c6f67676564696e7c623a313b6765745f7065726d697373696f6e7c623a313b6d61737465725f7065726d697373696f6e5f7365747c613a3237393a7b733a393a2264617368626f617264223b733a333a22796573223b733a373a2273747564656e74223b733a333a22796573223b733a31313a2273747564656e745f616464223b733a333a22796573223b733a31323a2273747564656e745f65646974223b733a333a22796573223b733a31343a2273747564656e745f64656c657465223b733a333a22796573223b733a31323a2273747564656e745f76696577223b733a333a22796573223b733a373a22706172656e7473223b733a333a22796573223b733a31313a22706172656e74735f616464223b733a333a22796573223b733a31323a22706172656e74735f65646974223b733a333a22796573223b733a31343a22706172656e74735f64656c657465223b733a333a22796573223b733a31323a22706172656e74735f76696577223b733a333a22796573223b733a373a2274656163686572223b733a333a22796573223b733a31313a22746561636865725f616464223b733a333a22796573223b733a31323a22746561636865725f65646974223b733a333a22796573223b733a31343a22746561636865725f64656c657465223b733a333a22796573223b733a31323a22746561636865725f76696577223b733a333a22796573223b733a343a2275736572223b733a333a22796573223b733a383a22757365725f616464223b733a333a22796573223b733a393a22757365725f65646974223b733a333a22796573223b733a31313a22757365725f64656c657465223b733a333a22796573223b733a393a22757365725f76696577223b733a333a22796573223b733a373a22636c6173736573223b733a333a22796573223b733a31313a22636c61737365735f616464223b733a333a22796573223b733a31323a22636c61737365735f65646974223b733a333a22796573223b733a31343a22636c61737365735f64656c657465223b733a333a22796573223b733a373a227375626a656374223b733a333a22796573223b733a31313a227375626a6563745f616464223b733a333a22796573223b733a31323a227375626a6563745f65646974223b733a333a22796573223b733a31343a227375626a6563745f64656c657465223b733a333a22796573223b733a373a2273656374696f6e223b733a333a22796573223b733a31313a2273656374696f6e5f616464223b733a333a22796573223b733a31323a2273656374696f6e5f65646974223b733a333a22796573223b733a31353a2273656d65737465725f64656c657465223b733a333a22796573223b733a31343a2273656374696f6e5f64656c657465223b733a333a22796573223b733a383a2273796c6c61627573223b733a333a22796573223b733a31323a2273796c6c616275735f616464223b733a333a22796573223b733a31333a2273796c6c616275735f65646974223b733a333a22796573223b733a31353a2273796c6c616275735f64656c657465223b733a333a22796573223b733a31303a2261737369676e6d656e74223b733a333a22796573223b733a31343a2261737369676e6d656e745f616464223b733a333a22796573223b733a31353a2261737369676e6d656e745f65646974223b733a333a22796573223b733a31373a2261737369676e6d656e745f64656c657465223b733a333a22796573223b733a31353a2261737369676e6d656e745f76696577223b733a333a22796573223b733a373a22726f7574696e65223b733a333a22796573223b733a31313a22726f7574696e655f616464223b733a333a22796573223b733a31323a22726f7574696e655f65646974223b733a333a22796573223b733a31343a22726f7574696e655f64656c657465223b733a333a22796573223b733a31313a2273617474656e64616e6365223b733a333a22796573223b733a31353a2273617474656e64616e63655f616464223b733a333a22796573223b733a31363a2273617474656e64616e63655f76696577223b733a333a22796573223b733a31313a2274617474656e64616e6365223b733a333a22796573223b733a31353a2274617474656e64616e63655f616464223b733a333a22796573223b733a31363a2274617474656e64616e63655f76696577223b733a333a22796573223b733a31313a2275617474656e64616e6365223b733a333a22796573223b733a31353a2275617474656e64616e63655f616464223b733a333a22796573223b733a31363a2275617474656e64616e63655f76696577223b733a333a22796573223b733a343a226578616d223b733a333a22796573223b733a383a226578616d5f616464223b733a333a22796573223b733a393a226578616d5f65646974223b733a333a22796573223b733a31313a226578616d5f64656c657465223b733a333a22796573223b733a31323a226578616d7363686564756c65223b733a333a22796573223b733a31363a226578616d7363686564756c655f616464223b733a333a22796573223b733a31373a226578616d7363686564756c655f65646974223b733a333a22796573223b733a31393a226578616d7363686564756c655f64656c657465223b733a333a22796573223b733a353a226772616465223b733a333a22796573223b733a393a2267726164655f616464223b733a333a22796573223b733a31303a2267726164655f65646974223b733a333a22796573223b733a31323a2267726164655f64656c657465223b733a333a22796573223b733a31313a2265617474656e64616e6365223b733a333a22796573223b733a31353a2265617474656e64616e63655f616464223b733a333a22796573223b733a343a226d61726b223b733a333a22796573223b733a383a226d61726b5f616464223b733a333a22796573223b733a393a226d61726b5f76696577223b733a333a22796573223b733a31343a226d61726b70657263656e74616765223b733a333a22796573223b733a31383a226d61726b70657263656e746167655f616464223b733a333a22796573223b733a31393a226d61726b70657263656e746167655f65646974223b733a333a22796573223b733a32313a226d61726b70657263656e746167655f64656c657465223b733a333a22796573223b733a393a2270726f6d6f74696f6e223b733a333a22796573223b733a31323a22636f6e766572736174696f6e223b733a333a22796573223b733a353a226d65646961223b733a333a22796573223b733a393a226d656469615f616464223b733a333a22796573223b733a31323a226d656469615f64656c657465223b733a333a22796573223b733a31303a226d61696c616e64736d73223b733a333a22796573223b733a31343a226d61696c616e64736d735f616464223b733a333a22796573223b733a31353a226d61696c616e64736d735f76696577223b733a333a22796573223b733a31343a227175657374696f6e5f67726f7570223b733a333a22796573223b733a31383a227175657374696f6e5f67726f75705f616464223b733a333a22796573223b733a31393a227175657374696f6e5f67726f75705f65646974223b733a333a22796573223b733a32313a227175657374696f6e5f67726f75705f64656c657465223b733a333a22796573223b733a31343a227175657374696f6e5f6c6576656c223b733a333a22796573223b733a31383a227175657374696f6e5f6c6576656c5f616464223b733a333a22796573223b733a31393a227175657374696f6e5f6c6576656c5f65646974223b733a333a22796573223b733a32313a227175657374696f6e5f6c6576656c5f64656c657465223b733a333a22796573223b733a31333a227175657374696f6e5f62616e6b223b733a333a22796573223b733a31373a227175657374696f6e5f62616e6b5f616464223b733a333a22796573223b733a31383a227175657374696f6e5f62616e6b5f65646974223b733a333a22796573223b733a32303a227175657374696f6e5f62616e6b5f64656c657465223b733a333a22796573223b733a31383a227175657374696f6e5f62616e6b5f76696577223b733a333a22796573223b733a31313a226f6e6c696e655f6578616d223b733a333a22796573223b733a31353a226f6e6c696e655f6578616d5f616464223b733a333a22796573223b733a31363a226f6e6c696e655f6578616d5f65646974223b733a333a22796573223b733a31383a226f6e6c696e655f6578616d5f64656c657465223b733a333a22796573223b733a31313a22696e737472756374696f6e223b733a333a22796573223b733a31353a22696e737472756374696f6e5f616464223b733a333a22796573223b733a31363a22696e737472756374696f6e5f65646974223b733a333a22796573223b733a31383a22696e737472756374696f6e5f64656c657465223b733a333a22796573223b733a31363a22696e737472756374696f6e5f76696577223b733a333a22796573223b733a31353a2273616c6172795f74656d706c617465223b733a333a22796573223b733a31393a2273616c6172795f74656d706c6174655f616464223b733a333a22796573223b733a32303a2273616c6172795f74656d706c6174655f65646974223b733a333a22796573223b733a32323a2273616c6172795f74656d706c6174655f64656c657465223b733a333a22796573223b733a32303a2273616c6172795f74656d706c6174655f76696577223b733a333a22796573223b733a31353a22686f75726c795f74656d706c617465223b733a333a22796573223b733a31393a22686f75726c795f74656d706c6174655f616464223b733a333a22796573223b733a32303a22686f75726c795f74656d706c6174655f65646974223b733a333a22796573223b733a32323a22686f75726c795f74656d706c6174655f64656c657465223b733a333a22796573223b733a31333a226d616e6167655f73616c617279223b733a333a22796573223b733a31373a226d616e6167655f73616c6172795f616464223b733a333a22796573223b733a31383a226d616e6167655f73616c6172795f65646974223b733a333a22796573223b733a32303a226d616e6167655f73616c6172795f64656c657465223b733a333a22796573223b733a31383a226d616e6167655f73616c6172795f76696577223b733a333a22796573223b733a31323a226d616b655f7061796d656e74223b733a333a22796573223b733a363a2276656e646f72223b733a333a22796573223b733a31303a2276656e646f725f616464223b733a333a22796573223b733a31313a2276656e646f725f65646974223b733a333a22796573223b733a31333a2276656e646f725f64656c657465223b733a333a22796573223b733a383a226c6f636174696f6e223b733a333a22796573223b733a31323a226c6f636174696f6e5f616464223b733a333a22796573223b733a31333a226c6f636174696f6e5f65646974223b733a333a22796573223b733a31353a226c6f636174696f6e5f64656c657465223b733a333a22796573223b733a31343a2261737365745f63617465676f7279223b733a333a22796573223b733a31383a2261737365745f63617465676f72795f616464223b733a333a22796573223b733a31393a2261737365745f63617465676f72795f65646974223b733a333a22796573223b733a32313a2261737365745f63617465676f72795f64656c657465223b733a333a22796573223b733a353a226173736574223b733a333a22796573223b733a393a2261737365745f616464223b733a333a22796573223b733a31303a2261737365745f65646974223b733a333a22796573223b733a31323a2261737365745f64656c657465223b733a333a22796573223b733a31303a2261737365745f76696577223b733a333a22796573223b733a31363a2261737365745f61737369676e6d656e74223b733a333a22796573223b733a32303a2261737365745f61737369676e6d656e745f616464223b733a333a22796573223b733a32313a2261737365745f61737369676e6d656e745f65646974223b733a333a22796573223b733a32333a2261737365745f61737369676e6d656e745f64656c657465223b733a333a22796573223b733a32313a2261737365745f61737369676e6d656e745f76696577223b733a333a22796573223b733a383a227075726368617365223b733a333a22796573223b733a31323a2270757263686173655f616464223b733a333a22796573223b733a31333a2270757263686173655f65646974223b733a333a22796573223b733a31353a2270757263686173655f64656c657465223b733a333a22796573223b733a31383a226163746976697469657363617465676f7279223b733a333a22796573223b733a32323a226163746976697469657363617465676f72795f616464223b733a333a22796573223b733a32333a226163746976697469657363617465676f72795f65646974223b733a333a22796573223b733a32353a226163746976697469657363617465676f72795f64656c657465223b733a333a22796573223b733a31303a2261637469766974696573223b733a333a22796573223b733a31343a22616374697669746965735f616464223b733a333a22796573223b733a31373a22616374697669746965735f64656c657465223b733a333a22796573223b733a393a226368696c6463617265223b733a333a22796573223b733a31333a226368696c64636172655f616464223b733a333a22796573223b733a31363a226368696c64636172655f64656c657465223b733a333a22796573223b733a373a226c6d656d626572223b733a333a22796573223b733a31313a226c6d656d6265725f616464223b733a333a22796573223b733a31323a226c6d656d6265725f65646974223b733a333a22796573223b733a31343a226c6d656d6265725f64656c657465223b733a333a22796573223b733a31323a226c6d656d6265725f76696577223b733a333a22796573223b733a343a22626f6f6b223b733a333a22796573223b733a383a22626f6f6b5f616464223b733a333a22796573223b733a393a22626f6f6b5f65646974223b733a333a22796573223b733a31313a22626f6f6b5f64656c657465223b733a333a22796573223b733a353a226973737565223b733a333a22796573223b733a393a2269737375655f616464223b733a333a22796573223b733a31303a2269737375655f65646974223b733a333a22796573223b733a31303a2269737375655f76696577223b733a333a22796573223b733a393a227472616e73706f7274223b733a333a22796573223b733a31333a227472616e73706f72745f616464223b733a333a22796573223b733a31343a227472616e73706f72745f65646974223b733a333a22796573223b733a31363a227472616e73706f72745f64656c657465223b733a333a22796573223b733a373a22746d656d626572223b733a333a22796573223b733a31313a22746d656d6265725f616464223b733a333a22796573223b733a31323a22746d656d6265725f65646974223b733a333a22796573223b733a31343a22746d656d6265725f64656c657465223b733a333a22796573223b733a31323a22746d656d6265725f76696577223b733a333a22796573223b733a363a22686f7374656c223b733a333a22796573223b733a31303a22686f7374656c5f616464223b733a333a22796573223b733a31313a22686f7374656c5f65646974223b733a333a22796573223b733a31333a22686f7374656c5f64656c657465223b733a333a22796573223b733a383a2263617465676f7279223b733a333a22796573223b733a31323a2263617465676f72795f616464223b733a333a22796573223b733a31333a2263617465676f72795f65646974223b733a333a22796573223b733a31353a2263617465676f72795f64656c657465223b733a333a22796573223b733a373a22686d656d626572223b733a333a22796573223b733a31313a22686d656d6265725f616464223b733a333a22796573223b733a31323a22686d656d6265725f65646974223b733a333a22796573223b733a31343a22686d656d6265725f64656c657465223b733a333a22796573223b733a31323a22686d656d6265725f76696577223b733a333a22796573223b733a383a226665657479706573223b733a333a22796573223b733a31323a2266656574797065735f616464223b733a333a22796573223b733a31333a2266656574797065735f65646974223b733a333a22796573223b733a31353a2266656574797065735f64656c657465223b733a333a22796573223b733a373a22696e766f696365223b733a333a22796573223b733a31313a22696e766f6963655f616464223b733a333a22796573223b733a31323a22696e766f6963655f65646974223b733a333a22796573223b733a31343a22696e766f6963655f64656c657465223b733a333a22796573223b733a31323a22696e766f6963655f76696577223b733a333a22796573223b733a31343a227061796d656e74686973746f7279223b733a333a22796573223b733a31393a227061796d656e74686973746f72795f65646974223b733a333a22796573223b733a32313a227061796d656e74686973746f72795f64656c657465223b733a333a22796573223b733a373a22657870656e7365223b733a333a22796573223b733a31313a22657870656e73655f616464223b733a333a22796573223b733a31323a22657870656e73655f65646974223b733a333a22796573223b733a31343a22657870656e73655f64656c657465223b733a333a22796573223b733a363a226e6f74696365223b733a333a22796573223b733a31303a226e6f746963655f616464223b733a333a22796573223b733a31313a226e6f746963655f65646974223b733a333a22796573223b733a31333a226e6f746963655f64656c657465223b733a333a22796573223b733a31313a226e6f746963655f76696577223b733a333a22796573223b733a353a226576656e74223b733a333a22796573223b733a393a226576656e745f616464223b733a333a22796573223b733a31303a226576656e745f65646974223b733a333a22796573223b733a31323a226576656e745f64656c657465223b733a333a22796573223b733a31303a226576656e745f76696577223b733a333a22796573223b733a373a22686f6c69646179223b733a333a22796573223b733a31313a22686f6c696461795f616464223b733a333a22796573223b733a31323a22686f6c696461795f65646974223b733a333a22796573223b733a31343a22686f6c696461795f64656c657465223b733a333a22796573223b733a31323a22686f6c696461795f76696577223b733a333a22796573223b733a363a227265706f7274223b733a333a22796573223b733a32303a227265706f72742f73747564656e747265706f7274223b733a333a22796573223b733a31383a227265706f72742f636c6173737265706f7274223b733a333a22796573223b733a32333a227265706f72742f617474656e64616e63657265706f7274223b733a333a22796573223b733a31383a227265706f72742f6365727469666963617465223b733a333a22796573223b733a31313a2276697369746f72696e666f223b733a333a22796573223b733a31383a2276697369746f72696e666f5f64656c657465223b733a333a22796573223b733a31363a2276697369746f72696e666f5f76696577223b733a333a22796573223b733a31303a227363686f6f6c79656172223b733a333a22796573223b733a31343a227363686f6f6c796561725f616464223b733a333a22796573223b733a31353a227363686f6f6c796561725f65646974223b733a333a22796573223b733a31373a227363686f6f6c796561725f64656c657465223b733a333a22796573223b733a31323a2273747564656e7467726f7570223b733a333a22796573223b733a31363a2273747564656e7467726f75705f616464223b733a333a22796573223b733a31373a2273747564656e7467726f75705f65646974223b733a333a22796573223b733a31393a2273747564656e7467726f75705f64656c657465223b733a333a22796573223b733a383a22636f6d706c61696e223b733a333a22796573223b733a31323a22636f6d706c61696e5f616464223b733a333a22796573223b733a31333a22636f6d706c61696e5f65646974223b733a333a22796573223b733a31353a22636f6d706c61696e5f64656c657465223b733a333a22796573223b733a31333a22636f6d706c61696e5f76696577223b733a333a22796573223b733a32303a2263657274696669636174655f74656d706c617465223b733a333a22796573223b733a32343a2263657274696669636174655f74656d706c6174655f616464223b733a333a22796573223b733a32353a2263657274696669636174655f74656d706c6174655f65646974223b733a333a22796573223b733a32373a2263657274696669636174655f74656d706c6174655f64656c657465223b733a333a22796573223b733a32353a2263657274696669636174655f74656d706c6174655f76696577223b733a333a22796573223b733a31313a2273797374656d61646d696e223b733a333a22796573223b733a31353a2273797374656d61646d696e5f616464223b733a333a22796573223b733a31363a2273797374656d61646d696e5f65646974223b733a333a22796573223b733a31383a2273797374656d61646d696e5f64656c657465223b733a333a22796573223b733a31363a2273797374656d61646d696e5f76696577223b733a333a22796573223b733a31333a22726573657470617373776f7264223b733a333a22796573223b733a31383a226d61696c616e64736d7374656d706c617465223b733a333a22796573223b733a32323a226d61696c616e64736d7374656d706c6174655f616464223b733a333a22796573223b733a32333a226d61696c616e64736d7374656d706c6174655f65646974223b733a333a22796573223b733a32353a226d61696c616e64736d7374656d706c6174655f64656c657465223b733a333a22796573223b733a32333a226d61696c616e64736d7374656d706c6174655f76696577223b733a333a22796573223b733a31303a2262756c6b696d706f7274223b733a333a22796573223b733a363a226261636b7570223b733a333a22796573223b733a383a227573657274797065223b733a333a22796573223b733a31323a2275736572747970655f616464223b733a333a22796573223b733a31333a2275736572747970655f65646974223b733a333a22796573223b733a31353a2275736572747970655f64656c657465223b733a333a22796573223b733a31303a227065726d697373696f6e223b733a333a22796573223b733a363a22757064617465223b733a333a22796573223b733a373a2273657474696e67223b733a333a22796573223b733a31323a2273657474696e675f65646974223b733a333a22796573223b733a31353a227061796d656e7473657474696e6773223b733a333a22796573223b733a31313a22736d7373657474696e6773223b733a333a22796573223b733a353a227061676573223b733a333a22796573223b733a393a2270616765735f616464223b733a333a22796573223b733a31303a2270616765735f65646974223b733a333a22796573223b733a31323a2270616765735f64656c657465223b733a333a22796573223b733a31363a2266726f6e74656e645f73657474696e67223b733a333a22796573223b733a393a2274616b655f6578616d223b733a333a22796573223b7d6572726f727c4e3b),
('po1ahcl5glojf6qm5ep8kihsk9hdgot2', '150.107.205.157', 1518173836, 0x5f5f63695f6c6173745f726567656e65726174657c693a313531383137333730373b6c616e677c733a373a22656e676c697368223b6c6f67696e7573657249447c733a313a2231223b6e616d657c733a353a2261646d696e223b656d61696c7c733a32303a227072616b61726b68617240676d61696c2e636f6d223b757365727479706549447c733a313a2231223b75736572747970657c733a353a2241646d696e223b757365726e616d657c733a353a2261646d696e223b70686f746f7c733a31313a2264656661756c742e706e67223b64656661756c747363686f6f6c7965617249447c733a313a2231223b6c6f67676564696e7c623a313b6765745f7065726d697373696f6e7c623a313b6d61737465725f7065726d697373696f6e5f7365747c613a3237393a7b733a393a2264617368626f617264223b733a333a22796573223b733a373a2273747564656e74223b733a333a22796573223b733a31313a2273747564656e745f616464223b733a333a22796573223b733a31323a2273747564656e745f65646974223b733a333a22796573223b733a31343a2273747564656e745f64656c657465223b733a333a22796573223b733a31323a2273747564656e745f76696577223b733a333a22796573223b733a373a22706172656e7473223b733a333a22796573223b733a31313a22706172656e74735f616464223b733a333a22796573223b733a31323a22706172656e74735f65646974223b733a333a22796573223b733a31343a22706172656e74735f64656c657465223b733a333a22796573223b733a31323a22706172656e74735f76696577223b733a333a22796573223b733a373a2274656163686572223b733a333a22796573223b733a31313a22746561636865725f616464223b733a333a22796573223b733a31323a22746561636865725f65646974223b733a333a22796573223b733a31343a22746561636865725f64656c657465223b733a333a22796573223b733a31323a22746561636865725f76696577223b733a333a22796573223b733a343a2275736572223b733a333a22796573223b733a383a22757365725f616464223b733a333a22796573223b733a393a22757365725f65646974223b733a333a22796573223b733a31313a22757365725f64656c657465223b733a333a22796573223b733a393a22757365725f76696577223b733a333a22796573223b733a373a22636c6173736573223b733a333a22796573223b733a31313a22636c61737365735f616464223b733a333a22796573223b733a31323a22636c61737365735f65646974223b733a333a22796573223b733a31343a22636c61737365735f64656c657465223b733a333a22796573223b733a373a227375626a656374223b733a333a22796573223b733a31313a227375626a6563745f616464223b733a333a22796573223b733a31323a227375626a6563745f65646974223b733a333a22796573223b733a31343a227375626a6563745f64656c657465223b733a333a22796573223b733a373a2273656374696f6e223b733a333a22796573223b733a31313a2273656374696f6e5f616464223b733a333a22796573223b733a31323a2273656374696f6e5f65646974223b733a333a22796573223b733a31353a2273656d65737465725f64656c657465223b733a333a22796573223b733a31343a2273656374696f6e5f64656c657465223b733a333a22796573223b733a383a2273796c6c61627573223b733a333a22796573223b733a31323a2273796c6c616275735f616464223b733a333a22796573223b733a31333a2273796c6c616275735f65646974223b733a333a22796573223b733a31353a2273796c6c616275735f64656c657465223b733a333a22796573223b733a31303a2261737369676e6d656e74223b733a333a22796573223b733a31343a2261737369676e6d656e745f616464223b733a333a22796573223b733a31353a2261737369676e6d656e745f65646974223b733a333a22796573223b733a31373a2261737369676e6d656e745f64656c657465223b733a333a22796573223b733a31353a2261737369676e6d656e745f76696577223b733a333a22796573223b733a373a22726f7574696e65223b733a333a22796573223b733a31313a22726f7574696e655f616464223b733a333a22796573223b733a31323a22726f7574696e655f65646974223b733a333a22796573223b733a31343a22726f7574696e655f64656c657465223b733a333a22796573223b733a31313a2273617474656e64616e6365223b733a333a22796573223b733a31353a2273617474656e64616e63655f616464223b733a333a22796573223b733a31363a2273617474656e64616e63655f76696577223b733a333a22796573223b733a31313a2274617474656e64616e6365223b733a333a22796573223b733a31353a2274617474656e64616e63655f616464223b733a333a22796573223b733a31363a2274617474656e64616e63655f76696577223b733a333a22796573223b733a31313a2275617474656e64616e6365223b733a333a22796573223b733a31353a2275617474656e64616e63655f616464223b733a333a22796573223b733a31363a2275617474656e64616e63655f76696577223b733a333a22796573223b733a343a226578616d223b733a333a22796573223b733a383a226578616d5f616464223b733a333a22796573223b733a393a226578616d5f65646974223b733a333a22796573223b733a31313a226578616d5f64656c657465223b733a333a22796573223b733a31323a226578616d7363686564756c65223b733a333a22796573223b733a31363a226578616d7363686564756c655f616464223b733a333a22796573223b733a31373a226578616d7363686564756c655f65646974223b733a333a22796573223b733a31393a226578616d7363686564756c655f64656c657465223b733a333a22796573223b733a353a226772616465223b733a333a22796573223b733a393a2267726164655f616464223b733a333a22796573223b733a31303a2267726164655f65646974223b733a333a22796573223b733a31323a2267726164655f64656c657465223b733a333a22796573223b733a31313a2265617474656e64616e6365223b733a333a22796573223b733a31353a2265617474656e64616e63655f616464223b733a333a22796573223b733a343a226d61726b223b733a333a22796573223b733a383a226d61726b5f616464223b733a333a22796573223b733a393a226d61726b5f76696577223b733a333a22796573223b733a31343a226d61726b70657263656e74616765223b733a333a22796573223b733a31383a226d61726b70657263656e746167655f616464223b733a333a22796573223b733a31393a226d61726b70657263656e746167655f65646974223b733a333a22796573223b733a32313a226d61726b70657263656e746167655f64656c657465223b733a333a22796573223b733a393a2270726f6d6f74696f6e223b733a333a22796573223b733a31323a22636f6e766572736174696f6e223b733a333a22796573223b733a353a226d65646961223b733a333a22796573223b733a393a226d656469615f616464223b733a333a22796573223b733a31323a226d656469615f64656c657465223b733a333a22796573223b733a31303a226d61696c616e64736d73223b733a333a22796573223b733a31343a226d61696c616e64736d735f616464223b733a333a22796573223b733a31353a226d61696c616e64736d735f76696577223b733a333a22796573223b733a31343a227175657374696f6e5f67726f7570223b733a333a22796573223b733a31383a227175657374696f6e5f67726f75705f616464223b733a333a22796573223b733a31393a227175657374696f6e5f67726f75705f65646974223b733a333a22796573223b733a32313a227175657374696f6e5f67726f75705f64656c657465223b733a333a22796573223b733a31343a227175657374696f6e5f6c6576656c223b733a333a22796573223b733a31383a227175657374696f6e5f6c6576656c5f616464223b733a333a22796573223b733a31393a227175657374696f6e5f6c6576656c5f65646974223b733a333a22796573223b733a32313a227175657374696f6e5f6c6576656c5f64656c657465223b733a333a22796573223b733a31333a227175657374696f6e5f62616e6b223b733a333a22796573223b733a31373a227175657374696f6e5f62616e6b5f616464223b733a333a22796573223b733a31383a227175657374696f6e5f62616e6b5f65646974223b733a333a22796573223b733a32303a227175657374696f6e5f62616e6b5f64656c657465223b733a333a22796573223b733a31383a227175657374696f6e5f62616e6b5f76696577223b733a333a22796573223b733a31313a226f6e6c696e655f6578616d223b733a333a22796573223b733a31353a226f6e6c696e655f6578616d5f616464223b733a333a22796573223b733a31363a226f6e6c696e655f6578616d5f65646974223b733a333a22796573223b733a31383a226f6e6c696e655f6578616d5f64656c657465223b733a333a22796573223b733a31313a22696e737472756374696f6e223b733a333a22796573223b733a31353a22696e737472756374696f6e5f616464223b733a333a22796573223b733a31363a22696e737472756374696f6e5f65646974223b733a333a22796573223b733a31383a22696e737472756374696f6e5f64656c657465223b733a333a22796573223b733a31363a22696e737472756374696f6e5f76696577223b733a333a22796573223b733a31353a2273616c6172795f74656d706c617465223b733a333a22796573223b733a31393a2273616c6172795f74656d706c6174655f616464223b733a333a22796573223b733a32303a2273616c6172795f74656d706c6174655f65646974223b733a333a22796573223b733a32323a2273616c6172795f74656d706c6174655f64656c657465223b733a333a22796573223b733a32303a2273616c6172795f74656d706c6174655f76696577223b733a333a22796573223b733a31353a22686f75726c795f74656d706c617465223b733a333a22796573223b733a31393a22686f75726c795f74656d706c6174655f616464223b733a333a22796573223b733a32303a22686f75726c795f74656d706c6174655f65646974223b733a333a22796573223b733a32323a22686f75726c795f74656d706c6174655f64656c657465223b733a333a22796573223b733a31333a226d616e6167655f73616c617279223b733a333a22796573223b733a31373a226d616e6167655f73616c6172795f616464223b733a333a22796573223b733a31383a226d616e6167655f73616c6172795f65646974223b733a333a22796573223b733a32303a226d616e6167655f73616c6172795f64656c657465223b733a333a22796573223b733a31383a226d616e6167655f73616c6172795f76696577223b733a333a22796573223b733a31323a226d616b655f7061796d656e74223b733a333a22796573223b733a363a2276656e646f72223b733a333a22796573223b733a31303a2276656e646f725f616464223b733a333a22796573223b733a31313a2276656e646f725f65646974223b733a333a22796573223b733a31333a2276656e646f725f64656c657465223b733a333a22796573223b733a383a226c6f636174696f6e223b733a333a22796573223b733a31323a226c6f636174696f6e5f616464223b733a333a22796573223b733a31333a226c6f636174696f6e5f65646974223b733a333a22796573223b733a31353a226c6f636174696f6e5f64656c657465223b733a333a22796573223b733a31343a2261737365745f63617465676f7279223b733a333a22796573223b733a31383a2261737365745f63617465676f72795f616464223b733a333a22796573223b733a31393a2261737365745f63617465676f72795f65646974223b733a333a22796573223b733a32313a2261737365745f63617465676f72795f64656c657465223b733a333a22796573223b733a353a226173736574223b733a333a22796573223b733a393a2261737365745f616464223b733a333a22796573223b733a31303a2261737365745f65646974223b733a333a22796573223b733a31323a2261737365745f64656c657465223b733a333a22796573223b733a31303a2261737365745f76696577223b733a333a22796573223b733a31363a2261737365745f61737369676e6d656e74223b733a333a22796573223b733a32303a2261737365745f61737369676e6d656e745f616464223b733a333a22796573223b733a32313a2261737365745f61737369676e6d656e745f65646974223b733a333a22796573223b733a32333a2261737365745f61737369676e6d656e745f64656c657465223b733a333a22796573223b733a32313a2261737365745f61737369676e6d656e745f76696577223b733a333a22796573223b733a383a227075726368617365223b733a333a22796573223b733a31323a2270757263686173655f616464223b733a333a22796573223b733a31333a2270757263686173655f65646974223b733a333a22796573223b733a31353a2270757263686173655f64656c657465223b733a333a22796573223b733a31383a226163746976697469657363617465676f7279223b733a333a22796573223b733a32323a226163746976697469657363617465676f72795f616464223b733a333a22796573223b733a32333a226163746976697469657363617465676f72795f65646974223b733a333a22796573223b733a32353a226163746976697469657363617465676f72795f64656c657465223b733a333a22796573223b733a31303a2261637469766974696573223b733a333a22796573223b733a31343a22616374697669746965735f616464223b733a333a22796573223b733a31373a22616374697669746965735f64656c657465223b733a333a22796573223b733a393a226368696c6463617265223b733a333a22796573223b733a31333a226368696c64636172655f616464223b733a333a22796573223b733a31363a226368696c64636172655f64656c657465223b733a333a22796573223b733a373a226c6d656d626572223b733a333a22796573223b733a31313a226c6d656d6265725f616464223b733a333a22796573223b733a31323a226c6d656d6265725f65646974223b733a333a22796573223b733a31343a226c6d656d6265725f64656c657465223b733a333a22796573223b733a31323a226c6d656d6265725f76696577223b733a333a22796573223b733a343a22626f6f6b223b733a333a22796573223b733a383a22626f6f6b5f616464223b733a333a22796573223b733a393a22626f6f6b5f65646974223b733a333a22796573223b733a31313a22626f6f6b5f64656c657465223b733a333a22796573223b733a353a226973737565223b733a333a22796573223b733a393a2269737375655f616464223b733a333a22796573223b733a31303a2269737375655f65646974223b733a333a22796573223b733a31303a2269737375655f76696577223b733a333a22796573223b733a393a227472616e73706f7274223b733a333a22796573223b733a31333a227472616e73706f72745f616464223b733a333a22796573223b733a31343a227472616e73706f72745f65646974223b733a333a22796573223b733a31363a227472616e73706f72745f64656c657465223b733a333a22796573223b733a373a22746d656d626572223b733a333a22796573223b733a31313a22746d656d6265725f616464223b733a333a22796573223b733a31323a22746d656d6265725f65646974223b733a333a22796573223b733a31343a22746d656d6265725f64656c657465223b733a333a22796573223b733a31323a22746d656d6265725f76696577223b733a333a22796573223b733a363a22686f7374656c223b733a333a22796573223b733a31303a22686f7374656c5f616464223b733a333a22796573223b733a31313a22686f7374656c5f65646974223b733a333a22796573223b733a31333a22686f7374656c5f64656c657465223b733a333a22796573223b733a383a2263617465676f7279223b733a333a22796573223b733a31323a2263617465676f72795f616464223b733a333a22796573223b733a31333a2263617465676f72795f65646974223b733a333a22796573223b733a31353a2263617465676f72795f64656c657465223b733a333a22796573223b733a373a22686d656d626572223b733a333a22796573223b733a31313a22686d656d6265725f616464223b733a333a22796573223b733a31323a22686d656d6265725f65646974223b733a333a22796573223b733a31343a22686d656d6265725f64656c657465223b733a333a22796573223b733a31323a22686d656d6265725f76696577223b733a333a22796573223b733a383a226665657479706573223b733a333a22796573223b733a31323a2266656574797065735f616464223b733a333a22796573223b733a31333a2266656574797065735f65646974223b733a333a22796573223b733a31353a2266656574797065735f64656c657465223b733a333a22796573223b733a373a22696e766f696365223b733a333a22796573223b733a31313a22696e766f6963655f616464223b733a333a22796573223b733a31323a22696e766f6963655f65646974223b733a333a22796573223b733a31343a22696e766f6963655f64656c657465223b733a333a22796573223b733a31323a22696e766f6963655f76696577223b733a333a22796573223b733a31343a227061796d656e74686973746f7279223b733a333a22796573223b733a31393a227061796d656e74686973746f72795f65646974223b733a333a22796573223b733a32313a227061796d656e74686973746f72795f64656c657465223b733a333a22796573223b733a373a22657870656e7365223b733a333a22796573223b733a31313a22657870656e73655f616464223b733a333a22796573223b733a31323a22657870656e73655f65646974223b733a333a22796573223b733a31343a22657870656e73655f64656c657465223b733a333a22796573223b733a363a226e6f74696365223b733a333a22796573223b733a31303a226e6f746963655f616464223b733a333a22796573223b733a31313a226e6f746963655f65646974223b733a333a22796573223b733a31333a226e6f746963655f64656c657465223b733a333a22796573223b733a31313a226e6f746963655f76696577223b733a333a22796573223b733a353a226576656e74223b733a333a22796573223b733a393a226576656e745f616464223b733a333a22796573223b733a31303a226576656e745f65646974223b733a333a22796573223b733a31323a226576656e745f64656c657465223b733a333a22796573223b733a31303a226576656e745f76696577223b733a333a22796573223b733a373a22686f6c69646179223b733a333a22796573223b733a31313a22686f6c696461795f616464223b733a333a22796573223b733a31323a22686f6c696461795f65646974223b733a333a22796573223b733a31343a22686f6c696461795f64656c657465223b733a333a22796573223b733a31323a22686f6c696461795f76696577223b733a333a22796573223b733a363a227265706f7274223b733a333a22796573223b733a32303a227265706f72742f73747564656e747265706f7274223b733a333a22796573223b733a31383a227265706f72742f636c6173737265706f7274223b733a333a22796573223b733a32333a227265706f72742f617474656e64616e63657265706f7274223b733a333a22796573223b733a31383a227265706f72742f6365727469666963617465223b733a333a22796573223b733a31313a2276697369746f72696e666f223b733a333a22796573223b733a31383a2276697369746f72696e666f5f64656c657465223b733a333a22796573223b733a31363a2276697369746f72696e666f5f76696577223b733a333a22796573223b733a31303a227363686f6f6c79656172223b733a333a22796573223b733a31343a227363686f6f6c796561725f616464223b733a333a22796573223b733a31353a227363686f6f6c796561725f65646974223b733a333a22796573223b733a31373a227363686f6f6c796561725f64656c657465223b733a333a22796573223b733a31323a2273747564656e7467726f7570223b733a333a22796573223b733a31363a2273747564656e7467726f75705f616464223b733a333a22796573223b733a31373a2273747564656e7467726f75705f65646974223b733a333a22796573223b733a31393a2273747564656e7467726f75705f64656c657465223b733a333a22796573223b733a383a22636f6d706c61696e223b733a333a22796573223b733a31323a22636f6d706c61696e5f616464223b733a333a22796573223b733a31333a22636f6d706c61696e5f65646974223b733a333a22796573223b733a31353a22636f6d706c61696e5f64656c657465223b733a333a22796573223b733a31333a22636f6d706c61696e5f76696577223b733a333a22796573223b733a32303a2263657274696669636174655f74656d706c617465223b733a333a22796573223b733a32343a2263657274696669636174655f74656d706c6174655f616464223b733a333a22796573223b733a32353a2263657274696669636174655f74656d706c6174655f65646974223b733a333a22796573223b733a32373a2263657274696669636174655f74656d706c6174655f64656c657465223b733a333a22796573223b733a32353a2263657274696669636174655f74656d706c6174655f76696577223b733a333a22796573223b733a31313a2273797374656d61646d696e223b733a333a22796573223b733a31353a2273797374656d61646d696e5f616464223b733a333a22796573223b733a31363a2273797374656d61646d696e5f65646974223b733a333a22796573223b733a31383a2273797374656d61646d696e5f64656c657465223b733a333a22796573223b733a31363a2273797374656d61646d696e5f76696577223b733a333a22796573223b733a31333a22726573657470617373776f7264223b733a333a22796573223b733a31383a226d61696c616e64736d7374656d706c617465223b733a333a22796573223b733a32323a226d61696c616e64736d7374656d706c6174655f616464223b733a333a22796573223b733a32333a226d61696c616e64736d7374656d706c6174655f65646974223b733a333a22796573223b733a32353a226d61696c616e64736d7374656d706c6174655f64656c657465223b733a333a22796573223b733a32333a226d61696c616e64736d7374656d706c6174655f76696577223b733a333a22796573223b733a31303a2262756c6b696d706f7274223b733a333a22796573223b733a363a226261636b7570223b733a333a22796573223b733a383a227573657274797065223b733a333a22796573223b733a31323a2275736572747970655f616464223b733a333a22796573223b733a31333a2275736572747970655f65646974223b733a333a22796573223b733a31353a2275736572747970655f64656c657465223b733a333a22796573223b733a31303a227065726d697373696f6e223b733a333a22796573223b733a363a22757064617465223b733a333a22796573223b733a373a2273657474696e67223b733a333a22796573223b733a31323a2273657474696e675f65646974223b733a333a22796573223b733a31353a227061796d656e7473657474696e6773223b733a333a22796573223b733a31313a22736d7373657474696e6773223b733a333a22796573223b733a353a227061676573223b733a333a22796573223b733a393a2270616765735f616464223b733a333a22796573223b733a31303a2270616765735f65646974223b733a333a22796573223b733a31323a2270616765735f64656c657465223b733a333a22796573223b733a31363a2266726f6e74656e645f73657474696e67223b733a333a22796573223b733a393a2274616b655f6578616d223b733a333a22796573223b7d6572726f727c4e3b);
INSERT INTO `school_sessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES
('897p0g4h74knuldjfbqljet0bos5kscf', '150.107.205.157', 1518175764, 0x5f5f63695f6c6173745f726567656e65726174657c693a313531383137353532373b6c616e677c733a373a22656e676c697368223b6c6f67696e7573657249447c733a313a2231223b6e616d657c733a353a2261646d696e223b656d61696c7c733a32303a227072616b61726b68617240676d61696c2e636f6d223b757365727479706549447c733a313a2231223b75736572747970657c733a353a2241646d696e223b757365726e616d657c733a353a2261646d696e223b70686f746f7c733a31313a2264656661756c742e706e67223b64656661756c747363686f6f6c7965617249447c733a313a2231223b6c6f67676564696e7c623a313b6765745f7065726d697373696f6e7c623a313b6d61737465725f7065726d697373696f6e5f7365747c613a3237393a7b733a393a2264617368626f617264223b733a333a22796573223b733a373a2273747564656e74223b733a333a22796573223b733a31313a2273747564656e745f616464223b733a333a22796573223b733a31323a2273747564656e745f65646974223b733a333a22796573223b733a31343a2273747564656e745f64656c657465223b733a333a22796573223b733a31323a2273747564656e745f76696577223b733a333a22796573223b733a373a22706172656e7473223b733a333a22796573223b733a31313a22706172656e74735f616464223b733a333a22796573223b733a31323a22706172656e74735f65646974223b733a333a22796573223b733a31343a22706172656e74735f64656c657465223b733a333a22796573223b733a31323a22706172656e74735f76696577223b733a333a22796573223b733a373a2274656163686572223b733a333a22796573223b733a31313a22746561636865725f616464223b733a333a22796573223b733a31323a22746561636865725f65646974223b733a333a22796573223b733a31343a22746561636865725f64656c657465223b733a333a22796573223b733a31323a22746561636865725f76696577223b733a333a22796573223b733a343a2275736572223b733a333a22796573223b733a383a22757365725f616464223b733a333a22796573223b733a393a22757365725f65646974223b733a333a22796573223b733a31313a22757365725f64656c657465223b733a333a22796573223b733a393a22757365725f76696577223b733a333a22796573223b733a373a22636c6173736573223b733a333a22796573223b733a31313a22636c61737365735f616464223b733a333a22796573223b733a31323a22636c61737365735f65646974223b733a333a22796573223b733a31343a22636c61737365735f64656c657465223b733a333a22796573223b733a373a227375626a656374223b733a333a22796573223b733a31313a227375626a6563745f616464223b733a333a22796573223b733a31323a227375626a6563745f65646974223b733a333a22796573223b733a31343a227375626a6563745f64656c657465223b733a333a22796573223b733a373a2273656374696f6e223b733a333a22796573223b733a31313a2273656374696f6e5f616464223b733a333a22796573223b733a31323a2273656374696f6e5f65646974223b733a333a22796573223b733a31353a2273656d65737465725f64656c657465223b733a333a22796573223b733a31343a2273656374696f6e5f64656c657465223b733a333a22796573223b733a383a2273796c6c61627573223b733a333a22796573223b733a31323a2273796c6c616275735f616464223b733a333a22796573223b733a31333a2273796c6c616275735f65646974223b733a333a22796573223b733a31353a2273796c6c616275735f64656c657465223b733a333a22796573223b733a31303a2261737369676e6d656e74223b733a333a22796573223b733a31343a2261737369676e6d656e745f616464223b733a333a22796573223b733a31353a2261737369676e6d656e745f65646974223b733a333a22796573223b733a31373a2261737369676e6d656e745f64656c657465223b733a333a22796573223b733a31353a2261737369676e6d656e745f76696577223b733a333a22796573223b733a373a22726f7574696e65223b733a333a22796573223b733a31313a22726f7574696e655f616464223b733a333a22796573223b733a31323a22726f7574696e655f65646974223b733a333a22796573223b733a31343a22726f7574696e655f64656c657465223b733a333a22796573223b733a31313a2273617474656e64616e6365223b733a333a22796573223b733a31353a2273617474656e64616e63655f616464223b733a333a22796573223b733a31363a2273617474656e64616e63655f76696577223b733a333a22796573223b733a31313a2274617474656e64616e6365223b733a333a22796573223b733a31353a2274617474656e64616e63655f616464223b733a333a22796573223b733a31363a2274617474656e64616e63655f76696577223b733a333a22796573223b733a31313a2275617474656e64616e6365223b733a333a22796573223b733a31353a2275617474656e64616e63655f616464223b733a333a22796573223b733a31363a2275617474656e64616e63655f76696577223b733a333a22796573223b733a343a226578616d223b733a333a22796573223b733a383a226578616d5f616464223b733a333a22796573223b733a393a226578616d5f65646974223b733a333a22796573223b733a31313a226578616d5f64656c657465223b733a333a22796573223b733a31323a226578616d7363686564756c65223b733a333a22796573223b733a31363a226578616d7363686564756c655f616464223b733a333a22796573223b733a31373a226578616d7363686564756c655f65646974223b733a333a22796573223b733a31393a226578616d7363686564756c655f64656c657465223b733a333a22796573223b733a353a226772616465223b733a333a22796573223b733a393a2267726164655f616464223b733a333a22796573223b733a31303a2267726164655f65646974223b733a333a22796573223b733a31323a2267726164655f64656c657465223b733a333a22796573223b733a31313a2265617474656e64616e6365223b733a333a22796573223b733a31353a2265617474656e64616e63655f616464223b733a333a22796573223b733a343a226d61726b223b733a333a22796573223b733a383a226d61726b5f616464223b733a333a22796573223b733a393a226d61726b5f76696577223b733a333a22796573223b733a31343a226d61726b70657263656e74616765223b733a333a22796573223b733a31383a226d61726b70657263656e746167655f616464223b733a333a22796573223b733a31393a226d61726b70657263656e746167655f65646974223b733a333a22796573223b733a32313a226d61726b70657263656e746167655f64656c657465223b733a333a22796573223b733a393a2270726f6d6f74696f6e223b733a333a22796573223b733a31323a22636f6e766572736174696f6e223b733a333a22796573223b733a353a226d65646961223b733a333a22796573223b733a393a226d656469615f616464223b733a333a22796573223b733a31323a226d656469615f64656c657465223b733a333a22796573223b733a31303a226d61696c616e64736d73223b733a333a22796573223b733a31343a226d61696c616e64736d735f616464223b733a333a22796573223b733a31353a226d61696c616e64736d735f76696577223b733a333a22796573223b733a31343a227175657374696f6e5f67726f7570223b733a333a22796573223b733a31383a227175657374696f6e5f67726f75705f616464223b733a333a22796573223b733a31393a227175657374696f6e5f67726f75705f65646974223b733a333a22796573223b733a32313a227175657374696f6e5f67726f75705f64656c657465223b733a333a22796573223b733a31343a227175657374696f6e5f6c6576656c223b733a333a22796573223b733a31383a227175657374696f6e5f6c6576656c5f616464223b733a333a22796573223b733a31393a227175657374696f6e5f6c6576656c5f65646974223b733a333a22796573223b733a32313a227175657374696f6e5f6c6576656c5f64656c657465223b733a333a22796573223b733a31333a227175657374696f6e5f62616e6b223b733a333a22796573223b733a31373a227175657374696f6e5f62616e6b5f616464223b733a333a22796573223b733a31383a227175657374696f6e5f62616e6b5f65646974223b733a333a22796573223b733a32303a227175657374696f6e5f62616e6b5f64656c657465223b733a333a22796573223b733a31383a227175657374696f6e5f62616e6b5f76696577223b733a333a22796573223b733a31313a226f6e6c696e655f6578616d223b733a333a22796573223b733a31353a226f6e6c696e655f6578616d5f616464223b733a333a22796573223b733a31363a226f6e6c696e655f6578616d5f65646974223b733a333a22796573223b733a31383a226f6e6c696e655f6578616d5f64656c657465223b733a333a22796573223b733a31313a22696e737472756374696f6e223b733a333a22796573223b733a31353a22696e737472756374696f6e5f616464223b733a333a22796573223b733a31363a22696e737472756374696f6e5f65646974223b733a333a22796573223b733a31383a22696e737472756374696f6e5f64656c657465223b733a333a22796573223b733a31363a22696e737472756374696f6e5f76696577223b733a333a22796573223b733a31353a2273616c6172795f74656d706c617465223b733a333a22796573223b733a31393a2273616c6172795f74656d706c6174655f616464223b733a333a22796573223b733a32303a2273616c6172795f74656d706c6174655f65646974223b733a333a22796573223b733a32323a2273616c6172795f74656d706c6174655f64656c657465223b733a333a22796573223b733a32303a2273616c6172795f74656d706c6174655f76696577223b733a333a22796573223b733a31353a22686f75726c795f74656d706c617465223b733a333a22796573223b733a31393a22686f75726c795f74656d706c6174655f616464223b733a333a22796573223b733a32303a22686f75726c795f74656d706c6174655f65646974223b733a333a22796573223b733a32323a22686f75726c795f74656d706c6174655f64656c657465223b733a333a22796573223b733a31333a226d616e6167655f73616c617279223b733a333a22796573223b733a31373a226d616e6167655f73616c6172795f616464223b733a333a22796573223b733a31383a226d616e6167655f73616c6172795f65646974223b733a333a22796573223b733a32303a226d616e6167655f73616c6172795f64656c657465223b733a333a22796573223b733a31383a226d616e6167655f73616c6172795f76696577223b733a333a22796573223b733a31323a226d616b655f7061796d656e74223b733a333a22796573223b733a363a2276656e646f72223b733a333a22796573223b733a31303a2276656e646f725f616464223b733a333a22796573223b733a31313a2276656e646f725f65646974223b733a333a22796573223b733a31333a2276656e646f725f64656c657465223b733a333a22796573223b733a383a226c6f636174696f6e223b733a333a22796573223b733a31323a226c6f636174696f6e5f616464223b733a333a22796573223b733a31333a226c6f636174696f6e5f65646974223b733a333a22796573223b733a31353a226c6f636174696f6e5f64656c657465223b733a333a22796573223b733a31343a2261737365745f63617465676f7279223b733a333a22796573223b733a31383a2261737365745f63617465676f72795f616464223b733a333a22796573223b733a31393a2261737365745f63617465676f72795f65646974223b733a333a22796573223b733a32313a2261737365745f63617465676f72795f64656c657465223b733a333a22796573223b733a353a226173736574223b733a333a22796573223b733a393a2261737365745f616464223b733a333a22796573223b733a31303a2261737365745f65646974223b733a333a22796573223b733a31323a2261737365745f64656c657465223b733a333a22796573223b733a31303a2261737365745f76696577223b733a333a22796573223b733a31363a2261737365745f61737369676e6d656e74223b733a333a22796573223b733a32303a2261737365745f61737369676e6d656e745f616464223b733a333a22796573223b733a32313a2261737365745f61737369676e6d656e745f65646974223b733a333a22796573223b733a32333a2261737365745f61737369676e6d656e745f64656c657465223b733a333a22796573223b733a32313a2261737365745f61737369676e6d656e745f76696577223b733a333a22796573223b733a383a227075726368617365223b733a333a22796573223b733a31323a2270757263686173655f616464223b733a333a22796573223b733a31333a2270757263686173655f65646974223b733a333a22796573223b733a31353a2270757263686173655f64656c657465223b733a333a22796573223b733a31383a226163746976697469657363617465676f7279223b733a333a22796573223b733a32323a226163746976697469657363617465676f72795f616464223b733a333a22796573223b733a32333a226163746976697469657363617465676f72795f65646974223b733a333a22796573223b733a32353a226163746976697469657363617465676f72795f64656c657465223b733a333a22796573223b733a31303a2261637469766974696573223b733a333a22796573223b733a31343a22616374697669746965735f616464223b733a333a22796573223b733a31373a22616374697669746965735f64656c657465223b733a333a22796573223b733a393a226368696c6463617265223b733a333a22796573223b733a31333a226368696c64636172655f616464223b733a333a22796573223b733a31363a226368696c64636172655f64656c657465223b733a333a22796573223b733a373a226c6d656d626572223b733a333a22796573223b733a31313a226c6d656d6265725f616464223b733a333a22796573223b733a31323a226c6d656d6265725f65646974223b733a333a22796573223b733a31343a226c6d656d6265725f64656c657465223b733a333a22796573223b733a31323a226c6d656d6265725f76696577223b733a333a22796573223b733a343a22626f6f6b223b733a333a22796573223b733a383a22626f6f6b5f616464223b733a333a22796573223b733a393a22626f6f6b5f65646974223b733a333a22796573223b733a31313a22626f6f6b5f64656c657465223b733a333a22796573223b733a353a226973737565223b733a333a22796573223b733a393a2269737375655f616464223b733a333a22796573223b733a31303a2269737375655f65646974223b733a333a22796573223b733a31303a2269737375655f76696577223b733a333a22796573223b733a393a227472616e73706f7274223b733a333a22796573223b733a31333a227472616e73706f72745f616464223b733a333a22796573223b733a31343a227472616e73706f72745f65646974223b733a333a22796573223b733a31363a227472616e73706f72745f64656c657465223b733a333a22796573223b733a373a22746d656d626572223b733a333a22796573223b733a31313a22746d656d6265725f616464223b733a333a22796573223b733a31323a22746d656d6265725f65646974223b733a333a22796573223b733a31343a22746d656d6265725f64656c657465223b733a333a22796573223b733a31323a22746d656d6265725f76696577223b733a333a22796573223b733a363a22686f7374656c223b733a333a22796573223b733a31303a22686f7374656c5f616464223b733a333a22796573223b733a31313a22686f7374656c5f65646974223b733a333a22796573223b733a31333a22686f7374656c5f64656c657465223b733a333a22796573223b733a383a2263617465676f7279223b733a333a22796573223b733a31323a2263617465676f72795f616464223b733a333a22796573223b733a31333a2263617465676f72795f65646974223b733a333a22796573223b733a31353a2263617465676f72795f64656c657465223b733a333a22796573223b733a373a22686d656d626572223b733a333a22796573223b733a31313a22686d656d6265725f616464223b733a333a22796573223b733a31323a22686d656d6265725f65646974223b733a333a22796573223b733a31343a22686d656d6265725f64656c657465223b733a333a22796573223b733a31323a22686d656d6265725f76696577223b733a333a22796573223b733a383a226665657479706573223b733a333a22796573223b733a31323a2266656574797065735f616464223b733a333a22796573223b733a31333a2266656574797065735f65646974223b733a333a22796573223b733a31353a2266656574797065735f64656c657465223b733a333a22796573223b733a373a22696e766f696365223b733a333a22796573223b733a31313a22696e766f6963655f616464223b733a333a22796573223b733a31323a22696e766f6963655f65646974223b733a333a22796573223b733a31343a22696e766f6963655f64656c657465223b733a333a22796573223b733a31323a22696e766f6963655f76696577223b733a333a22796573223b733a31343a227061796d656e74686973746f7279223b733a333a22796573223b733a31393a227061796d656e74686973746f72795f65646974223b733a333a22796573223b733a32313a227061796d656e74686973746f72795f64656c657465223b733a333a22796573223b733a373a22657870656e7365223b733a333a22796573223b733a31313a22657870656e73655f616464223b733a333a22796573223b733a31323a22657870656e73655f65646974223b733a333a22796573223b733a31343a22657870656e73655f64656c657465223b733a333a22796573223b733a363a226e6f74696365223b733a333a22796573223b733a31303a226e6f746963655f616464223b733a333a22796573223b733a31313a226e6f746963655f65646974223b733a333a22796573223b733a31333a226e6f746963655f64656c657465223b733a333a22796573223b733a31313a226e6f746963655f76696577223b733a333a22796573223b733a353a226576656e74223b733a333a22796573223b733a393a226576656e745f616464223b733a333a22796573223b733a31303a226576656e745f65646974223b733a333a22796573223b733a31323a226576656e745f64656c657465223b733a333a22796573223b733a31303a226576656e745f76696577223b733a333a22796573223b733a373a22686f6c69646179223b733a333a22796573223b733a31313a22686f6c696461795f616464223b733a333a22796573223b733a31323a22686f6c696461795f65646974223b733a333a22796573223b733a31343a22686f6c696461795f64656c657465223b733a333a22796573223b733a31323a22686f6c696461795f76696577223b733a333a22796573223b733a363a227265706f7274223b733a333a22796573223b733a32303a227265706f72742f73747564656e747265706f7274223b733a333a22796573223b733a31383a227265706f72742f636c6173737265706f7274223b733a333a22796573223b733a32333a227265706f72742f617474656e64616e63657265706f7274223b733a333a22796573223b733a31383a227265706f72742f6365727469666963617465223b733a333a22796573223b733a31313a2276697369746f72696e666f223b733a333a22796573223b733a31383a2276697369746f72696e666f5f64656c657465223b733a333a22796573223b733a31363a2276697369746f72696e666f5f76696577223b733a333a22796573223b733a31303a227363686f6f6c79656172223b733a333a22796573223b733a31343a227363686f6f6c796561725f616464223b733a333a22796573223b733a31353a227363686f6f6c796561725f65646974223b733a333a22796573223b733a31373a227363686f6f6c796561725f64656c657465223b733a333a22796573223b733a31323a2273747564656e7467726f7570223b733a333a22796573223b733a31363a2273747564656e7467726f75705f616464223b733a333a22796573223b733a31373a2273747564656e7467726f75705f65646974223b733a333a22796573223b733a31393a2273747564656e7467726f75705f64656c657465223b733a333a22796573223b733a383a22636f6d706c61696e223b733a333a22796573223b733a31323a22636f6d706c61696e5f616464223b733a333a22796573223b733a31333a22636f6d706c61696e5f65646974223b733a333a22796573223b733a31353a22636f6d706c61696e5f64656c657465223b733a333a22796573223b733a31333a22636f6d706c61696e5f76696577223b733a333a22796573223b733a32303a2263657274696669636174655f74656d706c617465223b733a333a22796573223b733a32343a2263657274696669636174655f74656d706c6174655f616464223b733a333a22796573223b733a32353a2263657274696669636174655f74656d706c6174655f65646974223b733a333a22796573223b733a32373a2263657274696669636174655f74656d706c6174655f64656c657465223b733a333a22796573223b733a32353a2263657274696669636174655f74656d706c6174655f76696577223b733a333a22796573223b733a31313a2273797374656d61646d696e223b733a333a22796573223b733a31353a2273797374656d61646d696e5f616464223b733a333a22796573223b733a31363a2273797374656d61646d696e5f65646974223b733a333a22796573223b733a31383a2273797374656d61646d696e5f64656c657465223b733a333a22796573223b733a31363a2273797374656d61646d696e5f76696577223b733a333a22796573223b733a31333a22726573657470617373776f7264223b733a333a22796573223b733a31383a226d61696c616e64736d7374656d706c617465223b733a333a22796573223b733a32323a226d61696c616e64736d7374656d706c6174655f616464223b733a333a22796573223b733a32333a226d61696c616e64736d7374656d706c6174655f65646974223b733a333a22796573223b733a32353a226d61696c616e64736d7374656d706c6174655f64656c657465223b733a333a22796573223b733a32333a226d61696c616e64736d7374656d706c6174655f76696577223b733a333a22796573223b733a31303a2262756c6b696d706f7274223b733a333a22796573223b733a363a226261636b7570223b733a333a22796573223b733a383a227573657274797065223b733a333a22796573223b733a31323a2275736572747970655f616464223b733a333a22796573223b733a31333a2275736572747970655f65646974223b733a333a22796573223b733a31353a2275736572747970655f64656c657465223b733a333a22796573223b733a31303a227065726d697373696f6e223b733a333a22796573223b733a363a22757064617465223b733a333a22796573223b733a373a2273657474696e67223b733a333a22796573223b733a31323a2273657474696e675f65646974223b733a333a22796573223b733a31353a227061796d656e7473657474696e6773223b733a333a22796573223b733a31313a22736d7373657474696e6773223b733a333a22796573223b733a353a227061676573223b733a333a22796573223b733a393a2270616765735f616464223b733a333a22796573223b733a31303a2270616765735f65646974223b733a333a22796573223b733a31323a2270616765735f64656c657465223b733a333a22796573223b733a31363a2266726f6e74656e645f73657474696e67223b733a333a22796573223b733a393a2274616b655f6578616d223b733a333a22796573223b7d6572726f727c4e3b),
('dnoca0ccg4795ct1cvhg7dijkcjcqdrg', '150.107.205.157', 1518176035, 0x5f5f63695f6c6173745f726567656e65726174657c693a313531383137363031363b6c616e677c733a373a22656e676c697368223b6c6f67696e7573657249447c733a313a2231223b6e616d657c733a353a2261646d696e223b656d61696c7c733a32303a227072616b61726b68617240676d61696c2e636f6d223b757365727479706549447c733a313a2231223b75736572747970657c733a353a2241646d696e223b757365726e616d657c733a353a2261646d696e223b70686f746f7c733a31313a2264656661756c742e706e67223b64656661756c747363686f6f6c7965617249447c733a313a2231223b6c6f67676564696e7c623a313b6765745f7065726d697373696f6e7c623a313b6d61737465725f7065726d697373696f6e5f7365747c613a3237393a7b733a393a2264617368626f617264223b733a333a22796573223b733a373a2273747564656e74223b733a333a22796573223b733a31313a2273747564656e745f616464223b733a333a22796573223b733a31323a2273747564656e745f65646974223b733a333a22796573223b733a31343a2273747564656e745f64656c657465223b733a333a22796573223b733a31323a2273747564656e745f76696577223b733a333a22796573223b733a373a22706172656e7473223b733a333a22796573223b733a31313a22706172656e74735f616464223b733a333a22796573223b733a31323a22706172656e74735f65646974223b733a333a22796573223b733a31343a22706172656e74735f64656c657465223b733a333a22796573223b733a31323a22706172656e74735f76696577223b733a333a22796573223b733a373a2274656163686572223b733a333a22796573223b733a31313a22746561636865725f616464223b733a333a22796573223b733a31323a22746561636865725f65646974223b733a333a22796573223b733a31343a22746561636865725f64656c657465223b733a333a22796573223b733a31323a22746561636865725f76696577223b733a333a22796573223b733a343a2275736572223b733a333a22796573223b733a383a22757365725f616464223b733a333a22796573223b733a393a22757365725f65646974223b733a333a22796573223b733a31313a22757365725f64656c657465223b733a333a22796573223b733a393a22757365725f76696577223b733a333a22796573223b733a373a22636c6173736573223b733a333a22796573223b733a31313a22636c61737365735f616464223b733a333a22796573223b733a31323a22636c61737365735f65646974223b733a333a22796573223b733a31343a22636c61737365735f64656c657465223b733a333a22796573223b733a373a227375626a656374223b733a333a22796573223b733a31313a227375626a6563745f616464223b733a333a22796573223b733a31323a227375626a6563745f65646974223b733a333a22796573223b733a31343a227375626a6563745f64656c657465223b733a333a22796573223b733a373a2273656374696f6e223b733a333a22796573223b733a31313a2273656374696f6e5f616464223b733a333a22796573223b733a31323a2273656374696f6e5f65646974223b733a333a22796573223b733a31353a2273656d65737465725f64656c657465223b733a333a22796573223b733a31343a2273656374696f6e5f64656c657465223b733a333a22796573223b733a383a2273796c6c61627573223b733a333a22796573223b733a31323a2273796c6c616275735f616464223b733a333a22796573223b733a31333a2273796c6c616275735f65646974223b733a333a22796573223b733a31353a2273796c6c616275735f64656c657465223b733a333a22796573223b733a31303a2261737369676e6d656e74223b733a333a22796573223b733a31343a2261737369676e6d656e745f616464223b733a333a22796573223b733a31353a2261737369676e6d656e745f65646974223b733a333a22796573223b733a31373a2261737369676e6d656e745f64656c657465223b733a333a22796573223b733a31353a2261737369676e6d656e745f76696577223b733a333a22796573223b733a373a22726f7574696e65223b733a333a22796573223b733a31313a22726f7574696e655f616464223b733a333a22796573223b733a31323a22726f7574696e655f65646974223b733a333a22796573223b733a31343a22726f7574696e655f64656c657465223b733a333a22796573223b733a31313a2273617474656e64616e6365223b733a333a22796573223b733a31353a2273617474656e64616e63655f616464223b733a333a22796573223b733a31363a2273617474656e64616e63655f76696577223b733a333a22796573223b733a31313a2274617474656e64616e6365223b733a333a22796573223b733a31353a2274617474656e64616e63655f616464223b733a333a22796573223b733a31363a2274617474656e64616e63655f76696577223b733a333a22796573223b733a31313a2275617474656e64616e6365223b733a333a22796573223b733a31353a2275617474656e64616e63655f616464223b733a333a22796573223b733a31363a2275617474656e64616e63655f76696577223b733a333a22796573223b733a343a226578616d223b733a333a22796573223b733a383a226578616d5f616464223b733a333a22796573223b733a393a226578616d5f65646974223b733a333a22796573223b733a31313a226578616d5f64656c657465223b733a333a22796573223b733a31323a226578616d7363686564756c65223b733a333a22796573223b733a31363a226578616d7363686564756c655f616464223b733a333a22796573223b733a31373a226578616d7363686564756c655f65646974223b733a333a22796573223b733a31393a226578616d7363686564756c655f64656c657465223b733a333a22796573223b733a353a226772616465223b733a333a22796573223b733a393a2267726164655f616464223b733a333a22796573223b733a31303a2267726164655f65646974223b733a333a22796573223b733a31323a2267726164655f64656c657465223b733a333a22796573223b733a31313a2265617474656e64616e6365223b733a333a22796573223b733a31353a2265617474656e64616e63655f616464223b733a333a22796573223b733a343a226d61726b223b733a333a22796573223b733a383a226d61726b5f616464223b733a333a22796573223b733a393a226d61726b5f76696577223b733a333a22796573223b733a31343a226d61726b70657263656e74616765223b733a333a22796573223b733a31383a226d61726b70657263656e746167655f616464223b733a333a22796573223b733a31393a226d61726b70657263656e746167655f65646974223b733a333a22796573223b733a32313a226d61726b70657263656e746167655f64656c657465223b733a333a22796573223b733a393a2270726f6d6f74696f6e223b733a333a22796573223b733a31323a22636f6e766572736174696f6e223b733a333a22796573223b733a353a226d65646961223b733a333a22796573223b733a393a226d656469615f616464223b733a333a22796573223b733a31323a226d656469615f64656c657465223b733a333a22796573223b733a31303a226d61696c616e64736d73223b733a333a22796573223b733a31343a226d61696c616e64736d735f616464223b733a333a22796573223b733a31353a226d61696c616e64736d735f76696577223b733a333a22796573223b733a31343a227175657374696f6e5f67726f7570223b733a333a22796573223b733a31383a227175657374696f6e5f67726f75705f616464223b733a333a22796573223b733a31393a227175657374696f6e5f67726f75705f65646974223b733a333a22796573223b733a32313a227175657374696f6e5f67726f75705f64656c657465223b733a333a22796573223b733a31343a227175657374696f6e5f6c6576656c223b733a333a22796573223b733a31383a227175657374696f6e5f6c6576656c5f616464223b733a333a22796573223b733a31393a227175657374696f6e5f6c6576656c5f65646974223b733a333a22796573223b733a32313a227175657374696f6e5f6c6576656c5f64656c657465223b733a333a22796573223b733a31333a227175657374696f6e5f62616e6b223b733a333a22796573223b733a31373a227175657374696f6e5f62616e6b5f616464223b733a333a22796573223b733a31383a227175657374696f6e5f62616e6b5f65646974223b733a333a22796573223b733a32303a227175657374696f6e5f62616e6b5f64656c657465223b733a333a22796573223b733a31383a227175657374696f6e5f62616e6b5f76696577223b733a333a22796573223b733a31313a226f6e6c696e655f6578616d223b733a333a22796573223b733a31353a226f6e6c696e655f6578616d5f616464223b733a333a22796573223b733a31363a226f6e6c696e655f6578616d5f65646974223b733a333a22796573223b733a31383a226f6e6c696e655f6578616d5f64656c657465223b733a333a22796573223b733a31313a22696e737472756374696f6e223b733a333a22796573223b733a31353a22696e737472756374696f6e5f616464223b733a333a22796573223b733a31363a22696e737472756374696f6e5f65646974223b733a333a22796573223b733a31383a22696e737472756374696f6e5f64656c657465223b733a333a22796573223b733a31363a22696e737472756374696f6e5f76696577223b733a333a22796573223b733a31353a2273616c6172795f74656d706c617465223b733a333a22796573223b733a31393a2273616c6172795f74656d706c6174655f616464223b733a333a22796573223b733a32303a2273616c6172795f74656d706c6174655f65646974223b733a333a22796573223b733a32323a2273616c6172795f74656d706c6174655f64656c657465223b733a333a22796573223b733a32303a2273616c6172795f74656d706c6174655f76696577223b733a333a22796573223b733a31353a22686f75726c795f74656d706c617465223b733a333a22796573223b733a31393a22686f75726c795f74656d706c6174655f616464223b733a333a22796573223b733a32303a22686f75726c795f74656d706c6174655f65646974223b733a333a22796573223b733a32323a22686f75726c795f74656d706c6174655f64656c657465223b733a333a22796573223b733a31333a226d616e6167655f73616c617279223b733a333a22796573223b733a31373a226d616e6167655f73616c6172795f616464223b733a333a22796573223b733a31383a226d616e6167655f73616c6172795f65646974223b733a333a22796573223b733a32303a226d616e6167655f73616c6172795f64656c657465223b733a333a22796573223b733a31383a226d616e6167655f73616c6172795f76696577223b733a333a22796573223b733a31323a226d616b655f7061796d656e74223b733a333a22796573223b733a363a2276656e646f72223b733a333a22796573223b733a31303a2276656e646f725f616464223b733a333a22796573223b733a31313a2276656e646f725f65646974223b733a333a22796573223b733a31333a2276656e646f725f64656c657465223b733a333a22796573223b733a383a226c6f636174696f6e223b733a333a22796573223b733a31323a226c6f636174696f6e5f616464223b733a333a22796573223b733a31333a226c6f636174696f6e5f65646974223b733a333a22796573223b733a31353a226c6f636174696f6e5f64656c657465223b733a333a22796573223b733a31343a2261737365745f63617465676f7279223b733a333a22796573223b733a31383a2261737365745f63617465676f72795f616464223b733a333a22796573223b733a31393a2261737365745f63617465676f72795f65646974223b733a333a22796573223b733a32313a2261737365745f63617465676f72795f64656c657465223b733a333a22796573223b733a353a226173736574223b733a333a22796573223b733a393a2261737365745f616464223b733a333a22796573223b733a31303a2261737365745f65646974223b733a333a22796573223b733a31323a2261737365745f64656c657465223b733a333a22796573223b733a31303a2261737365745f76696577223b733a333a22796573223b733a31363a2261737365745f61737369676e6d656e74223b733a333a22796573223b733a32303a2261737365745f61737369676e6d656e745f616464223b733a333a22796573223b733a32313a2261737365745f61737369676e6d656e745f65646974223b733a333a22796573223b733a32333a2261737365745f61737369676e6d656e745f64656c657465223b733a333a22796573223b733a32313a2261737365745f61737369676e6d656e745f76696577223b733a333a22796573223b733a383a227075726368617365223b733a333a22796573223b733a31323a2270757263686173655f616464223b733a333a22796573223b733a31333a2270757263686173655f65646974223b733a333a22796573223b733a31353a2270757263686173655f64656c657465223b733a333a22796573223b733a31383a226163746976697469657363617465676f7279223b733a333a22796573223b733a32323a226163746976697469657363617465676f72795f616464223b733a333a22796573223b733a32333a226163746976697469657363617465676f72795f65646974223b733a333a22796573223b733a32353a226163746976697469657363617465676f72795f64656c657465223b733a333a22796573223b733a31303a2261637469766974696573223b733a333a22796573223b733a31343a22616374697669746965735f616464223b733a333a22796573223b733a31373a22616374697669746965735f64656c657465223b733a333a22796573223b733a393a226368696c6463617265223b733a333a22796573223b733a31333a226368696c64636172655f616464223b733a333a22796573223b733a31363a226368696c64636172655f64656c657465223b733a333a22796573223b733a373a226c6d656d626572223b733a333a22796573223b733a31313a226c6d656d6265725f616464223b733a333a22796573223b733a31323a226c6d656d6265725f65646974223b733a333a22796573223b733a31343a226c6d656d6265725f64656c657465223b733a333a22796573223b733a31323a226c6d656d6265725f76696577223b733a333a22796573223b733a343a22626f6f6b223b733a333a22796573223b733a383a22626f6f6b5f616464223b733a333a22796573223b733a393a22626f6f6b5f65646974223b733a333a22796573223b733a31313a22626f6f6b5f64656c657465223b733a333a22796573223b733a353a226973737565223b733a333a22796573223b733a393a2269737375655f616464223b733a333a22796573223b733a31303a2269737375655f65646974223b733a333a22796573223b733a31303a2269737375655f76696577223b733a333a22796573223b733a393a227472616e73706f7274223b733a333a22796573223b733a31333a227472616e73706f72745f616464223b733a333a22796573223b733a31343a227472616e73706f72745f65646974223b733a333a22796573223b733a31363a227472616e73706f72745f64656c657465223b733a333a22796573223b733a373a22746d656d626572223b733a333a22796573223b733a31313a22746d656d6265725f616464223b733a333a22796573223b733a31323a22746d656d6265725f65646974223b733a333a22796573223b733a31343a22746d656d6265725f64656c657465223b733a333a22796573223b733a31323a22746d656d6265725f76696577223b733a333a22796573223b733a363a22686f7374656c223b733a333a22796573223b733a31303a22686f7374656c5f616464223b733a333a22796573223b733a31313a22686f7374656c5f65646974223b733a333a22796573223b733a31333a22686f7374656c5f64656c657465223b733a333a22796573223b733a383a2263617465676f7279223b733a333a22796573223b733a31323a2263617465676f72795f616464223b733a333a22796573223b733a31333a2263617465676f72795f65646974223b733a333a22796573223b733a31353a2263617465676f72795f64656c657465223b733a333a22796573223b733a373a22686d656d626572223b733a333a22796573223b733a31313a22686d656d6265725f616464223b733a333a22796573223b733a31323a22686d656d6265725f65646974223b733a333a22796573223b733a31343a22686d656d6265725f64656c657465223b733a333a22796573223b733a31323a22686d656d6265725f76696577223b733a333a22796573223b733a383a226665657479706573223b733a333a22796573223b733a31323a2266656574797065735f616464223b733a333a22796573223b733a31333a2266656574797065735f65646974223b733a333a22796573223b733a31353a2266656574797065735f64656c657465223b733a333a22796573223b733a373a22696e766f696365223b733a333a22796573223b733a31313a22696e766f6963655f616464223b733a333a22796573223b733a31323a22696e766f6963655f65646974223b733a333a22796573223b733a31343a22696e766f6963655f64656c657465223b733a333a22796573223b733a31323a22696e766f6963655f76696577223b733a333a22796573223b733a31343a227061796d656e74686973746f7279223b733a333a22796573223b733a31393a227061796d656e74686973746f72795f65646974223b733a333a22796573223b733a32313a227061796d656e74686973746f72795f64656c657465223b733a333a22796573223b733a373a22657870656e7365223b733a333a22796573223b733a31313a22657870656e73655f616464223b733a333a22796573223b733a31323a22657870656e73655f65646974223b733a333a22796573223b733a31343a22657870656e73655f64656c657465223b733a333a22796573223b733a363a226e6f74696365223b733a333a22796573223b733a31303a226e6f746963655f616464223b733a333a22796573223b733a31313a226e6f746963655f65646974223b733a333a22796573223b733a31333a226e6f746963655f64656c657465223b733a333a22796573223b733a31313a226e6f746963655f76696577223b733a333a22796573223b733a353a226576656e74223b733a333a22796573223b733a393a226576656e745f616464223b733a333a22796573223b733a31303a226576656e745f65646974223b733a333a22796573223b733a31323a226576656e745f64656c657465223b733a333a22796573223b733a31303a226576656e745f76696577223b733a333a22796573223b733a373a22686f6c69646179223b733a333a22796573223b733a31313a22686f6c696461795f616464223b733a333a22796573223b733a31323a22686f6c696461795f65646974223b733a333a22796573223b733a31343a22686f6c696461795f64656c657465223b733a333a22796573223b733a31323a22686f6c696461795f76696577223b733a333a22796573223b733a363a227265706f7274223b733a333a22796573223b733a32303a227265706f72742f73747564656e747265706f7274223b733a333a22796573223b733a31383a227265706f72742f636c6173737265706f7274223b733a333a22796573223b733a32333a227265706f72742f617474656e64616e63657265706f7274223b733a333a22796573223b733a31383a227265706f72742f6365727469666963617465223b733a333a22796573223b733a31313a2276697369746f72696e666f223b733a333a22796573223b733a31383a2276697369746f72696e666f5f64656c657465223b733a333a22796573223b733a31363a2276697369746f72696e666f5f76696577223b733a333a22796573223b733a31303a227363686f6f6c79656172223b733a333a22796573223b733a31343a227363686f6f6c796561725f616464223b733a333a22796573223b733a31353a227363686f6f6c796561725f65646974223b733a333a22796573223b733a31373a227363686f6f6c796561725f64656c657465223b733a333a22796573223b733a31323a2273747564656e7467726f7570223b733a333a22796573223b733a31363a2273747564656e7467726f75705f616464223b733a333a22796573223b733a31373a2273747564656e7467726f75705f65646974223b733a333a22796573223b733a31393a2273747564656e7467726f75705f64656c657465223b733a333a22796573223b733a383a22636f6d706c61696e223b733a333a22796573223b733a31323a22636f6d706c61696e5f616464223b733a333a22796573223b733a31333a22636f6d706c61696e5f65646974223b733a333a22796573223b733a31353a22636f6d706c61696e5f64656c657465223b733a333a22796573223b733a31333a22636f6d706c61696e5f76696577223b733a333a22796573223b733a32303a2263657274696669636174655f74656d706c617465223b733a333a22796573223b733a32343a2263657274696669636174655f74656d706c6174655f616464223b733a333a22796573223b733a32353a2263657274696669636174655f74656d706c6174655f65646974223b733a333a22796573223b733a32373a2263657274696669636174655f74656d706c6174655f64656c657465223b733a333a22796573223b733a32353a2263657274696669636174655f74656d706c6174655f76696577223b733a333a22796573223b733a31313a2273797374656d61646d696e223b733a333a22796573223b733a31353a2273797374656d61646d696e5f616464223b733a333a22796573223b733a31363a2273797374656d61646d696e5f65646974223b733a333a22796573223b733a31383a2273797374656d61646d696e5f64656c657465223b733a333a22796573223b733a31363a2273797374656d61646d696e5f76696577223b733a333a22796573223b733a31333a22726573657470617373776f7264223b733a333a22796573223b733a31383a226d61696c616e64736d7374656d706c617465223b733a333a22796573223b733a32323a226d61696c616e64736d7374656d706c6174655f616464223b733a333a22796573223b733a32333a226d61696c616e64736d7374656d706c6174655f65646974223b733a333a22796573223b733a32353a226d61696c616e64736d7374656d706c6174655f64656c657465223b733a333a22796573223b733a32333a226d61696c616e64736d7374656d706c6174655f76696577223b733a333a22796573223b733a31303a2262756c6b696d706f7274223b733a333a22796573223b733a363a226261636b7570223b733a333a22796573223b733a383a227573657274797065223b733a333a22796573223b733a31323a2275736572747970655f616464223b733a333a22796573223b733a31333a2275736572747970655f65646974223b733a333a22796573223b733a31353a2275736572747970655f64656c657465223b733a333a22796573223b733a31303a227065726d697373696f6e223b733a333a22796573223b733a363a22757064617465223b733a333a22796573223b733a373a2273657474696e67223b733a333a22796573223b733a31323a2273657474696e675f65646974223b733a333a22796573223b733a31353a227061796d656e7473657474696e6773223b733a333a22796573223b733a31313a22736d7373657474696e6773223b733a333a22796573223b733a353a227061676573223b733a333a22796573223b733a393a2270616765735f616464223b733a333a22796573223b733a31303a2270616765735f65646974223b733a333a22796573223b733a31323a2270616765735f64656c657465223b733a333a22796573223b733a31363a2266726f6e74656e645f73657474696e67223b733a333a22796573223b733a393a2274616b655f6578616d223b733a333a22796573223b7d6572726f727c4e3b);
INSERT INTO `school_sessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES
('5om7sur131jkp14jsc7eqmngo44heh65', '150.107.205.157', 1518177482, 0x5f5f63695f6c6173745f726567656e65726174657c693a313531383137373338343b6c616e677c733a373a22656e676c697368223b6c6f67696e7573657249447c733a313a2231223b6e616d657c733a353a2261646d696e223b656d61696c7c733a32303a227072616b61726b68617240676d61696c2e636f6d223b757365727479706549447c733a313a2231223b75736572747970657c733a353a2241646d696e223b757365726e616d657c733a353a2261646d696e223b70686f746f7c733a31313a2264656661756c742e706e67223b64656661756c747363686f6f6c7965617249447c733a313a2231223b6c6f67676564696e7c623a313b6765745f7065726d697373696f6e7c623a313b6d61737465725f7065726d697373696f6e5f7365747c613a3237393a7b733a393a2264617368626f617264223b733a333a22796573223b733a373a2273747564656e74223b733a333a22796573223b733a31313a2273747564656e745f616464223b733a333a22796573223b733a31323a2273747564656e745f65646974223b733a333a22796573223b733a31343a2273747564656e745f64656c657465223b733a333a22796573223b733a31323a2273747564656e745f76696577223b733a333a22796573223b733a373a22706172656e7473223b733a333a22796573223b733a31313a22706172656e74735f616464223b733a333a22796573223b733a31323a22706172656e74735f65646974223b733a333a22796573223b733a31343a22706172656e74735f64656c657465223b733a333a22796573223b733a31323a22706172656e74735f76696577223b733a333a22796573223b733a373a2274656163686572223b733a333a22796573223b733a31313a22746561636865725f616464223b733a333a22796573223b733a31323a22746561636865725f65646974223b733a333a22796573223b733a31343a22746561636865725f64656c657465223b733a333a22796573223b733a31323a22746561636865725f76696577223b733a333a22796573223b733a343a2275736572223b733a333a22796573223b733a383a22757365725f616464223b733a333a22796573223b733a393a22757365725f65646974223b733a333a22796573223b733a31313a22757365725f64656c657465223b733a333a22796573223b733a393a22757365725f76696577223b733a333a22796573223b733a373a22636c6173736573223b733a333a22796573223b733a31313a22636c61737365735f616464223b733a333a22796573223b733a31323a22636c61737365735f65646974223b733a333a22796573223b733a31343a22636c61737365735f64656c657465223b733a333a22796573223b733a373a227375626a656374223b733a333a22796573223b733a31313a227375626a6563745f616464223b733a333a22796573223b733a31323a227375626a6563745f65646974223b733a333a22796573223b733a31343a227375626a6563745f64656c657465223b733a333a22796573223b733a373a2273656374696f6e223b733a333a22796573223b733a31313a2273656374696f6e5f616464223b733a333a22796573223b733a31323a2273656374696f6e5f65646974223b733a333a22796573223b733a31353a2273656d65737465725f64656c657465223b733a333a22796573223b733a31343a2273656374696f6e5f64656c657465223b733a333a22796573223b733a383a2273796c6c61627573223b733a333a22796573223b733a31323a2273796c6c616275735f616464223b733a333a22796573223b733a31333a2273796c6c616275735f65646974223b733a333a22796573223b733a31353a2273796c6c616275735f64656c657465223b733a333a22796573223b733a31303a2261737369676e6d656e74223b733a333a22796573223b733a31343a2261737369676e6d656e745f616464223b733a333a22796573223b733a31353a2261737369676e6d656e745f65646974223b733a333a22796573223b733a31373a2261737369676e6d656e745f64656c657465223b733a333a22796573223b733a31353a2261737369676e6d656e745f76696577223b733a333a22796573223b733a373a22726f7574696e65223b733a333a22796573223b733a31313a22726f7574696e655f616464223b733a333a22796573223b733a31323a22726f7574696e655f65646974223b733a333a22796573223b733a31343a22726f7574696e655f64656c657465223b733a333a22796573223b733a31313a2273617474656e64616e6365223b733a333a22796573223b733a31353a2273617474656e64616e63655f616464223b733a333a22796573223b733a31363a2273617474656e64616e63655f76696577223b733a333a22796573223b733a31313a2274617474656e64616e6365223b733a333a22796573223b733a31353a2274617474656e64616e63655f616464223b733a333a22796573223b733a31363a2274617474656e64616e63655f76696577223b733a333a22796573223b733a31313a2275617474656e64616e6365223b733a333a22796573223b733a31353a2275617474656e64616e63655f616464223b733a333a22796573223b733a31363a2275617474656e64616e63655f76696577223b733a333a22796573223b733a343a226578616d223b733a333a22796573223b733a383a226578616d5f616464223b733a333a22796573223b733a393a226578616d5f65646974223b733a333a22796573223b733a31313a226578616d5f64656c657465223b733a333a22796573223b733a31323a226578616d7363686564756c65223b733a333a22796573223b733a31363a226578616d7363686564756c655f616464223b733a333a22796573223b733a31373a226578616d7363686564756c655f65646974223b733a333a22796573223b733a31393a226578616d7363686564756c655f64656c657465223b733a333a22796573223b733a353a226772616465223b733a333a22796573223b733a393a2267726164655f616464223b733a333a22796573223b733a31303a2267726164655f65646974223b733a333a22796573223b733a31323a2267726164655f64656c657465223b733a333a22796573223b733a31313a2265617474656e64616e6365223b733a333a22796573223b733a31353a2265617474656e64616e63655f616464223b733a333a22796573223b733a343a226d61726b223b733a333a22796573223b733a383a226d61726b5f616464223b733a333a22796573223b733a393a226d61726b5f76696577223b733a333a22796573223b733a31343a226d61726b70657263656e74616765223b733a333a22796573223b733a31383a226d61726b70657263656e746167655f616464223b733a333a22796573223b733a31393a226d61726b70657263656e746167655f65646974223b733a333a22796573223b733a32313a226d61726b70657263656e746167655f64656c657465223b733a333a22796573223b733a393a2270726f6d6f74696f6e223b733a333a22796573223b733a31323a22636f6e766572736174696f6e223b733a333a22796573223b733a353a226d65646961223b733a333a22796573223b733a393a226d656469615f616464223b733a333a22796573223b733a31323a226d656469615f64656c657465223b733a333a22796573223b733a31303a226d61696c616e64736d73223b733a333a22796573223b733a31343a226d61696c616e64736d735f616464223b733a333a22796573223b733a31353a226d61696c616e64736d735f76696577223b733a333a22796573223b733a31343a227175657374696f6e5f67726f7570223b733a333a22796573223b733a31383a227175657374696f6e5f67726f75705f616464223b733a333a22796573223b733a31393a227175657374696f6e5f67726f75705f65646974223b733a333a22796573223b733a32313a227175657374696f6e5f67726f75705f64656c657465223b733a333a22796573223b733a31343a227175657374696f6e5f6c6576656c223b733a333a22796573223b733a31383a227175657374696f6e5f6c6576656c5f616464223b733a333a22796573223b733a31393a227175657374696f6e5f6c6576656c5f65646974223b733a333a22796573223b733a32313a227175657374696f6e5f6c6576656c5f64656c657465223b733a333a22796573223b733a31333a227175657374696f6e5f62616e6b223b733a333a22796573223b733a31373a227175657374696f6e5f62616e6b5f616464223b733a333a22796573223b733a31383a227175657374696f6e5f62616e6b5f65646974223b733a333a22796573223b733a32303a227175657374696f6e5f62616e6b5f64656c657465223b733a333a22796573223b733a31383a227175657374696f6e5f62616e6b5f76696577223b733a333a22796573223b733a31313a226f6e6c696e655f6578616d223b733a333a22796573223b733a31353a226f6e6c696e655f6578616d5f616464223b733a333a22796573223b733a31363a226f6e6c696e655f6578616d5f65646974223b733a333a22796573223b733a31383a226f6e6c696e655f6578616d5f64656c657465223b733a333a22796573223b733a31313a22696e737472756374696f6e223b733a333a22796573223b733a31353a22696e737472756374696f6e5f616464223b733a333a22796573223b733a31363a22696e737472756374696f6e5f65646974223b733a333a22796573223b733a31383a22696e737472756374696f6e5f64656c657465223b733a333a22796573223b733a31363a22696e737472756374696f6e5f76696577223b733a333a22796573223b733a31353a2273616c6172795f74656d706c617465223b733a333a22796573223b733a31393a2273616c6172795f74656d706c6174655f616464223b733a333a22796573223b733a32303a2273616c6172795f74656d706c6174655f65646974223b733a333a22796573223b733a32323a2273616c6172795f74656d706c6174655f64656c657465223b733a333a22796573223b733a32303a2273616c6172795f74656d706c6174655f76696577223b733a333a22796573223b733a31353a22686f75726c795f74656d706c617465223b733a333a22796573223b733a31393a22686f75726c795f74656d706c6174655f616464223b733a333a22796573223b733a32303a22686f75726c795f74656d706c6174655f65646974223b733a333a22796573223b733a32323a22686f75726c795f74656d706c6174655f64656c657465223b733a333a22796573223b733a31333a226d616e6167655f73616c617279223b733a333a22796573223b733a31373a226d616e6167655f73616c6172795f616464223b733a333a22796573223b733a31383a226d616e6167655f73616c6172795f65646974223b733a333a22796573223b733a32303a226d616e6167655f73616c6172795f64656c657465223b733a333a22796573223b733a31383a226d616e6167655f73616c6172795f76696577223b733a333a22796573223b733a31323a226d616b655f7061796d656e74223b733a333a22796573223b733a363a2276656e646f72223b733a333a22796573223b733a31303a2276656e646f725f616464223b733a333a22796573223b733a31313a2276656e646f725f65646974223b733a333a22796573223b733a31333a2276656e646f725f64656c657465223b733a333a22796573223b733a383a226c6f636174696f6e223b733a333a22796573223b733a31323a226c6f636174696f6e5f616464223b733a333a22796573223b733a31333a226c6f636174696f6e5f65646974223b733a333a22796573223b733a31353a226c6f636174696f6e5f64656c657465223b733a333a22796573223b733a31343a2261737365745f63617465676f7279223b733a333a22796573223b733a31383a2261737365745f63617465676f72795f616464223b733a333a22796573223b733a31393a2261737365745f63617465676f72795f65646974223b733a333a22796573223b733a32313a2261737365745f63617465676f72795f64656c657465223b733a333a22796573223b733a353a226173736574223b733a333a22796573223b733a393a2261737365745f616464223b733a333a22796573223b733a31303a2261737365745f65646974223b733a333a22796573223b733a31323a2261737365745f64656c657465223b733a333a22796573223b733a31303a2261737365745f76696577223b733a333a22796573223b733a31363a2261737365745f61737369676e6d656e74223b733a333a22796573223b733a32303a2261737365745f61737369676e6d656e745f616464223b733a333a22796573223b733a32313a2261737365745f61737369676e6d656e745f65646974223b733a333a22796573223b733a32333a2261737365745f61737369676e6d656e745f64656c657465223b733a333a22796573223b733a32313a2261737365745f61737369676e6d656e745f76696577223b733a333a22796573223b733a383a227075726368617365223b733a333a22796573223b733a31323a2270757263686173655f616464223b733a333a22796573223b733a31333a2270757263686173655f65646974223b733a333a22796573223b733a31353a2270757263686173655f64656c657465223b733a333a22796573223b733a31383a226163746976697469657363617465676f7279223b733a333a22796573223b733a32323a226163746976697469657363617465676f72795f616464223b733a333a22796573223b733a32333a226163746976697469657363617465676f72795f65646974223b733a333a22796573223b733a32353a226163746976697469657363617465676f72795f64656c657465223b733a333a22796573223b733a31303a2261637469766974696573223b733a333a22796573223b733a31343a22616374697669746965735f616464223b733a333a22796573223b733a31373a22616374697669746965735f64656c657465223b733a333a22796573223b733a393a226368696c6463617265223b733a333a22796573223b733a31333a226368696c64636172655f616464223b733a333a22796573223b733a31363a226368696c64636172655f64656c657465223b733a333a22796573223b733a373a226c6d656d626572223b733a333a22796573223b733a31313a226c6d656d6265725f616464223b733a333a22796573223b733a31323a226c6d656d6265725f65646974223b733a333a22796573223b733a31343a226c6d656d6265725f64656c657465223b733a333a22796573223b733a31323a226c6d656d6265725f76696577223b733a333a22796573223b733a343a22626f6f6b223b733a333a22796573223b733a383a22626f6f6b5f616464223b733a333a22796573223b733a393a22626f6f6b5f65646974223b733a333a22796573223b733a31313a22626f6f6b5f64656c657465223b733a333a22796573223b733a353a226973737565223b733a333a22796573223b733a393a2269737375655f616464223b733a333a22796573223b733a31303a2269737375655f65646974223b733a333a22796573223b733a31303a2269737375655f76696577223b733a333a22796573223b733a393a227472616e73706f7274223b733a333a22796573223b733a31333a227472616e73706f72745f616464223b733a333a22796573223b733a31343a227472616e73706f72745f65646974223b733a333a22796573223b733a31363a227472616e73706f72745f64656c657465223b733a333a22796573223b733a373a22746d656d626572223b733a333a22796573223b733a31313a22746d656d6265725f616464223b733a333a22796573223b733a31323a22746d656d6265725f65646974223b733a333a22796573223b733a31343a22746d656d6265725f64656c657465223b733a333a22796573223b733a31323a22746d656d6265725f76696577223b733a333a22796573223b733a363a22686f7374656c223b733a333a22796573223b733a31303a22686f7374656c5f616464223b733a333a22796573223b733a31313a22686f7374656c5f65646974223b733a333a22796573223b733a31333a22686f7374656c5f64656c657465223b733a333a22796573223b733a383a2263617465676f7279223b733a333a22796573223b733a31323a2263617465676f72795f616464223b733a333a22796573223b733a31333a2263617465676f72795f65646974223b733a333a22796573223b733a31353a2263617465676f72795f64656c657465223b733a333a22796573223b733a373a22686d656d626572223b733a333a22796573223b733a31313a22686d656d6265725f616464223b733a333a22796573223b733a31323a22686d656d6265725f65646974223b733a333a22796573223b733a31343a22686d656d6265725f64656c657465223b733a333a22796573223b733a31323a22686d656d6265725f76696577223b733a333a22796573223b733a383a226665657479706573223b733a333a22796573223b733a31323a2266656574797065735f616464223b733a333a22796573223b733a31333a2266656574797065735f65646974223b733a333a22796573223b733a31353a2266656574797065735f64656c657465223b733a333a22796573223b733a373a22696e766f696365223b733a333a22796573223b733a31313a22696e766f6963655f616464223b733a333a22796573223b733a31323a22696e766f6963655f65646974223b733a333a22796573223b733a31343a22696e766f6963655f64656c657465223b733a333a22796573223b733a31323a22696e766f6963655f76696577223b733a333a22796573223b733a31343a227061796d656e74686973746f7279223b733a333a22796573223b733a31393a227061796d656e74686973746f72795f65646974223b733a333a22796573223b733a32313a227061796d656e74686973746f72795f64656c657465223b733a333a22796573223b733a373a22657870656e7365223b733a333a22796573223b733a31313a22657870656e73655f616464223b733a333a22796573223b733a31323a22657870656e73655f65646974223b733a333a22796573223b733a31343a22657870656e73655f64656c657465223b733a333a22796573223b733a363a226e6f74696365223b733a333a22796573223b733a31303a226e6f746963655f616464223b733a333a22796573223b733a31313a226e6f746963655f65646974223b733a333a22796573223b733a31333a226e6f746963655f64656c657465223b733a333a22796573223b733a31313a226e6f746963655f76696577223b733a333a22796573223b733a353a226576656e74223b733a333a22796573223b733a393a226576656e745f616464223b733a333a22796573223b733a31303a226576656e745f65646974223b733a333a22796573223b733a31323a226576656e745f64656c657465223b733a333a22796573223b733a31303a226576656e745f76696577223b733a333a22796573223b733a373a22686f6c69646179223b733a333a22796573223b733a31313a22686f6c696461795f616464223b733a333a22796573223b733a31323a22686f6c696461795f65646974223b733a333a22796573223b733a31343a22686f6c696461795f64656c657465223b733a333a22796573223b733a31323a22686f6c696461795f76696577223b733a333a22796573223b733a363a227265706f7274223b733a333a22796573223b733a32303a227265706f72742f73747564656e747265706f7274223b733a333a22796573223b733a31383a227265706f72742f636c6173737265706f7274223b733a333a22796573223b733a32333a227265706f72742f617474656e64616e63657265706f7274223b733a333a22796573223b733a31383a227265706f72742f6365727469666963617465223b733a333a22796573223b733a31313a2276697369746f72696e666f223b733a333a22796573223b733a31383a2276697369746f72696e666f5f64656c657465223b733a333a22796573223b733a31363a2276697369746f72696e666f5f76696577223b733a333a22796573223b733a31303a227363686f6f6c79656172223b733a333a22796573223b733a31343a227363686f6f6c796561725f616464223b733a333a22796573223b733a31353a227363686f6f6c796561725f65646974223b733a333a22796573223b733a31373a227363686f6f6c796561725f64656c657465223b733a333a22796573223b733a31323a2273747564656e7467726f7570223b733a333a22796573223b733a31363a2273747564656e7467726f75705f616464223b733a333a22796573223b733a31373a2273747564656e7467726f75705f65646974223b733a333a22796573223b733a31393a2273747564656e7467726f75705f64656c657465223b733a333a22796573223b733a383a22636f6d706c61696e223b733a333a22796573223b733a31323a22636f6d706c61696e5f616464223b733a333a22796573223b733a31333a22636f6d706c61696e5f65646974223b733a333a22796573223b733a31353a22636f6d706c61696e5f64656c657465223b733a333a22796573223b733a31333a22636f6d706c61696e5f76696577223b733a333a22796573223b733a32303a2263657274696669636174655f74656d706c617465223b733a333a22796573223b733a32343a2263657274696669636174655f74656d706c6174655f616464223b733a333a22796573223b733a32353a2263657274696669636174655f74656d706c6174655f65646974223b733a333a22796573223b733a32373a2263657274696669636174655f74656d706c6174655f64656c657465223b733a333a22796573223b733a32353a2263657274696669636174655f74656d706c6174655f76696577223b733a333a22796573223b733a31313a2273797374656d61646d696e223b733a333a22796573223b733a31353a2273797374656d61646d696e5f616464223b733a333a22796573223b733a31363a2273797374656d61646d696e5f65646974223b733a333a22796573223b733a31383a2273797374656d61646d696e5f64656c657465223b733a333a22796573223b733a31363a2273797374656d61646d696e5f76696577223b733a333a22796573223b733a31333a22726573657470617373776f7264223b733a333a22796573223b733a31383a226d61696c616e64736d7374656d706c617465223b733a333a22796573223b733a32323a226d61696c616e64736d7374656d706c6174655f616464223b733a333a22796573223b733a32333a226d61696c616e64736d7374656d706c6174655f65646974223b733a333a22796573223b733a32353a226d61696c616e64736d7374656d706c6174655f64656c657465223b733a333a22796573223b733a32333a226d61696c616e64736d7374656d706c6174655f76696577223b733a333a22796573223b733a31303a2262756c6b696d706f7274223b733a333a22796573223b733a363a226261636b7570223b733a333a22796573223b733a383a227573657274797065223b733a333a22796573223b733a31323a2275736572747970655f616464223b733a333a22796573223b733a31333a2275736572747970655f65646974223b733a333a22796573223b733a31353a2275736572747970655f64656c657465223b733a333a22796573223b733a31303a227065726d697373696f6e223b733a333a22796573223b733a363a22757064617465223b733a333a22796573223b733a373a2273657474696e67223b733a333a22796573223b733a31323a2273657474696e675f65646974223b733a333a22796573223b733a31353a227061796d656e7473657474696e6773223b733a333a22796573223b733a31313a22736d7373657474696e6773223b733a333a22796573223b733a353a227061676573223b733a333a22796573223b733a393a2270616765735f616464223b733a333a22796573223b733a31303a2270616765735f65646974223b733a333a22796573223b733a31323a2270616765735f64656c657465223b733a333a22796573223b733a31363a2266726f6e74656e645f73657474696e67223b733a333a22796573223b733a393a2274616b655f6578616d223b733a333a22796573223b7d6572726f727c4e3b),
('5mcbsdjd09uc83s3fkh6omj19m4mdg44', '150.107.205.157', 1518178372, 0x5f5f63695f6c6173745f726567656e65726174657c693a313531383137383231353b6c616e677c733a373a22656e676c697368223b6c6f67696e7573657249447c733a313a2231223b6e616d657c733a353a2261646d696e223b656d61696c7c733a32303a227072616b61726b68617240676d61696c2e636f6d223b757365727479706549447c733a313a2231223b75736572747970657c733a353a2241646d696e223b757365726e616d657c733a353a2261646d696e223b70686f746f7c733a31313a2264656661756c742e706e67223b64656661756c747363686f6f6c7965617249447c733a313a2231223b6c6f67676564696e7c623a313b6765745f7065726d697373696f6e7c623a313b6d61737465725f7065726d697373696f6e5f7365747c613a3237393a7b733a393a2264617368626f617264223b733a333a22796573223b733a373a2273747564656e74223b733a333a22796573223b733a31313a2273747564656e745f616464223b733a333a22796573223b733a31323a2273747564656e745f65646974223b733a333a22796573223b733a31343a2273747564656e745f64656c657465223b733a333a22796573223b733a31323a2273747564656e745f76696577223b733a333a22796573223b733a373a22706172656e7473223b733a333a22796573223b733a31313a22706172656e74735f616464223b733a333a22796573223b733a31323a22706172656e74735f65646974223b733a333a22796573223b733a31343a22706172656e74735f64656c657465223b733a333a22796573223b733a31323a22706172656e74735f76696577223b733a333a22796573223b733a373a2274656163686572223b733a333a22796573223b733a31313a22746561636865725f616464223b733a333a22796573223b733a31323a22746561636865725f65646974223b733a333a22796573223b733a31343a22746561636865725f64656c657465223b733a333a22796573223b733a31323a22746561636865725f76696577223b733a333a22796573223b733a343a2275736572223b733a333a22796573223b733a383a22757365725f616464223b733a333a22796573223b733a393a22757365725f65646974223b733a333a22796573223b733a31313a22757365725f64656c657465223b733a333a22796573223b733a393a22757365725f76696577223b733a333a22796573223b733a373a22636c6173736573223b733a333a22796573223b733a31313a22636c61737365735f616464223b733a333a22796573223b733a31323a22636c61737365735f65646974223b733a333a22796573223b733a31343a22636c61737365735f64656c657465223b733a333a22796573223b733a373a227375626a656374223b733a333a22796573223b733a31313a227375626a6563745f616464223b733a333a22796573223b733a31323a227375626a6563745f65646974223b733a333a22796573223b733a31343a227375626a6563745f64656c657465223b733a333a22796573223b733a373a2273656374696f6e223b733a333a22796573223b733a31313a2273656374696f6e5f616464223b733a333a22796573223b733a31323a2273656374696f6e5f65646974223b733a333a22796573223b733a31353a2273656d65737465725f64656c657465223b733a333a22796573223b733a31343a2273656374696f6e5f64656c657465223b733a333a22796573223b733a383a2273796c6c61627573223b733a333a22796573223b733a31323a2273796c6c616275735f616464223b733a333a22796573223b733a31333a2273796c6c616275735f65646974223b733a333a22796573223b733a31353a2273796c6c616275735f64656c657465223b733a333a22796573223b733a31303a2261737369676e6d656e74223b733a333a22796573223b733a31343a2261737369676e6d656e745f616464223b733a333a22796573223b733a31353a2261737369676e6d656e745f65646974223b733a333a22796573223b733a31373a2261737369676e6d656e745f64656c657465223b733a333a22796573223b733a31353a2261737369676e6d656e745f76696577223b733a333a22796573223b733a373a22726f7574696e65223b733a333a22796573223b733a31313a22726f7574696e655f616464223b733a333a22796573223b733a31323a22726f7574696e655f65646974223b733a333a22796573223b733a31343a22726f7574696e655f64656c657465223b733a333a22796573223b733a31313a2273617474656e64616e6365223b733a333a22796573223b733a31353a2273617474656e64616e63655f616464223b733a333a22796573223b733a31363a2273617474656e64616e63655f76696577223b733a333a22796573223b733a31313a2274617474656e64616e6365223b733a333a22796573223b733a31353a2274617474656e64616e63655f616464223b733a333a22796573223b733a31363a2274617474656e64616e63655f76696577223b733a333a22796573223b733a31313a2275617474656e64616e6365223b733a333a22796573223b733a31353a2275617474656e64616e63655f616464223b733a333a22796573223b733a31363a2275617474656e64616e63655f76696577223b733a333a22796573223b733a343a226578616d223b733a333a22796573223b733a383a226578616d5f616464223b733a333a22796573223b733a393a226578616d5f65646974223b733a333a22796573223b733a31313a226578616d5f64656c657465223b733a333a22796573223b733a31323a226578616d7363686564756c65223b733a333a22796573223b733a31363a226578616d7363686564756c655f616464223b733a333a22796573223b733a31373a226578616d7363686564756c655f65646974223b733a333a22796573223b733a31393a226578616d7363686564756c655f64656c657465223b733a333a22796573223b733a353a226772616465223b733a333a22796573223b733a393a2267726164655f616464223b733a333a22796573223b733a31303a2267726164655f65646974223b733a333a22796573223b733a31323a2267726164655f64656c657465223b733a333a22796573223b733a31313a2265617474656e64616e6365223b733a333a22796573223b733a31353a2265617474656e64616e63655f616464223b733a333a22796573223b733a343a226d61726b223b733a333a22796573223b733a383a226d61726b5f616464223b733a333a22796573223b733a393a226d61726b5f76696577223b733a333a22796573223b733a31343a226d61726b70657263656e74616765223b733a333a22796573223b733a31383a226d61726b70657263656e746167655f616464223b733a333a22796573223b733a31393a226d61726b70657263656e746167655f65646974223b733a333a22796573223b733a32313a226d61726b70657263656e746167655f64656c657465223b733a333a22796573223b733a393a2270726f6d6f74696f6e223b733a333a22796573223b733a31323a22636f6e766572736174696f6e223b733a333a22796573223b733a353a226d65646961223b733a333a22796573223b733a393a226d656469615f616464223b733a333a22796573223b733a31323a226d656469615f64656c657465223b733a333a22796573223b733a31303a226d61696c616e64736d73223b733a333a22796573223b733a31343a226d61696c616e64736d735f616464223b733a333a22796573223b733a31353a226d61696c616e64736d735f76696577223b733a333a22796573223b733a31343a227175657374696f6e5f67726f7570223b733a333a22796573223b733a31383a227175657374696f6e5f67726f75705f616464223b733a333a22796573223b733a31393a227175657374696f6e5f67726f75705f65646974223b733a333a22796573223b733a32313a227175657374696f6e5f67726f75705f64656c657465223b733a333a22796573223b733a31343a227175657374696f6e5f6c6576656c223b733a333a22796573223b733a31383a227175657374696f6e5f6c6576656c5f616464223b733a333a22796573223b733a31393a227175657374696f6e5f6c6576656c5f65646974223b733a333a22796573223b733a32313a227175657374696f6e5f6c6576656c5f64656c657465223b733a333a22796573223b733a31333a227175657374696f6e5f62616e6b223b733a333a22796573223b733a31373a227175657374696f6e5f62616e6b5f616464223b733a333a22796573223b733a31383a227175657374696f6e5f62616e6b5f65646974223b733a333a22796573223b733a32303a227175657374696f6e5f62616e6b5f64656c657465223b733a333a22796573223b733a31383a227175657374696f6e5f62616e6b5f76696577223b733a333a22796573223b733a31313a226f6e6c696e655f6578616d223b733a333a22796573223b733a31353a226f6e6c696e655f6578616d5f616464223b733a333a22796573223b733a31363a226f6e6c696e655f6578616d5f65646974223b733a333a22796573223b733a31383a226f6e6c696e655f6578616d5f64656c657465223b733a333a22796573223b733a31313a22696e737472756374696f6e223b733a333a22796573223b733a31353a22696e737472756374696f6e5f616464223b733a333a22796573223b733a31363a22696e737472756374696f6e5f65646974223b733a333a22796573223b733a31383a22696e737472756374696f6e5f64656c657465223b733a333a22796573223b733a31363a22696e737472756374696f6e5f76696577223b733a333a22796573223b733a31353a2273616c6172795f74656d706c617465223b733a333a22796573223b733a31393a2273616c6172795f74656d706c6174655f616464223b733a333a22796573223b733a32303a2273616c6172795f74656d706c6174655f65646974223b733a333a22796573223b733a32323a2273616c6172795f74656d706c6174655f64656c657465223b733a333a22796573223b733a32303a2273616c6172795f74656d706c6174655f76696577223b733a333a22796573223b733a31353a22686f75726c795f74656d706c617465223b733a333a22796573223b733a31393a22686f75726c795f74656d706c6174655f616464223b733a333a22796573223b733a32303a22686f75726c795f74656d706c6174655f65646974223b733a333a22796573223b733a32323a22686f75726c795f74656d706c6174655f64656c657465223b733a333a22796573223b733a31333a226d616e6167655f73616c617279223b733a333a22796573223b733a31373a226d616e6167655f73616c6172795f616464223b733a333a22796573223b733a31383a226d616e6167655f73616c6172795f65646974223b733a333a22796573223b733a32303a226d616e6167655f73616c6172795f64656c657465223b733a333a22796573223b733a31383a226d616e6167655f73616c6172795f76696577223b733a333a22796573223b733a31323a226d616b655f7061796d656e74223b733a333a22796573223b733a363a2276656e646f72223b733a333a22796573223b733a31303a2276656e646f725f616464223b733a333a22796573223b733a31313a2276656e646f725f65646974223b733a333a22796573223b733a31333a2276656e646f725f64656c657465223b733a333a22796573223b733a383a226c6f636174696f6e223b733a333a22796573223b733a31323a226c6f636174696f6e5f616464223b733a333a22796573223b733a31333a226c6f636174696f6e5f65646974223b733a333a22796573223b733a31353a226c6f636174696f6e5f64656c657465223b733a333a22796573223b733a31343a2261737365745f63617465676f7279223b733a333a22796573223b733a31383a2261737365745f63617465676f72795f616464223b733a333a22796573223b733a31393a2261737365745f63617465676f72795f65646974223b733a333a22796573223b733a32313a2261737365745f63617465676f72795f64656c657465223b733a333a22796573223b733a353a226173736574223b733a333a22796573223b733a393a2261737365745f616464223b733a333a22796573223b733a31303a2261737365745f65646974223b733a333a22796573223b733a31323a2261737365745f64656c657465223b733a333a22796573223b733a31303a2261737365745f76696577223b733a333a22796573223b733a31363a2261737365745f61737369676e6d656e74223b733a333a22796573223b733a32303a2261737365745f61737369676e6d656e745f616464223b733a333a22796573223b733a32313a2261737365745f61737369676e6d656e745f65646974223b733a333a22796573223b733a32333a2261737365745f61737369676e6d656e745f64656c657465223b733a333a22796573223b733a32313a2261737365745f61737369676e6d656e745f76696577223b733a333a22796573223b733a383a227075726368617365223b733a333a22796573223b733a31323a2270757263686173655f616464223b733a333a22796573223b733a31333a2270757263686173655f65646974223b733a333a22796573223b733a31353a2270757263686173655f64656c657465223b733a333a22796573223b733a31383a226163746976697469657363617465676f7279223b733a333a22796573223b733a32323a226163746976697469657363617465676f72795f616464223b733a333a22796573223b733a32333a226163746976697469657363617465676f72795f65646974223b733a333a22796573223b733a32353a226163746976697469657363617465676f72795f64656c657465223b733a333a22796573223b733a31303a2261637469766974696573223b733a333a22796573223b733a31343a22616374697669746965735f616464223b733a333a22796573223b733a31373a22616374697669746965735f64656c657465223b733a333a22796573223b733a393a226368696c6463617265223b733a333a22796573223b733a31333a226368696c64636172655f616464223b733a333a22796573223b733a31363a226368696c64636172655f64656c657465223b733a333a22796573223b733a373a226c6d656d626572223b733a333a22796573223b733a31313a226c6d656d6265725f616464223b733a333a22796573223b733a31323a226c6d656d6265725f65646974223b733a333a22796573223b733a31343a226c6d656d6265725f64656c657465223b733a333a22796573223b733a31323a226c6d656d6265725f76696577223b733a333a22796573223b733a343a22626f6f6b223b733a333a22796573223b733a383a22626f6f6b5f616464223b733a333a22796573223b733a393a22626f6f6b5f65646974223b733a333a22796573223b733a31313a22626f6f6b5f64656c657465223b733a333a22796573223b733a353a226973737565223b733a333a22796573223b733a393a2269737375655f616464223b733a333a22796573223b733a31303a2269737375655f65646974223b733a333a22796573223b733a31303a2269737375655f76696577223b733a333a22796573223b733a393a227472616e73706f7274223b733a333a22796573223b733a31333a227472616e73706f72745f616464223b733a333a22796573223b733a31343a227472616e73706f72745f65646974223b733a333a22796573223b733a31363a227472616e73706f72745f64656c657465223b733a333a22796573223b733a373a22746d656d626572223b733a333a22796573223b733a31313a22746d656d6265725f616464223b733a333a22796573223b733a31323a22746d656d6265725f65646974223b733a333a22796573223b733a31343a22746d656d6265725f64656c657465223b733a333a22796573223b733a31323a22746d656d6265725f76696577223b733a333a22796573223b733a363a22686f7374656c223b733a333a22796573223b733a31303a22686f7374656c5f616464223b733a333a22796573223b733a31313a22686f7374656c5f65646974223b733a333a22796573223b733a31333a22686f7374656c5f64656c657465223b733a333a22796573223b733a383a2263617465676f7279223b733a333a22796573223b733a31323a2263617465676f72795f616464223b733a333a22796573223b733a31333a2263617465676f72795f65646974223b733a333a22796573223b733a31353a2263617465676f72795f64656c657465223b733a333a22796573223b733a373a22686d656d626572223b733a333a22796573223b733a31313a22686d656d6265725f616464223b733a333a22796573223b733a31323a22686d656d6265725f65646974223b733a333a22796573223b733a31343a22686d656d6265725f64656c657465223b733a333a22796573223b733a31323a22686d656d6265725f76696577223b733a333a22796573223b733a383a226665657479706573223b733a333a22796573223b733a31323a2266656574797065735f616464223b733a333a22796573223b733a31333a2266656574797065735f65646974223b733a333a22796573223b733a31353a2266656574797065735f64656c657465223b733a333a22796573223b733a373a22696e766f696365223b733a333a22796573223b733a31313a22696e766f6963655f616464223b733a333a22796573223b733a31323a22696e766f6963655f65646974223b733a333a22796573223b733a31343a22696e766f6963655f64656c657465223b733a333a22796573223b733a31323a22696e766f6963655f76696577223b733a333a22796573223b733a31343a227061796d656e74686973746f7279223b733a333a22796573223b733a31393a227061796d656e74686973746f72795f65646974223b733a333a22796573223b733a32313a227061796d656e74686973746f72795f64656c657465223b733a333a22796573223b733a373a22657870656e7365223b733a333a22796573223b733a31313a22657870656e73655f616464223b733a333a22796573223b733a31323a22657870656e73655f65646974223b733a333a22796573223b733a31343a22657870656e73655f64656c657465223b733a333a22796573223b733a363a226e6f74696365223b733a333a22796573223b733a31303a226e6f746963655f616464223b733a333a22796573223b733a31313a226e6f746963655f65646974223b733a333a22796573223b733a31333a226e6f746963655f64656c657465223b733a333a22796573223b733a31313a226e6f746963655f76696577223b733a333a22796573223b733a353a226576656e74223b733a333a22796573223b733a393a226576656e745f616464223b733a333a22796573223b733a31303a226576656e745f65646974223b733a333a22796573223b733a31323a226576656e745f64656c657465223b733a333a22796573223b733a31303a226576656e745f76696577223b733a333a22796573223b733a373a22686f6c69646179223b733a333a22796573223b733a31313a22686f6c696461795f616464223b733a333a22796573223b733a31323a22686f6c696461795f65646974223b733a333a22796573223b733a31343a22686f6c696461795f64656c657465223b733a333a22796573223b733a31323a22686f6c696461795f76696577223b733a333a22796573223b733a363a227265706f7274223b733a333a22796573223b733a32303a227265706f72742f73747564656e747265706f7274223b733a333a22796573223b733a31383a227265706f72742f636c6173737265706f7274223b733a333a22796573223b733a32333a227265706f72742f617474656e64616e63657265706f7274223b733a333a22796573223b733a31383a227265706f72742f6365727469666963617465223b733a333a22796573223b733a31313a2276697369746f72696e666f223b733a333a22796573223b733a31383a2276697369746f72696e666f5f64656c657465223b733a333a22796573223b733a31363a2276697369746f72696e666f5f76696577223b733a333a22796573223b733a31303a227363686f6f6c79656172223b733a333a22796573223b733a31343a227363686f6f6c796561725f616464223b733a333a22796573223b733a31353a227363686f6f6c796561725f65646974223b733a333a22796573223b733a31373a227363686f6f6c796561725f64656c657465223b733a333a22796573223b733a31323a2273747564656e7467726f7570223b733a333a22796573223b733a31363a2273747564656e7467726f75705f616464223b733a333a22796573223b733a31373a2273747564656e7467726f75705f65646974223b733a333a22796573223b733a31393a2273747564656e7467726f75705f64656c657465223b733a333a22796573223b733a383a22636f6d706c61696e223b733a333a22796573223b733a31323a22636f6d706c61696e5f616464223b733a333a22796573223b733a31333a22636f6d706c61696e5f65646974223b733a333a22796573223b733a31353a22636f6d706c61696e5f64656c657465223b733a333a22796573223b733a31333a22636f6d706c61696e5f76696577223b733a333a22796573223b733a32303a2263657274696669636174655f74656d706c617465223b733a333a22796573223b733a32343a2263657274696669636174655f74656d706c6174655f616464223b733a333a22796573223b733a32353a2263657274696669636174655f74656d706c6174655f65646974223b733a333a22796573223b733a32373a2263657274696669636174655f74656d706c6174655f64656c657465223b733a333a22796573223b733a32353a2263657274696669636174655f74656d706c6174655f76696577223b733a333a22796573223b733a31313a2273797374656d61646d696e223b733a333a22796573223b733a31353a2273797374656d61646d696e5f616464223b733a333a22796573223b733a31363a2273797374656d61646d696e5f65646974223b733a333a22796573223b733a31383a2273797374656d61646d696e5f64656c657465223b733a333a22796573223b733a31363a2273797374656d61646d696e5f76696577223b733a333a22796573223b733a31333a22726573657470617373776f7264223b733a333a22796573223b733a31383a226d61696c616e64736d7374656d706c617465223b733a333a22796573223b733a32323a226d61696c616e64736d7374656d706c6174655f616464223b733a333a22796573223b733a32333a226d61696c616e64736d7374656d706c6174655f65646974223b733a333a22796573223b733a32353a226d61696c616e64736d7374656d706c6174655f64656c657465223b733a333a22796573223b733a32333a226d61696c616e64736d7374656d706c6174655f76696577223b733a333a22796573223b733a31303a2262756c6b696d706f7274223b733a333a22796573223b733a363a226261636b7570223b733a333a22796573223b733a383a227573657274797065223b733a333a22796573223b733a31323a2275736572747970655f616464223b733a333a22796573223b733a31333a2275736572747970655f65646974223b733a333a22796573223b733a31353a2275736572747970655f64656c657465223b733a333a22796573223b733a31303a227065726d697373696f6e223b733a333a22796573223b733a363a22757064617465223b733a333a22796573223b733a373a2273657474696e67223b733a333a22796573223b733a31323a2273657474696e675f65646974223b733a333a22796573223b733a31353a227061796d656e7473657474696e6773223b733a333a22796573223b733a31313a22736d7373657474696e6773223b733a333a22796573223b733a353a227061676573223b733a333a22796573223b733a393a2270616765735f616464223b733a333a22796573223b733a31303a2270616765735f65646974223b733a333a22796573223b733a31323a2270616765735f64656c657465223b733a333a22796573223b733a31363a2266726f6e74656e645f73657474696e67223b733a333a22796573223b733a393a2274616b655f6578616d223b733a333a22796573223b7d6572726f727c4e3b),
('h0rockaai0g2nnf5b0v9idj74ad8cgg2', '183.87.60.202', 1518178535, 0x5f5f63695f6c6173745f726567656e65726174657c693a313531383137383533353b);
INSERT INTO `school_sessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES
('l1228oivi5ifq141om4bdta85vo87j0f', '150.107.205.157', 1518178666, 0x5f5f63695f6c6173745f726567656e65726174657c693a313531383137383536303b6c616e677c733a373a22656e676c697368223b6c6f67696e7573657249447c733a313a2231223b6e616d657c733a353a2261646d696e223b656d61696c7c733a32303a227072616b61726b68617240676d61696c2e636f6d223b757365727479706549447c733a313a2231223b75736572747970657c733a353a2241646d696e223b757365726e616d657c733a353a2261646d696e223b70686f746f7c733a31313a2264656661756c742e706e67223b64656661756c747363686f6f6c7965617249447c733a313a2231223b6c6f67676564696e7c623a313b6765745f7065726d697373696f6e7c623a313b6d61737465725f7065726d697373696f6e5f7365747c613a3237393a7b733a393a2264617368626f617264223b733a333a22796573223b733a373a2273747564656e74223b733a333a22796573223b733a31313a2273747564656e745f616464223b733a333a22796573223b733a31323a2273747564656e745f65646974223b733a333a22796573223b733a31343a2273747564656e745f64656c657465223b733a333a22796573223b733a31323a2273747564656e745f76696577223b733a333a22796573223b733a373a22706172656e7473223b733a333a22796573223b733a31313a22706172656e74735f616464223b733a333a22796573223b733a31323a22706172656e74735f65646974223b733a333a22796573223b733a31343a22706172656e74735f64656c657465223b733a333a22796573223b733a31323a22706172656e74735f76696577223b733a333a22796573223b733a373a2274656163686572223b733a333a22796573223b733a31313a22746561636865725f616464223b733a333a22796573223b733a31323a22746561636865725f65646974223b733a333a22796573223b733a31343a22746561636865725f64656c657465223b733a333a22796573223b733a31323a22746561636865725f76696577223b733a333a22796573223b733a343a2275736572223b733a333a22796573223b733a383a22757365725f616464223b733a333a22796573223b733a393a22757365725f65646974223b733a333a22796573223b733a31313a22757365725f64656c657465223b733a333a22796573223b733a393a22757365725f76696577223b733a333a22796573223b733a373a22636c6173736573223b733a333a22796573223b733a31313a22636c61737365735f616464223b733a333a22796573223b733a31323a22636c61737365735f65646974223b733a333a22796573223b733a31343a22636c61737365735f64656c657465223b733a333a22796573223b733a373a227375626a656374223b733a333a22796573223b733a31313a227375626a6563745f616464223b733a333a22796573223b733a31323a227375626a6563745f65646974223b733a333a22796573223b733a31343a227375626a6563745f64656c657465223b733a333a22796573223b733a373a2273656374696f6e223b733a333a22796573223b733a31313a2273656374696f6e5f616464223b733a333a22796573223b733a31323a2273656374696f6e5f65646974223b733a333a22796573223b733a31353a2273656d65737465725f64656c657465223b733a333a22796573223b733a31343a2273656374696f6e5f64656c657465223b733a333a22796573223b733a383a2273796c6c61627573223b733a333a22796573223b733a31323a2273796c6c616275735f616464223b733a333a22796573223b733a31333a2273796c6c616275735f65646974223b733a333a22796573223b733a31353a2273796c6c616275735f64656c657465223b733a333a22796573223b733a31303a2261737369676e6d656e74223b733a333a22796573223b733a31343a2261737369676e6d656e745f616464223b733a333a22796573223b733a31353a2261737369676e6d656e745f65646974223b733a333a22796573223b733a31373a2261737369676e6d656e745f64656c657465223b733a333a22796573223b733a31353a2261737369676e6d656e745f76696577223b733a333a22796573223b733a373a22726f7574696e65223b733a333a22796573223b733a31313a22726f7574696e655f616464223b733a333a22796573223b733a31323a22726f7574696e655f65646974223b733a333a22796573223b733a31343a22726f7574696e655f64656c657465223b733a333a22796573223b733a31313a2273617474656e64616e6365223b733a333a22796573223b733a31353a2273617474656e64616e63655f616464223b733a333a22796573223b733a31363a2273617474656e64616e63655f76696577223b733a333a22796573223b733a31313a2274617474656e64616e6365223b733a333a22796573223b733a31353a2274617474656e64616e63655f616464223b733a333a22796573223b733a31363a2274617474656e64616e63655f76696577223b733a333a22796573223b733a31313a2275617474656e64616e6365223b733a333a22796573223b733a31353a2275617474656e64616e63655f616464223b733a333a22796573223b733a31363a2275617474656e64616e63655f76696577223b733a333a22796573223b733a343a226578616d223b733a333a22796573223b733a383a226578616d5f616464223b733a333a22796573223b733a393a226578616d5f65646974223b733a333a22796573223b733a31313a226578616d5f64656c657465223b733a333a22796573223b733a31323a226578616d7363686564756c65223b733a333a22796573223b733a31363a226578616d7363686564756c655f616464223b733a333a22796573223b733a31373a226578616d7363686564756c655f65646974223b733a333a22796573223b733a31393a226578616d7363686564756c655f64656c657465223b733a333a22796573223b733a353a226772616465223b733a333a22796573223b733a393a2267726164655f616464223b733a333a22796573223b733a31303a2267726164655f65646974223b733a333a22796573223b733a31323a2267726164655f64656c657465223b733a333a22796573223b733a31313a2265617474656e64616e6365223b733a333a22796573223b733a31353a2265617474656e64616e63655f616464223b733a333a22796573223b733a343a226d61726b223b733a333a22796573223b733a383a226d61726b5f616464223b733a333a22796573223b733a393a226d61726b5f76696577223b733a333a22796573223b733a31343a226d61726b70657263656e74616765223b733a333a22796573223b733a31383a226d61726b70657263656e746167655f616464223b733a333a22796573223b733a31393a226d61726b70657263656e746167655f65646974223b733a333a22796573223b733a32313a226d61726b70657263656e746167655f64656c657465223b733a333a22796573223b733a393a2270726f6d6f74696f6e223b733a333a22796573223b733a31323a22636f6e766572736174696f6e223b733a333a22796573223b733a353a226d65646961223b733a333a22796573223b733a393a226d656469615f616464223b733a333a22796573223b733a31323a226d656469615f64656c657465223b733a333a22796573223b733a31303a226d61696c616e64736d73223b733a333a22796573223b733a31343a226d61696c616e64736d735f616464223b733a333a22796573223b733a31353a226d61696c616e64736d735f76696577223b733a333a22796573223b733a31343a227175657374696f6e5f67726f7570223b733a333a22796573223b733a31383a227175657374696f6e5f67726f75705f616464223b733a333a22796573223b733a31393a227175657374696f6e5f67726f75705f65646974223b733a333a22796573223b733a32313a227175657374696f6e5f67726f75705f64656c657465223b733a333a22796573223b733a31343a227175657374696f6e5f6c6576656c223b733a333a22796573223b733a31383a227175657374696f6e5f6c6576656c5f616464223b733a333a22796573223b733a31393a227175657374696f6e5f6c6576656c5f65646974223b733a333a22796573223b733a32313a227175657374696f6e5f6c6576656c5f64656c657465223b733a333a22796573223b733a31333a227175657374696f6e5f62616e6b223b733a333a22796573223b733a31373a227175657374696f6e5f62616e6b5f616464223b733a333a22796573223b733a31383a227175657374696f6e5f62616e6b5f65646974223b733a333a22796573223b733a32303a227175657374696f6e5f62616e6b5f64656c657465223b733a333a22796573223b733a31383a227175657374696f6e5f62616e6b5f76696577223b733a333a22796573223b733a31313a226f6e6c696e655f6578616d223b733a333a22796573223b733a31353a226f6e6c696e655f6578616d5f616464223b733a333a22796573223b733a31363a226f6e6c696e655f6578616d5f65646974223b733a333a22796573223b733a31383a226f6e6c696e655f6578616d5f64656c657465223b733a333a22796573223b733a31313a22696e737472756374696f6e223b733a333a22796573223b733a31353a22696e737472756374696f6e5f616464223b733a333a22796573223b733a31363a22696e737472756374696f6e5f65646974223b733a333a22796573223b733a31383a22696e737472756374696f6e5f64656c657465223b733a333a22796573223b733a31363a22696e737472756374696f6e5f76696577223b733a333a22796573223b733a31353a2273616c6172795f74656d706c617465223b733a333a22796573223b733a31393a2273616c6172795f74656d706c6174655f616464223b733a333a22796573223b733a32303a2273616c6172795f74656d706c6174655f65646974223b733a333a22796573223b733a32323a2273616c6172795f74656d706c6174655f64656c657465223b733a333a22796573223b733a32303a2273616c6172795f74656d706c6174655f76696577223b733a333a22796573223b733a31353a22686f75726c795f74656d706c617465223b733a333a22796573223b733a31393a22686f75726c795f74656d706c6174655f616464223b733a333a22796573223b733a32303a22686f75726c795f74656d706c6174655f65646974223b733a333a22796573223b733a32323a22686f75726c795f74656d706c6174655f64656c657465223b733a333a22796573223b733a31333a226d616e6167655f73616c617279223b733a333a22796573223b733a31373a226d616e6167655f73616c6172795f616464223b733a333a22796573223b733a31383a226d616e6167655f73616c6172795f65646974223b733a333a22796573223b733a32303a226d616e6167655f73616c6172795f64656c657465223b733a333a22796573223b733a31383a226d616e6167655f73616c6172795f76696577223b733a333a22796573223b733a31323a226d616b655f7061796d656e74223b733a333a22796573223b733a363a2276656e646f72223b733a333a22796573223b733a31303a2276656e646f725f616464223b733a333a22796573223b733a31313a2276656e646f725f65646974223b733a333a22796573223b733a31333a2276656e646f725f64656c657465223b733a333a22796573223b733a383a226c6f636174696f6e223b733a333a22796573223b733a31323a226c6f636174696f6e5f616464223b733a333a22796573223b733a31333a226c6f636174696f6e5f65646974223b733a333a22796573223b733a31353a226c6f636174696f6e5f64656c657465223b733a333a22796573223b733a31343a2261737365745f63617465676f7279223b733a333a22796573223b733a31383a2261737365745f63617465676f72795f616464223b733a333a22796573223b733a31393a2261737365745f63617465676f72795f65646974223b733a333a22796573223b733a32313a2261737365745f63617465676f72795f64656c657465223b733a333a22796573223b733a353a226173736574223b733a333a22796573223b733a393a2261737365745f616464223b733a333a22796573223b733a31303a2261737365745f65646974223b733a333a22796573223b733a31323a2261737365745f64656c657465223b733a333a22796573223b733a31303a2261737365745f76696577223b733a333a22796573223b733a31363a2261737365745f61737369676e6d656e74223b733a333a22796573223b733a32303a2261737365745f61737369676e6d656e745f616464223b733a333a22796573223b733a32313a2261737365745f61737369676e6d656e745f65646974223b733a333a22796573223b733a32333a2261737365745f61737369676e6d656e745f64656c657465223b733a333a22796573223b733a32313a2261737365745f61737369676e6d656e745f76696577223b733a333a22796573223b733a383a227075726368617365223b733a333a22796573223b733a31323a2270757263686173655f616464223b733a333a22796573223b733a31333a2270757263686173655f65646974223b733a333a22796573223b733a31353a2270757263686173655f64656c657465223b733a333a22796573223b733a31383a226163746976697469657363617465676f7279223b733a333a22796573223b733a32323a226163746976697469657363617465676f72795f616464223b733a333a22796573223b733a32333a226163746976697469657363617465676f72795f65646974223b733a333a22796573223b733a32353a226163746976697469657363617465676f72795f64656c657465223b733a333a22796573223b733a31303a2261637469766974696573223b733a333a22796573223b733a31343a22616374697669746965735f616464223b733a333a22796573223b733a31373a22616374697669746965735f64656c657465223b733a333a22796573223b733a393a226368696c6463617265223b733a333a22796573223b733a31333a226368696c64636172655f616464223b733a333a22796573223b733a31363a226368696c64636172655f64656c657465223b733a333a22796573223b733a373a226c6d656d626572223b733a333a22796573223b733a31313a226c6d656d6265725f616464223b733a333a22796573223b733a31323a226c6d656d6265725f65646974223b733a333a22796573223b733a31343a226c6d656d6265725f64656c657465223b733a333a22796573223b733a31323a226c6d656d6265725f76696577223b733a333a22796573223b733a343a22626f6f6b223b733a333a22796573223b733a383a22626f6f6b5f616464223b733a333a22796573223b733a393a22626f6f6b5f65646974223b733a333a22796573223b733a31313a22626f6f6b5f64656c657465223b733a333a22796573223b733a353a226973737565223b733a333a22796573223b733a393a2269737375655f616464223b733a333a22796573223b733a31303a2269737375655f65646974223b733a333a22796573223b733a31303a2269737375655f76696577223b733a333a22796573223b733a393a227472616e73706f7274223b733a333a22796573223b733a31333a227472616e73706f72745f616464223b733a333a22796573223b733a31343a227472616e73706f72745f65646974223b733a333a22796573223b733a31363a227472616e73706f72745f64656c657465223b733a333a22796573223b733a373a22746d656d626572223b733a333a22796573223b733a31313a22746d656d6265725f616464223b733a333a22796573223b733a31323a22746d656d6265725f65646974223b733a333a22796573223b733a31343a22746d656d6265725f64656c657465223b733a333a22796573223b733a31323a22746d656d6265725f76696577223b733a333a22796573223b733a363a22686f7374656c223b733a333a22796573223b733a31303a22686f7374656c5f616464223b733a333a22796573223b733a31313a22686f7374656c5f65646974223b733a333a22796573223b733a31333a22686f7374656c5f64656c657465223b733a333a22796573223b733a383a2263617465676f7279223b733a333a22796573223b733a31323a2263617465676f72795f616464223b733a333a22796573223b733a31333a2263617465676f72795f65646974223b733a333a22796573223b733a31353a2263617465676f72795f64656c657465223b733a333a22796573223b733a373a22686d656d626572223b733a333a22796573223b733a31313a22686d656d6265725f616464223b733a333a22796573223b733a31323a22686d656d6265725f65646974223b733a333a22796573223b733a31343a22686d656d6265725f64656c657465223b733a333a22796573223b733a31323a22686d656d6265725f76696577223b733a333a22796573223b733a383a226665657479706573223b733a333a22796573223b733a31323a2266656574797065735f616464223b733a333a22796573223b733a31333a2266656574797065735f65646974223b733a333a22796573223b733a31353a2266656574797065735f64656c657465223b733a333a22796573223b733a373a22696e766f696365223b733a333a22796573223b733a31313a22696e766f6963655f616464223b733a333a22796573223b733a31323a22696e766f6963655f65646974223b733a333a22796573223b733a31343a22696e766f6963655f64656c657465223b733a333a22796573223b733a31323a22696e766f6963655f76696577223b733a333a22796573223b733a31343a227061796d656e74686973746f7279223b733a333a22796573223b733a31393a227061796d656e74686973746f72795f65646974223b733a333a22796573223b733a32313a227061796d656e74686973746f72795f64656c657465223b733a333a22796573223b733a373a22657870656e7365223b733a333a22796573223b733a31313a22657870656e73655f616464223b733a333a22796573223b733a31323a22657870656e73655f65646974223b733a333a22796573223b733a31343a22657870656e73655f64656c657465223b733a333a22796573223b733a363a226e6f74696365223b733a333a22796573223b733a31303a226e6f746963655f616464223b733a333a22796573223b733a31313a226e6f746963655f65646974223b733a333a22796573223b733a31333a226e6f746963655f64656c657465223b733a333a22796573223b733a31313a226e6f746963655f76696577223b733a333a22796573223b733a353a226576656e74223b733a333a22796573223b733a393a226576656e745f616464223b733a333a22796573223b733a31303a226576656e745f65646974223b733a333a22796573223b733a31323a226576656e745f64656c657465223b733a333a22796573223b733a31303a226576656e745f76696577223b733a333a22796573223b733a373a22686f6c69646179223b733a333a22796573223b733a31313a22686f6c696461795f616464223b733a333a22796573223b733a31323a22686f6c696461795f65646974223b733a333a22796573223b733a31343a22686f6c696461795f64656c657465223b733a333a22796573223b733a31323a22686f6c696461795f76696577223b733a333a22796573223b733a363a227265706f7274223b733a333a22796573223b733a32303a227265706f72742f73747564656e747265706f7274223b733a333a22796573223b733a31383a227265706f72742f636c6173737265706f7274223b733a333a22796573223b733a32333a227265706f72742f617474656e64616e63657265706f7274223b733a333a22796573223b733a31383a227265706f72742f6365727469666963617465223b733a333a22796573223b733a31313a2276697369746f72696e666f223b733a333a22796573223b733a31383a2276697369746f72696e666f5f64656c657465223b733a333a22796573223b733a31363a2276697369746f72696e666f5f76696577223b733a333a22796573223b733a31303a227363686f6f6c79656172223b733a333a22796573223b733a31343a227363686f6f6c796561725f616464223b733a333a22796573223b733a31353a227363686f6f6c796561725f65646974223b733a333a22796573223b733a31373a227363686f6f6c796561725f64656c657465223b733a333a22796573223b733a31323a2273747564656e7467726f7570223b733a333a22796573223b733a31363a2273747564656e7467726f75705f616464223b733a333a22796573223b733a31373a2273747564656e7467726f75705f65646974223b733a333a22796573223b733a31393a2273747564656e7467726f75705f64656c657465223b733a333a22796573223b733a383a22636f6d706c61696e223b733a333a22796573223b733a31323a22636f6d706c61696e5f616464223b733a333a22796573223b733a31333a22636f6d706c61696e5f65646974223b733a333a22796573223b733a31353a22636f6d706c61696e5f64656c657465223b733a333a22796573223b733a31333a22636f6d706c61696e5f76696577223b733a333a22796573223b733a32303a2263657274696669636174655f74656d706c617465223b733a333a22796573223b733a32343a2263657274696669636174655f74656d706c6174655f616464223b733a333a22796573223b733a32353a2263657274696669636174655f74656d706c6174655f65646974223b733a333a22796573223b733a32373a2263657274696669636174655f74656d706c6174655f64656c657465223b733a333a22796573223b733a32353a2263657274696669636174655f74656d706c6174655f76696577223b733a333a22796573223b733a31313a2273797374656d61646d696e223b733a333a22796573223b733a31353a2273797374656d61646d696e5f616464223b733a333a22796573223b733a31363a2273797374656d61646d696e5f65646974223b733a333a22796573223b733a31383a2273797374656d61646d696e5f64656c657465223b733a333a22796573223b733a31363a2273797374656d61646d696e5f76696577223b733a333a22796573223b733a31333a22726573657470617373776f7264223b733a333a22796573223b733a31383a226d61696c616e64736d7374656d706c617465223b733a333a22796573223b733a32323a226d61696c616e64736d7374656d706c6174655f616464223b733a333a22796573223b733a32333a226d61696c616e64736d7374656d706c6174655f65646974223b733a333a22796573223b733a32353a226d61696c616e64736d7374656d706c6174655f64656c657465223b733a333a22796573223b733a32333a226d61696c616e64736d7374656d706c6174655f76696577223b733a333a22796573223b733a31303a2262756c6b696d706f7274223b733a333a22796573223b733a363a226261636b7570223b733a333a22796573223b733a383a227573657274797065223b733a333a22796573223b733a31323a2275736572747970655f616464223b733a333a22796573223b733a31333a2275736572747970655f65646974223b733a333a22796573223b733a31353a2275736572747970655f64656c657465223b733a333a22796573223b733a31303a227065726d697373696f6e223b733a333a22796573223b733a363a22757064617465223b733a333a22796573223b733a373a2273657474696e67223b733a333a22796573223b733a31323a2273657474696e675f65646974223b733a333a22796573223b733a31353a227061796d656e7473657474696e6773223b733a333a22796573223b733a31313a22736d7373657474696e6773223b733a333a22796573223b733a353a227061676573223b733a333a22796573223b733a393a2270616765735f616464223b733a333a22796573223b733a31303a2270616765735f65646974223b733a333a22796573223b733a31323a2270616765735f64656c657465223b733a333a22796573223b733a31363a2266726f6e74656e645f73657474696e67223b733a333a22796573223b733a393a2274616b655f6578616d223b733a333a22796573223b7d6572726f727c4e3b),
('tupqnur8up92dtg6jl4fqs2o40nqjo9i', '183.87.60.202', 1518178846, 0x5f5f63695f6c6173745f726567656e65726174657c693a313531383137383536313b6c616e677c733a373a22656e676c697368223b6c6f67696e7573657249447c733a313a2231223b6e616d657c733a353a2261646d696e223b656d61696c7c733a32303a227072616b61726b68617240676d61696c2e636f6d223b757365727479706549447c733a313a2231223b75736572747970657c733a353a2241646d696e223b757365726e616d657c733a353a2261646d696e223b70686f746f7c733a31313a2264656661756c742e706e67223b64656661756c747363686f6f6c7965617249447c733a313a2231223b6c6f67676564696e7c623a313b6765745f7065726d697373696f6e7c623a313b6d61737465725f7065726d697373696f6e5f7365747c613a3237393a7b733a393a2264617368626f617264223b733a333a22796573223b733a373a2273747564656e74223b733a333a22796573223b733a31313a2273747564656e745f616464223b733a333a22796573223b733a31323a2273747564656e745f65646974223b733a333a22796573223b733a31343a2273747564656e745f64656c657465223b733a333a22796573223b733a31323a2273747564656e745f76696577223b733a333a22796573223b733a373a22706172656e7473223b733a333a22796573223b733a31313a22706172656e74735f616464223b733a333a22796573223b733a31323a22706172656e74735f65646974223b733a333a22796573223b733a31343a22706172656e74735f64656c657465223b733a333a22796573223b733a31323a22706172656e74735f76696577223b733a333a22796573223b733a373a2274656163686572223b733a333a22796573223b733a31313a22746561636865725f616464223b733a333a22796573223b733a31323a22746561636865725f65646974223b733a333a22796573223b733a31343a22746561636865725f64656c657465223b733a333a22796573223b733a31323a22746561636865725f76696577223b733a333a22796573223b733a343a2275736572223b733a333a22796573223b733a383a22757365725f616464223b733a333a22796573223b733a393a22757365725f65646974223b733a333a22796573223b733a31313a22757365725f64656c657465223b733a333a22796573223b733a393a22757365725f76696577223b733a333a22796573223b733a373a22636c6173736573223b733a333a22796573223b733a31313a22636c61737365735f616464223b733a333a22796573223b733a31323a22636c61737365735f65646974223b733a333a22796573223b733a31343a22636c61737365735f64656c657465223b733a333a22796573223b733a373a227375626a656374223b733a333a22796573223b733a31313a227375626a6563745f616464223b733a333a22796573223b733a31323a227375626a6563745f65646974223b733a333a22796573223b733a31343a227375626a6563745f64656c657465223b733a333a22796573223b733a373a2273656374696f6e223b733a333a22796573223b733a31313a2273656374696f6e5f616464223b733a333a22796573223b733a31323a2273656374696f6e5f65646974223b733a333a22796573223b733a31353a2273656d65737465725f64656c657465223b733a333a22796573223b733a31343a2273656374696f6e5f64656c657465223b733a333a22796573223b733a383a2273796c6c61627573223b733a333a22796573223b733a31323a2273796c6c616275735f616464223b733a333a22796573223b733a31333a2273796c6c616275735f65646974223b733a333a22796573223b733a31353a2273796c6c616275735f64656c657465223b733a333a22796573223b733a31303a2261737369676e6d656e74223b733a333a22796573223b733a31343a2261737369676e6d656e745f616464223b733a333a22796573223b733a31353a2261737369676e6d656e745f65646974223b733a333a22796573223b733a31373a2261737369676e6d656e745f64656c657465223b733a333a22796573223b733a31353a2261737369676e6d656e745f76696577223b733a333a22796573223b733a373a22726f7574696e65223b733a333a22796573223b733a31313a22726f7574696e655f616464223b733a333a22796573223b733a31323a22726f7574696e655f65646974223b733a333a22796573223b733a31343a22726f7574696e655f64656c657465223b733a333a22796573223b733a31313a2273617474656e64616e6365223b733a333a22796573223b733a31353a2273617474656e64616e63655f616464223b733a333a22796573223b733a31363a2273617474656e64616e63655f76696577223b733a333a22796573223b733a31313a2274617474656e64616e6365223b733a333a22796573223b733a31353a2274617474656e64616e63655f616464223b733a333a22796573223b733a31363a2274617474656e64616e63655f76696577223b733a333a22796573223b733a31313a2275617474656e64616e6365223b733a333a22796573223b733a31353a2275617474656e64616e63655f616464223b733a333a22796573223b733a31363a2275617474656e64616e63655f76696577223b733a333a22796573223b733a343a226578616d223b733a333a22796573223b733a383a226578616d5f616464223b733a333a22796573223b733a393a226578616d5f65646974223b733a333a22796573223b733a31313a226578616d5f64656c657465223b733a333a22796573223b733a31323a226578616d7363686564756c65223b733a333a22796573223b733a31363a226578616d7363686564756c655f616464223b733a333a22796573223b733a31373a226578616d7363686564756c655f65646974223b733a333a22796573223b733a31393a226578616d7363686564756c655f64656c657465223b733a333a22796573223b733a353a226772616465223b733a333a22796573223b733a393a2267726164655f616464223b733a333a22796573223b733a31303a2267726164655f65646974223b733a333a22796573223b733a31323a2267726164655f64656c657465223b733a333a22796573223b733a31313a2265617474656e64616e6365223b733a333a22796573223b733a31353a2265617474656e64616e63655f616464223b733a333a22796573223b733a343a226d61726b223b733a333a22796573223b733a383a226d61726b5f616464223b733a333a22796573223b733a393a226d61726b5f76696577223b733a333a22796573223b733a31343a226d61726b70657263656e74616765223b733a333a22796573223b733a31383a226d61726b70657263656e746167655f616464223b733a333a22796573223b733a31393a226d61726b70657263656e746167655f65646974223b733a333a22796573223b733a32313a226d61726b70657263656e746167655f64656c657465223b733a333a22796573223b733a393a2270726f6d6f74696f6e223b733a333a22796573223b733a31323a22636f6e766572736174696f6e223b733a333a22796573223b733a353a226d65646961223b733a333a22796573223b733a393a226d656469615f616464223b733a333a22796573223b733a31323a226d656469615f64656c657465223b733a333a22796573223b733a31303a226d61696c616e64736d73223b733a333a22796573223b733a31343a226d61696c616e64736d735f616464223b733a333a22796573223b733a31353a226d61696c616e64736d735f76696577223b733a333a22796573223b733a31343a227175657374696f6e5f67726f7570223b733a333a22796573223b733a31383a227175657374696f6e5f67726f75705f616464223b733a333a22796573223b733a31393a227175657374696f6e5f67726f75705f65646974223b733a333a22796573223b733a32313a227175657374696f6e5f67726f75705f64656c657465223b733a333a22796573223b733a31343a227175657374696f6e5f6c6576656c223b733a333a22796573223b733a31383a227175657374696f6e5f6c6576656c5f616464223b733a333a22796573223b733a31393a227175657374696f6e5f6c6576656c5f65646974223b733a333a22796573223b733a32313a227175657374696f6e5f6c6576656c5f64656c657465223b733a333a22796573223b733a31333a227175657374696f6e5f62616e6b223b733a333a22796573223b733a31373a227175657374696f6e5f62616e6b5f616464223b733a333a22796573223b733a31383a227175657374696f6e5f62616e6b5f65646974223b733a333a22796573223b733a32303a227175657374696f6e5f62616e6b5f64656c657465223b733a333a22796573223b733a31383a227175657374696f6e5f62616e6b5f76696577223b733a333a22796573223b733a31313a226f6e6c696e655f6578616d223b733a333a22796573223b733a31353a226f6e6c696e655f6578616d5f616464223b733a333a22796573223b733a31363a226f6e6c696e655f6578616d5f65646974223b733a333a22796573223b733a31383a226f6e6c696e655f6578616d5f64656c657465223b733a333a22796573223b733a31313a22696e737472756374696f6e223b733a333a22796573223b733a31353a22696e737472756374696f6e5f616464223b733a333a22796573223b733a31363a22696e737472756374696f6e5f65646974223b733a333a22796573223b733a31383a22696e737472756374696f6e5f64656c657465223b733a333a22796573223b733a31363a22696e737472756374696f6e5f76696577223b733a333a22796573223b733a31353a2273616c6172795f74656d706c617465223b733a333a22796573223b733a31393a2273616c6172795f74656d706c6174655f616464223b733a333a22796573223b733a32303a2273616c6172795f74656d706c6174655f65646974223b733a333a22796573223b733a32323a2273616c6172795f74656d706c6174655f64656c657465223b733a333a22796573223b733a32303a2273616c6172795f74656d706c6174655f76696577223b733a333a22796573223b733a31353a22686f75726c795f74656d706c617465223b733a333a22796573223b733a31393a22686f75726c795f74656d706c6174655f616464223b733a333a22796573223b733a32303a22686f75726c795f74656d706c6174655f65646974223b733a333a22796573223b733a32323a22686f75726c795f74656d706c6174655f64656c657465223b733a333a22796573223b733a31333a226d616e6167655f73616c617279223b733a333a22796573223b733a31373a226d616e6167655f73616c6172795f616464223b733a333a22796573223b733a31383a226d616e6167655f73616c6172795f65646974223b733a333a22796573223b733a32303a226d616e6167655f73616c6172795f64656c657465223b733a333a22796573223b733a31383a226d616e6167655f73616c6172795f76696577223b733a333a22796573223b733a31323a226d616b655f7061796d656e74223b733a333a22796573223b733a363a2276656e646f72223b733a333a22796573223b733a31303a2276656e646f725f616464223b733a333a22796573223b733a31313a2276656e646f725f65646974223b733a333a22796573223b733a31333a2276656e646f725f64656c657465223b733a333a22796573223b733a383a226c6f636174696f6e223b733a333a22796573223b733a31323a226c6f636174696f6e5f616464223b733a333a22796573223b733a31333a226c6f636174696f6e5f65646974223b733a333a22796573223b733a31353a226c6f636174696f6e5f64656c657465223b733a333a22796573223b733a31343a2261737365745f63617465676f7279223b733a333a22796573223b733a31383a2261737365745f63617465676f72795f616464223b733a333a22796573223b733a31393a2261737365745f63617465676f72795f65646974223b733a333a22796573223b733a32313a2261737365745f63617465676f72795f64656c657465223b733a333a22796573223b733a353a226173736574223b733a333a22796573223b733a393a2261737365745f616464223b733a333a22796573223b733a31303a2261737365745f65646974223b733a333a22796573223b733a31323a2261737365745f64656c657465223b733a333a22796573223b733a31303a2261737365745f76696577223b733a333a22796573223b733a31363a2261737365745f61737369676e6d656e74223b733a333a22796573223b733a32303a2261737365745f61737369676e6d656e745f616464223b733a333a22796573223b733a32313a2261737365745f61737369676e6d656e745f65646974223b733a333a22796573223b733a32333a2261737365745f61737369676e6d656e745f64656c657465223b733a333a22796573223b733a32313a2261737365745f61737369676e6d656e745f76696577223b733a333a22796573223b733a383a227075726368617365223b733a333a22796573223b733a31323a2270757263686173655f616464223b733a333a22796573223b733a31333a2270757263686173655f65646974223b733a333a22796573223b733a31353a2270757263686173655f64656c657465223b733a333a22796573223b733a31383a226163746976697469657363617465676f7279223b733a333a22796573223b733a32323a226163746976697469657363617465676f72795f616464223b733a333a22796573223b733a32333a226163746976697469657363617465676f72795f65646974223b733a333a22796573223b733a32353a226163746976697469657363617465676f72795f64656c657465223b733a333a22796573223b733a31303a2261637469766974696573223b733a333a22796573223b733a31343a22616374697669746965735f616464223b733a333a22796573223b733a31373a22616374697669746965735f64656c657465223b733a333a22796573223b733a393a226368696c6463617265223b733a333a22796573223b733a31333a226368696c64636172655f616464223b733a333a22796573223b733a31363a226368696c64636172655f64656c657465223b733a333a22796573223b733a373a226c6d656d626572223b733a333a22796573223b733a31313a226c6d656d6265725f616464223b733a333a22796573223b733a31323a226c6d656d6265725f65646974223b733a333a22796573223b733a31343a226c6d656d6265725f64656c657465223b733a333a22796573223b733a31323a226c6d656d6265725f76696577223b733a333a22796573223b733a343a22626f6f6b223b733a333a22796573223b733a383a22626f6f6b5f616464223b733a333a22796573223b733a393a22626f6f6b5f65646974223b733a333a22796573223b733a31313a22626f6f6b5f64656c657465223b733a333a22796573223b733a353a226973737565223b733a333a22796573223b733a393a2269737375655f616464223b733a333a22796573223b733a31303a2269737375655f65646974223b733a333a22796573223b733a31303a2269737375655f76696577223b733a333a22796573223b733a393a227472616e73706f7274223b733a333a22796573223b733a31333a227472616e73706f72745f616464223b733a333a22796573223b733a31343a227472616e73706f72745f65646974223b733a333a22796573223b733a31363a227472616e73706f72745f64656c657465223b733a333a22796573223b733a373a22746d656d626572223b733a333a22796573223b733a31313a22746d656d6265725f616464223b733a333a22796573223b733a31323a22746d656d6265725f65646974223b733a333a22796573223b733a31343a22746d656d6265725f64656c657465223b733a333a22796573223b733a31323a22746d656d6265725f76696577223b733a333a22796573223b733a363a22686f7374656c223b733a333a22796573223b733a31303a22686f7374656c5f616464223b733a333a22796573223b733a31313a22686f7374656c5f65646974223b733a333a22796573223b733a31333a22686f7374656c5f64656c657465223b733a333a22796573223b733a383a2263617465676f7279223b733a333a22796573223b733a31323a2263617465676f72795f616464223b733a333a22796573223b733a31333a2263617465676f72795f65646974223b733a333a22796573223b733a31353a2263617465676f72795f64656c657465223b733a333a22796573223b733a373a22686d656d626572223b733a333a22796573223b733a31313a22686d656d6265725f616464223b733a333a22796573223b733a31323a22686d656d6265725f65646974223b733a333a22796573223b733a31343a22686d656d6265725f64656c657465223b733a333a22796573223b733a31323a22686d656d6265725f76696577223b733a333a22796573223b733a383a226665657479706573223b733a333a22796573223b733a31323a2266656574797065735f616464223b733a333a22796573223b733a31333a2266656574797065735f65646974223b733a333a22796573223b733a31353a2266656574797065735f64656c657465223b733a333a22796573223b733a373a22696e766f696365223b733a333a22796573223b733a31313a22696e766f6963655f616464223b733a333a22796573223b733a31323a22696e766f6963655f65646974223b733a333a22796573223b733a31343a22696e766f6963655f64656c657465223b733a333a22796573223b733a31323a22696e766f6963655f76696577223b733a333a22796573223b733a31343a227061796d656e74686973746f7279223b733a333a22796573223b733a31393a227061796d656e74686973746f72795f65646974223b733a333a22796573223b733a32313a227061796d656e74686973746f72795f64656c657465223b733a333a22796573223b733a373a22657870656e7365223b733a333a22796573223b733a31313a22657870656e73655f616464223b733a333a22796573223b733a31323a22657870656e73655f65646974223b733a333a22796573223b733a31343a22657870656e73655f64656c657465223b733a333a22796573223b733a363a226e6f74696365223b733a333a22796573223b733a31303a226e6f746963655f616464223b733a333a22796573223b733a31313a226e6f746963655f65646974223b733a333a22796573223b733a31333a226e6f746963655f64656c657465223b733a333a22796573223b733a31313a226e6f746963655f76696577223b733a333a22796573223b733a353a226576656e74223b733a333a22796573223b733a393a226576656e745f616464223b733a333a22796573223b733a31303a226576656e745f65646974223b733a333a22796573223b733a31323a226576656e745f64656c657465223b733a333a22796573223b733a31303a226576656e745f76696577223b733a333a22796573223b733a373a22686f6c69646179223b733a333a22796573223b733a31313a22686f6c696461795f616464223b733a333a22796573223b733a31323a22686f6c696461795f65646974223b733a333a22796573223b733a31343a22686f6c696461795f64656c657465223b733a333a22796573223b733a31323a22686f6c696461795f76696577223b733a333a22796573223b733a363a227265706f7274223b733a333a22796573223b733a32303a227265706f72742f73747564656e747265706f7274223b733a333a22796573223b733a31383a227265706f72742f636c6173737265706f7274223b733a333a22796573223b733a32333a227265706f72742f617474656e64616e63657265706f7274223b733a333a22796573223b733a31383a227265706f72742f6365727469666963617465223b733a333a22796573223b733a31313a2276697369746f72696e666f223b733a333a22796573223b733a31383a2276697369746f72696e666f5f64656c657465223b733a333a22796573223b733a31363a2276697369746f72696e666f5f76696577223b733a333a22796573223b733a31303a227363686f6f6c79656172223b733a333a22796573223b733a31343a227363686f6f6c796561725f616464223b733a333a22796573223b733a31353a227363686f6f6c796561725f65646974223b733a333a22796573223b733a31373a227363686f6f6c796561725f64656c657465223b733a333a22796573223b733a31323a2273747564656e7467726f7570223b733a333a22796573223b733a31363a2273747564656e7467726f75705f616464223b733a333a22796573223b733a31373a2273747564656e7467726f75705f65646974223b733a333a22796573223b733a31393a2273747564656e7467726f75705f64656c657465223b733a333a22796573223b733a383a22636f6d706c61696e223b733a333a22796573223b733a31323a22636f6d706c61696e5f616464223b733a333a22796573223b733a31333a22636f6d706c61696e5f65646974223b733a333a22796573223b733a31353a22636f6d706c61696e5f64656c657465223b733a333a22796573223b733a31333a22636f6d706c61696e5f76696577223b733a333a22796573223b733a32303a2263657274696669636174655f74656d706c617465223b733a333a22796573223b733a32343a2263657274696669636174655f74656d706c6174655f616464223b733a333a22796573223b733a32353a2263657274696669636174655f74656d706c6174655f65646974223b733a333a22796573223b733a32373a2263657274696669636174655f74656d706c6174655f64656c657465223b733a333a22796573223b733a32353a2263657274696669636174655f74656d706c6174655f76696577223b733a333a22796573223b733a31313a2273797374656d61646d696e223b733a333a22796573223b733a31353a2273797374656d61646d696e5f616464223b733a333a22796573223b733a31363a2273797374656d61646d696e5f65646974223b733a333a22796573223b733a31383a2273797374656d61646d696e5f64656c657465223b733a333a22796573223b733a31363a2273797374656d61646d696e5f76696577223b733a333a22796573223b733a31333a22726573657470617373776f7264223b733a333a22796573223b733a31383a226d61696c616e64736d7374656d706c617465223b733a333a22796573223b733a32323a226d61696c616e64736d7374656d706c6174655f616464223b733a333a22796573223b733a32333a226d61696c616e64736d7374656d706c6174655f65646974223b733a333a22796573223b733a32353a226d61696c616e64736d7374656d706c6174655f64656c657465223b733a333a22796573223b733a32333a226d61696c616e64736d7374656d706c6174655f76696577223b733a333a22796573223b733a31303a2262756c6b696d706f7274223b733a333a22796573223b733a363a226261636b7570223b733a333a22796573223b733a383a227573657274797065223b733a333a22796573223b733a31323a2275736572747970655f616464223b733a333a22796573223b733a31333a2275736572747970655f65646974223b733a333a22796573223b733a31353a2275736572747970655f64656c657465223b733a333a22796573223b733a31303a227065726d697373696f6e223b733a333a22796573223b733a363a22757064617465223b733a333a22796573223b733a373a2273657474696e67223b733a333a22796573223b733a31323a2273657474696e675f65646974223b733a333a22796573223b733a31353a227061796d656e7473657474696e6773223b733a333a22796573223b733a31313a22736d7373657474696e6773223b733a333a22796573223b733a353a227061676573223b733a333a22796573223b733a393a2270616765735f616464223b733a333a22796573223b733a31303a2270616765735f65646974223b733a333a22796573223b733a31323a2270616765735f64656c657465223b733a333a22796573223b733a31363a2266726f6e74656e645f73657474696e67223b733a333a22796573223b733a393a2274616b655f6578616d223b733a333a22796573223b7d);
INSERT INTO `school_sessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES
('j2nl3rs9ts53lkjjfua1l3j1a1d3nvf2', '183.87.60.202', 1518179074, 0x5f5f63695f6c6173745f726567656e65726174657c693a313531383137383932333b6c616e677c733a373a22656e676c697368223b6c6f67696e7573657249447c733a313a2231223b6e616d657c733a353a2261646d696e223b656d61696c7c733a32303a227072616b61726b68617240676d61696c2e636f6d223b757365727479706549447c733a313a2231223b75736572747970657c733a353a2241646d696e223b757365726e616d657c733a353a2261646d696e223b70686f746f7c733a31313a2264656661756c742e706e67223b64656661756c747363686f6f6c7965617249447c733a313a2231223b6c6f67676564696e7c623a313b6765745f7065726d697373696f6e7c623a313b6d61737465725f7065726d697373696f6e5f7365747c613a3237393a7b733a393a2264617368626f617264223b733a333a22796573223b733a373a2273747564656e74223b733a333a22796573223b733a31313a2273747564656e745f616464223b733a333a22796573223b733a31323a2273747564656e745f65646974223b733a333a22796573223b733a31343a2273747564656e745f64656c657465223b733a333a22796573223b733a31323a2273747564656e745f76696577223b733a333a22796573223b733a373a22706172656e7473223b733a333a22796573223b733a31313a22706172656e74735f616464223b733a333a22796573223b733a31323a22706172656e74735f65646974223b733a333a22796573223b733a31343a22706172656e74735f64656c657465223b733a333a22796573223b733a31323a22706172656e74735f76696577223b733a333a22796573223b733a373a2274656163686572223b733a333a22796573223b733a31313a22746561636865725f616464223b733a333a22796573223b733a31323a22746561636865725f65646974223b733a333a22796573223b733a31343a22746561636865725f64656c657465223b733a333a22796573223b733a31323a22746561636865725f76696577223b733a333a22796573223b733a343a2275736572223b733a333a22796573223b733a383a22757365725f616464223b733a333a22796573223b733a393a22757365725f65646974223b733a333a22796573223b733a31313a22757365725f64656c657465223b733a333a22796573223b733a393a22757365725f76696577223b733a333a22796573223b733a373a22636c6173736573223b733a333a22796573223b733a31313a22636c61737365735f616464223b733a333a22796573223b733a31323a22636c61737365735f65646974223b733a333a22796573223b733a31343a22636c61737365735f64656c657465223b733a333a22796573223b733a373a227375626a656374223b733a333a22796573223b733a31313a227375626a6563745f616464223b733a333a22796573223b733a31323a227375626a6563745f65646974223b733a333a22796573223b733a31343a227375626a6563745f64656c657465223b733a333a22796573223b733a373a2273656374696f6e223b733a333a22796573223b733a31313a2273656374696f6e5f616464223b733a333a22796573223b733a31323a2273656374696f6e5f65646974223b733a333a22796573223b733a31353a2273656d65737465725f64656c657465223b733a333a22796573223b733a31343a2273656374696f6e5f64656c657465223b733a333a22796573223b733a383a2273796c6c61627573223b733a333a22796573223b733a31323a2273796c6c616275735f616464223b733a333a22796573223b733a31333a2273796c6c616275735f65646974223b733a333a22796573223b733a31353a2273796c6c616275735f64656c657465223b733a333a22796573223b733a31303a2261737369676e6d656e74223b733a333a22796573223b733a31343a2261737369676e6d656e745f616464223b733a333a22796573223b733a31353a2261737369676e6d656e745f65646974223b733a333a22796573223b733a31373a2261737369676e6d656e745f64656c657465223b733a333a22796573223b733a31353a2261737369676e6d656e745f76696577223b733a333a22796573223b733a373a22726f7574696e65223b733a333a22796573223b733a31313a22726f7574696e655f616464223b733a333a22796573223b733a31323a22726f7574696e655f65646974223b733a333a22796573223b733a31343a22726f7574696e655f64656c657465223b733a333a22796573223b733a31313a2273617474656e64616e6365223b733a333a22796573223b733a31353a2273617474656e64616e63655f616464223b733a333a22796573223b733a31363a2273617474656e64616e63655f76696577223b733a333a22796573223b733a31313a2274617474656e64616e6365223b733a333a22796573223b733a31353a2274617474656e64616e63655f616464223b733a333a22796573223b733a31363a2274617474656e64616e63655f76696577223b733a333a22796573223b733a31313a2275617474656e64616e6365223b733a333a22796573223b733a31353a2275617474656e64616e63655f616464223b733a333a22796573223b733a31363a2275617474656e64616e63655f76696577223b733a333a22796573223b733a343a226578616d223b733a333a22796573223b733a383a226578616d5f616464223b733a333a22796573223b733a393a226578616d5f65646974223b733a333a22796573223b733a31313a226578616d5f64656c657465223b733a333a22796573223b733a31323a226578616d7363686564756c65223b733a333a22796573223b733a31363a226578616d7363686564756c655f616464223b733a333a22796573223b733a31373a226578616d7363686564756c655f65646974223b733a333a22796573223b733a31393a226578616d7363686564756c655f64656c657465223b733a333a22796573223b733a353a226772616465223b733a333a22796573223b733a393a2267726164655f616464223b733a333a22796573223b733a31303a2267726164655f65646974223b733a333a22796573223b733a31323a2267726164655f64656c657465223b733a333a22796573223b733a31313a2265617474656e64616e6365223b733a333a22796573223b733a31353a2265617474656e64616e63655f616464223b733a333a22796573223b733a343a226d61726b223b733a333a22796573223b733a383a226d61726b5f616464223b733a333a22796573223b733a393a226d61726b5f76696577223b733a333a22796573223b733a31343a226d61726b70657263656e74616765223b733a333a22796573223b733a31383a226d61726b70657263656e746167655f616464223b733a333a22796573223b733a31393a226d61726b70657263656e746167655f65646974223b733a333a22796573223b733a32313a226d61726b70657263656e746167655f64656c657465223b733a333a22796573223b733a393a2270726f6d6f74696f6e223b733a333a22796573223b733a31323a22636f6e766572736174696f6e223b733a333a22796573223b733a353a226d65646961223b733a333a22796573223b733a393a226d656469615f616464223b733a333a22796573223b733a31323a226d656469615f64656c657465223b733a333a22796573223b733a31303a226d61696c616e64736d73223b733a333a22796573223b733a31343a226d61696c616e64736d735f616464223b733a333a22796573223b733a31353a226d61696c616e64736d735f76696577223b733a333a22796573223b733a31343a227175657374696f6e5f67726f7570223b733a333a22796573223b733a31383a227175657374696f6e5f67726f75705f616464223b733a333a22796573223b733a31393a227175657374696f6e5f67726f75705f65646974223b733a333a22796573223b733a32313a227175657374696f6e5f67726f75705f64656c657465223b733a333a22796573223b733a31343a227175657374696f6e5f6c6576656c223b733a333a22796573223b733a31383a227175657374696f6e5f6c6576656c5f616464223b733a333a22796573223b733a31393a227175657374696f6e5f6c6576656c5f65646974223b733a333a22796573223b733a32313a227175657374696f6e5f6c6576656c5f64656c657465223b733a333a22796573223b733a31333a227175657374696f6e5f62616e6b223b733a333a22796573223b733a31373a227175657374696f6e5f62616e6b5f616464223b733a333a22796573223b733a31383a227175657374696f6e5f62616e6b5f65646974223b733a333a22796573223b733a32303a227175657374696f6e5f62616e6b5f64656c657465223b733a333a22796573223b733a31383a227175657374696f6e5f62616e6b5f76696577223b733a333a22796573223b733a31313a226f6e6c696e655f6578616d223b733a333a22796573223b733a31353a226f6e6c696e655f6578616d5f616464223b733a333a22796573223b733a31363a226f6e6c696e655f6578616d5f65646974223b733a333a22796573223b733a31383a226f6e6c696e655f6578616d5f64656c657465223b733a333a22796573223b733a31313a22696e737472756374696f6e223b733a333a22796573223b733a31353a22696e737472756374696f6e5f616464223b733a333a22796573223b733a31363a22696e737472756374696f6e5f65646974223b733a333a22796573223b733a31383a22696e737472756374696f6e5f64656c657465223b733a333a22796573223b733a31363a22696e737472756374696f6e5f76696577223b733a333a22796573223b733a31353a2273616c6172795f74656d706c617465223b733a333a22796573223b733a31393a2273616c6172795f74656d706c6174655f616464223b733a333a22796573223b733a32303a2273616c6172795f74656d706c6174655f65646974223b733a333a22796573223b733a32323a2273616c6172795f74656d706c6174655f64656c657465223b733a333a22796573223b733a32303a2273616c6172795f74656d706c6174655f76696577223b733a333a22796573223b733a31353a22686f75726c795f74656d706c617465223b733a333a22796573223b733a31393a22686f75726c795f74656d706c6174655f616464223b733a333a22796573223b733a32303a22686f75726c795f74656d706c6174655f65646974223b733a333a22796573223b733a32323a22686f75726c795f74656d706c6174655f64656c657465223b733a333a22796573223b733a31333a226d616e6167655f73616c617279223b733a333a22796573223b733a31373a226d616e6167655f73616c6172795f616464223b733a333a22796573223b733a31383a226d616e6167655f73616c6172795f65646974223b733a333a22796573223b733a32303a226d616e6167655f73616c6172795f64656c657465223b733a333a22796573223b733a31383a226d616e6167655f73616c6172795f76696577223b733a333a22796573223b733a31323a226d616b655f7061796d656e74223b733a333a22796573223b733a363a2276656e646f72223b733a333a22796573223b733a31303a2276656e646f725f616464223b733a333a22796573223b733a31313a2276656e646f725f65646974223b733a333a22796573223b733a31333a2276656e646f725f64656c657465223b733a333a22796573223b733a383a226c6f636174696f6e223b733a333a22796573223b733a31323a226c6f636174696f6e5f616464223b733a333a22796573223b733a31333a226c6f636174696f6e5f65646974223b733a333a22796573223b733a31353a226c6f636174696f6e5f64656c657465223b733a333a22796573223b733a31343a2261737365745f63617465676f7279223b733a333a22796573223b733a31383a2261737365745f63617465676f72795f616464223b733a333a22796573223b733a31393a2261737365745f63617465676f72795f65646974223b733a333a22796573223b733a32313a2261737365745f63617465676f72795f64656c657465223b733a333a22796573223b733a353a226173736574223b733a333a22796573223b733a393a2261737365745f616464223b733a333a22796573223b733a31303a2261737365745f65646974223b733a333a22796573223b733a31323a2261737365745f64656c657465223b733a333a22796573223b733a31303a2261737365745f76696577223b733a333a22796573223b733a31363a2261737365745f61737369676e6d656e74223b733a333a22796573223b733a32303a2261737365745f61737369676e6d656e745f616464223b733a333a22796573223b733a32313a2261737365745f61737369676e6d656e745f65646974223b733a333a22796573223b733a32333a2261737365745f61737369676e6d656e745f64656c657465223b733a333a22796573223b733a32313a2261737365745f61737369676e6d656e745f76696577223b733a333a22796573223b733a383a227075726368617365223b733a333a22796573223b733a31323a2270757263686173655f616464223b733a333a22796573223b733a31333a2270757263686173655f65646974223b733a333a22796573223b733a31353a2270757263686173655f64656c657465223b733a333a22796573223b733a31383a226163746976697469657363617465676f7279223b733a333a22796573223b733a32323a226163746976697469657363617465676f72795f616464223b733a333a22796573223b733a32333a226163746976697469657363617465676f72795f65646974223b733a333a22796573223b733a32353a226163746976697469657363617465676f72795f64656c657465223b733a333a22796573223b733a31303a2261637469766974696573223b733a333a22796573223b733a31343a22616374697669746965735f616464223b733a333a22796573223b733a31373a22616374697669746965735f64656c657465223b733a333a22796573223b733a393a226368696c6463617265223b733a333a22796573223b733a31333a226368696c64636172655f616464223b733a333a22796573223b733a31363a226368696c64636172655f64656c657465223b733a333a22796573223b733a373a226c6d656d626572223b733a333a22796573223b733a31313a226c6d656d6265725f616464223b733a333a22796573223b733a31323a226c6d656d6265725f65646974223b733a333a22796573223b733a31343a226c6d656d6265725f64656c657465223b733a333a22796573223b733a31323a226c6d656d6265725f76696577223b733a333a22796573223b733a343a22626f6f6b223b733a333a22796573223b733a383a22626f6f6b5f616464223b733a333a22796573223b733a393a22626f6f6b5f65646974223b733a333a22796573223b733a31313a22626f6f6b5f64656c657465223b733a333a22796573223b733a353a226973737565223b733a333a22796573223b733a393a2269737375655f616464223b733a333a22796573223b733a31303a2269737375655f65646974223b733a333a22796573223b733a31303a2269737375655f76696577223b733a333a22796573223b733a393a227472616e73706f7274223b733a333a22796573223b733a31333a227472616e73706f72745f616464223b733a333a22796573223b733a31343a227472616e73706f72745f65646974223b733a333a22796573223b733a31363a227472616e73706f72745f64656c657465223b733a333a22796573223b733a373a22746d656d626572223b733a333a22796573223b733a31313a22746d656d6265725f616464223b733a333a22796573223b733a31323a22746d656d6265725f65646974223b733a333a22796573223b733a31343a22746d656d6265725f64656c657465223b733a333a22796573223b733a31323a22746d656d6265725f76696577223b733a333a22796573223b733a363a22686f7374656c223b733a333a22796573223b733a31303a22686f7374656c5f616464223b733a333a22796573223b733a31313a22686f7374656c5f65646974223b733a333a22796573223b733a31333a22686f7374656c5f64656c657465223b733a333a22796573223b733a383a2263617465676f7279223b733a333a22796573223b733a31323a2263617465676f72795f616464223b733a333a22796573223b733a31333a2263617465676f72795f65646974223b733a333a22796573223b733a31353a2263617465676f72795f64656c657465223b733a333a22796573223b733a373a22686d656d626572223b733a333a22796573223b733a31313a22686d656d6265725f616464223b733a333a22796573223b733a31323a22686d656d6265725f65646974223b733a333a22796573223b733a31343a22686d656d6265725f64656c657465223b733a333a22796573223b733a31323a22686d656d6265725f76696577223b733a333a22796573223b733a383a226665657479706573223b733a333a22796573223b733a31323a2266656574797065735f616464223b733a333a22796573223b733a31333a2266656574797065735f65646974223b733a333a22796573223b733a31353a2266656574797065735f64656c657465223b733a333a22796573223b733a373a22696e766f696365223b733a333a22796573223b733a31313a22696e766f6963655f616464223b733a333a22796573223b733a31323a22696e766f6963655f65646974223b733a333a22796573223b733a31343a22696e766f6963655f64656c657465223b733a333a22796573223b733a31323a22696e766f6963655f76696577223b733a333a22796573223b733a31343a227061796d656e74686973746f7279223b733a333a22796573223b733a31393a227061796d656e74686973746f72795f65646974223b733a333a22796573223b733a32313a227061796d656e74686973746f72795f64656c657465223b733a333a22796573223b733a373a22657870656e7365223b733a333a22796573223b733a31313a22657870656e73655f616464223b733a333a22796573223b733a31323a22657870656e73655f65646974223b733a333a22796573223b733a31343a22657870656e73655f64656c657465223b733a333a22796573223b733a363a226e6f74696365223b733a333a22796573223b733a31303a226e6f746963655f616464223b733a333a22796573223b733a31313a226e6f746963655f65646974223b733a333a22796573223b733a31333a226e6f746963655f64656c657465223b733a333a22796573223b733a31313a226e6f746963655f76696577223b733a333a22796573223b733a353a226576656e74223b733a333a22796573223b733a393a226576656e745f616464223b733a333a22796573223b733a31303a226576656e745f65646974223b733a333a22796573223b733a31323a226576656e745f64656c657465223b733a333a22796573223b733a31303a226576656e745f76696577223b733a333a22796573223b733a373a22686f6c69646179223b733a333a22796573223b733a31313a22686f6c696461795f616464223b733a333a22796573223b733a31323a22686f6c696461795f65646974223b733a333a22796573223b733a31343a22686f6c696461795f64656c657465223b733a333a22796573223b733a31323a22686f6c696461795f76696577223b733a333a22796573223b733a363a227265706f7274223b733a333a22796573223b733a32303a227265706f72742f73747564656e747265706f7274223b733a333a22796573223b733a31383a227265706f72742f636c6173737265706f7274223b733a333a22796573223b733a32333a227265706f72742f617474656e64616e63657265706f7274223b733a333a22796573223b733a31383a227265706f72742f6365727469666963617465223b733a333a22796573223b733a31313a2276697369746f72696e666f223b733a333a22796573223b733a31383a2276697369746f72696e666f5f64656c657465223b733a333a22796573223b733a31363a2276697369746f72696e666f5f76696577223b733a333a22796573223b733a31303a227363686f6f6c79656172223b733a333a22796573223b733a31343a227363686f6f6c796561725f616464223b733a333a22796573223b733a31353a227363686f6f6c796561725f65646974223b733a333a22796573223b733a31373a227363686f6f6c796561725f64656c657465223b733a333a22796573223b733a31323a2273747564656e7467726f7570223b733a333a22796573223b733a31363a2273747564656e7467726f75705f616464223b733a333a22796573223b733a31373a2273747564656e7467726f75705f65646974223b733a333a22796573223b733a31393a2273747564656e7467726f75705f64656c657465223b733a333a22796573223b733a383a22636f6d706c61696e223b733a333a22796573223b733a31323a22636f6d706c61696e5f616464223b733a333a22796573223b733a31333a22636f6d706c61696e5f65646974223b733a333a22796573223b733a31353a22636f6d706c61696e5f64656c657465223b733a333a22796573223b733a31333a22636f6d706c61696e5f76696577223b733a333a22796573223b733a32303a2263657274696669636174655f74656d706c617465223b733a333a22796573223b733a32343a2263657274696669636174655f74656d706c6174655f616464223b733a333a22796573223b733a32353a2263657274696669636174655f74656d706c6174655f65646974223b733a333a22796573223b733a32373a2263657274696669636174655f74656d706c6174655f64656c657465223b733a333a22796573223b733a32353a2263657274696669636174655f74656d706c6174655f76696577223b733a333a22796573223b733a31313a2273797374656d61646d696e223b733a333a22796573223b733a31353a2273797374656d61646d696e5f616464223b733a333a22796573223b733a31363a2273797374656d61646d696e5f65646974223b733a333a22796573223b733a31383a2273797374656d61646d696e5f64656c657465223b733a333a22796573223b733a31363a2273797374656d61646d696e5f76696577223b733a333a22796573223b733a31333a22726573657470617373776f7264223b733a333a22796573223b733a31383a226d61696c616e64736d7374656d706c617465223b733a333a22796573223b733a32323a226d61696c616e64736d7374656d706c6174655f616464223b733a333a22796573223b733a32333a226d61696c616e64736d7374656d706c6174655f65646974223b733a333a22796573223b733a32353a226d61696c616e64736d7374656d706c6174655f64656c657465223b733a333a22796573223b733a32333a226d61696c616e64736d7374656d706c6174655f76696577223b733a333a22796573223b733a31303a2262756c6b696d706f7274223b733a333a22796573223b733a363a226261636b7570223b733a333a22796573223b733a383a227573657274797065223b733a333a22796573223b733a31323a2275736572747970655f616464223b733a333a22796573223b733a31333a2275736572747970655f65646974223b733a333a22796573223b733a31353a2275736572747970655f64656c657465223b733a333a22796573223b733a31303a227065726d697373696f6e223b733a333a22796573223b733a363a22757064617465223b733a333a22796573223b733a373a2273657474696e67223b733a333a22796573223b733a31323a2273657474696e675f65646974223b733a333a22796573223b733a31353a227061796d656e7473657474696e6773223b733a333a22796573223b733a31313a22736d7373657474696e6773223b733a333a22796573223b733a353a227061676573223b733a333a22796573223b733a393a2270616765735f616464223b733a333a22796573223b733a31303a2270616765735f65646974223b733a333a22796573223b733a31323a2270616765735f64656c657465223b733a333a22796573223b733a31363a2266726f6e74656e645f73657474696e67223b733a333a22796573223b733a393a2274616b655f6578616d223b733a333a22796573223b7d),
('jok44fho1cm15hs8ljoq8grngb0ib12b', '150.107.205.157', 1518179541, 0x5f5f63695f6c6173745f726567656e65726174657c693a313531383137393437363b6c616e677c733a373a22656e676c697368223b6c6f67696e7573657249447c733a313a2231223b6e616d657c733a353a2261646d696e223b656d61696c7c733a32303a227072616b61726b68617240676d61696c2e636f6d223b757365727479706549447c733a313a2231223b75736572747970657c733a353a2241646d696e223b757365726e616d657c733a353a2261646d696e223b70686f746f7c733a31313a2264656661756c742e706e67223b64656661756c747363686f6f6c7965617249447c733a313a2231223b6c6f67676564696e7c623a313b6765745f7065726d697373696f6e7c623a313b6d61737465725f7065726d697373696f6e5f7365747c613a3237393a7b733a393a2264617368626f617264223b733a333a22796573223b733a373a2273747564656e74223b733a333a22796573223b733a31313a2273747564656e745f616464223b733a333a22796573223b733a31323a2273747564656e745f65646974223b733a333a22796573223b733a31343a2273747564656e745f64656c657465223b733a333a22796573223b733a31323a2273747564656e745f76696577223b733a333a22796573223b733a373a22706172656e7473223b733a333a22796573223b733a31313a22706172656e74735f616464223b733a333a22796573223b733a31323a22706172656e74735f65646974223b733a333a22796573223b733a31343a22706172656e74735f64656c657465223b733a333a22796573223b733a31323a22706172656e74735f76696577223b733a333a22796573223b733a373a2274656163686572223b733a333a22796573223b733a31313a22746561636865725f616464223b733a333a22796573223b733a31323a22746561636865725f65646974223b733a333a22796573223b733a31343a22746561636865725f64656c657465223b733a333a22796573223b733a31323a22746561636865725f76696577223b733a333a22796573223b733a343a2275736572223b733a333a22796573223b733a383a22757365725f616464223b733a333a22796573223b733a393a22757365725f65646974223b733a333a22796573223b733a31313a22757365725f64656c657465223b733a333a22796573223b733a393a22757365725f76696577223b733a333a22796573223b733a373a22636c6173736573223b733a333a22796573223b733a31313a22636c61737365735f616464223b733a333a22796573223b733a31323a22636c61737365735f65646974223b733a333a22796573223b733a31343a22636c61737365735f64656c657465223b733a333a22796573223b733a373a227375626a656374223b733a333a22796573223b733a31313a227375626a6563745f616464223b733a333a22796573223b733a31323a227375626a6563745f65646974223b733a333a22796573223b733a31343a227375626a6563745f64656c657465223b733a333a22796573223b733a373a2273656374696f6e223b733a333a22796573223b733a31313a2273656374696f6e5f616464223b733a333a22796573223b733a31323a2273656374696f6e5f65646974223b733a333a22796573223b733a31353a2273656d65737465725f64656c657465223b733a333a22796573223b733a31343a2273656374696f6e5f64656c657465223b733a333a22796573223b733a383a2273796c6c61627573223b733a333a22796573223b733a31323a2273796c6c616275735f616464223b733a333a22796573223b733a31333a2273796c6c616275735f65646974223b733a333a22796573223b733a31353a2273796c6c616275735f64656c657465223b733a333a22796573223b733a31303a2261737369676e6d656e74223b733a333a22796573223b733a31343a2261737369676e6d656e745f616464223b733a333a22796573223b733a31353a2261737369676e6d656e745f65646974223b733a333a22796573223b733a31373a2261737369676e6d656e745f64656c657465223b733a333a22796573223b733a31353a2261737369676e6d656e745f76696577223b733a333a22796573223b733a373a22726f7574696e65223b733a333a22796573223b733a31313a22726f7574696e655f616464223b733a333a22796573223b733a31323a22726f7574696e655f65646974223b733a333a22796573223b733a31343a22726f7574696e655f64656c657465223b733a333a22796573223b733a31313a2273617474656e64616e6365223b733a333a22796573223b733a31353a2273617474656e64616e63655f616464223b733a333a22796573223b733a31363a2273617474656e64616e63655f76696577223b733a333a22796573223b733a31313a2274617474656e64616e6365223b733a333a22796573223b733a31353a2274617474656e64616e63655f616464223b733a333a22796573223b733a31363a2274617474656e64616e63655f76696577223b733a333a22796573223b733a31313a2275617474656e64616e6365223b733a333a22796573223b733a31353a2275617474656e64616e63655f616464223b733a333a22796573223b733a31363a2275617474656e64616e63655f76696577223b733a333a22796573223b733a343a226578616d223b733a333a22796573223b733a383a226578616d5f616464223b733a333a22796573223b733a393a226578616d5f65646974223b733a333a22796573223b733a31313a226578616d5f64656c657465223b733a333a22796573223b733a31323a226578616d7363686564756c65223b733a333a22796573223b733a31363a226578616d7363686564756c655f616464223b733a333a22796573223b733a31373a226578616d7363686564756c655f65646974223b733a333a22796573223b733a31393a226578616d7363686564756c655f64656c657465223b733a333a22796573223b733a353a226772616465223b733a333a22796573223b733a393a2267726164655f616464223b733a333a22796573223b733a31303a2267726164655f65646974223b733a333a22796573223b733a31323a2267726164655f64656c657465223b733a333a22796573223b733a31313a2265617474656e64616e6365223b733a333a22796573223b733a31353a2265617474656e64616e63655f616464223b733a333a22796573223b733a343a226d61726b223b733a333a22796573223b733a383a226d61726b5f616464223b733a333a22796573223b733a393a226d61726b5f76696577223b733a333a22796573223b733a31343a226d61726b70657263656e74616765223b733a333a22796573223b733a31383a226d61726b70657263656e746167655f616464223b733a333a22796573223b733a31393a226d61726b70657263656e746167655f65646974223b733a333a22796573223b733a32313a226d61726b70657263656e746167655f64656c657465223b733a333a22796573223b733a393a2270726f6d6f74696f6e223b733a333a22796573223b733a31323a22636f6e766572736174696f6e223b733a333a22796573223b733a353a226d65646961223b733a333a22796573223b733a393a226d656469615f616464223b733a333a22796573223b733a31323a226d656469615f64656c657465223b733a333a22796573223b733a31303a226d61696c616e64736d73223b733a333a22796573223b733a31343a226d61696c616e64736d735f616464223b733a333a22796573223b733a31353a226d61696c616e64736d735f76696577223b733a333a22796573223b733a31343a227175657374696f6e5f67726f7570223b733a333a22796573223b733a31383a227175657374696f6e5f67726f75705f616464223b733a333a22796573223b733a31393a227175657374696f6e5f67726f75705f65646974223b733a333a22796573223b733a32313a227175657374696f6e5f67726f75705f64656c657465223b733a333a22796573223b733a31343a227175657374696f6e5f6c6576656c223b733a333a22796573223b733a31383a227175657374696f6e5f6c6576656c5f616464223b733a333a22796573223b733a31393a227175657374696f6e5f6c6576656c5f65646974223b733a333a22796573223b733a32313a227175657374696f6e5f6c6576656c5f64656c657465223b733a333a22796573223b733a31333a227175657374696f6e5f62616e6b223b733a333a22796573223b733a31373a227175657374696f6e5f62616e6b5f616464223b733a333a22796573223b733a31383a227175657374696f6e5f62616e6b5f65646974223b733a333a22796573223b733a32303a227175657374696f6e5f62616e6b5f64656c657465223b733a333a22796573223b733a31383a227175657374696f6e5f62616e6b5f76696577223b733a333a22796573223b733a31313a226f6e6c696e655f6578616d223b733a333a22796573223b733a31353a226f6e6c696e655f6578616d5f616464223b733a333a22796573223b733a31363a226f6e6c696e655f6578616d5f65646974223b733a333a22796573223b733a31383a226f6e6c696e655f6578616d5f64656c657465223b733a333a22796573223b733a31313a22696e737472756374696f6e223b733a333a22796573223b733a31353a22696e737472756374696f6e5f616464223b733a333a22796573223b733a31363a22696e737472756374696f6e5f65646974223b733a333a22796573223b733a31383a22696e737472756374696f6e5f64656c657465223b733a333a22796573223b733a31363a22696e737472756374696f6e5f76696577223b733a333a22796573223b733a31353a2273616c6172795f74656d706c617465223b733a333a22796573223b733a31393a2273616c6172795f74656d706c6174655f616464223b733a333a22796573223b733a32303a2273616c6172795f74656d706c6174655f65646974223b733a333a22796573223b733a32323a2273616c6172795f74656d706c6174655f64656c657465223b733a333a22796573223b733a32303a2273616c6172795f74656d706c6174655f76696577223b733a333a22796573223b733a31353a22686f75726c795f74656d706c617465223b733a333a22796573223b733a31393a22686f75726c795f74656d706c6174655f616464223b733a333a22796573223b733a32303a22686f75726c795f74656d706c6174655f65646974223b733a333a22796573223b733a32323a22686f75726c795f74656d706c6174655f64656c657465223b733a333a22796573223b733a31333a226d616e6167655f73616c617279223b733a333a22796573223b733a31373a226d616e6167655f73616c6172795f616464223b733a333a22796573223b733a31383a226d616e6167655f73616c6172795f65646974223b733a333a22796573223b733a32303a226d616e6167655f73616c6172795f64656c657465223b733a333a22796573223b733a31383a226d616e6167655f73616c6172795f76696577223b733a333a22796573223b733a31323a226d616b655f7061796d656e74223b733a333a22796573223b733a363a2276656e646f72223b733a333a22796573223b733a31303a2276656e646f725f616464223b733a333a22796573223b733a31313a2276656e646f725f65646974223b733a333a22796573223b733a31333a2276656e646f725f64656c657465223b733a333a22796573223b733a383a226c6f636174696f6e223b733a333a22796573223b733a31323a226c6f636174696f6e5f616464223b733a333a22796573223b733a31333a226c6f636174696f6e5f65646974223b733a333a22796573223b733a31353a226c6f636174696f6e5f64656c657465223b733a333a22796573223b733a31343a2261737365745f63617465676f7279223b733a333a22796573223b733a31383a2261737365745f63617465676f72795f616464223b733a333a22796573223b733a31393a2261737365745f63617465676f72795f65646974223b733a333a22796573223b733a32313a2261737365745f63617465676f72795f64656c657465223b733a333a22796573223b733a353a226173736574223b733a333a22796573223b733a393a2261737365745f616464223b733a333a22796573223b733a31303a2261737365745f65646974223b733a333a22796573223b733a31323a2261737365745f64656c657465223b733a333a22796573223b733a31303a2261737365745f76696577223b733a333a22796573223b733a31363a2261737365745f61737369676e6d656e74223b733a333a22796573223b733a32303a2261737365745f61737369676e6d656e745f616464223b733a333a22796573223b733a32313a2261737365745f61737369676e6d656e745f65646974223b733a333a22796573223b733a32333a2261737365745f61737369676e6d656e745f64656c657465223b733a333a22796573223b733a32313a2261737365745f61737369676e6d656e745f76696577223b733a333a22796573223b733a383a227075726368617365223b733a333a22796573223b733a31323a2270757263686173655f616464223b733a333a22796573223b733a31333a2270757263686173655f65646974223b733a333a22796573223b733a31353a2270757263686173655f64656c657465223b733a333a22796573223b733a31383a226163746976697469657363617465676f7279223b733a333a22796573223b733a32323a226163746976697469657363617465676f72795f616464223b733a333a22796573223b733a32333a226163746976697469657363617465676f72795f65646974223b733a333a22796573223b733a32353a226163746976697469657363617465676f72795f64656c657465223b733a333a22796573223b733a31303a2261637469766974696573223b733a333a22796573223b733a31343a22616374697669746965735f616464223b733a333a22796573223b733a31373a22616374697669746965735f64656c657465223b733a333a22796573223b733a393a226368696c6463617265223b733a333a22796573223b733a31333a226368696c64636172655f616464223b733a333a22796573223b733a31363a226368696c64636172655f64656c657465223b733a333a22796573223b733a373a226c6d656d626572223b733a333a22796573223b733a31313a226c6d656d6265725f616464223b733a333a22796573223b733a31323a226c6d656d6265725f65646974223b733a333a22796573223b733a31343a226c6d656d6265725f64656c657465223b733a333a22796573223b733a31323a226c6d656d6265725f76696577223b733a333a22796573223b733a343a22626f6f6b223b733a333a22796573223b733a383a22626f6f6b5f616464223b733a333a22796573223b733a393a22626f6f6b5f65646974223b733a333a22796573223b733a31313a22626f6f6b5f64656c657465223b733a333a22796573223b733a353a226973737565223b733a333a22796573223b733a393a2269737375655f616464223b733a333a22796573223b733a31303a2269737375655f65646974223b733a333a22796573223b733a31303a2269737375655f76696577223b733a333a22796573223b733a393a227472616e73706f7274223b733a333a22796573223b733a31333a227472616e73706f72745f616464223b733a333a22796573223b733a31343a227472616e73706f72745f65646974223b733a333a22796573223b733a31363a227472616e73706f72745f64656c657465223b733a333a22796573223b733a373a22746d656d626572223b733a333a22796573223b733a31313a22746d656d6265725f616464223b733a333a22796573223b733a31323a22746d656d6265725f65646974223b733a333a22796573223b733a31343a22746d656d6265725f64656c657465223b733a333a22796573223b733a31323a22746d656d6265725f76696577223b733a333a22796573223b733a363a22686f7374656c223b733a333a22796573223b733a31303a22686f7374656c5f616464223b733a333a22796573223b733a31313a22686f7374656c5f65646974223b733a333a22796573223b733a31333a22686f7374656c5f64656c657465223b733a333a22796573223b733a383a2263617465676f7279223b733a333a22796573223b733a31323a2263617465676f72795f616464223b733a333a22796573223b733a31333a2263617465676f72795f65646974223b733a333a22796573223b733a31353a2263617465676f72795f64656c657465223b733a333a22796573223b733a373a22686d656d626572223b733a333a22796573223b733a31313a22686d656d6265725f616464223b733a333a22796573223b733a31323a22686d656d6265725f65646974223b733a333a22796573223b733a31343a22686d656d6265725f64656c657465223b733a333a22796573223b733a31323a22686d656d6265725f76696577223b733a333a22796573223b733a383a226665657479706573223b733a333a22796573223b733a31323a2266656574797065735f616464223b733a333a22796573223b733a31333a2266656574797065735f65646974223b733a333a22796573223b733a31353a2266656574797065735f64656c657465223b733a333a22796573223b733a373a22696e766f696365223b733a333a22796573223b733a31313a22696e766f6963655f616464223b733a333a22796573223b733a31323a22696e766f6963655f65646974223b733a333a22796573223b733a31343a22696e766f6963655f64656c657465223b733a333a22796573223b733a31323a22696e766f6963655f76696577223b733a333a22796573223b733a31343a227061796d656e74686973746f7279223b733a333a22796573223b733a31393a227061796d656e74686973746f72795f65646974223b733a333a22796573223b733a32313a227061796d656e74686973746f72795f64656c657465223b733a333a22796573223b733a373a22657870656e7365223b733a333a22796573223b733a31313a22657870656e73655f616464223b733a333a22796573223b733a31323a22657870656e73655f65646974223b733a333a22796573223b733a31343a22657870656e73655f64656c657465223b733a333a22796573223b733a363a226e6f74696365223b733a333a22796573223b733a31303a226e6f746963655f616464223b733a333a22796573223b733a31313a226e6f746963655f65646974223b733a333a22796573223b733a31333a226e6f746963655f64656c657465223b733a333a22796573223b733a31313a226e6f746963655f76696577223b733a333a22796573223b733a353a226576656e74223b733a333a22796573223b733a393a226576656e745f616464223b733a333a22796573223b733a31303a226576656e745f65646974223b733a333a22796573223b733a31323a226576656e745f64656c657465223b733a333a22796573223b733a31303a226576656e745f76696577223b733a333a22796573223b733a373a22686f6c69646179223b733a333a22796573223b733a31313a22686f6c696461795f616464223b733a333a22796573223b733a31323a22686f6c696461795f65646974223b733a333a22796573223b733a31343a22686f6c696461795f64656c657465223b733a333a22796573223b733a31323a22686f6c696461795f76696577223b733a333a22796573223b733a363a227265706f7274223b733a333a22796573223b733a32303a227265706f72742f73747564656e747265706f7274223b733a333a22796573223b733a31383a227265706f72742f636c6173737265706f7274223b733a333a22796573223b733a32333a227265706f72742f617474656e64616e63657265706f7274223b733a333a22796573223b733a31383a227265706f72742f6365727469666963617465223b733a333a22796573223b733a31313a2276697369746f72696e666f223b733a333a22796573223b733a31383a2276697369746f72696e666f5f64656c657465223b733a333a22796573223b733a31363a2276697369746f72696e666f5f76696577223b733a333a22796573223b733a31303a227363686f6f6c79656172223b733a333a22796573223b733a31343a227363686f6f6c796561725f616464223b733a333a22796573223b733a31353a227363686f6f6c796561725f65646974223b733a333a22796573223b733a31373a227363686f6f6c796561725f64656c657465223b733a333a22796573223b733a31323a2273747564656e7467726f7570223b733a333a22796573223b733a31363a2273747564656e7467726f75705f616464223b733a333a22796573223b733a31373a2273747564656e7467726f75705f65646974223b733a333a22796573223b733a31393a2273747564656e7467726f75705f64656c657465223b733a333a22796573223b733a383a22636f6d706c61696e223b733a333a22796573223b733a31323a22636f6d706c61696e5f616464223b733a333a22796573223b733a31333a22636f6d706c61696e5f65646974223b733a333a22796573223b733a31353a22636f6d706c61696e5f64656c657465223b733a333a22796573223b733a31333a22636f6d706c61696e5f76696577223b733a333a22796573223b733a32303a2263657274696669636174655f74656d706c617465223b733a333a22796573223b733a32343a2263657274696669636174655f74656d706c6174655f616464223b733a333a22796573223b733a32353a2263657274696669636174655f74656d706c6174655f65646974223b733a333a22796573223b733a32373a2263657274696669636174655f74656d706c6174655f64656c657465223b733a333a22796573223b733a32353a2263657274696669636174655f74656d706c6174655f76696577223b733a333a22796573223b733a31313a2273797374656d61646d696e223b733a333a22796573223b733a31353a2273797374656d61646d696e5f616464223b733a333a22796573223b733a31363a2273797374656d61646d696e5f65646974223b733a333a22796573223b733a31383a2273797374656d61646d696e5f64656c657465223b733a333a22796573223b733a31363a2273797374656d61646d696e5f76696577223b733a333a22796573223b733a31333a22726573657470617373776f7264223b733a333a22796573223b733a31383a226d61696c616e64736d7374656d706c617465223b733a333a22796573223b733a32323a226d61696c616e64736d7374656d706c6174655f616464223b733a333a22796573223b733a32333a226d61696c616e64736d7374656d706c6174655f65646974223b733a333a22796573223b733a32353a226d61696c616e64736d7374656d706c6174655f64656c657465223b733a333a22796573223b733a32333a226d61696c616e64736d7374656d706c6174655f76696577223b733a333a22796573223b733a31303a2262756c6b696d706f7274223b733a333a22796573223b733a363a226261636b7570223b733a333a22796573223b733a383a227573657274797065223b733a333a22796573223b733a31323a2275736572747970655f616464223b733a333a22796573223b733a31333a2275736572747970655f65646974223b733a333a22796573223b733a31353a2275736572747970655f64656c657465223b733a333a22796573223b733a31303a227065726d697373696f6e223b733a333a22796573223b733a363a22757064617465223b733a333a22796573223b733a373a2273657474696e67223b733a333a22796573223b733a31323a2273657474696e675f65646974223b733a333a22796573223b733a31353a227061796d656e7473657474696e6773223b733a333a22796573223b733a31313a22736d7373657474696e6773223b733a333a22796573223b733a353a227061676573223b733a333a22796573223b733a393a2270616765735f616464223b733a333a22796573223b733a31303a2270616765735f65646974223b733a333a22796573223b733a31323a2270616765735f64656c657465223b733a333a22796573223b733a31363a2266726f6e74656e645f73657474696e67223b733a333a22796573223b733a393a2274616b655f6578616d223b733a333a22796573223b7d6572726f727c4e3b);
INSERT INTO `school_sessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES
('qir9e4goog462f4v52eoghup23pi4oa1', '150.107.205.157', 1518180254, 0x5f5f63695f6c6173745f726567656e65726174657c693a313531383138303235343b6c616e677c733a373a22656e676c697368223b6c6f67696e7573657249447c733a313a2231223b6e616d657c733a353a2261646d696e223b656d61696c7c733a32303a227072616b61726b68617240676d61696c2e636f6d223b757365727479706549447c733a313a2231223b75736572747970657c733a353a2241646d696e223b757365726e616d657c733a353a2261646d696e223b70686f746f7c733a31313a2264656661756c742e706e67223b64656661756c747363686f6f6c7965617249447c733a313a2231223b6c6f67676564696e7c623a313b6765745f7065726d697373696f6e7c623a313b6d61737465725f7065726d697373696f6e5f7365747c613a3237393a7b733a393a2264617368626f617264223b733a333a22796573223b733a373a2273747564656e74223b733a333a22796573223b733a31313a2273747564656e745f616464223b733a333a22796573223b733a31323a2273747564656e745f65646974223b733a333a22796573223b733a31343a2273747564656e745f64656c657465223b733a333a22796573223b733a31323a2273747564656e745f76696577223b733a333a22796573223b733a373a22706172656e7473223b733a333a22796573223b733a31313a22706172656e74735f616464223b733a333a22796573223b733a31323a22706172656e74735f65646974223b733a333a22796573223b733a31343a22706172656e74735f64656c657465223b733a333a22796573223b733a31323a22706172656e74735f76696577223b733a333a22796573223b733a373a2274656163686572223b733a333a22796573223b733a31313a22746561636865725f616464223b733a333a22796573223b733a31323a22746561636865725f65646974223b733a333a22796573223b733a31343a22746561636865725f64656c657465223b733a333a22796573223b733a31323a22746561636865725f76696577223b733a333a22796573223b733a343a2275736572223b733a333a22796573223b733a383a22757365725f616464223b733a333a22796573223b733a393a22757365725f65646974223b733a333a22796573223b733a31313a22757365725f64656c657465223b733a333a22796573223b733a393a22757365725f76696577223b733a333a22796573223b733a373a22636c6173736573223b733a333a22796573223b733a31313a22636c61737365735f616464223b733a333a22796573223b733a31323a22636c61737365735f65646974223b733a333a22796573223b733a31343a22636c61737365735f64656c657465223b733a333a22796573223b733a373a227375626a656374223b733a333a22796573223b733a31313a227375626a6563745f616464223b733a333a22796573223b733a31323a227375626a6563745f65646974223b733a333a22796573223b733a31343a227375626a6563745f64656c657465223b733a333a22796573223b733a373a2273656374696f6e223b733a333a22796573223b733a31313a2273656374696f6e5f616464223b733a333a22796573223b733a31323a2273656374696f6e5f65646974223b733a333a22796573223b733a31353a2273656d65737465725f64656c657465223b733a333a22796573223b733a31343a2273656374696f6e5f64656c657465223b733a333a22796573223b733a383a2273796c6c61627573223b733a333a22796573223b733a31323a2273796c6c616275735f616464223b733a333a22796573223b733a31333a2273796c6c616275735f65646974223b733a333a22796573223b733a31353a2273796c6c616275735f64656c657465223b733a333a22796573223b733a31303a2261737369676e6d656e74223b733a333a22796573223b733a31343a2261737369676e6d656e745f616464223b733a333a22796573223b733a31353a2261737369676e6d656e745f65646974223b733a333a22796573223b733a31373a2261737369676e6d656e745f64656c657465223b733a333a22796573223b733a31353a2261737369676e6d656e745f76696577223b733a333a22796573223b733a373a22726f7574696e65223b733a333a22796573223b733a31313a22726f7574696e655f616464223b733a333a22796573223b733a31323a22726f7574696e655f65646974223b733a333a22796573223b733a31343a22726f7574696e655f64656c657465223b733a333a22796573223b733a31313a2273617474656e64616e6365223b733a333a22796573223b733a31353a2273617474656e64616e63655f616464223b733a333a22796573223b733a31363a2273617474656e64616e63655f76696577223b733a333a22796573223b733a31313a2274617474656e64616e6365223b733a333a22796573223b733a31353a2274617474656e64616e63655f616464223b733a333a22796573223b733a31363a2274617474656e64616e63655f76696577223b733a333a22796573223b733a31313a2275617474656e64616e6365223b733a333a22796573223b733a31353a2275617474656e64616e63655f616464223b733a333a22796573223b733a31363a2275617474656e64616e63655f76696577223b733a333a22796573223b733a343a226578616d223b733a333a22796573223b733a383a226578616d5f616464223b733a333a22796573223b733a393a226578616d5f65646974223b733a333a22796573223b733a31313a226578616d5f64656c657465223b733a333a22796573223b733a31323a226578616d7363686564756c65223b733a333a22796573223b733a31363a226578616d7363686564756c655f616464223b733a333a22796573223b733a31373a226578616d7363686564756c655f65646974223b733a333a22796573223b733a31393a226578616d7363686564756c655f64656c657465223b733a333a22796573223b733a353a226772616465223b733a333a22796573223b733a393a2267726164655f616464223b733a333a22796573223b733a31303a2267726164655f65646974223b733a333a22796573223b733a31323a2267726164655f64656c657465223b733a333a22796573223b733a31313a2265617474656e64616e6365223b733a333a22796573223b733a31353a2265617474656e64616e63655f616464223b733a333a22796573223b733a343a226d61726b223b733a333a22796573223b733a383a226d61726b5f616464223b733a333a22796573223b733a393a226d61726b5f76696577223b733a333a22796573223b733a31343a226d61726b70657263656e74616765223b733a333a22796573223b733a31383a226d61726b70657263656e746167655f616464223b733a333a22796573223b733a31393a226d61726b70657263656e746167655f65646974223b733a333a22796573223b733a32313a226d61726b70657263656e746167655f64656c657465223b733a333a22796573223b733a393a2270726f6d6f74696f6e223b733a333a22796573223b733a31323a22636f6e766572736174696f6e223b733a333a22796573223b733a353a226d65646961223b733a333a22796573223b733a393a226d656469615f616464223b733a333a22796573223b733a31323a226d656469615f64656c657465223b733a333a22796573223b733a31303a226d61696c616e64736d73223b733a333a22796573223b733a31343a226d61696c616e64736d735f616464223b733a333a22796573223b733a31353a226d61696c616e64736d735f76696577223b733a333a22796573223b733a31343a227175657374696f6e5f67726f7570223b733a333a22796573223b733a31383a227175657374696f6e5f67726f75705f616464223b733a333a22796573223b733a31393a227175657374696f6e5f67726f75705f65646974223b733a333a22796573223b733a32313a227175657374696f6e5f67726f75705f64656c657465223b733a333a22796573223b733a31343a227175657374696f6e5f6c6576656c223b733a333a22796573223b733a31383a227175657374696f6e5f6c6576656c5f616464223b733a333a22796573223b733a31393a227175657374696f6e5f6c6576656c5f65646974223b733a333a22796573223b733a32313a227175657374696f6e5f6c6576656c5f64656c657465223b733a333a22796573223b733a31333a227175657374696f6e5f62616e6b223b733a333a22796573223b733a31373a227175657374696f6e5f62616e6b5f616464223b733a333a22796573223b733a31383a227175657374696f6e5f62616e6b5f65646974223b733a333a22796573223b733a32303a227175657374696f6e5f62616e6b5f64656c657465223b733a333a22796573223b733a31383a227175657374696f6e5f62616e6b5f76696577223b733a333a22796573223b733a31313a226f6e6c696e655f6578616d223b733a333a22796573223b733a31353a226f6e6c696e655f6578616d5f616464223b733a333a22796573223b733a31363a226f6e6c696e655f6578616d5f65646974223b733a333a22796573223b733a31383a226f6e6c696e655f6578616d5f64656c657465223b733a333a22796573223b733a31313a22696e737472756374696f6e223b733a333a22796573223b733a31353a22696e737472756374696f6e5f616464223b733a333a22796573223b733a31363a22696e737472756374696f6e5f65646974223b733a333a22796573223b733a31383a22696e737472756374696f6e5f64656c657465223b733a333a22796573223b733a31363a22696e737472756374696f6e5f76696577223b733a333a22796573223b733a31353a2273616c6172795f74656d706c617465223b733a333a22796573223b733a31393a2273616c6172795f74656d706c6174655f616464223b733a333a22796573223b733a32303a2273616c6172795f74656d706c6174655f65646974223b733a333a22796573223b733a32323a2273616c6172795f74656d706c6174655f64656c657465223b733a333a22796573223b733a32303a2273616c6172795f74656d706c6174655f76696577223b733a333a22796573223b733a31353a22686f75726c795f74656d706c617465223b733a333a22796573223b733a31393a22686f75726c795f74656d706c6174655f616464223b733a333a22796573223b733a32303a22686f75726c795f74656d706c6174655f65646974223b733a333a22796573223b733a32323a22686f75726c795f74656d706c6174655f64656c657465223b733a333a22796573223b733a31333a226d616e6167655f73616c617279223b733a333a22796573223b733a31373a226d616e6167655f73616c6172795f616464223b733a333a22796573223b733a31383a226d616e6167655f73616c6172795f65646974223b733a333a22796573223b733a32303a226d616e6167655f73616c6172795f64656c657465223b733a333a22796573223b733a31383a226d616e6167655f73616c6172795f76696577223b733a333a22796573223b733a31323a226d616b655f7061796d656e74223b733a333a22796573223b733a363a2276656e646f72223b733a333a22796573223b733a31303a2276656e646f725f616464223b733a333a22796573223b733a31313a2276656e646f725f65646974223b733a333a22796573223b733a31333a2276656e646f725f64656c657465223b733a333a22796573223b733a383a226c6f636174696f6e223b733a333a22796573223b733a31323a226c6f636174696f6e5f616464223b733a333a22796573223b733a31333a226c6f636174696f6e5f65646974223b733a333a22796573223b733a31353a226c6f636174696f6e5f64656c657465223b733a333a22796573223b733a31343a2261737365745f63617465676f7279223b733a333a22796573223b733a31383a2261737365745f63617465676f72795f616464223b733a333a22796573223b733a31393a2261737365745f63617465676f72795f65646974223b733a333a22796573223b733a32313a2261737365745f63617465676f72795f64656c657465223b733a333a22796573223b733a353a226173736574223b733a333a22796573223b733a393a2261737365745f616464223b733a333a22796573223b733a31303a2261737365745f65646974223b733a333a22796573223b733a31323a2261737365745f64656c657465223b733a333a22796573223b733a31303a2261737365745f76696577223b733a333a22796573223b733a31363a2261737365745f61737369676e6d656e74223b733a333a22796573223b733a32303a2261737365745f61737369676e6d656e745f616464223b733a333a22796573223b733a32313a2261737365745f61737369676e6d656e745f65646974223b733a333a22796573223b733a32333a2261737365745f61737369676e6d656e745f64656c657465223b733a333a22796573223b733a32313a2261737365745f61737369676e6d656e745f76696577223b733a333a22796573223b733a383a227075726368617365223b733a333a22796573223b733a31323a2270757263686173655f616464223b733a333a22796573223b733a31333a2270757263686173655f65646974223b733a333a22796573223b733a31353a2270757263686173655f64656c657465223b733a333a22796573223b733a31383a226163746976697469657363617465676f7279223b733a333a22796573223b733a32323a226163746976697469657363617465676f72795f616464223b733a333a22796573223b733a32333a226163746976697469657363617465676f72795f65646974223b733a333a22796573223b733a32353a226163746976697469657363617465676f72795f64656c657465223b733a333a22796573223b733a31303a2261637469766974696573223b733a333a22796573223b733a31343a22616374697669746965735f616464223b733a333a22796573223b733a31373a22616374697669746965735f64656c657465223b733a333a22796573223b733a393a226368696c6463617265223b733a333a22796573223b733a31333a226368696c64636172655f616464223b733a333a22796573223b733a31363a226368696c64636172655f64656c657465223b733a333a22796573223b733a373a226c6d656d626572223b733a333a22796573223b733a31313a226c6d656d6265725f616464223b733a333a22796573223b733a31323a226c6d656d6265725f65646974223b733a333a22796573223b733a31343a226c6d656d6265725f64656c657465223b733a333a22796573223b733a31323a226c6d656d6265725f76696577223b733a333a22796573223b733a343a22626f6f6b223b733a333a22796573223b733a383a22626f6f6b5f616464223b733a333a22796573223b733a393a22626f6f6b5f65646974223b733a333a22796573223b733a31313a22626f6f6b5f64656c657465223b733a333a22796573223b733a353a226973737565223b733a333a22796573223b733a393a2269737375655f616464223b733a333a22796573223b733a31303a2269737375655f65646974223b733a333a22796573223b733a31303a2269737375655f76696577223b733a333a22796573223b733a393a227472616e73706f7274223b733a333a22796573223b733a31333a227472616e73706f72745f616464223b733a333a22796573223b733a31343a227472616e73706f72745f65646974223b733a333a22796573223b733a31363a227472616e73706f72745f64656c657465223b733a333a22796573223b733a373a22746d656d626572223b733a333a22796573223b733a31313a22746d656d6265725f616464223b733a333a22796573223b733a31323a22746d656d6265725f65646974223b733a333a22796573223b733a31343a22746d656d6265725f64656c657465223b733a333a22796573223b733a31323a22746d656d6265725f76696577223b733a333a22796573223b733a363a22686f7374656c223b733a333a22796573223b733a31303a22686f7374656c5f616464223b733a333a22796573223b733a31313a22686f7374656c5f65646974223b733a333a22796573223b733a31333a22686f7374656c5f64656c657465223b733a333a22796573223b733a383a2263617465676f7279223b733a333a22796573223b733a31323a2263617465676f72795f616464223b733a333a22796573223b733a31333a2263617465676f72795f65646974223b733a333a22796573223b733a31353a2263617465676f72795f64656c657465223b733a333a22796573223b733a373a22686d656d626572223b733a333a22796573223b733a31313a22686d656d6265725f616464223b733a333a22796573223b733a31323a22686d656d6265725f65646974223b733a333a22796573223b733a31343a22686d656d6265725f64656c657465223b733a333a22796573223b733a31323a22686d656d6265725f76696577223b733a333a22796573223b733a383a226665657479706573223b733a333a22796573223b733a31323a2266656574797065735f616464223b733a333a22796573223b733a31333a2266656574797065735f65646974223b733a333a22796573223b733a31353a2266656574797065735f64656c657465223b733a333a22796573223b733a373a22696e766f696365223b733a333a22796573223b733a31313a22696e766f6963655f616464223b733a333a22796573223b733a31323a22696e766f6963655f65646974223b733a333a22796573223b733a31343a22696e766f6963655f64656c657465223b733a333a22796573223b733a31323a22696e766f6963655f76696577223b733a333a22796573223b733a31343a227061796d656e74686973746f7279223b733a333a22796573223b733a31393a227061796d656e74686973746f72795f65646974223b733a333a22796573223b733a32313a227061796d656e74686973746f72795f64656c657465223b733a333a22796573223b733a373a22657870656e7365223b733a333a22796573223b733a31313a22657870656e73655f616464223b733a333a22796573223b733a31323a22657870656e73655f65646974223b733a333a22796573223b733a31343a22657870656e73655f64656c657465223b733a333a22796573223b733a363a226e6f74696365223b733a333a22796573223b733a31303a226e6f746963655f616464223b733a333a22796573223b733a31313a226e6f746963655f65646974223b733a333a22796573223b733a31333a226e6f746963655f64656c657465223b733a333a22796573223b733a31313a226e6f746963655f76696577223b733a333a22796573223b733a353a226576656e74223b733a333a22796573223b733a393a226576656e745f616464223b733a333a22796573223b733a31303a226576656e745f65646974223b733a333a22796573223b733a31323a226576656e745f64656c657465223b733a333a22796573223b733a31303a226576656e745f76696577223b733a333a22796573223b733a373a22686f6c69646179223b733a333a22796573223b733a31313a22686f6c696461795f616464223b733a333a22796573223b733a31323a22686f6c696461795f65646974223b733a333a22796573223b733a31343a22686f6c696461795f64656c657465223b733a333a22796573223b733a31323a22686f6c696461795f76696577223b733a333a22796573223b733a363a227265706f7274223b733a333a22796573223b733a32303a227265706f72742f73747564656e747265706f7274223b733a333a22796573223b733a31383a227265706f72742f636c6173737265706f7274223b733a333a22796573223b733a32333a227265706f72742f617474656e64616e63657265706f7274223b733a333a22796573223b733a31383a227265706f72742f6365727469666963617465223b733a333a22796573223b733a31313a2276697369746f72696e666f223b733a333a22796573223b733a31383a2276697369746f72696e666f5f64656c657465223b733a333a22796573223b733a31363a2276697369746f72696e666f5f76696577223b733a333a22796573223b733a31303a227363686f6f6c79656172223b733a333a22796573223b733a31343a227363686f6f6c796561725f616464223b733a333a22796573223b733a31353a227363686f6f6c796561725f65646974223b733a333a22796573223b733a31373a227363686f6f6c796561725f64656c657465223b733a333a22796573223b733a31323a2273747564656e7467726f7570223b733a333a22796573223b733a31363a2273747564656e7467726f75705f616464223b733a333a22796573223b733a31373a2273747564656e7467726f75705f65646974223b733a333a22796573223b733a31393a2273747564656e7467726f75705f64656c657465223b733a333a22796573223b733a383a22636f6d706c61696e223b733a333a22796573223b733a31323a22636f6d706c61696e5f616464223b733a333a22796573223b733a31333a22636f6d706c61696e5f65646974223b733a333a22796573223b733a31353a22636f6d706c61696e5f64656c657465223b733a333a22796573223b733a31333a22636f6d706c61696e5f76696577223b733a333a22796573223b733a32303a2263657274696669636174655f74656d706c617465223b733a333a22796573223b733a32343a2263657274696669636174655f74656d706c6174655f616464223b733a333a22796573223b733a32353a2263657274696669636174655f74656d706c6174655f65646974223b733a333a22796573223b733a32373a2263657274696669636174655f74656d706c6174655f64656c657465223b733a333a22796573223b733a32353a2263657274696669636174655f74656d706c6174655f76696577223b733a333a22796573223b733a31313a2273797374656d61646d696e223b733a333a22796573223b733a31353a2273797374656d61646d696e5f616464223b733a333a22796573223b733a31363a2273797374656d61646d696e5f65646974223b733a333a22796573223b733a31383a2273797374656d61646d696e5f64656c657465223b733a333a22796573223b733a31363a2273797374656d61646d696e5f76696577223b733a333a22796573223b733a31333a22726573657470617373776f7264223b733a333a22796573223b733a31383a226d61696c616e64736d7374656d706c617465223b733a333a22796573223b733a32323a226d61696c616e64736d7374656d706c6174655f616464223b733a333a22796573223b733a32333a226d61696c616e64736d7374656d706c6174655f65646974223b733a333a22796573223b733a32353a226d61696c616e64736d7374656d706c6174655f64656c657465223b733a333a22796573223b733a32333a226d61696c616e64736d7374656d706c6174655f76696577223b733a333a22796573223b733a31303a2262756c6b696d706f7274223b733a333a22796573223b733a363a226261636b7570223b733a333a22796573223b733a383a227573657274797065223b733a333a22796573223b733a31323a2275736572747970655f616464223b733a333a22796573223b733a31333a2275736572747970655f65646974223b733a333a22796573223b733a31353a2275736572747970655f64656c657465223b733a333a22796573223b733a31303a227065726d697373696f6e223b733a333a22796573223b733a363a22757064617465223b733a333a22796573223b733a373a2273657474696e67223b733a333a22796573223b733a31323a2273657474696e675f65646974223b733a333a22796573223b733a31353a227061796d656e7473657474696e6773223b733a333a22796573223b733a31313a22736d7373657474696e6773223b733a333a22796573223b733a353a227061676573223b733a333a22796573223b733a393a2270616765735f616464223b733a333a22796573223b733a31303a2270616765735f65646974223b733a333a22796573223b733a31323a2270616765735f64656c657465223b733a333a22796573223b733a31363a2266726f6e74656e645f73657474696e67223b733a333a22796573223b733a393a2274616b655f6578616d223b733a333a22796573223b7d6572726f727c4e3b737563636573737c733a373a2253756363657373223b5f5f63695f766172737c613a313a7b733a373a2273756363657373223b733a333a226f6c64223b7d),
('ji0ce0jjif2orgc04vn8gjmubgqhglsa', '150.107.205.157', 1518180282, 0x5f5f63695f6c6173745f726567656e65726174657c693a313531383138303238323b),
('tk915qm4jn499hkn4gg6a62tdklgv233', '150.107.205.157', 1518180283, 0x5f5f63695f6c6173745f726567656e65726174657c693a313531383138303238333b),
('q5rir4m1dmnda2tcolomcojmrn47tppq', '183.82.231.176', 1518190946, 0x5f5f63695f6c6173745f726567656e65726174657c693a313531383139303934363b),
('ueqha5bqtjtmeltu2201fbi8hlr5jvbc', '142.234.162.5', 1518248314, 0x5f5f63695f6c6173745f726567656e65726174657c693a313531383234383034353b6c616e677c733a373a22656e676c697368223b6c6f67696e7573657249447c733a313a2231223b6e616d657c733a353a2261646d696e223b656d61696c7c733a32303a227072616b61726b68617240676d61696c2e636f6d223b757365727479706549447c733a313a2231223b75736572747970657c733a353a2241646d696e223b757365726e616d657c733a353a2261646d696e223b70686f746f7c733a31313a2264656661756c742e706e67223b64656661756c747363686f6f6c7965617249447c733a313a2231223b6c6f67676564696e7c623a313b6765745f7065726d697373696f6e7c623a313b6d61737465725f7065726d697373696f6e5f7365747c613a3237393a7b733a393a2264617368626f617264223b733a333a22796573223b733a373a2273747564656e74223b733a333a22796573223b733a31313a2273747564656e745f616464223b733a333a22796573223b733a31323a2273747564656e745f65646974223b733a333a22796573223b733a31343a2273747564656e745f64656c657465223b733a333a22796573223b733a31323a2273747564656e745f76696577223b733a333a22796573223b733a373a22706172656e7473223b733a333a22796573223b733a31313a22706172656e74735f616464223b733a333a22796573223b733a31323a22706172656e74735f65646974223b733a333a22796573223b733a31343a22706172656e74735f64656c657465223b733a333a22796573223b733a31323a22706172656e74735f76696577223b733a333a22796573223b733a373a2274656163686572223b733a333a22796573223b733a31313a22746561636865725f616464223b733a333a22796573223b733a31323a22746561636865725f65646974223b733a333a22796573223b733a31343a22746561636865725f64656c657465223b733a333a22796573223b733a31323a22746561636865725f76696577223b733a333a22796573223b733a343a2275736572223b733a333a22796573223b733a383a22757365725f616464223b733a333a22796573223b733a393a22757365725f65646974223b733a333a22796573223b733a31313a22757365725f64656c657465223b733a333a22796573223b733a393a22757365725f76696577223b733a333a22796573223b733a373a22636c6173736573223b733a333a22796573223b733a31313a22636c61737365735f616464223b733a333a22796573223b733a31323a22636c61737365735f65646974223b733a333a22796573223b733a31343a22636c61737365735f64656c657465223b733a333a22796573223b733a373a227375626a656374223b733a333a22796573223b733a31313a227375626a6563745f616464223b733a333a22796573223b733a31323a227375626a6563745f65646974223b733a333a22796573223b733a31343a227375626a6563745f64656c657465223b733a333a22796573223b733a373a2273656374696f6e223b733a333a22796573223b733a31313a2273656374696f6e5f616464223b733a333a22796573223b733a31323a2273656374696f6e5f65646974223b733a333a22796573223b733a31353a2273656d65737465725f64656c657465223b733a333a22796573223b733a31343a2273656374696f6e5f64656c657465223b733a333a22796573223b733a383a2273796c6c61627573223b733a333a22796573223b733a31323a2273796c6c616275735f616464223b733a333a22796573223b733a31333a2273796c6c616275735f65646974223b733a333a22796573223b733a31353a2273796c6c616275735f64656c657465223b733a333a22796573223b733a31303a2261737369676e6d656e74223b733a333a22796573223b733a31343a2261737369676e6d656e745f616464223b733a333a22796573223b733a31353a2261737369676e6d656e745f65646974223b733a333a22796573223b733a31373a2261737369676e6d656e745f64656c657465223b733a333a22796573223b733a31353a2261737369676e6d656e745f76696577223b733a333a22796573223b733a373a22726f7574696e65223b733a333a22796573223b733a31313a22726f7574696e655f616464223b733a333a22796573223b733a31323a22726f7574696e655f65646974223b733a333a22796573223b733a31343a22726f7574696e655f64656c657465223b733a333a22796573223b733a31313a2273617474656e64616e6365223b733a333a22796573223b733a31353a2273617474656e64616e63655f616464223b733a333a22796573223b733a31363a2273617474656e64616e63655f76696577223b733a333a22796573223b733a31313a2274617474656e64616e6365223b733a333a22796573223b733a31353a2274617474656e64616e63655f616464223b733a333a22796573223b733a31363a2274617474656e64616e63655f76696577223b733a333a22796573223b733a31313a2275617474656e64616e6365223b733a333a22796573223b733a31353a2275617474656e64616e63655f616464223b733a333a22796573223b733a31363a2275617474656e64616e63655f76696577223b733a333a22796573223b733a343a226578616d223b733a333a22796573223b733a383a226578616d5f616464223b733a333a22796573223b733a393a226578616d5f65646974223b733a333a22796573223b733a31313a226578616d5f64656c657465223b733a333a22796573223b733a31323a226578616d7363686564756c65223b733a333a22796573223b733a31363a226578616d7363686564756c655f616464223b733a333a22796573223b733a31373a226578616d7363686564756c655f65646974223b733a333a22796573223b733a31393a226578616d7363686564756c655f64656c657465223b733a333a22796573223b733a353a226772616465223b733a333a22796573223b733a393a2267726164655f616464223b733a333a22796573223b733a31303a2267726164655f65646974223b733a333a22796573223b733a31323a2267726164655f64656c657465223b733a333a22796573223b733a31313a2265617474656e64616e6365223b733a333a22796573223b733a31353a2265617474656e64616e63655f616464223b733a333a22796573223b733a343a226d61726b223b733a333a22796573223b733a383a226d61726b5f616464223b733a333a22796573223b733a393a226d61726b5f76696577223b733a333a22796573223b733a31343a226d61726b70657263656e74616765223b733a333a22796573223b733a31383a226d61726b70657263656e746167655f616464223b733a333a22796573223b733a31393a226d61726b70657263656e746167655f65646974223b733a333a22796573223b733a32313a226d61726b70657263656e746167655f64656c657465223b733a333a22796573223b733a393a2270726f6d6f74696f6e223b733a333a22796573223b733a31323a22636f6e766572736174696f6e223b733a333a22796573223b733a353a226d65646961223b733a333a22796573223b733a393a226d656469615f616464223b733a333a22796573223b733a31323a226d656469615f64656c657465223b733a333a22796573223b733a31303a226d61696c616e64736d73223b733a333a22796573223b733a31343a226d61696c616e64736d735f616464223b733a333a22796573223b733a31353a226d61696c616e64736d735f76696577223b733a333a22796573223b733a31343a227175657374696f6e5f67726f7570223b733a333a22796573223b733a31383a227175657374696f6e5f67726f75705f616464223b733a333a22796573223b733a31393a227175657374696f6e5f67726f75705f65646974223b733a333a22796573223b733a32313a227175657374696f6e5f67726f75705f64656c657465223b733a333a22796573223b733a31343a227175657374696f6e5f6c6576656c223b733a333a22796573223b733a31383a227175657374696f6e5f6c6576656c5f616464223b733a333a22796573223b733a31393a227175657374696f6e5f6c6576656c5f65646974223b733a333a22796573223b733a32313a227175657374696f6e5f6c6576656c5f64656c657465223b733a333a22796573223b733a31333a227175657374696f6e5f62616e6b223b733a333a22796573223b733a31373a227175657374696f6e5f62616e6b5f616464223b733a333a22796573223b733a31383a227175657374696f6e5f62616e6b5f65646974223b733a333a22796573223b733a32303a227175657374696f6e5f62616e6b5f64656c657465223b733a333a22796573223b733a31383a227175657374696f6e5f62616e6b5f76696577223b733a333a22796573223b733a31313a226f6e6c696e655f6578616d223b733a333a22796573223b733a31353a226f6e6c696e655f6578616d5f616464223b733a333a22796573223b733a31363a226f6e6c696e655f6578616d5f65646974223b733a333a22796573223b733a31383a226f6e6c696e655f6578616d5f64656c657465223b733a333a22796573223b733a31313a22696e737472756374696f6e223b733a333a22796573223b733a31353a22696e737472756374696f6e5f616464223b733a333a22796573223b733a31363a22696e737472756374696f6e5f65646974223b733a333a22796573223b733a31383a22696e737472756374696f6e5f64656c657465223b733a333a22796573223b733a31363a22696e737472756374696f6e5f76696577223b733a333a22796573223b733a31353a2273616c6172795f74656d706c617465223b733a333a22796573223b733a31393a2273616c6172795f74656d706c6174655f616464223b733a333a22796573223b733a32303a2273616c6172795f74656d706c6174655f65646974223b733a333a22796573223b733a32323a2273616c6172795f74656d706c6174655f64656c657465223b733a333a22796573223b733a32303a2273616c6172795f74656d706c6174655f76696577223b733a333a22796573223b733a31353a22686f75726c795f74656d706c617465223b733a333a22796573223b733a31393a22686f75726c795f74656d706c6174655f616464223b733a333a22796573223b733a32303a22686f75726c795f74656d706c6174655f65646974223b733a333a22796573223b733a32323a22686f75726c795f74656d706c6174655f64656c657465223b733a333a22796573223b733a31333a226d616e6167655f73616c617279223b733a333a22796573223b733a31373a226d616e6167655f73616c6172795f616464223b733a333a22796573223b733a31383a226d616e6167655f73616c6172795f65646974223b733a333a22796573223b733a32303a226d616e6167655f73616c6172795f64656c657465223b733a333a22796573223b733a31383a226d616e6167655f73616c6172795f76696577223b733a333a22796573223b733a31323a226d616b655f7061796d656e74223b733a333a22796573223b733a363a2276656e646f72223b733a333a22796573223b733a31303a2276656e646f725f616464223b733a333a22796573223b733a31313a2276656e646f725f65646974223b733a333a22796573223b733a31333a2276656e646f725f64656c657465223b733a333a22796573223b733a383a226c6f636174696f6e223b733a333a22796573223b733a31323a226c6f636174696f6e5f616464223b733a333a22796573223b733a31333a226c6f636174696f6e5f65646974223b733a333a22796573223b733a31353a226c6f636174696f6e5f64656c657465223b733a333a22796573223b733a31343a2261737365745f63617465676f7279223b733a333a22796573223b733a31383a2261737365745f63617465676f72795f616464223b733a333a22796573223b733a31393a2261737365745f63617465676f72795f65646974223b733a333a22796573223b733a32313a2261737365745f63617465676f72795f64656c657465223b733a333a22796573223b733a353a226173736574223b733a333a22796573223b733a393a2261737365745f616464223b733a333a22796573223b733a31303a2261737365745f65646974223b733a333a22796573223b733a31323a2261737365745f64656c657465223b733a333a22796573223b733a31303a2261737365745f76696577223b733a333a22796573223b733a31363a2261737365745f61737369676e6d656e74223b733a333a22796573223b733a32303a2261737365745f61737369676e6d656e745f616464223b733a333a22796573223b733a32313a2261737365745f61737369676e6d656e745f65646974223b733a333a22796573223b733a32333a2261737365745f61737369676e6d656e745f64656c657465223b733a333a22796573223b733a32313a2261737365745f61737369676e6d656e745f76696577223b733a333a22796573223b733a383a227075726368617365223b733a333a22796573223b733a31323a2270757263686173655f616464223b733a333a22796573223b733a31333a2270757263686173655f65646974223b733a333a22796573223b733a31353a2270757263686173655f64656c657465223b733a333a22796573223b733a31383a226163746976697469657363617465676f7279223b733a333a22796573223b733a32323a226163746976697469657363617465676f72795f616464223b733a333a22796573223b733a32333a226163746976697469657363617465676f72795f65646974223b733a333a22796573223b733a32353a226163746976697469657363617465676f72795f64656c657465223b733a333a22796573223b733a31303a2261637469766974696573223b733a333a22796573223b733a31343a22616374697669746965735f616464223b733a333a22796573223b733a31373a22616374697669746965735f64656c657465223b733a333a22796573223b733a393a226368696c6463617265223b733a333a22796573223b733a31333a226368696c64636172655f616464223b733a333a22796573223b733a31363a226368696c64636172655f64656c657465223b733a333a22796573223b733a373a226c6d656d626572223b733a333a22796573223b733a31313a226c6d656d6265725f616464223b733a333a22796573223b733a31323a226c6d656d6265725f65646974223b733a333a22796573223b733a31343a226c6d656d6265725f64656c657465223b733a333a22796573223b733a31323a226c6d656d6265725f76696577223b733a333a22796573223b733a343a22626f6f6b223b733a333a22796573223b733a383a22626f6f6b5f616464223b733a333a22796573223b733a393a22626f6f6b5f65646974223b733a333a22796573223b733a31313a22626f6f6b5f64656c657465223b733a333a22796573223b733a353a226973737565223b733a333a22796573223b733a393a2269737375655f616464223b733a333a22796573223b733a31303a2269737375655f65646974223b733a333a22796573223b733a31303a2269737375655f76696577223b733a333a22796573223b733a393a227472616e73706f7274223b733a333a22796573223b733a31333a227472616e73706f72745f616464223b733a333a22796573223b733a31343a227472616e73706f72745f65646974223b733a333a22796573223b733a31363a227472616e73706f72745f64656c657465223b733a333a22796573223b733a373a22746d656d626572223b733a333a22796573223b733a31313a22746d656d6265725f616464223b733a333a22796573223b733a31323a22746d656d6265725f65646974223b733a333a22796573223b733a31343a22746d656d6265725f64656c657465223b733a333a22796573223b733a31323a22746d656d6265725f76696577223b733a333a22796573223b733a363a22686f7374656c223b733a333a22796573223b733a31303a22686f7374656c5f616464223b733a333a22796573223b733a31313a22686f7374656c5f65646974223b733a333a22796573223b733a31333a22686f7374656c5f64656c657465223b733a333a22796573223b733a383a2263617465676f7279223b733a333a22796573223b733a31323a2263617465676f72795f616464223b733a333a22796573223b733a31333a2263617465676f72795f65646974223b733a333a22796573223b733a31353a2263617465676f72795f64656c657465223b733a333a22796573223b733a373a22686d656d626572223b733a333a22796573223b733a31313a22686d656d6265725f616464223b733a333a22796573223b733a31323a22686d656d6265725f65646974223b733a333a22796573223b733a31343a22686d656d6265725f64656c657465223b733a333a22796573223b733a31323a22686d656d6265725f76696577223b733a333a22796573223b733a383a226665657479706573223b733a333a22796573223b733a31323a2266656574797065735f616464223b733a333a22796573223b733a31333a2266656574797065735f65646974223b733a333a22796573223b733a31353a2266656574797065735f64656c657465223b733a333a22796573223b733a373a22696e766f696365223b733a333a22796573223b733a31313a22696e766f6963655f616464223b733a333a22796573223b733a31323a22696e766f6963655f65646974223b733a333a22796573223b733a31343a22696e766f6963655f64656c657465223b733a333a22796573223b733a31323a22696e766f6963655f76696577223b733a333a22796573223b733a31343a227061796d656e74686973746f7279223b733a333a22796573223b733a31393a227061796d656e74686973746f72795f65646974223b733a333a22796573223b733a32313a227061796d656e74686973746f72795f64656c657465223b733a333a22796573223b733a373a22657870656e7365223b733a333a22796573223b733a31313a22657870656e73655f616464223b733a333a22796573223b733a31323a22657870656e73655f65646974223b733a333a22796573223b733a31343a22657870656e73655f64656c657465223b733a333a22796573223b733a363a226e6f74696365223b733a333a22796573223b733a31303a226e6f746963655f616464223b733a333a22796573223b733a31313a226e6f746963655f65646974223b733a333a22796573223b733a31333a226e6f746963655f64656c657465223b733a333a22796573223b733a31313a226e6f746963655f76696577223b733a333a22796573223b733a353a226576656e74223b733a333a22796573223b733a393a226576656e745f616464223b733a333a22796573223b733a31303a226576656e745f65646974223b733a333a22796573223b733a31323a226576656e745f64656c657465223b733a333a22796573223b733a31303a226576656e745f76696577223b733a333a22796573223b733a373a22686f6c69646179223b733a333a22796573223b733a31313a22686f6c696461795f616464223b733a333a22796573223b733a31323a22686f6c696461795f65646974223b733a333a22796573223b733a31343a22686f6c696461795f64656c657465223b733a333a22796573223b733a31323a22686f6c696461795f76696577223b733a333a22796573223b733a363a227265706f7274223b733a333a22796573223b733a32303a227265706f72742f73747564656e747265706f7274223b733a333a22796573223b733a31383a227265706f72742f636c6173737265706f7274223b733a333a22796573223b733a32333a227265706f72742f617474656e64616e63657265706f7274223b733a333a22796573223b733a31383a227265706f72742f6365727469666963617465223b733a333a22796573223b733a31313a2276697369746f72696e666f223b733a333a22796573223b733a31383a2276697369746f72696e666f5f64656c657465223b733a333a22796573223b733a31363a2276697369746f72696e666f5f76696577223b733a333a22796573223b733a31303a227363686f6f6c79656172223b733a333a22796573223b733a31343a227363686f6f6c796561725f616464223b733a333a22796573223b733a31353a227363686f6f6c796561725f65646974223b733a333a22796573223b733a31373a227363686f6f6c796561725f64656c657465223b733a333a22796573223b733a31323a2273747564656e7467726f7570223b733a333a22796573223b733a31363a2273747564656e7467726f75705f616464223b733a333a22796573223b733a31373a2273747564656e7467726f75705f65646974223b733a333a22796573223b733a31393a2273747564656e7467726f75705f64656c657465223b733a333a22796573223b733a383a22636f6d706c61696e223b733a333a22796573223b733a31323a22636f6d706c61696e5f616464223b733a333a22796573223b733a31333a22636f6d706c61696e5f65646974223b733a333a22796573223b733a31353a22636f6d706c61696e5f64656c657465223b733a333a22796573223b733a31333a22636f6d706c61696e5f76696577223b733a333a22796573223b733a32303a2263657274696669636174655f74656d706c617465223b733a333a22796573223b733a32343a2263657274696669636174655f74656d706c6174655f616464223b733a333a22796573223b733a32353a2263657274696669636174655f74656d706c6174655f65646974223b733a333a22796573223b733a32373a2263657274696669636174655f74656d706c6174655f64656c657465223b733a333a22796573223b733a32353a2263657274696669636174655f74656d706c6174655f76696577223b733a333a22796573223b733a31313a2273797374656d61646d696e223b733a333a22796573223b733a31353a2273797374656d61646d696e5f616464223b733a333a22796573223b733a31363a2273797374656d61646d696e5f65646974223b733a333a22796573223b733a31383a2273797374656d61646d696e5f64656c657465223b733a333a22796573223b733a31363a2273797374656d61646d696e5f76696577223b733a333a22796573223b733a31333a22726573657470617373776f7264223b733a333a22796573223b733a31383a226d61696c616e64736d7374656d706c617465223b733a333a22796573223b733a32323a226d61696c616e64736d7374656d706c6174655f616464223b733a333a22796573223b733a32333a226d61696c616e64736d7374656d706c6174655f65646974223b733a333a22796573223b733a32353a226d61696c616e64736d7374656d706c6174655f64656c657465223b733a333a22796573223b733a32333a226d61696c616e64736d7374656d706c6174655f76696577223b733a333a22796573223b733a31303a2262756c6b696d706f7274223b733a333a22796573223b733a363a226261636b7570223b733a333a22796573223b733a383a227573657274797065223b733a333a22796573223b733a31323a2275736572747970655f616464223b733a333a22796573223b733a31333a2275736572747970655f65646974223b733a333a22796573223b733a31353a2275736572747970655f64656c657465223b733a333a22796573223b733a31303a227065726d697373696f6e223b733a333a22796573223b733a363a22757064617465223b733a333a22796573223b733a373a2273657474696e67223b733a333a22796573223b733a31323a2273657474696e675f65646974223b733a333a22796573223b733a31353a227061796d656e7473657474696e6773223b733a333a22796573223b733a31313a22736d7373657474696e6773223b733a333a22796573223b733a353a227061676573223b733a333a22796573223b733a393a2270616765735f616464223b733a333a22796573223b733a31303a2270616765735f65646974223b733a333a22796573223b733a31323a2270616765735f64656c657465223b733a333a22796573223b733a31363a2266726f6e74656e645f73657474696e67223b733a333a22796573223b733a393a2274616b655f6578616d223b733a333a22796573223b7d6572726f727c4e3b737563636573737c733a373a2253756363657373223b5f5f63695f766172737c613a313a7b733a373a2273756363657373223b733a333a226f6c64223b7d);
INSERT INTO `school_sessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES
('42vk91imccdv09599r0ijkkaip39r68n', '106.219.22.189', 1518248435, 0x5f5f63695f6c6173745f726567656e65726174657c693a313531383234383332313b6c616e677c733a373a22656e676c697368223b6c6f67696e7573657249447c733a313a2231223b6e616d657c733a353a2261646d696e223b656d61696c7c733a32303a227072616b61726b68617240676d61696c2e636f6d223b757365727479706549447c733a313a2231223b75736572747970657c733a353a2241646d696e223b757365726e616d657c733a353a2261646d696e223b70686f746f7c733a31313a2264656661756c742e706e67223b64656661756c747363686f6f6c7965617249447c733a313a2231223b6c6f67676564696e7c623a313b6765745f7065726d697373696f6e7c623a313b6d61737465725f7065726d697373696f6e5f7365747c613a3237393a7b733a393a2264617368626f617264223b733a333a22796573223b733a373a2273747564656e74223b733a333a22796573223b733a31313a2273747564656e745f616464223b733a333a22796573223b733a31323a2273747564656e745f65646974223b733a333a22796573223b733a31343a2273747564656e745f64656c657465223b733a333a22796573223b733a31323a2273747564656e745f76696577223b733a333a22796573223b733a373a22706172656e7473223b733a333a22796573223b733a31313a22706172656e74735f616464223b733a333a22796573223b733a31323a22706172656e74735f65646974223b733a333a22796573223b733a31343a22706172656e74735f64656c657465223b733a333a22796573223b733a31323a22706172656e74735f76696577223b733a333a22796573223b733a373a2274656163686572223b733a333a22796573223b733a31313a22746561636865725f616464223b733a333a22796573223b733a31323a22746561636865725f65646974223b733a333a22796573223b733a31343a22746561636865725f64656c657465223b733a333a22796573223b733a31323a22746561636865725f76696577223b733a333a22796573223b733a343a2275736572223b733a333a22796573223b733a383a22757365725f616464223b733a333a22796573223b733a393a22757365725f65646974223b733a333a22796573223b733a31313a22757365725f64656c657465223b733a333a22796573223b733a393a22757365725f76696577223b733a333a22796573223b733a373a22636c6173736573223b733a333a22796573223b733a31313a22636c61737365735f616464223b733a333a22796573223b733a31323a22636c61737365735f65646974223b733a333a22796573223b733a31343a22636c61737365735f64656c657465223b733a333a22796573223b733a373a227375626a656374223b733a333a22796573223b733a31313a227375626a6563745f616464223b733a333a22796573223b733a31323a227375626a6563745f65646974223b733a333a22796573223b733a31343a227375626a6563745f64656c657465223b733a333a22796573223b733a373a2273656374696f6e223b733a333a22796573223b733a31313a2273656374696f6e5f616464223b733a333a22796573223b733a31323a2273656374696f6e5f65646974223b733a333a22796573223b733a31353a2273656d65737465725f64656c657465223b733a333a22796573223b733a31343a2273656374696f6e5f64656c657465223b733a333a22796573223b733a383a2273796c6c61627573223b733a333a22796573223b733a31323a2273796c6c616275735f616464223b733a333a22796573223b733a31333a2273796c6c616275735f65646974223b733a333a22796573223b733a31353a2273796c6c616275735f64656c657465223b733a333a22796573223b733a31303a2261737369676e6d656e74223b733a333a22796573223b733a31343a2261737369676e6d656e745f616464223b733a333a22796573223b733a31353a2261737369676e6d656e745f65646974223b733a333a22796573223b733a31373a2261737369676e6d656e745f64656c657465223b733a333a22796573223b733a31353a2261737369676e6d656e745f76696577223b733a333a22796573223b733a373a22726f7574696e65223b733a333a22796573223b733a31313a22726f7574696e655f616464223b733a333a22796573223b733a31323a22726f7574696e655f65646974223b733a333a22796573223b733a31343a22726f7574696e655f64656c657465223b733a333a22796573223b733a31313a2273617474656e64616e6365223b733a333a22796573223b733a31353a2273617474656e64616e63655f616464223b733a333a22796573223b733a31363a2273617474656e64616e63655f76696577223b733a333a22796573223b733a31313a2274617474656e64616e6365223b733a333a22796573223b733a31353a2274617474656e64616e63655f616464223b733a333a22796573223b733a31363a2274617474656e64616e63655f76696577223b733a333a22796573223b733a31313a2275617474656e64616e6365223b733a333a22796573223b733a31353a2275617474656e64616e63655f616464223b733a333a22796573223b733a31363a2275617474656e64616e63655f76696577223b733a333a22796573223b733a343a226578616d223b733a333a22796573223b733a383a226578616d5f616464223b733a333a22796573223b733a393a226578616d5f65646974223b733a333a22796573223b733a31313a226578616d5f64656c657465223b733a333a22796573223b733a31323a226578616d7363686564756c65223b733a333a22796573223b733a31363a226578616d7363686564756c655f616464223b733a333a22796573223b733a31373a226578616d7363686564756c655f65646974223b733a333a22796573223b733a31393a226578616d7363686564756c655f64656c657465223b733a333a22796573223b733a353a226772616465223b733a333a22796573223b733a393a2267726164655f616464223b733a333a22796573223b733a31303a2267726164655f65646974223b733a333a22796573223b733a31323a2267726164655f64656c657465223b733a333a22796573223b733a31313a2265617474656e64616e6365223b733a333a22796573223b733a31353a2265617474656e64616e63655f616464223b733a333a22796573223b733a343a226d61726b223b733a333a22796573223b733a383a226d61726b5f616464223b733a333a22796573223b733a393a226d61726b5f76696577223b733a333a22796573223b733a31343a226d61726b70657263656e74616765223b733a333a22796573223b733a31383a226d61726b70657263656e746167655f616464223b733a333a22796573223b733a31393a226d61726b70657263656e746167655f65646974223b733a333a22796573223b733a32313a226d61726b70657263656e746167655f64656c657465223b733a333a22796573223b733a393a2270726f6d6f74696f6e223b733a333a22796573223b733a31323a22636f6e766572736174696f6e223b733a333a22796573223b733a353a226d65646961223b733a333a22796573223b733a393a226d656469615f616464223b733a333a22796573223b733a31323a226d656469615f64656c657465223b733a333a22796573223b733a31303a226d61696c616e64736d73223b733a333a22796573223b733a31343a226d61696c616e64736d735f616464223b733a333a22796573223b733a31353a226d61696c616e64736d735f76696577223b733a333a22796573223b733a31343a227175657374696f6e5f67726f7570223b733a333a22796573223b733a31383a227175657374696f6e5f67726f75705f616464223b733a333a22796573223b733a31393a227175657374696f6e5f67726f75705f65646974223b733a333a22796573223b733a32313a227175657374696f6e5f67726f75705f64656c657465223b733a333a22796573223b733a31343a227175657374696f6e5f6c6576656c223b733a333a22796573223b733a31383a227175657374696f6e5f6c6576656c5f616464223b733a333a22796573223b733a31393a227175657374696f6e5f6c6576656c5f65646974223b733a333a22796573223b733a32313a227175657374696f6e5f6c6576656c5f64656c657465223b733a333a22796573223b733a31333a227175657374696f6e5f62616e6b223b733a333a22796573223b733a31373a227175657374696f6e5f62616e6b5f616464223b733a333a22796573223b733a31383a227175657374696f6e5f62616e6b5f65646974223b733a333a22796573223b733a32303a227175657374696f6e5f62616e6b5f64656c657465223b733a333a22796573223b733a31383a227175657374696f6e5f62616e6b5f76696577223b733a333a22796573223b733a31313a226f6e6c696e655f6578616d223b733a333a22796573223b733a31353a226f6e6c696e655f6578616d5f616464223b733a333a22796573223b733a31363a226f6e6c696e655f6578616d5f65646974223b733a333a22796573223b733a31383a226f6e6c696e655f6578616d5f64656c657465223b733a333a22796573223b733a31313a22696e737472756374696f6e223b733a333a22796573223b733a31353a22696e737472756374696f6e5f616464223b733a333a22796573223b733a31363a22696e737472756374696f6e5f65646974223b733a333a22796573223b733a31383a22696e737472756374696f6e5f64656c657465223b733a333a22796573223b733a31363a22696e737472756374696f6e5f76696577223b733a333a22796573223b733a31353a2273616c6172795f74656d706c617465223b733a333a22796573223b733a31393a2273616c6172795f74656d706c6174655f616464223b733a333a22796573223b733a32303a2273616c6172795f74656d706c6174655f65646974223b733a333a22796573223b733a32323a2273616c6172795f74656d706c6174655f64656c657465223b733a333a22796573223b733a32303a2273616c6172795f74656d706c6174655f76696577223b733a333a22796573223b733a31353a22686f75726c795f74656d706c617465223b733a333a22796573223b733a31393a22686f75726c795f74656d706c6174655f616464223b733a333a22796573223b733a32303a22686f75726c795f74656d706c6174655f65646974223b733a333a22796573223b733a32323a22686f75726c795f74656d706c6174655f64656c657465223b733a333a22796573223b733a31333a226d616e6167655f73616c617279223b733a333a22796573223b733a31373a226d616e6167655f73616c6172795f616464223b733a333a22796573223b733a31383a226d616e6167655f73616c6172795f65646974223b733a333a22796573223b733a32303a226d616e6167655f73616c6172795f64656c657465223b733a333a22796573223b733a31383a226d616e6167655f73616c6172795f76696577223b733a333a22796573223b733a31323a226d616b655f7061796d656e74223b733a333a22796573223b733a363a2276656e646f72223b733a333a22796573223b733a31303a2276656e646f725f616464223b733a333a22796573223b733a31313a2276656e646f725f65646974223b733a333a22796573223b733a31333a2276656e646f725f64656c657465223b733a333a22796573223b733a383a226c6f636174696f6e223b733a333a22796573223b733a31323a226c6f636174696f6e5f616464223b733a333a22796573223b733a31333a226c6f636174696f6e5f65646974223b733a333a22796573223b733a31353a226c6f636174696f6e5f64656c657465223b733a333a22796573223b733a31343a2261737365745f63617465676f7279223b733a333a22796573223b733a31383a2261737365745f63617465676f72795f616464223b733a333a22796573223b733a31393a2261737365745f63617465676f72795f65646974223b733a333a22796573223b733a32313a2261737365745f63617465676f72795f64656c657465223b733a333a22796573223b733a353a226173736574223b733a333a22796573223b733a393a2261737365745f616464223b733a333a22796573223b733a31303a2261737365745f65646974223b733a333a22796573223b733a31323a2261737365745f64656c657465223b733a333a22796573223b733a31303a2261737365745f76696577223b733a333a22796573223b733a31363a2261737365745f61737369676e6d656e74223b733a333a22796573223b733a32303a2261737365745f61737369676e6d656e745f616464223b733a333a22796573223b733a32313a2261737365745f61737369676e6d656e745f65646974223b733a333a22796573223b733a32333a2261737365745f61737369676e6d656e745f64656c657465223b733a333a22796573223b733a32313a2261737365745f61737369676e6d656e745f76696577223b733a333a22796573223b733a383a227075726368617365223b733a333a22796573223b733a31323a2270757263686173655f616464223b733a333a22796573223b733a31333a2270757263686173655f65646974223b733a333a22796573223b733a31353a2270757263686173655f64656c657465223b733a333a22796573223b733a31383a226163746976697469657363617465676f7279223b733a333a22796573223b733a32323a226163746976697469657363617465676f72795f616464223b733a333a22796573223b733a32333a226163746976697469657363617465676f72795f65646974223b733a333a22796573223b733a32353a226163746976697469657363617465676f72795f64656c657465223b733a333a22796573223b733a31303a2261637469766974696573223b733a333a22796573223b733a31343a22616374697669746965735f616464223b733a333a22796573223b733a31373a22616374697669746965735f64656c657465223b733a333a22796573223b733a393a226368696c6463617265223b733a333a22796573223b733a31333a226368696c64636172655f616464223b733a333a22796573223b733a31363a226368696c64636172655f64656c657465223b733a333a22796573223b733a373a226c6d656d626572223b733a333a22796573223b733a31313a226c6d656d6265725f616464223b733a333a22796573223b733a31323a226c6d656d6265725f65646974223b733a333a22796573223b733a31343a226c6d656d6265725f64656c657465223b733a333a22796573223b733a31323a226c6d656d6265725f76696577223b733a333a22796573223b733a343a22626f6f6b223b733a333a22796573223b733a383a22626f6f6b5f616464223b733a333a22796573223b733a393a22626f6f6b5f65646974223b733a333a22796573223b733a31313a22626f6f6b5f64656c657465223b733a333a22796573223b733a353a226973737565223b733a333a22796573223b733a393a2269737375655f616464223b733a333a22796573223b733a31303a2269737375655f65646974223b733a333a22796573223b733a31303a2269737375655f76696577223b733a333a22796573223b733a393a227472616e73706f7274223b733a333a22796573223b733a31333a227472616e73706f72745f616464223b733a333a22796573223b733a31343a227472616e73706f72745f65646974223b733a333a22796573223b733a31363a227472616e73706f72745f64656c657465223b733a333a22796573223b733a373a22746d656d626572223b733a333a22796573223b733a31313a22746d656d6265725f616464223b733a333a22796573223b733a31323a22746d656d6265725f65646974223b733a333a22796573223b733a31343a22746d656d6265725f64656c657465223b733a333a22796573223b733a31323a22746d656d6265725f76696577223b733a333a22796573223b733a363a22686f7374656c223b733a333a22796573223b733a31303a22686f7374656c5f616464223b733a333a22796573223b733a31313a22686f7374656c5f65646974223b733a333a22796573223b733a31333a22686f7374656c5f64656c657465223b733a333a22796573223b733a383a2263617465676f7279223b733a333a22796573223b733a31323a2263617465676f72795f616464223b733a333a22796573223b733a31333a2263617465676f72795f65646974223b733a333a22796573223b733a31353a2263617465676f72795f64656c657465223b733a333a22796573223b733a373a22686d656d626572223b733a333a22796573223b733a31313a22686d656d6265725f616464223b733a333a22796573223b733a31323a22686d656d6265725f65646974223b733a333a22796573223b733a31343a22686d656d6265725f64656c657465223b733a333a22796573223b733a31323a22686d656d6265725f76696577223b733a333a22796573223b733a383a226665657479706573223b733a333a22796573223b733a31323a2266656574797065735f616464223b733a333a22796573223b733a31333a2266656574797065735f65646974223b733a333a22796573223b733a31353a2266656574797065735f64656c657465223b733a333a22796573223b733a373a22696e766f696365223b733a333a22796573223b733a31313a22696e766f6963655f616464223b733a333a22796573223b733a31323a22696e766f6963655f65646974223b733a333a22796573223b733a31343a22696e766f6963655f64656c657465223b733a333a22796573223b733a31323a22696e766f6963655f76696577223b733a333a22796573223b733a31343a227061796d656e74686973746f7279223b733a333a22796573223b733a31393a227061796d656e74686973746f72795f65646974223b733a333a22796573223b733a32313a227061796d656e74686973746f72795f64656c657465223b733a333a22796573223b733a373a22657870656e7365223b733a333a22796573223b733a31313a22657870656e73655f616464223b733a333a22796573223b733a31323a22657870656e73655f65646974223b733a333a22796573223b733a31343a22657870656e73655f64656c657465223b733a333a22796573223b733a363a226e6f74696365223b733a333a22796573223b733a31303a226e6f746963655f616464223b733a333a22796573223b733a31313a226e6f746963655f65646974223b733a333a22796573223b733a31333a226e6f746963655f64656c657465223b733a333a22796573223b733a31313a226e6f746963655f76696577223b733a333a22796573223b733a353a226576656e74223b733a333a22796573223b733a393a226576656e745f616464223b733a333a22796573223b733a31303a226576656e745f65646974223b733a333a22796573223b733a31323a226576656e745f64656c657465223b733a333a22796573223b733a31303a226576656e745f76696577223b733a333a22796573223b733a373a22686f6c69646179223b733a333a22796573223b733a31313a22686f6c696461795f616464223b733a333a22796573223b733a31323a22686f6c696461795f65646974223b733a333a22796573223b733a31343a22686f6c696461795f64656c657465223b733a333a22796573223b733a31323a22686f6c696461795f76696577223b733a333a22796573223b733a363a227265706f7274223b733a333a22796573223b733a32303a227265706f72742f73747564656e747265706f7274223b733a333a22796573223b733a31383a227265706f72742f636c6173737265706f7274223b733a333a22796573223b733a32333a227265706f72742f617474656e64616e63657265706f7274223b733a333a22796573223b733a31383a227265706f72742f6365727469666963617465223b733a333a22796573223b733a31313a2276697369746f72696e666f223b733a333a22796573223b733a31383a2276697369746f72696e666f5f64656c657465223b733a333a22796573223b733a31363a2276697369746f72696e666f5f76696577223b733a333a22796573223b733a31303a227363686f6f6c79656172223b733a333a22796573223b733a31343a227363686f6f6c796561725f616464223b733a333a22796573223b733a31353a227363686f6f6c796561725f65646974223b733a333a22796573223b733a31373a227363686f6f6c796561725f64656c657465223b733a333a22796573223b733a31323a2273747564656e7467726f7570223b733a333a22796573223b733a31363a2273747564656e7467726f75705f616464223b733a333a22796573223b733a31373a2273747564656e7467726f75705f65646974223b733a333a22796573223b733a31393a2273747564656e7467726f75705f64656c657465223b733a333a22796573223b733a383a22636f6d706c61696e223b733a333a22796573223b733a31323a22636f6d706c61696e5f616464223b733a333a22796573223b733a31333a22636f6d706c61696e5f65646974223b733a333a22796573223b733a31353a22636f6d706c61696e5f64656c657465223b733a333a22796573223b733a31333a22636f6d706c61696e5f76696577223b733a333a22796573223b733a32303a2263657274696669636174655f74656d706c617465223b733a333a22796573223b733a32343a2263657274696669636174655f74656d706c6174655f616464223b733a333a22796573223b733a32353a2263657274696669636174655f74656d706c6174655f65646974223b733a333a22796573223b733a32373a2263657274696669636174655f74656d706c6174655f64656c657465223b733a333a22796573223b733a32353a2263657274696669636174655f74656d706c6174655f76696577223b733a333a22796573223b733a31313a2273797374656d61646d696e223b733a333a22796573223b733a31353a2273797374656d61646d696e5f616464223b733a333a22796573223b733a31363a2273797374656d61646d696e5f65646974223b733a333a22796573223b733a31383a2273797374656d61646d696e5f64656c657465223b733a333a22796573223b733a31363a2273797374656d61646d696e5f76696577223b733a333a22796573223b733a31333a22726573657470617373776f7264223b733a333a22796573223b733a31383a226d61696c616e64736d7374656d706c617465223b733a333a22796573223b733a32323a226d61696c616e64736d7374656d706c6174655f616464223b733a333a22796573223b733a32333a226d61696c616e64736d7374656d706c6174655f65646974223b733a333a22796573223b733a32353a226d61696c616e64736d7374656d706c6174655f64656c657465223b733a333a22796573223b733a32333a226d61696c616e64736d7374656d706c6174655f76696577223b733a333a22796573223b733a31303a2262756c6b696d706f7274223b733a333a22796573223b733a363a226261636b7570223b733a333a22796573223b733a383a227573657274797065223b733a333a22796573223b733a31323a2275736572747970655f616464223b733a333a22796573223b733a31333a2275736572747970655f65646974223b733a333a22796573223b733a31353a2275736572747970655f64656c657465223b733a333a22796573223b733a31303a227065726d697373696f6e223b733a333a22796573223b733a363a22757064617465223b733a333a22796573223b733a373a2273657474696e67223b733a333a22796573223b733a31323a2273657474696e675f65646974223b733a333a22796573223b733a31353a227061796d656e7473657474696e6773223b733a333a22796573223b733a31313a22736d7373657474696e6773223b733a333a22796573223b733a353a227061676573223b733a333a22796573223b733a393a2270616765735f616464223b733a333a22796573223b733a31303a2270616765735f65646974223b733a333a22796573223b733a31323a2270616765735f64656c657465223b733a333a22796573223b733a31363a2266726f6e74656e645f73657474696e67223b733a333a22796573223b733a393a2274616b655f6578616d223b733a333a22796573223b7d6572726f727c4e3b737563636573737c733a373a2253756363657373223b5f5f63695f766172737c613a313a7b733a373a2273756363657373223b733a333a226f6c64223b7d),
('lq9d00b4dlpn8o8lh1re3d51m98eltaa', '117.224.54.76', 1518248386, 0x5f5f63695f6c6173745f726567656e65726174657c693a313531383234383332323b6c616e677c733a373a22656e676c697368223b6c6f67696e7573657249447c733a313a2231223b6e616d657c733a353a2261646d696e223b656d61696c7c733a32303a227072616b61726b68617240676d61696c2e636f6d223b757365727479706549447c733a313a2231223b75736572747970657c733a353a2241646d696e223b757365726e616d657c733a353a2261646d696e223b70686f746f7c733a31313a2264656661756c742e706e67223b64656661756c747363686f6f6c7965617249447c733a313a2231223b6c6f67676564696e7c623a313b6765745f7065726d697373696f6e7c623a313b6d61737465725f7065726d697373696f6e5f7365747c613a3237393a7b733a393a2264617368626f617264223b733a333a22796573223b733a373a2273747564656e74223b733a333a22796573223b733a31313a2273747564656e745f616464223b733a333a22796573223b733a31323a2273747564656e745f65646974223b733a333a22796573223b733a31343a2273747564656e745f64656c657465223b733a333a22796573223b733a31323a2273747564656e745f76696577223b733a333a22796573223b733a373a22706172656e7473223b733a333a22796573223b733a31313a22706172656e74735f616464223b733a333a22796573223b733a31323a22706172656e74735f65646974223b733a333a22796573223b733a31343a22706172656e74735f64656c657465223b733a333a22796573223b733a31323a22706172656e74735f76696577223b733a333a22796573223b733a373a2274656163686572223b733a333a22796573223b733a31313a22746561636865725f616464223b733a333a22796573223b733a31323a22746561636865725f65646974223b733a333a22796573223b733a31343a22746561636865725f64656c657465223b733a333a22796573223b733a31323a22746561636865725f76696577223b733a333a22796573223b733a343a2275736572223b733a333a22796573223b733a383a22757365725f616464223b733a333a22796573223b733a393a22757365725f65646974223b733a333a22796573223b733a31313a22757365725f64656c657465223b733a333a22796573223b733a393a22757365725f76696577223b733a333a22796573223b733a373a22636c6173736573223b733a333a22796573223b733a31313a22636c61737365735f616464223b733a333a22796573223b733a31323a22636c61737365735f65646974223b733a333a22796573223b733a31343a22636c61737365735f64656c657465223b733a333a22796573223b733a373a227375626a656374223b733a333a22796573223b733a31313a227375626a6563745f616464223b733a333a22796573223b733a31323a227375626a6563745f65646974223b733a333a22796573223b733a31343a227375626a6563745f64656c657465223b733a333a22796573223b733a373a2273656374696f6e223b733a333a22796573223b733a31313a2273656374696f6e5f616464223b733a333a22796573223b733a31323a2273656374696f6e5f65646974223b733a333a22796573223b733a31353a2273656d65737465725f64656c657465223b733a333a22796573223b733a31343a2273656374696f6e5f64656c657465223b733a333a22796573223b733a383a2273796c6c61627573223b733a333a22796573223b733a31323a2273796c6c616275735f616464223b733a333a22796573223b733a31333a2273796c6c616275735f65646974223b733a333a22796573223b733a31353a2273796c6c616275735f64656c657465223b733a333a22796573223b733a31303a2261737369676e6d656e74223b733a333a22796573223b733a31343a2261737369676e6d656e745f616464223b733a333a22796573223b733a31353a2261737369676e6d656e745f65646974223b733a333a22796573223b733a31373a2261737369676e6d656e745f64656c657465223b733a333a22796573223b733a31353a2261737369676e6d656e745f76696577223b733a333a22796573223b733a373a22726f7574696e65223b733a333a22796573223b733a31313a22726f7574696e655f616464223b733a333a22796573223b733a31323a22726f7574696e655f65646974223b733a333a22796573223b733a31343a22726f7574696e655f64656c657465223b733a333a22796573223b733a31313a2273617474656e64616e6365223b733a333a22796573223b733a31353a2273617474656e64616e63655f616464223b733a333a22796573223b733a31363a2273617474656e64616e63655f76696577223b733a333a22796573223b733a31313a2274617474656e64616e6365223b733a333a22796573223b733a31353a2274617474656e64616e63655f616464223b733a333a22796573223b733a31363a2274617474656e64616e63655f76696577223b733a333a22796573223b733a31313a2275617474656e64616e6365223b733a333a22796573223b733a31353a2275617474656e64616e63655f616464223b733a333a22796573223b733a31363a2275617474656e64616e63655f76696577223b733a333a22796573223b733a343a226578616d223b733a333a22796573223b733a383a226578616d5f616464223b733a333a22796573223b733a393a226578616d5f65646974223b733a333a22796573223b733a31313a226578616d5f64656c657465223b733a333a22796573223b733a31323a226578616d7363686564756c65223b733a333a22796573223b733a31363a226578616d7363686564756c655f616464223b733a333a22796573223b733a31373a226578616d7363686564756c655f65646974223b733a333a22796573223b733a31393a226578616d7363686564756c655f64656c657465223b733a333a22796573223b733a353a226772616465223b733a333a22796573223b733a393a2267726164655f616464223b733a333a22796573223b733a31303a2267726164655f65646974223b733a333a22796573223b733a31323a2267726164655f64656c657465223b733a333a22796573223b733a31313a2265617474656e64616e6365223b733a333a22796573223b733a31353a2265617474656e64616e63655f616464223b733a333a22796573223b733a343a226d61726b223b733a333a22796573223b733a383a226d61726b5f616464223b733a333a22796573223b733a393a226d61726b5f76696577223b733a333a22796573223b733a31343a226d61726b70657263656e74616765223b733a333a22796573223b733a31383a226d61726b70657263656e746167655f616464223b733a333a22796573223b733a31393a226d61726b70657263656e746167655f65646974223b733a333a22796573223b733a32313a226d61726b70657263656e746167655f64656c657465223b733a333a22796573223b733a393a2270726f6d6f74696f6e223b733a333a22796573223b733a31323a22636f6e766572736174696f6e223b733a333a22796573223b733a353a226d65646961223b733a333a22796573223b733a393a226d656469615f616464223b733a333a22796573223b733a31323a226d656469615f64656c657465223b733a333a22796573223b733a31303a226d61696c616e64736d73223b733a333a22796573223b733a31343a226d61696c616e64736d735f616464223b733a333a22796573223b733a31353a226d61696c616e64736d735f76696577223b733a333a22796573223b733a31343a227175657374696f6e5f67726f7570223b733a333a22796573223b733a31383a227175657374696f6e5f67726f75705f616464223b733a333a22796573223b733a31393a227175657374696f6e5f67726f75705f65646974223b733a333a22796573223b733a32313a227175657374696f6e5f67726f75705f64656c657465223b733a333a22796573223b733a31343a227175657374696f6e5f6c6576656c223b733a333a22796573223b733a31383a227175657374696f6e5f6c6576656c5f616464223b733a333a22796573223b733a31393a227175657374696f6e5f6c6576656c5f65646974223b733a333a22796573223b733a32313a227175657374696f6e5f6c6576656c5f64656c657465223b733a333a22796573223b733a31333a227175657374696f6e5f62616e6b223b733a333a22796573223b733a31373a227175657374696f6e5f62616e6b5f616464223b733a333a22796573223b733a31383a227175657374696f6e5f62616e6b5f65646974223b733a333a22796573223b733a32303a227175657374696f6e5f62616e6b5f64656c657465223b733a333a22796573223b733a31383a227175657374696f6e5f62616e6b5f76696577223b733a333a22796573223b733a31313a226f6e6c696e655f6578616d223b733a333a22796573223b733a31353a226f6e6c696e655f6578616d5f616464223b733a333a22796573223b733a31363a226f6e6c696e655f6578616d5f65646974223b733a333a22796573223b733a31383a226f6e6c696e655f6578616d5f64656c657465223b733a333a22796573223b733a31313a22696e737472756374696f6e223b733a333a22796573223b733a31353a22696e737472756374696f6e5f616464223b733a333a22796573223b733a31363a22696e737472756374696f6e5f65646974223b733a333a22796573223b733a31383a22696e737472756374696f6e5f64656c657465223b733a333a22796573223b733a31363a22696e737472756374696f6e5f76696577223b733a333a22796573223b733a31353a2273616c6172795f74656d706c617465223b733a333a22796573223b733a31393a2273616c6172795f74656d706c6174655f616464223b733a333a22796573223b733a32303a2273616c6172795f74656d706c6174655f65646974223b733a333a22796573223b733a32323a2273616c6172795f74656d706c6174655f64656c657465223b733a333a22796573223b733a32303a2273616c6172795f74656d706c6174655f76696577223b733a333a22796573223b733a31353a22686f75726c795f74656d706c617465223b733a333a22796573223b733a31393a22686f75726c795f74656d706c6174655f616464223b733a333a22796573223b733a32303a22686f75726c795f74656d706c6174655f65646974223b733a333a22796573223b733a32323a22686f75726c795f74656d706c6174655f64656c657465223b733a333a22796573223b733a31333a226d616e6167655f73616c617279223b733a333a22796573223b733a31373a226d616e6167655f73616c6172795f616464223b733a333a22796573223b733a31383a226d616e6167655f73616c6172795f65646974223b733a333a22796573223b733a32303a226d616e6167655f73616c6172795f64656c657465223b733a333a22796573223b733a31383a226d616e6167655f73616c6172795f76696577223b733a333a22796573223b733a31323a226d616b655f7061796d656e74223b733a333a22796573223b733a363a2276656e646f72223b733a333a22796573223b733a31303a2276656e646f725f616464223b733a333a22796573223b733a31313a2276656e646f725f65646974223b733a333a22796573223b733a31333a2276656e646f725f64656c657465223b733a333a22796573223b733a383a226c6f636174696f6e223b733a333a22796573223b733a31323a226c6f636174696f6e5f616464223b733a333a22796573223b733a31333a226c6f636174696f6e5f65646974223b733a333a22796573223b733a31353a226c6f636174696f6e5f64656c657465223b733a333a22796573223b733a31343a2261737365745f63617465676f7279223b733a333a22796573223b733a31383a2261737365745f63617465676f72795f616464223b733a333a22796573223b733a31393a2261737365745f63617465676f72795f65646974223b733a333a22796573223b733a32313a2261737365745f63617465676f72795f64656c657465223b733a333a22796573223b733a353a226173736574223b733a333a22796573223b733a393a2261737365745f616464223b733a333a22796573223b733a31303a2261737365745f65646974223b733a333a22796573223b733a31323a2261737365745f64656c657465223b733a333a22796573223b733a31303a2261737365745f76696577223b733a333a22796573223b733a31363a2261737365745f61737369676e6d656e74223b733a333a22796573223b733a32303a2261737365745f61737369676e6d656e745f616464223b733a333a22796573223b733a32313a2261737365745f61737369676e6d656e745f65646974223b733a333a22796573223b733a32333a2261737365745f61737369676e6d656e745f64656c657465223b733a333a22796573223b733a32313a2261737365745f61737369676e6d656e745f76696577223b733a333a22796573223b733a383a227075726368617365223b733a333a22796573223b733a31323a2270757263686173655f616464223b733a333a22796573223b733a31333a2270757263686173655f65646974223b733a333a22796573223b733a31353a2270757263686173655f64656c657465223b733a333a22796573223b733a31383a226163746976697469657363617465676f7279223b733a333a22796573223b733a32323a226163746976697469657363617465676f72795f616464223b733a333a22796573223b733a32333a226163746976697469657363617465676f72795f65646974223b733a333a22796573223b733a32353a226163746976697469657363617465676f72795f64656c657465223b733a333a22796573223b733a31303a2261637469766974696573223b733a333a22796573223b733a31343a22616374697669746965735f616464223b733a333a22796573223b733a31373a22616374697669746965735f64656c657465223b733a333a22796573223b733a393a226368696c6463617265223b733a333a22796573223b733a31333a226368696c64636172655f616464223b733a333a22796573223b733a31363a226368696c64636172655f64656c657465223b733a333a22796573223b733a373a226c6d656d626572223b733a333a22796573223b733a31313a226c6d656d6265725f616464223b733a333a22796573223b733a31323a226c6d656d6265725f65646974223b733a333a22796573223b733a31343a226c6d656d6265725f64656c657465223b733a333a22796573223b733a31323a226c6d656d6265725f76696577223b733a333a22796573223b733a343a22626f6f6b223b733a333a22796573223b733a383a22626f6f6b5f616464223b733a333a22796573223b733a393a22626f6f6b5f65646974223b733a333a22796573223b733a31313a22626f6f6b5f64656c657465223b733a333a22796573223b733a353a226973737565223b733a333a22796573223b733a393a2269737375655f616464223b733a333a22796573223b733a31303a2269737375655f65646974223b733a333a22796573223b733a31303a2269737375655f76696577223b733a333a22796573223b733a393a227472616e73706f7274223b733a333a22796573223b733a31333a227472616e73706f72745f616464223b733a333a22796573223b733a31343a227472616e73706f72745f65646974223b733a333a22796573223b733a31363a227472616e73706f72745f64656c657465223b733a333a22796573223b733a373a22746d656d626572223b733a333a22796573223b733a31313a22746d656d6265725f616464223b733a333a22796573223b733a31323a22746d656d6265725f65646974223b733a333a22796573223b733a31343a22746d656d6265725f64656c657465223b733a333a22796573223b733a31323a22746d656d6265725f76696577223b733a333a22796573223b733a363a22686f7374656c223b733a333a22796573223b733a31303a22686f7374656c5f616464223b733a333a22796573223b733a31313a22686f7374656c5f65646974223b733a333a22796573223b733a31333a22686f7374656c5f64656c657465223b733a333a22796573223b733a383a2263617465676f7279223b733a333a22796573223b733a31323a2263617465676f72795f616464223b733a333a22796573223b733a31333a2263617465676f72795f65646974223b733a333a22796573223b733a31353a2263617465676f72795f64656c657465223b733a333a22796573223b733a373a22686d656d626572223b733a333a22796573223b733a31313a22686d656d6265725f616464223b733a333a22796573223b733a31323a22686d656d6265725f65646974223b733a333a22796573223b733a31343a22686d656d6265725f64656c657465223b733a333a22796573223b733a31323a22686d656d6265725f76696577223b733a333a22796573223b733a383a226665657479706573223b733a333a22796573223b733a31323a2266656574797065735f616464223b733a333a22796573223b733a31333a2266656574797065735f65646974223b733a333a22796573223b733a31353a2266656574797065735f64656c657465223b733a333a22796573223b733a373a22696e766f696365223b733a333a22796573223b733a31313a22696e766f6963655f616464223b733a333a22796573223b733a31323a22696e766f6963655f65646974223b733a333a22796573223b733a31343a22696e766f6963655f64656c657465223b733a333a22796573223b733a31323a22696e766f6963655f76696577223b733a333a22796573223b733a31343a227061796d656e74686973746f7279223b733a333a22796573223b733a31393a227061796d656e74686973746f72795f65646974223b733a333a22796573223b733a32313a227061796d656e74686973746f72795f64656c657465223b733a333a22796573223b733a373a22657870656e7365223b733a333a22796573223b733a31313a22657870656e73655f616464223b733a333a22796573223b733a31323a22657870656e73655f65646974223b733a333a22796573223b733a31343a22657870656e73655f64656c657465223b733a333a22796573223b733a363a226e6f74696365223b733a333a22796573223b733a31303a226e6f746963655f616464223b733a333a22796573223b733a31313a226e6f746963655f65646974223b733a333a22796573223b733a31333a226e6f746963655f64656c657465223b733a333a22796573223b733a31313a226e6f746963655f76696577223b733a333a22796573223b733a353a226576656e74223b733a333a22796573223b733a393a226576656e745f616464223b733a333a22796573223b733a31303a226576656e745f65646974223b733a333a22796573223b733a31323a226576656e745f64656c657465223b733a333a22796573223b733a31303a226576656e745f76696577223b733a333a22796573223b733a373a22686f6c69646179223b733a333a22796573223b733a31313a22686f6c696461795f616464223b733a333a22796573223b733a31323a22686f6c696461795f65646974223b733a333a22796573223b733a31343a22686f6c696461795f64656c657465223b733a333a22796573223b733a31323a22686f6c696461795f76696577223b733a333a22796573223b733a363a227265706f7274223b733a333a22796573223b733a32303a227265706f72742f73747564656e747265706f7274223b733a333a22796573223b733a31383a227265706f72742f636c6173737265706f7274223b733a333a22796573223b733a32333a227265706f72742f617474656e64616e63657265706f7274223b733a333a22796573223b733a31383a227265706f72742f6365727469666963617465223b733a333a22796573223b733a31313a2276697369746f72696e666f223b733a333a22796573223b733a31383a2276697369746f72696e666f5f64656c657465223b733a333a22796573223b733a31363a2276697369746f72696e666f5f76696577223b733a333a22796573223b733a31303a227363686f6f6c79656172223b733a333a22796573223b733a31343a227363686f6f6c796561725f616464223b733a333a22796573223b733a31353a227363686f6f6c796561725f65646974223b733a333a22796573223b733a31373a227363686f6f6c796561725f64656c657465223b733a333a22796573223b733a31323a2273747564656e7467726f7570223b733a333a22796573223b733a31363a2273747564656e7467726f75705f616464223b733a333a22796573223b733a31373a2273747564656e7467726f75705f65646974223b733a333a22796573223b733a31393a2273747564656e7467726f75705f64656c657465223b733a333a22796573223b733a383a22636f6d706c61696e223b733a333a22796573223b733a31323a22636f6d706c61696e5f616464223b733a333a22796573223b733a31333a22636f6d706c61696e5f65646974223b733a333a22796573223b733a31353a22636f6d706c61696e5f64656c657465223b733a333a22796573223b733a31333a22636f6d706c61696e5f76696577223b733a333a22796573223b733a32303a2263657274696669636174655f74656d706c617465223b733a333a22796573223b733a32343a2263657274696669636174655f74656d706c6174655f616464223b733a333a22796573223b733a32353a2263657274696669636174655f74656d706c6174655f65646974223b733a333a22796573223b733a32373a2263657274696669636174655f74656d706c6174655f64656c657465223b733a333a22796573223b733a32353a2263657274696669636174655f74656d706c6174655f76696577223b733a333a22796573223b733a31313a2273797374656d61646d696e223b733a333a22796573223b733a31353a2273797374656d61646d696e5f616464223b733a333a22796573223b733a31363a2273797374656d61646d696e5f65646974223b733a333a22796573223b733a31383a2273797374656d61646d696e5f64656c657465223b733a333a22796573223b733a31363a2273797374656d61646d696e5f76696577223b733a333a22796573223b733a31333a22726573657470617373776f7264223b733a333a22796573223b733a31383a226d61696c616e64736d7374656d706c617465223b733a333a22796573223b733a32323a226d61696c616e64736d7374656d706c6174655f616464223b733a333a22796573223b733a32333a226d61696c616e64736d7374656d706c6174655f65646974223b733a333a22796573223b733a32353a226d61696c616e64736d7374656d706c6174655f64656c657465223b733a333a22796573223b733a32333a226d61696c616e64736d7374656d706c6174655f76696577223b733a333a22796573223b733a31303a2262756c6b696d706f7274223b733a333a22796573223b733a363a226261636b7570223b733a333a22796573223b733a383a227573657274797065223b733a333a22796573223b733a31323a2275736572747970655f616464223b733a333a22796573223b733a31333a2275736572747970655f65646974223b733a333a22796573223b733a31353a2275736572747970655f64656c657465223b733a333a22796573223b733a31303a227065726d697373696f6e223b733a333a22796573223b733a363a22757064617465223b733a333a22796573223b733a373a2273657474696e67223b733a333a22796573223b733a31323a2273657474696e675f65646974223b733a333a22796573223b733a31353a227061796d656e7473657474696e6773223b733a333a22796573223b733a31313a22736d7373657474696e6773223b733a333a22796573223b733a353a227061676573223b733a333a22796573223b733a393a2270616765735f616464223b733a333a22796573223b733a31303a2270616765735f65646974223b733a333a22796573223b733a31323a2270616765735f64656c657465223b733a333a22796573223b733a31363a2266726f6e74656e645f73657474696e67223b733a333a22796573223b733a393a2274616b655f6578616d223b733a333a22796573223b7d);
INSERT INTO `school_sessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES
('bgoa4bnddl81ohttinrl3jn4jjorh4np', '142.234.162.5', 1518248409, 0x5f5f63695f6c6173745f726567656e65726174657c693a313531383234383339363b6c616e677c733a373a22656e676c697368223b6c6f67696e7573657249447c733a313a2231223b6e616d657c733a353a2261646d696e223b656d61696c7c733a32303a227072616b61726b68617240676d61696c2e636f6d223b757365727479706549447c733a313a2231223b75736572747970657c733a353a2241646d696e223b757365726e616d657c733a353a2261646d696e223b70686f746f7c733a31313a2264656661756c742e706e67223b64656661756c747363686f6f6c7965617249447c733a313a2231223b6c6f67676564696e7c623a313b6765745f7065726d697373696f6e7c623a313b6d61737465725f7065726d697373696f6e5f7365747c613a3237393a7b733a393a2264617368626f617264223b733a333a22796573223b733a373a2273747564656e74223b733a333a22796573223b733a31313a2273747564656e745f616464223b733a333a22796573223b733a31323a2273747564656e745f65646974223b733a333a22796573223b733a31343a2273747564656e745f64656c657465223b733a333a22796573223b733a31323a2273747564656e745f76696577223b733a333a22796573223b733a373a22706172656e7473223b733a333a22796573223b733a31313a22706172656e74735f616464223b733a333a22796573223b733a31323a22706172656e74735f65646974223b733a333a22796573223b733a31343a22706172656e74735f64656c657465223b733a333a22796573223b733a31323a22706172656e74735f76696577223b733a333a22796573223b733a373a2274656163686572223b733a333a22796573223b733a31313a22746561636865725f616464223b733a333a22796573223b733a31323a22746561636865725f65646974223b733a333a22796573223b733a31343a22746561636865725f64656c657465223b733a333a22796573223b733a31323a22746561636865725f76696577223b733a333a22796573223b733a343a2275736572223b733a333a22796573223b733a383a22757365725f616464223b733a333a22796573223b733a393a22757365725f65646974223b733a333a22796573223b733a31313a22757365725f64656c657465223b733a333a22796573223b733a393a22757365725f76696577223b733a333a22796573223b733a373a22636c6173736573223b733a333a22796573223b733a31313a22636c61737365735f616464223b733a333a22796573223b733a31323a22636c61737365735f65646974223b733a333a22796573223b733a31343a22636c61737365735f64656c657465223b733a333a22796573223b733a373a227375626a656374223b733a333a22796573223b733a31313a227375626a6563745f616464223b733a333a22796573223b733a31323a227375626a6563745f65646974223b733a333a22796573223b733a31343a227375626a6563745f64656c657465223b733a333a22796573223b733a373a2273656374696f6e223b733a333a22796573223b733a31313a2273656374696f6e5f616464223b733a333a22796573223b733a31323a2273656374696f6e5f65646974223b733a333a22796573223b733a31353a2273656d65737465725f64656c657465223b733a333a22796573223b733a31343a2273656374696f6e5f64656c657465223b733a333a22796573223b733a383a2273796c6c61627573223b733a333a22796573223b733a31323a2273796c6c616275735f616464223b733a333a22796573223b733a31333a2273796c6c616275735f65646974223b733a333a22796573223b733a31353a2273796c6c616275735f64656c657465223b733a333a22796573223b733a31303a2261737369676e6d656e74223b733a333a22796573223b733a31343a2261737369676e6d656e745f616464223b733a333a22796573223b733a31353a2261737369676e6d656e745f65646974223b733a333a22796573223b733a31373a2261737369676e6d656e745f64656c657465223b733a333a22796573223b733a31353a2261737369676e6d656e745f76696577223b733a333a22796573223b733a373a22726f7574696e65223b733a333a22796573223b733a31313a22726f7574696e655f616464223b733a333a22796573223b733a31323a22726f7574696e655f65646974223b733a333a22796573223b733a31343a22726f7574696e655f64656c657465223b733a333a22796573223b733a31313a2273617474656e64616e6365223b733a333a22796573223b733a31353a2273617474656e64616e63655f616464223b733a333a22796573223b733a31363a2273617474656e64616e63655f76696577223b733a333a22796573223b733a31313a2274617474656e64616e6365223b733a333a22796573223b733a31353a2274617474656e64616e63655f616464223b733a333a22796573223b733a31363a2274617474656e64616e63655f76696577223b733a333a22796573223b733a31313a2275617474656e64616e6365223b733a333a22796573223b733a31353a2275617474656e64616e63655f616464223b733a333a22796573223b733a31363a2275617474656e64616e63655f76696577223b733a333a22796573223b733a343a226578616d223b733a333a22796573223b733a383a226578616d5f616464223b733a333a22796573223b733a393a226578616d5f65646974223b733a333a22796573223b733a31313a226578616d5f64656c657465223b733a333a22796573223b733a31323a226578616d7363686564756c65223b733a333a22796573223b733a31363a226578616d7363686564756c655f616464223b733a333a22796573223b733a31373a226578616d7363686564756c655f65646974223b733a333a22796573223b733a31393a226578616d7363686564756c655f64656c657465223b733a333a22796573223b733a353a226772616465223b733a333a22796573223b733a393a2267726164655f616464223b733a333a22796573223b733a31303a2267726164655f65646974223b733a333a22796573223b733a31323a2267726164655f64656c657465223b733a333a22796573223b733a31313a2265617474656e64616e6365223b733a333a22796573223b733a31353a2265617474656e64616e63655f616464223b733a333a22796573223b733a343a226d61726b223b733a333a22796573223b733a383a226d61726b5f616464223b733a333a22796573223b733a393a226d61726b5f76696577223b733a333a22796573223b733a31343a226d61726b70657263656e74616765223b733a333a22796573223b733a31383a226d61726b70657263656e746167655f616464223b733a333a22796573223b733a31393a226d61726b70657263656e746167655f65646974223b733a333a22796573223b733a32313a226d61726b70657263656e746167655f64656c657465223b733a333a22796573223b733a393a2270726f6d6f74696f6e223b733a333a22796573223b733a31323a22636f6e766572736174696f6e223b733a333a22796573223b733a353a226d65646961223b733a333a22796573223b733a393a226d656469615f616464223b733a333a22796573223b733a31323a226d656469615f64656c657465223b733a333a22796573223b733a31303a226d61696c616e64736d73223b733a333a22796573223b733a31343a226d61696c616e64736d735f616464223b733a333a22796573223b733a31353a226d61696c616e64736d735f76696577223b733a333a22796573223b733a31343a227175657374696f6e5f67726f7570223b733a333a22796573223b733a31383a227175657374696f6e5f67726f75705f616464223b733a333a22796573223b733a31393a227175657374696f6e5f67726f75705f65646974223b733a333a22796573223b733a32313a227175657374696f6e5f67726f75705f64656c657465223b733a333a22796573223b733a31343a227175657374696f6e5f6c6576656c223b733a333a22796573223b733a31383a227175657374696f6e5f6c6576656c5f616464223b733a333a22796573223b733a31393a227175657374696f6e5f6c6576656c5f65646974223b733a333a22796573223b733a32313a227175657374696f6e5f6c6576656c5f64656c657465223b733a333a22796573223b733a31333a227175657374696f6e5f62616e6b223b733a333a22796573223b733a31373a227175657374696f6e5f62616e6b5f616464223b733a333a22796573223b733a31383a227175657374696f6e5f62616e6b5f65646974223b733a333a22796573223b733a32303a227175657374696f6e5f62616e6b5f64656c657465223b733a333a22796573223b733a31383a227175657374696f6e5f62616e6b5f76696577223b733a333a22796573223b733a31313a226f6e6c696e655f6578616d223b733a333a22796573223b733a31353a226f6e6c696e655f6578616d5f616464223b733a333a22796573223b733a31363a226f6e6c696e655f6578616d5f65646974223b733a333a22796573223b733a31383a226f6e6c696e655f6578616d5f64656c657465223b733a333a22796573223b733a31313a22696e737472756374696f6e223b733a333a22796573223b733a31353a22696e737472756374696f6e5f616464223b733a333a22796573223b733a31363a22696e737472756374696f6e5f65646974223b733a333a22796573223b733a31383a22696e737472756374696f6e5f64656c657465223b733a333a22796573223b733a31363a22696e737472756374696f6e5f76696577223b733a333a22796573223b733a31353a2273616c6172795f74656d706c617465223b733a333a22796573223b733a31393a2273616c6172795f74656d706c6174655f616464223b733a333a22796573223b733a32303a2273616c6172795f74656d706c6174655f65646974223b733a333a22796573223b733a32323a2273616c6172795f74656d706c6174655f64656c657465223b733a333a22796573223b733a32303a2273616c6172795f74656d706c6174655f76696577223b733a333a22796573223b733a31353a22686f75726c795f74656d706c617465223b733a333a22796573223b733a31393a22686f75726c795f74656d706c6174655f616464223b733a333a22796573223b733a32303a22686f75726c795f74656d706c6174655f65646974223b733a333a22796573223b733a32323a22686f75726c795f74656d706c6174655f64656c657465223b733a333a22796573223b733a31333a226d616e6167655f73616c617279223b733a333a22796573223b733a31373a226d616e6167655f73616c6172795f616464223b733a333a22796573223b733a31383a226d616e6167655f73616c6172795f65646974223b733a333a22796573223b733a32303a226d616e6167655f73616c6172795f64656c657465223b733a333a22796573223b733a31383a226d616e6167655f73616c6172795f76696577223b733a333a22796573223b733a31323a226d616b655f7061796d656e74223b733a333a22796573223b733a363a2276656e646f72223b733a333a22796573223b733a31303a2276656e646f725f616464223b733a333a22796573223b733a31313a2276656e646f725f65646974223b733a333a22796573223b733a31333a2276656e646f725f64656c657465223b733a333a22796573223b733a383a226c6f636174696f6e223b733a333a22796573223b733a31323a226c6f636174696f6e5f616464223b733a333a22796573223b733a31333a226c6f636174696f6e5f65646974223b733a333a22796573223b733a31353a226c6f636174696f6e5f64656c657465223b733a333a22796573223b733a31343a2261737365745f63617465676f7279223b733a333a22796573223b733a31383a2261737365745f63617465676f72795f616464223b733a333a22796573223b733a31393a2261737365745f63617465676f72795f65646974223b733a333a22796573223b733a32313a2261737365745f63617465676f72795f64656c657465223b733a333a22796573223b733a353a226173736574223b733a333a22796573223b733a393a2261737365745f616464223b733a333a22796573223b733a31303a2261737365745f65646974223b733a333a22796573223b733a31323a2261737365745f64656c657465223b733a333a22796573223b733a31303a2261737365745f76696577223b733a333a22796573223b733a31363a2261737365745f61737369676e6d656e74223b733a333a22796573223b733a32303a2261737365745f61737369676e6d656e745f616464223b733a333a22796573223b733a32313a2261737365745f61737369676e6d656e745f65646974223b733a333a22796573223b733a32333a2261737365745f61737369676e6d656e745f64656c657465223b733a333a22796573223b733a32313a2261737365745f61737369676e6d656e745f76696577223b733a333a22796573223b733a383a227075726368617365223b733a333a22796573223b733a31323a2270757263686173655f616464223b733a333a22796573223b733a31333a2270757263686173655f65646974223b733a333a22796573223b733a31353a2270757263686173655f64656c657465223b733a333a22796573223b733a31383a226163746976697469657363617465676f7279223b733a333a22796573223b733a32323a226163746976697469657363617465676f72795f616464223b733a333a22796573223b733a32333a226163746976697469657363617465676f72795f65646974223b733a333a22796573223b733a32353a226163746976697469657363617465676f72795f64656c657465223b733a333a22796573223b733a31303a2261637469766974696573223b733a333a22796573223b733a31343a22616374697669746965735f616464223b733a333a22796573223b733a31373a22616374697669746965735f64656c657465223b733a333a22796573223b733a393a226368696c6463617265223b733a333a22796573223b733a31333a226368696c64636172655f616464223b733a333a22796573223b733a31363a226368696c64636172655f64656c657465223b733a333a22796573223b733a373a226c6d656d626572223b733a333a22796573223b733a31313a226c6d656d6265725f616464223b733a333a22796573223b733a31323a226c6d656d6265725f65646974223b733a333a22796573223b733a31343a226c6d656d6265725f64656c657465223b733a333a22796573223b733a31323a226c6d656d6265725f76696577223b733a333a22796573223b733a343a22626f6f6b223b733a333a22796573223b733a383a22626f6f6b5f616464223b733a333a22796573223b733a393a22626f6f6b5f65646974223b733a333a22796573223b733a31313a22626f6f6b5f64656c657465223b733a333a22796573223b733a353a226973737565223b733a333a22796573223b733a393a2269737375655f616464223b733a333a22796573223b733a31303a2269737375655f65646974223b733a333a22796573223b733a31303a2269737375655f76696577223b733a333a22796573223b733a393a227472616e73706f7274223b733a333a22796573223b733a31333a227472616e73706f72745f616464223b733a333a22796573223b733a31343a227472616e73706f72745f65646974223b733a333a22796573223b733a31363a227472616e73706f72745f64656c657465223b733a333a22796573223b733a373a22746d656d626572223b733a333a22796573223b733a31313a22746d656d6265725f616464223b733a333a22796573223b733a31323a22746d656d6265725f65646974223b733a333a22796573223b733a31343a22746d656d6265725f64656c657465223b733a333a22796573223b733a31323a22746d656d6265725f76696577223b733a333a22796573223b733a363a22686f7374656c223b733a333a22796573223b733a31303a22686f7374656c5f616464223b733a333a22796573223b733a31313a22686f7374656c5f65646974223b733a333a22796573223b733a31333a22686f7374656c5f64656c657465223b733a333a22796573223b733a383a2263617465676f7279223b733a333a22796573223b733a31323a2263617465676f72795f616464223b733a333a22796573223b733a31333a2263617465676f72795f65646974223b733a333a22796573223b733a31353a2263617465676f72795f64656c657465223b733a333a22796573223b733a373a22686d656d626572223b733a333a22796573223b733a31313a22686d656d6265725f616464223b733a333a22796573223b733a31323a22686d656d6265725f65646974223b733a333a22796573223b733a31343a22686d656d6265725f64656c657465223b733a333a22796573223b733a31323a22686d656d6265725f76696577223b733a333a22796573223b733a383a226665657479706573223b733a333a22796573223b733a31323a2266656574797065735f616464223b733a333a22796573223b733a31333a2266656574797065735f65646974223b733a333a22796573223b733a31353a2266656574797065735f64656c657465223b733a333a22796573223b733a373a22696e766f696365223b733a333a22796573223b733a31313a22696e766f6963655f616464223b733a333a22796573223b733a31323a22696e766f6963655f65646974223b733a333a22796573223b733a31343a22696e766f6963655f64656c657465223b733a333a22796573223b733a31323a22696e766f6963655f76696577223b733a333a22796573223b733a31343a227061796d656e74686973746f7279223b733a333a22796573223b733a31393a227061796d656e74686973746f72795f65646974223b733a333a22796573223b733a32313a227061796d656e74686973746f72795f64656c657465223b733a333a22796573223b733a373a22657870656e7365223b733a333a22796573223b733a31313a22657870656e73655f616464223b733a333a22796573223b733a31323a22657870656e73655f65646974223b733a333a22796573223b733a31343a22657870656e73655f64656c657465223b733a333a22796573223b733a363a226e6f74696365223b733a333a22796573223b733a31303a226e6f746963655f616464223b733a333a22796573223b733a31313a226e6f746963655f65646974223b733a333a22796573223b733a31333a226e6f746963655f64656c657465223b733a333a22796573223b733a31313a226e6f746963655f76696577223b733a333a22796573223b733a353a226576656e74223b733a333a22796573223b733a393a226576656e745f616464223b733a333a22796573223b733a31303a226576656e745f65646974223b733a333a22796573223b733a31323a226576656e745f64656c657465223b733a333a22796573223b733a31303a226576656e745f76696577223b733a333a22796573223b733a373a22686f6c69646179223b733a333a22796573223b733a31313a22686f6c696461795f616464223b733a333a22796573223b733a31323a22686f6c696461795f65646974223b733a333a22796573223b733a31343a22686f6c696461795f64656c657465223b733a333a22796573223b733a31323a22686f6c696461795f76696577223b733a333a22796573223b733a363a227265706f7274223b733a333a22796573223b733a32303a227265706f72742f73747564656e747265706f7274223b733a333a22796573223b733a31383a227265706f72742f636c6173737265706f7274223b733a333a22796573223b733a32333a227265706f72742f617474656e64616e63657265706f7274223b733a333a22796573223b733a31383a227265706f72742f6365727469666963617465223b733a333a22796573223b733a31313a2276697369746f72696e666f223b733a333a22796573223b733a31383a2276697369746f72696e666f5f64656c657465223b733a333a22796573223b733a31363a2276697369746f72696e666f5f76696577223b733a333a22796573223b733a31303a227363686f6f6c79656172223b733a333a22796573223b733a31343a227363686f6f6c796561725f616464223b733a333a22796573223b733a31353a227363686f6f6c796561725f65646974223b733a333a22796573223b733a31373a227363686f6f6c796561725f64656c657465223b733a333a22796573223b733a31323a2273747564656e7467726f7570223b733a333a22796573223b733a31363a2273747564656e7467726f75705f616464223b733a333a22796573223b733a31373a2273747564656e7467726f75705f65646974223b733a333a22796573223b733a31393a2273747564656e7467726f75705f64656c657465223b733a333a22796573223b733a383a22636f6d706c61696e223b733a333a22796573223b733a31323a22636f6d706c61696e5f616464223b733a333a22796573223b733a31333a22636f6d706c61696e5f65646974223b733a333a22796573223b733a31353a22636f6d706c61696e5f64656c657465223b733a333a22796573223b733a31333a22636f6d706c61696e5f76696577223b733a333a22796573223b733a32303a2263657274696669636174655f74656d706c617465223b733a333a22796573223b733a32343a2263657274696669636174655f74656d706c6174655f616464223b733a333a22796573223b733a32353a2263657274696669636174655f74656d706c6174655f65646974223b733a333a22796573223b733a32373a2263657274696669636174655f74656d706c6174655f64656c657465223b733a333a22796573223b733a32353a2263657274696669636174655f74656d706c6174655f76696577223b733a333a22796573223b733a31313a2273797374656d61646d696e223b733a333a22796573223b733a31353a2273797374656d61646d696e5f616464223b733a333a22796573223b733a31363a2273797374656d61646d696e5f65646974223b733a333a22796573223b733a31383a2273797374656d61646d696e5f64656c657465223b733a333a22796573223b733a31363a2273797374656d61646d696e5f76696577223b733a333a22796573223b733a31333a22726573657470617373776f7264223b733a333a22796573223b733a31383a226d61696c616e64736d7374656d706c617465223b733a333a22796573223b733a32323a226d61696c616e64736d7374656d706c6174655f616464223b733a333a22796573223b733a32333a226d61696c616e64736d7374656d706c6174655f65646974223b733a333a22796573223b733a32353a226d61696c616e64736d7374656d706c6174655f64656c657465223b733a333a22796573223b733a32333a226d61696c616e64736d7374656d706c6174655f76696577223b733a333a22796573223b733a31303a2262756c6b696d706f7274223b733a333a22796573223b733a363a226261636b7570223b733a333a22796573223b733a383a227573657274797065223b733a333a22796573223b733a31323a2275736572747970655f616464223b733a333a22796573223b733a31333a2275736572747970655f65646974223b733a333a22796573223b733a31353a2275736572747970655f64656c657465223b733a333a22796573223b733a31303a227065726d697373696f6e223b733a333a22796573223b733a363a22757064617465223b733a333a22796573223b733a373a2273657474696e67223b733a333a22796573223b733a31323a2273657474696e675f65646974223b733a333a22796573223b733a31353a227061796d656e7473657474696e6773223b733a333a22796573223b733a31313a22736d7373657474696e6773223b733a333a22796573223b733a353a227061676573223b733a333a22796573223b733a393a2270616765735f616464223b733a333a22796573223b733a31303a2270616765735f65646974223b733a333a22796573223b733a31323a2270616765735f64656c657465223b733a333a22796573223b733a31363a2266726f6e74656e645f73657474696e67223b733a333a22796573223b733a393a2274616b655f6578616d223b733a333a22796573223b7d6572726f727c4e3b);

-- --------------------------------------------------------

--
-- Table structure for table `section`
--

CREATE TABLE IF NOT EXISTS `section` (
  `sectionID` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `section` varchar(60) NOT NULL,
  `category` varchar(128) NOT NULL,
  `capacity` int(11) NOT NULL,
  `classesID` int(11) NOT NULL,
  `teacherID` int(11) NOT NULL,
  `note` text,
  `create_date` datetime NOT NULL,
  `modify_date` datetime NOT NULL,
  `create_userID` int(11) NOT NULL,
  `create_username` varchar(40) NOT NULL,
  `create_usertype` varchar(20) NOT NULL,
  PRIMARY KEY (`sectionID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `setting`
--

CREATE TABLE IF NOT EXISTS `setting` (
  `fieldoption` varchar(100) NOT NULL,
  `value` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`fieldoption`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `setting`
--

INSERT INTO `setting` (`fieldoption`, `value`) VALUES
('address', 'No'),
('attendance', 'day'),
('automation', '5'),
('auto_invoice_generate', '0'),
('backend_theme', 'red'),
('captcha_status', '1'),
('currency_code', 'Inr'),
('currency_symbol', 'Rs'),
('email', 'abcd@gmail.com'),
('footer', 'Copyright &copy; School'),
('frontendorbackend', 'YES'),
('frontend_theme', 'default'),
('google_analytics', ''),
('language', 'english'),
('language_status', '0'),
('mark_1', '1'),
('note', '1'),
('phone', '1234567890'),
('photo', '529ee9731ec05aa967e7f43d979a432ed073f748b99fff22b6dba29f48aec31a80a8c986ab39aa30a368441a422c74daf7e5d35bbcc3d48d9f97f45e8a0d9933.png'),
('purchase_code', '#'),
('purchase_username', ''),
('recaptcha_secret_key', ''),
('recaptcha_site_key', ''),
('school_type', 'classbase'),
('school_year', '1'),
('sname', 'School'),
('student_ID_format', '1'),
('updateversion', '3.5');

-- --------------------------------------------------------

--
-- Table structure for table `slider`
--

CREATE TABLE IF NOT EXISTS `slider` (
  `sliderID` int(11) NOT NULL AUTO_INCREMENT,
  `pagesID` int(11) NOT NULL,
  `slider` int(11) NOT NULL,
  PRIMARY KEY (`sliderID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `smssettings`
--

CREATE TABLE IF NOT EXISTS `smssettings` (
  `smssettingsID` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `types` varchar(255) DEFAULT NULL,
  `field_names` varchar(255) DEFAULT NULL,
  `field_values` varchar(255) DEFAULT NULL,
  `smssettings_extra` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`smssettingsID`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=11 ;

--
-- Dumping data for table `smssettings`
--

INSERT INTO `smssettings` (`smssettingsID`, `types`, `field_names`, `field_values`, `smssettings_extra`) VALUES
(1, 'clickatell', 'clickatell_username', 'dsdf', NULL),
(2, 'clickatell', 'clickatell_password', 'sdfsdf', NULL),
(3, 'clickatell', 'clickatell_api_key', 'dfsdf', NULL),
(4, 'twilio', 'twilio_accountSID', '', NULL),
(5, 'twilio', 'twilio_authtoken', '', NULL),
(6, 'twilio', 'twilio_fromnumber', '', NULL),
(7, 'bulk', 'bulk_username', '', NULL),
(8, 'bulk', 'bulk_password', '', NULL),
(9, 'msg91', 'msg91_authKey', '', NULL),
(10, 'msg91', 'msg91_senderID', '', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `student`
--

CREATE TABLE IF NOT EXISTS `student` (
  `studentID` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(60) NOT NULL,
  `dob` date DEFAULT NULL,
  `sex` varchar(10) NOT NULL,
  `religion` varchar(25) DEFAULT NULL,
  `email` varchar(40) DEFAULT NULL,
  `phone` tinytext,
  `address` text,
  `classesID` int(11) NOT NULL,
  `sectionID` int(11) NOT NULL,
  `roll` int(11) NOT NULL,
  `bloodgroup` varchar(5) DEFAULT NULL,
  `country` varchar(128) DEFAULT NULL,
  `registerNO` varchar(128) DEFAULT NULL,
  `state` varchar(128) DEFAULT NULL,
  `library` int(11) NOT NULL,
  `hostel` int(11) NOT NULL,
  `transport` int(11) NOT NULL,
  `photo` varchar(200) DEFAULT NULL,
  `parentID` int(11) DEFAULT NULL,
  `createschoolyearID` int(11) NOT NULL,
  `schoolyearID` int(11) NOT NULL,
  `username` varchar(40) NOT NULL,
  `password` varchar(128) NOT NULL,
  `usertypeID` int(11) NOT NULL,
  `create_date` datetime NOT NULL,
  `modify_date` datetime NOT NULL,
  `create_userID` int(11) NOT NULL,
  `create_username` varchar(40) NOT NULL,
  `create_usertype` varchar(20) NOT NULL,
  `active` int(11) NOT NULL,
  PRIMARY KEY (`studentID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `studentextend`
--

CREATE TABLE IF NOT EXISTS `studentextend` (
  `studentextendID` int(11) NOT NULL AUTO_INCREMENT,
  `studentID` int(11) NOT NULL,
  `studentgroupID` int(11) NOT NULL,
  `optionalsubjectID` int(11) NOT NULL,
  `extracurricularactivities` text,
  `remarks` text,
  PRIMARY KEY (`studentextendID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `studentgroup`
--

CREATE TABLE IF NOT EXISTS `studentgroup` (
  `studentgroupID` int(11) NOT NULL AUTO_INCREMENT,
  `group` varchar(128) NOT NULL,
  PRIMARY KEY (`studentgroupID`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `studentgroup`
--

INSERT INTO `studentgroup` (`studentgroupID`, `group`) VALUES
(1, 'Science'),
(2, 'Arts'),
(3, 'Commerce');

-- --------------------------------------------------------

--
-- Table structure for table `studentrelation`
--

CREATE TABLE IF NOT EXISTS `studentrelation` (
  `studentrelationID` int(11) NOT NULL AUTO_INCREMENT,
  `srstudentID` int(11) DEFAULT NULL,
  `srname` varchar(40) NOT NULL,
  `srclassesID` int(11) DEFAULT NULL,
  `srclasses` varchar(40) DEFAULT NULL,
  `srroll` int(11) DEFAULT NULL,
  `srregisterNO` varchar(128) DEFAULT NULL,
  `srsectionID` int(11) DEFAULT NULL,
  `srsection` varchar(40) DEFAULT NULL,
  `srstudentgroupID` int(11) NOT NULL,
  `sroptionalsubjectID` int(11) NOT NULL,
  `srschoolyearID` int(11) DEFAULT NULL,
  PRIMARY KEY (`studentrelationID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `subject`
--

CREATE TABLE IF NOT EXISTS `subject` (
  `subjectID` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `classesID` int(11) NOT NULL,
  `teacherID` int(11) NOT NULL,
  `type` int(100) NOT NULL,
  `passmark` int(11) NOT NULL,
  `finalmark` int(11) NOT NULL,
  `subject` varchar(60) NOT NULL,
  `subject_author` varchar(100) DEFAULT NULL,
  `subject_code` tinytext NOT NULL,
  `teacher_name` varchar(60) NOT NULL,
  `create_date` datetime NOT NULL,
  `modify_date` datetime NOT NULL,
  `create_userID` int(11) NOT NULL,
  `create_username` varchar(40) NOT NULL,
  `create_usertype` varchar(20) NOT NULL,
  PRIMARY KEY (`subjectID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `sub_attendance`
--

CREATE TABLE IF NOT EXISTS `sub_attendance` (
  `attendanceID` int(200) unsigned NOT NULL AUTO_INCREMENT,
  `schoolyearID` int(11) NOT NULL,
  `studentID` int(11) NOT NULL,
  `classesID` int(11) NOT NULL,
  `sectionID` int(11) NOT NULL,
  `subjectID` int(11) NOT NULL,
  `userID` int(11) NOT NULL,
  `usertype` varchar(20) NOT NULL,
  `monthyear` varchar(10) NOT NULL,
  `a1` varchar(3) DEFAULT NULL,
  `a2` varchar(3) DEFAULT NULL,
  `a3` varchar(3) DEFAULT NULL,
  `a4` varchar(3) DEFAULT NULL,
  `a5` varchar(3) DEFAULT NULL,
  `a6` varchar(3) DEFAULT NULL,
  `a7` varchar(3) DEFAULT NULL,
  `a8` varchar(3) DEFAULT NULL,
  `a9` varchar(3) DEFAULT NULL,
  `a10` varchar(3) DEFAULT NULL,
  `a11` varchar(3) DEFAULT NULL,
  `a12` varchar(3) DEFAULT NULL,
  `a13` varchar(3) DEFAULT NULL,
  `a14` varchar(3) DEFAULT NULL,
  `a15` varchar(3) DEFAULT NULL,
  `a16` varchar(3) DEFAULT NULL,
  `a17` varchar(3) DEFAULT NULL,
  `a18` varchar(3) DEFAULT NULL,
  `a19` varchar(3) DEFAULT NULL,
  `a20` varchar(3) DEFAULT NULL,
  `a21` varchar(3) DEFAULT NULL,
  `a22` varchar(3) DEFAULT NULL,
  `a23` varchar(3) DEFAULT NULL,
  `a24` varchar(3) DEFAULT NULL,
  `a25` varchar(3) DEFAULT NULL,
  `a26` varchar(3) DEFAULT NULL,
  `a27` varchar(3) DEFAULT NULL,
  `a28` varchar(3) DEFAULT NULL,
  `a29` varchar(3) DEFAULT NULL,
  `a30` varchar(3) DEFAULT NULL,
  `a31` varchar(3) DEFAULT NULL,
  PRIMARY KEY (`attendanceID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `syllabus`
--

CREATE TABLE IF NOT EXISTS `syllabus` (
  `syllabusID` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(128) NOT NULL,
  `description` text,
  `date` date NOT NULL,
  `usertypeID` int(11) NOT NULL,
  `userID` int(11) NOT NULL,
  `originalfile` text NOT NULL,
  `file` text,
  `classesID` int(11) NOT NULL,
  `schoolyearID` int(11) NOT NULL,
  PRIMARY KEY (`syllabusID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `systemadmin`
--

CREATE TABLE IF NOT EXISTS `systemadmin` (
  `systemadminID` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(60) NOT NULL,
  `dob` date NOT NULL,
  `sex` varchar(10) NOT NULL,
  `religion` varchar(25) DEFAULT NULL,
  `email` varchar(40) DEFAULT NULL,
  `phone` tinytext,
  `address` text,
  `jod` date NOT NULL,
  `photo` varchar(200) DEFAULT NULL,
  `username` varchar(40) NOT NULL,
  `password` varchar(128) NOT NULL,
  `usertypeID` int(11) NOT NULL,
  `create_date` datetime NOT NULL,
  `modify_date` datetime NOT NULL,
  `create_userID` int(11) NOT NULL,
  `create_username` varchar(40) NOT NULL,
  `create_usertype` varchar(20) NOT NULL,
  `active` int(11) NOT NULL,
  `systemadminextra1` varchar(128) DEFAULT NULL,
  `systemadminextra2` varchar(128) DEFAULT NULL,
  PRIMARY KEY (`systemadminID`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `systemadmin`
--

INSERT INTO `systemadmin` (`systemadminID`, `name`, `dob`, `sex`, `religion`, `email`, `phone`, `address`, `jod`, `photo`, `username`, `password`, `usertypeID`, `create_date`, `modify_date`, `create_userID`, `create_username`, `create_usertype`, `active`, `systemadminextra1`, `systemadminextra2`) VALUES
(1, 'admin', '2018-02-09', 'Male', 'Hindu', 'abcd@gmail.com', '12346789', 'hhhh', '2018-02-09', 'default.png', 'admin', 'e5005ae49af2e9aaf7d69318cf4b2572d04eba4cee91f01cea38390e382fefbe39eef9b95352160703cf438d7af4d503ba6214832eaaafa0d1f9c2e5d9813c2f', 1, '2018-02-09 04:01:21', '2018-02-09 04:01:21', 0, 'admin', 'Admin', 1, '', '');

-- --------------------------------------------------------

--
-- Table structure for table `tattendance`
--

CREATE TABLE IF NOT EXISTS `tattendance` (
  `tattendanceID` int(200) unsigned NOT NULL AUTO_INCREMENT,
  `schoolyearID` int(11) NOT NULL,
  `teacherID` int(11) NOT NULL,
  `usertypeID` int(11) NOT NULL,
  `monthyear` varchar(10) NOT NULL,
  `a1` varchar(3) DEFAULT NULL,
  `a2` varchar(3) DEFAULT NULL,
  `a3` varchar(3) DEFAULT NULL,
  `a4` varchar(3) DEFAULT NULL,
  `a5` varchar(3) DEFAULT NULL,
  `a6` varchar(3) DEFAULT NULL,
  `a7` varchar(3) DEFAULT NULL,
  `a8` varchar(3) DEFAULT NULL,
  `a9` varchar(3) DEFAULT NULL,
  `a10` varchar(3) DEFAULT NULL,
  `a11` varchar(3) DEFAULT NULL,
  `a12` varchar(3) DEFAULT NULL,
  `a13` varchar(3) DEFAULT NULL,
  `a14` varchar(3) DEFAULT NULL,
  `a15` varchar(3) DEFAULT NULL,
  `a16` varchar(3) DEFAULT NULL,
  `a17` varchar(3) DEFAULT NULL,
  `a18` varchar(3) DEFAULT NULL,
  `a19` varchar(3) DEFAULT NULL,
  `a20` varchar(3) DEFAULT NULL,
  `a21` varchar(3) DEFAULT NULL,
  `a22` varchar(3) DEFAULT NULL,
  `a23` varchar(3) DEFAULT NULL,
  `a24` varchar(3) DEFAULT NULL,
  `a25` varchar(3) DEFAULT NULL,
  `a26` varchar(3) DEFAULT NULL,
  `a27` varchar(3) DEFAULT NULL,
  `a28` varchar(3) DEFAULT NULL,
  `a29` varchar(3) DEFAULT NULL,
  `a30` varchar(3) DEFAULT NULL,
  `a31` varchar(3) DEFAULT NULL,
  PRIMARY KEY (`tattendanceID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `teacher`
--

CREATE TABLE IF NOT EXISTS `teacher` (
  `teacherID` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(60) NOT NULL,
  `designation` varchar(128) NOT NULL,
  `dob` date NOT NULL,
  `sex` varchar(10) NOT NULL,
  `religion` varchar(25) DEFAULT NULL,
  `email` varchar(40) DEFAULT NULL,
  `phone` tinytext,
  `address` text,
  `jod` date NOT NULL,
  `photo` varchar(200) DEFAULT NULL,
  `username` varchar(40) NOT NULL,
  `password` varchar(128) NOT NULL,
  `usertypeID` int(11) NOT NULL,
  `create_date` datetime NOT NULL,
  `modify_date` datetime NOT NULL,
  `create_userID` int(11) NOT NULL,
  `create_username` varchar(40) NOT NULL,
  `create_usertype` varchar(20) NOT NULL,
  `active` int(11) NOT NULL,
  PRIMARY KEY (`teacherID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `themes`
--

CREATE TABLE IF NOT EXISTS `themes` (
  `themesID` int(11) NOT NULL AUTO_INCREMENT,
  `sortID` int(11) NOT NULL DEFAULT '1',
  `themename` varchar(128) NOT NULL,
  `backend` int(11) NOT NULL DEFAULT '1',
  `frontend` int(11) NOT NULL DEFAULT '1',
  `topcolor` text NOT NULL,
  `leftcolor` text NOT NULL,
  PRIMARY KEY (`themesID`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=15 ;

--
-- Dumping data for table `themes`
--

INSERT INTO `themes` (`themesID`, `sortID`, `themename`, `backend`, `frontend`, `topcolor`, `leftcolor`) VALUES
(1, 1, 'Default', 1, 1, '#FFFFFF', '#2d353c'),
(2, 0, 'Blue', 0, 1, '#3c8dbc', '#2d353c'),
(3, 3, 'Black', 1, 1, '#fefefe', '#222222'),
(4, 4, 'Purple', 1, 1, '#605ca8', '#2d353c'),
(5, 5, 'Green', 1, 1, '#00a65a', '#2d353c'),
(6, 6, 'Red', 1, 1, '#dd4b39', '#2d353c'),
(7, 0, 'Yellow', 0, 1, '#f39c12', '#2d353c'),
(8, 7, 'Blue Light', 1, 1, '#3c8dbc', '#f9fafc'),
(9, 8, 'Black Light', 1, 1, '#fefefe', '#f9fafc'),
(10, 9, 'Purple Light', 1, 1, '#605ca8', '#f9fafc'),
(11, 10, 'Green Light', 1, 1, '#00a65a', '#f9fafc'),
(12, 11, 'Red Light', 1, 1, '#dd4b39', '#f9fafc'),
(13, 12, 'Yellow Light', 1, 1, '#f39c12', '#f9fafc'),
(14, 2, 'White Blue', 1, 1, '#ffffff', '#132035');

-- --------------------------------------------------------

--
-- Table structure for table `tmember`
--

CREATE TABLE IF NOT EXISTS `tmember` (
  `tmemberID` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `studentID` int(11) NOT NULL,
  `transportID` int(11) NOT NULL,
  `name` varchar(60) NOT NULL,
  `email` varchar(40) DEFAULT NULL,
  `phone` tinytext,
  `tbalance` varchar(11) DEFAULT NULL,
  `tjoindate` date NOT NULL,
  PRIMARY KEY (`tmemberID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `transport`
--

CREATE TABLE IF NOT EXISTS `transport` (
  `transportID` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `route` text NOT NULL,
  `vehicle` int(11) NOT NULL,
  `fare` varchar(11) NOT NULL,
  `note` text,
  PRIMARY KEY (`transportID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `uattendance`
--

CREATE TABLE IF NOT EXISTS `uattendance` (
  `uattendanceID` int(200) unsigned NOT NULL AUTO_INCREMENT,
  `schoolyearID` int(11) NOT NULL,
  `userID` int(11) NOT NULL,
  `usertypeID` int(11) NOT NULL,
  `monthyear` varchar(10) NOT NULL,
  `a1` varchar(3) DEFAULT NULL,
  `a2` varchar(3) DEFAULT NULL,
  `a3` varchar(3) DEFAULT NULL,
  `a4` varchar(3) DEFAULT NULL,
  `a5` varchar(3) DEFAULT NULL,
  `a6` varchar(3) DEFAULT NULL,
  `a7` varchar(3) DEFAULT NULL,
  `a8` varchar(3) DEFAULT NULL,
  `a9` varchar(3) DEFAULT NULL,
  `a10` varchar(3) DEFAULT NULL,
  `a11` varchar(3) DEFAULT NULL,
  `a12` varchar(3) DEFAULT NULL,
  `a13` varchar(3) DEFAULT NULL,
  `a14` varchar(3) DEFAULT NULL,
  `a15` varchar(3) DEFAULT NULL,
  `a16` varchar(3) DEFAULT NULL,
  `a17` varchar(3) DEFAULT NULL,
  `a18` varchar(3) DEFAULT NULL,
  `a19` varchar(3) DEFAULT NULL,
  `a20` varchar(3) DEFAULT NULL,
  `a21` varchar(3) DEFAULT NULL,
  `a22` varchar(3) DEFAULT NULL,
  `a23` varchar(3) DEFAULT NULL,
  `a24` varchar(3) DEFAULT NULL,
  `a25` varchar(3) DEFAULT NULL,
  `a26` varchar(3) DEFAULT NULL,
  `a27` varchar(3) DEFAULT NULL,
  `a28` varchar(3) DEFAULT NULL,
  `a29` varchar(3) DEFAULT NULL,
  `a30` varchar(3) DEFAULT NULL,
  `a31` varchar(3) DEFAULT NULL,
  PRIMARY KEY (`uattendanceID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE IF NOT EXISTS `user` (
  `userID` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(60) NOT NULL,
  `dob` date NOT NULL,
  `sex` varchar(10) NOT NULL,
  `religion` varchar(25) DEFAULT NULL,
  `email` varchar(40) DEFAULT NULL,
  `phone` tinytext,
  `address` text,
  `jod` date NOT NULL,
  `photo` varchar(200) DEFAULT NULL,
  `username` varchar(40) NOT NULL,
  `password` varchar(128) NOT NULL,
  `usertypeID` int(11) NOT NULL,
  `create_date` datetime NOT NULL,
  `modify_date` datetime NOT NULL,
  `create_userID` int(11) NOT NULL,
  `create_username` varchar(40) NOT NULL,
  `create_usertype` varchar(20) NOT NULL,
  `active` int(11) NOT NULL,
  PRIMARY KEY (`userID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `usertype`
--

CREATE TABLE IF NOT EXISTS `usertype` (
  `usertypeID` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `usertype` varchar(60) NOT NULL,
  `create_date` datetime NOT NULL,
  `modify_date` datetime NOT NULL,
  `create_userID` int(11) NOT NULL,
  `create_username` varchar(40) NOT NULL,
  `create_usertype` varchar(20) NOT NULL,
  PRIMARY KEY (`usertypeID`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=9 ;

--
-- Dumping data for table `usertype`
--

INSERT INTO `usertype` (`usertypeID`, `usertype`, `create_date`, `modify_date`, `create_userID`, `create_username`, `create_usertype`) VALUES
(1, 'Admin', '2016-06-24 07:12:49', '2016-06-24 07:12:49', 1, 'admin', 'Super Admin'),
(2, 'Teacher', '2016-06-24 07:13:13', '2016-06-24 07:13:13', 1, 'admin', 'Super Admin'),
(3, 'Student', '2016-06-24 07:13:27', '2016-06-24 07:13:27', 1, 'admin', 'Super Admin'),
(4, 'Parents', '2016-06-24 07:13:42', '2016-10-25 01:12:52', 1, 'admin', 'Super Admin'),
(5, 'Accountant', '2016-06-24 07:13:54', '2016-06-24 07:13:54', 1, 'admin', 'Super Admin'),
(6, 'Librarian', '2016-06-24 09:09:43', '2016-06-24 09:09:43', 1, 'admin', 'Super Admin'),
(7, 'Receptionist', '2016-10-30 06:24:41', '2016-10-30 06:24:41', 1, 'admin', 'Admin'),
(8, 'Moderator', '2016-10-30 07:00:20', '2016-12-06 06:08:38', 1, 'admin', 'Admin');

-- --------------------------------------------------------

--
-- Table structure for table `vendor`
--

CREATE TABLE IF NOT EXISTS `vendor` (
  `vendorID` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `contact_name` varchar(255) DEFAULT NULL,
  `date` date DEFAULT NULL,
  PRIMARY KEY (`vendorID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `visitorinfo`
--

CREATE TABLE IF NOT EXISTS `visitorinfo` (
  `visitorID` bigint(12) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(60) DEFAULT NULL,
  `email_id` varchar(128) DEFAULT NULL,
  `phone` text NOT NULL,
  `photo` varchar(128) DEFAULT NULL,
  `company_name` varchar(128) DEFAULT NULL,
  `coming_from` varchar(128) DEFAULT NULL,
  `representing` varchar(128) DEFAULT NULL,
  `to_meet_personID` int(11) NOT NULL,
  `to_meet_usertypeID` int(11) NOT NULL,
  `check_in` timestamp NULL DEFAULT NULL,
  `check_out` timestamp NULL DEFAULT NULL,
  `status` int(11) NOT NULL,
  `schoolyearID` int(11) NOT NULL,
  PRIMARY KEY (`visitorID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
