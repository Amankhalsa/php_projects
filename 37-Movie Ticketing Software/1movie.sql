-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 06, 2018 at 07:06 AM
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
-- Database: `movie`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbz_actors`
--

CREATE TABLE `tbz_actors` (
  `id` int(250) NOT NULL,
  `actors_name` varchar(250) NOT NULL,
  `gender` varchar(250) NOT NULL,
  `role` varchar(250) NOT NULL COMMENT 'join->tbz_role-id as id,role_name as name',
  `dob` varchar(250) NOT NULL,
  `description` varchar(250) NOT NULL,
  `image` varchar(250) NOT NULL,
  `status` int(11) NOT NULL DEFAULT '1' COMMENT '0->inactive,1->active'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbz_actors`
--

INSERT INTO `tbz_actors` (`id`, `actors_name`, `gender`, `role`, `dob`, `description`, `image`, `status`) VALUES
(1, 'Mamooty', '', '1,2', '03/18/1970', '<p>He is a good actor and a director</p>\r\n', 'http://tammanager.com/movie/admin/uploads/1493719456_images_(1).jpg', 1),
(2, 'Mohanlal', '', '2,4', '08/20/1970', '<p>He was a good actor</p>\r\n', 'http://tammanager.com/movie/admin/uploads/1493719456_images_(1).jpg', 1),
(3, 'Prithviraj', '', '2', '04/23/1980', '<p>he is a good actor</p>\r\n', 'http://tammanager.com/movie/admin/uploads/1493719456_images_(1).jpg', 1),
(4, 'Haneef Adeni', '', '1', '05/21/1969', '<p>Director</p>\r\n', '', 1),
(5, 'Gopi Sunder', '', '6', '08/19/1975', '<p>Music director</p>\r\n', 'http://tammanager.com/movie/admin/uploads/1493719456_images_(1).jpg', 1),
(6, ' Prithviraj Sukumaran', '', '4', '10/26/1983', '<p>A good Producer</p>\r\n', 'http://tammanager.com/movie/admin/uploads/1493719456_images_(1).jpg', 1),
(7, ' Santosh Sivan', '', '4', '08/31/1984', '<p>producer</p>\r\n', 'http://tammanager.com/movie/admin/uploads/1493719456_images_(1).jpg', 1),
(8, 'Dulkar Salman', '', '2', '05/18/1988', '<p>A good actor</p>\r\n', 'http://tammanager.com/movie/admin/uploads/1493719456_images_(1).jpg', 1),
(9, 'Arya', '', '2', '10/12/1989', '<p>a good actor</p>\r\n', 'http://tammanager.com/movie/admin/uploads/1493719456_images_(1).jpg', 1),
(10, 'sneha', '', '3', '04/11/1983', '<p>a good actors</p>\r\n', 'http://tammanager.com/movie/admin/uploads/1493719456_images_(1).jpg', 1),
(11, 'Kavya Madavan', '', '3', '11/27/1985', '<p>a Good actress</p>\r\n', 'http://tammanager.com/movie/admin/uploads/1493719456_images_(1).jpg', 1),
(12, 'Salim Kumar', '', '2,5', '09/10/1980', '<p>A good actor and a comedian</p>\r\n', 'http://tammanager.com/movie/admin/uploads/1493719456_images_(1).jpg', 1),
(13, 'Manju varyar', '', '3', '11/28/1979', '<p>A good actress</p>\r\n', 'http://tammanager.com/movie/admin/uploads/1493719456_images_(1).jpg', 1),
(14, 'Mahesh Narayanan', '', '1', '06/20/1979', '<p>director</p>\r\n', 'http://tammanager.com/movie/admin/uploads/1493719456_images_(1).jpg', 1),
(15, 'Mahesh Narayanan', '', '10', '07/12/1984', '<p>screeplay</p>\r\n', 'http://tammanager.com/movie/admin/uploads/1493719456_images_(1).jpg', 1),
(16, 'P.V.shajiKumar', '', '10', '06/22/1979', '<p>Screen play</p>\r\n', 'http://tammanager.com/movie/admin/uploads/1493719456_images_(1).jpg', 1),
(17, 'Shaan Rahman', '', '6', '07/20/1979', '<p>Music director</p>\r\n', 'http://tammanager.com/movie/admin/uploads/1493719456_images_(1).jpg', 1),
(18, ' Anto Joseph', '', '4', '11/10/1986', '<p>Producers</p>\r\n', 'http://tammanager.com/movie/admin/uploads/1493719456_images_(1).jpg', 1),
(19, 'Shibin Becker', '', '4', '10/23/1984', '<p>Producer</p>\r\n', 'http://tammanager.com/movie/admin/uploads/1493719456_images_(1).jpg', 1),
(20, 'Kunchako Boban', '', '2', '07/09/1984', '<p>Actor</p>\r\n', 'http://tammanager.com/movie/admin/uploads/1493719456_images_(1).jpg', 1),
(21, 'Parvathy', '', '3', '11/28/1989', '<p>Actress</p>\r\n', 'http://tammanager.com/movie/admin/uploads/1493719456_images_(1).jpg', 1),
(22, 'Asif Ali', '', '2', '08/14/1990', '<p>Actor</p>\r\n', 'http://tammanager.com/movie/admin/uploads/1493719456_images_(1).jpg', 1),
(23, 'Fahad Fazzil', '', '2', '06/18/1985', '<p>Actor</p>\r\n', 'http://tammanager.com/movie/admin/uploads/1493719456_images_(1).jpg', 1),
(24, ' Arun Narayanan', '', '4', '06/18/1980', '<p>Producer</p>\r\n', 'http://tammanager.com/movie/admin/uploads/1493719456_images_(1).jpg', 1),
(25, 'Ranjith', '', '4', '03/21/1984', '<p>Producer</p>\r\n', 'http://tammanager.com/movie/admin/uploads/1493719456_images_(1).jpg', 1),
(26, ' Achu Rajamani', '', '6', '07/16/1984', '<p>Music director</p>\r\n', 'http://tammanager.com/movie/admin/uploads/1493719456_images_(1).jpg', 1),
(27, 'Om Prakash', '', '11', '10/24/1989', '<p>Cinematography</p>\r\n', 'http://tammanager.com/movie/admin/uploads/1493719456_images_(1).jpg', 1),
(28, ' Sujith Vaassudev', '', '11', '07/06/1984', '<p>cinematography</p>\r\n', 'http://tammanager.com/movie/admin/uploads/1493719456_images_(1).jpg', 1),
(29, 'Siddharth Vipin', '', '6', '10/10/1989', '<p>Music director</p>\r\n', 'http://tammanager.com/movie/admin/uploads/1493719456_images_(1).jpg', 1),
(30, 'Najim Arshad', '', '6', '09/21/1979', '<p>music director</p>\r\n', 'http://tammanager.com/movie/admin/uploads/1493719456_images_(1).jpg', 1),
(31, 'Nishaan', '', '2', '08/16/1989', '<p>A new good actor</p>\r\n', 'http://tammanager.com/movie/admin/uploads/1493719456_images_(1).jpg', 1),
(32, 'Ragini', '', '2', '06/07/1989', '<p>a good actor</p>\r\n', 'http://tammanager.com/movie/admin/uploads/1493719456_images_(1).jpg', 1),
(33, 'Leona', '', '2', '11/30/1990', '<p>a good actor</p>\r\n', 'http://tammanager.com/movie/admin/uploads/1493719456_images_(1).jpg', 1),
(34, 'Biju menon', '', '2', '10/18/1989', '<p>A good actor</p>\r\n', 'http://tammanager.com/movie/admin/uploads/1493719456_images_(1).jpg', 1),
(35, 'Anzar Khan', '', '1', '07/11/1994', '<p>A good director</p>\r\n', 'http://tammanager.com/movie/admin/uploads/1493719456_images_(1).jpg', 1),
(36, 'Sakthikulangara', '', '4', '11/20/1980', '<p>A good producer</p>\r\n', 'http://tammanager.com/movie/admin/uploads/1493719456_images_(1).jpg', 1),
(37, 'Emma Watson', '', '3', '07/25/2017', '<p>sdfdsgfdg</p>\r\n', 'http://tammanager.com/movie/admin/uploads/1500628027_download_(1).png', 1),
(38, 'Dan Stevens', '', '2', '07/27/2017', '<p>sadsdf</p>\r\n', 'http://tammanager.com/movie/admin/uploads/1500628079_download_(1).png', 1),
(39, 'Bill Condon', '', '1', '08/02/2017', '<p>sdfsdff</p>\r\n', 'http://tammanager.com/movie/admin/uploads/1500628125_download_(1).png', 1),
(40, 'David Elliot Hoberman', '', '4', '07/27/2017', '<p>dxfgdf</p>\r\n', 'http://tammanager.com/movie/admin/uploads/1500628175_download_(1).png', 1),
(41, 'Tom Holland', '', '2', '07/26/2017', '<p>sdfsdfsdf</p>\r\n', 'http://tammanager.com/movie/admin/uploads/1500629611_download_(1).png', 1),
(42, 'Jon Watts', '', '1', '07/25/2017', '<p>sefre</p>\r\n', 'http://tammanager.com/movie/admin/uploads/1500629729_download_(1).png', 1),
(43, 'Kevin Feige', '', '4', '07/26/2017', '<p>asadfs</p>\r\n', 'http://tammanager.com/movie/admin/uploads/1500629785_download_(1).png', 1),
(44, 'Xavier', '', '2', '08/31/2017', '<p>ewrwer</p>\r\n', 'http://tammanager.com/movie/admin/uploads/1502270538_download_(1).png', 1),
(45, 'Miranda otto', '', '3', '08/23/1989', '<p>edrfsdjrbtfh wedrfasert&nbsp;</p>\r\n', 'http://tammanager.com/movie/admin/uploads/1502433340_download_(1).png', 1);

-- --------------------------------------------------------

--
-- Table structure for table `tbz_admin`
--

