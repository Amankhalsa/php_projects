-- phpMyAdmin SQL Dump
-- version 4.7.3
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Dec 30, 2017 at 03:58 PM
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
-- Database: `tammanag_laundary`
--

-- --------------------------------------------------------

--
-- Table structure for table `sv_admin_login`
--

CREATE TABLE `sv_admin_login` (
  `admin_id` int(20) NOT NULL,
  `user_name` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `email_id` varchar(255) NOT NULL,
  `site_name` varchar(255) NOT NULL,
  `logo` varchar(255) NOT NULL,
  `favicon` varchar(255) NOT NULL,
  `site_desc` varchar(255) NOT NULL,
  `keyword` varchar(255) NOT NULL,
  `site_url` varchar(255) NOT NULL,
  `paypal_id` varchar(250) NOT NULL,
  `currency_mode` varchar(100) NOT NULL,
  `paypal_site_mode` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sv_admin_login`
--

INSERT INTO `sv_admin_login` (`admin_id`, `user_name`, `password`, `email_id`, `site_name`, `logo`, `favicon`, `site_desc`, `keyword`, `site_url`, `paypal_id`, `currency_mode`, `paypal_site_mode`) VALUES
(1, 'admin', '21232f297a57a5a743894a0e4a801fc3', 'support@migrateshop.com', 'Tam Laundary', 'default-logo.png', 'favicon.png', 'Tam Laundary service php script', 'HTML,CSS,XML,JavaScript,php', 'http://localhost/laundary', 'abcd.com', 'USD', 'test');

-- --------------------------------------------------------

--
-- Table structure for table `sv_cart`
--

CREATE TABLE `sv_cart` (
  `id` int(20) NOT NULL,
  `sub_services_id` varchar(100) NOT NULL,
  `qty` varchar(100) NOT NULL,
  `amount` varchar(100) NOT NULL,
  `packages_price` varchar(150) NOT NULL,
  `order_id` varchar(150) NOT NULL,
  `phone_no` varchar(250) NOT NULL,
  `status` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sv_cart`
--

INSERT INTO `sv_cart` (`id`, `sub_services_id`, `qty`, `amount`, `packages_price`, `order_id`, `phone_no`, `status`) VALUES
(3, '3', '2', '20', '20', '2', '12345', 'completed'),
(8, '3', '5', '20', '10', '5', '12345', 'completed'),
(10, '6', '1', '60', '20', '6', '12345', 'completed'),
(12, '3', '1', '20', '20', '8', '1234567890', 'completed'),
(14, '1', '1', '10', '10', '10', '123456', 'completed'),
(15, '1', '1', '10', '10', '11', 'lakshmi', 'completed'),
(16, '1', '1', '10', '10', '11', 'lakshmi', 'completed'),
(17, '1', '1', '10', '10', '12', 'lakshmi', 'completed'),
(21, '2', '2', '20', '10', '17', 'demo', 'completed'),
(22, '5', '1', '30', '20', '18', 'demo', 'completed'),
(23, '6', '1', '60', '10', '19', 'dfsd', 'completed'),
(24, '1', '1', '10', '10', '20', 'sdfs', 'completed'),
(26, '3', '1', '20', '10', '20', 'sdfs', 'completed'),
(27, '1', '2', '10', '10', '20', 'sdfs', 'completed'),
(28, '1', '1', '10', '10', '21', '987654321', 'completed'),
(29, '2', '1', '20', '20', '22', 'demo', 'completed'),
(30, '1', '1', '10', '10', '22', 'demo', 'completed'),
(31, '1', '1', '10', '10', '24', '123456', 'completed'),
(32, '1', '1', '10', '10', '25', '123456', 'completed'),
(33, '1', '1', '10', '10', '26', '123456', 'completed'),
(34, '1', '1', '10', '10', '28', '123456', 'completed'),
(35, '1', '1', '10', '10', '29', '123456', 'completed'),
(36, '1', '1', '10', '10', '31', '', 'completed'),
(37, '1', '1', '10', '10', '32', '', 'completed'),
(38, '1', '2', '10', '10', '39', '3423434', 'completed'),
(39, '1', '2', '10', '10', '40', '345345', 'completed'),
(40, '1', '1', '10', '10', '41', '222', 'completed'),
(41, '1', '1', '10', '10', '41', '222', 'completed'),
(42, '3', '1', '20', '10', '42', '2222', 'completed'),
(43, '3', '1', '20', '20', '43', '2222', 'completed'),
(44, '2', '1', '20', '10', '44', '1478523690', 'completed'),
(45, '2', '1', '20', '20', '45', '1478523690', 'completed');

-- --------------------------------------------------------

--
-- Table structure for table `sv_contact`
--

CREATE TABLE `sv_contact` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `contact_no` varchar(255) NOT NULL,
  `msg` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `sv_packages`
--

CREATE TABLE `sv_packages` (
  `id` int(25) NOT NULL,
  `packages_name` varchar(255) NOT NULL,
  `price` varchar(255) NOT NULL,
  `description` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sv_packages`
--

INSERT INTO `sv_packages` (`id`, `packages_name`, `price`, `description`) VALUES
(1, 'Ordinary', '10', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. '),
(2, 'Urgent', '20', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. ');

-- --------------------------------------------------------

--
-- Table structure for table `sv_pages`
--

CREATE TABLE `sv_pages` (
  `id` int(25) NOT NULL,
  `page_name` varchar(255) NOT NULL,
  `page_content` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sv_pages`
--

INSERT INTO `sv_pages` (`id`, `page_name`, `page_content`) VALUES
(1, 'home page', '<div class=\"row service_offer\">\r\n<div class=\"min-space\">&nbsp;</div>\r\n<h2 align=\"center\">Services We Offer</h2>\r\n<div class=\"container\">\r\n<div class=\"col-md-12 col-lg-12\">\r\n<div class=\"col-lg-3 col-md-3 col-sm-3 service_details\"><img src=\"img/dry-clean.jpg\" />\r\n<h5 align=\"center\">Dry Cleaning &amp; Laundary</h5>\r\n</div>\r\n<div class=\"col-lg-3 col-md-3 col-sm-3 service_details\"><img src=\"img/wash-fold.jpg\" />\r\n<h5 align=\"center\">Wash &amp; Fold</h5>\r\n</div>\r\n<div class=\"col-lg-3 col-md-3 col-sm-3 service_details\"><img src=\"img/shoe-shine.jpg\" />\r\n<h5 align=\"center\">Shoe Shining</h5>\r\n</div>\r\n<div class=\"col-lg-3 col-md-3 col-sm-3 service_details\"><img src=\"img/wash-iron.jpg\" />\r\n<h5 align=\"center\">Wash &amp; Iron</h5>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n<div class=\"row how_its_works\">\r\n<div class=\"min-space\">&nbsp;</div>\r\n<h2 align=\"center\">How its works</h2>\r\n<div class=\"container\">\r\n<div class=\"col-md-12 col-lg-12\">\r\n<div class=\"col-lg-4 col-md-4 col-sm-4 how_details wow animated zoomIn\"><img src=\"img/contact.jpg\" />\r\n<h4 align=\"center\">Contact us to book a term</h4>\r\n<p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor. Aenean massa.</p>\r\n</div>\r\n<div class=\"col-lg-4 col-md-4 col-sm-4 how_details wow animated zoomIn\"><img src=\"img/cleaning_girls.png\" />\r\n<h4 align=\"center\">Welcome to Our Company</h4>\r\n<p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor. Aenean massa.</p>\r\n</div>\r\n<div class=\"col-lg-4 col-md-4 col-sm-4 how_details wow animated zoomIn\"><img src=\"img/services_premium.jpg\" />\r\n<h4 align=\"center\">Enjoy the premium Services</h4>\r\n<p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor. Aenean massa.</p>\r\n</div>\r\n</div>\r\n</div>\r\n<div class=\"min-space\">&nbsp;</div>\r\n</div>\r\n<div class=\"row we_service_section\">\r\n<div class=\"min-space\">&nbsp;</div>\r\n<div class=\"container\">\r\n<div class=\"col-md-12 col-lg-12\">\r\n<div class=\"col-lg-6 col-md-6 col-sm-6 we_serve\">\r\n<div class=\"row\">\r\n<h2>Industried we serve</h2>\r\n<p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor. Aenean massa.Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor. Aenean massa.</p>\r\n<div class=\"col-md-6 col-sm-6 col-lg-6 we_serve_area\">\r\n<ul>\r\n<li class=\"wow animated fadeInDown\"><img src=\"img/1.png\" /> Airports &amp; Airlines</li>\r\n<li class=\"wow animated fadeInDown\"><img src=\"img/2.png\" /> Schools &amp; Universities</li>\r\n<li class=\"wow animated fadeInDown\"><img src=\"img/hostel.png\" /> Hostel</li>\r\n</ul>\r\n</div>\r\n<div class=\"col-md-6 col-sm-6 col-lg-6 we_serve_area\">\r\n<ul>\r\n<li class=\"wow animated fadeInDown\"><img src=\"img/home.png\" /> Home</li>\r\n<li class=\"wow animated fadeInDown\"><img src=\"img/5.png\" /> Medical Facilities</li>\r\n<li class=\"wow animated fadeInDown\"><img src=\"img/6.png\" /> Entertainment Venues</li>\r\n</ul>\r\n</div>\r\n<div class=\"left\"><a class=\"read-more\" href=\"#\"> Become a cleaner </a></div>\r\n</div>\r\n</div>\r\n<div class=\"col-lg-6 col-md-6 col-sm-6 we_service wow animated fadeInRight\"><img src=\"img/cleaner_girl.jpg\" /></div>\r\n</div>\r\n</div>\r\n</div>\r\n<section id=\"customer-testimonials-teaser\" class=\"slideshow-teaser teaser bg-secondary\">\r\n<div class=\"min-space\">&nbsp;</div>\r\n<h3>What our customers say</h3>\r\n<div class=\"container\">\r\n<div class=\"three-columns blockquote\">\r\n<ul>\r\n<li class=\"col-lg-4 col-md-4 col-sm-4\"><br /> <br />\r\n<blockquote><em>\"The gals did a great job. It is so nice for me to come home to a clean house.Thank you Clean and Simple!\"</em>\r\n<p><strong>Jerry</strong></p>\r\n</blockquote>\r\n<div class=\"round-img round-md wow animated fadeInUp\"><img src=\"img/img1.jpg\" alt=\"Jerry\" /></div>\r\n</li>\r\n<li class=\"col-lg-4 col-md-4 col-sm-4\"><br /> <br />\r\n<blockquote><em>\"Crew did a great job.Looks lovely!\"</em>\r\n<p><strong>Joe</strong></p>\r\n</blockquote>\r\n<div class=\"round-img round-md wow animated fadeInUp\"><img src=\"img/img2.jpg\" alt=\"Joe\" /></div>\r\n</li>\r\n<li class=\"col-lg-4 col-md-4 col-sm-4\"><br /> <br />\r\n<blockquote><em>\"Clean and fresh!&hellip;would also like to thank whoever re-made my bed, that was a treat&hellip;.keep up the good work\"</em>\r\n<p><strong>Shelly</strong></p>\r\n</blockquote>\r\n<div class=\"round-img round-md wow animated fadeInUp\"><img src=\"img/img3.jpg\" alt=\"Shelly\" /></div>\r\n</li>\r\n</ul>\r\n</div>\r\n</div>\r\n<div class=\"min-space\">&nbsp;</div>\r\n</section>\r\n<div class=\"row contact_us_details\">\r\n<div class=\"min-space\">&nbsp;</div>\r\n<div class=\"container\">\r\n<div class=\"col-md-12 col-lg-12\">\r\n<div class=\"col-lg-4 col-md-4 col-sm-4 contact_details_1\"><span class=\"fa fa-calendar\">&nbsp;</span>\r\n<p>We are open</p>\r\n<h4>Mon-Fri :08.00 - 17.00</h4>\r\n</div>\r\n<div class=\"col-lg-4 col-md-4 col-sm-4 contact_details_2\"><span class=\"fa fa-phone\">&nbsp;</span>\r\n<p>Call us now</p>\r\n<h4>+12 34567890</h4>\r\n</div>\r\n<div class=\"col-lg-4 col-md-4 col-sm-4 contact_details_3\"><span class=\"fa fa-envelope-o\">&nbsp;</span>\r\n<p>Order the services by mail</p>\r\n<h4>info@company.com</h4>\r\n</div>\r\n</div>\r\n</div>\r\n<div class=\"min-space\">&nbsp;</div>\r\n</div>'),
(2, 'how it works', '<section class=\"teaser bg-primary three-columns\">\r\n<div class=\"container\">\r\n<div class=\"min-space\">&nbsp;</div>\r\n<h3>Book a Helpling from $29 per hour &ndash; just 3 easy steps</h3>\r\n<ul>\r\n<li class=\"home_icon col-sm-4 col-md-4 col-lg-4\"><span class=\"fa fa-map font-icon\">&nbsp;</span>\r\n<h5 class=\"heading-tag\">Enter Your Location</h5>\r\n<p>Enter the address of the place you need cleaned.</p>\r\n</li>\r\n<li class=\"home_icon col-sm-4 col-md-4 col-lg-4\"><span class=\"fa fa-calendar-o font-icon\">&nbsp;</span>\r\n<h5 class=\"heading-tag\">Make an Appointment</h5>\r\n<p>Choose a date and time that best suits you.</p>\r\n</li>\r\n<li class=\"home_icon col-sm-4 col-md-4 col-lg-4\"><span class=\"fa fa-smile-o font-icon\">&nbsp;</span>\r\n<h5 class=\"heading-tag\">Enjoy a Clean Home</h5>\r\n<p>Sit back and enjoy. We will take care of the rest.</p>\r\n</li>\r\n</ul>\r\n<form id=\"new_bid\" class=\"signup inline-submit\" action=\"postal_code.php\" method=\"post\" data-remote=\"true\"><input id=\"postal_code\" class=\"postcode tool-tipped postcode-validations\" name=\"postal_code\" required=\"1\" type=\"text\" value=\"\" placeholder=\"Postal\" /> <button name=\"submit\" type=\"submit\">Book a Cleaning! &nbsp;</button></form></div>\r\n<div class=\"min-space\">&nbsp;</div>\r\n</section>\r\n<section class=\"teaser works-bg\">\r\n<div class=\"min-space\">&nbsp;</div>\r\n<div class=\"container\">\r\n<h1 style=\"color: #fff;\">Most Frequent Questions</h1>\r\n<div class=\"min-space\">&nbsp;</div>\r\n<div class=\"panel-group\" data-fillspace=\"0\" data-event=\"click\" data-collapsible=\"0\" data-clearstyle=\"0\" data-animated=\"slide\" data-active=\"0\" data-disabled=\"0\" data-autoheight=\"0\">\r\n<div class=\"col-lg-3 col-sm-3 col-md-3 \">\r\n<div class=\"panel qstn-bg\">\r\n<div class=\"panel-heading head\">\r\n<div class=\"question\">Question</div>\r\n</div>\r\n<div style=\"padding: 10px 20px;\">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Duis ut lacus a ligula placerat mattis. Vivamus in ligula at lacus ullamcorper malesuada.</div>\r\n</div>\r\n</div>\r\n<div class=\"col-lg-3 col-sm-3 col-md-3 \">\r\n<div class=\"panel qstn-bg\">\r\n<div class=\"panel-heading head\">\r\n<div class=\"question\">Question</div>\r\n</div>\r\n<div style=\"padding: 10px 20px;\">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Duis ut lacus a ligula placerat mattis. Vivamus in ligula at lacus ullamcorper malesuada.</div>\r\n</div>\r\n</div>\r\n<div class=\"col-lg-3 col-sm-3 col-md-3 \">\r\n<div class=\"panel qstn-bg\">\r\n<div class=\"panel-heading head\">\r\n<div class=\"question\">Question</div>\r\n</div>\r\n<div style=\"padding: 10px 20px;\">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Duis ut lacus a ligula placerat mattis. Vivamus in ligula at lacus ullamcorper malesuada.</div>\r\n</div>\r\n</div>\r\n<div class=\"col-lg-3 col-sm-3 col-md-3 \">\r\n<div class=\"panel qstn-bg\">\r\n<div class=\"panel-heading head\">\r\n<div class=\"question\">Question</div>\r\n</div>\r\n<div style=\"padding: 10px 20px;\">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Duis ut lacus a ligula placerat mattis. Vivamus in ligula at lacus ullamcorper malesuada.</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n<div class=\"min-space\">&nbsp;</div>\r\n</section>\r\n<section style=\"text-align: center;\">\r\n<div class=\"min-space\">&nbsp;</div>\r\n<div class=\"container\">\r\n<div class=\"col-lg-6 col-md-6 col-sm-6 col-sm-6 col-md-6 col-lg-6 col-md-6 col-sm-6\"><img class=\"img-reponsive\" src=\"../img/cleaning-services.png\" /></div>\r\n<div class=\"col-lg-6 col-md-6 col-sm-6 col-sm-6 col-md-6 col-lg-6 col-md-6 col-sm-6\">\r\n<div class=\"email\">\r\n<div class=\"min-space\">&nbsp;</div>\r\n<p><strong>Couldn`t find what you were looking for?</strong> <br />Send us a direct e-mail</p>\r\n<p class=\"actions\"><a class=\"btn btn-primary btn-sm\" href=\"mailto:abcd.com\">Email</a></p>\r\n</div>\r\n</div>\r\n</div>\r\n<div class=\"min-space\">&nbsp;</div>\r\n</section>'),
(3, 'pricing', '<section class=\"teaser bg-primary\">\r\n<div>\r\n<div class=\"min-space\">&nbsp;</div>\r\n<h3>60 Seconds to Your Booking</h3>\r\n<p class=\"actions\"><a class=\"btn btn-secondary btn-lg\" href=\"../index.php\" data-checkout=\"true\">Book a Helpling</a></p>\r\n<div class=\"min-space\">&nbsp;</div>\r\n</div>\r\n</section>\r\n<section id=\"price\" class=\"teaser padding-top\">\r\n<div class=\"container\">\r\n<div class=\"min-space\">&nbsp;</div>\r\n<div class=\"col-lg-6 col-md-6 col-sm-6\">\r\n<div class=\"single-booking\">\r\n<h3>Ordinary</h3>\r\n<h4 style=\"text-align: center;\">10 USD / Hour</h4>\r\n<h5 class=\"sub-head\">Inclusive of Goods and Services Tax(GST) if applicable*</h5>\r\n<div class=\"price-icon\">&nbsp;&nbsp;&nbsp;Blouse Bonanza - 20 USD</div>\r\n<div class=\"price-icon\">&nbsp;&nbsp;&nbsp;Shirt (folded) - 20 USD</div>\r\n<div class=\"price-icon\">&nbsp;&nbsp;&nbsp;Silk top - 50 USD</div>\r\n<div class=\"price-icon\">&nbsp;&nbsp;&nbsp;Skirt - 30 USD</div>\r\n<div class=\"price-icon\">&nbsp;&nbsp;&nbsp;Shoe shining - 40 USD</div>\r\n<div class=\"price-icon\">&nbsp;&nbsp;&nbsp;Whites separated - 20 USD</div>\r\n</div>\r\n</div>\r\n<div class=\"col-lg-6 col-md-6 col-sm-6\">\r\n<div class=\"single-booking recurring\">\r\n<h3>Urgent</h3>\r\n<h4 style=\"text-align: center; color: #f3a312;\">20 USD / Hour</h4>\r\n<h5 class=\"sub-head1\">Inclusive of Goods and Services Tax(GST) if applicable*</h5>\r\n<div class=\"price-icon\">&nbsp;&nbsp;&nbsp;Skirt - 30 USD</div>\r\n<div class=\"price-icon\">&nbsp;&nbsp;&nbsp;Bag of wash &amp; fold - 60 USD</div>\r\n<div class=\"price-icon\">&nbsp;&nbsp;&nbsp;Shoe shining - 40 USD</div>\r\n<div class=\"price-icon\">&nbsp;&nbsp;&nbsp;Whites separated - 20 USD</div>\r\n<div class=\"price-icon\">&nbsp;&nbsp;&nbsp;Blouse Bonanza - 20 USD</div>\r\n<div class=\"price-icon\">&nbsp;&nbsp;&nbsp;Shirt (folded) - 20 USD</div>\r\n</div>\r\n</div>\r\n<div class=\"min-space\">&nbsp;</div>\r\n</div>\r\n</section>'),
(4, 'help', '<section class=\"teaser\">\r\n<div class=\"container\">\r\n<h3>Most Frequent Questions</h3>\r\n<div id=\"accordion-1\" class=\"accordion-font\">\r\n<h3 class=\"help-title\">How does Helpling work?</h3>\r\n<div>\r\n<p class=\"help\">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Proin fermentum volutpat justo quis cursus. Sed sit amet eros nec nibh vestibulum interdum. Praesent id sapien sem. Aenean varius laoreet urna, quis iaculis ex egestas volutpat. Praesent porta dignissim libero ac viverra. Ut non dignissim ante, gravida porta lacus. Maecenas felis neque, imperdiet a vestibulum ut, tempus sed tellus. Integer volutpat, mi et sagittis rhoncus, nulla nibh pharetra ante, ut laoreet nibh ipsum non dolor. Fusce vel velit porttitor, viverra metus eu, rhoncus tortor. Sed vulputate varius molestie.</p>\r\n</div>\r\n<h3 class=\"help-title\">How is Helpling different from a cleaning company?</h3>\r\n<div>\r\n<p class=\"help\">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Proin fermentum volutpat justo quis cursus. Sed sit amet eros nec nibh vestibulum interdum. Praesent id sapien sem. Aenean varius laoreet urna, quis iaculis ex egestas volutpat. Praesent porta dignissim libero ac viverra. Ut non dignissim ante, gravida porta lacus. Maecenas felis neque, imperdiet a vestibulum ut, tempus sed tellus. Integer volutpat, mi et sagittis rhoncus, nulla nibh pharetra ante, ut laoreet nibh ipsum non dolor. Fusce vel velit porttitor, viverra metus eu, rhoncus tortor. Sed vulputate varius molestie.</p>\r\n</div>\r\n<h3 class=\"help-title\">How can I register?</h3>\r\n<div>\r\n<p class=\"help\">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Proin fermentum volutpat justo quis cursus. Sed sit amet eros nec nibh vestibulum interdum. Praesent id sapien sem. Aenean varius laoreet urna, quis iaculis ex egestas volutpat. Praesent porta dignissim libero ac viverra. Ut non dignissim ante, gravida porta lacus. Maecenas felis neque, imperdiet a vestibulum ut, tempus sed tellus. Integer volutpat, mi et sagittis rhoncus, nulla nibh pharetra ante, ut laoreet nibh ipsum non dolor. Fusce vel velit porttitor, viverra metus eu, rhoncus tortor. Sed vulputate varius molestie.</p>\r\n</div>\r\n</div>\r\n</div>\r\n</section>'),
(5, 'contact', '<p><iframe style=\"border: 0;\" src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d26360763.088299938!2d-113.74592522530561!3d36.242734688809676!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x54eab584e432360b%3A0x1c3bb99243deb742!2sUnited+States!5e0!3m2!1sen!2sin!4v1467104302695\" width=\"100%\" height=\"450\" frameborder=\"0\" allowfullscreen=\"allowfullscreen\"></iframe></p>\r\n<h5>Address Details</h5>\r\n<p>DieSachbearbeiter Sch&ouml;nhauser Allee 167c 10435 Berlin Germany Telephone: +49 30 47373795 E-mail: moin@blindtextgenerator.de</p>');

-- --------------------------------------------------------

--
-- Table structure for table `sv_postal_code`
--

CREATE TABLE `sv_postal_code` (
  `postal_id` int(25) NOT NULL,
  `postal_code` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sv_postal_code`
--

INSERT INTO `sv_postal_code` (`postal_id`, `postal_code`) VALUES
(1, 'Houston'),
(2, 'washington'),
(3, '3HA'),
(4, 'California');

-- --------------------------------------------------------

--
-- Table structure for table `sv_services`
--

CREATE TABLE `sv_services` (
  `services_id` int(25) NOT NULL,
  `services_name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sv_services`
--

INSERT INTO `sv_services` (`services_id`, `services_name`) VALUES
(1, 'Dry Cleaning '),
(2, 'Wash and Fold'),
(3, 'Shoe Shining');

-- --------------------------------------------------------

--
-- Table structure for table `sv_services_sub`
--

CREATE TABLE `sv_services_sub` (
  `sid` int(20) NOT NULL,
  `services_name` varchar(255) NOT NULL,
  `services_sub_name` varchar(255) NOT NULL,
  `price` int(100) NOT NULL,
  `sub_services_pic` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sv_services_sub`
--

INSERT INTO `sv_services_sub` (`sid`, `services_name`, `services_sub_name`, `price`, `sub_services_pic`) VALUES
(1, '1', 'Suitably Superb: 2 suits (2 piece)', 10, '7965product1.jpg'),
(2, '1', 'Blouse Bonanza', 20, '8836product2.jpg'),
(3, '1', 'Shirt (folded)', 20, '3716product3.jpg'),
(4, '1', 'Silk top', 50, '6842product4.jpg'),
(5, '1', 'Skirt', 30, '9954product5.jpg'),
(6, '2', 'Bag of wash & fold', 60, '7551product6.jpg'),
(7, '2', 'Whites separated', 20, '5924product7.jpg'),
(8, '3', 'Shoe shining', 40, '6969product8.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `sv_service_provider`
--

CREATE TABLE `sv_service_provider` (
  `id` int(25) NOT NULL,
  `email` varchar(255) NOT NULL,
  `confirm_email` varchar(255) NOT NULL,
  `first_name` varchar(255) NOT NULL,
  `last_name` varchar(255) NOT NULL,
  `mob_no` varchar(255) NOT NULL,
  `post_code` varchar(255) NOT NULL,
  `exp` varchar(255) NOT NULL,
  `paid_work` varchar(255) NOT NULL,
  `gender` varchar(255) NOT NULL,
  `dob` date NOT NULL,
  `nationality` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL,
  `suburb` varchar(255) NOT NULL,
  `abt_us` varchar(255) NOT NULL,
  `phone_no` varchar(255) NOT NULL,
  `creat_time` date NOT NULL,
  `update_time` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `sv_user_order`
--

CREATE TABLE `sv_user_order` (
  `order_id` int(25) NOT NULL,
  `pickup_date` varchar(255) NOT NULL,
  `pickup_time` varchar(200) NOT NULL,
  `phone_no` varchar(255) NOT NULL,
  `payment_mode` varchar(100) NOT NULL,
  `payment_status` varchar(100) NOT NULL,
  `delivery_date` varchar(255) NOT NULL,
  `delivery_time` varchar(255) NOT NULL,
  `total_price` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL,
  `city` varchar(255) NOT NULL,
  `pin_code` varchar(200) NOT NULL,
  `date` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sv_user_order`
--

INSERT INTO `sv_user_order` (`order_id`, `pickup_date`, `pickup_time`, `phone_no`, `payment_mode`, `payment_status`, `delivery_date`, `delivery_time`, `total_price`, `address`, `city`, `pin_code`, `date`) VALUES
(2, '2016-08-31', '3:00 PM', '1234567890', 'paypal', 'completed', '2016-08-31', '1:00 AM', '100', '', '', '', '2016-08-29'),
(3, '2016-11-18', '5:00 PM', '1234567890', 'cash', 'completed', '2016-11-25', '4:00 PM', '20', '', '', '', '2016-11-14'),
(4, '2016-11-17', '9:00 AM', '1234567890', 'cash', 'completed', '2016-11-29', '6:00 PM', '80', '', '', '', '2016-11-14'),
(5, '2016-11-16', '9:00 AM', '1234567890', 'cash', 'completed', '2016-11-24', '4:00 PM', '110', '', '', '', '2016-11-14'),
(6, '2016-11-16', '6:00 PM', '1234567890', 'cash', 'completed', '2016-11-17', '9:00 PM', '130', '', '', '', '2016-11-14'),
(7, '2016-11-25', '5:00 PM', '1234567890', 'paypal', 'pending', '2016-11-26', '8:00 PM', '30', '', '', '', '2016-11-17'),
(8, '2016-11-19', '8:00 PM', '1234567890', 'cash', 'completed', '2016-11-26', '7:00 PM', '40', '', '', '', '2016-11-17'),
(9, '2016-11-26', '9:00 PM', '123456', 'cash', 'completed', '2016-11-30', '7:00 AM', '40', 'address', 'city', '626111', '2016-11-25'),
(10, '2016-11-30', '8:00 AM', '123456', 'cash', 'completed', '2016-11-30', '7:00 AM', '20', 'address1', 'city1', '6261111', '2016-11-25'),
(11, '2016-11-30', '7:00 AM', 'lakshmi', 'cash', 'completed', '2016-11-30', '7:00 PM', '20', 'madurai', 'anna nagar', '626', '2016-11-25'),
(12, '2016-11-30', '7:00 AM', 'lakshmi', 'cash', 'completed', '2016-11-30', '7:00 AM', '20', 'madurai1', 'anna nagar1', '6261', '2016-11-25'),
(19, '2016-11-26', '8:00 PM', 'dfsd', 'cash', 'completed', '2016-11-29', '7:00 AM', '70', 'sdfsd', '  fsdf', 'sdfsd', '2016-11-25'),
(20, '2016-11-30', '7:00 AM', 'sdfs', 'cash', 'completed', '2016-11-30', '7:00 AM', '50', 'fsdf', 'sds', 'dsd', '2016-11-25'),
(21, '2016-11-25', '8:00 AM', '987654321', 'cash', 'completed', '2016-11-30', '6:00 PM', '20', 'dfsdf', 'washington', '545645', '2016-11-25'),
(35, '2016-11-26', '10:00 AM', '43', 'cash', 'completed', '2016-11-30', '6:00 PM', '', 'fdf', 'dfs', 'df', '2016-11-25'),
(36, '2016-11-26', '10:00 AM', '43', 'cash', 'completed', '2016-11-30', '6:00 PM', '', 'fdf', 'dfs', 'df', '2016-11-25'),
(37, '2016-11-26', '10:00 AM', '43', 'cash', 'completed', '2016-11-30', '6:00 PM', '', 'fdf', 'dfs', 'df', '2016-11-25'),
(38, '1970-01-01', '', '43', '', 'pending', '1970-01-01', '', '', '', '', '', '2016-11-25'),
(39, '2016-11-26', '7:00 AM', '3423434', 'cash', 'completed', '2016-11-30', '7:00 PM', '30', 'gdfgd', 'fgdfg', 'dfg', '2016-11-25'),
(40, '2016-11-26', '8:00 AM', '345345', 'cash', 'completed', '2016-11-29', '8:00 AM', '30', 'f', 'washington', 'gf46456', '2016-11-25'),
(41, '2016-11-25', '6:00 AM', '222', 'cash', 'completed', '2016-11-30', '7:00 AM', '20', 'dfs', 'dfsd', 'fsdf', '2016-11-25'),
(42, '2016-11-25', '7:00 AM', '2222', 'cash', 'completed', '2016-11-30', '4:00 PM', '30', 'dfs', 'dfsd', 'fsdf', '2016-11-25'),
(43, '2016-11-26', '7:00 AM', '2222', 'cash', 'completed', '2016-11-29', '8:00 PM', '40', 'dfs', 'dfsd', 'fsdf', '2016-11-25'),
(44, '2016-11-26', '8:00 AM', '1478523690', 'cash', 'completed', '2016-11-29', '7:00 PM', '30', 'CH 209', 'Houston', '5861', '2016-11-25'),
(45, '2016-11-26', '8:00 PM', '1478523690', 'cash', 'completed', '2016-11-26', '10:00 PM', '40', 'CH 210', 'Houston', '3000', '2016-11-25');

-- --------------------------------------------------------

--
-- Table structure for table `sv_user_profile`
--

CREATE TABLE `sv_user_profile` (
  `signup_id` int(25) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email_id` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `city` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL,
  `phone_no` varchar(255) NOT NULL,
  `pin_code` varchar(255) NOT NULL,
  `gender` varchar(200) NOT NULL,
  `date` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sv_user_profile`
--

INSERT INTO `sv_user_profile` (`signup_id`, `name`, `email_id`, `password`, `city`, `address`, `phone_no`, `pin_code`, `gender`, `date`) VALUES
(1, 'test', 'test@gmail.com', '098f6bcd4621d373cade4e832627b4f6', 'mdu', 'test', '1234567890', '232323', '1', ''),
(3, 'athi', 'athi@gmail.com', '1b47e01486bbd74137716457e828a709', 'city', 'address', '123456', '626111', '', '2016-11-25'),
(4, 'lakshmi', 'lakshmi', '1eaf7c068a250a38e3bab770053c14c3', 'anna nagar', 'madurai', 'lakshmi', '626', '', '2016-11-25'),
(6, 'fsdf', 'sdfs', '7d70663568cac5af684503681e3a4d41', '  fsdf', 'sdfsd', 'dfsd', 'sdfsd', '', '2016-11-25'),
(7, 'jgj', 'hh@dfdf', '6f04aa8324068801354b01b63f16f331', 'sds', 'fsdf', 'sdfs', 'dsd', '', '2016-11-25'),
(8, 'demo', 'demo@gmail', 'fe01ce2a7fbac8fafaed7c982a04e229', 'demo', 'dfjf', 'demo', 'bnsd', '1', '2016-11-25'),
(9, 'test1', 'fsdfsdf@fdg', '5a105e8b9d40e1329780d62ea2265d8a', 'washington', 'dfsdf', '987654321', '545645', '', '2016-11-25'),
(10, 'fsd', 'sdfs@fd', 'bf22a1d0acfca4af517e1417a80e92d1', 'fsdfs', 'dfsd', '123456', 'dfsdfs', '', '2016-11-25'),
(11, 'aa', 'aa@sfsdf', '4124bc0a9335c27f086f24ba207a4912', 'gddf', 'ff', '123', 'dfs', '', '2016-11-25'),
(12, 'pp', 'demoj@fd', 'c483f6ce851c9ecd9fb835ff7551737c', 'dfs', 'fd', '11', 'fdf', '', '2016-11-25'),
(13, 'fsf', 'sdfsdf@f', 'ba7893e62fc5e3cb5324626c2f332847', 'fdf', 'dd', '4334', 'dfdf', '', '2016-11-25'),
(14, 'fsdf', 'sdff@fdf', 'e369853df766fa44e1ed0ff613f563bd', 'dfs', 'fdf', '43', 'df', '', '2016-11-25'),
(15, 'aaaa', 'vv@f', '44fdb916a558ef6739cfa6378de4995a', 'fgdfg', 'gdfgd', '3423434', 'dfg', '', '2016-11-25'),
(16, 'ritu', 'athi@gmail.com', '9b24679ee2abc8ca012ca4b07223739f', '', '', '345345', 'gf46456', '', '2016-11-25'),
(17, 'qqq23', 'athi@gmail.com', '8fa14cdd754f91cc6554c9e71929cce7', 'dfsd', 'dfs', '2222', 'fsdf', '1', '2016-11-25'),
(18, 'vishnu', 'vishnu@gmail.com', '1963fd70e789022f6f5b11498f992404', 'Houston', 'CH 209', '1478523690', '3000', '1', '2016-11-25');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `sv_admin_login`
--
ALTER TABLE `sv_admin_login`
  ADD PRIMARY KEY (`admin_id`);

--
-- Indexes for table `sv_cart`
--
ALTER TABLE `sv_cart`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sv_contact`
--
ALTER TABLE `sv_contact`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sv_packages`
--
ALTER TABLE `sv_packages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sv_pages`
--
ALTER TABLE `sv_pages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sv_postal_code`
--
ALTER TABLE `sv_postal_code`
  ADD PRIMARY KEY (`postal_id`);

--
-- Indexes for table `sv_services`
--
ALTER TABLE `sv_services`
  ADD PRIMARY KEY (`services_id`);

--
-- Indexes for table `sv_services_sub`
--
ALTER TABLE `sv_services_sub`
  ADD PRIMARY KEY (`sid`);

--
-- Indexes for table `sv_service_provider`
--
ALTER TABLE `sv_service_provider`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sv_user_order`
--
ALTER TABLE `sv_user_order`
  ADD PRIMARY KEY (`order_id`);

--
-- Indexes for table `sv_user_profile`
--
ALTER TABLE `sv_user_profile`
  ADD PRIMARY KEY (`signup_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `sv_admin_login`
--
ALTER TABLE `sv_admin_login`
  MODIFY `admin_id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `sv_cart`
--
ALTER TABLE `sv_cart`
  MODIFY `id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=46;
--
-- AUTO_INCREMENT for table `sv_contact`
--
ALTER TABLE `sv_contact`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `sv_packages`
--
ALTER TABLE `sv_packages`
  MODIFY `id` int(25) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `sv_pages`
--
ALTER TABLE `sv_pages`
  MODIFY `id` int(25) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `sv_postal_code`
--
ALTER TABLE `sv_postal_code`
  MODIFY `postal_id` int(25) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `sv_services`
--
ALTER TABLE `sv_services`
  MODIFY `services_id` int(25) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `sv_services_sub`
--
ALTER TABLE `sv_services_sub`
  MODIFY `sid` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `sv_service_provider`
--
ALTER TABLE `sv_service_provider`
  MODIFY `id` int(25) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `sv_user_order`
--
ALTER TABLE `sv_user_order`
  MODIFY `order_id` int(25) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=46;
--
-- AUTO_INCREMENT for table `sv_user_profile`
--
ALTER TABLE `sv_user_profile`
  MODIFY `signup_id` int(25) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
