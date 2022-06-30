-- phpMyAdmin SQL Dump
-- version 4.7.3
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Dec 30, 2017 at 04:22 PM
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
-- Database: `tammanag_saloon`
--

-- --------------------------------------------------------

--
-- Table structure for table `ad`
--

CREATE TABLE `ad` (
  `id` int(100) NOT NULL,
  `type` varchar(100) NOT NULL,
  `image` varchar(100) NOT NULL,
  `website` varchar(750) NOT NULL DEFAULT '#',
  `created_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ad`
--

INSERT INTO `ad` (`id`, `type`, `image`, `website`, `created_date`) VALUES
(1, 'shop', 'http://www.tammanager.com/admin/assets/uploads/ad/jw2.JPG', 'www.johnsite.com', '2016-07-14 09:00:29');

-- --------------------------------------------------------

--
-- Table structure for table `admin_users`
--

CREATE TABLE `admin_users` (
  `id` int(11) NOT NULL,
  `username` varchar(750) NOT NULL,
  `password` varchar(750) NOT NULL,
  `email_id` varchar(750) NOT NULL,
  `status` varchar(100) NOT NULL,
  `user_type` int(11) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin_users`
--

INSERT INTO `admin_users` (`id`, `username`, `password`, `email_id`, `status`, `user_type`) VALUES
(1, 'admin', 'admin', 'admin@gmail.com', '1', 1);

-- --------------------------------------------------------

--
-- Table structure for table `booking_details`
--

CREATE TABLE `booking_details` (
  `id` int(11) NOT NULL,
  `booking_id` int(11) NOT NULL,
  `service_id` int(11) NOT NULL,
  `service_type` int(11) NOT NULL DEFAULT '0' COMMENT '0 => User Added Service, 1=> After booking',
  `price` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `booking_details`
--

INSERT INTO `booking_details` (`id`, `booking_id`, `service_id`, `service_type`, `price`) VALUES
(1, 1, 1, 0, 500),
(2, 2, 13, 0, 1500),
(3, 3, 5, 0, 600),
(4, 3, 7, 0, 300),
(5, 4, 8, 0, 800),
(6, 5, 14, 0, 1000),
(7, 6, 17, 0, 1500),
(8, 7, 18, 0, 1500),
(9, 8, 19, 0, 1000),
(10, 8, 20, 0, 1500),
(11, 9, 21, 0, 800),
(12, 10, 22, 0, 4000),
(13, 11, 10, 0, 1000),
(14, 12, 11, 0, 1000),
(15, 5, 15, 1, 150),
(16, 5, 35, 1, 4000),
(17, 12, 31, 1, 10000),
(18, 12, 32, 1, 500),
(19, 12, 33, 1, 10000);

-- --------------------------------------------------------

--
-- Table structure for table `booking_history`
--

CREATE TABLE `booking_history` (
  `id` int(11) NOT NULL,
  `booking_id` varchar(50) NOT NULL,
  `user_id` int(11) NOT NULL,
  `shop_id` int(11) NOT NULL,
  `booking_date` date NOT NULL,
  `booking_time` varchar(10) NOT NULL,
  `total` int(11) NOT NULL,
  `status` varchar(100) NOT NULL,
  `booked_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `booking_history`
--

INSERT INTO `booking_history` (`id`, `booking_id`, `user_id`, `shop_id`, `booking_date`, `booking_time`, `total`, `status`, `booked_date`) VALUES
(1, 'BMS111', 1, 1, '2016-07-15', '10:21 AM', 500, 'Booked', '2016-07-14 05:06:29'),
(2, 'BMS172', 1, 7, '2016-07-16', '8:00 AM', 1500, 'Booked', '2016-07-14 05:21:28'),
(3, 'BMS123', 1, 2, '2016-07-19', '9:00 AM', 900, 'Booked', '2016-07-14 05:24:54'),
(4, 'BMS134', 1, 3, '2016-07-28', '8:00 AM', 800, 'Booked', '2016-07-14 05:26:55'),
(5, 'BMS185', 1, 8, '2016-07-25', '10:00 AM', 5150, 'Completed', '2016-07-14 05:30:11'),
(6, 'BMS196', 1, 9, '2016-08-09', '9:30 AM', 1500, 'Booked', '2016-07-14 05:32:59'),
(7, 'BMS1107', 1, 10, '2016-07-20', '10:51 AM', 1500, 'Booked', '2016-07-14 05:36:02'),
(8, 'BMS1118', 1, 11, '2016-07-20', '10:52 AM', 2500, 'Booked', '2016-07-14 05:37:16'),
(9, 'BMS1129', 1, 12, '2016-07-27', '10:53 AM', 800, 'Booked', '2016-07-14 05:38:14'),
(10, 'BMS1410', 1, 4, '2016-07-22', '11:00 AM', 4000, 'Completed', '2016-07-14 05:45:27'),
(11, 'BMS1511', 1, 5, '2016-07-20', '11:02 AM', 1000, 'Booked', '2016-07-14 05:47:26'),
(12, 'BMS1612', 1, 6, '2016-07-20', '11:07 AM', 21500, 'Booked', '2016-07-14 05:52:35');

-- --------------------------------------------------------

--
-- Table structure for table `cycle_slider`
--

CREATE TABLE `cycle_slider` (
  `id` int(11) NOT NULL,
  `shop_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `cycle_slider`
--

INSERT INTO `cycle_slider` (`id`, `shop_id`) VALUES
(1, 1),
(2, 2),
(3, 4),
(4, 7),
(5, 5),
(6, 8);

-- --------------------------------------------------------

--
-- Table structure for table `fav_shops`
--

CREATE TABLE `fav_shops` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `shop_id` int(11) NOT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `keys`
--

CREATE TABLE `keys` (
  `id` int(11) NOT NULL,
  `security_key` varchar(40) NOT NULL,
  `level` int(2) NOT NULL,
  `ignore_limits` tinyint(1) NOT NULL DEFAULT '0',
  `date_created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `keys`
--

INSERT INTO `keys` (`id`, `security_key`, `level`, `ignore_limits`, `date_created`) VALUES
(1, 'key', 0, 0, '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `main_services`
--

CREATE TABLE `main_services` (
  `id` int(11) NOT NULL,
  `service_name` varchar(750) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `main_services`
--

INSERT INTO `main_services` (`id`, `service_name`) VALUES
(1, 'Hair Cut'),
(2, 'Facial'),
(3, 'Spa'),
(4, 'Manicure'),
(5, 'Skin'),
(6, 'Body'),
(7, 'Pedicure');

-- --------------------------------------------------------

--
-- Table structure for table `offers`
--

CREATE TABLE `offers` (
  `id` int(100) NOT NULL,
  `shop_id` varchar(100) NOT NULL,
  `offers` int(11) NOT NULL,
  `created_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `offers`
--

INSERT INTO `offers` (`id`, `shop_id`, `offers`, `created_date`) VALUES
(1, '1', 50, '2016-07-14 08:14:18'),
(2, '2', 30, '2016-07-14 08:14:26'),
(3, '8', 40, '2016-07-14 08:14:37'),
(4, '3', 25, '2016-07-14 08:14:46'),
(5, '5', 100, '2017-12-29 04:56:52');

-- --------------------------------------------------------

--
-- Table structure for table `rating`
--

CREATE TABLE `rating` (
  `id` int(11) NOT NULL,
  `booking_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `shop_id` int(11) NOT NULL,
  `rating` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `rating`
--

INSERT INTO `rating` (`id`, `booking_id`, `user_id`, `shop_id`, `rating`) VALUES
(1, 1, 1, 1, '5'),
(2, 2, 1, 7, '4'),
(3, 3, 1, 2, '5'),
(4, 4, 1, 3, '4'),
(5, 5, 1, 8, '2'),
(6, 6, 1, 9, '3'),
(7, 7, 1, 10, '4'),
(8, 8, 1, 11, '5'),
(9, 9, 1, 12, '2'),
(10, 10, 1, 4, '5'),
(11, 11, 1, 5, '4'),
(12, 12, 1, 6, '3');

-- --------------------------------------------------------

--
-- Table structure for table `review`
--

CREATE TABLE `review` (
  `id` int(11) NOT NULL,
  `booking_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `shop_id` int(11) NOT NULL,
  `comments` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `review`
--

INSERT INTO `review` (`id`, `booking_id`, `user_id`, `shop_id`, `comments`) VALUES
(1, 1, 1, 1, 'My best suggestion is choose Naturals for make up especially bridal.'),
(2, 2, 1, 7, 'Hello friends.i like to tell about my experience here how I felt positive result here good salon and spa and their service is really awesome no comments on that worth to pay good infrastructure facility and money is very minimum and its worthy to pay here staff great very nicely  .'),
(3, 3, 1, 2, 'Lakme all item are astounding and better then other brand quality.so I like lakme item .They offer great service and staff is very much prepared. We can rapidly complete every one of the things we require.'),
(4, 4, 1, 3, 'We highly recommend Laura B Salon , one of the best day haircut  in the area. It is popular and highly rated. It is also one of the averagely priced day spas in the area. It also usually opens early.'),
(5, 5, 1, 8, 'Time was not maintained properly during service and offer was also not honored well.'),
(6, 6, 1, 9, 'Nice hair Cutting and also other services are good.'),
(7, 7, 1, 10, 'Awesome place and really good services.'),
(8, 8, 1, 11, 'Awesome....Superb...Superb.........'),
(9, 9, 1, 12, 'Not Good Services....'),
(10, 10, 1, 4, 'I recommend Essentials Salon and Jess, to anyone looking for a wonderful salon, with a great atmosphere!'),
(11, 11, 1, 5, 'I recommend Essentials Salon, to anyone looking for a wonderful salon, with a great atmosphere!'),
(12, 12, 1, 6, 'Nice......');

-- --------------------------------------------------------

--
-- Table structure for table `saloon_users`
--

CREATE TABLE `saloon_users` (
  `id` int(11) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `firstname` varchar(100) NOT NULL,
  `lastname` varchar(100) NOT NULL,
  `phone_no` varchar(15) NOT NULL,
  `email_id` varchar(250) NOT NULL,
  `business_name` varchar(750) NOT NULL,
  `website` varchar(750) NOT NULL,
  `birthdate` date NOT NULL,
  `gender` varchar(10) NOT NULL,
  `city` varchar(100) NOT NULL,
  `country` varchar(100) NOT NULL,
  `profile_pic` varchar(750) NOT NULL,
  `status` int(11) NOT NULL COMMENT '1=>Enable, 0=>Disable',
  `created_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `saloon_users`
--

INSERT INTO `saloon_users` (`id`, `username`, `password`, `firstname`, `lastname`, `phone_no`, `email_id`, `business_name`, `website`, `birthdate`, `gender`, `city`, `country`, `profile_pic`, `status`, `created_date`) VALUES
(1, 'customer', 'customer123', 'John', 'India', '5588994466', 'jhon@gmail.com', 'Freakzzz', '', '1989-07-14', 'Male', 'Kochi', 'India', 'http://www.tammanager.com/admin/assets/uploads/profile_pic/img1@(2)1.jpg', 1, '2016-07-14 08:38:29');

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE `settings` (
  `id` int(11) NOT NULL,
  `title` varchar(500) NOT NULL,
  `logo` varchar(500) NOT NULL,
  `favicon` varchar(500) NOT NULL,
  `smtp_username` varchar(500) NOT NULL,
  `smtp_host` varchar(500) NOT NULL,
  `smtp_password` varchar(500) NOT NULL,
  `admin_email` varchar(500) NOT NULL,
  `sms_gateway_username` varchar(500) NOT NULL,
  `sms_gateway_password` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`id`, `title`, `logo`, `favicon`, `smtp_username`, `smtp_host`, `smtp_password`, `admin_email`, `sms_gateway_username`, `sms_gateway_password`) VALUES
(1, 'BookMySaloon', 'http://www.tammanager.com/admin/assets/uploads/settings//1468827745.png', 'http://www.tammanager.com/admin/assets/uploads/settings//1468827745.ico', 'user', '1234', 'password', 'admin@admin.com', 'user', 'password');

-- --------------------------------------------------------

--
-- Table structure for table `shop_details`
--

CREATE TABLE `shop_details` (
  `id` int(11) NOT NULL,
  `created_user` int(11) NOT NULL,
  `shop_name` varchar(100) NOT NULL,
  `description` longtext NOT NULL,
  `category` int(11) NOT NULL DEFAULT '1' COMMENT '1=>Unisex, 2=>Male, 3=>Female',
  `working_time` longtext NOT NULL,
  `location` varchar(100) NOT NULL,
  `city` varchar(750) NOT NULL,
  `state` varchar(100) NOT NULL,
  `country` varchar(100) NOT NULL,
  `pincode` varchar(10) NOT NULL,
  `phone_no` varchar(15) NOT NULL,
  `email_id` varchar(100) NOT NULL,
  `website` varchar(100) NOT NULL,
  `image` varchar(250) NOT NULL,
  `latitude` varchar(25) NOT NULL,
  `longitude` varchar(25) NOT NULL,
  `created_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `shop_details`
--

INSERT INTO `shop_details` (`id`, `created_user`, `shop_name`, `description`, `category`, `working_time`, `location`, `city`, `state`, `country`, `pincode`, `phone_no`, `email_id`, `website`, `image`, `latitude`, `longitude`, `created_date`) VALUES
(1, 1, 'Naturals Salon', 'Creating a Beautiful World! Naturals was established a decade ago, with a dream to change not just the way people looked but to add ample positivity in their attitude to life!', 1, '9.30AM-7.00PM', 'Kochi', 'Kadavanthara', 'Kerala', 'India', ' 682020', '4844000641', 'wecare@naturals.in', 'http://naturals.in', 'http://www.tammanager.com/admin/assets/uploads/naturals.jpg', '9.9564', '76.3015', '2016-07-13 06:28:27'),
(2, 1, 'Lakme Salon', 'Lakmé Lever has a presence of more than 270+ Lakmé Salons at premium locations in over 70 cities. Lakmé Salons are dedicated towards the evolvement of the modern Indian woman and her exploration of beauty. Lakmé Salons bring a plethora of beauty and grooming services that proudly match up to international standards. Its repertoire of professional beauty experts and hair stylists are much sought after by the contemporary Indian women who are looking to explore the fine art of beauty to the fullest and only by the best.\r\n\r\nKnown for creativity with stunning hair and make-up techniques and excellent skin care services, Lakmé Salons brings the backstage expertise and experience of Lakmé Fashion Week to the modern Indian woman. Professionally trained hair and makeup experts with countless shows under their belt and outstanding skin services come together at Lakmé and offer an unforgettable experience; one that’s 360 degrees by nature.', 3, '9.30AM-7.00PM', 'Kochi', 'Kochi', 'Kerala', 'India', '682001', '5566448899', 'lakme@gmail.com', 'http://www.lakmeindia.com', 'http://www.tammanager.com/admin/assets/uploads/lakme1.jpg', '9.966', '76.3029', '2016-07-13 06:44:45'),
(3, 1, 'Laura', 'We are a top hair salon offering Designer cuts for all hair types. Color and highlights that enhance your complexion. Perms with body and bounce. And, beautiful hair extensions for long, full hair now. All customized for your style and offering easy care between visits.', 3, '9.30AM-7.00PM', 'Kochi', 'Kochi', 'Kerala', 'India', '682001', '9895820307', 'leolaura007@gmail.com', 'http://www.laurasalon.in', 'http://www.tammanager.com.com/admin/assets/uploads/laura1.jpg', '9.966', '76.3029', '2016-07-13 07:12:51'),
(4, 1, 'JW JW Marriott', 'Rejuvenating treatments support the health and well-being of those partaking in the relaxing services of this Bengaluru luxury spa. Therapies focus on maintaining a mental and physical balance while providing an energizing experience.', 1, '9.30AM-7.00PM', ' Bengaluru', ' Bengaluru', 'Karnataka', 'India', '560002', '8067189999', 'jw.blrjw.ays@marriott.com', 'http://www.marriott.com/hotels/travel/blrjw-jw-marriott-hotel-bengaluru/', 'http://www.tammanager.com/admin/assets/uploads/jw1.jpg', '12.9856', '77.5935', '2016-07-13 07:28:43'),
(5, 1, 'Bodycraft Spa and Salon', 'For more than two decades, Bodycraft Spa & Saloon has been Bangalore’s most known and trusted destination for cutting-edge styling, hair and skin care, and wellness services. Under the guidance of Manjul Gupta, Bodycraft has grown rapidly in terms of range of services as well as infrastructure since its inception in 1997. Today, it has to its credit state of the art equipment and over 400 professionals trained by international experts from Wella, Sebastian, SP, Dermalogica, Ainhoa and EZFlow.', 1, '9.30AM-7.00PM', 'Bengaluru', 'Bengaluru', 'Karnataka', 'India', '560002', '8066494635', 'info@bodycraft.co.in', 'http://www.bodycraft.co.in/', 'http://www.tammanager.com/admin/assets/uploads/bodycraft1.jpg', '13.2846993', '77.6077865', '2016-07-13 08:02:39'),
(6, 1, 'JeanClaude Biguine', 'Jean-Claude Biguine Salon and Spa first brought style to the streets of Paris in 1982, with its salon at Avenue Mozart. Since then, we have continued to grow with our presence in 318 rues across 17 countries.', 1, '9.30AM-7.00PM', 'Bengaluru', 'Bengaluru', 'Karnataka', 'India', '560002', '8025702222', 'marketing@biguineindia.com', 'http://biguineindia.com/', 'http://www.tammanager.com/admin/assets/uploads/jean1.jpg', '12.9756', '77.5935', '2016-07-13 08:10:09'),
(7, 1, 'Anushka Salon', 'Anushka Salons established in the year 1995 and has successfully grown to become a Market leader in the beauty services. It has a celebrity frequented clientele and caters to the premium segment.', 3, '9.30AM-7.00PM', 'Chennai', 'Chennai', 'Tamilnadu', 'India', '600083', '4443054115', 'getsyshibani@gmail.com', 'http://www.anushkasalons.com', 'http://www.tammanager.com/admin/assets/uploads/anushka1.jpg', '13.0604', '80.2496', '2016-07-13 08:17:09'),
(8, 1, 'Bubbly  Bubbly Saloon', 'Chennai’s, wellness destination, B&B Saloon and Spa offers a new place for the elite of Chennai. A welcoming place designed and staffed to provide you with a luxurious personal experience. It\'s where you go to be pampered and enjoy a respite from your busy life. Another benchmark to bring the ultimate experience in beauty, wellness and luxury, to indulge the mind, body and soul. ', 1, '9.00AM-9.00PM', 'Chennai', 'Chennai', 'Tamilnadu', 'India', '600083', '0043563535', 'bnbsaloon@gmail.com', 'http://www.bnbsaloon.co.in/', 'http://www.tammanager.com/admin/assets/uploads/bb1.jpg', '13.0604', '80.2496', '2016-07-13 08:25:32'),
(9, 1, 'Essensuals', 'ESSENSUALS salons aim to provide excellence in hairdressing, in a fun, relaxed and fuss-free environment. ESSENSUALS has evolved immensely since the company began in 1997 when Toni, Sacha and Christian Mascolo first recognised a gap in the market for a \'Diffusion line\' of TONI&GUY. The idea behind a second Mascolo hair-salon group was the belief that a proportion of clients (especially the younger ones) can be \'transient\' and visit the competition so why not be the competition? Originally targeting a younger market, it\'s price point was markedly less than TONI&GUY back then ', 1, '9.30AM-7.00PM', 'Chennai', 'Chennai', 'Tamilnadu', 'India', '600083', '2255889977', 'essential@gmail.com', 'essentils.co.in', 'http://www.tammanager.com/admin/assets/uploads/essential1.png', '13.0604', '80.2496', '2016-07-13 08:33:12'),
(10, 1, 'Connaught Place', 'We are a promising new face delivering premium world class hair, beauty and wellness services. Headed by the best in the industry Monsoon is the youngest leading brand in the hair dressing industry. Our services start with beauty and leads to style. We offer the best in beauty and wellness straight from head to toe. Be it Hair Styling, Bridal Packages or the widest range of Nail Art collection our creative team makes sure you look fab.', 3, '9.00AM-9.00PM', 'Delhi', 'Delhi', 'Madhya Pradesh', 'India', '110001 ', '1143552400', 'connaughtplace@gmail.com', 'https://www.monsoonsalon.com', 'http://www.tammanager.com/admin/assets/uploads/cau1.jpg', '24.7391', '81.3317', '2016-07-13 08:41:55'),
(11, 1, 'South Extension', 'This branch boasts of one of the best line up of hairdressers in town with international training and best makeup artists in town. Monsoon Salon & Spa at South Ex is also the home base for Celebrity Hair Dresser and Monsoon Director.', 3, '9.30AM-7.00PM', 'Delhi', 'Delhi', 'Madhya Pradesh', 'India', '110049', '1143005700', 'southextension@gmail.com', 'southextension.in', 'http://www.tammanager.com/admin/assets/uploads/southext1.jpg', '24.7391', '81.3317', '2016-07-13 08:48:27'),
(12, 1, 'Greater Kailash', 'Monsoon Salon & Spa @ Greater Kailash (commonly referred to as GK 2) is located in a market. Recently the market has experienced heavy footfall due to several posh restaurants and a growing number of Salon & Spas. GK 2 is rated one of the most expensive residential area in Delhi & the country.', 2, '9.30AM-7.00PM', 'Delhi', 'Delhi', 'Madhya Pradesh', 'India', '110049', '7654321901', 'greaterkailsh@gmail.com', 'greaterkailsh.com', 'http://www.tammanager.com/admin/assets/uploads/bodycraft2.jpg', '24.7391', '81.3317', '2016-07-13 08:52:44');

-- --------------------------------------------------------

--
-- Table structure for table `shop_gallery`
--

CREATE TABLE `shop_gallery` (
  `id` int(11) NOT NULL,
  `shop_id` int(11) NOT NULL,
  `image_path` varchar(750) NOT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `shop_gallery`
--

INSERT INTO `shop_gallery` (`id`, `shop_id`, `image_path`, `user_id`) VALUES
(1, 1, 'http://www.tammanager.com/admin/assets/uploads/1-natural2.jpg', 1),
(2, 1, 'http://www.tammanager.com/admin/assets/uploads/naturals.jpg', 1),
(3, 2, 'http://www.tammanager.com/admin/assets/uploads/1-lakme21.jpg', 1),
(4, 2, 'http://www.tammanager.com/admin/assets/uploads/1-lakme1.jpg', 1),
(5, 3, 'http://www.tammanager.com/admin/assets/uploads/1-laura2.png', 1),
(6, 4, 'http://www.tammanager.com/admin/assets/uploads/1-jw2.JPG', 1),
(7, 5, 'http://www.tammanager.com/admin/assets/uploads/1-bodycraft2.jpg', 1),
(8, 6, 'http://www.tammanager.com/admin/assets/uploads/1-jean2.jpg', 1),
(9, 7, 'http://www.tammanager.com/admin/assets/uploads/1-anushka2.png', 1),
(10, 8, 'http://www.tammanager.com/admin/assets/uploads/1-bB2.jpg', 1),
(11, 9, 'http://www.tammanager.com/admin/assets/uploads/1-essential2.jpg', 1),
(12, 10, 'http://www.tammanager.com/admin/assets/uploads/1-cau2.jpg', 1),
(13, 11, 'http://www.tammanager.com/admin/assets/uploads/1-southext2.jpg', 1),
(14, 11, 'http://www.tammanager.com/admin/assets/uploads/1-cau1.jpg', 1);

-- --------------------------------------------------------

--
-- Table structure for table `shop_services`
--

CREATE TABLE `shop_services` (
  `id` int(11) NOT NULL,
  `shop_id` int(11) NOT NULL,
  `service_id` int(11) NOT NULL,
  `price` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `shop_services`
--

INSERT INTO `shop_services` (`id`, `shop_id`, `service_id`, `price`) VALUES
(1, 1, 1, 500),
(2, 1, 5, 800),
(3, 1, 6, 1000),
(4, 2, 1, 600),
(5, 2, 2, 600),
(6, 2, 3, 400),
(7, 2, 4, 300),
(8, 3, 1, 800),
(9, 1, 3, 1500),
(10, 5, 3, 1000),
(11, 6, 3, 1000),
(12, 7, 1, 600),
(13, 7, 5, 1500),
(14, 8, 2, 1000),
(15, 8, 4, 150),
(16, 9, 2, 1500),
(17, 9, 3, 1500),
(18, 10, 1, 1500),
(19, 11, 1, 1000),
(20, 11, 3, 1500),
(21, 12, 1, 800),
(22, 4, 6, 4000),
(23, 3, 2, 4000),
(24, 3, 6, 10000),
(25, 4, 1, 500),
(26, 4, 3, 4000),
(27, 4, 5, 6000),
(28, 5, 2, 4000),
(29, 5, 1, 560),
(30, 5, 4, 100),
(31, 6, 1, 10000),
(32, 6, 2, 500),
(33, 6, 6, 10000),
(34, 7, 6, 10000),
(35, 8, 1, 4000),
(36, 9, 1, 500),
(37, 10, 3, 500),
(38, 10, 5, 4000),
(39, 11, 2, 4000),
(40, 11, 4, 500),
(41, 12, 4, 500),
(42, 12, 3, 4000);

-- --------------------------------------------------------

--
-- Table structure for table `slider`
--

CREATE TABLE `slider` (
  `id` int(100) NOT NULL,
  `slider_text` varchar(100) NOT NULL,
  `image` varchar(100) NOT NULL,
  `order` varchar(100) NOT NULL,
  `updated_date` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `testimonials`
--

CREATE TABLE `testimonials` (
  `id` int(11) NOT NULL,
  `name` varchar(750) NOT NULL,
  `description` longtext NOT NULL,
  `image` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `testimonials`
--

INSERT INTO `testimonials` (`id`, `name`, `description`, `image`) VALUES
(1, 'Techware', 'Great Team', 'http://www.tammanager.com/admin/assets/uploads/testimonials/Facebook_post_21.jpg'),
(2, 'Jhon', 'We Can', 'http://www.tammanager.com/admin/assets/uploads/testimonials/img1@(2).jpg'),
(3, 'Nicky', 'Awesome', 'http://www.tammanager.com/admin/assets/uploads/testimonials/img5.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `trending`
--

CREATE TABLE `trending` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `title` varchar(750) NOT NULL,
  `description` longtext NOT NULL,
  `image` varchar(750) NOT NULL,
  `created_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `trending`
--

INSERT INTO `trending` (`id`, `user_id`, `title`, `description`, `image`, `created_date`) VALUES
(1, 0, 'Selfie Trend', '<p>New Trendzzzzzzzz</p>', 'http://www.tammanager.com/admin/assets/uploads/trending/healthy-selfie_0.jpg', '2016-07-14 08:30:10');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `firstname` varchar(100) NOT NULL,
  `lastname` varchar(100) NOT NULL,
  `phone_no` varchar(15) NOT NULL,
  `email_id` varchar(250) NOT NULL,
  `birthdate` date NOT NULL,
  `gender` varchar(10) NOT NULL,
  `city` varchar(100) NOT NULL,
  `country` varchar(100) NOT NULL,
  `profile_pic` varchar(750) NOT NULL,
  `status` int(11) NOT NULL DEFAULT '0',
  `created_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `user_type` int(11) NOT NULL DEFAULT '2'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `password`, `firstname`, `lastname`, `phone_no`, `email_id`, `birthdate`, `gender`, `city`, `country`, `profile_pic`, `status`, `created_date`, `user_type`) VALUES
(1, 'demouser', '62cc2d8b4bf2d8728120d052163a77df', '', '', '8891664455', 'demo@gmail.com', '0000-00-00', '', '', '', 'http://www.tammanager.com/assets/uploads/profile_pic/img8.jpg', 1, '2016-07-14 05:04:36', 2);

-- --------------------------------------------------------

--
-- Table structure for table `whats_new`
--

CREATE TABLE `whats_new` (
  `id` int(11) NOT NULL,
  `title` varchar(750) NOT NULL,
  `subtitle` varchar(750) NOT NULL,
  `description` longtext NOT NULL,
  `shop_id` int(11) NOT NULL,
  `image` varchar(750) NOT NULL,
  `status` int(11) NOT NULL DEFAULT '1' COMMENT '1=>Enable, 0=>Disable'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `whats_new`
--

INSERT INTO `whats_new` (`id`, `title`, `subtitle`, `description`, `shop_id`, `image`, `status`) VALUES
(1, 'Protein Treat', 'Hair and Beauty', 'A new way to discover top salon\'s ', 1, 'http://www.tammanager.com/admin/assets/uploads/whats_new/slide0001-31.jpeg', 1),
(2, 'Eye Liner', 'Beauty', 'A new way to discover top salon\'s ', 2, 'http://www.tammanager.com/admin/assets/uploads/whats_new/eyeliner1.png', 1),
(3, 'Hair Cut', 'Hair and Beauty', 'A new way to discover top salon\'s ', 7, 'http://www.tammanager.com/admin/assets/uploads/whats_new/48-sf-aspirations-salon-opening1.jpg', 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `ad`
--
ALTER TABLE `ad`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `admin_users`
--
ALTER TABLE `admin_users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `booking_details`
--
ALTER TABLE `booking_details`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `booking_history`
--
ALTER TABLE `booking_history`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cycle_slider`
--
ALTER TABLE `cycle_slider`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `fav_shops`
--
ALTER TABLE `fav_shops`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`,`shop_id`),
  ADD KEY `shop_id` (`shop_id`);

--
-- Indexes for table `keys`
--
ALTER TABLE `keys`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `main_services`
--
ALTER TABLE `main_services`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `offers`
--
ALTER TABLE `offers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `rating`
--
ALTER TABLE `rating`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `review`
--
ALTER TABLE `review`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `saloon_users`
--
ALTER TABLE `saloon_users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `shop_details`
--
ALTER TABLE `shop_details`
  ADD PRIMARY KEY (`id`),
  ADD KEY `created_user` (`created_user`);

--
-- Indexes for table `shop_gallery`
--
ALTER TABLE `shop_gallery`
  ADD PRIMARY KEY (`id`),
  ADD KEY `shop_id` (`shop_id`);

--
-- Indexes for table `shop_services`
--
ALTER TABLE `shop_services`
  ADD PRIMARY KEY (`id`),
  ADD KEY `shop_id` (`shop_id`,`service_id`),
  ADD KEY `shop_id_2` (`shop_id`),
  ADD KEY `service_id` (`service_id`);

--
-- Indexes for table `slider`
--
ALTER TABLE `slider`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `testimonials`
--
ALTER TABLE `testimonials`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `trending`
--
ALTER TABLE `trending`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `whats_new`
--
ALTER TABLE `whats_new`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `ad`
--
ALTER TABLE `ad`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `admin_users`
--
ALTER TABLE `admin_users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `booking_details`
--
ALTER TABLE `booking_details`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;
--
-- AUTO_INCREMENT for table `booking_history`
--
ALTER TABLE `booking_history`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
--
-- AUTO_INCREMENT for table `cycle_slider`
--
ALTER TABLE `cycle_slider`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `fav_shops`
--
ALTER TABLE `fav_shops`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `keys`
--
ALTER TABLE `keys`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `main_services`
--
ALTER TABLE `main_services`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `offers`
--
ALTER TABLE `offers`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `rating`
--
ALTER TABLE `rating`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
--
-- AUTO_INCREMENT for table `review`
--
ALTER TABLE `review`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
--
-- AUTO_INCREMENT for table `saloon_users`
--
ALTER TABLE `saloon_users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `settings`
--
ALTER TABLE `settings`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `shop_details`
--
ALTER TABLE `shop_details`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
--
-- AUTO_INCREMENT for table `shop_gallery`
--
ALTER TABLE `shop_gallery`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;
--
-- AUTO_INCREMENT for table `shop_services`
--
ALTER TABLE `shop_services`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;
--
-- AUTO_INCREMENT for table `slider`
--
ALTER TABLE `slider`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `testimonials`
--
ALTER TABLE `testimonials`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `trending`
--
ALTER TABLE `trending`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `whats_new`
--
ALTER TABLE `whats_new`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
