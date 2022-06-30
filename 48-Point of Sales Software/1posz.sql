-- phpMyAdmin SQL Dump
-- version 4.7.3
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Dec 30, 2017 at 02:21 PM
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
-- Database: `tammanag_posz`
--

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `created_at` varchar(200) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `created_at`) VALUES
(16, 'Soaps', '2017-12-16 10:19:20'),
(17, 'Shampoos', '2017-12-16 10:19:41'),
(18, 'Hairoils', '2017-12-16 10:19:56'),
(19, 'Kandipapu', '2017-12-16 11:14:34');

-- --------------------------------------------------------

--
-- Table structure for table `categorie_expences`
--

CREATE TABLE `categorie_expences` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `created_date` timestamp NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `combo_items`
--

CREATE TABLE `combo_items` (
  `id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `item_id` int(11) NOT NULL,
  `quantity` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `customers`
--

CREATE TABLE `customers` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `phone` varchar(30) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `discount` varchar(5) DEFAULT NULL,
  `created_at` varchar(150) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `customers`
--

INSERT INTO `customers` (`id`, `name`, `phone`, `email`, `discount`, `created_at`) VALUES
(11, 'sher', '', '', '', '2017-12-12 19:25:38'),
(12, 'Shadad', '', '', '10', '2017-12-16 10:27:35'),
(13, 'pawan', '9990228887', '', '', '2017-12-22 19:49:21'),
(14, 'pawan', '9990228887', '', '', '2017-12-22 19:49:54'),
(15, 'Ajeet', '9990228887', 'pawan.divin@gmail.com', '', '2017-12-22 19:57:22'),
(16, '', '', '', '', '2017-12-28 14:04:51'),
(17, 'test', '9311254321', 'info@sognaretechnologies.com', '10', '2017-12-28 22:10:36');

-- --------------------------------------------------------

--
-- Table structure for table `expences`
--

CREATE TABLE `expences` (
  `id` int(11) NOT NULL,
  `date` date NOT NULL,
  `reference` varchar(150) NOT NULL,
  `note` text,
  `amount` float NOT NULL,
  `attachment` varchar(200) DEFAULT NULL,
  `created_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `category_id` int(11) DEFAULT NULL,
  `store_id` int(11) DEFAULT NULL,
  `created_by` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `holds`
--

CREATE TABLE `holds` (
  `id` int(11) NOT NULL,
  `number` int(11) NOT NULL,
  `time` varchar(10) NOT NULL,
  `register_id` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `holds`
--

INSERT INTO `holds` (`id`, `number`, `time`, `register_id`) VALUES
(190, 1, '21:36', 34),
(191, 1, '09:17', 35),
(201, 1, '16:17', 38),
(202, 2, '16:17', 38),
(203, 3, '16:17', 38),
(204, 4, '16:17', 38),
(205, 5, '16:17', 38),
(206, 6, '16:17', 38);

-- --------------------------------------------------------

--
-- Table structure for table `payements`
--

CREATE TABLE `payements` (
  `id` int(11) NOT NULL,
  `date` date NOT NULL,
  `paid` float NOT NULL,
  `paidmethod` varchar(300) CHARACTER SET latin1 NOT NULL,
  `created_by` varchar(60) CHARACTER SET latin1 NOT NULL,
  `register_id` int(11) NOT NULL,
  `sale_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `payements`
--

INSERT INTO `payements` (`id`, `date`, `paid`, `paidmethod`, `created_by`, `register_id`, `sale_id`) VALUES
(35, '2017-12-22', 100, '0', 'bhadana wew', 37, 26);

-- --------------------------------------------------------

--
-- Table structure for table `posales`
--

CREATE TABLE `posales` (
  `id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `name` varchar(200) NOT NULL,
  `price` float NOT NULL,
  `qt` int(6) NOT NULL,
  `status` tinyint(4) DEFAULT NULL,
  `register_id` int(11) DEFAULT NULL,
  `number` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `posales`
--

INSERT INTO `posales` (`id`, `product_id`, `name`, `price`, `qt`, `status`, `register_id`, `number`) VALUES
(1432, 141, 'Sandal', 45, 3, 1, 34, 1);

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(11) NOT NULL,
  `code` varchar(20) CHARACTER SET latin1 NOT NULL,
  `name` varchar(25) CHARACTER SET latin1 NOT NULL,
  `category` varchar(20) CHARACTER SET latin1 NOT NULL,
  `cost` float NOT NULL,
  `tax` varchar(11) CHARACTER SET latin1 DEFAULT NULL,
  `description` text CHARACTER SET latin1,
  `price` float NOT NULL,
  `photo` varchar(200) CHARACTER SET latin1 NOT NULL,
  `photothumb` varchar(500) CHARACTER SET latin1 DEFAULT NULL,
  `color` varchar(10) CHARACTER SET latin1 NOT NULL,
  `created_at` varchar(30) CHARACTER SET latin1 DEFAULT NULL,
  `modified_at` varchar(30) CHARACTER SET latin1 DEFAULT NULL,
  `type` tinyint(4) DEFAULT NULL,
  `alertqt` int(10) DEFAULT NULL,
  `supplier` varchar(200) CHARACTER SET latin1 DEFAULT NULL,
  `unit` varchar(100) CHARACTER SET latin1 DEFAULT NULL,
  `taxmethod` tinyint(4) DEFAULT NULL,
  `h_stores` varchar(300) CHARACTER SET latin1 DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `code`, `name`, `category`, `cost`, `tax`, `description`, `price`, `photo`, `photothumb`, `color`, `created_at`, `modified_at`, `type`, `alertqt`, `supplier`, `unit`, `taxmethod`, `h_stores`) VALUES
(140, '8904109470325', 'bis cu', 'Category', 15, '18', '', 18, '', '', 'color02', '2017-12-24 14:54:23', '2017-12-24 14:54:23', 0, 0, 'Supplier', '100', 0, NULL),
(141, 'S-1', 'Sandal', 'Soaps', 0, '', '', 45, '', '', 'color01', '2017-12-16 10:25:14', '2017-12-16 10:25:14', 1, 0, 'Supplier', '', 0, NULL),
(142, 'S-2', '3 in one', 'Soaps', 50, '5', '', 50, '', '', 'color01', '2017-12-16 10:33:57', '2017-12-16 10:33:57', 0, 0, 'Vamsi', '50', 0, NULL),
(143, 'S-4', 'Shampo-1', 'Shampoos', 0, '5', '<p>Shampoo</p>', 25, '', '', 'color01', '2017-12-16 10:47:46', '2017-12-16 10:47:46', 1, 0, 'Supplier', '', 0, NULL),
(147, '12', 'soaps facs', 'Soaps', 35, '', '', 45, '', '', 'color03', '2017-12-28 15:55:48', '2017-12-28 15:55:48', 0, 3, 'Vamsi', '35', 0, NULL),
(145, 'K-1', 'Kandipapu', 'Kandipapu', 45, '', '<p>1kg</p>', 50, '', '', 'color06', '2017-12-16 11:16:12', '2017-12-16 11:16:12', 0, 0, 'Vamsi', '50', 0, NULL),
(146, '21', 'KANDIPAPU', 'Kandipapu', 75, '', '', 85, '', '', 'color05', '2017-12-16 11:18:48', '2017-12-16 11:18:48', 0, 0, 'Supplier', '80', 0, NULL),
(148, '8000000000736', 'Star', 'Hairoils', 0, '18', '', 10, '', '', 'color07', '2017-12-28 16:05:45', '2017-12-28 16:05:45', 1, 0, 'Supplier', '', 0, NULL),
(149, '', '', '', 0, '', '', 0, '', '', '', '2017-12-24 12:30:09', '2017-12-24 12:30:09', 0, 0, '', '', 0, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `purchases`
--

CREATE TABLE `purchases` (
  `id` int(11) NOT NULL,
  `ref` varchar(11) CHARACTER SET latin1 NOT NULL,
  `date` date NOT NULL,
  `total` float DEFAULT NULL,
  `attachement` varchar(200) CHARACTER SET latin1 DEFAULT NULL,
  `supplier_id` int(11) DEFAULT NULL,
  `status` tinyint(4) NOT NULL,
  `created_by` int(11) NOT NULL,
  `type` tinyint(4) NOT NULL,
  `store_id` int(11) DEFAULT NULL,
  `warehouse_id` int(11) DEFAULT NULL,
  `note` text CHARACTER SET latin1,
  `modified_at` varchar(50) CHARACTER SET latin1 DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `purchase_items`
--

CREATE TABLE `purchase_items` (
  `id` int(11) NOT NULL,
  `purchase_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `qt` int(10) NOT NULL,
  `cost` float NOT NULL,
  `subtot` float NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `registers`
--

CREATE TABLE `registers` (
  `id` int(11) NOT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `status` tinyint(4) NOT NULL,
  `user_id` int(11) NOT NULL,
  `cash_total` float DEFAULT NULL,
  `cash_sub` float DEFAULT NULL,
  `cc_total` float DEFAULT NULL,
  `cc_sub` float DEFAULT NULL,
  `cheque_total` float DEFAULT NULL,
  `cheque_sub` float DEFAULT NULL,
  `cash_inhand` float DEFAULT NULL,
  `note` text,
  `closed_at` varchar(150) DEFAULT NULL,
  `closed_by` int(11) DEFAULT NULL,
  `store_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `registers`
--

INSERT INTO `registers` (`id`, `date`, `status`, `user_id`, `cash_total`, `cash_sub`, `cc_total`, `cc_sub`, `cheque_total`, `cheque_sub`, `cash_inhand`, `note`, `closed_at`, `closed_by`, `store_id`) VALUES
(34, '2017-12-07 16:06:35', 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, 1),
(35, '2017-12-07 16:06:35', 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, 1),
(36, '2017-12-19 12:37:41', 0, 1, 660.8, 660.8, 0, 0, 0, 0, 4, '', '2017-12-19 18:40:19', 1, 4),
(37, '2017-12-19 13:10:50', 0, 1, 1604.8, 1604.8, 78.4, 78.4, 0, 0, 1, '', '2017-12-28 16:17:12', 1, 4),
(38, '2017-12-28 10:47:21', 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, 2000, NULL, NULL, NULL, 4);

-- --------------------------------------------------------

--
-- Table structure for table `sales`
--

CREATE TABLE `sales` (
  `id` int(11) NOT NULL,
  `client_id` int(11) NOT NULL,
  `clientname` varchar(50) NOT NULL,
  `tax` varchar(5) DEFAULT NULL,
  `discount` varchar(5) DEFAULT NULL,
  `subtotal` varchar(15) NOT NULL,
  `total` float NOT NULL,
  `created_at` date NOT NULL,
  `modified_at` varchar(150) DEFAULT NULL,
  `status` tinyint(1) NOT NULL,
  `created_by` varchar(50) NOT NULL,
  `totalitems` int(20) NOT NULL,
  `paid` varchar(15) DEFAULT NULL,
  `paidmethod` varchar(700) DEFAULT NULL,
  `taxamount` float DEFAULT NULL,
  `discountamount` float DEFAULT NULL,
  `register_id` int(11) DEFAULT NULL,
  `firstpayement` float DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `sales`
--

INSERT INTO `sales` (`id`, `client_id`, `clientname`, `tax`, `discount`, `subtotal`, `total`, `created_at`, `modified_at`, `status`, `created_by`, `totalitems`, `paid`, `paidmethod`, `taxamount`, `discountamount`, `register_id`, `firstpayement`) VALUES
(19, 11, 'sher', '12%', '0.0', '281.0', 314.7, '2017-12-16', NULL, 0, 'admin Doe', 7, '314.7', '0', 33.7, 0, 34, 314.7),
(20, 0, 'Walk in Customer', '12%', '', '545.0', 610.4, '2017-12-19', NULL, 0, 'admin Doe', 13, '610.4', '0', 65.4, 0, 36, 610.4),
(21, 0, 'Walk in Customer', '12%', '', '45.0', 50.4, '2017-12-19', NULL, 0, 'admin Doe', 1, '50.4', '0', 5.4, 0, 36, 50.4),
(22, 0, 'Walk in Customer', '12%', '', '140.0', 156.8, '2017-12-19', NULL, 0, 'admin Doe', 4, '156.8', '0', 16.8, 0, 37, 156.8),
(23, 0, 'Walk in Customer', '12%', '50', '0.0', -50, '2017-12-19', NULL, 0, 'admin Doe', 0, '-50.0', '0', 0, 50, 37, -50),
(24, 0, 'Walk in Customer', '12%', '50', '90.0', 50.8, '2017-12-19', NULL, 0, 'admin Doe', 2, '50.8', '0', 10.8, 50, 37, 50.8),
(25, 11, 'sher', '12%', '0.0', '90.0', 100.8, '2017-12-22', NULL, 0, 'admin Doe', 2, '100.8', '0', 10.8, 0, 37, 100.8),
(26, 0, 'Walk in Customer', '18%', '10', '275.0', 314.5, '2017-12-22', NULL, 2, 'admin Doe', 7, '300', '0', 49.5, 10, 37, 200),
(27, 13, 'pawan', '18%', '24', '90.0', 82.2, '2017-12-22', NULL, 0, 'admin Doe', 2, '82.2', '0', 16.2, 24, 37, 82.2),
(28, 0, 'Walk in Customer', '1%', '2%', '185.0', 183.2, '2017-12-22', NULL, 0, 'admin Doe', 5, '183.2', '0', 1.9, 3.7, 37, 183.2),
(29, 0, 'Walk in Customer', '56%', '', '95.0', 148.2, '2017-12-23', NULL, 0, 'admin Doe', 3, '148.2', '0', 53.2, 0, 37, 148.2),
(31, 0, 'Walk in Customer', '18%', '12%', '645.0', 683.7, '2017-12-24', NULL, 2, 'admin Doe', 27, '30', '0', 116.1, 77.4, 37, 30),
(32, 0, 'Walk in Customer', '12%', '', '45.0', 50.4, '2017-12-24', NULL, 0, 'admin Doe', 1, '100', '0', 5.4, 0, 37, 50.4),
(33, 0, 'Walk in Customer', '12%', '', '45.0', 50.4, '2017-12-24', NULL, 0, 'admin Doe', 1, '1000', '0', 5.4, 0, 37, 50.4),
(34, 0, 'Walk in Customer', '12%', '', '70.0', 78.4, '2017-12-25', NULL, 0, 'admin Doe', 2, '78.4', '1~~', 8.4, 0, 37, 78.4),
(35, 0, 'Walk in Customer', '12%', '', '45.0', 50.4, '2017-12-27', NULL, 0, 'admin Doe', 1, '100', '0', 5.4, 0, 37, 50.4),
(36, 0, 'Walk in Customer', '12%', '', '45.0', 50.4, '2017-12-27', NULL, 0, 'admin Doe', 1, '100', '0', 5.4, 0, 37, 50.4),
(37, 0, 'Walk in Customer', '12%', '', '180.0', 201.6, '2017-12-27', NULL, 0, 'admin Doe', 6, '201.6', '0', 21.6, 0, 37, 201.6),
(38, 0, 'Walk in Customer', '12%', '', '170.0', 190.4, '2017-12-27', NULL, 0, 'admin Doe', 5, '190.4', '0', 20.4, 0, 37, 190.4),
(39, 0, 'Walk in Customer', '12%', '2', '10.0', 9.2, '2017-12-28', NULL, 0, 'admin Doe', 1, '9.2', '0', 1.2, 2, 37, 9.2),
(40, 0, 'Walk in Customer', '12%', '', '0.0', 0, '2017-12-28', NULL, 1, 'admin Doe', 0, '0.0', '0', 0, 0, 38, 0),
(41, 0, 'Walk in Customer', '12%', '', '10.0', 11.2, '2017-12-28', NULL, 0, 'admin Doe', 1, '11.2', '0', 1.2, 0, 38, 11.2),
(42, 0, 'Walk in Customer', '12%', '', '80.0', 89.6, '2017-12-30', NULL, 0, 'admin Doe', 3, '89.6', '0', 9.6, 0, 38, 89.6),
(43, 0, 'Walk in Customer', '12%', '', '80.0', 89.6, '2017-12-30', NULL, 0, 'admin Doe', 3, '89.6', '0', 9.6, 0, 38, 89.6);

-- --------------------------------------------------------

--
-- Table structure for table `sale_items`
--

CREATE TABLE `sale_items` (
  `id` int(11) NOT NULL,
  `sale_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `name` varchar(200) NOT NULL,
  `price` float NOT NULL,
  `qt` int(6) NOT NULL,
  `subtotal` varchar(20) NOT NULL,
  `date` date DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `sale_items`
--

INSERT INTO `sale_items` (`id`, `sale_id`, `product_id`, `name`, `price`, `qt`, `subtotal`, `date`) VALUES
(977, 19, 141, 'Sandal', 45, 4, '180', '2017-12-16'),
(978, 19, 143, 'Shampo-1', 25, 2, '50', '2017-12-16'),
(979, 19, 144, 'SHAMPOOI', 51, 1, '51', '2017-12-16'),
(980, 20, 143, 'Shampo-1', 25, 2, '50', '2017-12-19'),
(981, 20, 141, 'Sandal', 45, 3, '135', '2017-12-19'),
(982, 20, 140, 'bis cu', 45, 8, '360', '2017-12-19'),
(983, 21, 147, 'soaps facs', 45, 1, '45', '2017-12-19'),
(984, 22, 143, 'Shampo-1', 25, 2, '50', '2017-12-19'),
(985, 22, 147, 'soaps facs', 45, 2, '90', '2017-12-19'),
(986, 24, 140, 'bis cu', 45, 1, '45', '2017-12-19'),
(987, 24, 147, 'soaps facs', 45, 1, '45', '2017-12-19'),
(988, 25, 141, 'Sandal', 45, 1, '45', '2017-12-22'),
(989, 25, 140, 'bis cu', 45, 1, '45', '2017-12-22'),
(990, 26, 141, 'Sandal', 45, 2, '90', '2017-12-22'),
(991, 26, 147, 'soaps facs', 45, 3, '135', '2017-12-22'),
(992, 26, 143, 'Shampo-1', 25, 2, '50', '2017-12-22'),
(993, 27, 147, 'soaps facs', 45, 1, '45', '2017-12-22'),
(994, 27, 140, 'bis cu', 45, 1, '45', '2017-12-22'),
(995, 28, 143, 'Shampo-1', 25, 2, '50', '2017-12-22'),
(996, 28, 147, 'soaps facs', 45, 1, '45', '2017-12-22'),
(997, 28, 141, 'Sandal', 45, 2, '90', '2017-12-22'),
(998, 29, 143, 'Shampo-1', 25, 2, '50', '2017-12-23'),
(999, 29, 141, 'Sandal', 45, 1, '45', '2017-12-23'),
(1001, 31, 143, 'Shampo-1', 25, 25, '625', '2017-12-24'),
(1002, 31, 148, 'Star', 10, 2, '20', '2017-12-24'),
(1003, 32, 141, 'Sandal', 45, 1, '45', '2017-12-24'),
(1004, 33, 141, 'Sandal', 45, 1, '45', '2017-12-24'),
(1005, 34, 143, 'Shampo-1', 25, 1, '25', '2017-12-25'),
(1006, 34, 141, 'Sandal', 45, 1, '45', '2017-12-25'),
(1007, 35, 141, 'Sandal', 45, 1, '45', '2017-12-27'),
(1008, 37, 143, 'Shampo-1', 25, 1, '25', '2017-12-27'),
(1009, 37, 148, 'Star', 10, 2, '20', '2017-12-27'),
(1010, 37, 141, 'Sandal', 45, 3, '135', '2017-12-27'),
(1011, 38, 143, 'Shampo-1', 25, 1, '25', '2017-12-27'),
(1012, 38, 148, 'Star', 10, 1, '10', '2017-12-27'),
(1013, 38, 141, 'Sandal', 45, 3, '135', '2017-12-27'),
(1014, 39, 148, 'Star', 10, 1, '10', '2017-12-28'),
(1015, 41, 148, 'Star', 10, 1, '10', '2017-12-28'),
(1016, 42, 141, 'Sandal', 45, 1, '45', '2017-12-30'),
(1017, 42, 148, 'Star', 10, 1, '10', '2017-12-30'),
(1018, 42, 143, 'Shampo-1', 25, 1, '25', '2017-12-30');

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE `settings` (
  `id` int(11) NOT NULL,
  `companyname` varchar(100) NOT NULL,
  `logo` varchar(200) DEFAULT NULL,
  `phone` varchar(15) DEFAULT NULL,
  `currency` varchar(10) DEFAULT NULL,
  `keyboard` tinyint(1) NOT NULL,
  `receiptheader` text,
  `receiptfooter` text NOT NULL,
  `theme` varchar(20) NOT NULL,
  `discount` varchar(5) DEFAULT NULL,
  `tax` varchar(5) DEFAULT NULL,
  `timezone` varchar(400) DEFAULT NULL,
  `language` varchar(30) DEFAULT NULL,
  `stripe` tinyint(4) DEFAULT NULL,
  `stripe_secret_key` varchar(150) DEFAULT NULL,
  `stripe_publishable_key` varchar(150) DEFAULT NULL,
  `decimals` int(2) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`id`, `companyname`, `logo`, `phone`, `currency`, `keyboard`, `receiptheader`, `receiptfooter`, `theme`, `discount`, `tax`, `timezone`, `language`, `stripe`, `stripe_secret_key`, `stripe_publishable_key`, `decimals`) VALUES
(1, 'Tam Pos Restaurant', 'd447b4d664276b6b33844dbe9058335a.png', '77777777777', 'INR', 0, '<ul><li style=\"text-align: center; \"><b>Tam Manager Stores,</b></li><li style=\"text-align: center;\">Kamak towers, SP-12A,</li><li style=\"text-align: center;\">4th floor, Laser street,&nbsp;</li><li style=\"text-align: center;\">Guindy, Chennai-600032.</li></ul>', '<div style=\"text-align: center;\">Thank you for your business</div>', 'Light', '', '12%', 'Asia/Kolkata', 'english', 0, '', '', 1);

-- --------------------------------------------------------

--
-- Table structure for table `stocks`
--

CREATE TABLE `stocks` (
  `id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `type` tinyint(4) DEFAULT NULL,
  `store_id` int(11) DEFAULT NULL,
  `warehouse_id` int(11) DEFAULT NULL,
  `quantity` int(10) DEFAULT NULL,
  `price` float DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `stocks`
--

INSERT INTO `stocks` (`id`, `product_id`, `type`, `store_id`, `warehouse_id`, `quantity`, `price`) VALUES
(60, 140, NULL, 4, NULL, 0, 45),
(61, 140, NULL, NULL, 3, 9, NULL),
(62, 147, NULL, 4, NULL, 0, NULL),
(63, 147, NULL, NULL, 3, 7, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `stores`
--

CREATE TABLE `stores` (
  `id` int(11) NOT NULL,
  `name` varchar(40) NOT NULL,
  `email` varchar(40) DEFAULT NULL,
  `phone` varchar(40) DEFAULT NULL,
  `adresse` varchar(400) DEFAULT NULL,
  `footer_text` varchar(400) DEFAULT NULL,
  `city` varchar(20) DEFAULT NULL,
  `country` varchar(20) DEFAULT NULL,
  `created_at` varchar(200) NOT NULL,
  `status` tinyint(4) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `stores`
--

INSERT INTO `stores` (`id`, `name`, `email`, `phone`, `adresse`, `footer_text`, `city`, `country`, `created_at`, `status`) VALUES
(4, 'Healthy Markets', 'lvamsi06@gmail.com', '9493572270', '18/6', 'Thank you for your Purchase', 'Bangalore', 'India', '2017-12-19 18:07:05', 1);

-- --------------------------------------------------------

--
-- Table structure for table `suppliers`
--

CREATE TABLE `suppliers` (
  `id` int(11) NOT NULL,
  `name` varchar(200) CHARACTER SET latin1 NOT NULL,
  `phone` varchar(15) CHARACTER SET latin1 DEFAULT NULL,
  `email` varchar(150) CHARACTER SET latin1 DEFAULT NULL,
  `note` text CHARACTER SET latin1,
  `created_at` varchar(150) CHARACTER SET latin1 NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `suppliers`
--

INSERT INTO `suppliers` (`id`, `name`, `phone`, `email`, `note`, `created_at`) VALUES
(4, 'Vamsi', '9493572270', 'Lvamsi06@gmail.com', '', '2017-12-16 10:30:50');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(45) NOT NULL,
  `firstname` varchar(100) NOT NULL,
  `lastname` varchar(100) DEFAULT NULL,
  `hashed_password` varchar(128) NOT NULL,
  `email` varchar(60) DEFAULT NULL,
  `role` varchar(20) NOT NULL,
  `last_active` varchar(50) DEFAULT NULL,
  `avatar` varchar(200) DEFAULT NULL,
  `created_at` varchar(300) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `firstname`, `lastname`, `hashed_password`, `email`, `role`, `last_active`, `avatar`, `created_at`) VALUES
(1, 'admin', 'admin', 'Doe', 'ede719c5ff6172692b6d811363e011f686229344f55662cb5493b4300403c237ad7b80fdd6a392e467850b6e338a523ea752f102d04968c8594efde2757b1f79', 'admin@dar-elweb.com', 'admin', '2017-12-28 16:20:59', '9fff9cc26e539214e9a5fd3b6a10cde9.jpg', '2016-08-28 15:01:23'),
(16, 'pawan', 'bhadana', 'wew', 'fdb26acbbe1f26067e353b89226a8f82478e66bafae7b78649424d153764f58164dbefc58dc7c750234bae1710608d1fe7c09f1e1393fc9c5404383571b68398', 'pawan.divin@gmail.com', 'sales', '2017-12-22 20:23:18', NULL, '2017-12-22 20:07:03');

-- --------------------------------------------------------

--
-- Table structure for table `variations`
--

CREATE TABLE `variations` (
  `id` int(11) NOT NULL,
  `item_id` int(11) NOT NULL,
  `price` float DEFAULT NULL,
  `quantity` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `warehouses`
--

CREATE TABLE `warehouses` (
  `id` int(11) NOT NULL,
  `name` varchar(100) CHARACTER SET latin1 NOT NULL,
  `phone` varchar(20) CHARACTER SET latin1 DEFAULT NULL,
  `email` varchar(100) CHARACTER SET latin1 DEFAULT NULL,
  `adresse` varchar(400) CHARACTER SET latin1 DEFAULT NULL,
  `created_at` varchar(200) CHARACTER SET latin1 NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `warehouses`
--

INSERT INTO `warehouses` (`id`, `name`, `phone`, `email`, `adresse`, `created_at`) VALUES
(3, 'Healthy Market', '9652487910', 'digitallion09@gmail.com', '', '2017-12-16 11:12:55');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `categorie_expences`
--
ALTER TABLE `categorie_expences`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `combo_items`
--
ALTER TABLE `combo_items`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `expences`
--
ALTER TABLE `expences`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `holds`
--
ALTER TABLE `holds`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `payements`
--
ALTER TABLE `payements`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `posales`
--
ALTER TABLE `posales`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `purchases`
--
ALTER TABLE `purchases`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `purchase_items`
--
ALTER TABLE `purchase_items`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `registers`
--
ALTER TABLE `registers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sales`
--
ALTER TABLE `sales`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sale_items`
--
ALTER TABLE `sale_items`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `stocks`
--
ALTER TABLE `stocks`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `stores`
--
ALTER TABLE `stores`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `suppliers`
--
ALTER TABLE `suppliers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `warehouses`
--
ALTER TABLE `warehouses`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;
--
-- AUTO_INCREMENT for table `categorie_expences`
--
ALTER TABLE `categorie_expences`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `combo_items`
--
ALTER TABLE `combo_items`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;
--
-- AUTO_INCREMENT for table `customers`
--
ALTER TABLE `customers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;
--
-- AUTO_INCREMENT for table `expences`
--
ALTER TABLE `expences`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;
--
-- AUTO_INCREMENT for table `holds`
--
ALTER TABLE `holds`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=209;
--
-- AUTO_INCREMENT for table `payements`
--
ALTER TABLE `payements`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;
--
-- AUTO_INCREMENT for table `posales`
--
ALTER TABLE `posales`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1482;
--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=150;
--
-- AUTO_INCREMENT for table `purchases`
--
ALTER TABLE `purchases`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `purchase_items`
--
ALTER TABLE `purchase_items`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `registers`
--
ALTER TABLE `registers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;
--
-- AUTO_INCREMENT for table `sales`
--
ALTER TABLE `sales`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=44;
--
-- AUTO_INCREMENT for table `sale_items`
--
ALTER TABLE `sale_items`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1019;
--
-- AUTO_INCREMENT for table `settings`
--
ALTER TABLE `settings`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `stocks`
--
ALTER TABLE `stocks`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=64;
--
-- AUTO_INCREMENT for table `stores`
--
ALTER TABLE `stores`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `suppliers`
--
ALTER TABLE `suppliers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;
--
-- AUTO_INCREMENT for table `warehouses`
--
ALTER TABLE `warehouses`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
