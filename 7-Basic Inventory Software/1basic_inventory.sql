-- phpMyAdmin SQL Dump
-- version 4.7.3
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Dec 30, 2017 at 02:07 PM
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
-- Database: `tammanag_inventory`
--

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `cat_id` int(5) NOT NULL,
  `cat_name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`cat_id`, `cat_name`) VALUES
(2, 'biscuit'),
(3, 'fgfgtghhjhj'),
(4, 'Hettich');

-- --------------------------------------------------------

--
-- Table structure for table `inventory`
--

CREATE TABLE `inventory` (
  `inventory_id` int(10) NOT NULL,
  `item_id` int(5) NOT NULL,
  `inventory_quantity` int(10) NOT NULL,
  `alert_qtt` int(5) DEFAULT NULL,
  `inventory_damage_qtt` int(5) NOT NULL DEFAULT '0',
  `inventory_added` date DEFAULT NULL,
  `inventory_update` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `inventory`
--

INSERT INTO `inventory` (`inventory_id`, `item_id`, `inventory_quantity`, `alert_qtt`, `inventory_damage_qtt`, `inventory_added`, `inventory_update`) VALUES
(1, 1, 3, 15, 14, '2017-10-12', '2017-12-21'),
(2, 2, 96, 6, 6, '2017-10-12', '2017-12-21'),
(3, 3, 10, 1, 0, '2017-12-02', '2017-12-02'),
(4, 4, 45, NULL, 0, '2017-12-09', '2017-12-09');

-- --------------------------------------------------------

--
-- Table structure for table `invoice_out`
--

CREATE TABLE `invoice_out` (
  `invoice_id` int(5) NOT NULL,
  `warehouse_id` int(5) DEFAULT NULL,
  `item_ids` varchar(100) CHARACTER SET latin1 NOT NULL,
  `quantities` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `unit_prices` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `total_price` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `date` date DEFAULT NULL,
  `user_id` int(5) DEFAULT NULL,
  `note` text COLLATE utf8_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `invoice_out`
--

INSERT INTO `invoice_out` (`invoice_id`, `warehouse_id`, `item_ids`, `quantities`, `unit_prices`, `total_price`, `date`, `user_id`, `note`) VALUES
(1, 1, '2', '10', '8', '80', '2017-10-12', 1, 'sold 10 biscuit'),
(2, 1, '1', '3', '12', '36', '2017-10-12', 1, 'maggie'),
(3, 2, '2', '4', '8', '32', '2017-10-12', 1, 'sold 4 biscuit'),
(4, 1, '4', '5', '200', '1000', '2017-12-09', 1, '345'),
(5, 1, '1', '200', '44', '8800', '2017-12-21', 1, '');

-- --------------------------------------------------------

--
-- Table structure for table `invoice_purchase`
--

CREATE TABLE `invoice_purchase` (
  `invoice_id` int(5) NOT NULL,
  `supplier_id` int(5) DEFAULT NULL,
  `item_ids` varchar(100) CHARACTER SET latin1 DEFAULT NULL,
  `quantities` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `unit_prices` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `total_price` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `date` date DEFAULT NULL,
  `user_id` int(5) DEFAULT NULL,
  `note` text COLLATE utf8_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `invoice_purchase`
--

INSERT INTO `invoice_purchase` (`invoice_id`, `supplier_id`, `item_ids`, `quantities`, `unit_prices`, `total_price`, `date`, `user_id`, `note`) VALUES
(1, 1, '1', '10', '10', '100', '2017-10-12', 1, 'buy 10 maggie'),
(2, 1, '2', '20', '5', '100', '2017-10-12', 1, 'buy biscuit 20'),
(3, 1, '2', '30', '5', '150', '2017-10-12', 1, '30 biscuit'),
(4, 1, '3', '10', '100', '1000', '2017-12-02', 1, ''),
(5, 2, '4', '50', '123', '6150', '2017-12-09', 1, '123123'),
(6, 1, '1', '200', '10', '2000', '2017-12-21', 1, ''),
(7, 2, '2', '66', '5', '330', '2017-12-21', 1, '');

-- --------------------------------------------------------

--
-- Table structure for table `items`
--

CREATE TABLE `items` (
  `item_id` int(5) NOT NULL,
  `item_code` varchar(50) DEFAULT NULL,
  `cat_id` int(5) DEFAULT NULL,
  `item_name` varchar(160) DEFAULT NULL,
  `item_description` text,
  `item_image_name` varchar(50) DEFAULT NULL,
  `item_image_type` varchar(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `items`
--

INSERT INTO `items` (`item_id`, `item_code`, `cat_id`, `item_name`, `item_description`, `item_image_name`, `item_image_type`) VALUES
(1, 'maggies101', 1, 'maggie', 'maggie atta noddles', 'maggies101', '.png'),
(2, 'b101', 2, 'cream biscuit', 'biscuit with filled cream', 'b101', '.png'),
(3, '3423', 2, 'bg', 'gere', NULL, NULL),
(4, '1234', 4, 'Hinges', 'hinges', NULL, NULL),
(5, 'apple', 2, '123', 'best biscuits in India ', 'apple', '.png');

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE `settings` (
  `settings_id` int(5) NOT NULL,
  `brand_name` varchar(100) DEFAULT NULL,
  `alert_email` varchar(150) DEFAULT NULL,
  `alert_on` int(1) NOT NULL DEFAULT '1' COMMENT '1=''yes''. 0=''no''',
  `address` varchar(200) DEFAULT NULL,
  `phone` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`settings_id`, `brand_name`, `alert_email`, `alert_on`, `address`, `phone`) VALUES
(1, 'ABC Co.', NULL, 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `supplier`
--

CREATE TABLE `supplier` (
  `supplier_id` int(5) NOT NULL,
  `supplier_name` varchar(150) DEFAULT NULL,
  `supplier_address` varchar(200) DEFAULT NULL,
  `supplier_phone` varchar(100) DEFAULT NULL,
  `supplier_email` varchar(100) DEFAULT NULL,
  `supplier_key_person` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `supplier`
--

INSERT INTO `supplier` (`supplier_id`, `supplier_name`, `supplier_address`, `supplier_phone`, `supplier_email`, `supplier_key_person`) VALUES
(1, 'Masthan', 'Ajskwksjsj', '8886770357', 'Varun@tammanager.com', 'Varun'),
(2, 'Hettich', '1', '1', '1@gmail.com', '1');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `user_id` int(5) NOT NULL,
  `user_email` varchar(100) DEFAULT NULL,
  `user_full_name` varchar(100) DEFAULT NULL,
  `user_phone` varchar(100) DEFAULT NULL,
  `user_address` varchar(250) DEFAULT NULL,
  `password` varchar(40) DEFAULT NULL,
  `user_role` int(1) NOT NULL DEFAULT '0' COMMENT '0=user,1=admin'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`user_id`, `user_email`, `user_full_name`, `user_phone`, `user_address`, `password`, `user_role`) VALUES
(1, 'admin@demo.com', 'Super Admin', '', '', '7c4a8d09ca3762af61e59520943dc26494f8941b', 1),
(2, 'user@demo.com', 'user', '7777777777', 'jhvhg', '7c4a8d09ca3762af61e59520943dc26494f8941b', 0);

-- --------------------------------------------------------

--
-- Table structure for table `warehouse`
--

CREATE TABLE `warehouse` (
  `warehouse_id` int(5) NOT NULL,
  `warehouse_name` varchar(150) DEFAULT NULL,
  `warehouse_address` varchar(200) DEFAULT NULL,
  `warehouse_phone` varchar(100) DEFAULT NULL,
  `warehouse_email` varchar(100) DEFAULT NULL,
  `warehouse_incharge` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `warehouse`
--

INSERT INTO `warehouse` (`warehouse_id`, `warehouse_name`, `warehouse_address`, `warehouse_phone`, `warehouse_email`, `warehouse_incharge`) VALUES
(1, 'dfgdfg', '', '', '', 'Super Admin');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`cat_id`);

--
-- Indexes for table `inventory`
--
ALTER TABLE `inventory`
  ADD PRIMARY KEY (`inventory_id`);

--
-- Indexes for table `invoice_out`
--
ALTER TABLE `invoice_out`
  ADD PRIMARY KEY (`invoice_id`);

--
-- Indexes for table `invoice_purchase`
--
ALTER TABLE `invoice_purchase`
  ADD PRIMARY KEY (`invoice_id`);

--
-- Indexes for table `items`
--
ALTER TABLE `items`
  ADD PRIMARY KEY (`item_id`);

--
-- Indexes for table `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`settings_id`);

--
-- Indexes for table `supplier`
--
ALTER TABLE `supplier`
  ADD PRIMARY KEY (`supplier_id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`user_id`);

--
-- Indexes for table `warehouse`
--
ALTER TABLE `warehouse`
  ADD PRIMARY KEY (`warehouse_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `cat_id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `inventory`
--
ALTER TABLE `inventory`
  MODIFY `inventory_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `invoice_out`
--
ALTER TABLE `invoice_out`
  MODIFY `invoice_id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `invoice_purchase`
--
ALTER TABLE `invoice_purchase`
  MODIFY `invoice_id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `items`
--
ALTER TABLE `items`
  MODIFY `item_id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `settings`
--
ALTER TABLE `settings`
  MODIFY `settings_id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `supplier`
--
ALTER TABLE `supplier`
  MODIFY `supplier_id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `user_id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `warehouse`
--
ALTER TABLE `warehouse`
  MODIFY `warehouse_id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
