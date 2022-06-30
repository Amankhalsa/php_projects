-- phpMyAdmin SQL Dump
-- version 4.0.10.14
-- http://www.phpmyadmin.net
--
-- Host: localhost:3306
-- Generation Time: Oct 21, 2017 at 01:32 PM
-- Server version: 10.1.24-MariaDB-cll-lve
-- PHP Version: 5.6.20

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `rajbjszc_ecm-new`
--

-- --------------------------------------------------------

--
-- Table structure for table `area`
--

CREATE TABLE IF NOT EXISTS `area` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) CHARACTER SET utf8 NOT NULL,
  `description` varchar(1000) CHARACTER SET utf8 NOT NULL,
  `x` varchar(10) CHARACTER SET utf8 NOT NULL,
  `y` varchar(10) CHARACTER SET utf8 NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=73 ;

--
-- Dumping data for table `area`
--

INSERT INTO `area` (`id`, `name`, `description`, `x`, `y`) VALUES
(70, 'Area 1', '<p>Florida</p>\n', '', ''),
(71, 'Area 2', '<p>California</p>\n', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `bbank`
--

CREATE TABLE IF NOT EXISTS `bbank` (
  `id` int(100) NOT NULL AUTO_INCREMENT,
  `gname` varchar(100) CHARACTER SET utf8 NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=9 ;

--
-- Dumping data for table `bbank`
--

INSERT INTO `bbank` (`id`, `gname`) VALUES
(1, 'A+'),
(2, 'A-'),
(3, 'B+'),
(4, 'B-'),
(5, 'AB+'),
(6, 'AB-'),
(7, 'O+'),
(8, 'O-');

-- --------------------------------------------------------

--
-- Table structure for table `event`
--

CREATE TABLE IF NOT EXISTS `event` (
  `id` int(100) NOT NULL AUTO_INCREMENT,
  `event_id` varchar(100) CHARACTER SET utf8 NOT NULL,
  `organiser` varchar(500) CHARACTER SET utf8 NOT NULL,
  `location` varchar(500) CHARACTER SET utf8 NOT NULL,
  `contact` varchar(100) CHARACTER SET utf8 NOT NULL,
  `date` varchar(100) CHARACTER SET utf8 NOT NULL,
  `s_time` varchar(100) CHARACTER SET utf8 NOT NULL,
  `e_time` varchar(100) CHARACTER SET utf8 NOT NULL,
  `subject` varchar(1000) CHARACTER SET utf8 NOT NULL,
  `description` varchar(1000) CHARACTER SET utf8 NOT NULL,
  `guests` varchar(1000) CHARACTER SET utf8 NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=19 ;

-- --------------------------------------------------------

--
-- Table structure for table `expense`
--

CREATE TABLE IF NOT EXISTS `expense` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `category` varchar(100) CHARACTER SET utf8 NOT NULL,
  `date` varchar(100) CHARACTER SET utf8 NOT NULL,
  `amount` varchar(100) CHARACTER SET utf8 NOT NULL,
  `user` varchar(100) CHARACTER SET utf8 NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=35 ;

-- --------------------------------------------------------

--
-- Table structure for table `expense_category`
--

CREATE TABLE IF NOT EXISTS `expense_category` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `category` varchar(100) CHARACTER SET utf8 NOT NULL,
  `description` varchar(100) CHARACTER SET utf8 NOT NULL,
  `x` varchar(100) CHARACTER SET utf8 NOT NULL,
  `y` varchar(100) CHARACTER SET utf8 NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=13 ;

--
-- Dumping data for table `expense_category`
--

INSERT INTO `expense_category` (`id`, `category`, `description`, `x`, `y`) VALUES
(11, 'Volunteer Training', 'Soft Skills Training ', '', ''),
(10, 'Advertisement', 'Poster, Banner, Miking, TVC, Door-to-Door etc', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `groups`
--

CREATE TABLE IF NOT EXISTS `groups` (
  `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(20) NOT NULL,
  `description` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=9 ;

--
-- Dumping data for table `groups`
--

INSERT INTO `groups` (`id`, `name`, `description`) VALUES
(1, 'admin', 'Administrator'),
(2, 'members', 'General User'),
(3, 'Accountant', 'For Financial Activities'),
(4, 'Volunteer', ''),
(5, 'Voter', ''),
(6, 'Nurse', ''),
(7, 'Pharmacist', ''),
(8, 'Laboratorist', '');

-- --------------------------------------------------------

--
-- Table structure for table `login_attempts`
--

CREATE TABLE IF NOT EXISTS `login_attempts` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `ip_address` varchar(15) NOT NULL,
  `login` varchar(100) NOT NULL,
  `time` int(11) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE IF NOT EXISTS `settings` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `system_vendor` varchar(100) CHARACTER SET utf8 NOT NULL,
  `title` varchar(100) CHARACTER SET utf8 NOT NULL,
  `address` varchar(100) CHARACTER SET utf8 NOT NULL,
  `phone` varchar(100) CHARACTER SET utf8 NOT NULL,
  `email` varchar(100) CHARACTER SET utf8 NOT NULL,
  `facebook_id` varchar(100) CHARACTER SET utf8 NOT NULL,
  `currency` varchar(100) CHARACTER SET utf8 NOT NULL,
  `language` varchar(100) CHARACTER SET utf8 NOT NULL,
  `discount` varchar(100) CHARACTER SET utf8 NOT NULL,
  `vat` varchar(100) CHARACTER SET utf8 NOT NULL,
  `codec_username` varchar(100) CHARACTER SET utf8 NOT NULL,
  `codec_purchase_code` varchar(100) CHARACTER SET utf8 NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`id`, `system_vendor`, `title`, `address`, `phone`, `email`, `facebook_id`, `currency`, `language`, `discount`, `vat`, `codec_username`, `codec_purchase_code`) VALUES
(1, 'Election Campaign Management System', 'Election Campaign Management System', 'Bashundhara R/A- 1229, Bangladesh', '+88 00123456789', 'admin@example.com', '#', '$', 'english', 'flat', 'percentage', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `sms`
--

CREATE TABLE IF NOT EXISTS `sms` (
  `id` int(100) NOT NULL AUTO_INCREMENT,
  `date` varchar(100) CHARACTER SET utf8 NOT NULL,
  `message` varchar(100) CHARACTER SET utf8 NOT NULL,
  `recipient` varchar(100) CHARACTER SET utf8 NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=21 ;

-- --------------------------------------------------------

--
-- Table structure for table `sms_settings`
--

CREATE TABLE IF NOT EXISTS `sms_settings` (
  `id` int(100) NOT NULL AUTO_INCREMENT,
  `username` varchar(100) CHARACTER SET utf8 NOT NULL,
  `password` varchar(100) CHARACTER SET utf8 NOT NULL,
  `api_id` varchar(100) CHARACTER SET utf8 NOT NULL,
  `user` varchar(100) CHARACTER SET utf8 NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `sms_settings`
--

INSERT INTO `sms_settings` (`id`, `username`, `password`, `api_id`, `user`) VALUES
(1, 'rizviplabon', 'code123456', '3570596', '');

-- --------------------------------------------------------

--
-- Table structure for table `snw`
--

CREATE TABLE IF NOT EXISTS `snw` (
  `id` int(100) NOT NULL AUTO_INCREMENT,
  `type` varchar(100) CHARACTER SET utf8 NOT NULL,
  `topic` varchar(1000) CHARACTER SET utf8 NOT NULL,
  `note` varchar(1000) CHARACTER SET utf8 NOT NULL,
  `note1` varchar(1000) CHARACTER SET utf8 NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=45 ;

-- --------------------------------------------------------

--
-- Table structure for table `team`
--

CREATE TABLE IF NOT EXISTS `team` (
  `id` int(100) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) CHARACTER SET utf8 NOT NULL,
  `area` varchar(100) CHARACTER SET utf8 NOT NULL,
  `members` varchar(500) CHARACTER SET utf8 NOT NULL,
  `task` varchar(1000) CHARACTER SET utf8 NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=35 ;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE IF NOT EXISTS `users` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `ip_address` varchar(15) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(255) NOT NULL,
  `salt` varchar(255) DEFAULT NULL,
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
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=190 ;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `ip_address`, `username`, `password`, `salt`, `email`, `activation_code`, `forgotten_password_code`, `forgotten_password_time`, `remember_code`, `created_on`, `last_login`, `active`, `first_name`, `last_name`, `company`, `phone`) VALUES
(1, '127.0.0.1', 'admin', '$2y$08$1woBcvBnl5OkQ4Dar90P0eSKmHO1dfmKwhZS3N7xVmPPv2wIsZysi', '', 'admin@example.com', '', NULL, NULL, NULL, 1268889823, 1508607004, 1, 'Admin', 'istrator', 'ADMIN', '0'),
(181, '103.231.160.74', 'Mr Volunteer', '$2y$08$b9GeTvY/m34YIVOpW3ySrOFrzfPkDKtFUl0oE5iotGx/E9v5KN5Oi', NULL, 'volunteer@ecms.com', NULL, NULL, NULL, NULL, 1448367464, NULL, 1, NULL, NULL, NULL, NULL),
(182, '103.231.160.74', 'Mr Voter', '$2y$08$VE/xsVFakOkPPBdW8rsnD.65078HGGuVfQxeRuuA5.4erM2blZxNS', NULL, 'voter@ecms.com', NULL, NULL, NULL, NULL, 1448367534, NULL, 1, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `users_groups`
--

CREATE TABLE IF NOT EXISTS `users_groups` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(11) unsigned NOT NULL,
  `group_id` mediumint(8) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `uc_users_groups` (`user_id`,`group_id`),
  KEY `fk_users_groups_users1_idx` (`user_id`),
  KEY `fk_users_groups_groups1_idx` (`group_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=192 ;

--
-- Dumping data for table `users_groups`
--

INSERT INTO `users_groups` (`id`, `user_id`, `group_id`) VALUES
(1, 1, 1),
(2, 1, 2),
(183, 181, 4),
(184, 182, 5);

-- --------------------------------------------------------

--
-- Table structure for table `volunteer`
--

CREATE TABLE IF NOT EXISTS `volunteer` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `img_url` varchar(100) CHARACTER SET utf8 NOT NULL,
  `name` varchar(100) CHARACTER SET utf8 NOT NULL,
  `email` varchar(100) CHARACTER SET utf8 NOT NULL,
  `address` varchar(100) CHARACTER SET utf8 NOT NULL,
  `phone` varchar(100) CHARACTER SET utf8 NOT NULL,
  `area` varchar(100) CHARACTER SET utf8 NOT NULL,
  `profile` varchar(100) CHARACTER SET utf8 NOT NULL,
  `x` varchar(100) CHARACTER SET utf8 NOT NULL,
  `y` varchar(10) CHARACTER SET utf32 NOT NULL,
  `ion_user_id` varchar(100) CHARACTER SET utf8 NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=45 ;

--
-- Dumping data for table `volunteer`
--

INSERT INTO `volunteer` (`id`, `img_url`, `name`, `email`, `address`, `phone`, `area`, `profile`, `x`, `y`, `ion_user_id`) VALUES
(42, '', 'Mr Volunteer', 'volunteer@ecms.com', 'Bashundhara R/A- 1229, Bangladesh', '+88 2467242444', '70', 'Working as a district head of the party.', '', '', '181');

-- --------------------------------------------------------

--
-- Table structure for table `voter`
--

CREATE TABLE IF NOT EXISTS `voter` (
  `id` int(100) NOT NULL AUTO_INCREMENT,
  `img_url` varchar(100) CHARACTER SET utf8 NOT NULL,
  `name` varchar(100) CHARACTER SET utf8 NOT NULL,
  `email` varchar(100) CHARACTER SET utf8 NOT NULL,
  `area` varchar(100) CHARACTER SET utf8 NOT NULL,
  `category` varchar(100) CHARACTER SET utf8 NOT NULL,
  `address` varchar(100) CHARACTER SET utf8 NOT NULL,
  `phone` varchar(100) CHARACTER SET utf8 NOT NULL,
  `contacted` varchar(100) CHARACTER SET utf8 NOT NULL,
  `sex` varchar(100) CHARACTER SET utf8 NOT NULL,
  `birthdate` varchar(100) CHARACTER SET utf8 NOT NULL,
  `age` varchar(100) CHARACTER SET utf8 NOT NULL,
  `bloodgroup` varchar(100) CHARACTER SET utf8 NOT NULL,
  `ion_user_id` varchar(100) CHARACTER SET utf8 NOT NULL,
  `voter_id` varchar(100) CHARACTER SET utf8 NOT NULL,
  `add_date` varchar(100) CHARACTER SET utf8 NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=64 ;

--
-- Dumping data for table `voter`
--

INSERT INTO `voter` (`id`, `img_url`, `name`, `email`, `area`, `category`, `address`, `phone`, `contacted`, `sex`, `birthdate`, `age`, `bloodgroup`, `ion_user_id`, `voter_id`, `add_date`) VALUES
(58, '', 'Mr Voter', 'voter@ecms.com', '71', 'Petential', 'Bashundhara R/A- 1229, Bangladesh', '+88542342424', 'Yes', '', '11/25/2015', '', 'A+', '182', '27664823487324', '11/24/15');

-- --------------------------------------------------------

--
-- Table structure for table `voter_category`
--

CREATE TABLE IF NOT EXISTS `voter_category` (
  `id` int(100) NOT NULL AUTO_INCREMENT,
  `category` varchar(100) CHARACTER SET utf8 NOT NULL,
  `description` varchar(100) CHARACTER SET utf8 NOT NULL,
  `y` varchar(100) CHARACTER SET utf8 NOT NULL,
  `z` varchar(100) CHARACTER SET utf8 NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `voter_category`
--

INSERT INTO `voter_category` (`id`, `category`, `description`, `y`, `z`) VALUES
(1, 'Petential', 'Petential', '', '');

--
-- Constraints for dumped tables
--

--
-- Constraints for table `users_groups`
--
ALTER TABLE `users_groups`
  ADD CONSTRAINT `fk_users_groups_groups1` FOREIGN KEY (`group_id`) REFERENCES `groups` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_users_groups_users1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
