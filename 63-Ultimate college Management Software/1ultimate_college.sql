-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 11, 2018 at 05:46 AM
-- Server version: 10.1.28-MariaDB
-- PHP Version: 5.6.32

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `college`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin_login`
--

CREATE TABLE `admin_login` (
  `id` int(11) NOT NULL,
  `name` varchar(64) NOT NULL,
  `email` varchar(255) CHARACTER SET utf8mb4 NOT NULL,
  `password` varchar(255) CHARACTER SET utf8mb4 NOT NULL,
  `admin_type` int(11) NOT NULL COMMENT '0-admin 1- subadmin',
  `roll` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin_login`
--

INSERT INTO `admin_login` (`id`, `name`, `email`, `password`, `admin_type`, `roll`) VALUES
(1, 'Administrator', 'admin@admin.com', 'admin', 0, ''),
(5, 'Principal', 'principal@gmail.com', '12345', 1, 'Principal'),
(7, 'manager', 'manager@kanna.com', '1234', 0, '');

-- --------------------------------------------------------

--
-- Table structure for table `admin_no_count`
--

CREATE TABLE `admin_no_count` (
  `id` int(10) NOT NULL,
  `name` varchar(30) NOT NULL,
  `count` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin_no_count`
--

INSERT INTO `admin_no_count` (`id`, `name`, `count`) VALUES
(1, 'school admission', '1'),
(2, 'pre admission', '3'),
(3, 'kg', '1');

-- --------------------------------------------------------

--
-- Table structure for table `advance_payment`
--

CREATE TABLE `advance_payment` (
  `adv_pay_id` int(11) NOT NULL,
  `a_id` int(11) NOT NULL,
  `ex_id` int(11) NOT NULL,
  `r_no` varchar(200) NOT NULL,
  `ep_id` int(11) NOT NULL,
  `bal_advance` decimal(10,2) NOT NULL,
  `adv_created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `afeedback`
--

CREATE TABLE `afeedback` (
  `af_id` int(10) NOT NULL,
  `p_id` int(10) NOT NULL,
  `title` varchar(64) NOT NULL,
  `msg` varchar(300) NOT NULL,
  `date` varchar(64) NOT NULL,
  `c_id` int(10) NOT NULL,
  `s_id` int(10) NOT NULL,
  `b_id` int(10) NOT NULL,
  `ay_id` int(10) NOT NULL,
  `status` int(1) NOT NULL,
  `send` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `agency`
--

CREATE TABLE `agency` (
  `a_id` int(10) NOT NULL,
  `a_name` varchar(64) NOT NULL,
  `a_address` varchar(150) NOT NULL,
  `a_person` varchar(64) NOT NULL,
  `a_mobile` varchar(64) NOT NULL,
  `status` int(1) NOT NULL COMMENT '0-active,1-diactive'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `agency_advance`
--

CREATE TABLE `agency_advance` (
  `adv_id` int(11) NOT NULL,
  `a_id` int(11) NOT NULL,
  `rec_no` varchar(150) NOT NULL,
  `adv_date` datetime NOT NULL,
  `adv_amt` decimal(10,2) NOT NULL,
  `adv_purpose` varchar(225) NOT NULL,
  `status` int(2) NOT NULL,
  `p_type` varchar(200) NOT NULL,
  `pay_number` varchar(200) NOT NULL,
  `ba_id` int(11) NOT NULL,
  `bank` varchar(200) NOT NULL,
  `account` varchar(200) NOT NULL,
  `c_date` date NOT NULL,
  `c_status` int(5) NOT NULL COMMENT '0-process,1-bounce,2-debit',
  `ep_id` int(11) NOT NULL,
  `adv_created_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `receiver` varchar(50) NOT NULL,
  `billgenerate` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `agency_advance`
--

INSERT INTO `agency_advance` (`adv_id`, `a_id`, `rec_no`, `adv_date`, `adv_amt`, `adv_purpose`, `status`, `p_type`, `pay_number`, `ba_id`, `bank`, `account`, `c_date`, `c_status`, `ep_id`, `adv_created_date`, `receiver`, `billgenerate`) VALUES
(1, 150, 'AD00003', '2016-06-21 00:00:00', '1000.00', 'test', 1, 'cash', '', 0, '', '', '1970-01-01', 0, 0, '2016-06-21 07:08:19', 'mukkjkk', 'Administrator');

-- --------------------------------------------------------

--
-- Table structure for table `attendance`
--

CREATE TABLE `attendance` (
  `att_id` int(10) NOT NULL,
  `day` varchar(30) NOT NULL,
  `month` varchar(30) NOT NULL,
  `year` varchar(30) NOT NULL,
  `result` varchar(64) NOT NULL COMMENT '1-present,0-absent,off-offday',
  `result_half` varchar(20) NOT NULL,
  `remark` varchar(150) NOT NULL,
  `c_id` int(10) NOT NULL,
  `s_id` int(10) NOT NULL,
  `m_id` int(10) NOT NULL,
  `ss_id` int(10) NOT NULL,
  `b_id` int(10) NOT NULL,
  `ay_id` int(10) NOT NULL,
  `reason` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `bank_account`
--

CREATE TABLE `bank_account` (
  `ba_id` int(11) NOT NULL,
  `name` varchar(60) NOT NULL,
  `account_no` varchar(120) NOT NULL,
  `b_name` varchar(100) NOT NULL,
  `address` text NOT NULL,
  `amount` varchar(120) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `bank_account`
--

INSERT INTO `bank_account` (`ba_id`, `name`, `account_no`, `b_name`, `address`, `amount`) VALUES
(1, 'aaa', '12345', 'hai', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `bank_deposit`
--

CREATE TABLE `bank_deposit` (
  `bc_id` int(11) NOT NULL,
  `date` varchar(30) NOT NULL,
  `date_day` varchar(2) NOT NULL,
  `date_month` varchar(2) NOT NULL,
  `date_year` varchar(4) NOT NULL,
  `account_no` varchar(120) NOT NULL,
  `b_name` varchar(60) NOT NULL,
  `deposit_by` varchar(60) NOT NULL,
  `amount` varchar(120) NOT NULL,
  `ba_id` int(11) NOT NULL,
  `ay_id` int(11) NOT NULL,
  `type` int(1) NOT NULL DEFAULT '0' COMMENT '0-cash,1-fees cheque',
  `fi_id` int(11) NOT NULL COMMENT 'finvoice ID',
  `bfi_id` int(11) NOT NULL COMMENT 'bfinvoice ID',
  `deposit_date_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `mat_pay_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `bank_withdrawl`
--

CREATE TABLE `bank_withdrawl` (
  `bc_id` int(11) NOT NULL,
  `date` varchar(30) NOT NULL,
  `date_day` varchar(2) NOT NULL,
  `date_month` varchar(2) NOT NULL,
  `date_year` varchar(4) NOT NULL,
  `account_no` varchar(120) NOT NULL,
  `b_name` varchar(60) NOT NULL,
  `withdrawl_by` varchar(60) NOT NULL,
  `amount` varchar(120) NOT NULL,
  `ba_id` int(11) NOT NULL,
  `ay_id` int(11) NOT NULL,
  `type` int(1) NOT NULL DEFAULT '0' COMMENT '0-self cheque withdraw,1- cheque withdraw',
  `cheque_no` varchar(60) NOT NULL,
  `ep_id` int(11) NOT NULL COMMENT 'exponses_bill ID',
  `adv_id` int(11) NOT NULL,
  `withdrawl_date_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `battendance`
--

CREATE TABLE `battendance` (
  `att_id` int(10) NOT NULL,
  `day` varchar(30) NOT NULL,
  `month` varchar(30) NOT NULL,
  `year` varchar(30) NOT NULL,
  `mresult` varchar(64) NOT NULL,
  `eresult` varchar(20) NOT NULL,
  `mremark` varchar(150) NOT NULL,
  `eremark` varchar(120) NOT NULL,
  `r_id` int(10) NOT NULL,
  `sp_id` int(10) NOT NULL,
  `m_id` int(10) NOT NULL,
  `ss_id` int(10) NOT NULL,
  `b_id` int(10) NOT NULL,
  `ay_id` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `bfinvoice`
--

CREATE TABLE `bfinvoice` (
  `bfi_id` int(10) NOT NULL,
  `fr_no` varchar(30) NOT NULL,
  `fi_name` varchar(150) NOT NULL,
  `fi_total` varchar(60) NOT NULL,
  `fi_ptype` varchar(30) NOT NULL,
  `fi_day` varchar(5) NOT NULL,
  `fi_month` varchar(5) NOT NULL,
  `fi_year` varchar(8) NOT NULL,
  `ss_id` int(10) NOT NULL,
  `c_id` int(10) NOT NULL,
  `s_id` int(10) NOT NULL,
  `ffrom` int(2) NOT NULL,
  `fto` int(2) NOT NULL,
  `r_id` int(11) NOT NULL,
  `sp_id` int(11) NOT NULL,
  `busfeestype` int(2) NOT NULL,
  `bfi_by` varchar(150) NOT NULL,
  `bid` int(10) NOT NULL,
  `ay_id` int(10) NOT NULL,
  `pmfrom` int(11) NOT NULL,
  `pmto` int(11) NOT NULL,
  `pending` varchar(30) NOT NULL,
  `pay_number` varchar(30) NOT NULL,
  `get_amount` varchar(30) NOT NULL,
  `balance` varchar(30) NOT NULL,
  `i_status` int(1) NOT NULL COMMENT '0-paid,1-reject or delete',
  `c_status` int(1) NOT NULL COMMENT '0 - process,1 - bounced, 2- received',
  `ba_id` int(11) NOT NULL COMMENT 'Bank Account ID',
  `bank_name` varchar(30) NOT NULL,
  `cheque_date` varchar(30) NOT NULL,
  `cheque_service` int(11) DEFAULT NULL,
  `service_charge_status` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `bfinvoice_no`
--

CREATE TABLE `bfinvoice_no` (
  `id` int(10) NOT NULL,
  `count` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `bfinvoice_no`
--

INSERT INTO `bfinvoice_no` (`id`, `count`) VALUES
(1, '176');

-- --------------------------------------------------------

--
-- Table structure for table `board`
--

CREATE TABLE `board` (
  `b_id` int(10) NOT NULL,
  `b_name` varchar(64) NOT NULL,
  `s_code` varchar(60) NOT NULL,
  `medium` varchar(60) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `board`
--

INSERT INTO `board` (`b_id`, `b_name`, `s_code`, `medium`) VALUES
(1, 'TU', 'FOF', 'English'),
(2, 'CBSE', 'DAV001', 'ENGLISH');

-- --------------------------------------------------------

--
-- Table structure for table `bonafide`
--

CREATE TABLE `bonafide` (
  `b_id` int(10) NOT NULL,
  `admin_no` varchar(64) NOT NULL,
  `name` varchar(64) NOT NULL,
  `gender` varchar(10) NOT NULL,
  `city` varchar(30) NOT NULL,
  `p_name` varchar(64) NOT NULL,
  `standard` varchar(64) NOT NULL,
  `year` varchar(30) NOT NULL,
  `dob` varchar(64) NOT NULL,
  `ay_id` int(11) NOT NULL,
  `purpose` varchar(150) NOT NULL,
  `ref_number` varchar(30) NOT NULL,
  `date` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `book`
--

CREATE TABLE `book` (
  `b_id` int(10) NOT NULL,
  `b_name` varchar(150) NOT NULL,
  `b_qtysold` int(10) NOT NULL,
  `b_qtyleft` int(10) NOT NULL,
  `b_price` decimal(10,2) NOT NULL,
  `m_price` decimal(10,2) NOT NULL,
  `p_date` varchar(20) NOT NULL,
  `category` varchar(10) NOT NULL,
  `c_id` int(10) NOT NULL,
  `s_id` int(10) NOT NULL,
  `a_id` int(10) NOT NULL,
  `n_id` int(10) NOT NULL,
  `type` varchar(10) NOT NULL,
  `brdid` int(10) NOT NULL,
  `ay_id` int(10) NOT NULL,
  `qty` int(11) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `busfees`
--

CREATE TABLE `busfees` (
  `bf_id` int(11) NOT NULL,
  `fees` varchar(30) NOT NULL,
  `sp_fees` varchar(30) NOT NULL,
  `sp_fees_onetime` varchar(30) NOT NULL,
  `one_time` varchar(30) NOT NULL,
  `sp_id` int(11) NOT NULL,
  `r_id` int(11) NOT NULL,
  `ftyid` int(11) NOT NULL,
  `status` int(1) NOT NULL,
  `ay_id` int(11) NOT NULL,
  `start` int(11) NOT NULL,
  `end` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `bustiming`
--

CREATE TABLE `bustiming` (
  `btime_id` int(11) NOT NULL,
  `r_id` int(11) NOT NULL,
  `m_from` varchar(30) NOT NULL,
  `m_to` varchar(30) NOT NULL,
  `e_from` varchar(30) NOT NULL,
  `e_to` varchar(30) NOT NULL,
  `btime_type` varchar(30) NOT NULL,
  `ay_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `cash`
--

CREATE TABLE `cash` (
  `id` int(11) NOT NULL,
  `name` varchar(30) NOT NULL,
  `amount` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `cash`
--

INSERT INTO `cash` (`id`, `name`, `amount`) VALUES
(1, 'total cash', '1');

-- --------------------------------------------------------

--
-- Table structure for table `cashier_report`
--

CREATE TABLE `cashier_report` (
  `report_id` int(11) NOT NULL,
  `sdate` varchar(55) NOT NULL,
  `edate` varchar(55) NOT NULL,
  `total` int(11) NOT NULL,
  `given` int(11) NOT NULL,
  `pending` int(11) NOT NULL,
  `status` int(11) NOT NULL COMMENT '0=fully paid, 1=pending',
  `ay_id` int(11) NOT NULL,
  `cashier` varchar(160) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `certificate_count`
--

CREATE TABLE `certificate_count` (
  `cc_id` int(4) NOT NULL,
  `certificate_name` varchar(60) NOT NULL,
  `count` int(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `certificate_count`
--

INSERT INTO `certificate_count` (`cc_id`, `certificate_name`, `count`) VALUES
(1, 'Bonafide', 1),
(2, 'Community', 1),
(3, 'Conduct', 1),
(4, 'Attendance', 1),
(5, 'Marklist', 1),
(6, 'Transfer', 1),
(7, 'Tuition Fees', 1),
(8, 'Experience', 2);

-- --------------------------------------------------------

--
-- Table structure for table `circular`
--

CREATE TABLE `circular` (
  `cl_id` int(10) NOT NULL,
  `cl_day` varchar(30) NOT NULL,
  `cl_month` varchar(30) NOT NULL,
  `cl_year` varchar(30) NOT NULL,
  `title` varchar(120) NOT NULL,
  `descript` text NOT NULL,
  `type` varchar(120) NOT NULL,
  `file` varchar(150) NOT NULL,
  `status` int(1) NOT NULL,
  `b_id` int(10) NOT NULL,
  `c_id` int(11) NOT NULL,
  `s_id` int(11) NOT NULL,
  `ay_id` int(10) NOT NULL,
  `ref_number` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `circular_ref_count`
--

CREATE TABLE `circular_ref_count` (
  `crc_id` int(4) NOT NULL,
  `count` int(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `circular_ref_count`
--

INSERT INTO `circular_ref_count` (`crc_id`, `count`) VALUES
(1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `class`
--

CREATE TABLE `class` (
  `c_id` int(10) NOT NULL,
  `c_name` varchar(64) NOT NULL,
  `b_id` int(10) NOT NULL,
  `ay_id` int(10) NOT NULL,
  `category` varchar(16) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `class`
--

INSERT INTO `class` (`c_id`, `c_name`, `b_id`, `ay_id`, `category`) VALUES
(1, '12', 1, 7, 'CH'),
(2, '11', 1, 7, 'CH');

-- --------------------------------------------------------

--
-- Table structure for table `classtest`
--

CREATE TABLE `classtest` (
  `ct_id` int(10) NOT NULL,
  `title` varchar(30) NOT NULL,
  `day` varchar(30) NOT NULL,
  `month` varchar(30) NOT NULL,
  `year` varchar(30) NOT NULL,
  `date` varchar(30) NOT NULL,
  `detail` varchar(250) NOT NULL,
  `c_id` int(10) NOT NULL,
  `s_id` int(10) NOT NULL,
  `m_id` int(10) NOT NULL,
  `st_id` int(10) NOT NULL,
  `sub_id` int(10) NOT NULL,
  `b_id` int(10) NOT NULL,
  `ay_id` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `community`
--

CREATE TABLE `community` (
  `com_id` int(10) NOT NULL,
  `admin_no` varchar(64) NOT NULL,
  `name` varchar(120) NOT NULL,
  `community` varchar(120) NOT NULL,
  `standard` varchar(64) NOT NULL,
  `ay_id` int(11) NOT NULL,
  `purpose` varchar(150) NOT NULL,
  `ref_number` varchar(30) NOT NULL,
  `c_date` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `conduct`
--

CREATE TABLE `conduct` (
  `con_id` int(10) NOT NULL,
  `admin_no` varchar(64) NOT NULL,
  `name` varchar(120) NOT NULL,
  `standard` varchar(64) NOT NULL,
  `year` varchar(30) NOT NULL,
  `character1` varchar(64) NOT NULL,
  `dob` varchar(64) NOT NULL,
  `ay_id` int(11) NOT NULL,
  `purpose` varchar(150) NOT NULL,
  `ref_number` varchar(30) NOT NULL,
  `c_date` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `contact`
--

CREATE TABLE `contact` (
  `ct_id` int(11) NOT NULL,
  `cname` varchar(150) NOT NULL,
  `cpname` varchar(150) NOT NULL,
  `gender` varchar(10) NOT NULL,
  `email` varchar(120) NOT NULL,
  `address` text NOT NULL,
  `mobile` varchar(50) NOT NULL,
  `phone` varchar(50) NOT NULL,
  `desc1` text NOT NULL,
  `status` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `courier`
--

CREATE TABLE `courier` (
  `id` int(11) NOT NULL,
  `c_from` varchar(150) NOT NULL,
  `c_to` varchar(150) NOT NULL,
  `descri` text NOT NULL,
  `date` varchar(30) NOT NULL,
  `time` varchar(10) NOT NULL,
  `mobile` varchar(30) NOT NULL,
  `received` varchar(60) NOT NULL,
  `remarks` text NOT NULL,
  `ay_id` int(11) NOT NULL,
  `type` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `c_attend`
--

CREATE TABLE `c_attend` (
  `catt_id` int(10) NOT NULL,
  `admin_no` varchar(64) NOT NULL,
  `name` varchar(120) NOT NULL,
  `standard` varchar(120) NOT NULL,
  `year` varchar(30) NOT NULL,
  `percent` varchar(30) NOT NULL,
  `work` varchar(30) NOT NULL,
  `ay_id` int(11) NOT NULL,
  `purpose` varchar(150) NOT NULL,
  `ref_number` varchar(30) NOT NULL,
  `c_date` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `day`
--

CREATE TABLE `day` (
  `d_id` int(10) NOT NULL,
  `d_name` varchar(120) NOT NULL,
  `ay_id` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `day`
--

INSERT INTO `day` (`d_id`, `d_name`, `ay_id`) VALUES
(3, 'Monday', 5),
(4, 'Tuesday', 5),
(5, 'Monday', 7),
(6, 'Tuesday', 7),
(7, 'Wednesday', 7),
(8, 'Thursday', 7),
(9, 'Friday', 7),
(10, 'Saturday', 7);

-- --------------------------------------------------------

--
-- Table structure for table `discount`
--

CREATE TABLE `discount` (
  `d_id` int(30) NOT NULL,
  `day` int(2) NOT NULL,
  `month` int(2) NOT NULL,
  `year` int(4) NOT NULL,
  `cdate` varchar(30) NOT NULL,
  `total` varchar(60) NOT NULL,
  `ss_id` int(30) NOT NULL,
  `c_id` int(11) NOT NULL,
  `s_id` int(11) NOT NULL,
  `stype` varchar(10) NOT NULL,
  `cby` varchar(60) NOT NULL,
  `bid` int(11) NOT NULL,
  `ay_id` int(11) NOT NULL,
  `status` int(1) NOT NULL COMMENT '0-process,1-finished',
  `s_name` varchar(100) NOT NULL,
  `admin_no` varchar(30) NOT NULL,
  `remark` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `discount_others`
--

CREATE TABLE `discount_others` (
  `d_id` int(30) NOT NULL,
  `day` int(2) NOT NULL,
  `month` int(2) NOT NULL,
  `year` int(4) NOT NULL,
  `cdate` varchar(30) NOT NULL,
  `total` varchar(60) NOT NULL,
  `ss_id` int(30) NOT NULL,
  `c_id` int(11) NOT NULL,
  `s_id` int(11) NOT NULL,
  `stype` varchar(10) NOT NULL,
  `cby` varchar(60) NOT NULL,
  `bid` int(11) NOT NULL,
  `ay_id` int(11) NOT NULL,
  `status` int(1) NOT NULL COMMENT '0-process,1-finished',
  `s_name` varchar(100) NOT NULL,
  `admin_no` varchar(30) NOT NULL,
  `remark` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `discount_value`
--

CREATE TABLE `discount_value` (
  `dv_id` int(30) NOT NULL,
  `d_id` int(11) NOT NULL,
  `ss_id` int(11) NOT NULL,
  `fg_id` int(11) NOT NULL,
  `fgd_id` int(11) NOT NULL,
  `name` varchar(60) NOT NULL,
  `amount` varchar(15) NOT NULL,
  `type` varchar(10) NOT NULL,
  `payment` int(1) NOT NULL COMMENT '1-fullypaid,0-pending',
  `bid` int(11) NOT NULL,
  `ay_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `discount_value_others`
--

CREATE TABLE `discount_value_others` (
  `dv_id` int(30) NOT NULL,
  `d_id` int(11) NOT NULL,
  `ss_id` int(11) NOT NULL,
  `fg_id` int(11) NOT NULL,
  `fgd_id` int(11) NOT NULL,
  `name` varchar(60) NOT NULL,
  `amount` varchar(15) NOT NULL,
  `type` varchar(10) NOT NULL,
  `payment` int(1) NOT NULL COMMENT '1-fullypaid,0-pending',
  `bid` int(11) NOT NULL,
  `ay_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `driver`
--

CREATE TABLE `driver` (
  `d_id` int(10) NOT NULL,
  `driver_id` varchar(64) NOT NULL,
  `fname` varchar(64) NOT NULL,
  `lname` varchar(64) NOT NULL,
  `d_type` varchar(64) NOT NULL,
  `d_pname` varchar(64) NOT NULL,
  `dob` varchar(64) NOT NULL,
  `dor` varchar(30) DEFAULT NULL,
  `gender` varchar(20) NOT NULL,
  `reg` varchar(64) NOT NULL,
  `blood` varchar(30) NOT NULL,
  `position` varchar(64) NOT NULL,
  `expriences` varchar(64) NOT NULL,
  `email` varchar(64) NOT NULL,
  `phone_no` varchar(64) NOT NULL,
  `address` varchar(250) NOT NULL,
  `address1` text NOT NULL,
  `city` varchar(64) NOT NULL,
  `country` varchar(64) NOT NULL,
  `pincode` varchar(30) NOT NULL,
  `photo` varchar(64) NOT NULL,
  `status` int(11) NOT NULL,
  `relivestatus` int(30) NOT NULL,
  `day` varchar(5) NOT NULL,
  `month` varchar(5) NOT NULL,
  `year` varchar(8) NOT NULL,
  `age` varchar(20) NOT NULL,
  `marriage` varchar(200) NOT NULL,
  `doj` varchar(20) NOT NULL,
  `job_type` varchar(30) NOT NULL,
  `qualf` varchar(30) NOT NULL,
  `lline` varchar(64) NOT NULL,
  `address2` text NOT NULL,
  `state` varchar(30) NOT NULL,
  `b_name` varchar(100) NOT NULL,
  `b_acc_no` varchar(100) NOT NULL,
  `pf_no` varchar(64) NOT NULL,
  `nominee` varchar(64) NOT NULL,
  `n_name` varchar(64) NOT NULL,
  `n_phone_no` varchar(30) NOT NULL,
  `n_email` varchar(30) NOT NULL,
  `salarytype` int(1) NOT NULL COMMENT '0-bank,1-in hand',
  `l_type` varchar(120) NOT NULL,
  `l_no` varchar(60) NOT NULL,
  `s_type` varchar(250) NOT NULL,
  `allowance_status` varchar(250) NOT NULL,
  `allowance_amount` varchar(250) NOT NULL,
  `uanno` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `driver_no_count`
--

CREATE TABLE `driver_no_count` (
  `id` int(10) NOT NULL,
  `count` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `driver_no_count`
--

INSERT INTO `driver_no_count` (`id`, `count`) VALUES
(1, '10');

-- --------------------------------------------------------

--
-- Table structure for table `evenement`
--

CREATE TABLE `evenement` (
  `id` int(11) NOT NULL,
  `title` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `et_id` int(11) NOT NULL,
  `privacy` varchar(30) NOT NULL,
  `descp` varchar(250) NOT NULL,
  `start` varchar(150) NOT NULL,
  `end` varchar(150) DEFAULT NULL,
  `url` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `allDay` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `evenement`
--

INSERT INTO `evenement` (`id`, `title`, `et_id`, `privacy`, `descp`, `start`, `end`, `url`, `allDay`) VALUES
(1, ' m,,b m', 1, 'Public', ' n , ,', '2018-02-28T00:00:00.000Z', '2018-03-01T00:00:00.000Z', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `event`
--

CREATE TABLE `event` (
  `ev_id` int(10) NOT NULL,
  `e_title` varchar(150) NOT NULL,
  `e_des` text NOT NULL,
  `status` int(1) NOT NULL,
  `ay_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `event_type`
--

CREATE TABLE `event_type` (
  `et_id` int(11) NOT NULL,
  `et_name` varchar(150) NOT NULL,
  `et_color` varchar(60) NOT NULL,
  `et_border` varchar(60) NOT NULL,
  `status` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `event_type`
--

INSERT INTO `event_type` (`et_id`, `et_name`, `et_color`, `et_border`, `status`) VALUES
(1, 'ANNUAL GATHERING', '#123456', '#071727', 1);

-- --------------------------------------------------------

--
-- Table structure for table `exam`
--

CREATE TABLE `exam` (
  `e_id` int(10) NOT NULL,
  `e_name` varchar(64) NOT NULL,
  `sdate` varchar(30) NOT NULL,
  `edate` varchar(30) NOT NULL,
  `sday` varchar(2) NOT NULL,
  `smonth` varchar(2) NOT NULL,
  `syear` varchar(4) NOT NULL,
  `eday` varchar(2) NOT NULL,
  `emonth` varchar(2) NOT NULL,
  `eyear` varchar(4) NOT NULL,
  `ay_id` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `examtimetable`
--

CREATE TABLE `examtimetable` (
  `ett_id` int(10) NOT NULL,
  `date` varchar(64) NOT NULL,
  `day` varchar(64) NOT NULL,
  `sub_id` int(11) NOT NULL,
  `ftime` varchar(60) NOT NULL,
  `ttime` varchar(60) NOT NULL,
  `c_id` int(10) NOT NULL,
  `s_id` int(10) NOT NULL,
  `e_id` int(10) NOT NULL,
  `b_id` int(10) NOT NULL,
  `ay_id` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `expense_po_amount`
--

CREATE TABLE `expense_po_amount` (
  `ep_id` int(30) NOT NULL,
  `ex_id` int(11) NOT NULL,
  `name` text NOT NULL,
  `poqty` int(11) NOT NULL,
  `qty` varchar(11) NOT NULL,
  `amount` varchar(30) NOT NULL,
  `total` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `experience_certificate`
--

CREATE TABLE `experience_certificate` (
  `e_id` int(4) NOT NULL,
  `id` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `type` varchar(255) NOT NULL,
  `fathername` varchar(150) NOT NULL,
  `position` varchar(255) NOT NULL,
  `duration_from` varchar(255) NOT NULL,
  `duration_to` varchar(255) NOT NULL,
  `gender` varchar(255) NOT NULL,
  `ay_id` int(4) NOT NULL,
  `date` varchar(255) NOT NULL,
  `purpose` varchar(150) NOT NULL,
  `ref_number` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `experience_certificate`
--

INSERT INTO `experience_certificate` (`e_id`, `id`, `name`, `type`, `fathername`, `position`, `duration_from`, `duration_to`, `gender`, `ay_id`, `date`, `purpose`, `ref_number`) VALUES
(1, 'CH002', 'JAYASHREE.SHETTY', 'staff', 'saf', 'PRINCIPAL', '08.01.2018', '09.01.2018', 'F', 7, '2018-02-09', ' mb,b ', 'Exp001');

-- --------------------------------------------------------

--
-- Table structure for table `exponses`
--

CREATE TABLE `exponses` (
  `ex_id` int(10) NOT NULL,
  `r_no` varchar(60) NOT NULL,
  `b_no` varchar(30) NOT NULL,
  `date_day` varchar(5) NOT NULL,
  `date_month` varchar(5) NOT NULL,
  `date_year` varchar(8) NOT NULL,
  `title` varchar(150) NOT NULL,
  `des` text NOT NULL,
  `amount` varchar(60) NOT NULL,
  `exc_id` int(10) NOT NULL,
  `exs_id` int(4) NOT NULL,
  `ay_id` int(10) NOT NULL,
  `type` int(1) NOT NULL COMMENT '0-other expense,1 - proposal',
  `q_id` int(11) NOT NULL,
  `pending` varchar(30) NOT NULL,
  `status` int(1) NOT NULL COMMENT '0-nonpaid,1-paid',
  `cdate` varchar(30) NOT NULL,
  `t_type` varchar(10) NOT NULL,
  `t_parcent` varchar(10) NOT NULL,
  `t_amount` varchar(30) NOT NULL,
  `tds_per` varchar(200) NOT NULL,
  `tds_amt` decimal(10,2) NOT NULL,
  `shipping` varchar(20) NOT NULL,
  `discount` varchar(20) NOT NULL,
  `aid` int(11) NOT NULL,
  `p_type` varchar(10) NOT NULL,
  `pay_number` varchar(60) NOT NULL,
  `bank` varchar(60) NOT NULL,
  `account` varchar(60) NOT NULL,
  `c_date` varchar(30) NOT NULL,
  `advance_status` int(2) NOT NULL,
  `advance_amt` decimal(10,2) NOT NULL,
  `receiver` varchar(50) NOT NULL,
  `billgenerate` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `exponses_bill`
--

CREATE TABLE `exponses_bill` (
  `ep_id` int(30) NOT NULL,
  `bill_no` varchar(30) NOT NULL,
  `title` varchar(60) NOT NULL,
  `date` varchar(30) NOT NULL,
  `date_day` varchar(2) NOT NULL,
  `date_month` varchar(2) NOT NULL,
  `date_year` varchar(5) NOT NULL,
  `amount` varchar(30) NOT NULL,
  `p_type` varchar(10) NOT NULL,
  `pay_number` varchar(60) NOT NULL,
  `ba_id` int(11) DEFAULT NULL COMMENT 'bank account id',
  `bank` varchar(60) NOT NULL,
  `account` varchar(60) NOT NULL,
  `c_date` varchar(30) NOT NULL,
  `a_id` int(11) NOT NULL,
  `a_name` varchar(60) NOT NULL,
  `exc_id` int(11) NOT NULL,
  `c_status` int(1) NOT NULL DEFAULT '0' COMMENT '0 - process, 1 - bounced,2 - debited',
  `ay_id` int(11) NOT NULL,
  `address` text NOT NULL,
  `advance_status` int(2) NOT NULL,
  `advance_amt` decimal(10,2) NOT NULL,
  `excess_advance` decimal(10,2) NOT NULL,
  `receiver` varchar(50) NOT NULL,
  `billgenerate` varchar(50) NOT NULL,
  `add_adv_status` int(2) NOT NULL,
  `add_advance_amt` decimal(10,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `exponses_bill_summary`
--

CREATE TABLE `exponses_bill_summary` (
  `id` int(30) NOT NULL,
  `ep_id` int(30) NOT NULL,
  `ex_id` int(11) NOT NULL,
  `exc_id` int(11) NOT NULL,
  `r_no` varchar(30) NOT NULL,
  `exdate` varchar(30) NOT NULL,
  `b_no` varchar(30) NOT NULL,
  `title` varchar(30) NOT NULL,
  `amount` varchar(30) NOT NULL,
  `ay_id` int(11) NOT NULL,
  `date_day` varchar(2) NOT NULL,
  `date_month` varchar(2) NOT NULL,
  `date_year` varchar(5) NOT NULL,
  `bill_by` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `exp_allowance`
--

CREATE TABLE `exp_allowance` (
  `d_id` int(4) NOT NULL,
  `receipt_no` varchar(150) NOT NULL,
  `id` varchar(100) NOT NULL,
  `cdate` varchar(10) NOT NULL,
  `name` varchar(255) NOT NULL,
  `type` varchar(100) NOT NULL,
  `from_date` varchar(10) NOT NULL,
  `to_date` varchar(10) NOT NULL,
  `working_days` varchar(10) NOT NULL,
  `loss_days` varchar(4) NOT NULL,
  `perday_amount` varchar(10) NOT NULL,
  `total_amount` varchar(15) NOT NULL,
  `ay_id` int(4) NOT NULL,
  `date` varchar(10) NOT NULL,
  `date_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `bill_by` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `exp_allowance_count`
--

CREATE TABLE `exp_allowance_count` (
  `id` int(11) NOT NULL,
  `count` varchar(30) NOT NULL,
  `name` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `exp_allowance_count`
--

INSERT INTO `exp_allowance_count` (`id`, `count`, `name`) VALUES
(1, '4', 'Driver allowance');

-- --------------------------------------------------------

--
-- Table structure for table `extraperoid`
--

CREATE TABLE `extraperoid` (
  `ep_id` int(10) NOT NULL,
  `ep_name` varchar(120) NOT NULL,
  `ep_code` varchar(64) NOT NULL,
  `ay_id` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `extraperoid`
--

INSERT INTO `extraperoid` (`ep_id`, `ep_name`, `ep_code`, `ay_id`) VALUES
(1, 'SPORTS', 'SP_1', 7);

-- --------------------------------------------------------

--
-- Table structure for table `ex_category`
--

CREATE TABLE `ex_category` (
  `exc_id` int(10) NOT NULL,
  `ex_category` varchar(120) NOT NULL,
  `ay_id` int(10) NOT NULL,
  `address` text NOT NULL,
  `e_category` int(1) NOT NULL COMMENT '0-none asset,1- fixed asset'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `ex_insubcategory`
--

CREATE TABLE `ex_insubcategory` (
  `exs_id` int(4) NOT NULL,
  `category` int(4) NOT NULL,
  `sub1_id` int(4) NOT NULL,
  `sub2_id` int(4) NOT NULL,
  `sub3_id` int(4) NOT NULL,
  `sub4_id` int(4) NOT NULL,
  `sub5_id` int(4) NOT NULL,
  `sub6_id` int(4) NOT NULL,
  `sub7_id` int(4) NOT NULL,
  `sub8_id` int(4) NOT NULL,
  `sub9_id` int(4) NOT NULL,
  `sub10_id` int(4) NOT NULL,
  `sub11_id` int(4) NOT NULL,
  `sub12_id` int(4) NOT NULL,
  `sub13_id` int(4) NOT NULL,
  `sub14_id` int(4) NOT NULL,
  `sub15_id` int(4) NOT NULL,
  `sub16_id` int(4) NOT NULL,
  `sub17_id` int(4) NOT NULL,
  `sub18_id` int(4) NOT NULL,
  `sub19_id` int(4) NOT NULL,
  `sub20_id` int(4) NOT NULL,
  `sub_name` varchar(255) NOT NULL,
  `count` int(4) NOT NULL,
  `ay_id` int(4) NOT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `ex_subcategory`
--

CREATE TABLE `ex_subcategory` (
  `exs_id` int(4) NOT NULL,
  `category` int(4) NOT NULL,
  `sub_cname` varchar(255) NOT NULL,
  `ay_id` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `fdiscount`
--

CREATE TABLE `fdiscount` (
  `fdis_id` int(10) NOT NULL,
  `fdis_name` varchar(60) NOT NULL,
  `ay_id` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `fdiscount`
--

INSERT INTO `fdiscount` (`fdis_id`, `fdis_name`, `ay_id`) VALUES
(1, 'General', 2);

-- --------------------------------------------------------

--
-- Table structure for table `feedback`
--

CREATE TABLE `feedback` (
  `f_id` int(10) NOT NULL,
  `st_id` int(10) NOT NULL,
  `p_id` int(10) NOT NULL,
  `title` varchar(64) NOT NULL,
  `msg` varchar(300) NOT NULL,
  `date` varchar(64) NOT NULL,
  `c_id` int(10) NOT NULL,
  `s_id` int(10) NOT NULL,
  `b_id` int(10) NOT NULL,
  `ay_id` int(10) NOT NULL,
  `status` int(1) NOT NULL,
  `send` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `feescollection`
--

CREATE TABLE `feescollection` (
  `id` int(11) NOT NULL,
  `sdate` date NOT NULL,
  `edate` date NOT NULL,
  `amount_total` varchar(50) NOT NULL,
  `amount_given` varchar(50) NOT NULL,
  `fee_by` varchar(255) NOT NULL,
  `cashier` varchar(255) NOT NULL,
  `ay_id` int(11) NOT NULL,
  `status` int(11) NOT NULL,
  `date_day` varchar(20) NOT NULL,
  `date_month` varchar(20) NOT NULL,
  `date_year` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `feescollection_child`
--

CREATE TABLE `feescollection_child` (
  `child_id` int(11) NOT NULL,
  `id` int(11) NOT NULL,
  `fees` varchar(255) NOT NULL,
  `amount` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `fgroup`
--

CREATE TABLE `fgroup` (
  `fg_id` int(10) NOT NULL,
  `fg_name` varchar(60) NOT NULL,
  `ftype` varchar(10) NOT NULL,
  `start` varchar(10) NOT NULL,
  `end` varchar(10) NOT NULL,
  `ay_id` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `fgroup`
--

INSERT INTO `fgroup` (`fg_id`, `fg_name`, `ftype`, `start`, `end`, `ay_id`) VALUES
(1, 'I Term', '1', '6', '9', 1),
(2, 'II Term', '2', '10', '1', 1),
(3, 'III Term', '3', '2', '5', 1),
(4, 'Other Fees', 'other', '6', '5', 1);

-- --------------------------------------------------------

--
-- Table structure for table `fgroup_detail`
--

CREATE TABLE `fgroup_detail` (
  `fgd_id` int(11) NOT NULL,
  `name` varchar(120) NOT NULL,
  `type` int(1) NOT NULL COMMENT '0-common,1-new student',
  `fg_id` int(11) NOT NULL,
  `otherfees` int(11) NOT NULL,
  `fees_amount` varchar(30) NOT NULL,
  `food` int(1) NOT NULL COMMENT '0-No,1-Yes'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `fgroup_detail`
--

INSERT INTO `fgroup_detail` (`fgd_id`, `name`, `type`, `fg_id`, `otherfees`, `fees_amount`, `food`) VALUES
(2, 'Registration Fee', 1, 4, 0, '', 0),
(3, 'Tuition Fees', 0, 1, 0, '', 0),
(7, 'Admission Fee', 1, 4, 0, '', 0),
(8, 'Application Fees', 1, 4, 0, '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `finvoice`
--

CREATE TABLE `finvoice` (
  `fi_id` int(20) NOT NULL,
  `fr_no` varchar(30) NOT NULL,
  `fi_name` varchar(150) NOT NULL,
  `fi_total` varchar(60) NOT NULL,
  `fi_ptype` varchar(30) NOT NULL,
  `fi_day` varchar(5) NOT NULL,
  `fi_month` varchar(5) NOT NULL,
  `fi_year` varchar(8) NOT NULL,
  `ss_id` int(10) NOT NULL,
  `c_id` int(10) NOT NULL,
  `s_id` int(10) NOT NULL,
  `category` varchar(60) NOT NULL,
  `stype` varchar(30) NOT NULL,
  `fi_by` varchar(150) NOT NULL,
  `bid` int(10) NOT NULL,
  `ay_id` int(10) NOT NULL,
  `pay_number` varchar(80) NOT NULL,
  `get_amount` varchar(30) NOT NULL,
  `balance` varchar(30) NOT NULL,
  `poor_student_pay` varchar(30) NOT NULL,
  `fund_amount` varchar(30) NOT NULL,
  `funds` int(1) NOT NULL,
  `c_status` int(1) NOT NULL COMMENT '0 - process,1 - bounced, 2- received',
  `ba_id` int(11) NOT NULL COMMENT 'Bank Account ID',
  `bank_name` varchar(30) NOT NULL,
  `cheque_date` varchar(30) NOT NULL,
  `i_status` int(1) NOT NULL COMMENT '0-paid,1-reject or delete',
  `receive_cdate` varchar(55) NOT NULL,
  `receive_cbank` varchar(255) NOT NULL,
  `cheque_service` int(11) DEFAULT NULL,
  `service_charge_status` int(11) DEFAULT NULL,
  `cat` varchar(16) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `finvoice_no`
--

CREATE TABLE `finvoice_no` (
  `id` int(10) NOT NULL,
  `count` varchar(100) NOT NULL,
  `ay_id` int(11) NOT NULL,
  `category` varchar(16) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `finvoice_no`
--

INSERT INTO `finvoice_no` (`id`, `count`, `ay_id`, `category`) VALUES
(1, '1', 7, '');

-- --------------------------------------------------------

--
-- Table structure for table `finvoice_no_others`
--

CREATE TABLE `finvoice_no_others` (
  `id` int(10) NOT NULL,
  `count` varchar(100) NOT NULL,
  `ay_id` int(11) NOT NULL,
  `category` varchar(16) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `finvoice_no_others`
--

INSERT INTO `finvoice_no_others` (`id`, `count`, `ay_id`, `category`) VALUES
(1, '1', 7, '');

-- --------------------------------------------------------

--
-- Table structure for table `finvoice_others`
--

CREATE TABLE `finvoice_others` (
  `fi_id` int(20) NOT NULL,
  `fr_no` varchar(30) NOT NULL,
  `fi_name` varchar(150) NOT NULL,
  `fi_total` varchar(60) NOT NULL,
  `fi_ptype` varchar(30) NOT NULL,
  `fi_day` varchar(5) NOT NULL,
  `fi_month` varchar(5) NOT NULL,
  `fi_year` varchar(8) NOT NULL,
  `ss_id` int(10) NOT NULL,
  `c_id` int(10) NOT NULL,
  `s_id` int(10) NOT NULL,
  `category` varchar(60) NOT NULL,
  `stype` varchar(30) NOT NULL,
  `fi_by` varchar(150) NOT NULL,
  `bid` int(10) NOT NULL,
  `ay_id` int(10) NOT NULL,
  `pay_number` varchar(80) NOT NULL,
  `get_amount` varchar(30) NOT NULL,
  `balance` varchar(30) NOT NULL,
  `poor_student_pay` varchar(30) NOT NULL,
  `fund_amount` varchar(30) NOT NULL,
  `funds` int(1) NOT NULL,
  `c_status` int(1) NOT NULL COMMENT '0 - process,1 - bounced, 2- received',
  `ba_id` int(11) NOT NULL COMMENT 'Bank Account ID',
  `bank_name` varchar(30) NOT NULL,
  `cheque_date` varchar(30) NOT NULL,
  `i_status` int(1) NOT NULL COMMENT '0-paid,1-reject or delete',
  `discount` int(11) DEFAULT NULL,
  `receive_cdate` varchar(55) DEFAULT NULL,
  `receive_cbank` varchar(55) DEFAULT NULL,
  `cheque_service` int(11) DEFAULT NULL,
  `service_charge_status` int(11) DEFAULT NULL,
  `discount_remark` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `frate`
--

CREATE TABLE `frate` (
  `fr_id` int(10) NOT NULL,
  `fg_id` int(10) NOT NULL,
  `fgd_id` int(11) NOT NULL,
  `rate` varchar(30) NOT NULL,
  `rate1` varchar(30) NOT NULL,
  `c_id` int(10) NOT NULL,
  `b_id` int(10) NOT NULL,
  `ay_id` int(10) NOT NULL,
  `s_id` int(11) NOT NULL,
  `gname` varchar(55) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `frate`
--

INSERT INTO `frate` (`fr_id`, `fg_id`, `fgd_id`, `rate`, `rate1`, `c_id`, `b_id`, `ay_id`, `s_id`, `gname`) VALUES
(1, 1, 3, '15000', '', 1, 1, 7, 0, ''),
(2, 2, 3, '12000', '', 1, 1, 7, 0, ''),
(3, 3, 3, '10000', '', 1, 1, 7, 0, '');

-- --------------------------------------------------------

--
-- Table structure for table `frate_value`
--

CREATE TABLE `frate_value` (
  `frv_id` int(10) NOT NULL,
  `fr_id` int(10) NOT NULL,
  `fdis_id` int(10) NOT NULL,
  `fgd_id` int(11) NOT NULL,
  `dis_value` varchar(30) NOT NULL,
  `ay_id` int(10) NOT NULL,
  `ftype` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `fsalessumarry`
--

CREATE TABLE `fsalessumarry` (
  `fss_id` int(10) NOT NULL,
  `fi_id` int(10) NOT NULL,
  `fr_id` int(11) NOT NULL,
  `fg_id` int(10) NOT NULL,
  `fgd_id` int(11) NOT NULL,
  `name` varchar(80) NOT NULL,
  `amount` varchar(30) NOT NULL,
  `tamount` varchar(30) NOT NULL,
  `pamount` varchar(30) NOT NULL,
  `discount` varchar(30) NOT NULL,
  `dv_id` int(11) NOT NULL,
  `type` varchar(20) NOT NULL,
  `payment` int(1) NOT NULL,
  `bid` int(10) NOT NULL,
  `ay_id` int(10) NOT NULL,
  `discount_remark` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `ftype`
--

CREATE TABLE `ftype` (
  `fty_id` int(10) NOT NULL,
  `fty_name` varchar(60) NOT NULL,
  `fty_value` int(2) NOT NULL,
  `ay_id` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ftype`
--

INSERT INTO `ftype` (`fty_id`, `fty_name`, `fty_value`, `ay_id`) VALUES
(1, 'Yearly', 12, 1),
(2, 'Halfly', 6, 1),
(3, 'Monthly', 1, 1),
(4, 'Quarterly ', 4, 1);

-- --------------------------------------------------------

--
-- Table structure for table `hms_cash_deposit`
--

CREATE TABLE `hms_cash_deposit` (
  `hcd_id` int(4) NOT NULL,
  `amount` varchar(40) NOT NULL,
  `ay_id` int(4) NOT NULL,
  `date` varchar(10) NOT NULL,
  `date_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `hms_category`
--

CREATE TABLE `hms_category` (
  `h_id` int(4) NOT NULL,
  `h_name` varchar(200) NOT NULL,
  `h_address` text NOT NULL,
  `status` int(11) NOT NULL COMMENT '0 - live 1- no live',
  `date` varchar(10) NOT NULL,
  `date_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `hms_feestype`
--

CREATE TABLE `hms_feestype` (
  `hft_id` int(4) NOT NULL,
  `hfs_id` int(4) NOT NULL,
  `room_type` int(4) NOT NULL,
  `amount` varchar(100) NOT NULL,
  `date` varchar(10) NOT NULL,
  `date_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `hms_fees_structure`
--

CREATE TABLE `hms_fees_structure` (
  `hfs_id` int(4) NOT NULL,
  `section` int(4) NOT NULL,
  `role` varchar(200) NOT NULL,
  `ay_id` int(4) NOT NULL,
  `status` int(4) NOT NULL COMMENT '0 - live 1- no live',
  `date` varchar(10) NOT NULL,
  `date_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `hms_floor`
--

CREATE TABLE `hms_floor` (
  `hf_id` int(4) NOT NULL,
  `category` int(4) NOT NULL,
  `floor_name` varchar(200) NOT NULL,
  `status` int(4) NOT NULL COMMENT '0 - live 1- no live',
  `date_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `hms_hinvoice`
--

CREATE TABLE `hms_hinvoice` (
  `hin_id` int(4) NOT NULL,
  `in_no` varchar(200) NOT NULL,
  `hsr_id` int(4) NOT NULL,
  `name` varchar(100) NOT NULL,
  `admission_no` varchar(100) NOT NULL,
  `ay_id` int(4) NOT NULL,
  `h_total` varchar(70) NOT NULL,
  `paid_date` varchar(20) NOT NULL,
  `date_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `fees_type` varchar(100) NOT NULL,
  `pay_type` varchar(50) NOT NULL,
  `fi_by` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `hms_hinvoice_sumarry`
--

CREATE TABLE `hms_hinvoice_sumarry` (
  `ibs_id` int(4) NOT NULL,
  `hin_id` int(4) NOT NULL,
  `hsr_id` varchar(200) NOT NULL,
  `hr_id` varchar(200) NOT NULL,
  `hrc_id` varchar(200) NOT NULL,
  `ay_id` int(4) NOT NULL,
  `fees_name` varchar(200) NOT NULL,
  `fees_type` varchar(200) NOT NULL,
  `amount` varchar(100) NOT NULL,
  `date` varchar(20) NOT NULL,
  `date_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `hms_invoice_no`
--

CREATE TABLE `hms_invoice_no` (
  `hin_id` int(4) NOT NULL,
  `count` int(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `hms_invoice_no`
--

INSERT INTO `hms_invoice_no` (`hin_id`, `count`) VALUES
(1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `hms_room`
--

CREATE TABLE `hms_room` (
  `hr_id` int(4) NOT NULL,
  `category` int(4) NOT NULL,
  `floor` int(4) NOT NULL,
  `room_number` varchar(255) NOT NULL,
  `room_name` varchar(255) NOT NULL,
  `room_type` varchar(100) NOT NULL,
  `no_cart` int(4) NOT NULL,
  `available_qty` int(4) NOT NULL,
  `status` int(4) NOT NULL COMMENT '0 -live 1- no live',
  `date` varchar(20) NOT NULL,
  `date_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `hms_room_cart`
--

CREATE TABLE `hms_room_cart` (
  `hrc_id` int(4) NOT NULL,
  `category` int(4) NOT NULL,
  `floor` int(4) NOT NULL,
  `hr_id` int(4) NOT NULL,
  `cart_name` varchar(150) NOT NULL,
  `status` int(4) NOT NULL COMMENT '0 - live 1- no live',
  `room_status` int(4) NOT NULL COMMENT '0- free 1-booked',
  `date` varchar(10) NOT NULL,
  `date_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `hms_room_type`
--

CREATE TABLE `hms_room_type` (
  `hrt_id` int(4) NOT NULL,
  `room_type` varchar(200) NOT NULL,
  `status` int(4) NOT NULL COMMENT '0 - live 1- no live'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `hms_room_type`
--

INSERT INTO `hms_room_type` (`hrt_id`, `room_type`, `status`) VALUES
(1, 'NON A/C Rooms', 0),
(2, 'A/C Room', 0),
(3, 'test', 1);

-- --------------------------------------------------------

--
-- Table structure for table `hms_staff_room`
--

CREATE TABLE `hms_staff_room` (
  `hsr_id` int(4) NOT NULL,
  `category` int(4) NOT NULL,
  `floor` int(4) NOT NULL,
  `hr_id` int(4) NOT NULL,
  `hrc_id` int(4) NOT NULL,
  `staff_id` varchar(255) NOT NULL,
  `firstname` varchar(200) NOT NULL,
  `lastname` varchar(200) NOT NULL,
  `r_ay_id` int(4) NOT NULL COMMENT 'register ',
  `v_ay_id` varchar(80) NOT NULL COMMENT 'vacate ',
  `join_date` varchar(20) NOT NULL,
  `vacate_date` varchar(10) NOT NULL,
  `status` int(4) NOT NULL COMMENT '0 - live 1- no live',
  `date` varchar(20) NOT NULL,
  `date_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `hms_studentcash_amount`
--

CREATE TABLE `hms_studentcash_amount` (
  `hsca_id` int(4) NOT NULL,
  `hsr_id` int(4) NOT NULL,
  `admission_number` varchar(100) NOT NULL,
  `amount` varchar(150) NOT NULL,
  `given_amount` int(4) NOT NULL,
  `vacate_date` varchar(10) NOT NULL,
  `r_ay_id` int(11) NOT NULL COMMENT 'register year',
  `v_ay_id` varchar(50) NOT NULL COMMENT 'vacate year',
  `payment_status` int(4) NOT NULL COMMENT '0 - receive 1-delivered',
  `date` varchar(20) NOT NULL,
  `date_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `hms_studentflow_room`
--

CREATE TABLE `hms_studentflow_room` (
  `hsfr_id` int(4) NOT NULL,
  `reg_id` int(4) NOT NULL,
  `role` varchar(100) NOT NULL,
  `hostel` varchar(200) NOT NULL,
  `floor` varchar(200) NOT NULL,
  `room_number` varchar(200) NOT NULL,
  `room_name` varchar(100) NOT NULL,
  `room_type` varchar(200) NOT NULL,
  `start_date` varchar(20) NOT NULL,
  `end_date` varchar(20) NOT NULL,
  `date` varchar(20) NOT NULL,
  `date_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `hms_student_changeroom`
--

CREATE TABLE `hms_student_changeroom` (
  `hscr_id` int(4) NOT NULL,
  `hsr_id` int(4) NOT NULL,
  `category` int(4) NOT NULL,
  `floor` int(4) NOT NULL,
  `hr_id` int(4) NOT NULL,
  `hrc_id` int(4) NOT NULL,
  `admission_number` varchar(200) NOT NULL,
  `ay_id` int(4) NOT NULL,
  `join_date` varchar(20) NOT NULL,
  `amount` varchar(50) NOT NULL,
  `payment_status` int(4) NOT NULL,
  `payment_type` int(4) NOT NULL COMMENT '0 - no given amount 1- given amount',
  `date` varchar(10) NOT NULL,
  `date_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `hms_student_room`
--

CREATE TABLE `hms_student_room` (
  `hsr_id` int(4) NOT NULL,
  `category` int(4) NOT NULL,
  `floor` int(4) NOT NULL,
  `hr_id` int(4) NOT NULL,
  `hrc_id` int(4) NOT NULL,
  `admission_number` varchar(255) NOT NULL,
  `firstname` varchar(200) NOT NULL,
  `lastname` varchar(200) NOT NULL,
  `reg_class` int(4) NOT NULL,
  `r_ay_id` int(4) NOT NULL COMMENT 'register ',
  `v_ay_id` varchar(80) NOT NULL COMMENT 'vacate ',
  `room_date` varchar(20) NOT NULL,
  `join_date` varchar(20) NOT NULL,
  `vacate_date` varchar(10) NOT NULL,
  `status` int(4) NOT NULL COMMENT '0 - live 1- no live',
  `date` varchar(20) NOT NULL,
  `date_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `hms_worker`
--

CREATE TABLE `hms_worker` (
  `hw_id` int(4) NOT NULL,
  `category` int(4) NOT NULL,
  `job_name` varchar(200) NOT NULL,
  `name` varchar(255) NOT NULL,
  `position` varchar(255) NOT NULL,
  `qualification` varchar(255) NOT NULL,
  `status` int(4) NOT NULL COMMENT '0 - live 1- no live',
  `date` varchar(20) NOT NULL,
  `date_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `homework`
--

CREATE TABLE `homework` (
  `h_id` int(10) NOT NULL,
  `title` varchar(30) NOT NULL,
  `day` varchar(30) NOT NULL,
  `month` varchar(30) NOT NULL,
  `year` varchar(30) NOT NULL,
  `date` varchar(30) NOT NULL,
  `detail` varchar(250) NOT NULL,
  `c_id` int(10) NOT NULL,
  `s_id` int(10) NOT NULL,
  `m_id` int(10) NOT NULL,
  `st_id` int(10) NOT NULL,
  `sub_id` int(10) NOT NULL,
  `b_id` int(10) NOT NULL,
  `ay_id` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `homework_status`
--

CREATE TABLE `homework_status` (
  `id` int(30) NOT NULL,
  `status` int(1) NOT NULL,
  `h_id` int(11) NOT NULL,
  `ss_id` int(11) NOT NULL,
  `c_id` int(11) NOT NULL,
  `s_id` int(11) NOT NULL,
  `b_id` int(11) NOT NULL,
  `ay_id` int(11) NOT NULL,
  `s_remark` text NOT NULL,
  `st_remark` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `income`
--

CREATE TABLE `income` (
  `in_id` int(10) NOT NULL,
  `r_no` varchar(60) NOT NULL,
  `b_no` varchar(30) NOT NULL,
  `date_day` varchar(5) NOT NULL,
  `date_month` varchar(5) NOT NULL,
  `date_year` varchar(8) NOT NULL,
  `title` varchar(150) NOT NULL,
  `des` text NOT NULL,
  `amount` varchar(60) NOT NULL,
  `inc_id` int(10) NOT NULL,
  `ay_id` int(10) NOT NULL,
  `a_id` int(11) NOT NULL,
  `interest` int(11) NOT NULL,
  `inc_by` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `invoice`
--

CREATE TABLE `invoice` (
  `i_id` int(10) NOT NULL,
  `i_no` varchar(64) NOT NULL,
  `i_name` varchar(64) NOT NULL,
  `i_total` varchar(64) NOT NULL,
  `i_ptype` varchar(32) NOT NULL,
  `i_day` varchar(10) NOT NULL,
  `i_month` varchar(10) NOT NULL,
  `i_year` varchar(10) NOT NULL,
  `ss_id` int(10) NOT NULL,
  `c_id` int(10) NOT NULL,
  `s_id` int(10) NOT NULL,
  `se_id` int(10) NOT NULL,
  `brdid` int(10) NOT NULL,
  `ay_id` int(10) NOT NULL,
  `i_status` int(4) NOT NULL COMMENT '0 - paid 1- reject (or) delete'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `invoice_no`
--

CREATE TABLE `invoice_no` (
  `id` int(10) NOT NULL,
  `count` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `invoice_no`
--

INSERT INTO `invoice_no` (`id`, `count`) VALUES
(1, '1'),
(2, '1');

-- --------------------------------------------------------

--
-- Table structure for table `inv_brand`
--

CREATE TABLE `inv_brand` (
  `brand_id` int(11) NOT NULL,
  `brand_name` varchar(225) NOT NULL,
  `status` int(2) NOT NULL,
  `created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `inv_brand`
--

INSERT INTO `inv_brand` (`brand_id`, `brand_name`, `status`, `created`) VALUES
(1, 'x', 1, '2016-03-13 22:25:39');

-- --------------------------------------------------------

--
-- Table structure for table `inv_brand_items`
--

CREATE TABLE `inv_brand_items` (
  `bi_id` int(11) NOT NULL,
  `item_id` int(11) NOT NULL,
  `brand_id` int(11) NOT NULL,
  `qty` double NOT NULL,
  `created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `inv_category`
--

CREATE TABLE `inv_category` (
  `cat_id` int(11) NOT NULL,
  `category_name` varchar(100) NOT NULL,
  `cat_status` int(2) NOT NULL,
  `cat_prefix` varchar(200) NOT NULL,
  `Cat_billno` int(50) NOT NULL DEFAULT '1',
  `created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `inv_combo`
--

CREATE TABLE `inv_combo` (
  `com_id` int(11) NOT NULL,
  `com_parent_id` int(11) NOT NULL,
  `package_items` int(11) DEFAULT NULL,
  `brand_id` int(11) NOT NULL,
  `qty` float NOT NULL,
  `uom_id` int(11) NOT NULL,
  `uomname_new` varchar(50) NOT NULL,
  `created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `inv_combo_parent`
--

CREATE TABLE `inv_combo_parent` (
  `com_parent_id` int(11) NOT NULL,
  `package_name` varchar(255) NOT NULL,
  `board_id` int(11) NOT NULL,
  `class_id` int(11) NOT NULL,
  `created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `inv_items`
--

CREATE TABLE `inv_items` (
  `item_id` int(11) NOT NULL,
  `cat_id` int(11) NOT NULL,
  `item_name` varchar(100) NOT NULL,
  `item_code` varchar(40) NOT NULL,
  `item_qty` float NOT NULL DEFAULT '0',
  `item_status` int(2) NOT NULL,
  `active` int(1) NOT NULL DEFAULT '1',
  `created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `inv_material`
--

CREATE TABLE `inv_material` (
  `mat_id` int(11) NOT NULL,
  `mat_parent_id` int(11) NOT NULL,
  `item_id` int(11) NOT NULL,
  `brand_id` int(11) NOT NULL,
  `qty` float NOT NULL,
  `uom_id` int(11) NOT NULL,
  `uomname_new` varchar(50) NOT NULL,
  `sell_price` decimal(10,2) NOT NULL,
  `total` decimal(10,2) NOT NULL,
  `created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `inv_material_combo_child`
--

CREATE TABLE `inv_material_combo_child` (
  `mat_com_child_id` int(11) NOT NULL,
  `mat_com_id` int(11) NOT NULL,
  `item_id` int(11) NOT NULL,
  `brand_id` int(11) NOT NULL,
  `qty` float NOT NULL,
  `sell_price` decimal(10,2) NOT NULL,
  `item_status` int(2) NOT NULL,
  `created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `inv_material_combo_parent`
--

CREATE TABLE `inv_material_combo_parent` (
  `mat_com_id` int(11) NOT NULL,
  `mat_parent_id` int(11) NOT NULL,
  `com_parent_id` int(11) NOT NULL,
  `total_amt` decimal(10,2) NOT NULL,
  `created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `inv_material_parent`
--

CREATE TABLE `inv_material_parent` (
  `mat_parent_id` int(11) NOT NULL,
  `mat_date` date NOT NULL,
  `bill_no` varchar(11) NOT NULL,
  `stud_staff` int(11) NOT NULL,
  `adm_emp_no` varchar(50) NOT NULL,
  `studid` int(12) NOT NULL,
  `board_id` int(11) NOT NULL,
  `class_id` int(11) NOT NULL,
  `section_id` int(11) NOT NULL,
  `discount` decimal(10,2) NOT NULL,
  `overall_total` decimal(10,2) NOT NULL,
  `paid_status` int(11) NOT NULL COMMENT '0-pending,1-paid',
  `cat_id` int(11) NOT NULL,
  `created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `billgenerate` varchar(255) NOT NULL,
  `issue_status` int(11) NOT NULL,
  `ay_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `inv_material_payment`
--

CREATE TABLE `inv_material_payment` (
  `mat_pay_id` int(11) NOT NULL,
  `mat_parent_id` int(11) NOT NULL,
  `mat_pay_date` date NOT NULL,
  `payamount` decimal(10,2) NOT NULL,
  `p_type` varchar(200) NOT NULL,
  `pay_number` varchar(200) NOT NULL,
  `ba_id` int(11) NOT NULL,
  `bank` varchar(200) NOT NULL,
  `account` varchar(200) NOT NULL,
  `c_date` date NOT NULL,
  `c_status` int(11) NOT NULL,
  `pay_created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `inv_purchase`
--

CREATE TABLE `inv_purchase` (
  `pur_id` int(11) NOT NULL,
  `pur_parent_id` int(11) NOT NULL,
  `item_id` int(11) NOT NULL,
  `brand_id` int(11) NOT NULL,
  `uom_id` int(11) NOT NULL,
  `buy_price` decimal(10,2) NOT NULL,
  `sell_price` decimal(10,2) NOT NULL,
  `qty` float NOT NULL,
  `total` decimal(10,2) NOT NULL,
  `created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `inv_purchase_mode`
--

CREATE TABLE `inv_purchase_mode` (
  `mode_id` int(11) NOT NULL,
  `pur_id` int(11) NOT NULL,
  `uomname_sub` varchar(100) NOT NULL,
  `selling_price_sub` decimal(10,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `inv_purchase_parent`
--

CREATE TABLE `inv_purchase_parent` (
  `pur_parent_id` int(11) NOT NULL,
  `purchase_date` date NOT NULL,
  `purchase_no` varchar(200) NOT NULL,
  `agency_id` int(11) NOT NULL,
  `overeall_total` decimal(10,2) NOT NULL,
  `created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `ay_id` int(11) NOT NULL,
  `billgenerate` varchar(155) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `inv_settings`
--

CREATE TABLE `inv_settings` (
  `set_id` int(11) NOT NULL,
  `bill_mode` int(11) NOT NULL COMMENT '1-separate,0-common',
  `mat_issue_mode` int(11) NOT NULL COMMENT '1-bill,0-delivery',
  `bill_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `inv_settings`
--

INSERT INTO `inv_settings` (`set_id`, `bill_mode`, `mat_issue_mode`, `bill_date`) VALUES
(1, 1, 1, '2016-05-02 22:07:11');

-- --------------------------------------------------------

--
-- Table structure for table `inv_uom`
--

CREATE TABLE `inv_uom` (
  `uom_id` int(11) NOT NULL,
  `uom_name` varchar(100) NOT NULL,
  `uom_status` int(2) NOT NULL,
  `uom_mode` int(2) NOT NULL,
  `created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `in_category`
--

CREATE TABLE `in_category` (
  `inc_id` int(10) NOT NULL,
  `in_category` varchar(120) NOT NULL,
  `ay_id` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `in_category`
--

INSERT INTO `in_category` (`inc_id`, `in_category`, `ay_id`) VALUES
(1, 'Fee', 7);

-- --------------------------------------------------------

--
-- Table structure for table `leavetype`
--

CREATE TABLE `leavetype` (
  `lt_id` int(11) NOT NULL,
  `lt_name` varchar(60) NOT NULL,
  `l_total` varchar(10) NOT NULL,
  `status` int(1) NOT NULL,
  `other` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `leavetype`
--

INSERT INTO `leavetype` (`lt_id`, `lt_name`, `l_total`, `status`, `other`) VALUES
(1, 'Casual Leave', '12', 1, 0),
(2, 'Vocation Leave', '25', 1, 0),
(3, 'strick leave', '0', 1, 0),
(4, 'Medical Leave', '0', 1, 0),
(5, 'Other Leave (Loss Of Pay )', '', 1, 1),
(6, 'OnDuty', '', 1, 2);

-- --------------------------------------------------------

--
-- Table structure for table `letter_pad`
--

CREATE TABLE `letter_pad` (
  `l_id` int(4) NOT NULL,
  `title` varchar(255) NOT NULL,
  `description` longtext NOT NULL,
  `date` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `lms_binvoice`
--

CREATE TABLE `lms_binvoice` (
  `bin_id` int(4) NOT NULL,
  `in_no` varchar(200) NOT NULL,
  `student_id` int(4) NOT NULL,
  `name` varchar(100) NOT NULL,
  `admission_no` varchar(100) NOT NULL,
  `ay_id` int(4) NOT NULL,
  `b_id` int(4) NOT NULL,
  `b_total` varchar(70) NOT NULL,
  `paid_date` varchar(20) NOT NULL,
  `date_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `pay_type` varchar(50) NOT NULL,
  `fi_by` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `lms_binvoice_sumarry`
--

CREATE TABLE `lms_binvoice_sumarry` (
  `ibs_id` int(4) NOT NULL,
  `bin_id` int(4) NOT NULL,
  `sb_id` int(4) NOT NULL,
  `student_id` int(4) NOT NULL,
  `book_id` int(4) NOT NULL,
  `ay_id` int(4) NOT NULL,
  `b_id` int(4) NOT NULL,
  `amount` varchar(100) NOT NULL,
  `date` varchar(20) NOT NULL,
  `date_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `lms_book`
--

CREATE TABLE `lms_book` (
  `b_id` int(4) NOT NULL,
  `category` int(4) NOT NULL,
  `book_no` varchar(150) NOT NULL,
  `book_title` text NOT NULL,
  `author_name` varchar(200) NOT NULL,
  `publisher` varchar(200) NOT NULL,
  `edition` varchar(200) NOT NULL,
  `qty` int(4) NOT NULL,
  `avilable_qty` int(4) NOT NULL,
  `shelf_no` varchar(150) NOT NULL,
  `creation_date` varchar(10) NOT NULL,
  `date_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `status` int(4) NOT NULL COMMENT '0-live 1-deactive',
  `purchase_date` varchar(50) NOT NULL,
  `mrp_rs` varchar(40) NOT NULL,
  `specimen` int(4) NOT NULL COMMENT '0 - no 1 - yes'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `lms_book_renew`
--

CREATE TABLE `lms_book_renew` (
  `lbr_id` int(4) NOT NULL,
  `sb_id` int(4) NOT NULL,
  `renew_startdate` varchar(20) NOT NULL,
  `renew_enddate` varchar(20) NOT NULL,
  `renew_status` int(4) NOT NULL COMMENT '0-renew 1-no-renew',
  `ay_id` int(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `lms_book_snumber`
--

CREATE TABLE `lms_book_snumber` (
  `ibs_id` int(4) NOT NULL,
  `b_id` int(4) NOT NULL,
  `status` int(4) NOT NULL COMMENT '0-live 1-deactive',
  `date_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `lms_category`
--

CREATE TABLE `lms_category` (
  `c_id` int(4) NOT NULL,
  `category_name` varchar(150) NOT NULL,
  `creation_date` varchar(10) NOT NULL,
  `date_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `status` int(4) NOT NULL COMMENT '0-live 1-deactive'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `lms_lostbooks`
--

CREATE TABLE `lms_lostbooks` (
  `lb_id` int(4) NOT NULL,
  `book_id` int(4) NOT NULL,
  `	book_number` varchar(100) NOT NULL,
  `person_type` varchar(20) NOT NULL,
  `type_id` int(4) NOT NULL,
  `closed_date` varchar(10) NOT NULL,
  `b_id` int(4) NOT NULL,
  `ay_id` int(4) NOT NULL,
  `creation_date` varchar(10) NOT NULL,
  `date_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `lms_staff_borrowbook`
--

CREATE TABLE `lms_staff_borrowbook` (
  `sfb_id` int(4) NOT NULL,
  `staff_id` int(4) NOT NULL,
  `book_id` int(4) NOT NULL,
  `book_number` varchar(100) NOT NULL,
  `start_date` varchar(10) NOT NULL,
  `return_date` varchar(10) NOT NULL,
  `return_bookstatus` text NOT NULL,
  `fine_amount` int(4) NOT NULL,
  `lost_bookstatus` int(4) NOT NULL,
  `status` int(2) NOT NULL COMMENT '0-live 1-return',
  `ay_id` int(4) NOT NULL,
  `creation_date` varchar(10) NOT NULL,
  `date_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `lms_student_borrowbook`
--

CREATE TABLE `lms_student_borrowbook` (
  `sb_id` int(4) NOT NULL,
  `student_id` varchar(150) NOT NULL,
  `book_id` varchar(255) NOT NULL,
  `book_number` varchar(100) NOT NULL,
  `start_date` varchar(10) NOT NULL,
  `end_date` varchar(10) NOT NULL,
  `return_date` varchar(10) NOT NULL,
  `return_bookstatus` text NOT NULL,
  `status` int(4) NOT NULL COMMENT '0-live 1-return',
  `lost_bookstatus` int(4) NOT NULL COMMENT '0-no 1-yes',
  `renew_count` int(4) NOT NULL,
  `fine_amount` int(4) NOT NULL,
  `paid_status` int(4) NOT NULL COMMENT '0 -no paid 1-paid',
  `ay_id` int(4) NOT NULL,
  `b_id` int(4) NOT NULL,
  `creation_date` varchar(10) NOT NULL,
  `date_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `lms_student_fineamount`
--

CREATE TABLE `lms_student_fineamount` (
  `f_id` int(4) NOT NULL,
  `academic_year` varchar(20) NOT NULL,
  `fineamount` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `lms_student_fineamount`
--

INSERT INTO `lms_student_fineamount` (`f_id`, `academic_year`, `fineamount`) VALUES
(1, '7', '50');

-- --------------------------------------------------------

--
-- Table structure for table `mfgroup`
--

CREATE TABLE `mfgroup` (
  `fg_id` int(10) NOT NULL,
  `fg_name` varchar(60) NOT NULL,
  `fty_id` int(10) NOT NULL,
  `ay_id` int(10) NOT NULL,
  `start` int(11) NOT NULL,
  `end` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `mfgroup_detail`
--

CREATE TABLE `mfgroup_detail` (
  `fgd_id` int(11) NOT NULL,
  `name` varchar(120) NOT NULL,
  `type` int(1) NOT NULL,
  `fg_id` int(11) NOT NULL,
  `otherfees` int(11) NOT NULL,
  `fees_amount` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `mfinvoice`
--

CREATE TABLE `mfinvoice` (
  `fi_id` int(10) NOT NULL,
  `fr_no` varchar(30) NOT NULL,
  `fi_name` varchar(150) NOT NULL,
  `fi_total` varchar(60) NOT NULL,
  `fi_ptype` varchar(30) NOT NULL,
  `fi_day` varchar(5) NOT NULL,
  `fi_month` varchar(5) NOT NULL,
  `fi_year` varchar(8) NOT NULL,
  `ss_id` int(10) NOT NULL,
  `c_id` int(10) NOT NULL,
  `s_id` int(10) NOT NULL,
  `category` varchar(60) NOT NULL,
  `stype` varchar(30) NOT NULL,
  `fi_by` varchar(150) NOT NULL,
  `bid` int(10) NOT NULL,
  `ay_id` int(10) NOT NULL,
  `pay_number` varchar(30) NOT NULL,
  `get_amount` varchar(30) NOT NULL,
  `balance` varchar(30) NOT NULL,
  `poor_student_pay` varchar(30) NOT NULL,
  `fund_amount` varchar(30) NOT NULL,
  `funds` int(1) NOT NULL COMMENT '1-Fund, 0- No Fund',
  `c_status` int(1) NOT NULL COMMENT '0 - process,1 - bounced, 2- received',
  `fi_by_name` varchar(60) NOT NULL,
  `bank_name` varchar(30) NOT NULL,
  `cheque_date` varchar(30) NOT NULL,
  `i_status` int(1) NOT NULL COMMENT '0-paid,1-reject or delete'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `mfinvoice_no`
--

CREATE TABLE `mfinvoice_no` (
  `id` int(10) NOT NULL,
  `count` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `mfinvoice_no`
--

INSERT INTO `mfinvoice_no` (`id`, `count`) VALUES
(1, '1');

-- --------------------------------------------------------

--
-- Table structure for table `mfrate`
--

CREATE TABLE `mfrate` (
  `fr_id` int(10) NOT NULL,
  `fg_id` int(10) NOT NULL,
  `fgd_id` int(11) NOT NULL,
  `rate` varchar(30) NOT NULL,
  `c_id` int(10) NOT NULL,
  `s_id` int(11) NOT NULL,
  `b_id` int(10) NOT NULL,
  `ay_id` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `mfrate_value`
--

CREATE TABLE `mfrate_value` (
  `frv_id` int(10) NOT NULL,
  `fr_id` int(10) NOT NULL,
  `fdis_id` int(10) NOT NULL,
  `dis_value` varchar(30) NOT NULL,
  `ay_id` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `mfsalessumarry`
--

CREATE TABLE `mfsalessumarry` (
  `fss_id` int(10) NOT NULL,
  `fi_id` int(10) NOT NULL,
  `fg_id` int(10) NOT NULL,
  `fgd_id` int(11) NOT NULL,
  `fty_id` int(10) NOT NULL,
  `fg_name` varchar(30) NOT NULL,
  `ffrom` int(10) NOT NULL,
  `fto` int(10) NOT NULL,
  `amount` varchar(30) NOT NULL,
  `bid` int(10) NOT NULL,
  `ay_id` int(10) NOT NULL,
  `ftype` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `mobile_sms`
--

CREATE TABLE `mobile_sms` (
  `id` int(30) NOT NULL,
  `day` varchar(5) NOT NULL,
  `month` varchar(5) NOT NULL,
  `year` varchar(8) NOT NULL,
  `date` varchar(20) NOT NULL,
  `title` varchar(30) NOT NULL,
  `msg` text NOT NULL,
  `type` varchar(30) NOT NULL,
  `b_id` int(11) NOT NULL,
  `c_id` int(11) NOT NULL,
  `s_id` int(11) NOT NULL,
  `ay_id` int(11) NOT NULL,
  `st_s_detail` text NOT NULL,
  `st_e_detail` text NOT NULL,
  `sp_s_detail` text NOT NULL,
  `sp_e_detail` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `mobile_sms_specific`
--

CREATE TABLE `mobile_sms_specific` (
  `id` int(30) NOT NULL,
  `day` varchar(5) NOT NULL,
  `month` varchar(5) NOT NULL,
  `year` varchar(8) NOT NULL,
  `date` varchar(30) NOT NULL,
  `title` varchar(60) NOT NULL,
  `msg` text NOT NULL,
  `o_id` int(4) NOT NULL COMMENT 'Other_id ',
  `d_id` int(4) NOT NULL COMMENT 'Driver_id',
  `st_id` int(11) NOT NULL,
  `ss_id` int(11) NOT NULL,
  `b_id` int(11) NOT NULL,
  `c_id` int(11) NOT NULL,
  `s_id` int(11) NOT NULL,
  `ay_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `month`
--

CREATE TABLE `month` (
  `m_id` int(10) NOT NULL,
  `m_name` varchar(64) NOT NULL,
  `m_no` varchar(10) NOT NULL,
  `ay_id` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `month`
--

INSERT INTO `month` (`m_id`, `m_name`, `m_no`, `ay_id`) VALUES
(1, 'June', '6', 1),
(2, 'July', '7', 1),
(3, 'August', '8', 1),
(4, 'September', '9', 1),
(5, 'October', '10', 1),
(6, 'November', '11', 1),
(7, 'December', '12', 1),
(8, 'January', '1', 1),
(9, 'February', '2', 1),
(10, 'March', '3', 1),
(11, 'April', '4', 1),
(12, 'May', '5', 1),
(13, 'June', '6', 2),
(14, 'July', '7', 2),
(15, 'August', '8', 2),
(16, 'September', '9', 2),
(17, 'October', '10', 2),
(18, 'November', '11', 2),
(19, 'December', '12', 2),
(20, 'January', '1', 2),
(21, 'February', '2', 2),
(22, 'March', '3', 2),
(23, 'April', '4', 2),
(24, 'May', '5', 2),
(25, 'June', '6', 3),
(26, 'July', '7', 3),
(27, 'August', '8', 3),
(28, 'September', '9', 3),
(29, 'October', '10', 3),
(30, 'November', '11', 3),
(31, 'December', '12', 3),
(32, 'January', '1', 3),
(33, 'February', '2', 3),
(34, 'March', '3', 3),
(35, 'April', '4', 3),
(36, 'May', '5', 3),
(37, 'June', '6', 4),
(38, 'July', '7', 4),
(39, 'August', '8', 4),
(40, 'September', '9', 4),
(41, 'October', '10', 4),
(42, 'November', '11', 4),
(43, 'December', '12', 4),
(44, 'January', '1', 4),
(45, 'February', '2', 4),
(46, 'March', '3', 4),
(47, 'April', '4', 4),
(48, 'May', '5', 4),
(49, 'June', '6', 5),
(50, 'July', '7', 5),
(51, 'August', '8', 5),
(52, 'September', '9', 5),
(53, 'October', '10', 5),
(54, 'November', '11', 5),
(55, 'December', '12', 5),
(56, 'January', '1', 5),
(57, 'February', '2', 5),
(58, 'March', '3', 5),
(59, 'April', '4', 5),
(60, 'May', '5', 5),
(61, 'June', '6', 6),
(62, 'July', '7', 6),
(63, 'August', '8', 6),
(64, 'September', '9', 6),
(65, 'October', '10', 6),
(66, 'November', '11', 6),
(67, 'December', '12', 6),
(68, 'January', '1', 6),
(69, 'February', '2', 6),
(70, 'March', '3', 6),
(71, 'April', '4', 6),
(72, 'May', '5', 6),
(73, 'June', '6', 7),
(74, 'July', '7', 7),
(75, 'August', '8', 7),
(76, 'September', '9', 7),
(77, 'October', '10', 7),
(78, 'November', '11', 7),
(79, 'December', '12', 7),
(80, 'January', '1', 7),
(81, 'February', '2', 7),
(82, 'March', '3', 7),
(83, 'April', '4', 7),
(84, 'May', '5', 7);

-- --------------------------------------------------------

--
-- Table structure for table `mpaydiscount`
--

CREATE TABLE `mpaydiscount` (
  `mpd_id` int(11) NOT NULL,
  `name` varchar(30) NOT NULL,
  `value` int(11) NOT NULL,
  `discount` varchar(30) NOT NULL,
  `ay_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `news`
--

CREATE TABLE `news` (
  `n_id` int(10) NOT NULL,
  `n_title` varchar(150) NOT NULL,
  `n_des` text NOT NULL,
  `status` int(1) NOT NULL,
  `ay_id` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `news`
--

INSERT INTO `news` (`n_id`, `n_title`, `n_des`, `status`, `ay_id`) VALUES
(1, 'hvkjv', 'hjkvjv', 1, 7);

-- --------------------------------------------------------

--
-- Table structure for table `notebook_purchese`
--

CREATE TABLE `notebook_purchese` (
  `n_id` int(10) NOT NULL,
  `n_name` varchar(150) NOT NULL,
  `n_qtysold` int(10) NOT NULL,
  `n_qtyleft` int(10) NOT NULL,
  `n_price` decimal(10,2) NOT NULL,
  `a_id` int(10) NOT NULL,
  `m_price` decimal(10,2) NOT NULL,
  `p_date` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `others`
--

CREATE TABLE `others` (
  `o_id` int(10) NOT NULL,
  `others_id` varchar(64) NOT NULL,
  `category_id` int(4) NOT NULL,
  `fname` varchar(64) NOT NULL,
  `lname` varchar(64) NOT NULL,
  `s_pname` varchar(64) NOT NULL,
  `dob` varchar(64) NOT NULL,
  `dor` varchar(30) NOT NULL,
  `day` varchar(5) NOT NULL,
  `month` varchar(5) NOT NULL,
  `year` varchar(8) NOT NULL,
  `age` varchar(200) NOT NULL,
  `gender` varchar(20) NOT NULL,
  `reg` varchar(64) NOT NULL,
  `blood` varchar(30) NOT NULL,
  `marriage` varchar(200) NOT NULL,
  `doj` varchar(200) NOT NULL,
  `position` varchar(64) NOT NULL,
  `job_type` varchar(200) NOT NULL,
  `qualf` varchar(200) NOT NULL,
  `expriences` varchar(64) NOT NULL,
  `email` varchar(64) NOT NULL,
  `transport` varchar(200) NOT NULL,
  `password` varchar(64) NOT NULL,
  `lline` varchar(200) NOT NULL,
  `phone_no` varchar(64) NOT NULL,
  `address1` varchar(250) NOT NULL,
  `address2` varchar(250) NOT NULL,
  `city` varchar(64) NOT NULL,
  `state` varchar(200) NOT NULL,
  `country` varchar(64) NOT NULL,
  `pincode` varchar(30) NOT NULL,
  `photo` varchar(64) NOT NULL,
  `status` int(11) NOT NULL,
  `relivestatus` int(25) NOT NULL,
  `r_id` int(11) NOT NULL,
  `ay_id` int(4) NOT NULL,
  `sp_id` int(11) NOT NULL,
  `busfeestype` int(2) NOT NULL,
  `b_name` varchar(200) NOT NULL,
  `b_acc_no` varchar(200) NOT NULL,
  `pf_no` varchar(200) NOT NULL,
  `nominee` varchar(200) NOT NULL,
  `n_name` varchar(200) NOT NULL,
  `n_phone_no` varchar(200) NOT NULL,
  `n_email` varchar(200) NOT NULL,
  `admin_permission` int(11) NOT NULL COMMENT '0-No, 1-Yes',
  `admin_role` varchar(60) NOT NULL,
  `salarytype` int(1) NOT NULL COMMENT '0-bank,1-in hand',
  `s_type` varchar(250) NOT NULL,
  `uanno` varchar(250) NOT NULL,
  `allowance_status` varchar(25) NOT NULL,
  `allowance_amount` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `others_bill_all`
--

CREATE TABLE `others_bill_all` (
  `others_id` int(11) NOT NULL,
  `std` int(11) NOT NULL,
  `board` int(11) NOT NULL,
  `amount` decimal(6,0) DEFAULT NULL,
  `gname` varchar(55) DEFAULT NULL,
  `ay_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `others_bill_all`
--

INSERT INTO `others_bill_all` (`others_id`, `std`, `board`, `amount`, `gname`, `ay_id`) VALUES
(1, 1, 1, '4000', '', 7),
(2, 2, 1, '0', '', 7);

-- --------------------------------------------------------

--
-- Table structure for table `others_category`
--

CREATE TABLE `others_category` (
  `oc_id` int(4) NOT NULL,
  `category_name` varchar(200) NOT NULL,
  `c_code` varchar(10) NOT NULL,
  `category_count` int(4) NOT NULL,
  `ay_id` int(4) NOT NULL,
  `date_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `parent`
--

CREATE TABLE `parent` (
  `p_id` int(10) NOT NULL,
  `p_name` varchar(120) NOT NULL,
  `password` varchar(64) NOT NULL,
  `phone_number` varchar(64) NOT NULL,
  `phone1` varchar(20) NOT NULL,
  `phone2` varchar(20) NOT NULL,
  `phone3` varchar(20) NOT NULL,
  `user_status` int(1) NOT NULL,
  `joined_date` varchar(64) NOT NULL,
  `c_id` int(10) NOT NULL,
  `s_id` int(10) NOT NULL,
  `ocupation` varchar(100) NOT NULL,
  `ay_id` int(10) NOT NULL,
  `ss_id` int(10) NOT NULL,
  `email` varchar(120) NOT NULL,
  `admin_no` varchar(64) NOT NULL,
  `b_id` int(10) NOT NULL,
  `sibling` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `permission`
--

CREATE TABLE `permission` (
  `p_id` int(11) NOT NULL,
  `date` varchar(30) NOT NULL,
  `reason` text NOT NULL,
  `ss_id` int(11) NOT NULL,
  `st_id` int(11) NOT NULL,
  `type` int(1) NOT NULL,
  `ay_id` int(11) NOT NULL,
  `address` text NOT NULL,
  `class_section` varchar(55) NOT NULL,
  `leave_no_days` int(11) NOT NULL,
  `escort_name` varchar(55) NOT NULL,
  `escort_rship` varchar(55) NOT NULL,
  `leave_given_by` varchar(55) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `pre_admission`
--

CREATE TABLE `pre_admission` (
  `pa_id` int(11) NOT NULL,
  `pa_admission_no` varchar(30) NOT NULL,
  `firstname` varchar(50) NOT NULL,
  `lastname` varchar(50) NOT NULL,
  `dob` varchar(10) NOT NULL,
  `gender` varchar(24) NOT NULL,
  `reg` varchar(256) NOT NULL,
  `fathersname` varchar(256) NOT NULL,
  `email` varchar(256) NOT NULL,
  `address1` varchar(100) NOT NULL,
  `city_id` varchar(64) NOT NULL,
  `country` varchar(64) NOT NULL,
  `state` varchar(20) NOT NULL,
  `pin` varchar(10) NOT NULL,
  `phone_number` varchar(25) NOT NULL,
  `phone1` varchar(15) NOT NULL,
  `phone2` varchar(15) NOT NULL,
  `phone3` varchar(15) NOT NULL,
  `std_value` varchar(100) NOT NULL,
  `ele_mark` varchar(100) NOT NULL,
  `ele_group` varchar(100) NOT NULL,
  `ele_prefer` varchar(255) NOT NULL,
  `c_id` int(10) NOT NULL,
  `s_id` int(10) NOT NULL,
  `m_name` varchar(150) NOT NULL,
  `b_id` int(10) NOT NULL,
  `ay_id` int(10) NOT NULL,
  `status` int(1) NOT NULL,
  `mark` varchar(10) NOT NULL,
  `remark` varchar(200) NOT NULL,
  `admin_id` varchar(30) DEFAULT NULL,
  `allocat` int(1) NOT NULL,
  `p_id` int(11) NOT NULL,
  `ss_id` int(11) NOT NULL,
  `ele_pass` varchar(700) NOT NULL,
  `p_board` varchar(255) NOT NULL,
  `p_class` varchar(255) NOT NULL,
  `y_pass` varchar(255) NOT NULL,
  `lschool` varchar(60) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pre_admission`
--

INSERT INTO `pre_admission` (`pa_id`, `pa_admission_no`, `firstname`, `lastname`, `dob`, `gender`, `reg`, `fathersname`, `email`, `address1`, `city_id`, `country`, `state`, `pin`, `phone_number`, `phone1`, `phone2`, `phone3`, `std_value`, `ele_mark`, `ele_group`, `ele_prefer`, `c_id`, `s_id`, `m_name`, `b_id`, `ay_id`, `status`, `mark`, `remark`, `admin_id`, `allocat`, `p_id`, `ss_id`, `ele_pass`, `p_board`, `p_class`, `y_pass`, `lschool`) VALUES
(1, 'PRE00001', 'Rakesh', 'kdbckjd', '11/01/2006', 'M', 'vf', 'dscas', '', 'xcv', ' mx c', ' xc', 'zxczx', '44', ' zxc', '', '', '', '12', '', '', '', 1, 0, 'cxd', 1, 7, 0, '', '', NULL, 0, 0, 0, '', 'State Board', 'English', '2017', 'cvzv'),
(2, 'PRE00002', 'fgrdg', '', '12/01/2011', 'F', 'dfds', 'sdfsd', '', 'sd', 'cvz', 'csd', 'c zxc', '55', 'gdf', '', '', '', '12', '', '', '', 1, 0, '', 1, 7, 0, '', '', NULL, 0, 0, 0, '', 'State Board', 'Tamil', '2017', 'cvnn');

-- --------------------------------------------------------

--
-- Table structure for table `pre_admission_advance`
--

CREATE TABLE `pre_admission_advance` (
  `id` int(11) NOT NULL,
  `rec_no` varchar(20) NOT NULL,
  `pa_id` int(11) NOT NULL,
  `pre_admin` varchar(10) NOT NULL,
  `name` varchar(60) NOT NULL,
  `fname` varchar(40) NOT NULL,
  `phone` varchar(15) NOT NULL,
  `cby` varchar(20) NOT NULL,
  `gender` varchar(2) NOT NULL,
  `cdate` varchar(30) NOT NULL,
  `cday` varchar(2) NOT NULL,
  `cmonth` varchar(2) NOT NULL,
  `cyear` varchar(4) NOT NULL,
  `ptype` varchar(10) NOT NULL,
  `pay_number` varchar(60) NOT NULL,
  `bank_name` varchar(30) NOT NULL,
  `cheque_date` varchar(20) NOT NULL,
  `c_status` int(1) NOT NULL COMMENT '0 - process,1 - bounced, 2- received',
  `c_id` int(11) NOT NULL,
  `s_id` int(11) NOT NULL,
  `b_id` int(11) NOT NULL,
  `ay_id` int(11) NOT NULL,
  `amount` varchar(30) NOT NULL,
  `status` int(1) NOT NULL COMMENT '0-process,1-closed,2-returned',
  `a_year` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pre_admission_advance`
--

INSERT INTO `pre_admission_advance` (`id`, `rec_no`, `pa_id`, `pre_admin`, `name`, `fname`, `phone`, `cby`, `gender`, `cdate`, `cday`, `cmonth`, `cyear`, `ptype`, `pay_number`, `bank_name`, `cheque_date`, `c_status`, `c_id`, `s_id`, `b_id`, `ay_id`, `amount`, `status`, `a_year`) VALUES
(1, '1', 1, 'PRE00133', 'vijayalakshmi v', 'vellaisamy', '8754998205', 'Administrator', 'F', '2016-04-2016', '02', '04', '2016', 'cash', '', '', '', 0, 64, 0, 1, 5, '500', 0, '2015-2016');

-- --------------------------------------------------------

--
-- Table structure for table `promotion`
--

CREATE TABLE `promotion` (
  `po_id` int(4) NOT NULL,
  `old_parent_id` int(4) NOT NULL,
  `new_parent_id` int(4) NOT NULL,
  `ay_id` int(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `quotation`
--

CREATE TABLE `quotation` (
  `q_id` int(4) NOT NULL,
  `bill_address` text NOT NULL,
  `name` varchar(60) NOT NULL,
  `title` varchar(60) NOT NULL,
  `total_amount` varchar(30) NOT NULL,
  `date` varchar(30) NOT NULL,
  `date_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `po_no` varchar(30) NOT NULL,
  `day` varchar(2) NOT NULL,
  `month` varchar(2) NOT NULL,
  `year` varchar(5) NOT NULL,
  `ay_id` int(11) NOT NULL,
  `status` int(1) NOT NULL COMMENT '0-just proposal,1-invoiced'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `quotation_amount`
--

CREATE TABLE `quotation_amount` (
  `qa_id` int(4) NOT NULL,
  `q_id` int(4) NOT NULL,
  `name` text NOT NULL,
  `qty` varchar(10) NOT NULL,
  `amount` varchar(30) NOT NULL,
  `total` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `rankcard_status`
--

CREATE TABLE `rankcard_status` (
  `id` int(11) NOT NULL,
  `e_id` int(11) NOT NULL,
  `ss_id` int(11) NOT NULL,
  `p_id` int(11) NOT NULL,
  `c_id` int(11) NOT NULL,
  `s_id` int(11) NOT NULL,
  `b_id` int(11) NOT NULL,
  `ay_id` int(11) NOT NULL,
  `remark` text NOT NULL,
  `status` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `report_temp`
--

CREATE TABLE `report_temp` (
  `t_id` int(11) NOT NULL,
  `title` varchar(60) NOT NULL,
  `list` text NOT NULL,
  `ay_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `result`
--

CREATE TABLE `result` (
  `r_id` int(10) NOT NULL,
  `mark` varchar(64) NOT NULL,
  `mark1` varchar(60) NOT NULL,
  `result` varchar(64) NOT NULL,
  `remark` varchar(150) NOT NULL,
  `fa1` varchar(10) NOT NULL,
  `fa2` varchar(10) NOT NULL,
  `fa3` varchar(10) NOT NULL,
  `fa4` varchar(10) NOT NULL,
  `fa_a_mark` varchar(10) NOT NULL,
  `fa_b_mark` varchar(10) NOT NULL,
  `fa_mark` varchar(10) NOT NULL,
  `fa_grade` varchar(5) NOT NULL,
  `sa_mark` varchar(10) NOT NULL,
  `sa_grade` varchar(5) NOT NULL,
  `fa_sa_mark` varchar(10) NOT NULL,
  `fa_sa_grade` varchar(5) NOT NULL,
  `c_id` int(10) NOT NULL,
  `s_id` int(10) NOT NULL,
  `e_id` int(10) NOT NULL,
  `sub_id` int(10) NOT NULL,
  `ss_id` int(10) NOT NULL,
  `admin_no` varchar(120) NOT NULL,
  `b_id` int(10) NOT NULL,
  `ay_id` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `route`
--

CREATE TABLE `route` (
  `r_id` int(10) NOT NULL,
  `r_name` varchar(150) NOT NULL,
  `v_id` int(10) NOT NULL,
  `d_id` int(10) NOT NULL,
  `sd_id` int(10) NOT NULL,
  `status` int(1) NOT NULL,
  `r_contact` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `salary`
--

CREATE TABLE `salary` (
  `sy_id` int(10) NOT NULL,
  `amount` varchar(64) NOT NULL,
  `date_day` varchar(5) NOT NULL,
  `date_month` varchar(5) NOT NULL,
  `date_year` varchar(10) NOT NULL,
  `m_id` int(10) NOT NULL,
  `st_id` int(10) NOT NULL,
  `ay_id` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `salessumarry`
--

CREATE TABLE `salessumarry` (
  `sa_id` int(10) NOT NULL,
  `i_id` int(10) NOT NULL,
  `b_id` int(10) NOT NULL,
  `b_name` varchar(150) NOT NULL,
  `sa_qty` varchar(100) NOT NULL,
  `sa_price` varchar(100) NOT NULL,
  `sa_total` varchar(100) NOT NULL,
  `brdid` int(10) NOT NULL,
  `ay_id` int(10) NOT NULL,
  `i_status` int(4) NOT NULL COMMENT '0 - paid 1- reject (or) delete'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `samacheer_itox`
--

CREATE TABLE `samacheer_itox` (
  `id` int(11) NOT NULL,
  `ano` varchar(150) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `tno` varchar(150) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `eno` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `sname` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `fname` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `nation` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `community` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `adidravidar` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `bc` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `mbc` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `convert_christ` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `de_community` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `sex` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `dob` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `identity1` varchar(1000) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `identity2` varchar(1000) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `doa` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `leaving` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `edu_rule` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `scholarship` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `med_inspection` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `school_left` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `conduct` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `guardian` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `dtc` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `course` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `academic_year` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `standard` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `first_lan` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `med_ins` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `ay_id` int(11) NOT NULL,
  `b_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `samacheer_x`
--

CREATE TABLE `samacheer_x` (
  `id` int(11) NOT NULL,
  `ano` varchar(150) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `tno` varchar(150) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `eno` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `xmno` varchar(120) NOT NULL,
  `sname` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `fname` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `nation` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `community` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `adidravidar` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `bc` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `mbc` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `convert_christ` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `de_community` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `sex` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `dob` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `identity1` varchar(1000) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `identity2` varchar(1000) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `doa` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `leaving` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `edu_rule` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `scholarship` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `med_inspection` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `school_left` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `conduct` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `guardian` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `dtc` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `course` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `academic_year` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `standard` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `first_lan` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `med_ins` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `ay_id` int(11) NOT NULL,
  `b_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `sattendance`
--

CREATE TABLE `sattendance` (
  `satt_id` int(30) NOT NULL,
  `day` varchar(30) NOT NULL,
  `month` varchar(30) NOT NULL,
  `year` varchar(30) NOT NULL,
  `result` varchar(64) NOT NULL COMMENT '1-present,0-absent,off-offday',
  `result_half` varchar(20) NOT NULL,
  `remark` varchar(150) NOT NULL,
  `m_id` int(10) NOT NULL,
  `st_id` int(10) NOT NULL,
  `o_id` int(11) NOT NULL,
  `d_id` int(11) NOT NULL,
  `lt_id` int(11) NOT NULL,
  `reason` varchar(250) NOT NULL,
  `ay_id` int(10) NOT NULL,
  `l_apply` int(11) NOT NULL COMMENT 'staff_leave id'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `school_name`
--

CREATE TABLE `school_name` (
  `sc_id` int(4) NOT NULL,
  `sc_name` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `school_name`
--

INSERT INTO `school_name` (`sc_id`, `sc_name`) VALUES
(1, 'DAV PUBLIC SCHOOL');

-- --------------------------------------------------------

--
-- Table structure for table `section`
--

CREATE TABLE `section` (
  `s_id` int(10) NOT NULL,
  `s_name` varchar(64) NOT NULL,
  `c_id` int(10) NOT NULL,
  `ay_id` int(10) NOT NULL,
  `g_name` varchar(55) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `section`
--

INSERT INTO `section` (`s_id`, `s_name`, `c_id`, `ay_id`, `g_name`) VALUES
(1, 'A', 1, 7, '');

-- --------------------------------------------------------

--
-- Table structure for table `service`
--

CREATE TABLE `service` (
  `se_id` int(10) NOT NULL,
  `se_price` decimal(10,2) NOT NULL,
  `c_id` int(10) NOT NULL,
  `s_id` int(10) NOT NULL,
  `brdid` int(10) NOT NULL,
  `ay_id` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `sfeedback`
--

CREATE TABLE `sfeedback` (
  `sf_id` int(10) NOT NULL,
  `st_id` int(10) NOT NULL,
  `title` varchar(64) NOT NULL,
  `msg` varchar(300) NOT NULL,
  `date` varchar(64) NOT NULL,
  `ay_id` int(10) NOT NULL,
  `status` int(1) NOT NULL,
  `send` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `sibling`
--

CREATE TABLE `sibling` (
  `id` int(11) NOT NULL,
  `p_id` int(11) NOT NULL,
  `ss_id` int(11) NOT NULL,
  `c_id` int(11) NOT NULL,
  `s_id` int(11) NOT NULL,
  `b_id` int(11) NOT NULL,
  `ay_id` int(11) NOT NULL,
  `admin_no` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `ssfeedback`
--

CREATE TABLE `ssfeedback` (
  `ssf_id` int(10) NOT NULL,
  `st_id` int(10) NOT NULL,
  `ss_id` int(10) NOT NULL,
  `title` varchar(64) NOT NULL,
  `msg` varchar(300) NOT NULL,
  `date` varchar(64) NOT NULL,
  `c_id` int(10) NOT NULL,
  `s_id` int(10) NOT NULL,
  `b_id` int(10) NOT NULL,
  `ay_id` int(10) NOT NULL,
  `status` int(1) NOT NULL,
  `send` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `staff`
--

CREATE TABLE `staff` (
  `st_id` int(10) NOT NULL,
  `staff_id` varchar(64) NOT NULL,
  `fname` varchar(64) NOT NULL,
  `mname` varchar(64) NOT NULL,
  `lname` varchar(64) NOT NULL,
  `s_type` varchar(64) NOT NULL,
  `s_pname` varchar(64) NOT NULL,
  `dob` varchar(64) NOT NULL,
  `dor` varchar(30) NOT NULL,
  `day` varchar(5) NOT NULL,
  `month` varchar(5) NOT NULL,
  `year` varchar(8) NOT NULL,
  `age` varchar(200) NOT NULL,
  `gender` varchar(20) NOT NULL,
  `reg` varchar(64) NOT NULL,
  `blood` varchar(30) NOT NULL,
  `marriage` varchar(200) NOT NULL,
  `doj` varchar(200) NOT NULL,
  `position` varchar(64) NOT NULL,
  `job_type` varchar(200) NOT NULL,
  `qualf` varchar(200) NOT NULL,
  `expriences` varchar(64) NOT NULL,
  `email` varchar(64) NOT NULL,
  `transport` varchar(200) NOT NULL,
  `password` varchar(64) NOT NULL,
  `lline` varchar(200) NOT NULL,
  `phone_no` varchar(64) NOT NULL,
  `address1` varchar(250) NOT NULL,
  `address2` varchar(250) NOT NULL,
  `city` varchar(64) NOT NULL,
  `state` varchar(200) NOT NULL,
  `country` varchar(64) NOT NULL,
  `pincode` varchar(30) NOT NULL,
  `photo` varchar(64) NOT NULL,
  `status` int(11) NOT NULL COMMENT '1-active,0-deactive',
  `relivestatus` int(25) NOT NULL,
  `r_id` int(11) NOT NULL,
  `sp_id` int(11) NOT NULL,
  `busfeestype` int(2) NOT NULL,
  `b_name` varchar(200) NOT NULL,
  `b_acc_no` varchar(200) NOT NULL,
  `pf_no` varchar(200) NOT NULL,
  `nominee` varchar(200) NOT NULL,
  `n_name` varchar(200) NOT NULL,
  `n_phone_no` varchar(200) NOT NULL,
  `n_email` varchar(200) NOT NULL,
  `admin_permission` int(11) NOT NULL COMMENT '0-No, 1-Yes',
  `admin_role` varchar(60) NOT NULL,
  `prince` int(1) NOT NULL COMMENT '0-not,1-principal',
  `salarytype` int(1) NOT NULL COMMENT '0-bank,1-in hand',
  `uanno` varchar(250) NOT NULL,
  `council_mem` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `staff`
--

INSERT INTO `staff` (`st_id`, `staff_id`, `fname`, `mname`, `lname`, `s_type`, `s_pname`, `dob`, `dor`, `day`, `month`, `year`, `age`, `gender`, `reg`, `blood`, `marriage`, `doj`, `position`, `job_type`, `qualf`, `expriences`, `email`, `transport`, `password`, `lline`, `phone_no`, `address1`, `address2`, `city`, `state`, `country`, `pincode`, `photo`, `status`, `relivestatus`, `r_id`, `sp_id`, `busfeestype`, `b_name`, `b_acc_no`, `pf_no`, `nominee`, `n_name`, `n_phone_no`, `n_email`, `admin_permission`, `admin_role`, `prince`, `salarytype`, `uanno`, `council_mem`) VALUES
(1, 'CH001', 'Amrit', 'Das', 'Das', 'Non-Teaching', 'Anil', '08/12/2017', '', '08', '12', '2017', '', 'M', 'Hindu', 'B +ve', '', '07/12/2017', 'Librarian', '', '+2', '2', 'admin@admin.com', '', 'CH001', '', '9088336288', 'Hetauda', '', 'Hetauda', '', 'Nepal', '700091', 'mstaff_small.png', 1, 0, 0, 0, 0, '', '', '', '', '', '', '', 1, '1', 0, 0, '', 0),
(2, 'CH002', 'JAYASHREE', '', 'SHETTY', 'Teaching', 'saf', '05/02/2018', '', '05', '02', '2018', '', 'F', 'Christian', 'A -ve', '', '08/01/2018', 'PRINCIPAL', '', 'BA, Bed', '', 'jay@gmail.com', '', 'CH002', '', '98', 'dfgfd', '', 'fdvfb', '', 'vbdf', '', 'fstaff_small.png', 1, 0, 0, 0, 0, '', '', '', '', '', '', '', 0, '', 1, 0, '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `staff_advance`
--

CREATE TABLE `staff_advance` (
  `a_id` int(11) NOT NULL,
  `st_id` int(11) NOT NULL,
  `o_id` int(11) NOT NULL,
  `d_id` int(11) NOT NULL,
  `staff_id` varchar(30) NOT NULL,
  `staff_name` varchar(150) NOT NULL,
  `staff_type` varchar(60) NOT NULL,
  `a_date` varchar(100) NOT NULL,
  `a_amount` varchar(30) NOT NULL,
  `a_pay` varchar(60) NOT NULL,
  `day` varchar(2) NOT NULL,
  `month` varchar(2) NOT NULL,
  `year` varchar(4) NOT NULL,
  `status` int(1) NOT NULL COMMENT '0-pending,1-received',
  `st_ms_id` int(11) NOT NULL,
  `login_user_name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `staff_allw_ded`
--

CREATE TABLE `staff_allw_ded` (
  `id` int(200) NOT NULL,
  `type` varchar(200) NOT NULL,
  `name` varchar(200) NOT NULL,
  `per_cent` varchar(30) NOT NULL,
  `descrip` text NOT NULL,
  `status` int(20) NOT NULL,
  `basic` int(1) NOT NULL,
  `pe_type` int(1) NOT NULL COMMENT '0-other,1-PF,2-ESI',
  `login_user_name` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `staff_allw_ded`
--

INSERT INTO `staff_allw_ded` (`id`, `type`, `name`, `per_cent`, `descrip`, `status`, `basic`, `pe_type`, `login_user_name`) VALUES
(2, 'Allowance', 'Basic', '50', 'basic', 1, 1, 0, ''),
(3, 'Allowance', 'HRA', '30', 'test', 1, 0, 0, ''),
(8, 'Deductions', 'EPF', '12', 'test', 1, 0, 1, ''),
(10, 'Deductions', 'ESI', '1.75', '', 1, 0, 2, ''),
(11, 'Allowance', 'DA', '10', '', 1, 0, 0, '');

-- --------------------------------------------------------

--
-- Table structure for table `staff_daily_salary`
--

CREATE TABLE `staff_daily_salary` (
  `st_ms_id` int(11) NOT NULL,
  `st_id` int(11) NOT NULL,
  `o_id` int(11) NOT NULL,
  `d_id` int(11) NOT NULL,
  `staff_name` varchar(120) NOT NULL,
  `staff_id` varchar(60) NOT NULL,
  `date` varchar(60) NOT NULL,
  `day` varchar(3) NOT NULL,
  `month` varchar(3) NOT NULL,
  `year` varchar(5) NOT NULL,
  `g_salary` varchar(30) NOT NULL,
  `n_salary` varchar(30) NOT NULL,
  `d_total` varchar(30) NOT NULL,
  `loan_pay` varchar(30) NOT NULL,
  `total_leave` varchar(60) NOT NULL,
  `doj` varchar(30) NOT NULL,
  `position` varchar(60) NOT NULL,
  `role` varchar(60) NOT NULL,
  `accno` varchar(100) NOT NULL,
  `tleave` float NOT NULL,
  `tlob` float NOT NULL,
  `ay_id` int(11) NOT NULL,
  `lp_id` int(11) NOT NULL,
  `a_id` varchar(30) NOT NULL,
  `date_day` varchar(2) NOT NULL,
  `date_month` varchar(2) NOT NULL,
  `date_year` varchar(5) NOT NULL,
  `login_user_name` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `staff_daily_salary_summary`
--

CREATE TABLE `staff_daily_salary_summary` (
  `sum_id` int(11) NOT NULL,
  `st_ms_id` int(11) NOT NULL,
  `st_id` int(11) NOT NULL,
  `o_id` int(11) NOT NULL,
  `d_id` int(11) NOT NULL,
  `name` varchar(60) NOT NULL,
  `amount` varchar(30) NOT NULL,
  `type` int(1) NOT NULL,
  `ad_id` int(11) NOT NULL,
  `pevalue` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `staff_deduction`
--

CREATE TABLE `staff_deduction` (
  `sd_id` int(11) NOT NULL,
  `cdate` varchar(30) NOT NULL,
  `day` int(2) NOT NULL,
  `month` int(2) NOT NULL,
  `year` int(4) NOT NULL,
  `m_year` varchar(20) NOT NULL,
  `name` varchar(30) NOT NULL,
  `amount` varchar(30) NOT NULL,
  `status` int(1) NOT NULL COMMENT '0-active,1-deactive'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `staff_ded_detail`
--

CREATE TABLE `staff_ded_detail` (
  `id` int(11) NOT NULL,
  `title` varchar(30) NOT NULL,
  `amount` varchar(20) NOT NULL,
  `type` varchar(1) NOT NULL COMMENT 'c-common,M-men,W-Women',
  `sd_id` int(11) NOT NULL,
  `status` int(1) NOT NULL,
  `cdate` varchar(30) NOT NULL,
  `a_for` int(1) NOT NULL COMMENT '0-All,1-Staff,2-Other Staff,3-Driver'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `staff_leave`
--

CREATE TABLE `staff_leave` (
  `id` int(11) NOT NULL,
  `st_id` int(11) NOT NULL,
  `o_id` int(11) NOT NULL,
  `d_id` int(11) NOT NULL,
  `staff_id` varchar(60) NOT NULL,
  `staff_name` varchar(150) NOT NULL,
  `l_type` int(11) NOT NULL,
  `l_type_name` varchar(60) NOT NULL,
  `a_date` varchar(60) NOT NULL,
  `f_date` varchar(60) NOT NULL,
  `t_date` varchar(60) NOT NULL,
  `l_total` varchar(20) NOT NULL,
  `l_des` text NOT NULL,
  `h_type` varchar(2) NOT NULL,
  `day` int(2) NOT NULL,
  `month` int(2) NOT NULL,
  `year` int(4) NOT NULL,
  `f_day` varchar(4) NOT NULL,
  `f_month` varchar(4) NOT NULL,
  `f_year` varchar(5) NOT NULL,
  `t_day` varchar(4) NOT NULL,
  `t_month` varchar(4) NOT NULL,
  `t_year` varchar(5) NOT NULL,
  `status` int(1) NOT NULL COMMENT '0-process,1-Approved,2-Rejected',
  `from_date` varchar(30) NOT NULL,
  `to_date` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `staff_leave_y`
--

CREATE TABLE `staff_leave_y` (
  `id` int(200) NOT NULL,
  `l_yearly` varchar(200) NOT NULL,
  `l_typ` varchar(200) NOT NULL,
  `l_days` varchar(200) NOT NULL,
  `status` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `staff_loan`
--

CREATE TABLE `staff_loan` (
  `l_id` int(11) NOT NULL,
  `st_id` int(11) NOT NULL,
  `o_id` int(11) NOT NULL,
  `d_id` int(11) NOT NULL,
  `staff_id` varchar(30) NOT NULL,
  `staff_name` varchar(150) NOT NULL,
  `staff_type` varchar(60) NOT NULL,
  `l_date` varchar(100) NOT NULL,
  `l_type` int(11) NOT NULL,
  `l_type_name` varchar(60) NOT NULL,
  `l_amount` varchar(30) NOT NULL,
  `l_interest` varchar(5) NOT NULL,
  `l_terms` varchar(3) NOT NULL,
  `l_pay` varchar(60) NOT NULL,
  `l_m_pay` varchar(60) NOT NULL,
  `l_t_interest` varchar(60) NOT NULL,
  `day` varchar(2) NOT NULL,
  `month` varchar(2) NOT NULL,
  `year` varchar(4) NOT NULL,
  `status` int(1) NOT NULL,
  `login_user_name` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `staff_loan_pay`
--

CREATE TABLE `staff_loan_pay` (
  `lp_id` int(11) NOT NULL,
  `st_ms_id` int(11) NOT NULL,
  `st_id` int(11) NOT NULL,
  `o_id` int(11) NOT NULL,
  `d_id` int(11) NOT NULL,
  `l_id` int(11) NOT NULL,
  `amount` varchar(60) NOT NULL,
  `balance` varchar(60) NOT NULL,
  `day` varchar(2) NOT NULL,
  `month` int(2) NOT NULL,
  `year` int(4) NOT NULL,
  `date` varchar(60) NOT NULL,
  `login_user_name` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `staff_loan_type`
--

CREATE TABLE `staff_loan_type` (
  `lt_id` int(11) NOT NULL,
  `name` varchar(60) NOT NULL,
  `min_amount` varchar(60) NOT NULL,
  `max_amount` varchar(60) NOT NULL,
  `l_dec` text NOT NULL,
  `status` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `staff_mcontribution`
--

CREATE TABLE `staff_mcontribution` (
  `id` int(11) NOT NULL,
  `ad_id` int(11) NOT NULL,
  `name` varchar(30) NOT NULL,
  `per_cent` varchar(30) NOT NULL,
  `ay_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `staff_mcontribution`
--

INSERT INTO `staff_mcontribution` (`id`, `ad_id`, `name`, `per_cent`, `ay_id`) VALUES
(1, 8, 'EPF', '12', 5),
(2, 10, 'ESI', '3.75', 5),
(3, 8, 'EPF', '12', 7);

-- --------------------------------------------------------

--
-- Table structure for table `staff_month_salary`
--

CREATE TABLE `staff_month_salary` (
  `st_ms_id` int(11) NOT NULL,
  `st_id` int(11) NOT NULL,
  `o_id` int(11) NOT NULL,
  `d_id` int(11) NOT NULL,
  `staff_name` varchar(120) NOT NULL,
  `staff_id` varchar(60) NOT NULL,
  `date` varchar(60) NOT NULL,
  `day` varchar(3) NOT NULL,
  `month` varchar(3) NOT NULL,
  `year` varchar(5) NOT NULL,
  `g_salary` varchar(30) NOT NULL,
  `n_salary` varchar(30) NOT NULL,
  `d_total` varchar(30) NOT NULL,
  `loan_pay` varchar(30) NOT NULL,
  `total_leave` varchar(60) NOT NULL,
  `doj` varchar(30) NOT NULL,
  `position` varchar(60) NOT NULL,
  `role` varchar(60) NOT NULL,
  `accno` varchar(100) NOT NULL,
  `tleave` float NOT NULL,
  `tlob` float NOT NULL,
  `ay_id` int(11) NOT NULL,
  `lp_id` int(11) NOT NULL,
  `a_id` varchar(30) NOT NULL,
  `date_day` varchar(2) NOT NULL,
  `date_month` varchar(2) NOT NULL,
  `date_year` varchar(5) NOT NULL,
  `extra_salary` varchar(250) NOT NULL,
  `extra_salary_type` varchar(250) NOT NULL,
  `login_user_name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `staff_month_salary_summary`
--

CREATE TABLE `staff_month_salary_summary` (
  `sum_id` int(11) NOT NULL,
  `st_ms_id` int(11) NOT NULL,
  `st_id` int(11) NOT NULL,
  `o_id` int(11) NOT NULL,
  `d_id` int(11) NOT NULL,
  `name` varchar(60) NOT NULL,
  `amount` varchar(30) NOT NULL,
  `type` int(1) NOT NULL,
  `ad_id` int(11) NOT NULL,
  `pevalue` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `staff_no_count`
--

CREATE TABLE `staff_no_count` (
  `id` int(10) NOT NULL,
  `count` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `staff_no_count`
--

INSERT INTO `staff_no_count` (`id`, `count`) VALUES
(1, '3');

-- --------------------------------------------------------

--
-- Table structure for table `staff_salary`
--

CREATE TABLE `staff_salary` (
  `id` int(11) NOT NULL,
  `salary` varchar(30) NOT NULL,
  `allowance` varchar(60) NOT NULL,
  `deduction` varchar(60) NOT NULL,
  `date` varchar(50) NOT NULL,
  `st_id` int(11) NOT NULL,
  `o_id` int(11) NOT NULL,
  `d_id` int(11) NOT NULL,
  `status` int(1) NOT NULL,
  `extra_salary` varchar(250) NOT NULL,
  `extra_salary_type` varchar(155) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `staff_salary_report`
--

CREATE TABLE `staff_salary_report` (
  `id` int(11) NOT NULL,
  `month` varchar(5) NOT NULL,
  `year` varchar(5) NOT NULL,
  `date` varchar(30) NOT NULL,
  `to_address` text NOT NULL,
  `subject` varchar(150) NOT NULL,
  `cheque_no` varchar(30) NOT NULL,
  `amount` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `stopping`
--

CREATE TABLE `stopping` (
  `sp_id` int(11) NOT NULL,
  `sp_name` varchar(150) NOT NULL,
  `r_id` int(10) NOT NULL,
  `ListingID` int(11) NOT NULL,
  `status` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `student`
--

CREATE TABLE `student` (
  `ss_id` int(11) NOT NULL,
  `admission_number` varchar(30) NOT NULL,
  `application` varchar(30) NOT NULL,
  `firstname` varchar(50) NOT NULL,
  `lastname` varchar(50) NOT NULL,
  `middlename` varchar(128) NOT NULL,
  `dob` varchar(10) NOT NULL,
  `day` varchar(5) NOT NULL,
  `month` varchar(5) NOT NULL,
  `year` varchar(8) NOT NULL,
  `gender` varchar(1) NOT NULL,
  `blood` varchar(5) NOT NULL,
  `nation` varchar(256) NOT NULL,
  `reg` varchar(256) NOT NULL,
  `sub_caste` varchar(250) NOT NULL,
  `caste` varchar(250) NOT NULL,
  `fathersname` varchar(256) NOT NULL,
  `email` varchar(256) NOT NULL,
  `password` varchar(32) NOT NULL,
  `address1` varchar(100) NOT NULL,
  `address2` varchar(100) NOT NULL,
  `city_id` varchar(64) NOT NULL,
  `state` varchar(30) NOT NULL,
  `country` varchar(64) NOT NULL,
  `pin` varchar(10) NOT NULL,
  `phone_number` varchar(25) NOT NULL,
  `phone1` varchar(20) NOT NULL,
  `second_lang` varchar(55) DEFAULT NULL,
  `phone3` varchar(20) NOT NULL,
  `user_status` int(1) NOT NULL DEFAULT '1' COMMENT '1-active,0-deactive',
  `joined_date` varchar(255) NOT NULL,
  `last_login` int(10) NOT NULL,
  `bar_code` varchar(255) NOT NULL,
  `c_id` int(10) NOT NULL,
  `s_id` int(10) NOT NULL,
  `fathersocupation` varchar(512) NOT NULL,
  `p_income` varchar(150) NOT NULL,
  `m_name` varchar(150) NOT NULL,
  `m_occup` varchar(150) NOT NULL,
  `m_income` varchar(150) NOT NULL,
  `from_school` varchar(512) NOT NULL,
  `eslc` varchar(512) NOT NULL,
  `tc` varchar(512) NOT NULL,
  `doa` varchar(15) NOT NULL,
  `protected` varchar(512) NOT NULL,
  `mother_tongue` varchar(512) NOT NULL,
  `height` varchar(60) NOT NULL,
  `weight` varchar(60) NOT NULL,
  `std_leaving` varchar(512) NOT NULL,
  `no_date_tran` varchar(512) NOT NULL,
  `dol` varchar(15) NOT NULL,
  `reason_leaving` varchar(512) NOT NULL,
  `school_pubil` varchar(512) NOT NULL,
  `remarks` varchar(512) NOT NULL,
  `b_id` int(10) NOT NULL,
  `stype` varchar(30) NOT NULL,
  `fdis_id` int(10) NOT NULL,
  `r_id` int(11) NOT NULL,
  `sp_id` int(11) NOT NULL,
  `busfeestype` int(2) NOT NULL,
  `ay_id` int(10) NOT NULL,
  `photo` varchar(120) NOT NULL,
  `pa_id` int(11) NOT NULL,
  `p_id` int(11) NOT NULL,
  `late_join` varchar(30) NOT NULL,
  `sel_hostel` varchar(20) NOT NULL,
  `mlate_join` int(11) NOT NULL,
  `mpd_id` int(11) NOT NULL,
  `blate_join` int(11) NOT NULL,
  `scateg` int(1) NOT NULL COMMENT '0-Before IB,1-After IB',
  `sfood` int(1) NOT NULL COMMENT '0-No,1-Yes',
  `mode` varchar(30) NOT NULL,
  `s_ship` varchar(16) DEFAULT NULL,
  `s_reson` varchar(55) DEFAULT NULL,
  `phone2` varchar(55) DEFAULT NULL,
  `route` varchar(55) DEFAULT NULL,
  `roll_no` varchar(55) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `subadmin_accesspage`
--

CREATE TABLE `subadmin_accesspage` (
  `sa_id` int(4) NOT NULL,
  `subadmin_id` int(4) NOT NULL,
  `menu_name` varchar(200) NOT NULL,
  `log_type` varchar(30) NOT NULL,
  `sub_menuname` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `subadmin_accesspage`
--

INSERT INTO `subadmin_accesspage` (`sa_id`, `subadmin_id`, `menu_name`, `log_type`, `sub_menuname`) VALUES
(2, 1, 'Payroll Management', 'staff', '');

-- --------------------------------------------------------

--
-- Table structure for table `subject`
--

CREATE TABLE `subject` (
  `sub_id` int(10) NOT NULL,
  `sl_id` int(11) NOT NULL,
  `c_id` int(10) NOT NULL,
  `s_id` int(10) NOT NULL,
  `st_id` int(10) NOT NULL,
  `b_id` int(10) NOT NULL,
  `ay_id` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `subjectlist`
--

CREATE TABLE `subjectlist` (
  `sl_id` int(10) NOT NULL,
  `s_code` varchar(64) NOT NULL,
  `s_name` varchar(120) NOT NULL,
  `c_id` int(10) NOT NULL,
  `s_id` int(10) NOT NULL,
  `b_id` int(10) NOT NULL,
  `ay_id` int(10) NOT NULL,
  `paper` int(10) NOT NULL,
  `s_type` int(1) NOT NULL COMMENT '0-FA-SA concept,1-100 mark',
  `extra_sub` int(11) NOT NULL COMMENT '0=main sub, 1=extra sub'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `syllabus`
--

CREATE TABLE `syllabus` (
  `id` int(11) NOT NULL,
  `sl_id` int(11) NOT NULL,
  `c_id` int(11) NOT NULL,
  `s_id` int(11) NOT NULL,
  `b_id` int(11) NOT NULL,
  `ay_id` int(11) NOT NULL,
  `status` int(1) NOT NULL,
  `files` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `syllabus_assign`
--

CREATE TABLE `syllabus_assign` (
  `id` int(11) NOT NULL,
  `e_id` int(11) NOT NULL,
  `c_id` int(11) NOT NULL,
  `s_id` int(11) NOT NULL,
  `sl_id` int(11) NOT NULL,
  `b_id` int(11) NOT NULL,
  `date` varchar(30) NOT NULL,
  `covered` text NOT NULL,
  `ay_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `syllabus_covered`
--

CREATE TABLE `syllabus_covered` (
  `id` int(30) NOT NULL,
  `day` varchar(5) NOT NULL,
  `month` varchar(5) NOT NULL,
  `year` varchar(10) NOT NULL,
  `date` varchar(30) NOT NULL,
  `peroid` varchar(10) NOT NULL,
  `detail` text NOT NULL,
  `c_id` int(11) NOT NULL,
  `s_id` int(11) NOT NULL,
  `st_id` int(11) NOT NULL,
  `sub_id` int(11) NOT NULL,
  `b_id` int(11) NOT NULL,
  `ay_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tc_icse`
--

CREATE TABLE `tc_icse` (
  `id` int(10) NOT NULL,
  `ano` varchar(64) NOT NULL,
  `tcno` varchar(64) NOT NULL,
  `name` varchar(120) NOT NULL,
  `f_name` varchar(120) NOT NULL,
  `a_from` varchar(120) NOT NULL,
  `tc_from` varchar(120) NOT NULL,
  `left1` varchar(120) NOT NULL,
  `leaving` varchar(120) NOT NULL,
  `class` varchar(64) NOT NULL,
  `year_from` varchar(64) NOT NULL,
  `year_to` varchar(64) NOT NULL,
  `dob_f` varchar(64) NOT NULL,
  `dob_w` varchar(120) NOT NULL,
  `religion` varchar(64) NOT NULL,
  `community` varchar(64) NOT NULL,
  `promotion` varchar(64) NOT NULL,
  `c_date` varchar(64) NOT NULL,
  `ay_id` int(10) NOT NULL,
  `b_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tc_no`
--

CREATE TABLE `tc_no` (
  `id` int(11) NOT NULL,
  `count` varchar(30) NOT NULL,
  `name` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tc_no`
--

INSERT INTO `tc_no` (`id`, `count`, `name`) VALUES
(1, '1', ''),
(2, '1', '');

-- --------------------------------------------------------

--
-- Table structure for table `tc_xi`
--

CREATE TABLE `tc_xi` (
  `id` int(11) NOT NULL,
  `ano` varchar(150) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `tno` varchar(150) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `eno` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `sname` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `fname` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `mname` varchar(60) NOT NULL,
  `sex` varchar(10) NOT NULL,
  `nation` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `religion` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `dobfigure` varchar(30) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `dobword` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `leaving` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `high_language` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `high_elective` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `med_ins1` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `doa` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `q_std` varchar(1000) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `due_school` varchar(1000) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `last_att` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `school_left` varchar(255) NOT NULL,
  `dtc1` varchar(255) NOT NULL,
  `dtc` varchar(255) NOT NULL,
  `purpose` varchar(255) NOT NULL,
  `no_day_att` varchar(255) NOT NULL,
  `conduct` varchar(255) NOT NULL,
  `academic_year` varchar(255) NOT NULL,
  `standard` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `first_lan` varchar(150) NOT NULL,
  `med_ins` varchar(60) NOT NULL,
  `ay_id` int(11) NOT NULL,
  `b_id` int(11) NOT NULL,
  `ss_id` int(30) NOT NULL,
  `revenueplace` varchar(55) NOT NULL,
  `schoolplace` varchar(55) NOT NULL,
  `AdiDravidar` varchar(55) NOT NULL,
  `mostbackclass` varchar(55) NOT NULL,
  `convertedclass` varchar(55) NOT NULL,
  `denoty` varchar(55) NOT NULL,
  `personmark` varchar(555) NOT NULL,
  `scholarship` varchar(55) NOT NULL,
  `scholarshipreason` varchar(255) NOT NULL,
  `medicalissue` varchar(55) NOT NULL,
  `backclass` varchar(55) NOT NULL,
  `doandclass` varchar(255) NOT NULL,
  `offer` varchar(255) NOT NULL,
  `generaleducation` varchar(255) NOT NULL,
  `vocationaleducation` varchar(255) NOT NULL,
  `Languageoffer` varchar(255) NOT NULL,
  `medicalissue_reson` varchar(255) NOT NULL,
  `cert_no` varchar(55) DEFAULT NULL,
  `reg_no` varchar(55) DEFAULT NULL,
  `tmr_no` varchar(55) DEFAULT NULL,
  `na_en` varchar(255) DEFAULT NULL,
  `tc_amount` int(11) NOT NULL,
  `date_day` varchar(16) NOT NULL,
  `date_month` varchar(16) NOT NULL,
  `date_year` varchar(16) NOT NULL,
  `status` int(11) NOT NULL DEFAULT '1',
  `cos` varchar(255) NOT NULL,
  `tc_by` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tc_xi_kg`
--

CREATE TABLE `tc_xi_kg` (
  `id` int(11) NOT NULL,
  `ano` varchar(150) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `tno` varchar(150) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `eno` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `sname` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `fname` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `mname` varchar(60) NOT NULL,
  `sex` varchar(10) NOT NULL,
  `nation` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `religion` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `dobfigure` varchar(30) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `dobword` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `leaving` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `high_language` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `high_elective` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `med_ins1` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `doa` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `q_std` varchar(1000) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `due_school` varchar(1000) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `last_att` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `school_left` varchar(255) NOT NULL,
  `dtc1` varchar(255) NOT NULL,
  `dtc` varchar(255) NOT NULL,
  `purpose` varchar(255) NOT NULL,
  `no_day_att` varchar(255) NOT NULL,
  `conduct` varchar(255) NOT NULL,
  `academic_year` varchar(255) NOT NULL,
  `standard` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `first_lan` varchar(150) NOT NULL,
  `med_ins` varchar(60) NOT NULL,
  `ay_id` int(11) NOT NULL,
  `b_id` int(11) NOT NULL,
  `ss_id` int(30) NOT NULL,
  `revenueplace` varchar(55) NOT NULL,
  `schoolplace` varchar(55) NOT NULL,
  `AdiDravidar` varchar(55) NOT NULL,
  `mostbackclass` varchar(55) NOT NULL,
  `convertedclass` varchar(55) NOT NULL,
  `denoty` varchar(55) NOT NULL,
  `personmark` varchar(55) NOT NULL,
  `scholarship` varchar(55) NOT NULL,
  `scholarshipreason` varchar(55) NOT NULL,
  `medicalissue` varchar(55) NOT NULL,
  `backclass` varchar(55) NOT NULL,
  `doandclass` varchar(55) NOT NULL,
  `offer` varchar(255) NOT NULL,
  `generaleducation` varchar(255) NOT NULL,
  `vocationaleducation` varchar(255) NOT NULL,
  `Languageoffer` varchar(255) NOT NULL,
  `medicalissue_reson` varchar(255) NOT NULL,
  `cert_no` varchar(55) DEFAULT NULL,
  `reg_no` varchar(55) DEFAULT NULL,
  `tmr_no` varchar(32) DEFAULT NULL,
  `na_en` varchar(255) DEFAULT NULL,
  `tc_amount` int(11) NOT NULL,
  `date_day` varchar(16) NOT NULL,
  `date_month` varchar(16) NOT NULL,
  `date_year` varchar(16) NOT NULL,
  `status` int(11) NOT NULL DEFAULT '1',
  `cos` varchar(255) NOT NULL,
  `tc_kg_by` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `timetable`
--

CREATE TABLE `timetable` (
  `tt_id` int(10) NOT NULL,
  `d_id` int(10) NOT NULL,
  `p1` varchar(30) NOT NULL,
  `p2` varchar(30) NOT NULL,
  `p3` varchar(30) NOT NULL,
  `p4` varchar(30) NOT NULL,
  `p5` varchar(30) NOT NULL,
  `p6` varchar(30) NOT NULL,
  `p7` varchar(30) NOT NULL,
  `p8` varchar(10) NOT NULL,
  `c_id` int(10) NOT NULL,
  `s_id` int(10) NOT NULL,
  `b_id` int(10) NOT NULL,
  `ay_id` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `timetable_timing`
--

CREATE TABLE `timetable_timing` (
  `tt_id` int(11) NOT NULL,
  `s_time` varchar(120) NOT NULL,
  `duration` varchar(120) NOT NULL,
  `p_total` int(10) NOT NULL,
  `b1_time` varchar(30) NOT NULL,
  `b1_period` int(10) NOT NULL,
  `b2_time` varchar(30) NOT NULL,
  `b2_period` int(10) NOT NULL,
  `lunch_time` varchar(30) NOT NULL,
  `lunch_period1` int(10) NOT NULL,
  `ds_time` varchar(30) NOT NULL,
  `ds_period` int(10) NOT NULL,
  `c_id` int(11) NOT NULL,
  `s_id` int(11) NOT NULL,
  `b_id` int(11) NOT NULL,
  `ay_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `timetable_timing`
--

INSERT INTO `timetable_timing` (`tt_id`, `s_time`, `duration`, `p_total`, `b1_time`, `b1_period`, `b2_time`, `b2_period`, `lunch_time`, `lunch_period1`, `ds_time`, `ds_period`, `c_id`, `s_id`, `b_id`, `ay_id`) VALUES
(1, '7:30:00', '45', 10, '15', 3, '15', 0, '30', 6, '30', 10, 1, 1, 1, 7);

-- --------------------------------------------------------

--
-- Table structure for table `trbusfees`
--

CREATE TABLE `trbusfees` (
  `bf_id` int(11) NOT NULL,
  `fees` varchar(30) NOT NULL,
  `sp_fees` varchar(30) NOT NULL,
  `sp_fees_onetime` varchar(30) NOT NULL,
  `one_time` varchar(30) NOT NULL,
  `sp_id` int(11) NOT NULL,
  `r_id` int(11) NOT NULL,
  `ftyid` int(11) NOT NULL,
  `status` int(1) NOT NULL,
  `ay_id` int(11) NOT NULL,
  `start` int(11) NOT NULL,
  `end` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `trstopping`
--

CREATE TABLE `trstopping` (
  `stop_id` int(30) NOT NULL,
  `stop_name` varchar(60) NOT NULL,
  `r_id` int(11) NOT NULL,
  `ListingID` int(11) NOT NULL,
  `status` int(1) NOT NULL,
  `bustime` varchar(25) NOT NULL,
  `bustime1` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `trstopping`
--

INSERT INTO `trstopping` (`stop_id`, `stop_name`, `r_id`, `ListingID`, `status`, `bustime`, `bustime1`) VALUES
(1, 'Aundh', 0, 0, 1, '', ''),
(2, 'Baner', 0, 0, 1, '', ''),
(3, 'Balewadi', 0, 0, 1, '', '');

-- --------------------------------------------------------

--
-- Table structure for table `vehicle`
--

CREATE TABLE `vehicle` (
  `v_id` int(10) NOT NULL,
  `v_no` varchar(30) NOT NULL,
  `v_regno` varchar(60) NOT NULL,
  `v_mno` varchar(30) NOT NULL,
  `v_cname` varchar(60) NOT NULL,
  `v_capacity` varchar(10) NOT NULL,
  `vin_startdate` varchar(100) NOT NULL,
  `vin_enddate` varchar(100) NOT NULL,
  `vfc_startdate` varchar(100) NOT NULL,
  `vfc_enddate` varchar(100) NOT NULL,
  `photo` varchar(60) NOT NULL,
  `status` int(1) NOT NULL,
  `pollution_startdate` varchar(30) NOT NULL,
  `pollution_enddate` varchar(30) NOT NULL,
  `tax_startdate` varchar(30) NOT NULL,
  `tax_enddate` varchar(30) NOT NULL,
  `permit_startdate` varchar(30) NOT NULL,
  `permit_enddate` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `vehicle_trip`
--

CREATE TABLE `vehicle_trip` (
  `vt_id` int(4) NOT NULL,
  `v_id` int(4) NOT NULL,
  `r_id` varchar(100) NOT NULL,
  `v_date` varchar(100) NOT NULL,
  `start_km` varchar(100) NOT NULL,
  `end_km` varchar(100) NOT NULL,
  `fuel_fill` varchar(100) NOT NULL,
  `fuel_amount` varchar(100) NOT NULL,
  `date` varchar(20) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `visitor`
--

CREATE TABLE `visitor` (
  `id` int(11) NOT NULL,
  `name` varchar(60) NOT NULL,
  `date` varchar(30) NOT NULL,
  `i_time` varchar(20) NOT NULL,
  `o_time` varchar(20) NOT NULL,
  `reason` varchar(60) NOT NULL,
  `remark` text NOT NULL,
  `ay_id` int(11) NOT NULL,
  `mobile` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `year`
--

CREATE TABLE `year` (
  `ay_id` int(10) NOT NULL,
  `y_name` varchar(64) NOT NULL,
  `s_year` varchar(10) NOT NULL,
  `e_year` varchar(10) NOT NULL,
  `status` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `year`
--

INSERT INTO `year` (`ay_id`, `y_name`, `s_year`, `e_year`, `status`) VALUES
(1, '2011-2012', '2011', '2012', 0),
(2, '2012-2013', '2012', '2013', 0),
(3, '2013-2014', '2013', '2014', 0),
(4, '2014-2015', '2014', '2015', 0),
(5, '2015-2016', '2015', '2016', 0),
(7, '2016-2017', '2016', '2017', 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin_login`
--
ALTER TABLE `admin_login`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `admin_no_count`
--
ALTER TABLE `admin_no_count`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `advance_payment`
--
ALTER TABLE `advance_payment`
  ADD PRIMARY KEY (`adv_pay_id`);

--
-- Indexes for table `afeedback`
--
ALTER TABLE `afeedback`
  ADD PRIMARY KEY (`af_id`);

--
-- Indexes for table `agency`
--
ALTER TABLE `agency`
  ADD PRIMARY KEY (`a_id`);

--
-- Indexes for table `agency_advance`
--
ALTER TABLE `agency_advance`
  ADD PRIMARY KEY (`adv_id`);

--
-- Indexes for table `attendance`
--
ALTER TABLE `attendance`
  ADD PRIMARY KEY (`att_id`);

--
-- Indexes for table `bank_account`
--
ALTER TABLE `bank_account`
  ADD PRIMARY KEY (`ba_id`);

--
-- Indexes for table `bank_deposit`
--
ALTER TABLE `bank_deposit`
  ADD PRIMARY KEY (`bc_id`);

--
-- Indexes for table `bank_withdrawl`
--
ALTER TABLE `bank_withdrawl`
  ADD PRIMARY KEY (`bc_id`);

--
-- Indexes for table `battendance`
--
ALTER TABLE `battendance`
  ADD PRIMARY KEY (`att_id`);

--
-- Indexes for table `bfinvoice`
--
ALTER TABLE `bfinvoice`
  ADD PRIMARY KEY (`bfi_id`);

--
-- Indexes for table `bfinvoice_no`
--
ALTER TABLE `bfinvoice_no`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `board`
--
ALTER TABLE `board`
  ADD PRIMARY KEY (`b_id`);

--
-- Indexes for table `bonafide`
--
ALTER TABLE `bonafide`
  ADD PRIMARY KEY (`b_id`);

--
-- Indexes for table `book`
--
ALTER TABLE `book`
  ADD PRIMARY KEY (`b_id`);

--
-- Indexes for table `busfees`
--
ALTER TABLE `busfees`
  ADD PRIMARY KEY (`bf_id`);

--
-- Indexes for table `bustiming`
--
ALTER TABLE `bustiming`
  ADD PRIMARY KEY (`btime_id`);

--
-- Indexes for table `cash`
--
ALTER TABLE `cash`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cashier_report`
--
ALTER TABLE `cashier_report`
  ADD PRIMARY KEY (`report_id`);

--
-- Indexes for table `certificate_count`
--
ALTER TABLE `certificate_count`
  ADD PRIMARY KEY (`cc_id`);

--
-- Indexes for table `circular`
--
ALTER TABLE `circular`
  ADD PRIMARY KEY (`cl_id`);

--
-- Indexes for table `circular_ref_count`
--
ALTER TABLE `circular_ref_count`
  ADD PRIMARY KEY (`crc_id`);

--
-- Indexes for table `class`
--
ALTER TABLE `class`
  ADD PRIMARY KEY (`c_id`);

--
-- Indexes for table `classtest`
--
ALTER TABLE `classtest`
  ADD PRIMARY KEY (`ct_id`);

--
-- Indexes for table `community`
--
ALTER TABLE `community`
  ADD PRIMARY KEY (`com_id`);

--
-- Indexes for table `conduct`
--
ALTER TABLE `conduct`
  ADD PRIMARY KEY (`con_id`);

--
-- Indexes for table `contact`
--
ALTER TABLE `contact`
  ADD PRIMARY KEY (`ct_id`);

--
-- Indexes for table `courier`
--
ALTER TABLE `courier`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `c_attend`
--
ALTER TABLE `c_attend`
  ADD PRIMARY KEY (`catt_id`);

--
-- Indexes for table `day`
--
ALTER TABLE `day`
  ADD PRIMARY KEY (`d_id`);

--
-- Indexes for table `discount`
--
ALTER TABLE `discount`
  ADD PRIMARY KEY (`d_id`);

--
-- Indexes for table `discount_others`
--
ALTER TABLE `discount_others`
  ADD PRIMARY KEY (`d_id`);

--
-- Indexes for table `discount_value`
--
ALTER TABLE `discount_value`
  ADD PRIMARY KEY (`dv_id`);

--
-- Indexes for table `discount_value_others`
--
ALTER TABLE `discount_value_others`
  ADD PRIMARY KEY (`dv_id`);

--
-- Indexes for table `driver`
--
ALTER TABLE `driver`
  ADD PRIMARY KEY (`d_id`);

--
-- Indexes for table `driver_no_count`
--
ALTER TABLE `driver_no_count`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `evenement`
--
ALTER TABLE `evenement`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `event`
--
ALTER TABLE `event`
  ADD PRIMARY KEY (`ev_id`);

--
-- Indexes for table `event_type`
--
ALTER TABLE `event_type`
  ADD PRIMARY KEY (`et_id`);

--
-- Indexes for table `exam`
--
ALTER TABLE `exam`
  ADD PRIMARY KEY (`e_id`);

--
-- Indexes for table `examtimetable`
--
ALTER TABLE `examtimetable`
  ADD PRIMARY KEY (`ett_id`);

--
-- Indexes for table `expense_po_amount`
--
ALTER TABLE `expense_po_amount`
  ADD PRIMARY KEY (`ep_id`);

--
-- Indexes for table `experience_certificate`
--
ALTER TABLE `experience_certificate`
  ADD PRIMARY KEY (`e_id`);

--
-- Indexes for table `exponses`
--
ALTER TABLE `exponses`
  ADD PRIMARY KEY (`ex_id`);

--
-- Indexes for table `exponses_bill`
--
ALTER TABLE `exponses_bill`
  ADD PRIMARY KEY (`ep_id`);

--
-- Indexes for table `exponses_bill_summary`
--
ALTER TABLE `exponses_bill_summary`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `exp_allowance`
--
ALTER TABLE `exp_allowance`
  ADD PRIMARY KEY (`d_id`);

--
-- Indexes for table `exp_allowance_count`
--
ALTER TABLE `exp_allowance_count`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `extraperoid`
--
ALTER TABLE `extraperoid`
  ADD PRIMARY KEY (`ep_id`);

--
-- Indexes for table `ex_category`
--
ALTER TABLE `ex_category`
  ADD PRIMARY KEY (`exc_id`);

--
-- Indexes for table `ex_insubcategory`
--
ALTER TABLE `ex_insubcategory`
  ADD PRIMARY KEY (`exs_id`);

--
-- Indexes for table `ex_subcategory`
--
ALTER TABLE `ex_subcategory`
  ADD PRIMARY KEY (`exs_id`),
  ADD KEY `exs_id` (`exs_id`);

--
-- Indexes for table `fdiscount`
--
ALTER TABLE `fdiscount`
  ADD PRIMARY KEY (`fdis_id`);

--
-- Indexes for table `feedback`
--
ALTER TABLE `feedback`
  ADD PRIMARY KEY (`f_id`);

--
-- Indexes for table `feescollection`
--
ALTER TABLE `feescollection`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `feescollection_child`
--
ALTER TABLE `feescollection_child`
  ADD PRIMARY KEY (`child_id`);

--
-- Indexes for table `fgroup`
--
ALTER TABLE `fgroup`
  ADD PRIMARY KEY (`fg_id`);

--
-- Indexes for table `fgroup_detail`
--
ALTER TABLE `fgroup_detail`
  ADD PRIMARY KEY (`fgd_id`);

--
-- Indexes for table `finvoice`
--
ALTER TABLE `finvoice`
  ADD PRIMARY KEY (`fi_id`);

--
-- Indexes for table `finvoice_no`
--
ALTER TABLE `finvoice_no`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `finvoice_no_others`
--
ALTER TABLE `finvoice_no_others`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `finvoice_others`
--
ALTER TABLE `finvoice_others`
  ADD PRIMARY KEY (`fi_id`);

--
-- Indexes for table `frate`
--
ALTER TABLE `frate`
  ADD PRIMARY KEY (`fr_id`);

--
-- Indexes for table `frate_value`
--
ALTER TABLE `frate_value`
  ADD PRIMARY KEY (`frv_id`);

--
-- Indexes for table `fsalessumarry`
--
ALTER TABLE `fsalessumarry`
  ADD PRIMARY KEY (`fss_id`);

--
-- Indexes for table `ftype`
--
ALTER TABLE `ftype`
  ADD PRIMARY KEY (`fty_id`);

--
-- Indexes for table `hms_cash_deposit`
--
ALTER TABLE `hms_cash_deposit`
  ADD PRIMARY KEY (`hcd_id`);

--
-- Indexes for table `hms_category`
--
ALTER TABLE `hms_category`
  ADD PRIMARY KEY (`h_id`);

--
-- Indexes for table `hms_feestype`
--
ALTER TABLE `hms_feestype`
  ADD PRIMARY KEY (`hft_id`);

--
-- Indexes for table `hms_fees_structure`
--
ALTER TABLE `hms_fees_structure`
  ADD PRIMARY KEY (`hfs_id`);

--
-- Indexes for table `hms_floor`
--
ALTER TABLE `hms_floor`
  ADD PRIMARY KEY (`hf_id`);

--
-- Indexes for table `hms_hinvoice`
--
ALTER TABLE `hms_hinvoice`
  ADD PRIMARY KEY (`hin_id`);

--
-- Indexes for table `hms_hinvoice_sumarry`
--
ALTER TABLE `hms_hinvoice_sumarry`
  ADD PRIMARY KEY (`ibs_id`);

--
-- Indexes for table `hms_invoice_no`
--
ALTER TABLE `hms_invoice_no`
  ADD PRIMARY KEY (`hin_id`);

--
-- Indexes for table `hms_room`
--
ALTER TABLE `hms_room`
  ADD PRIMARY KEY (`hr_id`);

--
-- Indexes for table `hms_room_cart`
--
ALTER TABLE `hms_room_cart`
  ADD PRIMARY KEY (`hrc_id`),
  ADD UNIQUE KEY `unique_index` (`hr_id`,`cart_name`);

--
-- Indexes for table `hms_room_type`
--
ALTER TABLE `hms_room_type`
  ADD PRIMARY KEY (`hrt_id`);

--
-- Indexes for table `hms_staff_room`
--
ALTER TABLE `hms_staff_room`
  ADD PRIMARY KEY (`hsr_id`);

--
-- Indexes for table `hms_studentcash_amount`
--
ALTER TABLE `hms_studentcash_amount`
  ADD PRIMARY KEY (`hsca_id`);

--
-- Indexes for table `hms_studentflow_room`
--
ALTER TABLE `hms_studentflow_room`
  ADD PRIMARY KEY (`hsfr_id`);

--
-- Indexes for table `hms_student_changeroom`
--
ALTER TABLE `hms_student_changeroom`
  ADD PRIMARY KEY (`hscr_id`);

--
-- Indexes for table `hms_student_room`
--
ALTER TABLE `hms_student_room`
  ADD PRIMARY KEY (`hsr_id`);

--
-- Indexes for table `hms_worker`
--
ALTER TABLE `hms_worker`
  ADD PRIMARY KEY (`hw_id`);

--
-- Indexes for table `homework`
--
ALTER TABLE `homework`
  ADD PRIMARY KEY (`h_id`);

--
-- Indexes for table `homework_status`
--
ALTER TABLE `homework_status`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `income`
--
ALTER TABLE `income`
  ADD PRIMARY KEY (`in_id`),
  ADD UNIQUE KEY `in_id` (`in_id`);

--
-- Indexes for table `invoice`
--
ALTER TABLE `invoice`
  ADD PRIMARY KEY (`i_id`);

--
-- Indexes for table `invoice_no`
--
ALTER TABLE `invoice_no`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `inv_brand`
--
ALTER TABLE `inv_brand`
  ADD PRIMARY KEY (`brand_id`);

--
-- Indexes for table `inv_brand_items`
--
ALTER TABLE `inv_brand_items`
  ADD PRIMARY KEY (`bi_id`);

--
-- Indexes for table `inv_category`
--
ALTER TABLE `inv_category`
  ADD PRIMARY KEY (`cat_id`);

--
-- Indexes for table `inv_combo`
--
ALTER TABLE `inv_combo`
  ADD PRIMARY KEY (`com_id`);

--
-- Indexes for table `inv_combo_parent`
--
ALTER TABLE `inv_combo_parent`
  ADD PRIMARY KEY (`com_parent_id`);

--
-- Indexes for table `inv_items`
--
ALTER TABLE `inv_items`
  ADD PRIMARY KEY (`item_id`);

--
-- Indexes for table `inv_material`
--
ALTER TABLE `inv_material`
  ADD PRIMARY KEY (`mat_id`);

--
-- Indexes for table `inv_material_combo_child`
--
ALTER TABLE `inv_material_combo_child`
  ADD PRIMARY KEY (`mat_com_child_id`);

--
-- Indexes for table `inv_material_combo_parent`
--
ALTER TABLE `inv_material_combo_parent`
  ADD PRIMARY KEY (`mat_com_id`);

--
-- Indexes for table `inv_material_parent`
--
ALTER TABLE `inv_material_parent`
  ADD PRIMARY KEY (`mat_parent_id`);

--
-- Indexes for table `inv_material_payment`
--
ALTER TABLE `inv_material_payment`
  ADD PRIMARY KEY (`mat_pay_id`);

--
-- Indexes for table `inv_purchase`
--
ALTER TABLE `inv_purchase`
  ADD PRIMARY KEY (`pur_id`);

--
-- Indexes for table `inv_purchase_mode`
--
ALTER TABLE `inv_purchase_mode`
  ADD PRIMARY KEY (`mode_id`);

--
-- Indexes for table `inv_purchase_parent`
--
ALTER TABLE `inv_purchase_parent`
  ADD PRIMARY KEY (`pur_parent_id`);

--
-- Indexes for table `inv_settings`
--
ALTER TABLE `inv_settings`
  ADD PRIMARY KEY (`set_id`);

--
-- Indexes for table `inv_uom`
--
ALTER TABLE `inv_uom`
  ADD PRIMARY KEY (`uom_id`);

--
-- Indexes for table `in_category`
--
ALTER TABLE `in_category`
  ADD PRIMARY KEY (`inc_id`),
  ADD KEY `inc_id` (`inc_id`),
  ADD KEY `inc_id_2` (`inc_id`);

--
-- Indexes for table `leavetype`
--
ALTER TABLE `leavetype`
  ADD PRIMARY KEY (`lt_id`);

--
-- Indexes for table `letter_pad`
--
ALTER TABLE `letter_pad`
  ADD PRIMARY KEY (`l_id`);

--
-- Indexes for table `lms_binvoice`
--
ALTER TABLE `lms_binvoice`
  ADD PRIMARY KEY (`bin_id`);

--
-- Indexes for table `lms_binvoice_sumarry`
--
ALTER TABLE `lms_binvoice_sumarry`
  ADD PRIMARY KEY (`ibs_id`);

--
-- Indexes for table `lms_book`
--
ALTER TABLE `lms_book`
  ADD PRIMARY KEY (`b_id`);

--
-- Indexes for table `lms_book_renew`
--
ALTER TABLE `lms_book_renew`
  ADD PRIMARY KEY (`lbr_id`);

--
-- Indexes for table `lms_book_snumber`
--
ALTER TABLE `lms_book_snumber`
  ADD PRIMARY KEY (`ibs_id`);

--
-- Indexes for table `lms_category`
--
ALTER TABLE `lms_category`
  ADD PRIMARY KEY (`c_id`);

--
-- Indexes for table `lms_lostbooks`
--
ALTER TABLE `lms_lostbooks`
  ADD PRIMARY KEY (`lb_id`);

--
-- Indexes for table `lms_staff_borrowbook`
--
ALTER TABLE `lms_staff_borrowbook`
  ADD PRIMARY KEY (`sfb_id`);

--
-- Indexes for table `lms_student_borrowbook`
--
ALTER TABLE `lms_student_borrowbook`
  ADD PRIMARY KEY (`sb_id`);

--
-- Indexes for table `lms_student_fineamount`
--
ALTER TABLE `lms_student_fineamount`
  ADD PRIMARY KEY (`f_id`);

--
-- Indexes for table `mfgroup`
--
ALTER TABLE `mfgroup`
  ADD PRIMARY KEY (`fg_id`);

--
-- Indexes for table `mfgroup_detail`
--
ALTER TABLE `mfgroup_detail`
  ADD PRIMARY KEY (`fgd_id`);

--
-- Indexes for table `mfinvoice`
--
ALTER TABLE `mfinvoice`
  ADD PRIMARY KEY (`fi_id`);

--
-- Indexes for table `mfinvoice_no`
--
ALTER TABLE `mfinvoice_no`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mfrate`
--
ALTER TABLE `mfrate`
  ADD PRIMARY KEY (`fr_id`);

--
-- Indexes for table `mfrate_value`
--
ALTER TABLE `mfrate_value`
  ADD PRIMARY KEY (`frv_id`);

--
-- Indexes for table `mfsalessumarry`
--
ALTER TABLE `mfsalessumarry`
  ADD PRIMARY KEY (`fss_id`);

--
-- Indexes for table `mobile_sms`
--
ALTER TABLE `mobile_sms`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mobile_sms_specific`
--
ALTER TABLE `mobile_sms_specific`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `month`
--
ALTER TABLE `month`
  ADD PRIMARY KEY (`m_id`);

--
-- Indexes for table `mpaydiscount`
--
ALTER TABLE `mpaydiscount`
  ADD PRIMARY KEY (`mpd_id`);

--
-- Indexes for table `news`
--
ALTER TABLE `news`
  ADD PRIMARY KEY (`n_id`);

--
-- Indexes for table `notebook_purchese`
--
ALTER TABLE `notebook_purchese`
  ADD PRIMARY KEY (`n_id`);

--
-- Indexes for table `others`
--
ALTER TABLE `others`
  ADD PRIMARY KEY (`o_id`);

--
-- Indexes for table `others_bill_all`
--
ALTER TABLE `others_bill_all`
  ADD PRIMARY KEY (`others_id`);

--
-- Indexes for table `others_category`
--
ALTER TABLE `others_category`
  ADD PRIMARY KEY (`oc_id`);

--
-- Indexes for table `parent`
--
ALTER TABLE `parent`
  ADD PRIMARY KEY (`p_id`);

--
-- Indexes for table `permission`
--
ALTER TABLE `permission`
  ADD PRIMARY KEY (`p_id`);

--
-- Indexes for table `pre_admission`
--
ALTER TABLE `pre_admission`
  ADD PRIMARY KEY (`pa_id`);

--
-- Indexes for table `pre_admission_advance`
--
ALTER TABLE `pre_admission_advance`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `promotion`
--
ALTER TABLE `promotion`
  ADD PRIMARY KEY (`po_id`);

--
-- Indexes for table `quotation`
--
ALTER TABLE `quotation`
  ADD PRIMARY KEY (`q_id`);

--
-- Indexes for table `quotation_amount`
--
ALTER TABLE `quotation_amount`
  ADD PRIMARY KEY (`qa_id`);

--
-- Indexes for table `rankcard_status`
--
ALTER TABLE `rankcard_status`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `report_temp`
--
ALTER TABLE `report_temp`
  ADD PRIMARY KEY (`t_id`);

--
-- Indexes for table `result`
--
ALTER TABLE `result`
  ADD PRIMARY KEY (`r_id`);

--
-- Indexes for table `route`
--
ALTER TABLE `route`
  ADD PRIMARY KEY (`r_id`);

--
-- Indexes for table `salary`
--
ALTER TABLE `salary`
  ADD PRIMARY KEY (`sy_id`);

--
-- Indexes for table `salessumarry`
--
ALTER TABLE `salessumarry`
  ADD PRIMARY KEY (`sa_id`);

--
-- Indexes for table `samacheer_itox`
--
ALTER TABLE `samacheer_itox`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `samacheer_x`
--
ALTER TABLE `samacheer_x`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sattendance`
--
ALTER TABLE `sattendance`
  ADD PRIMARY KEY (`satt_id`);

--
-- Indexes for table `school_name`
--
ALTER TABLE `school_name`
  ADD PRIMARY KEY (`sc_id`);

--
-- Indexes for table `section`
--
ALTER TABLE `section`
  ADD PRIMARY KEY (`s_id`);

--
-- Indexes for table `service`
--
ALTER TABLE `service`
  ADD PRIMARY KEY (`se_id`);

--
-- Indexes for table `sfeedback`
--
ALTER TABLE `sfeedback`
  ADD PRIMARY KEY (`sf_id`);

--
-- Indexes for table `sibling`
--
ALTER TABLE `sibling`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ssfeedback`
--
ALTER TABLE `ssfeedback`
  ADD PRIMARY KEY (`ssf_id`);

--
-- Indexes for table `staff`
--
ALTER TABLE `staff`
  ADD PRIMARY KEY (`st_id`);

--
-- Indexes for table `staff_advance`
--
ALTER TABLE `staff_advance`
  ADD PRIMARY KEY (`a_id`);

--
-- Indexes for table `staff_allw_ded`
--
ALTER TABLE `staff_allw_ded`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `staff_daily_salary`
--
ALTER TABLE `staff_daily_salary`
  ADD PRIMARY KEY (`st_ms_id`);

--
-- Indexes for table `staff_daily_salary_summary`
--
ALTER TABLE `staff_daily_salary_summary`
  ADD PRIMARY KEY (`sum_id`);

--
-- Indexes for table `staff_deduction`
--
ALTER TABLE `staff_deduction`
  ADD PRIMARY KEY (`sd_id`);

--
-- Indexes for table `staff_ded_detail`
--
ALTER TABLE `staff_ded_detail`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `staff_leave`
--
ALTER TABLE `staff_leave`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `staff_leave_y`
--
ALTER TABLE `staff_leave_y`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `staff_loan`
--
ALTER TABLE `staff_loan`
  ADD PRIMARY KEY (`l_id`);

--
-- Indexes for table `staff_loan_pay`
--
ALTER TABLE `staff_loan_pay`
  ADD PRIMARY KEY (`lp_id`);

--
-- Indexes for table `staff_loan_type`
--
ALTER TABLE `staff_loan_type`
  ADD PRIMARY KEY (`lt_id`);

--
-- Indexes for table `staff_mcontribution`
--
ALTER TABLE `staff_mcontribution`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `staff_month_salary`
--
ALTER TABLE `staff_month_salary`
  ADD PRIMARY KEY (`st_ms_id`);

--
-- Indexes for table `staff_month_salary_summary`
--
ALTER TABLE `staff_month_salary_summary`
  ADD PRIMARY KEY (`sum_id`);

--
-- Indexes for table `staff_no_count`
--
ALTER TABLE `staff_no_count`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `staff_salary`
--
ALTER TABLE `staff_salary`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `staff_salary_report`
--
ALTER TABLE `staff_salary_report`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `stopping`
--
ALTER TABLE `stopping`
  ADD PRIMARY KEY (`sp_id`);

--
-- Indexes for table `student`
--
ALTER TABLE `student`
  ADD PRIMARY KEY (`ss_id`);

--
-- Indexes for table `subadmin_accesspage`
--
ALTER TABLE `subadmin_accesspage`
  ADD PRIMARY KEY (`sa_id`);

--
-- Indexes for table `subject`
--
ALTER TABLE `subject`
  ADD PRIMARY KEY (`sub_id`);

--
-- Indexes for table `subjectlist`
--
ALTER TABLE `subjectlist`
  ADD PRIMARY KEY (`sl_id`);

--
-- Indexes for table `syllabus`
--
ALTER TABLE `syllabus`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `syllabus_assign`
--
ALTER TABLE `syllabus_assign`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `syllabus_covered`
--
ALTER TABLE `syllabus_covered`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tc_icse`
--
ALTER TABLE `tc_icse`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tc_no`
--
ALTER TABLE `tc_no`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tc_xi`
--
ALTER TABLE `tc_xi`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tc_xi_kg`
--
ALTER TABLE `tc_xi_kg`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `timetable`
--
ALTER TABLE `timetable`
  ADD PRIMARY KEY (`tt_id`);

--
-- Indexes for table `timetable_timing`
--
ALTER TABLE `timetable_timing`
  ADD PRIMARY KEY (`tt_id`);

--
-- Indexes for table `trbusfees`
--
ALTER TABLE `trbusfees`
  ADD PRIMARY KEY (`bf_id`);

--
-- Indexes for table `trstopping`
--
ALTER TABLE `trstopping`
  ADD PRIMARY KEY (`stop_id`);

--
-- Indexes for table `vehicle`
--
ALTER TABLE `vehicle`
  ADD PRIMARY KEY (`v_id`);

--
-- Indexes for table `vehicle_trip`
--
ALTER TABLE `vehicle_trip`
  ADD PRIMARY KEY (`vt_id`);

--
-- Indexes for table `visitor`
--
ALTER TABLE `visitor`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `year`
--
ALTER TABLE `year`
  ADD PRIMARY KEY (`ay_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin_login`
--
ALTER TABLE `admin_login`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `admin_no_count`
--
ALTER TABLE `admin_no_count`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `advance_payment`
--
ALTER TABLE `advance_payment`
  MODIFY `adv_pay_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `afeedback`
--
ALTER TABLE `afeedback`
  MODIFY `af_id` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `agency`
--
ALTER TABLE `agency`
  MODIFY `a_id` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `agency_advance`
--
ALTER TABLE `agency_advance`
  MODIFY `adv_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `attendance`
--
ALTER TABLE `attendance`
  MODIFY `att_id` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `bank_account`
--
ALTER TABLE `bank_account`
  MODIFY `ba_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `bank_deposit`
--
ALTER TABLE `bank_deposit`
  MODIFY `bc_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `bank_withdrawl`
--
ALTER TABLE `bank_withdrawl`
  MODIFY `bc_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `battendance`
--
ALTER TABLE `battendance`
  MODIFY `att_id` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `bfinvoice`
--
ALTER TABLE `bfinvoice`
  MODIFY `bfi_id` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `bfinvoice_no`
--
ALTER TABLE `bfinvoice_no`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `board`
--
ALTER TABLE `board`
  MODIFY `b_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `bonafide`
--
ALTER TABLE `bonafide`
  MODIFY `b_id` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `book`
--
ALTER TABLE `book`
  MODIFY `b_id` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `busfees`
--
ALTER TABLE `busfees`
  MODIFY `bf_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `bustiming`
--
ALTER TABLE `bustiming`
  MODIFY `btime_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `cash`
--
ALTER TABLE `cash`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `cashier_report`
--
ALTER TABLE `cashier_report`
  MODIFY `report_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `certificate_count`
--
ALTER TABLE `certificate_count`
  MODIFY `cc_id` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `circular`
--
ALTER TABLE `circular`
  MODIFY `cl_id` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `circular_ref_count`
--
ALTER TABLE `circular_ref_count`
  MODIFY `crc_id` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `class`
--
ALTER TABLE `class`
  MODIFY `c_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `classtest`
--
ALTER TABLE `classtest`
  MODIFY `ct_id` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `community`
--
ALTER TABLE `community`
  MODIFY `com_id` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `conduct`
--
ALTER TABLE `conduct`
  MODIFY `con_id` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `contact`
--
ALTER TABLE `contact`
  MODIFY `ct_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `courier`
--
ALTER TABLE `courier`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `c_attend`
--
ALTER TABLE `c_attend`
  MODIFY `catt_id` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `day`
--
ALTER TABLE `day`
  MODIFY `d_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `discount`
--
ALTER TABLE `discount`
  MODIFY `d_id` int(30) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `discount_others`
--
ALTER TABLE `discount_others`
  MODIFY `d_id` int(30) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `discount_value`
--
ALTER TABLE `discount_value`
  MODIFY `dv_id` int(30) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `discount_value_others`
--
ALTER TABLE `discount_value_others`
  MODIFY `dv_id` int(30) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `driver`
--
ALTER TABLE `driver`
  MODIFY `d_id` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `driver_no_count`
--
ALTER TABLE `driver_no_count`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `evenement`
--
ALTER TABLE `evenement`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `event`
--
ALTER TABLE `event`
  MODIFY `ev_id` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `event_type`
--
ALTER TABLE `event_type`
  MODIFY `et_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `exam`
--
ALTER TABLE `exam`
  MODIFY `e_id` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `examtimetable`
--
ALTER TABLE `examtimetable`
  MODIFY `ett_id` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `expense_po_amount`
--
ALTER TABLE `expense_po_amount`
  MODIFY `ep_id` int(30) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `experience_certificate`
--
ALTER TABLE `experience_certificate`
  MODIFY `e_id` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `exponses`
--
ALTER TABLE `exponses`
  MODIFY `ex_id` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `exponses_bill`
--
ALTER TABLE `exponses_bill`
  MODIFY `ep_id` int(30) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `exponses_bill_summary`
--
ALTER TABLE `exponses_bill_summary`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `exp_allowance`
--
ALTER TABLE `exp_allowance`
  MODIFY `d_id` int(4) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `exp_allowance_count`
--
ALTER TABLE `exp_allowance_count`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `extraperoid`
--
ALTER TABLE `extraperoid`
  MODIFY `ep_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `ex_category`
--
ALTER TABLE `ex_category`
  MODIFY `exc_id` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `ex_insubcategory`
--
ALTER TABLE `ex_insubcategory`
  MODIFY `exs_id` int(4) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `ex_subcategory`
--
ALTER TABLE `ex_subcategory`
  MODIFY `exs_id` int(4) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `fdiscount`
--
ALTER TABLE `fdiscount`
  MODIFY `fdis_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `feedback`
--
ALTER TABLE `feedback`
  MODIFY `f_id` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `feescollection`
--
ALTER TABLE `feescollection`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `feescollection_child`
--
ALTER TABLE `feescollection_child`
  MODIFY `child_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `fgroup`
--
ALTER TABLE `fgroup`
  MODIFY `fg_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `fgroup_detail`
--
ALTER TABLE `fgroup_detail`
  MODIFY `fgd_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `finvoice`
--
ALTER TABLE `finvoice`
  MODIFY `fi_id` int(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `finvoice_no`
--
ALTER TABLE `finvoice_no`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `finvoice_no_others`
--
ALTER TABLE `finvoice_no_others`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `finvoice_others`
--
ALTER TABLE `finvoice_others`
  MODIFY `fi_id` int(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `frate`
--
ALTER TABLE `frate`
  MODIFY `fr_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `frate_value`
--
ALTER TABLE `frate_value`
  MODIFY `frv_id` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `fsalessumarry`
--
ALTER TABLE `fsalessumarry`
  MODIFY `fss_id` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `ftype`
--
ALTER TABLE `ftype`
  MODIFY `fty_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `hms_cash_deposit`
--
ALTER TABLE `hms_cash_deposit`
  MODIFY `hcd_id` int(4) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `hms_category`
--
ALTER TABLE `hms_category`
  MODIFY `h_id` int(4) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `hms_feestype`
--
ALTER TABLE `hms_feestype`
  MODIFY `hft_id` int(4) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `hms_fees_structure`
--
ALTER TABLE `hms_fees_structure`
  MODIFY `hfs_id` int(4) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `hms_floor`
--
ALTER TABLE `hms_floor`
  MODIFY `hf_id` int(4) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `hms_hinvoice`
--
ALTER TABLE `hms_hinvoice`
  MODIFY `hin_id` int(4) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `hms_hinvoice_sumarry`
--
ALTER TABLE `hms_hinvoice_sumarry`
  MODIFY `ibs_id` int(4) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `hms_invoice_no`
--
ALTER TABLE `hms_invoice_no`
  MODIFY `hin_id` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `hms_room`
--
ALTER TABLE `hms_room`
  MODIFY `hr_id` int(4) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `hms_room_cart`
--
ALTER TABLE `hms_room_cart`
  MODIFY `hrc_id` int(4) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `hms_room_type`
--
ALTER TABLE `hms_room_type`
  MODIFY `hrt_id` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `hms_staff_room`
--
ALTER TABLE `hms_staff_room`
  MODIFY `hsr_id` int(4) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `hms_studentcash_amount`
--
ALTER TABLE `hms_studentcash_amount`
  MODIFY `hsca_id` int(4) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `hms_studentflow_room`
--
ALTER TABLE `hms_studentflow_room`
  MODIFY `hsfr_id` int(4) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `hms_student_changeroom`
--
ALTER TABLE `hms_student_changeroom`
  MODIFY `hscr_id` int(4) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `hms_student_room`
--
ALTER TABLE `hms_student_room`
  MODIFY `hsr_id` int(4) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `hms_worker`
--
ALTER TABLE `hms_worker`
  MODIFY `hw_id` int(4) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `homework`
--
ALTER TABLE `homework`
  MODIFY `h_id` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `homework_status`
--
ALTER TABLE `homework_status`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `income`
--
ALTER TABLE `income`
  MODIFY `in_id` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `invoice`
--
ALTER TABLE `invoice`
  MODIFY `i_id` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `invoice_no`
--
ALTER TABLE `invoice_no`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `inv_brand`
--
ALTER TABLE `inv_brand`
  MODIFY `brand_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `inv_brand_items`
--
ALTER TABLE `inv_brand_items`
  MODIFY `bi_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `inv_category`
--
ALTER TABLE `inv_category`
  MODIFY `cat_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `inv_combo`
--
ALTER TABLE `inv_combo`
  MODIFY `com_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `inv_combo_parent`
--
ALTER TABLE `inv_combo_parent`
  MODIFY `com_parent_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `inv_items`
--
ALTER TABLE `inv_items`
  MODIFY `item_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `inv_material`
--
ALTER TABLE `inv_material`
  MODIFY `mat_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `inv_material_combo_child`
--
ALTER TABLE `inv_material_combo_child`
  MODIFY `mat_com_child_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `inv_material_combo_parent`
--
ALTER TABLE `inv_material_combo_parent`
  MODIFY `mat_com_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `inv_material_parent`
--
ALTER TABLE `inv_material_parent`
  MODIFY `mat_parent_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `inv_material_payment`
--
ALTER TABLE `inv_material_payment`
  MODIFY `mat_pay_id` int(11) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
