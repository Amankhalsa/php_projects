-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 08, 2018 at 12:57 PM
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
-- Database: `advance`
--

-- --------------------------------------------------------

--
-- Table structure for table `cache`
--

CREATE TABLE `cache` (
  `key` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `companies`
--

CREATE TABLE `companies` (
  `id` int(10) UNSIGNED NOT NULL,
  `companyName` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `defaultCurrency` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `companySlogan` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `street` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `zipCode` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `defaultLpoTaxAmmount` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `lpoNumberingFormat` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `salesOrderNumberingFormat` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `invoiceNumberingFormat` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `receiptNumberingFormat` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `purchaseOrderFormat` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `companyCliReports` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `enableBetaFeatures` tinyint(1) NOT NULL DEFAULT '0',
  `enableStaffDispatch` tinyint(1) NOT NULL DEFAULT '1',
  `userToRunCron` int(11) DEFAULT NULL,
  `logo` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `homepage` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `language` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'en',
  `hash` text COLLATE utf8mb4_unicode_ci,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `companies`
--

INSERT INTO `companies` (`id`, `companyName`, `city`, `country`, `defaultCurrency`, `companySlogan`, `street`, `zipCode`, `phone`, `defaultLpoTaxAmmount`, `lpoNumberingFormat`, `salesOrderNumberingFormat`, `invoiceNumberingFormat`, `receiptNumberingFormat`, `purchaseOrderFormat`, `companyCliReports`, `enableBetaFeatures`, `enableStaffDispatch`, `userToRunCron`, `logo`, `homepage`, `language`, `hash`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 'Tam Advance Invantory', 'DELHI', 'India', 'INR', 'abcd', 'gn', '343434', '5555555555', NULL, 'LPO-{$year}/{$month}/{$date}/{$lpoNumber}', 'QT-{$year}-{$month}/{$quoteNumber}', 'IN-{$year}-{$month}-{$invoiceNumber}', 'RCT-{$year}-{$month}-{$receiptNumber}', 'sales_order_1', NULL, 0, 1, 1, 'logo.png', NULL, 'en', NULL, NULL, '2017-12-02 07:52:26', '2018-01-08 02:48:00');

-- --------------------------------------------------------

--
-- Table structure for table `countries`
--

CREATE TABLE `countries` (
  `id` int(10) UNSIGNED NOT NULL,
  `country` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `currency` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `countries`
--

INSERT INTO `countries` (`id`, `country`, `currency`, `created_at`, `updated_at`) VALUES
(1, 'Afghanistan', 'AFN', '2017-12-02 07:58:37', '2017-12-02 07:58:37'),
(2, 'Albania', 'ALL', '2017-12-02 07:58:37', '2017-12-02 07:58:37'),
(3, 'Algeria', 'DZD', '2017-12-02 07:58:37', '2017-12-02 07:58:37'),
(4, 'American Samoa', 'USD', '2017-12-02 07:58:37', '2017-12-02 07:58:37'),
(5, 'Andorra', 'EUR', '2017-12-02 07:58:38', '2017-12-02 07:58:38'),
(6, 'Angola', 'AOA', '2017-12-02 07:58:38', '2017-12-02 07:58:38'),
(7, 'Anguilla', 'XCD', '2017-12-02 07:58:38', '2017-12-02 07:58:38'),
(8, 'Antarctica', 'XCD', '2017-12-02 07:58:38', '2017-12-02 07:58:38'),
(9, 'Antigua and Barbuda', 'XCD', '2017-12-02 07:58:38', '2017-12-02 07:58:38'),
(10, 'Argentina', 'ARS', '2017-12-02 07:58:38', '2017-12-02 07:58:38'),
(11, 'Armenia', 'AMD', '2017-12-02 07:58:38', '2017-12-02 07:58:38'),
(12, 'Aruba', 'AWG', '2017-12-02 07:58:38', '2017-12-02 07:58:38'),
(13, 'Australia', 'AUD', '2017-12-02 07:58:38', '2017-12-02 07:58:38'),
(14, 'Austria', 'EUR', '2017-12-02 07:58:38', '2017-12-02 07:58:38'),
(15, 'Azerbaijan', 'AZN', '2017-12-02 07:58:38', '2017-12-02 07:58:38'),
(16, 'Bahamas', 'BSD', '2017-12-02 07:58:38', '2017-12-02 07:58:38'),
(17, 'Bahrain', 'BHD', '2017-12-02 07:58:38', '2017-12-02 07:58:38'),
(18, 'Bangladesh', 'BDT', '2017-12-02 07:58:38', '2017-12-02 07:58:38'),
(19, 'Barbados', 'BBD', '2017-12-02 07:58:38', '2017-12-02 07:58:38'),
(20, 'Belarus', 'BYR', '2017-12-02 07:58:39', '2017-12-02 07:58:39'),
(21, 'Belgium', 'EUR', '2017-12-02 07:58:39', '2017-12-02 07:58:39'),
(22, 'Belize', 'BZD', '2017-12-02 07:58:39', '2017-12-02 07:58:39'),
(23, 'Benin', 'XOF', '2017-12-02 07:58:39', '2017-12-02 07:58:39'),
(24, 'Bermuda', 'BMD', '2017-12-02 07:58:40', '2017-12-02 07:58:40'),
(25, 'Bhutan', 'BTN', '2017-12-02 07:58:40', '2017-12-02 07:58:40'),
(26, 'Bolivia', 'BOB', '2017-12-02 07:58:40', '2017-12-02 07:58:40'),
(27, 'Bosnia-Herzegovina', 'BAM', '2017-12-02 07:58:40', '2017-12-02 07:58:40'),
(28, 'Botswana', 'BWP', '2017-12-02 07:58:40', '2017-12-02 07:58:40'),
(29, 'Bouvet Island', 'NOK', '2017-12-02 07:58:41', '2017-12-02 07:58:41'),
(30, 'Brazil', 'BRL', '2017-12-02 07:58:41', '2017-12-02 07:58:41'),
(31, 'British Indian Ocean Territory', 'USD', '2017-12-02 07:58:41', '2017-12-02 07:58:41'),
(32, 'Brunei Darussalam', 'BND', '2017-12-02 07:58:41', '2017-12-02 07:58:41'),
(33, 'Bulgaria', 'BGN', '2017-12-02 07:58:41', '2017-12-02 07:58:41'),
(34, 'Burkina Faso', 'XOF', '2017-12-02 07:58:41', '2017-12-02 07:58:41'),
(35, 'Burundi', 'BIF', '2017-12-02 07:58:41', '2017-12-02 07:58:41'),
(36, 'Cambodia', 'KHR', '2017-12-02 07:58:41', '2017-12-02 07:58:41'),
(37, 'Cameroon', 'XAF', '2017-12-02 07:58:42', '2017-12-02 07:58:42'),
(38, 'Canada', 'CAD', '2017-12-02 07:58:42', '2017-12-02 07:58:42'),
(39, 'Cape Verde', 'CVE', '2017-12-02 07:58:42', '2017-12-02 07:58:42'),
(40, 'Cayman Islands', 'KYD', '2017-12-02 07:58:42', '2017-12-02 07:58:42'),
(41, 'Central African Republic', 'XAF', '2017-12-02 07:58:42', '2017-12-02 07:58:42'),
(42, 'Chad', 'XAF', '2017-12-02 07:58:42', '2017-12-02 07:58:42'),
(43, 'Chile', 'CLP', '2017-12-02 07:58:42', '2017-12-02 07:58:42'),
(44, 'China', 'CNY', '2017-12-02 07:58:42', '2017-12-02 07:58:42'),
(45, 'Christmas Island', 'AUD', '2017-12-02 07:58:42', '2017-12-02 07:58:42'),
(46, 'Cocos (Keeling) Islands', 'AUD', '2017-12-02 07:58:43', '2017-12-02 07:58:43'),
(47, 'Colombia', 'COP', '2017-12-02 07:58:43', '2017-12-02 07:58:43'),
(48, 'Comoros', 'KMF', '2017-12-02 07:58:43', '2017-12-02 07:58:43'),
(49, 'Congo', 'XAF', '2017-12-02 07:58:43', '2017-12-02 07:58:43'),
(50, 'Congo, Dem. Republic', 'CDF', '2017-12-02 07:58:44', '2017-12-02 07:58:44'),
(51, 'Cook Islands', 'NZD', '2017-12-02 07:58:44', '2017-12-02 07:58:44'),
(52, 'Costa Rica', 'CRC', '2017-12-02 07:58:45', '2017-12-02 07:58:45'),
(53, 'Croatia', 'HRK', '2017-12-02 07:58:45', '2017-12-02 07:58:45'),
(54, 'Cuba', 'CUP', '2017-12-02 07:58:45', '2017-12-02 07:58:45'),
(55, 'Cyprus', 'EUR', '2017-12-02 07:58:45', '2017-12-02 07:58:45'),
(56, 'Czech Rep.', 'CZK', '2017-12-02 07:58:46', '2017-12-02 07:58:46'),
(57, 'Denmark', 'DKK', '2017-12-02 07:58:46', '2017-12-02 07:58:46'),
(58, 'Djibouti', 'DJF', '2017-12-02 07:58:46', '2017-12-02 07:58:46'),
(59, 'Dominica', 'XCD', '2017-12-02 07:58:46', '2017-12-02 07:58:46'),
(60, 'Dominican Republic', 'DOP', '2017-12-02 07:58:46', '2017-12-02 07:58:46'),
(61, 'Ecuador', 'ECS', '2017-12-02 07:58:46', '2017-12-02 07:58:46'),
(62, 'Egypt', 'EGP', '2017-12-02 07:58:47', '2017-12-02 07:58:47'),
(63, 'El Salvador', 'SVC', '2017-12-02 07:58:47', '2017-12-02 07:58:47'),
(64, 'Equatorial Guinea', 'XAF', '2017-12-02 07:58:47', '2017-12-02 07:58:47'),
(65, 'Eritrea', 'ERN', '2017-12-02 07:58:47', '2017-12-02 07:58:47'),
(66, 'Estonia', 'EUR', '2017-12-02 07:58:47', '2017-12-02 07:58:47'),
(67, 'Ethiopia', 'ETB', '2017-12-02 07:58:47', '2017-12-02 07:58:47'),
(68, 'European Union', 'EUR', '2017-12-02 07:58:47', '2017-12-02 07:58:47'),
(69, 'Falkland Islands (Malvinas)', 'FKP', '2017-12-02 07:58:48', '2017-12-02 07:58:48'),
(70, 'Faroe Islands', 'DKK', '2017-12-02 07:58:48', '2017-12-02 07:58:48'),
(71, 'Fiji', 'FJD', '2017-12-02 07:58:48', '2017-12-02 07:58:48'),
(72, 'Finland', 'EUR', '2017-12-02 07:58:49', '2017-12-02 07:58:49'),
(73, 'France', 'EUR', '2017-12-02 07:58:49', '2017-12-02 07:58:49'),
(74, 'French Guiana', 'EUR', '2017-12-02 07:58:49', '2017-12-02 07:58:49'),
(75, 'French Southern Territories', 'EUR', '2017-12-02 07:58:49', '2017-12-02 07:58:49'),
(76, 'Gabon', 'XAF', '2017-12-02 07:58:49', '2017-12-02 07:58:49'),
(77, 'Gambia', 'GMD', '2017-12-02 07:58:49', '2017-12-02 07:58:49'),
(78, 'Georgia', 'GEL', '2017-12-02 07:58:49', '2017-12-02 07:58:49'),
(79, 'Germany', 'EUR', '2017-12-02 07:58:49', '2017-12-02 07:58:49'),
(80, 'Ghana', 'GHS', '2017-12-02 07:58:49', '2017-12-02 07:58:49'),
(81, 'Gibraltar', 'GIP', '2017-12-02 07:58:49', '2017-12-02 07:58:49'),
(82, 'Great Britain', 'GBP', '2017-12-02 07:58:50', '2017-12-02 07:58:50'),
(83, 'Greece', 'EUR', '2017-12-02 07:58:50', '2017-12-02 07:58:50'),
(84, 'Greenland', 'DKK', '2017-12-02 07:58:50', '2017-12-02 07:58:50'),
(85, 'Grenada', 'XCD', '2017-12-02 07:58:50', '2017-12-02 07:58:50'),
(86, 'Guadeloupe (French)', 'EUR', '2017-12-02 07:58:50', '2017-12-02 07:58:50'),
(87, 'Guam (USA)', 'USD', '2017-12-02 07:58:50', '2017-12-02 07:58:50'),
(88, 'Guatemala', 'QTQ', '2017-12-02 07:58:50', '2017-12-02 07:58:50'),
(89, 'Guernsey', 'GGP', '2017-12-02 07:58:50', '2017-12-02 07:58:50'),
(90, 'Guinea', 'GNF', '2017-12-02 07:58:50', '2017-12-02 07:58:50'),
(91, 'Guinea Bissau', 'GWP', '2017-12-02 07:58:50', '2017-12-02 07:58:50'),
(92, 'Guyana', 'GYD', '2017-12-02 07:58:51', '2017-12-02 07:58:51'),
(93, 'Haiti', 'HTG', '2017-12-02 07:58:51', '2017-12-02 07:58:51'),
(94, 'Heard Island and McDonald Islands', 'AUD', '2017-12-02 07:58:51', '2017-12-02 07:58:51'),
(95, 'Honduras', 'HNL', '2017-12-02 07:58:51', '2017-12-02 07:58:51'),
(96, 'Hong Kong', 'HKD', '2017-12-02 07:58:51', '2017-12-02 07:58:51'),
(97, 'Hungary', 'HUF', '2017-12-02 07:58:51', '2017-12-02 07:58:51'),
(98, 'Iceland', 'ISK', '2017-12-02 07:58:51', '2017-12-02 07:58:51'),
(99, 'India', 'INR', '2017-12-02 07:58:51', '2017-12-02 07:58:51'),
(100, 'Indonesia', 'IDR', '2017-12-02 07:58:52', '2017-12-02 07:58:52'),
(101, 'Iran', 'IRR', '2017-12-02 07:58:52', '2017-12-02 07:58:52'),
(102, 'Iraq', 'IQD', '2017-12-02 07:58:52', '2017-12-02 07:58:52'),
(103, 'Ireland', 'EUR', '2017-12-02 07:58:52', '2017-12-02 07:58:52'),
(104, 'Isle of Man', 'GBP', '2017-12-02 07:58:52', '2017-12-02 07:58:52'),
(105, 'Israel', 'ILS', '2017-12-02 07:58:52', '2017-12-02 07:58:52'),
(106, 'Italy', 'EUR', '2017-12-02 07:58:52', '2017-12-02 07:58:52'),
(107, 'Ivory Coast', 'XOF', '2017-12-02 07:58:52', '2017-12-02 07:58:52'),
(108, 'Jamaica', 'JMD', '2017-12-02 07:58:52', '2017-12-02 07:58:52'),
(109, 'Japan', 'JPY', '2017-12-02 07:58:52', '2017-12-02 07:58:52'),
(110, 'Jersey', 'GBP', '2017-12-02 07:58:52', '2017-12-02 07:58:52'),
(111, 'Jordan', 'JOD', '2017-12-02 07:58:53', '2017-12-02 07:58:53'),
(112, 'Kazakhstan', 'KZT', '2017-12-02 07:58:53', '2017-12-02 07:58:53'),
(113, 'Kenya', 'KES', '2017-12-02 07:58:53', '2017-12-02 07:58:53'),
(114, 'Kiribati', 'AUD', '2017-12-02 07:58:53', '2017-12-02 07:58:53'),
(115, 'Korea-North', 'KPW', '2017-12-02 07:58:53', '2017-12-02 07:58:53'),
(116, 'Korea-South', 'KRW', '2017-12-02 07:58:53', '2017-12-02 07:58:53'),
(117, 'Kuwait', 'KWD', '2017-12-02 07:58:53', '2017-12-02 07:58:53'),
(118, 'Kyrgyzstan', 'KGS', '2017-12-02 07:58:53', '2017-12-02 07:58:53'),
(119, 'Laos', 'LAK', '2017-12-02 07:58:53', '2017-12-02 07:58:53'),
(120, 'Latvia', 'LVL', '2017-12-02 07:58:53', '2017-12-02 07:58:53'),
(121, 'Lebanon', 'LBP', '2017-12-02 07:58:53', '2017-12-02 07:58:53'),
(122, 'Lesotho', 'LSL', '2017-12-02 07:58:53', '2017-12-02 07:58:53'),
(123, 'Liberia', 'LRD', '2017-12-02 07:58:54', '2017-12-02 07:58:54'),
(124, 'Libya', 'LYD', '2017-12-02 07:58:54', '2017-12-02 07:58:54'),
(125, 'Liechtenstein', 'CHF', '2017-12-02 07:58:54', '2017-12-02 07:58:54'),
(126, 'Lithuania', 'LTL', '2017-12-02 07:58:54', '2017-12-02 07:58:54'),
(127, 'Luxembourg', 'EUR', '2017-12-02 07:58:54', '2017-12-02 07:58:54'),
(128, 'Macau', 'MOP', '2017-12-02 07:58:54', '2017-12-02 07:58:54'),
(129, 'Macedonia', 'MKD', '2017-12-02 07:58:54', '2017-12-02 07:58:54'),
(130, 'Madagascar', 'MGF', '2017-12-02 07:58:54', '2017-12-02 07:58:54'),
(131, 'Malawi', 'MWK', '2017-12-02 07:58:54', '2017-12-02 07:58:54'),
(132, 'Malaysia', 'MYR', '2017-12-02 07:58:54', '2017-12-02 07:58:54'),
(133, 'Maldives', 'MVR', '2017-12-02 07:58:54', '2017-12-02 07:58:54'),
(134, 'Mali', 'XOF', '2017-12-02 07:58:54', '2017-12-02 07:58:54'),
(135, 'Malta', 'EUR', '2017-12-02 07:58:54', '2017-12-02 07:58:54'),
(136, 'Marshall Islands', 'USD', '2017-12-02 07:58:54', '2017-12-02 07:58:54'),
(137, 'Martinique (French)', 'EUR', '2017-12-02 07:58:55', '2017-12-02 07:58:55'),
(138, 'Mauritania', 'MRO', '2017-12-02 07:58:55', '2017-12-02 07:58:55'),
(139, 'Mauritius', 'MUR', '2017-12-02 07:58:55', '2017-12-02 07:58:55'),
(140, 'Mayotte', 'EUR', '2017-12-02 07:58:55', '2017-12-02 07:58:55'),
(141, 'Mexico', 'MXN', '2017-12-02 07:58:55', '2017-12-02 07:58:55'),
(142, 'Micronesia', 'USD', '2017-12-02 07:58:55', '2017-12-02 07:58:55'),
(143, 'Moldova', 'MDL', '2017-12-02 07:58:55', '2017-12-02 07:58:55'),
(144, 'Monaco', 'EUR', '2017-12-02 07:58:55', '2017-12-02 07:58:55'),
(145, 'Mongolia', 'MNT', '2017-12-02 07:58:55', '2017-12-02 07:58:55'),
(146, 'Montenegro', 'EUR', '2017-12-02 07:58:55', '2017-12-02 07:58:55'),
(147, 'Montserrat', 'XCD', '2017-12-02 07:58:55', '2017-12-02 07:58:55'),
(148, 'Morocco', 'MAD', '2017-12-02 07:58:55', '2017-12-02 07:58:55'),
(149, 'Mozambique', 'MZN', '2017-12-02 07:58:56', '2017-12-02 07:58:56'),
(150, 'Myanmar', 'MMK', '2017-12-02 07:58:56', '2017-12-02 07:58:56'),
(151, 'Namibia', 'NAD', '2017-12-02 07:58:56', '2017-12-02 07:58:56'),
(152, 'Nauru', 'AUD', '2017-12-02 07:58:56', '2017-12-02 07:58:56'),
(153, 'Nepal', 'NPR', '2017-12-02 07:58:56', '2017-12-02 07:58:56'),
(154, 'Netherlands', 'EUR', '2017-12-02 07:58:56', '2017-12-02 07:58:56'),
(155, 'Netherlands Antilles', 'ANG', '2017-12-02 07:58:56', '2017-12-02 07:58:56'),
(156, 'New Caledonia (French)', 'XPF', '2017-12-02 07:58:56', '2017-12-02 07:58:56'),
(157, 'New Zealand', 'NZD', '2017-12-02 07:58:56', '2017-12-02 07:58:56'),
(158, 'Nicaragua', 'NIO', '2017-12-02 07:58:56', '2017-12-02 07:58:56'),
(159, 'Niger', 'XOF', '2017-12-02 07:58:56', '2017-12-02 07:58:56'),
(160, 'Nigeria', 'NGN', '2017-12-02 07:58:56', '2017-12-02 07:58:56'),
(161, 'Niue', 'NZD', '2017-12-02 07:58:56', '2017-12-02 07:58:56'),
(162, 'Norfolk Island', 'AUD', '2017-12-02 07:58:56', '2017-12-02 07:58:56'),
(163, 'Northern Mariana Islands', 'USD', '2017-12-02 07:58:56', '2017-12-02 07:58:56'),
(164, 'Norway', 'NOK', '2017-12-02 07:58:56', '2017-12-02 07:58:56'),
(165, 'Oman', 'OMR', '2017-12-02 07:58:56', '2017-12-02 07:58:56'),
(166, 'Pakistan', 'PKR', '2017-12-02 07:58:57', '2017-12-02 07:58:57'),
(167, 'Palau', 'USD', '2017-12-02 07:58:57', '2017-12-02 07:58:57'),
(168, 'Panama', 'PAB', '2017-12-02 07:58:57', '2017-12-02 07:58:57'),
(169, 'Papua New Guinea', 'PGK', '2017-12-02 07:58:57', '2017-12-02 07:58:57'),
(170, 'Paraguay', 'PYG', '2017-12-02 07:58:57', '2017-12-02 07:58:57'),
(171, 'Peru', 'PEN', '2017-12-02 07:58:57', '2017-12-02 07:58:57'),
(172, 'Philippines', 'PHP', '2017-12-02 07:58:57', '2017-12-02 07:58:57'),
(173, 'Pitcairn Island', 'NZD', '2017-12-02 07:58:57', '2017-12-02 07:58:57'),
(174, 'Poland', 'PLN', '2017-12-02 07:58:57', '2017-12-02 07:58:57'),
(175, 'Polynesia (French)', 'XPF', '2017-12-02 07:58:57', '2017-12-02 07:58:57'),
(176, 'Portugal', 'EUR', '2017-12-02 07:58:57', '2017-12-02 07:58:57'),
(177, 'Puerto Rico', 'USD', '2017-12-02 07:58:57', '2017-12-02 07:58:57'),
(178, 'Qatar', 'QAR', '2017-12-02 07:58:57', '2017-12-02 07:58:57'),
(179, 'Reunion (French)', 'EUR', '2017-12-02 07:58:57', '2017-12-02 07:58:57'),
(180, 'Romania', 'RON', '2017-12-02 07:58:57', '2017-12-02 07:58:57'),
(181, 'Russia', 'RUB', '2017-12-02 07:58:57', '2017-12-02 07:58:57'),
(182, 'Rwanda', 'RWF', '2017-12-02 07:58:57', '2017-12-02 07:58:57'),
(183, 'Saint Helena', 'SHP', '2017-12-02 07:58:57', '2017-12-02 07:58:57'),
(184, 'Saint Kitts & Nevis Anguilla', 'XCD', '2017-12-02 07:58:57', '2017-12-02 07:58:57'),
(185, 'Saint Lucia', 'XCD', '2017-12-02 07:58:57', '2017-12-02 07:58:57'),
(186, 'Saint Pierre and Miquelon', 'EUR', '2017-12-02 07:58:57', '2017-12-02 07:58:57'),
(187, 'Saint Vincent & Grenadines', 'XCD', '2017-12-02 07:58:57', '2017-12-02 07:58:57'),
(188, 'Samoa', 'WST', '2017-12-02 07:58:58', '2017-12-02 07:58:58'),
(189, 'San Marino', 'EUR', '2017-12-02 07:58:58', '2017-12-02 07:58:58'),
(190, 'Sao Tome and Principe', 'STD', '2017-12-02 07:58:58', '2017-12-02 07:58:58'),
(191, 'Saudi Arabia', 'SAR', '2017-12-02 07:58:58', '2017-12-02 07:58:58'),
(192, 'Senegal', 'XOF', '2017-12-02 07:58:58', '2017-12-02 07:58:58'),
(193, 'Serbia', 'RSD', '2017-12-02 07:58:58', '2017-12-02 07:58:58'),
(194, 'Seychelles', 'SCR', '2017-12-02 07:58:58', '2017-12-02 07:58:58'),
(195, 'Sierra Leone', 'SLL', '2017-12-02 07:58:58', '2017-12-02 07:58:58'),
(196, 'Singapore', 'SGD', '2017-12-02 07:58:58', '2017-12-02 07:58:58'),
(197, 'Slovakia', 'EUR', '2017-12-02 07:58:58', '2017-12-02 07:58:58'),
(198, 'Slovenia', 'EUR', '2017-12-02 07:58:58', '2017-12-02 07:58:58'),
(199, 'Solomon Islands', 'SBD', '2017-12-02 07:58:58', '2017-12-02 07:58:58'),
(200, 'Somalia', 'SOS', '2017-12-02 07:58:58', '2017-12-02 07:58:58'),
(201, 'South Africa', 'ZAR', '2017-12-02 07:58:58', '2017-12-02 07:58:58'),
(202, 'South Georgia & South Sandwich Islands', 'GBP', '2017-12-02 07:58:58', '2017-12-02 07:58:58'),
(203, 'South Sudan', 'SSP', '2017-12-02 07:58:58', '2017-12-02 07:58:58'),
(204, 'Spain', 'EUR', '2017-12-02 07:58:58', '2017-12-02 07:58:58'),
(205, 'Sri Lanka', 'LKR', '2017-12-02 07:58:58', '2017-12-02 07:58:58'),
(206, 'Sudan', 'SDG', '2017-12-02 07:58:58', '2017-12-02 07:58:58'),
(207, 'Suriname', 'SRD', '2017-12-02 07:58:58', '2017-12-02 07:58:58'),
(208, 'Svalbard and Jan Mayen Islands', 'NOK', '2017-12-02 07:58:58', '2017-12-02 07:58:58'),
(209, 'Swaziland', 'SZL', '2017-12-02 07:58:58', '2017-12-02 07:58:58'),
(210, 'Sweden', 'SEK', '2017-12-02 07:58:59', '2017-12-02 07:58:59'),
(211, 'Switzerland', 'CHF', '2017-12-02 07:58:59', '2017-12-02 07:58:59'),
(212, 'Syria', 'SYP', '2017-12-02 07:58:59', '2017-12-02 07:58:59'),
(213, 'Taiwan', 'TWD', '2017-12-02 07:58:59', '2017-12-02 07:58:59'),
(214, 'Tajikistan', 'TJS', '2017-12-02 07:58:59', '2017-12-02 07:58:59'),
(215, 'Tanzania', 'TZS', '2017-12-02 07:58:59', '2017-12-02 07:58:59'),
(216, 'Thailand', 'THB', '2017-12-02 07:58:59', '2017-12-02 07:58:59'),
(217, 'Togo', 'XOF', '2017-12-02 07:58:59', '2017-12-02 07:58:59'),
(218, 'Tokelau', 'NZD', '2017-12-02 07:58:59', '2017-12-02 07:58:59'),
(219, 'Tonga', 'TOP', '2017-12-02 07:58:59', '2017-12-02 07:58:59'),
(220, 'Trinidad and Tobago', 'TTD', '2017-12-02 07:58:59', '2017-12-02 07:58:59'),
(221, 'Tunisia', 'TND', '2017-12-02 07:58:59', '2017-12-02 07:58:59'),
(222, 'Turkey', 'TRY', '2017-12-02 07:58:59', '2017-12-02 07:58:59'),
(223, 'Turkmenistan', 'TMT', '2017-12-02 07:58:59', '2017-12-02 07:58:59'),
(224, 'Turks and Caicos Islands', 'USD', '2017-12-02 07:58:59', '2017-12-02 07:58:59'),
(225, 'Tuvalu', 'AUD', '2017-12-02 07:58:59', '2017-12-02 07:58:59'),
(226, 'U.K.', 'GBP', '2017-12-02 07:58:59', '2017-12-02 07:58:59'),
(227, 'Uganda', 'UGX', '2017-12-02 07:58:59', '2017-12-02 07:58:59'),
(228, 'Ukraine', 'UAH', '2017-12-02 07:58:59', '2017-12-02 07:58:59'),
(229, 'United Arab Emirates', 'AED', '2017-12-02 07:58:59', '2017-12-02 07:58:59'),
(230, 'Uruguay', 'UYU', '2017-12-02 07:58:59', '2017-12-02 07:58:59'),
(231, 'USA', 'USD', '2017-12-02 07:58:59', '2017-12-02 07:58:59'),
(232, 'USA Minor Outlying Islands', 'USD', '2017-12-02 07:59:00', '2017-12-02 07:59:00'),
(233, 'Uzbekistan', 'UZS', '2017-12-02 07:59:00', '2017-12-02 07:59:00'),
(234, 'Vanuatu', 'VUV', '2017-12-02 07:59:00', '2017-12-02 07:59:00'),
(235, 'Vatican', 'EUR', '2017-12-02 07:59:00', '2017-12-02 07:59:00'),
(236, 'Venezuela', 'VEF', '2017-12-02 07:59:00', '2017-12-02 07:59:00'),
(237, 'Vietnam', 'VND', '2017-12-02 07:59:00', '2017-12-02 07:59:00'),
(238, 'Virgin Islands (British)', 'USD', '2017-12-02 07:59:00', '2017-12-02 07:59:00'),
(239, 'Virgin Islands (USA)', 'USD', '2017-12-02 07:59:00', '2017-12-02 07:59:00'),
(240, 'Wallis and Futuna Islands', 'XPF', '2017-12-02 07:59:00', '2017-12-02 07:59:00'),
(241, 'Western Sahara', 'MAD', '2017-12-02 07:59:00', '2017-12-02 07:59:00'),
(242, 'Yemen', 'YER', '2017-12-02 07:59:00', '2017-12-02 07:59:00'),
(243, 'Zambia', 'ZMW', '2017-12-02 07:59:00', '2017-12-02 07:59:00'),
(244, 'Zimbabwe', 'ZWD', '2017-12-02 07:59:01', '2017-12-02 07:59:01');

-- --------------------------------------------------------

--
-- Table structure for table `currencies`
--

CREATE TABLE `currencies` (
  `id` int(10) UNSIGNED NOT NULL,
  `currency` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `baseCurrency` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `amount` double(15,2) NOT NULL,
  `startDate` datetime NOT NULL,
  `endDate` datetime NOT NULL,
  `companyId` int(10) UNSIGNED NOT NULL,
  `updatedBy` int(10) UNSIGNED NOT NULL,
  `createdBy` int(10) UNSIGNED NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `customers`
--

CREATE TABLE `customers` (
  `id` int(10) UNSIGNED NOT NULL,
  `companyName` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `companyEmail` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `companyCurrency` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `surname` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `customerType` tinyint(1) DEFAULT NULL,
  `city` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `customerVacation` tinyint(1) DEFAULT '0',
  `customerVacationUntil` date DEFAULT NULL,
  `secret` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `creditLimit` double(15,2) DEFAULT NULL,
  `days` int(11) DEFAULT NULL,
  `discount` double(15,2) DEFAULT NULL,
  `active` tinyint(1) DEFAULT NULL,
  `disableReason` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `companyId` int(10) UNSIGNED NOT NULL,
  `updatedBy` int(10) UNSIGNED NOT NULL,
  `createdBy` int(10) UNSIGNED NOT NULL,
  `shippingZone` int(10) UNSIGNED DEFAULT NULL,
  `shippingSubZone` int(10) UNSIGNED DEFAULT NULL,
  `hash` text COLLATE utf8mb4_unicode_ci,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `customers`
--

INSERT INTO `customers` (`id`, `companyName`, `companyEmail`, `email`, `companyCurrency`, `surname`, `customerType`, `city`, `country`, `customerVacation`, `customerVacationUntil`, `secret`, `remember_token`, `password`, `creditLimit`, `days`, `discount`, `active`, `disableReason`, `companyId`, `updatedBy`, `createdBy`, `shippingZone`, `shippingSubZone`, `hash`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 'Gibson-Spinka', 'vladimir.parker@hoppe.org', 'example@example.com', NULL, NULL, 1, NULL, NULL, 0, NULL, NULL, NULL, '$2y$10$5/LbKT3YKzBVMKGpisy6heuZtzaN1wrMt67Lnjwego/9uJrqgPV1G', NULL, NULL, NULL, 0, NULL, 1, 0, 1, NULL, NULL, NULL, NULL, '2017-12-02 07:59:49', '2017-12-02 07:59:49'),
(2, 'Heathcote-Smith', 'trey.bartoletti@swaniawski.org', 'dwanyoike@codedcell.com', NULL, NULL, 0, NULL, NULL, 0, NULL, NULL, NULL, '$2y$10$b9piEpc3txYera7STMC6rOIskxd5M2YjiTey31PXbbi6zDEvFIOpu', NULL, NULL, NULL, 0, NULL, 1, 0, 1, NULL, NULL, NULL, NULL, '2017-12-02 07:59:49', '2017-12-02 07:59:49'),
(3, 'Metz-Johnson', 'ocrooks@marquardt.com', 'nicole.bartell@gmail.com', NULL, NULL, 0, NULL, NULL, 0, NULL, NULL, NULL, '$2y$10$GVc9ljuFWmc2FHD6.DRTNONM4SlHkaTHFddoMNQ50Odr5eUkipTXe', NULL, NULL, NULL, 0, NULL, 1, 0, 1, NULL, NULL, NULL, NULL, '2017-12-02 07:59:51', '2017-12-02 07:59:51'),
(4, 'Robel-Kuphal', 'heaney.davon@grant.biz', 'julie.nader@morissette.org', NULL, NULL, 0, NULL, NULL, 0, NULL, NULL, NULL, '$2y$10$0gao1zsmodKobYCSqyB3lefV6ygfl.itNH07jfIMuma0lDdumNCsK', NULL, NULL, NULL, 1, NULL, 1, 0, 1, NULL, NULL, NULL, NULL, '2017-12-02 07:59:52', '2017-12-02 07:59:52'),
(5, 'Connelly, Nienow and Herzog', 'chanel27@douglas.org', 'twila92@gmail.com', NULL, NULL, 1, NULL, NULL, 0, NULL, NULL, NULL, '$2y$10$rSDZZeoaeMOy/I72FFCpjOmrdUkF4DASHYFP5g4VGX/dXW5Bojzn.', NULL, NULL, NULL, 0, NULL, 1, 0, 1, NULL, NULL, NULL, NULL, '2017-12-02 07:59:52', '2017-12-02 07:59:52'),
(6, 'Renner, Littel and Waters', 'rutherford.alberta@schumm.net', 'vhomenick@yahoo.com', NULL, NULL, 0, NULL, NULL, 0, NULL, NULL, NULL, '$2y$10$s02.dsmglBVtsFTtNqk29eXp8umH5Ys3UHu2xqMHEXmJAGp7u41HW', NULL, NULL, NULL, 1, NULL, 1, 0, 1, NULL, NULL, NULL, NULL, '2017-12-02 07:59:52', '2017-12-02 07:59:52'),
(7, 'Graham-Bednar', 'cameron.waelchi@hessel.net', 'destany18@walker.com', NULL, NULL, 1, NULL, NULL, 0, NULL, NULL, NULL, '$2y$10$uzROEq5hQ/TDyDqxmu.T9OykZImSDT4QZoea4XeRbfZ68kMUiOxIW', NULL, NULL, NULL, 0, NULL, 1, 0, 1, NULL, NULL, NULL, NULL, '2017-12-02 07:59:52', '2017-12-02 07:59:52'),
(8, 'Lakin-Nitzsche', 'uzulauf@bartell.com', 'dean66@hotmail.com', NULL, NULL, 0, NULL, NULL, 0, NULL, NULL, NULL, '$2y$10$dLGqz.42z9IjdIHosVmOcOgl0qXt2.jG7BIPhUaeiGCwCd5vRzb.2', NULL, NULL, NULL, 0, NULL, 1, 0, 1, NULL, NULL, NULL, NULL, '2017-12-02 07:59:52', '2017-12-02 07:59:52'),
(9, 'Kris-Dicki', 'mueller.emmanuelle@altenwerth.com', 'bertha02@aufderhar.net', NULL, NULL, 1, NULL, NULL, 0, NULL, NULL, NULL, '$2y$10$bU22O.qcoSJJaBwx6tWCrO2oTlw0ACYG3HxseR4CauJ75xvELmioW', NULL, NULL, NULL, 0, NULL, 1, 0, 1, NULL, NULL, NULL, NULL, '2017-12-02 07:59:52', '2017-12-02 07:59:52'),
(10, 'Roob-Effertz', 'kassulke.godfrey@harvey.com', 'adam.koelpin@yahoo.com', NULL, NULL, 0, NULL, NULL, 0, NULL, NULL, NULL, '$2y$10$BVS/iv/6BYO5HtSbsjbhm.hjt7o4w1btcUKnIe/UARyewE1yhBQrS', NULL, NULL, NULL, 1, NULL, 1, 0, 1, NULL, NULL, NULL, NULL, '2017-12-02 07:59:52', '2017-12-02 07:59:52'),
(11, 'Casper, Altenwerth and Thiel', 'bailey.hettie@purdy.biz', 'trisha88@altenwerth.com', NULL, NULL, 1, NULL, NULL, 0, NULL, NULL, NULL, '$2y$10$BHDEf6DBq/P9JgUdYZfRpO6xbDIcBNgnADI3Z34dCCevVKLsyRqtG', NULL, NULL, NULL, 0, NULL, 1, 0, 1, NULL, NULL, NULL, NULL, '2017-12-02 07:59:52', '2017-12-02 07:59:52'),
(12, 'West-Stehr', 'adeline74@frami.com', 'nelle.larson@gmail.com', NULL, NULL, 0, NULL, NULL, 0, NULL, NULL, NULL, '$2y$10$k6DhWUOtGCGKhGI3KE79YeWnzK/Lb5lDvu79tb6l/4rVmoLeEF6FG', NULL, NULL, NULL, 0, NULL, 1, 0, 1, NULL, NULL, NULL, NULL, '2017-12-02 07:59:52', '2017-12-02 07:59:52'),
(13, 'Heller-O\'Hara', 'rachelle.batz@wyman.com', 'chaya25@gmail.com', NULL, NULL, 0, NULL, NULL, 0, NULL, NULL, NULL, '$2y$10$GoooAeR0fHKFDktDetNkLeq7blYq4O4k8CuuCL1Q6j867O/iYJ5s.', NULL, NULL, NULL, 0, NULL, 1, 0, 1, NULL, NULL, NULL, NULL, '2017-12-02 07:59:52', '2017-12-02 07:59:52'),
(14, 'Quitzon, Braun and Kassulke', 'kozey.irving@collier.org', 'lueilwitz.leatha@yahoo.com', NULL, NULL, 1, NULL, NULL, 0, NULL, NULL, NULL, '$2y$10$P08wQkYN7AmzrJipaeBqJ.ns0VC0c5KJHPPcM98LEuReqAz7hpFSW', NULL, NULL, NULL, 0, NULL, 1, 0, 1, NULL, NULL, NULL, NULL, '2017-12-02 07:59:52', '2017-12-02 07:59:52'),
(15, 'Mertz LLC', 'amparo95@kulas.biz', 'jaiden.quigley@gmail.com', NULL, NULL, 0, NULL, NULL, 0, NULL, NULL, NULL, '$2y$10$Ot.xQnoGq7llQQFHGGx5a.PylfgvTencHbeE9Ie0Wfc5b9S4aJxxC', NULL, NULL, NULL, 1, NULL, 1, 0, 1, NULL, NULL, NULL, NULL, '2017-12-02 07:59:52', '2017-12-02 07:59:52'),
(16, 'Reichert, Purdy and Dibbert', 'sipes.leora@bartoletti.net', 'kavon.schumm@hagenes.info', NULL, NULL, 0, NULL, NULL, 0, NULL, NULL, NULL, '$2y$10$6dMbnf4JznR5MbjHzOlgDeDtNZzteBRhhX892NqF4Av9S1EjL2n1C', NULL, NULL, NULL, 0, NULL, 1, 0, 1, NULL, NULL, NULL, NULL, '2017-12-02 07:59:52', '2017-12-02 07:59:52'),
(17, 'Upton PLC', 'ford.spencer@spinka.com', 'boyle.branson@hotmail.com', NULL, NULL, 0, NULL, NULL, 0, NULL, NULL, NULL, '$2y$10$1KxIBh0nQjEZ5NHJK16WCuiKw8X.on3s/ah99wh5IioTBnbQWOa9m', NULL, NULL, NULL, 0, NULL, 1, 0, 1, NULL, NULL, NULL, NULL, '2017-12-02 07:59:52', '2017-12-02 07:59:52'),
(18, 'Fay Inc', 'friesen.rebekah@runolfsson.com', 'sonia68@schulist.com', NULL, NULL, 0, NULL, NULL, 0, NULL, NULL, NULL, '$2y$10$5dCKQngsBFIpiuPqsxjc8uBjM1ucG29T0wHpsW4GHRcr77ztfwzlG', NULL, NULL, NULL, 1, NULL, 1, 0, 1, NULL, NULL, NULL, NULL, '2017-12-02 07:59:52', '2017-12-02 07:59:52'),
(19, 'Crooks-Greenfelder', 'maggio.katherine@cruickshank.com', 'flatley.verna@pfannerstill.com', NULL, NULL, 0, NULL, NULL, 0, NULL, NULL, NULL, '$2y$10$rRL0Nj.GUAJ/DJvuW7Vvl.OMiEtZjU2OotMydI1632PquX/AWNN3S', NULL, NULL, NULL, 1, NULL, 1, 0, 1, NULL, NULL, NULL, NULL, '2017-12-02 07:59:53', '2017-12-02 07:59:53'),
(20, 'Lang-Jenkins', 'patrick39@murphy.com', 'aidan.hilpert@yahoo.com', NULL, NULL, 1, NULL, NULL, 0, NULL, NULL, NULL, '$2y$10$wqfW6aWQA2N723BpOpxRKe7GIoO0d.O/.gCqrrXczZPa1sFsxV/LG', NULL, NULL, NULL, 0, NULL, 1, 0, 1, NULL, NULL, NULL, NULL, '2017-12-02 07:59:53', '2017-12-02 07:59:53'),
(21, 'Little, Rath and Lowe', 'dallin70@murphy.org', 'jconsidine@kling.com', NULL, NULL, 0, NULL, NULL, 0, NULL, NULL, NULL, '$2y$10$6hf4T4fjBpgI2O36UAjUcu5Zysk0cn.ts4vjoe3Cr/ibEw3hNJii2', NULL, NULL, NULL, 1, NULL, 1, 0, 1, NULL, NULL, NULL, NULL, '2017-12-02 07:59:53', '2017-12-02 07:59:53'),
(22, 'Lakin, Gulgowski and Olson', 'kuhic.khalil@will.net', 'elizabeth07@hotmail.com', NULL, NULL, 1, NULL, NULL, 0, NULL, NULL, NULL, '$2y$10$qkq493Ag4ztQdqbbDTivjOOSVgEThj3a/aLpi5Dven0oQZ3T/9J2S', NULL, NULL, NULL, 1, NULL, 1, 0, 1, NULL, NULL, NULL, NULL, '2017-12-02 07:59:53', '2017-12-02 07:59:53');

-- --------------------------------------------------------

--
-- Table structure for table `customer_contacts`
--

CREATE TABLE `customer_contacts` (
  `id` int(10) UNSIGNED NOT NULL,
  `customerId` int(10) UNSIGNED NOT NULL,
  `customerName` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `telephoneNumber` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mobileNumber` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address1` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address2` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `street` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `zipCode` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `addressName1` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `addressName2` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `houseno` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `societyname` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `hash` text COLLATE utf8mb4_unicode_ci,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `customer_contacts`
--

INSERT INTO `customer_contacts` (`id`, `customerId`, `customerName`, `telephoneNumber`, `mobileNumber`, `address1`, `address2`, `email`, `street`, `zipCode`, `addressName1`, `addressName2`, `houseno`, `societyname`, `hash`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 1, 'Mr. Percival Leffler III', '+1.931.579.6507', '1-726-233-4555', '508 Ola Freeway', '739 Laurel Summit', 'shakira.lakin@gmail.com', NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, '2017-12-02 07:59:49', '2017-12-02 07:59:49'),
(2, 1, 'Mr. Terrell Crona PhD', '998.281.4989', '757.773.5962', '700 Stamm Route', '6117 Botsford Canyon', 'callie08@johns.biz', NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, '2017-12-02 07:59:50', '2017-12-02 07:59:50'),
(3, 2, 'Javon Armstrong', '(234) 519-7621', '1-595-203-6207 x584', '4411 Adriana Passage', '65945 Katarina Branch Apt. 688', 'lindsey48@gmail.com', NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, '2017-12-02 07:59:50', '2017-12-02 07:59:50'),
(4, 3, 'Ward Hansen PhD', '+1.402.501.2078', '+1 (498) 926-3000', '59633 Shemar Prairie Suite 325', '8636 Runolfsdottir Wells', 'rpfannerstill@yahoo.com', NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, '2017-12-02 07:59:53', '2017-12-02 07:59:53'),
(5, 3, 'Jarrett Kohler', '+1-556-349-0809', '+1 (808) 557-7799', '2358 Strosin Terrace', '912 Prohaska Turnpike', 'wisozk.humberto@hotmail.com', NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, '2017-12-02 07:59:53', '2017-12-02 07:59:53'),
(6, 3, 'Luisa Heaney', '+1-448-387-5986', '815.919.0680 x53843', '42385 Macejkovic Circle', '7060 Koelpin Knoll Apt. 006', 'vswaniawski@kreiger.net', NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, '2017-12-02 07:59:53', '2017-12-02 07:59:53'),
(7, 3, 'Carole Moen', '(257) 635-3660', '(268) 704-9828', '9698 Raul Landing Apt. 485', '857 Jeramy Prairie Apt. 048', 'prosacco.larissa@gmail.com', NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, '2017-12-02 07:59:53', '2017-12-02 07:59:53'),
(8, 3, 'Carole Haag', '883-238-2983 x74171', '(358) 799-3235', '43797 Dickens Ford', '11154 O\'Reilly Hollow Apt. 074', 'imelda57@quitzon.com', NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, '2017-12-02 07:59:53', '2017-12-02 07:59:53'),
(9, 3, 'Donny Marks', '(601) 586-2772 x628', '1-526-919-9694 x46585', '8407 Laron Flats', '651 Ana Manor Suite 126', 'kay29@williamson.com', NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, '2017-12-02 07:59:53', '2017-12-02 07:59:53'),
(10, 3, 'Gayle Sipes', '+1 (635) 238-7383', '+15806553400', '3834 Henriette Village Apt. 063', '57399 Carlotta Lock Apt. 488', 'samanta91@yahoo.com', NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, '2017-12-02 07:59:53', '2017-12-02 07:59:53'),
(11, 3, 'Ms. Daniella Corkery DDS', '967.568.1645 x931', '+1 (542) 915-5681', '60693 Breitenberg Ports Apt. 565', '14473 Witting Skyway Suite 153', 'koconner@gmail.com', NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, '2017-12-02 07:59:53', '2017-12-02 07:59:53'),
(12, 3, 'Prof. Dee Labadie I', '686-300-1825', '1-712-429-9792 x56238', '780 Marjorie View', '2630 Norbert Summit Suite 657', 'ygrimes@reinger.com', NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, '2017-12-02 07:59:53', '2017-12-02 07:59:53'),
(13, 3, 'Ida Hartmann', '663-264-6840 x5832', '(275) 812-6089', '688 Matilda Islands', '8137 Yesenia Port', 'dare.simeon@raynor.com', NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, '2017-12-02 07:59:53', '2017-12-02 07:59:53'),
(14, 4, 'Ms. Camila Ward', '560.895.9262', '(325) 781-0609 x12238', '1312 Michele Drives Apt. 403', '31664 Juanita Forest', 'vivienne39@pfeffer.com', NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, '2017-12-02 07:59:53', '2017-12-02 07:59:53'),
(15, 4, 'Franco McGlynn', '+1-792-210-4920', '354.924.6954', '61387 Rashawn Ford Suite 929', '19661 Emmerich Crescent Suite 816', 'chegmann@gmail.com', NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, '2017-12-02 07:59:53', '2017-12-02 07:59:53'),
(16, 4, 'Gerald Jenkins', '+1-461-810-5044', '445.312.8964', '414 Rohan Roads', '42848 Rowe Plains Apt. 401', 'effertz.oceane@carter.com', NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, '2017-12-02 07:59:53', '2017-12-02 07:59:53'),
(17, 4, 'Dr. Florencio O\'Reilly IV', '(886) 333-1220 x58086', '257.891.3934 x1008', '2344 Keagan Circles', '696 Magali Mountains', 'pschimmel@gmail.com', NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, '2017-12-02 07:59:53', '2017-12-02 07:59:53'),
(18, 4, 'Winston Padberg', '465-239-1314', '965-313-1237', '6099 Dexter Drive Suite 561', '87116 McLaughlin Port', 'tony.dubuque@altenwerth.info', NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, '2017-12-02 07:59:54', '2017-12-02 07:59:54'),
(19, 4, 'Ena Reichert I', '1-816-927-1856 x06376', '726.826.9383', '71378 Hartmann Ports', '801 Paul Light Suite 359', 'ibradtke@yahoo.com', NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, '2017-12-02 07:59:54', '2017-12-02 07:59:54'),
(20, 4, 'Kamryn Feest', '258-953-5104', '695.686.6071 x974', '54616 Elenor Summit Apt. 876', '4976 Jeramie Fords Apt. 276', 'collier.lilly@abbott.info', NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, '2017-12-02 07:59:54', '2017-12-02 07:59:54'),
(21, 4, 'Christopher Johns', '(502) 481-2516', '209-972-6379 x597', '535 Margot Loaf', '6880 Dibbert Circle Suite 620', 'thurman98@goodwin.com', NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, '2017-12-02 07:59:54', '2017-12-02 07:59:54'),
(22, 4, 'Emilio Runolfsdottir', '+1.251.551.5025', '802.305.4633', '8556 Jerel Pike Suite 914', '7949 Salvatore Village Suite 174', 'araceli.hahn@mohr.org', NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, '2017-12-02 07:59:54', '2017-12-02 07:59:54'),
(23, 4, 'Mr. Deshawn Schuster Sr.', '+1-428-448-6738', '+1-991-632-5788', '4239 Carter Branch', '31646 River Crescent', 'braden.bartoletti@yahoo.com', NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, '2017-12-02 07:59:54', '2017-12-02 07:59:54'),
(24, 5, 'Dustin Grady II', '(508) 960-7481 x31018', '624.447.0120', '45643 Lawson Mountains Apt. 477', '7873 Birdie Squares Apt. 470', 'everardo.gottlieb@cartwright.biz', NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, '2017-12-02 07:59:54', '2017-12-02 07:59:54'),
(25, 5, 'Karelle Pacocha', '410.751.4802', '1-570-648-2473 x922', '4606 Batz Summit Apt. 591', '556 Roosevelt Crescent', 'ykuvalis@yahoo.com', NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, '2017-12-02 07:59:54', '2017-12-02 07:59:54'),
(26, 5, 'Uriel Orn', '(487) 896-9056 x4706', '+1 (575) 907-0904', '265 Goodwin Hollow', '52067 Turcotte Haven', 'hlegros@yahoo.com', NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, '2017-12-02 07:59:54', '2017-12-02 07:59:54'),
(27, 5, 'Vinnie Wolff', '841.229.7247', '931.450.0359', '4442 Gregory Dam Apt. 588', '917 Joy Loop', 'willis.ryan@yahoo.com', NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, '2017-12-02 07:59:54', '2017-12-02 07:59:54'),
(28, 5, 'Beryl Mohr', '947-744-0018', '472.361.9159 x312', '380 Dylan Branch', '61077 Thiel Passage Suite 346', 'labadie.carolina@kub.net', NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, '2017-12-02 07:59:54', '2017-12-02 07:59:54'),
(29, 5, 'Fermin Ondricka', '(653) 205-4060 x49317', '547-414-1140 x1223', '92251 Conn Flat Apt. 722', '339 Sunny Vista Apt. 928', 'gerhold.mary@ruecker.net', NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, '2017-12-02 07:59:54', '2017-12-02 07:59:54'),
(30, 5, 'Elinore Streich', '1-706-440-6788', '1-692-879-8707 x70575', '1643 Kristin Way Suite 427', '2040 Davis Field', 'clark75@casper.biz', NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, '2017-12-02 07:59:54', '2017-12-02 07:59:54'),
(31, 5, 'Claudia McGlynn', '648.530.4506', '+17766013926', '966 McLaughlin Highway', '67694 Altenwerth Keys Suite 024', 'jnikolaus@cummerata.com', NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, '2017-12-02 07:59:54', '2017-12-02 07:59:54'),
(32, 5, 'Logan Bergstrom', '946.474.3397 x75287', '1-629-941-7915 x49133', '40586 Rath Mews', '584 Jerrell Place', 'okeefe.leta@yahoo.com', NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, '2017-12-02 07:59:54', '2017-12-02 07:59:54'),
(33, 5, 'Janice Glover', '(204) 755-0553 x6802', '860.328.0307 x543', '52704 Sigmund Plains Apt. 343', '20547 Nina Greens Apt. 246', 'bria.bartoletti@hotmail.com', NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, '2017-12-02 07:59:54', '2017-12-02 07:59:54'),
(34, 6, 'Daphney Greenfelder', '(375) 405-8075 x4017', '867-941-2420 x0914', '38553 Dach Springs', '35149 Lind Trace', 'egerlach@yahoo.com', NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, '2017-12-02 07:59:54', '2017-12-02 07:59:54'),
(35, 6, 'Corrine Renner', '(632) 498-1632', '1-994-535-6109', '194 Leuschke Valley', '22201 Tavares Station Suite 030', 'neil.bergnaum@jakubowski.biz', NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, '2017-12-02 07:59:54', '2017-12-02 07:59:54'),
(36, 6, 'Marilyne Kling', '(876) 575-0957 x01794', '897.571.2386 x891', '51262 Oberbrunner Point Suite 500', '498 Clementine Track', 'brooklyn05@hotmail.com', NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, '2017-12-02 07:59:55', '2017-12-02 07:59:55'),
(37, 6, 'Mr. Kristoffer Funk PhD', '787-264-2274 x82871', '(291) 855-7175 x61062', '41579 Mellie Passage', '8170 DuBuque Hills', 'asa.feil@jakubowski.com', NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, '2017-12-02 07:59:55', '2017-12-02 07:59:55'),
(38, 6, 'Prof. Angus Ledner III', '858-916-5699 x9885', '(838) 392-2965', '456 Ova Grove', '25071 Orrin Forks Apt. 541', 'lexus27@hirthe.com', NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, '2017-12-02 07:59:55', '2017-12-02 07:59:55'),
(39, 6, 'Dr. Bo O\'Kon III', '234.250.3812 x442', '213-855-7886 x03628', '552 Gottlieb Spur', '9077 Rodriguez Mountain Apt. 955', 'jewell.gerlach@beatty.com', NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, '2017-12-02 07:59:55', '2017-12-02 07:59:55'),
(40, 6, 'Miss Pat Davis MD', '813-684-6191', '(326) 504-4911', '12190 Robyn Row Suite 726', '3223 Fannie Loop Apt. 694', 'ymacejkovic@jaskolski.com', NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, '2017-12-02 07:59:55', '2017-12-02 07:59:55'),
(41, 6, 'Mrs. Georgiana Waelchi', '694-497-3861 x631', '718.244.6044', '746 Joe Curve Apt. 485', '1202 Lloyd Cove Suite 080', 'marcellus.pfannerstill@hotmail.com', NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, '2017-12-02 07:59:55', '2017-12-02 07:59:55'),
(42, 6, 'Stefan Wyman', '+1-470-558-7935', '+1-984-393-4268', '33672 Maggio Island', '59260 Johnston Lodge Suite 818', 'martina57@hotmail.com', NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, '2017-12-02 07:59:55', '2017-12-02 07:59:55'),
(43, 6, 'Stephania Schuster', '419-708-5119 x95859', '754-745-0142', '1572 Herzog Unions Suite 138', '952 Gerhold Forge Suite 846', 'fredrick77@armstrong.org', NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, '2017-12-02 07:59:55', '2017-12-02 07:59:55'),
(44, 7, 'Mable Abbott', '+1-783-541-0830', '+1-748-887-7285', '3032 Strosin Islands', '12619 Brenda Parkway', 'dimitri06@gmail.com', NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, '2017-12-02 07:59:55', '2017-12-02 07:59:55'),
(45, 7, 'Jayde Ullrich', '695-302-8264 x74875', '823-331-9567', '68151 Sherwood Courts Suite 056', '291 Annabell Heights Apt. 918', 'bahringer.vergie@hotmail.com', NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, '2017-12-02 07:59:55', '2017-12-02 07:59:55'),
(46, 7, 'Mr. Lesley Wintheiser DDS', '921-522-6090', '1-383-469-9542', '618 Botsford Locks', '506 Kerluke Locks', 'orie.paucek@yahoo.com', NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, '2017-12-02 07:59:55', '2017-12-02 07:59:55'),
(47, 7, 'Gilberto Bednar', '759.421.7220', '+1 (550) 612-5995', '486 Brandyn Causeway Apt. 815', '27222 Lubowitz Terrace', 'marc.wolf@leffler.com', NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, '2017-12-02 07:59:55', '2017-12-02 07:59:55'),
(48, 7, 'Alisha Effertz', '1-390-216-8666', '1-761-468-8028 x137', '54582 Runte Route', '4652 Christiansen Ways Apt. 386', 'fannie.daniel@gmail.com', NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, '2017-12-02 07:59:55', '2017-12-02 07:59:55'),
(49, 7, 'Jannie Williamson', '(391) 517-5812', '(934) 531-3967', '9080 Malinda Land', '3863 Yost Parkways Suite 727', 'gottlieb.morgan@hotmail.com', NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, '2017-12-02 07:59:55', '2017-12-02 07:59:55'),
(50, 7, 'Kip Gleichner', '+1.497.373.9242', '706-586-5452 x61607', '971 Era View', '5506 Kade Trail Apt. 996', 'hauck.nelson@hotmail.com', NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, '2017-12-02 07:59:55', '2017-12-02 07:59:55'),
(51, 7, 'Cornell Heller', '1-884-898-8850 x5348', '(548) 426-5846', '8975 Shanahan Shores Suite 924', '406 Kris Freeway Apt. 203', 'marty54@sporer.com', NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, '2017-12-02 07:59:55', '2017-12-02 07:59:55'),
(52, 7, 'Violette Stracke', '346-623-0612', '1-784-521-9326 x7619', '98999 Parker Inlet Suite 927', '86371 Theron Mall', 'kuvalis.candido@hotmail.com', NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, '2017-12-02 07:59:56', '2017-12-02 07:59:56'),
(53, 7, 'Ronaldo Reynolds', '383.596.3268', '243-543-6956 x5046', '49932 Ed Prairie', '876 Rau Forks', 'floyd.kuvalis@hotmail.com', NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, '2017-12-02 07:59:56', '2017-12-02 07:59:56'),
(54, 8, 'Dr. Erik Cronin', '859-777-7949 x61431', '+1-687-745-8277', '489 Houston Isle', '1050 Frederik Port Suite 666', 'igerlach@hotmail.com', NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, '2017-12-02 07:59:56', '2017-12-02 07:59:56'),
(55, 8, 'Prof. Harvey Runolfsdottir', '+1-724-861-6832', '1-828-328-5864', '6537 Yoshiko Mountain Apt. 428', '231 Dicki Fork', 'napoleon22@yahoo.com', NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, '2017-12-02 07:59:56', '2017-12-02 07:59:56'),
(56, 8, 'Prof. Abe Welch', '+1.440.277.0238', '+1.215.513.2632', '5940 Cassin River Suite 681', '877 Bechtelar Port', 'fpadberg@yahoo.com', NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, '2017-12-02 07:59:56', '2017-12-02 07:59:56'),
(57, 8, 'Prof. Haleigh Erdman', '(390) 329-5191 x66497', '(471) 913-1742', '60636 Reggie Roads', '428 Deanna Via Apt. 334', 'bkuhn@hotmail.com', NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, '2017-12-02 07:59:56', '2017-12-02 07:59:56'),
(58, 8, 'Ottilie Donnelly', '948.569.9639 x71664', '(757) 803-2799', '589 Walter Spur', '11358 Schuster Fords Apt. 582', 'davin.jones@hotmail.com', NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, '2017-12-02 07:59:56', '2017-12-02 07:59:56'),
(59, 8, 'Isidro Frami', '324-772-9327 x6755', '923.876.7642 x634', '47430 Brendan Highway', '3564 Leuschke Inlet', 'njohnston@kozey.com', NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, '2017-12-02 07:59:56', '2017-12-02 07:59:56'),
(60, 8, 'Mr. Don Boyle Sr.', '424-306-0172', '332.881.4431 x43158', '629 Schulist Turnpike Apt. 168', '909 Gottlieb Pass', 'hickle.jaren@schimmel.info', NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, '2017-12-02 07:59:56', '2017-12-02 07:59:56'),
(61, 8, 'Raphael Huel', '1-825-563-3378 x6389', '1-231-917-0447 x2225', '7610 Maegan Mountain Apt. 065', '961 Kuhn Roads Suite 961', 'eva98@yahoo.com', NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, '2017-12-02 07:59:56', '2017-12-02 07:59:56'),
(62, 8, 'Berta Gislason', '382.428.9622', '(841) 308-8475 x52070', '3662 Robyn Fork Suite 489', '415 Johnathon Mount', 'okuneva.bernard@reynolds.com', NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, '2017-12-02 07:59:56', '2017-12-02 07:59:56'),
(63, 8, 'Carlos Waters', '969.988.9422', '(542) 944-0543 x02037', '912 Waters Trafficway', '40724 Don Extensions', 'pfeffer.axel@hotmail.com', NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, '2017-12-02 07:59:57', '2017-12-02 07:59:57'),
(64, 9, 'Mr. Norris Nitzsche MD', '+16484248009', '+1.834.895.9900', '80145 Shane Point', '959 Mozell Haven Suite 781', 'heller.jakayla@yahoo.com', NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, '2017-12-02 07:59:57', '2017-12-02 07:59:57'),
(65, 9, 'Eloy Boyle', '227-941-2803 x6019', '1-730-240-8557', '4445 Waters Summit Apt. 134', '61624 D\'Amore Cape Apt. 275', 'marquardt.jovanny@bins.biz', NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, '2017-12-02 07:59:57', '2017-12-02 07:59:57'),
(66, 9, 'Andrew Goodwin', '+1-997-503-7581', '(560) 815-2866 x398', '5832 Ismael Turnpike', '79821 Kaden Forge Suite 369', 'cmacejkovic@reinger.com', NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, '2017-12-02 07:59:57', '2017-12-02 07:59:57'),
(67, 9, 'Dr. Emmitt Adams MD', '851.513.4300', '(868) 343-0256 x14405', '8713 Bradly Flat', '949 Connelly Islands', 'akreiger@hotmail.com', NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, '2017-12-02 07:59:57', '2017-12-02 07:59:57'),
(68, 9, 'Jett Koepp', '(314) 710-0256 x3623', '+1 (209) 598-1925', '3247 Cristobal Dam', '2481 Renner Place Suite 940', 'sunny.tillman@lind.biz', NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, '2017-12-02 07:59:57', '2017-12-02 07:59:57'),
(69, 9, 'Prof. Gregg Gulgowski DDS', '+1 (680) 700-9143', '1-883-728-7796', '267 Miracle Plaza', '200 Champlin Squares Suite 089', 'jonas.hartmann@dibbert.org', NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, '2017-12-02 07:59:57', '2017-12-02 07:59:57'),
(70, 9, 'Jason Hansen', '358-597-1589 x0925', '1-948-881-7762', '177 Estrella Run Apt. 346', '63636 Blick Pine', 'candelario11@hotmail.com', NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, '2017-12-02 07:59:57', '2017-12-02 07:59:57'),
(71, 9, 'Darion Ernser', '352-535-9902 x8527', '852.919.6075 x85381', '921 Lorine Road Apt. 708', '12391 Monahan Center Apt. 105', 'vonrueden.genevieve@yahoo.com', NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, '2017-12-02 07:59:57', '2017-12-02 07:59:57'),
(72, 9, 'Valentine Sporer', '+1 (326) 605-4452', '470.468.8191', '224 Lubowitz Glens Suite 070', '27557 Claude Views Apt. 464', 'cyril05@wisozk.com', NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, '2017-12-02 07:59:57', '2017-12-02 07:59:57'),
(73, 9, 'Mr. Jarrell Waters MD', '907-275-9326', '1-324-547-0003 x98900', '2765 Kari Inlet Suite 745', '9858 Wisoky Mount', 'melba24@goyette.info', NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, '2017-12-02 07:59:57', '2017-12-02 07:59:57'),
(74, 10, 'Prof. Camryn Pacocha', '1-767-276-9797', '(271) 463-1018 x1910', '89590 Batz Lodge', '7305 Cecilia Mountain Apt. 128', 'rath.chloe@oberbrunner.net', NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, '2017-12-02 07:59:57', '2017-12-02 07:59:57'),
(75, 10, 'Prof. Kiel Ruecker I', '(571) 888-2988 x96181', '740.695.0931', '558 Hackett Common', '170 Kilback Pines', 'elliot07@lang.org', NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, '2017-12-02 07:59:57', '2017-12-02 07:59:57'),
(76, 10, 'Ms. Janice Muller III', '(513) 972-6131 x21041', '485-593-0222 x341', '8650 Theodore Loaf Apt. 760', '99690 Baumbach Light Suite 596', 'stroman.diamond@yahoo.com', NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, '2017-12-02 07:59:57', '2017-12-02 07:59:57'),
(77, 10, 'Prof. Joshuah Shanahan', '1-764-222-0924 x588', '552-651-8001', '7107 Alayna Terrace Suite 988', '6359 Schinner Manor', 'monty11@wilderman.com', NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, '2017-12-02 07:59:57', '2017-12-02 07:59:57'),
(78, 10, 'Allan Beer PhD', '969.440.1225 x072', '628.217.6208 x883', '394 O\'Conner Garden', '93518 Kendall Pass Suite 954', 'bell61@hotmail.com', NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, '2017-12-02 07:59:57', '2017-12-02 07:59:57'),
(79, 10, 'Alvena Ankunding', '(516) 686-9260 x36809', '879.278.0417', '81117 Rex Spur', '8474 Maggio Forge', 'hoeger.mikayla@gmail.com', NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, '2017-12-02 07:59:58', '2017-12-02 07:59:58'),
(80, 10, 'Ms. Otilia Block PhD', '(710) 252-2294 x869', '(683) 244-1570', '373 Kristopher Wall Suite 834', '9968 Jadyn Curve', 'albina45@hotmail.com', NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, '2017-12-02 07:59:58', '2017-12-02 07:59:58'),
(81, 10, 'Mr. Dudley Thompson', '+1-614-662-5153', '923.245.6882 x84141', '7212 Greenholt Tunnel', '972 Bernadette Walk Apt. 346', 'anderson.ashtyn@kulas.com', NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, '2017-12-02 07:59:58', '2017-12-02 07:59:58'),
(82, 10, 'Myles Lakin', '1-534-204-6379 x7469', '626-293-0168', '902 Queen Village Suite 847', '2832 Jefferey Highway Apt. 352', 'schmeler.felicity@pollich.com', NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, '2017-12-02 07:59:58', '2017-12-02 07:59:58'),
(83, 10, 'Cordelia Kuhic', '631.789.6748', '(931) 395-9450 x0952', '620 VonRueden Rue Suite 254', '11290 Stehr Mountains', 'gkohler@mante.com', NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, '2017-12-02 07:59:58', '2017-12-02 07:59:58'),
(84, 11, 'Angelita Thompson', '1-584-769-0808 x610', '1-771-516-8739 x9640', '81719 Patsy Square Suite 201', '71559 Jaycee Villages Apt. 389', 'tommie.johns@yahoo.com', NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, '2017-12-02 07:59:58', '2017-12-02 07:59:58'),
(85, 11, 'Maryam Feil III', '+1-794-891-9222', '269-451-4209', '80741 Guadalupe Camp', '46173 Towne Roads', 'jennyfer81@yahoo.com', NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, '2017-12-02 07:59:58', '2017-12-02 07:59:58'),
(86, 11, 'Drake Kuvalis', '+1 (212) 614-1749', '(604) 717-9798', '82770 Kathryne Harbors', '691 McKenzie Mews Apt. 305', 'felton70@armstrong.com', NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, '2017-12-02 07:59:58', '2017-12-02 07:59:58'),
(87, 11, 'Leann Cartwright', '384-472-7323', '+1 (562) 408-2988', '28699 Goyette Trafficway', '90653 Vada Square Apt. 766', 'gia.hudson@yahoo.com', NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, '2017-12-02 07:59:58', '2017-12-02 07:59:58'),
(88, 11, 'Claudine Stroman', '(718) 407-9436 x9369', '(858) 436-9555 x6360', '49814 Mayert Dam', '772 Hoppe Mountains Apt. 921', 'fconn@yahoo.com', NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, '2017-12-02 07:59:58', '2017-12-02 07:59:58'),
(89, 11, 'Arielle Langosh', '276.910.6580 x25914', '696-384-7289 x67235', '213 Schamberger Meadows', '2599 Valentina Forge Suite 685', 'nstanton@gmail.com', NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, '2017-12-02 07:59:58', '2017-12-02 07:59:58'),
(90, 11, 'Ruben Nicolas', '429-419-3456', '527.881.7808 x73998', '790 Collins Landing Apt. 673', '88881 Bruen Summit', 'lavon68@mitchell.info', NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, '2017-12-02 07:59:58', '2017-12-02 07:59:58'),
(91, 11, 'Makenna Champlin', '265.489.8604 x3681', '949-786-4383 x40171', '90619 Klocko Mountains Suite 279', '424 Kling Groves Apt. 196', 'norval.fahey@gmail.com', NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, '2017-12-02 07:59:58', '2017-12-02 07:59:58'),
(92, 11, 'Myrtle Schuppe', '(304) 943-2644', '+1-381-828-2632', '57717 Maryam Trail Suite 595', '16716 Ernser Park Suite 401', 'mueller.tyler@gmail.com', NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, '2017-12-02 07:59:58', '2017-12-02 07:59:58'),
(93, 11, 'Tommie Gottlieb', '409-864-0846', '+18343023556', '6214 Leanna Turnpike Suite 091', '44076 Noel Underpass', 'estark@yahoo.com', NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, '2017-12-02 07:59:58', '2017-12-02 07:59:58'),
(94, 12, 'Miss Joanny Stokes', '202.993.3021 x309', '403.536.3021 x3289', '20973 Katelyn Points Apt. 997', '8627 Ryleigh Knoll Suite 616', 'ecollier@yahoo.com', NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, '2017-12-02 07:59:58', '2017-12-02 07:59:58'),
(95, 12, 'Maybell Hammes', '+1.638.707.0796', '+1 (775) 361-0728', '56834 Lilyan Run', '9913 Ullrich Manor Apt. 511', 'makayla02@gmail.com', NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, '2017-12-02 07:59:58', '2017-12-02 07:59:58'),
(96, 12, 'Sylvia Ruecker', '509-869-6160', '(393) 813-3500 x7700', '767 Schaefer Bridge', '465 Xavier Mews', 'parker.alanis@glover.org', NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, '2017-12-02 07:59:58', '2017-12-02 07:59:58'),
(97, 12, 'Dr. Friedrich Gerlach', '(850) 675-9242', '235.946.4003 x2616', '6536 Brionna Pines Suite 444', '455 Schmitt Tunnel', 'jerrod54@greenfelder.info', NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, '2017-12-02 07:59:58', '2017-12-02 07:59:58'),
(98, 12, 'Mrs. Jennifer Hilpert', '(709) 707-4750 x20253', '(508) 772-9133 x78514', '20233 Donato Alley Suite 762', '11821 Jettie Falls', 'jonas.berge@hotmail.com', NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, '2017-12-02 07:59:58', '2017-12-02 07:59:58'),
(99, 12, 'Prof. Asia Thompson', '(538) 624-0958', '+1 (452) 963-7046', '2366 Reichert Rest', '69162 Cara Trail', 'hayes.margarette@hotmail.com', NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, '2017-12-02 07:59:58', '2017-12-02 07:59:58'),
(100, 12, 'Pierce Graham', '(849) 276-7263', '580.463.7056 x36557', '34283 Kobe Avenue Suite 554', '3218 D\'Amore Hill', 'klein.emilia@mckenzie.biz', NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, '2017-12-02 07:59:58', '2017-12-02 07:59:58'),
(101, 12, 'Adeline Feeney', '371-742-0845 x899', '+1.758.922.2246', '532 Ruecker Underpass', '189 Alexandria Creek Suite 110', 'gadams@kulas.info', NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, '2017-12-02 07:59:58', '2017-12-02 07:59:58'),
(102, 12, 'Dr. Tyrel Davis', '(326) 891-7109 x4880', '616-834-5846 x19997', '7124 Andrew Coves', '2307 Hunter Springs Apt. 057', 'gmarquardt@gmail.com', NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, '2017-12-02 07:59:58', '2017-12-02 07:59:58'),
(103, 12, 'Prof. Frankie Carter', '(447) 929-2384', '768-530-0687 x6969', '761 Luz Mountain', '900 Frances Trail Apt. 614', 'nia.stamm@yahoo.com', NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, '2017-12-02 07:59:59', '2017-12-02 07:59:59'),
(104, 13, 'Vilma Johns', '446-291-6774', '771.226.2143', '9675 Rodger Mall', '912 Maritza Grove Suite 674', 'mprice@denesik.com', NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, '2017-12-02 07:59:59', '2017-12-02 07:59:59'),
(105, 13, 'Clarabelle Roob', '450-919-8424 x75297', '832-249-1914 x9362', '4470 Haag Squares Suite 764', '423 Gorczany Trace Apt. 024', 'will.craig@powlowski.com', NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, '2017-12-02 07:59:59', '2017-12-02 07:59:59'),
(106, 13, 'Jarrod Wiza', '+1 (724) 993-5743', '+13743156182', '222 Christiansen Viaduct', '565 Brant Club Apt. 007', 'uyundt@ortiz.info', NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, '2017-12-02 07:59:59', '2017-12-02 07:59:59'),
(107, 13, 'Prof. Brendan Goldner', '519-990-5877', '(963) 250-4773 x8378', '251 Daniel Junction Apt. 227', '73249 Ebony Squares', 'moore.jedidiah@sporer.info', NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, '2017-12-02 07:59:59', '2017-12-02 07:59:59'),
(108, 13, 'Ava Pfannerstill III', '979-239-5887', '802-824-2792 x36746', '9106 Jeff Ports', '6946 Magnolia Locks Apt. 161', 'zauer@rodriguez.com', NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, '2017-12-02 07:59:59', '2017-12-02 07:59:59'),
(109, 13, 'Mr. Cary Treutel', '697-935-9816', '+14367563228', '8867 Lindgren Ranch', '428 Gunnar Meadows', 'dfritsch@yahoo.com', NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, '2017-12-02 07:59:59', '2017-12-02 07:59:59'),
(110, 13, 'Miss Samara Johnson', '804-553-7355 x0441', '437-526-1056', '31851 Alyson Hollow', '7086 Bernard Underpass Apt. 582', 'hdietrich@murray.com', NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, '2017-12-02 07:59:59', '2017-12-02 07:59:59'),
(111, 13, 'Dr. Dane Fadel III', '335.437.1784 x740', '+1 (460) 810-2111', '9021 Heber Islands Apt. 853', '935 Cecelia Via', 'brenda.kunde@hotmail.com', NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, '2017-12-02 07:59:59', '2017-12-02 07:59:59'),
(112, 13, 'Faustino Weissnat', '1-202-738-6289 x1982', '+1-706-381-0993', '32991 Stiedemann Streets Apt. 088', '2288 Demond Run', 'maye.bode@hahn.org', NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, '2017-12-02 07:59:59', '2017-12-02 07:59:59'),
(113, 13, 'Ms. Cortney Kemmer', '1-473-508-7824 x732', '+1.891.618.3493', '45949 Bosco Loaf Suite 672', '3142 Martine Shores Apt. 632', 'bella.muller@doyle.org', NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, '2017-12-02 07:59:59', '2017-12-02 07:59:59'),
(114, 14, 'Marcelina Cummerata', '(730) 761-7266', '(446) 265-9235', '368 Bayer Underpass Apt. 748', '47243 Wilkinson Freeway Apt. 126', 'ivah.mosciski@gmail.com', NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, '2017-12-02 07:59:59', '2017-12-02 07:59:59'),
(115, 14, 'Dr. Loren Erdman', '685-312-9926 x7539', '763.572.0388', '65746 Casey Ville', '2138 Cremin Terrace Apt. 060', 'annette.walsh@hotmail.com', NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, '2017-12-02 07:59:59', '2017-12-02 07:59:59'),
(116, 14, 'Markus Wintheiser IV', '321-663-0792', '+1-426-747-1338', '7557 Botsford Knoll', '52001 Conroy Centers', 'rhilpert@hotmail.com', NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, '2017-12-02 07:59:59', '2017-12-02 07:59:59'),
(117, 14, 'Elenor Wolff', '1-442-546-2013 x216', '1-715-249-0884', '98538 Mable Mountain Suite 034', '5637 Sigrid Manors Apt. 143', 'domingo04@hotmail.com', NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, '2017-12-02 07:59:59', '2017-12-02 07:59:59'),
(118, 14, 'Marshall Schamberger IV', '938-368-7983 x1768', '781.285.2186', '527 Jermaine Plains Apt. 373', '9478 Tillman Mews Apt. 217', 'smoore@erdman.com', NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, '2017-12-02 07:59:59', '2017-12-02 07:59:59'),
(119, 14, 'Rachel Bahringer', '770.743.9548', '+1-567-708-4120', '5313 Zemlak Wells', '8546 Jessyca Place', 'kcrist@gmail.com', NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, '2017-12-02 07:59:59', '2017-12-02 07:59:59'),
(120, 14, 'Ms. Bettye Hessel IV', '570.739.3262', '(538) 794-1612 x81500', '699 Wunsch Walks Apt. 686', '728 Turcotte Burg Suite 923', 'jwaelchi@zemlak.info', NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, '2017-12-02 07:59:59', '2017-12-02 07:59:59'),
(121, 14, 'Mr. Micheal Gutkowski', '798-935-4175', '912-559-0441 x295', '62973 Missouri Mill', '6456 Braun Harbors', 'senger.ceasar@purdy.org', NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, '2017-12-02 07:59:59', '2017-12-02 07:59:59'),
(122, 14, 'Adolphus Kshlerin', '+1 (946) 384-6911', '613-304-5654 x496', '820 Bartell Corners Suite 079', '56260 King Track', 'miles73@yahoo.com', NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, '2017-12-02 07:59:59', '2017-12-02 07:59:59'),
(123, 14, 'Wilma Mills', '256.832.3483 x056', '(679) 948-0144 x66292', '56249 Wilkinson Course Apt. 237', '35338 Dejon Turnpike', 'ethan25@yahoo.com', NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, '2017-12-02 07:59:59', '2017-12-02 07:59:59'),
(124, 15, 'Mr. Ibrahim Carroll', '(590) 525-4928 x978', '(793) 520-6931 x6919', '416 Vicente Bypass', '8951 Julie Manor Apt. 255', 'schinner.narciso@hotmail.com', NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, '2017-12-02 07:59:59', '2017-12-02 07:59:59'),
(125, 15, 'Eleanora Doyle DDS', '(492) 921-2529 x91984', '+1 (238) 705-0877', '67761 Lawrence Cliff Suite 310', '24849 Smitham Neck', 'imelda.oberbrunner@rippin.info', NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, '2017-12-02 07:59:59', '2017-12-02 07:59:59'),
(126, 15, 'Ryan Carroll', '908-791-3744 x09731', '392.626.5678', '50304 Goodwin Squares Apt. 899', '4709 Chanel Meadows Apt. 124', 'glover.ola@gmail.com', NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, '2017-12-02 07:59:59', '2017-12-02 07:59:59'),
(127, 15, 'Candice McClure IV', '631-807-0017', '853.588.4090 x22105', '782 Mraz View Suite 847', '8782 Wuckert Square', 'milford.torp@treutel.info', NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, '2017-12-02 08:00:00', '2017-12-02 08:00:00'),
(128, 15, 'Anderson Huels Jr.', '1-295-464-1153 x4807', '(942) 899-5202 x46052', '9241 Maxime Junction', '925 Brant Club Apt. 327', 'dstark@kessler.com', NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, '2017-12-02 08:00:00', '2017-12-02 08:00:00'),
(129, 15, 'Colin Sanford', '(643) 566-2713 x838', '1-569-968-6986 x59898', '117 Trey Road Suite 655', '218 Beaulah Drive Suite 836', 'konopelski.dejah@yahoo.com', NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, '2017-12-02 08:00:00', '2017-12-02 08:00:00'),
(130, 15, 'Enrique Glover', '985.717.9109 x96098', '508.851.8673 x4794', '4341 Henriette Place', '7727 Vandervort Ville Suite 178', 'joana80@botsford.com', NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, '2017-12-02 08:00:00', '2017-12-02 08:00:00'),
(131, 15, 'Aliya Lueilwitz', '565.354.6037', '585.717.0564 x733', '8710 Kilback Highway Suite 450', '3899 Leopold Isle Apt. 956', 'vdavis@kohler.info', NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, '2017-12-02 08:00:00', '2017-12-02 08:00:00'),
(132, 15, 'Prof. Drake Osinski PhD', '(987) 600-1823 x9846', '(771) 939-5577 x6386', '479 Michel Freeway', '3973 Murazik Course', 'rherzog@yahoo.com', NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, '2017-12-02 08:00:00', '2017-12-02 08:00:00'),
(133, 15, 'Stefan Schaefer', '1-548-917-3101', '1-849-801-6161', '9211 Schuster Turnpike', '74574 Thea Pines', 'sarina21@gmail.com', NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, '2017-12-02 08:00:00', '2017-12-02 08:00:00'),
(134, 16, 'Lacy Champlin', '265.301.3046 x5722', '359-903-1313', '1957 Romaguera Manors Apt. 608', '6438 Mertz Road', 'marks.willard@hotmail.com', NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, '2017-12-02 08:00:00', '2017-12-02 08:00:00'),
(135, 16, 'Monte Fay', '(576) 876-5440', '1-789-633-2332', '368 Xavier Shore', '8354 Green Loaf', 'carter.fisher@jenkins.net', NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, '2017-12-02 08:00:00', '2017-12-02 08:00:00'),
(136, 16, 'Marley Nicolas DDS', '309.396.2070', '1-918-261-4725', '5152 Frieda Mill Apt. 014', '2298 Haylee Place Apt. 026', 'jcremin@ernser.com', NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, '2017-12-02 08:00:00', '2017-12-02 08:00:00'),
(137, 16, 'Guillermo Stark', '427.217.6674 x65391', '+19015064513', '3232 Tillman Mountain Apt. 394', '53827 Zoie Ports Suite 308', 'oma34@sipes.com', NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, '2017-12-02 08:00:00', '2017-12-02 08:00:00'),
(138, 16, 'Dr. Lorenza Gaylord', '+1-956-217-9619', '+15927509183', '9976 Asa Centers Suite 978', '8090 River Burg', 'kaden.morar@hotmail.com', NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, '2017-12-02 08:00:00', '2017-12-02 08:00:00'),
(139, 16, 'Alvera Jacobi', '1-896-784-9443', '1-312-238-5820', '759 Ferry Harbors Apt. 011', '586 Stracke Fall Suite 381', 'cschmidt@senger.net', NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, '2017-12-02 08:00:00', '2017-12-02 08:00:00'),
(140, 16, 'Guiseppe Pagac', '926-209-5204 x51111', '459-355-6473 x672', '368 Shemar Springs', '17360 White Mountain Apt. 789', 'hazel.schulist@nader.com', NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, '2017-12-02 08:00:00', '2017-12-02 08:00:00'),
(141, 16, 'Kirsten Cassin', '840.882.3440 x6702', '(382) 542-0295', '31379 Liam Stream', '88885 Franz Common Suite 893', 'nrunte@gmail.com', NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, '2017-12-02 08:00:00', '2017-12-02 08:00:00'),
(142, 16, 'Ms. Christa Sauer', '851-462-3668 x196', '1-521-591-2829', '978 Sasha Extension Suite 626', '9730 Keebler Mountain Suite 276', 'brianne.kautzer@okuneva.com', NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, '2017-12-02 08:00:00', '2017-12-02 08:00:00'),
(143, 16, 'Ludwig Weissnat', '+16964834035', '+1-563-969-6136', '74339 Heaney Terrace', '39967 Saul Ridge', 'fmonahan@tremblay.biz', NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, '2017-12-02 08:00:00', '2017-12-02 08:00:00'),
(144, 17, 'Michael Rowe', '(370) 264-4594 x953', '683-305-3281 x64039', '67303 Heathcote Union Apt. 328', '31702 Sedrick Skyway', 'tomasa.dietrich@hotmail.com', NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, '2017-12-02 08:00:00', '2017-12-02 08:00:00'),
(145, 17, 'Shanon McKenzie', '(490) 555-6477 x659', '(392) 841-0864 x628', '7189 Heathcote Drive', '9795 Kertzmann Mountain Apt. 505', 'emanuel.nienow@wunsch.com', NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, '2017-12-02 08:00:01', '2017-12-02 08:00:01'),
(146, 17, 'Prof. Santina Dach', '+1.784.833.4561', '(359) 929-2295', '90373 Gretchen Wells Apt. 323', '5455 Albert Forest Apt. 591', 'peyton.jast@yahoo.com', NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, '2017-12-02 08:00:01', '2017-12-02 08:00:01'),
(147, 17, 'Miss Alda Rohan', '(439) 372-5059 x633', '(735) 445-8718 x2823', '8357 Barbara Grove', '9557 Gutmann Common Suite 592', 'rempel.davion@hyatt.com', NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, '2017-12-02 08:00:01', '2017-12-02 08:00:01'),
(148, 17, 'Woodrow Funk', '+1.263.335.7188', '(342) 685-0414 x278', '50385 Frami Unions', '7663 Schimmel Vista', 'rosanna.monahan@koch.com', NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, '2017-12-02 08:00:01', '2017-12-02 08:00:01'),
(149, 17, 'Miss Chloe Brown', '1-889-915-7326', '951.309.0738 x714', '45316 Nolan Divide', '556 Schmidt Corner', 'dicki.rosemary@gmail.com', NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, '2017-12-02 08:00:01', '2017-12-02 08:00:01'),
(150, 17, 'Rollin Champlin', '1-694-678-5000 x5026', '243.635.0708 x8748', '2964 Elroy Gardens', '89021 Tara Junctions Apt. 539', 'hammes.shaina@zieme.biz', NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, '2017-12-02 08:00:01', '2017-12-02 08:00:01'),
(151, 17, 'Elta Kunze', '679.735.5035', '1-262-941-8695 x861', '5784 Finn Dam', '3226 Ward Greens Suite 952', 'freida71@swaniawski.org', NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, '2017-12-02 08:00:01', '2017-12-02 08:00:01'),
(152, 17, 'Sienna Hessel Jr.', '1-449-333-7853', '862.385.2043 x102', '41177 Auer Greens Suite 089', '971 Stanton Meadows Suite 322', 'trenton.mosciski@gmail.com', NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, '2017-12-02 08:00:01', '2017-12-02 08:00:01'),
(153, 17, 'Derick Jacobs', '+1.284.859.9140', '(947) 867-6710 x3986', '6195 O\'Hara Light', '5071 Mckenzie Brook', 'fidel95@bergnaum.com', NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, '2017-12-02 08:00:01', '2017-12-02 08:00:01'),
(154, 18, 'Oswaldo Effertz', '491-298-9962', '(782) 835-4790 x61289', '1290 Halvorson Common', '76402 Jerod Track Suite 861', 'rubie.denesik@bergstrom.org', NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, '2017-12-02 08:00:01', '2017-12-02 08:00:01'),
(155, 18, 'Leone Rogahn Jr.', '(332) 279-6064 x0879', '+1-206-344-6791', '62820 Petra Loaf', '420 Rodriguez Burgs Suite 616', 'darrell11@gmail.com', NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, '2017-12-02 08:00:01', '2017-12-02 08:00:01'),
(156, 18, 'Miles Kunze', '(621) 931-7341 x995', '387.639.8887', '853 Billy Shores', '31835 Romaguera Harbor', 'augusta92@rutherford.biz', NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, '2017-12-02 08:00:01', '2017-12-02 08:00:01'),
(157, 18, 'Teagan Berge', '1-962-209-2488 x132', '(307) 959-5499', '89810 Rhoda Groves', '638 Crystel Keys', 'qschumm@gmail.com', NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, '2017-12-02 08:00:01', '2017-12-02 08:00:01'),
(158, 18, 'Jordi Weissnat', '517.707.9746 x6176', '+1 (694) 382-7853', '5480 Pierce Tunnel', '328 Thompson Walks', 'pvon@gmail.com', NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, '2017-12-02 08:00:01', '2017-12-02 08:00:01'),
(159, 18, 'Jaida Kovacek', '+1-587-276-3877', '+12546478203', '23202 Keeling Mountain Apt. 283', '1843 Maggio Divide Apt. 664', 'oschroeder@von.net', NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, '2017-12-02 08:00:01', '2017-12-02 08:00:01'),
(160, 18, 'Aimee Hagenes', '1-736-542-6997', '360.775.9760 x12866', '4555 Morissette Mews Suite 494', '79181 Cassandre Park Suite 022', 'shakira24@rice.com', NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, '2017-12-02 08:00:01', '2017-12-02 08:00:01'),
(161, 18, 'Gail Sipes', '(823) 690-0574', '+1-527-475-8310', '54284 Bartell Gateway', '1057 Barton Trafficway Apt. 294', 'pturner@kris.com', NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, '2017-12-02 08:00:01', '2017-12-02 08:00:01'),
(162, 18, 'Miss Winona Heathcote DDS', '(870) 677-2818', '(883) 555-5401 x798', '637 Alysson River Suite 531', '448 Braeden Hill', 'tprice@gmail.com', NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, '2017-12-02 08:00:01', '2017-12-02 08:00:01'),
(163, 18, 'Derek Stokes', '894-979-8981 x648', '(241) 452-7844 x627', '51885 Tabitha Fort', '6754 Bins Overpass Apt. 103', 'alexie40@hotmail.com', NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, '2017-12-02 08:00:01', '2017-12-02 08:00:01'),
(164, 19, 'Adalberto Spinka III', '1-939-985-9509 x421', '1-769-337-7105 x10723', '9362 Chelsey Loaf Apt. 155', '7597 Baylee Neck', 'zulauf.destinee@lubowitz.com', NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, '2017-12-02 08:00:02', '2017-12-02 08:00:02'),
(165, 19, 'Dr. Felton Ritchie', '797-972-1930 x922', '898.889.1592', '2227 Hackett Crest', '8015 Lowe Fords', 'delmer86@keebler.net', NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, '2017-12-02 08:00:02', '2017-12-02 08:00:02'),
(166, 19, 'Prof. Meda Lakin', '1-405-240-0186 x629', '+1-802-914-6023', '4691 Carmel Throughway', '16259 Kreiger Branch', 'kulas.ariel@kessler.com', NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, '2017-12-02 08:00:02', '2017-12-02 08:00:02'),
(167, 19, 'Camila Huels', '(885) 960-6749 x948', '853-803-0042 x98167', '6622 Stracke Pine', '459 Rogahn Junction', 'nelle68@yahoo.com', NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, '2017-12-02 08:00:02', '2017-12-02 08:00:02'),
(168, 19, 'Martina Gerlach Jr.', '(683) 817-1278', '508-603-9371', '18567 Mueller Ports', '8094 Deckow Way', 'hilpert.arielle@gmail.com', NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, '2017-12-02 08:00:02', '2017-12-02 08:00:02'),
(169, 19, 'Jackson Howe', '(201) 781-4401 x6313', '+1.407.594.3371', '81550 Morissette Keys', '46316 Myrl Terrace Suite 192', 'nicholaus32@heidenreich.org', NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, '2017-12-02 08:00:02', '2017-12-02 08:00:02'),
(170, 19, 'Isac Thiel', '+1-584-481-6344', '707.843.2435', '46343 Volkman Park', '9391 Ramiro Rue', 'alysson.cummings@runte.info', NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, '2017-12-02 08:00:02', '2017-12-02 08:00:02'),
(171, 19, 'Maeve Hamill PhD', '+1-460-677-7906', '709.755.7706 x00960', '124 Baumbach Extensions', '412 Carter Alley', 'olen.tillman@gmail.com', NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, '2017-12-02 08:00:02', '2017-12-02 08:00:02'),
(172, 19, 'Dr. Rodrigo Ankunding', '1-323-253-8738 x03408', '(406) 950-5486 x0594', '959 Sunny Estate Suite 997', '89227 Catharine Hollow Apt. 216', 'alexis.schiller@gmail.com', NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, '2017-12-02 08:00:02', '2017-12-02 08:00:02'),
(173, 19, 'Prof. Kameron Hilpert II', '613-471-1289 x22080', '(639) 949-5994 x857', '2816 Keeling Cliff Suite 761', '48610 Malvina Ville', 'lockman.janessa@bradtke.com', NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, '2017-12-02 08:00:02', '2017-12-02 08:00:02'),
(174, 20, 'Oran Steuber', '(926) 914-5361 x789', '(245) 841-0478 x21821', '39064 Arnulfo Forest Apt. 697', '388 Marilyne Row Suite 338', 'vincenzo.nienow@kozey.com', NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, '2017-12-02 08:00:02', '2017-12-02 08:00:02'),
(175, 20, 'Tillman Muller', '394-519-7548 x8118', '+1 (903) 619-5523', '322 Marquardt Radial Suite 843', '7392 Heathcote Glen Suite 920', 'ohirthe@schamberger.biz', NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, '2017-12-02 08:00:02', '2017-12-02 08:00:02'),
(176, 20, 'Beaulah Dietrich', '(303) 372-4719 x49698', '(751) 893-2508 x030', '5376 Rodriguez Summit', '3110 Rolando Ville Apt. 112', 'wisoky.blaise@schinner.com', NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, '2017-12-02 08:00:02', '2017-12-02 08:00:02'),
(177, 20, 'Cyril Anderson', '(409) 310-1675 x373', '469.372.5936 x04244', '702 Cartwright Shores Suite 278', '49538 Favian Point', 'laurence14@reinger.org', NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, '2017-12-02 08:00:02', '2017-12-02 08:00:02'),
(178, 20, 'Camron Nitzsche PhD', '805-527-0966 x131', '(515) 470-9409 x964', '1052 Halvorson Trail', '870 Gerardo Mission Apt. 015', 'ohickle@kilback.info', NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, '2017-12-02 08:00:02', '2017-12-02 08:00:02'),
(179, 20, 'Mariam Ledner I', '+1.539.232.5332', '1-284-393-7426 x780', '906 Alana Neck Apt. 176', '23145 Blanda Corners Suite 869', 'lyda.hudson@yahoo.com', NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, '2017-12-02 08:00:02', '2017-12-02 08:00:02'),
(180, 20, 'Mrs. Corrine Welch', '+1-527-561-1710', '+1.939.276.9649', '67479 Therese Stravenue Apt. 740', '14627 Fay Pines', 'dickinson.armand@yahoo.com', NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, '2017-12-02 08:00:02', '2017-12-02 08:00:02'),
(181, 20, 'Adella Armstrong Sr.', '(737) 781-6401 x7836', '+1.448.971.2017', '41515 Wilson Coves', '599 Albin Roads', 'eveline87@hotmail.com', NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, '2017-12-02 08:00:02', '2017-12-02 08:00:02'),
(182, 20, 'Mr. Darron Murphy IV', '310-943-3912', '+12823723332', '7610 Lucinda Views', '7015 Cordia Center Apt. 010', 'bahringer.magdalen@gmail.com', NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, '2017-12-02 08:00:02', '2017-12-02 08:00:02'),
(183, 20, 'Bertha Bosco II', '1-880-406-3575 x84126', '1-462-983-4428 x734', '87946 Earlene Oval Suite 685', '216 Christiansen Pines', 'ncruickshank@gmail.com', NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, '2017-12-02 08:00:02', '2017-12-02 08:00:02'),
(184, 21, 'Conor Turner', '1-317-943-4955', '+1-915-307-0803', '4465 Hallie Branch Suite 325', '59728 Willms Springs Apt. 429', 'stanton.claud@gmail.com', NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, '2017-12-02 08:00:03', '2017-12-02 08:00:03'),
(185, 21, 'Mrs. Nyasia Harvey V', '1-328-398-9198 x350', '(218) 588-4031', '610 Jeramy Mountain', '516 Carroll Meadow Apt. 738', 'gutmann.abner@corwin.com', NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, '2017-12-02 08:00:03', '2017-12-02 08:00:03'),
(186, 21, 'Russell Lind', '620-758-7783 x77586', '+1.881.875.7900', '9286 Forest Rapids', '1361 Dare Hollow Suite 335', 'mohr.laura@yahoo.com', NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, '2017-12-02 08:00:03', '2017-12-02 08:00:03'),
(187, 21, 'Leda Schamberger', '473.215.4592 x32589', '(635) 864-0710', '6065 O\'Connell Brook', '7177 Adela Mills Suite 820', 'fleta.reilly@gmail.com', NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, '2017-12-02 08:00:03', '2017-12-02 08:00:03'),
(188, 21, 'Aron Metz', '+1.995.318.5194', '(372) 246-3543 x53762', '2833 Heber Plain Apt. 448', '860 Theron Courts Suite 863', 'emil45@gmail.com', NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, '2017-12-02 08:00:03', '2017-12-02 08:00:03'),
(189, 21, 'Dr. Cullen Wiegand', '(473) 210-3176', '1-426-878-5148', '9633 Donnelly Ridge Apt. 998', '801 Shanahan Trail Suite 809', 'afton.schuppe@flatley.com', NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, '2017-12-02 08:00:03', '2017-12-02 08:00:03'),
(190, 21, 'Dr. Elouise Weimann Sr.', '650.204.3960 x28124', '(503) 230-4397 x7240', '39584 Cristina Knolls Apt. 561', '626 Price Plains Suite 364', 'larson.scot@gmail.com', NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, '2017-12-02 08:00:03', '2017-12-02 08:00:03'),
(191, 21, 'Gordon Brakus', '1-745-543-7148', '(493) 520-6174', '294 Annette Park', '900 Bartell Green Suite 533', 'tromp.pink@greenfelder.com', NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, '2017-12-02 08:00:03', '2017-12-02 08:00:03'),
(192, 21, 'Noemy Fay', '+1.786.838.2231', '1-450-482-3871', '95589 Pfannerstill Forest Apt. 977', '348 McCullough Land', 'lisette.gibson@gmail.com', NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, '2017-12-02 08:00:03', '2017-12-02 08:00:03'),
(193, 21, 'Karley DuBuque MD', '658-290-4813', '314-661-1565 x810', '9786 Barton Isle Apt. 206', '88752 Ryan Square', 'orville57@weissnat.com', NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, '2017-12-02 08:00:03', '2017-12-02 08:00:03'),
(194, 22, 'Karina Barton', '338.449.6368 x684', '(248) 765-7364 x877', '3920 Armstrong Manor Suite 201', '37833 Aurore Harbors', 'moen.makenzie@mann.org', NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, '2017-12-02 08:00:03', '2017-12-02 08:00:03'),
(195, 22, 'Ms. Phoebe Marks', '431-979-0082 x0280', '(424) 503-2222 x12524', '81496 Feeney Springs Apt. 166', '797 Schulist Road', 'rosa52@rice.com', NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, '2017-12-02 08:00:03', '2017-12-02 08:00:03'),
(196, 22, 'Dr. Frederik Schumm', '293-658-7204 x2723', '357-340-3410', '63998 Gusikowski Lane Suite 437', '8861 Josephine Mills', 'vivien18@yahoo.com', NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, '2017-12-02 08:00:04', '2017-12-02 08:00:04'),
(197, 22, 'Ms. Carolyn Osinski', '+1.363.349.3753', '(852) 942-5003 x1798', '89196 Anderson Corners Suite 207', '562 Scarlett Mountains Apt. 969', 'joesph.gutkowski@hotmail.com', NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, '2017-12-02 08:00:04', '2017-12-02 08:00:04'),
(198, 22, 'Kassandra West', '920-778-1585 x74096', '840.393.2666', '5315 Nitzsche Brooks Apt. 226', '50980 Corkery Island Apt. 256', 'xkoss@yahoo.com', NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, '2017-12-02 08:00:04', '2017-12-02 08:00:04'),
(199, 22, 'Dr. Yasmeen Hodkiewicz Jr.', '(398) 402-2841 x03245', '546.660.2648 x5210', '420 Jones Hills Suite 385', '3404 Tamia Mews Apt. 821', 'lyla.predovic@yahoo.com', NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, '2017-12-02 08:00:04', '2017-12-02 08:00:04'),
(200, 22, 'Isaiah Feest', '(535) 745-0758', '1-945-779-5697 x625', '31013 Jaclyn Roads', '2818 Andre Place Apt. 860', 'deangelo44@gmail.com', NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, '2017-12-02 08:00:04', '2017-12-02 08:00:04'),
(201, 22, 'Mrs. Clare Gerhold PhD', '684.354.0131 x2822', '523.813.4498 x677', '16608 Reichert Drive', '60589 Stracke Glen Apt. 219', 'kessler.krista@graham.com', NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, '2017-12-02 08:00:04', '2017-12-02 08:00:04'),
(202, 22, 'Dr. Cornell Feeney DVM', '593-703-8605', '(550) 509-8813', '4022 Violette Orchard Suite 858', '8139 Mraz Court', 'pwehner@hotmail.com', NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, '2017-12-02 08:00:04', '2017-12-02 08:00:04'),
(203, 22, 'Maudie Wiegand', '926.333.0886', '1-348-437-4468 x329', '22981 Mueller Gateway Apt. 321', '3054 Amaya Heights Apt. 707', 'jovan.kautzer@hotmail.com', NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, '2017-12-02 08:00:04', '2017-12-02 08:00:04');

-- --------------------------------------------------------

--
-- Table structure for table `delivery_runs`
--

CREATE TABLE `delivery_runs` (
  `id` int(10) UNSIGNED NOT NULL,
  `staffId` int(10) UNSIGNED DEFAULT NULL,
  `shippingZone` int(10) UNSIGNED DEFAULT NULL,
  `returnTime` datetime DEFAULT NULL,
  `dispatchTime` datetime DEFAULT NULL,
  `companyId` int(10) UNSIGNED NOT NULL,
  `updatedBy` int(10) UNSIGNED NOT NULL,
  `createdBy` int(10) UNSIGNED NOT NULL,
  `delivered` tinyint(1) NOT NULL DEFAULT '0',
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `departments`
--

CREATE TABLE `departments` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `budgetLimit` decimal(8,2) DEFAULT NULL,
  `departmentEmail` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `budgetStartDate` date DEFAULT NULL,
  `budgetEndDate` date DEFAULT NULL,
  `hash` text COLLATE utf8mb4_unicode_ci,
  `companyId` int(10) UNSIGNED NOT NULL,
  `updatedBy` int(10) UNSIGNED NOT NULL,
  `createdBy` int(10) UNSIGNED NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `departments`
--

INSERT INTO `departments` (`id`, `name`, `budgetLimit`, `departmentEmail`, `budgetStartDate`, `budgetEndDate`, `hash`, `companyId`, `updatedBy`, `createdBy`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 'Finance', '153551.00', 'lela81@yahoo.com', '2017-11-09', '2017-12-21', NULL, 1, 0, 1, NULL, '2017-12-02 07:52:31', '2017-12-02 07:52:31'),
(2, 'ICT', '162481.00', 'donnie74@gmail.com', '2017-11-07', '2017-12-20', NULL, 1, 0, 1, NULL, '2017-12-02 07:52:32', '2017-12-02 07:52:32'),
(3, 'Engineering', '153122.00', 'ycrist@yahoo.com', '2017-11-06', '2017-12-16', NULL, 1, 0, 1, NULL, '2017-12-02 07:52:32', '2017-12-02 07:52:32'),
(4, 'Business Development', '143680.00', 'hirthe.gennaro@bartell.biz', '2017-11-07', '2017-12-19', NULL, 1, 0, 1, NULL, '2017-12-02 07:52:32', '2017-12-02 07:52:32'),
(5, 'Research and Development', '116213.00', 'fay.rogers@hotmail.com', '2017-11-11', '2017-12-22', NULL, 1, 0, 1, NULL, '2017-12-02 07:52:32', '2017-12-02 07:52:32'),
(6, 'Operations', '106639.00', 'eweimann@graham.info', '2017-11-14', '2017-12-13', NULL, 1, 0, 1, NULL, '2017-12-02 07:52:32', '2017-12-02 07:52:32'),
(7, 'Imports', '163481.00', 'kailey.fay@yahoo.com', '2017-11-17', '2017-12-22', NULL, 1, 0, 1, NULL, '2017-12-02 07:52:32', '2017-12-02 07:52:32'),
(8, 'Exports', '126703.00', 'skiehn@gmail.com', '2017-11-12', '2017-12-17', NULL, 1, 0, 1, NULL, '2017-12-02 07:52:32', '2017-12-02 07:52:32'),
(9, 'Human Resource', '171397.00', 'jrunte@hotmail.com', '2017-11-17', '2017-12-20', NULL, 1, 0, 1, NULL, '2017-12-02 07:52:32', '2017-12-02 07:52:32'),
(10, 'Maintainance', '116666.00', 'cristobal.simonis@hotmail.com', '2017-11-10', '2017-12-17', NULL, 1, 0, 1, NULL, '2017-12-02 07:52:32', '2017-12-02 07:52:32'),
(11, 'Services', '123715.00', 'frami.britney@hotmail.com', '2017-11-06', '2017-12-16', NULL, 1, 0, 1, NULL, '2017-12-02 07:52:32', '2017-12-02 07:52:32'),
(12, 'Marketing', '143864.00', 'scummerata@schumm.com', '2017-11-15', '2017-12-12', NULL, 1, 0, 1, NULL, '2017-12-02 07:52:32', '2017-12-02 07:52:32'),
(13, 'Purchasing', '155173.00', 'kmohr@kshlerin.info', '2017-11-05', '2017-12-14', NULL, 1, 0, 1, NULL, '2017-12-02 07:52:32', '2017-12-02 07:52:32'),
(14, 'Quality Asurance', '134683.00', 'carolanne57@strosin.info', '2017-11-03', '2017-12-16', NULL, 1, 0, 1, NULL, '2017-12-02 07:52:32', '2017-12-02 07:52:32'),
(15, 'Customer Service', '101238.00', 'giuseppe72@hotmail.com', '2017-11-07', '2017-12-16', NULL, 1, 0, 1, NULL, '2017-12-02 07:52:32', '2017-12-02 07:52:32');

-- --------------------------------------------------------

--
-- Table structure for table `dispatches`
--

CREATE TABLE `dispatches` (
  `id` int(10) UNSIGNED NOT NULL,
  `dispatchedItem` int(11) DEFAULT NULL,
  `dispatchedTo` int(11) DEFAULT NULL,
  `departmentId` int(11) DEFAULT NULL,
  `userId` int(10) UNSIGNED NOT NULL,
  `amount` double(15,2) NOT NULL,
  `remarks` longtext COLLATE utf8mb4_unicode_ci,
  `isReturned` tinyint(1) NOT NULL DEFAULT '0',
  `isDefective` tinyint(1) NOT NULL DEFAULT '0',
  `defectiveRemark` text COLLATE utf8mb4_unicode_ci,
  `isMistakeDispatch` tinyint(1) NOT NULL DEFAULT '0',
  `defectRemark` longtext COLLATE utf8mb4_unicode_ci,
  `warehouseId` int(11) DEFAULT NULL,
  `binLocationId` int(11) DEFAULT NULL,
  `productLocationId` int(11) DEFAULT NULL,
  `totalCost` double(15,2) DEFAULT NULL,
  `companyId` int(10) UNSIGNED NOT NULL,
  `updatedBy` int(10) UNSIGNED NOT NULL,
  `hash` text COLLATE utf8mb4_unicode_ci,
  `productLocationHash` text COLLATE utf8mb4_unicode_ci,
  `isMultipleStorage` tinyint(1) NOT NULL DEFAULT '0',
  `createdBy` int(10) UNSIGNED NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `dispatches`
--

INSERT INTO `dispatches` (`id`, `dispatchedItem`, `dispatchedTo`, `departmentId`, `userId`, `amount`, `remarks`, `isReturned`, `isDefective`, `defectiveRemark`, `isMistakeDispatch`, `defectRemark`, `warehouseId`, `binLocationId`, `productLocationId`, `totalCost`, `companyId`, `updatedBy`, `hash`, `productLocationHash`, `isMultipleStorage`, `createdBy`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 29, 22, 0, 4, 2.00, 'Repudiandae accusamus soluta magni ipsum ipsam.', 0, 0, NULL, 0, NULL, 6, 112, NULL, 8738.00, 1, 0, NULL, 'G5k0nOWi109wAK', 0, 1, NULL, '2017-11-08 14:40:27', '2017-11-08 14:40:27'),
(2, 95, 16, 0, 5, 3.00, 'Ullam mollitia minus voluptate aspernatur est similique.', 0, 0, NULL, 0, NULL, 6, 107, NULL, 2184.00, 1, 0, NULL, 'APYZP0RuKLL34', 0, 1, NULL, '2017-11-02 22:31:49', '2017-11-02 22:31:49'),
(3, 90, 43, 0, 4, 1.00, 'Ea laborum veniam aspernatur.', 0, 0, NULL, 0, NULL, 6, 118, NULL, 7313.00, 1, 0, NULL, 'j2y6KW6hnRL2M9', 0, 1, NULL, '2017-11-03 18:46:18', '2017-11-03 18:46:18'),
(4, 42, 3, 0, 3, 3.00, 'Quidem sit sed quod aut.', 0, 0, NULL, 0, NULL, 5, 87, NULL, 5354.00, 1, 0, NULL, '5QRJmoKT1xZ4N', 0, 1, NULL, '2017-11-27 10:10:52', '2017-11-27 10:10:52'),
(5, 23, 43, 0, 3, 1.00, 'Expedita explicabo assumenda ullam veniam.', 0, 0, NULL, 0, NULL, 10, 191, NULL, 7944.00, 1, 0, NULL, 'K15zAE4fwP7Kw', 0, 1, NULL, '2017-11-23 03:52:57', '2017-11-23 03:52:57'),
(6, 74, 13, 0, 2, 3.00, 'Doloribus doloribus dolor dolore autem quo.', 0, 0, NULL, 0, NULL, 6, 114, NULL, 11522.00, 1, 0, NULL, 'Ell2vL2u30QVqZ', 0, 1, NULL, '2017-11-27 07:13:52', '2017-11-27 07:13:52'),
(7, 17, 42, 0, 5, 3.00, 'Enim quis consequuntur et quam reprehenderit temporibus.', 0, 0, NULL, 0, NULL, 1, 20, NULL, 8186.00, 1, 0, NULL, '4QvAKNYC2EwOK', 0, 1, NULL, '2017-11-25 10:43:48', '2017-11-25 10:43:48'),
(8, 78, 20, 0, 1, 2.00, 'Perspiciatis animi delectus nesciunt.', 0, 0, NULL, 0, NULL, 9, 178, NULL, 10858.00, 1, 0, NULL, '2vxZN6Duw6LR1', 0, 1, NULL, '2017-11-16 12:30:36', '2017-11-16 12:30:36'),
(9, 58, 15, 0, 1, 3.00, 'Placeat est totam corrupti fugiat eligendi.', 0, 0, NULL, 0, NULL, 6, 111, NULL, 5135.00, 1, 0, NULL, '3l47QYOTB0kzZ', 0, 1, NULL, '2017-11-06 05:49:23', '2017-11-06 05:49:23'),
(10, 10, 8, 0, 1, 2.00, 'Fugiat qui nam magni dolor.', 0, 0, NULL, 0, NULL, 4, 70, NULL, 6205.00, 1, 0, NULL, 'VmpBkq8iwVKVq', 0, 1, NULL, '2017-11-26 21:32:55', '2017-11-26 21:32:55'),
(11, 41, 3, 0, 1, 2.00, 'Sint perferendis et saepe et.', 0, 0, NULL, 0, NULL, 1, 1, NULL, 7521.00, 1, 0, NULL, 'G5DPXpOSn10OE', 0, 1, NULL, '2017-11-27 22:58:29', '2017-11-27 22:58:29'),
(12, 17, 41, 0, 1, 3.00, 'Saepe sit quam error.', 0, 0, NULL, 0, NULL, 1, 20, NULL, 8186.00, 1, 0, NULL, '4QvAKNYC2EwOK', 0, 1, NULL, '2017-11-12 19:10:25', '2017-11-12 19:10:25'),
(13, 68, 39, 0, 4, 1.00, 'Eius expedita accusamus cumque optio architecto quaerat.', 0, 0, NULL, 0, NULL, 4, 79, NULL, 13117.00, 1, 0, NULL, 'Krv7AzpIPEPy7', 0, 1, NULL, '2017-11-28 10:31:05', '2017-11-28 10:31:05'),
(14, 51, 43, 0, 3, 3.00, 'Quam minima delectus est aspernatur nihil ut.', 0, 0, NULL, 0, NULL, 10, 10, NULL, 469.00, 1, 0, NULL, 'GvJwY9XF1O8PyP', 0, 1, NULL, '2017-11-13 07:27:22', '2017-11-13 07:27:22'),
(15, 80, 36, 0, 5, 3.00, 'Doloribus eos dolorum repellat veritatis.', 0, 0, NULL, 0, NULL, 5, 88, NULL, 6297.00, 1, 0, NULL, 'KZ7qgjNHy7L2Z', 0, 1, NULL, '2017-11-11 01:46:59', '2017-11-11 01:46:59'),
(16, 88, 22, 0, 5, 1.00, 'Quisquam et quisquam perferendis officia.', 0, 0, NULL, 0, NULL, 9, 175, NULL, 3125.00, 1, 0, NULL, 'wVN2920tGnz35', 0, 1, NULL, '2017-11-26 11:16:14', '2017-11-26 11:16:14'),
(17, 66, 7, 0, 4, 1.00, 'Autem deserunt asperiores quis natus quidem.', 0, 0, NULL, 0, NULL, 1, 5, NULL, 1217.00, 1, 0, NULL, 'qxEnLj9t3NA8P', 0, 1, NULL, '2017-11-23 08:27:30', '2017-11-23 08:27:30'),
(18, 5, 7, 0, 4, 2.00, 'Culpa incidunt sit ex aut aperiam ducimus.', 0, 0, NULL, 0, NULL, 2, 32, NULL, 6947.00, 1, 0, NULL, 'QnGl5vxFkoDJnP', 0, 1, NULL, '2017-11-24 21:09:02', '2017-11-24 21:09:02'),
(19, 68, 41, 0, 3, 3.00, 'Magni omnis repellat natus rerum.', 0, 0, NULL, 0, NULL, 4, 79, NULL, 13117.00, 1, 0, NULL, 'Krv7AzpIPEPy7', 0, 1, NULL, '2017-11-26 10:40:30', '2017-11-26 10:40:30'),
(20, 46, 16, 0, 5, 2.00, 'Ducimus vitae rerum aliquid.', 0, 0, NULL, 0, NULL, 5, 93, NULL, 13107.00, 1, 0, NULL, 'M84N32pS9rJBq', 0, 1, NULL, '2017-11-19 17:03:53', '2017-11-19 17:03:53'),
(21, 98, 23, 0, 2, 1.00, 'Et fuga aut aut laboriosam sit.', 0, 0, NULL, 0, NULL, 2, 27, NULL, 2935.00, 1, 0, NULL, 'WLQWBQlFvK3ED', 0, 1, NULL, '2017-11-15 05:46:45', '2017-11-15 05:46:45'),
(22, 74, 34, 0, 3, 2.00, 'Voluptatem voluptas officiis ad voluptas quis quo.', 0, 0, NULL, 0, NULL, 6, 114, NULL, 11522.00, 1, 0, NULL, 'Ell2vL2u30QVqZ', 0, 1, NULL, '2017-11-11 01:42:34', '2017-11-11 01:42:34'),
(23, 33, 25, 0, 1, 3.00, 'Nam voluptas repellendus distinctio.', 0, 0, NULL, 0, NULL, 9, 168, NULL, 9712.00, 1, 0, NULL, 'kRNV3xMCggRVA', 0, 1, NULL, '2017-11-20 09:54:12', '2017-11-20 09:54:12'),
(24, 32, 15, 0, 1, 1.00, 'Voluptas et est amet modi.', 0, 0, NULL, 0, NULL, 10, 196, NULL, 7889.00, 1, 0, NULL, 'VPQBA81CxxOvqK', 0, 1, NULL, '2017-11-27 14:13:19', '2017-11-27 14:13:19'),
(25, 72, 15, 0, 3, 1.00, 'Neque quia itaque id omnis.', 0, 0, NULL, 0, NULL, 3, 46, NULL, 1917.00, 1, 0, NULL, 'GZABXvytJNEgr', 0, 1, NULL, '2017-11-15 14:28:56', '2017-11-15 14:28:56'),
(26, 64, 20, 0, 5, 3.00, 'Iste dolor sit vero.', 0, 0, NULL, 0, NULL, 6, 120, NULL, 7360.00, 1, 0, NULL, 'voZMOVMSAo8XK', 0, 1, NULL, '2017-11-28 20:37:38', '2017-11-28 20:37:38'),
(27, 73, 17, 0, 2, 2.00, 'Id et inventore et repellendus dignissimos aut.', 0, 0, NULL, 0, NULL, 5, 88, NULL, 1728.00, 1, 0, NULL, '0grBDLjTGgy3JK', 0, 1, NULL, '2017-11-17 10:16:22', '2017-11-17 10:16:22'),
(28, 22, 36, 0, 4, 3.00, 'In dolorem nobis recusandae vitae blanditiis.', 0, 0, NULL, 0, NULL, 4, 63, NULL, 1207.00, 1, 0, NULL, 'G6DR4yBCRD6wo', 0, 1, NULL, '2017-11-25 20:11:38', '2017-11-25 20:11:38'),
(29, 33, 21, 0, 4, 3.00, 'Repellat eum non necessitatibus quisquam illum.', 0, 0, NULL, 0, NULL, 9, 168, NULL, 9712.00, 1, 0, NULL, 'kRNV3xMCggRVA', 0, 1, NULL, '2017-11-07 22:00:43', '2017-11-07 22:00:43'),
(30, 68, 2, 0, 1, 2.00, 'Et rerum ipsa consequuntur.', 0, 0, NULL, 0, NULL, 16, 16, NULL, 321.50, 1, 0, NULL, 'G6NGmOjUmVw3r', 0, 1, NULL, '2017-12-02 04:07:22', '2017-12-02 04:07:22'),
(31, 47, 11, 0, 4, 3.00, 'Blanditiis aut earum aut consequatur.', 0, 0, NULL, 0, NULL, 10, 197, NULL, 3980.00, 1, 0, NULL, 'GvX8Oo5HYXEJE', 0, 1, NULL, '2017-12-01 08:02:24', '2017-12-01 08:02:24'),
(32, 29, 11, 0, 3, 3.00, 'Modi veniam est nisi natus.', 0, 0, NULL, 0, NULL, 6, 112, NULL, 8738.00, 1, 0, NULL, 'G5k0nOWi109wAK', 0, 1, NULL, '2017-11-29 02:17:34', '2017-11-29 02:17:34'),
(33, 23, 33, 0, 2, 3.00, 'Aliquid quasi non iste.', 0, 0, NULL, 0, NULL, 1, 15, NULL, 19114.00, 1, 0, NULL, 'W6D7EWXFAm0rG', 0, 1, NULL, '2017-11-14 09:43:06', '2017-11-14 09:43:06'),
(34, 17, 29, 0, 3, 1.00, 'Consequuntur omnis recusandae id ut corporis.', 0, 0, NULL, 0, NULL, 1, 20, NULL, 8186.00, 1, 0, NULL, '4QvAKNYC2EwOK', 0, 1, NULL, '2017-11-04 06:55:58', '2017-11-04 06:55:58'),
(35, 28, 24, 0, 5, 1.00, 'Id est dolores aut.', 0, 0, NULL, 0, NULL, 10, 183, NULL, 15144.00, 1, 0, NULL, 'oQo7RLVcrvgN7Q', 0, 1, NULL, '2017-11-08 16:36:20', '2017-11-08 16:36:20'),
(36, 54, 26, 0, 1, 1.00, 'Nihil qui vero voluptate.', 0, 0, NULL, 0, NULL, 9, 169, NULL, 4910.00, 1, 0, NULL, 'Wngo95kS5zXYlZ', 0, 1, NULL, '2017-11-13 20:14:44', '2017-11-13 20:14:44'),
(37, 7, 25, 0, 2, 1.00, 'Aliquid perspiciatis occaecati molestiae.', 0, 0, NULL, 0, NULL, 4, 64, NULL, 14218.00, 1, 0, NULL, 'wmG42oXfGzjrlg', 0, 1, NULL, '2017-11-16 14:45:04', '2017-11-16 14:45:04'),
(38, 66, 7, 0, 1, 2.00, 'Ipsa labore asperiores recusandae dicta.', 0, 0, NULL, 0, NULL, 1, 5, NULL, 1217.00, 1, 0, NULL, 'qxEnLj9t3NA8P', 0, 1, NULL, '2017-11-21 08:34:20', '2017-11-21 08:34:20'),
(39, 13, 41, 0, 4, 2.00, 'Autem ipsum est maiores reiciendis et voluptas.', 0, 0, NULL, 0, NULL, 7, 135, NULL, 8725.00, 1, 0, NULL, '48rm6zKH311Ay', 0, 1, NULL, '2017-11-07 08:43:31', '2017-11-07 08:43:31'),
(40, 16, 34, 0, 3, 3.00, 'Accusamus reiciendis incidunt sit debitis ipsa nihil repellendus.', 0, 0, NULL, 0, NULL, 2, 21, NULL, 11372.00, 1, 0, NULL, 'yojK0wEIrLrkjY', 0, 1, NULL, '2017-11-30 15:15:50', '2017-11-30 15:15:50'),
(41, 101, 39, 0, 2, 1.00, 'Nulla sunt mollitia consectetur fugit neque.', 0, 0, NULL, 0, NULL, 5, 99, NULL, 13365.00, 1, 0, NULL, 'y8lrDm8s2zYXR', 0, 1, NULL, '2017-12-01 20:44:50', '2017-12-01 20:44:50'),
(42, 75, 29, 0, 2, 1.00, 'Quibusdam id voluptatem dicta et.', 0, 0, NULL, 0, NULL, 10, 195, NULL, 16841.00, 1, 0, NULL, 'Qnr8gD0i3Rz1w', 0, 1, NULL, '2017-11-07 10:28:28', '2017-11-07 10:28:28'),
(43, 47, 37, 0, 1, 3.00, 'Cum nulla qui perspiciatis dolores.', 0, 0, NULL, 0, NULL, 3, 55, NULL, 19123.00, 1, 0, NULL, 'wmX7y6MU1Xxk1', 0, 1, NULL, '2017-11-17 09:57:50', '2017-11-17 09:57:50'),
(44, 16, 27, 0, 5, 2.00, 'Sit et sunt illum sapiente dolorem possimus.', 0, 0, NULL, 0, NULL, 2, 21, NULL, 11372.00, 1, 0, NULL, 'yojK0wEIrLrkjY', 0, 1, NULL, '2017-11-30 17:16:49', '2017-11-30 17:16:49'),
(45, 42, 35, 0, 3, 1.00, 'Consequuntur accusantium qui saepe.', 0, 0, NULL, 0, NULL, 5, 87, NULL, 5354.00, 1, 0, NULL, '5QRJmoKT1xZ4N', 0, 1, NULL, '2017-11-02 09:55:55', '2017-11-02 09:55:55'),
(46, 95, 13, 0, 5, 3.00, 'Animi repellendus blanditiis a enim.', 0, 0, NULL, 0, NULL, 6, 107, NULL, 2184.00, 1, 0, NULL, 'APYZP0RuKLL34', 0, 1, NULL, '2017-11-24 04:34:04', '2017-11-24 04:34:04'),
(47, 17, 44, 0, 3, 1.00, 'Commodi dolore sed vel tempora dolorem.', 0, 0, NULL, 0, NULL, 1, 20, NULL, 8186.00, 1, 0, NULL, '4QvAKNYC2EwOK', 0, 1, NULL, '2017-11-10 05:36:24', '2017-11-10 05:36:24'),
(48, 35, 37, 0, 2, 2.00, 'Ut saepe qui qui illo voluptatum quia.', 0, 0, NULL, 0, NULL, 6, 111, NULL, 1909.00, 1, 0, NULL, 'ZV5jj0KhGVwN7', 0, 1, NULL, '2017-11-28 22:22:56', '2017-11-28 22:22:56'),
(49, 10, 29, 0, 2, 3.00, 'Id repudiandae sint rerum dolorum ipsum sit.', 0, 0, NULL, 0, NULL, 4, 70, NULL, 6205.00, 1, 0, NULL, 'VmpBkq8iwVKVq', 0, 1, NULL, '2017-11-16 21:19:44', '2017-11-16 21:19:44'),
(50, 62, 10, 0, 3, 2.00, 'Culpa possimus voluptates molestiae molestias maxime perferendis.', 0, 0, NULL, 0, NULL, 6, 102, NULL, 17215.00, 1, 0, NULL, 'yoWk3Q2iWXlz9', 0, 1, NULL, '2017-11-21 12:54:18', '2017-11-21 12:54:18'),
(51, 47, 8, 0, 4, 3.00, 'Quas nesciunt aut eos esse.', 0, 0, NULL, 0, NULL, 8, 146, NULL, 12389.00, 1, 0, NULL, '31m1Zwpup2ERLD', 0, 1, NULL, '2017-11-11 03:24:12', '2017-11-11 03:24:12'),
(52, 73, 2, 0, 5, 3.00, 'Ad fugit a soluta qui et doloremque.', 0, 0, NULL, 0, NULL, 2, 28, NULL, 17862.00, 1, 0, NULL, '66KGJrWHoA4NL', 0, 1, NULL, '2017-11-27 08:00:21', '2017-11-27 08:00:21'),
(53, 87, 43, 0, 4, 2.00, 'Id occaecati ad facere quam eveniet ad.', 0, 0, NULL, 0, NULL, 7, 139, NULL, 7078.00, 1, 0, NULL, 'gJmjNqyfLRx25', 0, 1, NULL, '2017-11-18 02:12:32', '2017-11-18 02:12:32'),
(54, 45, 42, 0, 4, 3.00, 'Et officia animi laboriosam veritatis.', 0, 0, NULL, 0, NULL, 1, 9, NULL, 12419.00, 1, 0, NULL, 'XLXADA0FZ83y1', 0, 1, NULL, '2017-11-06 19:40:26', '2017-11-06 19:40:26'),
(55, 33, 15, 0, 1, 1.00, 'Consequatur et hic magnam.', 0, 0, NULL, 0, NULL, 8, 141, NULL, 8439.00, 1, 0, NULL, 'PZOMAVLHm8N1z', 0, 1, NULL, '2017-11-20 00:55:25', '2017-11-20 00:55:25'),
(56, 82, 15, 0, 4, 2.00, 'Quidem qui atque accusantium molestiae.', 0, 0, NULL, 0, NULL, 2, 26, NULL, 12137.00, 1, 0, NULL, 'L7RY38wFzDPRr', 0, 1, NULL, '2017-11-30 06:35:39', '2017-11-30 06:35:39'),
(57, 64, 22, 0, 3, 3.00, 'Totam maiores aut provident.', 0, 0, NULL, 0, NULL, 3, 44, NULL, 14447.00, 1, 0, NULL, 'Q12kKnxsrp8En', 0, 1, NULL, '2017-11-29 15:56:00', '2017-11-29 15:56:00'),
(58, 61, 44, 0, 3, 2.00, 'Unde aperiam tempore incidunt amet velit.', 0, 0, NULL, 0, NULL, 3, 60, NULL, 4842.00, 1, 0, NULL, 'qxDMllGT8kPm4m', 0, 1, NULL, '2017-11-30 06:20:23', '2017-11-30 06:20:23'),
(59, 87, 1, 0, 1, 3.00, 'Et inventore sequi dolorum et.', 0, 0, NULL, 0, NULL, 7, 139, NULL, 7078.00, 1, 0, NULL, 'gJmjNqyfLRx25', 0, 1, NULL, '2017-11-06 08:35:23', '2017-11-06 08:35:23'),
(60, 42, 2, 0, 2, 2.00, 'Ut corporis mollitia est veritatis omnis tempora.', 0, 0, NULL, 0, NULL, 5, 87, NULL, 5354.00, 1, 0, NULL, '5QRJmoKT1xZ4N', 0, 1, NULL, '2017-11-09 02:19:36', '2017-11-09 02:19:36'),
(61, 35, 44, 0, 5, 1.00, 'Rem voluptatem tenetur vel qui pariatur.', 0, 0, NULL, 0, NULL, 6, 111, NULL, 1909.00, 1, 0, NULL, 'ZV5jj0KhGVwN7', 0, 1, NULL, '2017-11-07 22:20:28', '2017-11-07 22:20:28'),
(62, 79, 36, 0, 1, 1.00, 'Aliquam dolores quia dolorem voluptatem facere.', 0, 0, NULL, 0, NULL, 3, 46, NULL, 10244.00, 1, 0, NULL, 'An9W5LmTwBXrW', 0, 1, NULL, '2017-11-17 20:02:25', '2017-11-17 20:02:25'),
(63, 22, 1, 0, 1, 2.00, 'Corporis molestiae reiciendis incidunt molestiae vitae.', 0, 0, NULL, 0, NULL, 4, 63, NULL, 1207.00, 1, 0, NULL, 'G6DR4yBCRD6wo', 0, 1, NULL, '2017-11-06 19:52:31', '2017-11-06 19:52:31'),
(64, 41, 8, 0, 1, 3.00, 'Quaerat libero ducimus eum quis iusto eos.', 0, 0, NULL, 0, NULL, 1, 1, NULL, 7521.00, 1, 0, NULL, 'G5DPXpOSn10OE', 0, 1, NULL, '2017-11-21 09:58:59', '2017-11-21 09:58:59'),
(65, 64, 38, 0, 1, 1.00, 'Earum eos magnam error a qui.', 0, 0, NULL, 0, NULL, 3, 44, NULL, 14447.00, 1, 0, NULL, 'Q12kKnxsrp8En', 0, 1, NULL, '2017-11-22 07:24:20', '2017-11-22 07:24:20'),
(66, 64, 20, 0, 5, 1.00, 'Nisi enim officia quis.', 0, 0, NULL, 0, NULL, 10, 182, NULL, 8632.00, 1, 0, NULL, 'YER4V5quLNDMOX', 0, 1, NULL, '2017-11-14 07:59:23', '2017-11-14 07:59:23'),
(67, 74, 23, 0, 5, 3.00, 'Nostrum saepe saepe distinctio.', 0, 0, NULL, 0, NULL, 6, 114, NULL, 11522.00, 1, 0, NULL, 'Ell2vL2u30QVqZ', 0, 1, NULL, '2017-12-01 08:29:26', '2017-12-01 08:29:26'),
(68, 64, 34, 0, 1, 2.00, 'Quia quidem libero voluptatum.', 0, 0, NULL, 0, NULL, 3, 44, NULL, 14447.00, 1, 0, NULL, 'Q12kKnxsrp8En', 0, 1, NULL, '2017-11-06 09:42:28', '2017-11-06 09:42:28'),
(69, 86, 2, 0, 4, 3.00, 'Ut nisi tempora dolore sit saepe voluptatem rem.', 0, 0, NULL, 0, NULL, 10, 200, NULL, 12513.00, 1, 0, NULL, '2RrqqoOFqNp8k', 0, 1, NULL, '2017-11-12 15:57:44', '2017-11-12 15:57:44'),
(70, 16, 43, 0, 4, 2.00, 'Enim maxime commodi dolorum qui rerum cupiditate.', 0, 0, NULL, 0, NULL, 2, 21, NULL, 11372.00, 1, 0, NULL, 'yojK0wEIrLrkjY', 0, 1, NULL, '2017-11-05 17:17:08', '2017-11-05 17:17:08'),
(71, 33, 4, 0, 5, 3.00, 'Explicabo eum culpa blanditiis.', 0, 0, NULL, 0, NULL, 8, 160, NULL, 13074.00, 1, 0, NULL, '68EWzAYczOQBK', 0, 1, NULL, '2017-11-05 02:14:28', '2017-11-05 02:14:28'),
(72, 62, 38, 0, 5, 3.00, 'Nam aspernatur velit debitis.', 0, 0, NULL, 0, NULL, 6, 102, NULL, 17215.00, 1, 0, NULL, 'yoWk3Q2iWXlz9', 0, 1, NULL, '2017-11-27 13:56:31', '2017-11-27 13:56:31'),
(73, 76, 4, 0, 3, 1.00, 'Sed maiores dolor magnam.', 0, 0, NULL, 0, NULL, 8, 158, NULL, 5032.00, 1, 0, NULL, 'rR4wDRjFBPEP3', 0, 1, NULL, '2017-11-25 21:41:44', '2017-11-25 21:41:44'),
(74, 16, 27, 0, 1, 2.00, 'Exercitationem alias explicabo aut.', 0, 0, NULL, 0, NULL, 2, 21, NULL, 11372.00, 1, 0, NULL, 'yojK0wEIrLrkjY', 0, 1, NULL, '2017-11-17 10:24:39', '2017-11-17 10:24:39'),
(75, 78, 22, 0, 3, 1.00, 'Optio est officia esse cumque.', 0, 0, NULL, 0, NULL, 9, 178, NULL, 10858.00, 1, 0, NULL, '2vxZN6Duw6LR1', 0, 1, NULL, '2017-11-06 07:33:46', '2017-11-06 07:33:46'),
(76, 86, 21, 0, 4, 2.00, 'Expedita ipsum velit sapiente.', 0, 0, NULL, 0, NULL, 10, 200, NULL, 12513.00, 1, 0, NULL, '2RrqqoOFqNp8k', 0, 1, NULL, '2017-11-08 01:03:25', '2017-11-08 01:03:25'),
(77, 63, 32, 0, 5, 3.00, 'Quas optio non unde minus error quod.', 0, 0, NULL, 0, NULL, 8, 141, NULL, 14915.00, 1, 0, NULL, '71AgYn4tAQM7x4', 0, 1, NULL, '2017-11-06 18:32:21', '2017-11-06 18:32:21'),
(78, 101, 21, 0, 4, 1.00, 'Incidunt et esse suscipit voluptas.', 0, 0, NULL, 0, NULL, 4, 69, NULL, 16465.00, 1, 0, NULL, 'DR4PPGWhmNVNw', 0, 1, NULL, '2017-11-12 11:01:16', '2017-11-12 11:01:16'),
(79, 63, 30, 0, 5, 1.00, 'In deserunt adipisci vel.', 0, 0, NULL, 0, NULL, 8, 141, NULL, 14915.00, 1, 0, NULL, '71AgYn4tAQM7x4', 0, 1, NULL, '2017-11-28 17:40:57', '2017-11-28 17:40:57'),
(80, 86, 17, 0, 1, 2.00, 'Officiis harum minus illo dolorem occaecati.', 0, 0, NULL, 0, NULL, 10, 200, NULL, 12513.00, 1, 0, NULL, '2RrqqoOFqNp8k', 0, 1, NULL, '2017-11-20 06:01:42', '2017-11-20 06:01:42'),
(81, 88, 7, 0, 3, 3.00, 'Et fugiat omnis eum tempora.', 0, 0, NULL, 0, NULL, 9, 175, NULL, 3125.00, 1, 0, NULL, 'wVN2920tGnz35', 0, 1, NULL, '2017-11-29 13:01:19', '2017-11-29 13:01:19'),
(82, 41, 20, 0, 1, 1.00, 'Ad laudantium repellendus rerum velit et est.', 0, 0, NULL, 0, NULL, 1, 1, NULL, 7521.00, 1, 0, NULL, 'G5DPXpOSn10OE', 0, 1, NULL, '2017-11-12 13:04:30', '2017-11-12 13:04:30'),
(83, 48, 13, 0, 4, 3.00, 'Qui sed ipsa aliquam animi aut.', 0, 0, NULL, 0, NULL, 5, 87, NULL, 17453.00, 1, 0, NULL, 'vg16AOnTpJnK7', 0, 1, NULL, '2017-11-18 06:21:08', '2017-11-18 06:21:08'),
(84, 63, 24, 0, 5, 3.00, 'Dolores iste porro quia ea quia.', 0, 0, NULL, 0, NULL, 8, 141, NULL, 14915.00, 1, 0, NULL, '71AgYn4tAQM7x4', 0, 1, NULL, '2017-11-16 14:48:25', '2017-11-16 14:48:25'),
(85, 4, 31, 0, 2, 1.00, 'Corporis enim explicabo quisquam aut.', 0, 0, NULL, 0, NULL, 10, 194, NULL, 15616.00, 1, 0, NULL, 'jZn12JYUONXn3', 0, 1, NULL, '2017-11-18 13:44:50', '2017-11-18 13:44:50'),
(86, 16, 31, 0, 1, 3.00, 'At dolorem illum vitae.', 0, 0, NULL, 0, NULL, 2, 21, NULL, 11372.00, 1, 0, NULL, 'yojK0wEIrLrkjY', 0, 1, NULL, '2017-11-10 13:47:24', '2017-11-10 13:47:24'),
(87, 46, 37, 0, 3, 3.00, 'Dolorem ad animi beatae.', 0, 0, NULL, 0, NULL, 5, 93, NULL, 13107.00, 1, 0, NULL, 'M84N32pS9rJBq', 0, 1, NULL, '2017-11-25 18:14:10', '2017-11-25 18:14:10'),
(88, 22, 17, 0, 3, 3.00, 'Itaque voluptatem et enim quia quia alias.', 0, 0, NULL, 0, NULL, 4, 63, NULL, 1207.00, 1, 0, NULL, 'G6DR4yBCRD6wo', 0, 1, NULL, '2017-11-21 19:26:33', '2017-11-21 19:26:33'),
(89, 12, 16, 0, 5, 1.00, 'Rerum itaque facilis et excepturi odit.', 0, 0, NULL, 0, NULL, 6, 120, NULL, 19211.00, 1, 0, NULL, 'MwX0kRPt76MxM', 0, 1, NULL, '2017-11-25 11:24:31', '2017-11-25 11:24:31'),
(90, 90, 17, 0, 1, 3.00, 'Nobis non voluptatem soluta sit eum expedita.', 0, 0, NULL, 0, NULL, 6, 118, NULL, 7313.00, 1, 0, NULL, 'j2y6KW6hnRL2M9', 0, 1, NULL, '2017-11-30 07:46:12', '2017-11-30 07:46:12'),
(91, 103, 8, 0, 1, 1.00, 'Soluta ipsam ipsam sit reprehenderit quasi vero.', 0, 0, NULL, 0, NULL, 2, 32, NULL, 14446.00, 1, 0, NULL, 'Qn0r3zycqOWjG', 0, 1, NULL, '2017-11-19 04:06:45', '2017-11-19 04:06:45'),
(92, 63, 1, 0, 2, 1.00, 'Vero sint et voluptatibus.', 0, 0, NULL, 0, NULL, 8, 141, NULL, 14915.00, 1, 0, NULL, '71AgYn4tAQM7x4', 0, 1, NULL, '2017-11-20 18:45:26', '2017-11-20 18:45:26'),
(93, 102, 36, 0, 5, 3.00, 'Voluptate voluptatem eos quas aperiam ab.', 0, 0, NULL, 0, NULL, 1, 13, NULL, 12317.00, 1, 0, NULL, 'xGWY9krI2mxOv', 0, 1, NULL, '2017-11-13 20:12:22', '2017-11-13 20:12:22'),
(94, 59, 29, 0, 4, 3.00, 'Dolor et qui minima et.', 0, 0, NULL, 0, NULL, 4, 80, NULL, 9573.00, 1, 0, NULL, 'mwqZq7xtZoZ2N', 0, 1, NULL, '2017-11-15 21:41:53', '2017-11-15 21:41:53'),
(95, 98, 35, 0, 2, 3.00, 'Modi fuga et fuga.', 0, 0, NULL, 0, NULL, 2, 27, NULL, 2935.00, 1, 0, NULL, 'WLQWBQlFvK3ED', 0, 1, NULL, '2017-11-08 10:08:36', '2017-11-08 10:08:36'),
(96, 100, 10, 0, 2, 2.00, 'Est tempore aut est qui error possimus.', 0, 0, NULL, 0, NULL, 2, 35, NULL, 10413.00, 1, 0, NULL, 'xG2qPoOs5PR3g', 0, 1, NULL, '2017-11-11 17:05:39', '2017-11-11 17:05:39'),
(97, 60, 16, 0, 4, 1.00, 'Dolorum quasi ipsum debitis omnis officia.', 0, 0, NULL, 0, NULL, 10, 181, NULL, 13423.00, 1, 0, NULL, 'mwxzvD7I4ryNw', 0, 1, NULL, '2017-11-13 23:20:03', '2017-11-13 23:20:03'),
(98, 101, 5, 0, 5, 3.00, 'Libero modi maxime ratione facere.', 0, 0, NULL, 0, NULL, 8, 146, NULL, 3736.00, 1, 0, NULL, 'PZm4k28iL9lV9', 0, 1, NULL, '2017-11-06 07:03:33', '2017-11-06 07:03:33'),
(99, 95, 1, 0, 3, 1.00, 'Voluptatem ullam aliquam ratione ipsum ullam aut.', 0, 0, NULL, 0, NULL, 6, 107, NULL, 2184.00, 1, 0, NULL, 'APYZP0RuKLL34', 0, 1, NULL, '2017-11-05 09:31:28', '2017-11-05 09:31:28'),
(100, 33, 12, 0, 1, 1.00, 'Laborum adipisci asperiores iure explicabo necessitatibus.', 0, 0, NULL, 0, NULL, 8, 160, NULL, 13074.00, 1, 0, NULL, '68EWzAYczOQBK', 0, 1, NULL, '2017-11-14 16:26:37', '2017-11-14 16:26:37'),
(101, 60, 6, 0, 4, 3.00, 'Dolorum itaque aut consequuntur commodi sapiente.', 0, 0, NULL, 0, NULL, 10, 181, NULL, 13423.00, 1, 0, NULL, 'mwxzvD7I4ryNw', 0, 1, NULL, '2017-11-13 05:29:13', '2017-11-13 05:29:13'),
(102, 103, 23, 0, 4, 3.00, 'Ab repellendus explicabo aperiam tempore.', 0, 0, NULL, 0, NULL, 4, 75, NULL, 6048.00, 1, 0, NULL, '1rgyVDkHPZn3Y', 0, 1, NULL, '2017-11-25 19:45:13', '2017-11-25 19:45:13'),
(103, 82, 7, 0, 2, 1.00, 'Esse consequatur excepturi repellat nemo corrupti placeat.', 0, 0, NULL, 0, NULL, 2, 26, NULL, 12137.00, 1, 0, NULL, 'L7RY38wFzDPRr', 0, 1, NULL, '2017-11-19 21:55:04', '2017-11-19 21:55:04'),
(104, 7, 17, 0, 3, 3.00, 'Accusantium sint qui ex.', 0, 0, NULL, 0, NULL, 7, 135, NULL, 16213.00, 1, 0, NULL, 'yow3XQqtxPz4J', 0, 1, NULL, '2017-12-01 19:49:07', '2017-12-01 19:49:07'),
(105, 105, 9, 0, 5, 2.00, 'Tenetur vero ea minima atque et.', 0, 0, NULL, 0, NULL, 4, 61, NULL, 8076.00, 1, 0, NULL, 'oQE4YmVt08Q7X', 0, 1, NULL, '2017-11-05 07:47:28', '2017-11-05 07:47:28'),
(106, 22, 25, 0, 4, 3.00, 'Et quia at et.', 0, 0, NULL, 0, NULL, 4, 63, NULL, 1207.00, 1, 0, NULL, 'G6DR4yBCRD6wo', 0, 1, NULL, '2017-11-23 04:41:35', '2017-11-23 04:41:35'),
(107, 28, 6, 0, 1, 1.00, 'Qui beatae voluptatem non in temporibus.', 0, 0, NULL, 0, NULL, 10, 183, NULL, 15144.00, 1, 0, NULL, 'oQo7RLVcrvgN7Q', 0, 1, NULL, '2017-11-06 00:02:10', '2017-11-06 00:02:10'),
(108, 92, 23, 0, 2, 3.00, 'Maxime esse consectetur autem eius quia.', 0, 0, NULL, 0, NULL, 1, 11, NULL, 7129.00, 1, 0, NULL, 'zvABPLDixjOvA', 0, 1, NULL, '2017-11-26 11:42:52', '2017-11-26 11:42:52'),
(109, 17, 41, 0, 5, 3.00, 'Aut vero amet dolorum.', 0, 0, NULL, 0, NULL, 1, 20, NULL, 8186.00, 1, 0, NULL, '4QvAKNYC2EwOK', 0, 1, NULL, '2017-11-16 19:44:44', '2017-11-16 19:44:44'),
(110, 7, 29, 0, 1, 1.00, 'Officia consequatur placeat repellat.', 0, 0, NULL, 0, NULL, 7, 135, NULL, 16213.00, 1, 0, NULL, 'yow3XQqtxPz4J', 0, 1, NULL, '2017-11-10 12:15:49', '2017-11-10 12:15:49'),
(111, 72, 1, 0, 5, 1.00, 'Nostrum architecto sed eveniet quis consequatur culpa.', 0, 0, NULL, 0, NULL, 3, 46, NULL, 1917.00, 1, 0, NULL, 'GZABXvytJNEgr', 0, 1, NULL, '2017-11-08 10:44:24', '2017-11-08 10:44:24'),
(112, 45, 7, 0, 5, 2.00, 'Voluptatem accusamus officiis assumenda molestiae.', 0, 0, NULL, 0, NULL, 1, 1, NULL, 7990.00, 1, 0, NULL, 'Qnp1wENtGKJYV', 0, 1, NULL, '2017-11-27 06:15:57', '2017-11-27 06:15:57'),
(113, 32, 15, 0, 2, 1.00, 'Laudantium rem deleniti dolores qui qui.', 0, 0, NULL, 0, NULL, 10, 196, NULL, 7889.00, 1, 0, NULL, 'VPQBA81CxxOvqK', 0, 1, NULL, '2017-11-07 11:46:40', '2017-11-07 11:46:40'),
(114, 63, 1, 0, 2, 1.00, 'Odit vel a cum assumenda veniam cumque.', 0, 0, NULL, 0, NULL, 8, 141, NULL, 14915.00, 1, 0, NULL, '71AgYn4tAQM7x4', 0, 1, NULL, '2017-11-07 16:47:01', '2017-11-07 16:47:01'),
(115, 12, 12, 0, 4, 3.00, 'Est maxime dolores dolorem sed qui.', 0, 0, NULL, 0, NULL, 6, 120, NULL, 19211.00, 1, 0, NULL, 'MwX0kRPt76MxM', 0, 1, NULL, '2017-11-21 06:35:09', '2017-11-21 06:35:09'),
(116, 41, 44, 0, 5, 3.00, 'Et minus sapiente laborum modi.', 0, 0, NULL, 0, NULL, 1, 1, NULL, 7521.00, 1, 0, NULL, 'G5DPXpOSn10OE', 0, 1, NULL, '2017-11-09 07:33:14', '2017-11-09 07:33:14'),
(117, 36, 35, 0, 4, 2.00, 'Aspernatur labore voluptatem ut autem.', 0, 0, NULL, 0, NULL, 10, 182, NULL, 11541.00, 1, 0, NULL, '0gED7NkfGrmVp6', 0, 1, NULL, '2017-11-05 13:44:44', '2017-11-05 13:44:44'),
(118, 8, 44, 0, 4, 2.00, 'Autem et sunt laboriosam necessitatibus illum voluptatem.', 0, 0, NULL, 0, NULL, 6, 108, NULL, 18906.00, 1, 0, NULL, 'k8VjVwgUzgOxg', 0, 1, NULL, '2017-11-06 02:41:25', '2017-11-06 02:41:25'),
(119, 95, 4, 0, 1, 3.00, 'Delectus cumque aut voluptates qui.', 0, 0, NULL, 0, NULL, 6, 107, NULL, 2184.00, 1, 0, NULL, 'APYZP0RuKLL34', 0, 1, NULL, '2017-11-20 23:16:05', '2017-11-20 23:16:05'),
(120, 65, 4, 0, 5, 1.00, 'Numquam debitis voluptate odio.', 0, 0, NULL, 0, NULL, 1, 1, NULL, 152.00, 1, 0, NULL, '9Q24nOqI65VPN', 0, 1, NULL, '2017-11-19 18:16:18', '2017-11-19 18:16:18'),
(121, 22, 7, 0, 3, 3.00, 'Inventore et aut quis.', 0, 0, NULL, 0, NULL, 4, 63, NULL, 1207.00, 1, 0, NULL, 'G6DR4yBCRD6wo', 0, 1, NULL, '2017-11-22 10:10:43', '2017-11-22 10:10:43'),
(122, 23, 25, 0, 1, 1.00, 'Minus consectetur alias ea inventore.', 0, 0, NULL, 0, NULL, 19, 19, NULL, 273.00, 1, 0, NULL, 'Z4qRvpqHRMrXA', 0, 1, NULL, '2017-11-22 06:10:27', '2017-11-22 06:10:27'),
(123, 79, 24, 0, 2, 3.00, 'In est magnam delectus sed.', 0, 0, NULL, 0, NULL, 7, 137, NULL, 9389.00, 1, 0, NULL, 'N9BG45pFp6GwP', 0, 1, NULL, '2017-12-01 11:02:26', '2017-12-01 11:02:26'),
(124, 73, 43, 0, 1, 2.00, 'Illum id assumenda nisi voluptate quam quae.', 0, 0, NULL, 0, NULL, 2, 28, NULL, 17862.00, 1, 0, NULL, '66KGJrWHoA4NL', 0, 1, NULL, '2017-11-26 21:16:07', '2017-11-26 21:16:07'),
(125, 29, 8, 0, 3, 1.00, 'Sequi est ut qui.', 0, 0, NULL, 0, NULL, 6, 112, NULL, 8738.00, 1, 0, NULL, 'G5k0nOWi109wAK', 0, 1, NULL, '2017-11-07 17:50:11', '2017-11-07 17:50:11'),
(126, 100, 1, 0, 3, 3.00, 'Ipsum unde reprehenderit ipsa.', 0, 0, NULL, 0, NULL, 2, 35, NULL, 10413.00, 1, 0, NULL, 'xG2qPoOs5PR3g', 0, 1, NULL, '2017-11-18 13:36:22', '2017-11-18 13:36:22'),
(127, 45, 22, 0, 1, 2.00, 'Neque fugiat doloribus dolore dolor.', 0, 0, NULL, 0, NULL, 1, 9, NULL, 12419.00, 1, 0, NULL, 'XLXADA0FZ83y1', 0, 1, NULL, '2017-11-30 05:08:50', '2017-11-30 05:08:50'),
(128, 65, 28, 0, 2, 2.00, 'Dolorem recusandae est rerum voluptatem consequatur.', 0, 0, NULL, 0, NULL, 3, 50, NULL, 6215.00, 1, 0, NULL, 'E9Ej9P9FKWJGg', 0, 1, NULL, '2017-11-21 13:36:19', '2017-11-21 13:36:19'),
(129, 86, 14, 0, 5, 3.00, 'Magni modi id molestias voluptas tempore.', 0, 0, NULL, 0, NULL, 8, 151, NULL, 7621.00, 1, 0, NULL, 'nrQ7VEXI7q32Rm', 0, 1, NULL, '2017-11-18 06:55:11', '2017-11-18 06:55:11'),
(130, 61, 25, 0, 5, 3.00, 'Eos a consequuntur ullam aut ipsa tenetur.', 0, 0, NULL, 0, NULL, 4, 70, NULL, 12632.00, 1, 0, NULL, 'L8WK441I7Ay1E', 0, 1, NULL, '2017-11-04 12:18:07', '2017-11-04 12:18:07'),
(131, 3, 7, 0, 4, 2.00, 'Totam distinctio ea consequatur et eaque voluptatem.', 0, 0, NULL, 0, NULL, 3, 44, NULL, 13161.00, 1, 0, NULL, 'nZ8mRkGuApyNz', 0, 1, NULL, '2017-11-14 04:59:33', '2017-11-14 04:59:33'),
(132, 100, 33, 0, 1, 1.00, 'Est sint accusantium asperiores.', 0, 0, NULL, 0, NULL, 2, 35, NULL, 10413.00, 1, 0, NULL, 'xG2qPoOs5PR3g', 0, 1, NULL, '2017-11-12 03:26:03', '2017-11-12 03:26:03'),
(133, 101, 7, 0, 5, 2.00, 'Deleniti quis architecto suscipit quod voluptatum magni.', 0, 0, NULL, 0, NULL, 5, 99, NULL, 13365.00, 1, 0, NULL, 'y8lrDm8s2zYXR', 0, 1, NULL, '2017-11-03 06:51:02', '2017-11-03 06:51:02'),
(134, 33, 14, 0, 4, 1.00, 'Hic quas esse explicabo omnis.', 0, 0, NULL, 0, NULL, 8, 141, NULL, 8439.00, 1, 0, NULL, 'PZOMAVLHm8N1z', 0, 1, NULL, '2017-11-25 00:01:14', '2017-11-25 00:01:14'),
(135, 87, 31, 0, 5, 1.00, 'Iure sed et odit soluta deserunt.', 0, 0, NULL, 0, NULL, 7, 139, NULL, 7078.00, 1, 0, NULL, 'gJmjNqyfLRx25', 0, 1, NULL, '2017-11-10 13:33:05', '2017-11-10 13:33:05'),
(136, 62, 14, 0, 1, 2.00, 'Alias dolorem molestiae quo fugiat.', 0, 0, NULL, 0, NULL, 10, 10, NULL, 226.00, 1, 0, NULL, 'ER2NM2PFpJ5x6', 0, 1, NULL, '2017-11-30 23:53:34', '2017-11-30 23:53:34'),
(137, 7, 10, 0, 1, 2.00, 'Ratione sunt esse libero ipsam dolores neque.', 0, 0, NULL, 0, NULL, 4, 64, NULL, 14218.00, 1, 0, NULL, 'wmG42oXfGzjrlg', 0, 1, NULL, '2017-11-03 23:30:29', '2017-11-03 23:30:29'),
(138, 102, 39, 0, 3, 3.00, 'Eveniet odit rerum et sequi qui voluptatem.', 0, 0, NULL, 0, NULL, 7, 136, NULL, 10041.00, 1, 0, NULL, '1rmQ798Sj21wO', 0, 1, NULL, '2017-12-01 16:47:02', '2017-12-01 16:47:02'),
(139, 7, 18, 0, 4, 1.00, 'Aliquam aut autem qui debitis voluptate sed.', 0, 0, NULL, 0, NULL, 6, 117, NULL, 2498.00, 1, 0, NULL, 'j20lmQmsJL2Kw', 0, 1, NULL, '2017-11-13 20:27:03', '2017-11-13 20:27:03'),
(140, 35, 32, 0, 1, 3.00, 'Velit quas quo est.', 0, 0, NULL, 0, NULL, 6, 111, NULL, 1909.00, 1, 0, NULL, 'ZV5jj0KhGVwN7', 0, 1, NULL, '2017-11-18 11:16:52', '2017-11-18 11:16:52'),
(141, 30, 36, 0, 1, 2.00, 'Est dolorem et animi eveniet.', 0, 0, NULL, 0, NULL, 10, 195, NULL, 14728.00, 1, 0, NULL, 'r8WvjPGu6DyKm', 0, 1, NULL, '2017-11-26 06:46:21', '2017-11-26 06:46:21'),
(142, 41, 28, 0, 4, 3.00, 'Quos quidem nesciunt ut.', 0, 0, NULL, 0, NULL, 1, 1, NULL, 7521.00, 1, 0, NULL, 'G5DPXpOSn10OE', 0, 1, NULL, '2017-11-23 01:29:44', '2017-11-23 01:29:44'),
(143, 45, 3, 0, 1, 3.00, 'Quia aperiam ullam deleniti ipsam distinctio.', 0, 0, NULL, 0, NULL, 2, 29, NULL, 2153.00, 1, 0, NULL, 'MQ02n1Asx8W3p', 0, 1, NULL, '2017-11-25 17:55:05', '2017-11-25 17:55:05'),
(144, 3, 40, 0, 5, 1.00, 'Qui quia odit architecto.', 0, 0, NULL, 0, NULL, 3, 44, NULL, 13161.00, 1, 0, NULL, 'nZ8mRkGuApyNz', 0, 1, NULL, '2017-11-30 03:35:35', '2017-11-30 03:35:35'),
(145, 23, 36, 0, 5, 1.00, 'A animi non molestiae incidunt nihil sit.', 0, 0, NULL, 0, NULL, 10, 186, NULL, 15890.00, 1, 0, NULL, 'J6l45G7toVJzy', 0, 1, NULL, '2017-11-15 15:58:21', '2017-11-15 15:58:21'),
(146, 58, 23, 0, 5, 1.00, 'Voluptate rerum autem in rerum rem eligendi ullam.', 0, 0, NULL, 0, NULL, 6, 111, NULL, 5135.00, 1, 0, NULL, '3l47QYOTB0kzZ', 0, 1, NULL, '2017-11-06 07:26:21', '2017-11-06 07:26:21'),
(147, 34, 15, 0, 5, 2.00, 'Doloribus tenetur voluptatibus reprehenderit.', 0, 0, NULL, 0, NULL, 8, 159, NULL, 18163.00, 1, 0, NULL, 'RoQV942i3N546', 0, 1, NULL, '2017-11-29 00:17:25', '2017-11-29 00:17:25'),
(148, 41, 25, 0, 4, 1.00, 'Labore repudiandae expedita magnam.', 0, 0, NULL, 0, NULL, 1, 1, NULL, 7521.00, 1, 0, NULL, 'G5DPXpOSn10OE', 0, 1, NULL, '2017-11-25 07:19:09', '2017-11-25 07:19:09'),
(149, 54, 6, 0, 1, 2.00, 'Assumenda voluptate sit quos.', 0, 0, NULL, 0, NULL, 3, 45, NULL, 19581.00, 1, 0, NULL, '6X1NkrVfD0qRX', 0, 1, NULL, '2017-11-21 07:27:57', '2017-11-21 07:27:57'),
(150, 87, 20, 0, 1, 3.00, 'Officia autem quia ut.', 0, 0, NULL, 0, NULL, 20, 20, NULL, 265.00, 1, 0, NULL, 'rRZQEKjckk7X0', 0, 1, NULL, '2017-11-19 10:40:23', '2017-11-19 10:40:23'),
(151, 92, 31, 0, 2, 3.00, 'Repellat aut architecto enim.', 0, 0, NULL, 0, NULL, 1, 11, NULL, 7129.00, 1, 0, NULL, 'zvABPLDixjOvA', 0, 1, NULL, '2017-11-26 08:17:46', '2017-11-26 08:17:46'),
(152, 87, 24, 0, 3, 3.00, 'Minima ut hic exercitationem qui accusamus.', 0, 0, NULL, 0, NULL, 7, 139, NULL, 7078.00, 1, 0, NULL, 'gJmjNqyfLRx25', 0, 1, NULL, '2017-12-02 05:45:43', '2017-12-02 05:45:43'),
(153, 34, 41, 0, 2, 3.00, 'Repellat voluptatibus magni et velit consectetur iusto.', 0, 0, NULL, 0, NULL, 8, 159, NULL, 18163.00, 1, 0, NULL, 'RoQV942i3N546', 0, 1, NULL, '2017-11-11 16:43:39', '2017-11-11 16:43:39'),
(154, 42, 43, 0, 2, 2.00, 'Ducimus et eos quod animi.', 0, 0, NULL, 0, NULL, 5, 87, NULL, 5354.00, 1, 0, NULL, '5QRJmoKT1xZ4N', 0, 1, NULL, '2017-11-11 16:44:20', '2017-11-11 16:44:20'),
(155, 7, 27, 0, 5, 1.00, 'Pariatur consectetur possimus vitae reiciendis ex.', 0, 0, NULL, 0, NULL, 4, 64, NULL, 14218.00, 1, 0, NULL, 'wmG42oXfGzjrlg', 0, 1, NULL, '2017-11-23 20:38:58', '2017-11-23 20:38:58'),
(156, 47, 15, 0, 4, 1.00, 'Nihil asperiores fugit velit quia.', 0, 0, NULL, 0, NULL, 3, 55, NULL, 19123.00, 1, 0, NULL, 'wmX7y6MU1Xxk1', 0, 1, NULL, '2017-11-02 18:40:29', '2017-11-02 18:40:29'),
(157, 52, 26, 0, 4, 1.00, 'Possimus aut tempore eos vero architecto et.', 0, 0, NULL, 0, NULL, 4, 65, NULL, 1848.00, 1, 0, NULL, 'NxKOroRfoyvDw', 0, 1, NULL, '2017-11-13 20:29:10', '2017-11-13 20:29:10'),
(158, 5, 24, 0, 2, 1.00, 'Libero et deleniti libero.', 0, 0, NULL, 0, NULL, 2, 32, NULL, 6947.00, 1, 0, NULL, 'QnGl5vxFkoDJnP', 0, 1, NULL, '2017-11-11 07:41:52', '2017-11-11 07:41:52'),
(159, 98, 31, 0, 1, 2.00, 'Enim dolorum molestiae rem.', 0, 0, NULL, 0, NULL, 2, 27, NULL, 2935.00, 1, 0, NULL, 'WLQWBQlFvK3ED', 0, 1, NULL, '2017-11-17 19:35:10', '2017-11-17 19:35:10'),
(160, 103, 21, 0, 5, 2.00, 'Nemo iusto voluptates est iure cum laborum.', 0, 0, NULL, 0, NULL, 4, 75, NULL, 6048.00, 1, 0, NULL, '1rgyVDkHPZn3Y', 0, 1, NULL, '2017-11-08 19:13:35', '2017-11-08 19:13:35'),
(161, 105, 32, 0, 2, 2.00, 'Voluptatum aliquid unde aliquam voluptatum tempora.', 0, 0, NULL, 0, NULL, 4, 61, NULL, 8076.00, 1, 0, NULL, 'oQE4YmVt08Q7X', 0, 1, NULL, '2017-11-16 19:05:02', '2017-11-16 19:05:02'),
(162, 73, 26, 0, 2, 1.00, 'Aliquid non et error.', 0, 0, NULL, 0, NULL, 2, 28, NULL, 17862.00, 1, 0, NULL, '66KGJrWHoA4NL', 0, 1, NULL, '2017-11-16 09:01:33', '2017-11-16 09:01:33'),
(163, 98, 11, 0, 2, 3.00, 'Maxime voluptatem et quo vero eum omnis.', 0, 0, NULL, 0, NULL, 2, 27, NULL, 2935.00, 1, 0, NULL, 'WLQWBQlFvK3ED', 0, 1, NULL, '2017-11-13 03:56:12', '2017-11-13 03:56:12'),
(164, 74, 30, 0, 4, 1.00, 'Asperiores expedita eligendi porro autem corporis iste.', 0, 0, NULL, 0, NULL, 6, 114, NULL, 11522.00, 1, 0, NULL, 'Ell2vL2u30QVqZ', 0, 1, NULL, '2017-11-05 05:40:40', '2017-11-05 05:40:40'),
(165, 88, 40, 0, 1, 3.00, 'Et temporibus mollitia sed.', 0, 0, NULL, 0, NULL, 9, 175, NULL, 3125.00, 1, 0, NULL, 'wVN2920tGnz35', 0, 1, NULL, '2017-11-09 05:38:41', '2017-11-09 05:38:41'),
(166, 59, 42, 0, 3, 1.00, 'Doloribus doloremque assumenda molestias mollitia.', 0, 0, NULL, 0, NULL, 4, 80, NULL, 9573.00, 1, 0, NULL, 'mwqZq7xtZoZ2N', 0, 1, NULL, '2017-11-27 19:05:50', '2017-11-27 19:05:50'),
(167, 29, 35, 0, 2, 3.00, 'Dolorum officiis ullam sed aperiam velit labore.', 0, 0, NULL, 0, NULL, 6, 112, NULL, 8738.00, 1, 0, NULL, 'G5k0nOWi109wAK', 0, 1, NULL, '2017-11-21 14:30:12', '2017-11-21 14:30:12'),
(168, 17, 5, 0, 4, 3.00, 'Mollitia earum labore voluptatibus voluptatibus earum eos.', 0, 0, NULL, 0, NULL, 1, 20, NULL, 8186.00, 1, 0, NULL, '4QvAKNYC2EwOK', 0, 1, NULL, '2017-11-16 17:40:14', '2017-11-16 17:40:14'),
(169, 74, 20, 0, 2, 2.00, 'Et explicabo repellat atque error provident.', 0, 0, NULL, 0, NULL, 6, 114, NULL, 11522.00, 1, 0, NULL, 'Ell2vL2u30QVqZ', 0, 1, NULL, '2017-11-23 16:35:35', '2017-11-23 16:35:35'),
(170, 59, 18, 0, 2, 2.00, 'Accusantium quod quia nihil ut.', 0, 0, NULL, 0, NULL, 3, 44, NULL, 2310.00, 1, 0, NULL, 'NxKz8n7FqEPV1', 0, 1, NULL, '2017-11-02 09:42:11', '2017-11-02 09:42:11'),
(171, 95, 10, 0, 2, 3.00, 'Quo voluptate consequatur esse sit.', 0, 0, NULL, 0, NULL, 6, 107, NULL, 2184.00, 1, 0, NULL, 'APYZP0RuKLL34', 0, 1, NULL, '2017-11-23 06:09:57', '2017-11-23 06:09:57'),
(172, 42, 40, 0, 1, 1.00, 'Reprehenderit consequatur natus et incidunt.', 0, 0, NULL, 0, NULL, 5, 87, NULL, 5354.00, 1, 0, NULL, '5QRJmoKT1xZ4N', 0, 1, NULL, '2017-11-12 16:24:45', '2017-11-12 16:24:45'),
(173, 79, 40, 0, 5, 3.00, 'Ullam id in quo placeat voluptatem harum.', 0, 0, NULL, 0, NULL, 3, 46, NULL, 10244.00, 1, 0, NULL, 'An9W5LmTwBXrW', 0, 1, NULL, '2017-11-17 10:35:35', '2017-11-17 10:35:35'),
(174, 47, 35, 0, 2, 3.00, 'Eaque expedita rerum quas iure.', 0, 0, NULL, 0, NULL, 3, 55, NULL, 19123.00, 1, 0, NULL, 'wmX7y6MU1Xxk1', 0, 1, NULL, '2017-11-19 17:34:49', '2017-11-19 17:34:49'),
(175, 59, 3, 0, 1, 2.00, 'Voluptas vel cupiditate dolorem.', 0, 0, NULL, 0, NULL, 3, 44, NULL, 2310.00, 1, 0, NULL, 'NxKz8n7FqEPV1', 0, 1, NULL, '2017-11-29 22:31:41', '2017-11-29 22:31:41'),
(176, 45, 26, 0, 4, 2.00, 'Qui est nihil repellendus quo.', 0, 0, NULL, 0, NULL, 8, 152, NULL, 7745.00, 1, 0, NULL, 'NkB4lvKiWwvRD', 0, 1, NULL, '2017-12-01 12:09:27', '2017-12-01 12:09:27'),
(177, 73, 41, 0, 4, 1.00, 'Animi recusandae ipsum dolores.', 0, 0, NULL, 0, NULL, 5, 88, NULL, 1728.00, 1, 0, NULL, '0grBDLjTGgy3JK', 0, 1, NULL, '2017-11-22 06:50:42', '2017-11-22 06:50:42'),
(178, 74, 19, 0, 1, 2.00, 'Voluptatem repellat laudantium sed corporis et quo.', 0, 0, NULL, 0, NULL, 6, 114, NULL, 11522.00, 1, 0, NULL, 'Ell2vL2u30QVqZ', 0, 1, NULL, '2017-11-12 20:25:41', '2017-11-12 20:25:41'),
(179, 54, 35, 0, 4, 2.00, 'Doloribus ut ad omnis dolorem incidunt.', 0, 0, NULL, 0, NULL, 3, 45, NULL, 19581.00, 1, 0, NULL, '6X1NkrVfD0qRX', 0, 1, NULL, '2017-11-02 21:51:04', '2017-11-02 21:51:04'),
(180, 28, 12, 0, 3, 2.00, 'Fugit fugiat id est quia expedita.', 0, 0, NULL, 0, NULL, 2, 2, NULL, 600.00, 1, 0, NULL, '0VxRVgYhQW5B', 0, 1, NULL, '2017-11-29 11:33:05', '2017-11-29 11:33:05'),
(181, 90, 43, 0, 4, 2.00, 'Mollitia tenetur labore voluptates.', 0, 0, NULL, 0, NULL, 6, 118, NULL, 7313.00, 1, 0, NULL, 'j2y6KW6hnRL2M9', 0, 1, NULL, '2017-11-03 19:09:25', '2017-11-03 19:09:25'),
(182, 82, 14, 0, 5, 3.00, 'Quod eos est voluptatem.', 0, 0, NULL, 0, NULL, 2, 26, NULL, 12137.00, 1, 0, NULL, 'L7RY38wFzDPRr', 0, 1, NULL, '2017-11-08 19:06:35', '2017-11-08 19:06:35'),
(183, 40, 35, 0, 2, 3.00, 'Molestias consequuntur qui pariatur quaerat quas amet.', 0, 0, NULL, 0, NULL, 1, 1, NULL, 19406.00, 1, 0, NULL, 'O700Xj8flDz4R', 0, 1, NULL, '2017-11-24 06:44:47', '2017-11-24 06:44:47'),
(184, 36, 16, 0, 2, 1.00, 'Explicabo quo est id et quis.', 0, 0, NULL, 0, NULL, 10, 182, NULL, 11541.00, 1, 0, NULL, '0gED7NkfGrmVp6', 0, 1, NULL, '2017-11-21 16:10:56', '2017-11-21 16:10:56'),
(185, 106, 24, 0, 4, 1.00, 'Est cupiditate labore dolores rem ea alias.', 0, 0, NULL, 0, NULL, 4, 76, NULL, 3836.00, 1, 0, NULL, 'DkJZ10Au5jLD4P', 0, 1, NULL, '2017-11-04 00:11:27', '2017-11-04 00:11:27'),
(186, 65, 25, 0, 1, 1.00, 'Hic voluptatem et est.', 0, 0, NULL, 0, NULL, 3, 50, NULL, 6215.00, 1, 0, NULL, 'E9Ej9P9FKWJGg', 0, 1, NULL, '2017-11-24 11:55:04', '2017-11-24 11:55:04'),
(187, 90, 37, 0, 5, 3.00, 'Cum officiis commodi est sint est in.', 0, 0, NULL, 0, NULL, 6, 118, NULL, 7313.00, 1, 0, NULL, 'j2y6KW6hnRL2M9', 0, 1, NULL, '2017-11-02 23:28:53', '2017-11-02 23:28:53'),
(188, 88, 29, 0, 5, 2.00, 'Assumenda id aperiam itaque dignissimos sint voluptatem.', 0, 0, NULL, 0, NULL, 9, 175, NULL, 3125.00, 1, 0, NULL, 'wVN2920tGnz35', 0, 1, NULL, '2017-12-01 05:41:41', '2017-12-01 05:41:41'),
(189, 27, 33, 0, 2, 1.00, 'Ea incidunt ad dolorum quam.', 0, 0, NULL, 0, NULL, 8, 149, NULL, 17698.00, 1, 0, NULL, 'k5JMRmmULr2G8', 0, 1, NULL, '2017-11-28 01:25:46', '2017-11-28 01:25:46'),
(190, 47, 38, 0, 1, 3.00, 'Omnis natus iure expedita.', 0, 0, NULL, 0, NULL, 8, 146, NULL, 12389.00, 1, 0, NULL, '31m1Zwpup2ERLD', 0, 1, NULL, '2017-11-19 23:39:46', '2017-11-19 23:39:46'),
(191, 63, 26, 0, 2, 1.00, 'In aspernatur a sunt eos aut.', 0, 0, NULL, 0, NULL, 8, 141, NULL, 14915.00, 1, 0, NULL, '71AgYn4tAQM7x4', 0, 1, NULL, '2017-12-02 01:24:39', '2017-12-02 01:24:39'),
(192, 13, 33, 0, 4, 3.00, 'Ut provident quis necessitatibus.', 0, 0, NULL, 0, NULL, 7, 135, NULL, 8725.00, 1, 0, NULL, '48rm6zKH311Ay', 0, 1, NULL, '2017-11-19 14:59:04', '2017-11-19 14:59:04'),
(193, 75, 1, 0, 2, 1.00, 'Mollitia nobis sint odit veritatis laudantium ut.', 0, 0, NULL, 0, NULL, 5, 82, NULL, 14913.00, 1, 0, NULL, 'lOpMAgXFjM47', 0, 1, NULL, '2017-12-01 09:50:28', '2017-12-01 09:50:28'),
(194, 86, 8, 0, 1, 3.00, 'Non eius qui dolore.', 0, 0, NULL, 0, NULL, 7, 121, NULL, 14059.00, 1, 0, NULL, 'P7KV1XZS7AJPN', 0, 1, NULL, '2017-11-21 15:09:07', '2017-11-21 15:09:07'),
(195, 17, 32, 0, 2, 1.00, 'Pariatur eaque numquam aut molestiae aut.', 0, 0, NULL, 0, NULL, 1, 20, NULL, 8186.00, 1, 0, NULL, '4QvAKNYC2EwOK', 0, 1, NULL, '2017-12-01 13:28:56', '2017-12-01 13:28:56'),
(196, 106, 22, 0, 3, 2.00, 'Et unde error ducimus officiis est aut.', 0, 0, NULL, 0, NULL, 4, 76, NULL, 3836.00, 1, 0, NULL, 'DkJZ10Au5jLD4P', 0, 1, NULL, '2017-11-25 12:50:57', '2017-11-25 12:50:57'),
(197, 63, 11, 0, 4, 3.00, 'Et asperiores debitis a.', 0, 0, NULL, 0, NULL, 8, 141, NULL, 14915.00, 1, 0, NULL, '71AgYn4tAQM7x4', 0, 1, NULL, '2017-11-11 23:40:57', '2017-11-11 23:40:57'),
(198, 16, 1, 0, 2, 2.00, 'In et nulla tempore fuga harum ratione.', 0, 0, NULL, 0, NULL, 2, 21, NULL, 11372.00, 1, 0, NULL, 'yojK0wEIrLrkjY', 0, 1, NULL, '2017-11-04 13:22:49', '2017-11-04 13:22:49'),
(199, 103, 40, 0, 5, 2.00, 'Magnam quae ex distinctio quisquam nihil veniam.', 0, 0, NULL, 0, NULL, 5, 82, NULL, 1145.00, 1, 0, NULL, 'JZAXywJhJj147', 0, 1, NULL, '2017-11-21 11:08:09', '2017-11-21 11:08:09'),
(200, 33, 22, 0, 1, 3.00, 'Eum voluptatem accusamus corporis magnam molestiae.', 0, 0, NULL, 0, NULL, 8, 160, NULL, 13074.00, 1, 0, NULL, '68EWzAYczOQBK', 0, 1, NULL, '2017-11-24 13:20:33', '2017-11-24 13:20:33');

-- --------------------------------------------------------

--
-- Table structure for table `invoices`
--

CREATE TABLE `invoices` (
  `id` int(10) UNSIGNED NOT NULL,
  `salesOrderId` int(10) UNSIGNED DEFAULT NULL,
  `invoiceNo` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `contactId` int(10) UNSIGNED DEFAULT NULL,
  `customerId` int(10) UNSIGNED NOT NULL,
  `customerText` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `salesPersonId` int(10) UNSIGNED DEFAULT NULL,
  `salesPersonText` text COLLATE utf8mb4_unicode_ci,
  `paid` tinyint(1) DEFAULT NULL,
  `dueDate` date DEFAULT NULL,
  `invoiceDate` date DEFAULT NULL,
  `invoiceNotes` text COLLATE utf8mb4_unicode_ci,
  `currencyTypeId` int(10) UNSIGNED DEFAULT NULL,
  `currencyTypeText` text COLLATE utf8mb4_unicode_ci,
  `paymentMethod` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `paymentTerms` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `companyId` int(10) UNSIGNED NOT NULL,
  `updatedBy` int(10) UNSIGNED NOT NULL,
  `createdBy` int(10) UNSIGNED NOT NULL,
  `hash` text COLLATE utf8mb4_unicode_ci,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `invoices`
--

INSERT INTO `invoices` (`id`, `salesOrderId`, `invoiceNo`, `contactId`, `customerId`, `customerText`, `salesPersonId`, `salesPersonText`, `paid`, `dueDate`, `invoiceDate`, `invoiceNotes`, `currencyTypeId`, `currencyTypeText`, `paymentMethod`, `paymentTerms`, `companyId`, `updatedBy`, `createdBy`, `hash`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, NULL, 'IN-505', 1, 1, 'Graham-Bednar', 1, 'Dennis Wanyoike', NULL, '2017-12-10', '2017-11-05', NULL, 7, 'USD', 'Cash', '30 Days After Delivery', 1, 0, 1, NULL, NULL, '2017-12-02 08:00:40', '2017-12-02 08:00:40'),
(2, NULL, 'IN-744', 1, 1, 'Metz-Johnson', 1, 'Dennis Wanyoike', NULL, '2017-12-11', '2017-11-16', NULL, 16, 'USD', 'Cash', '30 Days After Delivery', 1, 0, 1, NULL, NULL, '2017-12-02 08:00:40', '2017-12-02 08:00:40'),
(3, NULL, 'IN-638', 1, 1, 'Renner, Littel and Waters', 1, 'Dennis Wanyoike', 1, '2017-11-26', '2017-11-05', NULL, 17, 'USD', 'Cash', '30 Days After Delivery', 1, 1, 1, NULL, NULL, '2017-12-02 08:00:40', '2017-12-02 08:02:31'),
(4, NULL, 'IN-140', 1, 1, 'Robel-Kuphal', 1, 'Dennis Wanyoike', NULL, '2017-12-15', '2017-11-19', NULL, 20, 'USD', 'Cash', '30 Days After Delivery', 1, 0, 1, NULL, NULL, '2017-12-02 08:00:41', '2017-12-02 08:00:41'),
(5, NULL, 'IN-316', 1, 1, 'Robel-Kuphal', 1, 'Dennis Wanyoike', NULL, '2017-11-25', '2017-11-06', NULL, 9, 'USD', 'Cash', '30 Days After Delivery', 1, 0, 1, NULL, NULL, '2017-12-02 08:00:41', '2017-12-02 08:00:41'),
(6, NULL, 'IN-438', 1, 1, 'Heathcote-Smith', 1, 'Dennis Wanyoike', NULL, '2017-12-14', '2017-11-18', NULL, 9, 'USD', 'Cash', '30 Days After Delivery', 1, 0, 1, NULL, NULL, '2017-12-02 08:00:41', '2017-12-02 08:00:41'),
(7, NULL, 'IN-448', 1, 1, 'Metz-Johnson', 1, 'Dennis Wanyoike', NULL, '2017-11-30', '2017-11-04', NULL, 16, 'USD', 'Cash', '30 Days After Delivery', 1, 0, 1, NULL, NULL, '2017-12-02 08:00:41', '2017-12-02 08:00:41'),
(8, NULL, 'IN-597', 1, 1, 'Robel-Kuphal', 1, 'Dennis Wanyoike', NULL, '2017-12-06', '2017-11-18', NULL, 15, 'USD', 'Cash', '30 Days After Delivery', 1, 0, 1, NULL, NULL, '2017-12-02 08:00:41', '2017-12-02 08:00:41'),
(9, NULL, 'IN-075', 1, 1, 'Robel-Kuphal', 1, 'Dennis Wanyoike', NULL, '2017-12-10', '2017-11-11', NULL, 13, 'USD', 'Cash', '30 Days After Delivery', 1, 0, 1, NULL, NULL, '2017-12-02 08:00:41', '2017-12-02 08:00:41'),
(10, NULL, 'IN-410', 1, 1, 'Connelly, Nienow and Herzog', 1, 'Dennis Wanyoike', NULL, '2017-12-16', '2017-11-19', NULL, 7, 'USD', 'Cash', '30 Days After Delivery', 1, 0, 1, NULL, NULL, '2017-12-02 08:00:41', '2017-12-02 08:00:41'),
(11, NULL, 'IN-956', 1, 1, 'Metz-Johnson', 1, 'Dennis Wanyoike', 1, '2017-11-30', '2017-11-19', NULL, 2, 'USD', 'Cash', '30 Days After Delivery', 1, 1, 1, NULL, NULL, '2017-12-02 08:00:41', '2017-12-02 08:02:31'),
(12, NULL, 'IN-766', 1, 1, 'Roob-Effertz', 1, 'Dennis Wanyoike', NULL, '2017-12-20', '2017-11-13', NULL, 7, 'USD', 'Cash', '30 Days After Delivery', 1, 0, 1, NULL, NULL, '2017-12-02 08:00:41', '2017-12-02 08:00:41'),
(13, NULL, 'IN-778', 1, 1, 'Gibson-Spinka', 1, 'Dennis Wanyoike', NULL, '2017-11-28', '2017-11-11', NULL, 11, 'USD', 'Cash', '30 Days After Delivery', 1, 0, 1, NULL, NULL, '2017-12-02 08:00:41', '2017-12-02 08:00:41'),
(14, NULL, 'IN-567', 1, 1, 'Kris-Dicki', 1, 'Dennis Wanyoike', NULL, '2017-12-13', '2017-11-11', NULL, 2, 'USD', 'Cash', '30 Days After Delivery', 1, 0, 1, NULL, NULL, '2017-12-02 08:00:41', '2017-12-02 08:00:41'),
(15, NULL, 'IN-345', 1, 1, 'Gibson-Spinka', 1, 'Dennis Wanyoike', NULL, '2017-12-03', '2017-11-14', NULL, 13, 'USD', 'Cash', '30 Days After Delivery', 1, 0, 1, NULL, NULL, '2017-12-02 08:00:41', '2017-12-02 08:00:41'),
(16, NULL, 'IN-834', 1, 1, 'Robel-Kuphal', 1, 'Dennis Wanyoike', NULL, '2017-12-10', '2017-11-17', NULL, 19, 'USD', 'Cash', '30 Days After Delivery', 1, 0, 1, NULL, NULL, '2017-12-02 08:00:41', '2017-12-02 08:00:41'),
(17, NULL, 'IN-750', 1, 1, 'Kris-Dicki', 1, 'Dennis Wanyoike', NULL, '2017-12-05', '2017-11-21', NULL, 10, 'USD', 'Cash', '30 Days After Delivery', 1, 0, 1, NULL, NULL, '2017-12-02 08:00:41', '2017-12-02 08:00:41'),
(18, NULL, 'IN-709', 1, 1, 'Heathcote-Smith', 1, 'Dennis Wanyoike', NULL, '2017-11-23', '2017-11-20', NULL, 11, 'USD', 'Cash', '30 Days After Delivery', 1, 0, 1, NULL, NULL, '2017-12-02 08:00:41', '2017-12-02 08:00:41'),
(19, NULL, 'IN-181', 1, 1, 'Kris-Dicki', 1, 'Dennis Wanyoike', NULL, '2017-12-05', '2017-11-18', NULL, 5, 'USD', 'Cash', '30 Days After Delivery', 1, 0, 1, NULL, NULL, '2017-12-02 08:00:41', '2017-12-02 08:00:41'),
(20, NULL, 'IN-612', 1, 1, 'Lakin-Nitzsche', 1, 'Dennis Wanyoike', NULL, '2017-11-21', '2017-11-20', NULL, 19, 'USD', 'Cash', '30 Days After Delivery', 1, 0, 1, NULL, NULL, '2017-12-02 08:00:41', '2017-12-02 08:00:41'),
(21, NULL, 'IN-323', 3, 2, 'Heathcote-Smith', 1, 'Dennis Wanyoike', NULL, '2017-12-21', '2017-11-11', NULL, 14, 'USD', 'Cash', '30 Days After Delivery', 1, 0, 1, NULL, NULL, '2017-12-02 08:01:10', '2017-12-02 08:01:10'),
(22, NULL, 'IN-632', 14, 4, 'Robel-Kuphal', 1, 'Dennis Wanyoike', NULL, '2017-12-20', '2017-11-04', NULL, 10, 'USD', 'Cash', '30 Days After Delivery', 1, 0, 1, NULL, NULL, '2017-12-02 08:01:10', '2017-12-02 08:01:10'),
(23, NULL, 'IN-138', 3, 2, 'Heathcote-Smith', 1, 'Dennis Wanyoike', NULL, '2017-11-21', '2017-11-12', NULL, 20, 'USD', 'Cash', '30 Days After Delivery', 1, 0, 1, NULL, NULL, '2017-12-02 08:01:10', '2017-12-02 08:01:10'),
(24, NULL, 'IN-043', 3, 2, 'Heathcote-Smith', 1, 'Dennis Wanyoike', NULL, '2017-12-20', '2017-11-16', NULL, 4, 'USD', 'Cash', '30 Days After Delivery', 1, 0, 1, NULL, NULL, '2017-12-02 08:01:10', '2017-12-02 08:01:10'),
(25, NULL, 'IN-569', 3, 2, 'Heathcote-Smith', 1, 'Dennis Wanyoike', NULL, '2017-11-25', '2017-11-07', NULL, 16, 'USD', 'Cash', '30 Days After Delivery', 1, 0, 1, NULL, NULL, '2017-12-02 08:01:10', '2017-12-02 08:01:10'),
(26, NULL, 'IN-937', 64, 9, 'Kris-Dicki', 1, 'Dennis Wanyoike', NULL, '2017-12-01', '2017-11-12', NULL, 15, 'USD', 'Cash', '30 Days After Delivery', 1, 0, 1, NULL, NULL, '2017-12-02 08:01:10', '2017-12-02 08:01:10'),
(27, NULL, 'IN-717', 3, 2, 'Heathcote-Smith', 1, 'Dennis Wanyoike', NULL, '2017-11-28', '2017-11-08', NULL, 20, 'USD', 'Cash', '30 Days After Delivery', 1, 0, 1, NULL, NULL, '2017-12-02 08:01:10', '2017-12-02 08:01:10'),
(28, NULL, 'IN-808', 44, 7, 'Graham-Bednar', 1, 'Dennis Wanyoike', 1, '2017-11-29', '2017-11-21', NULL, 9, 'USD', 'Cash', '30 Days After Delivery', 1, 1, 1, NULL, NULL, '2017-12-02 08:01:10', '2017-12-02 08:02:31'),
(29, NULL, 'IN-553', 1, 1, 'Gibson-Spinka', 1, 'Dennis Wanyoike', NULL, '2017-12-06', '2017-11-07', NULL, 19, 'USD', 'Cash', '30 Days After Delivery', 1, 0, 1, NULL, NULL, '2017-12-02 08:01:11', '2017-12-02 08:01:11'),
(30, NULL, 'IN-783', 64, 9, 'Kris-Dicki', 1, 'Dennis Wanyoike', NULL, '2017-12-20', '2017-11-05', NULL, 15, 'USD', 'Cash', '30 Days After Delivery', 1, 0, 1, NULL, NULL, '2017-12-02 08:01:11', '2017-12-02 08:01:11'),
(31, NULL, 'IN-201', 54, 8, 'Lakin-Nitzsche', 1, 'Dennis Wanyoike', NULL, '2017-11-22', '2017-11-21', NULL, 1, 'USD', 'Cash', '30 Days After Delivery', 1, 0, 1, NULL, NULL, '2017-12-02 08:01:11', '2017-12-02 08:01:11'),
(32, NULL, 'IN-297', 1, 1, 'Gibson-Spinka', 1, 'Dennis Wanyoike', NULL, '2017-11-21', '2017-11-10', NULL, 10, 'USD', 'Cash', '30 Days After Delivery', 1, 0, 1, NULL, NULL, '2017-12-02 08:01:11', '2017-12-02 08:01:11'),
(33, NULL, 'IN-498', 74, 10, 'Roob-Effertz', 1, 'Dennis Wanyoike', NULL, '2017-12-01', '2017-11-13', NULL, 8, 'USD', 'Cash', '30 Days After Delivery', 1, 0, 1, NULL, NULL, '2017-12-02 08:01:11', '2017-12-02 08:01:11'),
(34, NULL, 'IN-919', 34, 6, 'Renner, Littel and Waters', 1, 'Dennis Wanyoike', NULL, '2017-12-13', '2017-11-18', NULL, 4, 'USD', 'Cash', '30 Days After Delivery', 1, 0, 1, NULL, NULL, '2017-12-02 08:01:11', '2017-12-02 08:01:11'),
(35, NULL, 'IN-128', 44, 7, 'Graham-Bednar', 1, 'Dennis Wanyoike', 1, '2017-12-17', '2017-11-09', NULL, 10, 'USD', 'Cash', '30 Days After Delivery', 1, 1, 1, NULL, NULL, '2017-12-02 08:01:11', '2017-12-02 08:02:32'),
(36, NULL, 'IN-214', 44, 7, 'Graham-Bednar', 1, 'Dennis Wanyoike', NULL, '2017-12-02', '2017-11-15', NULL, 13, 'USD', 'Cash', '30 Days After Delivery', 1, 0, 1, NULL, NULL, '2017-12-02 08:01:11', '2017-12-02 08:01:11'),
(37, NULL, 'IN-235', 64, 9, 'Kris-Dicki', 1, 'Dennis Wanyoike', NULL, '2017-12-05', '2017-11-04', NULL, 17, 'USD', 'Cash', '30 Days After Delivery', 1, 0, 1, NULL, NULL, '2017-12-02 08:01:11', '2017-12-02 08:01:11'),
(38, NULL, 'IN-230', 3, 2, 'Heathcote-Smith', 1, 'Dennis Wanyoike', NULL, '2017-11-28', '2017-11-18', NULL, 15, 'USD', 'Cash', '30 Days After Delivery', 1, 0, 1, NULL, NULL, '2017-12-02 08:01:11', '2017-12-02 08:01:11'),
(39, NULL, 'IN-927', 1, 1, 'Gibson-Spinka', 1, 'Dennis Wanyoike', NULL, '2017-12-14', '2017-11-07', NULL, 4, 'USD', 'Cash', '30 Days After Delivery', 1, 0, 1, NULL, NULL, '2017-12-02 08:01:11', '2017-12-02 08:01:11'),
(40, NULL, 'IN-679', 34, 6, 'Renner, Littel and Waters', 1, 'Dennis Wanyoike', NULL, '2017-11-25', '2017-11-20', NULL, 18, 'USD', 'Cash', '30 Days After Delivery', 1, 0, 1, NULL, NULL, '2017-12-02 08:01:11', '2017-12-02 08:01:11'),
(41, NULL, 'IN-986', 3, 2, 'Heathcote-Smith', 1, 'Dennis Wanyoike', NULL, '2017-12-06', '2017-11-21', NULL, 18, 'USD', 'Cash', '30 Days After Delivery', 1, 0, 1, NULL, NULL, '2017-12-02 08:01:11', '2017-12-02 08:01:11'),
(42, NULL, 'IN-937', 1, 1, 'Gibson-Spinka', 1, 'Dennis Wanyoike', NULL, '2017-11-22', '2017-11-14', NULL, 18, 'USD', 'Cash', '30 Days After Delivery', 1, 0, 1, NULL, NULL, '2017-12-02 08:01:11', '2017-12-02 08:01:11'),
(43, NULL, 'IN-168', 14, 4, 'Robel-Kuphal', 1, 'Dennis Wanyoike', NULL, '2017-12-14', '2017-11-07', NULL, 8, 'USD', 'Cash', '30 Days After Delivery', 1, 0, 1, NULL, NULL, '2017-12-02 08:01:11', '2017-12-02 08:01:11'),
(44, NULL, 'IN-521', 74, 10, 'Roob-Effertz', 1, 'Dennis Wanyoike', 1, '2017-11-24', '2017-11-04', NULL, 10, 'USD', 'Cash', '30 Days After Delivery', 1, 1, 1, NULL, NULL, '2017-12-02 08:01:11', '2017-12-02 08:02:32'),
(45, NULL, 'IN-138', 54, 8, 'Lakin-Nitzsche', 1, 'Dennis Wanyoike', NULL, '2017-12-15', '2017-11-07', NULL, 7, 'USD', 'Cash', '30 Days After Delivery', 1, 0, 1, NULL, NULL, '2017-12-02 08:01:11', '2017-12-02 08:01:11'),
(46, NULL, 'IN-491', 1, 1, 'Gibson-Spinka', 1, 'Dennis Wanyoike', 1, '2017-12-02', '2017-11-08', NULL, 9, 'USD', 'Cash', '30 Days After Delivery', 1, 1, 1, NULL, NULL, '2017-12-02 08:01:11', '2017-12-02 08:02:31'),
(47, NULL, 'IN-894', 34, 6, 'Renner, Littel and Waters', 1, 'Dennis Wanyoike', 1, '2017-11-23', '2017-11-20', NULL, 12, 'USD', 'Cash', '30 Days After Delivery', 1, 1, 1, NULL, NULL, '2017-12-02 08:01:11', '2017-12-02 08:02:31'),
(48, NULL, 'IN-148', 4, 3, 'Metz-Johnson', 1, 'Dennis Wanyoike', NULL, '2017-12-06', '2017-11-02', NULL, 11, 'USD', 'Cash', '30 Days After Delivery', 1, 0, 1, NULL, NULL, '2017-12-02 08:01:11', '2017-12-02 08:01:11'),
(49, NULL, 'IN-799', 1, 1, 'Gibson-Spinka', 1, 'Dennis Wanyoike', NULL, '2017-11-24', '2017-11-10', NULL, 18, 'USD', 'Cash', '30 Days After Delivery', 1, 0, 1, NULL, NULL, '2017-12-02 08:01:12', '2017-12-02 08:01:12'),
(50, NULL, 'IN-673', 3, 2, 'Heathcote-Smith', 1, 'Dennis Wanyoike', 1, '2017-12-08', '2017-11-13', NULL, 5, 'USD', 'Cash', '30 Days After Delivery', 1, 1, 1, NULL, NULL, '2017-12-02 08:01:12', '2017-12-02 08:02:32'),
(51, NULL, 'IN-642', 44, 7, 'Graham-Bednar', 1, 'Dennis Wanyoike', NULL, '2017-12-14', '2017-11-02', NULL, 7, 'USD', 'Cash', '30 Days After Delivery', 1, 0, 1, NULL, NULL, '2017-12-02 08:01:12', '2017-12-02 08:01:12'),
(52, NULL, 'IN-859', 1, 1, 'Gibson-Spinka', 1, 'Dennis Wanyoike', NULL, '2017-11-28', '2017-11-07', NULL, 1, 'USD', 'Cash', '30 Days After Delivery', 1, 0, 1, NULL, NULL, '2017-12-02 08:01:12', '2017-12-02 08:01:12'),
(53, NULL, 'IN-552', 34, 6, 'Renner, Littel and Waters', 1, 'Dennis Wanyoike', NULL, '2017-12-10', '2017-11-04', NULL, 2, 'USD', 'Cash', '30 Days After Delivery', 1, 0, 1, NULL, NULL, '2017-12-02 08:01:12', '2017-12-02 08:01:12'),
(54, NULL, 'IN-151', 74, 10, 'Roob-Effertz', 1, 'Dennis Wanyoike', NULL, '2017-12-09', '2017-11-12', NULL, 8, 'USD', 'Cash', '30 Days After Delivery', 1, 0, 1, NULL, NULL, '2017-12-02 08:01:12', '2017-12-02 08:01:12'),
(55, NULL, 'IN-706', 74, 10, 'Roob-Effertz', 1, 'Dennis Wanyoike', NULL, '2017-12-13', '2017-11-17', NULL, 18, 'USD', 'Cash', '30 Days After Delivery', 1, 0, 1, NULL, NULL, '2017-12-02 08:01:12', '2017-12-02 08:01:12'),
(56, NULL, 'IN-309', 64, 9, 'Kris-Dicki', 1, 'Dennis Wanyoike', NULL, '2017-11-24', '2017-11-21', NULL, 20, 'USD', 'Cash', '30 Days After Delivery', 1, 0, 1, NULL, NULL, '2017-12-02 08:01:12', '2017-12-02 08:01:12'),
(57, NULL, 'IN-087', 64, 9, 'Kris-Dicki', 1, 'Dennis Wanyoike', NULL, '2017-12-10', '2017-11-17', NULL, 13, 'USD', 'Cash', '30 Days After Delivery', 1, 0, 1, NULL, NULL, '2017-12-02 08:01:12', '2017-12-02 08:01:12'),
(58, NULL, 'IN-867', 1, 1, 'Gibson-Spinka', 1, 'Dennis Wanyoike', NULL, '2017-12-20', '2017-11-02', NULL, 1, 'USD', 'Cash', '30 Days After Delivery', 1, 0, 1, NULL, NULL, '2017-12-02 08:01:12', '2017-12-02 08:01:12'),
(59, NULL, 'IN-004', 64, 9, 'Kris-Dicki', 1, 'Dennis Wanyoike', NULL, '2017-11-28', '2017-11-13', NULL, 10, 'USD', 'Cash', '30 Days After Delivery', 1, 0, 1, NULL, NULL, '2017-12-02 08:01:12', '2017-12-02 08:01:12'),
(60, NULL, 'IN-667', 4, 3, 'Metz-Johnson', 1, 'Dennis Wanyoike', NULL, '2017-12-16', '2017-11-17', NULL, 18, 'USD', 'Cash', '30 Days After Delivery', 1, 0, 1, NULL, NULL, '2017-12-02 08:01:12', '2017-12-02 08:01:12'),
(61, NULL, 'IN-893', 4, 3, 'Metz-Johnson', 1, 'Dennis Wanyoike', 1, '2017-11-22', '2017-11-14', NULL, 10, 'USD', 'Cash', '30 Days After Delivery', 1, 1, 1, NULL, NULL, '2017-12-02 08:01:12', '2017-12-02 08:02:32'),
(62, NULL, 'IN-848', 24, 5, 'Connelly, Nienow and Herzog', 1, 'Dennis Wanyoike', NULL, '2017-12-02', '2017-11-16', NULL, 20, 'USD', 'Cash', '30 Days After Delivery', 1, 0, 1, NULL, NULL, '2017-12-02 08:01:12', '2017-12-02 08:01:12'),
(63, NULL, 'IN-963', 64, 9, 'Kris-Dicki', 1, 'Dennis Wanyoike', 1, '2017-12-18', '2017-11-15', NULL, 20, 'USD', 'Cash', '30 Days After Delivery', 1, 1, 1, NULL, NULL, '2017-12-02 08:01:12', '2017-12-02 08:02:32'),
(64, NULL, 'IN-880', 44, 7, 'Graham-Bednar', 1, 'Dennis Wanyoike', NULL, '2017-12-07', '2017-11-14', NULL, 19, 'USD', 'Cash', '30 Days After Delivery', 1, 0, 1, NULL, NULL, '2017-12-02 08:01:12', '2017-12-02 08:01:12'),
(65, NULL, 'IN-982', 34, 6, 'Renner, Littel and Waters', 1, 'Dennis Wanyoike', NULL, '2017-12-14', '2017-11-19', NULL, 17, 'USD', 'Cash', '30 Days After Delivery', 1, 0, 1, NULL, NULL, '2017-12-02 08:01:12', '2017-12-02 08:01:12'),
(66, NULL, 'IN-731', 3, 2, 'Heathcote-Smith', 1, 'Dennis Wanyoike', 1, '2017-12-19', '2017-11-17', NULL, 15, 'USD', 'Cash', '30 Days After Delivery', 1, 1, 1, NULL, NULL, '2017-12-02 08:01:12', '2017-12-02 08:02:32'),
(67, NULL, 'IN-273', 44, 7, 'Graham-Bednar', 1, 'Dennis Wanyoike', NULL, '2017-12-16', '2017-11-11', NULL, 15, 'USD', 'Cash', '30 Days After Delivery', 1, 0, 1, NULL, NULL, '2017-12-02 08:01:12', '2017-12-02 08:01:12'),
(68, NULL, 'IN-754', 64, 9, 'Kris-Dicki', 1, 'Dennis Wanyoike', NULL, '2017-12-14', '2017-11-05', NULL, 8, 'USD', 'Cash', '30 Days After Delivery', 1, 0, 1, NULL, NULL, '2017-12-02 08:01:13', '2017-12-02 08:01:13'),
(69, NULL, 'IN-497', 14, 4, 'Robel-Kuphal', 1, 'Dennis Wanyoike', NULL, '2017-12-16', '2017-11-07', NULL, 1, 'USD', 'Cash', '30 Days After Delivery', 1, 0, 1, NULL, NULL, '2017-12-02 08:01:13', '2017-12-02 08:01:13'),
(70, NULL, 'IN-134', 3, 2, 'Heathcote-Smith', 1, 'Dennis Wanyoike', NULL, '2017-12-07', '2017-11-16', NULL, 7, 'USD', 'Cash', '30 Days After Delivery', 1, 0, 1, NULL, NULL, '2017-12-02 08:01:13', '2017-12-02 08:01:13');

-- --------------------------------------------------------

--
-- Table structure for table `invoice_items`
--

CREATE TABLE `invoice_items` (
  `id` int(10) UNSIGNED NOT NULL,
  `invoiceId` int(10) UNSIGNED NOT NULL,
  `productId` int(10) UNSIGNED NOT NULL,
  `binLocation` int(10) UNSIGNED NOT NULL,
  `productDescription` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `quantity` double(15,2) DEFAULT NULL,
  `returned` double(15,2) DEFAULT NULL,
  `sellingPrice` double(15,2) DEFAULT NULL,
  `convertedPrice` double(15,2) DEFAULT NULL,
  `convertedRate` double(15,2) DEFAULT NULL,
  `tax` double(15,2) DEFAULT NULL,
  `taxRate` double(15,2) DEFAULT NULL,
  `total` double(15,2) DEFAULT NULL,
  `discount` double(15,2) DEFAULT NULL,
  `locationHash` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `hash` text COLLATE utf8mb4_unicode_ci,
  `taxable` tinyint(1) NOT NULL,
  `companyId` int(10) UNSIGNED NOT NULL,
  `updatedBy` int(10) UNSIGNED NOT NULL,
  `createdBy` int(10) UNSIGNED NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `invoice_items`
--

INSERT INTO `invoice_items` (`id`, `invoiceId`, `productId`, `binLocation`, `productDescription`, `quantity`, `returned`, `sellingPrice`, `convertedPrice`, `convertedRate`, `tax`, `taxRate`, `total`, `discount`, `locationHash`, `hash`, `taxable`, `companyId`, `updatedBy`, `createdBy`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 1, 61, 60, 'CE505A', 1.00, NULL, 118.00, 118.00, 0.00, 21.90, 16.00, 139.90, 0.00, 'qxDMllGT8kPm4m', 'oejRfOBe', 1, 1, 1, 1, NULL, '2017-12-02 08:00:42', '2017-12-02 08:00:42'),
(2, 1, 77, 110, 'Clip boards', 1.00, NULL, 129.00, 129.00, 0.00, 23.94, 16.00, 152.94, 0.00, 'WLVAyZnhGnZoo', 'MaxGhvre', 1, 1, 1, 1, NULL, '2017-12-02 08:00:42', '2017-12-02 08:00:42'),
(3, 1, 16, 21, 'PAPER CLIPS 33MM', 1.00, NULL, 129.00, 129.00, 0.00, 23.94, 16.00, 152.94, 0.00, 'yojK0wEIrLrkjY', 'leXoiq9d', 1, 1, 1, 1, NULL, '2017-12-02 08:00:42', '2017-12-02 08:00:42'),
(4, 1, 58, 111, 'CE311', 1.00, NULL, 249.00, 249.00, 0.00, 46.21, 16.00, 295.21, 0.00, 'wj904j1SWxgz5', 'XdL7sG9b', 1, 1, 1, 1, NULL, '2017-12-02 08:00:42', '2017-12-02 08:00:42'),
(5, 1, 3, 44, '2QUIRE COUNTER BOOKS', 1.00, NULL, 157.00, 157.00, 0.00, 29.14, 16.00, 186.14, 0.00, 'nZ8mRkGuApyNz', 'rb6WtwRd', 1, 1, 1, 1, NULL, '2017-12-02 08:00:42', '2017-12-02 08:00:42'),
(6, 1, 54, 55, 'Hp541A', 1.00, NULL, 230.00, 230.00, 0.00, 42.69, 16.00, 272.69, 0.00, 'ERQNrn7ingJAn', 'zb8Muqod', 1, 1, 1, 1, NULL, '2017-12-02 08:00:42', '2017-12-02 08:00:42'),
(7, 1, 72, 46, 'A5Khaki brown  envelopes', 1.00, NULL, 237.00, 237.00, 0.00, 43.99, 16.00, 280.99, 0.00, 'GZABXvytJNEgr', 'jb2WCE0d', 1, 1, 1, 1, NULL, '2017-12-02 08:00:42', '2017-12-02 08:00:42'),
(8, 1, 13, 135, 'PRINTING PAPERS', 1.00, NULL, 139.00, 139.00, 0.00, 25.80, 16.00, 164.80, 0.00, '48rm6zKH311Ay', 'PbkoFvEb', 1, 1, 1, 1, NULL, '2017-12-02 08:00:42', '2017-12-02 08:00:42'),
(9, 1, 62, 102, 'CE285A', 1.00, NULL, 240.00, 240.00, 0.00, 44.54, 16.00, 284.54, 0.00, 'yoWk3Q2iWXlz9', 'mbm2H9qd', 1, 1, 1, 1, NULL, '2017-12-02 08:00:42', '2017-12-02 08:00:42'),
(10, 1, 8, 192, 'EXPORTS STRONG ROOM RECORD BOOKS', 1.00, NULL, 175.00, 175.00, 0.00, 32.48, 16.00, 207.48, 0.00, '4xO3O4nS0AD02', 'genGIBDa', 1, 1, 1, 1, NULL, '2017-12-02 08:00:42', '2017-12-02 08:00:42'),
(11, 2, 59, 54, 'CE312', 1.00, NULL, 197.00, 197.00, 0.00, 36.56, 16.00, 233.56, 0.00, 'mwqZq7xtZoZ2N', 'KdwRSjpb', 1, 1, 1, 1, NULL, '2017-12-02 08:00:43', '2017-12-02 08:00:43'),
(12, 2, 51, 121, 'Hp322A', 1.00, NULL, 150.00, 150.00, 0.00, 27.84, 16.00, 177.84, 0.00, 'ZYLNzqDul8yqV', 'XdLnTZGa', 1, 1, 1, 1, NULL, '2017-12-02 08:00:43', '2017-12-02 08:00:43'),
(13, 2, 102, 136, 'CE 410A', 1.00, NULL, 286.00, 286.00, 0.00, 53.08, 16.00, 339.08, 0.00, 'pgOGm4oHnOjJPE', 'RbD6Uj0e', 1, 1, 1, 1, NULL, '2017-12-02 08:00:43', '2017-12-02 08:00:43'),
(14, 2, 67, 119, 'DL Windowed Envelops', 1.00, NULL, 184.00, 184.00, 0.00, 34.15, 16.00, 218.15, 0.00, '5yAkjO8UPE60v', 'jaK9cnBd', 1, 1, 1, 1, NULL, '2017-12-02 08:00:43', '2017-12-02 08:00:43'),
(15, 2, 106, 76, 'Binder Clipps 51mm', 1.00, NULL, 294.00, 294.00, 0.00, 54.57, 16.00, 348.57, 0.00, 'DkJZ10Au5jLD4P', 'wboJfyKa', 1, 1, 1, 1, NULL, '2017-12-02 08:00:43', '2017-12-02 08:00:43'),
(16, 2, 13, 135, 'PRINTING PAPERS', 1.00, NULL, 139.00, 139.00, 0.00, 25.80, 16.00, 164.80, 0.00, '2kYMql1uAgr8x', 'PeEXhWdp', 1, 1, 1, 1, NULL, '2017-12-02 08:00:43', '2017-12-02 08:00:43'),
(17, 2, 88, 175, 'Paper Tray', 1.00, NULL, 257.00, 257.00, 0.00, 47.70, 16.00, 304.70, 0.00, 'wVN2920tGnz35', 'Be33io1e', 1, 1, 1, 1, NULL, '2017-12-02 08:00:44', '2017-12-02 08:00:44'),
(18, 2, 73, 88, 'safety boots', 1.00, NULL, 205.00, 205.00, 0.00, 38.05, 16.00, 243.05, 0.00, '66KGJrWHoA4NL', 'Wb4ws83a', 1, 1, 1, 1, NULL, '2017-12-02 08:00:44', '2017-12-02 08:00:44'),
(19, 2, 90, 118, 'A4 Laminating pouch', 1.00, NULL, 196.00, 196.00, 0.00, 36.38, 16.00, 232.38, 0.00, 'j2y6KW6hnRL2M9', 'Wb4DtnPb', 1, 1, 1, 1, NULL, '2017-12-02 08:00:44', '2017-12-02 08:00:44'),
(20, 2, 76, 158, 'White board markers', 1.00, NULL, 242.00, 242.00, 0.00, 44.92, 16.00, 286.92, 0.00, 'rR4wDRjFBPEP3', 'genouAxa', 1, 1, 1, 1, NULL, '2017-12-02 08:00:44', '2017-12-02 08:00:44'),
(21, 3, 41, 1, 'PROPERTY DECLARATION BOOKS', 1.00, NULL, 211.00, 211.00, 0.00, 39.16, 16.00, 250.16, 0.00, 'G5DPXpOSn10OE', 'XdLRCKZa', 1, 1, 1, 1, NULL, '2017-12-02 08:00:44', '2017-12-02 08:00:44'),
(22, 3, 66, 5, 'A5 Branded Envelopes', 1.00, NULL, 182.00, 182.00, 0.00, 33.78, 16.00, 215.78, 0.00, 'qxEnLj9t3NA8P', 'yelNFB6b', 1, 1, 1, 1, NULL, '2017-12-02 08:00:44', '2017-12-02 08:00:44'),
(23, 3, 100, 35, 'Ledger book A4 2Q', 1.00, NULL, 155.00, 155.00, 0.00, 28.77, 16.00, 183.77, 0.00, 'xG2qPoOs5PR3g', 'oejKH6ga', 1, 1, 1, 1, NULL, '2017-12-02 08:00:44', '2017-12-02 08:00:44'),
(24, 3, 27, 149, 'SMALL PAPER PUNCH', 1.00, NULL, 238.00, 238.00, 0.00, 44.17, 16.00, 282.17, 0.00, 'k5JMRmmULr2G8', 'jaKVI1ne', 1, 1, 1, 1, NULL, '2017-12-02 08:00:45', '2017-12-02 08:00:45'),
(25, 3, 58, 111, 'CE311', 1.00, NULL, 249.00, 249.00, 0.00, 46.21, 16.00, 295.21, 0.00, '3l47QYOTB0kzZ', 'qdGNSV8b', 1, 1, 1, 1, NULL, '2017-12-02 08:00:45', '2017-12-02 08:00:45'),
(26, 3, 45, 9, 'RUBBER GLOVES', 1.00, NULL, 252.00, 252.00, 0.00, 46.77, 16.00, 298.77, 0.00, 'Qnp1wENtGKJYV', 'rb6wTKld', 1, 1, 1, 1, NULL, '2017-12-02 08:00:45', '2017-12-02 08:00:45'),
(27, 3, 74, 114, 'Rulers', 1.00, NULL, 215.00, 215.00, 0.00, 39.90, 16.00, 254.90, 0.00, 'Ell2vL2u30QVqZ', 'zb8nUlye', 1, 1, 1, 1, NULL, '2017-12-02 08:00:45', '2017-12-02 08:00:45'),
(28, 3, 36, 182, 'DUST BINS', 1.00, NULL, 127.00, 127.00, 0.00, 23.57, 16.00, 150.57, 0.00, '0gED7NkfGrmVp6', 'oejmcL5d', 1, 1, 1, 1, NULL, '2017-12-02 08:00:45', '2017-12-02 08:00:45'),
(29, 3, 23, 191, 'PERMANENT MARKER PENS', 1.00, NULL, 281.00, 281.00, 0.00, 52.15, 16.00, 333.15, 0.00, 'Z4qRvpqHRMrXA', 'jb2BfE3b', 1, 1, 1, 1, NULL, '2017-12-02 08:00:45', '2017-12-02 08:00:45'),
(30, 3, 23, 191, 'PERMANENT MARKER PENS', 1.00, NULL, 281.00, 281.00, 0.00, 52.15, 16.00, 333.15, 0.00, 'K15zAE4fwP7Kw', 'EegohjWe', 1, 1, 1, 1, NULL, '2017-12-02 08:00:45', '2017-12-02 08:00:45'),
(31, 4, 13, 135, 'PRINTING PAPERS', 1.00, NULL, 139.00, 139.00, 0.00, 25.80, 16.00, 164.80, 0.00, '48rm6zKH311Ay', 'XdLEi96e', 1, 1, 1, 1, NULL, '2017-12-02 08:00:46', '2017-12-02 08:00:46'),
(32, 4, 40, 1, 'ULD BOOKS', 1.00, NULL, 145.00, 145.00, 0.00, 26.91, 16.00, 171.91, 0.00, 'O700Xj8flDz4R', 'gep3sDWd', 1, 1, 1, 1, NULL, '2017-12-02 08:00:46', '2017-12-02 08:00:46'),
(33, 4, 102, 136, 'CE 410A', 1.00, NULL, 286.00, 286.00, 0.00, 53.08, 16.00, 339.08, 0.00, '1rmQ798Sj21wO', 'PeE5tgje', 1, 1, 1, 1, NULL, '2017-12-02 08:00:46', '2017-12-02 08:00:46'),
(34, 4, 67, 119, 'DL Windowed Envelops', 1.00, NULL, 184.00, 184.00, 0.00, 34.15, 16.00, 218.15, 0.00, 'KrG0KXxiZ434k', 'Wb4Xu6Eb', 1, 1, 1, 1, NULL, '2017-12-02 08:00:46', '2017-12-02 08:00:46'),
(35, 4, 101, 69, 'Ledger book A4 1Q', 1.00, NULL, 214.00, 214.00, 0.00, 39.72, 16.00, 253.72, 0.00, 'y8lrDm8s2zYXR', 'zaO3Cpga', 1, 1, 1, 1, NULL, '2017-12-02 08:00:46', '2017-12-02 08:00:46'),
(36, 4, 41, 1, 'PROPERTY DECLARATION BOOKS', 1.00, NULL, 211.00, 211.00, 0.00, 39.16, 16.00, 250.16, 0.00, 'G5DPXpOSn10OE', 'VeZPFm9b', 1, 1, 1, 1, NULL, '2017-12-02 08:00:46', '2017-12-02 08:00:46'),
(37, 4, 10, 146, 'A3 KHAKI BROWN ENVELOPES ', 1.00, NULL, 163.00, 163.00, 0.00, 30.25, 16.00, 193.25, 0.00, 'oYOxBZzUrrNGRj', 'Ge7gHn2e', 1, 1, 1, 1, NULL, '2017-12-02 08:00:46', '2017-12-02 08:00:46'),
(38, 4, 49, 79, 'Hp320A', 1.00, NULL, 299.00, 299.00, 0.00, 55.49, 16.00, 354.49, 0.00, '3Qvj4DnTNkKlX', 'XdLjIm3a', 1, 1, 1, 1, NULL, '2017-12-02 08:00:46', '2017-12-02 08:00:46'),
(39, 4, 102, 136, 'CE 410A', 1.00, NULL, 286.00, 286.00, 0.00, 53.08, 16.00, 339.08, 0.00, 'W7mpNJrUAM9Qr', 'EegASv9b', 1, 1, 1, 1, NULL, '2017-12-02 08:00:47', '2017-12-02 08:00:47'),
(40, 4, 46, 93, 'LEATHER GLOVES', 1.00, NULL, 289.00, 289.00, 0.00, 53.64, 16.00, 342.64, 0.00, 'M84N32pS9rJBq', 'mbmATg9b', 1, 1, 1, 1, NULL, '2017-12-02 08:00:47', '2017-12-02 08:00:47'),
(41, 5, 95, 107, 'Pen Holders', 1.00, NULL, 164.00, 164.00, 0.00, 30.44, 16.00, 194.44, 0.00, 'APYZP0RuKLL34', 'Ge7lUKpa', 1, 1, 1, 1, NULL, '2017-12-02 08:00:47', '2017-12-02 08:00:47'),
(42, 5, 105, 61, 'CE413A', 1.00, NULL, 197.00, 197.00, 0.00, 36.56, 16.00, 233.56, 0.00, 'oQE4YmVt08Q7X', '7aAJcN2b', 1, 1, 1, 1, NULL, '2017-12-02 08:00:47', '2017-12-02 08:00:47'),
(43, 5, 52, 65, 'Hp323A', 1.00, NULL, 185.00, 185.00, 0.00, 34.34, 16.00, 219.34, 0.00, 'NxKOroRfoyvDw', 'Be3BfOOd', 1, 1, 1, 1, NULL, '2017-12-02 08:00:47', '2017-12-02 08:00:47'),
(44, 5, 8, 192, 'EXPORTS STRONG ROOM RECORD BOOKS', 1.00, NULL, 175.00, 175.00, 0.00, 32.48, 16.00, 207.48, 0.00, '4xO3O4nS0AD02', 'dBBohBod', 1, 1, 1, 1, NULL, '2017-12-02 08:00:47', '2017-12-02 08:00:47'),
(45, 5, 48, 87, 'Staple Pins Big 66/14', 1.00, NULL, 249.00, 249.00, 0.00, 46.21, 16.00, 295.21, 0.00, 'vg16AOnTpJnK7', 'egJJi7Zd', 1, 1, 1, 1, NULL, '2017-12-02 08:00:47', '2017-12-02 08:00:47'),
(46, 5, 90, 118, 'A4 Laminating pouch', 1.00, NULL, 196.00, 196.00, 0.00, 36.38, 16.00, 232.38, 0.00, 'j2y6KW6hnRL2M9', 'elYOspOa', 1, 1, 1, 1, NULL, '2017-12-02 08:00:47', '2017-12-02 08:00:47'),
(47, 5, 4, 194, 'A4 WRITING PADS', 1.00, NULL, 122.00, 122.00, 0.00, 22.64, 16.00, 144.64, 0.00, 'jZn12JYUONXn3', 'elY5t7ga', 1, 1, 1, 1, NULL, '2017-12-02 08:00:48', '2017-12-02 08:00:48'),
(48, 5, 17, 20, 'PAPER CLIPS  50MM', 1.00, NULL, 204.00, 204.00, 0.00, 37.86, 16.00, 241.86, 0.00, '4QvAKNYC2EwOK', 'dyPourJb', 1, 1, 1, 1, NULL, '2017-12-02 08:00:48', '2017-12-02 08:00:48'),
(49, 5, 45, 9, 'RUBBER GLOVES', 1.00, NULL, 252.00, 252.00, 0.00, 46.77, 16.00, 298.77, 0.00, 'Qnp1wENtGKJYV', 'aOYgC62d', 1, 1, 1, 1, NULL, '2017-12-02 08:00:48', '2017-12-02 08:00:48'),
(50, 5, 78, 178, 'Binding covers', 1.00, NULL, 149.00, 149.00, 0.00, 27.65, 16.00, 176.65, 0.00, '2vxZN6Duw6LR1', 'av28cAVa', 1, 1, 1, 1, NULL, '2017-12-02 08:00:48', '2017-12-02 08:00:48'),
(51, 6, 103, 32, 'CE411A', 1.00, NULL, 264.00, 264.00, 0.00, 49.00, 16.00, 313.00, 0.00, '1rgyVDkHPZn3Y', 'b689Hpoe', 1, 1, 1, 1, NULL, '2017-12-02 08:00:48', '2017-12-02 08:00:48'),
(52, 6, 17, 20, 'PAPER CLIPS  50MM', 1.00, NULL, 204.00, 204.00, 0.00, 37.86, 16.00, 241.86, 0.00, '4QvAKNYC2EwOK', 'erkYIRxa', 1, 1, 1, 1, NULL, '2017-12-02 08:00:48', '2017-12-02 08:00:48'),
(53, 6, 45, 9, 'RUBBER GLOVES', 1.00, NULL, 252.00, 252.00, 0.00, 46.77, 16.00, 298.77, 0.00, 'Qnp1wENtGKJYV', 'bDkYS4Ma', 1, 1, 1, 1, NULL, '2017-12-02 08:00:49', '2017-12-02 08:00:49'),
(54, 6, 13, 135, 'PRINTING PAPERS', 1.00, NULL, 139.00, 139.00, 0.00, 25.80, 16.00, 164.80, 0.00, '48rm6zKH311Ay', 'en5GfJVd', 1, 1, 1, 1, NULL, '2017-12-02 08:00:49', '2017-12-02 08:00:49'),
(55, 6, 4, 194, 'A4 WRITING PADS', 1.00, NULL, 122.00, 122.00, 0.00, 22.64, 16.00, 144.64, 0.00, 'jZn12JYUONXn3', 'e5y1UPDe', 1, 1, 1, 1, NULL, '2017-12-02 08:00:49', '2017-12-02 08:00:49'),
(56, 6, 10, 146, 'A3 KHAKI BROWN ENVELOPES ', 1.00, NULL, 163.00, 163.00, 0.00, 30.25, 16.00, 193.25, 0.00, 'VmpBkq8iwVKVq', 'aKrmcNze', 1, 1, 1, 1, NULL, '2017-12-02 08:00:49', '2017-12-02 08:00:49'),
(57, 6, 66, 5, 'A5 Branded Envelopes', 1.00, NULL, 182.00, 182.00, 0.00, 33.78, 16.00, 215.78, 0.00, 'qxEnLj9t3NA8P', 'bo28Clva', 1, 1, 1, 1, NULL, '2017-12-02 08:00:49', '2017-12-02 08:00:49'),
(58, 6, 86, 121, 'Complimentaries', 1.00, NULL, 314.00, 314.00, 0.00, 58.28, 16.00, 372.28, 0.00, 'oQv50x5C3G9Dp', 'dPNWhqma', 1, 1, 1, 1, NULL, '2017-12-02 08:00:50', '2017-12-02 08:00:50'),
(59, 6, 12, 120, 'A4 BRANDED ENVELOPES', 1.00, NULL, 110.00, 110.00, 0.00, 20.42, 16.00, 130.42, 0.00, '32Y64NJCPv7ZX', 'bDkEi4ga', 1, 1, 1, 1, NULL, '2017-12-02 08:00:50', '2017-12-02 08:00:50'),
(60, 6, 3, 44, '2QUIRE COUNTER BOOKS', 1.00, NULL, 157.00, 157.00, 0.00, 29.14, 16.00, 186.14, 0.00, 'nZ8mRkGuApyNz', 'av2xI7jD', 1, 1, 1, 1, NULL, '2017-12-02 08:00:50', '2017-12-02 08:00:50'),
(61, 7, 35, 111, 'HIGHLIGHTER', 1.00, NULL, 187.00, 187.00, 0.00, 34.71, 16.00, 221.71, 0.00, 'ZV5jj0KhGVwN7', 'dBBvtY9d', 1, 1, 1, 1, NULL, '2017-12-02 08:00:50', '2017-12-02 08:00:50'),
(62, 7, 16, 21, 'PAPER CLIPS 33MM', 1.00, NULL, 129.00, 129.00, 0.00, 23.94, 16.00, 152.94, 0.00, 'yojK0wEIrLrkjY', 'epYKumPa', 1, 1, 1, 1, NULL, '2017-12-02 08:00:50', '2017-12-02 08:00:50'),
(63, 7, 101, 69, 'Ledger book A4 1Q', 1.00, NULL, 214.00, 214.00, 0.00, 39.72, 16.00, 253.72, 0.00, 'y8lrDm8s2zYXR', 'aOYoCVZd', 1, 1, 1, 1, NULL, '2017-12-02 08:00:50', '2017-12-02 08:00:50'),
(64, 7, 51, 121, 'Hp322A', 1.00, NULL, 150.00, 150.00, 0.00, 27.84, 16.00, 177.84, 0.00, 'ZYLNzqDul8yqV', 'b2koFgJd', 1, 1, 1, 1, NULL, '2017-12-02 08:00:51', '2017-12-02 08:00:51'),
(65, 7, 5, 32, 'A5 SHORTHAND BOOKS', 1.00, NULL, 161.00, 161.00, 0.00, 29.88, 16.00, 190.88, 0.00, 'QnGl5vxFkoDJnP', 'aADxH7ke', 1, 1, 1, 1, NULL, '2017-12-02 08:00:51', '2017-12-02 08:00:51'),
(66, 7, 4, 194, 'A4 WRITING PADS', 1.00, NULL, 122.00, 122.00, 0.00, 22.64, 16.00, 144.64, 0.00, 'jZn12JYUONXn3', 'eXD2IL9e', 1, 1, 1, 1, NULL, '2017-12-02 08:00:51', '2017-12-02 08:00:51'),
(67, 7, 80, 88, 'Company Letter Heads', 1.00, NULL, 265.00, 265.00, 0.00, 49.18, 16.00, 314.18, 0.00, 'KZ7qgjNHy7L2Z', 'b82NiD2e', 1, 1, 1, 1, NULL, '2017-12-02 08:00:51', '2017-12-02 08:00:51'),
(68, 7, 35, 111, 'HIGHLIGHTER', 1.00, NULL, 187.00, 187.00, 0.00, 34.71, 16.00, 221.71, 0.00, 'ZV5jj0KhGVwN7', 'b4xyTmmb', 1, 1, 1, 1, NULL, '2017-12-02 08:00:51', '2017-12-02 08:00:51'),
(69, 7, 100, 35, 'Ledger book A4 2Q', 1.00, NULL, 155.00, 155.00, 0.00, 28.77, 16.00, 183.77, 0.00, 'xG2qPoOs5PR3g', 'aQWrU30d', 1, 1, 1, 1, NULL, '2017-12-02 08:00:51', '2017-12-02 08:00:51'),
(70, 7, 60, 181, 'CE313', 1.00, NULL, 117.00, 117.00, 0.00, 21.72, 16.00, 138.72, 0.00, 'mwxzvD7I4ryNw', 'bYEJfmob', 1, 1, 1, 1, NULL, '2017-12-02 08:00:51', '2017-12-02 08:00:51'),
(71, 8, 62, 102, 'CE285A', 1.00, NULL, 240.00, 240.00, 0.00, 44.54, 16.00, 284.54, 0.00, 'ER2NM2PFpJ5x6', 'bqxqfWqa', 1, 1, 1, 1, NULL, '2017-12-02 08:00:52', '2017-12-02 08:00:52'),
(72, 8, 33, 40, 'WHITE OUT', 1.00, NULL, 110.00, 110.00, 0.00, 20.42, 16.00, 130.42, 0.00, '68EWzAYczOQBK', 'dPNohxLa', 1, 1, 1, 1, NULL, '2017-12-02 08:00:52', '2017-12-02 08:00:52'),
(73, 8, 12, 120, 'A4 BRANDED ENVELOPES', 1.00, NULL, 110.00, 110.00, 0.00, 20.42, 16.00, 130.42, 0.00, 'vgEzWyzcYDM7X', 'epY5i1za', 1, 1, 1, 1, NULL, '2017-12-02 08:00:52', '2017-12-02 08:00:52'),
(74, 8, 74, 114, 'Rulers', 1.00, NULL, 215.00, 215.00, 0.00, 39.90, 16.00, 254.90, 0.00, 'Ell2vL2u30QVqZ', 'aKrqs2Ne', 1, 1, 1, 1, NULL, '2017-12-02 08:00:52', '2017-12-02 08:00:52'),
(75, 8, 7, 64, 'IMPORTS STRONG ROOM RECORD BOOKS', 1.00, NULL, 250.00, 250.00, 0.00, 46.40, 16.00, 296.40, 0.00, 'wmG42oXfGzjrlg', 'aQWMtDZd', 1, 1, 1, 1, NULL, '2017-12-02 08:00:53', '2017-12-02 08:00:53'),
(76, 8, 86, 121, 'Complimentaries', 1.00, NULL, 314.00, 314.00, 0.00, 58.28, 16.00, 372.28, 0.00, 'nrQ7VEXI7q32Rm', 'b82JTn9e', 1, 1, 1, 1, NULL, '2017-12-02 08:00:53', '2017-12-02 08:00:53'),
(77, 8, 17, 20, 'PAPER CLIPS  50MM', 1.00, NULL, 204.00, 204.00, 0.00, 37.86, 16.00, 241.86, 0.00, '4QvAKNYC2EwOK', 'epY0CBAa', 1, 1, 1, 1, NULL, '2017-12-02 08:00:53', '2017-12-02 08:00:53'),
(78, 8, 22, 63, 'BIRO PENS RED', 1.00, NULL, 315.00, 315.00, 0.00, 58.46, 16.00, 373.46, 0.00, 'G6DR4yBCRD6wo', 'bo2LcANa', 1, 1, 1, 1, NULL, '2017-12-02 08:00:53', '2017-12-02 08:00:53'),
(79, 8, 17, 20, 'PAPER CLIPS  50MM', 1.00, NULL, 204.00, 204.00, 0.00, 37.86, 16.00, 241.86, 0.00, '4QvAKNYC2EwOK', 'av2GfX5a', 1, 1, 1, 1, NULL, '2017-12-02 08:00:53', '2017-12-02 08:00:53'),
(80, 8, 29, 112, 'RUBBER BANDS', 1.00, NULL, 281.00, 281.00, 0.00, 52.15, 16.00, 333.15, 0.00, 'G5k0nOWi109wAK', 'e31MiPBb', 1, 1, 1, 1, NULL, '2017-12-02 08:00:53', '2017-12-02 08:00:53'),
(81, 9, 49, 79, 'Hp320A', 1.00, NULL, 299.00, 299.00, 0.00, 55.49, 16.00, 354.49, 0.00, '3Qvj4DnTNkKlX', 'en5EcB6d', 1, 1, 1, 1, NULL, '2017-12-02 08:00:53', '2017-12-02 08:00:53'),
(82, 9, 23, 191, 'PERMANENT MARKER PENS', 1.00, NULL, 281.00, 281.00, 0.00, 52.15, 16.00, 333.15, 0.00, 'W6D7EWXFAm0rG', 'eXDycYze', 1, 1, 1, 1, NULL, '2017-12-02 08:00:53', '2017-12-02 08:00:53'),
(83, 9, 90, 118, 'A4 Laminating pouch', 1.00, NULL, 196.00, 196.00, 0.00, 36.38, 16.00, 232.38, 0.00, 'j2y6KW6hnRL2M9', 'e0R5fGDw', 1, 1, 1, 1, NULL, '2017-12-02 08:00:53', '2017-12-02 08:00:53'),
(84, 9, 30, 148, 'STAMP INK', 1.00, NULL, 298.00, 298.00, 0.00, 55.31, 16.00, 353.31, 0.00, 'Jyp7Y77SAy9R', 'b4x5c9Vb', 1, 1, 1, 1, NULL, '2017-12-02 08:00:54', '2017-12-02 08:00:54'),
(85, 9, 35, 111, 'HIGHLIGHTER', 1.00, NULL, 187.00, 187.00, 0.00, 34.71, 16.00, 221.71, 0.00, 'ZV5jj0KhGVwN7', 'bW62iNJa', 1, 1, 1, 1, NULL, '2017-12-02 08:00:54', '2017-12-02 08:00:54'),
(86, 9, 44, 35, 'TRANSGLOBAL TAPES', 1.00, NULL, 157.00, 157.00, 0.00, 29.14, 16.00, 186.14, 0.00, 'ERklPrKT27VzA', 'aKrWhnke', 1, 1, 1, 1, NULL, '2017-12-02 08:00:54', '2017-12-02 08:00:54'),
(87, 9, 100, 35, 'Ledger book A4 2Q', 1.00, NULL, 155.00, 155.00, 0.00, 28.77, 16.00, 183.77, 0.00, 'xG2qPoOs5PR3g', 'ejR7t8qe', 1, 1, 1, 1, NULL, '2017-12-02 08:00:54', '2017-12-02 08:00:54'),
(88, 9, 103, 32, 'CE411A', 1.00, NULL, 264.00, 264.00, 0.00, 49.00, 16.00, 313.00, 0.00, 'rkJD4AXHJ5onj', 'dBgosrre', 1, 1, 1, 1, NULL, '2017-12-02 08:00:54', '2017-12-02 08:00:54'),
(89, 9, 40, 1, 'ULD BOOKS', 1.00, NULL, 145.00, 145.00, 0.00, 26.91, 16.00, 171.91, 0.00, 'O700Xj8flDz4R', 'aAnDtRjb', 1, 1, 1, 1, NULL, '2017-12-02 08:00:54', '2017-12-02 08:00:54'),
(90, 9, 34, 159, 'Glue STICK', 1.00, NULL, 138.00, 138.00, 0.00, 25.61, 16.00, 163.61, 0.00, 'RoQV942i3N546', 'dJZZcYXd', 1, 1, 1, 1, NULL, '2017-12-02 08:00:54', '2017-12-02 08:00:54'),
(91, 10, 63, 141, 'Q7553A', 1.00, NULL, 308.00, 308.00, 0.00, 57.16, 16.00, 365.16, 0.00, '71AgYn4tAQM7x4', 'avgoC5nb', 1, 1, 1, 1, NULL, '2017-12-02 08:00:54', '2017-12-02 08:00:54'),
(92, 10, 74, 114, 'Rulers', 1.00, NULL, 215.00, 215.00, 0.00, 39.90, 16.00, 254.90, 0.00, 'Ell2vL2u30QVqZ', 'e0gYFnmd', 1, 1, 1, 1, NULL, '2017-12-02 08:00:54', '2017-12-02 08:00:54'),
(93, 10, 66, 5, 'A5 Branded Envelopes', 1.00, NULL, 182.00, 182.00, 0.00, 33.78, 16.00, 215.78, 0.00, 'qxEnLj9t3NA8P', 'aMjZHVRb', 1, 1, 1, 1, NULL, '2017-12-02 08:00:55', '2017-12-02 08:00:55'),
(94, 10, 59, 54, 'CE312', 1.00, NULL, 197.00, 197.00, 0.00, 36.56, 16.00, 233.56, 0.00, 'mwqZq7xtZoZ2N', 'dGZMsWMb', 1, 1, 1, 1, NULL, '2017-12-02 08:00:55', '2017-12-02 08:00:55'),
(95, 10, 45, 9, 'RUBBER GLOVES', 1.00, NULL, 252.00, 252.00, 0.00, 46.77, 16.00, 298.77, 0.00, 'NkB4lvKiWwvRD', 'e76XUZPd', 1, 1, 1, 1, NULL, '2017-12-02 08:00:55', '2017-12-02 08:00:55'),
(96, 10, 101, 69, 'Ledger book A4 1Q', 1.00, NULL, 214.00, 214.00, 0.00, 39.72, 16.00, 253.72, 0.00, 'PZm4k28iL9lV9', 'epgzTQ5d', 1, 1, 1, 1, NULL, '2017-12-02 08:00:55', '2017-12-02 08:00:55'),
(97, 10, 42, 87, 'SECURITY DECLARATION BOOKS', 1.00, NULL, 233.00, 233.00, 0.00, 43.24, 16.00, 276.24, 0.00, '5QRJmoKT1xZ4N', 'aKOYsRna', 1, 1, 1, 1, NULL, '2017-12-02 08:00:55', '2017-12-02 08:00:55'),
(98, 10, 59, 54, 'CE312', 1.00, NULL, 197.00, 197.00, 0.00, 36.56, 16.00, 233.56, 0.00, '1WQ40D3cMMppPj', 'dJZEFKJd', 1, 1, 1, 1, NULL, '2017-12-02 08:00:55', '2017-12-02 08:00:55'),
(99, 10, 60, 181, 'CE313', 1.00, NULL, 117.00, 117.00, 0.00, 21.72, 16.00, 138.72, 0.00, 'mwxzvD7I4ryNw', 'eX6kip9b', 1, 1, 1, 1, NULL, '2017-12-02 08:00:56', '2017-12-02 08:00:56'),
(100, 10, 48, 87, 'Staple Pins Big 66/14', 1.00, NULL, 249.00, 249.00, 0.00, 46.21, 16.00, 295.21, 0.00, 'vg16AOnTpJnK7', 'XdLgnh7b', 1, 1, 1, 1, NULL, '2017-12-02 08:00:56', '2017-12-02 08:00:56'),
(101, 11, 98, 27, 'File Dividers', 1.00, NULL, 224.00, 224.00, 0.00, 41.57, 16.00, 265.57, 0.00, 'WLQWBQlFvK3ED', 'e76YtAkd', 1, 1, 1, 1, NULL, '2017-12-02 08:00:56', '2017-12-02 08:00:56'),
(102, 11, 28, 183, 'PENCILS', 1.00, NULL, 312.00, 312.00, 0.00, 57.91, 16.00, 369.91, 0.00, 'R6vwkMpFrpPP9', 'dBg9sm1e', 1, 1, 1, 1, NULL, '2017-12-02 08:00:56', '2017-12-02 08:00:56'),
(103, 11, 30, 148, 'STAMP INK', 1.00, NULL, 298.00, 298.00, 0.00, 55.31, 16.00, 353.31, 0.00, 'r8WvjPGu6DyKm', 'bY6XC9Kd', 1, 1, 1, 1, NULL, '2017-12-02 08:00:56', '2017-12-02 08:00:56'),
(104, 11, 73, 88, 'safety boots', 1.00, NULL, 205.00, 205.00, 0.00, 38.05, 16.00, 243.05, 0.00, '66KGJrWHoA4NL', 'epgofz9d', 1, 1, 1, 1, NULL, '2017-12-02 08:00:56', '2017-12-02 08:00:56'),
(105, 11, 5, 32, 'A5 SHORTHAND BOOKS', 1.00, NULL, 161.00, 161.00, 0.00, 29.88, 16.00, 190.88, 0.00, 'QnGl5vxFkoDJnP', 'er0pH80l', 1, 1, 1, 1, NULL, '2017-12-02 08:00:57', '2017-12-02 08:00:57'),
(106, 11, 10, 146, 'A3 KHAKI BROWN ENVELOPES ', 1.00, NULL, 163.00, 163.00, 0.00, 30.25, 16.00, 193.25, 0.00, 'VmpBkq8iwVKVq', 'dGZxhmDb', 1, 1, 1, 1, NULL, '2017-12-02 08:00:57', '2017-12-02 08:00:57'),
(107, 11, 73, 88, 'safety boots', 1.00, NULL, 205.00, 205.00, 0.00, 38.05, 16.00, 243.05, 0.00, '0RnQmZmh6Ey39', 'avg7sZ7b', 1, 1, 1, 1, NULL, '2017-12-02 08:00:57', '2017-12-02 08:00:57'),
(108, 11, 13, 135, 'PRINTING PAPERS', 1.00, NULL, 139.00, 139.00, 0.00, 25.80, 16.00, 164.80, 0.00, '48rm6zKH311Ay', 'bDR2TzNe', 1, 1, 1, 1, NULL, '2017-12-02 08:00:57', '2017-12-02 08:00:57'),
(109, 11, 88, 175, 'Paper Tray', 1.00, NULL, 257.00, 257.00, 0.00, 47.70, 16.00, 304.70, 0.00, 'wVN2920tGnz35', 'dwjli5Eb', 1, 1, 1, 1, NULL, '2017-12-02 08:00:57', '2017-12-02 08:00:57'),
(110, 11, 45, 9, 'RUBBER GLOVES', 1.00, NULL, 252.00, 252.00, 0.00, 46.77, 16.00, 298.77, 0.00, 'Qnp1wENtGKJYV', 'eZ4NuY3b', 1, 1, 1, 1, NULL, '2017-12-02 08:00:57', '2017-12-02 08:00:57'),
(111, 12, 102, 136, 'CE 410A', 1.00, NULL, 286.00, 286.00, 0.00, 53.08, 16.00, 339.08, 0.00, 'pgOGm4oHnOjJPE', 'eVmjhlod', 1, 1, 1, 1, NULL, '2017-12-02 08:00:57', '2017-12-02 08:00:57'),
(112, 12, 41, 1, 'PROPERTY DECLARATION BOOKS', 1.00, NULL, 211.00, 211.00, 0.00, 39.16, 16.00, 250.16, 0.00, 'G5DPXpOSn10OE', 'bk50uQje', 1, 1, 1, 1, NULL, '2017-12-02 08:00:57', '2017-12-02 08:00:57'),
(113, 12, 5, 32, 'A5 SHORTHAND BOOKS', 1.00, NULL, 161.00, 161.00, 0.00, 29.88, 16.00, 190.88, 0.00, 'QnGl5vxFkoDJnP', 'e76qt9Ed', 1, 1, 1, 1, NULL, '2017-12-02 08:00:58', '2017-12-02 08:00:58'),
(114, 12, 41, 1, 'PROPERTY DECLARATION BOOKS', 1.00, NULL, 211.00, 211.00, 0.00, 39.16, 16.00, 250.16, 0.00, 'G5DPXpOSn10OE', 'dGZkIWYb', 1, 1, 1, 1, NULL, '2017-12-02 08:00:58', '2017-12-02 08:00:58'),
(115, 12, 16, 21, 'PAPER CLIPS 33MM', 1.00, NULL, 129.00, 129.00, 0.00, 23.94, 16.00, 152.94, 0.00, 'yojK0wEIrLrkjY', 'dy8Biy3b', 1, 1, 1, 1, NULL, '2017-12-02 08:00:58', '2017-12-02 08:00:58'),
(116, 12, 106, 76, 'Binder Clipps 51mm', 1.00, NULL, 294.00, 294.00, 0.00, 54.57, 16.00, 348.57, 0.00, 'DkJZ10Au5jLD4P', 'b8qviDwd', 1, 1, 1, 1, NULL, '2017-12-02 08:00:58', '2017-12-02 08:00:58'),
(117, 12, 45, 9, 'RUBBER GLOVES', 1.00, NULL, 252.00, 252.00, 0.00, 46.77, 16.00, 298.77, 0.00, 'Qnp1wENtGKJYV', 'rb66JHqb', 1, 1, 1, 1, NULL, '2017-12-02 08:00:58', '2017-12-02 08:00:58'),
(118, 12, 61, 60, 'CE505A', 1.00, NULL, 118.00, 118.00, 0.00, 21.90, 16.00, 139.90, 0.00, 'qxDMllGT8kPm4m', 'eVmGH28d', 1, 1, 1, 1, NULL, '2017-12-02 08:00:58', '2017-12-02 08:00:58'),
(119, 12, 82, 26, 'Adhesives', 1.00, NULL, 160.00, 160.00, 0.00, 29.70, 16.00, 189.70, 0.00, 'L7RY38wFzDPRr', 'b8qVuj0d', 1, 1, 1, 1, NULL, '2017-12-02 08:00:58', '2017-12-02 08:00:58'),
(120, 12, 51, 121, 'Hp322A', 1.00, NULL, 150.00, 150.00, 0.00, 27.84, 16.00, 177.84, 0.00, 'ZYLNzqDul8yqV', 'dRgziy7e', 1, 1, 1, 1, NULL, '2017-12-02 08:00:59', '2017-12-02 08:00:59'),
(121, 13, 100, 35, 'Ledger book A4 2Q', 1.00, NULL, 155.00, 155.00, 0.00, 28.77, 16.00, 183.77, 0.00, 'xG2qPoOs5PR3g', 'axGDF1Ve', 1, 1, 1, 1, NULL, '2017-12-02 08:00:59', '2017-12-02 08:00:59'),
(122, 13, 90, 118, 'A4 Laminating pouch', 1.00, NULL, 196.00, 196.00, 0.00, 36.38, 16.00, 232.38, 0.00, 'j2y6KW6hnRL2M9', 'aMj4hN5b', 1, 1, 1, 1, NULL, '2017-12-02 08:00:59', '2017-12-02 08:00:59'),
(123, 13, 4, 194, 'A4 WRITING PADS', 1.00, NULL, 122.00, 122.00, 0.00, 22.64, 16.00, 144.64, 0.00, 'jZn12JYUONXn3', 'eEl3fNwd', 1, 1, 1, 1, NULL, '2017-12-02 08:00:59', '2017-12-02 08:00:59'),
(124, 13, 79, 46, 'Spiral Binders', 1.00, NULL, 184.00, 184.00, 0.00, 34.15, 16.00, 218.15, 0.00, '0VlMvGZcG241M0', 'dLgxCq8b', 1, 1, 1, 1, NULL, '2017-12-02 08:00:59', '2017-12-02 08:00:59'),
(125, 13, 54, 55, 'Hp541A', 1.00, NULL, 230.00, 230.00, 0.00, 42.69, 16.00, 272.69, 0.00, '6X1NkrVfD0qRX', 'aQ1PUO1a', 1, 1, 1, 1, NULL, '2017-12-02 08:00:59', '2017-12-02 08:00:59'),
(126, 13, 105, 61, 'CE413A', 1.00, NULL, 197.00, 197.00, 0.00, 36.56, 16.00, 233.56, 0.00, 'oQE4YmVt08Q7X', 'azmriMpP', 1, 1, 1, 1, NULL, '2017-12-02 08:00:59', '2017-12-02 08:00:59'),
(127, 13, 8, 192, 'EXPORTS STRONG ROOM RECORD BOOKS', 1.00, NULL, 175.00, 175.00, 0.00, 32.48, 16.00, 207.48, 0.00, 'k8VjVwgUzgOxg', 'eVm4sYod', 1, 1, 1, 1, NULL, '2017-12-02 08:01:00', '2017-12-02 08:01:00'),
(128, 13, 86, 121, 'Complimentaries', 1.00, NULL, 314.00, 314.00, 0.00, 58.28, 16.00, 372.28, 0.00, 'oQv50x5C3G9Dp', 'e3l4urla', 1, 1, 1, 1, NULL, '2017-12-02 08:01:00', '2017-12-02 08:01:00'),
(129, 13, 7, 64, 'IMPORTS STRONG ROOM RECORD BOOKS', 1.00, NULL, 250.00, 250.00, 0.00, 46.40, 16.00, 296.40, 0.00, 'G6KqJn9h1L8N1R', 'epgGTrwd', 1, 1, 1, 1, NULL, '2017-12-02 08:01:00', '2017-12-02 08:01:00'),
(130, 13, 13, 135, 'PRINTING PAPERS', 1.00, NULL, 139.00, 139.00, 0.00, 25.80, 16.00, 164.80, 0.00, '48rm6zKH311Ay', 'Be1jmIna', 1, 1, 1, 1, NULL, '2017-12-02 08:01:00', '2017-12-02 08:01:00'),
(131, 14, 34, 159, 'Glue STICK', 1.00, NULL, 138.00, 138.00, 0.00, 25.61, 16.00, 163.61, 0.00, 'RoQV942i3N546', 'e76NHBgd', 1, 1, 1, 1, NULL, '2017-12-02 08:01:00', '2017-12-02 08:01:00'),
(132, 14, 13, 135, 'PRINTING PAPERS', 1.00, NULL, 139.00, 139.00, 0.00, 25.80, 16.00, 164.80, 0.00, '48rm6zKH311Ay', 'dyrlsmje', 1, 1, 1, 1, NULL, '2017-12-02 08:01:00', '2017-12-02 08:01:00'),
(133, 14, 73, 88, 'safety boots', 1.00, NULL, 205.00, 205.00, 0.00, 38.05, 16.00, 243.05, 0.00, 'g51ZDRNSPyX2j', 'dPZNfKrO', 1, 1, 1, 1, NULL, '2017-12-02 08:01:00', '2017-12-02 08:01:00'),
(134, 14, 4, 194, 'A4 WRITING PADS', 1.00, NULL, 122.00, 122.00, 0.00, 22.64, 16.00, 144.64, 0.00, 'jZn12JYUONXn3', 'e9Q8S41e', 1, 1, 1, 1, NULL, '2017-12-02 08:01:01', '2017-12-02 08:01:01'),
(135, 14, 42, 87, 'SECURITY DECLARATION BOOKS', 1.00, NULL, 233.00, 233.00, 0.00, 43.24, 16.00, 276.24, 0.00, '5QRJmoKT1xZ4N', 'boQQT7Le', 1, 1, 1, 1, NULL, '2017-12-02 08:01:01', '2017-12-02 08:01:01'),
(136, 14, 46, 93, 'LEATHER GLOVES', 1.00, NULL, 289.00, 289.00, 0.00, 53.64, 16.00, 342.64, 0.00, 'M84N32pS9rJBq', 'ejqZHjVd', 1, 1, 1, 1, NULL, '2017-12-02 08:01:01', '2017-12-02 08:01:01'),
(137, 14, 16, 21, 'PAPER CLIPS 33MM', 1.00, NULL, 129.00, 129.00, 0.00, 23.94, 16.00, 152.94, 0.00, 'yojK0wEIrLrkjY', 'ejqYI6Bd', 1, 1, 1, 1, NULL, '2017-12-02 08:01:01', '2017-12-02 08:01:01'),
(138, 14, 32, 196, 'SHARPENER', 1.00, NULL, 248.00, 248.00, 0.00, 46.03, 16.00, 294.03, 0.00, 'VPQBA81CxxOvqK', 'e9QDfKre', 1, 1, 1, 1, NULL, '2017-12-02 08:01:01', '2017-12-02 08:01:01'),
(139, 14, 101, 69, 'Ledger book A4 1Q', 1.00, NULL, 214.00, 214.00, 0.00, 39.72, 16.00, 253.72, 0.00, 'y8lrDm8s2zYXR', 'dG58t11O', 1, 1, 1, 1, NULL, '2017-12-02 08:01:01', '2017-12-02 08:01:01'),
(140, 14, 28, 183, 'PENCILS', 1.00, NULL, 312.00, 312.00, 0.00, 57.91, 16.00, 369.91, 0.00, 'oQo7RLVcrvgN7Q', 'aQ0Ohyxe', 1, 1, 1, 1, NULL, '2017-12-02 08:01:02', '2017-12-02 08:01:02'),
(141, 15, 47, 146, 'Ear Muffs', 1.00, NULL, 229.00, 229.00, 0.00, 42.50, 16.00, 271.50, 0.00, 'wmX7y6MU1Xxk1', 'e9QpsmVe', 1, 1, 1, 1, NULL, '2017-12-02 08:01:02', '2017-12-02 08:01:02'),
(142, 15, 64, 90, 'Epson IQ 2190', 1.00, NULL, 303.00, 303.00, 0.00, 56.24, 16.00, 359.24, 0.00, 'oV5jB0gTnP4MK', 'dL8AhQQd', 1, 1, 1, 1, NULL, '2017-12-02 08:01:02', '2017-12-02 08:01:02'),
(143, 15, 79, 46, 'Spiral Binders', 1.00, NULL, 184.00, 184.00, 0.00, 34.15, 16.00, 218.15, 0.00, 'An9W5LmTwBXrW', 'e32KfYjd', 1, 1, 1, 1, NULL, '2017-12-02 08:01:02', '2017-12-02 08:01:02'),
(144, 15, 34, 159, 'Glue STICK', 1.00, NULL, 138.00, 138.00, 0.00, 25.61, 16.00, 163.61, 0.00, 'RoQV942i3N546', 'aOyqHvZd', 1, 1, 1, 1, NULL, '2017-12-02 08:01:02', '2017-12-02 08:01:02'),
(145, 15, 58, 111, 'CE311', 1.00, NULL, 249.00, 249.00, 0.00, 46.21, 16.00, 295.21, 0.00, '3l47QYOTB0kzZ', 'aKZzUXYe', 1, 1, 1, 1, NULL, '2017-12-02 08:01:02', '2017-12-02 08:01:02'),
(146, 15, 66, 5, 'A5 Branded Envelopes', 1.00, NULL, 182.00, 182.00, 0.00, 33.78, 16.00, 215.78, 0.00, 'qxEnLj9t3NA8P', 'avoLCoxb', 1, 1, 1, 1, NULL, '2017-12-02 08:01:02', '2017-12-02 08:01:02'),
(147, 15, 5, 32, 'A5 SHORTHAND BOOKS', 1.00, NULL, 161.00, 161.00, 0.00, 29.88, 16.00, 190.88, 0.00, 'QnGl5vxFkoDJnP', 'dRoBF2Le', 1, 1, 1, 1, NULL, '2017-12-02 08:01:02', '2017-12-02 08:01:02'),
(148, 15, 54, 55, 'Hp541A', 1.00, NULL, 230.00, 230.00, 0.00, 42.69, 16.00, 272.69, 0.00, 'Wngo95kS5zXYlZ', 'bqYpiq7b', 1, 1, 1, 1, NULL, '2017-12-02 08:01:03', '2017-12-02 08:01:03'),
(149, 15, 101, 69, 'Ledger book A4 1Q', 1.00, NULL, 214.00, 214.00, 0.00, 39.72, 16.00, 253.72, 0.00, 'PZm4k28iL9lV9', 'bYvZigqd', 1, 1, 1, 1, NULL, '2017-12-02 08:01:03', '2017-12-02 08:01:03'),
(150, 15, 79, 46, 'Spiral Binders', 1.00, NULL, 184.00, 184.00, 0.00, 34.15, 16.00, 218.15, 0.00, 'An9W5LmTwBXrW', 'aQ0mukkB', 1, 1, 1, 1, NULL, '2017-12-02 08:01:03', '2017-12-02 08:01:03'),
(151, 16, 68, 79, 'DL Non-Windowed Envelopes', 1.00, NULL, 210.00, 210.00, 0.00, 38.98, 16.00, 248.98, 0.00, 'Krv7AzpIPEPy7', 'bqYXuxkb', 1, 1, 1, 1, NULL, '2017-12-02 08:01:03', '2017-12-02 08:01:03'),
(152, 16, 103, 32, 'CE411A', 1.00, NULL, 264.00, 264.00, 0.00, 49.00, 16.00, 313.00, 0.00, 'JZAXywJhJj147', 'erRvczpe', 1, 1, 1, 1, NULL, '2017-12-02 08:01:03', '2017-12-02 08:01:03'),
(153, 16, 63, 141, 'Q7553A', 1.00, NULL, 308.00, 308.00, 0.00, 57.16, 16.00, 365.16, 0.00, '71AgYn4tAQM7x4', 'aKZRCxqe', 1, 1, 1, 1, NULL, '2017-12-02 08:01:03', '2017-12-02 08:01:03'),
(154, 16, 44, 35, 'TRANSGLOBAL TAPES', 1.00, NULL, 157.00, 157.00, 0.00, 29.14, 16.00, 186.14, 0.00, 'ERklPrKT27VzA', 'eXo2fXyB', 1, 1, 1, 1, NULL, '2017-12-02 08:01:04', '2017-12-02 08:01:04'),
(155, 16, 61, 60, 'CE505A', 1.00, NULL, 118.00, 118.00, 0.00, 21.90, 16.00, 139.90, 0.00, '2vQ51yDIkMvB', 'avovhZQb', 1, 1, 1, 1, NULL, '2017-12-02 08:01:04', '2017-12-02 08:01:04'),
(156, 16, 61, 60, 'CE505A', 1.00, NULL, 118.00, 118.00, 0.00, 21.90, 16.00, 139.90, 0.00, 'qxDMllGT8kPm4m', 'dPZVIVNa', 1, 1, 1, 1, NULL, '2017-12-02 08:01:04', '2017-12-02 08:01:04'),
(157, 16, 68, 79, 'DL Non-Windowed Envelopes', 1.00, NULL, 210.00, 210.00, 0.00, 38.98, 16.00, 248.98, 0.00, 'G6NGmOjUmVw3r', 'aAPECMQe', 1, 1, 1, 1, NULL, '2017-12-02 08:01:04', '2017-12-02 08:01:04'),
(158, 16, 74, 114, 'Rulers', 1.00, NULL, 215.00, 215.00, 0.00, 39.90, 16.00, 254.90, 0.00, 'Ell2vL2u30QVqZ', 'aOyvHJDd', 1, 1, 1, 1, NULL, '2017-12-02 08:01:04', '2017-12-02 08:01:04'),
(159, 16, 67, 119, 'DL Windowed Envelops', 1.00, NULL, 184.00, 184.00, 0.00, 34.15, 16.00, 218.15, 0.00, 'KrG0KXxiZ434k', 'dJqMs3Zb', 1, 1, 1, 1, NULL, '2017-12-02 08:01:04', '2017-12-02 08:01:04'),
(160, 16, 90, 118, 'A4 Laminating pouch', 1.00, NULL, 196.00, 196.00, 0.00, 36.38, 16.00, 232.38, 0.00, 'j2y6KW6hnRL2M9', 'e9QwHVoe', 1, 1, 1, 1, NULL, '2017-12-02 08:01:04', '2017-12-02 08:01:04'),
(161, 17, 63, 141, 'Q7553A', 1.00, NULL, 308.00, 308.00, 0.00, 57.16, 16.00, 365.16, 0.00, '71AgYn4tAQM7x4', 'aMQzIPAa', 1, 1, 1, 1, NULL, '2017-12-02 08:01:05', '2017-12-02 08:01:05'),
(162, 17, 44, 35, 'TRANSGLOBAL TAPES', 1.00, NULL, 157.00, 157.00, 0.00, 29.14, 16.00, 186.14, 0.00, 'ERklPrKT27VzA', 'Ge7LZIwa', 1, 1, 1, 1, NULL, '2017-12-02 08:01:05', '2017-12-02 08:01:05'),
(163, 17, 10, 146, 'A3 KHAKI BROWN ENVELOPES ', 1.00, NULL, 163.00, 163.00, 0.00, 30.25, 16.00, 193.25, 0.00, '8qXG51Zsy0KW0', 'aKZDi1ve', 1, 1, 1, 1, NULL, '2017-12-02 08:01:05', '2017-12-02 08:01:05'),
(164, 17, 77, 110, 'Clip boards', 1.00, NULL, 129.00, 129.00, 0.00, 23.94, 16.00, 152.94, 0.00, 'AnpDvkocpA5pg', 'aKZps4ge', 1, 1, 1, 1, NULL, '2017-12-02 08:01:05', '2017-12-02 08:01:05'),
(165, 17, 30, 148, 'STAMP INK', 1.00, NULL, 298.00, 298.00, 0.00, 55.31, 16.00, 353.31, 0.00, 'Jyp7Y77SAy9R', 'avoATxob', 1, 1, 1, 1, NULL, '2017-12-02 08:01:05', '2017-12-02 08:01:05'),
(166, 17, 58, 111, 'CE311', 1.00, NULL, 249.00, 249.00, 0.00, 46.21, 16.00, 295.21, 0.00, 'wj904j1SWxgz5', 'eE94IGWe', 1, 1, 1, 1, NULL, '2017-12-02 08:01:05', '2017-12-02 08:01:05'),
(167, 17, 12, 120, 'A4 BRANDED ENVELOPES', 1.00, NULL, 110.00, 110.00, 0.00, 20.42, 16.00, 130.42, 0.00, '0RNr6XwhrMLKp', 'aKZ3CMKe', 1, 1, 1, 1, NULL, '2017-12-02 08:01:05', '2017-12-02 08:01:05'),
(168, 17, 47, 146, 'Ear Muffs', 1.00, NULL, 229.00, 229.00, 0.00, 42.50, 16.00, 271.50, 0.00, 'BNPvqNZTl0RQ9', 'dPZBFpya', 1, 1, 1, 1, NULL, '2017-12-02 08:01:05', '2017-12-02 08:01:05'),
(169, 17, 34, 159, 'Glue STICK', 1.00, NULL, 138.00, 138.00, 0.00, 25.61, 16.00, 163.61, 0.00, 'RoQV942i3N546', 'dRoQhMBe', 1, 1, 1, 1, NULL, '2017-12-02 08:01:05', '2017-12-02 08:01:05'),
(170, 17, 87, 139, 'Security Stickers', 1.00, NULL, 274.00, 274.00, 0.00, 50.85, 16.00, 324.85, 0.00, 'gJmjNqyfLRx25', 'eVPwINVb', 1, 1, 1, 1, NULL, '2017-12-02 08:01:06', '2017-12-02 08:01:06'),
(171, 18, 72, 46, 'A5Khaki brown  envelopes', 1.00, NULL, 237.00, 237.00, 0.00, 43.99, 16.00, 280.99, 0.00, '91z29KEhjXW2O', 'eE9Jc7ke', 1, 1, 1, 1, NULL, '2017-12-02 08:01:06', '2017-12-02 08:01:06'),
(172, 18, 3, 44, '2QUIRE COUNTER BOOKS', 1.00, NULL, 157.00, 157.00, 0.00, 29.14, 16.00, 186.14, 0.00, 'nZ8mRkGuApyNz', 'e9QlIXKe', 1, 1, 1, 1, NULL, '2017-12-02 08:01:06', '2017-12-02 08:01:06'),
(173, 18, 102, 136, 'CE 410A', 1.00, NULL, 286.00, 286.00, 0.00, 53.08, 16.00, 339.08, 0.00, '1rmQ798Sj21wO', 'ejqys9md', 1, 1, 1, 1, NULL, '2017-12-02 08:01:06', '2017-12-02 08:01:06'),
(174, 18, 73, 88, 'safety boots', 1.00, NULL, 205.00, 205.00, 0.00, 38.05, 16.00, 243.05, 0.00, 'g51ZDRNSPyX2j', 'dBLKFWYa', 1, 1, 1, 1, NULL, '2017-12-02 08:01:06', '2017-12-02 08:01:06'),
(175, 18, 78, 178, 'Binding covers', 1.00, NULL, 149.00, 149.00, 0.00, 27.65, 16.00, 176.65, 0.00, '2vxZN6Duw6LR1', 'e0VviNYb', 1, 1, 1, 1, NULL, '2017-12-02 08:01:06', '2017-12-02 08:01:06'),
(176, 18, 30, 148, 'STAMP INK', 1.00, NULL, 298.00, 298.00, 0.00, 55.31, 16.00, 353.31, 0.00, 'r8WvjPGu6DyKm', 'aANquyLb', 1, 1, 1, 1, NULL, '2017-12-02 08:01:06', '2017-12-02 08:01:06'),
(177, 18, 3, 44, '2QUIRE COUNTER BOOKS', 1.00, NULL, 157.00, 157.00, 0.00, 29.14, 16.00, 186.14, 0.00, 'nZ8mRkGuApyNz', 'ep8YHnNn', 1, 1, 1, 1, NULL, '2017-12-02 08:01:07', '2017-12-02 08:01:07'),
(178, 18, 34, 159, 'Glue STICK', 1.00, NULL, 138.00, 138.00, 0.00, 25.61, 16.00, 163.61, 0.00, 'RoQV942i3N546', 'b6X6h97e', 1, 1, 1, 1, NULL, '2017-12-02 08:01:07', '2017-12-02 08:01:07'),
(179, 18, 75, 49, 'Flip chart', 1.00, NULL, 312.00, 312.00, 0.00, 57.91, 16.00, 369.91, 0.00, 'BBADKRVIMAmgA', 'dwVmCn8b', 1, 1, 1, 1, NULL, '2017-12-02 08:01:07', '2017-12-02 08:01:07'),
(180, 18, 54, 55, 'Hp541A', 1.00, NULL, 230.00, 230.00, 0.00, 42.69, 16.00, 272.69, 0.00, '6X1NkrVfD0qRX', 'e711t9Jb', 1, 1, 1, 1, NULL, '2017-12-02 08:01:07', '2017-12-02 08:01:07'),
(181, 19, 95, 107, 'Pen Holders', 1.00, NULL, 164.00, 164.00, 0.00, 30.44, 16.00, 194.44, 0.00, 'lO7jgZBIP0Qw1', 'dNLOfWja', 1, 1, 1, 1, NULL, '2017-12-02 08:01:07', '2017-12-02 08:01:07'),
(182, 19, 61, 60, 'CE505A', 1.00, NULL, 118.00, 118.00, 0.00, 21.90, 16.00, 139.90, 0.00, 'qxDMllGT8kPm4m', 'dyo9fyra', 1, 1, 1, 1, NULL, '2017-12-02 08:01:07', '2017-12-02 08:01:07'),
(183, 19, 102, 136, 'CE 410A', 1.00, NULL, 286.00, 286.00, 0.00, 53.08, 16.00, 339.08, 0.00, 'xGWY9krI2mxOv', 'eE8xfg9d', 1, 1, 1, 1, NULL, '2017-12-02 08:01:07', '2017-12-02 08:01:07'),
(184, 19, 32, 196, 'SHARPENER', 1.00, NULL, 248.00, 248.00, 0.00, 46.03, 16.00, 294.03, 0.00, 'VPQBA81CxxOvqK', 'dJyPCnVb', 1, 1, 1, 1, NULL, '2017-12-02 08:01:07', '2017-12-02 08:01:07'),
(185, 19, 30, 148, 'STAMP INK', 1.00, NULL, 298.00, 298.00, 0.00, 55.31, 16.00, 353.31, 0.00, 'r8WvjPGu6DyKm', 'aK1YIVGd', 1, 1, 1, 1, NULL, '2017-12-02 08:01:08', '2017-12-02 08:01:08'),
(186, 19, 42, 87, 'SECURITY DECLARATION BOOKS', 1.00, NULL, 233.00, 233.00, 0.00, 43.24, 16.00, 276.24, 0.00, '5QRJmoKT1xZ4N', 'b4QWIB1d', 1, 1, 1, 1, NULL, '2017-12-02 08:01:08', '2017-12-02 08:01:08'),
(187, 19, 86, 121, 'Complimentaries', 1.00, NULL, 314.00, 314.00, 0.00, 58.28, 16.00, 372.28, 0.00, 'nrQ7VEXI7q32Rm', 'er8MtLXb', 1, 1, 1, 1, NULL, '2017-12-02 08:01:08', '2017-12-02 08:01:08'),
(188, 19, 88, 175, 'Paper Tray', 1.00, NULL, 257.00, 257.00, 0.00, 47.70, 16.00, 304.70, 0.00, 'wVN2920tGnz35', 'dROwhDLe', 1, 1, 1, 1, NULL, '2017-12-02 08:01:08', '2017-12-02 08:01:08'),
(189, 19, 47, 146, 'Ear Muffs', 1.00, NULL, 229.00, 229.00, 0.00, 42.50, 16.00, 271.50, 0.00, 'wmX7y6MU1Xxk1', 'eXLqHo9e', 1, 1, 1, 1, NULL, '2017-12-02 08:01:08', '2017-12-02 08:01:08'),
(190, 19, 87, 139, 'Security Stickers', 1.00, NULL, 274.00, 274.00, 0.00, 50.85, 16.00, 324.85, 0.00, 'gJmjNqyfLRx25', 'eVAnsB4d', 1, 1, 1, 1, NULL, '2017-12-02 08:01:08', '2017-12-02 08:01:08'),
(191, 20, 55, 90, 'Hp542A', 1.00, NULL, 201.00, 201.00, 0.00, 37.31, 16.00, 238.31, 0.00, '66JBzYghrrZkkZ', 'dGvKil6b', 1, 1, 1, 1, NULL, '2017-12-02 08:01:09', '2017-12-02 08:01:09'),
(192, 20, 45, 9, 'RUBBER GLOVES', 1.00, NULL, 252.00, 252.00, 0.00, 46.77, 16.00, 298.77, 0.00, 'XLXADA0FZ83y1', 'eXLXTDWe', 1, 1, 1, 1, NULL, '2017-12-02 08:01:09', '2017-12-02 08:01:09'),
(193, 20, 64, 90, 'Epson IQ 2190', 1.00, NULL, 303.00, 303.00, 0.00, 56.24, 16.00, 359.24, 0.00, 'oV5jB0gTnP4MK', 'bD1xsR4d', 1, 1, 1, 1, NULL, '2017-12-02 08:01:09', '2017-12-02 08:01:09'),
(194, 20, 105, 61, 'CE413A', 1.00, NULL, 197.00, 197.00, 0.00, 36.56, 16.00, 233.56, 0.00, 'oQE4YmVt08Q7X', 'eZYyhgRd', 1, 1, 1, 1, NULL, '2017-12-02 08:01:09', '2017-12-02 08:01:09'),
(195, 20, 62, 102, 'CE285A', 1.00, NULL, 240.00, 240.00, 0.00, 44.54, 16.00, 284.54, 0.00, 'yoWk3Q2iWXlz9', 'dROrHDWe', 1, 1, 1, 1, NULL, '2017-12-02 08:01:09', '2017-12-02 08:01:09'),
(196, 20, 5, 32, 'A5 SHORTHAND BOOKS', 1.00, NULL, 161.00, 161.00, 0.00, 29.88, 16.00, 190.88, 0.00, 'QnGl5vxFkoDJnP', 'axnBhLwd', 1, 1, 1, 1, NULL, '2017-12-02 08:01:09', '2017-12-02 08:01:09'),
(197, 20, 72, 46, 'A5Khaki brown  envelopes', 1.00, NULL, 237.00, 237.00, 0.00, 43.99, 16.00, 280.99, 0.00, 'GZABXvytJNEgr', 'ep8Pf6We', 1, 1, 1, 1, NULL, '2017-12-02 08:01:09', '2017-12-02 08:01:09'),
(198, 20, 95, 107, 'Pen Holders', 1.00, NULL, 164.00, 164.00, 0.00, 30.44, 16.00, 194.44, 0.00, 'APYZP0RuKLL34', 'bD1lhZOd', 1, 1, 1, 1, NULL, '2017-12-02 08:01:09', '2017-12-02 08:01:09'),
(199, 20, 101, 69, 'Ledger book A4 1Q', 1.00, NULL, 214.00, 214.00, 0.00, 39.72, 16.00, 253.72, 0.00, 'y8lrDm8s2zYXR', 'dwVwUoDb', 1, 1, 1, 1, NULL, '2017-12-02 08:01:09', '2017-12-02 08:01:09'),
(200, 20, 22, 63, 'BIRO PENS RED', 1.00, NULL, 315.00, 315.00, 0.00, 58.46, 16.00, 373.46, 0.00, 'G6DR4yBCRD6wo', 'eVAVtB9d', 1, 1, 1, 1, NULL, '2017-12-02 08:01:10', '2017-12-02 08:01:10'),
(201, 21, 3, 44, '2QUIRE COUNTER BOOKS', 1.00, NULL, 157.00, 157.00, 0.00, 29.14, 16.00, 186.14, 0.00, 'nZ8mRkGuApyNz', 'avl6HPpd', 1, 1, 1, 1, NULL, '2017-12-02 08:01:13', '2017-12-02 08:01:13'),
(202, 21, 92, 6, 'GIANT Stapler', 1.00, NULL, 237.00, 237.00, 0.00, 43.99, 16.00, 280.99, 0.00, 'lxmMOr7f0Vkoy', 'e0YnIoDa', 1, 1, 1, 1, NULL, '2017-12-02 08:01:13', '2017-12-02 08:01:13'),
(203, 21, 82, 26, 'Adhesives', 1.00, NULL, 160.00, 160.00, 0.00, 29.70, 16.00, 189.70, 0.00, 'L7RY38wFzDPRr', 'aANztZpb', 1, 1, 1, 1, NULL, '2017-12-02 08:01:13', '2017-12-02 08:01:13'),
(204, 21, 106, 76, 'Binder Clipps 51mm', 1.00, NULL, 294.00, 294.00, 0.00, 54.57, 16.00, 348.57, 0.00, 'DkJZ10Au5jLD4P', 'axnEIm2d', 1, 1, 1, 1, NULL, '2017-12-02 08:01:13', '2017-12-02 08:01:13'),
(205, 21, 80, 88, 'Company Letter Heads', 1.00, NULL, 265.00, 265.00, 0.00, 49.18, 16.00, 314.18, 0.00, 'KZ7qgjNHy7L2Z', 'e91MHVJe', 1, 1, 1, 1, NULL, '2017-12-02 08:01:14', '2017-12-02 08:01:14'),
(206, 21, 78, 178, 'Binding covers', 1.00, NULL, 149.00, 149.00, 0.00, 27.65, 16.00, 176.65, 0.00, '2vxZN6Duw6LR1', 'mavl0cOd', 1, 1, 1, 1, NULL, '2017-12-02 08:01:14', '2017-12-02 08:01:14'),
(207, 21, 77, 110, 'Clip boards', 1.00, NULL, 129.00, 129.00, 0.00, 23.94, 16.00, 152.94, 0.00, '82zj2R9s2QBQM', 'er81S3qb', 1, 1, 1, 1, NULL, '2017-12-02 08:01:14', '2017-12-02 08:01:14'),
(208, 21, 42, 87, 'SECURITY DECLARATION BOOKS', 1.00, NULL, 233.00, 233.00, 0.00, 43.24, 16.00, 276.24, 0.00, '5QRJmoKT1xZ4N', 'bq73fxXe', 1, 1, 1, 1, NULL, '2017-12-02 08:01:14', '2017-12-02 08:01:14'),
(209, 21, 105, 61, 'CE413A', 1.00, NULL, 197.00, 197.00, 0.00, 36.56, 16.00, 233.56, 0.00, 'oQE4YmVt08Q7X', 'dyoEcN6a', 1, 1, 1, 1, NULL, '2017-12-02 08:01:14', '2017-12-02 08:01:14'),
(210, 21, 51, 121, 'Hp322A', 1.00, NULL, 150.00, 150.00, 0.00, 27.84, 16.00, 177.84, 0.00, 'ZYLNzqDul8yqV', 'ep8Mcw8e', 1, 1, 1, 1, NULL, '2017-12-02 08:01:14', '2017-12-02 08:01:14'),
(211, 22, 12, 120, 'A4 BRANDED ENVELOPES', 1.00, NULL, 110.00, 110.00, 0.00, 20.42, 16.00, 130.42, 0.00, 'MwX0kRPt76MxM', 'e71PfDBb', 1, 1, 1, 1, NULL, '2017-12-02 08:01:15', '2017-12-02 08:01:15'),
(212, 22, 65, 50, 'Epson IQ 870', 1.00, NULL, 161.00, 161.00, 0.00, 29.88, 16.00, 190.88, 0.00, 'E9Ej9P9FKWJGg', 'er8zh80O', 1, 1, 1, 1, NULL, '2017-12-02 08:01:15', '2017-12-02 08:01:15'),
(213, 22, 29, 112, 'RUBBER BANDS', 1.00, NULL, 281.00, 281.00, 0.00, 52.15, 16.00, 333.15, 0.00, 'G5k0nOWi109wAK', 'e1WXSWwb', 1, 1, 1, 1, NULL, '2017-12-02 08:01:15', '2017-12-02 08:01:15'),
(214, 22, 45, 9, 'RUBBER GLOVES', 1.00, NULL, 252.00, 252.00, 0.00, 46.77, 16.00, 298.77, 0.00, 'NkB4lvKiWwvRD', 'e0YwFYva', 1, 1, 1, 1, NULL, '2017-12-02 08:01:15', '2017-12-02 08:01:15'),
(215, 22, 78, 178, 'Binding covers', 1.00, NULL, 149.00, 149.00, 0.00, 27.65, 16.00, 176.65, 0.00, '2vxZN6Duw6LR1', 'avlWH50d', 1, 1, 1, 1, NULL, '2017-12-02 08:01:15', '2017-12-02 08:01:15'),
(216, 22, 27, 149, 'SMALL PAPER PUNCH', 1.00, NULL, 238.00, 238.00, 0.00, 44.17, 16.00, 282.17, 0.00, 'k5JMRmmULr2G8', 'b6XgTPNe', 1, 1, 1, 1, NULL, '2017-12-02 08:01:15', '2017-12-02 08:01:15'),
(217, 22, 46, 93, 'LEATHER GLOVES', 1.00, NULL, 289.00, 289.00, 0.00, 53.64, 16.00, 342.64, 0.00, 'M84N32pS9rJBq', 'egZvHD8d', 1, 1, 1, 1, NULL, '2017-12-02 08:01:16', '2017-12-02 08:01:16'),
(218, 22, 49, 79, 'Hp320A', 1.00, NULL, 299.00, 299.00, 0.00, 55.49, 16.00, 354.49, 0.00, '3Qvj4DnTNkKlX', 'dNLZIP0a', 1, 1, 1, 1, NULL, '2017-12-02 08:01:16', '2017-12-02 08:01:16'),
(219, 22, 64, 90, 'Epson IQ 2190', 1.00, NULL, 303.00, 303.00, 0.00, 56.24, 16.00, 359.24, 0.00, 'voZMOVMSAo8XK', 'azvViGxa', 1, 1, 1, 1, NULL, '2017-12-02 08:01:16', '2017-12-02 08:01:16'),
(220, 22, 59, 54, 'CE312', 1.00, NULL, 197.00, 197.00, 0.00, 36.56, 16.00, 233.56, 0.00, 'mwqZq7xtZoZ2N', 'e161s55a', 1, 1, 1, 1, NULL, '2017-12-02 08:01:16', '2017-12-02 08:01:16'),
(221, 23, 35, 111, 'HIGHLIGHTER', 1.00, NULL, 187.00, 187.00, 0.00, 34.71, 16.00, 221.71, 0.00, 'ZV5jj0KhGVwN7', 'ax6ktVPd', 1, 1, 1, 1, NULL, '2017-12-02 08:01:16', '2017-12-02 08:01:16'),
(222, 23, 101, 69, 'Ledger book A4 1Q', 1.00, NULL, 214.00, 214.00, 0.00, 39.72, 16.00, 253.72, 0.00, 'DR4PPGWhmNVNw', 'dNOxFXMe', 1, 1, 1, 1, NULL, '2017-12-02 08:01:16', '2017-12-02 08:01:16'),
(223, 23, 86, 121, 'Complimentaries', 1.00, NULL, 314.00, 314.00, 0.00, 58.28, 16.00, 372.28, 0.00, '2RrqqoOFqNp8k', 'bY7viKQe', 1, 1, 1, 1, NULL, '2017-12-02 08:01:16', '2017-12-02 08:01:16'),
(224, 23, 46, 93, 'LEATHER GLOVES', 1.00, NULL, 289.00, 289.00, 0.00, 53.64, 16.00, 342.64, 0.00, 'M84N32pS9rJBq', 'epZ8hmOb', 1, 1, 1, 1, NULL, '2017-12-02 08:01:17', '2017-12-02 08:01:17'),
(225, 23, 5, 32, 'A5 SHORTHAND BOOKS', 1.00, NULL, 161.00, 161.00, 0.00, 29.88, 16.00, 190.88, 0.00, 'QnGl5vxFkoDJnP', 'e166HMOa', 1, 1, 1, 1, NULL, '2017-12-02 08:01:17', '2017-12-02 08:01:17'),
(226, 23, 34, 159, 'Glue STICK', 1.00, NULL, 138.00, 138.00, 0.00, 25.61, 16.00, 163.61, 0.00, 'RoQV942i3N546', 'dRlPIqLa', 1, 1, 1, 1, NULL, '2017-12-02 08:01:17', '2017-12-02 08:01:17'),
(227, 23, 51, 121, 'Hp322A', 1.00, NULL, 150.00, 150.00, 0.00, 27.84, 16.00, 177.84, 0.00, 'ZYLNzqDul8yqV', 'bDq8f5K0', 1, 1, 1, 1, NULL, '2017-12-02 08:01:18', '2017-12-02 08:01:18'),
(228, 23, 10, 146, 'A3 KHAKI BROWN ENVELOPES ', 1.00, NULL, 163.00, 163.00, 0.00, 30.25, 16.00, 193.25, 0.00, 'VmpBkq8iwVKVq', 'e992c37e', 1, 1, 1, 1, NULL, '2017-12-02 08:01:18', '2017-12-02 08:01:18'),
(229, 23, 55, 90, 'Hp542A', 1.00, NULL, 201.00, 201.00, 0.00, 37.31, 16.00, 238.31, 0.00, '66JBzYghrrZkkZ', 'aK8YtL0b', 1, 1, 1, 1, NULL, '2017-12-02 08:01:18', '2017-12-02 08:01:18'),
(230, 23, 80, 88, 'Company Letter Heads', 1.00, NULL, 265.00, 265.00, 0.00, 49.18, 16.00, 314.18, 0.00, 'KZ7qgjNHy7L2Z', 'elR8I255', 1, 1, 1, 1, NULL, '2017-12-02 08:01:18', '2017-12-02 08:01:18'),
(231, 24, 63, 141, 'Q7553A', 1.00, NULL, 308.00, 308.00, 0.00, 57.16, 16.00, 365.16, 0.00, '71AgYn4tAQM7x4', 'eXQkUW2a', 1, 1, 1, 1, NULL, '2017-12-02 08:01:18', '2017-12-02 08:01:18'),
(232, 24, 32, 196, 'SHARPENER', 1.00, NULL, 248.00, 248.00, 0.00, 46.03, 16.00, 294.03, 0.00, 'VPQBA81CxxOvqK', 'dJ8lFLVa', 1, 1, 1, 1, NULL, '2017-12-02 08:01:18', '2017-12-02 08:01:18'),
(233, 24, 80, 88, 'Company Letter Heads', 1.00, NULL, 265.00, 265.00, 0.00, 49.18, 16.00, 314.18, 0.00, 'KZ7qgjNHy7L2Z', 'avQRflXe', 1, 1, 1, 1, NULL, '2017-12-02 08:01:18', '2017-12-02 08:01:18'),
(234, 24, 45, 9, 'RUBBER GLOVES', 1.00, NULL, 252.00, 252.00, 0.00, 46.77, 16.00, 298.77, 0.00, 'NkB4lvKiWwvRD', 'e36VsgVd', 1, 1, 1, 1, NULL, '2017-12-02 08:01:19', '2017-12-02 08:01:19'),
(235, 24, 51, 121, 'Hp322A', 1.00, NULL, 150.00, 150.00, 0.00, 27.84, 16.00, 177.84, 0.00, 'ZYLNzqDul8yqV', 'e570fMqb', 1, 1, 1, 1, NULL, '2017-12-02 08:01:19', '2017-12-02 08:01:19'),
(236, 24, 22, 63, 'BIRO PENS RED', 1.00, NULL, 315.00, 315.00, 0.00, 58.46, 16.00, 373.46, 0.00, 'G6DR4yBCRD6wo', 'dNOKFDoe', 1, 1, 1, 1, NULL, '2017-12-02 08:01:19', '2017-12-02 08:01:19'),
(237, 24, 78, 178, 'Binding covers', 1.00, NULL, 149.00, 149.00, 0.00, 27.65, 16.00, 176.65, 0.00, '2vxZN6Duw6LR1', 'avQwtv3e', 1, 1, 1, 1, NULL, '2017-12-02 08:01:19', '2017-12-02 08:01:19'),
(238, 24, 90, 118, 'A4 Laminating pouch', 1.00, NULL, 196.00, 196.00, 0.00, 36.38, 16.00, 232.38, 0.00, 'j2y6KW6hnRL2M9', 'dNOjfwGe', 1, 1, 1, 1, NULL, '2017-12-02 08:01:19', '2017-12-02 08:01:19'),
(239, 24, 48, 87, 'Staple Pins Big 66/14', 1.00, NULL, 249.00, 249.00, 0.00, 46.21, 16.00, 295.21, 0.00, 'vg16AOnTpJnK7', 'boZ9iMNa', 1, 1, 1, 1, NULL, '2017-12-02 08:01:19', '2017-12-02 08:01:19'),
(240, 24, 68, 79, 'DL Non-Windowed Envelopes', 1.00, NULL, 210.00, 210.00, 0.00, 38.98, 16.00, 248.98, 0.00, 'Krv7AzpIPEPy7', 'enRouOne', 1, 1, 1, 1, NULL, '2017-12-02 08:01:19', '2017-12-02 08:01:19'),
(241, 25, 65, 50, 'Epson IQ 870', 1.00, NULL, 161.00, 161.00, 0.00, 29.88, 16.00, 190.88, 0.00, 'E9Ej9P9FKWJGg', 'bY7RCE0e', 1, 1, 1, 1, NULL, '2017-12-02 08:01:19', '2017-12-02 08:01:19'),
(242, 25, 78, 178, 'Binding covers', 1.00, NULL, 149.00, 149.00, 0.00, 27.65, 16.00, 176.65, 0.00, 'mQ18Qm7T0nVJE', 'dLZwuoMa', 1, 1, 1, 1, NULL, '2017-12-02 08:01:20', '2017-12-02 08:01:20'),
(243, 25, 16, 21, 'PAPER CLIPS 33MM', 1.00, NULL, 129.00, 129.00, 0.00, 23.94, 16.00, 152.94, 0.00, 'yojK0wEIrLrkjY', 'bmqjim7b', 1, 1, 1, 1, NULL, '2017-12-02 08:01:20', '2017-12-02 08:01:20'),
(244, 25, 88, 175, 'Paper Tray', 1.00, NULL, 257.00, 257.00, 0.00, 47.70, 16.00, 304.70, 0.00, 'wVN2920tGnz35', 'boZgF90a', 1, 1, 1, 1, NULL, '2017-12-02 08:01:20', '2017-12-02 08:01:20'),
(245, 25, 8, 192, 'EXPORTS STRONG ROOM RECORD BOOKS', 1.00, NULL, 175.00, 175.00, 0.00, 32.48, 16.00, 207.48, 0.00, 'k8VjVwgUzgOxg', 'dywWCP4a', 1, 1, 1, 1, NULL, '2017-12-02 08:01:20', '2017-12-02 08:01:20'),
(246, 25, 66, 5, 'A5 Branded Envelopes', 1.00, NULL, 182.00, 182.00, 0.00, 33.78, 16.00, 215.78, 0.00, 'qxEnLj9t3NA8P', 'e57vTgWb', 1, 1, 1, 1, NULL, '2017-12-02 08:01:20', '2017-12-02 08:01:20'),
(247, 25, 52, 65, 'Hp323A', 1.00, NULL, 185.00, 185.00, 0.00, 34.34, 16.00, 219.34, 0.00, 'NxKOroRfoyvDw', 'eEqECzze', 1, 1, 1, 1, NULL, '2017-12-02 08:01:20', '2017-12-02 08:01:20'),
(248, 25, 30, 148, 'STAMP INK', 1.00, NULL, 298.00, 298.00, 0.00, 55.31, 16.00, 353.31, 0.00, 'NxAGpmqfxxDo8', 'dw0DFxXe', 1, 1, 1, 1, NULL, '2017-12-02 08:01:20', '2017-12-02 08:01:20'),
(249, 25, 48, 87, 'Staple Pins Big 66/14', 1.00, NULL, 249.00, 249.00, 0.00, 46.21, 16.00, 295.21, 0.00, 'vg16AOnTpJnK7', 'VeZ8QSrb', 1, 1, 1, 1, NULL, '2017-12-02 08:01:20', '2017-12-02 08:01:20'),
(250, 25, 28, 183, 'PENCILS', 1.00, NULL, 312.00, 312.00, 0.00, 57.91, 16.00, 369.91, 0.00, 'LgGPnjwTRRRMOG', 'boZzcW9a', 1, 1, 1, 1, NULL, '2017-12-02 08:01:20', '2017-12-02 08:01:20'),
(251, 26, 79, 46, 'Spiral Binders', 1.00, NULL, 184.00, 184.00, 0.00, 34.15, 16.00, 218.15, 0.00, 'pQng79vHWKqw3', 'eXQWFnAa', 1, 1, 1, 1, NULL, '2017-12-02 08:01:21', '2017-12-02 08:01:21'),
(252, 26, 87, 139, 'Security Stickers', 1.00, NULL, 274.00, 274.00, 0.00, 50.85, 16.00, 324.85, 0.00, 'gJmjNqyfLRx25', 'ejY3sJxd', 1, 1, 1, 1, NULL, '2017-12-02 08:01:21', '2017-12-02 08:01:21'),
(253, 26, 72, 46, 'A5Khaki brown  envelopes', 1.00, NULL, 237.00, 237.00, 0.00, 43.99, 16.00, 280.99, 0.00, '91z29KEhjXW2O', 'dw0BUBYe', 1, 1, 1, 1, NULL, '2017-12-02 08:01:21', '2017-12-02 08:01:21'),
(254, 26, 41, 1, 'PROPERTY DECLARATION BOOKS', 1.00, NULL, 211.00, 211.00, 0.00, 39.16, 16.00, 250.16, 0.00, 'G5DPXpOSn10OE', 'er2Os4ne', 1, 1, 1, 1, NULL, '2017-12-02 08:01:21', '2017-12-02 08:01:21'),
(255, 26, 10, 146, 'A3 KHAKI BROWN ENVELOPES ', 1.00, NULL, 163.00, 163.00, 0.00, 30.25, 16.00, 193.25, 0.00, 'VmpBkq8iwVKVq', 'e990U7je', 1, 1, 1, 1, NULL, '2017-12-02 08:01:21', '2017-12-02 08:01:21'),
(256, 26, 72, 46, 'A5Khaki brown  envelopes', 1.00, NULL, 237.00, 237.00, 0.00, 43.99, 16.00, 280.99, 0.00, 'GZABXvytJNEgr', 'eZ8PswZb', 1, 1, 1, 1, NULL, '2017-12-02 08:01:21', '2017-12-02 08:01:21'),
(257, 26, 66, 5, 'A5 Branded Envelopes', 1.00, NULL, 182.00, 182.00, 0.00, 33.78, 16.00, 215.78, 0.00, 'qxEnLj9t3NA8P', 'bmqDikQb', 1, 1, 1, 1, NULL, '2017-12-02 08:01:21', '2017-12-02 08:01:21'),
(258, 26, 10, 146, 'A3 KHAKI BROWN ENVELOPES ', 1.00, NULL, 163.00, 163.00, 0.00, 30.25, 16.00, 193.25, 0.00, 'Yv62nXPHEZ6BJ', 'b46AcjGe', 1, 1, 1, 1, NULL, '2017-12-02 08:01:21', '2017-12-02 08:01:21'),
(259, 26, 13, 135, 'PRINTING PAPERS', 1.00, NULL, 139.00, 139.00, 0.00, 25.80, 16.00, 164.80, 0.00, '2kYMql1uAgr8x', 'dBrDilxd', 1, 1, 1, 1, NULL, '2017-12-02 08:01:21', '2017-12-02 08:01:21'),
(260, 26, 82, 26, 'Adhesives', 1.00, NULL, 160.00, 160.00, 0.00, 29.70, 16.00, 189.70, 0.00, 'L7RY38wFzDPRr', 'ejYxTV1d', 1, 1, 1, 1, NULL, '2017-12-02 08:01:22', '2017-12-02 08:01:22'),
(261, 27, 44, 35, 'TRANSGLOBAL TAPES', 1.00, NULL, 157.00, 157.00, 0.00, 29.14, 16.00, 186.14, 0.00, 'ERklPrKT27VzA', 'e99ntE3e', 1, 1, 1, 1, NULL, '2017-12-02 08:01:22', '2017-12-02 08:01:22');
INSERT INTO `invoice_items` (`id`, `invoiceId`, `productId`, `binLocation`, `productDescription`, `quantity`, `returned`, `sellingPrice`, `convertedPrice`, `convertedRate`, `tax`, `taxRate`, `total`, `discount`, `locationHash`, `hash`, `taxable`, `companyId`, `updatedBy`, `createdBy`, `deleted_at`, `created_at`, `updated_at`) VALUES
(262, 27, 48, 87, 'Staple Pins Big 66/14', 1.00, NULL, 249.00, 249.00, 0.00, 46.21, 16.00, 295.21, 0.00, 'vg16AOnTpJnK7', 'aOg1cpZa', 1, 1, 1, 1, NULL, '2017-12-02 08:01:22', '2017-12-02 08:01:22'),
(263, 27, 60, 181, 'CE313', 1.00, NULL, 117.00, 117.00, 0.00, 21.72, 16.00, 138.72, 0.00, 'p8Yy0GLF5WrDn', 'aOgVfpva', 1, 1, 1, 1, NULL, '2017-12-02 08:01:22', '2017-12-02 08:01:22'),
(264, 27, 45, 9, 'RUBBER GLOVES', 1.00, NULL, 252.00, 252.00, 0.00, 46.77, 16.00, 298.77, 0.00, 'NkB4lvKiWwvRD', 'b274h9Vd', 1, 1, 1, 1, NULL, '2017-12-02 08:01:22', '2017-12-02 08:01:22'),
(265, 27, 61, 60, 'CE505A', 1.00, NULL, 118.00, 118.00, 0.00, 21.90, 16.00, 139.90, 0.00, 'qxDMllGT8kPm4m', 'dNYkiVvb', 1, 1, 1, 1, NULL, '2017-12-02 08:01:22', '2017-12-02 08:01:22'),
(266, 27, 79, 46, 'Spiral Binders', 1.00, NULL, 184.00, 184.00, 0.00, 34.15, 16.00, 218.15, 0.00, '0VlMvGZcG241M0', 'bqljFKJa', 1, 1, 1, 1, NULL, '2017-12-02 08:01:22', '2017-12-02 08:01:22'),
(267, 27, 4, 194, 'A4 WRITING PADS', 1.00, NULL, 122.00, 122.00, 0.00, 22.64, 16.00, 144.64, 0.00, 'jZn12JYUONXn3', 'b27vtZZd', 1, 1, 1, 1, NULL, '2017-12-02 08:01:22', '2017-12-02 08:01:22'),
(268, 27, 40, 1, 'ULD BOOKS', 1.00, NULL, 145.00, 145.00, 0.00, 26.91, 16.00, 171.91, 0.00, 'O700Xj8flDz4R', 'aQ6nIl2b', 1, 1, 1, 1, NULL, '2017-12-02 08:01:23', '2017-12-02 08:01:23'),
(269, 27, 47, 146, 'Ear Muffs', 1.00, NULL, 229.00, 229.00, 0.00, 42.50, 16.00, 271.50, 0.00, 'GvX8Oo5HYXEJE', 'bqlQSvYa', 1, 1, 1, 1, NULL, '2017-12-02 08:01:23', '2017-12-02 08:01:23'),
(270, 27, 27, 149, 'SMALL PAPER PUNCH', 1.00, NULL, 238.00, 238.00, 0.00, 44.17, 16.00, 282.17, 0.00, 'k5JMRmmULr2G8', 'e9DDIy9d', 1, 1, 1, 1, NULL, '2017-12-02 08:01:23', '2017-12-02 08:01:23'),
(271, 28, 36, 182, 'DUST BINS', 1.00, NULL, 127.00, 127.00, 0.00, 23.57, 16.00, 150.57, 0.00, 'QW2ARDoHlzPg1', 'ax21C11Z', 1, 1, 1, 1, NULL, '2017-12-02 08:01:24', '2017-12-02 08:01:24'),
(272, 28, 75, 49, 'Flip chart', 1.00, NULL, 312.00, 312.00, 0.00, 57.91, 16.00, 369.91, 0.00, 'lOpMAgXFjM47', 'bWQ8f3Qe', 1, 1, 1, 1, NULL, '2017-12-02 08:01:24', '2017-12-02 08:01:24'),
(273, 28, 22, 63, 'BIRO PENS RED', 1.00, NULL, 315.00, 315.00, 0.00, 58.46, 16.00, 373.46, 0.00, 'G6DR4yBCRD6wo', 'dJNYS6Qd', 1, 1, 1, 1, NULL, '2017-12-02 08:01:24', '2017-12-02 08:01:24'),
(274, 28, 47, 146, 'Ear Muffs', 1.00, NULL, 229.00, 229.00, 0.00, 42.50, 16.00, 271.50, 0.00, 'wmX7y6MU1Xxk1', 'e1GVt5Bb', 1, 1, 1, 1, NULL, '2017-12-02 08:01:24', '2017-12-02 08:01:24'),
(275, 28, 29, 112, 'RUBBER BANDS', 1.00, NULL, 281.00, 281.00, 0.00, 52.15, 16.00, 333.15, 0.00, 'G5k0nOWi109wAK', 'e9DLivyd', 1, 1, 1, 1, NULL, '2017-12-02 08:01:24', '2017-12-02 08:01:24'),
(276, 28, 106, 76, 'Binder Clipps 51mm', 1.00, NULL, 294.00, 294.00, 0.00, 54.57, 16.00, 348.57, 0.00, 'DkJZ10Au5jLD4P', 'e7pOIM5a', 1, 1, 1, 1, NULL, '2017-12-02 08:01:24', '2017-12-02 08:01:24'),
(277, 28, 23, 191, 'PERMANENT MARKER PENS', 1.00, NULL, 281.00, 281.00, 0.00, 52.15, 16.00, 333.15, 0.00, 'J6l45G7toVJzy', 'QbWQpuJe', 1, 1, 1, 1, NULL, '2017-12-02 08:01:24', '2017-12-02 08:01:24'),
(278, 28, 52, 65, 'Hp323A', 1.00, NULL, 185.00, 185.00, 0.00, 34.34, 16.00, 219.34, 0.00, 'NxKOroRfoyvDw', 'epkLFrMd', 1, 1, 1, 1, NULL, '2017-12-02 08:01:25', '2017-12-02 08:01:25'),
(279, 28, 23, 191, 'PERMANENT MARKER PENS', 1.00, NULL, 281.00, 281.00, 0.00, 52.15, 16.00, 333.15, 0.00, 'W6D7EWXFAm0rG', 'b6BVf3Bb', 1, 1, 1, 1, NULL, '2017-12-02 08:01:25', '2017-12-02 08:01:25'),
(280, 28, 17, 20, 'PAPER CLIPS  50MM', 1.00, NULL, 204.00, 204.00, 0.00, 37.86, 16.00, 241.86, 0.00, '4QvAKNYC2EwOK', 'az74tMpm', 1, 1, 1, 1, NULL, '2017-12-02 08:01:25', '2017-12-02 08:01:25'),
(281, 29, 30, 148, 'STAMP INK', 1.00, NULL, 298.00, 298.00, 0.00, 55.31, 16.00, 353.31, 0.00, 'NxAGpmqfxxDo8', 'e7pMfl5a', 1, 1, 1, 1, NULL, '2017-12-02 08:01:25', '2017-12-02 08:01:25'),
(282, 29, 8, 192, 'EXPORTS STRONG ROOM RECORD BOOKS', 1.00, NULL, 175.00, 175.00, 0.00, 32.48, 16.00, 207.48, 0.00, 'W7gLR01F56Gy5L', 'dy95TYvd', 1, 1, 1, 1, NULL, '2017-12-02 08:01:25', '2017-12-02 08:01:25'),
(283, 29, 47, 146, 'Ear Muffs', 1.00, NULL, 229.00, 229.00, 0.00, 42.50, 16.00, 271.50, 0.00, 'wmX7y6MU1Xxk1', 'bkrVUALa', 1, 1, 1, 1, NULL, '2017-12-02 08:01:25', '2017-12-02 08:01:25'),
(284, 29, 54, 55, 'Hp541A', 1.00, NULL, 230.00, 230.00, 0.00, 42.69, 16.00, 272.69, 0.00, 'Wngo95kS5zXYlZ', 'bmYni9Xb', 1, 1, 1, 1, NULL, '2017-12-02 08:01:25', '2017-12-02 08:01:25'),
(285, 29, 63, 141, 'Q7553A', 1.00, NULL, 308.00, 308.00, 0.00, 57.16, 16.00, 365.16, 0.00, '71AgYn4tAQM7x4', 'ej0Pi8Wb', 1, 1, 1, 1, NULL, '2017-12-02 08:01:26', '2017-12-02 08:01:26'),
(286, 29, 80, 88, 'Company Letter Heads', 1.00, NULL, 265.00, 265.00, 0.00, 49.18, 16.00, 314.18, 0.00, 'KZ7qgjNHy7L2Z', 'dJNrIYnd', 1, 1, 1, 1, NULL, '2017-12-02 08:01:26', '2017-12-02 08:01:26'),
(287, 29, 100, 35, 'Ledger book A4 2Q', 1.00, NULL, 155.00, 155.00, 0.00, 28.77, 16.00, 183.77, 0.00, 'xG2qPoOs5PR3g', 'bqlnf2ka', 1, 1, 1, 1, NULL, '2017-12-02 08:01:26', '2017-12-02 08:01:26'),
(288, 29, 55, 90, 'Hp542A', 1.00, NULL, 201.00, 201.00, 0.00, 37.31, 16.00, 238.31, 0.00, '66JBzYghrrZkkZ', 'ej09c7Nb', 1, 1, 1, 1, NULL, '2017-12-02 08:01:26', '2017-12-02 08:01:26'),
(289, 29, 87, 139, 'Security Stickers', 1.00, NULL, 274.00, 274.00, 0.00, 50.85, 16.00, 324.85, 0.00, 'gJmjNqyfLRx25', 'engWU7qN', 1, 1, 1, 1, NULL, '2017-12-02 08:01:26', '2017-12-02 08:01:26'),
(290, 29, 49, 79, 'Hp320A', 1.00, NULL, 299.00, 299.00, 0.00, 55.49, 16.00, 354.49, 0.00, '3Qvj4DnTNkKlX', 'e5RvhMWa', 1, 1, 1, 1, NULL, '2017-12-02 08:01:26', '2017-12-02 08:01:26'),
(291, 30, 34, 159, 'Glue STICK', 1.00, NULL, 138.00, 138.00, 0.00, 25.61, 16.00, 163.61, 0.00, 'RoQV942i3N546', 'dPzktg9a', 1, 1, 1, 1, NULL, '2017-12-02 08:01:26', '2017-12-02 08:01:26'),
(292, 30, 4, 194, 'A4 WRITING PADS', 1.00, NULL, 122.00, 122.00, 0.00, 22.64, 16.00, 144.64, 0.00, 'jZn12JYUONXn3', 'b4zougGe', 1, 1, 1, 1, NULL, '2017-12-02 08:01:26', '2017-12-02 08:01:26'),
(293, 30, 7, 64, 'IMPORTS STRONG ROOM RECORD BOOKS', 1.00, NULL, 250.00, 250.00, 0.00, 46.40, 16.00, 296.40, 0.00, 'j20lmQmsJL2Kw', 'e5RGt2ja', 1, 1, 1, 1, NULL, '2017-12-02 08:01:26', '2017-12-02 08:01:26'),
(294, 30, 90, 118, 'A4 Laminating pouch', 1.00, NULL, 196.00, 196.00, 0.00, 36.38, 16.00, 232.38, 0.00, 'j2y6KW6hnRL2M9', 'e3y8IDnb', 1, 1, 1, 1, NULL, '2017-12-02 08:01:27', '2017-12-02 08:01:27'),
(295, 30, 49, 79, 'Hp320A', 1.00, NULL, 299.00, 299.00, 0.00, 55.49, 16.00, 354.49, 0.00, '3Qvj4DnTNkKlX', 'dGM0FDNa', 1, 1, 1, 1, NULL, '2017-12-02 08:01:27', '2017-12-02 08:01:27'),
(296, 30, 17, 20, 'PAPER CLIPS  50MM', 1.00, NULL, 204.00, 204.00, 0.00, 37.86, 16.00, 241.86, 0.00, '4QvAKNYC2EwOK', 'e5RDFDja', 1, 1, 1, 1, NULL, '2017-12-02 08:01:27', '2017-12-02 08:01:27'),
(297, 30, 42, 87, 'SECURITY DECLARATION BOOKS', 1.00, NULL, 233.00, 233.00, 0.00, 43.24, 16.00, 276.24, 0.00, '5QRJmoKT1xZ4N', 'aOPrfqGb', 1, 1, 1, 1, NULL, '2017-12-02 08:01:27', '2017-12-02 08:01:27'),
(298, 30, 64, 90, 'Epson IQ 2190', 1.00, NULL, 303.00, 303.00, 0.00, 56.24, 16.00, 359.24, 0.00, 'YER4V5quLNDMOX', 'aAM4Sgva', 1, 1, 1, 1, NULL, '2017-12-02 08:01:27', '2017-12-02 08:01:27'),
(299, 30, 49, 79, 'Hp320A', 1.00, NULL, 299.00, 299.00, 0.00, 55.49, 16.00, 354.49, 0.00, '3Qvj4DnTNkKlX', 'e1GJf5Ab', 1, 1, 1, 1, NULL, '2017-12-02 08:01:27', '2017-12-02 08:01:27'),
(300, 30, 61, 60, 'CE505A', 1.00, NULL, 118.00, 118.00, 0.00, 21.90, 16.00, 139.90, 0.00, '2vQ51yDIkMvB', 'e7pQuLoa', 1, 1, 1, 1, NULL, '2017-12-02 08:01:27', '2017-12-02 08:01:27'),
(301, 31, 80, 88, 'Company Letter Heads', 1.00, NULL, 265.00, 265.00, 0.00, 49.18, 16.00, 314.18, 0.00, 'KZ7qgjNHy7L2Z', 'bYy1ikJb', 1, 1, 1, 1, NULL, '2017-12-02 08:01:27', '2017-12-02 08:01:27'),
(302, 31, 98, 27, 'File Dividers', 1.00, NULL, 224.00, 224.00, 0.00, 41.57, 16.00, 265.57, 0.00, 'WLQWBQlFvK3ED', 'b27yUQzd', 1, 1, 1, 1, NULL, '2017-12-02 08:01:28', '2017-12-02 08:01:28'),
(303, 31, 3, 44, '2QUIRE COUNTER BOOKS', 1.00, NULL, 157.00, 157.00, 0.00, 29.14, 16.00, 186.14, 0.00, 'nZ8mRkGuApyNz', 'e9DqiEqd', 1, 1, 1, 1, NULL, '2017-12-02 08:01:28', '2017-12-02 08:01:28'),
(304, 31, 3, 44, '2QUIRE COUNTER BOOKS', 1.00, NULL, 157.00, 157.00, 0.00, 29.14, 16.00, 186.14, 0.00, 'nZ8mRkGuApyNz', 'aQ6QuxWb', 1, 1, 1, 1, NULL, '2017-12-02 08:01:28', '2017-12-02 08:01:28'),
(305, 31, 59, 54, 'CE312', 1.00, NULL, 197.00, 197.00, 0.00, 36.56, 16.00, 233.56, 0.00, '1WQ40D3cMMppPj', 'bDQBuAvd', 1, 1, 1, 1, NULL, '2017-12-02 08:01:28', '2017-12-02 08:01:28'),
(306, 31, 4, 194, 'A4 WRITING PADS', 1.00, NULL, 122.00, 122.00, 0.00, 22.64, 16.00, 144.64, 0.00, 'jZn12JYUONXn3', 'b8MwtgMd', 1, 1, 1, 1, NULL, '2017-12-02 08:01:28', '2017-12-02 08:01:28'),
(307, 31, 8, 192, 'EXPORTS STRONG ROOM RECORD BOOKS', 1.00, NULL, 175.00, 175.00, 0.00, 32.48, 16.00, 207.48, 0.00, 'k8VjVwgUzgOxg', 'aMJOSKWb', 1, 1, 1, 1, NULL, '2017-12-02 08:01:28', '2017-12-02 08:01:28'),
(308, 31, 64, 90, 'Epson IQ 2190', 1.00, NULL, 303.00, 303.00, 0.00, 56.24, 16.00, 359.24, 0.00, 'YER4V5quLNDMOX', 'azXPhr8d', 1, 1, 1, 1, NULL, '2017-12-02 08:01:28', '2017-12-02 08:01:28'),
(309, 31, 75, 49, 'Flip chart', 1.00, NULL, 312.00, 312.00, 0.00, 57.91, 16.00, 369.91, 0.00, 'Qnr8gD0i3Rz1w', 'dyXPik2b', 1, 1, 1, 1, NULL, '2017-12-02 08:01:28', '2017-12-02 08:01:28'),
(310, 31, 80, 88, 'Company Letter Heads', 1.00, NULL, 265.00, 265.00, 0.00, 49.18, 16.00, 314.18, 0.00, 'KZ7qgjNHy7L2Z', 'azXms89d', 1, 1, 1, 1, NULL, '2017-12-02 08:01:28', '2017-12-02 08:01:28'),
(311, 32, 12, 120, 'A4 BRANDED ENVELOPES', 1.00, NULL, 110.00, 110.00, 0.00, 20.42, 16.00, 130.42, 0.00, '0RNr6XwhrMLKp', 'ep2QSG5b', 1, 1, 1, 1, NULL, '2017-12-02 08:01:29', '2017-12-02 08:01:29'),
(312, 32, 73, 88, 'safety boots', 1.00, NULL, 205.00, 205.00, 0.00, 38.05, 16.00, 243.05, 0.00, '66KGJrWHoA4NL', 'dLJ7hOEa', 1, 1, 1, 1, NULL, '2017-12-02 08:01:29', '2017-12-02 08:01:29'),
(313, 32, 63, 141, 'Q7553A', 1.00, NULL, 308.00, 308.00, 0.00, 57.16, 16.00, 365.16, 0.00, '71AgYn4tAQM7x4', 'dyXwCX7b', 1, 1, 1, 1, NULL, '2017-12-02 08:01:29', '2017-12-02 08:01:29'),
(314, 32, 86, 121, 'Complimentaries', 1.00, NULL, 314.00, 314.00, 0.00, 58.28, 16.00, 372.28, 0.00, 'P7KV1XZS7AJPN', 'b2W7SOQd', 1, 1, 1, 1, NULL, '2017-12-02 08:01:29', '2017-12-02 08:01:29'),
(315, 32, 72, 46, 'A5Khaki brown  envelopes', 1.00, NULL, 237.00, 237.00, 0.00, 43.99, 16.00, 280.99, 0.00, 'GZABXvytJNEgr', 'bWqqtpye', 1, 1, 1, 1, NULL, '2017-12-02 08:01:29', '2017-12-02 08:01:29'),
(316, 32, 51, 121, 'Hp322A', 1.00, NULL, 150.00, 150.00, 0.00, 27.84, 16.00, 177.84, 0.00, 'ZYLNzqDul8yqV', 'er9YiPod', 1, 1, 1, 1, NULL, '2017-12-02 08:01:30', '2017-12-02 08:01:30'),
(317, 32, 30, 148, 'STAMP INK', 1.00, NULL, 298.00, 298.00, 0.00, 55.31, 16.00, 353.31, 0.00, 'r8WvjPGu6DyKm', 'e14YtZjd', 1, 1, 1, 1, NULL, '2017-12-02 08:01:30', '2017-12-02 08:01:30'),
(318, 32, 17, 20, 'PAPER CLIPS  50MM', 1.00, NULL, 204.00, 204.00, 0.00, 37.86, 16.00, 241.86, 0.00, '4QvAKNYC2EwOK', 'bWqWFxXe', 1, 1, 1, 1, NULL, '2017-12-02 08:01:30', '2017-12-02 08:01:30'),
(319, 32, 60, 181, 'CE313', 1.00, NULL, 117.00, 117.00, 0.00, 21.72, 16.00, 138.72, 0.00, 'p8Yy0GLF5WrDn', 'aO85Spvb', 1, 1, 1, 1, NULL, '2017-12-02 08:01:30', '2017-12-02 08:01:30'),
(320, 32, 100, 35, 'Ledger book A4 2Q', 1.00, NULL, 155.00, 155.00, 0.00, 28.77, 16.00, 183.77, 0.00, 'xG2qPoOs5PR3g', 'e9gOSl0b', 1, 1, 1, 1, NULL, '2017-12-02 08:01:30', '2017-12-02 08:01:30'),
(321, 33, 49, 79, 'Hp320A', 1.00, NULL, 299.00, 299.00, 0.00, 55.49, 16.00, 354.49, 0.00, '3Qvj4DnTNkKlX', 'dPQgFLXe', 1, 1, 1, 1, NULL, '2017-12-02 08:01:30', '2017-12-02 08:01:30'),
(322, 33, 80, 88, 'Company Letter Heads', 1.00, NULL, 265.00, 265.00, 0.00, 49.18, 16.00, 314.18, 0.00, 'KZ7qgjNHy7L2Z', 'ax1Lcqjb', 1, 1, 1, 1, NULL, '2017-12-02 08:01:30', '2017-12-02 08:01:30'),
(323, 33, 78, 178, 'Binding covers', 1.00, NULL, 149.00, 149.00, 0.00, 27.65, 16.00, 176.65, 0.00, '2vxZN6Duw6LR1', 'eZ0XC0Nb', 1, 1, 1, 1, NULL, '2017-12-02 08:01:30', '2017-12-02 08:01:30'),
(324, 33, 10, 146, 'A3 KHAKI BROWN ENVELOPES ', 1.00, NULL, 163.00, 163.00, 0.00, 30.25, 16.00, 193.25, 0.00, 'VmpBkq8iwVKVq', 'e14pT0vd', 1, 1, 1, 1, NULL, '2017-12-02 08:01:30', '2017-12-02 08:01:30'),
(325, 33, 102, 136, 'CE 410A', 1.00, NULL, 286.00, 286.00, 0.00, 53.08, 16.00, 339.08, 0.00, 'pgOGm4oHnOjJPE', 'bmykU3gb', 1, 1, 1, 1, NULL, '2017-12-02 08:01:31', '2017-12-02 08:01:31'),
(326, 33, 88, 175, 'Paper Tray', 1.00, NULL, 257.00, 257.00, 0.00, 47.70, 16.00, 304.70, 0.00, 'wVN2920tGnz35', 'bqZ5cZXd', 1, 1, 1, 1, NULL, '2017-12-02 08:01:31', '2017-12-02 08:01:31'),
(327, 33, 30, 148, 'STAMP INK', 1.00, NULL, 298.00, 298.00, 0.00, 55.31, 16.00, 353.31, 0.00, 'Jyp7Y77SAy9R', 'dLJli4Ga', 1, 1, 1, 1, NULL, '2017-12-02 08:01:31', '2017-12-02 08:01:31'),
(328, 33, 63, 141, 'Q7553A', 1.00, NULL, 308.00, 308.00, 0.00, 57.16, 16.00, 365.16, 0.00, '71AgYn4tAQM7x4', 'dPQ9s93e', 1, 1, 1, 1, NULL, '2017-12-02 08:01:31', '2017-12-02 08:01:31'),
(329, 33, 58, 111, 'CE311', 1.00, NULL, 249.00, 249.00, 0.00, 46.21, 16.00, 295.21, 0.00, '3l47QYOTB0kzZ', 'b4LJSpPb', 1, 1, 1, 1, NULL, '2017-12-02 08:01:31', '2017-12-02 08:01:31'),
(330, 33, 98, 27, 'File Dividers', 1.00, NULL, 224.00, 224.00, 0.00, 41.57, 16.00, 265.57, 0.00, 'WLQWBQlFvK3ED', 'aO8zFYDb', 1, 1, 1, 1, NULL, '2017-12-02 08:01:31', '2017-12-02 08:01:31'),
(331, 34, 63, 141, 'Q7553A', 1.00, NULL, 308.00, 308.00, 0.00, 57.16, 16.00, 365.16, 0.00, '71AgYn4tAQM7x4', 'eX5lUAKa', 1, 1, 1, 1, NULL, '2017-12-02 08:01:31', '2017-12-02 08:01:31'),
(332, 34, 95, 107, 'Pen Holders', 1.00, NULL, 164.00, 164.00, 0.00, 30.44, 16.00, 194.44, 0.00, 'APYZP0RuKLL34', 'bk70hQLb', 1, 1, 1, 1, NULL, '2017-12-02 08:01:32', '2017-12-02 08:01:32'),
(333, 34, 90, 118, 'A4 Laminating pouch', 1.00, NULL, 196.00, 196.00, 0.00, 36.38, 16.00, 232.38, 0.00, 'j2y6KW6hnRL2M9', 'e9gvIx9b', 1, 1, 1, 1, NULL, '2017-12-02 08:01:32', '2017-12-02 08:01:32'),
(334, 34, 30, 148, 'STAMP INK', 1.00, NULL, 298.00, 298.00, 0.00, 55.31, 16.00, 353.31, 0.00, 'vlvPNR8F6Ww8v', 'eZ0KsWyb', 1, 1, 1, 1, NULL, '2017-12-02 08:01:32', '2017-12-02 08:01:32'),
(335, 34, 8, 192, 'EXPORTS STRONG ROOM RECORD BOOKS', 1.00, NULL, 175.00, 175.00, 0.00, 32.48, 16.00, 207.48, 0.00, 'k8VjVwgUzgOxg', 'b8EnikOd', 1, 1, 1, 1, NULL, '2017-12-02 08:01:32', '2017-12-02 08:01:32'),
(336, 34, 4, 194, 'A4 WRITING PADS', 1.00, NULL, 122.00, 122.00, 0.00, 22.64, 16.00, 144.64, 0.00, 'jZn12JYUONXn3', 'azXJhm8d', 1, 1, 1, 1, NULL, '2017-12-02 08:01:32', '2017-12-02 08:01:32'),
(337, 34, 5, 32, 'A5 SHORTHAND BOOKS', 1.00, NULL, 161.00, 161.00, 0.00, 29.88, 16.00, 190.88, 0.00, 'QnGl5vxFkoDJnP', 'el74Cg5d', 1, 1, 1, 1, NULL, '2017-12-02 08:01:32', '2017-12-02 08:01:32'),
(338, 34, 82, 26, 'Adhesives', 1.00, NULL, 160.00, 160.00, 0.00, 29.70, 16.00, 189.70, 0.00, 'L7RY38wFzDPRr', 'aM1vhPWa', 1, 1, 1, 1, NULL, '2017-12-02 08:01:32', '2017-12-02 08:01:32'),
(339, 34, 40, 1, 'ULD BOOKS', 1.00, NULL, 145.00, 145.00, 0.00, 26.91, 16.00, 171.91, 0.00, 'O700Xj8flDz4R', 'dR1Nivlb', 1, 1, 1, 1, NULL, '2017-12-02 08:01:32', '2017-12-02 08:01:32'),
(340, 34, 52, 65, 'Hp323A', 1.00, NULL, 185.00, 185.00, 0.00, 34.34, 16.00, 219.34, 0.00, 'NxKOroRfoyvDw', 'eExjhp1d', 1, 1, 1, 1, NULL, '2017-12-02 08:01:32', '2017-12-02 08:01:32'),
(341, 35, 80, 88, 'Company Letter Heads', 1.00, NULL, 265.00, 265.00, 0.00, 49.18, 16.00, 314.18, 0.00, 'KZ7qgjNHy7L2Z', 'er9wcM0d', 1, 1, 1, 1, NULL, '2017-12-02 08:01:33', '2017-12-02 08:01:33'),
(342, 35, 30, 148, 'STAMP INK', 1.00, NULL, 298.00, 298.00, 0.00, 55.31, 16.00, 353.31, 0.00, 'NxAGpmqfxxDo8', 'e5LYIx7d', 1, 1, 1, 1, NULL, '2017-12-02 08:01:33', '2017-12-02 08:01:33'),
(343, 35, 80, 88, 'Company Letter Heads', 1.00, NULL, 265.00, 265.00, 0.00, 49.18, 16.00, 314.18, 0.00, 'KZ7qgjNHy7L2Z', 'dN03C0ka', 1, 1, 1, 1, NULL, '2017-12-02 08:01:33', '2017-12-02 08:01:33'),
(344, 35, 90, 118, 'A4 Laminating pouch', 1.00, NULL, 196.00, 196.00, 0.00, 36.38, 16.00, 232.38, 0.00, 'j2y6KW6hnRL2M9', 'bk7pc58b', 1, 1, 1, 1, NULL, '2017-12-02 08:01:33', '2017-12-02 08:01:33'),
(345, 35, 100, 35, 'Ledger book A4 2Q', 1.00, NULL, 155.00, 155.00, 0.00, 28.77, 16.00, 183.77, 0.00, 'zKJMv3juZ3wDx', 'enOEf6Ba', 1, 1, 1, 1, NULL, '2017-12-02 08:01:33', '2017-12-02 08:01:33'),
(346, 35, 52, 65, 'Hp323A', 1.00, NULL, 185.00, 185.00, 0.00, 34.34, 16.00, 219.34, 0.00, 'NxKOroRfoyvDw', 'bqZguR8d', 1, 1, 1, 1, NULL, '2017-12-02 08:01:33', '2017-12-02 08:01:33'),
(347, 35, 54, 55, 'Hp541A', 1.00, NULL, 230.00, 230.00, 0.00, 42.69, 16.00, 272.69, 0.00, '6X1NkrVfD0qRX', 'eX5gfv2a', 1, 1, 1, 1, NULL, '2017-12-02 08:01:33', '2017-12-02 08:01:33'),
(348, 35, 17, 20, 'PAPER CLIPS  50MM', 1.00, NULL, 204.00, 204.00, 0.00, 37.86, 16.00, 241.86, 0.00, '4QvAKNYC2EwOK', 'aO8OTjVb', 1, 1, 1, 1, NULL, '2017-12-02 08:01:34', '2017-12-02 08:01:34'),
(349, 35, 77, 110, 'Clip boards', 1.00, NULL, 129.00, 129.00, 0.00, 23.94, 16.00, 152.94, 0.00, 'WLVAyZnhGnZoo', 'boyEH88e', 1, 1, 1, 1, NULL, '2017-12-02 08:01:34', '2017-12-02 08:01:34'),
(350, 35, 48, 87, 'Staple Pins Big 66/14', 1.00, NULL, 249.00, 249.00, 0.00, 46.21, 16.00, 295.21, 0.00, 'vg16AOnTpJnK7', 'bD8Mc8kb', 1, 1, 1, 1, NULL, '2017-12-02 08:01:34', '2017-12-02 08:01:34'),
(351, 36, 63, 141, 'Q7553A', 1.00, NULL, 308.00, 308.00, 0.00, 57.16, 16.00, 365.16, 0.00, '71AgYn4tAQM7x4', 'dJQGUnlb', 1, 1, 1, 1, NULL, '2017-12-02 08:01:34', '2017-12-02 08:01:34'),
(352, 36, 67, 119, 'DL Windowed Envelops', 1.00, NULL, 184.00, 184.00, 0.00, 34.15, 16.00, 218.15, 0.00, 'KrG0KXxiZ434k', 'eXMxhopa', 1, 1, 1, 1, NULL, '2017-12-02 08:01:34', '2017-12-02 08:01:34'),
(353, 36, 62, 102, 'CE285A', 1.00, NULL, 240.00, 240.00, 0.00, 44.54, 16.00, 284.54, 0.00, 'yoWk3Q2iWXlz9', 'dG96SmNa', 1, 1, 1, 1, NULL, '2017-12-02 08:01:34', '2017-12-02 08:01:34'),
(354, 36, 3, 44, '2QUIRE COUNTER BOOKS', 1.00, NULL, 157.00, 157.00, 0.00, 29.14, 16.00, 186.14, 0.00, 'nZ8mRkGuApyNz', 'dJPZuvZa', 1, 1, 1, 1, NULL, '2017-12-02 08:01:34', '2017-12-02 08:01:34'),
(355, 36, 73, 88, 'safety boots', 1.00, NULL, 205.00, 205.00, 0.00, 38.05, 16.00, 243.05, 0.00, '66KGJrWHoA4NL', 'bq2Ytwxd', 1, 1, 1, 1, NULL, '2017-12-02 08:01:34', '2017-12-02 08:01:34'),
(356, 36, 47, 146, 'Ear Muffs', 1.00, NULL, 229.00, 229.00, 0.00, 42.50, 16.00, 271.50, 0.00, '2xQB44BH15OY2', 'eZWYFkLa', 1, 1, 1, 1, NULL, '2017-12-02 08:01:35', '2017-12-02 08:01:35'),
(357, 36, 87, 139, 'Security Stickers', 1.00, NULL, 274.00, 274.00, 0.00, 50.85, 16.00, 324.85, 0.00, 'gJmjNqyfLRx25', 'enzRfKNe', 1, 1, 1, 1, NULL, '2017-12-02 08:01:35', '2017-12-02 08:01:35'),
(358, 36, 66, 5, 'A5 Branded Envelopes', 1.00, NULL, 182.00, 182.00, 0.00, 33.78, 16.00, 215.78, 0.00, 'qxEnLj9t3NA8P', 'aK6Lupve', 1, 1, 1, 1, NULL, '2017-12-02 08:01:35', '2017-12-02 08:01:35'),
(359, 36, 27, 149, 'SMALL PAPER PUNCH', 1.00, NULL, 238.00, 238.00, 0.00, 44.17, 16.00, 282.17, 0.00, 'k5JMRmmULr2G8', 'dN80H4wa', 1, 1, 1, 1, NULL, '2017-12-02 08:01:35', '2017-12-02 08:01:35'),
(360, 36, 54, 55, 'Hp541A', 1.00, NULL, 230.00, 230.00, 0.00, 42.69, 16.00, 272.69, 0.00, 'Wngo95kS5zXYlZ', 'dBnnhvgd', 1, 1, 1, 1, NULL, '2017-12-02 08:01:35', '2017-12-02 08:01:35'),
(361, 37, 78, 178, 'Binding covers', 1.00, NULL, 149.00, 149.00, 0.00, 27.65, 16.00, 176.65, 0.00, '2vxZN6Duw6LR1', 'aK6YHZLe', 1, 1, 1, 1, NULL, '2017-12-02 08:01:36', '2017-12-02 08:01:36'),
(362, 37, 12, 120, 'A4 BRANDED ENVELOPES', 1.00, NULL, 110.00, 110.00, 0.00, 20.42, 16.00, 130.42, 0.00, 'MwX0kRPt76MxM', 'aK6AIXme', 1, 1, 1, 1, NULL, '2017-12-02 08:01:36', '2017-12-02 08:01:36'),
(363, 37, 52, 65, 'Hp323A', 1.00, NULL, 185.00, 185.00, 0.00, 34.34, 16.00, 219.34, 0.00, 'NxKOroRfoyvDw', 'dymJF41d', 1, 1, 1, 1, NULL, '2017-12-02 08:01:36', '2017-12-02 08:01:36'),
(364, 37, 34, 159, 'Glue STICK', 1.00, NULL, 138.00, 138.00, 0.00, 25.61, 16.00, 163.61, 0.00, 'RoQV942i3N546', 'bkoDioRb', 1, 1, 1, 1, NULL, '2017-12-02 08:01:36', '2017-12-02 08:01:36'),
(365, 37, 40, 1, 'ULD BOOKS', 1.00, NULL, 145.00, 145.00, 0.00, 26.91, 16.00, 171.91, 0.00, 'O700Xj8flDz4R', 'dN8Xf60a', 1, 1, 1, 1, NULL, '2017-12-02 08:01:36', '2017-12-02 08:01:36'),
(366, 37, 98, 27, 'File Dividers', 1.00, NULL, 224.00, 224.00, 0.00, 41.57, 16.00, 265.57, 0.00, 'WLQWBQlFvK3ED', 'bkoXtZOb', 1, 1, 1, 1, NULL, '2017-12-02 08:01:36', '2017-12-02 08:01:36'),
(367, 37, 33, 40, 'WHITE OUT', 1.00, NULL, 110.00, 110.00, 0.00, 20.42, 16.00, 130.42, 0.00, '68EWzAYczOQBK', 'aOZ9CJRe', 1, 1, 1, 1, NULL, '2017-12-02 08:01:36', '2017-12-02 08:01:36'),
(368, 37, 27, 149, 'SMALL PAPER PUNCH', 1.00, NULL, 238.00, 238.00, 0.00, 44.17, 16.00, 282.17, 0.00, 'k5JMRmmULr2G8', 'aK67hpYe', 1, 1, 1, 1, NULL, '2017-12-02 08:01:37', '2017-12-02 08:01:37'),
(369, 37, 72, 46, 'A5Khaki brown  envelopes', 1.00, NULL, 237.00, 237.00, 0.00, 43.99, 16.00, 280.99, 0.00, 'GZABXvytJNEgr', 'bmEkI9Ab', 1, 1, 1, 1, NULL, '2017-12-02 08:01:37', '2017-12-02 08:01:37'),
(370, 37, 92, 6, 'GIANT Stapler', 1.00, NULL, 237.00, 237.00, 0.00, 43.99, 16.00, 280.99, 0.00, 'zvABPLDixjOvA', 'enzXs2Pe', 1, 1, 1, 1, NULL, '2017-12-02 08:01:37', '2017-12-02 08:01:37'),
(371, 38, 4, 194, 'A4 WRITING PADS', 1.00, NULL, 122.00, 122.00, 0.00, 22.64, 16.00, 144.64, 0.00, 'jZn12JYUONXn3', 'dLPlHYJd', 1, 1, 1, 1, NULL, '2017-12-02 08:01:37', '2017-12-02 08:01:37'),
(372, 38, 67, 119, 'DL Windowed Envelops', 1.00, NULL, 184.00, 184.00, 0.00, 34.15, 16.00, 218.15, 0.00, 'KrG0KXxiZ434k', 'aAm2iO0a', 1, 1, 1, 1, NULL, '2017-12-02 08:01:37', '2017-12-02 08:01:37'),
(373, 38, 78, 178, 'Binding covers', 1.00, NULL, 149.00, 149.00, 0.00, 27.65, 16.00, 176.65, 0.00, '2vxZN6Duw6LR1', 'e7AkuGyb', 1, 1, 1, 1, NULL, '2017-12-02 08:01:38', '2017-12-02 08:01:38'),
(374, 38, 35, 111, 'HIGHLIGHTER', 1.00, NULL, 187.00, 187.00, 0.00, 34.71, 16.00, 221.71, 0.00, 'ZV5jj0KhGVwN7', 'axlwFrka', 1, 1, 1, 1, NULL, '2017-12-02 08:01:38', '2017-12-02 08:01:38'),
(375, 38, 72, 46, 'A5Khaki brown  envelopes', 1.00, NULL, 237.00, 237.00, 0.00, 43.99, 16.00, 280.99, 0.00, '91z29KEhjXW2O', 'b29NtwEa', 1, 1, 1, 1, NULL, '2017-12-02 08:01:38', '2017-12-02 08:01:38'),
(376, 38, 33, 40, 'WHITE OUT', 1.00, NULL, 110.00, 110.00, 0.00, 20.42, 16.00, 130.42, 0.00, '68EWzAYczOQBK', 'e92ETGAa', 1, 1, 1, 1, NULL, '2017-12-02 08:01:38', '2017-12-02 08:01:38'),
(377, 38, 52, 65, 'Hp323A', 1.00, NULL, 185.00, 185.00, 0.00, 34.34, 16.00, 219.34, 0.00, 'NxKOroRfoyvDw', 'avj6i8Ja', 1, 1, 1, 1, NULL, '2017-12-02 08:01:39', '2017-12-02 08:01:39'),
(378, 38, 3, 44, '2QUIRE COUNTER BOOKS', 1.00, NULL, 157.00, 157.00, 0.00, 29.14, 16.00, 186.14, 0.00, 'nZ8mRkGuApyNz', 'eXMGc13a', 1, 1, 1, 1, NULL, '2017-12-02 08:01:39', '2017-12-02 08:01:39'),
(379, 38, 98, 27, 'File Dividers', 1.00, NULL, 224.00, 224.00, 0.00, 41.57, 16.00, 265.57, 0.00, 'WLQWBQlFvK3ED', 'aAmzIOqa', 1, 1, 1, 1, NULL, '2017-12-02 08:01:39', '2017-12-02 08:01:39'),
(380, 38, 67, 119, 'DL Windowed Envelops', 1.00, NULL, 184.00, 184.00, 0.00, 34.15, 16.00, 218.15, 0.00, 'KrG0KXxiZ434k', 'aOZnuj0e', 1, 1, 1, 1, NULL, '2017-12-02 08:01:39', '2017-12-02 08:01:39'),
(381, 39, 13, 135, 'PRINTING PAPERS', 1.00, NULL, 139.00, 139.00, 0.00, 25.80, 16.00, 164.80, 0.00, '48rm6zKH311Ay', 'eXMOipwa', 1, 1, 1, 1, NULL, '2017-12-02 08:01:39', '2017-12-02 08:01:39'),
(382, 39, 79, 46, 'Spiral Binders', 1.00, NULL, 184.00, 184.00, 0.00, 34.15, 16.00, 218.15, 0.00, 'GZRvDZOukp1Vo', 'b601sRLe', 1, 1, 1, 1, NULL, '2017-12-02 08:01:40', '2017-12-02 08:01:40'),
(383, 39, 42, 87, 'SECURITY DECLARATION BOOKS', 1.00, NULL, 233.00, 233.00, 0.00, 43.24, 16.00, 276.24, 0.00, '5QRJmoKT1xZ4N', 'b60Qtxge', 1, 1, 1, 1, NULL, '2017-12-02 08:01:40', '2017-12-02 08:01:40'),
(384, 39, 77, 110, 'Clip boards', 1.00, NULL, 129.00, 129.00, 0.00, 23.94, 16.00, 152.94, 0.00, 'W789lg4HMDXMX', 'e7AGi7Mb', 1, 1, 1, 1, NULL, '2017-12-02 08:01:40', '2017-12-02 08:01:40'),
(385, 39, 23, 191, 'PERMANENT MARKER PENS', 1.00, NULL, 281.00, 281.00, 0.00, 52.15, 16.00, 333.15, 0.00, 'XokqqVvTDkKJE', 'aQOwUmld', 1, 1, 1, 1, NULL, '2017-12-02 08:01:40', '2017-12-02 08:01:40'),
(386, 39, 17, 20, 'PAPER CLIPS  50MM', 1.00, NULL, 204.00, 204.00, 0.00, 37.86, 16.00, 241.86, 0.00, '4QvAKNYC2EwOK', 'eZWjI8Ba', 1, 1, 1, 1, NULL, '2017-12-02 08:01:40', '2017-12-02 08:01:40'),
(387, 39, 80, 88, 'Company Letter Heads', 1.00, NULL, 265.00, 265.00, 0.00, 49.18, 16.00, 314.18, 0.00, 'KZ7qgjNHy7L2Z', 'aK63HDNe', 1, 1, 1, 1, NULL, '2017-12-02 08:01:40', '2017-12-02 08:01:40'),
(388, 39, 5, 32, 'A5 SHORTHAND BOOKS', 1.00, NULL, 161.00, 161.00, 0.00, 29.88, 16.00, 190.88, 0.00, 'QnGl5vxFkoDJnP', 'qdG9psga', 1, 1, 1, 1, NULL, '2017-12-02 08:01:40', '2017-12-02 08:01:40'),
(389, 39, 74, 114, 'Rulers', 1.00, NULL, 215.00, 215.00, 0.00, 39.90, 16.00, 254.90, 0.00, 'Ell2vL2u30QVqZ', 'bD0ytr3b', 1, 1, 1, 1, NULL, '2017-12-02 08:01:40', '2017-12-02 08:01:40'),
(390, 39, 90, 118, 'A4 Laminating pouch', 1.00, NULL, 196.00, 196.00, 0.00, 36.38, 16.00, 232.38, 0.00, 'j2y6KW6hnRL2M9', 'b60Duj8e', 1, 1, 1, 1, NULL, '2017-12-02 08:01:41', '2017-12-02 08:01:41'),
(391, 40, 22, 63, 'BIRO PENS RED', 1.00, NULL, 315.00, 315.00, 0.00, 58.46, 16.00, 373.46, 0.00, 'G6DR4yBCRD6wo', 'bmEKsxZb', 1, 1, 1, 1, NULL, '2017-12-02 08:01:41', '2017-12-02 08:01:41'),
(392, 40, 47, 146, 'Ear Muffs', 1.00, NULL, 229.00, 229.00, 0.00, 42.50, 16.00, 271.50, 0.00, 'GvX8Oo5HYXEJE', 'e394FqZb', 1, 1, 1, 1, NULL, '2017-12-02 08:01:41', '2017-12-02 08:01:41'),
(393, 40, 48, 87, 'Staple Pins Big 66/14', 1.00, NULL, 249.00, 249.00, 0.00, 46.21, 16.00, 295.21, 0.00, 'vg16AOnTpJnK7', 'aAmyI9Ga', 1, 1, 1, 1, NULL, '2017-12-02 08:01:41', '2017-12-02 08:01:41'),
(394, 40, 87, 139, 'Security Stickers', 1.00, NULL, 274.00, 274.00, 0.00, 50.85, 16.00, 324.85, 0.00, 'gJmjNqyfLRx25', 'eEPNsx9d', 1, 1, 1, 1, NULL, '2017-12-02 08:01:41', '2017-12-02 08:01:41'),
(395, 40, 17, 20, 'PAPER CLIPS  50MM', 1.00, NULL, 204.00, 204.00, 0.00, 37.86, 16.00, 241.86, 0.00, '4QvAKNYC2EwOK', 'mavjKCEa', 1, 1, 1, 1, NULL, '2017-12-02 08:01:41', '2017-12-02 08:01:41'),
(396, 40, 86, 121, 'Complimentaries', 1.00, NULL, 314.00, 314.00, 0.00, 58.28, 16.00, 372.28, 0.00, '2RrqqoOFqNp8k', 'aAQqhMLa', 1, 1, 1, 1, NULL, '2017-12-02 08:01:41', '2017-12-02 08:01:41'),
(397, 40, 68, 79, 'DL Non-Windowed Envelopes', 1.00, NULL, 210.00, 210.00, 0.00, 38.98, 16.00, 248.98, 0.00, 'G6NGmOjUmVw3r', 'eEZRHm4a', 1, 1, 1, 1, NULL, '2017-12-02 08:01:42', '2017-12-02 08:01:42'),
(398, 40, 17, 20, 'PAPER CLIPS  50MM', 1.00, NULL, 204.00, 204.00, 0.00, 37.86, 16.00, 241.86, 0.00, '4QvAKNYC2EwOK', 'dGYZclya', 1, 1, 1, 1, NULL, '2017-12-02 08:01:42', '2017-12-02 08:01:42'),
(399, 40, 63, 141, 'Q7553A', 1.00, NULL, 308.00, 308.00, 0.00, 57.16, 16.00, 365.16, 0.00, '71AgYn4tAQM7x4', 'aKYZf2Zd', 1, 1, 1, 1, NULL, '2017-12-02 08:01:42', '2017-12-02 08:01:42'),
(400, 40, 3, 44, '2QUIRE COUNTER BOOKS', 1.00, NULL, 157.00, 157.00, 0.00, 29.14, 16.00, 186.14, 0.00, 'nZ8mRkGuApyNz', 'e02YcYgb', 1, 1, 1, 1, NULL, '2017-12-02 08:01:42', '2017-12-02 08:01:42'),
(401, 41, 33, 40, 'WHITE OUT', 1.00, NULL, 110.00, 110.00, 0.00, 20.42, 16.00, 130.42, 0.00, 'PZOMAVLHm8N1z', 'epRZi6Rb', 1, 1, 1, 1, NULL, '2017-12-02 08:01:42', '2017-12-02 08:01:42'),
(402, 41, 17, 20, 'PAPER CLIPS  50MM', 1.00, NULL, 204.00, 204.00, 0.00, 37.86, 16.00, 241.86, 0.00, '4QvAKNYC2EwOK', 'gepRksxb', 1, 1, 1, 1, NULL, '2017-12-02 08:01:42', '2017-12-02 08:01:42'),
(403, 41, 23, 191, 'PERMANENT MARKER PENS', 1.00, NULL, 281.00, 281.00, 0.00, 52.15, 16.00, 333.15, 0.00, 'K15zAE4fwP7Kw', 'eV5Qsyyd', 1, 1, 1, 1, NULL, '2017-12-02 08:01:43', '2017-12-02 08:01:43'),
(404, 41, 59, 54, 'CE312', 1.00, NULL, 197.00, 197.00, 0.00, 36.56, 16.00, 233.56, 0.00, 'L8gPD8qFqlDZ9', 'ejvnFxDe', 1, 1, 1, 1, NULL, '2017-12-02 08:01:43', '2017-12-02 08:01:43'),
(405, 41, 67, 119, 'DL Windowed Envelops', 1.00, NULL, 184.00, 184.00, 0.00, 34.15, 16.00, 218.15, 0.00, 'KrG0KXxiZ434k', 'azBBHzwa', 1, 1, 1, 1, NULL, '2017-12-02 08:01:43', '2017-12-02 08:01:43'),
(406, 41, 5, 32, 'A5 SHORTHAND BOOKS', 1.00, NULL, 161.00, 161.00, 0.00, 29.88, 16.00, 190.88, 0.00, 'QnGl5vxFkoDJnP', 'e02Auxjb', 1, 1, 1, 1, NULL, '2017-12-02 08:01:43', '2017-12-02 08:01:43'),
(407, 41, 46, 93, 'LEATHER GLOVES', 1.00, NULL, 289.00, 289.00, 0.00, 53.64, 16.00, 342.64, 0.00, 'M84N32pS9rJBq', 'enYNHB2d', 1, 1, 1, 1, NULL, '2017-12-02 08:01:43', '2017-12-02 08:01:43'),
(408, 41, 95, 107, 'Pen Holders', 1.00, NULL, 164.00, 164.00, 0.00, 30.44, 16.00, 194.44, 0.00, 'APYZP0RuKLL34', 'e5l3cv0d', 1, 1, 1, 1, NULL, '2017-12-02 08:01:43', '2017-12-02 08:01:43'),
(409, 41, 90, 118, 'A4 Laminating pouch', 1.00, NULL, 196.00, 196.00, 0.00, 36.38, 16.00, 232.38, 0.00, 'j2y6KW6hnRL2M9', 'azBQUjqa', 1, 1, 1, 1, NULL, '2017-12-02 08:01:44', '2017-12-02 08:01:44'),
(410, 41, 41, 1, 'PROPERTY DECLARATION BOOKS', 1.00, NULL, 211.00, 211.00, 0.00, 39.16, 16.00, 250.16, 0.00, 'G5DPXpOSn10OE', 'bDYWTM6d', 1, 1, 1, 1, NULL, '2017-12-02 08:01:44', '2017-12-02 08:01:44'),
(411, 42, 78, 178, 'Binding covers', 1.00, NULL, 149.00, 149.00, 0.00, 27.65, 16.00, 176.65, 0.00, '2vxZN6Duw6LR1', 'elv6fJGb', 1, 1, 1, 1, NULL, '2017-12-02 08:01:44', '2017-12-02 08:01:44'),
(412, 42, 76, 158, 'White board markers', 1.00, NULL, 242.00, 242.00, 0.00, 44.92, 16.00, 286.92, 0.00, 'rR4wDRjFBPEP3', 'azB4h5Ja', 1, 1, 1, 1, NULL, '2017-12-02 08:01:45', '2017-12-02 08:01:45'),
(413, 42, 67, 119, 'DL Windowed Envelops', 1.00, NULL, 184.00, 184.00, 0.00, 34.15, 16.00, 218.15, 0.00, '5yAkjO8UPE60v', 'bWw1cznb', 1, 1, 1, 1, NULL, '2017-12-02 08:01:45', '2017-12-02 08:01:45'),
(414, 42, 28, 183, 'PENCILS', 1.00, NULL, 312.00, 312.00, 0.00, 57.91, 16.00, 369.91, 0.00, 'oQo7RLVcrvgN7Q', 'qdPMlfQe', 1, 1, 1, 1, NULL, '2017-12-02 08:01:45', '2017-12-02 08:01:45'),
(415, 42, 72, 46, 'A5Khaki brown  envelopes', 1.00, NULL, 237.00, 237.00, 0.00, 43.99, 16.00, 280.99, 0.00, 'GZABXvytJNEgr', 'EegxVU9a', 1, 1, 1, 1, NULL, '2017-12-02 08:01:45', '2017-12-02 08:01:45'),
(416, 42, 86, 121, 'Complimentaries', 1.00, NULL, 314.00, 314.00, 0.00, 58.28, 16.00, 372.28, 0.00, '2RrqqoOFqNp8k', 'dB82I6Da', 1, 1, 1, 1, NULL, '2017-12-02 08:01:45', '2017-12-02 08:01:45'),
(417, 42, 76, 158, 'White board markers', 1.00, NULL, 242.00, 242.00, 0.00, 44.92, 16.00, 286.92, 0.00, 'rR4wDRjFBPEP3', 'bqV9i2rd', 1, 1, 1, 1, NULL, '2017-12-02 08:01:45', '2017-12-02 08:01:45'),
(418, 42, 41, 1, 'PROPERTY DECLARATION BOOKS', 1.00, NULL, 211.00, 211.00, 0.00, 39.16, 16.00, 250.16, 0.00, 'G5DPXpOSn10OE', 'dPMAtkYe', 1, 1, 1, 1, NULL, '2017-12-02 08:01:46', '2017-12-02 08:01:46'),
(419, 42, 82, 26, 'Adhesives', 1.00, NULL, 160.00, 160.00, 0.00, 29.70, 16.00, 189.70, 0.00, 'L7RY38wFzDPRr', 'dNEBtAQb', 1, 1, 1, 1, NULL, '2017-12-02 08:01:46', '2017-12-02 08:01:46'),
(420, 42, 65, 50, 'Epson IQ 870', 1.00, NULL, 161.00, 161.00, 0.00, 29.88, 16.00, 190.88, 0.00, 'E9Ej9P9FKWJGg', 'bm29uwzd', 1, 1, 1, 1, NULL, '2017-12-02 08:01:46', '2017-12-02 08:01:46'),
(421, 43, 61, 60, 'CE505A', 1.00, NULL, 118.00, 118.00, 0.00, 21.90, 16.00, 139.90, 0.00, 'qxDMllGT8kPm4m', 'elvWSEEb', 1, 1, 1, 1, NULL, '2017-12-02 08:01:46', '2017-12-02 08:01:46'),
(422, 43, 61, 60, 'CE505A', 1.00, NULL, 118.00, 118.00, 0.00, 21.90, 16.00, 139.90, 0.00, 'L8WK441I7Ay1E', 'e3jquBNd', 1, 1, 1, 1, NULL, '2017-12-02 08:01:46', '2017-12-02 08:01:46'),
(423, 43, 92, 6, 'GIANT Stapler', 1.00, NULL, 237.00, 237.00, 0.00, 43.99, 16.00, 280.99, 0.00, 'lxmMOr7f0Vkoy', 'ejvjUXWe', 1, 1, 1, 1, NULL, '2017-12-02 08:01:46', '2017-12-02 08:01:46'),
(424, 43, 45, 9, 'RUBBER GLOVES', 1.00, NULL, 252.00, 252.00, 0.00, 46.77, 16.00, 298.77, 0.00, 'Qnp1wENtGKJYV', 'enYqT63d', 1, 1, 1, 1, NULL, '2017-12-02 08:01:46', '2017-12-02 08:01:46'),
(425, 43, 82, 26, 'Adhesives', 1.00, NULL, 160.00, 160.00, 0.00, 29.70, 16.00, 189.70, 0.00, 'L7RY38wFzDPRr', 'avY4Unme', 1, 1, 1, 1, NULL, '2017-12-02 08:01:46', '2017-12-02 08:01:46'),
(426, 43, 74, 114, 'Rulers', 1.00, NULL, 215.00, 215.00, 0.00, 39.90, 16.00, 254.90, 0.00, 'Ell2vL2u30QVqZ', 'egxoI0ja', 1, 1, 1, 1, NULL, '2017-12-02 08:01:47', '2017-12-02 08:01:47'),
(427, 43, 82, 26, 'Adhesives', 1.00, NULL, 160.00, 160.00, 0.00, 29.70, 16.00, 189.70, 0.00, 'L7RY38wFzDPRr', 'eEZwSv6a', 1, 1, 1, 1, NULL, '2017-12-02 08:01:47', '2017-12-02 08:01:47'),
(428, 43, 13, 135, 'PRINTING PAPERS', 1.00, NULL, 139.00, 139.00, 0.00, 25.80, 16.00, 164.80, 0.00, '48rm6zKH311Ay', 'bYQKHQQb', 1, 1, 1, 1, NULL, '2017-12-02 08:01:47', '2017-12-02 08:01:47'),
(429, 43, 72, 46, 'A5Khaki brown  envelopes', 1.00, NULL, 237.00, 237.00, 0.00, 43.99, 16.00, 280.99, 0.00, 'GZABXvytJNEgr', 'dGYjin6a', 1, 1, 1, 1, NULL, '2017-12-02 08:01:47', '2017-12-02 08:01:47'),
(430, 43, 44, 35, 'TRANSGLOBAL TAPES', 1.00, NULL, 157.00, 157.00, 0.00, 29.14, 16.00, 186.14, 0.00, 'ERklPrKT27VzA', 'e9p4I6Ed', 1, 1, 1, 1, NULL, '2017-12-02 08:01:47', '2017-12-02 08:01:47'),
(431, 44, 27, 149, 'SMALL PAPER PUNCH', 1.00, NULL, 238.00, 238.00, 0.00, 44.17, 16.00, 282.17, 0.00, 'k5JMRmmULr2G8', 'e1YJtOxe', 1, 1, 1, 1, NULL, '2017-12-02 08:01:47', '2017-12-02 08:01:47'),
(432, 44, 35, 111, 'HIGHLIGHTER', 1.00, NULL, 187.00, 187.00, 0.00, 34.71, 16.00, 221.71, 0.00, 'ZV5jj0KhGVwN7', 'e3jMFg8d', 1, 1, 1, 1, NULL, '2017-12-02 08:01:47', '2017-12-02 08:01:47'),
(433, 44, 95, 107, 'Pen Holders', 1.00, NULL, 164.00, 164.00, 0.00, 30.44, 16.00, 194.44, 0.00, 'lO7jgZBIP0Qw1', 'dLYKCQoe', 1, 1, 1, 1, NULL, '2017-12-02 08:01:47', '2017-12-02 08:01:47'),
(434, 44, 65, 50, 'Epson IQ 870', 1.00, NULL, 161.00, 161.00, 0.00, 29.88, 16.00, 190.88, 0.00, 'E9Ej9P9FKWJGg', 'dRMpCjmb', 1, 1, 1, 1, NULL, '2017-12-02 08:01:48', '2017-12-02 08:01:48'),
(435, 44, 7, 64, 'IMPORTS STRONG ROOM RECORD BOOKS', 1.00, NULL, 250.00, 250.00, 0.00, 46.40, 16.00, 296.40, 0.00, 'yow3XQqtxPz4J', 'b6mnI7La', 1, 1, 1, 1, NULL, '2017-12-02 08:01:48', '2017-12-02 08:01:48'),
(436, 44, 67, 119, 'DL Windowed Envelops', 1.00, NULL, 184.00, 184.00, 0.00, 34.15, 16.00, 218.15, 0.00, 'KrG0KXxiZ434k', 'mavYNINe', 1, 1, 1, 1, NULL, '2017-12-02 08:01:48', '2017-12-02 08:01:48'),
(437, 44, 45, 9, 'RUBBER GLOVES', 1.00, NULL, 252.00, 252.00, 0.00, 46.77, 16.00, 298.77, 0.00, 'MQ02n1Asx8W3p', 'enYDSoqd', 1, 1, 1, 1, NULL, '2017-12-02 08:01:48', '2017-12-02 08:01:48'),
(438, 44, 63, 141, 'Q7553A', 1.00, NULL, 308.00, 308.00, 0.00, 57.16, 16.00, 365.16, 0.00, '71AgYn4tAQM7x4', 'epROcZqb', 1, 1, 1, 1, NULL, '2017-12-02 08:01:48', '2017-12-02 08:01:48'),
(439, 44, 88, 175, 'Paper Tray', 1.00, NULL, 257.00, 257.00, 0.00, 47.70, 16.00, 304.70, 0.00, 'wVN2920tGnz35', 'erEySMAd', 1, 1, 1, 1, NULL, '2017-12-02 08:01:48', '2017-12-02 08:01:48'),
(440, 44, 16, 21, 'PAPER CLIPS 33MM', 1.00, NULL, 129.00, 129.00, 0.00, 23.94, 16.00, 152.94, 0.00, 'yojK0wEIrLrkjY', 'dypluDyb', 1, 1, 1, 1, NULL, '2017-12-02 08:01:48', '2017-12-02 08:01:48'),
(441, 45, 17, 20, 'PAPER CLIPS  50MM', 1.00, NULL, 204.00, 204.00, 0.00, 37.86, 16.00, 241.86, 0.00, '4QvAKNYC2EwOK', 'eZZ6SRke', 1, 1, 1, 1, NULL, '2017-12-02 08:01:49', '2017-12-02 08:01:49'),
(442, 45, 17, 20, 'PAPER CLIPS  50MM', 1.00, NULL, 204.00, 204.00, 0.00, 37.86, 16.00, 241.86, 0.00, '4QvAKNYC2EwOK', 'azqmtVne', 1, 1, 1, 1, NULL, '2017-12-02 08:01:49', '2017-12-02 08:01:49'),
(443, 45, 40, 1, 'ULD BOOKS', 1.00, NULL, 145.00, 145.00, 0.00, 26.91, 16.00, 171.91, 0.00, 'O700Xj8flDz4R', 'eEK9TMYb', 1, 1, 1, 1, NULL, '2017-12-02 08:01:49', '2017-12-02 08:01:49'),
(444, 45, 101, 69, 'Ledger book A4 1Q', 1.00, NULL, 214.00, 214.00, 0.00, 39.72, 16.00, 253.72, 0.00, 'y8lrDm8s2zYXR', 'eVJAcjve', 1, 1, 1, 1, NULL, '2017-12-02 08:01:49', '2017-12-02 08:01:49'),
(445, 45, 98, 27, 'File Dividers', 1.00, NULL, 224.00, 224.00, 0.00, 41.57, 16.00, 265.57, 0.00, 'WLQWBQlFvK3ED', 'bDwqsoqa', 1, 1, 1, 1, NULL, '2017-12-02 08:01:49', '2017-12-02 08:01:49'),
(446, 45, 8, 192, 'EXPORTS STRONG ROOM RECORD BOOKS', 1.00, NULL, 175.00, 175.00, 0.00, 32.48, 16.00, 207.48, 0.00, 'k8VjVwgUzgOxg', 'eg7nu4Ge', 1, 1, 1, 1, NULL, '2017-12-02 08:01:49', '2017-12-02 08:01:49'),
(447, 45, 55, 90, 'Hp542A', 1.00, NULL, 201.00, 201.00, 0.00, 37.31, 16.00, 238.31, 0.00, '66JBzYghrrZkkZ', 'b2GWCppx', 1, 1, 1, 1, NULL, '2017-12-02 08:01:49', '2017-12-02 08:01:49'),
(448, 45, 48, 87, 'Staple Pins Big 66/14', 1.00, NULL, 249.00, 249.00, 0.00, 46.21, 16.00, 295.21, 0.00, 'vg16AOnTpJnK7', 'dGw9CX0d', 1, 1, 1, 1, NULL, '2017-12-02 08:01:50', '2017-12-02 08:01:50'),
(449, 45, 28, 183, 'PENCILS', 1.00, NULL, 312.00, 312.00, 0.00, 57.91, 16.00, 369.91, 0.00, 'oQo7RLVcrvgN7Q', 'aA8QfV1e', 1, 1, 1, 1, NULL, '2017-12-02 08:01:50', '2017-12-02 08:01:50'),
(450, 45, 103, 32, 'CE411A', 1.00, NULL, 264.00, 264.00, 0.00, 49.00, 16.00, 313.00, 0.00, 'JZAXywJhJj147', 'bm77I2Le', 1, 1, 1, 1, NULL, '2017-12-02 08:01:50', '2017-12-02 08:01:50'),
(451, 46, 105, 61, 'CE413A', 1.00, NULL, 197.00, 197.00, 0.00, 36.56, 16.00, 233.56, 0.00, 'oQE4YmVt08Q7X', 'aA89iQye', 1, 1, 1, 1, NULL, '2017-12-02 08:01:50', '2017-12-02 08:01:50'),
(452, 46, 46, 93, 'LEATHER GLOVES', 1.00, NULL, 289.00, 289.00, 0.00, 53.64, 16.00, 342.64, 0.00, 'M84N32pS9rJBq', 'bm7GTZve', 1, 1, 1, 1, NULL, '2017-12-02 08:01:50', '2017-12-02 08:01:50'),
(453, 46, 13, 135, 'PRINTING PAPERS', 1.00, NULL, 139.00, 139.00, 0.00, 25.80, 16.00, 164.80, 0.00, '48rm6zKH311Ay', 'bYVrHPJd', 1, 1, 1, 1, NULL, '2017-12-02 08:01:51', '2017-12-02 08:01:51'),
(454, 46, 47, 146, 'Ear Muffs', 1.00, NULL, 229.00, 229.00, 0.00, 42.50, 16.00, 271.50, 0.00, '31m1Zwpup2ERLD', 'e7DVsLVa', 1, 1, 1, 1, NULL, '2017-12-02 08:01:51', '2017-12-02 08:01:51'),
(455, 46, 58, 111, 'CE311', 1.00, NULL, 249.00, 249.00, 0.00, 46.21, 16.00, 295.21, 0.00, 'wj904j1SWxgz5', 'boAJcZge', 1, 1, 1, 1, NULL, '2017-12-02 08:01:51', '2017-12-02 08:01:51'),
(456, 46, 22, 63, 'BIRO PENS RED', 1.00, NULL, 315.00, 315.00, 0.00, 58.46, 16.00, 373.46, 0.00, 'G6DR4yBCRD6wo', 'mavmxuYe', 1, 1, 1, 1, NULL, '2017-12-02 08:01:51', '2017-12-02 08:01:51'),
(457, 46, 90, 118, 'A4 Laminating pouch', 1.00, NULL, 196.00, 196.00, 0.00, 36.38, 16.00, 232.38, 0.00, 'j2y6KW6hnRL2M9', 'dB1vhGyb', 1, 1, 1, 1, NULL, '2017-12-02 08:01:51', '2017-12-02 08:01:51'),
(458, 46, 102, 136, 'CE 410A', 1.00, NULL, 286.00, 286.00, 0.00, 53.08, 16.00, 339.08, 0.00, '5QLYqx9UZg5jx5', 'dR8nImZa', 1, 1, 1, 1, NULL, '2017-12-02 08:01:51', '2017-12-02 08:01:51'),
(459, 46, 52, 65, 'Hp323A', 1.00, NULL, 185.00, 185.00, 0.00, 34.34, 16.00, 219.34, 0.00, 'NxKOroRfoyvDw', 'dLAlsgDe', 1, 1, 1, 1, NULL, '2017-12-02 08:01:51', '2017-12-02 08:01:51'),
(460, 46, 64, 90, 'Epson IQ 2190', 1.00, NULL, 303.00, 303.00, 0.00, 56.24, 16.00, 359.24, 0.00, 'oV5jB0gTnP4MK', 'bDw2tVBa', 1, 1, 1, 1, NULL, '2017-12-02 08:01:52', '2017-12-02 08:01:52'),
(461, 47, 54, 55, 'Hp541A', 1.00, NULL, 230.00, 230.00, 0.00, 42.69, 16.00, 272.69, 0.00, 'G6qw3g9s1O9yBw', 'eVJ9ilMe', 1, 1, 1, 1, NULL, '2017-12-02 08:01:52', '2017-12-02 08:01:52'),
(462, 47, 34, 159, 'Glue STICK', 1.00, NULL, 138.00, 138.00, 0.00, 25.61, 16.00, 163.61, 0.00, 'RoQV942i3N546', 'bk6Nh9ra', 1, 1, 1, 1, NULL, '2017-12-02 08:01:52', '2017-12-02 08:01:52'),
(463, 47, 46, 93, 'LEATHER GLOVES', 1.00, NULL, 289.00, 289.00, 0.00, 53.64, 16.00, 342.64, 0.00, 'M84N32pS9rJBq', 'eXYlsDDa', 1, 1, 1, 1, NULL, '2017-12-02 08:01:52', '2017-12-02 08:01:52'),
(464, 47, 42, 87, 'SECURITY DECLARATION BOOKS', 1.00, NULL, 233.00, 233.00, 0.00, 43.24, 16.00, 276.24, 0.00, '5QRJmoKT1xZ4N', 'b8XDI8Wb', 1, 1, 1, 1, NULL, '2017-12-02 08:01:52', '2017-12-02 08:01:52'),
(465, 47, 10, 146, 'A3 KHAKI BROWN ENVELOPES ', 1.00, NULL, 163.00, 163.00, 0.00, 30.25, 16.00, 193.25, 0.00, 'VmpBkq8iwVKVq', 'dJEkHpxb', 1, 1, 1, 1, NULL, '2017-12-02 08:01:53', '2017-12-02 08:01:53'),
(466, 47, 49, 79, 'Hp320A', 1.00, NULL, 299.00, 299.00, 0.00, 55.49, 16.00, 354.49, 0.00, '3Qvj4DnTNkKlX', 'dP6wuGNa', 1, 1, 1, 1, NULL, '2017-12-02 08:01:53', '2017-12-02 08:01:53'),
(467, 47, 79, 46, 'Spiral Binders', 1.00, NULL, 184.00, 184.00, 0.00, 34.15, 16.00, 218.15, 0.00, 'GZRvDZOukp1Vo', 'aQAlTZ0a', 1, 1, 1, 1, NULL, '2017-12-02 08:01:53', '2017-12-02 08:01:53'),
(468, 47, 86, 121, 'Complimentaries', 1.00, NULL, 314.00, 314.00, 0.00, 58.28, 16.00, 372.28, 0.00, 'oQv50x5C3G9Dp', 'b8Xvc66Z', 1, 1, 1, 1, NULL, '2017-12-02 08:01:53', '2017-12-02 08:01:53'),
(469, 47, 63, 141, 'Q7553A', 1.00, NULL, 308.00, 308.00, 0.00, 57.16, 16.00, 365.16, 0.00, '71AgYn4tAQM7x4', 'e5AGcxxe', 1, 1, 1, 1, NULL, '2017-12-02 08:01:53', '2017-12-02 08:01:53'),
(470, 47, 74, 114, 'Rulers', 1.00, NULL, 215.00, 215.00, 0.00, 39.90, 16.00, 254.90, 0.00, 'Ell2vL2u30QVqZ', 'azqOslBe', 1, 1, 1, 1, NULL, '2017-12-02 08:01:53', '2017-12-02 08:01:53'),
(471, 48, 13, 135, 'PRINTING PAPERS', 1.00, NULL, 139.00, 139.00, 0.00, 25.80, 16.00, 164.80, 0.00, '48rm6zKH311Ay', 'erg1iE2a', 1, 1, 1, 1, NULL, '2017-12-02 08:01:54', '2017-12-02 08:01:54'),
(472, 48, 55, 90, 'Hp542A', 1.00, NULL, 201.00, 201.00, 0.00, 37.31, 16.00, 238.31, 0.00, '66JBzYghrrZkkZ', 'b8XJsAqb', 1, 1, 1, 1, NULL, '2017-12-02 08:01:54', '2017-12-02 08:01:54'),
(473, 48, 77, 110, 'Clip boards', 1.00, NULL, 129.00, 129.00, 0.00, 23.94, 16.00, 152.94, 0.00, 'WLVAyZnhGnZoo', 'ejAlszLd', 1, 1, 1, 1, NULL, '2017-12-02 08:01:54', '2017-12-02 08:01:54'),
(474, 48, 55, 90, 'Hp542A', 1.00, NULL, 201.00, 201.00, 0.00, 37.31, 16.00, 238.31, 0.00, '66JBzYghrrZkkZ', 'nazqZFQe', 1, 1, 1, 1, NULL, '2017-12-02 08:01:54', '2017-12-02 08:01:54'),
(475, 48, 87, 139, 'Security Stickers', 1.00, NULL, 274.00, 274.00, 0.00, 50.85, 16.00, 324.85, 0.00, 'gJmjNqyfLRx25', 'dR83U9Ma', 1, 1, 1, 1, NULL, '2017-12-02 08:01:54', '2017-12-02 08:01:54'),
(476, 48, 67, 119, 'DL Windowed Envelops', 1.00, NULL, 184.00, 184.00, 0.00, 34.15, 16.00, 218.15, 0.00, '5yAkjO8UPE60v', 'azqLIlXe', 1, 1, 1, 1, NULL, '2017-12-02 08:01:54', '2017-12-02 08:01:54'),
(477, 48, 8, 192, 'EXPORTS STRONG ROOM RECORD BOOKS', 1.00, NULL, 175.00, 175.00, 0.00, 32.48, 16.00, 207.48, 0.00, 'O75MqBRTQrR6Q', 'b2GYHgzd', 1, 1, 1, 1, NULL, '2017-12-02 08:01:54', '2017-12-02 08:01:54'),
(478, 48, 80, 88, 'Company Letter Heads', 1.00, NULL, 265.00, 265.00, 0.00, 49.18, 16.00, 314.18, 0.00, 'KZ7qgjNHy7L2Z', 'ejAXHl0d', 1, 1, 1, 1, NULL, '2017-12-02 08:01:55', '2017-12-02 08:01:55'),
(479, 48, 7, 64, 'IMPORTS STRONG ROOM RECORD BOOKS', 1.00, NULL, 250.00, 250.00, 0.00, 46.40, 16.00, 296.40, 0.00, 'j20lmQmsJL2Kw', 'dP60tJLa', 1, 1, 1, 1, NULL, '2017-12-02 08:01:55', '2017-12-02 08:01:55'),
(480, 48, 58, 111, 'CE311', 1.00, NULL, 249.00, 249.00, 0.00, 46.21, 16.00, 295.21, 0.00, '3l47QYOTB0kzZ', 'bm7ATZOe', 1, 1, 1, 1, NULL, '2017-12-02 08:01:55', '2017-12-02 08:01:55'),
(481, 49, 48, 87, 'Staple Pins Big 66/14', 1.00, NULL, 249.00, 249.00, 0.00, 46.21, 16.00, 295.21, 0.00, 'vg16AOnTpJnK7', 'eEKDiQkb', 1, 1, 1, 1, NULL, '2017-12-02 08:01:55', '2017-12-02 08:01:55'),
(482, 49, 77, 110, 'Clip boards', 1.00, NULL, 129.00, 129.00, 0.00, 23.94, 16.00, 152.94, 0.00, 'WLVAyZnhGnZoo', 'aA8JuZPe', 1, 1, 1, 1, NULL, '2017-12-02 08:01:55', '2017-12-02 08:01:55'),
(483, 49, 51, 121, 'Hp322A', 1.00, NULL, 150.00, 150.00, 0.00, 27.84, 16.00, 177.84, 0.00, 'ZYLNzqDul8yqV', 'bm7lf70e', 1, 1, 1, 1, NULL, '2017-12-02 08:01:55', '2017-12-02 08:01:55'),
(484, 49, 46, 93, 'LEATHER GLOVES', 1.00, NULL, 289.00, 289.00, 0.00, 53.64, 16.00, 342.64, 0.00, 'M84N32pS9rJBq', 'aA9qcwoa', 1, 1, 1, 1, NULL, '2017-12-02 08:01:56', '2017-12-02 08:01:56'),
(485, 49, 64, 90, 'Epson IQ 2190', 1.00, NULL, 303.00, 303.00, 0.00, 56.24, 16.00, 359.24, 0.00, 'oV5jB0gTnP4MK', 'epXYimJe', 1, 1, 1, 1, NULL, '2017-12-02 08:01:56', '2017-12-02 08:01:56'),
(486, 49, 8, 192, 'EXPORTS STRONG ROOM RECORD BOOKS', 1.00, NULL, 175.00, 175.00, 0.00, 32.48, 16.00, 207.48, 0.00, '4xO3O4nS0AD02', 'elMOIl1a', 1, 1, 1, 1, NULL, '2017-12-02 08:01:56', '2017-12-02 08:01:56'),
(487, 49, 63, 141, 'Q7553A', 1.00, NULL, 308.00, 308.00, 0.00, 57.16, 16.00, 365.16, 0.00, '71AgYn4tAQM7x4', 'dJ7qt2Ge', 1, 1, 1, 1, NULL, '2017-12-02 08:01:56', '2017-12-02 08:01:56'),
(488, 49, 41, 1, 'PROPERTY DECLARATION BOOKS', 1.00, NULL, 211.00, 211.00, 0.00, 39.16, 16.00, 250.16, 0.00, 'G5DPXpOSn10OE', 'enNxu85e', 1, 1, 1, 1, NULL, '2017-12-02 08:01:56', '2017-12-02 08:01:56'),
(489, 49, 68, 79, 'DL Non-Windowed Envelopes', 1.00, NULL, 210.00, 210.00, 0.00, 38.98, 16.00, 248.98, 0.00, 'Krv7AzpIPEPy7', 'b6zWfwYb', 1, 1, 1, 1, NULL, '2017-12-02 08:01:56', '2017-12-02 08:01:56'),
(490, 49, 65, 50, 'Epson IQ 870', 1.00, NULL, 161.00, 161.00, 0.00, 29.88, 16.00, 190.88, 0.00, 'E9Ej9P9FKWJGg', 'e9LDuQvd', 1, 1, 1, 1, NULL, '2017-12-02 08:01:56', '2017-12-02 08:01:56'),
(491, 50, 78, 178, 'Binding covers', 1.00, NULL, 149.00, 149.00, 0.00, 27.65, 16.00, 176.65, 0.00, '2vxZN6Duw6LR1', 'bWjqSvza', 1, 1, 1, 1, NULL, '2017-12-02 08:01:57', '2017-12-02 08:01:57'),
(492, 50, 74, 114, 'Rulers', 1.00, NULL, 215.00, 215.00, 0.00, 39.90, 16.00, 254.90, 0.00, 'Ell2vL2u30QVqZ', 'b8B9hzqe', 1, 1, 1, 1, NULL, '2017-12-02 08:01:57', '2017-12-02 08:01:57'),
(493, 50, 95, 107, 'Pen Holders', 1.00, NULL, 164.00, 164.00, 0.00, 30.44, 16.00, 194.44, 0.00, 'APYZP0RuKLL34', 'dwREf82b', 1, 1, 1, 1, NULL, '2017-12-02 08:01:57', '2017-12-02 08:01:57'),
(494, 50, 49, 79, 'Hp320A', 1.00, NULL, 299.00, 299.00, 0.00, 55.49, 16.00, 354.49, 0.00, '3Qvj4DnTNkKlX', 'e7WDivZe', 1, 1, 1, 1, NULL, '2017-12-02 08:01:57', '2017-12-02 08:01:57'),
(495, 50, 55, 90, 'Hp542A', 1.00, NULL, 201.00, 201.00, 0.00, 37.31, 16.00, 238.31, 0.00, '66JBzYghrrZkkZ', 'aO55sYvd', 1, 1, 1, 1, NULL, '2017-12-02 08:01:58', '2017-12-02 08:01:58'),
(496, 50, 79, 46, 'Spiral Binders', 1.00, NULL, 184.00, 184.00, 0.00, 34.15, 16.00, 218.15, 0.00, '0VlMvGZcG241M0', 'dGQgIXWa', 1, 1, 1, 1, NULL, '2017-12-02 08:01:58', '2017-12-02 08:01:58'),
(497, 50, 58, 111, 'CE311', 1.00, NULL, 249.00, 249.00, 0.00, 46.21, 16.00, 295.21, 0.00, 'lYWBjr6h4LYQn', 'bqM6C19b', 1, 1, 1, 1, NULL, '2017-12-02 08:01:58', '2017-12-02 08:01:58'),
(498, 50, 5, 32, 'A5 SHORTHAND BOOKS', 1.00, NULL, 161.00, 161.00, 0.00, 29.88, 16.00, 190.88, 0.00, 'QnGl5vxFkoDJnP', 'aQ5gCz8a', 1, 1, 1, 1, NULL, '2017-12-02 08:01:58', '2017-12-02 08:01:58'),
(499, 50, 23, 191, 'PERMANENT MARKER PENS', 1.00, NULL, 281.00, 281.00, 0.00, 52.15, 16.00, 333.15, 0.00, 'J6l45G7toVJzy', 'eXkVfxMd', 1, 1, 1, 1, NULL, '2017-12-02 08:01:58', '2017-12-02 08:01:58'),
(500, 50, 62, 102, 'CE285A', 1.00, NULL, 240.00, 240.00, 0.00, 44.54, 16.00, 284.54, 0.00, 'yoWk3Q2iWXlz9', 'dBRXF5Ad', 1, 1, 1, 1, NULL, '2017-12-02 08:01:58', '2017-12-02 08:01:58'),
(501, 51, 77, 110, 'Clip boards', 1.00, NULL, 129.00, 129.00, 0.00, 23.94, 16.00, 152.94, 0.00, 'WLVAyZnhGnZoo', 'bDJxfR5e', 1, 1, 1, 1, NULL, '2017-12-02 08:01:59', '2017-12-02 08:01:59'),
(502, 51, 80, 88, 'Company Letter Heads', 1.00, NULL, 265.00, 265.00, 0.00, 49.18, 16.00, 314.18, 0.00, 'KZ7qgjNHy7L2Z', 'dR5nS5Rb', 1, 1, 1, 1, NULL, '2017-12-02 08:01:59', '2017-12-02 08:01:59'),
(503, 51, 86, 121, 'Complimentaries', 1.00, NULL, 314.00, 314.00, 0.00, 58.28, 16.00, 372.28, 0.00, 'oQv50x5C3G9Dp', 'e51EU1Ke', 1, 1, 1, 1, NULL, '2017-12-02 08:01:59', '2017-12-02 08:01:59'),
(504, 51, 52, 65, 'Hp323A', 1.00, NULL, 185.00, 185.00, 0.00, 34.34, 16.00, 219.34, 0.00, 'NxKOroRfoyvDw', 'bqMrcg4b', 1, 1, 1, 1, NULL, '2017-12-02 08:01:59', '2017-12-02 08:01:59'),
(505, 51, 10, 146, 'A3 KHAKI BROWN ENVELOPES ', 1.00, NULL, 163.00, 163.00, 0.00, 30.25, 16.00, 193.25, 0.00, 'VmpBkq8iwVKVq', 'aK5Rcx4d', 1, 1, 1, 1, NULL, '2017-12-02 08:01:59', '2017-12-02 08:01:59'),
(506, 51, 51, 121, 'Hp322A', 1.00, NULL, 150.00, 150.00, 0.00, 27.84, 16.00, 177.84, 0.00, 'ZYLNzqDul8yqV', 'ejONsEza', 1, 1, 1, 1, NULL, '2017-12-02 08:01:59', '2017-12-02 08:01:59'),
(507, 51, 17, 20, 'PAPER CLIPS  50MM', 1.00, NULL, 204.00, 204.00, 0.00, 37.86, 16.00, 241.86, 0.00, '4QvAKNYC2EwOK', 'egQECAAr', 1, 1, 1, 1, NULL, '2017-12-02 08:02:00', '2017-12-02 08:02:00'),
(508, 51, 30, 148, 'STAMP INK', 1.00, NULL, 298.00, 298.00, 0.00, 55.31, 16.00, 353.31, 0.00, 'vlvPNR8F6Ww8v', 'aO50iGXd', 1, 1, 1, 1, NULL, '2017-12-02 08:02:00', '2017-12-02 08:02:00'),
(509, 51, 66, 5, 'A5 Branded Envelopes', 1.00, NULL, 182.00, 182.00, 0.00, 33.78, 16.00, 215.78, 0.00, 'qxEnLj9t3NA8P', 'bYlDCnYa', 1, 1, 1, 1, NULL, '2017-12-02 08:02:00', '2017-12-02 08:02:00'),
(510, 51, 72, 46, 'A5Khaki brown  envelopes', 1.00, NULL, 237.00, 237.00, 0.00, 43.99, 16.00, 280.99, 0.00, 'GZABXvytJNEgr', 'elMyu8La', 1, 1, 1, 1, NULL, '2017-12-02 08:02:00', '2017-12-02 08:02:00'),
(511, 52, 13, 135, 'PRINTING PAPERS', 1.00, NULL, 139.00, 139.00, 0.00, 25.80, 16.00, 164.80, 0.00, '48rm6zKH311Ay', 'dN5gu4Yb', 1, 1, 1, 1, NULL, '2017-12-02 08:02:00', '2017-12-02 08:02:00'),
(512, 52, 58, 111, 'CE311', 1.00, NULL, 249.00, 249.00, 0.00, 46.21, 16.00, 295.21, 0.00, '3l47QYOTB0kzZ', 'eV0xsZ4b', 1, 1, 1, 1, NULL, '2017-12-02 08:02:01', '2017-12-02 08:02:01'),
(513, 52, 61, 60, 'CE505A', 1.00, NULL, 118.00, 118.00, 0.00, 21.90, 16.00, 139.90, 0.00, '1jrnkoOiqN7g9', 'eV0MtE6b', 1, 1, 1, 1, NULL, '2017-12-02 08:02:01', '2017-12-02 08:02:01'),
(514, 52, 47, 146, 'Ear Muffs', 1.00, NULL, 229.00, 229.00, 0.00, 42.50, 16.00, 271.50, 0.00, 'wmX7y6MU1Xxk1', 'egQoc3Yb', 1, 1, 1, 1, NULL, '2017-12-02 08:02:01', '2017-12-02 08:02:01'),
(515, 52, 5, 32, 'A5 SHORTHAND BOOKS', 1.00, NULL, 161.00, 161.00, 0.00, 29.88, 16.00, 190.88, 0.00, 'QnGl5vxFkoDJnP', 'eZm1HgYd', 1, 1, 1, 1, NULL, '2017-12-02 08:02:01', '2017-12-02 08:02:01'),
(516, 52, 40, 1, 'ULD BOOKS', 1.00, NULL, 145.00, 145.00, 0.00, 26.91, 16.00, 171.91, 0.00, 'O700Xj8flDz4R', 'dJ7oCZNe', 1, 1, 1, 1, NULL, '2017-12-02 08:02:01', '2017-12-02 08:02:01'),
(517, 52, 44, 35, 'TRANSGLOBAL TAPES', 1.00, NULL, 157.00, 157.00, 0.00, 29.14, 16.00, 186.14, 0.00, 'ERklPrKT27VzA', 'aQ5wTnKa', 1, 1, 1, 1, NULL, '2017-12-02 08:02:01', '2017-12-02 08:02:01'),
(518, 52, 82, 26, 'Adhesives', 1.00, NULL, 160.00, 160.00, 0.00, 29.70, 16.00, 189.70, 0.00, 'L7RY38wFzDPRr', 'azxZI25d', 1, 1, 1, 1, NULL, '2017-12-02 08:02:01', '2017-12-02 08:02:01'),
(519, 52, 29, 112, 'RUBBER BANDS', 1.00, NULL, 281.00, 281.00, 0.00, 52.15, 16.00, 333.15, 0.00, 'G5k0nOWi109wAK', 'bWj3SZka', 1, 1, 1, 1, NULL, '2017-12-02 08:02:01', '2017-12-02 08:02:01'),
(520, 52, 17, 20, 'PAPER CLIPS  50MM', 1.00, NULL, 204.00, 204.00, 0.00, 37.86, 16.00, 241.86, 0.00, '4QvAKNYC2EwOK', 'e51OhMLe', 1, 1, 1, 1, NULL, '2017-12-02 08:02:02', '2017-12-02 08:02:02'),
(521, 53, 41, 1, 'PROPERTY DECLARATION BOOKS', 1.00, NULL, 211.00, 211.00, 0.00, 39.16, 16.00, 250.16, 0.00, 'G5DPXpOSn10OE', 'bDJyiN1e', 1, 1, 1, 1, NULL, '2017-12-02 08:02:02', '2017-12-02 08:02:02');
INSERT INTO `invoice_items` (`id`, `invoiceId`, `productId`, `binLocation`, `productDescription`, `quantity`, `returned`, `sellingPrice`, `convertedPrice`, `convertedRate`, `tax`, `taxRate`, `total`, `discount`, `locationHash`, `hash`, `taxable`, `companyId`, `updatedBy`, `createdBy`, `deleted_at`, `created_at`, `updated_at`) VALUES
(522, 53, 54, 55, 'Hp541A', 1.00, NULL, 230.00, 230.00, 0.00, 42.69, 16.00, 272.69, 0.00, '6X1NkrVfD0qRX', 'bkOYuOvb', 1, 1, 1, 1, NULL, '2017-12-02 08:02:02', '2017-12-02 08:02:02'),
(523, 53, 87, 139, 'Security Stickers', 1.00, NULL, 274.00, 274.00, 0.00, 50.85, 16.00, 324.85, 0.00, 'gJmjNqyfLRx25', 'dN5VsN0b', 1, 1, 1, 1, NULL, '2017-12-02 08:02:02', '2017-12-02 08:02:02'),
(524, 53, 88, 175, 'Paper Tray', 1.00, NULL, 257.00, 257.00, 0.00, 47.70, 16.00, 304.70, 0.00, 'wVN2920tGnz35', 'eXk1Tg3d', 1, 1, 1, 1, NULL, '2017-12-02 08:02:02', '2017-12-02 08:02:02'),
(525, 53, 74, 114, 'Rulers', 1.00, NULL, 215.00, 215.00, 0.00, 39.90, 16.00, 254.90, 0.00, 'Ell2vL2u30QVqZ', 'dBRztlBd', 1, 1, 1, 1, NULL, '2017-12-02 08:02:02', '2017-12-02 08:02:02'),
(526, 53, 49, 79, 'Hp320A', 1.00, NULL, 299.00, 299.00, 0.00, 55.49, 16.00, 354.49, 0.00, '3Qvj4DnTNkKlX', 'b8BwFvpe', 1, 1, 1, 1, NULL, '2017-12-02 08:02:02', '2017-12-02 08:02:02'),
(527, 53, 29, 112, 'RUBBER BANDS', 1.00, NULL, 281.00, 281.00, 0.00, 52.15, 16.00, 333.15, 0.00, 'G5k0nOWi109wAK', 'bDJpHJqe', 1, 1, 1, 1, NULL, '2017-12-02 08:02:03', '2017-12-02 08:02:03'),
(528, 53, 61, 60, 'CE505A', 1.00, NULL, 118.00, 118.00, 0.00, 21.90, 16.00, 139.90, 0.00, 'L8WK441I7Ay1E', 'e7O8TZJe', 1, 1, 1, 1, NULL, '2017-12-02 08:02:03', '2017-12-02 08:02:03'),
(529, 53, 61, 60, 'CE505A', 1.00, NULL, 118.00, 118.00, 0.00, 21.90, 16.00, 139.90, 0.00, 'qxDMllGT8kPm4m', 'ax9kh7Yb', 1, 1, 1, 1, NULL, '2017-12-02 08:02:03', '2017-12-02 08:02:03'),
(530, 53, 4, 194, 'A4 WRITING PADS', 1.00, NULL, 122.00, 122.00, 0.00, 22.64, 16.00, 144.64, 0.00, 'jZn12JYUONXn3', 'bDPRFrRb', 1, 1, 1, 1, NULL, '2017-12-02 08:02:03', '2017-12-02 08:02:03'),
(531, 54, 100, 35, 'Ledger book A4 2Q', 1.00, NULL, 155.00, 155.00, 0.00, 28.77, 16.00, 183.77, 0.00, 'r82yyLNt8n1NpL', 'elD5UJpe', 1, 1, 1, 1, NULL, '2017-12-02 08:02:03', '2017-12-02 08:02:03'),
(532, 54, 45, 9, 'RUBBER GLOVES', 1.00, NULL, 252.00, 252.00, 0.00, 46.77, 16.00, 298.77, 0.00, 'XLXADA0FZ83y1', 'aQvnsynb', 1, 1, 1, 1, NULL, '2017-12-02 08:02:04', '2017-12-02 08:02:04'),
(533, 54, 64, 90, 'Epson IQ 2190', 1.00, NULL, 303.00, 303.00, 0.00, 56.24, 16.00, 359.24, 0.00, 'Q12kKnxsrp8En', 'ep7ZIOPd', 1, 1, 1, 1, NULL, '2017-12-02 08:02:04', '2017-12-02 08:02:04'),
(534, 54, 41, 1, 'PROPERTY DECLARATION BOOKS', 1.00, NULL, 211.00, 211.00, 0.00, 39.16, 16.00, 250.16, 0.00, 'G5DPXpOSn10OE', 'bkDrh2od', 1, 1, 1, 1, NULL, '2017-12-02 08:02:04', '2017-12-02 08:02:04'),
(535, 54, 40, 1, 'ULD BOOKS', 1.00, NULL, 145.00, 145.00, 0.00, 26.91, 16.00, 171.91, 0.00, 'O700Xj8flDz4R', 'b8OEt70a', 1, 1, 1, 1, NULL, '2017-12-02 08:02:04', '2017-12-02 08:02:04'),
(536, 54, 32, 196, 'SHARPENER', 1.00, NULL, 248.00, 248.00, 0.00, 46.03, 16.00, 294.03, 0.00, 'VPQBA81CxxOvqK', 'aMo9FqqV', 1, 1, 1, 1, NULL, '2017-12-02 08:02:04', '2017-12-02 08:02:04'),
(537, 54, 82, 26, 'Adhesives', 1.00, NULL, 160.00, 160.00, 0.00, 29.70, 16.00, 189.70, 0.00, 'L7RY38wFzDPRr', 'ejLvtZpb', 1, 1, 1, 1, NULL, '2017-12-02 08:02:05', '2017-12-02 08:02:05'),
(538, 54, 72, 46, 'A5Khaki brown  envelopes', 1.00, NULL, 237.00, 237.00, 0.00, 43.99, 16.00, 280.99, 0.00, 'GZABXvytJNEgr', 'b62YIq4b', 1, 1, 1, 1, NULL, '2017-12-02 08:02:05', '2017-12-02 08:02:05'),
(539, 54, 60, 181, 'CE313', 1.00, NULL, 117.00, 117.00, 0.00, 21.72, 16.00, 138.72, 0.00, 'mwxzvD7I4ryNw', 'dwZRtRqb', 1, 1, 1, 1, NULL, '2017-12-02 08:02:05', '2017-12-02 08:02:05'),
(540, 54, 42, 87, 'SECURITY DECLARATION BOOKS', 1.00, NULL, 233.00, 233.00, 0.00, 43.24, 16.00, 276.24, 0.00, '5QRJmoKT1xZ4N', 'dLnnhMEa', 1, 1, 1, 1, NULL, '2017-12-02 08:02:05', '2017-12-02 08:02:05'),
(541, 55, 88, 175, 'Paper Tray', 1.00, NULL, 257.00, 257.00, 0.00, 47.70, 16.00, 304.70, 0.00, 'wVN2920tGnz35', 'aQvjU86b', 1, 1, 1, 1, NULL, '2017-12-02 08:02:05', '2017-12-02 08:02:05'),
(542, 55, 80, 88, 'Company Letter Heads', 1.00, NULL, 265.00, 265.00, 0.00, 49.18, 16.00, 314.18, 0.00, 'KZ7qgjNHy7L2Z', 'e0ODTjpd', 1, 1, 1, 1, NULL, '2017-12-02 08:02:05', '2017-12-02 08:02:05'),
(543, 55, 48, 87, 'Staple Pins Big 66/14', 1.00, NULL, 249.00, 249.00, 0.00, 46.21, 16.00, 295.21, 0.00, 'vg16AOnTpJnK7', 'e3OJUYje', 1, 1, 1, 1, NULL, '2017-12-02 08:02:05', '2017-12-02 08:02:05'),
(544, 55, 40, 1, 'ULD BOOKS', 1.00, NULL, 145.00, 145.00, 0.00, 26.91, 16.00, 171.91, 0.00, 'O700Xj8flDz4R', 'aKm7I5xd', 1, 1, 1, 1, NULL, '2017-12-02 08:02:05', '2017-12-02 08:02:05'),
(545, 55, 55, 90, 'Hp542A', 1.00, NULL, 201.00, 201.00, 0.00, 37.31, 16.00, 238.31, 0.00, '66JBzYghrrZkkZ', 'eEGyu0Bb', 1, 1, 1, 1, NULL, '2017-12-02 08:02:05', '2017-12-02 08:02:05'),
(546, 55, 64, 90, 'Epson IQ 2190', 1.00, NULL, 303.00, 303.00, 0.00, 56.24, 16.00, 359.24, 0.00, 'Q12kKnxsrp8En', 'bWmvf55Z', 1, 1, 1, 1, NULL, '2017-12-02 08:02:06', '2017-12-02 08:02:06'),
(547, 55, 103, 32, 'CE411A', 1.00, NULL, 264.00, 264.00, 0.00, 49.00, 16.00, 313.00, 0.00, 'rkJD4AXHJ5onj', 'dyMOFJXd', 1, 1, 1, 1, NULL, '2017-12-02 08:02:06', '2017-12-02 08:02:06'),
(548, 55, 42, 87, 'SECURITY DECLARATION BOOKS', 1.00, NULL, 233.00, 233.00, 0.00, 43.24, 16.00, 276.24, 0.00, '5QRJmoKT1xZ4N', 'dNp2hNxa', 1, 1, 1, 1, NULL, '2017-12-02 08:02:06', '2017-12-02 08:02:06'),
(549, 55, 92, 6, 'GIANT Stapler', 1.00, NULL, 237.00, 237.00, 0.00, 43.99, 16.00, 280.99, 0.00, '0gpZjDmTAyQnj', 'e7Okt3Je', 1, 1, 1, 1, NULL, '2017-12-02 08:02:06', '2017-12-02 08:02:06'),
(550, 55, 73, 88, 'safety boots', 1.00, NULL, 205.00, 205.00, 0.00, 38.05, 16.00, 243.05, 0.00, '0grBDLjTGgy3JK', 'e1QPF1De', 1, 1, 1, 1, NULL, '2017-12-02 08:02:06', '2017-12-02 08:02:06'),
(551, 56, 32, 196, 'SHARPENER', 1.00, NULL, 248.00, 248.00, 0.00, 46.03, 16.00, 294.03, 0.00, 'VPQBA81CxxOvqK', 'bY0mHl2a', 1, 1, 1, 1, NULL, '2017-12-02 08:02:06', '2017-12-02 08:02:06'),
(552, 56, 33, 40, 'WHITE OUT', 1.00, NULL, 110.00, 110.00, 0.00, 20.42, 16.00, 130.42, 0.00, 'PZOMAVLHm8N1z', 'b2OwFpJ0', 1, 1, 1, 1, NULL, '2017-12-02 08:02:06', '2017-12-02 08:02:06'),
(553, 56, 33, 40, 'WHITE OUT', 1.00, NULL, 110.00, 110.00, 0.00, 20.42, 16.00, 130.42, 0.00, 'PZOMAVLHm8N1z', 'eVlzUglb', 1, 1, 1, 1, NULL, '2017-12-02 08:02:06', '2017-12-02 08:02:06'),
(554, 56, 28, 183, 'PENCILS', 1.00, NULL, 312.00, 312.00, 0.00, 57.91, 16.00, 369.91, 0.00, 'oQo7RLVcrvgN7Q', 'bo7BsPRb', 1, 1, 1, 1, NULL, '2017-12-02 08:02:07', '2017-12-02 08:02:07'),
(555, 56, 22, 63, 'BIRO PENS RED', 1.00, NULL, 315.00, 315.00, 0.00, 58.46, 16.00, 373.46, 0.00, 'G6DR4yBCRD6wo', 'b2OPhVrd', 1, 1, 1, 1, NULL, '2017-12-02 08:02:07', '2017-12-02 08:02:07'),
(556, 56, 66, 5, 'A5 Branded Envelopes', 1.00, NULL, 182.00, 182.00, 0.00, 33.78, 16.00, 215.78, 0.00, 'qxEnLj9t3NA8P', 'az9JfRRe', 1, 1, 1, 1, NULL, '2017-12-02 08:02:07', '2017-12-02 08:02:07'),
(557, 56, 27, 149, 'SMALL PAPER PUNCH', 1.00, NULL, 238.00, 238.00, 0.00, 44.17, 16.00, 282.17, 0.00, 'k5JMRmmULr2G8', 'e1QAfAGe', 1, 1, 1, 1, NULL, '2017-12-02 08:02:07', '2017-12-02 08:02:07'),
(558, 56, 100, 35, 'Ledger book A4 2Q', 1.00, NULL, 155.00, 155.00, 0.00, 28.77, 16.00, 183.77, 0.00, 'xG2qPoOs5PR3g', 'e53Zu12b', 1, 1, 1, 1, NULL, '2017-12-02 08:02:07', '2017-12-02 08:02:07'),
(559, 56, 12, 120, 'A4 BRANDED ENVELOPES', 1.00, NULL, 110.00, 110.00, 0.00, 20.42, 16.00, 130.42, 0.00, '32Y64NJCPv7ZX', 'eVlRtDpb', 1, 1, 1, 1, NULL, '2017-12-02 08:02:07', '2017-12-02 08:02:07'),
(560, 56, 32, 196, 'SHARPENER', 1.00, NULL, 248.00, 248.00, 0.00, 46.03, 16.00, 294.03, 0.00, 'VPQBA81CxxOvqK', 'aKmpf2vW', 1, 1, 1, 1, NULL, '2017-12-02 08:02:07', '2017-12-02 08:02:07'),
(561, 57, 61, 60, 'CE505A', 1.00, NULL, 118.00, 118.00, 0.00, 21.90, 16.00, 139.90, 0.00, 'qxDMllGT8kPm4m', 'aMopuxld', 1, 1, 1, 1, NULL, '2017-12-02 08:02:08', '2017-12-02 08:02:08'),
(562, 57, 63, 141, 'Q7553A', 1.00, NULL, 308.00, 308.00, 0.00, 57.16, 16.00, 365.16, 0.00, '71AgYn4tAQM7x4', 'en8KhAgb', 1, 1, 1, 1, NULL, '2017-12-02 08:02:08', '2017-12-02 08:02:08'),
(563, 57, 42, 87, 'SECURITY DECLARATION BOOKS', 1.00, NULL, 233.00, 233.00, 0.00, 43.24, 16.00, 276.24, 0.00, '5QRJmoKT1xZ4N', 'bWm3s1Ke', 1, 1, 1, 1, NULL, '2017-12-02 08:02:08', '2017-12-02 08:02:08'),
(564, 57, 40, 1, 'ULD BOOKS', 1.00, NULL, 145.00, 145.00, 0.00, 26.91, 16.00, 171.91, 0.00, 'O700Xj8flDz4R', 'aQvDF36b', 1, 1, 1, 1, NULL, '2017-12-02 08:02:08', '2017-12-02 08:02:08'),
(565, 57, 65, 50, 'Epson IQ 870', 1.00, NULL, 161.00, 161.00, 0.00, 29.88, 16.00, 190.88, 0.00, 'E9Ej9P9FKWJGg', 'aQvPH8Yb', 1, 1, 1, 1, NULL, '2017-12-02 08:02:08', '2017-12-02 08:02:08'),
(566, 57, 62, 102, 'CE285A', 1.00, NULL, 240.00, 240.00, 0.00, 44.54, 16.00, 284.54, 0.00, 'yoWk3Q2iWXlz9', 'eVlwToLb', 1, 1, 1, 1, NULL, '2017-12-02 08:02:08', '2017-12-02 08:02:08'),
(567, 57, 68, 79, 'DL Non-Windowed Envelopes', 1.00, NULL, 210.00, 210.00, 0.00, 38.98, 16.00, 248.98, 0.00, 'Krv7AzpIPEPy7', 'bDPGC7Ob', 1, 1, 1, 1, NULL, '2017-12-02 08:02:08', '2017-12-02 08:02:08'),
(568, 57, 64, 90, 'Epson IQ 2190', 1.00, NULL, 303.00, 303.00, 0.00, 56.24, 16.00, 359.24, 0.00, 'YER4V5quLNDMOX', 'e0O1fnAd', 1, 1, 1, 1, NULL, '2017-12-02 08:02:08', '2017-12-02 08:02:08'),
(569, 57, 3, 44, '2QUIRE COUNTER BOOKS', 1.00, NULL, 157.00, 157.00, 0.00, 29.14, 16.00, 186.14, 0.00, 'nZ8mRkGuApyNz', 'bkDzS0Dd', 1, 1, 1, 1, NULL, '2017-12-02 08:02:08', '2017-12-02 08:02:08'),
(570, 57, 73, 88, 'safety boots', 1.00, NULL, 205.00, 205.00, 0.00, 38.05, 16.00, 243.05, 0.00, '66KGJrWHoA4NL', 'e0Oli9xd', 1, 1, 1, 1, NULL, '2017-12-02 08:02:09', '2017-12-02 08:02:09'),
(571, 58, 51, 121, 'Hp322A', 1.00, NULL, 150.00, 150.00, 0.00, 27.84, 16.00, 177.84, 0.00, 'ZYLNzqDul8yqV', 'bqDwUWqa', 1, 1, 1, 1, NULL, '2017-12-02 08:02:09', '2017-12-02 08:02:09'),
(572, 58, 4, 194, 'A4 WRITING PADS', 1.00, NULL, 122.00, 122.00, 0.00, 22.64, 16.00, 144.64, 0.00, 'jZn12JYUONXn3', 'dBOotKOe', 1, 1, 1, 1, NULL, '2017-12-02 08:02:09', '2017-12-02 08:02:09'),
(573, 58, 17, 20, 'PAPER CLIPS  50MM', 1.00, NULL, 204.00, 204.00, 0.00, 37.86, 16.00, 241.86, 0.00, '4QvAKNYC2EwOK', 'aQjWflVb', 1, 1, 1, 1, NULL, '2017-12-02 08:02:09', '2017-12-02 08:02:09'),
(574, 58, 16, 21, 'PAPER CLIPS 33MM', 1.00, NULL, 129.00, 129.00, 0.00, 23.94, 16.00, 152.94, 0.00, 'yojK0wEIrLrkjY', 'dJzZhYvd', 1, 1, 1, 1, NULL, '2017-12-02 08:02:09', '2017-12-02 08:02:09'),
(575, 58, 32, 196, 'SHARPENER', 1.00, NULL, 248.00, 248.00, 0.00, 46.03, 16.00, 294.03, 0.00, 'VPQBA81CxxOvqK', 'dy7rS33a', 1, 1, 1, 1, NULL, '2017-12-02 08:02:10', '2017-12-02 08:02:10'),
(576, 58, 106, 76, 'Binder Clipps 51mm', 1.00, NULL, 294.00, 294.00, 0.00, 54.57, 16.00, 348.57, 0.00, 'DkJZ10Au5jLD4P', 'b4VQsw5e', 1, 1, 1, 1, NULL, '2017-12-02 08:02:10', '2017-12-02 08:02:10'),
(577, 58, 23, 191, 'PERMANENT MARKER PENS', 1.00, NULL, 281.00, 281.00, 0.00, 52.15, 16.00, 333.15, 0.00, 'K15zAE4fwP7Kw', 'bD6qHpge', 1, 1, 1, 1, NULL, '2017-12-02 08:02:10', '2017-12-02 08:02:10'),
(578, 58, 86, 121, 'Complimentaries', 1.00, NULL, 314.00, 314.00, 0.00, 58.28, 16.00, 372.28, 0.00, 'P7KV1XZS7AJPN', 'b6GBIMxd', 1, 1, 1, 1, NULL, '2017-12-02 08:02:10', '2017-12-02 08:02:10'),
(579, 58, 4, 194, 'A4 WRITING PADS', 1.00, NULL, 122.00, 122.00, 0.00, 22.64, 16.00, 144.64, 0.00, 'jZn12JYUONXn3', 'en7Of1La', 1, 1, 1, 1, NULL, '2017-12-02 08:02:10', '2017-12-02 08:02:10'),
(580, 58, 52, 65, 'Hp323A', 1.00, NULL, 185.00, 185.00, 0.00, 34.34, 16.00, 219.34, 0.00, 'NxKOroRfoyvDw', 'erBYIl4e', 1, 1, 1, 1, NULL, '2017-12-02 08:02:10', '2017-12-02 08:02:10'),
(581, 59, 51, 121, 'Hp322A', 1.00, NULL, 150.00, 150.00, 0.00, 27.84, 16.00, 177.84, 0.00, 'ZYLNzqDul8yqV', 'aKzYHK3e', 1, 1, 1, 1, NULL, '2017-12-02 08:02:11', '2017-12-02 08:02:11'),
(582, 59, 16, 21, 'PAPER CLIPS 33MM', 1.00, NULL, 129.00, 129.00, 0.00, 23.94, 16.00, 152.94, 0.00, 'yojK0wEIrLrkjY', 'bD6wcAqe', 1, 1, 1, 1, NULL, '2017-12-02 08:02:11', '2017-12-02 08:02:11'),
(583, 59, 58, 111, 'CE311', 1.00, NULL, 249.00, 249.00, 0.00, 46.21, 16.00, 295.21, 0.00, '3l47QYOTB0kzZ', 'bD6JfX8e', 1, 1, 1, 1, NULL, '2017-12-02 08:02:11', '2017-12-02 08:02:11'),
(584, 59, 3, 44, '2QUIRE COUNTER BOOKS', 1.00, NULL, 157.00, 157.00, 0.00, 29.14, 16.00, 186.14, 0.00, 'nZ8mRkGuApyNz', 'bm8GIE8a', 1, 1, 1, 1, NULL, '2017-12-02 08:02:11', '2017-12-02 08:02:11'),
(585, 59, 16, 21, 'PAPER CLIPS 33MM', 1.00, NULL, 129.00, 129.00, 0.00, 23.94, 16.00, 152.94, 0.00, 'yojK0wEIrLrkjY', 'erBBf1ne', 1, 1, 1, 1, NULL, '2017-12-02 08:02:11', '2017-12-02 08:02:11'),
(586, 59, 52, 65, 'Hp323A', 1.00, NULL, 185.00, 185.00, 0.00, 34.34, 16.00, 219.34, 0.00, 'NxKOroRfoyvDw', '1dNXWhqa', 1, 1, 1, 1, NULL, '2017-12-02 08:02:11', '2017-12-02 08:02:11'),
(587, 59, 40, 1, 'ULD BOOKS', 1.00, NULL, 145.00, 145.00, 0.00, 26.91, 16.00, 171.91, 0.00, 'O700Xj8flDz4R', 'dBOEu6me', 1, 1, 1, 1, NULL, '2017-12-02 08:02:12', '2017-12-02 08:02:12'),
(588, 59, 103, 32, 'CE411A', 1.00, NULL, 264.00, 264.00, 0.00, 49.00, 16.00, 313.00, 0.00, 'Qn0r3zycqOWjG', 'b22qIVKb', 1, 1, 1, 1, NULL, '2017-12-02 08:02:12', '2017-12-02 08:02:12'),
(589, 59, 46, 93, 'LEATHER GLOVES', 1.00, NULL, 289.00, 289.00, 0.00, 53.64, 16.00, 342.64, 0.00, 'M84N32pS9rJBq', 'bo8mfn9d', 1, 1, 1, 1, NULL, '2017-12-02 08:02:12', '2017-12-02 08:02:12'),
(590, 59, 92, 6, 'GIANT Stapler', 1.00, NULL, 237.00, 237.00, 0.00, 43.99, 16.00, 280.99, 0.00, 'lxmMOr7f0Vkoy', 'ej5MCJyd', 1, 1, 1, 1, NULL, '2017-12-02 08:02:12', '2017-12-02 08:02:12'),
(591, 60, 58, 111, 'CE311', 1.00, NULL, 249.00, 249.00, 0.00, 46.21, 16.00, 295.21, 0.00, 'wj904j1SWxgz5', 'b4VDtqoe', 1, 1, 1, 1, NULL, '2017-12-02 08:02:12', '2017-12-02 08:02:12'),
(592, 60, 3, 44, '2QUIRE COUNTER BOOKS', 1.00, NULL, 157.00, 157.00, 0.00, 29.14, 16.00, 186.14, 0.00, 'nZ8mRkGuApyNz', 'dL02hG9d', 1, 1, 1, 1, NULL, '2017-12-02 08:02:13', '2017-12-02 08:02:13'),
(593, 60, 60, 181, 'CE313', 1.00, NULL, 117.00, 117.00, 0.00, 21.72, 16.00, 138.72, 0.00, 'mwxzvD7I4ryNw', 'e0EBUMWa', 1, 1, 1, 1, NULL, '2017-12-02 08:02:13', '2017-12-02 08:02:13'),
(594, 60, 66, 5, 'A5 Branded Envelopes', 1.00, NULL, 182.00, 182.00, 0.00, 33.78, 16.00, 215.78, 0.00, 'qxEnLj9t3NA8P', 'bYrNILJg', 1, 1, 1, 1, NULL, '2017-12-02 08:02:13', '2017-12-02 08:02:13'),
(595, 60, 63, 141, 'Q7553A', 1.00, NULL, 308.00, 308.00, 0.00, 57.16, 16.00, 365.16, 0.00, '71AgYn4tAQM7x4', 'eXqlhZWa', 1, 1, 1, 1, NULL, '2017-12-02 08:02:13', '2017-12-02 08:02:13'),
(596, 60, 68, 79, 'DL Non-Windowed Envelopes', 1.00, NULL, 210.00, 210.00, 0.00, 38.98, 16.00, 248.98, 0.00, 'G6NGmOjUmVw3r', 'bq6khJzd', 1, 1, 1, 1, NULL, '2017-12-02 08:02:14', '2017-12-02 08:02:14'),
(597, 60, 65, 50, 'Epson IQ 870', 1.00, NULL, 161.00, 161.00, 0.00, 29.88, 16.00, 190.88, 0.00, 'E9Ej9P9FKWJGg', 'erBWiK8e', 1, 1, 1, 1, NULL, '2017-12-02 08:02:14', '2017-12-02 08:02:14'),
(598, 60, 64, 90, 'Epson IQ 2190', 1.00, NULL, 303.00, 303.00, 0.00, 56.24, 16.00, 359.24, 0.00, 'oV5jB0gTnP4MK', 'eg8qIYVa', 1, 1, 1, 1, NULL, '2017-12-02 08:02:14', '2017-12-02 08:02:14'),
(599, 60, 72, 46, 'A5Khaki brown  envelopes', 1.00, NULL, 237.00, 237.00, 0.00, 43.99, 16.00, 280.99, 0.00, 'GZABXvytJNEgr', 'b4VjU0De', 1, 1, 1, 1, NULL, '2017-12-02 08:02:14', '2017-12-02 08:02:14'),
(600, 60, 95, 107, 'Pen Holders', 1.00, NULL, 164.00, 164.00, 0.00, 30.44, 16.00, 194.44, 0.00, 'lO7jgZBIP0Qw1', 'dPgofDyb', 1, 1, 1, 1, NULL, '2017-12-02 08:02:14', '2017-12-02 08:02:14'),
(601, 61, 33, 40, 'WHITE OUT', 1.00, NULL, 110.00, 110.00, 0.00, 20.42, 16.00, 130.42, 0.00, 'OMEN5ogsxqwJj', 'dBO0umge', 1, 1, 1, 1, NULL, '2017-12-02 08:02:14', '2017-12-02 08:02:14'),
(602, 61, 79, 46, 'Spiral Binders', 1.00, NULL, 184.00, 184.00, 0.00, 34.15, 16.00, 218.15, 0.00, 'N9BG45pFp6GwP', 'bYrLsLLP', 1, 1, 1, 1, NULL, '2017-12-02 08:02:15', '2017-12-02 08:02:15'),
(603, 61, 34, 159, 'Glue STICK', 1.00, NULL, 138.00, 138.00, 0.00, 25.61, 16.00, 163.61, 0.00, 'RoQV942i3N546', 'aKzDi222', 1, 1, 1, 1, NULL, '2017-12-02 08:02:15', '2017-12-02 08:02:15'),
(604, 61, 29, 112, 'RUBBER BANDS', 1.00, NULL, 281.00, 281.00, 0.00, 52.15, 16.00, 333.15, 0.00, 'G5k0nOWi109wAK', 'aAWVTWjd', 1, 1, 1, 1, NULL, '2017-12-02 08:02:15', '2017-12-02 08:02:15'),
(605, 61, 98, 27, 'File Dividers', 1.00, NULL, 224.00, 224.00, 0.00, 41.57, 16.00, 265.57, 0.00, 'WLQWBQlFvK3ED', 'e7Y5f3Jb', 1, 1, 1, 1, NULL, '2017-12-02 08:02:15', '2017-12-02 08:02:15'),
(606, 61, 102, 136, 'CE 410A', 1.00, NULL, 286.00, 286.00, 0.00, 53.08, 16.00, 339.08, 0.00, 'xGWY9krI2mxOv', 'e5VYsLka', 1, 1, 1, 1, NULL, '2017-12-02 08:02:15', '2017-12-02 08:02:15'),
(607, 61, 51, 121, 'Hp322A', 1.00, NULL, 150.00, 150.00, 0.00, 27.84, 16.00, 177.84, 0.00, 'ZYLNzqDul8yqV', 'aMN3tRDb', 1, 1, 1, 1, NULL, '2017-12-02 08:02:15', '2017-12-02 08:02:15'),
(608, 61, 4, 194, 'A4 WRITING PADS', 1.00, NULL, 122.00, 122.00, 0.00, 22.64, 16.00, 144.64, 0.00, 'jZn12JYUONXn3', 'bYrOIjld', 1, 1, 1, 1, NULL, '2017-12-02 08:02:16', '2017-12-02 08:02:16'),
(609, 61, 17, 20, 'PAPER CLIPS  50MM', 1.00, NULL, 204.00, 204.00, 0.00, 37.86, 16.00, 241.86, 0.00, '4QvAKNYC2EwOK', 'eg8wCARa', 1, 1, 1, 1, NULL, '2017-12-02 08:02:16', '2017-12-02 08:02:16'),
(610, 61, 3, 44, '2QUIRE COUNTER BOOKS', 1.00, NULL, 157.00, 157.00, 0.00, 29.14, 16.00, 186.14, 0.00, 'nZ8mRkGuApyNz', 'dBOVf0Je', 1, 1, 1, 1, NULL, '2017-12-02 08:02:16', '2017-12-02 08:02:16'),
(611, 62, 54, 55, 'Hp541A', 1.00, NULL, 230.00, 230.00, 0.00, 42.69, 16.00, 272.69, 0.00, 'Wngo95kS5zXYlZ', 'dw2XSEkb', 1, 1, 1, 1, NULL, '2017-12-02 08:02:17', '2017-12-02 08:02:17'),
(612, 62, 106, 76, 'Binder Clipps 51mm', 1.00, NULL, 294.00, 294.00, 0.00, 54.57, 16.00, 348.57, 0.00, 'BNqOPGziyZv2X', 'bYr2cmrd', 1, 1, 1, 1, NULL, '2017-12-02 08:02:17', '2017-12-02 08:02:17'),
(613, 62, 80, 88, 'Company Letter Heads', 1.00, NULL, 265.00, 265.00, 0.00, 49.18, 16.00, 314.18, 0.00, 'KZ7qgjNHy7L2Z', 'dPgRc69b', 1, 1, 1, 1, NULL, '2017-12-02 08:02:17', '2017-12-02 08:02:17'),
(614, 62, 16, 21, 'PAPER CLIPS 33MM', 1.00, NULL, 129.00, 129.00, 0.00, 23.94, 16.00, 152.94, 0.00, 'yojK0wEIrLrkjY', 'eE1NT8Ae', 1, 1, 1, 1, NULL, '2017-12-02 08:02:17', '2017-12-02 08:02:17'),
(615, 62, 59, 54, 'CE312', 1.00, NULL, 197.00, 197.00, 0.00, 36.56, 16.00, 233.56, 0.00, 'NxKz8n7FqEPV1', 'eg81UGKa', 1, 1, 1, 1, NULL, '2017-12-02 08:02:17', '2017-12-02 08:02:17'),
(616, 62, 52, 65, 'Hp323A', 1.00, NULL, 185.00, 185.00, 0.00, 34.34, 16.00, 219.34, 0.00, 'NxKOroRfoyvDw', 'dJWDCgxe', 1, 1, 1, 1, NULL, '2017-12-02 08:02:17', '2017-12-02 08:02:17'),
(617, 62, 49, 79, 'Hp320A', 1.00, NULL, 299.00, 299.00, 0.00, 55.49, 16.00, 354.49, 0.00, '3Qvj4DnTNkKlX', 'bqLxH1La', 1, 1, 1, 1, NULL, '2017-12-02 08:02:17', '2017-12-02 08:02:17'),
(618, 62, 10, 146, 'A3 KHAKI BROWN ENVELOPES ', 1.00, NULL, 163.00, 163.00, 0.00, 30.25, 16.00, 193.25, 0.00, '8qXG51Zsy0KW0', 'dLWgHMZb', 1, 1, 1, 1, NULL, '2017-12-02 08:02:17', '2017-12-02 08:02:17'),
(619, 62, 58, 111, 'CE311', 1.00, NULL, 249.00, 249.00, 0.00, 46.21, 16.00, 295.21, 0.00, '3l47QYOTB0kzZ', 'dNW9I91e', 1, 1, 1, 1, NULL, '2017-12-02 08:02:18', '2017-12-02 08:02:18'),
(620, 62, 22, 63, 'BIRO PENS RED', 1.00, NULL, 315.00, 315.00, 0.00, 58.46, 16.00, 373.46, 0.00, 'G6DR4yBCRD6wo', 'eVnAc0Ye', 1, 1, 1, 1, NULL, '2017-12-02 08:02:18', '2017-12-02 08:02:18'),
(621, 63, 3, 44, '2QUIRE COUNTER BOOKS', 1.00, NULL, 157.00, 157.00, 0.00, 29.14, 16.00, 186.14, 0.00, 'nZ8mRkGuApyNz', 'axL6Uona', 1, 1, 1, 1, NULL, '2017-12-02 08:02:18', '2017-12-02 08:02:18'),
(622, 63, 79, 46, 'Spiral Binders', 1.00, NULL, 184.00, 184.00, 0.00, 34.15, 16.00, 218.15, 0.00, 'N9BG45pFp6GwP', 'ej60cQpe', 1, 1, 1, 1, NULL, '2017-12-02 08:02:18', '2017-12-02 08:02:18'),
(623, 63, 13, 135, 'PRINTING PAPERS', 1.00, NULL, 139.00, 139.00, 0.00, 25.80, 16.00, 164.80, 0.00, '48rm6zKH311Ay', 'dB96SvJb', 1, 1, 1, 1, NULL, '2017-12-02 08:02:19', '2017-12-02 08:02:19'),
(624, 63, 55, 90, 'Hp542A', 1.00, NULL, 201.00, 201.00, 0.00, 37.31, 16.00, 238.31, 0.00, '66JBzYghrrZkkZ', 'dPWYfWxb', 1, 1, 1, 1, NULL, '2017-12-02 08:02:19', '2017-12-02 08:02:19'),
(625, 63, 3, 44, '2QUIRE COUNTER BOOKS', 1.00, NULL, 157.00, 157.00, 0.00, 29.14, 16.00, 186.14, 0.00, 'nZ8mRkGuApyNz', 'axLVikDa', 1, 1, 1, 1, NULL, '2017-12-02 08:02:19', '2017-12-02 08:02:19'),
(626, 63, 100, 35, 'Ledger book A4 2Q', 1.00, NULL, 155.00, 155.00, 0.00, 28.77, 16.00, 183.77, 0.00, 'xG2qPoOs5PR3g', 'b4GWhw4a', 1, 1, 1, 1, NULL, '2017-12-02 08:02:19', '2017-12-02 08:02:19'),
(627, 63, 23, 191, 'PERMANENT MARKER PENS', 1.00, NULL, 281.00, 281.00, 0.00, 52.15, 16.00, 333.15, 0.00, 'J6l45G7toVJzy', 'dRj5Uvkj', 1, 1, 1, 1, NULL, '2017-12-02 08:02:19', '2017-12-02 08:02:19'),
(628, 63, 30, 148, 'STAMP INK', 1.00, NULL, 298.00, 298.00, 0.00, 55.31, 16.00, 353.31, 0.00, 'Jyp7Y77SAy9R', 'dRjwcNAd', 1, 1, 1, 1, NULL, '2017-12-02 08:02:19', '2017-12-02 08:02:19'),
(629, 63, 35, 111, 'HIGHLIGHTER', 1.00, NULL, 187.00, 187.00, 0.00, 34.71, 16.00, 221.71, 0.00, 'ZV5jj0KhGVwN7', 'en67CMWe', 1, 1, 1, 1, NULL, '2017-12-02 08:02:19', '2017-12-02 08:02:19'),
(630, 63, 33, 40, 'WHITE OUT', 1.00, NULL, 110.00, 110.00, 0.00, 20.42, 16.00, 130.42, 0.00, 'OMEN5ogsxqwJj', 'epLLFwDe', 1, 1, 1, 1, NULL, '2017-12-02 08:02:19', '2017-12-02 08:02:19'),
(631, 64, 82, 26, 'Adhesives', 1.00, NULL, 160.00, 160.00, 0.00, 29.70, 16.00, 189.70, 0.00, 'L7RY38wFzDPRr', 'aK9EsnNd', 1, 1, 1, 1, NULL, '2017-12-02 08:02:20', '2017-12-02 08:02:20'),
(632, 64, 73, 88, 'safety boots', 1.00, NULL, 205.00, 205.00, 0.00, 38.05, 16.00, 243.05, 0.00, '0RnQmZmh6Ey39', 'dJWKHORe', 1, 1, 1, 1, NULL, '2017-12-02 08:02:20', '2017-12-02 08:02:20'),
(633, 64, 103, 32, 'CE411A', 1.00, NULL, 264.00, 264.00, 0.00, 49.00, 16.00, 313.00, 0.00, '1rgyVDkHPZn3Y', 'bDWxIGRa', 1, 1, 1, 1, NULL, '2017-12-02 08:02:20', '2017-12-02 08:02:20'),
(634, 64, 51, 121, 'Hp322A', 1.00, NULL, 150.00, 150.00, 0.00, 27.84, 16.00, 177.84, 0.00, 'GvJwY9XF1O8PyP', 'bDWrSLka', 1, 1, 1, 1, NULL, '2017-12-02 08:02:20', '2017-12-02 08:02:20'),
(635, 64, 47, 146, 'Ear Muffs', 1.00, NULL, 229.00, 229.00, 0.00, 42.50, 16.00, 271.50, 0.00, '2xQB44BH15OY2', 'eEW7Tk2b', 1, 1, 1, 1, NULL, '2017-12-02 08:02:20', '2017-12-02 08:02:20'),
(636, 64, 16, 21, 'PAPER CLIPS 33MM', 1.00, NULL, 129.00, 129.00, 0.00, 23.94, 16.00, 152.94, 0.00, 'yojK0wEIrLrkjY', 'bDW2Ur6a', 1, 1, 1, 1, NULL, '2017-12-02 08:02:20', '2017-12-02 08:02:20'),
(637, 64, 32, 196, 'SHARPENER', 1.00, NULL, 248.00, 248.00, 0.00, 46.03, 16.00, 294.03, 0.00, 'VPQBA81CxxOvqK', 'eEWBcWNb', 1, 1, 1, 1, NULL, '2017-12-02 08:02:20', '2017-12-02 08:02:20'),
(638, 64, 72, 46, 'A5Khaki brown  envelopes', 1.00, NULL, 237.00, 237.00, 0.00, 43.99, 16.00, 280.99, 0.00, 'GZABXvytJNEgr', 'dy2xImJe', 1, 1, 1, 1, NULL, '2017-12-02 08:02:21', '2017-12-02 08:02:21'),
(639, 64, 75, 49, 'Flip chart', 1.00, NULL, 312.00, 312.00, 0.00, 57.91, 16.00, 369.91, 0.00, 'DR0opGqH3R4jD', 'bkXLHG6d', 1, 1, 1, 1, NULL, '2017-12-02 08:02:21', '2017-12-02 08:02:21'),
(640, 64, 49, 79, 'Hp320A', 1.00, NULL, 299.00, 299.00, 0.00, 55.49, 16.00, 354.49, 0.00, '3Qvj4DnTNkKlX', 'b8KDTm9a', 1, 1, 1, 1, NULL, '2017-12-02 08:02:21', '2017-12-02 08:02:21'),
(641, 65, 4, 194, 'A4 WRITING PADS', 1.00, NULL, 122.00, 122.00, 0.00, 22.64, 16.00, 144.64, 0.00, 'jZn12JYUONXn3', 'e0DjfzDe', 1, 1, 1, 1, NULL, '2017-12-02 08:02:21', '2017-12-02 08:02:21'),
(642, 65, 22, 63, 'BIRO PENS RED', 1.00, NULL, 315.00, 315.00, 0.00, 58.46, 16.00, 373.46, 0.00, 'G6DR4yBCRD6wo', 'e3VqT2wd', 1, 1, 1, 1, NULL, '2017-12-02 08:02:21', '2017-12-02 08:02:21'),
(643, 65, 62, 102, 'CE285A', 1.00, NULL, 240.00, 240.00, 0.00, 44.54, 16.00, 284.54, 0.00, 'yoWk3Q2iWXlz9', 'erVrUVXe', 1, 1, 1, 1, NULL, '2017-12-02 08:02:21', '2017-12-02 08:02:21'),
(644, 65, 40, 1, 'ULD BOOKS', 1.00, NULL, 145.00, 145.00, 0.00, 26.91, 16.00, 171.91, 0.00, 'O700Xj8flDz4R', 'egMjc5jb', 1, 1, 1, 1, NULL, '2017-12-02 08:02:21', '2017-12-02 08:02:21'),
(645, 65, 54, 55, 'Hp541A', 1.00, NULL, 230.00, 230.00, 0.00, 42.69, 16.00, 272.69, 0.00, 'G6qw3g9s1O9yBw', 'dJWwFqq8', 1, 1, 1, 1, NULL, '2017-12-02 08:02:22', '2017-12-02 08:02:22'),
(646, 65, 34, 159, 'Glue STICK', 1.00, NULL, 138.00, 138.00, 0.00, 25.61, 16.00, 163.61, 0.00, 'RoQV942i3N546', 'gen6yIXe', 1, 1, 1, 1, NULL, '2017-12-02 08:02:22', '2017-12-02 08:02:22'),
(647, 65, 17, 20, 'PAPER CLIPS  50MM', 1.00, NULL, 204.00, 204.00, 0.00, 37.86, 16.00, 241.86, 0.00, '4QvAKNYC2EwOK', 'dy2jtgMe', 1, 1, 1, 1, NULL, '2017-12-02 08:02:22', '2017-12-02 08:02:22'),
(648, 65, 29, 112, 'RUBBER BANDS', 1.00, NULL, 281.00, 281.00, 0.00, 52.15, 16.00, 333.15, 0.00, 'G5k0nOWi109wAK', 'avL3TQGd', 1, 1, 1, 1, NULL, '2017-12-02 08:02:22', '2017-12-02 08:02:22'),
(649, 65, 42, 87, 'SECURITY DECLARATION BOOKS', 1.00, NULL, 233.00, 233.00, 0.00, 43.24, 16.00, 276.24, 0.00, '5QRJmoKT1xZ4N', 'epL0UwNe', 1, 1, 1, 1, NULL, '2017-12-02 08:02:22', '2017-12-02 08:02:22'),
(650, 65, 98, 27, 'File Dividers', 1.00, NULL, 224.00, 224.00, 0.00, 41.57, 16.00, 265.57, 0.00, 'WLQWBQlFvK3ED', 'eXp4uXEe', 1, 1, 1, 1, NULL, '2017-12-02 08:02:23', '2017-12-02 08:02:23'),
(651, 66, 82, 26, 'Adhesives', 1.00, NULL, 160.00, 160.00, 0.00, 29.70, 16.00, 189.70, 0.00, 'L7RY38wFzDPRr', 'aMW3cozd', 1, 1, 1, 1, NULL, '2017-12-02 08:02:23', '2017-12-02 08:02:23'),
(652, 66, 76, 158, 'White board markers', 1.00, NULL, 242.00, 242.00, 0.00, 44.92, 16.00, 286.92, 0.00, 'rR4wDRjFBPEP3', 'dJWvfR3e', 1, 1, 1, 1, NULL, '2017-12-02 08:02:23', '2017-12-02 08:02:23'),
(653, 66, 62, 102, 'CE285A', 1.00, NULL, 240.00, 240.00, 0.00, 44.54, 16.00, 284.54, 0.00, 'ER2NM2PFpJ5x6', 'bWoYcQ7b', 1, 1, 1, 1, NULL, '2017-12-02 08:02:23', '2017-12-02 08:02:23'),
(654, 66, 51, 121, 'Hp322A', 1.00, NULL, 150.00, 150.00, 0.00, 27.84, 16.00, 177.84, 0.00, 'ZYLNzqDul8yqV', 'dJW4iyQe', 1, 1, 1, 1, NULL, '2017-12-02 08:02:23', '2017-12-02 08:02:23'),
(655, 66, 34, 159, 'Glue STICK', 1.00, NULL, 138.00, 138.00, 0.00, 25.61, 16.00, 163.61, 0.00, 'RoQV942i3N546', 'e5KmU8nb', 1, 1, 1, 1, NULL, '2017-12-02 08:02:23', '2017-12-02 08:02:23'),
(656, 66, 34, 159, 'Glue STICK', 1.00, NULL, 138.00, 138.00, 0.00, 25.61, 16.00, 163.61, 0.00, 'RoQV942i3N546', 'azYRt5Ge', 1, 1, 1, 1, NULL, '2017-12-02 08:02:23', '2017-12-02 08:02:23'),
(657, 66, 45, 9, 'RUBBER GLOVES', 1.00, NULL, 252.00, 252.00, 0.00, 46.77, 16.00, 298.77, 0.00, 'Qnp1wENtGKJYV', 'e5KjfZZx', 1, 1, 1, 1, NULL, '2017-12-02 08:02:23', '2017-12-02 08:02:23'),
(658, 66, 102, 136, 'CE 410A', 1.00, NULL, 286.00, 286.00, 0.00, 53.08, 16.00, 339.08, 0.00, '1rmQ798Sj21wO', 'dJWVCrVe', 1, 1, 1, 1, NULL, '2017-12-02 08:02:23', '2017-12-02 08:02:23'),
(659, 66, 27, 149, 'SMALL PAPER PUNCH', 1.00, NULL, 238.00, 238.00, 0.00, 44.17, 16.00, 282.17, 0.00, 'k5JMRmmULr2G8', 'aQgZUwWd', 1, 1, 1, 1, NULL, '2017-12-02 08:02:24', '2017-12-02 08:02:24'),
(660, 66, 42, 87, 'SECURITY DECLARATION BOOKS', 1.00, NULL, 233.00, 233.00, 0.00, 43.24, 16.00, 276.24, 0.00, '5QRJmoKT1xZ4N', 'enJQTmye', 1, 1, 1, 1, NULL, '2017-12-02 08:02:24', '2017-12-02 08:02:24'),
(661, 67, 16, 21, 'PAPER CLIPS 33MM', 1.00, NULL, 129.00, 129.00, 0.00, 23.94, 16.00, 152.94, 0.00, 'yojK0wEIrLrkjY', 'axjkS3pd', 1, 1, 1, 1, NULL, '2017-12-02 08:02:24', '2017-12-02 08:02:24'),
(662, 67, 87, 139, 'Security Stickers', 1.00, NULL, 274.00, 274.00, 0.00, 50.85, 16.00, 324.85, 0.00, 'gJmjNqyfLRx25', 'bYX6sK4a', 1, 1, 1, 1, NULL, '2017-12-02 08:02:24', '2017-12-02 08:02:24'),
(663, 67, 64, 90, 'Epson IQ 2190', 1.00, NULL, 303.00, 303.00, 0.00, 56.24, 16.00, 359.24, 0.00, 'YER4V5quLNDMOX', 'e9XQtKQd', 1, 1, 1, 1, NULL, '2017-12-02 08:02:24', '2017-12-02 08:02:24'),
(664, 67, 98, 27, 'File Dividers', 1.00, NULL, 224.00, 224.00, 0.00, 41.57, 16.00, 265.57, 0.00, 'WLQWBQlFvK3ED', 'aO9MHXld', 1, 1, 1, 1, NULL, '2017-12-02 08:02:25', '2017-12-02 08:02:25'),
(665, 67, 45, 9, 'RUBBER GLOVES', 1.00, NULL, 252.00, 252.00, 0.00, 46.77, 16.00, 298.77, 0.00, 'MQ02n1Asx8W3p', 'eXVQCK4b', 1, 1, 1, 1, NULL, '2017-12-02 08:02:25', '2017-12-02 08:02:25'),
(666, 67, 5, 32, 'A5 SHORTHAND BOOKS', 1.00, NULL, 161.00, 161.00, 0.00, 29.88, 16.00, 190.88, 0.00, 'QnGl5vxFkoDJnP', 'aAOMuWzd', 1, 1, 1, 1, NULL, '2017-12-02 08:02:25', '2017-12-02 08:02:25'),
(667, 67, 76, 158, 'White board markers', 1.00, NULL, 242.00, 242.00, 0.00, 44.92, 16.00, 286.92, 0.00, 'rR4wDRjFBPEP3', 'aMB1CpDb', 1, 1, 1, 1, NULL, '2017-12-02 08:02:25', '2017-12-02 08:02:25'),
(668, 67, 66, 5, 'A5 Branded Envelopes', 1.00, NULL, 182.00, 182.00, 0.00, 33.78, 16.00, 215.78, 0.00, 'qxEnLj9t3NA8P', 'dRBLFz6d', 1, 1, 1, 1, NULL, '2017-12-02 08:02:26', '2017-12-02 08:02:26'),
(669, 67, 4, 194, 'A4 WRITING PADS', 1.00, NULL, 122.00, 122.00, 0.00, 22.64, 16.00, 144.64, 0.00, 'jZn12JYUONXn3', 'e17YHYLb', 1, 1, 1, 1, NULL, '2017-12-02 08:02:26', '2017-12-02 08:02:26'),
(670, 67, 13, 135, 'PRINTING PAPERS', 1.00, NULL, 139.00, 139.00, 0.00, 25.80, 16.00, 164.80, 0.00, '48rm6zKH311Ay', 'dykpc4Za', 1, 1, 1, 1, NULL, '2017-12-02 08:02:26', '2017-12-02 08:02:26'),
(671, 68, 86, 121, 'Complimentaries', 1.00, NULL, 314.00, 314.00, 0.00, 58.28, 16.00, 372.28, 0.00, '2RrqqoOFqNp8k', 'e03XFJ7d', 1, 1, 1, 1, NULL, '2017-12-02 08:02:26', '2017-12-02 08:02:26'),
(672, 68, 95, 107, 'Pen Holders', 1.00, NULL, 164.00, 164.00, 0.00, 30.44, 16.00, 194.44, 0.00, 'lO7jgZBIP0Qw1', 'boJ7uq0a', 1, 1, 1, 1, NULL, '2017-12-02 08:02:26', '2017-12-02 08:02:26'),
(673, 68, 102, 136, 'CE 410A', 1.00, NULL, 286.00, 286.00, 0.00, 53.08, 16.00, 339.08, 0.00, 'xGWY9krI2mxOv', 'axj8HrNd', 1, 1, 1, 1, NULL, '2017-12-02 08:02:26', '2017-12-02 08:02:26'),
(674, 68, 68, 79, 'DL Non-Windowed Envelopes', 1.00, NULL, 210.00, 210.00, 0.00, 38.98, 16.00, 248.98, 0.00, 'Krv7AzpIPEPy7', 'el6ET14b', 1, 1, 1, 1, NULL, '2017-12-02 08:02:26', '2017-12-02 08:02:26'),
(675, 68, 4, 194, 'A4 WRITING PADS', 1.00, NULL, 122.00, 122.00, 0.00, 22.64, 16.00, 144.64, 0.00, 'jZn12JYUONXn3', 'dGKKcKwd', 1, 1, 1, 1, NULL, '2017-12-02 08:02:27', '2017-12-02 08:02:27'),
(676, 68, 102, 136, 'CE 410A', 1.00, NULL, 286.00, 286.00, 0.00, 53.08, 16.00, 339.08, 0.00, 'pgOGm4oHnOjJPE', 'el6kcB5b', 1, 1, 1, 1, NULL, '2017-12-02 08:02:27', '2017-12-02 08:02:27'),
(677, 68, 92, 6, 'GIANT Stapler', 1.00, NULL, 237.00, 237.00, 0.00, 43.99, 16.00, 280.99, 0.00, '0gpZjDmTAyQnj', 'bDExc4Ed', 1, 1, 1, 1, NULL, '2017-12-02 08:02:27', '2017-12-02 08:02:27'),
(678, 68, 66, 5, 'A5 Branded Envelopes', 1.00, NULL, 182.00, 182.00, 0.00, 33.78, 16.00, 215.78, 0.00, 'qxEnLj9t3NA8P', 'eEQvhGze', 1, 1, 1, 1, NULL, '2017-12-02 08:02:27', '2017-12-02 08:02:27'),
(679, 68, 47, 146, 'Ear Muffs', 1.00, NULL, 229.00, 229.00, 0.00, 42.50, 16.00, 271.50, 0.00, '2xQB44BH15OY2', 'e50ECxXd', 1, 1, 1, 1, NULL, '2017-12-02 08:02:27', '2017-12-02 08:02:27'),
(680, 68, 63, 141, 'Q7553A', 1.00, NULL, 308.00, 308.00, 0.00, 57.16, 16.00, 365.16, 0.00, '71AgYn4tAQM7x4', 'b4KqtR6a', 1, 1, 1, 1, NULL, '2017-12-02 08:02:27', '2017-12-02 08:02:27'),
(681, 69, 8, 192, 'EXPORTS STRONG ROOM RECORD BOOKS', 1.00, NULL, 175.00, 175.00, 0.00, 32.48, 16.00, 207.48, 0.00, 'k8VjVwgUzgOxg', 'enJPfMye', 1, 1, 1, 1, NULL, '2017-12-02 08:02:28', '2017-12-02 08:02:28'),
(682, 69, 92, 6, 'GIANT Stapler', 1.00, NULL, 237.00, 237.00, 0.00, 43.99, 16.00, 280.99, 0.00, 'PN9kKZKuPykOP', 'eVZKIyGe', 1, 1, 1, 1, NULL, '2017-12-02 08:02:28', '2017-12-02 08:02:28'),
(683, 69, 23, 191, 'PERMANENT MARKER PENS', 1.00, NULL, 281.00, 281.00, 0.00, 52.15, 16.00, 333.15, 0.00, 'W6D7EWXFAm0rG', 'azlzCZAd', 1, 1, 1, 1, NULL, '2017-12-02 08:02:28', '2017-12-02 08:02:28'),
(684, 69, 16, 21, 'PAPER CLIPS 33MM', 1.00, NULL, 129.00, 129.00, 0.00, 23.94, 16.00, 152.94, 0.00, 'yojK0wEIrLrkjY', 'egX9Tvga', 1, 1, 1, 1, NULL, '2017-12-02 08:02:28', '2017-12-02 08:02:28'),
(685, 69, 17, 20, 'PAPER CLIPS  50MM', 1.00, NULL, 204.00, 204.00, 0.00, 37.86, 16.00, 241.86, 0.00, '4QvAKNYC2EwOK', 'aAOES13d', 1, 1, 1, 1, NULL, '2017-12-02 08:02:28', '2017-12-02 08:02:28'),
(686, 69, 23, 191, 'PERMANENT MARKER PENS', 1.00, NULL, 281.00, 281.00, 0.00, 52.15, 16.00, 333.15, 0.00, 'J6l45G7toVJzy', 'aAOLT5md', 1, 1, 1, 1, NULL, '2017-12-02 08:02:28', '2017-12-02 08:02:28'),
(687, 69, 36, 182, 'DUST BINS', 1.00, NULL, 127.00, 127.00, 0.00, 23.57, 16.00, 150.57, 0.00, 'wpX8R3yFGGM5G9', 'e03NIK6d', 1, 1, 1, 1, NULL, '2017-12-02 08:02:28', '2017-12-02 08:02:28'),
(688, 69, 86, 121, 'Complimentaries', 1.00, NULL, 314.00, 314.00, 0.00, 58.28, 16.00, 372.28, 0.00, 'oQv50x5C3G9Dp', 'dN1mhvYb', 1, 1, 1, 1, NULL, '2017-12-02 08:02:28', '2017-12-02 08:02:28'),
(689, 69, 101, 69, 'Ledger book A4 1Q', 1.00, NULL, 214.00, 214.00, 0.00, 39.72, 16.00, 253.72, 0.00, 'DR4PPGWhmNVNw', 'dykgtMza', 1, 1, 1, 1, NULL, '2017-12-02 08:02:29', '2017-12-02 08:02:29'),
(690, 69, 12, 120, 'A4 BRANDED ENVELOPES', 1.00, NULL, 110.00, 110.00, 0.00, 20.42, 16.00, 130.42, 0.00, '0RNr6XwhrMLKp', 'dN1ws5ob', 1, 1, 1, 1, NULL, '2017-12-02 08:02:29', '2017-12-02 08:02:29'),
(691, 70, 49, 79, 'Hp320A', 1.00, NULL, 299.00, 299.00, 0.00, 55.49, 16.00, 354.49, 0.00, '3Qvj4DnTNkKlX', 'e7JRSJGd', 1, 1, 1, 1, NULL, '2017-12-02 08:02:29', '2017-12-02 08:02:29'),
(692, 70, 79, 46, 'Spiral Binders', 1.00, NULL, 184.00, 184.00, 0.00, 34.15, 16.00, 218.15, 0.00, 'GZRvDZOukp1Vo', 'eVZEu57e', 1, 1, 1, 1, NULL, '2017-12-02 08:02:29', '2017-12-02 08:02:29'),
(693, 70, 95, 107, 'Pen Holders', 1.00, NULL, 164.00, 164.00, 0.00, 30.44, 16.00, 194.44, 0.00, 'APYZP0RuKLL34', 'bmXoCoka', 1, 1, 1, 1, NULL, '2017-12-02 08:02:30', '2017-12-02 08:02:30'),
(694, 70, 65, 50, 'Epson IQ 870', 1.00, NULL, 161.00, 161.00, 0.00, 29.88, 16.00, 190.88, 0.00, 'E9Ej9P9FKWJGg', 'eVZ6FA8e', 1, 1, 1, 1, NULL, '2017-12-02 08:02:30', '2017-12-02 08:02:30'),
(695, 70, 63, 141, 'Q7553A', 1.00, NULL, 308.00, 308.00, 0.00, 57.16, 16.00, 365.16, 0.00, '71AgYn4tAQM7x4', 'b8YQhgqd', 1, 1, 1, 1, NULL, '2017-12-02 08:02:30', '2017-12-02 08:02:30'),
(696, 70, 72, 46, 'A5Khaki brown  envelopes', 1.00, NULL, 237.00, 237.00, 0.00, 43.99, 16.00, 280.99, 0.00, 'GZABXvytJNEgr', 'er7zFPQa', 1, 1, 1, 1, NULL, '2017-12-02 08:02:30', '2017-12-02 08:02:30'),
(697, 70, 28, 183, 'PENCILS', 1.00, NULL, 312.00, 312.00, 0.00, 57.91, 16.00, 369.91, 0.00, 'LgGPnjwTRRRMOG', 'b6V3H89b', 1, 1, 1, 1, NULL, '2017-12-02 08:02:30', '2017-12-02 08:02:30'),
(698, 70, 3, 44, '2QUIRE COUNTER BOOKS', 1.00, NULL, 157.00, 157.00, 0.00, 29.14, 16.00, 186.14, 0.00, 'nZ8mRkGuApyNz', 'dRBpI2Wd', 1, 1, 1, 1, NULL, '2017-12-02 08:02:30', '2017-12-02 08:02:30'),
(699, 70, 33, 40, 'WHITE OUT', 1.00, NULL, 110.00, 110.00, 0.00, 20.42, 16.00, 130.42, 0.00, '68EWzAYczOQBK', 'dLBQSnNa', 1, 1, 1, 1, NULL, '2017-12-02 08:02:30', '2017-12-02 08:02:30'),
(700, 70, 78, 178, 'Binding covers', 1.00, NULL, 149.00, 149.00, 0.00, 27.65, 16.00, 176.65, 0.00, '2vxZN6Duw6LR1', 'dGKDSPQd', 1, 1, 1, 1, NULL, '2017-12-02 08:02:30', '2017-12-02 08:02:30');

-- --------------------------------------------------------

--
-- Table structure for table `invoice_payments`
--

CREATE TABLE `invoice_payments` (
  `id` int(10) UNSIGNED NOT NULL,
  `invoiceId` int(10) UNSIGNED NOT NULL,
  `customerId` int(10) UNSIGNED NOT NULL,
  `downPayment` tinyint(1) DEFAULT NULL,
  `paymentAmount` double(15,2) DEFAULT NULL,
  `paymentMethod` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `paymentDetails` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `paymentRemarks` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `paymentNarration` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `paymentType` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `companyId` int(10) UNSIGNED NOT NULL,
  `updatedBy` int(10) UNSIGNED NOT NULL,
  `createdBy` int(10) UNSIGNED NOT NULL,
  `hash` text COLLATE utf8mb4_unicode_ci,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `invoice_payments`
--

INSERT INTO `invoice_payments` (`id`, `invoiceId`, `customerId`, `downPayment`, `paymentAmount`, `paymentMethod`, `paymentDetails`, `paymentRemarks`, `paymentNarration`, `paymentType`, `companyId`, `updatedBy`, `createdBy`, `hash`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 3, 1, NULL, 2597.63, NULL, NULL, NULL, NULL, NULL, 1, 0, 1, NULL, NULL, '2017-12-02 08:02:30', '2017-12-02 08:02:30'),
(2, 11, 1, NULL, 2627.29, NULL, NULL, NULL, NULL, NULL, 1, 0, 1, NULL, NULL, '2017-12-02 08:02:31', '2017-12-02 08:02:31'),
(3, 47, 6, NULL, 2813.41, NULL, NULL, NULL, NULL, NULL, 1, 0, 1, NULL, NULL, '2017-12-02 08:02:31', '2017-12-02 08:02:31'),
(4, 46, 1, NULL, 2831.21, NULL, NULL, NULL, NULL, NULL, 1, 0, 1, NULL, NULL, '2017-12-02 08:02:31', '2017-12-02 08:02:31'),
(5, 28, 7, NULL, 2974.66, NULL, NULL, NULL, NULL, NULL, 1, 0, 1, NULL, NULL, '2017-12-02 08:02:31', '2017-12-02 08:02:31'),
(6, 35, 7, NULL, 2579.86, NULL, NULL, NULL, NULL, NULL, 1, 0, 1, NULL, NULL, '2017-12-02 08:02:31', '2017-12-02 08:02:31'),
(7, 44, 10, NULL, 2525.32, NULL, NULL, NULL, NULL, NULL, 1, 0, 1, NULL, NULL, '2017-12-02 08:02:32', '2017-12-02 08:02:32'),
(8, 50, 2, NULL, 2540.72, NULL, NULL, NULL, NULL, NULL, 1, 0, 1, NULL, NULL, '2017-12-02 08:02:32', '2017-12-02 08:02:32'),
(9, 61, 3, NULL, 2200.46, NULL, NULL, NULL, NULL, NULL, 1, 0, 1, NULL, NULL, '2017-12-02 08:02:32', '2017-12-02 08:02:32'),
(10, 63, 9, NULL, 2215.90, NULL, NULL, NULL, NULL, NULL, 1, 0, 1, NULL, NULL, '2017-12-02 08:02:32', '2017-12-02 08:02:32'),
(11, 66, 2, NULL, 2462.48, NULL, NULL, NULL, NULL, NULL, 1, 0, 1, NULL, NULL, '2017-12-02 08:02:32', '2017-12-02 08:02:32');

-- --------------------------------------------------------

--
-- Table structure for table `languages`
--

CREATE TABLE `languages` (
  `id` int(10) UNSIGNED NOT NULL,
  `language` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `language_full` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `companyId` int(10) UNSIGNED NOT NULL,
  `updatedBy` int(10) UNSIGNED NOT NULL,
  `createdBy` int(10) UNSIGNED NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(723, '2014_10_12_000000_create_users_table', 1),
(724, '2014_10_12_100000_create_password_resets_table', 1),
(725, '2015_03_12_153122_create_products_table', 1),
(726, '2015_03_13_054930_create_suppliers_table', 1),
(727, '2015_03_13_055515_create_dispatches_table', 1),
(728, '2015_03_13_060141_create_restocks_table', 1),
(729, '2015_03_13_060935_create_departments_table', 1),
(730, '2015_03_24_185803_create_roles_table', 1),
(731, '2015_05_29_183815_create_settings_table', 1),
(732, '2015_06_13_221230_create_purchase_orders_table', 1),
(733, '2015_06_13_222237_create_purchase_order_items_table', 1),
(734, '2015_08_13_111335_create_companies_table', 1),
(735, '2015_08_14_113311_create_staff_table', 1),
(736, '2015_08_19_151648_create_countries_table', 1),
(737, '2015_09_18_193522_create_customers_table', 1),
(738, '2015_11_17_101242_create_product_categories_table', 1),
(739, '2015_12_31_215025_create_product_photos_table', 1),
(740, '2016_02_04_123051_create_product_locations_table', 1),
(741, '2016_02_04_154436_create_warehouses_table', 1),
(742, '2016_02_04_154437_create_storage_locations_table', 1),
(743, '2016_03_14_200951_create_sessions_table', 1),
(744, '2016_03_30_174853_create_cache_table', 1),
(745, '2016_05_02_101212_create_customer_contacts_table', 1),
(746, '2016_05_23_105649_create_sales_orders_table', 1),
(747, '2016_05_23_105800_create_sales_order_items_table', 1),
(748, '2016_05_25_193543_create_invoices_table', 1),
(749, '2016_05_25_203014_create_invoice_items_table', 1),
(750, '2016_05_25_204626_create_invoice_payments_table', 1),
(751, '2016_07_05_055310_create_currencies_table', 1),
(752, '2016_09_15_140238_create_delivery_runs_table', 1),
(753, '2016_10_22_173355_create_notifications_table', 1),
(754, '2016_11_15_121707_create_payment_credits_table', 1),
(755, '2017_01_07_191121_create_receipts_table', 1),
(756, '2017_01_07_191150_create_receipt_items_table', 1),
(757, '2017_02_05_091319_create_module_permissions_table', 1),
(758, '2017_06_26_081852_create_languages_table', 1),
(759, '2017_06_27_081338_create_translations_table', 1),
(760, '2017_07_18_132232_create_stock_audits_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `module_permissions`
--

CREATE TABLE `module_permissions` (
  `id` int(10) UNSIGNED NOT NULL,
  `roleId` int(10) UNSIGNED NOT NULL,
  `model` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `canCreate` tinyint(1) NOT NULL DEFAULT '0',
  `canGlance` tinyint(1) NOT NULL DEFAULT '0',
  `canView` tinyint(1) NOT NULL DEFAULT '0',
  `canUpdate` tinyint(1) NOT NULL DEFAULT '0',
  `canDelete` tinyint(1) NOT NULL DEFAULT '0',
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `module_permissions`
--

INSERT INTO `module_permissions` (`id`, `roleId`, `model`, `canCreate`, `canGlance`, `canView`, `canUpdate`, `canDelete`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 1, 'Receipt', 1, 1, 1, 1, 1, NULL, '2017-12-02 07:58:35', '2017-12-02 07:58:35'),
(2, 1, 'Warehouse', 1, 1, 1, 1, 1, NULL, '2017-12-02 07:58:35', '2017-12-02 07:58:35'),
(3, 1, 'ProductCategory', 1, 1, 1, 1, 1, NULL, '2017-12-02 07:58:36', '2017-12-02 07:58:36'),
(4, 1, 'UserRoles', 1, 1, 1, 1, 1, NULL, '2017-12-02 07:58:36', '2017-12-02 07:58:36'),
(5, 1, 'User', 1, 1, 1, 1, 1, NULL, '2017-12-02 07:58:36', '2017-12-02 07:58:36'),
(6, 1, 'Supplier', 1, 1, 1, 1, 1, NULL, '2017-12-02 07:58:36', '2017-12-02 07:58:36'),
(7, 1, 'Staff', 1, 1, 1, 1, 1, NULL, '2017-12-02 07:58:36', '2017-12-02 07:58:36'),
(8, 1, 'Setting', 1, 1, 1, 1, 1, NULL, '2017-12-02 07:58:36', '2017-12-02 07:58:36'),
(9, 1, 'Restock', 1, 1, 1, 1, 1, NULL, '2017-12-02 07:58:36', '2017-12-02 07:58:36'),
(10, 1, 'PurchaseOrder', 1, 1, 1, 1, 1, NULL, '2017-12-02 07:58:36', '2017-12-02 07:58:36'),
(11, 1, 'Product', 1, 1, 1, 1, 1, NULL, '2017-12-02 07:58:36', '2017-12-02 07:58:36'),
(12, 1, 'Message', 1, 1, 1, 1, 1, NULL, '2017-12-02 07:58:36', '2017-12-02 07:58:36'),
(13, 1, 'Invoice', 1, 1, 1, 1, 1, NULL, '2017-12-02 07:58:36', '2017-12-02 07:58:36'),
(14, 1, 'Dispatch', 1, 1, 1, 1, 1, NULL, '2017-12-02 07:58:36', '2017-12-02 07:58:36'),
(15, 1, 'Department', 1, 1, 1, 1, 1, NULL, '2017-12-02 07:58:36', '2017-12-02 07:58:36'),
(16, 1, 'Customer', 1, 1, 1, 1, 1, NULL, '2017-12-02 07:58:37', '2017-12-02 07:58:37'),
(17, 1, 'Company', 1, 1, 1, 1, 1, NULL, '2017-12-02 07:58:37', '2017-12-02 07:58:37'),
(18, 1, 'SalesOrder', 1, 1, 1, 1, 1, NULL, '2017-12-02 07:58:37', '2017-12-02 07:58:37'),
(19, 1, 'Currency', 1, 1, 1, 1, 1, NULL, '2017-12-02 07:58:37', '2017-12-02 07:58:37'),
(20, 1, 'InvoicePayment', 1, 1, 1, 1, 1, NULL, '2017-12-02 07:58:37', '2017-12-02 07:58:37');

-- --------------------------------------------------------

--
-- Table structure for table `notifications`
--

CREATE TABLE `notifications` (
  `id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `notifiable_id` int(10) UNSIGNED NOT NULL,
  `notifiable_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `data` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `read_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `payment_credits`
--

CREATE TABLE `payment_credits` (
  `id` int(10) UNSIGNED NOT NULL,
  `amount` double(16,2) NOT NULL,
  `paymentNarration` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `customerId` int(10) UNSIGNED NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(10) UNSIGNED NOT NULL,
  `productName` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `location` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `productSerial` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `productWeight` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `productSku` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `amount` double(15,2) NOT NULL DEFAULT '0.00',
  `unitCost` double(15,2) DEFAULT NULL,
  `sellingPrice` double(15,2) DEFAULT NULL,
  `productTax` double(15,2) DEFAULT NULL,
  `productTaxRate` double(15,2) DEFAULT NULL,
  `reorderAmount` decimal(8,2) DEFAULT NULL,
  `maximumOrderAmount` int(11) DEFAULT NULL,
  `expiryDate` date DEFAULT NULL,
  `barcode` longtext COLLATE utf8mb4_unicode_ci,
  `qrcode` longtext COLLATE utf8mb4_unicode_ci,
  `productImage` longtext COLLATE utf8mb4_unicode_ci,
  `canAutoOrder` tinyint(1) DEFAULT NULL,
  `autoOrderEmail` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `emailFormat` longtext COLLATE utf8mb4_unicode_ci,
  `barcodeFileName` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `qrcodeFileName` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `productMeasurementUnit` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `productBrand` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `productCurrency` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `productManufacturer` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `productBarcode` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `productModel` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `productProductionDate` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `hash` text COLLATE utf8mb4_unicode_ci,
  `usesMultipleStorage` tinyint(1) NOT NULL DEFAULT '0',
  `categoryName` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `categoryId` int(11) DEFAULT NULL,
  `productSpecification` text COLLATE utf8mb4_unicode_ci,
  `companyId` int(10) UNSIGNED NOT NULL,
  `updatedBy` int(10) UNSIGNED NOT NULL,
  `createdBy` int(10) UNSIGNED NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `productName`, `location`, `productSerial`, `productWeight`, `productSku`, `amount`, `unitCost`, `sellingPrice`, `productTax`, `productTaxRate`, `reorderAmount`, `maximumOrderAmount`, `expiryDate`, `barcode`, `qrcode`, `productImage`, `canAutoOrder`, `autoOrderEmail`, `emailFormat`, `barcodeFileName`, `qrcodeFileName`, `productMeasurementUnit`, `productBrand`, `productCurrency`, `productManufacturer`, `productBarcode`, `productModel`, `productProductionDate`, `hash`, `usesMultipleStorage`, `categoryName`, `categoryId`, `productSpecification`, `companyId`, `updatedBy`, `createdBy`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, '4QUIRE COUNTER BOOKS', 'Store', 'FEJN', '65', NULL, 49.00, 250.00, 270.00, NULL, 16.00, '4.00', NULL, '2002-04-29', '663374633849', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'KG', NULL, 'USD', 'McLaughlin LLC', NULL, NULL, NULL, 'EegJfLOd', 0, 'Electronics', 3, 'Exercitationem necessitatibus consequatur et ipsum nisi tenetur.', 1, 1, 1, NULL, '2017-12-02 07:53:04', '2017-12-02 07:53:04'),
(2, '3QUIRE COUNTER BOOKS', 'Store', 'LBOM', '6', NULL, 49.00, 588.00, 214.00, NULL, 16.00, '3.00', NULL, '1990-10-30', '311590816774', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'KG', NULL, 'USD', 'Prosacco and Sons', NULL, NULL, NULL, 'gepgh7Jd', 0, 'Stationery', 1, 'Iste neque earum porro. Repudiandae sint quae quaerat consectetur enim aut molestiae.', 1, 1, 1, NULL, '2017-12-02 07:53:05', '2017-12-02 07:56:03'),
(3, '2QUIRE COUNTER BOOKS', 'Store', 'IKRLHROXI', '17', NULL, 44.00, 152.00, 157.00, NULL, 16.00, '13.00', NULL, '1986-08-24', '616184901059', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'KG', NULL, 'USD', 'Friesen, Erdman and Hackett', NULL, NULL, NULL, 'QbW7im2b', 1, 'Vegetables', 5, 'Natus doloribus dolor sapiente alias dolorem perferendis. Cumque aut ratione ab laboriosam porro possimus veniam.', 1, 1, 1, NULL, '2017-12-02 07:53:06', '2017-12-02 07:58:08'),
(4, 'A4 WRITING PADS', 'Store', '63EED3HMACQ7JJ98OWW', '94', NULL, 47.00, 111.00, 122.00, NULL, 16.00, '1.00', NULL, '2012-06-12', '566941189995', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'KG', NULL, 'USD', 'Schneider-Jenkins', NULL, NULL, NULL, 'PeE8swNd', 1, 'Stationery', 1, 'Velit libero esse atque aliquam.', 1, 1, 1, NULL, '2017-12-02 07:53:07', '2017-12-02 07:57:39'),
(5, 'A5 SHORTHAND BOOKS', 'Store', 'JW72N0PE3BEQYPWZY', '27', NULL, 44.00, 142.00, 161.00, NULL, 16.00, '4.00', NULL, '1998-08-27', '941863813553', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'KG', NULL, 'USD', 'Stracke, Maggio and Wunsch', NULL, NULL, NULL, 'jaK8tYNb', 1, 'Vegetables', 5, 'Unde ad magni quis magni. Aut labore repellendus delectus rerum et.', 1, 1, 1, NULL, '2017-12-02 07:53:08', '2017-12-02 07:58:13'),
(6, 'LETTER DELIVERY BOOKS', 'Store', 'HVT53JKMD', '4', NULL, 49.00, 158.00, 172.00, NULL, 16.00, '4.00', NULL, '2004-02-09', '600653224381', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'KG', NULL, 'USD', 'Larkin Inc', NULL, NULL, NULL, 'Wb4zuOle', 0, 'Foods', 4, 'Qui quis ad magnam velit quo.', 1, 1, 1, NULL, '2017-12-02 07:53:09', '2017-12-02 07:53:09'),
(7, 'IMPORTS STRONG ROOM RECORD BOOKS', 'Store', 'T7NS', '62', NULL, 34.00, 703.00, 250.00, NULL, 16.00, '7.00', NULL, '2007-05-07', '398144487413', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'KG', NULL, 'USD', 'Larson-Kreiger', NULL, NULL, NULL, 'PeExC1jd', 1, 'Foods', 4, 'Dolor distinctio dolore quae sed consequatur tempora.', 1, 1, 1, NULL, '2017-12-02 07:53:09', '2017-12-02 07:58:12'),
(8, 'EXPORTS STRONG ROOM RECORD BOOKS', 'Store', 'ZRPMRO', '45', NULL, 46.00, 161.00, 175.00, NULL, 16.00, '10.00', NULL, '1989-10-30', '347374020709', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'KG', NULL, 'USD', 'Cummerata, Barrows and Shields', NULL, NULL, NULL, '9aQOFG8d', 1, 'Foods', 4, 'Neque consequatur doloremque aliquid non et eos. Non et est repellendus sunt.', 1, 1, 1, NULL, '2017-12-02 07:53:12', '2017-12-02 07:57:56'),
(9, 'EQUIPMENT HIREOUT BOOKS', 'Store', 'G26XMASF', '19', NULL, 49.00, 280.00, 291.00, NULL, 16.00, '5.00', NULL, '2009-04-11', '844207416826', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'KG', NULL, 'USD', 'Haag, Jast and Cummings', NULL, NULL, NULL, 'Be3jHpjd', 0, 'Electronics', 3, 'Voluptas labore qui sint. Perspiciatis voluptatem sed dolorem officia ad quo nostrum.', 1, 1, 1, NULL, '2017-12-02 07:53:15', '2017-12-02 07:53:15'),
(10, 'A3 KHAKI BROWN ENVELOPES ', 'Store', 'B3YEES', '62', NULL, 42.00, 1759.00, 163.00, NULL, 16.00, '8.00', NULL, '1975-01-03', '499359373949', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'KG', NULL, 'USD', 'VonRueden-Wolf', NULL, NULL, NULL, 'Ge7DI1Ra', 1, 'Consumables', 2, 'Tenetur similique et mollitia inventore est. Natus sequi aperiam odio voluptatibus sit.', 1, 1, 1, NULL, '2017-12-02 07:53:15', '2017-12-02 07:57:08'),
(11, 'A4 KHAKI BROWN ENVELOPES', 'Store', 'AUYBN', '65', NULL, 49.00, 121.00, 135.00, NULL, 16.00, '10.00', NULL, '1977-05-27', '854056313481', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'KG', NULL, 'USD', 'Shields-Muller', NULL, NULL, NULL, 'XdL5S6Le', 0, 'Vegetables', 5, 'Nihil suscipit et porro ut iure tempora. Omnis ipsum id tenetur aperiam ut.', 1, 1, 1, NULL, '2017-12-02 07:53:18', '2017-12-02 07:53:18'),
(12, 'A4 BRANDED ENVELOPES', 'Store', 'T8X9NH', '14', NULL, 43.00, 100.00, 110.00, NULL, 16.00, '10.00', NULL, '1999-09-14', '831130601177', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'KG', NULL, 'USD', 'Huels Group', NULL, NULL, NULL, 'wbo7T6Xb', 1, 'Electronics', 3, 'Amet dignissimos quibusdam hic explicabo quae aut. Eaque repellat iste illo iste assumenda.', 1, 1, 1, NULL, '2017-12-02 07:53:18', '2017-12-02 07:57:55'),
(13, 'PRINTING PAPERS', 'Store', '_dHDV6CZFV', '92', NULL, 42.00, 751.50, 139.00, NULL, 16.00, '4.00', NULL, '1972-02-02', '371329532955', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'KG', NULL, 'USD', 'Leffler Ltd', NULL, NULL, NULL, 'ZeVoUOaG', 1, 'Vegetables', 5, 'Perferendis est repellendus placeat perspiciatis dicta delectus voluptatibus.', 1, 1, 1, NULL, '2017-12-02 07:53:21', '2017-12-02 07:58:31'),
(14, 'WHILE YOU WERE AWAY MESSAGE BOOKS', 'Store', 'I9BFWM', '69', NULL, 49.00, 213.00, 231.00, NULL, 16.00, '4.00', NULL, '2000-10-26', '831539950234', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'KG', NULL, 'USD', 'Brakus-Reichel', NULL, NULL, NULL, 'zaO6clep', 0, 'Stationery', 1, 'Voluptas beatae illum ducimus et laboriosam. Temporibus consequatur necessitatibus officia deserunt.', 1, 1, 1, NULL, '2017-12-02 07:53:22', '2017-12-02 07:53:22'),
(15, 'STICKY NOTES', 'Store', '6DMSLPTTN', '49', NULL, 49.00, 175.00, 180.00, NULL, 16.00, '10.00', NULL, '2010-05-09', '369182510517', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'KG', NULL, 'USD', 'Langworth Inc', NULL, NULL, NULL, 'KdwgfAmd', 0, 'Foods', 4, 'Quis ipsam aut optio sint debitis sed.', 1, 1, 1, NULL, '2017-12-02 07:53:23', '2017-12-02 07:53:23'),
(16, 'PAPER CLIPS 33MM', 'Store', 'I7%7cQ}OSTD', '39', NULL, 41.00, 1246.00, 129.00, NULL, 16.00, '5.00', NULL, '1972-08-18', '741507137089', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'KG', NULL, 'USD', 'Oberbrunner-Haag', NULL, NULL, NULL, 'qdGXhm4e', 1, 'Foods', 4, 'Voluptatem maiores eos quod assumenda recusandae deleniti et et.', 1, 1, 1, NULL, '2017-12-02 07:53:23', '2017-12-02 07:57:24'),
(17, 'PAPER CLIPS  50MM', 'Store', 'ZZCV', '24', NULL, 41.00, 188.00, 204.00, NULL, 16.00, '5.00', NULL, '2015-02-18', '471948556094', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'KG', NULL, 'USD', 'Trantow-Buckridge', NULL, NULL, NULL, 'bkgiO6gb', 1, 'Cool Stuff', 6, 'Et non occaecati atque blanditiis rerum quia.', 1, 1, 1, NULL, '2017-12-02 07:53:25', '2017-12-02 07:56:45'),
(18, 'BOX FILES', 'Store', 'T-A0;UM-QKW', '84', NULL, 49.00, 116.00, 123.00, NULL, 16.00, '14.00', NULL, '2001-12-24', '896066914524', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'KG', NULL, 'USD', 'Herman-Kub', NULL, NULL, NULL, 'yelLsvpe', 0, 'Electronics', 3, 'Fuga optio labore ut vitae.', 1, 1, 1, NULL, '2017-12-02 07:53:26', '2017-12-02 07:53:26'),
(19, 'SPRING FILES', 'Store', '%5VNLK', '16', NULL, 49.00, 170.00, 177.00, NULL, 16.00, '9.00', NULL, '1982-09-27', '767056446564', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'KG', NULL, 'USD', 'Herzog-Haley', NULL, NULL, NULL, 'Be1ztP3a', 0, 'Electronics', 3, 'Facilis enim harum quod maxime et magni exercitationem in.', 1, 1, 1, NULL, '2017-12-02 07:53:26', '2017-12-02 07:53:26'),
(20, 'BIRO PENS BLUE', 'Store', '8IQDYVR-UAPAE', '18', NULL, 49.00, 177.00, 192.00, NULL, 16.00, '11.00', NULL, '1970-05-18', '492896968098', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'KG', NULL, 'USD', 'Reilly-Thiel', NULL, NULL, NULL, 'qdP9u6ve', 0, 'Stationery', 1, 'Quia exercitationem modi aut. Ut natus laudantium praesentium eius.', 1, 1, 1, NULL, '2017-12-02 07:53:27', '2017-12-02 07:53:27'),
(21, 'BIRO PENS BLACK', 'Store', '%2XMC', '93', NULL, 49.00, 61.00, 148.00, NULL, 16.00, '11.00', NULL, '1977-05-20', '754013861911', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'KG', NULL, 'USD', 'Wisoky, Homenick and Reinger', NULL, NULL, NULL, '1dNRCJJd', 0, 'Consumables', 2, 'Velit possimus neque dolorem dolorem quasi aut in sequi. Iure ex deleniti qui laudantium commodi perferendis.', 1, 1, 1, NULL, '2017-12-02 07:53:27', '2017-12-02 07:56:01'),
(22, 'BIRO PENS RED', 'Store', '%X6UXE', '20', NULL, 41.00, 297.00, 315.00, NULL, 16.00, '13.00', NULL, '1979-07-15', '629051255353', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'KG', NULL, 'USD', 'Cole LLC', NULL, NULL, NULL, 'Ge72FJZd', 1, 'Foods', 4, 'Nihil voluptatem incidunt et labore et nemo tempora.', 1, 1, 1, NULL, '2017-12-02 07:53:28', '2017-12-02 07:57:41'),
(23, 'PERMANENT MARKER PENS', 'Store', 'C90869TK', '57', NULL, 39.00, 796.50, 281.00, NULL, 16.00, '2.00', NULL, '1985-06-14', '109839945961', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'KG', NULL, 'USD', 'Corkery Inc', NULL, NULL, NULL, 'rb6NH07b', 1, 'Vegetables', 5, 'Velit suscipit architecto doloremque voluptas id. Sit expedita vitae distinctio ab.', 1, 1, 1, NULL, '2017-12-02 07:53:29', '2017-12-02 07:58:08'),
(24, 'SMALL STAPLER', 'Store', 'FRYDY2HH1QAZ', '72', NULL, 49.00, 904.00, 124.00, NULL, 16.00, '14.00', NULL, '1979-01-14', '888015800866', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'KG', NULL, 'USD', 'Mills, Kunze and Bashirian', NULL, NULL, NULL, 'oej9IZ8d', 0, 'Cool Stuff', 6, 'Unde incidunt sit quo cum nisi amet.', 1, 1, 1, NULL, '2017-12-02 07:53:32', '2017-12-02 07:56:13'),
(25, 'STAPLE PINS Small 24/6', 'Store', 'Q1B-E1FCZ', '11', NULL, 49.00, 253.00, 262.00, NULL, 16.00, '6.00', NULL, '1992-07-31', '453691316118', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'KG', NULL, 'USD', 'Miller, Zemlak and Heidenreich', NULL, NULL, NULL, 'Ge7qSopb', 0, 'Stationery', 1, 'Amet porro non aperiam.', 1, 1, 1, NULL, '2017-12-02 07:53:32', '2017-12-02 07:53:32'),
(26, 'STAPLE PINS REMOVER', 'Store', '%L4AIIL2EIHD', '96', NULL, 49.00, 160.00, 172.00, NULL, 16.00, '1.00', NULL, '1978-10-26', '895636247987', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'KG', NULL, 'USD', 'Welch LLC', NULL, NULL, NULL, 'ge0nTPYb', 0, 'Stationery', 1, 'Vel tempora et natus. Maiores aut expedita vel quia est voluptatem.', 1, 1, 1, NULL, '2017-12-02 07:53:33', '2017-12-02 07:53:33'),
(27, 'SMALL PAPER PUNCH', 'Store', 'L3YLZTN', '26', NULL, 47.00, 224.00, 238.00, NULL, 16.00, '2.00', NULL, '1973-10-18', '919687991290', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'KG', NULL, 'USD', 'Gutkowski, Volkman and Altenwerth', NULL, NULL, NULL, 'Be3gU5Ee', 1, 'Foods', 4, 'Fugit dolorem quia veniam saepe ut reprehenderit. Qui recusandae aspernatur explicabo fuga tenetur facilis eligendi molestiae.', 1, 1, 1, NULL, '2017-12-02 07:53:35', '2017-12-02 07:58:30'),
(28, 'PENCILS', 'Store', 'TPJ908EGVOSZ', '19', NULL, 43.00, 617.00, 312.00, NULL, 16.00, '11.00', NULL, '1981-02-25', '175470509688', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'KG', NULL, 'USD', 'Rowe, Kling and Osinski', NULL, NULL, NULL, 'ZdyGcOva', 1, 'Electronics', 3, 'Ut iusto nam quia dolorem est occaecati sequi.', 1, 1, 1, NULL, '2017-12-02 07:53:37', '2017-12-02 07:58:26'),
(29, 'RUBBER BANDS', 'Store', 'U9O19EX', '49', NULL, 41.00, 271.00, 281.00, NULL, 16.00, '10.00', NULL, '1989-11-11', '579361959475', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'KG', NULL, 'USD', 'VonRueden, Bernhard and Schmidt', NULL, NULL, NULL, 'pdB0fl3a', 1, 'Stationery', 1, 'Saepe corrupti omnis necessitatibus asperiores.', 1, 1, 1, NULL, '2017-12-02 07:53:38', '2017-12-02 07:57:58'),
(30, 'STAMP INK', 'Store', 'G1UPGGVNVL', '95', NULL, 46.00, 293.00, 298.00, NULL, 16.00, '1.00', NULL, '2003-06-09', '458627843379', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'KG', NULL, 'USD', 'Bayer, O\'Keefe and Beer', NULL, NULL, NULL, 'Ge7ZhERd', 1, 'Consumables', 2, 'Temporibus optio assumenda eaque magnam excepturi cum.', 1, 1, 1, NULL, '2017-12-02 07:53:39', '2017-12-02 07:58:07'),
(31, 'CALCULATOR', 'Store', 'IBNKR', '78', NULL, 49.00, 110.00, 115.00, NULL, 16.00, '7.00', NULL, '1976-11-23', '342930182730', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'KG', NULL, 'USD', 'Wehner-Mayert', NULL, NULL, NULL, '6e9WiOxb', 0, 'Consumables', 2, 'Natus adipisci repellat rerum consequatur. Ullam non at totam consectetur doloribus recusandae.', 1, 1, 1, NULL, '2017-12-02 07:53:42', '2017-12-02 07:53:42'),
(32, 'SHARPENER', 'Store', 'W7W%00ZAU46-ULM', '18', NULL, 45.00, 241.00, 248.00, NULL, 16.00, '7.00', NULL, '2001-07-03', '510879184027', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'KG', NULL, 'USD', 'Beatty PLC', NULL, NULL, NULL, 'Be1ysV6e', 1, 'Consumables', 2, 'Consequatur voluptas magnam omnis assumenda tempora. Sed quae qui voluptatibus officia et.', 1, 1, 1, NULL, '2017-12-02 07:53:42', '2017-12-02 07:57:54'),
(33, 'WHITE OUT', 'Store', 'WWYUVE', '99', NULL, 27.00, 105.00, 110.00, NULL, 16.00, '15.00', NULL, '1999-05-07', '556274566877', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'KG', NULL, 'USD', 'Marks, O\'Kon and Raynor', NULL, NULL, NULL, 'nazGtVgb', 1, 'Consumables', 2, 'Ut veniam saepe sequi perferendis. Illum doloremque sed et ut.', 1, 1, 1, NULL, '2017-12-02 07:53:43', '2017-12-02 07:58:34'),
(34, 'Glue STICK', 'Store', '%YT9ASNJU', '52', NULL, 42.00, 126.00, 138.00, NULL, 16.00, '13.00', NULL, '1983-09-08', '294325922899', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'KG', NULL, 'USD', 'Rolfson, Ernser and Fay', NULL, NULL, NULL, 'wboLugWd', 1, 'Consumables', 2, 'Nisi autem exercitationem ut eos velit.', 1, 1, 1, NULL, '2017-12-02 07:53:46', '2017-12-02 07:58:11'),
(35, 'HIGHLIGHTER', 'Store', 'LONF', '98', NULL, 40.00, 167.00, 187.00, NULL, 16.00, '13.00', NULL, '1983-09-24', '637050420085', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'KG', NULL, 'USD', 'Haag LLC', NULL, NULL, NULL, 'RbD3Crga', 1, 'Cool Stuff', 6, 'Qui et hic error sed.', 1, 1, 1, NULL, '2017-12-02 07:53:47', '2017-12-02 07:58:06'),
(36, 'DUST BINS', 'Store', 'L34PP', '83', NULL, 44.00, 111.00, 127.00, NULL, 16.00, '12.00', NULL, '1982-06-07', '876979342959', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'KG', NULL, 'USD', 'Reichel Group', NULL, NULL, NULL, 'gepxFXMe', 1, 'Vegetables', 5, 'Quidem iure perferendis non aut.', 1, 1, 1, NULL, '2017-12-02 07:53:49', '2017-12-02 07:58:28'),
(37, 'PLAIN NCR 4PART', 'Store', '4ZEGBE', '99', NULL, 49.00, 1674.00, 113.00, NULL, 16.00, '5.00', NULL, '2016-03-31', '204735732841', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'KG', NULL, 'USD', 'Parisian-Nader', NULL, NULL, NULL, '6e9kHG1b', 0, 'Consumables', 2, 'Porro maxime cupiditate enim consectetur qui eos possimus. Consequuntur illum deleniti rerum odio nulla sed adipisci.', 1, 1, 1, NULL, '2017-12-02 07:53:52', '2017-12-02 07:56:34'),
(38, 'ARRIVAL NOTIFICATION', 'Store', 'FM4LJJHY4IWJN', '93', NULL, 49.00, 137.00, 146.00, NULL, 16.00, '14.00', NULL, '1976-04-22', '416973661726', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'KG', NULL, 'USD', 'Homenick, Ortiz and Kihn', NULL, NULL, NULL, 'jbqgIDMe', 0, 'Foods', 4, 'In a est commodi velit. Tempora sit dolorum distinctio magni voluptas libero similique.', 1, 1, 1, NULL, '2017-12-02 07:53:52', '2017-12-02 07:53:52'),
(39, 'LETTER HEADS', 'Store', '_PV8CTZ', '68', NULL, 49.00, 244.00, 261.00, NULL, 16.00, '5.00', NULL, '2006-03-20', '309315744976', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'KG', NULL, 'USD', 'Kohler PLC', NULL, NULL, NULL, 'MaxYS5nb', 0, 'Stationery', 1, 'Hic deserunt est corporis. Aut aliquam ullam blanditiis saepe illo ad voluptas.', 1, 1, 1, NULL, '2017-12-02 07:53:53', '2017-12-02 07:53:53'),
(40, 'ULD BOOKS', 'Store', 'GBXNRKYI', '68', NULL, 45.00, 992.00, 145.00, NULL, 16.00, '1.00', NULL, '1985-04-08', '780223876216', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'KG', NULL, 'USD', 'Tromp-Oberbrunner', NULL, NULL, NULL, 'rb6gT0Bd', 1, 'Foods', 4, 'Doloribus fugit quod atque sapiente officia omnis hic. Facere id eum et consequuntur.', 1, 1, 1, NULL, '2017-12-02 07:53:53', '2017-12-02 07:58:27'),
(41, 'PROPERTY DECLARATION BOOKS', 'Store', 'J4KEQ', '84', NULL, 37.00, 206.00, 211.00, NULL, 16.00, '13.00', NULL, '1980-01-16', '890139473116', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'KG', NULL, 'USD', 'Wilkinson, Lebsack and Bahringer', NULL, NULL, NULL, 'VeZ5U6Ad', 1, 'Vegetables', 5, 'Voluptatem et qui eum quidem.', 1, 1, 1, NULL, '2017-12-02 07:53:55', '2017-12-02 07:57:55'),
(42, 'SECURITY DECLARATION BOOKS', 'Store', '19FSTL', '30', NULL, 37.00, 222.00, 233.00, NULL, 16.00, '8.00', NULL, '1986-03-13', '212703360385', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'KG', NULL, 'USD', 'Haley, Erdman and Breitenberg', NULL, NULL, NULL, '9aQ3cNgd', 1, 'Vegetables', 5, 'Et dignissimos rerum ut architecto. Dicta quae nam dignissimos molestiae alias at exercitationem.', 1, 1, 1, NULL, '2017-12-02 07:53:56', '2017-12-02 07:58:12'),
(43, 'Gate Pass', 'Store', '%DDP', '89', NULL, 49.00, 228.00, 241.00, NULL, 16.00, '4.00', NULL, '2008-05-08', '891357468182', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'KG', NULL, 'USD', 'Davis-Ullrich', NULL, NULL, NULL, 'ZdyQfyvd', 0, 'Foods', 4, 'At doloremque reprehenderit consequatur sunt libero explicabo in in.', 1, 1, 1, NULL, '2017-12-02 07:53:58', '2017-12-02 07:53:58'),
(44, 'TRANSGLOBAL TAPES', 'Store', 'LMTISO', '56', NULL, 49.00, 146.00, 157.00, NULL, 16.00, '3.00', NULL, '2015-05-02', '484453047179', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'KG', NULL, 'USD', 'Lesch PLC', NULL, NULL, NULL, 'b828hMXe', 1, 'Stationery', 1, 'Enim possimus sed aut voluptatem laborum aut. Ea dolor dolor quae rem fugit quod.', 1, 1, 1, NULL, '2017-12-02 07:53:58', '2017-12-02 07:53:58'),
(45, 'RUBBER GLOVES', 'Store', '2G49WGJ', '25', NULL, 32.00, 239.00, 252.00, NULL, 16.00, '7.00', NULL, '1971-06-28', '513685328876', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'KG', NULL, 'USD', 'Johns Group', NULL, NULL, NULL, 'e1wwi6pb', 1, 'Cool Stuff', 6, 'In quasi fuga ipsa.', 1, 1, 1, NULL, '2017-12-02 07:53:59', '2017-12-02 07:58:24'),
(46, 'LEATHER GLOVES', 'Store', 'HBPKNPAB', '69', NULL, 42.00, 279.00, 289.00, NULL, 16.00, '11.00', NULL, '2016-04-20', '856109607899', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'KG', NULL, 'USD', 'Koelpin and Sons', NULL, NULL, NULL, 'erk0sg5a', 1, 'Foods', 4, 'Et repellendus ea quibusdam pariatur consequuntur ea.', 1, 1, 1, NULL, '2017-12-02 07:54:02', '2017-12-02 07:57:40'),
(47, 'Ear Muffs', 'Store', 'GXJVM', '33', NULL, 27.00, 1643.00, 229.00, NULL, 16.00, '5.00', NULL, '2003-03-01', '794988407974', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'KG', NULL, 'USD', 'Von, Langosh and Bartell', NULL, NULL, NULL, 'dL98tLxe', 1, 'Stationery', 1, 'Qui unde tempore eaque nisi suscipit in deserunt. Officiis quasi nesciunt error quia dignissimos velit.', 1, 1, 1, NULL, '2017-12-02 07:54:03', '2017-12-02 07:58:30'),
(48, 'Staple Pins Big 66/14', 'Store', 'HULZO-QZV', '88', NULL, 45.00, 238.00, 249.00, NULL, 16.00, '6.00', NULL, '1978-04-08', '225568969051', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'KG', NULL, 'USD', 'Baumbach-Rogahn', NULL, NULL, NULL, 'av2luEXa', 1, 'Consumables', 2, 'Assumenda accusantium quia amet illum nisi temporibus iste. Cupiditate dicta earum voluptatum.', 1, 1, 1, NULL, '2017-12-02 07:54:06', '2017-12-02 07:57:38'),
(49, 'Hp320A', 'Store', 'SK1WV', '73', NULL, 49.00, 291.00, 299.00, NULL, 16.00, '1.00', NULL, '1980-08-31', '556975149690', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'KG', NULL, 'USD', 'Hammes-Nader', NULL, NULL, NULL, 'aQWkC6pd', 1, 'Foods', 4, 'Quas soluta nihil et. Dolorem quis nesciunt sunt corporis ut quia natus.', 1, 1, 1, NULL, '2017-12-02 07:54:09', '2017-12-02 07:54:09'),
(50, 'Hp321A', 'Store', 'YWW_6O06RF', '31', NULL, 49.00, 244.00, 158.00, NULL, 16.00, '11.00', NULL, '1976-05-31', '406881808870', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'KG', NULL, 'USD', 'McCullough, Little and Stiedemann', NULL, NULL, NULL, 'dwpKFkEe', 0, 'Consumables', 2, 'Laudantium harum doloremque rerum nobis labore voluptas. Molestias quam nemo odit harum in facere.', 1, 1, 1, NULL, '2017-12-02 07:54:10', '2017-12-02 07:56:25'),
(51, 'Hp322A', 'Store', '+O_U53ROOZTAJ', '54', NULL, 48.00, 663.00, 150.00, NULL, 16.00, '12.00', NULL, '1983-09-28', '190293642626', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'KG', NULL, 'USD', 'Vandervort, Littel and Hayes', NULL, NULL, NULL, 'en5OHXgd', 1, 'Vegetables', 5, 'Laudantium rem suscipit dolore aliquam.', 1, 1, 1, NULL, '2017-12-02 07:54:10', '2017-12-02 07:56:46'),
(52, 'Hp323A', 'Store', 'F_C3825VE3WRRK', '78', NULL, 47.00, 174.00, 185.00, NULL, 16.00, '14.00', NULL, '1997-06-25', '603182735755', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'KG', NULL, 'USD', 'Powlowski-Zboncak', NULL, NULL, NULL, 'e5yWILle', 1, 'Vegetables', 5, 'Sunt illum libero perferendis recusandae amet. Laborum quos quas tempora aut et odit.', 1, 1, 1, NULL, '2017-12-02 07:54:13', '2017-12-02 07:58:13'),
(53, 'Hp540A', 'Store', '80-RFLmMGUPE', '7', NULL, 49.00, 123.00, 129.00, NULL, 16.00, '14.00', NULL, '1998-11-27', '690289000466', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'KG', NULL, 'USD', 'Carroll, Rempel and Beahan', NULL, NULL, NULL, 'dwpES1ve', 0, 'Stationery', 1, 'Modi possimus eum enim autem dolores. Quia a dolore pariatur laudantium ab eligendi cum.', 1, 1, 1, NULL, '2017-12-02 07:54:14', '2017-12-02 07:54:14'),
(54, 'Hp541A', 'Store', 'L3I6IWVAYBP', '82', NULL, 41.00, 220.00, 230.00, NULL, 16.00, '8.00', NULL, '1990-03-07', '959647566861', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'KG', NULL, 'USD', 'Little, Boehm and Herman', NULL, NULL, NULL, 'e9r3TD9a', 1, 'Vegetables', 5, 'Distinctio ipsam ea dolore temporibus sit molestiae nihil et. Qui quia necessitatibus accusamus provident recusandae.', 1, 1, 1, NULL, '2017-12-02 07:54:15', '2017-12-02 07:58:25'),
(55, 'Hp542A', 'Store', 'PKC-28IV8KOED', '10', NULL, 49.00, 182.00, 201.00, NULL, 16.00, '12.00', NULL, '1994-07-17', '137011934731', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'KG', NULL, 'USD', 'Schinner and Sons', NULL, NULL, NULL, 'dL95Ur8e', 1, 'Consumables', 2, 'Consequuntur fugiat cumque explicabo dicta quam.', 1, 1, 1, NULL, '2017-12-02 07:54:18', '2017-12-02 07:54:18'),
(56, 'Hp543A', 'Store', 'UZKT217JL12KYV', '52', NULL, 49.00, 113.00, 118.00, NULL, 16.00, '10.00', NULL, '1996-06-18', '209124921424', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'KG', NULL, 'USD', 'Wuckert PLC', NULL, NULL, NULL, 'dNkpcY6e', 0, 'Foods', 4, 'Totam magnam aliquam voluptatibus quia aliquid culpa. Molestiae voluptatem adipisci qui nesciunt.', 1, 1, 1, NULL, '2017-12-02 07:54:20', '2017-12-02 07:54:20'),
(57, 'CE310', 'Store', '1JKKVK', '46', NULL, 49.00, 193.00, 209.00, NULL, 16.00, '9.00', NULL, '2003-05-14', '344646000292', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'KG', NULL, 'USD', 'Schaefer LLC', NULL, NULL, NULL, 'dJ6ziP3d', 0, 'Foods', 4, 'In aut eum similique omnis odio.', 1, 1, 1, NULL, '2017-12-02 07:54:20', '2017-12-02 07:54:20'),
(58, 'CE311', 'Store', '%FX%-TSE6<370PSYG', '34', NULL, 43.00, 372.00, 249.00, NULL, 16.00, '15.00', NULL, '1983-09-14', '544751391012', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'KG', NULL, 'USD', 'Dicki, Okuneva and Borer', NULL, NULL, NULL, 'b68Khrr1', 1, 'Consumables', 2, 'Eum accusantium omnis tenetur quaerat. Atque sed placeat possimus perferendis at.', 1, 1, 1, NULL, '2017-12-02 07:54:21', '2017-12-02 07:58:08'),
(59, 'CE312', 'Store', 'M8PQG', '9', NULL, 37.00, 1252.00, 197.00, NULL, 16.00, '9.00', NULL, '1995-05-04', '725970484697', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'KG', NULL, 'USD', 'Sipes LLC', NULL, NULL, NULL, 'eERQiq3a', 1, 'Foods', 4, 'Eos temporibus voluptatem vitae voluptatum et et. Distinctio minus doloremque provident sit sequi.', 1, 1, 1, NULL, '2017-12-02 07:54:22', '2017-12-02 07:58:22'),
(60, 'CE313', 'Store', 'P4OZFE', '59', NULL, 43.00, 93.50, 117.00, NULL, 16.00, '4.00', NULL, '2004-07-11', '899310763565', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'KG', NULL, 'USD', 'Greenfelder-Bruen', NULL, NULL, NULL, 'dBBXsx0d', 1, 'Consumables', 2, 'Odio delectus praesentium in dignissimos. Ea animi debitis ut delectus eos.', 1, 1, 1, NULL, '2017-12-02 07:54:29', '2017-12-02 07:57:47'),
(61, 'CE505A', 'Store', '%7IIVEQ', '16', NULL, 42.00, 107.00, 118.00, NULL, 16.00, '12.00', NULL, '2006-10-19', '402245929670', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'KG', NULL, 'USD', 'Wolff PLC', NULL, NULL, NULL, 'dR6XCnYd', 1, 'Electronics', 3, 'Qui dolor consectetur quos enim nulla doloremque. Et qui consequatur excepturi debitis.', 1, 1, 1, NULL, '2017-12-02 07:54:30', '2017-12-02 07:58:01'),
(62, 'CE285A', 'Store', '3TNT3DC3EUY', '72', NULL, 40.00, 802.00, 240.00, NULL, 16.00, '5.00', NULL, '2010-03-16', '166467743987', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'KG', NULL, 'USD', 'Terry PLC', NULL, NULL, NULL, 'bYExu0kb', 1, 'Foods', 4, 'Rerum repellat et tempora quo quis ea iste. Sapiente ut sed ipsa voluptatem iusto ut.', 1, 1, 1, NULL, '2017-12-02 07:54:35', '2017-12-02 07:58:04'),
(63, 'Q7553A', 'Store', 'P1EOHXIX', '100', NULL, 41.00, 298.00, 308.00, NULL, 16.00, '5.00', NULL, '2001-11-24', '429520580944', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'KG', NULL, 'USD', 'Bayer, Eichmann and Maggio', NULL, NULL, NULL, 'bW6zH9wa', 1, 'Vegetables', 5, 'Aliquid qui quis quisquam debitis.', 1, 1, 1, NULL, '2017-12-02 07:54:36', '2017-12-02 07:57:42'),
(64, 'Epson IQ 2190', 'Store', '%%-H0NS', '70', NULL, 34.00, 1069.00, 303.00, NULL, 16.00, '9.00', NULL, '1976-12-11', '753617486223', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'KG', NULL, 'USD', 'Kohler-Hartmann', NULL, NULL, NULL, 'azpEFxBd', 1, 'Stationery', 1, 'Necessitatibus rerum aut fuga consequatur. Cum dolorem ipsa ipsam reprehenderit illum reiciendis est voluptatum.', 1, 1, 1, NULL, '2017-12-02 07:54:37', '2017-12-02 07:57:22'),
(65, 'Epson IQ 870', 'Store', '%FG3AD631k8SH3FQ', '19', NULL, 42.00, 629.00, 161.00, NULL, 16.00, '8.00', NULL, '2009-07-02', '936747834168', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'KG', NULL, 'USD', 'Wiza-Harris', NULL, NULL, NULL, 'en5PTBJd', 1, 'Stationery', 1, 'Quis doloribus omnis cupiditate quis tempora debitis. Illo veritatis dolorem magnam labore.', 1, 1, 1, NULL, '2017-12-02 07:54:41', '2017-12-02 07:58:28'),
(66, 'A5 Branded Envelopes', 'Store', '%13GG', '38', NULL, 44.00, 164.00, 182.00, NULL, 16.00, '11.00', NULL, '2015-03-06', '834647602392', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'KG', NULL, 'USD', 'Gibson, McKenzie and Hoppe', NULL, NULL, NULL, 'bo2khZ3a', 1, 'Stationery', 1, 'Aperiam sit veritatis reiciendis vel repellendus voluptate esse tenetur. Et perferendis sunt magnam eos.', 1, 1, 1, NULL, '2017-12-02 07:54:43', '2017-12-02 07:57:01'),
(67, 'DL Windowed Envelops', 'Store', 'ESQQ', '91', NULL, 49.00, 824.00, 184.00, NULL, 16.00, '8.00', NULL, '1987-11-01', '914755526503', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'KG', NULL, 'USD', 'Marquardt, Fay and Howe', NULL, NULL, NULL, 'e31XsZPb', 1, 'Vegetables', 5, 'Veniam corporis sequi repudiandae occaecati ratione.', 1, 1, 1, NULL, '2017-12-02 07:54:44', '2017-12-02 07:56:30'),
(68, 'DL Non-Windowed Envelopes', 'Store', 'YS_NU1ULBMHYF', '21', NULL, 41.00, 607.50, 210.00, NULL, 16.00, '7.00', NULL, '2002-11-21', '234576488294', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'KG', NULL, 'USD', 'Gutkowski PLC', NULL, NULL, NULL, 'b68AT7Ne', 1, 'Electronics', 3, 'Sed assumenda voluptatibus in autem rerum et sequi dolores. Voluptate qui quo aut dolores voluptatum.', 1, 1, 1, NULL, '2017-12-02 07:54:45', '2017-12-02 07:56:56'),
(69, 'CF280A', 'Store', 'TT%%79j6PZYXJ', '13', NULL, 49.00, 749.00, 230.00, NULL, 16.00, '9.00', NULL, '1971-08-15', '103944640360', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'KG', NULL, 'USD', 'Conroy-Zboncak', NULL, NULL, NULL, 'en5WhK5d', 0, 'Stationery', 1, 'Ut quas dolorem iure assumenda repellendus dolores dolorum quia.', 1, 1, 1, NULL, '2017-12-02 07:54:47', '2017-12-02 07:56:14'),
(70, 'Project Folders', 'Store', '33TZCAIB', '19', NULL, 49.00, 193.00, 202.00, NULL, 16.00, '1.00', NULL, '1971-06-30', '139369049860', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'KG', NULL, 'USD', 'Osinski Ltd', NULL, NULL, NULL, 'axk0c9Ee', 0, 'Foods', 4, 'Maxime non aperiam vero consequatur ipsa officia. Voluptatum molestiae dolor ut voluptas ut voluptatum delectus.', 1, 1, 1, NULL, '2017-12-02 07:54:47', '2017-12-02 07:54:47'),
(71, 'Erasers', 'Store', 'AKCGRCEL', '8', NULL, 49.00, 296.00, 310.00, NULL, 16.00, '7.00', NULL, '2016-10-17', '539298782522', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'KG', NULL, 'USD', 'Erdman-Grant', NULL, NULL, NULL, 'e73muJAe', 0, 'Vegetables', 5, 'Quia unde ipsa eum nobis aut iusto. Ut dolorem sit sequi enim ab ut et dolorum.', 1, 1, 1, NULL, '2017-12-02 07:54:48', '2017-12-02 07:54:48'),
(72, 'A5Khaki brown  envelopes', 'Store', 'BFQDSKD', '40', NULL, 45.00, 646.50, 237.00, NULL, 16.00, '4.00', NULL, '1996-10-18', '150540683741', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'KG', NULL, 'USD', 'Ebert and Sons', NULL, NULL, NULL, 'dyPGh3Gb', 1, 'Consumables', 2, 'Sunt cum beatae ut et consequatur. Provident voluptas id inventore laudantium aut iure pariatur.', 1, 1, 1, NULL, '2017-12-02 07:54:48', '2017-12-02 07:57:53'),
(73, 'safety boots', 'Store', 'SFVOHUD', '15', NULL, 35.00, 197.00, 205.00, NULL, 16.00, '10.00', NULL, '2016-05-14', '241708120717', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'KG', NULL, 'USD', 'Morissette and Sons', NULL, NULL, NULL, 'aOYBi0jd', 1, 'Consumables', 2, 'Labore et officiis deserunt non.', 1, 1, 1, NULL, '2017-12-02 07:54:50', '2017-12-02 07:58:24'),
(74, 'Rulers', 'Store', 'BWNEP1HFB', '12', NULL, 41.00, 196.00, 215.00, NULL, 16.00, '14.00', NULL, '1988-03-04', '993802939480', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'KG', NULL, 'USD', 'Stiedemann-Roob', NULL, NULL, NULL, 'dwpLs38e', 1, 'Consumables', 2, 'Rerum sit vel ipsam vel.', 1, 1, 1, NULL, '2017-12-02 07:54:55', '2017-12-02 07:57:21'),
(75, 'Flip chart', 'Store', 'qHKB1HV9RHMJHO', '59', NULL, 45.00, 1304.00, 312.00, NULL, 16.00, '12.00', NULL, '2003-12-23', '333882931835', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'KG', NULL, 'USD', 'Hudson-Satterfield', NULL, NULL, NULL, 'bDkvtgma', 1, 'Vegetables', 5, 'Nihil quis autem adipisci ut.', 1, 1, 1, NULL, '2017-12-02 07:54:56', '2017-12-02 07:58:31'),
(76, 'White board markers', 'Store', '2KEOVR', '73', NULL, 47.00, 228.00, 242.00, NULL, 16.00, '15.00', NULL, '2004-12-10', '137158364996', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'KG', NULL, 'USD', 'Welch, Huel and Turner', NULL, NULL, NULL, 'e73GS8we', 1, 'Cool Stuff', 6, 'Eos eaque velit sunt et adipisci aspernatur iure. Qui dolore similique voluptatem cupiditate officiis commodi necessitatibus voluptatem.', 1, 1, 1, NULL, '2017-12-02 07:55:00', '2017-12-02 07:57:28'),
(77, 'Clip boards', 'Store', 'O67Z300F6UGYNSQ', '25', NULL, 49.00, 116.00, 129.00, NULL, 16.00, '6.00', NULL, '1983-04-09', '962161399273', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'KG', NULL, 'USD', 'Hoppe, Crooks and Abshire', NULL, NULL, NULL, 'b825UNre', 1, 'Stationery', 1, 'Enim modi voluptatem cum magnam sit.', 1, 1, 1, NULL, '2017-12-02 07:55:02', '2017-12-02 07:55:02'),
(78, 'Binding covers', 'Store', 'WZGAY', '46', NULL, 44.00, 1449.00, 149.00, NULL, 16.00, '7.00', NULL, '2005-02-11', '476892883159', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'KG', NULL, 'USD', 'Kovacek-Marquardt', NULL, NULL, NULL, 'bW64IYja', 1, 'Stationery', 1, 'Autem quisquam rem id aut. Non vitae doloremque ex provident.', 1, 1, 1, NULL, '2017-12-02 07:55:06', '2017-12-02 07:57:31'),
(79, 'Spiral Binders', 'Store', 'Y_OYJQ', '42', NULL, 39.00, 855.50, 184.00, NULL, 16.00, '4.00', NULL, '1992-12-18', '160770472961', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'KG', NULL, 'USD', 'Turner-Lakin', NULL, NULL, NULL, 'en5wT60d', 1, 'Electronics', 3, 'Magni dolore quod eligendi dolores necessitatibus iste recusandae voluptatem. Rerum aliquam perferendis laboriosam rerum asperiores qui.', 1, 1, 1, NULL, '2017-12-02 07:55:09', '2017-12-02 07:58:20'),
(80, 'Company Letter Heads', 'Store', 'ATUUCXX', '89', NULL, 45.00, 258.00, 265.00, NULL, 16.00, '10.00', NULL, '1999-05-28', '542983396676', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'KG', NULL, 'USD', 'Lebsack and Sons', NULL, NULL, NULL, 'bDkmIJ1a', 1, 'Consumables', 2, 'Hic ut quasi doloremque unde.', 1, 1, 1, NULL, '2017-12-02 07:55:14', '2017-12-02 07:56:47'),
(81, 'Sign here stickers', 'Store', 'ICUCSF', '35', NULL, 49.00, 194.00, 213.00, NULL, 16.00, '7.00', NULL, '1984-04-17', '592228632069', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'KG', NULL, 'USD', 'Swaniawski-Altenwerth', NULL, NULL, NULL, 'b4x1Srpb', 0, 'Electronics', 3, 'Itaque cupiditate nihil nisi praesentium omnis est. Rerum nesciunt qui aut nemo sed.', 1, 1, 1, NULL, '2017-12-02 07:55:15', '2017-12-02 07:55:15'),
(82, 'Adhesives', 'Store', '4-GbZ0WRJ', '69', NULL, 41.00, 146.00, 160.00, NULL, 16.00, '1.00', NULL, '1980-10-26', '814043234540', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'KG', NULL, 'USD', 'Auer, Orn and Christiansen', NULL, NULL, NULL, 'e9rJTkRa', 1, 'Vegetables', 5, 'Qui exercitationem beatae rerum distinctio fuga. Consequatur aspernatur quos in fugit aut accusantium.', 1, 1, 1, NULL, '2017-12-02 07:55:15', '2017-12-02 07:58:26'),
(83, 'Clear sellotape', 'Store', 'C9PSV-CI', '100', NULL, 49.00, 938.00, 305.00, NULL, 16.00, '7.00', NULL, '1977-02-01', '132219878122', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'KG', NULL, 'USD', 'Pacocha-Mayert', NULL, NULL, NULL, 'en5LhlWd', 0, 'Consumables', 2, 'Excepturi aut expedita voluptate.', 1, 1, 1, NULL, '2017-12-02 07:55:17', '2017-12-02 07:56:34'),
(84, 'Reflective Jackets', 'Store', 'D`AJBRWU', '20', NULL, 49.00, 268.00, 273.00, NULL, 16.00, '14.00', NULL, '1996-04-26', '506709640566', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'KG', NULL, 'USD', 'Connelly Inc', NULL, NULL, NULL, 'en5Bi7qE', 0, 'Stationery', 1, 'Qui perferendis magnam magnam nulla laborum. Sequi qui et itaque esse tempora est.', 1, 1, 1, NULL, '2017-12-02 07:55:17', '2017-12-02 07:55:17'),
(85, 'ETR Rolls', 'Store', 'KHIRFWVAAQA', '97', NULL, 49.00, 969.00, 130.00, NULL, 16.00, '9.00', NULL, '2016-08-22', '257008734011', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'KG', NULL, 'USD', 'Jast Group', NULL, NULL, NULL, 'epYGfrqa', 0, 'Electronics', 3, 'Corporis qui occaecati aut odio cum expedita.', 1, 1, 1, NULL, '2017-12-02 07:55:18', '2017-12-02 07:56:15'),
(86, 'Complimentaries', 'Store', 'ASKIGGJ', '38', NULL, 31.00, 679.00, 314.00, NULL, 16.00, '9.00', NULL, '2008-05-25', '990015244943', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'KG', NULL, 'USD', 'Von, Schroeder and Frami', NULL, NULL, NULL, 'av2XFwla', 1, 'Vegetables', 5, 'Quam minus est dolor repellat. Provident cumque facere in quo dolore non.', 1, 1, 1, NULL, '2017-12-02 07:55:18', '2017-12-02 07:58:32'),
(87, 'Security Stickers', 'Store', '_3NGRZHHC', '28', NULL, 40.00, 835.50, 274.00, NULL, 16.00, '8.00', NULL, '1972-01-06', '894534349472', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'KG', NULL, 'USD', 'Hettinger, Gottlieb and McLaughlin', NULL, NULL, NULL, 'e31BI60b', 1, 'Consumables', 2, 'Vitae quo maxime eius.', 1, 1, 1, NULL, '2017-12-02 07:55:23', '2017-12-02 07:58:10'),
(88, 'Paper Tray', 'Store', 'ITZMWGYPRNP', '64', NULL, 37.00, 239.00, 257.00, NULL, 16.00, '12.00', NULL, '2004-08-14', '154088261737', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'KG', NULL, 'USD', 'Jerde Ltd', NULL, NULL, NULL, 'bWnOsYEa', 1, 'Cool Stuff', 6, 'Est dolor earum et dolores.', 1, 1, 1, NULL, '2017-12-02 07:55:23', '2017-12-02 07:58:29'),
(89, 'A5 Laminating Pouch', 'Store', 'J3-Z0TVO', '90', NULL, 49.00, 155.00, 163.00, NULL, 16.00, '7.00', NULL, '1974-06-09', '982368821339', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'KG', NULL, 'USD', 'Boyer, Blick and Bosco', NULL, NULL, NULL, 'dwjptX3b', 0, 'Consumables', 2, 'Enim quae quia sint vitae nihil. Eos officiis nihil tenetur et nobis dolorum.', 1, 1, 1, NULL, '2017-12-02 07:55:25', '2017-12-02 07:55:25'),
(90, 'A4 Laminating pouch', 'Store', 'WIZOY', '15', NULL, 37.00, 180.00, 196.00, NULL, 16.00, '6.00', NULL, '1986-10-25', '443953558288', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'KG', NULL, 'USD', 'Murray, Lang and Marvin', NULL, NULL, NULL, 'dy88u0Lb', 1, 'Vegetables', 5, 'Quia deserunt perferendis ut voluptatem. Voluptatem qui pariatur mollitia accusantium similique vel.', 1, 1, 1, NULL, '2017-12-02 07:55:26', '2017-12-02 07:58:29'),
(91, 'A3 Laminating Pouch', 'Store', 'H3JKHH', '64', NULL, 49.00, 359.00, 128.00, NULL, 16.00, '15.00', NULL, '2013-02-09', '772936454577', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'KG', NULL, 'USD', 'Hessel-Miller', NULL, NULL, NULL, 'dJZqfo4d', 0, 'Foods', 4, 'Amet adipisci dolor eum quis ab rerum.', 1, 1, 1, NULL, '2017-12-02 07:55:27', '2017-12-02 07:56:22'),
(92, 'GIANT Stapler', 'Store', 'OMPS7EQ9CPB', '33', NULL, 41.00, 223.00, 237.00, NULL, 16.00, '13.00', NULL, '1985-03-11', '667130231102', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'KG', NULL, 'USD', 'Waelchi, Schulist and Halvorson', NULL, NULL, NULL, 'dGZvhGYb', 1, 'Cool Stuff', 6, 'Earum incidunt qui perspiciatis animi reprehenderit praesentium.', 1, 1, 1, NULL, '2017-12-02 07:55:28', '2017-12-02 07:58:11'),
(93, 'GIANT Paper Punch', 'Store', 'KH79KR', '89', NULL, 49.00, 224.00, 233.00, NULL, 16.00, '14.00', NULL, '2012-02-24', '824789802682', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'KG', NULL, 'USD', 'McKenzie LLC', NULL, NULL, NULL, 'dP1jhKrv', 0, 'Electronics', 3, 'Praesentium libero eveniet repellat corporis beatae in aut. Eligendi quidem maxime dolor eaque doloremque.', 1, 1, 1, NULL, '2017-12-02 07:55:31', '2017-12-02 07:55:31'),
(94, 'Scissors', 'Store', 'Q5PZ', '25', NULL, 49.00, 514.00, 135.00, NULL, 16.00, '1.00', NULL, '1991-10-30', '619937486667', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'KG', NULL, 'USD', 'Lind and Sons', NULL, NULL, NULL, 'dGZMs2Vb', 0, 'Vegetables', 5, 'Rerum aliquid ut culpa ipsam. Repellat qui pariatur quos similique distinctio fugit.', 1, 1, 1, NULL, '2017-12-02 07:55:31', '2017-12-02 07:56:11'),
(95, 'Pen Holders', 'Store', 'LGNJEE', '46', NULL, 41.00, 68.50, 164.00, NULL, 16.00, '2.00', NULL, '1985-06-21', '972883254293', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'KG', NULL, 'USD', 'Mante, Treutel and Donnelly', NULL, NULL, NULL, 'eElxS1jd', 1, 'Electronics', 3, 'Nesciunt voluptatem rem dignissimos.', 1, 1, 1, NULL, '2017-12-02 07:55:32', '2017-12-02 07:57:07'),
(96, 'A5 Hard Cover Exercise Book', 'Store', 'TSTZI0WYBJNM', '64', NULL, 49.00, 293.00, 313.00, NULL, 16.00, '10.00', NULL, '2010-10-19', '572918503008', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'KG', NULL, 'USD', 'Bosco, Hagenes and Block', NULL, NULL, NULL, 'dBgnTxKe', 0, 'Foods', 4, 'Ipsum sit est nesciunt placeat qui optio.', 1, 1, 1, NULL, '2017-12-02 07:55:33', '2017-12-02 07:56:24'),
(97, 'Multi punch pockets', 'Store', 'N%BF02RVVUNXDPYBV', '79', NULL, 49.00, 1701.00, 237.00, NULL, 16.00, '10.00', NULL, '1984-12-22', '217771276163', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'KG', NULL, 'USD', 'Kihn, Douglas and Ebert', NULL, NULL, NULL, 'e1jYUJ4a', 0, 'Vegetables', 5, 'Enim quo neque veritatis quia voluptatibus accusantium. Expedita velit iure esse quidem.', 1, 1, 1, NULL, '2017-12-02 07:55:33', '2017-12-02 07:56:24'),
(98, 'File Dividers', 'Store', 'KIVE20I5QYLD1NJFFV', '7', NULL, 37.00, 210.00, 224.00, NULL, 16.00, '9.00', NULL, '1998-09-13', '505760092321', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'KG', NULL, 'USD', 'Strosin, Cormier and Pfannerstill', NULL, NULL, NULL, 'bDRwhZOe', 1, 'Stationery', 1, 'Eaque qui animi exercitationem et dolorem. Repudiandae dolores voluptatem quasi commodi.', 1, 1, 1, NULL, '2017-12-02 07:55:34', '2017-12-02 07:58:16'),
(99, 'Ledger book A4 4Q', 'Store', 'E2I4F34WNLQ', '27', NULL, 49.00, 937.00, 206.00, NULL, 16.00, '9.00', NULL, '1973-01-20', '876818078711', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'KG', NULL, 'USD', 'Jerde, Lemke and Daugherty', NULL, NULL, NULL, 'dJZ7HpVd', 0, 'Electronics', 3, 'Cupiditate possimus suscipit nam non.', 1, 1, 1, NULL, '2017-12-02 07:55:35', '2017-12-02 07:56:31'),
(100, 'Ledger book A4 2Q', 'Store', '%KLW3T9HEXATOYXT', '12', NULL, 41.00, 1513.00, 155.00, NULL, 16.00, '1.00', NULL, '1979-08-04', '252162179173', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'KG', NULL, 'USD', 'Krajcik, Bogisich and Dickens', NULL, NULL, NULL, 'eZ4puj9b', 1, 'Stationery', 1, 'Incidunt quo expedita repellat totam qui.', 1, 1, 1, NULL, '2017-12-02 07:55:35', '2017-12-02 07:58:02'),
(101, 'Ledger book A4 1Q', 'Store', '%1NJULN', '93', NULL, 38.00, 208.00, 214.00, NULL, 16.00, '1.00', NULL, '2012-06-23', '562800565641', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'KG', NULL, 'USD', 'Klocko, Pouros and Stoltenberg', NULL, NULL, NULL, 'dNxXi8Oa', 1, 'Stationery', 1, 'Consectetur ullam voluptatibus voluptas non.', 1, 1, 1, NULL, '2017-12-02 07:55:37', '2017-12-02 07:58:03'),
(102, 'CE 410A', 'Store', '1H1XK', '66', NULL, 41.00, 1426.00, 286.00, NULL, 16.00, '7.00', NULL, '1987-04-23', '593050199133', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'KG', NULL, 'USD', 'Lakin-Conroy', NULL, NULL, NULL, 'dwj7sV0b', 1, 'Consumables', 2, 'Molestias maiores ea sint enim sit. Beatae aut esse sed et molestiae iusto consequatur.', 1, 1, 1, NULL, '2017-12-02 07:55:41', '2017-12-02 07:58:05'),
(103, 'CE411A', 'Store', 'G5QIB', '95', NULL, 37.00, 1025.00, 264.00, NULL, 16.00, '8.00', NULL, '1970-10-30', '676674717263', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'KG', NULL, 'USD', 'Bins-Lebsack', NULL, NULL, NULL, 'eX6VCMkb', 1, 'Foods', 4, 'Amet culpa quos quos omnis ut. Modi natus nihil nemo sint.', 1, 1, 1, NULL, '2017-12-02 07:55:44', '2017-12-02 07:58:33'),
(104, 'CE412A', 'Store', '79WBTPW', '57', NULL, 49.00, 127.00, 141.00, NULL, 16.00, '11.00', NULL, '1983-02-23', '662722630776', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'KG', NULL, 'USD', 'Breitenberg Ltd', NULL, NULL, NULL, 'aAnXur5b', 0, 'Consumables', 2, 'Autem earum maiores placeat minima. Incidunt fuga perferendis ipsa veritatis non et.', 1, 1, 1, NULL, '2017-12-02 07:55:50', '2017-12-02 07:55:50'),
(105, 'CE413A', 'Store', 'N%6JGL6ZYV', '13', NULL, 43.00, 189.00, 197.00, NULL, 16.00, '12.00', NULL, '1972-09-01', '304544831251', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'KG', NULL, 'USD', 'Streich-Cruickshank', NULL, NULL, NULL, 'aO7GFwza', 1, 'Electronics', 3, 'Aspernatur quis earum ducimus facilis ut ratione.', 1, 1, 1, NULL, '2017-12-02 07:55:51', '2017-12-02 07:58:15'),
(106, 'Binder Clipps 51mm', 'Store', 'BV%7YO%A3-4BDB5BJJO', '14', NULL, 44.00, 1057.00, 294.00, NULL, 16.00, '3.00', NULL, '1970-11-03', '311630670151', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'KG', NULL, 'USD', 'Keeling-Abbott', NULL, NULL, NULL, 'aO7kHX1a', 1, 'Cool Stuff', 6, 'Odit accusamus iusto consequatur tenetur repudiandae reiciendis. Laborum omnis soluta quam sit.', 1, 1, 1, NULL, '2017-12-02 07:55:53', '2017-12-02 07:58:33'),
(107, 'Coloured paper clipps', 'Store', 'TNZWEK', '23', NULL, 49.00, 838.50, 175.00, NULL, 16.00, '4.00', NULL, '1974-04-16', '414204993523', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'KG', NULL, 'USD', 'Prosacco PLC', NULL, NULL, NULL, 'dwj8fyrb', 0, 'Consumables', 2, 'Consequatur illum sed voluptatem sit corporis labore libero in.', 1, 1, 1, NULL, '2017-12-02 07:55:54', '2017-12-02 07:56:35'),
(108, 'Embossed Sheets', 'Store', '9WGFYB', '49', NULL, 49.00, 201.00, 207.00, NULL, 16.00, '13.00', NULL, '1987-05-05', '982758208467', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'KG', NULL, 'USD', 'Beer Inc', NULL, NULL, NULL, 'er0vTRxb', 0, 'Vegetables', 5, 'Aspernatur aut quo qui voluptate dicta veritatis.', 1, 1, 1, NULL, '2017-12-02 07:55:54', '2017-12-02 07:55:54');

-- --------------------------------------------------------

--
-- Table structure for table `product_categories`
--

CREATE TABLE `product_categories` (
  `id` int(10) UNSIGNED NOT NULL,
  `categoryName` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `categoryDescription` text COLLATE utf8mb4_unicode_ci,
  `companyId` int(10) UNSIGNED NOT NULL,
  `updatedBy` int(10) UNSIGNED NOT NULL,
  `createdBy` int(10) UNSIGNED NOT NULL,
  `hash` text COLLATE utf8mb4_unicode_ci,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `product_categories`
--

INSERT INTO `product_categories` (`id`, `categoryName`, `categoryDescription`, `companyId`, `updatedBy`, `createdBy`, `hash`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 'Stationery', 'CoolDescription', 1, 0, 1, NULL, NULL, '2017-12-02 07:52:31', '2017-12-02 07:52:31'),
(2, 'Consumables', 'CoolDescription', 1, 0, 1, NULL, NULL, '2017-12-02 07:52:31', '2017-12-02 07:52:31'),
(3, 'Electronics', 'CoolDescription', 1, 0, 1, NULL, NULL, '2017-12-02 07:52:31', '2017-12-02 07:52:31'),
(4, 'Foods', 'CoolDescription', 1, 0, 1, NULL, NULL, '2017-12-02 07:52:31', '2017-12-02 07:52:31'),
(5, 'Vegetables', 'CoolDescription', 1, 0, 1, NULL, NULL, '2017-12-02 07:52:31', '2017-12-02 07:52:31'),
(6, 'Cool Stuff', 'CoolDescription', 1, 0, 1, NULL, NULL, '2017-12-02 07:52:31', '2017-12-02 07:52:31');

-- --------------------------------------------------------

--
-- Table structure for table `product_locations`
--

CREATE TABLE `product_locations` (
  `id` int(10) UNSIGNED NOT NULL,
  `productId` int(10) UNSIGNED NOT NULL,
  `productLocation` int(11) DEFAULT NULL,
  `productLocationName` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `binLocation` int(11) DEFAULT NULL,
  `binLocationName` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `productBarcode` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `productCurrency` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `unitCost` double(15,2) DEFAULT NULL,
  `sellingPrice` double(15,2) DEFAULT NULL,
  `amount` decimal(8,2) DEFAULT NULL,
  `onHold` tinyint(1) NOT NULL DEFAULT '0',
  `onHoldBy` text COLLATE utf8mb4_unicode_ci,
  `hash` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `product_locations`
--

INSERT INTO `product_locations` (`id`, `productId`, `productLocation`, `productLocationName`, `binLocation`, `binLocationName`, `productBarcode`, `productCurrency`, `unitCost`, `sellingPrice`, `amount`, `onHold`, `onHoldBy`, `hash`, `created_at`, `updated_at`) VALUES
(1, 3, 3, 'New', 44, 'BN-005', '598067935088', NULL, 13161.00, 13977.00, '-3.00', 0, NULL, 'nZ8mRkGuApyNz', '2017-12-02 07:53:06', '2017-12-02 07:58:08'),
(2, 3, 3, 'New', 44, 'BN-005', '598067935088', NULL, 13161.00, 13977.00, '0.00', 0, NULL, 'nZ8mRkGuApyNz', '2017-12-02 07:53:06', '2017-12-02 07:58:02'),
(3, 3, 3, 'New', 44, 'BN-005', '598067935088', NULL, 13161.00, 13977.00, '1.00', 0, NULL, 'nZ8mRkGuApyNz', '2017-12-02 07:53:06', '2017-12-02 07:53:06'),
(4, 3, 3, 'New', 44, 'BN-005', '598067935088', NULL, 13161.00, 13977.00, '1.00', 0, NULL, 'nZ8mRkGuApyNz', '2017-12-02 07:53:06', '2017-12-02 07:53:06'),
(5, 3, 3, 'New', 44, 'BN-005', '598067935088', NULL, 13161.00, 13977.00, '1.00', 0, NULL, 'nZ8mRkGuApyNz', '2017-12-02 07:53:06', '2017-12-02 07:53:06'),
(6, 3, 3, 'New', 44, 'BN-005', '598067935088', NULL, 13161.00, 13977.00, '1.00', 0, NULL, 'nZ8mRkGuApyNz', '2017-12-02 07:53:06', '2017-12-02 07:53:06'),
(7, 3, 3, 'New', 44, 'BN-005', '598067935088', NULL, 13161.00, 13977.00, '1.00', 0, NULL, 'nZ8mRkGuApyNz', '2017-12-02 07:53:07', '2017-12-02 07:53:07'),
(8, 3, 3, 'New', 44, 'BN-005', '598067935088', NULL, 13161.00, 13977.00, '1.00', 0, NULL, 'nZ8mRkGuApyNz', '2017-12-02 07:53:07', '2017-12-02 07:53:07'),
(9, 4, 10, 'Lake', 194, 'BN-267', '841082057779', NULL, 15616.00, 15945.00, '-1.00', 1, 'avl5hppd', 'jZn12JYUONXn3', '2017-12-02 07:53:07', '2017-12-02 08:00:39'),
(10, 4, 10, 'Lake', 194, 'BN-267', '841082057779', NULL, 15616.00, 15945.00, '1.00', 0, NULL, 'jZn12JYUONXn3', '2017-12-02 07:53:07', '2017-12-02 07:53:07'),
(11, 4, 10, 'Lake', 194, 'BN-267', '841082057779', NULL, 15616.00, 15945.00, '1.00', 0, NULL, 'jZn12JYUONXn3', '2017-12-02 07:53:07', '2017-12-02 07:53:07'),
(12, 4, 10, 'Lake', 194, 'BN-267', '841082057779', NULL, 15616.00, 15945.00, '1.00', 0, NULL, 'jZn12JYUONXn3', '2017-12-02 07:53:07', '2017-12-02 07:53:07'),
(13, 4, 10, 'Lake', 194, 'BN-267', '841082057779', NULL, 15616.00, 15945.00, '1.00', 0, NULL, 'jZn12JYUONXn3', '2017-12-02 07:53:08', '2017-12-02 07:53:08'),
(14, 4, 10, 'Lake', 194, 'BN-267', '841082057779', NULL, 15616.00, 15945.00, '1.00', 0, NULL, 'jZn12JYUONXn3', '2017-12-02 07:53:08', '2017-12-02 07:53:08'),
(15, 4, 10, 'Lake', 194, 'BN-267', '841082057779', NULL, 15616.00, 15945.00, '1.00', 0, NULL, 'jZn12JYUONXn3', '2017-12-02 07:53:08', '2017-12-02 07:53:08'),
(16, 4, 10, 'Lake', 194, 'BN-267', '841082057779', NULL, 15616.00, 15945.00, '1.00', 0, NULL, 'jZn12JYUONXn3', '2017-12-02 07:53:08', '2017-12-02 07:53:08'),
(17, 5, 2, 'South', 32, 'BN-007', '623546358703', NULL, 6947.00, 7548.00, '-3.00', 1, 'e9rGfy7a', 'QnGl5vxFkoDJnP', '2017-12-02 07:53:08', '2017-12-02 08:00:17'),
(18, 5, 2, 'South', 32, 'BN-007', '623546358703', NULL, 6947.00, 7548.00, '0.00', 0, NULL, 'QnGl5vxFkoDJnP', '2017-12-02 07:53:08', '2017-12-02 07:56:49'),
(19, 5, 2, 'South', 32, 'BN-007', '623546358703', NULL, 6947.00, 7548.00, '1.00', 0, NULL, 'QnGl5vxFkoDJnP', '2017-12-02 07:53:08', '2017-12-02 07:53:08'),
(20, 5, 2, 'South', 32, 'BN-007', '623546358703', NULL, 6947.00, 7548.00, '1.00', 0, NULL, 'QnGl5vxFkoDJnP', '2017-12-02 07:53:08', '2017-12-02 07:53:08'),
(21, 5, 2, 'South', 32, 'BN-007', '623546358703', NULL, 6947.00, 7548.00, '1.00', 0, NULL, 'QnGl5vxFkoDJnP', '2017-12-02 07:53:08', '2017-12-02 07:53:08'),
(22, 5, 2, 'South', 32, 'BN-007', '623546358703', NULL, 6947.00, 7548.00, '1.00', 0, NULL, 'QnGl5vxFkoDJnP', '2017-12-02 07:53:09', '2017-12-02 07:53:09'),
(23, 5, 2, 'South', 32, 'BN-007', '623546358703', NULL, 6947.00, 7548.00, '1.00', 0, NULL, 'QnGl5vxFkoDJnP', '2017-12-02 07:53:09', '2017-12-02 07:53:09'),
(24, 5, 2, 'South', 32, 'BN-007', '623546358703', NULL, 6947.00, 7548.00, '1.00', 0, NULL, 'QnGl5vxFkoDJnP', '2017-12-02 07:53:09', '2017-12-02 07:53:09'),
(25, 7, 4, 'North', 64, 'BN-051', '531128161224', NULL, 14218.00, 14713.00, '-5.00', 0, NULL, 'wmG42oXfGzjrlg', '2017-12-02 07:53:10', '2017-12-02 07:58:12'),
(26, 7, 4, 'North', 64, 'BN-051', '531128161224', NULL, 14218.00, 14713.00, '0.00', 0, NULL, 'wmG42oXfGzjrlg', '2017-12-02 07:53:10', '2017-12-02 07:58:04'),
(27, 7, 4, 'North', 64, 'BN-051', '531128161224', NULL, 14218.00, 14713.00, '1.00', 0, NULL, 'wmG42oXfGzjrlg', '2017-12-02 07:53:10', '2017-12-02 07:53:10'),
(28, 7, 4, 'North', 64, 'BN-051', '531128161224', NULL, 14218.00, 14713.00, '1.00', 0, NULL, 'wmG42oXfGzjrlg', '2017-12-02 07:53:10', '2017-12-02 07:53:10'),
(29, 7, 4, 'North', 64, 'BN-051', '531128161224', NULL, 14218.00, 14713.00, '1.00', 0, NULL, 'wmG42oXfGzjrlg', '2017-12-02 07:53:10', '2017-12-02 07:53:10'),
(30, 7, 4, 'North', 64, 'BN-051', '531128161224', NULL, 14218.00, 14713.00, '1.00', 0, NULL, 'wmG42oXfGzjrlg', '2017-12-02 07:53:10', '2017-12-02 07:53:10'),
(31, 7, 4, 'North', 64, 'BN-051', '531128161224', NULL, 14218.00, 14713.00, '1.00', 0, NULL, 'wmG42oXfGzjrlg', '2017-12-02 07:53:10', '2017-12-02 07:53:10'),
(32, 7, 4, 'North', 64, 'BN-051', '531128161224', NULL, 14218.00, 14713.00, '1.00', 0, NULL, 'wmG42oXfGzjrlg', '2017-12-02 07:53:10', '2017-12-02 07:53:10'),
(33, 7, 4, 'North', 64, 'BN-051', '531128161224', NULL, 14218.00, 14713.00, '1.00', 0, NULL, 'wmG42oXfGzjrlg', '2017-12-02 07:53:10', '2017-12-02 07:53:10'),
(34, 7, 4, 'North', 68, 'BN-711', '136663871241', NULL, 6480.00, 7226.00, '1.00', 0, NULL, 'G6KqJn9h1L8N1R', '2017-12-02 07:53:10', '2017-12-02 07:53:10'),
(35, 7, 4, 'North', 68, 'BN-711', '136663871241', NULL, 6480.00, 7226.00, '1.00', 0, NULL, 'G6KqJn9h1L8N1R', '2017-12-02 07:53:10', '2017-12-02 07:53:10'),
(36, 7, 4, 'North', 68, 'BN-711', '136663871241', NULL, 6480.00, 7226.00, '1.00', 0, NULL, 'G6KqJn9h1L8N1R', '2017-12-02 07:53:10', '2017-12-02 07:53:10'),
(37, 7, 4, 'North', 68, 'BN-711', '136663871241', NULL, 6480.00, 7226.00, '1.00', 0, NULL, 'G6KqJn9h1L8N1R', '2017-12-02 07:53:10', '2017-12-02 07:53:10'),
(38, 7, 4, 'North', 68, 'BN-711', '136663871241', NULL, 6480.00, 7226.00, '1.00', 0, NULL, 'G6KqJn9h1L8N1R', '2017-12-02 07:53:10', '2017-12-02 07:53:10'),
(39, 7, 4, 'North', 68, 'BN-711', '136663871241', NULL, 6480.00, 7226.00, '1.00', 0, NULL, 'G6KqJn9h1L8N1R', '2017-12-02 07:53:10', '2017-12-02 07:53:10'),
(40, 7, 4, 'North', 68, 'BN-711', '136663871241', NULL, 6480.00, 7226.00, '1.00', 0, NULL, 'G6KqJn9h1L8N1R', '2017-12-02 07:53:10', '2017-12-02 07:53:10'),
(41, 7, 4, 'North', 68, 'BN-711', '136663871241', NULL, 6480.00, 7226.00, '1.00', 0, NULL, 'G6KqJn9h1L8N1R', '2017-12-02 07:53:11', '2017-12-02 07:53:11'),
(42, 7, 4, 'North', 68, 'BN-711', '136663871241', NULL, 6480.00, 7226.00, '1.00', 0, NULL, 'G6KqJn9h1L8N1R', '2017-12-02 07:53:11', '2017-12-02 07:53:11'),
(43, 7, 6, 'Port', 117, 'BN-298', '237777063949', NULL, 2498.00, 2733.00, '-1.00', 0, NULL, 'j20lmQmsJL2Kw', '2017-12-02 07:53:11', '2017-12-02 07:58:06'),
(44, 7, 6, 'Port', 117, 'BN-298', '237777063949', NULL, 2498.00, 2733.00, '1.00', 0, NULL, 'j20lmQmsJL2Kw', '2017-12-02 07:53:11', '2017-12-02 07:53:11'),
(45, 7, 6, 'Port', 117, 'BN-298', '237777063949', NULL, 2498.00, 2733.00, '1.00', 0, NULL, 'j20lmQmsJL2Kw', '2017-12-02 07:53:11', '2017-12-02 07:53:11'),
(46, 7, 6, 'Port', 117, 'BN-298', '237777063949', NULL, 2498.00, 2733.00, '1.00', 0, NULL, 'j20lmQmsJL2Kw', '2017-12-02 07:53:11', '2017-12-02 07:53:11'),
(47, 7, 6, 'Port', 117, 'BN-298', '237777063949', NULL, 2498.00, 2733.00, '1.00', 0, NULL, 'j20lmQmsJL2Kw', '2017-12-02 07:53:11', '2017-12-02 07:53:11'),
(48, 7, 6, 'Port', 117, 'BN-298', '237777063949', NULL, 2498.00, 2733.00, '1.00', 0, NULL, 'j20lmQmsJL2Kw', '2017-12-02 07:53:11', '2017-12-02 07:53:11'),
(49, 7, 6, 'Port', 117, 'BN-298', '237777063949', NULL, 2498.00, 2733.00, '1.00', 0, NULL, 'j20lmQmsJL2Kw', '2017-12-02 07:53:11', '2017-12-02 07:53:11'),
(50, 7, 6, 'Port', 117, 'BN-298', '237777063949', NULL, 2498.00, 2733.00, '1.00', 0, NULL, 'j20lmQmsJL2Kw', '2017-12-02 07:53:11', '2017-12-02 07:53:11'),
(51, 7, 6, 'Port', 117, 'BN-298', '237777063949', NULL, 2498.00, 2733.00, '1.00', 0, NULL, 'j20lmQmsJL2Kw', '2017-12-02 07:53:11', '2017-12-02 07:53:11'),
(52, 7, 7, 'North', 135, 'BN-413', '901099873875', NULL, 16213.00, 17081.00, '-3.00', 1, 'dG66iRnb', 'yow3XQqtxPz4J', '2017-12-02 07:53:11', '2017-12-02 08:00:14'),
(53, 7, 7, 'North', 135, 'BN-413', '901099873875', NULL, 16213.00, 17081.00, '0.00', 0, NULL, 'yow3XQqtxPz4J', '2017-12-02 07:53:11', '2017-12-02 07:57:48'),
(54, 7, 7, 'North', 135, 'BN-413', '901099873875', NULL, 16213.00, 17081.00, '0.00', 0, NULL, 'yow3XQqtxPz4J', '2017-12-02 07:53:11', '2017-12-02 07:57:49'),
(55, 7, 7, 'North', 135, 'BN-413', '901099873875', NULL, 16213.00, 17081.00, '1.00', 0, NULL, 'yow3XQqtxPz4J', '2017-12-02 07:53:11', '2017-12-02 07:53:11'),
(56, 7, 7, 'North', 135, 'BN-413', '901099873875', NULL, 16213.00, 17081.00, '1.00', 0, NULL, 'yow3XQqtxPz4J', '2017-12-02 07:53:11', '2017-12-02 07:53:11'),
(57, 7, 7, 'North', 135, 'BN-413', '901099873875', NULL, 16213.00, 17081.00, '1.00', 0, NULL, 'yow3XQqtxPz4J', '2017-12-02 07:53:11', '2017-12-02 07:53:11'),
(58, 7, 7, 'North', 135, 'BN-413', '901099873875', NULL, 16213.00, 17081.00, '1.00', 0, NULL, 'yow3XQqtxPz4J', '2017-12-02 07:53:12', '2017-12-02 07:53:12'),
(59, 7, 7, 'North', 135, 'BN-413', '901099873875', NULL, 16213.00, 17081.00, '1.00', 0, NULL, 'yow3XQqtxPz4J', '2017-12-02 07:53:12', '2017-12-02 07:53:12'),
(60, 7, 7, 'North', 135, 'BN-413', '901099873875', NULL, 16213.00, 17081.00, '1.00', 0, NULL, 'yow3XQqtxPz4J', '2017-12-02 07:53:12', '2017-12-02 07:53:12'),
(61, 8, 10, 'Lake', 192, 'BN-754', '285682862287', NULL, 11406.00, 11692.00, '1.00', 0, NULL, '4xO3O4nS0AD02', '2017-12-02 07:53:12', '2017-12-02 07:53:12'),
(62, 8, 10, 'Lake', 192, 'BN-754', '285682862287', NULL, 11406.00, 11692.00, '1.00', 0, NULL, '4xO3O4nS0AD02', '2017-12-02 07:53:12', '2017-12-02 07:53:12'),
(63, 8, 10, 'Lake', 192, 'BN-754', '285682862287', NULL, 11406.00, 11692.00, '1.00', 0, NULL, '4xO3O4nS0AD02', '2017-12-02 07:53:12', '2017-12-02 07:53:12'),
(64, 8, 10, 'Lake', 192, 'BN-754', '285682862287', NULL, 11406.00, 11692.00, '1.00', 0, NULL, '4xO3O4nS0AD02', '2017-12-02 07:53:12', '2017-12-02 07:53:12'),
(65, 8, 10, 'Lake', 192, 'BN-754', '285682862287', NULL, 11406.00, 11692.00, '1.00', 0, NULL, '4xO3O4nS0AD02', '2017-12-02 07:53:12', '2017-12-02 07:53:12'),
(66, 8, 10, 'Lake', 192, 'BN-754', '285682862287', NULL, 11406.00, 11692.00, '1.00', 0, NULL, '4xO3O4nS0AD02', '2017-12-02 07:53:12', '2017-12-02 07:53:12'),
(67, 8, 10, 'Lake', 192, 'BN-754', '285682862287', NULL, 11406.00, 11692.00, '1.00', 0, NULL, '4xO3O4nS0AD02', '2017-12-02 07:53:12', '2017-12-02 07:53:12'),
(68, 8, 10, 'Lake', 192, 'BN-754', '285682862287', NULL, 11406.00, 11692.00, '1.00', 0, NULL, '4xO3O4nS0AD02', '2017-12-02 07:53:13', '2017-12-02 07:53:13'),
(69, 8, 10, 'Lake', 192, 'BN-754', '285682862287', NULL, 11406.00, 11692.00, '1.00', 0, NULL, '4xO3O4nS0AD02', '2017-12-02 07:53:13', '2017-12-02 07:53:13'),
(70, 8, 6, 'Port', 108, 'BN-036', '197987168158', NULL, 18906.00, 19237.00, '-1.00', 0, NULL, 'k8VjVwgUzgOxg', '2017-12-02 07:53:13', '2017-12-02 07:57:56'),
(71, 8, 6, 'Port', 108, 'BN-036', '197987168158', NULL, 18906.00, 19237.00, '0.00', 0, NULL, 'k8VjVwgUzgOxg', '2017-12-02 07:53:13', '2017-12-02 07:57:56'),
(72, 8, 6, 'Port', 108, 'BN-036', '197987168158', NULL, 18906.00, 19237.00, '1.00', 0, NULL, 'k8VjVwgUzgOxg', '2017-12-02 07:53:13', '2017-12-02 07:53:13'),
(73, 8, 6, 'Port', 108, 'BN-036', '197987168158', NULL, 18906.00, 19237.00, '1.00', 0, NULL, 'k8VjVwgUzgOxg', '2017-12-02 07:53:13', '2017-12-02 07:53:13'),
(74, 8, 6, 'Port', 108, 'BN-036', '197987168158', NULL, 18906.00, 19237.00, '1.00', 0, NULL, 'k8VjVwgUzgOxg', '2017-12-02 07:53:13', '2017-12-02 07:53:13'),
(75, 8, 6, 'Port', 108, 'BN-036', '197987168158', NULL, 18906.00, 19237.00, '1.00', 0, NULL, 'k8VjVwgUzgOxg', '2017-12-02 07:53:13', '2017-12-02 07:53:13'),
(76, 8, 6, 'Port', 108, 'BN-036', '197987168158', NULL, 18906.00, 19237.00, '1.00', 0, NULL, 'k8VjVwgUzgOxg', '2017-12-02 07:53:13', '2017-12-02 07:53:13'),
(77, 8, 6, 'Port', 108, 'BN-036', '197987168158', NULL, 18906.00, 19237.00, '1.00', 0, NULL, 'k8VjVwgUzgOxg', '2017-12-02 07:53:13', '2017-12-02 07:53:13'),
(78, 8, 6, 'Port', 108, 'BN-036', '197987168158', NULL, 18906.00, 19237.00, '1.00', 0, NULL, 'k8VjVwgUzgOxg', '2017-12-02 07:53:13', '2017-12-02 07:53:13'),
(79, 8, 6, 'Port', 108, 'BN-036', '197987168158', NULL, 18906.00, 19237.00, '1.00', 0, NULL, 'k8VjVwgUzgOxg', '2017-12-02 07:53:13', '2017-12-02 07:53:13'),
(80, 8, 7, 'North', 128, 'BN-979', '794097237271', NULL, 2913.00, 3352.00, '1.00', 0, NULL, 'O75MqBRTQrR6Q', '2017-12-02 07:53:13', '2017-12-02 07:53:13'),
(81, 8, 7, 'North', 128, 'BN-979', '794097237271', NULL, 2913.00, 3352.00, '1.00', 0, NULL, 'O75MqBRTQrR6Q', '2017-12-02 07:53:13', '2017-12-02 07:53:13'),
(82, 8, 7, 'North', 128, 'BN-979', '794097237271', NULL, 2913.00, 3352.00, '1.00', 0, NULL, 'O75MqBRTQrR6Q', '2017-12-02 07:53:13', '2017-12-02 07:53:13'),
(83, 8, 7, 'North', 128, 'BN-979', '794097237271', NULL, 2913.00, 3352.00, '1.00', 0, NULL, 'O75MqBRTQrR6Q', '2017-12-02 07:53:14', '2017-12-02 07:53:14'),
(84, 8, 7, 'North', 128, 'BN-979', '794097237271', NULL, 2913.00, 3352.00, '1.00', 0, NULL, 'O75MqBRTQrR6Q', '2017-12-02 07:53:14', '2017-12-02 07:53:14'),
(85, 8, 7, 'North', 128, 'BN-979', '794097237271', NULL, 2913.00, 3352.00, '1.00', 0, NULL, 'O75MqBRTQrR6Q', '2017-12-02 07:53:14', '2017-12-02 07:53:14'),
(86, 8, 7, 'North', 128, 'BN-979', '794097237271', NULL, 2913.00, 3352.00, '1.00', 0, NULL, 'O75MqBRTQrR6Q', '2017-12-02 07:53:14', '2017-12-02 07:53:14'),
(87, 8, 7, 'North', 128, 'BN-979', '794097237271', NULL, 2913.00, 3352.00, '1.00', 0, NULL, 'O75MqBRTQrR6Q', '2017-12-02 07:53:14', '2017-12-02 07:53:14'),
(88, 8, 7, 'North', 128, 'BN-979', '794097237271', NULL, 2913.00, 3352.00, '1.00', 0, NULL, 'O75MqBRTQrR6Q', '2017-12-02 07:53:14', '2017-12-02 07:53:14'),
(89, 8, 3, 'New', 46, 'BN-136', '619845213195', NULL, 12708.00, 12914.00, '1.00', 0, NULL, 'W7gLR01F56Gy5L', '2017-12-02 07:53:14', '2017-12-02 07:53:14'),
(90, 8, 3, 'New', 46, 'BN-136', '619845213195', NULL, 12708.00, 12914.00, '1.00', 0, NULL, 'W7gLR01F56Gy5L', '2017-12-02 07:53:14', '2017-12-02 07:53:14'),
(91, 8, 3, 'New', 46, 'BN-136', '619845213195', NULL, 12708.00, 12914.00, '1.00', 0, NULL, 'W7gLR01F56Gy5L', '2017-12-02 07:53:14', '2017-12-02 07:53:14'),
(92, 8, 3, 'New', 46, 'BN-136', '619845213195', NULL, 12708.00, 12914.00, '1.00', 0, NULL, 'W7gLR01F56Gy5L', '2017-12-02 07:53:14', '2017-12-02 07:53:14'),
(93, 8, 3, 'New', 46, 'BN-136', '619845213195', NULL, 12708.00, 12914.00, '1.00', 0, NULL, 'W7gLR01F56Gy5L', '2017-12-02 07:53:14', '2017-12-02 07:53:14'),
(94, 8, 3, 'New', 46, 'BN-136', '619845213195', NULL, 12708.00, 12914.00, '1.00', 0, NULL, 'W7gLR01F56Gy5L', '2017-12-02 07:53:14', '2017-12-02 07:53:14'),
(95, 8, 3, 'New', 46, 'BN-136', '619845213195', NULL, 12708.00, 12914.00, '1.00', 0, NULL, 'W7gLR01F56Gy5L', '2017-12-02 07:53:14', '2017-12-02 07:53:14'),
(96, 8, 3, 'New', 46, 'BN-136', '619845213195', NULL, 12708.00, 12914.00, '1.00', 0, NULL, 'W7gLR01F56Gy5L', '2017-12-02 07:53:14', '2017-12-02 07:53:14'),
(97, 8, 3, 'New', 46, 'BN-136', '619845213195', NULL, 12708.00, 12914.00, '1.00', 0, NULL, 'W7gLR01F56Gy5L', '2017-12-02 07:53:14', '2017-12-02 07:53:14'),
(98, 10, 8, 'East', 146, 'BN-899', '384609430742', NULL, 16323.00, 16700.00, '1.00', 0, NULL, '8qXG51Zsy0KW0', '2017-12-02 07:53:15', '2017-12-02 07:53:15'),
(99, 10, 8, 'East', 146, 'BN-899', '384609430742', NULL, 16323.00, 16700.00, '1.00', 0, NULL, '8qXG51Zsy0KW0', '2017-12-02 07:53:15', '2017-12-02 07:53:15'),
(100, 10, 8, 'East', 146, 'BN-899', '384609430742', NULL, 16323.00, 16700.00, '1.00', 0, NULL, '8qXG51Zsy0KW0', '2017-12-02 07:53:16', '2017-12-02 07:53:16'),
(101, 10, 8, 'East', 146, 'BN-899', '384609430742', NULL, 16323.00, 16700.00, '1.00', 0, NULL, '8qXG51Zsy0KW0', '2017-12-02 07:53:16', '2017-12-02 07:53:16'),
(102, 10, 8, 'East', 146, 'BN-899', '384609430742', NULL, 16323.00, 16700.00, '1.00', 0, NULL, '8qXG51Zsy0KW0', '2017-12-02 07:53:16', '2017-12-02 07:53:16'),
(103, 10, 8, 'East', 146, 'BN-899', '384609430742', NULL, 16323.00, 16700.00, '1.00', 0, NULL, '8qXG51Zsy0KW0', '2017-12-02 07:53:16', '2017-12-02 07:53:16'),
(104, 10, 8, 'East', 146, 'BN-899', '384609430742', NULL, 16323.00, 16700.00, '1.00', 0, NULL, '8qXG51Zsy0KW0', '2017-12-02 07:53:16', '2017-12-02 07:53:16'),
(105, 10, 8, 'East', 146, 'BN-899', '384609430742', NULL, 16323.00, 16700.00, '1.00', 0, NULL, '8qXG51Zsy0KW0', '2017-12-02 07:53:16', '2017-12-02 07:53:16'),
(106, 10, 8, 'East', 146, 'BN-899', '384609430742', NULL, 16323.00, 16700.00, '1.00', 0, NULL, '8qXG51Zsy0KW0', '2017-12-02 07:53:16', '2017-12-02 07:53:16'),
(107, 10, 4, 'North', 70, 'BN-906', '921485275069', NULL, 6205.00, 6346.00, '-3.00', 0, NULL, 'VmpBkq8iwVKVq', '2017-12-02 07:53:16', '2017-12-02 07:57:08'),
(108, 10, 4, 'North', 70, 'BN-906', '921485275069', NULL, 6205.00, 6346.00, '-1.00', 0, NULL, 'VmpBkq8iwVKVq', '2017-12-02 07:53:16', '2017-12-02 07:57:08'),
(109, 10, 4, 'North', 70, 'BN-906', '921485275069', NULL, 6205.00, 6346.00, '0.00', 0, NULL, 'VmpBkq8iwVKVq', '2017-12-02 07:53:16', '2017-12-02 07:57:08'),
(110, 10, 4, 'North', 70, 'BN-906', '921485275069', NULL, 6205.00, 6346.00, '1.00', 0, NULL, 'VmpBkq8iwVKVq', '2017-12-02 07:53:16', '2017-12-02 07:53:16'),
(111, 10, 4, 'North', 70, 'BN-906', '921485275069', NULL, 6205.00, 6346.00, '1.00', 0, NULL, 'VmpBkq8iwVKVq', '2017-12-02 07:53:16', '2017-12-02 07:53:16'),
(112, 10, 4, 'North', 70, 'BN-906', '921485275069', NULL, 6205.00, 6346.00, '1.00', 0, NULL, 'VmpBkq8iwVKVq', '2017-12-02 07:53:16', '2017-12-02 07:53:16'),
(113, 10, 4, 'North', 70, 'BN-906', '921485275069', NULL, 6205.00, 6346.00, '1.00', 0, NULL, 'VmpBkq8iwVKVq', '2017-12-02 07:53:16', '2017-12-02 07:53:16'),
(114, 10, 4, 'North', 70, 'BN-906', '921485275069', NULL, 6205.00, 6346.00, '1.00', 0, NULL, 'VmpBkq8iwVKVq', '2017-12-02 07:53:16', '2017-12-02 07:53:16'),
(115, 10, 4, 'North', 70, 'BN-906', '921485275069', NULL, 6205.00, 6346.00, '1.00', 0, NULL, 'VmpBkq8iwVKVq', '2017-12-02 07:53:16', '2017-12-02 07:53:16'),
(116, 10, 4, 'North', 70, 'BN-906', '921485275069', NULL, 6205.00, 6346.00, '1.00', 0, NULL, 'VmpBkq8iwVKVq', '2017-12-02 07:53:16', '2017-12-02 07:53:16'),
(117, 10, 8, 'East', 144, 'BN-374', '271338537005', NULL, 10673.00, 11547.00, '1.00', 0, NULL, 'oYOxBZzUrrNGRj', '2017-12-02 07:53:17', '2017-12-02 07:53:17'),
(118, 10, 8, 'East', 144, 'BN-374', '271338537005', NULL, 10673.00, 11547.00, '1.00', 0, NULL, 'oYOxBZzUrrNGRj', '2017-12-02 07:53:17', '2017-12-02 07:53:17'),
(119, 10, 8, 'East', 144, 'BN-374', '271338537005', NULL, 10673.00, 11547.00, '1.00', 0, NULL, 'oYOxBZzUrrNGRj', '2017-12-02 07:53:17', '2017-12-02 07:53:17'),
(120, 10, 8, 'East', 144, 'BN-374', '271338537005', NULL, 10673.00, 11547.00, '1.00', 0, NULL, 'oYOxBZzUrrNGRj', '2017-12-02 07:53:17', '2017-12-02 07:53:17'),
(121, 10, 8, 'East', 144, 'BN-374', '271338537005', NULL, 10673.00, 11547.00, '1.00', 0, NULL, 'oYOxBZzUrrNGRj', '2017-12-02 07:53:17', '2017-12-02 07:53:17'),
(122, 10, 8, 'East', 144, 'BN-374', '271338537005', NULL, 10673.00, 11547.00, '1.00', 0, NULL, 'oYOxBZzUrrNGRj', '2017-12-02 07:53:17', '2017-12-02 07:53:17'),
(123, 10, 8, 'East', 144, 'BN-374', '271338537005', NULL, 10673.00, 11547.00, '1.00', 0, NULL, 'oYOxBZzUrrNGRj', '2017-12-02 07:53:17', '2017-12-02 07:53:17'),
(124, 10, 8, 'East', 144, 'BN-374', '271338537005', NULL, 10673.00, 11547.00, '1.00', 0, NULL, 'oYOxBZzUrrNGRj', '2017-12-02 07:53:17', '2017-12-02 07:53:17'),
(125, 10, 8, 'East', 144, 'BN-374', '271338537005', NULL, 10673.00, 11547.00, '1.00', 0, NULL, 'oYOxBZzUrrNGRj', '2017-12-02 07:53:17', '2017-12-02 07:53:17'),
(126, 10, 5, 'West', 98, 'BN-627', '626704236370', NULL, 6974.00, 7315.00, '1.00', 0, NULL, 'Yv62nXPHEZ6BJ', '2017-12-02 07:53:17', '2017-12-02 07:53:17'),
(127, 10, 5, 'West', 98, 'BN-627', '626704236370', NULL, 6974.00, 7315.00, '1.00', 0, NULL, 'Yv62nXPHEZ6BJ', '2017-12-02 07:53:17', '2017-12-02 07:53:17'),
(128, 10, 5, 'West', 98, 'BN-627', '626704236370', NULL, 6974.00, 7315.00, '1.00', 0, NULL, 'Yv62nXPHEZ6BJ', '2017-12-02 07:53:17', '2017-12-02 07:53:17'),
(129, 10, 5, 'West', 98, 'BN-627', '626704236370', NULL, 6974.00, 7315.00, '1.00', 0, NULL, 'Yv62nXPHEZ6BJ', '2017-12-02 07:53:17', '2017-12-02 07:53:17'),
(130, 10, 5, 'West', 98, 'BN-627', '626704236370', NULL, 6974.00, 7315.00, '1.00', 0, NULL, 'Yv62nXPHEZ6BJ', '2017-12-02 07:53:17', '2017-12-02 07:53:17'),
(131, 10, 5, 'West', 98, 'BN-627', '626704236370', NULL, 6974.00, 7315.00, '1.00', 0, NULL, 'Yv62nXPHEZ6BJ', '2017-12-02 07:53:17', '2017-12-02 07:53:17'),
(132, 10, 5, 'West', 98, 'BN-627', '626704236370', NULL, 6974.00, 7315.00, '1.00', 0, NULL, 'Yv62nXPHEZ6BJ', '2017-12-02 07:53:17', '2017-12-02 07:53:17'),
(133, 10, 5, 'West', 98, 'BN-627', '626704236370', NULL, 6974.00, 7315.00, '1.00', 0, NULL, 'Yv62nXPHEZ6BJ', '2017-12-02 07:53:17', '2017-12-02 07:53:17'),
(134, 10, 5, 'West', 98, 'BN-627', '626704236370', NULL, 6974.00, 7315.00, '1.00', 0, NULL, 'Yv62nXPHEZ6BJ', '2017-12-02 07:53:17', '2017-12-02 07:53:17'),
(135, 10, 5, 'West', 98, 'BN-627', '626704236370', NULL, 6974.00, 7315.00, '1.00', 0, NULL, 'Yv62nXPHEZ6BJ', '2017-12-02 07:53:17', '2017-12-02 07:53:17'),
(136, 12, 6, 'Port', 120, 'BN-947', '523259137667', NULL, 19211.00, 19675.00, '-3.00', 0, NULL, 'MwX0kRPt76MxM', '2017-12-02 07:53:18', '2017-12-02 07:57:55'),
(137, 12, 6, 'Port', 120, 'BN-947', '523259137667', NULL, 19211.00, 19675.00, '0.00', 0, NULL, 'MwX0kRPt76MxM', '2017-12-02 07:53:19', '2017-12-02 07:57:55'),
(138, 12, 6, 'Port', 120, 'BN-947', '523259137667', NULL, 19211.00, 19675.00, '0.00', 0, NULL, 'MwX0kRPt76MxM', '2017-12-02 07:53:19', '2017-12-02 07:57:55'),
(139, 12, 6, 'Port', 120, 'BN-947', '523259137667', NULL, 19211.00, 19675.00, '1.00', 0, NULL, 'MwX0kRPt76MxM', '2017-12-02 07:53:19', '2017-12-02 07:53:19'),
(140, 12, 6, 'Port', 120, 'BN-947', '523259137667', NULL, 19211.00, 19675.00, '1.00', 0, NULL, 'MwX0kRPt76MxM', '2017-12-02 07:53:19', '2017-12-02 07:53:19'),
(141, 12, 6, 'Port', 120, 'BN-947', '523259137667', NULL, 19211.00, 19675.00, '1.00', 0, NULL, 'MwX0kRPt76MxM', '2017-12-02 07:53:19', '2017-12-02 07:53:19'),
(142, 12, 6, 'Port', 120, 'BN-947', '523259137667', NULL, 19211.00, 19675.00, '1.00', 0, NULL, 'MwX0kRPt76MxM', '2017-12-02 07:53:19', '2017-12-02 07:53:19'),
(143, 12, 6, 'Port', 120, 'BN-947', '523259137667', NULL, 19211.00, 19675.00, '1.00', 0, NULL, 'MwX0kRPt76MxM', '2017-12-02 07:53:19', '2017-12-02 07:53:19'),
(144, 12, 6, 'Port', 120, 'BN-947', '523259137667', NULL, 19211.00, 19675.00, '1.00', 0, NULL, 'MwX0kRPt76MxM', '2017-12-02 07:53:19', '2017-12-02 07:53:19'),
(145, 12, 6, 'Port', 104, 'BN-396', '534613155722', NULL, 6359.00, 7094.00, '1.00', 0, NULL, '32Y64NJCPv7ZX', '2017-12-02 07:53:19', '2017-12-02 07:53:19'),
(146, 12, 6, 'Port', 104, 'BN-396', '534613155722', NULL, 6359.00, 7094.00, '1.00', 0, NULL, '32Y64NJCPv7ZX', '2017-12-02 07:53:19', '2017-12-02 07:53:19'),
(147, 12, 6, 'Port', 104, 'BN-396', '534613155722', NULL, 6359.00, 7094.00, '1.00', 0, NULL, '32Y64NJCPv7ZX', '2017-12-02 07:53:19', '2017-12-02 07:53:19'),
(148, 12, 6, 'Port', 104, 'BN-396', '534613155722', NULL, 6359.00, 7094.00, '1.00', 0, NULL, '32Y64NJCPv7ZX', '2017-12-02 07:53:19', '2017-12-02 07:53:19'),
(149, 12, 6, 'Port', 104, 'BN-396', '534613155722', NULL, 6359.00, 7094.00, '1.00', 0, NULL, '32Y64NJCPv7ZX', '2017-12-02 07:53:19', '2017-12-02 07:53:19'),
(150, 12, 6, 'Port', 104, 'BN-396', '534613155722', NULL, 6359.00, 7094.00, '1.00', 0, NULL, '32Y64NJCPv7ZX', '2017-12-02 07:53:19', '2017-12-02 07:53:19'),
(151, 12, 6, 'Port', 104, 'BN-396', '534613155722', NULL, 6359.00, 7094.00, '1.00', 0, NULL, '32Y64NJCPv7ZX', '2017-12-02 07:53:19', '2017-12-02 07:53:19'),
(152, 12, 6, 'Port', 104, 'BN-396', '534613155722', NULL, 6359.00, 7094.00, '1.00', 0, NULL, '32Y64NJCPv7ZX', '2017-12-02 07:53:20', '2017-12-02 07:53:20'),
(153, 12, 6, 'Port', 104, 'BN-396', '534613155722', NULL, 6359.00, 7094.00, '1.00', 0, NULL, '32Y64NJCPv7ZX', '2017-12-02 07:53:20', '2017-12-02 07:53:20'),
(154, 12, 1, 'North', 2, 'BN-955', '441213753398', NULL, 13232.00, 13515.00, '1.00', 1, 'e3Q3iM3b', 'vgEzWyzcYDM7X', '2017-12-02 07:53:20', '2017-12-02 08:00:38'),
(155, 12, 1, 'North', 2, 'BN-955', '441213753398', NULL, 13232.00, 13515.00, '1.00', 0, NULL, 'vgEzWyzcYDM7X', '2017-12-02 07:53:20', '2017-12-02 07:53:20'),
(156, 12, 1, 'North', 2, 'BN-955', '441213753398', NULL, 13232.00, 13515.00, '1.00', 0, NULL, 'vgEzWyzcYDM7X', '2017-12-02 07:53:20', '2017-12-02 07:53:20'),
(157, 12, 1, 'North', 2, 'BN-955', '441213753398', NULL, 13232.00, 13515.00, '1.00', 0, NULL, 'vgEzWyzcYDM7X', '2017-12-02 07:53:20', '2017-12-02 07:53:20'),
(158, 12, 1, 'North', 2, 'BN-955', '441213753398', NULL, 13232.00, 13515.00, '1.00', 0, NULL, 'vgEzWyzcYDM7X', '2017-12-02 07:53:20', '2017-12-02 07:53:20'),
(159, 12, 1, 'North', 2, 'BN-955', '441213753398', NULL, 13232.00, 13515.00, '1.00', 0, NULL, 'vgEzWyzcYDM7X', '2017-12-02 07:53:20', '2017-12-02 07:53:20'),
(160, 12, 1, 'North', 2, 'BN-955', '441213753398', NULL, 13232.00, 13515.00, '1.00', 0, NULL, 'vgEzWyzcYDM7X', '2017-12-02 07:53:20', '2017-12-02 07:53:20'),
(161, 12, 1, 'North', 2, 'BN-955', '441213753398', NULL, 13232.00, 13515.00, '1.00', 0, NULL, 'vgEzWyzcYDM7X', '2017-12-02 07:53:20', '2017-12-02 07:53:20'),
(162, 12, 1, 'North', 2, 'BN-955', '441213753398', NULL, 13232.00, 13515.00, '1.00', 0, NULL, 'vgEzWyzcYDM7X', '2017-12-02 07:53:20', '2017-12-02 07:53:20'),
(163, 12, 1, 'North', 2, 'BN-955', '441213753398', NULL, 13232.00, 13515.00, '1.00', 0, NULL, 'vgEzWyzcYDM7X', '2017-12-02 07:53:20', '2017-12-02 07:53:20'),
(164, 12, 9, 'Port', 177, 'BN-121', '655194234092', NULL, 18934.00, 19601.00, '1.00', 0, NULL, '0RNr6XwhrMLKp', '2017-12-02 07:53:20', '2017-12-02 07:53:20'),
(165, 12, 9, 'Port', 177, 'BN-121', '655194234092', NULL, 18934.00, 19601.00, '1.00', 0, NULL, '0RNr6XwhrMLKp', '2017-12-02 07:53:20', '2017-12-02 07:53:20'),
(166, 12, 9, 'Port', 177, 'BN-121', '655194234092', NULL, 18934.00, 19601.00, '1.00', 0, NULL, '0RNr6XwhrMLKp', '2017-12-02 07:53:21', '2017-12-02 07:53:21'),
(167, 12, 9, 'Port', 177, 'BN-121', '655194234092', NULL, 18934.00, 19601.00, '1.00', 0, NULL, '0RNr6XwhrMLKp', '2017-12-02 07:53:21', '2017-12-02 07:53:21'),
(168, 12, 9, 'Port', 177, 'BN-121', '655194234092', NULL, 18934.00, 19601.00, '1.00', 0, NULL, '0RNr6XwhrMLKp', '2017-12-02 07:53:21', '2017-12-02 07:53:21'),
(169, 12, 9, 'Port', 177, 'BN-121', '655194234092', NULL, 18934.00, 19601.00, '1.00', 0, NULL, '0RNr6XwhrMLKp', '2017-12-02 07:53:21', '2017-12-02 07:53:21'),
(170, 12, 9, 'Port', 177, 'BN-121', '655194234092', NULL, 18934.00, 19601.00, '1.00', 0, NULL, '0RNr6XwhrMLKp', '2017-12-02 07:53:21', '2017-12-02 07:53:21'),
(171, 12, 9, 'Port', 177, 'BN-121', '655194234092', NULL, 18934.00, 19601.00, '1.00', 0, NULL, '0RNr6XwhrMLKp', '2017-12-02 07:53:21', '2017-12-02 07:53:21'),
(172, 12, 9, 'Port', 177, 'BN-121', '655194234092', NULL, 18934.00, 19601.00, '1.00', 0, NULL, '0RNr6XwhrMLKp', '2017-12-02 07:53:21', '2017-12-02 07:53:21'),
(173, 13, 7, 'North', 135, 'BN-413', '849838969994', NULL, 8725.00, 9555.00, '-3.00', 1, 'MaxOfEje', '48rm6zKH311Ay', '2017-12-02 07:53:22', '2017-12-02 08:00:14'),
(174, 13, 7, 'North', 135, 'BN-413', '849838969994', NULL, 8725.00, 9555.00, '-1.00', 0, NULL, '48rm6zKH311Ay', '2017-12-02 07:53:22', '2017-12-02 07:58:31'),
(175, 13, 7, 'North', 135, 'BN-413', '849838969994', NULL, 8725.00, 9555.00, '0.00', 0, NULL, '48rm6zKH311Ay', '2017-12-02 07:53:22', '2017-12-02 07:58:31'),
(176, 13, 7, 'North', 135, 'BN-413', '849838969994', NULL, 8725.00, 9555.00, '1.00', 0, NULL, '48rm6zKH311Ay', '2017-12-02 07:53:22', '2017-12-02 07:53:22'),
(177, 13, 7, 'North', 135, 'BN-413', '849838969994', NULL, 8725.00, 9555.00, '1.00', 0, NULL, '48rm6zKH311Ay', '2017-12-02 07:53:22', '2017-12-02 07:53:22'),
(178, 13, 7, 'North', 135, 'BN-413', '849838969994', NULL, 8725.00, 9555.00, '1.00', 0, NULL, '48rm6zKH311Ay', '2017-12-02 07:53:22', '2017-12-02 07:53:22'),
(179, 13, 7, 'North', 135, 'BN-413', '849838969994', NULL, 8725.00, 9555.00, '1.00', 0, NULL, '48rm6zKH311Ay', '2017-12-02 07:53:22', '2017-12-02 07:53:22'),
(180, 13, 7, 'North', 135, 'BN-413', '849838969994', NULL, 8725.00, 9555.00, '1.00', 0, NULL, '48rm6zKH311Ay', '2017-12-02 07:53:22', '2017-12-02 07:53:22'),
(181, 13, 7, 'North', 135, 'BN-413', '849838969994', NULL, 8725.00, 9555.00, '1.00', 0, NULL, '48rm6zKH311Ay', '2017-12-02 07:53:22', '2017-12-02 07:53:22'),
(182, 13, 7, 'North', 135, 'BN-413', '849838969994', NULL, 8725.00, 9555.00, '1.00', 0, NULL, '48rm6zKH311Ay', '2017-12-02 07:53:22', '2017-12-02 07:53:22'),
(183, 13, 7, 'North', 135, 'BN-413', '849838969994', NULL, 8725.00, 9555.00, '1.00', 0, NULL, '48rm6zKH311Ay', '2017-12-02 07:53:22', '2017-12-02 07:53:22'),
(184, 13, 7, 'North', 135, 'BN-413', '849838969994', NULL, 8725.00, 9555.00, '1.00', 0, NULL, '48rm6zKH311Ay', '2017-12-02 07:53:22', '2017-12-02 07:53:22'),
(185, 16, 2, 'South', 21, 'BN-462', '955465826538', NULL, 11372.00, 11844.00, '-4.00', 1, 'bmOjUV1e', 'yojK0wEIrLrkjY', '2017-12-02 07:53:24', '2017-12-02 08:00:40'),
(186, 16, 2, 'South', 21, 'BN-462', '955465826538', NULL, 11372.00, 11844.00, '-1.00', 0, NULL, 'yojK0wEIrLrkjY', '2017-12-02 07:53:24', '2017-12-02 07:57:05'),
(187, 16, 2, 'South', 21, 'BN-462', '955465826538', NULL, 11372.00, 11844.00, '0.00', 0, NULL, 'yojK0wEIrLrkjY', '2017-12-02 07:53:24', '2017-12-02 07:57:03'),
(188, 16, 2, 'South', 21, 'BN-462', '955465826538', NULL, 11372.00, 11844.00, '1.00', 0, NULL, 'yojK0wEIrLrkjY', '2017-12-02 07:53:24', '2017-12-02 07:53:24'),
(189, 16, 2, 'South', 21, 'BN-462', '955465826538', NULL, 11372.00, 11844.00, '1.00', 0, NULL, 'yojK0wEIrLrkjY', '2017-12-02 07:53:24', '2017-12-02 07:53:24'),
(190, 16, 2, 'South', 21, 'BN-462', '955465826538', NULL, 11372.00, 11844.00, '1.00', 0, NULL, 'yojK0wEIrLrkjY', '2017-12-02 07:53:25', '2017-12-02 07:53:25'),
(191, 16, 2, 'South', 21, 'BN-462', '955465826538', NULL, 11372.00, 11844.00, '1.00', 0, NULL, 'yojK0wEIrLrkjY', '2017-12-02 07:53:25', '2017-12-02 07:53:25'),
(192, 16, 2, 'South', 21, 'BN-462', '955465826538', NULL, 11372.00, 11844.00, '1.00', 0, NULL, 'yojK0wEIrLrkjY', '2017-12-02 07:53:25', '2017-12-02 07:53:25'),
(193, 17, 1, 'North', 20, 'BN-052', '389490117710', NULL, 8186.00, 8993.00, '-3.00', 1, 'dL95UKre', '4QvAKNYC2EwOK', '2017-12-02 07:53:25', '2017-12-02 08:00:16'),
(194, 17, 1, 'North', 20, 'BN-052', '389490117710', NULL, 8186.00, 8993.00, '-1.00', 0, NULL, '4QvAKNYC2EwOK', '2017-12-02 07:53:25', '2017-12-02 07:56:45'),
(195, 17, 1, 'North', 20, 'BN-052', '389490117710', NULL, 8186.00, 8993.00, '-1.00', 0, NULL, '4QvAKNYC2EwOK', '2017-12-02 07:53:25', '2017-12-02 07:56:45'),
(196, 17, 1, 'North', 20, 'BN-052', '389490117710', NULL, 8186.00, 8993.00, '1.00', 0, NULL, '4QvAKNYC2EwOK', '2017-12-02 07:53:25', '2017-12-02 07:53:25'),
(197, 17, 1, 'North', 20, 'BN-052', '389490117710', NULL, 8186.00, 8993.00, '1.00', 0, NULL, '4QvAKNYC2EwOK', '2017-12-02 07:53:25', '2017-12-02 07:53:25'),
(198, 17, 1, 'North', 20, 'BN-052', '389490117710', NULL, 8186.00, 8993.00, '1.00', 0, NULL, '4QvAKNYC2EwOK', '2017-12-02 07:53:26', '2017-12-02 07:53:26'),
(199, 17, 1, 'North', 20, 'BN-052', '389490117710', NULL, 8186.00, 8993.00, '1.00', 0, NULL, '4QvAKNYC2EwOK', '2017-12-02 07:53:26', '2017-12-02 07:53:26'),
(200, 17, 1, 'North', 20, 'BN-052', '389490117710', NULL, 8186.00, 8993.00, '1.00', 0, NULL, '4QvAKNYC2EwOK', '2017-12-02 07:53:26', '2017-12-02 07:53:26'),
(201, 22, 4, 'North', 63, 'BN-811', '448818895737', NULL, 1207.00, 1460.00, '-4.00', 0, NULL, 'G6DR4yBCRD6wo', '2017-12-02 07:53:28', '2017-12-02 07:57:40'),
(202, 22, 4, 'North', 63, 'BN-811', '448818895737', NULL, 1207.00, 1460.00, '-1.00', 0, NULL, 'G6DR4yBCRD6wo', '2017-12-02 07:53:28', '2017-12-02 07:57:18'),
(203, 22, 4, 'North', 63, 'BN-811', '448818895737', NULL, 1207.00, 1460.00, '0.00', 0, NULL, 'G6DR4yBCRD6wo', '2017-12-02 07:53:28', '2017-12-02 07:56:54'),
(204, 22, 4, 'North', 63, 'BN-811', '448818895737', NULL, 1207.00, 1460.00, '1.00', 0, NULL, 'G6DR4yBCRD6wo', '2017-12-02 07:53:28', '2017-12-02 07:53:28'),
(205, 22, 4, 'North', 63, 'BN-811', '448818895737', NULL, 1207.00, 1460.00, '1.00', 0, NULL, 'G6DR4yBCRD6wo', '2017-12-02 07:53:28', '2017-12-02 07:53:28'),
(206, 22, 4, 'North', 63, 'BN-811', '448818895737', NULL, 1207.00, 1460.00, '1.00', 0, NULL, 'G6DR4yBCRD6wo', '2017-12-02 07:53:28', '2017-12-02 07:53:28'),
(207, 22, 4, 'North', 63, 'BN-811', '448818895737', NULL, 1207.00, 1460.00, '1.00', 0, NULL, 'G6DR4yBCRD6wo', '2017-12-02 07:53:28', '2017-12-02 07:53:28'),
(208, 22, 4, 'North', 63, 'BN-811', '448818895737', NULL, 1207.00, 1460.00, '1.00', 0, NULL, 'G6DR4yBCRD6wo', '2017-12-02 07:53:28', '2017-12-02 07:53:28'),
(209, 23, 10, 'Lake', 191, 'BN-168', '308739390790', NULL, 7944.00, 8552.00, '-1.00', 1, 'epY2HWDa', 'K15zAE4fwP7Kw', '2017-12-02 07:53:29', '2017-12-02 08:00:16'),
(210, 23, 10, 'Lake', 191, 'BN-168', '308739390790', NULL, 7944.00, 8552.00, '1.00', 0, NULL, 'K15zAE4fwP7Kw', '2017-12-02 07:53:29', '2017-12-02 07:53:29'),
(211, 23, 10, 'Lake', 191, 'BN-168', '308739390790', NULL, 7944.00, 8552.00, '1.00', 0, NULL, 'K15zAE4fwP7Kw', '2017-12-02 07:53:29', '2017-12-02 07:53:29'),
(212, 23, 10, 'Lake', 191, 'BN-168', '308739390790', NULL, 7944.00, 8552.00, '1.00', 0, NULL, 'K15zAE4fwP7Kw', '2017-12-02 07:53:29', '2017-12-02 07:53:29'),
(213, 23, 10, 'Lake', 191, 'BN-168', '308739390790', NULL, 7944.00, 8552.00, '1.00', 0, NULL, 'K15zAE4fwP7Kw', '2017-12-02 07:53:29', '2017-12-02 07:53:29'),
(214, 23, 10, 'Lake', 191, 'BN-168', '308739390790', NULL, 7944.00, 8552.00, '1.00', 0, NULL, 'K15zAE4fwP7Kw', '2017-12-02 07:53:29', '2017-12-02 07:53:29'),
(215, 23, 10, 'Lake', 191, 'BN-168', '308739390790', NULL, 7944.00, 8552.00, '1.00', 0, NULL, 'K15zAE4fwP7Kw', '2017-12-02 07:53:29', '2017-12-02 07:53:29'),
(216, 23, 10, 'Lake', 191, 'BN-168', '308739390790', NULL, 7944.00, 8552.00, '1.00', 0, NULL, 'K15zAE4fwP7Kw', '2017-12-02 07:53:29', '2017-12-02 07:53:29'),
(217, 23, 10, 'Lake', 191, 'BN-168', '308739390790', NULL, 7944.00, 8552.00, '1.00', 0, NULL, 'K15zAE4fwP7Kw', '2017-12-02 07:53:30', '2017-12-02 07:53:30'),
(218, 23, 10, 'Lake', 191, 'BN-168', '910668590563', NULL, 16569.00, 17362.00, '1.00', 1, 'ZdyNhWWe', 'XokqqVvTDkKJE', '2017-12-02 07:53:30', '2017-12-02 08:00:11'),
(219, 23, 10, 'Lake', 191, 'BN-168', '910668590563', NULL, 16569.00, 17362.00, '1.00', 0, NULL, 'XokqqVvTDkKJE', '2017-12-02 07:53:30', '2017-12-02 07:53:30'),
(220, 23, 10, 'Lake', 191, 'BN-168', '910668590563', NULL, 16569.00, 17362.00, '1.00', 0, NULL, 'XokqqVvTDkKJE', '2017-12-02 07:53:30', '2017-12-02 07:53:30'),
(221, 23, 10, 'Lake', 191, 'BN-168', '910668590563', NULL, 16569.00, 17362.00, '1.00', 0, NULL, 'XokqqVvTDkKJE', '2017-12-02 07:53:30', '2017-12-02 07:53:30'),
(222, 23, 10, 'Lake', 191, 'BN-168', '910668590563', NULL, 16569.00, 17362.00, '1.00', 0, NULL, 'XokqqVvTDkKJE', '2017-12-02 07:53:30', '2017-12-02 07:53:30'),
(223, 23, 10, 'Lake', 191, 'BN-168', '910668590563', NULL, 16569.00, 17362.00, '1.00', 0, NULL, 'XokqqVvTDkKJE', '2017-12-02 07:53:30', '2017-12-02 07:53:30'),
(224, 23, 10, 'Lake', 191, 'BN-168', '910668590563', NULL, 16569.00, 17362.00, '1.00', 0, NULL, 'XokqqVvTDkKJE', '2017-12-02 07:53:30', '2017-12-02 07:53:30'),
(225, 23, 10, 'Lake', 191, 'BN-168', '910668590563', NULL, 16569.00, 17362.00, '1.00', 0, NULL, 'XokqqVvTDkKJE', '2017-12-02 07:53:30', '2017-12-02 07:53:30'),
(226, 23, 10, 'Lake', 191, 'BN-168', '910668590563', NULL, 16569.00, 17362.00, '1.00', 0, NULL, 'XokqqVvTDkKJE', '2017-12-02 07:53:30', '2017-12-02 07:53:30'),
(227, 23, 1, 'North', 15, 'BN-253', '154001871630', NULL, 19114.00, 19240.00, '-1.00', 0, NULL, 'W6D7EWXFAm0rG', '2017-12-02 07:53:31', '2017-12-02 07:56:57'),
(228, 23, 1, 'North', 15, 'BN-253', '154001871630', NULL, 19114.00, 19240.00, '0.00', 0, NULL, 'W6D7EWXFAm0rG', '2017-12-02 07:53:31', '2017-12-02 07:56:57'),
(229, 23, 1, 'North', 15, 'BN-253', '154001871630', NULL, 19114.00, 19240.00, '0.00', 0, NULL, 'W6D7EWXFAm0rG', '2017-12-02 07:53:31', '2017-12-02 07:56:57'),
(230, 23, 1, 'North', 15, 'BN-253', '154001871630', NULL, 19114.00, 19240.00, '1.00', 0, NULL, 'W6D7EWXFAm0rG', '2017-12-02 07:53:31', '2017-12-02 07:53:31'),
(231, 23, 1, 'North', 15, 'BN-253', '154001871630', NULL, 19114.00, 19240.00, '1.00', 0, NULL, 'W6D7EWXFAm0rG', '2017-12-02 07:53:31', '2017-12-02 07:53:31'),
(232, 23, 1, 'North', 15, 'BN-253', '154001871630', NULL, 19114.00, 19240.00, '1.00', 0, NULL, 'W6D7EWXFAm0rG', '2017-12-02 07:53:31', '2017-12-02 07:53:31'),
(233, 23, 1, 'North', 15, 'BN-253', '154001871630', NULL, 19114.00, 19240.00, '1.00', 0, NULL, 'W6D7EWXFAm0rG', '2017-12-02 07:53:31', '2017-12-02 07:53:31'),
(234, 23, 1, 'North', 15, 'BN-253', '154001871630', NULL, 19114.00, 19240.00, '1.00', 0, NULL, 'W6D7EWXFAm0rG', '2017-12-02 07:53:31', '2017-12-02 07:53:31'),
(235, 23, 1, 'North', 15, 'BN-253', '154001871630', NULL, 19114.00, 19240.00, '1.00', 0, NULL, 'W6D7EWXFAm0rG', '2017-12-02 07:53:31', '2017-12-02 07:53:31'),
(236, 23, 10, 'Lake', 186, 'BN-998', '510352831509', NULL, 15890.00, 16442.00, '-1.00', 0, NULL, 'J6l45G7toVJzy', '2017-12-02 07:53:31', '2017-12-02 07:58:08'),
(237, 23, 10, 'Lake', 186, 'BN-998', '510352831509', NULL, 15890.00, 16442.00, '1.00', 0, NULL, 'J6l45G7toVJzy', '2017-12-02 07:53:31', '2017-12-02 07:53:31'),
(238, 23, 10, 'Lake', 186, 'BN-998', '510352831509', NULL, 15890.00, 16442.00, '1.00', 0, NULL, 'J6l45G7toVJzy', '2017-12-02 07:53:31', '2017-12-02 07:53:31'),
(239, 23, 10, 'Lake', 186, 'BN-998', '510352831509', NULL, 15890.00, 16442.00, '1.00', 0, NULL, 'J6l45G7toVJzy', '2017-12-02 07:53:31', '2017-12-02 07:53:31'),
(240, 23, 10, 'Lake', 186, 'BN-998', '510352831509', NULL, 15890.00, 16442.00, '1.00', 0, NULL, 'J6l45G7toVJzy', '2017-12-02 07:53:31', '2017-12-02 07:53:31'),
(241, 23, 10, 'Lake', 186, 'BN-998', '510352831509', NULL, 15890.00, 16442.00, '1.00', 0, NULL, 'J6l45G7toVJzy', '2017-12-02 07:53:31', '2017-12-02 07:53:31'),
(242, 23, 10, 'Lake', 186, 'BN-998', '510352831509', NULL, 15890.00, 16442.00, '1.00', 0, NULL, 'J6l45G7toVJzy', '2017-12-02 07:53:31', '2017-12-02 07:53:31'),
(243, 23, 10, 'Lake', 186, 'BN-998', '510352831509', NULL, 15890.00, 16442.00, '1.00', 0, NULL, 'J6l45G7toVJzy', '2017-12-02 07:53:31', '2017-12-02 07:53:31'),
(244, 23, 10, 'Lake', 186, 'BN-998', '510352831509', NULL, 15890.00, 16442.00, '1.00', 0, NULL, 'J6l45G7toVJzy', '2017-12-02 07:53:31', '2017-12-02 07:53:31'),
(245, 27, 8, 'East', 149, 'BN-250', '500124901219', NULL, 17698.00, 18548.00, '-1.00', 1, 'gen0Uwrb', 'k5JMRmmULr2G8', '2017-12-02 07:53:36', '2017-12-02 08:00:10'),
(246, 27, 8, 'East', 149, 'BN-250', '500124901219', NULL, 17698.00, 18548.00, '1.00', 0, NULL, 'k5JMRmmULr2G8', '2017-12-02 07:53:36', '2017-12-02 07:53:36'),
(247, 27, 8, 'East', 149, 'BN-250', '500124901219', NULL, 17698.00, 18548.00, '1.00', 0, NULL, 'k5JMRmmULr2G8', '2017-12-02 07:53:36', '2017-12-02 07:53:36'),
(248, 27, 8, 'East', 149, 'BN-250', '500124901219', NULL, 17698.00, 18548.00, '1.00', 0, NULL, 'k5JMRmmULr2G8', '2017-12-02 07:53:36', '2017-12-02 07:53:36'),
(249, 27, 8, 'East', 149, 'BN-250', '500124901219', NULL, 17698.00, 18548.00, '1.00', 0, NULL, 'k5JMRmmULr2G8', '2017-12-02 07:53:36', '2017-12-02 07:53:36'),
(250, 27, 8, 'East', 149, 'BN-250', '500124901219', NULL, 17698.00, 18548.00, '1.00', 0, NULL, 'k5JMRmmULr2G8', '2017-12-02 07:53:36', '2017-12-02 07:53:36'),
(251, 27, 8, 'East', 149, 'BN-250', '500124901219', NULL, 17698.00, 18548.00, '1.00', 0, NULL, 'k5JMRmmULr2G8', '2017-12-02 07:53:36', '2017-12-02 07:53:36'),
(252, 27, 8, 'East', 149, 'BN-250', '500124901219', NULL, 17698.00, 18548.00, '1.00', 0, NULL, 'k5JMRmmULr2G8', '2017-12-02 07:53:36', '2017-12-02 07:53:36'),
(253, 27, 8, 'East', 149, 'BN-250', '500124901219', NULL, 17698.00, 18548.00, '1.00', 0, NULL, 'k5JMRmmULr2G8', '2017-12-02 07:53:36', '2017-12-02 07:53:36'),
(254, 27, 8, 'East', 149, 'BN-250', '500124901219', NULL, 17698.00, 18548.00, '1.00', 0, NULL, 'k5JMRmmULr2G8', '2017-12-02 07:53:36', '2017-12-02 07:53:36'),
(255, 27, 8, 'East', 149, 'BN-250', '500124901219', NULL, 17698.00, 18548.00, '1.00', 0, NULL, 'k5JMRmmULr2G8', '2017-12-02 07:53:36', '2017-12-02 07:53:36'),
(256, 27, 8, 'East', 149, 'BN-250', '500124901219', NULL, 17698.00, 18548.00, '1.00', 0, NULL, 'k5JMRmmULr2G8', '2017-12-02 07:53:37', '2017-12-02 07:53:37'),
(257, 28, 10, 'Lake', 183, 'BN-690', '157404464904', NULL, 15144.00, 15859.00, '-3.00', 0, NULL, 'oQo7RLVcrvgN7Q', '2017-12-02 07:53:37', '2017-12-02 07:57:51'),
(258, 28, 10, 'Lake', 183, 'BN-690', '157404464904', NULL, 15144.00, 15859.00, '1.00', 0, NULL, 'oQo7RLVcrvgN7Q', '2017-12-02 07:53:37', '2017-12-02 07:53:37'),
(259, 28, 10, 'Lake', 183, 'BN-690', '157404464904', NULL, 15144.00, 15859.00, '1.00', 0, NULL, 'oQo7RLVcrvgN7Q', '2017-12-02 07:53:37', '2017-12-02 07:53:37'),
(260, 28, 10, 'Lake', 183, 'BN-690', '157404464904', NULL, 15144.00, 15859.00, '1.00', 0, NULL, 'oQo7RLVcrvgN7Q', '2017-12-02 07:53:37', '2017-12-02 07:53:37'),
(261, 28, 10, 'Lake', 183, 'BN-690', '157404464904', NULL, 15144.00, 15859.00, '1.00', 0, NULL, 'oQo7RLVcrvgN7Q', '2017-12-02 07:53:37', '2017-12-02 07:53:37'),
(262, 28, 10, 'Lake', 183, 'BN-690', '157404464904', NULL, 15144.00, 15859.00, '1.00', 0, NULL, 'oQo7RLVcrvgN7Q', '2017-12-02 07:53:37', '2017-12-02 07:53:37'),
(263, 28, 10, 'Lake', 183, 'BN-690', '157404464904', NULL, 15144.00, 15859.00, '1.00', 0, NULL, 'oQo7RLVcrvgN7Q', '2017-12-02 07:53:37', '2017-12-02 07:53:37'),
(264, 28, 10, 'Lake', 183, 'BN-690', '157404464904', NULL, 15144.00, 15859.00, '1.00', 0, NULL, 'oQo7RLVcrvgN7Q', '2017-12-02 07:53:37', '2017-12-02 07:53:37'),
(265, 29, 6, 'Port', 112, 'BN-628', '849707703995', NULL, 8738.00, 9621.00, '-4.00', 0, NULL, 'G5k0nOWi109wAK', '2017-12-02 07:53:38', '2017-12-02 07:57:58'),
(266, 29, 6, 'Port', 112, 'BN-628', '849707703995', NULL, 8738.00, 9621.00, '-1.00', 0, NULL, 'G5k0nOWi109wAK', '2017-12-02 07:53:38', '2017-12-02 07:56:56'),
(267, 29, 6, 'Port', 112, 'BN-628', '849707703995', NULL, 8738.00, 9621.00, '0.00', 0, NULL, 'G5k0nOWi109wAK', '2017-12-02 07:53:38', '2017-12-02 07:56:57'),
(268, 29, 6, 'Port', 112, 'BN-628', '849707703995', NULL, 8738.00, 9621.00, '1.00', 0, NULL, 'G5k0nOWi109wAK', '2017-12-02 07:53:38', '2017-12-02 07:53:38'),
(269, 29, 6, 'Port', 112, 'BN-628', '849707703995', NULL, 8738.00, 9621.00, '1.00', 0, NULL, 'G5k0nOWi109wAK', '2017-12-02 07:53:38', '2017-12-02 07:53:38'),
(270, 29, 6, 'Port', 112, 'BN-628', '849707703995', NULL, 8738.00, 9621.00, '1.00', 0, NULL, 'G5k0nOWi109wAK', '2017-12-02 07:53:38', '2017-12-02 07:53:38'),
(271, 29, 6, 'Port', 112, 'BN-628', '849707703995', NULL, 8738.00, 9621.00, '1.00', 0, NULL, 'G5k0nOWi109wAK', '2017-12-02 07:53:38', '2017-12-02 07:53:38'),
(272, 29, 6, 'Port', 112, 'BN-628', '849707703995', NULL, 8738.00, 9621.00, '1.00', 0, NULL, 'G5k0nOWi109wAK', '2017-12-02 07:53:38', '2017-12-02 07:53:38'),
(273, 30, 8, 'East', 148, 'BN-029', '633907501754', NULL, 6027.00, 6867.00, '1.00', 0, NULL, 'NxAGpmqfxxDo8', '2017-12-02 07:53:39', '2017-12-02 07:53:39'),
(274, 30, 8, 'East', 148, 'BN-029', '633907501754', NULL, 6027.00, 6867.00, '1.00', 0, NULL, 'NxAGpmqfxxDo8', '2017-12-02 07:53:39', '2017-12-02 07:53:39'),
(275, 30, 8, 'East', 148, 'BN-029', '633907501754', NULL, 6027.00, 6867.00, '1.00', 0, NULL, 'NxAGpmqfxxDo8', '2017-12-02 07:53:39', '2017-12-02 07:53:39'),
(276, 30, 8, 'East', 148, 'BN-029', '633907501754', NULL, 6027.00, 6867.00, '1.00', 0, NULL, 'NxAGpmqfxxDo8', '2017-12-02 07:53:39', '2017-12-02 07:53:39'),
(277, 30, 8, 'East', 148, 'BN-029', '633907501754', NULL, 6027.00, 6867.00, '1.00', 0, NULL, 'NxAGpmqfxxDo8', '2017-12-02 07:53:39', '2017-12-02 07:53:39'),
(278, 30, 8, 'East', 148, 'BN-029', '633907501754', NULL, 6027.00, 6867.00, '1.00', 0, NULL, 'NxAGpmqfxxDo8', '2017-12-02 07:53:39', '2017-12-02 07:53:39'),
(279, 30, 8, 'East', 148, 'BN-029', '633907501754', NULL, 6027.00, 6867.00, '1.00', 0, NULL, 'NxAGpmqfxxDo8', '2017-12-02 07:53:39', '2017-12-02 07:53:39'),
(280, 30, 8, 'East', 148, 'BN-029', '633907501754', NULL, 6027.00, 6867.00, '1.00', 0, NULL, 'NxAGpmqfxxDo8', '2017-12-02 07:53:39', '2017-12-02 07:53:39'),
(281, 30, 8, 'East', 148, 'BN-029', '633907501754', NULL, 6027.00, 6867.00, '1.00', 0, NULL, 'NxAGpmqfxxDo8', '2017-12-02 07:53:39', '2017-12-02 07:53:39'),
(282, 30, 10, 'Lake', 195, 'BN-999', '500453647635', NULL, 14728.00, 15581.00, '-1.00', 0, NULL, 'r8WvjPGu6DyKm', '2017-12-02 07:53:40', '2017-12-02 07:58:07'),
(283, 30, 10, 'Lake', 195, 'BN-999', '500453647635', NULL, 14728.00, 15581.00, '0.00', 0, NULL, 'r8WvjPGu6DyKm', '2017-12-02 07:53:40', '2017-12-02 07:58:06'),
(284, 30, 10, 'Lake', 195, 'BN-999', '500453647635', NULL, 14728.00, 15581.00, '1.00', 0, NULL, 'r8WvjPGu6DyKm', '2017-12-02 07:53:40', '2017-12-02 07:53:40'),
(285, 30, 10, 'Lake', 195, 'BN-999', '500453647635', NULL, 14728.00, 15581.00, '1.00', 0, NULL, 'r8WvjPGu6DyKm', '2017-12-02 07:53:40', '2017-12-02 07:53:40'),
(286, 30, 10, 'Lake', 195, 'BN-999', '500453647635', NULL, 14728.00, 15581.00, '1.00', 0, NULL, 'r8WvjPGu6DyKm', '2017-12-02 07:53:40', '2017-12-02 07:53:40'),
(287, 30, 10, 'Lake', 195, 'BN-999', '500453647635', NULL, 14728.00, 15581.00, '1.00', 0, NULL, 'r8WvjPGu6DyKm', '2017-12-02 07:53:40', '2017-12-02 07:53:40'),
(288, 30, 10, 'Lake', 195, 'BN-999', '500453647635', NULL, 14728.00, 15581.00, '1.00', 0, NULL, 'r8WvjPGu6DyKm', '2017-12-02 07:53:40', '2017-12-02 07:53:40'),
(289, 30, 10, 'Lake', 195, 'BN-999', '500453647635', NULL, 14728.00, 15581.00, '1.00', 0, NULL, 'r8WvjPGu6DyKm', '2017-12-02 07:53:40', '2017-12-02 07:53:40'),
(290, 30, 10, 'Lake', 195, 'BN-999', '500453647635', NULL, 14728.00, 15581.00, '1.00', 0, NULL, 'r8WvjPGu6DyKm', '2017-12-02 07:53:40', '2017-12-02 07:53:40'),
(291, 30, 7, 'North', 129, 'BN-856', '168278032656', NULL, 10458.00, 11238.00, '1.00', 0, NULL, 'vlvPNR8F6Ww8v', '2017-12-02 07:53:40', '2017-12-02 07:53:40'),
(292, 30, 7, 'North', 129, 'BN-856', '168278032656', NULL, 10458.00, 11238.00, '1.00', 0, NULL, 'vlvPNR8F6Ww8v', '2017-12-02 07:53:40', '2017-12-02 07:53:40'),
(293, 30, 7, 'North', 129, 'BN-856', '168278032656', NULL, 10458.00, 11238.00, '1.00', 0, NULL, 'vlvPNR8F6Ww8v', '2017-12-02 07:53:41', '2017-12-02 07:53:41'),
(294, 30, 7, 'North', 129, 'BN-856', '168278032656', NULL, 10458.00, 11238.00, '1.00', 0, NULL, 'vlvPNR8F6Ww8v', '2017-12-02 07:53:41', '2017-12-02 07:53:41'),
(295, 30, 7, 'North', 129, 'BN-856', '168278032656', NULL, 10458.00, 11238.00, '1.00', 0, NULL, 'vlvPNR8F6Ww8v', '2017-12-02 07:53:41', '2017-12-02 07:53:41'),
(296, 30, 7, 'North', 129, 'BN-856', '168278032656', NULL, 10458.00, 11238.00, '1.00', 0, NULL, 'vlvPNR8F6Ww8v', '2017-12-02 07:53:41', '2017-12-02 07:53:41'),
(297, 30, 7, 'North', 129, 'BN-856', '168278032656', NULL, 10458.00, 11238.00, '1.00', 0, NULL, 'vlvPNR8F6Ww8v', '2017-12-02 07:53:41', '2017-12-02 07:53:41'),
(298, 30, 7, 'North', 129, 'BN-856', '168278032656', NULL, 10458.00, 11238.00, '1.00', 0, NULL, 'vlvPNR8F6Ww8v', '2017-12-02 07:53:41', '2017-12-02 07:53:41'),
(299, 30, 7, 'North', 129, 'BN-856', '168278032656', NULL, 10458.00, 11238.00, '1.00', 0, NULL, 'vlvPNR8F6Ww8v', '2017-12-02 07:53:41', '2017-12-02 07:53:41'),
(300, 30, 7, 'North', 129, 'BN-856', '168278032656', NULL, 10458.00, 11238.00, '1.00', 0, NULL, 'vlvPNR8F6Ww8v', '2017-12-02 07:53:41', '2017-12-02 07:53:41'),
(301, 30, 9, 'Port', 166, 'BN-446', '958383163846', NULL, 1322.00, 1970.00, '1.00', 0, NULL, 'Jyp7Y77SAy9R', '2017-12-02 07:53:41', '2017-12-02 07:53:41'),
(302, 30, 9, 'Port', 166, 'BN-446', '958383163846', NULL, 1322.00, 1970.00, '1.00', 0, NULL, 'Jyp7Y77SAy9R', '2017-12-02 07:53:41', '2017-12-02 07:53:41'),
(303, 30, 9, 'Port', 166, 'BN-446', '958383163846', NULL, 1322.00, 1970.00, '1.00', 0, NULL, 'Jyp7Y77SAy9R', '2017-12-02 07:53:41', '2017-12-02 07:53:41'),
(304, 30, 9, 'Port', 166, 'BN-446', '958383163846', NULL, 1322.00, 1970.00, '1.00', 0, NULL, 'Jyp7Y77SAy9R', '2017-12-02 07:53:41', '2017-12-02 07:53:41'),
(305, 30, 9, 'Port', 166, 'BN-446', '958383163846', NULL, 1322.00, 1970.00, '1.00', 0, NULL, 'Jyp7Y77SAy9R', '2017-12-02 07:53:41', '2017-12-02 07:53:41'),
(306, 30, 9, 'Port', 166, 'BN-446', '958383163846', NULL, 1322.00, 1970.00, '1.00', 0, NULL, 'Jyp7Y77SAy9R', '2017-12-02 07:53:41', '2017-12-02 07:53:41'),
(307, 30, 9, 'Port', 166, 'BN-446', '958383163846', NULL, 1322.00, 1970.00, '1.00', 0, NULL, 'Jyp7Y77SAy9R', '2017-12-02 07:53:41', '2017-12-02 07:53:41'),
(308, 30, 9, 'Port', 166, 'BN-446', '958383163846', NULL, 1322.00, 1970.00, '1.00', 0, NULL, 'Jyp7Y77SAy9R', '2017-12-02 07:53:41', '2017-12-02 07:53:41'),
(309, 30, 9, 'Port', 166, 'BN-446', '958383163846', NULL, 1322.00, 1970.00, '1.00', 0, NULL, 'Jyp7Y77SAy9R', '2017-12-02 07:53:41', '2017-12-02 07:53:41'),
(310, 30, 9, 'Port', 166, 'BN-446', '958383163846', NULL, 1322.00, 1970.00, '1.00', 0, NULL, 'Jyp7Y77SAy9R', '2017-12-02 07:53:41', '2017-12-02 07:53:41'),
(311, 32, 10, 'Lake', 196, 'BN-334', '937473723245', NULL, 7889.00, 8200.00, '-3.00', 1, 'bYWBCApe', 'VPQBA81CxxOvqK', '2017-12-02 07:53:42', '2017-12-02 08:00:39'),
(312, 32, 10, 'Lake', 196, 'BN-334', '937473723245', NULL, 7889.00, 8200.00, '1.00', 0, NULL, 'VPQBA81CxxOvqK', '2017-12-02 07:53:42', '2017-12-02 07:53:42'),
(313, 32, 10, 'Lake', 196, 'BN-334', '937473723245', NULL, 7889.00, 8200.00, '1.00', 0, NULL, 'VPQBA81CxxOvqK', '2017-12-02 07:53:43', '2017-12-02 07:53:43'),
(314, 32, 10, 'Lake', 196, 'BN-334', '937473723245', NULL, 7889.00, 8200.00, '1.00', 0, NULL, 'VPQBA81CxxOvqK', '2017-12-02 07:53:43', '2017-12-02 07:53:43'),
(315, 32, 10, 'Lake', 196, 'BN-334', '937473723245', NULL, 7889.00, 8200.00, '1.00', 0, NULL, 'VPQBA81CxxOvqK', '2017-12-02 07:53:43', '2017-12-02 07:53:43'),
(316, 32, 10, 'Lake', 196, 'BN-334', '937473723245', NULL, 7889.00, 8200.00, '1.00', 0, NULL, 'VPQBA81CxxOvqK', '2017-12-02 07:53:43', '2017-12-02 07:53:43'),
(317, 32, 10, 'Lake', 196, 'BN-334', '937473723245', NULL, 7889.00, 8200.00, '1.00', 0, NULL, 'VPQBA81CxxOvqK', '2017-12-02 07:53:43', '2017-12-02 07:53:43'),
(318, 32, 10, 'Lake', 196, 'BN-334', '937473723245', NULL, 7889.00, 8200.00, '1.00', 0, NULL, 'VPQBA81CxxOvqK', '2017-12-02 07:53:43', '2017-12-02 07:53:43');
INSERT INTO `product_locations` (`id`, `productId`, `productLocation`, `productLocationName`, `binLocation`, `binLocationName`, `productBarcode`, `productCurrency`, `unitCost`, `sellingPrice`, `amount`, `onHold`, `onHoldBy`, `hash`, `created_at`, `updated_at`) VALUES
(319, 32, 10, 'Lake', 196, 'BN-334', '937473723245', NULL, 7889.00, 8200.00, '1.00', 0, NULL, 'VPQBA81CxxOvqK', '2017-12-02 07:53:43', '2017-12-02 07:53:43'),
(320, 32, 10, 'Lake', 196, 'BN-334', '937473723245', NULL, 7889.00, 8200.00, '1.00', 0, NULL, 'VPQBA81CxxOvqK', '2017-12-02 07:53:43', '2017-12-02 07:53:43'),
(321, 32, 10, 'Lake', 196, 'BN-334', '937473723245', NULL, 7889.00, 8200.00, '1.00', 0, NULL, 'VPQBA81CxxOvqK', '2017-12-02 07:53:43', '2017-12-02 07:53:43'),
(322, 32, 10, 'Lake', 196, 'BN-334', '937473723245', NULL, 7889.00, 8200.00, '1.00', 0, NULL, 'VPQBA81CxxOvqK', '2017-12-02 07:53:43', '2017-12-02 07:53:43'),
(323, 33, 2, 'South', 40, 'BN-051', '327385919193', NULL, 10410.00, 11244.00, '1.00', 0, NULL, 'OMEN5ogsxqwJj', '2017-12-02 07:53:43', '2017-12-02 07:53:43'),
(324, 33, 2, 'South', 40, 'BN-051', '327385919193', NULL, 10410.00, 11244.00, '1.00', 0, NULL, 'OMEN5ogsxqwJj', '2017-12-02 07:53:44', '2017-12-02 07:53:44'),
(325, 33, 2, 'South', 40, 'BN-051', '327385919193', NULL, 10410.00, 11244.00, '1.00', 0, NULL, 'OMEN5ogsxqwJj', '2017-12-02 07:53:44', '2017-12-02 07:53:44'),
(326, 33, 2, 'South', 40, 'BN-051', '327385919193', NULL, 10410.00, 11244.00, '1.00', 0, NULL, 'OMEN5ogsxqwJj', '2017-12-02 07:53:44', '2017-12-02 07:53:44'),
(327, 33, 2, 'South', 40, 'BN-051', '327385919193', NULL, 10410.00, 11244.00, '1.00', 0, NULL, 'OMEN5ogsxqwJj', '2017-12-02 07:53:44', '2017-12-02 07:53:44'),
(328, 33, 2, 'South', 40, 'BN-051', '327385919193', NULL, 10410.00, 11244.00, '1.00', 0, NULL, 'OMEN5ogsxqwJj', '2017-12-02 07:53:44', '2017-12-02 07:53:44'),
(329, 33, 2, 'South', 40, 'BN-051', '327385919193', NULL, 10410.00, 11244.00, '1.00', 0, NULL, 'OMEN5ogsxqwJj', '2017-12-02 07:53:44', '2017-12-02 07:53:44'),
(330, 33, 2, 'South', 40, 'BN-051', '327385919193', NULL, 10410.00, 11244.00, '1.00', 0, NULL, 'OMEN5ogsxqwJj', '2017-12-02 07:53:44', '2017-12-02 07:53:44'),
(331, 33, 2, 'South', 40, 'BN-051', '327385919193', NULL, 10410.00, 11244.00, '1.00', 0, NULL, 'OMEN5ogsxqwJj', '2017-12-02 07:53:44', '2017-12-02 07:53:44'),
(332, 33, 8, 'East', 141, 'BN-589', '947839318381', NULL, 8439.00, 9160.00, '-3.00', 0, NULL, 'PZOMAVLHm8N1z', '2017-12-02 07:53:44', '2017-12-02 07:58:03'),
(333, 33, 8, 'East', 141, 'BN-589', '947839318381', NULL, 8439.00, 9160.00, '1.00', 0, NULL, 'PZOMAVLHm8N1z', '2017-12-02 07:53:44', '2017-12-02 07:53:44'),
(334, 33, 8, 'East', 141, 'BN-589', '947839318381', NULL, 8439.00, 9160.00, '1.00', 0, NULL, 'PZOMAVLHm8N1z', '2017-12-02 07:53:44', '2017-12-02 07:53:44'),
(335, 33, 8, 'East', 141, 'BN-589', '947839318381', NULL, 8439.00, 9160.00, '1.00', 0, NULL, 'PZOMAVLHm8N1z', '2017-12-02 07:53:44', '2017-12-02 07:53:44'),
(336, 33, 8, 'East', 141, 'BN-589', '947839318381', NULL, 8439.00, 9160.00, '1.00', 0, NULL, 'PZOMAVLHm8N1z', '2017-12-02 07:53:44', '2017-12-02 07:53:44'),
(337, 33, 8, 'East', 141, 'BN-589', '947839318381', NULL, 8439.00, 9160.00, '1.00', 0, NULL, 'PZOMAVLHm8N1z', '2017-12-02 07:53:44', '2017-12-02 07:53:44'),
(338, 33, 8, 'East', 141, 'BN-589', '947839318381', NULL, 8439.00, 9160.00, '1.00', 0, NULL, 'PZOMAVLHm8N1z', '2017-12-02 07:53:44', '2017-12-02 07:53:44'),
(339, 33, 8, 'East', 141, 'BN-589', '947839318381', NULL, 8439.00, 9160.00, '1.00', 0, NULL, 'PZOMAVLHm8N1z', '2017-12-02 07:53:44', '2017-12-02 07:53:44'),
(340, 33, 8, 'East', 141, 'BN-589', '947839318381', NULL, 8439.00, 9160.00, '1.00', 0, NULL, 'PZOMAVLHm8N1z', '2017-12-02 07:53:44', '2017-12-02 07:53:44'),
(341, 33, 8, 'East', 160, 'BN-090', '858179423935', NULL, 13074.00, 13612.00, '-5.00', 1, 'axknugqe', '68EWzAYczOQBK', '2017-12-02 07:53:45', '2017-12-02 08:00:15'),
(342, 33, 8, 'East', 160, 'BN-090', '858179423935', NULL, 13074.00, 13612.00, '-1.00', 0, NULL, '68EWzAYczOQBK', '2017-12-02 07:53:45', '2017-12-02 07:58:34'),
(343, 33, 8, 'East', 160, 'BN-090', '858179423935', NULL, 13074.00, 13612.00, '-1.00', 0, NULL, '68EWzAYczOQBK', '2017-12-02 07:53:45', '2017-12-02 07:58:34'),
(344, 33, 8, 'East', 160, 'BN-090', '858179423935', NULL, 13074.00, 13612.00, '1.00', 0, NULL, '68EWzAYczOQBK', '2017-12-02 07:53:45', '2017-12-02 07:53:45'),
(345, 33, 8, 'East', 160, 'BN-090', '858179423935', NULL, 13074.00, 13612.00, '1.00', 0, NULL, '68EWzAYczOQBK', '2017-12-02 07:53:45', '2017-12-02 07:53:45'),
(346, 33, 8, 'East', 160, 'BN-090', '858179423935', NULL, 13074.00, 13612.00, '1.00', 0, NULL, '68EWzAYczOQBK', '2017-12-02 07:53:45', '2017-12-02 07:53:45'),
(347, 33, 8, 'East', 160, 'BN-090', '858179423935', NULL, 13074.00, 13612.00, '1.00', 0, NULL, '68EWzAYczOQBK', '2017-12-02 07:53:45', '2017-12-02 07:53:45'),
(348, 33, 8, 'East', 160, 'BN-090', '858179423935', NULL, 13074.00, 13612.00, '1.00', 0, NULL, '68EWzAYczOQBK', '2017-12-02 07:53:45', '2017-12-02 07:53:45'),
(349, 33, 8, 'East', 160, 'BN-090', '858179423935', NULL, 13074.00, 13612.00, '1.00', 0, NULL, '68EWzAYczOQBK', '2017-12-02 07:53:45', '2017-12-02 07:53:45'),
(350, 33, 8, 'East', 160, 'BN-090', '858179423935', NULL, 13074.00, 13612.00, '1.00', 0, NULL, '68EWzAYczOQBK', '2017-12-02 07:53:45', '2017-12-02 07:53:45'),
(351, 33, 9, 'Port', 168, 'BN-196', '599161471236', NULL, 9712.00, 10561.00, '-3.00', 0, NULL, 'kRNV3xMCggRVA', '2017-12-02 07:53:45', '2017-12-02 07:56:55'),
(352, 33, 9, 'Port', 168, 'BN-196', '599161471236', NULL, 9712.00, 10561.00, '-1.00', 0, NULL, 'kRNV3xMCggRVA', '2017-12-02 07:53:45', '2017-12-02 07:56:55'),
(353, 33, 9, 'Port', 168, 'BN-196', '599161471236', NULL, 9712.00, 10561.00, '-1.00', 0, NULL, 'kRNV3xMCggRVA', '2017-12-02 07:53:45', '2017-12-02 07:56:55'),
(354, 33, 9, 'Port', 168, 'BN-196', '599161471236', NULL, 9712.00, 10561.00, '1.00', 0, NULL, 'kRNV3xMCggRVA', '2017-12-02 07:53:45', '2017-12-02 07:53:45'),
(355, 33, 9, 'Port', 168, 'BN-196', '599161471236', NULL, 9712.00, 10561.00, '1.00', 0, NULL, 'kRNV3xMCggRVA', '2017-12-02 07:53:45', '2017-12-02 07:53:45'),
(356, 33, 9, 'Port', 168, 'BN-196', '599161471236', NULL, 9712.00, 10561.00, '1.00', 0, NULL, 'kRNV3xMCggRVA', '2017-12-02 07:53:45', '2017-12-02 07:53:45'),
(357, 33, 9, 'Port', 168, 'BN-196', '599161471236', NULL, 9712.00, 10561.00, '1.00', 0, NULL, 'kRNV3xMCggRVA', '2017-12-02 07:53:46', '2017-12-02 07:53:46'),
(358, 33, 9, 'Port', 168, 'BN-196', '599161471236', NULL, 9712.00, 10561.00, '1.00', 0, NULL, 'kRNV3xMCggRVA', '2017-12-02 07:53:46', '2017-12-02 07:53:46'),
(359, 33, 9, 'Port', 168, 'BN-196', '599161471236', NULL, 9712.00, 10561.00, '1.00', 0, NULL, 'kRNV3xMCggRVA', '2017-12-02 07:53:46', '2017-12-02 07:53:46'),
(360, 34, 8, 'East', 159, 'BN-779', '958788326648', NULL, 18163.00, 18664.00, '-3.00', 0, NULL, 'RoQV942i3N546', '2017-12-02 07:53:46', '2017-12-02 07:58:11'),
(361, 34, 8, 'East', 159, 'BN-779', '958788326648', NULL, 18163.00, 18664.00, '-1.00', 0, NULL, 'RoQV942i3N546', '2017-12-02 07:53:46', '2017-12-02 07:58:11'),
(362, 34, 8, 'East', 159, 'BN-779', '958788326648', NULL, 18163.00, 18664.00, '0.00', 0, NULL, 'RoQV942i3N546', '2017-12-02 07:53:47', '2017-12-02 07:58:11'),
(363, 34, 8, 'East', 159, 'BN-779', '958788326648', NULL, 18163.00, 18664.00, '1.00', 0, NULL, 'RoQV942i3N546', '2017-12-02 07:53:47', '2017-12-02 07:53:47'),
(364, 34, 8, 'East', 159, 'BN-779', '958788326648', NULL, 18163.00, 18664.00, '1.00', 0, NULL, 'RoQV942i3N546', '2017-12-02 07:53:47', '2017-12-02 07:53:47'),
(365, 34, 8, 'East', 159, 'BN-779', '958788326648', NULL, 18163.00, 18664.00, '1.00', 0, NULL, 'RoQV942i3N546', '2017-12-02 07:53:47', '2017-12-02 07:53:47'),
(366, 34, 8, 'East', 159, 'BN-779', '958788326648', NULL, 18163.00, 18664.00, '1.00', 0, NULL, 'RoQV942i3N546', '2017-12-02 07:53:47', '2017-12-02 07:53:47'),
(367, 34, 8, 'East', 159, 'BN-779', '958788326648', NULL, 18163.00, 18664.00, '1.00', 0, NULL, 'RoQV942i3N546', '2017-12-02 07:53:47', '2017-12-02 07:53:47'),
(368, 35, 6, 'Port', 111, 'BN-356', '730497162188', NULL, 1909.00, 2254.00, '-5.00', 0, NULL, 'ZV5jj0KhGVwN7', '2017-12-02 07:53:48', '2017-12-02 07:58:06'),
(369, 35, 6, 'Port', 111, 'BN-356', '730497162188', NULL, 1909.00, 2254.00, '-1.00', 0, NULL, 'ZV5jj0KhGVwN7', '2017-12-02 07:53:48', '2017-12-02 07:58:06'),
(370, 35, 6, 'Port', 111, 'BN-356', '730497162188', NULL, 1909.00, 2254.00, '0.00', 0, NULL, 'ZV5jj0KhGVwN7', '2017-12-02 07:53:48', '2017-12-02 07:58:06'),
(371, 35, 6, 'Port', 111, 'BN-356', '730497162188', NULL, 1909.00, 2254.00, '1.00', 0, NULL, 'ZV5jj0KhGVwN7', '2017-12-02 07:53:48', '2017-12-02 07:53:48'),
(372, 35, 6, 'Port', 111, 'BN-356', '730497162188', NULL, 1909.00, 2254.00, '1.00', 0, NULL, 'ZV5jj0KhGVwN7', '2017-12-02 07:53:48', '2017-12-02 07:53:48'),
(373, 35, 6, 'Port', 111, 'BN-356', '730497162188', NULL, 1909.00, 2254.00, '1.00', 0, NULL, 'ZV5jj0KhGVwN7', '2017-12-02 07:53:48', '2017-12-02 07:53:48'),
(374, 35, 6, 'Port', 111, 'BN-356', '730497162188', NULL, 1909.00, 2254.00, '1.00', 0, NULL, 'ZV5jj0KhGVwN7', '2017-12-02 07:53:48', '2017-12-02 07:53:48'),
(375, 35, 6, 'Port', 111, 'BN-356', '730497162188', NULL, 1909.00, 2254.00, '1.00', 0, NULL, 'ZV5jj0KhGVwN7', '2017-12-02 07:53:48', '2017-12-02 07:53:48'),
(376, 35, 6, 'Port', 111, 'BN-356', '730497162188', NULL, 1909.00, 2254.00, '1.00', 0, NULL, 'ZV5jj0KhGVwN7', '2017-12-02 07:53:48', '2017-12-02 07:53:48'),
(377, 35, 6, 'Port', 111, 'BN-356', '730497162188', NULL, 1909.00, 2254.00, '1.00', 0, NULL, 'ZV5jj0KhGVwN7', '2017-12-02 07:53:48', '2017-12-02 07:53:48'),
(378, 35, 6, 'Port', 111, 'BN-356', '730497162188', NULL, 1909.00, 2254.00, '1.00', 0, NULL, 'ZV5jj0KhGVwN7', '2017-12-02 07:53:48', '2017-12-02 07:53:48'),
(379, 35, 6, 'Port', 111, 'BN-356', '730497162188', NULL, 1909.00, 2254.00, '1.00', 0, NULL, 'ZV5jj0KhGVwN7', '2017-12-02 07:53:48', '2017-12-02 07:53:48'),
(380, 36, 10, 'Lake', 182, 'BN-784', '638006417777', NULL, 11541.00, 11673.00, '-3.00', 1, 'aOYWUB9d', '0gED7NkfGrmVp6', '2017-12-02 07:53:50', '2017-12-02 08:00:21'),
(381, 36, 10, 'Lake', 182, 'BN-784', '638006417777', NULL, 11541.00, 11673.00, '0.00', 0, NULL, '0gED7NkfGrmVp6', '2017-12-02 07:53:50', '2017-12-02 07:57:55'),
(382, 36, 10, 'Lake', 182, 'BN-784', '638006417777', NULL, 11541.00, 11673.00, '1.00', 0, NULL, '0gED7NkfGrmVp6', '2017-12-02 07:53:50', '2017-12-02 07:53:50'),
(383, 36, 10, 'Lake', 182, 'BN-784', '638006417777', NULL, 11541.00, 11673.00, '1.00', 0, NULL, '0gED7NkfGrmVp6', '2017-12-02 07:53:50', '2017-12-02 07:53:50'),
(384, 36, 10, 'Lake', 182, 'BN-784', '638006417777', NULL, 11541.00, 11673.00, '1.00', 0, NULL, '0gED7NkfGrmVp6', '2017-12-02 07:53:50', '2017-12-02 07:53:50'),
(385, 36, 10, 'Lake', 182, 'BN-784', '638006417777', NULL, 11541.00, 11673.00, '1.00', 0, NULL, '0gED7NkfGrmVp6', '2017-12-02 07:53:50', '2017-12-02 07:53:50'),
(386, 36, 10, 'Lake', 182, 'BN-784', '638006417777', NULL, 11541.00, 11673.00, '1.00', 0, NULL, '0gED7NkfGrmVp6', '2017-12-02 07:53:50', '2017-12-02 07:53:50'),
(387, 36, 10, 'Lake', 182, 'BN-784', '638006417777', NULL, 11541.00, 11673.00, '1.00', 0, NULL, '0gED7NkfGrmVp6', '2017-12-02 07:53:50', '2017-12-02 07:53:50'),
(388, 36, 10, 'Lake', 182, 'BN-784', '638006417777', NULL, 11541.00, 11673.00, '1.00', 0, NULL, '0gED7NkfGrmVp6', '2017-12-02 07:53:50', '2017-12-02 07:53:50'),
(389, 36, 8, 'East', 156, 'BN-763', '955350742240', NULL, 6146.00, 6712.00, '1.00', 0, NULL, 'QW2ARDoHlzPg1', '2017-12-02 07:53:51', '2017-12-02 07:53:51'),
(390, 36, 8, 'East', 156, 'BN-763', '955350742240', NULL, 6146.00, 6712.00, '1.00', 0, NULL, 'QW2ARDoHlzPg1', '2017-12-02 07:53:51', '2017-12-02 07:53:51'),
(391, 36, 8, 'East', 156, 'BN-763', '955350742240', NULL, 6146.00, 6712.00, '1.00', 0, NULL, 'QW2ARDoHlzPg1', '2017-12-02 07:53:51', '2017-12-02 07:53:51'),
(392, 36, 8, 'East', 156, 'BN-763', '955350742240', NULL, 6146.00, 6712.00, '1.00', 0, NULL, 'QW2ARDoHlzPg1', '2017-12-02 07:53:51', '2017-12-02 07:53:51'),
(393, 36, 8, 'East', 156, 'BN-763', '955350742240', NULL, 6146.00, 6712.00, '1.00', 0, NULL, 'QW2ARDoHlzPg1', '2017-12-02 07:53:51', '2017-12-02 07:53:51'),
(394, 36, 8, 'East', 156, 'BN-763', '955350742240', NULL, 6146.00, 6712.00, '1.00', 0, NULL, 'QW2ARDoHlzPg1', '2017-12-02 07:53:51', '2017-12-02 07:53:51'),
(395, 36, 8, 'East', 156, 'BN-763', '955350742240', NULL, 6146.00, 6712.00, '1.00', 0, NULL, 'QW2ARDoHlzPg1', '2017-12-02 07:53:51', '2017-12-02 07:53:51'),
(396, 36, 8, 'East', 156, 'BN-763', '955350742240', NULL, 6146.00, 6712.00, '1.00', 0, NULL, 'QW2ARDoHlzPg1', '2017-12-02 07:53:51', '2017-12-02 07:53:51'),
(397, 36, 8, 'East', 156, 'BN-763', '955350742240', NULL, 6146.00, 6712.00, '1.00', 0, NULL, 'QW2ARDoHlzPg1', '2017-12-02 07:53:51', '2017-12-02 07:53:51'),
(398, 36, 3, 'New', 51, 'BN-830', '850913941798', NULL, 6893.00, 7462.00, '1.00', 1, 'eVmzsNrd', 'wpX8R3yFGGM5G9', '2017-12-02 07:53:51', '2017-12-02 08:00:26'),
(399, 36, 3, 'New', 51, 'BN-830', '850913941798', NULL, 6893.00, 7462.00, '1.00', 0, NULL, 'wpX8R3yFGGM5G9', '2017-12-02 07:53:51', '2017-12-02 07:53:51'),
(400, 36, 3, 'New', 51, 'BN-830', '850913941798', NULL, 6893.00, 7462.00, '1.00', 0, NULL, 'wpX8R3yFGGM5G9', '2017-12-02 07:53:51', '2017-12-02 07:53:51'),
(401, 36, 3, 'New', 51, 'BN-830', '850913941798', NULL, 6893.00, 7462.00, '1.00', 0, NULL, 'wpX8R3yFGGM5G9', '2017-12-02 07:53:51', '2017-12-02 07:53:51'),
(402, 36, 3, 'New', 51, 'BN-830', '850913941798', NULL, 6893.00, 7462.00, '1.00', 0, NULL, 'wpX8R3yFGGM5G9', '2017-12-02 07:53:51', '2017-12-02 07:53:51'),
(403, 36, 3, 'New', 51, 'BN-830', '850913941798', NULL, 6893.00, 7462.00, '1.00', 0, NULL, 'wpX8R3yFGGM5G9', '2017-12-02 07:53:51', '2017-12-02 07:53:51'),
(404, 36, 3, 'New', 51, 'BN-830', '850913941798', NULL, 6893.00, 7462.00, '1.00', 0, NULL, 'wpX8R3yFGGM5G9', '2017-12-02 07:53:51', '2017-12-02 07:53:51'),
(405, 36, 3, 'New', 51, 'BN-830', '850913941798', NULL, 6893.00, 7462.00, '1.00', 0, NULL, 'wpX8R3yFGGM5G9', '2017-12-02 07:53:51', '2017-12-02 07:53:51'),
(406, 36, 3, 'New', 51, 'BN-830', '850913941798', NULL, 6893.00, 7462.00, '1.00', 0, NULL, 'wpX8R3yFGGM5G9', '2017-12-02 07:53:51', '2017-12-02 07:53:51'),
(407, 36, 5, 'West', 100, 'BN-303', '850199911195', NULL, 16779.00, 17319.00, '1.00', 0, NULL, '2kjZWv6FM3mW5', '2017-12-02 07:53:52', '2017-12-02 07:53:52'),
(408, 36, 5, 'West', 100, 'BN-303', '850199911195', NULL, 16779.00, 17319.00, '1.00', 0, NULL, '2kjZWv6FM3mW5', '2017-12-02 07:53:52', '2017-12-02 07:53:52'),
(409, 36, 5, 'West', 100, 'BN-303', '850199911195', NULL, 16779.00, 17319.00, '1.00', 0, NULL, '2kjZWv6FM3mW5', '2017-12-02 07:53:52', '2017-12-02 07:53:52'),
(410, 36, 5, 'West', 100, 'BN-303', '850199911195', NULL, 16779.00, 17319.00, '1.00', 0, NULL, '2kjZWv6FM3mW5', '2017-12-02 07:53:52', '2017-12-02 07:53:52'),
(411, 36, 5, 'West', 100, 'BN-303', '850199911195', NULL, 16779.00, 17319.00, '1.00', 0, NULL, '2kjZWv6FM3mW5', '2017-12-02 07:53:52', '2017-12-02 07:53:52'),
(412, 36, 5, 'West', 100, 'BN-303', '850199911195', NULL, 16779.00, 17319.00, '1.00', 0, NULL, '2kjZWv6FM3mW5', '2017-12-02 07:53:52', '2017-12-02 07:53:52'),
(413, 36, 5, 'West', 100, 'BN-303', '850199911195', NULL, 16779.00, 17319.00, '1.00', 0, NULL, '2kjZWv6FM3mW5', '2017-12-02 07:53:52', '2017-12-02 07:53:52'),
(414, 36, 5, 'West', 100, 'BN-303', '850199911195', NULL, 16779.00, 17319.00, '1.00', 0, NULL, '2kjZWv6FM3mW5', '2017-12-02 07:53:52', '2017-12-02 07:53:52'),
(415, 36, 5, 'West', 100, 'BN-303', '850199911195', NULL, 16779.00, 17319.00, '1.00', 0, NULL, '2kjZWv6FM3mW5', '2017-12-02 07:53:52', '2017-12-02 07:53:52'),
(416, 40, 1, 'North', 1, 'BN-059', '204059986739', NULL, 19406.00, 19714.00, '-1.00', 0, NULL, 'O700Xj8flDz4R', '2017-12-02 07:53:54', '2017-12-02 07:58:27'),
(417, 40, 1, 'North', 1, 'BN-059', '204059986739', NULL, 19406.00, 19714.00, '0.00', 0, NULL, 'O700Xj8flDz4R', '2017-12-02 07:53:54', '2017-12-02 07:58:27'),
(418, 40, 1, 'North', 1, 'BN-059', '204059986739', NULL, 19406.00, 19714.00, '0.00', 0, NULL, 'O700Xj8flDz4R', '2017-12-02 07:53:54', '2017-12-02 07:58:27'),
(419, 40, 1, 'North', 1, 'BN-059', '204059986739', NULL, 19406.00, 19714.00, '1.00', 0, NULL, 'O700Xj8flDz4R', '2017-12-02 07:53:54', '2017-12-02 07:53:54'),
(420, 40, 1, 'North', 1, 'BN-059', '204059986739', NULL, 19406.00, 19714.00, '1.00', 0, NULL, 'O700Xj8flDz4R', '2017-12-02 07:53:54', '2017-12-02 07:53:54'),
(421, 40, 1, 'North', 1, 'BN-059', '204059986739', NULL, 19406.00, 19714.00, '1.00', 0, NULL, 'O700Xj8flDz4R', '2017-12-02 07:53:54', '2017-12-02 07:53:54'),
(422, 40, 1, 'North', 1, 'BN-059', '204059986739', NULL, 19406.00, 19714.00, '1.00', 0, NULL, 'O700Xj8flDz4R', '2017-12-02 07:53:54', '2017-12-02 07:53:54'),
(423, 40, 1, 'North', 1, 'BN-059', '204059986739', NULL, 19406.00, 19714.00, '1.00', 0, NULL, 'O700Xj8flDz4R', '2017-12-02 07:53:54', '2017-12-02 07:53:54'),
(424, 41, 1, 'North', 1, 'BN-059', '115875978542', NULL, 7521.00, 8004.00, '-6.00', 1, 'b2R4uY0b', 'G5DPXpOSn10OE', '2017-12-02 07:53:55', '2017-12-02 08:00:22'),
(425, 41, 1, 'North', 1, 'BN-059', '115875978542', NULL, 7521.00, 8004.00, '-2.00', 0, NULL, 'G5DPXpOSn10OE', '2017-12-02 07:53:55', '2017-12-02 07:57:55'),
(426, 41, 1, 'North', 1, 'BN-059', '115875978542', NULL, 7521.00, 8004.00, '-1.00', 0, NULL, 'G5DPXpOSn10OE', '2017-12-02 07:53:55', '2017-12-02 07:57:55'),
(427, 41, 1, 'North', 1, 'BN-059', '115875978542', NULL, 7521.00, 8004.00, '1.00', 0, NULL, 'G5DPXpOSn10OE', '2017-12-02 07:53:56', '2017-12-02 07:53:56'),
(428, 41, 1, 'North', 1, 'BN-059', '115875978542', NULL, 7521.00, 8004.00, '1.00', 0, NULL, 'G5DPXpOSn10OE', '2017-12-02 07:53:56', '2017-12-02 07:53:56'),
(429, 41, 1, 'North', 1, 'BN-059', '115875978542', NULL, 7521.00, 8004.00, '1.00', 0, NULL, 'G5DPXpOSn10OE', '2017-12-02 07:53:56', '2017-12-02 07:53:56'),
(430, 41, 1, 'North', 1, 'BN-059', '115875978542', NULL, 7521.00, 8004.00, '1.00', 0, NULL, 'G5DPXpOSn10OE', '2017-12-02 07:53:56', '2017-12-02 07:53:56'),
(431, 41, 1, 'North', 1, 'BN-059', '115875978542', NULL, 7521.00, 8004.00, '1.00', 0, NULL, 'G5DPXpOSn10OE', '2017-12-02 07:53:56', '2017-12-02 07:53:56'),
(432, 41, 1, 'North', 1, 'BN-059', '115875978542', NULL, 7521.00, 8004.00, '1.00', 0, NULL, 'G5DPXpOSn10OE', '2017-12-02 07:53:56', '2017-12-02 07:53:56'),
(433, 41, 1, 'North', 1, 'BN-059', '115875978542', NULL, 7521.00, 8004.00, '1.00', 0, NULL, 'G5DPXpOSn10OE', '2017-12-02 07:53:56', '2017-12-02 07:53:56'),
(434, 41, 1, 'North', 1, 'BN-059', '115875978542', NULL, 7521.00, 8004.00, '1.00', 0, NULL, 'G5DPXpOSn10OE', '2017-12-02 07:53:56', '2017-12-02 07:53:56'),
(435, 41, 1, 'North', 1, 'BN-059', '115875978542', NULL, 7521.00, 8004.00, '1.00', 0, NULL, 'G5DPXpOSn10OE', '2017-12-02 07:53:56', '2017-12-02 07:53:56'),
(436, 42, 5, 'West', 87, 'BN-665', '155048724859', NULL, 5354.00, 5911.00, '-7.00', 0, NULL, '5QRJmoKT1xZ4N', '2017-12-02 07:53:57', '2017-12-02 07:58:12'),
(437, 42, 5, 'West', 87, 'BN-665', '155048724859', NULL, 5354.00, 5911.00, '-2.00', 0, NULL, '5QRJmoKT1xZ4N', '2017-12-02 07:53:57', '2017-12-02 07:58:11'),
(438, 42, 5, 'West', 87, 'BN-665', '155048724859', NULL, 5354.00, 5911.00, '0.00', 0, NULL, '5QRJmoKT1xZ4N', '2017-12-02 07:53:57', '2017-12-02 07:56:39'),
(439, 42, 5, 'West', 87, 'BN-665', '155048724859', NULL, 5354.00, 5911.00, '1.00', 0, NULL, '5QRJmoKT1xZ4N', '2017-12-02 07:53:57', '2017-12-02 07:53:57'),
(440, 42, 5, 'West', 87, 'BN-665', '155048724859', NULL, 5354.00, 5911.00, '1.00', 0, NULL, '5QRJmoKT1xZ4N', '2017-12-02 07:53:57', '2017-12-02 07:53:57'),
(441, 42, 5, 'West', 87, 'BN-665', '155048724859', NULL, 5354.00, 5911.00, '1.00', 0, NULL, '5QRJmoKT1xZ4N', '2017-12-02 07:53:57', '2017-12-02 07:53:57'),
(442, 42, 5, 'West', 87, 'BN-665', '155048724859', NULL, 5354.00, 5911.00, '1.00', 0, NULL, '5QRJmoKT1xZ4N', '2017-12-02 07:53:57', '2017-12-02 07:53:57'),
(443, 42, 5, 'West', 87, 'BN-665', '155048724859', NULL, 5354.00, 5911.00, '1.00', 0, NULL, '5QRJmoKT1xZ4N', '2017-12-02 07:53:57', '2017-12-02 07:53:57'),
(444, 42, 5, 'West', 87, 'BN-665', '155048724859', NULL, 5354.00, 5911.00, '1.00', 0, NULL, '5QRJmoKT1xZ4N', '2017-12-02 07:53:57', '2017-12-02 07:53:57'),
(445, 42, 5, 'West', 87, 'BN-665', '155048724859', NULL, 5354.00, 5911.00, '1.00', 0, NULL, '5QRJmoKT1xZ4N', '2017-12-02 07:53:57', '2017-12-02 07:53:57'),
(446, 42, 5, 'West', 87, 'BN-665', '155048724859', NULL, 5354.00, 5911.00, '1.00', 0, NULL, '5QRJmoKT1xZ4N', '2017-12-02 07:53:58', '2017-12-02 07:53:58'),
(447, 42, 5, 'West', 87, 'BN-665', '155048724859', NULL, 5354.00, 5911.00, '1.00', 0, NULL, '5QRJmoKT1xZ4N', '2017-12-02 07:53:58', '2017-12-02 07:53:58'),
(448, 44, 2, 'South', 35, 'BN-052', '586052598745', NULL, 11824.00, 12276.00, '1.00', 1, 'e98NU4ld', 'ERklPrKT27VzA', '2017-12-02 07:53:59', '2017-12-02 08:00:26'),
(449, 44, 2, 'South', 35, 'BN-052', '586052598745', NULL, 11824.00, 12276.00, '1.00', 0, NULL, 'ERklPrKT27VzA', '2017-12-02 07:53:59', '2017-12-02 07:53:59'),
(450, 44, 2, 'South', 35, 'BN-052', '586052598745', NULL, 11824.00, 12276.00, '1.00', 0, NULL, 'ERklPrKT27VzA', '2017-12-02 07:53:59', '2017-12-02 07:53:59'),
(451, 44, 2, 'South', 35, 'BN-052', '586052598745', NULL, 11824.00, 12276.00, '1.00', 0, NULL, 'ERklPrKT27VzA', '2017-12-02 07:53:59', '2017-12-02 07:53:59'),
(452, 44, 2, 'South', 35, 'BN-052', '586052598745', NULL, 11824.00, 12276.00, '1.00', 0, NULL, 'ERklPrKT27VzA', '2017-12-02 07:53:59', '2017-12-02 07:53:59'),
(453, 44, 2, 'South', 35, 'BN-052', '586052598745', NULL, 11824.00, 12276.00, '1.00', 0, NULL, 'ERklPrKT27VzA', '2017-12-02 07:53:59', '2017-12-02 07:53:59'),
(454, 44, 2, 'South', 35, 'BN-052', '586052598745', NULL, 11824.00, 12276.00, '1.00', 0, NULL, 'ERklPrKT27VzA', '2017-12-02 07:53:59', '2017-12-02 07:53:59'),
(455, 44, 2, 'South', 35, 'BN-052', '586052598745', NULL, 11824.00, 12276.00, '1.00', 0, NULL, 'ERklPrKT27VzA', '2017-12-02 07:53:59', '2017-12-02 07:53:59'),
(456, 45, 1, 'North', 9, 'BN-971', '274821247894', NULL, 12419.00, 12667.00, '-3.00', 1, 'dG6wcB6b', 'XLXADA0FZ83y1', '2017-12-02 07:54:00', '2017-12-02 08:00:16'),
(457, 45, 1, 'North', 9, 'BN-971', '274821247894', NULL, 12419.00, 12667.00, '-1.00', 0, NULL, 'XLXADA0FZ83y1', '2017-12-02 07:54:00', '2017-12-02 07:57:59'),
(458, 45, 1, 'North', 9, 'BN-971', '274821247894', NULL, 12419.00, 12667.00, '0.00', 0, NULL, 'XLXADA0FZ83y1', '2017-12-02 07:54:00', '2017-12-02 07:57:12'),
(459, 45, 1, 'North', 9, 'BN-971', '274821247894', NULL, 12419.00, 12667.00, '1.00', 0, NULL, 'XLXADA0FZ83y1', '2017-12-02 07:54:00', '2017-12-02 07:54:00'),
(460, 45, 1, 'North', 9, 'BN-971', '274821247894', NULL, 12419.00, 12667.00, '1.00', 0, NULL, 'XLXADA0FZ83y1', '2017-12-02 07:54:00', '2017-12-02 07:54:00'),
(461, 45, 1, 'North', 9, 'BN-971', '274821247894', NULL, 12419.00, 12667.00, '1.00', 0, NULL, 'XLXADA0FZ83y1', '2017-12-02 07:54:00', '2017-12-02 07:54:00'),
(462, 45, 1, 'North', 9, 'BN-971', '274821247894', NULL, 12419.00, 12667.00, '1.00', 0, NULL, 'XLXADA0FZ83y1', '2017-12-02 07:54:00', '2017-12-02 07:54:00'),
(463, 45, 1, 'North', 9, 'BN-971', '274821247894', NULL, 12419.00, 12667.00, '1.00', 0, NULL, 'XLXADA0FZ83y1', '2017-12-02 07:54:00', '2017-12-02 07:54:00'),
(464, 45, 1, 'North', 9, 'BN-971', '274821247894', NULL, 12419.00, 12667.00, '1.00', 0, NULL, 'XLXADA0FZ83y1', '2017-12-02 07:54:00', '2017-12-02 07:54:00'),
(465, 45, 2, 'South', 29, 'BN-811', '532386342684', NULL, 2153.00, 2820.00, '-1.00', 1, '8bYDS1ja', 'MQ02n1Asx8W3p', '2017-12-02 07:54:00', '2017-12-02 08:00:10'),
(466, 45, 2, 'South', 29, 'BN-811', '532386342684', NULL, 2153.00, 2820.00, '0.00', 0, NULL, 'MQ02n1Asx8W3p', '2017-12-02 07:54:00', '2017-12-02 07:58:07'),
(467, 45, 2, 'South', 29, 'BN-811', '532386342684', NULL, 2153.00, 2820.00, '0.00', 0, NULL, 'MQ02n1Asx8W3p', '2017-12-02 07:54:00', '2017-12-02 07:58:07'),
(468, 45, 2, 'South', 29, 'BN-811', '532386342684', NULL, 2153.00, 2820.00, '1.00', 0, NULL, 'MQ02n1Asx8W3p', '2017-12-02 07:54:00', '2017-12-02 07:54:00'),
(469, 45, 2, 'South', 29, 'BN-811', '532386342684', NULL, 2153.00, 2820.00, '1.00', 0, NULL, 'MQ02n1Asx8W3p', '2017-12-02 07:54:00', '2017-12-02 07:54:00'),
(470, 45, 2, 'South', 29, 'BN-811', '532386342684', NULL, 2153.00, 2820.00, '1.00', 0, NULL, 'MQ02n1Asx8W3p', '2017-12-02 07:54:00', '2017-12-02 07:54:00'),
(471, 45, 2, 'South', 29, 'BN-811', '532386342684', NULL, 2153.00, 2820.00, '1.00', 0, NULL, 'MQ02n1Asx8W3p', '2017-12-02 07:54:00', '2017-12-02 07:54:00'),
(472, 45, 2, 'South', 29, 'BN-811', '532386342684', NULL, 2153.00, 2820.00, '1.00', 0, NULL, 'MQ02n1Asx8W3p', '2017-12-02 07:54:00', '2017-12-02 07:54:00'),
(473, 45, 2, 'South', 29, 'BN-811', '532386342684', NULL, 2153.00, 2820.00, '1.00', 0, NULL, 'MQ02n1Asx8W3p', '2017-12-02 07:54:01', '2017-12-02 07:54:01'),
(474, 45, 1, 'North', 1, 'BN-059', '217467005565', NULL, 7990.00, 8380.00, '-1.00', 1, 'ejZNsrZe', 'Qnp1wENtGKJYV', '2017-12-02 07:54:01', '2017-12-02 08:00:39'),
(475, 45, 1, 'North', 1, 'BN-059', '217467005565', NULL, 7990.00, 8380.00, '0.00', 0, NULL, 'Qnp1wENtGKJYV', '2017-12-02 07:54:01', '2017-12-02 07:57:54'),
(476, 45, 1, 'North', 1, 'BN-059', '217467005565', NULL, 7990.00, 8380.00, '1.00', 0, NULL, 'Qnp1wENtGKJYV', '2017-12-02 07:54:01', '2017-12-02 07:54:01'),
(477, 45, 1, 'North', 1, 'BN-059', '217467005565', NULL, 7990.00, 8380.00, '1.00', 0, NULL, 'Qnp1wENtGKJYV', '2017-12-02 07:54:01', '2017-12-02 07:54:01'),
(478, 45, 1, 'North', 1, 'BN-059', '217467005565', NULL, 7990.00, 8380.00, '1.00', 0, NULL, 'Qnp1wENtGKJYV', '2017-12-02 07:54:01', '2017-12-02 07:54:01'),
(479, 45, 1, 'North', 1, 'BN-059', '217467005565', NULL, 7990.00, 8380.00, '1.00', 0, NULL, 'Qnp1wENtGKJYV', '2017-12-02 07:54:01', '2017-12-02 07:54:01'),
(480, 45, 1, 'North', 1, 'BN-059', '217467005565', NULL, 7990.00, 8380.00, '1.00', 0, NULL, 'Qnp1wENtGKJYV', '2017-12-02 07:54:01', '2017-12-02 07:54:01'),
(481, 45, 1, 'North', 1, 'BN-059', '217467005565', NULL, 7990.00, 8380.00, '1.00', 0, NULL, 'Qnp1wENtGKJYV', '2017-12-02 07:54:01', '2017-12-02 07:54:01'),
(482, 45, 1, 'North', 1, 'BN-059', '217467005565', NULL, 7990.00, 8380.00, '1.00', 0, NULL, 'Qnp1wENtGKJYV', '2017-12-02 07:54:01', '2017-12-02 07:54:01'),
(483, 45, 1, 'North', 1, 'BN-059', '217467005565', NULL, 7990.00, 8380.00, '1.00', 0, NULL, 'Qnp1wENtGKJYV', '2017-12-02 07:54:02', '2017-12-02 07:54:02'),
(484, 45, 8, 'East', 152, 'BN-236', '437263869608', NULL, 7745.00, 8373.00, '-1.00', 0, NULL, 'NkB4lvKiWwvRD', '2017-12-02 07:54:02', '2017-12-02 07:58:24'),
(485, 45, 8, 'East', 152, 'BN-236', '437263869608', NULL, 7745.00, 8373.00, '0.00', 0, NULL, 'NkB4lvKiWwvRD', '2017-12-02 07:54:02', '2017-12-02 07:58:23'),
(486, 45, 8, 'East', 152, 'BN-236', '437263869608', NULL, 7745.00, 8373.00, '1.00', 0, NULL, 'NkB4lvKiWwvRD', '2017-12-02 07:54:02', '2017-12-02 07:54:02'),
(487, 45, 8, 'East', 152, 'BN-236', '437263869608', NULL, 7745.00, 8373.00, '1.00', 0, NULL, 'NkB4lvKiWwvRD', '2017-12-02 07:54:02', '2017-12-02 07:54:02'),
(488, 45, 8, 'East', 152, 'BN-236', '437263869608', NULL, 7745.00, 8373.00, '1.00', 0, NULL, 'NkB4lvKiWwvRD', '2017-12-02 07:54:02', '2017-12-02 07:54:02'),
(489, 45, 8, 'East', 152, 'BN-236', '437263869608', NULL, 7745.00, 8373.00, '1.00', 0, NULL, 'NkB4lvKiWwvRD', '2017-12-02 07:54:02', '2017-12-02 07:54:02'),
(490, 45, 8, 'East', 152, 'BN-236', '437263869608', NULL, 7745.00, 8373.00, '1.00', 0, NULL, 'NkB4lvKiWwvRD', '2017-12-02 07:54:02', '2017-12-02 07:54:02'),
(491, 45, 8, 'East', 152, 'BN-236', '437263869608', NULL, 7745.00, 8373.00, '1.00', 0, NULL, 'NkB4lvKiWwvRD', '2017-12-02 07:54:02', '2017-12-02 07:54:02'),
(492, 45, 8, 'East', 152, 'BN-236', '437263869608', NULL, 7745.00, 8373.00, '1.00', 0, NULL, 'NkB4lvKiWwvRD', '2017-12-02 07:54:02', '2017-12-02 07:54:02'),
(493, 45, 8, 'East', 152, 'BN-236', '437263869608', NULL, 7745.00, 8373.00, '1.00', 0, NULL, 'NkB4lvKiWwvRD', '2017-12-02 07:54:02', '2017-12-02 07:54:02'),
(494, 45, 8, 'East', 152, 'BN-236', '437263869608', NULL, 7745.00, 8373.00, '1.00', 0, NULL, 'NkB4lvKiWwvRD', '2017-12-02 07:54:02', '2017-12-02 07:54:02'),
(495, 46, 5, 'West', 93, 'BN-420', '277178012887', NULL, 13107.00, 13937.00, '-3.00', 0, NULL, 'M84N32pS9rJBq', '2017-12-02 07:54:03', '2017-12-02 07:57:40'),
(496, 46, 5, 'West', 93, 'BN-420', '277178012887', NULL, 13107.00, 13937.00, '-1.00', 0, NULL, 'M84N32pS9rJBq', '2017-12-02 07:54:03', '2017-12-02 07:57:40'),
(497, 46, 5, 'West', 93, 'BN-420', '277178012887', NULL, 13107.00, 13937.00, '0.00', 0, NULL, 'M84N32pS9rJBq', '2017-12-02 07:54:03', '2017-12-02 07:57:40'),
(498, 46, 5, 'West', 93, 'BN-420', '277178012887', NULL, 13107.00, 13937.00, '1.00', 0, NULL, 'M84N32pS9rJBq', '2017-12-02 07:54:03', '2017-12-02 07:54:03'),
(499, 46, 5, 'West', 93, 'BN-420', '277178012887', NULL, 13107.00, 13937.00, '1.00', 0, NULL, 'M84N32pS9rJBq', '2017-12-02 07:54:03', '2017-12-02 07:54:03'),
(500, 46, 5, 'West', 93, 'BN-420', '277178012887', NULL, 13107.00, 13937.00, '1.00', 0, NULL, 'M84N32pS9rJBq', '2017-12-02 07:54:03', '2017-12-02 07:54:03'),
(501, 46, 5, 'West', 93, 'BN-420', '277178012887', NULL, 13107.00, 13937.00, '1.00', 0, NULL, 'M84N32pS9rJBq', '2017-12-02 07:54:03', '2017-12-02 07:54:03'),
(502, 46, 5, 'West', 93, 'BN-420', '277178012887', NULL, 13107.00, 13937.00, '1.00', 0, NULL, 'M84N32pS9rJBq', '2017-12-02 07:54:03', '2017-12-02 07:54:03'),
(503, 46, 5, 'West', 93, 'BN-420', '277178012887', NULL, 13107.00, 13937.00, '1.00', 0, NULL, 'M84N32pS9rJBq', '2017-12-02 07:54:03', '2017-12-02 07:54:03'),
(504, 46, 5, 'West', 93, 'BN-420', '277178012887', NULL, 13107.00, 13937.00, '1.00', 0, NULL, 'M84N32pS9rJBq', '2017-12-02 07:54:03', '2017-12-02 07:54:03'),
(505, 46, 5, 'West', 93, 'BN-420', '277178012887', NULL, 13107.00, 13937.00, '1.00', 0, NULL, 'M84N32pS9rJBq', '2017-12-02 07:54:03', '2017-12-02 07:54:03'),
(506, 46, 5, 'West', 93, 'BN-420', '277178012887', NULL, 13107.00, 13937.00, '1.00', 0, NULL, 'M84N32pS9rJBq', '2017-12-02 07:54:03', '2017-12-02 07:54:03'),
(507, 47, 8, 'East', 146, 'BN-899', '571381048467', NULL, 12389.00, 13021.00, '-3.00', 0, NULL, '31m1Zwpup2ERLD', '2017-12-02 07:54:04', '2017-12-02 07:58:30'),
(508, 47, 8, 'East', 146, 'BN-899', '571381048467', NULL, 12389.00, 13021.00, '-1.00', 0, NULL, '31m1Zwpup2ERLD', '2017-12-02 07:54:04', '2017-12-02 07:58:30'),
(509, 47, 8, 'East', 146, 'BN-899', '571381048467', NULL, 12389.00, 13021.00, '-1.00', 0, NULL, '31m1Zwpup2ERLD', '2017-12-02 07:54:04', '2017-12-02 07:58:30'),
(510, 47, 8, 'East', 146, 'BN-899', '571381048467', NULL, 12389.00, 13021.00, '1.00', 0, NULL, '31m1Zwpup2ERLD', '2017-12-02 07:54:04', '2017-12-02 07:54:04'),
(511, 47, 8, 'East', 146, 'BN-899', '571381048467', NULL, 12389.00, 13021.00, '1.00', 0, NULL, '31m1Zwpup2ERLD', '2017-12-02 07:54:04', '2017-12-02 07:54:04'),
(512, 47, 8, 'East', 146, 'BN-899', '571381048467', NULL, 12389.00, 13021.00, '1.00', 0, NULL, '31m1Zwpup2ERLD', '2017-12-02 07:54:04', '2017-12-02 07:54:04'),
(513, 47, 8, 'East', 146, 'BN-899', '571381048467', NULL, 12389.00, 13021.00, '1.00', 0, NULL, '31m1Zwpup2ERLD', '2017-12-02 07:54:04', '2017-12-02 07:54:04'),
(514, 47, 8, 'East', 146, 'BN-899', '571381048467', NULL, 12389.00, 13021.00, '1.00', 0, NULL, '31m1Zwpup2ERLD', '2017-12-02 07:54:04', '2017-12-02 07:54:04'),
(515, 47, 8, 'East', 146, 'BN-899', '571381048467', NULL, 12389.00, 13021.00, '1.00', 0, NULL, '31m1Zwpup2ERLD', '2017-12-02 07:54:04', '2017-12-02 07:54:04'),
(516, 47, 10, 'Lake', 197, 'BN-701', '530604455789', NULL, 3980.00, 4876.00, '-1.00', 0, NULL, 'GvX8Oo5HYXEJE', '2017-12-02 07:54:04', '2017-12-02 07:56:56'),
(517, 47, 10, 'Lake', 197, 'BN-701', '530604455789', NULL, 3980.00, 4876.00, '0.00', 0, NULL, 'GvX8Oo5HYXEJE', '2017-12-02 07:54:04', '2017-12-02 07:56:56'),
(518, 47, 10, 'Lake', 197, 'BN-701', '530604455789', NULL, 3980.00, 4876.00, '0.00', 0, NULL, 'GvX8Oo5HYXEJE', '2017-12-02 07:54:04', '2017-12-02 07:56:56'),
(519, 47, 10, 'Lake', 197, 'BN-701', '530604455789', NULL, 3980.00, 4876.00, '1.00', 0, NULL, 'GvX8Oo5HYXEJE', '2017-12-02 07:54:04', '2017-12-02 07:54:04'),
(520, 47, 10, 'Lake', 197, 'BN-701', '530604455789', NULL, 3980.00, 4876.00, '1.00', 0, NULL, 'GvX8Oo5HYXEJE', '2017-12-02 07:54:05', '2017-12-02 07:54:05'),
(521, 47, 10, 'Lake', 197, 'BN-701', '530604455789', NULL, 3980.00, 4876.00, '1.00', 0, NULL, 'GvX8Oo5HYXEJE', '2017-12-02 07:54:05', '2017-12-02 07:54:05'),
(522, 47, 10, 'Lake', 197, 'BN-701', '530604455789', NULL, 3980.00, 4876.00, '1.00', 0, NULL, 'GvX8Oo5HYXEJE', '2017-12-02 07:54:05', '2017-12-02 07:54:05'),
(523, 47, 10, 'Lake', 197, 'BN-701', '530604455789', NULL, 3980.00, 4876.00, '1.00', 0, NULL, 'GvX8Oo5HYXEJE', '2017-12-02 07:54:05', '2017-12-02 07:54:05'),
(524, 47, 10, 'Lake', 197, 'BN-701', '530604455789', NULL, 3980.00, 4876.00, '1.00', 0, NULL, 'GvX8Oo5HYXEJE', '2017-12-02 07:54:05', '2017-12-02 07:54:05'),
(525, 47, 3, 'New', 55, 'BN-751', '141937453122', NULL, 19123.00, 19279.00, '-5.00', 1, '7aAkfOQd', 'wmX7y6MU1Xxk1', '2017-12-02 07:54:05', '2017-12-02 08:00:11'),
(526, 47, 3, 'New', 55, 'BN-751', '141937453122', NULL, 19123.00, 19279.00, '-1.00', 0, NULL, 'wmX7y6MU1Xxk1', '2017-12-02 07:54:05', '2017-12-02 07:58:21'),
(527, 47, 3, 'New', 55, 'BN-751', '141937453122', NULL, 19123.00, 19279.00, '-1.00', 0, NULL, 'wmX7y6MU1Xxk1', '2017-12-02 07:54:05', '2017-12-02 07:58:21'),
(528, 47, 3, 'New', 55, 'BN-751', '141937453122', NULL, 19123.00, 19279.00, '1.00', 0, NULL, 'wmX7y6MU1Xxk1', '2017-12-02 07:54:05', '2017-12-02 07:54:05'),
(529, 47, 3, 'New', 55, 'BN-751', '141937453122', NULL, 19123.00, 19279.00, '1.00', 0, NULL, 'wmX7y6MU1Xxk1', '2017-12-02 07:54:05', '2017-12-02 07:54:05'),
(530, 47, 3, 'New', 55, 'BN-751', '141937453122', NULL, 19123.00, 19279.00, '1.00', 0, NULL, 'wmX7y6MU1Xxk1', '2017-12-02 07:54:05', '2017-12-02 07:54:05'),
(531, 47, 3, 'New', 55, 'BN-751', '141937453122', NULL, 19123.00, 19279.00, '1.00', 0, NULL, 'wmX7y6MU1Xxk1', '2017-12-02 07:54:05', '2017-12-02 07:54:05'),
(532, 47, 3, 'New', 55, 'BN-751', '141937453122', NULL, 19123.00, 19279.00, '1.00', 0, NULL, 'wmX7y6MU1Xxk1', '2017-12-02 07:54:05', '2017-12-02 07:54:05'),
(533, 47, 3, 'New', 55, 'BN-751', '141937453122', NULL, 19123.00, 19279.00, '1.00', 0, NULL, 'wmX7y6MU1Xxk1', '2017-12-02 07:54:06', '2017-12-02 07:54:06'),
(534, 47, 3, 'New', 55, 'BN-751', '141937453122', NULL, 19123.00, 19279.00, '1.00', 0, NULL, 'wmX7y6MU1Xxk1', '2017-12-02 07:54:06', '2017-12-02 07:54:06'),
(535, 47, 3, 'New', 50, 'BN-780', '323078853577', NULL, 19109.00, 19604.00, '1.00', 0, NULL, '2xQB44BH15OY2', '2017-12-02 07:54:06', '2017-12-02 07:54:06'),
(536, 47, 3, 'New', 50, 'BN-780', '323078853577', NULL, 19109.00, 19604.00, '1.00', 0, NULL, '2xQB44BH15OY2', '2017-12-02 07:54:06', '2017-12-02 07:54:06'),
(537, 47, 3, 'New', 50, 'BN-780', '323078853577', NULL, 19109.00, 19604.00, '1.00', 0, NULL, '2xQB44BH15OY2', '2017-12-02 07:54:06', '2017-12-02 07:54:06'),
(538, 47, 3, 'New', 50, 'BN-780', '323078853577', NULL, 19109.00, 19604.00, '1.00', 0, NULL, '2xQB44BH15OY2', '2017-12-02 07:54:06', '2017-12-02 07:54:06'),
(539, 47, 3, 'New', 50, 'BN-780', '323078853577', NULL, 19109.00, 19604.00, '1.00', 0, NULL, '2xQB44BH15OY2', '2017-12-02 07:54:06', '2017-12-02 07:54:06'),
(540, 47, 3, 'New', 50, 'BN-780', '323078853577', NULL, 19109.00, 19604.00, '1.00', 0, NULL, '2xQB44BH15OY2', '2017-12-02 07:54:06', '2017-12-02 07:54:06'),
(541, 47, 3, 'New', 50, 'BN-780', '323078853577', NULL, 19109.00, 19604.00, '1.00', 0, NULL, '2xQB44BH15OY2', '2017-12-02 07:54:06', '2017-12-02 07:54:06'),
(542, 47, 3, 'New', 50, 'BN-780', '323078853577', NULL, 19109.00, 19604.00, '1.00', 0, NULL, '2xQB44BH15OY2', '2017-12-02 07:54:06', '2017-12-02 07:54:06'),
(543, 47, 3, 'New', 50, 'BN-780', '323078853577', NULL, 19109.00, 19604.00, '1.00', 0, NULL, '2xQB44BH15OY2', '2017-12-02 07:54:06', '2017-12-02 07:54:06'),
(544, 48, 5, 'West', 87, 'BN-665', '370308268885', NULL, 17453.00, 18212.00, '-1.00', 1, 'dyPwCqob', 'vg16AOnTpJnK7', '2017-12-02 07:54:07', '2017-12-02 08:00:15'),
(545, 48, 5, 'West', 87, 'BN-665', '370308268885', NULL, 17453.00, 18212.00, '0.00', 0, NULL, 'vg16AOnTpJnK7', '2017-12-02 07:54:08', '2017-12-02 07:57:38'),
(546, 48, 5, 'West', 87, 'BN-665', '370308268885', NULL, 17453.00, 18212.00, '0.00', 0, NULL, 'vg16AOnTpJnK7', '2017-12-02 07:54:08', '2017-12-02 07:57:38'),
(547, 48, 5, 'West', 87, 'BN-665', '370308268885', NULL, 17453.00, 18212.00, '1.00', 0, NULL, 'vg16AOnTpJnK7', '2017-12-02 07:54:08', '2017-12-02 07:54:08'),
(548, 48, 5, 'West', 87, 'BN-665', '370308268885', NULL, 17453.00, 18212.00, '1.00', 0, NULL, 'vg16AOnTpJnK7', '2017-12-02 07:54:08', '2017-12-02 07:54:08'),
(549, 48, 5, 'West', 87, 'BN-665', '370308268885', NULL, 17453.00, 18212.00, '1.00', 0, NULL, 'vg16AOnTpJnK7', '2017-12-02 07:54:08', '2017-12-02 07:54:08'),
(550, 48, 5, 'West', 87, 'BN-665', '370308268885', NULL, 17453.00, 18212.00, '1.00', 0, NULL, 'vg16AOnTpJnK7', '2017-12-02 07:54:08', '2017-12-02 07:54:08'),
(551, 48, 5, 'West', 87, 'BN-665', '370308268885', NULL, 17453.00, 18212.00, '1.00', 0, NULL, 'vg16AOnTpJnK7', '2017-12-02 07:54:08', '2017-12-02 07:54:08'),
(552, 48, 5, 'West', 87, 'BN-665', '370308268885', NULL, 17453.00, 18212.00, '1.00', 0, NULL, 'vg16AOnTpJnK7', '2017-12-02 07:54:08', '2017-12-02 07:54:08'),
(553, 48, 5, 'West', 87, 'BN-665', '370308268885', NULL, 17453.00, 18212.00, '1.00', 0, NULL, 'vg16AOnTpJnK7', '2017-12-02 07:54:09', '2017-12-02 07:54:09'),
(554, 48, 5, 'West', 87, 'BN-665', '370308268885', NULL, 17453.00, 18212.00, '1.00', 0, NULL, 'vg16AOnTpJnK7', '2017-12-02 07:54:09', '2017-12-02 07:54:09'),
(555, 48, 5, 'West', 87, 'BN-665', '370308268885', NULL, 17453.00, 18212.00, '1.00', 0, NULL, 'vg16AOnTpJnK7', '2017-12-02 07:54:09', '2017-12-02 07:54:09'),
(556, 49, 4, 'North', 79, 'BN-554', '587085335727', NULL, 10658.00, 11022.00, '1.00', 1, 'bk5xFLPe', '3Qvj4DnTNkKlX', '2017-12-02 07:54:09', '2017-12-02 08:00:27'),
(557, 49, 4, 'North', 79, 'BN-554', '587085335727', NULL, 10658.00, 11022.00, '1.00', 0, NULL, '3Qvj4DnTNkKlX', '2017-12-02 07:54:09', '2017-12-02 07:54:09'),
(558, 49, 4, 'North', 79, 'BN-554', '587085335727', NULL, 10658.00, 11022.00, '1.00', 0, NULL, '3Qvj4DnTNkKlX', '2017-12-02 07:54:09', '2017-12-02 07:54:09'),
(559, 49, 4, 'North', 79, 'BN-554', '587085335727', NULL, 10658.00, 11022.00, '1.00', 0, NULL, '3Qvj4DnTNkKlX', '2017-12-02 07:54:09', '2017-12-02 07:54:09'),
(560, 49, 4, 'North', 79, 'BN-554', '587085335727', NULL, 10658.00, 11022.00, '1.00', 0, NULL, '3Qvj4DnTNkKlX', '2017-12-02 07:54:09', '2017-12-02 07:54:09'),
(561, 49, 4, 'North', 79, 'BN-554', '587085335727', NULL, 10658.00, 11022.00, '1.00', 0, NULL, '3Qvj4DnTNkKlX', '2017-12-02 07:54:09', '2017-12-02 07:54:09'),
(562, 49, 4, 'North', 79, 'BN-554', '587085335727', NULL, 10658.00, 11022.00, '1.00', 0, NULL, '3Qvj4DnTNkKlX', '2017-12-02 07:54:09', '2017-12-02 07:54:09'),
(563, 49, 4, 'North', 79, 'BN-554', '587085335727', NULL, 10658.00, 11022.00, '1.00', 0, NULL, '3Qvj4DnTNkKlX', '2017-12-02 07:54:09', '2017-12-02 07:54:09'),
(564, 51, 7, 'North', 121, 'BN-996', '324317105365', NULL, 9028.00, 9778.00, '1.00', 1, 'bmZ2Sz2d', 'ZYLNzqDul8yqV', '2017-12-02 07:54:11', '2017-12-02 08:00:16'),
(565, 51, 7, 'North', 121, 'BN-996', '324317105365', NULL, 9028.00, 9778.00, '1.00', 0, NULL, 'ZYLNzqDul8yqV', '2017-12-02 07:54:12', '2017-12-02 07:54:12'),
(566, 51, 7, 'North', 121, 'BN-996', '324317105365', NULL, 9028.00, 9778.00, '1.00', 0, NULL, 'ZYLNzqDul8yqV', '2017-12-02 07:54:12', '2017-12-02 07:54:12'),
(567, 51, 7, 'North', 121, 'BN-996', '324317105365', NULL, 9028.00, 9778.00, '1.00', 0, NULL, 'ZYLNzqDul8yqV', '2017-12-02 07:54:12', '2017-12-02 07:54:12'),
(568, 51, 7, 'North', 121, 'BN-996', '324317105365', NULL, 9028.00, 9778.00, '1.00', 0, NULL, 'ZYLNzqDul8yqV', '2017-12-02 07:54:12', '2017-12-02 07:54:12'),
(569, 51, 7, 'North', 121, 'BN-996', '324317105365', NULL, 9028.00, 9778.00, '1.00', 0, NULL, 'ZYLNzqDul8yqV', '2017-12-02 07:54:12', '2017-12-02 07:54:12'),
(570, 51, 7, 'North', 121, 'BN-996', '324317105365', NULL, 9028.00, 9778.00, '1.00', 0, NULL, 'ZYLNzqDul8yqV', '2017-12-02 07:54:12', '2017-12-02 07:54:12'),
(571, 51, 7, 'North', 121, 'BN-996', '324317105365', NULL, 9028.00, 9778.00, '1.00', 0, NULL, 'ZYLNzqDul8yqV', '2017-12-02 07:54:12', '2017-12-02 07:54:12'),
(572, 51, 7, 'North', 121, 'BN-996', '324317105365', NULL, 9028.00, 9778.00, '1.00', 0, NULL, 'ZYLNzqDul8yqV', '2017-12-02 07:54:12', '2017-12-02 07:54:12'),
(573, 51, 7, 'North', 121, 'BN-996', '324317105365', NULL, 9028.00, 9778.00, '1.00', 0, NULL, 'ZYLNzqDul8yqV', '2017-12-02 07:54:13', '2017-12-02 07:54:13'),
(574, 51, 7, 'North', 121, 'BN-996', '324317105365', NULL, 9028.00, 9778.00, '1.00', 0, NULL, 'ZYLNzqDul8yqV', '2017-12-02 07:54:13', '2017-12-02 07:54:13'),
(575, 51, 7, 'North', 121, 'BN-996', '324317105365', NULL, 9028.00, 9778.00, '1.00', 0, NULL, 'ZYLNzqDul8yqV', '2017-12-02 07:54:13', '2017-12-02 07:54:13'),
(576, 52, 4, 'North', 65, 'BN-684', '939113543800', NULL, 1848.00, 2320.00, '-1.00', 1, 'oejwTpVa', 'NxKOroRfoyvDw', '2017-12-02 07:54:13', '2017-12-02 08:00:10'),
(577, 52, 4, 'North', 65, 'BN-684', '939113543800', NULL, 1848.00, 2320.00, '1.00', 0, NULL, 'NxKOroRfoyvDw', '2017-12-02 07:54:14', '2017-12-02 07:54:14'),
(578, 52, 4, 'North', 65, 'BN-684', '939113543800', NULL, 1848.00, 2320.00, '1.00', 0, NULL, 'NxKOroRfoyvDw', '2017-12-02 07:54:14', '2017-12-02 07:54:14'),
(579, 52, 4, 'North', 65, 'BN-684', '939113543800', NULL, 1848.00, 2320.00, '1.00', 0, NULL, 'NxKOroRfoyvDw', '2017-12-02 07:54:14', '2017-12-02 07:54:14'),
(580, 52, 4, 'North', 65, 'BN-684', '939113543800', NULL, 1848.00, 2320.00, '1.00', 0, NULL, 'NxKOroRfoyvDw', '2017-12-02 07:54:14', '2017-12-02 07:54:14'),
(581, 52, 4, 'North', 65, 'BN-684', '939113543800', NULL, 1848.00, 2320.00, '1.00', 0, NULL, 'NxKOroRfoyvDw', '2017-12-02 07:54:14', '2017-12-02 07:54:14'),
(582, 52, 4, 'North', 65, 'BN-684', '939113543800', NULL, 1848.00, 2320.00, '1.00', 0, NULL, 'NxKOroRfoyvDw', '2017-12-02 07:54:14', '2017-12-02 07:54:14'),
(583, 52, 4, 'North', 65, 'BN-684', '939113543800', NULL, 1848.00, 2320.00, '1.00', 0, NULL, 'NxKOroRfoyvDw', '2017-12-02 07:54:14', '2017-12-02 07:54:14'),
(584, 54, 3, 'New', 55, 'BN-751', '842979826256', NULL, 7538.00, 7986.00, '1.00', 0, NULL, 'G6qw3g9s1O9yBw', '2017-12-02 07:54:16', '2017-12-02 07:54:16'),
(585, 54, 3, 'New', 55, 'BN-751', '842979826256', NULL, 7538.00, 7986.00, '1.00', 0, NULL, 'G6qw3g9s1O9yBw', '2017-12-02 07:54:16', '2017-12-02 07:54:16'),
(586, 54, 3, 'New', 55, 'BN-751', '842979826256', NULL, 7538.00, 7986.00, '1.00', 0, NULL, 'G6qw3g9s1O9yBw', '2017-12-02 07:54:16', '2017-12-02 07:54:16'),
(587, 54, 3, 'New', 55, 'BN-751', '842979826256', NULL, 7538.00, 7986.00, '1.00', 0, NULL, 'G6qw3g9s1O9yBw', '2017-12-02 07:54:16', '2017-12-02 07:54:16'),
(588, 54, 3, 'New', 55, 'BN-751', '842979826256', NULL, 7538.00, 7986.00, '1.00', 0, NULL, 'G6qw3g9s1O9yBw', '2017-12-02 07:54:16', '2017-12-02 07:54:16'),
(589, 54, 3, 'New', 55, 'BN-751', '842979826256', NULL, 7538.00, 7986.00, '1.00', 0, NULL, 'G6qw3g9s1O9yBw', '2017-12-02 07:54:16', '2017-12-02 07:54:16'),
(590, 54, 3, 'New', 55, 'BN-751', '842979826256', NULL, 7538.00, 7986.00, '1.00', 0, NULL, 'G6qw3g9s1O9yBw', '2017-12-02 07:54:16', '2017-12-02 07:54:16'),
(591, 54, 3, 'New', 55, 'BN-751', '842979826256', NULL, 7538.00, 7986.00, '1.00', 0, NULL, 'G6qw3g9s1O9yBw', '2017-12-02 07:54:16', '2017-12-02 07:54:16'),
(592, 54, 3, 'New', 55, 'BN-751', '842979826256', NULL, 7538.00, 7986.00, '1.00', 0, NULL, 'G6qw3g9s1O9yBw', '2017-12-02 07:54:16', '2017-12-02 07:54:16'),
(593, 54, 4, 'North', 77, 'BN-804', '570190073295', NULL, 8606.00, 9082.00, '1.00', 0, NULL, 'ERQNrn7ingJAn', '2017-12-02 07:54:16', '2017-12-02 07:54:16'),
(594, 54, 4, 'North', 77, 'BN-804', '570190073295', NULL, 8606.00, 9082.00, '1.00', 0, NULL, 'ERQNrn7ingJAn', '2017-12-02 07:54:16', '2017-12-02 07:54:16'),
(595, 54, 4, 'North', 77, 'BN-804', '570190073295', NULL, 8606.00, 9082.00, '1.00', 0, NULL, 'ERQNrn7ingJAn', '2017-12-02 07:54:16', '2017-12-02 07:54:16'),
(596, 54, 4, 'North', 77, 'BN-804', '570190073295', NULL, 8606.00, 9082.00, '1.00', 0, NULL, 'ERQNrn7ingJAn', '2017-12-02 07:54:17', '2017-12-02 07:54:17'),
(597, 54, 4, 'North', 77, 'BN-804', '570190073295', NULL, 8606.00, 9082.00, '1.00', 0, NULL, 'ERQNrn7ingJAn', '2017-12-02 07:54:17', '2017-12-02 07:54:17'),
(598, 54, 4, 'North', 77, 'BN-804', '570190073295', NULL, 8606.00, 9082.00, '1.00', 0, NULL, 'ERQNrn7ingJAn', '2017-12-02 07:54:17', '2017-12-02 07:54:17'),
(599, 54, 4, 'North', 77, 'BN-804', '570190073295', NULL, 8606.00, 9082.00, '1.00', 0, NULL, 'ERQNrn7ingJAn', '2017-12-02 07:54:17', '2017-12-02 07:54:17'),
(600, 54, 4, 'North', 77, 'BN-804', '570190073295', NULL, 8606.00, 9082.00, '1.00', 0, NULL, 'ERQNrn7ingJAn', '2017-12-02 07:54:17', '2017-12-02 07:54:17'),
(601, 54, 4, 'North', 77, 'BN-804', '570190073295', NULL, 8606.00, 9082.00, '1.00', 0, NULL, 'ERQNrn7ingJAn', '2017-12-02 07:54:17', '2017-12-02 07:54:17'),
(602, 54, 3, 'New', 45, 'BN-316', '850312309076', NULL, 19581.00, 20458.00, '-3.00', 0, NULL, '6X1NkrVfD0qRX', '2017-12-02 07:54:17', '2017-12-02 07:58:25'),
(603, 54, 3, 'New', 45, 'BN-316', '850312309076', NULL, 19581.00, 20458.00, '-1.00', 0, NULL, '6X1NkrVfD0qRX', '2017-12-02 07:54:17', '2017-12-02 07:58:25'),
(604, 54, 3, 'New', 45, 'BN-316', '850312309076', NULL, 19581.00, 20458.00, '1.00', 0, NULL, '6X1NkrVfD0qRX', '2017-12-02 07:54:17', '2017-12-02 07:54:17'),
(605, 54, 3, 'New', 45, 'BN-316', '850312309076', NULL, 19581.00, 20458.00, '1.00', 0, NULL, '6X1NkrVfD0qRX', '2017-12-02 07:54:17', '2017-12-02 07:54:17'),
(606, 54, 3, 'New', 45, 'BN-316', '850312309076', NULL, 19581.00, 20458.00, '1.00', 0, NULL, '6X1NkrVfD0qRX', '2017-12-02 07:54:17', '2017-12-02 07:54:17'),
(607, 54, 3, 'New', 45, 'BN-316', '850312309076', NULL, 19581.00, 20458.00, '1.00', 0, NULL, '6X1NkrVfD0qRX', '2017-12-02 07:54:17', '2017-12-02 07:54:17'),
(608, 54, 3, 'New', 45, 'BN-316', '850312309076', NULL, 19581.00, 20458.00, '1.00', 0, NULL, '6X1NkrVfD0qRX', '2017-12-02 07:54:17', '2017-12-02 07:54:17'),
(609, 54, 3, 'New', 45, 'BN-316', '850312309076', NULL, 19581.00, 20458.00, '1.00', 0, NULL, '6X1NkrVfD0qRX', '2017-12-02 07:54:18', '2017-12-02 07:54:18'),
(610, 54, 3, 'New', 45, 'BN-316', '850312309076', NULL, 19581.00, 20458.00, '1.00', 0, NULL, '6X1NkrVfD0qRX', '2017-12-02 07:54:18', '2017-12-02 07:54:18'),
(611, 54, 9, 'Port', 169, 'BN-908', '594113428368', NULL, 4910.00, 5204.00, '-1.00', 0, NULL, 'Wngo95kS5zXYlZ', '2017-12-02 07:54:18', '2017-12-02 07:56:59'),
(612, 54, 9, 'Port', 169, 'BN-908', '594113428368', NULL, 4910.00, 5204.00, '1.00', 0, NULL, 'Wngo95kS5zXYlZ', '2017-12-02 07:54:18', '2017-12-02 07:54:18'),
(613, 54, 9, 'Port', 169, 'BN-908', '594113428368', NULL, 4910.00, 5204.00, '1.00', 0, NULL, 'Wngo95kS5zXYlZ', '2017-12-02 07:54:18', '2017-12-02 07:54:18'),
(614, 54, 9, 'Port', 169, 'BN-908', '594113428368', NULL, 4910.00, 5204.00, '1.00', 0, NULL, 'Wngo95kS5zXYlZ', '2017-12-02 07:54:18', '2017-12-02 07:54:18'),
(615, 54, 9, 'Port', 169, 'BN-908', '594113428368', NULL, 4910.00, 5204.00, '1.00', 0, NULL, 'Wngo95kS5zXYlZ', '2017-12-02 07:54:18', '2017-12-02 07:54:18'),
(616, 54, 9, 'Port', 169, 'BN-908', '594113428368', NULL, 4910.00, 5204.00, '1.00', 0, NULL, 'Wngo95kS5zXYlZ', '2017-12-02 07:54:18', '2017-12-02 07:54:18'),
(617, 54, 9, 'Port', 169, 'BN-908', '594113428368', NULL, 4910.00, 5204.00, '1.00', 0, NULL, 'Wngo95kS5zXYlZ', '2017-12-02 07:54:18', '2017-12-02 07:54:18'),
(618, 54, 9, 'Port', 169, 'BN-908', '594113428368', NULL, 4910.00, 5204.00, '1.00', 0, NULL, 'Wngo95kS5zXYlZ', '2017-12-02 07:54:18', '2017-12-02 07:54:18'),
(619, 54, 9, 'Port', 169, 'BN-908', '594113428368', NULL, 4910.00, 5204.00, '1.00', 0, NULL, 'Wngo95kS5zXYlZ', '2017-12-02 07:54:18', '2017-12-02 07:54:18'),
(620, 54, 9, 'Port', 169, 'BN-908', '594113428368', NULL, 4910.00, 5204.00, '1.00', 0, NULL, 'Wngo95kS5zXYlZ', '2017-12-02 07:54:18', '2017-12-02 07:54:18'),
(621, 55, 5, 'West', 90, 'BN-762', '510471577715', NULL, 7970.00, 8687.00, '1.00', 1, 'e5y6cx8e', '66JBzYghrrZkkZ', '2017-12-02 07:54:19', '2017-12-02 08:00:21'),
(622, 55, 5, 'West', 90, 'BN-762', '510471577715', NULL, 7970.00, 8687.00, '1.00', 0, NULL, '66JBzYghrrZkkZ', '2017-12-02 07:54:19', '2017-12-02 07:54:19'),
(623, 55, 5, 'West', 90, 'BN-762', '510471577715', NULL, 7970.00, 8687.00, '1.00', 0, NULL, '66JBzYghrrZkkZ', '2017-12-02 07:54:19', '2017-12-02 07:54:19'),
(624, 55, 5, 'West', 90, 'BN-762', '510471577715', NULL, 7970.00, 8687.00, '1.00', 0, NULL, '66JBzYghrrZkkZ', '2017-12-02 07:54:19', '2017-12-02 07:54:19'),
(625, 55, 5, 'West', 90, 'BN-762', '510471577715', NULL, 7970.00, 8687.00, '1.00', 0, NULL, '66JBzYghrrZkkZ', '2017-12-02 07:54:19', '2017-12-02 07:54:19'),
(626, 55, 5, 'West', 90, 'BN-762', '510471577715', NULL, 7970.00, 8687.00, '1.00', 0, NULL, '66JBzYghrrZkkZ', '2017-12-02 07:54:19', '2017-12-02 07:54:19'),
(627, 55, 5, 'West', 90, 'BN-762', '510471577715', NULL, 7970.00, 8687.00, '1.00', 0, NULL, '66JBzYghrrZkkZ', '2017-12-02 07:54:19', '2017-12-02 07:54:19'),
(628, 55, 5, 'West', 90, 'BN-762', '510471577715', NULL, 7970.00, 8687.00, '1.00', 0, NULL, '66JBzYghrrZkkZ', '2017-12-02 07:54:19', '2017-12-02 07:54:19'),
(629, 58, 6, 'Port', 111, 'BN-356', '643039440623', NULL, 5135.00, 5472.00, '-3.00', 0, NULL, '3l47QYOTB0kzZ', '2017-12-02 07:54:21', '2017-12-02 07:58:08'),
(630, 58, 6, 'Port', 111, 'BN-356', '643039440623', NULL, 5135.00, 5472.00, '0.00', 0, NULL, '3l47QYOTB0kzZ', '2017-12-02 07:54:21', '2017-12-02 07:56:43'),
(631, 58, 6, 'Port', 111, 'BN-356', '643039440623', NULL, 5135.00, 5472.00, '0.00', 0, NULL, '3l47QYOTB0kzZ', '2017-12-02 07:54:21', '2017-12-02 07:56:43'),
(632, 58, 6, 'Port', 111, 'BN-356', '643039440623', NULL, 5135.00, 5472.00, '1.00', 0, NULL, '3l47QYOTB0kzZ', '2017-12-02 07:54:22', '2017-12-02 07:54:22'),
(633, 58, 6, 'Port', 111, 'BN-356', '643039440623', NULL, 5135.00, 5472.00, '1.00', 0, NULL, '3l47QYOTB0kzZ', '2017-12-02 07:54:22', '2017-12-02 07:54:22'),
(634, 58, 6, 'Port', 111, 'BN-356', '643039440623', NULL, 5135.00, 5472.00, '1.00', 0, NULL, '3l47QYOTB0kzZ', '2017-12-02 07:54:22', '2017-12-02 07:54:22'),
(635, 58, 6, 'Port', 111, 'BN-356', '643039440623', NULL, 5135.00, 5472.00, '1.00', 0, NULL, '3l47QYOTB0kzZ', '2017-12-02 07:54:22', '2017-12-02 07:54:22'),
(636, 58, 6, 'Port', 111, 'BN-356', '643039440623', NULL, 5135.00, 5472.00, '1.00', 0, NULL, '3l47QYOTB0kzZ', '2017-12-02 07:54:22', '2017-12-02 07:54:22');
INSERT INTO `product_locations` (`id`, `productId`, `productLocation`, `productLocationName`, `binLocation`, `binLocationName`, `productBarcode`, `productCurrency`, `unitCost`, `sellingPrice`, `amount`, `onHold`, `onHoldBy`, `hash`, `created_at`, `updated_at`) VALUES
(637, 59, 3, 'New', 54, 'BN-556', '460546474473', NULL, 11051.00, 11550.00, '1.00', 0, NULL, 'L8gPD8qFqlDZ9', '2017-12-02 07:54:24', '2017-12-02 07:54:24'),
(638, 59, 3, 'New', 54, 'BN-556', '460546474473', NULL, 11051.00, 11550.00, '1.00', 0, NULL, 'L8gPD8qFqlDZ9', '2017-12-02 07:54:24', '2017-12-02 07:54:24'),
(639, 59, 3, 'New', 54, 'BN-556', '460546474473', NULL, 11051.00, 11550.00, '1.00', 0, NULL, 'L8gPD8qFqlDZ9', '2017-12-02 07:54:24', '2017-12-02 07:54:24'),
(640, 59, 3, 'New', 54, 'BN-556', '460546474473', NULL, 11051.00, 11550.00, '1.00', 0, NULL, 'L8gPD8qFqlDZ9', '2017-12-02 07:54:24', '2017-12-02 07:54:24'),
(641, 59, 3, 'New', 54, 'BN-556', '460546474473', NULL, 11051.00, 11550.00, '1.00', 0, NULL, 'L8gPD8qFqlDZ9', '2017-12-02 07:54:24', '2017-12-02 07:54:24'),
(642, 59, 3, 'New', 54, 'BN-556', '460546474473', NULL, 11051.00, 11550.00, '1.00', 0, NULL, 'L8gPD8qFqlDZ9', '2017-12-02 07:54:24', '2017-12-02 07:54:24'),
(643, 59, 3, 'New', 54, 'BN-556', '460546474473', NULL, 11051.00, 11550.00, '1.00', 0, NULL, 'L8gPD8qFqlDZ9', '2017-12-02 07:54:25', '2017-12-02 07:54:25'),
(644, 59, 3, 'New', 54, 'BN-556', '460546474473', NULL, 11051.00, 11550.00, '1.00', 0, NULL, 'L8gPD8qFqlDZ9', '2017-12-02 07:54:25', '2017-12-02 07:54:25'),
(645, 59, 3, 'New', 54, 'BN-556', '460546474473', NULL, 11051.00, 11550.00, '1.00', 0, NULL, 'L8gPD8qFqlDZ9', '2017-12-02 07:54:25', '2017-12-02 07:54:25'),
(646, 59, 3, 'New', 59, 'BN-277', '205851782666', NULL, 18285.00, 19154.00, '1.00', 0, NULL, '1WQ40D3cMMppPj', '2017-12-02 07:54:25', '2017-12-02 07:54:25'),
(647, 59, 3, 'New', 59, 'BN-277', '205851782666', NULL, 18285.00, 19154.00, '1.00', 0, NULL, '1WQ40D3cMMppPj', '2017-12-02 07:54:25', '2017-12-02 07:54:25'),
(648, 59, 3, 'New', 59, 'BN-277', '205851782666', NULL, 18285.00, 19154.00, '1.00', 0, NULL, '1WQ40D3cMMppPj', '2017-12-02 07:54:26', '2017-12-02 07:54:26'),
(649, 59, 3, 'New', 59, 'BN-277', '205851782666', NULL, 18285.00, 19154.00, '1.00', 0, NULL, '1WQ40D3cMMppPj', '2017-12-02 07:54:26', '2017-12-02 07:54:26'),
(650, 59, 3, 'New', 59, 'BN-277', '205851782666', NULL, 18285.00, 19154.00, '1.00', 0, NULL, '1WQ40D3cMMppPj', '2017-12-02 07:54:26', '2017-12-02 07:54:26'),
(651, 59, 3, 'New', 59, 'BN-277', '205851782666', NULL, 18285.00, 19154.00, '1.00', 0, NULL, '1WQ40D3cMMppPj', '2017-12-02 07:54:26', '2017-12-02 07:54:26'),
(652, 59, 3, 'New', 59, 'BN-277', '205851782666', NULL, 18285.00, 19154.00, '1.00', 0, NULL, '1WQ40D3cMMppPj', '2017-12-02 07:54:26', '2017-12-02 07:54:26'),
(653, 59, 3, 'New', 59, 'BN-277', '205851782666', NULL, 18285.00, 19154.00, '1.00', 0, NULL, '1WQ40D3cMMppPj', '2017-12-02 07:54:26', '2017-12-02 07:54:26'),
(654, 59, 3, 'New', 59, 'BN-277', '205851782666', NULL, 18285.00, 19154.00, '1.00', 0, NULL, '1WQ40D3cMMppPj', '2017-12-02 07:54:26', '2017-12-02 07:54:26'),
(655, 59, 4, 'North', 80, 'BN-105', '130456873870', NULL, 9573.00, 10043.00, '-3.00', 0, NULL, 'mwqZq7xtZoZ2N', '2017-12-02 07:54:26', '2017-12-02 07:58:17'),
(656, 59, 4, 'North', 80, 'BN-105', '130456873870', NULL, 9573.00, 10043.00, '0.00', 0, NULL, 'mwqZq7xtZoZ2N', '2017-12-02 07:54:26', '2017-12-02 07:57:43'),
(657, 59, 4, 'North', 80, 'BN-105', '130456873870', NULL, 9573.00, 10043.00, '0.00', 0, NULL, 'mwqZq7xtZoZ2N', '2017-12-02 07:54:27', '2017-12-02 07:57:43'),
(658, 59, 4, 'North', 80, 'BN-105', '130456873870', NULL, 9573.00, 10043.00, '1.00', 0, NULL, 'mwqZq7xtZoZ2N', '2017-12-02 07:54:27', '2017-12-02 07:54:27'),
(659, 59, 4, 'North', 80, 'BN-105', '130456873870', NULL, 9573.00, 10043.00, '1.00', 0, NULL, 'mwqZq7xtZoZ2N', '2017-12-02 07:54:27', '2017-12-02 07:54:27'),
(660, 59, 4, 'North', 80, 'BN-105', '130456873870', NULL, 9573.00, 10043.00, '1.00', 0, NULL, 'mwqZq7xtZoZ2N', '2017-12-02 07:54:27', '2017-12-02 07:54:27'),
(661, 59, 4, 'North', 80, 'BN-105', '130456873870', NULL, 9573.00, 10043.00, '1.00', 0, NULL, 'mwqZq7xtZoZ2N', '2017-12-02 07:54:27', '2017-12-02 07:54:27'),
(662, 59, 4, 'North', 80, 'BN-105', '130456873870', NULL, 9573.00, 10043.00, '1.00', 0, NULL, 'mwqZq7xtZoZ2N', '2017-12-02 07:54:27', '2017-12-02 07:54:27'),
(663, 59, 4, 'North', 80, 'BN-105', '130456873870', NULL, 9573.00, 10043.00, '1.00', 0, NULL, 'mwqZq7xtZoZ2N', '2017-12-02 07:54:27', '2017-12-02 07:54:27'),
(664, 59, 3, 'New', 44, 'BN-005', '623107917899', NULL, 2310.00, 3132.00, '-3.00', 1, 'ejR6hnQe', 'NxKz8n7FqEPV1', '2017-12-02 07:54:28', '2017-12-02 08:00:17'),
(665, 59, 3, 'New', 44, 'BN-005', '623107917899', NULL, 2310.00, 3132.00, '-1.00', 0, NULL, 'NxKz8n7FqEPV1', '2017-12-02 07:54:28', '2017-12-02 07:58:22'),
(666, 59, 3, 'New', 44, 'BN-005', '623107917899', NULL, 2310.00, 3132.00, '1.00', 0, NULL, 'NxKz8n7FqEPV1', '2017-12-02 07:54:28', '2017-12-02 07:54:28'),
(667, 59, 3, 'New', 44, 'BN-005', '623107917899', NULL, 2310.00, 3132.00, '1.00', 0, NULL, 'NxKz8n7FqEPV1', '2017-12-02 07:54:28', '2017-12-02 07:54:28'),
(668, 59, 3, 'New', 44, 'BN-005', '623107917899', NULL, 2310.00, 3132.00, '1.00', 0, NULL, 'NxKz8n7FqEPV1', '2017-12-02 07:54:28', '2017-12-02 07:54:28'),
(669, 59, 3, 'New', 44, 'BN-005', '623107917899', NULL, 2310.00, 3132.00, '1.00', 0, NULL, 'NxKz8n7FqEPV1', '2017-12-02 07:54:28', '2017-12-02 07:54:28'),
(670, 59, 3, 'New', 44, 'BN-005', '623107917899', NULL, 2310.00, 3132.00, '1.00', 0, NULL, 'NxKz8n7FqEPV1', '2017-12-02 07:54:28', '2017-12-02 07:54:28'),
(671, 59, 3, 'New', 44, 'BN-005', '623107917899', NULL, 2310.00, 3132.00, '1.00', 0, NULL, 'NxKz8n7FqEPV1', '2017-12-02 07:54:28', '2017-12-02 07:54:28'),
(672, 59, 3, 'New', 44, 'BN-005', '623107917899', NULL, 2310.00, 3132.00, '1.00', 0, NULL, 'NxKz8n7FqEPV1', '2017-12-02 07:54:29', '2017-12-02 07:54:29'),
(673, 60, 10, 'Lake', 181, 'BN-595', '287473538371', NULL, 13423.00, 13846.00, '-3.00', 0, NULL, 'mwxzvD7I4ryNw', '2017-12-02 07:54:30', '2017-12-02 07:57:47'),
(674, 60, 10, 'Lake', 181, 'BN-595', '287473538371', NULL, 13423.00, 13846.00, '0.00', 0, NULL, 'mwxzvD7I4ryNw', '2017-12-02 07:54:30', '2017-12-02 07:57:47'),
(675, 60, 10, 'Lake', 181, 'BN-595', '287473538371', NULL, 13423.00, 13846.00, '0.00', 0, NULL, 'mwxzvD7I4ryNw', '2017-12-02 07:54:30', '2017-12-02 07:57:47'),
(676, 60, 10, 'Lake', 181, 'BN-595', '287473538371', NULL, 13423.00, 13846.00, '1.00', 0, NULL, 'mwxzvD7I4ryNw', '2017-12-02 07:54:30', '2017-12-02 07:54:30'),
(677, 60, 10, 'Lake', 181, 'BN-595', '287473538371', NULL, 13423.00, 13846.00, '1.00', 0, NULL, 'mwxzvD7I4ryNw', '2017-12-02 07:54:30', '2017-12-02 07:54:30'),
(678, 60, 10, 'Lake', 181, 'BN-595', '287473538371', NULL, 13423.00, 13846.00, '1.00', 0, NULL, 'mwxzvD7I4ryNw', '2017-12-02 07:54:30', '2017-12-02 07:54:30'),
(679, 60, 10, 'Lake', 181, 'BN-595', '287473538371', NULL, 13423.00, 13846.00, '1.00', 0, NULL, 'mwxzvD7I4ryNw', '2017-12-02 07:54:30', '2017-12-02 07:54:30'),
(680, 60, 10, 'Lake', 181, 'BN-595', '287473538371', NULL, 13423.00, 13846.00, '1.00', 0, NULL, 'mwxzvD7I4ryNw', '2017-12-02 07:54:30', '2017-12-02 07:54:30'),
(681, 61, 3, 'New', 60, 'BN-789', '226513284069', NULL, 4842.00, 5461.00, '-1.00', 0, NULL, 'qxDMllGT8kPm4m', '2017-12-02 07:54:31', '2017-12-02 07:57:16'),
(682, 61, 3, 'New', 60, 'BN-789', '226513284069', NULL, 4842.00, 5461.00, '0.00', 0, NULL, 'qxDMllGT8kPm4m', '2017-12-02 07:54:31', '2017-12-02 07:57:16'),
(683, 61, 3, 'New', 60, 'BN-789', '226513284069', NULL, 4842.00, 5461.00, '1.00', 0, NULL, 'qxDMllGT8kPm4m', '2017-12-02 07:54:31', '2017-12-02 07:54:31'),
(684, 61, 3, 'New', 60, 'BN-789', '226513284069', NULL, 4842.00, 5461.00, '1.00', 0, NULL, 'qxDMllGT8kPm4m', '2017-12-02 07:54:31', '2017-12-02 07:54:31'),
(685, 61, 3, 'New', 60, 'BN-789', '226513284069', NULL, 4842.00, 5461.00, '1.00', 0, NULL, 'qxDMllGT8kPm4m', '2017-12-02 07:54:31', '2017-12-02 07:54:31'),
(686, 61, 3, 'New', 60, 'BN-789', '226513284069', NULL, 4842.00, 5461.00, '1.00', 0, NULL, 'qxDMllGT8kPm4m', '2017-12-02 07:54:31', '2017-12-02 07:54:31'),
(687, 61, 3, 'New', 60, 'BN-789', '226513284069', NULL, 4842.00, 5461.00, '1.00', 0, NULL, 'qxDMllGT8kPm4m', '2017-12-02 07:54:31', '2017-12-02 07:54:31'),
(688, 61, 3, 'New', 60, 'BN-789', '226513284069', NULL, 4842.00, 5461.00, '1.00', 0, NULL, 'qxDMllGT8kPm4m', '2017-12-02 07:54:31', '2017-12-02 07:54:31'),
(689, 61, 3, 'New', 60, 'BN-789', '226513284069', NULL, 4842.00, 5461.00, '1.00', 0, NULL, 'qxDMllGT8kPm4m', '2017-12-02 07:54:32', '2017-12-02 07:54:32'),
(690, 61, 4, 'North', 70, 'BN-906', '583257949259', NULL, 15516.00, 15970.00, '1.00', 0, NULL, '1jrnkoOiqN7g9', '2017-12-02 07:54:32', '2017-12-02 07:54:32'),
(691, 61, 4, 'North', 70, 'BN-906', '583257949259', NULL, 15516.00, 15970.00, '1.00', 0, NULL, '1jrnkoOiqN7g9', '2017-12-02 07:54:32', '2017-12-02 07:54:32'),
(692, 61, 4, 'North', 70, 'BN-906', '583257949259', NULL, 15516.00, 15970.00, '1.00', 0, NULL, '1jrnkoOiqN7g9', '2017-12-02 07:54:32', '2017-12-02 07:54:32'),
(693, 61, 4, 'North', 70, 'BN-906', '583257949259', NULL, 15516.00, 15970.00, '1.00', 0, NULL, '1jrnkoOiqN7g9', '2017-12-02 07:54:32', '2017-12-02 07:54:32'),
(694, 61, 4, 'North', 70, 'BN-906', '583257949259', NULL, 15516.00, 15970.00, '1.00', 0, NULL, '1jrnkoOiqN7g9', '2017-12-02 07:54:32', '2017-12-02 07:54:32'),
(695, 61, 4, 'North', 70, 'BN-906', '583257949259', NULL, 15516.00, 15970.00, '1.00', 0, NULL, '1jrnkoOiqN7g9', '2017-12-02 07:54:32', '2017-12-02 07:54:32'),
(696, 61, 4, 'North', 70, 'BN-906', '583257949259', NULL, 15516.00, 15970.00, '1.00', 0, NULL, '1jrnkoOiqN7g9', '2017-12-02 07:54:32', '2017-12-02 07:54:32'),
(697, 61, 4, 'North', 70, 'BN-906', '583257949259', NULL, 15516.00, 15970.00, '1.00', 0, NULL, '1jrnkoOiqN7g9', '2017-12-02 07:54:33', '2017-12-02 07:54:33'),
(698, 61, 4, 'North', 70, 'BN-906', '583257949259', NULL, 15516.00, 15970.00, '1.00', 0, NULL, '1jrnkoOiqN7g9', '2017-12-02 07:54:33', '2017-12-02 07:54:33'),
(699, 61, 4, 'North', 70, 'BN-906', '133338887309', NULL, 12632.00, 13259.00, '-1.00', 0, NULL, 'L8WK441I7Ay1E', '2017-12-02 07:54:33', '2017-12-02 07:58:01'),
(700, 61, 4, 'North', 70, 'BN-906', '133338887309', NULL, 12632.00, 13259.00, '0.00', 0, NULL, 'L8WK441I7Ay1E', '2017-12-02 07:54:33', '2017-12-02 07:58:01'),
(701, 61, 4, 'North', 70, 'BN-906', '133338887309', NULL, 12632.00, 13259.00, '0.00', 0, NULL, 'L8WK441I7Ay1E', '2017-12-02 07:54:33', '2017-12-02 07:58:01'),
(702, 61, 4, 'North', 70, 'BN-906', '133338887309', NULL, 12632.00, 13259.00, '1.00', 0, NULL, 'L8WK441I7Ay1E', '2017-12-02 07:54:34', '2017-12-02 07:54:34'),
(703, 61, 4, 'North', 70, 'BN-906', '133338887309', NULL, 12632.00, 13259.00, '1.00', 0, NULL, 'L8WK441I7Ay1E', '2017-12-02 07:54:34', '2017-12-02 07:54:34'),
(704, 61, 4, 'North', 70, 'BN-906', '133338887309', NULL, 12632.00, 13259.00, '1.00', 0, NULL, 'L8WK441I7Ay1E', '2017-12-02 07:54:34', '2017-12-02 07:54:34'),
(705, 61, 4, 'North', 70, 'BN-906', '133338887309', NULL, 12632.00, 13259.00, '1.00', 0, NULL, 'L8WK441I7Ay1E', '2017-12-02 07:54:34', '2017-12-02 07:54:34'),
(706, 61, 4, 'North', 70, 'BN-906', '133338887309', NULL, 12632.00, 13259.00, '1.00', 0, NULL, 'L8WK441I7Ay1E', '2017-12-02 07:54:34', '2017-12-02 07:54:34'),
(707, 61, 4, 'North', 70, 'BN-906', '133338887309', NULL, 12632.00, 13259.00, '1.00', 0, NULL, 'L8WK441I7Ay1E', '2017-12-02 07:54:34', '2017-12-02 07:54:34'),
(708, 61, 8, 'East', 149, 'BN-250', '831108374485', NULL, 10678.00, 11303.00, '1.00', 0, NULL, '2vQ51yDIkMvB', '2017-12-02 07:54:35', '2017-12-02 07:54:35'),
(709, 61, 8, 'East', 149, 'BN-250', '831108374485', NULL, 10678.00, 11303.00, '1.00', 0, NULL, '2vQ51yDIkMvB', '2017-12-02 07:54:35', '2017-12-02 07:54:35'),
(710, 61, 8, 'East', 149, 'BN-250', '831108374485', NULL, 10678.00, 11303.00, '1.00', 0, NULL, '2vQ51yDIkMvB', '2017-12-02 07:54:35', '2017-12-02 07:54:35'),
(711, 61, 8, 'East', 149, 'BN-250', '831108374485', NULL, 10678.00, 11303.00, '1.00', 0, NULL, '2vQ51yDIkMvB', '2017-12-02 07:54:35', '2017-12-02 07:54:35'),
(712, 61, 8, 'East', 149, 'BN-250', '831108374485', NULL, 10678.00, 11303.00, '1.00', 0, NULL, '2vQ51yDIkMvB', '2017-12-02 07:54:35', '2017-12-02 07:54:35'),
(713, 61, 8, 'East', 149, 'BN-250', '831108374485', NULL, 10678.00, 11303.00, '1.00', 0, NULL, '2vQ51yDIkMvB', '2017-12-02 07:54:35', '2017-12-02 07:54:35'),
(714, 61, 8, 'East', 149, 'BN-250', '831108374485', NULL, 10678.00, 11303.00, '1.00', 0, NULL, '2vQ51yDIkMvB', '2017-12-02 07:54:35', '2017-12-02 07:54:35'),
(715, 61, 8, 'East', 149, 'BN-250', '831108374485', NULL, 10678.00, 11303.00, '1.00', 0, NULL, '2vQ51yDIkMvB', '2017-12-02 07:54:35', '2017-12-02 07:54:35'),
(716, 61, 8, 'East', 149, 'BN-250', '831108374485', NULL, 10678.00, 11303.00, '1.00', 0, NULL, '2vQ51yDIkMvB', '2017-12-02 07:54:35', '2017-12-02 07:54:35'),
(717, 62, 6, 'Port', 102, 'BN-117', '750540949481', NULL, 17215.00, 18091.00, '-3.00', 0, NULL, 'yoWk3Q2iWXlz9', '2017-12-02 07:54:36', '2017-12-02 07:57:26'),
(718, 62, 6, 'Port', 102, 'BN-117', '750540949481', NULL, 17215.00, 18091.00, '-1.00', 0, NULL, 'yoWk3Q2iWXlz9', '2017-12-02 07:54:36', '2017-12-02 07:57:26'),
(719, 62, 6, 'Port', 102, 'BN-117', '750540949481', NULL, 17215.00, 18091.00, '0.00', 0, NULL, 'yoWk3Q2iWXlz9', '2017-12-02 07:54:36', '2017-12-02 07:57:26'),
(720, 62, 6, 'Port', 102, 'BN-117', '750540949481', NULL, 17215.00, 18091.00, '1.00', 0, NULL, 'yoWk3Q2iWXlz9', '2017-12-02 07:54:36', '2017-12-02 07:54:36'),
(721, 62, 6, 'Port', 102, 'BN-117', '750540949481', NULL, 17215.00, 18091.00, '1.00', 0, NULL, 'yoWk3Q2iWXlz9', '2017-12-02 07:54:36', '2017-12-02 07:54:36'),
(722, 62, 6, 'Port', 102, 'BN-117', '750540949481', NULL, 17215.00, 18091.00, '1.00', 0, NULL, 'yoWk3Q2iWXlz9', '2017-12-02 07:54:36', '2017-12-02 07:54:36'),
(723, 62, 6, 'Port', 102, 'BN-117', '750540949481', NULL, 17215.00, 18091.00, '1.00', 0, NULL, 'yoWk3Q2iWXlz9', '2017-12-02 07:54:36', '2017-12-02 07:54:36'),
(724, 62, 6, 'Port', 102, 'BN-117', '750540949481', NULL, 17215.00, 18091.00, '1.00', 0, NULL, 'yoWk3Q2iWXlz9', '2017-12-02 07:54:36', '2017-12-02 07:54:36'),
(725, 63, 8, 'East', 141, 'BN-589', '453851284363', NULL, 14915.00, 15154.00, '-5.00', 0, NULL, '71AgYn4tAQM7x4', '2017-12-02 07:54:37', '2017-12-02 07:57:42'),
(726, 63, 8, 'East', 141, 'BN-589', '453851284363', NULL, 14915.00, 15154.00, '0.00', 0, NULL, '71AgYn4tAQM7x4', '2017-12-02 07:54:37', '2017-12-02 07:57:33'),
(727, 63, 8, 'East', 141, 'BN-589', '453851284363', NULL, 14915.00, 15154.00, '0.00', 0, NULL, '71AgYn4tAQM7x4', '2017-12-02 07:54:37', '2017-12-02 07:57:34'),
(728, 63, 8, 'East', 141, 'BN-589', '453851284363', NULL, 14915.00, 15154.00, '1.00', 0, NULL, '71AgYn4tAQM7x4', '2017-12-02 07:54:37', '2017-12-02 07:54:37'),
(729, 63, 8, 'East', 141, 'BN-589', '453851284363', NULL, 14915.00, 15154.00, '1.00', 0, NULL, '71AgYn4tAQM7x4', '2017-12-02 07:54:37', '2017-12-02 07:54:37'),
(730, 63, 8, 'East', 141, 'BN-589', '453851284363', NULL, 14915.00, 15154.00, '1.00', 0, NULL, '71AgYn4tAQM7x4', '2017-12-02 07:54:37', '2017-12-02 07:54:37'),
(731, 63, 8, 'East', 141, 'BN-589', '453851284363', NULL, 14915.00, 15154.00, '1.00', 0, NULL, '71AgYn4tAQM7x4', '2017-12-02 07:54:37', '2017-12-02 07:54:37'),
(732, 63, 8, 'East', 141, 'BN-589', '453851284363', NULL, 14915.00, 15154.00, '1.00', 0, NULL, '71AgYn4tAQM7x4', '2017-12-02 07:54:37', '2017-12-02 07:54:37'),
(733, 64, 5, 'West', 90, 'BN-762', '973079856925', NULL, 10345.00, 11166.00, '1.00', 0, NULL, 'oV5jB0gTnP4MK', '2017-12-02 07:54:38', '2017-12-02 07:54:38'),
(734, 64, 5, 'West', 90, 'BN-762', '973079856925', NULL, 10345.00, 11166.00, '1.00', 0, NULL, 'oV5jB0gTnP4MK', '2017-12-02 07:54:38', '2017-12-02 07:54:38'),
(735, 64, 5, 'West', 90, 'BN-762', '973079856925', NULL, 10345.00, 11166.00, '1.00', 0, NULL, 'oV5jB0gTnP4MK', '2017-12-02 07:54:38', '2017-12-02 07:54:38'),
(736, 64, 5, 'West', 90, 'BN-762', '973079856925', NULL, 10345.00, 11166.00, '1.00', 0, NULL, 'oV5jB0gTnP4MK', '2017-12-02 07:54:38', '2017-12-02 07:54:38'),
(737, 64, 5, 'West', 90, 'BN-762', '973079856925', NULL, 10345.00, 11166.00, '1.00', 0, NULL, 'oV5jB0gTnP4MK', '2017-12-02 07:54:38', '2017-12-02 07:54:38'),
(738, 64, 5, 'West', 90, 'BN-762', '973079856925', NULL, 10345.00, 11166.00, '1.00', 0, NULL, 'oV5jB0gTnP4MK', '2017-12-02 07:54:38', '2017-12-02 07:54:38'),
(739, 64, 5, 'West', 90, 'BN-762', '973079856925', NULL, 10345.00, 11166.00, '1.00', 0, NULL, 'oV5jB0gTnP4MK', '2017-12-02 07:54:38', '2017-12-02 07:54:38'),
(740, 64, 5, 'West', 90, 'BN-762', '973079856925', NULL, 10345.00, 11166.00, '1.00', 0, NULL, 'oV5jB0gTnP4MK', '2017-12-02 07:54:39', '2017-12-02 07:54:39'),
(741, 64, 5, 'West', 90, 'BN-762', '973079856925', NULL, 10345.00, 11166.00, '1.00', 0, NULL, 'oV5jB0gTnP4MK', '2017-12-02 07:54:39', '2017-12-02 07:54:39'),
(742, 64, 6, 'Port', 120, 'BN-947', '336572249982', NULL, 7360.00, 8220.00, '-1.00', 0, NULL, 'voZMOVMSAo8XK', '2017-12-02 07:54:39', '2017-12-02 07:56:53'),
(743, 64, 6, 'Port', 120, 'BN-947', '336572249982', NULL, 7360.00, 8220.00, '0.00', 0, NULL, 'voZMOVMSAo8XK', '2017-12-02 07:54:39', '2017-12-02 07:56:53'),
(744, 64, 6, 'Port', 120, 'BN-947', '336572249982', NULL, 7360.00, 8220.00, '0.00', 0, NULL, 'voZMOVMSAo8XK', '2017-12-02 07:54:39', '2017-12-02 07:56:53'),
(745, 64, 6, 'Port', 120, 'BN-947', '336572249982', NULL, 7360.00, 8220.00, '1.00', 0, NULL, 'voZMOVMSAo8XK', '2017-12-02 07:54:39', '2017-12-02 07:54:39'),
(746, 64, 6, 'Port', 120, 'BN-947', '336572249982', NULL, 7360.00, 8220.00, '1.00', 0, NULL, 'voZMOVMSAo8XK', '2017-12-02 07:54:39', '2017-12-02 07:54:39'),
(747, 64, 6, 'Port', 120, 'BN-947', '336572249982', NULL, 7360.00, 8220.00, '1.00', 0, NULL, 'voZMOVMSAo8XK', '2017-12-02 07:54:39', '2017-12-02 07:54:39'),
(748, 64, 6, 'Port', 120, 'BN-947', '336572249982', NULL, 7360.00, 8220.00, '1.00', 0, NULL, 'voZMOVMSAo8XK', '2017-12-02 07:54:39', '2017-12-02 07:54:39'),
(749, 64, 6, 'Port', 120, 'BN-947', '336572249982', NULL, 7360.00, 8220.00, '1.00', 0, NULL, 'voZMOVMSAo8XK', '2017-12-02 07:54:39', '2017-12-02 07:54:39'),
(750, 64, 6, 'Port', 120, 'BN-947', '336572249982', NULL, 7360.00, 8220.00, '1.00', 0, NULL, 'voZMOVMSAo8XK', '2017-12-02 07:54:39', '2017-12-02 07:54:39'),
(751, 64, 10, 'Lake', 182, 'BN-784', '859139881116', NULL, 8632.00, 9188.00, '-1.00', 1, 'e73ghGje', 'YER4V5quLNDMOX', '2017-12-02 07:54:40', '2017-12-02 08:00:21'),
(752, 64, 10, 'Lake', 182, 'BN-784', '859139881116', NULL, 8632.00, 9188.00, '1.00', 0, NULL, 'YER4V5quLNDMOX', '2017-12-02 07:54:40', '2017-12-02 07:54:40'),
(753, 64, 10, 'Lake', 182, 'BN-784', '859139881116', NULL, 8632.00, 9188.00, '1.00', 0, NULL, 'YER4V5quLNDMOX', '2017-12-02 07:54:40', '2017-12-02 07:54:40'),
(754, 64, 10, 'Lake', 182, 'BN-784', '859139881116', NULL, 8632.00, 9188.00, '1.00', 0, NULL, 'YER4V5quLNDMOX', '2017-12-02 07:54:40', '2017-12-02 07:54:40'),
(755, 64, 10, 'Lake', 182, 'BN-784', '859139881116', NULL, 8632.00, 9188.00, '1.00', 0, NULL, 'YER4V5quLNDMOX', '2017-12-02 07:54:40', '2017-12-02 07:54:40'),
(756, 64, 10, 'Lake', 182, 'BN-784', '859139881116', NULL, 8632.00, 9188.00, '1.00', 0, NULL, 'YER4V5quLNDMOX', '2017-12-02 07:54:40', '2017-12-02 07:54:40'),
(757, 64, 10, 'Lake', 182, 'BN-784', '859139881116', NULL, 8632.00, 9188.00, '1.00', 0, NULL, 'YER4V5quLNDMOX', '2017-12-02 07:54:40', '2017-12-02 07:54:40'),
(758, 64, 10, 'Lake', 182, 'BN-784', '859139881116', NULL, 8632.00, 9188.00, '1.00', 0, NULL, 'YER4V5quLNDMOX', '2017-12-02 07:54:40', '2017-12-02 07:54:40'),
(759, 64, 10, 'Lake', 182, 'BN-784', '859139881116', NULL, 8632.00, 9188.00, '1.00', 0, NULL, 'YER4V5quLNDMOX', '2017-12-02 07:54:40', '2017-12-02 07:54:40'),
(760, 64, 10, 'Lake', 182, 'BN-784', '859139881116', NULL, 8632.00, 9188.00, '1.00', 0, NULL, 'YER4V5quLNDMOX', '2017-12-02 07:54:40', '2017-12-02 07:54:40'),
(761, 64, 3, 'New', 44, 'BN-005', '174595853263', NULL, 14447.00, 14718.00, '-5.00', 0, NULL, 'Q12kKnxsrp8En', '2017-12-02 07:54:40', '2017-12-02 07:57:22'),
(762, 64, 3, 'New', 44, 'BN-005', '174595853263', NULL, 14447.00, 14718.00, '-1.00', 0, NULL, 'Q12kKnxsrp8En', '2017-12-02 07:54:40', '2017-12-02 07:57:22'),
(763, 64, 3, 'New', 44, 'BN-005', '174595853263', NULL, 14447.00, 14718.00, '0.00', 0, NULL, 'Q12kKnxsrp8En', '2017-12-02 07:54:40', '2017-12-02 07:57:16'),
(764, 64, 3, 'New', 44, 'BN-005', '174595853263', NULL, 14447.00, 14718.00, '1.00', 0, NULL, 'Q12kKnxsrp8En', '2017-12-02 07:54:40', '2017-12-02 07:54:40'),
(765, 64, 3, 'New', 44, 'BN-005', '174595853263', NULL, 14447.00, 14718.00, '1.00', 0, NULL, 'Q12kKnxsrp8En', '2017-12-02 07:54:40', '2017-12-02 07:54:40'),
(766, 64, 3, 'New', 44, 'BN-005', '174595853263', NULL, 14447.00, 14718.00, '1.00', 0, NULL, 'Q12kKnxsrp8En', '2017-12-02 07:54:41', '2017-12-02 07:54:41'),
(767, 64, 3, 'New', 44, 'BN-005', '174595853263', NULL, 14447.00, 14718.00, '1.00', 0, NULL, 'Q12kKnxsrp8En', '2017-12-02 07:54:41', '2017-12-02 07:54:41'),
(768, 64, 3, 'New', 44, 'BN-005', '174595853263', NULL, 14447.00, 14718.00, '1.00', 0, NULL, 'Q12kKnxsrp8En', '2017-12-02 07:54:41', '2017-12-02 07:54:41'),
(769, 64, 3, 'New', 44, 'BN-005', '174595853263', NULL, 14447.00, 14718.00, '1.00', 0, NULL, 'Q12kKnxsrp8En', '2017-12-02 07:54:41', '2017-12-02 07:54:41'),
(770, 64, 3, 'New', 44, 'BN-005', '174595853263', NULL, 14447.00, 14718.00, '1.00', 0, NULL, 'Q12kKnxsrp8En', '2017-12-02 07:54:41', '2017-12-02 07:54:41'),
(771, 64, 3, 'New', 44, 'BN-005', '174595853263', NULL, 14447.00, 14718.00, '1.00', 0, NULL, 'Q12kKnxsrp8En', '2017-12-02 07:54:41', '2017-12-02 07:54:41'),
(772, 65, 3, 'New', 50, 'BN-780', '530925308528', NULL, 6215.00, 6847.00, '-3.00', 0, NULL, 'E9Ej9P9FKWJGg', '2017-12-02 07:54:42', '2017-12-02 07:58:28'),
(773, 65, 3, 'New', 50, 'BN-780', '530925308528', NULL, 6215.00, 6847.00, '0.00', 0, NULL, 'E9Ej9P9FKWJGg', '2017-12-02 07:54:42', '2017-12-02 07:58:00'),
(774, 65, 3, 'New', 50, 'BN-780', '530925308528', NULL, 6215.00, 6847.00, '1.00', 0, NULL, 'E9Ej9P9FKWJGg', '2017-12-02 07:54:42', '2017-12-02 07:54:42'),
(775, 65, 3, 'New', 50, 'BN-780', '530925308528', NULL, 6215.00, 6847.00, '1.00', 0, NULL, 'E9Ej9P9FKWJGg', '2017-12-02 07:54:42', '2017-12-02 07:54:42'),
(776, 65, 3, 'New', 50, 'BN-780', '530925308528', NULL, 6215.00, 6847.00, '1.00', 0, NULL, 'E9Ej9P9FKWJGg', '2017-12-02 07:54:42', '2017-12-02 07:54:42'),
(777, 65, 3, 'New', 50, 'BN-780', '530925308528', NULL, 6215.00, 6847.00, '1.00', 0, NULL, 'E9Ej9P9FKWJGg', '2017-12-02 07:54:42', '2017-12-02 07:54:42'),
(778, 65, 3, 'New', 50, 'BN-780', '530925308528', NULL, 6215.00, 6847.00, '1.00', 0, NULL, 'E9Ej9P9FKWJGg', '2017-12-02 07:54:42', '2017-12-02 07:54:42'),
(779, 65, 3, 'New', 50, 'BN-780', '530925308528', NULL, 6215.00, 6847.00, '1.00', 0, NULL, 'E9Ej9P9FKWJGg', '2017-12-02 07:54:42', '2017-12-02 07:54:42'),
(780, 65, 3, 'New', 50, 'BN-780', '530925308528', NULL, 6215.00, 6847.00, '1.00', 0, NULL, 'E9Ej9P9FKWJGg', '2017-12-02 07:54:42', '2017-12-02 07:54:42'),
(781, 65, 3, 'New', 50, 'BN-780', '530925308528', NULL, 6215.00, 6847.00, '1.00', 0, NULL, 'E9Ej9P9FKWJGg', '2017-12-02 07:54:42', '2017-12-02 07:54:42'),
(782, 65, 3, 'New', 50, 'BN-780', '530925308528', NULL, 6215.00, 6847.00, '1.00', 0, NULL, 'E9Ej9P9FKWJGg', '2017-12-02 07:54:42', '2017-12-02 07:54:42'),
(783, 65, 3, 'New', 50, 'BN-780', '530925308528', NULL, 6215.00, 6847.00, '1.00', 0, NULL, 'E9Ej9P9FKWJGg', '2017-12-02 07:54:42', '2017-12-02 07:54:42'),
(784, 66, 1, 'North', 5, 'BN-983', '233014280940', NULL, 1217.00, 1644.00, '-3.00', 1, 'b8qquk3d', 'qxEnLj9t3NA8P', '2017-12-02 07:54:43', '2017-12-02 08:00:22'),
(785, 66, 1, 'North', 5, 'BN-983', '233014280940', NULL, 1217.00, 1644.00, '0.00', 0, NULL, 'qxEnLj9t3NA8P', '2017-12-02 07:54:43', '2017-12-02 07:57:01'),
(786, 66, 1, 'North', 5, 'BN-983', '233014280940', NULL, 1217.00, 1644.00, '1.00', 0, NULL, 'qxEnLj9t3NA8P', '2017-12-02 07:54:43', '2017-12-02 07:54:43'),
(787, 66, 1, 'North', 5, 'BN-983', '233014280940', NULL, 1217.00, 1644.00, '1.00', 0, NULL, 'qxEnLj9t3NA8P', '2017-12-02 07:54:43', '2017-12-02 07:54:43'),
(788, 66, 1, 'North', 5, 'BN-983', '233014280940', NULL, 1217.00, 1644.00, '1.00', 0, NULL, 'qxEnLj9t3NA8P', '2017-12-02 07:54:43', '2017-12-02 07:54:43'),
(789, 66, 1, 'North', 5, 'BN-983', '233014280940', NULL, 1217.00, 1644.00, '1.00', 0, NULL, 'qxEnLj9t3NA8P', '2017-12-02 07:54:43', '2017-12-02 07:54:43'),
(790, 66, 1, 'North', 5, 'BN-983', '233014280940', NULL, 1217.00, 1644.00, '1.00', 0, NULL, 'qxEnLj9t3NA8P', '2017-12-02 07:54:43', '2017-12-02 07:54:43'),
(791, 66, 1, 'North', 5, 'BN-983', '233014280940', NULL, 1217.00, 1644.00, '1.00', 0, NULL, 'qxEnLj9t3NA8P', '2017-12-02 07:54:43', '2017-12-02 07:54:43'),
(792, 66, 1, 'North', 5, 'BN-983', '233014280940', NULL, 1217.00, 1644.00, '1.00', 0, NULL, 'qxEnLj9t3NA8P', '2017-12-02 07:54:43', '2017-12-02 07:54:43'),
(793, 66, 1, 'North', 5, 'BN-983', '233014280940', NULL, 1217.00, 1644.00, '1.00', 0, NULL, 'qxEnLj9t3NA8P', '2017-12-02 07:54:44', '2017-12-02 07:54:44'),
(794, 66, 1, 'North', 5, 'BN-983', '233014280940', NULL, 1217.00, 1644.00, '1.00', 0, NULL, 'qxEnLj9t3NA8P', '2017-12-02 07:54:44', '2017-12-02 07:54:44'),
(795, 66, 1, 'North', 5, 'BN-983', '233014280940', NULL, 1217.00, 1644.00, '1.00', 0, NULL, 'qxEnLj9t3NA8P', '2017-12-02 07:54:44', '2017-12-02 07:54:44'),
(796, 67, 6, 'Port', 119, 'BN-366', '832077719178', NULL, 2209.00, 2840.00, '1.00', 0, NULL, 'KrG0KXxiZ434k', '2017-12-02 07:54:44', '2017-12-02 07:54:44'),
(797, 67, 6, 'Port', 119, 'BN-366', '832077719178', NULL, 2209.00, 2840.00, '1.00', 0, NULL, 'KrG0KXxiZ434k', '2017-12-02 07:54:45', '2017-12-02 07:54:45'),
(798, 67, 6, 'Port', 119, 'BN-366', '832077719178', NULL, 2209.00, 2840.00, '1.00', 0, NULL, 'KrG0KXxiZ434k', '2017-12-02 07:54:45', '2017-12-02 07:54:45'),
(799, 67, 6, 'Port', 119, 'BN-366', '832077719178', NULL, 2209.00, 2840.00, '1.00', 0, NULL, 'KrG0KXxiZ434k', '2017-12-02 07:54:45', '2017-12-02 07:54:45'),
(800, 67, 6, 'Port', 119, 'BN-366', '832077719178', NULL, 2209.00, 2840.00, '1.00', 0, NULL, 'KrG0KXxiZ434k', '2017-12-02 07:54:45', '2017-12-02 07:54:45'),
(801, 67, 6, 'Port', 119, 'BN-366', '832077719178', NULL, 2209.00, 2840.00, '1.00', 0, NULL, 'KrG0KXxiZ434k', '2017-12-02 07:54:45', '2017-12-02 07:54:45'),
(802, 67, 6, 'Port', 119, 'BN-366', '832077719178', NULL, 2209.00, 2840.00, '1.00', 0, NULL, 'KrG0KXxiZ434k', '2017-12-02 07:54:45', '2017-12-02 07:54:45'),
(803, 67, 6, 'Port', 119, 'BN-366', '832077719178', NULL, 2209.00, 2840.00, '1.00', 0, NULL, 'KrG0KXxiZ434k', '2017-12-02 07:54:45', '2017-12-02 07:54:45'),
(804, 68, 4, 'North', 79, 'BN-554', '137790653823', NULL, 13117.00, 13884.00, '-3.00', 1, 'nazwIA7b', 'Krv7AzpIPEPy7', '2017-12-02 07:54:46', '2017-12-02 08:00:09'),
(805, 68, 4, 'North', 79, 'BN-554', '137790653823', NULL, 13117.00, 13884.00, '0.00', 0, NULL, 'Krv7AzpIPEPy7', '2017-12-02 07:54:46', '2017-12-02 07:56:49'),
(806, 68, 4, 'North', 79, 'BN-554', '137790653823', NULL, 13117.00, 13884.00, '0.00', 0, NULL, 'Krv7AzpIPEPy7', '2017-12-02 07:54:46', '2017-12-02 07:56:49'),
(807, 68, 4, 'North', 79, 'BN-554', '137790653823', NULL, 13117.00, 13884.00, '1.00', 0, NULL, 'Krv7AzpIPEPy7', '2017-12-02 07:54:46', '2017-12-02 07:54:46'),
(808, 68, 4, 'North', 79, 'BN-554', '137790653823', NULL, 13117.00, 13884.00, '1.00', 0, NULL, 'Krv7AzpIPEPy7', '2017-12-02 07:54:46', '2017-12-02 07:54:46'),
(809, 68, 4, 'North', 79, 'BN-554', '137790653823', NULL, 13117.00, 13884.00, '1.00', 0, NULL, 'Krv7AzpIPEPy7', '2017-12-02 07:54:46', '2017-12-02 07:54:46'),
(810, 68, 4, 'North', 79, 'BN-554', '137790653823', NULL, 13117.00, 13884.00, '1.00', 0, NULL, 'Krv7AzpIPEPy7', '2017-12-02 07:54:46', '2017-12-02 07:54:46'),
(811, 68, 4, 'North', 79, 'BN-554', '137790653823', NULL, 13117.00, 13884.00, '1.00', 0, NULL, 'Krv7AzpIPEPy7', '2017-12-02 07:54:46', '2017-12-02 07:54:46'),
(812, 68, 4, 'North', 79, 'BN-554', '137790653823', NULL, 13117.00, 13884.00, '1.00', 0, NULL, 'Krv7AzpIPEPy7', '2017-12-02 07:54:46', '2017-12-02 07:54:46'),
(813, 68, 4, 'North', 79, 'BN-554', '137790653823', NULL, 13117.00, 13884.00, '1.00', 0, NULL, 'Krv7AzpIPEPy7', '2017-12-02 07:54:46', '2017-12-02 07:54:46'),
(814, 68, 4, 'North', 79, 'BN-554', '137790653823', NULL, 13117.00, 13884.00, '1.00', 0, NULL, 'Krv7AzpIPEPy7', '2017-12-02 07:54:46', '2017-12-02 07:54:46'),
(815, 68, 4, 'North', 79, 'BN-554', '137790653823', NULL, 13117.00, 13884.00, '1.00', 0, NULL, 'Krv7AzpIPEPy7', '2017-12-02 07:54:47', '2017-12-02 07:54:47'),
(816, 72, 3, 'New', 46, 'BN-136', '897350322254', NULL, 1917.00, 2225.00, '-3.00', 1, 'dNkYFYOe', 'GZABXvytJNEgr', '2017-12-02 07:54:49', '2017-12-02 08:00:15'),
(817, 72, 3, 'New', 46, 'BN-136', '897350322254', NULL, 1917.00, 2225.00, '1.00', 0, NULL, 'GZABXvytJNEgr', '2017-12-02 07:54:49', '2017-12-02 07:54:49'),
(818, 72, 3, 'New', 46, 'BN-136', '897350322254', NULL, 1917.00, 2225.00, '1.00', 0, NULL, 'GZABXvytJNEgr', '2017-12-02 07:54:49', '2017-12-02 07:54:49'),
(819, 72, 3, 'New', 46, 'BN-136', '897350322254', NULL, 1917.00, 2225.00, '1.00', 0, NULL, 'GZABXvytJNEgr', '2017-12-02 07:54:49', '2017-12-02 07:54:49'),
(820, 72, 3, 'New', 46, 'BN-136', '897350322254', NULL, 1917.00, 2225.00, '1.00', 0, NULL, 'GZABXvytJNEgr', '2017-12-02 07:54:49', '2017-12-02 07:54:49'),
(821, 72, 3, 'New', 46, 'BN-136', '897350322254', NULL, 1917.00, 2225.00, '1.00', 0, NULL, 'GZABXvytJNEgr', '2017-12-02 07:54:49', '2017-12-02 07:54:49'),
(822, 72, 3, 'New', 46, 'BN-136', '897350322254', NULL, 1917.00, 2225.00, '1.00', 0, NULL, 'GZABXvytJNEgr', '2017-12-02 07:54:50', '2017-12-02 07:54:50'),
(823, 72, 3, 'New', 46, 'BN-136', '897350322254', NULL, 1917.00, 2225.00, '1.00', 0, NULL, 'GZABXvytJNEgr', '2017-12-02 07:54:50', '2017-12-02 07:54:50'),
(824, 73, 5, 'West', 88, 'BN-463', '581990965109', NULL, 1728.00, 2140.00, '-3.00', 0, NULL, '0grBDLjTGgy3JK', '2017-12-02 07:54:51', '2017-12-02 07:58:24'),
(825, 73, 5, 'West', 88, 'BN-463', '581990965109', NULL, 1728.00, 2140.00, '0.00', 0, NULL, '0grBDLjTGgy3JK', '2017-12-02 07:54:51', '2017-12-02 07:56:54'),
(826, 73, 5, 'West', 88, 'BN-463', '581990965109', NULL, 1728.00, 2140.00, '1.00', 0, NULL, '0grBDLjTGgy3JK', '2017-12-02 07:54:51', '2017-12-02 07:54:51'),
(827, 73, 5, 'West', 88, 'BN-463', '581990965109', NULL, 1728.00, 2140.00, '1.00', 0, NULL, '0grBDLjTGgy3JK', '2017-12-02 07:54:51', '2017-12-02 07:54:51'),
(828, 73, 5, 'West', 88, 'BN-463', '581990965109', NULL, 1728.00, 2140.00, '1.00', 0, NULL, '0grBDLjTGgy3JK', '2017-12-02 07:54:51', '2017-12-02 07:54:51'),
(829, 73, 5, 'West', 88, 'BN-463', '581990965109', NULL, 1728.00, 2140.00, '1.00', 0, NULL, '0grBDLjTGgy3JK', '2017-12-02 07:54:51', '2017-12-02 07:54:51'),
(830, 73, 5, 'West', 88, 'BN-463', '581990965109', NULL, 1728.00, 2140.00, '1.00', 0, NULL, '0grBDLjTGgy3JK', '2017-12-02 07:54:51', '2017-12-02 07:54:51'),
(831, 73, 5, 'West', 88, 'BN-463', '581990965109', NULL, 1728.00, 2140.00, '1.00', 0, NULL, '0grBDLjTGgy3JK', '2017-12-02 07:54:51', '2017-12-02 07:54:51'),
(832, 73, 5, 'West', 88, 'BN-463', '581990965109', NULL, 1728.00, 2140.00, '1.00', 0, NULL, '0grBDLjTGgy3JK', '2017-12-02 07:54:51', '2017-12-02 07:54:51'),
(833, 73, 8, 'East', 148, 'BN-029', '190982540813', NULL, 16395.00, 16997.00, '1.00', 0, NULL, '0RnQmZmh6Ey39', '2017-12-02 07:54:52', '2017-12-02 07:54:52'),
(834, 73, 8, 'East', 148, 'BN-029', '190982540813', NULL, 16395.00, 16997.00, '1.00', 0, NULL, '0RnQmZmh6Ey39', '2017-12-02 07:54:52', '2017-12-02 07:54:52'),
(835, 73, 8, 'East', 148, 'BN-029', '190982540813', NULL, 16395.00, 16997.00, '1.00', 0, NULL, '0RnQmZmh6Ey39', '2017-12-02 07:54:52', '2017-12-02 07:54:52'),
(836, 73, 8, 'East', 148, 'BN-029', '190982540813', NULL, 16395.00, 16997.00, '1.00', 0, NULL, '0RnQmZmh6Ey39', '2017-12-02 07:54:52', '2017-12-02 07:54:52'),
(837, 73, 8, 'East', 148, 'BN-029', '190982540813', NULL, 16395.00, 16997.00, '1.00', 0, NULL, '0RnQmZmh6Ey39', '2017-12-02 07:54:52', '2017-12-02 07:54:52'),
(838, 73, 8, 'East', 148, 'BN-029', '190982540813', NULL, 16395.00, 16997.00, '1.00', 0, NULL, '0RnQmZmh6Ey39', '2017-12-02 07:54:52', '2017-12-02 07:54:52'),
(839, 73, 8, 'East', 148, 'BN-029', '190982540813', NULL, 16395.00, 16997.00, '1.00', 0, NULL, '0RnQmZmh6Ey39', '2017-12-02 07:54:52', '2017-12-02 07:54:52'),
(840, 73, 8, 'East', 148, 'BN-029', '190982540813', NULL, 16395.00, 16997.00, '1.00', 0, NULL, '0RnQmZmh6Ey39', '2017-12-02 07:54:52', '2017-12-02 07:54:52'),
(841, 73, 8, 'East', 148, 'BN-029', '190982540813', NULL, 16395.00, 16997.00, '1.00', 0, NULL, '0RnQmZmh6Ey39', '2017-12-02 07:54:52', '2017-12-02 07:54:52'),
(842, 73, 6, 'Port', 118, 'BN-565', '669954170766', NULL, 14367.00, 15009.00, '1.00', 1, 'MdRDFmQa', 'g51ZDRNSPyX2j', '2017-12-02 07:54:53', '2017-12-02 08:00:09'),
(843, 73, 6, 'Port', 118, 'BN-565', '669954170766', NULL, 14367.00, 15009.00, '1.00', 0, NULL, 'g51ZDRNSPyX2j', '2017-12-02 07:54:53', '2017-12-02 07:54:53'),
(844, 73, 6, 'Port', 118, 'BN-565', '669954170766', NULL, 14367.00, 15009.00, '1.00', 0, NULL, 'g51ZDRNSPyX2j', '2017-12-02 07:54:53', '2017-12-02 07:54:53'),
(845, 73, 6, 'Port', 118, 'BN-565', '669954170766', NULL, 14367.00, 15009.00, '1.00', 0, NULL, 'g51ZDRNSPyX2j', '2017-12-02 07:54:53', '2017-12-02 07:54:53'),
(846, 73, 6, 'Port', 118, 'BN-565', '669954170766', NULL, 14367.00, 15009.00, '1.00', 0, NULL, 'g51ZDRNSPyX2j', '2017-12-02 07:54:53', '2017-12-02 07:54:53'),
(847, 73, 6, 'Port', 118, 'BN-565', '669954170766', NULL, 14367.00, 15009.00, '1.00', 0, NULL, 'g51ZDRNSPyX2j', '2017-12-02 07:54:53', '2017-12-02 07:54:53'),
(848, 73, 6, 'Port', 118, 'BN-565', '669954170766', NULL, 14367.00, 15009.00, '1.00', 0, NULL, 'g51ZDRNSPyX2j', '2017-12-02 07:54:53', '2017-12-02 07:54:53'),
(849, 73, 6, 'Port', 118, 'BN-565', '669954170766', NULL, 14367.00, 15009.00, '1.00', 0, NULL, 'g51ZDRNSPyX2j', '2017-12-02 07:54:54', '2017-12-02 07:54:54'),
(850, 73, 6, 'Port', 118, 'BN-565', '669954170766', NULL, 14367.00, 15009.00, '1.00', 0, NULL, 'g51ZDRNSPyX2j', '2017-12-02 07:54:54', '2017-12-02 07:54:54'),
(851, 73, 2, 'South', 28, 'BN-966', '559088465299', NULL, 17862.00, 18476.00, '-5.00', 0, NULL, '66KGJrWHoA4NL', '2017-12-02 07:54:54', '2017-12-02 07:58:15'),
(852, 73, 2, 'South', 28, 'BN-966', '559088465299', NULL, 17862.00, 18476.00, '-1.00', 0, NULL, '66KGJrWHoA4NL', '2017-12-02 07:54:54', '2017-12-02 07:57:58'),
(853, 73, 2, 'South', 28, 'BN-966', '559088465299', NULL, 17862.00, 18476.00, '0.00', 0, NULL, '66KGJrWHoA4NL', '2017-12-02 07:54:54', '2017-12-02 07:57:10'),
(854, 73, 2, 'South', 28, 'BN-966', '559088465299', NULL, 17862.00, 18476.00, '1.00', 0, NULL, '66KGJrWHoA4NL', '2017-12-02 07:54:54', '2017-12-02 07:54:54'),
(855, 73, 2, 'South', 28, 'BN-966', '559088465299', NULL, 17862.00, 18476.00, '1.00', 0, NULL, '66KGJrWHoA4NL', '2017-12-02 07:54:54', '2017-12-02 07:54:54'),
(856, 73, 2, 'South', 28, 'BN-966', '559088465299', NULL, 17862.00, 18476.00, '1.00', 0, NULL, '66KGJrWHoA4NL', '2017-12-02 07:54:55', '2017-12-02 07:54:55'),
(857, 73, 2, 'South', 28, 'BN-966', '559088465299', NULL, 17862.00, 18476.00, '1.00', 0, NULL, '66KGJrWHoA4NL', '2017-12-02 07:54:55', '2017-12-02 07:54:55'),
(858, 73, 2, 'South', 28, 'BN-966', '559088465299', NULL, 17862.00, 18476.00, '1.00', 0, NULL, '66KGJrWHoA4NL', '2017-12-02 07:54:55', '2017-12-02 07:54:55'),
(859, 73, 2, 'South', 28, 'BN-966', '559088465299', NULL, 17862.00, 18476.00, '1.00', 0, NULL, '66KGJrWHoA4NL', '2017-12-02 07:54:55', '2017-12-02 07:54:55'),
(860, 73, 2, 'South', 28, 'BN-966', '559088465299', NULL, 17862.00, 18476.00, '1.00', 0, NULL, '66KGJrWHoA4NL', '2017-12-02 07:54:55', '2017-12-02 07:54:55'),
(861, 74, 6, 'Port', 114, 'BN-305', '515519728371', NULL, 11522.00, 12266.00, '-4.00', 0, NULL, 'Ell2vL2u30QVqZ', '2017-12-02 07:54:55', '2017-12-02 07:57:21'),
(862, 74, 6, 'Port', 114, 'BN-305', '515519728371', NULL, 11522.00, 12266.00, '-1.00', 0, NULL, 'Ell2vL2u30QVqZ', '2017-12-02 07:54:56', '2017-12-02 07:56:51'),
(863, 74, 6, 'Port', 114, 'BN-305', '515519728371', NULL, 11522.00, 12266.00, '0.00', 0, NULL, 'Ell2vL2u30QVqZ', '2017-12-02 07:54:56', '2017-12-02 07:56:40'),
(864, 74, 6, 'Port', 114, 'BN-305', '515519728371', NULL, 11522.00, 12266.00, '1.00', 0, NULL, 'Ell2vL2u30QVqZ', '2017-12-02 07:54:56', '2017-12-02 07:54:56'),
(865, 74, 6, 'Port', 114, 'BN-305', '515519728371', NULL, 11522.00, 12266.00, '1.00', 0, NULL, 'Ell2vL2u30QVqZ', '2017-12-02 07:54:56', '2017-12-02 07:54:56'),
(866, 74, 6, 'Port', 114, 'BN-305', '515519728371', NULL, 11522.00, 12266.00, '1.00', 0, NULL, 'Ell2vL2u30QVqZ', '2017-12-02 07:54:56', '2017-12-02 07:54:56'),
(867, 74, 6, 'Port', 114, 'BN-305', '515519728371', NULL, 11522.00, 12266.00, '1.00', 0, NULL, 'Ell2vL2u30QVqZ', '2017-12-02 07:54:56', '2017-12-02 07:54:56'),
(868, 74, 6, 'Port', 114, 'BN-305', '515519728371', NULL, 11522.00, 12266.00, '1.00', 0, NULL, 'Ell2vL2u30QVqZ', '2017-12-02 07:54:56', '2017-12-02 07:54:56'),
(869, 75, 3, 'New', 49, 'BN-360', '813097590251', NULL, 3900.00, 4549.00, '1.00', 0, NULL, 'BBADKRVIMAmgA', '2017-12-02 07:54:57', '2017-12-02 07:54:57'),
(870, 75, 3, 'New', 49, 'BN-360', '813097590251', NULL, 3900.00, 4549.00, '1.00', 0, NULL, 'BBADKRVIMAmgA', '2017-12-02 07:54:57', '2017-12-02 07:54:57'),
(871, 75, 3, 'New', 49, 'BN-360', '813097590251', NULL, 3900.00, 4549.00, '1.00', 0, NULL, 'BBADKRVIMAmgA', '2017-12-02 07:54:57', '2017-12-02 07:54:57'),
(872, 75, 3, 'New', 49, 'BN-360', '813097590251', NULL, 3900.00, 4549.00, '1.00', 0, NULL, 'BBADKRVIMAmgA', '2017-12-02 07:54:57', '2017-12-02 07:54:57'),
(873, 75, 3, 'New', 49, 'BN-360', '813097590251', NULL, 3900.00, 4549.00, '1.00', 0, NULL, 'BBADKRVIMAmgA', '2017-12-02 07:54:57', '2017-12-02 07:54:57'),
(874, 75, 3, 'New', 49, 'BN-360', '813097590251', NULL, 3900.00, 4549.00, '1.00', 0, NULL, 'BBADKRVIMAmgA', '2017-12-02 07:54:57', '2017-12-02 07:54:57'),
(875, 75, 3, 'New', 49, 'BN-360', '813097590251', NULL, 3900.00, 4549.00, '1.00', 0, NULL, 'BBADKRVIMAmgA', '2017-12-02 07:54:57', '2017-12-02 07:54:57'),
(876, 75, 3, 'New', 49, 'BN-360', '813097590251', NULL, 3900.00, 4549.00, '1.00', 0, NULL, 'BBADKRVIMAmgA', '2017-12-02 07:54:57', '2017-12-02 07:54:57'),
(877, 75, 3, 'New', 49, 'BN-360', '813097590251', NULL, 3900.00, 4549.00, '1.00', 0, NULL, 'BBADKRVIMAmgA', '2017-12-02 07:54:57', '2017-12-02 07:54:57'),
(878, 75, 10, 'Lake', 195, 'BN-999', '454663434168', NULL, 16841.00, 17698.00, '-1.00', 1, 'dROVc4Le', 'Qnr8gD0i3Rz1w', '2017-12-02 07:54:57', '2017-12-02 08:00:40'),
(879, 75, 10, 'Lake', 195, 'BN-999', '454663434168', NULL, 16841.00, 17698.00, '1.00', 0, NULL, 'Qnr8gD0i3Rz1w', '2017-12-02 07:54:57', '2017-12-02 07:54:57'),
(880, 75, 10, 'Lake', 195, 'BN-999', '454663434168', NULL, 16841.00, 17698.00, '1.00', 0, NULL, 'Qnr8gD0i3Rz1w', '2017-12-02 07:54:57', '2017-12-02 07:54:57'),
(881, 75, 10, 'Lake', 195, 'BN-999', '454663434168', NULL, 16841.00, 17698.00, '1.00', 0, NULL, 'Qnr8gD0i3Rz1w', '2017-12-02 07:54:57', '2017-12-02 07:54:57'),
(882, 75, 10, 'Lake', 195, 'BN-999', '454663434168', NULL, 16841.00, 17698.00, '1.00', 0, NULL, 'Qnr8gD0i3Rz1w', '2017-12-02 07:54:58', '2017-12-02 07:54:58'),
(883, 75, 10, 'Lake', 195, 'BN-999', '454663434168', NULL, 16841.00, 17698.00, '1.00', 0, NULL, 'Qnr8gD0i3Rz1w', '2017-12-02 07:54:58', '2017-12-02 07:54:58'),
(884, 75, 10, 'Lake', 195, 'BN-999', '454663434168', NULL, 16841.00, 17698.00, '1.00', 0, NULL, 'Qnr8gD0i3Rz1w', '2017-12-02 07:54:58', '2017-12-02 07:54:58'),
(885, 75, 10, 'Lake', 195, 'BN-999', '454663434168', NULL, 16841.00, 17698.00, '1.00', 0, NULL, 'Qnr8gD0i3Rz1w', '2017-12-02 07:54:58', '2017-12-02 07:54:58'),
(886, 75, 10, 'Lake', 195, 'BN-999', '454663434168', NULL, 16841.00, 17698.00, '1.00', 0, NULL, 'Qnr8gD0i3Rz1w', '2017-12-02 07:54:58', '2017-12-02 07:54:58'),
(887, 75, 4, 'North', 71, 'BN-993', '805387945940', NULL, 13531.00, 13883.00, '1.00', 0, NULL, 'DR0opGqH3R4jD', '2017-12-02 07:54:58', '2017-12-02 07:54:58'),
(888, 75, 4, 'North', 71, 'BN-993', '805387945940', NULL, 13531.00, 13883.00, '1.00', 0, NULL, 'DR0opGqH3R4jD', '2017-12-02 07:54:58', '2017-12-02 07:54:58'),
(889, 75, 4, 'North', 71, 'BN-993', '805387945940', NULL, 13531.00, 13883.00, '1.00', 0, NULL, 'DR0opGqH3R4jD', '2017-12-02 07:54:58', '2017-12-02 07:54:58'),
(890, 75, 4, 'North', 71, 'BN-993', '805387945940', NULL, 13531.00, 13883.00, '1.00', 0, NULL, 'DR0opGqH3R4jD', '2017-12-02 07:54:58', '2017-12-02 07:54:58'),
(891, 75, 4, 'North', 71, 'BN-993', '805387945940', NULL, 13531.00, 13883.00, '1.00', 0, NULL, 'DR0opGqH3R4jD', '2017-12-02 07:54:58', '2017-12-02 07:54:58'),
(892, 75, 4, 'North', 71, 'BN-993', '805387945940', NULL, 13531.00, 13883.00, '1.00', 0, NULL, 'DR0opGqH3R4jD', '2017-12-02 07:54:58', '2017-12-02 07:54:58'),
(893, 75, 4, 'North', 71, 'BN-993', '805387945940', NULL, 13531.00, 13883.00, '1.00', 0, NULL, 'DR0opGqH3R4jD', '2017-12-02 07:54:58', '2017-12-02 07:54:58'),
(894, 75, 4, 'North', 71, 'BN-993', '805387945940', NULL, 13531.00, 13883.00, '1.00', 0, NULL, 'DR0opGqH3R4jD', '2017-12-02 07:54:58', '2017-12-02 07:54:58'),
(895, 75, 4, 'North', 71, 'BN-993', '805387945940', NULL, 13531.00, 13883.00, '1.00', 0, NULL, 'DR0opGqH3R4jD', '2017-12-02 07:54:59', '2017-12-02 07:54:59'),
(896, 75, 5, 'West', 82, 'BN-364', '376278412747', NULL, 14913.00, 15590.00, '-1.00', 0, NULL, 'lOpMAgXFjM47', '2017-12-02 07:54:59', '2017-12-02 07:58:31'),
(897, 75, 5, 'West', 82, 'BN-364', '376278412747', NULL, 14913.00, 15590.00, '1.00', 0, NULL, 'lOpMAgXFjM47', '2017-12-02 07:54:59', '2017-12-02 07:54:59'),
(898, 75, 5, 'West', 82, 'BN-364', '376278412747', NULL, 14913.00, 15590.00, '1.00', 0, NULL, 'lOpMAgXFjM47', '2017-12-02 07:54:59', '2017-12-02 07:54:59'),
(899, 75, 5, 'West', 82, 'BN-364', '376278412747', NULL, 14913.00, 15590.00, '1.00', 0, NULL, 'lOpMAgXFjM47', '2017-12-02 07:54:59', '2017-12-02 07:54:59'),
(900, 75, 5, 'West', 82, 'BN-364', '376278412747', NULL, 14913.00, 15590.00, '1.00', 0, NULL, 'lOpMAgXFjM47', '2017-12-02 07:54:59', '2017-12-02 07:54:59'),
(901, 75, 5, 'West', 82, 'BN-364', '376278412747', NULL, 14913.00, 15590.00, '1.00', 0, NULL, 'lOpMAgXFjM47', '2017-12-02 07:54:59', '2017-12-02 07:54:59'),
(902, 75, 5, 'West', 82, 'BN-364', '376278412747', NULL, 14913.00, 15590.00, '1.00', 0, NULL, 'lOpMAgXFjM47', '2017-12-02 07:54:59', '2017-12-02 07:54:59'),
(903, 75, 5, 'West', 82, 'BN-364', '376278412747', NULL, 14913.00, 15590.00, '1.00', 0, NULL, 'lOpMAgXFjM47', '2017-12-02 07:54:59', '2017-12-02 07:54:59'),
(904, 75, 5, 'West', 82, 'BN-364', '376278412747', NULL, 14913.00, 15590.00, '1.00', 0, NULL, 'lOpMAgXFjM47', '2017-12-02 07:54:59', '2017-12-02 07:54:59'),
(905, 76, 8, 'East', 158, 'BN-576', '193597696265', NULL, 5032.00, 5446.00, '-1.00', 0, NULL, 'rR4wDRjFBPEP3', '2017-12-02 07:55:01', '2017-12-02 07:57:28'),
(906, 76, 8, 'East', 158, 'BN-576', '193597696265', NULL, 5032.00, 5446.00, '1.00', 0, NULL, 'rR4wDRjFBPEP3', '2017-12-02 07:55:01', '2017-12-02 07:55:01'),
(907, 76, 8, 'East', 158, 'BN-576', '193597696265', NULL, 5032.00, 5446.00, '1.00', 0, NULL, 'rR4wDRjFBPEP3', '2017-12-02 07:55:01', '2017-12-02 07:55:01'),
(908, 76, 8, 'East', 158, 'BN-576', '193597696265', NULL, 5032.00, 5446.00, '1.00', 0, NULL, 'rR4wDRjFBPEP3', '2017-12-02 07:55:01', '2017-12-02 07:55:01'),
(909, 76, 8, 'East', 158, 'BN-576', '193597696265', NULL, 5032.00, 5446.00, '1.00', 0, NULL, 'rR4wDRjFBPEP3', '2017-12-02 07:55:01', '2017-12-02 07:55:01'),
(910, 76, 8, 'East', 158, 'BN-576', '193597696265', NULL, 5032.00, 5446.00, '1.00', 0, NULL, 'rR4wDRjFBPEP3', '2017-12-02 07:55:01', '2017-12-02 07:55:01'),
(911, 76, 8, 'East', 158, 'BN-576', '193597696265', NULL, 5032.00, 5446.00, '1.00', 0, NULL, 'rR4wDRjFBPEP3', '2017-12-02 07:55:01', '2017-12-02 07:55:01'),
(912, 76, 8, 'East', 158, 'BN-576', '193597696265', NULL, 5032.00, 5446.00, '1.00', 0, NULL, 'rR4wDRjFBPEP3', '2017-12-02 07:55:02', '2017-12-02 07:55:02'),
(913, 76, 8, 'East', 158, 'BN-576', '193597696265', NULL, 5032.00, 5446.00, '1.00', 0, NULL, 'rR4wDRjFBPEP3', '2017-12-02 07:55:02', '2017-12-02 07:55:02'),
(914, 76, 8, 'East', 158, 'BN-576', '193597696265', NULL, 5032.00, 5446.00, '1.00', 0, NULL, 'rR4wDRjFBPEP3', '2017-12-02 07:55:02', '2017-12-02 07:55:02'),
(915, 76, 8, 'East', 158, 'BN-576', '193597696265', NULL, 5032.00, 5446.00, '1.00', 0, NULL, 'rR4wDRjFBPEP3', '2017-12-02 07:55:02', '2017-12-02 07:55:02'),
(916, 76, 8, 'East', 158, 'BN-576', '193597696265', NULL, 5032.00, 5446.00, '1.00', 0, NULL, 'rR4wDRjFBPEP3', '2017-12-02 07:55:02', '2017-12-02 07:55:02'),
(917, 77, 6, 'Port', 110, 'BN-893', '316606889735', NULL, 5162.00, 5439.00, '1.00', 0, NULL, 'WLVAyZnhGnZoo', '2017-12-02 07:55:03', '2017-12-02 07:55:03'),
(918, 77, 6, 'Port', 110, 'BN-893', '316606889735', NULL, 5162.00, 5439.00, '1.00', 0, NULL, 'WLVAyZnhGnZoo', '2017-12-02 07:55:03', '2017-12-02 07:55:03'),
(919, 77, 6, 'Port', 110, 'BN-893', '316606889735', NULL, 5162.00, 5439.00, '1.00', 0, NULL, 'WLVAyZnhGnZoo', '2017-12-02 07:55:03', '2017-12-02 07:55:03'),
(920, 77, 6, 'Port', 110, 'BN-893', '316606889735', NULL, 5162.00, 5439.00, '1.00', 0, NULL, 'WLVAyZnhGnZoo', '2017-12-02 07:55:03', '2017-12-02 07:55:03'),
(921, 77, 6, 'Port', 110, 'BN-893', '316606889735', NULL, 5162.00, 5439.00, '1.00', 0, NULL, 'WLVAyZnhGnZoo', '2017-12-02 07:55:03', '2017-12-02 07:55:03'),
(922, 77, 6, 'Port', 110, 'BN-893', '316606889735', NULL, 5162.00, 5439.00, '1.00', 0, NULL, 'WLVAyZnhGnZoo', '2017-12-02 07:55:03', '2017-12-02 07:55:03'),
(923, 77, 6, 'Port', 110, 'BN-893', '316606889735', NULL, 5162.00, 5439.00, '1.00', 0, NULL, 'WLVAyZnhGnZoo', '2017-12-02 07:55:03', '2017-12-02 07:55:03'),
(924, 77, 6, 'Port', 110, 'BN-893', '316606889735', NULL, 5162.00, 5439.00, '1.00', 0, NULL, 'WLVAyZnhGnZoo', '2017-12-02 07:55:03', '2017-12-02 07:55:03'),
(925, 77, 6, 'Port', 110, 'BN-893', '316606889735', NULL, 5162.00, 5439.00, '1.00', 0, NULL, 'WLVAyZnhGnZoo', '2017-12-02 07:55:03', '2017-12-02 07:55:03'),
(926, 77, 4, 'North', 70, 'BN-906', '183979798755', NULL, 7738.00, 8582.00, '1.00', 1, 'XdLzHLAa', '82zj2R9s2QBQM', '2017-12-02 07:55:04', '2017-12-02 08:00:09'),
(927, 77, 4, 'North', 70, 'BN-906', '183979798755', NULL, 7738.00, 8582.00, '1.00', 0, NULL, '82zj2R9s2QBQM', '2017-12-02 07:55:04', '2017-12-02 07:55:04'),
(928, 77, 4, 'North', 70, 'BN-906', '183979798755', NULL, 7738.00, 8582.00, '1.00', 0, NULL, '82zj2R9s2QBQM', '2017-12-02 07:55:04', '2017-12-02 07:55:04'),
(929, 77, 4, 'North', 70, 'BN-906', '183979798755', NULL, 7738.00, 8582.00, '1.00', 0, NULL, '82zj2R9s2QBQM', '2017-12-02 07:55:04', '2017-12-02 07:55:04'),
(930, 77, 4, 'North', 70, 'BN-906', '183979798755', NULL, 7738.00, 8582.00, '1.00', 0, NULL, '82zj2R9s2QBQM', '2017-12-02 07:55:04', '2017-12-02 07:55:04'),
(931, 77, 4, 'North', 70, 'BN-906', '183979798755', NULL, 7738.00, 8582.00, '1.00', 0, NULL, '82zj2R9s2QBQM', '2017-12-02 07:55:04', '2017-12-02 07:55:04'),
(932, 77, 4, 'North', 70, 'BN-906', '183979798755', NULL, 7738.00, 8582.00, '1.00', 0, NULL, '82zj2R9s2QBQM', '2017-12-02 07:55:04', '2017-12-02 07:55:04'),
(933, 77, 4, 'North', 70, 'BN-906', '183979798755', NULL, 7738.00, 8582.00, '1.00', 0, NULL, '82zj2R9s2QBQM', '2017-12-02 07:55:04', '2017-12-02 07:55:04'),
(934, 77, 4, 'North', 70, 'BN-906', '183979798755', NULL, 7738.00, 8582.00, '1.00', 0, NULL, '82zj2R9s2QBQM', '2017-12-02 07:55:04', '2017-12-02 07:55:04'),
(935, 77, 9, 'Port', 173, 'BN-706', '212633167962', NULL, 3194.00, 3833.00, '1.00', 0, NULL, 'AnpDvkocpA5pg', '2017-12-02 07:55:04', '2017-12-02 07:55:04'),
(936, 77, 9, 'Port', 173, 'BN-706', '212633167962', NULL, 3194.00, 3833.00, '1.00', 0, NULL, 'AnpDvkocpA5pg', '2017-12-02 07:55:04', '2017-12-02 07:55:04'),
(937, 77, 9, 'Port', 173, 'BN-706', '212633167962', NULL, 3194.00, 3833.00, '1.00', 0, NULL, 'AnpDvkocpA5pg', '2017-12-02 07:55:05', '2017-12-02 07:55:05'),
(938, 77, 9, 'Port', 173, 'BN-706', '212633167962', NULL, 3194.00, 3833.00, '1.00', 0, NULL, 'AnpDvkocpA5pg', '2017-12-02 07:55:05', '2017-12-02 07:55:05'),
(939, 77, 9, 'Port', 173, 'BN-706', '212633167962', NULL, 3194.00, 3833.00, '1.00', 0, NULL, 'AnpDvkocpA5pg', '2017-12-02 07:55:05', '2017-12-02 07:55:05'),
(940, 77, 9, 'Port', 173, 'BN-706', '212633167962', NULL, 3194.00, 3833.00, '1.00', 0, NULL, 'AnpDvkocpA5pg', '2017-12-02 07:55:05', '2017-12-02 07:55:05'),
(941, 77, 9, 'Port', 173, 'BN-706', '212633167962', NULL, 3194.00, 3833.00, '1.00', 0, NULL, 'AnpDvkocpA5pg', '2017-12-02 07:55:05', '2017-12-02 07:55:05'),
(942, 77, 9, 'Port', 173, 'BN-706', '212633167962', NULL, 3194.00, 3833.00, '1.00', 0, NULL, 'AnpDvkocpA5pg', '2017-12-02 07:55:05', '2017-12-02 07:55:05'),
(943, 77, 9, 'Port', 173, 'BN-706', '212633167962', NULL, 3194.00, 3833.00, '1.00', 0, NULL, 'AnpDvkocpA5pg', '2017-12-02 07:55:05', '2017-12-02 07:55:05'),
(944, 77, 3, 'New', 45, 'BN-316', '670946428529', NULL, 7319.00, 7483.00, '1.00', 0, NULL, 'W789lg4HMDXMX', '2017-12-02 07:55:05', '2017-12-02 07:55:05'),
(945, 77, 3, 'New', 45, 'BN-316', '670946428529', NULL, 7319.00, 7483.00, '1.00', 0, NULL, 'W789lg4HMDXMX', '2017-12-02 07:55:05', '2017-12-02 07:55:05'),
(946, 77, 3, 'New', 45, 'BN-316', '670946428529', NULL, 7319.00, 7483.00, '1.00', 0, NULL, 'W789lg4HMDXMX', '2017-12-02 07:55:06', '2017-12-02 07:55:06'),
(947, 77, 3, 'New', 45, 'BN-316', '670946428529', NULL, 7319.00, 7483.00, '1.00', 0, NULL, 'W789lg4HMDXMX', '2017-12-02 07:55:06', '2017-12-02 07:55:06'),
(948, 77, 3, 'New', 45, 'BN-316', '670946428529', NULL, 7319.00, 7483.00, '1.00', 0, NULL, 'W789lg4HMDXMX', '2017-12-02 07:55:06', '2017-12-02 07:55:06'),
(949, 77, 3, 'New', 45, 'BN-316', '670946428529', NULL, 7319.00, 7483.00, '1.00', 0, NULL, 'W789lg4HMDXMX', '2017-12-02 07:55:06', '2017-12-02 07:55:06'),
(950, 77, 3, 'New', 45, 'BN-316', '670946428529', NULL, 7319.00, 7483.00, '1.00', 0, NULL, 'W789lg4HMDXMX', '2017-12-02 07:55:06', '2017-12-02 07:55:06'),
(951, 77, 3, 'New', 45, 'BN-316', '670946428529', NULL, 7319.00, 7483.00, '1.00', 0, NULL, 'W789lg4HMDXMX', '2017-12-02 07:55:06', '2017-12-02 07:55:06'),
(952, 77, 3, 'New', 45, 'BN-316', '670946428529', NULL, 7319.00, 7483.00, '1.00', 0, NULL, 'W789lg4HMDXMX', '2017-12-02 07:55:06', '2017-12-02 07:55:06'),
(953, 77, 3, 'New', 45, 'BN-316', '670946428529', NULL, 7319.00, 7483.00, '1.00', 0, NULL, 'W789lg4HMDXMX', '2017-12-02 07:55:06', '2017-12-02 07:55:06'),
(954, 78, 9, 'Port', 178, 'BN-324', '427866850097', NULL, 10858.00, 11641.00, '-3.00', 0, NULL, '2vxZN6Duw6LR1', '2017-12-02 07:55:07', '2017-12-02 07:57:31'),
(955, 78, 9, 'Port', 178, 'BN-324', '427866850097', NULL, 10858.00, 11641.00, '0.00', 0, NULL, '2vxZN6Duw6LR1', '2017-12-02 07:55:08', '2017-12-02 07:56:42');
INSERT INTO `product_locations` (`id`, `productId`, `productLocation`, `productLocationName`, `binLocation`, `binLocationName`, `productBarcode`, `productCurrency`, `unitCost`, `sellingPrice`, `amount`, `onHold`, `onHoldBy`, `hash`, `created_at`, `updated_at`) VALUES
(956, 78, 9, 'Port', 178, 'BN-324', '427866850097', NULL, 10858.00, 11641.00, '1.00', 0, NULL, '2vxZN6Duw6LR1', '2017-12-02 07:55:08', '2017-12-02 07:55:08'),
(957, 78, 9, 'Port', 178, 'BN-324', '427866850097', NULL, 10858.00, 11641.00, '1.00', 0, NULL, '2vxZN6Duw6LR1', '2017-12-02 07:55:08', '2017-12-02 07:55:08'),
(958, 78, 9, 'Port', 178, 'BN-324', '427866850097', NULL, 10858.00, 11641.00, '1.00', 0, NULL, '2vxZN6Duw6LR1', '2017-12-02 07:55:08', '2017-12-02 07:55:08'),
(959, 78, 9, 'Port', 178, 'BN-324', '427866850097', NULL, 10858.00, 11641.00, '1.00', 0, NULL, '2vxZN6Duw6LR1', '2017-12-02 07:55:08', '2017-12-02 07:55:08'),
(960, 78, 9, 'Port', 178, 'BN-324', '427866850097', NULL, 10858.00, 11641.00, '1.00', 0, NULL, '2vxZN6Duw6LR1', '2017-12-02 07:55:08', '2017-12-02 07:55:08'),
(961, 78, 9, 'Port', 178, 'BN-324', '427866850097', NULL, 10858.00, 11641.00, '1.00', 0, NULL, '2vxZN6Duw6LR1', '2017-12-02 07:55:08', '2017-12-02 07:55:08'),
(962, 78, 9, 'Port', 178, 'BN-324', '427866850097', NULL, 10858.00, 11641.00, '1.00', 0, NULL, '2vxZN6Duw6LR1', '2017-12-02 07:55:08', '2017-12-02 07:55:08'),
(963, 78, 9, 'Port', 178, 'BN-324', '427866850097', NULL, 10858.00, 11641.00, '1.00', 0, NULL, '2vxZN6Duw6LR1', '2017-12-02 07:55:09', '2017-12-02 07:55:09'),
(964, 78, 9, 'Port', 178, 'BN-324', '427866850097', NULL, 10858.00, 11641.00, '1.00', 0, NULL, '2vxZN6Duw6LR1', '2017-12-02 07:55:09', '2017-12-02 07:55:09'),
(965, 78, 9, 'Port', 178, 'BN-324', '427866850097', NULL, 10858.00, 11641.00, '1.00', 0, NULL, '2vxZN6Duw6LR1', '2017-12-02 07:55:09', '2017-12-02 07:55:09'),
(966, 79, 3, 'New', 46, 'BN-136', '531863527743', NULL, 10244.00, 10485.00, '-3.00', 0, NULL, 'An9W5LmTwBXrW', '2017-12-02 07:55:10', '2017-12-02 07:58:20'),
(967, 79, 3, 'New', 46, 'BN-136', '531863527743', NULL, 10244.00, 10485.00, '0.00', 0, NULL, 'An9W5LmTwBXrW', '2017-12-02 07:55:10', '2017-12-02 07:58:19'),
(968, 79, 3, 'New', 46, 'BN-136', '531863527743', NULL, 10244.00, 10485.00, '0.00', 0, NULL, 'An9W5LmTwBXrW', '2017-12-02 07:55:10', '2017-12-02 07:58:20'),
(969, 79, 3, 'New', 46, 'BN-136', '531863527743', NULL, 10244.00, 10485.00, '1.00', 0, NULL, 'An9W5LmTwBXrW', '2017-12-02 07:55:10', '2017-12-02 07:55:10'),
(970, 79, 3, 'New', 46, 'BN-136', '531863527743', NULL, 10244.00, 10485.00, '1.00', 0, NULL, 'An9W5LmTwBXrW', '2017-12-02 07:55:10', '2017-12-02 07:55:10'),
(971, 79, 3, 'New', 46, 'BN-136', '531863527743', NULL, 10244.00, 10485.00, '1.00', 0, NULL, 'An9W5LmTwBXrW', '2017-12-02 07:55:10', '2017-12-02 07:55:10'),
(972, 79, 3, 'New', 46, 'BN-136', '531863527743', NULL, 10244.00, 10485.00, '1.00', 0, NULL, 'An9W5LmTwBXrW', '2017-12-02 07:55:10', '2017-12-02 07:55:10'),
(973, 79, 3, 'New', 46, 'BN-136', '531863527743', NULL, 10244.00, 10485.00, '1.00', 0, NULL, 'An9W5LmTwBXrW', '2017-12-02 07:55:10', '2017-12-02 07:55:10'),
(974, 79, 3, 'New', 46, 'BN-136', '531863527743', NULL, 10244.00, 10485.00, '1.00', 0, NULL, 'An9W5LmTwBXrW', '2017-12-02 07:55:10', '2017-12-02 07:55:10'),
(975, 79, 7, 'North', 137, 'BN-433', '937589922976', NULL, 9389.00, 9532.00, '-1.00', 0, NULL, 'N9BG45pFp6GwP', '2017-12-02 07:55:11', '2017-12-02 07:57:58'),
(976, 79, 7, 'North', 137, 'BN-433', '937589922976', NULL, 9389.00, 9532.00, '0.00', 0, NULL, 'N9BG45pFp6GwP', '2017-12-02 07:55:11', '2017-12-02 07:57:58'),
(977, 79, 7, 'North', 137, 'BN-433', '937589922976', NULL, 9389.00, 9532.00, '0.00', 0, NULL, 'N9BG45pFp6GwP', '2017-12-02 07:55:11', '2017-12-02 07:57:58'),
(978, 79, 7, 'North', 137, 'BN-433', '937589922976', NULL, 9389.00, 9532.00, '1.00', 0, NULL, 'N9BG45pFp6GwP', '2017-12-02 07:55:11', '2017-12-02 07:55:11'),
(979, 79, 7, 'North', 137, 'BN-433', '937589922976', NULL, 9389.00, 9532.00, '1.00', 0, NULL, 'N9BG45pFp6GwP', '2017-12-02 07:55:11', '2017-12-02 07:55:11'),
(980, 79, 7, 'North', 137, 'BN-433', '937589922976', NULL, 9389.00, 9532.00, '1.00', 0, NULL, 'N9BG45pFp6GwP', '2017-12-02 07:55:11', '2017-12-02 07:55:11'),
(981, 79, 7, 'North', 137, 'BN-433', '937589922976', NULL, 9389.00, 9532.00, '1.00', 0, NULL, 'N9BG45pFp6GwP', '2017-12-02 07:55:12', '2017-12-02 07:55:12'),
(982, 79, 7, 'North', 137, 'BN-433', '937589922976', NULL, 9389.00, 9532.00, '1.00', 0, NULL, 'N9BG45pFp6GwP', '2017-12-02 07:55:12', '2017-12-02 07:55:12'),
(983, 79, 7, 'North', 137, 'BN-433', '937589922976', NULL, 9389.00, 9532.00, '1.00', 0, NULL, 'N9BG45pFp6GwP', '2017-12-02 07:55:12', '2017-12-02 07:55:12'),
(984, 79, 2, 'South', 27, 'BN-173', '795802632626', NULL, 2942.00, 3371.00, '1.00', 1, 'bmZXimJd', '0VlMvGZcG241M0', '2017-12-02 07:55:12', '2017-12-02 08:00:17'),
(985, 79, 2, 'South', 27, 'BN-173', '795802632626', NULL, 2942.00, 3371.00, '1.00', 0, NULL, '0VlMvGZcG241M0', '2017-12-02 07:55:12', '2017-12-02 07:55:12'),
(986, 79, 2, 'South', 27, 'BN-173', '795802632626', NULL, 2942.00, 3371.00, '1.00', 0, NULL, '0VlMvGZcG241M0', '2017-12-02 07:55:12', '2017-12-02 07:55:12'),
(987, 79, 2, 'South', 27, 'BN-173', '795802632626', NULL, 2942.00, 3371.00, '1.00', 0, NULL, '0VlMvGZcG241M0', '2017-12-02 07:55:12', '2017-12-02 07:55:12'),
(988, 79, 2, 'South', 27, 'BN-173', '795802632626', NULL, 2942.00, 3371.00, '1.00', 0, NULL, '0VlMvGZcG241M0', '2017-12-02 07:55:13', '2017-12-02 07:55:13'),
(989, 79, 2, 'South', 27, 'BN-173', '795802632626', NULL, 2942.00, 3371.00, '1.00', 0, NULL, '0VlMvGZcG241M0', '2017-12-02 07:55:13', '2017-12-02 07:55:13'),
(990, 79, 2, 'South', 27, 'BN-173', '795802632626', NULL, 2942.00, 3371.00, '1.00', 0, NULL, '0VlMvGZcG241M0', '2017-12-02 07:55:13', '2017-12-02 07:55:13'),
(991, 79, 2, 'South', 27, 'BN-173', '795802632626', NULL, 2942.00, 3371.00, '1.00', 0, NULL, '0VlMvGZcG241M0', '2017-12-02 07:55:13', '2017-12-02 07:55:13'),
(992, 79, 2, 'South', 27, 'BN-173', '795802632626', NULL, 2942.00, 3371.00, '1.00', 0, NULL, '0VlMvGZcG241M0', '2017-12-02 07:55:13', '2017-12-02 07:55:13'),
(993, 79, 9, 'Port', 171, 'BN-274', '447604891922', NULL, 5683.00, 6399.00, '1.00', 0, NULL, 'GZRvDZOukp1Vo', '2017-12-02 07:55:13', '2017-12-02 07:55:13'),
(994, 79, 9, 'Port', 171, 'BN-274', '447604891922', NULL, 5683.00, 6399.00, '1.00', 0, NULL, 'GZRvDZOukp1Vo', '2017-12-02 07:55:13', '2017-12-02 07:55:13'),
(995, 79, 9, 'Port', 171, 'BN-274', '447604891922', NULL, 5683.00, 6399.00, '1.00', 0, NULL, 'GZRvDZOukp1Vo', '2017-12-02 07:55:13', '2017-12-02 07:55:13'),
(996, 79, 9, 'Port', 171, 'BN-274', '447604891922', NULL, 5683.00, 6399.00, '1.00', 0, NULL, 'GZRvDZOukp1Vo', '2017-12-02 07:55:13', '2017-12-02 07:55:13'),
(997, 79, 9, 'Port', 171, 'BN-274', '447604891922', NULL, 5683.00, 6399.00, '1.00', 0, NULL, 'GZRvDZOukp1Vo', '2017-12-02 07:55:13', '2017-12-02 07:55:13'),
(998, 79, 9, 'Port', 171, 'BN-274', '447604891922', NULL, 5683.00, 6399.00, '1.00', 0, NULL, 'GZRvDZOukp1Vo', '2017-12-02 07:55:13', '2017-12-02 07:55:13'),
(999, 79, 9, 'Port', 171, 'BN-274', '447604891922', NULL, 5683.00, 6399.00, '1.00', 0, NULL, 'GZRvDZOukp1Vo', '2017-12-02 07:55:13', '2017-12-02 07:55:13'),
(1000, 79, 9, 'Port', 171, 'BN-274', '447604891922', NULL, 5683.00, 6399.00, '1.00', 0, NULL, 'GZRvDZOukp1Vo', '2017-12-02 07:55:13', '2017-12-02 07:55:13'),
(1001, 79, 9, 'Port', 171, 'BN-274', '447604891922', NULL, 5683.00, 6399.00, '1.00', 0, NULL, 'GZRvDZOukp1Vo', '2017-12-02 07:55:13', '2017-12-02 07:55:13'),
(1002, 79, 9, 'Port', 171, 'BN-274', '447604891922', NULL, 5683.00, 6399.00, '1.00', 0, NULL, 'GZRvDZOukp1Vo', '2017-12-02 07:55:13', '2017-12-02 07:55:13'),
(1003, 80, 5, 'West', 88, 'BN-463', '511405720986', NULL, 6297.00, 6841.00, '-1.00', 0, NULL, 'KZ7qgjNHy7L2Z', '2017-12-02 07:55:14', '2017-12-02 07:56:47'),
(1004, 80, 5, 'West', 88, 'BN-463', '511405720986', NULL, 6297.00, 6841.00, '0.00', 0, NULL, 'KZ7qgjNHy7L2Z', '2017-12-02 07:55:14', '2017-12-02 07:56:47'),
(1005, 80, 5, 'West', 88, 'BN-463', '511405720986', NULL, 6297.00, 6841.00, '0.00', 0, NULL, 'KZ7qgjNHy7L2Z', '2017-12-02 07:55:14', '2017-12-02 07:56:47'),
(1006, 80, 5, 'West', 88, 'BN-463', '511405720986', NULL, 6297.00, 6841.00, '1.00', 0, NULL, 'KZ7qgjNHy7L2Z', '2017-12-02 07:55:14', '2017-12-02 07:55:14'),
(1007, 80, 5, 'West', 88, 'BN-463', '511405720986', NULL, 6297.00, 6841.00, '1.00', 0, NULL, 'KZ7qgjNHy7L2Z', '2017-12-02 07:55:14', '2017-12-02 07:55:14'),
(1008, 80, 5, 'West', 88, 'BN-463', '511405720986', NULL, 6297.00, 6841.00, '1.00', 0, NULL, 'KZ7qgjNHy7L2Z', '2017-12-02 07:55:14', '2017-12-02 07:55:14'),
(1009, 80, 5, 'West', 88, 'BN-463', '511405720986', NULL, 6297.00, 6841.00, '1.00', 0, NULL, 'KZ7qgjNHy7L2Z', '2017-12-02 07:55:14', '2017-12-02 07:55:14'),
(1010, 80, 5, 'West', 88, 'BN-463', '511405720986', NULL, 6297.00, 6841.00, '1.00', 0, NULL, 'KZ7qgjNHy7L2Z', '2017-12-02 07:55:15', '2017-12-02 07:55:15'),
(1011, 82, 2, 'South', 26, 'BN-190', '314344631821', NULL, 12137.00, 12805.00, '-4.00', 1, 'b8qJC5qd', 'L7RY38wFzDPRr', '2017-12-02 07:55:16', '2017-12-02 08:00:28'),
(1012, 82, 2, 'South', 26, 'BN-190', '314344631821', NULL, 12137.00, 12805.00, '-1.00', 0, NULL, 'L7RY38wFzDPRr', '2017-12-02 07:55:16', '2017-12-02 07:58:26'),
(1013, 82, 2, 'South', 26, 'BN-190', '314344631821', NULL, 12137.00, 12805.00, '0.00', 0, NULL, 'L7RY38wFzDPRr', '2017-12-02 07:55:16', '2017-12-02 07:58:26'),
(1014, 82, 2, 'South', 26, 'BN-190', '314344631821', NULL, 12137.00, 12805.00, '1.00', 0, NULL, 'L7RY38wFzDPRr', '2017-12-02 07:55:16', '2017-12-02 07:55:16'),
(1015, 82, 2, 'South', 26, 'BN-190', '314344631821', NULL, 12137.00, 12805.00, '1.00', 0, NULL, 'L7RY38wFzDPRr', '2017-12-02 07:55:16', '2017-12-02 07:55:16'),
(1016, 82, 2, 'South', 26, 'BN-190', '314344631821', NULL, 12137.00, 12805.00, '1.00', 0, NULL, 'L7RY38wFzDPRr', '2017-12-02 07:55:16', '2017-12-02 07:55:16'),
(1017, 82, 2, 'South', 26, 'BN-190', '314344631821', NULL, 12137.00, 12805.00, '1.00', 0, NULL, 'L7RY38wFzDPRr', '2017-12-02 07:55:16', '2017-12-02 07:55:16'),
(1018, 82, 2, 'South', 26, 'BN-190', '314344631821', NULL, 12137.00, 12805.00, '1.00', 0, NULL, 'L7RY38wFzDPRr', '2017-12-02 07:55:16', '2017-12-02 07:55:16'),
(1019, 86, 7, 'North', 121, 'BN-996', '738529684462', NULL, 14059.00, 14258.00, '-1.00', 0, NULL, 'P7KV1XZS7AJPN', '2017-12-02 07:55:19', '2017-12-02 07:58:32'),
(1020, 86, 7, 'North', 121, 'BN-996', '738529684462', NULL, 14059.00, 14258.00, '0.00', 0, NULL, 'P7KV1XZS7AJPN', '2017-12-02 07:55:19', '2017-12-02 07:58:32'),
(1021, 86, 7, 'North', 121, 'BN-996', '738529684462', NULL, 14059.00, 14258.00, '0.00', 0, NULL, 'P7KV1XZS7AJPN', '2017-12-02 07:55:20', '2017-12-02 07:58:32'),
(1022, 86, 7, 'North', 121, 'BN-996', '738529684462', NULL, 14059.00, 14258.00, '1.00', 0, NULL, 'P7KV1XZS7AJPN', '2017-12-02 07:55:20', '2017-12-02 07:55:20'),
(1023, 86, 7, 'North', 121, 'BN-996', '738529684462', NULL, 14059.00, 14258.00, '1.00', 0, NULL, 'P7KV1XZS7AJPN', '2017-12-02 07:55:20', '2017-12-02 07:55:20'),
(1024, 86, 7, 'North', 121, 'BN-996', '738529684462', NULL, 14059.00, 14258.00, '1.00', 0, NULL, 'P7KV1XZS7AJPN', '2017-12-02 07:55:20', '2017-12-02 07:55:20'),
(1025, 86, 7, 'North', 121, 'BN-996', '738529684462', NULL, 14059.00, 14258.00, '1.00', 0, NULL, 'P7KV1XZS7AJPN', '2017-12-02 07:55:20', '2017-12-02 07:55:20'),
(1026, 86, 7, 'North', 121, 'BN-996', '738529684462', NULL, 14059.00, 14258.00, '1.00', 0, NULL, 'P7KV1XZS7AJPN', '2017-12-02 07:55:20', '2017-12-02 07:55:20'),
(1027, 86, 7, 'North', 121, 'BN-996', '738529684462', NULL, 14059.00, 14258.00, '1.00', 0, NULL, 'P7KV1XZS7AJPN', '2017-12-02 07:55:20', '2017-12-02 07:55:20'),
(1028, 86, 10, 'Lake', 200, 'BN-627', '946996809640', NULL, 12513.00, 13214.00, '-5.00', 0, NULL, '2RrqqoOFqNp8k', '2017-12-02 07:55:20', '2017-12-02 07:57:36'),
(1029, 86, 10, 'Lake', 200, 'BN-627', '946996809640', NULL, 12513.00, 13214.00, '-2.00', 0, NULL, '2RrqqoOFqNp8k', '2017-12-02 07:55:20', '2017-12-02 07:57:36'),
(1030, 86, 10, 'Lake', 200, 'BN-627', '946996809640', NULL, 12513.00, 13214.00, '0.00', 0, NULL, '2RrqqoOFqNp8k', '2017-12-02 07:55:21', '2017-12-02 07:57:23'),
(1031, 86, 10, 'Lake', 200, 'BN-627', '946996809640', NULL, 12513.00, 13214.00, '1.00', 0, NULL, '2RrqqoOFqNp8k', '2017-12-02 07:55:21', '2017-12-02 07:55:21'),
(1032, 86, 10, 'Lake', 200, 'BN-627', '946996809640', NULL, 12513.00, 13214.00, '1.00', 0, NULL, '2RrqqoOFqNp8k', '2017-12-02 07:55:21', '2017-12-02 07:55:21'),
(1033, 86, 10, 'Lake', 200, 'BN-627', '946996809640', NULL, 12513.00, 13214.00, '1.00', 0, NULL, '2RrqqoOFqNp8k', '2017-12-02 07:55:21', '2017-12-02 07:55:21'),
(1034, 86, 10, 'Lake', 200, 'BN-627', '946996809640', NULL, 12513.00, 13214.00, '1.00', 0, NULL, '2RrqqoOFqNp8k', '2017-12-02 07:55:21', '2017-12-02 07:55:21'),
(1035, 86, 10, 'Lake', 200, 'BN-627', '946996809640', NULL, 12513.00, 13214.00, '1.00', 0, NULL, '2RrqqoOFqNp8k', '2017-12-02 07:55:21', '2017-12-02 07:55:21'),
(1036, 86, 10, 'Lake', 200, 'BN-627', '946996809640', NULL, 12513.00, 13214.00, '1.00', 0, NULL, '2RrqqoOFqNp8k', '2017-12-02 07:55:21', '2017-12-02 07:55:21'),
(1037, 86, 10, 'Lake', 200, 'BN-627', '946996809640', NULL, 12513.00, 13214.00, '1.00', 0, NULL, '2RrqqoOFqNp8k', '2017-12-02 07:55:21', '2017-12-02 07:55:21'),
(1038, 86, 8, 'East', 151, 'BN-384', '425206130908', NULL, 7621.00, 8511.00, '-1.00', 0, NULL, 'nrQ7VEXI7q32Rm', '2017-12-02 07:55:21', '2017-12-02 07:58:01'),
(1039, 86, 8, 'East', 151, 'BN-384', '425206130908', NULL, 7621.00, 8511.00, '0.00', 0, NULL, 'nrQ7VEXI7q32Rm', '2017-12-02 07:55:21', '2017-12-02 07:58:00'),
(1040, 86, 8, 'East', 151, 'BN-384', '425206130908', NULL, 7621.00, 8511.00, '0.00', 0, NULL, 'nrQ7VEXI7q32Rm', '2017-12-02 07:55:21', '2017-12-02 07:58:01'),
(1041, 86, 8, 'East', 151, 'BN-384', '425206130908', NULL, 7621.00, 8511.00, '1.00', 0, NULL, 'nrQ7VEXI7q32Rm', '2017-12-02 07:55:21', '2017-12-02 07:55:21'),
(1042, 86, 8, 'East', 151, 'BN-384', '425206130908', NULL, 7621.00, 8511.00, '1.00', 0, NULL, 'nrQ7VEXI7q32Rm', '2017-12-02 07:55:21', '2017-12-02 07:55:21'),
(1043, 86, 8, 'East', 151, 'BN-384', '425206130908', NULL, 7621.00, 8511.00, '1.00', 0, NULL, 'nrQ7VEXI7q32Rm', '2017-12-02 07:55:22', '2017-12-02 07:55:22'),
(1044, 86, 8, 'East', 151, 'BN-384', '425206130908', NULL, 7621.00, 8511.00, '1.00', 0, NULL, 'nrQ7VEXI7q32Rm', '2017-12-02 07:55:22', '2017-12-02 07:55:22'),
(1045, 86, 8, 'East', 151, 'BN-384', '425206130908', NULL, 7621.00, 8511.00, '1.00', 0, NULL, 'nrQ7VEXI7q32Rm', '2017-12-02 07:55:22', '2017-12-02 07:55:22'),
(1046, 86, 8, 'East', 151, 'BN-384', '425206130908', NULL, 7621.00, 8511.00, '1.00', 0, NULL, 'nrQ7VEXI7q32Rm', '2017-12-02 07:55:22', '2017-12-02 07:55:22'),
(1047, 86, 1, 'North', 13, 'BN-828', '369829379552', NULL, 4037.00, 4622.00, '1.00', 0, NULL, 'oQv50x5C3G9Dp', '2017-12-02 07:55:22', '2017-12-02 07:55:22'),
(1048, 86, 1, 'North', 13, 'BN-828', '369829379552', NULL, 4037.00, 4622.00, '1.00', 0, NULL, 'oQv50x5C3G9Dp', '2017-12-02 07:55:22', '2017-12-02 07:55:22'),
(1049, 86, 1, 'North', 13, 'BN-828', '369829379552', NULL, 4037.00, 4622.00, '1.00', 0, NULL, 'oQv50x5C3G9Dp', '2017-12-02 07:55:22', '2017-12-02 07:55:22'),
(1050, 86, 1, 'North', 13, 'BN-828', '369829379552', NULL, 4037.00, 4622.00, '1.00', 0, NULL, 'oQv50x5C3G9Dp', '2017-12-02 07:55:22', '2017-12-02 07:55:22'),
(1051, 86, 1, 'North', 13, 'BN-828', '369829379552', NULL, 4037.00, 4622.00, '1.00', 0, NULL, 'oQv50x5C3G9Dp', '2017-12-02 07:55:22', '2017-12-02 07:55:22'),
(1052, 86, 1, 'North', 13, 'BN-828', '369829379552', NULL, 4037.00, 4622.00, '1.00', 0, NULL, 'oQv50x5C3G9Dp', '2017-12-02 07:55:22', '2017-12-02 07:55:22'),
(1053, 86, 1, 'North', 13, 'BN-828', '369829379552', NULL, 4037.00, 4622.00, '1.00', 0, NULL, 'oQv50x5C3G9Dp', '2017-12-02 07:55:22', '2017-12-02 07:55:22'),
(1054, 86, 1, 'North', 13, 'BN-828', '369829379552', NULL, 4037.00, 4622.00, '1.00', 0, NULL, 'oQv50x5C3G9Dp', '2017-12-02 07:55:22', '2017-12-02 07:55:22'),
(1055, 86, 1, 'North', 13, 'BN-828', '369829379552', NULL, 4037.00, 4622.00, '1.00', 0, NULL, 'oQv50x5C3G9Dp', '2017-12-02 07:55:22', '2017-12-02 07:55:22'),
(1056, 86, 1, 'North', 13, 'BN-828', '369829379552', NULL, 4037.00, 4622.00, '1.00', 0, NULL, 'oQv50x5C3G9Dp', '2017-12-02 07:55:22', '2017-12-02 07:55:22'),
(1057, 87, 7, 'North', 139, 'BN-696', '327943139834', NULL, 7078.00, 7483.00, '-4.00', 1, 'aO7Yup9Z', 'gJmjNqyfLRx25', '2017-12-02 07:55:23', '2017-12-02 08:00:22'),
(1058, 87, 7, 'North', 139, 'BN-696', '327943139834', NULL, 7078.00, 7483.00, '-1.00', 0, NULL, 'gJmjNqyfLRx25', '2017-12-02 07:55:23', '2017-12-02 07:57:17'),
(1059, 87, 7, 'North', 139, 'BN-696', '327943139834', NULL, 7078.00, 7483.00, '0.00', 0, NULL, 'gJmjNqyfLRx25', '2017-12-02 07:55:23', '2017-12-02 07:57:17'),
(1060, 87, 7, 'North', 139, 'BN-696', '327943139834', NULL, 7078.00, 7483.00, '1.00', 0, NULL, 'gJmjNqyfLRx25', '2017-12-02 07:55:23', '2017-12-02 07:55:23'),
(1061, 87, 7, 'North', 139, 'BN-696', '327943139834', NULL, 7078.00, 7483.00, '1.00', 0, NULL, 'gJmjNqyfLRx25', '2017-12-02 07:55:23', '2017-12-02 07:55:23'),
(1062, 87, 7, 'North', 139, 'BN-696', '327943139834', NULL, 7078.00, 7483.00, '1.00', 0, NULL, 'gJmjNqyfLRx25', '2017-12-02 07:55:23', '2017-12-02 07:55:23'),
(1063, 87, 7, 'North', 139, 'BN-696', '327943139834', NULL, 7078.00, 7483.00, '1.00', 0, NULL, 'gJmjNqyfLRx25', '2017-12-02 07:55:23', '2017-12-02 07:55:23'),
(1064, 87, 7, 'North', 139, 'BN-696', '327943139834', NULL, 7078.00, 7483.00, '1.00', 0, NULL, 'gJmjNqyfLRx25', '2017-12-02 07:55:23', '2017-12-02 07:55:23'),
(1065, 88, 9, 'Port', 175, 'BN-786', '523702750641', NULL, 3125.00, 3559.00, '-6.00', 1, 'dGvXs4Vb', 'wVN2920tGnz35', '2017-12-02 07:55:24', '2017-12-02 08:00:38'),
(1066, 88, 9, 'Port', 175, 'BN-786', '523702750641', NULL, 3125.00, 3559.00, '-2.00', 0, NULL, 'wVN2920tGnz35', '2017-12-02 07:55:24', '2017-12-02 07:58:29'),
(1067, 88, 9, 'Port', 175, 'BN-786', '523702750641', NULL, 3125.00, 3559.00, '-1.00', 0, NULL, 'wVN2920tGnz35', '2017-12-02 07:55:24', '2017-12-02 07:58:17'),
(1068, 88, 9, 'Port', 175, 'BN-786', '523702750641', NULL, 3125.00, 3559.00, '1.00', 0, NULL, 'wVN2920tGnz35', '2017-12-02 07:55:24', '2017-12-02 07:55:24'),
(1069, 88, 9, 'Port', 175, 'BN-786', '523702750641', NULL, 3125.00, 3559.00, '1.00', 0, NULL, 'wVN2920tGnz35', '2017-12-02 07:55:24', '2017-12-02 07:55:24'),
(1070, 88, 9, 'Port', 175, 'BN-786', '523702750641', NULL, 3125.00, 3559.00, '1.00', 0, NULL, 'wVN2920tGnz35', '2017-12-02 07:55:24', '2017-12-02 07:55:24'),
(1071, 88, 9, 'Port', 175, 'BN-786', '523702750641', NULL, 3125.00, 3559.00, '1.00', 0, NULL, 'wVN2920tGnz35', '2017-12-02 07:55:24', '2017-12-02 07:55:24'),
(1072, 88, 9, 'Port', 175, 'BN-786', '523702750641', NULL, 3125.00, 3559.00, '1.00', 0, NULL, 'wVN2920tGnz35', '2017-12-02 07:55:24', '2017-12-02 07:55:24'),
(1073, 88, 9, 'Port', 175, 'BN-786', '523702750641', NULL, 3125.00, 3559.00, '1.00', 0, NULL, 'wVN2920tGnz35', '2017-12-02 07:55:24', '2017-12-02 07:55:24'),
(1074, 88, 9, 'Port', 175, 'BN-786', '523702750641', NULL, 3125.00, 3559.00, '1.00', 0, NULL, 'wVN2920tGnz35', '2017-12-02 07:55:24', '2017-12-02 07:55:24'),
(1075, 88, 9, 'Port', 175, 'BN-786', '523702750641', NULL, 3125.00, 3559.00, '1.00', 0, NULL, 'wVN2920tGnz35', '2017-12-02 07:55:24', '2017-12-02 07:55:24'),
(1076, 88, 9, 'Port', 175, 'BN-786', '523702750641', NULL, 3125.00, 3559.00, '1.00', 0, NULL, 'wVN2920tGnz35', '2017-12-02 07:55:25', '2017-12-02 07:55:25'),
(1077, 90, 6, 'Port', 118, 'BN-565', '662763573988', NULL, 7313.00, 8013.00, '-6.00', 0, NULL, 'j2y6KW6hnRL2M9', '2017-12-02 07:55:26', '2017-12-02 07:58:29'),
(1078, 90, 6, 'Port', 118, 'BN-565', '662763573988', NULL, 7313.00, 8013.00, '-2.00', 0, NULL, 'j2y6KW6hnRL2M9', '2017-12-02 07:55:26', '2017-12-02 07:58:29'),
(1079, 90, 6, 'Port', 118, 'BN-565', '662763573988', NULL, 7313.00, 8013.00, '-1.00', 0, NULL, 'j2y6KW6hnRL2M9', '2017-12-02 07:55:26', '2017-12-02 07:58:29'),
(1080, 90, 6, 'Port', 118, 'BN-565', '662763573988', NULL, 7313.00, 8013.00, '1.00', 0, NULL, 'j2y6KW6hnRL2M9', '2017-12-02 07:55:26', '2017-12-02 07:55:26'),
(1081, 90, 6, 'Port', 118, 'BN-565', '662763573988', NULL, 7313.00, 8013.00, '1.00', 0, NULL, 'j2y6KW6hnRL2M9', '2017-12-02 07:55:26', '2017-12-02 07:55:26'),
(1082, 90, 6, 'Port', 118, 'BN-565', '662763573988', NULL, 7313.00, 8013.00, '1.00', 0, NULL, 'j2y6KW6hnRL2M9', '2017-12-02 07:55:27', '2017-12-02 07:55:27'),
(1083, 90, 6, 'Port', 118, 'BN-565', '662763573988', NULL, 7313.00, 8013.00, '1.00', 0, NULL, 'j2y6KW6hnRL2M9', '2017-12-02 07:55:27', '2017-12-02 07:55:27'),
(1084, 90, 6, 'Port', 118, 'BN-565', '662763573988', NULL, 7313.00, 8013.00, '1.00', 0, NULL, 'j2y6KW6hnRL2M9', '2017-12-02 07:55:27', '2017-12-02 07:55:27'),
(1085, 90, 6, 'Port', 118, 'BN-565', '662763573988', NULL, 7313.00, 8013.00, '1.00', 0, NULL, 'j2y6KW6hnRL2M9', '2017-12-02 07:55:27', '2017-12-02 07:55:27'),
(1086, 90, 6, 'Port', 118, 'BN-565', '662763573988', NULL, 7313.00, 8013.00, '1.00', 0, NULL, 'j2y6KW6hnRL2M9', '2017-12-02 07:55:27', '2017-12-02 07:55:27'),
(1087, 90, 6, 'Port', 118, 'BN-565', '662763573988', NULL, 7313.00, 8013.00, '1.00', 0, NULL, 'j2y6KW6hnRL2M9', '2017-12-02 07:55:27', '2017-12-02 07:55:27'),
(1088, 90, 6, 'Port', 118, 'BN-565', '662763573988', NULL, 7313.00, 8013.00, '1.00', 0, NULL, 'j2y6KW6hnRL2M9', '2017-12-02 07:55:27', '2017-12-02 07:55:27'),
(1089, 92, 1, 'North', 6, 'BN-236', '231104917073', NULL, 4236.00, 4505.00, '1.00', 1, 'dJyRuEpb', 'PN9kKZKuPykOP', '2017-12-02 07:55:28', '2017-12-02 08:00:39'),
(1090, 92, 1, 'North', 6, 'BN-236', '231104917073', NULL, 4236.00, 4505.00, '1.00', 0, NULL, 'PN9kKZKuPykOP', '2017-12-02 07:55:28', '2017-12-02 07:55:28'),
(1091, 92, 1, 'North', 6, 'BN-236', '231104917073', NULL, 4236.00, 4505.00, '1.00', 0, NULL, 'PN9kKZKuPykOP', '2017-12-02 07:55:28', '2017-12-02 07:55:28'),
(1092, 92, 1, 'North', 6, 'BN-236', '231104917073', NULL, 4236.00, 4505.00, '1.00', 0, NULL, 'PN9kKZKuPykOP', '2017-12-02 07:55:28', '2017-12-02 07:55:28'),
(1093, 92, 1, 'North', 6, 'BN-236', '231104917073', NULL, 4236.00, 4505.00, '1.00', 0, NULL, 'PN9kKZKuPykOP', '2017-12-02 07:55:28', '2017-12-02 07:55:28'),
(1094, 92, 1, 'North', 6, 'BN-236', '231104917073', NULL, 4236.00, 4505.00, '1.00', 0, NULL, 'PN9kKZKuPykOP', '2017-12-02 07:55:28', '2017-12-02 07:55:28'),
(1095, 92, 1, 'North', 6, 'BN-236', '231104917073', NULL, 4236.00, 4505.00, '1.00', 0, NULL, 'PN9kKZKuPykOP', '2017-12-02 07:55:29', '2017-12-02 07:55:29'),
(1096, 92, 1, 'North', 6, 'BN-236', '231104917073', NULL, 4236.00, 4505.00, '1.00', 0, NULL, 'PN9kKZKuPykOP', '2017-12-02 07:55:29', '2017-12-02 07:55:29'),
(1097, 92, 1, 'North', 6, 'BN-236', '231104917073', NULL, 4236.00, 4505.00, '1.00', 0, NULL, 'PN9kKZKuPykOP', '2017-12-02 07:55:29', '2017-12-02 07:55:29'),
(1098, 92, 3, 'New', 45, 'BN-316', '230667457644', NULL, 10898.00, 11225.00, '1.00', 0, NULL, '0gpZjDmTAyQnj', '2017-12-02 07:55:29', '2017-12-02 07:55:29'),
(1099, 92, 3, 'New', 45, 'BN-316', '230667457644', NULL, 10898.00, 11225.00, '1.00', 0, NULL, '0gpZjDmTAyQnj', '2017-12-02 07:55:29', '2017-12-02 07:55:29'),
(1100, 92, 3, 'New', 45, 'BN-316', '230667457644', NULL, 10898.00, 11225.00, '1.00', 0, NULL, '0gpZjDmTAyQnj', '2017-12-02 07:55:29', '2017-12-02 07:55:29'),
(1101, 92, 3, 'New', 45, 'BN-316', '230667457644', NULL, 10898.00, 11225.00, '1.00', 0, NULL, '0gpZjDmTAyQnj', '2017-12-02 07:55:29', '2017-12-02 07:55:29'),
(1102, 92, 3, 'New', 45, 'BN-316', '230667457644', NULL, 10898.00, 11225.00, '1.00', 0, NULL, '0gpZjDmTAyQnj', '2017-12-02 07:55:29', '2017-12-02 07:55:29'),
(1103, 92, 3, 'New', 45, 'BN-316', '230667457644', NULL, 10898.00, 11225.00, '1.00', 0, NULL, '0gpZjDmTAyQnj', '2017-12-02 07:55:29', '2017-12-02 07:55:29'),
(1104, 92, 3, 'New', 45, 'BN-316', '230667457644', NULL, 10898.00, 11225.00, '1.00', 0, NULL, '0gpZjDmTAyQnj', '2017-12-02 07:55:29', '2017-12-02 07:55:29'),
(1105, 92, 3, 'New', 45, 'BN-316', '230667457644', NULL, 10898.00, 11225.00, '1.00', 0, NULL, '0gpZjDmTAyQnj', '2017-12-02 07:55:29', '2017-12-02 07:55:29'),
(1106, 92, 3, 'New', 45, 'BN-316', '230667457644', NULL, 10898.00, 11225.00, '1.00', 0, NULL, '0gpZjDmTAyQnj', '2017-12-02 07:55:29', '2017-12-02 07:55:29'),
(1107, 92, 1, 'North', 11, 'BN-731', '589244823212', NULL, 7129.00, 7346.00, '-3.00', 0, NULL, 'zvABPLDixjOvA', '2017-12-02 07:55:29', '2017-12-02 07:58:10'),
(1108, 92, 1, 'North', 11, 'BN-731', '589244823212', NULL, 7129.00, 7346.00, '-1.00', 0, NULL, 'zvABPLDixjOvA', '2017-12-02 07:55:29', '2017-12-02 07:58:10'),
(1109, 92, 1, 'North', 11, 'BN-731', '589244823212', NULL, 7129.00, 7346.00, '-1.00', 0, NULL, 'zvABPLDixjOvA', '2017-12-02 07:55:29', '2017-12-02 07:58:10'),
(1110, 92, 1, 'North', 11, 'BN-731', '589244823212', NULL, 7129.00, 7346.00, '1.00', 0, NULL, 'zvABPLDixjOvA', '2017-12-02 07:55:29', '2017-12-02 07:55:29'),
(1111, 92, 1, 'North', 11, 'BN-731', '589244823212', NULL, 7129.00, 7346.00, '1.00', 0, NULL, 'zvABPLDixjOvA', '2017-12-02 07:55:30', '2017-12-02 07:55:30'),
(1112, 92, 1, 'North', 11, 'BN-731', '589244823212', NULL, 7129.00, 7346.00, '1.00', 0, NULL, 'zvABPLDixjOvA', '2017-12-02 07:55:30', '2017-12-02 07:55:30'),
(1113, 92, 1, 'North', 11, 'BN-731', '589244823212', NULL, 7129.00, 7346.00, '1.00', 0, NULL, 'zvABPLDixjOvA', '2017-12-02 07:55:30', '2017-12-02 07:55:30'),
(1114, 92, 1, 'North', 11, 'BN-731', '589244823212', NULL, 7129.00, 7346.00, '1.00', 0, NULL, 'zvABPLDixjOvA', '2017-12-02 07:55:30', '2017-12-02 07:55:30'),
(1115, 92, 1, 'North', 11, 'BN-731', '589244823212', NULL, 7129.00, 7346.00, '1.00', 0, NULL, 'zvABPLDixjOvA', '2017-12-02 07:55:30', '2017-12-02 07:55:30'),
(1116, 92, 2, 'South', 40, 'BN-051', '527436451492', NULL, 2082.00, 2473.00, '1.00', 1, 'elO1T1Qd', 'lxmMOr7f0Vkoy', '2017-12-02 07:55:30', '2017-12-02 08:00:27'),
(1117, 92, 2, 'South', 40, 'BN-051', '527436451492', NULL, 2082.00, 2473.00, '1.00', 0, NULL, 'lxmMOr7f0Vkoy', '2017-12-02 07:55:30', '2017-12-02 07:55:30'),
(1118, 92, 2, 'South', 40, 'BN-051', '527436451492', NULL, 2082.00, 2473.00, '1.00', 0, NULL, 'lxmMOr7f0Vkoy', '2017-12-02 07:55:30', '2017-12-02 07:55:30'),
(1119, 92, 2, 'South', 40, 'BN-051', '527436451492', NULL, 2082.00, 2473.00, '1.00', 0, NULL, 'lxmMOr7f0Vkoy', '2017-12-02 07:55:30', '2017-12-02 07:55:30'),
(1120, 92, 2, 'South', 40, 'BN-051', '527436451492', NULL, 2082.00, 2473.00, '1.00', 0, NULL, 'lxmMOr7f0Vkoy', '2017-12-02 07:55:30', '2017-12-02 07:55:30'),
(1121, 92, 2, 'South', 40, 'BN-051', '527436451492', NULL, 2082.00, 2473.00, '1.00', 0, NULL, 'lxmMOr7f0Vkoy', '2017-12-02 07:55:30', '2017-12-02 07:55:30'),
(1122, 92, 2, 'South', 40, 'BN-051', '527436451492', NULL, 2082.00, 2473.00, '1.00', 0, NULL, 'lxmMOr7f0Vkoy', '2017-12-02 07:55:30', '2017-12-02 07:55:30'),
(1123, 92, 2, 'South', 40, 'BN-051', '527436451492', NULL, 2082.00, 2473.00, '1.00', 0, NULL, 'lxmMOr7f0Vkoy', '2017-12-02 07:55:30', '2017-12-02 07:55:30'),
(1124, 92, 2, 'South', 40, 'BN-051', '527436451492', NULL, 2082.00, 2473.00, '1.00', 0, NULL, 'lxmMOr7f0Vkoy', '2017-12-02 07:55:30', '2017-12-02 07:55:30'),
(1125, 92, 2, 'South', 40, 'BN-051', '527436451492', NULL, 2082.00, 2473.00, '1.00', 0, NULL, 'lxmMOr7f0Vkoy', '2017-12-02 07:55:30', '2017-12-02 07:55:30'),
(1126, 95, 6, 'Port', 107, 'BN-185', '637493368999', NULL, 2184.00, 2851.00, '-3.00', 0, NULL, 'APYZP0RuKLL34', '2017-12-02 07:55:32', '2017-12-02 07:57:06'),
(1127, 95, 6, 'Port', 107, 'BN-185', '637493368999', NULL, 2184.00, 2851.00, '-1.00', 0, NULL, 'APYZP0RuKLL34', '2017-12-02 07:55:32', '2017-12-02 07:57:06'),
(1128, 95, 6, 'Port', 107, 'BN-185', '637493368999', NULL, 2184.00, 2851.00, '-1.00', 0, NULL, 'APYZP0RuKLL34', '2017-12-02 07:55:32', '2017-12-02 07:57:06'),
(1129, 95, 6, 'Port', 107, 'BN-185', '637493368999', NULL, 2184.00, 2851.00, '1.00', 0, NULL, 'APYZP0RuKLL34', '2017-12-02 07:55:32', '2017-12-02 07:55:32'),
(1130, 95, 6, 'Port', 107, 'BN-185', '637493368999', NULL, 2184.00, 2851.00, '1.00', 0, NULL, 'APYZP0RuKLL34', '2017-12-02 07:55:32', '2017-12-02 07:55:32'),
(1131, 95, 6, 'Port', 107, 'BN-185', '637493368999', NULL, 2184.00, 2851.00, '1.00', 0, NULL, 'APYZP0RuKLL34', '2017-12-02 07:55:32', '2017-12-02 07:55:32'),
(1132, 95, 6, 'Port', 107, 'BN-185', '637493368999', NULL, 2184.00, 2851.00, '1.00', 0, NULL, 'APYZP0RuKLL34', '2017-12-02 07:55:32', '2017-12-02 07:55:32'),
(1133, 95, 6, 'Port', 107, 'BN-185', '637493368999', NULL, 2184.00, 2851.00, '1.00', 0, NULL, 'APYZP0RuKLL34', '2017-12-02 07:55:32', '2017-12-02 07:55:32'),
(1134, 98, 2, 'South', 27, 'BN-173', '421595818151', NULL, 2935.00, 3621.00, '-6.00', 1, 'eElkIzpd', 'WLQWBQlFvK3ED', '2017-12-02 07:55:34', '2017-12-02 08:00:27'),
(1135, 98, 2, 'South', 27, 'BN-173', '421595818151', NULL, 2935.00, 3621.00, '-2.00', 0, NULL, 'WLQWBQlFvK3ED', '2017-12-02 07:55:34', '2017-12-02 07:58:16'),
(1136, 98, 2, 'South', 27, 'BN-173', '421595818151', NULL, 2935.00, 3621.00, '-1.00', 0, NULL, 'WLQWBQlFvK3ED', '2017-12-02 07:55:34', '2017-12-02 07:58:16'),
(1137, 98, 2, 'South', 27, 'BN-173', '421595818151', NULL, 2935.00, 3621.00, '1.00', 0, NULL, 'WLQWBQlFvK3ED', '2017-12-02 07:55:34', '2017-12-02 07:55:34'),
(1138, 98, 2, 'South', 27, 'BN-173', '421595818151', NULL, 2935.00, 3621.00, '1.00', 0, NULL, 'WLQWBQlFvK3ED', '2017-12-02 07:55:34', '2017-12-02 07:55:34'),
(1139, 98, 2, 'South', 27, 'BN-173', '421595818151', NULL, 2935.00, 3621.00, '1.00', 0, NULL, 'WLQWBQlFvK3ED', '2017-12-02 07:55:34', '2017-12-02 07:55:34'),
(1140, 98, 2, 'South', 27, 'BN-173', '421595818151', NULL, 2935.00, 3621.00, '1.00', 0, NULL, 'WLQWBQlFvK3ED', '2017-12-02 07:55:34', '2017-12-02 07:55:34'),
(1141, 98, 2, 'South', 27, 'BN-173', '421595818151', NULL, 2935.00, 3621.00, '1.00', 0, NULL, 'WLQWBQlFvK3ED', '2017-12-02 07:55:34', '2017-12-02 07:55:34'),
(1142, 98, 2, 'South', 27, 'BN-173', '421595818151', NULL, 2935.00, 3621.00, '1.00', 0, NULL, 'WLQWBQlFvK3ED', '2017-12-02 07:55:34', '2017-12-02 07:55:34'),
(1143, 98, 2, 'South', 27, 'BN-173', '421595818151', NULL, 2935.00, 3621.00, '1.00', 0, NULL, 'WLQWBQlFvK3ED', '2017-12-02 07:55:34', '2017-12-02 07:55:34'),
(1144, 98, 2, 'South', 27, 'BN-173', '421595818151', NULL, 2935.00, 3621.00, '1.00', 0, NULL, 'WLQWBQlFvK3ED', '2017-12-02 07:55:35', '2017-12-02 07:55:35'),
(1145, 98, 2, 'South', 27, 'BN-173', '421595818151', NULL, 2935.00, 3621.00, '1.00', 0, NULL, 'WLQWBQlFvK3ED', '2017-12-02 07:55:35', '2017-12-02 07:55:35'),
(1146, 100, 2, 'South', 35, 'BN-052', '179517727127', NULL, 10413.00, 10583.00, '-4.00', 0, NULL, 'xG2qPoOs5PR3g', '2017-12-02 07:55:36', '2017-12-02 07:58:02'),
(1147, 100, 2, 'South', 35, 'BN-052', '179517727127', NULL, 10413.00, 10583.00, '-1.00', 0, NULL, 'xG2qPoOs5PR3g', '2017-12-02 07:55:36', '2017-12-02 07:57:59'),
(1148, 100, 2, 'South', 35, 'BN-052', '179517727127', NULL, 10413.00, 10583.00, '0.00', 0, NULL, 'xG2qPoOs5PR3g', '2017-12-02 07:55:36', '2017-12-02 07:57:59'),
(1149, 100, 2, 'South', 35, 'BN-052', '179517727127', NULL, 10413.00, 10583.00, '1.00', 0, NULL, 'xG2qPoOs5PR3g', '2017-12-02 07:55:36', '2017-12-02 07:55:36'),
(1150, 100, 2, 'South', 35, 'BN-052', '179517727127', NULL, 10413.00, 10583.00, '1.00', 0, NULL, 'xG2qPoOs5PR3g', '2017-12-02 07:55:36', '2017-12-02 07:55:36'),
(1151, 100, 2, 'South', 35, 'BN-052', '179517727127', NULL, 10413.00, 10583.00, '1.00', 0, NULL, 'xG2qPoOs5PR3g', '2017-12-02 07:55:36', '2017-12-02 07:55:36'),
(1152, 100, 2, 'South', 35, 'BN-052', '179517727127', NULL, 10413.00, 10583.00, '1.00', 0, NULL, 'xG2qPoOs5PR3g', '2017-12-02 07:55:37', '2017-12-02 07:55:37'),
(1153, 100, 2, 'South', 35, 'BN-052', '179517727127', NULL, 10413.00, 10583.00, '1.00', 0, NULL, 'xG2qPoOs5PR3g', '2017-12-02 07:55:37', '2017-12-02 07:55:37'),
(1154, 101, 4, 'North', 69, 'BN-612', '524853218738', NULL, 16465.00, 16994.00, '-1.00', 0, NULL, 'DR4PPGWhmNVNw', '2017-12-02 07:55:37', '2017-12-02 07:57:35'),
(1155, 101, 4, 'North', 69, 'BN-612', '524853218738', NULL, 16465.00, 16994.00, '1.00', 0, NULL, 'DR4PPGWhmNVNw', '2017-12-02 07:55:37', '2017-12-02 07:55:37'),
(1156, 101, 4, 'North', 69, 'BN-612', '524853218738', NULL, 16465.00, 16994.00, '1.00', 0, NULL, 'DR4PPGWhmNVNw', '2017-12-02 07:55:37', '2017-12-02 07:55:37'),
(1157, 101, 4, 'North', 69, 'BN-612', '524853218738', NULL, 16465.00, 16994.00, '1.00', 0, NULL, 'DR4PPGWhmNVNw', '2017-12-02 07:55:37', '2017-12-02 07:55:37'),
(1158, 101, 4, 'North', 69, 'BN-612', '524853218738', NULL, 16465.00, 16994.00, '1.00', 0, NULL, 'DR4PPGWhmNVNw', '2017-12-02 07:55:37', '2017-12-02 07:55:37'),
(1159, 101, 4, 'North', 69, 'BN-612', '524853218738', NULL, 16465.00, 16994.00, '1.00', 0, NULL, 'DR4PPGWhmNVNw', '2017-12-02 07:55:37', '2017-12-02 07:55:37'),
(1160, 101, 4, 'North', 69, 'BN-612', '524853218738', NULL, 16465.00, 16994.00, '1.00', 0, NULL, 'DR4PPGWhmNVNw', '2017-12-02 07:55:37', '2017-12-02 07:55:37'),
(1161, 101, 4, 'North', 69, 'BN-612', '524853218738', NULL, 16465.00, 16994.00, '1.00', 0, NULL, 'DR4PPGWhmNVNw', '2017-12-02 07:55:38', '2017-12-02 07:55:38'),
(1162, 101, 4, 'North', 69, 'BN-612', '524853218738', NULL, 16465.00, 16994.00, '1.00', 0, NULL, 'DR4PPGWhmNVNw', '2017-12-02 07:55:38', '2017-12-02 07:55:38'),
(1163, 101, 10, 'Lake', 183, 'BN-690', '969624981532', NULL, 7529.00, 8163.00, '1.00', 0, NULL, 'ERwXN7DU31qVKq', '2017-12-02 07:55:38', '2017-12-02 07:55:38'),
(1164, 101, 10, 'Lake', 183, 'BN-690', '969624981532', NULL, 7529.00, 8163.00, '1.00', 0, NULL, 'ERwXN7DU31qVKq', '2017-12-02 07:55:38', '2017-12-02 07:55:38'),
(1165, 101, 10, 'Lake', 183, 'BN-690', '969624981532', NULL, 7529.00, 8163.00, '1.00', 0, NULL, 'ERwXN7DU31qVKq', '2017-12-02 07:55:38', '2017-12-02 07:55:38'),
(1166, 101, 10, 'Lake', 183, 'BN-690', '969624981532', NULL, 7529.00, 8163.00, '1.00', 0, NULL, 'ERwXN7DU31qVKq', '2017-12-02 07:55:38', '2017-12-02 07:55:38'),
(1167, 101, 10, 'Lake', 183, 'BN-690', '969624981532', NULL, 7529.00, 8163.00, '1.00', 0, NULL, 'ERwXN7DU31qVKq', '2017-12-02 07:55:38', '2017-12-02 07:55:38'),
(1168, 101, 10, 'Lake', 183, 'BN-690', '969624981532', NULL, 7529.00, 8163.00, '1.00', 0, NULL, 'ERwXN7DU31qVKq', '2017-12-02 07:55:38', '2017-12-02 07:55:38'),
(1169, 101, 10, 'Lake', 183, 'BN-690', '969624981532', NULL, 7529.00, 8163.00, '1.00', 0, NULL, 'ERwXN7DU31qVKq', '2017-12-02 07:55:38', '2017-12-02 07:55:38'),
(1170, 101, 10, 'Lake', 183, 'BN-690', '969624981532', NULL, 7529.00, 8163.00, '1.00', 0, NULL, 'ERwXN7DU31qVKq', '2017-12-02 07:55:38', '2017-12-02 07:55:38'),
(1171, 101, 10, 'Lake', 183, 'BN-690', '969624981532', NULL, 7529.00, 8163.00, '1.00', 0, NULL, 'ERwXN7DU31qVKq', '2017-12-02 07:55:38', '2017-12-02 07:55:38'),
(1172, 101, 5, 'West', 99, 'BN-644', '690945609729', NULL, 13365.00, 14251.00, '-3.00', 0, NULL, 'y8lrDm8s2zYXR', '2017-12-02 07:55:38', '2017-12-02 07:58:03'),
(1173, 101, 5, 'West', 99, 'BN-644', '690945609729', NULL, 13365.00, 14251.00, '0.00', 0, NULL, 'y8lrDm8s2zYXR', '2017-12-02 07:55:39', '2017-12-02 07:58:02'),
(1174, 101, 5, 'West', 99, 'BN-644', '690945609729', NULL, 13365.00, 14251.00, '1.00', 0, NULL, 'y8lrDm8s2zYXR', '2017-12-02 07:55:39', '2017-12-02 07:55:39'),
(1175, 101, 5, 'West', 99, 'BN-644', '690945609729', NULL, 13365.00, 14251.00, '1.00', 0, NULL, 'y8lrDm8s2zYXR', '2017-12-02 07:55:39', '2017-12-02 07:55:39'),
(1176, 101, 5, 'West', 99, 'BN-644', '690945609729', NULL, 13365.00, 14251.00, '1.00', 0, NULL, 'y8lrDm8s2zYXR', '2017-12-02 07:55:39', '2017-12-02 07:55:39'),
(1177, 101, 5, 'West', 99, 'BN-644', '690945609729', NULL, 13365.00, 14251.00, '1.00', 0, NULL, 'y8lrDm8s2zYXR', '2017-12-02 07:55:39', '2017-12-02 07:55:39'),
(1178, 101, 5, 'West', 99, 'BN-644', '690945609729', NULL, 13365.00, 14251.00, '1.00', 0, NULL, 'y8lrDm8s2zYXR', '2017-12-02 07:55:39', '2017-12-02 07:55:39'),
(1179, 101, 5, 'West', 99, 'BN-644', '690945609729', NULL, 13365.00, 14251.00, '1.00', 0, NULL, 'y8lrDm8s2zYXR', '2017-12-02 07:55:39', '2017-12-02 07:55:39'),
(1180, 101, 5, 'West', 99, 'BN-644', '690945609729', NULL, 13365.00, 14251.00, '1.00', 0, NULL, 'y8lrDm8s2zYXR', '2017-12-02 07:55:39', '2017-12-02 07:55:39'),
(1181, 101, 8, 'East', 146, 'BN-899', '908547056682', NULL, 3736.00, 4080.00, '-1.00', 0, NULL, 'PZm4k28iL9lV9', '2017-12-02 07:55:40', '2017-12-02 07:57:45'),
(1182, 101, 8, 'East', 146, 'BN-899', '908547056682', NULL, 3736.00, 4080.00, '0.00', 0, NULL, 'PZm4k28iL9lV9', '2017-12-02 07:55:40', '2017-12-02 07:57:45'),
(1183, 101, 8, 'East', 146, 'BN-899', '908547056682', NULL, 3736.00, 4080.00, '0.00', 0, NULL, 'PZm4k28iL9lV9', '2017-12-02 07:55:40', '2017-12-02 07:57:45'),
(1184, 101, 8, 'East', 146, 'BN-899', '908547056682', NULL, 3736.00, 4080.00, '1.00', 0, NULL, 'PZm4k28iL9lV9', '2017-12-02 07:55:40', '2017-12-02 07:55:40'),
(1185, 101, 8, 'East', 146, 'BN-899', '908547056682', NULL, 3736.00, 4080.00, '1.00', 0, NULL, 'PZm4k28iL9lV9', '2017-12-02 07:55:40', '2017-12-02 07:55:40'),
(1186, 101, 8, 'East', 146, 'BN-899', '908547056682', NULL, 3736.00, 4080.00, '1.00', 0, NULL, 'PZm4k28iL9lV9', '2017-12-02 07:55:40', '2017-12-02 07:55:40'),
(1187, 101, 8, 'East', 146, 'BN-899', '908547056682', NULL, 3736.00, 4080.00, '1.00', 0, NULL, 'PZm4k28iL9lV9', '2017-12-02 07:55:40', '2017-12-02 07:55:40'),
(1188, 101, 8, 'East', 146, 'BN-899', '908547056682', NULL, 3736.00, 4080.00, '1.00', 0, NULL, 'PZm4k28iL9lV9', '2017-12-02 07:55:40', '2017-12-02 07:55:40'),
(1189, 101, 8, 'East', 146, 'BN-899', '908547056682', NULL, 3736.00, 4080.00, '1.00', 0, NULL, 'PZm4k28iL9lV9', '2017-12-02 07:55:40', '2017-12-02 07:55:40'),
(1190, 101, 8, 'East', 146, 'BN-899', '908547056682', NULL, 3736.00, 4080.00, '1.00', 0, NULL, 'PZm4k28iL9lV9', '2017-12-02 07:55:40', '2017-12-02 07:55:40'),
(1191, 102, 7, 'North', 136, 'BN-103', '946173255086', NULL, 10041.00, 10375.00, '-1.00', 1, 'aO7BCjDa', '1rmQ798Sj21wO', '2017-12-02 07:55:41', '2017-12-02 08:00:27'),
(1192, 102, 7, 'North', 136, 'BN-103', '946173255086', NULL, 10041.00, 10375.00, '0.00', 0, NULL, '1rmQ798Sj21wO', '2017-12-02 07:55:41', '2017-12-02 07:58:05'),
(1193, 102, 7, 'North', 136, 'BN-103', '946173255086', NULL, 10041.00, 10375.00, '0.00', 0, NULL, '1rmQ798Sj21wO', '2017-12-02 07:55:41', '2017-12-02 07:58:05'),
(1194, 102, 7, 'North', 136, 'BN-103', '946173255086', NULL, 10041.00, 10375.00, '1.00', 0, NULL, '1rmQ798Sj21wO', '2017-12-02 07:55:41', '2017-12-02 07:55:41'),
(1195, 102, 7, 'North', 136, 'BN-103', '946173255086', NULL, 10041.00, 10375.00, '1.00', 0, NULL, '1rmQ798Sj21wO', '2017-12-02 07:55:41', '2017-12-02 07:55:41'),
(1196, 102, 7, 'North', 136, 'BN-103', '946173255086', NULL, 10041.00, 10375.00, '1.00', 0, NULL, '1rmQ798Sj21wO', '2017-12-02 07:55:41', '2017-12-02 07:55:41'),
(1197, 102, 7, 'North', 136, 'BN-103', '946173255086', NULL, 10041.00, 10375.00, '1.00', 0, NULL, '1rmQ798Sj21wO', '2017-12-02 07:55:41', '2017-12-02 07:55:41'),
(1198, 102, 7, 'North', 136, 'BN-103', '946173255086', NULL, 10041.00, 10375.00, '1.00', 0, NULL, '1rmQ798Sj21wO', '2017-12-02 07:55:41', '2017-12-02 07:55:41'),
(1199, 102, 7, 'North', 136, 'BN-103', '946173255086', NULL, 10041.00, 10375.00, '1.00', 0, NULL, '1rmQ798Sj21wO', '2017-12-02 07:55:41', '2017-12-02 07:55:41'),
(1200, 102, 9, 'Port', 166, 'BN-446', '625730898330', NULL, 8341.00, 9000.00, '1.00', 0, NULL, '5QLYqx9UZg5jx5', '2017-12-02 07:55:42', '2017-12-02 07:55:42'),
(1201, 102, 9, 'Port', 166, 'BN-446', '625730898330', NULL, 8341.00, 9000.00, '1.00', 0, NULL, '5QLYqx9UZg5jx5', '2017-12-02 07:55:42', '2017-12-02 07:55:42'),
(1202, 102, 9, 'Port', 166, 'BN-446', '625730898330', NULL, 8341.00, 9000.00, '1.00', 0, NULL, '5QLYqx9UZg5jx5', '2017-12-02 07:55:42', '2017-12-02 07:55:42'),
(1203, 102, 9, 'Port', 166, 'BN-446', '625730898330', NULL, 8341.00, 9000.00, '1.00', 0, NULL, '5QLYqx9UZg5jx5', '2017-12-02 07:55:42', '2017-12-02 07:55:42'),
(1204, 102, 9, 'Port', 166, 'BN-446', '625730898330', NULL, 8341.00, 9000.00, '1.00', 0, NULL, '5QLYqx9UZg5jx5', '2017-12-02 07:55:42', '2017-12-02 07:55:42'),
(1205, 102, 9, 'Port', 166, 'BN-446', '625730898330', NULL, 8341.00, 9000.00, '1.00', 0, NULL, '5QLYqx9UZg5jx5', '2017-12-02 07:55:42', '2017-12-02 07:55:42'),
(1206, 102, 9, 'Port', 166, 'BN-446', '625730898330', NULL, 8341.00, 9000.00, '1.00', 0, NULL, '5QLYqx9UZg5jx5', '2017-12-02 07:55:42', '2017-12-02 07:55:42'),
(1207, 102, 9, 'Port', 166, 'BN-446', '625730898330', NULL, 8341.00, 9000.00, '1.00', 0, NULL, '5QLYqx9UZg5jx5', '2017-12-02 07:55:42', '2017-12-02 07:55:42'),
(1208, 102, 9, 'Port', 166, 'BN-446', '625730898330', NULL, 8341.00, 9000.00, '1.00', 0, NULL, '5QLYqx9UZg5jx5', '2017-12-02 07:55:42', '2017-12-02 07:55:42'),
(1209, 102, 1, 'North', 13, 'BN-828', '394246318709', NULL, 12317.00, 12847.00, '-1.00', 0, NULL, 'xGWY9krI2mxOv', '2017-12-02 07:55:42', '2017-12-02 07:57:43'),
(1210, 102, 1, 'North', 13, 'BN-828', '394246318709', NULL, 12317.00, 12847.00, '0.00', 0, NULL, 'xGWY9krI2mxOv', '2017-12-02 07:55:42', '2017-12-02 07:57:42'),
(1211, 102, 1, 'North', 13, 'BN-828', '394246318709', NULL, 12317.00, 12847.00, '0.00', 0, NULL, 'xGWY9krI2mxOv', '2017-12-02 07:55:43', '2017-12-02 07:57:43'),
(1212, 102, 1, 'North', 13, 'BN-828', '394246318709', NULL, 12317.00, 12847.00, '1.00', 0, NULL, 'xGWY9krI2mxOv', '2017-12-02 07:55:43', '2017-12-02 07:55:43'),
(1213, 102, 1, 'North', 13, 'BN-828', '394246318709', NULL, 12317.00, 12847.00, '1.00', 0, NULL, 'xGWY9krI2mxOv', '2017-12-02 07:55:43', '2017-12-02 07:55:43'),
(1214, 102, 1, 'North', 13, 'BN-828', '394246318709', NULL, 12317.00, 12847.00, '1.00', 0, NULL, 'xGWY9krI2mxOv', '2017-12-02 07:55:43', '2017-12-02 07:55:43'),
(1215, 102, 1, 'North', 13, 'BN-828', '394246318709', NULL, 12317.00, 12847.00, '1.00', 0, NULL, 'xGWY9krI2mxOv', '2017-12-02 07:55:43', '2017-12-02 07:55:43'),
(1216, 102, 1, 'North', 13, 'BN-828', '394246318709', NULL, 12317.00, 12847.00, '1.00', 0, NULL, 'xGWY9krI2mxOv', '2017-12-02 07:55:43', '2017-12-02 07:55:43'),
(1217, 102, 1, 'North', 13, 'BN-828', '394246318709', NULL, 12317.00, 12847.00, '1.00', 0, NULL, 'xGWY9krI2mxOv', '2017-12-02 07:55:43', '2017-12-02 07:55:43'),
(1218, 102, 8, 'East', 158, 'BN-576', '682734076836', NULL, 1262.00, 1822.00, '1.00', 0, NULL, 'pgOGm4oHnOjJPE', '2017-12-02 07:55:43', '2017-12-02 07:55:43'),
(1219, 102, 8, 'East', 158, 'BN-576', '682734076836', NULL, 1262.00, 1822.00, '1.00', 0, NULL, 'pgOGm4oHnOjJPE', '2017-12-02 07:55:43', '2017-12-02 07:55:43'),
(1220, 102, 8, 'East', 158, 'BN-576', '682734076836', NULL, 1262.00, 1822.00, '1.00', 0, NULL, 'pgOGm4oHnOjJPE', '2017-12-02 07:55:44', '2017-12-02 07:55:44'),
(1221, 102, 8, 'East', 158, 'BN-576', '682734076836', NULL, 1262.00, 1822.00, '1.00', 0, NULL, 'pgOGm4oHnOjJPE', '2017-12-02 07:55:44', '2017-12-02 07:55:44'),
(1222, 102, 8, 'East', 158, 'BN-576', '682734076836', NULL, 1262.00, 1822.00, '1.00', 0, NULL, 'pgOGm4oHnOjJPE', '2017-12-02 07:55:44', '2017-12-02 07:55:44'),
(1223, 102, 8, 'East', 158, 'BN-576', '682734076836', NULL, 1262.00, 1822.00, '1.00', 0, NULL, 'pgOGm4oHnOjJPE', '2017-12-02 07:55:44', '2017-12-02 07:55:44'),
(1224, 102, 8, 'East', 158, 'BN-576', '682734076836', NULL, 1262.00, 1822.00, '1.00', 0, NULL, 'pgOGm4oHnOjJPE', '2017-12-02 07:55:44', '2017-12-02 07:55:44'),
(1225, 102, 8, 'East', 158, 'BN-576', '682734076836', NULL, 1262.00, 1822.00, '1.00', 0, NULL, 'pgOGm4oHnOjJPE', '2017-12-02 07:55:44', '2017-12-02 07:55:44'),
(1226, 102, 8, 'East', 158, 'BN-576', '682734076836', NULL, 1262.00, 1822.00, '1.00', 0, NULL, 'pgOGm4oHnOjJPE', '2017-12-02 07:55:44', '2017-12-02 07:55:44'),
(1227, 103, 2, 'South', 32, 'BN-007', '310570780852', NULL, 14446.00, 15283.00, '-1.00', 1, 'eZ6Ac7De', 'Qn0r3zycqOWjG', '2017-12-02 07:55:45', '2017-12-02 08:00:21'),
(1228, 103, 2, 'South', 32, 'BN-007', '310570780852', NULL, 14446.00, 15283.00, '1.00', 0, NULL, 'Qn0r3zycqOWjG', '2017-12-02 07:55:45', '2017-12-02 07:55:45'),
(1229, 103, 2, 'South', 32, 'BN-007', '310570780852', NULL, 14446.00, 15283.00, '1.00', 0, NULL, 'Qn0r3zycqOWjG', '2017-12-02 07:55:45', '2017-12-02 07:55:45'),
(1230, 103, 2, 'South', 32, 'BN-007', '310570780852', NULL, 14446.00, 15283.00, '1.00', 0, NULL, 'Qn0r3zycqOWjG', '2017-12-02 07:55:45', '2017-12-02 07:55:45'),
(1231, 103, 2, 'South', 32, 'BN-007', '310570780852', NULL, 14446.00, 15283.00, '1.00', 0, NULL, 'Qn0r3zycqOWjG', '2017-12-02 07:55:45', '2017-12-02 07:55:45'),
(1232, 103, 2, 'South', 32, 'BN-007', '310570780852', NULL, 14446.00, 15283.00, '1.00', 0, NULL, 'Qn0r3zycqOWjG', '2017-12-02 07:55:45', '2017-12-02 07:55:45'),
(1233, 103, 2, 'South', 32, 'BN-007', '310570780852', NULL, 14446.00, 15283.00, '1.00', 0, NULL, 'Qn0r3zycqOWjG', '2017-12-02 07:55:45', '2017-12-02 07:55:45'),
(1234, 103, 2, 'South', 32, 'BN-007', '310570780852', NULL, 14446.00, 15283.00, '1.00', 0, NULL, 'Qn0r3zycqOWjG', '2017-12-02 07:55:45', '2017-12-02 07:55:45'),
(1235, 103, 2, 'South', 32, 'BN-007', '310570780852', NULL, 14446.00, 15283.00, '1.00', 0, NULL, 'Qn0r3zycqOWjG', '2017-12-02 07:55:45', '2017-12-02 07:55:45'),
(1236, 103, 6, 'Port', 115, 'BN-150', '894155126483', NULL, 1943.00, 2630.00, '1.00', 0, NULL, 'rkJD4AXHJ5onj', '2017-12-02 07:55:45', '2017-12-02 07:55:45'),
(1237, 103, 6, 'Port', 115, 'BN-150', '894155126483', NULL, 1943.00, 2630.00, '1.00', 0, NULL, 'rkJD4AXHJ5onj', '2017-12-02 07:55:45', '2017-12-02 07:55:45'),
(1238, 103, 6, 'Port', 115, 'BN-150', '894155126483', NULL, 1943.00, 2630.00, '1.00', 0, NULL, 'rkJD4AXHJ5onj', '2017-12-02 07:55:45', '2017-12-02 07:55:45'),
(1239, 103, 6, 'Port', 115, 'BN-150', '894155126483', NULL, 1943.00, 2630.00, '1.00', 0, NULL, 'rkJD4AXHJ5onj', '2017-12-02 07:55:46', '2017-12-02 07:55:46'),
(1240, 103, 6, 'Port', 115, 'BN-150', '894155126483', NULL, 1943.00, 2630.00, '1.00', 0, NULL, 'rkJD4AXHJ5onj', '2017-12-02 07:55:46', '2017-12-02 07:55:46'),
(1241, 103, 6, 'Port', 115, 'BN-150', '894155126483', NULL, 1943.00, 2630.00, '1.00', 0, NULL, 'rkJD4AXHJ5onj', '2017-12-02 07:55:46', '2017-12-02 07:55:46'),
(1242, 103, 6, 'Port', 115, 'BN-150', '894155126483', NULL, 1943.00, 2630.00, '1.00', 0, NULL, 'rkJD4AXHJ5onj', '2017-12-02 07:55:46', '2017-12-02 07:55:46'),
(1243, 103, 6, 'Port', 115, 'BN-150', '894155126483', NULL, 1943.00, 2630.00, '1.00', 0, NULL, 'rkJD4AXHJ5onj', '2017-12-02 07:55:46', '2017-12-02 07:55:46'),
(1244, 103, 6, 'Port', 115, 'BN-150', '894155126483', NULL, 1943.00, 2630.00, '1.00', 0, NULL, 'rkJD4AXHJ5onj', '2017-12-02 07:55:46', '2017-12-02 07:55:46'),
(1245, 103, 5, 'West', 82, 'BN-364', '952662733768', NULL, 1145.00, 1906.00, '-1.00', 0, NULL, 'JZAXywJhJj147', '2017-12-02 07:55:46', '2017-12-02 07:58:33'),
(1246, 103, 5, 'West', 82, 'BN-364', '952662733768', NULL, 1145.00, 1906.00, '0.00', 0, NULL, 'JZAXywJhJj147', '2017-12-02 07:55:46', '2017-12-02 07:58:33'),
(1247, 103, 5, 'West', 82, 'BN-364', '952662733768', NULL, 1145.00, 1906.00, '1.00', 0, NULL, 'JZAXywJhJj147', '2017-12-02 07:55:47', '2017-12-02 07:55:47'),
(1248, 103, 5, 'West', 82, 'BN-364', '952662733768', NULL, 1145.00, 1906.00, '1.00', 0, NULL, 'JZAXywJhJj147', '2017-12-02 07:55:48', '2017-12-02 07:55:48'),
(1249, 103, 5, 'West', 82, 'BN-364', '952662733768', NULL, 1145.00, 1906.00, '1.00', 0, NULL, 'JZAXywJhJj147', '2017-12-02 07:55:48', '2017-12-02 07:55:48'),
(1250, 103, 5, 'West', 82, 'BN-364', '952662733768', NULL, 1145.00, 1906.00, '1.00', 0, NULL, 'JZAXywJhJj147', '2017-12-02 07:55:48', '2017-12-02 07:55:48'),
(1251, 103, 5, 'West', 82, 'BN-364', '952662733768', NULL, 1145.00, 1906.00, '1.00', 0, NULL, 'JZAXywJhJj147', '2017-12-02 07:55:49', '2017-12-02 07:55:49'),
(1252, 103, 5, 'West', 82, 'BN-364', '952662733768', NULL, 1145.00, 1906.00, '1.00', 0, NULL, 'JZAXywJhJj147', '2017-12-02 07:55:49', '2017-12-02 07:55:49'),
(1253, 103, 5, 'West', 82, 'BN-364', '952662733768', NULL, 1145.00, 1906.00, '1.00', 0, NULL, 'JZAXywJhJj147', '2017-12-02 07:55:49', '2017-12-02 07:55:49'),
(1254, 103, 4, 'North', 75, 'BN-692', '984463127767', NULL, 6048.00, 6663.00, '-3.00', 0, NULL, '1rgyVDkHPZn3Y', '2017-12-02 07:55:49', '2017-12-02 07:58:14'),
(1255, 103, 4, 'North', 75, 'BN-692', '984463127767', NULL, 6048.00, 6663.00, '-1.00', 0, NULL, '1rgyVDkHPZn3Y', '2017-12-02 07:55:49', '2017-12-02 07:58:14'),
(1256, 103, 4, 'North', 75, 'BN-692', '984463127767', NULL, 6048.00, 6663.00, '0.00', 0, NULL, '1rgyVDkHPZn3Y', '2017-12-02 07:55:49', '2017-12-02 07:57:48'),
(1257, 103, 4, 'North', 75, 'BN-692', '984463127767', NULL, 6048.00, 6663.00, '1.00', 0, NULL, '1rgyVDkHPZn3Y', '2017-12-02 07:55:49', '2017-12-02 07:55:49'),
(1258, 103, 4, 'North', 75, 'BN-692', '984463127767', NULL, 6048.00, 6663.00, '1.00', 0, NULL, '1rgyVDkHPZn3Y', '2017-12-02 07:55:50', '2017-12-02 07:55:50'),
(1259, 103, 4, 'North', 75, 'BN-692', '984463127767', NULL, 6048.00, 6663.00, '1.00', 0, NULL, '1rgyVDkHPZn3Y', '2017-12-02 07:55:50', '2017-12-02 07:55:50'),
(1260, 103, 4, 'North', 75, 'BN-692', '984463127767', NULL, 6048.00, 6663.00, '1.00', 0, NULL, '1rgyVDkHPZn3Y', '2017-12-02 07:55:50', '2017-12-02 07:55:50'),
(1261, 103, 4, 'North', 75, 'BN-692', '984463127767', NULL, 6048.00, 6663.00, '1.00', 0, NULL, '1rgyVDkHPZn3Y', '2017-12-02 07:55:50', '2017-12-02 07:55:50'),
(1262, 103, 4, 'North', 75, 'BN-692', '984463127767', NULL, 6048.00, 6663.00, '1.00', 0, NULL, '1rgyVDkHPZn3Y', '2017-12-02 07:55:50', '2017-12-02 07:55:50'),
(1263, 103, 4, 'North', 75, 'BN-692', '984463127767', NULL, 6048.00, 6663.00, '1.00', 0, NULL, '1rgyVDkHPZn3Y', '2017-12-02 07:55:50', '2017-12-02 07:55:50'),
(1264, 105, 4, 'North', 61, 'BN-020', '445962375979', NULL, 8076.00, 8361.00, '-3.00', 1, 'dGZVF2yb', 'oQE4YmVt08Q7X', '2017-12-02 07:55:52', '2017-12-02 08:00:26'),
(1265, 105, 4, 'North', 61, 'BN-020', '445962375979', NULL, 8076.00, 8361.00, '-1.00', 0, NULL, 'oQE4YmVt08Q7X', '2017-12-02 07:55:52', '2017-12-02 07:58:15'),
(1266, 105, 4, 'North', 61, 'BN-020', '445962375979', NULL, 8076.00, 8361.00, '1.00', 0, NULL, 'oQE4YmVt08Q7X', '2017-12-02 07:55:52', '2017-12-02 07:55:52'),
(1267, 105, 4, 'North', 61, 'BN-020', '445962375979', NULL, 8076.00, 8361.00, '1.00', 0, NULL, 'oQE4YmVt08Q7X', '2017-12-02 07:55:52', '2017-12-02 07:55:52'),
(1268, 105, 4, 'North', 61, 'BN-020', '445962375979', NULL, 8076.00, 8361.00, '1.00', 0, NULL, 'oQE4YmVt08Q7X', '2017-12-02 07:55:52', '2017-12-02 07:55:52'),
(1269, 105, 4, 'North', 61, 'BN-020', '445962375979', NULL, 8076.00, 8361.00, '1.00', 0, NULL, 'oQE4YmVt08Q7X', '2017-12-02 07:55:52', '2017-12-02 07:55:52'),
(1270, 105, 4, 'North', 61, 'BN-020', '445962375979', NULL, 8076.00, 8361.00, '1.00', 0, NULL, 'oQE4YmVt08Q7X', '2017-12-02 07:55:52', '2017-12-02 07:55:52');
INSERT INTO `product_locations` (`id`, `productId`, `productLocation`, `productLocationName`, `binLocation`, `binLocationName`, `productBarcode`, `productCurrency`, `unitCost`, `sellingPrice`, `amount`, `onHold`, `onHoldBy`, `hash`, `created_at`, `updated_at`) VALUES
(1271, 105, 4, 'North', 61, 'BN-020', '445962375979', NULL, 8076.00, 8361.00, '1.00', 0, NULL, 'oQE4YmVt08Q7X', '2017-12-02 07:55:52', '2017-12-02 07:55:52'),
(1272, 105, 4, 'North', 61, 'BN-020', '445962375979', NULL, 8076.00, 8361.00, '1.00', 0, NULL, 'oQE4YmVt08Q7X', '2017-12-02 07:55:52', '2017-12-02 07:55:52'),
(1273, 105, 4, 'North', 61, 'BN-020', '445962375979', NULL, 8076.00, 8361.00, '1.00', 0, NULL, 'oQE4YmVt08Q7X', '2017-12-02 07:55:52', '2017-12-02 07:55:52'),
(1274, 105, 4, 'North', 61, 'BN-020', '445962375979', NULL, 8076.00, 8361.00, '1.00', 0, NULL, 'oQE4YmVt08Q7X', '2017-12-02 07:55:52', '2017-12-02 07:55:52'),
(1275, 105, 4, 'North', 61, 'BN-020', '445962375979', NULL, 8076.00, 8361.00, '1.00', 0, NULL, 'oQE4YmVt08Q7X', '2017-12-02 07:55:52', '2017-12-02 07:55:52'),
(1276, 106, 4, 'North', 76, 'BN-735', '153307000492', NULL, 3836.00, 4064.00, '-3.00', 1, 'eZYosvyd', 'DkJZ10Au5jLD4P', '2017-12-02 07:55:53', '2017-12-02 08:00:39'),
(1277, 106, 4, 'North', 76, 'BN-735', '153307000492', NULL, 3836.00, 4064.00, '0.00', 0, NULL, 'DkJZ10Au5jLD4P', '2017-12-02 07:55:54', '2017-12-02 07:58:32'),
(1278, 106, 4, 'North', 76, 'BN-735', '153307000492', NULL, 3836.00, 4064.00, '1.00', 0, NULL, 'DkJZ10Au5jLD4P', '2017-12-02 07:55:54', '2017-12-02 07:55:54'),
(1279, 106, 4, 'North', 76, 'BN-735', '153307000492', NULL, 3836.00, 4064.00, '1.00', 0, NULL, 'DkJZ10Au5jLD4P', '2017-12-02 07:55:54', '2017-12-02 07:55:54'),
(1280, 106, 4, 'North', 76, 'BN-735', '153307000492', NULL, 3836.00, 4064.00, '1.00', 0, NULL, 'DkJZ10Au5jLD4P', '2017-12-02 07:55:54', '2017-12-02 07:55:54'),
(1281, 106, 4, 'North', 76, 'BN-735', '153307000492', NULL, 3836.00, 4064.00, '1.00', 0, NULL, 'DkJZ10Au5jLD4P', '2017-12-02 07:55:54', '2017-12-02 07:55:54'),
(1282, 106, 4, 'North', 76, 'BN-735', '153307000492', NULL, 3836.00, 4064.00, '1.00', 0, NULL, 'DkJZ10Au5jLD4P', '2017-12-02 07:55:54', '2017-12-02 07:55:54'),
(1283, 106, 4, 'North', 76, 'BN-735', '153307000492', NULL, 3836.00, 4064.00, '1.00', 0, NULL, 'DkJZ10Au5jLD4P', '2017-12-02 07:55:54', '2017-12-02 07:55:54'),
(1284, 60, 10, 'North', 10, 'BN-970', '899310763565', NULL, 108.00, 117.00, '1.00', 0, NULL, 'p8Yy0GLF5WrDn', '2017-12-02 07:55:59', '2017-12-02 07:55:59'),
(1285, 60, 10, 'North', 10, 'BN-970', '899310763565', NULL, 108.00, 117.00, '1.00', 0, NULL, 'p8Yy0GLF5WrDn', '2017-12-02 07:55:59', '2017-12-02 07:55:59'),
(1286, 13, 14, 'North', 14, 'BN-840', '371329532955', NULL, 128.00, 139.00, '1.00', 0, NULL, '2kYMql1uAgr8x', '2017-12-02 07:55:59', '2017-12-02 07:55:59'),
(1287, 13, 14, 'North', 14, 'BN-840', '371329532955', NULL, 128.00, 139.00, '1.00', 0, NULL, '2kYMql1uAgr8x', '2017-12-02 07:55:59', '2017-12-02 07:55:59'),
(1288, 7, 6, 'North', 6, 'BN-236', '398144487413', NULL, 233.00, 250.00, '1.00', 0, NULL, 'BNQOzEGULEZpm', '2017-12-02 07:56:00', '2017-12-02 07:56:00'),
(1289, 7, 6, 'North', 6, 'BN-236', '398144487413', NULL, 233.00, 250.00, '1.00', 0, NULL, 'BNQOzEGULEZpm', '2017-12-02 07:56:00', '2017-12-02 07:56:00'),
(1290, 86, 17, 'North', 17, 'BN-961', '990015244943', NULL, 295.00, 314.00, '1.00', 0, NULL, 'WLrK4P8ul2K4', '2017-12-02 07:56:01', '2017-12-02 07:56:01'),
(1291, 58, 8, 'North', 8, 'BN-638', '544751391012', NULL, 233.00, 249.00, '1.00', 0, NULL, 'lYWBjr6h4LYQn', '2017-12-02 07:56:02', '2017-12-02 07:56:02'),
(1292, 40, 10, 'North', 10, 'BN-970', '780223876216', NULL, 128.00, 145.00, '1.00', 0, NULL, 'MwLDJqXfDB7Ej', '2017-12-02 07:56:02', '2017-12-02 07:56:02'),
(1293, 51, 16, 'North', 16, 'BN-556', '190293642626', NULL, 139.00, 150.00, '1.00', 0, NULL, 'Q1Llqpwu7R4D9', '2017-12-02 07:56:03', '2017-12-02 07:56:03'),
(1294, 28, 1, 'North', 1, 'BN-059', '175470509688', NULL, 297.00, 312.00, '1.00', 0, NULL, 'R6vwkMpFrpPP9', '2017-12-02 07:56:04', '2017-12-02 07:56:04'),
(1295, 28, 1, 'North', 1, 'BN-059', '175470509688', NULL, 297.00, 312.00, '1.00', 0, NULL, 'R6vwkMpFrpPP9', '2017-12-02 07:56:04', '2017-12-02 07:56:04'),
(1296, 58, 9, 'North', 9, 'BN-971', '544751391012', NULL, 571.00, 249.00, '1.00', 1, 'eZYXUlXd', 'wj904j1SWxgz5', '2017-12-02 07:56:04', '2017-12-02 08:00:38'),
(1297, 58, 9, 'North', 9, 'BN-971', '544751391012', NULL, 571.00, 249.00, '1.00', 0, NULL, 'wj904j1SWxgz5', '2017-12-02 07:56:04', '2017-12-02 07:56:04'),
(1298, 23, 19, 'North', 19, 'BN-156', '109839945961', NULL, 273.00, 281.00, '-1.00', 0, NULL, 'Z4qRvpqHRMrXA', '2017-12-02 07:56:05', '2017-12-02 07:57:57'),
(1299, 23, 19, 'North', 19, 'BN-156', '109839945961', NULL, 273.00, 281.00, '1.00', 0, NULL, 'Z4qRvpqHRMrXA', '2017-12-02 07:56:05', '2017-12-02 07:56:05'),
(1300, 62, 10, 'North', 10, 'BN-970', '166467743987', NULL, 226.00, 240.00, '0.00', 0, NULL, 'ER2NM2PFpJ5x6', '2017-12-02 07:56:07', '2017-12-02 07:58:04'),
(1301, 62, 10, 'North', 10, 'BN-970', '166467743987', NULL, 226.00, 240.00, '0.00', 0, NULL, 'ER2NM2PFpJ5x6', '2017-12-02 07:56:07', '2017-12-02 07:58:04'),
(1302, 16, 4, 'North', 4, 'BN-635', '741507137089', NULL, 121.00, 129.00, '1.00', 0, NULL, 'jZlD9jOiwYXgQ', '2017-12-02 07:56:08', '2017-12-02 07:56:08'),
(1303, 75, 2, 'North', 2, 'BN-955', '333882931835', NULL, 298.00, 312.00, '1.00', 0, NULL, 'GZ7xM6zinGNyQ', '2017-12-02 07:56:12', '2017-12-02 07:56:12'),
(1304, 47, 3, 'North', 3, 'BN-619', '794988407974', NULL, 219.00, 229.00, '1.00', 0, NULL, 'BNPvqNZTl0RQ9', '2017-12-02 07:56:14', '2017-12-02 07:56:14'),
(1305, 51, 10, 'North', 10, 'BN-970', '190293642626', NULL, 469.00, 150.00, '0.00', 0, NULL, 'GvJwY9XF1O8PyP', '2017-12-02 07:56:16', '2017-12-02 07:56:46'),
(1306, 72, 15, 'North', 15, 'BN-253', '150540683741', NULL, 226.00, 237.00, '1.00', 0, NULL, '91z29KEhjXW2O', '2017-12-02 07:56:16', '2017-12-02 07:56:16'),
(1307, 72, 15, 'North', 15, 'BN-253', '150540683741', NULL, 226.00, 237.00, '1.00', 0, NULL, '91z29KEhjXW2O', '2017-12-02 07:56:16', '2017-12-02 07:56:16'),
(1308, 103, 13, 'North', 13, 'BN-828', '676674717263', NULL, 256.00, 264.00, '1.00', 0, NULL, '2RjBGApFX009P', '2017-12-02 07:56:17', '2017-12-02 07:56:17'),
(1309, 28, 9, 'North', 9, 'BN-971', '175470509688', NULL, 855.00, 312.00, '1.00', 0, NULL, 'D1mmBmZTO2vRp', '2017-12-02 07:56:18', '2017-12-02 07:56:18'),
(1310, 28, 9, 'North', 9, 'BN-971', '175470509688', NULL, 855.00, 312.00, '1.00', 0, NULL, 'D1mmBmZTO2vRp', '2017-12-02 07:56:18', '2017-12-02 07:56:18'),
(1311, 68, 3, 'North', 3, 'BN-619', '234576488294', NULL, 197.00, 210.00, '1.00', 0, NULL, 'zmJOEB7H8M4KP', '2017-12-02 07:56:19', '2017-12-02 07:56:19'),
(1312, 68, 3, 'North', 3, 'BN-619', '234576488294', NULL, 197.00, 210.00, '1.00', 0, NULL, 'zmJOEB7H8M4KP', '2017-12-02 07:56:19', '2017-12-02 07:56:19'),
(1313, 102, 6, 'North', 6, 'BN-236', '593050199133', NULL, 276.00, 286.00, '1.00', 0, NULL, 'W7mpNJrUAM9Qr', '2017-12-02 07:56:20', '2017-12-02 07:56:20'),
(1314, 28, 2, 'North', 2, 'BN-955', '175470509688', NULL, 600.00, 312.00, '0.00', 0, NULL, '0VxRVgYhQW5B', '2017-12-02 07:56:20', '2017-12-02 07:58:25'),
(1315, 28, 2, 'North', 2, 'BN-955', '175470509688', NULL, 600.00, 312.00, '0.00', 0, NULL, '0VxRVgYhQW5B', '2017-12-02 07:56:20', '2017-12-02 07:58:25'),
(1316, 28, 7, 'North', 7, 'BN-940', '175470509688', NULL, 820.50, 312.00, '1.00', 0, NULL, 'LgGPnjwTRRRMOG', '2017-12-02 07:56:21', '2017-12-02 07:56:21'),
(1317, 28, 7, 'North', 7, 'BN-940', '175470509688', NULL, 820.50, 312.00, '1.00', 0, NULL, 'LgGPnjwTRRRMOG', '2017-12-02 07:56:21', '2017-12-02 07:56:21'),
(1318, 59, 16, 'North', 16, 'BN-556', '725970484697', NULL, 192.00, 197.00, '1.00', 0, NULL, '4RBw3qphyENxw', '2017-12-02 07:56:22', '2017-12-02 07:56:22'),
(1319, 100, 1, 'North', 1, 'BN-059', '252162179173', NULL, 136.00, 155.00, '1.00', 0, NULL, 'r82yyLNt8n1NpL', '2017-12-02 07:56:23', '2017-12-02 07:56:23'),
(1320, 64, 12, 'North', 12, 'BN-216', '753617486223', NULL, 296.00, 303.00, '1.00', 0, NULL, '68Lpo74crG3D2k', '2017-12-02 07:56:24', '2017-12-02 07:56:24'),
(1321, 87, 20, 'North', 20, 'BN-052', '894534349472', NULL, 265.00, 274.00, '0.00', 1, 'e1wxiE5b', 'rRZQEKjckk7X0', '2017-12-02 07:56:25', '2017-12-02 08:00:22'),
(1322, 87, 20, 'North', 20, 'BN-052', '894534349472', NULL, 265.00, 274.00, '1.00', 0, NULL, 'rRZQEKjckk7X0', '2017-12-02 07:56:25', '2017-12-02 07:56:25'),
(1323, 65, 1, 'North', 1, 'BN-059', '936747834168', NULL, 152.00, 161.00, '-1.00', 0, NULL, '9Q24nOqI65VPN', '2017-12-02 07:56:26', '2017-12-02 07:57:57'),
(1324, 65, 1, 'North', 1, 'BN-059', '936747834168', NULL, 152.00, 161.00, '1.00', 0, NULL, '9Q24nOqI65VPN', '2017-12-02 07:56:26', '2017-12-02 07:56:26'),
(1325, 10, 8, 'North', 8, 'BN-638', '499359373949', NULL, 146.00, 163.00, '1.00', 0, NULL, '4RQqK6Yi0kGmv', '2017-12-02 07:56:26', '2017-12-02 07:56:26'),
(1326, 78, 5, 'North', 5, 'BN-983', '476892883159', NULL, 139.00, 149.00, '1.00', 0, NULL, 'mQ18Qm7T0nVJE', '2017-12-02 07:56:27', '2017-12-02 07:56:27'),
(1327, 79, 1, 'North', 1, 'BN-059', '160770472961', NULL, 179.00, 184.00, '1.00', 0, NULL, 'pQng79vHWKqw3', '2017-12-02 07:56:28', '2017-12-02 07:56:28'),
(1328, 79, 1, 'North', 1, 'BN-059', '160770472961', NULL, 179.00, 184.00, '1.00', 0, NULL, 'pQng79vHWKqw3', '2017-12-02 07:56:28', '2017-12-02 07:56:28'),
(1329, 67, 6, 'North', 6, 'BN-236', '914755526503', NULL, 178.00, 184.00, '1.00', 0, NULL, '5yAkjO8UPE60v', '2017-12-02 07:56:29', '2017-12-02 07:56:29'),
(1330, 67, 6, 'North', 6, 'BN-236', '914755526503', NULL, 178.00, 184.00, '1.00', 0, NULL, '5yAkjO8UPE60v', '2017-12-02 07:56:30', '2017-12-02 07:56:30'),
(1331, 95, 16, 'North', 16, 'BN-556', '972883254293', NULL, 153.00, 164.00, '1.00', 1, 'dJ6Ku85d', 'lO7jgZBIP0Qw1', '2017-12-02 07:56:31', '2017-12-02 08:00:17'),
(1332, 95, 16, 'North', 16, 'BN-556', '972883254293', NULL, 153.00, 164.00, '1.00', 0, NULL, 'lO7jgZBIP0Qw1', '2017-12-02 07:56:31', '2017-12-02 07:56:31'),
(1333, 68, 16, 'North', 16, 'BN-556', '234576488294', NULL, 321.50, 210.00, '0.00', 0, NULL, 'G6NGmOjUmVw3r', '2017-12-02 07:56:32', '2017-12-02 07:56:55'),
(1334, 68, 16, 'North', 16, 'BN-556', '234576488294', NULL, 321.50, 210.00, '0.00', 0, NULL, 'G6NGmOjUmVw3r', '2017-12-02 07:56:32', '2017-12-02 07:56:55'),
(1335, 100, 9, 'North', 9, 'BN-971', '252162179173', NULL, 1645.00, 155.00, '1.00', 1, 'dJZMSymd', 'zKJMv3juZ3wDx', '2017-12-02 07:56:33', '2017-12-02 08:00:27'),
(1336, 106, 5, 'North', 5, 'BN-983', '311630670151', NULL, 277.00, 294.00, '1.00', 0, NULL, 'BNqOPGziyZv2X', '2017-12-02 07:56:35', '2017-12-02 07:56:35');

-- --------------------------------------------------------

--
-- Table structure for table `product_photos`
--

CREATE TABLE `product_photos` (
  `id` int(10) UNSIGNED NOT NULL,
  `productId` int(10) UNSIGNED NOT NULL,
  `photoHash` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `filepath` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `filename` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `filesize` int(11) DEFAULT NULL,
  `pictureWidth` int(11) DEFAULT NULL,
  `pictureHeight` int(11) DEFAULT NULL,
  `pictureType` int(11) DEFAULT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `caption` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `companyId` int(10) UNSIGNED NOT NULL,
  `updatedBy` int(10) UNSIGNED NOT NULL,
  `createdBy` int(10) UNSIGNED NOT NULL,
  `isThumbnail` tinyint(1) NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `purchase_orders`
--

CREATE TABLE `purchase_orders` (
  `id` int(10) UNSIGNED NOT NULL,
  `supplierId` int(11) NOT NULL,
  `supplierName` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `dateOfDelivery` date DEFAULT NULL,
  `termsOfPayment` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deliverBy` date DEFAULT NULL,
  `fullDelivery` tinyint(1) NOT NULL DEFAULT '0',
  `partDelivery` tinyint(1) NOT NULL DEFAULT '0',
  `isFavourite` tinyint(1) NOT NULL DEFAULT '0',
  `departmentId` int(11) DEFAULT NULL,
  `favouriteName` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `lpoNumber` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `internalRefNo` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `vatTaxAmount` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `company` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `lpoCurrencyType` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `prRequestNo` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remarks` text COLLATE utf8mb4_unicode_ci,
  `lpoStatus` int(11) DEFAULT NULL,
  `lpoApprovedOn` datetime DEFAULT NULL,
  `lpoDate` date DEFAULT NULL,
  `rejectionReason` text COLLATE utf8mb4_unicode_ci,
  `hash` text COLLATE utf8mb4_unicode_ci,
  `companyId` int(10) UNSIGNED NOT NULL,
  `updatedBy` int(10) UNSIGNED NOT NULL,
  `createdBy` int(10) UNSIGNED NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `purchase_orders`
--

INSERT INTO `purchase_orders` (`id`, `supplierId`, `supplierName`, `dateOfDelivery`, `termsOfPayment`, `deliverBy`, `fullDelivery`, `partDelivery`, `isFavourite`, `departmentId`, `favouriteName`, `lpoNumber`, `internalRefNo`, `vatTaxAmount`, `company`, `lpoCurrencyType`, `prRequestNo`, `remarks`, `lpoStatus`, `lpoApprovedOn`, `lpoDate`, `rejectionReason`, `hash`, `companyId`, `updatedBy`, `createdBy`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 34, 'Larkin-Wiza', NULL, NULL, '2017-03-12', 0, 0, 0, 6, NULL, 'LPO-948', NULL, '19', NULL, 'KES', NULL, NULL, 2, '2017-11-18 01:07:07', '2017-10-08', NULL, NULL, 1, 0, 1, NULL, '2017-12-02 07:59:01', '2017-12-02 07:59:01'),
(2, 26, 'Stroman LLC', NULL, NULL, '2017-08-31', 0, 0, 0, 6, NULL, 'LPO-491', NULL, '20', NULL, 'EURO', NULL, NULL, 2, '2016-12-28 13:54:11', '2017-07-06', NULL, NULL, 1, 0, 1, NULL, '2017-12-02 07:59:01', '2017-12-02 07:59:01'),
(3, 3, 'Stanton PLC', NULL, NULL, '2017-01-14', 0, 0, 0, 9, NULL, 'LPO-832', NULL, '20', NULL, 'USD', NULL, NULL, 1, '2017-06-23 23:34:18', '2017-08-28', NULL, NULL, 1, 0, 1, NULL, '2017-12-02 07:59:01', '2017-12-02 07:59:01'),
(4, 30, 'Halvorson and Sons', NULL, NULL, '2016-12-05', 0, 0, 0, 10, NULL, 'LPO-809', NULL, '17', NULL, 'USD', NULL, NULL, 2, '2017-06-17 15:45:43', '2017-06-22', NULL, NULL, 1, 0, 1, NULL, '2017-12-02 07:59:01', '2017-12-02 07:59:01'),
(5, 19, 'Muller-Christiansen', NULL, NULL, '2017-05-21', 0, 0, 0, 10, NULL, 'LPO-629', NULL, '19', NULL, 'EURO', NULL, NULL, 2, '2017-10-02 01:48:31', '2016-12-02', NULL, NULL, 1, 0, 1, NULL, '2017-12-02 07:59:01', '2017-12-02 07:59:01'),
(6, 16, 'Schuppe, Zieme and Turcotte', NULL, NULL, '2017-11-30', 0, 0, 0, 7, NULL, 'LPO-911', NULL, '20', NULL, 'KES', NULL, NULL, 2, '2017-07-23 10:54:14', '2017-07-04', NULL, NULL, 1, 0, 1, NULL, '2017-12-02 07:59:02', '2017-12-02 07:59:02'),
(7, 5, 'Dickens, Dare and Quigley', NULL, NULL, '2017-05-23', 0, 0, 0, 2, NULL, 'LPO-454', NULL, '18', NULL, 'EURO', NULL, NULL, 2, '2017-07-07 19:16:01', '2017-10-27', NULL, NULL, 1, 0, 1, NULL, '2017-12-02 07:59:02', '2017-12-02 07:59:02'),
(8, 27, 'Kozey, Langosh and Mohr', NULL, NULL, '2017-05-12', 0, 0, 0, 4, NULL, 'LPO-086', NULL, '17', NULL, 'EURO', NULL, NULL, 2, '2017-04-04 22:58:39', '2017-04-06', NULL, NULL, 1, 0, 1, NULL, '2017-12-02 07:59:02', '2017-12-02 07:59:02'),
(9, 7, 'Rosenbaum Group', NULL, NULL, '2017-06-09', 0, 0, 0, 4, NULL, 'LPO-022', NULL, '16', NULL, 'USD', NULL, NULL, 1, '2017-03-25 10:35:15', '2017-10-01', NULL, NULL, 1, 0, 1, NULL, '2017-12-02 07:59:02', '2017-12-02 07:59:02'),
(10, 17, 'Kovacek-Shields', NULL, NULL, '2017-10-09', 0, 0, 0, 1, NULL, 'LPO-389', NULL, '17', NULL, 'KES', NULL, NULL, 2, '2017-10-29 17:23:04', '2017-06-06', NULL, NULL, 1, 0, 1, NULL, '2017-12-02 07:59:02', '2017-12-02 07:59:02'),
(11, 20, 'Russel-Rodriguez', NULL, NULL, '2016-12-29', 0, 0, 0, 2, NULL, 'LPO-432', NULL, '20', NULL, 'EURO', NULL, NULL, 2, '2017-06-16 10:27:36', '2017-02-21', NULL, NULL, 1, 0, 1, NULL, '2017-12-02 07:59:02', '2017-12-02 07:59:02'),
(12, 18, 'Kuhlman-Wiza', NULL, NULL, '2017-01-08', 0, 0, 0, 4, NULL, 'LPO-661', NULL, '17', NULL, 'KES', NULL, NULL, 2, '2017-06-17 18:32:30', '2017-10-25', NULL, NULL, 1, 0, 1, NULL, '2017-12-02 07:59:02', '2017-12-02 07:59:02'),
(13, 4, 'Shields Group', NULL, NULL, '2017-06-11', 0, 0, 0, 4, NULL, 'LPO-495', NULL, '16', NULL, 'EURO', NULL, NULL, 2, '2017-08-26 04:00:06', '2017-09-15', NULL, NULL, 1, 0, 1, NULL, '2017-12-02 07:59:02', '2017-12-02 07:59:02'),
(14, 10, 'Gerhold, Beier and Stark', NULL, NULL, '2017-01-20', 0, 0, 0, 2, NULL, 'LPO-880', NULL, '19', NULL, 'EURO', NULL, NULL, 2, '2017-09-23 00:25:49', '2017-08-30', NULL, NULL, 1, 0, 1, NULL, '2017-12-02 07:59:02', '2017-12-02 07:59:02'),
(15, 14, 'Bradtke-Veum', NULL, NULL, '2016-12-26', 0, 0, 0, 3, NULL, 'LPO-035', NULL, '16', NULL, 'USD', NULL, NULL, 2, '2017-03-18 12:51:28', '2017-04-23', NULL, NULL, 1, 0, 1, NULL, '2017-12-02 07:59:02', '2017-12-02 07:59:02'),
(16, 30, 'Halvorson and Sons', NULL, NULL, '2017-08-17', 0, 0, 0, 4, NULL, 'LPO-490', NULL, '17', NULL, 'USD', NULL, NULL, 2, '2017-06-04 15:25:24', '2017-07-24', NULL, NULL, 1, 0, 1, NULL, '2017-12-02 07:59:02', '2017-12-02 07:59:02'),
(17, 35, 'Spinka-Ernser', NULL, NULL, '2016-12-21', 0, 0, 0, 5, NULL, 'LPO-620', NULL, '20', NULL, 'USD', NULL, NULL, 2, '2017-02-02 07:13:28', '2017-07-01', NULL, NULL, 1, 0, 1, NULL, '2017-12-02 07:59:02', '2017-12-02 07:59:02'),
(18, 26, 'Stroman LLC', NULL, NULL, '2017-06-11', 0, 0, 0, 3, NULL, 'LPO-234', NULL, '18', NULL, 'USD', NULL, NULL, 1, '2016-12-18 21:50:58', '2017-10-22', NULL, NULL, 1, 0, 1, NULL, '2017-12-02 07:59:02', '2017-12-02 07:59:02'),
(19, 23, 'Schuster, Krajcik and Schultz', NULL, NULL, '2017-12-04', 0, 0, 0, 2, NULL, 'LPO-990', NULL, '17', NULL, 'EURO', NULL, NULL, 1, '2017-09-27 16:34:07', '2017-05-29', NULL, NULL, 1, 0, 1, NULL, '2017-12-02 07:59:02', '2017-12-02 07:59:02'),
(20, 25, 'Smith LLC', NULL, NULL, '2017-03-08', 0, 0, 0, 2, NULL, 'LPO-548', NULL, '20', NULL, 'KES', NULL, NULL, 1, '2017-08-01 22:19:02', '2017-08-04', NULL, NULL, 1, 0, 1, NULL, '2017-12-02 07:59:02', '2017-12-02 07:59:02');

-- --------------------------------------------------------

--
-- Table structure for table `purchase_orders_items`
--

CREATE TABLE `purchase_orders_items` (
  `id` int(10) UNSIGNED NOT NULL,
  `lpoId` int(10) UNSIGNED DEFAULT NULL,
  `productId` int(10) UNSIGNED DEFAULT NULL,
  `usesMultipleStorage` tinyint(1) DEFAULT NULL,
  `productDescription` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `amount` double(15,2) DEFAULT NULL,
  `unitCost` double(15,2) DEFAULT NULL,
  `discount` double(8,2) DEFAULT NULL,
  `taxable` tinyint(1) NOT NULL DEFAULT '1',
  `total` double(15,2) DEFAULT NULL,
  `tax` double(15,2) DEFAULT NULL,
  `taxRate` double(15,2) DEFAULT NULL,
  `fullDelivery` tinyint(1) NOT NULL DEFAULT '0',
  `partDelivery` tinyint(1) NOT NULL DEFAULT '0',
  `delivered` double(8,2) NOT NULL DEFAULT '0.00',
  `companyId` int(10) UNSIGNED NOT NULL,
  `updatedBy` int(10) UNSIGNED NOT NULL,
  `createdBy` int(10) UNSIGNED NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `purchase_orders_items`
--

INSERT INTO `purchase_orders_items` (`id`, `lpoId`, `productId`, `usesMultipleStorage`, `productDescription`, `amount`, `unitCost`, `discount`, `taxable`, `total`, `tax`, `taxRate`, `fullDelivery`, `partDelivery`, `delivered`, `companyId`, `updatedBy`, `createdBy`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 1, 19, 0, 'SPRING FILES', 3.00, 40.00, NULL, 0, 120.00, 22.80, NULL, 0, 0, 0.00, 1, 1, 1, NULL, '2017-12-02 07:59:02', '2017-12-02 07:59:34'),
(2, 1, 44, 1, 'TRANSGLOBAL TAPES', 1.00, 14.00, NULL, 0, 14.00, 2.66, NULL, 0, 0, 0.00, 1, 1, 1, NULL, '2017-12-02 07:59:03', '2017-12-02 07:59:34'),
(3, 1, 44, 1, 'TRANSGLOBAL TAPES', 2.00, 69.00, NULL, 0, 138.00, 26.22, NULL, 0, 0, 0.00, 1, 1, 1, NULL, '2017-12-02 07:59:03', '2017-12-02 07:59:34'),
(4, 1, 45, 1, 'RUBBER GLOVES', 3.00, 65.00, NULL, 0, 195.00, 37.05, NULL, 0, 0, 0.00, 1, 1, 1, NULL, '2017-12-02 07:59:03', '2017-12-02 07:59:34'),
(5, 1, 18, 0, 'BOX FILES', 1.00, 30.00, NULL, 0, 30.00, 5.70, NULL, 0, 0, 0.00, 1, 1, 1, NULL, '2017-12-02 07:59:03', '2017-12-02 07:59:34'),
(6, 1, 21, 0, 'BIRO PENS BLACK', 2.00, 52.00, NULL, 0, 104.00, 19.76, NULL, 0, 0, 0.00, 1, 1, 1, NULL, '2017-12-02 07:59:03', '2017-12-02 07:59:34'),
(7, 1, 8, 1, 'EXPORTS STRONG ROOM RECORD BOOKS', 2.00, 78.00, NULL, 0, 156.00, 29.64, NULL, 0, 0, 0.00, 1, 1, 1, NULL, '2017-12-02 07:59:04', '2017-12-02 07:59:34'),
(8, 1, 9, 0, 'EQUIPMENT HIREOUT BOOKS', 3.00, 69.00, NULL, 0, 207.00, 39.33, NULL, 0, 0, 0.00, 1, 1, 1, NULL, '2017-12-02 07:59:04', '2017-12-02 07:59:34'),
(9, 1, 35, 1, 'HIGHLIGHTER', 4.00, 87.00, NULL, 0, 348.00, 66.12, NULL, 0, 0, 0.00, 1, 1, 1, NULL, '2017-12-02 07:59:04', '2017-12-02 07:59:34'),
(10, 1, 22, 1, 'BIRO PENS RED', 4.00, 17.00, NULL, 0, 68.00, 12.92, NULL, 0, 0, 0.00, 1, 1, 1, NULL, '2017-12-02 07:59:04', '2017-12-02 07:59:34'),
(11, 2, 36, 1, 'DUST BINS', 2.00, 73.00, NULL, 0, 146.00, 29.20, NULL, 0, 0, 0.00, 1, 1, 1, NULL, '2017-12-02 07:59:05', '2017-12-02 07:59:34'),
(12, 2, 10, 1, 'A3 KHAKI BROWN ENVELOPES ', 4.00, 37.00, NULL, 0, 148.00, 29.60, NULL, 0, 0, 0.00, 1, 1, 1, NULL, '2017-12-02 07:59:05', '2017-12-02 07:59:34'),
(13, 2, 10, 1, 'A3 KHAKI BROWN ENVELOPES ', 4.00, 33.00, NULL, 0, 132.00, 26.40, NULL, 0, 0, 0.00, 1, 1, 1, NULL, '2017-12-02 07:59:05', '2017-12-02 07:59:34'),
(14, 2, 33, 1, 'WHITE OUT', 5.00, 13.00, NULL, 0, 65.00, 13.00, NULL, 0, 0, 0.00, 1, 1, 1, NULL, '2017-12-02 07:59:05', '2017-12-02 07:59:35'),
(15, 2, 40, 1, 'ULD BOOKS', 4.00, 36.00, NULL, 0, 144.00, 28.80, NULL, 0, 0, 0.00, 1, 1, 1, NULL, '2017-12-02 07:59:05', '2017-12-02 07:59:35'),
(16, 2, 34, 1, 'Glue STICK', 3.00, 2.00, NULL, 0, 6.00, 1.20, NULL, 0, 0, 0.00, 1, 1, 1, NULL, '2017-12-02 07:59:05', '2017-12-02 07:59:35'),
(17, 2, 12, 1, 'A4 BRANDED ENVELOPES', 1.00, 43.00, NULL, 0, 43.00, 8.60, NULL, 0, 0, 0.00, 1, 1, 1, NULL, '2017-12-02 07:59:06', '2017-12-02 07:59:35'),
(18, 2, 40, 1, 'ULD BOOKS', 2.00, 32.00, NULL, 0, 64.00, 12.80, NULL, 0, 0, 0.00, 1, 1, 1, NULL, '2017-12-02 07:59:06', '2017-12-02 07:59:35'),
(19, 2, 36, 1, 'DUST BINS', 4.00, 47.00, NULL, 0, 188.00, 37.60, NULL, 0, 0, 0.00, 1, 1, 1, NULL, '2017-12-02 07:59:06', '2017-12-02 07:59:35'),
(20, 2, 17, 1, 'PAPER CLIPS  50MM', 1.00, 50.00, NULL, 0, 50.00, 10.00, NULL, 0, 0, 0.00, 1, 1, 1, NULL, '2017-12-02 07:59:06', '2017-12-02 07:59:35'),
(21, 3, 8, 1, 'EXPORTS STRONG ROOM RECORD BOOKS', 3.00, 36.00, NULL, 0, 108.00, 21.60, NULL, 0, 0, 0.00, 1, 1, 1, NULL, '2017-12-02 07:59:06', '2017-12-02 07:59:35'),
(22, 3, 48, 1, 'Staple Pins Big 66/14', 4.00, 29.00, NULL, 0, 116.00, 23.20, NULL, 0, 0, 0.00, 1, 1, 1, NULL, '2017-12-02 07:59:06', '2017-12-02 07:59:35'),
(23, 3, 44, 1, 'TRANSGLOBAL TAPES', 2.00, 19.00, NULL, 0, 38.00, 7.60, NULL, 0, 0, 0.00, 1, 1, 1, NULL, '2017-12-02 07:59:07', '2017-12-02 07:59:35'),
(24, 3, 18, 0, 'BOX FILES', 3.00, 30.00, NULL, 0, 90.00, 18.00, NULL, 0, 0, 0.00, 1, 1, 1, NULL, '2017-12-02 07:59:07', '2017-12-02 07:59:35'),
(25, 3, 33, 1, 'WHITE OUT', 3.00, 67.00, NULL, 0, 201.00, 40.20, NULL, 0, 0, 0.00, 1, 1, 1, NULL, '2017-12-02 07:59:07', '2017-12-02 07:59:35'),
(26, 3, 9, 0, 'EQUIPMENT HIREOUT BOOKS', 4.00, 84.00, NULL, 0, 336.00, 67.20, NULL, 0, 0, 0.00, 1, 1, 1, NULL, '2017-12-02 07:59:07', '2017-12-02 07:59:36'),
(27, 3, 50, 0, 'Hp321A', 1.00, 8.00, NULL, 0, 8.00, 1.60, NULL, 0, 0, 0.00, 1, 1, 1, NULL, '2017-12-02 07:59:07', '2017-12-02 07:59:36'),
(28, 3, 7, 1, 'IMPORTS STRONG ROOM RECORD BOOKS', 2.00, 93.00, NULL, 0, 186.00, 37.20, NULL, 0, 0, 0.00, 1, 1, 1, NULL, '2017-12-02 07:59:07', '2017-12-02 07:59:36'),
(29, 3, 46, 1, 'LEATHER GLOVES', 2.00, 39.00, NULL, 0, 78.00, 15.60, NULL, 0, 0, 0.00, 1, 1, 1, NULL, '2017-12-02 07:59:07', '2017-12-02 07:59:36'),
(30, 3, 31, 0, 'CALCULATOR', 4.00, 82.00, NULL, 0, 328.00, 65.60, NULL, 0, 0, 0.00, 1, 1, 1, NULL, '2017-12-02 07:59:08', '2017-12-02 07:59:36'),
(31, 4, 50, 0, 'Hp321A', 3.00, 59.00, NULL, 0, 177.00, 30.09, NULL, 0, 0, 0.00, 1, 1, 1, NULL, '2017-12-02 07:59:08', '2017-12-02 07:59:36'),
(32, 4, 5, 1, 'A5 SHORTHAND BOOKS', 5.00, 99.00, NULL, 0, 495.00, 84.15, NULL, 0, 0, 0.00, 1, 1, 1, NULL, '2017-12-02 07:59:08', '2017-12-02 07:59:36'),
(33, 4, 32, 1, 'SHARPENER', 3.00, 26.00, NULL, 0, 78.00, 13.26, NULL, 0, 0, 0.00, 1, 1, 1, NULL, '2017-12-02 07:59:08', '2017-12-02 07:59:36'),
(34, 4, 27, 1, 'SMALL PAPER PUNCH', 5.00, 67.00, NULL, 0, 335.00, 56.95, NULL, 0, 0, 0.00, 1, 1, 1, NULL, '2017-12-02 07:59:08', '2017-12-02 07:59:36'),
(35, 4, 42, 1, 'SECURITY DECLARATION BOOKS', 2.00, 79.00, NULL, 0, 158.00, 26.86, NULL, 0, 0, 0.00, 1, 1, 1, NULL, '2017-12-02 07:59:08', '2017-12-02 07:59:36'),
(36, 4, 17, 1, 'PAPER CLIPS  50MM', 2.00, 50.00, NULL, 0, 100.00, 17.00, NULL, 0, 0, 0.00, 1, 1, 1, NULL, '2017-12-02 07:59:09', '2017-12-02 07:59:36'),
(37, 4, 27, 1, 'SMALL PAPER PUNCH', 3.00, 6.00, NULL, 0, 18.00, 3.06, NULL, 0, 0, 0.00, 1, 1, 1, NULL, '2017-12-02 07:59:09', '2017-12-02 07:59:36'),
(38, 4, 41, 1, 'PROPERTY DECLARATION BOOKS', 1.00, 8.00, NULL, 0, 8.00, 1.36, NULL, 0, 0, 0.00, 1, 1, 1, NULL, '2017-12-02 07:59:09', '2017-12-02 07:59:36'),
(39, 4, 18, 0, 'BOX FILES', 2.00, 46.00, NULL, 0, 92.00, 15.64, NULL, 0, 0, 0.00, 1, 1, 1, NULL, '2017-12-02 07:59:09', '2017-12-02 07:59:37'),
(40, 4, 31, 0, 'CALCULATOR', 5.00, 39.00, NULL, 0, 195.00, 33.15, NULL, 0, 0, 0.00, 1, 1, 1, NULL, '2017-12-02 07:59:09', '2017-12-02 07:59:37'),
(41, 5, 33, 1, 'WHITE OUT', 1.00, 47.00, NULL, 0, 47.00, 8.93, NULL, 0, 0, 0.00, 1, 1, 1, NULL, '2017-12-02 07:59:10', '2017-12-02 07:59:37'),
(42, 5, 26, 0, 'STAPLE PINS REMOVER', 4.00, 13.00, NULL, 0, 52.00, 9.88, NULL, 0, 0, 0.00, 1, 1, 1, NULL, '2017-12-02 07:59:10', '2017-12-02 07:59:37'),
(43, 5, 39, 0, 'LETTER HEADS', 1.00, 11.00, NULL, 0, 11.00, 2.09, NULL, 0, 0, 0.00, 1, 1, 1, NULL, '2017-12-02 07:59:11', '2017-12-02 07:59:37'),
(44, 5, 22, 1, 'BIRO PENS RED', 5.00, 84.00, NULL, 0, 420.00, 79.80, NULL, 0, 0, 0.00, 1, 1, 1, NULL, '2017-12-02 07:59:11', '2017-12-02 07:59:37'),
(45, 5, 45, 1, 'RUBBER GLOVES', 1.00, 20.00, NULL, 0, 20.00, 3.80, NULL, 0, 0, 0.00, 1, 1, 1, NULL, '2017-12-02 07:59:11', '2017-12-02 07:59:37'),
(46, 5, 16, 1, 'PAPER CLIPS 33MM', 5.00, 52.00, NULL, 0, 260.00, 49.40, NULL, 0, 0, 0.00, 1, 1, 1, NULL, '2017-12-02 07:59:11', '2017-12-02 07:59:37'),
(47, 5, 10, 1, 'A3 KHAKI BROWN ENVELOPES ', 2.00, 7.00, NULL, 0, 14.00, 2.66, NULL, 0, 0, 0.00, 1, 1, 1, NULL, '2017-12-02 07:59:11', '2017-12-02 07:59:37'),
(48, 5, 3, 1, '2QUIRE COUNTER BOOKS', 5.00, 83.00, NULL, 0, 415.00, 78.85, NULL, 0, 0, 0.00, 1, 1, 1, NULL, '2017-12-02 07:59:11', '2017-12-02 07:59:37'),
(49, 5, 34, 1, 'Glue STICK', 3.00, 1.00, NULL, 0, 3.00, 0.57, NULL, 0, 0, 0.00, 1, 1, 1, NULL, '2017-12-02 07:59:12', '2017-12-02 07:59:38'),
(50, 5, 50, 0, 'Hp321A', 3.00, 9.00, NULL, 0, 27.00, 5.13, NULL, 0, 0, 0.00, 1, 1, 1, NULL, '2017-12-02 07:59:12', '2017-12-02 07:59:38'),
(51, 6, 45, 1, 'RUBBER GLOVES', 5.00, 34.00, NULL, 0, 170.00, 34.00, NULL, 0, 0, 0.00, 1, 1, 1, NULL, '2017-12-02 07:59:12', '2017-12-02 07:59:38'),
(52, 6, 4, 1, 'A4 WRITING PADS', 1.00, 92.00, NULL, 0, 92.00, 18.40, NULL, 0, 0, 0.00, 1, 1, 1, NULL, '2017-12-02 07:59:12', '2017-12-02 07:59:38'),
(53, 6, 21, 0, 'BIRO PENS BLACK', 2.00, 24.00, NULL, 0, 48.00, 9.60, NULL, 0, 0, 0.00, 1, 1, 1, NULL, '2017-12-02 07:59:12', '2017-12-02 07:59:38'),
(54, 6, 35, 1, 'HIGHLIGHTER', 1.00, 75.00, NULL, 0, 75.00, 15.00, NULL, 0, 0, 0.00, 1, 1, 1, NULL, '2017-12-02 07:59:12', '2017-12-02 07:59:38'),
(55, 6, 35, 1, 'HIGHLIGHTER', 3.00, 10.00, NULL, 0, 30.00, 6.00, NULL, 0, 0, 0.00, 1, 1, 1, NULL, '2017-12-02 07:59:12', '2017-12-02 07:59:38'),
(56, 6, 1, 0, '4QUIRE COUNTER BOOKS', 4.00, 10.00, NULL, 0, 40.00, 8.00, NULL, 0, 0, 0.00, 1, 1, 1, NULL, '2017-12-02 07:59:12', '2017-12-02 07:59:38'),
(57, 6, 8, 1, 'EXPORTS STRONG ROOM RECORD BOOKS', 3.00, 7.00, NULL, 0, 21.00, 4.20, NULL, 0, 0, 0.00, 1, 1, 1, NULL, '2017-12-02 07:59:12', '2017-12-02 07:59:38'),
(58, 6, 5, 1, 'A5 SHORTHAND BOOKS', 1.00, 100.00, NULL, 0, 100.00, 20.00, NULL, 0, 0, 0.00, 1, 1, 1, NULL, '2017-12-02 07:59:13', '2017-12-02 07:59:38'),
(59, 6, 48, 1, 'Staple Pins Big 66/14', 5.00, 60.00, NULL, 0, 300.00, 60.00, NULL, 0, 0, 0.00, 1, 1, 1, NULL, '2017-12-02 07:59:13', '2017-12-02 07:59:38'),
(60, 6, 13, 1, 'PRINTING PAPERS', 3.00, 76.00, NULL, 0, 228.00, 45.60, NULL, 0, 0, 0.00, 1, 1, 1, NULL, '2017-12-02 07:59:13', '2017-12-02 07:59:38'),
(61, 7, 6, 0, 'LETTER DELIVERY BOOKS', 4.00, 60.00, NULL, 0, 240.00, 43.20, NULL, 0, 0, 0.00, 1, 1, 1, NULL, '2017-12-02 07:59:13', '2017-12-02 07:59:38'),
(62, 7, 38, 0, 'ARRIVAL NOTIFICATION', 1.00, 5.00, NULL, 0, 5.00, 0.90, NULL, 0, 0, 0.00, 1, 1, 1, NULL, '2017-12-02 07:59:13', '2017-12-02 07:59:39'),
(63, 7, 13, 1, 'PRINTING PAPERS', 1.00, 90.00, NULL, 0, 90.00, 16.20, NULL, 0, 0, 0.00, 1, 1, 1, NULL, '2017-12-02 07:59:13', '2017-12-02 07:59:39'),
(64, 7, 27, 1, 'SMALL PAPER PUNCH', 5.00, 82.00, NULL, 0, 410.00, 73.80, NULL, 0, 0, 0.00, 1, 1, 1, NULL, '2017-12-02 07:59:14', '2017-12-02 07:59:39'),
(65, 7, 12, 1, 'A4 BRANDED ENVELOPES', 4.00, 27.00, NULL, 0, 108.00, 19.44, NULL, 0, 0, 0.00, 1, 1, 1, NULL, '2017-12-02 07:59:14', '2017-12-02 07:59:39'),
(66, 7, 19, 0, 'SPRING FILES', 4.00, 88.00, NULL, 0, 352.00, 63.36, NULL, 0, 0, 0.00, 1, 1, 1, NULL, '2017-12-02 07:59:14', '2017-12-02 07:59:39'),
(67, 7, 1, 0, '4QUIRE COUNTER BOOKS', 2.00, 80.00, NULL, 0, 160.00, 28.80, NULL, 0, 0, 0.00, 1, 1, 1, NULL, '2017-12-02 07:59:14', '2017-12-02 07:59:39'),
(68, 7, 9, 0, 'EQUIPMENT HIREOUT BOOKS', 3.00, 47.00, NULL, 0, 141.00, 25.38, NULL, 0, 0, 0.00, 1, 1, 1, NULL, '2017-12-02 07:59:14', '2017-12-02 07:59:40'),
(69, 7, 2, 0, '3QUIRE COUNTER BOOKS', 2.00, 86.00, NULL, 0, 172.00, 30.96, NULL, 0, 0, 0.00, 1, 1, 1, NULL, '2017-12-02 07:59:14', '2017-12-02 07:59:40'),
(70, 7, 31, 0, 'CALCULATOR', 5.00, 77.00, NULL, 0, 385.00, 69.30, NULL, 0, 0, 0.00, 1, 1, 1, NULL, '2017-12-02 07:59:14', '2017-12-02 07:59:40'),
(71, 8, 43, 0, 'Gate Pass', 5.00, 4.00, NULL, 0, 20.00, 3.40, NULL, 0, 0, 0.00, 1, 1, 1, NULL, '2017-12-02 07:59:14', '2017-12-02 07:59:40'),
(72, 8, 32, 1, 'SHARPENER', 4.00, 42.00, NULL, 0, 168.00, 28.56, NULL, 0, 0, 0.00, 1, 1, 1, NULL, '2017-12-02 07:59:15', '2017-12-02 07:59:40'),
(73, 8, 8, 1, 'EXPORTS STRONG ROOM RECORD BOOKS', 1.00, 8.00, NULL, 0, 8.00, 1.36, NULL, 0, 0, 0.00, 1, 1, 1, NULL, '2017-12-02 07:59:15', '2017-12-02 07:59:40'),
(74, 8, 29, 1, 'RUBBER BANDS', 4.00, 98.00, NULL, 0, 392.00, 66.64, NULL, 0, 0, 0.00, 1, 1, 1, NULL, '2017-12-02 07:59:15', '2017-12-02 07:59:40'),
(75, 8, 33, 1, 'WHITE OUT', 4.00, 20.00, NULL, 0, 80.00, 13.60, NULL, 0, 0, 0.00, 1, 1, 1, NULL, '2017-12-02 07:59:15', '2017-12-02 07:59:40'),
(76, 8, 19, 0, 'SPRING FILES', 5.00, 4.00, NULL, 0, 20.00, 3.40, NULL, 0, 0, 0.00, 1, 1, 1, NULL, '2017-12-02 07:59:15', '2017-12-02 07:59:41'),
(77, 8, 3, 1, '2QUIRE COUNTER BOOKS', 3.00, 20.00, NULL, 0, 60.00, 10.20, NULL, 0, 0, 0.00, 1, 1, 1, NULL, '2017-12-02 07:59:15', '2017-12-02 07:59:41'),
(78, 8, 49, 1, 'Hp320A', 4.00, 85.00, NULL, 0, 340.00, 57.80, NULL, 0, 0, 0.00, 1, 1, 1, NULL, '2017-12-02 07:59:16', '2017-12-02 07:59:41'),
(79, 8, 8, 1, 'EXPORTS STRONG ROOM RECORD BOOKS', 5.00, 81.00, NULL, 0, 405.00, 68.85, NULL, 0, 0, 0.00, 1, 1, 1, NULL, '2017-12-02 07:59:16', '2017-12-02 07:59:41'),
(80, 8, 34, 1, 'Glue STICK', 5.00, 36.00, NULL, 0, 180.00, 30.60, NULL, 0, 0, 0.00, 1, 1, 1, NULL, '2017-12-02 07:59:16', '2017-12-02 07:59:41'),
(81, 9, 13, 1, 'PRINTING PAPERS', 3.00, 30.00, NULL, 0, 90.00, 14.40, NULL, 0, 0, 0.00, 1, 1, 1, NULL, '2017-12-02 07:59:16', '2017-12-02 07:59:41'),
(82, 9, 34, 1, 'Glue STICK', 4.00, 38.00, NULL, 0, 152.00, 24.32, NULL, 0, 0, 0.00, 1, 1, 1, NULL, '2017-12-02 07:59:16', '2017-12-02 07:59:41'),
(83, 9, 44, 1, 'TRANSGLOBAL TAPES', 3.00, 97.00, NULL, 0, 291.00, 46.56, NULL, 0, 0, 0.00, 1, 1, 1, NULL, '2017-12-02 07:59:16', '2017-12-02 07:59:41'),
(84, 9, 1, 0, '4QUIRE COUNTER BOOKS', 1.00, 60.00, NULL, 0, 60.00, 9.60, NULL, 0, 0, 0.00, 1, 1, 1, NULL, '2017-12-02 07:59:16', '2017-12-02 07:59:41'),
(85, 9, 24, 0, 'SMALL STAPLER', 1.00, 70.00, NULL, 0, 70.00, 11.20, NULL, 0, 0, 0.00, 1, 1, 1, NULL, '2017-12-02 07:59:17', '2017-12-02 07:59:41'),
(86, 9, 48, 1, 'Staple Pins Big 66/14', 2.00, 35.00, NULL, 0, 70.00, 11.20, NULL, 0, 0, 0.00, 1, 1, 1, NULL, '2017-12-02 07:59:17', '2017-12-02 07:59:41'),
(87, 9, 24, 0, 'SMALL STAPLER', 5.00, 96.00, NULL, 0, 480.00, 76.80, NULL, 0, 0, 0.00, 1, 1, 1, NULL, '2017-12-02 07:59:17', '2017-12-02 07:59:41'),
(88, 9, 26, 0, 'STAPLE PINS REMOVER', 2.00, 57.00, NULL, 0, 114.00, 18.24, NULL, 0, 0, 0.00, 1, 1, 1, NULL, '2017-12-02 07:59:17', '2017-12-02 07:59:41'),
(89, 9, 27, 1, 'SMALL PAPER PUNCH', 4.00, 92.00, NULL, 0, 368.00, 58.88, NULL, 0, 0, 0.00, 1, 1, 1, NULL, '2017-12-02 07:59:17', '2017-12-02 07:59:41'),
(90, 9, 7, 1, 'IMPORTS STRONG ROOM RECORD BOOKS', 4.00, 74.00, NULL, 0, 296.00, 47.36, NULL, 0, 0, 0.00, 1, 1, 1, NULL, '2017-12-02 07:59:17', '2017-12-02 07:59:41'),
(91, 10, 39, 0, 'LETTER HEADS', 4.00, 39.00, NULL, 0, 156.00, 26.52, NULL, 0, 0, 0.00, 1, 1, 1, NULL, '2017-12-02 07:59:17', '2017-12-02 07:59:42'),
(92, 10, 2, 0, '3QUIRE COUNTER BOOKS', 2.00, 100.00, NULL, 0, 200.00, 34.00, NULL, 0, 0, 0.00, 1, 1, 1, NULL, '2017-12-02 07:59:17', '2017-12-02 07:59:42'),
(93, 10, 23, 1, 'PERMANENT MARKER PENS', 5.00, 80.00, NULL, 0, 400.00, 68.00, NULL, 0, 0, 0.00, 1, 1, 1, NULL, '2017-12-02 07:59:18', '2017-12-02 07:59:42'),
(94, 10, 30, 1, 'STAMP INK', 3.00, 43.00, NULL, 0, 129.00, 21.93, NULL, 0, 0, 0.00, 1, 1, 1, NULL, '2017-12-02 07:59:18', '2017-12-02 07:59:42'),
(95, 10, 38, 0, 'ARRIVAL NOTIFICATION', 1.00, 72.00, NULL, 0, 72.00, 12.24, NULL, 0, 0, 0.00, 1, 1, 1, NULL, '2017-12-02 07:59:18', '2017-12-02 07:59:42'),
(96, 10, 43, 0, 'Gate Pass', 3.00, 28.00, NULL, 0, 84.00, 14.28, NULL, 0, 0, 0.00, 1, 1, 1, NULL, '2017-12-02 07:59:18', '2017-12-02 07:59:42'),
(97, 10, 34, 1, 'Glue STICK', 3.00, 23.00, NULL, 0, 69.00, 11.73, NULL, 0, 0, 0.00, 1, 1, 1, NULL, '2017-12-02 07:59:18', '2017-12-02 07:59:42'),
(98, 10, 7, 1, 'IMPORTS STRONG ROOM RECORD BOOKS', 3.00, 83.00, NULL, 0, 249.00, 42.33, NULL, 0, 0, 0.00, 1, 1, 1, NULL, '2017-12-02 07:59:18', '2017-12-02 07:59:42'),
(99, 10, 33, 1, 'WHITE OUT', 1.00, 35.00, NULL, 0, 35.00, 5.95, NULL, 0, 0, 0.00, 1, 1, 1, NULL, '2017-12-02 07:59:18', '2017-12-02 07:59:42'),
(100, 10, 7, 1, 'IMPORTS STRONG ROOM RECORD BOOKS', 1.00, 100.00, NULL, 0, 100.00, 17.00, NULL, 0, 0, 0.00, 1, 1, 1, NULL, '2017-12-02 07:59:19', '2017-12-02 07:59:42'),
(101, 11, 23, 1, 'PERMANENT MARKER PENS', 1.00, 37.00, NULL, 0, 37.00, 7.40, NULL, 0, 0, 0.00, 1, 1, 1, NULL, '2017-12-02 07:59:19', '2017-12-02 07:59:43'),
(102, 11, 43, 0, 'Gate Pass', 3.00, 85.00, NULL, 0, 255.00, 51.00, NULL, 0, 0, 0.00, 1, 1, 1, NULL, '2017-12-02 07:59:19', '2017-12-02 07:59:43'),
(103, 11, 5, 1, 'A5 SHORTHAND BOOKS', 5.00, 83.00, NULL, 0, 415.00, 83.00, NULL, 0, 0, 0.00, 1, 1, 1, NULL, '2017-12-02 07:59:19', '2017-12-02 07:59:43'),
(104, 11, 20, 0, 'BIRO PENS BLUE', 5.00, 51.00, NULL, 0, 255.00, 51.00, NULL, 0, 0, 0.00, 1, 1, 1, NULL, '2017-12-02 07:59:19', '2017-12-02 07:59:43'),
(105, 11, 40, 1, 'ULD BOOKS', 1.00, 13.00, NULL, 0, 13.00, 2.60, NULL, 0, 0, 0.00, 1, 1, 1, NULL, '2017-12-02 07:59:19', '2017-12-02 07:59:43'),
(106, 11, 44, 1, 'TRANSGLOBAL TAPES', 1.00, 3.00, NULL, 0, 3.00, 0.60, NULL, 0, 0, 0.00, 1, 1, 1, NULL, '2017-12-02 07:59:19', '2017-12-02 07:59:43'),
(107, 11, 31, 0, 'CALCULATOR', 5.00, 33.00, NULL, 0, 165.00, 33.00, NULL, 0, 0, 0.00, 1, 1, 1, NULL, '2017-12-02 07:59:20', '2017-12-02 07:59:43'),
(108, 11, 13, 1, 'PRINTING PAPERS', 5.00, 27.00, NULL, 0, 135.00, 27.00, NULL, 0, 0, 0.00, 1, 1, 1, NULL, '2017-12-02 07:59:20', '2017-12-02 07:59:43'),
(109, 11, 34, 1, 'Glue STICK', 3.00, 33.00, NULL, 0, 99.00, 19.80, NULL, 0, 0, 0.00, 1, 1, 1, NULL, '2017-12-02 07:59:20', '2017-12-02 07:59:43'),
(110, 11, 47, 1, 'Ear Muffs', 3.00, 3.00, NULL, 0, 9.00, 1.80, NULL, 0, 0, 0.00, 1, 1, 1, NULL, '2017-12-02 07:59:20', '2017-12-02 07:59:43'),
(111, 12, 2, 0, '3QUIRE COUNTER BOOKS', 4.00, 65.00, NULL, 0, 260.00, 44.20, NULL, 0, 0, 0.00, 1, 1, 1, NULL, '2017-12-02 07:59:20', '2017-12-02 07:59:43'),
(112, 12, 49, 1, 'Hp320A', 1.00, 15.00, NULL, 0, 15.00, 2.55, NULL, 0, 0, 0.00, 1, 1, 1, NULL, '2017-12-02 07:59:20', '2017-12-02 07:59:43'),
(113, 12, 6, 0, 'LETTER DELIVERY BOOKS', 2.00, 77.00, NULL, 0, 154.00, 26.18, NULL, 0, 0, 0.00, 1, 1, 1, NULL, '2017-12-02 07:59:20', '2017-12-02 07:59:43'),
(114, 12, 45, 1, 'RUBBER GLOVES', 3.00, 76.00, NULL, 0, 228.00, 38.76, NULL, 0, 0, 0.00, 1, 1, 1, NULL, '2017-12-02 07:59:20', '2017-12-02 07:59:44'),
(115, 12, 41, 1, 'PROPERTY DECLARATION BOOKS', 3.00, 68.00, NULL, 0, 204.00, 34.68, NULL, 0, 0, 0.00, 1, 1, 1, NULL, '2017-12-02 07:59:21', '2017-12-02 07:59:44'),
(116, 12, 28, 1, 'PENCILS', 2.00, 34.00, NULL, 0, 68.00, 11.56, NULL, 0, 0, 0.00, 1, 1, 1, NULL, '2017-12-02 07:59:21', '2017-12-02 07:59:44'),
(117, 12, 41, 1, 'PROPERTY DECLARATION BOOKS', 4.00, 65.00, NULL, 0, 260.00, 44.20, NULL, 0, 0, 0.00, 1, 1, 1, NULL, '2017-12-02 07:59:21', '2017-12-02 07:59:44'),
(118, 12, 13, 1, 'PRINTING PAPERS', 4.00, 62.00, NULL, 0, 248.00, 42.16, NULL, 0, 0, 0.00, 1, 1, 1, NULL, '2017-12-02 07:59:21', '2017-12-02 07:59:44'),
(119, 12, 19, 0, 'SPRING FILES', 3.00, 60.00, NULL, 0, 180.00, 30.60, NULL, 0, 0, 0.00, 1, 1, 1, NULL, '2017-12-02 07:59:21', '2017-12-02 07:59:44'),
(120, 12, 23, 1, 'PERMANENT MARKER PENS', 4.00, 63.00, NULL, 0, 252.00, 42.84, NULL, 0, 0, 0.00, 1, 1, 1, NULL, '2017-12-02 07:59:21', '2017-12-02 07:59:44'),
(121, 13, 21, 0, 'BIRO PENS BLACK', 4.00, 46.00, NULL, 0, 184.00, 29.44, NULL, 0, 0, 0.00, 1, 1, 1, NULL, '2017-12-02 07:59:21', '2017-12-02 07:59:44'),
(122, 13, 16, 1, 'PAPER CLIPS 33MM', 2.00, 7.00, NULL, 0, 14.00, 2.24, NULL, 0, 0, 0.00, 1, 1, 1, NULL, '2017-12-02 07:59:21', '2017-12-02 07:59:44'),
(123, 13, 39, 0, 'LETTER HEADS', 2.00, 7.00, NULL, 0, 14.00, 2.24, NULL, 0, 0, 0.00, 1, 1, 1, NULL, '2017-12-02 07:59:21', '2017-12-02 07:59:44'),
(124, 13, 2, 0, '3QUIRE COUNTER BOOKS', 1.00, 52.00, NULL, 0, 52.00, 8.32, NULL, 0, 0, 0.00, 1, 1, 1, NULL, '2017-12-02 07:59:22', '2017-12-02 07:59:44'),
(125, 13, 34, 1, 'Glue STICK', 5.00, 69.00, NULL, 0, 345.00, 55.20, NULL, 0, 0, 0.00, 1, 1, 1, NULL, '2017-12-02 07:59:22', '2017-12-02 07:59:44'),
(126, 13, 29, 1, 'RUBBER BANDS', 3.00, 22.00, NULL, 0, 66.00, 10.56, NULL, 0, 0, 0.00, 1, 1, 1, NULL, '2017-12-02 07:59:22', '2017-12-02 07:59:44'),
(127, 13, 27, 1, 'SMALL PAPER PUNCH', 4.00, 85.00, NULL, 0, 340.00, 54.40, NULL, 0, 0, 0.00, 1, 1, 1, NULL, '2017-12-02 07:59:22', '2017-12-02 07:59:44'),
(128, 13, 38, 0, 'ARRIVAL NOTIFICATION', 4.00, 22.00, NULL, 0, 88.00, 14.08, NULL, 0, 0, 0.00, 1, 1, 1, NULL, '2017-12-02 07:59:22', '2017-12-02 07:59:44'),
(129, 13, 49, 1, 'Hp320A', 2.00, 1.00, NULL, 0, 2.00, 0.32, NULL, 0, 0, 0.00, 1, 1, 1, NULL, '2017-12-02 07:59:22', '2017-12-02 07:59:44'),
(130, 13, 45, 1, 'RUBBER GLOVES', 3.00, 20.00, NULL, 0, 60.00, 9.60, NULL, 0, 0, 0.00, 1, 1, 1, NULL, '2017-12-02 07:59:22', '2017-12-02 07:59:45'),
(131, 14, 45, 1, 'RUBBER GLOVES', 4.00, 98.00, NULL, 0, 392.00, 74.48, NULL, 0, 0, 0.00, 1, 1, 1, NULL, '2017-12-02 07:59:23', '2017-12-02 07:59:45'),
(132, 14, 28, 1, 'PENCILS', 5.00, 79.00, NULL, 0, 395.00, 75.05, NULL, 0, 0, 0.00, 1, 1, 1, NULL, '2017-12-02 07:59:23', '2017-12-02 07:59:45'),
(133, 14, 20, 0, 'BIRO PENS BLUE', 2.00, 7.00, NULL, 0, 14.00, 2.66, NULL, 0, 0, 0.00, 1, 1, 1, NULL, '2017-12-02 07:59:23', '2017-12-02 07:59:45'),
(134, 14, 16, 1, 'PAPER CLIPS 33MM', 2.00, 58.00, NULL, 0, 116.00, 22.04, NULL, 0, 0, 0.00, 1, 1, 1, NULL, '2017-12-02 07:59:23', '2017-12-02 07:59:45'),
(135, 14, 30, 1, 'STAMP INK', 4.00, 31.00, NULL, 0, 124.00, 23.56, NULL, 0, 0, 0.00, 1, 1, 1, NULL, '2017-12-02 07:59:23', '2017-12-02 07:59:45'),
(136, 14, 31, 0, 'CALCULATOR', 4.00, 17.00, NULL, 0, 68.00, 12.92, NULL, 0, 0, 0.00, 1, 1, 1, NULL, '2017-12-02 07:59:23', '2017-12-02 07:59:45'),
(137, 14, 5, 1, 'A5 SHORTHAND BOOKS', 4.00, 43.00, NULL, 0, 172.00, 32.68, NULL, 0, 0, 0.00, 1, 1, 1, NULL, '2017-12-02 07:59:23', '2017-12-02 07:59:45'),
(138, 14, 22, 1, 'BIRO PENS RED', 4.00, 30.00, NULL, 0, 120.00, 22.80, NULL, 0, 0, 0.00, 1, 1, 1, NULL, '2017-12-02 07:59:24', '2017-12-02 07:59:45'),
(139, 14, 14, 0, 'WHILE YOU WERE AWAY MESSAGE BOOKS', 2.00, 34.00, NULL, 0, 68.00, 12.92, NULL, 0, 0, 0.00, 1, 1, 1, NULL, '2017-12-02 07:59:24', '2017-12-02 07:59:45'),
(140, 14, 48, 1, 'Staple Pins Big 66/14', 5.00, 33.00, NULL, 0, 165.00, 31.35, NULL, 0, 0, 0.00, 1, 1, 1, NULL, '2017-12-02 07:59:24', '2017-12-02 07:59:45'),
(141, 15, 32, 1, 'SHARPENER', 3.00, 92.00, NULL, 0, 276.00, 44.16, NULL, 0, 0, 0.00, 1, 1, 1, NULL, '2017-12-02 07:59:24', '2017-12-02 07:59:45'),
(142, 15, 21, 0, 'BIRO PENS BLACK', 2.00, 71.00, NULL, 0, 142.00, 22.72, NULL, 0, 0, 0.00, 1, 1, 1, NULL, '2017-12-02 07:59:24', '2017-12-02 07:59:45'),
(143, 15, 24, 0, 'SMALL STAPLER', 5.00, 1.00, NULL, 0, 5.00, 0.80, NULL, 0, 0, 0.00, 1, 1, 1, NULL, '2017-12-02 07:59:25', '2017-12-02 07:59:45'),
(144, 15, 14, 0, 'WHILE YOU WERE AWAY MESSAGE BOOKS', 5.00, 97.00, NULL, 0, 485.00, 77.60, NULL, 0, 0, 0.00, 1, 1, 1, NULL, '2017-12-02 07:59:25', '2017-12-02 07:59:45'),
(145, 15, 16, 1, 'PAPER CLIPS 33MM', 2.00, 42.00, NULL, 0, 84.00, 13.44, NULL, 0, 0, 0.00, 1, 1, 1, NULL, '2017-12-02 07:59:25', '2017-12-02 07:59:46'),
(146, 15, 4, 1, 'A4 WRITING PADS', 4.00, 49.00, NULL, 0, 196.00, 31.36, NULL, 0, 0, 0.00, 1, 1, 1, NULL, '2017-12-02 07:59:25', '2017-12-02 07:59:46'),
(147, 15, 20, 0, 'BIRO PENS BLUE', 1.00, 13.00, NULL, 0, 13.00, 2.08, NULL, 0, 0, 0.00, 1, 1, 1, NULL, '2017-12-02 07:59:25', '2017-12-02 07:59:46'),
(148, 15, 38, 0, 'ARRIVAL NOTIFICATION', 2.00, 15.00, NULL, 0, 30.00, 4.80, NULL, 0, 0, 0.00, 1, 1, 1, NULL, '2017-12-02 07:59:25', '2017-12-02 07:59:46'),
(149, 15, 13, 1, 'PRINTING PAPERS', 1.00, 48.00, NULL, 0, 48.00, 7.68, NULL, 0, 0, 0.00, 1, 1, 1, NULL, '2017-12-02 07:59:25', '2017-12-02 07:59:46'),
(150, 15, 33, 1, 'WHITE OUT', 5.00, 31.00, NULL, 0, 155.00, 24.80, NULL, 0, 0, 0.00, 1, 1, 1, NULL, '2017-12-02 07:59:26', '2017-12-02 07:59:46'),
(151, 16, 15, 0, 'STICKY NOTES', 5.00, 99.00, NULL, 0, 495.00, 84.15, NULL, 0, 0, 0.00, 1, 1, 1, NULL, '2017-12-02 07:59:26', '2017-12-02 07:59:46'),
(152, 16, 35, 1, 'HIGHLIGHTER', 3.00, 65.00, NULL, 0, 195.00, 33.15, NULL, 0, 0, 0.00, 1, 1, 1, NULL, '2017-12-02 07:59:26', '2017-12-02 07:59:46'),
(153, 16, 17, 1, 'PAPER CLIPS  50MM', 2.00, 37.00, NULL, 0, 74.00, 12.58, NULL, 0, 0, 0.00, 1, 1, 1, NULL, '2017-12-02 07:59:26', '2017-12-02 07:59:46'),
(154, 16, 3, 1, '2QUIRE COUNTER BOOKS', 1.00, 65.00, NULL, 0, 65.00, 11.05, NULL, 0, 0, 0.00, 1, 1, 1, NULL, '2017-12-02 07:59:26', '2017-12-02 07:59:46'),
(155, 16, 5, 1, 'A5 SHORTHAND BOOKS', 5.00, 15.00, NULL, 0, 75.00, 12.75, NULL, 0, 0, 0.00, 1, 1, 1, NULL, '2017-12-02 07:59:27', '2017-12-02 07:59:46'),
(156, 16, 22, 1, 'BIRO PENS RED', 1.00, 55.00, NULL, 0, 55.00, 9.35, NULL, 0, 0, 0.00, 1, 1, 1, NULL, '2017-12-02 07:59:27', '2017-12-02 07:59:46'),
(157, 16, 50, 0, 'Hp321A', 3.00, 35.00, NULL, 0, 105.00, 17.85, NULL, 0, 0, 0.00, 1, 1, 1, NULL, '2017-12-02 07:59:27', '2017-12-02 07:59:47'),
(158, 16, 23, 1, 'PERMANENT MARKER PENS', 4.00, 99.00, NULL, 0, 396.00, 67.32, NULL, 0, 0, 0.00, 1, 1, 1, NULL, '2017-12-02 07:59:27', '2017-12-02 07:59:47'),
(159, 16, 37, 0, 'PLAIN NCR 4PART', 4.00, 94.00, NULL, 0, 376.00, 63.92, NULL, 0, 0, 0.00, 1, 1, 1, NULL, '2017-12-02 07:59:27', '2017-12-02 07:59:47'),
(160, 16, 26, 0, 'STAPLE PINS REMOVER', 3.00, 47.00, NULL, 0, 141.00, 23.97, NULL, 0, 0, 0.00, 1, 1, 1, NULL, '2017-12-02 07:59:27', '2017-12-02 07:59:47'),
(161, 17, 15, 0, 'STICKY NOTES', 5.00, 57.00, NULL, 0, 285.00, 57.00, NULL, 0, 0, 0.00, 1, 1, 1, NULL, '2017-12-02 07:59:28', '2017-12-02 07:59:47'),
(162, 17, 45, 1, 'RUBBER GLOVES', 2.00, 23.00, NULL, 0, 46.00, 9.20, NULL, 0, 0, 0.00, 1, 1, 1, NULL, '2017-12-02 07:59:28', '2017-12-02 07:59:47'),
(163, 17, 13, 1, 'PRINTING PAPERS', 4.00, 83.00, NULL, 0, 332.00, 66.40, NULL, 0, 0, 0.00, 1, 1, 1, NULL, '2017-12-02 07:59:28', '2017-12-02 07:59:47'),
(164, 17, 16, 1, 'PAPER CLIPS 33MM', 2.00, 85.00, NULL, 0, 170.00, 34.00, NULL, 0, 0, 0.00, 1, 1, 1, NULL, '2017-12-02 07:59:28', '2017-12-02 07:59:47'),
(165, 17, 47, 1, 'Ear Muffs', 3.00, 82.00, NULL, 0, 246.00, 49.20, NULL, 0, 0, 0.00, 1, 1, 1, NULL, '2017-12-02 07:59:28', '2017-12-02 07:59:47'),
(166, 17, 18, 0, 'BOX FILES', 1.00, 91.00, NULL, 0, 91.00, 18.20, NULL, 0, 0, 0.00, 1, 1, 1, NULL, '2017-12-02 07:59:29', '2017-12-02 07:59:47'),
(167, 17, 45, 1, 'RUBBER GLOVES', 1.00, 59.00, NULL, 0, 59.00, 11.80, NULL, 0, 0, 0.00, 1, 1, 1, NULL, '2017-12-02 07:59:29', '2017-12-02 07:59:47'),
(168, 17, 36, 1, 'DUST BINS', 1.00, 24.00, NULL, 0, 24.00, 4.80, NULL, 0, 0, 0.00, 1, 1, 1, NULL, '2017-12-02 07:59:29', '2017-12-02 07:59:47'),
(169, 17, 44, 1, 'TRANSGLOBAL TAPES', 1.00, 87.00, NULL, 0, 87.00, 17.40, NULL, 0, 0, 0.00, 1, 1, 1, NULL, '2017-12-02 07:59:29', '2017-12-02 07:59:47'),
(170, 17, 41, 1, 'PROPERTY DECLARATION BOOKS', 4.00, 84.00, NULL, 0, 336.00, 67.20, NULL, 0, 0, 0.00, 1, 1, 1, NULL, '2017-12-02 07:59:29', '2017-12-02 07:59:47'),
(171, 18, 36, 1, 'DUST BINS', 4.00, 87.00, NULL, 0, 348.00, 62.64, NULL, 0, 0, 0.00, 1, 1, 1, NULL, '2017-12-02 07:59:29', '2017-12-02 07:59:47'),
(172, 18, 9, 0, 'EQUIPMENT HIREOUT BOOKS', 3.00, 81.00, NULL, 0, 243.00, 43.74, NULL, 0, 0, 0.00, 1, 1, 1, NULL, '2017-12-02 07:59:29', '2017-12-02 07:59:47'),
(173, 18, 7, 1, 'IMPORTS STRONG ROOM RECORD BOOKS', 3.00, 52.00, NULL, 0, 156.00, 28.08, NULL, 0, 0, 0.00, 1, 1, 1, NULL, '2017-12-02 07:59:29', '2017-12-02 07:59:47'),
(174, 18, 23, 1, 'PERMANENT MARKER PENS', 1.00, 72.00, NULL, 0, 72.00, 12.96, NULL, 0, 0, 0.00, 1, 1, 1, NULL, '2017-12-02 07:59:30', '2017-12-02 07:59:48'),
(175, 18, 12, 1, 'A4 BRANDED ENVELOPES', 2.00, 74.00, NULL, 0, 148.00, 26.64, NULL, 0, 0, 0.00, 1, 1, 1, NULL, '2017-12-02 07:59:30', '2017-12-02 07:59:48'),
(176, 18, 10, 1, 'A3 KHAKI BROWN ENVELOPES ', 4.00, 82.00, NULL, 0, 328.00, 59.04, NULL, 0, 0, 0.00, 1, 1, 1, NULL, '2017-12-02 07:59:30', '2017-12-02 07:59:48'),
(177, 18, 20, 0, 'BIRO PENS BLUE', 5.00, 48.00, NULL, 0, 240.00, 43.20, NULL, 0, 0, 0.00, 1, 1, 1, NULL, '2017-12-02 07:59:30', '2017-12-02 07:59:48'),
(178, 18, 27, 1, 'SMALL PAPER PUNCH', 3.00, 82.00, NULL, 0, 246.00, 44.28, NULL, 0, 0, 0.00, 1, 1, 1, NULL, '2017-12-02 07:59:30', '2017-12-02 07:59:48'),
(179, 18, 37, 0, 'PLAIN NCR 4PART', 3.00, 65.00, NULL, 0, 195.00, 35.10, NULL, 0, 0, 0.00, 1, 1, 1, NULL, '2017-12-02 07:59:31', '2017-12-02 07:59:48'),
(180, 18, 14, 0, 'WHILE YOU WERE AWAY MESSAGE BOOKS', 5.00, 28.00, NULL, 0, 140.00, 25.20, NULL, 0, 0, 0.00, 1, 1, 1, NULL, '2017-12-02 07:59:31', '2017-12-02 07:59:48'),
(181, 19, 19, 0, 'SPRING FILES', 3.00, 58.00, NULL, 0, 174.00, 29.58, NULL, 0, 0, 0.00, 1, 1, 1, NULL, '2017-12-02 07:59:31', '2017-12-02 07:59:48'),
(182, 19, 46, 1, 'LEATHER GLOVES', 4.00, 44.00, NULL, 0, 176.00, 29.92, NULL, 0, 0, 0.00, 1, 1, 1, NULL, '2017-12-02 07:59:31', '2017-12-02 07:59:48'),
(183, 19, 34, 1, 'Glue STICK', 1.00, 11.00, NULL, 0, 11.00, 1.87, NULL, 0, 0, 0.00, 1, 1, 1, NULL, '2017-12-02 07:59:31', '2017-12-02 07:59:48'),
(184, 19, 7, 1, 'IMPORTS STRONG ROOM RECORD BOOKS', 4.00, 17.00, NULL, 0, 68.00, 11.56, NULL, 0, 0, 0.00, 1, 1, 1, NULL, '2017-12-02 07:59:31', '2017-12-02 07:59:48'),
(185, 19, 41, 1, 'PROPERTY DECLARATION BOOKS', 4.00, 49.00, NULL, 0, 196.00, 33.32, NULL, 0, 0, 0.00, 1, 1, 1, NULL, '2017-12-02 07:59:32', '2017-12-02 07:59:48'),
(186, 19, 36, 1, 'DUST BINS', 5.00, 100.00, NULL, 0, 500.00, 85.00, NULL, 0, 0, 0.00, 1, 1, 1, NULL, '2017-12-02 07:59:32', '2017-12-02 07:59:48'),
(187, 19, 7, 1, 'IMPORTS STRONG ROOM RECORD BOOKS', 5.00, 17.00, NULL, 0, 85.00, 14.45, NULL, 0, 0, 0.00, 1, 1, 1, NULL, '2017-12-02 07:59:32', '2017-12-02 07:59:48'),
(188, 19, 50, 0, 'Hp321A', 4.00, 46.00, NULL, 0, 184.00, 31.28, NULL, 0, 0, 0.00, 1, 1, 1, NULL, '2017-12-02 07:59:32', '2017-12-02 07:59:48'),
(189, 19, 15, 0, 'STICKY NOTES', 5.00, 86.00, NULL, 0, 430.00, 73.10, NULL, 0, 0, 0.00, 1, 1, 1, NULL, '2017-12-02 07:59:32', '2017-12-02 07:59:49'),
(190, 19, 42, 1, 'SECURITY DECLARATION BOOKS', 3.00, 73.00, NULL, 0, 219.00, 37.23, NULL, 0, 0, 0.00, 1, 1, 1, NULL, '2017-12-02 07:59:32', '2017-12-02 07:59:49'),
(191, 20, 32, 1, 'SHARPENER', 4.00, 11.00, NULL, 0, 44.00, 0.00, NULL, 0, 0, 0.00, 1, 1, 1, NULL, '2017-12-02 07:59:32', '2017-12-02 07:59:32'),
(192, 20, 1, 0, '4QUIRE COUNTER BOOKS', 2.00, 97.00, NULL, 0, 194.00, 0.00, NULL, 0, 0, 0.00, 1, 1, 1, NULL, '2017-12-02 07:59:32', '2017-12-02 07:59:32'),
(193, 20, 37, 0, 'PLAIN NCR 4PART', 3.00, 12.00, NULL, 0, 36.00, 0.00, NULL, 0, 0, 0.00, 1, 1, 1, NULL, '2017-12-02 07:59:33', '2017-12-02 07:59:33'),
(194, 20, 47, 1, 'Ear Muffs', 3.00, 54.00, NULL, 0, 162.00, 0.00, NULL, 0, 0, 0.00, 1, 1, 1, NULL, '2017-12-02 07:59:33', '2017-12-02 07:59:33'),
(195, 20, 12, 1, 'A4 BRANDED ENVELOPES', 1.00, 2.00, NULL, 0, 2.00, 0.00, NULL, 0, 0, 0.00, 1, 1, 1, NULL, '2017-12-02 07:59:33', '2017-12-02 07:59:33'),
(196, 20, 19, 0, 'SPRING FILES', 2.00, 37.00, NULL, 0, 74.00, 0.00, NULL, 0, 0, 0.00, 1, 1, 1, NULL, '2017-12-02 07:59:33', '2017-12-02 07:59:33'),
(197, 20, 35, 1, 'HIGHLIGHTER', 3.00, 85.00, NULL, 0, 255.00, 0.00, NULL, 0, 0, 0.00, 1, 1, 1, NULL, '2017-12-02 07:59:33', '2017-12-02 07:59:33'),
(198, 20, 4, 1, 'A4 WRITING PADS', 3.00, 11.00, NULL, 0, 33.00, 0.00, NULL, 0, 0, 0.00, 1, 1, 1, NULL, '2017-12-02 07:59:33', '2017-12-02 07:59:33'),
(199, 20, 20, 0, 'BIRO PENS BLUE', 1.00, 39.00, NULL, 0, 39.00, 0.00, NULL, 0, 0, 0.00, 1, 1, 1, NULL, '2017-12-02 07:59:33', '2017-12-02 07:59:33'),
(200, 20, 50, 0, 'Hp321A', 4.00, 88.00, NULL, 0, 352.00, 0.00, NULL, 0, 0, 0.00, 1, 1, 1, NULL, '2017-12-02 07:59:33', '2017-12-02 07:59:33');

-- --------------------------------------------------------

--
-- Table structure for table `receipts`
--

CREATE TABLE `receipts` (
  `id` int(10) UNSIGNED NOT NULL,
  `receiptNo` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `salesPersonId` int(11) NOT NULL,
  `salesPersonText` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `currencyTypeId` int(10) UNSIGNED DEFAULT NULL,
  `currencyTypeText` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `companyId` int(10) UNSIGNED NOT NULL,
  `updatedBy` int(10) UNSIGNED NOT NULL,
  `createdBy` int(10) UNSIGNED NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `receipt_items`
--

CREATE TABLE `receipt_items` (
  `id` int(10) UNSIGNED NOT NULL,
  `receiptId` int(10) UNSIGNED NOT NULL,
  `productId` int(10) UNSIGNED NOT NULL,
  `binLocation` int(10) UNSIGNED NOT NULL,
  `productDescription` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `quantity` double(15,2) NOT NULL,
  `returned` double(15,2) NOT NULL,
  `sellingPrice` double(15,2) NOT NULL,
  `convertedPrice` double(15,2) NOT NULL,
  `convertedRate` double(15,2) NOT NULL,
  `tax` double(15,2) NOT NULL,
  `taxRate` double(15,2) NOT NULL,
  `total` double(15,2) NOT NULL,
  `discount` double(15,2) NOT NULL,
  `taxable` tinyint(1) NOT NULL,
  `companyId` int(10) UNSIGNED NOT NULL,
  `updatedBy` int(10) UNSIGNED NOT NULL,
  `createdBy` int(10) UNSIGNED NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `restocks`
--

CREATE TABLE `restocks` (
  `id` int(10) UNSIGNED NOT NULL,
  `productID` int(11) NOT NULL,
  `productName` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `departmentUse` int(11) NOT NULL,
  `unitCost` double(15,2) NOT NULL DEFAULT '0.00',
  `itemCost` double(15,2) NOT NULL DEFAULT '0.00',
  `amount` double(15,2) NOT NULL,
  `invoice` longtext COLLATE utf8mb4_unicode_ci,
  `deliveryNote` longtext COLLATE utf8mb4_unicode_ci,
  `supplierID` int(11) DEFAULT NULL,
  `productLocationId` int(11) DEFAULT NULL,
  `lpoId` int(11) DEFAULT NULL,
  `isDamagedReturned` tinyint(1) NOT NULL DEFAULT '0',
  `defectiveRemark` text COLLATE utf8mb4_unicode_ci,
  `isMistakeRestock` tinyint(1) NOT NULL DEFAULT '0',
  `remarks` longtext COLLATE utf8mb4_unicode_ci,
  `restockDocs` longtext COLLATE utf8mb4_unicode_ci,
  `receivedBy` int(11) DEFAULT NULL,
  `defectRemark` longtext COLLATE utf8mb4_unicode_ci,
  `warehouseId` int(11) DEFAULT NULL,
  `binLocationId` int(11) DEFAULT NULL,
  `hash` text COLLATE utf8mb4_unicode_ci,
  `locationHash` text COLLATE utf8mb4_unicode_ci,
  `companyId` int(10) UNSIGNED NOT NULL,
  `updatedBy` int(10) UNSIGNED NOT NULL,
  `createdBy` int(10) UNSIGNED NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `restocks`
--

INSERT INTO `restocks` (`id`, `productID`, `productName`, `departmentUse`, `unitCost`, `itemCost`, `amount`, `invoice`, `deliveryNote`, `supplierID`, `productLocationId`, `lpoId`, `isDamagedReturned`, `defectiveRemark`, `isMistakeRestock`, `remarks`, `restockDocs`, `receivedBy`, `defectRemark`, `warehouseId`, `binLocationId`, `hash`, `locationHash`, `companyId`, `updatedBy`, `createdBy`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 60, '', 0, 93.50, 187.00, 2.00, NULL, NULL, 19, NULL, NULL, 0, NULL, 0, 'Laborum quam ut iusto.', NULL, 1, NULL, 1, 10, NULL, 'p8Yy0GLF5WrDn', 1, 0, 1, NULL, '2017-11-08 22:35:31', '2017-12-02 07:55:59'),
(2, 13, '', 0, 751.50, 1503.00, 2.00, NULL, NULL, 28, NULL, NULL, 0, NULL, 0, 'Et laudantium nisi est modi ut.', NULL, 1, NULL, 1, 14, NULL, '2kYMql1uAgr8x', 1, 0, 1, NULL, '2017-11-14 09:35:13', '2017-12-02 07:56:00'),
(3, 7, '', 0, 703.00, 1406.00, 2.00, NULL, NULL, 35, NULL, NULL, 0, NULL, 0, 'Et velit quidem qui debitis.', NULL, 1, NULL, 1, 6, NULL, 'BNQOzEGULEZpm', 1, 0, 1, NULL, '2017-11-25 22:51:56', '2017-12-02 07:56:00'),
(4, 21, '', 0, 61.00, 122.00, 2.00, NULL, NULL, 29, NULL, NULL, 0, NULL, 0, 'Voluptatum officiis et delectus aspernatur ducimus consequatur.', NULL, 1, NULL, NULL, NULL, NULL, NULL, 1, 0, 1, NULL, '2017-11-17 04:02:26', '2017-12-02 07:56:01'),
(5, 86, '', 0, 679.00, 679.00, 1.00, NULL, NULL, 22, NULL, NULL, 0, NULL, 0, 'Placeat sequi nisi ratione vitae cum consequuntur.', NULL, 1, NULL, 1, 17, NULL, 'WLrK4P8ul2K4', 1, 0, 1, NULL, '2017-11-04 12:42:46', '2017-12-02 07:56:01'),
(6, 58, '', 0, 571.00, 571.00, 1.00, NULL, NULL, 20, NULL, NULL, 0, NULL, 0, 'Fuga omnis dolore voluptatem voluptatum optio saepe.', NULL, 1, NULL, 1, 8, NULL, 'lYWBjr6h4LYQn', 1, 0, 1, NULL, '2017-11-03 01:53:18', '2017-12-02 07:56:02'),
(7, 40, '', 0, 992.00, 992.00, 1.00, NULL, NULL, 25, NULL, NULL, 0, NULL, 0, 'Similique soluta ipsam pariatur.', NULL, 1, NULL, 1, 10, NULL, 'MwLDJqXfDB7Ej', 1, 0, 1, NULL, '2017-11-06 03:51:45', '2017-12-02 07:56:03'),
(8, 51, '', 0, 469.00, 469.00, 1.00, NULL, NULL, 3, NULL, NULL, 0, NULL, 0, 'Qui et optio voluptatem.', NULL, 1, NULL, 1, 16, NULL, 'Q1Llqpwu7R4D9', 1, 0, 1, NULL, '2017-11-13 08:41:40', '2017-12-02 07:56:03'),
(9, 2, '', 0, 588.00, 1176.00, 2.00, NULL, NULL, 36, NULL, NULL, 0, NULL, 0, 'Et velit rerum esse ipsam.', NULL, 1, NULL, NULL, NULL, NULL, NULL, 1, 0, 1, NULL, '2017-11-19 20:55:28', '2017-12-02 07:56:03'),
(10, 28, '', 0, 855.00, 1710.00, 2.00, NULL, NULL, 1, NULL, NULL, 0, NULL, 0, 'Itaque temporibus doloremque dignissimos.', NULL, 1, NULL, 1, 1, NULL, 'R6vwkMpFrpPP9', 1, 0, 1, NULL, '2017-11-20 22:59:38', '2017-12-02 07:56:04'),
(11, 58, '', 0, 372.00, 744.00, 2.00, NULL, NULL, 22, NULL, NULL, 0, NULL, 0, 'Quam exercitationem sed sed ipsa rerum.', NULL, 1, NULL, 1, 9, NULL, 'wj904j1SWxgz5', 1, 0, 1, NULL, '2017-11-16 06:37:26', '2017-12-02 07:56:05'),
(12, 23, '', 0, 796.50, 1593.00, 2.00, NULL, NULL, 23, NULL, NULL, 0, NULL, 0, 'Et voluptatem quidem ea modi earum ipsa.', NULL, 1, NULL, 1, 19, NULL, 'Z4qRvpqHRMrXA', 1, 0, 1, NULL, '2017-11-09 22:32:28', '2017-12-02 07:56:07'),
(13, 62, '', 0, 802.00, 1604.00, 2.00, NULL, NULL, 24, NULL, NULL, 0, NULL, 0, 'Porro quae velit distinctio nesciunt.', NULL, 1, NULL, 1, 10, NULL, 'ER2NM2PFpJ5x6', 1, 0, 1, NULL, '2017-11-14 13:02:07', '2017-12-02 07:56:08'),
(14, 16, '', 0, 1246.00, 1246.00, 1.00, NULL, NULL, 6, NULL, NULL, 0, NULL, 0, 'Cupiditate culpa vel repellendus quidem.', NULL, 1, NULL, 1, 4, NULL, 'jZlD9jOiwYXgQ', 1, 0, 1, NULL, '2017-12-01 03:15:26', '2017-12-02 07:56:08'),
(15, 94, '', 0, 514.00, 514.00, 1.00, NULL, NULL, 18, NULL, NULL, 0, NULL, 0, 'Dignissimos placeat consequuntur voluptatem voluptas sed libero.', NULL, 1, NULL, NULL, NULL, NULL, NULL, 1, 0, 1, NULL, '2017-11-09 13:08:10', '2017-12-02 07:56:09'),
(16, 75, '', 0, 1304.00, 1304.00, 1.00, NULL, NULL, 19, NULL, NULL, 0, NULL, 0, 'Sunt quasi saepe dolorem.', NULL, 1, NULL, 1, 2, NULL, 'GZ7xM6zinGNyQ', 1, 0, 1, NULL, '2017-11-18 13:26:38', '2017-12-02 07:56:12'),
(17, 96, '', 0, 126.50, 253.00, 2.00, NULL, NULL, 2, NULL, NULL, 0, NULL, 0, 'Voluptas est sed provident sunt ipsa sint doloremque.', NULL, 1, NULL, NULL, NULL, NULL, NULL, 1, 0, 1, NULL, '2017-11-05 10:09:24', '2017-12-02 07:56:13'),
(18, 24, '', 0, 904.00, 904.00, 1.00, NULL, NULL, 29, NULL, NULL, 0, NULL, 0, 'Rerum temporibus sunt harum hic quas repudiandae.', NULL, 1, NULL, NULL, NULL, NULL, NULL, 1, 0, 1, NULL, '2017-11-14 03:29:10', '2017-12-02 07:56:13'),
(19, 69, '', 0, 749.00, 1498.00, 2.00, NULL, NULL, 34, NULL, NULL, 0, NULL, 0, 'Qui reiciendis est molestiae.', NULL, 1, NULL, NULL, NULL, NULL, NULL, 1, 0, 1, NULL, '2017-11-29 02:49:44', '2017-12-02 07:56:14'),
(20, 47, '', 0, 1643.00, 1643.00, 1.00, NULL, NULL, 28, NULL, NULL, 0, NULL, 0, 'Officia aperiam rerum et.', NULL, 1, NULL, 1, 3, NULL, 'BNPvqNZTl0RQ9', 1, 0, 1, NULL, '2017-11-08 07:49:09', '2017-12-02 07:56:15'),
(21, 85, '', 0, 969.00, 969.00, 1.00, NULL, NULL, 39, NULL, NULL, 0, NULL, 0, 'Est accusamus officia delectus omnis nobis quos.', NULL, 1, NULL, NULL, NULL, NULL, NULL, 1, 0, 1, NULL, '2017-11-11 17:07:06', '2017-12-02 07:56:15'),
(22, 51, '', 0, 663.00, 663.00, 1.00, NULL, NULL, 33, NULL, NULL, 0, NULL, 0, 'Praesentium nihil sed et placeat magnam mollitia.', NULL, 1, NULL, 1, 10, NULL, 'GvJwY9XF1O8PyP', 1, 0, 1, NULL, '2017-11-27 13:39:57', '2017-12-02 07:56:16'),
(23, 72, '', 0, 646.50, 1293.00, 2.00, NULL, NULL, 20, NULL, NULL, 0, NULL, 0, 'Deleniti ad consequatur eaque unde.', NULL, 1, NULL, 1, 15, NULL, '91z29KEhjXW2O', 1, 0, 1, NULL, '2017-11-14 09:59:07', '2017-12-02 07:56:17'),
(24, 103, '', 0, 1025.00, 1025.00, 1.00, NULL, NULL, 21, NULL, NULL, 0, NULL, 0, 'Dolore porro laborum repellat.', NULL, 1, NULL, 1, 13, NULL, '2RjBGApFX009P', 1, 0, 1, NULL, '2017-11-16 10:37:52', '2017-12-02 07:56:17'),
(25, 28, '', 0, 600.00, 1200.00, 2.00, NULL, NULL, 22, NULL, NULL, 0, NULL, 0, 'Eum eos voluptatem amet voluptates.', NULL, 1, NULL, 1, 9, NULL, 'D1mmBmZTO2vRp', 1, 0, 1, NULL, '2017-11-26 10:39:12', '2017-12-02 07:56:18'),
(26, 68, '', 0, 321.50, 643.00, 2.00, NULL, NULL, 16, NULL, NULL, 0, NULL, 0, 'Mollitia recusandae expedita velit laborum a in.', NULL, 1, NULL, 1, 3, NULL, 'zmJOEB7H8M4KP', 1, 0, 1, NULL, '2017-11-09 12:24:41', '2017-12-02 07:56:19'),
(27, 102, '', 0, 1426.00, 1426.00, 1.00, NULL, NULL, 9, NULL, NULL, 0, NULL, 0, 'Officia fugit sunt omnis incidunt voluptatem sint nemo.', NULL, 1, NULL, 1, 6, NULL, 'W7mpNJrUAM9Qr', 1, 0, 1, NULL, '2017-11-24 17:38:52', '2017-12-02 07:56:20'),
(28, 28, '', 0, 820.50, 1641.00, 2.00, NULL, NULL, 3, NULL, NULL, 0, NULL, 0, 'Dolores necessitatibus quam pariatur.', NULL, 1, NULL, 1, 2, NULL, '0VxRVgYhQW5B', 1, 0, 1, NULL, '2017-11-21 23:17:22', '2017-12-02 07:56:21'),
(29, 28, '', 0, 617.00, 1234.00, 2.00, NULL, NULL, 15, NULL, NULL, 0, NULL, 0, 'Error eos magnam impedit dolor recusandae.', NULL, 1, NULL, 1, 7, NULL, 'LgGPnjwTRRRMOG', 1, 0, 1, NULL, '2017-11-03 16:25:26', '2017-12-02 07:56:21'),
(30, 91, '', 0, 359.00, 359.00, 1.00, NULL, NULL, 40, NULL, NULL, 0, NULL, 0, 'Temporibus quasi error autem.', NULL, 1, NULL, NULL, NULL, NULL, NULL, 1, 0, 1, NULL, '2017-11-17 19:55:37', '2017-12-02 07:56:22'),
(31, 59, '', 0, 1252.00, 1252.00, 1.00, NULL, NULL, 8, NULL, NULL, 0, NULL, 0, 'Sed excepturi excepturi non atque.', NULL, 1, NULL, 1, 16, NULL, '4RBw3qphyENxw', 1, 0, 1, NULL, '2017-11-26 04:07:40', '2017-12-02 07:56:23'),
(32, 100, '', 0, 1645.00, 1645.00, 1.00, NULL, NULL, 8, NULL, NULL, 0, NULL, 0, 'Necessitatibus quia ut est.', NULL, 1, NULL, 1, 1, NULL, 'r82yyLNt8n1NpL', 1, 0, 1, NULL, '2017-11-18 00:04:19', '2017-12-02 07:56:23'),
(33, 97, '', 0, 1701.00, 1701.00, 1.00, NULL, NULL, 17, NULL, NULL, 0, NULL, 0, 'Ab maxime dicta et esse.', NULL, 1, NULL, NULL, NULL, NULL, NULL, 1, 0, 1, NULL, '2017-11-09 21:24:17', '2017-12-02 07:56:24'),
(34, 96, '', 0, 293.00, 293.00, 1.00, NULL, NULL, 39, NULL, NULL, 0, NULL, 0, 'Neque quis qui placeat aliquam.', NULL, 1, NULL, NULL, NULL, NULL, NULL, 1, 0, 1, NULL, '2017-11-02 09:40:27', '2017-12-02 07:56:24'),
(35, 64, '', 0, 1069.00, 1069.00, 1.00, NULL, NULL, 22, NULL, NULL, 0, NULL, 0, 'At atque officiis recusandae tenetur rerum.', NULL, 1, NULL, 1, 12, NULL, '68Lpo74crG3D2k', 1, 0, 1, NULL, '2017-11-06 08:48:59', '2017-12-02 07:56:24'),
(36, 50, '', 0, 244.00, 244.00, 1.00, NULL, NULL, 28, NULL, NULL, 0, NULL, 0, 'Vero expedita aut quia pariatur maiores.', NULL, 1, NULL, NULL, NULL, NULL, NULL, 1, 0, 1, NULL, '2017-11-18 17:08:33', '2017-12-02 07:56:25'),
(37, 87, '', 0, 835.50, 1671.00, 2.00, NULL, NULL, 7, NULL, NULL, 0, NULL, 0, 'Accusamus maiores blanditiis aut omnis ad similique.', NULL, 1, NULL, 1, 20, NULL, 'rRZQEKjckk7X0', 1, 0, 1, NULL, '2017-11-26 19:22:53', '2017-12-02 07:56:25'),
(38, 65, '', 0, 629.00, 1258.00, 2.00, NULL, NULL, 8, NULL, NULL, 0, NULL, 0, 'Maxime dolores eius magnam aut.', NULL, 1, NULL, 1, 1, NULL, '9Q24nOqI65VPN', 1, 0, 1, NULL, '2017-12-01 20:03:22', '2017-12-02 07:56:26'),
(39, 10, '', 0, 1759.00, 1759.00, 1.00, NULL, NULL, 12, NULL, NULL, 0, NULL, 0, 'Vel laborum asperiores aut.', NULL, 1, NULL, 1, 8, NULL, '4RQqK6Yi0kGmv', 1, 0, 1, NULL, '2017-11-20 13:22:45', '2017-12-02 07:56:27'),
(40, 78, '', 0, 1449.00, 1449.00, 1.00, NULL, NULL, 36, NULL, NULL, 0, NULL, 0, 'Aut nulla ullam enim est.', NULL, 1, NULL, 1, 5, NULL, 'mQ18Qm7T0nVJE', 1, 0, 1, NULL, '2017-11-18 19:15:50', '2017-12-02 07:56:28'),
(41, 79, '', 0, 855.50, 1711.00, 2.00, NULL, NULL, 13, NULL, NULL, 0, NULL, 0, 'Aut placeat ea sapiente.', NULL, 1, NULL, 1, 1, NULL, 'pQng79vHWKqw3', 1, 0, 1, NULL, '2017-11-02 17:56:36', '2017-12-02 07:56:28'),
(42, 67, '', 0, 824.00, 1648.00, 2.00, NULL, NULL, 35, NULL, NULL, 0, NULL, 0, 'Rerum consectetur magni culpa assumenda.', NULL, 1, NULL, 1, 6, NULL, '5yAkjO8UPE60v', 1, 0, 1, NULL, '2017-11-14 20:56:57', '2017-12-02 07:56:30'),
(43, 99, '', 0, 937.00, 1874.00, 2.00, NULL, NULL, 28, NULL, NULL, 0, NULL, 0, 'Eaque eum et modi quia ducimus assumenda.', NULL, 1, NULL, NULL, NULL, NULL, NULL, 1, 0, 1, NULL, '2017-11-10 23:00:15', '2017-12-02 07:56:30'),
(44, 95, '', 0, 68.50, 137.00, 2.00, NULL, NULL, 37, NULL, NULL, 0, NULL, 0, 'Distinctio repellendus accusantium laborum facere.', NULL, 1, NULL, 1, 16, NULL, 'lO7jgZBIP0Qw1', 1, 0, 1, NULL, '2017-11-03 19:57:56', '2017-12-02 07:56:31'),
(45, 68, '', 0, 607.50, 1215.00, 2.00, NULL, NULL, 16, NULL, NULL, 0, NULL, 0, 'Omnis enim odit nesciunt ab.', NULL, 1, NULL, 1, 16, NULL, 'G6NGmOjUmVw3r', 1, 0, 1, NULL, '2017-11-11 19:20:52', '2017-12-02 07:56:33'),
(46, 100, '', 0, 1513.00, 1513.00, 1.00, NULL, NULL, 17, NULL, NULL, 0, NULL, 0, 'Et placeat cupiditate voluptatem.', NULL, 1, NULL, 1, 9, NULL, 'zKJMv3juZ3wDx', 1, 0, 1, NULL, '2017-11-18 00:52:05', '2017-12-02 07:56:33'),
(47, 83, '', 0, 938.00, 1876.00, 2.00, NULL, NULL, 12, NULL, NULL, 0, NULL, 0, 'Harum libero impedit vitae architecto doloremque aut.', NULL, 1, NULL, NULL, NULL, NULL, NULL, 1, 0, 1, NULL, '2017-11-26 14:13:07', '2017-12-02 07:56:34'),
(48, 37, '', 0, 1674.00, 1674.00, 1.00, NULL, NULL, 8, NULL, NULL, 0, NULL, 0, 'Beatae qui voluptatum et amet numquam ea.', NULL, 1, NULL, NULL, NULL, NULL, NULL, 1, 0, 1, NULL, '2017-11-17 13:16:13', '2017-12-02 07:56:34'),
(49, 106, '', 0, 1057.00, 1057.00, 1.00, NULL, NULL, 25, NULL, NULL, 0, NULL, 0, 'Non eveniet sint tenetur aliquid.', NULL, 1, NULL, 1, 5, NULL, 'BNqOPGziyZv2X', 1, 0, 1, NULL, '2017-11-15 15:00:55', '2017-12-02 07:56:35'),
(50, 107, '', 0, 838.50, 1677.00, 2.00, NULL, NULL, 28, NULL, NULL, 0, NULL, 0, 'Ea ullam vel perferendis corporis atque eius.', NULL, 1, NULL, NULL, NULL, NULL, NULL, 1, 0, 1, NULL, '2017-11-10 08:03:45', '2017-12-02 07:56:35');

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(40) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `description`, `created_at`, `updated_at`) VALUES
(1, 'Root', 'Use this account with extreme caution. When using this account it is possible to cause irreversible damage to the system.', '2017-12-02 07:58:34', '2017-12-02 07:58:34'),
(2, 'Administrator', 'Full access to create, edit, Delete Stock Items, Users and Departments', '2017-12-02 07:58:34', '2017-12-02 07:58:34'),
(3, 'Dispatcher', 'Ability to Dispach and Restock Items can also delete Dispatches and Restocks but not users and departments', '2017-12-02 07:58:34', '2017-12-02 07:58:34'),
(4, 'Requisitor', 'Can Raise requisitions and restock their purchase orders', '2017-12-02 07:58:34', '2017-12-02 07:58:34'),
(5, 'Purchaser', 'Responsible for procurement', '2017-12-02 07:58:34', '2017-12-02 07:58:34'),
(6, 'Office', 'Responsible for Office Dispatches', '2017-12-02 07:58:35', '2017-12-02 07:58:35'),
(7, 'Warehouse', 'Responsible for Warehouse Managment', '2017-12-02 07:58:35', '2017-12-02 07:58:35'),
(8, 'DeliveryManager', 'Responsible for Delivery Managment', '2017-12-02 07:58:35', '2017-12-02 07:58:35');

-- --------------------------------------------------------

--
-- Table structure for table `sales_orders`
--

CREATE TABLE `sales_orders` (
  `id` int(10) UNSIGNED NOT NULL,
  `orderNo` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `customerId` int(10) UNSIGNED DEFAULT NULL,
  `contactId` int(10) UNSIGNED DEFAULT NULL,
  `customerText` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `onHold` tinyint(1) DEFAULT NULL,
  `salesPersonId` int(10) UNSIGNED DEFAULT NULL,
  `salesPersonText` text COLLATE utf8mb4_unicode_ci,
  `currencyTypeId` int(10) UNSIGNED DEFAULT NULL,
  `currencyTypeText` text COLLATE utf8mb4_unicode_ci,
  `paymentMethod` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `paymentTerms` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `subscriptionId` int(10) UNSIGNED DEFAULT NULL,
  `shippingZone` int(10) UNSIGNED DEFAULT NULL,
  `delivery` tinyint(1) NOT NULL DEFAULT '0',
  `approved` tinyint(1) NOT NULL DEFAULT '0',
  `onDelivery` tinyint(1) NOT NULL DEFAULT '0',
  `invoiced` tinyint(1) NOT NULL DEFAULT '0',
  `delivered` tinyint(1) NOT NULL DEFAULT '0',
  `remarks` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `companyId` int(10) UNSIGNED NOT NULL,
  `updatedBy` int(10) UNSIGNED NOT NULL,
  `createdBy` int(10) UNSIGNED NOT NULL,
  `hash` text COLLATE utf8mb4_unicode_ci,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sales_orders`
--

INSERT INTO `sales_orders` (`id`, `orderNo`, `customerId`, `contactId`, `customerText`, `onHold`, `salesPersonId`, `salesPersonText`, `currencyTypeId`, `currencyTypeText`, `paymentMethod`, `paymentTerms`, `subscriptionId`, `shippingZone`, `delivery`, `approved`, `onDelivery`, `invoiced`, `delivered`, `remarks`, `companyId`, `updatedBy`, `createdBy`, `hash`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 'QT-791', 2, 3, 'Heathcote-Smith', 0, 1, 'Dennis Wanyoike', 18, 'BDT', 'Cash', '30 Days After Delivery', NULL, NULL, 0, 0, 0, 0, 0, NULL, 1, 0, 1, NULL, NULL, '2017-12-02 08:00:04', '2017-12-02 08:00:04'),
(2, 'QT-226', 10, 74, 'Roob-Effertz', 0, 1, 'Dennis Wanyoike', 8, 'XCD', 'Cash', '30 Days After Delivery', NULL, NULL, 0, 0, 0, 0, 0, NULL, 1, 0, 1, NULL, NULL, '2017-12-02 08:00:04', '2017-12-02 08:00:04'),
(3, 'QT-561', 7, 44, 'Graham-Bednar', 1, 1, 'Dennis Wanyoike', 2, 'ALL', 'Cash', '30 Days After Delivery', NULL, NULL, 0, 0, 0, 0, 0, NULL, 1, 0, 1, NULL, NULL, '2017-12-02 08:00:04', '2017-12-02 08:00:04'),
(4, 'QT-756', 2, 3, 'Heathcote-Smith', 0, 1, 'Dennis Wanyoike', 20, 'BYR', 'Cash', '30 Days After Delivery', NULL, NULL, 0, 0, 0, 0, 0, NULL, 1, 0, 1, NULL, NULL, '2017-12-02 08:00:05', '2017-12-02 08:00:05'),
(5, 'QT-679', 5, 24, 'Connelly, Nienow and Herzog', 1, 1, 'Dennis Wanyoike', 4, 'USD', 'Cash', '30 Days After Delivery', NULL, NULL, 0, 0, 0, 0, 0, NULL, 1, 0, 1, NULL, NULL, '2017-12-02 08:00:05', '2017-12-02 08:00:05'),
(6, 'QT-089', 9, 64, 'Kris-Dicki', 1, 1, 'Dennis Wanyoike', 7, 'XCD', 'Cash', '30 Days After Delivery', NULL, NULL, 0, 0, 0, 0, 0, NULL, 1, 0, 1, NULL, NULL, '2017-12-02 08:00:05', '2017-12-02 08:00:05'),
(7, 'QT-208', 6, 34, 'Renner, Littel and Waters', 0, 1, 'Dennis Wanyoike', 19, 'BBD', 'Cash', '30 Days After Delivery', NULL, NULL, 0, 0, 0, 0, 0, NULL, 1, 0, 1, NULL, NULL, '2017-12-02 08:00:05', '2017-12-02 08:00:05'),
(8, 'QT-293', 8, 54, 'Lakin-Nitzsche', 0, 1, 'Dennis Wanyoike', 3, 'DZD', 'Cash', '30 Days After Delivery', NULL, NULL, 0, 0, 0, 0, 0, NULL, 1, 0, 1, NULL, NULL, '2017-12-02 08:00:05', '2017-12-02 08:00:05'),
(9, 'QT-174', 3, 4, 'Metz-Johnson', 1, 1, 'Dennis Wanyoike', 19, 'BBD', 'Cash', '30 Days After Delivery', NULL, NULL, 0, 0, 0, 0, 0, NULL, 1, 0, 1, NULL, NULL, '2017-12-02 08:00:05', '2017-12-02 08:00:05'),
(10, 'QT-324', 1, 1, 'Gibson-Spinka', 0, 1, 'Dennis Wanyoike', 4, 'USD', 'Cash', '30 Days After Delivery', NULL, NULL, 0, 0, 0, 0, 0, NULL, 1, 0, 1, NULL, NULL, '2017-12-02 08:00:05', '2017-12-02 08:00:05'),
(11, 'QT-718', 8, 54, 'Lakin-Nitzsche', 0, 1, 'Dennis Wanyoike', 5, 'EUR', 'Cash', '30 Days After Delivery', NULL, NULL, 0, 0, 0, 0, 0, NULL, 1, 0, 1, NULL, NULL, '2017-12-02 08:00:05', '2017-12-02 08:00:05'),
(12, 'QT-484', 7, 44, 'Graham-Bednar', 1, 1, 'Dennis Wanyoike', 9, 'XCD', 'Cash', '30 Days After Delivery', NULL, NULL, 0, 0, 0, 0, 0, NULL, 1, 0, 1, NULL, NULL, '2017-12-02 08:00:05', '2017-12-02 08:00:05'),
(13, 'QT-925', 1, 1, 'Gibson-Spinka', 0, 1, 'Dennis Wanyoike', 14, 'EUR', 'Cash', '30 Days After Delivery', NULL, NULL, 0, 0, 0, 0, 0, NULL, 1, 0, 1, NULL, NULL, '2017-12-02 08:00:05', '2017-12-02 08:00:05'),
(14, 'QT-743', 8, 54, 'Lakin-Nitzsche', 0, 1, 'Dennis Wanyoike', 6, 'AOA', 'Cash', '30 Days After Delivery', NULL, NULL, 0, 0, 0, 0, 0, NULL, 1, 0, 1, NULL, NULL, '2017-12-02 08:00:05', '2017-12-02 08:00:05'),
(15, 'QT-545', 9, 64, 'Kris-Dicki', 0, 1, 'Dennis Wanyoike', 11, 'AMD', 'Cash', '30 Days After Delivery', NULL, NULL, 0, 0, 0, 0, 0, NULL, 1, 0, 1, NULL, NULL, '2017-12-02 08:00:05', '2017-12-02 08:00:05'),
(16, 'QT-568', 3, 4, 'Metz-Johnson', 0, 1, 'Dennis Wanyoike', 20, 'BYR', 'Cash', '30 Days After Delivery', NULL, NULL, 0, 0, 0, 0, 0, NULL, 1, 0, 1, NULL, NULL, '2017-12-02 08:00:05', '2017-12-02 08:00:05'),
(17, 'QT-859', 4, 14, 'Robel-Kuphal', 0, 1, 'Dennis Wanyoike', 5, 'EUR', 'Cash', '30 Days After Delivery', NULL, NULL, 0, 0, 0, 0, 0, NULL, 1, 0, 1, NULL, NULL, '2017-12-02 08:00:05', '2017-12-02 08:00:05'),
(18, 'QT-921', 7, 44, 'Graham-Bednar', 0, 1, 'Dennis Wanyoike', 11, 'AMD', 'Cash', '30 Days After Delivery', NULL, NULL, 0, 0, 0, 0, 0, NULL, 1, 0, 1, NULL, NULL, '2017-12-02 08:00:05', '2017-12-02 08:00:05'),
(19, 'QT-293', 5, 24, 'Connelly, Nienow and Herzog', 0, 1, 'Dennis Wanyoike', 17, 'BHD', 'Cash', '30 Days After Delivery', NULL, NULL, 0, 0, 0, 0, 0, NULL, 1, 0, 1, NULL, NULL, '2017-12-02 08:00:05', '2017-12-02 08:00:05'),
(20, 'QT-148', 4, 14, 'Robel-Kuphal', 1, 1, 'Dennis Wanyoike', 3, 'DZD', 'Cash', '30 Days After Delivery', NULL, NULL, 0, 0, 0, 0, 0, NULL, 1, 0, 1, NULL, NULL, '2017-12-02 08:00:05', '2017-12-02 08:00:05');

-- --------------------------------------------------------

--
-- Table structure for table `sales_order_items`
--

CREATE TABLE `sales_order_items` (
  `id` int(10) UNSIGNED NOT NULL,
  `salesOrderId` int(10) UNSIGNED NOT NULL,
  `productId` int(10) UNSIGNED NOT NULL,
  `binLocation` int(10) UNSIGNED NOT NULL,
  `productDescription` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `quantity` double(15,2) NOT NULL DEFAULT '0.00',
  `sellingPrice` double(15,2) DEFAULT NULL,
  `convertedPrice` double(15,2) DEFAULT NULL,
  `convertedRate` double(15,2) DEFAULT NULL,
  `tax` double(15,2) DEFAULT NULL,
  `taxRate` double(15,2) DEFAULT NULL,
  `total` double(15,2) DEFAULT NULL,
  `discount` double(15,2) DEFAULT NULL,
  `taxable` tinyint(1) DEFAULT NULL,
  `returned` double(15,2) DEFAULT NULL,
  `locationHash` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `onHold` tinyint(1) NOT NULL,
  `hash` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `companyId` int(10) UNSIGNED NOT NULL,
  `updatedBy` int(10) UNSIGNED NOT NULL,
  `createdBy` int(10) UNSIGNED NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sales_order_items`
--

INSERT INTO `sales_order_items` (`id`, `salesOrderId`, `productId`, `binLocation`, `productDescription`, `quantity`, `sellingPrice`, `convertedPrice`, `convertedRate`, `tax`, `taxRate`, `total`, `discount`, `taxable`, `returned`, `locationHash`, `onHold`, `hash`, `companyId`, `updatedBy`, `createdBy`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 1, 32, 196, 'SHARPENER', 1.00, 248.00, 248.00, 0.00, 39.68, 16.00, 248.00, 0.00, 1, NULL, 'VPQBA81CxxOvqK', 0, 'PbkRfE0a', 1, 1, 1, NULL, '2017-12-02 08:00:06', '2017-12-02 08:00:06'),
(2, 1, 79, 46, 'Spiral Binders', 1.00, 184.00, 184.00, 0.00, 29.44, 16.00, 184.00, 0.00, 1, NULL, 'GZRvDZOukp1Vo', 0, 'zb8qh3md', 1, 1, 1, NULL, '2017-12-02 08:00:06', '2017-12-02 08:00:06'),
(3, 1, 68, 79, 'DL Non-Windowed Envelopes', 1.00, 210.00, 210.00, 0.00, 33.60, 16.00, 210.00, 0.00, 1, NULL, 'Krv7AzpIPEPy7', 0, 'Be1rigRa', 1, 1, 1, NULL, '2017-12-02 08:00:06', '2017-12-02 08:00:06'),
(4, 1, 68, 79, 'DL Non-Windowed Envelopes', 1.00, 210.00, 210.00, 0.00, 33.60, 16.00, 210.00, 0.00, 1, NULL, 'Krv7AzpIPEPy7', 0, 'RbD1szAd', 1, 1, 1, NULL, '2017-12-02 08:00:06', '2017-12-02 08:00:06'),
(5, 1, 30, 148, 'STAMP INK', 1.00, 298.00, 298.00, 0.00, 47.68, 16.00, 298.00, 0.00, 1, NULL, 'r8WvjPGu6DyKm', 0, 'Pbk2trEa', 1, 1, 1, NULL, '2017-12-02 08:00:06', '2017-12-02 08:00:06'),
(6, 1, 75, 49, 'Flip chart', 1.00, 312.00, 312.00, 0.00, 49.92, 16.00, 312.00, 0.00, 1, NULL, 'DR0opGqH3R4jD', 0, 'naz7uE6b', 1, 1, 1, NULL, '2017-12-02 08:00:06', '2017-12-02 08:00:06'),
(7, 1, 90, 118, 'A4 Laminating pouch', 1.00, 196.00, 196.00, 0.00, 31.36, 16.00, 196.00, 0.00, 1, NULL, 'j2y6KW6hnRL2M9', 0, 'PeExCw2d', 1, 1, 1, NULL, '2017-12-02 08:00:06', '2017-12-02 08:00:06'),
(8, 1, 35, 111, 'HIGHLIGHTER', 1.00, 187.00, 187.00, 0.00, 29.92, 16.00, 187.00, 0.00, 1, NULL, 'ZV5jj0KhGVwN7', 0, 'vaM9Fnwa', 1, 1, 1, NULL, '2017-12-02 08:00:06', '2017-12-02 08:00:06'),
(9, 1, 58, 111, 'CE311', 1.00, 249.00, 249.00, 0.00, 39.84, 16.00, 249.00, 0.00, 1, NULL, '3l47QYOTB0kzZ', 0, 'bYQHLJAb', 1, 1, 1, NULL, '2017-12-02 08:00:06', '2017-12-02 08:00:06'),
(10, 1, 5, 32, 'A5 SHORTHAND BOOKS', 1.00, 161.00, 161.00, 0.00, 25.76, 16.00, 161.00, 0.00, 1, NULL, 'QnGl5vxFkoDJnP', 0, 'jaKAIPWd', 1, 1, 1, NULL, '2017-12-02 08:00:07', '2017-12-02 08:00:07'),
(11, 2, 54, 55, 'Hp541A', 1.00, 230.00, 230.00, 0.00, 36.80, 16.00, 230.00, 0.00, 1, NULL, 'Wngo95kS5zXYlZ', 0, 'av9S7jne', 1, 1, 1, NULL, '2017-12-02 08:00:08', '2017-12-02 08:00:08'),
(12, 2, 22, 63, 'BIRO PENS RED', 1.00, 315.00, 315.00, 0.00, 50.40, 16.00, 315.00, 0.00, 1, NULL, 'G6DR4yBCRD6wo', 0, 'leXnTRzb', 1, 1, 1, NULL, '2017-12-02 08:00:08', '2017-12-02 08:00:08'),
(13, 2, 36, 182, 'DUST BINS', 1.00, 127.00, 127.00, 0.00, 20.32, 16.00, 127.00, 0.00, 1, NULL, 'QW2ARDoHlzPg1', 0, '6e9GU9qb', 1, 1, 1, NULL, '2017-12-02 08:00:08', '2017-12-02 08:00:08'),
(14, 2, 45, 9, 'RUBBER GLOVES', 1.00, 252.00, 252.00, 0.00, 40.32, 16.00, 252.00, 0.00, 1, NULL, 'NkB4lvKiWwvRD', 0, 'pdB9ckgb', 1, 1, 1, NULL, '2017-12-02 08:00:08', '2017-12-02 08:00:08'),
(15, 2, 63, 141, 'Q7553A', 1.00, 308.00, 308.00, 0.00, 49.28, 16.00, 308.00, 0.00, 1, NULL, '71AgYn4tAQM7x4', 0, '9aQLfvRe', 1, 1, 1, NULL, '2017-12-02 08:00:08', '2017-12-02 08:00:08'),
(16, 2, 95, 107, 'Pen Holders', 1.00, 164.00, 164.00, 0.00, 26.24, 16.00, 164.00, 0.00, 1, NULL, 'APYZP0RuKLL34', 0, '1dNKh1Oe', 1, 1, 1, NULL, '2017-12-02 08:00:08', '2017-12-02 08:00:08'),
(17, 2, 64, 90, 'Epson IQ 2190', 1.00, 303.00, 303.00, 0.00, 48.48, 16.00, 303.00, 0.00, 1, NULL, 'Q12kKnxsrp8En', 0, 'ge0MipQa', 1, 1, 1, NULL, '2017-12-02 08:00:09', '2017-12-02 08:00:09'),
(18, 2, 58, 111, 'CE311', 1.00, 249.00, 249.00, 0.00, 39.84, 16.00, 249.00, 0.00, 1, NULL, 'wj904j1SWxgz5', 0, 'Max5smRb', 1, 1, 1, NULL, '2017-12-02 08:00:09', '2017-12-02 08:00:09'),
(19, 2, 30, 148, 'STAMP INK', 1.00, 298.00, 298.00, 0.00, 47.68, 16.00, 298.00, 0.00, 1, NULL, 'NxAGpmqfxxDo8', 0, 'pdB7t2ke', 1, 1, 1, NULL, '2017-12-02 08:00:09', '2017-12-02 08:00:09'),
(20, 2, 80, 88, 'Company Letter Heads', 1.00, 265.00, 265.00, 0.00, 42.40, 16.00, 265.00, 0.00, 1, NULL, 'KZ7qgjNHy7L2Z', 0, 'Ke5rujza', 1, 1, 1, NULL, '2017-12-02 08:00:09', '2017-12-02 08:00:09'),
(21, 3, 98, 27, 'File Dividers', 1.00, 224.00, 224.00, 0.00, 35.84, 16.00, 224.00, 0.00, 1, NULL, 'WLQWBQlFvK3ED', 0, 'jaKRCoJe', 1, 1, 1, NULL, '2017-12-02 08:00:09', '2017-12-02 08:00:09'),
(22, 3, 73, 88, 'safety boots', 1.00, 205.00, 205.00, 0.00, 32.80, 16.00, 205.00, 0.00, 1, NULL, 'g51ZDRNSPyX2j', 0, 'MdRDFmQa', 1, 1, 1, NULL, '2017-12-02 08:00:09', '2017-12-02 08:00:09'),
(23, 3, 77, 110, 'Clip boards', 1.00, 129.00, 129.00, 0.00, 20.64, 16.00, 129.00, 0.00, 1, NULL, '82zj2R9s2QBQM', 0, 'XdLzHLAa', 1, 1, 1, NULL, '2017-12-02 08:00:09', '2017-12-02 08:00:09'),
(24, 3, 68, 79, 'DL Non-Windowed Envelopes', 1.00, 210.00, 210.00, 0.00, 33.60, 16.00, 210.00, 0.00, 1, NULL, 'Krv7AzpIPEPy7', 0, 'nazwIA7b', 1, 1, 1, NULL, '2017-12-02 08:00:09', '2017-12-02 08:00:09'),
(25, 3, 45, 9, 'RUBBER GLOVES', 1.00, 252.00, 252.00, 0.00, 40.32, 16.00, 252.00, 0.00, 1, NULL, 'MQ02n1Asx8W3p', 0, '8bYDS1ja', 1, 1, 1, NULL, '2017-12-02 08:00:10', '2017-12-02 08:00:10'),
(26, 3, 52, 65, 'Hp323A', 1.00, 185.00, 185.00, 0.00, 29.60, 16.00, 185.00, 0.00, 1, NULL, 'NxKOroRfoyvDw', 0, 'oejwTpVa', 1, 1, 1, NULL, '2017-12-02 08:00:10', '2017-12-02 08:00:10'),
(27, 3, 27, 149, 'SMALL PAPER PUNCH', 1.00, 238.00, 238.00, 0.00, 38.08, 16.00, 238.00, 0.00, 1, NULL, 'k5JMRmmULr2G8', 0, 'gen0Uwrb', 1, 1, 1, NULL, '2017-12-02 08:00:10', '2017-12-02 08:00:10'),
(28, 3, 87, 139, 'Security Stickers', 1.00, 274.00, 274.00, 0.00, 43.84, 16.00, 274.00, 0.00, 1, NULL, 'gJmjNqyfLRx25', 0, 'KdwDcO9e', 1, 1, 1, NULL, '2017-12-02 08:00:10', '2017-12-02 08:00:10'),
(29, 3, 47, 146, 'Ear Muffs', 1.00, 229.00, 229.00, 0.00, 36.64, 16.00, 229.00, 0.00, 1, NULL, 'wmX7y6MU1Xxk1', 0, '7aAkfOQd', 1, 1, 1, NULL, '2017-12-02 08:00:11', '2017-12-02 08:00:11'),
(30, 3, 23, 191, 'PERMANENT MARKER PENS', 1.00, 281.00, 281.00, 0.00, 44.96, 16.00, 281.00, 0.00, 1, NULL, 'XokqqVvTDkKJE', 0, 'ZdyNhWWe', 1, 1, 1, NULL, '2017-12-02 08:00:11', '2017-12-02 08:00:11'),
(31, 4, 36, 182, 'DUST BINS', 1.00, 127.00, 127.00, 0.00, 20.32, 16.00, 127.00, 0.00, 1, NULL, 'wpX8R3yFGGM5G9', 0, 'ge0KiKqd', 1, 1, 1, NULL, '2017-12-02 08:00:11', '2017-12-02 08:00:11'),
(32, 4, 73, 88, 'safety boots', 1.00, 205.00, 205.00, 0.00, 32.80, 16.00, 205.00, 0.00, 1, NULL, '66KGJrWHoA4NL', 0, 'zaOwsmQa', 1, 1, 1, NULL, '2017-12-02 08:00:12', '2017-12-02 08:00:12'),
(33, 4, 17, 20, 'PAPER CLIPS  50MM', 1.00, 204.00, 204.00, 0.00, 32.64, 16.00, 204.00, 0.00, 1, NULL, '4QvAKNYC2EwOK', 0, 'oejltzrb', 1, 1, 1, NULL, '2017-12-02 08:00:12', '2017-12-02 08:00:12'),
(34, 4, 33, 40, 'WHITE OUT', 1.00, 110.00, 110.00, 0.00, 17.60, 16.00, 110.00, 0.00, 1, NULL, '68EWzAYczOQBK', 0, 'Be1Rul3a', 1, 1, 1, NULL, '2017-12-02 08:00:12', '2017-12-02 08:00:12'),
(35, 4, 88, 175, 'Paper Tray', 1.00, 257.00, 257.00, 0.00, 41.12, 16.00, 257.00, 0.00, 1, NULL, 'wVN2920tGnz35', 0, 'BdJ3C5we', 1, 1, 1, NULL, '2017-12-02 08:00:12', '2017-12-02 08:00:12'),
(36, 4, 12, 120, 'A4 BRANDED ENVELOPES', 1.00, 110.00, 110.00, 0.00, 17.60, 16.00, 110.00, 0.00, 1, NULL, '0RNr6XwhrMLKp', 0, '1dNzFpyd', 1, 1, 1, NULL, '2017-12-02 08:00:12', '2017-12-02 08:00:12'),
(37, 4, 67, 119, 'DL Windowed Envelops', 1.00, 184.00, 184.00, 0.00, 29.44, 16.00, 184.00, 0.00, 1, NULL, 'KrG0KXxiZ434k', 0, 'ge0WH8pd', 1, 1, 1, NULL, '2017-12-02 08:00:12', '2017-12-02 08:00:12'),
(38, 4, 29, 112, 'RUBBER BANDS', 1.00, 281.00, 281.00, 0.00, 44.96, 16.00, 281.00, 0.00, 1, NULL, 'G5k0nOWi109wAK', 0, 'KdwoIZVd', 1, 1, 1, NULL, '2017-12-02 08:00:13', '2017-12-02 08:00:13'),
(39, 4, 51, 121, 'Hp322A', 1.00, 150.00, 150.00, 0.00, 24.00, 16.00, 150.00, 0.00, 1, NULL, 'ZYLNzqDul8yqV', 0, 'qdP0S3qd', 1, 1, 1, NULL, '2017-12-02 08:00:13', '2017-12-02 08:00:13'),
(40, 4, 28, 183, 'PENCILS', 1.00, 312.00, 312.00, 0.00, 49.92, 16.00, 312.00, 0.00, 1, NULL, 'oQo7RLVcrvgN7Q', 0, '8bY2TEGd', 1, 1, 1, NULL, '2017-12-02 08:00:13', '2017-12-02 08:00:13'),
(41, 5, 7, 64, 'IMPORTS STRONG ROOM RECORD BOOKS', 1.00, 250.00, 250.00, 0.00, 40.00, 16.00, 250.00, 0.00, 1, NULL, 'yow3XQqtxPz4J', 0, 'mbmBU7od', 1, 1, 1, NULL, '2017-12-02 08:00:13', '2017-12-02 08:00:13'),
(42, 5, 17, 20, 'PAPER CLIPS  50MM', 1.00, 204.00, 204.00, 0.00, 32.64, 16.00, 204.00, 0.00, 1, NULL, '4QvAKNYC2EwOK', 0, 'PeENcXKa', 1, 1, 1, NULL, '2017-12-02 08:00:13', '2017-12-02 08:00:13'),
(43, 5, 13, 135, 'PRINTING PAPERS', 1.00, 139.00, 139.00, 0.00, 22.24, 16.00, 139.00, 0.00, 1, NULL, '48rm6zKH311Ay', 0, 'MaxOfEje', 1, 1, 1, NULL, '2017-12-02 08:00:14', '2017-12-02 08:00:14'),
(44, 5, 105, 61, 'CE413A', 1.00, 197.00, 197.00, 0.00, 31.52, 16.00, 197.00, 0.00, 1, NULL, 'oQE4YmVt08Q7X', 0, 'dJ6Dh14d', 1, 1, 1, NULL, '2017-12-02 08:00:14', '2017-12-02 08:00:14'),
(45, 5, 7, 64, 'IMPORTS STRONG ROOM RECORD BOOKS', 1.00, 250.00, 250.00, 0.00, 40.00, 16.00, 250.00, 0.00, 1, NULL, 'yow3XQqtxPz4J', 0, 'dG66iRnb', 1, 1, 1, NULL, '2017-12-02 08:00:14', '2017-12-02 08:00:14'),
(46, 5, 106, 76, 'Binder Clipps 51mm', 1.00, 294.00, 294.00, 0.00, 47.04, 16.00, 294.00, 0.00, 1, NULL, 'DkJZ10Au5jLD4P', 0, 'e9r8sRxa', 1, 1, 1, NULL, '2017-12-02 08:00:14', '2017-12-02 08:00:14'),
(47, 5, 32, 196, 'SHARPENER', 1.00, 248.00, 248.00, 0.00, 39.68, 16.00, 248.00, 0.00, 1, NULL, 'VPQBA81CxxOvqK', 0, 'dJ6qtlDd', 1, 1, 1, NULL, '2017-12-02 08:00:15', '2017-12-02 08:00:15'),
(48, 5, 33, 40, 'WHITE OUT', 1.00, 110.00, 110.00, 0.00, 17.60, 16.00, 110.00, 0.00, 1, NULL, '68EWzAYczOQBK', 0, 'axknugqe', 1, 1, 1, NULL, '2017-12-02 08:00:15', '2017-12-02 08:00:15'),
(49, 5, 48, 87, 'Staple Pins Big 66/14', 1.00, 249.00, 249.00, 0.00, 39.84, 16.00, 249.00, 0.00, 1, NULL, 'vg16AOnTpJnK7', 0, 'dyPwCqob', 1, 1, 1, NULL, '2017-12-02 08:00:15', '2017-12-02 08:00:15'),
(50, 5, 72, 46, 'A5Khaki brown  envelopes', 1.00, 237.00, 237.00, 0.00, 37.92, 16.00, 237.00, 0.00, 1, NULL, 'GZABXvytJNEgr', 0, 'dNkYFYOe', 1, 1, 1, NULL, '2017-12-02 08:00:15', '2017-12-02 08:00:15'),
(51, 6, 23, 191, 'PERMANENT MARKER PENS', 1.00, 281.00, 281.00, 0.00, 44.96, 16.00, 281.00, 0.00, 1, NULL, 'K15zAE4fwP7Kw', 0, 'epY2HWDa', 1, 1, 1, NULL, '2017-12-02 08:00:16', '2017-12-02 08:00:16'),
(52, 6, 64, 90, 'Epson IQ 2190', 1.00, 303.00, 303.00, 0.00, 48.48, 16.00, 303.00, 0.00, 1, NULL, 'YER4V5quLNDMOX', 0, 'azpnIz8d', 1, 1, 1, NULL, '2017-12-02 08:00:16', '2017-12-02 08:00:16'),
(53, 6, 51, 121, 'Hp322A', 1.00, 150.00, 150.00, 0.00, 24.00, 16.00, 150.00, 0.00, 1, NULL, 'ZYLNzqDul8yqV', 0, 'bmZ2Sz2d', 1, 1, 1, NULL, '2017-12-02 08:00:16', '2017-12-02 08:00:16'),
(54, 6, 45, 9, 'RUBBER GLOVES', 1.00, 252.00, 252.00, 0.00, 40.32, 16.00, 252.00, 0.00, 1, NULL, 'XLXADA0FZ83y1', 0, 'dG6wcB6b', 1, 1, 1, NULL, '2017-12-02 08:00:16', '2017-12-02 08:00:16'),
(55, 6, 17, 20, 'PAPER CLIPS  50MM', 1.00, 204.00, 204.00, 0.00, 32.64, 16.00, 204.00, 0.00, 1, NULL, '4QvAKNYC2EwOK', 0, 'dL95UKre', 1, 1, 1, NULL, '2017-12-02 08:00:16', '2017-12-02 08:00:16'),
(56, 6, 41, 1, 'PROPERTY DECLARATION BOOKS', 1.00, 211.00, 211.00, 0.00, 33.76, 16.00, 211.00, 0.00, 1, NULL, 'G5DPXpOSn10OE', 0, 'dwpZcAWe', 1, 1, 1, NULL, '2017-12-02 08:00:17', '2017-12-02 08:00:17'),
(57, 6, 5, 32, 'A5 SHORTHAND BOOKS', 1.00, 161.00, 161.00, 0.00, 25.76, 16.00, 161.00, 0.00, 1, NULL, 'QnGl5vxFkoDJnP', 0, 'e9rGfy7a', 1, 1, 1, NULL, '2017-12-02 08:00:17', '2017-12-02 08:00:17'),
(58, 6, 59, 54, 'CE312', 1.00, 197.00, 197.00, 0.00, 31.52, 16.00, 197.00, 0.00, 1, NULL, 'NxKz8n7FqEPV1', 0, 'ejR6hnQe', 1, 1, 1, NULL, '2017-12-02 08:00:17', '2017-12-02 08:00:17'),
(59, 6, 79, 46, 'Spiral Binders', 1.00, 184.00, 184.00, 0.00, 29.44, 16.00, 184.00, 0.00, 1, NULL, '0VlMvGZcG241M0', 0, 'bmZXimJd', 1, 1, 1, NULL, '2017-12-02 08:00:17', '2017-12-02 08:00:17'),
(60, 6, 95, 107, 'Pen Holders', 1.00, 164.00, 164.00, 0.00, 26.24, 16.00, 164.00, 0.00, 1, NULL, 'lO7jgZBIP0Qw1', 0, 'dJ6Ku85d', 1, 1, 1, NULL, '2017-12-02 08:00:17', '2017-12-02 08:00:17'),
(61, 7, 95, 107, 'Pen Holders', 1.00, 164.00, 164.00, 0.00, 26.24, 16.00, 164.00, 0.00, 1, NULL, 'APYZP0RuKLL34', 0, 'eERytBYa', 1, 1, 1, NULL, '2017-12-02 08:00:17', '2017-12-02 08:00:17'),
(62, 7, 100, 35, 'Ledger book A4 2Q', 1.00, 155.00, 155.00, 0.00, 24.80, 16.00, 155.00, 0.00, 1, NULL, 'xG2qPoOs5PR3g', 0, 'e1wquOXb', 1, 1, 1, NULL, '2017-12-02 08:00:18', '2017-12-02 08:00:18'),
(63, 7, 76, 158, 'White board markers', 1.00, 242.00, 242.00, 0.00, 38.72, 16.00, 242.00, 0.00, 1, NULL, 'rR4wDRjFBPEP3', 0, 'elYVCBDa', 1, 1, 1, NULL, '2017-12-02 08:00:18', '2017-12-02 08:00:18'),
(64, 7, 10, 146, 'A3 KHAKI BROWN ENVELOPES ', 1.00, 163.00, 163.00, 0.00, 26.08, 16.00, 163.00, 0.00, 1, NULL, '8qXG51Zsy0KW0', 0, 'bYEnFK9b', 1, 1, 1, NULL, '2017-12-02 08:00:18', '2017-12-02 08:00:18'),
(65, 7, 66, 5, 'A5 Branded Envelopes', 1.00, 182.00, 182.00, 0.00, 29.12, 16.00, 182.00, 0.00, 1, NULL, 'qxEnLj9t3NA8P', 0, 'b4xJHBQw', 1, 1, 1, NULL, '2017-12-02 08:00:18', '2017-12-02 08:00:18'),
(66, 7, 40, 1, 'ULD BOOKS', 1.00, 145.00, 145.00, 0.00, 23.20, 16.00, 145.00, 0.00, 1, NULL, 'MwLDJqXfDB7Ej', 0, 'eXD2I89e', 1, 1, 1, NULL, '2017-12-02 08:00:18', '2017-12-02 08:00:18'),
(67, 7, 13, 135, 'PRINTING PAPERS', 1.00, 139.00, 139.00, 0.00, 22.24, 16.00, 139.00, 0.00, 1, NULL, '48rm6zKH311Ay', 0, 'dJ6xU5md', 1, 1, 1, NULL, '2017-12-02 08:00:18', '2017-12-02 08:00:18'),
(68, 7, 78, 178, 'Binding covers', 1.00, 149.00, 149.00, 0.00, 23.84, 16.00, 149.00, 0.00, 1, NULL, '2vxZN6Duw6LR1', 0, 'e9rET16a', 1, 1, 1, NULL, '2017-12-02 08:00:18', '2017-12-02 08:00:18'),
(69, 7, 64, 90, 'Epson IQ 2190', 1.00, 303.00, 303.00, 0.00, 48.48, 16.00, 303.00, 0.00, 1, NULL, 'Q12kKnxsrp8En', 0, 'dPNqU0Aa', 1, 1, 1, NULL, '2017-12-02 08:00:18', '2017-12-02 08:00:18'),
(70, 7, 67, 119, 'DL Windowed Envelops', 1.00, 184.00, 184.00, 0.00, 29.44, 16.00, 184.00, 0.00, 1, NULL, 'KrG0KXxiZ434k', 0, 'ejRwcBJe', 1, 1, 1, NULL, '2017-12-02 08:00:19', '2017-12-02 08:00:19'),
(71, 8, 74, 114, 'Rulers', 1.00, 215.00, 215.00, 0.00, 34.40, 16.00, 215.00, 0.00, 1, NULL, 'Ell2vL2u30QVqZ', 0, 'en50sxBd', 1, 1, 1, NULL, '2017-12-02 08:00:19', '2017-12-02 08:00:19'),
(72, 8, 12, 120, 'A4 BRANDED ENVELOPES', 1.00, 110.00, 110.00, 0.00, 17.60, 16.00, 110.00, 0.00, 1, NULL, '32Y64NJCPv7ZX', 0, 'bo2rFQPa', 1, 1, 1, NULL, '2017-12-02 08:00:19', '2017-12-02 08:00:19'),
(73, 8, 62, 102, 'CE285A', 1.00, 240.00, 240.00, 0.00, 38.40, 16.00, 240.00, 0.00, 1, NULL, 'ER2NM2PFpJ5x6', 0, 'dBB0C2Nd', 1, 1, 1, NULL, '2017-12-02 08:00:19', '2017-12-02 08:00:19'),
(74, 8, 88, 175, 'Paper Tray', 1.00, 257.00, 257.00, 0.00, 41.12, 16.00, 257.00, 0.00, 1, NULL, 'wVN2920tGnz35', 0, 'gen5yC5d', 1, 1, 1, NULL, '2017-12-02 08:00:19', '2017-12-02 08:00:19'),
(75, 8, 72, 46, 'A5Khaki brown  envelopes', 1.00, 237.00, 237.00, 0.00, 37.92, 16.00, 237.00, 0.00, 1, NULL, 'GZABXvytJNEgr', 0, 'ejR1t1le', 1, 1, 1, NULL, '2017-12-02 08:00:19', '2017-12-02 08:00:19'),
(76, 8, 3, 44, '2QUIRE COUNTER BOOKS', 1.00, 157.00, 157.00, 0.00, 25.12, 16.00, 157.00, 0.00, 1, NULL, 'nZ8mRkGuApyNz', 0, 'dJ6oFE9d', 1, 1, 1, NULL, '2017-12-02 08:00:19', '2017-12-02 08:00:19'),
(77, 8, 35, 111, 'HIGHLIGHTER', 1.00, 187.00, 187.00, 0.00, 29.92, 16.00, 187.00, 0.00, 1, NULL, 'ZV5jj0KhGVwN7', 0, 'b2k5CpJ1', 1, 1, 1, NULL, '2017-12-02 08:00:20', '2017-12-02 08:00:20'),
(78, 8, 58, 111, 'CE311', 1.00, 249.00, 249.00, 0.00, 39.84, 16.00, 249.00, 0.00, 1, NULL, '3l47QYOTB0kzZ', 0, 'ejRDF7Le', 1, 1, 1, NULL, '2017-12-02 08:00:20', '2017-12-02 08:00:20'),
(79, 8, 64, 90, 'Epson IQ 2190', 1.00, 303.00, 303.00, 0.00, 48.48, 16.00, 303.00, 0.00, 1, NULL, 'YER4V5quLNDMOX', 0, 'b68OH04e', 1, 1, 1, NULL, '2017-12-02 08:00:20', '2017-12-02 08:00:20'),
(80, 8, 102, 136, 'CE 410A', 1.00, 286.00, 286.00, 0.00, 45.76, 16.00, 286.00, 0.00, 1, NULL, '5QLYqx9UZg5jx5', 0, 'dPNBhLva', 1, 1, 1, NULL, '2017-12-02 08:00:20', '2017-12-02 08:00:20'),
(81, 9, 64, 90, 'Epson IQ 2190', 1.00, 303.00, 303.00, 0.00, 48.48, 16.00, 303.00, 0.00, 1, NULL, 'YER4V5quLNDMOX', 0, 'e73ghGje', 1, 1, 1, NULL, '2017-12-02 08:00:20', '2017-12-02 08:00:20'),
(82, 9, 103, 32, 'CE411A', 1.00, 264.00, 264.00, 0.00, 42.24, 16.00, 264.00, 0.00, 1, NULL, 'Qn0r3zycqOWjG', 0, 'eZ6Ac7De', 1, 1, 1, NULL, '2017-12-02 08:00:21', '2017-12-02 08:00:21'),
(83, 9, 36, 182, 'DUST BINS', 1.00, 127.00, 127.00, 0.00, 20.32, 16.00, 127.00, 0.00, 1, NULL, '0gED7NkfGrmVp6', 0, 'aOYWUB9d', 1, 1, 1, NULL, '2017-12-02 08:00:21', '2017-12-02 08:00:21'),
(84, 9, 55, 90, 'Hp542A', 1.00, 201.00, 201.00, 0.00, 32.16, 16.00, 201.00, 0.00, 1, NULL, '66JBzYghrrZkkZ', 0, 'e5y6cx8e', 1, 1, 1, NULL, '2017-12-02 08:00:21', '2017-12-02 08:00:21'),
(85, 9, 44, 35, 'TRANSGLOBAL TAPES', 1.00, 157.00, 157.00, 0.00, 25.12, 16.00, 157.00, 0.00, 1, NULL, 'ERklPrKT27VzA', 0, 'aKrMfNRe', 1, 1, 1, NULL, '2017-12-02 08:00:21', '2017-12-02 08:00:21'),
(86, 9, 105, 61, 'CE413A', 1.00, 197.00, 197.00, 0.00, 31.52, 16.00, 197.00, 0.00, 1, NULL, 'oQE4YmVt08Q7X', 0, 'dNkZh0qe', 1, 1, 1, NULL, '2017-12-02 08:00:21', '2017-12-02 08:00:21'),
(87, 9, 87, 139, 'Security Stickers', 1.00, 274.00, 274.00, 0.00, 43.84, 16.00, 274.00, 0.00, 1, NULL, 'rRZQEKjckk7X0', 0, 'e1wxiE5b', 1, 1, 1, NULL, '2017-12-02 08:00:22', '2017-12-02 08:00:22'),
(88, 9, 41, 1, 'PROPERTY DECLARATION BOOKS', 1.00, 211.00, 211.00, 0.00, 33.76, 16.00, 211.00, 0.00, 1, NULL, 'G5DPXpOSn10OE', 0, 'b2R4uY0b', 1, 1, 1, NULL, '2017-12-02 08:00:22', '2017-12-02 08:00:22'),
(89, 9, 87, 139, 'Security Stickers', 1.00, 274.00, 274.00, 0.00, 43.84, 16.00, 274.00, 0.00, 1, NULL, 'gJmjNqyfLRx25', 0, 'aO7Yup9Z', 1, 1, 1, NULL, '2017-12-02 08:00:22', '2017-12-02 08:00:22'),
(90, 9, 66, 5, 'A5 Branded Envelopes', 1.00, 182.00, 182.00, 0.00, 29.12, 16.00, 182.00, 0.00, 1, NULL, 'qxEnLj9t3NA8P', 0, 'b8qquk3d', 1, 1, 1, NULL, '2017-12-02 08:00:22', '2017-12-02 08:00:22'),
(91, 10, 63, 141, 'Q7553A', 1.00, 308.00, 308.00, 0.00, 49.28, 16.00, 308.00, 0.00, 1, NULL, '71AgYn4tAQM7x4', 0, 'epgQCJwd', 1, 1, 1, NULL, '2017-12-02 08:00:23', '2017-12-02 08:00:23'),
(92, 10, 62, 102, 'CE285A', 1.00, 240.00, 240.00, 0.00, 38.40, 16.00, 240.00, 0.00, 1, NULL, 'yoWk3Q2iWXlz9', 0, 'aO7MHOGa', 1, 1, 1, NULL, '2017-12-02 08:00:23', '2017-12-02 08:00:23'),
(93, 10, 42, 87, 'SECURITY DECLARATION BOOKS', 1.00, 233.00, 233.00, 0.00, 37.28, 16.00, 233.00, 0.00, 1, NULL, '5QRJmoKT1xZ4N', 0, 'ej2YfLWe', 1, 1, 1, NULL, '2017-12-02 08:00:23', '2017-12-02 08:00:23'),
(94, 10, 47, 146, 'Ear Muffs', 1.00, 229.00, 229.00, 0.00, 36.64, 16.00, 229.00, 0.00, 1, NULL, '2xQB44BH15OY2', 0, 'bDRQTVXe', 1, 1, 1, NULL, '2017-12-02 08:00:23', '2017-12-02 08:00:23'),
(95, 10, 12, 120, 'A4 BRANDED ENVELOPES', 1.00, 110.00, 110.00, 0.00, 17.60, 16.00, 110.00, 0.00, 1, NULL, 'vgEzWyzcYDM7X', 0, 'azmXSqpe', 1, 1, 1, NULL, '2017-12-02 08:00:23', '2017-12-02 08:00:23'),
(96, 10, 102, 136, 'CE 410A', 1.00, 286.00, 286.00, 0.00, 45.76, 16.00, 286.00, 0.00, 1, NULL, 'xGWY9krI2mxOv', 0, 'ej2nsYRe', 1, 1, 1, NULL, '2017-12-02 08:00:23', '2017-12-02 08:00:23'),
(97, 10, 68, 79, 'DL Non-Windowed Envelopes', 1.00, 210.00, 210.00, 0.00, 33.60, 16.00, 210.00, 0.00, 1, NULL, 'Krv7AzpIPEPy7', 0, 'bqjVU7Yd', 1, 1, 1, NULL, '2017-12-02 08:00:23', '2017-12-02 08:00:23'),
(98, 10, 101, 69, 'Ledger book A4 1Q', 1.00, 214.00, 214.00, 0.00, 34.24, 16.00, 214.00, 0.00, 1, NULL, 'PZm4k28iL9lV9', 0, 'dJZEF91d', 1, 1, 1, NULL, '2017-12-02 08:00:24', '2017-12-02 08:00:24'),
(99, 10, 100, 35, 'Ledger book A4 2Q', 1.00, 155.00, 155.00, 0.00, 24.80, 16.00, 155.00, 0.00, 1, NULL, 'xG2qPoOs5PR3g', 0, 'aKO5uq1a', 1, 1, 1, NULL, '2017-12-02 08:00:24', '2017-12-02 08:00:24'),
(100, 10, 7, 64, 'IMPORTS STRONG ROOM RECORD BOOKS', 1.00, 250.00, 250.00, 0.00, 40.00, 16.00, 250.00, 0.00, 1, NULL, 'G6KqJn9h1L8N1R', 0, 'dRgwhVke', 1, 1, 1, NULL, '2017-12-02 08:00:24', '2017-12-02 08:00:24'),
(101, 11, 46, 93, 'LEATHER GLOVES', 1.00, 289.00, 289.00, 0.00, 46.24, 16.00, 289.00, 0.00, 1, NULL, 'M84N32pS9rJBq', 0, 'aO7LsY3a', 1, 1, 1, NULL, '2017-12-02 08:00:25', '2017-12-02 08:00:25'),
(102, 11, 88, 175, 'Paper Tray', 1.00, 257.00, 257.00, 0.00, 41.12, 16.00, 257.00, 0.00, 1, NULL, 'wVN2920tGnz35', 0, 'b48Gso9b', 1, 1, 1, NULL, '2017-12-02 08:00:25', '2017-12-02 08:00:25'),
(103, 11, 55, 90, 'Hp542A', 1.00, 201.00, 201.00, 0.00, 32.16, 16.00, 201.00, 0.00, 1, NULL, '66JBzYghrrZkkZ', 0, 'bqj8t0zd', 1, 1, 1, NULL, '2017-12-02 08:00:25', '2017-12-02 08:00:25'),
(104, 11, 73, 88, 'safety boots', 1.00, 205.00, 205.00, 0.00, 32.80, 16.00, 205.00, 0.00, 1, NULL, '0grBDLjTGgy3JK', 0, 'bqjpumkd', 1, 1, 1, NULL, '2017-12-02 08:00:25', '2017-12-02 08:00:25'),
(105, 11, 59, 54, 'CE312', 1.00, 197.00, 197.00, 0.00, 31.52, 16.00, 197.00, 0.00, 1, NULL, 'NxKz8n7FqEPV1', 0, 'aMjXCyXb', 1, 1, 1, NULL, '2017-12-02 08:00:25', '2017-12-02 08:00:25'),
(106, 11, 106, 76, 'Binder Clipps 51mm', 1.00, 294.00, 294.00, 0.00, 47.04, 16.00, 294.00, 0.00, 1, NULL, 'DkJZ10Au5jLD4P', 0, 'e3lvFkRa', 1, 1, 1, NULL, '2017-12-02 08:00:25', '2017-12-02 08:00:25'),
(107, 11, 8, 192, 'EXPORTS STRONG ROOM RECORD BOOKS', 1.00, 175.00, 175.00, 0.00, 28.00, 16.00, 175.00, 0.00, 1, NULL, 'k8VjVwgUzgOxg', 0, 'jbqjXf8d', 1, 1, 1, NULL, '2017-12-02 08:00:25', '2017-12-02 08:00:25'),
(108, 11, 17, 20, 'PAPER CLIPS  50MM', 1.00, 204.00, 204.00, 0.00, 32.64, 16.00, 204.00, 0.00, 1, NULL, '4QvAKNYC2EwOK', 0, 'e58rI8jd', 1, 1, 1, NULL, '2017-12-02 08:00:25', '2017-12-02 08:00:25'),
(109, 11, 3, 44, '2QUIRE COUNTER BOOKS', 1.00, 157.00, 157.00, 0.00, 25.12, 16.00, 157.00, 0.00, 1, NULL, 'nZ8mRkGuApyNz', 0, 'eVm9cnod', 1, 1, 1, NULL, '2017-12-02 08:00:25', '2017-12-02 08:00:25'),
(110, 11, 75, 49, 'Flip chart', 1.00, 312.00, 312.00, 0.00, 49.92, 16.00, 312.00, 0.00, 1, NULL, 'lOpMAgXFjM47', 0, 'boYkCKQe', 1, 1, 1, NULL, '2017-12-02 08:00:25', '2017-12-02 08:00:25'),
(111, 12, 44, 35, 'TRANSGLOBAL TAPES', 1.00, 157.00, 157.00, 0.00, 25.12, 16.00, 157.00, 0.00, 1, NULL, 'ERklPrKT27VzA', 0, 'e98NU4ld', 1, 1, 1, NULL, '2017-12-02 08:00:26', '2017-12-02 08:00:26'),
(112, 12, 105, 61, 'CE413A', 1.00, 197.00, 197.00, 0.00, 31.52, 16.00, 197.00, 0.00, 1, NULL, 'oQE4YmVt08Q7X', 0, 'dGZVF2yb', 1, 1, 1, NULL, '2017-12-02 08:00:26', '2017-12-02 08:00:26'),
(113, 12, 36, 182, 'DUST BINS', 1.00, 127.00, 127.00, 0.00, 20.32, 16.00, 127.00, 0.00, 1, NULL, 'wpX8R3yFGGM5G9', 0, 'eVmzsNrd', 1, 1, 1, NULL, '2017-12-02 08:00:26', '2017-12-02 08:00:26'),
(114, 12, 49, 79, 'Hp320A', 1.00, 299.00, 299.00, 0.00, 47.84, 16.00, 299.00, 0.00, 1, NULL, '3Qvj4DnTNkKlX', 0, 'bk5xFLPe', 1, 1, 1, NULL, '2017-12-02 08:00:26', '2017-12-02 08:00:26'),
(115, 12, 100, 35, 'Ledger book A4 2Q', 1.00, 155.00, 155.00, 0.00, 24.80, 16.00, 155.00, 0.00, 1, NULL, 'zKJMv3juZ3wDx', 0, 'dJZMSymd', 1, 1, 1, NULL, '2017-12-02 08:00:27', '2017-12-02 08:00:27'),
(116, 12, 16, 21, 'PAPER CLIPS 33MM', 1.00, 129.00, 129.00, 0.00, 20.64, 16.00, 129.00, 0.00, 1, NULL, 'yojK0wEIrLrkjY', 0, 'dP1osv6e', 1, 1, 1, NULL, '2017-12-02 08:00:27', '2017-12-02 08:00:27'),
(117, 12, 102, 136, 'CE 410A', 1.00, 286.00, 286.00, 0.00, 45.76, 16.00, 286.00, 0.00, 1, NULL, '1rmQ798Sj21wO', 0, 'aO7BCjDa', 1, 1, 1, NULL, '2017-12-02 08:00:27', '2017-12-02 08:00:27'),
(118, 12, 98, 27, 'File Dividers', 1.00, 224.00, 224.00, 0.00, 35.84, 16.00, 224.00, 0.00, 1, NULL, 'WLQWBQlFvK3ED', 0, 'eElkIzpd', 1, 1, 1, NULL, '2017-12-02 08:00:27', '2017-12-02 08:00:27'),
(119, 12, 92, 6, 'GIANT Stapler', 1.00, 237.00, 237.00, 0.00, 37.92, 16.00, 237.00, 0.00, 1, NULL, 'lxmMOr7f0Vkoy', 0, 'elO1T1Qd', 1, 1, 1, NULL, '2017-12-02 08:00:27', '2017-12-02 08:00:27'),
(120, 12, 82, 26, 'Adhesives', 1.00, 160.00, 160.00, 0.00, 25.60, 16.00, 160.00, 0.00, 1, NULL, 'L7RY38wFzDPRr', 0, 'b8qJC5qd', 1, 1, 1, NULL, '2017-12-02 08:00:28', '2017-12-02 08:00:28'),
(121, 13, 73, 88, 'safety boots', 1.00, 205.00, 205.00, 0.00, 32.80, 16.00, 205.00, 0.00, 1, NULL, 'g51ZDRNSPyX2j', 0, 'bY6GUy4d', 1, 1, 1, NULL, '2017-12-02 08:00:28', '2017-12-02 08:00:28'),
(122, 13, 102, 136, 'CE 410A', 1.00, 286.00, 286.00, 0.00, 45.76, 16.00, 286.00, 0.00, 1, NULL, '1rmQ798Sj21wO', 0, 'eX64cZDb', 1, 1, 1, NULL, '2017-12-02 08:00:28', '2017-12-02 08:00:28'),
(123, 13, 51, 121, 'Hp322A', 1.00, 150.00, 150.00, 0.00, 24.00, 16.00, 150.00, 0.00, 1, NULL, 'ZYLNzqDul8yqV', 0, 'aQ19SvDa', 1, 1, 1, NULL, '2017-12-02 08:00:28', '2017-12-02 08:00:28'),
(124, 13, 46, 93, 'LEATHER GLOVES', 1.00, 289.00, 289.00, 0.00, 46.24, 16.00, 289.00, 0.00, 1, NULL, 'M84N32pS9rJBq', 0, 'eX6NhN3b', 1, 1, 1, NULL, '2017-12-02 08:00:28', '2017-12-02 08:00:28'),
(125, 13, 48, 87, 'Staple Pins Big 66/14', 1.00, 249.00, 249.00, 0.00, 39.84, 16.00, 249.00, 0.00, 1, NULL, 'vg16AOnTpJnK7', 0, 'aO7NfMna', 1, 1, 1, NULL, '2017-12-02 08:00:28', '2017-12-02 08:00:28'),
(126, 13, 98, 27, 'File Dividers', 1.00, 224.00, 224.00, 0.00, 35.84, 16.00, 224.00, 0.00, 1, NULL, 'WLQWBQlFvK3ED', 0, 'e58Bc9jd', 1, 1, 1, NULL, '2017-12-02 08:00:28', '2017-12-02 08:00:28'),
(127, 13, 27, 149, 'SMALL PAPER PUNCH', 1.00, 238.00, 238.00, 0.00, 38.08, 16.00, 238.00, 0.00, 1, NULL, 'k5JMRmmULr2G8', 0, 'eVm4sjJd', 1, 1, 1, NULL, '2017-12-02 08:00:29', '2017-12-02 08:00:29'),
(128, 13, 60, 181, 'CE313', 1.00, 117.00, 117.00, 0.00, 18.72, 16.00, 117.00, 0.00, 1, NULL, 'mwxzvD7I4ryNw', 0, 'b2R3s8Gb', 1, 1, 1, NULL, '2017-12-02 08:00:29', '2017-12-02 08:00:29'),
(129, 13, 35, 111, 'HIGHLIGHTER', 1.00, 187.00, 187.00, 0.00, 29.92, 16.00, 187.00, 0.00, 1, NULL, 'ZV5jj0KhGVwN7', 0, 'dRgWT1me', 1, 1, 1, NULL, '2017-12-02 08:00:29', '2017-12-02 08:00:29'),
(130, 13, 16, 21, 'PAPER CLIPS 33MM', 1.00, 129.00, 129.00, 0.00, 20.64, 16.00, 129.00, 0.00, 1, NULL, 'yojK0wEIrLrkjY', 0, 'epgOUVWd', 1, 1, 1, NULL, '2017-12-02 08:00:29', '2017-12-02 08:00:29'),
(131, 14, 105, 61, 'CE413A', 1.00, 197.00, 197.00, 0.00, 31.52, 16.00, 197.00, 0.00, 1, NULL, 'oQE4YmVt08Q7X', 0, 'bY6oHPqd', 1, 1, 1, NULL, '2017-12-02 08:00:29', '2017-12-02 08:00:29'),
(132, 14, 74, 114, 'Rulers', 1.00, 215.00, 215.00, 0.00, 34.40, 16.00, 215.00, 0.00, 1, NULL, 'Ell2vL2u30QVqZ', 0, 'e0VqsWZb', 1, 1, 1, NULL, '2017-12-02 08:00:29', '2017-12-02 08:00:29'),
(133, 14, 35, 111, 'HIGHLIGHTER', 1.00, 187.00, 187.00, 0.00, 29.92, 16.00, 187.00, 0.00, 1, NULL, 'ZV5jj0KhGVwN7', 0, 'eVPOS64b', 1, 1, 1, NULL, '2017-12-02 08:00:29', '2017-12-02 08:00:29'),
(134, 14, 67, 119, 'DL Windowed Envelops', 1.00, 184.00, 184.00, 0.00, 29.44, 16.00, 184.00, 0.00, 1, NULL, 'KrG0KXxiZ434k', 0, 'erR0In3e', 1, 1, 1, NULL, '2017-12-02 08:00:30', '2017-12-02 08:00:30'),
(135, 14, 58, 111, 'CE311', 1.00, 249.00, 249.00, 0.00, 39.84, 16.00, 249.00, 0.00, 1, NULL, '3l47QYOTB0kzZ', 0, 'bYvviBvd', 1, 1, 1, NULL, '2017-12-02 08:00:30', '2017-12-02 08:00:30'),
(136, 14, 82, 26, 'Adhesives', 1.00, 160.00, 160.00, 0.00, 25.60, 16.00, 160.00, 0.00, 1, NULL, 'L7RY38wFzDPRr', 0, 'egLZs3Xa', 1, 1, 1, NULL, '2017-12-02 08:00:30', '2017-12-02 08:00:30'),
(137, 14, 44, 35, 'TRANSGLOBAL TAPES', 1.00, 157.00, 157.00, 0.00, 25.12, 16.00, 157.00, 0.00, 1, NULL, 'ERklPrKT27VzA', 0, 'dwm0c1pa', 1, 1, 1, NULL, '2017-12-02 08:00:30', '2017-12-02 08:00:30'),
(138, 14, 42, 87, 'SECURITY DECLARATION BOOKS', 1.00, 233.00, 233.00, 0.00, 37.28, 16.00, 233.00, 0.00, 1, NULL, '5QRJmoKT1xZ4N', 0, 'epQkfpja', 1, 1, 1, NULL, '2017-12-02 08:00:30', '2017-12-02 08:00:30'),
(139, 14, 13, 135, 'PRINTING PAPERS', 1.00, 139.00, 139.00, 0.00, 22.24, 16.00, 139.00, 0.00, 1, NULL, '2kYMql1uAgr8x', 0, 'bqYZFo8b', 1, 1, 1, NULL, '2017-12-02 08:00:30', '2017-12-02 08:00:30'),
(140, 14, 44, 35, 'TRANSGLOBAL TAPES', 1.00, 157.00, 157.00, 0.00, 25.12, 16.00, 157.00, 0.00, 1, NULL, 'ERklPrKT27VzA', 0, 'aMQ9i7ja', 1, 1, 1, NULL, '2017-12-02 08:00:31', '2017-12-02 08:00:31'),
(141, 15, 68, 79, 'DL Non-Windowed Envelopes', 1.00, 210.00, 210.00, 0.00, 33.60, 16.00, 210.00, 0.00, 1, NULL, 'Krv7AzpIPEPy7', 0, 'dL8Yf61d', 1, 1, 1, NULL, '2017-12-02 08:00:31', '2017-12-02 08:00:31'),
(142, 15, 17, 20, 'PAPER CLIPS  50MM', 1.00, 204.00, 204.00, 0.00, 32.64, 16.00, 204.00, 0.00, 1, NULL, '4QvAKNYC2EwOK', 0, 'e32Yc86d', 1, 1, 1, NULL, '2017-12-02 08:00:31', '2017-12-02 08:00:31'),
(143, 15, 59, 54, 'CE312', 1.00, 197.00, 197.00, 0.00, 31.52, 16.00, 197.00, 0.00, 1, NULL, '1WQ40D3cMMppPj', 0, 'e7LWSZRa', 1, 1, 1, NULL, '2017-12-02 08:00:31', '2017-12-02 08:00:31'),
(144, 15, 100, 35, 'Ledger book A4 2Q', 1.00, 155.00, 155.00, 0.00, 24.80, 16.00, 155.00, 0.00, 1, NULL, 'zKJMv3juZ3wDx', 0, 'b4R4u3Ne', 1, 1, 1, NULL, '2017-12-02 08:00:31', '2017-12-02 08:00:31'),
(145, 15, 105, 61, 'CE413A', 1.00, 197.00, 197.00, 0.00, 31.52, 16.00, 197.00, 0.00, 1, NULL, 'oQE4YmVt08Q7X', 0, 'e1rEinpa', 1, 1, 1, NULL, '2017-12-02 08:00:31', '2017-12-02 08:00:31'),
(146, 15, 49, 79, 'Hp320A', 1.00, 299.00, 299.00, 0.00, 47.84, 16.00, 299.00, 0.00, 1, NULL, '3Qvj4DnTNkKlX', 0, 'dBL9cDxa', 1, 1, 1, NULL, '2017-12-02 08:00:31', '2017-12-02 08:00:31'),
(147, 15, 103, 32, 'CE411A', 1.00, 264.00, 264.00, 0.00, 42.24, 16.00, 264.00, 0.00, 1, NULL, 'Qn0r3zycqOWjG', 0, 'dwmgIkKa', 1, 1, 1, NULL, '2017-12-02 08:00:32', '2017-12-02 08:00:32'),
(148, 15, 8, 192, 'EXPORTS STRONG ROOM RECORD BOOKS', 1.00, 175.00, 175.00, 0.00, 28.00, 16.00, 175.00, 0.00, 1, NULL, '4xO3O4nS0AD02', 0, 'b6RxIZ4b', 1, 1, 1, NULL, '2017-12-02 08:00:32', '2017-12-02 08:00:32'),
(149, 15, 47, 146, 'Ear Muffs', 1.00, 229.00, 229.00, 0.00, 36.64, 16.00, 229.00, 0.00, 1, NULL, 'BNPvqNZTl0RQ9', 0, 'aQ0Xtgwe', 1, 1, 1, NULL, '2017-12-02 08:00:32', '2017-12-02 08:00:32'),
(150, 15, 80, 88, 'Company Letter Heads', 1.00, 265.00, 265.00, 0.00, 42.40, 16.00, 265.00, 0.00, 1, NULL, 'KZ7qgjNHy7L2Z', 0, 'e9QBU7Qe', 1, 1, 1, NULL, '2017-12-02 08:00:32', '2017-12-02 08:00:32'),
(151, 16, 30, 148, 'STAMP INK', 1.00, 298.00, 298.00, 0.00, 47.68, 16.00, 298.00, 0.00, 1, NULL, 'NxAGpmqfxxDo8', 0, 'dJqjIOqb', 1, 1, 1, NULL, '2017-12-02 08:00:32', '2017-12-02 08:00:32'),
(152, 16, 82, 26, 'Adhesives', 1.00, 160.00, 160.00, 0.00, 25.60, 16.00, 160.00, 0.00, 1, NULL, 'L7RY38wFzDPRr', 0, 'dPZ9uV9a', 1, 1, 1, NULL, '2017-12-02 08:00:32', '2017-12-02 08:00:32'),
(153, 16, 54, 55, 'Hp541A', 1.00, 230.00, 230.00, 0.00, 36.80, 16.00, 230.00, 0.00, 1, NULL, 'ERQNrn7ingJAn', 0, 'avokcQBb', 1, 1, 1, NULL, '2017-12-02 08:00:32', '2017-12-02 08:00:32'),
(154, 16, 4, 194, 'A4 WRITING PADS', 1.00, 122.00, 122.00, 0.00, 19.52, 16.00, 122.00, 0.00, 1, NULL, 'jZn12JYUONXn3', 0, 'bqYmHZVb', 1, 1, 1, NULL, '2017-12-02 08:00:33', '2017-12-02 08:00:33'),
(155, 16, 101, 69, 'Ledger book A4 1Q', 1.00, 214.00, 214.00, 0.00, 34.24, 16.00, 214.00, 0.00, 1, NULL, 'DR4PPGWhmNVNw', 0, 'dRoJhrZe', 1, 1, 1, NULL, '2017-12-02 08:00:33', '2017-12-02 08:00:33'),
(156, 16, 95, 107, 'Pen Holders', 1.00, 164.00, 164.00, 0.00, 26.24, 16.00, 164.00, 0.00, 1, NULL, 'APYZP0RuKLL34', 0, 'erRls3le', 1, 1, 1, NULL, '2017-12-02 08:00:33', '2017-12-02 08:00:33'),
(157, 16, 63, 141, 'Q7553A', 1.00, 308.00, 308.00, 0.00, 49.28, 16.00, 308.00, 0.00, 1, NULL, '71AgYn4tAQM7x4', 0, 'e9QvuGwe', 1, 1, 1, NULL, '2017-12-02 08:00:33', '2017-12-02 08:00:33'),
(158, 16, 17, 20, 'PAPER CLIPS  50MM', 1.00, 204.00, 204.00, 0.00, 32.64, 16.00, 204.00, 0.00, 1, NULL, '4QvAKNYC2EwOK', 0, 'e7LxulZa', 1, 1, 1, NULL, '2017-12-02 08:00:33', '2017-12-02 08:00:33'),
(159, 16, 52, 65, 'Hp323A', 1.00, 185.00, 185.00, 0.00, 29.60, 16.00, 185.00, 0.00, 1, NULL, 'NxKOroRfoyvDw', 0, 'bqYqc8Bb', 1, 1, 1, NULL, '2017-12-02 08:00:34', '2017-12-02 08:00:34'),
(160, 16, 106, 76, 'Binder Clipps 51mm', 1.00, 294.00, 294.00, 0.00, 47.04, 16.00, 294.00, 0.00, 1, NULL, 'DkJZ10Au5jLD4P', 0, 'b86vI66z', 1, 1, 1, NULL, '2017-12-02 08:00:34', '2017-12-02 08:00:34'),
(161, 17, 13, 135, 'PRINTING PAPERS', 1.00, 139.00, 139.00, 0.00, 22.24, 16.00, 139.00, 0.00, 1, NULL, '48rm6zKH311Ay', 0, 'azKjSOmb', 1, 1, 1, NULL, '2017-12-02 08:00:34', '2017-12-02 08:00:34'),
(162, 17, 105, 61, 'CE413A', 1.00, 197.00, 197.00, 0.00, 31.52, 16.00, 197.00, 0.00, 1, NULL, 'oQE4YmVt08Q7X', 0, 'e328TWgd', 1, 1, 1, NULL, '2017-12-02 08:00:34', '2017-12-02 08:00:34'),
(163, 17, 7, 64, 'IMPORTS STRONG ROOM RECORD BOOKS', 1.00, 250.00, 250.00, 0.00, 40.00, 16.00, 250.00, 0.00, 1, NULL, 'wmG42oXfGzjrlg', 0, 'eVPRio2b', 1, 1, 1, NULL, '2017-12-02 08:00:34', '2017-12-02 08:00:34'),
(164, 17, 66, 5, 'A5 Branded Envelopes', 1.00, 182.00, 182.00, 0.00, 29.12, 16.00, 182.00, 0.00, 1, NULL, 'qxEnLj9t3NA8P', 0, 'b6REc72b', 1, 1, 1, NULL, '2017-12-02 08:00:34', '2017-12-02 08:00:34'),
(165, 17, 34, 159, 'Glue STICK', 1.00, 138.00, 138.00, 0.00, 22.08, 16.00, 138.00, 0.00, 1, NULL, 'RoQV942i3N546', 0, 'el5nuL1a', 1, 1, 1, NULL, '2017-12-02 08:00:34', '2017-12-02 08:00:34'),
(166, 17, 72, 46, 'A5Khaki brown  envelopes', 1.00, 237.00, 237.00, 0.00, 37.92, 16.00, 237.00, 0.00, 1, NULL, 'GZABXvytJNEgr', 0, 'e32WhL0d', 1, 1, 1, NULL, '2017-12-02 08:00:34', '2017-12-02 08:00:34'),
(167, 17, 27, 149, 'SMALL PAPER PUNCH', 1.00, 238.00, 238.00, 0.00, 38.08, 16.00, 238.00, 0.00, 1, NULL, 'k5JMRmmULr2G8', 0, 'boQxtEPe', 1, 1, 1, NULL, '2017-12-02 08:00:35', '2017-12-02 08:00:35'),
(168, 17, 34, 159, 'Glue STICK', 1.00, 138.00, 138.00, 0.00, 22.08, 16.00, 138.00, 0.00, 1, NULL, 'RoQV942i3N546', 0, 'Be32MsZd', 1, 1, 1, NULL, '2017-12-02 08:00:35', '2017-12-02 08:00:35'),
(169, 17, 47, 146, 'Ear Muffs', 1.00, 229.00, 229.00, 0.00, 36.64, 16.00, 229.00, 0.00, 1, NULL, 'wmX7y6MU1Xxk1', 0, 'epQJCYra', 1, 1, 1, NULL, '2017-12-02 08:00:35', '2017-12-02 08:00:35'),
(170, 17, 30, 148, 'STAMP INK', 1.00, 298.00, 298.00, 0.00, 47.68, 16.00, 298.00, 0.00, 1, NULL, 'r8WvjPGu6DyKm', 0, 'bqYgSvvb', 1, 1, 1, NULL, '2017-12-02 08:00:35', '2017-12-02 08:00:35'),
(171, 18, 28, 183, 'PENCILS', 1.00, 312.00, 312.00, 0.00, 49.92, 16.00, 312.00, 0.00, 1, NULL, '0VxRVgYhQW5B', 0, 'aOyWFZYd', 1, 1, 1, NULL, '2017-12-02 08:00:35', '2017-12-02 08:00:35'),
(172, 18, 61, 60, 'CE505A', 1.00, 118.00, 118.00, 0.00, 18.88, 16.00, 118.00, 0.00, 1, NULL, '2vQ51yDIkMvB', 0, 'e324FKpd', 1, 1, 1, NULL, '2017-12-02 08:00:35', '2017-12-02 08:00:35'),
(173, 18, 75, 49, 'Flip chart', 1.00, 312.00, 312.00, 0.00, 49.92, 16.00, 312.00, 0.00, 1, NULL, 'Qnr8gD0i3Rz1w', 0, 'ejqys9md', 1, 1, 1, NULL, '2017-12-02 08:00:35', '2017-12-02 08:00:35'),
(174, 18, 73, 88, 'safety boots', 1.00, 205.00, 205.00, 0.00, 32.80, 16.00, 205.00, 0.00, 1, NULL, '0grBDLjTGgy3JK', 0, 'bW7gHl6b', 1, 1, 1, NULL, '2017-12-02 08:00:35', '2017-12-02 08:00:35'),
(175, 18, 100, 35, 'Ledger book A4 2Q', 1.00, 155.00, 155.00, 0.00, 24.80, 16.00, 155.00, 0.00, 1, NULL, 'xG2qPoOs5PR3g', 0, 'egL1HAna', 1, 1, 1, NULL, '2017-12-02 08:00:35', '2017-12-02 08:00:35'),
(176, 18, 16, 21, 'PAPER CLIPS 33MM', 1.00, 129.00, 129.00, 0.00, 20.64, 16.00, 129.00, 0.00, 1, NULL, 'yojK0wEIrLrkjY', 0, 'b6XocJGe', 1, 1, 1, NULL, '2017-12-02 08:00:36', '2017-12-02 08:00:36'),
(177, 18, 80, 88, 'Company Letter Heads', 1.00, 265.00, 265.00, 0.00, 42.40, 16.00, 265.00, 0.00, 1, NULL, 'KZ7qgjNHy7L2Z', 0, 'bD1khkgd', 1, 1, 1, NULL, '2017-12-02 08:00:36', '2017-12-02 08:00:36'),
(178, 18, 72, 46, 'A5Khaki brown  envelopes', 1.00, 237.00, 237.00, 0.00, 37.92, 16.00, 237.00, 0.00, 1, NULL, 'GZABXvytJNEgr', 0, 'b81qiOld', 1, 1, 1, NULL, '2017-12-02 08:00:36', '2017-12-02 08:00:36'),
(179, 18, 3, 44, '2QUIRE COUNTER BOOKS', 1.00, 157.00, 157.00, 0.00, 25.12, 16.00, 157.00, 0.00, 1, NULL, 'nZ8mRkGuApyNz', 0, 'aOMySkxd', 1, 1, 1, NULL, '2017-12-02 08:00:36', '2017-12-02 08:00:36'),
(180, 18, 87, 139, 'Security Stickers', 1.00, 274.00, 274.00, 0.00, 43.84, 16.00, 274.00, 0.00, 1, NULL, 'gJmjNqyfLRx25', 0, 'dROOFvvV', 1, 1, 1, NULL, '2017-12-02 08:00:36', '2017-12-02 08:00:36'),
(181, 19, 105, 61, 'CE413A', 1.00, 197.00, 197.00, 0.00, 31.52, 16.00, 197.00, 0.00, 1, NULL, 'oQE4YmVt08Q7X', 0, 'e5Q7tv4e', 1, 1, 1, NULL, '2017-12-02 08:00:37', '2017-12-02 08:00:37'),
(182, 19, 27, 149, 'SMALL PAPER PUNCH', 1.00, 238.00, 238.00, 0.00, 38.08, 16.00, 238.00, 0.00, 1, NULL, 'k5JMRmmULr2G8', 0, 'aANMTV4b', 1, 1, 1, NULL, '2017-12-02 08:00:37', '2017-12-02 08:00:37'),
(183, 19, 45, 9, 'RUBBER GLOVES', 1.00, 252.00, 252.00, 0.00, 40.32, 16.00, 252.00, 0.00, 1, NULL, 'XLXADA0FZ83y1', 0, 'b6X9CV6e', 1, 1, 1, NULL, '2017-12-02 08:00:37', '2017-12-02 08:00:37'),
(184, 19, 66, 5, 'A5 Branded Envelopes', 1.00, 182.00, 182.00, 0.00, 29.12, 16.00, 182.00, 0.00, 1, NULL, 'qxEnLj9t3NA8P', 0, 'e0Y9uK8a', 1, 1, 1, NULL, '2017-12-02 08:00:37', '2017-12-02 08:00:37'),
(185, 19, 63, 141, 'Q7553A', 1.00, 308.00, 308.00, 0.00, 49.28, 16.00, 308.00, 0.00, 1, NULL, '71AgYn4tAQM7x4', 0, 'ep8RiRZe', 1, 1, 1, NULL, '2017-12-02 08:00:37', '2017-12-02 08:00:37'),
(186, 19, 64, 90, 'Epson IQ 2190', 1.00, 303.00, 303.00, 0.00, 48.48, 16.00, 303.00, 0.00, 1, NULL, 'oV5jB0gTnP4MK', 0, 'bq7ACMve', 1, 1, 1, NULL, '2017-12-02 08:00:37', '2017-12-02 08:00:37'),
(187, 19, 3, 44, '2QUIRE COUNTER BOOKS', 1.00, 157.00, 157.00, 0.00, 25.12, 16.00, 157.00, 0.00, 1, NULL, 'nZ8mRkGuApyNz', 0, 'ejZOCY6e', 1, 1, 1, NULL, '2017-12-02 08:00:37', '2017-12-02 08:00:37'),
(188, 19, 42, 87, 'SECURITY DECLARATION BOOKS', 1.00, 233.00, 233.00, 0.00, 37.28, 16.00, 233.00, 0.00, 1, NULL, '5QRJmoKT1xZ4N', 0, 'dJylSrJb', 1, 1, 1, NULL, '2017-12-02 08:00:38', '2017-12-02 08:00:38'),
(189, 19, 28, 183, 'PENCILS', 1.00, 312.00, 312.00, 0.00, 49.92, 16.00, 312.00, 0.00, 1, NULL, 'oQo7RLVcrvgN7Q', 0, 'b2x2Um3e', 1, 1, 1, NULL, '2017-12-02 08:00:38', '2017-12-02 08:00:38'),
(190, 19, 45, 9, 'RUBBER GLOVES', 1.00, 252.00, 252.00, 0.00, 40.32, 16.00, 252.00, 0.00, 1, NULL, 'NkB4lvKiWwvRD', 0, 'eVAnsnRd', 1, 1, 1, NULL, '2017-12-02 08:00:38', '2017-12-02 08:00:38'),
(191, 20, 58, 111, 'CE311', 1.00, 249.00, 249.00, 0.00, 39.84, 16.00, 249.00, 0.00, 1, NULL, 'wj904j1SWxgz5', 0, 'eZYXUlXd', 1, 1, 1, NULL, '2017-12-02 08:00:38', '2017-12-02 08:00:38'),
(192, 20, 88, 175, 'Paper Tray', 1.00, 257.00, 257.00, 0.00, 41.12, 16.00, 257.00, 0.00, 1, NULL, 'wVN2920tGnz35', 0, 'dGvXs4Vb', 1, 1, 1, NULL, '2017-12-02 08:00:38', '2017-12-02 08:00:38'),
(193, 20, 12, 120, 'A4 BRANDED ENVELOPES', 1.00, 110.00, 110.00, 0.00, 17.60, 16.00, 110.00, 0.00, 1, NULL, 'vgEzWyzcYDM7X', 0, 'e3Q3iM3b', 1, 1, 1, NULL, '2017-12-02 08:00:38', '2017-12-02 08:00:38'),
(194, 20, 4, 194, 'A4 WRITING PADS', 1.00, 122.00, 122.00, 0.00, 19.52, 16.00, 122.00, 0.00, 1, NULL, 'jZn12JYUONXn3', 0, 'avl5hppd', 1, 1, 1, NULL, '2017-12-02 08:00:38', '2017-12-02 08:00:38'),
(195, 20, 32, 196, 'SHARPENER', 1.00, 248.00, 248.00, 0.00, 39.68, 16.00, 248.00, 0.00, 1, NULL, 'VPQBA81CxxOvqK', 0, 'bYWBCApe', 1, 1, 1, NULL, '2017-12-02 08:00:39', '2017-12-02 08:00:39'),
(196, 20, 106, 76, 'Binder Clipps 51mm', 1.00, 294.00, 294.00, 0.00, 47.04, 16.00, 294.00, 0.00, 1, NULL, 'DkJZ10Au5jLD4P', 0, 'eZYosvyd', 1, 1, 1, NULL, '2017-12-02 08:00:39', '2017-12-02 08:00:39'),
(197, 20, 92, 6, 'GIANT Stapler', 1.00, 237.00, 237.00, 0.00, 37.92, 16.00, 237.00, 0.00, 1, NULL, 'PN9kKZKuPykOP', 0, 'dJyRuEpb', 1, 1, 1, NULL, '2017-12-02 08:00:39', '2017-12-02 08:00:39'),
(198, 20, 45, 9, 'RUBBER GLOVES', 1.00, 252.00, 252.00, 0.00, 40.32, 16.00, 252.00, 0.00, 1, NULL, 'Qnp1wENtGKJYV', 0, 'ejZNsrZe', 1, 1, 1, NULL, '2017-12-02 08:00:39', '2017-12-02 08:00:39'),
(199, 20, 16, 21, 'PAPER CLIPS 33MM', 1.00, 129.00, 129.00, 0.00, 20.64, 16.00, 129.00, 0.00, 1, NULL, 'yojK0wEIrLrkjY', 0, 'bmOjUV1e', 1, 1, 1, NULL, '2017-12-02 08:00:39', '2017-12-02 08:00:39'),
(200, 20, 75, 49, 'Flip chart', 1.00, 312.00, 312.00, 0.00, 49.92, 16.00, 312.00, 0.00, 1, NULL, 'Qnr8gD0i3Rz1w', 0, 'dROVc4Le', 1, 1, 1, NULL, '2017-12-02 08:00:40', '2017-12-02 08:00:40');

-- --------------------------------------------------------

--
-- Table structure for table `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `ip_address` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_agent` text COLLATE utf8mb4_unicode_ci,
  `payload` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_activity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE `settings` (
  `id` int(10) UNSIGNED NOT NULL,
  `appTheme` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'skin-purple',
  `blackColor` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '#494945',
  `cyanColor` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '#00FFFF',
  `magentaColor` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '#FF00FF',
  `yellowColor` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '#FFFF00',
  `barGraphdefaultColor` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '#494945',
  `useAreaForSingleColor` tinyint(1) NOT NULL DEFAULT '1',
  `printersDowntime` int(11) NOT NULL DEFAULT '24',
  `dailyMinimum` int(11) NOT NULL DEFAULT '0',
  `dailyMaximum` int(11) NOT NULL DEFAULT '2750',
  `paperReam` int(11) NOT NULL DEFAULT '500',
  `paginationDefault` int(11) NOT NULL DEFAULT '10',
  `userId` int(11) NOT NULL,
  `staffId` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`id`, `appTheme`, `blackColor`, `cyanColor`, `magentaColor`, `yellowColor`, `barGraphdefaultColor`, `useAreaForSingleColor`, `printersDowntime`, `dailyMinimum`, `dailyMaximum`, `paperReam`, `paginationDefault`, `userId`, `staffId`, `created_at`, `updated_at`) VALUES
(1, 'skin-purple', '#494945', '#00FFFF', '#FF00FF', '#FFFF00', '#494945', 1, 24, 0, 2750, 500, 10, 2, 0, '2018-01-08 02:46:12', '2018-01-08 02:46:12');

-- --------------------------------------------------------

--
-- Table structure for table `staff`
--

CREATE TABLE `staff` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `salutation` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `password` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `contactName` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `jobTitle` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `departmentId` int(11) DEFAULT NULL,
  `shippingZoneId` int(10) UNSIGNED DEFAULT NULL,
  `companyId` int(10) UNSIGNED NOT NULL,
  `updatedBy` int(10) UNSIGNED NOT NULL,
  `createdBy` int(10) UNSIGNED NOT NULL,
  `hash` text COLLATE utf8mb4_unicode_ci,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `staff`
--

INSERT INTO `staff` (`id`, `name`, `email`, `salutation`, `password`, `contactName`, `jobTitle`, `departmentId`, `shippingZoneId`, `companyId`, `updatedBy`, `createdBy`, `hash`, `remember_token`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 'Dennis Wanyoike', 'support@codedcell.com', NULL, '$2y$10$l.g1Ar2OLpq4DK3qeMuoMuSqylrBwFh/wAjDYGNKLku5j3fLCW9ny', NULL, NULL, 6, NULL, 1, 0, 0, NULL, NULL, NULL, '2017-12-02 07:52:33', '2017-12-02 07:52:33'),
(2, 'Ebony Keeling', 'stanton.angeline@reynolds.com', 'Mr.', '', NULL, NULL, 4, NULL, 1, 0, 0, NULL, NULL, NULL, '2017-12-02 07:52:33', '2017-12-02 07:52:33'),
(3, 'Aliza Ratke', 'njacobson@gmail.com', 'Prof.', '', NULL, NULL, 8, NULL, 1, 0, 0, NULL, NULL, NULL, '2017-12-02 07:52:33', '2017-12-02 07:52:33'),
(4, 'Cleora Schuppe', 'wilkinson.alexanne@hotmail.com', 'Mr.', '', NULL, NULL, 8, NULL, 1, 0, 0, NULL, NULL, NULL, '2017-12-02 07:52:33', '2017-12-02 07:52:33'),
(5, 'Jonatan Greenfelder', 'rcremin@gmail.com', 'Dr.', '', NULL, NULL, 11, NULL, 1, 0, 0, NULL, NULL, NULL, '2017-12-02 07:52:33', '2017-12-02 07:52:33'),
(6, 'Darien Hermiston', 'karina52@prohaska.net', 'Mrs.', '', NULL, NULL, 15, NULL, 1, 0, 0, NULL, NULL, NULL, '2017-12-02 07:52:34', '2017-12-02 07:52:34'),
(7, 'Riley Koelpin', 'dmayer@howell.com', 'Dr.', '', NULL, NULL, 12, NULL, 1, 0, 0, NULL, NULL, NULL, '2017-12-02 07:52:34', '2017-12-02 07:52:34'),
(8, 'Dr. Luther Shields Sr.', 'dustin22@schmidt.com', 'Dr.', '', NULL, NULL, 8, NULL, 1, 0, 0, NULL, NULL, NULL, '2017-12-02 07:52:34', '2017-12-02 07:52:34'),
(9, 'Marguerite Kub III', 'cbruen@hotmail.com', 'Mrs.', '', NULL, NULL, 10, NULL, 1, 0, 0, NULL, NULL, NULL, '2017-12-02 07:52:34', '2017-12-02 07:52:34'),
(10, 'Dannie Lueilwitz', 'sven00@runte.net', 'Dr.', '', NULL, NULL, 9, NULL, 1, 0, 0, NULL, NULL, NULL, '2017-12-02 07:52:34', '2017-12-02 07:52:34'),
(11, 'Ken Tromp I', 'dawn04@kub.com', 'Miss', '', NULL, NULL, 7, NULL, 1, 0, 0, NULL, NULL, NULL, '2017-12-02 07:52:35', '2017-12-02 07:52:35'),
(12, 'Prof. Marco Wintheiser IV', 'kohler.coby@nienow.org', 'Ms.', '', NULL, NULL, 3, NULL, 1, 0, 0, NULL, NULL, NULL, '2017-12-02 07:52:35', '2017-12-02 07:52:35'),
(13, 'Dr. Oleta Tromp', 'lora.rolfson@gmail.com', 'Ms.', '', NULL, NULL, 7, NULL, 1, 0, 0, NULL, NULL, NULL, '2017-12-02 07:52:35', '2017-12-02 07:52:35'),
(14, 'Prof. Arthur McClure', 'darryl.legros@ledner.net', 'Mrs.', '', NULL, NULL, 4, NULL, 1, 0, 0, NULL, NULL, NULL, '2017-12-02 07:52:35', '2017-12-02 07:52:35'),
(15, 'Emilia Kuvalis IV', 'cgerhold@bartell.com', 'Dr.', '', NULL, NULL, 3, NULL, 1, 0, 0, NULL, NULL, NULL, '2017-12-02 07:52:35', '2017-12-02 07:52:35'),
(16, 'Dr. Kieran Windler DVM', 'sdaniel@feeney.org', 'Prof.', '', NULL, NULL, 2, NULL, 1, 0, 0, NULL, NULL, NULL, '2017-12-02 07:52:35', '2017-12-02 07:52:35'),
(17, 'Miss Nova Medhurst', 'istrosin@hahn.com', 'Ms.', '', NULL, NULL, 11, NULL, 1, 0, 0, NULL, NULL, NULL, '2017-12-02 07:52:35', '2017-12-02 07:52:35'),
(18, 'Prof. Malcolm Huels PhD', 'bettye96@hotmail.com', 'Miss', '', NULL, NULL, 4, NULL, 1, 0, 0, NULL, NULL, NULL, '2017-12-02 07:52:36', '2017-12-02 07:52:36'),
(19, 'Garret Deckow', 'fleta.beahan@barrows.net', 'Miss', '', NULL, NULL, 1, NULL, 1, 0, 0, NULL, NULL, NULL, '2017-12-02 07:52:36', '2017-12-02 07:52:36'),
(20, 'Emanuel Kuphal', 'ayla.kreiger@johnston.info', 'Prof.', '', NULL, NULL, 4, NULL, 1, 0, 0, NULL, NULL, NULL, '2017-12-02 07:52:37', '2017-12-02 07:52:37'),
(21, 'Prof. Perry Farrell', 'orlando19@hamill.com', 'Prof.', '', NULL, NULL, 3, NULL, 1, 0, 0, NULL, NULL, NULL, '2017-12-02 07:52:37', '2017-12-02 07:52:37'),
(22, 'Ara O\'Connell Jr.', 'morgan61@waters.com', 'Miss', '', NULL, NULL, 13, NULL, 1, 0, 0, NULL, NULL, NULL, '2017-12-02 07:52:37', '2017-12-02 07:52:37'),
(23, 'Neva Barrows', 'hane.monica@hotmail.com', 'Dr.', '', NULL, NULL, 6, NULL, 1, 0, 0, NULL, NULL, NULL, '2017-12-02 07:52:37', '2017-12-02 07:52:37'),
(24, 'Leonardo Rice I', 'beverly.leffler@gmail.com', 'Mrs.', '', NULL, NULL, 1, NULL, 1, 0, 0, NULL, NULL, NULL, '2017-12-02 07:52:37', '2017-12-02 07:52:37'),
(25, 'Alysson Dicki', 'owyman@yahoo.com', 'Miss', '', NULL, NULL, 3, NULL, 1, 0, 0, NULL, NULL, NULL, '2017-12-02 07:52:38', '2017-12-02 07:52:38'),
(26, 'Candelario Hegmann', 'heaney.theodora@rohan.com', 'Prof.', '', NULL, NULL, 9, NULL, 1, 0, 0, NULL, NULL, NULL, '2017-12-02 07:52:38', '2017-12-02 07:52:38'),
(27, 'Jarret Stanton', 'gpurdy@yahoo.com', 'Mr.', '', NULL, NULL, 3, NULL, 1, 0, 0, NULL, NULL, NULL, '2017-12-02 07:52:38', '2017-12-02 07:52:38'),
(28, 'Prof. Aurelia Keeling II', 'bhalvorson@cremin.biz', 'Prof.', '', NULL, NULL, 6, NULL, 1, 0, 0, NULL, NULL, NULL, '2017-12-02 07:52:38', '2017-12-02 07:52:38'),
(29, 'Jules Treutel', 'romaguera.fausto@hotmail.com', 'Prof.', '', NULL, NULL, 7, NULL, 1, 0, 0, NULL, NULL, NULL, '2017-12-02 07:52:38', '2017-12-02 07:52:38'),
(30, 'Candelario Jenkins', 'ozieme@kilback.com', 'Ms.', '', NULL, NULL, 5, NULL, 1, 0, 0, NULL, NULL, NULL, '2017-12-02 07:52:39', '2017-12-02 07:52:39'),
(31, 'Xander Hauck', 'litzy04@bogisich.com', 'Dr.', '', NULL, NULL, 7, NULL, 1, 0, 0, NULL, NULL, NULL, '2017-12-02 07:52:39', '2017-12-02 07:52:39'),
(32, 'Michele Schneider', 'rkuphal@gmail.com', 'Dr.', '', NULL, NULL, 2, NULL, 1, 0, 0, NULL, NULL, NULL, '2017-12-02 07:52:39', '2017-12-02 07:52:39'),
(33, 'Tad Huel II', 'jarrell62@labadie.com', 'Dr.', '', NULL, NULL, 13, NULL, 1, 0, 0, NULL, NULL, NULL, '2017-12-02 07:52:39', '2017-12-02 07:52:39'),
(34, 'Alysa Kirlin MD', 'evandervort@morar.net', 'Prof.', '', NULL, NULL, 7, NULL, 1, 0, 0, NULL, NULL, NULL, '2017-12-02 07:52:39', '2017-12-02 07:52:39'),
(35, 'Vallie Stokes PhD', 'oda.mcglynn@stiedemann.com', 'Dr.', '', NULL, NULL, 7, NULL, 1, 0, 0, NULL, NULL, NULL, '2017-12-02 07:52:40', '2017-12-02 07:52:40'),
(36, 'Agustin Davis', 'rbeatty@beier.biz', 'Mr.', '', NULL, NULL, 11, NULL, 1, 0, 0, NULL, NULL, NULL, '2017-12-02 07:52:40', '2017-12-02 07:52:40'),
(37, 'Enrico Becker', 'gonzalo78@hotmail.com', 'Mr.', '', NULL, NULL, 5, NULL, 1, 0, 0, NULL, NULL, NULL, '2017-12-02 07:52:40', '2017-12-02 07:52:40'),
(38, 'Prof. Loyce Osinski', 'qmacejkovic@beahan.info', 'Ms.', '', NULL, NULL, 15, NULL, 1, 0, 0, NULL, NULL, NULL, '2017-12-02 07:52:40', '2017-12-02 07:52:40'),
(39, 'Dr. David Koelpin', 'fbogan@block.biz', 'Mr.', '', NULL, NULL, 7, NULL, 1, 0, 0, NULL, NULL, NULL, '2017-12-02 07:52:41', '2017-12-02 07:52:41'),
(40, 'Lexi Hintz', 'zswaniawski@hand.biz', 'Prof.', '', NULL, NULL, 10, NULL, 1, 0, 0, NULL, NULL, NULL, '2017-12-02 07:52:41', '2017-12-02 07:52:41'),
(41, 'Duane Larson I', 'liliana.kessler@bauch.com', 'Prof.', '', NULL, NULL, 8, NULL, 1, 0, 0, NULL, NULL, NULL, '2017-12-02 07:52:41', '2017-12-02 07:52:41');

-- --------------------------------------------------------

--
-- Table structure for table `stock_audits`
--

CREATE TABLE `stock_audits` (
  `id` int(10) UNSIGNED NOT NULL,
  `productId` int(10) UNSIGNED NOT NULL,
  `stockOperation` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `oldValues` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `newValues` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `narration` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `oldQuantity` double(16,2) DEFAULT NULL,
  `newQuantity` double DEFAULT NULL,
  `username` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `stock_audits`
--

INSERT INTO `stock_audits` (`id`, `productId`, `stockOperation`, `oldValues`, `newValues`, `narration`, `oldQuantity`, `newQuantity`, `username`, `created_at`, `updated_at`) VALUES
(1, 1, 'Product Created', 'a:0:{}', 'a:23:{s:11:\"productName\";s:20:\"4QUIRE COUNTER BOOKS\";s:13:\"productSerial\";s:4:\"FEJN\";s:6:\"amount\";i:49;s:8:\"location\";s:5:\"Store\";s:8:\"unitCost\";i:250;s:12:\"sellingPrice\";i:270;s:13:\"reorderAmount\";i:4;s:10:\"expiryDate\";s:10:\"2002-04-29\";s:9:\"companyId\";i:1;s:20:\"productSpecification\";s:64:\"Exercitationem necessitatibus consequatur et ipsum nisi tenetur.\";s:15:\"productCurrency\";s:3:\"USD\";s:13:\"productWeight\";i:65;s:14:\"productTaxRate\";i:16;s:19:\"productManufacturer\";s:14:\"McLaughlin LLC\";s:12:\"categoryName\";s:11:\"Electronics\";s:10:\"categoryId\";i:3;s:19:\"usesMultipleStorage\";b:0;s:22:\"productMeasurementUnit\";s:2:\"KG\";s:7:\"barcode\";s:12:\"663374633849\";s:9:\"createdBy\";i:1;s:10:\"updated_at\";s:19:\"2017-12-02 10:53:04\";s:10:\"created_at\";s:19:\"2017-12-02 10:53:04\";s:2:\"id\";i:1;}', '', NULL, NULL, 'Dennis Wanyoike', '2017-12-02 07:53:04', '2017-12-02 07:53:04'),
(2, 1, 'Product Updated', 'a:0:{}', 'a:25:{s:11:\"productName\";s:20:\"4QUIRE COUNTER BOOKS\";s:13:\"productSerial\";s:4:\"FEJN\";s:6:\"amount\";i:49;s:8:\"location\";s:5:\"Store\";s:8:\"unitCost\";i:250;s:12:\"sellingPrice\";i:270;s:13:\"reorderAmount\";i:4;s:10:\"expiryDate\";s:10:\"2002-04-29\";s:9:\"companyId\";i:1;s:20:\"productSpecification\";s:64:\"Exercitationem necessitatibus consequatur et ipsum nisi tenetur.\";s:15:\"productCurrency\";s:3:\"USD\";s:13:\"productWeight\";i:65;s:14:\"productTaxRate\";i:16;s:19:\"productManufacturer\";s:14:\"McLaughlin LLC\";s:12:\"categoryName\";s:11:\"Electronics\";s:10:\"categoryId\";i:3;s:19:\"usesMultipleStorage\";b:0;s:22:\"productMeasurementUnit\";s:2:\"KG\";s:7:\"barcode\";s:12:\"663374633849\";s:9:\"createdBy\";i:1;s:10:\"updated_at\";s:19:\"2017-12-02 10:53:04\";s:10:\"created_at\";s:19:\"2017-12-02 10:53:04\";s:2:\"id\";i:1;s:4:\"hash\";s:8:\"EegJfLOd\";s:9:\"updatedBy\";i:1;}', '', NULL, NULL, 'Dennis Wanyoike', '2017-12-02 07:53:04', '2017-12-02 07:53:04'),
(3, 2, 'Product Created', 'a:0:{}', 'a:23:{s:11:\"productName\";s:20:\"3QUIRE COUNTER BOOKS\";s:13:\"productSerial\";s:4:\"LBOM\";s:6:\"amount\";i:49;s:8:\"location\";s:5:\"Store\";s:8:\"unitCost\";i:206;s:12:\"sellingPrice\";i:214;s:13:\"reorderAmount\";i:3;s:10:\"expiryDate\";s:10:\"1990-10-30\";s:9:\"companyId\";i:1;s:20:\"productSpecification\";s:85:\"Iste neque earum porro. Repudiandae sint quae quaerat consectetur enim aut molestiae.\";s:15:\"productCurrency\";s:3:\"USD\";s:13:\"productWeight\";i:6;s:14:\"productTaxRate\";i:16;s:19:\"productManufacturer\";s:17:\"Prosacco and Sons\";s:12:\"categoryName\";s:10:\"Stationery\";s:10:\"categoryId\";i:1;s:19:\"usesMultipleStorage\";b:0;s:22:\"productMeasurementUnit\";s:2:\"KG\";s:7:\"barcode\";s:12:\"311590816774\";s:9:\"createdBy\";i:1;s:10:\"updated_at\";s:19:\"2017-12-02 10:53:05\";s:10:\"created_at\";s:19:\"2017-12-02 10:53:05\";s:2:\"id\";i:2;}', '', NULL, NULL, 'Dennis Wanyoike', '2017-12-02 07:53:05', '2017-12-02 07:53:05'),
(4, 2, 'Product Updated', 'a:0:{}', 'a:25:{s:11:\"productName\";s:20:\"3QUIRE COUNTER BOOKS\";s:13:\"productSerial\";s:4:\"LBOM\";s:6:\"amount\";i:49;s:8:\"location\";s:5:\"Store\";s:8:\"unitCost\";i:206;s:12:\"sellingPrice\";i:214;s:13:\"reorderAmount\";i:3;s:10:\"expiryDate\";s:10:\"1990-10-30\";s:9:\"companyId\";i:1;s:20:\"productSpecification\";s:85:\"Iste neque earum porro. Repudiandae sint quae quaerat consectetur enim aut molestiae.\";s:15:\"productCurrency\";s:3:\"USD\";s:13:\"productWeight\";i:6;s:14:\"productTaxRate\";i:16;s:19:\"productManufacturer\";s:17:\"Prosacco and Sons\";s:12:\"categoryName\";s:10:\"Stationery\";s:10:\"categoryId\";i:1;s:19:\"usesMultipleStorage\";b:0;s:22:\"productMeasurementUnit\";s:2:\"KG\";s:7:\"barcode\";s:12:\"311590816774\";s:9:\"createdBy\";i:1;s:10:\"updated_at\";s:19:\"2017-12-02 10:53:05\";s:10:\"created_at\";s:19:\"2017-12-02 10:53:05\";s:2:\"id\";i:2;s:4:\"hash\";s:8:\"gepgh7Jd\";s:9:\"updatedBy\";i:1;}', '', NULL, NULL, 'Dennis Wanyoike', '2017-12-02 07:53:05', '2017-12-02 07:53:05'),
(5, 3, 'Product Created', 'a:0:{}', 'a:23:{s:11:\"productName\";s:20:\"2QUIRE COUNTER BOOKS\";s:13:\"productSerial\";s:9:\"IKRLHROXI\";s:6:\"amount\";i:49;s:8:\"location\";s:5:\"Store\";s:8:\"unitCost\";i:152;s:12:\"sellingPrice\";i:157;s:13:\"reorderAmount\";i:13;s:10:\"expiryDate\";s:10:\"1986-08-24\";s:9:\"companyId\";i:1;s:20:\"productSpecification\";s:113:\"Natus doloribus dolor sapiente alias dolorem perferendis. Cumque aut ratione ab laboriosam porro possimus veniam.\";s:15:\"productCurrency\";s:3:\"USD\";s:13:\"productWeight\";i:17;s:14:\"productTaxRate\";i:16;s:19:\"productManufacturer\";s:27:\"Friesen, Erdman and Hackett\";s:12:\"categoryName\";s:10:\"Vegetables\";s:10:\"categoryId\";i:5;s:19:\"usesMultipleStorage\";b:1;s:22:\"productMeasurementUnit\";s:2:\"KG\";s:7:\"barcode\";s:12:\"616184901059\";s:9:\"createdBy\";i:1;s:10:\"updated_at\";s:19:\"2017-12-02 10:53:06\";s:10:\"created_at\";s:19:\"2017-12-02 10:53:06\";s:2:\"id\";i:3;}', '', NULL, NULL, 'Dennis Wanyoike', '2017-12-02 07:53:06', '2017-12-02 07:53:06'),
(6, 3, 'Product Updated', 'a:0:{}', 'a:25:{s:11:\"productName\";s:20:\"2QUIRE COUNTER BOOKS\";s:13:\"productSerial\";s:9:\"IKRLHROXI\";s:6:\"amount\";i:49;s:8:\"location\";s:5:\"Store\";s:8:\"unitCost\";i:152;s:12:\"sellingPrice\";i:157;s:13:\"reorderAmount\";i:13;s:10:\"expiryDate\";s:10:\"1986-08-24\";s:9:\"companyId\";i:1;s:20:\"productSpecification\";s:113:\"Natus doloribus dolor sapiente alias dolorem perferendis. Cumque aut ratione ab laboriosam porro possimus veniam.\";s:15:\"productCurrency\";s:3:\"USD\";s:13:\"productWeight\";i:17;s:14:\"productTaxRate\";i:16;s:19:\"productManufacturer\";s:27:\"Friesen, Erdman and Hackett\";s:12:\"categoryName\";s:10:\"Vegetables\";s:10:\"categoryId\";i:5;s:19:\"usesMultipleStorage\";b:1;s:22:\"productMeasurementUnit\";s:2:\"KG\";s:7:\"barcode\";s:12:\"616184901059\";s:9:\"createdBy\";i:1;s:10:\"updated_at\";s:19:\"2017-12-02 10:53:06\";s:10:\"created_at\";s:19:\"2017-12-02 10:53:06\";s:2:\"id\";i:3;s:4:\"hash\";s:8:\"QbW7im2b\";s:9:\"updatedBy\";i:1;}', '', NULL, NULL, 'Dennis Wanyoike', '2017-12-02 07:53:06', '2017-12-02 07:53:06'),
(7, 4, 'Product Created', 'a:0:{}', 'a:23:{s:11:\"productName\";s:15:\"A4 WRITING PADS\";s:13:\"productSerial\";s:19:\"63EED3HMACQ7JJ98OWW\";s:6:\"amount\";i:49;s:8:\"location\";s:5:\"Store\";s:8:\"unitCost\";i:111;s:12:\"sellingPrice\";i:122;s:13:\"reorderAmount\";i:1;s:10:\"expiryDate\";s:10:\"2012-06-12\";s:9:\"companyId\";i:1;s:20:\"productSpecification\";s:32:\"Velit libero esse atque aliquam.\";s:15:\"productCurrency\";s:3:\"USD\";s:13:\"productWeight\";i:94;s:14:\"productTaxRate\";i:16;s:19:\"productManufacturer\";s:17:\"Schneider-Jenkins\";s:12:\"categoryName\";s:10:\"Stationery\";s:10:\"categoryId\";i:1;s:19:\"usesMultipleStorage\";b:1;s:22:\"productMeasurementUnit\";s:2:\"KG\";s:7:\"barcode\";s:12:\"566941189995\";s:9:\"createdBy\";i:1;s:10:\"updated_at\";s:19:\"2017-12-02 10:53:07\";s:10:\"created_at\";s:19:\"2017-12-02 10:53:07\";s:2:\"id\";i:4;}', '', NULL, NULL, 'Dennis Wanyoike', '2017-12-02 07:53:07', '2017-12-02 07:53:07'),
(8, 4, 'Product Updated', 'a:0:{}', 'a:25:{s:11:\"productName\";s:15:\"A4 WRITING PADS\";s:13:\"productSerial\";s:19:\"63EED3HMACQ7JJ98OWW\";s:6:\"amount\";i:49;s:8:\"location\";s:5:\"Store\";s:8:\"unitCost\";i:111;s:12:\"sellingPrice\";i:122;s:13:\"reorderAmount\";i:1;s:10:\"expiryDate\";s:10:\"2012-06-12\";s:9:\"companyId\";i:1;s:20:\"productSpecification\";s:32:\"Velit libero esse atque aliquam.\";s:15:\"productCurrency\";s:3:\"USD\";s:13:\"productWeight\";i:94;s:14:\"productTaxRate\";i:16;s:19:\"productManufacturer\";s:17:\"Schneider-Jenkins\";s:12:\"categoryName\";s:10:\"Stationery\";s:10:\"categoryId\";i:1;s:19:\"usesMultipleStorage\";b:1;s:22:\"productMeasurementUnit\";s:2:\"KG\";s:7:\"barcode\";s:12:\"566941189995\";s:9:\"createdBy\";i:1;s:10:\"updated_at\";s:19:\"2017-12-02 10:53:07\";s:10:\"created_at\";s:19:\"2017-12-02 10:53:07\";s:2:\"id\";i:4;s:4:\"hash\";s:8:\"PeE8swNd\";s:9:\"updatedBy\";i:1;}', '', NULL, NULL, 'Dennis Wanyoike', '2017-12-02 07:53:07', '2017-12-02 07:53:07'),
(9, 5, 'Product Created', 'a:0:{}', 'a:23:{s:11:\"productName\";s:18:\"A5 SHORTHAND BOOKS\";s:13:\"productSerial\";s:17:\"JW72N0PE3BEQYPWZY\";s:6:\"amount\";i:49;s:8:\"location\";s:5:\"Store\";s:8:\"unitCost\";i:142;s:12:\"sellingPrice\";i:161;s:13:\"reorderAmount\";i:4;s:10:\"expiryDate\";s:10:\"1998-08-27\";s:9:\"companyId\";i:1;s:20:\"productSpecification\";s:67:\"Unde ad magni quis magni. Aut labore repellendus delectus rerum et.\";s:15:\"productCurrency\";s:3:\"USD\";s:13:\"productWeight\";i:27;s:14:\"productTaxRate\";i:16;s:19:\"productManufacturer\";s:26:\"Stracke, Maggio and Wunsch\";s:12:\"categoryName\";s:10:\"Vegetables\";s:10:\"categoryId\";i:5;s:19:\"usesMultipleStorage\";b:1;s:22:\"productMeasurementUnit\";s:2:\"KG\";s:7:\"barcode\";s:12:\"941863813553\";s:9:\"createdBy\";i:1;s:10:\"updated_at\";s:19:\"2017-12-02 10:53:08\";s:10:\"created_at\";s:19:\"2017-12-02 10:53:08\";s:2:\"id\";i:5;}', '', NULL, NULL, 'Dennis Wanyoike', '2017-12-02 07:53:08', '2017-12-02 07:53:08'),
(10, 5, 'Product Updated', 'a:0:{}', 'a:25:{s:11:\"productName\";s:18:\"A5 SHORTHAND BOOKS\";s:13:\"productSerial\";s:17:\"JW72N0PE3BEQYPWZY\";s:6:\"amount\";i:49;s:8:\"location\";s:5:\"Store\";s:8:\"unitCost\";i:142;s:12:\"sellingPrice\";i:161;s:13:\"reorderAmount\";i:4;s:10:\"expiryDate\";s:10:\"1998-08-27\";s:9:\"companyId\";i:1;s:20:\"productSpecification\";s:67:\"Unde ad magni quis magni. Aut labore repellendus delectus rerum et.\";s:15:\"productCurrency\";s:3:\"USD\";s:13:\"productWeight\";i:27;s:14:\"productTaxRate\";i:16;s:19:\"productManufacturer\";s:26:\"Stracke, Maggio and Wunsch\";s:12:\"categoryName\";s:10:\"Vegetables\";s:10:\"categoryId\";i:5;s:19:\"usesMultipleStorage\";b:1;s:22:\"productMeasurementUnit\";s:2:\"KG\";s:7:\"barcode\";s:12:\"941863813553\";s:9:\"createdBy\";i:1;s:10:\"updated_at\";s:19:\"2017-12-02 10:53:08\";s:10:\"created_at\";s:19:\"2017-12-02 10:53:08\";s:2:\"id\";i:5;s:4:\"hash\";s:8:\"jaK8tYNb\";s:9:\"updatedBy\";i:1;}', '', NULL, NULL, 'Dennis Wanyoike', '2017-12-02 07:53:08', '2017-12-02 07:53:08'),
(11, 6, 'Product Created', 'a:0:{}', 'a:23:{s:11:\"productName\";s:21:\"LETTER DELIVERY BOOKS\";s:13:\"productSerial\";s:9:\"HVT53JKMD\";s:6:\"amount\";i:49;s:8:\"location\";s:5:\"Store\";s:8:\"unitCost\";i:158;s:12:\"sellingPrice\";i:172;s:13:\"reorderAmount\";i:4;s:10:\"expiryDate\";s:10:\"2004-02-09\";s:9:\"companyId\";i:1;s:20:\"productSpecification\";s:29:\"Qui quis ad magnam velit quo.\";s:15:\"productCurrency\";s:3:\"USD\";s:13:\"productWeight\";i:4;s:14:\"productTaxRate\";i:16;s:19:\"productManufacturer\";s:10:\"Larkin Inc\";s:12:\"categoryName\";s:5:\"Foods\";s:10:\"categoryId\";i:4;s:19:\"usesMultipleStorage\";b:0;s:22:\"productMeasurementUnit\";s:2:\"KG\";s:7:\"barcode\";s:12:\"600653224381\";s:9:\"createdBy\";i:1;s:10:\"updated_at\";s:19:\"2017-12-02 10:53:09\";s:10:\"created_at\";s:19:\"2017-12-02 10:53:09\";s:2:\"id\";i:6;}', '', NULL, NULL, 'Dennis Wanyoike', '2017-12-02 07:53:09', '2017-12-02 07:53:09'),
(12, 6, 'Product Updated', 'a:0:{}', 'a:25:{s:11:\"productName\";s:21:\"LETTER DELIVERY BOOKS\";s:13:\"productSerial\";s:9:\"HVT53JKMD\";s:6:\"amount\";i:49;s:8:\"location\";s:5:\"Store\";s:8:\"unitCost\";i:158;s:12:\"sellingPrice\";i:172;s:13:\"reorderAmount\";i:4;s:10:\"expiryDate\";s:10:\"2004-02-09\";s:9:\"companyId\";i:1;s:20:\"productSpecification\";s:29:\"Qui quis ad magnam velit quo.\";s:15:\"productCurrency\";s:3:\"USD\";s:13:\"productWeight\";i:4;s:14:\"productTaxRate\";i:16;s:19:\"productManufacturer\";s:10:\"Larkin Inc\";s:12:\"categoryName\";s:5:\"Foods\";s:10:\"categoryId\";i:4;s:19:\"usesMultipleStorage\";b:0;s:22:\"productMeasurementUnit\";s:2:\"KG\";s:7:\"barcode\";s:12:\"600653224381\";s:9:\"createdBy\";i:1;s:10:\"updated_at\";s:19:\"2017-12-02 10:53:09\";s:10:\"created_at\";s:19:\"2017-12-02 10:53:09\";s:2:\"id\";i:6;s:4:\"hash\";s:8:\"Wb4zuOle\";s:9:\"updatedBy\";i:1;}', '', NULL, NULL, 'Dennis Wanyoike', '2017-12-02 07:53:09', '2017-12-02 07:53:09'),
(13, 7, 'Product Created', 'a:0:{}', 'a:23:{s:11:\"productName\";s:32:\"IMPORTS STRONG ROOM RECORD BOOKS\";s:13:\"productSerial\";s:4:\"T7NS\";s:6:\"amount\";i:49;s:8:\"location\";s:5:\"Store\";s:8:\"unitCost\";i:233;s:12:\"sellingPrice\";i:250;s:13:\"reorderAmount\";i:7;s:10:\"expiryDate\";s:10:\"2007-05-07\";s:9:\"companyId\";i:1;s:20:\"productSpecification\";s:53:\"Dolor distinctio dolore quae sed consequatur tempora.\";s:15:\"productCurrency\";s:3:\"USD\";s:13:\"productWeight\";i:62;s:14:\"productTaxRate\";i:16;s:19:\"productManufacturer\";s:14:\"Larson-Kreiger\";s:12:\"categoryName\";s:5:\"Foods\";s:10:\"categoryId\";i:4;s:19:\"usesMultipleStorage\";b:1;s:22:\"productMeasurementUnit\";s:2:\"KG\";s:7:\"barcode\";s:12:\"398144487413\";s:9:\"createdBy\";i:1;s:10:\"updated_at\";s:19:\"2017-12-02 10:53:09\";s:10:\"created_at\";s:19:\"2017-12-02 10:53:09\";s:2:\"id\";i:7;}', '', NULL, NULL, 'Dennis Wanyoike', '2017-12-02 07:53:09', '2017-12-02 07:53:09'),
(14, 7, 'Product Updated', 'a:0:{}', 'a:25:{s:11:\"productName\";s:32:\"IMPORTS STRONG ROOM RECORD BOOKS\";s:13:\"productSerial\";s:4:\"T7NS\";s:6:\"amount\";i:49;s:8:\"location\";s:5:\"Store\";s:8:\"unitCost\";i:233;s:12:\"sellingPrice\";i:250;s:13:\"reorderAmount\";i:7;s:10:\"expiryDate\";s:10:\"2007-05-07\";s:9:\"companyId\";i:1;s:20:\"productSpecification\";s:53:\"Dolor distinctio dolore quae sed consequatur tempora.\";s:15:\"productCurrency\";s:3:\"USD\";s:13:\"productWeight\";i:62;s:14:\"productTaxRate\";i:16;s:19:\"productManufacturer\";s:14:\"Larson-Kreiger\";s:12:\"categoryName\";s:5:\"Foods\";s:10:\"categoryId\";i:4;s:19:\"usesMultipleStorage\";b:1;s:22:\"productMeasurementUnit\";s:2:\"KG\";s:7:\"barcode\";s:12:\"398144487413\";s:9:\"createdBy\";i:1;s:10:\"updated_at\";s:19:\"2017-12-02 10:53:09\";s:10:\"created_at\";s:19:\"2017-12-02 10:53:09\";s:2:\"id\";i:7;s:4:\"hash\";s:8:\"PeExC1jd\";s:9:\"updatedBy\";i:1;}', '', NULL, NULL, 'Dennis Wanyoike', '2017-12-02 07:53:09', '2017-12-02 07:53:09'),
(15, 8, 'Product Created', 'a:0:{}', 'a:23:{s:11:\"productName\";s:32:\"EXPORTS STRONG ROOM RECORD BOOKS\";s:13:\"productSerial\";s:6:\"ZRPMRO\";s:6:\"amount\";i:49;s:8:\"location\";s:5:\"Store\";s:8:\"unitCost\";i:161;s:12:\"sellingPrice\";i:175;s:13:\"reorderAmount\";i:10;s:10:\"expiryDate\";s:10:\"1989-10-30\";s:9:\"companyId\";i:1;s:20:\"productSpecification\";s:77:\"Neque consequatur doloremque aliquid non et eos. Non et est repellendus sunt.\";s:15:\"productCurrency\";s:3:\"USD\";s:13:\"productWeight\";i:45;s:14:\"productTaxRate\";i:16;s:19:\"productManufacturer\";s:30:\"Cummerata, Barrows and Shields\";s:12:\"categoryName\";s:5:\"Foods\";s:10:\"categoryId\";i:4;s:19:\"usesMultipleStorage\";b:1;s:22:\"productMeasurementUnit\";s:2:\"KG\";s:7:\"barcode\";s:12:\"347374020709\";s:9:\"createdBy\";i:1;s:10:\"updated_at\";s:19:\"2017-12-02 10:53:12\";s:10:\"created_at\";s:19:\"2017-12-02 10:53:12\";s:2:\"id\";i:8;}', '', NULL, NULL, 'Dennis Wanyoike', '2017-12-02 07:53:12', '2017-12-02 07:53:12'),
(16, 8, 'Product Updated', 'a:0:{}', 'a:25:{s:11:\"productName\";s:32:\"EXPORTS STRONG ROOM RECORD BOOKS\";s:13:\"productSerial\";s:6:\"ZRPMRO\";s:6:\"amount\";i:49;s:8:\"location\";s:5:\"Store\";s:8:\"unitCost\";i:161;s:12:\"sellingPrice\";i:175;s:13:\"reorderAmount\";i:10;s:10:\"expiryDate\";s:10:\"1989-10-30\";s:9:\"companyId\";i:1;s:20:\"productSpecification\";s:77:\"Neque consequatur doloremque aliquid non et eos. Non et est repellendus sunt.\";s:15:\"productCurrency\";s:3:\"USD\";s:13:\"productWeight\";i:45;s:14:\"productTaxRate\";i:16;s:19:\"productManufacturer\";s:30:\"Cummerata, Barrows and Shields\";s:12:\"categoryName\";s:5:\"Foods\";s:10:\"categoryId\";i:4;s:19:\"usesMultipleStorage\";b:1;s:22:\"productMeasurementUnit\";s:2:\"KG\";s:7:\"barcode\";s:12:\"347374020709\";s:9:\"createdBy\";i:1;s:10:\"updated_at\";s:19:\"2017-12-02 10:53:12\";s:10:\"created_at\";s:19:\"2017-12-02 10:53:12\";s:2:\"id\";i:8;s:4:\"hash\";s:8:\"9aQOFG8d\";s:9:\"updatedBy\";i:1;}', '', NULL, NULL, 'Dennis Wanyoike', '2017-12-02 07:53:12', '2017-12-02 07:53:12'),
(17, 9, 'Product Created', 'a:0:{}', 'a:23:{s:11:\"productName\";s:23:\"EQUIPMENT HIREOUT BOOKS\";s:13:\"productSerial\";s:8:\"G26XMASF\";s:6:\"amount\";i:49;s:8:\"location\";s:5:\"Store\";s:8:\"unitCost\";i:280;s:12:\"sellingPrice\";i:291;s:13:\"reorderAmount\";i:5;s:10:\"expiryDate\";s:10:\"2009-04-11\";s:9:\"companyId\";i:1;s:20:\"productSpecification\";s:85:\"Voluptas labore qui sint. Perspiciatis voluptatem sed dolorem officia ad quo nostrum.\";s:15:\"productCurrency\";s:3:\"USD\";s:13:\"productWeight\";i:19;s:14:\"productTaxRate\";i:16;s:19:\"productManufacturer\";s:23:\"Haag, Jast and Cummings\";s:12:\"categoryName\";s:11:\"Electronics\";s:10:\"categoryId\";i:3;s:19:\"usesMultipleStorage\";b:0;s:22:\"productMeasurementUnit\";s:2:\"KG\";s:7:\"barcode\";s:12:\"844207416826\";s:9:\"createdBy\";i:1;s:10:\"updated_at\";s:19:\"2017-12-02 10:53:15\";s:10:\"created_at\";s:19:\"2017-12-02 10:53:15\";s:2:\"id\";i:9;}', '', NULL, NULL, 'Dennis Wanyoike', '2017-12-02 07:53:15', '2017-12-02 07:53:15'),
(18, 9, 'Product Updated', 'a:0:{}', 'a:25:{s:11:\"productName\";s:23:\"EQUIPMENT HIREOUT BOOKS\";s:13:\"productSerial\";s:8:\"G26XMASF\";s:6:\"amount\";i:49;s:8:\"location\";s:5:\"Store\";s:8:\"unitCost\";i:280;s:12:\"sellingPrice\";i:291;s:13:\"reorderAmount\";i:5;s:10:\"expiryDate\";s:10:\"2009-04-11\";s:9:\"companyId\";i:1;s:20:\"productSpecification\";s:85:\"Voluptas labore qui sint. Perspiciatis voluptatem sed dolorem officia ad quo nostrum.\";s:15:\"productCurrency\";s:3:\"USD\";s:13:\"productWeight\";i:19;s:14:\"productTaxRate\";i:16;s:19:\"productManufacturer\";s:23:\"Haag, Jast and Cummings\";s:12:\"categoryName\";s:11:\"Electronics\";s:10:\"categoryId\";i:3;s:19:\"usesMultipleStorage\";b:0;s:22:\"productMeasurementUnit\";s:2:\"KG\";s:7:\"barcode\";s:12:\"844207416826\";s:9:\"createdBy\";i:1;s:10:\"updated_at\";s:19:\"2017-12-02 10:53:15\";s:10:\"created_at\";s:19:\"2017-12-02 10:53:15\";s:2:\"id\";i:9;s:4:\"hash\";s:8:\"Be3jHpjd\";s:9:\"updatedBy\";i:1;}', '', NULL, NULL, 'Dennis Wanyoike', '2017-12-02 07:53:15', '2017-12-02 07:53:15'),
(19, 10, 'Product Created', 'a:0:{}', 'a:23:{s:11:\"productName\";s:25:\"A3 KHAKI BROWN ENVELOPES \";s:13:\"productSerial\";s:6:\"B3YEES\";s:6:\"amount\";i:49;s:8:\"location\";s:5:\"Store\";s:8:\"unitCost\";i:146;s:12:\"sellingPrice\";i:163;s:13:\"reorderAmount\";i:8;s:10:\"expiryDate\";s:10:\"1975-01-03\";s:9:\"companyId\";i:1;s:20:\"productSpecification\";s:87:\"Tenetur similique et mollitia inventore est. Natus sequi aperiam odio voluptatibus sit.\";s:15:\"productCurrency\";s:3:\"USD\";s:13:\"productWeight\";i:62;s:14:\"productTaxRate\";i:16;s:19:\"productManufacturer\";s:14:\"VonRueden-Wolf\";s:12:\"categoryName\";s:11:\"Consumables\";s:10:\"categoryId\";i:2;s:19:\"usesMultipleStorage\";b:1;s:22:\"productMeasurementUnit\";s:2:\"KG\";s:7:\"barcode\";s:12:\"499359373949\";s:9:\"createdBy\";i:1;s:10:\"updated_at\";s:19:\"2017-12-02 10:53:15\";s:10:\"created_at\";s:19:\"2017-12-02 10:53:15\";s:2:\"id\";i:10;}', '', NULL, NULL, 'Dennis Wanyoike', '2017-12-02 07:53:15', '2017-12-02 07:53:15'),
(20, 10, 'Product Updated', 'a:0:{}', 'a:25:{s:11:\"productName\";s:25:\"A3 KHAKI BROWN ENVELOPES \";s:13:\"productSerial\";s:6:\"B3YEES\";s:6:\"amount\";i:49;s:8:\"location\";s:5:\"Store\";s:8:\"unitCost\";i:146;s:12:\"sellingPrice\";i:163;s:13:\"reorderAmount\";i:8;s:10:\"expiryDate\";s:10:\"1975-01-03\";s:9:\"companyId\";i:1;s:20:\"productSpecification\";s:87:\"Tenetur similique et mollitia inventore est. Natus sequi aperiam odio voluptatibus sit.\";s:15:\"productCurrency\";s:3:\"USD\";s:13:\"productWeight\";i:62;s:14:\"productTaxRate\";i:16;s:19:\"productManufacturer\";s:14:\"VonRueden-Wolf\";s:12:\"categoryName\";s:11:\"Consumables\";s:10:\"categoryId\";i:2;s:19:\"usesMultipleStorage\";b:1;s:22:\"productMeasurementUnit\";s:2:\"KG\";s:7:\"barcode\";s:12:\"499359373949\";s:9:\"createdBy\";i:1;s:10:\"updated_at\";s:19:\"2017-12-02 10:53:15\";s:10:\"created_at\";s:19:\"2017-12-02 10:53:15\";s:2:\"id\";i:10;s:4:\"hash\";s:8:\"Ge7DI1Ra\";s:9:\"updatedBy\";i:1;}', '', NULL, NULL, 'Dennis Wanyoike', '2017-12-02 07:53:15', '2017-12-02 07:53:15'),
(21, 11, 'Product Created', 'a:0:{}', 'a:23:{s:11:\"productName\";s:24:\"A4 KHAKI BROWN ENVELOPES\";s:13:\"productSerial\";s:5:\"AUYBN\";s:6:\"amount\";i:49;s:8:\"location\";s:5:\"Store\";s:8:\"unitCost\";i:121;s:12:\"sellingPrice\";i:135;s:13:\"reorderAmount\";i:10;s:10:\"expiryDate\";s:10:\"1977-05-27\";s:9:\"companyId\";i:1;s:20:\"productSpecification\";s:75:\"Nihil suscipit et porro ut iure tempora. Omnis ipsum id tenetur aperiam ut.\";s:15:\"productCurrency\";s:3:\"USD\";s:13:\"productWeight\";i:65;s:14:\"productTaxRate\";i:16;s:19:\"productManufacturer\";s:14:\"Shields-Muller\";s:12:\"categoryName\";s:10:\"Vegetables\";s:10:\"categoryId\";i:5;s:19:\"usesMultipleStorage\";b:0;s:22:\"productMeasurementUnit\";s:2:\"KG\";s:7:\"barcode\";s:12:\"854056313481\";s:9:\"createdBy\";i:1;s:10:\"updated_at\";s:19:\"2017-12-02 10:53:18\";s:10:\"created_at\";s:19:\"2017-12-02 10:53:18\";s:2:\"id\";i:11;}', '', NULL, NULL, 'Dennis Wanyoike', '2017-12-02 07:53:18', '2017-12-02 07:53:18'),
(22, 11, 'Product Updated', 'a:0:{}', 'a:25:{s:11:\"productName\";s:24:\"A4 KHAKI BROWN ENVELOPES\";s:13:\"productSerial\";s:5:\"AUYBN\";s:6:\"amount\";i:49;s:8:\"location\";s:5:\"Store\";s:8:\"unitCost\";i:121;s:12:\"sellingPrice\";i:135;s:13:\"reorderAmount\";i:10;s:10:\"expiryDate\";s:10:\"1977-05-27\";s:9:\"companyId\";i:1;s:20:\"productSpecification\";s:75:\"Nihil suscipit et porro ut iure tempora. Omnis ipsum id tenetur aperiam ut.\";s:15:\"productCurrency\";s:3:\"USD\";s:13:\"productWeight\";i:65;s:14:\"productTaxRate\";i:16;s:19:\"productManufacturer\";s:14:\"Shields-Muller\";s:12:\"categoryName\";s:10:\"Vegetables\";s:10:\"categoryId\";i:5;s:19:\"usesMultipleStorage\";b:0;s:22:\"productMeasurementUnit\";s:2:\"KG\";s:7:\"barcode\";s:12:\"854056313481\";s:9:\"createdBy\";i:1;s:10:\"updated_at\";s:19:\"2017-12-02 10:53:18\";s:10:\"created_at\";s:19:\"2017-12-02 10:53:18\";s:2:\"id\";i:11;s:4:\"hash\";s:8:\"XdL5S6Le\";s:9:\"updatedBy\";i:1;}', '', NULL, NULL, 'Dennis Wanyoike', '2017-12-02 07:53:18', '2017-12-02 07:53:18'),
(23, 12, 'Product Created', 'a:0:{}', 'a:23:{s:11:\"productName\";s:20:\"A4 BRANDED ENVELOPES\";s:13:\"productSerial\";s:6:\"T8X9NH\";s:6:\"amount\";i:49;s:8:\"location\";s:5:\"Store\";s:8:\"unitCost\";i:100;s:12:\"sellingPrice\";i:110;s:13:\"reorderAmount\";i:10;s:10:\"expiryDate\";s:10:\"1999-09-14\";s:9:\"companyId\";i:1;s:20:\"productSpecification\";s:91:\"Amet dignissimos quibusdam hic explicabo quae aut. Eaque repellat iste illo iste assumenda.\";s:15:\"productCurrency\";s:3:\"USD\";s:13:\"productWeight\";i:14;s:14:\"productTaxRate\";i:16;s:19:\"productManufacturer\";s:11:\"Huels Group\";s:12:\"categoryName\";s:11:\"Electronics\";s:10:\"categoryId\";i:3;s:19:\"usesMultipleStorage\";b:1;s:22:\"productMeasurementUnit\";s:2:\"KG\";s:7:\"barcode\";s:12:\"831130601177\";s:9:\"createdBy\";i:1;s:10:\"updated_at\";s:19:\"2017-12-02 10:53:18\";s:10:\"created_at\";s:19:\"2017-12-02 10:53:18\";s:2:\"id\";i:12;}', '', NULL, NULL, 'Dennis Wanyoike', '2017-12-02 07:53:18', '2017-12-02 07:53:18'),
(24, 12, 'Product Updated', 'a:0:{}', 'a:25:{s:11:\"productName\";s:20:\"A4 BRANDED ENVELOPES\";s:13:\"productSerial\";s:6:\"T8X9NH\";s:6:\"amount\";i:49;s:8:\"location\";s:5:\"Store\";s:8:\"unitCost\";i:100;s:12:\"sellingPrice\";i:110;s:13:\"reorderAmount\";i:10;s:10:\"expiryDate\";s:10:\"1999-09-14\";s:9:\"companyId\";i:1;s:20:\"productSpecification\";s:91:\"Amet dignissimos quibusdam hic explicabo quae aut. Eaque repellat iste illo iste assumenda.\";s:15:\"productCurrency\";s:3:\"USD\";s:13:\"productWeight\";i:14;s:14:\"productTaxRate\";i:16;s:19:\"productManufacturer\";s:11:\"Huels Group\";s:12:\"categoryName\";s:11:\"Electronics\";s:10:\"categoryId\";i:3;s:19:\"usesMultipleStorage\";b:1;s:22:\"productMeasurementUnit\";s:2:\"KG\";s:7:\"barcode\";s:12:\"831130601177\";s:9:\"createdBy\";i:1;s:10:\"updated_at\";s:19:\"2017-12-02 10:53:18\";s:10:\"created_at\";s:19:\"2017-12-02 10:53:18\";s:2:\"id\";i:12;s:4:\"hash\";s:8:\"wbo7T6Xb\";s:9:\"updatedBy\";i:1;}', '', NULL, NULL, 'Dennis Wanyoike', '2017-12-02 07:53:18', '2017-12-02 07:53:18'),
(25, 13, 'Product Created', 'a:0:{}', 'a:23:{s:11:\"productName\";s:15:\"PRINTING PAPERS\";s:13:\"productSerial\";s:10:\"_dHDV6CZFV\";s:6:\"amount\";i:49;s:8:\"location\";s:5:\"Store\";s:8:\"unitCost\";i:128;s:12:\"sellingPrice\";i:139;s:13:\"reorderAmount\";i:4;s:10:\"expiryDate\";s:10:\"1972-02-02\";s:9:\"companyId\";i:1;s:20:\"productSpecification\";s:77:\"Perferendis est repellendus placeat perspiciatis dicta delectus voluptatibus.\";s:15:\"productCurrency\";s:3:\"USD\";s:13:\"productWeight\";i:92;s:14:\"productTaxRate\";i:16;s:19:\"productManufacturer\";s:11:\"Leffler Ltd\";s:12:\"categoryName\";s:10:\"Vegetables\";s:10:\"categoryId\";i:5;s:19:\"usesMultipleStorage\";b:1;s:22:\"productMeasurementUnit\";s:2:\"KG\";s:7:\"barcode\";s:12:\"371329532955\";s:9:\"createdBy\";i:1;s:10:\"updated_at\";s:19:\"2017-12-02 10:53:21\";s:10:\"created_at\";s:19:\"2017-12-02 10:53:21\";s:2:\"id\";i:13;}', '', NULL, NULL, 'Dennis Wanyoike', '2017-12-02 07:53:21', '2017-12-02 07:53:21'),
(26, 13, 'Product Updated', 'a:0:{}', 'a:25:{s:11:\"productName\";s:15:\"PRINTING PAPERS\";s:13:\"productSerial\";s:10:\"_dHDV6CZFV\";s:6:\"amount\";i:49;s:8:\"location\";s:5:\"Store\";s:8:\"unitCost\";i:128;s:12:\"sellingPrice\";i:139;s:13:\"reorderAmount\";i:4;s:10:\"expiryDate\";s:10:\"1972-02-02\";s:9:\"companyId\";i:1;s:20:\"productSpecification\";s:77:\"Perferendis est repellendus placeat perspiciatis dicta delectus voluptatibus.\";s:15:\"productCurrency\";s:3:\"USD\";s:13:\"productWeight\";i:92;s:14:\"productTaxRate\";i:16;s:19:\"productManufacturer\";s:11:\"Leffler Ltd\";s:12:\"categoryName\";s:10:\"Vegetables\";s:10:\"categoryId\";i:5;s:19:\"usesMultipleStorage\";b:1;s:22:\"productMeasurementUnit\";s:2:\"KG\";s:7:\"barcode\";s:12:\"371329532955\";s:9:\"createdBy\";i:1;s:10:\"updated_at\";s:19:\"2017-12-02 10:53:21\";s:10:\"created_at\";s:19:\"2017-12-02 10:53:21\";s:2:\"id\";i:13;s:4:\"hash\";s:8:\"ZeVoUOaG\";s:9:\"updatedBy\";i:1;}', '', NULL, NULL, 'Dennis Wanyoike', '2017-12-02 07:53:21', '2017-12-02 07:53:21'),
(27, 14, 'Product Created', 'a:0:{}', 'a:23:{s:11:\"productName\";s:33:\"WHILE YOU WERE AWAY MESSAGE BOOKS\";s:13:\"productSerial\";s:6:\"I9BFWM\";s:6:\"amount\";i:49;s:8:\"location\";s:5:\"Store\";s:8:\"unitCost\";i:213;s:12:\"sellingPrice\";i:231;s:13:\"reorderAmount\";i:4;s:10:\"expiryDate\";s:10:\"2000-10-26\";s:9:\"companyId\";i:1;s:20:\"productSpecification\";s:100:\"Voluptas beatae illum ducimus et laboriosam. Temporibus consequatur necessitatibus officia deserunt.\";s:15:\"productCurrency\";s:3:\"USD\";s:13:\"productWeight\";i:69;s:14:\"productTaxRate\";i:16;s:19:\"productManufacturer\";s:14:\"Brakus-Reichel\";s:12:\"categoryName\";s:10:\"Stationery\";s:10:\"categoryId\";i:1;s:19:\"usesMultipleStorage\";b:0;s:22:\"productMeasurementUnit\";s:2:\"KG\";s:7:\"barcode\";s:12:\"831539950234\";s:9:\"createdBy\";i:1;s:10:\"updated_at\";s:19:\"2017-12-02 10:53:22\";s:10:\"created_at\";s:19:\"2017-12-02 10:53:22\";s:2:\"id\";i:14;}', '', NULL, NULL, 'Dennis Wanyoike', '2017-12-02 07:53:22', '2017-12-02 07:53:22'),
(28, 14, 'Product Updated', 'a:0:{}', 'a:25:{s:11:\"productName\";s:33:\"WHILE YOU WERE AWAY MESSAGE BOOKS\";s:13:\"productSerial\";s:6:\"I9BFWM\";s:6:\"amount\";i:49;s:8:\"location\";s:5:\"Store\";s:8:\"unitCost\";i:213;s:12:\"sellingPrice\";i:231;s:13:\"reorderAmount\";i:4;s:10:\"expiryDate\";s:10:\"2000-10-26\";s:9:\"companyId\";i:1;s:20:\"productSpecification\";s:100:\"Voluptas beatae illum ducimus et laboriosam. Temporibus consequatur necessitatibus officia deserunt.\";s:15:\"productCurrency\";s:3:\"USD\";s:13:\"productWeight\";i:69;s:14:\"productTaxRate\";i:16;s:19:\"productManufacturer\";s:14:\"Brakus-Reichel\";s:12:\"categoryName\";s:10:\"Stationery\";s:10:\"categoryId\";i:1;s:19:\"usesMultipleStorage\";b:0;s:22:\"productMeasurementUnit\";s:2:\"KG\";s:7:\"barcode\";s:12:\"831539950234\";s:9:\"createdBy\";i:1;s:10:\"updated_at\";s:19:\"2017-12-02 10:53:22\";s:10:\"created_at\";s:19:\"2017-12-02 10:53:22\";s:2:\"id\";i:14;s:4:\"hash\";s:8:\"zaO6clep\";s:9:\"updatedBy\";i:1;}', '', NULL, NULL, 'Dennis Wanyoike', '2017-12-02 07:53:22', '2017-12-02 07:53:22'),
(29, 15, 'Product Created', 'a:0:{}', 'a:23:{s:11:\"productName\";s:12:\"STICKY NOTES\";s:13:\"productSerial\";s:9:\"6DMSLPTTN\";s:6:\"amount\";i:49;s:8:\"location\";s:5:\"Store\";s:8:\"unitCost\";i:175;s:12:\"sellingPrice\";i:180;s:13:\"reorderAmount\";i:10;s:10:\"expiryDate\";s:10:\"2010-05-09\";s:9:\"companyId\";i:1;s:20:\"productSpecification\";s:38:\"Quis ipsam aut optio sint debitis sed.\";s:15:\"productCurrency\";s:3:\"USD\";s:13:\"productWeight\";i:49;s:14:\"productTaxRate\";i:16;s:19:\"productManufacturer\";s:13:\"Langworth Inc\";s:12:\"categoryName\";s:5:\"Foods\";s:10:\"categoryId\";i:4;s:19:\"usesMultipleStorage\";b:0;s:22:\"productMeasurementUnit\";s:2:\"KG\";s:7:\"barcode\";s:12:\"369182510517\";s:9:\"createdBy\";i:1;s:10:\"updated_at\";s:19:\"2017-12-02 10:53:23\";s:10:\"created_at\";s:19:\"2017-12-02 10:53:23\";s:2:\"id\";i:15;}', '', NULL, NULL, 'Dennis Wanyoike', '2017-12-02 07:53:23', '2017-12-02 07:53:23'),
(30, 15, 'Product Updated', 'a:0:{}', 'a:25:{s:11:\"productName\";s:12:\"STICKY NOTES\";s:13:\"productSerial\";s:9:\"6DMSLPTTN\";s:6:\"amount\";i:49;s:8:\"location\";s:5:\"Store\";s:8:\"unitCost\";i:175;s:12:\"sellingPrice\";i:180;s:13:\"reorderAmount\";i:10;s:10:\"expiryDate\";s:10:\"2010-05-09\";s:9:\"companyId\";i:1;s:20:\"productSpecification\";s:38:\"Quis ipsam aut optio sint debitis sed.\";s:15:\"productCurrency\";s:3:\"USD\";s:13:\"productWeight\";i:49;s:14:\"productTaxRate\";i:16;s:19:\"productManufacturer\";s:13:\"Langworth Inc\";s:12:\"categoryName\";s:5:\"Foods\";s:10:\"categoryId\";i:4;s:19:\"usesMultipleStorage\";b:0;s:22:\"productMeasurementUnit\";s:2:\"KG\";s:7:\"barcode\";s:12:\"369182510517\";s:9:\"createdBy\";i:1;s:10:\"updated_at\";s:19:\"2017-12-02 10:53:23\";s:10:\"created_at\";s:19:\"2017-12-02 10:53:23\";s:2:\"id\";i:15;s:4:\"hash\";s:8:\"KdwgfAmd\";s:9:\"updatedBy\";i:1;}', '', NULL, NULL, 'Dennis Wanyoike', '2017-12-02 07:53:23', '2017-12-02 07:53:23'),
(31, 16, 'Product Created', 'a:0:{}', 'a:23:{s:11:\"productName\";s:16:\"PAPER CLIPS 33MM\";s:13:\"productSerial\";s:11:\"I7%7cQ}OSTD\";s:6:\"amount\";i:49;s:8:\"location\";s:5:\"Store\";s:8:\"unitCost\";i:121;s:12:\"sellingPrice\";i:129;s:13:\"reorderAmount\";i:5;s:10:\"expiryDate\";s:10:\"1972-08-18\";s:9:\"companyId\";i:1;s:20:\"productSpecification\";s:64:\"Voluptatem maiores eos quod assumenda recusandae deleniti et et.\";s:15:\"productCurrency\";s:3:\"USD\";s:13:\"productWeight\";i:39;s:14:\"productTaxRate\";i:16;s:19:\"productManufacturer\";s:16:\"Oberbrunner-Haag\";s:12:\"categoryName\";s:5:\"Foods\";s:10:\"categoryId\";i:4;s:19:\"usesMultipleStorage\";b:1;s:22:\"productMeasurementUnit\";s:2:\"KG\";s:7:\"barcode\";s:12:\"741507137089\";s:9:\"createdBy\";i:1;s:10:\"updated_at\";s:19:\"2017-12-02 10:53:23\";s:10:\"created_at\";s:19:\"2017-12-02 10:53:23\";s:2:\"id\";i:16;}', '', NULL, NULL, 'Dennis Wanyoike', '2017-12-02 07:53:23', '2017-12-02 07:53:23'),
(32, 16, 'Product Updated', 'a:0:{}', 'a:25:{s:11:\"productName\";s:16:\"PAPER CLIPS 33MM\";s:13:\"productSerial\";s:11:\"I7%7cQ}OSTD\";s:6:\"amount\";i:49;s:8:\"location\";s:5:\"Store\";s:8:\"unitCost\";i:121;s:12:\"sellingPrice\";i:129;s:13:\"reorderAmount\";i:5;s:10:\"expiryDate\";s:10:\"1972-08-18\";s:9:\"companyId\";i:1;s:20:\"productSpecification\";s:64:\"Voluptatem maiores eos quod assumenda recusandae deleniti et et.\";s:15:\"productCurrency\";s:3:\"USD\";s:13:\"productWeight\";i:39;s:14:\"productTaxRate\";i:16;s:19:\"productManufacturer\";s:16:\"Oberbrunner-Haag\";s:12:\"categoryName\";s:5:\"Foods\";s:10:\"categoryId\";i:4;s:19:\"usesMultipleStorage\";b:1;s:22:\"productMeasurementUnit\";s:2:\"KG\";s:7:\"barcode\";s:12:\"741507137089\";s:9:\"createdBy\";i:1;s:10:\"updated_at\";s:19:\"2017-12-02 10:53:23\";s:10:\"created_at\";s:19:\"2017-12-02 10:53:23\";s:2:\"id\";i:16;s:4:\"hash\";s:8:\"qdGXhm4e\";s:9:\"updatedBy\";i:1;}', '', NULL, NULL, 'Dennis Wanyoike', '2017-12-02 07:53:24', '2017-12-02 07:53:24'),
(33, 17, 'Product Created', 'a:0:{}', 'a:23:{s:11:\"productName\";s:17:\"PAPER CLIPS  50MM\";s:13:\"productSerial\";s:4:\"ZZCV\";s:6:\"amount\";i:49;s:8:\"location\";s:5:\"Store\";s:8:\"unitCost\";i:188;s:12:\"sellingPrice\";i:204;s:13:\"reorderAmount\";i:5;s:10:\"expiryDate\";s:10:\"2015-02-18\";s:9:\"companyId\";i:1;s:20:\"productSpecification\";s:45:\"Et non occaecati atque blanditiis rerum quia.\";s:15:\"productCurrency\";s:3:\"USD\";s:13:\"productWeight\";i:24;s:14:\"productTaxRate\";i:16;s:19:\"productManufacturer\";s:17:\"Trantow-Buckridge\";s:12:\"categoryName\";s:10:\"Cool Stuff\";s:10:\"categoryId\";i:6;s:19:\"usesMultipleStorage\";b:1;s:22:\"productMeasurementUnit\";s:2:\"KG\";s:7:\"barcode\";s:12:\"471948556094\";s:9:\"createdBy\";i:1;s:10:\"updated_at\";s:19:\"2017-12-02 10:53:25\";s:10:\"created_at\";s:19:\"2017-12-02 10:53:25\";s:2:\"id\";i:17;}', '', NULL, NULL, 'Dennis Wanyoike', '2017-12-02 07:53:25', '2017-12-02 07:53:25'),
(34, 17, 'Product Updated', 'a:0:{}', 'a:25:{s:11:\"productName\";s:17:\"PAPER CLIPS  50MM\";s:13:\"productSerial\";s:4:\"ZZCV\";s:6:\"amount\";i:49;s:8:\"location\";s:5:\"Store\";s:8:\"unitCost\";i:188;s:12:\"sellingPrice\";i:204;s:13:\"reorderAmount\";i:5;s:10:\"expiryDate\";s:10:\"2015-02-18\";s:9:\"companyId\";i:1;s:20:\"productSpecification\";s:45:\"Et non occaecati atque blanditiis rerum quia.\";s:15:\"productCurrency\";s:3:\"USD\";s:13:\"productWeight\";i:24;s:14:\"productTaxRate\";i:16;s:19:\"productManufacturer\";s:17:\"Trantow-Buckridge\";s:12:\"categoryName\";s:10:\"Cool Stuff\";s:10:\"categoryId\";i:6;s:19:\"usesMultipleStorage\";b:1;s:22:\"productMeasurementUnit\";s:2:\"KG\";s:7:\"barcode\";s:12:\"471948556094\";s:9:\"createdBy\";i:1;s:10:\"updated_at\";s:19:\"2017-12-02 10:53:25\";s:10:\"created_at\";s:19:\"2017-12-02 10:53:25\";s:2:\"id\";i:17;s:4:\"hash\";s:8:\"bkgiO6gb\";s:9:\"updatedBy\";i:1;}', '', NULL, NULL, 'Dennis Wanyoike', '2017-12-02 07:53:25', '2017-12-02 07:53:25'),
(35, 18, 'Product Created', 'a:0:{}', 'a:23:{s:11:\"productName\";s:9:\"BOX FILES\";s:13:\"productSerial\";s:11:\"T-A0;UM-QKW\";s:6:\"amount\";i:49;s:8:\"location\";s:5:\"Store\";s:8:\"unitCost\";i:116;s:12:\"sellingPrice\";i:123;s:13:\"reorderAmount\";i:14;s:10:\"expiryDate\";s:10:\"2001-12-24\";s:9:\"companyId\";i:1;s:20:\"productSpecification\";s:27:\"Fuga optio labore ut vitae.\";s:15:\"productCurrency\";s:3:\"USD\";s:13:\"productWeight\";i:84;s:14:\"productTaxRate\";i:16;s:19:\"productManufacturer\";s:10:\"Herman-Kub\";s:12:\"categoryName\";s:11:\"Electronics\";s:10:\"categoryId\";i:3;s:19:\"usesMultipleStorage\";b:0;s:22:\"productMeasurementUnit\";s:2:\"KG\";s:7:\"barcode\";s:12:\"896066914524\";s:9:\"createdBy\";i:1;s:10:\"updated_at\";s:19:\"2017-12-02 10:53:26\";s:10:\"created_at\";s:19:\"2017-12-02 10:53:26\";s:2:\"id\";i:18;}', '', NULL, NULL, 'Dennis Wanyoike', '2017-12-02 07:53:26', '2017-12-02 07:53:26'),
(36, 18, 'Product Updated', 'a:0:{}', 'a:25:{s:11:\"productName\";s:9:\"BOX FILES\";s:13:\"productSerial\";s:11:\"T-A0;UM-QKW\";s:6:\"amount\";i:49;s:8:\"location\";s:5:\"Store\";s:8:\"unitCost\";i:116;s:12:\"sellingPrice\";i:123;s:13:\"reorderAmount\";i:14;s:10:\"expiryDate\";s:10:\"2001-12-24\";s:9:\"companyId\";i:1;s:20:\"productSpecification\";s:27:\"Fuga optio labore ut vitae.\";s:15:\"productCurrency\";s:3:\"USD\";s:13:\"productWeight\";i:84;s:14:\"productTaxRate\";i:16;s:19:\"productManufacturer\";s:10:\"Herman-Kub\";s:12:\"categoryName\";s:11:\"Electronics\";s:10:\"categoryId\";i:3;s:19:\"usesMultipleStorage\";b:0;s:22:\"productMeasurementUnit\";s:2:\"KG\";s:7:\"barcode\";s:12:\"896066914524\";s:9:\"createdBy\";i:1;s:10:\"updated_at\";s:19:\"2017-12-02 10:53:26\";s:10:\"created_at\";s:19:\"2017-12-02 10:53:26\";s:2:\"id\";i:18;s:4:\"hash\";s:8:\"yelLsvpe\";s:9:\"updatedBy\";i:1;}', '', NULL, NULL, 'Dennis Wanyoike', '2017-12-02 07:53:26', '2017-12-02 07:53:26'),
(37, 19, 'Product Created', 'a:0:{}', 'a:23:{s:11:\"productName\";s:12:\"SPRING FILES\";s:13:\"productSerial\";s:6:\"%5VNLK\";s:6:\"amount\";i:49;s:8:\"location\";s:5:\"Store\";s:8:\"unitCost\";i:170;s:12:\"sellingPrice\";i:177;s:13:\"reorderAmount\";i:9;s:10:\"expiryDate\";s:10:\"1982-09-27\";s:9:\"companyId\";i:1;s:20:\"productSpecification\";s:58:\"Facilis enim harum quod maxime et magni exercitationem in.\";s:15:\"productCurrency\";s:3:\"USD\";s:13:\"productWeight\";i:16;s:14:\"productTaxRate\";i:16;s:19:\"productManufacturer\";s:12:\"Herzog-Haley\";s:12:\"categoryName\";s:11:\"Electronics\";s:10:\"categoryId\";i:3;s:19:\"usesMultipleStorage\";b:0;s:22:\"productMeasurementUnit\";s:2:\"KG\";s:7:\"barcode\";s:12:\"767056446564\";s:9:\"createdBy\";i:1;s:10:\"updated_at\";s:19:\"2017-12-02 10:53:26\";s:10:\"created_at\";s:19:\"2017-12-02 10:53:26\";s:2:\"id\";i:19;}', '', NULL, NULL, 'Dennis Wanyoike', '2017-12-02 07:53:26', '2017-12-02 07:53:26'),
(38, 19, 'Product Updated', 'a:0:{}', 'a:25:{s:11:\"productName\";s:12:\"SPRING FILES\";s:13:\"productSerial\";s:6:\"%5VNLK\";s:6:\"amount\";i:49;s:8:\"location\";s:5:\"Store\";s:8:\"unitCost\";i:170;s:12:\"sellingPrice\";i:177;s:13:\"reorderAmount\";i:9;s:10:\"expiryDate\";s:10:\"1982-09-27\";s:9:\"companyId\";i:1;s:20:\"productSpecification\";s:58:\"Facilis enim harum quod maxime et magni exercitationem in.\";s:15:\"productCurrency\";s:3:\"USD\";s:13:\"productWeight\";i:16;s:14:\"productTaxRate\";i:16;s:19:\"productManufacturer\";s:12:\"Herzog-Haley\";s:12:\"categoryName\";s:11:\"Electronics\";s:10:\"categoryId\";i:3;s:19:\"usesMultipleStorage\";b:0;s:22:\"productMeasurementUnit\";s:2:\"KG\";s:7:\"barcode\";s:12:\"767056446564\";s:9:\"createdBy\";i:1;s:10:\"updated_at\";s:19:\"2017-12-02 10:53:26\";s:10:\"created_at\";s:19:\"2017-12-02 10:53:26\";s:2:\"id\";i:19;s:4:\"hash\";s:8:\"Be1ztP3a\";s:9:\"updatedBy\";i:1;}', '', NULL, NULL, 'Dennis Wanyoike', '2017-12-02 07:53:26', '2017-12-02 07:53:26'),
(39, 20, 'Product Created', 'a:0:{}', 'a:23:{s:11:\"productName\";s:14:\"BIRO PENS BLUE\";s:13:\"productSerial\";s:13:\"8IQDYVR-UAPAE\";s:6:\"amount\";i:49;s:8:\"location\";s:5:\"Store\";s:8:\"unitCost\";i:177;s:12:\"sellingPrice\";i:192;s:13:\"reorderAmount\";i:11;s:10:\"expiryDate\";s:10:\"1970-05-18\";s:9:\"companyId\";i:1;s:20:\"productSpecification\";s:67:\"Quia exercitationem modi aut. Ut natus laudantium praesentium eius.\";s:15:\"productCurrency\";s:3:\"USD\";s:13:\"productWeight\";i:18;s:14:\"productTaxRate\";i:16;s:19:\"productManufacturer\";s:12:\"Reilly-Thiel\";s:12:\"categoryName\";s:10:\"Stationery\";s:10:\"categoryId\";i:1;s:19:\"usesMultipleStorage\";b:0;s:22:\"productMeasurementUnit\";s:2:\"KG\";s:7:\"barcode\";s:12:\"492896968098\";s:9:\"createdBy\";i:1;s:10:\"updated_at\";s:19:\"2017-12-02 10:53:27\";s:10:\"created_at\";s:19:\"2017-12-02 10:53:27\";s:2:\"id\";i:20;}', '', NULL, NULL, 'Dennis Wanyoike', '2017-12-02 07:53:27', '2017-12-02 07:53:27'),
(40, 20, 'Product Updated', 'a:0:{}', 'a:25:{s:11:\"productName\";s:14:\"BIRO PENS BLUE\";s:13:\"productSerial\";s:13:\"8IQDYVR-UAPAE\";s:6:\"amount\";i:49;s:8:\"location\";s:5:\"Store\";s:8:\"unitCost\";i:177;s:12:\"sellingPrice\";i:192;s:13:\"reorderAmount\";i:11;s:10:\"expiryDate\";s:10:\"1970-05-18\";s:9:\"companyId\";i:1;s:20:\"productSpecification\";s:67:\"Quia exercitationem modi aut. Ut natus laudantium praesentium eius.\";s:15:\"productCurrency\";s:3:\"USD\";s:13:\"productWeight\";i:18;s:14:\"productTaxRate\";i:16;s:19:\"productManufacturer\";s:12:\"Reilly-Thiel\";s:12:\"categoryName\";s:10:\"Stationery\";s:10:\"categoryId\";i:1;s:19:\"usesMultipleStorage\";b:0;s:22:\"productMeasurementUnit\";s:2:\"KG\";s:7:\"barcode\";s:12:\"492896968098\";s:9:\"createdBy\";i:1;s:10:\"updated_at\";s:19:\"2017-12-02 10:53:27\";s:10:\"created_at\";s:19:\"2017-12-02 10:53:27\";s:2:\"id\";i:20;s:4:\"hash\";s:8:\"qdP9u6ve\";s:9:\"updatedBy\";i:1;}', '', NULL, NULL, 'Dennis Wanyoike', '2017-12-02 07:53:27', '2017-12-02 07:53:27'),
(41, 21, 'Product Created', 'a:0:{}', 'a:23:{s:11:\"productName\";s:15:\"BIRO PENS BLACK\";s:13:\"productSerial\";s:5:\"%2XMC\";s:6:\"amount\";i:49;s:8:\"location\";s:5:\"Store\";s:8:\"unitCost\";i:142;s:12:\"sellingPrice\";i:148;s:13:\"reorderAmount\";i:11;s:10:\"expiryDate\";s:10:\"1977-05-20\";s:9:\"companyId\";i:1;s:20:\"productSpecification\";s:109:\"Velit possimus neque dolorem dolorem quasi aut in sequi. Iure ex deleniti qui laudantium commodi perferendis.\";s:15:\"productCurrency\";s:3:\"USD\";s:13:\"productWeight\";i:93;s:14:\"productTaxRate\";i:16;s:19:\"productManufacturer\";s:28:\"Wisoky, Homenick and Reinger\";s:12:\"categoryName\";s:11:\"Consumables\";s:10:\"categoryId\";i:2;s:19:\"usesMultipleStorage\";b:0;s:22:\"productMeasurementUnit\";s:2:\"KG\";s:7:\"barcode\";s:12:\"754013861911\";s:9:\"createdBy\";i:1;s:10:\"updated_at\";s:19:\"2017-12-02 10:53:27\";s:10:\"created_at\";s:19:\"2017-12-02 10:53:27\";s:2:\"id\";i:21;}', '', NULL, NULL, 'Dennis Wanyoike', '2017-12-02 07:53:27', '2017-12-02 07:53:27'),
(42, 21, 'Product Updated', 'a:0:{}', 'a:25:{s:11:\"productName\";s:15:\"BIRO PENS BLACK\";s:13:\"productSerial\";s:5:\"%2XMC\";s:6:\"amount\";i:49;s:8:\"location\";s:5:\"Store\";s:8:\"unitCost\";i:142;s:12:\"sellingPrice\";i:148;s:13:\"reorderAmount\";i:11;s:10:\"expiryDate\";s:10:\"1977-05-20\";s:9:\"companyId\";i:1;s:20:\"productSpecification\";s:109:\"Velit possimus neque dolorem dolorem quasi aut in sequi. Iure ex deleniti qui laudantium commodi perferendis.\";s:15:\"productCurrency\";s:3:\"USD\";s:13:\"productWeight\";i:93;s:14:\"productTaxRate\";i:16;s:19:\"productManufacturer\";s:28:\"Wisoky, Homenick and Reinger\";s:12:\"categoryName\";s:11:\"Consumables\";s:10:\"categoryId\";i:2;s:19:\"usesMultipleStorage\";b:0;s:22:\"productMeasurementUnit\";s:2:\"KG\";s:7:\"barcode\";s:12:\"754013861911\";s:9:\"createdBy\";i:1;s:10:\"updated_at\";s:19:\"2017-12-02 10:53:27\";s:10:\"created_at\";s:19:\"2017-12-02 10:53:27\";s:2:\"id\";i:21;s:4:\"hash\";s:8:\"1dNRCJJd\";s:9:\"updatedBy\";i:1;}', '', NULL, NULL, 'Dennis Wanyoike', '2017-12-02 07:53:27', '2017-12-02 07:53:27'),
(43, 22, 'Product Created', 'a:0:{}', 'a:23:{s:11:\"productName\";s:13:\"BIRO PENS RED\";s:13:\"productSerial\";s:6:\"%X6UXE\";s:6:\"amount\";i:49;s:8:\"location\";s:5:\"Store\";s:8:\"unitCost\";i:297;s:12:\"sellingPrice\";i:315;s:13:\"reorderAmount\";i:13;s:10:\"expiryDate\";s:10:\"1979-07-15\";s:9:\"companyId\";i:1;s:20:\"productSpecification\";s:52:\"Nihil voluptatem incidunt et labore et nemo tempora.\";s:15:\"productCurrency\";s:3:\"USD\";s:13:\"productWeight\";i:20;s:14:\"productTaxRate\";i:16;s:19:\"productManufacturer\";s:8:\"Cole LLC\";s:12:\"categoryName\";s:5:\"Foods\";s:10:\"categoryId\";i:4;s:19:\"usesMultipleStorage\";b:1;s:22:\"productMeasurementUnit\";s:2:\"KG\";s:7:\"barcode\";s:12:\"629051255353\";s:9:\"createdBy\";i:1;s:10:\"updated_at\";s:19:\"2017-12-02 10:53:28\";s:10:\"created_at\";s:19:\"2017-12-02 10:53:28\";s:2:\"id\";i:22;}', '', NULL, NULL, 'Dennis Wanyoike', '2017-12-02 07:53:28', '2017-12-02 07:53:28'),
(44, 22, 'Product Updated', 'a:0:{}', 'a:25:{s:11:\"productName\";s:13:\"BIRO PENS RED\";s:13:\"productSerial\";s:6:\"%X6UXE\";s:6:\"amount\";i:49;s:8:\"location\";s:5:\"Store\";s:8:\"unitCost\";i:297;s:12:\"sellingPrice\";i:315;s:13:\"reorderAmount\";i:13;s:10:\"expiryDate\";s:10:\"1979-07-15\";s:9:\"companyId\";i:1;s:20:\"productSpecification\";s:52:\"Nihil voluptatem incidunt et labore et nemo tempora.\";s:15:\"productCurrency\";s:3:\"USD\";s:13:\"productWeight\";i:20;s:14:\"productTaxRate\";i:16;s:19:\"productManufacturer\";s:8:\"Cole LLC\";s:12:\"categoryName\";s:5:\"Foods\";s:10:\"categoryId\";i:4;s:19:\"usesMultipleStorage\";b:1;s:22:\"productMeasurementUnit\";s:2:\"KG\";s:7:\"barcode\";s:12:\"629051255353\";s:9:\"createdBy\";i:1;s:10:\"updated_at\";s:19:\"2017-12-02 10:53:28\";s:10:\"created_at\";s:19:\"2017-12-02 10:53:28\";s:2:\"id\";i:22;s:4:\"hash\";s:8:\"Ge72FJZd\";s:9:\"updatedBy\";i:1;}', '', NULL, NULL, 'Dennis Wanyoike', '2017-12-02 07:53:28', '2017-12-02 07:53:28'),
(45, 23, 'Product Created', 'a:0:{}', 'a:23:{s:11:\"productName\";s:21:\"PERMANENT MARKER PENS\";s:13:\"productSerial\";s:8:\"C90869TK\";s:6:\"amount\";i:49;s:8:\"location\";s:5:\"Store\";s:8:\"unitCost\";i:273;s:12:\"sellingPrice\";i:281;s:13:\"reorderAmount\";i:2;s:10:\"expiryDate\";s:10:\"1985-06-14\";s:9:\"companyId\";i:1;s:20:\"productSpecification\";s:83:\"Velit suscipit architecto doloremque voluptas id. Sit expedita vitae distinctio ab.\";s:15:\"productCurrency\";s:3:\"USD\";s:13:\"productWeight\";i:57;s:14:\"productTaxRate\";i:16;s:19:\"productManufacturer\";s:11:\"Corkery Inc\";s:12:\"categoryName\";s:10:\"Vegetables\";s:10:\"categoryId\";i:5;s:19:\"usesMultipleStorage\";b:1;s:22:\"productMeasurementUnit\";s:2:\"KG\";s:7:\"barcode\";s:12:\"109839945961\";s:9:\"createdBy\";i:1;s:10:\"updated_at\";s:19:\"2017-12-02 10:53:29\";s:10:\"created_at\";s:19:\"2017-12-02 10:53:29\";s:2:\"id\";i:23;}', '', NULL, NULL, 'Dennis Wanyoike', '2017-12-02 07:53:29', '2017-12-02 07:53:29'),
(46, 23, 'Product Updated', 'a:0:{}', 'a:25:{s:11:\"productName\";s:21:\"PERMANENT MARKER PENS\";s:13:\"productSerial\";s:8:\"C90869TK\";s:6:\"amount\";i:49;s:8:\"location\";s:5:\"Store\";s:8:\"unitCost\";i:273;s:12:\"sellingPrice\";i:281;s:13:\"reorderAmount\";i:2;s:10:\"expiryDate\";s:10:\"1985-06-14\";s:9:\"companyId\";i:1;s:20:\"productSpecification\";s:83:\"Velit suscipit architecto doloremque voluptas id. Sit expedita vitae distinctio ab.\";s:15:\"productCurrency\";s:3:\"USD\";s:13:\"productWeight\";i:57;s:14:\"productTaxRate\";i:16;s:19:\"productManufacturer\";s:11:\"Corkery Inc\";s:12:\"categoryName\";s:10:\"Vegetables\";s:10:\"categoryId\";i:5;s:19:\"usesMultipleStorage\";b:1;s:22:\"productMeasurementUnit\";s:2:\"KG\";s:7:\"barcode\";s:12:\"109839945961\";s:9:\"createdBy\";i:1;s:10:\"updated_at\";s:19:\"2017-12-02 10:53:29\";s:10:\"created_at\";s:19:\"2017-12-02 10:53:29\";s:2:\"id\";i:23;s:4:\"hash\";s:8:\"rb6NH07b\";s:9:\"updatedBy\";i:1;}', '', NULL, NULL, 'Dennis Wanyoike', '2017-12-02 07:53:29', '2017-12-02 07:53:29'),
(47, 24, 'Product Created', 'a:0:{}', 'a:23:{s:11:\"productName\";s:13:\"SMALL STAPLER\";s:13:\"productSerial\";s:12:\"FRYDY2HH1QAZ\";s:6:\"amount\";i:49;s:8:\"location\";s:5:\"Store\";s:8:\"unitCost\";i:107;s:12:\"sellingPrice\";i:124;s:13:\"reorderAmount\";i:14;s:10:\"expiryDate\";s:10:\"1979-01-14\";s:9:\"companyId\";i:1;s:20:\"productSpecification\";s:36:\"Unde incidunt sit quo cum nisi amet.\";s:15:\"productCurrency\";s:3:\"USD\";s:13:\"productWeight\";i:72;s:14:\"productTaxRate\";i:16;s:19:\"productManufacturer\";s:26:\"Mills, Kunze and Bashirian\";s:12:\"categoryName\";s:10:\"Cool Stuff\";s:10:\"categoryId\";i:6;s:19:\"usesMultipleStorage\";b:0;s:22:\"productMeasurementUnit\";s:2:\"KG\";s:7:\"barcode\";s:12:\"888015800866\";s:9:\"createdBy\";i:1;s:10:\"updated_at\";s:19:\"2017-12-02 10:53:32\";s:10:\"created_at\";s:19:\"2017-12-02 10:53:32\";s:2:\"id\";i:24;}', '', NULL, NULL, 'Dennis Wanyoike', '2017-12-02 07:53:32', '2017-12-02 07:53:32'),
(48, 24, 'Product Updated', 'a:0:{}', 'a:25:{s:11:\"productName\";s:13:\"SMALL STAPLER\";s:13:\"productSerial\";s:12:\"FRYDY2HH1QAZ\";s:6:\"amount\";i:49;s:8:\"location\";s:5:\"Store\";s:8:\"unitCost\";i:107;s:12:\"sellingPrice\";i:124;s:13:\"reorderAmount\";i:14;s:10:\"expiryDate\";s:10:\"1979-01-14\";s:9:\"companyId\";i:1;s:20:\"productSpecification\";s:36:\"Unde incidunt sit quo cum nisi amet.\";s:15:\"productCurrency\";s:3:\"USD\";s:13:\"productWeight\";i:72;s:14:\"productTaxRate\";i:16;s:19:\"productManufacturer\";s:26:\"Mills, Kunze and Bashirian\";s:12:\"categoryName\";s:10:\"Cool Stuff\";s:10:\"categoryId\";i:6;s:19:\"usesMultipleStorage\";b:0;s:22:\"productMeasurementUnit\";s:2:\"KG\";s:7:\"barcode\";s:12:\"888015800866\";s:9:\"createdBy\";i:1;s:10:\"updated_at\";s:19:\"2017-12-02 10:53:32\";s:10:\"created_at\";s:19:\"2017-12-02 10:53:32\";s:2:\"id\";i:24;s:4:\"hash\";s:8:\"oej9IZ8d\";s:9:\"updatedBy\";i:1;}', '', NULL, NULL, 'Dennis Wanyoike', '2017-12-02 07:53:32', '2017-12-02 07:53:32'),
(49, 25, 'Product Created', 'a:0:{}', 'a:23:{s:11:\"productName\";s:22:\"STAPLE PINS Small 24/6\";s:13:\"productSerial\";s:9:\"Q1B-E1FCZ\";s:6:\"amount\";i:49;s:8:\"location\";s:5:\"Store\";s:8:\"unitCost\";i:253;s:12:\"sellingPrice\";i:262;s:13:\"reorderAmount\";i:6;s:10:\"expiryDate\";s:10:\"1992-07-31\";s:9:\"companyId\";i:1;s:20:\"productSpecification\";s:23:\"Amet porro non aperiam.\";s:15:\"productCurrency\";s:3:\"USD\";s:13:\"productWeight\";i:11;s:14:\"productTaxRate\";i:16;s:19:\"productManufacturer\";s:30:\"Miller, Zemlak and Heidenreich\";s:12:\"categoryName\";s:10:\"Stationery\";s:10:\"categoryId\";i:1;s:19:\"usesMultipleStorage\";b:0;s:22:\"productMeasurementUnit\";s:2:\"KG\";s:7:\"barcode\";s:12:\"453691316118\";s:9:\"createdBy\";i:1;s:10:\"updated_at\";s:19:\"2017-12-02 10:53:32\";s:10:\"created_at\";s:19:\"2017-12-02 10:53:32\";s:2:\"id\";i:25;}', '', NULL, NULL, 'Dennis Wanyoike', '2017-12-02 07:53:32', '2017-12-02 07:53:32');
INSERT INTO `stock_audits` (`id`, `productId`, `stockOperation`, `oldValues`, `newValues`, `narration`, `oldQuantity`, `newQuantity`, `username`, `created_at`, `updated_at`) VALUES
(50, 25, 'Product Updated', 'a:0:{}', 'a:25:{s:11:\"productName\";s:22:\"STAPLE PINS Small 24/6\";s:13:\"productSerial\";s:9:\"Q1B-E1FCZ\";s:6:\"amount\";i:49;s:8:\"location\";s:5:\"Store\";s:8:\"unitCost\";i:253;s:12:\"sellingPrice\";i:262;s:13:\"reorderAmount\";i:6;s:10:\"expiryDate\";s:10:\"1992-07-31\";s:9:\"companyId\";i:1;s:20:\"productSpecification\";s:23:\"Amet porro non aperiam.\";s:15:\"productCurrency\";s:3:\"USD\";s:13:\"productWeight\";i:11;s:14:\"productTaxRate\";i:16;s:19:\"productManufacturer\";s:30:\"Miller, Zemlak and Heidenreich\";s:12:\"categoryName\";s:10:\"Stationery\";s:10:\"categoryId\";i:1;s:19:\"usesMultipleStorage\";b:0;s:22:\"productMeasurementUnit\";s:2:\"KG\";s:7:\"barcode\";s:12:\"453691316118\";s:9:\"createdBy\";i:1;s:10:\"updated_at\";s:19:\"2017-12-02 10:53:32\";s:10:\"created_at\";s:19:\"2017-12-02 10:53:32\";s:2:\"id\";i:25;s:4:\"hash\";s:8:\"Ge7qSopb\";s:9:\"updatedBy\";i:1;}', '', NULL, NULL, 'Dennis Wanyoike', '2017-12-02 07:53:33', '2017-12-02 07:53:33'),
(51, 26, 'Product Created', 'a:0:{}', 'a:23:{s:11:\"productName\";s:19:\"STAPLE PINS REMOVER\";s:13:\"productSerial\";s:12:\"%L4AIIL2EIHD\";s:6:\"amount\";i:49;s:8:\"location\";s:5:\"Store\";s:8:\"unitCost\";i:160;s:12:\"sellingPrice\";i:172;s:13:\"reorderAmount\";i:1;s:10:\"expiryDate\";s:10:\"1978-10-26\";s:9:\"companyId\";i:1;s:20:\"productSpecification\";s:67:\"Vel tempora et natus. Maiores aut expedita vel quia est voluptatem.\";s:15:\"productCurrency\";s:3:\"USD\";s:13:\"productWeight\";i:96;s:14:\"productTaxRate\";i:16;s:19:\"productManufacturer\";s:9:\"Welch LLC\";s:12:\"categoryName\";s:10:\"Stationery\";s:10:\"categoryId\";i:1;s:19:\"usesMultipleStorage\";b:0;s:22:\"productMeasurementUnit\";s:2:\"KG\";s:7:\"barcode\";s:12:\"895636247987\";s:9:\"createdBy\";i:1;s:10:\"updated_at\";s:19:\"2017-12-02 10:53:33\";s:10:\"created_at\";s:19:\"2017-12-02 10:53:33\";s:2:\"id\";i:26;}', '', NULL, NULL, 'Dennis Wanyoike', '2017-12-02 07:53:33', '2017-12-02 07:53:33'),
(52, 26, 'Product Updated', 'a:0:{}', 'a:25:{s:11:\"productName\";s:19:\"STAPLE PINS REMOVER\";s:13:\"productSerial\";s:12:\"%L4AIIL2EIHD\";s:6:\"amount\";i:49;s:8:\"location\";s:5:\"Store\";s:8:\"unitCost\";i:160;s:12:\"sellingPrice\";i:172;s:13:\"reorderAmount\";i:1;s:10:\"expiryDate\";s:10:\"1978-10-26\";s:9:\"companyId\";i:1;s:20:\"productSpecification\";s:67:\"Vel tempora et natus. Maiores aut expedita vel quia est voluptatem.\";s:15:\"productCurrency\";s:3:\"USD\";s:13:\"productWeight\";i:96;s:14:\"productTaxRate\";i:16;s:19:\"productManufacturer\";s:9:\"Welch LLC\";s:12:\"categoryName\";s:10:\"Stationery\";s:10:\"categoryId\";i:1;s:19:\"usesMultipleStorage\";b:0;s:22:\"productMeasurementUnit\";s:2:\"KG\";s:7:\"barcode\";s:12:\"895636247987\";s:9:\"createdBy\";i:1;s:10:\"updated_at\";s:19:\"2017-12-02 10:53:33\";s:10:\"created_at\";s:19:\"2017-12-02 10:53:33\";s:2:\"id\";i:26;s:4:\"hash\";s:8:\"ge0nTPYb\";s:9:\"updatedBy\";i:1;}', '', NULL, NULL, 'Dennis Wanyoike', '2017-12-02 07:53:33', '2017-12-02 07:53:33'),
(53, 27, 'Product Created', 'a:0:{}', 'a:23:{s:11:\"productName\";s:17:\"SMALL PAPER PUNCH\";s:13:\"productSerial\";s:7:\"L3YLZTN\";s:6:\"amount\";i:49;s:8:\"location\";s:5:\"Store\";s:8:\"unitCost\";i:224;s:12:\"sellingPrice\";i:238;s:13:\"reorderAmount\";i:2;s:10:\"expiryDate\";s:10:\"1973-10-18\";s:9:\"companyId\";i:1;s:20:\"productSpecification\";s:126:\"Fugit dolorem quia veniam saepe ut reprehenderit. Qui recusandae aspernatur explicabo fuga tenetur facilis eligendi molestiae.\";s:15:\"productCurrency\";s:3:\"USD\";s:13:\"productWeight\";i:26;s:14:\"productTaxRate\";i:16;s:19:\"productManufacturer\";s:33:\"Gutkowski, Volkman and Altenwerth\";s:12:\"categoryName\";s:5:\"Foods\";s:10:\"categoryId\";i:4;s:19:\"usesMultipleStorage\";b:1;s:22:\"productMeasurementUnit\";s:2:\"KG\";s:7:\"barcode\";s:12:\"919687991290\";s:9:\"createdBy\";i:1;s:10:\"updated_at\";s:19:\"2017-12-02 10:53:35\";s:10:\"created_at\";s:19:\"2017-12-02 10:53:35\";s:2:\"id\";i:27;}', '', NULL, NULL, 'Dennis Wanyoike', '2017-12-02 07:53:35', '2017-12-02 07:53:35'),
(54, 27, 'Product Updated', 'a:0:{}', 'a:25:{s:11:\"productName\";s:17:\"SMALL PAPER PUNCH\";s:13:\"productSerial\";s:7:\"L3YLZTN\";s:6:\"amount\";i:49;s:8:\"location\";s:5:\"Store\";s:8:\"unitCost\";i:224;s:12:\"sellingPrice\";i:238;s:13:\"reorderAmount\";i:2;s:10:\"expiryDate\";s:10:\"1973-10-18\";s:9:\"companyId\";i:1;s:20:\"productSpecification\";s:126:\"Fugit dolorem quia veniam saepe ut reprehenderit. Qui recusandae aspernatur explicabo fuga tenetur facilis eligendi molestiae.\";s:15:\"productCurrency\";s:3:\"USD\";s:13:\"productWeight\";i:26;s:14:\"productTaxRate\";i:16;s:19:\"productManufacturer\";s:33:\"Gutkowski, Volkman and Altenwerth\";s:12:\"categoryName\";s:5:\"Foods\";s:10:\"categoryId\";i:4;s:19:\"usesMultipleStorage\";b:1;s:22:\"productMeasurementUnit\";s:2:\"KG\";s:7:\"barcode\";s:12:\"919687991290\";s:9:\"createdBy\";i:1;s:10:\"updated_at\";s:19:\"2017-12-02 10:53:35\";s:10:\"created_at\";s:19:\"2017-12-02 10:53:35\";s:2:\"id\";i:27;s:4:\"hash\";s:8:\"Be3gU5Ee\";s:9:\"updatedBy\";i:1;}', '', NULL, NULL, 'Dennis Wanyoike', '2017-12-02 07:53:35', '2017-12-02 07:53:35'),
(55, 28, 'Product Created', 'a:0:{}', 'a:23:{s:11:\"productName\";s:7:\"PENCILS\";s:13:\"productSerial\";s:12:\"TPJ908EGVOSZ\";s:6:\"amount\";i:49;s:8:\"location\";s:5:\"Store\";s:8:\"unitCost\";i:297;s:12:\"sellingPrice\";i:312;s:13:\"reorderAmount\";i:11;s:10:\"expiryDate\";s:10:\"1981-02-25\";s:9:\"companyId\";i:1;s:20:\"productSpecification\";s:46:\"Ut iusto nam quia dolorem est occaecati sequi.\";s:15:\"productCurrency\";s:3:\"USD\";s:13:\"productWeight\";i:19;s:14:\"productTaxRate\";i:16;s:19:\"productManufacturer\";s:23:\"Rowe, Kling and Osinski\";s:12:\"categoryName\";s:11:\"Electronics\";s:10:\"categoryId\";i:3;s:19:\"usesMultipleStorage\";b:1;s:22:\"productMeasurementUnit\";s:2:\"KG\";s:7:\"barcode\";s:12:\"175470509688\";s:9:\"createdBy\";i:1;s:10:\"updated_at\";s:19:\"2017-12-02 10:53:37\";s:10:\"created_at\";s:19:\"2017-12-02 10:53:37\";s:2:\"id\";i:28;}', '', NULL, NULL, 'Dennis Wanyoike', '2017-12-02 07:53:37', '2017-12-02 07:53:37'),
(56, 28, 'Product Updated', 'a:0:{}', 'a:25:{s:11:\"productName\";s:7:\"PENCILS\";s:13:\"productSerial\";s:12:\"TPJ908EGVOSZ\";s:6:\"amount\";i:49;s:8:\"location\";s:5:\"Store\";s:8:\"unitCost\";i:297;s:12:\"sellingPrice\";i:312;s:13:\"reorderAmount\";i:11;s:10:\"expiryDate\";s:10:\"1981-02-25\";s:9:\"companyId\";i:1;s:20:\"productSpecification\";s:46:\"Ut iusto nam quia dolorem est occaecati sequi.\";s:15:\"productCurrency\";s:3:\"USD\";s:13:\"productWeight\";i:19;s:14:\"productTaxRate\";i:16;s:19:\"productManufacturer\";s:23:\"Rowe, Kling and Osinski\";s:12:\"categoryName\";s:11:\"Electronics\";s:10:\"categoryId\";i:3;s:19:\"usesMultipleStorage\";b:1;s:22:\"productMeasurementUnit\";s:2:\"KG\";s:7:\"barcode\";s:12:\"175470509688\";s:9:\"createdBy\";i:1;s:10:\"updated_at\";s:19:\"2017-12-02 10:53:37\";s:10:\"created_at\";s:19:\"2017-12-02 10:53:37\";s:2:\"id\";i:28;s:4:\"hash\";s:8:\"ZdyGcOva\";s:9:\"updatedBy\";i:1;}', '', NULL, NULL, 'Dennis Wanyoike', '2017-12-02 07:53:37', '2017-12-02 07:53:37'),
(57, 29, 'Product Created', 'a:0:{}', 'a:23:{s:11:\"productName\";s:12:\"RUBBER BANDS\";s:13:\"productSerial\";s:7:\"U9O19EX\";s:6:\"amount\";i:49;s:8:\"location\";s:5:\"Store\";s:8:\"unitCost\";i:271;s:12:\"sellingPrice\";i:281;s:13:\"reorderAmount\";i:10;s:10:\"expiryDate\";s:10:\"1989-11-11\";s:9:\"companyId\";i:1;s:20:\"productSpecification\";s:47:\"Saepe corrupti omnis necessitatibus asperiores.\";s:15:\"productCurrency\";s:3:\"USD\";s:13:\"productWeight\";i:49;s:14:\"productTaxRate\";i:16;s:19:\"productManufacturer\";s:31:\"VonRueden, Bernhard and Schmidt\";s:12:\"categoryName\";s:10:\"Stationery\";s:10:\"categoryId\";i:1;s:19:\"usesMultipleStorage\";b:1;s:22:\"productMeasurementUnit\";s:2:\"KG\";s:7:\"barcode\";s:12:\"579361959475\";s:9:\"createdBy\";i:1;s:10:\"updated_at\";s:19:\"2017-12-02 10:53:38\";s:10:\"created_at\";s:19:\"2017-12-02 10:53:38\";s:2:\"id\";i:29;}', '', NULL, NULL, 'Dennis Wanyoike', '2017-12-02 07:53:38', '2017-12-02 07:53:38'),
(58, 29, 'Product Updated', 'a:0:{}', 'a:25:{s:11:\"productName\";s:12:\"RUBBER BANDS\";s:13:\"productSerial\";s:7:\"U9O19EX\";s:6:\"amount\";i:49;s:8:\"location\";s:5:\"Store\";s:8:\"unitCost\";i:271;s:12:\"sellingPrice\";i:281;s:13:\"reorderAmount\";i:10;s:10:\"expiryDate\";s:10:\"1989-11-11\";s:9:\"companyId\";i:1;s:20:\"productSpecification\";s:47:\"Saepe corrupti omnis necessitatibus asperiores.\";s:15:\"productCurrency\";s:3:\"USD\";s:13:\"productWeight\";i:49;s:14:\"productTaxRate\";i:16;s:19:\"productManufacturer\";s:31:\"VonRueden, Bernhard and Schmidt\";s:12:\"categoryName\";s:10:\"Stationery\";s:10:\"categoryId\";i:1;s:19:\"usesMultipleStorage\";b:1;s:22:\"productMeasurementUnit\";s:2:\"KG\";s:7:\"barcode\";s:12:\"579361959475\";s:9:\"createdBy\";i:1;s:10:\"updated_at\";s:19:\"2017-12-02 10:53:38\";s:10:\"created_at\";s:19:\"2017-12-02 10:53:38\";s:2:\"id\";i:29;s:4:\"hash\";s:8:\"pdB0fl3a\";s:9:\"updatedBy\";i:1;}', '', NULL, NULL, 'Dennis Wanyoike', '2017-12-02 07:53:38', '2017-12-02 07:53:38'),
(59, 30, 'Product Created', 'a:0:{}', 'a:23:{s:11:\"productName\";s:9:\"STAMP INK\";s:13:\"productSerial\";s:10:\"G1UPGGVNVL\";s:6:\"amount\";i:49;s:8:\"location\";s:5:\"Store\";s:8:\"unitCost\";i:293;s:12:\"sellingPrice\";i:298;s:13:\"reorderAmount\";i:1;s:10:\"expiryDate\";s:10:\"2003-06-09\";s:9:\"companyId\";i:1;s:20:\"productSpecification\";s:54:\"Temporibus optio assumenda eaque magnam excepturi cum.\";s:15:\"productCurrency\";s:3:\"USD\";s:13:\"productWeight\";i:95;s:14:\"productTaxRate\";i:16;s:19:\"productManufacturer\";s:23:\"Bayer, O\'Keefe and Beer\";s:12:\"categoryName\";s:11:\"Consumables\";s:10:\"categoryId\";i:2;s:19:\"usesMultipleStorage\";b:1;s:22:\"productMeasurementUnit\";s:2:\"KG\";s:7:\"barcode\";s:12:\"458627843379\";s:9:\"createdBy\";i:1;s:10:\"updated_at\";s:19:\"2017-12-02 10:53:39\";s:10:\"created_at\";s:19:\"2017-12-02 10:53:39\";s:2:\"id\";i:30;}', '', NULL, NULL, 'Dennis Wanyoike', '2017-12-02 07:53:39', '2017-12-02 07:53:39'),
(60, 30, 'Product Updated', 'a:0:{}', 'a:25:{s:11:\"productName\";s:9:\"STAMP INK\";s:13:\"productSerial\";s:10:\"G1UPGGVNVL\";s:6:\"amount\";i:49;s:8:\"location\";s:5:\"Store\";s:8:\"unitCost\";i:293;s:12:\"sellingPrice\";i:298;s:13:\"reorderAmount\";i:1;s:10:\"expiryDate\";s:10:\"2003-06-09\";s:9:\"companyId\";i:1;s:20:\"productSpecification\";s:54:\"Temporibus optio assumenda eaque magnam excepturi cum.\";s:15:\"productCurrency\";s:3:\"USD\";s:13:\"productWeight\";i:95;s:14:\"productTaxRate\";i:16;s:19:\"productManufacturer\";s:23:\"Bayer, O\'Keefe and Beer\";s:12:\"categoryName\";s:11:\"Consumables\";s:10:\"categoryId\";i:2;s:19:\"usesMultipleStorage\";b:1;s:22:\"productMeasurementUnit\";s:2:\"KG\";s:7:\"barcode\";s:12:\"458627843379\";s:9:\"createdBy\";i:1;s:10:\"updated_at\";s:19:\"2017-12-02 10:53:39\";s:10:\"created_at\";s:19:\"2017-12-02 10:53:39\";s:2:\"id\";i:30;s:4:\"hash\";s:8:\"Ge7ZhERd\";s:9:\"updatedBy\";i:1;}', '', NULL, NULL, 'Dennis Wanyoike', '2017-12-02 07:53:39', '2017-12-02 07:53:39'),
(61, 31, 'Product Created', 'a:0:{}', 'a:23:{s:11:\"productName\";s:10:\"CALCULATOR\";s:13:\"productSerial\";s:5:\"IBNKR\";s:6:\"amount\";i:49;s:8:\"location\";s:5:\"Store\";s:8:\"unitCost\";i:110;s:12:\"sellingPrice\";i:115;s:13:\"reorderAmount\";i:7;s:10:\"expiryDate\";s:10:\"1976-11-23\";s:9:\"companyId\";i:1;s:20:\"productSpecification\";s:95:\"Natus adipisci repellat rerum consequatur. Ullam non at totam consectetur doloribus recusandae.\";s:15:\"productCurrency\";s:3:\"USD\";s:13:\"productWeight\";i:78;s:14:\"productTaxRate\";i:16;s:19:\"productManufacturer\";s:13:\"Wehner-Mayert\";s:12:\"categoryName\";s:11:\"Consumables\";s:10:\"categoryId\";i:2;s:19:\"usesMultipleStorage\";b:0;s:22:\"productMeasurementUnit\";s:2:\"KG\";s:7:\"barcode\";s:12:\"342930182730\";s:9:\"createdBy\";i:1;s:10:\"updated_at\";s:19:\"2017-12-02 10:53:42\";s:10:\"created_at\";s:19:\"2017-12-02 10:53:42\";s:2:\"id\";i:31;}', '', NULL, NULL, 'Dennis Wanyoike', '2017-12-02 07:53:42', '2017-12-02 07:53:42'),
(62, 31, 'Product Updated', 'a:0:{}', 'a:25:{s:11:\"productName\";s:10:\"CALCULATOR\";s:13:\"productSerial\";s:5:\"IBNKR\";s:6:\"amount\";i:49;s:8:\"location\";s:5:\"Store\";s:8:\"unitCost\";i:110;s:12:\"sellingPrice\";i:115;s:13:\"reorderAmount\";i:7;s:10:\"expiryDate\";s:10:\"1976-11-23\";s:9:\"companyId\";i:1;s:20:\"productSpecification\";s:95:\"Natus adipisci repellat rerum consequatur. Ullam non at totam consectetur doloribus recusandae.\";s:15:\"productCurrency\";s:3:\"USD\";s:13:\"productWeight\";i:78;s:14:\"productTaxRate\";i:16;s:19:\"productManufacturer\";s:13:\"Wehner-Mayert\";s:12:\"categoryName\";s:11:\"Consumables\";s:10:\"categoryId\";i:2;s:19:\"usesMultipleStorage\";b:0;s:22:\"productMeasurementUnit\";s:2:\"KG\";s:7:\"barcode\";s:12:\"342930182730\";s:9:\"createdBy\";i:1;s:10:\"updated_at\";s:19:\"2017-12-02 10:53:42\";s:10:\"created_at\";s:19:\"2017-12-02 10:53:42\";s:2:\"id\";i:31;s:4:\"hash\";s:8:\"6e9WiOxb\";s:9:\"updatedBy\";i:1;}', '', NULL, NULL, 'Dennis Wanyoike', '2017-12-02 07:53:42', '2017-12-02 07:53:42'),
(63, 32, 'Product Created', 'a:0:{}', 'a:23:{s:11:\"productName\";s:9:\"SHARPENER\";s:13:\"productSerial\";s:15:\"W7W%00ZAU46-ULM\";s:6:\"amount\";i:49;s:8:\"location\";s:5:\"Store\";s:8:\"unitCost\";i:241;s:12:\"sellingPrice\";i:248;s:13:\"reorderAmount\";i:7;s:10:\"expiryDate\";s:10:\"2001-07-03\";s:9:\"companyId\";i:1;s:20:\"productSpecification\";s:90:\"Consequatur voluptas magnam omnis assumenda tempora. Sed quae qui voluptatibus officia et.\";s:15:\"productCurrency\";s:3:\"USD\";s:13:\"productWeight\";i:18;s:14:\"productTaxRate\";i:16;s:19:\"productManufacturer\";s:10:\"Beatty PLC\";s:12:\"categoryName\";s:11:\"Consumables\";s:10:\"categoryId\";i:2;s:19:\"usesMultipleStorage\";b:1;s:22:\"productMeasurementUnit\";s:2:\"KG\";s:7:\"barcode\";s:12:\"510879184027\";s:9:\"createdBy\";i:1;s:10:\"updated_at\";s:19:\"2017-12-02 10:53:42\";s:10:\"created_at\";s:19:\"2017-12-02 10:53:42\";s:2:\"id\";i:32;}', '', NULL, NULL, 'Dennis Wanyoike', '2017-12-02 07:53:42', '2017-12-02 07:53:42'),
(64, 32, 'Product Updated', 'a:0:{}', 'a:25:{s:11:\"productName\";s:9:\"SHARPENER\";s:13:\"productSerial\";s:15:\"W7W%00ZAU46-ULM\";s:6:\"amount\";i:49;s:8:\"location\";s:5:\"Store\";s:8:\"unitCost\";i:241;s:12:\"sellingPrice\";i:248;s:13:\"reorderAmount\";i:7;s:10:\"expiryDate\";s:10:\"2001-07-03\";s:9:\"companyId\";i:1;s:20:\"productSpecification\";s:90:\"Consequatur voluptas magnam omnis assumenda tempora. Sed quae qui voluptatibus officia et.\";s:15:\"productCurrency\";s:3:\"USD\";s:13:\"productWeight\";i:18;s:14:\"productTaxRate\";i:16;s:19:\"productManufacturer\";s:10:\"Beatty PLC\";s:12:\"categoryName\";s:11:\"Consumables\";s:10:\"categoryId\";i:2;s:19:\"usesMultipleStorage\";b:1;s:22:\"productMeasurementUnit\";s:2:\"KG\";s:7:\"barcode\";s:12:\"510879184027\";s:9:\"createdBy\";i:1;s:10:\"updated_at\";s:19:\"2017-12-02 10:53:42\";s:10:\"created_at\";s:19:\"2017-12-02 10:53:42\";s:2:\"id\";i:32;s:4:\"hash\";s:8:\"Be1ysV6e\";s:9:\"updatedBy\";i:1;}', '', NULL, NULL, 'Dennis Wanyoike', '2017-12-02 07:53:42', '2017-12-02 07:53:42'),
(65, 33, 'Product Created', 'a:0:{}', 'a:23:{s:11:\"productName\";s:9:\"WHITE OUT\";s:13:\"productSerial\";s:6:\"WWYUVE\";s:6:\"amount\";i:49;s:8:\"location\";s:5:\"Store\";s:8:\"unitCost\";i:105;s:12:\"sellingPrice\";i:110;s:13:\"reorderAmount\";i:15;s:10:\"expiryDate\";s:10:\"1999-05-07\";s:9:\"companyId\";i:1;s:20:\"productSpecification\";s:62:\"Ut veniam saepe sequi perferendis. Illum doloremque sed et ut.\";s:15:\"productCurrency\";s:3:\"USD\";s:13:\"productWeight\";i:99;s:14:\"productTaxRate\";i:16;s:19:\"productManufacturer\";s:23:\"Marks, O\'Kon and Raynor\";s:12:\"categoryName\";s:11:\"Consumables\";s:10:\"categoryId\";i:2;s:19:\"usesMultipleStorage\";b:1;s:22:\"productMeasurementUnit\";s:2:\"KG\";s:7:\"barcode\";s:12:\"556274566877\";s:9:\"createdBy\";i:1;s:10:\"updated_at\";s:19:\"2017-12-02 10:53:43\";s:10:\"created_at\";s:19:\"2017-12-02 10:53:43\";s:2:\"id\";i:33;}', '', NULL, NULL, 'Dennis Wanyoike', '2017-12-02 07:53:43', '2017-12-02 07:53:43'),
(66, 33, 'Product Updated', 'a:0:{}', 'a:25:{s:11:\"productName\";s:9:\"WHITE OUT\";s:13:\"productSerial\";s:6:\"WWYUVE\";s:6:\"amount\";i:49;s:8:\"location\";s:5:\"Store\";s:8:\"unitCost\";i:105;s:12:\"sellingPrice\";i:110;s:13:\"reorderAmount\";i:15;s:10:\"expiryDate\";s:10:\"1999-05-07\";s:9:\"companyId\";i:1;s:20:\"productSpecification\";s:62:\"Ut veniam saepe sequi perferendis. Illum doloremque sed et ut.\";s:15:\"productCurrency\";s:3:\"USD\";s:13:\"productWeight\";i:99;s:14:\"productTaxRate\";i:16;s:19:\"productManufacturer\";s:23:\"Marks, O\'Kon and Raynor\";s:12:\"categoryName\";s:11:\"Consumables\";s:10:\"categoryId\";i:2;s:19:\"usesMultipleStorage\";b:1;s:22:\"productMeasurementUnit\";s:2:\"KG\";s:7:\"barcode\";s:12:\"556274566877\";s:9:\"createdBy\";i:1;s:10:\"updated_at\";s:19:\"2017-12-02 10:53:43\";s:10:\"created_at\";s:19:\"2017-12-02 10:53:43\";s:2:\"id\";i:33;s:4:\"hash\";s:8:\"nazGtVgb\";s:9:\"updatedBy\";i:1;}', '', NULL, NULL, 'Dennis Wanyoike', '2017-12-02 07:53:43', '2017-12-02 07:53:43'),
(67, 34, 'Product Created', 'a:0:{}', 'a:23:{s:11:\"productName\";s:10:\"Glue STICK\";s:13:\"productSerial\";s:9:\"%YT9ASNJU\";s:6:\"amount\";i:49;s:8:\"location\";s:5:\"Store\";s:8:\"unitCost\";i:126;s:12:\"sellingPrice\";i:138;s:13:\"reorderAmount\";i:13;s:10:\"expiryDate\";s:10:\"1983-09-08\";s:9:\"companyId\";i:1;s:20:\"productSpecification\";s:39:\"Nisi autem exercitationem ut eos velit.\";s:15:\"productCurrency\";s:3:\"USD\";s:13:\"productWeight\";i:52;s:14:\"productTaxRate\";i:16;s:19:\"productManufacturer\";s:23:\"Rolfson, Ernser and Fay\";s:12:\"categoryName\";s:11:\"Consumables\";s:10:\"categoryId\";i:2;s:19:\"usesMultipleStorage\";b:1;s:22:\"productMeasurementUnit\";s:2:\"KG\";s:7:\"barcode\";s:12:\"294325922899\";s:9:\"createdBy\";i:1;s:10:\"updated_at\";s:19:\"2017-12-02 10:53:46\";s:10:\"created_at\";s:19:\"2017-12-02 10:53:46\";s:2:\"id\";i:34;}', '', NULL, NULL, 'Dennis Wanyoike', '2017-12-02 07:53:46', '2017-12-02 07:53:46'),
(68, 34, 'Product Updated', 'a:0:{}', 'a:25:{s:11:\"productName\";s:10:\"Glue STICK\";s:13:\"productSerial\";s:9:\"%YT9ASNJU\";s:6:\"amount\";i:49;s:8:\"location\";s:5:\"Store\";s:8:\"unitCost\";i:126;s:12:\"sellingPrice\";i:138;s:13:\"reorderAmount\";i:13;s:10:\"expiryDate\";s:10:\"1983-09-08\";s:9:\"companyId\";i:1;s:20:\"productSpecification\";s:39:\"Nisi autem exercitationem ut eos velit.\";s:15:\"productCurrency\";s:3:\"USD\";s:13:\"productWeight\";i:52;s:14:\"productTaxRate\";i:16;s:19:\"productManufacturer\";s:23:\"Rolfson, Ernser and Fay\";s:12:\"categoryName\";s:11:\"Consumables\";s:10:\"categoryId\";i:2;s:19:\"usesMultipleStorage\";b:1;s:22:\"productMeasurementUnit\";s:2:\"KG\";s:7:\"barcode\";s:12:\"294325922899\";s:9:\"createdBy\";i:1;s:10:\"updated_at\";s:19:\"2017-12-02 10:53:46\";s:10:\"created_at\";s:19:\"2017-12-02 10:53:46\";s:2:\"id\";i:34;s:4:\"hash\";s:8:\"wboLugWd\";s:9:\"updatedBy\";i:1;}', '', NULL, NULL, 'Dennis Wanyoike', '2017-12-02 07:53:46', '2017-12-02 07:53:46'),
(69, 35, 'Product Created', 'a:0:{}', 'a:23:{s:11:\"productName\";s:11:\"HIGHLIGHTER\";s:13:\"productSerial\";s:4:\"LONF\";s:6:\"amount\";i:49;s:8:\"location\";s:5:\"Store\";s:8:\"unitCost\";i:167;s:12:\"sellingPrice\";i:187;s:13:\"reorderAmount\";i:13;s:10:\"expiryDate\";s:10:\"1983-09-24\";s:9:\"companyId\";i:1;s:20:\"productSpecification\";s:21:\"Qui et hic error sed.\";s:15:\"productCurrency\";s:3:\"USD\";s:13:\"productWeight\";i:98;s:14:\"productTaxRate\";i:16;s:19:\"productManufacturer\";s:8:\"Haag LLC\";s:12:\"categoryName\";s:10:\"Cool Stuff\";s:10:\"categoryId\";i:6;s:19:\"usesMultipleStorage\";b:1;s:22:\"productMeasurementUnit\";s:2:\"KG\";s:7:\"barcode\";s:12:\"637050420085\";s:9:\"createdBy\";i:1;s:10:\"updated_at\";s:19:\"2017-12-02 10:53:47\";s:10:\"created_at\";s:19:\"2017-12-02 10:53:47\";s:2:\"id\";i:35;}', '', NULL, NULL, 'Dennis Wanyoike', '2017-12-02 07:53:47', '2017-12-02 07:53:47'),
(70, 35, 'Product Updated', 'a:0:{}', 'a:25:{s:11:\"productName\";s:11:\"HIGHLIGHTER\";s:13:\"productSerial\";s:4:\"LONF\";s:6:\"amount\";i:49;s:8:\"location\";s:5:\"Store\";s:8:\"unitCost\";i:167;s:12:\"sellingPrice\";i:187;s:13:\"reorderAmount\";i:13;s:10:\"expiryDate\";s:10:\"1983-09-24\";s:9:\"companyId\";i:1;s:20:\"productSpecification\";s:21:\"Qui et hic error sed.\";s:15:\"productCurrency\";s:3:\"USD\";s:13:\"productWeight\";i:98;s:14:\"productTaxRate\";i:16;s:19:\"productManufacturer\";s:8:\"Haag LLC\";s:12:\"categoryName\";s:10:\"Cool Stuff\";s:10:\"categoryId\";i:6;s:19:\"usesMultipleStorage\";b:1;s:22:\"productMeasurementUnit\";s:2:\"KG\";s:7:\"barcode\";s:12:\"637050420085\";s:9:\"createdBy\";i:1;s:10:\"updated_at\";s:19:\"2017-12-02 10:53:47\";s:10:\"created_at\";s:19:\"2017-12-02 10:53:47\";s:2:\"id\";i:35;s:4:\"hash\";s:8:\"RbD3Crga\";s:9:\"updatedBy\";i:1;}', '', NULL, NULL, 'Dennis Wanyoike', '2017-12-02 07:53:47', '2017-12-02 07:53:47'),
(71, 36, 'Product Created', 'a:0:{}', 'a:23:{s:11:\"productName\";s:9:\"DUST BINS\";s:13:\"productSerial\";s:5:\"L34PP\";s:6:\"amount\";i:49;s:8:\"location\";s:5:\"Store\";s:8:\"unitCost\";i:111;s:12:\"sellingPrice\";i:127;s:13:\"reorderAmount\";i:12;s:10:\"expiryDate\";s:10:\"1982-06-07\";s:9:\"companyId\";i:1;s:20:\"productSpecification\";s:32:\"Quidem iure perferendis non aut.\";s:15:\"productCurrency\";s:3:\"USD\";s:13:\"productWeight\";i:83;s:14:\"productTaxRate\";i:16;s:19:\"productManufacturer\";s:13:\"Reichel Group\";s:12:\"categoryName\";s:10:\"Vegetables\";s:10:\"categoryId\";i:5;s:19:\"usesMultipleStorage\";b:1;s:22:\"productMeasurementUnit\";s:2:\"KG\";s:7:\"barcode\";s:12:\"876979342959\";s:9:\"createdBy\";i:1;s:10:\"updated_at\";s:19:\"2017-12-02 10:53:49\";s:10:\"created_at\";s:19:\"2017-12-02 10:53:49\";s:2:\"id\";i:36;}', '', NULL, NULL, 'Dennis Wanyoike', '2017-12-02 07:53:49', '2017-12-02 07:53:49'),
(72, 36, 'Product Updated', 'a:0:{}', 'a:25:{s:11:\"productName\";s:9:\"DUST BINS\";s:13:\"productSerial\";s:5:\"L34PP\";s:6:\"amount\";i:49;s:8:\"location\";s:5:\"Store\";s:8:\"unitCost\";i:111;s:12:\"sellingPrice\";i:127;s:13:\"reorderAmount\";i:12;s:10:\"expiryDate\";s:10:\"1982-06-07\";s:9:\"companyId\";i:1;s:20:\"productSpecification\";s:32:\"Quidem iure perferendis non aut.\";s:15:\"productCurrency\";s:3:\"USD\";s:13:\"productWeight\";i:83;s:14:\"productTaxRate\";i:16;s:19:\"productManufacturer\";s:13:\"Reichel Group\";s:12:\"categoryName\";s:10:\"Vegetables\";s:10:\"categoryId\";i:5;s:19:\"usesMultipleStorage\";b:1;s:22:\"productMeasurementUnit\";s:2:\"KG\";s:7:\"barcode\";s:12:\"876979342959\";s:9:\"createdBy\";i:1;s:10:\"updated_at\";s:19:\"2017-12-02 10:53:49\";s:10:\"created_at\";s:19:\"2017-12-02 10:53:49\";s:2:\"id\";i:36;s:4:\"hash\";s:8:\"gepxFXMe\";s:9:\"updatedBy\";i:1;}', '', NULL, NULL, 'Dennis Wanyoike', '2017-12-02 07:53:49', '2017-12-02 07:53:49'),
(73, 37, 'Product Created', 'a:0:{}', 'a:23:{s:11:\"productName\";s:15:\"PLAIN NCR 4PART\";s:13:\"productSerial\";s:6:\"4ZEGBE\";s:6:\"amount\";i:49;s:8:\"location\";s:5:\"Store\";s:8:\"unitCost\";i:101;s:12:\"sellingPrice\";i:113;s:13:\"reorderAmount\";i:5;s:10:\"expiryDate\";s:10:\"2016-03-31\";s:9:\"companyId\";i:1;s:20:\"productSpecification\";s:117:\"Porro maxime cupiditate enim consectetur qui eos possimus. Consequuntur illum deleniti rerum odio nulla sed adipisci.\";s:15:\"productCurrency\";s:3:\"USD\";s:13:\"productWeight\";i:99;s:14:\"productTaxRate\";i:16;s:19:\"productManufacturer\";s:14:\"Parisian-Nader\";s:12:\"categoryName\";s:11:\"Consumables\";s:10:\"categoryId\";i:2;s:19:\"usesMultipleStorage\";b:0;s:22:\"productMeasurementUnit\";s:2:\"KG\";s:7:\"barcode\";s:12:\"204735732841\";s:9:\"createdBy\";i:1;s:10:\"updated_at\";s:19:\"2017-12-02 10:53:52\";s:10:\"created_at\";s:19:\"2017-12-02 10:53:52\";s:2:\"id\";i:37;}', '', NULL, NULL, 'Dennis Wanyoike', '2017-12-02 07:53:52', '2017-12-02 07:53:52'),
(74, 37, 'Product Updated', 'a:0:{}', 'a:25:{s:11:\"productName\";s:15:\"PLAIN NCR 4PART\";s:13:\"productSerial\";s:6:\"4ZEGBE\";s:6:\"amount\";i:49;s:8:\"location\";s:5:\"Store\";s:8:\"unitCost\";i:101;s:12:\"sellingPrice\";i:113;s:13:\"reorderAmount\";i:5;s:10:\"expiryDate\";s:10:\"2016-03-31\";s:9:\"companyId\";i:1;s:20:\"productSpecification\";s:117:\"Porro maxime cupiditate enim consectetur qui eos possimus. Consequuntur illum deleniti rerum odio nulla sed adipisci.\";s:15:\"productCurrency\";s:3:\"USD\";s:13:\"productWeight\";i:99;s:14:\"productTaxRate\";i:16;s:19:\"productManufacturer\";s:14:\"Parisian-Nader\";s:12:\"categoryName\";s:11:\"Consumables\";s:10:\"categoryId\";i:2;s:19:\"usesMultipleStorage\";b:0;s:22:\"productMeasurementUnit\";s:2:\"KG\";s:7:\"barcode\";s:12:\"204735732841\";s:9:\"createdBy\";i:1;s:10:\"updated_at\";s:19:\"2017-12-02 10:53:52\";s:10:\"created_at\";s:19:\"2017-12-02 10:53:52\";s:2:\"id\";i:37;s:4:\"hash\";s:8:\"6e9kHG1b\";s:9:\"updatedBy\";i:1;}', '', NULL, NULL, 'Dennis Wanyoike', '2017-12-02 07:53:52', '2017-12-02 07:53:52'),
(75, 38, 'Product Created', 'a:0:{}', 'a:23:{s:11:\"productName\";s:20:\"ARRIVAL NOTIFICATION\";s:13:\"productSerial\";s:13:\"FM4LJJHY4IWJN\";s:6:\"amount\";i:49;s:8:\"location\";s:5:\"Store\";s:8:\"unitCost\";i:137;s:12:\"sellingPrice\";i:146;s:13:\"reorderAmount\";i:14;s:10:\"expiryDate\";s:10:\"1976-04-22\";s:9:\"companyId\";i:1;s:20:\"productSpecification\";s:87:\"In a est commodi velit. Tempora sit dolorum distinctio magni voluptas libero similique.\";s:15:\"productCurrency\";s:3:\"USD\";s:13:\"productWeight\";i:93;s:14:\"productTaxRate\";i:16;s:19:\"productManufacturer\";s:24:\"Homenick, Ortiz and Kihn\";s:12:\"categoryName\";s:5:\"Foods\";s:10:\"categoryId\";i:4;s:19:\"usesMultipleStorage\";b:0;s:22:\"productMeasurementUnit\";s:2:\"KG\";s:7:\"barcode\";s:12:\"416973661726\";s:9:\"createdBy\";i:1;s:10:\"updated_at\";s:19:\"2017-12-02 10:53:52\";s:10:\"created_at\";s:19:\"2017-12-02 10:53:52\";s:2:\"id\";i:38;}', '', NULL, NULL, 'Dennis Wanyoike', '2017-12-02 07:53:53', '2017-12-02 07:53:53'),
(76, 38, 'Product Updated', 'a:0:{}', 'a:25:{s:11:\"productName\";s:20:\"ARRIVAL NOTIFICATION\";s:13:\"productSerial\";s:13:\"FM4LJJHY4IWJN\";s:6:\"amount\";i:49;s:8:\"location\";s:5:\"Store\";s:8:\"unitCost\";i:137;s:12:\"sellingPrice\";i:146;s:13:\"reorderAmount\";i:14;s:10:\"expiryDate\";s:10:\"1976-04-22\";s:9:\"companyId\";i:1;s:20:\"productSpecification\";s:87:\"In a est commodi velit. Tempora sit dolorum distinctio magni voluptas libero similique.\";s:15:\"productCurrency\";s:3:\"USD\";s:13:\"productWeight\";i:93;s:14:\"productTaxRate\";i:16;s:19:\"productManufacturer\";s:24:\"Homenick, Ortiz and Kihn\";s:12:\"categoryName\";s:5:\"Foods\";s:10:\"categoryId\";i:4;s:19:\"usesMultipleStorage\";b:0;s:22:\"productMeasurementUnit\";s:2:\"KG\";s:7:\"barcode\";s:12:\"416973661726\";s:9:\"createdBy\";i:1;s:10:\"updated_at\";s:19:\"2017-12-02 10:53:52\";s:10:\"created_at\";s:19:\"2017-12-02 10:53:52\";s:2:\"id\";i:38;s:4:\"hash\";s:8:\"jbqgIDMe\";s:9:\"updatedBy\";i:1;}', '', NULL, NULL, 'Dennis Wanyoike', '2017-12-02 07:53:53', '2017-12-02 07:53:53'),
(77, 39, 'Product Created', 'a:0:{}', 'a:23:{s:11:\"productName\";s:12:\"LETTER HEADS\";s:13:\"productSerial\";s:7:\"_PV8CTZ\";s:6:\"amount\";i:49;s:8:\"location\";s:5:\"Store\";s:8:\"unitCost\";i:244;s:12:\"sellingPrice\";i:261;s:13:\"reorderAmount\";i:5;s:10:\"expiryDate\";s:10:\"2006-03-20\";s:9:\"companyId\";i:1;s:20:\"productSpecification\";s:79:\"Hic deserunt est corporis. Aut aliquam ullam blanditiis saepe illo ad voluptas.\";s:15:\"productCurrency\";s:3:\"USD\";s:13:\"productWeight\";i:68;s:14:\"productTaxRate\";i:16;s:19:\"productManufacturer\";s:10:\"Kohler PLC\";s:12:\"categoryName\";s:10:\"Stationery\";s:10:\"categoryId\";i:1;s:19:\"usesMultipleStorage\";b:0;s:22:\"productMeasurementUnit\";s:2:\"KG\";s:7:\"barcode\";s:12:\"309315744976\";s:9:\"createdBy\";i:1;s:10:\"updated_at\";s:19:\"2017-12-02 10:53:53\";s:10:\"created_at\";s:19:\"2017-12-02 10:53:53\";s:2:\"id\";i:39;}', '', NULL, NULL, 'Dennis Wanyoike', '2017-12-02 07:53:53', '2017-12-02 07:53:53'),
(78, 39, 'Product Updated', 'a:0:{}', 'a:25:{s:11:\"productName\";s:12:\"LETTER HEADS\";s:13:\"productSerial\";s:7:\"_PV8CTZ\";s:6:\"amount\";i:49;s:8:\"location\";s:5:\"Store\";s:8:\"unitCost\";i:244;s:12:\"sellingPrice\";i:261;s:13:\"reorderAmount\";i:5;s:10:\"expiryDate\";s:10:\"2006-03-20\";s:9:\"companyId\";i:1;s:20:\"productSpecification\";s:79:\"Hic deserunt est corporis. Aut aliquam ullam blanditiis saepe illo ad voluptas.\";s:15:\"productCurrency\";s:3:\"USD\";s:13:\"productWeight\";i:68;s:14:\"productTaxRate\";i:16;s:19:\"productManufacturer\";s:10:\"Kohler PLC\";s:12:\"categoryName\";s:10:\"Stationery\";s:10:\"categoryId\";i:1;s:19:\"usesMultipleStorage\";b:0;s:22:\"productMeasurementUnit\";s:2:\"KG\";s:7:\"barcode\";s:12:\"309315744976\";s:9:\"createdBy\";i:1;s:10:\"updated_at\";s:19:\"2017-12-02 10:53:53\";s:10:\"created_at\";s:19:\"2017-12-02 10:53:53\";s:2:\"id\";i:39;s:4:\"hash\";s:8:\"MaxYS5nb\";s:9:\"updatedBy\";i:1;}', '', NULL, NULL, 'Dennis Wanyoike', '2017-12-02 07:53:53', '2017-12-02 07:53:53'),
(79, 40, 'Product Created', 'a:0:{}', 'a:23:{s:11:\"productName\";s:9:\"ULD BOOKS\";s:13:\"productSerial\";s:8:\"GBXNRKYI\";s:6:\"amount\";i:49;s:8:\"location\";s:5:\"Store\";s:8:\"unitCost\";i:128;s:12:\"sellingPrice\";i:145;s:13:\"reorderAmount\";i:1;s:10:\"expiryDate\";s:10:\"1985-04-08\";s:9:\"companyId\";i:1;s:20:\"productSpecification\";s:85:\"Doloribus fugit quod atque sapiente officia omnis hic. Facere id eum et consequuntur.\";s:15:\"productCurrency\";s:3:\"USD\";s:13:\"productWeight\";i:68;s:14:\"productTaxRate\";i:16;s:19:\"productManufacturer\";s:17:\"Tromp-Oberbrunner\";s:12:\"categoryName\";s:5:\"Foods\";s:10:\"categoryId\";i:4;s:19:\"usesMultipleStorage\";b:1;s:22:\"productMeasurementUnit\";s:2:\"KG\";s:7:\"barcode\";s:12:\"780223876216\";s:9:\"createdBy\";i:1;s:10:\"updated_at\";s:19:\"2017-12-02 10:53:53\";s:10:\"created_at\";s:19:\"2017-12-02 10:53:53\";s:2:\"id\";i:40;}', '', NULL, NULL, 'Dennis Wanyoike', '2017-12-02 07:53:53', '2017-12-02 07:53:53'),
(80, 40, 'Product Updated', 'a:0:{}', 'a:25:{s:11:\"productName\";s:9:\"ULD BOOKS\";s:13:\"productSerial\";s:8:\"GBXNRKYI\";s:6:\"amount\";i:49;s:8:\"location\";s:5:\"Store\";s:8:\"unitCost\";i:128;s:12:\"sellingPrice\";i:145;s:13:\"reorderAmount\";i:1;s:10:\"expiryDate\";s:10:\"1985-04-08\";s:9:\"companyId\";i:1;s:20:\"productSpecification\";s:85:\"Doloribus fugit quod atque sapiente officia omnis hic. Facere id eum et consequuntur.\";s:15:\"productCurrency\";s:3:\"USD\";s:13:\"productWeight\";i:68;s:14:\"productTaxRate\";i:16;s:19:\"productManufacturer\";s:17:\"Tromp-Oberbrunner\";s:12:\"categoryName\";s:5:\"Foods\";s:10:\"categoryId\";i:4;s:19:\"usesMultipleStorage\";b:1;s:22:\"productMeasurementUnit\";s:2:\"KG\";s:7:\"barcode\";s:12:\"780223876216\";s:9:\"createdBy\";i:1;s:10:\"updated_at\";s:19:\"2017-12-02 10:53:53\";s:10:\"created_at\";s:19:\"2017-12-02 10:53:53\";s:2:\"id\";i:40;s:4:\"hash\";s:8:\"rb6gT0Bd\";s:9:\"updatedBy\";i:1;}', '', NULL, NULL, 'Dennis Wanyoike', '2017-12-02 07:53:53', '2017-12-02 07:53:53'),
(81, 41, 'Product Created', 'a:0:{}', 'a:23:{s:11:\"productName\";s:26:\"PROPERTY DECLARATION BOOKS\";s:13:\"productSerial\";s:5:\"J4KEQ\";s:6:\"amount\";i:49;s:8:\"location\";s:5:\"Store\";s:8:\"unitCost\";i:206;s:12:\"sellingPrice\";i:211;s:13:\"reorderAmount\";i:13;s:10:\"expiryDate\";s:10:\"1980-01-16\";s:9:\"companyId\";i:1;s:20:\"productSpecification\";s:29:\"Voluptatem et qui eum quidem.\";s:15:\"productCurrency\";s:3:\"USD\";s:13:\"productWeight\";i:84;s:14:\"productTaxRate\";i:16;s:19:\"productManufacturer\";s:32:\"Wilkinson, Lebsack and Bahringer\";s:12:\"categoryName\";s:10:\"Vegetables\";s:10:\"categoryId\";i:5;s:19:\"usesMultipleStorage\";b:1;s:22:\"productMeasurementUnit\";s:2:\"KG\";s:7:\"barcode\";s:12:\"890139473116\";s:9:\"createdBy\";i:1;s:10:\"updated_at\";s:19:\"2017-12-02 10:53:55\";s:10:\"created_at\";s:19:\"2017-12-02 10:53:55\";s:2:\"id\";i:41;}', '', NULL, NULL, 'Dennis Wanyoike', '2017-12-02 07:53:55', '2017-12-02 07:53:55'),
(82, 41, 'Product Updated', 'a:0:{}', 'a:25:{s:11:\"productName\";s:26:\"PROPERTY DECLARATION BOOKS\";s:13:\"productSerial\";s:5:\"J4KEQ\";s:6:\"amount\";i:49;s:8:\"location\";s:5:\"Store\";s:8:\"unitCost\";i:206;s:12:\"sellingPrice\";i:211;s:13:\"reorderAmount\";i:13;s:10:\"expiryDate\";s:10:\"1980-01-16\";s:9:\"companyId\";i:1;s:20:\"productSpecification\";s:29:\"Voluptatem et qui eum quidem.\";s:15:\"productCurrency\";s:3:\"USD\";s:13:\"productWeight\";i:84;s:14:\"productTaxRate\";i:16;s:19:\"productManufacturer\";s:32:\"Wilkinson, Lebsack and Bahringer\";s:12:\"categoryName\";s:10:\"Vegetables\";s:10:\"categoryId\";i:5;s:19:\"usesMultipleStorage\";b:1;s:22:\"productMeasurementUnit\";s:2:\"KG\";s:7:\"barcode\";s:12:\"890139473116\";s:9:\"createdBy\";i:1;s:10:\"updated_at\";s:19:\"2017-12-02 10:53:55\";s:10:\"created_at\";s:19:\"2017-12-02 10:53:55\";s:2:\"id\";i:41;s:4:\"hash\";s:8:\"VeZ5U6Ad\";s:9:\"updatedBy\";i:1;}', '', NULL, NULL, 'Dennis Wanyoike', '2017-12-02 07:53:55', '2017-12-02 07:53:55'),
(83, 42, 'Product Created', 'a:0:{}', 'a:23:{s:11:\"productName\";s:26:\"SECURITY DECLARATION BOOKS\";s:13:\"productSerial\";s:6:\"19FSTL\";s:6:\"amount\";i:49;s:8:\"location\";s:5:\"Store\";s:8:\"unitCost\";i:222;s:12:\"sellingPrice\";i:233;s:13:\"reorderAmount\";i:8;s:10:\"expiryDate\";s:10:\"1986-03-13\";s:9:\"companyId\";i:1;s:20:\"productSpecification\";s:97:\"Et dignissimos rerum ut architecto. Dicta quae nam dignissimos molestiae alias at exercitationem.\";s:15:\"productCurrency\";s:3:\"USD\";s:13:\"productWeight\";i:30;s:14:\"productTaxRate\";i:16;s:19:\"productManufacturer\";s:29:\"Haley, Erdman and Breitenberg\";s:12:\"categoryName\";s:10:\"Vegetables\";s:10:\"categoryId\";i:5;s:19:\"usesMultipleStorage\";b:1;s:22:\"productMeasurementUnit\";s:2:\"KG\";s:7:\"barcode\";s:12:\"212703360385\";s:9:\"createdBy\";i:1;s:10:\"updated_at\";s:19:\"2017-12-02 10:53:56\";s:10:\"created_at\";s:19:\"2017-12-02 10:53:56\";s:2:\"id\";i:42;}', '', NULL, NULL, 'Dennis Wanyoike', '2017-12-02 07:53:56', '2017-12-02 07:53:56'),
(84, 42, 'Product Updated', 'a:0:{}', 'a:25:{s:11:\"productName\";s:26:\"SECURITY DECLARATION BOOKS\";s:13:\"productSerial\";s:6:\"19FSTL\";s:6:\"amount\";i:49;s:8:\"location\";s:5:\"Store\";s:8:\"unitCost\";i:222;s:12:\"sellingPrice\";i:233;s:13:\"reorderAmount\";i:8;s:10:\"expiryDate\";s:10:\"1986-03-13\";s:9:\"companyId\";i:1;s:20:\"productSpecification\";s:97:\"Et dignissimos rerum ut architecto. Dicta quae nam dignissimos molestiae alias at exercitationem.\";s:15:\"productCurrency\";s:3:\"USD\";s:13:\"productWeight\";i:30;s:14:\"productTaxRate\";i:16;s:19:\"productManufacturer\";s:29:\"Haley, Erdman and Breitenberg\";s:12:\"categoryName\";s:10:\"Vegetables\";s:10:\"categoryId\";i:5;s:19:\"usesMultipleStorage\";b:1;s:22:\"productMeasurementUnit\";s:2:\"KG\";s:7:\"barcode\";s:12:\"212703360385\";s:9:\"createdBy\";i:1;s:10:\"updated_at\";s:19:\"2017-12-02 10:53:56\";s:10:\"created_at\";s:19:\"2017-12-02 10:53:56\";s:2:\"id\";i:42;s:4:\"hash\";s:8:\"9aQ3cNgd\";s:9:\"updatedBy\";i:1;}', '', NULL, NULL, 'Dennis Wanyoike', '2017-12-02 07:53:56', '2017-12-02 07:53:56'),
(85, 43, 'Product Created', 'a:0:{}', 'a:23:{s:11:\"productName\";s:9:\"Gate Pass\";s:13:\"productSerial\";s:4:\"%DDP\";s:6:\"amount\";i:49;s:8:\"location\";s:5:\"Store\";s:8:\"unitCost\";i:228;s:12:\"sellingPrice\";i:241;s:13:\"reorderAmount\";i:4;s:10:\"expiryDate\";s:10:\"2008-05-08\";s:9:\"companyId\";i:1;s:20:\"productSpecification\";s:68:\"At doloremque reprehenderit consequatur sunt libero explicabo in in.\";s:15:\"productCurrency\";s:3:\"USD\";s:13:\"productWeight\";i:89;s:14:\"productTaxRate\";i:16;s:19:\"productManufacturer\";s:13:\"Davis-Ullrich\";s:12:\"categoryName\";s:5:\"Foods\";s:10:\"categoryId\";i:4;s:19:\"usesMultipleStorage\";b:0;s:22:\"productMeasurementUnit\";s:2:\"KG\";s:7:\"barcode\";s:12:\"891357468182\";s:9:\"createdBy\";i:1;s:10:\"updated_at\";s:19:\"2017-12-02 10:53:58\";s:10:\"created_at\";s:19:\"2017-12-02 10:53:58\";s:2:\"id\";i:43;}', '', NULL, NULL, 'Dennis Wanyoike', '2017-12-02 07:53:58', '2017-12-02 07:53:58'),
(86, 43, 'Product Updated', 'a:0:{}', 'a:25:{s:11:\"productName\";s:9:\"Gate Pass\";s:13:\"productSerial\";s:4:\"%DDP\";s:6:\"amount\";i:49;s:8:\"location\";s:5:\"Store\";s:8:\"unitCost\";i:228;s:12:\"sellingPrice\";i:241;s:13:\"reorderAmount\";i:4;s:10:\"expiryDate\";s:10:\"2008-05-08\";s:9:\"companyId\";i:1;s:20:\"productSpecification\";s:68:\"At doloremque reprehenderit consequatur sunt libero explicabo in in.\";s:15:\"productCurrency\";s:3:\"USD\";s:13:\"productWeight\";i:89;s:14:\"productTaxRate\";i:16;s:19:\"productManufacturer\";s:13:\"Davis-Ullrich\";s:12:\"categoryName\";s:5:\"Foods\";s:10:\"categoryId\";i:4;s:19:\"usesMultipleStorage\";b:0;s:22:\"productMeasurementUnit\";s:2:\"KG\";s:7:\"barcode\";s:12:\"891357468182\";s:9:\"createdBy\";i:1;s:10:\"updated_at\";s:19:\"2017-12-02 10:53:58\";s:10:\"created_at\";s:19:\"2017-12-02 10:53:58\";s:2:\"id\";i:43;s:4:\"hash\";s:8:\"ZdyQfyvd\";s:9:\"updatedBy\";i:1;}', '', NULL, NULL, 'Dennis Wanyoike', '2017-12-02 07:53:58', '2017-12-02 07:53:58'),
(87, 44, 'Product Created', 'a:0:{}', 'a:23:{s:11:\"productName\";s:17:\"TRANSGLOBAL TAPES\";s:13:\"productSerial\";s:6:\"LMTISO\";s:6:\"amount\";i:49;s:8:\"location\";s:5:\"Store\";s:8:\"unitCost\";i:146;s:12:\"sellingPrice\";i:157;s:13:\"reorderAmount\";i:3;s:10:\"expiryDate\";s:10:\"2015-05-02\";s:9:\"companyId\";i:1;s:20:\"productSpecification\";s:81:\"Enim possimus sed aut voluptatem laborum aut. Ea dolor dolor quae rem fugit quod.\";s:15:\"productCurrency\";s:3:\"USD\";s:13:\"productWeight\";i:56;s:14:\"productTaxRate\";i:16;s:19:\"productManufacturer\";s:9:\"Lesch PLC\";s:12:\"categoryName\";s:10:\"Stationery\";s:10:\"categoryId\";i:1;s:19:\"usesMultipleStorage\";b:1;s:22:\"productMeasurementUnit\";s:2:\"KG\";s:7:\"barcode\";s:12:\"484453047179\";s:9:\"createdBy\";i:1;s:10:\"updated_at\";s:19:\"2017-12-02 10:53:58\";s:10:\"created_at\";s:19:\"2017-12-02 10:53:58\";s:2:\"id\";i:44;}', '', NULL, NULL, 'Dennis Wanyoike', '2017-12-02 07:53:58', '2017-12-02 07:53:58'),
(88, 44, 'Product Updated', 'a:0:{}', 'a:25:{s:11:\"productName\";s:17:\"TRANSGLOBAL TAPES\";s:13:\"productSerial\";s:6:\"LMTISO\";s:6:\"amount\";i:49;s:8:\"location\";s:5:\"Store\";s:8:\"unitCost\";i:146;s:12:\"sellingPrice\";i:157;s:13:\"reorderAmount\";i:3;s:10:\"expiryDate\";s:10:\"2015-05-02\";s:9:\"companyId\";i:1;s:20:\"productSpecification\";s:81:\"Enim possimus sed aut voluptatem laborum aut. Ea dolor dolor quae rem fugit quod.\";s:15:\"productCurrency\";s:3:\"USD\";s:13:\"productWeight\";i:56;s:14:\"productTaxRate\";i:16;s:19:\"productManufacturer\";s:9:\"Lesch PLC\";s:12:\"categoryName\";s:10:\"Stationery\";s:10:\"categoryId\";i:1;s:19:\"usesMultipleStorage\";b:1;s:22:\"productMeasurementUnit\";s:2:\"KG\";s:7:\"barcode\";s:12:\"484453047179\";s:9:\"createdBy\";i:1;s:10:\"updated_at\";s:19:\"2017-12-02 10:53:58\";s:10:\"created_at\";s:19:\"2017-12-02 10:53:58\";s:2:\"id\";i:44;s:4:\"hash\";s:8:\"b828hMXe\";s:9:\"updatedBy\";i:1;}', '', NULL, NULL, 'Dennis Wanyoike', '2017-12-02 07:53:58', '2017-12-02 07:53:58'),
(89, 45, 'Product Created', 'a:0:{}', 'a:23:{s:11:\"productName\";s:13:\"RUBBER GLOVES\";s:13:\"productSerial\";s:7:\"2G49WGJ\";s:6:\"amount\";i:49;s:8:\"location\";s:5:\"Store\";s:8:\"unitCost\";i:239;s:12:\"sellingPrice\";i:252;s:13:\"reorderAmount\";i:7;s:10:\"expiryDate\";s:10:\"1971-06-28\";s:9:\"companyId\";i:1;s:20:\"productSpecification\";s:19:\"In quasi fuga ipsa.\";s:15:\"productCurrency\";s:3:\"USD\";s:13:\"productWeight\";i:25;s:14:\"productTaxRate\";i:16;s:19:\"productManufacturer\";s:11:\"Johns Group\";s:12:\"categoryName\";s:10:\"Cool Stuff\";s:10:\"categoryId\";i:6;s:19:\"usesMultipleStorage\";b:1;s:22:\"productMeasurementUnit\";s:2:\"KG\";s:7:\"barcode\";s:12:\"513685328876\";s:9:\"createdBy\";i:1;s:10:\"updated_at\";s:19:\"2017-12-02 10:53:59\";s:10:\"created_at\";s:19:\"2017-12-02 10:53:59\";s:2:\"id\";i:45;}', '', NULL, NULL, 'Dennis Wanyoike', '2017-12-02 07:53:59', '2017-12-02 07:53:59'),
(90, 45, 'Product Updated', 'a:0:{}', 'a:25:{s:11:\"productName\";s:13:\"RUBBER GLOVES\";s:13:\"productSerial\";s:7:\"2G49WGJ\";s:6:\"amount\";i:49;s:8:\"location\";s:5:\"Store\";s:8:\"unitCost\";i:239;s:12:\"sellingPrice\";i:252;s:13:\"reorderAmount\";i:7;s:10:\"expiryDate\";s:10:\"1971-06-28\";s:9:\"companyId\";i:1;s:20:\"productSpecification\";s:19:\"In quasi fuga ipsa.\";s:15:\"productCurrency\";s:3:\"USD\";s:13:\"productWeight\";i:25;s:14:\"productTaxRate\";i:16;s:19:\"productManufacturer\";s:11:\"Johns Group\";s:12:\"categoryName\";s:10:\"Cool Stuff\";s:10:\"categoryId\";i:6;s:19:\"usesMultipleStorage\";b:1;s:22:\"productMeasurementUnit\";s:2:\"KG\";s:7:\"barcode\";s:12:\"513685328876\";s:9:\"createdBy\";i:1;s:10:\"updated_at\";s:19:\"2017-12-02 10:53:59\";s:10:\"created_at\";s:19:\"2017-12-02 10:53:59\";s:2:\"id\";i:45;s:4:\"hash\";s:8:\"e1wwi6pb\";s:9:\"updatedBy\";i:1;}', '', NULL, NULL, 'Dennis Wanyoike', '2017-12-02 07:53:59', '2017-12-02 07:53:59'),
(91, 46, 'Product Created', 'a:0:{}', 'a:23:{s:11:\"productName\";s:14:\"LEATHER GLOVES\";s:13:\"productSerial\";s:8:\"HBPKNPAB\";s:6:\"amount\";i:49;s:8:\"location\";s:5:\"Store\";s:8:\"unitCost\";i:279;s:12:\"sellingPrice\";i:289;s:13:\"reorderAmount\";i:11;s:10:\"expiryDate\";s:10:\"2016-04-20\";s:9:\"companyId\";i:1;s:20:\"productSpecification\";s:53:\"Et repellendus ea quibusdam pariatur consequuntur ea.\";s:15:\"productCurrency\";s:3:\"USD\";s:13:\"productWeight\";i:69;s:14:\"productTaxRate\";i:16;s:19:\"productManufacturer\";s:16:\"Koelpin and Sons\";s:12:\"categoryName\";s:5:\"Foods\";s:10:\"categoryId\";i:4;s:19:\"usesMultipleStorage\";b:1;s:22:\"productMeasurementUnit\";s:2:\"KG\";s:7:\"barcode\";s:12:\"856109607899\";s:9:\"createdBy\";i:1;s:10:\"updated_at\";s:19:\"2017-12-02 10:54:02\";s:10:\"created_at\";s:19:\"2017-12-02 10:54:02\";s:2:\"id\";i:46;}', '', NULL, NULL, 'Dennis Wanyoike', '2017-12-02 07:54:02', '2017-12-02 07:54:02'),
(92, 46, 'Product Updated', 'a:0:{}', 'a:25:{s:11:\"productName\";s:14:\"LEATHER GLOVES\";s:13:\"productSerial\";s:8:\"HBPKNPAB\";s:6:\"amount\";i:49;s:8:\"location\";s:5:\"Store\";s:8:\"unitCost\";i:279;s:12:\"sellingPrice\";i:289;s:13:\"reorderAmount\";i:11;s:10:\"expiryDate\";s:10:\"2016-04-20\";s:9:\"companyId\";i:1;s:20:\"productSpecification\";s:53:\"Et repellendus ea quibusdam pariatur consequuntur ea.\";s:15:\"productCurrency\";s:3:\"USD\";s:13:\"productWeight\";i:69;s:14:\"productTaxRate\";i:16;s:19:\"productManufacturer\";s:16:\"Koelpin and Sons\";s:12:\"categoryName\";s:5:\"Foods\";s:10:\"categoryId\";i:4;s:19:\"usesMultipleStorage\";b:1;s:22:\"productMeasurementUnit\";s:2:\"KG\";s:7:\"barcode\";s:12:\"856109607899\";s:9:\"createdBy\";i:1;s:10:\"updated_at\";s:19:\"2017-12-02 10:54:02\";s:10:\"created_at\";s:19:\"2017-12-02 10:54:02\";s:2:\"id\";i:46;s:4:\"hash\";s:8:\"erk0sg5a\";s:9:\"updatedBy\";i:1;}', '', NULL, NULL, 'Dennis Wanyoike', '2017-12-02 07:54:02', '2017-12-02 07:54:02'),
(93, 47, 'Product Created', 'a:0:{}', 'a:23:{s:11:\"productName\";s:9:\"Ear Muffs\";s:13:\"productSerial\";s:5:\"GXJVM\";s:6:\"amount\";i:49;s:8:\"location\";s:5:\"Store\";s:8:\"unitCost\";i:219;s:12:\"sellingPrice\";i:229;s:13:\"reorderAmount\";i:5;s:10:\"expiryDate\";s:10:\"2003-03-01\";s:9:\"companyId\";i:1;s:20:\"productSpecification\";s:103:\"Qui unde tempore eaque nisi suscipit in deserunt. Officiis quasi nesciunt error quia dignissimos velit.\";s:15:\"productCurrency\";s:3:\"USD\";s:13:\"productWeight\";i:33;s:14:\"productTaxRate\";i:16;s:19:\"productManufacturer\";s:24:\"Von, Langosh and Bartell\";s:12:\"categoryName\";s:10:\"Stationery\";s:10:\"categoryId\";i:1;s:19:\"usesMultipleStorage\";b:1;s:22:\"productMeasurementUnit\";s:2:\"KG\";s:7:\"barcode\";s:12:\"794988407974\";s:9:\"createdBy\";i:1;s:10:\"updated_at\";s:19:\"2017-12-02 10:54:03\";s:10:\"created_at\";s:19:\"2017-12-02 10:54:03\";s:2:\"id\";i:47;}', '', NULL, NULL, 'Dennis Wanyoike', '2017-12-02 07:54:03', '2017-12-02 07:54:03'),
(94, 47, 'Product Updated', 'a:0:{}', 'a:25:{s:11:\"productName\";s:9:\"Ear Muffs\";s:13:\"productSerial\";s:5:\"GXJVM\";s:6:\"amount\";i:49;s:8:\"location\";s:5:\"Store\";s:8:\"unitCost\";i:219;s:12:\"sellingPrice\";i:229;s:13:\"reorderAmount\";i:5;s:10:\"expiryDate\";s:10:\"2003-03-01\";s:9:\"companyId\";i:1;s:20:\"productSpecification\";s:103:\"Qui unde tempore eaque nisi suscipit in deserunt. Officiis quasi nesciunt error quia dignissimos velit.\";s:15:\"productCurrency\";s:3:\"USD\";s:13:\"productWeight\";i:33;s:14:\"productTaxRate\";i:16;s:19:\"productManufacturer\";s:24:\"Von, Langosh and Bartell\";s:12:\"categoryName\";s:10:\"Stationery\";s:10:\"categoryId\";i:1;s:19:\"usesMultipleStorage\";b:1;s:22:\"productMeasurementUnit\";s:2:\"KG\";s:7:\"barcode\";s:12:\"794988407974\";s:9:\"createdBy\";i:1;s:10:\"updated_at\";s:19:\"2017-12-02 10:54:03\";s:10:\"created_at\";s:19:\"2017-12-02 10:54:03\";s:2:\"id\";i:47;s:4:\"hash\";s:8:\"dL98tLxe\";s:9:\"updatedBy\";i:1;}', '', NULL, NULL, 'Dennis Wanyoike', '2017-12-02 07:54:04', '2017-12-02 07:54:04'),
(95, 48, 'Product Created', 'a:0:{}', 'a:23:{s:11:\"productName\";s:21:\"Staple Pins Big 66/14\";s:13:\"productSerial\";s:9:\"HULZO-QZV\";s:6:\"amount\";i:49;s:8:\"location\";s:5:\"Store\";s:8:\"unitCost\";i:238;s:12:\"sellingPrice\";i:249;s:13:\"reorderAmount\";i:6;s:10:\"expiryDate\";s:10:\"1978-04-08\";s:9:\"companyId\";i:1;s:20:\"productSpecification\";s:94:\"Assumenda accusantium quia amet illum nisi temporibus iste. Cupiditate dicta earum voluptatum.\";s:15:\"productCurrency\";s:3:\"USD\";s:13:\"productWeight\";i:88;s:14:\"productTaxRate\";i:16;s:19:\"productManufacturer\";s:15:\"Baumbach-Rogahn\";s:12:\"categoryName\";s:11:\"Consumables\";s:10:\"categoryId\";i:2;s:19:\"usesMultipleStorage\";b:1;s:22:\"productMeasurementUnit\";s:2:\"KG\";s:7:\"barcode\";s:12:\"225568969051\";s:9:\"createdBy\";i:1;s:10:\"updated_at\";s:19:\"2017-12-02 10:54:06\";s:10:\"created_at\";s:19:\"2017-12-02 10:54:06\";s:2:\"id\";i:48;}', '', NULL, NULL, 'Dennis Wanyoike', '2017-12-02 07:54:06', '2017-12-02 07:54:06'),
(96, 48, 'Product Updated', 'a:0:{}', 'a:25:{s:11:\"productName\";s:21:\"Staple Pins Big 66/14\";s:13:\"productSerial\";s:9:\"HULZO-QZV\";s:6:\"amount\";i:49;s:8:\"location\";s:5:\"Store\";s:8:\"unitCost\";i:238;s:12:\"sellingPrice\";i:249;s:13:\"reorderAmount\";i:6;s:10:\"expiryDate\";s:10:\"1978-04-08\";s:9:\"companyId\";i:1;s:20:\"productSpecification\";s:94:\"Assumenda accusantium quia amet illum nisi temporibus iste. Cupiditate dicta earum voluptatum.\";s:15:\"productCurrency\";s:3:\"USD\";s:13:\"productWeight\";i:88;s:14:\"productTaxRate\";i:16;s:19:\"productManufacturer\";s:15:\"Baumbach-Rogahn\";s:12:\"categoryName\";s:11:\"Consumables\";s:10:\"categoryId\";i:2;s:19:\"usesMultipleStorage\";b:1;s:22:\"productMeasurementUnit\";s:2:\"KG\";s:7:\"barcode\";s:12:\"225568969051\";s:9:\"createdBy\";i:1;s:10:\"updated_at\";s:19:\"2017-12-02 10:54:06\";s:10:\"created_at\";s:19:\"2017-12-02 10:54:06\";s:2:\"id\";i:48;s:4:\"hash\";s:8:\"av2luEXa\";s:9:\"updatedBy\";i:1;}', '', NULL, NULL, 'Dennis Wanyoike', '2017-12-02 07:54:06', '2017-12-02 07:54:06'),
(97, 49, 'Product Created', 'a:0:{}', 'a:23:{s:11:\"productName\";s:6:\"Hp320A\";s:13:\"productSerial\";s:5:\"SK1WV\";s:6:\"amount\";i:49;s:8:\"location\";s:5:\"Store\";s:8:\"unitCost\";i:291;s:12:\"sellingPrice\";i:299;s:13:\"reorderAmount\";i:1;s:10:\"expiryDate\";s:10:\"1980-08-31\";s:9:\"companyId\";i:1;s:20:\"productSpecification\";s:72:\"Quas soluta nihil et. Dolorem quis nesciunt sunt corporis ut quia natus.\";s:15:\"productCurrency\";s:3:\"USD\";s:13:\"productWeight\";i:73;s:14:\"productTaxRate\";i:16;s:19:\"productManufacturer\";s:12:\"Hammes-Nader\";s:12:\"categoryName\";s:5:\"Foods\";s:10:\"categoryId\";i:4;s:19:\"usesMultipleStorage\";b:1;s:22:\"productMeasurementUnit\";s:2:\"KG\";s:7:\"barcode\";s:12:\"556975149690\";s:9:\"createdBy\";i:1;s:10:\"updated_at\";s:19:\"2017-12-02 10:54:09\";s:10:\"created_at\";s:19:\"2017-12-02 10:54:09\";s:2:\"id\";i:49;}', '', NULL, NULL, 'Dennis Wanyoike', '2017-12-02 07:54:09', '2017-12-02 07:54:09'),
(98, 49, 'Product Updated', 'a:0:{}', 'a:25:{s:11:\"productName\";s:6:\"Hp320A\";s:13:\"productSerial\";s:5:\"SK1WV\";s:6:\"amount\";i:49;s:8:\"location\";s:5:\"Store\";s:8:\"unitCost\";i:291;s:12:\"sellingPrice\";i:299;s:13:\"reorderAmount\";i:1;s:10:\"expiryDate\";s:10:\"1980-08-31\";s:9:\"companyId\";i:1;s:20:\"productSpecification\";s:72:\"Quas soluta nihil et. Dolorem quis nesciunt sunt corporis ut quia natus.\";s:15:\"productCurrency\";s:3:\"USD\";s:13:\"productWeight\";i:73;s:14:\"productTaxRate\";i:16;s:19:\"productManufacturer\";s:12:\"Hammes-Nader\";s:12:\"categoryName\";s:5:\"Foods\";s:10:\"categoryId\";i:4;s:19:\"usesMultipleStorage\";b:1;s:22:\"productMeasurementUnit\";s:2:\"KG\";s:7:\"barcode\";s:12:\"556975149690\";s:9:\"createdBy\";i:1;s:10:\"updated_at\";s:19:\"2017-12-02 10:54:09\";s:10:\"created_at\";s:19:\"2017-12-02 10:54:09\";s:2:\"id\";i:49;s:4:\"hash\";s:8:\"aQWkC6pd\";s:9:\"updatedBy\";i:1;}', '', NULL, NULL, 'Dennis Wanyoike', '2017-12-02 07:54:09', '2017-12-02 07:54:09');
INSERT INTO `stock_audits` (`id`, `productId`, `stockOperation`, `oldValues`, `newValues`, `narration`, `oldQuantity`, `newQuantity`, `username`, `created_at`, `updated_at`) VALUES
(99, 50, 'Product Created', 'a:0:{}', 'a:23:{s:11:\"productName\";s:6:\"Hp321A\";s:13:\"productSerial\";s:10:\"YWW_6O06RF\";s:6:\"amount\";i:49;s:8:\"location\";s:5:\"Store\";s:8:\"unitCost\";i:145;s:12:\"sellingPrice\";i:158;s:13:\"reorderAmount\";i:11;s:10:\"expiryDate\";s:10:\"1976-05-31\";s:9:\"companyId\";i:1;s:20:\"productSpecification\";s:98:\"Laudantium harum doloremque rerum nobis labore voluptas. Molestias quam nemo odit harum in facere.\";s:15:\"productCurrency\";s:3:\"USD\";s:13:\"productWeight\";i:31;s:14:\"productTaxRate\";i:16;s:19:\"productManufacturer\";s:33:\"McCullough, Little and Stiedemann\";s:12:\"categoryName\";s:11:\"Consumables\";s:10:\"categoryId\";i:2;s:19:\"usesMultipleStorage\";b:0;s:22:\"productMeasurementUnit\";s:2:\"KG\";s:7:\"barcode\";s:12:\"406881808870\";s:9:\"createdBy\";i:1;s:10:\"updated_at\";s:19:\"2017-12-02 10:54:10\";s:10:\"created_at\";s:19:\"2017-12-02 10:54:10\";s:2:\"id\";i:50;}', '', NULL, NULL, 'Dennis Wanyoike', '2017-12-02 07:54:10', '2017-12-02 07:54:10'),
(100, 50, 'Product Updated', 'a:0:{}', 'a:25:{s:11:\"productName\";s:6:\"Hp321A\";s:13:\"productSerial\";s:10:\"YWW_6O06RF\";s:6:\"amount\";i:49;s:8:\"location\";s:5:\"Store\";s:8:\"unitCost\";i:145;s:12:\"sellingPrice\";i:158;s:13:\"reorderAmount\";i:11;s:10:\"expiryDate\";s:10:\"1976-05-31\";s:9:\"companyId\";i:1;s:20:\"productSpecification\";s:98:\"Laudantium harum doloremque rerum nobis labore voluptas. Molestias quam nemo odit harum in facere.\";s:15:\"productCurrency\";s:3:\"USD\";s:13:\"productWeight\";i:31;s:14:\"productTaxRate\";i:16;s:19:\"productManufacturer\";s:33:\"McCullough, Little and Stiedemann\";s:12:\"categoryName\";s:11:\"Consumables\";s:10:\"categoryId\";i:2;s:19:\"usesMultipleStorage\";b:0;s:22:\"productMeasurementUnit\";s:2:\"KG\";s:7:\"barcode\";s:12:\"406881808870\";s:9:\"createdBy\";i:1;s:10:\"updated_at\";s:19:\"2017-12-02 10:54:10\";s:10:\"created_at\";s:19:\"2017-12-02 10:54:10\";s:2:\"id\";i:50;s:4:\"hash\";s:8:\"dwpKFkEe\";s:9:\"updatedBy\";i:1;}', '', NULL, NULL, 'Dennis Wanyoike', '2017-12-02 07:54:10', '2017-12-02 07:54:10'),
(101, 51, 'Product Created', 'a:0:{}', 'a:23:{s:11:\"productName\";s:6:\"Hp322A\";s:13:\"productSerial\";s:13:\"+O_U53ROOZTAJ\";s:6:\"amount\";i:49;s:8:\"location\";s:5:\"Store\";s:8:\"unitCost\";i:139;s:12:\"sellingPrice\";i:150;s:13:\"reorderAmount\";i:12;s:10:\"expiryDate\";s:10:\"1983-09-28\";s:9:\"companyId\";i:1;s:20:\"productSpecification\";s:39:\"Laudantium rem suscipit dolore aliquam.\";s:15:\"productCurrency\";s:3:\"USD\";s:13:\"productWeight\";i:54;s:14:\"productTaxRate\";i:16;s:19:\"productManufacturer\";s:28:\"Vandervort, Littel and Hayes\";s:12:\"categoryName\";s:10:\"Vegetables\";s:10:\"categoryId\";i:5;s:19:\"usesMultipleStorage\";b:1;s:22:\"productMeasurementUnit\";s:2:\"KG\";s:7:\"barcode\";s:12:\"190293642626\";s:9:\"createdBy\";i:1;s:10:\"updated_at\";s:19:\"2017-12-02 10:54:10\";s:10:\"created_at\";s:19:\"2017-12-02 10:54:10\";s:2:\"id\";i:51;}', '', NULL, NULL, 'Dennis Wanyoike', '2017-12-02 07:54:10', '2017-12-02 07:54:10'),
(102, 51, 'Product Updated', 'a:0:{}', 'a:25:{s:11:\"productName\";s:6:\"Hp322A\";s:13:\"productSerial\";s:13:\"+O_U53ROOZTAJ\";s:6:\"amount\";i:49;s:8:\"location\";s:5:\"Store\";s:8:\"unitCost\";i:139;s:12:\"sellingPrice\";i:150;s:13:\"reorderAmount\";i:12;s:10:\"expiryDate\";s:10:\"1983-09-28\";s:9:\"companyId\";i:1;s:20:\"productSpecification\";s:39:\"Laudantium rem suscipit dolore aliquam.\";s:15:\"productCurrency\";s:3:\"USD\";s:13:\"productWeight\";i:54;s:14:\"productTaxRate\";i:16;s:19:\"productManufacturer\";s:28:\"Vandervort, Littel and Hayes\";s:12:\"categoryName\";s:10:\"Vegetables\";s:10:\"categoryId\";i:5;s:19:\"usesMultipleStorage\";b:1;s:22:\"productMeasurementUnit\";s:2:\"KG\";s:7:\"barcode\";s:12:\"190293642626\";s:9:\"createdBy\";i:1;s:10:\"updated_at\";s:19:\"2017-12-02 10:54:10\";s:10:\"created_at\";s:19:\"2017-12-02 10:54:10\";s:2:\"id\";i:51;s:4:\"hash\";s:8:\"en5OHXgd\";s:9:\"updatedBy\";i:1;}', '', NULL, NULL, 'Dennis Wanyoike', '2017-12-02 07:54:10', '2017-12-02 07:54:10'),
(103, 52, 'Product Created', 'a:0:{}', 'a:23:{s:11:\"productName\";s:6:\"Hp323A\";s:13:\"productSerial\";s:14:\"F_C3825VE3WRRK\";s:6:\"amount\";i:49;s:8:\"location\";s:5:\"Store\";s:8:\"unitCost\";i:174;s:12:\"sellingPrice\";i:185;s:13:\"reorderAmount\";i:14;s:10:\"expiryDate\";s:10:\"1997-06-25\";s:9:\"companyId\";i:1;s:20:\"productSpecification\";s:85:\"Sunt illum libero perferendis recusandae amet. Laborum quos quas tempora aut et odit.\";s:15:\"productCurrency\";s:3:\"USD\";s:13:\"productWeight\";i:78;s:14:\"productTaxRate\";i:16;s:19:\"productManufacturer\";s:17:\"Powlowski-Zboncak\";s:12:\"categoryName\";s:10:\"Vegetables\";s:10:\"categoryId\";i:5;s:19:\"usesMultipleStorage\";b:1;s:22:\"productMeasurementUnit\";s:2:\"KG\";s:7:\"barcode\";s:12:\"603182735755\";s:9:\"createdBy\";i:1;s:10:\"updated_at\";s:19:\"2017-12-02 10:54:13\";s:10:\"created_at\";s:19:\"2017-12-02 10:54:13\";s:2:\"id\";i:52;}', '', NULL, NULL, 'Dennis Wanyoike', '2017-12-02 07:54:13', '2017-12-02 07:54:13'),
(104, 52, 'Product Updated', 'a:0:{}', 'a:25:{s:11:\"productName\";s:6:\"Hp323A\";s:13:\"productSerial\";s:14:\"F_C3825VE3WRRK\";s:6:\"amount\";i:49;s:8:\"location\";s:5:\"Store\";s:8:\"unitCost\";i:174;s:12:\"sellingPrice\";i:185;s:13:\"reorderAmount\";i:14;s:10:\"expiryDate\";s:10:\"1997-06-25\";s:9:\"companyId\";i:1;s:20:\"productSpecification\";s:85:\"Sunt illum libero perferendis recusandae amet. Laborum quos quas tempora aut et odit.\";s:15:\"productCurrency\";s:3:\"USD\";s:13:\"productWeight\";i:78;s:14:\"productTaxRate\";i:16;s:19:\"productManufacturer\";s:17:\"Powlowski-Zboncak\";s:12:\"categoryName\";s:10:\"Vegetables\";s:10:\"categoryId\";i:5;s:19:\"usesMultipleStorage\";b:1;s:22:\"productMeasurementUnit\";s:2:\"KG\";s:7:\"barcode\";s:12:\"603182735755\";s:9:\"createdBy\";i:1;s:10:\"updated_at\";s:19:\"2017-12-02 10:54:13\";s:10:\"created_at\";s:19:\"2017-12-02 10:54:13\";s:2:\"id\";i:52;s:4:\"hash\";s:8:\"e5yWILle\";s:9:\"updatedBy\";i:1;}', '', NULL, NULL, 'Dennis Wanyoike', '2017-12-02 07:54:13', '2017-12-02 07:54:13'),
(105, 53, 'Product Created', 'a:0:{}', 'a:23:{s:11:\"productName\";s:6:\"Hp540A\";s:13:\"productSerial\";s:12:\"80-RFLmMGUPE\";s:6:\"amount\";i:49;s:8:\"location\";s:5:\"Store\";s:8:\"unitCost\";i:123;s:12:\"sellingPrice\";i:129;s:13:\"reorderAmount\";i:14;s:10:\"expiryDate\";s:10:\"1998-11-27\";s:9:\"companyId\";i:1;s:20:\"productSpecification\";s:88:\"Modi possimus eum enim autem dolores. Quia a dolore pariatur laudantium ab eligendi cum.\";s:15:\"productCurrency\";s:3:\"USD\";s:13:\"productWeight\";i:7;s:14:\"productTaxRate\";i:16;s:19:\"productManufacturer\";s:26:\"Carroll, Rempel and Beahan\";s:12:\"categoryName\";s:10:\"Stationery\";s:10:\"categoryId\";i:1;s:19:\"usesMultipleStorage\";b:0;s:22:\"productMeasurementUnit\";s:2:\"KG\";s:7:\"barcode\";s:12:\"690289000466\";s:9:\"createdBy\";i:1;s:10:\"updated_at\";s:19:\"2017-12-02 10:54:14\";s:10:\"created_at\";s:19:\"2017-12-02 10:54:14\";s:2:\"id\";i:53;}', '', NULL, NULL, 'Dennis Wanyoike', '2017-12-02 07:54:14', '2017-12-02 07:54:14'),
(106, 53, 'Product Updated', 'a:0:{}', 'a:25:{s:11:\"productName\";s:6:\"Hp540A\";s:13:\"productSerial\";s:12:\"80-RFLmMGUPE\";s:6:\"amount\";i:49;s:8:\"location\";s:5:\"Store\";s:8:\"unitCost\";i:123;s:12:\"sellingPrice\";i:129;s:13:\"reorderAmount\";i:14;s:10:\"expiryDate\";s:10:\"1998-11-27\";s:9:\"companyId\";i:1;s:20:\"productSpecification\";s:88:\"Modi possimus eum enim autem dolores. Quia a dolore pariatur laudantium ab eligendi cum.\";s:15:\"productCurrency\";s:3:\"USD\";s:13:\"productWeight\";i:7;s:14:\"productTaxRate\";i:16;s:19:\"productManufacturer\";s:26:\"Carroll, Rempel and Beahan\";s:12:\"categoryName\";s:10:\"Stationery\";s:10:\"categoryId\";i:1;s:19:\"usesMultipleStorage\";b:0;s:22:\"productMeasurementUnit\";s:2:\"KG\";s:7:\"barcode\";s:12:\"690289000466\";s:9:\"createdBy\";i:1;s:10:\"updated_at\";s:19:\"2017-12-02 10:54:14\";s:10:\"created_at\";s:19:\"2017-12-02 10:54:14\";s:2:\"id\";i:53;s:4:\"hash\";s:8:\"dwpES1ve\";s:9:\"updatedBy\";i:1;}', '', NULL, NULL, 'Dennis Wanyoike', '2017-12-02 07:54:14', '2017-12-02 07:54:14'),
(107, 54, 'Product Created', 'a:0:{}', 'a:23:{s:11:\"productName\";s:6:\"Hp541A\";s:13:\"productSerial\";s:11:\"L3I6IWVAYBP\";s:6:\"amount\";i:49;s:8:\"location\";s:5:\"Store\";s:8:\"unitCost\";i:220;s:12:\"sellingPrice\";i:230;s:13:\"reorderAmount\";i:8;s:10:\"expiryDate\";s:10:\"1990-03-07\";s:9:\"companyId\";i:1;s:20:\"productSpecification\";s:117:\"Distinctio ipsam ea dolore temporibus sit molestiae nihil et. Qui quia necessitatibus accusamus provident recusandae.\";s:15:\"productCurrency\";s:3:\"USD\";s:13:\"productWeight\";i:82;s:14:\"productTaxRate\";i:16;s:19:\"productManufacturer\";s:24:\"Little, Boehm and Herman\";s:12:\"categoryName\";s:10:\"Vegetables\";s:10:\"categoryId\";i:5;s:19:\"usesMultipleStorage\";b:1;s:22:\"productMeasurementUnit\";s:2:\"KG\";s:7:\"barcode\";s:12:\"959647566861\";s:9:\"createdBy\";i:1;s:10:\"updated_at\";s:19:\"2017-12-02 10:54:15\";s:10:\"created_at\";s:19:\"2017-12-02 10:54:15\";s:2:\"id\";i:54;}', '', NULL, NULL, 'Dennis Wanyoike', '2017-12-02 07:54:15', '2017-12-02 07:54:15'),
(108, 54, 'Product Updated', 'a:0:{}', 'a:25:{s:11:\"productName\";s:6:\"Hp541A\";s:13:\"productSerial\";s:11:\"L3I6IWVAYBP\";s:6:\"amount\";i:49;s:8:\"location\";s:5:\"Store\";s:8:\"unitCost\";i:220;s:12:\"sellingPrice\";i:230;s:13:\"reorderAmount\";i:8;s:10:\"expiryDate\";s:10:\"1990-03-07\";s:9:\"companyId\";i:1;s:20:\"productSpecification\";s:117:\"Distinctio ipsam ea dolore temporibus sit molestiae nihil et. Qui quia necessitatibus accusamus provident recusandae.\";s:15:\"productCurrency\";s:3:\"USD\";s:13:\"productWeight\";i:82;s:14:\"productTaxRate\";i:16;s:19:\"productManufacturer\";s:24:\"Little, Boehm and Herman\";s:12:\"categoryName\";s:10:\"Vegetables\";s:10:\"categoryId\";i:5;s:19:\"usesMultipleStorage\";b:1;s:22:\"productMeasurementUnit\";s:2:\"KG\";s:7:\"barcode\";s:12:\"959647566861\";s:9:\"createdBy\";i:1;s:10:\"updated_at\";s:19:\"2017-12-02 10:54:15\";s:10:\"created_at\";s:19:\"2017-12-02 10:54:15\";s:2:\"id\";i:54;s:4:\"hash\";s:8:\"e9r3TD9a\";s:9:\"updatedBy\";i:1;}', '', NULL, NULL, 'Dennis Wanyoike', '2017-12-02 07:54:15', '2017-12-02 07:54:15'),
(109, 55, 'Product Created', 'a:0:{}', 'a:23:{s:11:\"productName\";s:6:\"Hp542A\";s:13:\"productSerial\";s:13:\"PKC-28IV8KOED\";s:6:\"amount\";i:49;s:8:\"location\";s:5:\"Store\";s:8:\"unitCost\";i:182;s:12:\"sellingPrice\";i:201;s:13:\"reorderAmount\";i:12;s:10:\"expiryDate\";s:10:\"1994-07-17\";s:9:\"companyId\";i:1;s:20:\"productSpecification\";s:48:\"Consequuntur fugiat cumque explicabo dicta quam.\";s:15:\"productCurrency\";s:3:\"USD\";s:13:\"productWeight\";i:10;s:14:\"productTaxRate\";i:16;s:19:\"productManufacturer\";s:17:\"Schinner and Sons\";s:12:\"categoryName\";s:11:\"Consumables\";s:10:\"categoryId\";i:2;s:19:\"usesMultipleStorage\";b:1;s:22:\"productMeasurementUnit\";s:2:\"KG\";s:7:\"barcode\";s:12:\"137011934731\";s:9:\"createdBy\";i:1;s:10:\"updated_at\";s:19:\"2017-12-02 10:54:18\";s:10:\"created_at\";s:19:\"2017-12-02 10:54:18\";s:2:\"id\";i:55;}', '', NULL, NULL, 'Dennis Wanyoike', '2017-12-02 07:54:18', '2017-12-02 07:54:18'),
(110, 55, 'Product Updated', 'a:0:{}', 'a:25:{s:11:\"productName\";s:6:\"Hp542A\";s:13:\"productSerial\";s:13:\"PKC-28IV8KOED\";s:6:\"amount\";i:49;s:8:\"location\";s:5:\"Store\";s:8:\"unitCost\";i:182;s:12:\"sellingPrice\";i:201;s:13:\"reorderAmount\";i:12;s:10:\"expiryDate\";s:10:\"1994-07-17\";s:9:\"companyId\";i:1;s:20:\"productSpecification\";s:48:\"Consequuntur fugiat cumque explicabo dicta quam.\";s:15:\"productCurrency\";s:3:\"USD\";s:13:\"productWeight\";i:10;s:14:\"productTaxRate\";i:16;s:19:\"productManufacturer\";s:17:\"Schinner and Sons\";s:12:\"categoryName\";s:11:\"Consumables\";s:10:\"categoryId\";i:2;s:19:\"usesMultipleStorage\";b:1;s:22:\"productMeasurementUnit\";s:2:\"KG\";s:7:\"barcode\";s:12:\"137011934731\";s:9:\"createdBy\";i:1;s:10:\"updated_at\";s:19:\"2017-12-02 10:54:18\";s:10:\"created_at\";s:19:\"2017-12-02 10:54:18\";s:2:\"id\";i:55;s:4:\"hash\";s:8:\"dL95Ur8e\";s:9:\"updatedBy\";i:1;}', '', NULL, NULL, 'Dennis Wanyoike', '2017-12-02 07:54:19', '2017-12-02 07:54:19'),
(111, 56, 'Product Created', 'a:0:{}', 'a:23:{s:11:\"productName\";s:6:\"Hp543A\";s:13:\"productSerial\";s:14:\"UZKT217JL12KYV\";s:6:\"amount\";i:49;s:8:\"location\";s:5:\"Store\";s:8:\"unitCost\";i:113;s:12:\"sellingPrice\";i:118;s:13:\"reorderAmount\";i:10;s:10:\"expiryDate\";s:10:\"1996-06-18\";s:9:\"companyId\";i:1;s:20:\"productSpecification\";s:97:\"Totam magnam aliquam voluptatibus quia aliquid culpa. Molestiae voluptatem adipisci qui nesciunt.\";s:15:\"productCurrency\";s:3:\"USD\";s:13:\"productWeight\";i:52;s:14:\"productTaxRate\";i:16;s:19:\"productManufacturer\";s:11:\"Wuckert PLC\";s:12:\"categoryName\";s:5:\"Foods\";s:10:\"categoryId\";i:4;s:19:\"usesMultipleStorage\";b:0;s:22:\"productMeasurementUnit\";s:2:\"KG\";s:7:\"barcode\";s:12:\"209124921424\";s:9:\"createdBy\";i:1;s:10:\"updated_at\";s:19:\"2017-12-02 10:54:20\";s:10:\"created_at\";s:19:\"2017-12-02 10:54:20\";s:2:\"id\";i:56;}', '', NULL, NULL, 'Dennis Wanyoike', '2017-12-02 07:54:20', '2017-12-02 07:54:20'),
(112, 56, 'Product Updated', 'a:0:{}', 'a:25:{s:11:\"productName\";s:6:\"Hp543A\";s:13:\"productSerial\";s:14:\"UZKT217JL12KYV\";s:6:\"amount\";i:49;s:8:\"location\";s:5:\"Store\";s:8:\"unitCost\";i:113;s:12:\"sellingPrice\";i:118;s:13:\"reorderAmount\";i:10;s:10:\"expiryDate\";s:10:\"1996-06-18\";s:9:\"companyId\";i:1;s:20:\"productSpecification\";s:97:\"Totam magnam aliquam voluptatibus quia aliquid culpa. Molestiae voluptatem adipisci qui nesciunt.\";s:15:\"productCurrency\";s:3:\"USD\";s:13:\"productWeight\";i:52;s:14:\"productTaxRate\";i:16;s:19:\"productManufacturer\";s:11:\"Wuckert PLC\";s:12:\"categoryName\";s:5:\"Foods\";s:10:\"categoryId\";i:4;s:19:\"usesMultipleStorage\";b:0;s:22:\"productMeasurementUnit\";s:2:\"KG\";s:7:\"barcode\";s:12:\"209124921424\";s:9:\"createdBy\";i:1;s:10:\"updated_at\";s:19:\"2017-12-02 10:54:20\";s:10:\"created_at\";s:19:\"2017-12-02 10:54:20\";s:2:\"id\";i:56;s:4:\"hash\";s:8:\"dNkpcY6e\";s:9:\"updatedBy\";i:1;}', '', NULL, NULL, 'Dennis Wanyoike', '2017-12-02 07:54:20', '2017-12-02 07:54:20'),
(113, 57, 'Product Created', 'a:0:{}', 'a:23:{s:11:\"productName\";s:5:\"CE310\";s:13:\"productSerial\";s:6:\"1JKKVK\";s:6:\"amount\";i:49;s:8:\"location\";s:5:\"Store\";s:8:\"unitCost\";i:193;s:12:\"sellingPrice\";i:209;s:13:\"reorderAmount\";i:9;s:10:\"expiryDate\";s:10:\"2003-05-14\";s:9:\"companyId\";i:1;s:20:\"productSpecification\";s:32:\"In aut eum similique omnis odio.\";s:15:\"productCurrency\";s:3:\"USD\";s:13:\"productWeight\";i:46;s:14:\"productTaxRate\";i:16;s:19:\"productManufacturer\";s:12:\"Schaefer LLC\";s:12:\"categoryName\";s:5:\"Foods\";s:10:\"categoryId\";i:4;s:19:\"usesMultipleStorage\";b:0;s:22:\"productMeasurementUnit\";s:2:\"KG\";s:7:\"barcode\";s:12:\"344646000292\";s:9:\"createdBy\";i:1;s:10:\"updated_at\";s:19:\"2017-12-02 10:54:20\";s:10:\"created_at\";s:19:\"2017-12-02 10:54:20\";s:2:\"id\";i:57;}', '', NULL, NULL, 'Dennis Wanyoike', '2017-12-02 07:54:20', '2017-12-02 07:54:20'),
(114, 57, 'Product Updated', 'a:0:{}', 'a:25:{s:11:\"productName\";s:5:\"CE310\";s:13:\"productSerial\";s:6:\"1JKKVK\";s:6:\"amount\";i:49;s:8:\"location\";s:5:\"Store\";s:8:\"unitCost\";i:193;s:12:\"sellingPrice\";i:209;s:13:\"reorderAmount\";i:9;s:10:\"expiryDate\";s:10:\"2003-05-14\";s:9:\"companyId\";i:1;s:20:\"productSpecification\";s:32:\"In aut eum similique omnis odio.\";s:15:\"productCurrency\";s:3:\"USD\";s:13:\"productWeight\";i:46;s:14:\"productTaxRate\";i:16;s:19:\"productManufacturer\";s:12:\"Schaefer LLC\";s:12:\"categoryName\";s:5:\"Foods\";s:10:\"categoryId\";i:4;s:19:\"usesMultipleStorage\";b:0;s:22:\"productMeasurementUnit\";s:2:\"KG\";s:7:\"barcode\";s:12:\"344646000292\";s:9:\"createdBy\";i:1;s:10:\"updated_at\";s:19:\"2017-12-02 10:54:20\";s:10:\"created_at\";s:19:\"2017-12-02 10:54:20\";s:2:\"id\";i:57;s:4:\"hash\";s:8:\"dJ6ziP3d\";s:9:\"updatedBy\";i:1;}', '', NULL, NULL, 'Dennis Wanyoike', '2017-12-02 07:54:20', '2017-12-02 07:54:20'),
(115, 58, 'Product Created', 'a:0:{}', 'a:23:{s:11:\"productName\";s:5:\"CE311\";s:13:\"productSerial\";s:17:\"%FX%-TSE6<370PSYG\";s:6:\"amount\";i:49;s:8:\"location\";s:5:\"Store\";s:8:\"unitCost\";i:233;s:12:\"sellingPrice\";i:249;s:13:\"reorderAmount\";i:15;s:10:\"expiryDate\";s:10:\"1983-09-14\";s:9:\"companyId\";i:1;s:20:\"productSpecification\";s:81:\"Eum accusantium omnis tenetur quaerat. Atque sed placeat possimus perferendis at.\";s:15:\"productCurrency\";s:3:\"USD\";s:13:\"productWeight\";i:34;s:14:\"productTaxRate\";i:16;s:19:\"productManufacturer\";s:24:\"Dicki, Okuneva and Borer\";s:12:\"categoryName\";s:11:\"Consumables\";s:10:\"categoryId\";i:2;s:19:\"usesMultipleStorage\";b:1;s:22:\"productMeasurementUnit\";s:2:\"KG\";s:7:\"barcode\";s:12:\"544751391012\";s:9:\"createdBy\";i:1;s:10:\"updated_at\";s:19:\"2017-12-02 10:54:21\";s:10:\"created_at\";s:19:\"2017-12-02 10:54:21\";s:2:\"id\";i:58;}', '', NULL, NULL, 'Dennis Wanyoike', '2017-12-02 07:54:21', '2017-12-02 07:54:21'),
(116, 58, 'Product Updated', 'a:0:{}', 'a:25:{s:11:\"productName\";s:5:\"CE311\";s:13:\"productSerial\";s:17:\"%FX%-TSE6<370PSYG\";s:6:\"amount\";i:49;s:8:\"location\";s:5:\"Store\";s:8:\"unitCost\";i:233;s:12:\"sellingPrice\";i:249;s:13:\"reorderAmount\";i:15;s:10:\"expiryDate\";s:10:\"1983-09-14\";s:9:\"companyId\";i:1;s:20:\"productSpecification\";s:81:\"Eum accusantium omnis tenetur quaerat. Atque sed placeat possimus perferendis at.\";s:15:\"productCurrency\";s:3:\"USD\";s:13:\"productWeight\";i:34;s:14:\"productTaxRate\";i:16;s:19:\"productManufacturer\";s:24:\"Dicki, Okuneva and Borer\";s:12:\"categoryName\";s:11:\"Consumables\";s:10:\"categoryId\";i:2;s:19:\"usesMultipleStorage\";b:1;s:22:\"productMeasurementUnit\";s:2:\"KG\";s:7:\"barcode\";s:12:\"544751391012\";s:9:\"createdBy\";i:1;s:10:\"updated_at\";s:19:\"2017-12-02 10:54:21\";s:10:\"created_at\";s:19:\"2017-12-02 10:54:21\";s:2:\"id\";i:58;s:4:\"hash\";s:8:\"b68Khrr1\";s:9:\"updatedBy\";i:1;}', '', NULL, NULL, 'Dennis Wanyoike', '2017-12-02 07:54:21', '2017-12-02 07:54:21'),
(117, 59, 'Product Created', 'a:0:{}', 'a:23:{s:11:\"productName\";s:5:\"CE312\";s:13:\"productSerial\";s:5:\"M8PQG\";s:6:\"amount\";i:49;s:8:\"location\";s:5:\"Store\";s:8:\"unitCost\";i:192;s:12:\"sellingPrice\";i:197;s:13:\"reorderAmount\";i:9;s:10:\"expiryDate\";s:10:\"1995-05-04\";s:9:\"companyId\";i:1;s:20:\"productSpecification\";s:98:\"Eos temporibus voluptatem vitae voluptatum et et. Distinctio minus doloremque provident sit sequi.\";s:15:\"productCurrency\";s:3:\"USD\";s:13:\"productWeight\";i:9;s:14:\"productTaxRate\";i:16;s:19:\"productManufacturer\";s:9:\"Sipes LLC\";s:12:\"categoryName\";s:5:\"Foods\";s:10:\"categoryId\";i:4;s:19:\"usesMultipleStorage\";b:1;s:22:\"productMeasurementUnit\";s:2:\"KG\";s:7:\"barcode\";s:12:\"725970484697\";s:9:\"createdBy\";i:1;s:10:\"updated_at\";s:19:\"2017-12-02 10:54:22\";s:10:\"created_at\";s:19:\"2017-12-02 10:54:22\";s:2:\"id\";i:59;}', '', NULL, NULL, 'Dennis Wanyoike', '2017-12-02 07:54:23', '2017-12-02 07:54:23'),
(118, 59, 'Product Updated', 'a:0:{}', 'a:25:{s:11:\"productName\";s:5:\"CE312\";s:13:\"productSerial\";s:5:\"M8PQG\";s:6:\"amount\";i:49;s:8:\"location\";s:5:\"Store\";s:8:\"unitCost\";i:192;s:12:\"sellingPrice\";i:197;s:13:\"reorderAmount\";i:9;s:10:\"expiryDate\";s:10:\"1995-05-04\";s:9:\"companyId\";i:1;s:20:\"productSpecification\";s:98:\"Eos temporibus voluptatem vitae voluptatum et et. Distinctio minus doloremque provident sit sequi.\";s:15:\"productCurrency\";s:3:\"USD\";s:13:\"productWeight\";i:9;s:14:\"productTaxRate\";i:16;s:19:\"productManufacturer\";s:9:\"Sipes LLC\";s:12:\"categoryName\";s:5:\"Foods\";s:10:\"categoryId\";i:4;s:19:\"usesMultipleStorage\";b:1;s:22:\"productMeasurementUnit\";s:2:\"KG\";s:7:\"barcode\";s:12:\"725970484697\";s:9:\"createdBy\";i:1;s:10:\"updated_at\";s:19:\"2017-12-02 10:54:22\";s:10:\"created_at\";s:19:\"2017-12-02 10:54:22\";s:2:\"id\";i:59;s:4:\"hash\";s:8:\"eERQiq3a\";s:9:\"updatedBy\";i:1;}', '', NULL, NULL, 'Dennis Wanyoike', '2017-12-02 07:54:23', '2017-12-02 07:54:23'),
(119, 60, 'Product Created', 'a:0:{}', 'a:23:{s:11:\"productName\";s:5:\"CE313\";s:13:\"productSerial\";s:6:\"P4OZFE\";s:6:\"amount\";i:49;s:8:\"location\";s:5:\"Store\";s:8:\"unitCost\";i:108;s:12:\"sellingPrice\";i:117;s:13:\"reorderAmount\";i:4;s:10:\"expiryDate\";s:10:\"2004-07-11\";s:9:\"companyId\";i:1;s:20:\"productSpecification\";s:75:\"Odio delectus praesentium in dignissimos. Ea animi debitis ut delectus eos.\";s:15:\"productCurrency\";s:3:\"USD\";s:13:\"productWeight\";i:59;s:14:\"productTaxRate\";i:16;s:19:\"productManufacturer\";s:17:\"Greenfelder-Bruen\";s:12:\"categoryName\";s:11:\"Consumables\";s:10:\"categoryId\";i:2;s:19:\"usesMultipleStorage\";b:1;s:22:\"productMeasurementUnit\";s:2:\"KG\";s:7:\"barcode\";s:12:\"899310763565\";s:9:\"createdBy\";i:1;s:10:\"updated_at\";s:19:\"2017-12-02 10:54:29\";s:10:\"created_at\";s:19:\"2017-12-02 10:54:29\";s:2:\"id\";i:60;}', '', NULL, NULL, 'Dennis Wanyoike', '2017-12-02 07:54:29', '2017-12-02 07:54:29'),
(120, 60, 'Product Updated', 'a:0:{}', 'a:25:{s:11:\"productName\";s:5:\"CE313\";s:13:\"productSerial\";s:6:\"P4OZFE\";s:6:\"amount\";i:49;s:8:\"location\";s:5:\"Store\";s:8:\"unitCost\";i:108;s:12:\"sellingPrice\";i:117;s:13:\"reorderAmount\";i:4;s:10:\"expiryDate\";s:10:\"2004-07-11\";s:9:\"companyId\";i:1;s:20:\"productSpecification\";s:75:\"Odio delectus praesentium in dignissimos. Ea animi debitis ut delectus eos.\";s:15:\"productCurrency\";s:3:\"USD\";s:13:\"productWeight\";i:59;s:14:\"productTaxRate\";i:16;s:19:\"productManufacturer\";s:17:\"Greenfelder-Bruen\";s:12:\"categoryName\";s:11:\"Consumables\";s:10:\"categoryId\";i:2;s:19:\"usesMultipleStorage\";b:1;s:22:\"productMeasurementUnit\";s:2:\"KG\";s:7:\"barcode\";s:12:\"899310763565\";s:9:\"createdBy\";i:1;s:10:\"updated_at\";s:19:\"2017-12-02 10:54:29\";s:10:\"created_at\";s:19:\"2017-12-02 10:54:29\";s:2:\"id\";i:60;s:4:\"hash\";s:8:\"dBBXsx0d\";s:9:\"updatedBy\";i:1;}', '', NULL, NULL, 'Dennis Wanyoike', '2017-12-02 07:54:29', '2017-12-02 07:54:29'),
(121, 61, 'Product Created', 'a:0:{}', 'a:23:{s:11:\"productName\";s:6:\"CE505A\";s:13:\"productSerial\";s:7:\"%7IIVEQ\";s:6:\"amount\";i:49;s:8:\"location\";s:5:\"Store\";s:8:\"unitCost\";i:107;s:12:\"sellingPrice\";i:118;s:13:\"reorderAmount\";i:12;s:10:\"expiryDate\";s:10:\"2006-10-19\";s:9:\"companyId\";i:1;s:20:\"productSpecification\";s:87:\"Qui dolor consectetur quos enim nulla doloremque. Et qui consequatur excepturi debitis.\";s:15:\"productCurrency\";s:3:\"USD\";s:13:\"productWeight\";i:16;s:14:\"productTaxRate\";i:16;s:19:\"productManufacturer\";s:9:\"Wolff PLC\";s:12:\"categoryName\";s:11:\"Electronics\";s:10:\"categoryId\";i:3;s:19:\"usesMultipleStorage\";b:1;s:22:\"productMeasurementUnit\";s:2:\"KG\";s:7:\"barcode\";s:12:\"402245929670\";s:9:\"createdBy\";i:1;s:10:\"updated_at\";s:19:\"2017-12-02 10:54:30\";s:10:\"created_at\";s:19:\"2017-12-02 10:54:30\";s:2:\"id\";i:61;}', '', NULL, NULL, 'Dennis Wanyoike', '2017-12-02 07:54:31', '2017-12-02 07:54:31'),
(122, 61, 'Product Updated', 'a:0:{}', 'a:25:{s:11:\"productName\";s:6:\"CE505A\";s:13:\"productSerial\";s:7:\"%7IIVEQ\";s:6:\"amount\";i:49;s:8:\"location\";s:5:\"Store\";s:8:\"unitCost\";i:107;s:12:\"sellingPrice\";i:118;s:13:\"reorderAmount\";i:12;s:10:\"expiryDate\";s:10:\"2006-10-19\";s:9:\"companyId\";i:1;s:20:\"productSpecification\";s:87:\"Qui dolor consectetur quos enim nulla doloremque. Et qui consequatur excepturi debitis.\";s:15:\"productCurrency\";s:3:\"USD\";s:13:\"productWeight\";i:16;s:14:\"productTaxRate\";i:16;s:19:\"productManufacturer\";s:9:\"Wolff PLC\";s:12:\"categoryName\";s:11:\"Electronics\";s:10:\"categoryId\";i:3;s:19:\"usesMultipleStorage\";b:1;s:22:\"productMeasurementUnit\";s:2:\"KG\";s:7:\"barcode\";s:12:\"402245929670\";s:9:\"createdBy\";i:1;s:10:\"updated_at\";s:19:\"2017-12-02 10:54:30\";s:10:\"created_at\";s:19:\"2017-12-02 10:54:30\";s:2:\"id\";i:61;s:4:\"hash\";s:8:\"dR6XCnYd\";s:9:\"updatedBy\";i:1;}', '', NULL, NULL, 'Dennis Wanyoike', '2017-12-02 07:54:31', '2017-12-02 07:54:31'),
(123, 62, 'Product Created', 'a:0:{}', 'a:23:{s:11:\"productName\";s:6:\"CE285A\";s:13:\"productSerial\";s:11:\"3TNT3DC3EUY\";s:6:\"amount\";i:49;s:8:\"location\";s:5:\"Store\";s:8:\"unitCost\";i:226;s:12:\"sellingPrice\";i:240;s:13:\"reorderAmount\";i:5;s:10:\"expiryDate\";s:10:\"2010-03-16\";s:9:\"companyId\";i:1;s:20:\"productSpecification\";s:85:\"Rerum repellat et tempora quo quis ea iste. Sapiente ut sed ipsa voluptatem iusto ut.\";s:15:\"productCurrency\";s:3:\"USD\";s:13:\"productWeight\";i:72;s:14:\"productTaxRate\";i:16;s:19:\"productManufacturer\";s:9:\"Terry PLC\";s:12:\"categoryName\";s:5:\"Foods\";s:10:\"categoryId\";i:4;s:19:\"usesMultipleStorage\";b:1;s:22:\"productMeasurementUnit\";s:2:\"KG\";s:7:\"barcode\";s:12:\"166467743987\";s:9:\"createdBy\";i:1;s:10:\"updated_at\";s:19:\"2017-12-02 10:54:35\";s:10:\"created_at\";s:19:\"2017-12-02 10:54:35\";s:2:\"id\";i:62;}', '', NULL, NULL, 'Dennis Wanyoike', '2017-12-02 07:54:35', '2017-12-02 07:54:35'),
(124, 62, 'Product Updated', 'a:0:{}', 'a:25:{s:11:\"productName\";s:6:\"CE285A\";s:13:\"productSerial\";s:11:\"3TNT3DC3EUY\";s:6:\"amount\";i:49;s:8:\"location\";s:5:\"Store\";s:8:\"unitCost\";i:226;s:12:\"sellingPrice\";i:240;s:13:\"reorderAmount\";i:5;s:10:\"expiryDate\";s:10:\"2010-03-16\";s:9:\"companyId\";i:1;s:20:\"productSpecification\";s:85:\"Rerum repellat et tempora quo quis ea iste. Sapiente ut sed ipsa voluptatem iusto ut.\";s:15:\"productCurrency\";s:3:\"USD\";s:13:\"productWeight\";i:72;s:14:\"productTaxRate\";i:16;s:19:\"productManufacturer\";s:9:\"Terry PLC\";s:12:\"categoryName\";s:5:\"Foods\";s:10:\"categoryId\";i:4;s:19:\"usesMultipleStorage\";b:1;s:22:\"productMeasurementUnit\";s:2:\"KG\";s:7:\"barcode\";s:12:\"166467743987\";s:9:\"createdBy\";i:1;s:10:\"updated_at\";s:19:\"2017-12-02 10:54:35\";s:10:\"created_at\";s:19:\"2017-12-02 10:54:35\";s:2:\"id\";i:62;s:4:\"hash\";s:8:\"bYExu0kb\";s:9:\"updatedBy\";i:1;}', '', NULL, NULL, 'Dennis Wanyoike', '2017-12-02 07:54:36', '2017-12-02 07:54:36'),
(125, 63, 'Product Created', 'a:0:{}', 'a:23:{s:11:\"productName\";s:6:\"Q7553A\";s:13:\"productSerial\";s:8:\"P1EOHXIX\";s:6:\"amount\";i:49;s:8:\"location\";s:5:\"Store\";s:8:\"unitCost\";i:298;s:12:\"sellingPrice\";i:308;s:13:\"reorderAmount\";i:5;s:10:\"expiryDate\";s:10:\"2001-11-24\";s:9:\"companyId\";i:1;s:20:\"productSpecification\";s:34:\"Aliquid qui quis quisquam debitis.\";s:15:\"productCurrency\";s:3:\"USD\";s:13:\"productWeight\";i:100;s:14:\"productTaxRate\";i:16;s:19:\"productManufacturer\";s:26:\"Bayer, Eichmann and Maggio\";s:12:\"categoryName\";s:10:\"Vegetables\";s:10:\"categoryId\";i:5;s:19:\"usesMultipleStorage\";b:1;s:22:\"productMeasurementUnit\";s:2:\"KG\";s:7:\"barcode\";s:12:\"429520580944\";s:9:\"createdBy\";i:1;s:10:\"updated_at\";s:19:\"2017-12-02 10:54:36\";s:10:\"created_at\";s:19:\"2017-12-02 10:54:36\";s:2:\"id\";i:63;}', '', NULL, NULL, 'Dennis Wanyoike', '2017-12-02 07:54:36', '2017-12-02 07:54:36'),
(126, 63, 'Product Updated', 'a:0:{}', 'a:25:{s:11:\"productName\";s:6:\"Q7553A\";s:13:\"productSerial\";s:8:\"P1EOHXIX\";s:6:\"amount\";i:49;s:8:\"location\";s:5:\"Store\";s:8:\"unitCost\";i:298;s:12:\"sellingPrice\";i:308;s:13:\"reorderAmount\";i:5;s:10:\"expiryDate\";s:10:\"2001-11-24\";s:9:\"companyId\";i:1;s:20:\"productSpecification\";s:34:\"Aliquid qui quis quisquam debitis.\";s:15:\"productCurrency\";s:3:\"USD\";s:13:\"productWeight\";i:100;s:14:\"productTaxRate\";i:16;s:19:\"productManufacturer\";s:26:\"Bayer, Eichmann and Maggio\";s:12:\"categoryName\";s:10:\"Vegetables\";s:10:\"categoryId\";i:5;s:19:\"usesMultipleStorage\";b:1;s:22:\"productMeasurementUnit\";s:2:\"KG\";s:7:\"barcode\";s:12:\"429520580944\";s:9:\"createdBy\";i:1;s:10:\"updated_at\";s:19:\"2017-12-02 10:54:36\";s:10:\"created_at\";s:19:\"2017-12-02 10:54:36\";s:2:\"id\";i:63;s:4:\"hash\";s:8:\"bW6zH9wa\";s:9:\"updatedBy\";i:1;}', '', NULL, NULL, 'Dennis Wanyoike', '2017-12-02 07:54:36', '2017-12-02 07:54:36'),
(127, 64, 'Product Created', 'a:0:{}', 'a:23:{s:11:\"productName\";s:13:\"Epson IQ 2190\";s:13:\"productSerial\";s:7:\"%%-H0NS\";s:6:\"amount\";i:49;s:8:\"location\";s:5:\"Store\";s:8:\"unitCost\";i:296;s:12:\"sellingPrice\";i:303;s:13:\"reorderAmount\";i:9;s:10:\"expiryDate\";s:10:\"1976-12-11\";s:9:\"companyId\";i:1;s:20:\"productSpecification\";s:112:\"Necessitatibus rerum aut fuga consequatur. Cum dolorem ipsa ipsam reprehenderit illum reiciendis est voluptatum.\";s:15:\"productCurrency\";s:3:\"USD\";s:13:\"productWeight\";i:70;s:14:\"productTaxRate\";i:16;s:19:\"productManufacturer\";s:15:\"Kohler-Hartmann\";s:12:\"categoryName\";s:10:\"Stationery\";s:10:\"categoryId\";i:1;s:19:\"usesMultipleStorage\";b:1;s:22:\"productMeasurementUnit\";s:2:\"KG\";s:7:\"barcode\";s:12:\"753617486223\";s:9:\"createdBy\";i:1;s:10:\"updated_at\";s:19:\"2017-12-02 10:54:37\";s:10:\"created_at\";s:19:\"2017-12-02 10:54:37\";s:2:\"id\";i:64;}', '', NULL, NULL, 'Dennis Wanyoike', '2017-12-02 07:54:37', '2017-12-02 07:54:37'),
(128, 64, 'Product Updated', 'a:0:{}', 'a:25:{s:11:\"productName\";s:13:\"Epson IQ 2190\";s:13:\"productSerial\";s:7:\"%%-H0NS\";s:6:\"amount\";i:49;s:8:\"location\";s:5:\"Store\";s:8:\"unitCost\";i:296;s:12:\"sellingPrice\";i:303;s:13:\"reorderAmount\";i:9;s:10:\"expiryDate\";s:10:\"1976-12-11\";s:9:\"companyId\";i:1;s:20:\"productSpecification\";s:112:\"Necessitatibus rerum aut fuga consequatur. Cum dolorem ipsa ipsam reprehenderit illum reiciendis est voluptatum.\";s:15:\"productCurrency\";s:3:\"USD\";s:13:\"productWeight\";i:70;s:14:\"productTaxRate\";i:16;s:19:\"productManufacturer\";s:15:\"Kohler-Hartmann\";s:12:\"categoryName\";s:10:\"Stationery\";s:10:\"categoryId\";i:1;s:19:\"usesMultipleStorage\";b:1;s:22:\"productMeasurementUnit\";s:2:\"KG\";s:7:\"barcode\";s:12:\"753617486223\";s:9:\"createdBy\";i:1;s:10:\"updated_at\";s:19:\"2017-12-02 10:54:37\";s:10:\"created_at\";s:19:\"2017-12-02 10:54:37\";s:2:\"id\";i:64;s:4:\"hash\";s:8:\"azpEFxBd\";s:9:\"updatedBy\";i:1;}', '', NULL, NULL, 'Dennis Wanyoike', '2017-12-02 07:54:38', '2017-12-02 07:54:38'),
(129, 65, 'Product Created', 'a:0:{}', 'a:23:{s:11:\"productName\";s:12:\"Epson IQ 870\";s:13:\"productSerial\";s:16:\"%FG3AD631k8SH3FQ\";s:6:\"amount\";i:49;s:8:\"location\";s:5:\"Store\";s:8:\"unitCost\";i:152;s:12:\"sellingPrice\";i:161;s:13:\"reorderAmount\";i:8;s:10:\"expiryDate\";s:10:\"2009-07-02\";s:9:\"companyId\";i:1;s:20:\"productSpecification\";s:91:\"Quis doloribus omnis cupiditate quis tempora debitis. Illo veritatis dolorem magnam labore.\";s:15:\"productCurrency\";s:3:\"USD\";s:13:\"productWeight\";i:19;s:14:\"productTaxRate\";i:16;s:19:\"productManufacturer\";s:11:\"Wiza-Harris\";s:12:\"categoryName\";s:10:\"Stationery\";s:10:\"categoryId\";i:1;s:19:\"usesMultipleStorage\";b:1;s:22:\"productMeasurementUnit\";s:2:\"KG\";s:7:\"barcode\";s:12:\"936747834168\";s:9:\"createdBy\";i:1;s:10:\"updated_at\";s:19:\"2017-12-02 10:54:41\";s:10:\"created_at\";s:19:\"2017-12-02 10:54:41\";s:2:\"id\";i:65;}', '', NULL, NULL, 'Dennis Wanyoike', '2017-12-02 07:54:41', '2017-12-02 07:54:41'),
(130, 65, 'Product Updated', 'a:0:{}', 'a:25:{s:11:\"productName\";s:12:\"Epson IQ 870\";s:13:\"productSerial\";s:16:\"%FG3AD631k8SH3FQ\";s:6:\"amount\";i:49;s:8:\"location\";s:5:\"Store\";s:8:\"unitCost\";i:152;s:12:\"sellingPrice\";i:161;s:13:\"reorderAmount\";i:8;s:10:\"expiryDate\";s:10:\"2009-07-02\";s:9:\"companyId\";i:1;s:20:\"productSpecification\";s:91:\"Quis doloribus omnis cupiditate quis tempora debitis. Illo veritatis dolorem magnam labore.\";s:15:\"productCurrency\";s:3:\"USD\";s:13:\"productWeight\";i:19;s:14:\"productTaxRate\";i:16;s:19:\"productManufacturer\";s:11:\"Wiza-Harris\";s:12:\"categoryName\";s:10:\"Stationery\";s:10:\"categoryId\";i:1;s:19:\"usesMultipleStorage\";b:1;s:22:\"productMeasurementUnit\";s:2:\"KG\";s:7:\"barcode\";s:12:\"936747834168\";s:9:\"createdBy\";i:1;s:10:\"updated_at\";s:19:\"2017-12-02 10:54:41\";s:10:\"created_at\";s:19:\"2017-12-02 10:54:41\";s:2:\"id\";i:65;s:4:\"hash\";s:8:\"en5PTBJd\";s:9:\"updatedBy\";i:1;}', '', NULL, NULL, 'Dennis Wanyoike', '2017-12-02 07:54:41', '2017-12-02 07:54:41'),
(131, 66, 'Product Created', 'a:0:{}', 'a:23:{s:11:\"productName\";s:20:\"A5 Branded Envelopes\";s:13:\"productSerial\";s:5:\"%13GG\";s:6:\"amount\";i:49;s:8:\"location\";s:5:\"Store\";s:8:\"unitCost\";i:164;s:12:\"sellingPrice\";i:182;s:13:\"reorderAmount\";i:11;s:10:\"expiryDate\";s:10:\"2015-03-06\";s:9:\"companyId\";i:1;s:20:\"productSpecification\";s:104:\"Aperiam sit veritatis reiciendis vel repellendus voluptate esse tenetur. Et perferendis sunt magnam eos.\";s:15:\"productCurrency\";s:3:\"USD\";s:13:\"productWeight\";i:38;s:14:\"productTaxRate\";i:16;s:19:\"productManufacturer\";s:26:\"Gibson, McKenzie and Hoppe\";s:12:\"categoryName\";s:10:\"Stationery\";s:10:\"categoryId\";i:1;s:19:\"usesMultipleStorage\";b:1;s:22:\"productMeasurementUnit\";s:2:\"KG\";s:7:\"barcode\";s:12:\"834647602392\";s:9:\"createdBy\";i:1;s:10:\"updated_at\";s:19:\"2017-12-02 10:54:43\";s:10:\"created_at\";s:19:\"2017-12-02 10:54:43\";s:2:\"id\";i:66;}', '', NULL, NULL, 'Dennis Wanyoike', '2017-12-02 07:54:43', '2017-12-02 07:54:43'),
(132, 66, 'Product Updated', 'a:0:{}', 'a:25:{s:11:\"productName\";s:20:\"A5 Branded Envelopes\";s:13:\"productSerial\";s:5:\"%13GG\";s:6:\"amount\";i:49;s:8:\"location\";s:5:\"Store\";s:8:\"unitCost\";i:164;s:12:\"sellingPrice\";i:182;s:13:\"reorderAmount\";i:11;s:10:\"expiryDate\";s:10:\"2015-03-06\";s:9:\"companyId\";i:1;s:20:\"productSpecification\";s:104:\"Aperiam sit veritatis reiciendis vel repellendus voluptate esse tenetur. Et perferendis sunt magnam eos.\";s:15:\"productCurrency\";s:3:\"USD\";s:13:\"productWeight\";i:38;s:14:\"productTaxRate\";i:16;s:19:\"productManufacturer\";s:26:\"Gibson, McKenzie and Hoppe\";s:12:\"categoryName\";s:10:\"Stationery\";s:10:\"categoryId\";i:1;s:19:\"usesMultipleStorage\";b:1;s:22:\"productMeasurementUnit\";s:2:\"KG\";s:7:\"barcode\";s:12:\"834647602392\";s:9:\"createdBy\";i:1;s:10:\"updated_at\";s:19:\"2017-12-02 10:54:43\";s:10:\"created_at\";s:19:\"2017-12-02 10:54:43\";s:2:\"id\";i:66;s:4:\"hash\";s:8:\"bo2khZ3a\";s:9:\"updatedBy\";i:1;}', '', NULL, NULL, 'Dennis Wanyoike', '2017-12-02 07:54:43', '2017-12-02 07:54:43'),
(133, 67, 'Product Created', 'a:0:{}', 'a:23:{s:11:\"productName\";s:20:\"DL Windowed Envelops\";s:13:\"productSerial\";s:4:\"ESQQ\";s:6:\"amount\";i:49;s:8:\"location\";s:5:\"Store\";s:8:\"unitCost\";i:178;s:12:\"sellingPrice\";i:184;s:13:\"reorderAmount\";i:8;s:10:\"expiryDate\";s:10:\"1987-11-01\";s:9:\"companyId\";i:1;s:20:\"productSpecification\";s:52:\"Veniam corporis sequi repudiandae occaecati ratione.\";s:15:\"productCurrency\";s:3:\"USD\";s:13:\"productWeight\";i:91;s:14:\"productTaxRate\";i:16;s:19:\"productManufacturer\";s:23:\"Marquardt, Fay and Howe\";s:12:\"categoryName\";s:10:\"Vegetables\";s:10:\"categoryId\";i:5;s:19:\"usesMultipleStorage\";b:1;s:22:\"productMeasurementUnit\";s:2:\"KG\";s:7:\"barcode\";s:12:\"914755526503\";s:9:\"createdBy\";i:1;s:10:\"updated_at\";s:19:\"2017-12-02 10:54:44\";s:10:\"created_at\";s:19:\"2017-12-02 10:54:44\";s:2:\"id\";i:67;}', '', NULL, NULL, 'Dennis Wanyoike', '2017-12-02 07:54:44', '2017-12-02 07:54:44'),
(134, 67, 'Product Updated', 'a:0:{}', 'a:25:{s:11:\"productName\";s:20:\"DL Windowed Envelops\";s:13:\"productSerial\";s:4:\"ESQQ\";s:6:\"amount\";i:49;s:8:\"location\";s:5:\"Store\";s:8:\"unitCost\";i:178;s:12:\"sellingPrice\";i:184;s:13:\"reorderAmount\";i:8;s:10:\"expiryDate\";s:10:\"1987-11-01\";s:9:\"companyId\";i:1;s:20:\"productSpecification\";s:52:\"Veniam corporis sequi repudiandae occaecati ratione.\";s:15:\"productCurrency\";s:3:\"USD\";s:13:\"productWeight\";i:91;s:14:\"productTaxRate\";i:16;s:19:\"productManufacturer\";s:23:\"Marquardt, Fay and Howe\";s:12:\"categoryName\";s:10:\"Vegetables\";s:10:\"categoryId\";i:5;s:19:\"usesMultipleStorage\";b:1;s:22:\"productMeasurementUnit\";s:2:\"KG\";s:7:\"barcode\";s:12:\"914755526503\";s:9:\"createdBy\";i:1;s:10:\"updated_at\";s:19:\"2017-12-02 10:54:44\";s:10:\"created_at\";s:19:\"2017-12-02 10:54:44\";s:2:\"id\";i:67;s:4:\"hash\";s:8:\"e31XsZPb\";s:9:\"updatedBy\";i:1;}', '', NULL, NULL, 'Dennis Wanyoike', '2017-12-02 07:54:44', '2017-12-02 07:54:44'),
(135, 68, 'Product Created', 'a:0:{}', 'a:23:{s:11:\"productName\";s:25:\"DL Non-Windowed Envelopes\";s:13:\"productSerial\";s:13:\"YS_NU1ULBMHYF\";s:6:\"amount\";i:49;s:8:\"location\";s:5:\"Store\";s:8:\"unitCost\";i:197;s:12:\"sellingPrice\";i:210;s:13:\"reorderAmount\";i:7;s:10:\"expiryDate\";s:10:\"2002-11-21\";s:9:\"companyId\";i:1;s:20:\"productSpecification\";s:101:\"Sed assumenda voluptatibus in autem rerum et sequi dolores. Voluptate qui quo aut dolores voluptatum.\";s:15:\"productCurrency\";s:3:\"USD\";s:13:\"productWeight\";i:21;s:14:\"productTaxRate\";i:16;s:19:\"productManufacturer\";s:13:\"Gutkowski PLC\";s:12:\"categoryName\";s:11:\"Electronics\";s:10:\"categoryId\";i:3;s:19:\"usesMultipleStorage\";b:1;s:22:\"productMeasurementUnit\";s:2:\"KG\";s:7:\"barcode\";s:12:\"234576488294\";s:9:\"createdBy\";i:1;s:10:\"updated_at\";s:19:\"2017-12-02 10:54:45\";s:10:\"created_at\";s:19:\"2017-12-02 10:54:45\";s:2:\"id\";i:68;}', '', NULL, NULL, 'Dennis Wanyoike', '2017-12-02 07:54:45', '2017-12-02 07:54:45'),
(136, 68, 'Product Updated', 'a:0:{}', 'a:25:{s:11:\"productName\";s:25:\"DL Non-Windowed Envelopes\";s:13:\"productSerial\";s:13:\"YS_NU1ULBMHYF\";s:6:\"amount\";i:49;s:8:\"location\";s:5:\"Store\";s:8:\"unitCost\";i:197;s:12:\"sellingPrice\";i:210;s:13:\"reorderAmount\";i:7;s:10:\"expiryDate\";s:10:\"2002-11-21\";s:9:\"companyId\";i:1;s:20:\"productSpecification\";s:101:\"Sed assumenda voluptatibus in autem rerum et sequi dolores. Voluptate qui quo aut dolores voluptatum.\";s:15:\"productCurrency\";s:3:\"USD\";s:13:\"productWeight\";i:21;s:14:\"productTaxRate\";i:16;s:19:\"productManufacturer\";s:13:\"Gutkowski PLC\";s:12:\"categoryName\";s:11:\"Electronics\";s:10:\"categoryId\";i:3;s:19:\"usesMultipleStorage\";b:1;s:22:\"productMeasurementUnit\";s:2:\"KG\";s:7:\"barcode\";s:12:\"234576488294\";s:9:\"createdBy\";i:1;s:10:\"updated_at\";s:19:\"2017-12-02 10:54:45\";s:10:\"created_at\";s:19:\"2017-12-02 10:54:45\";s:2:\"id\";i:68;s:4:\"hash\";s:8:\"b68AT7Ne\";s:9:\"updatedBy\";i:1;}', '', NULL, NULL, 'Dennis Wanyoike', '2017-12-02 07:54:45', '2017-12-02 07:54:45'),
(137, 69, 'Product Created', 'a:0:{}', 'a:23:{s:11:\"productName\";s:6:\"CF280A\";s:13:\"productSerial\";s:13:\"TT%%79j6PZYXJ\";s:6:\"amount\";i:49;s:8:\"location\";s:5:\"Store\";s:8:\"unitCost\";i:217;s:12:\"sellingPrice\";i:230;s:13:\"reorderAmount\";i:9;s:10:\"expiryDate\";s:10:\"1971-08-15\";s:9:\"companyId\";i:1;s:20:\"productSpecification\";s:64:\"Ut quas dolorem iure assumenda repellendus dolores dolorum quia.\";s:15:\"productCurrency\";s:3:\"USD\";s:13:\"productWeight\";i:13;s:14:\"productTaxRate\";i:16;s:19:\"productManufacturer\";s:14:\"Conroy-Zboncak\";s:12:\"categoryName\";s:10:\"Stationery\";s:10:\"categoryId\";i:1;s:19:\"usesMultipleStorage\";b:0;s:22:\"productMeasurementUnit\";s:2:\"KG\";s:7:\"barcode\";s:12:\"103944640360\";s:9:\"createdBy\";i:1;s:10:\"updated_at\";s:19:\"2017-12-02 10:54:47\";s:10:\"created_at\";s:19:\"2017-12-02 10:54:47\";s:2:\"id\";i:69;}', '', NULL, NULL, 'Dennis Wanyoike', '2017-12-02 07:54:47', '2017-12-02 07:54:47'),
(138, 69, 'Product Updated', 'a:0:{}', 'a:25:{s:11:\"productName\";s:6:\"CF280A\";s:13:\"productSerial\";s:13:\"TT%%79j6PZYXJ\";s:6:\"amount\";i:49;s:8:\"location\";s:5:\"Store\";s:8:\"unitCost\";i:217;s:12:\"sellingPrice\";i:230;s:13:\"reorderAmount\";i:9;s:10:\"expiryDate\";s:10:\"1971-08-15\";s:9:\"companyId\";i:1;s:20:\"productSpecification\";s:64:\"Ut quas dolorem iure assumenda repellendus dolores dolorum quia.\";s:15:\"productCurrency\";s:3:\"USD\";s:13:\"productWeight\";i:13;s:14:\"productTaxRate\";i:16;s:19:\"productManufacturer\";s:14:\"Conroy-Zboncak\";s:12:\"categoryName\";s:10:\"Stationery\";s:10:\"categoryId\";i:1;s:19:\"usesMultipleStorage\";b:0;s:22:\"productMeasurementUnit\";s:2:\"KG\";s:7:\"barcode\";s:12:\"103944640360\";s:9:\"createdBy\";i:1;s:10:\"updated_at\";s:19:\"2017-12-02 10:54:47\";s:10:\"created_at\";s:19:\"2017-12-02 10:54:47\";s:2:\"id\";i:69;s:4:\"hash\";s:8:\"en5WhK5d\";s:9:\"updatedBy\";i:1;}', '', NULL, NULL, 'Dennis Wanyoike', '2017-12-02 07:54:47', '2017-12-02 07:54:47'),
(139, 70, 'Product Created', 'a:0:{}', 'a:23:{s:11:\"productName\";s:15:\"Project Folders\";s:13:\"productSerial\";s:8:\"33TZCAIB\";s:6:\"amount\";i:49;s:8:\"location\";s:5:\"Store\";s:8:\"unitCost\";i:193;s:12:\"sellingPrice\";i:202;s:13:\"reorderAmount\";i:1;s:10:\"expiryDate\";s:10:\"1971-06-30\";s:9:\"companyId\";i:1;s:20:\"productSpecification\";s:112:\"Maxime non aperiam vero consequatur ipsa officia. Voluptatum molestiae dolor ut voluptas ut voluptatum delectus.\";s:15:\"productCurrency\";s:3:\"USD\";s:13:\"productWeight\";i:19;s:14:\"productTaxRate\";i:16;s:19:\"productManufacturer\";s:11:\"Osinski Ltd\";s:12:\"categoryName\";s:5:\"Foods\";s:10:\"categoryId\";i:4;s:19:\"usesMultipleStorage\";b:0;s:22:\"productMeasurementUnit\";s:2:\"KG\";s:7:\"barcode\";s:12:\"139369049860\";s:9:\"createdBy\";i:1;s:10:\"updated_at\";s:19:\"2017-12-02 10:54:47\";s:10:\"created_at\";s:19:\"2017-12-02 10:54:47\";s:2:\"id\";i:70;}', '', NULL, NULL, 'Dennis Wanyoike', '2017-12-02 07:54:47', '2017-12-02 07:54:47'),
(140, 70, 'Product Updated', 'a:0:{}', 'a:25:{s:11:\"productName\";s:15:\"Project Folders\";s:13:\"productSerial\";s:8:\"33TZCAIB\";s:6:\"amount\";i:49;s:8:\"location\";s:5:\"Store\";s:8:\"unitCost\";i:193;s:12:\"sellingPrice\";i:202;s:13:\"reorderAmount\";i:1;s:10:\"expiryDate\";s:10:\"1971-06-30\";s:9:\"companyId\";i:1;s:20:\"productSpecification\";s:112:\"Maxime non aperiam vero consequatur ipsa officia. Voluptatum molestiae dolor ut voluptas ut voluptatum delectus.\";s:15:\"productCurrency\";s:3:\"USD\";s:13:\"productWeight\";i:19;s:14:\"productTaxRate\";i:16;s:19:\"productManufacturer\";s:11:\"Osinski Ltd\";s:12:\"categoryName\";s:5:\"Foods\";s:10:\"categoryId\";i:4;s:19:\"usesMultipleStorage\";b:0;s:22:\"productMeasurementUnit\";s:2:\"KG\";s:7:\"barcode\";s:12:\"139369049860\";s:9:\"createdBy\";i:1;s:10:\"updated_at\";s:19:\"2017-12-02 10:54:47\";s:10:\"created_at\";s:19:\"2017-12-02 10:54:47\";s:2:\"id\";i:70;s:4:\"hash\";s:8:\"axk0c9Ee\";s:9:\"updatedBy\";i:1;}', '', NULL, NULL, 'Dennis Wanyoike', '2017-12-02 07:54:48', '2017-12-02 07:54:48'),
(141, 71, 'Product Created', 'a:0:{}', 'a:23:{s:11:\"productName\";s:7:\"Erasers\";s:13:\"productSerial\";s:8:\"AKCGRCEL\";s:6:\"amount\";i:49;s:8:\"location\";s:5:\"Store\";s:8:\"unitCost\";i:296;s:12:\"sellingPrice\";i:310;s:13:\"reorderAmount\";i:7;s:10:\"expiryDate\";s:10:\"2016-10-17\";s:9:\"companyId\";i:1;s:20:\"productSpecification\";s:79:\"Quia unde ipsa eum nobis aut iusto. Ut dolorem sit sequi enim ab ut et dolorum.\";s:15:\"productCurrency\";s:3:\"USD\";s:13:\"productWeight\";i:8;s:14:\"productTaxRate\";i:16;s:19:\"productManufacturer\";s:12:\"Erdman-Grant\";s:12:\"categoryName\";s:10:\"Vegetables\";s:10:\"categoryId\";i:5;s:19:\"usesMultipleStorage\";b:0;s:22:\"productMeasurementUnit\";s:2:\"KG\";s:7:\"barcode\";s:12:\"539298782522\";s:9:\"createdBy\";i:1;s:10:\"updated_at\";s:19:\"2017-12-02 10:54:48\";s:10:\"created_at\";s:19:\"2017-12-02 10:54:48\";s:2:\"id\";i:71;}', '', NULL, NULL, 'Dennis Wanyoike', '2017-12-02 07:54:48', '2017-12-02 07:54:48'),
(142, 71, 'Product Updated', 'a:0:{}', 'a:25:{s:11:\"productName\";s:7:\"Erasers\";s:13:\"productSerial\";s:8:\"AKCGRCEL\";s:6:\"amount\";i:49;s:8:\"location\";s:5:\"Store\";s:8:\"unitCost\";i:296;s:12:\"sellingPrice\";i:310;s:13:\"reorderAmount\";i:7;s:10:\"expiryDate\";s:10:\"2016-10-17\";s:9:\"companyId\";i:1;s:20:\"productSpecification\";s:79:\"Quia unde ipsa eum nobis aut iusto. Ut dolorem sit sequi enim ab ut et dolorum.\";s:15:\"productCurrency\";s:3:\"USD\";s:13:\"productWeight\";i:8;s:14:\"productTaxRate\";i:16;s:19:\"productManufacturer\";s:12:\"Erdman-Grant\";s:12:\"categoryName\";s:10:\"Vegetables\";s:10:\"categoryId\";i:5;s:19:\"usesMultipleStorage\";b:0;s:22:\"productMeasurementUnit\";s:2:\"KG\";s:7:\"barcode\";s:12:\"539298782522\";s:9:\"createdBy\";i:1;s:10:\"updated_at\";s:19:\"2017-12-02 10:54:48\";s:10:\"created_at\";s:19:\"2017-12-02 10:54:48\";s:2:\"id\";i:71;s:4:\"hash\";s:8:\"e73muJAe\";s:9:\"updatedBy\";i:1;}', '', NULL, NULL, 'Dennis Wanyoike', '2017-12-02 07:54:48', '2017-12-02 07:54:48'),
(143, 72, 'Product Created', 'a:0:{}', 'a:23:{s:11:\"productName\";s:24:\"A5Khaki brown  envelopes\";s:13:\"productSerial\";s:7:\"BFQDSKD\";s:6:\"amount\";i:49;s:8:\"location\";s:5:\"Store\";s:8:\"unitCost\";i:226;s:12:\"sellingPrice\";i:237;s:13:\"reorderAmount\";i:4;s:10:\"expiryDate\";s:10:\"1996-10-18\";s:9:\"companyId\";i:1;s:20:\"productSpecification\";s:96:\"Sunt cum beatae ut et consequatur. Provident voluptas id inventore laudantium aut iure pariatur.\";s:15:\"productCurrency\";s:3:\"USD\";s:13:\"productWeight\";i:40;s:14:\"productTaxRate\";i:16;s:19:\"productManufacturer\";s:14:\"Ebert and Sons\";s:12:\"categoryName\";s:11:\"Consumables\";s:10:\"categoryId\";i:2;s:19:\"usesMultipleStorage\";b:1;s:22:\"productMeasurementUnit\";s:2:\"KG\";s:7:\"barcode\";s:12:\"150540683741\";s:9:\"createdBy\";i:1;s:10:\"updated_at\";s:19:\"2017-12-02 10:54:48\";s:10:\"created_at\";s:19:\"2017-12-02 10:54:48\";s:2:\"id\";i:72;}', '', NULL, NULL, 'Dennis Wanyoike', '2017-12-02 07:54:49', '2017-12-02 07:54:49'),
(144, 72, 'Product Updated', 'a:0:{}', 'a:25:{s:11:\"productName\";s:24:\"A5Khaki brown  envelopes\";s:13:\"productSerial\";s:7:\"BFQDSKD\";s:6:\"amount\";i:49;s:8:\"location\";s:5:\"Store\";s:8:\"unitCost\";i:226;s:12:\"sellingPrice\";i:237;s:13:\"reorderAmount\";i:4;s:10:\"expiryDate\";s:10:\"1996-10-18\";s:9:\"companyId\";i:1;s:20:\"productSpecification\";s:96:\"Sunt cum beatae ut et consequatur. Provident voluptas id inventore laudantium aut iure pariatur.\";s:15:\"productCurrency\";s:3:\"USD\";s:13:\"productWeight\";i:40;s:14:\"productTaxRate\";i:16;s:19:\"productManufacturer\";s:14:\"Ebert and Sons\";s:12:\"categoryName\";s:11:\"Consumables\";s:10:\"categoryId\";i:2;s:19:\"usesMultipleStorage\";b:1;s:22:\"productMeasurementUnit\";s:2:\"KG\";s:7:\"barcode\";s:12:\"150540683741\";s:9:\"createdBy\";i:1;s:10:\"updated_at\";s:19:\"2017-12-02 10:54:48\";s:10:\"created_at\";s:19:\"2017-12-02 10:54:48\";s:2:\"id\";i:72;s:4:\"hash\";s:8:\"dyPGh3Gb\";s:9:\"updatedBy\";i:1;}', '', NULL, NULL, 'Dennis Wanyoike', '2017-12-02 07:54:49', '2017-12-02 07:54:49'),
(145, 73, 'Product Created', 'a:0:{}', 'a:23:{s:11:\"productName\";s:12:\"safety boots\";s:13:\"productSerial\";s:7:\"SFVOHUD\";s:6:\"amount\";i:49;s:8:\"location\";s:5:\"Store\";s:8:\"unitCost\";i:197;s:12:\"sellingPrice\";i:205;s:13:\"reorderAmount\";i:10;s:10:\"expiryDate\";s:10:\"2016-05-14\";s:9:\"companyId\";i:1;s:20:\"productSpecification\";s:32:\"Labore et officiis deserunt non.\";s:15:\"productCurrency\";s:3:\"USD\";s:13:\"productWeight\";i:15;s:14:\"productTaxRate\";i:16;s:19:\"productManufacturer\";s:19:\"Morissette and Sons\";s:12:\"categoryName\";s:11:\"Consumables\";s:10:\"categoryId\";i:2;s:19:\"usesMultipleStorage\";b:1;s:22:\"productMeasurementUnit\";s:2:\"KG\";s:7:\"barcode\";s:12:\"241708120717\";s:9:\"createdBy\";i:1;s:10:\"updated_at\";s:19:\"2017-12-02 10:54:50\";s:10:\"created_at\";s:19:\"2017-12-02 10:54:50\";s:2:\"id\";i:73;}', '', NULL, NULL, 'Dennis Wanyoike', '2017-12-02 07:54:50', '2017-12-02 07:54:50'),
(146, 73, 'Product Updated', 'a:0:{}', 'a:25:{s:11:\"productName\";s:12:\"safety boots\";s:13:\"productSerial\";s:7:\"SFVOHUD\";s:6:\"amount\";i:49;s:8:\"location\";s:5:\"Store\";s:8:\"unitCost\";i:197;s:12:\"sellingPrice\";i:205;s:13:\"reorderAmount\";i:10;s:10:\"expiryDate\";s:10:\"2016-05-14\";s:9:\"companyId\";i:1;s:20:\"productSpecification\";s:32:\"Labore et officiis deserunt non.\";s:15:\"productCurrency\";s:3:\"USD\";s:13:\"productWeight\";i:15;s:14:\"productTaxRate\";i:16;s:19:\"productManufacturer\";s:19:\"Morissette and Sons\";s:12:\"categoryName\";s:11:\"Consumables\";s:10:\"categoryId\";i:2;s:19:\"usesMultipleStorage\";b:1;s:22:\"productMeasurementUnit\";s:2:\"KG\";s:7:\"barcode\";s:12:\"241708120717\";s:9:\"createdBy\";i:1;s:10:\"updated_at\";s:19:\"2017-12-02 10:54:50\";s:10:\"created_at\";s:19:\"2017-12-02 10:54:50\";s:2:\"id\";i:73;s:4:\"hash\";s:8:\"aOYBi0jd\";s:9:\"updatedBy\";i:1;}', '', NULL, NULL, 'Dennis Wanyoike', '2017-12-02 07:54:50', '2017-12-02 07:54:50'),
(147, 74, 'Product Created', 'a:0:{}', 'a:23:{s:11:\"productName\";s:6:\"Rulers\";s:13:\"productSerial\";s:9:\"BWNEP1HFB\";s:6:\"amount\";i:49;s:8:\"location\";s:5:\"Store\";s:8:\"unitCost\";i:196;s:12:\"sellingPrice\";i:215;s:13:\"reorderAmount\";i:14;s:10:\"expiryDate\";s:10:\"1988-03-04\";s:9:\"companyId\";i:1;s:20:\"productSpecification\";s:24:\"Rerum sit vel ipsam vel.\";s:15:\"productCurrency\";s:3:\"USD\";s:13:\"productWeight\";i:12;s:14:\"productTaxRate\";i:16;s:19:\"productManufacturer\";s:15:\"Stiedemann-Roob\";s:12:\"categoryName\";s:11:\"Consumables\";s:10:\"categoryId\";i:2;s:19:\"usesMultipleStorage\";b:1;s:22:\"productMeasurementUnit\";s:2:\"KG\";s:7:\"barcode\";s:12:\"993802939480\";s:9:\"createdBy\";i:1;s:10:\"updated_at\";s:19:\"2017-12-02 10:54:55\";s:10:\"created_at\";s:19:\"2017-12-02 10:54:55\";s:2:\"id\";i:74;}', '', NULL, NULL, 'Dennis Wanyoike', '2017-12-02 07:54:55', '2017-12-02 07:54:55');
INSERT INTO `stock_audits` (`id`, `productId`, `stockOperation`, `oldValues`, `newValues`, `narration`, `oldQuantity`, `newQuantity`, `username`, `created_at`, `updated_at`) VALUES
(148, 74, 'Product Updated', 'a:0:{}', 'a:25:{s:11:\"productName\";s:6:\"Rulers\";s:13:\"productSerial\";s:9:\"BWNEP1HFB\";s:6:\"amount\";i:49;s:8:\"location\";s:5:\"Store\";s:8:\"unitCost\";i:196;s:12:\"sellingPrice\";i:215;s:13:\"reorderAmount\";i:14;s:10:\"expiryDate\";s:10:\"1988-03-04\";s:9:\"companyId\";i:1;s:20:\"productSpecification\";s:24:\"Rerum sit vel ipsam vel.\";s:15:\"productCurrency\";s:3:\"USD\";s:13:\"productWeight\";i:12;s:14:\"productTaxRate\";i:16;s:19:\"productManufacturer\";s:15:\"Stiedemann-Roob\";s:12:\"categoryName\";s:11:\"Consumables\";s:10:\"categoryId\";i:2;s:19:\"usesMultipleStorage\";b:1;s:22:\"productMeasurementUnit\";s:2:\"KG\";s:7:\"barcode\";s:12:\"993802939480\";s:9:\"createdBy\";i:1;s:10:\"updated_at\";s:19:\"2017-12-02 10:54:55\";s:10:\"created_at\";s:19:\"2017-12-02 10:54:55\";s:2:\"id\";i:74;s:4:\"hash\";s:8:\"dwpLs38e\";s:9:\"updatedBy\";i:1;}', '', NULL, NULL, 'Dennis Wanyoike', '2017-12-02 07:54:55', '2017-12-02 07:54:55'),
(149, 75, 'Product Created', 'a:0:{}', 'a:23:{s:11:\"productName\";s:10:\"Flip chart\";s:13:\"productSerial\";s:14:\"qHKB1HV9RHMJHO\";s:6:\"amount\";i:49;s:8:\"location\";s:5:\"Store\";s:8:\"unitCost\";i:298;s:12:\"sellingPrice\";i:312;s:13:\"reorderAmount\";i:12;s:10:\"expiryDate\";s:10:\"2003-12-23\";s:9:\"companyId\";i:1;s:20:\"productSpecification\";s:29:\"Nihil quis autem adipisci ut.\";s:15:\"productCurrency\";s:3:\"USD\";s:13:\"productWeight\";i:59;s:14:\"productTaxRate\";i:16;s:19:\"productManufacturer\";s:18:\"Hudson-Satterfield\";s:12:\"categoryName\";s:10:\"Vegetables\";s:10:\"categoryId\";i:5;s:19:\"usesMultipleStorage\";b:1;s:22:\"productMeasurementUnit\";s:2:\"KG\";s:7:\"barcode\";s:12:\"333882931835\";s:9:\"createdBy\";i:1;s:10:\"updated_at\";s:19:\"2017-12-02 10:54:56\";s:10:\"created_at\";s:19:\"2017-12-02 10:54:56\";s:2:\"id\";i:75;}', '', NULL, NULL, 'Dennis Wanyoike', '2017-12-02 07:54:56', '2017-12-02 07:54:56'),
(150, 75, 'Product Updated', 'a:0:{}', 'a:25:{s:11:\"productName\";s:10:\"Flip chart\";s:13:\"productSerial\";s:14:\"qHKB1HV9RHMJHO\";s:6:\"amount\";i:49;s:8:\"location\";s:5:\"Store\";s:8:\"unitCost\";i:298;s:12:\"sellingPrice\";i:312;s:13:\"reorderAmount\";i:12;s:10:\"expiryDate\";s:10:\"2003-12-23\";s:9:\"companyId\";i:1;s:20:\"productSpecification\";s:29:\"Nihil quis autem adipisci ut.\";s:15:\"productCurrency\";s:3:\"USD\";s:13:\"productWeight\";i:59;s:14:\"productTaxRate\";i:16;s:19:\"productManufacturer\";s:18:\"Hudson-Satterfield\";s:12:\"categoryName\";s:10:\"Vegetables\";s:10:\"categoryId\";i:5;s:19:\"usesMultipleStorage\";b:1;s:22:\"productMeasurementUnit\";s:2:\"KG\";s:7:\"barcode\";s:12:\"333882931835\";s:9:\"createdBy\";i:1;s:10:\"updated_at\";s:19:\"2017-12-02 10:54:56\";s:10:\"created_at\";s:19:\"2017-12-02 10:54:56\";s:2:\"id\";i:75;s:4:\"hash\";s:8:\"bDkvtgma\";s:9:\"updatedBy\";i:1;}', '', NULL, NULL, 'Dennis Wanyoike', '2017-12-02 07:54:56', '2017-12-02 07:54:56'),
(151, 76, 'Product Created', 'a:0:{}', 'a:23:{s:11:\"productName\";s:19:\"White board markers\";s:13:\"productSerial\";s:6:\"2KEOVR\";s:6:\"amount\";i:49;s:8:\"location\";s:5:\"Store\";s:8:\"unitCost\";i:228;s:12:\"sellingPrice\";i:242;s:13:\"reorderAmount\";i:15;s:10:\"expiryDate\";s:10:\"2004-12-10\";s:9:\"companyId\";i:1;s:20:\"productSpecification\";s:136:\"Eos eaque velit sunt et adipisci aspernatur iure. Qui dolore similique voluptatem cupiditate officiis commodi necessitatibus voluptatem.\";s:15:\"productCurrency\";s:3:\"USD\";s:13:\"productWeight\";i:73;s:14:\"productTaxRate\";i:16;s:19:\"productManufacturer\";s:22:\"Welch, Huel and Turner\";s:12:\"categoryName\";s:10:\"Cool Stuff\";s:10:\"categoryId\";i:6;s:19:\"usesMultipleStorage\";b:1;s:22:\"productMeasurementUnit\";s:2:\"KG\";s:7:\"barcode\";s:12:\"137158364996\";s:9:\"createdBy\";i:1;s:10:\"updated_at\";s:19:\"2017-12-02 10:55:00\";s:10:\"created_at\";s:19:\"2017-12-02 10:55:00\";s:2:\"id\";i:76;}', '', NULL, NULL, 'Dennis Wanyoike', '2017-12-02 07:55:00', '2017-12-02 07:55:00'),
(152, 76, 'Product Updated', 'a:0:{}', 'a:25:{s:11:\"productName\";s:19:\"White board markers\";s:13:\"productSerial\";s:6:\"2KEOVR\";s:6:\"amount\";i:49;s:8:\"location\";s:5:\"Store\";s:8:\"unitCost\";i:228;s:12:\"sellingPrice\";i:242;s:13:\"reorderAmount\";i:15;s:10:\"expiryDate\";s:10:\"2004-12-10\";s:9:\"companyId\";i:1;s:20:\"productSpecification\";s:136:\"Eos eaque velit sunt et adipisci aspernatur iure. Qui dolore similique voluptatem cupiditate officiis commodi necessitatibus voluptatem.\";s:15:\"productCurrency\";s:3:\"USD\";s:13:\"productWeight\";i:73;s:14:\"productTaxRate\";i:16;s:19:\"productManufacturer\";s:22:\"Welch, Huel and Turner\";s:12:\"categoryName\";s:10:\"Cool Stuff\";s:10:\"categoryId\";i:6;s:19:\"usesMultipleStorage\";b:1;s:22:\"productMeasurementUnit\";s:2:\"KG\";s:7:\"barcode\";s:12:\"137158364996\";s:9:\"createdBy\";i:1;s:10:\"updated_at\";s:19:\"2017-12-02 10:55:00\";s:10:\"created_at\";s:19:\"2017-12-02 10:55:00\";s:2:\"id\";i:76;s:4:\"hash\";s:8:\"e73GS8we\";s:9:\"updatedBy\";i:1;}', '', NULL, NULL, 'Dennis Wanyoike', '2017-12-02 07:55:00', '2017-12-02 07:55:00'),
(153, 77, 'Product Created', 'a:0:{}', 'a:23:{s:11:\"productName\";s:11:\"Clip boards\";s:13:\"productSerial\";s:15:\"O67Z300F6UGYNSQ\";s:6:\"amount\";i:49;s:8:\"location\";s:5:\"Store\";s:8:\"unitCost\";i:116;s:12:\"sellingPrice\";i:129;s:13:\"reorderAmount\";i:6;s:10:\"expiryDate\";s:10:\"1983-04-09\";s:9:\"companyId\";i:1;s:20:\"productSpecification\";s:36:\"Enim modi voluptatem cum magnam sit.\";s:15:\"productCurrency\";s:3:\"USD\";s:13:\"productWeight\";i:25;s:14:\"productTaxRate\";i:16;s:19:\"productManufacturer\";s:25:\"Hoppe, Crooks and Abshire\";s:12:\"categoryName\";s:10:\"Stationery\";s:10:\"categoryId\";i:1;s:19:\"usesMultipleStorage\";b:1;s:22:\"productMeasurementUnit\";s:2:\"KG\";s:7:\"barcode\";s:12:\"962161399273\";s:9:\"createdBy\";i:1;s:10:\"updated_at\";s:19:\"2017-12-02 10:55:02\";s:10:\"created_at\";s:19:\"2017-12-02 10:55:02\";s:2:\"id\";i:77;}', '', NULL, NULL, 'Dennis Wanyoike', '2017-12-02 07:55:02', '2017-12-02 07:55:02'),
(154, 77, 'Product Updated', 'a:0:{}', 'a:25:{s:11:\"productName\";s:11:\"Clip boards\";s:13:\"productSerial\";s:15:\"O67Z300F6UGYNSQ\";s:6:\"amount\";i:49;s:8:\"location\";s:5:\"Store\";s:8:\"unitCost\";i:116;s:12:\"sellingPrice\";i:129;s:13:\"reorderAmount\";i:6;s:10:\"expiryDate\";s:10:\"1983-04-09\";s:9:\"companyId\";i:1;s:20:\"productSpecification\";s:36:\"Enim modi voluptatem cum magnam sit.\";s:15:\"productCurrency\";s:3:\"USD\";s:13:\"productWeight\";i:25;s:14:\"productTaxRate\";i:16;s:19:\"productManufacturer\";s:25:\"Hoppe, Crooks and Abshire\";s:12:\"categoryName\";s:10:\"Stationery\";s:10:\"categoryId\";i:1;s:19:\"usesMultipleStorage\";b:1;s:22:\"productMeasurementUnit\";s:2:\"KG\";s:7:\"barcode\";s:12:\"962161399273\";s:9:\"createdBy\";i:1;s:10:\"updated_at\";s:19:\"2017-12-02 10:55:02\";s:10:\"created_at\";s:19:\"2017-12-02 10:55:02\";s:2:\"id\";i:77;s:4:\"hash\";s:8:\"b825UNre\";s:9:\"updatedBy\";i:1;}', '', NULL, NULL, 'Dennis Wanyoike', '2017-12-02 07:55:02', '2017-12-02 07:55:02'),
(155, 78, 'Product Created', 'a:0:{}', 'a:23:{s:11:\"productName\";s:14:\"Binding covers\";s:13:\"productSerial\";s:5:\"WZGAY\";s:6:\"amount\";i:49;s:8:\"location\";s:5:\"Store\";s:8:\"unitCost\";i:139;s:12:\"sellingPrice\";i:149;s:13:\"reorderAmount\";i:7;s:10:\"expiryDate\";s:10:\"2005-02-11\";s:9:\"companyId\";i:1;s:20:\"productSpecification\";s:61:\"Autem quisquam rem id aut. Non vitae doloremque ex provident.\";s:15:\"productCurrency\";s:3:\"USD\";s:13:\"productWeight\";i:46;s:14:\"productTaxRate\";i:16;s:19:\"productManufacturer\";s:17:\"Kovacek-Marquardt\";s:12:\"categoryName\";s:10:\"Stationery\";s:10:\"categoryId\";i:1;s:19:\"usesMultipleStorage\";b:1;s:22:\"productMeasurementUnit\";s:2:\"KG\";s:7:\"barcode\";s:12:\"476892883159\";s:9:\"createdBy\";i:1;s:10:\"updated_at\";s:19:\"2017-12-02 10:55:06\";s:10:\"created_at\";s:19:\"2017-12-02 10:55:06\";s:2:\"id\";i:78;}', '', NULL, NULL, 'Dennis Wanyoike', '2017-12-02 07:55:06', '2017-12-02 07:55:06'),
(156, 78, 'Product Updated', 'a:0:{}', 'a:25:{s:11:\"productName\";s:14:\"Binding covers\";s:13:\"productSerial\";s:5:\"WZGAY\";s:6:\"amount\";i:49;s:8:\"location\";s:5:\"Store\";s:8:\"unitCost\";i:139;s:12:\"sellingPrice\";i:149;s:13:\"reorderAmount\";i:7;s:10:\"expiryDate\";s:10:\"2005-02-11\";s:9:\"companyId\";i:1;s:20:\"productSpecification\";s:61:\"Autem quisquam rem id aut. Non vitae doloremque ex provident.\";s:15:\"productCurrency\";s:3:\"USD\";s:13:\"productWeight\";i:46;s:14:\"productTaxRate\";i:16;s:19:\"productManufacturer\";s:17:\"Kovacek-Marquardt\";s:12:\"categoryName\";s:10:\"Stationery\";s:10:\"categoryId\";i:1;s:19:\"usesMultipleStorage\";b:1;s:22:\"productMeasurementUnit\";s:2:\"KG\";s:7:\"barcode\";s:12:\"476892883159\";s:9:\"createdBy\";i:1;s:10:\"updated_at\";s:19:\"2017-12-02 10:55:06\";s:10:\"created_at\";s:19:\"2017-12-02 10:55:06\";s:2:\"id\";i:78;s:4:\"hash\";s:8:\"bW64IYja\";s:9:\"updatedBy\";i:1;}', '', NULL, NULL, 'Dennis Wanyoike', '2017-12-02 07:55:07', '2017-12-02 07:55:07'),
(157, 79, 'Product Created', 'a:0:{}', 'a:23:{s:11:\"productName\";s:14:\"Spiral Binders\";s:13:\"productSerial\";s:6:\"Y_OYJQ\";s:6:\"amount\";i:49;s:8:\"location\";s:5:\"Store\";s:8:\"unitCost\";i:179;s:12:\"sellingPrice\";i:184;s:13:\"reorderAmount\";i:4;s:10:\"expiryDate\";s:10:\"1992-12-18\";s:9:\"companyId\";i:1;s:20:\"productSpecification\";s:136:\"Magni dolore quod eligendi dolores necessitatibus iste recusandae voluptatem. Rerum aliquam perferendis laboriosam rerum asperiores qui.\";s:15:\"productCurrency\";s:3:\"USD\";s:13:\"productWeight\";i:42;s:14:\"productTaxRate\";i:16;s:19:\"productManufacturer\";s:12:\"Turner-Lakin\";s:12:\"categoryName\";s:11:\"Electronics\";s:10:\"categoryId\";i:3;s:19:\"usesMultipleStorage\";b:1;s:22:\"productMeasurementUnit\";s:2:\"KG\";s:7:\"barcode\";s:12:\"160770472961\";s:9:\"createdBy\";i:1;s:10:\"updated_at\";s:19:\"2017-12-02 10:55:09\";s:10:\"created_at\";s:19:\"2017-12-02 10:55:09\";s:2:\"id\";i:79;}', '', NULL, NULL, 'Dennis Wanyoike', '2017-12-02 07:55:09', '2017-12-02 07:55:09'),
(158, 79, 'Product Updated', 'a:0:{}', 'a:25:{s:11:\"productName\";s:14:\"Spiral Binders\";s:13:\"productSerial\";s:6:\"Y_OYJQ\";s:6:\"amount\";i:49;s:8:\"location\";s:5:\"Store\";s:8:\"unitCost\";i:179;s:12:\"sellingPrice\";i:184;s:13:\"reorderAmount\";i:4;s:10:\"expiryDate\";s:10:\"1992-12-18\";s:9:\"companyId\";i:1;s:20:\"productSpecification\";s:136:\"Magni dolore quod eligendi dolores necessitatibus iste recusandae voluptatem. Rerum aliquam perferendis laboriosam rerum asperiores qui.\";s:15:\"productCurrency\";s:3:\"USD\";s:13:\"productWeight\";i:42;s:14:\"productTaxRate\";i:16;s:19:\"productManufacturer\";s:12:\"Turner-Lakin\";s:12:\"categoryName\";s:11:\"Electronics\";s:10:\"categoryId\";i:3;s:19:\"usesMultipleStorage\";b:1;s:22:\"productMeasurementUnit\";s:2:\"KG\";s:7:\"barcode\";s:12:\"160770472961\";s:9:\"createdBy\";i:1;s:10:\"updated_at\";s:19:\"2017-12-02 10:55:09\";s:10:\"created_at\";s:19:\"2017-12-02 10:55:09\";s:2:\"id\";i:79;s:4:\"hash\";s:8:\"en5wT60d\";s:9:\"updatedBy\";i:1;}', '', NULL, NULL, 'Dennis Wanyoike', '2017-12-02 07:55:09', '2017-12-02 07:55:09'),
(159, 80, 'Product Created', 'a:0:{}', 'a:23:{s:11:\"productName\";s:20:\"Company Letter Heads\";s:13:\"productSerial\";s:7:\"ATUUCXX\";s:6:\"amount\";i:49;s:8:\"location\";s:5:\"Store\";s:8:\"unitCost\";i:258;s:12:\"sellingPrice\";i:265;s:13:\"reorderAmount\";i:10;s:10:\"expiryDate\";s:10:\"1999-05-28\";s:9:\"companyId\";i:1;s:20:\"productSpecification\";s:29:\"Hic ut quasi doloremque unde.\";s:15:\"productCurrency\";s:3:\"USD\";s:13:\"productWeight\";i:89;s:14:\"productTaxRate\";i:16;s:19:\"productManufacturer\";s:16:\"Lebsack and Sons\";s:12:\"categoryName\";s:11:\"Consumables\";s:10:\"categoryId\";i:2;s:19:\"usesMultipleStorage\";b:1;s:22:\"productMeasurementUnit\";s:2:\"KG\";s:7:\"barcode\";s:12:\"542983396676\";s:9:\"createdBy\";i:1;s:10:\"updated_at\";s:19:\"2017-12-02 10:55:14\";s:10:\"created_at\";s:19:\"2017-12-02 10:55:14\";s:2:\"id\";i:80;}', '', NULL, NULL, 'Dennis Wanyoike', '2017-12-02 07:55:14', '2017-12-02 07:55:14'),
(160, 80, 'Product Updated', 'a:0:{}', 'a:25:{s:11:\"productName\";s:20:\"Company Letter Heads\";s:13:\"productSerial\";s:7:\"ATUUCXX\";s:6:\"amount\";i:49;s:8:\"location\";s:5:\"Store\";s:8:\"unitCost\";i:258;s:12:\"sellingPrice\";i:265;s:13:\"reorderAmount\";i:10;s:10:\"expiryDate\";s:10:\"1999-05-28\";s:9:\"companyId\";i:1;s:20:\"productSpecification\";s:29:\"Hic ut quasi doloremque unde.\";s:15:\"productCurrency\";s:3:\"USD\";s:13:\"productWeight\";i:89;s:14:\"productTaxRate\";i:16;s:19:\"productManufacturer\";s:16:\"Lebsack and Sons\";s:12:\"categoryName\";s:11:\"Consumables\";s:10:\"categoryId\";i:2;s:19:\"usesMultipleStorage\";b:1;s:22:\"productMeasurementUnit\";s:2:\"KG\";s:7:\"barcode\";s:12:\"542983396676\";s:9:\"createdBy\";i:1;s:10:\"updated_at\";s:19:\"2017-12-02 10:55:14\";s:10:\"created_at\";s:19:\"2017-12-02 10:55:14\";s:2:\"id\";i:80;s:4:\"hash\";s:8:\"bDkmIJ1a\";s:9:\"updatedBy\";i:1;}', '', NULL, NULL, 'Dennis Wanyoike', '2017-12-02 07:55:14', '2017-12-02 07:55:14'),
(161, 81, 'Product Created', 'a:0:{}', 'a:23:{s:11:\"productName\";s:18:\"Sign here stickers\";s:13:\"productSerial\";s:6:\"ICUCSF\";s:6:\"amount\";i:49;s:8:\"location\";s:5:\"Store\";s:8:\"unitCost\";i:194;s:12:\"sellingPrice\";i:213;s:13:\"reorderAmount\";i:7;s:10:\"expiryDate\";s:10:\"1984-04-17\";s:9:\"companyId\";i:1;s:20:\"productSpecification\";s:84:\"Itaque cupiditate nihil nisi praesentium omnis est. Rerum nesciunt qui aut nemo sed.\";s:15:\"productCurrency\";s:3:\"USD\";s:13:\"productWeight\";i:35;s:14:\"productTaxRate\";i:16;s:19:\"productManufacturer\";s:21:\"Swaniawski-Altenwerth\";s:12:\"categoryName\";s:11:\"Electronics\";s:10:\"categoryId\";i:3;s:19:\"usesMultipleStorage\";b:0;s:22:\"productMeasurementUnit\";s:2:\"KG\";s:7:\"barcode\";s:12:\"592228632069\";s:9:\"createdBy\";i:1;s:10:\"updated_at\";s:19:\"2017-12-02 10:55:15\";s:10:\"created_at\";s:19:\"2017-12-02 10:55:15\";s:2:\"id\";i:81;}', '', NULL, NULL, 'Dennis Wanyoike', '2017-12-02 07:55:15', '2017-12-02 07:55:15'),
(162, 81, 'Product Updated', 'a:0:{}', 'a:25:{s:11:\"productName\";s:18:\"Sign here stickers\";s:13:\"productSerial\";s:6:\"ICUCSF\";s:6:\"amount\";i:49;s:8:\"location\";s:5:\"Store\";s:8:\"unitCost\";i:194;s:12:\"sellingPrice\";i:213;s:13:\"reorderAmount\";i:7;s:10:\"expiryDate\";s:10:\"1984-04-17\";s:9:\"companyId\";i:1;s:20:\"productSpecification\";s:84:\"Itaque cupiditate nihil nisi praesentium omnis est. Rerum nesciunt qui aut nemo sed.\";s:15:\"productCurrency\";s:3:\"USD\";s:13:\"productWeight\";i:35;s:14:\"productTaxRate\";i:16;s:19:\"productManufacturer\";s:21:\"Swaniawski-Altenwerth\";s:12:\"categoryName\";s:11:\"Electronics\";s:10:\"categoryId\";i:3;s:19:\"usesMultipleStorage\";b:0;s:22:\"productMeasurementUnit\";s:2:\"KG\";s:7:\"barcode\";s:12:\"592228632069\";s:9:\"createdBy\";i:1;s:10:\"updated_at\";s:19:\"2017-12-02 10:55:15\";s:10:\"created_at\";s:19:\"2017-12-02 10:55:15\";s:2:\"id\";i:81;s:4:\"hash\";s:8:\"b4x1Srpb\";s:9:\"updatedBy\";i:1;}', '', NULL, NULL, 'Dennis Wanyoike', '2017-12-02 07:55:15', '2017-12-02 07:55:15'),
(163, 82, 'Product Created', 'a:0:{}', 'a:23:{s:11:\"productName\";s:9:\"Adhesives\";s:13:\"productSerial\";s:9:\"4-GbZ0WRJ\";s:6:\"amount\";i:49;s:8:\"location\";s:5:\"Store\";s:8:\"unitCost\";i:146;s:12:\"sellingPrice\";i:160;s:13:\"reorderAmount\";i:1;s:10:\"expiryDate\";s:10:\"1980-10-26\";s:9:\"companyId\";i:1;s:20:\"productSpecification\";s:102:\"Qui exercitationem beatae rerum distinctio fuga. Consequatur aspernatur quos in fugit aut accusantium.\";s:15:\"productCurrency\";s:3:\"USD\";s:13:\"productWeight\";i:69;s:14:\"productTaxRate\";i:16;s:19:\"productManufacturer\";s:26:\"Auer, Orn and Christiansen\";s:12:\"categoryName\";s:10:\"Vegetables\";s:10:\"categoryId\";i:5;s:19:\"usesMultipleStorage\";b:1;s:22:\"productMeasurementUnit\";s:2:\"KG\";s:7:\"barcode\";s:12:\"814043234540\";s:9:\"createdBy\";i:1;s:10:\"updated_at\";s:19:\"2017-12-02 10:55:15\";s:10:\"created_at\";s:19:\"2017-12-02 10:55:15\";s:2:\"id\";i:82;}', '', NULL, NULL, 'Dennis Wanyoike', '2017-12-02 07:55:15', '2017-12-02 07:55:15'),
(164, 82, 'Product Updated', 'a:0:{}', 'a:25:{s:11:\"productName\";s:9:\"Adhesives\";s:13:\"productSerial\";s:9:\"4-GbZ0WRJ\";s:6:\"amount\";i:49;s:8:\"location\";s:5:\"Store\";s:8:\"unitCost\";i:146;s:12:\"sellingPrice\";i:160;s:13:\"reorderAmount\";i:1;s:10:\"expiryDate\";s:10:\"1980-10-26\";s:9:\"companyId\";i:1;s:20:\"productSpecification\";s:102:\"Qui exercitationem beatae rerum distinctio fuga. Consequatur aspernatur quos in fugit aut accusantium.\";s:15:\"productCurrency\";s:3:\"USD\";s:13:\"productWeight\";i:69;s:14:\"productTaxRate\";i:16;s:19:\"productManufacturer\";s:26:\"Auer, Orn and Christiansen\";s:12:\"categoryName\";s:10:\"Vegetables\";s:10:\"categoryId\";i:5;s:19:\"usesMultipleStorage\";b:1;s:22:\"productMeasurementUnit\";s:2:\"KG\";s:7:\"barcode\";s:12:\"814043234540\";s:9:\"createdBy\";i:1;s:10:\"updated_at\";s:19:\"2017-12-02 10:55:15\";s:10:\"created_at\";s:19:\"2017-12-02 10:55:15\";s:2:\"id\";i:82;s:4:\"hash\";s:8:\"e9rJTkRa\";s:9:\"updatedBy\";i:1;}', '', NULL, NULL, 'Dennis Wanyoike', '2017-12-02 07:55:16', '2017-12-02 07:55:16'),
(165, 83, 'Product Created', 'a:0:{}', 'a:23:{s:11:\"productName\";s:15:\"Clear sellotape\";s:13:\"productSerial\";s:8:\"C9PSV-CI\";s:6:\"amount\";i:49;s:8:\"location\";s:5:\"Store\";s:8:\"unitCost\";i:297;s:12:\"sellingPrice\";i:305;s:13:\"reorderAmount\";i:7;s:10:\"expiryDate\";s:10:\"1977-02-01\";s:9:\"companyId\";i:1;s:20:\"productSpecification\";s:33:\"Excepturi aut expedita voluptate.\";s:15:\"productCurrency\";s:3:\"USD\";s:13:\"productWeight\";i:100;s:14:\"productTaxRate\";i:16;s:19:\"productManufacturer\";s:14:\"Pacocha-Mayert\";s:12:\"categoryName\";s:11:\"Consumables\";s:10:\"categoryId\";i:2;s:19:\"usesMultipleStorage\";b:0;s:22:\"productMeasurementUnit\";s:2:\"KG\";s:7:\"barcode\";s:12:\"132219878122\";s:9:\"createdBy\";i:1;s:10:\"updated_at\";s:19:\"2017-12-02 10:55:17\";s:10:\"created_at\";s:19:\"2017-12-02 10:55:17\";s:2:\"id\";i:83;}', '', NULL, NULL, 'Dennis Wanyoike', '2017-12-02 07:55:17', '2017-12-02 07:55:17'),
(166, 83, 'Product Updated', 'a:0:{}', 'a:25:{s:11:\"productName\";s:15:\"Clear sellotape\";s:13:\"productSerial\";s:8:\"C9PSV-CI\";s:6:\"amount\";i:49;s:8:\"location\";s:5:\"Store\";s:8:\"unitCost\";i:297;s:12:\"sellingPrice\";i:305;s:13:\"reorderAmount\";i:7;s:10:\"expiryDate\";s:10:\"1977-02-01\";s:9:\"companyId\";i:1;s:20:\"productSpecification\";s:33:\"Excepturi aut expedita voluptate.\";s:15:\"productCurrency\";s:3:\"USD\";s:13:\"productWeight\";i:100;s:14:\"productTaxRate\";i:16;s:19:\"productManufacturer\";s:14:\"Pacocha-Mayert\";s:12:\"categoryName\";s:11:\"Consumables\";s:10:\"categoryId\";i:2;s:19:\"usesMultipleStorage\";b:0;s:22:\"productMeasurementUnit\";s:2:\"KG\";s:7:\"barcode\";s:12:\"132219878122\";s:9:\"createdBy\";i:1;s:10:\"updated_at\";s:19:\"2017-12-02 10:55:17\";s:10:\"created_at\";s:19:\"2017-12-02 10:55:17\";s:2:\"id\";i:83;s:4:\"hash\";s:8:\"en5LhlWd\";s:9:\"updatedBy\";i:1;}', '', NULL, NULL, 'Dennis Wanyoike', '2017-12-02 07:55:17', '2017-12-02 07:55:17'),
(167, 84, 'Product Created', 'a:0:{}', 'a:23:{s:11:\"productName\";s:18:\"Reflective Jackets\";s:13:\"productSerial\";s:8:\"D`AJBRWU\";s:6:\"amount\";i:49;s:8:\"location\";s:5:\"Store\";s:8:\"unitCost\";i:268;s:12:\"sellingPrice\";i:273;s:13:\"reorderAmount\";i:14;s:10:\"expiryDate\";s:10:\"1996-04-26\";s:9:\"companyId\";i:1;s:20:\"productSpecification\";s:82:\"Qui perferendis magnam magnam nulla laborum. Sequi qui et itaque esse tempora est.\";s:15:\"productCurrency\";s:3:\"USD\";s:13:\"productWeight\";i:20;s:14:\"productTaxRate\";i:16;s:19:\"productManufacturer\";s:12:\"Connelly Inc\";s:12:\"categoryName\";s:10:\"Stationery\";s:10:\"categoryId\";i:1;s:19:\"usesMultipleStorage\";b:0;s:22:\"productMeasurementUnit\";s:2:\"KG\";s:7:\"barcode\";s:12:\"506709640566\";s:9:\"createdBy\";i:1;s:10:\"updated_at\";s:19:\"2017-12-02 10:55:17\";s:10:\"created_at\";s:19:\"2017-12-02 10:55:17\";s:2:\"id\";i:84;}', '', NULL, NULL, 'Dennis Wanyoike', '2017-12-02 07:55:17', '2017-12-02 07:55:17'),
(168, 84, 'Product Updated', 'a:0:{}', 'a:25:{s:11:\"productName\";s:18:\"Reflective Jackets\";s:13:\"productSerial\";s:8:\"D`AJBRWU\";s:6:\"amount\";i:49;s:8:\"location\";s:5:\"Store\";s:8:\"unitCost\";i:268;s:12:\"sellingPrice\";i:273;s:13:\"reorderAmount\";i:14;s:10:\"expiryDate\";s:10:\"1996-04-26\";s:9:\"companyId\";i:1;s:20:\"productSpecification\";s:82:\"Qui perferendis magnam magnam nulla laborum. Sequi qui et itaque esse tempora est.\";s:15:\"productCurrency\";s:3:\"USD\";s:13:\"productWeight\";i:20;s:14:\"productTaxRate\";i:16;s:19:\"productManufacturer\";s:12:\"Connelly Inc\";s:12:\"categoryName\";s:10:\"Stationery\";s:10:\"categoryId\";i:1;s:19:\"usesMultipleStorage\";b:0;s:22:\"productMeasurementUnit\";s:2:\"KG\";s:7:\"barcode\";s:12:\"506709640566\";s:9:\"createdBy\";i:1;s:10:\"updated_at\";s:19:\"2017-12-02 10:55:17\";s:10:\"created_at\";s:19:\"2017-12-02 10:55:17\";s:2:\"id\";i:84;s:4:\"hash\";s:8:\"en5Bi7qE\";s:9:\"updatedBy\";i:1;}', '', NULL, NULL, 'Dennis Wanyoike', '2017-12-02 07:55:17', '2017-12-02 07:55:17'),
(169, 85, 'Product Created', 'a:0:{}', 'a:23:{s:11:\"productName\";s:9:\"ETR Rolls\";s:13:\"productSerial\";s:11:\"KHIRFWVAAQA\";s:6:\"amount\";i:49;s:8:\"location\";s:5:\"Store\";s:8:\"unitCost\";i:125;s:12:\"sellingPrice\";i:130;s:13:\"reorderAmount\";i:9;s:10:\"expiryDate\";s:10:\"2016-08-22\";s:9:\"companyId\";i:1;s:20:\"productSpecification\";s:45:\"Corporis qui occaecati aut odio cum expedita.\";s:15:\"productCurrency\";s:3:\"USD\";s:13:\"productWeight\";i:97;s:14:\"productTaxRate\";i:16;s:19:\"productManufacturer\";s:10:\"Jast Group\";s:12:\"categoryName\";s:11:\"Electronics\";s:10:\"categoryId\";i:3;s:19:\"usesMultipleStorage\";b:0;s:22:\"productMeasurementUnit\";s:2:\"KG\";s:7:\"barcode\";s:12:\"257008734011\";s:9:\"createdBy\";i:1;s:10:\"updated_at\";s:19:\"2017-12-02 10:55:18\";s:10:\"created_at\";s:19:\"2017-12-02 10:55:18\";s:2:\"id\";i:85;}', '', NULL, NULL, 'Dennis Wanyoike', '2017-12-02 07:55:18', '2017-12-02 07:55:18'),
(170, 85, 'Product Updated', 'a:0:{}', 'a:25:{s:11:\"productName\";s:9:\"ETR Rolls\";s:13:\"productSerial\";s:11:\"KHIRFWVAAQA\";s:6:\"amount\";i:49;s:8:\"location\";s:5:\"Store\";s:8:\"unitCost\";i:125;s:12:\"sellingPrice\";i:130;s:13:\"reorderAmount\";i:9;s:10:\"expiryDate\";s:10:\"2016-08-22\";s:9:\"companyId\";i:1;s:20:\"productSpecification\";s:45:\"Corporis qui occaecati aut odio cum expedita.\";s:15:\"productCurrency\";s:3:\"USD\";s:13:\"productWeight\";i:97;s:14:\"productTaxRate\";i:16;s:19:\"productManufacturer\";s:10:\"Jast Group\";s:12:\"categoryName\";s:11:\"Electronics\";s:10:\"categoryId\";i:3;s:19:\"usesMultipleStorage\";b:0;s:22:\"productMeasurementUnit\";s:2:\"KG\";s:7:\"barcode\";s:12:\"257008734011\";s:9:\"createdBy\";i:1;s:10:\"updated_at\";s:19:\"2017-12-02 10:55:18\";s:10:\"created_at\";s:19:\"2017-12-02 10:55:18\";s:2:\"id\";i:85;s:4:\"hash\";s:8:\"epYGfrqa\";s:9:\"updatedBy\";i:1;}', '', NULL, NULL, 'Dennis Wanyoike', '2017-12-02 07:55:18', '2017-12-02 07:55:18'),
(171, 86, 'Product Created', 'a:0:{}', 'a:23:{s:11:\"productName\";s:15:\"Complimentaries\";s:13:\"productSerial\";s:7:\"ASKIGGJ\";s:6:\"amount\";i:49;s:8:\"location\";s:5:\"Store\";s:8:\"unitCost\";i:295;s:12:\"sellingPrice\";i:314;s:13:\"reorderAmount\";i:9;s:10:\"expiryDate\";s:10:\"2008-05-25\";s:9:\"companyId\";i:1;s:20:\"productSpecification\";s:73:\"Quam minus est dolor repellat. Provident cumque facere in quo dolore non.\";s:15:\"productCurrency\";s:3:\"USD\";s:13:\"productWeight\";i:38;s:14:\"productTaxRate\";i:16;s:19:\"productManufacturer\";s:24:\"Von, Schroeder and Frami\";s:12:\"categoryName\";s:10:\"Vegetables\";s:10:\"categoryId\";i:5;s:19:\"usesMultipleStorage\";b:1;s:22:\"productMeasurementUnit\";s:2:\"KG\";s:7:\"barcode\";s:12:\"990015244943\";s:9:\"createdBy\";i:1;s:10:\"updated_at\";s:19:\"2017-12-02 10:55:18\";s:10:\"created_at\";s:19:\"2017-12-02 10:55:18\";s:2:\"id\";i:86;}', '', NULL, NULL, 'Dennis Wanyoike', '2017-12-02 07:55:19', '2017-12-02 07:55:19'),
(172, 86, 'Product Updated', 'a:0:{}', 'a:25:{s:11:\"productName\";s:15:\"Complimentaries\";s:13:\"productSerial\";s:7:\"ASKIGGJ\";s:6:\"amount\";i:49;s:8:\"location\";s:5:\"Store\";s:8:\"unitCost\";i:295;s:12:\"sellingPrice\";i:314;s:13:\"reorderAmount\";i:9;s:10:\"expiryDate\";s:10:\"2008-05-25\";s:9:\"companyId\";i:1;s:20:\"productSpecification\";s:73:\"Quam minus est dolor repellat. Provident cumque facere in quo dolore non.\";s:15:\"productCurrency\";s:3:\"USD\";s:13:\"productWeight\";i:38;s:14:\"productTaxRate\";i:16;s:19:\"productManufacturer\";s:24:\"Von, Schroeder and Frami\";s:12:\"categoryName\";s:10:\"Vegetables\";s:10:\"categoryId\";i:5;s:19:\"usesMultipleStorage\";b:1;s:22:\"productMeasurementUnit\";s:2:\"KG\";s:7:\"barcode\";s:12:\"990015244943\";s:9:\"createdBy\";i:1;s:10:\"updated_at\";s:19:\"2017-12-02 10:55:18\";s:10:\"created_at\";s:19:\"2017-12-02 10:55:18\";s:2:\"id\";i:86;s:4:\"hash\";s:8:\"av2XFwla\";s:9:\"updatedBy\";i:1;}', '', NULL, NULL, 'Dennis Wanyoike', '2017-12-02 07:55:19', '2017-12-02 07:55:19'),
(173, 87, 'Product Created', 'a:0:{}', 'a:23:{s:11:\"productName\";s:17:\"Security Stickers\";s:13:\"productSerial\";s:9:\"_3NGRZHHC\";s:6:\"amount\";i:49;s:8:\"location\";s:5:\"Store\";s:8:\"unitCost\";i:265;s:12:\"sellingPrice\";i:274;s:13:\"reorderAmount\";i:8;s:10:\"expiryDate\";s:10:\"1972-01-06\";s:9:\"companyId\";i:1;s:20:\"productSpecification\";s:22:\"Vitae quo maxime eius.\";s:15:\"productCurrency\";s:3:\"USD\";s:13:\"productWeight\";i:28;s:14:\"productTaxRate\";i:16;s:19:\"productManufacturer\";s:34:\"Hettinger, Gottlieb and McLaughlin\";s:12:\"categoryName\";s:11:\"Consumables\";s:10:\"categoryId\";i:2;s:19:\"usesMultipleStorage\";b:1;s:22:\"productMeasurementUnit\";s:2:\"KG\";s:7:\"barcode\";s:12:\"894534349472\";s:9:\"createdBy\";i:1;s:10:\"updated_at\";s:19:\"2017-12-02 10:55:23\";s:10:\"created_at\";s:19:\"2017-12-02 10:55:23\";s:2:\"id\";i:87;}', '', NULL, NULL, 'Dennis Wanyoike', '2017-12-02 07:55:23', '2017-12-02 07:55:23'),
(174, 87, 'Product Updated', 'a:0:{}', 'a:25:{s:11:\"productName\";s:17:\"Security Stickers\";s:13:\"productSerial\";s:9:\"_3NGRZHHC\";s:6:\"amount\";i:49;s:8:\"location\";s:5:\"Store\";s:8:\"unitCost\";i:265;s:12:\"sellingPrice\";i:274;s:13:\"reorderAmount\";i:8;s:10:\"expiryDate\";s:10:\"1972-01-06\";s:9:\"companyId\";i:1;s:20:\"productSpecification\";s:22:\"Vitae quo maxime eius.\";s:15:\"productCurrency\";s:3:\"USD\";s:13:\"productWeight\";i:28;s:14:\"productTaxRate\";i:16;s:19:\"productManufacturer\";s:34:\"Hettinger, Gottlieb and McLaughlin\";s:12:\"categoryName\";s:11:\"Consumables\";s:10:\"categoryId\";i:2;s:19:\"usesMultipleStorage\";b:1;s:22:\"productMeasurementUnit\";s:2:\"KG\";s:7:\"barcode\";s:12:\"894534349472\";s:9:\"createdBy\";i:1;s:10:\"updated_at\";s:19:\"2017-12-02 10:55:23\";s:10:\"created_at\";s:19:\"2017-12-02 10:55:23\";s:2:\"id\";i:87;s:4:\"hash\";s:8:\"e31BI60b\";s:9:\"updatedBy\";i:1;}', '', NULL, NULL, 'Dennis Wanyoike', '2017-12-02 07:55:23', '2017-12-02 07:55:23'),
(175, 88, 'Product Created', 'a:0:{}', 'a:23:{s:11:\"productName\";s:10:\"Paper Tray\";s:13:\"productSerial\";s:11:\"ITZMWGYPRNP\";s:6:\"amount\";i:49;s:8:\"location\";s:5:\"Store\";s:8:\"unitCost\";i:239;s:12:\"sellingPrice\";i:257;s:13:\"reorderAmount\";i:12;s:10:\"expiryDate\";s:10:\"2004-08-14\";s:9:\"companyId\";i:1;s:20:\"productSpecification\";s:27:\"Est dolor earum et dolores.\";s:15:\"productCurrency\";s:3:\"USD\";s:13:\"productWeight\";i:64;s:14:\"productTaxRate\";i:16;s:19:\"productManufacturer\";s:9:\"Jerde Ltd\";s:12:\"categoryName\";s:10:\"Cool Stuff\";s:10:\"categoryId\";i:6;s:19:\"usesMultipleStorage\";b:1;s:22:\"productMeasurementUnit\";s:2:\"KG\";s:7:\"barcode\";s:12:\"154088261737\";s:9:\"createdBy\";i:1;s:10:\"updated_at\";s:19:\"2017-12-02 10:55:23\";s:10:\"created_at\";s:19:\"2017-12-02 10:55:23\";s:2:\"id\";i:88;}', '', NULL, NULL, 'Dennis Wanyoike', '2017-12-02 07:55:23', '2017-12-02 07:55:23'),
(176, 88, 'Product Updated', 'a:0:{}', 'a:25:{s:11:\"productName\";s:10:\"Paper Tray\";s:13:\"productSerial\";s:11:\"ITZMWGYPRNP\";s:6:\"amount\";i:49;s:8:\"location\";s:5:\"Store\";s:8:\"unitCost\";i:239;s:12:\"sellingPrice\";i:257;s:13:\"reorderAmount\";i:12;s:10:\"expiryDate\";s:10:\"2004-08-14\";s:9:\"companyId\";i:1;s:20:\"productSpecification\";s:27:\"Est dolor earum et dolores.\";s:15:\"productCurrency\";s:3:\"USD\";s:13:\"productWeight\";i:64;s:14:\"productTaxRate\";i:16;s:19:\"productManufacturer\";s:9:\"Jerde Ltd\";s:12:\"categoryName\";s:10:\"Cool Stuff\";s:10:\"categoryId\";i:6;s:19:\"usesMultipleStorage\";b:1;s:22:\"productMeasurementUnit\";s:2:\"KG\";s:7:\"barcode\";s:12:\"154088261737\";s:9:\"createdBy\";i:1;s:10:\"updated_at\";s:19:\"2017-12-02 10:55:23\";s:10:\"created_at\";s:19:\"2017-12-02 10:55:23\";s:2:\"id\";i:88;s:4:\"hash\";s:8:\"bWnOsYEa\";s:9:\"updatedBy\";i:1;}', '', NULL, NULL, 'Dennis Wanyoike', '2017-12-02 07:55:24', '2017-12-02 07:55:24'),
(177, 89, 'Product Created', 'a:0:{}', 'a:23:{s:11:\"productName\";s:19:\"A5 Laminating Pouch\";s:13:\"productSerial\";s:8:\"J3-Z0TVO\";s:6:\"amount\";i:49;s:8:\"location\";s:5:\"Store\";s:8:\"unitCost\";i:155;s:12:\"sellingPrice\";i:163;s:13:\"reorderAmount\";i:7;s:10:\"expiryDate\";s:10:\"1974-06-09\";s:9:\"companyId\";i:1;s:20:\"productSpecification\";s:77:\"Enim quae quia sint vitae nihil. Eos officiis nihil tenetur et nobis dolorum.\";s:15:\"productCurrency\";s:3:\"USD\";s:13:\"productWeight\";i:90;s:14:\"productTaxRate\";i:16;s:19:\"productManufacturer\";s:22:\"Boyer, Blick and Bosco\";s:12:\"categoryName\";s:11:\"Consumables\";s:10:\"categoryId\";i:2;s:19:\"usesMultipleStorage\";b:0;s:22:\"productMeasurementUnit\";s:2:\"KG\";s:7:\"barcode\";s:12:\"982368821339\";s:9:\"createdBy\";i:1;s:10:\"updated_at\";s:19:\"2017-12-02 10:55:25\";s:10:\"created_at\";s:19:\"2017-12-02 10:55:25\";s:2:\"id\";i:89;}', '', NULL, NULL, 'Dennis Wanyoike', '2017-12-02 07:55:25', '2017-12-02 07:55:25'),
(178, 89, 'Product Updated', 'a:0:{}', 'a:25:{s:11:\"productName\";s:19:\"A5 Laminating Pouch\";s:13:\"productSerial\";s:8:\"J3-Z0TVO\";s:6:\"amount\";i:49;s:8:\"location\";s:5:\"Store\";s:8:\"unitCost\";i:155;s:12:\"sellingPrice\";i:163;s:13:\"reorderAmount\";i:7;s:10:\"expiryDate\";s:10:\"1974-06-09\";s:9:\"companyId\";i:1;s:20:\"productSpecification\";s:77:\"Enim quae quia sint vitae nihil. Eos officiis nihil tenetur et nobis dolorum.\";s:15:\"productCurrency\";s:3:\"USD\";s:13:\"productWeight\";i:90;s:14:\"productTaxRate\";i:16;s:19:\"productManufacturer\";s:22:\"Boyer, Blick and Bosco\";s:12:\"categoryName\";s:11:\"Consumables\";s:10:\"categoryId\";i:2;s:19:\"usesMultipleStorage\";b:0;s:22:\"productMeasurementUnit\";s:2:\"KG\";s:7:\"barcode\";s:12:\"982368821339\";s:9:\"createdBy\";i:1;s:10:\"updated_at\";s:19:\"2017-12-02 10:55:25\";s:10:\"created_at\";s:19:\"2017-12-02 10:55:25\";s:2:\"id\";i:89;s:4:\"hash\";s:8:\"dwjptX3b\";s:9:\"updatedBy\";i:1;}', '', NULL, NULL, 'Dennis Wanyoike', '2017-12-02 07:55:25', '2017-12-02 07:55:25'),
(179, 90, 'Product Created', 'a:0:{}', 'a:23:{s:11:\"productName\";s:19:\"A4 Laminating pouch\";s:13:\"productSerial\";s:5:\"WIZOY\";s:6:\"amount\";i:49;s:8:\"location\";s:5:\"Store\";s:8:\"unitCost\";i:180;s:12:\"sellingPrice\";i:196;s:13:\"reorderAmount\";i:6;s:10:\"expiryDate\";s:10:\"1986-10-25\";s:9:\"companyId\";i:1;s:20:\"productSpecification\";s:100:\"Quia deserunt perferendis ut voluptatem. Voluptatem qui pariatur mollitia accusantium similique vel.\";s:15:\"productCurrency\";s:3:\"USD\";s:13:\"productWeight\";i:15;s:14:\"productTaxRate\";i:16;s:19:\"productManufacturer\";s:23:\"Murray, Lang and Marvin\";s:12:\"categoryName\";s:10:\"Vegetables\";s:10:\"categoryId\";i:5;s:19:\"usesMultipleStorage\";b:1;s:22:\"productMeasurementUnit\";s:2:\"KG\";s:7:\"barcode\";s:12:\"443953558288\";s:9:\"createdBy\";i:1;s:10:\"updated_at\";s:19:\"2017-12-02 10:55:26\";s:10:\"created_at\";s:19:\"2017-12-02 10:55:26\";s:2:\"id\";i:90;}', '', NULL, NULL, 'Dennis Wanyoike', '2017-12-02 07:55:26', '2017-12-02 07:55:26'),
(180, 90, 'Product Updated', 'a:0:{}', 'a:25:{s:11:\"productName\";s:19:\"A4 Laminating pouch\";s:13:\"productSerial\";s:5:\"WIZOY\";s:6:\"amount\";i:49;s:8:\"location\";s:5:\"Store\";s:8:\"unitCost\";i:180;s:12:\"sellingPrice\";i:196;s:13:\"reorderAmount\";i:6;s:10:\"expiryDate\";s:10:\"1986-10-25\";s:9:\"companyId\";i:1;s:20:\"productSpecification\";s:100:\"Quia deserunt perferendis ut voluptatem. Voluptatem qui pariatur mollitia accusantium similique vel.\";s:15:\"productCurrency\";s:3:\"USD\";s:13:\"productWeight\";i:15;s:14:\"productTaxRate\";i:16;s:19:\"productManufacturer\";s:23:\"Murray, Lang and Marvin\";s:12:\"categoryName\";s:10:\"Vegetables\";s:10:\"categoryId\";i:5;s:19:\"usesMultipleStorage\";b:1;s:22:\"productMeasurementUnit\";s:2:\"KG\";s:7:\"barcode\";s:12:\"443953558288\";s:9:\"createdBy\";i:1;s:10:\"updated_at\";s:19:\"2017-12-02 10:55:26\";s:10:\"created_at\";s:19:\"2017-12-02 10:55:26\";s:2:\"id\";i:90;s:4:\"hash\";s:8:\"dy88u0Lb\";s:9:\"updatedBy\";i:1;}', '', NULL, NULL, 'Dennis Wanyoike', '2017-12-02 07:55:26', '2017-12-02 07:55:26'),
(181, 91, 'Product Created', 'a:0:{}', 'a:23:{s:11:\"productName\";s:19:\"A3 Laminating Pouch\";s:13:\"productSerial\";s:6:\"H3JKHH\";s:6:\"amount\";i:49;s:8:\"location\";s:5:\"Store\";s:8:\"unitCost\";i:110;s:12:\"sellingPrice\";i:128;s:13:\"reorderAmount\";i:15;s:10:\"expiryDate\";s:10:\"2013-02-09\";s:9:\"companyId\";i:1;s:20:\"productSpecification\";s:38:\"Amet adipisci dolor eum quis ab rerum.\";s:15:\"productCurrency\";s:3:\"USD\";s:13:\"productWeight\";i:64;s:14:\"productTaxRate\";i:16;s:19:\"productManufacturer\";s:13:\"Hessel-Miller\";s:12:\"categoryName\";s:5:\"Foods\";s:10:\"categoryId\";i:4;s:19:\"usesMultipleStorage\";b:0;s:22:\"productMeasurementUnit\";s:2:\"KG\";s:7:\"barcode\";s:12:\"772936454577\";s:9:\"createdBy\";i:1;s:10:\"updated_at\";s:19:\"2017-12-02 10:55:27\";s:10:\"created_at\";s:19:\"2017-12-02 10:55:27\";s:2:\"id\";i:91;}', '', NULL, NULL, 'Dennis Wanyoike', '2017-12-02 07:55:27', '2017-12-02 07:55:27'),
(182, 91, 'Product Updated', 'a:0:{}', 'a:25:{s:11:\"productName\";s:19:\"A3 Laminating Pouch\";s:13:\"productSerial\";s:6:\"H3JKHH\";s:6:\"amount\";i:49;s:8:\"location\";s:5:\"Store\";s:8:\"unitCost\";i:110;s:12:\"sellingPrice\";i:128;s:13:\"reorderAmount\";i:15;s:10:\"expiryDate\";s:10:\"2013-02-09\";s:9:\"companyId\";i:1;s:20:\"productSpecification\";s:38:\"Amet adipisci dolor eum quis ab rerum.\";s:15:\"productCurrency\";s:3:\"USD\";s:13:\"productWeight\";i:64;s:14:\"productTaxRate\";i:16;s:19:\"productManufacturer\";s:13:\"Hessel-Miller\";s:12:\"categoryName\";s:5:\"Foods\";s:10:\"categoryId\";i:4;s:19:\"usesMultipleStorage\";b:0;s:22:\"productMeasurementUnit\";s:2:\"KG\";s:7:\"barcode\";s:12:\"772936454577\";s:9:\"createdBy\";i:1;s:10:\"updated_at\";s:19:\"2017-12-02 10:55:27\";s:10:\"created_at\";s:19:\"2017-12-02 10:55:27\";s:2:\"id\";i:91;s:4:\"hash\";s:8:\"dJZqfo4d\";s:9:\"updatedBy\";i:1;}', '', NULL, NULL, 'Dennis Wanyoike', '2017-12-02 07:55:27', '2017-12-02 07:55:27'),
(183, 92, 'Product Created', 'a:0:{}', 'a:23:{s:11:\"productName\";s:13:\"GIANT Stapler\";s:13:\"productSerial\";s:11:\"OMPS7EQ9CPB\";s:6:\"amount\";i:49;s:8:\"location\";s:5:\"Store\";s:8:\"unitCost\";i:223;s:12:\"sellingPrice\";i:237;s:13:\"reorderAmount\";i:13;s:10:\"expiryDate\";s:10:\"1985-03-11\";s:9:\"companyId\";i:1;s:20:\"productSpecification\";s:64:\"Earum incidunt qui perspiciatis animi reprehenderit praesentium.\";s:15:\"productCurrency\";s:3:\"USD\";s:13:\"productWeight\";i:33;s:14:\"productTaxRate\";i:16;s:19:\"productManufacturer\";s:31:\"Waelchi, Schulist and Halvorson\";s:12:\"categoryName\";s:10:\"Cool Stuff\";s:10:\"categoryId\";i:6;s:19:\"usesMultipleStorage\";b:1;s:22:\"productMeasurementUnit\";s:2:\"KG\";s:7:\"barcode\";s:12:\"667130231102\";s:9:\"createdBy\";i:1;s:10:\"updated_at\";s:19:\"2017-12-02 10:55:28\";s:10:\"created_at\";s:19:\"2017-12-02 10:55:28\";s:2:\"id\";i:92;}', '', NULL, NULL, 'Dennis Wanyoike', '2017-12-02 07:55:28', '2017-12-02 07:55:28'),
(184, 92, 'Product Updated', 'a:0:{}', 'a:25:{s:11:\"productName\";s:13:\"GIANT Stapler\";s:13:\"productSerial\";s:11:\"OMPS7EQ9CPB\";s:6:\"amount\";i:49;s:8:\"location\";s:5:\"Store\";s:8:\"unitCost\";i:223;s:12:\"sellingPrice\";i:237;s:13:\"reorderAmount\";i:13;s:10:\"expiryDate\";s:10:\"1985-03-11\";s:9:\"companyId\";i:1;s:20:\"productSpecification\";s:64:\"Earum incidunt qui perspiciatis animi reprehenderit praesentium.\";s:15:\"productCurrency\";s:3:\"USD\";s:13:\"productWeight\";i:33;s:14:\"productTaxRate\";i:16;s:19:\"productManufacturer\";s:31:\"Waelchi, Schulist and Halvorson\";s:12:\"categoryName\";s:10:\"Cool Stuff\";s:10:\"categoryId\";i:6;s:19:\"usesMultipleStorage\";b:1;s:22:\"productMeasurementUnit\";s:2:\"KG\";s:7:\"barcode\";s:12:\"667130231102\";s:9:\"createdBy\";i:1;s:10:\"updated_at\";s:19:\"2017-12-02 10:55:28\";s:10:\"created_at\";s:19:\"2017-12-02 10:55:28\";s:2:\"id\";i:92;s:4:\"hash\";s:8:\"dGZvhGYb\";s:9:\"updatedBy\";i:1;}', '', NULL, NULL, 'Dennis Wanyoike', '2017-12-02 07:55:28', '2017-12-02 07:55:28'),
(185, 93, 'Product Created', 'a:0:{}', 'a:23:{s:11:\"productName\";s:17:\"GIANT Paper Punch\";s:13:\"productSerial\";s:6:\"KH79KR\";s:6:\"amount\";i:49;s:8:\"location\";s:5:\"Store\";s:8:\"unitCost\";i:224;s:12:\"sellingPrice\";i:233;s:13:\"reorderAmount\";i:14;s:10:\"expiryDate\";s:10:\"2012-02-24\";s:9:\"companyId\";i:1;s:20:\"productSpecification\";s:106:\"Praesentium libero eveniet repellat corporis beatae in aut. Eligendi quidem maxime dolor eaque doloremque.\";s:15:\"productCurrency\";s:3:\"USD\";s:13:\"productWeight\";i:89;s:14:\"productTaxRate\";i:16;s:19:\"productManufacturer\";s:12:\"McKenzie LLC\";s:12:\"categoryName\";s:11:\"Electronics\";s:10:\"categoryId\";i:3;s:19:\"usesMultipleStorage\";b:0;s:22:\"productMeasurementUnit\";s:2:\"KG\";s:7:\"barcode\";s:12:\"824789802682\";s:9:\"createdBy\";i:1;s:10:\"updated_at\";s:19:\"2017-12-02 10:55:31\";s:10:\"created_at\";s:19:\"2017-12-02 10:55:31\";s:2:\"id\";i:93;}', '', NULL, NULL, 'Dennis Wanyoike', '2017-12-02 07:55:31', '2017-12-02 07:55:31'),
(186, 93, 'Product Updated', 'a:0:{}', 'a:25:{s:11:\"productName\";s:17:\"GIANT Paper Punch\";s:13:\"productSerial\";s:6:\"KH79KR\";s:6:\"amount\";i:49;s:8:\"location\";s:5:\"Store\";s:8:\"unitCost\";i:224;s:12:\"sellingPrice\";i:233;s:13:\"reorderAmount\";i:14;s:10:\"expiryDate\";s:10:\"2012-02-24\";s:9:\"companyId\";i:1;s:20:\"productSpecification\";s:106:\"Praesentium libero eveniet repellat corporis beatae in aut. Eligendi quidem maxime dolor eaque doloremque.\";s:15:\"productCurrency\";s:3:\"USD\";s:13:\"productWeight\";i:89;s:14:\"productTaxRate\";i:16;s:19:\"productManufacturer\";s:12:\"McKenzie LLC\";s:12:\"categoryName\";s:11:\"Electronics\";s:10:\"categoryId\";i:3;s:19:\"usesMultipleStorage\";b:0;s:22:\"productMeasurementUnit\";s:2:\"KG\";s:7:\"barcode\";s:12:\"824789802682\";s:9:\"createdBy\";i:1;s:10:\"updated_at\";s:19:\"2017-12-02 10:55:31\";s:10:\"created_at\";s:19:\"2017-12-02 10:55:31\";s:2:\"id\";i:93;s:4:\"hash\";s:8:\"dP1jhKrv\";s:9:\"updatedBy\";i:1;}', '', NULL, NULL, 'Dennis Wanyoike', '2017-12-02 07:55:31', '2017-12-02 07:55:31'),
(187, 94, 'Product Created', 'a:0:{}', 'a:23:{s:11:\"productName\";s:8:\"Scissors\";s:13:\"productSerial\";s:4:\"Q5PZ\";s:6:\"amount\";i:49;s:8:\"location\";s:5:\"Store\";s:8:\"unitCost\";i:125;s:12:\"sellingPrice\";i:135;s:13:\"reorderAmount\";i:1;s:10:\"expiryDate\";s:10:\"1991-10-30\";s:9:\"companyId\";i:1;s:20:\"productSpecification\";s:84:\"Rerum aliquid ut culpa ipsam. Repellat qui pariatur quos similique distinctio fugit.\";s:15:\"productCurrency\";s:3:\"USD\";s:13:\"productWeight\";i:25;s:14:\"productTaxRate\";i:16;s:19:\"productManufacturer\";s:13:\"Lind and Sons\";s:12:\"categoryName\";s:10:\"Vegetables\";s:10:\"categoryId\";i:5;s:19:\"usesMultipleStorage\";b:0;s:22:\"productMeasurementUnit\";s:2:\"KG\";s:7:\"barcode\";s:12:\"619937486667\";s:9:\"createdBy\";i:1;s:10:\"updated_at\";s:19:\"2017-12-02 10:55:31\";s:10:\"created_at\";s:19:\"2017-12-02 10:55:31\";s:2:\"id\";i:94;}', '', NULL, NULL, 'Dennis Wanyoike', '2017-12-02 07:55:31', '2017-12-02 07:55:31'),
(188, 94, 'Product Updated', 'a:0:{}', 'a:25:{s:11:\"productName\";s:8:\"Scissors\";s:13:\"productSerial\";s:4:\"Q5PZ\";s:6:\"amount\";i:49;s:8:\"location\";s:5:\"Store\";s:8:\"unitCost\";i:125;s:12:\"sellingPrice\";i:135;s:13:\"reorderAmount\";i:1;s:10:\"expiryDate\";s:10:\"1991-10-30\";s:9:\"companyId\";i:1;s:20:\"productSpecification\";s:84:\"Rerum aliquid ut culpa ipsam. Repellat qui pariatur quos similique distinctio fugit.\";s:15:\"productCurrency\";s:3:\"USD\";s:13:\"productWeight\";i:25;s:14:\"productTaxRate\";i:16;s:19:\"productManufacturer\";s:13:\"Lind and Sons\";s:12:\"categoryName\";s:10:\"Vegetables\";s:10:\"categoryId\";i:5;s:19:\"usesMultipleStorage\";b:0;s:22:\"productMeasurementUnit\";s:2:\"KG\";s:7:\"barcode\";s:12:\"619937486667\";s:9:\"createdBy\";i:1;s:10:\"updated_at\";s:19:\"2017-12-02 10:55:31\";s:10:\"created_at\";s:19:\"2017-12-02 10:55:31\";s:2:\"id\";i:94;s:4:\"hash\";s:8:\"dGZMs2Vb\";s:9:\"updatedBy\";i:1;}', '', NULL, NULL, 'Dennis Wanyoike', '2017-12-02 07:55:31', '2017-12-02 07:55:31'),
(189, 95, 'Product Created', 'a:0:{}', 'a:23:{s:11:\"productName\";s:11:\"Pen Holders\";s:13:\"productSerial\";s:6:\"LGNJEE\";s:6:\"amount\";i:49;s:8:\"location\";s:5:\"Store\";s:8:\"unitCost\";i:153;s:12:\"sellingPrice\";i:164;s:13:\"reorderAmount\";i:2;s:10:\"expiryDate\";s:10:\"1985-06-21\";s:9:\"companyId\";i:1;s:20:\"productSpecification\";s:36:\"Nesciunt voluptatem rem dignissimos.\";s:15:\"productCurrency\";s:3:\"USD\";s:13:\"productWeight\";i:46;s:14:\"productTaxRate\";i:16;s:19:\"productManufacturer\";s:27:\"Mante, Treutel and Donnelly\";s:12:\"categoryName\";s:11:\"Electronics\";s:10:\"categoryId\";i:3;s:19:\"usesMultipleStorage\";b:1;s:22:\"productMeasurementUnit\";s:2:\"KG\";s:7:\"barcode\";s:12:\"972883254293\";s:9:\"createdBy\";i:1;s:10:\"updated_at\";s:19:\"2017-12-02 10:55:32\";s:10:\"created_at\";s:19:\"2017-12-02 10:55:32\";s:2:\"id\";i:95;}', '', NULL, NULL, 'Dennis Wanyoike', '2017-12-02 07:55:32', '2017-12-02 07:55:32'),
(190, 95, 'Product Updated', 'a:0:{}', 'a:25:{s:11:\"productName\";s:11:\"Pen Holders\";s:13:\"productSerial\";s:6:\"LGNJEE\";s:6:\"amount\";i:49;s:8:\"location\";s:5:\"Store\";s:8:\"unitCost\";i:153;s:12:\"sellingPrice\";i:164;s:13:\"reorderAmount\";i:2;s:10:\"expiryDate\";s:10:\"1985-06-21\";s:9:\"companyId\";i:1;s:20:\"productSpecification\";s:36:\"Nesciunt voluptatem rem dignissimos.\";s:15:\"productCurrency\";s:3:\"USD\";s:13:\"productWeight\";i:46;s:14:\"productTaxRate\";i:16;s:19:\"productManufacturer\";s:27:\"Mante, Treutel and Donnelly\";s:12:\"categoryName\";s:11:\"Electronics\";s:10:\"categoryId\";i:3;s:19:\"usesMultipleStorage\";b:1;s:22:\"productMeasurementUnit\";s:2:\"KG\";s:7:\"barcode\";s:12:\"972883254293\";s:9:\"createdBy\";i:1;s:10:\"updated_at\";s:19:\"2017-12-02 10:55:32\";s:10:\"created_at\";s:19:\"2017-12-02 10:55:32\";s:2:\"id\";i:95;s:4:\"hash\";s:8:\"eElxS1jd\";s:9:\"updatedBy\";i:1;}', '', NULL, NULL, 'Dennis Wanyoike', '2017-12-02 07:55:32', '2017-12-02 07:55:32'),
(191, 96, 'Product Created', 'a:0:{}', 'a:23:{s:11:\"productName\";s:27:\"A5 Hard Cover Exercise Book\";s:13:\"productSerial\";s:12:\"TSTZI0WYBJNM\";s:6:\"amount\";i:49;s:8:\"location\";s:5:\"Store\";s:8:\"unitCost\";i:300;s:12:\"sellingPrice\";i:313;s:13:\"reorderAmount\";i:10;s:10:\"expiryDate\";s:10:\"2010-10-19\";s:9:\"companyId\";i:1;s:20:\"productSpecification\";s:41:\"Ipsum sit est nesciunt placeat qui optio.\";s:15:\"productCurrency\";s:3:\"USD\";s:13:\"productWeight\";i:64;s:14:\"productTaxRate\";i:16;s:19:\"productManufacturer\";s:24:\"Bosco, Hagenes and Block\";s:12:\"categoryName\";s:5:\"Foods\";s:10:\"categoryId\";i:4;s:19:\"usesMultipleStorage\";b:0;s:22:\"productMeasurementUnit\";s:2:\"KG\";s:7:\"barcode\";s:12:\"572918503008\";s:9:\"createdBy\";i:1;s:10:\"updated_at\";s:19:\"2017-12-02 10:55:33\";s:10:\"created_at\";s:19:\"2017-12-02 10:55:33\";s:2:\"id\";i:96;}', '', NULL, NULL, 'Dennis Wanyoike', '2017-12-02 07:55:33', '2017-12-02 07:55:33'),
(192, 96, 'Product Updated', 'a:0:{}', 'a:25:{s:11:\"productName\";s:27:\"A5 Hard Cover Exercise Book\";s:13:\"productSerial\";s:12:\"TSTZI0WYBJNM\";s:6:\"amount\";i:49;s:8:\"location\";s:5:\"Store\";s:8:\"unitCost\";i:300;s:12:\"sellingPrice\";i:313;s:13:\"reorderAmount\";i:10;s:10:\"expiryDate\";s:10:\"2010-10-19\";s:9:\"companyId\";i:1;s:20:\"productSpecification\";s:41:\"Ipsum sit est nesciunt placeat qui optio.\";s:15:\"productCurrency\";s:3:\"USD\";s:13:\"productWeight\";i:64;s:14:\"productTaxRate\";i:16;s:19:\"productManufacturer\";s:24:\"Bosco, Hagenes and Block\";s:12:\"categoryName\";s:5:\"Foods\";s:10:\"categoryId\";i:4;s:19:\"usesMultipleStorage\";b:0;s:22:\"productMeasurementUnit\";s:2:\"KG\";s:7:\"barcode\";s:12:\"572918503008\";s:9:\"createdBy\";i:1;s:10:\"updated_at\";s:19:\"2017-12-02 10:55:33\";s:10:\"created_at\";s:19:\"2017-12-02 10:55:33\";s:2:\"id\";i:96;s:4:\"hash\";s:8:\"dBgnTxKe\";s:9:\"updatedBy\";i:1;}', '', NULL, NULL, 'Dennis Wanyoike', '2017-12-02 07:55:33', '2017-12-02 07:55:33'),
(193, 97, 'Product Created', 'a:0:{}', 'a:23:{s:11:\"productName\";s:19:\"Multi punch pockets\";s:13:\"productSerial\";s:17:\"N%BF02RVVUNXDPYBV\";s:6:\"amount\";i:49;s:8:\"location\";s:5:\"Store\";s:8:\"unitCost\";i:218;s:12:\"sellingPrice\";i:237;s:13:\"reorderAmount\";i:10;s:10:\"expiryDate\";s:10:\"1984-12-22\";s:9:\"companyId\";i:1;s:20:\"productSpecification\";s:88:\"Enim quo neque veritatis quia voluptatibus accusantium. Expedita velit iure esse quidem.\";s:15:\"productCurrency\";s:3:\"USD\";s:13:\"productWeight\";i:79;s:14:\"productTaxRate\";i:16;s:19:\"productManufacturer\";s:23:\"Kihn, Douglas and Ebert\";s:12:\"categoryName\";s:10:\"Vegetables\";s:10:\"categoryId\";i:5;s:19:\"usesMultipleStorage\";b:0;s:22:\"productMeasurementUnit\";s:2:\"KG\";s:7:\"barcode\";s:12:\"217771276163\";s:9:\"createdBy\";i:1;s:10:\"updated_at\";s:19:\"2017-12-02 10:55:33\";s:10:\"created_at\";s:19:\"2017-12-02 10:55:33\";s:2:\"id\";i:97;}', '', NULL, NULL, 'Dennis Wanyoike', '2017-12-02 07:55:33', '2017-12-02 07:55:33'),
(194, 97, 'Product Updated', 'a:0:{}', 'a:25:{s:11:\"productName\";s:19:\"Multi punch pockets\";s:13:\"productSerial\";s:17:\"N%BF02RVVUNXDPYBV\";s:6:\"amount\";i:49;s:8:\"location\";s:5:\"Store\";s:8:\"unitCost\";i:218;s:12:\"sellingPrice\";i:237;s:13:\"reorderAmount\";i:10;s:10:\"expiryDate\";s:10:\"1984-12-22\";s:9:\"companyId\";i:1;s:20:\"productSpecification\";s:88:\"Enim quo neque veritatis quia voluptatibus accusantium. Expedita velit iure esse quidem.\";s:15:\"productCurrency\";s:3:\"USD\";s:13:\"productWeight\";i:79;s:14:\"productTaxRate\";i:16;s:19:\"productManufacturer\";s:23:\"Kihn, Douglas and Ebert\";s:12:\"categoryName\";s:10:\"Vegetables\";s:10:\"categoryId\";i:5;s:19:\"usesMultipleStorage\";b:0;s:22:\"productMeasurementUnit\";s:2:\"KG\";s:7:\"barcode\";s:12:\"217771276163\";s:9:\"createdBy\";i:1;s:10:\"updated_at\";s:19:\"2017-12-02 10:55:33\";s:10:\"created_at\";s:19:\"2017-12-02 10:55:33\";s:2:\"id\";i:97;s:4:\"hash\";s:8:\"e1jYUJ4a\";s:9:\"updatedBy\";i:1;}', '', NULL, NULL, 'Dennis Wanyoike', '2017-12-02 07:55:33', '2017-12-02 07:55:33'),
(195, 98, 'Product Created', 'a:0:{}', 'a:23:{s:11:\"productName\";s:13:\"File Dividers\";s:13:\"productSerial\";s:18:\"KIVE20I5QYLD1NJFFV\";s:6:\"amount\";i:49;s:8:\"location\";s:5:\"Store\";s:8:\"unitCost\";i:210;s:12:\"sellingPrice\";i:224;s:13:\"reorderAmount\";i:9;s:10:\"expiryDate\";s:10:\"1998-09-13\";s:9:\"companyId\";i:1;s:20:\"productSpecification\";s:88:\"Eaque qui animi exercitationem et dolorem. Repudiandae dolores voluptatem quasi commodi.\";s:15:\"productCurrency\";s:3:\"USD\";s:13:\"productWeight\";i:7;s:14:\"productTaxRate\";i:16;s:19:\"productManufacturer\";s:33:\"Strosin, Cormier and Pfannerstill\";s:12:\"categoryName\";s:10:\"Stationery\";s:10:\"categoryId\";i:1;s:19:\"usesMultipleStorage\";b:1;s:22:\"productMeasurementUnit\";s:2:\"KG\";s:7:\"barcode\";s:12:\"505760092321\";s:9:\"createdBy\";i:1;s:10:\"updated_at\";s:19:\"2017-12-02 10:55:34\";s:10:\"created_at\";s:19:\"2017-12-02 10:55:34\";s:2:\"id\";i:98;}', '', NULL, NULL, 'Dennis Wanyoike', '2017-12-02 07:55:34', '2017-12-02 07:55:34'),
(196, 98, 'Product Updated', 'a:0:{}', 'a:25:{s:11:\"productName\";s:13:\"File Dividers\";s:13:\"productSerial\";s:18:\"KIVE20I5QYLD1NJFFV\";s:6:\"amount\";i:49;s:8:\"location\";s:5:\"Store\";s:8:\"unitCost\";i:210;s:12:\"sellingPrice\";i:224;s:13:\"reorderAmount\";i:9;s:10:\"expiryDate\";s:10:\"1998-09-13\";s:9:\"companyId\";i:1;s:20:\"productSpecification\";s:88:\"Eaque qui animi exercitationem et dolorem. Repudiandae dolores voluptatem quasi commodi.\";s:15:\"productCurrency\";s:3:\"USD\";s:13:\"productWeight\";i:7;s:14:\"productTaxRate\";i:16;s:19:\"productManufacturer\";s:33:\"Strosin, Cormier and Pfannerstill\";s:12:\"categoryName\";s:10:\"Stationery\";s:10:\"categoryId\";i:1;s:19:\"usesMultipleStorage\";b:1;s:22:\"productMeasurementUnit\";s:2:\"KG\";s:7:\"barcode\";s:12:\"505760092321\";s:9:\"createdBy\";i:1;s:10:\"updated_at\";s:19:\"2017-12-02 10:55:34\";s:10:\"created_at\";s:19:\"2017-12-02 10:55:34\";s:2:\"id\";i:98;s:4:\"hash\";s:8:\"bDRwhZOe\";s:9:\"updatedBy\";i:1;}', '', NULL, NULL, 'Dennis Wanyoike', '2017-12-02 07:55:34', '2017-12-02 07:55:34');
INSERT INTO `stock_audits` (`id`, `productId`, `stockOperation`, `oldValues`, `newValues`, `narration`, `oldQuantity`, `newQuantity`, `username`, `created_at`, `updated_at`) VALUES
(197, 99, 'Product Created', 'a:0:{}', 'a:23:{s:11:\"productName\";s:17:\"Ledger book A4 4Q\";s:13:\"productSerial\";s:11:\"E2I4F34WNLQ\";s:6:\"amount\";i:49;s:8:\"location\";s:5:\"Store\";s:8:\"unitCost\";i:195;s:12:\"sellingPrice\";i:206;s:13:\"reorderAmount\";i:9;s:10:\"expiryDate\";s:10:\"1973-01-20\";s:9:\"companyId\";i:1;s:20:\"productSpecification\";s:37:\"Cupiditate possimus suscipit nam non.\";s:15:\"productCurrency\";s:3:\"USD\";s:13:\"productWeight\";i:27;s:14:\"productTaxRate\";i:16;s:19:\"productManufacturer\";s:26:\"Jerde, Lemke and Daugherty\";s:12:\"categoryName\";s:11:\"Electronics\";s:10:\"categoryId\";i:3;s:19:\"usesMultipleStorage\";b:0;s:22:\"productMeasurementUnit\";s:2:\"KG\";s:7:\"barcode\";s:12:\"876818078711\";s:9:\"createdBy\";i:1;s:10:\"updated_at\";s:19:\"2017-12-02 10:55:35\";s:10:\"created_at\";s:19:\"2017-12-02 10:55:35\";s:2:\"id\";i:99;}', '', NULL, NULL, 'Dennis Wanyoike', '2017-12-02 07:55:35', '2017-12-02 07:55:35'),
(198, 99, 'Product Updated', 'a:0:{}', 'a:25:{s:11:\"productName\";s:17:\"Ledger book A4 4Q\";s:13:\"productSerial\";s:11:\"E2I4F34WNLQ\";s:6:\"amount\";i:49;s:8:\"location\";s:5:\"Store\";s:8:\"unitCost\";i:195;s:12:\"sellingPrice\";i:206;s:13:\"reorderAmount\";i:9;s:10:\"expiryDate\";s:10:\"1973-01-20\";s:9:\"companyId\";i:1;s:20:\"productSpecification\";s:37:\"Cupiditate possimus suscipit nam non.\";s:15:\"productCurrency\";s:3:\"USD\";s:13:\"productWeight\";i:27;s:14:\"productTaxRate\";i:16;s:19:\"productManufacturer\";s:26:\"Jerde, Lemke and Daugherty\";s:12:\"categoryName\";s:11:\"Electronics\";s:10:\"categoryId\";i:3;s:19:\"usesMultipleStorage\";b:0;s:22:\"productMeasurementUnit\";s:2:\"KG\";s:7:\"barcode\";s:12:\"876818078711\";s:9:\"createdBy\";i:1;s:10:\"updated_at\";s:19:\"2017-12-02 10:55:35\";s:10:\"created_at\";s:19:\"2017-12-02 10:55:35\";s:2:\"id\";i:99;s:4:\"hash\";s:8:\"dJZ7HpVd\";s:9:\"updatedBy\";i:1;}', '', NULL, NULL, 'Dennis Wanyoike', '2017-12-02 07:55:35', '2017-12-02 07:55:35'),
(199, 100, 'Product Created', 'a:0:{}', 'a:23:{s:11:\"productName\";s:17:\"Ledger book A4 2Q\";s:13:\"productSerial\";s:16:\"%KLW3T9HEXATOYXT\";s:6:\"amount\";i:49;s:8:\"location\";s:5:\"Store\";s:8:\"unitCost\";i:136;s:12:\"sellingPrice\";i:155;s:13:\"reorderAmount\";i:1;s:10:\"expiryDate\";s:10:\"1979-08-04\";s:9:\"companyId\";i:1;s:20:\"productSpecification\";s:41:\"Incidunt quo expedita repellat totam qui.\";s:15:\"productCurrency\";s:3:\"USD\";s:13:\"productWeight\";i:12;s:14:\"productTaxRate\";i:16;s:19:\"productManufacturer\";s:29:\"Krajcik, Bogisich and Dickens\";s:12:\"categoryName\";s:10:\"Stationery\";s:10:\"categoryId\";i:1;s:19:\"usesMultipleStorage\";b:1;s:22:\"productMeasurementUnit\";s:2:\"KG\";s:7:\"barcode\";s:12:\"252162179173\";s:9:\"createdBy\";i:1;s:10:\"updated_at\";s:19:\"2017-12-02 10:55:35\";s:10:\"created_at\";s:19:\"2017-12-02 10:55:35\";s:2:\"id\";i:100;}', '', NULL, NULL, 'Dennis Wanyoike', '2017-12-02 07:55:35', '2017-12-02 07:55:35'),
(200, 100, 'Product Updated', 'a:0:{}', 'a:25:{s:11:\"productName\";s:17:\"Ledger book A4 2Q\";s:13:\"productSerial\";s:16:\"%KLW3T9HEXATOYXT\";s:6:\"amount\";i:49;s:8:\"location\";s:5:\"Store\";s:8:\"unitCost\";i:136;s:12:\"sellingPrice\";i:155;s:13:\"reorderAmount\";i:1;s:10:\"expiryDate\";s:10:\"1979-08-04\";s:9:\"companyId\";i:1;s:20:\"productSpecification\";s:41:\"Incidunt quo expedita repellat totam qui.\";s:15:\"productCurrency\";s:3:\"USD\";s:13:\"productWeight\";i:12;s:14:\"productTaxRate\";i:16;s:19:\"productManufacturer\";s:29:\"Krajcik, Bogisich and Dickens\";s:12:\"categoryName\";s:10:\"Stationery\";s:10:\"categoryId\";i:1;s:19:\"usesMultipleStorage\";b:1;s:22:\"productMeasurementUnit\";s:2:\"KG\";s:7:\"barcode\";s:12:\"252162179173\";s:9:\"createdBy\";i:1;s:10:\"updated_at\";s:19:\"2017-12-02 10:55:35\";s:10:\"created_at\";s:19:\"2017-12-02 10:55:35\";s:2:\"id\";i:100;s:4:\"hash\";s:8:\"eZ4puj9b\";s:9:\"updatedBy\";i:1;}', '', NULL, NULL, 'Dennis Wanyoike', '2017-12-02 07:55:36', '2017-12-02 07:55:36'),
(201, 101, 'Product Created', 'a:0:{}', 'a:23:{s:11:\"productName\";s:17:\"Ledger book A4 1Q\";s:13:\"productSerial\";s:7:\"%1NJULN\";s:6:\"amount\";i:49;s:8:\"location\";s:5:\"Store\";s:8:\"unitCost\";i:208;s:12:\"sellingPrice\";i:214;s:13:\"reorderAmount\";i:1;s:10:\"expiryDate\";s:10:\"2012-06-23\";s:9:\"companyId\";i:1;s:20:\"productSpecification\";s:44:\"Consectetur ullam voluptatibus voluptas non.\";s:15:\"productCurrency\";s:3:\"USD\";s:13:\"productWeight\";i:93;s:14:\"productTaxRate\";i:16;s:19:\"productManufacturer\";s:30:\"Klocko, Pouros and Stoltenberg\";s:12:\"categoryName\";s:10:\"Stationery\";s:10:\"categoryId\";i:1;s:19:\"usesMultipleStorage\";b:1;s:22:\"productMeasurementUnit\";s:2:\"KG\";s:7:\"barcode\";s:12:\"562800565641\";s:9:\"createdBy\";i:1;s:10:\"updated_at\";s:19:\"2017-12-02 10:55:37\";s:10:\"created_at\";s:19:\"2017-12-02 10:55:37\";s:2:\"id\";i:101;}', '', NULL, NULL, 'Dennis Wanyoike', '2017-12-02 07:55:37', '2017-12-02 07:55:37'),
(202, 101, 'Product Updated', 'a:0:{}', 'a:25:{s:11:\"productName\";s:17:\"Ledger book A4 1Q\";s:13:\"productSerial\";s:7:\"%1NJULN\";s:6:\"amount\";i:49;s:8:\"location\";s:5:\"Store\";s:8:\"unitCost\";i:208;s:12:\"sellingPrice\";i:214;s:13:\"reorderAmount\";i:1;s:10:\"expiryDate\";s:10:\"2012-06-23\";s:9:\"companyId\";i:1;s:20:\"productSpecification\";s:44:\"Consectetur ullam voluptatibus voluptas non.\";s:15:\"productCurrency\";s:3:\"USD\";s:13:\"productWeight\";i:93;s:14:\"productTaxRate\";i:16;s:19:\"productManufacturer\";s:30:\"Klocko, Pouros and Stoltenberg\";s:12:\"categoryName\";s:10:\"Stationery\";s:10:\"categoryId\";i:1;s:19:\"usesMultipleStorage\";b:1;s:22:\"productMeasurementUnit\";s:2:\"KG\";s:7:\"barcode\";s:12:\"562800565641\";s:9:\"createdBy\";i:1;s:10:\"updated_at\";s:19:\"2017-12-02 10:55:37\";s:10:\"created_at\";s:19:\"2017-12-02 10:55:37\";s:2:\"id\";i:101;s:4:\"hash\";s:8:\"dNxXi8Oa\";s:9:\"updatedBy\";i:1;}', '', NULL, NULL, 'Dennis Wanyoike', '2017-12-02 07:55:37', '2017-12-02 07:55:37'),
(203, 102, 'Product Created', 'a:0:{}', 'a:23:{s:11:\"productName\";s:7:\"CE 410A\";s:13:\"productSerial\";s:5:\"1H1XK\";s:6:\"amount\";i:49;s:8:\"location\";s:5:\"Store\";s:8:\"unitCost\";i:276;s:12:\"sellingPrice\";i:286;s:13:\"reorderAmount\";i:7;s:10:\"expiryDate\";s:10:\"1987-04-23\";s:9:\"companyId\";i:1;s:20:\"productSpecification\";s:87:\"Molestias maiores ea sint enim sit. Beatae aut esse sed et molestiae iusto consequatur.\";s:15:\"productCurrency\";s:3:\"USD\";s:13:\"productWeight\";i:66;s:14:\"productTaxRate\";i:16;s:19:\"productManufacturer\";s:12:\"Lakin-Conroy\";s:12:\"categoryName\";s:11:\"Consumables\";s:10:\"categoryId\";i:2;s:19:\"usesMultipleStorage\";b:1;s:22:\"productMeasurementUnit\";s:2:\"KG\";s:7:\"barcode\";s:12:\"593050199133\";s:9:\"createdBy\";i:1;s:10:\"updated_at\";s:19:\"2017-12-02 10:55:41\";s:10:\"created_at\";s:19:\"2017-12-02 10:55:41\";s:2:\"id\";i:102;}', '', NULL, NULL, 'Dennis Wanyoike', '2017-12-02 07:55:41', '2017-12-02 07:55:41'),
(204, 102, 'Product Updated', 'a:0:{}', 'a:25:{s:11:\"productName\";s:7:\"CE 410A\";s:13:\"productSerial\";s:5:\"1H1XK\";s:6:\"amount\";i:49;s:8:\"location\";s:5:\"Store\";s:8:\"unitCost\";i:276;s:12:\"sellingPrice\";i:286;s:13:\"reorderAmount\";i:7;s:10:\"expiryDate\";s:10:\"1987-04-23\";s:9:\"companyId\";i:1;s:20:\"productSpecification\";s:87:\"Molestias maiores ea sint enim sit. Beatae aut esse sed et molestiae iusto consequatur.\";s:15:\"productCurrency\";s:3:\"USD\";s:13:\"productWeight\";i:66;s:14:\"productTaxRate\";i:16;s:19:\"productManufacturer\";s:12:\"Lakin-Conroy\";s:12:\"categoryName\";s:11:\"Consumables\";s:10:\"categoryId\";i:2;s:19:\"usesMultipleStorage\";b:1;s:22:\"productMeasurementUnit\";s:2:\"KG\";s:7:\"barcode\";s:12:\"593050199133\";s:9:\"createdBy\";i:1;s:10:\"updated_at\";s:19:\"2017-12-02 10:55:41\";s:10:\"created_at\";s:19:\"2017-12-02 10:55:41\";s:2:\"id\";i:102;s:4:\"hash\";s:8:\"dwj7sV0b\";s:9:\"updatedBy\";i:1;}', '', NULL, NULL, 'Dennis Wanyoike', '2017-12-02 07:55:41', '2017-12-02 07:55:41'),
(205, 103, 'Product Created', 'a:0:{}', 'a:23:{s:11:\"productName\";s:6:\"CE411A\";s:13:\"productSerial\";s:5:\"G5QIB\";s:6:\"amount\";i:49;s:8:\"location\";s:5:\"Store\";s:8:\"unitCost\";i:256;s:12:\"sellingPrice\";i:264;s:13:\"reorderAmount\";i:8;s:10:\"expiryDate\";s:10:\"1970-10-30\";s:9:\"companyId\";i:1;s:20:\"productSpecification\";s:58:\"Amet culpa quos quos omnis ut. Modi natus nihil nemo sint.\";s:15:\"productCurrency\";s:3:\"USD\";s:13:\"productWeight\";i:95;s:14:\"productTaxRate\";i:16;s:19:\"productManufacturer\";s:12:\"Bins-Lebsack\";s:12:\"categoryName\";s:5:\"Foods\";s:10:\"categoryId\";i:4;s:19:\"usesMultipleStorage\";b:1;s:22:\"productMeasurementUnit\";s:2:\"KG\";s:7:\"barcode\";s:12:\"676674717263\";s:9:\"createdBy\";i:1;s:10:\"updated_at\";s:19:\"2017-12-02 10:55:44\";s:10:\"created_at\";s:19:\"2017-12-02 10:55:44\";s:2:\"id\";i:103;}', '', NULL, NULL, 'Dennis Wanyoike', '2017-12-02 07:55:44', '2017-12-02 07:55:44'),
(206, 103, 'Product Updated', 'a:0:{}', 'a:25:{s:11:\"productName\";s:6:\"CE411A\";s:13:\"productSerial\";s:5:\"G5QIB\";s:6:\"amount\";i:49;s:8:\"location\";s:5:\"Store\";s:8:\"unitCost\";i:256;s:12:\"sellingPrice\";i:264;s:13:\"reorderAmount\";i:8;s:10:\"expiryDate\";s:10:\"1970-10-30\";s:9:\"companyId\";i:1;s:20:\"productSpecification\";s:58:\"Amet culpa quos quos omnis ut. Modi natus nihil nemo sint.\";s:15:\"productCurrency\";s:3:\"USD\";s:13:\"productWeight\";i:95;s:14:\"productTaxRate\";i:16;s:19:\"productManufacturer\";s:12:\"Bins-Lebsack\";s:12:\"categoryName\";s:5:\"Foods\";s:10:\"categoryId\";i:4;s:19:\"usesMultipleStorage\";b:1;s:22:\"productMeasurementUnit\";s:2:\"KG\";s:7:\"barcode\";s:12:\"676674717263\";s:9:\"createdBy\";i:1;s:10:\"updated_at\";s:19:\"2017-12-02 10:55:44\";s:10:\"created_at\";s:19:\"2017-12-02 10:55:44\";s:2:\"id\";i:103;s:4:\"hash\";s:8:\"eX6VCMkb\";s:9:\"updatedBy\";i:1;}', '', NULL, NULL, 'Dennis Wanyoike', '2017-12-02 07:55:44', '2017-12-02 07:55:44'),
(207, 104, 'Product Created', 'a:0:{}', 'a:23:{s:11:\"productName\";s:6:\"CE412A\";s:13:\"productSerial\";s:7:\"79WBTPW\";s:6:\"amount\";i:49;s:8:\"location\";s:5:\"Store\";s:8:\"unitCost\";i:127;s:12:\"sellingPrice\";i:141;s:13:\"reorderAmount\";i:11;s:10:\"expiryDate\";s:10:\"1983-02-23\";s:9:\"companyId\";i:1;s:20:\"productSpecification\";s:84:\"Autem earum maiores placeat minima. Incidunt fuga perferendis ipsa veritatis non et.\";s:15:\"productCurrency\";s:3:\"USD\";s:13:\"productWeight\";i:57;s:14:\"productTaxRate\";i:16;s:19:\"productManufacturer\";s:15:\"Breitenberg Ltd\";s:12:\"categoryName\";s:11:\"Consumables\";s:10:\"categoryId\";i:2;s:19:\"usesMultipleStorage\";b:0;s:22:\"productMeasurementUnit\";s:2:\"KG\";s:7:\"barcode\";s:12:\"662722630776\";s:9:\"createdBy\";i:1;s:10:\"updated_at\";s:19:\"2017-12-02 10:55:50\";s:10:\"created_at\";s:19:\"2017-12-02 10:55:50\";s:2:\"id\";i:104;}', '', NULL, NULL, 'Dennis Wanyoike', '2017-12-02 07:55:50', '2017-12-02 07:55:50'),
(208, 104, 'Product Updated', 'a:0:{}', 'a:25:{s:11:\"productName\";s:6:\"CE412A\";s:13:\"productSerial\";s:7:\"79WBTPW\";s:6:\"amount\";i:49;s:8:\"location\";s:5:\"Store\";s:8:\"unitCost\";i:127;s:12:\"sellingPrice\";i:141;s:13:\"reorderAmount\";i:11;s:10:\"expiryDate\";s:10:\"1983-02-23\";s:9:\"companyId\";i:1;s:20:\"productSpecification\";s:84:\"Autem earum maiores placeat minima. Incidunt fuga perferendis ipsa veritatis non et.\";s:15:\"productCurrency\";s:3:\"USD\";s:13:\"productWeight\";i:57;s:14:\"productTaxRate\";i:16;s:19:\"productManufacturer\";s:15:\"Breitenberg Ltd\";s:12:\"categoryName\";s:11:\"Consumables\";s:10:\"categoryId\";i:2;s:19:\"usesMultipleStorage\";b:0;s:22:\"productMeasurementUnit\";s:2:\"KG\";s:7:\"barcode\";s:12:\"662722630776\";s:9:\"createdBy\";i:1;s:10:\"updated_at\";s:19:\"2017-12-02 10:55:50\";s:10:\"created_at\";s:19:\"2017-12-02 10:55:50\";s:2:\"id\";i:104;s:4:\"hash\";s:8:\"aAnXur5b\";s:9:\"updatedBy\";i:1;}', '', NULL, NULL, 'Dennis Wanyoike', '2017-12-02 07:55:51', '2017-12-02 07:55:51'),
(209, 105, 'Product Created', 'a:0:{}', 'a:23:{s:11:\"productName\";s:6:\"CE413A\";s:13:\"productSerial\";s:10:\"N%6JGL6ZYV\";s:6:\"amount\";i:49;s:8:\"location\";s:5:\"Store\";s:8:\"unitCost\";i:189;s:12:\"sellingPrice\";i:197;s:13:\"reorderAmount\";i:12;s:10:\"expiryDate\";s:10:\"1972-09-01\";s:9:\"companyId\";i:1;s:20:\"productSpecification\";s:49:\"Aspernatur quis earum ducimus facilis ut ratione.\";s:15:\"productCurrency\";s:3:\"USD\";s:13:\"productWeight\";i:13;s:14:\"productTaxRate\";i:16;s:19:\"productManufacturer\";s:19:\"Streich-Cruickshank\";s:12:\"categoryName\";s:11:\"Electronics\";s:10:\"categoryId\";i:3;s:19:\"usesMultipleStorage\";b:1;s:22:\"productMeasurementUnit\";s:2:\"KG\";s:7:\"barcode\";s:12:\"304544831251\";s:9:\"createdBy\";i:1;s:10:\"updated_at\";s:19:\"2017-12-02 10:55:51\";s:10:\"created_at\";s:19:\"2017-12-02 10:55:51\";s:2:\"id\";i:105;}', '', NULL, NULL, 'Dennis Wanyoike', '2017-12-02 07:55:51', '2017-12-02 07:55:51'),
(210, 105, 'Product Updated', 'a:0:{}', 'a:25:{s:11:\"productName\";s:6:\"CE413A\";s:13:\"productSerial\";s:10:\"N%6JGL6ZYV\";s:6:\"amount\";i:49;s:8:\"location\";s:5:\"Store\";s:8:\"unitCost\";i:189;s:12:\"sellingPrice\";i:197;s:13:\"reorderAmount\";i:12;s:10:\"expiryDate\";s:10:\"1972-09-01\";s:9:\"companyId\";i:1;s:20:\"productSpecification\";s:49:\"Aspernatur quis earum ducimus facilis ut ratione.\";s:15:\"productCurrency\";s:3:\"USD\";s:13:\"productWeight\";i:13;s:14:\"productTaxRate\";i:16;s:19:\"productManufacturer\";s:19:\"Streich-Cruickshank\";s:12:\"categoryName\";s:11:\"Electronics\";s:10:\"categoryId\";i:3;s:19:\"usesMultipleStorage\";b:1;s:22:\"productMeasurementUnit\";s:2:\"KG\";s:7:\"barcode\";s:12:\"304544831251\";s:9:\"createdBy\";i:1;s:10:\"updated_at\";s:19:\"2017-12-02 10:55:51\";s:10:\"created_at\";s:19:\"2017-12-02 10:55:51\";s:2:\"id\";i:105;s:4:\"hash\";s:8:\"aO7GFwza\";s:9:\"updatedBy\";i:1;}', '', NULL, NULL, 'Dennis Wanyoike', '2017-12-02 07:55:51', '2017-12-02 07:55:51'),
(211, 106, 'Product Created', 'a:0:{}', 'a:23:{s:11:\"productName\";s:18:\"Binder Clipps 51mm\";s:13:\"productSerial\";s:19:\"BV%7YO%A3-4BDB5BJJO\";s:6:\"amount\";i:49;s:8:\"location\";s:5:\"Store\";s:8:\"unitCost\";i:277;s:12:\"sellingPrice\";i:294;s:13:\"reorderAmount\";i:3;s:10:\"expiryDate\";s:10:\"1970-11-03\";s:9:\"companyId\";i:1;s:20:\"productSpecification\";s:95:\"Odit accusamus iusto consequatur tenetur repudiandae reiciendis. Laborum omnis soluta quam sit.\";s:15:\"productCurrency\";s:3:\"USD\";s:13:\"productWeight\";i:14;s:14:\"productTaxRate\";i:16;s:19:\"productManufacturer\";s:14:\"Keeling-Abbott\";s:12:\"categoryName\";s:10:\"Cool Stuff\";s:10:\"categoryId\";i:6;s:19:\"usesMultipleStorage\";b:1;s:22:\"productMeasurementUnit\";s:2:\"KG\";s:7:\"barcode\";s:12:\"311630670151\";s:9:\"createdBy\";i:1;s:10:\"updated_at\";s:19:\"2017-12-02 10:55:53\";s:10:\"created_at\";s:19:\"2017-12-02 10:55:53\";s:2:\"id\";i:106;}', '', NULL, NULL, 'Dennis Wanyoike', '2017-12-02 07:55:53', '2017-12-02 07:55:53'),
(212, 106, 'Product Updated', 'a:0:{}', 'a:25:{s:11:\"productName\";s:18:\"Binder Clipps 51mm\";s:13:\"productSerial\";s:19:\"BV%7YO%A3-4BDB5BJJO\";s:6:\"amount\";i:49;s:8:\"location\";s:5:\"Store\";s:8:\"unitCost\";i:277;s:12:\"sellingPrice\";i:294;s:13:\"reorderAmount\";i:3;s:10:\"expiryDate\";s:10:\"1970-11-03\";s:9:\"companyId\";i:1;s:20:\"productSpecification\";s:95:\"Odit accusamus iusto consequatur tenetur repudiandae reiciendis. Laborum omnis soluta quam sit.\";s:15:\"productCurrency\";s:3:\"USD\";s:13:\"productWeight\";i:14;s:14:\"productTaxRate\";i:16;s:19:\"productManufacturer\";s:14:\"Keeling-Abbott\";s:12:\"categoryName\";s:10:\"Cool Stuff\";s:10:\"categoryId\";i:6;s:19:\"usesMultipleStorage\";b:1;s:22:\"productMeasurementUnit\";s:2:\"KG\";s:7:\"barcode\";s:12:\"311630670151\";s:9:\"createdBy\";i:1;s:10:\"updated_at\";s:19:\"2017-12-02 10:55:53\";s:10:\"created_at\";s:19:\"2017-12-02 10:55:53\";s:2:\"id\";i:106;s:4:\"hash\";s:8:\"aO7kHX1a\";s:9:\"updatedBy\";i:1;}', '', NULL, NULL, 'Dennis Wanyoike', '2017-12-02 07:55:53', '2017-12-02 07:55:53'),
(213, 107, 'Product Created', 'a:0:{}', 'a:23:{s:11:\"productName\";s:21:\"Coloured paper clipps\";s:13:\"productSerial\";s:6:\"TNZWEK\";s:6:\"amount\";i:49;s:8:\"location\";s:5:\"Store\";s:8:\"unitCost\";i:166;s:12:\"sellingPrice\";i:175;s:13:\"reorderAmount\";i:4;s:10:\"expiryDate\";s:10:\"1974-04-16\";s:9:\"companyId\";i:1;s:20:\"productSpecification\";s:63:\"Consequatur illum sed voluptatem sit corporis labore libero in.\";s:15:\"productCurrency\";s:3:\"USD\";s:13:\"productWeight\";i:23;s:14:\"productTaxRate\";i:16;s:19:\"productManufacturer\";s:12:\"Prosacco PLC\";s:12:\"categoryName\";s:11:\"Consumables\";s:10:\"categoryId\";i:2;s:19:\"usesMultipleStorage\";b:0;s:22:\"productMeasurementUnit\";s:2:\"KG\";s:7:\"barcode\";s:12:\"414204993523\";s:9:\"createdBy\";i:1;s:10:\"updated_at\";s:19:\"2017-12-02 10:55:54\";s:10:\"created_at\";s:19:\"2017-12-02 10:55:54\";s:2:\"id\";i:107;}', '', NULL, NULL, 'Dennis Wanyoike', '2017-12-02 07:55:54', '2017-12-02 07:55:54'),
(214, 107, 'Product Updated', 'a:0:{}', 'a:25:{s:11:\"productName\";s:21:\"Coloured paper clipps\";s:13:\"productSerial\";s:6:\"TNZWEK\";s:6:\"amount\";i:49;s:8:\"location\";s:5:\"Store\";s:8:\"unitCost\";i:166;s:12:\"sellingPrice\";i:175;s:13:\"reorderAmount\";i:4;s:10:\"expiryDate\";s:10:\"1974-04-16\";s:9:\"companyId\";i:1;s:20:\"productSpecification\";s:63:\"Consequatur illum sed voluptatem sit corporis labore libero in.\";s:15:\"productCurrency\";s:3:\"USD\";s:13:\"productWeight\";i:23;s:14:\"productTaxRate\";i:16;s:19:\"productManufacturer\";s:12:\"Prosacco PLC\";s:12:\"categoryName\";s:11:\"Consumables\";s:10:\"categoryId\";i:2;s:19:\"usesMultipleStorage\";b:0;s:22:\"productMeasurementUnit\";s:2:\"KG\";s:7:\"barcode\";s:12:\"414204993523\";s:9:\"createdBy\";i:1;s:10:\"updated_at\";s:19:\"2017-12-02 10:55:54\";s:10:\"created_at\";s:19:\"2017-12-02 10:55:54\";s:2:\"id\";i:107;s:4:\"hash\";s:8:\"dwj8fyrb\";s:9:\"updatedBy\";i:1;}', '', NULL, NULL, 'Dennis Wanyoike', '2017-12-02 07:55:54', '2017-12-02 07:55:54'),
(215, 108, 'Product Created', 'a:0:{}', 'a:23:{s:11:\"productName\";s:15:\"Embossed Sheets\";s:13:\"productSerial\";s:6:\"9WGFYB\";s:6:\"amount\";i:49;s:8:\"location\";s:5:\"Store\";s:8:\"unitCost\";i:201;s:12:\"sellingPrice\";i:207;s:13:\"reorderAmount\";i:13;s:10:\"expiryDate\";s:10:\"1987-05-05\";s:9:\"companyId\";i:1;s:20:\"productSpecification\";s:49:\"Aspernatur aut quo qui voluptate dicta veritatis.\";s:15:\"productCurrency\";s:3:\"USD\";s:13:\"productWeight\";i:49;s:14:\"productTaxRate\";i:16;s:19:\"productManufacturer\";s:8:\"Beer Inc\";s:12:\"categoryName\";s:10:\"Vegetables\";s:10:\"categoryId\";i:5;s:19:\"usesMultipleStorage\";b:0;s:22:\"productMeasurementUnit\";s:2:\"KG\";s:7:\"barcode\";s:12:\"982758208467\";s:9:\"createdBy\";i:1;s:10:\"updated_at\";s:19:\"2017-12-02 10:55:54\";s:10:\"created_at\";s:19:\"2017-12-02 10:55:54\";s:2:\"id\";i:108;}', '', NULL, NULL, 'Dennis Wanyoike', '2017-12-02 07:55:55', '2017-12-02 07:55:55'),
(216, 108, 'Product Updated', 'a:0:{}', 'a:25:{s:11:\"productName\";s:15:\"Embossed Sheets\";s:13:\"productSerial\";s:6:\"9WGFYB\";s:6:\"amount\";i:49;s:8:\"location\";s:5:\"Store\";s:8:\"unitCost\";i:201;s:12:\"sellingPrice\";i:207;s:13:\"reorderAmount\";i:13;s:10:\"expiryDate\";s:10:\"1987-05-05\";s:9:\"companyId\";i:1;s:20:\"productSpecification\";s:49:\"Aspernatur aut quo qui voluptate dicta veritatis.\";s:15:\"productCurrency\";s:3:\"USD\";s:13:\"productWeight\";i:49;s:14:\"productTaxRate\";i:16;s:19:\"productManufacturer\";s:8:\"Beer Inc\";s:12:\"categoryName\";s:10:\"Vegetables\";s:10:\"categoryId\";i:5;s:19:\"usesMultipleStorage\";b:0;s:22:\"productMeasurementUnit\";s:2:\"KG\";s:7:\"barcode\";s:12:\"982758208467\";s:9:\"createdBy\";i:1;s:10:\"updated_at\";s:19:\"2017-12-02 10:55:54\";s:10:\"created_at\";s:19:\"2017-12-02 10:55:54\";s:2:\"id\";i:108;s:4:\"hash\";s:8:\"er0vTRxb\";s:9:\"updatedBy\";i:1;}', '', NULL, NULL, 'Dennis Wanyoike', '2017-12-02 07:55:55', '2017-12-02 07:55:55'),
(217, 60, 'Product Updated', 'a:1:{s:8:\"unitCost\";d:108;}', 'a:1:{s:8:\"unitCost\";d:93.5;}', '', NULL, NULL, 'Dennis Wanyoike', '2017-12-02 07:55:59', '2017-12-02 07:55:59'),
(218, 13, 'Product Updated', 'a:1:{s:8:\"unitCost\";d:128;}', 'a:1:{s:8:\"unitCost\";d:751.5;}', '', NULL, NULL, 'Dennis Wanyoike', '2017-12-02 07:56:00', '2017-12-02 07:56:00'),
(219, 7, 'Product Updated', 'a:1:{s:8:\"unitCost\";d:233;}', 'a:1:{s:8:\"unitCost\";i:703;}', '', NULL, NULL, 'Dennis Wanyoike', '2017-12-02 07:56:00', '2017-12-02 07:56:00'),
(220, 21, 'Product Updated', 'a:1:{s:8:\"unitCost\";d:142;}', 'a:1:{s:8:\"unitCost\";i:61;}', '', NULL, NULL, 'Dennis Wanyoike', '2017-12-02 07:56:01', '2017-12-02 07:56:01'),
(221, 86, 'Product Updated', 'a:1:{s:8:\"unitCost\";d:295;}', 'a:1:{s:8:\"unitCost\";i:679;}', '', NULL, NULL, 'Dennis Wanyoike', '2017-12-02 07:56:02', '2017-12-02 07:56:02'),
(222, 58, 'Product Updated', 'a:1:{s:8:\"unitCost\";d:233;}', 'a:1:{s:8:\"unitCost\";i:571;}', '', NULL, NULL, 'Dennis Wanyoike', '2017-12-02 07:56:02', '2017-12-02 07:56:02'),
(223, 40, 'Product Updated', 'a:1:{s:8:\"unitCost\";d:128;}', 'a:1:{s:8:\"unitCost\";i:992;}', '', NULL, NULL, 'Dennis Wanyoike', '2017-12-02 07:56:03', '2017-12-02 07:56:03'),
(224, 51, 'Product Updated', 'a:1:{s:8:\"unitCost\";d:139;}', 'a:1:{s:8:\"unitCost\";i:469;}', '', NULL, NULL, 'Dennis Wanyoike', '2017-12-02 07:56:03', '2017-12-02 07:56:03'),
(225, 2, 'Product Updated', 'a:1:{s:8:\"unitCost\";d:206;}', 'a:1:{s:8:\"unitCost\";i:588;}', '', NULL, NULL, 'Dennis Wanyoike', '2017-12-02 07:56:03', '2017-12-02 07:56:03'),
(226, 28, 'Product Updated', 'a:1:{s:8:\"unitCost\";d:297;}', 'a:1:{s:8:\"unitCost\";i:855;}', '', NULL, NULL, 'Dennis Wanyoike', '2017-12-02 07:56:04', '2017-12-02 07:56:04'),
(227, 58, 'Product Updated', 'a:1:{s:8:\"unitCost\";d:571;}', 'a:1:{s:8:\"unitCost\";i:372;}', '', NULL, NULL, 'Dennis Wanyoike', '2017-12-02 07:56:05', '2017-12-02 07:56:05'),
(228, 23, 'Product Updated', 'a:1:{s:8:\"unitCost\";d:273;}', 'a:1:{s:8:\"unitCost\";d:796.5;}', '', NULL, NULL, 'Dennis Wanyoike', '2017-12-02 07:56:07', '2017-12-02 07:56:07'),
(229, 62, 'Product Updated', 'a:1:{s:8:\"unitCost\";d:226;}', 'a:1:{s:8:\"unitCost\";i:802;}', '', NULL, NULL, 'Dennis Wanyoike', '2017-12-02 07:56:08', '2017-12-02 07:56:08'),
(230, 16, 'Product Updated', 'a:1:{s:8:\"unitCost\";d:121;}', 'a:1:{s:8:\"unitCost\";i:1246;}', '', NULL, NULL, 'Dennis Wanyoike', '2017-12-02 07:56:08', '2017-12-02 07:56:08'),
(231, 94, 'Product Updated', 'a:1:{s:8:\"unitCost\";d:125;}', 'a:1:{s:8:\"unitCost\";i:514;}', '', NULL, NULL, 'Dennis Wanyoike', '2017-12-02 07:56:10', '2017-12-02 07:56:10'),
(232, 75, 'Product Updated', 'a:1:{s:8:\"unitCost\";d:298;}', 'a:1:{s:8:\"unitCost\";i:1304;}', '', NULL, NULL, 'Dennis Wanyoike', '2017-12-02 07:56:12', '2017-12-02 07:56:12'),
(233, 96, 'Product Updated', 'a:1:{s:8:\"unitCost\";d:300;}', 'a:1:{s:8:\"unitCost\";d:126.5;}', '', NULL, NULL, 'Dennis Wanyoike', '2017-12-02 07:56:13', '2017-12-02 07:56:13'),
(234, 24, 'Product Updated', 'a:1:{s:8:\"unitCost\";d:107;}', 'a:1:{s:8:\"unitCost\";i:904;}', '', NULL, NULL, 'Dennis Wanyoike', '2017-12-02 07:56:13', '2017-12-02 07:56:13'),
(235, 69, 'Product Updated', 'a:1:{s:8:\"unitCost\";d:217;}', 'a:1:{s:8:\"unitCost\";i:749;}', '', NULL, NULL, 'Dennis Wanyoike', '2017-12-02 07:56:14', '2017-12-02 07:56:14'),
(236, 47, 'Product Updated', 'a:1:{s:8:\"unitCost\";d:219;}', 'a:1:{s:8:\"unitCost\";i:1643;}', '', NULL, NULL, 'Dennis Wanyoike', '2017-12-02 07:56:15', '2017-12-02 07:56:15'),
(237, 85, 'Product Updated', 'a:1:{s:8:\"unitCost\";d:125;}', 'a:1:{s:8:\"unitCost\";i:969;}', '', NULL, NULL, 'Dennis Wanyoike', '2017-12-02 07:56:15', '2017-12-02 07:56:15'),
(238, 51, 'Product Updated', 'a:1:{s:8:\"unitCost\";d:469;}', 'a:1:{s:8:\"unitCost\";i:663;}', '', NULL, NULL, 'Dennis Wanyoike', '2017-12-02 07:56:16', '2017-12-02 07:56:16'),
(239, 72, 'Product Updated', 'a:1:{s:8:\"unitCost\";d:226;}', 'a:1:{s:8:\"unitCost\";d:646.5;}', '', NULL, NULL, 'Dennis Wanyoike', '2017-12-02 07:56:17', '2017-12-02 07:56:17'),
(240, 103, 'Product Updated', 'a:1:{s:8:\"unitCost\";d:256;}', 'a:1:{s:8:\"unitCost\";i:1025;}', '', NULL, NULL, 'Dennis Wanyoike', '2017-12-02 07:56:18', '2017-12-02 07:56:18'),
(241, 28, 'Product Updated', 'a:1:{s:8:\"unitCost\";d:855;}', 'a:1:{s:8:\"unitCost\";i:600;}', '', NULL, NULL, 'Dennis Wanyoike', '2017-12-02 07:56:18', '2017-12-02 07:56:18'),
(242, 68, 'Product Updated', 'a:1:{s:8:\"unitCost\";d:197;}', 'a:1:{s:8:\"unitCost\";d:321.5;}', '', NULL, NULL, 'Dennis Wanyoike', '2017-12-02 07:56:19', '2017-12-02 07:56:19'),
(243, 102, 'Product Updated', 'a:1:{s:8:\"unitCost\";d:276;}', 'a:1:{s:8:\"unitCost\";i:1426;}', '', NULL, NULL, 'Dennis Wanyoike', '2017-12-02 07:56:20', '2017-12-02 07:56:20'),
(244, 28, 'Product Updated', 'a:1:{s:8:\"unitCost\";d:600;}', 'a:1:{s:8:\"unitCost\";d:820.5;}', '', NULL, NULL, 'Dennis Wanyoike', '2017-12-02 07:56:21', '2017-12-02 07:56:21'),
(245, 28, 'Product Updated', 'a:1:{s:8:\"unitCost\";d:820.5;}', 'a:1:{s:8:\"unitCost\";i:617;}', '', NULL, NULL, 'Dennis Wanyoike', '2017-12-02 07:56:21', '2017-12-02 07:56:21'),
(246, 91, 'Product Updated', 'a:1:{s:8:\"unitCost\";d:110;}', 'a:1:{s:8:\"unitCost\";i:359;}', '', NULL, NULL, 'Dennis Wanyoike', '2017-12-02 07:56:22', '2017-12-02 07:56:22'),
(247, 59, 'Product Updated', 'a:1:{s:8:\"unitCost\";d:192;}', 'a:1:{s:8:\"unitCost\";i:1252;}', '', NULL, NULL, 'Dennis Wanyoike', '2017-12-02 07:56:23', '2017-12-02 07:56:23'),
(248, 100, 'Product Updated', 'a:1:{s:8:\"unitCost\";d:136;}', 'a:1:{s:8:\"unitCost\";i:1645;}', '', NULL, NULL, 'Dennis Wanyoike', '2017-12-02 07:56:23', '2017-12-02 07:56:23'),
(249, 97, 'Product Updated', 'a:1:{s:8:\"unitCost\";d:218;}', 'a:1:{s:8:\"unitCost\";i:1701;}', '', NULL, NULL, 'Dennis Wanyoike', '2017-12-02 07:56:24', '2017-12-02 07:56:24'),
(250, 96, 'Product Updated', 'a:1:{s:8:\"unitCost\";d:126.5;}', 'a:1:{s:8:\"unitCost\";i:293;}', '', NULL, NULL, 'Dennis Wanyoike', '2017-12-02 07:56:24', '2017-12-02 07:56:24'),
(251, 64, 'Product Updated', 'a:1:{s:8:\"unitCost\";d:296;}', 'a:1:{s:8:\"unitCost\";i:1069;}', '', NULL, NULL, 'Dennis Wanyoike', '2017-12-02 07:56:25', '2017-12-02 07:56:25'),
(252, 50, 'Product Updated', 'a:1:{s:8:\"unitCost\";d:145;}', 'a:1:{s:8:\"unitCost\";i:244;}', '', NULL, NULL, 'Dennis Wanyoike', '2017-12-02 07:56:25', '2017-12-02 07:56:25'),
(253, 87, 'Product Updated', 'a:1:{s:8:\"unitCost\";d:265;}', 'a:1:{s:8:\"unitCost\";d:835.5;}', '', NULL, NULL, 'Dennis Wanyoike', '2017-12-02 07:56:25', '2017-12-02 07:56:25'),
(254, 65, 'Product Updated', 'a:1:{s:8:\"unitCost\";d:152;}', 'a:1:{s:8:\"unitCost\";i:629;}', '', NULL, NULL, 'Dennis Wanyoike', '2017-12-02 07:56:26', '2017-12-02 07:56:26'),
(255, 10, 'Product Updated', 'a:1:{s:8:\"unitCost\";d:146;}', 'a:1:{s:8:\"unitCost\";i:1759;}', '', NULL, NULL, 'Dennis Wanyoike', '2017-12-02 07:56:27', '2017-12-02 07:56:27'),
(256, 78, 'Product Updated', 'a:1:{s:8:\"unitCost\";d:139;}', 'a:1:{s:8:\"unitCost\";i:1449;}', '', NULL, NULL, 'Dennis Wanyoike', '2017-12-02 07:56:28', '2017-12-02 07:56:28'),
(257, 79, 'Product Updated', 'a:1:{s:8:\"unitCost\";d:179;}', 'a:1:{s:8:\"unitCost\";d:855.5;}', '', NULL, NULL, 'Dennis Wanyoike', '2017-12-02 07:56:28', '2017-12-02 07:56:28'),
(258, 67, 'Product Updated', 'a:1:{s:8:\"unitCost\";d:178;}', 'a:1:{s:8:\"unitCost\";i:824;}', '', NULL, NULL, 'Dennis Wanyoike', '2017-12-02 07:56:30', '2017-12-02 07:56:30'),
(259, 99, 'Product Updated', 'a:1:{s:8:\"unitCost\";d:195;}', 'a:1:{s:8:\"unitCost\";i:937;}', '', NULL, NULL, 'Dennis Wanyoike', '2017-12-02 07:56:31', '2017-12-02 07:56:31'),
(260, 95, 'Product Updated', 'a:1:{s:8:\"unitCost\";d:153;}', 'a:1:{s:8:\"unitCost\";d:68.5;}', '', NULL, NULL, 'Dennis Wanyoike', '2017-12-02 07:56:32', '2017-12-02 07:56:32'),
(261, 68, 'Product Updated', 'a:1:{s:8:\"unitCost\";d:321.5;}', 'a:1:{s:8:\"unitCost\";d:607.5;}', '', NULL, NULL, 'Dennis Wanyoike', '2017-12-02 07:56:33', '2017-12-02 07:56:33'),
(262, 100, 'Product Updated', 'a:1:{s:8:\"unitCost\";d:1645;}', 'a:1:{s:8:\"unitCost\";i:1513;}', '', NULL, NULL, 'Dennis Wanyoike', '2017-12-02 07:56:33', '2017-12-02 07:56:33'),
(263, 83, 'Product Updated', 'a:1:{s:8:\"unitCost\";d:297;}', 'a:1:{s:8:\"unitCost\";i:938;}', '', NULL, NULL, 'Dennis Wanyoike', '2017-12-02 07:56:34', '2017-12-02 07:56:34'),
(264, 37, 'Product Updated', 'a:1:{s:8:\"unitCost\";d:101;}', 'a:1:{s:8:\"unitCost\";i:1674;}', '', NULL, NULL, 'Dennis Wanyoike', '2017-12-02 07:56:34', '2017-12-02 07:56:34'),
(265, 106, 'Product Updated', 'a:1:{s:8:\"unitCost\";d:277;}', 'a:1:{s:8:\"unitCost\";i:1057;}', '', NULL, NULL, 'Dennis Wanyoike', '2017-12-02 07:56:35', '2017-12-02 07:56:35'),
(266, 107, 'Product Updated', 'a:1:{s:8:\"unitCost\";d:166;}', 'a:1:{s:8:\"unitCost\";d:838.5;}', '', NULL, NULL, 'Dennis Wanyoike', '2017-12-02 07:56:35', '2017-12-02 07:56:35');

-- --------------------------------------------------------

--
-- Table structure for table `storage_locations`
--

CREATE TABLE `storage_locations` (
  `id` int(10) UNSIGNED NOT NULL,
  `whsId` int(10) UNSIGNED NOT NULL,
  `binCode` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `binDescription` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `binDisabled` tinyint(1) DEFAULT NULL,
  `binBarcode` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `binMaxLevel` int(11) DEFAULT NULL,
  `binMaxWeight` double DEFAULT NULL,
  `companyId` int(10) UNSIGNED NOT NULL,
  `updatedBy` int(10) UNSIGNED NOT NULL,
  `createdBy` int(10) UNSIGNED NOT NULL,
  `hash` text COLLATE utf8mb4_unicode_ci,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `storage_locations`
--

INSERT INTO `storage_locations` (`id`, `whsId`, `binCode`, `binDescription`, `binDisabled`, `binBarcode`, `binMaxLevel`, `binMaxWeight`, `companyId`, `updatedBy`, `createdBy`, `hash`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 1, 'BN-059', 'Illo non illum aut iure et.', 1, '1470702366565', 9, 525, 1, 0, 1, NULL, NULL, '2017-12-02 07:52:42', '2017-12-02 07:52:42'),
(2, 1, 'BN-955', 'Ea architecto aut omnis vero non aut.', 0, '1083831602451', 1, 241, 1, 0, 1, NULL, NULL, '2017-12-02 07:52:42', '2017-12-02 07:52:42'),
(3, 1, 'BN-619', 'Maxime illo ab ut omnis qui delectus.', 0, '2786495214099', 5, 121, 1, 0, 1, NULL, NULL, '2017-12-02 07:52:42', '2017-12-02 07:52:42'),
(4, 1, 'BN-635', 'Repudiandae fugit perspiciatis ut laudantium.', 0, '4716873104849', 8, 170, 1, 0, 1, NULL, NULL, '2017-12-02 07:52:43', '2017-12-02 07:52:43'),
(5, 1, 'BN-983', 'Assumenda et perferendis quo tempora sit a.', 0, '5524089502903', 5, 435, 1, 0, 1, NULL, NULL, '2017-12-02 07:52:43', '2017-12-02 07:52:43'),
(6, 1, 'BN-236', 'Officia et est nam amet quis.', 0, '5536468042962', 7, 189, 1, 0, 1, NULL, NULL, '2017-12-02 07:52:43', '2017-12-02 07:52:43'),
(7, 1, 'BN-940', 'Omnis quis culpa sunt magnam eius laborum.', 0, '0167019953717', 4, 927, 1, 0, 1, NULL, NULL, '2017-12-02 07:52:43', '2017-12-02 07:52:43'),
(8, 1, 'BN-638', 'Atque animi vel tempore sit natus.', 0, '0980308574192', 2, 50, 1, 0, 1, NULL, NULL, '2017-12-02 07:52:43', '2017-12-02 07:52:43'),
(9, 1, 'BN-971', 'Non rem delectus excepturi nam impedit suscipit molestiae voluptas.', 1, '9925641774930', 4, 191, 1, 0, 1, NULL, NULL, '2017-12-02 07:52:43', '2017-12-02 07:52:43'),
(10, 1, 'BN-970', 'Qui quisquam sint quod sed fugiat vitae.', 0, '9507989906572', 4, 56, 1, 0, 1, NULL, NULL, '2017-12-02 07:52:43', '2017-12-02 07:52:43'),
(11, 1, 'BN-731', 'Excepturi et qui maiores ipsum culpa autem.', 0, '8324570933943', 2, 985, 1, 0, 1, NULL, NULL, '2017-12-02 07:52:43', '2017-12-02 07:52:43'),
(12, 1, 'BN-216', 'Qui corrupti ex unde nihil minima maiores quis.', 0, '3731266879624', 7, 365, 1, 0, 1, NULL, NULL, '2017-12-02 07:52:43', '2017-12-02 07:52:43'),
(13, 1, 'BN-828', 'Dolorum eum adipisci reprehenderit voluptas cum beatae.', 0, '8947942796511', 4, 732, 1, 0, 1, NULL, NULL, '2017-12-02 07:52:43', '2017-12-02 07:52:43'),
(14, 1, 'BN-840', 'Voluptatibus dignissimos cupiditate facere recusandae perspiciatis quo et.', 0, '2984742036641', 6, 548, 1, 0, 1, NULL, NULL, '2017-12-02 07:52:44', '2017-12-02 07:52:44'),
(15, 1, 'BN-253', 'Qui temporibus pariatur ad dolorem non omnis.', 0, '4966948338970', 2, 267, 1, 0, 1, NULL, NULL, '2017-12-02 07:52:44', '2017-12-02 07:52:44'),
(16, 1, 'BN-556', 'Aut sed atque tempore magni minus nemo excepturi.', 0, '2252697146273', 8, 556, 1, 0, 1, NULL, NULL, '2017-12-02 07:52:44', '2017-12-02 07:52:44'),
(17, 1, 'BN-961', 'Perferendis repudiandae id cum non enim neque earum dolores.', 0, '7677623835055', 0, 577, 1, 0, 1, NULL, NULL, '2017-12-02 07:52:44', '2017-12-02 07:52:44'),
(18, 1, 'BN-731', 'Est aut blanditiis et voluptatem rerum.', 0, '4648726182417', 1, 903, 1, 0, 1, NULL, NULL, '2017-12-02 07:52:44', '2017-12-02 07:52:44'),
(19, 1, 'BN-156', 'Voluptatem natus quisquam animi.', 0, '7117599144572', 0, 583, 1, 0, 1, NULL, NULL, '2017-12-02 07:52:44', '2017-12-02 07:52:44'),
(20, 1, 'BN-052', 'Consequatur nam doloremque maxime error eos dolorem.', 0, '9700952658212', 4, 53, 1, 0, 1, NULL, NULL, '2017-12-02 07:52:44', '2017-12-02 07:52:44'),
(21, 2, 'BN-462', 'Sint eaque optio officia id blanditiis ex.', 0, '1545601795560', 8, 114, 1, 0, 1, NULL, NULL, '2017-12-02 07:52:44', '2017-12-02 07:52:44'),
(22, 2, 'BN-949', 'Deserunt beatae vero recusandae deserunt odio accusantium.', 0, '1371497903433', 4, 426, 1, 0, 1, NULL, NULL, '2017-12-02 07:52:45', '2017-12-02 07:52:45'),
(23, 2, 'BN-228', 'Quia debitis quia et accusantium laudantium.', 0, '4761161661221', 5, 828, 1, 0, 1, NULL, NULL, '2017-12-02 07:52:45', '2017-12-02 07:52:45'),
(24, 2, 'BN-495', 'Consequatur inventore nam officiis sunt nihil.', 0, '8133737493332', 2, 909, 1, 0, 1, NULL, NULL, '2017-12-02 07:52:45', '2017-12-02 07:52:45'),
(25, 2, 'BN-244', 'Vel itaque quo sapiente libero earum neque consequatur.', 0, '7533551991327', 9, 850, 1, 0, 1, NULL, NULL, '2017-12-02 07:52:46', '2017-12-02 07:52:46'),
(26, 2, 'BN-190', 'Laboriosam dolor dolorem iusto dolorum esse autem dolores.', 0, '3092745556383', 1, 319, 1, 0, 1, NULL, NULL, '2017-12-02 07:52:46', '2017-12-02 07:52:46'),
(27, 2, 'BN-173', 'Ut porro laborum voluptatem qui beatae ab.', 0, '2425548516918', 2, 656, 1, 0, 1, NULL, NULL, '2017-12-02 07:52:46', '2017-12-02 07:52:46'),
(28, 2, 'BN-966', 'Voluptas recusandae occaecati quaerat.', 0, '7299077581427', 4, 877, 1, 0, 1, NULL, NULL, '2017-12-02 07:52:46', '2017-12-02 07:52:46'),
(29, 2, 'BN-811', 'Non totam voluptatem exercitationem aliquam ut inventore.', 0, '3291189731053', 4, 930, 1, 0, 1, NULL, NULL, '2017-12-02 07:52:46', '2017-12-02 07:52:46'),
(30, 2, 'BN-659', 'Aut at molestias sequi voluptas harum dolorem mollitia aut.', 1, '6527151632378', 8, 781, 1, 0, 1, NULL, NULL, '2017-12-02 07:52:46', '2017-12-02 07:52:46'),
(31, 2, 'BN-898', 'Ut consequatur autem incidunt.', 0, '0276758166088', 5, 748, 1, 0, 1, NULL, NULL, '2017-12-02 07:52:46', '2017-12-02 07:52:46'),
(32, 2, 'BN-007', 'Voluptas a voluptatem occaecati velit eius quas.', 0, '0929835750921', 1, 426, 1, 0, 1, NULL, NULL, '2017-12-02 07:52:46', '2017-12-02 07:52:46'),
(33, 2, 'BN-872', 'Laborum autem iure laborum doloribus placeat iure porro.', 0, '3004060460023', 2, 356, 1, 0, 1, NULL, NULL, '2017-12-02 07:52:46', '2017-12-02 07:52:46'),
(34, 2, 'BN-852', 'Debitis et quia soluta architecto quos aut qui.', 0, '1896735368701', 8, 808, 1, 0, 1, NULL, NULL, '2017-12-02 07:52:47', '2017-12-02 07:52:47'),
(35, 2, 'BN-052', 'Animi possimus aspernatur doloremque dolorem ullam.', 1, '2774641733136', 0, 372, 1, 0, 1, NULL, NULL, '2017-12-02 07:52:47', '2017-12-02 07:52:47'),
(36, 2, 'BN-348', 'Eos voluptates laborum enim alias est magnam optio.', 0, '5622889783468', 3, 825, 1, 0, 1, NULL, NULL, '2017-12-02 07:52:47', '2017-12-02 07:52:47'),
(37, 2, 'BN-307', 'Sed necessitatibus dignissimos tenetur modi veniam aut optio.', 1, '4705042868811', 4, 828, 1, 0, 1, NULL, NULL, '2017-12-02 07:52:47', '2017-12-02 07:52:47'),
(38, 2, 'BN-064', 'Et sit occaecati tempora consectetur.', 0, '5347644442267', 0, 410, 1, 0, 1, NULL, NULL, '2017-12-02 07:52:47', '2017-12-02 07:52:47'),
(39, 2, 'BN-239', 'Odit aut velit voluptatum aut aut.', 0, '3884676599368', 4, 308, 1, 0, 1, NULL, NULL, '2017-12-02 07:52:47', '2017-12-02 07:52:47'),
(40, 2, 'BN-051', 'Reprehenderit tempore qui at odio quia earum.', 0, '0473004727325', 9, 256, 1, 0, 1, NULL, NULL, '2017-12-02 07:52:48', '2017-12-02 07:52:48'),
(41, 3, 'BN-340', 'Quasi et saepe omnis maiores voluptatem earum ea eveniet.', 1, '5501895770627', 5, 623, 1, 0, 1, NULL, NULL, '2017-12-02 07:52:48', '2017-12-02 07:52:48'),
(42, 3, 'BN-537', 'Quis pariatur non sunt sequi voluptatem voluptatibus dolorum earum.', 0, '9594708692519', 6, 718, 1, 0, 1, NULL, NULL, '2017-12-02 07:52:48', '2017-12-02 07:52:48'),
(43, 3, 'BN-207', 'Aut nesciunt doloremque tenetur molestiae consequatur sit quia quidem.', 1, '3479899369869', 1, 32, 1, 0, 1, NULL, NULL, '2017-12-02 07:52:48', '2017-12-02 07:52:48'),
(44, 3, 'BN-005', 'Maiores dignissimos qui architecto possimus.', 0, '4195100170381', 9, 275, 1, 0, 1, NULL, NULL, '2017-12-02 07:52:48', '2017-12-02 07:52:48'),
(45, 3, 'BN-316', 'Voluptatem et sunt autem accusantium.', 1, '3590323187023', 9, 605, 1, 0, 1, NULL, NULL, '2017-12-02 07:52:48', '2017-12-02 07:52:48'),
(46, 3, 'BN-136', 'Quis aut aspernatur dolores eius aperiam.', 0, '9539100795239', 8, 178, 1, 0, 1, NULL, NULL, '2017-12-02 07:52:48', '2017-12-02 07:52:48'),
(47, 3, 'BN-870', 'Ut non aut quas aut aut voluptatem praesentium sed.', 0, '3127936584699', 4, 922, 1, 0, 1, NULL, NULL, '2017-12-02 07:52:49', '2017-12-02 07:52:49'),
(48, 3, 'BN-080', 'Nisi quidem laboriosam quo sit temporibus.', 0, '1255922784012', 8, 812, 1, 0, 1, NULL, NULL, '2017-12-02 07:52:49', '2017-12-02 07:52:49'),
(49, 3, 'BN-360', 'Ut ipsa aut ut et iste et tenetur cupiditate.', 0, '3848799588388', 4, 802, 1, 0, 1, NULL, NULL, '2017-12-02 07:52:49', '2017-12-02 07:52:49'),
(50, 3, 'BN-780', 'Est aut ab molestiae optio harum atque adipisci.', 0, '2005561235081', 2, 722, 1, 0, 1, NULL, NULL, '2017-12-02 07:52:49', '2017-12-02 07:52:49'),
(51, 3, 'BN-830', 'Rerum odit pariatur aut.', 0, '7122144622016', 5, 399, 1, 0, 1, NULL, NULL, '2017-12-02 07:52:49', '2017-12-02 07:52:49'),
(52, 3, 'BN-322', 'Quia tempora qui dolor qui autem.', 1, '1724485990050', 1, 509, 1, 0, 1, NULL, NULL, '2017-12-02 07:52:50', '2017-12-02 07:52:50'),
(53, 3, 'BN-028', 'Et quis minima nisi mollitia aliquid.', 0, '1258671648512', 8, 372, 1, 0, 1, NULL, NULL, '2017-12-02 07:52:50', '2017-12-02 07:52:50'),
(54, 3, 'BN-556', 'Harum qui et corrupti inventore molestiae.', 0, '9237660358696', 4, 149, 1, 0, 1, NULL, NULL, '2017-12-02 07:52:50', '2017-12-02 07:52:50'),
(55, 3, 'BN-751', 'Cumque voluptatem molestias ut veritatis.', 0, '7604282743285', 8, 706, 1, 0, 1, NULL, NULL, '2017-12-02 07:52:51', '2017-12-02 07:52:51'),
(56, 3, 'BN-473', 'Omnis voluptate nisi sequi architecto nostrum fugit.', 0, '2445816684941', 3, 699, 1, 0, 1, NULL, NULL, '2017-12-02 07:52:51', '2017-12-02 07:52:51'),
(57, 3, 'BN-913', 'Et facere omnis nulla ut.', 1, '5512446433236', 3, 329, 1, 0, 1, NULL, NULL, '2017-12-02 07:52:51', '2017-12-02 07:52:51'),
(58, 3, 'BN-911', 'Eos veniam maxime inventore harum ut iste necessitatibus.', 0, '6358016710241', 3, 387, 1, 0, 1, NULL, NULL, '2017-12-02 07:52:51', '2017-12-02 07:52:51'),
(59, 3, 'BN-277', 'Veniam itaque quis illum.', 0, '8990355349010', 3, 978, 1, 0, 1, NULL, NULL, '2017-12-02 07:52:51', '2017-12-02 07:52:51'),
(60, 3, 'BN-789', 'Rem dicta culpa dolor vel aperiam qui soluta autem.', 0, '4126903317550', 7, 485, 1, 0, 1, NULL, NULL, '2017-12-02 07:52:51', '2017-12-02 07:52:51'),
(61, 4, 'BN-020', 'Sit culpa et placeat enim nulla esse praesentium.', 0, '4716845262409', 6, 345, 1, 0, 1, NULL, NULL, '2017-12-02 07:52:52', '2017-12-02 07:52:52'),
(62, 4, 'BN-611', 'Est vero enim excepturi repellat illo sint.', 0, '2516219480567', 2, 278, 1, 0, 1, NULL, NULL, '2017-12-02 07:52:52', '2017-12-02 07:52:52'),
(63, 4, 'BN-811', 'Numquam ut et nam aut.', 1, '6548458273194', 8, 600, 1, 0, 1, NULL, NULL, '2017-12-02 07:52:52', '2017-12-02 07:52:52'),
(64, 4, 'BN-051', 'Qui officiis consequatur nesciunt alias consequatur velit iusto.', 1, '9146824391052', 3, 563, 1, 0, 1, NULL, NULL, '2017-12-02 07:52:52', '2017-12-02 07:52:52'),
(65, 4, 'BN-684', 'Id suscipit saepe autem sit et dolore.', 0, '1316618007515', 1, 98, 1, 0, 1, NULL, NULL, '2017-12-02 07:52:52', '2017-12-02 07:52:52'),
(66, 4, 'BN-128', 'Est dolor qui et et molestiae.', 0, '2314229999624', 8, 768, 1, 0, 1, NULL, NULL, '2017-12-02 07:52:52', '2017-12-02 07:52:52'),
(67, 4, 'BN-003', 'Quos animi ut accusantium ut.', 0, '9279979466174', 5, 70, 1, 0, 1, NULL, NULL, '2017-12-02 07:52:52', '2017-12-02 07:52:52'),
(68, 4, 'BN-711', 'Nesciunt cum est dolore quis.', 0, '3183374710304', 9, 548, 1, 0, 1, NULL, NULL, '2017-12-02 07:52:52', '2017-12-02 07:52:52'),
(69, 4, 'BN-612', 'Et recusandae quia nobis vero.', 0, '0541727862736', 3, 436, 1, 0, 1, NULL, NULL, '2017-12-02 07:52:53', '2017-12-02 07:52:53'),
(70, 4, 'BN-906', 'Sunt qui veritatis et aspernatur beatae nemo ut.', 0, '2737858384638', 5, 494, 1, 0, 1, NULL, NULL, '2017-12-02 07:52:53', '2017-12-02 07:52:53'),
(71, 4, 'BN-993', 'Quo beatae possimus consequatur similique labore.', 0, '3596122431152', 3, 295, 1, 0, 1, NULL, NULL, '2017-12-02 07:52:53', '2017-12-02 07:52:53'),
(72, 4, 'BN-932', 'Eligendi ipsum officia accusantium veniam.', 0, '0009904116602', 7, 560, 1, 0, 1, NULL, NULL, '2017-12-02 07:52:53', '2017-12-02 07:52:53'),
(73, 4, 'BN-603', 'Esse voluptate molestias unde autem voluptas saepe facilis eum.', 1, '8278981098503', 3, 984, 1, 0, 1, NULL, NULL, '2017-12-02 07:52:53', '2017-12-02 07:52:53'),
(74, 4, 'BN-198', 'Voluptatem esse eos non dolor.', 0, '7852413081137', 2, 567, 1, 0, 1, NULL, NULL, '2017-12-02 07:52:53', '2017-12-02 07:52:53'),
(75, 4, 'BN-692', 'Laborum eligendi voluptas at.', 0, '6232226929061', 5, 682, 1, 0, 1, NULL, NULL, '2017-12-02 07:52:53', '2017-12-02 07:52:53'),
(76, 4, 'BN-735', 'Quia itaque eum eum est quaerat hic.', 0, '3903745538425', 7, 445, 1, 0, 1, NULL, NULL, '2017-12-02 07:52:54', '2017-12-02 07:52:54'),
(77, 4, 'BN-804', 'Ut architecto veritatis nesciunt omnis aliquam impedit blanditiis.', 0, '5049550611255', 6, 914, 1, 0, 1, NULL, NULL, '2017-12-02 07:52:54', '2017-12-02 07:52:54'),
(78, 4, 'BN-444', 'Sit accusamus quo minus deserunt quisquam.', 0, '9867892311314', 8, 467, 1, 0, 1, NULL, NULL, '2017-12-02 07:52:54', '2017-12-02 07:52:54'),
(79, 4, 'BN-554', 'Accusamus iste expedita esse et alias.', 1, '5367840174694', 9, 494, 1, 0, 1, NULL, NULL, '2017-12-02 07:52:54', '2017-12-02 07:52:54'),
(80, 4, 'BN-105', 'Expedita aspernatur aut eum reprehenderit.', 0, '2835190423807', 7, 196, 1, 0, 1, NULL, NULL, '2017-12-02 07:52:55', '2017-12-02 07:52:55'),
(81, 5, 'BN-657', 'Perspiciatis quaerat aut non inventore dolores quis perferendis eius.', 0, '2550054968576', 4, 518, 1, 0, 1, NULL, NULL, '2017-12-02 07:52:55', '2017-12-02 07:52:55'),
(82, 5, 'BN-364', 'Occaecati libero at quae dolor explicabo itaque sequi.', 0, '8487911975733', 4, 816, 1, 0, 1, NULL, NULL, '2017-12-02 07:52:55', '2017-12-02 07:52:55'),
(83, 5, 'BN-788', 'Soluta est debitis quisquam est laboriosam.', 0, '1050831660743', 4, 74, 1, 0, 1, NULL, NULL, '2017-12-02 07:52:55', '2017-12-02 07:52:55'),
(84, 5, 'BN-533', 'Molestiae impedit est molestias ut ut deleniti.', 0, '9684008800322', 6, 299, 1, 0, 1, NULL, NULL, '2017-12-02 07:52:55', '2017-12-02 07:52:55'),
(85, 5, 'BN-382', 'Odio quaerat dolorem nemo enim ducimus possimus fugiat.', 0, '1963244943177', 3, 248, 1, 0, 1, NULL, NULL, '2017-12-02 07:52:55', '2017-12-02 07:52:55'),
(86, 5, 'BN-468', 'Et libero et perspiciatis ullam vero assumenda.', 0, '6049815663370', 5, 606, 1, 0, 1, NULL, NULL, '2017-12-02 07:52:55', '2017-12-02 07:52:55'),
(87, 5, 'BN-665', 'Odit omnis impedit aut iure rerum eius molestiae voluptas.', 0, '3426417416857', 8, 61, 1, 0, 1, NULL, NULL, '2017-12-02 07:52:55', '2017-12-02 07:52:55'),
(88, 5, 'BN-463', 'Ab libero officia ullam sed quasi aut.', 0, '6011122160569', 3, 20, 1, 0, 1, NULL, NULL, '2017-12-02 07:52:55', '2017-12-02 07:52:55'),
(89, 5, 'BN-979', 'Eos deleniti iusto voluptate veritatis delectus architecto sit.', 0, '1827012827680', 1, 391, 1, 0, 1, NULL, NULL, '2017-12-02 07:52:55', '2017-12-02 07:52:55'),
(90, 5, 'BN-762', 'Non et temporibus minima aspernatur voluptates qui.', 0, '0719427697228', 5, 493, 1, 0, 1, NULL, NULL, '2017-12-02 07:52:55', '2017-12-02 07:52:55'),
(91, 5, 'BN-741', 'Consequatur aliquid ut et enim sed maiores illo.', 0, '1752024673843', 5, 728, 1, 0, 1, NULL, NULL, '2017-12-02 07:52:55', '2017-12-02 07:52:55'),
(92, 5, 'BN-863', 'Dolor aut voluptas rerum enim quae sed labore ad.', 1, '6207820488290', 1, 573, 1, 0, 1, NULL, NULL, '2017-12-02 07:52:56', '2017-12-02 07:52:56'),
(93, 5, 'BN-420', 'Sint qui aliquam natus harum in.', 0, '2739276745671', 6, 420, 1, 0, 1, NULL, NULL, '2017-12-02 07:52:56', '2017-12-02 07:52:56'),
(94, 5, 'BN-778', 'Et ut temporibus similique consequatur sed.', 1, '4713690699572', 1, 382, 1, 0, 1, NULL, NULL, '2017-12-02 07:52:56', '2017-12-02 07:52:56'),
(95, 5, 'BN-279', 'Voluptates aut quia harum ab veritatis officia.', 1, '5314700109938', 6, 543, 1, 0, 1, NULL, NULL, '2017-12-02 07:52:56', '2017-12-02 07:52:56'),
(96, 5, 'BN-416', 'Dolore earum earum voluptatem iusto qui ullam corrupti.', 0, '8882784766110', 4, 582, 1, 0, 1, NULL, NULL, '2017-12-02 07:52:56', '2017-12-02 07:52:56'),
(97, 5, 'BN-734', 'Impedit cupiditate libero est cum.', 1, '2403182211840', 6, 708, 1, 0, 1, NULL, NULL, '2017-12-02 07:52:56', '2017-12-02 07:52:56'),
(98, 5, 'BN-627', 'Dolore laborum est aut sed vel quos doloremque.', 0, '6991412488057', 8, 813, 1, 0, 1, NULL, NULL, '2017-12-02 07:52:56', '2017-12-02 07:52:56'),
(99, 5, 'BN-644', 'Est est mollitia reiciendis sapiente.', 1, '9475236409339', 6, 323, 1, 0, 1, NULL, NULL, '2017-12-02 07:52:56', '2017-12-02 07:52:56'),
(100, 5, 'BN-303', 'Ut est totam maiores et magnam.', 0, '0593155562634', 4, 17, 1, 0, 1, NULL, NULL, '2017-12-02 07:52:56', '2017-12-02 07:52:56'),
(101, 6, 'BN-050', 'Velit nemo incidunt id error.', 1, '2059382596784', 9, 562, 1, 0, 1, NULL, NULL, '2017-12-02 07:52:57', '2017-12-02 07:52:57'),
(102, 6, 'BN-117', 'Doloremque accusantium a necessitatibus iure.', 1, '3843008385468', 6, 501, 1, 0, 1, NULL, NULL, '2017-12-02 07:52:57', '2017-12-02 07:52:57'),
(103, 6, 'BN-335', 'Exercitationem itaque numquam totam id amet sequi.', 0, '2448537222546', 5, 277, 1, 0, 1, NULL, NULL, '2017-12-02 07:52:57', '2017-12-02 07:52:57'),
(104, 6, 'BN-396', 'Ducimus possimus dicta voluptatum quo culpa reprehenderit officia est.', 0, '0950869124389', 6, 504, 1, 0, 1, NULL, NULL, '2017-12-02 07:52:57', '2017-12-02 07:52:57'),
(105, 6, 'BN-286', 'Incidunt magni dolorem voluptas omnis.', 0, '7760783635716', 1, 696, 1, 0, 1, NULL, NULL, '2017-12-02 07:52:57', '2017-12-02 07:52:57'),
(106, 6, 'BN-650', 'Numquam nihil perferendis atque impedit autem illo.', 0, '0863723564545', 9, 962, 1, 0, 1, NULL, NULL, '2017-12-02 07:52:57', '2017-12-02 07:52:57'),
(107, 6, 'BN-185', 'Odio rem pariatur voluptatum vero.', 1, '2821037382086', 7, 764, 1, 0, 1, NULL, NULL, '2017-12-02 07:52:57', '2017-12-02 07:52:57'),
(108, 6, 'BN-036', 'Ut molestiae eum dolor est nulla.', 0, '0689992475869', 8, 671, 1, 0, 1, NULL, NULL, '2017-12-02 07:52:57', '2017-12-02 07:52:57'),
(109, 6, 'BN-648', 'Et voluptates ipsum vel commodi vel aut mollitia.', 1, '8308687158390', 9, 819, 1, 0, 1, NULL, NULL, '2017-12-02 07:52:58', '2017-12-02 07:52:58'),
(110, 6, 'BN-893', 'Officiis at voluptas iusto minima voluptatem dolores tempore.', 0, '5032339253371', 9, 327, 1, 0, 1, NULL, NULL, '2017-12-02 07:52:58', '2017-12-02 07:52:58'),
(111, 6, 'BN-356', 'Rerum quam veritatis et nesciunt aspernatur velit nihil.', 0, '3201901713151', 3, 193, 1, 0, 1, NULL, NULL, '2017-12-02 07:52:58', '2017-12-02 07:52:58'),
(112, 6, 'BN-628', 'Et et sint et enim tempora in.', 0, '3997012133512', 7, 317, 1, 0, 1, NULL, NULL, '2017-12-02 07:52:58', '2017-12-02 07:52:58'),
(113, 6, 'BN-358', 'Ad corrupti fugit expedita magnam ex ut.', 0, '7317249465679', 6, 571, 1, 0, 1, NULL, NULL, '2017-12-02 07:52:58', '2017-12-02 07:52:58'),
(114, 6, 'BN-305', 'Enim recusandae rem maiores autem dolores.', 0, '3627237625669', 6, 193, 1, 0, 1, NULL, NULL, '2017-12-02 07:52:58', '2017-12-02 07:52:58'),
(115, 6, 'BN-150', 'Animi et et non quis.', 0, '9291928108195', 5, 794, 1, 0, 1, NULL, NULL, '2017-12-02 07:52:58', '2017-12-02 07:52:58'),
(116, 6, 'BN-491', 'Omnis blanditiis cumque quisquam voluptatem deleniti aut repellat.', 0, '2662539988013', 7, 856, 1, 0, 1, NULL, NULL, '2017-12-02 07:52:58', '2017-12-02 07:52:58'),
(117, 6, 'BN-298', 'Quae beatae quidem est libero aliquid.', 0, '7790164181990', 7, 686, 1, 0, 1, NULL, NULL, '2017-12-02 07:52:58', '2017-12-02 07:52:58'),
(118, 6, 'BN-565', 'Sequi iste et nemo consequuntur.', 0, '4384791132239', 3, 586, 1, 0, 1, NULL, NULL, '2017-12-02 07:52:58', '2017-12-02 07:52:58'),
(119, 6, 'BN-366', 'Sit consequuntur ut voluptas commodi nam odio.', 0, '4929878084027', 5, 982, 1, 0, 1, NULL, NULL, '2017-12-02 07:52:58', '2017-12-02 07:52:58'),
(120, 6, 'BN-947', 'Sed repellendus ducimus nostrum ut exercitationem.', 0, '1188970829339', 9, 94, 1, 0, 1, NULL, NULL, '2017-12-02 07:52:59', '2017-12-02 07:52:59'),
(121, 7, 'BN-996', 'Non perferendis qui explicabo.', 1, '0134893164539', 9, 729, 1, 0, 1, NULL, NULL, '2017-12-02 07:52:59', '2017-12-02 07:52:59'),
(122, 7, 'BN-472', 'Doloribus sed asperiores occaecati dolore perspiciatis aliquam ipsa.', 0, '0195316507623', 0, 176, 1, 0, 1, NULL, NULL, '2017-12-02 07:52:59', '2017-12-02 07:52:59'),
(123, 7, 'BN-613', 'Asperiores fuga id rerum alias reiciendis consequatur.', 0, '0707033311133', 2, 308, 1, 0, 1, NULL, NULL, '2017-12-02 07:52:59', '2017-12-02 07:52:59'),
(124, 7, 'BN-123', 'Error omnis impedit modi necessitatibus cupiditate nobis.', 0, '6247493426526', 6, 124, 1, 0, 1, NULL, NULL, '2017-12-02 07:52:59', '2017-12-02 07:52:59'),
(125, 7, 'BN-293', 'Est libero et eum atque quos deleniti impedit.', 0, '3972007393300', 2, 148, 1, 0, 1, NULL, NULL, '2017-12-02 07:52:59', '2017-12-02 07:52:59'),
(126, 7, 'BN-496', 'Consectetur et architecto molestiae repellat cumque.', 0, '5693123691115', 3, 613, 1, 0, 1, NULL, NULL, '2017-12-02 07:52:59', '2017-12-02 07:52:59'),
(127, 7, 'BN-424', 'Porro repudiandae sint dolorem eum.', 1, '1706065172698', 1, 16, 1, 0, 1, NULL, NULL, '2017-12-02 07:52:59', '2017-12-02 07:52:59'),
(128, 7, 'BN-979', 'Et dignissimos itaque aliquam aut ut consequatur iusto.', 1, '6850455421462', 3, 722, 1, 0, 1, NULL, NULL, '2017-12-02 07:52:59', '2017-12-02 07:52:59'),
(129, 7, 'BN-856', 'Pariatur eaque ut voluptatibus mollitia esse quaerat.', 0, '1362875013677', 7, 856, 1, 0, 1, NULL, NULL, '2017-12-02 07:52:59', '2017-12-02 07:52:59'),
(130, 7, 'BN-160', 'Sit fugiat architecto aut perspiciatis.', 0, '0822781910367', 3, 385, 1, 0, 1, NULL, NULL, '2017-12-02 07:52:59', '2017-12-02 07:52:59'),
(131, 7, 'BN-142', 'Alias soluta error ut iure.', 0, '2844596875530', 4, 26, 1, 0, 1, NULL, NULL, '2017-12-02 07:52:59', '2017-12-02 07:52:59'),
(132, 7, 'BN-888', 'Quibusdam ipsam expedita voluptatem atque nesciunt atque velit quidem.', 0, '3774755171724', 9, 977, 1, 0, 1, NULL, NULL, '2017-12-02 07:52:59', '2017-12-02 07:52:59'),
(133, 7, 'BN-812', 'Voluptas enim quam repudiandae consequatur et quae.', 0, '1220399060211', 2, 679, 1, 0, 1, NULL, NULL, '2017-12-02 07:53:00', '2017-12-02 07:53:00'),
(134, 7, 'BN-140', 'Necessitatibus maiores est quo unde sed.', 0, '1557299571937', 6, 215, 1, 0, 1, NULL, NULL, '2017-12-02 07:53:00', '2017-12-02 07:53:00'),
(135, 7, 'BN-413', 'Est est quod animi quibusdam id fugiat quam nam.', 0, '7075641527332', 6, 575, 1, 0, 1, NULL, NULL, '2017-12-02 07:53:00', '2017-12-02 07:53:00'),
(136, 7, 'BN-103', 'Odio quia qui vitae accusantium reprehenderit aut doloremque.', 0, '7954140615187', 4, 533, 1, 0, 1, NULL, NULL, '2017-12-02 07:53:00', '2017-12-02 07:53:00'),
(137, 7, 'BN-433', 'Quaerat voluptates et vero et excepturi.', 0, '2579046224254', 0, 196, 1, 0, 1, NULL, NULL, '2017-12-02 07:53:00', '2017-12-02 07:53:00'),
(138, 7, 'BN-467', 'Sequi quibusdam quia numquam modi reprehenderit eaque sed sed.', 0, '0623902874052', 5, 998, 1, 0, 1, NULL, NULL, '2017-12-02 07:53:00', '2017-12-02 07:53:00'),
(139, 7, 'BN-696', 'Numquam ducimus et mollitia ipsum inventore corrupti perspiciatis.', 0, '4353673897412', 8, 164, 1, 0, 1, NULL, NULL, '2017-12-02 07:53:00', '2017-12-02 07:53:00'),
(140, 7, 'BN-453', 'Et ad sed rerum cum.', 1, '1791944559837', 5, 902, 1, 0, 1, NULL, NULL, '2017-12-02 07:53:00', '2017-12-02 07:53:00'),
(141, 8, 'BN-589', 'Et ut a facere rerum.', 1, '6426375650765', 6, 721, 1, 0, 1, NULL, NULL, '2017-12-02 07:53:00', '2017-12-02 07:53:00'),
(142, 8, 'BN-643', 'Laboriosam est reiciendis facere repellendus perferendis ut quia.', 0, '5753678099276', 7, 318, 1, 0, 1, NULL, NULL, '2017-12-02 07:53:01', '2017-12-02 07:53:01'),
(143, 8, 'BN-840', 'Aliquam iure doloremque omnis ea accusamus.', 0, '3352215017791', 5, 718, 1, 0, 1, NULL, NULL, '2017-12-02 07:53:01', '2017-12-02 07:53:01'),
(144, 8, 'BN-374', 'Et eveniet eveniet sed dolores.', 0, '7083641934333', 7, 723, 1, 0, 1, NULL, NULL, '2017-12-02 07:53:01', '2017-12-02 07:53:01'),
(145, 8, 'BN-995', 'Omnis saepe sint doloribus asperiores sunt porro vel.', 0, '8330226561675', 9, 818, 1, 0, 1, NULL, NULL, '2017-12-02 07:53:01', '2017-12-02 07:53:01'),
(146, 8, 'BN-899', 'Dolorum voluptatem saepe eius animi.', 1, '9112567651739', 2, 688, 1, 0, 1, NULL, NULL, '2017-12-02 07:53:01', '2017-12-02 07:53:01'),
(147, 8, 'BN-654', 'Explicabo doloremque odio et.', 0, '3014259559209', 3, 40, 1, 0, 1, NULL, NULL, '2017-12-02 07:53:01', '2017-12-02 07:53:01'),
(148, 8, 'BN-029', 'Dignissimos voluptatem minus ab eaque at sint fugit.', 1, '5073796497618', 8, 933, 1, 0, 1, NULL, NULL, '2017-12-02 07:53:01', '2017-12-02 07:53:01'),
(149, 8, 'BN-250', 'A unde eveniet ipsam eaque nihil sed rem.', 0, '1151860241801', 8, 999, 1, 0, 1, NULL, NULL, '2017-12-02 07:53:01', '2017-12-02 07:53:01'),
(150, 8, 'BN-708', 'Est reprehenderit temporibus autem velit corporis sit voluptas.', 0, '3427477315746', 5, 47, 1, 0, 1, NULL, NULL, '2017-12-02 07:53:01', '2017-12-02 07:53:01'),
(151, 8, 'BN-384', 'Vel quisquam incidunt dolores est.', 0, '5989274957171', 6, 727, 1, 0, 1, NULL, NULL, '2017-12-02 07:53:01', '2017-12-02 07:53:01'),
(152, 8, 'BN-236', 'Ut hic nihil et sint eos.', 0, '5704541710835', 5, 120, 1, 0, 1, NULL, NULL, '2017-12-02 07:53:01', '2017-12-02 07:53:01'),
(153, 8, 'BN-083', 'Qui vitae aut et aliquid itaque omnis sit.', 0, '1427535337682', 2, 188, 1, 0, 1, NULL, NULL, '2017-12-02 07:53:01', '2017-12-02 07:53:01'),
(154, 8, 'BN-949', 'Repudiandae odio beatae quia amet et asperiores dolor animi.', 0, '2425667312385', 0, 749, 1, 0, 1, NULL, NULL, '2017-12-02 07:53:01', '2017-12-02 07:53:01'),
(155, 8, 'BN-709', 'Rerum dolorem dolore repellat sapiente.', 0, '7244030117984', 9, 781, 1, 0, 1, NULL, NULL, '2017-12-02 07:53:01', '2017-12-02 07:53:01'),
(156, 8, 'BN-763', 'Quas dolore ipsum et quam.', 0, '1566258210190', 3, 591, 1, 0, 1, NULL, NULL, '2017-12-02 07:53:01', '2017-12-02 07:53:01'),
(157, 8, 'BN-440', 'Eligendi perferendis ea error dicta nesciunt.', 0, '1858383058809', 5, 9, 1, 0, 1, NULL, NULL, '2017-12-02 07:53:01', '2017-12-02 07:53:01'),
(158, 8, 'BN-576', 'Facere aut ipsum in eveniet quisquam veritatis pariatur.', 0, '1976530623479', 6, 381, 1, 0, 1, NULL, NULL, '2017-12-02 07:53:01', '2017-12-02 07:53:01'),
(159, 8, 'BN-779', 'Dicta illum praesentium sed deserunt nesciunt officia.', 1, '1845646349217', 1, 650, 1, 0, 1, NULL, NULL, '2017-12-02 07:53:01', '2017-12-02 07:53:01'),
(160, 8, 'BN-090', 'Suscipit dolores est harum facilis sed magnam.', 1, '1940526455825', 1, 632, 1, 0, 1, NULL, NULL, '2017-12-02 07:53:01', '2017-12-02 07:53:01'),
(161, 9, 'BN-071', 'Vero aliquid beatae corrupti quis doloremque eveniet.', 0, '0761787517500', 8, 651, 1, 0, 1, NULL, NULL, '2017-12-02 07:53:01', '2017-12-02 07:53:01'),
(162, 9, 'BN-071', 'Optio sed perferendis molestiae veniam esse id quia.', 0, '8352583747615', 4, 121, 1, 0, 1, NULL, NULL, '2017-12-02 07:53:02', '2017-12-02 07:53:02'),
(163, 9, 'BN-827', 'Vitae aspernatur in animi corporis sequi non soluta.', 0, '4872510421363', 5, 460, 1, 0, 1, NULL, NULL, '2017-12-02 07:53:02', '2017-12-02 07:53:02'),
(164, 9, 'BN-658', 'Voluptatibus ut sit laudantium temporibus.', 0, '4158332908672', 1, 706, 1, 0, 1, NULL, NULL, '2017-12-02 07:53:02', '2017-12-02 07:53:02'),
(165, 9, 'BN-728', 'Officiis eum commodi voluptate voluptatem incidunt commodi.', 0, '2940279501724', 9, 360, 1, 0, 1, NULL, NULL, '2017-12-02 07:53:02', '2017-12-02 07:53:02'),
(166, 9, 'BN-446', 'Sunt officiis et quo qui commodi sed repellendus.', 0, '7594396359413', 5, 431, 1, 0, 1, NULL, NULL, '2017-12-02 07:53:02', '2017-12-02 07:53:02'),
(167, 9, 'BN-199', 'Nemo et aperiam autem molestiae.', 0, '2325717957682', 4, 128, 1, 0, 1, NULL, NULL, '2017-12-02 07:53:02', '2017-12-02 07:53:02'),
(168, 9, 'BN-196', 'Ut error eum cumque occaecati possimus illo rerum.', 1, '3400236038124', 2, 538, 1, 0, 1, NULL, NULL, '2017-12-02 07:53:02', '2017-12-02 07:53:02'),
(169, 9, 'BN-908', 'Harum voluptatem et qui aut quis minima.', 1, '5578650356365', 7, 433, 1, 0, 1, NULL, NULL, '2017-12-02 07:53:02', '2017-12-02 07:53:02'),
(170, 9, 'BN-844', 'Reiciendis rem qui autem doloremque rerum.', 1, '9401221141670', 0, 819, 1, 0, 1, NULL, NULL, '2017-12-02 07:53:02', '2017-12-02 07:53:02'),
(171, 9, 'BN-274', 'Culpa officia tempore magni est sapiente.', 1, '8175393123666', 5, 815, 1, 0, 1, NULL, NULL, '2017-12-02 07:53:02', '2017-12-02 07:53:02'),
(172, 9, 'BN-007', 'Dolores voluptas nostrum blanditiis delectus saepe nostrum accusantium quas.', 0, '0418395789651', 8, 973, 1, 0, 1, NULL, NULL, '2017-12-02 07:53:02', '2017-12-02 07:53:02'),
(173, 9, 'BN-706', 'Vel est est voluptatem et laborum provident quisquam modi.', 0, '1127407805300', 4, 999, 1, 0, 1, NULL, NULL, '2017-12-02 07:53:02', '2017-12-02 07:53:02'),
(174, 9, 'BN-692', 'Pariatur ipsa ab labore omnis magnam fuga cum.', 0, '1834968483778', 3, 41, 1, 0, 1, NULL, NULL, '2017-12-02 07:53:02', '2017-12-02 07:53:02'),
(175, 9, 'BN-786', 'Ut eum minus ipsum.', 0, '0482071398499', 4, 208, 1, 0, 1, NULL, NULL, '2017-12-02 07:53:02', '2017-12-02 07:53:02'),
(176, 9, 'BN-417', 'Quo quidem cumque laborum est.', 0, '3106299065977', 7, 81, 1, 0, 1, NULL, NULL, '2017-12-02 07:53:02', '2017-12-02 07:53:02'),
(177, 9, 'BN-121', 'Occaecati quas voluptatem et incidunt perferendis veniam et.', 0, '2093568262650', 8, 860, 1, 0, 1, NULL, NULL, '2017-12-02 07:53:02', '2017-12-02 07:53:02'),
(178, 9, 'BN-324', 'Impedit consequatur esse voluptas ad.', 0, '5243943801623', 8, 388, 1, 0, 1, NULL, NULL, '2017-12-02 07:53:02', '2017-12-02 07:53:02'),
(179, 9, 'BN-383', 'Rem omnis unde culpa aut tempore nulla corrupti.', 0, '9648906950763', 7, 620, 1, 0, 1, NULL, NULL, '2017-12-02 07:53:02', '2017-12-02 07:53:02'),
(180, 9, 'BN-162', 'Quos labore voluptas sit inventore ullam.', 0, '3774578299353', 6, 377, 1, 0, 1, NULL, NULL, '2017-12-02 07:53:02', '2017-12-02 07:53:02'),
(181, 10, 'BN-595', 'A modi facilis quia ipsum ipsam.', 0, '4933885245234', 1, 894, 1, 0, 1, NULL, NULL, '2017-12-02 07:53:02', '2017-12-02 07:53:02'),
(182, 10, 'BN-784', 'Est temporibus nihil ipsa eum.', 1, '2396958996013', 8, 686, 1, 0, 1, NULL, NULL, '2017-12-02 07:53:03', '2017-12-02 07:53:03'),
(183, 10, 'BN-690', 'Asperiores esse dolore sunt repellendus ipsam culpa eius.', 0, '4583654740417', 8, 307, 1, 0, 1, NULL, NULL, '2017-12-02 07:53:03', '2017-12-02 07:53:03'),
(184, 10, 'BN-866', 'Quos tenetur quae voluptas qui et et.', 0, '8771744727356', 2, 571, 1, 0, 1, NULL, NULL, '2017-12-02 07:53:03', '2017-12-02 07:53:03'),
(185, 10, 'BN-560', 'Placeat omnis et quos commodi et consequatur sit.', 0, '3999463957716', 5, 685, 1, 0, 1, NULL, NULL, '2017-12-02 07:53:03', '2017-12-02 07:53:03'),
(186, 10, 'BN-998', 'Et harum et quasi hic in non saepe debitis.', 0, '7272004769655', 3, 272, 1, 0, 1, NULL, NULL, '2017-12-02 07:53:03', '2017-12-02 07:53:03'),
(187, 10, 'BN-551', 'Et delectus culpa praesentium sunt labore beatae.', 0, '1023629797617', 4, 307, 1, 0, 1, NULL, NULL, '2017-12-02 07:53:03', '2017-12-02 07:53:03'),
(188, 10, 'BN-584', 'Fuga est beatae optio inventore sapiente non natus excepturi.', 0, '1962902560992', 3, 676, 1, 0, 1, NULL, NULL, '2017-12-02 07:53:03', '2017-12-02 07:53:03'),
(189, 10, 'BN-458', 'Atque modi dolor in perspiciatis occaecati voluptatem autem.', 0, '9605687243972', 7, 990, 1, 0, 1, NULL, NULL, '2017-12-02 07:53:03', '2017-12-02 07:53:03'),
(190, 10, 'BN-046', 'Alias occaecati eius ut iure aut alias.', 1, '9345745124552', 7, 983, 1, 0, 1, NULL, NULL, '2017-12-02 07:53:03', '2017-12-02 07:53:03'),
(191, 10, 'BN-168', 'Reiciendis aut quia incidunt aut consequuntur quibusdam.', 0, '7206396366215', 4, 546, 1, 0, 1, NULL, NULL, '2017-12-02 07:53:03', '2017-12-02 07:53:03'),
(192, 10, 'BN-754', 'Voluptas atque possimus qui totam culpa.', 0, '5585195053840', 6, 639, 1, 0, 1, NULL, NULL, '2017-12-02 07:53:03', '2017-12-02 07:53:03'),
(193, 10, 'BN-394', 'Iure veritatis sunt nihil et deleniti rerum natus expedita.', 0, '2217600974183', 1, 91, 1, 0, 1, NULL, NULL, '2017-12-02 07:53:03', '2017-12-02 07:53:03'),
(194, 10, 'BN-267', 'Pariatur recusandae sapiente neque.', 0, '3943315778769', 1, 389, 1, 0, 1, NULL, NULL, '2017-12-02 07:53:03', '2017-12-02 07:53:03'),
(195, 10, 'BN-999', 'Dignissimos ea dicta quia.', 0, '5415973432904', 9, 364, 1, 0, 1, NULL, NULL, '2017-12-02 07:53:03', '2017-12-02 07:53:03'),
(196, 10, 'BN-334', 'Est quod aut minus est.', 0, '5411469920399', 2, 525, 1, 0, 1, NULL, NULL, '2017-12-02 07:53:03', '2017-12-02 07:53:03'),
(197, 10, 'BN-701', 'Et in aut temporibus facilis unde.', 0, '3507446244007', 3, 15, 1, 0, 1, NULL, NULL, '2017-12-02 07:53:03', '2017-12-02 07:53:03'),
(198, 10, 'BN-915', 'Nemo id accusamus eaque.', 0, '7112731855385', 5, 894, 1, 0, 1, NULL, NULL, '2017-12-02 07:53:03', '2017-12-02 07:53:03'),
(199, 10, 'BN-576', 'Quia qui quo sint voluptatem tenetur.', 0, '2590225412194', 4, 361, 1, 0, 1, NULL, NULL, '2017-12-02 07:53:03', '2017-12-02 07:53:03'),
(200, 10, 'BN-627', 'Sint id quibusdam neque laboriosam et.', 0, '0576338980180', 8, 506, 1, 0, 1, NULL, NULL, '2017-12-02 07:53:03', '2017-12-02 07:53:03');

-- --------------------------------------------------------

--
-- Table structure for table `suppliers`
--

CREATE TABLE `suppliers` (
  `id` int(10) UNSIGNED NOT NULL,
  `supplierName` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `location` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `website` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `isBlocked` tinyint(1) NOT NULL DEFAULT '0',
  `isApproved` tinyint(1) NOT NULL DEFAULT '1',
  `email` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` longtext COLLATE utf8mb4_unicode_ci,
  `remarks` longtext COLLATE utf8mb4_unicode_ci,
  `supplierDiscount` decimal(8,2) DEFAULT NULL,
  `supplies` text COLLATE utf8mb4_unicode_ci,
  `hash` text COLLATE utf8mb4_unicode_ci,
  `companyId` int(10) UNSIGNED NOT NULL,
  `updatedBy` int(10) UNSIGNED NOT NULL,
  `createdBy` int(10) UNSIGNED NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `suppliers`
--

INSERT INTO `suppliers` (`id`, `supplierName`, `address`, `location`, `website`, `isBlocked`, `isApproved`, `email`, `phone`, `remarks`, `supplierDiscount`, `supplies`, `hash`, `companyId`, `updatedBy`, `createdBy`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 'Powlowski Ltd', '26477 Lelia Ramp', '81341', 'bogan.com', 0, 1, 'evie73@adams.com', '897-470-5282', NULL, NULL, NULL, NULL, 1, 0, 1, NULL, '2017-12-02 07:55:56', '2017-12-02 07:55:56'),
(2, 'Torp, Kuphal and Carter', '8345 Frami Mountains', '7601', 'klocko.com', 0, 1, 'gorczany.eddie@yahoo.com', '1-940-895-8569', NULL, NULL, NULL, NULL, 1, 0, 1, NULL, '2017-12-02 07:55:56', '2017-12-02 07:55:56'),
(3, 'Stanton PLC', '321 Easton Inlet', '900', 'satterfield.com', 0, 1, 'garth45@yahoo.com', '(643) 222-7160 x76703', NULL, NULL, NULL, NULL, 1, 0, 1, NULL, '2017-12-02 07:55:56', '2017-12-02 07:55:56'),
(4, 'Shields Group', '255 Lowe Underpass', '19269', 'kilback.org', 0, 1, 'hrunte@gmail.com', '(887) 530-1640', NULL, NULL, NULL, NULL, 1, 0, 1, NULL, '2017-12-02 07:55:56', '2017-12-02 07:55:56'),
(5, 'Dickens, Dare and Quigley', '1141 White Wells', '98076', 'streich.com', 0, 1, 'carolyne46@hotmail.com', '(712) 247-2117', NULL, NULL, NULL, NULL, 1, 0, 1, NULL, '2017-12-02 07:55:56', '2017-12-02 07:55:56'),
(6, 'O\'Conner, Davis and Trantow', '518 Rozella Track Apt. 741', '338', 'bins.biz', 0, 1, 'nathanial55@yahoo.com', '(818) 348-9507 x07425', NULL, NULL, NULL, NULL, 1, 0, 1, NULL, '2017-12-02 07:55:56', '2017-12-02 07:55:56'),
(7, 'Rosenbaum Group', '39082 Schuppe Fork Suite 053', '231', 'muller.net', 0, 1, 'ugerhold@hotmail.com', '+1.576.693.9342', NULL, NULL, NULL, NULL, 1, 0, 1, NULL, '2017-12-02 07:55:56', '2017-12-02 07:55:56'),
(8, 'Bruen, Christiansen and Denesik', '951 Thalia Crossroad Apt. 137', '643', 'klein.info', 0, 1, 'renner.crystel@frami.net', '(634) 325-4220 x404', NULL, NULL, NULL, NULL, 1, 0, 1, NULL, '2017-12-02 07:55:57', '2017-12-02 07:55:57'),
(9, 'Ruecker-Hauck', '9919 Morar Crossing Suite 294', '963', 'trantow.org', 0, 1, 'cicero69@hotmail.com', '+1-382-613-0072', NULL, NULL, NULL, NULL, 1, 0, 1, NULL, '2017-12-02 07:55:57', '2017-12-02 07:55:57'),
(10, 'Gerhold, Beier and Stark', '977 Hipolito Village Apt. 213', '2878', 'fadel.net', 0, 1, 'ronaldo65@hotmail.com', '617.738.8207', NULL, NULL, NULL, NULL, 1, 0, 1, NULL, '2017-12-02 07:55:57', '2017-12-02 07:55:57'),
(11, 'Bradtke, Gaylord and Crooks', '7484 Larson Meadows Suite 005', '56155', 'raynor.info', 0, 1, 'vito81@parker.org', '(735) 808-7422 x482', NULL, NULL, NULL, NULL, 1, 0, 1, NULL, '2017-12-02 07:55:57', '2017-12-02 07:55:57'),
(12, 'Bartell Inc', '70005 Caesar Underpass Apt. 311', '8999', 'grimes.com', 0, 1, 'sauer.tia@gmail.com', '+14047561481', NULL, NULL, NULL, NULL, 1, 0, 1, NULL, '2017-12-02 07:55:57', '2017-12-02 07:55:57'),
(13, 'Streich and Sons', '9767 Sipes Run Suite 549', '19468', 'monahan.biz', 0, 1, 'amos.lang@heidenreich.net', '(842) 784-8269 x29299', NULL, NULL, NULL, NULL, 1, 0, 1, NULL, '2017-12-02 07:55:57', '2017-12-02 07:55:57'),
(14, 'Bradtke-Veum', '2816 Jade Knolls', '642', 'kautzer.org', 0, 1, 'ewitting@berge.biz', '(571) 346-4243', NULL, NULL, NULL, NULL, 1, 0, 1, NULL, '2017-12-02 07:55:57', '2017-12-02 07:55:57'),
(15, 'Corwin-Rogahn', '9072 Jaquelin Meadows', '43646', 'lemke.info', 0, 1, 'mitchell.beer@gmail.com', '1-730-775-6959 x7687', NULL, NULL, NULL, NULL, 1, 0, 1, NULL, '2017-12-02 07:55:57', '2017-12-02 07:55:57'),
(16, 'Schuppe, Zieme and Turcotte', '238 Collins Lodge', '21761', 'kulas.com', 0, 1, 'lilla.schmidt@gmail.com', '450.246.5078 x92128', NULL, NULL, NULL, NULL, 1, 0, 1, NULL, '2017-12-02 07:55:57', '2017-12-02 07:55:57'),
(17, 'Kovacek-Shields', '7733 Elizabeth Throughway', '2908', 'wiegand.net', 0, 1, 'zondricka@walsh.net', '(373) 609-1205', NULL, NULL, NULL, NULL, 1, 0, 1, NULL, '2017-12-02 07:55:57', '2017-12-02 07:55:57'),
(18, 'Kuhlman-Wiza', '590 Green Springs Apt. 535', '42049', 'gleichner.net', 0, 1, 'vbeer@abshire.biz', '+13379277314', NULL, NULL, NULL, NULL, 1, 0, 1, NULL, '2017-12-02 07:55:57', '2017-12-02 07:55:57'),
(19, 'Muller-Christiansen', '55798 Kerluke Extension Suite 918', '2763', 'monahan.com', 0, 1, 'mcglynn.johnny@hotmail.com', '+1-527-596-5309', NULL, NULL, NULL, NULL, 1, 0, 1, NULL, '2017-12-02 07:55:57', '2017-12-02 07:55:57'),
(20, 'Russel-Rodriguez', '94640 Nitzsche Radial Apt. 184', '617', 'stroman.com', 0, 1, 'skyla.lubowitz@yahoo.com', '+1.872.706.5349', NULL, NULL, NULL, NULL, 1, 0, 1, NULL, '2017-12-02 07:55:57', '2017-12-02 07:55:57'),
(21, 'Homenick-Hamill', '88125 Shayna Orchard', '8391', 'larkin.net', 0, 1, 'miles.bergnaum@hickle.com', '+1 (329) 554-5003', NULL, NULL, NULL, NULL, 1, 0, 1, NULL, '2017-12-02 07:55:57', '2017-12-02 07:55:57'),
(22, 'Carroll, Becker and Stehr', '10915 Luettgen Garden', '92726', 'turcotte.biz', 0, 1, 'daija53@spinka.com', '+1-446-678-0800', NULL, NULL, NULL, NULL, 1, 0, 1, NULL, '2017-12-02 07:55:57', '2017-12-02 07:55:57'),
(23, 'Schuster, Krajcik and Schultz', '3187 Anderson Trail Suite 263', '87346', 'smith.com', 0, 1, 'lorenzo.homenick@runte.com', '560-555-0275 x3290', NULL, NULL, NULL, NULL, 1, 0, 1, NULL, '2017-12-02 07:55:57', '2017-12-02 07:55:57'),
(24, 'Blick-Mraz', '2992 Keith Island', '5006', 'rowe.com', 0, 1, 'damion.heathcote@wunsch.com', '1-772-531-9214 x2094', NULL, NULL, NULL, NULL, 1, 0, 1, NULL, '2017-12-02 07:55:58', '2017-12-02 07:55:58'),
(25, 'Smith LLC', '660 Ezequiel Park', '495', 'carter.info', 0, 1, 'ned.schmeler@bartoletti.org', '949-306-5958 x469', NULL, NULL, NULL, NULL, 1, 0, 1, NULL, '2017-12-02 07:55:58', '2017-12-02 07:55:58'),
(26, 'Stroman LLC', '90094 Lon Way Apt. 900', '954', 'koch.info', 0, 1, 'jwisoky@gmail.com', '469-805-9144', NULL, NULL, NULL, NULL, 1, 0, 1, NULL, '2017-12-02 07:55:58', '2017-12-02 07:55:58'),
(27, 'Kozey, Langosh and Mohr', '360 Reba Valleys', '6712', 'crooks.com', 0, 1, 'imelda51@gmail.com', '+1 (728) 446-5403', NULL, NULL, NULL, NULL, 1, 0, 1, NULL, '2017-12-02 07:55:58', '2017-12-02 07:55:58'),
(28, 'Wiza-Davis', '18992 Mills Plains', '196', 'dach.com', 0, 1, 'little.ola@gmail.com', '(891) 817-8504 x0452', NULL, NULL, NULL, NULL, 1, 0, 1, NULL, '2017-12-02 07:55:58', '2017-12-02 07:55:58'),
(29, 'Wintheiser, Hettinger and Schaden', '325 Hodkiewicz Prairie Apt. 140', '5504', 'casper.com', 0, 1, 'wuckert.tyrese@gmail.com', '278-493-3886 x5131', NULL, NULL, NULL, NULL, 1, 0, 1, NULL, '2017-12-02 07:55:58', '2017-12-02 07:55:58'),
(30, 'Halvorson and Sons', '8749 Hettinger Light Suite 400', '5027', 'bogan.com', 0, 1, 'mayer.evalyn@gmail.com', '+17285487637', NULL, NULL, NULL, NULL, 1, 0, 1, NULL, '2017-12-02 07:55:58', '2017-12-02 07:55:58'),
(31, 'Kreiger, Toy and Roob', '85568 Tiana Roads Apt. 281', '3739', 'cremin.com', 0, 1, 'nziemann@farrell.com', '1-250-575-7902 x1037', NULL, NULL, NULL, NULL, 1, 0, 1, NULL, '2017-12-02 07:55:58', '2017-12-02 07:55:58'),
(32, 'Nolan, Bogan and Monahan', '2034 Khalid Mountain', '680', 'baumbach.org', 0, 1, 'akunze@gmail.com', '+1.204.708.7909', NULL, NULL, NULL, NULL, 1, 0, 1, NULL, '2017-12-02 07:55:58', '2017-12-02 07:55:58'),
(33, 'Collins-Jast', '81460 Hilpert Avenue Apt. 830', '747', 'hoeger.info', 0, 1, 'wwolff@yahoo.com', '806-693-6376 x36982', NULL, NULL, NULL, NULL, 1, 0, 1, NULL, '2017-12-02 07:55:58', '2017-12-02 07:55:58'),
(34, 'Larkin-Wiza', '853 Witting Manors', '386', 'hegmann.com', 0, 1, 'szemlak@hotmail.com', '552.558.3319 x033', NULL, NULL, NULL, NULL, 1, 0, 1, NULL, '2017-12-02 07:55:58', '2017-12-02 07:55:58'),
(35, 'Spinka-Ernser', '819 Mayer Viaduct', '4500', 'morissette.com', 0, 1, 'jared90@nicolas.org', '1-996-369-6859 x26577', NULL, NULL, NULL, NULL, 1, 0, 1, NULL, '2017-12-02 07:55:58', '2017-12-02 07:55:58'),
(36, 'Hand PLC', '46270 Noemy Grove Suite 641', '277', 'jacobi.com', 0, 1, 'claudine.mueller@hotmail.com', '831-673-2858', NULL, NULL, NULL, NULL, 1, 0, 1, NULL, '2017-12-02 07:55:58', '2017-12-02 07:55:58'),
(37, 'Kling-Legros', '391 Crona Loop', '52259', 'bauch.biz', 0, 1, 'ryleigh.carroll@yahoo.com', '+1 (663) 233-0727', NULL, NULL, NULL, NULL, 1, 0, 1, NULL, '2017-12-02 07:55:58', '2017-12-02 07:55:58'),
(38, 'Reilly-Fadel', '65282 Schumm Trace Apt. 814', '369', 'kerluke.com', 0, 1, 'tyree66@ratke.com', '(974) 845-2046 x51768', NULL, NULL, NULL, NULL, 1, 0, 1, NULL, '2017-12-02 07:55:58', '2017-12-02 07:55:58'),
(39, 'Murray, Maggio and Bahringer', '34328 Joshuah Ridge Apt. 228', '87390', 'becker.com', 0, 1, 'sasha.toy@hotmail.com', '(347) 329-8470 x242', NULL, NULL, NULL, NULL, 1, 0, 1, NULL, '2017-12-02 07:55:58', '2017-12-02 07:55:58'),
(40, 'Streich, Mayert and Denesik', '90046 Emelie Corner', '981', 'russel.com', 0, 1, 'ernesto36@yahoo.com', '(726) 445-9721', NULL, NULL, NULL, NULL, 1, 0, 1, NULL, '2017-12-02 07:55:58', '2017-12-02 07:55:58');

-- --------------------------------------------------------

--
-- Table structure for table `translations`
--

CREATE TABLE `translations` (
  `id` int(10) UNSIGNED NOT NULL,
  `languageId` int(10) UNSIGNED DEFAULT NULL,
  `module` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `language` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `orig_lang` text COLLATE utf8mb4_unicode_ci,
  `trans_lang` text COLLATE utf8mb4_unicode_ci,
  `companyId` int(10) UNSIGNED NOT NULL,
  `updatedBy` int(10) UNSIGNED NOT NULL,
  `createdBy` int(10) UNSIGNED NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(800) COLLATE utf8mb4_unicode_ci NOT NULL,
  `salutation` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `contactName` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `jobTitle` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `avatar` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `departmentId` int(11) DEFAULT NULL,
  `verified` tinyint(1) NOT NULL DEFAULT '0',
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `role_id` int(10) UNSIGNED NOT NULL DEFAULT '1',
  `companyId` int(10) UNSIGNED NOT NULL,
  `userIdHash` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `salutation`, `contactName`, `jobTitle`, `avatar`, `departmentId`, `verified`, `remember_token`, `role_id`, `companyId`, `userIdHash`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 'Dennis Wanyoike', 'dwanyoike@codedcell.com', '$2y$10$h73NEMP4F3CxNO4koVkxD.olyKjw92Zi.CE9j81CdiG/T.gzLZnoS', NULL, NULL, 'Root Account', NULL, NULL, 0, NULL, 1, 1, NULL, NULL, '2017-12-02 07:52:26', '2017-12-02 07:52:26'),
(2, 'example', 'example@example.com', '$2y$10$PRkYg0QF1Nf8R0Zrpzb74OXSZFI0YezZt8yaYTHqagPMW8wZhVPoC', NULL, NULL, 'Root Account', NULL, NULL, 0, '1OHpv89KeyPwhHwCewosj503XNqCiP8bOPq8nR5AamVpKcom9iPal9nePTJx', 1, 1, NULL, NULL, '2017-12-02 07:52:26', '2017-12-02 07:52:26'),
(3, 'dispatcher', 'dispatcher@codedcell.com', '$2y$10$CLUORGdB5y8F/nJg2pFTeukDdRXpfN3K8eCwSDwX/wuj569Gfrc3e', NULL, NULL, NULL, NULL, NULL, 0, NULL, 3, 1, NULL, NULL, '2017-12-02 07:52:26', '2017-12-02 07:52:26'),
(4, 'administrator', 'administrator@codedcell.com', '$2y$10$b7W3Kv24EAEKeLAZ/6YAKuwZSMR1SjQmcCN/AzIDD9e0vRQYv2Hfm', NULL, NULL, NULL, NULL, NULL, 0, NULL, 2, 1, NULL, NULL, '2017-12-02 07:52:27', '2017-12-02 07:52:27'),
(5, 'Deion Klocko', 'lon91@yahoo.com', 'Maxime tenetur et unde quia voluptas tempora. Reprehenderit iure ullam consequatur quaerat esse non eius voluptatem.', 'Dr.', NULL, NULL, NULL, 6, 0, NULL, 5, 1, NULL, NULL, '2017-12-02 07:52:27', '2017-12-02 07:52:27'),
(6, 'Dr. Cornelius Morissette III', 'gwendolyn.hartmann@kessler.org', 'Sed sit nihil magnam aliquid debitis reiciendis voluptate. Modi quisquam sed omnis vitae. Optio quisquam qui natus quibusdam eos perferendis autem.', 'Dr.', NULL, NULL, NULL, 8, 0, NULL, 5, 1, NULL, NULL, '2017-12-02 07:52:27', '2017-12-02 07:52:27'),
(7, 'Mariano Hessel I', 'myrtice31@parisian.com', 'Sed earum quos quibusdam quia et. In voluptatibus voluptatem deleniti et nam. Non pariatur rerum et dicta dolorum quia.', 'Prof.', NULL, NULL, NULL, 10, 0, NULL, 5, 1, NULL, NULL, '2017-12-02 07:52:27', '2017-12-02 07:52:27'),
(8, 'Davion Boehm', 'mfeeney@hotmail.com', 'Omnis repellat pariatur quia illum cum. Molestiae harum repellendus corrupti hic commodi est impedit iste. Ipsam pariatur numquam et ab sit quas. Autem occaecati perferendis minima.', 'Dr.', NULL, NULL, NULL, 3, 0, NULL, 5, 1, NULL, NULL, '2017-12-02 07:52:27', '2017-12-02 07:52:27'),
(9, 'Abel Harris II', 'zoie.bode@yahoo.com', 'Beatae rerum corporis tempore et qui. Occaecati in et vel et qui. In qui tenetur quia consequuntur unde officia.', 'Miss', NULL, NULL, NULL, 12, 0, NULL, 5, 1, NULL, NULL, '2017-12-02 07:52:27', '2017-12-02 07:52:27'),
(10, 'Kristina Kling', 'alexandro.wisoky@boehm.com', 'Consequuntur nihil soluta ut eius dolorem. Aliquid sit ut sequi et temporibus facere. Aut possimus neque error itaque voluptates. Mollitia ipsam praesentium voluptas illum.', 'Ms.', NULL, NULL, NULL, 4, 0, NULL, 5, 1, NULL, NULL, '2017-12-02 07:52:27', '2017-12-02 07:52:27'),
(11, 'Parker Donnelly', 'hardy54@aufderhar.net', 'Ratione vero aut odit repellendus id. Esse laborum aliquid delectus. Ut et at aperiam quia accusamus. Velit officia culpa eum dolores esse non.', 'Prof.', NULL, NULL, NULL, 2, 0, NULL, 5, 1, NULL, NULL, '2017-12-02 07:52:27', '2017-12-02 07:52:27'),
(12, 'Mr. Trenton Heathcote', 'qgusikowski@vonrueden.org', 'Esse amet ut saepe officiis. Fugit vel quia excepturi laboriosam. Nostrum neque autem quia delectus enim vitae.', 'Prof.', NULL, NULL, NULL, 9, 0, NULL, 5, 1, NULL, NULL, '2017-12-02 07:52:27', '2017-12-02 07:52:27'),
(13, 'Prof. Gladys Brakus', 'lucius82@labadie.org', 'Dolor et inventore magni natus hic numquam. Laudantium iusto facilis exercitationem quasi. Consectetur eveniet excepturi et magnam laborum voluptatem.', 'Dr.', NULL, NULL, NULL, 7, 0, NULL, 5, 1, NULL, NULL, '2017-12-02 07:52:27', '2017-12-02 07:52:27'),
(14, 'Roger Quigley', 'aiden36@lehner.com', 'Ex perspiciatis amet rerum veniam fugiat nihil dolor. Optio nesciunt sapiente sed facilis dignissimos ullam enim. Aut dolores eius explicabo. Alias ducimus blanditiis officia quia.', 'Mr.', NULL, NULL, NULL, 6, 0, NULL, 5, 1, NULL, NULL, '2017-12-02 07:52:27', '2017-12-02 07:52:27'),
(15, 'Delmer Wilderman', 'jace98@yahoo.com', 'Aliquam quia sint facilis. Aut aliquid totam aut.', 'Prof.', NULL, NULL, NULL, 9, 0, NULL, 5, 1, NULL, NULL, '2017-12-02 07:52:27', '2017-12-02 07:52:27'),
(16, 'Jackson Balistreri', 'nwehner@gmail.com', 'Consectetur reprehenderit itaque tenetur aspernatur. Culpa fuga ipsa corrupti quo. Modi itaque dolores perspiciatis unde incidunt labore.', 'Prof.', NULL, NULL, NULL, 2, 0, NULL, 5, 1, NULL, NULL, '2017-12-02 07:52:27', '2017-12-02 07:52:27'),
(17, 'Miss Nina Mertz', 'king.matilde@hotmail.com', 'Soluta commodi ea ex nihil. Et incidunt sit culpa est soluta vitae nulla.', 'Prof.', NULL, NULL, NULL, 6, 0, NULL, 5, 1, NULL, NULL, '2017-12-02 07:52:28', '2017-12-02 07:52:28'),
(18, 'Markus Tremblay', 'theresa.runolfsson@kunde.com', 'Ipsam alias aut natus est sit est non laborum. Quas minus itaque vel ut molestiae qui. Voluptatibus eius distinctio cum ut ad quo. Consequatur sunt earum porro nesciunt occaecati minima occaecati.', 'Dr.', NULL, NULL, NULL, 4, 0, NULL, 5, 1, NULL, NULL, '2017-12-02 07:52:28', '2017-12-02 07:52:28'),
(19, 'Mr. Darius Upton', 'glover.janet@huel.info', 'Quia sed aut eos iste alias aut vel. Non deleniti doloribus aut accusantium cumque. Nesciunt qui in vitae quo. Omnis quibusdam sequi quia corporis.', 'Mr.', NULL, NULL, NULL, 11, 0, NULL, 5, 1, NULL, NULL, '2017-12-02 07:52:28', '2017-12-02 07:52:28'),
(20, 'Abbey DuBuque', 'elisha.casper@gmail.com', 'Ea repellat rerum dolorem ratione eveniet eius. Ut et consectetur vitae ipsum repellendus repudiandae ratione. Qui impedit tempora ut ad. Aut aut alias aut officiis voluptate.', 'Mrs.', NULL, NULL, NULL, 9, 0, NULL, 5, 1, NULL, NULL, '2017-12-02 07:52:28', '2017-12-02 07:52:28'),
(21, 'Orin Wiegand', 'bheller@hotmail.com', 'Sit debitis in commodi animi omnis dolor autem nemo. Eius ipsa quia aut temporibus incidunt sunt. Saepe ut adipisci laborum ducimus.', 'Prof.', NULL, NULL, NULL, 8, 0, NULL, 5, 1, NULL, NULL, '2017-12-02 07:52:28', '2017-12-02 07:52:28'),
(22, 'Justus Volkman PhD', 'wiza.terrence@conn.com', 'Sint aliquam nisi rerum. Distinctio et maiores culpa veritatis cupiditate et. Est distinctio aut molestias voluptates rerum odit. Nam quidem ut aliquid odio harum.', 'Prof.', NULL, NULL, NULL, 8, 0, NULL, 5, 1, NULL, NULL, '2017-12-02 07:52:28', '2017-12-02 07:52:28'),
(23, 'Eulah Littel', 'vlind@mcclure.info', 'Laborum autem eum atque sit perferendis et minima voluptatem. Corporis maiores sequi nesciunt quod eaque inventore. Nisi omnis eos quis omnis ab iste.', 'Miss', NULL, NULL, NULL, 12, 0, NULL, 5, 1, NULL, NULL, '2017-12-02 07:52:28', '2017-12-02 07:52:28'),
(24, 'Prof. Tomas Windler Sr.', 'waelchi.madison@boehm.com', 'Deserunt voluptatem dolore iste voluptatem. Est maxime recusandae sed sint sed. Dicta sapiente praesentium omnis consequuntur. Ut tempore qui in.', 'Mr.', NULL, NULL, NULL, 12, 0, NULL, 5, 1, NULL, NULL, '2017-12-02 07:52:28', '2017-12-02 07:52:28'),
(25, 'Mrs. Fay Ortiz III', 'willa66@gmail.com', 'Aut quia quidem et similique. Aut et illo qui et. Aut rerum sunt aperiam dolorem quia qui qui. Minus perspiciatis officia debitis alias modi nisi autem.', 'Prof.', NULL, NULL, NULL, 2, 0, NULL, 5, 1, NULL, NULL, '2017-12-02 07:52:29', '2017-12-02 07:52:29'),
(26, 'Arthur Osinski', 'maye31@rogahn.com', 'Ipsam unde nulla placeat beatae architecto eum. Nulla perspiciatis minima enim esse. Sint sit distinctio unde harum.', 'Ms.', NULL, NULL, NULL, 1, 0, NULL, 5, 1, NULL, NULL, '2017-12-02 07:52:29', '2017-12-02 07:52:29'),
(27, 'Eleanora Corkery', 'bayer.keyon@dietrich.org', 'Quia debitis quae iste aspernatur. Quis sapiente laborum recusandae. Velit rerum quia debitis dolorem.', 'Mrs.', NULL, NULL, NULL, 13, 0, NULL, 5, 1, NULL, NULL, '2017-12-02 07:52:29', '2017-12-02 07:52:29'),
(28, 'Elna Schaefer', 'dena.johnston@wiegand.com', 'Sint placeat quos nihil omnis qui nesciunt non sit. Aut sapiente possimus amet voluptatem earum fuga exercitationem. Illum qui itaque sed itaque illo.', 'Dr.', NULL, NULL, NULL, 5, 0, NULL, 5, 1, NULL, NULL, '2017-12-02 07:52:29', '2017-12-02 07:52:29'),
(29, 'Emily Mraz', 'shane34@yahoo.com', 'Quos magni non culpa architecto laudantium ullam neque. Beatae quaerat porro ut natus nostrum qui. Qui rerum tempore vitae quia eos dolore.', 'Prof.', NULL, NULL, NULL, 3, 0, NULL, 5, 1, NULL, NULL, '2017-12-02 07:52:29', '2017-12-02 07:52:29'),
(30, 'Prof. Trudie Hilpert', 'branson45@huels.com', 'Natus explicabo eaque at dolores praesentium quia nostrum reiciendis. Animi omnis saepe quia reiciendis. Ipsa voluptatem culpa ut impedit odio voluptatem voluptatem est.', 'Mr.', NULL, NULL, NULL, 1, 0, NULL, 5, 1, NULL, NULL, '2017-12-02 07:52:29', '2017-12-02 07:52:29'),
(31, 'Candelario Schmeler III', 'amcclure@lowe.net', 'Quibusdam vitae optio nostrum delectus. Suscipit pariatur quo ab consectetur illum fugit. Praesentium natus esse esse dolorem veniam. Aliquam sed rerum esse sunt at.', 'Mrs.', NULL, NULL, NULL, 8, 0, NULL, 5, 1, NULL, NULL, '2017-12-02 07:52:29', '2017-12-02 07:52:29'),
(32, 'Larry Hayes', 'keyon.kuphal@effertz.com', 'Rerum dolorem doloribus sapiente atque non. Optio natus nam facilis consequuntur commodi. Et nostrum assumenda commodi sit maiores. Non tenetur recusandae quibusdam modi alias.', 'Mrs.', NULL, NULL, NULL, 9, 0, NULL, 5, 1, NULL, NULL, '2017-12-02 07:52:29', '2017-12-02 07:52:29'),
(33, 'Rocky Kunde', 'yundt.tracey@hotmail.com', 'Qui beatae eos quasi eos et. Debitis dolorum rerum facere sed voluptatibus iste officia sint. Omnis voluptatum non ut enim velit incidunt.', 'Dr.', NULL, NULL, NULL, 7, 0, NULL, 5, 1, NULL, NULL, '2017-12-02 07:52:29', '2017-12-02 07:52:29'),
(34, 'Mckayla Witting', 'kailyn63@tromp.net', 'Numquam est sit ratione ad dolores. Laborum at eligendi reiciendis. Et voluptatum quo dicta nemo aspernatur corporis.', 'Mr.', NULL, NULL, NULL, 11, 0, NULL, 5, 1, NULL, NULL, '2017-12-02 07:52:29', '2017-12-02 07:52:29'),
(35, 'Zoie Fisher Sr.', 'hipolito.erdman@mueller.biz', 'Eveniet nemo at qui illum. Nisi et tempore rem. Voluptatem rerum amet magni et voluptatum.', 'Prof.', NULL, NULL, NULL, 4, 0, NULL, 5, 1, NULL, NULL, '2017-12-02 07:52:29', '2017-12-02 07:52:29'),
(36, 'Rosendo Dach', 'ymertz@ebert.com', 'Hic non illum natus illum. Excepturi laborum ut voluptatem. Dolores ipsam sunt rem nam aliquam nostrum culpa.', 'Miss', NULL, NULL, NULL, 1, 0, NULL, 5, 1, NULL, NULL, '2017-12-02 07:52:29', '2017-12-02 07:52:29'),
(37, 'Maci Collins Jr.', 'oconner.madelynn@champlin.com', 'Accusantium expedita sint libero provident. Consequatur consequatur culpa minus dolor in nisi. Voluptas laudantium enim nulla dolorum excepturi at. Voluptatem non ipsum sit voluptate.', 'Prof.', NULL, NULL, NULL, 12, 0, NULL, 5, 1, NULL, NULL, '2017-12-02 07:52:30', '2017-12-02 07:52:30'),
(38, 'Dewitt Schimmel', 'eulah.kovacek@russel.biz', 'Aut deserunt repellat molestiae dignissimos ipsa quos velit. Aliquam ut dolorem quaerat quos dignissimos impedit. Debitis nam repudiandae nostrum et ut. Qui nam dolor similique aut atque.', 'Mr.', NULL, NULL, NULL, 3, 0, NULL, 5, 1, NULL, NULL, '2017-12-02 07:52:30', '2017-12-02 07:52:30'),
(39, 'Jolie Schmeler', 'renner.cayla@hotmail.com', 'Ipsam cupiditate ut quidem molestiae temporibus. Vitae iure harum quod sed tempore eius minus. Vel et tenetur praesentium veniam voluptas animi.', 'Dr.', NULL, NULL, NULL, 6, 0, NULL, 5, 1, NULL, NULL, '2017-12-02 07:52:30', '2017-12-02 07:52:30'),
(40, 'Dixie Wintheiser', 'zcummerata@hotmail.com', 'Porro doloremque laudantium omnis animi quia consequatur exercitationem illo. Itaque tempora dicta maiores velit omnis dolor ipsa. Dolores et dolorum minus ut aliquid aut. Unde et eos aspernatur id.', 'Mrs.', NULL, NULL, NULL, 13, 0, NULL, 5, 1, NULL, NULL, '2017-12-02 07:52:30', '2017-12-02 07:52:30'),
(41, 'Everette Labadie', 'arvid16@gmail.com', 'Nobis nihil quia earum consequuntur fuga est. Molestiae et nihil nihil consequatur. Laudantium odit quis repellendus excepturi dolor.', 'Ms.', NULL, NULL, NULL, 12, 0, NULL, 5, 1, NULL, NULL, '2017-12-02 07:52:30', '2017-12-02 07:52:30'),
(42, 'Robert Larson', 'gilberto04@ferry.com', 'Quos nam incidunt autem laudantium non. Libero velit numquam consequatur quam nam maxime. Laborum culpa nihil necessitatibus. Consequatur sed provident fugit est dolor tempora beatae illum.', 'Dr.', NULL, NULL, NULL, 11, 0, NULL, 5, 1, NULL, NULL, '2017-12-02 07:52:30', '2017-12-02 07:52:30'),
(43, 'Bart Thiel', 'leora47@hotmail.com', 'Necessitatibus rerum ab consequatur est ut expedita modi. Est commodi eveniet quisquam. Quas quia ut consequuntur error consequatur ipsam. Non consectetur ut esse sunt earum odit.', 'Mr.', NULL, NULL, NULL, 15, 0, NULL, 5, 1, NULL, NULL, '2017-12-02 07:52:30', '2017-12-02 07:52:30'),
(44, 'Ms. Mireille Runte', 'enid05@yahoo.com', 'Earum nobis atque aut quaerat et impedit natus animi. Quia nulla eius quod qui numquam illum. Id eaque et molestiae tempora quasi. Cum aperiam similique optio inventore et.', 'Ms.', NULL, NULL, NULL, 3, 0, NULL, 5, 1, NULL, NULL, '2017-12-02 07:52:30', '2017-12-02 07:52:30');

-- --------------------------------------------------------

--
-- Table structure for table `warehouses`
--

CREATE TABLE `warehouses` (
  `id` int(10) UNSIGNED NOT NULL,
  `whsName` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `whsStreet` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `whsZipCode` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `whsCity` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `whsCountry` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `whsState` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `whsBuilding` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `whsStoreKeeper` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `isActive` tinyint(1) NOT NULL,
  `companyId` int(10) UNSIGNED NOT NULL,
  `updatedBy` int(10) UNSIGNED NOT NULL,
  `createdBy` int(10) UNSIGNED NOT NULL,
  `hash` text COLLATE utf8mb4_unicode_ci,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `warehouses`
--

INSERT INTO `warehouses` (`id`, `whsName`, `whsStreet`, `whsZipCode`, `whsCity`, `whsCountry`, `whsState`, `whsBuilding`, `whsStoreKeeper`, `isActive`, `companyId`, `updatedBy`, `createdBy`, `hash`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 'North', 'Danyka Falls', '69203-5956', 'Elfriedashire', 'Monaco', 'Washington', '2060', NULL, 1, 1, 0, 1, NULL, NULL, '2017-12-02 07:52:41', '2017-12-02 07:52:41'),
(2, 'South', 'Candace Landing', '61800', 'Bernardshire', 'New Caledonia', 'South Carolina', '580', NULL, 1, 1, 0, 1, NULL, NULL, '2017-12-02 07:52:41', '2017-12-02 07:52:41'),
(3, 'New', 'Madyson Rapid', '93880-6669', 'Charliefort', 'Spain', 'Connecticut', '72572', NULL, 1, 1, 0, 1, NULL, NULL, '2017-12-02 07:52:41', '2017-12-02 07:52:41'),
(4, 'North', 'Kautzer Passage', '43375', 'Mitchellchester', 'United Arab Emirates', 'Rhode Island', '1368', NULL, 1, 1, 0, 1, NULL, NULL, '2017-12-02 07:52:41', '2017-12-02 07:52:41'),
(5, 'West', 'Myrna Cove', '85443', 'North Keara', 'Bhutan', 'Ohio', '410', NULL, 1, 1, 0, 1, NULL, NULL, '2017-12-02 07:52:41', '2017-12-02 07:52:41'),
(6, 'Port', 'Aleen Turnpike', '49055', 'Stehrside', 'Burkina Faso', 'Nebraska', '68853', NULL, 1, 1, 0, 1, NULL, NULL, '2017-12-02 07:52:41', '2017-12-02 07:52:41'),
(7, 'North', 'Reilly Ridge', '07296', 'Gladycechester', 'Cocos (Keeling) Islands', 'North Dakota', '808', NULL, 0, 1, 0, 1, NULL, NULL, '2017-12-02 07:52:42', '2017-12-02 07:52:42'),
(8, 'East', 'Rodrigo Lodge', '87537-4175', 'East Justicefort', 'Finland', 'California', '9026', NULL, 0, 1, 0, 1, NULL, NULL, '2017-12-02 07:52:42', '2017-12-02 07:52:42'),
(9, 'Port', 'Alvera Lodge', '97444-9928', 'Francescoberg', 'Brunei Darussalam', 'Massachusetts', '1805', NULL, 1, 1, 0, 1, NULL, NULL, '2017-12-02 07:52:42', '2017-12-02 07:52:42'),
(10, 'Lake', 'Zackery Plaza', '75129-6049', 'Rueckermouth', 'Greenland', 'North Carolina', '3205', NULL, 1, 1, 0, 1, NULL, NULL, '2017-12-02 07:52:42', '2017-12-02 07:52:42');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cache`
--
ALTER TABLE `cache`
  ADD UNIQUE KEY `cache_key_unique` (`key`);

--
-- Indexes for table `companies`
--
ALTER TABLE `companies`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `countries`
--
ALTER TABLE `countries`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `currencies`
--
ALTER TABLE `currencies`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `customer_contacts`
--
ALTER TABLE `customer_contacts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `customer_contacts_customerid_foreign` (`customerId`);

--
-- Indexes for table `delivery_runs`
--
ALTER TABLE `delivery_runs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `delivery_runs_staffid_foreign` (`staffId`);

--
-- Indexes for table `departments`
--
ALTER TABLE `departments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `dispatches`
--
ALTER TABLE `dispatches`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `invoices`
--
ALTER TABLE `invoices`
  ADD PRIMARY KEY (`id`),
  ADD KEY `invoices_contactid_foreign` (`contactId`),
  ADD KEY `invoices_customerid_foreign` (`customerId`),
  ADD KEY `invoices_salespersonid_foreign` (`salesPersonId`),
  ADD KEY `invoices_currencytypeid_foreign` (`currencyTypeId`),
  ADD KEY `invoices_salesorderid_foreign` (`salesOrderId`);

--
-- Indexes for table `invoice_items`
--
ALTER TABLE `invoice_items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `invoice_items_productid_foreign` (`productId`),
  ADD KEY `invoice_items_invoiceid_foreign` (`invoiceId`);

--
-- Indexes for table `invoice_payments`
--
ALTER TABLE `invoice_payments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `invoice_payments_invoiceid_foreign` (`invoiceId`);

--
-- Indexes for table `languages`
--
ALTER TABLE `languages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `module_permissions`
--
ALTER TABLE `module_permissions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `module_permissions_roleid_foreign` (`roleId`);

--
-- Indexes for table `notifications`
--
ALTER TABLE `notifications`
  ADD PRIMARY KEY (`id`),
  ADD KEY `notifications_notifiable_id_notifiable_type_index` (`notifiable_id`,`notifiable_type`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`),
  ADD KEY `password_resets_token_index` (`token`);

--
-- Indexes for table `payment_credits`
--
ALTER TABLE `payment_credits`
  ADD PRIMARY KEY (`id`),
  ADD KEY `payment_credits_customerid_foreign` (`customerId`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product_categories`
--
ALTER TABLE `product_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product_locations`
--
ALTER TABLE `product_locations`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_locations_productid_foreign` (`productId`);

--
-- Indexes for table `product_photos`
--
ALTER TABLE `product_photos`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_photos_productid_foreign` (`productId`);

--
-- Indexes for table `purchase_orders`
--
ALTER TABLE `purchase_orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `purchase_orders_items`
--
ALTER TABLE `purchase_orders_items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `purchase_orders_items_lpoid_foreign` (`lpoId`),
  ADD KEY `purchase_orders_items_productid_foreign` (`productId`);

--
-- Indexes for table `receipts`
--
ALTER TABLE `receipts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `receipt_items`
--
ALTER TABLE `receipt_items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `receipt_items_productid_foreign` (`productId`),
  ADD KEY `receipt_items_receiptid_foreign` (`receiptId`);

--
-- Indexes for table `restocks`
--
ALTER TABLE `restocks`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sales_orders`
--
ALTER TABLE `sales_orders`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sales_orders_contactid_foreign` (`contactId`),
  ADD KEY `sales_orders_customerid_foreign` (`customerId`),
  ADD KEY `sales_orders_salespersonid_foreign` (`salesPersonId`),
  ADD KEY `sales_orders_currencytypeid_foreign` (`currencyTypeId`);

--
-- Indexes for table `sales_order_items`
--
ALTER TABLE `sales_order_items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sales_order_items_productid_foreign` (`productId`),
  ADD KEY `sales_order_items_salesorderid_foreign` (`salesOrderId`);

--
-- Indexes for table `sessions`
--
ALTER TABLE `sessions`
  ADD UNIQUE KEY `sessions_id_unique` (`id`);

--
-- Indexes for table `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `staff`
--
ALTER TABLE `staff`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `staff_name_unique` (`name`),
  ADD UNIQUE KEY `staff_email_unique` (`email`);

--
-- Indexes for table `stock_audits`
--
ALTER TABLE `stock_audits`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `storage_locations`
--
ALTER TABLE `storage_locations`
  ADD PRIMARY KEY (`id`),
  ADD KEY `storage_locations_whsid_foreign` (`whsId`);

--
-- Indexes for table `suppliers`
--
ALTER TABLE `suppliers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `translations`
--
ALTER TABLE `translations`
  ADD PRIMARY KEY (`id`),
  ADD KEY `translations_languageid_foreign` (`languageId`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indexes for table `warehouses`
--
ALTER TABLE `warehouses`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `companies`
--
ALTER TABLE `companies`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `countries`
--
ALTER TABLE `countries`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=245;

--
-- AUTO_INCREMENT for table `currencies`
--
ALTER TABLE `currencies`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `customers`
--
ALTER TABLE `customers`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `customer_contacts`
--
ALTER TABLE `customer_contacts`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=204;

--
-- AUTO_INCREMENT for table `delivery_runs`
--
ALTER TABLE `delivery_runs`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `departments`
--
ALTER TABLE `departments`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `dispatches`
--
ALTER TABLE `dispatches`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=201;

--
-- AUTO_INCREMENT for table `invoices`
--
ALTER TABLE `invoices`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=71;

--
-- AUTO_INCREMENT for table `invoice_items`
--
ALTER TABLE `invoice_items`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=701;

--
-- AUTO_INCREMENT for table `invoice_payments`
--
ALTER TABLE `invoice_payments`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `languages`
--
ALTER TABLE `languages`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=761;

--
-- AUTO_INCREMENT for table `module_permissions`
--
ALTER TABLE `module_permissions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `payment_credits`
--
ALTER TABLE `payment_credits`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=109;

--
-- AUTO_INCREMENT for table `product_categories`
--
ALTER TABLE `product_categories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `product_locations`
--
ALTER TABLE `product_locations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1337;

--
-- AUTO_INCREMENT for table `product_photos`
--
ALTER TABLE `product_photos`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `purchase_orders`
--
ALTER TABLE `purchase_orders`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `purchase_orders_items`
--
ALTER TABLE `purchase_orders_items`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=201;

--
-- AUTO_INCREMENT for table `receipts`
--
ALTER TABLE `receipts`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `receipt_items`
--
ALTER TABLE `receipt_items`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `restocks`
--
ALTER TABLE `restocks`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `sales_orders`
--
ALTER TABLE `sales_orders`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `sales_order_items`
--
ALTER TABLE `sales_order_items`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=201;

--
-- AUTO_INCREMENT for table `settings`
--
ALTER TABLE `settings`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `staff`
--
ALTER TABLE `staff`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;

--
-- AUTO_INCREMENT for table `stock_audits`
--
ALTER TABLE `stock_audits`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=267;

--
-- AUTO_INCREMENT for table `storage_locations`
--
ALTER TABLE `storage_locations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=201;

--
-- AUTO_INCREMENT for table `suppliers`
--
ALTER TABLE `suppliers`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT for table `translations`
--
ALTER TABLE `translations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=45;

--
-- AUTO_INCREMENT for table `warehouses`
--
ALTER TABLE `warehouses`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `customer_contacts`
--
ALTER TABLE `customer_contacts`
  ADD CONSTRAINT `customer_contacts_customerid_foreign` FOREIGN KEY (`customerId`) REFERENCES `customers` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `delivery_runs`
--
ALTER TABLE `delivery_runs`
  ADD CONSTRAINT `delivery_runs_staffid_foreign` FOREIGN KEY (`staffId`) REFERENCES `staff` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `invoices`
--
ALTER TABLE `invoices`
  ADD CONSTRAINT `invoices_contactid_foreign` FOREIGN KEY (`contactId`) REFERENCES `customer_contacts` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `invoices_currencytypeid_foreign` FOREIGN KEY (`currencyTypeId`) REFERENCES `countries` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `invoices_customerid_foreign` FOREIGN KEY (`customerId`) REFERENCES `customers` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `invoices_salesorderid_foreign` FOREIGN KEY (`salesOrderId`) REFERENCES `sales_orders` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `invoices_salespersonid_foreign` FOREIGN KEY (`salesPersonId`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `invoice_items`
--
ALTER TABLE `invoice_items`
  ADD CONSTRAINT `invoice_items_invoiceid_foreign` FOREIGN KEY (`invoiceId`) REFERENCES `invoices` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `invoice_items_productid_foreign` FOREIGN KEY (`productId`) REFERENCES `products` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `invoice_payments`
--
ALTER TABLE `invoice_payments`
  ADD CONSTRAINT `invoice_payments_invoiceid_foreign` FOREIGN KEY (`invoiceId`) REFERENCES `invoices` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `module_permissions`
--
ALTER TABLE `module_permissions`
  ADD CONSTRAINT `module_permissions_roleid_foreign` FOREIGN KEY (`roleId`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `payment_credits`
--
ALTER TABLE `payment_credits`
  ADD CONSTRAINT `payment_credits_customerid_foreign` FOREIGN KEY (`customerId`) REFERENCES `customers` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `product_locations`
--
ALTER TABLE `product_locations`
  ADD CONSTRAINT `product_locations_productid_foreign` FOREIGN KEY (`productId`) REFERENCES `products` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `product_photos`
--
ALTER TABLE `product_photos`
  ADD CONSTRAINT `product_photos_productid_foreign` FOREIGN KEY (`productId`) REFERENCES `products` (`id`);

--
-- Constraints for table `purchase_orders_items`
--
ALTER TABLE `purchase_orders_items`
  ADD CONSTRAINT `purchase_orders_items_lpoid_foreign` FOREIGN KEY (`lpoId`) REFERENCES `purchase_orders` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `purchase_orders_items_productid_foreign` FOREIGN KEY (`productId`) REFERENCES `products` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `receipt_items`
--
ALTER TABLE `receipt_items`
  ADD CONSTRAINT `receipt_items_productid_foreign` FOREIGN KEY (`productId`) REFERENCES `products` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `receipt_items_receiptid_foreign` FOREIGN KEY (`receiptId`) REFERENCES `receipts` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `sales_orders`
--
ALTER TABLE `sales_orders`
  ADD CONSTRAINT `sales_orders_contactid_foreign` FOREIGN KEY (`contactId`) REFERENCES `customer_contacts` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `sales_orders_currencytypeid_foreign` FOREIGN KEY (`currencyTypeId`) REFERENCES `countries` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `sales_orders_customerid_foreign` FOREIGN KEY (`customerId`) REFERENCES `customers` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `sales_orders_salespersonid_foreign` FOREIGN KEY (`salesPersonId`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `sales_order_items`
--
ALTER TABLE `sales_order_items`
  ADD CONSTRAINT `sales_order_items_productid_foreign` FOREIGN KEY (`productId`) REFERENCES `products` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `sales_order_items_salesorderid_foreign` FOREIGN KEY (`salesOrderId`) REFERENCES `sales_orders` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `storage_locations`
--
ALTER TABLE `storage_locations`
  ADD CONSTRAINT `storage_locations_whsid_foreign` FOREIGN KEY (`whsId`) REFERENCES `warehouses` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `translations`
--
ALTER TABLE `translations`
  ADD CONSTRAINT `translations_languageid_foreign` FOREIGN KEY (`languageId`) REFERENCES `languages` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