CREATE TABLE `tbz_admin` (
  `id` int(11) NOT NULL,
  `name` varchar(225) NOT NULL,
  `password` varchar(225) NOT NULL,
  `email` varchar(225) NOT NULL,
  `user_type` int(11) NOT NULL DEFAULT '1',
  `phone` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL,
  `status` int(11) NOT NULL DEFAULT '1'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbz_admin`
--

INSERT INTO `tbz_admin` (`id`, `name`, `password`, `email`, `user_type`, `phone`, `image`, `status`) VALUES
(1, 'Admin', '21232f297a57a5a743894a0e4a801fc3', 'admin@admin.com', 1, '1234561236', 'http://tammanager.com/movie/admin/uploads/download_(1).png', 1);

-- --------------------------------------------------------

--
-- Table structure for table `tbz_banners`
--

CREATE TABLE `tbz_banners` (
  `id` int(11) NOT NULL,
  `banner_images` varchar(225) NOT NULL,
  `status` int(11) NOT NULL COMMENT '0->inactive, 1->active'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbz_banners`
--

INSERT INTO `tbz_banners` (`id`, `banner_images`, `status`) VALUES
(13, 'uploads/1495001025_Hadiyya_Poster_5.jpg', 0),
(14, 'uploads/1495001129_download.jpg', 0),
(19, 'uploads/1495001651_Ramante-Edanthottam-Malayalam-Movie-Kunchakko-Boban-Ranjith-Shankar-Anu-Sithara-News-Images-HD-Videos-Stills-Review-Preview-5.jpg', 0),
(18, 'uploads/1495001426_main.jpg', 0),
(17, 'uploads/1495001258_Hadiyya_Poster_5.jpg', 0),
(16, 'uploads/1495001251_Hadiyya_Poster_6.jpg', 0),
(15, 'uploads/1495001237_download_(1).jpg', 0),
(12, 'uploads/1495001014_Hadiyya_Poster_1.jpg', 0),
(20, 'uploads/1495001659_Hadiyya_Poster_5.jpg', 0),
(21, 'uploads/1495001674_main.jpg', 0),
(22, 'uploads/1500619205_cars3-webpageheader1-h1a-640x320-builder_53f99aa3.jpeg', 0),
(23, 'uploads/1500619296_download.jpg', 0),
(24, 'uploads/1500619315_images.jpg', 0),
(25, 'uploads/1500619339_55.jpg', 0),
(26, 'uploads/1500620287_f273186ebd6cf32a8c8cd9ccc796679e.jpg', 1),
(27, 'uploads/1500620366_download_(6).jpg', 0),
(28, 'uploads/1500620434_images_(2).jpg', 0),
(29, 'uploads/1500620682_image_19221b22.jpeg', 1),
(30, 'uploads/1500620813_maxresdefault.jpg', 0),
(31, 'uploads/1500621691_maxresdefault_(1).jpg', 1),
(32, 'uploads/1500621832_images_(4).jpg', 0),
(33, 'uploads/1500621927_dunkirk-poster.jpg', 0),
(34, 'uploads/1500622164_maxresdefault.jpg', 0),
(35, 'uploads/1500622281_55.jpg', 0),
(36, 'uploads/1502279606_image_19221b22.jpeg', 0);

-- --------------------------------------------------------

--
-- Table structure for table `tbz_booking_details`
--

CREATE TABLE `tbz_booking_details` (
  `id` int(250) NOT NULL,
  `show_id` varchar(11) NOT NULL,
  `date` varchar(200) NOT NULL,
  `no_ticket` varchar(50) NOT NULL,
  `seat_no` varchar(100) NOT NULL,
  `sub_total` varchar(200) NOT NULL,
  `booking_fees` varchar(200) NOT NULL,
  `service_tax` varchar(200) NOT NULL,
  `swachh_bharat_cess` varchar(200) NOT NULL,
  `Promocode_off` varchar(100) NOT NULL,
  `amount` varchar(50) NOT NULL,
  `booking_id` varchar(50) NOT NULL,
  `user_id` varchar(11) NOT NULL,
  `payment` varchar(50) NOT NULL,
  `status` varchar(50) NOT NULL,
  `txn_id` varchar(100) NOT NULL,
  `qr_code` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbz_booking_details`
--

INSERT INTO `tbz_booking_details` (`id`, `show_id`, `date`, `no_ticket`, `seat_no`, `sub_total`, `booking_fees`, `service_tax`, `swachh_bharat_cess`, `Promocode_off`, `amount`, `booking_id`, `user_id`, `payment`, `status`, `txn_id`, `qr_code`) VALUES
(1, '3', '2017-07-20 17:56:58', '1', 'E5', '100', '20', '2.8', '0.1', '', '123', 'TB81166', '1', '', 'Completed', '', ''),
(2, '3', '2017-07-20 18:21:52', '1', 'F7', '100', '20', '2.8', '0.1', '', '123', 'TB14183', '1', '', 'Completed', '', ''),
(3, '3', '2017-07-21 11:09:59', '1', 'J1', '163', '20', '2.8', '0.1', '', '186', 'TB11695', '2', '', 'Completed', '', ''),
(4, '3', '2017-07-21 11:54:39', '1', 'J3', '163', '20', '2.8', '0.1', '', '186', 'TB79047', '1', 'Cash', 'Completed', '', 'assets/public/img/qrcode/TB79047.png'),
(5, '8', '2017-07-21 14:53:14', '1', 'H5', '200', '20', '2.8', '0.1', '', '223', 'TB98776', '1', 'Cash', 'Completed', '', 'assets/public/img/qrcode/TB98776.png'),
(6, '15', '2017-08-11 12:38:34', '2', 'I3,I5', '400', '40', '5.6', '0.2', '', '446', 'TB53689', '1', 'Cash', 'Completed', '', 'assets/public/img/qrcode/TB53689.png');

-- --------------------------------------------------------

--
-- Table structure for table `tbz_booking_history`
--

CREATE TABLE `tbz_booking_history` (
  `id` int(11) NOT NULL,
  `event_id` varchar(255) NOT NULL COMMENT 'join->tbz_events-id as id,name as name',
  `user_id` varchar(255) NOT NULL COMMENT 'join->tbz_users-id as id,first_name as name',
  `details` varchar(255) NOT NULL,
  `status` enum('0','1') NOT NULL COMMENT '0->in-active,1->active'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tbz_booking_temporary`
--

CREATE TABLE `tbz_booking_temporary` (
  `id` int(11) NOT NULL,
  `session_id` varchar(100) NOT NULL,
  `user_id` int(11) NOT NULL,
  `show_id` int(11) NOT NULL,
  `seat` varchar(50) NOT NULL,
  `seat_ids` varchar(50) NOT NULL,
  `amount` varchar(50) NOT NULL,
  `time` datetime NOT NULL,
  `no_ticket` int(11) NOT NULL,
  `sub_total` varchar(100) NOT NULL,
  `booking_fees` varchar(100) NOT NULL,
  `service_tax` varchar(100) NOT NULL,
  `swachh_bharat_cess` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbz_booking_temporary`
--

INSERT INTO `tbz_booking_temporary` (`id`, `session_id`, `user_id`, `show_id`, `seat`, `seat_ids`, `amount`, `time`, `no_ticket`, `sub_total`, `booking_fees`, `service_tax`, `swachh_bharat_cess`) VALUES
(8, '39717359b7dcfbdce6cb56909dee3c4652bbc448', 1, 15, 'J2', 'J1', '223', '2017-08-14 12:52:55', 1, '200', '20', '2.8', '0.1');

-- --------------------------------------------------------

--
-- Table structure for table `tbz_category`
--

CREATE TABLE `tbz_category` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `status` int(11) NOT NULL DEFAULT '1' COMMENT '0->inactive,1->active'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbz_category`
--

INSERT INTO `tbz_category` (`id`, `name`, `status`) VALUES
(1, 'Movies', 1),
(2, 'Sports', 1),
(3, 'Entertainment', 1),
(6, 'Robert', 1),
(7, 'jklhkdg', 0),
(8, 'ghjhkgjkg', 0),
(9, 'dfgd', 0);

-- --------------------------------------------------------

--
-- Table structure for table `tbz_chinema`
--

CREATE TABLE `tbz_chinema` (
  `id` int(10) NOT NULL,
  `name` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL,
  `location` varchar(200) NOT NULL COMMENT 'join->tbz_location-location',
  `city_dup` varchar(250) NOT NULL,
  `address` varchar(200) NOT NULL,
  `user_id` int(10) NOT NULL COMMENT 'join->tbz_users-id as id,email as name'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbz_chinema`
--

INSERT INTO `tbz_chinema` (`id`, `name`, `image`, `location`, `city_dup`, `address`, `user_id`) VALUES
(1, 'PVR LuLu', 'assets/public/img/uploads/pvr-500-voucher-at-241.jpg', '1', 'kochi', ' Lulu Mall, NH 47 Entrance, Nethaji Nagar, Edappally, Kochi, Kerala 682025', 2),
(2, 'Cinepolis', 'assets/public/img/uploads/CP_rmdNUcAIH0Y5.jpg', '1', 'kochi', ' 4th Floor, Oberon Mall, Salem - Kochi - Kanyakumari Hwy, Ernakulam, Kerala 682024', 2),
(3, 'Anand Theater', 'assets/public/img/uploads/images.jpg', '2', 'kottayam', 'TB Rd, Kottayam, Kerala 686001', 2),
(4, 'asdsadsa', 'assets/public/img/uploads/ebcab.png', '2', 'asdasdsad', 'sadasdasdas', 2),
(5, 'Tes', 'assets/public/img/uploads/category_icon5.png', '1', 'Kochi', 'TEST Address', 2);

-- --------------------------------------------------------

--
-- Table structure for table `tbz_chinema_screen`
--

CREATE TABLE `tbz_chinema_screen` (
  `id` int(11) NOT NULL,
  `screen_name` varchar(255) NOT NULL,
  `cinemas_id` varchar(255) NOT NULL,
  `column` int(11) NOT NULL,
  `row` int(11) NOT NULL,
  `chair_align` varchar(25) NOT NULL,
  `layout` longtext NOT NULL,
  `preview` longtext NOT NULL,
  `status` varchar(25) NOT NULL COMMENT '0->in-active,1->active'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbz_chinema_screen`
--

INSERT INTO `tbz_chinema_screen` (`id`, `screen_name`, `cinemas_id`, `column`, `row`, `chair_align`, `layout`, `preview`, `status`) VALUES
(8, '1', '1', 10, 10, 'Left', '[{\"0\":{\"check\":true,\"number\":1},\"1\":{\"check\":true,\"number\":2},\"2\":{\"check\":true,\"number\":3},\"3\":{\"check\":true,\"number\":4},\"4\":{\"check\":true,\"number\":5},\"5\":{\"check\":false,\"number\":6},\"6\":{\"check\":true,\"number\":6},\"7\":{\"check\":true,\"number\":7},\"8\":{\"check\":true,\"number\":8},\"9\":{\"check\":true,\"number\":9},\"rowname\":{\"value\":\"J\",\"disable\":false},\"price\":{\"value\":\"200\",\"disable\":false},\"type\":{\"value\":\"Gold\",\"disable\":false},\"row_index\":1},{\"0\":{\"check\":true,\"number\":1},\"1\":{\"check\":true,\"number\":2},\"2\":{\"check\":true,\"number\":3},\"3\":{\"check\":true,\"number\":4},\"4\":{\"check\":true,\"number\":5},\"5\":{\"check\":false,\"number\":6},\"6\":{\"check\":true,\"number\":6},\"7\":{\"check\":true,\"number\":7},\"8\":{\"check\":true,\"number\":8},\"9\":{\"check\":true,\"number\":9},\"rowname\":{\"value\":\"I\",\"disable\":false},\"price\":{\"value\":\"200\",\"disable\":false},\"type\":{\"value\":\"Gold\",\"disable\":false},\"row_index\":2},{\"0\":{\"check\":true,\"number\":1},\"1\":{\"check\":true,\"number\":2},\"2\":{\"check\":true,\"number\":3},\"3\":{\"check\":true,\"number\":4},\"4\":{\"check\":true,\"number\":5},\"5\":{\"check\":false,\"number\":6},\"6\":{\"check\":true,\"number\":6},\"7\":{\"check\":true,\"number\":7},\"8\":{\"check\":true,\"number\":8},\"9\":{\"check\":true,\"number\":9},\"rowname\":{\"value\":\"H\",\"disable\":false},\"price\":{\"value\":\"200\",\"disable\":false},\"type\":{\"value\":\"Gold\",\"disable\":false},\"row_index\":3},{\"0\":{\"check\":true,\"number\":1},\"1\":{\"check\":true,\"number\":2},\"2\":{\"check\":true,\"number\":3},\"3\":{\"check\":true,\"number\":4},\"4\":{\"check\":true,\"number\":5},\"5\":{\"check\":false,\"number\":6},\"6\":{\"check\":true,\"number\":6},\"7\":{\"check\":true,\"number\":7},\"8\":{\"check\":true,\"number\":8},\"9\":{\"check\":true,\"number\":9},\"rowname\":{\"value\":\"G\",\"disable\":false},\"price\":{\"value\":\"150\",\"disable\":false},\"type\":{\"value\":\"Diamond\",\"disable\":false},\"row_index\":4},{\"0\":{\"check\":true,\"number\":1},\"1\":{\"check\":true,\"number\":2},\"2\":{\"check\":true,\"number\":3},\"3\":{\"check\":true,\"number\":4},\"4\":{\"check\":true,\"number\":5},\"5\":{\"check\":false,\"number\":6},\"6\":{\"check\":true,\"number\":6},\"7\":{\"check\":true,\"number\":7},\"8\":{\"check\":true,\"number\":8},\"9\":{\"check\":true,\"number\":9},\"rowname\":{\"value\":\"F\",\"disable\":false},\"price\":{\"value\":\"150\",\"disable\":false},\"type\":{\"value\":\"Diamond\",\"disable\":false},\"row_index\":5},{\"0\":{\"check\":true,\"number\":1},\"1\":{\"check\":true,\"number\":2},\"2\":{\"check\":true,\"number\":3},\"3\":{\"check\":true,\"number\":4},\"4\":{\"check\":true,\"number\":5},\"5\":{\"check\":false,\"number\":6},\"6\":{\"check\":true,\"number\":6},\"7\":{\"check\":true,\"number\":7},\"8\":{\"check\":true,\"number\":8},\"9\":{\"check\":true,\"number\":9},\"rowname\":{\"value\":\"E\",\"disable\":false},\"price\":{\"value\":\"150\",\"disable\":false},\"type\":{\"value\":\"Diamond\",\"disable\":false},\"row_index\":6},{\"0\":{\"check\":true,\"number\":1},\"1\":{\"check\":true,\"number\":2},\"2\":{\"check\":true,\"number\":3},\"3\":{\"check\":true,\"number\":4},\"4\":{\"check\":true,\"number\":5},\"5\":{\"check\":false,\"number\":6},\"6\":{\"check\":true,\"number\":6},\"7\":{\"check\":true,\"number\":7},\"8\":{\"check\":true,\"number\":8},\"9\":{\"check\":true,\"number\":9},\"rowname\":{\"value\":\"D\",\"disable\":false},\"price\":{\"value\":\"150\",\"disable\":false},\"type\":{\"value\":\"Diamond\",\"disable\":false},\"row_index\":7},{\"0\":{\"check\":true,\"number\":1},\"1\":{\"check\":true,\"number\":2},\"2\":{\"check\":true,\"number\":3},\"3\":{\"check\":true,\"number\":4},\"4\":{\"check\":true,\"number\":5},\"5\":{\"check\":false,\"number\":6},\"6\":{\"check\":true,\"number\":6},\"7\":{\"check\":true,\"number\":7},\"8\":{\"check\":true,\"number\":8},\"9\":{\"check\":true,\"number\":9},\"rowname\":{\"value\":\"C\",\"disable\":false},\"price\":{\"value\":\"150\",\"disable\":false},\"type\":{\"value\":\"Diamond\",\"disable\":false},\"row_index\":8},{\"0\":{\"check\":true,\"number\":1},\"1\":{\"check\":true,\"number\":2},\"2\":{\"check\":true,\"number\":3},\"3\":{\"check\":true,\"number\":4},\"4\":{\"check\":true,\"number\":5},\"5\":{\"check\":false,\"number\":6},\"6\":{\"check\":true,\"number\":6},\"7\":{\"check\":true,\"number\":7},\"8\":{\"check\":true,\"number\":8},\"9\":{\"check\":true,\"number\":9},\"rowname\":{\"value\":\"B\",\"disable\":false},\"price\":{\"value\":\"100\",\"disable\":false},\"type\":{\"value\":\"Silver\",\"disable\":false},\"row_index\":9},{\"0\":{\"check\":true,\"number\":1},\"1\":{\"check\":true,\"number\":2},\"2\":{\"check\":true,\"number\":3},\"3\":{\"check\":true,\"number\":4},\"4\":{\"check\":true,\"number\":5},\"5\":{\"check\":false,\"number\":6},\"6\":{\"check\":true,\"number\":6},\"7\":{\"check\":true,\"number\":7},\"8\":{\"check\":true,\"number\":8},\"9\":{\"check\":true,\"number\":9},\"rowname\":{\"value\":\"A\",\"disable\":false},\"price\":{\"value\":\"100\",\"disable\":false},\"type\":{\"value\":\"Silver\",\"disable\":false},\"row_index\":10}]', '{\"Gold-200\":[{\"0\":{\"check\":true,\"number\":1},\"1\":{\"check\":true,\"number\":2},\"2\":{\"check\":true,\"number\":3},\"3\":{\"check\":true,\"number\":4},\"4\":{\"check\":true,\"number\":5},\"5\":{\"check\":false,\"number\":6},\"6\":{\"check\":true,\"number\":6},\"7\":{\"check\":true,\"number\":7},\"8\":{\"check\":true,\"number\":8},\"9\":{\"check\":true,\"number\":9},\"rowname\":{\"value\":\"J\",\"disable\":false},\"price\":{\"value\":\"200\",\"disable\":false},\"type\":{\"value\":\"Gold\",\"disable\":false},\"row_index\":1},{\"0\":{\"check\":true,\"number\":1},\"1\":{\"check\":true,\"number\":2},\"2\":{\"check\":true,\"number\":3},\"3\":{\"check\":true,\"number\":4},\"4\":{\"check\":true,\"number\":5},\"5\":{\"check\":false,\"number\":6},\"6\":{\"check\":true,\"number\":6},\"7\":{\"check\":true,\"number\":7},\"8\":{\"check\":true,\"number\":8},\"9\":{\"check\":true,\"number\":9},\"rowname\":{\"value\":\"I\",\"disable\":false},\"price\":{\"value\":\"200\",\"disable\":false},\"type\":{\"value\":\"Gold\",\"disable\":false},\"row_index\":2},{\"0\":{\"check\":true,\"number\":1},\"1\":{\"check\":true,\"number\":2},\"2\":{\"check\":true,\"number\":3},\"3\":{\"check\":true,\"number\":4},\"4\":{\"check\":true,\"number\":5},\"5\":{\"check\":false,\"number\":6},\"6\":{\"check\":true,\"number\":6},\"7\":{\"check\":true,\"number\":7},\"8\":{\"check\":true,\"number\":8},\"9\":{\"check\":true,\"number\":9},\"rowname\":{\"value\":\"H\",\"disable\":false},\"price\":{\"value\":\"200\",\"disable\":false},\"type\":{\"value\":\"Gold\",\"disable\":false},\"row_index\":3}],\"Diamond-150\":[{\"0\":{\"check\":true,\"number\":1},\"1\":{\"check\":true,\"number\":2},\"2\":{\"check\":true,\"number\":3},\"3\":{\"check\":true,\"number\":4},\"4\":{\"check\":true,\"number\":5},\"5\":{\"check\":false,\"number\":6},\"6\":{\"check\":true,\"number\":6},\"7\":{\"check\":true,\"number\":7},\"8\":{\"check\":true,\"number\":8},\"9\":{\"check\":true,\"number\":9},\"rowname\":{\"value\":\"G\",\"disable\":false},\"price\":{\"value\":\"150\",\"disable\":false},\"type\":{\"value\":\"Diamond\",\"disable\":false},\"row_index\":4},{\"0\":{\"check\":true,\"number\":1},\"1\":{\"check\":true,\"number\":2},\"2\":{\"check\":true,\"number\":3},\"3\":{\"check\":true,\"number\":4},\"4\":{\"check\":true,\"number\":5},\"5\":{\"check\":false,\"number\":6},\"6\":{\"check\":true,\"number\":6},\"7\":{\"check\":true,\"number\":7},\"8\":{\"check\":true,\"number\":8},\"9\":{\"check\":true,\"number\":9},\"rowname\":{\"value\":\"F\",\"disable\":false},\"price\":{\"value\":\"150\",\"disable\":false},\"type\":{\"value\":\"Diamond\",\"disable\":false},\"row_index\":5},{\"0\":{\"check\":true,\"number\":1},\"1\":{\"check\":true,\"number\":2},\"2\":{\"check\":true,\"number\":3},\"3\":{\"check\":true,\"number\":4},\"4\":{\"check\":true,\"number\":5},\"5\":{\"check\":false,\"number\":6},\"6\":{\"check\":true,\"number\":6},\"7\":{\"check\":true,\"number\":7},\"8\":{\"check\":true,\"number\":8},\"9\":{\"check\":true,\"number\":9},\"rowname\":{\"value\":\"E\",\"disable\":false},\"price\":{\"value\":\"150\",\"disable\":false},\"type\":{\"value\":\"Diamond\",\"disable\":false},\"row_index\":6},{\"0\":{\"check\":true,\"number\":1},\"1\":{\"check\":true,\"number\":2},\"2\":{\"check\":true,\"number\":3},\"3\":{\"check\":true,\"number\":4},\"4\":{\"check\":true,\"number\":5},\"5\":{\"check\":false,\"number\":6},\"6\":{\"check\":true,\"number\":6},\"7\":{\"check\":true,\"number\":7},\"8\":{\"check\":true,\"number\":8},\"9\":{\"check\":true,\"number\":9},\"rowname\":{\"value\":\"D\",\"disable\":false},\"price\":{\"value\":\"150\",\"disable\":false},\"type\":{\"value\":\"Diamond\",\"disable\":false},\"row_index\":7},{\"0\":{\"check\":true,\"number\":1},\"1\":{\"check\":true,\"number\":2},\"2\":{\"check\":true,\"number\":3},\"3\":{\"check\":true,\"number\":4},\"4\":{\"check\":true,\"number\":5},\"5\":{\"check\":false,\"number\":6},\"6\":{\"check\":true,\"number\":6},\"7\":{\"check\":true,\"number\":7},\"8\":{\"check\":true,\"number\":8},\"9\":{\"check\":true,\"number\":9},\"rowname\":{\"value\":\"C\",\"disable\":false},\"price\":{\"value\":\"150\",\"disable\":false},\"type\":{\"value\":\"Diamond\",\"disable\":false},\"row_index\":8}],\"Silver-100\":[{\"0\":{\"check\":true,\"number\":1},\"1\":{\"check\":true,\"number\":2},\"2\":{\"check\":true,\"number\":3},\"3\":{\"check\":true,\"number\":4},\"4\":{\"check\":true,\"number\":5},\"5\":{\"check\":false,\"number\":6},\"6\":{\"check\":true,\"number\":6},\"7\":{\"check\":true,\"number\":7},\"8\":{\"check\":true,\"number\":8},\"9\":{\"check\":true,\"number\":9},\"rowname\":{\"value\":\"B\",\"disable\":false},\"price\":{\"value\":\"100\",\"disable\":false},\"type\":{\"value\":\"Silver\",\"disable\":false},\"row_index\":9},{\"0\":{\"check\":true,\"number\":1},\"1\":{\"check\":true,\"number\":2},\"2\":{\"check\":true,\"number\":3},\"3\":{\"check\":true,\"number\":4},\"4\":{\"check\":true,\"number\":5},\"5\":{\"check\":false,\"number\":6},\"6\":{\"check\":true,\"number\":6},\"7\":{\"check\":true,\"number\":7},\"8\":{\"check\":true,\"number\":8},\"9\":{\"check\":true,\"number\":9},\"rowname\":{\"value\":\"A\",\"disable\":false},\"price\":{\"value\":\"100\",\"disable\":false},\"type\":{\"value\":\"Silver\",\"disable\":false},\"row_index\":10}]}', '1'),
(9, '1', '2', 10, 10, 'Left', '[{\"0\":{\"check\":true,\"number\":1},\"1\":{\"check\":true,\"number\":2},\"2\":{\"check\":true,\"number\":3},\"3\":{\"check\":true,\"number\":4},\"4\":{\"check\":true,\"number\":5},\"5\":{\"check\":true,\"number\":6},\"6\":{\"check\":true,\"number\":7},\"7\":{\"check\":true,\"number\":8},\"8\":{\"check\":true,\"number\":9},\"9\":{\"check\":true,\"number\":10},\"rowname\":{\"value\":\"J\",\"disable\":false},\"price\":{\"value\":\"250\",\"disable\":false},\"type\":{\"value\":\"Premium\",\"disable\":false},\"row_index\":1},{\"0\":{\"check\":true,\"number\":1},\"1\":{\"check\":true,\"number\":2},\"2\":{\"check\":true,\"number\":3},\"3\":{\"check\":true,\"number\":4},\"4\":{\"check\":true,\"number\":5},\"5\":{\"check\":true,\"number\":6},\"6\":{\"check\":true,\"number\":7},\"7\":{\"check\":true,\"number\":8},\"8\":{\"check\":true,\"number\":9},\"9\":{\"check\":true,\"number\":10},\"rowname\":{\"value\":\"I\",\"disable\":false},\"price\":{\"value\":\"250\",\"disable\":false},\"type\":{\"value\":\"Premium\",\"disable\":false},\"row_index\":2},{\"0\":{\"check\":true,\"number\":1},\"1\":{\"check\":true,\"number\":2},\"2\":{\"check\":true,\"number\":3},\"3\":{\"check\":true,\"number\":4},\"4\":{\"check\":true,\"number\":5},\"5\":{\"check\":true,\"number\":6},\"6\":{\"check\":true,\"number\":7},\"7\":{\"check\":true,\"number\":8},\"8\":{\"check\":true,\"number\":9},\"9\":{\"check\":true,\"number\":10},\"rowname\":{\"value\":\"H\",\"disable\":false},\"price\":{\"value\":\"250\",\"disable\":false},\"type\":{\"value\":\"Premium\",\"disable\":false},\"row_index\":3},{\"0\":{\"check\":true,\"number\":1},\"1\":{\"check\":true,\"number\":2},\"2\":{\"check\":true,\"number\":3},\"3\":{\"check\":true,\"number\":4},\"4\":{\"check\":true,\"number\":5},\"5\":{\"check\":true,\"number\":6},\"6\":{\"check\":true,\"number\":7},\"7\":{\"check\":true,\"number\":8},\"8\":{\"check\":true,\"number\":9},\"9\":{\"check\":true,\"number\":10},\"rowname\":{\"value\":\"G\",\"disable\":false},\"price\":{\"value\":\"150\",\"disable\":false},\"type\":{\"value\":\"Executive\",\"disable\":false},\"row_index\":4},{\"0\":{\"check\":true,\"number\":1},\"1\":{\"check\":true,\"number\":2},\"2\":{\"check\":true,\"number\":3},\"3\":{\"check\":true,\"number\":4},\"4\":{\"check\":true,\"number\":5},\"5\":{\"check\":true,\"number\":6},\"6\":{\"check\":true,\"number\":7},\"7\":{\"check\":true,\"number\":8},\"8\":{\"check\":true,\"number\":9},\"9\":{\"check\":true,\"number\":10},\"rowname\":{\"value\":\"F\",\"disable\":false},\"price\":{\"value\":\"150\",\"disable\":false},\"type\":{\"value\":\"Executive\",\"disable\":false},\"row_index\":5},{\"0\":{\"check\":true,\"number\":1},\"1\":{\"check\":true,\"number\":2},\"2\":{\"check\":true,\"number\":3},\"3\":{\"check\":true,\"number\":4},\"4\":{\"check\":true,\"number\":5},\"5\":{\"check\":true,\"number\":6},\"6\":{\"check\":true,\"number\":7},\"7\":{\"check\":true,\"number\":8},\"8\":{\"check\":true,\"number\":9},\"9\":{\"check\":true,\"number\":10},\"rowname\":{\"value\":\"E\",\"disable\":false},\"price\":{\"value\":\"150\",\"disable\":false},\"type\":{\"value\":\"Executive\",\"disable\":false},\"row_index\":6},{\"0\":{\"check\":true,\"number\":1},\"1\":{\"check\":true,\"number\":2},\"2\":{\"check\":true,\"number\":3},\"3\":{\"check\":true,\"number\":4},\"4\":{\"check\":true,\"number\":5},\"5\":{\"check\":true,\"number\":6},\"6\":{\"check\":true,\"number\":7},\"7\":{\"check\":true,\"number\":8},\"8\":{\"check\":true,\"number\":9},\"9\":{\"check\":true,\"number\":10},\"rowname\":{\"value\":\"D\",\"disable\":false},\"price\":{\"value\":\"150\",\"disable\":false},\"type\":{\"value\":\"Executive\",\"disable\":false},\"row_index\":7},{\"0\":{\"check\":true,\"number\":1},\"1\":{\"check\":true,\"number\":2},\"2\":{\"check\":true,\"number\":3},\"3\":{\"check\":true,\"number\":4},\"4\":{\"check\":true,\"number\":5},\"5\":{\"check\":true,\"number\":6},\"6\":{\"check\":true,\"number\":7},\"7\":{\"check\":true,\"number\":8},\"8\":{\"check\":true,\"number\":9},\"9\":{\"check\":true,\"number\":10},\"rowname\":{\"value\":\"C\",\"disable\":false},\"price\":{\"value\":\"150\",\"disable\":false},\"type\":{\"value\":\"Executive\",\"disable\":false},\"row_index\":8},{\"0\":{\"check\":true,\"number\":1},\"1\":{\"check\":true,\"number\":2},\"2\":{\"check\":true,\"number\":3},\"3\":{\"check\":true,\"number\":4},\"4\":{\"check\":true,\"number\":5},\"5\":{\"check\":true,\"number\":6},\"6\":{\"check\":true,\"number\":7},\"7\":{\"check\":true,\"number\":8},\"8\":{\"check\":true,\"number\":9},\"9\":{\"check\":true,\"number\":10},\"rowname\":{\"value\":\"B\",\"disable\":false},\"price\":{\"value\":\"100\",\"disable\":false},\"type\":{\"value\":\"Normal\",\"disable\":false},\"row_index\":9},{\"0\":{\"check\":true,\"number\":1},\"1\":{\"check\":true,\"number\":2},\"2\":{\"check\":true,\"number\":3},\"3\":{\"check\":true,\"number\":4},\"4\":{\"check\":true,\"number\":5},\"5\":{\"check\":true,\"number\":6},\"6\":{\"check\":true,\"number\":7},\"7\":{\"check\":true,\"number\":8},\"8\":{\"check\":true,\"number\":9},\"9\":{\"check\":true,\"number\":10},\"rowname\":{\"value\":\"A\",\"disable\":false},\"price\":{\"value\":\"100\",\"disable\":false},\"type\":{\"value\":\"Normal\",\"disable\":false},\"row_index\":10}]', '{\"Premium-250\":[{\"0\":{\"check\":true,\"number\":1},\"1\":{\"check\":true,\"number\":2},\"2\":{\"check\":true,\"number\":3},\"3\":{\"check\":true,\"number\":4},\"4\":{\"check\":true,\"number\":5},\"5\":{\"check\":true,\"number\":6},\"6\":{\"check\":true,\"number\":7},\"7\":{\"check\":true,\"number\":8},\"8\":{\"check\":true,\"number\":9},\"9\":{\"check\":true,\"number\":10},\"rowname\":{\"value\":\"J\",\"disable\":false},\"price\":{\"value\":\"250\",\"disable\":false},\"type\":{\"value\":\"Premium\",\"disable\":false},\"row_index\":1},{\"0\":{\"check\":true,\"number\":1},\"1\":{\"check\":true,\"number\":2},\"2\":{\"check\":true,\"number\":3},\"3\":{\"check\":true,\"number\":4},\"4\":{\"check\":true,\"number\":5},\"5\":{\"check\":true,\"number\":6},\"6\":{\"check\":true,\"number\":7},\"7\":{\"check\":true,\"number\":8},\"8\":{\"check\":true,\"number\":9},\"9\":{\"check\":true,\"number\":10},\"rowname\":{\"value\":\"I\",\"disable\":false},\"price\":{\"value\":\"250\",\"disable\":false},\"type\":{\"value\":\"Premium\",\"disable\":false},\"row_index\":2},{\"0\":{\"check\":true,\"number\":1},\"1\":{\"check\":true,\"number\":2},\"2\":{\"check\":true,\"number\":3},\"3\":{\"check\":true,\"number\":4},\"4\":{\"check\":true,\"number\":5},\"5\":{\"check\":true,\"number\":6},\"6\":{\"check\":true,\"number\":7},\"7\":{\"check\":true,\"number\":8},\"8\":{\"check\":true,\"number\":9},\"9\":{\"check\":true,\"number\":10},\"rowname\":{\"value\":\"H\",\"disable\":false},\"price\":{\"value\":\"250\",\"disable\":false},\"type\":{\"value\":\"Premium\",\"disable\":false},\"row_index\":3}],\"Executive-150\":[{\"0\":{\"check\":true,\"number\":1},\"1\":{\"check\":true,\"number\":2},\"2\":{\"check\":true,\"number\":3},\"3\":{\"check\":true,\"number\":4},\"4\":{\"check\":true,\"number\":5},\"5\":{\"check\":true,\"number\":6},\"6\":{\"check\":true,\"number\":7},\"7\":{\"check\":true,\"number\":8},\"8\":{\"check\":true,\"number\":9},\"9\":{\"check\":true,\"number\":10},\"rowname\":{\"value\":\"G\",\"disable\":false},\"price\":{\"value\":\"150\",\"disable\":false},\"type\":{\"value\":\"Executive\",\"disable\":false},\"row_index\":4},{\"0\":{\"check\":true,\"number\":1},\"1\":{\"check\":true,\"number\":2},\"2\":{\"check\":true,\"number\":3},\"3\":{\"check\":true,\"number\":4},\"4\":{\"check\":true,\"number\":5},\"5\":{\"check\":true,\"number\":6},\"6\":{\"check\":true,\"number\":7},\"7\":{\"check\":true,\"number\":8},\"8\":{\"check\":true,\"number\":9},\"9\":{\"check\":true,\"number\":10},\"rowname\":{\"value\":\"F\",\"disable\":false},\"price\":{\"value\":\"150\",\"disable\":false},\"type\":{\"value\":\"Executive\",\"disable\":false},\"row_index\":5},{\"0\":{\"check\":true,\"number\":1},\"1\":{\"check\":true,\"number\":2},\"2\":{\"check\":true,\"number\":3},\"3\":{\"check\":true,\"number\":4},\"4\":{\"check\":true,\"number\":5},\"5\":{\"check\":true,\"number\":6},\"6\":{\"check\":true,\"number\":7},\"7\":{\"check\":true,\"number\":8},\"8\":{\"check\":true,\"number\":9},\"9\":{\"check\":true,\"number\":10},\"rowname\":{\"value\":\"E\",\"disable\":false},\"price\":{\"value\":\"150\",\"disable\":false},\"type\":{\"value\":\"Executive\",\"disable\":false},\"row_index\":6},{\"0\":{\"check\":true,\"number\":1},\"1\":{\"check\":true,\"number\":2},\"2\":{\"check\":true,\"number\":3},\"3\":{\"check\":true,\"number\":4},\"4\":{\"check\":true,\"number\":5},\"5\":{\"check\":true,\"number\":6},\"6\":{\"check\":true,\"number\":7},\"7\":{\"check\":true,\"number\":8},\"8\":{\"check\":true,\"number\":9},\"9\":{\"check\":true,\"number\":10},\"rowname\":{\"value\":\"D\",\"disable\":false},\"price\":{\"value\":\"150\",\"disable\":false},\"type\":{\"value\":\"Executive\",\"disable\":false},\"row_index\":7},{\"0\":{\"check\":true,\"number\":1},\"1\":{\"check\":true,\"number\":2},\"2\":{\"check\":true,\"number\":3},\"3\":{\"check\":true,\"number\":4},\"4\":{\"check\":true,\"number\":5},\"5\":{\"check\":true,\"number\":6},\"6\":{\"check\":true,\"number\":7},\"7\":{\"check\":true,\"number\":8},\"8\":{\"check\":true,\"number\":9},\"9\":{\"check\":true,\"number\":10},\"rowname\":{\"value\":\"C\",\"disable\":false},\"price\":{\"value\":\"150\",\"disable\":false},\"type\":{\"value\":\"Executive\",\"disable\":false},\"row_index\":8}],\"Normal-100\":[{\"0\":{\"check\":true,\"number\":1},\"1\":{\"check\":true,\"number\":2},\"2\":{\"check\":true,\"number\":3},\"3\":{\"check\":true,\"number\":4},\"4\":{\"check\":true,\"number\":5},\"5\":{\"check\":true,\"number\":6},\"6\":{\"check\":true,\"number\":7},\"7\":{\"check\":true,\"number\":8},\"8\":{\"check\":true,\"number\":9},\"9\":{\"check\":true,\"number\":10},\"rowname\":{\"value\":\"B\",\"disable\":false},\"price\":{\"value\":\"100\",\"disable\":false},\"type\":{\"value\":\"Normal\",\"disable\":false},\"row_index\":9},{\"0\":{\"check\":true,\"number\":1},\"1\":{\"check\":true,\"number\":2},\"2\":{\"check\":true,\"number\":3},\"3\":{\"check\":true,\"number\":4},\"4\":{\"check\":true,\"number\":5},\"5\":{\"check\":true,\"number\":6},\"6\":{\"check\":true,\"number\":7},\"7\":{\"check\":true,\"number\":8},\"8\":{\"check\":true,\"number\":9},\"9\":{\"check\":true,\"number\":10},\"rowname\":{\"value\":\"A\",\"disable\":false},\"price\":{\"value\":\"100\",\"disable\":false},\"type\":{\"value\":\"Normal\",\"disable\":false},\"row_index\":10}]}', '1'),
(10, '1', '3', 10, 10, 'Left', '[{\"0\":{\"check\":true,\"number\":1},\"1\":{\"check\":true,\"number\":2},\"2\":{\"check\":true,\"number\":3},\"3\":{\"check\":true,\"number\":4},\"4\":{\"check\":false,\"number\":5},\"5\":{\"check\":true,\"number\":5},\"6\":{\"check\":true,\"number\":6},\"7\":{\"check\":true,\"number\":7},\"8\":{\"check\":true,\"number\":8},\"9\":{\"check\":true,\"number\":9},\"rowname\":{\"value\":\"J\",\"disable\":false},\"price\":{\"value\":\"163\",\"disable\":false},\"type\":{\"value\":\"Primary\",\"disable\":false},\"row_index\":1},{\"0\":{\"check\":true,\"number\":1},\"1\":{\"check\":true,\"number\":2},\"2\":{\"check\":true,\"number\":3},\"3\":{\"check\":true,\"number\":4},\"4\":{\"check\":false,\"number\":5},\"5\":{\"check\":true,\"number\":5},\"6\":{\"check\":true,\"number\":6},\"7\":{\"check\":true,\"number\":7},\"8\":{\"check\":true,\"number\":8},\"9\":{\"check\":true,\"number\":9},\"rowname\":{\"value\":\"I\",\"disable\":false},\"price\":{\"value\":\"163\",\"disable\":false},\"type\":{\"value\":\"Primary\",\"disable\":false},\"row_index\":2},{\"0\":{\"check\":true,\"number\":1},\"1\":{\"check\":true,\"number\":2},\"2\":{\"check\":true,\"number\":3},\"3\":{\"check\":true,\"number\":4},\"4\":{\"check\":false,\"number\":5},\"5\":{\"check\":true,\"number\":5},\"6\":{\"check\":true,\"number\":6},\"7\":{\"check\":true,\"number\":7},\"8\":{\"check\":true,\"number\":8},\"9\":{\"check\":true,\"number\":9},\"rowname\":{\"value\":\"H\",\"disable\":false},\"price\":{\"value\":\"163\",\"disable\":false},\"type\":{\"value\":\"Primary\",\"disable\":false},\"row_index\":3},{\"0\":{\"check\":true,\"number\":1},\"1\":{\"check\":true,\"number\":2},\"2\":{\"check\":true,\"number\":3},\"3\":{\"check\":true,\"number\":4},\"4\":{\"check\":false,\"number\":5},\"5\":{\"check\":true,\"number\":5},\"6\":{\"check\":true,\"number\":6},\"7\":{\"check\":true,\"number\":7},\"8\":{\"check\":true,\"number\":8},\"9\":{\"check\":true,\"number\":9},\"rowname\":{\"value\":\"G\",\"disable\":false},\"price\":{\"value\":\"100\",\"disable\":false},\"type\":{\"value\":\"Normal\",\"disable\":false},\"row_index\":4},{\"0\":{\"check\":true,\"number\":1},\"1\":{\"check\":true,\"number\":2},\"2\":{\"check\":true,\"number\":3},\"3\":{\"check\":true,\"number\":4},\"4\":{\"check\":false,\"number\":5},\"5\":{\"check\":true,\"number\":5},\"6\":{\"check\":true,\"number\":6},\"7\":{\"check\":true,\"number\":7},\"8\":{\"check\":true,\"number\":8},\"9\":{\"check\":true,\"number\":9},\"rowname\":{\"value\":\"F\",\"disable\":false},\"price\":{\"value\":\"100\",\"disable\":false},\"type\":{\"value\":\"Normal\",\"disable\":false},\"row_index\":5},{\"0\":{\"check\":true,\"number\":1},\"1\":{\"check\":true,\"number\":2},\"2\":{\"check\":true,\"number\":3},\"3\":{\"check\":true,\"number\":4},\"4\":{\"check\":false,\"number\":5},\"5\":{\"check\":true,\"number\":5},\"6\":{\"check\":true,\"number\":6},\"7\":{\"check\":true,\"number\":7},\"8\":{\"check\":true,\"number\":8},\"9\":{\"check\":true,\"number\":9},\"rowname\":{\"value\":\"E\",\"disable\":false},\"price\":{\"value\":\"100\",\"disable\":false},\"type\":{\"value\":\"Normal\",\"disable\":false},\"row_index\":6},{\"0\":{\"check\":true,\"number\":1},\"1\":{\"check\":true,\"number\":2},\"2\":{\"check\":true,\"number\":3},\"3\":{\"check\":true,\"number\":4},\"4\":{\"check\":false,\"number\":5},\"5\":{\"check\":true,\"number\":5},\"6\":{\"check\":true,\"number\":6},\"7\":{\"check\":true,\"number\":7},\"8\":{\"check\":true,\"number\":8},\"9\":{\"check\":true,\"number\":9},\"rowname\":{\"value\":\"D\",\"disable\":false},\"price\":{\"value\":\"100\",\"disable\":false},\"type\":{\"value\":\"Normal\",\"disable\":false},\"row_index\":7},{\"0\":{\"check\":true,\"number\":1},\"1\":{\"check\":true,\"number\":2},\"2\":{\"check\":true,\"number\":3},\"3\":{\"check\":true,\"number\":4},\"4\":{\"check\":false,\"number\":5},\"5\":{\"check\":true,\"number\":5},\"6\":{\"check\":true,\"number\":6},\"7\":{\"check\":true,\"number\":7},\"8\":{\"check\":true,\"number\":8},\"9\":{\"check\":true,\"number\":9},\"rowname\":{\"value\":\"C\",\"disable\":false},\"price\":{\"value\":\"100\",\"disable\":false},\"type\":{\"value\":\"Normal\",\"disable\":false},\"row_index\":8},{\"0\":{\"check\":true,\"number\":1},\"1\":{\"check\":true,\"number\":2},\"2\":{\"check\":true,\"number\":3},\"3\":{\"check\":true,\"number\":4},\"4\":{\"check\":false,\"number\":5},\"5\":{\"check\":true,\"number\":5},\"6\":{\"check\":true,\"number\":6},\"7\":{\"check\":true,\"number\":7},\"8\":{\"check\":true,\"number\":8},\"9\":{\"check\":true,\"number\":9},\"rowname\":{\"value\":\"B\",\"disable\":false},\"price\":{\"value\":\"100\",\"disable\":false},\"type\":{\"value\":\"Normal\",\"disable\":false},\"row_index\":9},{\"0\":{\"check\":true,\"number\":1},\"1\":{\"check\":true,\"number\":2},\"2\":{\"check\":true,\"number\":3},\"3\":{\"check\":true,\"number\":4},\"4\":{\"check\":false,\"number\":5},\"5\":{\"check\":true,\"number\":5},\"6\":{\"check\":true,\"number\":6},\"7\":{\"check\":true,\"number\":7},\"8\":{\"check\":true,\"number\":8},\"9\":{\"check\":true,\"number\":9},\"rowname\":{\"value\":\"A\",\"disable\":false},\"price\":{\"value\":\"100\",\"disable\":false},\"type\":{\"value\":\"Normal\",\"disable\":false},\"row_index\":10}]', '{\"Primary-163\":[{\"0\":{\"check\":true,\"number\":1},\"1\":{\"check\":true,\"number\":2},\"2\":{\"check\":true,\"number\":3},\"3\":{\"check\":true,\"number\":4},\"4\":{\"check\":false,\"number\":5},\"5\":{\"check\":true,\"number\":5},\"6\":{\"check\":true,\"number\":6},\"7\":{\"check\":true,\"number\":7},\"8\":{\"check\":true,\"number\":8},\"9\":{\"check\":true,\"number\":9},\"rowname\":{\"value\":\"J\",\"disable\":false},\"price\":{\"value\":\"163\",\"disable\":false},\"type\":{\"value\":\"Primary\",\"disable\":false},\"row_index\":1},{\"0\":{\"check\":true,\"number\":1},\"1\":{\"check\":true,\"number\":2},\"2\":{\"check\":true,\"number\":3},\"3\":{\"check\":true,\"number\":4},\"4\":{\"check\":false,\"number\":5},\"5\":{\"check\":true,\"number\":5},\"6\":{\"check\":true,\"number\":6},\"7\":{\"check\":true,\"number\":7},\"8\":{\"check\":true,\"number\":8},\"9\":{\"check\":true,\"number\":9},\"rowname\":{\"value\":\"I\",\"disable\":false},\"price\":{\"value\":\"163\",\"disable\":false},\"type\":{\"value\":\"Primary\",\"disable\":false},\"row_index\":2},{\"0\":{\"check\":true,\"number\":1},\"1\":{\"check\":true,\"number\":2},\"2\":{\"check\":true,\"number\":3},\"3\":{\"check\":true,\"number\":4},\"4\":{\"check\":false,\"number\":5},\"5\":{\"check\":true,\"number\":5},\"6\":{\"check\":true,\"number\":6},\"7\":{\"check\":true,\"number\":7},\"8\":{\"check\":true,\"number\":8},\"9\":{\"check\":true,\"number\":9},\"rowname\":{\"value\":\"H\",\"disable\":false},\"price\":{\"value\":\"163\",\"disable\":false},\"type\":{\"value\":\"Primary\",\"disable\":false},\"row_index\":3}],\"Normal-100\":[{\"0\":{\"check\":true,\"number\":1},\"1\":{\"check\":true,\"number\":2},\"2\":{\"check\":true,\"number\":3},\"3\":{\"check\":true,\"number\":4},\"4\":{\"check\":false,\"number\":5},\"5\":{\"check\":true,\"number\":5},\"6\":{\"check\":true,\"number\":6},\"7\":{\"check\":true,\"number\":7},\"8\":{\"check\":true,\"number\":8},\"9\":{\"check\":true,\"number\":9},\"rowname\":{\"value\":\"G\",\"disable\":false},\"price\":{\"value\":\"100\",\"disable\":false},\"type\":{\"value\":\"Normal\",\"disable\":false},\"row_index\":4},{\"0\":{\"check\":true,\"number\":1},\"1\":{\"check\":true,\"number\":2},\"2\":{\"check\":true,\"number\":3},\"3\":{\"check\":true,\"number\":4},\"4\":{\"check\":false,\"number\":5},\"5\":{\"check\":true,\"number\":5},\"6\":{\"check\":true,\"number\":6},\"7\":{\"check\":true,\"number\":7},\"8\":{\"check\":true,\"number\":8},\"9\":{\"check\":true,\"number\":9},\"rowname\":{\"value\":\"F\",\"disable\":false},\"price\":{\"value\":\"100\",\"disable\":false},\"type\":{\"value\":\"Normal\",\"disable\":false},\"row_index\":5},{\"0\":{\"check\":true,\"number\":1},\"1\":{\"check\":true,\"number\":2},\"2\":{\"check\":true,\"number\":3},\"3\":{\"check\":true,\"number\":4},\"4\":{\"check\":false,\"number\":5},\"5\":{\"check\":true,\"number\":5},\"6\":{\"check\":true,\"number\":6},\"7\":{\"check\":true,\"number\":7},\"8\":{\"check\":true,\"number\":8},\"9\":{\"check\":true,\"number\":9},\"rowname\":{\"value\":\"E\",\"disable\":false},\"price\":{\"value\":\"100\",\"disable\":false},\"type\":{\"value\":\"Normal\",\"disable\":false},\"row_index\":6},{\"0\":{\"check\":true,\"number\":1},\"1\":{\"check\":true,\"number\":2},\"2\":{\"check\":true,\"number\":3},\"3\":{\"check\":true,\"number\":4},\"4\":{\"check\":false,\"number\":5},\"5\":{\"check\":true,\"number\":5},\"6\":{\"check\":true,\"number\":6},\"7\":{\"check\":true,\"number\":7},\"8\":{\"check\":true,\"number\":8},\"9\":{\"check\":true,\"number\":9},\"rowname\":{\"value\":\"D\",\"disable\":false},\"price\":{\"value\":\"100\",\"disable\":false},\"type\":{\"value\":\"Normal\",\"disable\":false},\"row_index\":7},{\"0\":{\"check\":true,\"number\":1},\"1\":{\"check\":true,\"number\":2},\"2\":{\"check\":true,\"number\":3},\"3\":{\"check\":true,\"number\":4},\"4\":{\"check\":false,\"number\":5},\"5\":{\"check\":true,\"number\":5},\"6\":{\"check\":true,\"number\":6},\"7\":{\"check\":true,\"number\":7},\"8\":{\"check\":true,\"number\":8},\"9\":{\"check\":true,\"number\":9},\"rowname\":{\"value\":\"C\",\"disable\":false},\"price\":{\"value\":\"100\",\"disable\":false},\"type\":{\"value\":\"Normal\",\"disable\":false},\"row_index\":8},{\"0\":{\"check\":true,\"number\":1},\"1\":{\"check\":true,\"number\":2},\"2\":{\"check\":true,\"number\":3},\"3\":{\"check\":true,\"number\":4},\"4\":{\"check\":false,\"number\":5},\"5\":{\"check\":true,\"number\":5},\"6\":{\"check\":true,\"number\":6},\"7\":{\"check\":true,\"number\":7},\"8\":{\"check\":true,\"number\":8},\"9\":{\"check\":true,\"number\":9},\"rowname\":{\"value\":\"B\",\"disable\":false},\"price\":{\"value\":\"100\",\"disable\":false},\"type\":{\"value\":\"Normal\",\"disable\":false},\"row_index\":9},{\"0\":{\"check\":true,\"number\":1},\"1\":{\"check\":true,\"number\":2},\"2\":{\"check\":true,\"number\":3},\"3\":{\"check\":true,\"number\":4},\"4\":{\"check\":false,\"number\":5},\"5\":{\"check\":true,\"number\":5},\"6\":{\"check\":true,\"number\":6},\"7\":{\"check\":true,\"number\":7},\"8\":{\"check\":true,\"number\":8},\"9\":{\"check\":true,\"number\":9},\"rowname\":{\"value\":\"A\",\"disable\":false},\"price\":{\"value\":\"100\",\"disable\":false},\"type\":{\"value\":\"Normal\",\"disable\":false},\"row_index\":10}]}', '1'),
(23, '2', '1', 5, 5, 'left', '[{\"0\":{\"check\":true,\"number\":1},\"1\":{\"check\":true,\"number\":2},\"2\":{\"check\":false,\"number\":3},\"3\":{\"check\":true,\"number\":3},\"4\":{\"check\":true,\"number\":4},\"rowname\":{\"value\":\"e\",\"disable\":false},\"price\":{\"value\":\"100\",\"disable\":false},\"type\":{\"value\":\"Silver\",\"disable\":false},\"row_index\":1},{\"0\":{\"check\":true,\"number\":1},\"1\":{\"check\":true,\"number\":2},\"2\":{\"check\":false,\"number\":3},\"3\":{\"check\":true,\"number\":3},\"4\":{\"check\":true,\"number\":4},\"rowname\":{\"value\":\"d\",\"disable\":false},\"price\":{\"value\":\"100\",\"disable\":false},\"type\":{\"value\":\"Silver\",\"disable\":false},\"row_index\":2},{\"0\":{\"check\":true,\"number\":1},\"1\":{\"check\":true,\"number\":2},\"2\":{\"check\":false,\"number\":3},\"3\":{\"check\":true,\"number\":3},\"4\":{\"check\":true,\"number\":4},\"rowname\":{\"value\":\"c\",\"disable\":false},\"price\":{\"value\":\"100\",\"disable\":false},\"type\":{\"value\":\"Silver\",\"disable\":false},\"row_index\":3},{\"0\":{\"check\":true,\"number\":1},\"1\":{\"check\":true,\"number\":2},\"2\":{\"check\":false,\"number\":3},\"3\":{\"check\":true,\"number\":3},\"4\":{\"check\":true,\"number\":4},\"rowname\":{\"value\":\"b\",\"disable\":false},\"price\":{\"value\":\"100\",\"disable\":false},\"type\":{\"value\":\"Silver\",\"disable\":false},\"row_index\":4},{\"0\":{\"check\":true,\"number\":1},\"1\":{\"check\":true,\"number\":2},\"2\":{\"check\":false,\"number\":3},\"3\":{\"check\":true,\"number\":3},\"4\":{\"check\":true,\"number\":4},\"rowname\":{\"value\":\"a\",\"disable\":false},\"price\":{\"value\":\"100\",\"disable\":false},\"type\":{\"value\":\"Silver\",\"disable\":false},\"row_index\":5}]', '{\"Silver-100\":[{\"0\":{\"check\":true,\"number\":1},\"1\":{\"check\":true,\"number\":2},\"2\":{\"check\":false,\"number\":3},\"3\":{\"check\":true,\"number\":3},\"4\":{\"check\":true,\"number\":4},\"rowname\":{\"value\":\"e\",\"disable\":false},\"price\":{\"value\":\"100\",\"disable\":false},\"type\":{\"value\":\"Silver\",\"disable\":false},\"row_index\":1},{\"0\":{\"check\":true,\"number\":1},\"1\":{\"check\":true,\"number\":2},\"2\":{\"check\":false,\"number\":3},\"3\":{\"check\":true,\"number\":3},\"4\":{\"check\":true,\"number\":4},\"rowname\":{\"value\":\"d\",\"disable\":false},\"price\":{\"value\":\"100\",\"disable\":false},\"type\":{\"value\":\"Silver\",\"disable\":false},\"row_index\":2},{\"0\":{\"check\":true,\"number\":1},\"1\":{\"check\":true,\"number\":2},\"2\":{\"check\":false,\"number\":3},\"3\":{\"check\":true,\"number\":3},\"4\":{\"check\":true,\"number\":4},\"rowname\":{\"value\":\"c\",\"disable\":false},\"price\":{\"value\":\"100\",\"disable\":false},\"type\":{\"value\":\"Silver\",\"disable\":false},\"row_index\":3},{\"0\":{\"check\":true,\"number\":1},\"1\":{\"check\":true,\"number\":2},\"2\":{\"check\":false,\"number\":3},\"3\":{\"check\":true,\"number\":3},\"4\":{\"check\":true,\"number\":4},\"rowname\":{\"value\":\"b\",\"disable\":false},\"price\":{\"value\":\"100\",\"disable\":false},\"type\":{\"value\":\"Silver\",\"disable\":false},\"row_index\":4},{\"0\":{\"check\":true,\"number\":1},\"1\":{\"check\":true,\"number\":2},\"2\":{\"check\":false,\"number\":3},\"3\":{\"check\":true,\"number\":3},\"4\":{\"check\":true,\"number\":4},\"rowname\":{\"value\":\"a\",\"disable\":false},\"price\":{\"value\":\"100\",\"disable\":false},\"type\":{\"value\":\"Silver\",\"disable\":false},\"row_index\":5}]}', '1');
INSERT INTO `tbz_chinema_screen` (`id`, `screen_name`, `cinemas_id`, `column`, `row`, `chair_align`, `layout`, `preview`, `status`) VALUES
(24, '4', '1', 100, 10, 'left', '[{\"0\":{\"check\":true,\"number\":1},\"1\":{\"check\":true,\"number\":2},\"2\":{\"check\":true,\"number\":3},\"3\":{\"check\":true,\"number\":4},\"4\":{\"check\":true,\"number\":5},\"5\":{\"check\":true,\"number\":6},\"6\":{\"check\":true,\"number\":7},\"7\":{\"check\":true,\"number\":8},\"8\":{\"check\":true,\"number\":9},\"9\":{\"check\":true,\"number\":10},\"10\":{\"check\":true,\"number\":11},\"11\":{\"check\":true,\"number\":12},\"12\":{\"check\":true,\"number\":13},\"13\":{\"check\":true,\"number\":14},\"14\":{\"check\":true,\"number\":15},\"15\":{\"check\":true,\"number\":16},\"16\":{\"check\":true,\"number\":17},\"17\":{\"check\":true,\"number\":18},\"18\":{\"check\":true,\"number\":19},\"19\":{\"check\":true,\"number\":20},\"20\":{\"check\":true,\"number\":21},\"21\":{\"check\":true,\"number\":22},\"22\":{\"check\":true,\"number\":23},\"23\":{\"check\":true,\"number\":24},\"24\":{\"check\":true,\"number\":25},\"25\":{\"check\":true,\"number\":26},\"26\":{\"check\":true,\"number\":27},\"27\":{\"check\":true,\"number\":28},\"28\":{\"check\":true,\"number\":29},\"29\":{\"check\":true,\"number\":30},\"30\":{\"check\":true,\"number\":31},\"31\":{\"check\":true,\"number\":32},\"32\":{\"check\":true,\"number\":33},\"33\":{\"check\":true,\"number\":34},\"34\":{\"check\":true,\"number\":35},\"35\":{\"check\":true,\"number\":36},\"36\":{\"check\":true,\"number\":37},\"37\":{\"check\":true,\"number\":38},\"38\":{\"check\":true,\"number\":39},\"39\":{\"check\":true,\"number\":40},\"40\":{\"check\":true,\"number\":41},\"41\":{\"check\":true,\"number\":42},\"42\":{\"check\":true,\"number\":43},\"43\":{\"check\":true,\"number\":44},\"44\":{\"check\":true,\"number\":45},\"45\":{\"check\":true,\"number\":46},\"46\":{\"check\":true,\"number\":47},\"47\":{\"check\":true,\"number\":48},\"48\":{\"check\":true,\"number\":49},\"49\":{\"check\":true,\"number\":50},\"50\":{\"check\":true,\"number\":51},\"51\":{\"check\":true,\"number\":52},\"52\":{\"check\":true,\"number\":53},\"53\":{\"check\":true,\"number\":54},\"54\":{\"check\":true,\"number\":55},\"55\":{\"check\":true,\"number\":56},\"56\":{\"check\":true,\"number\":57},\"57\":{\"check\":true,\"number\":58},\"58\":{\"check\":true,\"number\":59},\"59\":{\"check\":true,\"number\":60},\"60\":{\"check\":true,\"number\":61},\"61\":{\"check\":true,\"number\":62},\"62\":{\"check\":true,\"number\":63},\"63\":{\"check\":true,\"number\":64},\"64\":{\"check\":true,\"number\":65},\"65\":{\"check\":true,\"number\":66},\"66\":{\"check\":true,\"number\":67},\"67\":{\"check\":true,\"number\":68},\"68\":{\"check\":true,\"number\":69},\"69\":{\"check\":true,\"number\":70},\"70\":{\"check\":true,\"number\":71},\"71\":{\"check\":true,\"number\":72},\"72\":{\"check\":true,\"number\":73},\"73\":{\"check\":true,\"number\":74},\"74\":{\"check\":true,\"number\":75},\"75\":{\"check\":true,\"number\":76},\"76\":{\"check\":true,\"number\":77},\"77\":{\"check\":true,\"number\":78},\"78\":{\"check\":true,\"number\":79},\"79\":{\"check\":true,\"number\":80},\"80\":{\"check\":true,\"number\":81},\"81\":{\"check\":true,\"number\":82},\"82\":{\"check\":true,\"number\":83},\"83\":{\"check\":true,\"number\":84},\"84\":{\"check\":true,\"number\":85},\"85\":{\"check\":true,\"number\":86},\"86\":{\"check\":true,\"number\":87},\"87\":{\"check\":true,\"number\":88},\"88\":{\"check\":true,\"number\":89},\"89\":{\"check\":true,\"number\":90},\"90\":{\"check\":true,\"number\":91},\"91\":{\"check\":true,\"number\":92},\"92\":{\"check\":true,\"number\":93},\"93\":{\"check\":true,\"number\":94},\"94\":{\"check\":true,\"number\":95},\"95\":{\"check\":true,\"number\":96},\"96\":{\"check\":true,\"number\":97},\"97\":{\"check\":true,\"number\":98},\"98\":{\"check\":true,\"number\":99},\"99\":{\"check\":true,\"number\":100},\"rowname\":{\"value\":\"A\",\"disable\":false},\"price\":{\"value\":\"100\",\"disable\":false},\"type\":{\"value\":\"Silver\",\"disable\":false},\"row_index\":1},{\"0\":{\"check\":true,\"number\":1},\"1\":{\"check\":true,\"number\":2},\"2\":{\"check\":true,\"number\":3},\"3\":{\"check\":true,\"number\":4},\"4\":{\"check\":true,\"number\":5},\"5\":{\"check\":true,\"number\":6},\"6\":{\"check\":true,\"number\":7},\"7\":{\"check\":true,\"number\":8},\"8\":{\"check\":true,\"number\":9},\"9\":{\"check\":true,\"number\":10},\"10\":{\"check\":true,\"number\":11},\"11\":{\"check\":true,\"number\":12},\"12\":{\"check\":true,\"number\":13},\"13\":{\"check\":true,\"number\":14},\"14\":{\"check\":true,\"number\":15},\"15\":{\"check\":true,\"number\":16},\"16\":{\"check\":true,\"number\":17},\"17\":{\"check\":true,\"number\":18},\"18\":{\"check\":true,\"number\":19},\"19\":{\"check\":true,\"number\":20},\"20\":{\"check\":true,\"number\":21},\"21\":{\"check\":true,\"number\":22},\"22\":{\"check\":true,\"number\":23},\"23\":{\"check\":true,\"number\":24},\"24\":{\"check\":true,\"number\":25},\"25\":{\"check\":true,\"number\":26},\"26\":{\"check\":true,\"number\":27},\"27\":{\"check\":true,\"number\":28},\"28\":{\"check\":true,\"number\":29},\"29\":{\"check\":true,\"number\":30},\"30\":{\"check\":true,\"number\":31},\"31\":{\"check\":true,\"number\":32},\"32\":{\"check\":true,\"number\":33},\"33\":{\"check\":true,\"number\":34},\"34\":{\"check\":true,\"number\":35},\"35\":{\"check\":true,\"number\":36},\"36\":{\"check\":true,\"number\":37},\"37\":{\"check\":true,\"number\":38},\"38\":{\"check\":true,\"number\":39},\"39\":{\"check\":true,\"number\":40},\"40\":{\"check\":true,\"number\":41},\"41\":{\"check\":true,\"number\":42},\"42\":{\"check\":true,\"number\":43},\"43\":{\"check\":true,\"number\":44},\"44\":{\"check\":true,\"number\":45},\"45\":{\"check\":true,\"number\":46},\"46\":{\"check\":true,\"number\":47},\"47\":{\"check\":true,\"number\":48},\"48\":{\"check\":true,\"number\":49},\"49\":{\"check\":true,\"number\":50},\"50\":{\"check\":true,\"number\":51},\"51\":{\"check\":true,\"number\":52},\"52\":{\"check\":true,\"number\":53},\"53\":{\"check\":true,\"number\":54},\"54\":{\"check\":true,\"number\":55},\"55\":{\"check\":true,\"number\":56},\"56\":{\"check\":true,\"number\":57},\"57\":{\"check\":true,\"number\":58},\"58\":{\"check\":true,\"number\":59},\"59\":{\"check\":true,\"number\":60},\"60\":{\"check\":true,\"number\":61},\"61\":{\"check\":true,\"number\":62},\"62\":{\"check\":true,\"number\":63},\"63\":{\"check\":true,\"number\":64},\"64\":{\"check\":true,\"number\":65},\"65\":{\"check\":true,\"number\":66},\"66\":{\"check\":true,\"number\":67},\"67\":{\"check\":true,\"number\":68},\"68\":{\"check\":true,\"number\":69},\"69\":{\"check\":true,\"number\":70},\"70\":{\"check\":true,\"number\":71},\"71\":{\"check\":true,\"number\":72},\"72\":{\"check\":true,\"number\":73},\"73\":{\"check\":true,\"number\":74},\"74\":{\"check\":true,\"number\":75},\"75\":{\"check\":true,\"number\":76},\"76\":{\"check\":true,\"number\":77},\"77\":{\"check\":true,\"number\":78},\"78\":{\"check\":true,\"number\":79},\"79\":{\"check\":true,\"number\":80},\"80\":{\"check\":true,\"number\":81},\"81\":{\"check\":true,\"number\":82},\"82\":{\"check\":true,\"number\":83},\"83\":{\"check\":true,\"number\":84},\"84\":{\"check\":true,\"number\":85},\"85\":{\"check\":true,\"number\":86},\"86\":{\"check\":true,\"number\":87},\"87\":{\"check\":true,\"number\":88},\"88\":{\"check\":true,\"number\":89},\"89\":{\"check\":true,\"number\":90},\"90\":{\"check\":true,\"number\":91},\"91\":{\"check\":true,\"number\":92},\"92\":{\"check\":true,\"number\":93},\"93\":{\"check\":true,\"number\":94},\"94\":{\"check\":true,\"number\":95},\"95\":{\"check\":true,\"number\":96},\"96\":{\"check\":true,\"number\":97},\"97\":{\"check\":true,\"number\":98},\"98\":{\"check\":true,\"number\":99},\"99\":{\"check\":true,\"number\":100},\"rowname\":{\"value\":\"B\",\"disable\":false},\"price\":{\"value\":\"100\",\"disable\":false},\"type\":{\"value\":\"Silver\",\"disable\":false},\"row_index\":2},{\"0\":{\"check\":true,\"number\":1},\"1\":{\"check\":true,\"number\":2},\"2\":{\"check\":true,\"number\":3},\"3\":{\"check\":true,\"number\":4},\"4\":{\"check\":true,\"number\":5},\"5\":{\"check\":true,\"number\":6},\"6\":{\"check\":true,\"number\":7},\"7\":{\"check\":true,\"number\":8},\"8\":{\"check\":true,\"number\":9},\"9\":{\"check\":true,\"number\":10},\"10\":{\"check\":true,\"number\":11},\"11\":{\"check\":true,\"number\":12},\"12\":{\"check\":true,\"number\":13},\"13\":{\"check\":true,\"number\":14},\"14\":{\"check\":true,\"number\":15},\"15\":{\"check\":true,\"number\":16},\"16\":{\"check\":true,\"number\":17},\"17\":{\"check\":true,\"number\":18},\"18\":{\"check\":true,\"number\":19},\"19\":{\"check\":true,\"number\":20},\"20\":{\"check\":true,\"number\":21},\"21\":{\"check\":true,\"number\":22},\"22\":{\"check\":true,\"number\":23},\"23\":{\"check\":true,\"number\":24},\"24\":{\"check\":true,\"number\":25},\"25\":{\"check\":true,\"number\":26},\"26\":{\"check\":true,\"number\":27},\"27\":{\"check\":true,\"number\":28},\"28\":{\"check\":true,\"number\":29},\"29\":{\"check\":true,\"number\":30},\"30\":{\"check\":true,\"number\":31},\"31\":{\"check\":true,\"number\":32},\"32\":{\"check\":true,\"number\":33},\"33\":{\"check\":true,\"number\":34},\"34\":{\"check\":true,\"number\":35},\"35\":{\"check\":true,\"number\":36},\"36\":{\"check\":true,\"number\":37},\"37\":{\"check\":true,\"number\":38},\"38\":{\"check\":true,\"number\":39},\"39\":{\"check\":true,\"number\":40},\"40\":{\"check\":true,\"number\":41},\"41\":{\"check\":true,\"number\":42},\"42\":{\"check\":true,\"number\":43},\"43\":{\"check\":true,\"number\":44},\"44\":{\"check\":true,\"number\":45},\"45\":{\"check\":true,\"number\":46},\"46\":{\"check\":true,\"number\":47},\"47\":{\"check\":true,\"number\":48},\"48\":{\"check\":true,\"number\":49},\"49\":{\"check\":true,\"number\":50},\"50\":{\"check\":true,\"number\":51},\"51\":{\"check\":true,\"number\":52},\"52\":{\"check\":true,\"number\":53},\"53\":{\"check\":true,\"number\":54},\"54\":{\"check\":true,\"number\":55},\"55\":{\"check\":true,\"number\":56},\"56\":{\"check\":true,\"number\":57},\"57\":{\"check\":true,\"number\":58},\"58\":{\"check\":true,\"number\":59},\"59\":{\"check\":true,\"number\":60},\"60\":{\"check\":true,\"number\":61},\"61\":{\"check\":true,\"number\":62},\"62\":{\"check\":true,\"number\":63},\"63\":{\"check\":true,\"number\":64},\"64\":{\"check\":true,\"number\":65},\"65\":{\"check\":true,\"number\":66},\"66\":{\"check\":true,\"number\":67},\"67\":{\"check\":true,\"number\":68},\"68\":{\"check\":true,\"number\":69},\"69\":{\"check\":true,\"number\":70},\"70\":{\"check\":true,\"number\":71},\"71\":{\"check\":true,\"number\":72},\"72\":{\"check\":true,\"number\":73},\"73\":{\"check\":true,\"number\":74},\"74\":{\"check\":true,\"number\":75},\"75\":{\"check\":true,\"number\":76},\"76\":{\"check\":true,\"number\":77},\"77\":{\"check\":true,\"number\":78},\"78\":{\"check\":true,\"number\":79},\"79\":{\"check\":true,\"number\":80},\"80\":{\"check\":true,\"number\":81},\"81\":{\"check\":true,\"number\":82},\"82\":{\"check\":true,\"number\":83},\"83\":{\"check\":true,\"number\":84},\"84\":{\"check\":true,\"number\":85},\"85\":{\"check\":true,\"number\":86},\"86\":{\"check\":true,\"number\":87},\"87\":{\"check\":true,\"number\":88},\"88\":{\"check\":true,\"number\":89},\"89\":{\"check\":true,\"number\":90},\"90\":{\"check\":true,\"number\":91},\"91\":{\"check\":true,\"number\":92},\"92\":{\"check\":true,\"number\":93},\"93\":{\"check\":true,\"number\":94},\"94\":{\"check\":true,\"number\":95},\"95\":{\"check\":true,\"number\":96},\"96\":{\"check\":true,\"number\":97},\"97\":{\"check\":true,\"number\":98},\"98\":{\"check\":true,\"number\":99},\"99\":{\"check\":true,\"number\":100},\"rowname\":{\"value\":\"C\",\"disable\":false},\"price\":{\"value\":\"100\",\"disable\":false},\"type\":{\"value\":\"Silver\",\"disable\":false},\"row_index\":3},{\"0\":{\"check\":true,\"number\":1},\"1\":{\"check\":true,\"number\":2},\"2\":{\"check\":true,\"number\":3},\"3\":{\"check\":true,\"number\":4},\"4\":{\"check\":true,\"number\":5},\"5\":{\"check\":true,\"number\":6},\"6\":{\"check\":true,\"number\":7},\"7\":{\"check\":true,\"number\":8},\"8\":{\"check\":true,\"number\":9},\"9\":{\"check\":true,\"number\":10},\"10\":{\"check\":true,\"number\":11},\"11\":{\"check\":true,\"number\":12},\"12\":{\"check\":true,\"number\":13},\"13\":{\"check\":true,\"number\":14},\"14\":{\"check\":true,\"number\":15},\"15\":{\"check\":true,\"number\":16},\"16\":{\"check\":true,\"number\":17},\"17\":{\"check\":true,\"number\":18},\"18\":{\"check\":true,\"number\":19},\"19\":{\"check\":true,\"number\":20},\"20\":{\"check\":true,\"number\":21},\"21\":{\"check\":true,\"number\":22},\"22\":{\"check\":true,\"number\":23},\"23\":{\"check\":true,\"number\":24},\"24\":{\"check\":true,\"number\":25},\"25\":{\"check\":true,\"number\":26},\"26\":{\"check\":true,\"number\":27},\"27\":{\"check\":true,\"number\":28},\"28\":{\"check\":true,\"number\":29},\"29\":{\"check\":true,\"number\":30},\"30\":{\"check\":true,\"number\":31},\"31\":{\"check\":true,\"number\":32},\"32\":{\"check\":true,\"number\":33},\"33\":{\"check\":true,\"number\":34},\"34\":{\"check\":true,\"number\":35},\"35\":{\"check\":true,\"number\":36},\"36\":{\"check\":true,\"number\":37},\"37\":{\"check\":true,\"number\":38},\"38\":{\"check\":true,\"number\":39},\"39\":{\"check\":true,\"number\":40},\"40\":{\"check\":true,\"number\":41},\"41\":{\"check\":true,\"number\":42},\"42\":{\"check\":true,\"number\":43},\"43\":{\"check\":true,\"number\":44},\"44\":{\"check\":true,\"number\":45},\"45\":{\"check\":true,\"number\":46},\"46\":{\"check\":true,\"number\":47},\"47\":{\"check\":true,\"number\":48},\"48\":{\"check\":true,\"number\":49},\"49\":{\"check\":true,\"number\":50},\"50\":{\"check\":true,\"number\":51},\"51\":{\"check\":true,\"number\":52},\"52\":{\"check\":true,\"number\":53},\"53\":{\"check\":true,\"number\":54},\"54\":{\"check\":true,\"number\":55},\"55\":{\"check\":true,\"number\":56},\"56\":{\"check\":true,\"number\":57},\"57\":{\"check\":true,\"number\":58},\"58\":{\"check\":true,\"number\":59},\"59\":{\"check\":true,\"number\":60},\"60\":{\"check\":true,\"number\":61},\"61\":{\"check\":true,\"number\":62},\"62\":{\"check\":true,\"number\":63},\"63\":{\"check\":true,\"number\":64},\"64\":{\"check\":true,\"number\":65},\"65\":{\"check\":true,\"number\":66},\"66\":{\"check\":true,\"number\":67},\"67\":{\"check\":true,\"number\":68},\"68\":{\"check\":true,\"number\":69},\"69\":{\"check\":true,\"number\":70},\"70\":{\"check\":true,\"number\":71},\"71\":{\"check\":true,\"number\":72},\"72\":{\"check\":true,\"number\":73},\"73\":{\"check\":true,\"number\":74},\"74\":{\"check\":true,\"number\":75},\"75\":{\"check\":true,\"number\":76},\"76\":{\"check\":true,\"number\":77},\"77\":{\"check\":true,\"number\":78},\"78\":{\"check\":true,\"number\":79},\"79\":{\"check\":true,\"number\":80},\"80\":{\"check\":true,\"number\":81},\"81\":{\"check\":true,\"number\":82},\"82\":{\"check\":true,\"number\":83},\"83\":{\"check\":true,\"number\":84},\"84\":{\"check\":true,\"number\":85},\"85\":{\"check\":true,\"number\":86},\"86\":{\"check\":true,\"number\":87},\"87\":{\"check\":true,\"number\":88},\"88\":{\"check\":true,\"number\":89},\"89\":{\"check\":true,\"number\":90},\"90\":{\"check\":true,\"number\":91},\"91\":{\"check\":true,\"number\":92},\"92\":{\"check\":true,\"number\":93},\"93\":{\"check\":true,\"number\":94},\"94\":{\"check\":true,\"number\":95},\"95\":{\"check\":true,\"number\":96},\"96\":{\"check\":true,\"number\":97},\"97\":{\"check\":true,\"number\":98},\"98\":{\"check\":true,\"number\":99},\"99\":{\"check\":true,\"number\":100},\"rowname\":{\"value\":\"D\",\"disable\":false},\"price\":{\"value\":\"100\",\"disable\":false},\"type\":{\"value\":\"Silver\",\"disable\":false},\"row_index\":4},{\"0\":{\"check\":true,\"number\":1},\"1\":{\"check\":true,\"number\":2},\"2\":{\"check\":true,\"number\":3},\"3\":{\"check\":true,\"number\":4},\"4\":{\"check\":true,\"number\":5},\"5\":{\"check\":true,\"number\":6},\"6\":{\"check\":true,\"number\":7},\"7\":{\"check\":true,\"number\":8},\"8\":{\"check\":true,\"number\":9},\"9\":{\"check\":true,\"number\":10},\"10\":{\"check\":true,\"number\":11},\"11\":{\"check\":true,\"number\":12},\"12\":{\"check\":true,\"number\":13},\"13\":{\"check\":true,\"number\":14},\"14\":{\"check\":true,\"number\":15},\"15\":{\"check\":true,\"number\":16},\"16\":{\"check\":true,\"number\":17},\"17\":{\"check\":true,\"number\":18},\"18\":{\"check\":true,\"number\":19},\"19\":{\"check\":true,\"number\":20},\"20\":{\"check\":true,\"number\":21},\"21\":{\"check\":true,\"number\":22},\"22\":{\"check\":true,\"number\":23},\"23\":{\"check\":true,\"number\":24},\"24\":{\"check\":true,\"number\":25},\"25\":{\"check\":true,\"number\":26},\"26\":{\"check\":true,\"number\":27},\"27\":{\"check\":true,\"number\":28},\"28\":{\"check\":true,\"number\":29},\"29\":{\"check\":true,\"number\":30},\"30\":{\"check\":true,\"number\":31},\"31\":{\"check\":true,\"number\":32},\"32\":{\"check\":true,\"number\":33},\"33\":{\"check\":true,\"number\":34},\"34\":{\"check\":true,\"number\":35},\"35\":{\"check\":true,\"number\":36},\"36\":{\"check\":true,\"number\":37},\"37\":{\"check\":true,\"number\":38},\"38\":{\"check\":true,\"number\":39},\"39\":{\"check\":true,\"number\":40},\"40\":{\"check\":true,\"number\":41},\"41\":{\"check\":true,\"number\":42},\"42\":{\"check\":true,\"number\":43},\"43\":{\"check\":true,\"number\":44},\"44\":{\"check\":true,\"number\":45},\"45\":{\"check\":true,\"number\":46},\"46\":{\"check\":true,\"number\":47},\"47\":{\"check\":true,\"number\":48},\"48\":{\"check\":true,\"number\":49},\"49\":{\"check\":true,\"number\":50},\"50\":{\"check\":true,\"number\":51},\"51\":{\"check\":true,\"number\":52},\"52\":{\"check\":true,\"number\":53},\"53\":{\"check\":true,\"number\":54},\"54\":{\"check\":true,\"number\":55},\"55\":{\"check\":true,\"number\":56},\"56\":{\"check\":true,\"number\":57},\"57\":{\"check\":true,\"number\":58},\"58\":{\"check\":true,\"number\":59},\"59\":{\"check\":true,\"number\":60},\"60\":{\"check\":true,\"number\":61},\"61\":{\"check\":true,\"number\":62},\"62\":{\"check\":true,\"number\":63},\"63\":{\"check\":true,\"number\":64},\"64\":{\"check\":true,\"number\":65},\"65\":{\"check\":true,\"number\":66},\"66\":{\"check\":true,\"number\":67},\"67\":{\"check\":true,\"number\":68},\"68\":{\"check\":true,\"number\":69},\"69\":{\"check\":true,\"number\":70},\"70\":{\"check\":true,\"number\":71},\"71\":{\"check\":true,\"number\":72},\"72\":{\"check\":true,\"number\":73},\"73\":{\"check\":true,\"number\":74},\"74\":{\"check\":true,\"number\":75},\"75\":{\"check\":true,\"number\":76},\"76\":{\"check\":true,\"number\":77},\"77\":{\"check\":true,\"number\":78},\"78\":{\"check\":true,\"number\":79},\"79\":{\"check\":true,\"number\":80},\"80\":{\"check\":true,\"number\":81},\"81\":{\"check\":true,\"number\":82},\"82\":{\"check\":true,\"number\":83},\"83\":{\"check\":true,\"number\":84},\"84\":{\"check\":true,\"number\":85},\"85\":{\"check\":true,\"number\":86},\"86\":{\"check\":true,\"number\":87},\"87\":{\"check\":true,\"number\":88},\"88\":{\"check\":true,\"number\":89},\"89\":{\"check\":true,\"number\":90},\"90\":{\"check\":true,\"number\":91},\"91\":{\"check\":true,\"number\":92},\"92\":{\"check\":true,\"number\":93},\"93\":{\"check\":true,\"number\":94},\"94\":{\"check\":true,\"number\":95},\"95\":{\"check\":true,\"number\":96},\"96\":{\"check\":true,\"number\":97},\"97\":{\"check\":true,\"number\":98},\"98\":{\"check\":true,\"number\":99},\"99\":{\"check\":true,\"number\":100},\"rowname\":{\"value\":\"E\",\"disable\":false},\"price\":{\"value\":\"100\",\"disable\":false},\"type\":{\"value\":\"Silver\",\"disable\":false},\"row_index\":5},{\"0\":{\"check\":true,\"number\":1},\"1\":{\"check\":true,\"number\":2},\"2\":{\"check\":true,\"number\":3},\"3\":{\"check\":true,\"number\":4},\"4\":{\"check\":true,\"number\":5},\"5\":{\"check\":true,\"number\":6},\"6\":{\"check\":true,\"number\":7},\"7\":{\"check\":true,\"number\":8},\"8\":{\"check\":true,\"number\":9},\"9\":{\"check\":true,\"number\":10},\"10\":{\"check\":true,\"number\":11},\"11\":{\"check\":true,\"number\":12},\"12\":{\"check\":true,\"number\":13},\"13\":{\"check\":true,\"number\":14},\"14\":{\"check\":true,\"number\":15},\"15\":{\"check\":true,\"number\":16},\"16\":{\"check\":true,\"number\":17},\"17\":{\"check\":true,\"number\":18},\"18\":{\"check\":true,\"number\":19},\"19\":{\"check\":true,\"number\":20},\"20\":{\"check\":true,\"number\":21},\"21\":{\"check\":true,\"number\":22},\"22\":{\"check\":true,\"number\":23},\"23\":{\"check\":true,\"number\":24},\"24\":{\"check\":true,\"number\":25},\"25\":{\"check\":true,\"number\":26},\"26\":{\"check\":true,\"number\":27},\"27\":{\"check\":true,\"number\":28},\"28\":{\"check\":true,\"number\":29},\"29\":{\"check\":true,\"number\":30},\"30\":{\"check\":true,\"number\":31},\"31\":{\"check\":true,\"number\":32},\"32\":{\"check\":true,\"number\":33},\"33\":{\"check\":true,\"number\":34},\"34\":{\"check\":true,\"number\":35},\"35\":{\"check\":true,\"number\":36},\"36\":{\"check\":true,\"number\":37},\"37\":{\"check\":true,\"number\":38},\"38\":{\"check\":true,\"number\":39},\"39\":{\"check\":true,\"number\":40},\"40\":{\"check\":true,\"number\":41},\"41\":{\"check\":true,\"number\":42},\"42\":{\"check\":true,\"number\":43},\"43\":{\"check\":true,\"number\":44},\"44\":{\"check\":true,\"number\":45},\"45\":{\"check\":true,\"number\":46},\"46\":{\"check\":true,\"number\":47},\"47\":{\"check\":true,\"number\":48},\"48\":{\"check\":true,\"number\":49},\"49\":{\"check\":true,\"number\":50},\"50\":{\"check\":true,\"number\":51},\"51\":{\"check\":true,\"number\":52},\"52\":{\"check\":true,\"number\":53},\"53\":{\"check\":true,\"number\":54},\"54\":{\"check\":true,\"number\":55},\"55\":{\"check\":true,\"number\":56},\"56\":{\"check\":true,\"number\":57},\"57\":{\"check\":true,\"number\":58},\"58\":{\"check\":true,\"number\":59},\"59\":{\"check\":true,\"number\":60},\"60\":{\"check\":true,\"number\":61},\"61\":{\"check\":true,\"number\":62},\"62\":{\"check\":true,\"number\":63},\"63\":{\"check\":true,\"number\":64},\"64\":{\"check\":true,\"number\":65},\"65\":{\"check\":true,\"number\":66},\"66\":{\"check\":true,\"number\":67},\"67\":{\"check\":true,\"number\":68},\"68\":{\"check\":true,\"number\":69},\"69\":{\"check\":true,\"number\":70},\"70\":{\"check\":true,\"number\":71},\"71\":{\"check\":true,\"number\":72},\"72\":{\"check\":true,\"number\":73},\"73\":{\"check\":true,\"number\":74},\"74\":{\"check\":true,\"number\":75},\"75\":{\"check\":true,\"number\":76},\"76\":{\"check\":true,\"number\":77},\"77\":{\"check\":true,\"number\":78},\"78\":{\"check\":true,\"number\":79},\"79\":{\"check\":true,\"number\":80},\"80\":{\"check\":true,\"number\":81},\"81\":{\"check\":true,\"number\":82},\"82\":{\"check\":true,\"number\":83},\"83\":{\"check\":true,\"number\":84},\"84\":{\"check\":true,\"number\":85},\"85\":{\"check\":true,\"number\":86},\"86\":{\"check\":true,\"number\":87},\"87\":{\"check\":true,\"number\":88},\"88\":{\"check\":true,\"number\":89},\"89\":{\"check\":true,\"number\":90},\"90\":{\"check\":true,\"number\":91},\"91\":{\"check\":true,\"number\":92},\"92\":{\"check\":true,\"number\":93},\"93\":{\"check\":true,\"number\":94},\"94\":{\"check\":true,\"number\":95},\"95\":{\"check\":true,\"number\":96},\"96\":{\"check\":true,\"number\":97},\"97\":{\"check\":true,\"number\":98},\"98\":{\"check\":true,\"number\":99},\"99\":{\"check\":true,\"number\":100},\"rowname\":{\"value\":\"F\",\"disable\":false},\"price\":{\"value\":\"100\",\"disable\":false},\"type\":{\"value\":\"Silver\",\"disable\":false},\"row_index\":6},{\"0\":{\"check\":true,\"number\":1},\"1\":{\"check\":true,\"number\":2},\"2\":{\"check\":true,\"number\":3},\"3\":{\"check\":true,\"number\":4},\"4\":{\"check\":true,\"number\":5},\"5\":{\"check\":true,\"number\":6},\"6\":{\"check\":true,\"number\":7},\"7\":{\"check\":true,\"number\":8},\"8\":{\"check\":true,\"number\":9},\"9\":{\"check\":true,\"number\":10},\"10\":{\"check\":true,\"number\":11},\"11\":{\"check\":true,\"number\":12},\"12\":{\"check\":true,\"number\":13},\"13\":{\"check\":true,\"number\":14},\"14\":{\"check\":true,\"number\":15},\"15\":{\"check\":true,\"number\":16},\"16\":{\"check\":true,\"number\":17},\"17\":{\"check\":true,\"number\":18},\"18\":{\"check\":true,\"number\":19},\"19\":{\"check\":true,\"number\":20},\"20\":{\"check\":true,\"number\":21},\"21\":{\"check\":true,\"number\":22},\"22\":{\"check\":true,\"number\":23},\"23\":{\"check\":true,\"number\":24},\"24\":{\"check\":true,\"number\":25},\"25\":{\"check\":true,\"number\":26},\"26\":{\"check\":true,\"number\":27},\"27\":{\"check\":true,\"number\":28},\"28\":{\"check\":true,\"number\":29},\"29\":{\"check\":true,\"number\":30},\"30\":{\"check\":true,\"number\":31},\"31\":{\"check\":true,\"number\":32},\"32\":{\"check\":true,\"number\":33},\"33\":{\"check\":true,\"number\":34},\"34\":{\"check\":true,\"number\":35},\"35\":{\"check\":true,\"number\":36},\"36\":{\"check\":true,\"number\":37},\"37\":{\"check\":true,\"number\":38},\"38\":{\"check\":true,\"number\":39},\"39\":{\"check\":true,\"number\":40},\"40\":{\"check\":true,\"number\":41},\"41\":{\"check\":true,\"number\":42},\"42\":{\"check\":true,\"number\":43},\"43\":{\"check\":true,\"number\":44},\"44\":{\"check\":true,\"number\":45},\"45\":{\"check\":true,\"number\":46},\"46\":{\"check\":true,\"number\":47},\"47\":{\"check\":true,\"number\":48},\"48\":{\"check\":true,\"number\":49},\"49\":{\"check\":true,\"number\":50},\"50\":{\"check\":true,\"number\":51},\"51\":{\"check\":true,\"number\":52},\"52\":{\"check\":true,\"number\":53},\"53\":{\"check\":true,\"number\":54},\"54\":{\"check\":true,\"number\":55},\"55\":{\"check\":true,\"number\":56},\"56\":{\"check\":true,\"number\":57},\"57\":{\"check\":true,\"number\":58},\"58\":{\"check\":true,\"number\":59},\"59\":{\"check\":true,\"number\":60},\"60\":{\"check\":true,\"number\":61},\"61\":{\"check\":true,\"number\":62},\"62\":{\"check\":true,\"number\":63},\"63\":{\"check\":true,\"number\":64},\"64\":{\"check\":true,\"number\":65},\"65\":{\"check\":true,\"number\":66},\"66\":{\"check\":true,\"number\":67},\"67\":{\"check\":true,\"number\":68},\"68\":{\"check\":true,\"number\":69},\"69\":{\"check\":true,\"number\":70},\"70\":{\"check\":true,\"number\":71},\"71\":{\"check\":true,\"number\":72},\"72\":{\"check\":true,\"number\":73},\"73\":{\"check\":true,\"number\":74},\"74\":{\"check\":true,\"number\":75},\"75\":{\"check\":true,\"number\":76},\"76\":{\"check\":true,\"number\":77},\"77\":{\"check\":true,\"number\":78},\"78\":{\"check\":true,\"number\":79},\"79\":{\"check\":true,\"number\":80},\"80\":{\"check\":true,\"number\":81},\"81\":{\"check\":true,\"number\":82},\"82\":{\"check\":true,\"number\":83},\"83\":{\"check\":true,\"number\":84},\"84\":{\"check\":true,\"number\":85},\"85\":{\"check\":true,\"number\":86},\"86\":{\"check\":true,\"number\":87},\"87\":{\"check\":true,\"number\":88},\"88\":{\"check\":true,\"number\":89},\"89\":{\"check\":true,\"number\":90},\"90\":{\"check\":true,\"number\":91},\"91\":{\"check\":true,\"number\":92},\"92\":{\"check\":true,\"number\":93},\"93\":{\"check\":true,\"number\":94},\"94\":{\"check\":true,\"number\":95},\"95\":{\"check\":true,\"number\":96},\"96\":{\"check\":true,\"number\":97},\"97\":{\"check\":true,\"number\":98},\"98\":{\"check\":true,\"number\":99},\"99\":{\"check\":true,\"number\":100},\"rowname\":{\"value\":\"G\",\"disable\":false},\"price\":{\"value\":\"100\",\"disable\":false},\"type\":{\"value\":\"Silver\",\"disable\":false},\"row_index\":7},{\"0\":{\"check\":true,\"number\":1},\"1\":{\"check\":true,\"number\":2},\"2\":{\"check\":true,\"number\":3},\"3\":{\"check\":true,\"number\":4},\"4\":{\"check\":true,\"number\":5},\"5\":{\"check\":true,\"number\":6},\"6\":{\"check\":true,\"number\":7},\"7\":{\"check\":true,\"number\":8},\"8\":{\"check\":true,\"number\":9},\"9\":{\"check\":true,\"number\":10},\"10\":{\"check\":true,\"number\":11},\"11\":{\"check\":true,\"number\":12},\"12\":{\"check\":true,\"number\":13},\"13\":{\"check\":true,\"number\":14},\"14\":{\"check\":true,\"number\":15},\"15\":{\"check\":true,\"number\":16},\"16\":{\"check\":true,\"number\":17},\"17\":{\"check\":true,\"number\":18},\"18\":{\"check\":true,\"number\":19},\"19\":{\"check\":true,\"number\":20},\"20\":{\"check\":true,\"number\":21},\"21\":{\"check\":true,\"number\":22},\"22\":{\"check\":true,\"number\":23},\"23\":{\"check\":true,\"number\":24},\"24\":{\"check\":true,\"number\":25},\"25\":{\"check\":true,\"number\":26},\"26\":{\"check\":true,\"number\":27},\"27\":{\"check\":true,\"number\":28},\"28\":{\"check\":true,\"number\":29},\"29\":{\"check\":true,\"number\":30},\"30\":{\"check\":true,\"number\":31},\"31\":{\"check\":true,\"number\":32},\"32\":{\"check\":true,\"number\":33},\"33\":{\"check\":true,\"number\":34},\"34\":{\"check\":true,\"number\":35},\"35\":{\"check\":true,\"number\":36},\"36\":{\"check\":true,\"number\":37},\"37\":{\"check\":true,\"number\":38},\"38\":{\"check\":true,\"number\":39},\"39\":{\"check\":true,\"number\":40},\"40\":{\"check\":true,\"number\":41},\"41\":{\"check\":true,\"number\":42},\"42\":{\"check\":true,\"number\":43},\"43\":{\"check\":true,\"number\":44},\"44\":{\"check\":true,\"number\":45},\"45\":{\"check\":true,\"number\":46},\"46\":{\"check\":true,\"number\":47},\"47\":{\"check\":true,\"number\":48},\"48\":{\"check\":true,\"number\":49},\"49\":{\"check\":true,\"number\":50},\"50\":{\"check\":true,\"number\":51},\"51\":{\"check\":true,\"number\":52},\"52\":{\"check\":true,\"number\":53},\"53\":{\"check\":true,\"number\":54},\"54\":{\"check\":true,\"number\":55},\"55\":{\"check\":true,\"number\":56},\"56\":{\"check\":true,\"number\":57},\"57\":{\"check\":true,\"number\":58},\"58\":{\"check\":true,\"number\":59},\"59\":{\"check\":true,\"number\":60},\"60\":{\"check\":true,\"number\":61},\"61\":{\"check\":true,\"number\":62},\"62\":{\"check\":true,\"number\":63},\"63\":{\"check\":true,\"number\":64},\"64\":{\"check\":true,\"number\":65},\"65\":{\"check\":true,\"number\":66},\"66\":{\"check\":true,\"number\":67},\"67\":{\"check\":true,\"number\":68},\"68\":{\"check\":true,\"number\":69},\"69\":{\"check\":true,\"number\":70},\"70\":{\"check\":true,\"number\":71},\"71\":{\"check\":true,\"number\":72},\"72\":{\"check\":true,\"number\":73},\"73\":{\"check\":true,\"number\":74},\"74\":{\"check\":true,\"number\":75},\"75\":{\"check\":true,\"number\":76},\"76\":{\"check\":true,\"number\":77},\"77\":{\"check\":true,\"number\":78},\"78\":{\"check\":true,\"number\":79},\"79\":{\"check\":true,\"number\":80},\"80\":{\"check\":true,\"number\":81},\"81\":{\"check\":true,\"number\":82},\"82\":{\"check\":true,\"number\":83},\"83\":{\"check\":true,\"number\":84},\"84\":{\"check\":true,\"number\":85},\"85\":{\"check\":true,\"number\":86},\"86\":{\"check\":true,\"number\":87},\"87\":{\"check\":true,\"number\":88},\"88\":{\"check\":true,\"number\":89},\"89\":{\"check\":true,\"number\":90},\"90\":{\"check\":true,\"number\":91},\"91\":{\"check\":true,\"number\":92},\"92\":{\"check\":true,\"number\":93},\"93\":{\"check\":true,\"number\":94},\"94\":{\"check\":true,\"number\":95},\"95\":{\"check\":true,\"number\":96},\"96\":{\"check\":true,\"number\":97},\"97\":{\"check\":true,\"number\":98},\"98\":{\"check\":true,\"number\":99},\"99\":{\"check\":true,\"number\":100},\"rowname\":{\"value\":\"H\",\"disable\":false},\"price\":{\"value\":\"100\",\"disable\":false},\"type\":{\"value\":\"Silver\",\"disable\":false},\"row_index\":8},{\"0\":{\"check\":true,\"number\":1},\"1\":{\"check\":true,\"number\":2},\"2\":{\"check\":true,\"number\":3},\"3\":{\"check\":true,\"number\":4},\"4\":{\"check\":true,\"number\":5},\"5\":{\"check\":true,\"number\":6},\"6\":{\"check\":true,\"number\":7},\"7\":{\"check\":true,\"number\":8},\"8\":{\"check\":true,\"number\":9},\"9\":{\"check\":true,\"number\":10},\"10\":{\"check\":true,\"number\":11},\"11\":{\"check\":true,\"number\":12},\"12\":{\"check\":true,\"number\":13},\"13\":{\"check\":true,\"number\":14},\"14\":{\"check\":true,\"number\":15},\"15\":{\"check\":true,\"number\":16},\"16\":{\"check\":true,\"number\":17},\"17\":{\"check\":true,\"number\":18},\"18\":{\"check\":true,\"number\":19},\"19\":{\"check\":true,\"number\":20},\"20\":{\"check\":true,\"number\":21},\"21\":{\"check\":true,\"number\":22},\"22\":{\"check\":true,\"number\":23},\"23\":{\"check\":true,\"number\":24},\"24\":{\"check\":true,\"number\":25},\"25\":{\"check\":true,\"number\":26},\"26\":{\"check\":true,\"number\":27},\"27\":{\"check\":true,\"number\":28},\"28\":{\"check\":true,\"number\":29},\"29\":{\"check\":true,\"number\":30},\"30\":{\"check\":true,\"number\":31},\"31\":{\"check\":true,\"number\":32},\"32\":{\"check\":true,\"number\":33},\"33\":{\"check\":true,\"number\":34},\"34\":{\"check\":true,\"number\":35},\"35\":{\"check\":true,\"number\":36},\"36\":{\"check\":true,\"number\":37},\"37\":{\"check\":true,\"number\":38},\"38\":{\"check\":true,\"number\":39},\"39\":{\"check\":true,\"number\":40},\"40\":{\"check\":true,\"number\":41},\"41\":{\"check\":true,\"number\":42},\"42\":{\"check\":true,\"number\":43},\"43\":{\"check\":true,\"number\":44},\"44\":{\"check\":true,\"number\":45},\"45\":{\"check\":true,\"number\":46},\"46\":{\"check\":true,\"number\":47},\"47\":{\"check\":true,\"number\":48},\"48\":{\"check\":true,\"number\":49},\"49\":{\"check\":true,\"number\":50},\"50\":{\"check\":true,\"number\":51},\"51\":{\"check\":true,\"number\":52},\"52\":{\"check\":true,\"number\":53},\"53\":{\"check\":true,\"number\":54},\"54\":{\"check\":true,\"number\":55},\"55\":{\"check\":true,\"number\":56},\"56\":{\"check\":true,\"number\":57},\"57\":{\"check\":true,\"number\":58},\"58\":{\"check\":true,\"number\":59},\"59\":{\"check\":true,\"number\":60},\"60\":{\"check\":true,\"number\":61},\"61\":{\"check\":true,\"number\":62},\"62\":{\"check\":true,\"number\":63},\"63\":{\"check\":true,\"number\":64},\"64\":{\"check\":true,\"number\":65},\"65\":{\"check\":true,\"number\":66},\"66\":{\"check\":true,\"number\":67},\"67\":{\"check\":true,\"number\":68},\"68\":{\"check\":true,\"number\":69},\"69\":{\"check\":true,\"number\":70},\"70\":{\"check\":true,\"number\":71},\"71\":{\"check\":true,\"number\":72},\"72\":{\"check\":true,\"number\":73},\"73\":{\"check\":true,\"number\":74},\"74\":{\"check\":true,\"number\":75},\"75\":{\"check\":true,\"number\":76},\"76\":{\"check\":true,\"number\":77},\"77\":{\"check\":true,\"number\":78},\"78\":{\"check\":true,\"number\":79},\"79\":{\"check\":true,\"number\":80},\"80\":{\"check\":true,\"number\":81},\"81\":{\"check\":true,\"number\":82},\"82\":{\"check\":true,\"number\":83},\"83\":{\"check\":true,\"number\":84},\"84\":{\"check\":true,\"number\":85},\"85\":{\"check\":true,\"number\":86},\"86\":{\"check\":true,\"number\":87},\"87\":{\"check\":true,\"number\":88},\"88\":{\"check\":true,\"number\":89},\"89\":{\"check\":true,\"number\":90},\"90\":{\"check\":true,\"number\":91},\"91\":{\"check\":true,\"number\":92},\"92\":{\"check\":true,\"number\":93},\"93\":{\"check\":true,\"number\":94},\"94\":{\"check\":true,\"number\":95},\"95\":{\"check\":true,\"number\":96},\"96\":{\"check\":true,\"number\":97},\"97\":{\"check\":true,\"number\":98},\"98\":{\"check\":true,\"number\":99},\"99\":{\"check\":true,\"number\":100},\"rowname\":{\"value\":\"I\",\"disable\":false},\"price\":{\"value\":\"100\",\"disable\":false},\"type\":{\"value\":\"Silver\",\"disable\":false},\"row_index\":9},{\"0\":{\"check\":true,\"number\":1},\"1\":{\"check\":true,\"number\":2},\"2\":{\"check\":true,\"number\":3},\"3\":{\"check\":true,\"number\":4},\"4\":{\"check\":true,\"number\":5},\"5\":{\"check\":true,\"number\":6},\"6\":{\"check\":true,\"number\":7},\"7\":{\"check\":true,\"number\":8},\"8\":{\"check\":true,\"number\":9},\"9\":{\"check\":true,\"number\":10},\"10\":{\"check\":true,\"number\":11},\"11\":{\"check\":true,\"number\":12},\"12\":{\"check\":true,\"number\":13},\"13\":{\"check\":true,\"number\":14},\"14\":{\"check\":true,\"number\":15},\"15\":{\"check\":true,\"number\":16},\"16\":{\"check\":true,\"number\":17},\"17\":{\"check\":true,\"number\":18},\"18\":{\"check\":true,\"number\":19},\"19\":{\"check\":true,\"number\":20},\"20\":{\"check\":true,\"number\":21},\"21\":{\"check\":true,\"number\":22},\"22\":{\"check\":true,\"number\":23},\"23\":{\"check\":true,\"number\":24},\"24\":{\"check\":true,\"number\":25},\"25\":{\"check\":true,\"number\":26},\"26\":{\"check\":true,\"number\":27},\"27\":{\"check\":true,\"number\":28},\"28\":{\"check\":true,\"number\":29},\"29\":{\"check\":true,\"number\":30},\"30\":{\"check\":true,\"number\":31},\"31\":{\"check\":true,\"number\":32},\"32\":{\"check\":true,\"number\":33},\"33\":{\"check\":true,\"number\":34},\"34\":{\"check\":true,\"number\":35},\"35\":{\"check\":true,\"number\":36},\"36\":{\"check\":true,\"number\":37},\"37\":{\"check\":true,\"number\":38},\"38\":{\"check\":true,\"number\":39},\"39\":{\"check\":true,\"number\":40},\"40\":{\"check\":true,\"number\":41},\"41\":{\"check\":true,\"number\":42},\"42\":{\"check\":true,\"number\":43},\"43\":{\"check\":true,\"number\":44},\"44\":{\"check\":true,\"number\":45},\"45\":{\"check\":true,\"number\":46},\"46\":{\"check\":true,\"number\":47},\"47\":{\"check\":true,\"number\":48},\"48\":{\"check\":true,\"number\":49},\"49\":{\"check\":true,\"number\":50},\"50\":{\"check\":true,\"number\":51},\"51\":{\"check\":true,\"number\":52},\"52\":{\"check\":true,\"number\":53},\"53\":{\"check\":true,\"number\":54},\"54\":{\"check\":true,\"number\":55},\"55\":{\"check\":true,\"number\":56},\"56\":{\"check\":true,\"number\":57},\"57\":{\"check\":true,\"number\":58},\"58\":{\"check\":true,\"number\":59},\"59\":{\"check\":true,\"number\":60},\"60\":{\"check\":true,\"number\":61},\"61\":{\"check\":true,\"number\":62},\"62\":{\"check\":true,\"number\":63},\"63\":{\"check\":true,\"number\":64},\"64\":{\"check\":true,\"number\":65},\"65\":{\"check\":true,\"number\":66},\"66\":{\"check\":true,\"number\":67},\"67\":{\"check\":true,\"number\":68},\"68\":{\"check\":true,\"number\":69},\"69\":{\"check\":true,\"number\":70},\"70\":{\"check\":true,\"number\":71},\"71\":{\"check\":true,\"number\":72},\"72\":{\"check\":true,\"number\":73},\"73\":{\"check\":true,\"number\":74},\"74\":{\"check\":true,\"number\":75},\"75\":{\"check\":true,\"number\":76},\"76\":{\"check\":true,\"number\":77},\"77\":{\"check\":true,\"number\":78},\"78\":{\"check\":true,\"number\":79},\"79\":{\"check\":true,\"number\":80},\"80\":{\"check\":true,\"number\":81},\"81\":{\"check\":true,\"number\":82},\"82\":{\"check\":true,\"number\":83},\"83\":{\"check\":true,\"number\":84},\"84\":{\"check\":true,\"number\":85},\"85\":{\"check\":true,\"number\":86},\"86\":{\"check\":true,\"number\":87},\"87\":{\"check\":true,\"number\":88},\"88\":{\"check\":true,\"number\":89},\"89\":{\"check\":true,\"number\":90},\"90\":{\"check\":true,\"number\":91},\"91\":{\"check\":true,\"number\":92},\"92\":{\"check\":true,\"number\":93},\"93\":{\"check\":true,\"number\":94},\"94\":{\"check\":true,\"number\":95},\"95\":{\"check\":true,\"number\":96},\"96\":{\"check\":true,\"number\":97},\"97\":{\"check\":true,\"number\":98},\"98\":{\"check\":true,\"number\":99},\"99\":{\"check\":true,\"number\":100},\"rowname\":{\"value\":\"J\",\"disable\":false},\"price\":{\"value\":\"100\",\"disable\":false},\"type\":{\"value\":\"Silver\",\"disable\":false},\"row_index\":10}]', '{\"Silver-100\":[{\"0\":{\"check\":true,\"number\":1},\"1\":{\"check\":true,\"number\":2},\"2\":{\"check\":true,\"number\":3},\"3\":{\"check\":true,\"number\":4},\"4\":{\"check\":true,\"number\":5},\"5\":{\"check\":true,\"number\":6},\"6\":{\"check\":true,\"number\":7},\"7\":{\"check\":true,\"number\":8},\"8\":{\"check\":true,\"number\":9},\"9\":{\"check\":true,\"number\":10},\"10\":{\"check\":true,\"number\":11},\"11\":{\"check\":true,\"number\":12},\"12\":{\"check\":true,\"number\":13},\"13\":{\"check\":true,\"number\":14},\"14\":{\"check\":true,\"number\":15},\"15\":{\"check\":true,\"number\":16},\"16\":{\"check\":true,\"number\":17},\"17\":{\"check\":true,\"number\":18},\"18\":{\"check\":true,\"number\":19},\"19\":{\"check\":true,\"number\":20},\"20\":{\"check\":true,\"number\":21},\"21\":{\"check\":true,\"number\":22},\"22\":{\"check\":true,\"number\":23},\"23\":{\"check\":true,\"number\":24},\"24\":{\"check\":true,\"number\":25},\"25\":{\"check\":true,\"number\":26},\"26\":{\"check\":true,\"number\":27},\"27\":{\"check\":true,\"number\":28},\"28\":{\"check\":true,\"number\":29},\"29\":{\"check\":true,\"number\":30},\"30\":{\"check\":true,\"number\":31},\"31\":{\"check\":true,\"number\":32},\"32\":{\"check\":true,\"number\":33},\"33\":{\"check\":true,\"number\":34},\"34\":{\"check\":true,\"number\":35},\"35\":{\"check\":true,\"number\":36},\"36\":{\"check\":true,\"number\":37},\"37\":{\"check\":true,\"number\":38},\"38\":{\"check\":true,\"number\":39},\"39\":{\"check\":true,\"number\":40},\"40\":{\"check\":true,\"number\":41},\"41\":{\"check\":true,\"number\":42},\"42\":{\"check\":true,\"number\":43},\"43\":{\"check\":true,\"number\":44},\"44\":{\"check\":true,\"number\":45},\"45\":{\"check\":true,\"number\":46},\"46\":{\"check\":true,\"number\":47},\"47\":{\"check\":true,\"number\":48},\"48\":{\"check\":true,\"number\":49},\"49\":{\"check\":true,\"number\":50},\"50\":{\"check\":true,\"number\":51},\"51\":{\"check\":true,\"number\":52},\"52\":{\"check\":true,\"number\":53},\"53\":{\"check\":true,\"number\":54},\"54\":{\"check\":true,\"number\":55},\"55\":{\"check\":true,\"number\":56},\"56\":{\"check\":true,\"number\":57},\"57\":{\"check\":true,\"number\":58},\"58\":{\"check\":true,\"number\":59},\"59\":{\"check\":true,\"number\":60},\"60\":{\"check\":true,\"number\":61},\"61\":{\"check\":true,\"number\":62},\"62\":{\"check\":true,\"number\":63},\"63\":{\"check\":true,\"number\":64},\"64\":{\"check\":true,\"number\":65},\"65\":{\"check\":true,\"number\":66},\"66\":{\"check\":true,\"number\":67},\"67\":{\"check\":true,\"number\":68},\"68\":{\"check\":true,\"number\":69},\"69\":{\"check\":true,\"number\":70},\"70\":{\"check\":true,\"number\":71},\"71\":{\"check\":true,\"number\":72},\"72\":{\"check\":true,\"number\":73},\"73\":{\"check\":true,\"number\":74},\"74\":{\"check\":true,\"number\":75},\"75\":{\"check\":true,\"number\":76},\"76\":{\"check\":true,\"number\":77},\"77\":{\"check\":true,\"number\":78},\"78\":{\"check\":true,\"number\":79},\"79\":{\"check\":true,\"number\":80},\"80\":{\"check\":true,\"number\":81},\"81\":{\"check\":true,\"number\":82},\"82\":{\"check\":true,\"number\":83},\"83\":{\"check\":true,\"number\":84},\"84\":{\"check\":true,\"number\":85},\"85\":{\"check\":true,\"number\":86},\"86\":{\"check\":true,\"number\":87},\"87\":{\"check\":true,\"number\":88},\"88\":{\"check\":true,\"number\":89},\"89\":{\"check\":true,\"number\":90},\"90\":{\"check\":true,\"number\":91},\"91\":{\"check\":true,\"number\":92},\"92\":{\"check\":true,\"number\":93},\"93\":{\"check\":true,\"number\":94},\"94\":{\"check\":true,\"number\":95},\"95\":{\"check\":true,\"number\":96},\"96\":{\"check\":true,\"number\":97},\"97\":{\"check\":true,\"number\":98},\"98\":{\"check\":true,\"number\":99},\"99\":{\"check\":true,\"number\":100},\"rowname\":{\"value\":\"A\",\"disable\":false},\"price\":{\"value\":\"100\",\"disable\":false},\"type\":{\"value\":\"Silver\",\"disable\":false},\"row_index\":1},{\"0\":{\"check\":true,\"number\":1},\"1\":{\"check\":true,\"number\":2},\"2\":{\"check\":true,\"number\":3},\"3\":{\"check\":true,\"number\":4},\"4\":{\"check\":true,\"number\":5},\"5\":{\"check\":true,\"number\":6},\"6\":{\"check\":true,\"number\":7},\"7\":{\"check\":true,\"number\":8},\"8\":{\"check\":true,\"number\":9},\"9\":{\"check\":true,\"number\":10},\"10\":{\"check\":true,\"number\":11},\"11\":{\"check\":true,\"number\":12},\"12\":{\"check\":true,\"number\":13},\"13\":{\"check\":true,\"number\":14},\"14\":{\"check\":true,\"number\":15},\"15\":{\"check\":true,\"number\":16},\"16\":{\"check\":true,\"number\":17},\"17\":{\"check\":true,\"number\":18},\"18\":{\"check\":true,\"number\":19},\"19\":{\"check\":true,\"number\":20},\"20\":{\"check\":true,\"number\":21},\"21\":{\"check\":true,\"number\":22},\"22\":{\"check\":true,\"number\":23},\"23\":{\"check\":true,\"number\":24},\"24\":{\"check\":true,\"number\":25},\"25\":{\"check\":true,\"number\":26},\"26\":{\"check\":true,\"number\":27},\"27\":{\"check\":true,\"number\":28},\"28\":{\"check\":true,\"number\":29},\"29\":{\"check\":true,\"number\":30},\"30\":{\"check\":true,\"number\":31},\"31\":{\"check\":true,\"number\":32},\"32\":{\"check\":true,\"number\":33},\"33\":{\"check\":true,\"number\":34},\"34\":{\"check\":true,\"number\":35},\"35\":{\"check\":true,\"number\":36},\"36\":{\"check\":true,\"number\":37},\"37\":{\"check\":true,\"number\":38},\"38\":{\"check\":true,\"number\":39},\"39\":{\"check\":true,\"number\":40},\"40\":{\"check\":true,\"number\":41},\"41\":{\"check\":true,\"number\":42},\"42\":{\"check\":true,\"number\":43},\"43\":{\"check\":true,\"number\":44},\"44\":{\"check\":true,\"number\":45},\"45\":{\"check\":true,\"number\":46},\"46\":{\"check\":true,\"number\":47},\"47\":{\"check\":true,\"number\":48},\"48\":{\"check\":true,\"number\":49},\"49\":{\"check\":true,\"number\":50},\"50\":{\"check\":true,\"number\":51},\"51\":{\"check\":true,\"number\":52},\"52\":{\"check\":true,\"number\":53},\"53\":{\"check\":true,\"number\":54},\"54\":{\"check\":true,\"number\":55},\"55\":{\"check\":true,\"number\":56},\"56\":{\"check\":true,\"number\":57},\"57\":{\"check\":true,\"number\":58},\"58\":{\"check\":true,\"number\":59},\"59\":{\"check\":true,\"number\":60},\"60\":{\"check\":true,\"number\":61},\"61\":{\"check\":true,\"number\":62},\"62\":{\"check\":true,\"number\":63},\"63\":{\"check\":true,\"number\":64},\"64\":{\"check\":true,\"number\":65},\"65\":{\"check\":true,\"number\":66},\"66\":{\"check\":true,\"number\":67},\"67\":{\"check\":true,\"number\":68},\"68\":{\"check\":true,\"number\":69},\"69\":{\"check\":true,\"number\":70},\"70\":{\"check\":true,\"number\":71},\"71\":{\"check\":true,\"number\":72},\"72\":{\"check\":true,\"number\":73},\"73\":{\"check\":true,\"number\":74},\"74\":{\"check\":true,\"number\":75},\"75\":{\"check\":true,\"number\":76},\"76\":{\"check\":true,\"number\":77},\"77\":{\"check\":true,\"number\":78},\"78\":{\"check\":true,\"number\":79},\"79\":{\"check\":true,\"number\":80},\"80\":{\"check\":true,\"number\":81},\"81\":{\"check\":true,\"number\":82},\"82\":{\"check\":true,\"number\":83},\"83\":{\"check\":true,\"number\":84},\"84\":{\"check\":true,\"number\":85},\"85\":{\"check\":true,\"number\":86},\"86\":{\"check\":true,\"number\":87},\"87\":{\"check\":true,\"number\":88},\"88\":{\"check\":true,\"number\":89},\"89\":{\"check\":true,\"number\":90},\"90\":{\"check\":true,\"number\":91},\"91\":{\"check\":true,\"number\":92},\"92\":{\"check\":true,\"number\":93},\"93\":{\"check\":true,\"number\":94},\"94\":{\"check\":true,\"number\":95},\"95\":{\"check\":true,\"number\":96},\"96\":{\"check\":true,\"number\":97},\"97\":{\"check\":true,\"number\":98},\"98\":{\"check\":true,\"number\":99},\"99\":{\"check\":true,\"number\":100},\"rowname\":{\"value\":\"B\",\"disable\":false},\"price\":{\"value\":\"100\",\"disable\":false},\"type\":{\"value\":\"Silver\",\"disable\":false},\"row_index\":2},{\"0\":{\"check\":true,\"number\":1},\"1\":{\"check\":true,\"number\":2},\"2\":{\"check\":true,\"number\":3},\"3\":{\"check\":true,\"number\":4},\"4\":{\"check\":true,\"number\":5},\"5\":{\"check\":true,\"number\":6},\"6\":{\"check\":true,\"number\":7},\"7\":{\"check\":true,\"number\":8},\"8\":{\"check\":true,\"number\":9},\"9\":{\"check\":true,\"number\":10},\"10\":{\"check\":true,\"number\":11},\"11\":{\"check\":true,\"number\":12},\"12\":{\"check\":true,\"number\":13},\"13\":{\"check\":true,\"number\":14},\"14\":{\"check\":true,\"number\":15},\"15\":{\"check\":true,\"number\":16},\"16\":{\"check\":true,\"number\":17},\"17\":{\"check\":true,\"number\":18},\"18\":{\"check\":true,\"number\":19},\"19\":{\"check\":true,\"number\":20},\"20\":{\"check\":true,\"number\":21},\"21\":{\"check\":true,\"number\":22},\"22\":{\"check\":true,\"number\":23},\"23\":{\"check\":true,\"number\":24},\"24\":{\"check\":true,\"number\":25},\"25\":{\"check\":true,\"number\":26},\"26\":{\"check\":true,\"number\":27},\"27\":{\"check\":true,\"number\":28},\"28\":{\"check\":true,\"number\":29},\"29\":{\"check\":true,\"number\":30},\"30\":{\"check\":true,\"number\":31},\"31\":{\"check\":true,\"number\":32},\"32\":{\"check\":true,\"number\":33},\"33\":{\"check\":true,\"number\":34},\"34\":{\"check\":true,\"number\":35},\"35\":{\"check\":true,\"number\":36},\"36\":{\"check\":true,\"number\":37},\"37\":{\"check\":true,\"number\":38},\"38\":{\"check\":true,\"number\":39},\"39\":{\"check\":true,\"number\":40},\"40\":{\"check\":true,\"number\":41},\"41\":{\"check\":true,\"number\":42},\"42\":{\"check\":true,\"number\":43},\"43\":{\"check\":true,\"number\":44},\"44\":{\"check\":true,\"number\":45},\"45\":{\"check\":true,\"number\":46},\"46\":{\"check\":true,\"number\":47},\"47\":{\"check\":true,\"number\":48},\"48\":{\"check\":true,\"number\":49},\"49\":{\"check\":true,\"number\":50},\"50\":{\"check\":true,\"number\":51},\"51\":{\"check\":true,\"number\":52},\"52\":{\"check\":true,\"number\":53},\"53\":{\"check\":true,\"number\":54},\"54\":{\"check\":true,\"number\":55},\"55\":{\"check\":true,\"number\":56},\"56\":{\"check\":true,\"number\":57},\"57\":{\"check\":true,\"number\":58},\"58\":{\"check\":true,\"number\":59},\"59\":{\"check\":true,\"number\":60},\"60\":{\"check\":true,\"number\":61},\"61\":{\"check\":true,\"number\":62},\"62\":{\"check\":true,\"number\":63},\"63\":{\"check\":true,\"number\":64},\"64\":{\"check\":true,\"number\":65},\"65\":{\"check\":true,\"number\":66},\"66\":{\"check\":true,\"number\":67},\"67\":{\"check\":true,\"number\":68},\"68\":{\"check\":true,\"number\":69},\"69\":{\"check\":true,\"number\":70},\"70\":{\"check\":true,\"number\":71},\"71\":{\"check\":true,\"number\":72},\"72\":{\"check\":true,\"number\":73},\"73\":{\"check\":true,\"number\":74},\"74\":{\"check\":true,\"number\":75},\"75\":{\"check\":true,\"number\":76},\"76\":{\"check\":true,\"number\":77},\"77\":{\"check\":true,\"number\":78},\"78\":{\"check\":true,\"number\":79},\"79\":{\"check\":true,\"number\":80},\"80\":{\"check\":true,\"number\":81},\"81\":{\"check\":true,\"number\":82},\"82\":{\"check\":true,\"number\":83},\"83\":{\"check\":true,\"number\":84},\"84\":{\"check\":true,\"number\":85},\"85\":{\"check\":true,\"number\":86},\"86\":{\"check\":true,\"number\":87},\"87\":{\"check\":true,\"number\":88},\"88\":{\"check\":true,\"number\":89},\"89\":{\"check\":true,\"number\":90},\"90\":{\"check\":true,\"number\":91},\"91\":{\"check\":true,\"number\":92},\"92\":{\"check\":true,\"number\":93},\"93\":{\"check\":true,\"number\":94},\"94\":{\"check\":true,\"number\":95},\"95\":{\"check\":true,\"number\":96},\"96\":{\"check\":true,\"number\":97},\"97\":{\"check\":true,\"number\":98},\"98\":{\"check\":true,\"number\":99},\"99\":{\"check\":true,\"number\":100},\"rowname\":{\"value\":\"C\",\"disable\":false},\"price\":{\"value\":\"100\",\"disable\":false},\"type\":{\"value\":\"Silver\",\"disable\":false},\"row_index\":3},{\"0\":{\"check\":true,\"number\":1},\"1\":{\"check\":true,\"number\":2},\"2\":{\"check\":true,\"number\":3},\"3\":{\"check\":true,\"number\":4},\"4\":{\"check\":true,\"number\":5},\"5\":{\"check\":true,\"number\":6},\"6\":{\"check\":true,\"number\":7},\"7\":{\"check\":true,\"number\":8},\"8\":{\"check\":true,\"number\":9},\"9\":{\"check\":true,\"number\":10},\"10\":{\"check\":true,\"number\":11},\"11\":{\"check\":true,\"number\":12},\"12\":{\"check\":true,\"number\":13},\"13\":{\"check\":true,\"number\":14},\"14\":{\"check\":true,\"number\":15},\"15\":{\"check\":true,\"number\":16},\"16\":{\"check\":true,\"number\":17},\"17\":{\"check\":true,\"number\":18},\"18\":{\"check\":true,\"number\":19},\"19\":{\"check\":true,\"number\":20},\"20\":{\"check\":true,\"number\":21},\"21\":{\"check\":true,\"number\":22},\"22\":{\"check\":true,\"number\":23},\"23\":{\"check\":true,\"number\":24},\"24\":{\"check\":true,\"number\":25},\"25\":{\"check\":true,\"number\":26},\"26\":{\"check\":true,\"number\":27},\"27\":{\"check\":true,\"number\":28},\"28\":{\"check\":true,\"number\":29},\"29\":{\"check\":true,\"number\":30},\"30\":{\"check\":true,\"number\":31},\"31\":{\"check\":true,\"number\":32},\"32\":{\"check\":true,\"number\":33},\"33\":{\"check\":true,\"number\":34},\"34\":{\"check\":true,\"number\":35},\"35\":{\"check\":true,\"number\":36},\"36\":{\"check\":true,\"number\":37},\"37\":{\"check\":true,\"number\":38},\"38\":{\"check\":true,\"number\":39},\"39\":{\"check\":true,\"number\":40},\"40\":{\"check\":true,\"number\":41},\"41\":{\"check\":true,\"number\":42},\"42\":{\"check\":true,\"number\":43},\"43\":{\"check\":true,\"number\":44},\"44\":{\"check\":true,\"number\":45},\"45\":{\"check\":true,\"number\":46},\"46\":{\"check\":true,\"number\":47},\"47\":{\"check\":true,\"number\":48},\"48\":{\"check\":true,\"number\":49},\"49\":{\"check\":true,\"number\":50},\"50\":{\"check\":true,\"number\":51},\"51\":{\"check\":true,\"number\":52},\"52\":{\"check\":true,\"number\":53},\"53\":{\"check\":true,\"number\":54},\"54\":{\"check\":true,\"number\":55},\"55\":{\"check\":true,\"number\":56},\"56\":{\"check\":true,\"number\":57},\"57\":{\"check\":true,\"number\":58},\"58\":{\"check\":true,\"number\":59},\"59\":{\"check\":true,\"number\":60},\"60\":{\"check\":true,\"number\":61},\"61\":{\"check\":true,\"number\":62},\"62\":{\"check\":true,\"number\":63},\"63\":{\"check\":true,\"number\":64},\"64\":{\"check\":true,\"number\":65},\"65\":{\"check\":true,\"number\":66},\"66\":{\"check\":true,\"number\":67},\"67\":{\"check\":true,\"number\":68},\"68\":{\"check\":true,\"number\":69},\"69\":{\"check\":true,\"number\":70},\"70\":{\"check\":true,\"number\":71},\"71\":{\"check\":true,\"number\":72},\"72\":{\"check\":true,\"number\":73},\"73\":{\"check\":true,\"number\":74},\"74\":{\"check\":true,\"number\":75},\"75\":{\"check\":true,\"number\":76},\"76\":{\"check\":true,\"number\":77},\"77\":{\"check\":true,\"number\":78},\"78\":{\"check\":true,\"number\":79},\"79\":{\"check\":true,\"number\":80},\"80\":{\"check\":true,\"number\":81},\"81\":{\"check\":true,\"number\":82},\"82\":{\"check\":true,\"number\":83},\"83\":{\"check\":true,\"number\":84},\"84\":{\"check\":true,\"number\":85},\"85\":{\"check\":true,\"number\":86},\"86\":{\"check\":true,\"number\":87},\"87\":{\"check\":true,\"number\":88},\"88\":{\"check\":true,\"number\":89},\"89\":{\"check\":true,\"number\":90},\"90\":{\"check\":true,\"number\":91},\"91\":{\"check\":true,\"number\":92},\"92\":{\"check\":true,\"number\":93},\"93\":{\"check\":true,\"number\":94},\"94\":{\"check\":true,\"number\":95},\"95\":{\"check\":true,\"number\":96},\"96\":{\"check\":true,\"number\":97},\"97\":{\"check\":true,\"number\":98},\"98\":{\"check\":true,\"number\":99},\"99\":{\"check\":true,\"number\":100},\"rowname\":{\"value\":\"D\",\"disable\":false},\"price\":{\"value\":\"100\",\"disable\":false},\"type\":{\"value\":\"Silver\",\"disable\":false},\"row_index\":4},{\"0\":{\"check\":true,\"number\":1},\"1\":{\"check\":true,\"number\":2},\"2\":{\"check\":true,\"number\":3},\"3\":{\"check\":true,\"number\":4},\"4\":{\"check\":true,\"number\":5},\"5\":{\"check\":true,\"number\":6},\"6\":{\"check\":true,\"number\":7},\"7\":{\"check\":true,\"number\":8},\"8\":{\"check\":true,\"number\":9},\"9\":{\"check\":true,\"number\":10},\"10\":{\"check\":true,\"number\":11},\"11\":{\"check\":true,\"number\":12},\"12\":{\"check\":true,\"number\":13},\"13\":{\"check\":true,\"number\":14},\"14\":{\"check\":true,\"number\":15},\"15\":{\"check\":true,\"number\":16},\"16\":{\"check\":true,\"number\":17},\"17\":{\"check\":true,\"number\":18},\"18\":{\"check\":true,\"number\":19},\"19\":{\"check\":true,\"number\":20},\"20\":{\"check\":true,\"number\":21},\"21\":{\"check\":true,\"number\":22},\"22\":{\"check\":true,\"number\":23},\"23\":{\"check\":true,\"number\":24},\"24\":{\"check\":true,\"number\":25},\"25\":{\"check\":true,\"number\":26},\"26\":{\"check\":true,\"number\":27},\"27\":{\"check\":true,\"number\":28},\"28\":{\"check\":true,\"number\":29},\"29\":{\"check\":true,\"number\":30},\"30\":{\"check\":true,\"number\":31},\"31\":{\"check\":true,\"number\":32},\"32\":{\"check\":true,\"number\":33},\"33\":{\"check\":true,\"number\":34},\"34\":{\"check\":true,\"number\":35},\"35\":{\"check\":true,\"number\":36},\"36\":{\"check\":true,\"number\":37},\"37\":{\"check\":true,\"number\":38},\"38\":{\"check\":true,\"number\":39},\"39\":{\"check\":true,\"number\":40},\"40\":{\"check\":true,\"number\":41},\"41\":{\"check\":true,\"number\":42},\"42\":{\"check\":true,\"number\":43},\"43\":{\"check\":true,\"number\":44},\"44\":{\"check\":true,\"number\":45},\"45\":{\"check\":true,\"number\":46},\"46\":{\"check\":true,\"number\":47},\"47\":{\"check\":true,\"number\":48},\"48\":{\"check\":true,\"number\":49},\"49\":{\"check\":true,\"number\":50},\"50\":{\"check\":true,\"number\":51},\"51\":{\"check\":true,\"number\":52},\"52\":{\"check\":true,\"number\":53},\"53\":{\"check\":true,\"number\":54},\"54\":{\"check\":true,\"number\":55},\"55\":{\"check\":true,\"number\":56},\"56\":{\"check\":true,\"number\":57},\"57\":{\"check\":true,\"number\":58},\"58\":{\"check\":true,\"number\":59},\"59\":{\"check\":true,\"number\":60},\"60\":{\"check\":true,\"number\":61},\"61\":{\"check\":true,\"number\":62},\"62\":{\"check\":true,\"number\":63},\"63\":{\"check\":true,\"number\":64},\"64\":{\"check\":true,\"number\":65},\"65\":{\"check\":true,\"number\":66},\"66\":{\"check\":true,\"number\":67},\"67\":{\"check\":true,\"number\":68},\"68\":{\"check\":true,\"number\":69},\"69\":{\"check\":true,\"number\":70},\"70\":{\"check\":true,\"number\":71},\"71\":{\"check\":true,\"number\":72},\"72\":{\"check\":true,\"number\":73},\"73\":{\"check\":true,\"number\":74},\"74\":{\"check\":true,\"number\":75},\"75\":{\"check\":true,\"number\":76},\"76\":{\"check\":true,\"number\":77},\"77\":{\"check\":true,\"number\":78},\"78\":{\"check\":true,\"number\":79},\"79\":{\"check\":true,\"number\":80},\"80\":{\"check\":true,\"number\":81},\"81\":{\"check\":true,\"number\":82},\"82\":{\"check\":true,\"number\":83},\"83\":{\"check\":true,\"number\":84},\"84\":{\"check\":true,\"number\":85},\"85\":{\"check\":true,\"number\":86},\"86\":{\"check\":true,\"number\":87},\"87\":{\"check\":true,\"number\":88},\"88\":{\"check\":true,\"number\":89},\"89\":{\"check\":true,\"number\":90},\"90\":{\"check\":true,\"number\":91},\"91\":{\"check\":true,\"number\":92},\"92\":{\"check\":true,\"number\":93},\"93\":{\"check\":true,\"number\":94},\"94\":{\"check\":true,\"number\":95},\"95\":{\"check\":true,\"number\":96},\"96\":{\"check\":true,\"number\":97},\"97\":{\"check\":true,\"number\":98},\"98\":{\"check\":true,\"number\":99},\"99\":{\"check\":true,\"number\":100},\"rowname\":{\"value\":\"E\",\"disable\":false},\"price\":{\"value\":\"100\",\"disable\":false},\"type\":{\"value\":\"Silver\",\"disable\":false},\"row_index\":5},{\"0\":{\"check\":true,\"number\":1},\"1\":{\"check\":true,\"number\":2},\"2\":{\"check\":true,\"number\":3},\"3\":{\"check\":true,\"number\":4},\"4\":{\"check\":true,\"number\":5},\"5\":{\"check\":true,\"number\":6},\"6\":{\"check\":true,\"number\":7},\"7\":{\"check\":true,\"number\":8},\"8\":{\"check\":true,\"number\":9},\"9\":{\"check\":true,\"number\":10},\"10\":{\"check\":true,\"number\":11},\"11\":{\"check\":true,\"number\":12},\"12\":{\"check\":true,\"number\":13},\"13\":{\"check\":true,\"number\":14},\"14\":{\"check\":true,\"number\":15},\"15\":{\"check\":true,\"number\":16},\"16\":{\"check\":true,\"number\":17},\"17\":{\"check\":true,\"number\":18},\"18\":{\"check\":true,\"number\":19},\"19\":{\"check\":true,\"number\":20},\"20\":{\"check\":true,\"number\":21},\"21\":{\"check\":true,\"number\":22},\"22\":{\"check\":true,\"number\":23},\"23\":{\"check\":true,\"number\":24},\"24\":{\"check\":true,\"number\":25},\"25\":{\"check\":true,\"number\":26},\"26\":{\"check\":true,\"number\":27},\"27\":{\"check\":true,\"number\":28},\"28\":{\"check\":true,\"number\":29},\"29\":{\"check\":true,\"number\":30},\"30\":{\"check\":true,\"number\":31},\"31\":{\"check\":true,\"number\":32},\"32\":{\"check\":true,\"number\":33},\"33\":{\"check\":true,\"number\":34},\"34\":{\"check\":true,\"number\":35},\"35\":{\"check\":true,\"number\":36},\"36\":{\"check\":true,\"number\":37},\"37\":{\"check\":true,\"number\":38},\"38\":{\"check\":true,\"number\":39},\"39\":{\"check\":true,\"number\":40},\"40\":{\"check\":true,\"number\":41},\"41\":{\"check\":true,\"number\":42},\"42\":{\"check\":true,\"number\":43},\"43\":{\"check\":true,\"number\":44},\"44\":{\"check\":true,\"number\":45},\"45\":{\"check\":true,\"number\":46},\"46\":{\"check\":true,\"number\":47},\"47\":{\"check\":true,\"number\":48},\"48\":{\"check\":true,\"number\":49},\"49\":{\"check\":true,\"number\":50},\"50\":{\"check\":true,\"number\":51},\"51\":{\"check\":true,\"number\":52},\"52\":{\"check\":true,\"number\":53},\"53\":{\"check\":true,\"number\":54},\"54\":{\"check\":true,\"number\":55},\"55\":{\"check\":true,\"number\":56},\"56\":{\"check\":true,\"number\":57},\"57\":{\"check\":true,\"number\":58},\"58\":{\"check\":true,\"number\":59},\"59\":{\"check\":true,\"number\":60},\"60\":{\"check\":true,\"number\":61},\"61\":{\"check\":true,\"number\":62},\"62\":{\"check\":true,\"number\":63},\"63\":{\"check\":true,\"number\":64},\"64\":{\"check\":true,\"number\":65},\"65\":{\"check\":true,\"number\":66},\"66\":{\"check\":true,\"number\":67},\"67\":{\"check\":true,\"number\":68},\"68\":{\"check\":true,\"number\":69},\"69\":{\"check\":true,\"number\":70},\"70\":{\"check\":true,\"number\":71},\"71\":{\"check\":true,\"number\":72},\"72\":{\"check\":true,\"number\":73},\"73\":{\"check\":true,\"number\":74},\"74\":{\"check\":true,\"number\":75},\"75\":{\"check\":true,\"number\":76},\"76\":{\"check\":true,\"number\":77},\"77\":{\"check\":true,\"number\":78},\"78\":{\"check\":true,\"number\":79},\"79\":{\"check\":true,\"number\":80},\"80\":{\"check\":true,\"number\":81},\"81\":{\"check\":true,\"number\":82},\"82\":{\"check\":true,\"number\":83},\"83\":{\"check\":true,\"number\":84},\"84\":{\"check\":true,\"number\":85},\"85\":{\"check\":true,\"number\":86},\"86\":{\"check\":true,\"number\":87},\"87\":{\"check\":true,\"number\":88},\"88\":{\"check\":true,\"number\":89},\"89\":{\"check\":true,\"number\":90},\"90\":{\"check\":true,\"number\":91},\"91\":{\"check\":true,\"number\":92},\"92\":{\"check\":true,\"number\":93},\"93\":{\"check\":true,\"number\":94},\"94\":{\"check\":true,\"number\":95},\"95\":{\"check\":true,\"number\":96},\"96\":{\"check\":true,\"number\":97},\"97\":{\"check\":true,\"number\":98},\"98\":{\"check\":true,\"number\":99},\"99\":{\"check\":true,\"number\":100},\"rowname\":{\"value\":\"F\",\"disable\":false},\"price\":{\"value\":\"100\",\"disable\":false},\"type\":{\"value\":\"Silver\",\"disable\":false},\"row_index\":6},{\"0\":{\"check\":true,\"number\":1},\"1\":{\"check\":true,\"number\":2},\"2\":{\"check\":true,\"number\":3},\"3\":{\"check\":true,\"number\":4},\"4\":{\"check\":true,\"number\":5},\"5\":{\"check\":true,\"number\":6},\"6\":{\"check\":true,\"number\":7},\"7\":{\"check\":true,\"number\":8},\"8\":{\"check\":true,\"number\":9},\"9\":{\"check\":true,\"number\":10},\"10\":{\"check\":true,\"number\":11},\"11\":{\"check\":true,\"number\":12},\"12\":{\"check\":true,\"number\":13},\"13\":{\"check\":true,\"number\":14},\"14\":{\"check\":true,\"number\":15},\"15\":{\"check\":true,\"number\":16},\"16\":{\"check\":true,\"number\":17},\"17\":{\"check\":true,\"number\":18},\"18\":{\"check\":true,\"number\":19},\"19\":{\"check\":true,\"number\":20},\"20\":{\"check\":true,\"number\":21},\"21\":{\"check\":true,\"number\":22},\"22\":{\"check\":true,\"number\":23},\"23\":{\"check\":true,\"number\":24},\"24\":{\"check\":true,\"number\":25},\"25\":{\"check\":true,\"number\":26},\"26\":{\"check\":true,\"number\":27},\"27\":{\"check\":true,\"number\":28},\"28\":{\"check\":true,\"number\":29},\"29\":{\"check\":true,\"number\":30},\"30\":{\"check\":true,\"number\":31},\"31\":{\"check\":true,\"number\":32},\"32\":{\"check\":true,\"number\":33},\"33\":{\"check\":true,\"number\":34},\"34\":{\"check\":true,\"number\":35},\"35\":{\"check\":true,\"number\":36},\"36\":{\"check\":true,\"number\":37},\"37\":{\"check\":true,\"number\":38},\"38\":{\"check\":true,\"number\":39},\"39\":{\"check\":true,\"number\":40},\"40\":{\"check\":true,\"number\":41},\"41\":{\"check\":true,\"number\":42},\"42\":{\"check\":true,\"number\":43},\"43\":{\"check\":true,\"number\":44},\"44\":{\"check\":true,\"number\":45},\"45\":{\"check\":true,\"number\":46},\"46\":{\"check\":true,\"number\":47},\"47\":{\"check\":true,\"number\":48},\"48\":{\"check\":true,\"number\":49},\"49\":{\"check\":true,\"number\":50},\"50\":{\"check\":true,\"number\":51},\"51\":{\"check\":true,\"number\":52},\"52\":{\"check\":true,\"number\":53},\"53\":{\"check\":true,\"number\":54},\"54\":{\"check\":true,\"number\":55},\"55\":{\"check\":true,\"number\":56},\"56\":{\"check\":true,\"number\":57},\"57\":{\"check\":true,\"number\":58},\"58\":{\"check\":true,\"number\":59},\"59\":{\"check\":true,\"number\":60},\"60\":{\"check\":true,\"number\":61},\"61\":{\"check\":true,\"number\":62},\"62\":{\"check\":true,\"number\":63},\"63\":{\"check\":true,\"number\":64},\"64\":{\"check\":true,\"number\":65},\"65\":{\"check\":true,\"number\":66},\"66\":{\"check\":true,\"number\":67},\"67\":{\"check\":true,\"number\":68},\"68\":{\"check\":true,\"number\":69},\"69\":{\"check\":true,\"number\":70},\"70\":{\"check\":true,\"number\":71},\"71\":{\"check\":true,\"number\":72},\"72\":{\"check\":true,\"number\":73},\"73\":{\"check\":true,\"number\":74},\"74\":{\"check\":true,\"number\":75},\"75\":{\"check\":true,\"number\":76},\"76\":{\"check\":true,\"number\":77},\"77\":{\"check\":true,\"number\":78},\"78\":{\"check\":true,\"number\":79},\"79\":{\"check\":true,\"number\":80},\"80\":{\"check\":true,\"number\":81},\"81\":{\"check\":true,\"number\":82},\"82\":{\"check\":true,\"number\":83},\"83\":{\"check\":true,\"number\":84},\"84\":{\"check\":true,\"number\":85},\"85\":{\"check\":true,\"number\":86},\"86\":{\"check\":true,\"number\":87},\"87\":{\"check\":true,\"number\":88},\"88\":{\"check\":true,\"number\":89},\"89\":{\"check\":true,\"number\":90},\"90\":{\"check\":true,\"number\":91},\"91\":{\"check\":true,\"number\":92},\"92\":{\"check\":true,\"number\":93},\"93\":{\"check\":true,\"number\":94},\"94\":{\"check\":true,\"number\":95},\"95\":{\"check\":true,\"number\":96},\"96\":{\"check\":true,\"number\":97},\"97\":{\"check\":true,\"number\":98},\"98\":{\"check\":true,\"number\":99},\"99\":{\"check\":true,\"number\":100},\"rowname\":{\"value\":\"G\",\"disable\":false},\"price\":{\"value\":\"100\",\"disable\":false},\"type\":{\"value\":\"Silver\",\"disable\":false},\"row_index\":7},{\"0\":{\"check\":true,\"number\":1},\"1\":{\"check\":true,\"number\":2},\"2\":{\"check\":true,\"number\":3},\"3\":{\"check\":true,\"number\":4},\"4\":{\"check\":true,\"number\":5},\"5\":{\"check\":true,\"number\":6},\"6\":{\"check\":true,\"number\":7},\"7\":{\"check\":true,\"number\":8},\"8\":{\"check\":true,\"number\":9},\"9\":{\"check\":true,\"number\":10},\"10\":{\"check\":true,\"number\":11},\"11\":{\"check\":true,\"number\":12},\"12\":{\"check\":true,\"number\":13},\"13\":{\"check\":true,\"number\":14},\"14\":{\"check\":true,\"number\":15},\"15\":{\"check\":true,\"number\":16},\"16\":{\"check\":true,\"number\":17},\"17\":{\"check\":true,\"number\":18},\"18\":{\"check\":true,\"number\":19},\"19\":{\"check\":true,\"number\":20},\"20\":{\"check\":true,\"number\":21},\"21\":{\"check\":true,\"number\":22},\"22\":{\"check\":true,\"number\":23},\"23\":{\"check\":true,\"number\":24},\"24\":{\"check\":true,\"number\":25},\"25\":{\"check\":true,\"number\":26},\"26\":{\"check\":true,\"number\":27},\"27\":{\"check\":true,\"number\":28},\"28\":{\"check\":true,\"number\":29},\"29\":{\"check\":true,\"number\":30},\"30\":{\"check\":true,\"number\":31},\"31\":{\"check\":true,\"number\":32},\"32\":{\"check\":true,\"number\":33},\"33\":{\"check\":true,\"number\":34},\"34\":{\"check\":true,\"number\":35},\"35\":{\"check\":true,\"number\":36},\"36\":{\"check\":true,\"number\":37},\"37\":{\"check\":true,\"number\":38},\"38\":{\"check\":true,\"number\":39},\"39\":{\"check\":true,\"number\":40},\"40\":{\"check\":true,\"number\":41},\"41\":{\"check\":true,\"number\":42},\"42\":{\"check\":true,\"number\":43},\"43\":{\"check\":true,\"number\":44},\"44\":{\"check\":true,\"number\":45},\"45\":{\"check\":true,\"number\":46},\"46\":{\"check\":true,\"number\":47},\"47\":{\"check\":true,\"number\":48},\"48\":{\"check\":true,\"number\":49},\"49\":{\"check\":true,\"number\":50},\"50\":{\"check\":true,\"number\":51},\"51\":{\"check\":true,\"number\":52},\"52\":{\"check\":true,\"number\":53},\"53\":{\"check\":true,\"number\":54},\"54\":{\"check\":true,\"number\":55},\"55\":{\"check\":true,\"number\":56},\"56\":{\"check\":true,\"number\":57},\"57\":{\"check\":true,\"number\":58},\"58\":{\"check\":true,\"number\":59},\"59\":{\"check\":true,\"number\":60},\"60\":{\"check\":true,\"number\":61},\"61\":{\"check\":true,\"number\":62},\"62\":{\"check\":true,\"number\":63},\"63\":{\"check\":true,\"number\":64},\"64\":{\"check\":true,\"number\":65},\"65\":{\"check\":true,\"number\":66},\"66\":{\"check\":true,\"number\":67},\"67\":{\"check\":true,\"number\":68},\"68\":{\"check\":true,\"number\":69},\"69\":{\"check\":true,\"number\":70},\"70\":{\"check\":true,\"number\":71},\"71\":{\"check\":true,\"number\":72},\"72\":{\"check\":true,\"number\":73},\"73\":{\"check\":true,\"number\":74},\"74\":{\"check\":true,\"number\":75},\"75\":{\"check\":true,\"number\":76},\"76\":{\"check\":true,\"number\":77},\"77\":{\"check\":true,\"number\":78},\"78\":{\"check\":true,\"number\":79},\"79\":{\"check\":true,\"number\":80},\"80\":{\"check\":true,\"number\":81},\"81\":{\"check\":true,\"number\":82},\"82\":{\"check\":true,\"number\":83},\"83\":{\"check\":true,\"number\":84},\"84\":{\"check\":true,\"number\":85},\"85\":{\"check\":true,\"number\":86},\"86\":{\"check\":true,\"number\":87},\"87\":{\"check\":true,\"number\":88},\"88\":{\"check\":true,\"number\":89},\"89\":{\"check\":true,\"number\":90},\"90\":{\"check\":true,\"number\":91},\"91\":{\"check\":true,\"number\":92},\"92\":{\"check\":true,\"number\":93},\"93\":{\"check\":true,\"number\":94},\"94\":{\"check\":true,\"number\":95},\"95\":{\"check\":true,\"number\":96},\"96\":{\"check\":true,\"number\":97},\"97\":{\"check\":true,\"number\":98},\"98\":{\"check\":true,\"number\":99},\"99\":{\"check\":true,\"number\":100},\"rowname\":{\"value\":\"H\",\"disable\":false},\"price\":{\"value\":\"100\",\"disable\":false},\"type\":{\"value\":\"Silver\",\"disable\":false},\"row_index\":8},{\"0\":{\"check\":true,\"number\":1},\"1\":{\"check\":true,\"number\":2},\"2\":{\"check\":true,\"number\":3},\"3\":{\"check\":true,\"number\":4},\"4\":{\"check\":true,\"number\":5},\"5\":{\"check\":true,\"number\":6},\"6\":{\"check\":true,\"number\":7},\"7\":{\"check\":true,\"number\":8},\"8\":{\"check\":true,\"number\":9},\"9\":{\"check\":true,\"number\":10},\"10\":{\"check\":true,\"number\":11},\"11\":{\"check\":true,\"number\":12},\"12\":{\"check\":true,\"number\":13},\"13\":{\"check\":true,\"number\":14},\"14\":{\"check\":true,\"number\":15},\"15\":{\"check\":true,\"number\":16},\"16\":{\"check\":true,\"number\":17},\"17\":{\"check\":true,\"number\":18},\"18\":{\"check\":true,\"number\":19},\"19\":{\"check\":true,\"number\":20},\"20\":{\"check\":true,\"number\":21},\"21\":{\"check\":true,\"number\":22},\"22\":{\"check\":true,\"number\":23},\"23\":{\"check\":true,\"number\":24},\"24\":{\"check\":true,\"number\":25},\"25\":{\"check\":true,\"number\":26},\"26\":{\"check\":true,\"number\":27},\"27\":{\"check\":true,\"number\":28},\"28\":{\"check\":true,\"number\":29},\"29\":{\"check\":true,\"number\":30},\"30\":{\"check\":true,\"number\":31},\"31\":{\"check\":true,\"number\":32},\"32\":{\"check\":true,\"number\":33},\"33\":{\"check\":true,\"number\":34},\"34\":{\"check\":true,\"number\":35},\"35\":{\"check\":true,\"number\":36},\"36\":{\"check\":true,\"number\":37},\"37\":{\"check\":true,\"number\":38},\"38\":{\"check\":true,\"number\":39},\"39\":{\"check\":true,\"number\":40},\"40\":{\"check\":true,\"number\":41},\"41\":{\"check\":true,\"number\":42},\"42\":{\"check\":true,\"number\":43},\"43\":{\"check\":true,\"number\":44},\"44\":{\"check\":true,\"number\":45},\"45\":{\"check\":true,\"number\":46},\"46\":{\"check\":true,\"number\":47},\"47\":{\"check\":true,\"number\":48},\"48\":{\"check\":true,\"number\":49},\"49\":{\"check\":true,\"number\":50},\"50\":{\"check\":true,\"number\":51},\"51\":{\"check\":true,\"number\":52},\"52\":{\"check\":true,\"number\":53},\"53\":{\"check\":true,\"number\":54},\"54\":{\"check\":true,\"number\":55},\"55\":{\"check\":true,\"number\":56},\"56\":{\"check\":true,\"number\":57},\"57\":{\"check\":true,\"number\":58},\"58\":{\"check\":true,\"number\":59},\"59\":{\"check\":true,\"number\":60},\"60\":{\"check\":true,\"number\":61},\"61\":{\"check\":true,\"number\":62},\"62\":{\"check\":true,\"number\":63},\"63\":{\"check\":true,\"number\":64},\"64\":{\"check\":true,\"number\":65},\"65\":{\"check\":true,\"number\":66},\"66\":{\"check\":true,\"number\":67},\"67\":{\"check\":true,\"number\":68},\"68\":{\"check\":true,\"number\":69},\"69\":{\"check\":true,\"number\":70},\"70\":{\"check\":true,\"number\":71},\"71\":{\"check\":true,\"number\":72},\"72\":{\"check\":true,\"number\":73},\"73\":{\"check\":true,\"number\":74},\"74\":{\"check\":true,\"number\":75},\"75\":{\"check\":true,\"number\":76},\"76\":{\"check\":true,\"number\":77},\"77\":{\"check\":true,\"number\":78},\"78\":{\"check\":true,\"number\":79},\"79\":{\"check\":true,\"number\":80},\"80\":{\"check\":true,\"number\":81},\"81\":{\"check\":true,\"number\":82},\"82\":{\"check\":true,\"number\":83},\"83\":{\"check\":true,\"number\":84},\"84\":{\"check\":true,\"number\":85},\"85\":{\"check\":true,\"number\":86},\"86\":{\"check\":true,\"number\":87},\"87\":{\"check\":true,\"number\":88},\"88\":{\"check\":true,\"number\":89},\"89\":{\"check\":true,\"number\":90},\"90\":{\"check\":true,\"number\":91},\"91\":{\"check\":true,\"number\":92},\"92\":{\"check\":true,\"number\":93},\"93\":{\"check\":true,\"number\":94},\"94\":{\"check\":true,\"number\":95},\"95\":{\"check\":true,\"number\":96},\"96\":{\"check\":true,\"number\":97},\"97\":{\"check\":true,\"number\":98},\"98\":{\"check\":true,\"number\":99},\"99\":{\"check\":true,\"number\":100},\"rowname\":{\"value\":\"I\",\"disable\":false},\"price\":{\"value\":\"100\",\"disable\":false},\"type\":{\"value\":\"Silver\",\"disable\":false},\"row_index\":9},{\"0\":{\"check\":true,\"number\":1},\"1\":{\"check\":true,\"number\":2},\"2\":{\"check\":true,\"number\":3},\"3\":{\"check\":true,\"number\":4},\"4\":{\"check\":true,\"number\":5},\"5\":{\"check\":true,\"number\":6},\"6\":{\"check\":true,\"number\":7},\"7\":{\"check\":true,\"number\":8},\"8\":{\"check\":true,\"number\":9},\"9\":{\"check\":true,\"number\":10},\"10\":{\"check\":true,\"number\":11},\"11\":{\"check\":true,\"number\":12},\"12\":{\"check\":true,\"number\":13},\"13\":{\"check\":true,\"number\":14},\"14\":{\"check\":true,\"number\":15},\"15\":{\"check\":true,\"number\":16},\"16\":{\"check\":true,\"number\":17},\"17\":{\"check\":true,\"number\":18},\"18\":{\"check\":true,\"number\":19},\"19\":{\"check\":true,\"number\":20},\"20\":{\"check\":true,\"number\":21},\"21\":{\"check\":true,\"number\":22},\"22\":{\"check\":true,\"number\":23},\"23\":{\"check\":true,\"number\":24},\"24\":{\"check\":true,\"number\":25},\"25\":{\"check\":true,\"number\":26},\"26\":{\"check\":true,\"number\":27},\"27\":{\"check\":true,\"number\":28},\"28\":{\"check\":true,\"number\":29},\"29\":{\"check\":true,\"number\":30},\"30\":{\"check\":true,\"number\":31},\"31\":{\"check\":true,\"number\":32},\"32\":{\"check\":true,\"number\":33},\"33\":{\"check\":true,\"number\":34},\"34\":{\"check\":true,\"number\":35},\"35\":{\"check\":true,\"number\":36},\"36\":{\"check\":true,\"number\":37},\"37\":{\"check\":true,\"number\":38},\"38\":{\"check\":true,\"number\":39},\"39\":{\"check\":true,\"number\":40},\"40\":{\"check\":true,\"number\":41},\"41\":{\"check\":true,\"number\":42},\"42\":{\"check\":true,\"number\":43},\"43\":{\"check\":true,\"number\":44},\"44\":{\"check\":true,\"number\":45},\"45\":{\"check\":true,\"number\":46},\"46\":{\"check\":true,\"number\":47},\"47\":{\"check\":true,\"number\":48},\"48\":{\"check\":true,\"number\":49},\"49\":{\"check\":true,\"number\":50},\"50\":{\"check\":true,\"number\":51},\"51\":{\"check\":true,\"number\":52},\"52\":{\"check\":true,\"number\":53},\"53\":{\"check\":true,\"number\":54},\"54\":{\"check\":true,\"number\":55},\"55\":{\"check\":true,\"number\":56},\"56\":{\"check\":true,\"number\":57},\"57\":{\"check\":true,\"number\":58},\"58\":{\"check\":true,\"number\":59},\"59\":{\"check\":true,\"number\":60},\"60\":{\"check\":true,\"number\":61},\"61\":{\"check\":true,\"number\":62},\"62\":{\"check\":true,\"number\":63},\"63\":{\"check\":true,\"number\":64},\"64\":{\"check\":true,\"number\":65},\"65\":{\"check\":true,\"number\":66},\"66\":{\"check\":true,\"number\":67},\"67\":{\"check\":true,\"number\":68},\"68\":{\"check\":true,\"number\":69},\"69\":{\"check\":true,\"number\":70},\"70\":{\"check\":true,\"number\":71},\"71\":{\"check\":true,\"number\":72},\"72\":{\"check\":true,\"number\":73},\"73\":{\"check\":true,\"number\":74},\"74\":{\"check\":true,\"number\":75},\"75\":{\"check\":true,\"number\":76},\"76\":{\"check\":true,\"number\":77},\"77\":{\"check\":true,\"number\":78},\"78\":{\"check\":true,\"number\":79},\"79\":{\"check\":true,\"number\":80},\"80\":{\"check\":true,\"number\":81},\"81\":{\"check\":true,\"number\":82},\"82\":{\"check\":true,\"number\":83},\"83\":{\"check\":true,\"number\":84},\"84\":{\"check\":true,\"number\":85},\"85\":{\"check\":true,\"number\":86},\"86\":{\"check\":true,\"number\":87},\"87\":{\"check\":true,\"number\":88},\"88\":{\"check\":true,\"number\":89},\"89\":{\"check\":true,\"number\":90},\"90\":{\"check\":true,\"number\":91},\"91\":{\"check\":true,\"number\":92},\"92\":{\"check\":true,\"number\":93},\"93\":{\"check\":true,\"number\":94},\"94\":{\"check\":true,\"number\":95},\"95\":{\"check\":true,\"number\":96},\"96\":{\"check\":true,\"number\":97},\"97\":{\"check\":true,\"number\":98},\"98\":{\"check\":true,\"number\":99},\"99\":{\"check\":true,\"number\":100},\"rowname\":{\"value\":\"J\",\"disable\":false},\"price\":{\"value\":\"100\",\"disable\":false},\"type\":{\"value\":\"Silver\",\"disable\":false},\"row_index\":10}]}', '1');
INSERT INTO `tbz_chinema_screen` (`id`, `screen_name`, `cinemas_id`, `column`, `row`, `chair_align`, `layout`, `preview`, `status`) VALUES
(47, '17', '1', 4, 5, 'left', '[{\"0\":{\"check\":true,\"number\":1},\"1\":{\"check\":true,\"number\":2},\"2\":{\"check\":true,\"number\":3},\"3\":{\"check\":true,\"number\":4},\"rowname\":{\"value\":\"sdfssdfs\",\"disable\":false},\"price\":{\"value\":\"1\",\"disable\":false},\"type\":{\"value\":\"f\",\"disable\":false},\"row_index\":1},{\"0\":{\"check\":true,\"number\":1},\"1\":{\"check\":true,\"number\":2},\"2\":{\"check\":true,\"number\":3},\"3\":{\"check\":true,\"number\":4},\"rowname\":{\"value\":\"f\",\"disable\":false},\"price\":{\"value\":\"2\",\"disable\":false},\"type\":{\"value\":\"b\",\"disable\":false},\"row_index\":2},{\"0\":{\"check\":true,\"number\":1},\"1\":{\"check\":true,\"number\":2},\"2\":{\"check\":true,\"number\":3},\"3\":{\"check\":true,\"number\":4},\"rowname\":{\"value\":\"v\",\"disable\":false},\"price\":{\"value\":\"3\",\"disable\":false},\"type\":{\"value\":\"v\",\"disable\":false},\"row_index\":3},{\"0\":{\"check\":true,\"number\":1},\"1\":{\"check\":true,\"number\":2},\"2\":{\"check\":true,\"number\":3},\"3\":{\"check\":true,\"number\":4},\"rowname\":{\"value\":\"b\",\"disable\":false},\"price\":{\"value\":\"4\",\"disable\":false},\"type\":{\"value\":\"q\",\"disable\":false},\"row_index\":4},{\"0\":{\"check\":true,\"number\":1},\"1\":{\"check\":true,\"number\":2},\"2\":{\"check\":true,\"number\":3},\"3\":{\"check\":true,\"number\":4},\"rowname\":{\"value\":\"g\",\"disable\":false},\"price\":{\"value\":\"5\",\"disable\":false},\"type\":{\"value\":\"e\",\"disable\":false},\"row_index\":5}]', '{\"f-1\":[{\"0\":{\"check\":true,\"number\":1},\"1\":{\"check\":true,\"number\":2},\"2\":{\"check\":true,\"number\":3},\"3\":{\"check\":true,\"number\":4},\"rowname\":{\"value\":\"sdfssdfs\",\"disable\":false},\"price\":{\"value\":\"1\",\"disable\":false},\"type\":{\"value\":\"f\",\"disable\":false},\"row_index\":1}],\"b-2\":[{\"0\":{\"check\":true,\"number\":1},\"1\":{\"check\":true,\"number\":2},\"2\":{\"check\":true,\"number\":3},\"3\":{\"check\":true,\"number\":4},\"rowname\":{\"value\":\"f\",\"disable\":false},\"price\":{\"value\":\"2\",\"disable\":false},\"type\":{\"value\":\"b\",\"disable\":false},\"row_index\":2}],\"v-3\":[{\"0\":{\"check\":true,\"number\":1},\"1\":{\"check\":true,\"number\":2},\"2\":{\"check\":true,\"number\":3},\"3\":{\"check\":true,\"number\":4},\"rowname\":{\"value\":\"v\",\"disable\":false},\"price\":{\"value\":\"3\",\"disable\":false},\"type\":{\"value\":\"v\",\"disable\":false},\"row_index\":3}],\"q-4\":[{\"0\":{\"check\":true,\"number\":1},\"1\":{\"check\":true,\"number\":2},\"2\":{\"check\":true,\"number\":3},\"3\":{\"check\":true,\"number\":4},\"rowname\":{\"value\":\"b\",\"disable\":false},\"price\":{\"value\":\"4\",\"disable\":false},\"type\":{\"value\":\"q\",\"disable\":false},\"row_index\":4}],\"e-5\":[{\"0\":{\"check\":true,\"number\":1},\"1\":{\"check\":true,\"number\":2},\"2\":{\"check\":true,\"number\":3},\"3\":{\"check\":true,\"number\":4},\"rowname\":{\"value\":\"g\",\"disable\":false},\"price\":{\"value\":\"5\",\"disable\":false},\"type\":{\"value\":\"e\",\"disable\":false},\"row_index\":5}]}', '1');

-- --------------------------------------------------------

--
-- Table structure for table `tbz_controller`
--

CREATE TABLE `tbz_controller` (
  `id` int(11) NOT NULL,
  `controller_name` varchar(225) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbz_controller`
--

INSERT INTO `tbz_controller` (`id`, `controller_name`) VALUES
(1, 'Actors'),
(3, 'Adminusers'),
(4, 'Bookingdetails'),
(5, 'Category'),
(6, 'Customer'),
(7, 'Language'),
(10, 'Movie'),
(11, 'Promocode'),
(12, 'Reviews'),
(13, 'Role'),
(14, 'Rolemanagement'),
(15, 'Settings'),
(16, 'Tags'),
(17, 'Theatre'),
(18, 'Theatrelocations'),
(20, 'Usertypes'),
(21, 'banners');

-- --------------------------------------------------------

--
-- Table structure for table `tbz_controller_functions`
--

CREATE TABLE `tbz_controller_functions` (
  `id` int(11) NOT NULL,
  `c_id` int(11) NOT NULL,
  `label` varchar(225) NOT NULL,
  `link` varchar(225) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbz_controller_functions`
--

INSERT INTO `tbz_controller_functions` (`id`, `c_id`, `label`, `link`) VALUES
(1, 1, 'Create', 'Actors/create'),
(2, 1, 'List', 'Actors/index'),
(3, 1, 'Edit', 'Actors/edit_actors'),
(4, 1, 'Delete', 'Actors/delete_actor'),
(56, 14, 'Add Role', 'Rolemanagement/role_manage'),
(6, 3, 'Create', 'Adminuser/create'),
(7, 3, 'List', 'Adminuser/index'),
(8, 3, 'Edit', 'Adminuser/edit_user'),
(9, 3, 'Delete', 'Adminuser/delete_user'),
(10, 4, 'List', 'Bookingdetails/index'),
(11, 4, 'View Details', 'Bookingdetails/get_data'),
(12, 4, 'View booking details', 'Bookingdetails/get_userdata'),
(13, 5, 'Create', 'Category/create'),
(14, 5, 'List', 'Category/index'),
(15, 5, 'Edit', 'Category/edit_category'),
(16, 5, 'Delete', 'Category/delete_category'),
(17, 6, 'List', 'Customer/customer_list'),
(18, 7, 'Create', 'Language/create'),
(19, 7, 'List', 'Language/index'),
(20, 7, 'Edit', 'Language/edit_language'),
(21, 7, 'Delete', 'Language/delete_language'),
(22, 10, 'Create', 'Movie/create'),
(23, 10, 'List', 'Movie/index'),
(24, 10, 'Edit', 'Movie/edit_movie'),
(25, 10, 'Delete', 'Movie/delete_movie'),
(26, 11, 'create', 'Promocode/create'),
(27, 11, 'List', 'Promocode/index'),
(28, 11, 'Edit', 'Promocode/edit_promocode'),
(29, 11, 'Delete', 'Promocode/delete_promocode'),
(30, 12, 'List', 'Reviews/index'),
(31, 13, 'Create', 'Role/create'),
(32, 13, 'List', 'Role/index'),
(33, 13, 'Edit', 'Role/edit_role'),
(34, 13, 'Delete', 'Role/delete_role'),
(35, 15, 'View', 'Settings/index'),
(36, 16, 'Create', 'Tag/create'),
(37, 16, 'List', 'Tag/index'),
(38, 16, 'Edit', 'Tag/edit_tag'),
(39, 16, 'Delete', 'Tag/delete_tag'),
(40, 17, 'Add theatre', 'Theatre/create'),
(41, 17, 'List Theatre', 'Theatre/index'),
(42, 17, 'Edit Theatre', 'Theatre/edit_theatre'),
(43, 17, 'Delete theatre', 'Theatre/delete_theatre'),
(44, 17, 'Add Movie', 'Theatre/addmovie'),
(45, 17, 'View movie', 'Theatre/viewmovie'),
(46, 17, 'Edit Movie', 'Theatre/edit_movietheatre'),
(47, 17, 'Delete Movie', 'Theatre/delete_movietheatre'),
(48, 17, 'Add Show', 'Theatre/addshow'),
(49, 17, 'View Show', 'Theatre/viewshow'),
(50, 17, 'Edit Show', 'Theatre/edit_showtheatre'),
(51, 17, 'Delete show', 'Theatre/delete_showtheatre'),
(52, 18, 'Create', 'Theatrelocations/create'),
(53, 18, 'List', 'Theatrelocations/index'),
(54, 18, 'Edit', 'Theatrelocations/edit_location'),
(55, 18, 'Delete', 'Theatrelocations/delete_location'),
(57, 20, 'Create', 'Usertypes/create'),
(58, 20, 'List', 'Usertypes/index'),
(59, 20, 'Edit Role', 'Usertypes/edit_role'),
(60, 20, 'Delete Role', 'Usertypes/delete_role'),
(61, 14, 'List', 'Rolemanagement/index'),
(62, 14, 'Edit', 'Rolemanagement/edit_role'),
(64, 14, 'update', 'Rolemanagement/update_role'),
(65, 17, 'Add Screen', 'Theatre/addscreen'),
(66, 17, 'View Screen', 'Theatre/viewscreen'),
(67, 17, 'Delete ViewScreen', 'Theatre/delete_viewscreen'),
(68, 17, 'Edit ViewScreen', 'Theatre/edit_viewscreen'),
(69, 17, 'View Layout', 'Theatre/view_viewscreen'),
(70, 21, 'Create', 'banners/create'),
(71, 21, 'View', 'banners/index'),
(72, 21, 'Delete', 'banners/delete_image');

-- --------------------------------------------------------

--
-- Table structure for table `tbz_countries`
--

CREATE TABLE `tbz_countries` (
  `id_countries` int(3) UNSIGNED NOT NULL,
  `name` varchar(200) DEFAULT NULL,
  `iso_alpha2` varchar(2) DEFAULT NULL,
  `iso_alpha3` varchar(3) DEFAULT NULL,
  `iso_numeric` int(11) DEFAULT NULL,
  `currency_code` char(3) DEFAULT NULL,
  `currency_name` varchar(32) DEFAULT NULL,
  `currrency_symbol` varchar(10) DEFAULT NULL,
  `flag` varchar(6) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbz_countries`
--

INSERT INTO `tbz_countries` (`id_countries`, `name`, `iso_alpha2`, `iso_alpha3`, `iso_numeric`, `currency_code`, `currency_name`, `currrency_symbol`, `flag`) VALUES
(1, 'Afghanistan', 'AF', 'AFG', 4, 'AFN', 'Afghani', '؋', 'AF.png'),
(2, 'Albania', 'AL', 'ALB', 8, 'ALL', 'Lek', 'Lek', 'AL.png'),
(3, 'Algeria', 'DZ', 'DZA', 12, 'DZD', 'Dinar', NULL, 'DZ.png'),
(4, 'American Samoa', 'AS', 'ASM', 16, 'USD', 'Dollar', '$', 'AS.png'),
(5, 'Andorra', 'AD', 'AND', 20, 'EUR', 'Euro', '€', 'AD.png'),
(6, 'Angola', 'AO', 'AGO', 24, 'AOA', 'Kwanza', 'Kz', 'AO.png'),
(7, 'Anguilla', 'AI', 'AIA', 660, 'XCD', 'Dollar', '$', 'AI.png'),
(8, 'Antarctica', 'AQ', 'ATA', 10, '', '', NULL, 'AQ.png'),
(9, 'Antigua and Barbuda', 'AG', 'ATG', 28, 'XCD', 'Dollar', '$', 'AG.png'),
(10, 'Argentina', 'AR', 'ARG', 32, 'ARS', 'Peso', '$', 'AR.png'),
(11, 'Armenia', 'AM', 'ARM', 51, 'AMD', 'Dram', NULL, 'AM.png'),
(12, 'Aruba', 'AW', 'ABW', 533, 'AWG', 'Guilder', 'ƒ', 'AW.png'),
(13, 'Australia', 'AU', 'AUS', 36, 'AUD', 'Dollar', '$', 'AU.png'),
(14, 'Austria', 'AT', 'AUT', 40, 'EUR', 'Euro', '€', 'AT.png'),
(15, 'Azerbaijan', 'AZ', 'AZE', 31, 'AZN', 'Manat', 'ман', 'AZ.png'),
(16, 'Bahamas', 'BS', 'BHS', 44, 'BSD', 'Dollar', '$', 'BS.png'),
(17, 'Bahrain', 'BH', 'BHR', 48, 'BHD', 'Dinar', NULL, 'BH.png'),
(18, 'Bangladesh', 'BD', 'BGD', 50, 'BDT', 'Taka', NULL, 'BD.png'),
(19, 'Barbados', 'BB', 'BRB', 52, 'BBD', 'Dollar', '$', 'BB.png'),
(20, 'Belarus', 'BY', 'BLR', 112, 'BYR', 'Ruble', 'p.', 'BY.png'),
(21, 'Belgium', 'BE', 'BEL', 56, 'EUR', 'Euro', '€', 'BE.png'),
(22, 'Belize', 'BZ', 'BLZ', 84, 'BZD', 'Dollar', 'BZ$', 'BZ.png'),
(23, 'Benin', 'BJ', 'BEN', 204, 'XOF', 'Franc', NULL, 'BJ.png'),
(24, 'Bermuda', 'BM', 'BMU', 60, 'BMD', 'Dollar', '$', 'BM.png'),
(25, 'Bhutan', 'BT', 'BTN', 64, 'BTN', 'Ngultrum', NULL, 'BT.png'),
(26, 'Bolivia', 'BO', 'BOL', 68, 'BOB', 'Boliviano', '$b', 'BO.png'),
(27, 'Bosnia and Herzegovina', 'BA', 'BIH', 70, 'BAM', 'Marka', 'KM', 'BA.png'),
(28, 'Botswana', 'BW', 'BWA', 72, 'BWP', 'Pula', 'P', 'BW.png'),
(29, 'Bouvet Island', 'BV', 'BVT', 74, 'NOK', 'Krone', 'kr', 'BV.png'),
(30, 'Brazil', 'BR', 'BRA', 76, 'BRL', 'Real', 'R$', 'BR.png'),
(31, 'British Indian Ocean Territory', 'IO', 'IOT', 86, 'USD', 'Dollar', '$', 'IO.png'),
(32, 'British Virgin Islands', 'VG', 'VGB', 92, 'USD', 'Dollar', '$', 'VG.png'),
(33, 'Brunei', 'BN', 'BRN', 96, 'BND', 'Dollar', '$', 'BN.png'),
(34, 'Bulgaria', 'BG', 'BGR', 100, 'BGN', 'Lev', 'лв', 'BG.png'),
(35, 'Burkina Faso', 'BF', 'BFA', 854, 'XOF', 'Franc', NULL, 'BF.png'),
(36, 'Burundi', 'BI', 'BDI', 108, 'BIF', 'Franc', NULL, 'BI.png'),
(37, 'Cambodia', 'KH', 'KHM', 116, 'KHR', 'Riels', '៛', 'KH.png'),
(38, 'Cameroon', 'CM', 'CMR', 120, 'XAF', 'Franc', 'FCF', 'CM.png'),
(39, 'Canada', 'CA', 'CAN', 124, 'CAD', 'Dollar', '$', 'CA.png'),
(40, 'Cape Verde', 'CV', 'CPV', 132, 'CVE', 'Escudo', NULL, 'CV.png'),
(41, 'Cayman Islands', 'KY', 'CYM', 136, 'KYD', 'Dollar', '$', 'KY.png'),
(42, 'Central African Republic', 'CF', 'CAF', 140, 'XAF', 'Franc', 'FCF', 'CF.png'),
(43, 'Chad', 'TD', 'TCD', 148, 'XAF', 'Franc', NULL, 'TD.png'),
(44, 'Chile', 'CL', 'CHL', 152, 'CLP', 'Peso', NULL, 'CL.png'),
(45, 'China', 'CN', 'CHN', 156, 'CNY', 'Yuan Renminbi', '¥', 'CN.png'),
(46, 'Christmas Island', 'CX', 'CXR', 162, 'AUD', 'Dollar', '$', 'CX.png'),
(47, 'Cocos Islands', 'CC', 'CCK', 166, 'AUD', 'Dollar', '$', 'CC.png'),
(48, 'Colombia', 'CO', 'COL', 170, 'COP', 'Peso', '$', 'CO.png'),
(49, 'Comoros', 'KM', 'COM', 174, 'KMF', 'Franc', NULL, 'KM.png'),
(50, 'Cook Islands', 'CK', 'COK', 184, 'NZD', 'Dollar', '$', 'CK.png'),
(51, 'Costa Rica', 'CR', 'CRI', 188, 'CRC', 'Colon', '₡', 'CR.png'),
(52, 'Croatia', 'HR', 'HRV', 191, 'HRK', 'Kuna', 'kn', 'HR.png'),
(53, 'Cuba', 'CU', 'CUB', 192, 'CUP', 'Peso', '₱', 'CU.png'),
(54, 'Cyprus', 'CY', 'CYP', 196, 'CYP', 'Pound', NULL, 'CY.png'),
(55, 'Czech Republic', 'CZ', 'CZE', 203, 'CZK', 'Koruna', 'KĿ', 'CZ.png'),
(56, 'Democratic Republic of the Congo', 'CD', 'COD', 180, 'CDF', 'Franc', NULL, 'CD.png'),
(57, 'Denmark', 'DK', 'DNK', 208, 'DKK', 'Krone', 'kr', 'DK.png'),
(58, 'Djibouti', 'DJ', 'DJI', 262, 'DJF', 'Franc', NULL, 'DJ.png'),
(59, 'Dominica', 'DM', 'DMA', 212, 'XCD', 'Dollar', '$', 'DM.png'),
(60, 'Dominican Republic', 'DO', 'DOM', 214, 'DOP', 'Peso', 'RD$', 'DO.png'),
(61, 'East Timor', 'TL', 'TLS', 626, 'USD', 'Dollar', '$', 'TL.png'),
(62, 'Ecuador', 'EC', 'ECU', 218, 'USD', 'Dollar', '$', 'EC.png'),
(63, 'Egypt', 'EG', 'EGY', 818, 'EGP', 'Pound', '£', 'EG.png'),
(64, 'El Salvador', 'SV', 'SLV', 222, 'SVC', 'Colone', '$', 'SV.png'),
(65, 'Equatorial Guinea', 'GQ', 'GNQ', 226, 'XAF', 'Franc', 'FCF', 'GQ.png'),
(66, 'Eritrea', 'ER', 'ERI', 232, 'ERN', 'Nakfa', 'Nfk', 'ER.png'),
(67, 'Estonia', 'EE', 'EST', 233, 'EEK', 'Kroon', 'kr', 'EE.png'),
(68, 'Ethiopia', 'ET', 'ETH', 231, 'ETB', 'Birr', NULL, 'ET.png'),
(69, 'Falkland Islands', 'FK', 'FLK', 238, 'FKP', 'Pound', '£', 'FK.png'),
(70, 'Faroe Islands', 'FO', 'FRO', 234, 'DKK', 'Krone', 'kr', 'FO.png'),
(71, 'Fiji', 'FJ', 'FJI', 242, 'FJD', 'Dollar', '$', 'FJ.png'),
(72, 'Finland', 'FI', 'FIN', 246, 'EUR', 'Euro', '€', 'FI.png'),
(73, 'France', 'FR', 'FRA', 250, 'EUR', 'Euro', '€', 'FR.png'),
(74, 'French Guiana', 'GF', 'GUF', 254, 'EUR', 'Euro', '€', 'GF.png'),
(75, 'French Polynesia', 'PF', 'PYF', 258, 'XPF', 'Franc', NULL, 'PF.png'),
(76, 'French Southern Territories', 'TF', 'ATF', 260, 'EUR', 'Euro  ', '€', 'TF.png'),
(77, 'Gabon', 'GA', 'GAB', 266, 'XAF', 'Franc', 'FCF', 'GA.png'),
(78, 'Gambia', 'GM', 'GMB', 270, 'GMD', 'Dalasi', 'D', 'GM.png'),
(79, 'Georgia', 'GE', 'GEO', 268, 'GEL', 'Lari', NULL, 'GE.png'),
(80, 'Germany', 'DE', 'DEU', 276, 'EUR', 'Euro', '€', 'DE.png'),
(81, 'Ghana', 'GH', 'GHA', 288, 'GHC', 'Cedi', '¢', 'GH.png'),
(82, 'Gibraltar', 'GI', 'GIB', 292, 'GIP', 'Pound', '£', 'GI.png'),
(83, 'Greece', 'GR', 'GRC', 300, 'EUR', 'Euro', '€', 'GR.png'),
(84, 'Greenland', 'GL', 'GRL', 304, 'DKK', 'Krone', 'kr', 'GL.png'),
(85, 'Grenada', 'GD', 'GRD', 308, 'XCD', 'Dollar', '$', 'GD.png'),
(86, 'Guadeloupe', 'GP', 'GLP', 312, 'EUR', 'Euro', '€', 'GP.png'),
(87, 'Guam', 'GU', 'GUM', 316, 'USD', 'Dollar', '$', 'GU.png'),
(88, 'Guatemala', 'GT', 'GTM', 320, 'GTQ', 'Quetzal', 'Q', 'GT.png'),
(89, 'Guinea', 'GN', 'GIN', 324, 'GNF', 'Franc', NULL, 'GN.png'),
(90, 'Guinea-Bissau', 'GW', 'GNB', 624, 'XOF', 'Franc', NULL, 'GW.png'),
(91, 'Guyana', 'GY', 'GUY', 328, 'GYD', 'Dollar', '$', 'GY.png'),
(92, 'Haiti', 'HT', 'HTI', 332, 'HTG', 'Gourde', 'G', 'HT.png'),
(93, 'Heard Island and McDonald Islands', 'HM', 'HMD', 334, 'AUD', 'Dollar', '$', 'HM.png'),
(94, 'Honduras', 'HN', 'HND', 340, 'HNL', 'Lempira', 'L', 'HN.png'),
(95, 'Hong Kong', 'HK', 'HKG', 344, 'HKD', 'Dollar', '$', 'HK.png'),
(96, 'Hungary', 'HU', 'HUN', 348, 'HUF', 'Forint', 'Ft', 'HU.png'),
(97, 'Iceland', 'IS', 'ISL', 352, 'ISK', 'Krona', 'kr', 'IS.png'),
(98, 'India', 'IN', 'IND', 356, 'INR', 'Rupee', '₹', 'IN.png'),
(99, 'Indonesia', 'ID', 'IDN', 360, 'IDR', 'Rupiah', 'Rp', 'ID.png'),
(100, 'Iran', 'IR', 'IRN', 364, 'IRR', 'Rial', '﷼', 'IR.png'),
(101, 'Iraq', 'IQ', 'IRQ', 368, 'IQD', 'Dinar', NULL, 'IQ.png'),
(102, 'Ireland', 'IE', 'IRL', 372, 'EUR', 'Euro', '€', 'IE.png'),
(103, 'Israel', 'IL', 'ISR', 376, 'ILS', 'Shekel', '₪', 'IL.png'),
(104, 'Italy', 'IT', 'ITA', 380, 'EUR', 'Euro', '€', 'IT.png'),
(105, 'Ivory Coast', 'CI', 'CIV', 384, 'XOF', 'Franc', NULL, 'CI.png'),
(106, 'Jamaica', 'JM', 'JAM', 388, 'JMD', 'Dollar', '$', 'JM.png'),
(107, 'Japan', 'JP', 'JPN', 392, 'JPY', 'Yen', '¥', 'JP.png'),
(108, 'Jordan', 'JO', 'JOR', 400, 'JOD', 'Dinar', NULL, 'JO.png'),
(109, 'Kazakhstan', 'KZ', 'KAZ', 398, 'KZT', 'Tenge', 'лв', 'KZ.png'),
(110, 'Kenya', 'KE', 'KEN', 404, 'KES', 'Shilling', NULL, 'KE.png'),
(111, 'Kiribati', 'KI', 'KIR', 296, 'AUD', 'Dollar', '$', 'KI.png'),
(112, 'Kuwait', 'KW', 'KWT', 414, 'KWD', 'Dinar', NULL, 'KW.png'),
(113, 'Kyrgyzstan', 'KG', 'KGZ', 417, 'KGS', 'Som', 'лв', 'KG.png'),
(114, 'Laos', 'LA', 'LAO', 418, 'LAK', 'Kip', '₭', 'LA.png'),
(115, 'Latvia', 'LV', 'LVA', 428, 'LVL', 'Lat', 'Ls', 'LV.png'),
(116, 'Lebanon', 'LB', 'LBN', 422, 'LBP', 'Pound', '£', 'LB.png'),
(117, 'Lesotho', 'LS', 'LSO', 426, 'LSL', 'Loti', 'L', 'LS.png'),
(118, 'Liberia', 'LR', 'LBR', 430, 'LRD', 'Dollar', '$', 'LR.png'),
(119, 'Libya', 'LY', 'LBY', 434, 'LYD', 'Dinar', NULL, 'LY.png'),
(120, 'Liechtenstein', 'LI', 'LIE', 438, 'CHF', 'Franc', 'CHF', 'LI.png'),
(121, 'Lithuania', 'LT', 'LTU', 440, 'LTL', 'Litas', 'Lt', 'LT.png'),
(122, 'Luxembourg', 'LU', 'LUX', 442, 'EUR', 'Euro', '€', 'LU.png'),
(123, 'Macao', 'MO', 'MAC', 446, 'MOP', 'Pataca', 'MOP', 'MO.png'),
(124, 'Macedonia', 'MK', 'MKD', 807, 'MKD', 'Denar', 'ден', 'MK.png'),
(125, 'Madagascar', 'MG', 'MDG', 450, 'MGA', 'Ariary', NULL, 'MG.png'),
(126, 'Malawi', 'MW', 'MWI', 454, 'MWK', 'Kwacha', 'MK', 'MW.png'),
(127, 'Malaysia', 'MY', 'MYS', 458, 'MYR', 'Ringgit', 'RM', 'MY.png'),
(128, 'Maldives', 'MV', 'MDV', 462, 'MVR', 'Rufiyaa', 'Rf', 'MV.png'),
(129, 'Mali', 'ML', 'MLI', 466, 'XOF', 'Franc', NULL, 'ML.png'),
(130, 'Malta', 'MT', 'MLT', 470, 'MTL', 'Lira', NULL, 'MT.png'),
(131, 'Marshall Islands', 'MH', 'MHL', 584, 'USD', 'Dollar', '$', 'MH.png'),
(132, 'Martinique', 'MQ', 'MTQ', 474, 'EUR', 'Euro', '€', 'MQ.png'),
(133, 'Mauritania', 'MR', 'MRT', 478, 'MRO', 'Ouguiya', 'UM', 'MR.png'),
(134, 'Mauritius', 'MU', 'MUS', 480, 'MUR', 'Rupee', '₨', 'MU.png'),
(135, 'Mayotte', 'YT', 'MYT', 175, 'EUR', 'Euro', '€', 'YT.png'),
(136, 'Mexico', 'MX', 'MEX', 484, 'MXN', 'Peso', '$', 'MX.png'),
(137, 'Micronesia', 'FM', 'FSM', 583, 'USD', 'Dollar', '$', 'FM.png'),
(138, 'Moldova', 'MD', 'MDA', 498, 'MDL', 'Leu', NULL, 'MD.png'),
(139, 'Monaco', 'MC', 'MCO', 492, 'EUR', 'Euro', '€', 'MC.png'),
(140, 'Mongolia', 'MN', 'MNG', 496, 'MNT', 'Tugrik', '₮', 'MN.png'),
(141, 'Montserrat', 'MS', 'MSR', 500, 'XCD', 'Dollar', '$', 'MS.png'),
(142, 'Morocco', 'MA', 'MAR', 504, 'MAD', 'Dirham', NULL, 'MA.png'),
(143, 'Mozambique', 'MZ', 'MOZ', 508, 'MZN', 'Meticail', 'MT', 'MZ.png'),
(144, 'Myanmar', 'MM', 'MMR', 104, 'MMK', 'Kyat', 'K', 'MM.png'),
(145, 'Namibia', 'NA', 'NAM', 516, 'NAD', 'Dollar', '$', 'NA.png'),
(146, 'Nauru', 'NR', 'NRU', 520, 'AUD', 'Dollar', '$', 'NR.png'),
(147, 'Nepal', 'NP', 'NPL', 524, 'NPR', 'Rupee', '₨', 'NP.png'),
(148, 'Netherlands', 'NL', 'NLD', 528, 'EUR', 'Euro', '€', 'NL.png'),
(149, 'Netherlands Antilles', 'AN', 'ANT', 530, 'ANG', 'Guilder', 'ƒ', 'AN.png'),
(150, 'New Caledonia', 'NC', 'NCL', 540, 'XPF', 'Franc', NULL, 'NC.png'),
(151, 'New Zealand', 'NZ', 'NZL', 554, 'NZD', 'Dollar', '$', 'NZ.png'),
(152, 'Nicaragua', 'NI', 'NIC', 558, 'NIO', 'Cordoba', 'C$', 'NI.png'),
(153, 'Niger', 'NE', 'NER', 562, 'XOF', 'Franc', NULL, 'NE.png'),
(154, 'Nigeria', 'NG', 'NGA', 566, 'NGN', 'Naira', '₦', 'NG.png'),
(155, 'Niue', 'NU', 'NIU', 570, 'NZD', 'Dollar', '$', 'NU.png'),
(156, 'Norfolk Island', 'NF', 'NFK', 574, 'AUD', 'Dollar', '$', 'NF.png'),
(157, 'North Korea', 'KP', 'PRK', 408, 'KPW', 'Won', '₩', 'KP.png'),
(158, 'Northern Mariana Islands', 'MP', 'MNP', 580, 'USD', 'Dollar', '$', 'MP.png'),
(159, 'Norway', 'NO', 'NOR', 578, 'NOK', 'Krone', 'kr', 'NO.png'),
(160, 'Oman', 'OM', 'OMN', 512, 'OMR', 'Rial', '﷼', 'OM.png'),
(161, 'Pakistan', 'PK', 'PAK', 586, 'PKR', 'Rupee', '₨', 'PK.png'),
(162, 'Palau', 'PW', 'PLW', 585, 'USD', 'Dollar', '$', 'PW.png'),
(163, 'Palestinian Territory', 'PS', 'PSE', 275, 'ILS', 'Shekel', '₪', 'PS.png'),
(164, 'Panama', 'PA', 'PAN', 591, 'PAB', 'Balboa', 'B/.', 'PA.png'),
(165, 'Papua New Guinea', 'PG', 'PNG', 598, 'PGK', 'Kina', NULL, 'PG.png'),
(166, 'Paraguay', 'PY', 'PRY', 600, 'PYG', 'Guarani', 'Gs', 'PY.png'),
(167, 'Peru', 'PE', 'PER', 604, 'PEN', 'Sol', 'S/.', 'PE.png'),
(168, 'Philippines', 'PH', 'PHL', 608, 'PHP', 'Peso', 'Php', 'PH.png'),
(169, 'Pitcairn', 'PN', 'PCN', 612, 'NZD', 'Dollar', '$', 'PN.png'),
(170, 'Poland', 'PL', 'POL', 616, 'PLN', 'Zloty', 'zł', 'PL.png'),
(171, 'Portugal', 'PT', 'PRT', 620, 'EUR', 'Euro', '€', 'PT.png'),
(172, 'Puerto Rico', 'PR', 'PRI', 630, 'USD', 'Dollar', '$', 'PR.png'),
(173, 'Qatar', 'QA', 'QAT', 634, 'QAR', 'Rial', '﷼', 'QA.png'),
(174, 'Republic of the Congo', 'CG', 'COG', 178, 'XAF', 'Franc', 'FCF', 'CG.png'),
(175, 'Reunion', 'RE', 'REU', 638, 'EUR', 'Euro', '€', 'RE.png'),
(176, 'Romania', 'RO', 'ROU', 642, 'RON', 'Leu', 'lei', 'RO.png'),
(177, 'Russia', 'RU', 'RUS', 643, 'RUB', 'Ruble', 'руб', 'RU.png'),
(178, 'Rwanda', 'RW', 'RWA', 646, 'RWF', 'Franc', NULL, 'RW.png'),
(179, 'Saint Helena', 'SH', 'SHN', 654, 'SHP', 'Pound', '£', 'SH.png'),
(180, 'Saint Kitts and Nevis', 'KN', 'KNA', 659, 'XCD', 'Dollar', '$', 'KN.png'),
(181, 'Saint Lucia', 'LC', 'LCA', 662, 'XCD', 'Dollar', '$', 'LC.png'),
(182, 'Saint Pierre and Miquelon', 'PM', 'SPM', 666, 'EUR', 'Euro', '€', 'PM.png'),
(183, 'Saint Vincent and the Grenadines', 'VC', 'VCT', 670, 'XCD', 'Dollar', '$', 'VC.png'),
(184, 'Samoa', 'WS', 'WSM', 882, 'WST', 'Tala', 'WS$', 'WS.png'),
(185, 'San Marino', 'SM', 'SMR', 674, 'EUR', 'Euro', '€', 'SM.png'),
(186, 'Sao Tome and Principe', 'ST', 'STP', 678, 'STD', 'Dobra', 'Db', 'ST.png'),
(187, 'Saudi Arabia', 'SA', 'SAU', 682, 'SAR', 'Rial', '﷼', 'SA.png'),
(188, 'Senegal', 'SN', 'SEN', 686, 'XOF', 'Franc', NULL, 'SN.png'),
(189, 'Serbia and Montenegro', 'CS', 'SCG', 891, 'RSD', 'Dinar', 'Дин', 'CS.png'),
(190, 'Seychelles', 'SC', 'SYC', 690, 'SCR', 'Rupee', '₨', 'SC.png'),
(191, 'Sierra Leone', 'SL', 'SLE', 694, 'SLL', 'Leone', 'Le', 'SL.png'),
(192, 'Singapore', 'SG', 'SGP', 702, 'SGD', 'Dollar', '$', 'SG.png'),
(193, 'Slovakia', 'SK', 'SVK', 703, 'SKK', 'Koruna', 'Sk', 'SK.png'),
(194, 'Slovenia', 'SI', 'SVN', 705, 'EUR', 'Euro', '€', 'SI.png'),
(195, 'Solomon Islands', 'SB', 'SLB', 90, 'SBD', 'Dollar', '$', 'SB.png'),
(196, 'Somalia', 'SO', 'SOM', 706, 'SOS', 'Shilling', 'S', 'SO.png'),
(197, 'South Africa', 'ZA', 'ZAF', 710, 'ZAR', 'Rand', 'R', 'ZA.png'),
(198, 'South Georgia and the South Sandwich Islands', 'GS', 'SGS', 239, 'GBP', 'Pound', '£', 'GS.png'),
(199, 'South Korea', 'KR', 'KOR', 410, 'KRW', 'Won', '₩', 'KR.png'),
(200, 'Spain', 'ES', 'ESP', 724, 'EUR', 'Euro', '€', 'ES.png'),
(201, 'Sri Lanka', 'LK', 'LKA', 144, 'LKR', 'Rupee', '₨', 'LK.png'),
(202, 'Sudan', 'SD', 'SDN', 736, 'SDD', 'Dinar', NULL, 'SD.png'),
(203, 'Suriname', 'SR', 'SUR', 740, 'SRD', 'Dollar', '$', 'SR.png'),
(204, 'Svalbard and Jan Mayen', 'SJ', 'SJM', 744, 'NOK', 'Krone', 'kr', 'SJ.png'),
(205, 'Swaziland', 'SZ', 'SWZ', 748, 'SZL', 'Lilangeni', NULL, 'SZ.png'),
(206, 'Sweden', 'SE', 'SWE', 752, 'SEK', 'Krona', 'kr', 'SE.png'),
(207, 'Switzerland', 'CH', 'CHE', 756, 'CHF', 'Franc', 'CHF', 'CH.png'),
(208, 'Syria', 'SY', 'SYR', 760, 'SYP', 'Pound', '£', 'SY.png'),
(209, 'Taiwan', 'TW', 'TWN', 158, 'TWD', 'Dollar', 'NT$', 'TW.png'),
(210, 'Tajikistan', 'TJ', 'TJK', 762, 'TJS', 'Somoni', NULL, 'TJ.png'),
(211, 'Tanzania', 'TZ', 'TZA', 834, 'TZS', 'Shilling', NULL, 'TZ.png'),
(212, 'Thailand', 'TH', 'THA', 764, 'THB', 'Baht', '฿', 'TH.png'),
(213, 'Togo', 'TG', 'TGO', 768, 'XOF', 'Franc', NULL, 'TG.png'),
(214, 'Tokelau', 'TK', 'TKL', 772, 'NZD', 'Dollar', '$', 'TK.png'),
(215, 'Tonga', 'TO', 'TON', 776, 'TOP', 'Pa\'anga', 'T$', 'TO.png'),
(216, 'Trinidad and Tobago', 'TT', 'TTO', 780, 'TTD', 'Dollar', 'TT$', 'TT.png'),
(217, 'Tunisia', 'TN', 'TUN', 788, 'TND', 'Dinar', NULL, 'TN.png'),
(218, 'Turkey', 'TR', 'TUR', 792, 'TRY', 'Lira', 'YTL', 'TR.png'),
(219, 'Turkmenistan', 'TM', 'TKM', 795, 'TMM', 'Manat', 'm', 'TM.png'),
(220, 'Turks and Caicos Islands', 'TC', 'TCA', 796, 'USD', 'Dollar', '$', 'TC.png'),
(221, 'Tuvalu', 'TV', 'TUV', 798, 'AUD', 'Dollar', '$', 'TV.png'),
(222, 'U.S. Virgin Islands', 'VI', 'VIR', 850, 'USD', 'Dollar', '$', 'VI.png'),
(223, 'Uganda', 'UG', 'UGA', 800, 'UGX', 'Shilling', NULL, 'UG.png'),
(224, 'Ukraine', 'UA', 'UKR', 804, 'UAH', 'Hryvnia', '₴', 'UA.png'),
(225, 'United Arab Emirates', 'AE', 'ARE', 784, 'AED', 'Dirham', NULL, 'AE.png'),
(226, 'United Kingdom', 'GB', 'GBR', 826, 'GBP', 'Pound', '£', 'GB.png'),
(227, 'United States', 'US', 'USA', 840, 'USD', 'Dollar', '$', 'US.png'),
(228, 'United States Minor Outlying Islands', 'UM', 'UMI', 581, 'USD', 'Dollar ', '$', 'UM.png'),
(229, 'Uruguay', 'UY', 'URY', 858, 'UYU', 'Peso', '$U', 'UY.png'),
(230, 'Uzbekistan', 'UZ', 'UZB', 860, 'UZS', 'Som', 'лв', 'UZ.png'),
(231, 'Vanuatu', 'VU', 'VUT', 548, 'VUV', 'Vatu', 'Vt', 'VU.png'),
(232, 'Vatican', 'VA', 'VAT', 336, 'EUR', 'Euro', '€', 'VA.png'),
(233, 'Venezuela', 'VE', 'VEN', 862, 'VEF', 'Bolivar', 'Bs', 'VE.png'),
(234, 'Vietnam', 'VN', 'VNM', 704, 'VND', 'Dong', '₫', 'VN.png'),
(235, 'Wallis and Futuna', 'WF', 'WLF', 876, 'XPF', 'Franc', NULL, 'WF.png'),
(236, 'Western Sahara', 'EH', 'ESH', 732, 'MAD', 'Dirham', NULL, 'EH.png'),
(237, 'Yemen', 'YE', 'YEM', 887, 'YER', 'Rial', '﷼', 'YE.png'),
(238, 'Zambia', 'ZM', 'ZMB', 894, 'ZMK', 'Kwacha', 'ZK', 'ZM.png'),
(239, 'Zimbabwe', 'ZW', 'ZWE', 716, 'ZWD', 'Dollar', 'Z$', 'ZW.png');

-- --------------------------------------------------------

--
-- Table structure for table `tbz_events`
--

CREATE TABLE `tbz_events` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `language` varchar(255) NOT NULL COMMENT 'join->tbz_language-id as id,name as name',
  `tags` varchar(255) NOT NULL COMMENT 'join->tbz_tags-id as id,tag_name as name',
  `duration` varchar(255) NOT NULL,
  `date` date NOT NULL,
  `category` varchar(255) NOT NULL COMMENT 'join->tbz_category-id as id,name as name',
  `description` varchar(255) NOT NULL,
  `lead_cast` varchar(255) NOT NULL,
  `trailer` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL,
  `status` enum('0','1') NOT NULL COMMENT '0->in-active,1->active'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbz_events`
--

INSERT INTO `tbz_events` (`id`, `name`, `language`, `tags`, `duration`, `date`, `category`, `description`, `lead_cast`, `trailer`, `image`, `status`) VALUES
(1, 'Pretham', '1', '1', '1 year', '2016-08-31', '1', 'Niz', 'jose', 'https://youtu.be/PEFHZCo83Fs', 'assets/admin/img/uploads/1472641940683.jpg', '1'),
(2, 'Marubhoomiyile Aana', '1', '4', '1', '2016-09-01', '1', 'niz', 'john', 'https://youtu.be/PEFHZCo83Fs', 'assets/admin/img/uploads/1474606859752.png', '1'),
(3, 'The pink', '4', '6', '2.15', '2016-09-16', '1', 'thfdfsdv', 'amithabachan', 'ggdf', 'assets/admin/img/uploads/1474279380324.jpg', '1'),
(5, 'sports', '3', '6', '3 year', '2016-10-26', '2', 'gud movie', 'AdA', 'adminadminadminadminadmin', '	\nassets/admin/img/uploads/1476176542595.jpg', '1'),
(6, 'sdg', '5', '3', 'sdh', '0000-01-04', '3', 'gud movie', 'sdh', 'sdh', '	\nassets/admin/img/uploads/1476176604645.jpg', '0');

-- --------------------------------------------------------

--
-- Table structure for table `tbz_format`
--

CREATE TABLE `tbz_format` (
  `id` int(250) NOT NULL,
  `format_name` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbz_format`
--

INSERT INTO `tbz_format` (`id`, `format_name`) VALUES
(1, '2D'),
(2, '3D');

-- --------------------------------------------------------

--
-- Table structure for table `tbz_gallery`
--

CREATE TABLE `tbz_gallery` (
  `id` int(11) NOT NULL,
  `movie` varchar(100) NOT NULL,
  `image` varchar(80) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbz_gallery`
--

INSERT INTO `tbz_gallery` (`id`, `movie`, `image`) VALUES
(15, '1', 'uploads/1493096805_download.jpg'),
(27, '3', 'uploads/1493121787_download_(2).jpg'),
(31, '5', 'uploads/1493727765_Hadiyya_Poster_1.jpg'),
(32, '5', 'uploads/1493727774_Hadiyya_Poster_5.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `tbz_language`
--

CREATE TABLE `tbz_language` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `status` int(11) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbz_language`
--

INSERT INTO `tbz_language` (`id`, `name`, `status`) VALUES
(1, 'Malayalam', 1),
(2, 'Tamil', 1),
(3, 'English', 1),
(4, 'Hindi', 1),
(5, 'Telungu', 1),
(7, 'French', 0),
(10, 'Chinese', 0),
(11, 'vbnbn', 0),
(12, 'Japan', 1),
(13, 'chinese', 1),
(14, 'french', 0),
(15, 'fgh', 0),
(16, 'fd', 0);

-- --------------------------------------------------------

--
-- Table structure for table `tbz_location`
--

CREATE TABLE `tbz_location` (
  `id` int(11) NOT NULL,
  `location` varchar(80) NOT NULL,
  `status` int(11) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbz_location`
--

INSERT INTO `tbz_location` (`id`, `location`, `status`) VALUES
(1, 'Kochi', 1),
(2, 'Kottayam', 1),
(3, 'Bengaluru', 1),
(4, 'chennai', 1),
(6, 'ertet', 0),
(7, 'fgh', 0),
(8, 'Aluva', 1),
(9, 'cochin', 1),
(10, 'Delhi', 1);

-- --------------------------------------------------------

--
-- Table structure for table `tbz_menu`
--

CREATE TABLE `tbz_menu` (
  `id` int(11) NOT NULL,
  `menu_name` varchar(255) NOT NULL,
  `table_name` varchar(250) NOT NULL,
  `new_link` enum('0','1') NOT NULL,
  `view_all_link` enum('0','1') NOT NULL,
  `in_menu` enum('0','1') NOT NULL,
  `icon` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbz_menu`
--

INSERT INTO `tbz_menu` (`id`, `menu_name`, `table_name`, `new_link`, `view_all_link`, `in_menu`, `icon`) VALUES
(1, 'Booking history', 'tbz_booking_history', '0', '0', '0', 'glyphicon glyphicon-list-alt'),
(2, 'Category', 'tbz_category', '1', '1', '1', 'glyphicon glyphicon-th-list'),
(3, 'Chinema', 'tbz_chinema', '0', '0', '0', 'glyphicon glyphicon-film'),
(4, 'Events', 'tbz_events', '1', '1', '1', 'glyphicon glyphicon-star-empty'),
(5, 'Language', 'tbz_language', '1', '1', '1', 'glyphicon glyphicon-glass'),
(6, 'Menu', 'tbz_menu', '1', '1', '0', 'glyphicon glyphicon-record'),
(7, 'Payment', 'tbz_payment', '1', '1', '1', 'glyphicon glyphicon-home'),
(8, 'Persons', 'tbz_person', '1', '1', '0', 'glyphicon glyphicon-record'),
(9, 'Quick pay', 'tbz_quick_pay', '1', '1', '0', 'glyphicon glyphicon-record'),
(10, 'Tables', 'tbz_tables', '1', '1', '0', 'glyphicon glyphicon-record'),
(11, 'Tags', 'tbz_tags', '1', '1', '1', 'glyphicon glyphicon-record'),
(12, 'Users Profile', 'tbz_users', '0', '0', '0', 'fa fa-child'),
(14, 'User\'s Wallet', 'tbz_wallet', '1', '1', '1', 'fa fa-google-wallet'),
(15, 'User Types', 'tbz_usertypes', '1', '1', '1', 'fa fa-group'),
(16, 'Movie person', 'tbz_movie_person', '0', '0', '0', 'fa fa-file-movie-o'),
(17, 'Movies', 'tbz_movies', '1', '1', '1', 'fa fa-film'),
(18, 'Booking Details', 'tbz_booking_details', '1', '1', '1', 'fa fa-book'),
(19, 'Promocode Details', 'tbz_promocode', '1', '1', '1', 'fa fa-comment'),
(20, 'Format', 'tbz_format', '1', '1', '1', 'fa fa-file-excel-o'),
(21, 'Actors Details', 'tbz_actors', '1', '1', '1', 'fa fa-file-video-o'),
(22, 'Location Add Details', 'tbz_location', '1', '1', '1', 'fa fa-dot-circle-o'),
(23, 'Trailers Add', 'tbz_trailers', '1', '1', '1', 'fa fa-file-video-o'),
(24, 'Role Add', 'tbz_role', '1', '1', '1', 'fa fa-ban'),
(25, 'Settings Add', 'tbz_settings', '0', '0', '0', 'fa fa-arrows'),
(26, 'Review Add', 'tbz_reviews', '1', '1', '1', 'fa fa-file-word-o'),
(27, 'Gallery', 'tbz_gallery', '0', '0', '0', 'fa fa-file-image-o'),
(28, 'Show Details', 'tbz_show_details', '0', '0', '0', 'fa fa-video-camera');

-- --------------------------------------------------------

--
-- Table structure for table `tbz_movies`
--

CREATE TABLE `tbz_movies` (
  `id` int(250) NOT NULL,
  `movie_name` varchar(250) NOT NULL,
  `image` varchar(200) NOT NULL,
  `certificate` varchar(250) NOT NULL,
  `format` varchar(250) NOT NULL COMMENT 'join->tbz_format-id as id,format_name as name',
  `tag_id` varchar(250) NOT NULL COMMENT 'join->tbz_tags-id as id,tag_name as name',
  `pcode` int(11) NOT NULL,
  `language` varchar(250) NOT NULL COMMENT 'join->tbz_language-id as id,name as name',
  `cast` varchar(225) NOT NULL,
  `crew` varchar(500) NOT NULL,
  `film_budget` varchar(200) NOT NULL,
  `release_date` varchar(225) NOT NULL,
  `total_hours` varchar(250) NOT NULL,
  `description` varchar(250) NOT NULL,
  `director_name_id` varchar(250) NOT NULL COMMENT 'join->tbz_actors-id as id,actors_name as name',
  `actor_name_id` varchar(250) NOT NULL COMMENT 'join->tbz_actors-id as id,actors_name as name',
  `banner_image` longtext NOT NULL,
  `trailer` varchar(225) NOT NULL,
  `facebook` varchar(225) NOT NULL,
  `twitter` varchar(225) NOT NULL,
  `googleplus` varchar(225) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbz_movies`
--

INSERT INTO `tbz_movies` (`id`, `movie_name`, `image`, `certificate`, `format`, `tag_id`, `pcode`, `language`, `cast`, `crew`, `film_budget`, `release_date`, `total_hours`, `description`, `director_name_id`, `actor_name_id`, `banner_image`, `trailer`, `facebook`, `twitter`, `googleplus`) VALUES
(1, 'Annabelle: Creation', 'http://tammanager.com/movie/admin/uploads/1502433949_images_(5).jpg', 'U', '2D', '2', 0, '3', '45', '[{\"1\":\"42\"},{\"4\":\"43\"},{\"4\":\"40\"}]', '', '2017-08-12', '3hours', '<p>Several years after the tragic death of their little girl, a doll-maker and his wife welcome a nun and several girls from a shuttered orphanage into their home, soon becoming the target of the doll-maker&#39;s possessed doll, Annabelle.</p>\r\n', '', '', 'http://tammanager.com/movie/admin/uploads/1502433949_download_(12).jpg', 'https://www.youtube.com/embed/KisPhy7T__Q', 'https://www.facebook.com/AnnabelleMovie/?brand_redir=1510410042506146', 'https://twitter.com/annabellemovie', 'https://twitter.com/annabellemovie');

-- --------------------------------------------------------

--
-- Table structure for table `tbz_movies_to_theatres`
--

CREATE TABLE `tbz_movies_to_theatres` (
  `id` int(11) NOT NULL,
  `movie_id` int(11) NOT NULL,
  `theatre_id` varchar(250) NOT NULL,
  `status` int(11) NOT NULL DEFAULT '1'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbz_movies_to_theatres`
--

INSERT INTO `tbz_movies_to_theatres` (`id`, `movie_id`, `theatre_id`, `status`) VALUES
(1, 1, '1', 1),
(2, 1, '2', 1),
(3, 1, '3', 0),
(4, 3, '2', 1),
(5, 3, '3', 1),
(6, 3, '4', 1),
(7, 2, '1', 1),
(8, 2, '2', 1),
(9, 2, '4', 1),
(10, 4, '1', 1),
(11, 4, '4', 1),
(12, 5, '1', 1),
(13, 11, '1', 1),
(14, 12, '1', 1);

-- --------------------------------------------------------

--
-- Table structure for table `tbz_movie_person`
--

CREATE TABLE `tbz_movie_person` (
  `id` int(250) NOT NULL,
  `cast_id` int(11) NOT NULL,
  `name` text NOT NULL,
  `period_duration` varchar(250) NOT NULL,
  `description` varchar(250) NOT NULL,
  `image` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbz_movie_person`
--

INSERT INTO `tbz_movie_person` (`id`, `cast_id`, `name`, `period_duration`, `description`, `image`) VALUES
(1, 0, 'unni mukunthan', '1978 to 2016', 'Thiranottam is a Malayalam-language Indian feature film directed by Ashok Kumar and produced by Sasheendran made in 1978, starring Chandra Mohan, Ravikumar, Maniyanpilla Raju, Mohanlal and Renu Chandra in their debut roles.[1][2] Mohanlal played Kutt', 'assets/public/img/uploads/unni-mukunthan-20140922101949-27118.jpg'),
(3, 0, 'Mammootty', '1971–1980', 'Mammootty\'s debut was an uncredited appearance in the 1971 film Anubhavangal Paalichakal directed by K. S. Sethumadhavan.', 'assets/public/img/uploads/pvr-500-voucher-at-241.jpg'),
(4, 4, 'Kunjakko Boban', '', '', 'assets/public/img/cast/kunj.jpg'),
(5, 4, 'Jayasurya', '', '', 'assets/public/img/cast/jaya.jpg'),
(6, 4, 'Aparna ', '', '', 'assets/public/img/cast/aparna.jpg'),
(7, 4, 'Aakash Muraleedaran', '', '', ''),
(8, 4, 'Angelina Roshan', '', '', ''),
(9, 4, 'Roshan Andrews', '', '', 'assets/public/img/cast/roshan.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `tbz_movie_rate`
--

CREATE TABLE `tbz_movie_rate` (
  `id` int(11) NOT NULL,
  `movie_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `rate` int(11) NOT NULL,
  `title` varchar(250) NOT NULL,
  `details` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbz_movie_rate`
--

INSERT INTO `tbz_movie_rate` (`id`, `movie_id`, `user_id`, `rate`, `title`, `details`) VALUES
(9, 1, 24, 4, 'Good', 'Good Family Entertainer.'),
(10, 1, 24, 3, 'Nice', 'Action Thriller'),
(12, 1, 38, 5, 'Nice', 'Super Fight'),
(13, 1, 24, 3, 'Super', 'Super, Amazing');

-- --------------------------------------------------------

--
-- Table structure for table `tbz_pages`
--

CREATE TABLE `tbz_pages` (
  `page_id` int(11) NOT NULL,
  `pages` varchar(225) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbz_pages`
--

INSERT INTO `tbz_pages` (`page_id`, `pages`) VALUES
(1, 'actors/addnew'),
(2, 'actors/edit'),
(3, 'actors/list'),
(4, 'bookingdetails/create'),
(5, 'bookingdetails/getdata'),
(6, 'bookingdetails/modal'),
(7, 'category/create'),
(8, 'category/edit'),
(9, 'category/list'),
(10, 'customers/customerslist'),
(11, 'language/create'),
(12, 'language/edit'),
(13, 'language/list'),
(14, 'movie/create'),
(15, 'movie/edit'),
(16, 'movie/list'),
(17, 'movietheatres/create'),
(18, 'movietheatres/edit'),
(19, 'movietheatres/list'),
(20, 'promocode/create'),
(21, 'promocode/edit'),
(22, 'promocode/list'),
(23, 'reviews/create'),
(24, 'reviews/edit'),
(25, 'reviews/list'),
(26, 'role/create'),
(27, 'role/edit'),
(28, 'role/list'),
(29, 'settings/create'),
(30, 'tag/create'),
(31, 'tag/edit'),
(32, 'tag/list'),
(33, 'theatre/addmovie'),
(34, 'theatre/addscreen'),
(35, 'theatre/addshow'),
(36, 'theatre/edit'),
(37, 'theatre/editshow'),
(38, 'theatre/list'),
(39, 'theatre/modal'),
(40, 'theatre/screen'),
(41, 'theatre/theatre'),
(42, 'theatre/viewmovie'),
(43, 'theatre/viewshow'),
(44, 'theatrelocation/create'),
(45, 'theatrelocation/edit'),
(46, 'theatrelocation/list'),
(47, 'role_management/role_manage'),
(49, 'templates/welcome');

-- --------------------------------------------------------

--
-- Table structure for table `tbz_payment`
--

CREATE TABLE `tbz_payment` (
  `id` int(11) NOT NULL,
  `price` varchar(255) NOT NULL,
  `payment_status` varchar(255) NOT NULL,
  `payment_for` varchar(255) NOT NULL,
  `date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tbz_promocode`
--

CREATE TABLE `tbz_promocode` (
  `id` int(11) NOT NULL,
  `movie_id` varchar(11) NOT NULL COMMENT 'join->tbz_movies-id as id,movie_name as name',
  `category` int(11) NOT NULL COMMENT 'join->tbz_category-id as id,name as name',
  `promocode` varchar(20) NOT NULL,
  `valid_from` varchar(225) NOT NULL,
  `valid_to` varchar(225) NOT NULL,
  `min_amount` int(11) NOT NULL,
  `max_amount` int(11) NOT NULL,
  `promocode_type` varchar(225) NOT NULL,
  `off` varchar(11) NOT NULL,
  `status` int(11) NOT NULL DEFAULT '1' COMMENT '1-Active, 2-Inactive, 0-Delete'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tbz_quick_pay`
--

CREATE TABLE `tbz_quick_pay` (
  `id` int(11) NOT NULL,
  `user_id` varchar(255) NOT NULL,
  `type` varchar(255) NOT NULL,
  `details` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tbz_reviews`
--

CREATE TABLE `tbz_reviews` (
  `id` int(250) NOT NULL,
  `movie` int(11) NOT NULL COMMENT 'join->tbz_movies-id as id,movie_name as name',
  `title` varchar(128) NOT NULL,
  `comments` varchar(250) NOT NULL,
  `rate` int(11) NOT NULL,
  `time_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `user_id` varchar(250) NOT NULL COMMENT 'join->tbz_users-id as id,email as name',
  `status` int(11) NOT NULL DEFAULT '0' COMMENT '0->disable,1->enable'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbz_reviews`
--

INSERT INTO `tbz_reviews` (`id`, `movie`, `title`, `comments`, `rate`, `time_date`, `user_id`, `status`) VALUES
(2, 2, 'Ticket', 'Nice Film', 2, '2017-07-21 10:32:13', '1', 0),
(4, 4, 'Ticket', 'Good', 4, '2017-05-11 10:58:47', '5', 0),
(5, 5, 'Ticket', 'Heart touching', 5, '2017-04-28 06:26:28', '2', 0),
(6, 6, 'Ticket', 'A feel good movie and excellent making. All the artists in the movie performed really well especially the lead actors. Worth the money. Good attempt', 4, '2017-07-21 10:33:03', '1', 0),
(7, 7, 'Ticket', 'Created a nice concept between a boy and his grandmother. It happend in the past 1970s. The film shows the transformation of a boy from 1970s to 2000s', 2, '2016-10-05 09:47:16', '1', 0),
(8, 8, 'Ticket', 'super movie . Biju menon hits another movie. Well taken and all will love this movie. A movie everyone in kerala should watch as this movie takes you to your childhood , also the love and care we give each other. Well taken .', 5, '2016-10-05 09:50:46', '2', 0),
(9, 9, 'title', 'A wonderful work from a debutant director! The acting of grandma was awsome as also that of ', 4, '2016-10-05 09:50:49', '1', 0),
(36, 1, '', 'watched it . Really a heart touching movie.. such an awesome performance from that grandma nd unni.. really a must watch movie. hats off to all the people behind this wonderful movie..', 4, '2017-07-21 10:33:07', '41', 0),
(37, 1, '', 'a good movie with a message and story goes with touching visuals of relation value and boding of childhood friends. will go through many types of nostalgic movements.don\'t miss...', 1, '2017-07-21 10:35:43', '73', 0),
(38, 7, '', 'Nice family entertainment movie , watching movie with GRAND PARENTS will give us another feeling. Simple , beautiful and conveys a very good message , A MUST WATCH MOVIE !!', 3, '2016-10-05 09:48:34', '73', 0),
(39, 1, '', 'heart touching movie,must watch movie,,, actors r really good,especially that grandma and unni ,they did a great job...don\'t miss it guys .promote it guys ,it really deserves to be hit.', 5, '2017-04-24 04:19:30', '79', 1),
(40, 7, '', 'Well scripted screenplay in a big screen with a real life feeling. I could feel my grandmothers ( vallechi) love towards me. Not only to me even my frnds too.', 1, '2016-10-05 09:51:13', '79', 0),
(41, 2, '', 'It is a movie not to be missed. A touching movie. i would recommend the new generation to watch and to understand the love, family & friendship bonding we had in that golden era of 70\'s .', 2, '2017-04-24 04:19:32', '73', 1),
(42, 10, '', 'it\'s a simple movie..but really got potential to grab ppl\'s attention. A nice movie to watch. You will nostalgic in some movie scenes. But a one time watch.', 4, '2016-10-05 09:51:19', '79', 0),
(43, 2, '', 'Did come as I expected. But still not a boring movie. The 2nd half was much better.Wonderful!!! acting by all strs and all in all... there\'s something missing', 5, '2017-07-21 10:32:52', '79', 0),
(44, 2, '', 'Jude has done a brilliant work in direction, casting and story line he had picked. Definitely a good watch with elements that most people would enjoy. The movie is little underrated. This movie deserves far more recognition and acceptance.', 3, '2017-04-24 04:19:34', '41', 1),
(45, 10, '', 'rocking.. movie.. it\'s a different story. loved it soo much.. fresh scenes and superb screenplay. totally enjoyable. good entertainer.. lot of actors.. superb acting by everyone..', 4, '2016-10-05 09:50:26', '73', 0),
(46, 3, '', 'Wonderful movie......', 3, '2017-07-21 10:36:16', '41', 0),
(47, 1, '', 'good film', 1, '2017-05-11 10:59:35', '91', 1);

-- --------------------------------------------------------

--
-- Table structure for table `tbz_role`
--

CREATE TABLE `tbz_role` (
  `id` int(250) NOT NULL,
  `role_name` varchar(250) NOT NULL,
  `status` int(11) NOT NULL DEFAULT '1' COMMENT '0->inactive,1->active'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbz_role`
--

INSERT INTO `tbz_role` (`id`, `role_name`, `status`) VALUES
(1, 'Director', 1),
(2, 'Actor', 1),
(3, 'Actress', 1),
(4, 'Producer', 1),
(5, 'Comedy', 1),
(6, 'Music Director', 1),
(10, 'Screen Play', 1),
(11, 'Cinematography', 1),
(12, 'Music Director', 1);

-- --------------------------------------------------------

--
-- Table structure for table `tbz_role_permission`
--

CREATE TABLE `tbz_role_permission` (
  `id` int(11) NOT NULL,
  `role_id` int(11) NOT NULL,
  `page_id` varchar(500) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbz_role_permission`
--

INSERT INTO `tbz_role_permission` (`id`, `role_id`, `page_id`) VALUES
(1, 1, '1,2,3,4,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31,32,33,34,56,61,62,64,35,36,37,38,39,40,41,42,43,44,45,46,47,48,49,50,51,65,66,67,68,69,52,53,54,55,57,58,59,60,70,71,72'),
(2, 3, '1,2,6,7,8,9,10,12,13,14,15,16,27,28,29'),
(8, 6, '6,7,8,9,10,11,12');

-- --------------------------------------------------------

--
-- Table structure for table `tbz_settings`
--

CREATE TABLE `tbz_settings` (
  `id` int(10) NOT NULL,
  `title` varchar(200) NOT NULL,
  `title_short` varchar(50) NOT NULL,
  `logo` varchar(200) NOT NULL,
  `favicon` varchar(200) NOT NULL,
  `smtp_username` varchar(200) NOT NULL,
  `smtp_host` varchar(200) NOT NULL,
  `smtp_password` varchar(200) NOT NULL,
  `admin_email` varchar(500) NOT NULL,
  `sender_id` varchar(200) NOT NULL,
  `sms_username` varchar(200) NOT NULL,
  `sms_password` varchar(200) NOT NULL,
  `paypal` varchar(200) NOT NULL,
  `paypalid` varchar(200) NOT NULL,
  `payment_options` varchar(225) NOT NULL,
  `country` varchar(225) NOT NULL,
  `app_secret_key` varchar(225) NOT NULL,
  `authorize_net` varchar(225) NOT NULL,
  `authorize_net_loginid` varchar(225) NOT NULL,
  `transaction_key` varchar(225) NOT NULL,
  `google_api_key` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbz_settings`
--

INSERT INTO `tbz_settings` (`id`, `title`, `title_short`, `logo`, `favicon`, `smtp_username`, `smtp_host`, `smtp_password`, `admin_email`, `sender_id`, `sms_username`, `sms_password`, `paypal`, `paypalid`, `payment_options`, `country`, `app_secret_key`, `authorize_net`, `authorize_net_loginid`, `transaction_key`, `google_api_key`) VALUES
(1, 'Movie Ticket', 'TBZ', 'uploads/1494318967_tb-logo.png', 'uploads/1494311258_tb-logo1.png', 'hf', 'admin@gmail.com', 'hfgh', 'admin@gmail.com', '', '', '', 'sandbox', 'abcd@gmail.com', 'paypal,cash,credit_card', 'India', 'mykey', '2', 'retyeryery', 'etyetyety5646df', 'AIzaSyCoMVd2pMGzIUbGRNm-EVHGOWNWAfQJy8Q');

-- --------------------------------------------------------

--
-- Table structure for table `tbz_show_details`
--

CREATE TABLE `tbz_show_details` (
  `id` int(11) NOT NULL,
  `screen_name` varchar(250) NOT NULL,
  `cinemas_id` varchar(250) NOT NULL,
  `movie_name_id` varchar(250) NOT NULL,
  `image` varchar(250) NOT NULL,
  `date` varchar(250) NOT NULL,
  `language` varchar(250) NOT NULL,
  `tag_id` varchar(250) NOT NULL,
  `format` varchar(250) NOT NULL,
  `screen_timing` varchar(250) NOT NULL,
  `city_id` varchar(250) NOT NULL,
  `facebook_link` varchar(200) NOT NULL,
  `google_plus` varchar(200) NOT NULL,
  `twiter_link` varchar(200) NOT NULL,
  `linkedin_link` varchar(200) NOT NULL,
  `user_id` int(10) NOT NULL COMMENT 'join->tbz_users-id as id,email as name'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbz_show_details`
--

INSERT INTO `tbz_show_details` (`id`, `screen_name`, `cinemas_id`, `movie_name_id`, `image`, `date`, `language`, `tag_id`, `format`, `screen_timing`, `city_id`, `facebook_link`, `google_plus`, `twiter_link`, `linkedin_link`, `user_id`) VALUES
(14, '8', '1', '1', '', '2017-08-31', '', '', '', '12:15 PM', '', '', '', '', '', 0),
(15, '8', '1', '1', '', '2017-08-31', '', '', '', '04:15 PM', '', '', '', '', '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `tbz_show_filter_date`
--

CREATE TABLE `tbz_show_filter_date` (
  `id` int(250) NOT NULL,
  `date` varchar(250) NOT NULL,
  `day` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbz_show_filter_date`
--

INSERT INTO `tbz_show_filter_date` (`id`, `date`, `day`) VALUES
(1, '04', 'TODAY'),
(2, '05', 'TOM'),
(3, '06', 'SUN');

-- --------------------------------------------------------

--
-- Table structure for table `tbz_show_filter_timeing`
--

CREATE TABLE `tbz_show_filter_timeing` (
  `id` int(250) NOT NULL,
  `show_morning` varchar(250) CHARACTER SET latin1 COLLATE latin1_bin NOT NULL,
  `show_afternoon` varchar(250) NOT NULL,
  `show_evening` varchar(250) NOT NULL,
  `show_night` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbz_show_filter_timeing`
--

INSERT INTO `tbz_show_filter_timeing` (`id`, `show_morning`, `show_afternoon`, `show_evening`, `show_night`) VALUES
(1, '09:30-11:59AM', '02:00-05:00PM', '05:15-08:00PM', '09:15-11:59PM'),
(2, '09:30-11:59AM', '02:00-05:00PM', '05:15-08:00PM', '09:15-11:59PM');

-- --------------------------------------------------------

--
-- Table structure for table `tbz_show_timeing`
--

CREATE TABLE `tbz_show_timeing` (
  `id` int(250) NOT NULL,
  `movie_name` varchar(250) NOT NULL,
  `show_date` varchar(250) NOT NULL,
  `show_day` varchar(250) NOT NULL,
  `format` varchar(250) NOT NULL,
  `ticket_price` varchar(250) NOT NULL,
  `show_filter_timeing` varchar(250) NOT NULL COMMENT 'join->show_filter_timeing->show_filter_timeing',
  `theater_name` varchar(250) NOT NULL,
  `place` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbz_show_timeing`
--

INSERT INTO `tbz_show_timeing` (`id`, `movie_name`, `show_date`, `show_day`, `format`, `ticket_price`, `show_filter_timeing`, `theater_name`, `place`) VALUES
(1, '24', '1', '1', '2', '300', '1', 'PVR', 'Lulu kochi'),
(2, 'Sarrainodu', '2', '2', '2', '250', '2', 'PVR', 'Center squar');

-- --------------------------------------------------------

--
-- Table structure for table `tbz_tables`
--

CREATE TABLE `tbz_tables` (
  `id` int(11) NOT NULL,
  `table` varchar(255) NOT NULL,
  `details` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbz_tables`
--

INSERT INTO `tbz_tables` (`id`, `table`, `details`) VALUES
(1, 'tbz_booking_history', '{\"id\":{\"enable\":true,\"required\":false,\"enable_in_list\":true,\"enable_in_form\":true,\"readonly\":true},\"event_id\":{\"enable\":false,\"required\":true,\"enable_in_list\":true,\"enable_in_form\":true,\"readonly\":false},\"user_id\":{\"enable\":false,\"required\":true,\"enable_in_list\":false,\"enable_in_form\":true,\"readonly\":true,\"file\":false},\"details\":{\"enable\":true,\"required\":true,\"enable_in_list\":true,\"enable_in_form\":true,\"readonly\":false},\"status\":{\"enable\":true,\"required\":true,\"enable_in_list\":true,\"enable_in_form\":true,\"readonly\":false}}'),
(2, 'tbz_category', '{\"id\":{\"enable\":true,\"required\":false,\"enable_in_list\":true,\"enable_in_form\":true,\"readonly\":true},\"name\":{\"enable\":true,\"required\":true,\"enable_in_list\":true,\"enable_in_form\":true,\"readonly\":false},\"status\":{\"enable\":true,\"required\":true,\"enable_in_list\":false,\"enable_in_form\":true,\"readonly\":false}}'),
(3, 'tbz_chinema', '{\"id\":{\"enable\":true,\"required\":false,\"enable_in_list\":true,\"readonly\":true,\"enable_in_form\":true},\"name\":{\"enable\":true,\"required\":true,\"enable_in_list\":true,\"enable_in_form\":true,\"readonly\":false},\"image\":{\"enable\":true,\"required\":true,\"enable_in_list\":false,\"enable_in_form\":true,\"readonly\":false,\"file_type\":true},\"location\":{\"enable\":true,\"required\":true,\"enable_in_list\":true,\"enable_in_form\":true,\"readonly\":false},\"address\":{\"enable_in_list\":true,\"enable_in_form\":true,\"required\":true,\"readonly\":false},\"user_id\":{\"enable_in_list\":true,\"enable_in_form\":true,\"required\":true,\"readonly\":true},\"city_dup\":{\"enable_in_list\":true,\"enable_in_form\":true,\"required\":true,\"readonly\":false}}'),
(4, 'tbz_events', '{\"id\":{\"enable\":true,\"required\":false,\"enable_in_form\":true,\"readonly\":true,\"enable_in_list\":true},\"name\":{\"enable\":true,\"required\":true,\"enable_in_list\":true,\"enable_in_form\":true,\"readonly\":false},\"language\":{\"enable\":true,\"required\":true,\"enable_in_list\":true,\"enable_in_form\":true,\"readonly\":false},\"tags\":{\"enable\":true,\"required\":true,\"enable_in_form\":true,\"enable_in_list\":false,\"readonly\":false},\"duration\":{\"enable\":false,\"required\":true,\"enable_in_form\":true,\"enable_in_list\":false,\"readonly\":false},\"date\":{\"enable\":false,\"required\":false,\"enable_in_form\":true,\"enable_in_list\":false,\"readonly\":false,\"date_type\":true},\"category\":{\"enable\":true,\"required\":true,\"enable_in_list\":true,\"enable_in_form\":true,\"readonly\":false},\"description\":{\"enable\":false,\"required\":true,\"enable_in_form\":true,\"enable_in_list\":true,\"readonly\":false},\"lead_cast\":{\"enable\":false,\"required\":true,\"enable_in_form\":true,\"enable_in_list\":false,\"readonly\":false},\"trailer\":{\"enable\":false,\"required\":true,\"enable_in_form\":true,\"enable_in_list\":false,\"readonly\":false},\"status\":{\"enable\":true,\"required\":true,\"enable_in_list\":true,\"enable_in_form\":true,\"readonly\":false},\"image\":{\"enable_in_form\":true,\"required\":true,\"file_type\":true}}'),
(5, 'tbz_language', '{\"id\":{\"enable\":true,\"required\":false,\"enable_in_list\":true,\"enable_in_form\":true,\"readonly\":true},\"name\":{\"enable\":true,\"required\":true,\"enable_in_list\":true,\"enable_in_form\":true,\"readonly\":false}}'),
(6, 'tbz_menu', '{\"id\":{\"enable\":true,\"required\":true,\"enable_in_list\":true,\"enable_in_form\":true,\"readonly\":true},\"menu_name\":{\"enable\":true,\"required\":true,\"enable_in_list\":true,\"enable_in_form\":true},\"table_name\":{\"enable\":false,\"required\":true,\"enable_in_form\":true},\"new_link\":{\"enable\":true,\"required\":true,\"enable_in_list\":true,\"enable_in_form\":true},\"view_all_link\":{\"enable\":true,\"required\":true,\"enable_in_list\":true,\"enable_in_form\":true},\"in_menu\":{\"enable\":true,\"required\":true,\"enable_in_list\":true,\"enable_in_form\":true},\"icon\":{\"enable\":true,\"required\":true,\"enable_in_list\":false,\"enable_in_form\":true}}'),
(7, 'tbz_payment', '{\"id\":{\"enable\":true,\"required\":false,\"enable_in_list\":true,\"enable_in_form\":true,\"readonly\":true},\"price\":{\"enable\":true,\"required\":true,\"enable_in_list\":true,\"enable_in_form\":true,\"readonly\":false},\"payment_status\":{\"enable\":true,\"required\":true,\"enable_in_list\":true,\"enable_in_form\":true,\"readonly\":false},\"payment_for\":{\"enable\":true,\"required\":true,\"enable_in_list\":true,\"enable_in_form\":true,\"readonly\":false},\"date\":{\"enable\":true,\"required\":true,\"enable_in_list\":true,\"enable_in_form\":true,\"readonly\":false,\"date_type\":true}}'),
(8, 'tbz_person', '{\"id\":{\"enable\":true,\"required\":false,\"enable_in_list\":true,\"enable_in_form\":true,\"readonly\":true},\"name\":{\"enable\":true,\"required\":true,\"enable_in_list\":true,\"enable_in_form\":true,\"readonly\":false},\"designation\":{\"enable\":true,\"required\":true,\"enable_in_list\":true,\"enable_in_form\":true,\"readonly\":false},\"details\":{\"enable\":true,\"required\":true,\"enable_in_list\":true,\"enable_in_form\":true,\"readonly\":false},\"image\":{\"enable\":true,\"required\":true,\"enable_in_list\":true,\"enable_in_form\":true,\"readonly\":false},\"films\":{\"enable\":true,\"required\":true,\"enable_in_list\":true,\"enable_in_form\":true,\"readonly\":false}}'),
(9, 'tbz_quick_pay', '{\"id\":{\"enable\":true,\"required\":false,\"enable_in_list\":true,\"enable_in_form\":true,\"readonly\":true},\"user_id\":{\"enable\":true,\"required\":true,\"enable_in_list\":true,\"enable_in_form\":true,\"readonly\":false},\"type\":{\"enable\":true,\"required\":true,\"enable_in_list\":true,\"enable_in_form\":true,\"readonly\":false},\"details\":{\"enable\":true,\"required\":true,\"enable_in_list\":true,\"enable_in_form\":true,\"readonly\":false}}'),
(10, 'tbz_tables', '{\"id\":{\"enable\":true,\"required\":false,\"enable_in_list\":true,\"enable_in_form\":true,\"readonly\":true},\"table\":{\"enable\":true,\"required\":true,\"enable_in_list\":true,\"enable_in_form\":true},\"details\":{\"enable\":true,\"required\":true,\"enable_in_list\":true,\"enable_in_form\":true}}'),
(11, 'tbz_tags', '{\"id\":{\"enable\":true,\"required\":false,\"enable_in_list\":true,\"enable_in_form\":true,\"readonly\":true},\"tag_name\":{\"enable_in_list\":true,\"enable_in_form\":true,\"required\":true,\"readonly\":false}}'),
(12, 'tbz_users', '{\"id\":{\"enable\":true,\"required\":false,\"enable_in_list\":true,\"enable_in_form\":true,\"readonly\":true},\"first_name\":{\"enable\":false,\"required\":false,\"enable_in_list\":true,\"enable_in_form\":false,\"readonly\":false},\"last_name\":{\"enable\":false,\"required\":false,\"enable_in_list\":true,\"enable_in_form\":false,\"readonly\":false},\"phone\":{\"enable\":true,\"required\":false,\"enable_in_form\":false,\"enable_in_list\":true,\"readonly\":false},\"email\":{\"enable\":true,\"required\":false,\"enable_in_list\":true,\"enable_in_form\":false,\"readonly\":false},\"location\":{\"enable\":true,\"required\":false,\"enable_in_form\":false,\"enable_in_list\":false,\"readonly\":false,\"file_type\":false},\"status\":{\"enable\":true,\"required\":false,\"enable_in_list\":false,\"enable_in_form\":false,\"readonly\":false},\"user_type\":{\"enable_in_list\":false,\"enable_in_form\":false,\"required\":false,\"readonly\":false},\"password\":{\"enable_in_list\":false,\"enable_in_form\":false,\"required\":false,\"readonly\":false},\"gender\":{\"enable_in_list\":false,\"enable_in_form\":false,\"required\":false,\"readonly\":false},\"date_of_birth\":{\"enable_in_list\":false,\"enable_in_form\":false,\"required\":false,\"readonly\":false,\"date_type\":false},\"married_status\":{\"enable_in_list\":false,\"enable_in_form\":false,\"required\":false,\"readonly\":false},\"reset_key\":{\"enable_in_list\":false,\"enable_in_form\":false,\"required\":false,\"readonly\":false},\"profile_picture\":{\"file_type\":true,\"enable_in_form\":true},\"image\":{\"file_type\":true,\"enable_in_form\":true,\"enable_in_list\":false}}'),
(13, 'tbz_wallet', '{\"id\":{\"enable\":true,\"required\":false,\"enable_in_list\":true,\"enable_in_form\":true,\"readonly\":true},\"user_id\":{\"enable\":true,\"required\":true,\"enable_in_list\":true,\"enable_in_form\":true,\"readonly\":true},\"balance\":{\"enable\":true,\"required\":true,\"enable_in_list\":true,\"enable_in_form\":true,\"readonly\":false},\"cashback\":{\"enable\":true,\"required\":true,\"enable_in_list\":true,\"enable_in_form\":true,\"readonly\":false},\"last_transaction_date\":{\"enable\":true,\"required\":false,\"enable_in_list\":true,\"enable_in_form\":true,\"readonly\":false,\"date_type\":true}}'),
(14, 'tbz_usertypes', '{\"id\":{\"enable_in_list\":true,\"enable_in_form\":true,\"required\":false,\"readonly\":true},\"name\":{\"enable_in_list\":true,\"enable_in_form\":true,\"required\":true,\"readonly\":false},\"status\":{\"enable_in_list\":true,\"enable_in_form\":true,\"required\":true,\"readonly\":false}}'),
(15, 'tbz_movie_person', '{\"id\":{\"enable_in_list\":true,\"enable_in_form\":true,\"required\":false,\"readonly\":true},\"name\":{\"enable_in_list\":true,\"enable_in_form\":true,\"required\":true,\"readonly\":false},\"period_duration\":{\"enable_in_list\":true,\"enable_in_form\":true,\"required\":true,\"readonly\":false},\"movie_name\":{\"enable_in_list\":true,\"enable_in_form\":true,\"required\":true,\"readonly\":false},\"description\":{\"enable_in_list\":true,\"enable_in_form\":true,\"required\":true,\"readonly\":false},\"image\":{\"enable_in_list\":true,\"enable_in_form\":true,\"required\":true,\"readonly\":false}}'),
(16, 'tbz_movies', '{\"id\":{\"enable_in_list\":true,\"enable_in_form\":true,\"required\":false,\"readonly\":true,\"file_type\":false,\"date_type\":false},\"movie_name\":{\"enable_in_list\":true,\"enable_in_form\":true,\"required\":true,\"readonly\":false,\"file_type\":false,\"date_type\":false},\"image\":{\"enable_in_list\":false,\"enable_in_form\":true,\"required\":true,\"readonly\":false,\"file\":true,\"test\":true,\"file_type\":true,\"date_type\":false},\"language\":{\"enable_in_list\":true,\"enable_in_form\":true,\"required\":true,\"readonly\":false,\"file_type\":false,\"date_type\":false},\"release_date\":{\"enable_in_list\":false,\"enable_in_form\":true,\"required\":true,\"readonly\":false,\"file\":false,\"date\":true,\"file_type\":false,\"date_type\":true},\"total_hours\":{\"enable_in_list\":true,\"enable_in_form\":true,\"required\":true,\"readonly\":false,\"file_type\":false,\"date_type\":false},\"description\":{\"enable_in_list\":false,\"enable_in_form\":true,\"required\":true,\"readonly\":false,\"file_type\":false,\"date_type\":false},\"certificate\":{\"enable_in_list\":true,\"enable_in_form\":true,\"required\":true,\"readonly\":false,\"file_type\":false,\"date_type\":false},\"format\":{\"enable_in_list\":true,\"enable_in_form\":true,\"required\":true,\"readonly\":false,\"file_type\":false,\"date_type\":false},\"tag_id\":{\"enable_in_list\":true,\"enable_in_form\":true,\"required\":true,\"readonly\":false,\"file_type\":false,\"date_type\":false},\"pcode\":{\"enable_in_list\":true,\"enable_in_form\":true,\"readonly\":false,\"required\":true,\"file_type\":false,\"date_type\":false},\"actor_name_id\":{\"enable_in_list\":false,\"enable_in_form\":true,\"required\":true,\"readonly\":false,\"file_type\":false,\"date_type\":false},\"director_name_id\":{\"enable_in_list\":false,\"enable_in_form\":true,\"required\":true,\"readonly\":false,\"file_type\":false,\"date_type\":false},\"film_budget\":{\"enable_in_list\":true,\"enable_in_form\":true,\"required\":true,\"readonly\":false,\"file_type\":false,\"date_type\":false}}'),
(17, 'tbz_booking_details', '{\"id\":{\"enable_in_list\":true,\"readonly\":true,\"enable_in_form\":true},\"show_id\":{\"enable_in_list\":true,\"enable_in_form\":true,\"required\":true,\"date_type\":false},\"date\":{\"date_type\":true,\"required\":true,\"enable_in_form\":true,\"enable_in_list\":true},\"no_ticket\":{\"enable_in_list\":true,\"enable_in_form\":true,\"required\":true},\"seat_no\":{\"enable_in_list\":true,\"enable_in_form\":true,\"required\":true},\"amount\":{\"enable_in_list\":true,\"enable_in_form\":true,\"required\":true},\"booking_id\":{\"enable_in_list\":true,\"enable_in_form\":true,\"required\":true},\"payment\":{\"enable_in_list\":true,\"enable_in_form\":true,\"required\":true},\"txn_id\":{\"enable_in_list\":true,\"enable_in_form\":true,\"required\":true},\"status\":{\"enable_in_form\":true},\"user_id\":{\"enable_in_form\":true,\"required\":false,\"enable_in_list\":true,\"readonly\":true}}'),
(18, 'tbz_chinema_screen', '{\"id\":{\"enable_in_list\":true,\"enable_in_form\":true,\"required\":true,\"readonly\":true},\"screen_name\":{\"enable_in_list\":true,\"enable_in_form\":true,\"required\":true,\"readonly\":true},\"cinemas_id\":{\"enable_in_list\":true,\"enable_in_form\":true,\"required\":true,\"readonly\":true},\"column\":{\"enable_in_list\":true,\"enable_in_form\":true,\"required\":true,\"readonly\":true},\"row\":{\"enable_in_list\":true,\"enable_in_form\":true,\"required\":true,\"readonly\":true},\"chair_align\":{\"enable_in_list\":true,\"enable_in_form\":true,\"required\":true,\"readonly\":true},\"layout\":{\"enable_in_list\":true,\"enable_in_form\":true,\"required\":true,\"readonly\":true},\"preview\":{\"enable_in_list\":true,\"enable_in_form\":true,\"required\":true,\"readonly\":true},\"status\":{\"enable_in_list\":true,\"enable_in_form\":true,\"required\":true,\"readonly\":true}}'),
(19, 'tbz_promocode', '{\"id\":{\"enable_in_list\":true,\"enable_in_form\":true,\"required\":false,\"readonly\":true},\"movie_id\":{\"enable_in_list\":true,\"enable_in_form\":true,\"required\":true,\"readonly\":false},\"category\":{\"enable_in_list\":true,\"enable_in_form\":true,\"required\":true,\"readonly\":false},\"promocode\":{\"enable_in_list\":true,\"enable_in_form\":true,\"required\":true,\"readonly\":false},\"valid_from\":{\"enable_in_list\":true,\"enable_in_form\":true,\"required\":false,\"readonly\":false,\"date_type\":true},\"valid_to\":{\"enable_in_list\":true,\"enable_in_form\":true,\"required\":false,\"readonly\":false,\"date_type\":true},\"min_amount\":{\"enable_in_list\":true,\"enable_in_form\":true,\"required\":true,\"readonly\":false},\"max_amount\":{\"enable_in_list\":true,\"enable_in_form\":true,\"required\":true,\"readonly\":false}}'),
(20, 'tbz_format', '{\"id\":{\"enable_in_list\":true,\"enable_in_form\":true,\"required\":false,\"readonly\":true},\"format_name\":{\"enable_in_list\":true,\"enable_in_form\":true,\"required\":true,\"readonly\":false}}'),
(21, 'tbz_actors', '{\"id\":{\"enable_in_list\":true,\"enable_in_form\":true,\"required\":false,\"readonly\":true},\"actors_name\":{\"enable_in_list\":true,\"enable_in_form\":true,\"required\":true,\"readonly\":false},\"gender\":{\"enable_in_list\":true,\"enable_in_form\":true,\"required\":true,\"readonly\":false},\"role\":{\"enable_in_list\":true,\"enable_in_form\":true,\"required\":true,\"readonly\":false},\"dob\":{\"enable_in_list\":true,\"enable_in_form\":true,\"required\":false,\"readonly\":false,\"date_type\":true},\"description\":{\"enable_in_list\":false,\"enable_in_form\":true,\"required\":true,\"readonly\":false},\"actors_image\":{\"enable_in_list\":false,\"enable_in_form\":true,\"required\":false,\"readonly\":false,\"date_type\":false,\"file_type\":true},\"image\":{\"date_type\":false,\"file_type\":true,\"required\":true,\"enable_in_form\":true,\"enable_in_list\":true}}'),
(22, 'tbz_location', '{\"id\":{\"enable_in_list\":true,\"enable_in_form\":true,\"required\":false,\"readonly\":true},\"location\":{\"enable_in_list\":true,\"enable_in_form\":true,\"required\":true,\"readonly\":false}}'),
(23, 'tbz_trailers', '{\"id\":{\"enable_in_list\":true,\"enable_in_form\":true,\"required\":false,\"readonly\":true},\"movie\":{\"enable_in_list\":true,\"enable_in_form\":true,\"required\":true,\"readonly\":false},\"path\":{\"enable_in_list\":true,\"enable_in_form\":true,\"required\":true,\"readonly\":false}}'),
(24, 'tbz_role', '{\"id\":{\"enable_in_list\":true,\"enable_in_form\":true,\"required\":false,\"readonly\":true},\"role_name\":{\"enable_in_list\":true,\"enable_in_form\":true,\"required\":true,\"readonly\":false}}'),
(25, 'tbz_settings', '{\"id\":{\"enable_in_list\":true,\"enable_in_form\":true,\"required\":false,\"readonly\":true},\"title\":{\"enable_in_list\":true,\"enable_in_form\":true,\"required\":true,\"readonly\":false},\"logo\":{\"enable_in_list\":false,\"enable_in_form\":true,\"required\":false,\"readonly\":false,\"file_type\":true},\"favicon\":{\"enable_in_list\":false,\"enable_in_form\":true,\"required\":false,\"readonly\":false,\"file_type\":true},\"smtp_username\":{\"enable_in_list\":true,\"enable_in_form\":true,\"required\":true,\"readonly\":false},\"smtp_host\":{\"enable_in_list\":true,\"enable_in_form\":true,\"required\":true,\"readonly\":false},\"smtp_password\":{\"enable_in_list\":true,\"enable_in_form\":true,\"required\":true,\"readonly\":false},\"sender_id\":{\"enable_in_list\":true,\"enable_in_form\":true,\"required\":true,\"readonly\":false},\"sms_username\":{\"enable_in_list\":true,\"enable_in_form\":true,\"required\":true,\"readonly\":false},\"sms_password\":{\"enable_in_list\":true,\"enable_in_form\":true,\"required\":true,\"readonly\":false},\"paypal\":{\"enable_in_list\":true,\"enable_in_form\":true,\"required\":true,\"readonly\":false},\"paypalid\":{\"enable_in_list\":true,\"enable_in_form\":true,\"required\":true,\"readonly\":false}}'),
(26, 'tbz_reviews', '{\"id\":{\"enable_in_list\":true,\"enable_in_form\":true,\"required\":false,\"readonly\":true},\"movie\":{\"enable_in_list\":true,\"enable_in_form\":true,\"required\":true,\"readonly\":false},\"title\":{\"enable_in_list\":true,\"enable_in_form\":true,\"required\":true,\"readonly\":false},\"comments\":{\"enable_in_list\":true,\"enable_in_form\":true,\"required\":true,\"readonly\":false},\"rate\":{\"enable_in_list\":true,\"enable_in_form\":true,\"required\":true,\"readonly\":false},\"time_date\":{\"enable_in_list\":true,\"enable_in_form\":true,\"required\":true,\"readonly\":false},\"user_id\":{\"enable_in_list\":true,\"enable_in_form\":true,\"required\":false,\"readonly\":true}}'),
(27, 'tbz_gallery', '{\"id\":{\"enable_in_list\":true,\"enable_in_form\":true,\"required\":false,\"readonly\":true},\"movie\":{\"enable_in_list\":true,\"enable_in_form\":true,\"required\":true,\"readonly\":false,\"file_type\":false},\"image\":{\"enable_in_list\":true,\"enable_in_form\":true,\"required\":true,\"readonly\":false,\"file_type\":true}}'),
(28, 'tbz_show_details', '{\"id\":{\"enable_in_list\":true,\"enable_in_form\":true,\"required\":true,\"readonly\":true},\"screen_name\":{\"enable_in_list\":true,\"enable_in_form\":true,\"required\":true,\"readonly\":true},\"cinemas_id\":{\"enable_in_list\":true,\"enable_in_form\":true,\"required\":true,\"readonly\":true},\"movie_name_id\":{\"enable_in_list\":true,\"enable_in_form\":true,\"required\":true,\"readonly\":true},\"image\":{\"enable_in_list\":true,\"enable_in_form\":true,\"required\":true,\"readonly\":true},\"date\":{\"enable_in_list\":true,\"enable_in_form\":true,\"required\":true,\"readonly\":true},\"language\":{\"enable_in_list\":true,\"enable_in_form\":true,\"required\":true,\"readonly\":true},\"tag_id\":{\"enable_in_list\":true,\"enable_in_form\":true,\"required\":true,\"readonly\":true},\"format\":{\"enable_in_list\":true,\"enable_in_form\":true,\"required\":true,\"readonly\":true},\"screen_timing\":{\"enable_in_list\":true,\"enable_in_form\":true,\"required\":true,\"readonly\":true},\"city_id\":{\"enable_in_list\":true,\"enable_in_form\":true,\"required\":true,\"readonly\":true},\"facebook_link\":{\"enable_in_list\":true,\"enable_in_form\":true,\"required\":true,\"readonly\":true},\"google_plus\":{\"enable_in_list\":true,\"enable_in_form\":true,\"required\":true,\"readonly\":true},\"twiter_link\":{\"enable_in_list\":true,\"enable_in_form\":true,\"required\":true,\"readonly\":true},\"linkedin_link\":{\"enable_in_list\":true,\"enable_in_form\":true,\"required\":true,\"readonly\":true},\"user_id\":{\"enable_in_list\":true,\"enable_in_form\":true,\"required\":true,\"readonly\":true}}');

-- --------------------------------------------------------

--
-- Table structure for table `tbz_tags`
--

CREATE TABLE `tbz_tags` (
  `id` int(11) NOT NULL,
  `tag_name` varchar(255) NOT NULL,
  `status` int(11) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbz_tags`
--

INSERT INTO `tbz_tags` (`id`, `tag_name`, `status`) VALUES
(1, 'Crime', 1),
(2, 'Horror', 1),
(3, 'Mystrey', 1),
(4, 'Action', 1),
(5, 'Comedy', 1),
(6, 'Drama', 1),
(7, 'Thriller', 0),
(8, 'FANTASY', 1),
(9, 'fghgh', 0);

-- --------------------------------------------------------

--
-- Table structure for table `tbz_theater_details`
--

CREATE TABLE `tbz_theater_details` (
  `id` int(10) NOT NULL,
  `theater_name` varchar(250) NOT NULL,
  `image` varchar(250) NOT NULL,
  `address` varchar(250) NOT NULL,
  `city` varchar(250) NOT NULL,
  `latitude` varchar(225) NOT NULL,
  `longitude` varchar(225) NOT NULL,
  `status` int(11) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbz_theater_details`
--

INSERT INTO `tbz_theater_details` (`id`, `theater_name`, `image`, `address`, `city`, `latitude`, `longitude`, `status`) VALUES
(1, 'PVR Lulu', '', ' Lulu Mall, NH 47 Entrance, Nethaji Nagar, Edappally, Kochi, Kerala 682025', '1', '8.5', '8.5', 1),
(2, 'Cinepolis', '', 'Cinepolis: Centre Square Mall, Kochi', '1', '7.0', '7.3', 1),
(3, ' Cinemas', '', ' Cinemas: Gold Souk Grandee', '1', '8.6', '8.0', 1),
(4, 'Zeenath', '', 'Zeenath Theatre, Aluvaa', '1', '9.3', '9.3', 1),
(5, 'pvr', '', 'delhi', '10', 'adf', 'jbj', 1);

-- --------------------------------------------------------

--
-- Table structure for table `tbz_ticket_booked`
--

CREATE TABLE `tbz_ticket_booked` (
  `id` int(11) NOT NULL,
  `show_id` int(11) NOT NULL,
  `ticket` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbz_ticket_booked`
--

INSERT INTO `tbz_ticket_booked` (`id`, `show_id`, `ticket`) VALUES
(1, 3, 'E5'),
(2, 3, 'F7'),
(3, 3, 'J1'),
(4, 3, 'J2'),
(5, 8, 'H4'),
(6, 15, 'I2'),
(7, 15, 'I4');

-- --------------------------------------------------------

--
-- Table structure for table `tbz_trailers`
--

CREATE TABLE `tbz_trailers` (
  `id` int(11) NOT NULL,
  `movie` int(250) NOT NULL COMMENT 'join->tbz_movies-id as id,movie_name as name',
  `path` varchar(80) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbz_trailers`
--

INSERT INTO `tbz_trailers` (`id`, `movie`, `path`) VALUES
(1, 1, 'https://www.youtube.com/embed/GV1dvg9Dgok'),
(2, 2, 'https://www.youtube.com/embed/YKXq5jTuQSc'),
(3, 3, 'https://www.youtube.com/embed/LZYp4FSIABU'),
(4, 4, 'https://www.youtube.com/embed/PY2sEuriqLM'),
(5, 5, 'https://www.youtube.com/embed/kionOlANmVM'),
(6, 6, 'https://www.youtube.com/embed/colU5j-TQBA'),
(8, 7, 'https://www.youtube.com/embed/af4qg49yN9U');

-- --------------------------------------------------------

--
-- Table structure for table `tbz_users`
--

CREATE TABLE `tbz_users` (
  `id` int(11) NOT NULL,
  `password` varchar(250) NOT NULL,
  `first_name` varchar(255) NOT NULL,
  `last_name` varchar(255) NOT NULL,
  `gender` varchar(16) NOT NULL,
  `date_of_birth` date NOT NULL,
  `phone` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `married_status` varchar(20) NOT NULL,
  `location` varchar(255) NOT NULL,
  `image` varchar(200) NOT NULL,
  `status` varchar(225) NOT NULL DEFAULT '1' COMMENT '0->in-active,1->active',
  `user_type` int(10) NOT NULL COMMENT 'join->tbz_usertypes-name',
  `reset_key` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbz_users`
--

INSERT INTO `tbz_users` (`id`, `password`, `first_name`, `last_name`, `gender`, `date_of_birth`, `phone`, `email`, `married_status`, `location`, `image`, `status`, `user_type`, `reset_key`) VALUES
(1, 'e10adc3949ba59abbe56e057f20f883e', 'almond', 'abhraham', 'male', '1997-12-12', '9856321458', 'demouser@gmail.com', 'no', '', '', '1', 0, ''),
(2, 'e10adc3949ba59abbe56e057f20f883e', 'Varun', 'Varun', '', '0000-00-00', '', 'varun@gmail.com', '', '', '', '1', 0, ''),
(3, '25d55ad283aa400af464c76d713c07ad', 'Nic', 'Jience', 'male', '2000-01-01', '237679803849', 'wainmediatech@gmail.com', 'no', '', '', '1', 0, '');

-- --------------------------------------------------------

--
-- Table structure for table `tbz_usertypes`
--

CREATE TABLE `tbz_usertypes` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `status` int(11) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbz_usertypes`
--

INSERT INTO `tbz_usertypes` (`id`, `name`, `status`) VALUES
(1, 'Admin', 1),
(2, 'User', 1),
(3, 'Mercentor', 1),
(5, 'Manager', 0),
(6, 'Manager', 1),
(7, 'guest', 1);

-- --------------------------------------------------------

--
-- Table structure for table `tbz_wallet`
--

CREATE TABLE `tbz_wallet` (
  `id` int(11) NOT NULL,
  `user_id` varchar(255) NOT NULL COMMENT 'join->tbz_users-id as id,email as name',
  `balance` varchar(255) NOT NULL,
  `cashback` varchar(255) NOT NULL,
  `last_transaction_date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbz_wallet`
--

INSERT INTO `tbz_wallet` (`id`, `user_id`, `balance`, `cashback`, `last_transaction_date`) VALUES
(1, '1', '200', 'yes', '2016-09-02'),
(2, '1', '2000', 'yes', '2016-09-22'),
(3, '2', '400', '500', '2016-09-15');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbz_actors`
--
ALTER TABLE `tbz_actors`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbz_admin`
--
ALTER TABLE `tbz_admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbz_banners`
--
ALTER TABLE `tbz_banners`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbz_booking_details`
--
ALTER TABLE `tbz_booking_details`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbz_booking_history`
--
ALTER TABLE `tbz_booking_history`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbz_booking_temporary`
--
ALTER TABLE `tbz_booking_temporary`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbz_category`
--
ALTER TABLE `tbz_category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbz_chinema`
--
ALTER TABLE `tbz_chinema`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbz_chinema_screen`
--
ALTER TABLE `tbz_chinema_screen`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbz_controller`
--
ALTER TABLE `tbz_controller`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbz_controller_functions`
--
ALTER TABLE `tbz_controller_functions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbz_countries`
--
ALTER TABLE `tbz_countries`
  ADD PRIMARY KEY (`id_countries`);

--
-- Indexes for table `tbz_events`
--
ALTER TABLE `tbz_events`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbz_format`
--
ALTER TABLE `tbz_format`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbz_gallery`
--
ALTER TABLE `tbz_gallery`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbz_language`
--
ALTER TABLE `tbz_language`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbz_location`
--
ALTER TABLE `tbz_location`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbz_menu`
--
ALTER TABLE `tbz_menu`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbz_movies`
--
ALTER TABLE `tbz_movies`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbz_movies_to_theatres`
--
ALTER TABLE `tbz_movies_to_theatres`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbz_movie_person`
--
ALTER TABLE `tbz_movie_person`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbz_movie_rate`
--
ALTER TABLE `tbz_movie_rate`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbz_pages`
--
ALTER TABLE `tbz_pages`
  ADD PRIMARY KEY (`page_id`);

--
-- Indexes for table `tbz_payment`
--
ALTER TABLE `tbz_payment`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbz_promocode`
--
ALTER TABLE `tbz_promocode`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbz_quick_pay`
--
ALTER TABLE `tbz_quick_pay`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbz_reviews`
--
ALTER TABLE `tbz_reviews`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbz_role`
--
ALTER TABLE `tbz_role`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbz_role_permission`
--
ALTER TABLE `tbz_role_permission`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbz_settings`
--
ALTER TABLE `tbz_settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbz_show_details`
--
ALTER TABLE `tbz_show_details`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbz_show_filter_date`
--
ALTER TABLE `tbz_show_filter_date`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbz_show_filter_timeing`
--
ALTER TABLE `tbz_show_filter_timeing`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbz_show_timeing`
--
ALTER TABLE `tbz_show_timeing`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbz_tables`
--
ALTER TABLE `tbz_tables`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbz_tags`
--
ALTER TABLE `tbz_tags`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbz_theater_details`
--
ALTER TABLE `tbz_theater_details`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbz_ticket_booked`
--
ALTER TABLE `tbz_ticket_booked`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbz_trailers`
--
ALTER TABLE `tbz_trailers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbz_users`
--
ALTER TABLE `tbz_users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbz_usertypes`
--
ALTER TABLE `tbz_usertypes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbz_wallet`
--
ALTER TABLE `tbz_wallet`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbz_actors`
--
ALTER TABLE `tbz_actors`
  MODIFY `id` int(250) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=46;

--
-- AUTO_INCREMENT for table `tbz_admin`
--
ALTER TABLE `tbz_admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `tbz_banners`
--
ALTER TABLE `tbz_banners`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT for table `tbz_booking_details`
--
ALTER TABLE `tbz_booking_details`
  MODIFY `id` int(250) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `tbz_booking_history`
--
ALTER TABLE `tbz_booking_history`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbz_booking_temporary`
--
ALTER TABLE `tbz_booking_temporary`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `tbz_category`
--
ALTER TABLE `tbz_category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `tbz_chinema`
--
ALTER TABLE `tbz_chinema`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `tbz_chinema_screen`
--
ALTER TABLE `tbz_chinema_screen`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=48;

--
-- AUTO_INCREMENT for table `tbz_controller`
--
ALTER TABLE `tbz_controller`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `tbz_controller_functions`
--
ALTER TABLE `tbz_controller_functions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=73;

--
-- AUTO_INCREMENT for table `tbz_countries`
--
ALTER TABLE `tbz_countries`
  MODIFY `id_countries` int(3) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=240;

--
-- AUTO_INCREMENT for table `tbz_events`
--
ALTER TABLE `tbz_events`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `tbz_format`
--
ALTER TABLE `tbz_format`
  MODIFY `id` int(250) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tbz_gallery`
--
ALTER TABLE `tbz_gallery`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT for table `tbz_language`
--
ALTER TABLE `tbz_language`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `tbz_location`
--
ALTER TABLE `tbz_location`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `tbz_menu`
--
ALTER TABLE `tbz_menu`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `tbz_movies`
--
ALTER TABLE `tbz_movies`
  MODIFY `id` int(250) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tbz_movies_to_theatres`
--
ALTER TABLE `tbz_movies_to_theatres`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `tbz_movie_person`
--
ALTER TABLE `tbz_movie_person`
  MODIFY `id` int(250) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `tbz_movie_rate`
--
ALTER TABLE `tbz_movie_rate`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `tbz_pages`
--
ALTER TABLE `tbz_pages`
  MODIFY `page_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=50;

--
-- AUTO_INCREMENT for table `tbz_payment`
--
ALTER TABLE `tbz_payment`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbz_promocode`
--
ALTER TABLE `tbz_promocode`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbz_quick_pay`
--
ALTER TABLE `tbz_quick_pay`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbz_reviews`
--
ALTER TABLE `tbz_reviews`
  MODIFY `id` int(250) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=48;

--
-- AUTO_INCREMENT for table `tbz_role`
--
ALTER TABLE `tbz_role`
  MODIFY `id` int(250) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `tbz_role_permission`
--
ALTER TABLE `tbz_role_permission`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `tbz_settings`
--
ALTER TABLE `tbz_settings`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tbz_show_details`
--
ALTER TABLE `tbz_show_details`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `tbz_show_filter_date`
--
ALTER TABLE `tbz_show_filter_date`
  MODIFY `id` int(250) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tbz_show_filter_timeing`
--
ALTER TABLE `tbz_show_filter_timeing`
  MODIFY `id` int(250) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tbz_show_timeing`
--
ALTER TABLE `tbz_show_timeing`
  MODIFY `id` int(250) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tbz_tables`
--
ALTER TABLE `tbz_tables`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `tbz_tags`
--
ALTER TABLE `tbz_tags`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `tbz_theater_details`
--
ALTER TABLE `tbz_theater_details`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `tbz_ticket_booked`
--
ALTER TABLE `tbz_ticket_booked`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `tbz_trailers`
--
ALTER TABLE `tbz_trailers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `tbz_users`
--
ALTER TABLE `tbz_users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tbz_usertypes`
--
ALTER TABLE `tbz_usertypes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `tbz_wallet`
--
ALTER TABLE `tbz_wallet`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
