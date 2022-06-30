-- phpMyAdmin SQL Dump
-- version 4.7.3
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Jan 29, 2018 at 11:02 PM
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
-- Database: `tammanag_crowdfunding`
--

-- --------------------------------------------------------

--
-- Table structure for table `achievements`
--

CREATE TABLE `achievements` (
  `id` int(11) NOT NULL,
  `name` varchar(256) NOT NULL,
  `img` varchar(256) NOT NULL,
  `icon` varchar(256) NOT NULL,
  `display_type` int(11) NOT NULL COMMENT '0-img,1-icon',
  `numbers` varchar(256) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `achievements`
--

INSERT INTO `achievements` (`id`, `name`, `img`, `icon`, `display_type`, `numbers`) VALUES
(9, 'Crore+ Raise', '', 'fa-money', 1, '100'),
(10, 'Supporters', '', 'fa-group', 1, '200000'),
(11, 'Fundraisers', '', 'fa-volume-up', 1, '30000'),
(12, 'Campaigns', '', 'fa-bar-chart', 1, '1000');

-- --------------------------------------------------------

--
-- Table structure for table `admin_faq`
--

CREATE TABLE `admin_faq` (
  `id` int(11) NOT NULL,
  `question` varchar(256) NOT NULL,
  `answer` text NOT NULL,
  `date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin_faq`
--

INSERT INTO `admin_faq` (`id`, `question`, `answer`, `date`) VALUES
(3, 'Aenean euismod mauris eu elit. Nulla facilisi. Sed neque. Sed eget lacus. Mauris', 'molestie tellus. Aenean egestas hendrerit neque. In ornare sagittis felis. Donec tempor, est ac mattis semper, dui lectus rutrum urna, nec luctus felis purus ac tellus. Suspendisse sed dolor. Fusce mi lorem, vehicula et, rutrum eu, ultrices sit amet, risus. Donec nibh enim, gravida sit amet, dapibus id, blandit at, nisi. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Proin vel nisl. Quisque fringilla euismod enim. Etiam gravida molestie arcu. Sed eu nibh vulputate mauris sagittis placerat. Cras dictum ultricies ligula. Nullam enim. Sed nulla ante, iaculis nec, eleifend', '2017-01-30'),
(4, 'amet nulla. Donec non justo. Proin non massa non ante bibendum ullamcorper. Duis cursus, diam at', 'aliquet lobortis, nisi nibh lacinia orci, consectetuer euismod est arcu ac orci. Ut semper pretium neque. Morbi quis urna. Nunc quis arcu vel quam dignissim pharetra. Nam ac nulla. In tincidunt congue turpis. In condimentum. Donec at arcu. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Donec tincidunt. Donec vitae erat vel pede blandit congue. In scelerisque scelerisque dui. Suspendisse ac metus vitae velit egestas lacinia. Sed congue, elit sed consequat auctor, nunc nulla vulputate dui, nec tempus mauris erat eget ipsum. Suspendisse sagittis. Nullam vitae diam. Proin dolor. Nulla semper tellus id nunc interdum feugiat. Sed nec metus facilisis lorem tristique aliquet. Phasellus fermentum convallis ligula. Donec luctus aliquet', '2017-01-30'),
(5, 'Nullam velit dui, semper et, lacinia vitae, sodales at, velit. Pellentesque ultricies dignissim lacus.', 'erat eget ipsum. Suspendisse sagittis. Nullam vitae diam. Proin dolor. Nulla semper tellus id nunc interdum feugiat. Sed nec metus facilisis lorem tristique aliquet. Phasellus fermentum convallis ligula. Donec luctus aliquet odio. Etiam ligula tortor, dictum eu, placerat eget, venenatis a, magna. Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Etiam laoreet, libero et tristique pellentesque, tellus sem mollis dui, in sodales elit erat vitae risus. Duis a mi fringilla mi lacinia mattis. Integer eu lacus. Quisque imperdiet, erat nonummy ultricies ornare, elit elit fermentum risus, at fringilla purus mauris a nunc. In at pede. Cras vulputate velit eu sem. Pellentesque ut ipsum ac mi eleifend', '2017-01-30'),
(6, 'ullamcorper magna. Sed eu eros. Nam consequat dolor vitae dolor. Donec fringilla. Donec feugiat metus sit amet', 'interdum. Curabitur dictum. Phasellus in felis. Nulla tempor augue ac ipsum. Phasellus vitae mauris sit amet lorem semper auctor. Mauris vel turpis. Aliquam adipiscing lobortis risus. In mi pede, nonummy ut, molestie in, tempus eu, ligula. Aenean euismod mauris eu elit. Nulla facilisi. Sed neque. Sed eget lacus. Mauris non dui nec urna suscipit nonummy. Fusce fermentum fermentum arcu. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Phasellus ornare. Fusce mollis. Duis sit amet diam eu dolor egestas rhoncus. Proin nisl sem, consequat nec, mollis vitae, posuere at, velit. Cras lorem lorem, luctus ut, pellentesque eget, dictum placerat, augue. Sed molestie. Sed id risus quis diam luctus lobortis. Class', '2017-01-30'),
(7, 'a, scelerisque sed, sapien. Nunc pulvinar arcu et pede. Nunc sed orci lobortis augue scelerisque', 'elit fermentum risus, at fringilla purus mauris a nunc. In at pede. Cras vulputate velit eu sem. Pellentesque ut ipsum ac mi eleifend egestas. Sed pharetra, felis eget varius ultrices, mauris ipsum porta elit, a feugiat tellus lorem eu metus. In lorem. Donec elementum, lorem ut aliquam iaculis, lacus pede sagittis augue, eu tempor erat neque non quam. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Aliquam fringilla cursus purus. Nullam scelerisque neque sed sem egestas blandit. Nam nulla magna, malesuada vel, convallis in, cursus et, eros. Proin ultrices. Duis volutpat nunc sit amet metus. Aliquam erat volutpat. Nulla facilisis. Suspendisse commodo tincidunt nibh. Phasellus nulla. Integer vulputate, risus a ultricies adipiscing, enim mi tempor lorem, eget mollis', '2017-01-30');

-- --------------------------------------------------------

--
-- Table structure for table `admin_preferences`
--

CREATE TABLE `admin_preferences` (
  `id` tinyint(1) NOT NULL,
  `user_panel` tinyint(1) NOT NULL DEFAULT '0',
  `sidebar_form` tinyint(1) NOT NULL DEFAULT '0',
  `messages_menu` tinyint(1) NOT NULL DEFAULT '0',
  `notifications_menu` tinyint(1) NOT NULL DEFAULT '0',
  `tasks_menu` tinyint(1) NOT NULL DEFAULT '0',
  `user_menu` tinyint(1) NOT NULL DEFAULT '1',
  `ctrl_sidebar` tinyint(1) NOT NULL DEFAULT '0',
  `transition_page` tinyint(1) NOT NULL DEFAULT '0',
  `language_menu` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `admin_preferences`
--

INSERT INTO `admin_preferences` (`id`, `user_panel`, `sidebar_form`, `messages_menu`, `notifications_menu`, `tasks_menu`, `user_menu`, `ctrl_sidebar`, `transition_page`, `language_menu`) VALUES
(1, 0, 0, 1, 1, 1, 1, 0, 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `campaignes`
--

CREATE TABLE `campaignes` (
  `id` int(10) UNSIGNED NOT NULL,
  `slug` varchar(256) NOT NULL,
  `name` varchar(256) NOT NULL,
  `category` int(11) NOT NULL,
  `sub_category` int(11) DEFAULT NULL,
  `tags` text NOT NULL,
  `img` text NOT NULL,
  `desc` text NOT NULL,
  `fund_end` int(11) NOT NULL DEFAULT '0' COMMENT '0-no,1-yes',
  `fund_from` date NOT NULL,
  `fund_till` date NOT NULL,
  `location` text NOT NULL,
  `amount` decimal(10,2) NOT NULL,
  `status` int(11) NOT NULL DEFAULT '1' COMMENT '0-acive,1-inactive',
  `like` int(11) NOT NULL COMMENT '0-notlike,1-like',
  `is_feature` int(11) NOT NULL COMMENT '0-no,1-yes',
  `user_id` int(11) NOT NULL,
  `creat_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `campaignes`
--

INSERT INTO `campaignes` (`id`, `slug`, `name`, `category`, `sub_category`, `tags`, `img`, `desc`, `fund_end`, `fund_from`, `fund_till`, `location`, `amount`, `status`, `like`, `is_feature`, `user_id`, `creat_date`) VALUES
(12, 'jeemosa---khama-ghani-sa', 'Jeemosa - Khama Ghani Sa', 7, 31, '[\"1\",\"2\",\"3\",\"4\"]', '11667510_992073710812021_7024933908825797661_n.jpg', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed feugiat bibendum nisl non molestie. Etiam tempus ac dui quis molestie. Sed interdum fringilla massa, bibendum aliquet ligula. Mauris et purus eget erat suscipit egestas. Vestibulum feugiat, libero fringilla pellentesque pharetra, tortor neque dictum sapien, vel pellentesque neque sem et orci. Cras tempor interdum nisi, eu dapibus erat feugiat in. Phasellus condimentum sed quam sit amet iaculis. Sed id pretium neque. Pellentesque sit amet felis eget velit dictum finibus sit amet fermentum est. Donec elementum arcu quis tortor porttitor viverra. Pellentesque in cursus nisl, sit amet semper urna. Donec iaculis, leo eget ullamcorper vulputate, sem tortor iaculis nisl, maximus interdum mauris neque imperdiet magna. Suspendisse sagittis maximus leo, ut faucibus risus condimentum id. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Pellentesque tincidunt gravida luctus. Quisque purus eros, pulvinar at consequat porttitor, efficitur id quam.', 1, '2017-01-31', '2017-01-31', 'Jodhpur, Rajasthan, India', '60000.00', 0, 0, 1, 1, '2017-01-31 07:01:44'),
(13, 'abstract-painting', 'Abstract Painting', 6, 23, '[\"5\",\"6\"]', 'design-1245928_640.jpg', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce sed urna vel erat rutrum convallis. Phasellus a interdum tellus, vitae molestie enim. Praesent eu orci tempor, ornare est id, bibendum tortor. Praesent a vestibulum erat, sit amet tincidunt turpis. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Vivamus tincidunt erat vel venenatis placerat. Nunc pellentesque iaculis velit sit amet convallis. Quisque at congue lorem. Duis suscipit ligula sed varius congue. Aenean dapibus congue faucibus. Maecenas ornare massa sit amet nibh mollis viverra. Cras tincidunt, diam eu pulvinar euismod, sapien neque condimentum ligula, eu condimentum orci lacus quis dolor.', 0, '2017-01-13', '2017-02-12', 'New York, NY, United States', '25000.00', 0, 1, 1, 1, '2017-01-31 08:04:37'),
(14, 'save-the-tigers', 'Save the tigers', 59, 60, '[\"7\",\"8\"]', 'animal-1868911_640.jpg', 'In convallis ante vel enim tincidunt viverra. Integer euismod imperdiet maximus. Ut vulputate, risus at fermentum bibendum, lorem sem malesuada nulla, a congue eros leo nec sem. Aliquam luctus arcu lacus, ac ullamcorper tortor ultrices ut. Proin malesuada urna et ante faucibus eleifend. Quisque ultricies sed metus eget interdum. Nam risus magna, accumsan malesuada massa sit amet, convallis condimentum mi. Pellentesque erat turpis, consectetur at justo non, sagittis gravida nisl. Aliquam in leo eget dolor pretium iaculis. In consequat rutrum eleifend. Mauris at leo in lectus egestas eleifend. Donec tristique tellus quam, et cursus nunc mollis id. Donec hendrerit nec odio a consectetur.', 1, '2017-01-31', '2017-01-31', 'Chinatown Singapore', '100000.00', 0, 0, 1, 1, '2017-01-31 08:27:19'),
(15, 'lurm-music-concert', 'LURM Music Concert', 52, 57, '[\"9\",\"10\",\"11\"]', 'audience-868074_640.jpg', 'Sed tincidunt finibus accumsan. Phasellus euismod rhoncus elit vulputate tincidunt. Sed in nulla varius, bibendum neque eget, aliquam nulla. Phasellus faucibus, nulla quis blandit porta, ligula tortor venenatis massa, nec facilisis lorem erat quis ligula. Maecenas et ante tempus, consectetur sapien vitae, pretium purus. Donec feugiat pellentesque vestibulum. Mauris volutpat odio in massa iaculis convallis. Aenean et lorem magna. Proin suscipit, nibh non congue porta, nunc felis faucibus purus, id pulvinar lacus mauris ut sem. Nulla nibh purus, posuere a nisi vitae, pellentesque varius mi. Duis tempus lectus a turpis sollicitudin molestie vel ac urna. Donec ornare faucibus commodo. Sed sit amet lacinia arcu.', 0, '2017-02-01', '2017-02-15', 'South Australia, Australia', '75000.00', 0, 0, 1, 1, '2017-01-31 08:30:41'),
(16, 'documentory-on-historical-places', 'Documentory on Historical Places', 12, 16, '[\"12\",\"13\"]', 'film-596519_640.jpg', 'Sed quis elementum augue, eget commodo mauris. Suspendisse euismod leo pretium, pulvinar leo eget, consequat velit. Nullam id augue ac orci tempor aliquam. Vestibulum lobortis enim a dapibus consequat. Integer ipsum felis, gravida id faucibus a, consectetur sit amet magna. Quisque sapien enim, gravida vel imperdiet rutrum', 1, '2017-01-31', '2017-01-31', 'Mumbai, Maharashtra, India', '1000.00', 0, 0, 1, 1, '2017-01-31 08:42:38'),
(17, 'handcrafted-shoes', 'Handcrafted Shoes', 11, 42, '[\"14\",\"15\"]', 'shoes-587648_640.jpg', 'Interdum et malesuada fames ac ante ipsum primis in faucibus. Vestibulum at porttitor felis. Donec sodales arcu purus, eu aliquam magna porttitor vel. Nunc hendrerit quis neque et blandit. Morbi laoreet quam eget efficitur placerat. Vivamus eu arcu purus. Morbi dignissim sagittis risus sit amet aliquam. Nam auctor lorem a ligula consequat, non bibendum erat dignissim.', 0, '2017-02-21', '2017-02-28', '', '500.00', 0, 0, 1, 1, '2017-01-31 08:46:14');

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(10) UNSIGNED NOT NULL,
  `category` varchar(256) NOT NULL,
  `parent_category` int(10) UNSIGNED NOT NULL,
  `icon` varchar(256) NOT NULL,
  `img` varchar(256) NOT NULL,
  `display_type` int(11) NOT NULL COMMENT '0-icon,1-img',
  `desc` text NOT NULL,
  `status` int(11) NOT NULL COMMENT '0-acive,1-inactive',
  `meta_title` varchar(256) NOT NULL,
  `meta_keyword` text NOT NULL,
  `meta_desc` text NOT NULL,
  `creat_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `category`, `parent_category`, `icon`, `img`, `display_type`, `desc`, `status`, `meta_title`, `meta_keyword`, `meta_desc`, `creat_date`) VALUES
(6, 'Art', 0, '1485791493_color_pailet_with_brush.png', '', 0, 'The expression or application of human creative skill and imagination, typically in a visual form such as painting or sculpture, producing works to be appreciated primarily for their beauty or emotional power.', 0, '', '', '', '2017-01-30 08:45:08'),
(7, 'Technology', 0, '1485791580_electronics-01.png', '', 0, '', 0, '', '', '', '2017-01-30 09:45:57'),
(8, 'Design', 0, '1485791630_Streamline-26.png', '', 0, '', 0, '', '', '', '2017-01-30 09:51:05'),
(9, 'Architecture', 8, '1485791692_interior_architectural_design_02.png', '', 0, '', 0, '', '', '', '2017-01-30 09:55:30'),
(10, 'Graphic Design', 8, '1485791800_BT_responsive.png', '', 0, '', 0, '', '', '', '2017-01-30 09:56:53'),
(11, 'Fashion', 0, '1485791916_alifashion013-512.png', '', 0, '', 0, '', '', '', '2017-01-30 09:58:53'),
(12, 'Film & Video', 0, '1485791969_085_Movie.png', '', 0, '', 0, '', '', '', '2017-01-30 09:59:46'),
(13, 'Action', 12, '', '', 0, '', 0, '', '', '', '2017-01-30 10:00:22'),
(14, 'Animation', 12, '', '', 0, '', 0, '', '', '', '2017-01-30 10:00:34'),
(15, 'Comedy', 12, '', '', 0, '', 0, '', '', '', '2017-01-30 10:00:47'),
(16, 'Documentory', 12, '', '', 0, '', 0, '', '', '', '2017-01-30 10:01:01'),
(17, 'Drama', 12, '', '', 0, '', 0, '', '', '', '2017-01-30 10:01:16'),
(18, 'Romance', 12, '', '', 0, '', 0, '', '', '', '2017-01-30 10:01:29'),
(19, 'Shorts', 12, '', '', 0, '', 0, '', '', '', '2017-01-30 10:01:40'),
(20, 'Thrillers', 12, '', '', 0, '', 0, '', '', '', '2017-01-30 10:01:53'),
(21, 'Conceptual Art', 6, '', '', 0, '', 0, '', '', '', '2017-01-30 10:02:23'),
(22, 'Digital Art', 6, '', '', 0, '', 0, '', '', '', '2017-01-30 10:02:38'),
(23, 'Painting', 6, '', '', 0, '', 0, '', '', '', '2017-01-30 10:02:54'),
(24, 'Performance Art', 6, '', '', 0, '', 0, '', '', '', '2017-01-30 10:03:05'),
(25, 'Video  Art', 6, '', '', 0, '', 0, '', '', '', '2017-01-30 10:03:21'),
(26, 'Mixed Media', 6, '', '', 0, '', 0, '', '', '', '2017-01-30 10:03:44'),
(27, 'Apps', 7, '', '', 0, '', 0, '', '', '', '2017-01-30 10:04:18'),
(28, '3D Printing', 7, '', '', 0, '', 0, '', '', '', '2017-01-30 10:04:35'),
(29, 'Camera Equipments', 7, '', '', 0, '', 0, '', '', '', '2017-01-30 10:04:46'),
(30, 'Robots', 7, '', '', 0, '', 0, '', '', '', '2017-01-30 10:05:00'),
(31, 'Software', 7, '', '', 0, '', 0, '', '', '', '2017-01-30 10:05:08'),
(32, 'Hardware', 7, '', '', 0, '', 0, '', '', '', '2017-01-30 10:05:21'),
(33, 'Gadgets', 7, '', '', 0, '', 0, '', '', '', '2017-01-30 10:05:29'),
(34, 'Civic Design', 8, '', '', 0, '', 0, '', '', '', '2017-01-30 10:06:09'),
(35, 'Interactive Design', 8, '', '', 0, '', 0, '', '', '', '2017-01-30 10:06:29'),
(36, 'Product Design', 8, '', '', 0, '', 0, '', '', '', '2017-01-30 10:06:52'),
(37, 'Typography', 8, '', '', 0, '', 0, '', '', '', '2017-01-30 10:07:02'),
(38, 'Accessories', 11, '', '', 0, '', 0, '', '', '', '2017-01-30 10:07:52'),
(39, 'Apparel', 11, '', '', 0, '', 0, '', '', '', '2017-01-30 10:08:14'),
(40, 'Childrenswear', 11, '', '', 0, '', 0, '', '', '', '2017-01-30 10:08:26'),
(41, 'Couture', 11, '', '', 0, '', 0, '', '', '', '2017-01-30 10:08:37'),
(42, 'Footwear', 11, '', '', 0, '', 0, '', '', '', '2017-01-30 10:08:48'),
(43, 'Jewelry', 11, '', '', 0, '', 0, '', '', '', '2017-01-30 10:08:59'),
(44, 'Ready-to-wear', 11, '', '', 0, '', 0, '', '', '', '2017-01-30 10:09:09'),
(45, 'Games', 0, '1485793263_Games_1.png', '', 0, '', 0, '', '', '', '2017-01-30 10:21:16'),
(46, 'Gaming Hardware', 45, '', '', 0, '', 0, '', '', '', '2017-01-30 10:21:34'),
(47, 'Live Games', 45, '', '', 0, '', 0, '', '', '', '2017-01-30 10:21:43'),
(48, 'Mobile Games', 45, '', '', 0, '', 0, '', '', '', '2017-01-30 10:21:56'),
(49, 'Playing Cards', 45, '', '', 0, '', 0, '', '', '', '2017-01-30 10:22:07'),
(50, 'Puzzles', 45, '', '', 0, '', 0, '', '', '', '2017-01-30 10:22:18'),
(51, 'Tabletop Games', 45, '', '', 0, '', 0, '', '', '', '2017-01-30 10:22:30'),
(52, 'Music', 0, '1485793627_music.png', '', 0, '', 0, '', '', '', '2017-01-30 10:27:22'),
(53, 'Comedy', 52, '', '', 0, '', 0, '', '', '', '2017-01-30 10:27:49'),
(54, 'Hip Hop', 52, '', '', 0, '', 0, '', '', '', '2017-01-30 10:27:59'),
(55, 'Jazz', 52, '', '', 0, '', 0, '', '', '', '2017-01-30 10:28:07'),
(56, 'Rock', 52, '', '', 0, '', 0, '', '', '', '2017-01-30 10:28:20'),
(57, 'Pop', 52, '', '', 0, '', 0, '', '', '', '2017-01-30 10:28:28'),
(58, 'Punk', 52, '', '', 0, '', 0, '', '', '', '2017-01-30 10:28:36'),
(59, 'Photography', 0, '1485793766_Photo_equipment_2.png', '', 0, '', 0, '', '', '', '2017-01-30 10:29:43'),
(60, 'Animals', 59, '', '', 0, '', 0, '', '', '', '2017-01-30 10:30:04'),
(61, 'Fine Art', 59, '', '', 0, '', 0, '', '', '', '2017-01-30 10:30:18'),
(62, 'Nature', 59, '', '', 0, '', 0, '', '', '', '2017-01-30 10:30:31'),
(63, 'People', 59, '', '', 0, '', 0, '', '', '', '2017-01-30 10:30:40'),
(64, 'Photobook', 59, '', '', 0, '', 0, '', '', '', '2017-01-30 10:30:49'),
(65, 'Places', 59, '', '', 0, '', 0, '', '', '', '2017-01-30 10:31:01'),
(66, 'Education', 0, '1485793920_student.png', '', 0, '', 0, '', '', '', '2017-01-30 10:32:17'),
(67, 'Information Technology', 66, '', '', 0, '', 0, '', '', '', '2017-01-30 10:32:29'),
(68, 'Competition', 66, '', '', 0, '', 0, '', '', '', '2017-01-30 10:32:50'),
(69, 'Academic', 66, '', '', 0, '', 0, '', '', '', '2017-01-30 10:32:59'),
(70, 'Cooking', 66, '', '', 0, '', 0, '', '', '', '2017-01-30 10:33:07'),
(71, 'Dance', 66, '', '', 0, '', 0, '', '', '', '2017-01-30 10:33:19');

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE `comments` (
  `id` int(11) NOT NULL,
  `parent_id` int(11) NOT NULL,
  `post_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `comment` text NOT NULL,
  `date` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `comments`
--

INSERT INTO `comments` (`id`, `parent_id`, `post_id`, `user_id`, `comment`, `date`) VALUES
(57, 0, 12, 1, 'augue ut lacus. Nulla tincidunt, neque vitae semper egestas, urna justo faucibus lectus, a sollicitudin orci sem eget massa. Suspendisse eleifend. Cras sed leo. Cras vehicula', '2017-01-31 12:58:25'),
(58, 57, 12, 1, 'fringilla purus mauris a nunc. In at pede. Cras vulputate velit eu sem. Pellentesque ut ipsum ac mi eleifend egestas. Sed pharetra, felis eget varius ultrices, mauris', '2017-01-31 12:58:56'),
(59, 0, 12, 1, 'non ante bibendum ullamcorper. Duis cursus, diam at pretium aliquet, metus urna convallis erat, eget tincidunt dui augue eu tellus. Phasellus elit pede, malesuada', '2017-01-31 12:59:10');

-- --------------------------------------------------------

--
-- Table structure for table `comment_likes`
--

CREATE TABLE `comment_likes` (
  `id` int(11) NOT NULL,
  `comment_id` int(11) NOT NULL,
  `post_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `currency`
--

CREATE TABLE `currency` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(200) DEFAULT NULL,
  `isd` varchar(32) NOT NULL,
  `iso_alpha2` varchar(2) DEFAULT NULL,
  `iso_alpha3` varchar(3) DEFAULT NULL,
  `iso_numeric` int(11) DEFAULT NULL,
  `currency_code` char(3) DEFAULT NULL,
  `currency_name` varchar(32) DEFAULT NULL,
  `currrency_symbol` varchar(3) DEFAULT NULL,
  `flag` varchar(255) DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT '0' COMMENT '1-active 0-inactive'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `currency`
--

INSERT INTO `currency` (`id`, `name`, `isd`, `iso_alpha2`, `iso_alpha3`, `iso_numeric`, `currency_code`, `currency_name`, `currrency_symbol`, `flag`, `status`) VALUES
(1, 'Afghanistan', '93', 'AF', NULL, 4, 'AFN', 'Afghani', '؋', 'AF.png', 0),
(2, 'Albania', '355', 'AL', 'ALB', 8, 'ALL', 'Lek', 'Lek', 'AL.png', 0),
(3, 'Algeria', '213', 'DZ', 'DZA', 12, 'DZD', 'Dinar', NULL, 'DZ.png', 0),
(4, 'American Samoa', '1-684', 'AS', 'ASM', 16, 'USD', 'Dollar', '$', 'AS.png', 0),
(5, 'Andorra', '376', 'AD', 'AND', 20, 'EUR', 'Euro', '€', 'AD.png', 0),
(6, 'Angola', '244', 'AO', 'AGO', 24, 'AOA', 'Kwanza', 'Kz', 'AO.png', 0),
(7, 'Anguilla', '1-264', 'AI', 'AIA', 660, 'XCD', 'Dollar', '$', 'AI.png', 0),
(8, 'Antarctica', '672', 'AQ', 'ATA', 10, '', '', NULL, 'AQ.png', 0),
(9, 'Antigua and Barbuda', '1-268', 'AG', 'ATG', 28, 'XCD', 'Dollar', '$', 'AG.png', 0),
(10, 'Argentina', '54', 'AR', 'ARG', 32, 'ARS', 'Peso', '$', 'AR.png', 0),
(11, 'Armenia', '374', 'AM', 'ARM', 51, 'AMD', 'Dram', NULL, 'AM.png', 0),
(12, 'Aruba', '297', 'AW', 'ABW', 533, 'AWG', 'Guilder', 'ƒ', 'AW.png', 0),
(13, 'Australia', '61', 'AU', 'AUS', 36, 'AUD', 'Dollar', '$', 'AU.png', 0),
(14, 'Austria', '43', 'AT', 'AUT', 40, 'EUR', 'Euro', '€', 'AT.png', 0),
(15, 'Azerbaijan', '994', 'AZ', 'AZE', 31, 'AZN', 'Manat', 'ман', 'AZ.png', 0),
(16, 'Bahamas', '1-242', 'BS', 'BHS', 44, 'BSD', 'Dollar', '$', 'BS.png', 0),
(17, 'Bahrain', '973', 'BH', 'BHR', 48, 'BHD', 'Dinar', NULL, 'BH.png', 0),
(18, 'Bangladesh', '880', 'BD', 'BGD', 50, 'BDT', 'Taka', NULL, 'BD.png', 0),
(19, 'Barbados', '1-246', 'BB', 'BRB', 52, 'BBD', 'Dollar', '$', 'BB.png', 0),
(20, 'Belarus', '375', 'BY', 'BLR', 112, 'BYR', 'Ruble', 'p.', 'BY.png', 0),
(21, 'Belgium', '32', 'BE', 'BEL', 56, 'EUR', 'Euro', '€', 'BE.png', 0),
(22, 'Belize', '501', 'BZ', 'BLZ', 84, 'BZD', 'Dollar', 'BZ$', 'BZ.png', 0),
(23, 'Benin', '229', 'BJ', 'BEN', 204, 'XOF', 'Franc', NULL, 'BJ.png', 0),
(24, 'Bermuda', '1-441', 'BM', 'BMU', 60, 'BMD', 'Dollar', '$', 'BM.png', 0),
(25, 'Bhutan', '975', 'BT', 'BTN', 64, 'BTN', 'Ngultrum', NULL, 'BT.png', 0),
(26, 'Bolivia', '591', 'BO', 'BOL', 68, 'BOB', 'Boliviano', '$b', 'BO.png', 0),
(27, 'Bosnia and Herzegovina', '387', 'BA', 'BIH', 70, 'BAM', 'Marka', 'KM', 'BA.png', 0),
(28, 'Botswana', '267', 'BW', 'BWA', 72, 'BWP', 'Pula', 'P', 'BW.png', 0),
(29, 'Bouvet Island', '47', 'BV', 'BVT', 74, 'NOK', 'Krone', 'kr', 'BV.png', 0),
(30, 'Brazil', '55', 'BR', 'BRA', 76, 'BRL', 'Real', 'R$', 'BR.png', 0),
(31, 'British Indian Ocean Territory', '246', 'IO', 'IOT', 86, 'USD', 'Dollar', '$', 'IO.png', 0),
(32, 'British Virgin Islands', '1-284', 'VG', 'VGB', 92, 'USD', 'Dollar', '$', 'VG.png', 0),
(33, 'Brunei', '673', 'BN', 'BRN', 96, 'BND', 'Dollar', '$', 'BN.png', 0),
(34, 'Bulgaria', '359', 'BG', 'BGR', 100, 'BGN', 'Lev', 'лв', 'BG.png', 0),
(35, 'Burkina Faso', '226', 'BF', 'BFA', 854, 'XOF', 'Franc', NULL, 'BF.png', 0),
(36, 'Burundi', '257', 'BI', 'BDI', 108, 'BIF', 'Franc', NULL, 'BI.png', 0),
(37, 'Cambodia', '855', 'KH', 'KHM', 116, 'KHR', 'Riels', '៛', 'KH.png', 0),
(38, 'Cameroon', '237', 'CM', 'CMR', 120, 'XAF', 'Franc', 'FCF', 'CM.png', 0),
(39, 'Canada', '1', 'CA', 'CAN', 124, 'CAD', 'Dollar', '$', 'CA.png', 0),
(40, 'Cape Verde', '238', 'CV', 'CPV', 132, 'CVE', 'Escudo', NULL, 'CV.png', 0),
(41, 'Cayman Islands', '1-345', 'KY', 'CYM', 136, 'KYD', 'Dollar', '$', 'KY.png', 0),
(42, 'Central African Republic', '236', 'CF', 'CAF', 140, 'XAF', 'Franc', 'FCF', 'CF.png', 0),
(43, 'Chad', '235', 'TD', 'TCD', 148, 'XAF', 'Franc', NULL, 'TD.png', 0),
(44, 'Chile', '56', 'CL', 'CHL', 152, 'CLP', 'Peso', NULL, 'CL.png', 0),
(45, 'China', '86', 'CN', 'CHN', 156, 'CNY', 'Yuan Renminbi', '¥', 'CN.png', 0),
(46, 'Christmas Island', '61', 'CX', 'CXR', 162, 'AUD', 'Dollar', '$', 'CX.png', 0),
(47, 'Cocos Islands', '61', 'CC', 'CCK', 166, 'AUD', 'Dollar', '$', 'CC.png', 0),
(48, 'Colombia', '57', 'CO', 'COL', 170, 'COP', 'Peso', '$', 'CO.png', 0),
(49, 'Comoros', '269', 'KM', 'COM', 174, 'KMF', 'Franc', NULL, 'KM.png', 0),
(50, 'Cook Islands', '682', 'CK', 'COK', 184, 'NZD', 'Dollar', '$', 'CK.png', 0),
(51, 'Costa Rica', '506', 'CR', 'CRI', 188, 'CRC', 'Colon', '₡', 'CR.png', 0),
(52, 'Croatia', '385', 'HR', 'HRV', 191, 'HRK', 'Kuna', 'kn', 'HR.png', 0),
(53, 'Cuba', '53', 'CU', 'CUB', 192, 'CUP', 'Peso', '₱', 'CU.png', 0),
(54, 'Cyprus', '357', 'CY', 'CYP', 196, 'CYP', 'Pound', NULL, 'CY.png', 0),
(55, 'Czech Republic', '420', 'CZ', 'CZE', 203, 'CZK', 'Koruna', 'Kč', 'CZ.png', 0),
(56, 'Democratic Republic of the Congo', '', 'CD', 'COD', 180, 'CDF', 'Franc', NULL, 'CD.png', 0),
(57, 'Denmark', '45', 'DK', 'DNK', 208, 'DKK', 'Krone', 'kr', 'DK.png', 0),
(58, 'Djibouti', '253', 'DJ', 'DJI', 262, 'DJF', 'Franc', NULL, 'DJ.png', 0),
(59, 'Dominica', '1-767', 'DM', 'DMA', 212, 'XCD', 'Dollar', '$', 'DM.png', 0),
(60, 'Dominican Republic', '1-809', 'DO', 'DOM', 214, 'DOP', 'Peso', 'RD$', 'DO.png', 0),
(61, 'East Timor', '670', 'TL', 'TLS', 626, 'USD', 'Dollar', '$', 'TL.png', 0),
(62, 'Ecuador', '593', 'EC', 'ECU', 218, 'USD', 'Dollar', '$', 'EC.png', 0),
(63, 'Egypt', '20', 'EG', 'EGY', 818, 'EGP', 'Pound', '£', 'EG.png', 0),
(64, 'El Salvador', '503', 'SV', 'SLV', 222, 'SVC', 'Colone', '$', 'SV.png', 0),
(65, 'Equatorial Guinea', '240', 'GQ', 'GNQ', 226, 'XAF', 'Franc', 'FCF', 'GQ.png', 0),
(66, 'Eritrea', '291', 'ER', 'ERI', 232, 'ERN', 'Nakfa', 'Nfk', 'ER.png', 0),
(67, 'Estonia', '372', 'EE', 'EST', 233, 'EEK', 'Kroon', 'kr', 'EE.png', 0),
(68, 'Ethiopia', '251', 'ET', 'ETH', 231, 'ETB', 'Birr', NULL, 'ET.png', 0),
(69, 'Falkland Islands', '500', 'FK', 'FLK', 238, 'FKP', 'Pound', '£', 'FK.png', 0),
(70, 'Faroe Islands', '298', 'FO', 'FRO', 234, 'DKK', 'Krone', 'kr', 'FO.png', 0),
(71, 'Fiji', '679', 'FJ', 'FJI', 242, 'FJD', 'Dollar', '$', 'FJ.png', 0),
(72, 'Finland', '358', 'FI', 'FIN', 246, 'EUR', 'Euro', '€', 'FI.png', 0),
(73, 'France', '33', 'FR', 'FRA', 250, 'EUR', 'Euro', '€', 'FR.png', 0),
(74, 'French Guiana', '594', 'GF', 'GUF', 254, 'EUR', 'Euro', '€', 'GF.png', 0),
(75, 'French Polynesia', '689', 'PF', 'PYF', 258, 'XPF', 'Franc', NULL, 'PF.png', 0),
(76, 'French Southern Territories', '', 'TF', 'ATF', 260, 'EUR', 'Euro  ', '€', 'TF.png', 0),
(77, 'Gabon', '241', 'GA', 'GAB', 266, 'XAF', 'Franc', 'FCF', 'GA.png', 0),
(78, 'Gambia', '220', 'GM', 'GMB', 270, 'GMD', 'Dalasi', 'D', 'GM.png', 0),
(79, 'Georgia', '995', 'GE', 'GEO', 268, 'GEL', 'Lari', NULL, 'GE.png', 0),
(80, 'Germany', '49', 'DE', 'DEU', 276, 'EUR', 'Euro', '€', 'DE.png', 0),
(81, 'Ghana', '233', 'GH', 'GHA', 288, 'GHC', 'Cedi', '¢', 'GH.png', 0),
(82, 'Gibraltar', '350', 'GI', 'GIB', 292, 'GIP', 'Pound', '£', 'GI.png', 0),
(83, 'Greece', '30', 'GR', 'GRC', 300, 'EUR', 'Euro', '€', 'GR.png', 0),
(84, 'Greenland', '299', 'GL', 'GRL', 304, 'DKK', 'Krone', 'kr', 'GL.png', 0),
(85, 'Grenada', '1-473', 'GD', 'GRD', 308, 'XCD', 'Dollar', '$', 'GD.png', 0),
(86, 'Guadeloupe', '590', 'GP', 'GLP', 312, 'EUR', 'Euro', '€', 'GP.png', 0),
(87, 'Guam', '1-671', 'GU', 'GUM', 316, 'USD', 'Dollar', '$', 'GU.png', 0),
(88, 'Guatemala', '502', 'GT', 'GTM', 320, 'GTQ', 'Quetzal', 'Q', 'GT.png', 0),
(89, 'Guinea', '224', 'GN', 'GIN', 324, 'GNF', 'Franc', NULL, 'GN.png', 0),
(90, 'Guinea-Bissau', '245', 'GW', 'GNB', 624, 'XOF', 'Franc', NULL, 'GW.png', 0),
(91, 'Guyana', '592', 'GY', 'GUY', 328, 'GYD', 'Dollar', '$', 'GY.png', 0),
(92, 'Haiti', '509', 'HT', 'HTI', 332, 'HTG', 'Gourde', 'G', 'HT.png', 0),
(93, 'Heard Island and McDonald Islands', '011', 'HM', 'HMD', 334, 'AUD', 'Dollar', '$', 'HM.png', 0),
(94, 'Honduras', '504', 'HN', 'HND', 340, 'HNL', 'Lempira', 'L', 'HN.png', 0),
(95, 'Hong Kong', '852', 'HK', 'HKG', 344, 'HKD', 'Dollar', '$', 'HK.png', 0),
(96, 'Hungary', '36', 'HU', 'HUN', 348, 'HUF', 'Forint', 'Ft', 'HU.png', 0),
(97, 'Iceland', '354', 'IS', 'ISL', 352, 'ISK', 'Krona', 'kr', 'IS.png', 0),
(98, 'India', '91', 'IN', '1', 356, 'INR', 'Rupee', '₹', 'IN.png', 1),
(99, 'Indonesia', '62', 'ID', 'IDN', 360, 'IDR', 'Rupiah', 'Rp', 'ID.png', 0),
(100, 'Iran', '98', 'IR', 'IRN', 364, 'IRR', 'Rial', '﷼', 'IR.png', 0),
(101, 'Iraq', '964', 'IQ', 'IRQ', 368, 'IQD', 'Dinar', NULL, 'IQ.png', 0),
(102, 'Ireland', '353', 'IE', 'IRL', 372, 'EUR', 'Euro', '€', 'IE.png', 0),
(103, 'Israel', '972', 'IL', 'ISR', 376, 'ILS', 'Shekel', '₪', 'IL.png', 0),
(104, 'Italy', '39', 'IT', 'ITA', 380, 'EUR', 'Euro', '€', 'IT.png', 0),
(105, 'Ivory Coast', '225', 'CI', 'CIV', 384, 'XOF', 'Franc', NULL, 'CI.png', 0),
(106, 'Jamaica', '1-876', 'JM', 'JAM', 388, 'JMD', 'Dollar', '$', 'JM.png', 0),
(107, 'Japan', '81', 'JP', 'JPN', 392, 'JPY', 'Yen', '¥', 'JP.png', 0),
(108, 'Jordan', '962', 'JO', 'JOR', 400, 'JOD', 'Dinar', NULL, 'JO.png', 0),
(109, 'Kazakhstan', '7', 'KZ', 'KAZ', 398, 'KZT', 'Tenge', 'лв', 'KZ.png', 0),
(110, 'Kenya', '254', 'KE', 'KEN', 404, 'KES', 'Shilling', NULL, 'KE.png', 0),
(111, 'Kiribati', '686', 'KI', 'KIR', 296, 'AUD', 'Dollar', '$', 'KI.png', 0),
(112, 'Kuwait', '965', 'KW', 'KWT', 414, 'KWD', 'Dinar', NULL, 'KW.png', 0),
(113, 'Kyrgyzstan', '996', 'KG', 'KGZ', 417, 'KGS', 'Som', 'лв', 'KG.png', 0),
(114, 'Laos', '856', 'LA', 'LAO', 418, 'LAK', 'Kip', '₭', 'LA.png', 0),
(115, 'Latvia', '371', 'LV', 'LVA', 428, 'LVL', 'Lat', 'Ls', 'LV.png', 0),
(116, 'Lebanon', '961', 'LB', 'LBN', 422, 'LBP', 'Pound', '£', 'LB.png', 0),
(117, 'Lesotho', '266', 'LS', 'LSO', 426, 'LSL', 'Loti', 'L', 'LS.png', 0),
(118, 'Liberia', '231', 'LR', 'LBR', 430, 'LRD', 'Dollar', '$', 'LR.png', 0),
(119, 'Libya', '218', 'LY', 'LBY', 434, 'LYD', 'Dinar', NULL, 'LY.png', 0),
(120, 'Liechtenstein', '423', 'LI', 'LIE', 438, 'CHF', 'Franc', 'CHF', 'LI.png', 0),
(121, 'Lithuania', '370', 'LT', 'LTU', 440, 'LTL', 'Litas', 'Lt', 'LT.png', 0),
(122, 'Luxembourg', '352', 'LU', 'LUX', 442, 'EUR', 'Euro', '€', 'LU.png', 0),
(123, 'Macao', '853', 'MO', 'MAC', 446, 'MOP', 'Pataca', 'MOP', 'MO.png', 0),
(124, 'Macedonia', '389', 'MK', 'MKD', 807, 'MKD', 'Denar', 'ден', 'MK.png', 0),
(125, 'Madagascar', '261', 'MG', 'MDG', 450, 'MGA', 'Ariary', NULL, 'MG.png', 0),
(126, 'Malawi', '265', 'MW', 'MWI', 454, 'MWK', 'Kwacha', 'MK', 'MW.png', 0),
(127, 'Malaysia', '60', 'MY', 'MYS', 458, 'MYR', 'Ringgit', 'RM', 'MY.png', 0),
(128, 'Maldives', '960', 'MV', 'MDV', 462, 'MVR', 'Rufiyaa', 'Rf', 'MV.png', 0),
(129, 'Mali', '223', 'ML', 'MLI', 466, 'XOF', 'Franc', NULL, 'ML.png', 0),
(130, 'Malta', '356', 'MT', 'MLT', 470, 'MTL', 'Lira', NULL, 'MT.png', 0),
(131, 'Marshall Islands', '692', 'MH', 'MHL', 584, 'USD', 'Dollar', '$', 'MH.png', 0),
(132, 'Martinique', '596', 'MQ', 'MTQ', 474, 'EUR', 'Euro', '€', 'MQ.png', 0),
(133, 'Mauritania', '222', 'MR', 'MRT', 478, 'MRO', 'Ouguiya', 'UM', 'MR.png', 0),
(134, 'Mauritius', '230', 'MU', 'MUS', 480, 'MUR', 'Rupee', '₨', 'MU.png', 0),
(135, 'Mayotte', '262', 'YT', 'MYT', 175, 'EUR', 'Euro', '€', 'YT.png', 0),
(136, 'Mexico', '52', 'MX', 'MEX', 484, 'MXN', 'Peso', '$', 'MX.png', 0),
(137, 'Micronesia', '691', 'FM', 'FSM', 583, 'USD', 'Dollar', '$', 'FM.png', 0),
(138, 'Moldova', '373', 'MD', 'MDA', 498, 'MDL', 'Leu', NULL, 'MD.png', 0),
(139, 'Monaco', '377', 'MC', 'MCO', 492, 'EUR', 'Euro', '€', 'MC.png', 0),
(140, 'Mongolia', '976', 'MN', 'MNG', 496, 'MNT', 'Tugrik', '₮', 'MN.png', 0),
(141, 'Montserrat', '1-664', 'MS', 'MSR', 500, 'XCD', 'Dollar', '$', 'MS.png', 0),
(142, 'Morocco', '212', 'MA', 'MAR', 504, 'MAD', 'Dirham', NULL, 'MA.png', 0),
(143, 'Mozambique', '258', 'MZ', 'MOZ', 508, 'MZN', 'Meticail', 'MT', 'MZ.png', 0),
(144, 'Myanmar', '95', 'MM', 'MMR', 104, 'MMK', 'Kyat', 'K', 'MM.png', 0),
(145, 'Namibia', '264', 'NA', 'NAM', 516, 'NAD', 'Dollar', '$', 'NA.png', 0),
(146, 'Nauru', '674', 'NR', 'NRU', 520, 'AUD', 'Dollar', '$', 'NR.png', 0),
(147, 'Nepal', '977', 'NP', 'NPL', 524, 'NPR', 'Rupee', '₨', 'NP.png', 0),
(148, 'Netherlands', '31', 'NL', 'NLD', 528, 'EUR', 'Euro', '€', 'NL.png', 0),
(149, 'Netherlands Antilles', '599', 'AN', 'ANT', 530, 'ANG', 'Guilder', 'ƒ', 'AN.png', 0),
(150, 'New Caledonia', '687	', 'NC', 'NCL', 540, 'XPF', 'Franc', NULL, 'NC.png', 0),
(151, 'New Zealand', '64', 'NZ', 'NZL', 554, 'NZD', 'Dollar', '$', 'NZ.png', 0),
(152, 'Nicaragua', '505', 'NI', 'NIC', 558, 'NIO', 'Cordoba', 'C$', 'NI.png', 0),
(153, 'Niger', '227', 'NE', 'NER', 562, 'XOF', 'Franc', NULL, 'NE.png', 0),
(154, 'Nigeria', '234', 'NG', 'NGA', 566, 'NGN', 'Naira', '₦', 'NG.png', 0),
(155, 'Niue', '683', 'NU', 'NIU', 570, 'NZD', 'Dollar', '$', 'NU.png', 0),
(156, 'Norfolk Island', '672', 'NF', 'NFK', 574, 'AUD', 'Dollar', '$', 'NF.png', 0),
(157, 'North Korea', '850', 'KP', 'PRK', 408, 'KPW', 'Won', '₩', 'KP.png', 0),
(158, 'Northern Mariana Islands', '1-670', 'MP', 'MNP', 580, 'USD', 'Dollar', '$', 'MP.png', 0),
(159, 'Norway', '47', 'NO', 'NOR', 578, 'NOK', 'Krone', 'kr', 'NO.png', 0),
(160, 'Oman', '968', 'OM', 'OMN', 512, 'OMR', 'Rial', '﷼', 'OM.png', 0),
(161, 'Pakistan', '92', 'PK', 'PAK', 586, 'PKR', 'Rupee', '₨', 'PK.png', 0),
(162, 'Palau', '680', 'PW', 'PLW', 585, 'USD', 'Dollar', '$', 'PW.png', 0),
(163, 'Palestinian Territory', '970', 'PS', 'PSE', 275, 'ILS', 'Shekel', '₪', 'PS.png', 0),
(164, 'Panama', '507', 'PA', 'PAN', 591, 'PAB', 'Balboa', 'B/.', 'PA.png', 0),
(165, 'Papua New Guinea', '675', 'PG', 'PNG', 598, 'PGK', 'Kina', NULL, 'PG.png', 0),
(166, 'Paraguay', '595', 'PY', 'PRY', 600, 'PYG', 'Guarani', 'Gs', 'PY.png', 0),
(167, 'Peru', '51', 'PE', 'PER', 604, 'PEN', 'Sol', 'S/.', 'PE.png', 0),
(168, 'Philippines', '63', 'PH', 'PHL', 608, 'PHP', 'Peso', 'Php', 'PH.png', 0),
(169, 'Pitcairn', '64', 'PN', 'PCN', 612, 'NZD', 'Dollar', '$', 'PN.png', 0),
(170, 'Poland', '48', 'PL', 'POL', 616, 'PLN', 'Zloty', 'zł', 'PL.png', 0),
(171, 'Portugal', '351', 'PT', 'PRT', 620, 'EUR', 'Euro', '€', 'PT.png', 0),
(172, 'Puerto Rico', '1-787', 'PR', 'PRI', 630, 'USD', 'Dollar', '$', 'PR.png', 0),
(173, 'Qatar', '974', 'QA', 'QAT', 634, 'QAR', 'Rial', '﷼', 'QA.png', 0),
(174, 'Republic of the Congo', '242', 'CG', 'COG', 178, 'XAF', 'Franc', 'FCF', 'CG.png', 0),
(175, 'Reunion', '262', 'RE', 'REU', 638, 'EUR', 'Euro', '€', 'RE.png', 0),
(176, 'Romania', '40', 'RO', 'ROU', 642, 'RON', 'Leu', 'lei', 'RO.png', 0),
(177, 'Russia', '7', 'RU', 'RUS', 643, 'RUB', 'Ruble', 'руб', 'RU.png', 0),
(178, 'Rwanda', '250', 'RW', 'RWA', 646, 'RWF', 'Franc', NULL, 'RW.png', 0),
(179, 'Saint Helena', '290', 'SH', 'SHN', 654, 'SHP', 'Pound', '£', 'SH.png', 0),
(180, 'Saint Kitts and Nevis', '1-869', 'KN', 'KNA', 659, 'XCD', 'Dollar', '$', 'KN.png', 0),
(181, 'Saint Lucia', '1-758', 'LC', 'LCA', 662, 'XCD', 'Dollar', '$', 'LC.png', 0),
(182, 'Saint Pierre and Miquelon', '508', 'PM', 'SPM', 666, 'EUR', 'Euro', '€', 'PM.png', 0),
(183, 'Saint Vincent and the Grenadines', '1-784', 'VC', 'VCT', 670, 'XCD', 'Dollar', '$', 'VC.png', 0),
(184, 'Samoa', '685', 'WS', 'WSM', 882, 'WST', 'Tala', 'WS$', 'WS.png', 0),
(185, 'San Marino', '378', 'SM', 'SMR', 674, 'EUR', 'Euro', '€', 'SM.png', 0),
(186, 'Sao Tome and Principe', '239', 'ST', 'STP', 678, 'STD', 'Dobra', 'Db', 'ST.png', 0),
(187, 'Saudi Arabia', '966', 'SA', 'SAU', 682, 'SAR', 'Rial', '﷼', 'SA.png', 0),
(188, 'Senegal', '221', 'SN', 'SEN', 686, 'XOF', 'Franc', NULL, 'SN.png', 0),
(189, 'Serbia and Montenegro', '', 'CS', 'SCG', 891, 'RSD', 'Dinar', 'Дин', 'CS.png', 0),
(190, 'Seychelles', '248', 'SC', 'SYC', 690, 'SCR', 'Rupee', '₨', 'SC.png', 0),
(191, 'Sierra Leone', '232', 'SL', 'SLE', 694, 'SLL', 'Leone', 'Le', 'SL.png', 0),
(192, 'Singapore', '65', 'SG', 'SGP', 702, 'SGD', 'Dollar', '$', 'SG.png', 0),
(193, 'Slovakia', '421', 'SK', 'SVK', 703, 'SKK', 'Koruna', 'Sk', 'SK.png', 0),
(194, 'Slovenia', '386', 'SI', 'SVN', 705, 'EUR', 'Euro', '€', 'SI.png', 0),
(195, 'Solomon Islands', '677', 'SB', 'SLB', 90, 'SBD', 'Dollar', '$', 'SB.png', 0),
(196, 'Somalia', '252', 'SO', 'SOM', 706, 'SOS', 'Shilling', 'S', 'SO.png', 0),
(197, 'South Africa', '27', 'ZA', 'ZAF', 710, 'ZAR', 'Rand', 'R', 'ZA.png', 0),
(198, 'South Georgia and the South Sandwich Islands', '500', 'GS', 'SGS', 239, 'GBP', 'Pound', '£', 'GS.png', 0),
(199, 'South Korea', '82', 'KR', 'KOR', 410, 'KRW', 'Won', '₩', 'KR.png', 0),
(200, 'Spain', '34', 'ES', 'ESP', 724, 'EUR', 'Euro', '€', 'ES.png', 0),
(201, 'Sri Lanka', '94', 'LK', 'LKA', 144, 'LKR', 'Rupee', '₨', 'LK.png', 0),
(202, 'Sudan', '249', 'SD', 'SDN', 736, 'SDD', 'Dinar', NULL, 'SD.png', 0),
(203, 'Suriname', '597', 'SR', 'SUR', 740, 'SRD', 'Dollar', '$', 'SR.png', 0),
(204, 'Svalbard and Jan Mayen', '47', 'SJ', 'SJM', 744, 'NOK', 'Krone', 'kr', 'SJ.png', 0),
(205, 'Swaziland', '268', 'SZ', 'SWZ', 748, 'SZL', 'Lilangeni', NULL, 'SZ.png', 0),
(206, 'Sweden', '46', 'SE', 'SWE', 752, 'SEK', 'Krona', 'kr', 'SE.png', 0),
(207, 'Switzerland', '41', 'CH', 'CHE', 756, 'CHF', 'Franc', 'CHF', 'CH.png', 0),
(208, 'Syria', '963', 'SY', 'SYR', 760, 'SYP', 'Pound', '£', 'SY.png', 0),
(209, 'Taiwan', '886', 'TW', 'TWN', 158, 'TWD', 'Dollar', 'NT$', 'TW.png', 0),
(210, 'Tajikistan', '992', 'TJ', 'TJK', 762, 'TJS', 'Somoni', NULL, 'TJ.png', 0),
(211, 'Tanzania', '255', 'TZ', 'TZA', 834, 'TZS', 'Shilling', NULL, 'TZ.png', 0),
(212, 'Thailand', '66', 'TH', 'THA', 764, 'THB', 'Baht', '฿', 'TH.png', 0),
(213, 'Togo', '228', 'TG', 'TGO', 768, 'XOF', 'Franc', NULL, 'TG.png', 0),
(214, 'Tokelau', '690', 'TK', 'TKL', 772, 'NZD', 'Dollar', '$', 'TK.png', 0),
(215, 'Tonga', '676', 'TO', 'TON', 776, 'TOP', 'Pa\'anga', 'T$', 'TO.png', 0),
(216, 'Trinidad and Tobago', '1-868', 'TT', 'TTO', 780, 'TTD', 'Dollar', 'TT$', 'TT.png', 0),
(217, 'Tunisia', '216', 'TN', 'TUN', 788, 'TND', 'Dinar', NULL, 'TN.png', 0),
(218, 'Turkey', '90', 'TR', 'TUR', 792, 'TRY', 'Lira', 'YTL', 'TR.png', 0),
(219, 'Turkmenistan', '993', 'TM', 'TKM', 795, 'TMM', 'Manat', 'm', 'TM.png', 0),
(220, 'Turks and Caicos Islands', '1-649', 'TC', 'TCA', 796, 'USD', 'Dollar', '$', 'TC.png', 0),
(221, 'Tuvalu', '688', 'TV', 'TUV', 798, 'AUD', 'Dollar', '$', 'TV.png', 0),
(222, 'U.S. Virgin Islands', '1-340', 'VI', 'VIR', 850, 'USD', 'Dollar', '$', 'VI.png', 0),
(223, 'Uganda', '256', 'UG', 'UGA', 800, 'UGX', 'Shilling', NULL, 'UG.png', 0),
(224, 'Ukraine', '380', 'UA', 'UKR', 804, 'UAH', 'Hryvnia', '₴', 'UA.png', 0),
(225, 'United Arab Emirates', '971', 'AE', 'ARE', 784, 'AED', 'Dirham', NULL, 'AE.png', 0),
(226, 'United Kingdom', '44', 'GB', '1', 826, 'GBP', 'Pound', '£', 'GB.png', 1),
(227, 'United States', '1', 'US', '1', 840, 'USD', 'Dollar', '$', 'US.png', 1),
(228, 'United States Minor Outlying Islands', '246', 'UM', 'UMI', 581, 'USD', 'Dollar ', '$', 'UM.png', 0),
(229, 'Uruguay', '598', 'UY', 'URY', 858, 'UYU', 'Peso', '$U', 'UY.png', 0),
(230, 'Uzbekistan', '998', 'UZ', 'UZB', 860, 'UZS', 'Som', 'лв', 'UZ.png', 0),
(231, 'Vanuatu', '678', 'VU', 'VUT', 548, 'VUV', 'Vatu', 'Vt', 'VU.png', 0),
(232, 'Vatican', '379', 'VA', 'VAT', 336, 'EUR', 'Euro', '€', 'VA.png', 0),
(233, 'Venezuela', '58', 'VE', 'VEN', 862, 'VEF', 'Bolivar', 'Bs', 'VE.png', 0),
(234, 'Vietnam', '84', 'VN', 'VNM', 704, 'VND', 'Dong', '₫', 'VN.png', 0),
(235, 'Wallis and Futuna', '681', 'WF', 'WLF', 876, 'XPF', 'Franc', NULL, 'WF.png', 0),
(236, 'Western Sahara', '212', 'EH', 'ESH', 732, 'MAD', 'Dirham', NULL, 'EH.png', 0),
(237, 'Yemen', '967', 'YE', 'YEM', 887, 'YER', 'Rial', '﷼', 'YE.png', 0),
(238, 'Zambia', '260', 'ZM', 'ZMB', 894, 'ZMK', 'Kwacha', 'ZK', 'ZM.png', 0),
(239, 'Zimbabwe', '263', 'ZW', 'ZWE', 716, 'ZWD', 'Dollar', 'Z$', 'ZW.png', 0);

-- --------------------------------------------------------

--
-- Table structure for table `faq`
--

CREATE TABLE `faq` (
  `id` int(10) UNSIGNED NOT NULL,
  `campaign_id` int(10) UNSIGNED NOT NULL,
  `question` varchar(256) NOT NULL,
  `answer` text NOT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `faq`
--

INSERT INTO `faq` (`id`, `campaign_id`, `question`, `answer`, `date`) VALUES
(10, 12, 'ultrices quis vehicula in, facilisis et nulla', '<p>maximus mauris facilisis, rhoncus massa. Curabitur tincidunt urna maximus, sodales nibh posuere, bibendum odio. In ut diam suscipit, lacinia magna a, varius nisl. Nulla facilisi.</p>', '2017-01-31 07:24:32'),
(12, 13, '', '', '2017-01-31 08:22:11'),
(13, 14, '', '', '2017-01-31 08:27:56'),
(14, 15, '', '', '2017-01-31 08:31:22'),
(15, 16, '', '', '2017-01-31 08:43:20'),
(16, 17, '', '', '2017-01-31 08:46:50');

-- --------------------------------------------------------

--
-- Table structure for table `feature`
--

CREATE TABLE `feature` (
  `id` int(11) NOT NULL,
  `name` varchar(256) NOT NULL,
  `img` varchar(256) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `feature`
--

INSERT INTO `feature` (`id`, `name`, `img`) VALUES
(5, 'featuere 3', 'css3.png'),
(6, 'featuere 4', 'jquery.jpg'),
(7, 'featuere 4', 'envato.png'),
(8, 'html', 'html5.png'),
(9, 'wordpress', 'wordpress.png');

-- --------------------------------------------------------

--
-- Table structure for table `groups`
--

CREATE TABLE `groups` (
  `id` mediumint(8) UNSIGNED NOT NULL,
  `name` varchar(20) NOT NULL,
  `description` varchar(100) NOT NULL,
  `bgcolor` char(7) NOT NULL DEFAULT '#607D8B'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `groups`
--

INSERT INTO `groups` (`id`, `name`, `description`, `bgcolor`) VALUES
(1, 'admin', 'Administrator', '#F44336'),
(2, 'members', 'Sub-Admin', '#2196f3'),
(3, 'Genral_Users', 'Front Users', '#607D8B');

-- --------------------------------------------------------

--
-- Table structure for table `icons`
--

CREATE TABLE `icons` (
  `id` int(11) NOT NULL,
  `icon` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `icons`
--

INSERT INTO `icons` (`id`, `icon`) VALUES
(1, 'fa-glass'),
(2, 'fa-music'),
(3, 'fa-search'),
(4, 'fa-envelope-o'),
(5, 'fa-heart'),
(6, 'fa-star'),
(7, 'fa-star-o'),
(8, 'fa-user'),
(9, 'fa-film'),
(10, 'fa-th-large'),
(11, 'fa-th'),
(12, 'fa-th-list'),
(13, 'fa-check'),
(14, 'fa-remove'),
(15, 'fa-close'),
(16, 'fa-times'),
(17, 'fa-search-plus'),
(18, 'fa-search-minus'),
(19, 'fa-power-off'),
(20, 'fa-signal'),
(21, 'fa-gear'),
(22, 'fa-cog'),
(23, 'fa-trash-o'),
(24, 'fa-home'),
(25, 'fa-file-o'),
(26, 'fa-clock-o'),
(27, 'fa-road'),
(28, 'fa-download'),
(29, 'fa-arrow-circle-o-do'),
(30, 'fa-arrow-circle-o-up'),
(31, 'fa-inbox'),
(32, 'fa-play-circle-o'),
(33, 'fa-rotate-right'),
(34, 'fa-repeat'),
(35, 'fa-refresh'),
(36, 'fa-list-alt'),
(37, 'fa-lock'),
(38, 'fa-flag'),
(39, 'fa-headphones'),
(40, 'fa-volume-off'),
(41, 'fa-volume-down'),
(42, 'fa-volume-up'),
(43, 'fa-qrcode'),
(44, 'fa-barcode'),
(45, 'fa-tag'),
(46, 'fa-tags'),
(47, 'fa-book'),
(48, 'fa-bookmark'),
(49, 'fa-print f'),
(50, 'fa-camera'),
(51, 'fa-font'),
(52, 'fa-bold'),
(53, 'fa-italic'),
(54, 'fa-text-height'),
(55, 'fa-text-width'),
(56, 'fa-align-left'),
(57, 'fa-align-center'),
(58, 'fa-align-right'),
(59, 'fa-align-justify'),
(60, 'fa-list'),
(61, 'fa-dedent'),
(62, 'fa-outdent'),
(63, 'fa-indent'),
(64, 'fa-video-camera'),
(65, 'fa-photo'),
(66, 'fa-image'),
(67, 'fa-picture-o'),
(68, 'fa-pencil'),
(69, 'fa-map-marker'),
(70, 'fa-adjust'),
(71, 'fa-tint'),
(72, 'fa-edit'),
(73, 'fa-pencil-square-o'),
(74, 'fa-share-square-o'),
(75, 'fa-check-square-o'),
(76, 'fa-arrows'),
(77, 'fa-step-backward'),
(78, 'fa-fast-backward'),
(79, 'fa-backward'),
(80, 'fa-play'),
(81, 'fa-pause'),
(82, 'fa-stop'),
(83, 'fa-forward'),
(84, 'fa-fast-forward'),
(85, 'fa-step-forward'),
(86, 'fa-eject'),
(87, 'fa-chevron-left'),
(88, 'fa-chevron-right'),
(89, 'fa-plus-circle'),
(90, 'fa-minus-circle'),
(91, 'fa-times-circle'),
(92, 'fa-check-circle'),
(93, 'fa-question-circle'),
(94, 'fa-info-circle'),
(95, 'fa-crosshairs'),
(96, 'fa-times-circle-o'),
(97, 'fa-check-circle-o'),
(98, 'fa-ban'),
(99, 'fa-arrow-left'),
(100, 'fa-arrow-right'),
(101, 'fa-arrow-up'),
(102, 'fa-arrow-down'),
(103, 'fa-mail-forward'),
(104, 'fa-share'),
(105, 'fa-expand'),
(106, 'fa-compress'),
(107, 'fa-plus'),
(108, 'fa-minus'),
(109, 'fa-asterisk'),
(110, 'fa-exclamation-circl'),
(111, 'fa-gift'),
(112, 'fa-leaf'),
(113, 'fa-fire'),
(114, 'fa-eye'),
(115, 'fa-eye-slash'),
(116, 'fa-warning'),
(117, 'fa-exclamation-trian'),
(118, 'fa-plane'),
(119, 'fa-calendar'),
(120, 'fa-random'),
(121, 'fa-comment'),
(122, 'fa-magnet'),
(123, 'fa-chevron-up'),
(124, 'fa-chevron-down'),
(125, 'fa-retweet'),
(126, 'fa-shopping-cart'),
(127, 'fa-folder'),
(128, 'fa-folder-open'),
(129, 'fa-arrows-v'),
(130, 'fa-arrows-h'),
(131, 'fa-bar-chart-o'),
(132, 'fa-bar-chart'),
(133, 'fa-twitter-square'),
(134, 'fa-facebook-square'),
(135, 'fa-camera-retro'),
(136, 'fa-key'),
(137, 'fa-gears'),
(138, 'fa-cogs'),
(139, 'fa-comments'),
(140, 'fa-thumbs-o-up'),
(141, 'fa-thumbs-o-down'),
(142, 'fa-star-half'),
(143, 'fa-heart-o'),
(144, 'fa-sign-out'),
(145, 'fa-linkedin-square'),
(146, 'fa-thumb-tack'),
(147, 'fa-external-link'),
(148, 'fa-sign-in'),
(149, 'fa-trophy'),
(150, 'fa-github-square'),
(151, 'fa-upload'),
(152, 'fa-lemon-o'),
(153, 'fa-phone'),
(154, 'fa-square-o'),
(155, 'fa-bookmark-o'),
(156, 'fa-phone-square'),
(157, 'fa-twitter'),
(158, 'fa-facebook-f'),
(159, 'fa-facebook'),
(160, 'fa-github'),
(161, 'fa-unlock'),
(162, 'fa-credit-card'),
(163, 'fa-rss'),
(164, 'fa-hdd-o'),
(165, 'fa-bullhorn'),
(166, 'fa-bell'),
(167, 'fa-certificate'),
(168, 'fa-hand-o-right'),
(169, 'fa-hand-o-left'),
(170, 'fa-hand-o-up'),
(171, 'fa-hand-o-down'),
(172, 'fa-arrow-circle-left'),
(173, 'fa-arrow-circle-righ'),
(174, 'fa-arrow-circle-up'),
(175, 'fa-arrow-circle-down'),
(176, 'fa-globe'),
(177, 'fa-wrench'),
(178, 'fa-tasks'),
(179, 'fa-filter'),
(180, 'fa-briefcase'),
(181, 'fa-arrows-alt'),
(182, 'fa-group'),
(183, 'fa-users'),
(184, 'fa-chain'),
(185, 'fa-link'),
(186, 'fa-cloud'),
(187, 'fa-flask'),
(188, 'fa-cut'),
(189, 'fa-scissors'),
(190, 'fa-copy'),
(191, 'fa-files-o'),
(192, 'fa-paperclip'),
(193, 'fa-save'),
(194, 'fa-floppy-o'),
(195, 'fa-square'),
(196, 'fa-navicon'),
(197, 'fa-reorder'),
(198, 'fa-bars'),
(199, 'fa-list-ul'),
(200, 'fa-list-ol'),
(201, 'fa-strikethrough'),
(202, 'fa-underline'),
(203, 'fa-table'),
(204, 'fa-magic'),
(205, 'fa-truck'),
(206, 'fa-pinterest'),
(207, 'fa-pinterest-square'),
(208, 'fa-google-plus-squar'),
(209, 'fa-google-plus'),
(210, 'fa-money'),
(211, 'fa-caret-down'),
(212, 'fa-caret-up'),
(213, 'fa-caret-left'),
(214, 'fa-caret-right'),
(215, 'fa-columns'),
(216, 'fa-unsorted'),
(217, 'fa-sort'),
(218, 'fa-sort-down'),
(219, 'fa-sort-desc'),
(220, 'fa-sort-up'),
(221, 'fa-sort-asc'),
(222, 'fa-envelope'),
(223, 'fa-linkedin'),
(224, 'fa-rotate-left'),
(225, 'fa-undo'),
(226, 'fa-legal'),
(227, 'fa-gavel'),
(228, 'fa-dashboard'),
(229, 'fa-tachometer'),
(230, 'fa-comment-o'),
(231, 'fa-comments-o'),
(232, 'fa-flash'),
(233, 'fa-bolt'),
(234, 'fa-sitemap'),
(235, 'fa-umbrella'),
(236, 'fa-paste'),
(237, 'fa-clipboard'),
(238, 'fa-lightbulb-o'),
(239, 'fa-exchange'),
(240, 'fa-cloud-download'),
(241, 'fa-cloud-upload'),
(242, 'fa-user-md'),
(243, 'fa-stethoscope'),
(244, 'fa-suitcase'),
(245, 'fa-bell-o'),
(246, 'fa-coffee'),
(247, 'fa-cutlery'),
(248, 'fa-file-text-o'),
(249, 'fa-building-o'),
(250, 'fa-hospital-o'),
(251, 'fa-ambulance'),
(252, 'fa-medkit'),
(253, 'fa-fighter-jet'),
(254, 'fa-beer'),
(255, 'fa-h-square'),
(256, 'fa-plus-square'),
(257, 'fa-angle-double-left'),
(258, 'fa-angle-double-righ'),
(259, 'fa-angle-double-up'),
(260, 'fa-angle-double-down'),
(261, 'fa-angle-left'),
(262, 'fa-angle-right'),
(263, 'fa-angle-up'),
(264, 'fa-angle-down'),
(265, 'fa-desktop'),
(266, 'fa-laptop'),
(267, 'fa-tablet'),
(268, 'fa-mobile-phone'),
(269, 'fa-mobile'),
(270, 'fa-circle-o'),
(271, 'fa-quote-left'),
(272, 'fa-quote-right'),
(273, 'fa-spinner'),
(274, 'fa-circle'),
(275, 'fa-mail-reply'),
(276, 'fa-reply'),
(277, 'fa-github-alt'),
(278, 'fa-folder-o'),
(279, 'fa-folder-open-o'),
(280, 'fa-smile-o'),
(281, 'fa-frown-o'),
(282, 'fa-meh-o'),
(283, 'fa-gamepad'),
(284, 'fa-keyboard-o'),
(285, 'fa-flag-o'),
(286, 'fa-flag-checkered'),
(287, 'fa-terminal'),
(288, 'fa-code'),
(289, 'fa-mail-reply-all'),
(290, 'fa-reply-all'),
(291, 'fa-star-half-empty'),
(292, 'fa-star-half-full'),
(293, 'fa-star-half-o'),
(294, 'fa-location-arrow'),
(295, 'fa-crop'),
(296, 'fa-code-fork'),
(297, 'fa-unlink'),
(298, 'fa-chain-broken'),
(299, 'fa-question'),
(300, 'fa-info'),
(301, 'fa-exclamation'),
(302, 'fa-superscript'),
(303, 'fa-subscript'),
(304, 'fa-eraser'),
(305, 'fa-puzzle-piece'),
(306, 'fa-microphone'),
(307, 'fa-microphone-slash'),
(308, 'fa-shield'),
(309, 'fa-calendar-o'),
(310, 'fa-fire-extinguisher'),
(311, 'fa-rocket'),
(312, 'fa-maxcdn'),
(313, 'fa-chevron-circle-le'),
(314, 'fa-chevron-circle-ri'),
(315, 'fa-chevron-circle-up'),
(316, 'fa-chevron-circle-do'),
(317, 'fa-html5'),
(318, 'fa-css3'),
(319, 'fa-anchor'),
(320, 'fa-unlock-alt'),
(321, 'fa-bullseye'),
(322, 'fa-ellipsis-h'),
(323, 'fa-ellipsis-v'),
(324, 'fa-rss-square'),
(325, 'fa-play-circle'),
(326, 'fa-ticket'),
(327, 'fa-minus-square'),
(328, 'fa-minus-square-o'),
(329, 'fa-level-up'),
(330, 'fa-level-down'),
(331, 'fa-check-square'),
(332, 'fa-pencil-square'),
(333, 'fa-external-link-squ'),
(334, 'fa-share-square'),
(335, 'fa-compass'),
(336, 'fa-toggle-down'),
(337, 'fa-caret-square-o-do'),
(338, 'fa-toggle-up'),
(339, 'fa-caret-square-o-up'),
(340, 'fa-toggle-right'),
(341, 'fa-caret-square-o-ri'),
(342, 'fa-euro'),
(343, 'fa-eur'),
(344, 'fa-gbp'),
(345, 'fa-dollar'),
(346, 'fa-usd'),
(347, 'fa-rupee'),
(348, 'fa-inr'),
(349, 'fa-cny'),
(350, 'fa-rmb'),
(351, 'fa-yen'),
(352, 'fa-jpy'),
(353, 'fa-ruble'),
(354, 'fa-rouble'),
(355, 'fa-rub'),
(356, 'fa-won'),
(357, 'fa-krw'),
(358, 'fa-bitcoin'),
(359, 'fa-btc'),
(360, 'fa-file'),
(361, 'fa-file-text'),
(362, 'fa-sort-alpha-asc'),
(363, 'fa-sort-alpha-desc'),
(364, 'fa-sort-amount-asc'),
(365, 'fa-sort-amount-desc'),
(366, 'fa-sort-numeric-asc'),
(367, 'fa-sort-numeric-desc'),
(368, 'fa-thumbs-up'),
(369, 'fa-thumbs-down'),
(370, 'fa-youtube-square'),
(371, 'fa-youtube'),
(372, 'fa-xing'),
(373, 'fa-xing-square'),
(374, 'fa-youtube-play'),
(375, 'fa-dropbox'),
(376, 'fa-stack-overflow'),
(377, 'fa-instagram'),
(378, 'fa-flickr'),
(379, 'fa-adn'),
(380, 'fa-bitbucket'),
(381, 'fa-bitbucket-square'),
(382, 'fa-tumblr'),
(383, 'fa-tumblr-square'),
(384, 'fa-long-arrow-down'),
(385, 'fa-long-arrow-up'),
(386, 'fa-long-arrow-left'),
(387, 'fa-long-arrow-right'),
(388, 'fa-apple'),
(389, 'fa-windows'),
(390, 'fa-android'),
(391, 'fa-linux'),
(392, 'fa-dribbble'),
(393, 'fa-skype'),
(394, 'fa-foursquare'),
(395, 'fa-trello'),
(396, 'fa-female'),
(397, 'fa-male'),
(398, 'fa-gittip'),
(399, 'fa-gratipay'),
(400, 'fa-sun-o'),
(401, 'fa-moon-o'),
(402, 'fa-archive'),
(403, 'fa-bug'),
(404, 'fa-vk'),
(405, 'fa-weibo'),
(406, 'fa-renren'),
(407, 'fa-pagelines'),
(408, 'fa-stack-exchange'),
(409, 'fa-arrow-circle-o-ri'),
(410, 'fa-arrow-circle-o-le'),
(411, 'fa-toggle-left'),
(412, 'fa-caret-square-o-le'),
(413, 'fa-dot-circle-o'),
(414, 'fa-wheelchair'),
(415, 'fa-vimeo-square'),
(416, 'fa-turkish-lira'),
(417, 'fa-try'),
(418, 'fa-plus-square-o'),
(419, 'fa-space-shuttle'),
(420, 'fa-slack'),
(421, 'fa-envelope-square'),
(422, 'fa-wordpress'),
(423, 'fa-openid'),
(424, 'fa-institution'),
(425, 'fa-bank'),
(426, 'fa-university'),
(427, 'fa-mortar-board'),
(428, 'fa-graduation-cap'),
(429, 'fa-yahoo'),
(430, 'fa-google'),
(431, 'fa-reddit'),
(432, 'fa-reddit-square'),
(433, 'fa-stumbleupon-circl'),
(434, 'fa-stumbleupon'),
(435, 'fa-delicious'),
(436, 'fa-digg'),
(437, 'fa-pied-piper'),
(438, 'fa-pied-piper-alt'),
(439, 'fa-drupal'),
(440, 'fa-joomla'),
(441, 'fa-language'),
(442, 'fa-fax'),
(443, 'fa-building'),
(444, 'fa-child'),
(445, 'fa-paw'),
(446, 'fa-spoon'),
(447, 'fa-cube'),
(448, 'fa-cubes'),
(449, 'fa-behance'),
(450, 'fa-behance-square'),
(451, 'fa-steam'),
(452, 'fa-steam-square'),
(453, 'fa-recycle'),
(454, 'fa-automobile'),
(455, 'fa-car'),
(456, 'fa-cab'),
(457, 'fa-taxi'),
(458, 'fa-tree'),
(459, 'fa-spotify'),
(460, 'fa-deviantart'),
(461, 'fa-soundcloud'),
(462, 'fa-database'),
(463, 'fa-file-pdf-o'),
(464, 'fa-file-word-o'),
(465, 'fa-file-excel-o'),
(466, 'fa-file-powerpoint-o'),
(467, 'fa-file-photo-o'),
(468, 'fa-file-picture-o'),
(469, 'fa-file-image-o'),
(470, 'fa-file-zip-o'),
(471, 'fa-file-archive-o'),
(472, 'fa-file-sound-o'),
(473, 'fa-file-audio-o'),
(474, 'fa-file-movie-o'),
(475, 'fa-file-video-o'),
(476, 'fa-file-code-o'),
(477, 'fa-vine'),
(478, 'fa-codepen'),
(479, 'fa-jsfiddle'),
(480, 'fa-life-bouy'),
(481, 'fa-life-buoy'),
(482, 'fa-life-saver'),
(483, 'fa-support'),
(484, 'fa-life-ring'),
(485, 'fa-circle-o-notch'),
(486, 'fa-ra'),
(487, 'fa-rebel'),
(488, 'fa-ge'),
(489, 'fa-empire'),
(490, 'fa-git-square'),
(491, 'fa-git'),
(492, 'fa-hacker-news'),
(493, 'fa-tencent-weibo'),
(494, 'fa-qq'),
(495, 'fa-wechat'),
(496, 'fa-weixin'),
(497, 'fa-send'),
(498, 'fa-paper-plane'),
(499, 'fa-send-o'),
(500, 'fa-paper-plane-o'),
(501, 'fa-history'),
(502, 'fa-genderless'),
(503, 'fa-circle-thin'),
(504, 'fa-header'),
(505, 'fa-paragraph'),
(506, 'fa-sliders'),
(507, 'fa-share-alt'),
(508, 'fa-share-alt-square'),
(509, 'fa-bomb'),
(510, 'fa-soccer-ball-o'),
(511, 'fa-futbol-o'),
(512, 'fa-tty'),
(513, 'fa-binoculars'),
(514, 'fa-plug'),
(515, 'fa-slideshare'),
(516, 'fa-twitch'),
(517, 'fa-yelp'),
(518, 'fa-newspaper-o'),
(519, 'fa-wifi'),
(520, 'fa-calculator'),
(521, 'fa-paypal'),
(522, 'fa-google-wallet'),
(523, 'fa-cc-visa'),
(524, 'fa-cc-mastercard'),
(525, 'fa-cc-discover'),
(526, 'fa-cc-amex'),
(527, 'fa-cc-paypal'),
(528, 'fa-cc-stripe'),
(529, 'fa-bell-slash'),
(530, 'fa-bell-slash-o'),
(531, 'fa-trash'),
(532, 'fa-copyright'),
(533, 'fa-at'),
(534, 'fa-eyedropper'),
(535, 'fa-paint-brush'),
(536, 'fa-birthday-cake'),
(537, 'fa-area-chart'),
(538, 'fa-pie-chart'),
(539, 'fa-line-chart'),
(540, 'fa-lastfm'),
(541, 'fa-lastfm-square'),
(542, 'fa-toggle-off'),
(543, 'fa-toggle-on'),
(544, 'fa-bicycle'),
(545, 'fa-bus'),
(546, 'fa-ioxhost'),
(547, 'fa-angellist'),
(548, 'fa-cc za'),
(549, 'fa-shekel'),
(550, 'fa-sheqel'),
(551, 'fa-ils'),
(552, 'fa-meanpath'),
(553, 'fa-buysellads'),
(554, 'fa-connectdevelop'),
(555, 'fa-dashcube'),
(556, 'fa-forumbee'),
(557, 'fa-leanpub'),
(558, 'fa-sellsy'),
(559, 'fa-shirtsinbulk'),
(560, 'fa-simplybuilt'),
(561, 'fa-skyatlas'),
(562, 'fa-cart-plus'),
(563, 'fa-cart-arrow-down'),
(564, 'fa-diamond'),
(565, 'fa-ship'),
(566, 'fa-user-secret'),
(567, 'fa-motorcycle'),
(568, 'fa-street-view'),
(569, 'fa-heartbeat'),
(570, 'fa-venus'),
(571, 'fa-mars'),
(572, 'fa-mercury'),
(573, 'fa-transgender'),
(574, 'fa-transgender-alt'),
(575, 'fa-venus-double'),
(576, 'fa-mars-double'),
(577, 'fa-venus-mars'),
(578, 'fa-mars-stroke'),
(579, 'fa-mars-stroke-v'),
(580, 'fa-mars-stroke-h'),
(581, 'fa-neuter'),
(582, 'fa-facebook-official'),
(583, 'fa-pinterest-p'),
(584, 'fa-whatsapp'),
(585, 'fa-server'),
(586, 'fa-user-plus'),
(587, 'fa-user-times'),
(588, 'fa-hotel'),
(589, 'fa-bed'),
(590, 'fa-viacoin'),
(591, 'fa-train'),
(592, 'fa-subway'),
(593, 'fa-medium');

-- --------------------------------------------------------

--
-- Table structure for table `languages`
--

CREATE TABLE `languages` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(500) NOT NULL,
  `file` varchar(1000) NOT NULL,
  `img` varchar(1000) NOT NULL,
  `status` varchar(500) NOT NULL COMMENT '0-active,1-inactive'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `languages`
--

INSERT INTO `languages` (`id`, `name`, `file`, `img`, `status`) VALUES
(3, 'english', 'english_lang.php', '', '0'),
(6, 'hindi', 'hindi_lang.php', 'IN.png', '1');

-- --------------------------------------------------------

--
-- Table structure for table `login_attempts`
--

CREATE TABLE `login_attempts` (
  `id` int(11) UNSIGNED NOT NULL,
  `ip_address` varchar(15) NOT NULL,
  `login` varchar(100) NOT NULL,
  `time` int(11) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `member_payments`
--

CREATE TABLE `member_payments` (
  `id` int(11) NOT NULL,
  `txn_id` varchar(256) NOT NULL,
  `admin_id` int(11) NOT NULL,
  `admin_name` varchar(256) NOT NULL,
  `admin_phone` varchar(256) NOT NULL,
  `member_id` int(11) NOT NULL,
  `member_name` varchar(256) NOT NULL,
  `member_phone` varchar(256) NOT NULL,
  `payment_gross` float(10,2) NOT NULL,
  `currency_code` varchar(10) NOT NULL,
  `ref_no` varchar(256) NOT NULL,
  `payment_status` varchar(10) NOT NULL,
  `payment_getway` varchar(10) NOT NULL,
  `date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `menus`
--

CREATE TABLE `menus` (
  `id` int(11) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `title` varchar(255) NOT NULL,
  `position` enum('1','2','3','') NOT NULL DEFAULT '1' COMMENT '1.Other, 2.Top, 3.Bottom',
  `content` longtext
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `menus`
--

INSERT INTO `menus` (`id`, `slug`, `title`, `position`, `content`) VALUES
(4, 'menu1', 'Menu', '2', '[{\"id\":\"4\",\"parent_id\":\"0\",\"type\":\"link\",\"label\":\"Home\",\"value\":\"#\"},{\"id\":\"5\",\"parent_id\":\"0\",\"type\":\"link\",\"label\":\"Browse Categories\",\"value\":\"\\/browse\\/categories\"},{\"id\":\"7\",\"parent_id\":\"0\",\"type\":\"link\",\"label\":\"Campaigns\",\"value\":\"\\/campaigns\"},{\"id\":\"8\",\"parent_id\":\"0\",\"type\":\"link\",\"label\":\"FAQ\",\"value\":\"\\/browse\\/faq\"}]');

-- --------------------------------------------------------

--
-- Table structure for table `notification`
--

CREATE TABLE `notification` (
  `id` int(11) NOT NULL,
  `ref_id` int(11) NOT NULL,
  `type` int(11) NOT NULL COMMENT '0-users,1-campign,2-withdrawal,3-withdrwal_paid,4-withdrwal_cancel',
  `is_viewed` int(11) NOT NULL COMMENT '0-not_view,1-viewed',
  `date` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `notification`
--

INSERT INTO `notification` (`id`, `ref_id`, `type`, `is_viewed`, `date`) VALUES
(61, 12, 1, 1, '2017-01-31 12:31:44'),
(62, 13, 1, 1, '2017-01-31 13:34:37'),
(63, 14, 1, 1, '2017-01-31 13:57:19'),
(64, 15, 1, 1, '2017-01-31 14:00:41'),
(65, 16, 1, 1, '2017-01-31 14:12:38'),
(66, 17, 1, 1, '2017-01-31 14:16:15'),
(67, 17, 0, 1, '2017-01-31 14:29:51');

-- --------------------------------------------------------

--
-- Table structure for table `pages`
--

CREATE TABLE `pages` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(256) NOT NULL,
  `slug` varchar(256) NOT NULL,
  `content` text NOT NULL,
  `meta_title` varchar(256) NOT NULL,
  `meta_keyword` varchar(256) NOT NULL,
  `meta_description` text NOT NULL,
  `status` varchar(256) NOT NULL COMMENT '0-published,1-draft,2-trash',
  `updated` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `dated` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `img` varchar(256) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `payments`
--

CREATE TABLE `payments` (
  `id` int(11) NOT NULL,
  `txn_id` varchar(255) NOT NULL,
  `reward_id` int(11) NOT NULL,
  `reward_name` varchar(256) NOT NULL,
  `campaign_id` int(11) NOT NULL,
  `campaign_name` varchar(256) NOT NULL,
  `user_id` int(11) NOT NULL,
  `user` varchar(256) NOT NULL,
  `general_email` varchar(256) NOT NULL,
  `phone` varchar(11) NOT NULL,
  `payment_gross` float(10,2) NOT NULL,
  `currency_code` varchar(5) NOT NULL,
  `payer_email` varchar(250) NOT NULL,
  `payment_status` varchar(100) NOT NULL,
  `payment_getway` varchar(100) NOT NULL,
  `date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `payments`
--

INSERT INTO `payments` (`id`, `txn_id`, `reward_id`, `reward_name`, `campaign_id`, `campaign_name`, `user_id`, `user`, `general_email`, `phone`, `payment_gross`, `currency_code`, `payer_email`, `payment_status`, `payment_getway`, `date`) VALUES
(11, '0JR10097192395427', 0, 'Plegde Without Reward', 12, 'Jeemosa - Khama Ghani Sa', 1, 'Admin istrator', 'admin@admin.com', '895512320', 3000.00, 'USD', 'shubham.atn-facilitator-1@gmail.com', 'Success', 'Paypal', '2017-01-31');

-- --------------------------------------------------------

--
-- Table structure for table `post`
--

CREATE TABLE `post` (
  `id` int(11) NOT NULL,
  `post_title` varchar(256) NOT NULL,
  `mem_name` varchar(256) NOT NULL,
  `post_desc` text NOT NULL,
  `category` int(11) NOT NULL,
  `post_img` varchar(256) NOT NULL,
  `slug` varchar(256) NOT NULL,
  `date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `post`
--

INSERT INTO `post` (`id`, `post_title`, `mem_name`, `post_desc`, `category`, `post_img`, `slug`, `date`) VALUES
(4, 'Post Title', 'Person Name', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Quisque cursus, sem eget sagittis sagittis, nisl magna sodales eros, ut feugiat velit velit non turpis. Cras eu nibh dapibus justo fringilla...</p>', 3, 'asia.jpg', 'post-title', '2016-12-06'),
(5, 'post', 'name', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Quisque cursus, sem eget sagittis sagittis, nisl magna sodales eros, ut feugiat velit velit non turpis. Cras eu nibh dapibus justo fringilla...Lorem ipsum dolor sit amet, consectetur adipiscing elit. Quisque cursus, sem eget sagittis sagittis, nisl magna sodales eros, ut feugiat velit velit non turpis. Cras eu nibh dapibus justo fringilla...Lorem ipsum dolor sit amet, consectetur adipiscing elit. Quisque cursus, sem eget sagittis sagittis, nisl magna sodales eros, ut feugiat velit velit non turpis. Cras eu nibh dapibus justo fringilla...</p>', 4, 'people.jpg', 'post2', '2016-12-06'),
(6, 'Post Title', 'post name', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Quisque cursus, sem eget sagittis sagittis, nisl magna sodales eros, ut feugiat velit velit non turpis. Cras eu nibh dapibus justo fringilla...</p>', 4, 'girl.jpg', 'post-title2', '2016-12-11'),
(7, 'one', 'sjhuhuhu', '<p>dsds</p>', 3, '', 'one', '0000-00-00'),
(8, 'one', 'shuabh', '<p>dsdsd</p>', 3, '', 'one2', '0000-00-00');

-- --------------------------------------------------------

--
-- Table structure for table `post_category`
--

CREATE TABLE `post_category` (
  `id` int(11) NOT NULL,
  `name` varchar(256) NOT NULL,
  `desc` text NOT NULL,
  `status` int(11) NOT NULL COMMENT '0-active,1-inactive'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `public_preferences`
--

CREATE TABLE `public_preferences` (
  `id` int(1) NOT NULL,
  `transition_page` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `public_preferences`
--

INSERT INTO `public_preferences` (`id`, `transition_page`) VALUES
(1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `rewards`
--

CREATE TABLE `rewards` (
  `id` int(10) UNSIGNED NOT NULL,
  `campaign_id` int(10) UNSIGNED NOT NULL,
  `title` varchar(256) NOT NULL,
  `amount` decimal(10,2) NOT NULL,
  `desc` text NOT NULL,
  `delivery_date` date NOT NULL,
  `backer_limit` int(11) NOT NULL,
  `limit_from` date NOT NULL,
  `limit_until` date DEFAULT NULL,
  `creat_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `update_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `rewards`
--

INSERT INTO `rewards` (`id`, `campaign_id`, `title`, `amount`, `desc`, `delivery_date`, `backer_limit`, `limit_from`, `limit_until`, `creat_date`, `update_date`) VALUES
(192, 12, 'Free Membership Card for 1 year', '1000.00', '<p>Cras ultricies velit at eros blandit rhoncus. Integer malesuada bibendum varius. Vestibulum at sem ac ex tempor pellentesque sit amet a nulla. Mauris fermentum nec arcu congue scelerisque. Nam nec ante id metus finibus sagittis. Vestibulum volutpat vulputate placerat. Donec suscipit posuere urna, sit amet malesuada nulla rutrum ut.</p>', '2017-02-28', 10, '2017-01-31', '2017-02-28', '2017-01-31 07:03:09', '2017-01-31 12:37:29'),
(193, 13, '', '0.00', '', '0000-00-00', 0, '0000-00-00', '0000-00-00', '2017-01-31 08:05:34', '0000-00-00 00:00:00'),
(194, 15, '', '0.00', '', '0000-00-00', 0, '0000-00-00', '0000-00-00', '2017-01-31 08:30:45', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `routes`
--

CREATE TABLE `routes` (
  `id` int(11) NOT NULL,
  `display_url` varchar(256) NOT NULL,
  `url` varchar(256) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `routes`
--

INSERT INTO `routes` (`id`, `display_url`, `url`) VALUES
(1, 'cms/title', 'cms/index/title'),
(2, 'cms/title2', 'cms/index/title2'),
(3, 'cms/demo-one', 'cms/index/demo-one');

-- --------------------------------------------------------

--
-- Table structure for table `setting`
--

CREATE TABLE `setting` (
  `id` int(11) NOT NULL,
  `name` varchar(256) NOT NULL,
  `owner_name` varchar(256) NOT NULL,
  `number` varchar(15) NOT NULL,
  `d_currency` int(11) NOT NULL,
  `currency_change` int(11) NOT NULL COMMENT '1-google,2-yahoo',
  `d_language` int(11) NOT NULL,
  `min_withdrawal` int(11) NOT NULL,
  `e_mail` varchar(256) NOT NULL,
  `logo` varchar(256) NOT NULL,
  `favicon` varchar(256) NOT NULL,
  `paypal_id` varchar(256) NOT NULL,
  `paypal_sandbox` int(11) NOT NULL COMMENT '1-yes,0-no',
  `strip_api_key` varchar(256) NOT NULL,
  `strip_secret_key` varchar(256) NOT NULL,
  `d_campaign_layout` int(11) NOT NULL COMMENT '0-list,1-grid',
  `footer_text` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `setting`
--

INSERT INTO `setting` (`id`, `name`, `owner_name`, `number`, `d_currency`, `currency_change`, `d_language`, `min_withdrawal`, `e_mail`, `logo`, `favicon`, `paypal_id`, `paypal_sandbox`, `strip_api_key`, `strip_secret_key`, `d_campaign_layout`, `footer_text`) VALUES
(1, 'Tam Crowd Funding', 'owner name', '1234567890', 227, 1, 3, 100, 'abcd@gmail.com', 'logo.png', 'favicon.png', 'abbcd@vbh.com', 0, '', '', 0, '<p><a href=\"http://atntechnologies.com/\">2016</a></p>');

-- --------------------------------------------------------

--
-- Table structure for table `smtp_settings`
--

CREATE TABLE `smtp_settings` (
  `id` int(11) NOT NULL,
  `username` varchar(256) NOT NULL,
  `password` varchar(256) NOT NULL,
  `email` varchar(256) NOT NULL,
  `port` int(11) NOT NULL,
  `host` varchar(256) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `smtp_settings`
--

INSERT INTO `smtp_settings` (`id`, `username`, `password`, `email`, `port`, `host`) VALUES
(1, 'shubham', '123456', 'shubham.dayma779097@gmail.com', 21, 'google+');

-- --------------------------------------------------------

--
-- Table structure for table `social_links`
--

CREATE TABLE `social_links` (
  `id` int(11) NOT NULL,
  `facebook` varchar(256) NOT NULL,
  `twitter` varchar(256) NOT NULL,
  `youtube` varchar(256) NOT NULL,
  `google_plus` varchar(256) NOT NULL,
  `linkedin` varchar(256) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `social_links`
--

INSERT INTO `social_links` (`id`, `facebook`, `twitter`, `youtube`, `google_plus`, `linkedin`) VALUES
(1, '', 'https://www.twitter.com', 'https://www.youtube.com', 'https://www.googleplus.com', 'https://www.linkedin.com');

-- --------------------------------------------------------

--
-- Table structure for table `stories`
--

CREATE TABLE `stories` (
  `id` int(10) UNSIGNED NOT NULL,
  `campaign_id` int(10) UNSIGNED NOT NULL,
  `video` varchar(256) NOT NULL,
  `desc` text NOT NULL,
  `need` text NOT NULL,
  `risk` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `stories`
--

INSERT INTO `stories` (`id`, `campaign_id`, `video`, `desc`, `need`, `risk`) VALUES
(28, 12, 'https://www.youtube.com/watch?v=4TQUaRRL3QI', '<p>Maecenas consequat ullamcorper sapien eu fringilla. Nam risus nulla, ultrices quis vehicula in, facilisis et nulla. Etiam dapibus iaculis ullamcorper. Phasellus eget nisl interdum, maximus mauris facilisis, rhoncus massa. Curabitur tincidunt urna maximus, sodales nibh posuere, bibendum odio. In ut diam suscipit, lacinia magna a, varius nisl. Nulla facilisi.</p>', '<p>Proin neque erat, condimentum eget arcu non, aliquet venenatis risus. Maecenas interdum faucibus est ac dictum. Praesent purus diam, rutrum vitae lacinia vel, consequat convallis ante. Proin tempor turpis sed commodo viverra. Aliquam eu urna non mauris elementum volutpat eget at felis. In dapibus aliquam pharetra. Mauris blandit elementum maximus.</p>', 'Quisque commodo iaculis nibh, id fringilla mi volutpat vitae. Aenean metus nisl, laoreet blandit velit nec, venenatis convallis mi. Quisque volutpat, mauris quis elementum ornare, nisl sapien convallis metus, vitae dictum est ex et lorem. Curabitur ornare, tellus non porta placerat, ante nibh scelerisque nisi, id venenatis dui mauris eget felis. Fusce nulla eros, interdum sagittis tortor vel, sagittis interdum augue.'),
(30, 13, '', '<p>Suspendisse in ipsum eu ante porttitor sagittis nec sed turpis. Quisque lobortis scelerisque orci, at scelerisque libero imperdiet ac. Vivamus ut odio leo. Curabitur dolor elit, convallis a magna ac, convallis sollicitudin sem. Proin sodales suscipit aliquet. Praesent vitae aliquet ligula. Nulla eu iaculis erat. Integer condimentum massa nec metus tristique aliquam id sit amet tortor. Nunc maximus diam sed lorem luctus, non suscipit ex placerat. Nullam molestie dignissim erat, gravida aliquet purus venenatis ut. Ut porta urna diam, ut semper nisl tristique quis.</p>', '<p>Donec ut justo non nisi dictum eleifend. Praesent ut purus sed nisl porttitor volutpat in quis lacus. Morbi rhoncus vulputate massa non vulputate. Vivamus tortor urna, tristique ac varius eget, facilisis quis purus. Maecenas malesuada nunc at tortor condimentum tristique. Quisque metus leo, vestibulum consequat mauris sed, sodales tincidunt mi. Quisque rutrum non est eu gravida. Phasellus a sapien tortor. Donec nec iaculis lorem. Vestibulum ac mauris diam.</p>', ''),
(31, 14, '', '<p>Praesent vitae scelerisque mi. Donec a diam <a href=\"http://www.lipsum.com/feed/html#\">sit amet</a> felis imperdiet condimentum. Morbi dapibus eros vitae orci mollis dictum. Donec vitae molestie mauris, at vestibulum est. Pellentesque vel <a href=\"http://www.lipsum.com/feed/html#\">consectetur</a> lectus, vel facilisis nisi. Phasellus pellentesque lectus in justo tincidunt, nec tempus <a href=\"http://www.lipsum.com/feed/html#\">lorem</a> finibus. Phasellus eu mattis felis.</p>', '<p>Mauris nunc urna, sollicitudin non tempus sit amet, consequat sit amet libero. Duis consectetur nibh erat, ut ornare nulla feugiat vel. Nulla aliquam ultricies augue. Nullam tempor, nisi in ullamcorper finibus, orci ipsum volutpat augue, id molestie tellus lectus eget mauris. Nulla at hendrerit lacus. Donec rhoncus velit vel justo molestie blandit. Etiam laoreet ultricies est sed finibus.</p>', 'Curabitur ut risus vestibulum, lobortis lectus ut, pellentesque velit. Donec pellentesque risus vitae arcu fringilla placerat. Phasellus et erat ut augue aliquam maximus tincidunt a augue. Nam molestie libero vel erat dignissim, non pharetra dui maximus. Vestibulum porttitor euismod ante, id tempus justo vehicula quis. Maecenas auctor purus sit amet condimentum rutrum. Morbi maximus velit libero, sed vulputate nisi tristique eu. Curabitur luctus malesuada mi, eu egestas libero tempus quis.'),
(32, 15, '', '<p>Nam eu enim porta, pharetra neque in, egestas nisi. Interdum et malesuada fames ac ante ipsum primis in faucibus. Nulla posuere justo leo, ut dictum velit posuere sed. Donec vel ex justo. Vestibulum condimentum erat non neque bibendum egestas. Fusce consequat, nunc consequat tincidunt ornare, augue velit sollicitudin arcu, at pretium risus lorem id erat. Cras id ligula sapien. Vestibulum venenatis, urna a commodo sagittis, arcu augue commodo magna, dignissim varius risus ante ac nibh. In vel dignissim nisi, et accumsan magna. Nullam efficitur ligula tristique varius mattis. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas.</p>', '<p>Sed accumsan magna a gravida pharetra. Donec a tortor vitae lectus blandit viverra sed vel metus. Integer risus mauris, placerat in interdum eget, consectetur nec nulla. Suspendisse consectetur eleifend enim,</p>', 'Vivamus sem arcu, vestibulum et vehicula quis, consequat sit amet erat. In hac habitasse platea dictumst. Fusce molestie libero elit, sed aliquam quam sodales eget. Donec dignissim diam vitae venenatis condimentum. Aliquam at ipsum consectetur, hendrerit leo ac, tempus diam. Cras ac porttitor orci. Quisque convallis eros non ligula pellentesque, vitae pulvinar purus posuere. Vestibulum elementum orci at tellus auctor bibendum. Cras eu iaculis purus. Vestibulum non lacinia sapien. Etiam interdum luctus leo, id gravida mauris imperdiet non. Praesent laoreet sem ex, sit amet iaculis dolor ullamcorper eu. Aliquam sagittis, massa sit amet interdum scelerisque, odio augue viverra est, ut pretium massa sem id eros.'),
(33, 16, '', '<p>Vivamus tincidunt erat vel venenatis placerat. Nunc pellentesque iaculis velit sit amet convallis. Quisque at congue lorem. Duis suscipit ligula sed varius congue. Aenean dapibus congue faucibus. Maecenas ornare massa sit amet nibh mollis viverra. Cras tincidunt, diam eu pulvinar euismod, sapien neque condimentum ligula, eu condimentum orci lacus quis dolor.</p>', '<p>Suspendisse in ipsum eu ante porttitor sagittis nec sed turpis. Quisque lobortis scelerisque orci, at scelerisque libero imperdiet ac. Vivamus ut odio leo. Curabitur dolor elit, convallis a magna ac, convallis sollicitudin sem. Proin sodales suscipit aliquet. Praesent vitae aliquet ligula. Nulla eu iaculis erat. Integer condimentum massa nec metus tristique aliquam id sit amet tortor. Nunc maximus diam sed lorem luctus, non suscipit ex placerat. Nullam molestie dignissim erat, gravida aliquet purus venenatis ut. Ut porta urna diam, ut semper nisl tristique quis.</p>', 'Interdum et malesuada fames ac ante ipsum primis in faucibus. Vestibulum at porttitor felis. Donec sodales arcu purus, eu aliquam magna porttitor vel. Nunc hendrerit quis neque et blandit. Morbi laoreet quam eget efficitur placerat. Vivamus eu arcu purus. Morbi dignissim sagittis risus sit amet aliquam. Nam auctor lorem a ligula consequat, non bibendum erat dignissim.'),
(34, 17, '', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce sed urna vel erat rutrum convallis. Phasellus a interdum tellus, vitae molestie enim. Praesent eu orci tempor, ornare est id, bibendum tortor. Praesent a vestibulum erat, sit amet tincidunt turpis. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Vivamus tincidunt erat vel venenatis placerat. Nunc pellentesque iaculis velit sit amet convallis. Quisque at congue lorem. Duis suscipit ligula sed varius congue. Aenean dapibus congue faucibus. Maecenas ornare massa sit amet nibh mollis viverra. Cras tincidunt, diam eu pulvinar euismod, sapien neque condimentum ligula, eu condimentum orci lacus quis dolor.</p>', '<p>Suspendisse in ipsum eu ante porttitor sagittis nec sed turpis. Quisque lobortis scelerisque orci, at scelerisque libero imperdiet ac. Vivamus ut odio leo. Curabitur dolor elit, convallis a magna ac, convallis sollicitudin sem. Proin sodales suscipit aliquet. Praesent vitae aliquet ligula. Nulla eu iaculis erat. Integer condimentum massa nec metus tristique aliquam id sit amet tortor. Nunc maximus diam sed lorem luctus, non suscipit ex placerat. Nullam molestie dignissim erat, gravida aliquet purus venenatis ut. Ut porta urna diam, ut semper nisl tristique quis.</p>', 'Interdum et malesuada fames ac ante ipsum primis in faucibus. Maecenas mollis a lectus eu varius. Phasellus at nisi nec lectus vestibulum aliquam non vel urna. Phasellus at enim hendrerit, tincidunt nisi in, dignissim mi. Etiam arcu eros, ornare ut gravida sed, scelerisque a diam. Maecenas elementum, turpis id sodales volutpat, nulla libero lacinia nibh, ut sagittis nibh ligula vitae risus. Morbi finibus semper nunc, vel suscipit neque consequat a. Aenean non massa et sapien pellentesque finibus. Quisque gravida cursus augue non tincidunt. Ut placerat gravida erat eget sagittis. In quis vehicula dolor.');

-- --------------------------------------------------------

--
-- Table structure for table `subscribe`
--

CREATE TABLE `subscribe` (
  `id` int(11) NOT NULL,
  `email` varchar(256) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `subscribe`
--

INSERT INTO `subscribe` (`id`, `email`) VALUES
(3, 'info@atntechnologies.in');

-- --------------------------------------------------------

--
-- Table structure for table `tag`
--

CREATE TABLE `tag` (
  `id` int(11) NOT NULL,
  `name` varchar(256) NOT NULL,
  `desc` text NOT NULL,
  `date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tag`
--

INSERT INTO `tag` (`id`, `name`, `desc`, `date`) VALUES
(1, 'Restaurant', '', '2017-01-31'),
(2, 'Startup', '', '2017-01-31'),
(3, 'Food Chain', '', '2017-01-31'),
(4, 'Online Food', '', '2017-01-31'),
(5, 'Painting', '', '2017-01-31'),
(6, 'Abstract', '', '2017-01-31'),
(7, 'Tiger', '', '2017-01-31'),
(8, 'Save Life', '', '2017-01-31'),
(9, 'Pop', '', '2017-01-31'),
(10, 'Music', '', '2017-01-31'),
(11, 'Event', '', '2017-01-31'),
(12, 'Movie', '', '2017-01-31'),
(13, 'Social', '', '2017-01-31'),
(14, 'Shoes', '', '2017-01-31'),
(15, 'Handcrafted', '', '2017-01-31');

-- --------------------------------------------------------

--
-- Table structure for table `templates`
--

CREATE TABLE `templates` (
  `id` int(11) NOT NULL,
  `name` varchar(256) NOT NULL,
  `subject` varchar(256) NOT NULL,
  `matter` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `templates`
--

INSERT INTO `templates` (`id`, `name`, `subject`, `matter`) VALUES
(1, 'User Welcome Mail', 'Welcome Mail', '<p>Dear (t_user_name) <user_name><user_name>,</user_name></user_name></p><p>We welcome you to (t_firm_name).</p>'),
(2, 'Thankyou Mail For Supporting Campiagn', 'Thanks for your support', '<p>Dear (t_user_name),</p><p>Your Payment of (t_amount) is succefull.Thanks for supporting (t_camp_name).</p>'),
(3, 'Payment Success Mail For Member', 'Payment Success', '<p>Dear (t_member_name),</p><p>Your requset for (t_amount) is approved and respective fund has been transfer to your paypal account i.e (t_paypal_email). </p>'),
(4, 'Payment Cancel Mail For Member', 'Payment Cancel', '<p>Dear (t_member_name),</p><p>Your request for (t_amount) is canceled due to some reasons.For more information you may contact to admin</p>');

-- --------------------------------------------------------

--
-- Table structure for table `testimonials`
--

CREATE TABLE `testimonials` (
  `id` int(11) NOT NULL,
  `name` varchar(256) NOT NULL,
  `img` varchar(256) NOT NULL,
  `description` text NOT NULL,
  `status` varchar(10) NOT NULL,
  `desgination` varchar(256) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `testimonials`
--

INSERT INTO `testimonials` (`id`, `name`, `img`, `description`, `status`, `desgination`) VALUES
(1, 'Testimonial 1', '', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Quisque cursus, sem eget sagittis sagittis, nisl magna sodales eros, ut feugiat velit velit non turpis. Cras eu nibh dapibus justo fringilla.</p>', '0', ' managing director '),
(2, 'Testimonial 2', '1.JPG', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Quisque cursus, sem eget sagittis sagittis, nisl magna sodales eros, ut feugiat velit velit non turpis. Cras eu nibh dapibus justo fringilla.</p>', '0', ' director'),
(3, 'Testimonial 3', '391709_126455554173253_106555192_n.jpg', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Quisque cursus, sem eget sagittis sagittis, nisl magna sodales eros, ut feugiat velit velit non turpis. Cras eu nibh dapibus justo fringilla.</p>', '0', ' project manager'),
(4, 'shubahm', '', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Quisque cursus, sem eget sagittis sagittis, nisl magna sodales eros, ut feugiat velit velit non turpis. Cras eu nibh dapibus justo fringilla.</p>', '0', ' founder');

-- --------------------------------------------------------

--
-- Table structure for table `updates`
--

CREATE TABLE `updates` (
  `id` int(10) UNSIGNED NOT NULL,
  `campaign_id` int(10) UNSIGNED NOT NULL,
  `title` varchar(256) NOT NULL,
  `desc` text NOT NULL,
  `date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `updates`
--

INSERT INTO `updates` (`id`, `campaign_id`, `title`, `desc`, `date`) VALUES
(68, 12, 'Website Launched', '<p>maximus mauris facilisis, rhoncus massa. Curabitur tincidunt urna maximus, sodales nibh posuere, bibendum odio. In ut diam suscipit, lacinia magna a, varius nisl. Nulla facilisi.</p>', '2017-01-31'),
(70, 13, '', '', '0000-00-00'),
(71, 14, '', '', '0000-00-00'),
(72, 15, '', '', '0000-00-00'),
(73, 16, '', '', '0000-00-00'),
(74, 17, '', '', '0000-00-00');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) UNSIGNED NOT NULL,
  `ip_address` varchar(15) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(255) NOT NULL,
  `salt` varchar(255) DEFAULT NULL,
  `email` varchar(100) NOT NULL,
  `img` varchar(256) NOT NULL,
  `activation_code` varchar(40) DEFAULT NULL,
  `forgotten_password_code` varchar(40) DEFAULT NULL,
  `forgotten_password_time` int(11) UNSIGNED DEFAULT NULL,
  `remember_code` varchar(40) DEFAULT NULL,
  `created_on` datetime NOT NULL,
  `last_login` int(11) UNSIGNED DEFAULT NULL,
  `active` tinyint(1) UNSIGNED DEFAULT NULL,
  `first_name` varchar(50) DEFAULT NULL,
  `last_name` varchar(50) DEFAULT NULL,
  `company` varchar(100) DEFAULT NULL,
  `location` varchar(256) NOT NULL,
  `paypal_id` varchar(256) NOT NULL,
  `phone` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `ip_address`, `username`, `password`, `salt`, `email`, `img`, `activation_code`, `forgotten_password_code`, `forgotten_password_time`, `remember_code`, `created_on`, `last_login`, `active`, `first_name`, `last_name`, `company`, `location`, `paypal_id`, `phone`) VALUES
(1, '127.0.0.1', 'administrator', '5f4dcc3b5aa765d61d8327deb882cf99', '', 'admin@admin.com', '', NULL, '75fda5f7bfabf25c84ac301634010117', NULL, NULL, '2016-11-23 09:31:12', 1517024553, 1, 'Admin', 'istrator', 'ADMIN', 'lalsagar', 'info@example.com', '895512320'),
(17, '::1', 'demouser', '6e9bece1914809fb8493146417e722f6', NULL, 'demo@user.com', '', NULL, NULL, NULL, NULL, '2017-01-31 14:29:51', 1485865806, 1, 'Demo', 'User', 'ATN Technologies', 'Jodhpur', 'demo@paypal.com', '9876543210');

-- --------------------------------------------------------

--
-- Table structure for table `users_groups`
--

CREATE TABLE `users_groups` (
  `id` int(11) UNSIGNED NOT NULL,
  `user_id` int(11) UNSIGNED NOT NULL,
  `group_id` mediumint(8) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `users_groups`
--

INSERT INTO `users_groups` (`id`, `user_id`, `group_id`) VALUES
(1, 1, 1),
(42, 17, 2);

-- --------------------------------------------------------

--
-- Table structure for table `volunteer`
--

CREATE TABLE `volunteer` (
  `id` int(11) NOT NULL,
  `name` varchar(256) NOT NULL,
  `desgination` varchar(256) NOT NULL,
  `img` varchar(256) NOT NULL,
  `desc` text NOT NULL,
  `facebook` varchar(256) NOT NULL,
  `twitter` varchar(256) NOT NULL,
  `linkedin` varchar(256) NOT NULL,
  `googleplus` varchar(256) NOT NULL,
  `github` varchar(256) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `volunteer`
--

INSERT INTO `volunteer` (`id`, `name`, `desgination`, `img`, `desc`, `facebook`, `twitter`, `linkedin`, `googleplus`, `github`) VALUES
(7, 'David Wagner', ' Product Manager', 'men36-photo-by-Mikhail-Koninin.jpg', '<p>I\'m passionate about making things fun and simple. Love Anime.</p>', ' #', '#', '#', '#', '#'),
(8, 'Tiffany Lewis', ' Web Designer ', 'women32-photo-by-Nathan-ONions.jpg', '<p>I love playing chess, new gadgets and watching funny cat videos.</p>', ' #', '#', '#', '#', '#'),
(9, 'Laura Bailey', ' UX Designer', 'women37-photo-by-Peter-McConnochie.jpg', '<p>Currently living in Colorado. Lover of art, languages and travelling.</p>', ' #', '#', '#', '#', '#');

-- --------------------------------------------------------

--
-- Table structure for table `withdrawal`
--

CREATE TABLE `withdrawal` (
  `id` int(11) NOT NULL,
  `ref_no` varchar(256) NOT NULL,
  `user_id` int(11) NOT NULL,
  `withdrawal_amount` decimal(10,2) NOT NULL,
  `status` int(11) NOT NULL COMMENT '0-pending , 1-success , 2-cancel',
  `date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `work`
--

CREATE TABLE `work` (
  `id` int(11) NOT NULL,
  `name` varchar(256) NOT NULL,
  `img` varchar(256) NOT NULL,
  `icon` varchar(256) NOT NULL,
  `display_type` int(11) NOT NULL COMMENT '0-img,1-icon',
  `desc` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `work`
--

INSERT INTO `work` (`id`, `name`, `img`, `icon`, `display_type`, `desc`) VALUES
(209, 'FILL IN A QUICK FORM', 'e1.jpg', 'fa-th-list', 1, '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Quisque cursus, sem eget sagittis sagittis, nisl magna sodales eros, ut feugiat velit velit non turpis. Cras eu nibh dapibus justo fringilla.</p>'),
(210, 'SHARE YOUR FUNDRAISER', 'e2.jpg', 'fa-share-alt', 1, '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Quisque cursus, sem eget sagittis sagittis, nisl magna sodales eros, ut feugiat velit velit non turpis. Cras eu nibh dapibus justo fringilla.</p>'),
(211, 'FEEL THE LOVE', 'e3.jpg', 'fa-heart', 1, '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Quisque cursus, sem eget sagittis sagittis, nisl magna sodales eros, ut feugiat velit velit non turpis. Cras eu nibh dapibus justo fringilla.</p>');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `achievements`
--
ALTER TABLE `achievements`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `admin_faq`
--
ALTER TABLE `admin_faq`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `admin_preferences`
--
ALTER TABLE `admin_preferences`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `campaignes`
--
ALTER TABLE `campaignes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `comment_likes`
--
ALTER TABLE `comment_likes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `currency`
--
ALTER TABLE `currency`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `faq`
--
ALTER TABLE `faq`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `feature`
--
ALTER TABLE `feature`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `groups`
--
ALTER TABLE `groups`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `icons`
--
ALTER TABLE `icons`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `languages`
--
ALTER TABLE `languages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `login_attempts`
--
ALTER TABLE `login_attempts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `member_payments`
--
ALTER TABLE `member_payments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `menus`
--
ALTER TABLE `menus`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `notification`
--
ALTER TABLE `notification`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pages`
--
ALTER TABLE `pages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `payments`
--
ALTER TABLE `payments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `post`
--
ALTER TABLE `post`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `post_category`
--
ALTER TABLE `post_category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `public_preferences`
--
ALTER TABLE `public_preferences`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `rewards`
--
ALTER TABLE `rewards`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `routes`
--
ALTER TABLE `routes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `setting`
--
ALTER TABLE `setting`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `smtp_settings`
--
ALTER TABLE `smtp_settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `social_links`
--
ALTER TABLE `social_links`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `stories`
--
ALTER TABLE `stories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `subscribe`
--
ALTER TABLE `subscribe`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tag`
--
ALTER TABLE `tag`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `templates`
--
ALTER TABLE `templates`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `testimonials`
--
ALTER TABLE `testimonials`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `updates`
--
ALTER TABLE `updates`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users_groups`
--
ALTER TABLE `users_groups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `uc_users_groups` (`user_id`,`group_id`),
  ADD KEY `fk_users_groups_users1_idx` (`user_id`),
  ADD KEY `fk_users_groups_groups1_idx` (`group_id`);

--
-- Indexes for table `volunteer`
--
ALTER TABLE `volunteer`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `withdrawal`
--
ALTER TABLE `withdrawal`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `work`
--
ALTER TABLE `work`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `achievements`
--
ALTER TABLE `achievements`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
--
-- AUTO_INCREMENT for table `admin_faq`
--
ALTER TABLE `admin_faq`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `admin_preferences`
--
ALTER TABLE `admin_preferences`
  MODIFY `id` tinyint(1) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `campaignes`
--
ALTER TABLE `campaignes`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;
--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=72;
--
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=60;
--
-- AUTO_INCREMENT for table `comment_likes`
--
ALTER TABLE `comment_likes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;
--
-- AUTO_INCREMENT for table `currency`
--
ALTER TABLE `currency`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=240;
--
-- AUTO_INCREMENT for table `faq`
--
ALTER TABLE `faq`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;
--
-- AUTO_INCREMENT for table `feature`
--
ALTER TABLE `feature`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT for table `groups`
--
ALTER TABLE `groups`
  MODIFY `id` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `languages`
--
ALTER TABLE `languages`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `login_attempts`
--
ALTER TABLE `login_attempts`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `member_payments`
--
ALTER TABLE `member_payments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `menus`
--
ALTER TABLE `menus`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `notification`
--
ALTER TABLE `notification`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=68;
--
-- AUTO_INCREMENT for table `pages`
--
ALTER TABLE `pages`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `payments`
--
ALTER TABLE `payments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
--
-- AUTO_INCREMENT for table `post`
--
ALTER TABLE `post`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `post_category`
--
ALTER TABLE `post_category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `public_preferences`
--
ALTER TABLE `public_preferences`
  MODIFY `id` int(1) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `rewards`
--
ALTER TABLE `rewards`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=195;
--
-- AUTO_INCREMENT for table `routes`
--
ALTER TABLE `routes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `setting`
--
ALTER TABLE `setting`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `smtp_settings`
--
ALTER TABLE `smtp_settings`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `social_links`
--
ALTER TABLE `social_links`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `stories`
--
ALTER TABLE `stories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;
--
-- AUTO_INCREMENT for table `subscribe`
--
ALTER TABLE `subscribe`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `tag`
--
ALTER TABLE `tag`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;
--
-- AUTO_INCREMENT for table `templates`
--
ALTER TABLE `templates`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `testimonials`
--
ALTER TABLE `testimonials`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `updates`
--
ALTER TABLE `updates`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=75;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;
--
-- AUTO_INCREMENT for table `users_groups`
--
ALTER TABLE `users_groups`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;
--
-- AUTO_INCREMENT for table `volunteer`
--
ALTER TABLE `volunteer`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT for table `withdrawal`
--
ALTER TABLE `withdrawal`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT for table `work`
--
ALTER TABLE `work`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=212;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `users_groups`
--
ALTER TABLE `users_groups`
  ADD CONSTRAINT `fk_users_groups_groups1` FOREIGN KEY (`group_id`) REFERENCES `groups` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_users_groups_users1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
