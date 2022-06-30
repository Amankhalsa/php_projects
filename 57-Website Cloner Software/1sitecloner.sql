-- phpMyAdmin SQL Dump
-- version 4.7.3
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Jan 30, 2018 at 01:25 PM
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
-- Database: `tammanag_sitecloner`
--

-- --------------------------------------------------------

--
-- Table structure for table `ancors`
--

CREATE TABLE `ancors` (
  `ancor_id` int(11) NOT NULL,
  `site_id` int(111) NOT NULL,
  `crawl_id` int(11) NOT NULL,
  `ancor_href` varchar(255) NOT NULL,
  `ancor_stored_at` text NOT NULL,
  `ancor_crawled` int(11) NOT NULL DEFAULT '0',
  `ancor_404` int(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ancors`
--

INSERT INTO `ancors` (`ancor_id`, `site_id`, `crawl_id`, `ancor_href`, `ancor_stored_at`, `ancor_crawled`, `ancor_404`) VALUES
(787, 10, 14, 'http://inclojure.org/', '', 1, 0),
(788, 10, 14, 'http://inclojure.org/#schedule/', '', 1, 0),
(789, 10, 14, 'http://inclojure.org/speakers.html', '', 1, 0),
(790, 10, 14, 'http://inclojure.org/workshop.html', '', 1, 0),
(791, 10, 14, 'http://inclojure.org/#tickets/', '', 1, 0),
(792, 10, 14, 'http://inclojure.org/#venue/', '', 1, 0),
(793, 10, 14, 'http://inclojure.org/sponsors.html', '', 1, 0),
(794, 10, 14, 'http://inclojure.org/opportunity-grant.html', '', 1, 0),
(795, 10, 14, 'http://inclojure.org/#conduct/', '', 1, 0),
(796, 10, 14, 'http://inclojure.org/speakers.html#zach', '', 1, 0),
(797, 10, 14, 'http://inclojure.org/speakers.html#kiran', '', 1, 0),
(798, 10, 14, 'http://inclojure.org/speakers.html#kapil', '', 1, 0),
(799, 10, 14, 'http://inclojure.org/speakers.html#jake', '', 1, 0),
(800, 10, 14, 'http://inclojure.org/speakers.html#varun', '', 1, 0),
(801, 10, 14, 'http://inclojure.org/speakers.html#rakesh', '', 1, 0),
(802, 10, 14, 'http://inclojure.org/speakers.html#shafeeq', '', 1, 0),
(803, 10, 14, 'http://inclojure.org/speakers.html#antonio', '', 1, 0),
(804, 10, 14, 'tel:+919902000089/', '', 1, 1),
(805, 10, 14, 'tel:+918041783000/', '', 1, 1),
(824, 13, 17, 'http://littlewe.in/', '', 1, 0),
(825, 13, 17, 'http://littlewe.in/about-us/', '', 0, 0),
(826, 13, 17, 'http://littlewe.in/servises/', '', 0, 0),
(827, 13, 17, 'http://littlewe.in/program/', '', 0, 0),
(828, 13, 17, 'http://littlewe.in/f-a-q/', '', 0, 0),
(829, 13, 17, 'http://littlewe.in/gallery/', '', 0, 0),
(830, 13, 17, 'http://littlewe.in/contact-us/', '', 0, 0),
(831, 12, 18, 'http://www.webrooinfotech.com/', '', 1, 0),
(832, 12, 18, 'http://www.webrooinfotech.com', '', 1, 0),
(833, 12, 18, 'tel:+914244031899/', '', 1, 1),
(834, 12, 18, 'tel:+919087899899/', '', 1, 1),
(990, 15, 19, 'http://www.rutgersprep.org/directory/', '', 1, 0),
(991, 15, 19, 'http://www.rutgersprep.org/about/directions-and-maps/', '', 0, 0),
(992, 15, 19, 'http://www.rutgersprep.org/', '', 0, 0),
(993, 15, 19, 'http://www.rutgersprep.org/academics/', '', 0, 0),
(994, 15, 19, 'http://www.rutgersprep.org/academics/lower-school/', '', 0, 0),
(995, 15, 19, 'http://www.rutgersprep.org/academics/middle-school/', '', 0, 0),
(996, 15, 19, 'http://www.rutgersprep.org/academics/upper-school/', '', 0, 0),
(997, 15, 19, 'http://www.rutgersprep.org/academics/college-counseling/', '', 0, 0),
(998, 15, 19, 'http://www.rutgersprep.org/academics/innovations-and-ideas/', '', 0, 0),
(999, 15, 19, 'http://www.rutgersprep.org/admission/', '', 0, 0),
(1000, 15, 19, 'http://www.rutgersprep.org/admission/admission-welcome/', '', 0, 0),
(1001, 15, 19, 'http://www.rutgersprep.org/admission/how-to-apply/', '', 0, 0),
(1002, 15, 19, 'http://www.rutgersprep.org/admission/tuition-aid/', '', 0, 0),
(1003, 15, 19, 'http://www.rutgersprep.org/admission/college-acceptances/', '', 0, 0),
(1004, 15, 19, 'http://www.rutgersprep.org/admission/open-house/', '', 0, 0),
(1005, 15, 19, 'http://www.rutgersprep.org/admission/transportation/', '', 0, 0),
(1006, 15, 19, 'http://www.rutgersprep.org/admission/international-program/', '', 0, 0),
(1007, 15, 19, 'http://www.rutgersprep.org/admission/academic-honors/', '', 0, 0),
(1008, 15, 19, 'http://www.rutgersprep.org/athletics/', '', 0, 0),
(1009, 15, 19, 'http://www.rutgersprep.org/athletics/team-pages/', '', 0, 0),
(1010, 15, 19, 'http://www.rutgersprep.org/athletics/athletics-directory/', '', 0, 0),
(1011, 15, 19, 'http://www.rutgersprep.org/athletics/athletics-calendar/', '', 0, 0),
(1012, 15, 19, 'http://www.rutgersprep.org/athletics/championships/', '', 0, 0),
(1013, 15, 19, 'http://www.rutgersprep.org/arts/', '', 0, 0),
(1014, 15, 19, 'http://www.rutgersprep.org/arts/holder/', '', 0, 0),
(1015, 15, 19, 'http://www.rutgersprep.org/about/', '', 0, 0),
(1016, 15, 19, 'http://www.rutgersprep.org/arts/music/', '', 0, 0),
(1017, 15, 19, 'http://www.rutgersprep.org/about/rps-at-a-glance/', '', 0, 0),
(1018, 15, 19, 'http://www.rutgersprep.org/arts/theater-dance/', '', 0, 0),
(1019, 15, 19, 'http://www.rutgersprep.org/about/welcome-from-the-headmaster/', '', 0, 0),
(1020, 15, 19, 'http://www.rutgersprep.org/our-community/', '', 0, 0),
(1021, 15, 19, 'http://www.rutgersprep.org/about/why-rutgers-prep/', '', 0, 0),
(1022, 15, 19, 'http://www.rutgersprep.org/our-community/alumni/', '', 0, 0),
(1023, 15, 19, 'http://www.rutgersprep.org/about/rps-history/', '', 0, 0),
(1024, 15, 19, 'http://www.rutgersprep.org/our-community/parents/', '', 0, 0),
(1025, 15, 19, 'http://www.rutgersprep.org/about/board-of-trustees/', '', 0, 0),
(1026, 15, 19, 'http://www.rutgersprep.org/our-community/students/', '', 0, 0),
(1027, 15, 19, 'http://www.rutgersprep.org/our-community/alumni-profiles/', '', 0, 0),
(1028, 15, 19, 'http://www.rutgersprep.org/our-community/after-school-program/', '', 0, 0),
(1029, 15, 19, 'http://www.rutgersprep.org/academics/lower-school/curriculum/', '', 0, 0),
(1030, 15, 19, 'http://www.rutgersprep.org/summer/', '', 0, 0),
(1031, 15, 19, 'http://www.rutgersprep.org/academics/lower-school/ls-resources/', '', 0, 0),
(1032, 15, 19, 'http://www.rutgersprep.org/giving/', '', 0, 0),
(1033, 15, 19, 'http://www.rutgersprep.org/giving/philanthropy-rps/', '', 0, 0),
(1034, 15, 19, 'http://www.rutgersprep.org/giving/make-a-gift/', '', 0, 0),
(1035, 15, 19, 'http://www.rutgersprep.org/academics/college-counseling/college-acceptances/', '', 0, 0),
(1036, 15, 19, 'http://www.rutgersprep.org/giving/annual-giving/', '', 0, 0),
(1037, 15, 19, 'http://www.rutgersprep.org/academics/college-counseling/counseling-timeline/', '', 0, 0),
(1038, 15, 19, 'http://www.rutgersprep.org/giving/ways-to-give/', '', 0, 0),
(1039, 15, 19, 'http://www.rutgersprep.org/academics/college-counseling/college-counseling-events/', '', 0, 0),
(1040, 15, 19, 'http://www.rutgersprep.org/site-map/', '', 0, 0),
(1041, 15, 19, 'http://www.rutgersprep.org/about/school-directory/', '', 0, 0),
(1042, 15, 19, 'http://www.rutgersprep.org/non-discrimination-policy/', '', 0, 0),
(1043, 15, 19, 'http://www.rutgersprep.org/printable-forms-2017/', '', 0, 0),
(1044, 15, 19, 'http://www.rutgersprep.org/athletics/championships/championships/', '', 0, 0),
(1045, 15, 19, 'http://www.rutgersprep.org/athletics/championships/alumni-athletics/', '', 0, 0),
(1046, 15, 19, 'http://www.rutgersprep.org/athletics/championships/athletic-news/', '', 0, 0),
(1047, 15, 19, 'http://www.rutgersprep.org/quicklinks/', '', 0, 0),
(1048, 15, 19, 'http://www.rutgersprep.org/cal/', '', 0, 0),
(1049, 15, 19, 'http://www.rutgersprep.org/fs/pages/447/', '', 0, 0),
(1050, 15, 19, 'http://www.rutgersprep.org/fs/pages/444/', '', 0, 0),
(1051, 15, 19, 'http://www.rutgersprep.org/fs/pages/451/', '', 0, 0),
(1052, 15, 19, 'http://www.rutgersprep.org/fs/pages/212/', '', 0, 0),
(1053, 15, 19, 'http://www.rutgersprep.org/fs/pages/204/', '', 0, 0),
(1054, 15, 19, 'http://www.rutgersprep.org/fs/pages/223/', '', 0, 0),
(1055, 15, 19, 'http://www.rutgersprep.org/fs/pages/224/', '', 0, 0),
(1056, 15, 19, 'http://www.rutgersprep.org/fs/pages/225/', '', 0, 0),
(1057, 15, 19, 'https://www.rutgersprep.org/fs/pages/230/', '', 0, 0),
(1058, 15, 19, 'https://www.rutgersprep.org/fs/pages/436/', '', 0, 0),
(1059, 15, 19, 'http://www.rutgersprep.org/directory/~board/latest-news-posts/post/counting-stars-with-the-fusion-ensemble/', '', 0, 0),
(1060, 15, 19, 'http://www.rutgersprep.org/directory/~board/latest-news-posts/post/millo-lazarczyks-business-creates-bucknell-buzz/', '', 0, 0),
(1061, 15, 19, 'http://www.rutgersprep.org/directory/~board/latest-news-posts/post/augmented-and-virtual-realities-at-rutgers-prep/', '', 0, 0),
(1062, 15, 19, 'http://www.rutgersprep.org/directory/~board/latest-news-posts/post/now-we-wait-a-glimpse-into-the-early-application-process/', '', 0, 0),
(1063, 15, 19, 'http://www.rutgersprep.org/directory/~board/latest-news-posts/post/ian-bates-the-tiny-miracles-of-photography/', '', 0, 0),
(1064, 15, 19, 'http://www.rutgersprep.org/directory/~board/latest-news-posts/post/postcards-from-the-global-lounge/', '', 0, 0),
(1065, 15, 19, 'http://www.rutgersprep.org/directory/?const_page=1&amp;/', '', 0, 0),
(1066, 15, 19, 'http://www.rutgersprep.org/directory/?const_page=2&amp;/', '', 0, 0),
(1067, 15, 19, 'http://www.rutgersprep.org/directory/?const_page=3&amp;/', '', 0, 0),
(1068, 15, 19, 'http://www.rutgersprep.org/directory/?const_page=6&amp;/', '', 0, 0),
(1069, 15, 19, 'http://www.rutgersprep.org/directory/?const_page=9&amp;/', '', 0, 0),
(1070, 15, 19, 'tel:732.545.5600 x536', '', 0, 0),
(1071, 15, 19, 'tel:732.545.5600 x210', '', 0, 0),
(1072, 15, 19, 'tel:732.545.5600 x513', '', 0, 0),
(1073, 15, 19, 'tel:732.545.5600 x570', '', 0, 0),
(1074, 15, 19, 'tel:732.545.5600 x527', '', 0, 0),
(1075, 15, 19, 'tel:732.545.5600 x224', '', 0, 0),
(1076, 15, 19, 'tel:732.545.5600 x530', '', 0, 0),
(1077, 15, 19, 'tel:732.545.5600 x519', '', 0, 0),
(1078, 15, 19, 'tel:732.545.5600p531', '', 0, 0),
(1079, 15, 19, 'tel:732.545.5600 x203', '', 0, 0),
(1080, 15, 19, 'tel:732.545.5600 x523', '', 0, 0),
(1081, 15, 19, 'tel:732.545.5600 x583', '', 0, 0),
(1082, 15, 19, 'tel:732.545.5600 x268', '', 0, 0),
(1083, 15, 19, 'tel:732.545.5600 x234', '', 0, 0),
(1084, 15, 19, 'tel:732.545.5600 x242', '', 0, 0),
(1085, 16, 20, 'http://synergyindia360.com/', '', 1, 0),
(1086, 16, 20, 'http://synergyindia360.com/about.html', '', 1, 0),
(1087, 16, 20, 'http://synergyindia360.com/project.html', '', 1, 0),
(1088, 16, 20, 'http://synergyindia360.com/contact.html', '', 1, 0),
(1089, 17, 21, 'http://guardianinternationalschool.com/', '', 1, 0),
(1090, 17, 21, 'http://guardianinternationalschool.com', '', 1, 0),
(1091, 17, 21, 'http://guardianinternationalschool.com/about-us/', '', 1, 0),
(1092, 17, 21, 'http://guardianinternationalschool.com/?page_id=2204/', '', 1, 0),
(1093, 17, 21, 'http://guardianinternationalschool.com/?page_id=2208/', '', 1, 0),
(1094, 17, 21, 'http://guardianinternationalschool.com/our-staffs/', '', 1, 0),
(1095, 17, 21, 'http://guardianinternationalschool.com/services/', '', 1, 0),
(1096, 17, 21, 'http://guardianinternationalschool.com/portfolio/', '', 1, 0),
(1097, 17, 21, 'http://guardianinternationalschool.com/blog/', '', 1, 0),
(1098, 17, 21, 'http://guardianinternationalschool.com/?page_id=77/', '', 1, 0),
(1099, 17, 21, 'http://guardianinternationalschool.com/dt_portfolios/trip-to-dakshina-chithira-25-11-2017/', '', 1, 0),
(1100, 17, 21, 'http://guardianinternationalschool.com/dt_portfolios/diwali-celebration-16-10-17/', '', 1, 0),
(1101, 17, 21, 'http://guardianinternationalschool.com/dt_portfolios/colouring-activity/', '', 1, 0),
(1102, 17, 21, 'http://guardianinternationalschool.com/dt_portfolios/childrens-day-celebration-14-11-2016/', '', 1, 0),
(1103, 17, 21, 'http://guardianinternationalschool.com/dt_portfolios/my-creation/', '', 1, 0),
(1104, 17, 21, 'http://guardianinternationalschool.com/dt_portfolios/toddler-care/', '', 1, 0),
(1105, 17, 21, 'http://guardianinternationalschool.com/dt_portfolios/leisure-time/', '', 1, 0),
(1106, 17, 21, 'http://guardianinternationalschool.com/dt_portfolios/music-hour/', '', 1, 0),
(1107, 17, 21, 'http://guardianinternationalschool.com/dt_portfolios/arts-craft/', '', 1, 0),
(1108, 17, 21, 'http://guardianinternationalschool.com/?page_id=78/', '', 1, 0),
(1109, 17, 21, 'http://guardianinternationalschool.com/dt_portfolio_entries/fun/', '', 1, 0),
(1110, 17, 21, 'http://guardianinternationalschool.com/dt_portfolios/your-innovations/', '', 1, 0),
(1111, 17, 21, 'http://guardianinternationalschool.com/dt_portfolio_entries/management/', '', 1, 0),
(1112, 17, 21, 'http://guardianinternationalschool.com/dt_portfolios/get-ready-for-adventure/', '', 1, 0),
(1113, 17, 21, 'http://guardianinternationalschool.com/dt_portfolio_entries/social/', '', 1, 0),
(1114, 17, 21, 'http://guardianinternationalschool.com/dt_portfolio_entries/relax/', '', 1, 0),
(1115, 17, 21, 'http://guardianinternationalschool.com/dt_portfolios/park-games/', '', 1, 0),
(1116, 17, 21, 'http://guardianinternationalschool.com/dt_portfolio_entries/education/', '', 1, 0),
(1117, 17, 21, 'http://guardianinternationalschool.com/dt_portfolios/planetarium-visit/', '', 1, 0),
(1118, 17, 21, 'http://guardianinternationalschool.com/dt_portfolios/crocodile-park-visit-30-07-16/', '', 1, 0),
(1119, 17, 21, 'http://guardianinternationalschool.com/dt_portfolios/spoken-english-workshop/', '', 1, 0),
(1120, 17, 21, 'http://guardianinternationalschool.com/dt_portfolio_entries/learn/', '', 1, 0),
(1121, 17, 21, 'http://guardianinternationalschool.com/dt_portfolios/independence-day-celebrations/', '', 1, 0),
(1122, 17, 21, 'http://guardianinternationalschool.com/dt_portfolios/vijayadhasmi-celebration/', '', 1, 0),
(1123, 17, 21, 'http://guardianinternationalschool.com/dt_portfolios/students-day-celebration-2016/', '', 1, 0),
(1124, 17, 21, 'http://guardianinternationalschool.com/dt_portfolios/tamil-sangam-activities/', '', 1, 0),
(1125, 17, 21, 'http://guardianinternationalschool.com/dt_portfolios/science-club-activities/', '', 1, 0),
(1126, 17, 21, 'http://guardianinternationalschool.com/dt_portfolios/maths-club-activities/', '', 1, 0),
(1127, 17, 21, 'http://guardianinternationalschool.com/dt_portfolios/cyber-kids-activities/', '', 1, 0),
(1128, 17, 21, 'http://guardianinternationalschool.com/dt_portfolios/civics-club-activities/', '', 1, 0),
(1129, 17, 21, 'http://guardianinternationalschool.com/dt_portfolios/fine-arts-club/', '', 1, 0),
(1130, 17, 21, 'http://guardianinternationalschool.com/dt_portfolios/white-gifts-day/', '', 1, 0),
(1131, 17, 21, 'http://guardianinternationalschool.com/dt_portfolios/vedanthangal-bird-sanctuary-tour/', '', 1, 0),
(1132, 17, 21, 'http://guardianinternationalschool.com/dt_portfolio_entries/enjoy/', '', 1, 0),
(1133, 17, 21, 'http://guardianinternationalschool.com/dt_portfolios/republic-day-celebration-2017/', '', 1, 0),
(1134, 17, 21, 'http://guardianinternationalschool.com/dt_portfolios/annual-day-celebrations-2017/', '', 1, 0),
(1135, 17, 21, 'http://guardianinternationalschool.com/dt_portfolios/clay-modelling-21-7-2017/', '', 1, 0),
(1136, 17, 21, 'http://guardianinternationalschool.com/dt_portfolios/maths-puzzle-28-7-2017/', '', 1, 0),
(1137, 17, 21, 'http://guardianinternationalschool.com/dt_portfolios/speech-on-favorite-festival-04-08-2017/', '', 1, 0),
(1138, 17, 21, 'http://guardianinternationalschool.com/dt_portfolios/speech-on-my-ambition/', '', 1, 0),
(1139, 17, 21, 'http://guardianinternationalschool.com/dt_portfolios/ramzan-celebrations-23-6-2017/', '', 1, 0),
(1140, 17, 21, 'http://guardianinternationalschool.com/dt_portfolios/sri-krishna-jeyanthi-celebrations-11-8-2017/', '', 0, 0),
(1141, 17, 21, 'http://guardianinternationalschool.com/dt_portfolios/71st-independence-day-celebration/', '', 0, 0),
(1142, 17, 21, 'http://guardianinternationalschool.com/dt_portfolios/maths-club-activity-24-6-2017/', '', 0, 0),
(1143, 17, 21, 'http://guardianinternationalschool.com/dt_portfolios/civics-club-activity-08-07-2017/', '', 0, 0),
(1144, 17, 21, 'http://guardianinternationalschool.com/dt_portfolios/cyber-club-activities-22-07-2017/', '', 0, 0),
(1145, 17, 21, 'http://guardianinternationalschool.com/dt_portfolios/fine-arts-club-activities/', '', 0, 0),
(1146, 17, 21, 'http://guardianinternationalschool.com/dt_portfolios/spoken-english-workshop-19-8-2017/', '', 0, 0),
(1147, 17, 21, 'http://guardianinternationalschool.com/dt_portfolios/teachers-day-celebration-5-9-2017/', '', 0, 0),
(1148, 17, 21, 'http://guardianinternationalschool.com/dt_portfolios/vinayakar-chathurthi-celebration-24-8-2017/', '', 0, 0),
(1149, 17, 21, 'http://guardianinternationalschool.com/dt_portfolios/cca-patrioticdevotional-song-performance/', '', 0, 0),
(1150, 17, 21, 'http://guardianinternationalschool.com/dt_portfolios/ayudha-pooja-celebration-29-9-17/', '', 0, 0),
(1151, 17, 21, 'http://guardianinternationalschool.com/dt_portfolios/cca-talk-about-marine-world/', '', 0, 0),
(1152, 17, 21, 'http://guardianinternationalschool.com/dt_portfolios/cca-pot-painting-15112017/', '', 0, 0),
(1153, 17, 21, 'http://guardianinternationalschool.com/dt_portfolios/childrens-day-celebration-14112017/', '', 0, 0),
(1154, 17, 21, 'http://guardianinternationalschool.com/dt_portfolios/maths-club-activities-28-10-2017/', '', 0, 0),
(1155, 17, 21, 'http://guardianinternationalschool.com/dt_portfolios/civics-club-activity-28-11-2017/', '', 0, 0),
(1156, 17, 21, 'http://guardianinternationalschool.com/dt_portfolios/english-club-activity-29-11-2017/', '', 0, 0),
(1157, 17, 21, 'http://guardianinternationalschool.com/dt_portfolios/fancy-dress-competition-30-11-2017/', '', 0, 0),
(1158, 17, 21, 'http://guardianinternationalschool.com/dt_portfolios/guitar-music/', '', 0, 0),
(1159, 17, 21, 'http://guardianinternationalschool.com/dt_portfolio_entries/social/page/2/', '', 0, 0),
(1160, 17, 21, 'http://guardianinternationalschool.com/dt_portfolio_entries/learn/page/2/', '', 0, 0),
(1161, 17, 21, 'http://guardianinternationalschool.com/dt_portfolios/christmas-celebration-2016/', '', 0, 0),
(1284, 18, 24, 'http://www.pickmycart.com/', '', 1, 0),
(1285, 9, 25, 'http://BOOKMYKHANA.COM/', '', 1, 0),
(1286, 9, 25, 'http://BOOKMYKHANA.COM/home/', '', 1, 0),
(1287, 9, 25, 'http://BOOKMYKHANA.COM/browse/', '', 1, 0),
(1288, 9, 25, 'http://BOOKMYKHANA.COM/contact/', '', 1, 0),
(1289, 9, 25, 'http://BOOKMYKHANA.COM/signup/', '', 1, 0),
(1290, 9, 25, 'http://BOOKMYKHANA.COM/menu-vrindavan-food-world/', '', 1, 0),
(1291, 9, 25, 'http://BOOKMYKHANA.COM/menu-vatika-family-garden-amp-resort/', '', 1, 0),
(1292, 9, 25, 'http://BOOKMYKHANA.COM/menu-international-gold-embassy/', '', 1, 0),
(1293, 9, 25, 'http://BOOKMYKHANA.COM/menu-sanjay-quality-restaurant/', '', 1, 0),
(1294, 9, 25, 'http://BOOKMYKHANA.COM/menu-gandharv-fast-food/', '', 1, 0),
(1295, 9, 25, 'http://BOOKMYKHANA.COM/menu-hotel-kanhaiyya-pure-veg-family-gardan-restaurant/', '', 1, 0),
(1296, 9, 25, 'http://BOOKMYKHANA.COM/menu-sanjay-quality-breakfast/', '', 1, 0),
(1297, 9, 25, 'http://BOOKMYKHANA.COM/menu-1-n-only-food-mall/', '', 1, 0),
(1298, 9, 25, 'http://BOOKMYKHANA.COM/menu-hotel-parth/', '', 1, 0),
(1299, 9, 25, 'http://BOOKMYKHANA.COM/menu-dawat-family-restaurant/', '', 1, 0),
(1300, 9, 25, 'http://BOOKMYKHANA.COM/menu-hotel-wada/', '', 1, 0),
(1301, 9, 25, 'http://BOOKMYKHANA.COM/menu-rasika-veg/', '', 1, 0),
(1302, 9, 25, 'http://BOOKMYKHANA.COM/menu-hotel-mudra/', '', 1, 0),
(1303, 9, 25, 'http://BOOKMYKHANA.COM/menu-hotel-wada-ii/', '', 1, 0),
(1304, 9, 25, 'http://BOOKMYKHANA.COM/menu-mayur-sweet/', '', 1, 0),
(1305, 9, 25, 'http://BOOKMYKHANA.COM/menu-sarovar-veg/', '', 1, 0),
(1306, 9, 25, 'http://BOOKMYKHANA.COM/menu-food-corner/', '', 1, 0),
(1307, 9, 25, 'http://BOOKMYKHANA.COM/menu-gandharv-garden/', '', 1, 0),
(1308, 9, 25, 'http://BOOKMYKHANA.COM/menu-sneh-angan/', '', 1, 0),
(1309, 9, 25, 'http://BOOKMYKHANA.COM/menu-gaytri-veg-culture/', '', 1, 0),
(1310, 9, 25, 'http://BOOKMYKHANA.COM/cuisine?category=1/', '', 1, 0),
(1311, 9, 25, 'http://BOOKMYKHANA.COM/cuisine?category=3/', '', 1, 0),
(1312, 9, 25, 'http://BOOKMYKHANA.COM/cuisine?category=5/', '', 1, 0),
(1313, 9, 25, 'http://BOOKMYKHANA.COM/cuisine?category=7/', '', 1, 0),
(1314, 9, 25, 'http://BOOKMYKHANA.COM/cuisine?category=11/', '', 1, 0),
(1315, 9, 25, 'http://BOOKMYKHANA.COM/cuisine?category=16/', '', 1, 0),
(1316, 9, 25, 'http://BOOKMYKHANA.COM/cuisine?category=19/', '', 1, 0),
(1317, 9, 25, 'http://BOOKMYKHANA.COM/cuisine?category=22/', '', 1, 0),
(1318, 9, 25, 'http://BOOKMYKHANA.COM/cuisine?category=23/', '', 1, 0),
(1319, 9, 25, 'http://BOOKMYKHANA.COM/cuisine?category=24/', '', 1, 0),
(1320, 9, 25, 'http://BOOKMYKHANA.COM/cuisine?category=25/', '', 1, 0),
(1321, 9, 25, 'http://BOOKMYKHANA.COM/cuisine?category=26/', '', 1, 0),
(1322, 9, 25, 'http://BOOKMYKHANA.COM/cuisine?category=27/', '', 1, 0),
(1323, 9, 25, 'http://BOOKMYKHANA.COM/cuisine?category=28/', '', 1, 0),
(1324, 9, 25, 'http://BOOKMYKHANA.COM/cuisine?category=29/', '', 1, 0),
(1325, 9, 25, 'http://BOOKMYKHANA.COM/cuisine?category=30/', '', 1, 0),
(1326, 9, 25, 'http://BOOKMYKHANA.COM/cuisine?category=31/', '', 1, 0),
(1327, 9, 25, 'http://BOOKMYKHANA.COM/cuisine?category=32/', '', 1, 0),
(1328, 9, 25, 'http://BOOKMYKHANA.COM/cuisine?category=33/', '', 1, 0),
(1329, 9, 25, 'http://BOOKMYKHANA.COM/cuisine?category=34/', '', 1, 0),
(1330, 9, 25, 'http://BOOKMYKHANA.COM/cuisine?category=35/', '', 1, 0),
(1331, 9, 25, 'http://BOOKMYKHANA.COM/cuisine?category=36/', '', 1, 0),
(1332, 9, 25, 'http://BOOKMYKHANA.COM/cuisine?category=37/', '', 1, 0),
(1333, 9, 25, 'http://BOOKMYKHANA.COM/cuisine?category=38/', '', 1, 0),
(1334, 9, 25, 'http://BOOKMYKHANA.COM/cuisine?category=39/', '', 1, 0),
(1335, 9, 25, 'http://BOOKMYKHANA.COM/cuisine?category=40/', '', 1, 0),
(1336, 9, 25, 'http://BOOKMYKHANA.COM/cuisine?category=41/', '', 1, 0),
(1337, 9, 25, 'http://BOOKMYKHANA.COM/cuisine?category=42/', '', 1, 0),
(1338, 9, 25, 'http://BOOKMYKHANA.COM/cuisine?category=43/', '', 1, 0),
(1339, 9, 25, 'http://BOOKMYKHANA.COM/page-refund-and-cancellation-policy/', '', 1, 0),
(1340, 9, 25, 'http://BOOKMYKHANA.COM/page-privacy-policy/', '', 1, 0),
(1341, 9, 25, 'http://BOOKMYKHANA.COM/page-terms-and-conditions/', '', 1, 0),
(1342, 9, 25, 'http://BOOKMYKHANA.COM/store/browse/?tab=2/', '', 1, 0),
(1343, 9, 25, 'http://BOOKMYKHANA.COM/store/browse/?tab=3/', '', 1, 0),
(1344, 9, 25, 'http://BOOKMYKHANA.COM/store/browse/?tab=1&page=2/', '', 1, 0),
(1345, 9, 25, 'http://BOOKMYKHANA.COM/store/google-login/', '', 1, 0),
(1346, 9, 25, 'http://BOOKMYKHANA.COM/store/', '', 1, 0),
(1347, 9, 25, 'http://BOOKMYKHANA.COM/store/browse/?tab=3&page=2/', '', 1, 0),
(1348, 9, 25, 'http://BOOKMYKHANA.COM/store/browse/?tab=1&page=2/?pid=2/', '', 1, 0),
(1349, 9, 25, 'http://BOOKMYKHANA.COM/store/browse/?tab=1&page=2/?pid=3/', '', 1, 0),
(1350, 9, 25, 'http://BOOKMYKHANA.COM/store/browse/?tab=3&page=2/?pid=2/', '', 1, 0),
(1351, 9, 25, 'http://BOOKMYKHANA.COM/store/browse/?tab=3&page=2/?pid=3/', '', 1, 0),
(1352, 9, 25, 'http://BOOKMYKHANA.COM/store/browse/?tab=1&page=2/?pid=2/?pid=2/', '', 1, 0),
(1353, 9, 25, 'http://BOOKMYKHANA.COM/store/browse/?tab=1&page=2/?pid=2/?pid=3/', '', 1, 0),
(1354, 9, 25, 'http://BOOKMYKHANA.COM/store/browse/?tab=1&page=2/?pid=3/?pid=2/', '', 1, 0),
(1355, 9, 25, 'http://BOOKMYKHANA.COM/store/browse/?tab=1&page=2/?pid=3/?pid=3/', '', 1, 0),
(1356, 9, 25, 'http://BOOKMYKHANA.COM/store/browse/?tab=3&page=2/?pid=2/?pid=2/', '', 1, 0),
(1357, 9, 25, 'http://BOOKMYKHANA.COM/store/browse/?tab=3&page=2/?pid=2/?pid=3/', '', 1, 0),
(1358, 9, 25, 'http://BOOKMYKHANA.COM/store/browse/?tab=3&page=2/?pid=3/?pid=2/', '', 1, 0),
(1359, 9, 25, 'http://BOOKMYKHANA.COM/store/browse/?tab=3&page=2/?pid=3/?pid=3/', '', 1, 0),
(1360, 9, 25, 'http://BOOKMYKHANA.COM/store/browse/?tab=1&page=2/?pid=2/?pid=2/?pid=2/', '', 1, 0),
(1361, 9, 25, 'http://BOOKMYKHANA.COM/store/browse/?tab=1&page=2/?pid=2/?pid=2/?pid=3/', '', 1, 0),
(1362, 9, 25, 'http://BOOKMYKHANA.COM/store/browse/?tab=1&page=2/?pid=2/?pid=3/?pid=2/', '', 1, 0),
(1363, 9, 25, 'http://BOOKMYKHANA.COM/store/browse/?tab=1&page=2/?pid=2/?pid=3/?pid=3/', '', 1, 0),
(1364, 9, 25, 'http://BOOKMYKHANA.COM/store/browse/?tab=1&page=2/?pid=3/?pid=2/?pid=2/', '', 1, 0),
(1365, 9, 25, 'http://BOOKMYKHANA.COM/store/browse/?tab=1&page=2/?pid=3/?pid=2/?pid=3/', '', 1, 0),
(1366, 9, 25, 'http://BOOKMYKHANA.COM/store/browse/?tab=1&page=2/?pid=3/?pid=3/?pid=2/', '', 1, 0),
(1367, 9, 25, 'http://BOOKMYKHANA.COM/store/browse/?tab=1&page=2/?pid=3/?pid=3/?pid=3/', '', 1, 0),
(1368, 9, 25, 'http://BOOKMYKHANA.COM/store/browse/?tab=3&page=2/?pid=2/?pid=2/?pid=2/', '', 1, 0),
(1369, 9, 25, 'http://BOOKMYKHANA.COM/store/browse/?tab=3&page=2/?pid=2/?pid=2/?pid=3/', '', 1, 0),
(1370, 9, 25, 'http://BOOKMYKHANA.COM/store/browse/?tab=3&page=2/?pid=2/?pid=3/?pid=2/', '', 1, 0),
(1371, 9, 25, 'http://BOOKMYKHANA.COM/store/browse/?tab=3&page=2/?pid=2/?pid=3/?pid=3/', '', 1, 0),
(1372, 9, 25, 'http://BOOKMYKHANA.COM/store/browse/?tab=3&page=2/?pid=3/?pid=2/?pid=2/', '', 1, 0),
(1373, 9, 25, 'http://BOOKMYKHANA.COM/store/browse/?tab=3&page=2/?pid=3/?pid=2/?pid=3/', '', 1, 0),
(1374, 9, 25, 'http://BOOKMYKHANA.COM/store/browse/?tab=3&page=2/?pid=3/?pid=3/?pid=2/', '', 1, 0),
(1375, 9, 25, 'http://BOOKMYKHANA.COM/store/browse/?tab=3&page=2/?pid=3/?pid=3/?pid=3/', '', 1, 0),
(1376, 9, 25, 'http://BOOKMYKHANA.COM/store/browse/?tab=1&page=2/?pid=2/?pid=2/?pid=2/?pid=2/', '', 1, 0),
(1377, 9, 25, 'http://BOOKMYKHANA.COM/store/browse/?tab=1&page=2/?pid=2/?pid=2/?pid=2/?pid=3/', '', 1, 0),
(1378, 9, 25, 'http://BOOKMYKHANA.COM/store/browse/?tab=1&page=2/?pid=2/?pid=2/?pid=3/?pid=2/', '', 1, 0),
(1379, 9, 25, 'http://BOOKMYKHANA.COM/store/browse/?tab=1&page=2/?pid=2/?pid=2/?pid=3/?pid=3/', '', 1, 0),
(1380, 9, 25, 'http://BOOKMYKHANA.COM/store/browse/?tab=1&page=2/?pid=2/?pid=3/?pid=2/?pid=2/', '', 1, 0),
(1381, 9, 25, 'http://BOOKMYKHANA.COM/store/browse/?tab=1&page=2/?pid=2/?pid=3/?pid=2/?pid=3/', '', 1, 0),
(1382, 9, 25, 'http://BOOKMYKHANA.COM/store/browse/?tab=1&page=2/?pid=2/?pid=3/?pid=3/?pid=2/', '', 1, 0),
(1383, 9, 25, 'http://BOOKMYKHANA.COM/store/browse/?tab=1&page=2/?pid=2/?pid=3/?pid=3/?pid=3/', '', 1, 0),
(1384, 9, 25, 'http://BOOKMYKHANA.COM/store/browse/?tab=1&page=2/?pid=3/?pid=2/?pid=2/?pid=2/', '', 1, 0),
(1385, 9, 25, 'http://BOOKMYKHANA.COM/store/browse/?tab=1&page=2/?pid=3/?pid=2/?pid=2/?pid=3/', '', 1, 0),
(1386, 9, 25, 'http://BOOKMYKHANA.COM/store/browse/?tab=1&page=2/?pid=3/?pid=2/?pid=3/?pid=2/', '', 1, 0),
(1387, 9, 25, 'http://BOOKMYKHANA.COM/store/browse/?tab=1&page=2/?pid=3/?pid=2/?pid=3/?pid=3/', '', 1, 0),
(1388, 9, 25, 'http://BOOKMYKHANA.COM/store/browse/?tab=1&page=2/?pid=3/?pid=3/?pid=2/?pid=2/', '', 1, 0),
(1389, 9, 25, 'http://BOOKMYKHANA.COM/store/browse/?tab=1&page=2/?pid=3/?pid=3/?pid=2/?pid=3/', '', 1, 0),
(1390, 9, 25, 'http://BOOKMYKHANA.COM/store/browse/?tab=1&page=2/?pid=3/?pid=3/?pid=3/?pid=2/', '', 1, 0),
(1391, 9, 25, 'http://BOOKMYKHANA.COM/store/browse/?tab=1&page=2/?pid=3/?pid=3/?pid=3/?pid=3/', '', 1, 0),
(1392, 9, 25, 'http://BOOKMYKHANA.COM/store/browse/?tab=3&page=2/?pid=2/?pid=2/?pid=2/?pid=2/', '', 1, 0),
(1393, 9, 25, 'http://BOOKMYKHANA.COM/store/browse/?tab=3&page=2/?pid=2/?pid=2/?pid=2/?pid=3/', '', 1, 0),
(1394, 9, 25, 'http://BOOKMYKHANA.COM/store/browse/?tab=3&page=2/?pid=2/?pid=2/?pid=3/?pid=2/', '', 1, 0),
(1395, 9, 25, 'http://BOOKMYKHANA.COM/store/browse/?tab=3&page=2/?pid=2/?pid=2/?pid=3/?pid=3/', '', 1, 0),
(1396, 9, 25, 'http://BOOKMYKHANA.COM/store/browse/?tab=3&page=2/?pid=2/?pid=3/?pid=2/?pid=2/', '', 1, 0),
(1397, 9, 25, 'http://BOOKMYKHANA.COM/store/browse/?tab=3&page=2/?pid=2/?pid=3/?pid=2/?pid=3/', '', 1, 0),
(1398, 9, 25, 'http://BOOKMYKHANA.COM/store/browse/?tab=3&page=2/?pid=2/?pid=3/?pid=3/?pid=2/', '', 1, 0),
(1399, 9, 25, 'http://BOOKMYKHANA.COM/store/browse/?tab=3&page=2/?pid=2/?pid=3/?pid=3/?pid=3/', '', 1, 0),
(1400, 9, 25, 'http://BOOKMYKHANA.COM/store/browse/?tab=3&page=2/?pid=3/?pid=2/?pid=2/?pid=2/', '', 1, 0),
(1401, 9, 25, 'http://BOOKMYKHANA.COM/store/browse/?tab=3&page=2/?pid=3/?pid=2/?pid=2/?pid=3/', '', 1, 0),
(1402, 9, 25, 'http://BOOKMYKHANA.COM/store/browse/?tab=3&page=2/?pid=3/?pid=2/?pid=3/?pid=2/', '', 1, 0),
(1403, 9, 25, 'http://BOOKMYKHANA.COM/store/browse/?tab=3&page=2/?pid=3/?pid=2/?pid=3/?pid=3/', '', 1, 0),
(1404, 9, 25, 'http://BOOKMYKHANA.COM/store/browse/?tab=3&page=2/?pid=3/?pid=3/?pid=2/?pid=2/', '', 1, 0),
(1405, 9, 25, 'http://BOOKMYKHANA.COM/store/browse/?tab=3&page=2/?pid=3/?pid=3/?pid=2/?pid=3/', '', 1, 0),
(1406, 9, 25, 'http://BOOKMYKHANA.COM/store/browse/?tab=3&page=2/?pid=3/?pid=3/?pid=3/?pid=2/', '', 1, 0),
(1407, 9, 25, 'http://BOOKMYKHANA.COM/store/browse/?tab=3&page=2/?pid=3/?pid=3/?pid=3/?pid=3/', '', 1, 0),
(1408, 9, 25, 'http://BOOKMYKHANA.COM/store/browse/?tab=1&page=2/?pid=2/?pid=2/?pid=2/?pid=2/?pid=2/', '', 1, 0),
(1409, 9, 25, 'http://BOOKMYKHANA.COM/store/browse/?tab=1&page=2/?pid=2/?pid=2/?pid=2/?pid=2/?pid=3/', '', 1, 0),
(1410, 9, 25, 'http://BOOKMYKHANA.COM/store/browse/?tab=1&page=2/?pid=2/?pid=2/?pid=2/?pid=3/?pid=2/', '', 1, 0),
(1411, 9, 25, 'http://BOOKMYKHANA.COM/store/browse/?tab=1&page=2/?pid=2/?pid=2/?pid=2/?pid=3/?pid=3/', '', 1, 0),
(1412, 9, 25, 'http://BOOKMYKHANA.COM/store/browse/?tab=1&page=2/?pid=2/?pid=2/?pid=3/?pid=2/?pid=2/', '', 1, 0),
(1413, 9, 25, 'http://BOOKMYKHANA.COM/store/browse/?tab=1&page=2/?pid=2/?pid=2/?pid=3/?pid=2/?pid=3/', '', 1, 0),
(1414, 9, 25, 'http://BOOKMYKHANA.COM/store/browse/?tab=1&page=2/?pid=2/?pid=2/?pid=3/?pid=3/?pid=2/', '', 1, 0),
(1415, 9, 25, 'http://BOOKMYKHANA.COM/store/browse/?tab=1&page=2/?pid=2/?pid=2/?pid=3/?pid=3/?pid=3/', '', 1, 0),
(1416, 9, 25, 'http://BOOKMYKHANA.COM/store/browse/?tab=1&page=2/?pid=2/?pid=3/?pid=2/?pid=2/?pid=2/', '', 1, 0),
(1417, 9, 25, 'http://BOOKMYKHANA.COM/store/browse/?tab=1&page=2/?pid=2/?pid=3/?pid=2/?pid=2/?pid=3/', '', 1, 0),
(1418, 9, 25, 'http://BOOKMYKHANA.COM/store/browse/?tab=1&page=2/?pid=2/?pid=3/?pid=2/?pid=3/?pid=2/', '', 1, 0),
(1419, 9, 25, 'http://BOOKMYKHANA.COM/store/browse/?tab=1&page=2/?pid=2/?pid=3/?pid=2/?pid=3/?pid=3/', '', 1, 0),
(1420, 9, 25, 'http://BOOKMYKHANA.COM/store/browse/?tab=1&page=2/?pid=2/?pid=3/?pid=3/?pid=2/?pid=2/', '', 1, 0),
(1421, 9, 25, 'http://BOOKMYKHANA.COM/store/browse/?tab=1&page=2/?pid=2/?pid=3/?pid=3/?pid=2/?pid=3/', '', 1, 0),
(1422, 9, 25, 'http://BOOKMYKHANA.COM/store/browse/?tab=1&page=2/?pid=2/?pid=3/?pid=3/?pid=3/?pid=2/', '', 1, 0),
(1423, 9, 25, 'http://BOOKMYKHANA.COM/store/browse/?tab=1&page=2/?pid=2/?pid=3/?pid=3/?pid=3/?pid=3/', '', 1, 0),
(1424, 9, 25, 'http://BOOKMYKHANA.COM/store/browse/?tab=1&page=2/?pid=3/?pid=2/?pid=2/?pid=2/?pid=2/', '', 1, 0),
(1425, 9, 25, 'http://BOOKMYKHANA.COM/store/browse/?tab=1&page=2/?pid=3/?pid=2/?pid=2/?pid=2/?pid=3/', '', 1, 0),
(1426, 9, 25, 'http://BOOKMYKHANA.COM/store/browse/?tab=1&page=2/?pid=3/?pid=2/?pid=2/?pid=3/?pid=2/', '', 1, 0),
(1427, 9, 25, 'http://BOOKMYKHANA.COM/store/browse/?tab=1&page=2/?pid=3/?pid=2/?pid=2/?pid=3/?pid=3/', '', 1, 0),
(1428, 9, 25, 'http://BOOKMYKHANA.COM/store/browse/?tab=1&page=2/?pid=3/?pid=2/?pid=3/?pid=2/?pid=2/', '', 1, 0),
(1429, 9, 25, 'http://BOOKMYKHANA.COM/store/browse/?tab=1&page=2/?pid=3/?pid=2/?pid=3/?pid=2/?pid=3/', '', 1, 0),
(1430, 9, 25, 'http://BOOKMYKHANA.COM/store/browse/?tab=1&page=2/?pid=3/?pid=2/?pid=3/?pid=3/?pid=2/', '', 1, 0),
(1431, 9, 25, 'http://BOOKMYKHANA.COM/store/browse/?tab=1&page=2/?pid=3/?pid=2/?pid=3/?pid=3/?pid=3/', '', 1, 0),
(1432, 9, 25, 'http://BOOKMYKHANA.COM/store/browse/?tab=1&page=2/?pid=3/?pid=3/?pid=2/?pid=2/?pid=2/', '', 1, 0),
(1433, 9, 25, 'http://BOOKMYKHANA.COM/store/browse/?tab=1&page=2/?pid=3/?pid=3/?pid=2/?pid=2/?pid=3/', '', 1, 0),
(1434, 9, 25, 'http://BOOKMYKHANA.COM/store/browse/?tab=1&page=2/?pid=3/?pid=3/?pid=2/?pid=3/?pid=2/', '', 1, 0),
(1435, 9, 25, 'http://BOOKMYKHANA.COM/store/browse/?tab=1&page=2/?pid=3/?pid=3/?pid=2/?pid=3/?pid=3/', '', 1, 0),
(1436, 9, 25, 'http://BOOKMYKHANA.COM/store/browse/?tab=1&page=2/?pid=3/?pid=3/?pid=3/?pid=2/?pid=2/', '', 1, 0),
(1437, 9, 25, 'http://BOOKMYKHANA.COM/store/browse/?tab=1&page=2/?pid=3/?pid=3/?pid=3/?pid=2/?pid=3/', '', 1, 0),
(1438, 9, 25, 'http://BOOKMYKHANA.COM/store/browse/?tab=1&page=2/?pid=3/?pid=3/?pid=3/?pid=3/?pid=2/', '', 1, 0),
(1439, 9, 25, 'http://BOOKMYKHANA.COM/store/browse/?tab=1&page=2/?pid=3/?pid=3/?pid=3/?pid=3/?pid=3/', '', 1, 0),
(1440, 9, 25, 'http://BOOKMYKHANA.COM/store/browse/?tab=3&page=2/?pid=2/?pid=2/?pid=2/?pid=2/?pid=2/', '', 1, 0),
(1441, 9, 25, 'http://BOOKMYKHANA.COM/store/browse/?tab=3&page=2/?pid=2/?pid=2/?pid=2/?pid=2/?pid=3/', '', 1, 0),
(1442, 9, 25, 'http://BOOKMYKHANA.COM/store/browse/?tab=3&page=2/?pid=2/?pid=2/?pid=2/?pid=3/?pid=2/', '', 1, 0),
(1443, 9, 25, 'http://BOOKMYKHANA.COM/store/browse/?tab=3&page=2/?pid=2/?pid=2/?pid=2/?pid=3/?pid=3/', '', 1, 0),
(1444, 9, 25, 'http://BOOKMYKHANA.COM/store/browse/?tab=3&page=2/?pid=2/?pid=2/?pid=3/?pid=2/?pid=2/', '', 1, 0),
(1445, 9, 25, 'http://BOOKMYKHANA.COM/store/browse/?tab=3&page=2/?pid=2/?pid=2/?pid=3/?pid=2/?pid=3/', '', 1, 0),
(1446, 9, 25, 'http://BOOKMYKHANA.COM/store/browse/?tab=3&page=2/?pid=2/?pid=2/?pid=3/?pid=3/?pid=2/', '', 1, 0),
(1447, 9, 25, 'http://BOOKMYKHANA.COM/store/browse/?tab=3&page=2/?pid=2/?pid=2/?pid=3/?pid=3/?pid=3/', '', 1, 0),
(1448, 9, 25, 'http://BOOKMYKHANA.COM/store/browse/?tab=3&page=2/?pid=2/?pid=3/?pid=2/?pid=2/?pid=2/', '', 1, 0),
(1449, 9, 25, 'http://BOOKMYKHANA.COM/store/browse/?tab=3&page=2/?pid=2/?pid=3/?pid=2/?pid=2/?pid=3/', '', 1, 0),
(1450, 9, 25, 'http://BOOKMYKHANA.COM/store/browse/?tab=3&page=2/?pid=2/?pid=3/?pid=2/?pid=3/?pid=2/', '', 1, 0),
(1451, 9, 25, 'http://BOOKMYKHANA.COM/store/browse/?tab=3&page=2/?pid=2/?pid=3/?pid=2/?pid=3/?pid=3/', '', 1, 0),
(1452, 9, 25, 'http://BOOKMYKHANA.COM/store/browse/?tab=3&page=2/?pid=2/?pid=3/?pid=3/?pid=2/?pid=2/', '', 1, 0),
(1453, 9, 25, 'http://BOOKMYKHANA.COM/store/browse/?tab=3&page=2/?pid=2/?pid=3/?pid=3/?pid=2/?pid=3/', '', 1, 0),
(1454, 9, 25, 'http://BOOKMYKHANA.COM/store/browse/?tab=3&page=2/?pid=2/?pid=3/?pid=3/?pid=3/?pid=2/', '', 1, 0),
(1455, 9, 25, 'http://BOOKMYKHANA.COM/store/browse/?tab=3&page=2/?pid=2/?pid=3/?pid=3/?pid=3/?pid=3/', '', 1, 0),
(1456, 9, 25, 'http://BOOKMYKHANA.COM/store/browse/?tab=3&page=2/?pid=3/?pid=2/?pid=2/?pid=2/?pid=2/', '', 1, 0),
(1457, 9, 25, 'http://BOOKMYKHANA.COM/store/browse/?tab=3&page=2/?pid=3/?pid=2/?pid=2/?pid=2/?pid=3/', '', 1, 0),
(1458, 9, 25, 'http://BOOKMYKHANA.COM/store/browse/?tab=3&page=2/?pid=3/?pid=2/?pid=2/?pid=3/?pid=2/', '', 1, 0),
(1459, 9, 25, 'http://BOOKMYKHANA.COM/store/browse/?tab=3&page=2/?pid=3/?pid=2/?pid=2/?pid=3/?pid=3/', '', 1, 0),
(1460, 9, 25, 'http://BOOKMYKHANA.COM/store/browse/?tab=3&page=2/?pid=3/?pid=2/?pid=3/?pid=2/?pid=2/', '', 1, 0),
(1461, 9, 25, 'http://BOOKMYKHANA.COM/store/browse/?tab=3&page=2/?pid=3/?pid=2/?pid=3/?pid=2/?pid=3/', '', 1, 0),
(1462, 9, 25, 'http://BOOKMYKHANA.COM/store/browse/?tab=3&page=2/?pid=3/?pid=2/?pid=3/?pid=3/?pid=2/', '', 1, 0),
(1463, 9, 25, 'http://BOOKMYKHANA.COM/store/browse/?tab=3&page=2/?pid=3/?pid=2/?pid=3/?pid=3/?pid=3/', '', 1, 0),
(1464, 9, 25, 'http://BOOKMYKHANA.COM/store/browse/?tab=3&page=2/?pid=3/?pid=3/?pid=2/?pid=2/?pid=2/', '', 1, 0),
(1465, 9, 25, 'http://BOOKMYKHANA.COM/store/browse/?tab=3&page=2/?pid=3/?pid=3/?pid=2/?pid=2/?pid=3/', '', 1, 0),
(1466, 9, 25, 'http://BOOKMYKHANA.COM/store/browse/?tab=3&page=2/?pid=3/?pid=3/?pid=2/?pid=3/?pid=2/', '', 1, 0),
(1467, 9, 25, 'http://BOOKMYKHANA.COM/store/browse/?tab=3&page=2/?pid=3/?pid=3/?pid=2/?pid=3/?pid=3/', '', 1, 0),
(1468, 9, 25, 'http://BOOKMYKHANA.COM/store/browse/?tab=3&page=2/?pid=3/?pid=3/?pid=3/?pid=2/?pid=2/', '', 1, 0),
(1469, 9, 25, 'http://BOOKMYKHANA.COM/store/browse/?tab=3&page=2/?pid=3/?pid=3/?pid=3/?pid=2/?pid=3/', '', 1, 0),
(1470, 9, 25, 'http://BOOKMYKHANA.COM/store/browse/?tab=3&page=2/?pid=3/?pid=3/?pid=3/?pid=3/?pid=2/', '', 1, 0),
(1471, 9, 25, 'http://BOOKMYKHANA.COM/store/browse/?tab=3&page=2/?pid=3/?pid=3/?pid=3/?pid=3/?pid=3/', '', 1, 0),
(1472, 9, 25, 'http://BOOKMYKHANA.COM/store/browse/?tab=1&page=2/?pid=2/?pid=2/?pid=2/?pid=2/?pid=2/?pid=2/', '', 1, 0),
(1473, 9, 25, 'http://BOOKMYKHANA.COM/store/browse/?tab=1&page=2/?pid=2/?pid=2/?pid=2/?pid=2/?pid=2/?pid=3/', '', 1, 0),
(1474, 9, 25, 'http://BOOKMYKHANA.COM/store/browse/?tab=1&page=2/?pid=2/?pid=2/?pid=2/?pid=2/?pid=3/?pid=2/', '', 1, 0),
(1475, 9, 25, 'http://BOOKMYKHANA.COM/store/browse/?tab=1&page=2/?pid=2/?pid=2/?pid=2/?pid=2/?pid=3/?pid=3/', '', 1, 0),
(1476, 9, 25, 'http://BOOKMYKHANA.COM/store/browse/?tab=1&page=2/?pid=2/?pid=2/?pid=2/?pid=3/?pid=2/?pid=2/', '', 1, 0),
(1477, 9, 25, 'http://BOOKMYKHANA.COM/store/browse/?tab=1&page=2/?pid=2/?pid=2/?pid=2/?pid=3/?pid=2/?pid=3/', '', 1, 0),
(1478, 9, 25, 'http://BOOKMYKHANA.COM/store/browse/?tab=1&page=2/?pid=2/?pid=2/?pid=2/?pid=3/?pid=3/?pid=2/', '', 1, 0),
(1479, 9, 25, 'http://BOOKMYKHANA.COM/store/browse/?tab=1&page=2/?pid=2/?pid=2/?pid=2/?pid=3/?pid=3/?pid=3/', '', 1, 0),
(1480, 9, 25, 'http://BOOKMYKHANA.COM/store/browse/?tab=1&page=2/?pid=2/?pid=2/?pid=3/?pid=2/?pid=2/?pid=2/', '', 1, 0),
(1481, 9, 25, 'http://BOOKMYKHANA.COM/store/browse/?tab=1&page=2/?pid=2/?pid=2/?pid=3/?pid=2/?pid=2/?pid=3/', '', 1, 0),
(1482, 9, 25, 'http://BOOKMYKHANA.COM/store/browse/?tab=1&page=2/?pid=2/?pid=2/?pid=3/?pid=2/?pid=3/?pid=2/', '', 1, 0),
(1483, 9, 25, 'http://BOOKMYKHANA.COM/store/browse/?tab=1&page=2/?pid=2/?pid=2/?pid=3/?pid=2/?pid=3/?pid=3/', '', 1, 0),
(1484, 9, 25, 'http://BOOKMYKHANA.COM/store/browse/?tab=1&page=2/?pid=2/?pid=2/?pid=3/?pid=3/?pid=2/?pid=2/', '', 1, 0),
(1485, 9, 25, 'http://BOOKMYKHANA.COM/store/browse/?tab=1&page=2/?pid=2/?pid=2/?pid=3/?pid=3/?pid=2/?pid=3/', '', 1, 0),
(1486, 9, 25, 'http://BOOKMYKHANA.COM/store/browse/?tab=1&page=2/?pid=2/?pid=2/?pid=3/?pid=3/?pid=3/?pid=2/', '', 1, 0),
(1487, 9, 25, 'http://BOOKMYKHANA.COM/store/browse/?tab=1&page=2/?pid=2/?pid=2/?pid=3/?pid=3/?pid=3/?pid=3/', '', 1, 0),
(1488, 9, 25, 'http://BOOKMYKHANA.COM/store/browse/?tab=1&page=2/?pid=2/?pid=3/?pid=2/?pid=2/?pid=2/?pid=2/', '', 1, 0),
(1489, 9, 25, 'http://BOOKMYKHANA.COM/store/browse/?tab=1&page=2/?pid=2/?pid=3/?pid=2/?pid=2/?pid=2/?pid=3/', '', 1, 0),
(1490, 9, 25, 'http://BOOKMYKHANA.COM/store/browse/?tab=1&page=2/?pid=2/?pid=3/?pid=2/?pid=2/?pid=3/?pid=2/', '', 1, 0),
(1491, 9, 25, 'http://BOOKMYKHANA.COM/store/browse/?tab=1&page=2/?pid=2/?pid=3/?pid=2/?pid=2/?pid=3/?pid=3/', '', 1, 0),
(1492, 9, 25, 'http://BOOKMYKHANA.COM/store/browse/?tab=1&page=2/?pid=2/?pid=3/?pid=2/?pid=3/?pid=2/?pid=2/', '', 1, 0),
(1493, 9, 25, 'http://BOOKMYKHANA.COM/store/browse/?tab=1&page=2/?pid=2/?pid=3/?pid=2/?pid=3/?pid=2/?pid=3/', '', 1, 0),
(1494, 9, 25, 'http://BOOKMYKHANA.COM/store/browse/?tab=1&page=2/?pid=2/?pid=3/?pid=2/?pid=3/?pid=3/?pid=2/', '', 1, 0),
(1495, 9, 25, 'http://BOOKMYKHANA.COM/store/browse/?tab=1&page=2/?pid=2/?pid=3/?pid=2/?pid=3/?pid=3/?pid=3/', '', 1, 0),
(1496, 9, 25, 'http://BOOKMYKHANA.COM/store/browse/?tab=1&page=2/?pid=2/?pid=3/?pid=3/?pid=2/?pid=2/?pid=2/', '', 1, 0),
(1497, 9, 25, 'http://BOOKMYKHANA.COM/store/browse/?tab=1&page=2/?pid=2/?pid=3/?pid=3/?pid=2/?pid=2/?pid=3/', '', 1, 0),
(1498, 9, 25, 'http://BOOKMYKHANA.COM/store/browse/?tab=1&page=2/?pid=2/?pid=3/?pid=3/?pid=2/?pid=3/?pid=2/', '', 1, 0),
(1499, 9, 25, 'http://BOOKMYKHANA.COM/store/browse/?tab=1&page=2/?pid=2/?pid=3/?pid=3/?pid=2/?pid=3/?pid=3/', '', 1, 0),
(1500, 9, 25, 'http://BOOKMYKHANA.COM/store/browse/?tab=1&page=2/?pid=2/?pid=3/?pid=3/?pid=3/?pid=2/?pid=2/', '', 1, 0),
(1501, 9, 25, 'http://BOOKMYKHANA.COM/store/browse/?tab=1&page=2/?pid=2/?pid=3/?pid=3/?pid=3/?pid=2/?pid=3/', '', 1, 0),
(1502, 9, 25, 'http://BOOKMYKHANA.COM/store/browse/?tab=1&page=2/?pid=2/?pid=3/?pid=3/?pid=3/?pid=3/?pid=2/', '', 0, 0),
(1503, 9, 25, 'http://BOOKMYKHANA.COM/store/browse/?tab=1&page=2/?pid=2/?pid=3/?pid=3/?pid=3/?pid=3/?pid=3/', '', 0, 0),
(1504, 9, 25, 'http://BOOKMYKHANA.COM/store/browse/?tab=1&page=2/?pid=3/?pid=2/?pid=2/?pid=2/?pid=2/?pid=2/', '', 0, 0),
(1505, 9, 25, 'http://BOOKMYKHANA.COM/store/browse/?tab=1&page=2/?pid=3/?pid=2/?pid=2/?pid=2/?pid=2/?pid=3/', '', 0, 0),
(1506, 9, 25, 'http://BOOKMYKHANA.COM/store/browse/?tab=1&page=2/?pid=3/?pid=2/?pid=2/?pid=2/?pid=3/?pid=2/', '', 0, 0),
(1507, 9, 25, 'http://BOOKMYKHANA.COM/store/browse/?tab=1&page=2/?pid=3/?pid=2/?pid=2/?pid=2/?pid=3/?pid=3/', '', 0, 0),
(1508, 9, 25, 'http://BOOKMYKHANA.COM/store/browse/?tab=1&page=2/?pid=3/?pid=2/?pid=2/?pid=3/?pid=2/?pid=2/', '', 0, 0),
(1509, 9, 25, 'http://BOOKMYKHANA.COM/store/browse/?tab=1&page=2/?pid=3/?pid=2/?pid=2/?pid=3/?pid=2/?pid=3/', '', 0, 0),
(1510, 9, 25, 'http://BOOKMYKHANA.COM/store/browse/?tab=1&page=2/?pid=3/?pid=2/?pid=2/?pid=3/?pid=3/?pid=2/', '', 0, 0),
(1511, 9, 25, 'http://BOOKMYKHANA.COM/store/browse/?tab=1&page=2/?pid=3/?pid=2/?pid=2/?pid=3/?pid=3/?pid=3/', '', 0, 0),
(1512, 9, 25, 'http://BOOKMYKHANA.COM/store/browse/?tab=1&page=2/?pid=3/?pid=2/?pid=3/?pid=2/?pid=2/?pid=2/', '', 0, 0),
(1513, 9, 25, 'http://BOOKMYKHANA.COM/store/browse/?tab=1&page=2/?pid=3/?pid=2/?pid=3/?pid=2/?pid=2/?pid=3/', '', 0, 0),
(1514, 9, 25, 'http://BOOKMYKHANA.COM/store/browse/?tab=1&page=2/?pid=3/?pid=2/?pid=3/?pid=2/?pid=3/?pid=2/', '', 0, 0),
(1515, 9, 25, 'http://BOOKMYKHANA.COM/store/browse/?tab=1&page=2/?pid=3/?pid=2/?pid=3/?pid=2/?pid=3/?pid=3/', '', 0, 0),
(1516, 9, 25, 'http://BOOKMYKHANA.COM/store/browse/?tab=1&page=2/?pid=3/?pid=2/?pid=3/?pid=3/?pid=2/?pid=2/', '', 0, 0),
(1517, 9, 25, 'http://BOOKMYKHANA.COM/store/browse/?tab=1&page=2/?pid=3/?pid=2/?pid=3/?pid=3/?pid=2/?pid=3/', '', 0, 0),
(1518, 9, 25, 'http://BOOKMYKHANA.COM/store/browse/?tab=1&page=2/?pid=3/?pid=2/?pid=3/?pid=3/?pid=3/?pid=2/', '', 0, 0),
(1519, 9, 25, 'http://BOOKMYKHANA.COM/store/browse/?tab=1&page=2/?pid=3/?pid=2/?pid=3/?pid=3/?pid=3/?pid=3/', '', 0, 0),
(1520, 9, 25, 'http://BOOKMYKHANA.COM/store/browse/?tab=1&page=2/?pid=3/?pid=3/?pid=2/?pid=2/?pid=2/?pid=2/', '', 0, 0),
(1521, 9, 25, 'http://BOOKMYKHANA.COM/store/browse/?tab=1&page=2/?pid=3/?pid=3/?pid=2/?pid=2/?pid=2/?pid=3/', '', 0, 0),
(1522, 9, 25, 'http://BOOKMYKHANA.COM/store/browse/?tab=1&page=2/?pid=3/?pid=3/?pid=2/?pid=2/?pid=3/?pid=2/', '', 0, 0),
(1523, 9, 25, 'http://BOOKMYKHANA.COM/store/browse/?tab=1&page=2/?pid=3/?pid=3/?pid=2/?pid=2/?pid=3/?pid=3/', '', 0, 0),
(1524, 9, 25, 'http://BOOKMYKHANA.COM/store/browse/?tab=1&page=2/?pid=3/?pid=3/?pid=2/?pid=3/?pid=2/?pid=2/', '', 0, 0),
(1525, 9, 25, 'http://BOOKMYKHANA.COM/store/browse/?tab=1&page=2/?pid=3/?pid=3/?pid=2/?pid=3/?pid=2/?pid=3/', '', 0, 0),
(1526, 9, 25, 'http://BOOKMYKHANA.COM/store/browse/?tab=1&page=2/?pid=3/?pid=3/?pid=2/?pid=3/?pid=3/?pid=2/', '', 0, 0),
(1527, 9, 25, 'http://BOOKMYKHANA.COM/store/browse/?tab=1&page=2/?pid=3/?pid=3/?pid=2/?pid=3/?pid=3/?pid=3/', '', 0, 0),
(1528, 9, 25, 'http://BOOKMYKHANA.COM/store/browse/?tab=1&page=2/?pid=3/?pid=3/?pid=3/?pid=2/?pid=2/?pid=2/', '', 0, 0),
(1529, 9, 25, 'http://BOOKMYKHANA.COM/store/browse/?tab=1&page=2/?pid=3/?pid=3/?pid=3/?pid=2/?pid=2/?pid=3/', '', 0, 0),
(1530, 9, 25, 'http://BOOKMYKHANA.COM/store/browse/?tab=1&page=2/?pid=3/?pid=3/?pid=3/?pid=2/?pid=3/?pid=2/', '', 0, 0),
(1531, 9, 25, 'http://BOOKMYKHANA.COM/store/browse/?tab=1&page=2/?pid=3/?pid=3/?pid=3/?pid=2/?pid=3/?pid=3/', '', 0, 0),
(1532, 9, 25, 'http://BOOKMYKHANA.COM/store/browse/?tab=1&page=2/?pid=3/?pid=3/?pid=3/?pid=3/?pid=2/?pid=2/', '', 0, 0),
(1533, 9, 25, 'http://BOOKMYKHANA.COM/store/browse/?tab=1&page=2/?pid=3/?pid=3/?pid=3/?pid=3/?pid=2/?pid=3/', '', 0, 0),
(1534, 9, 25, 'http://BOOKMYKHANA.COM/store/browse/?tab=1&page=2/?pid=3/?pid=3/?pid=3/?pid=3/?pid=3/?pid=2/', '', 0, 0),
(1535, 9, 25, 'http://BOOKMYKHANA.COM/store/browse/?tab=1&page=2/?pid=3/?pid=3/?pid=3/?pid=3/?pid=3/?pid=3/', '', 0, 0),
(1536, 9, 25, 'http://BOOKMYKHANA.COM/store/browse/?tab=3&page=2/?pid=2/?pid=2/?pid=2/?pid=2/?pid=2/?pid=2/', '', 0, 0),
(1537, 9, 25, 'http://BOOKMYKHANA.COM/store/browse/?tab=3&page=2/?pid=2/?pid=2/?pid=2/?pid=2/?pid=2/?pid=3/', '', 0, 0),
(1538, 9, 25, 'http://BOOKMYKHANA.COM/store/browse/?tab=3&page=2/?pid=2/?pid=2/?pid=2/?pid=2/?pid=3/?pid=2/', '', 0, 0),
(1539, 9, 25, 'http://BOOKMYKHANA.COM/store/browse/?tab=3&page=2/?pid=2/?pid=2/?pid=2/?pid=2/?pid=3/?pid=3/', '', 0, 0),
(1540, 9, 25, 'http://BOOKMYKHANA.COM/store/browse/?tab=3&page=2/?pid=2/?pid=2/?pid=2/?pid=3/?pid=2/?pid=2/', '', 0, 0),
(1541, 9, 25, 'http://BOOKMYKHANA.COM/store/browse/?tab=3&page=2/?pid=2/?pid=2/?pid=2/?pid=3/?pid=2/?pid=3/', '', 0, 0),
(1542, 9, 25, 'http://BOOKMYKHANA.COM/store/browse/?tab=3&page=2/?pid=2/?pid=2/?pid=2/?pid=3/?pid=3/?pid=2/', '', 0, 0),
(1543, 9, 25, 'http://BOOKMYKHANA.COM/store/browse/?tab=3&page=2/?pid=2/?pid=2/?pid=2/?pid=3/?pid=3/?pid=3/', '', 0, 0),
(1544, 9, 25, 'http://BOOKMYKHANA.COM/store/browse/?tab=3&page=2/?pid=2/?pid=2/?pid=3/?pid=2/?pid=2/?pid=2/', '', 0, 0),
(1545, 9, 25, 'http://BOOKMYKHANA.COM/store/browse/?tab=3&page=2/?pid=2/?pid=2/?pid=3/?pid=2/?pid=2/?pid=3/', '', 0, 0),
(1546, 9, 25, 'http://BOOKMYKHANA.COM/store/browse/?tab=3&page=2/?pid=2/?pid=2/?pid=3/?pid=2/?pid=3/?pid=2/', '', 0, 0),
(1547, 9, 25, 'http://BOOKMYKHANA.COM/store/browse/?tab=3&page=2/?pid=2/?pid=2/?pid=3/?pid=2/?pid=3/?pid=3/', '', 0, 0),
(1548, 9, 25, 'http://BOOKMYKHANA.COM/store/browse/?tab=3&page=2/?pid=2/?pid=2/?pid=3/?pid=3/?pid=2/?pid=2/', '', 0, 0),
(1549, 9, 25, 'http://BOOKMYKHANA.COM/store/browse/?tab=3&page=2/?pid=2/?pid=2/?pid=3/?pid=3/?pid=2/?pid=3/', '', 0, 0),
(1550, 9, 25, 'http://BOOKMYKHANA.COM/store/browse/?tab=3&page=2/?pid=2/?pid=2/?pid=3/?pid=3/?pid=3/?pid=2/', '', 0, 0),
(1551, 9, 25, 'http://BOOKMYKHANA.COM/store/browse/?tab=3&page=2/?pid=2/?pid=2/?pid=3/?pid=3/?pid=3/?pid=3/', '', 0, 0),
(1552, 9, 25, 'http://BOOKMYKHANA.COM/store/browse/?tab=3&page=2/?pid=2/?pid=3/?pid=2/?pid=2/?pid=2/?pid=2/', '', 0, 0),
(1553, 9, 25, 'http://BOOKMYKHANA.COM/store/browse/?tab=3&page=2/?pid=2/?pid=3/?pid=2/?pid=2/?pid=2/?pid=3/', '', 0, 0),
(1554, 9, 25, 'http://BOOKMYKHANA.COM/store/browse/?tab=3&page=2/?pid=2/?pid=3/?pid=2/?pid=2/?pid=3/?pid=2/', '', 0, 0),
(1555, 9, 25, 'http://BOOKMYKHANA.COM/store/browse/?tab=3&page=2/?pid=2/?pid=3/?pid=2/?pid=2/?pid=3/?pid=3/', '', 0, 0),
(1556, 9, 25, 'http://BOOKMYKHANA.COM/store/browse/?tab=3&page=2/?pid=2/?pid=3/?pid=2/?pid=3/?pid=2/?pid=2/', '', 0, 0),
(1557, 9, 25, 'http://BOOKMYKHANA.COM/store/browse/?tab=3&page=2/?pid=2/?pid=3/?pid=2/?pid=3/?pid=2/?pid=3/', '', 0, 0),
(1558, 9, 25, 'http://BOOKMYKHANA.COM/store/browse/?tab=3&page=2/?pid=2/?pid=3/?pid=2/?pid=3/?pid=3/?pid=2/', '', 0, 0),
(1559, 9, 25, 'http://BOOKMYKHANA.COM/store/browse/?tab=3&page=2/?pid=2/?pid=3/?pid=2/?pid=3/?pid=3/?pid=3/', '', 0, 0),
(1560, 9, 25, 'http://BOOKMYKHANA.COM/store/browse/?tab=3&page=2/?pid=2/?pid=3/?pid=3/?pid=2/?pid=2/?pid=2/', '', 0, 0),
(1561, 9, 25, 'http://BOOKMYKHANA.COM/store/browse/?tab=3&page=2/?pid=2/?pid=3/?pid=3/?pid=2/?pid=2/?pid=3/', '', 0, 0),
(1562, 9, 25, 'http://BOOKMYKHANA.COM/store/browse/?tab=3&page=2/?pid=2/?pid=3/?pid=3/?pid=2/?pid=3/?pid=2/', '', 0, 0),
(1563, 9, 25, 'http://BOOKMYKHANA.COM/store/browse/?tab=3&page=2/?pid=2/?pid=3/?pid=3/?pid=2/?pid=3/?pid=3/', '', 0, 0),
(1564, 9, 25, 'http://BOOKMYKHANA.COM/store/browse/?tab=3&page=2/?pid=2/?pid=3/?pid=3/?pid=3/?pid=2/?pid=2/', '', 0, 0),
(1565, 9, 25, 'http://BOOKMYKHANA.COM/store/browse/?tab=3&page=2/?pid=2/?pid=3/?pid=3/?pid=3/?pid=2/?pid=3/', '', 0, 0),
(1566, 9, 25, 'http://BOOKMYKHANA.COM/store/browse/?tab=3&page=2/?pid=2/?pid=3/?pid=3/?pid=3/?pid=3/?pid=2/', '', 0, 0),
(1567, 9, 25, 'http://BOOKMYKHANA.COM/store/browse/?tab=3&page=2/?pid=2/?pid=3/?pid=3/?pid=3/?pid=3/?pid=3/', '', 0, 0),
(1568, 9, 25, 'http://BOOKMYKHANA.COM/store/browse/?tab=3&page=2/?pid=3/?pid=2/?pid=2/?pid=2/?pid=2/?pid=2/', '', 0, 0),
(1569, 9, 25, 'http://BOOKMYKHANA.COM/store/browse/?tab=3&page=2/?pid=3/?pid=2/?pid=2/?pid=2/?pid=2/?pid=3/', '', 0, 0),
(1570, 9, 25, 'http://BOOKMYKHANA.COM/store/browse/?tab=3&page=2/?pid=3/?pid=2/?pid=2/?pid=2/?pid=3/?pid=2/', '', 0, 0),
(1571, 9, 25, 'http://BOOKMYKHANA.COM/store/browse/?tab=3&page=2/?pid=3/?pid=2/?pid=2/?pid=2/?pid=3/?pid=3/', '', 0, 0),
(1572, 9, 25, 'http://BOOKMYKHANA.COM/store/browse/?tab=3&page=2/?pid=3/?pid=2/?pid=2/?pid=3/?pid=2/?pid=2/', '', 0, 0),
(1573, 9, 25, 'http://BOOKMYKHANA.COM/store/browse/?tab=3&page=2/?pid=3/?pid=2/?pid=2/?pid=3/?pid=2/?pid=3/', '', 0, 0),
(1574, 9, 25, 'http://BOOKMYKHANA.COM/store/browse/?tab=3&page=2/?pid=3/?pid=2/?pid=2/?pid=3/?pid=3/?pid=2/', '', 0, 0),
(1575, 9, 25, 'http://BOOKMYKHANA.COM/store/browse/?tab=3&page=2/?pid=3/?pid=2/?pid=2/?pid=3/?pid=3/?pid=3/', '', 0, 0),
(1576, 9, 25, 'http://BOOKMYKHANA.COM/store/browse/?tab=3&page=2/?pid=3/?pid=2/?pid=3/?pid=2/?pid=2/?pid=2/', '', 0, 0),
(1577, 9, 25, 'http://BOOKMYKHANA.COM/store/browse/?tab=3&page=2/?pid=3/?pid=2/?pid=3/?pid=2/?pid=2/?pid=3/', '', 0, 0),
(1578, 9, 25, 'http://BOOKMYKHANA.COM/store/browse/?tab=3&page=2/?pid=3/?pid=2/?pid=3/?pid=2/?pid=3/?pid=2/', '', 0, 0),
(1579, 9, 25, 'http://BOOKMYKHANA.COM/store/browse/?tab=3&page=2/?pid=3/?pid=2/?pid=3/?pid=2/?pid=3/?pid=3/', '', 0, 0),
(1580, 9, 25, 'http://BOOKMYKHANA.COM/store/browse/?tab=3&page=2/?pid=3/?pid=2/?pid=3/?pid=3/?pid=2/?pid=2/', '', 0, 0),
(1581, 9, 25, 'http://BOOKMYKHANA.COM/store/browse/?tab=3&page=2/?pid=3/?pid=2/?pid=3/?pid=3/?pid=2/?pid=3/', '', 0, 0),
(1582, 9, 25, 'http://BOOKMYKHANA.COM/store/browse/?tab=3&page=2/?pid=3/?pid=2/?pid=3/?pid=3/?pid=3/?pid=2/', '', 0, 0),
(1583, 9, 25, 'http://BOOKMYKHANA.COM/store/browse/?tab=3&page=2/?pid=3/?pid=2/?pid=3/?pid=3/?pid=3/?pid=3/', '', 0, 0),
(1584, 9, 25, 'http://BOOKMYKHANA.COM/store/browse/?tab=3&page=2/?pid=3/?pid=3/?pid=2/?pid=2/?pid=2/?pid=2/', '', 0, 0),
(1585, 9, 25, 'http://BOOKMYKHANA.COM/store/browse/?tab=3&page=2/?pid=3/?pid=3/?pid=2/?pid=2/?pid=2/?pid=3/', '', 0, 0),
(1586, 9, 25, 'http://BOOKMYKHANA.COM/store/browse/?tab=3&page=2/?pid=3/?pid=3/?pid=2/?pid=2/?pid=3/?pid=2/', '', 0, 0),
(1587, 9, 25, 'http://BOOKMYKHANA.COM/store/browse/?tab=3&page=2/?pid=3/?pid=3/?pid=2/?pid=2/?pid=3/?pid=3/', '', 0, 0),
(1588, 9, 25, 'http://BOOKMYKHANA.COM/store/browse/?tab=3&page=2/?pid=3/?pid=3/?pid=2/?pid=3/?pid=2/?pid=2/', '', 0, 0),
(1589, 9, 25, 'http://BOOKMYKHANA.COM/store/browse/?tab=3&page=2/?pid=3/?pid=3/?pid=2/?pid=3/?pid=2/?pid=3/', '', 0, 0),
(1590, 9, 25, 'http://BOOKMYKHANA.COM/store/browse/?tab=3&page=2/?pid=3/?pid=3/?pid=2/?pid=3/?pid=3/?pid=2/', '', 0, 0),
(1591, 9, 25, 'http://BOOKMYKHANA.COM/store/browse/?tab=3&page=2/?pid=3/?pid=3/?pid=2/?pid=3/?pid=3/?pid=3/', '', 0, 0),
(1592, 9, 25, 'http://BOOKMYKHANA.COM/store/browse/?tab=3&page=2/?pid=3/?pid=3/?pid=3/?pid=2/?pid=2/?pid=2/', '', 0, 0),
(1593, 9, 25, 'http://BOOKMYKHANA.COM/store/browse/?tab=3&page=2/?pid=3/?pid=3/?pid=3/?pid=2/?pid=2/?pid=3/', '', 0, 0),
(1594, 9, 25, 'http://BOOKMYKHANA.COM/store/browse/?tab=3&page=2/?pid=3/?pid=3/?pid=3/?pid=2/?pid=3/?pid=2/', '', 0, 0),
(1595, 9, 25, 'http://BOOKMYKHANA.COM/store/browse/?tab=3&page=2/?pid=3/?pid=3/?pid=3/?pid=2/?pid=3/?pid=3/', '', 0, 0),
(1596, 9, 25, 'http://BOOKMYKHANA.COM/store/browse/?tab=3&page=2/?pid=3/?pid=3/?pid=3/?pid=3/?pid=2/?pid=2/', '', 0, 0),
(1597, 9, 25, 'http://BOOKMYKHANA.COM/store/browse/?tab=3&page=2/?pid=3/?pid=3/?pid=3/?pid=3/?pid=2/?pid=3/', '', 0, 0),
(1598, 9, 25, 'http://BOOKMYKHANA.COM/store/browse/?tab=3&page=2/?pid=3/?pid=3/?pid=3/?pid=3/?pid=3/?pid=2/', '', 0, 0),
(1599, 9, 25, 'http://BOOKMYKHANA.COM/store/browse/?tab=3&page=2/?pid=3/?pid=3/?pid=3/?pid=3/?pid=3/?pid=3/', '', 0, 0),
(1600, 9, 25, 'http://BOOKMYKHANA.COM/store/browse/?tab=1&page=2/?pid=2/?pid=2/?pid=2/?pid=2/?pid=2/?pid=2/?pid=2/', '', 0, 0),
(1601, 9, 25, 'http://BOOKMYKHANA.COM/store/browse/?tab=1&page=2/?pid=2/?pid=2/?pid=2/?pid=2/?pid=2/?pid=2/?pid=3/', '', 0, 0);
INSERT INTO `ancors` (`ancor_id`, `site_id`, `crawl_id`, `ancor_href`, `ancor_stored_at`, `ancor_crawled`, `ancor_404`) VALUES
(1602, 9, 25, 'http://BOOKMYKHANA.COM/store/browse/?tab=1&page=2/?pid=2/?pid=2/?pid=2/?pid=2/?pid=2/?pid=3/?pid=2/', '', 0, 0),
(1603, 9, 25, 'http://BOOKMYKHANA.COM/store/browse/?tab=1&page=2/?pid=2/?pid=2/?pid=2/?pid=2/?pid=2/?pid=3/?pid=3/', '', 0, 0),
(1604, 9, 25, 'http://BOOKMYKHANA.COM/store/browse/?tab=1&page=2/?pid=2/?pid=2/?pid=2/?pid=2/?pid=3/?pid=2/?pid=2/', '', 0, 0),
(1605, 9, 25, 'http://BOOKMYKHANA.COM/store/browse/?tab=1&page=2/?pid=2/?pid=2/?pid=2/?pid=2/?pid=3/?pid=2/?pid=3/', '', 0, 0),
(1606, 9, 25, 'http://BOOKMYKHANA.COM/store/browse/?tab=1&page=2/?pid=2/?pid=2/?pid=2/?pid=2/?pid=3/?pid=3/?pid=2/', '', 0, 0),
(1607, 9, 25, 'http://BOOKMYKHANA.COM/store/browse/?tab=1&page=2/?pid=2/?pid=2/?pid=2/?pid=2/?pid=3/?pid=3/?pid=3/', '', 0, 0),
(1608, 9, 25, 'http://BOOKMYKHANA.COM/store/browse/?tab=1&page=2/?pid=2/?pid=2/?pid=2/?pid=3/?pid=2/?pid=2/?pid=2/', '', 0, 0),
(1609, 9, 25, 'http://BOOKMYKHANA.COM/store/browse/?tab=1&page=2/?pid=2/?pid=2/?pid=2/?pid=3/?pid=2/?pid=2/?pid=3/', '', 0, 0),
(1610, 9, 25, 'http://BOOKMYKHANA.COM/store/browse/?tab=1&page=2/?pid=2/?pid=2/?pid=2/?pid=3/?pid=2/?pid=3/?pid=2/', '', 0, 0),
(1611, 9, 25, 'http://BOOKMYKHANA.COM/store/browse/?tab=1&page=2/?pid=2/?pid=2/?pid=2/?pid=3/?pid=2/?pid=3/?pid=3/', '', 0, 0),
(1612, 9, 25, 'http://BOOKMYKHANA.COM/store/browse/?tab=1&page=2/?pid=2/?pid=2/?pid=2/?pid=3/?pid=3/?pid=2/?pid=2/', '', 0, 0),
(1613, 9, 25, 'http://BOOKMYKHANA.COM/store/browse/?tab=1&page=2/?pid=2/?pid=2/?pid=2/?pid=3/?pid=3/?pid=2/?pid=3/', '', 0, 0),
(1614, 9, 25, 'http://BOOKMYKHANA.COM/store/browse/?tab=1&page=2/?pid=2/?pid=2/?pid=2/?pid=3/?pid=3/?pid=3/?pid=2/', '', 0, 0),
(1615, 9, 25, 'http://BOOKMYKHANA.COM/store/browse/?tab=1&page=2/?pid=2/?pid=2/?pid=2/?pid=3/?pid=3/?pid=3/?pid=3/', '', 0, 0),
(1616, 9, 25, 'http://BOOKMYKHANA.COM/store/browse/?tab=1&page=2/?pid=2/?pid=2/?pid=3/?pid=2/?pid=2/?pid=2/?pid=2/', '', 0, 0),
(1617, 9, 25, 'http://BOOKMYKHANA.COM/store/browse/?tab=1&page=2/?pid=2/?pid=2/?pid=3/?pid=2/?pid=2/?pid=2/?pid=3/', '', 0, 0),
(1618, 9, 25, 'http://BOOKMYKHANA.COM/store/browse/?tab=1&page=2/?pid=2/?pid=2/?pid=3/?pid=2/?pid=2/?pid=3/?pid=2/', '', 0, 0),
(1619, 9, 25, 'http://BOOKMYKHANA.COM/store/browse/?tab=1&page=2/?pid=2/?pid=2/?pid=3/?pid=2/?pid=2/?pid=3/?pid=3/', '', 0, 0),
(1620, 9, 25, 'http://BOOKMYKHANA.COM/store/browse/?tab=1&page=2/?pid=2/?pid=2/?pid=3/?pid=2/?pid=3/?pid=2/?pid=2/', '', 0, 0),
(1621, 9, 25, 'http://BOOKMYKHANA.COM/store/browse/?tab=1&page=2/?pid=2/?pid=2/?pid=3/?pid=2/?pid=3/?pid=2/?pid=3/', '', 0, 0),
(1622, 9, 25, 'http://BOOKMYKHANA.COM/store/browse/?tab=1&page=2/?pid=2/?pid=2/?pid=3/?pid=2/?pid=3/?pid=3/?pid=2/', '', 0, 0),
(1623, 9, 25, 'http://BOOKMYKHANA.COM/store/browse/?tab=1&page=2/?pid=2/?pid=2/?pid=3/?pid=2/?pid=3/?pid=3/?pid=3/', '', 0, 0),
(1624, 9, 25, 'http://BOOKMYKHANA.COM/store/browse/?tab=1&page=2/?pid=2/?pid=2/?pid=3/?pid=3/?pid=2/?pid=2/?pid=2/', '', 0, 0),
(1625, 9, 25, 'http://BOOKMYKHANA.COM/store/browse/?tab=1&page=2/?pid=2/?pid=2/?pid=3/?pid=3/?pid=2/?pid=2/?pid=3/', '', 0, 0),
(1626, 9, 25, 'http://BOOKMYKHANA.COM/store/browse/?tab=1&page=2/?pid=2/?pid=2/?pid=3/?pid=3/?pid=2/?pid=3/?pid=2/', '', 0, 0),
(1627, 9, 25, 'http://BOOKMYKHANA.COM/store/browse/?tab=1&page=2/?pid=2/?pid=2/?pid=3/?pid=3/?pid=2/?pid=3/?pid=3/', '', 0, 0),
(1628, 9, 25, 'http://BOOKMYKHANA.COM/store/browse/?tab=1&page=2/?pid=2/?pid=2/?pid=3/?pid=3/?pid=3/?pid=2/?pid=2/', '', 0, 0),
(1629, 9, 25, 'http://BOOKMYKHANA.COM/store/browse/?tab=1&page=2/?pid=2/?pid=2/?pid=3/?pid=3/?pid=3/?pid=2/?pid=3/', '', 0, 0),
(1630, 9, 25, 'http://BOOKMYKHANA.COM/store/browse/?tab=1&page=2/?pid=2/?pid=2/?pid=3/?pid=3/?pid=3/?pid=3/?pid=2/', '', 0, 0),
(1631, 9, 25, 'http://BOOKMYKHANA.COM/store/browse/?tab=1&page=2/?pid=2/?pid=2/?pid=3/?pid=3/?pid=3/?pid=3/?pid=3/', '', 0, 0),
(1632, 9, 25, 'http://BOOKMYKHANA.COM/store/browse/?tab=1&page=2/?pid=2/?pid=3/?pid=2/?pid=2/?pid=2/?pid=2/?pid=2/', '', 0, 0),
(1633, 9, 25, 'http://BOOKMYKHANA.COM/store/browse/?tab=1&page=2/?pid=2/?pid=3/?pid=2/?pid=2/?pid=2/?pid=2/?pid=3/', '', 0, 0),
(1634, 9, 25, 'http://BOOKMYKHANA.COM/store/browse/?tab=1&page=2/?pid=2/?pid=3/?pid=2/?pid=2/?pid=2/?pid=3/?pid=2/', '', 0, 0),
(1635, 9, 25, 'http://BOOKMYKHANA.COM/store/browse/?tab=1&page=2/?pid=2/?pid=3/?pid=2/?pid=2/?pid=2/?pid=3/?pid=3/', '', 0, 0),
(1636, 9, 25, 'http://BOOKMYKHANA.COM/store/browse/?tab=1&page=2/?pid=2/?pid=3/?pid=2/?pid=2/?pid=3/?pid=2/?pid=2/', '', 0, 0),
(1637, 9, 25, 'http://BOOKMYKHANA.COM/store/browse/?tab=1&page=2/?pid=2/?pid=3/?pid=2/?pid=2/?pid=3/?pid=2/?pid=3/', '', 0, 0),
(1638, 9, 25, 'http://BOOKMYKHANA.COM/store/browse/?tab=1&page=2/?pid=2/?pid=3/?pid=2/?pid=2/?pid=3/?pid=3/?pid=2/', '', 0, 0),
(1639, 9, 25, 'http://BOOKMYKHANA.COM/store/browse/?tab=1&page=2/?pid=2/?pid=3/?pid=2/?pid=2/?pid=3/?pid=3/?pid=3/', '', 0, 0),
(1640, 9, 25, 'http://BOOKMYKHANA.COM/store/browse/?tab=1&page=2/?pid=2/?pid=3/?pid=2/?pid=3/?pid=2/?pid=2/?pid=2/', '', 0, 0),
(1641, 9, 25, 'http://BOOKMYKHANA.COM/store/browse/?tab=1&page=2/?pid=2/?pid=3/?pid=2/?pid=3/?pid=2/?pid=2/?pid=3/', '', 0, 0),
(1642, 9, 25, 'http://BOOKMYKHANA.COM/store/browse/?tab=1&page=2/?pid=2/?pid=3/?pid=2/?pid=3/?pid=2/?pid=3/?pid=2/', '', 0, 0),
(1643, 9, 25, 'http://BOOKMYKHANA.COM/store/browse/?tab=1&page=2/?pid=2/?pid=3/?pid=2/?pid=3/?pid=2/?pid=3/?pid=3/', '', 0, 0),
(1644, 9, 25, 'http://BOOKMYKHANA.COM/store/browse/?tab=1&page=2/?pid=2/?pid=3/?pid=2/?pid=3/?pid=3/?pid=2/?pid=2/', '', 0, 0),
(1645, 9, 25, 'http://BOOKMYKHANA.COM/store/browse/?tab=1&page=2/?pid=2/?pid=3/?pid=2/?pid=3/?pid=3/?pid=2/?pid=3/', '', 0, 0),
(1646, 9, 25, 'http://BOOKMYKHANA.COM/store/browse/?tab=1&page=2/?pid=2/?pid=3/?pid=2/?pid=3/?pid=3/?pid=3/?pid=2/', '', 0, 0),
(1647, 9, 25, 'http://BOOKMYKHANA.COM/store/browse/?tab=1&page=2/?pid=2/?pid=3/?pid=2/?pid=3/?pid=3/?pid=3/?pid=3/', '', 0, 0),
(1648, 9, 25, 'http://BOOKMYKHANA.COM/store/browse/?tab=1&page=2/?pid=2/?pid=3/?pid=3/?pid=2/?pid=2/?pid=2/?pid=2/', '', 0, 0),
(1649, 9, 25, 'http://BOOKMYKHANA.COM/store/browse/?tab=1&page=2/?pid=2/?pid=3/?pid=3/?pid=2/?pid=2/?pid=2/?pid=3/', '', 0, 0),
(1650, 9, 25, 'http://BOOKMYKHANA.COM/store/browse/?tab=1&page=2/?pid=2/?pid=3/?pid=3/?pid=2/?pid=2/?pid=3/?pid=2/', '', 0, 0),
(1651, 9, 25, 'http://BOOKMYKHANA.COM/store/browse/?tab=1&page=2/?pid=2/?pid=3/?pid=3/?pid=2/?pid=2/?pid=3/?pid=3/', '', 0, 0),
(1652, 9, 25, 'http://BOOKMYKHANA.COM/store/browse/?tab=1&page=2/?pid=2/?pid=3/?pid=3/?pid=2/?pid=3/?pid=2/?pid=2/', '', 0, 0),
(1653, 9, 25, 'http://BOOKMYKHANA.COM/store/browse/?tab=1&page=2/?pid=2/?pid=3/?pid=3/?pid=2/?pid=3/?pid=2/?pid=3/', '', 0, 0),
(1654, 9, 25, 'http://BOOKMYKHANA.COM/store/browse/?tab=1&page=2/?pid=2/?pid=3/?pid=3/?pid=2/?pid=3/?pid=3/?pid=2/', '', 0, 0),
(1655, 9, 25, 'http://BOOKMYKHANA.COM/store/browse/?tab=1&page=2/?pid=2/?pid=3/?pid=3/?pid=2/?pid=3/?pid=3/?pid=3/', '', 0, 0),
(1656, 9, 25, 'http://BOOKMYKHANA.COM/store/browse/?tab=1&page=2/?pid=2/?pid=3/?pid=3/?pid=3/?pid=2/?pid=2/?pid=2/', '', 0, 0),
(1657, 9, 25, 'http://BOOKMYKHANA.COM/store/browse/?tab=1&page=2/?pid=2/?pid=3/?pid=3/?pid=3/?pid=2/?pid=2/?pid=3/', '', 0, 0),
(1658, 9, 25, 'http://BOOKMYKHANA.COM/store/browse/?tab=1&page=2/?pid=2/?pid=3/?pid=3/?pid=3/?pid=2/?pid=3/?pid=2/', '', 0, 0),
(1659, 9, 25, 'http://BOOKMYKHANA.COM/store/browse/?tab=1&page=2/?pid=2/?pid=3/?pid=3/?pid=3/?pid=2/?pid=3/?pid=3/', '', 0, 0),
(1660, 19, 26, 'http://iitjeetestseries.com/', '', 1, 0),
(1661, 19, 26, 'http://iitjeetestseries.com/index.php', '', 1, 0),
(1662, 20, 27, 'http://lms.iitjeetestseries.com/', '', 1, 0),
(1663, 20, 27, 'http://lms.iitjeetestseries.com', '', 1, 0),
(1664, 20, 27, 'http://lms.iitjeetestseries.com/login/index.php', '', 1, 0),
(1665, 20, 27, 'http://lms.iitjeetestseries.com/signup.php', '', 1, 1),
(1666, 20, 27, 'http://lms.iitjeetestseries.com/forgot_password.php', '', 1, 1),
(1667, 20, 27, 'http://lms.iitjeetestseries.com/login/signup.php', '', 1, 0),
(1668, 20, 27, 'http://lms.iitjeetestseries.com/login/forgot_password.php', '', 1, 0),
(1669, 20, 27, 'http://lms.iitjeetestseries.com/help.php?component=auth&amp;identifier=recaptcha&amp;lang=en', '', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `ci_sessions`
--

CREATE TABLE `ci_sessions` (
  `id` varchar(40) NOT NULL DEFAULT '0',
  `ip_address` varchar(45) NOT NULL DEFAULT '0',
  `timestamp` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `data` blob NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ci_sessions`
--

INSERT INTO `ci_sessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES
('2af514b87b42dec56f6038a8bc2413a9ecc47ab9', '54.236.90.247', 1517284646, 0x5f5f63695f6c6173745f726567656e65726174657c693a313531373238343634363b),
('78ff84884e251deff4113af95187d0f6653256fb', '54.236.90.247', 1517282845, 0x5f5f63695f6c6173745f726567656e65726174657c693a313531373238323834343b);

-- --------------------------------------------------------

--
-- Table structure for table `crawls`
--

CREATE TABLE `crawls` (
  `crawl_id` int(11) NOT NULL,
  `site_id` int(11) NOT NULL,
  `timestamp` int(11) NOT NULL,
  `status` varchar(255) NOT NULL DEFAULT 'building',
  `progress` text NOT NULL,
  `timeout` int(1) NOT NULL,
  `onComplete` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `crawls`
--

INSERT INTO `crawls` (`crawl_id`, `site_id`, `timestamp`, `status`, `progress`, `timeout`, `onComplete`) VALUES
(11, 9, 1516272787, 'cancelled', '<b>29960168 Grabbing image</b>: http://BOOKMYKHANA.COM/assets/images/vendor/minimal@2x.png<br><b>29960168 Grabbing image</b>: http://BOOKMYKHANA.COM/assets/images/vendor/flat.png<br><b>29960168 Grabbing image</b>: http://BOOKMYKHANA.COM/assets/images/vendor/flat@2x.png<br><b>29960168 Grabbing image</b>: http://BOOKMYKHANA.COM/assets/images/vendor/chosen-sprite.png<br><b>29960168 Grabbing image</b>: http://BOOKMYKHANA.COM/assets/images/vendor/chosen-sprite.png<br><b>29960168 Grabbing image</b>: http://BOOKMYKHANA.COM/assets/images/vendor/chosen-sprite.png<br><b>29960168 Grabbing image</b>: http://BOOKMYKHANA.COM/assets/images/vendor/chosen-sprite.png<br><b>29960168 Grabbing image</b>: http://BOOKMYKHANA.COM/assets/images/vendor/chosen-sprite.png<br><b>29960168 Grabbing image</b>: http://BOOKMYKHANA.COM/assets/images/vendor/chosen-sprite.png<br><b>29960168 Grabbing image</b>: http://BOOKMYKHANA.COM/assets/images/vendor/chosen-sprite.png<br><b>29960168 Grabbing image</b>: http://BOOKMYKHANA.COM/assets/images/vendor/chosen-sprite@2x.png<br><b>29960168 Grabbing image</b>: http://BOOKMYKHANA.COM/assets/images/vendor/fancybox_sprite.png<br><b>29960168 Grabbing image</b>: http://BOOKMYKHANA.COM/assets/images/vendor/fancybox_loading.gif<br><b>29960168 Grabbing image</b>: http://BOOKMYKHANA.COM/assets/images/vendor/blank.gif<br><b>29960168 Grabbing image</b>: http://BOOKMYKHANA.COM/assets/images/vendor/fancybox_overlay.png<br><b>29960168 Grabbing image</b>: http://BOOKMYKHANA.COM/assets/images/vendor/fancybox_sprite@2x.png<br><b>29960168 Grabbing image</b>: http://BOOKMYKHANA.COM/assets/images/vendor/fancybox_loading@2x.gif<br><b>29960168 Grabbing image</b>: http://BOOKMYKHANA.COM/assets/images/vendor/flags.png<br><b>29960168 Grabbing image</b>: http://BOOKMYKHANA.COM/assets/images/vendor/flags@2x.png<br><b>29960168 Grabbing image</b>: http://BOOKMYKHANA.COM/assets/images/b-1.jpg<br><b>29960168 Grabbing image</b>: http://BOOKMYKHANA.COM/assets/images/bg-transparent.png<br><b>29960168 Grabbing image</b>: http://BOOKMYKHANA.COM/assets/images/bg-transparent.png<br><b>29960168 Grabbing image</b>: http://BOOKMYKHANA.COM/assets/images/top-scroller.png<br><b>29960168 Grabbing image</b>: http://BOOKMYKHANA.COM/assets/images/top-scroller.png<br><b>29960168 Grabbing image</b>: http://BOOKMYKHANA.COM/assets/images/Preloader_2.gif<br><b>29960168 Grabbing image</b>: http://BOOKMYKHANA.COM/assets/images/bg-transparent.png<br><b>29960168 Grabbing image</b>: http://BOOKMYKHANA.COM/assets/images/bg-transparent.png<br><b>29960168 Grabbing image</b>: http://BOOKMYKHANA.COM/assets/images/bg-transparent.png<br><b>29960168 Grabbing image</b>: http://BOOKMYKHANA.COM/assets/images/grey-bg.png<br><b>29960168 Grabbing image</b>: http://BOOKMYKHANA.COM/assets/images/byaddress.png<br><b>29960168 Grabbing image</b>: http://BOOKMYKHANA.COM/assets/images/byname.png<br><b>29960168 Grabbing image</b>: http://BOOKMYKHANA.COM/assets/images/bystreet.png<br><b>29960168 Grabbing image</b>: http://BOOKMYKHANA.COM/assets/images/bycuisine.png<br><b>29960168 Grabbing image</b>: http://BOOKMYKHANA.COM/assets/images/byfood.png<br><b>29960168 Grabbing image</b>: http://BOOKMYKHANA.COM/assets/images/section1-bg.png<br><b>29960168 Grabbing image</b>: http://BOOKMYKHANA.COM/assets/images/grey-bg.png<br><b>29960168 Grabbing image</b>: http://BOOKMYKHANA.COM/assets/images/Coffee-cup.gif<br><b>29960168 Grabbing image</b>: http://BOOKMYKHANA.COM/assets/images/star.png<br><b>29960168 Grabbing image</b>: http://BOOKMYKHANA.COM/assets/images/your-order.png\");}.delivery-option-icon{background:url(\"/assets/images/delivery-option.png<br><b>29960168 Grabbing image</b>: http://BOOKMYKHANA.COM/assets/images/cart.png<br><b>29960168 Grabbing image</b>: http://BOOKMYKHANA.COM/assets/images/cart-hover.png<br><b>29960168 Grabbing image</b>: http://BOOKMYKHANA.COM/assets/images/bg_country.jpg<br><b>29960168 Grabbing link</b>: http://BOOKMYKHANA.COM/home<br><b>29960168 Grabbing link</b>: http://BOOKMYKHANA.COM/home<br><b>29960168 Grabbing link</b>: http://BOOKMYKHANA.COM/browse<br><b>29960168 Grabbing link</b>: http://BOOKMYKHANA.COM/contact<br><b>29960168 Grabbing link</b>: http://BOOKMYKHANA.COM/signup<br><b>29960168 Grabbing link</b>: http://BOOKMYKHANA.COM/home<br><b>29960168 Grabbing link</b>: http://BOOKMYKHANA.COM/browse<br><b>29960168 Grabbing link</b>: http://BOOKMYKHANA.COM/contact<br><b>29960168 Grabbing link</b>: http://BOOKMYKHANA.COM/signup<br><b>29960168 Grabbing link</b>: http://BOOKMYKHANA.COM/browse<br><b>29960168 Grabbing link</b>: http://BOOKMYKHANA.COM/store/browse/?tab=2<br><b>29960168 Grabbing link</b>: http://BOOKMYKHANA.COM/store/browse/?tab=3<br><b>29960168 Grabbing link</b>: javascript:;<br><b>29960168 Grabbing link</b>: http://BOOKMYKHANA.COM/menu-sanjay-quality-breakfast<br><b>29960168 Grabbing link</b>: http://BOOKMYKHANA.COM/menu-sanjay-quality-breakfast<br><b>29960168 Grabbing link</b>: http://BOOKMYKHANA.COM/menu-1-n-only-food-mall<br><b>29960168 Grabbing link</b>: http://BOOKMYKHANA.COM/menu-1-n-only-food-mall<br><b>29960168 Grabbing link</b>: http://BOOKMYKHANA.COM/menu-hotel-parth<br><b>29960168 Grabbing link</b>: http://BOOKMYKHANA.COM/menu-hotel-parth<br><b>29960168 Grabbing link</b>: http://BOOKMYKHANA.COM/menu-dawat-family-restaurant<br><b>29960168 Grabbing link</b>: http://BOOKMYKHANA.COM/menu-dawat-family-restaurant<br><b>29960168 Grabbing link</b>: http://BOOKMYKHANA.COM/store/browse/?tab=1&page=2/?pid=2/?pid=2/?pid=3/?pid=2/?pid=2/?pid=2<br><b>29960168 Grabbing link</b>: http://BOOKMYKHANA.COM/store/browse/?tab=1&page=2/?pid=2/?pid=2/?pid=3/?pid=2/?pid=2/?pid=3<br><b>29960168 Grabbing link</b>: http://BOOKMYKHANA.COM/store/browse/?tab=1&page=2/?pid=2/?pid=2/?pid=3/?pid=2/?pid=2/?pid=2<br><b>29960168 Grabbing link</b>: http://BOOKMYKHANA.COM/store/browse/?tab=1&page=2/?pid=2/?pid=2/?pid=3/?pid=2/?pid=2/?pid=3<br><b>29960168 Grabbing link</b>: javascript:;<br><b>29960168 Grabbing link</b>: http://BOOKMYKHANA.COM/page-refund-and-cancellation-policy<br><b>29960168 Grabbing link</b>: http://BOOKMYKHANA.COM/page-privacy-policy<br><b>29960168 Grabbing link</b>: http://BOOKMYKHANA.COM/page-terms-and-conditions<br><b>29960168 Grabbing script</b>: http://BOOKMYKHANA.COM/store/browse/<br><b>29960168 Grabbing script</b>: http://BOOKMYKHANA.COM/store/browse/<br><b>29960168 Grabbing script</b>: http://BOOKMYKHANA.COM/store/browse/<br><b>29960168 Grabbing script</b>: http://BOOKMYKHANA.COM/store/browse/<br><b>29960168 Grabbing script</b>: http://BOOKMYKHANA.COM/assets/vendor/compress/combine-vendor.js?v=1.0<br><b>29960168 Grabbing script</b>: http://BOOKMYKHANA.COM/assets/vendor/markercluster.js<br><b>29960168 Grabbing script</b>: http://BOOKMYKHANA.COM/assets/vendor/timepicker.co/jquery.timepicker.js<br><b>29960168 Grabbing script</b>: http://BOOKMYKHANA.COM/assets/js/store.js?ver=3<br><b>29960168 Grabbing script</b>: http://BOOKMYKHANA.COM/assets/js/store-v3.js?ver=3<br><b>29960168 Grabbing stylesheet</b>: http://BOOKMYKHANA.COM/assets/vendor/timepicker.co/jquery.timepicker.min.css<br><b>29960168 Grabbing image</b>: http://BOOKMYKHANA.COM/upload/1509511805-1508400099-asdf-copy.png<br><b>29960168 Grabbing image</b>: http://BOOKMYKHANA.COM/upload/1509528045-1508400099-asdf-copy.png<br><b>29960168 Grabbing image</b>: http://BOOKMYKHANA.COM/assets/images/banner-5-mobile.jpg<br><b>29960168 Grabbing image</b>: http://BOOKMYKHANA.COM/store/browse/<br><b>29960168 Grabbing image</b>: http://BOOKMYKHANA.COM/store/browse/<br><b>29960168 Grabbing image</b>: http://BOOKMYKHANA.COM/store/browse/<br><b>29960168 Grabbing image</b>: http://BOOKMYKHANA.COM/store/browse/<br><b>29960168 Grabbing image</b>: http://BOOKMYKHANA.COM/assets/images/divider.png<br><b>Processing link</b>: <span class=\'text-primary\'>done</span><br>', 0, ''),
(12, 9, 1516344242, 'cancelled', '<b>29585200 Grabbing image</b>: http://BOOKMYKHANA.COM/assets/images/bycuisine.png<br><b>29585200 Grabbing image</b>: http://BOOKMYKHANA.COM/assets/images/byfood.png<br><b>29585200 Grabbing image</b>: http://BOOKMYKHANA.COM/assets/images/section1-bg.png<br><b>29585200 Grabbing image</b>: http://BOOKMYKHANA.COM/assets/images/grey-bg.png<br><b>29585200 Grabbing image</b>: http://BOOKMYKHANA.COM/assets/images/Coffee-cup.gif<br><b>29585200 Grabbing image</b>: http://BOOKMYKHANA.COM/assets/images/star.png<br><b>29585200 Grabbing image</b>: http://BOOKMYKHANA.COM/assets/images/your-order.png\");}.delivery-option-icon{background:url(\"/assets/images/delivery-option.png<br><b>29585200 Grabbing image</b>: http://BOOKMYKHANA.COM/assets/images/cart.png<br><b>29585200 Grabbing image</b>: http://BOOKMYKHANA.COM/assets/images/cart-hover.png<br><b>29585200 Grabbing image</b>: http://BOOKMYKHANA.COM/assets/images/bg_country.jpg<br><b>29585200 Grabbing link</b>: http://BOOKMYKHANA.COM/home<br><b>29585200 Grabbing link</b>: javascript:;<br><b>29585200 Grabbing link</b>: http://BOOKMYKHANA.COM/home<br><b>29585200 Grabbing link</b>: http://BOOKMYKHANA.COM/browse<br><b>29585200 Grabbing link</b>: http://BOOKMYKHANA.COM/contact<br><b>29585200 Grabbing link</b>: http://BOOKMYKHANA.COM/signup<br><b>29585200 Grabbing link</b>: http://BOOKMYKHANA.COM/home<br><b>29585200 Grabbing link</b>: http://BOOKMYKHANA.COM/browse<br><b>29585200 Grabbing link</b>: http://BOOKMYKHANA.COM/contact<br><b>29585200 Grabbing link</b>: http://BOOKMYKHANA.COM/signup<br><b>29585200 Grabbing link</b>: http://BOOKMYKHANA.COM/page-refund-and-cancellation-policy<br><b>29585200 Grabbing link</b>: http://BOOKMYKHANA.COM/page-privacy-policy<br><b>29585200 Grabbing link</b>: http://BOOKMYKHANA.COM/page-terms-and-conditions<br><b>29585200 Grabbing script</b>: http://BOOKMYKHANA.COM/menu-food-corner/<br><b>29585200 Grabbing script</b>: http://BOOKMYKHANA.COM/menu-food-corner/<br><b>29585200 Grabbing script</b>: http://BOOKMYKHANA.COM/menu-food-corner/<br><b>29585200 Grabbing script</b>: http://BOOKMYKHANA.COM/menu-food-corner/<br><b>29585200 Grabbing script</b>: http://BOOKMYKHANA.COM/assets/vendor/compress/combine-vendor.js?v=1.0<br><b>29585200 Grabbing script</b>: http://BOOKMYKHANA.COM/assets/vendor/markercluster.js<br><b>29585200 Grabbing script</b>: http://BOOKMYKHANA.COM/assets/vendor/timepicker.co/jquery.timepicker.js<br><b>29585200 Grabbing script</b>: http://BOOKMYKHANA.COM/assets/js/store.js?ver=3<br><b>29585200 Grabbing script</b>: http://BOOKMYKHANA.COM/assets/js/store-v3.js?ver=3<br><b>29585200 Grabbing stylesheet</b>: http://BOOKMYKHANA.COM/assets/vendor/timepicker.co/jquery.timepicker.min.css<br><b>29585200 Grabbing image</b>: http://BOOKMYKHANA.COM/upload/1509511805-1508400099-asdf-copy.png<br><b>29585200 Grabbing image</b>: http://BOOKMYKHANA.COM/upload/1509528045-1508400099-asdf-copy.png<br><b>29585200 Grabbing image</b>: http://BOOKMYKHANA.COM/assets/images/divider.png<br><b>Processing link</b>: <span class=\'text-primary\'>done</span><br>', 0, ''),
(13, 10, 1516549473, 'complete', '', 0, ''),
(14, 10, 1516606059, 'complete', '<b>11738456 Processing image</b>: <span class=\'text-primary\'>done</span><br>', 0, ''),
(15, 13, 1516606097, 'complete', '', 0, ''),
(16, 13, 1516761388, 'cancelled', '<b>7663136 Grabbing link</b>: http://littlewe.in/<br><b>7663136 Grabbing link</b>: http://littlewe.in/servises/<br><b>7663136 Grabbing link</b>: http://littlewe.in/<br><b>7663136 Grabbing link</b>: http://littlewe.in/about-us/<br><b>7663136 Grabbing link</b>: http://littlewe.in/servises/<br><b>7663136 Grabbing link</b>: http://littlewe.in/program/<br><b>7663136 Grabbing link</b>: http://littlewe.in/f-a-q/<br><b>7663136 Grabbing link</b>: http://littlewe.in/gallery/<br><b>7663136 Grabbing link</b>: http://littlewe.in/contact-us/<br><b>7663136 Grabbing link</b>: http://littlewe.in/<br><b>7663136 Grabbing link</b>: http://littlewe.in/about-us/<br><b>7663136 Grabbing link</b>: http://littlewe.in/servises/<br><b>7663136 Grabbing link</b>: http://littlewe.in/program/<br><b>7663136 Grabbing link</b>: http://littlewe.in/f-a-q/<br><b>7663136 Grabbing link</b>: http://littlewe.in/gallery/<br><b>7663136 Grabbing link</b>: http://littlewe.in/contact-us/<br><b>7663136 Grabbing script</b>: http://littlewe.in/servises/<br><b>7663136 Grabbing script</b>: http://littlewe.in/wp-includes/js/jquery/jquery.js?ver=1.12.4<br><b>7663136 Grabbing script</b>: http://littlewe.in/wp-includes/js/jquery/jquery-migrate.min.js?ver=1.4.1<br><b>7663136 Grabbing script</b>: http://littlewe.in/wp-content/plugins/essential-grid/public/assets/js/lightbox.js?ver=2.0.9.1<br><b>7663136 Grabbing script</b>: http://littlewe.in/wp-content/plugins/essential-grid/public/assets/js/jquery.themepunch.tools.min.js?ver=2.0.9.1<br><b>7663136 Grabbing script</b>: http://littlewe.in/wp-content/plugins/essential-grid/public/assets/js/jquery.themepunch.essential.min.js?ver=2.0.9.1<br><b>7663136 Grabbing script</b>: http://littlewe.in/wp-content/plugins/revslider/public/assets/js/jquery.themepunch.revolution.min.js?ver=5.2.1<br><b>7663136 Grabbing script</b>: http://littlewe.in/servises/<br><b>7663136 Grabbing script</b>: http://littlewe.in/servises/<br><b>7663136 Grabbing script</b>: http://littlewe.in/servises/<br><b>7663136 Grabbing script</b>: http://littlewe.in/servises/<br><b>7663136 Grabbing script</b>: http://littlewe.in/servises/<br><b>7663136 Grabbing script</b>: http://littlewe.in/wp-content/plugins/contact-form-7/includes/js/jquery.form.min.js?ver=3.51.0-2014.06.20<br><b>7663136 Grabbing script</b>: http://littlewe.in/servises/<br><b>7663136 Grabbing script</b>: http://littlewe.in/wp-content/plugins/contact-form-7/includes/js/scripts.js?ver=4.4.2<br><b>7663136 Grabbing script</b>: http://littlewe.in/wp-content/themes/shopkeeper/js/jquery.touchSwipe.min.js?ver=1.6.5<br><b>7663136 Grabbing script</b>: http://littlewe.in/wp-content/themes/shopkeeper/js/jquery.fitvids.js?ver=1.0.3<br><b>7663136 Grabbing script</b>: http://littlewe.in/wp-content/themes/shopkeeper/js/idangerous.swiper-2.4.1.min.js?ver=2.4.1<br><b>7663136 Grabbing script</b>: http://littlewe.in/wp-content/themes/shopkeeper/js/owl.carousel.min.js?ver=1.3.1<br><b>7663136 Grabbing script</b>: http://littlewe.in/wp-content/themes/shopkeeper/js/fresco.js?ver=1.3.0<br><b>7663136 Grabbing script</b>: http://littlewe.in/wp-content/themes/shopkeeper/js/select2.min.js?ver=3.5.1<br><b>7663136 Grabbing script</b>: http://littlewe.in/wp-content/themes/shopkeeper/js/jquery.nanoscroller.min.js?ver=0.7.6<br><b>7663136 Grabbing script</b>: http://littlewe.in/wp-content/themes/shopkeeper/js/jquery.stellar.min.js?ver=0.6.2<br><b>7663136 Grabbing script</b>: http://littlewe.in/wp-content/themes/shopkeeper/js/isotope.pkgd.min.js?ver=v2.0.0<br><b>7663136 Grabbing script</b>: http://littlewe.in/wp-content/themes/shopkeeper/js/imagesloaded.js?ver=v3.1.4<br><b>7663136 Grabbing script</b>: http://littlewe.in/wp-content/themes/shopkeeper/js/easyzoom.js?ver=1.0<br><b>7663136 Grabbing script</b>: http://littlewe.in/wp-content/themes/shopkeeper/js/scripts.js?ver=1.0<br><b>7663136 Grabbing script</b>: http://littlewe.in/wp-includes/js/wp-embed.min.js?ver=4.5.13<br><b>7663136 Grabbing script</b>: http://littlewe.in/wp-content/plugins/js_composer/assets/js/dist/js_composer_front.min.js?ver=4.11.1<br><b>7663136 Grabbing script</b>: http://littlewe.in/wp-content/plugins/caldera-forms/assets/js/jquery.baldrick.min.js?ver=1.3.5.3<br><b>7663136 Grabbing script</b>: http://littlewe.in/wp-content/plugins/caldera-forms/assets/js/ajax-core.min.js?ver=1.3.5.3<br><b>7663136 Grabbing script</b>: http://littlewe.in/wp-content/plugins/caldera-forms/assets/js/fields.min.js?ver=1.3.5.3<br><b>7663136 Grabbing script</b>: http://littlewe.in/wp-content/plugins/caldera-forms/assets/js/parsley.min.js?ver=1.3.5.3<br><b>7663136 Grabbing script</b>: http://littlewe.in/wp-content/plugins/caldera-forms/assets/js/frontend-script-init.min.js?ver=1.3.5.3<br><b>7663136 Grabbing stylesheet</b>: http://littlewe.in/wp-content/plugins/caldera-forms/assets/css/fields.min.css?ver=1.3.5.3<br><b>7663136 Grabbing stylesheet</b>: http://littlewe.in/wp-content/plugins/caldera-forms/assets/css/caldera-grid.css?ver=1.3.5.3<br><b>7663136 Grabbing stylesheet</b>: http://littlewe.in/wp-content/plugins/caldera-forms/assets/css/caldera-form.css?ver=1.3.5.3<br><b>7663136 Grabbing stylesheet</b>: http://littlewe.in/wp-content/plugins/caldera-forms/assets/css/caldera-alert.css?ver=1.3.5.3<br><b>7663136 Grabbing stylesheet</b>: http://littlewe.in/wp-content/plugins/contact-form-7/includes/css/styles.css?ver=4.4.2<br><b>7663136 Grabbing stylesheet</b>: http://littlewe.in/wp-content/plugins/essential-grid/public/assets/css/settings.css?ver=2.0.9.1<br><b>7663136 Grabbing stylesheet</b>: http://littlewe.in/wp-content/plugins/revslider/public/assets/css/settings.css?ver=5.2.1<br><b>7663136 Grabbing stylesheet</b>: http://littlewe.in/wp-content/plugins/js_composer/assets/css/js_composer.min.css?ver=4.11.1<br><b>7663136 Grabbing stylesheet</b>: http://littlewe.in/wp-content/uploads/smile_fonts/Defaults/Defaults.css?ver=4.5.13<br><b>7663136 Grabbing stylesheet</b>: http://littlewe.in/wp-content/themes/shopkeeper/css/app.css?ver=5.3.1<br><b>7663136 Grabbing stylesheet</b>: http://littlewe.in/wp-content/themes/shopkeeper/css/animate.css?ver=2.0<br><b>7663136 Grabbing stylesheet</b>: http://littlewe.in/wp-content/themes/shopkeeper/inc/fonts/font-awesome/css/font-awesome.min.css?ver=4.0.3<br><b>7663136 Grabbing stylesheet</b>: http://littlewe.in/wp-content/themes/shopkeeper/inc/fonts/linea-fonts/arrows/styles.css?ver=1.0<br><b>7663136 Grabbing stylesheet</b>: http://littlewe.in/wp-content/themes/shopkeeper/inc/fonts/linea-fonts/basic/styles.css?ver=1.0<br><b>7663136 Grabbing stylesheet</b>: http://littlewe.in/wp-content/themes/shopkeeper/inc/fonts/linea-fonts/basic_elaboration/styles.css?ver=1.0<br><b>7663136 Grabbing stylesheet</b>: http://littlewe.in/wp-content/themes/shopkeeper/inc/fonts/linea-fonts/ecommerce/styles.css?ver=1.0<br><b>7663136 Grabbing stylesheet</b>: http://littlewe.in/wp-content/themes/shopkeeper/inc/fonts/linea-fonts/music/styles.css?ver=1.0<br><b>7663136 Grabbing stylesheet</b>: http://littlewe.in/wp-content/themes/shopkeeper/inc/fonts/linea-fonts/software/styles.css?ver=1.0<br><b>7663136 Grabbing stylesheet</b>: http://littlewe.in/wp-content/themes/shopkeeper/inc/fonts/linea-fonts/weather/styles.css?ver=1.0<br><b>7663136 Grabbing stylesheet</b>: http://littlewe.in/wp-content/themes/shopkeeper/css/fresco/fresco.css?ver=1.3.0<br><b>7663136 Grabbing stylesheet</b>: http://littlewe.in/wp-content/themes/shopkeeper/css/idangerous.swiper.css?ver=2.3<br><b>7663136 Grabbing stylesheet</b>: http://littlewe.in/wp-content/themes/shopkeeper/css/owl.carousel.css?ver=1.3.1<br><b>7663136 Grabbing stylesheet</b>: http://littlewe.in/wp-content/themes/shopkeeper/css/owl.theme.css?ver=1.3.1<br><b>7663136 Grabbing stylesheet</b>: http://littlewe.in/wp-content/themes/shopkeeper/css/offcanvas.css?ver=1.0<br><b>7663136 Grabbing stylesheet</b>: http://littlewe.in/wp-content/themes/shopkeeper/css/nanoscroller.css?ver=0.7.6<br><b>7663136 Grabbing stylesheet</b>: http://littlewe.in/wp-content/themes/shopkeeper/css/select2.css?ver=3.4.5<br><b>7663136 Grabbing stylesheet</b>: http://littlewe.in/wp-content/themes/shopkeeper/css/easyzoom.css?ver=1.0<br><b>7663136 Grabbing stylesheet</b>: http://littlewe.in/wp-content/themes/shopkeeper/css/defaults.css?ver=1.0<br><b>7663136 Grabbing stylesheet</b>: http://littlewe.in/wp-content/themes/shopkeeper/css/woocommerce-overwrite.css?ver=1.0<br><b>7663136 Grabbing stylesheet</b>: http://littlewe.in/wp-content/themes/shopkeeper/css/header-topbar.css?ver=1.0<br><b>7663504 Grabbing stylesheet</b>: http://littlewe.in/wp-content/themes/shopkeeper/css/headers.css?ver=1.0<br><b>7664272 Grabbing stylesheet</b>: http://littlewe.in/wp-content/themes/shopkeeper/css/navigations.css?ver=1.0<br><b>7664984 Grabbing stylesheet</b>: http://littlewe.in/wp-content/themes/shopkeeper/css/header-default.css?ver=1.0<br><b>7665632 Grabbing stylesheet</b>: http://littlewe.in/wp-content/themes/shopkeeper/css/styles.css?ver=1.0<br><b>7666592 Grabbing stylesheet</b>: http://littlewe.in/wp-content/themes/shopkeeper/css/responsive.css?ver=1.0<br><b>7667408 Grabbing stylesheet</b>: http://littlewe.in/wp-content/themes/shopkeeper-child/style.css?ver=4.5.13<br><b>7668152 Grabbing image</b>: http://littlewe.in/wp-content/uploads/2016/05/Little-We.png<br><b>7668792 Grabbing image</b>: http://littlewe.in/wp-content/uploads/2016/05/Little-We.png<br><b>Processing link</b>: <span class=\'text-primary\'>done</span><br>', 0, ''),
(17, 13, 1516761457, 'cancelled', '<b>3695400 Grabbing script</b>: http://littlewe.in/wp-content/plugins/Ultimate_VC_Addons/assets/min-js/ultimate.min.js?ver=3.16.1<br><b>3695400 Grabbing script</b>: http://littlewe.in/<br><b>3695400 Grabbing script</b>: http://littlewe.in/<br><b>3695400 Grabbing script</b>: http://littlewe.in/<br><b>3695400 Grabbing script</b>: http://littlewe.in/<br><b>3695400 Grabbing script</b>: http://littlewe.in/<br><b>3695400 Grabbing script</b>: http://littlewe.in/<br><b>3695400 Grabbing script</b>: http://littlewe.in/<br><b>3695400 Grabbing script</b>: http://littlewe.in/<br><b>3695400 Grabbing script</b>: http://littlewe.in/<br><b>3695400 Grabbing script</b>: http://littlewe.in/<br><b>3695400 Grabbing script</b>: http://littlewe.in/<br><b>3695400 Grabbing script</b>: http://littlewe.in/<br><b>3695400 Grabbing script</b>: http://littlewe.in/<br><b>3695400 Grabbing script</b>: http://littlewe.in/<br><b>3695400 Grabbing script</b>: http://littlewe.in/<br><b>3695400 Grabbing script</b>: http://littlewe.in/<br><b>3695400 Grabbing script</b>: http://littlewe.in/wp-content/plugins/contact-form-7/includes/js/jquery.form.min.js?ver=3.51.0-2014.06.20<br><b>3695400 Grabbing script</b>: http://littlewe.in/<br><b>3695400 Grabbing script</b>: http://littlewe.in/wp-content/plugins/contact-form-7/includes/js/scripts.js?ver=4.4.2<br><b>3695400 Grabbing script</b>: http://littlewe.in/wp-content/themes/shopkeeper/js/jquery.touchSwipe.min.js?ver=1.6.5<br><b>3695400 Grabbing script</b>: http://littlewe.in/wp-content/themes/shopkeeper/js/jquery.fitvids.js?ver=1.0.3<br><b>3695400 Grabbing script</b>: http://littlewe.in/wp-content/themes/shopkeeper/js/idangerous.swiper-2.4.1.min.js?ver=2.4.1<br><b>3695400 Grabbing script</b>: http://littlewe.in/wp-content/themes/shopkeeper/js/owl.carousel.min.js?ver=1.3.1<br><b>3695400 Grabbing script</b>: http://littlewe.in/wp-content/themes/shopkeeper/js/fresco.js?ver=1.3.0<br><b>3695400 Grabbing script</b>: http://littlewe.in/wp-content/themes/shopkeeper/js/select2.min.js?ver=3.5.1<br><b>3695400 Grabbing script</b>: http://littlewe.in/wp-content/themes/shopkeeper/js/jquery.nanoscroller.min.js?ver=0.7.6<br><b>3695400 Grabbing script</b>: http://littlewe.in/wp-content/themes/shopkeeper/js/jquery.stellar.min.js?ver=0.6.2<br><b>3695400 Grabbing script</b>: http://littlewe.in/wp-content/themes/shopkeeper/js/isotope.pkgd.min.js?ver=v2.0.0<br><b>3695400 Grabbing script</b>: http://littlewe.in/wp-content/themes/shopkeeper/js/imagesloaded.js?ver=v3.1.4<br><b>3695400 Grabbing script</b>: http://littlewe.in/wp-content/themes/shopkeeper/js/easyzoom.js?ver=1.0<br><b>3695400 Grabbing script</b>: http://littlewe.in/wp-content/themes/shopkeeper/js/scripts.js?ver=1.0<br><b>3695400 Grabbing script</b>: http://littlewe.in/wp-includes/js/wp-embed.min.js?ver=4.5.13<br><b>3695400 Grabbing script</b>: http://littlewe.in/wp-content/plugins/js_composer/assets/js/dist/js_composer_front.min.js?ver=4.11.1<br><b>3695400 Grabbing script</b>: http://littlewe.in/wp-content/plugins/Ultimate_VC_Addons/modules/../assets/min-js/vhparallax.min.js?ver=4.5.13<br><b>3695400 Grabbing stylesheet</b>: http://littlewe.in/wp-content/plugins/contact-form-7/includes/css/styles.css?ver=4.4.2<br><b>3695400 Grabbing stylesheet</b>: http://littlewe.in/wp-content/plugins/essential-grid/public/assets/css/settings.css?ver=2.0.9.1<br><b>3695400 Grabbing stylesheet</b>: http://littlewe.in/wp-content/plugins/revslider/public/assets/css/settings.css?ver=5.2.1<br><b>3695400 Grabbing stylesheet</b>: http://littlewe.in/wp-content/plugins/js_composer/assets/css/js_composer.min.css?ver=4.11.1<br><b>3695400 Grabbing stylesheet</b>: http://littlewe.in/wp-content/uploads/smile_fonts/Defaults/Defaults.css?ver=4.5.13<br><b>3695400 Grabbing stylesheet</b>: http://littlewe.in/wp-content/plugins/Ultimate_VC_Addons/assets/min-css/ultimate.min.css?ver=3.16.1<br><b>3695400 Grabbing stylesheet</b>: http://littlewe.in/wp-content/themes/shopkeeper/css/app.css?ver=5.3.1<br><b>3695400 Grabbing stylesheet</b>: http://littlewe.in/wp-content/themes/shopkeeper/css/animate.css?ver=2.0<br><b>3695400 Grabbing stylesheet</b>: http://littlewe.in/wp-content/themes/shopkeeper/inc/fonts/font-awesome/css/font-awesome.min.css?ver=4.0.3<br><b>3695400 Grabbing stylesheet</b>: http://littlewe.in/wp-content/themes/shopkeeper/inc/fonts/linea-fonts/arrows/styles.css?ver=1.0<br><b>3695400 Grabbing stylesheet</b>: http://littlewe.in/wp-content/themes/shopkeeper/inc/fonts/linea-fonts/basic/styles.css?ver=1.0<br><b>3695400 Grabbing stylesheet</b>: http://littlewe.in/wp-content/themes/shopkeeper/inc/fonts/linea-fonts/basic_elaboration/styles.css?ver=1.0<br><b>3695400 Grabbing stylesheet</b>: http://littlewe.in/wp-content/themes/shopkeeper/inc/fonts/linea-fonts/ecommerce/styles.css?ver=1.0<br><b>3695400 Grabbing stylesheet</b>: http://littlewe.in/wp-content/themes/shopkeeper/inc/fonts/linea-fonts/music/styles.css?ver=1.0<br><b>3695400 Grabbing stylesheet</b>: http://littlewe.in/wp-content/themes/shopkeeper/inc/fonts/linea-fonts/software/styles.css?ver=1.0<br><b>3695400 Grabbing stylesheet</b>: http://littlewe.in/wp-content/themes/shopkeeper/inc/fonts/linea-fonts/weather/styles.css?ver=1.0<br><b>3695400 Grabbing stylesheet</b>: http://littlewe.in/wp-content/themes/shopkeeper/css/fresco/fresco.css?ver=1.3.0<br><b>3695400 Grabbing stylesheet</b>: http://littlewe.in/wp-content/themes/shopkeeper/css/idangerous.swiper.css?ver=2.3<br><b>3695400 Grabbing stylesheet</b>: http://littlewe.in/wp-content/themes/shopkeeper/css/owl.carousel.css?ver=1.3.1<br><b>3695400 Grabbing stylesheet</b>: http://littlewe.in/wp-content/themes/shopkeeper/css/owl.theme.css?ver=1.3.1<br><b>3695400 Grabbing stylesheet</b>: http://littlewe.in/wp-content/themes/shopkeeper/css/offcanvas.css?ver=1.0<br><b>3695400 Grabbing stylesheet</b>: http://littlewe.in/wp-content/themes/shopkeeper/css/nanoscroller.css?ver=0.7.6<br><b>3695400 Grabbing stylesheet</b>: http://littlewe.in/wp-content/themes/shopkeeper/css/select2.css?ver=3.4.5<br><b>3695400 Grabbing stylesheet</b>: http://littlewe.in/wp-content/themes/shopkeeper/css/easyzoom.css?ver=1.0<br><b>3695400 Grabbing stylesheet</b>: http://littlewe.in/wp-content/themes/shopkeeper/css/defaults.css?ver=1.0<br><b>3695400 Grabbing stylesheet</b>: http://littlewe.in/wp-content/themes/shopkeeper/css/woocommerce-overwrite.css?ver=1.0<br><b>3695400 Grabbing stylesheet</b>: http://littlewe.in/wp-content/themes/shopkeeper/css/header-topbar.css?ver=1.0<br><b>3695400 Grabbing stylesheet</b>: http://littlewe.in/wp-content/themes/shopkeeper/css/headers.css?ver=1.0<br><b>3695400 Grabbing stylesheet</b>: http://littlewe.in/wp-content/themes/shopkeeper/css/navigations.css?ver=1.0<br><b>3695400 Grabbing stylesheet</b>: http://littlewe.in/wp-content/themes/shopkeeper/css/header-default.css?ver=1.0<br><b>3695400 Grabbing stylesheet</b>: http://littlewe.in/wp-content/themes/shopkeeper/css/styles.css?ver=1.0<br><b>3695400 Grabbing stylesheet</b>: http://littlewe.in/wp-content/themes/shopkeeper/css/responsive.css?ver=1.0<br><b>3695400 Grabbing stylesheet</b>: http://littlewe.in/wp-content/themes/shopkeeper-child/style.css?ver=4.5.13<br><b>3695400 Grabbing stylesheet</b>: http://littlewe.in/wp-content/plugins/revslider/public/assets/fonts/font-awesome/css/font-awesome.css<br><b>3695400 Grabbing image</b>: http://littlewe.in/wp-content/uploads/2016/05/Little-We.png<br><b>3695400 Grabbing image</b>: http://littlewe.in/wp-content/uploads/2016/05/Little-We.png<br><b>3695400 Grabbing image</b>: http://littlewe.in/wp-content/uploads/2016/05/bg-2.jpg<br><b>3695400 Grabbing image</b>: http://littlewe.in/wp-content/uploads/2016/05/cloud.png<br><b>3695400 Grabbing image</b>: http://littlewe.in/wp-content/uploads/2016/05/balon.png<br><b>3695400 Grabbing image</b>: http://littlewe.in/wp-content/uploads/2016/05/b1-2.jpg<br><b>3695400 Grabbing image</b>: http://littlewe.in/wp-content/uploads/2016/05/bg3.png<br><b>3695808 Grabbing image</b>: http://littlewe.in/wp-content/uploads/2016/05/bg-1-1.png<br><b>3696824 Grabbing image</b>: http://littlewe.in/wp-content/uploads/2016/05/11.jpg<br><b>3697800 Grabbing image</b>: http://littlewe.in/wp-content/uploads/2016/05/12.jpg<br><b>3698720 Grabbing image</b>: http://littlewe.in/wp-content/uploads/2016/05/13.jpg<br><b>3699648 Grabbing image</b>: http://littlewe.in/wp-content/uploads/2016/05/14.jpg<br><b>3700584 Grabbing image</b>: http://littlewe.in/wp-content/uploads/2016/05/15.jpg<br><b>Processing link</b>: <span class=\'text-primary\'>done</span><br>', 0, ''),
(18, 12, 1516774412, 'complete', '', 0, ''),
(19, 15, 1516817116, 'cancelled', '<b>16390736 Grabbing link</b>: http://www.rutgersprep.org/directory/~board/latest-news-posts/post/counting-stars-with-the-fusion-ensemble<br><b>6682872 Grabbing link</b>: tel:732.545.5600 x268<br><b>16390736 Grabbing link</b>: http://www.rutgersprep.org/directory/~board/latest-news-posts/post/millo-lazarczyks-business-creates-bucknell-buzz<br><b>16390736 Grabbing link</b>: http://www.rutgersprep.org/directory/~board/latest-news-posts/post/millo-lazarczyks-business-creates-bucknell-buzz<br><b>6682872 Grabbing link</b>: tel:732.545.5600 x234<br><b>16390736 Grabbing link</b>: http://www.rutgersprep.org/directory/~board/latest-news-posts/post/millo-lazarczyks-business-creates-bucknell-buzz<br><b>16390736 Grabbing link</b>: http://www.rutgersprep.org/directory/~board/latest-news-posts/post/augmented-and-virtual-realities-at-rutgers-prep<br><b>6682872 Grabbing link</b>: tel:732.545.5600 x242<br><b>16390736 Grabbing link</b>: http://www.rutgersprep.org/directory/~board/latest-news-posts/post/augmented-and-virtual-realities-at-rutgers-prep<br><b>6682872 Grabbing link</b>: http://www.rutgersprep.org/directory/?const_page=1&amp;<br><b>16390736 Grabbing link</b>: http://www.rutgersprep.org/directory/~board/latest-news-posts/post/augmented-and-virtual-realities-at-rutgers-prep<br><b>6682872 Grabbing link</b>: http://www.rutgersprep.org/directory/?const_page=2&amp;<br><b>16390736 Grabbing link</b>: http://www.rutgersprep.org/directory/~board/latest-news-posts/post/now-we-wait-a-glimpse-into-the-early-application-process<br><b>6683728 Grabbing link</b>: http://www.rutgersprep.org/directory/?const_page=3&amp;<br><b>16390736 Grabbing link</b>: http://www.rutgersprep.org/directory/~board/latest-news-posts/post/now-we-wait-a-glimpse-into-the-early-application-process<br><b>6685032 Grabbing link</b>: http://www.rutgersprep.org/directory/?const_page=6&amp;<br><b>16390736 Grabbing link</b>: http://www.rutgersprep.org/directory/~board/latest-news-posts/post/now-we-wait-a-glimpse-into-the-early-application-process<br><b>6686432 Grabbing link</b>: http://www.rutgersprep.org/directory/?const_page=9&amp;<br><b>16390736 Grabbing link</b>: http://www.rutgersprep.org/directory/~board/latest-news-posts/post/ian-bates-the-tiny-miracles-of-photography<br><b>6687904 Grabbing link</b>: http://www.rutgersprep.org/directory/?const_page=2&amp;<br><b>16390736 Grabbing link</b>: http://www.rutgersprep.org/directory/~board/latest-news-posts/post/ian-bates-the-tiny-miracles-of-photography<br><b>6689248 Grabbing link</b>: http://www.rutgersprep.org/site-map<br><b>16390736 Grabbing link</b>: http://www.rutgersprep.org/directory/~board/latest-news-posts/post/ian-bates-the-tiny-miracles-of-photography<br><b>6691952 Grabbing link</b>: http://www.rutgersprep.org/summer<br><b>16390736 Grabbing link</b>: http://www.rutgersprep.org/directory/~board/latest-news-posts/post/postcards-from-the-global-lounge<br><b>6693656 Grabbing link</b>: http://www.rutgersprep.org/admission/how-to-apply<br><b>16390736 Grabbing link</b>: http://www.rutgersprep.org/directory/~board/latest-news-posts/post/postcards-from-the-global-lounge<br><b>6695248 Grabbing link</b>: http://www.rutgersprep.org/about/school-directory<br><b>16390736 Grabbing link</b>: http://www.rutgersprep.org/fs/pages/444<br><b>6696632 Grabbing link</b>: http://www.rutgersprep.org/about/directions-and-maps<br><b>16390736 Grabbing link</b>: http://www.rutgersprep.org/fs/pages/451<br><b>6698016 Grabbing link</b>: http://www.rutgersprep.org/our-community/alumni<br><b>16390736 Grabbing link</b>: http://www.rutgersprep.org/about<br><b>6699920 Grabbing link</b>: http://www.rutgersprep.org/non-discrimination-policy<br><b>16390736 Grabbing link</b>: http://www.rutgersprep.org/about/rps-at-a-glance<br><b>6701016 Grabbing link</b>: http://www.rutgersprep.org/printable-forms-2017<br><b>16390736 Grabbing link</b>: http://www.rutgersprep.org/about/welcome-from-the-headmaster<br><b>6702136 Grabbing script</b>: http://www.rutgersprep.org/directory/<br><b>16390736 Grabbing link</b>: http://www.rutgersprep.org/about/why-rutgers-prep<br><b>6708040 Grabbing script</b>: http://www.rutgersprep.org/directory/<br><b>16390736 Grabbing link</b>: http://www.rutgersprep.org/about/rps-history<br><b>6708904 Grabbing script</b>: http://www.rutgersprep.org/directory/<br><b>16390736 Grabbing link</b>: http://www.rutgersprep.org/about/board-of-trustees<br><b>6709872 Grabbing script</b>: http://www.rutgersprep.org/directory/<br><b>16390736 Grabbing link</b>: http://www.rutgersprep.org/directory<br><b>6710976 Grabbing script</b>: http://www.rutgersprep.org/directory/<br><b>16390736 Grabbing link</b>: http://www.rutgersprep.org/about/directions-and-maps<br><b>6711808 Grabbing script</b>: http://www.rutgersprep.org/directory/<br><b>16390736 Grabbing link</b>: http://www.rutgersprep.org/academics<br><b>6712720 Grabbing script</b>: http://www.rutgersprep.org/directory/<br><b>16390736 Grabbing link</b>: http://www.rutgersprep.org/academics/lower-school<br><b>6713552 Grabbing script</b>: http://www.rutgersprep.org/directory/<br><b>16390736 Grabbing link</b>: http://www.rutgersprep.org/academics/middle-school<br><b>6714448 Grabbing script</b>: http://www.rutgersprep.org/directory/<br><b>16390736 Grabbing link</b>: http://www.rutgersprep.org/academics/upper-school<br><b>6715352 Grabbing script</b>: http://www.rutgersprep.org/directory/<br><b>16390736 Grabbing link</b>: http://www.rutgersprep.org/academics/college-counseling<br><b>6716248 Grabbing script</b>: http://www.rutgersprep.org/directory/<br><b>16390736 Grabbing link</b>: http://www.rutgersprep.org/academics/innovations-and-ideas<br><b>6717352 Grabbing script</b>: http://www.rutgersprep.org/directory/<br><b>16390736 Grabbing link</b>: http://www.rutgersprep.org/admission<br><b>6718472 Grabbing script</b>: http://www.rutgersprep.org/directory/<br><b>6719480 Grabbing script</b>: http://www.rutgersprep.org/directory/<br><b>16390736 Grabbing link</b>: http://www.rutgersprep.org/admission/how-to-apply<br><b>6720128 Grabbing script</b>: http://www.rutgersprep.org/directory/<br><b>16390736 Grabbing link</b>: http://www.rutgersprep.org/admission/tuition-aid<br><b>6721192 Grabbing script</b>: http://www.rutgersprep.org/directory/<br><b>16390736 Grabbing link</b>: http://www.rutgersprep.org/admission/college-acceptances<br><b>6722272 Grabbing script</b>: http://www.rutgersprep.org/directory/<br><b>16390736 Grabbing link</b>: http://www.rutgersprep.org/admission/open-house<br><b>6723368 Grabbing script</b>: http://www.rutgersprep.org/directory/<br><b>16390736 Grabbing link</b>: http://www.rutgersprep.org/admission/transportation<br><b>6724440 Grabbing script</b>: http://www.rutgersprep.org/directory/<br><b>16390736 Grabbing link</b>: http://www.rutgersprep.org/admission/international-program<br><b>6725528 Grabbing script</b>: http://www.rutgersprep.org/directory/<br><b>16390736 Grabbing link</b>: http://www.rutgersprep.org/admission/academic-honors<br><b>6726632 Grabbing script</b>: http://www.rutgersprep.org/directory/<br><b>16390736 Grabbing link</b>: http://www.rutgersprep.org/athletics<br><b>6727720 Grabbing script</b>: http://www.rutgersprep.org/directory/<br><b>16390736 Grabbing link</b>: http://www.rutgersprep.org/athletics/team-pages<br><b>6728728 Grabbing script</b>: http://www.rutgersprep.org/uploaded/themes/default_17/js/main.js?1510603031<br><b>16390736 Grabbing link</b>: http://www.rutgersprep.org/athletics/athletics-directory<br><b>6730664 Grabbing stylesheet</b>: http://www.rutgersprep.org/styles.cfm?b<br><b>16390736 Grabbing link</b>: http://www.rutgersprep.org/athletics/athletics-calendar<br><b>6732816 Grabbing stylesheet</b>: http://www.rutgersprep.org/uploaded/themes/default_17/css/main.css?1510603031<br><b>16390736 Grabbing link</b>: http://www.rutgersprep.org/athletics/championships<br><b>6734120 Grabbing image</b>: http://www.rutgersprep.org/uploaded/megamenu/about_violin.jpg<br><b>16390736 Grabbing link</b>: http://www.rutgersprep.org/arts<br><b>6741040 Grabbing image</b>: http://www.rutgersprep.org/uploaded/megamenu/us_kids_study.jpg<br><b>16390736 Grabbing link</b>: http://www.rutgersprep.org/arts/holder<br><b>6741920 Grabbing image</b>: http://www.rutgersprep.org/uploaded/megamenu/lS_kids_study.jpg<br><b>16390736 Grabbing link</b>: http://www.rutgersprep.org/arts/music<br><b>6742832 Grabbing image</b>: http://www.rutgersprep.org/uploaded/megamenu/athletics.jpg<br><b>16390736 Grabbing link</b>: http://www.rutgersprep.org/arts/theater-dance<br><b>6743872 Grabbing image</b>: http://www.rutgersprep.org/uploaded/megamenu/girl_camera.jpg<br><b>16390736 Grabbing link</b>: http://www.rutgersprep.org/our-community<br><b>6744840 Grabbing image</b>: http://www.rutgersprep.org/uploaded/megamenu/Spiritdaymix.jpg<br><b>16390736 Grabbing link</b>: http://www.rutgersprep.org/our-community/alumni<br><b>6745760 Grabbing image</b>: http://www.rutgersprep.org/uploaded/megamenu/giving.jpg<br><b>16390736 Grabbing link</b>: http://www.rutgersprep.org/our-community/parents<br><b>6746696 Grabbing image</b>: http://www.rutgersprep.org/uploaded/themes/default_17/images/header-emblem.png<br><b>16390736 Grabbing link</b>: http://www.rutgersprep.org/our-community/students<br><b>6748008 Grabbing image</b>: http://www.rutgersprep.org/uploaded/themes/default_17/images/hero-example.jpg<br><b>16390736 Grabbing link</b>: http://www.rutgersprep.org/our-community/alumni-profiles<br><b>6749232 Grabbing image</b>: http://www.rutgersprep.org/uploaded/news/fusion/fusion.jpg<br><b>16390736 Grabbing link</b>: http://www.rutgersprep.org/our-community/after-school-program<br><b>6750288 Grabbing image</b>: http://www.rutgersprep.org/uploaded/news/millo/mill0.jpg<br><b>16390736 Grabbing link</b>: http://www.rutgersprep.org/summer<br><b>6751384 Grabbing image</b>: http://www.rutgersprep.org/uploaded/news/12-21-17-augmented-reality/17-12_RPS_Kindergartners_in-screen_planets2.jpg<br><b>16390736 Grabbing link</b>: http://www.rutgersprep.org/giving<br><b>6753008 Grabbing image</b>: http://www.rutgersprep.org/uploaded/news/wait/wait.jpg<br><b>16390736 Grabbing link</b>: http://www.rutgersprep.org/giving/philanthropy-rps<br><b>6753888 Grabbing image</b>: http://www.rutgersprep.org/uploaded/news/bates/IanCBates_PDN30_018.jpg<br><b>16390736 Grabbing link</b>: http://www.rutgersprep.org/giving/make-a-gift<br><b>6754992 Grabbing image</b>: http://www.rutgersprep.org/uploaded/news/global/globa_thumb.jpg<br><b>16390736 Grabbing link</b>: http://www.rutgersprep.org/giving/annual-giving<br><b>16390736 Grabbing link</b>: http://www.rutgersprep.org/giving/ways-to-give<br><b>6756064 Grabbing image</b>: http://www.rutgersprep.org/uploaded/faculty_small/angelos.jpeg<br><b>16390736 Grabbing link</b>: http://www.rutgersprep.org/directory/?const_page=1&amp;<br><b>16390736 Grabbing link</b>: http://www.rutgersprep.org/directory/?const_page=2&amp;<br><b>6757608 Grabbing image</b>: http://www.rutgersprep.org/uploaded/faculty_small/applebaum.jpeg<br><b>16390736 Grabbing link</b>: http://www.rutgersprep.org/directory/?const_page=3&amp;<br><b>16390736 Grabbing link</b>: http://www.rutgersprep.org/directory/?const_page=6&amp;<br><b>6759256 Grabbing image</b>: http://www.rutgersprep.org/uploaded/faculty_small/avella.jpeg<br><b>16390736 Grabbing link</b>: http://www.rutgersprep.org/directory/?const_page=9&amp;<br><b>16390736 Grabbing link</b>: http://www.rutgersprep.org/directory/?const_page=2&amp;<br><b>6760920 Grabbing image</b>: http://www.rutgersprep.org/uploaded/faculty_small/bautista.jpeg<br><b>16390736 Grabbing link</b>: tel:732.545.5600 x536<br><b>16390736 Grabbing link</b>: tel:732.545.5600 x210<br><b>6762696 Grabbing image</b>: http://www.rutgersprep.org/uploaded/faculty_small/bloom.jpeg<br><b>16390736 Grabbing link</b>: tel:732.545.5600 x513<br><b>16390736 Grabbing link</b>: tel:732.545.5600 x570<br><b>6764200 Grabbing image</b>: http://www.rutgersprep.org/uploaded/faculty_small/baures.jpeg<br><b>16390736 Grabbing link</b>: tel:732.545.5600 x527<br><b>16390736 Grabbing link</b>: tel:732.545.5600 x224<br><b>6765704 Grabbing image</b>: http://www.rutgersprep.org/uploaded/faculty_small/britt.jpeg<br><b>16390736 Grabbing link</b>: tel:732.545.5600 x530<br><b>16390736 Grabbing link</b>: tel:732.545.5600 x519<br><b>6767192 Grabbing image</b>: http://www.rutgersprep.org/uploaded/faculty_small/fink.jpeg<br><b>16390736 Grabbing link</b>: tel:732.545.5600p531<br><b>16390736 Grabbing link</b>: tel:732.545.5600 x203<br><b>6768416 Grabbing image</b>: http://www.rutgersprep.org/uploaded/faculty_small/chang.jpeg<br><b>16390736 Grabbing link</b>: tel:732.545.5600 x523<br><b>16390736 Grabbing link</b>: tel:732.545.5600 x583<br><b>6769928 Grabbing image</b>: http://www.rutgersprep.org/uploaded/faculty_small/chodl.jpeg<br><b>16390736 Grabbing link</b>: tel:732.545.5600 x268<br><b>16390736 Grabbing link</b>: tel:732.545.5600 x234<br><b>6771520 Grabbing image</b>: http://www.rutgersprep.org/uploaded/faculty_small/cohen.jpeg<br><b>16390736 Grabbing link</b>: tel:732.545.5600 x242<br><b>16390736 Grabbing link</b>: http://www.rutgersprep.org/directory/?const_page=1&amp;<br><b>6773024 Grabbing image</b>: http://www.rutgersprep.org/uploaded/faculty_small/conroy.jpeg<br><b>16390736 Grabbing link</b>: http://www.rutgersprep.org/directory/?const_page=2&amp;<br><b>16390736 Grabbing link</b>: http://www.rutgersprep.org/directory/?const_page=3&amp;<br><b>6774688 Grabbing image</b>: http://www.rutgersprep.org/uploaded/faculty_small/cooper_j.jpeg<br><b>16390736 Grabbing link</b>: http://www.rutgersprep.org/directory/?const_page=6&amp;<br><b>16390736 Grabbing link</b>: http://www.rutgersprep.org/directory/?const_page=9&amp;<br><b>6776552 Grabbing image</b>: http://www.rutgersprep.org/uploaded/faculty_small/corbin.jpeg<br><b>16390736 Grabbing link</b>: http://www.rutgersprep.org/directory/?const_page=2&amp;<br><b>16390736 Grabbing link</b>: http://www.rutgersprep.org/site-map<br><b>6778392 Grabbing image</b>: http://www.rutgersprep.org/uploaded/faculty_small/corrigan.jpeg<br><b>16390736 Grabbing link</b>: http://www.rutgersprep.org/summer<br><b>16390736 Grabbing link</b>: http://www.rutgersprep.org/admission/how-to-apply<br><b>Processing link</b>: <span class=\'text-primary\'>done</span><br><b>16390736 Grabbing link</b>: http://www.rutgersprep.org/about/school-directory<br><b>16390736 Grabbing link</b>: http://www.rutgersprep.org/about/directions-and-maps<br><b>16390736 Grabbing link</b>: http://www.rutgersprep.org/our-community/alumni<br><b>16390736 Grabbing link</b>: http://www.rutgersprep.org/non-discrimination-policy<br><b>16390736 Grabbing link</b>: http://www.rutgersprep.org/printable-forms-2017<br><b>16390736 Grabbing script</b>: http://www.rutgersprep.org/directory/<br><b>16390736 Grabbing script</b>: http://www.rutgersprep.org/directory/<br><b>16390736 Grabbing script</b>: http://www.rutgersprep.org/directory/<br><b>16390736 Grabbing script</b>: http://www.rutgersprep.org/directory/<br><b>16390736 Grabbing script</b>: http://www.rutgersprep.org/directory/<br><b>16390736 Grabbing script</b>: http://www.rutgersprep.org/directory/<br><b>16390736 Grabbing script</b>: http://www.rutgersprep.org/directory/<br><b>16390736 Grabbing script</b>: http://www.rutgersprep.org/directory/<br><b>16390736 Grabbing script</b>: http://www.rutgersprep.org/directory/<br><b>16390736 Grabbing script</b>: http://www.rutgersprep.org/directory/<br><b>16390736 Grabbing script</b>: http://www.rutgersprep.org/directory/<br><b>16390736 Grabbing script</b>: http://www.rutgersprep.org/directory/<br><b>16390736 Grabbing script</b>: http://www.rutgersprep.org/directory/<br><b>16390736 Grabbing script</b>: http://www.rutgersprep.org/directory/<br><b>16390736 Grabbing script</b>: http://www.rutgersprep.org/directory/<br><b>16390736 Grabbing script</b>: http://www.rutgersprep.org/directory/<br><b>16390736 Grabbing script</b>: http://www.rutgersprep.org/directory/<br><b>16390736 Grabbing script</b>: http://www.rutgersprep.org/directory/<br><b>16390736 Grabbing script</b>: http://www.rutgersprep.org/directory/<br><b>16390736 Grabbing script</b>: http://www.rutgersprep.org/directory/<br><b>16390736 Grabbing script</b>: http://www.rutgersprep.org/directory/<br><b>16390736 Grabbing script</b>: http://www.rutgersprep.org/directory/<br><b>16390736 Grabbing script</b>: http://www.rutgersprep.org/uploaded/themes/default_17/js/main.js?1510603031<br><b>16390736 Grabbing stylesheet</b>: http://www.rutgersprep.org/styles.cfm?b<br><b>16390736 Grabbing stylesheet</b>: http://www.rutgersprep.org/uploaded/themes/default_17/css/main.css?1510603031<br><b>16390736 Grabbing image</b>: http://www.rutgersprep.org/uploaded/megamenu/about_violin.jpg<br><b>16390736 Grabbing image</b>: http://www.rutgersprep.org/uploaded/megamenu/us_kids_study.jpg<br><b>16390736 Grabbing image</b>: http://www.rutgersprep.org/uploaded/megamenu/lS_kids_study.jpg<br><b>16390736 Grabbing image</b>: http://www.rutgersprep.org/uploaded/megamenu/athletics.jpg<br><b>16390736 Grabbing image</b>: http://www.rutgersprep.org/uploaded/megamenu/girl_camera.jpg<br><b>16390736 Grabbing image</b>: http://www.rutgersprep.org/uploaded/megamenu/Spiritdaymix.jpg<br><b>16390736 Grabbing image</b>: http://www.rutgersprep.org/uploaded/megamenu/giving.jpg<br><b>16390736 Grabbing image</b>: http://www.rutgersprep.org/uploaded/themes/default_17/images/header-emblem.png<br><b>16390736 Grabbing image</b>: http://www.rutgersprep.org/uploaded/themes/default_17/images/hero-example.jpg<br><b>16390736 Grabbing image</b>: http://www.rutgersprep.org/uploaded/news/fusion/fusion.jpg<br><b>16390736 Grabbing image</b>: http://www.rutgersprep.org/uploaded/news/millo/mill0.jpg<br><b>16390736 Grabbing image</b>: http://www.rutgersprep.org/uploaded/news/12-21-17-augmented-reality/17-12_RPS_Kindergartners_in-screen_planets2.jpg<br><b>16390736 Grabbing image</b>: http://www.rutgersprep.org/uploaded/news/wait/wait.jpg<br><b>16390736 Grabbing image</b>: http://www.rutgersprep.org/uploaded/news/bates/IanCBates_PDN30_018.jpg<br><b>16390736 Grabbing image</b>: http://www.rutgersprep.org/uploaded/news/global/globa_thumb.jpg<br><b>16390736 Grabbing image</b>: http://www.rutgersprep.org/uploaded/faculty_small/angelos.jpeg<br><b>16390736 Grabbing image</b>: http://www.rutgersprep.org/uploaded/faculty_small/applebaum.jpeg<br><b>16390736 Grabbing image</b>: http://www.rutgersprep.org/uploaded/faculty_small/avella.jpeg<br><b>16390736 Grabbing image</b>: http://www.rutgersprep.org/uploaded/faculty_small/bautista.jpeg<br><b>16390736 Grabbing image</b>: http://www.rutgersprep.org/uploaded/faculty_small/bloom.jpeg<br><b>16390736 Grabbing image</b>: http://www.rutgersprep.org/uploaded/faculty_small/baures.jpeg<br><b>16390736 Grabbing image</b>: http://www.rutgersprep.org/uploaded/faculty_small/britt.jpeg<br><b>16390736 Grabbing image</b>: http://www.rutgersprep.org/uploaded/faculty_small/fink.jpeg<br><b>16390736 Grabbing image</b>: http://www.rutgersprep.org/uploaded/faculty_small/chang.jpeg<br><b>16390736 Grabbing image</b>: http://www.rutgersprep.org/uploaded/faculty_small/chodl.jpeg<br><b>16390736 Grabbing image</b>: http://www.rutgersprep.org/uploaded/faculty_small/cohen.jpeg<br><b>16390736 Grabbing image</b>: http://www.rutgersprep.org/uploaded/faculty_small/conroy.jpeg<br><b>16390736 Grabbing image</b>: http://www.rutgersprep.org/uploaded/faculty_small/cooper_j.jpeg<br><b>16390736 Grabbing image</b>: http://www.rutgersprep.org/uploaded/faculty_small/corbin.jpeg<br><b>16390736 Grabbing image</b>: http://www.rutgersprep.org/uploaded/faculty_small/corrigan.jpeg<br><b>Processing link</b>: <span class=\'text-primary\'>done</span><br>', 0, ''),
(20, 16, 1516817325, 'complete', '', 0, '');
INSERT INTO `crawls` (`crawl_id`, `site_id`, `timestamp`, `status`, `progress`, `timeout`, `onComplete`) VALUES
(21, 17, 1516817454, 'cancelled', '<b>20465048 Grabbing link</b>: http://guardianinternationalschool.com/?page_id=2208<br><b>20465048 Grabbing link</b>: http://guardianinternationalschool.com/our-staffs/<br><b>20465048 Grabbing link</b>: http://guardianinternationalschool.com/services/<br><b>20465048 Grabbing link</b>: http://guardianinternationalschool.com/portfolio/<br><b>20465048 Grabbing link</b>: http://guardianinternationalschool.com/blog/<br><b>20465048 Grabbing link</b>: http://guardianinternationalschool.com<br><b>20465048 Grabbing link</b>: http://guardianinternationalschool.com/dt_portfolio_entries/social/<br><b>20465048 Grabbing link</b>: http://guardianinternationalschool.com/dt_portfolio_entries/social/<br><b>20465048 Grabbing link</b>: http://guardianinternationalschool.com/dt_portfolios/speech-on-my-ambition/<br><b>20465048 Grabbing link</b>: http://guardianinternationalschool.com/dt_portfolios/sri-krishna-jeyanthi-celebrations-11-8-2017/<br><b>20465048 Grabbing link</b>: http://guardianinternationalschool.com/dt_portfolios/trip-to-dakshina-chithira-25-11-2017/<br><b>20465048 Grabbing link</b>: http://guardianinternationalschool.com/dt_portfolios/diwali-celebration-16-10-17/<br><b>20465048 Grabbing link</b>: http://guardianinternationalschool.com/dt_portfolios/colouring-activity/<br><b>20465048 Grabbing link</b>: http://guardianinternationalschool.com/dt_portfolios/childrens-day-celebration-14-11-2016/<br><b>20465048 Grabbing link</b>: http://guardianinternationalschool.com/dt_portfolios/my-creation/<br><b>20465048 Grabbing link</b>: http://guardianinternationalschool.com/dt_portfolios/toddler-care/<br><b>20465048 Grabbing link</b>: http://guardianinternationalschool.com/dt_portfolios/leisure-time/<br><b>20465048 Grabbing link</b>: http://guardianinternationalschool.com/dt_portfolios/music-hour/<br><b>20465048 Grabbing link</b>: http://guardianinternationalschool.com/dt_portfolios/arts-craft/<br><b>20465048 Grabbing link</b>: mailto:guardinterschool@gmail.com<br><b>20465048 Grabbing link</b>: http://guardianinternationalschool.com/dt_portfolios/ramzan-celebrations-23-6-2017/<br><b>20465048 Grabbing script</b>: http://guardianinternationalschool.com/dt_portfolios/ramzan-celebrations-23-6-2017/<br><b>20465048 Grabbing script</b>: http://guardianinternationalschool.com/dt_portfolios/ramzan-celebrations-23-6-2017/<br><b>20465048 Grabbing script</b>: http://guardianinternationalschool.com/wp-includes/js/jquery/jquery.js?ver=1.11.3<br><b>20465048 Grabbing script</b>: http://guardianinternationalschool.com/wp-includes/js/jquery/jquery-migrate.min.js?ver=1.2.1<br><b>20465048 Grabbing script</b>: http://guardianinternationalschool.com/wp-content/plugins/sliding-contact-form-by-formget/jscolor/jscolor.js?ver=4.4.14<br><b>20465048 Grabbing script</b>: http://guardianinternationalschool.com/dt_portfolios/ramzan-celebrations-23-6-2017/<br><b>20465048 Grabbing script</b>: http://guardianinternationalschool.com/wp-content/plugins/sliding-contact-form-by-formget/js/fg_script.js?ver=4.4.14<br><b>20465048 Grabbing script</b>: http://guardianinternationalschool.com/wp-content/plugins/sliding-contact-form-by-formget/js/toggle_script.js?ver=4.4.14<br><b>20465048 Grabbing script</b>: http://guardianinternationalschool.com/wp-content/plugins/wp-live-chat-support/js/wplc_server.js?ver=7.1.03<br><b>20465048 Grabbing script</b>: http://guardianinternationalschool.com/dt_portfolios/ramzan-celebrations-23-6-2017/<br><b>20465048 Grabbing script</b>: http://guardianinternationalschool.com/wp-content/plugins/wp-live-chat-support/js/wplc_u.js?ver=7.1.03<br><b>20465048 Grabbing script</b>: http://guardianinternationalschool.com/wp-content/plugins/wp-live-chat-support/js/md5.js?ver=7.1.03<br><b>20465048 Grabbing script</b>: http://guardianinternationalschool.com/wp-content/plugins/wp-live-chat-support/js/themes/modern.js?ver=7.1.03<br><b>20465048 Grabbing script</b>: http://guardianinternationalschool.com/wp-content/plugins/wp-live-chat-support/js/jquery-cookie.js?ver=4.4.14<br><b>20465048 Grabbing script</b>: http://guardianinternationalschool.com/wp-content/plugins/LayerSlider/static/js/greensock.js?ver=1.11.8<br><b>20465048 Grabbing script</b>: http://guardianinternationalschool.com/wp-content/plugins/LayerSlider/static/js/layerslider.kreaturamedia.jquery.js?ver=5.5.1<br><b>20465048 Grabbing script</b>: http://guardianinternationalschool.com/wp-content/plugins/LayerSlider/static/js/layerslider.transitions.js?ver=5.5.1<br><b>20465048 Grabbing script</b>: http://guardianinternationalschool.com/wp-content/plugins/revslider/public/assets/js/jquery.themepunch.tools.min.js?ver=5.0.5<br><b>20465048 Grabbing script</b>: http://guardianinternationalschool.com/wp-content/plugins/revslider/public/assets/js/jquery.themepunch.revolution.min.js?ver=5.0.5<br><b>20465048 Grabbing script</b>: http://guardianinternationalschool.com/wp-content/themes/kidslife/framework/js/public/modernizr.min.js?ver=4.4.14<br><b>20465048 Grabbing script</b>: http://guardianinternationalschool.com/dt_portfolios/ramzan-celebrations-23-6-2017/<br><b>20465048 Grabbing script</b>: http://guardianinternationalschool.com/dt_portfolios/ramzan-celebrations-23-6-2017/<br><b>20465048 Grabbing script</b>: http://guardianinternationalschool.com/wp-content/plugins/designthemes-core-features/shortcodes/js/inview.js?ver=4.4.14<br><b>20465048 Grabbing script</b>: http://guardianinternationalschool.com/wp-content/plugins/designthemes-core-features/shortcodes/js/jquery.flexslider.js?ver=4.4.14<br><b>20465048 Grabbing script</b>: http://guardianinternationalschool.com/wp-content/plugins/designthemes-core-features/shortcodes/js/jquery.tabs.min.js?ver=4.4.14<br><b>20465048 Grabbing script</b>: http://guardianinternationalschool.com/wp-content/plugins/designthemes-core-features/shortcodes/js/jquery.viewport.js?ver=4.4.14<br><b>20465048 Grabbing script</b>: http://guardianinternationalschool.com/wp-content/plugins/designthemes-core-features/shortcodes/js/jquery.carouFredSel-6.2.1-packed.js?ver=4.4.14<br><b>20465048 Grabbing script</b>: http://guardianinternationalschool.com/wp-content/plugins/designthemes-core-features/shortcodes/js/jquery.tipTip.minified.js?ver=4.4.14<br><b>20465048 Grabbing script</b>: http://guardianinternationalschool.com/wp-content/plugins/designthemes-core-features/shortcodes/js/jquery.donutchart.js?ver=4.4.14<br><b>20465048 Grabbing script</b>: http://guardianinternationalschool.com/wp-content/plugins/designthemes-core-features/shortcodes/js/jquery.scrollto.js?ver=4.4.14<br><b>20465048 Grabbing script</b>: http://guardianinternationalschool.com/wp-content/plugins/designthemes-core-features/shortcodes/js/jquery.nav.js?ver=4.4.14<br><b>20465048 Grabbing script</b>: http://guardianinternationalschool.com/wp-content/plugins/designthemes-core-features/shortcodes/js/jquery.parallax-1.1.3.js?ver=4.4.14<br><b>20465048 Grabbing script</b>: http://guardianinternationalschool.com/wp-content/plugins/designthemes-core-features/shortcodes/js/shortcodes.js?ver=4.4.14<br><b>20465048 Grabbing script</b>: http://guardianinternationalschool.com/wp-content/plugins/designthemes-core-features/page-builder/js/jquery.inview.js?ver=4.4.14<br><b>20465048 Grabbing script</b>: http://guardianinternationalschool.com/wp-content/plugins/designthemes-core-features/page-builder/js/custom-public.js?ver=4.4.14<br><b>20465048 Grabbing script</b>: http://guardianinternationalschool.com/wp-includes/js/jquery/ui/core.min.js?ver=1.11.4<br><b>20465048 Grabbing script</b>: http://guardianinternationalschool.com/wp-includes/js/jquery/ui/widget.min.js?ver=1.11.4<br><b>20465048 Grabbing script</b>: http://guardianinternationalschool.com/wp-includes/js/jquery/ui/mouse.min.js?ver=1.11.4<br><b>20465048 Grabbing script</b>: http://guardianinternationalschool.com/wp-includes/js/jquery/ui/draggable.min.js?ver=1.11.4<br><b>20465048 Grabbing script</b>: http://guardianinternationalschool.com/wp-content/plugins/contact-form-7/includes/js/jquery.form.min.js?ver=3.51.0-2014.06.20<br><b>20465048 Grabbing script</b>: http://guardianinternationalschool.com/dt_portfolios/ramzan-celebrations-23-6-2017/<br><b>20465048 Grabbing script</b>: http://guardianinternationalschool.com/wp-content/plugins/contact-form-7/includes/js/scripts.js?ver=4.3.1<br><b>20465048 Grabbing script</b>: http://guardianinternationalschool.com/wp-content/themes/kidslife/framework/js/public/easing.js?ver=4.4.14<br><b>20465048 Grabbing script</b>: http://guardianinternationalschool.com/wp-content/themes/kidslife/framework/js/public/jquery.smartresize.js?ver=4.4.14<br><b>20465048 Grabbing script</b>: http://guardianinternationalschool.com/wp-content/themes/kidslife/framework/js/public/jquery.prettyPhoto.js?ver=4.4.14<br><b>20465048 Grabbing script</b>: http://guardianinternationalschool.com/wp-content/themes/kidslife/framework/js/public/jquery.nicescroll.min.js?ver=4.4.14<br><b>20465048 Grabbing script</b>: http://guardianinternationalschool.com/wp-content/themes/kidslife/framework/js/public/jquery.isotope.min.js?ver=4.4.14<br><b>20465048 Grabbing script</b>: http://guardianinternationalschool.com/wp-content/themes/kidslife/framework/js/public/jquery.sticky.js?ver=4.4.14<br><b>20465048 Grabbing script</b>: http://guardianinternationalschool.com/wp-content/themes/kidslife/framework/js/public/jquery.fitvids.js?ver=4.4.14<br><b>20465048 Grabbing script</b>: http://guardianinternationalschool.com/wp-content/themes/kidslife/framework/js/public/jquery.bxslider.js?ver=4.4.14<br><b>20465048 Grabbing script</b>: http://guardianinternationalschool.com/wp-content/themes/kidslife/framework/js/public/toucheffects.js?ver=4.4.14<br><b>20465048 Grabbing script</b>: http://guardianinternationalschool.com/wp-content/themes/kidslife/framework/js/public/custom.js?ver=4.4.14<br><b>20465048 Grabbing script</b>: http://guardianinternationalschool.com/wp-includes/js/wp-embed.min.js?ver=4.4.14<br><b>20465048 Grabbing stylesheet</b>: http://guardianinternationalschool.com/wp-content/plugins/designthemes-core-features/shortcodes/css/animations.css?ver=4.4.14<br><b>20465048 Grabbing stylesheet</b>: http://guardianinternationalschool.com/wp-content/plugins/designthemes-core-features/shortcodes/css/flexslider.css?ver=4.4.14<br><b>20465048 Grabbing stylesheet</b>: http://guardianinternationalschool.com/wp-content/plugins/designthemes-core-features/shortcodes/css/shortcodes.css?ver=4.4.14<br><b>20465048 Grabbing stylesheet</b>: http://guardianinternationalschool.com/wp-content/plugins/designthemes-core-features/page-builder/css/animations.css?ver=4.4.14<br><b>20465048 Grabbing stylesheet</b>: http://guardianinternationalschool.com/wp-content/plugins/sliding-contact-form-by-formget/css/formstyle.css?ver=4.4.14<br><b>20465048 Grabbing stylesheet</b>: http://guardianinternationalschool.com/wp-content/plugins/LayerSlider/static/css/layerslider.css?ver=5.5.1<br><b>20465048 Grabbing stylesheet</b>: http://guardianinternationalschool.com/wp-content/plugins/contact-form-7/includes/css/styles.css?ver=4.3.1<br><b>20465048 Grabbing stylesheet</b>: http://guardianinternationalschool.com/wp-content/plugins/responsive-maps-plugin/includes/css/rsmaps.css?ver=2.24<br><b>20465048 Grabbing stylesheet</b>: http://guardianinternationalschool.com/wp-content/plugins/revslider/public/assets/css/settings.css?ver=5.0.5<br><b>20465048 Grabbing stylesheet</b>: http://guardianinternationalschool.com/wp-content/plugins/wp-live-chat-support/css/font-awesome.min.css?ver=4.4.14<br><b>20465048 Grabbing stylesheet</b>: http://guardianinternationalschool.com/wp-content/plugins/wp-live-chat-support/css/wplcstyle.css?ver=7.1.03<br><b>20465048 Grabbing stylesheet</b>: http://guardianinternationalschool.com/wp-content/plugins/wp-live-chat-support/css/themes/theme-default.css?ver=7.1.03<br><b>20465048 Grabbing stylesheet</b>: http://guardianinternationalschool.com/wp-content/plugins/wp-live-chat-support/css/themes/modern.css?ver=7.1.03<br><b>20465048 Grabbing stylesheet</b>: http://guardianinternationalschool.com/wp-content/plugins/wp-live-chat-support/css/themes/position-left.css?ver=7.1.03<br><b>20465048 Grabbing stylesheet</b>: http://guardianinternationalschool.com/wp-content/themes/kidslife/css/prettyPhoto.css?ver=4.4.14<br><b>20465048 Grabbing stylesheet</b>: http://guardianinternationalschool.com/wp-content/themes/kidslife/style.css?ver=4.4.14<br><b>20465048 Grabbing stylesheet</b>: http://guardianinternationalschool.com/wp-content/themes/kidslife/css/font-awesome.min.css?ver=3.0.2<br><b>20465048 Grabbing stylesheet</b>: http://guardianinternationalschool.com/wp-content/themes/kidslife/responsive.css?ver=4.4.14<br><b>20465048 Grabbing stylesheet</b>: http://guardianinternationalschool.com/wp-content/themes/kidslife/skins/ruby/style.css?ver=4.4.14<br><b>20465048 Grabbing image</b>: http://guardianinternationalschool.com/wp-content/uploads/2016/02/GIS-LOGO.png<br><b>20465048 Grabbing image</b>: http://guardianinternationalschool.com/wp-content/uploads/2016/02/GIS-LOGO.png<br><b>20465048 Grabbing image</b>: http://guardianinternationalschool.com/wp-content/uploads/2017/08/20170623_093221.jpg<br><b>20465048 Grabbing image</b>: http://guardianinternationalschool.com/wp-content/uploads/2017/08/20170623_094108.jpg<br><b>20465048 Grabbing image</b>: http://guardianinternationalschool.com/wp-content/uploads/2017/08/20170623_094812.jpg<br><b>20465048 Grabbing image</b>: http://guardianinternationalschool.com/wp-content/uploads/2017/08/20170623_095455.jpg<br><b>20465048 Grabbing image</b>: http://guardianinternationalschool.com/wp-content/uploads/2017/08/20170623_143922.jpg<br><b>20465048 Grabbing image</b>: http://guardianinternationalschool.com/wp-content/themes/kidslife/images/sociable/facebook.png<br><b>20465048 Grabbing image</b>: http://guardianinternationalschool.com/wp-content/themes/kidslife/images/sociable/linkedin.png<br><b>20465048 Grabbing image</b>: http://guardianinternationalschool.com/wp-content/themes/kidslife/images/sociable/twitter.png<br><b>Processing link</b>: <span class=\'text-primary\'>done</span><br>', 0, ''),
(22, 9, 1516902226, 'cancelled', '<b>29581792 Grabbing image</b>: http://BOOKMYKHANA.COM/assets/images/vendor/blank.gif<br><b>29581792 Grabbing image</b>: http://BOOKMYKHANA.COM/assets/images/vendor/fancybox_overlay.png<br><b>29581792 Grabbing image</b>: http://BOOKMYKHANA.COM/assets/images/vendor/fancybox_sprite@2x.png<br><b>29581792 Grabbing image</b>: http://BOOKMYKHANA.COM/assets/images/vendor/fancybox_loading@2x.gif<br><b>29581792 Grabbing image</b>: http://BOOKMYKHANA.COM/assets/images/vendor/flags.png<br><b>29581792 Grabbing image</b>: http://BOOKMYKHANA.COM/assets/images/vendor/flags@2x.png<br><b>29581792 Grabbing image</b>: http://BOOKMYKHANA.COM/assets/images/b-1.jpg<br><b>29581792 Grabbing image</b>: http://BOOKMYKHANA.COM/assets/images/bg-transparent.png<br><b>29581792 Grabbing image</b>: http://BOOKMYKHANA.COM/assets/images/bg-transparent.png<br><b>29581792 Grabbing image</b>: http://BOOKMYKHANA.COM/assets/images/top-scroller.png<br><b>29581792 Grabbing image</b>: http://BOOKMYKHANA.COM/assets/images/top-scroller.png<br><b>29581792 Grabbing image</b>: http://BOOKMYKHANA.COM/assets/images/Preloader_2.gif<br><b>29581792 Grabbing image</b>: http://BOOKMYKHANA.COM/assets/images/bg-transparent.png<br><b>29581792 Grabbing image</b>: http://BOOKMYKHANA.COM/assets/images/bg-transparent.png<br><b>29581792 Grabbing image</b>: http://BOOKMYKHANA.COM/assets/images/bg-transparent.png<br><b>29581792 Grabbing image</b>: http://BOOKMYKHANA.COM/assets/images/grey-bg.png<br><b>29581792 Grabbing image</b>: http://BOOKMYKHANA.COM/assets/images/byaddress.png<br><b>29581792 Grabbing image</b>: http://BOOKMYKHANA.COM/assets/images/byname.png<br><b>29581792 Grabbing image</b>: http://BOOKMYKHANA.COM/assets/images/bystreet.png<br><b>29581792 Grabbing image</b>: http://BOOKMYKHANA.COM/assets/images/bycuisine.png<br><b>29581792 Grabbing image</b>: http://BOOKMYKHANA.COM/assets/images/byfood.png<br><b>29581792 Grabbing image</b>: http://BOOKMYKHANA.COM/assets/images/section1-bg.png<br><b>29581792 Grabbing image</b>: http://BOOKMYKHANA.COM/assets/images/grey-bg.png<br><b>29581792 Grabbing image</b>: http://BOOKMYKHANA.COM/assets/images/Coffee-cup.gif<br><b>29581792 Grabbing image</b>: http://BOOKMYKHANA.COM/assets/images/star.png<br><b>29581792 Grabbing image</b>: http://BOOKMYKHANA.COM/assets/images/your-order.png\");}.delivery-option-icon{background:url(\"/assets/images/delivery-option.png<br><b>29581792 Grabbing image</b>: http://BOOKMYKHANA.COM/assets/images/cart.png<br><b>29581792 Grabbing image</b>: http://BOOKMYKHANA.COM/assets/images/cart-hover.png<br><b>29581792 Grabbing image</b>: http://BOOKMYKHANA.COM/assets/images/bg_country.jpg<br><b>29581792 Grabbing link</b>: http://BOOKMYKHANA.COM/home<br><b>29581792 Grabbing link</b>: javascript:;<br><b>29581792 Grabbing link</b>: http://BOOKMYKHANA.COM/home<br><b>29581792 Grabbing link</b>: http://BOOKMYKHANA.COM/browse<br><b>29581792 Grabbing link</b>: http://BOOKMYKHANA.COM/contact<br><b>29581792 Grabbing link</b>: http://BOOKMYKHANA.COM/signup<br><b>29581792 Grabbing link</b>: http://BOOKMYKHANA.COM/home<br><b>29581792 Grabbing link</b>: http://BOOKMYKHANA.COM/browse<br><b>29581792 Grabbing link</b>: http://BOOKMYKHANA.COM/contact<br><b>29581792 Grabbing link</b>: http://BOOKMYKHANA.COM/signup<br><b>29581792 Grabbing link</b>: http://BOOKMYKHANA.COM/page-refund-and-cancellation-policy<br><b>29581792 Grabbing link</b>: http://BOOKMYKHANA.COM/page-privacy-policy<br><b>29581792 Grabbing link</b>: http://BOOKMYKHANA.COM/page-terms-and-conditions<br><b>29581792 Grabbing script</b>: http://BOOKMYKHANA.COM/menu-sarovar-veg/<br><b>29581792 Grabbing script</b>: http://BOOKMYKHANA.COM/menu-sarovar-veg/<br><b>29581792 Grabbing script</b>: http://BOOKMYKHANA.COM/menu-sarovar-veg/<br><b>29581792 Grabbing script</b>: http://BOOKMYKHANA.COM/menu-sarovar-veg/<br><b>29581792 Grabbing script</b>: http://BOOKMYKHANA.COM/assets/vendor/compress/combine-vendor.js?v=1.0<br><b>29581792 Grabbing script</b>: http://BOOKMYKHANA.COM/assets/vendor/markercluster.js<br><b>29581792 Grabbing script</b>: http://BOOKMYKHANA.COM/assets/vendor/timepicker.co/jquery.timepicker.js<br><b>29581792 Grabbing script</b>: http://BOOKMYKHANA.COM/assets/js/store.js?ver=3<br><b>29581792 Grabbing script</b>: http://BOOKMYKHANA.COM/assets/js/store-v3.js?ver=3<br><b>29581792 Grabbing stylesheet</b>: http://BOOKMYKHANA.COM/assets/vendor/timepicker.co/jquery.timepicker.min.css<br><b>29581792 Grabbing image</b>: http://BOOKMYKHANA.COM/upload/1509511805-1508400099-asdf-copy.png<br><b>29581792 Grabbing image</b>: http://BOOKMYKHANA.COM/upload/1509528045-1508400099-asdf-copy.png<br><b>29581792 Grabbing image</b>: http://BOOKMYKHANA.COM/assets/images/divider.png<br><b>Processing link</b>: <span class=\'text-primary\'>done</span><br>', 0, ''),
(23, 9, 1516938894, 'cancelled', '', 0, ''),
(24, 18, 1516939274, 'complete', '', 0, ''),
(25, 9, 1517201705, 'timed out', '<br><p><b class=\"text-danger\">Timed out... (after 1800 seconds)</b> You can re-build this clone at any later moment, it will pick up where it left off...</p>', 1, ''),
(26, 19, 1517227545, 'complete', '', 0, '{\"doEmail\":\"yes\",\"field_email\":\"yogesh21sahu@gmail.com\",\"field_subject\":\"clone for iitjee test series\",\"textarea_message\":\"\",\"checkbox_attachClone\":\"yes\"}'),
(27, 20, 1517228283, 'complete', '', 0, '');

-- --------------------------------------------------------

--
-- Table structure for table `files`
--

CREATE TABLE `files` (
  `file_id` int(11) NOT NULL,
  `site_id` int(11) NOT NULL,
  `crawl_id` int(11) NOT NULL,
  `file_url` text NOT NULL,
  `file_crawled` int(1) DEFAULT '0',
  `file_404` int(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `files`
--

INSERT INTO `files` (`file_id`, `site_id`, `crawl_id`, `file_url`, `file_crawled`, `file_404`) VALUES
(119, 12, 18, 'http://www.webrooinfotech.com/fonts/glyphicons-halflings-regular.eot', 1, 0),
(120, 12, 18, 'http://www.webrooinfotech.com/fonts/glyphicons-halflings-regulard41d.eot', 1, 0),
(121, 12, 18, 'http://www.webrooinfotech.com/fonts/glyphicons-halflings-regular.woff', 1, 0),
(122, 12, 18, 'http://www.webrooinfotech.com/fonts/glyphicons-halflings-regular.ttf', 1, 0),
(123, 12, 18, 'http://www.webrooinfotech.com/fonts/glyphicons-halflings-regular.svg', 1, 0),
(124, 12, 18, 'http://www.webrooinfotech.com/fonts/ionicons28b5.eot', 1, 0),
(125, 12, 18, 'http://www.webrooinfotech.com/fonts/ionicons28b5.ttf', 1, 0),
(126, 12, 18, 'http://www.webrooinfotech.com/fonts/ionicons28b5.woff', 1, 0),
(127, 12, 18, 'http://www.webrooinfotech.com/fonts/ionicons28b5.svg', 1, 0),
(128, 18, 24, 'http://www.pickmycart.com/vendor/bootstrap/fonts/glyphicons-halflings-regular.eot', 1, 0),
(129, 18, 24, 'http://www.pickmycart.com/vendor/bootstrap/fonts/glyphicons-halflings-regular.woff', 1, 0),
(130, 18, 24, 'http://www.pickmycart.com/vendor/bootstrap/fonts/glyphicons-halflings-regular.ttf', 1, 0),
(131, 18, 24, 'http://www.pickmycart.com/vendor/bootstrap/fonts/glyphicons-halflings-regular.svg', 1, 0),
(132, 18, 24, 'http://www.pickmycart.com/vendor/font-awesome/fonts/fontawesome-webfont.eot', 1, 0),
(133, 18, 24, 'http://www.pickmycart.com/vendor/font-awesome/fonts/fontawesome-webfont.woff', 1, 0),
(134, 18, 24, 'http://www.pickmycart.com/vendor/font-awesome/fonts/fontawesome-webfont.ttf', 1, 0),
(135, 18, 24, 'http://www.pickmycart.com/vendor/font-awesome/fonts/fontawesome-webfont.svg', 1, 0),
(136, 18, 24, 'http://www.pickmycart.com/vendor/simple-line-icons/fonts/Simple-Line-Icons.eot', 1, 0),
(137, 18, 24, 'http://www.pickmycart.com/vendor/simple-line-icons/fonts/Simple-Line-Icons.woff', 1, 0),
(138, 18, 24, 'http://www.pickmycart.com/vendor/simple-line-icons/fonts/Simple-Line-Icons.ttf', 1, 0),
(139, 18, 24, 'http://www.pickmycart.com/vendor/simple-line-icons/fonts/Simple-Line-Icons.svg', 1, 0),
(140, 20, 27, 'http://lms.iitjeetestseries.com/theme/font.php/nlytntheme/theme/1486028674/glyphicons-halflings-regular.eot', 1, 0),
(141, 20, 27, 'http://lms.iitjeetestseries.com/theme/font.php/nlytntheme/theme/1486028674/glyphicons-halflings-regular.woff', 1, 0),
(142, 20, 27, 'http://lms.iitjeetestseries.com/theme/font.php/nlytntheme/theme/1486028674/glyphicons-halflings-regular.ttf', 1, 0),
(143, 20, 27, 'http://lms.iitjeetestseries.com/theme/font.php/nlytntheme/theme/1486028674/glyphicons-halflings-regular.svg', 1, 0),
(144, 20, 27, 'http://lms.iitjeetestseries.com/theme/styles.php/_s/nlytntheme/1486028674/fontawesome-webfont.eot', 1, 1),
(145, 20, 27, 'http://lms.iitjeetestseries.com/theme/font.php/nlytntheme/theme/1486028674/fontawesome-webfont.eot', 1, 0),
(146, 20, 27, 'http://lms.iitjeetestseries.com/theme/font.php/nlytntheme/theme/1486028674/fontawesome-webfont.woff', 1, 0),
(147, 20, 27, 'http://lms.iitjeetestseries.com/theme/font.php/nlytntheme/theme/1486028674/fontawesome-webfont.ttf', 1, 0),
(148, 20, 27, 'http://lms.iitjeetestseries.com/theme/font.php/nlytntheme/theme/1486028674/fontawesome-webfont.svg', 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `groups`
--

CREATE TABLE `groups` (
  `id` mediumint(8) UNSIGNED NOT NULL,
  `name` varchar(20) NOT NULL,
  `description` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `groups`
--

INSERT INTO `groups` (`id`, `name`, `description`) VALUES
(1, 'admin', 'Administrator'),
(2, 'members', 'General User');

-- --------------------------------------------------------

--
-- Table structure for table `images`
--

CREATE TABLE `images` (
  `image_id` int(11) NOT NULL,
  `site_id` int(11) NOT NULL,
  `crawl_id` int(11) NOT NULL,
  `image_src` varchar(255) NOT NULL,
  `image_crawled` int(1) NOT NULL,
  `image_404` int(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `images`
--

INSERT INTO `images` (`image_id`, `site_id`, `crawl_id`, `image_src`, `image_crawled`, `image_404`) VALUES
(524, 10, 14, 'http://inclojure.org/static/images/inclojure-logo-v2.png', 1, 0),
(525, 10, 14, 'http://inclojure.org/static/images/ztellman.jpg', 1, 0),
(526, 10, 14, 'http://inclojure.org/static/images/anmonteiro.jpg', 1, 0),
(527, 10, 14, 'http://inclojure.org/static/images/sponsor-logos/go-jek.png', 1, 0),
(528, 10, 14, 'http://inclojure.org/static/images/sponsor-logos/nilenso.png', 1, 0),
(529, 10, 14, 'http://inclojure.org/static/images/sponsor-logos/helpshift.png', 1, 0),
(530, 10, 14, 'http://inclojure.org/static/images/sponsor-logos/webengage.png', 1, 0),
(531, 10, 14, 'http://inclojure.org/static/images/sponsor-logos/formcept.png', 1, 0),
(532, 10, 14, 'http://inclojure.org/static/images/kiran.jpg', 1, 0),
(533, 10, 14, 'http://inclojure.org/static/images/kapil.jpeg', 1, 0),
(534, 10, 14, 'http://inclojure.org/static/images/jake.jpg', 1, 0),
(535, 10, 14, 'http://inclojure.org/static/images/varun.jpg', 1, 0),
(536, 10, 14, 'http://inclojure.org/static/images/rakesh.jpeg', 1, 0),
(537, 10, 14, 'http://inclojure.org/static/images/shafeeq.jpg', 1, 0),
(649, 13, 17, 'http://littlewe.in/wp-content/uploads/2016/05/Little-We.png', 0, 0),
(650, 13, 17, 'http://littlewe.in/wp-content/uploads/2016/05/bg-2.jpg', 0, 0),
(651, 13, 17, 'http://littlewe.in/wp-content/uploads/2016/05/cloud.png', 0, 0),
(652, 13, 17, 'http://littlewe.in/wp-content/uploads/2016/05/balon.png', 0, 0),
(653, 13, 17, 'http://littlewe.in/wp-content/uploads/2016/05/b1-2.jpg', 0, 0),
(654, 13, 17, 'http://littlewe.in/wp-content/uploads/2016/05/bg3.png', 0, 0),
(655, 13, 17, 'http://littlewe.in/wp-content/uploads/2016/05/bg-1-1.png', 0, 0),
(656, 13, 17, 'http://littlewe.in/wp-content/uploads/2016/05/11.jpg', 0, 0),
(657, 13, 17, 'http://littlewe.in/wp-content/uploads/2016/05/12.jpg', 0, 0),
(658, 13, 17, 'http://littlewe.in/wp-content/uploads/2016/05/13.jpg', 0, 0),
(659, 13, 17, 'http://littlewe.in/wp-content/uploads/2016/05/14.jpg', 0, 0),
(660, 13, 17, 'http://littlewe.in/wp-content/uploads/2016/05/15.jpg', 0, 0),
(661, 12, 18, 'http://www.webrooinfotech.com/images/Banner_1.jpg', 1, 0),
(662, 12, 18, 'http://www.webrooinfotech.com/images/Banner_2-2.jpg', 1, 0),
(663, 12, 18, 'http://www.webrooinfotech.com/images/Banner_3-2.jpg', 1, 0),
(664, 12, 18, 'http://www.webrooinfotech.com/images/Banner_4-2.jpg', 1, 0),
(665, 12, 18, 'http://www.webrooinfotech.com/images/Banner_5-2.jpg', 1, 0),
(666, 12, 18, 'http://www.webrooinfotech.com/images/WebrooLogo.png', 1, 0),
(667, 12, 18, 'http://www.webrooinfotech.com/images/man.png', 1, 0),
(668, 12, 18, 'http://www.webrooinfotech.com/images/responsive-icon-24457.png', 1, 0),
(669, 12, 18, 'http://www.webrooinfotech.com/images/software-icon-32081.png', 1, 0),
(670, 12, 18, 'http://www.webrooinfotech.com/images/promotion-icon-png-3431.png', 1, 0),
(671, 12, 18, 'http://www.webrooinfotech.com/images/cloud-icon-12880.png', 1, 0),
(672, 12, 18, 'http://www.webrooinfotech.com/images/Mission-PNG-Picture.png', 1, 0),
(673, 12, 18, 'http://www.webrooinfotech.com/images/icon-vision.png', 1, 0),
(674, 12, 18, 'http://www.webrooinfotech.com/images/icon-our-values.png', 1, 0),
(675, 12, 18, 'http://www.webrooinfotech.com/images/icon-tick.png', 1, 0),
(676, 12, 18, 'http://www.webrooinfotech.com/owl-carousel/grabbing.png', 1, 0),
(677, 12, 18, 'http://www.webrooinfotech.com/owl-carousel/AjaxLoader.gif', 1, 0),
(678, 12, 18, 'http://www.webrooinfotech.com/images/fancybox_sprite.png', 1, 0),
(679, 12, 18, 'http://www.webrooinfotech.com/images/fancybox_loading.gif', 1, 0),
(680, 12, 18, 'http://www.webrooinfotech.com/images/fancybox_overlay.png', 1, 0),
(681, 12, 18, 'http://www.webrooinfotech.com/images/fancybox_sprite%402x.png', 1, 0),
(682, 12, 18, 'http://www.webrooinfotech.com/images/fancybox_loading%402x.gif', 1, 0),
(683, 12, 18, 'http://www.webrooinfotech.com/images/status.gif', 1, 0),
(684, 12, 18, 'http://www.webrooinfotech.com/images/slider-3.jpg', 1, 1),
(685, 12, 18, 'http://www.webrooinfotech.com/images/about-bg.jpg', 1, 0),
(686, 12, 18, 'http://www.webrooinfotech.com/images/ourwork-bg.jpg', 1, 1),
(687, 12, 18, 'http://www.webrooinfotech.com/images/fact-bg.jpg', 1, 1),
(688, 12, 18, 'http://www.webrooinfotech.com/images/blog-bg.jpg', 1, 1),
(689, 12, 18, 'http://www.webrooinfotech.com/images/newsletter-bg.jpg', 1, 0),
(690, 12, 18, 'http://www.webrooinfotech.com/images/icon-email.png', 1, 0),
(691, 12, 18, 'http://www.webrooinfotech.com/images/footer-bg.jpg', 1, 1),
(692, 12, 18, 'http://www.webrooinfotech.com/images/blog-title-bg.jpg', 1, 1),
(693, 12, 18, 'http://www.webrooinfotech.com/images/search-icon.jpg', 1, 0),
(769, 15, 19, 'http://www.rutgersprep.org/uploaded/megamenu/about_violin.jpg', 0, 0),
(770, 15, 19, 'http://www.rutgersprep.org/uploaded/megamenu/us_kids_study.jpg', 0, 0),
(771, 15, 19, 'http://www.rutgersprep.org/uploaded/megamenu/lS_kids_study.jpg', 0, 0),
(772, 15, 19, 'http://www.rutgersprep.org/uploaded/megamenu/athletics.jpg', 0, 0),
(773, 15, 19, 'http://www.rutgersprep.org/uploaded/megamenu/girl_camera.jpg', 0, 0),
(774, 15, 19, 'http://www.rutgersprep.org/uploaded/megamenu/Spiritdaymix.jpg', 0, 0),
(775, 15, 19, 'http://www.rutgersprep.org/uploaded/megamenu/giving.jpg', 0, 0),
(776, 15, 19, 'http://www.rutgersprep.org/uploaded/themes/default_17/images/header-emblem.png', 0, 0),
(777, 15, 19, 'http://www.rutgersprep.org/uploaded/themes/default_17/images/hero-example.jpg', 0, 0),
(778, 15, 19, 'http://www.rutgersprep.org/uploaded/news/fusion/fusion.jpg', 0, 0),
(779, 15, 19, 'http://www.rutgersprep.org/uploaded/news/millo/mill0.jpg', 0, 0),
(780, 15, 19, 'http://www.rutgersprep.org/uploaded/news/12-21-17-augmented-reality/17-12_RPS_Kindergartners_in-screen_planets2.jpg', 0, 0),
(781, 15, 19, 'http://www.rutgersprep.org/uploaded/news/wait/wait.jpg', 0, 0),
(782, 15, 19, 'http://www.rutgersprep.org/uploaded/news/bates/IanCBates_PDN30_018.jpg', 0, 0),
(783, 15, 19, 'http://www.rutgersprep.org/uploaded/news/global/globa_thumb.jpg', 0, 0),
(784, 15, 19, 'http://www.rutgersprep.org/uploaded/landing_page_images/academics/Lower_school.jpg', 0, 0),
(785, 15, 19, 'http://www.rutgersprep.org/uploaded/landing_page_images/academics/middle_school.jpg', 0, 0),
(786, 15, 19, 'http://www.rutgersprep.org/uploaded/landing_page_images/academics/upper_school.jpg', 0, 0),
(787, 15, 19, 'http://www.rutgersprep.org/uploaded/landing_page_images/academics/college_counseling.jpg', 0, 0),
(788, 15, 19, 'http://www.rutgersprep.org/uploaded/landing_page_images/academics/tedx-landing-page.jpg', 0, 0),
(789, 15, 19, 'http://www.rutgersprep.org/uploaded/faculty_small/angelos.jpeg', 0, 0),
(790, 15, 19, 'http://www.rutgersprep.org/uploaded/faculty_small/applebaum.jpeg', 0, 0),
(791, 15, 19, 'http://www.rutgersprep.org/uploaded/faculty_small/avella.jpeg', 0, 0),
(792, 15, 19, 'http://www.rutgersprep.org/uploaded/faculty_small/bautista.jpeg', 0, 0),
(793, 15, 19, 'http://www.rutgersprep.org/uploaded/faculty_small/bloom.jpeg', 0, 0),
(794, 15, 19, 'http://www.rutgersprep.org/uploaded/faculty_small/baures.jpeg', 0, 0),
(795, 15, 19, 'http://www.rutgersprep.org/uploaded/faculty_small/britt.jpeg', 0, 0),
(796, 15, 19, 'http://www.rutgersprep.org/uploaded/faculty_small/fink.jpeg', 0, 0),
(797, 15, 19, 'http://www.rutgersprep.org/uploaded/faculty_small/chang.jpeg', 0, 0),
(798, 15, 19, 'http://www.rutgersprep.org/uploaded/faculty_small/chodl.jpeg', 0, 0),
(799, 15, 19, 'http://www.rutgersprep.org/uploaded/faculty_small/cohen.jpeg', 0, 0),
(800, 15, 19, 'http://www.rutgersprep.org/uploaded/faculty_small/conroy.jpeg', 0, 0),
(801, 15, 19, 'http://www.rutgersprep.org/uploaded/faculty_small/cooper_j.jpeg', 0, 0),
(802, 15, 19, 'http://www.rutgersprep.org/uploaded/faculty_small/corbin.jpeg', 0, 0),
(803, 15, 19, 'http://www.rutgersprep.org/uploaded/faculty_small/corrigan.jpeg', 0, 0),
(804, 16, 20, 'http://synergyindia360.com/uploads/8/4/8/9/8489442/background-images/91018499.jpeg', 1, 0),
(805, 16, 20, 'http://synergyindia360.com/uploads/8/4/8/9/8489442/published/partnership_1.jpeg', 1, 0),
(806, 16, 20, 'http://synergyindia360.com/uploads/8/4/8/9/8489442/anandan-ks.jpg', 1, 0),
(807, 16, 20, 'http://synergyindia360.com/uploads/8/4/8/9/8489442/chaithanya.jpg', 1, 0),
(808, 16, 20, 'http://synergyindia360.com/uploads/8/4/8/9/8489442/happy-krishna-2.jpg', 1, 0),
(809, 16, 20, 'http://synergyindia360.com/uploads/8/4/8/9/8489442/shivakumar_1.jpg', 1, 0),
(810, 16, 20, 'http://synergyindia360.com/uploads/8/4/8/9/8489442/dusk-2_3_orig.png', 1, 0),
(811, 16, 20, 'http://synergyindia360.com/uploads/8/4/8/9/8489442/synergyteam_orig.png', 1, 0),
(812, 16, 20, 'http://synergyindia360.com/uploads/8/4/8/9/8489442/published/synergyimg.png', 1, 0),
(813, 17, 21, 'http://guardianinternationalschool.com/http://wedesignthemes.com/html/kidslife/images/cloud-bg.png', 0, 0),
(814, 17, 21, 'http://guardianinternationalschool.com/wp-content/plugins/wp-live-chat-support/images/iconRetina.png', 0, 0),
(815, 17, 21, 'http://guardianinternationalschool.com/wp-content/plugins/wp-live-chat-support/images/iconCloseRetina.png', 0, 0),
(816, 17, 21, 'http://guardianinternationalschool.com/wp-content/plugins/wp-live-chat-support/images/bg/cloudy.jpg', 0, 0),
(817, 17, 21, 'http://guardianinternationalschool.com/wp-content/themes/kidslife/framework/theme_options/images/patterns/pattern8.jpg', 0, 0),
(818, 17, 21, 'http://guardianinternationalschool.com/wp-content/uploads/2016/02/GIS-LOGO.png', 0, 0),
(819, 17, 21, 'http://guardianinternationalschool.com/wp-content/uploads/2016/02/Nature__field__grass__woods__trees__green_forest_sky_clouds_landscapes_2560x1600.jpg', 0, 0),
(820, 17, 21, 'http://guardianinternationalschool.com/wp-content/uploads/2016/02/Untitled-1.png', 0, 0),
(821, 17, 21, 'http://guardianinternationalschool.com/wp-content/uploads/layerslider/KidsLife-Slider/grass.png', 0, 0),
(822, 17, 21, 'http://guardianinternationalschool.com/wp-content/uploads/2016/02/Untitled-1-1.png', 0, 0),
(823, 17, 21, 'http://guardianinternationalschool.com/wp-content/uploads/2016/02/logo-png.png', 0, 0),
(824, 17, 21, 'http://guardianinternationalschool.com/wp-content/uploads/2016/02/1-1.png', 0, 0),
(825, 17, 21, 'http://guardianinternationalschool.com/wp-content/uploads/2016/02/2.png', 0, 0),
(826, 17, 21, 'http://guardianinternationalschool.com/wp-content/uploads/2016/02/Untitled-5.png', 0, 0),
(827, 17, 21, 'http://guardianinternationalschool.com/wp-content/uploads/2016/02/55.png', 0, 0),
(828, 17, 21, 'http://guardianinternationalschool.com/wp-content/uploads/layerslider/KidsLife-Slider/black-board.jpg', 0, 0),
(829, 17, 21, 'http://guardianinternationalschool.com/wp-content/uploads/2016/02/Untitled-7.png', 0, 0),
(830, 17, 21, 'http://guardianinternationalschool.com/wp-content/uploads/2016/02/thin-219_thinking_brain_head_mind-512.png', 0, 0),
(831, 17, 21, 'http://guardianinternationalschool.com/wp-content/uploads/2016/02/thinker-clipart-think-hi.png', 0, 0),
(832, 17, 21, 'http://guardianinternationalschool.com/wp-content/uploads/2016/02/Untitled-6-1.png', 0, 0),
(833, 17, 21, 'http://guardianinternationalschool.com/wp-content/uploads/2016/02/Music.png', 0, 0),
(834, 17, 21, 'http://guardianinternationalschool.com/wp-content/uploads/2016/02/15-Light-Bulb-icon.png', 0, 0),
(835, 17, 21, 'http://guardianinternationalschool.com/wp-content/uploads/2016/02/math_calculator-512.png', 0, 0),
(836, 17, 21, 'http://guardianinternationalschool.com/wp-content/uploads/2016/02/670px-Play-Twinkle-Twinkle-Little-Star-on-the-Keyboard-Without-Reading-Sheet-Music-Step-2.jpg', 0, 0),
(837, 17, 21, 'http://guardianinternationalschool.com/wp-content/uploads/2016/02/19video-1-popup.jpg', 0, 0),
(838, 17, 21, 'http://guardianinternationalschool.com/wp-content/uploads/2016/02/maxresdefault.jpg', 0, 0),
(839, 17, 21, 'http://guardianinternationalschool.com/wp-content/uploads/2016/02/babies-03.jpg', 0, 0),
(840, 17, 21, 'http://guardianinternationalschool.com/wp-content/uploads/2016/02/parallax-image-copy.png', 0, 0),
(841, 17, 21, 'http://guardianinternationalschool.com/wp-content/uploads/2016/02/gis5-300x208.jpg', 0, 0),
(842, 17, 21, 'http://guardianinternationalschool.com/wp-content/uploads/2016/02/gis3-300x185.jpg', 0, 0),
(843, 17, 21, 'http://guardianinternationalschool.com/wp-content/uploads/2016/02/gis1-300x208.jpg', 0, 0),
(844, 17, 21, 'http://guardianinternationalschool.com/wp-content/uploads/2016/02/gis6-300x208.jpg', 0, 0),
(845, 17, 21, 'http://guardianinternationalschool.com/wp-content/themes/kidslife/images/sociable/facebook.png', 0, 0),
(846, 17, 21, 'http://guardianinternationalschool.com/wp-content/themes/kidslife/images/sociable/linkedin.png', 0, 0),
(847, 17, 21, 'http://guardianinternationalschool.com/wp-content/themes/kidslife/images/sociable/twitter.png', 0, 0),
(848, 17, 21, 'http://guardianinternationalschool.com/wp-content/uploads/2016/02/gis5.jpg', 0, 0),
(849, 17, 21, 'http://guardianinternationalschool.com/wp-content/uploads/2016/02/gis1.jpg', 0, 0),
(850, 17, 21, 'http://guardianinternationalschool.com/wp-content/uploads/2016/02/gis9.jpg', 0, 0),
(851, 17, 21, 'http://guardianinternationalschool.com/wp-content/plugins/designthemes-core-features/shortcodes/images/mask.png', 0, 0),
(852, 17, 21, 'http://guardianinternationalschool.com/wp-content/plugins/designthemes-core-features/shortcodes/images/team/twitter.png', 0, 0),
(853, 17, 21, 'http://guardianinternationalschool.com/wp-content/plugins/designthemes-core-features/shortcodes/images/team/linkedin.png', 0, 0),
(854, 17, 21, 'http://guardianinternationalschool.com/wp-content/plugins/designthemes-core-features/shortcodes/images/team/facebook.png', 0, 0),
(855, 17, 21, 'http://guardianinternationalschool.com/services/http://wedesignthemes.com/themes/dummy-dtkidslife/wp-content/uploads/2015/01/services-banner2.jpg', 0, 0),
(856, 17, 21, 'http://guardianinternationalschool.com/services/http://wedesignthemes.com/html/kidslife/images/cloud-bg.png', 0, 0),
(857, 17, 21, 'http://guardianinternationalschool.com/wp-content/uploads/2016/02/parallax-image.png', 0, 0),
(858, 17, 21, 'http://guardianinternationalschool.com/wp-content/themes/kidslife/images/portfolio-mask.png', 0, 0),
(859, 17, 21, 'http://guardianinternationalschool.com/wp-content/uploads/2016/02/gis4.jpg', 0, 0),
(860, 17, 21, 'http://guardianinternationalschool.com/wp-content/uploads/2016/02/gis11.jpg', 0, 0),
(861, 17, 21, 'http://guardianinternationalschool.com/wp-content/uploads/2016/02/gis8.jpg', 0, 0),
(862, 17, 21, 'http://guardianinternationalschool.com/wp-content/uploads/2016/02/gis6.jpg', 0, 0),
(863, 17, 21, 'http://guardianinternationalschool.com/wp-content/uploads/2016/02/gis3.jpg', 0, 0),
(864, 17, 21, 'http://guardianinternationalschool.com/wp-content/uploads/2016/03/20160326_083404.jpg', 0, 0),
(865, 17, 21, 'http://guardianinternationalschool.com/wp-content/uploads/2016/08/IMG-20160730-WA0002.jpg', 0, 0),
(866, 17, 21, 'http://guardianinternationalschool.com/wp-content/uploads/2016/08/20160723_110615-1.jpg', 0, 0),
(867, 17, 21, 'http://guardianinternationalschool.com/wp-content/uploads/2016/08/2016-08-15-08-05-52-245.jpg', 0, 0),
(868, 17, 21, 'http://guardianinternationalschool.com/wp-content/uploads/2016/10/IMG_20161011_094527.jpg', 0, 0),
(869, 17, 21, 'http://guardianinternationalschool.com/wp-content/uploads/2016/10/IMG_20161015_100959.jpg', 0, 0),
(870, 17, 21, 'http://guardianinternationalschool.com/wp-content/uploads/2016/11/20161021_145129.jpg', 0, 0),
(871, 17, 21, 'http://guardianinternationalschool.com/wp-content/uploads/2016/11/20161114_100821.jpg', 0, 0),
(872, 17, 21, 'http://guardianinternationalschool.com/wp-content/uploads/2016/11/IMG_20161111_150911.jpg', 0, 0),
(873, 17, 21, 'http://guardianinternationalschool.com/wp-content/uploads/2016/11/IMG_20161104_145839.jpg', 0, 0),
(874, 17, 21, 'http://guardianinternationalschool.com/wp-content/uploads/2016/11/IMG_20161118_145820.jpg', 0, 0),
(875, 17, 21, 'http://guardianinternationalschool.com/wp-content/uploads/2016/11/IMG_20161125_150556.jpg', 0, 0),
(876, 17, 21, 'http://guardianinternationalschool.com/wp-content/uploads/2017/01/IMG_20161209_145138.jpg', 0, 0),
(877, 17, 21, 'http://guardianinternationalschool.com/wp-content/uploads/2017/01/20161217_110053.jpg', 0, 0),
(878, 17, 21, 'http://guardianinternationalschool.com/wp-content/uploads/2017/02/IMG-20170129-WA0006.jpg', 0, 0),
(879, 17, 21, 'http://guardianinternationalschool.com/wp-content/uploads/2017/02/IMG_20170126_090859.jpg', 0, 0),
(880, 17, 21, 'http://guardianinternationalschool.com/wp-content/uploads/2017/04/DSC_4560.jpg', 0, 0),
(881, 17, 21, 'http://guardianinternationalschool.com/wp-content/uploads/2017/08/20170610_094540.jpg', 0, 0),
(882, 17, 21, 'http://guardianinternationalschool.com/wp-content/uploads/2017/08/IMG_20170728_150451.jpg', 0, 0),
(883, 17, 21, 'http://guardianinternationalschool.com/wp-content/uploads/2017/08/IMG-20170804-WA0009.jpg', 0, 0),
(884, 17, 21, 'http://guardianinternationalschool.com/wp-content/uploads/2017/08/IMG_20170804_150124.jpg', 0, 0),
(885, 17, 21, 'http://guardianinternationalschool.com/wp-content/uploads/2017/08/20170623_093221.jpg', 0, 0),
(886, 17, 21, 'http://guardianinternationalschool.com/wp-content/uploads/2017/08/IMG_20170811_094926.jpg', 0, 0),
(887, 17, 21, 'http://guardianinternationalschool.com/wp-content/uploads/2017/09/IMG-20170816-WA0000.jpg', 0, 0),
(888, 17, 21, 'http://guardianinternationalschool.com/wp-content/uploads/2016/11/20170624_100748.jpg', 0, 0),
(889, 17, 21, 'http://guardianinternationalschool.com/wp-content/uploads/2017/09/20170708_094230.jpg', 0, 0),
(890, 17, 21, 'http://guardianinternationalschool.com/wp-content/uploads/2017/09/IMG_20170722_113413.jpg', 0, 0),
(891, 17, 21, 'http://guardianinternationalschool.com/wp-content/uploads/2017/09/IMG-20170802-WA0021.jpg', 0, 0),
(892, 17, 21, 'http://guardianinternationalschool.com/wp-content/uploads/2017/09/IMG_20170819_093457.jpg', 0, 0),
(893, 17, 21, 'http://guardianinternationalschool.com/wp-content/uploads/2017/09/IMG-20170905-WA0010.jpg', 0, 0),
(894, 17, 21, 'http://guardianinternationalschool.com/wp-content/uploads/2017/09/20170824_114505.jpg', 0, 0),
(895, 17, 21, 'http://guardianinternationalschool.com/wp-content/uploads/2017/10/IMG_20171020_144756.jpg', 0, 0),
(896, 17, 21, 'http://guardianinternationalschool.com/wp-content/uploads/2017/10/IMG_20171016_142256.jpg', 0, 0),
(897, 17, 21, 'http://guardianinternationalschool.com/wp-content/uploads/2017/10/IMG_20170929_093249.jpg', 0, 0),
(898, 17, 21, 'http://guardianinternationalschool.com/wp-content/uploads/2017/11/IMG_20171027_150050.jpg', 0, 0),
(899, 17, 21, 'http://guardianinternationalschool.com/wp-content/uploads/2017/11/IMG_20171110_150059.jpg', 0, 0),
(900, 17, 21, 'http://guardianinternationalschool.com/wp-content/uploads/2017/11/IMG_20171114_111300_1.jpg', 0, 0),
(901, 17, 21, 'http://guardianinternationalschool.com/wp-content/uploads/2017/11/IMG_20171028_094542.jpg', 0, 0),
(902, 17, 21, 'http://guardianinternationalschool.com/wp-content/uploads/2017/12/IMG-20171128-WA0013.jpg', 0, 0),
(903, 17, 21, 'http://guardianinternationalschool.com/wp-content/uploads/2017/12/IMG-20171129-WA0026.jpg', 0, 0),
(904, 17, 21, 'http://guardianinternationalschool.com/wp-content/uploads/2017/12/IMG_20171125_122408.jpg', 0, 0),
(905, 17, 21, 'http://guardianinternationalschool.com/wp-content/plugins/designthemes-core-features/shortcodes/images/sociables/twitter.png', 0, 0),
(906, 17, 21, 'http://guardianinternationalschool.com/wp-content/plugins/designthemes-core-features/shortcodes/images/sociables/dribbble.png', 0, 0),
(907, 17, 21, 'http://guardianinternationalschool.com/wp-content/plugins/designthemes-core-features/shortcodes/images/sociables/picasa.png', 0, 0),
(908, 17, 21, 'http://guardianinternationalschool.com/wp-content/plugins/designthemes-core-features/shortcodes/images/sociables/pinterest.png', 0, 0),
(909, 17, 21, 'http://guardianinternationalschool.com/wp-content/plugins/designthemes-core-features/shortcodes/images/sociables/google_plus.png', 0, 0),
(910, 17, 21, 'http://guardianinternationalschool.com/wp-content/plugins/designthemes-core-features/shortcodes/images/sociables/facebook.png', 0, 0),
(911, 17, 21, 'http://guardianinternationalschool.com/wp-content/uploads/2017/12/IMG-20171125-WA0033.jpg', 0, 0),
(912, 17, 21, 'http://guardianinternationalschool.com/wp-content/uploads/2017/12/IMG-20171125-WA0034.jpg', 0, 0),
(913, 17, 21, 'http://guardianinternationalschool.com/wp-content/uploads/2017/12/IMG-20171125-WA0035.jpg', 0, 0),
(914, 17, 21, 'http://guardianinternationalschool.com/wp-content/uploads/2017/12/IMG-20171125-WA0039.jpg', 0, 0),
(915, 17, 21, 'http://guardianinternationalschool.com/wp-content/uploads/2017/12/IMG-20171125-WA0042.jpg', 0, 0),
(916, 17, 21, 'http://guardianinternationalschool.com/wp-content/uploads/2017/12/IMG-20171125-WA0044.jpg', 0, 0),
(917, 17, 21, 'http://guardianinternationalschool.com/wp-content/uploads/2017/12/IMG-20171125-WA0045.jpg', 0, 0),
(918, 17, 21, 'http://guardianinternationalschool.com/wp-content/uploads/2017/12/IMG-20171125-WA0046.jpg', 0, 0),
(919, 17, 21, 'http://guardianinternationalschool.com/wp-content/uploads/2017/10/IMG-20171016-WA0103.jpg', 0, 0),
(920, 17, 21, 'http://guardianinternationalschool.com/wp-content/uploads/2017/10/IMG-20171016-WA0096.jpg', 0, 0),
(921, 17, 21, 'http://guardianinternationalschool.com/wp-content/uploads/2017/10/IMG_20171016_143446.jpg', 0, 0),
(922, 17, 21, 'http://guardianinternationalschool.com/wp-content/uploads/2017/10/IMG_20171016_143241.jpg', 0, 0),
(923, 17, 21, 'http://guardianinternationalschool.com/wp-content/uploads/2017/10/IMG_20171016_143212.jpg', 0, 0),
(924, 17, 21, 'http://guardianinternationalschool.com/wp-content/uploads/2017/10/IMG_20171016_142319.jpg', 0, 0),
(925, 17, 21, 'http://guardianinternationalschool.com/wp-content/uploads/2017/08/20170610_094821.1.jpg', 0, 0),
(926, 17, 21, 'http://guardianinternationalschool.com/wp-content/uploads/2017/08/20170610_094844.jpg', 0, 0),
(927, 17, 21, 'http://guardianinternationalschool.com/wp-content/uploads/2017/08/20170610_094950.1.jpg', 0, 0),
(928, 17, 21, 'http://guardianinternationalschool.com/wp-content/uploads/2017/08/20170610_095008.jpg', 0, 0),
(929, 17, 21, 'http://guardianinternationalschool.com/wp-content/uploads/2016/11/20161114_100945.jpg', 0, 0),
(930, 17, 21, 'http://guardianinternationalschool.com/wp-content/uploads/2016/11/20161114_120842.jpg', 0, 0),
(931, 17, 21, 'http://guardianinternationalschool.com/wp-content/uploads/2016/03/20160326_104507.jpg', 0, 0),
(932, 17, 21, 'http://guardianinternationalschool.com/wp-content/uploads/2016/03/20160326_104655.jpg', 0, 0),
(933, 17, 21, 'http://guardianinternationalschool.com/wp-content/uploads/2016/03/20160326_104819.jpg', 0, 0),
(934, 17, 21, 'http://guardianinternationalschool.com/wp-content/uploads/2016/03/20160326_104931.jpg', 0, 0),
(935, 17, 21, 'http://guardianinternationalschool.com/wp-content/uploads/2016/03/20160326_112311.jpg', 0, 0),
(936, 17, 21, 'http://guardianinternationalschool.com/wp-content/uploads/2016/03/20160326_114156.jpg', 0, 0),
(937, 17, 21, 'http://guardianinternationalschool.com/wp-content/uploads/2016/03/20160326_115830.jpg', 0, 0),
(938, 17, 21, 'http://guardianinternationalschool.com/wp-content/uploads/2016/03/20160326_120954.jpg', 0, 0),
(939, 17, 21, 'http://guardianinternationalschool.com/wp-content/uploads/2016/03/20160326_121103.jpg', 0, 0),
(940, 17, 21, 'http://guardianinternationalschool.com/wp-content/uploads/2016/03/20160326_122546.jpg', 0, 0),
(941, 17, 21, 'http://guardianinternationalschool.com/wp-content/uploads/2016/03/20160326_123155.jpg', 0, 0),
(942, 17, 21, 'http://guardianinternationalschool.com/wp-content/uploads/2016/03/20160326_123354.jpg', 0, 0),
(943, 17, 21, 'http://guardianinternationalschool.com/wp-content/uploads/2016/03/20160326_123809.jpg', 0, 0),
(944, 17, 21, 'http://guardianinternationalschool.com/wp-content/uploads/2016/03/20160326_124232.jpg', 0, 0),
(945, 17, 21, 'http://guardianinternationalschool.com/wp-content/uploads/2016/03/20160326_133409.jpg', 0, 0),
(946, 17, 21, 'http://guardianinternationalschool.com/wp-content/uploads/2016/03/20160326_083404-300x169.jpg', 0, 0),
(947, 17, 21, 'http://guardianinternationalschool.com/wp-content/uploads/2016/08/IMG-20160730-WA0004.jpg', 0, 0),
(948, 17, 21, 'http://guardianinternationalschool.com/wp-content/uploads/2016/08/IMG-20160730-WA0005.jpg', 0, 0),
(949, 17, 21, 'http://guardianinternationalschool.com/wp-content/uploads/2016/08/IMG-20160730-WA0006.jpg', 0, 0),
(950, 17, 21, 'http://guardianinternationalschool.com/wp-content/uploads/2016/08/IMG-20160730-WA0007.jpg', 0, 0),
(951, 17, 21, 'http://guardianinternationalschool.com/wp-content/uploads/2016/08/IMG-20160730-WA0008.jpg', 0, 0),
(952, 17, 21, 'http://guardianinternationalschool.com/wp-content/uploads/2016/08/IMG-20160730-WA0009.jpg', 0, 0),
(953, 17, 21, 'http://guardianinternationalschool.com/wp-content/uploads/2016/08/IMG-20160730-WA0010.jpg', 0, 0),
(954, 17, 21, 'http://guardianinternationalschool.com/wp-content/uploads/2016/08/IMG-20160730-WA0011.jpg', 0, 0),
(955, 17, 21, 'http://guardianinternationalschool.com/wp-content/uploads/2016/08/20160723_110444.jpg', 0, 0),
(956, 17, 21, 'http://guardianinternationalschool.com/wp-content/uploads/2016/08/20160723_115013.jpg', 0, 0),
(957, 17, 21, 'http://guardianinternationalschool.com/wp-content/uploads/2016/08/20160723_102547.jpg', 0, 0),
(958, 17, 21, 'http://guardianinternationalschool.com/wp-content/uploads/2016/08/IMG_20160723_095149.jpg', 0, 0),
(959, 17, 21, 'http://guardianinternationalschool.com/wp-content/uploads/2016/08/IMG20160815084118.jpg', 0, 0),
(960, 17, 21, 'http://guardianinternationalschool.com/wp-content/uploads/2016/08/IMG20160815082432.jpg', 0, 0),
(961, 17, 21, 'http://guardianinternationalschool.com/wp-content/uploads/2016/08/IMG20160815084439.jpg', 0, 0),
(962, 17, 21, 'http://guardianinternationalschool.com/wp-content/uploads/2016/08/IMG20160815090147.jpg', 0, 0),
(963, 17, 21, 'http://guardianinternationalschool.com/wp-content/uploads/2016/08/IMG20160815091225.jpg', 0, 0),
(964, 17, 21, 'http://guardianinternationalschool.com/wp-content/uploads/2016/08/IMG20160815090755.jpg', 0, 0),
(965, 17, 21, 'http://guardianinternationalschool.com/wp-content/uploads/2016/08/IMG20160815090901.jpg', 0, 0),
(966, 17, 21, 'http://guardianinternationalschool.com/wp-content/uploads/2016/08/IMG20160815090945.jpg', 0, 0),
(967, 17, 21, 'http://guardianinternationalschool.com/wp-content/uploads/2016/08/IMG20160815091302.jpg', 0, 0),
(968, 17, 21, 'http://guardianinternationalschool.com/wp-content/uploads/2016/08/IMG20160815091740.jpg', 0, 0),
(969, 17, 21, 'http://guardianinternationalschool.com/wp-content/uploads/2016/08/IMG20160815092156.jpg', 0, 0),
(970, 17, 21, 'http://guardianinternationalschool.com/wp-content/uploads/2016/08/IMG20160815092957.jpg', 0, 0),
(971, 17, 21, 'http://guardianinternationalschool.com/wp-content/uploads/2016/10/IMG_20161011_094547.jpg', 0, 0),
(972, 17, 21, 'http://guardianinternationalschool.com/wp-content/uploads/2016/10/IMG_20161015_101854-1.jpg', 0, 0),
(973, 17, 21, 'http://guardianinternationalschool.com/wp-content/uploads/2016/10/IMG_20161015_105147.jpg', 0, 0),
(974, 17, 21, 'http://guardianinternationalschool.com/wp-content/uploads/2016/10/IMG_20161015_120654-2.jpg', 0, 0),
(975, 17, 21, 'http://guardianinternationalschool.com/wp-content/uploads/2016/11/20161021_145146.jpg', 0, 0),
(976, 17, 21, 'http://guardianinternationalschool.com/wp-content/uploads/2016/11/20161021_145258.jpg', 0, 0),
(977, 17, 21, 'http://guardianinternationalschool.com/wp-content/uploads/2016/11/20161021_145824.jpg', 0, 0),
(978, 17, 21, 'http://guardianinternationalschool.com/wp-content/uploads/2016/11/20161021_151731.jpg', 0, 0),
(979, 17, 21, 'http://guardianinternationalschool.com/wp-content/uploads/2016/11/20161021_152532.jpg', 0, 0),
(980, 17, 21, 'http://guardianinternationalschool.com/wp-content/uploads/2016/11/20161021_152630.jpg', 0, 0),
(981, 17, 21, 'http://guardianinternationalschool.com/wp-content/uploads/2016/11/20161021_153301.jpg', 0, 0),
(982, 17, 21, 'http://guardianinternationalschool.com/wp-content/uploads/2016/11/IMG_20161111_151002.jpg', 0, 0),
(983, 17, 21, 'http://guardianinternationalschool.com/wp-content/uploads/2016/11/IMG_20161111_151433.jpg', 0, 0),
(984, 17, 21, 'http://guardianinternationalschool.com/wp-content/uploads/2016/11/IMG_20161111_151812.jpg', 0, 0),
(985, 17, 21, 'http://guardianinternationalschool.com/wp-content/uploads/2016/11/IMG_20161111_154117.jpg', 0, 0),
(986, 17, 21, 'http://guardianinternationalschool.com/wp-content/uploads/2016/11/IMG_20161111_154124.jpg', 0, 0),
(987, 17, 21, 'http://guardianinternationalschool.com/wp-content/uploads/2016/11/IMG_20161111_154543.jpg', 0, 0),
(988, 17, 21, 'http://guardianinternationalschool.com/wp-content/uploads/2016/11/IMG_20161104_150507.jpg', 0, 0),
(989, 17, 21, 'http://guardianinternationalschool.com/wp-content/uploads/2016/11/IMG_20161104_150626.jpg', 0, 0),
(990, 17, 21, 'http://guardianinternationalschool.com/wp-content/uploads/2016/11/IMG_20161104_151314.jpg', 0, 0),
(991, 17, 21, 'http://guardianinternationalschool.com/wp-content/uploads/2016/11/IMG_20161104_151319.jpg', 0, 0),
(992, 17, 21, 'http://guardianinternationalschool.com/wp-content/uploads/2016/11/IMG_20161104_151342.jpg', 0, 0),
(993, 17, 21, 'http://guardianinternationalschool.com/wp-content/uploads/2016/11/IMG_20161104_151409.jpg', 0, 0),
(994, 17, 21, 'http://guardianinternationalschool.com/wp-content/uploads/2016/11/IMG_20161118_145942.jpg', 0, 0),
(995, 17, 21, 'http://guardianinternationalschool.com/wp-content/uploads/2016/11/IMG_20161118_150102.jpg', 0, 0),
(996, 17, 21, 'http://guardianinternationalschool.com/wp-content/uploads/2016/11/IMG_20161118_150203.jpg', 0, 0),
(997, 17, 21, 'http://guardianinternationalschool.com/wp-content/uploads/2016/11/IMG_20161118_150356.jpg', 0, 0),
(998, 17, 21, 'http://guardianinternationalschool.com/wp-content/uploads/2016/11/IMG_20161118_152404.jpg', 0, 0),
(999, 17, 21, 'http://guardianinternationalschool.com/wp-content/uploads/2016/11/IMG_20161118_152755.jpg', 0, 0),
(1000, 17, 21, 'http://guardianinternationalschool.com/wp-content/uploads/2016/11/IMG_20161118_153510.jpg', 0, 0),
(1001, 17, 21, 'http://guardianinternationalschool.com/wp-content/uploads/2016/11/IMG_20161118_153558.jpg', 0, 0),
(1002, 17, 21, 'http://guardianinternationalschool.com/wp-content/uploads/2016/11/IMG_20161118_153824.jpg', 0, 0),
(1003, 17, 21, 'http://guardianinternationalschool.com/wp-content/uploads/2016/11/IMG_20161118_154135.jpg', 0, 0),
(1004, 17, 21, 'http://guardianinternationalschool.com/wp-content/uploads/2016/11/IMG_20161118_154318.jpg', 0, 0),
(1005, 17, 21, 'http://guardianinternationalschool.com/wp-content/uploads/2016/11/IMG_20161118_154631.jpg', 0, 0),
(1006, 17, 21, 'http://guardianinternationalschool.com/wp-content/uploads/2016/11/IMG_20161125_150703.jpg', 0, 0),
(1007, 17, 21, 'http://guardianinternationalschool.com/wp-content/uploads/2016/11/IMG_20161125_151140.jpg', 0, 0),
(1008, 17, 21, 'http://guardianinternationalschool.com/wp-content/uploads/2016/11/IMG_20161125_151243.jpg', 0, 0),
(1009, 17, 21, 'http://guardianinternationalschool.com/wp-content/uploads/2016/11/IMG_20161125_151510.jpg', 0, 0),
(1010, 17, 21, 'http://guardianinternationalschool.com/wp-content/uploads/2016/11/IMG_20161125_151722.jpg', 0, 0),
(1011, 17, 21, 'http://guardianinternationalschool.com/wp-content/uploads/2016/11/IMG_20161125_153711.jpg', 0, 0),
(1012, 17, 21, 'http://guardianinternationalschool.com/wp-content/uploads/2017/01/IMG_20161209_145325.jpg', 0, 0),
(1013, 17, 21, 'http://guardianinternationalschool.com/wp-content/uploads/2017/01/IMG_20161209_150113.jpg', 0, 0),
(1014, 17, 21, 'http://guardianinternationalschool.com/wp-content/uploads/2017/01/IMG_20161209_151336.jpg', 0, 0),
(1015, 17, 21, 'http://guardianinternationalschool.com/wp-content/uploads/2017/01/IMG_20161209_151856.jpg', 0, 0),
(1016, 17, 21, 'http://guardianinternationalschool.com/wp-content/uploads/2017/01/IMG_20161209_151913.jpg', 0, 0),
(1017, 17, 21, 'http://guardianinternationalschool.com/wp-content/uploads/2017/01/IMG_20161209_151953.jpg', 0, 0),
(1018, 17, 21, 'http://guardianinternationalschool.com/wp-content/uploads/2017/01/IMG_20161209_152025.jpg', 0, 0),
(1019, 17, 21, 'http://guardianinternationalschool.com/wp-content/uploads/2017/01/IMG_20161209_153259.jpg', 0, 0),
(1020, 17, 21, 'http://guardianinternationalschool.com/wp-content/uploads/2017/01/20161217_110138.jpg', 0, 0),
(1021, 17, 21, 'http://guardianinternationalschool.com/wp-content/uploads/2017/01/20161217_110229.jpg', 0, 0),
(1022, 17, 21, 'http://guardianinternationalschool.com/wp-content/uploads/2017/01/IMG-20161220-WA0020.jpg', 0, 0),
(1023, 17, 21, 'http://guardianinternationalschool.com/wp-content/uploads/2017/01/IMG-20161220-WA0024.jpg', 0, 0),
(1024, 17, 21, 'http://guardianinternationalschool.com/wp-content/uploads/2017/02/IMG-20170130-WA0015.jpg', 0, 0),
(1025, 17, 21, 'http://guardianinternationalschool.com/wp-content/uploads/2017/02/IMG-20170130-WA0017.jpg', 0, 0),
(1026, 17, 21, 'http://guardianinternationalschool.com/wp-content/uploads/2017/02/IMG-20170130-WA0018.jpg', 0, 0),
(1027, 17, 21, 'http://guardianinternationalschool.com/wp-content/uploads/2017/02/IMG-20170130-WA0019.jpg', 0, 0),
(1028, 17, 21, 'http://guardianinternationalschool.com/wp-content/uploads/2017/02/IMG-20170130-WA0021.jpg', 0, 0),
(1029, 17, 21, 'http://guardianinternationalschool.com/wp-content/uploads/2017/02/IMG_20170126_092415.jpg', 0, 0),
(1030, 17, 21, 'http://guardianinternationalschool.com/wp-content/uploads/2017/02/IMG_20170126_092423.jpg', 0, 0),
(1031, 17, 21, 'http://guardianinternationalschool.com/wp-content/uploads/2017/02/IMG_20170126_093748.jpg', 0, 0),
(1032, 17, 21, 'http://guardianinternationalschool.com/wp-content/uploads/2017/02/IMG_20170126_093851.jpg', 0, 0),
(1033, 17, 21, 'http://guardianinternationalschool.com/wp-content/uploads/2017/02/IMG_20170126_094058.jpg', 0, 0),
(1034, 17, 21, 'http://guardianinternationalschool.com/wp-content/uploads/2017/02/IMG_20170126_094215.jpg', 0, 0),
(1035, 17, 21, 'http://guardianinternationalschool.com/wp-content/uploads/2017/02/IMG_20170126_094638.jpg', 0, 0),
(1036, 17, 21, 'http://guardianinternationalschool.com/wp-content/uploads/2017/02/IMG_20170126_094743.jpg', 0, 0),
(1037, 17, 21, 'http://guardianinternationalschool.com/wp-content/uploads/2017/02/IMG_20170126_094902.jpg', 0, 0),
(1038, 17, 21, 'http://guardianinternationalschool.com/wp-content/uploads/2017/02/IMG_20170126_095001.jpg', 0, 0),
(1039, 17, 21, 'http://guardianinternationalschool.com/wp-content/uploads/2017/02/IMG_20170126_095025.jpg', 0, 0),
(1040, 17, 21, 'http://guardianinternationalschool.com/wp-content/uploads/2017/02/IMG_20170126_095048.jpg', 0, 0),
(1041, 17, 21, 'http://guardianinternationalschool.com/wp-content/uploads/2017/02/IMG_20170126_095211.jpg', 0, 0),
(1042, 17, 21, 'http://guardianinternationalschool.com/wp-content/uploads/2017/02/IMG_20170126_095232.jpg', 0, 0),
(1043, 17, 21, 'http://guardianinternationalschool.com/wp-content/uploads/2017/02/IMG_20170126_095240.jpg', 0, 0),
(1044, 17, 21, 'http://guardianinternationalschool.com/wp-content/uploads/2017/02/IMG_20170126_095459.jpg', 0, 0),
(1045, 17, 21, 'http://guardianinternationalschool.com/wp-content/uploads/2017/02/IMG_20170126_134254.jpg', 0, 0),
(1046, 17, 21, 'http://guardianinternationalschool.com/wp-content/uploads/2017/04/DSC_4504.jpg', 0, 0),
(1047, 17, 21, 'http://guardianinternationalschool.com/wp-content/uploads/2017/04/DSC_4497.jpg', 0, 0),
(1048, 17, 21, 'http://guardianinternationalschool.com/wp-content/uploads/2017/04/DSC_4486.jpg', 0, 0),
(1049, 17, 21, 'http://guardianinternationalschool.com/wp-content/uploads/2017/04/DSC_4485.jpg', 0, 0),
(1050, 17, 21, 'http://guardianinternationalschool.com/wp-content/uploads/2017/04/DSC_4331.jpg', 0, 0),
(1051, 17, 21, 'http://guardianinternationalschool.com/wp-content/uploads/2017/04/DSC_4313.jpg', 0, 0),
(1052, 17, 21, 'http://guardianinternationalschool.com/wp-content/uploads/2017/04/DSC_4291.jpg', 0, 0),
(1053, 17, 21, 'http://guardianinternationalschool.com/wp-content/uploads/2017/04/DSC_4270.jpg', 0, 0),
(1054, 17, 21, 'http://guardianinternationalschool.com/wp-content/uploads/2017/04/DSC_4265.jpg', 0, 0),
(1055, 17, 21, 'http://guardianinternationalschool.com/wp-content/uploads/2017/04/DSC_4256.jpg', 0, 0),
(1056, 17, 21, 'http://guardianinternationalschool.com/wp-content/uploads/2017/04/DSC_4230.jpg', 0, 0),
(1057, 17, 21, 'http://guardianinternationalschool.com/wp-content/uploads/2017/04/DSC_4224.jpg', 0, 0),
(1058, 17, 21, 'http://guardianinternationalschool.com/wp-content/uploads/2017/04/DSC_4210.jpg', 0, 0),
(1059, 17, 21, 'http://guardianinternationalschool.com/wp-content/uploads/2017/04/DSC_4200.jpg', 0, 0),
(1060, 17, 21, 'http://guardianinternationalschool.com/wp-content/uploads/2017/04/DSC_4192.jpg', 0, 0),
(1061, 17, 21, 'http://guardianinternationalschool.com/wp-content/uploads/2017/04/DSC_4156.jpg', 0, 0),
(1062, 17, 21, 'http://guardianinternationalschool.com/wp-content/uploads/2017/08/IMG-20170721-WA0007-300x169.jpg', 0, 0),
(1063, 17, 21, 'http://guardianinternationalschool.com/wp-content/uploads/2017/08/IMG-20170721-WA0011-300x169.jpg', 0, 0),
(1064, 17, 21, 'http://guardianinternationalschool.com/wp-content/uploads/2017/08/IMG-20170721-WA0015-169x300.jpg', 0, 0),
(1065, 17, 21, 'http://guardianinternationalschool.com/wp-content/uploads/2017/08/IMG-20170721-WA0016-300x169.jpg', 0, 0),
(1066, 17, 21, 'http://guardianinternationalschool.com/wp-content/uploads/2017/08/IMG-20170721-WA0013-169x300.jpg', 0, 0),
(1067, 17, 21, 'http://guardianinternationalschool.com/wp-content/uploads/2017/08/IMG_20170728_150511.jpg', 0, 0),
(1068, 17, 21, 'http://guardianinternationalschool.com/wp-content/uploads/2017/08/IMG_20170728_150802.jpg', 0, 0),
(1069, 17, 21, 'http://guardianinternationalschool.com/wp-content/uploads/2017/08/IMG-20170804-WA0010.jpg', 0, 0),
(1070, 17, 21, 'http://guardianinternationalschool.com/wp-content/uploads/2017/08/IMG-20170804-WA0008.jpg', 0, 0),
(1071, 17, 21, 'http://guardianinternationalschool.com/wp-content/uploads/2017/08/IMG_20170804_150325.jpg', 0, 0),
(1072, 17, 21, 'http://guardianinternationalschool.com/wp-content/uploads/2017/08/20170623_094108.jpg', 0, 0),
(1073, 17, 21, 'http://guardianinternationalschool.com/wp-content/uploads/2017/08/20170623_094812.jpg', 0, 0),
(1074, 17, 21, 'http://guardianinternationalschool.com/wp-content/uploads/2017/08/20170623_095455.jpg', 0, 0),
(1075, 17, 21, 'http://guardianinternationalschool.com/wp-content/uploads/2017/08/20170623_143922.jpg', 0, 0),
(1260, 18, 24, 'http://www.pickmycart.com/img\\pick-my-cart-logo.png', 1, 1),
(1261, 18, 24, 'http://www.pickmycart.com/img\\gg_pmc_moving_phone_201610_ea1.png', 1, 1),
(1262, 18, 24, 'http://www.pickmycart.com/img\\gg_pmc_featured_phone_201610_ea1.png', 1, 1),
(1263, 18, 24, 'http://www.pickmycart.com/img\\gg_pmc_veg_icon_201610_ea1.png', 1, 1),
(1264, 18, 24, 'http://www.pickmycart.com/img\\gg_pmc_iron_icon_201610_ea1.png', 1, 1),
(1265, 18, 24, 'http://www.pickmycart.com/img\\gg_pmc_fuel_icon_201610_ea1.png', 1, 1),
(1266, 18, 24, 'http://www.pickmycart.com/img\\gg_pmc_grocery_icon_201610_ea1.png', 1, 1),
(1267, 18, 24, 'http://www.pickmycart.com/img\\gg_pmc_flowers_icon_201610_ea1.png', 1, 1),
(1268, 18, 24, 'http://www.pickmycart.com/img\\gg_pmc_nonveg_icon_201610_ea1.png', 1, 1),
(1269, 18, 24, 'http://www.pickmycart.com/img/google-play-badge.svg', 1, 0),
(1270, 18, 24, 'http://www.pickmycart.com/img\\gg_pmc_navhind_times_colored_ea2.jpg', 1, 1),
(1271, 18, 24, 'http://www.pickmycart.com/img\\gg_pmc_the_goa_ea2.jpg', 1, 1),
(1272, 18, 24, 'http://www.pickmycart.com/img\\gg_pmc_toi_colored_ea1.png', 1, 1),
(1273, 18, 24, 'http://www.pickmycart.com/vendor/device-mockups/macbook/macbook.png)}.device-mockup>.device>.screen{position:absolute;top:11.0438729%;bottom:14.6747352%;left:13.364486%;right:13.364486%;overflow:hidden}.device-mockup>.device>.button{position:absolute;top:', 1, 1),
(1274, 18, 24, 'http://www.pickmycart.com/img/bg-pattern.png', 1, 0),
(1275, 18, 24, 'http://www.pickmycart.com/img/bg-cta.jpg', 1, 0),
(1276, 9, 25, 'http://BOOKMYKHANA.COM/assets/images/vendor/ui-bg_highlight-soft_100_eeeeee_1x100.png', 0, 0),
(1277, 9, 25, 'http://BOOKMYKHANA.COM/assets/images/vendor/ui-bg_gloss-wave_35_f6a828_500x100.png', 0, 0),
(1278, 9, 25, 'http://BOOKMYKHANA.COM/assets/images/vendor/ui-bg_glass_100_f6f6f6_1x400.png', 0, 0),
(1279, 9, 25, 'http://BOOKMYKHANA.COM/assets/images/vendor/ui-bg_glass_100_fdf5ce_1x400.png', 0, 0),
(1280, 9, 25, 'http://BOOKMYKHANA.COM/assets/images/vendor/ui-bg_glass_65_ffffff_1x400.png', 0, 0),
(1281, 9, 25, 'http://BOOKMYKHANA.COM/assets/images/vendor/ui-bg_highlight-soft_75_ffe45c_1x100.png', 0, 0),
(1282, 9, 25, 'http://BOOKMYKHANA.COM/assets/images/vendor/ui-bg_diagonals-thick_18_b81900_40x40.png', 0, 0),
(1283, 9, 25, 'http://BOOKMYKHANA.COM/assets/images/vendor/ui-icons_222222_256x240.png', 0, 0),
(1284, 9, 25, 'http://BOOKMYKHANA.COM/assets/images/vendor/ui-icons_ffffff_256x240.png', 0, 0),
(1285, 9, 25, 'http://BOOKMYKHANA.COM/assets/images/vendor/ui-icons_ef8c08_256x240.png', 0, 0),
(1286, 9, 25, 'http://BOOKMYKHANA.COM/assets/images/vendor/ui-icons_228ef1_256x240.png', 0, 0),
(1287, 9, 25, 'http://BOOKMYKHANA.COM/assets/images/vendor/ui-icons_ffd27a_256x240.png', 0, 0),
(1288, 9, 25, 'http://BOOKMYKHANA.COM/assets/images/vendor/ui-bg_diagonals-thick_20_666666_40x40.png', 0, 0),
(1289, 9, 25, 'http://BOOKMYKHANA.COM/assets/images/vendor/ui-bg_flat_10_000000_40x100.png', 0, 0),
(1290, 9, 25, 'http://BOOKMYKHANA.COM/assets/images/vendor/minimal.png', 0, 0),
(1291, 9, 25, 'http://BOOKMYKHANA.COM/assets/images/vendor/minimal@2x.png', 0, 0),
(1292, 9, 25, 'http://BOOKMYKHANA.COM/assets/images/vendor/flat.png', 0, 0),
(1293, 9, 25, 'http://BOOKMYKHANA.COM/assets/images/vendor/flat@2x.png', 0, 0),
(1294, 9, 25, 'http://BOOKMYKHANA.COM/assets/images/vendor/chosen-sprite.png', 0, 0),
(1295, 9, 25, 'http://BOOKMYKHANA.COM/assets/images/vendor/chosen-sprite@2x.png', 0, 0),
(1296, 9, 25, 'http://BOOKMYKHANA.COM/assets/images/vendor/fancybox_sprite.png', 0, 0),
(1297, 9, 25, 'http://BOOKMYKHANA.COM/assets/images/vendor/fancybox_loading.gif', 0, 0),
(1298, 9, 25, 'http://BOOKMYKHANA.COM/assets/images/vendor/blank.gif', 0, 0),
(1299, 9, 25, 'http://BOOKMYKHANA.COM/assets/images/vendor/fancybox_overlay.png', 0, 0),
(1300, 9, 25, 'http://BOOKMYKHANA.COM/assets/images/vendor/fancybox_sprite@2x.png', 0, 0),
(1301, 9, 25, 'http://BOOKMYKHANA.COM/assets/images/vendor/fancybox_loading@2x.gif', 0, 0),
(1302, 9, 25, 'http://BOOKMYKHANA.COM/assets/images/vendor/flags.png', 0, 0),
(1303, 9, 25, 'http://BOOKMYKHANA.COM/assets/images/vendor/flags@2x.png', 0, 0),
(1304, 9, 25, 'http://BOOKMYKHANA.COM/assets/images/b-1.jpg', 0, 0),
(1305, 9, 25, 'http://BOOKMYKHANA.COM/assets/images/bg-transparent.png', 0, 0),
(1306, 9, 25, 'http://BOOKMYKHANA.COM/assets/images/top-scroller.png', 0, 0),
(1307, 9, 25, 'http://BOOKMYKHANA.COM/assets/images/Preloader_2.gif', 0, 0),
(1308, 9, 25, 'http://BOOKMYKHANA.COM/assets/images/grey-bg.png', 0, 0),
(1309, 9, 25, 'http://BOOKMYKHANA.COM/assets/images/byaddress.png', 0, 0),
(1310, 9, 25, 'http://BOOKMYKHANA.COM/assets/images/byname.png', 0, 0),
(1311, 9, 25, 'http://BOOKMYKHANA.COM/assets/images/bystreet.png', 0, 0),
(1312, 9, 25, 'http://BOOKMYKHANA.COM/assets/images/bycuisine.png', 0, 0),
(1313, 9, 25, 'http://BOOKMYKHANA.COM/assets/images/byfood.png', 0, 0),
(1314, 9, 25, 'http://BOOKMYKHANA.COM/assets/images/section1-bg.png', 0, 0),
(1315, 9, 25, 'http://BOOKMYKHANA.COM/assets/images/Coffee-cup.gif', 0, 0),
(1316, 9, 25, 'http://BOOKMYKHANA.COM/assets/images/star.png', 0, 0),
(1317, 9, 25, 'http://BOOKMYKHANA.COM/assets/images/your-order.png\");}.delivery-option-icon{background:url(\"/assets/images/delivery-option.png', 0, 0),
(1318, 9, 25, 'http://BOOKMYKHANA.COM/assets/images/cart.png', 0, 0),
(1319, 9, 25, 'http://BOOKMYKHANA.COM/assets/images/cart-hover.png', 0, 0),
(1320, 9, 25, 'http://BOOKMYKHANA.COM/assets/images/bg_country.jpg', 0, 0),
(1321, 9, 25, 'http://BOOKMYKHANA.COM/upload/1509511805-1508400099-asdf-copy.png', 0, 0),
(1322, 9, 25, 'http://BOOKMYKHANA.COM/upload/1509528045-1508400099-asdf-copy.png', 0, 0),
(1323, 9, 25, 'http://BOOKMYKHANA.COM/assets/images/banner.jpg', 0, 0),
(1324, 9, 25, 'http://BOOKMYKHANA.COM/assets/js/rc/spin.svg', 0, 0),
(1325, 9, 25, 'http://BOOKMYKHANA.COM/assets/js/rc/veg.png', 0, 0),
(1326, 9, 25, 'http://BOOKMYKHANA.COM/assets/js/rc/nonveg.png', 0, 0),
(1327, 9, 25, 'http://BOOKMYKHANA.COM/assets/js/rc/ccd.png', 0, 0),
(1328, 9, 25, 'http://BOOKMYKHANA.COM/assets/js/rc/bar.png', 0, 0),
(1329, 9, 25, 'http://BOOKMYKHANA.COM/assets/js/rc/ch.png', 0, 0),
(1330, 9, 25, 'http://BOOKMYKHANA.COM/assets/js/rc/fastfoos.png', 0, 0),
(1331, 9, 25, 'http://BOOKMYKHANA.COM/assets/js/rc/indian.png', 0, 0),
(1332, 9, 25, 'http://BOOKMYKHANA.COM/assets/js/rc/mango.png', 0, 0),
(1333, 9, 25, 'http://BOOKMYKHANA.COM/upload/1513268804-aaaaa.png', 0, 0),
(1334, 9, 25, 'http://BOOKMYKHANA.COM/upload/1513885820-va.png', 0, 0),
(1335, 9, 25, 'http://BOOKMYKHANA.COM/upload/1511757548-DSC00024.JPG', 0, 0),
(1336, 9, 25, 'http://BOOKMYKHANA.COM/upload/1510481601-sanjay.png', 0, 0),
(1337, 9, 25, 'http://BOOKMYKHANA.COM/upload/1511982444-gandharv-fast-food.jpg', 0, 0),
(1338, 9, 25, 'http://BOOKMYKHANA.COM/upload/1511757706-images.jpg', 0, 0),
(1339, 9, 25, 'http://BOOKMYKHANA.COM/upload/1510755348-sanjay.png', 0, 0),
(1340, 9, 25, 'http://BOOKMYKHANA.COM/upload/1511756995-1-n-only-food-mall-latur-1xxvy.jpg', 0, 0),
(1341, 9, 25, 'http://BOOKMYKHANA.COM/upload/1511542650-partha.jpeg', 0, 0),
(1342, 9, 25, 'http://BOOKMYKHANA.COM/upload/1511322244-dawat.png', 0, 0),
(1343, 9, 25, 'http://BOOKMYKHANA.COM/upload/1511583520-vada.png', 0, 0),
(1344, 9, 25, 'http://BOOKMYKHANA.COM/upload/1513586123-rasika.png', 0, 0),
(1345, 9, 25, 'http://BOOKMYKHANA.COM/upload/1513185352-WhatsApp-Image-2017-12-06-at-8.57.31-PM.jpeg', 0, 0),
(1346, 9, 25, 'http://BOOKMYKHANA.COM/upload/1511585807-vada.png', 0, 0),
(1347, 9, 25, 'http://BOOKMYKHANA.COM/assets/images/default-image-merchant.png', 0, 0),
(1348, 9, 25, 'http://BOOKMYKHANA.COM/upload/1513885784-sarovar.png', 0, 0),
(1349, 9, 25, 'http://BOOKMYKHANA.COM/upload/1512842573-Capture321.PNG', 0, 0),
(1350, 9, 25, 'http://BOOKMYKHANA.COM/upload/1513886173-gandharv.PNG', 0, 0),
(1351, 9, 25, 'http://BOOKMYKHANA.COM/upload/1513885925-ga.png', 0, 0),
(1352, 9, 25, 'http://BOOKMYKHANA.COM/assets/images/cuisine.png', 0, 0),
(1353, 9, 25, 'http://BOOKMYKHANA.COM/assets/images/getapp-2.jpg', 0, 0),
(1354, 9, 25, 'http://BOOKMYKHANA.COM/assets/images/get-google-play.png', 0, 0),
(1355, 9, 25, 'http://BOOKMYKHANA.COM/assets/images/divider.png', 0, 0),
(1356, 9, 25, 'http://BOOKMYKHANA.COM/home/assets/js/rc/spin.svg', 0, 0),
(1357, 9, 25, 'http://BOOKMYKHANA.COM/home/assets/js/rc/veg.png', 0, 0),
(1358, 9, 25, 'http://BOOKMYKHANA.COM/home/assets/js/rc/nonveg.png', 0, 0),
(1359, 9, 25, 'http://BOOKMYKHANA.COM/home/assets/js/rc/ccd.png', 0, 0),
(1360, 9, 25, 'http://BOOKMYKHANA.COM/home/assets/js/rc/bar.png', 0, 0),
(1361, 9, 25, 'http://BOOKMYKHANA.COM/home/assets/js/rc/ch.png', 0, 0),
(1362, 9, 25, 'http://BOOKMYKHANA.COM/home/assets/js/rc/fastfoos.png', 0, 0),
(1363, 9, 25, 'http://BOOKMYKHANA.COM/home/assets/js/rc/indian.png', 0, 0),
(1364, 9, 25, 'http://BOOKMYKHANA.COM/home/assets/js/rc/mango.png', 0, 0),
(1365, 9, 25, 'http://BOOKMYKHANA.COM/assets/images/banner-5-mobile.jpg', 0, 0),
(1366, 9, 25, 'http://BOOKMYKHANA.COM/browse/', 0, 0),
(1367, 9, 25, 'http://BOOKMYKHANA.COM/assets/images/b-2-mobile.jpg', 0, 0),
(1368, 9, 25, 'http://BOOKMYKHANA.COM/assets/images/404.png', 0, 0),
(1369, 9, 25, 'http://BOOKMYKHANA.COM/store/browse/', 0, 0),
(1370, 9, 25, 'http://BOOKMYKHANA.COM/store/google-login/https://ssl.gstatic.com/ui/v1/menu/checkmark.png', 0, 0),
(1371, 9, 25, 'http://BOOKMYKHANA.COM/store/google-login/https://ssl.gstatic.com/accounts/ui/logo_1x.png', 0, 0),
(1372, 9, 25, 'http://BOOKMYKHANA.COM/store/google-login/https://ssl.gstatic.com/images/branding/googlelogo/1x/googlelogo_color_112x36dp.png', 0, 0),
(1373, 9, 25, 'http://BOOKMYKHANA.COM/store/google-login/https://ssl.gstatic.com/accounts/ui/logo_2x.png', 0, 0),
(1374, 9, 25, 'http://BOOKMYKHANA.COM/store/google-login/https://ssl.gstatic.com/images/branding/googlelogo/2x/googlelogo_color_112x36dp.png', 0, 0),
(1375, 9, 25, 'http://BOOKMYKHANA.COM/store/google-login/https://ssl.gstatic.com/accounts/ui/wlogostrip_230x17_1x.png', 0, 0),
(1376, 9, 25, 'http://BOOKMYKHANA.COM/store/google-login/https://ssl.gstatic.com/accounts/ui/wlogostrip_230x17_2x.png', 0, 0),
(1377, 9, 25, 'http://BOOKMYKHANA.COM//ssl.gstatic.com/ui/v1/icons/common/x_8px.png', 0, 0),
(1378, 9, 25, 'http://BOOKMYKHANA.COM/store/assets/js/rc/spin.svg', 0, 0),
(1379, 9, 25, 'http://BOOKMYKHANA.COM/store/assets/js/rc/veg.png', 0, 0),
(1380, 9, 25, 'http://BOOKMYKHANA.COM/store/assets/js/rc/nonveg.png', 0, 0),
(1381, 9, 25, 'http://BOOKMYKHANA.COM/store/assets/js/rc/ccd.png', 0, 0),
(1382, 9, 25, 'http://BOOKMYKHANA.COM/store/assets/js/rc/bar.png', 0, 0),
(1383, 9, 25, 'http://BOOKMYKHANA.COM/store/assets/js/rc/ch.png', 0, 0),
(1384, 9, 25, 'http://BOOKMYKHANA.COM/store/assets/js/rc/fastfoos.png', 0, 0),
(1385, 9, 25, 'http://BOOKMYKHANA.COM/store/assets/js/rc/indian.png', 0, 0),
(1386, 9, 25, 'http://BOOKMYKHANA.COM/store/assets/js/rc/mango.png', 0, 0),
(1387, 19, 26, 'http://iitjeetestseries.com/assets/images/iit-jee-test-series.png', 1, 0),
(1388, 19, 26, 'http://iitjeetestseries.com/assets/images/icon/1.png', 1, 0),
(1389, 19, 26, 'http://iitjeetestseries.com/assets/images/icon/2.png', 1, 0),
(1390, 19, 26, 'http://iitjeetestseries.com/assets/images/icon/3.png', 1, 0),
(1391, 19, 26, 'http://iitjeetestseries.com/assets/images/icon/4.png', 1, 0),
(1392, 19, 26, 'http://iitjeetestseries.com/assets/images/icon/5.png', 1, 0),
(1393, 19, 26, 'http://iitjeetestseries.com/assets/images/icon/6.png', 1, 0),
(1394, 19, 26, 'http://iitjeetestseries.com/assets/images/icon/7.png', 1, 0),
(1395, 19, 26, 'http://iitjeetestseries.com/assets/images/icon/8.png', 1, 0),
(1396, 19, 26, 'http://iitjeetestseries.com/assets/images/icon/9.png', 1, 0),
(1397, 19, 26, 'http://iitjeetestseries.com/assets/images/design.png', 1, 0),
(1398, 19, 26, 'http://iitjeetestseries.com/assets/images/down_arrow.PNG', 1, 0),
(1399, 19, 26, 'http://iitjeetestseries.com/assets/images/icon/instruction.gif', 1, 0),
(1400, 19, 26, 'http://iitjeetestseries.com/assets/images/mail-icon.PNG', 1, 0),
(1401, 19, 26, 'http://iitjeetestseries.com/assets/images/facebook.PNG', 1, 0);
INSERT INTO `images` (`image_id`, `site_id`, `crawl_id`, `image_src`, `image_crawled`, `image_404`) VALUES
(1402, 19, 26, 'http://iitjeetestseries.com/assets/images/google+.PNG', 1, 0),
(1403, 20, 27, 'http://lms.iitjeetestseries.com/theme/image.php/_s/nlytntheme/core/1486028674/req', 1, 0),
(1404, 20, 27, 'http://lms.iitjeetestseries.com/theme/image.php/_s/nlytntheme/core/1486028674/help', 1, 0),
(1405, 20, 27, 'http://lms.iitjeetestseries.com/mod/wiki/pix/attachment.png', 1, 0);

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
-- Table structure for table `scripts`
--

CREATE TABLE `scripts` (
  `script_id` int(11) NOT NULL,
  `site_id` int(11) NOT NULL,
  `crawl_id` int(11) NOT NULL,
  `script_url` varchar(255) NOT NULL,
  `script_crawled` int(1) NOT NULL DEFAULT '0',
  `script_404` int(1) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `scripts`
--

INSERT INTO `scripts` (`script_id`, `site_id`, `crawl_id`, `script_url`, `script_crawled`, `script_404`) VALUES
(509, 13, 17, 'http://littlewe.in/wp-includes/js/jquery/jquery.js', 0, 0),
(510, 13, 17, 'http://littlewe.in/wp-includes/js/jquery/jquery-migrate.min.js', 0, 0),
(511, 13, 17, 'http://littlewe.in/wp-content/plugins/essential-grid/public/assets/js/lightbox.js', 0, 0),
(512, 13, 17, 'http://littlewe.in/wp-content/plugins/essential-grid/public/assets/js/jquery.themepunch.tools.min.js', 0, 0),
(513, 13, 17, 'http://littlewe.in/wp-content/plugins/essential-grid/public/assets/js/jquery.themepunch.essential.min.js', 0, 0),
(514, 13, 17, 'http://littlewe.in/wp-content/plugins/revslider/public/assets/js/jquery.themepunch.revolution.min.js', 0, 0),
(515, 13, 17, 'http://littlewe.in/wp-includes/js/jquery/ui/core.min.js', 0, 0),
(516, 13, 17, 'http://littlewe.in/wp-content/plugins/Ultimate_VC_Addons/assets/min-js/ultimate.min.js', 0, 0),
(517, 13, 17, 'http://littlewe.in/wp-content/plugins/contact-form-7/includes/js/jquery.form.min.js', 0, 0),
(518, 13, 17, 'http://littlewe.in/wp-content/plugins/contact-form-7/includes/js/scripts.js', 0, 0),
(519, 13, 17, 'http://littlewe.in/wp-content/themes/shopkeeper/js/jquery.touchSwipe.min.js', 0, 0),
(520, 13, 17, 'http://littlewe.in/wp-content/themes/shopkeeper/js/jquery.fitvids.js', 0, 0),
(521, 13, 17, 'http://littlewe.in/wp-content/themes/shopkeeper/js/idangerous.swiper-2.4.1.min.js', 0, 0),
(522, 13, 17, 'http://littlewe.in/wp-content/themes/shopkeeper/js/owl.carousel.min.js', 0, 0),
(523, 13, 17, 'http://littlewe.in/wp-content/themes/shopkeeper/js/fresco.js', 0, 0),
(524, 13, 17, 'http://littlewe.in/wp-content/themes/shopkeeper/js/select2.min.js', 0, 0),
(525, 13, 17, 'http://littlewe.in/wp-content/themes/shopkeeper/js/jquery.nanoscroller.min.js', 0, 0),
(526, 13, 17, 'http://littlewe.in/wp-content/themes/shopkeeper/js/jquery.stellar.min.js', 0, 0),
(527, 13, 17, 'http://littlewe.in/wp-content/themes/shopkeeper/js/isotope.pkgd.min.js', 0, 0),
(528, 13, 17, 'http://littlewe.in/wp-content/themes/shopkeeper/js/imagesloaded.js', 0, 0),
(529, 13, 17, 'http://littlewe.in/wp-content/themes/shopkeeper/js/easyzoom.js', 0, 0),
(530, 13, 17, 'http://littlewe.in/wp-content/themes/shopkeeper/js/scripts.js', 0, 0),
(531, 13, 17, 'http://littlewe.in/wp-includes/js/wp-embed.min.js', 0, 0),
(532, 13, 17, 'http://littlewe.in/wp-content/plugins/js_composer/assets/js/dist/js_composer_front.min.js', 0, 0),
(533, 13, 17, 'http://littlewe.in/wp-content/plugins/Ultimate_VC_Addons/modules/../assets/min-js/vhparallax.min.js', 0, 0),
(534, 12, 18, 'http://www.webrooinfotech.com/js/jquery-2.1.1.min.js', 1, 0),
(535, 12, 18, 'http://www.webrooinfotech.com/js/modernizr.js', 1, 0),
(536, 12, 18, 'http://www.webrooinfotech.com/js/bootstrap.min.js', 1, 0),
(537, 12, 18, 'http://www.webrooinfotech.com/js/jquery.nav.js', 1, 0),
(538, 12, 18, 'http://www.webrooinfotech.com/js/jquery.easing.min.js', 1, 0),
(539, 12, 18, 'http://www.webrooinfotech.com/owl-carousel/owl.carousel.min.js', 1, 0),
(540, 12, 18, 'http://www.webrooinfotech.com/js/jquery.parallax-1.1.3.js', 1, 0),
(541, 12, 18, 'http://www.webrooinfotech.com/js/jquery.appear.js', 1, 0),
(542, 12, 18, 'http://www.webrooinfotech.com/js/isotope.min.js', 1, 0),
(543, 12, 18, 'http://www.webrooinfotech.com/js/jquery.fancybox.pack.js', 1, 0),
(544, 12, 18, 'http://www.webrooinfotech.com/js/jquery.countTo.js', 1, 0),
(545, 12, 18, 'http://www.webrooinfotech.com/js/masonry.pkgd.min.js', 1, 0),
(546, 12, 18, 'http://www.webrooinfotech.com/js/main.js', 1, 0),
(548, 15, 19, 'http://www.rutgersprep.org/uploaded/themes/default_17/js/main.js', 0, 0),
(549, 16, 20, 'http://synergyindia360.com/files/theme/plugins.js', 1, 1),
(550, 16, 20, 'http://synergyindia360.com/files/theme/custom.js', 1, 1),
(551, 17, 21, 'http://guardianinternationalschool.com/wp-includes/js/jquery/jquery.js', 0, 0),
(552, 17, 21, 'http://guardianinternationalschool.com/wp-includes/js/jquery/jquery-migrate.min.js', 0, 0),
(553, 17, 21, 'http://guardianinternationalschool.com/wp-content/plugins/sliding-contact-form-by-formget/jscolor/jscolor.js', 0, 0),
(554, 17, 21, 'http://guardianinternationalschool.com/wp-content/plugins/sliding-contact-form-by-formget/js/fg_script.js', 0, 0),
(555, 17, 21, 'http://guardianinternationalschool.com/wp-content/plugins/sliding-contact-form-by-formget/js/toggle_script.js', 0, 0),
(556, 17, 21, 'http://guardianinternationalschool.com/wp-content/plugins/wp-live-chat-support/js/wplc_server.js', 0, 0),
(557, 17, 21, 'http://guardianinternationalschool.com/wp-content/plugins/wp-live-chat-support/js/wplc_u.js', 0, 0),
(558, 17, 21, 'http://guardianinternationalschool.com/wp-content/plugins/wp-live-chat-support/js/md5.js', 0, 0),
(559, 17, 21, 'http://guardianinternationalschool.com/wp-content/plugins/wp-live-chat-support/js/themes/modern.js', 0, 0),
(560, 17, 21, 'http://guardianinternationalschool.com/wp-content/plugins/wp-live-chat-support/js/jquery-cookie.js', 0, 0),
(561, 17, 21, 'http://guardianinternationalschool.com/wp-content/plugins/LayerSlider/static/js/greensock.js', 0, 0),
(562, 17, 21, 'http://guardianinternationalschool.com/wp-content/plugins/LayerSlider/static/js/layerslider.kreaturamedia.jquery.js', 0, 0),
(563, 17, 21, 'http://guardianinternationalschool.com/wp-content/plugins/LayerSlider/static/js/layerslider.transitions.js', 0, 0),
(564, 17, 21, 'http://guardianinternationalschool.com/wp-content/plugins/revslider/public/assets/js/jquery.themepunch.tools.min.js', 0, 0),
(565, 17, 21, 'http://guardianinternationalschool.com/wp-content/plugins/revslider/public/assets/js/jquery.themepunch.revolution.min.js', 0, 0),
(566, 17, 21, 'http://guardianinternationalschool.com/wp-content/themes/kidslife/framework/js/public/modernizr.min.js', 0, 0),
(567, 17, 21, 'http://guardianinternationalschool.com/wp-content/plugins/designthemes-core-features/shortcodes/js/inview.js', 0, 0),
(568, 17, 21, 'http://guardianinternationalschool.com/wp-content/plugins/designthemes-core-features/shortcodes/js/jquery.flexslider.js', 0, 0),
(569, 17, 21, 'http://guardianinternationalschool.com/wp-content/plugins/designthemes-core-features/shortcodes/js/jquery.tabs.min.js', 0, 0),
(570, 17, 21, 'http://guardianinternationalschool.com/wp-content/plugins/designthemes-core-features/shortcodes/js/jquery.viewport.js', 0, 0),
(571, 17, 21, 'http://guardianinternationalschool.com/wp-content/plugins/designthemes-core-features/shortcodes/js/jquery.carouFredSel-6.2.1-packed.js', 0, 0),
(572, 17, 21, 'http://guardianinternationalschool.com/wp-content/plugins/designthemes-core-features/shortcodes/js/jquery.tipTip.minified.js', 0, 0),
(573, 17, 21, 'http://guardianinternationalschool.com/wp-content/plugins/designthemes-core-features/shortcodes/js/jquery.donutchart.js', 0, 0),
(574, 17, 21, 'http://guardianinternationalschool.com/wp-content/plugins/designthemes-core-features/shortcodes/js/jquery.scrollto.js', 0, 0),
(575, 17, 21, 'http://guardianinternationalschool.com/wp-content/plugins/designthemes-core-features/shortcodes/js/jquery.nav.js', 0, 0),
(576, 17, 21, 'http://guardianinternationalschool.com/wp-content/plugins/designthemes-core-features/shortcodes/js/jquery.parallax-1.1.3.js', 0, 0),
(577, 17, 21, 'http://guardianinternationalschool.com/wp-content/plugins/designthemes-core-features/shortcodes/js/shortcodes.js', 0, 0),
(578, 17, 21, 'http://guardianinternationalschool.com/wp-content/plugins/designthemes-core-features/page-builder/js/jquery.inview.js', 0, 0),
(579, 17, 21, 'http://guardianinternationalschool.com/wp-content/plugins/designthemes-core-features/page-builder/js/custom-public.js', 0, 0),
(580, 17, 21, 'http://guardianinternationalschool.com/wp-includes/js/jquery/ui/core.min.js', 0, 0),
(581, 17, 21, 'http://guardianinternationalschool.com/wp-includes/js/jquery/ui/widget.min.js', 0, 0),
(582, 17, 21, 'http://guardianinternationalschool.com/wp-includes/js/jquery/ui/mouse.min.js', 0, 0),
(583, 17, 21, 'http://guardianinternationalschool.com/wp-includes/js/jquery/ui/draggable.min.js', 0, 0),
(584, 17, 21, 'http://guardianinternationalschool.com/wp-content/plugins/contact-form-7/includes/js/jquery.form.min.js', 0, 0),
(585, 17, 21, 'http://guardianinternationalschool.com/wp-content/plugins/contact-form-7/includes/js/scripts.js', 0, 0),
(586, 17, 21, 'http://guardianinternationalschool.com/wp-content/themes/kidslife/framework/js/public/easing.js', 0, 0),
(587, 17, 21, 'http://guardianinternationalschool.com/wp-content/themes/kidslife/framework/js/public/jquery.smartresize.js', 0, 0),
(588, 17, 21, 'http://guardianinternationalschool.com/wp-content/themes/kidslife/framework/js/public/jquery.prettyPhoto.js', 0, 0),
(589, 17, 21, 'http://guardianinternationalschool.com/wp-content/themes/kidslife/framework/js/public/jquery.nicescroll.min.js', 0, 0),
(590, 17, 21, 'http://guardianinternationalschool.com/wp-content/themes/kidslife/framework/js/public/jquery.isotope.min.js', 0, 0),
(591, 17, 21, 'http://guardianinternationalschool.com/wp-content/themes/kidslife/framework/js/public/jquery.sticky.js', 0, 0),
(592, 17, 21, 'http://guardianinternationalschool.com/wp-content/themes/kidslife/framework/js/public/jquery.fitvids.js', 0, 0),
(593, 17, 21, 'http://guardianinternationalschool.com/wp-content/themes/kidslife/framework/js/public/jquery.bxslider.js', 0, 0),
(594, 17, 21, 'http://guardianinternationalschool.com/wp-content/themes/kidslife/framework/js/public/toucheffects.js', 0, 0),
(595, 17, 21, 'http://guardianinternationalschool.com/wp-content/themes/kidslife/framework/js/public/custom.js', 0, 0),
(596, 17, 21, 'http://guardianinternationalschool.com/wp-includes/js/wp-embed.min.js', 0, 0),
(597, 17, 21, 'http://guardianinternationalschool.com/wp-includes/js/comment-reply.min.js', 0, 0),
(598, 17, 21, 'http://guardianinternationalschool.com/wp-content/plugins/responsive-maps-plugin/includes/js/jquery.gmap.min.js', 0, 0),
(599, 17, 21, 'http://guardianinternationalschool.com/wp-content/plugins/responsive-maps-plugin/includes/js/rsmaps.js', 0, 0),
(616, 18, 24, 'http://www.pickmycart.com/vendor/jquery/jquery.min.js', 1, 0),
(617, 18, 24, 'http://www.pickmycart.com/vendor/bootstrap/js/bootstrap.min.js', 1, 0),
(618, 18, 24, 'http://www.pickmycart.com/js/new-age.min.js', 1, 0),
(619, 9, 25, 'http://BOOKMYKHANA.COM/assets/js/jssor.slider-26.5.2.min.js', 0, 0),
(620, 9, 25, 'http://BOOKMYKHANA.COM/assets/vendor/compress/combine-vendor.js', 0, 0),
(621, 9, 25, 'http://BOOKMYKHANA.COM/assets/vendor/markercluster.js', 0, 0),
(622, 9, 25, 'http://BOOKMYKHANA.COM/assets/vendor/timepicker.co/jquery.timepicker.js', 0, 0),
(623, 9, 25, 'http://BOOKMYKHANA.COM/assets/js/store.js', 0, 0),
(624, 9, 25, 'http://BOOKMYKHANA.COM/assets/js/store-v3.js', 0, 0),
(625, 9, 25, 'http://BOOKMYKHANA.COM/home/assets/js/jssor.slider-26.5.2.min.js', 0, 0),
(626, 9, 25, 'http://BOOKMYKHANA.COM/assets/js/fblogin.js', 0, 0),
(627, 9, 25, 'http://BOOKMYKHANA.COM/store/assets/js/jssor.slider-26.5.2.min.js', 0, 0),
(628, 19, 26, 'http://iitjeetestseries.com/captcha.js', 1, 0),
(629, 19, 26, 'http://iitjeetestseries.com/assets/js/headroom.min.js', 1, 0),
(630, 19, 26, 'http://iitjeetestseries.com/assets/js/jQuery.headroom.min.js', 1, 0),
(631, 19, 26, 'http://iitjeetestseries.com/assets/js/template.js', 1, 0),
(632, 20, 27, 'http://lms.iitjeetestseries.com/theme/jquery.php/core/jquery-1.11.0.js', 1, 0),
(633, 20, 27, 'http://lms.iitjeetestseries.com/lib/javascript.php/1486028674/lib/javascript-static.js', 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `sites`
--

CREATE TABLE `sites` (
  `site_id` int(11) NOT NULL,
  `site_url` text NOT NULL,
  `site_domain` varchar(255) NOT NULL,
  `sites_created` int(11) NOT NULL,
  `sites_lastcrawl` int(11) NOT NULL,
  `sites_excludekeywords` text NOT NULL,
  `sites_timeout` int(11) NOT NULL DEFAULT '1800'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sites`
--

INSERT INTO `sites` (`site_id`, `site_url`, `site_domain`, `sites_created`, `sites_lastcrawl`, `sites_excludekeywords`, `sites_timeout`) VALUES
(9, 'BOOKMYKHANA.COM', 'BOOKMYKHANA.COM', 1516272733, 1516939094, '', 1800),
(10, 'inclojure.org/', 'inclojure.org', 1516544657, 1516606088, '', 1800),
(11, 'www.webrooinfotech.com', 'www.webrooinfotech.com', 1516591801, 0, '', 1800),
(12, 'www.webrooinfotech.com', 'www.webrooinfotech.com', 1516591804, 1516774545, '', 1800),
(13, 'littlewe.in/', 'littlewe.in', 1516606045, 1516761472, '', 1800),
(14, 'nestoria.co.uk', 'nestoria.co.uk', 1516761375, 0, '', 1800),
(15, 'www.rutgersprep.org', 'www.rutgersprep.org', 1516817076, 1516817242, '', 1800),
(16, 'synergyindia360.com', 'synergyindia360.com', 1516817308, 1516817346, '', 1800),
(17, 'guardianinternationalschool.com', 'guardianinternationalschool.com', 1516817398, 1516817786, '', 1800),
(18, 'www.pickmycart.com', 'www.pickmycart.com', 1516939185, 1516939326, '', 1800),
(19, 'iitjeetestseries.com', 'iitjeetestseries.com', 1517227466, 1517227568, '', 1800),
(20, 'lms.iitjeetestseries.com', 'lms.iitjeetestseries.com', 1517227678, 1517228316, '', 1800);

-- --------------------------------------------------------

--
-- Table structure for table `stylesheets`
--

CREATE TABLE `stylesheets` (
  `stylesheet_id` int(11) NOT NULL,
  `site_id` int(11) NOT NULL,
  `crawl_id` int(11) NOT NULL,
  `stylesheet_url` varchar(255) NOT NULL,
  `stylesheet_crawled` int(1) NOT NULL DEFAULT '0',
  `stylesheet_404` int(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `stylesheets`
--

INSERT INTO `stylesheets` (`stylesheet_id`, `site_id`, `crawl_id`, `stylesheet_url`, `stylesheet_crawled`, `stylesheet_404`) VALUES
(295, 10, 14, 'http://inclojure.org/static/css/style.css', 1, 0),
(379, 13, 17, 'http://littlewe.in/wp-content/plugins/contact-form-7/includes/css/styles.css', 0, 0),
(380, 13, 17, 'http://littlewe.in/wp-content/plugins/essential-grid/public/assets/css/settings.css', 0, 0),
(381, 13, 17, 'http://littlewe.in/wp-content/plugins/revslider/public/assets/css/settings.css', 0, 0),
(382, 13, 17, 'http://littlewe.in/wp-content/plugins/js_composer/assets/css/js_composer.min.css', 0, 0),
(383, 13, 17, 'http://littlewe.in/wp-content/uploads/smile_fonts/Defaults/Defaults.css', 0, 0),
(384, 13, 17, 'http://littlewe.in/wp-content/plugins/Ultimate_VC_Addons/assets/min-css/ultimate.min.css', 0, 0),
(385, 13, 17, 'http://littlewe.in/wp-content/themes/shopkeeper/css/app.css', 0, 0),
(386, 13, 17, 'http://littlewe.in/wp-content/themes/shopkeeper/css/animate.css', 0, 0),
(387, 13, 17, 'http://littlewe.in/wp-content/themes/shopkeeper/inc/fonts/font-awesome/css/font-awesome.min.css', 0, 0),
(388, 13, 17, 'http://littlewe.in/wp-content/themes/shopkeeper/inc/fonts/linea-fonts/arrows/styles.css', 0, 0),
(389, 13, 17, 'http://littlewe.in/wp-content/themes/shopkeeper/inc/fonts/linea-fonts/basic/styles.css', 0, 0),
(390, 13, 17, 'http://littlewe.in/wp-content/themes/shopkeeper/inc/fonts/linea-fonts/basic_elaboration/styles.css', 0, 0),
(391, 13, 17, 'http://littlewe.in/wp-content/themes/shopkeeper/inc/fonts/linea-fonts/ecommerce/styles.css', 0, 0),
(392, 13, 17, 'http://littlewe.in/wp-content/themes/shopkeeper/inc/fonts/linea-fonts/music/styles.css', 0, 0),
(393, 13, 17, 'http://littlewe.in/wp-content/themes/shopkeeper/inc/fonts/linea-fonts/software/styles.css', 0, 0),
(394, 13, 17, 'http://littlewe.in/wp-content/themes/shopkeeper/inc/fonts/linea-fonts/weather/styles.css', 0, 0),
(395, 13, 17, 'http://littlewe.in/wp-content/themes/shopkeeper/css/fresco/fresco.css', 0, 0),
(396, 13, 17, 'http://littlewe.in/wp-content/themes/shopkeeper/css/idangerous.swiper.css', 0, 0),
(397, 13, 17, 'http://littlewe.in/wp-content/themes/shopkeeper/css/owl.carousel.css', 0, 0),
(398, 13, 17, 'http://littlewe.in/wp-content/themes/shopkeeper/css/owl.theme.css', 0, 0),
(399, 13, 17, 'http://littlewe.in/wp-content/themes/shopkeeper/css/offcanvas.css', 0, 0),
(400, 13, 17, 'http://littlewe.in/wp-content/themes/shopkeeper/css/nanoscroller.css', 0, 0),
(401, 13, 17, 'http://littlewe.in/wp-content/themes/shopkeeper/css/select2.css', 0, 0),
(402, 13, 17, 'http://littlewe.in/wp-content/themes/shopkeeper/css/easyzoom.css', 0, 0),
(403, 13, 17, 'http://littlewe.in/wp-content/themes/shopkeeper/css/defaults.css', 0, 0),
(404, 13, 17, 'http://littlewe.in/wp-content/themes/shopkeeper/css/woocommerce-overwrite.css', 0, 0),
(405, 13, 17, 'http://littlewe.in/wp-content/themes/shopkeeper/css/header-topbar.css', 0, 0),
(406, 13, 17, 'http://littlewe.in/wp-content/themes/shopkeeper/css/headers.css', 0, 0),
(407, 13, 17, 'http://littlewe.in/wp-content/themes/shopkeeper/css/navigations.css', 0, 0),
(408, 13, 17, 'http://littlewe.in/wp-content/themes/shopkeeper/css/header-default.css', 0, 0),
(409, 13, 17, 'http://littlewe.in/wp-content/themes/shopkeeper/css/styles.css', 0, 0),
(410, 13, 17, 'http://littlewe.in/wp-content/themes/shopkeeper/css/responsive.css', 0, 0),
(411, 13, 17, 'http://littlewe.in/wp-content/themes/shopkeeper-child/style.css', 0, 0),
(412, 13, 17, 'http://littlewe.in/wp-content/plugins/revslider/public/assets/fonts/font-awesome/css/font-awesome.css', 0, 0),
(413, 12, 18, 'http://www.webrooinfotech.com/css/bootstrap.min.css', 1, 0),
(414, 12, 18, 'http://www.webrooinfotech.com/owl-carousel/owl.carousel.css', 1, 0),
(415, 12, 18, 'http://www.webrooinfotech.com/owl-carousel/owl.theme.css', 1, 0),
(416, 12, 18, 'http://www.webrooinfotech.com/css/jquery.fancybox.css', 1, 0),
(417, 12, 18, 'http://www.webrooinfotech.com/css/ionicons.min.css', 1, 0),
(418, 12, 18, 'http://www.webrooinfotech.com/css/style.css', 1, 0),
(419, 12, 18, 'http://www.webrooinfotech.com/css/color.css', 1, 0),
(420, 12, 18, 'http://www.webrooinfotech.com/css/normalize.css', 1, 1),
(421, 12, 18, 'http://www.webrooinfotech.com/css/github.com/necolas/normalize.css', 1, 1),
(422, 12, 18, 'http://www.webrooinfotech.com/css/https://github.com/h5bp/html5-boilerplate/blob/master/src/css/main.css', 1, 1),
(425, 15, 19, 'http://www.rutgersprep.org/styles.cfm', 0, 0),
(426, 15, 19, 'http://www.rutgersprep.org/uploaded/themes/default_17/css/main.css', 0, 0),
(427, 16, 20, 'http://synergyindia360.com/files/main_style.css', 1, 1),
(428, 17, 21, 'http://guardianinternationalschool.com/wp-content/plugins/designthemes-core-features/shortcodes/css/animations.css', 0, 0),
(429, 17, 21, 'http://guardianinternationalschool.com/wp-content/plugins/designthemes-core-features/shortcodes/css/flexslider.css', 0, 0),
(430, 17, 21, 'http://guardianinternationalschool.com/wp-content/plugins/designthemes-core-features/shortcodes/css/shortcodes.css', 0, 0),
(431, 17, 21, 'http://guardianinternationalschool.com/wp-content/plugins/designthemes-core-features/page-builder/css/animations.css', 0, 0),
(432, 17, 21, 'http://guardianinternationalschool.com/wp-content/plugins/sliding-contact-form-by-formget/css/formstyle.css', 0, 0),
(433, 17, 21, 'http://guardianinternationalschool.com/wp-content/plugins/LayerSlider/static/css/layerslider.css', 0, 0),
(434, 17, 21, 'http://guardianinternationalschool.com/wp-content/plugins/contact-form-7/includes/css/styles.css', 0, 0),
(435, 17, 21, 'http://guardianinternationalschool.com/wp-content/plugins/responsive-maps-plugin/includes/css/rsmaps.css', 0, 0),
(436, 17, 21, 'http://guardianinternationalschool.com/wp-content/plugins/revslider/public/assets/css/settings.css', 0, 0),
(437, 17, 21, 'http://guardianinternationalschool.com/wp-content/plugins/wp-live-chat-support/css/font-awesome.min.css', 0, 0),
(438, 17, 21, 'http://guardianinternationalschool.com/wp-content/plugins/wp-live-chat-support/css/wplcstyle.css', 0, 0),
(439, 17, 21, 'http://guardianinternationalschool.com/wp-content/plugins/wp-live-chat-support/css/themes/theme-default.css', 0, 0),
(440, 17, 21, 'http://guardianinternationalschool.com/wp-content/plugins/wp-live-chat-support/css/themes/modern.css', 0, 0),
(441, 17, 21, 'http://guardianinternationalschool.com/wp-content/plugins/wp-live-chat-support/css/themes/position-left.css', 0, 0),
(442, 17, 21, 'http://guardianinternationalschool.com/wp-content/themes/kidslife/css/prettyPhoto.css', 0, 0),
(443, 17, 21, 'http://guardianinternationalschool.com/wp-content/themes/kidslife/style.css', 0, 0),
(444, 17, 21, 'http://guardianinternationalschool.com/wp-content/themes/kidslife/css/font-awesome.min.css', 0, 0),
(445, 17, 21, 'http://guardianinternationalschool.com/wp-content/themes/kidslife/responsive.css', 0, 0),
(446, 17, 21, 'http://guardianinternationalschool.com/wp-content/themes/kidslife/skins/ruby/style.css', 0, 0),
(449, 18, 24, 'http://www.pickmycart.com/vendor/bootstrap/css/bootstrap.min.css', 1, 0),
(450, 18, 24, 'http://www.pickmycart.com/vendor/font-awesome/css/font-awesome.min.css', 1, 0),
(451, 18, 24, 'http://www.pickmycart.com/vendor/simple-line-icons/css/simple-line-icons.css', 1, 0),
(452, 18, 24, 'http://www.pickmycart.com/vendor/device-mockups/device-mockups.min.css', 1, 0),
(453, 18, 24, 'http://www.pickmycart.com/css/new-age.min.css', 1, 0),
(454, 18, 24, 'http://www.pickmycart.com/vendor/bootstrap/css/normalize.css', 1, 1),
(455, 18, 24, 'http://www.pickmycart.com/vendor/bootstrap/css/github.com/necolas/normalize.css', 1, 1),
(456, 18, 24, 'http://www.pickmycart.com/vendor/bootstrap/css/https://github.com/h5bp/html5-boilerplate/blob/master/src/css/main.css', 1, 1),
(457, 9, 25, 'http://BOOKMYKHANA.COM/assets/vendor/timepicker.co/jquery.timepicker.min.css', 0, 0),
(458, 20, 27, 'http://lms.iitjeetestseries.com/theme/yui_combo.php', 1, 1),
(459, 20, 27, 'http://lms.iitjeetestseries.com/theme/styles.php/_s/nlytntheme/1486028674/all', 1, 0);

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
  `activation_code` varchar(40) DEFAULT NULL,
  `forgotten_password_code` varchar(40) DEFAULT NULL,
  `forgotten_password_time` int(11) UNSIGNED DEFAULT NULL,
  `remember_code` varchar(40) DEFAULT NULL,
  `created_on` int(11) UNSIGNED NOT NULL,
  `last_login` int(11) UNSIGNED DEFAULT NULL,
  `active` tinyint(1) UNSIGNED DEFAULT NULL,
  `first_name` varchar(50) DEFAULT NULL,
  `last_name` varchar(50) DEFAULT NULL,
  `company` varchar(100) DEFAULT NULL,
  `phone` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `ip_address`, `username`, `password`, `salt`, `email`, `activation_code`, `forgotten_password_code`, `forgotten_password_time`, `remember_code`, `created_on`, `last_login`, `active`, `first_name`, `last_name`, `company`, `phone`) VALUES
(1, '127.0.0.1', 'administrator', '$2y$08$StArf6qYEA7I2AjrAG7m8u7ud4o1Os4JieaYN.RI/fp/Ht/HHWOQa', '', 'admin@admin.com', '', NULL, NULL, 'nxensTTFaV4pJAdP2Hyblu', 1268889823, 1517233782, 1, 'Admin', 'istrator', 'ADMIN', '0');

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
(2, 1, 2);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `ancors`
--
ALTER TABLE `ancors`
  ADD PRIMARY KEY (`ancor_id`);

--
-- Indexes for table `ci_sessions`
--
ALTER TABLE `ci_sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `last_activity_idx` (`timestamp`);

--
-- Indexes for table `crawls`
--
ALTER TABLE `crawls`
  ADD PRIMARY KEY (`crawl_id`);

--
-- Indexes for table `files`
--
ALTER TABLE `files`
  ADD PRIMARY KEY (`file_id`);

--
-- Indexes for table `groups`
--
ALTER TABLE `groups`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `images`
--
ALTER TABLE `images`
  ADD PRIMARY KEY (`image_id`);

--
-- Indexes for table `login_attempts`
--
ALTER TABLE `login_attempts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `scripts`
--
ALTER TABLE `scripts`
  ADD PRIMARY KEY (`script_id`);

--
-- Indexes for table `sites`
--
ALTER TABLE `sites`
  ADD PRIMARY KEY (`site_id`);

--
-- Indexes for table `stylesheets`
--
ALTER TABLE `stylesheets`
  ADD PRIMARY KEY (`stylesheet_id`);

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
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `ancors`
--
ALTER TABLE `ancors`
  MODIFY `ancor_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1670;
--
-- AUTO_INCREMENT for table `crawls`
--
ALTER TABLE `crawls`
  MODIFY `crawl_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;
--
-- AUTO_INCREMENT for table `files`
--
ALTER TABLE `files`
  MODIFY `file_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=149;
--
-- AUTO_INCREMENT for table `groups`
--
ALTER TABLE `groups`
  MODIFY `id` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `images`
--
ALTER TABLE `images`
  MODIFY `image_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1406;
--
-- AUTO_INCREMENT for table `login_attempts`
--
ALTER TABLE `login_attempts`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `scripts`
--
ALTER TABLE `scripts`
  MODIFY `script_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=634;
--
-- AUTO_INCREMENT for table `sites`
--
ALTER TABLE `sites`
  MODIFY `site_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;
--
-- AUTO_INCREMENT for table `stylesheets`
--
ALTER TABLE `stylesheets`
  MODIFY `stylesheet_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=460;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `users_groups`
--
ALTER TABLE `users_groups`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
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
