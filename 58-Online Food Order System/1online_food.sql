-- phpMyAdmin SQL Dump
-- version 4.7.3
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Jan 19, 2018 at 11:17 AM
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
-- Database: `tammana1_easy`
--

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(11) NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `updated_at`, `created_at`) VALUES
(1, 'STARTERS', '2017-10-16 14:40:54', '2017-10-16 14:40:54'),
(3, 'x', '2018-01-18 23:58:47', '2018-01-18 23:58:47');

-- --------------------------------------------------------

--
-- Table structure for table `customers`
--

CREATE TABLE `customers` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `phone` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `address` text COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `customers`
--

INSERT INTO `customers` (`id`, `name`, `email`, `password`, `phone`, `address`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Walking Customer', 'varun7king@gmail.com', NULL, '3005095213', '3rd floor 86 cavalry ground', '2017-08-11 06:00:54', '2017-08-11 06:00:54', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `expenses`
--

CREATE TABLE `expenses` (
  `id` int(11) NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `description` text,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `price` double(10,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `homepage`
--

CREATE TABLE `homepage` (
  `id` int(10) UNSIGNED NOT NULL,
  `key` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `type` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `label` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `value` text COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `homepage`
--

INSERT INTO `homepage` (`id`, `key`, `type`, `label`, `value`, `created_at`, `updated_at`) VALUES
(1, 'story_title', 'text', 'Story Title', '<span>Discover</span>Our Story', NULL, '2017-09-20 16:13:04'),
(2, 'story_desc', 'textarea', 'Story Description', 'accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est.', NULL, '2017-09-20 16:13:04'),
(3, 'menu_title', 'text', 'Menu Title', '<span>Discover</span>Our Menu', NULL, '2017-09-20 16:13:04'),
(4, 'menu_desc', 'textarea', 'Menu Description', 'accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est.', NULL, '2017-09-20 16:13:04'),
(5, 'img_title1', 'text', 'Image Title 1', '<h2><span>We Are Sharing</span></h2>                    <h1>delicious treats</h1>', NULL, '2017-09-25 16:36:13'),
(6, 'img_title2', 'text', 'Image Title 2', '<h2><span>The Perfect</span></h2>                    <h1>Blend</h1>', NULL, '2017-09-25 16:36:13'),
(7, 'category', NULL, 'Home Categories', '', NULL, '2017-09-25 17:16:32');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2017_10_16_183611_create_categories_table', 0),
(2, '2017_10_16_183611_create_customers_table', 0),
(3, '2017_10_16_183611_create_homepage_table', 0),
(4, '2017_10_16_183611_create_menus_table', 0),
(5, '2017_10_16_183611_create_newsletters_table', 0),
(6, '2017_10_16_183611_create_pages_table', 0),
(7, '2017_10_16_183611_create_password_resets_table', 0),
(8, '2017_10_16_183611_create_permission_role_table', 0),
(9, '2017_10_16_183611_create_permissions_table', 0),
(10, '2017_10_16_183611_create_products_table', 0),
(11, '2017_10_16_183611_create_roles_table', 0),
(12, '2017_10_16_183611_create_sale_items_table', 0),
(13, '2017_10_16_183611_create_sales_table', 0),
(14, '2017_10_16_183611_create_settings_table', 0),
(15, '2017_10_16_183611_create_sliders_table', 0),
(16, '2017_10_16_183611_create_suppliers_table', 0),
(17, '2017_10_16_183611_create_users_table', 0),
(18, '2017_10_23_101103_create_categories_table', 0),
(19, '2017_10_23_101103_create_customers_table', 0),
(20, '2017_10_23_101103_create_homepage_table', 0),
(22, '2017_10_23_101103_create_newsletters_table', 0),
(23, '2017_10_23_101103_create_pages_table', 0),
(24, '2017_10_23_101103_create_password_resets_table', 0),
(25, '2017_10_23_101103_create_permission_role_table', 0),
(26, '2017_10_23_101103_create_permissions_table', 0),
(27, '2017_10_23_101103_create_products_table', 0),
(28, '2017_10_23_101103_create_roles_table', 0),
(29, '2017_10_23_101103_create_sale_items_table', 0),
(30, '2017_10_23_101103_create_sales_table', 0),
(31, '2017_10_23_101103_create_settings_table', 0),
(32, '2017_10_23_101103_create_sliders_table', 0),
(33, '2017_10_23_101103_create_suppliers_table', 0),
(34, '2017_10_23_101103_create_users_table', 0),
(35, '2017_11_20_162731_create_categories_table', 0),
(36, '2017_11_20_162731_create_customers_table', 0),
(37, '2017_11_20_162731_create_expense_table', 0),
(38, '2017_11_20_162731_create_homepage_table', 0),
(39, '2017_11_20_162731_create_menus_table', 0),
(40, '2017_11_20_162731_create_newsletters_table', 0),
(41, '2017_11_20_162731_create_pages_table', 0),
(42, '2017_11_20_162731_create_password_resets_table', 0),
(43, '2017_11_20_162731_create_permission_role_table', 0),
(44, '2017_11_20_162731_create_permissions_table', 0),
(45, '2017_11_20_162731_create_products_table', 0),
(46, '2017_11_20_162731_create_roles_table', 0),
(47, '2017_11_20_162731_create_sale_items_table', 0),
(48, '2017_11_20_162731_create_sales_table', 0),
(49, '2017_11_20_162731_create_settings_table', 0),
(50, '2017_11_20_162731_create_sliders_table', 0),
(51, '2017_11_20_162731_create_suppliers_table', 0),
(52, '2017_11_20_162731_create_users_table', 0),
(53, '2017_11_25_110908_create_categories_table', 0),
(54, '2017_11_25_110908_create_customers_table', 0),
(55, '2017_11_25_110908_create_expenses_table', 0),
(56, '2017_11_25_110908_create_homepage_table', 0),
(57, '2017_11_25_110908_create_menus_table', 0),
(58, '2017_11_25_110908_create_newsletters_table', 0),
(59, '2017_11_25_110908_create_pages_table', 0),
(60, '2017_11_25_110908_create_password_resets_table', 0),
(61, '2017_11_25_110908_create_permission_role_table', 0),
(62, '2017_11_25_110908_create_permissions_table', 0),
(63, '2017_11_25_110908_create_products_table', 0),
(64, '2017_11_25_110908_create_roles_table', 0),
(65, '2017_11_25_110908_create_sale_items_table', 0),
(66, '2017_11_25_110908_create_sales_table', 0),
(67, '2017_11_25_110908_create_settings_table', 0),
(68, '2017_11_25_110908_create_sliders_table', 0),
(69, '2017_11_25_110908_create_suppliers_table', 0),
(70, '2017_11_25_110908_create_users_table', 0);

-- --------------------------------------------------------

--
-- Table structure for table `newsletters`
--

CREATE TABLE `newsletters` (
  `id` int(11) NOT NULL,
  `email` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `newsletters`
--

INSERT INTO `newsletters` (`id`, `email`) VALUES
(5, 'abcd@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `pages`
--

CREATE TABLE `pages` (
  `id` int(11) NOT NULL,
  `title` varchar(100) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL,
  `body` longtext NOT NULL,
  `parent_id` int(11) NOT NULL,
  `is_delete` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `pages`
--

INSERT INTO `pages` (`id`, `title`, `slug`, `image`, `body`, `parent_id`, `is_delete`) VALUES
(1, 'Terms & Condition', 'services', '574724_page.jpg', 'Pellentesque pellentesque eget tempor tellus. Fusce lacllentesque eget tempor tellus ellentesque pelleinia tempor malesuada. Pellentesque pellentesque eget tempor tellus ellentesque pellentesque eget tempor tellus. Fusce lacinia tempor malesuada.\r\n\r\n                            <h2>H2 Heading</h2>\r\n                            <p>Pellentesque pellentesque usce lacllentesque eget tempor tellus ellentesque pelleinia tempor malesuada. Pellentesque pellentesque eget tempor tellus ellentesque pellentesque eget tempor tellus.  tellus eget tempor. Fusce lacinia tempor malesuada.</p>\r\n\r\n                            <h3>H3 Heading</h3>\r\n                            <p>Pellentesque tempor tellus eget pellentesque. usce lacllentesque eget tempor tellus ellentesque pelleinia tempor malesuada. Pellentesque pellentesque eget tempor tellus ellentesque pellentesque eget tempor tellus.  Fusce lacinia tempor malesuada.</p>\r\n\r\n                            <h4>H4 Heading</h4>\r\n                            <p>Pellentesque pellentesque tempor tellus eget fermentum. usce lacllentesque eget tempor tellus ellentesque pelleinia tempor malesuada. Pellentesque pellentesque eget tempor tellus ellentesque pellentesque eget tempor tellus. </p>\r\n\r\n                            <h5>H5 Heading</h5><div>this is a test editing </div>\r\n                            <p>Pellentesque pellentesque tempor llentesque pellentesque tempor tellus eget libero llentesque pellentesque tempor tellus eget libero tellus ementellentesque tempor tellus eget fermentum. usce lacllentesque eget tempor tellus ellenellentesque tempor tellus eget fermentum. usce lacllentesque eget tempor tellus ellenum.</p>\r\n\r\n                            <h6>H6 Heading</h6>\r\n                            <p>Pellentesque pellentesque tempor tellus eget libero</p>', 0, 0),
(2, 'FAQ', 'faq', 'page2.jpg', '<div><span style=\"color: rgb(102, 102, 102); font-family: \" varela=\"\" round\",=\"\" sans-serif;=\"\" font-size:=\"\" 16px;\"=\"\">Lorem ipsum dolor sit amet, consectetur adipisicing elit. Sed voluptate nihil eum consectetur similique?</span><span style=\"font-weight: bold;\"><br></span></div><div><span style=\"color: rgb(102, 102, 102); font-family: \" varela=\"\" round\",=\"\" sans-serif;=\"\" font-size:=\"\" 16px;\"=\"\">Lorem ipsum dolor sit amet, consectetur adipisicing elit. Sed voluptate nihil eum consectetur similique?<br></span></div><div><span style=\"color: rgb(102, 102, 102); font-family: \" varela=\"\" round\",=\"\" sans-serif;=\"\" font-size:=\"\" 16px;\"=\"\"><br></span></div><div><span style=\"font-weight: bold;\">1 : this is a question number 1</span><div><span style=\"color: rgb(102, 102, 102); font-family: \" varela=\"\" round\",=\"\" sans-serif;=\"\" font-size:=\"\" 16px;\"=\"\">Lorem ipsum dolor sit amet, consectetur adipisicing elit. Sed voluptate nihil eum consectetur similique?</span></div></div><div><span style=\"color: rgb(102, 102, 102); font-family: \" varela=\"\" round\",=\"\" sans-serif;=\"\" font-size:=\"\" 16px;\"=\"\"><br></span></div><div><span style=\"font-weight: bold;\">1 : this is a question number 1</span><div><span style=\"color: rgb(102, 102, 102); font-family: \" varela=\"\" round\",=\"\" sans-serif;=\"\" font-size:=\"\" 16px;\"=\"\">Lorem ipsum dolor sit amet, consectetur adipisicing elit. Sed voluptate nihil eum consectetur similique?</span></div></div><div><span style=\"color: rgb(102, 102, 102); font-family: \" varela=\"\" round\",=\"\" sans-serif;=\"\" font-size:=\"\" 16px;\"=\"\"><br></span></div><div><span style=\"color: rgb(102, 102, 102); font-family: \" varela=\"\" round\",=\"\" sans-serif;=\"\" font-size:=\"\" 16px;\"=\"\"><span style=\"color: rgb(103, 106, 108); font-weight: bold;\">1 : this is a question number 1</span><div style=\"color: rgb(103, 106, 108);\"><span varela=\"\" round\",=\"\" sans-serif;=\"\" font-size:=\"\" 16px;\"=\"\" style=\"color: rgb(102, 102, 102);\">Lorem ipsum dolor sit amet, consectetur adipisicing elit. Sed voluptate nihil eum consectetur similique?</span></div><div style=\"color: rgb(103, 106, 108);\"><span varela=\"\" round\",=\"\" sans-serif;=\"\" font-size:=\"\" 16px;\"=\"\" style=\"color: rgb(102, 102, 102);\"><br></span></div><div style=\"color: rgb(103, 106, 108);\"><span varela=\"\" round\",=\"\" sans-serif;=\"\" font-size:=\"\" 16px;\"=\"\" style=\"color: rgb(102, 102, 102);\"><span style=\"color: rgb(103, 106, 108); font-weight: bold;\">1 : this is a question number 1</span><div style=\"color: rgb(103, 106, 108);\"><span varela=\"\" round\",=\"\" sans-serif;=\"\" font-size:=\"\" 16px;\"=\"\" style=\"color: rgb(102, 102, 102);\">Lorem ipsum dolor sit amet, consectetur adipisicing elit. Sed voluptate nihil eum consectetur similique?</span></div><div style=\"color: rgb(103, 106, 108);\"><span varela=\"\" round\",=\"\" sans-serif;=\"\" font-size:=\"\" 16px;\"=\"\" style=\"color: rgb(102, 102, 102);\"><br></span></div><div style=\"color: rgb(103, 106, 108);\"><span varela=\"\" round\",=\"\" sans-serif;=\"\" font-size:=\"\" 16px;\"=\"\" style=\"color: rgb(102, 102, 102);\"><span style=\"color: rgb(103, 106, 108); font-weight: bold;\">1 : this is a question number 1</span><div style=\"color: rgb(103, 106, 108);\"><span varela=\"\" round\",=\"\" sans-serif;=\"\" font-size:=\"\" 16px;\"=\"\" style=\"color: rgb(102, 102, 102);\">Lorem ipsum dolor sit amet, consectetur adipisicing elit. Sed voluptate nihil eum consectetur similique?</span></div></span></div></span></div></span></div>', 0, 0),
(3, 'About Us', 'about-us', 'page3.jpg', '<p> Lorem ipsum dolor sit amet, consectetur adipisicing elit. Sed voluptate nihil eum consectetur similique? Consectetur, quod, incidunt, harum nisi dolores delectus reprehenderit voluptatem perferendis dicta dolorem non blanditiis ex fugiat. </p>\r\n\r\n\r\n<h2> Heading 2</h2>\r\n\r\n<p> Lorem ipsum dolor sit amet, consectetur adipisicing elit. Sed voluptate nihil eum consectetur similique? Consectetur, quod, incidunt, harum nisi dolores delectus reprehenderit voluptatem perferendis dicta dolorem non blanditiis ex fugiat. </p><p><br></p><h2 style=\"color: rgb(103, 106, 108);\">Heading 2</h2><p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Sed voluptate nihil eum consectetur similique? Consectetur, quod, incidunt, harum nisi dolores delectus reprehenderit voluptatem perferendis dicta dolorem non blanditiis ex fugiat.</p>', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `permissions`
--

CREATE TABLE `permissions` (
  `id` int(10) UNSIGNED NOT NULL,
  `object` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `action` text COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `permissions`
--

INSERT INTO `permissions` (`id`, `object`, `action`, `created_at`, `updated_at`) VALUES
(1, 'accesstoken', 'issuetoken', '2017-08-09 23:13:55', '2017-08-09 23:13:55'),
(2, 'transienttoken', 'refresh', '2017-08-09 23:13:55', '2017-08-09 23:13:55'),
(3, 'client', 'foruser', '2017-08-09 23:13:55', '2017-08-09 23:13:55'),
(4, 'client', 'destroy', '2017-08-09 23:13:55', '2017-08-09 23:13:55'),
(5, 'scope', 'all', '2017-08-09 23:13:55', '2017-08-09 23:13:55'),
(6, 'personalaccesstoken', 'foruser', '2017-08-09 23:13:55', '2017-08-09 23:13:55'),
(7, 'personalaccesstoken', 'destroy', '2017-08-09 23:13:55', '2017-08-09 23:13:55'),
(8, 'home', 'index', '2017-08-09 23:13:55', '2017-08-09 23:13:55'),
(9, 'customer', 'index', '2017-08-09 23:13:55', '2017-08-09 23:13:55'),
(10, 'customer', 'create', '2017-08-09 23:13:55', '2017-08-09 23:13:55'),
(11, 'customer', 'show', '2017-08-09 23:13:55', '2017-08-09 23:13:55'),
(12, 'customer', 'edit', '2017-08-09 23:13:55', '2017-08-09 23:13:55'),
(13, 'customer', 'destroy', '2017-08-09 23:13:55', '2017-08-09 23:13:55'),
(14, 'supplier', 'index', '2017-08-09 23:13:55', '2017-08-09 23:13:55'),
(15, 'supplier', 'create', '2017-08-09 23:13:55', '2017-08-09 23:13:55'),
(16, 'supplier', 'show', '2017-08-09 23:13:56', '2017-08-09 23:13:56'),
(17, 'supplier', 'edit', '2017-08-09 23:13:56', '2017-08-09 23:13:56'),
(18, 'supplier', 'destroy', '2017-08-09 23:13:56', '2017-08-09 23:13:56'),
(19, 'product', 'index', '2017-08-09 23:13:56', '2017-08-09 23:13:56'),
(20, 'product', 'create', '2017-08-09 23:13:56', '2017-08-09 23:13:56'),
(21, 'product', 'show', '2017-08-09 23:13:56', '2017-08-09 23:13:56'),
(22, 'product', 'edit', '2017-08-09 23:13:56', '2017-08-09 23:13:56'),
(23, 'product', 'destroy', '2017-08-09 23:13:56', '2017-08-09 23:13:56'),
(24, 'user', 'index', '2017-08-09 23:13:56', '2017-08-09 23:13:56'),
(25, 'user', 'create', '2017-08-09 23:13:56', '2017-08-09 23:13:56'),
(26, 'user', 'show', '2017-08-09 23:13:56', '2017-08-09 23:13:56'),
(27, 'user', 'edit', '2017-08-09 23:13:56', '2017-08-09 23:13:56'),
(28, 'user', 'destroy', '2017-08-09 23:13:56', '2017-08-09 23:13:56'),
(29, 'sale', 'create', '2017-08-09 23:13:56', '2017-08-09 23:13:56'),
(30, 'sale', 'receipt', '2017-08-09 23:13:56', '2017-08-09 23:13:56'),
(31, 'receiving', 'index', '2017-08-09 23:13:56', '2017-08-09 23:13:56'),
(32, 'receiving', 'create', '2017-08-09 23:13:56', '2017-08-09 23:13:56'),
(33, 'receiving', 'show', '2017-08-09 23:13:56', '2017-08-09 23:13:56'),
(34, 'adjustment', 'index', '2017-08-09 23:13:56', '2017-08-09 23:13:56'),
(35, 'adjustment', 'create', '2017-08-09 23:13:56', '2017-08-09 23:13:56'),
(36, 'adjustment', 'show', '2017-08-09 23:13:56', '2017-08-09 23:13:56'),
(37, 'tracking', 'index', '2017-08-09 23:13:56', '2017-08-09 23:13:56'),
(38, 'report', 'index', '2017-08-09 23:13:56', '2017-08-09 23:13:56'),
(39, 'report', 'show', '2017-08-09 23:13:56', '2017-08-09 23:13:56'),
(40, 'profile', 'edit', '2017-08-09 23:13:56', '2017-08-09 23:13:56'),
(41, 'setting', 'edit', '2017-08-09 23:13:56', '2017-08-09 23:13:56'),
(42, 'role', 'index', '2017-08-09 23:13:56', '2017-08-09 23:13:56'),
(43, 'role', 'create', '2017-08-09 23:13:57', '2017-08-09 23:13:57'),
(44, 'role', 'show', '2017-08-09 23:13:57', '2017-08-09 23:13:57'),
(45, 'role', 'edit', '2017-08-09 23:13:57', '2017-08-09 23:13:57'),
(46, 'role', 'destroy', '2017-08-09 23:13:57', '2017-08-09 23:13:57'),
(47, 'permission', 'index', '2017-08-09 23:13:57', '2017-08-09 23:13:57'),
(48, 'permission', 'create', '2017-08-09 23:13:57', '2017-08-09 23:13:57'),
(49, 'permission', 'show', '2017-08-09 23:13:57', '2017-08-09 23:13:57'),
(50, 'permission', 'edit', '2017-08-09 23:13:57', '2017-08-09 23:13:57'),
(51, 'permission', 'destroy', '2017-08-09 23:13:57', '2017-08-09 23:13:57'),
(52, 'api\\customer', 'index', '2017-08-09 23:13:57', '2017-08-09 23:13:57'),
(53, 'api\\product', 'index', '2017-08-09 23:13:57', '2017-08-09 23:13:57'),
(54, 'api\\supplier', 'index', '2017-08-09 23:13:57', '2017-08-09 23:13:57');

-- --------------------------------------------------------

--
-- Table structure for table `permission_role`
--

CREATE TABLE `permission_role` (
  `id` int(10) UNSIGNED NOT NULL,
  `role_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `permission_role`
--

INSERT INTO `permission_role` (`id`, `role_id`, `permission_id`, `created_at`, `updated_at`) VALUES
(1, 1, 1, '2017-08-09 23:13:57', '2017-08-09 23:13:57'),
(2, 1, 2, '2017-08-09 23:13:57', '2017-08-09 23:13:57'),
(3, 1, 3, '2017-08-09 23:13:57', '2017-08-09 23:13:57'),
(4, 1, 4, '2017-08-09 23:13:57', '2017-08-09 23:13:57'),
(5, 1, 5, '2017-08-09 23:13:57', '2017-08-09 23:13:57'),
(6, 1, 6, '2017-08-09 23:13:57', '2017-08-09 23:13:57'),
(7, 1, 7, '2017-08-09 23:13:57', '2017-08-09 23:13:57'),
(8, 1, 8, '2017-08-09 23:13:57', '2017-08-09 23:13:57'),
(9, 1, 9, '2017-08-09 23:13:57', '2017-08-09 23:13:57'),
(10, 1, 10, '2017-08-09 23:13:57', '2017-08-09 23:13:57'),
(11, 2, 29, '2017-08-21 04:27:20', '2017-08-21 04:27:20'),
(12, 2, 30, '2017-08-21 04:27:20', '2017-08-21 04:27:20');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(10) UNSIGNED NOT NULL,
  `category_id` int(11) DEFAULT NULL,
  `barcode` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `description` text COLLATE utf8_unicode_ci,
  `titles` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `prices` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `quantity` int(11) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `category_id`, `barcode`, `name`, `description`, `titles`, `prices`, `quantity`, `created_at`, `updated_at`, `deleted_at`) VALUES
(3, 1, NULL, 'trsetertegfd', 'dfgfhfdhf fghdfh', '[\"dfgdfg\",null]', '[\"34\",null]', 0, '2018-01-10 11:36:25', '2018-01-10 11:36:25', NULL),
(4, 3, NULL, 'xv', 'xv', '[null,null]', '[\"99\",null]', 0, '2018-01-18 23:59:14', '2018-01-18 23:59:14', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `description` text COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `description`, `created_at`, `updated_at`) VALUES
(1, 'Administrator', 'Role for administrator', '2017-08-09 23:13:57', '2017-08-09 23:13:57'),
(2, 'Sales Manager', 'this is a description for sales manger', '2017-08-21 04:27:20', '2017-08-21 04:27:20'),
(3, 'Customer', 'Role for customer', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `sales`
--

CREATE TABLE `sales` (
  `id` int(10) UNSIGNED NOT NULL,
  `customer_id` int(11) DEFAULT '0',
  `cashier_id` int(11) DEFAULT NULL,
  `comments` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `status` tinyint(1) DEFAULT '1' COMMENT '1:completed, 0 canceled',
  `amount` double(10,2) NOT NULL DEFAULT '0.00',
  `discount` double(10,2) DEFAULT '0.00',
  `vat` double(10,2) DEFAULT '0.00',
  `delivery_cost` double(10,2) DEFAULT '0.00',
  `name` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `phone` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `address` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `comment` varchar(500) COLLATE utf8_unicode_ci DEFAULT NULL,
  `type` varchar(10) COLLATE utf8_unicode_ci DEFAULT 'pos',
  `payment_with` enum('card','cash') COLLATE utf8_unicode_ci DEFAULT 'cash'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `sales`
--

INSERT INTO `sales` (`id`, `customer_id`, `cashier_id`, `comments`, `created_at`, `updated_at`, `status`, `amount`, `discount`, `vat`, `delivery_cost`, `name`, `email`, `phone`, `address`, `comment`, `type`, `payment_with`) VALUES
(19, 1, 5, NULL, '2018-01-17 13:27:30', '2018-01-17 13:27:30', 1, 37.40, NULL, 3.40, 0.00, NULL, NULL, NULL, NULL, NULL, 'pos', 'cash');

-- --------------------------------------------------------

--
-- Table structure for table `sale_items`
--

CREATE TABLE `sale_items` (
  `id` int(10) UNSIGNED NOT NULL,
  `sale_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `price` decimal(8,2) NOT NULL,
  `quantity` int(11) NOT NULL,
  `p_qty` int(11) NOT NULL DEFAULT '0',
  `size` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `sale_items`
--

INSERT INTO `sale_items` (`id`, `sale_id`, `product_id`, `price`, `quantity`, `p_qty`, `size`, `created_at`, `updated_at`) VALUES
(22, 19, 3, '34.00', 1, 0, 'dfgdfg', '2018-01-17 13:27:30', '2018-01-17 13:27:30');

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE `settings` (
  `id` int(10) UNSIGNED NOT NULL,
  `key` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `label` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `value` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`id`, `key`, `label`, `value`, `created_at`, `updated_at`) VALUES
(1, 'title', 'Site Title', 'Tam Easy Pos', NULL, '2017-09-06 22:08:34'),
(2, 'phone', 'Phone', '2323432432', NULL, '2017-09-06 22:08:34'),
(3, 'email', 'Email', 'abcd@gmail.com', NULL, '2017-09-06 22:08:34'),
(4, 'address', 'Address', '3rd Floor Street 6 Gali 5', NULL, '2017-08-16 03:53:13'),
(5, 'country', 'Country', 'PAK', NULL, '2017-08-16 03:53:13'),
(6, 'timing1', 'Monday To Saturday', '12PM to 12AM', NULL, '2017-09-18 18:19:33'),
(7, 'sunday', 'Sunday', 'Closed', NULL, '2017-09-18 18:19:34'),
(8, 'facebook', 'Facebook', 'https://www.facebook.com', NULL, '2017-10-03 15:35:48'),
(9, 'twitter', 'Twitter', 'https://www.twitter.com', NULL, '2017-10-03 15:35:48'),
(10, 'vat', 'VAT', '10', NULL, '2017-10-03 16:50:12'),
(11, 'delivery_cost', 'Delivery Cost', '1', NULL, '2017-10-03 15:35:48'),
(12, 'currency', 'Currency', '$', NULL, '2017-10-03 17:00:43'),
(13, 'lng', 'Longitude', '-73.9400', NULL, NULL),
(14, 'lat', 'Latitude', '40.6700', NULL, NULL),
(15, 'frontend', 'Hide Frontend', 'no', NULL, NULL),
(16, 'stripe', 'Stripe Payment', 'yes', NULL, '2017-10-18 12:07:14');

-- --------------------------------------------------------

--
-- Table structure for table `sliders`
--

CREATE TABLE `sliders` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `image` varchar(500) NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `sliders`
--

INSERT INTO `sliders` (`id`, `title`, `image`, `created_at`, `updated_at`) VALUES
(6, 'Slider Image', '372045.jpg', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `suppliers`
--

CREATE TABLE `suppliers` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `company_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `phone` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `address` text COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `suppliers`
--

INSERT INTO `suppliers` (`id`, `name`, `company_name`, `email`, `phone`, `address`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'test', 'Test', 'test', 'test', 'test', '2017-08-11 06:00:36', '2017-08-11 06:00:36', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `role_id` int(11) NOT NULL DEFAULT '0',
  `remember_token` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `role_id`, `remember_token`, `created_at`, `updated_at`) VALUES
(5, 'Admin', 'admin@example.com', '$2y$10$NDJ8GvTAdoJ/uG0AQ2Y.9ucXwjy75NVf.VgFnSZDSakRRvrEyAlMq', 1, 'aSDfVIGPyxP1Djk1fH07BuULJspDf1Bgno4k6xsp4eG6zQBIUL7CcSLUo8BO', NULL, NULL),
(6, 'Sale Manger', 'sales@manager.com', '$2y$10$iYBfnTfkOkgHohZFTErZEOahsjR9LSTWyiWBb07mXBVOLTEvUN/qG', 2, NULL, NULL, NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `customers_email_unique` (`email`);

--
-- Indexes for table `expenses`
--
ALTER TABLE `expenses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `homepage`
--
ALTER TABLE `homepage`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `settings_key_unique` (`key`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `newsletters`
--
ALTER TABLE `newsletters`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pages`
--
ALTER TABLE `pages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`),
  ADD KEY `password_resets_token_index` (`token`);

--
-- Indexes for table `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `permission_role`
--
ALTER TABLE `permission_role`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
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
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `settings_key_unique` (`key`);

--
-- Indexes for table `sliders`
--
ALTER TABLE `sliders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `suppliers`
--
ALTER TABLE `suppliers`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `suppliers_email_unique` (`email`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `customers`
--
ALTER TABLE `customers`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `expenses`
--
ALTER TABLE `expenses`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `homepage`
--
ALTER TABLE `homepage`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=71;
--
-- AUTO_INCREMENT for table `newsletters`
--
ALTER TABLE `newsletters`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `pages`
--
ALTER TABLE `pages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=55;
--
-- AUTO_INCREMENT for table `permission_role`
--
ALTER TABLE `permission_role`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `sales`
--
ALTER TABLE `sales`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;
--
-- AUTO_INCREMENT for table `sale_items`
--
ALTER TABLE `sale_items`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;
--
-- AUTO_INCREMENT for table `settings`
--
ALTER TABLE `settings`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;
--
-- AUTO_INCREMENT for table `sliders`
--
ALTER TABLE `sliders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `suppliers`
--
ALTER TABLE `suppliers`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
