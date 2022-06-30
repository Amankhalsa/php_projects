-- phpMyAdmin SQL Dump
-- version 4.0.10.18
-- https://www.phpmyadmin.net
--
-- Host: localhost:3306
-- Generation Time: Oct 20, 2017 at 05:05 AM
-- Server version: 5.6.36-cll-lve
-- PHP Version: 5.6.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `invoice23`
--

-- --------------------------------------------------------

--
-- Table structure for table `calendar`
--

CREATE TABLE IF NOT EXISTS `calendar` (
  `date` date NOT NULL,
  `data` varchar(255) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`date`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `calendar`
--

INSERT INTO `calendar` (`date`, `data`, `user_id`) VALUES
('2014-04-17', 'school function', 1),
('2014-04-23', 'movie lunch ', 1),
('2014-04-24', 'marriage function', 1),
('2014-05-15', 'jai fooolw uop', 1),
('2014-05-23', 'film function rama naidu stduio , 3 leD VANS REQUIRED', 1),
('2014-05-31', 'HTDYCUGCU', 1),
('2014-08-15', 'flim event', 1),
('2014-08-01', 'flim events', 1),
('2014-08-08', 'cultural events', 1),
('2014-08-21', 'uuuu', 1),
('2014-09-03', 'k', 1),
('2014-09-06', 'Me at go', 1),
('2014-11-14', 'how ar eyou ', 1),
('2014-11-11', 'hello', 1),
('2015-02-28', 'event name tkr coleege ', 1),
('2015-01-01', 'annual day', 1),
('2015-01-08', 'sankranti holidays', 1),
('2015-04-24', 'jhgug', 1),
('2015-06-01', 'tst', 1),
('2015-06-05', 'okok\n', 1),
('2015-06-04', 'testing', 1),
('2015-06-03', 'Test', 1);

-- --------------------------------------------------------

--
-- Table structure for table `company`
--

CREATE TABLE IF NOT EXISTS `company` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(55) NOT NULL,
  `company` varchar(255) NOT NULL,
  `cf1` varchar(255) NOT NULL,
  `cf2` varchar(255) NOT NULL,
  `cf3` varchar(255) NOT NULL,
  `cf4` varchar(255) NOT NULL,
  `cf5` varchar(255) NOT NULL,
  `cf6` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL,
  `city` varchar(55) NOT NULL,
  `state` varchar(55) NOT NULL,
  `postal_code` varchar(8) NOT NULL,
  `country` varchar(55) NOT NULL,
  `phone` varchar(20) NOT NULL,
  `email` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `company`
--

INSERT INTO `company` (`id`, `name`, `company`, `cf1`, `cf2`, `cf3`, `cf4`, `cf5`, `cf6`, `address`, `city`, `state`, `postal_code`, `country`, `phone`, `email`) VALUES
(1, 'tam invoice manager ', 'tam invoice manager ', '', '', '', '', '', '', 'SNS Complex ', 'Bangalore ', 'Karnataka', '560016', 'India', '8886770357', 'admin@admin.com');

-- --------------------------------------------------------

--
-- Table structure for table `customers`
--

CREATE TABLE IF NOT EXISTS `customers` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(55) NOT NULL,
  `company` varchar(255) DEFAULT '-',
  `cf1` varchar(255) DEFAULT '-',
  `cf2` varchar(255) DEFAULT '-',
  `cf3` varchar(255) DEFAULT '-',
  `cf4` varchar(255) DEFAULT '-',
  `cf5` varchar(255) DEFAULT '-',
  `cf6` varchar(255) DEFAULT '-',
  `address` varchar(255) DEFAULT '-',
  `city` varchar(55) DEFAULT '-',
  `state` varchar(55) DEFAULT '-',
  `postal_code` varchar(8) DEFAULT '-',
  `country` varchar(55) DEFAULT '-',
  `phone` varchar(20) NOT NULL,
  `email` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=43 ;

--
-- Dumping data for table `customers`
--

INSERT INTO `customers` (`id`, `name`, `company`, `cf1`, `cf2`, `cf3`, `cf4`, `cf5`, `cf6`, `address`, `city`, `state`, `postal_code`, `country`, `phone`, `email`) VALUES
(4, 'jaya sudha', 'congress', '-', '-', '-', '-', '-', '-', 'nampally', 'hyderbad', 'telangana', '500016', 'India', '99842345346', 'jayasudha@gmail.com'),
(18, 'mohith', 'softnix pvt limited', '-', '-', '-', '-', '-', '-', 'kanpur', 'kanpur', 'uttar pradesh', '500016', 'india', '9666310164', 'mohitdwivedi123@gmail.com'),
(6, 'jagan reddy', 'ysr congress', '-', '-', '-', '-', '-', '-', 'pulivendhula', 'hyderbad', 'telangana', '500016', 'India', '919985922778', 'jagan@gamil.com'),
(17, 'The Park Hyderabad', 'The Park Hyderabad', '-', '-', '-', '-', '-', '-', 'Rajbhavan Road , Somajuguda , Hyderabad 50003', 'Hyderabad', 'Teelangana', '50003', 'India', '040-23456789', 'AnkushMukherjee@parkhotel.com'),
(7, 'kcr ', 'TRS', '-', '-', '-', '-', '-', '-', 'medak', 'hyderbad', 'telangana', '500016', 'India', '919985922778', 'kcr@gmail.com'),
(8, 'test', 'kkjh', 'klk', 'klkjlk', 'uhuhu', 'huhu', '-fa', '-', 'kljkl', 'klkj', 'lkkjlk', '101100', 'kjlk', '8989898989', 'klkk@kjlk.com'),
(9, 'pradeep Gudipati', 'Met corp IT Solutions Pvt Ltd ', '-', '-', '-', '-', '-', '-', 'banjarahills , road no 2', 'hyderabad', 'telangana', '500016', 'India', '9900095766', 'pradeepgudipati@gmail.com'),
(10, ' Venkatesh Subramani', 'Met corp IT Solutions Pvt Ltd', '-', '-', '-', '-', '-', '-', 'banjarahills , road no 2', 'hyderabad', 'telangana', '500016', 'India', '9740300922', 'venkyy17@gmail.com'),
(11, 'shen', '', '-', '-', '-', '-', '-', '-', '', '', '', '', '', '6774456778', 'fyhftyuh@gmail.com'),
(12, 'CRIPTOCODE INFORMATION TECHNOLOGY SOLUTIONS PRIVATE LIM', 'CRIPTOCODE INFORMATION TECHNOLOGY SOLUTIONS PRIVATE LIMITED', '-', '-', '-', '-', '-', '-', 'Criptocode Information Technology Solutions Private Limited H No-19, Guru Vihar, Near Mukti Dham Chowk, Sarkanda,, Bilaspur - 495006, Chhattisgarh, INDIA', 'hyderabad', 'N/A', '500016', 'India', '8109701669', 'dewanganlakhan@gmail.com'),
(13, 'S.Murali', 'Visualmedia Technologies', '-', '-', '-', '-', '-', '-', '107, G.H.Backside, Mathur. Krishnagiri District,', ' Tamilnadu,, India', 'tamilnadu', ' Pin : 6', 'india', '99430-94945', 'murali@visualmediatech.com'),
(14, 'murali selvaraj', 'Visualmedia Technologies', '-', '-', '-', '-', '-', '-', '107, G.H.Backside, Mathur. Krishnagiri District,', 'Tamilnadu,, India', 'tamilnadu', 'Pin : 63', 'India', '+91-99430-94945', 'murali@visualmediatech.com'),
(15, 'Rectino Technologies ', 'Rectino Technologies ', '-', '-', '-', '-', '-', '-', 'chennai ', 'chennai', 'Tamil nadu ', '500016', 'India', '9944426124', 'ismailcs22@gmail.com'),
(16, 'srividhya marshal tapovan', 'sriVagdevieducational society', '-', '-', '-', '-', '-', '-', 'devarakadra , mahaboobnagar dst', 'telangana , india', 'telengana', 'Pin : 50', '', '+91 905257567', 'vagdevieducationalsociety@yahoo.com'),
(19, 'M. Karthick', 'AClick Business Solutions', '-', '-', '-', '-', '-', '-', 'bangalore', 'bangalore', 'karnataka', '500018', 'india', '9095927377', 'karthiarjuna@gmail.com'),
(20, 'The Farm', 'The Farm', '-', '-', '-', '-', '-', '-', 'Jublhills Road no. 36', 'Hyderabad', 'Telangana', '500080', 'India', '7674935077', 'thefarmworldcafe@gmail.com'),
(21, 'Shyam Pratap', 'company', 'P.O. No: AAFTGFRT', 'Vendor code: 123456', '-', '-', '-', '-', '16-2-145/5/1', 'Hyder', 'Choose One...', '500036', 'India', '9908898406', 'shyamprathap@gmail.com'),
(22, 'lokesh naidu', 'Start-up', '-', '-', '-', '-', '-', '-', 'Bangalore', 'Bangalore', 'karnataka', '562114', 'India', '+919686066463', 'lokesh.nttf@gmail.com'),
(23, 'Ritesh dwivedi', 'Ritesh dwivedi', '-', '-', '-', '-', '-', '-', 'kolkata', 'kolkata', 'west bengal', '500016', 'india', '8670072507', 'mr.r.dwivedi@gmail.com'),
(24, 'Lakhotia Institute of Design', 'Lakhotia Institue of Design', '-', '-', '-', '-', '-', '-', '5th Floor, Above Big Bazar, MPM Mall, Abids, Hyderabad ,(Telangana State), India. 500001. Phone: 040-66681108', 'Hyderabad', 'Teelangana', '500080', 'India', '8106900707', 'infostudio45@gmail.com'),
(25, 'Rebel Events', 'Rebel Events', '-', '-', '-', '-', '-', '-', 'Jublihills', 'Hyderabad', 'Telangana', '500080', 'India', '9555438055', 'Nadellakrishna@gmail.com'),
(31, 'Rakesh Babu Degala', 'Plus Media', '-', '-', '-', '-', '-', '-', 'sastra', 'HYDERABAD', 'Andhra Pradesh', '500085', 'India', '07680952442', 'i.chanakyareddy@gmail.com'),
(27, 'Kiss Melody Productions', 'Kiss Melody Productions', '-', '-', '-', '-', '-', '-', 'Hyderabad Gunrock Enclave', 'Hyderabad', 'Telangana', '500080', 'INDIA', '9703330821', 'kmp.saurabh@gmail.com'),
(28, 'WMS Entertainment Pvt. Ltd.', 'WMS Entertainment Pvt. Ltd.', '-', '-', '-', '-', '-', '-', 'F344/1, Tara Bhawan, Nr. Central Bank, Old Mehrauli-Badarpur Road, Lado Sarai, New Delhi - 110030', 'DELHI', 'pUNJAB', '110030', 'INDIA', '09099777213', 'vidur@wmsentertainment.in'),
(29, 'Raghavendra', 'ARM WEB SOLUTIONS', '-', '-', '-', '-', '-', '-', '9-1-1', 'Hyderabad', 'Telangana', '500008', 'India', '9866657259', 'professionalserviceshyd@gmail.com'),
(30, 'Prudhvi Potluri Bits Pilani', 'Bits Pilani Hyderabad Campus', '-', '-', '-', '-', '-', '-', 'Bits Pilani Hyderabad Campus, Jawahar Nager Shameetpet Hyderabad', 'Hyderabad', 'Teelangana', '500090', 'India', '7093458382', 'prudhvipotluri1@gmail.com'),
(32, 'Curry a House Foods Pvt Ltd', 'Komatose Club', '-', '-', '-', '-', '-', '-', ' IT Park Gachibowli, Hyderabad, Telangana 500032 040 4541 6699', 'Hyderabad', 'Teelangana', '500032', 'India', '9833414794', 'raashid.ali@curryhousefoods.com'),
(33, 'osman Farah', 'Sabt', '15', '2', '-', '2', '2', '-', '055858', 'Hyderabad', 'AP', '9500', 'India', '0465849789', 'sab@yahoo.com'),
(34, 'CANVAS Talent Pvt.Ltd.', 'CANVAS Talent Pvt. Ltd', '-', '-', '-', '-', '-', '-', '301, Bhavya Plaza, 1st of 5th road, Khar West Mumbai-400052', 'Mumbai', 'Khar West', '721429', 'India', '99300881107', 'Fproductions.hyd@gmail.com'),
(35, 'Gnext Media Pvt Ltd', 'Gnext Media', '-', '-', '-', '-', '-', '-', '78 Okhla Phase 3,Near Modi Mill', 'New Delhi', 'New Delhi', '110020', 'INDIA', '095-999-284-54', 'Sarikab@ptcnetwork.tv'),
(37, 'Conveynor Cattle Camp', 'veterinary dept', '-', '-', '-', '-', '-', '-', 'zaheerabad', 'zaheerabad', 'telangana', '502220', 'india', '9989997594', 'adahzaheerabad@gmail.com'),
(38, 'Poorna Chandra', 'Poorna ltd', '-', 'Test fields 2', 'Test field 3', '08142305555', '-', '-', '123 Main street', 'Visakhapatnam', 'Andhra Pradesh', '530017', 'India', '5558889999', 'poorna@gmail.com'),
(39, 'Arun', 'Xyz', '-', '-', '-', '-', '-', '-', 'Capetown', 'Noida', 'Uttar pradesh', '201301', 'India', '9856457695', 'Arun@gmail.com'),
(40, 'animesh', 'gyanjula technologies pvt ltd ', '-', '-', '-', '-', '-', '-', '401 , lakshmi nagar center , new delhi ', 'delhi ', 'delhi ', '110092', 'india ', '7017318629', 'gyanjula@gmail.com'),
(41, 'Amit Ramanuj ', 'Webera Solutions ', '-', '-', '-', '-', '-', '-', 'Makrba', 'Ahmedabad', 'Gujarat', '380015', 'India', '9408444444', 'Ramanuj.amit@outlook.com'),
(42, 'Venkatachalapathy', 'ZMass global Infotech, Chennai', '-', '-', '-', '-', '-', '-', 'Vigneswara Nagar, Puzhithivakkam', 'Chennai', 'Tamil Nadu  ', '91', 'India', '9566017121', 'venkybalaiah@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `date_format`
--

CREATE TABLE IF NOT EXISTS `date_format` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `js` varchar(20) NOT NULL,
  `php` varchar(20) NOT NULL,
  `sql` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=7 ;

--
-- Dumping data for table `date_format`
--

INSERT INTO `date_format` (`id`, `js`, `php`, `sql`) VALUES
(1, 'mm-dd-yy', 'm-d-Y', '%m-%d-%Y'),
(2, 'mm/dd/yy', 'm/d/Y', '%m/%d/%Y'),
(3, 'mm.dd.yy', 'm.d.Y', '%m.%d.%Y'),
(4, 'dd-mm-yy', 'd-m-Y', '%d-%m-%Y'),
(5, 'dd/mm/yy', 'd/m/Y', '%d/%m/%Y'),
(6, 'dd.mm.yy', 'd.m.Y', '%d.%m.%Y');

-- --------------------------------------------------------

--
-- Table structure for table `groups`
--

CREATE TABLE IF NOT EXISTS `groups` (
  `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(20) NOT NULL,
  `description` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `groups`
--

INSERT INTO `groups` (`id`, `name`, `description`) VALUES
(1, 'admin', 'Administrator'),
(2, 'sales', 'Sales Staff'),
(3, 'viewer', 'View Only User');

-- --------------------------------------------------------

--
-- Table structure for table `login_attempts`
--

CREATE TABLE IF NOT EXISTS `login_attempts` (
  `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `ip_address` varbinary(16) NOT NULL,
  `login` varchar(100) NOT NULL,
  `time` int(11) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=313 ;

-- --------------------------------------------------------

--
-- Table structure for table `payment`
--

CREATE TABLE IF NOT EXISTS `payment` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `invoice_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `date` date NOT NULL,
  `note` varchar(1000) DEFAULT NULL,
  `amount` decimal(25,2) NOT NULL,
  `user` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=60 ;

--
-- Dumping data for table `payment`
--

INSERT INTO `payment` (`id`, `invoice_id`, `customer_id`, `date`, `note`, `amount`, `user`) VALUES
(1, 2, 4, '2014-04-23', 'Paid upon invoice', '67646.23', 'Admin'),
(2, 6, 7, '2014-04-23', 'Paid upon invoice', '18121.05', 'Admin'),
(3, 7, 4, '2014-04-24', 'Paid upon invoice', '1726728165.00', 'Admin'),
(4, 1, 2, '2014-07-09', NULL, '500.00', 'Admin'),
(5, 8, 6, '2014-08-21', 'Paid upon invoice', '300000.00', 'Admin'),
(6, 5, 6, '2014-11-05', NULL, '98395.00', 'Admin'),
(7, 9, 6, '2014-11-19', 'Paid upon invoice', '123000.00', 'Admin'),
(8, 10, 5, '2014-11-20', 'Paid upon invoice', '5000.00', 'Admin'),
(9, 11, 8, '2014-11-21', 'Paid upon invoice', '110.70', 'Admin'),
(10, 18, 3, '2015-02-24', 'Paid upon invoice', '12300.00', 'Admin'),
(11, 19, 15, '2015-04-15', 'Paid upon invoice', '16997.00', 'Admin'),
(12, 21, 4, '2015-06-22', 'Paid upon invoice', '1000.00', 'Admin'),
(13, 22, 4, '2015-06-22', 'Paid upon invoice', '2460.00', 'Admin'),
(14, 26, 6, '2015-06-24', 'Paid upon invoice', '615.00', 'Admin'),
(15, 34, 18, '2015-07-27', 'Paid upon invoice', '4.00', 'Admin'),
(16, 35, 4, '2015-08-03', 'Paid upon invoice', '2525.00', 'Admin'),
(17, 36, 17, '2015-08-07', 'checque - ', '3000.00', 'Admin'),
(18, 37, 19, '2015-08-07', 'Paid upon invoice', '5000.00', 'Admin'),
(19, 38, 20, '2015-08-12', NULL, '14000.00', 'Admin'),
(20, 41, 21, '2015-08-14', 'paid on 8th', '1000.00', 'Admin'),
(21, 41, 21, '2015-08-14', NULL, '1700.00', 'Admin'),
(22, 38, 20, '2015-08-15', 'Paid as Advance', '14000.00', 'Admin'),
(23, 42, 20, '2015-08-15', NULL, '14000.00', 'Admin'),
(24, 44, 18, '2015-08-21', 'Paid upon invoice', '49995.00', 'Admin'),
(25, 45, 22, '2015-08-21', NULL, '2000.00', 'Admin'),
(26, 45, 22, '2015-08-21', NULL, '1990.00', 'Admin'),
(27, 46, 4, '2015-08-21', 'Paid upon invoice', '998.00', 'Admin'),
(28, 50, 23, '2015-08-27', NULL, '2500.00', 'Admin'),
(29, 42, 20, '2015-09-16', 'Advance', '12000.00', 'Admin'),
(30, 42, 20, '2015-09-16', 'Advance', '30000.00', 'Admin'),
(31, 42, 20, '2015-09-16', 'Boom Baba Air tickets', '10000.00', 'Admin'),
(32, 42, 20, '2015-09-16', 'The Farm Bills', '20000.00', 'Admin'),
(33, 54, 24, '2015-09-17', 'Paid upon invoice', '25000.00', 'Admin'),
(34, 57, 25, '2015-09-28', 'Promo Video ', '20000.00', 'Admin'),
(35, 57, 25, '2015-09-28', 'Deezeto photography', '10000.00', 'Admin'),
(36, 59, 27, '2015-10-24', NULL, '100000.00', 'Admin'),
(37, 59, 27, '2015-10-25', NULL, '108500.00', 'Admin'),
(38, 59, 27, '2015-10-25', 'Sponsorship Amount from Gold Gym and Evolve', '50000.00', 'Admin'),
(39, 60, 24, '2015-10-28', NULL, '75000.00', 'Admin'),
(40, 63, 27, '2015-11-18', NULL, '410000.00', 'Admin'),
(41, 67, 17, '2015-11-19', NULL, '25000.00', 'Admin'),
(42, 68, 20, '2015-11-19', NULL, '25000.00', 'Admin'),
(43, 69, 17, '2015-11-20', NULL, '2000.00', 'Admin'),
(44, 70, 29, '2015-11-20', NULL, '2645.00', 'Admin'),
(45, 72, 26, '2015-11-20', NULL, '135000.00', 'Admin'),
(46, 79, 4, '2016-01-13', 'Paid upon invoice', '11400.00', 'Admin'),
(47, 85, 37, '2016-04-28', 'Paid upon invoice', '4200.00', 'Admin'),
(48, 83, 35, '2016-07-03', NULL, '35000.00', 'Admin'),
(49, 86, 4, '2016-07-04', 'Paid upon invoice', '5703.60', 'Admin'),
(50, 87, 4, '2016-07-09', 'Paid upon invoice', '2367.50', 'Admin'),
(51, 89, 4, '2017-07-23', 'Paid upon invoice', '1100.00', 'Admin'),
(52, 90, 39, '2017-07-23', 'Paid upon invoice', '5123.00', 'Admin'),
(53, 91, 6, '2017-07-24', 'Paid upon invoice', '4750.00', 'Admin'),
(54, 93, 4, '2017-07-29', 'Paid upon invoice', '4400.00', 'Admin'),
(55, 94, 18, '2017-07-29', 'Paid upon invoice', '4400.00', 'Admin'),
(56, 95, 4, '2017-08-09', 'Paid upon invoice', '13245.00', 'Admin'),
(57, 97, 40, '2017-08-15', 'Paid upon invoice', '3000.00', 'Admin'),
(58, 96, 4, '2017-08-24', NULL, '28300.00', 'Admin'),
(59, 98, 41, '2017-09-06', 'Paid upon invoice', '30000.00', 'Admin');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE IF NOT EXISTS `products` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `price` decimal(25,2) NOT NULL,
  `tax_rate` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=20 ;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `name`, `price`, `tax_rate`) VALUES
(1, 'LED VAN  ( AP 01 4576) ', '30000.00', 2),
(2, 'osram', '25000.00', 1),
(3, 'LED VAN  ( AP 01 5434) ', '30000.00', 3),
(4, 'LED VAN  ( AP 01 4576) ', '30000.00', 2),
(5, 'hms ', '7.00', 1),
(6, 'asdas', '0.00', 1),
(7, 'Blade', '1500.00', 2),
(8, 'bolt', '50.00', 2),
(9, 'ambulance charges', '2000.00', 2),
(10, 'Ibizfone ', '3000.00', 9),
(12, 'aaaaaa', '233.00', 2),
(13, 'Sandhi sudha', '2950.00', 1),
(14, 'waykarttech', '2345.00', 2),
(16, 'TTTT', '500.00', 1),
(17, 'White Caps', '70.00', 1),
(18, 'shoose', '3000.00', 9),
(19, 'user product ', '100.00', 10);

-- --------------------------------------------------------

--
-- Table structure for table `quotes`
--

CREATE TABLE IF NOT EXISTS `quotes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `reference_no` varchar(55) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `customer_name` varchar(55) NOT NULL,
  `date` date NOT NULL,
  `user` varchar(255) DEFAULT NULL,
  `note` varchar(1000) DEFAULT NULL,
  `inv_total` decimal(25,2) NOT NULL,
  `total_tax` decimal(25,2) NOT NULL,
  `total` decimal(25,2) NOT NULL,
  `user_id` int(11) NOT NULL,
  `shipping` decimal(25,2) DEFAULT '0.00',
  `discount` varchar(20) DEFAULT '0',
  `total_discount` decimal(25,2) DEFAULT '0.00',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=16 ;

--
-- Dumping data for table `quotes`
--

INSERT INTO `quotes` (`id`, `reference_no`, `customer_id`, `customer_name`, `date`, `user`, `note`, `inv_total`, `total_tax`, `total`, `user_id`, `shipping`, `discount`, `total_discount`) VALUES
(1, '123111', 4, 'jaya sudha', '2014-04-23', 'Admin', '', '55001.00', '12650.23', '67646.23', 1, '0.00', '5', '5.00'),
(2, '123114', 5, 'vishu vardhan reddy ', '2014-04-23', 'Admin', '', '115000.00', '26450.00', '141445.00', 1, '0.00', '5', '5.00'),
(3, '123115', 6, 'jagan reddy', '2014-04-23', 'Admin', '', '115000.00', '26450.00', '141445.00', 1, '0.00', '5', '5.00'),
(4, '565775', 6, 'jagan reddy', '2014-04-23', 'Admin', '', '30000.00', '6900.00', '36895.00', 1, '0.00', '5', '5.00'),
(5, '333', 4, 'jaya sudha', '2014-05-03', 'Admin', '', '80.00', '0.00', '80.00', 1, '0.00', '0', '0.00'),
(6, '0012', 6, 'jagan reddy', '2014-05-26', 'Admin', '', '750000.00', '0.00', '750000.00', 1, '0.00', '0', '0.00'),
(8, '43545', 3, 'vijaya reddy ', '2015-02-24', 'Admin', '', '30000.00', '6900.00', '36900.00', 1, '0.00', '0', '0.00'),
(9, '12', 17, 'The Park Hyderabad', '2015-08-07', 'Admin', '', '165000.00', '8250.00', '173247.00', 1, '3.00', '3', '3.00'),
(10, '0123', 24, 'Lakhotia Institute of Design', '2015-09-01', 'Admin', '', '441000.00', '0.00', '441000.00', 1, '0.00', '0', '0.00'),
(11, '012', 28, 'WMS Entertainment Pvt. Ltd.', '2015-11-18', 'Admin', '', '220600.00', '0.00', '220600.00', 1, '0.00', '0', '0.00'),
(12, '0012', 29, 'Raghavendra', '2015-11-19', 'Admin', '', '2650.00', '0.00', '2645.00', 1, '0.00', '5', '5.00'),
(13, '011111', 17, 'The Park Hyderabad', '2015-11-23', 'Admin', '', '90000.00', '10472.00', '100472.00', 1, '0.00', '0', '0.00'),
(14, '12', 4, 'jaya sudha', '2017-09-12', 'Admin', '', '100.00', '10.00', '110.00', 1, '0.00', '0', '0.00');

-- --------------------------------------------------------

--
-- Table structure for table `quote_items`
--

CREATE TABLE IF NOT EXISTS `quote_items` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `quote_id` int(11) NOT NULL,
  `product_name` varchar(255) NOT NULL,
  `tax_rate_id` int(11) NOT NULL,
  `tax` varchar(55) NOT NULL,
  `quantity` int(11) NOT NULL,
  `unit_price` decimal(25,2) NOT NULL,
  `gross_total` decimal(25,2) NOT NULL,
  `val_tax` decimal(25,2) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=196 ;

--
-- Dumping data for table `quote_items`
--

INSERT INTO `quote_items` (`id`, `quote_id`, `product_name`, `tax_rate_id`, `tax`, `quantity`, `unit_price`, `gross_total`, `val_tax`) VALUES
(1, 1, 'LED VAN  ( AP 01 4576) ', 2, '23.00%', 1, '30000.00', '30000.00', '6900.00'),
(2, 1, 'LED VAN  ( AP 23 5668) ', 2, '23.00%', 1, '25000.00', '25000.00', '5750.00'),
(3, 1, 'BANNER DESIGN & FITTING CHARGES ', 2, '23.00%', 1, '1.00', '1.00', '0.23'),
(4, 2, 'LED VAN  ( AP 01 4576) ', 2, '23.00%', 1, '30000.00', '30000.00', '6900.00'),
(5, 2, 'LED VAN  ( AP 23 5668) ', 2, '23.00%', 1, '25000.00', '25000.00', '5750.00'),
(6, 2, 'LED VAN  ( AP 01 5434) ', 2, '23.00%', 1, '30000.00', '30000.00', '6900.00'),
(7, 2, 'LED VAN  ( AP 01 4576) ', 2, '23.00%', 1, '30000.00', '30000.00', '6900.00'),
(8, 3, 'LED VAN  ( AP 01 4576) ', 2, '23.00%', 1, '30000.00', '30000.00', '6900.00'),
(9, 3, 'LED VAN  ( AP 23 5668) ', 2, '23.00%', 1, '25000.00', '25000.00', '5750.00'),
(10, 3, 'LED VAN  ( AP 01 5434) ', 2, '23.00%', 1, '30000.00', '30000.00', '6900.00'),
(11, 3, 'LED VAN  ( AP 01 4576) ', 2, '23.00%', 1, '30000.00', '30000.00', '6900.00'),
(12, 4, 'LED VAN  ( AP 01 4576) ', 2, '23.00%', 1, '30000.00', '30000.00', '6900.00'),
(13, 5, '1 bhk flat ', 1, '0.00', 1, '80.00', '80.00', '0.00'),
(14, 6, 'osram', 1, '0.00', 30, '25000.00', '750000.00', '0.00'),
(16, 8, 'LED VAN  ( AP 01 4576) ', 2, '23.00%', 1, '30000.00', '30000.00', '6900.00'),
(17, 9, 't4tty', 4, '5.00%', 33, '5000.00', '165000.00', '8250.00'),
(181, 11, 'Led 12x12', 2, '0.00%', 1, '28800.00', '28800.00', '0.00'),
(108, 10, 'Professional Photography / After Movie for Portfolio ', 2, '0.00%', 1, '50000.00', '50000.00', '0.00'),
(107, 10, 'F Productions management fee for Curating the Show', 2, '0.00%', 1, '50000.00', '50000.00', '0.00'),
(106, 10, 'VJ', 2, '0.00%', 1, '10000.00', '10000.00', '0.00'),
(104, 10, 'Dj ', 2, '0.00%', 1, '5000.00', '5000.00', '0.00'),
(105, 10, 'Fnb Manager', 2, '0.00%', 1, '5000.00', '5000.00', '0.00'),
(103, 10, 'Designing of Backdrop, Vip Invites, Write ups, Social Networking Posters ', 2, '0.00%', 1, '15000.00', '15000.00', '0.00'),
(100, 10, 'Production- Stage, Sound, Lights, Ramp, Backdrop', 2, '0.00%', 1, '180000.00', '180000.00', '0.00'),
(101, 10, 'Media ', 2, '0.00%', 1, '30000.00', '30000.00', '0.00'),
(102, 10, 'Promo Video ', 2, '0.00%', 1, '15000.00', '15000.00', '0.00'),
(99, 10, 'Model', 2, '0.00%', 1, '20000.00', '20000.00', '0.00'),
(98, 10, 'Models ', 2, '0.00%', 3, '7000.00', '21000.00', '0.00'),
(97, 10, 'Actress /Models ', 2, '0.00%', 4, '10000.00', '40000.00', '0.00'),
(180, 11, ' led', 2, '0.00%', 10, '350.00', '3500.00', '0.00'),
(179, 11, ' Sharpees IMAX', 2, '0.00%', 6, '2500.00', '15000.00', '0.00'),
(178, 11, 'Goal Post Truss', 2, '0.00%', 1, '15000.00', '15000.00', '0.00'),
(176, 11, 'Led- 16x12', 2, '0.00%', 1, '38400.00', '38400.00', '0.00'),
(177, 11, 'Led 8x4', 2, '0.00%', 1, '6400.00', '6400.00', '0.00'),
(173, 11, ' Tvs having USB port with stand(42 inches)-', 2, '0.00%', 3, '2500.00', '7500.00', '0.00'),
(175, 11, 'CO2 confetti with cylinder with Red color papers-', 2, '0.00%', 1, '11000.00', '11000.00', '0.00'),
(174, 11, ' CO2 jets with cylinder- 20,000', 2, '0.00%', 2, '10000.00', '20000.00', '0.00'),
(182, 11, 'Dj Kan-i', 2, '0.00%', 1, '40000.00', '40000.00', '0.00'),
(183, 11, 'Siddieboy', 2, '0.00%', 1, '15000.00', '15000.00', '0.00'),
(184, 11, 'F Productions/ Programming and Promotion Charges', 2, '0.00%', 1, '20000.00', '20000.00', '0.00'),
(185, 12, 'Sandhi sudha', 1, '0.00', 1, '2650.00', '2650.00', '0.00'),
(193, 13, 'November 28th- V Soicety', 3, '12.36%', 1, '20000.00', '20000.00', '2472.00'),
(192, 13, 'Novmebr 21st- Nucleya', 6, '12.00%', 1, '30000.00', '30000.00', '3600.00'),
(191, 13, 'November 14th- Slick Showcase', 6, '12.00%', 1, '20000.00', '20000.00', '2400.00'),
(190, 13, 'November 7th - Abhsiehk', 9, '10.00%', 1, '20000.00', '20000.00', '2000.00'),
(194, 14, 'ss', 9, '10.00%', 1, '100.00', '100.00', '10.00');

-- --------------------------------------------------------

--
-- Table structure for table `sales`
--

CREATE TABLE IF NOT EXISTS `sales` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `reference_no` varchar(55) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `customer_name` varchar(55) NOT NULL,
  `date` date NOT NULL,
  `user` varchar(255) DEFAULT NULL,
  `note` varchar(1000) DEFAULT NULL,
  `inv_total` decimal(25,2) NOT NULL,
  `total_tax` decimal(25,2) NOT NULL,
  `total` decimal(25,2) NOT NULL,
  `status` varchar(50) NOT NULL DEFAULT 'paid',
  `user_id` int(11) NOT NULL,
  `shipping` decimal(25,2) DEFAULT '0.00',
  `discount` varchar(20) DEFAULT '0',
  `total_discount` decimal(25,2) DEFAULT '0.00',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=103 ;

--
-- Dumping data for table `sales`
--

INSERT INTO `sales` (`id`, `reference_no`, `customer_id`, `customer_name`, `date`, `user`, `note`, `inv_total`, `total_tax`, `total`, `status`, `user_id`, `shipping`, `discount`, `total_discount`) VALUES
(39, 'o1234', 17, 'The Park Hyderabad', '2015-08-12', 'Admin', '', '32700.00', '0.00', '32700.00', 'Pending', 1, '0.00', '0', '0.00'),
(31, '35', 17, 'The Park Hyderabad', '2015-07-17', 'Admin', '', '5000.00', '0.00', '5000.00', 'Paid', 1, '0.00', '0', '0.00'),
(51, '0998', 20, 'The Farm', '2015-09-16', 'Admin', '', '60000.00', '0.00', '60000.00', 'Pending', 1, '0.00', '0', '0.00'),
(52, '0111', 17, 'The Park Hyderabad', '2015-09-16', 'Admin', '', '80000.00', '0.00', '80000.00', 'Pending', 1, '0.00', '0', '0.00'),
(53, '0111', 17, 'The Park Hyderabad', '2015-09-16', 'Admin', '', '39000.00', '0.00', '39000.00', 'Pending', 1, '0.00', '0', '0.00'),
(28, '012', 17, 'The Park Hyderabad', '2015-07-02', 'Admin', '', '50000.00', '0.00', '50000.00', 'Paid', 1, '0.00', '0', '0.00'),
(29, '013', 17, 'The Park Hyderabad', '2015-07-03', 'Admin', '', '41367.00', '0.00', '41367.00', 'Pending', 1, '0.00', '0', '0.00'),
(27, '011', 17, 'The Park Hyderabad', '2015-07-02', 'Admin', '', '60000.00', '0.00', '60000.00', 'Paid', 1, '0.00', '0%', '0.00'),
(40, '012345', 17, 'The Park Hyderabad', '2015-08-12', 'Admin', '', '80000.00', '0.00', '80000.00', 'Paid', 1, '0.00', '0', '0.00'),
(42, '00001', 20, 'The Farm', '2015-08-15', 'Admin', '', '129500.00', '0.00', '129500.00', 'Partially Paid', 1, '0.00', '0', '0.00'),
(47, '0122', 17, 'The Park Hyderabad', '2015-08-24', 'Admin', '', '57000.00', '0.00', '57000.00', 'Paid', 1, '0.00', '0', '0.00'),
(54, '01234', 24, 'Lakhotia Institute of Design', '2015-09-17', 'Admin', '', '25000.00', '0.00', '25000.00', 'Paid', 1, '0.00', '0', '0.00'),
(55, '1', 24, 'Lakhotia Institute of Design', '2015-09-27', 'Admin', '', '40000.00', '0.00', '40000.00', 'Pending', 1, '0.00', '0', '0.00'),
(56, '0211', 17, 'The Park Hyderabad', '2015-09-27', 'Admin', '', '90000.00', '0.00', '90000.00', 'Pending', 1, '0.00', '0', '0.00'),
(57, '0111', 25, 'Rebel Events', '2015-09-27', 'Admin', '', '58000.00', '0.00', '58000.00', 'Partially Paid', 1, '0.00', '0', '0.00'),
(60, '0123', 24, 'Lakhotia Institute of Design', '2015-10-28', 'Admin', '', '281000.00', '0.00', '281000.00', 'Pending', 1, '0.00', '0', '0.00'),
(59, '01111', 27, 'Kiss Melody Productions', '2015-10-24', 'Admin', '', '306500.00', '0.00', '306500.00', 'Partially Paid', 1, '0.00', '0', '0.00'),
(65, '098', 17, 'The Park Hyderabad', '2015-11-18', 'Admin', '', '27000.00', '0.00', '27000.00', 'Pending', 1, '0.00', '0', '0.00'),
(66, '0987', 17, 'The Park Hyderabad', '2015-11-18', 'Admin', '', '110000.00', '0.00', '110000.00', 'Pending', 1, '0.00', '0', '0.00'),
(63, '011111', 27, 'Kiss Melody Productions', '2015-11-18', 'Admin', '', '518000.00', '0.00', '518000.00', 'Partially Paid', 1, '0.00', '0', '0.00'),
(64, '012', 28, 'WMS Entertainment Pvt. Ltd.', '2015-11-18', 'Admin', '', '218100.00', '0.00', '218100.00', 'Pending', 1, '0.00', '0', '0.00'),
(73, '011111', 17, 'The Park Hyderabad', '2015-11-23', 'Admin', '', '90000.00', '0.00', '90000.00', 'Pending', 1, '0.00', '0', '0.00'),
(68, '098777', 20, 'The Farm', '2015-11-19', 'Admin', '', '135500.00', '0.00', '135500.00', 'Partially Paid', 1, '0.00', '000', '0.00'),
(74, 'OLASUITE', 31, 'Rakesh Babu Degala', '2015-12-01', 'Admin', '', '1500.00', '0.00', '1500.00', 'Pending', 1, '0.00', '0', '0.00'),
(70, '0012', 29, 'Raghavendra', '2015-11-19', 'Admin', '', '2650.00', '0.00', '2645.00', 'Paid', 1, '0.00', '5', '5.00'),
(71, '012333', 17, 'The Park Hyderabad', '2015-11-20', 'Admin', '', '40000.00', '0.00', '40000.00', 'Pending', 1, '0.00', '0', '0.00'),
(72, '0000', 30, 'Prudhvi Potluri Bits Pilani', '2015-11-20', 'Admin', '', '200000.00', '0.00', '200000.00', 'Pending', 1, '0.00', '0', '0.00'),
(75, '0111', 32, 'Curry a House Foods Pvt Ltd', '2015-12-02', 'Admin', '', '100000.00', '0.00', '100000.00', 'Pending', 1, '0.00', '0', '0.00'),
(76, '00000', 17, 'The Park Hyderabad', '2015-12-08', 'Admin', '', '15000.00', '0.00', '15000.00', 'Pending', 1, '0.00', '0', '0.00'),
(77, '001', 17, 'The Park Hyderabad', '2016-01-12', 'Admin', '', '80000.00', '0.00', '80000.00', 'Pending', 1, '0.00', '0', '0.00'),
(78, '002', 17, 'The Park Hyderabad', '2016-01-12', 'Admin', '', '6000.00', '0.00', '6000.00', 'Pending', 1, '0.00', '0', '0.00'),
(79, '12322332312312', 4, 'jaya sudha', '2016-01-13', 'Admin', 'dfsadsfasdsadasdasda', '12000.00', '0.00', '11400.00', 'Cancelled', 1, '0.00', '5%', '600.00'),
(80, '0001', 30, 'Prudhvi Potluri Bits Pilani', '2016-01-28', 'Admin', '', '34568.00', '0.00', '34568.00', 'Paid', 1, '0.00', '0', '0.00'),
(81, '001', 17, 'The Park Hyderabad', '2016-02-01', 'Admin', '', '100000.00', '0.00', '100000.00', 'Pending', 1, '0.00', '0', '0.00'),
(82, '01121', 34, 'CANVAS Talent Pvt.Ltd.', '2016-03-21', 'Admin', '', '50000.00', '0.00', '50000.00', 'Pending', 1, '0.00', '0', '0.00'),
(83, '0123', 35, 'Gnext Media Pvt Ltd', '2016-04-13', 'Admin', '', '346600.00', '0.00', '346600.00', 'Partially Paid', 1, '0.00', '0', '0.00'),
(85, 'GIS001254', 37, 'Conveynor Cattle Camp', '2016-04-28', 'Admin', '', '4200.00', '0.00', '4200.00', 'Paid', 1, '0.00', '0', '0.00'),
(86, 'Test 1', 4, 'jaya sudha', '2016-07-04', 'Admin', 'test invocie', '5000.00', '703.60', '5703.60', 'Paid', 1, '0.00', '0', '0.00'),
(87, '34', 4, 'jaya sudha', '2016-07-09', 'Admin', '', '350.00', '17.50', '367.50', 'Paid', 1, '2000.00', '0', '0.00'),
(88, '347', 4, 'jaya sudha', '2017-07-17', 'Admin', '', '4240.00', '614.80', '4369.30', 'Paid', 1, '0.00', '10%', '485.50'),
(89, '53333', 4, 'jaya sudha', '2017-07-23', 'Admin', '', '1000.00', '100.00', '1100.00', 'Paid', 1, '0.00', '0', '0.00'),
(90, '087', 39, 'Arun', '2017-07-23', 'Admin', '', '5000.00', '0.00', '5000.00', 'Paid', 1, '123.00', '0', '0.00'),
(91, '123', 6, 'jagan reddy', '2017-07-24', 'Admin', '', '5000.00', '0.00', '4750.00', 'Paid', 1, '0.00', '5%', '250.00'),
(92, '1234', 18, 'mohith', '2017-07-24', 'Admin', '', '150000.00', '15000.00', '165000.00', 'Paid', 1, '0.00', '0', '0.00'),
(93, '3442', 4, 'jaya sudha', '2017-07-29', 'Admin', '', '4000.00', '400.00', '4400.00', 'Paid', 1, '0.00', '0', '0.00'),
(94, '455', 18, 'mohith', '2017-07-29', 'Admin', '', '4000.00', '400.00', '4400.00', 'Paid', 1, '0.00', '0', '0.00'),
(95, '554654', 4, 'jaya sudha', '2017-08-09', 'Admin', 'ghjgh', '13225.00', '30.00', '13245.00', 'Paid', 1, '0.00', '10', '10.00'),
(96, '1', 4, 'jaya sudha', '2017-08-11', 'Admin', '', '26800.00', '1500.00', '28300.00', 'Paid', 1, '0.00', '0', '0.00'),
(97, '234694', 40, 'animesh', '2017-08-15', 'Admin', '', '3000.00', '0.00', '3000.00', 'Paid', 1, '0.00', '0', '0.00'),
(102, '10250', 28, 'WMS Entertainment Pvt. Ltd.', '2017-10-12', 'Admin', 'one time charges', '15000.00', '2700.00', '17700.00', 'Pending', 1, '0.00', '0', '0.00');

-- --------------------------------------------------------

--
-- Table structure for table `sale_items`
--

CREATE TABLE IF NOT EXISTS `sale_items` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `sale_id` int(11) NOT NULL,
  `product_name` varchar(255) NOT NULL,
  `tax_rate_id` int(11) NOT NULL,
  `tax` varchar(55) NOT NULL,
  `quantity` int(11) NOT NULL,
  `unit_price` decimal(25,2) NOT NULL,
  `gross_total` decimal(25,2) NOT NULL,
  `val_tax` decimal(25,2) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=759 ;

--
-- Dumping data for table `sale_items`
--

INSERT INTO `sale_items` (`id`, `sale_id`, `product_name`, `tax_rate_id`, `tax`, `quantity`, `unit_price`, `gross_total`, `val_tax`) VALUES
(339, 42, 'Kohra- 1 room', 2, '0.00%', 1, '4500.00', '4500.00', '0.00'),
(340, 42, 'Goa Gil Pre Party', 2, '0.00%', 1, '12000.00', '12000.00', '0.00'),
(376, 28, 'Ayesha at Kismet', 2, '0.00%', 1, '3000.00', '3000.00', '0.00'),
(375, 28, 'kerano At Kismet', 2, '0.00%', 1, '3000.00', '3000.00', '0.00'),
(427, 31, 'Nyk Flight Tickets', 2, '0.00%', 1, '5000.00', '5000.00', '0.00'),
(420, 56, 'Sound Simplify', 2, '0.00%', 1, '30000.00', '30000.00', '0.00'),
(374, 28, 'Kolor Vu At Aqua', 2, '0.00%', 1, '3000.00', '3000.00', '0.00'),
(382, 27, 'Neyha Toolani', 2, '0.00%', 1, '20000.00', '20000.00', '0.00'),
(373, 28, 'Dj Rahul at Kismet', 2, '0.00%', 1, '3000.00', '3000.00', '0.00'),
(372, 28, 'Murthovic Live Set', 2, '0.00%', 1, '3000.00', '3000.00', '0.00'),
(371, 28, 'Caroline Banx', 2, '0.00%', 1, '3000.00', '3000.00', '0.00'),
(381, 27, 'Priya Sen + Aghori Tantrik', 2, '0.00%', 1, '10000.00', '10000.00', '0.00'),
(380, 27, 'Sound Simplify', 2, '0.00%', 1, '20000.00', '20000.00', '0.00'),
(370, 28, 'Kalekarma', 2, '0.00%', 1, '3000.00', '3000.00', '0.00'),
(369, 28, 'Neyha Tolani', 2, '0.00%', 1, '3000.00', '3000.00', '0.00'),
(93, 29, 'Kismet Programming Charges for complete Month', 2, '0.00%', 1, '41367.00', '41367.00', '0.00'),
(368, 28, 'Thermal Project', 2, '0.00%', 1, '3000.00', '3000.00', '0.00'),
(367, 28, 'Priya Sen + Aghori Tantrik', 2, '0.00%', 1, '3000.00', '3000.00', '0.00'),
(366, 28, 'Dj Rahul for Kismet', 2, '0.00%', 1, '3000.00', '3000.00', '0.00'),
(365, 28, 'Sound Simplify Promo Video', 2, '0.00%', 1, '5000.00', '5000.00', '0.00'),
(364, 28, 'Sound Simplify Flyer', 2, '0.00%', 1, '3000.00', '3000.00', '0.00'),
(363, 40, 'Clive Vaz Live', 2, '0.00%', 1, '20000.00', '20000.00', '0.00'),
(419, 56, 'Matt Darey', 2, '0.00%', 1, '20000.00', '20000.00', '0.00'),
(685, 74, 'OlaFunny', 1, '0.00', 1, '300.00', '300.00', '0.00'),
(355, 47, 'Carbon Freedom Blast Promo Party', 2, '0.00%', 1, '57000.00', '57000.00', '0.00'),
(666, 51, 'Neuromotor', 2, '0.00%', 1, '12000.00', '12000.00', '0.00'),
(682, 73, 'November 28th- V Soicety', 2, '0.00%', 1, '20000.00', '20000.00', '0.00'),
(665, 51, 'Miguel Bastida', 2, '0.00%', 1, '12000.00', '12000.00', '0.00'),
(664, 51, 'Blot / Reset Pre Party', 2, '0.00%', 1, '12000.00', '12000.00', '0.00'),
(663, 51, 'Big City Harmonics', 2, '0.00%', 1, '12000.00', '12000.00', '0.00'),
(662, 51, 'Ruiz Sierra', 2, '0.00%', 1, '12000.00', '12000.00', '0.00'),
(335, 42, 'Audio Units', 2, '0.00%', 1, '12000.00', '12000.00', '0.00'),
(336, 42, '5 Art works', 2, '0.00%', 1, '10000.00', '10000.00', '0.00'),
(337, 42, '4 Rooms- Ramiro Lopez + Blot', 2, '0.00%', 1, '17500.00', '17500.00', '0.00'),
(338, 42, 'Me & Her- 3 rooms', 2, '0.00%', 1, '13500.00', '13500.00', '0.00'),
(165, 39, 'Kismet Programming ', 2, '0.00%', 1, '32700.00', '32700.00', '0.00'),
(360, 40, 'Murthovic Live Set ', 2, '0.00%', 1, '20000.00', '20000.00', '0.00'),
(361, 40, 'Kolor Vu Live ', 2, '0.00%', 1, '20000.00', '20000.00', '0.00'),
(334, 42, 'Kohra', 2, '0.00%', 1, '12000.00', '12000.00', '0.00'),
(333, 42, 'Me & Her ', 2, '0.00%', 1, '12000.00', '12000.00', '0.00'),
(332, 42, 'Ramiro Lopez', 2, '0.00%', 1, '12000.00', '12000.00', '0.00'),
(331, 42, 'Blot b2b Murthovic ', 2, '0.00%', 1, '12000.00', '12000.00', '0.00'),
(330, 42, 'Vinayaka Live Set', 2, '0.00%', 1, '12000.00', '12000.00', '0.00'),
(362, 40, 'Nitin Mahajan', 2, '0.00%', 1, '20000.00', '20000.00', '0.00'),
(377, 28, 'Nitin Mahajan at Aqua', 2, '0.00%', 1, '3000.00', '3000.00', '0.00'),
(378, 28, 'Clive Vaz at Aqua', 2, '0.00%', 1, '3000.00', '3000.00', '0.00'),
(379, 28, 'Rahul at Kismet', 2, '0.00%', 1, '3000.00', '3000.00', '0.00'),
(383, 27, 'Caroline Banx', 2, '0.00%', 1, '10000.00', '10000.00', '0.00'),
(443, 52, 'Live Acts', 2, '0.00%', 1, '20000.00', '20000.00', '0.00'),
(442, 52, 'TechnoMads', 2, '0.00%', 1, '20000.00', '20000.00', '0.00'),
(440, 52, 'The Local Scene', 2, '0.00%', 1, '20000.00', '20000.00', '0.00'),
(441, 52, 'Vachan Chinapa', 2, '0.00%', 1, '20000.00', '20000.00', '0.00'),
(700, 53, 'Ivan', 2, '0.00%', 1, '3000.00', '3000.00', '0.00'),
(699, 53, 'Sound Simplify Promo Video', 2, '0.00%', 1, '5000.00', '5000.00', '0.00'),
(698, 53, 'Sound Simplify Flyer', 2, '0.00%', 1, '5000.00', '5000.00', '0.00'),
(697, 53, 'Matt Darey', 2, '0.00%', 1, '3000.00', '3000.00', '0.00'),
(695, 53, 'TechnoMads', 2, '0.00%', 1, '3000.00', '3000.00', '0.00'),
(696, 53, 'Siana Cathrine', 2, '0.00%', 1, '3000.00', '3000.00', '0.00'),
(694, 53, 'Abhishek Srivastav', 2, '0.00%', 1, '3000.00', '3000.00', '0.00'),
(693, 53, 'FlipSyd', 2, '0.00%', 1, '3000.00', '3000.00', '0.00'),
(692, 53, 'Vachan Chinapa', 2, '0.00%', 1, '3000.00', '3000.00', '0.00'),
(410, 54, 'Advance Received ', 2, '0.00%', 1, '25000.00', '25000.00', '0.00'),
(411, 55, 'Press Release ', 2, '0.00%', 1, '20000.00', '20000.00', '0.00'),
(412, 55, 'Intoduction Video for Designer ', 2, '0.00%', 1, '20000.00', '20000.00', '0.00'),
(421, 56, 'Ivan', 2, '0.00%', 1, '20000.00', '20000.00', '0.00'),
(422, 56, 'Abhishek + Locals', 2, '0.00%', 1, '20000.00', '20000.00', '0.00'),
(691, 53, 'Dj Kan-i', 2, '0.00%', 1, '3000.00', '3000.00', '0.00'),
(690, 53, 'The Local Scene', 2, '0.00%', 1, '3000.00', '3000.00', '0.00'),
(459, 57, 'Video ', 2, '0.00%', 1, '4000.00', '4000.00', '0.00'),
(458, 57, 'Ktm ', 2, '0.00%', 1, '20000.00', '20000.00', '0.00'),
(456, 57, ' Passes x 1000', 2, '0.00%', 10, '1000.00', '10000.00', '0.00'),
(457, 57, 'Passes x 1200', 2, '0.00%', 20, '1200.00', '24000.00', '0.00'),
(494, 59, 'OTM Bill ', 2, '0.00%', 1, '7300.00', '7300.00', '0.00'),
(493, 59, 'Karan Kundra Front row tickets', 2, '0.00%', 1, '3200.00', '3200.00', '0.00'),
(492, 59, 'Stage', 2, '0.00%', 1, '3000.00', '3000.00', '0.00'),
(488, 59, 'Karan Kundra ', 2, '0.00%', 1, '150000.00', '150000.00', '0.00'),
(491, 59, 'Audio Set', 2, '0.00%', 1, '8000.00', '8000.00', '0.00'),
(490, 59, 'Press Conference', 2, '0.00%', 1, '25000.00', '25000.00', '0.00'),
(489, 59, 'Ajaz Khan', 2, '0.00%', 1, '100000.00', '100000.00', '0.00'),
(495, 59, 'Aqua Bill ', 2, '0.00%', 1, '10000.00', '10000.00', '0.00'),
(576, 63, 'Hyderabad Talwars Models, Acts, Air Tickets. Ground Transport. Hospitality', 2, '0.00%', 1, '510000.00', '510000.00', '0.00'),
(577, 63, 'BOuncers Cancellation', 2, '0.00%', 1, '8000.00', '8000.00', '0.00'),
(654, 64, 'F Productions/ Programming and Promotion Charges', 2, '0.00%', 1, '20000.00', '20000.00', '0.00'),
(653, 64, 'Siddieboy', 2, '0.00%', 1, '10000.00', '10000.00', '0.00'),
(571, 60, 'Professional Photography / After Movie for Portfolio ', 2, '0.00%', 1, '50000.00', '50000.00', '0.00'),
(570, 60, 'F Productions management fee for Curating the Show', 2, '0.00%', 1, '50000.00', '50000.00', '0.00'),
(569, 60, 'Fnb Manager', 2, '0.00%', 1, '5000.00', '5000.00', '0.00'),
(568, 60, 'Dj ', 2, '0.00%', 1, '5000.00', '5000.00', '0.00'),
(565, 60, 'Media ', 2, '0.00%', 1, '30000.00', '30000.00', '0.00'),
(566, 60, 'Promo Video ', 2, '0.00%', 1, '15000.00', '15000.00', '0.00'),
(567, 60, 'Designing of Backdrop, Vip Invites, Write ups, Social Networking Posters ', 2, '0.00%', 1, '15000.00', '15000.00', '0.00'),
(564, 60, 'Models', 2, '0.00%', 1, '111000.00', '111000.00', '0.00'),
(652, 64, 'Dj Kan-i', 2, '0.00%', 1, '40000.00', '40000.00', '0.00'),
(651, 64, 'Led 12x12', 2, '0.00%', 1, '28800.00', '28800.00', '0.00'),
(650, 64, ' led', 2, '0.00%', 10, '350.00', '3500.00', '0.00'),
(648, 64, 'Goal Post Truss', 2, '0.00%', 1, '15000.00', '15000.00', '0.00'),
(649, 64, ' Sharpees IMAX', 2, '0.00%', 6, '2500.00', '15000.00', '0.00'),
(647, 64, 'Led 8x4', 2, '0.00%', 1, '6400.00', '6400.00', '0.00'),
(646, 64, 'Led- 16x12', 2, '0.00%', 1, '38400.00', '38400.00', '0.00'),
(644, 64, ' CO2 jets with cylinder- 20,000', 2, '0.00%', 2, '10000.00', '20000.00', '0.00'),
(645, 64, 'CO2 confetti with cylinder with Red color papers-', 2, '0.00%', 1, '11000.00', '11000.00', '0.00'),
(643, 64, ' Tvs having USB port with stand(42 inches)-', 2, '0.00%', 3, '2500.00', '7500.00', '0.00'),
(602, 65, 'October 3rd  Matrixx', 2, '0.00%', 1, '3000.00', '3000.00', '0.00'),
(603, 65, 'October 10th Abhishek', 2, '0.00%', 1, '3000.00', '3000.00', '0.00'),
(604, 65, 'October 17th The Ragamuffins', 2, '0.00%', 1, '3000.00', '3000.00', '0.00'),
(605, 65, 'October 24 Abhsihek', 2, '0.00%', 1, '3000.00', '3000.00', '0.00'),
(606, 65, 'October 31st Dj Kan-i and Siddieboy', 2, '0.00%', 1, '3000.00', '3000.00', '0.00'),
(607, 65, 'November 7th - Abhishek ', 2, '0.00%', 1, '3000.00', '3000.00', '0.00'),
(608, 65, 'November 14th - Slick Showcase', 2, '0.00%', 1, '3000.00', '3000.00', '0.00'),
(609, 65, 'November 21st- Nucleya ', 2, '0.00%', 1, '3000.00', '3000.00', '0.00'),
(610, 65, 'November 28th - V Societs', 2, '0.00%', 1, '3000.00', '3000.00', '0.00'),
(611, 66, 'October 3rd Matrix', 2, '0.00%', 1, '20000.00', '20000.00', '0.00'),
(612, 66, 'October 10th Abhishek', 2, '0.00%', 1, '20000.00', '20000.00', '0.00'),
(613, 66, 'October 17th The Ragamuffins', 2, '0.00%', 1, '20000.00', '20000.00', '0.00'),
(614, 66, 'October 24th- Abhishek', 2, '0.00%', 1, '20000.00', '20000.00', '0.00'),
(615, 66, 'October 31st Haloween with Dj Kan-i and Siddie', 2, '0.00%', 1, '30000.00', '30000.00', '0.00'),
(681, 73, 'Novmebr 21st- Nucleya', 2, '0.00%', 1, '30000.00', '30000.00', '0.00'),
(680, 73, 'November 14th- Slick Showcase', 2, '0.00%', 1, '20000.00', '20000.00', '0.00'),
(620, 68, 'John Digweed - Art Works / Promo Video / Give Aways/ Promotions', 2, '0.00%', 1, '50000.00', '50000.00', '0.00'),
(621, 68, 'Dualist Inquiry ', 2, '0.00%', 1, '12000.00', '12000.00', '0.00'),
(622, 68, 'Kohra Night', 2, '0.00%', 1, '12000.00', '12000.00', '0.00'),
(623, 68, 'Anish Sood', 2, '0.00%', 1, '12000.00', '12000.00', '0.00'),
(624, 68, 'Protoculture', 2, '0.00%', 1, '45000.00', '45000.00', '0.00'),
(625, 68, 'Dualist Inquiry/ Kohra / Protoculture', 2, '0.00%', 1, '4500.00', '4500.00', '0.00'),
(679, 73, 'November 7th - Abhsiehk', 2, '0.00%', 1, '20000.00', '20000.00', '0.00'),
(642, 70, 'Sandhi sudha', 1, '0.00', 1, '2650.00', '2650.00', '0.00'),
(655, 64, 'Media Wall', 2, '0.00%', 1, '2500.00', '2500.00', '0.00'),
(656, 71, 'Sound 4 Tops each side + 6 Subs', 2, '0.00%', 1, '30000.00', '30000.00', '0.00'),
(657, 71, 'Cdj 2000s and 900 Mixers', 2, '0.00%', 1, '10000.00', '10000.00', '0.00'),
(684, 72, 'Production / Stage Sound Light', 2, '0.00%', 1, '100000.00', '100000.00', '0.00'),
(683, 72, 'Dj Kani+ Sound Avtar + Flights', 2, '0.00%', 1, '100000.00', '100000.00', '0.00'),
(686, 74, 'OlaCricket', 1, '0.00', 1, '600.00', '600.00', '0.00'),
(687, 74, 'AnchorsBuzz', 1, '0.00', 1, '600.00', '600.00', '0.00'),
(689, 75, 'Paji Live ', 2, '0.00%', 1, '100000.00', '100000.00', '0.00'),
(701, 53, 'Abhishek', 2, '0.00%', 1, '2000.00', '2000.00', '0.00'),
(702, 76, 'Aqua Music Festival Video Grapher', 2, '0.00%', 1, '10000.00', '10000.00', '0.00'),
(703, 76, 'Bezire', 2, '0.00%', 1, '5000.00', '5000.00', '0.00'),
(704, 77, 'Dec 5th Ambivalent  + Calm Chor', 2, '0.00%', 1, '20000.00', '20000.00', '0.00'),
(705, 77, 'Dec 12th - Daniel Potman', 2, '0.00%', 1, '20000.00', '20000.00', '0.00'),
(706, 77, 'Dec 19th - Syn Frequency', 2, '0.00%', 1, '20000.00', '20000.00', '0.00'),
(707, 77, 'Dec 26th - Abhishek', 2, '0.00%', 1, '20000.00', '20000.00', '0.00'),
(708, 78, 'Dec 5th Ambivalent', 2, '0.00%', 1, '0.00', '0.00', '0.00'),
(709, 78, 'Dec 12th - Daniel Portman', 2, '0.00%', 1, '3000.00', '3000.00', '0.00'),
(710, 78, 'Dec 19- Syn Frequency', 2, '0.00%', 1, '0.00', '0.00', '0.00'),
(711, 78, 'Dec 26th - Between Us', 2, '0.00%', 1, '3000.00', '3000.00', '0.00'),
(715, 79, 'dsfsadadasd', 1, '0.00', 3, '2000.00', '6000.00', '0.00'),
(714, 79, 'dfdsfsfdsfdsf', 1, '0.00', 3, '2000.00', '6000.00', '0.00'),
(717, 80, 'Air tickets of Miss Tara + Manager Business Class + Economy ', 2, '0.00%', 1, '34568.00', '34568.00', '0.00'),
(718, 81, 'January 2nd- Anjali Doshi', 2, '0.00%', 1, '20000.00', '20000.00', '0.00'),
(719, 81, 'January 9th-Abhsihek ', 2, '0.00%', 1, '20000.00', '20000.00', '0.00'),
(720, 81, 'January 16th- Ashroy ', 2, '0.00%', 1, '20000.00', '20000.00', '0.00'),
(721, 81, 'January 23rd- Abhishek ', 2, '0.00%', 1, '20000.00', '20000.00', '0.00'),
(722, 81, 'January 30th- Adam Rahman', 2, '0.00%', 1, '20000.00', '20000.00', '0.00'),
(723, 82, 'BITS Pilani Hyderabad Show', 2, '0.00%', 1, '50000.00', '50000.00', '0.00'),
(731, 83, 'ï¿¼Flight Ticket (Economy Class) Booking from Hyderabad to Chandigarh', 1, '0.00', 4, '39525.00', '158100.00', '0.00'),
(730, 83, 'Flight Ticket (Business Class ) Booking from Hyderabad to Chandigarh', 1, '0.00', 2, '94250.00', '188500.00', '0.00'),
(739, 87, 'White Caps', 4, '5.00%', 5, '70.00', '350.00', '17.50'),
(738, 86, 'test product 2', 2, '14.50%', 20, '200.00', '4000.00', '580.00'),
(737, 86, 'test product 1', 3, '12.36%', 10, '100.00', '1000.00', '123.60'),
(736, 85, 'White Caps', 1, '0.00', 60, '70.00', '4200.00', '0.00'),
(740, 88, 'Visiting Card ', 2, '14.50%', 2, '320.00', '640.00', '92.80'),
(741, 88, 'Letter head ', 2, '14.50%', 30, '120.00', '3600.00', '522.00'),
(742, 89, 'shoes ', 9, '10.00%', 1, '1000.00', '1000.00', '100.00'),
(743, 90, 'Annual Charge ', 1, '0.00', 1, '5000.00', '5000.00', '0.00'),
(744, 91, 'Soft ware', 1, '0.00', 1, '5000.00', '5000.00', '0.00'),
(745, 92, 'LED VAN  ( AP 01 5434) ', 9, '10.00%', 5, '30000.00', '150000.00', '15000.00'),
(746, 93, 'saree', 9, '10.00%', 2, '2000.00', '4000.00', '400.00'),
(747, 94, 'bxb', 9, '10.00%', 2, '2000.00', '4000.00', '400.00'),
(748, 95, 'Blade', 7, '2.00%', 1, '1500.00', '1500.00', '30.00'),
(749, 95, 'waykarttech', 1, '0.00', 5, '2345.00', '11725.00', '0.00'),
(750, 96, 'shoose', 9, '10.00%', 5, '3000.00', '15000.00', '1500.00'),
(751, 96, 'Sandhi sudha', 1, '0.00', 4, '2950.00', '11800.00', '0.00'),
(752, 97, 'online exam software ', 1, '0.00', 1, '3000.00', '3000.00', '0.00'),
(758, 102, 'Itollfree', 11, '18.00%', 1, '15000.00', '15000.00', '2700.00');

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE IF NOT EXISTS `settings` (
  `setting_id` int(1) NOT NULL,
  `logo` varchar(255) NOT NULL,
  `invoice_logo` varchar(255) NOT NULL,
  `site_name` varchar(55) NOT NULL,
  `language` varchar(20) NOT NULL,
  `currency_prefix` varchar(3) NOT NULL,
  `default_tax_rate` int(2) NOT NULL,
  `rows_per_page` int(2) NOT NULL,
  `no_of_rows` int(2) NOT NULL,
  `total_rows` int(2) NOT NULL,
  `dateformat` tinyint(4) NOT NULL,
  `print_payment` tinyint(4) NOT NULL,
  `calendar` tinyint(4) NOT NULL,
  `restrict_sales` tinyint(4) NOT NULL,
  `major` varchar(25) DEFAULT 'Dollars',
  `minor` varchar(25) DEFAULT 'Cents',
  `display_words` tinyint(4) DEFAULT '0',
  PRIMARY KEY (`setting_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`setting_id`, `logo`, `invoice_logo`, `site_name`, `language`, `currency_prefix`, `default_tax_rate`, `rows_per_page`, `no_of_rows`, `total_rows`, `dateformat`, `print_payment`, `calendar`, `restrict_sales`, `major`, `minor`, `display_words`) VALUES
(1, 'logo11.png', 'logo12.png', 'abcd ', 'english', 'INR', 11, 10, 9, 49, 5, 1, 0, 1, 'Rs', 'paise', 1);

-- --------------------------------------------------------

--
-- Table structure for table `tax_rates`
--

CREATE TABLE IF NOT EXISTS `tax_rates` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(55) NOT NULL,
  `rate` decimal(4,2) NOT NULL,
  `type` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=12 ;

--
-- Dumping data for table `tax_rates`
--

INSERT INTO `tax_rates` (`id`, `name`, `rate`, `type`) VALUES
(1, 'No Tax', '0.00', '2'),
(9, 'CGST ', '9.00', '1'),
(3, 'hotel', '12.36', '1'),
(10, 'SGST', '9.00', '1'),
(6, 'ED/CENVAT', '12.00', '1'),
(7, 'Cess on ED', '2.00', '1'),
(8, 'SHEC on ED', '1.00', '1'),
(11, 'IGST', '18.00', '1');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE IF NOT EXISTS `users` (
  `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `ip_address` varbinary(16) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(40) NOT NULL,
  `salt` varchar(40) DEFAULT NULL,
  `email` varchar(100) NOT NULL,
  `activation_code` varchar(40) DEFAULT NULL,
  `forgotten_password_code` varchar(40) DEFAULT NULL,
  `forgotten_password_time` int(11) unsigned DEFAULT NULL,
  `remember_code` varchar(40) DEFAULT NULL,
  `created_on` int(11) unsigned NOT NULL,
  `last_login` int(11) unsigned DEFAULT NULL,
  `active` tinyint(1) unsigned DEFAULT NULL,
  `first_name` varchar(50) DEFAULT NULL,
  `last_name` varchar(50) DEFAULT NULL,
  `company` varchar(100) DEFAULT NULL,
  `phone` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=6 ;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `ip_address`, `username`, `password`, `salt`, `email`, `activation_code`, `forgotten_password_code`, `forgotten_password_time`, `remember_code`, `created_on`, `last_login`, `active`, `first_name`, `last_name`, `company`, `phone`) VALUES
(1, '\0\0', 'admin', '86de5c7e241d8c942db361ad89456ca574efc4d0', NULL, 'admin@admin.com', NULL, NULL, NULL, NULL, 1351661704, 1508428782, 1, 'Admin', 'Admin', 'Invoice Manager', '0105292122'),
(5, 'z¬?', 'user user1', '86de5c7e241d8c942db361ad89456ca574efc4d0', NULL, 'user@demo.com', NULL, NULL, NULL, NULL, 1502691690, 1508215654, 1, 'User', 'user1', 'user12', '90081767563');

-- --------------------------------------------------------

--
-- Table structure for table `users_groups`
--

CREATE TABLE IF NOT EXISTS `users_groups` (
  `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` mediumint(8) unsigned NOT NULL,
  `group_id` mediumint(8) unsigned NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=8 ;

--
-- Dumping data for table `users_groups`
--

INSERT INTO `users_groups` (`id`, `user_id`, `group_id`) VALUES
(1, 1, 1),
(4, 2, 2),
(5, 3, 1),
(7, 5, 2);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
