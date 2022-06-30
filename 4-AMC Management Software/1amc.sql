-- phpMyAdmin SQL Dump
-- version 4.7.3
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Dec 30, 2017 at 03:54 PM
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
-- Database: `tammanag_amc`
--

-- --------------------------------------------------------

--
-- Table structure for table `category_master`
--

CREATE TABLE `category_master` (
  `cat_id` int(11) NOT NULL,
  `type` varchar(100) NOT NULL,
  `title` varchar(100) NOT NULL,
  `status` int(11) DEFAULT '1',
  `created_date` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `create_by` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `international_code`
--

CREATE TABLE `international_code` (
  `code_id` int(11) NOT NULL,
  `code_title` varchar(255) DEFAULT NULL,
  `created_date` date DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `myguests`
--

CREATE TABLE `myguests` (
  `id` int(6) UNSIGNED NOT NULL,
  `firstname` varchar(30) NOT NULL,
  `lastname` varchar(30) NOT NULL,
  `email` varchar(50) DEFAULT NULL,
  `reg_date` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `quatation_account_tax`
--

CREATE TABLE `quatation_account_tax` (
  `id` int(11) NOT NULL,
  `quation_id` int(11) NOT NULL,
  `tax_name` varchar(255) NOT NULL,
  `tax` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `sale_account_tax`
--

CREATE TABLE `sale_account_tax` (
  `id` int(11) NOT NULL,
  `sale_id` int(11) NOT NULL,
  `tax_name` varchar(255) NOT NULL,
  `tax` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `supplier_international_detail`
--

CREATE TABLE `supplier_international_detail` (
  `detail_id` int(11) NOT NULL,
  `code_id` int(11) DEFAULT NULL,
  `supplier_id` int(11) DEFAULT NULL,
  `detail` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tble_setting`
--

CREATE TABLE `tble_setting` (
  `id` int(11) NOT NULL,
  `title_name` varchar(255) NOT NULL,
  `icon` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL,
  `year` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `logo` varchar(255) NOT NULL,
  `cover_profile` varchar(255) NOT NULL,
  `countries` varchar(255) NOT NULL,
  `dateformate` varchar(255) NOT NULL DEFAULT 'd-m-y',
  `mail_send` int(11) DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tble_setting`
--

INSERT INTO `tble_setting` (`id`, `title_name`, `icon`, `address`, `year`, `email`, `logo`, `cover_profile`, `countries`, `dateformate`, `mail_send`) VALUES
(10, 'Tmc Annual Maintenance Contract Management System', 'favicon.ico', 'kjdbcjkbd', '2017', 'admin@admin.com', 'logo_1513064305.png', 'benner_image.png', 'AF', 'd-m-y', 1);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_accessright`
--

CREATE TABLE `tbl_accessright` (
  `id` int(11) NOT NULL,
  `menu_name` varchar(255) NOT NULL,
  `employee` int(11) NOT NULL,
  `client` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_accessright`
--

INSERT INTO `tbl_accessright` (`id`, `menu_name`, `employee`, `client`) VALUES
(1, 'supplier', 1, 0),
(2, 'company', 0, 0),
(3, 'product', 0, 0),
(4, 'purchase', 0, 0),
(5, 'stoke', 0, 0),
(6, 'client', 1, 1),
(7, 'employee', 1, 0),
(8, 'quotation', 1, 1),
(9, 'sales', 1, 1),
(10, 'invoice', 0, 0),
(11, 'amc', 1, 1),
(12, 'complaint', 1, 1),
(13, 'service', 1, 0),
(14, 'task', 1, 0),
(15, 'expenses', 0, 0),
(16, 'income', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_account_tax_rates`
--

CREATE TABLE `tbl_account_tax_rates` (
  `id` int(11) NOT NULL,
  `acount_tax_name` varchar(255) NOT NULL,
  `tax` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_amc`
--

CREATE TABLE `tbl_amc` (
  `amc_id` int(11) NOT NULL,
  `amc_no` varchar(50) NOT NULL,
  `date` date NOT NULL,
  `contact_person` varchar(100) NOT NULL,
  `assign_to_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `mobile` varchar(20) NOT NULL,
  `email` varchar(100) NOT NULL,
  `status` varchar(100) NOT NULL,
  `attachment` varchar(150) NOT NULL,
  `subject` text NOT NULL,
  `address` text NOT NULL,
  `is_appove` int(11) NOT NULL DEFAULT '0',
  `employee_status` int(11) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_amc_history`
--

CREATE TABLE `tbl_amc_history` (
  `amc_h_id` int(11) NOT NULL,
  `amc_id` int(11) NOT NULL,
  `item_name` int(11) NOT NULL,
  `note` text NOT NULL,
  `create_date` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_client_history`
--

CREATE TABLE `tbl_client_history` (
  `id` int(11) NOT NULL,
  `client_id` int(11) NOT NULL,
  `contact_name` varchar(255) NOT NULL,
  `mobile` varchar(255) NOT NULL,
  `designation` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_company`
--

CREATE TABLE `tbl_company` (
  `company_id` int(11) NOT NULL,
  `company_idf` varchar(50) NOT NULL,
  `company_name` varchar(100) NOT NULL,
  `company_address` text NOT NULL,
  `city` varchar(50) NOT NULL,
  `state` varchar(50) NOT NULL,
  `pincode` varchar(50) NOT NULL,
  `mobile_no` varchar(50) NOT NULL,
  `alt_mobile` int(11) NOT NULL,
  `phone` varchar(50) NOT NULL,
  `email` varchar(100) NOT NULL,
  `photo` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_company_detail`
--

CREATE TABLE `tbl_company_detail` (
  `id` int(11) NOT NULL,
  `client_id` int(11) NOT NULL,
  `main_person` varchar(255) NOT NULL,
  `account_number` varchar(255) NOT NULL,
  `ifs_code` varchar(255) NOT NULL,
  `branch_name` varchar(255) NOT NULL,
  `tin_no` varchar(255) NOT NULL,
  `cst_no` varchar(255) NOT NULL,
  `pan_no` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_complaint`
--

CREATE TABLE `tbl_complaint` (
  `complaint_id` int(11) NOT NULL,
  `complaint_no` varchar(30) NOT NULL,
  `status` int(10) NOT NULL COMMENT '1 = open , 2 = Progress , 0 = Closed',
  `complaint_date` date NOT NULL,
  `customer_id` int(11) NOT NULL,
  `mobile_no` varchar(20) NOT NULL,
  `email` varchar(100) NOT NULL,
  `close_date` date NOT NULL,
  `complaint_description` text NOT NULL,
  `address` text NOT NULL,
  `complaint_type_id` int(11) NOT NULL COMMENT 'From category_master',
  `employee_status` int(11) NOT NULL DEFAULT '1',
  `complaint_chargeble` int(11) NOT NULL COMMENT '0 = no 1 = yes',
  `product_id` int(11) NOT NULL,
  `assign_date` date NOT NULL,
  `assign_to` int(11) NOT NULL,
  `is_appove` int(11) NOT NULL,
  `employer_review` text NOT NULL,
  `attachment` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_expenses`
--

CREATE TABLE `tbl_expenses` (
  `expenses_id` int(11) NOT NULL,
  `main_label` varchar(255) NOT NULL,
  `status` int(11) NOT NULL,
  `date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_expenses_history`
--

CREATE TABLE `tbl_expenses_history` (
  `id` int(11) NOT NULL,
  `tbl_expenses_id` int(11) NOT NULL,
  `expense_amount` varchar(255) NOT NULL,
  `label_expense` text NOT NULL,
  `date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_income`
--

CREATE TABLE `tbl_income` (
  `income_id` int(11) NOT NULL,
  `status` int(11) NOT NULL,
  `date` date NOT NULL,
  `customer_id` int(11) NOT NULL,
  `main_label` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_income_history`
--

CREATE TABLE `tbl_income_history` (
  `id` int(11) NOT NULL,
  `tbl_income_id` int(11) NOT NULL,
  `income_amount` varchar(255) NOT NULL,
  `label_income` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_invoice`
--

CREATE TABLE `tbl_invoice` (
  `invoice_id` int(11) NOT NULL,
  `invoice_no` varchar(50) NOT NULL,
  `date` date NOT NULL,
  `invoice_for` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `subject` varchar(250) NOT NULL,
  `reference_no` varchar(50) NOT NULL,
  `contact_person` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `mobile` varchar(20) NOT NULL,
  `address` text NOT NULL,
  `create_date` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_invoice_history`
--

CREATE TABLE `tbl_invoice_history` (
  `invoice_h_id` int(11) NOT NULL,
  `invoice_id` int(11) NOT NULL,
  `item_name` int(11) NOT NULL,
  `qty` int(11) NOT NULL,
  `price` float NOT NULL,
  `net_amount` float NOT NULL,
  `create_date` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_mail_notification`
--

CREATE TABLE `tbl_mail_notification` (
  `id` int(11) NOT NULL,
  `notification_label` varchar(255) NOT NULL,
  `notification_for` varchar(255) NOT NULL,
  `notification_text` text NOT NULL,
  `subject` varchar(255) NOT NULL,
  `send_from` varchar(255) NOT NULL,
  `send_status` int(11) NOT NULL DEFAULT '0',
  `description_of_mailformate` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_mail_notification`
--

INSERT INTO `tbl_mail_notification` (`id`, `notification_label`, `notification_for`, `notification_text`, `subject`, `send_from`, `send_status`, `description_of_mailformate`) VALUES
(1, 'Customer and Employee add time', 'customer_add', 'Dear { user_name },\r\n\r\n         You are successfully registered at { system_name }. Your username: { username } and password: { password } You Are { role } Of { system_names }. \r\n\r\nRegards, \r\n{ system_name_regard }.', 'Amc Registration', 'vijay@dasinfomedia.com', 0, '{ user_name } = Customer OR Employee Name <br/>{ System_name } = Your System Name <br/> { username } = login email-id of user <br/> { password } = Login password of user <br/> { role } = role of user(client or custmor) <br/> { system_names } =  Your System Name <br/> { system_name_regard } = Your System Name'),
(2, 'Sales Email Notification ', 'seles_notification', 'Dear { username },\r\n\r\n         Thank You for your recent business with us. Please Find attached a detailed copy of invoice for  for your Perusal. \r\n\r\nThe total amount due is { amount } to be paid by { date }.\r\n\r\n{ invoice }\r\n\r\nRegards From { systemname }.', 'Invoice ', 'sales@dasinfomedia.com', 0, '{ user_name } = Customer OR Employee Name  <br/> { amount } = total amout of sales <br/> { date } = sales date <br/> { invoice } = Invoice print <br/>  { systemname } = Your System Name '),
(3, 'Quatation Email Notification', 'queotation_mail', 'Dear { username },\n\n         Thank You for your recent business with us. Please Find attached a detailed copy of Quotation for  for your Perusal. \n\n\n\n{ invoice }\n\nRegards,\n{ systemname }.', 'Quotation Invoice', 'sales@dasinfomedia.com', 0, '{ user_name } = Customer OR Employee Name <br/>  { invoice } = Invoice print <br/> { systemname } = Your System Name <br/>'),
(4, 'Complain Email Notification for customer', 'complaint_mail', 'Dear { username },\n\n          Thank you for submiting Complaint.Your complaint Number is { complaint_number } on { complaint_date }  for { description }\n\nRegards,\n{ systemname }.', 'Complaint submited', 'sales@dasinfomedia.com', 0, '{ user_name } = Customer Name <br/> { complaint_number } = Complain Number <br/> { complaint_date } = Complain Date <br/> { systemname } = Your System Name <br/>'),
(5, 'Complain Email Notification for admin', 'complaint_mail_admin', 'Dear { admin },\n\n         { customer } is submited Complaint. Complaint Number is { complaint_number } on { complaint_date }  for { description } .  \n\nRegards,\n{ systemname }.', 'Complaint', 'sales@dasinfomedia.com', 0, '{ admin } = admin first Name <br/> { customer } = Customer Name <br/> { complaint_number } = Complain Number <br/>  { complaint_date } = Complain Date <br/> { description } = Complain Descriptions <br/> { systemname } = Your System Name '),
(6, 'Complain Email Notification for Employee', 'complaint_mail_employee', 'Dear { employee },\n\n         You have assigned new Complaint from  { customer }. Complaint Number is { complaint_number } on { complaint_date }  for { description }\n\nRegards,\n{ systemname }.', 'Assign Complaint', 'sales@dasinfomedia.com', 0, '{ employee } = Employee first Name <br/> { customer } = Customer Name <br/>  { complaint_number } = Complain Number <br/> { complaint_date } = Complain Date <br/>  { description } = Complain Descriptions <br/> { systemname } = Your System Name'),
(7, 'Complain resolved for customer', 'complaint_resolved', 'Dear { username },\r\n\r\n\r\n \r\n           Your  complain { complaint_number } is resolved on { complaint_date } by { employee_name }  for { description }\r\n\r\n\r\nRegards,\r\n{ systemname }.', 'Complaint Resolve', 'sales@dasinfomedia.com', 0, '{ username } = Username first Name <br/> { complaint_number } = Complain Number <br/> { employee_name } = Employee Name <br/> { complaint_date } = Complain Date <br/>  { description } = Complain Descriptions <br/> { systemname } = Your System Name'),
(8, 'service list monthly', 'service_list_monthly_admin', 'Dear { admin },\n\n         Monthly Services list attached..\n\n\n { service_list }\n\n\nRegards,\n{ systemname }.', 'Monthly Service List', 'sales@dasinfomedia.com', 0, '{ admin } = admin first Name <br/> { service_list } = Service List <br/> { systemname } = Your System Name'),
(9, 'service before day', 'service_before_some_day', 'Dear { username },\n\n         Your Pre approved { service_title } services is Coming up on { service_date }.  This is Just a Reminder mail.\n\nRegards From { systemname }.', 'Free service mail', 'sales@dasinfomedia.com', 0, '{ username } = Customer Name <br/> { service_title } = Service Title <br/> { service_date } = Service Date <br/>   { systemname } = Your System Name'),
(10, 'service done mail', 'service_done', 'Dear { username },\n\n         Your services { service_title }  has been completed on { service_date }.\n\n\nRegards From { systemname }.', 'service done', 'sales@dasinfomedia.com', 0, '{ username } = Customer Name <br/> { service_title } = Service Title <br/> { service_date } = Service Date <br/>   { systemname } = Your System Name'),
(11, 'employee task list', 'employy_tasks', 'Dear { employee },\n\n         Here is the list of tasks assigned to you for { today_date }\n { tast_list }\n\nRegards,\n{ systemname }.', 'Today task list', 'sales@dasinfomedia.com', 0, '{ employee } = Employee first Name <br/>  { today_date } = today Date <br/> { tast_list } = Task list of today of Employee <br/> { systemname } = Your System Name'),
(12, 'Reset Password', 'reset_password', 'Dear { name },\n\n        To reset your password { link }.\n\n\nRegards,\n{ systemname }.', 'For Reset Password', 'sales@dasinfomedia.com', 0, '{ name } = Employee first Name<br> \n{ link } = Reset Password Link<br> \n{ systemname } = Your System Name');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_manage_service`
--

CREATE TABLE `tbl_manage_service` (
  `id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL DEFAULT '0',
  `type` int(11) NOT NULL DEFAULT '0' COMMENT '0 = sales service 1 = amc service',
  `sales_id` int(11) NOT NULL,
  `service_date` date NOT NULL,
  `done_date` date NOT NULL,
  `done_discription` text NOT NULL,
  `title` varchar(250) NOT NULL,
  `assign_to` int(11) NOT NULL,
  `done_status` int(11) NOT NULL DEFAULT '0' COMMENT '0 = not done 1 = done',
  `c_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_product`
--

CREATE TABLE `tbl_product` (
  `product_id` int(11) NOT NULL,
  `item_name` varchar(100) NOT NULL,
  `is_archive` int(11) NOT NULL DEFAULT '0',
  `brand_id` int(11) NOT NULL,
  `model_no` varchar(100) NOT NULL,
  `product_code` varchar(100) NOT NULL,
  `category_id` int(11) NOT NULL,
  `short_name` varchar(100) NOT NULL,
  `price` decimal(8,2) NOT NULL,
  `unit_id` int(11) NOT NULL,
  `image` varchar(150) NOT NULL,
  `open_stock` int(11) NOT NULL,
  `min_stock` int(11) NOT NULL,
  `max_stock` int(11) NOT NULL,
  `specification` text NOT NULL,
  `warehouse_id` int(11) NOT NULL,
  `product_qty` int(11) NOT NULL,
  `created_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_purchase`
--

CREATE TABLE `tbl_purchase` (
  `purchase_id` int(11) NOT NULL,
  `purchase_no` varchar(100) NOT NULL,
  `purchase_date` date NOT NULL,
  `supplier_id` int(11) NOT NULL,
  `status` int(11) NOT NULL COMMENT '0=canceled,1=complete,2=In-Progress',
  `billing_address` text NOT NULL,
  `contact_person` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `created_date` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `created_by` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_purchase_history`
--

CREATE TABLE `tbl_purchase_history` (
  `purchase_h_id` int(11) NOT NULL,
  `purchase_id` int(11) NOT NULL,
  `item_name` int(11) NOT NULL,
  `qty` int(11) NOT NULL,
  `price` double NOT NULL,
  `net_amount` double NOT NULL,
  `create_date` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_quotation`
--

CREATE TABLE `tbl_quotation` (
  `quotation_id` int(11) NOT NULL,
  `quotation_no` varchar(50) NOT NULL,
  `quotation_date` date NOT NULL,
  `customer_id` int(11) NOT NULL,
  `mobile` varchar(255) NOT NULL,
  `email` varchar(100) NOT NULL,
  `status` varchar(50) NOT NULL,
  `subject` varchar(50) NOT NULL,
  `address` text NOT NULL,
  `message` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_quotation_history`
--

CREATE TABLE `tbl_quotation_history` (
  `quotation_history_id` int(11) NOT NULL,
  `quotation_id` int(11) NOT NULL,
  `item_name` int(11) NOT NULL,
  `qty` int(11) NOT NULL,
  `price` float NOT NULL,
  `net_amount` float NOT NULL,
  `create_date` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_sales`
--

CREATE TABLE `tbl_sales` (
  `sales_id` int(11) NOT NULL,
  `bill_number` varchar(30) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `status` varchar(50) NOT NULL,
  `date` date NOT NULL,
  `address` text NOT NULL,
  `mobile` varchar(20) NOT NULL,
  `email` varchar(100) NOT NULL,
  `discount` int(11) NOT NULL,
  `amc_typeid` int(11) NOT NULL DEFAULT '2' COMMENT '2 = no amc 1 = amc',
  `amc_warranty` varchar(255) NOT NULL,
  `start_date` date NOT NULL,
  `end_date` date NOT NULL,
  `no_of_services` varchar(255) NOT NULL,
  `assign_to` int(11) DEFAULT NULL,
  `create_date` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_sales_history`
--

CREATE TABLE `tbl_sales_history` (
  `sales_h_id` int(11) NOT NULL,
  `sales_id` int(11) NOT NULL,
  `item_name` int(11) NOT NULL,
  `qty` int(11) NOT NULL,
  `price` float NOT NULL,
  `net_amount` float NOT NULL,
  `create_date` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_sample`
--

CREATE TABLE `tbl_sample` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `username` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_service`
--

CREATE TABLE `tbl_service` (
  `service_id` int(11) NOT NULL,
  `service_code` varchar(30) NOT NULL,
  `assign_to` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `charge` varchar(10) DEFAULT NULL,
  `charge_amount` decimal(6,2) NOT NULL,
  `date` date NOT NULL,
  `remark` text NOT NULL,
  `status` int(1) NOT NULL COMMENT '1 = open , 2 = Progress , 0 = Closed',
  `service_details` text NOT NULL,
  `employee_status` int(11) NOT NULL DEFAULT '1',
  `is_appove` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_service_history`
--

CREATE TABLE `tbl_service_history` (
  `service_history_id` int(11) NOT NULL,
  `service_id` int(11) NOT NULL,
  `item_name` int(11) NOT NULL,
  `note` text NOT NULL,
  `create_date` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_stoke`
--

CREATE TABLE `tbl_stoke` (
  `id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `supplier_id` int(11) NOT NULL,
  `number_of_stoke` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_supplier`
--

CREATE TABLE `tbl_supplier` (
  `id` int(11) NOT NULL,
  `supplier_code` varchar(250) NOT NULL,
  `first_name` varchar(250) NOT NULL,
  `last_name` varchar(250) NOT NULL,
  `middle_name` varchar(250) NOT NULL,
  `email` varchar(255) NOT NULL,
  `address` text NOT NULL,
  `address_line` text NOT NULL,
  `city` varchar(255) NOT NULL,
  `state` varchar(255) NOT NULL,
  `country` varchar(255) NOT NULL,
  `zip_code` varchar(255) NOT NULL,
  `supplier_company` varchar(255) NOT NULL,
  `photo` varchar(200) NOT NULL,
  `mobile_no` varchar(255) NOT NULL,
  `account_number` varchar(255) NOT NULL,
  `branch_name` varchar(255) NOT NULL,
  `bank_name` varchar(255) DEFAULT NULL,
  `swift_code` varchar(255) DEFAULT NULL,
  `branch_code` varchar(255) DEFAULT NULL,
  `international_bank_code` varchar(255) DEFAULT NULL,
  `national_bank_code` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_task`
--

CREATE TABLE `tbl_task` (
  `task_id` int(11) NOT NULL,
  `client_id` int(11) NOT NULL,
  `assign_to` int(11) NOT NULL,
  `subject` text NOT NULL,
  `assign_date` date NOT NULL,
  `tasktype_id` int(11) NOT NULL,
  `remarks` text NOT NULL,
  `description` text NOT NULL,
  `close_date` date NOT NULL,
  `attachment` varchar(100) NOT NULL,
  `status` int(11) NOT NULL,
  `employee_status` int(11) NOT NULL DEFAULT '1',
  `is_appove` int(11) NOT NULL,
  `create_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_user`
--

CREATE TABLE `tbl_user` (
  `user_id` int(11) NOT NULL,
  `is_archive` int(11) NOT NULL DEFAULT '0',
  `client_id` varchar(50) NOT NULL,
  `first_name` varchar(100) NOT NULL,
  `middle_name` varchar(100) NOT NULL,
  `last_name` varchar(100) NOT NULL,
  `company_name` varchar(255) NOT NULL,
  `dob` date NOT NULL,
  `gender` varchar(15) NOT NULL,
  `marital_status` varchar(30) NOT NULL,
  `address` text NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `city` varchar(100) NOT NULL,
  `state` varchar(100) NOT NULL,
  `pincode` varchar(30) NOT NULL,
  `mobile_no` varchar(50) NOT NULL,
  `alt_mobile` varchar(50) NOT NULL,
  `phone` varchar(50) NOT NULL,
  `email` varchar(100) NOT NULL,
  `photo` varchar(100) NOT NULL,
  `role` varchar(100) NOT NULL,
  `create_date` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `last_send_mail_Date` date NOT NULL,
  `token_code` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_user`
--

INSERT INTO `tbl_user` (`user_id`, `is_archive`, `client_id`, `first_name`, `middle_name`, `last_name`, `company_name`, `dob`, `gender`, `marital_status`, `address`, `username`, `password`, `city`, `state`, `pincode`, `mobile_no`, `alt_mobile`, `phone`, `email`, `photo`, `role`, `create_date`, `last_send_mail_Date`, `token_code`) VALUES
(1, 0, 'C430620161', 'admin', '', 'admin', 'dasinfomedia', '2017-06-13', 'Male', 'Unmarried', 'kjdbcjkbd', 'admin', '5f4dcc3b5aa765d61d8327deb882cf99', 'kjdbcjkbd', 'Gujarat', '382350', '9999999999', '9999999999', '9999999999', 'admin@admin.com', 'system_m.png', 'admin', '2017-02-13 00:00:00', '1995-04-24', 'sdere');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_warranty`
--

CREATE TABLE `tbl_warranty` (
  `warranty_id` int(11) NOT NULL,
  `years` int(11) NOT NULL,
  `months` int(11) NOT NULL,
  `days` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `category_master`
--
ALTER TABLE `category_master`
  ADD PRIMARY KEY (`cat_id`) KEY_BLOCK_SIZE=11;

--
-- Indexes for table `international_code`
--
ALTER TABLE `international_code`
  ADD PRIMARY KEY (`code_id`);

--
-- Indexes for table `myguests`
--
ALTER TABLE `myguests`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `quatation_account_tax`
--
ALTER TABLE `quatation_account_tax`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sale_account_tax_ibfk_1` (`quation_id`);

--
-- Indexes for table `sale_account_tax`
--
ALTER TABLE `sale_account_tax`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sale_account_tax_ibfk_1` (`sale_id`);

--
-- Indexes for table `supplier_international_detail`
--
ALTER TABLE `supplier_international_detail`
  ADD PRIMARY KEY (`detail_id`);

--
-- Indexes for table `tble_setting`
--
ALTER TABLE `tble_setting`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_accessright`
--
ALTER TABLE `tbl_accessright`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_account_tax_rates`
--
ALTER TABLE `tbl_account_tax_rates`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_amc`
--
ALTER TABLE `tbl_amc`
  ADD PRIMARY KEY (`amc_id`);

--
-- Indexes for table `tbl_amc_history`
--
ALTER TABLE `tbl_amc_history`
  ADD PRIMARY KEY (`amc_h_id`);

--
-- Indexes for table `tbl_client_history`
--
ALTER TABLE `tbl_client_history`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_company`
--
ALTER TABLE `tbl_company`
  ADD PRIMARY KEY (`company_id`);

--
-- Indexes for table `tbl_company_detail`
--
ALTER TABLE `tbl_company_detail`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_complaint`
--
ALTER TABLE `tbl_complaint`
  ADD PRIMARY KEY (`complaint_id`);

--
-- Indexes for table `tbl_expenses`
--
ALTER TABLE `tbl_expenses`
  ADD PRIMARY KEY (`expenses_id`);

--
-- Indexes for table `tbl_expenses_history`
--
ALTER TABLE `tbl_expenses_history`
  ADD PRIMARY KEY (`id`),
  ADD KEY `tbl_expenses_history_ibfk_1` (`tbl_expenses_id`);

--
-- Indexes for table `tbl_income`
--
ALTER TABLE `tbl_income`
  ADD PRIMARY KEY (`income_id`);

--
-- Indexes for table `tbl_income_history`
--
ALTER TABLE `tbl_income_history`
  ADD PRIMARY KEY (`id`),
  ADD KEY `tbl_income_history_ibfk_1` (`tbl_income_id`);

--
-- Indexes for table `tbl_invoice`
--
ALTER TABLE `tbl_invoice`
  ADD PRIMARY KEY (`invoice_id`);

--
-- Indexes for table `tbl_invoice_history`
--
ALTER TABLE `tbl_invoice_history`
  ADD PRIMARY KEY (`invoice_h_id`);

--
-- Indexes for table `tbl_mail_notification`
--
ALTER TABLE `tbl_mail_notification`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_manage_service`
--
ALTER TABLE `tbl_manage_service`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_product`
--
ALTER TABLE `tbl_product`
  ADD PRIMARY KEY (`product_id`) KEY_BLOCK_SIZE=11;

--
-- Indexes for table `tbl_purchase`
--
ALTER TABLE `tbl_purchase`
  ADD PRIMARY KEY (`purchase_id`) KEY_BLOCK_SIZE=11;

--
-- Indexes for table `tbl_purchase_history`
--
ALTER TABLE `tbl_purchase_history`
  ADD PRIMARY KEY (`purchase_h_id`) KEY_BLOCK_SIZE=11;

--
-- Indexes for table `tbl_quotation`
--
ALTER TABLE `tbl_quotation`
  ADD PRIMARY KEY (`quotation_id`);

--
-- Indexes for table `tbl_quotation_history`
--
ALTER TABLE `tbl_quotation_history`
  ADD PRIMARY KEY (`quotation_history_id`);

--
-- Indexes for table `tbl_sales`
--
ALTER TABLE `tbl_sales`
  ADD PRIMARY KEY (`sales_id`);

--
-- Indexes for table `tbl_sales_history`
--
ALTER TABLE `tbl_sales_history`
  ADD PRIMARY KEY (`sales_h_id`);

--
-- Indexes for table `tbl_sample`
--
ALTER TABLE `tbl_sample`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_service`
--
ALTER TABLE `tbl_service`
  ADD PRIMARY KEY (`service_id`);

--
-- Indexes for table `tbl_service_history`
--
ALTER TABLE `tbl_service_history`
  ADD PRIMARY KEY (`service_history_id`);

--
-- Indexes for table `tbl_stoke`
--
ALTER TABLE `tbl_stoke`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_supplier`
--
ALTER TABLE `tbl_supplier`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_task`
--
ALTER TABLE `tbl_task`
  ADD PRIMARY KEY (`task_id`);

--
-- Indexes for table `tbl_user`
--
ALTER TABLE `tbl_user`
  ADD PRIMARY KEY (`user_id`);

--
-- Indexes for table `tbl_warranty`
--
ALTER TABLE `tbl_warranty`
  ADD PRIMARY KEY (`warranty_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `category_master`
--
ALTER TABLE `category_master`
  MODIFY `cat_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `international_code`
--
ALTER TABLE `international_code`
  MODIFY `code_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `myguests`
--
ALTER TABLE `myguests`
  MODIFY `id` int(6) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `quatation_account_tax`
--
ALTER TABLE `quatation_account_tax`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `sale_account_tax`
--
ALTER TABLE `sale_account_tax`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `supplier_international_detail`
--
ALTER TABLE `supplier_international_detail`
  MODIFY `detail_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `tble_setting`
--
ALTER TABLE `tble_setting`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `tbl_accessright`
--
ALTER TABLE `tbl_accessright`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;
--
-- AUTO_INCREMENT for table `tbl_account_tax_rates`
--
ALTER TABLE `tbl_account_tax_rates`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `tbl_amc`
--
ALTER TABLE `tbl_amc`
  MODIFY `amc_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `tbl_amc_history`
--
ALTER TABLE `tbl_amc_history`
  MODIFY `amc_h_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `tbl_client_history`
--
ALTER TABLE `tbl_client_history`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `tbl_company`
--
ALTER TABLE `tbl_company`
  MODIFY `company_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `tbl_company_detail`
--
ALTER TABLE `tbl_company_detail`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `tbl_complaint`
--
ALTER TABLE `tbl_complaint`
  MODIFY `complaint_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `tbl_expenses`
--
ALTER TABLE `tbl_expenses`
  MODIFY `expenses_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;
--
-- AUTO_INCREMENT for table `tbl_expenses_history`
--
ALTER TABLE `tbl_expenses_history`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `tbl_income`
--
ALTER TABLE `tbl_income`
  MODIFY `income_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT for table `tbl_income_history`
--
ALTER TABLE `tbl_income_history`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `tbl_invoice`
--
ALTER TABLE `tbl_invoice`
  MODIFY `invoice_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `tbl_invoice_history`
--
ALTER TABLE `tbl_invoice_history`
  MODIFY `invoice_h_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `tbl_mail_notification`
--
ALTER TABLE `tbl_mail_notification`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
--
-- AUTO_INCREMENT for table `tbl_manage_service`
--
ALTER TABLE `tbl_manage_service`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `tbl_product`
--
ALTER TABLE `tbl_product`
  MODIFY `product_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `tbl_purchase`
--
ALTER TABLE `tbl_purchase`
  MODIFY `purchase_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `tbl_purchase_history`
--
ALTER TABLE `tbl_purchase_history`
  MODIFY `purchase_h_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `tbl_quotation`
--
ALTER TABLE `tbl_quotation`
  MODIFY `quotation_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `tbl_quotation_history`
--
ALTER TABLE `tbl_quotation_history`
  MODIFY `quotation_history_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `tbl_sales`
--
ALTER TABLE `tbl_sales`
  MODIFY `sales_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=63;
--
-- AUTO_INCREMENT for table `tbl_sales_history`
--
ALTER TABLE `tbl_sales_history`
  MODIFY `sales_h_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `tbl_service`
--
ALTER TABLE `tbl_service`
  MODIFY `service_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `tbl_service_history`
--
ALTER TABLE `tbl_service_history`
  MODIFY `service_history_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `tbl_stoke`
--
ALTER TABLE `tbl_stoke`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `tbl_supplier`
--
ALTER TABLE `tbl_supplier`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `tbl_task`
--
ALTER TABLE `tbl_task`
  MODIFY `task_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `tbl_user`
--
ALTER TABLE `tbl_user`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `tbl_warranty`
--
ALTER TABLE `tbl_warranty`
  MODIFY `warranty_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `quatation_account_tax`
--
ALTER TABLE `quatation_account_tax`
  ADD CONSTRAINT `quatation_account_tax_ibfk_1` FOREIGN KEY (`quation_id`) REFERENCES `tbl_quotation` (`quotation_id`) ON DELETE CASCADE;

--
-- Constraints for table `sale_account_tax`
--
ALTER TABLE `sale_account_tax`
  ADD CONSTRAINT `sale_account_tax_ibfk_1` FOREIGN KEY (`sale_id`) REFERENCES `tbl_sales` (`sales_id`) ON DELETE CASCADE;

--
-- Constraints for table `tbl_expenses_history`
--
ALTER TABLE `tbl_expenses_history`
  ADD CONSTRAINT `tbl_expenses_history_ibfk_1` FOREIGN KEY (`tbl_expenses_id`) REFERENCES `tbl_expenses` (`expenses_id`) ON DELETE CASCADE;

--
-- Constraints for table `tbl_income_history`
--
ALTER TABLE `tbl_income_history`
  ADD CONSTRAINT `tbl_income_history_ibfk_1` FOREIGN KEY (`tbl_income_id`) REFERENCES `tbl_income` (`income_id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
