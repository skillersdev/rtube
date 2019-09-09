-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: May 09, 2019 at 02:25 AM
-- Server version: 5.6.41-84.1-log
-- PHP Version: 7.2.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `roodadae_new`
--

-- --------------------------------------------------------

--
-- Table structure for table `affiliateuser`
--

CREATE TABLE `affiliateuser` (
  `Id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` text NOT NULL,
  `fname` text NOT NULL,
  `address` text NOT NULL,
  `email` text NOT NULL,
  `referedby` varchar(15) NOT NULL DEFAULT 'none',
  `mobile` bigint(10) NOT NULL,
  `image_url` varchar(155) DEFAULT NULL,
  `about_me` varchar(255) NOT NULL,
  `active` int(11) NOT NULL DEFAULT '0',
  `doj` date NOT NULL,
  `country` text NOT NULL,
  `tamount` double NOT NULL DEFAULT '0',
  `payment` varchar(10) NOT NULL,
  `signupcode` text NOT NULL,
  `level` int(1) NOT NULL DEFAULT '2',
  `pcktaken` int(10) NOT NULL DEFAULT '0',
  `website` varchar(255) NOT NULL,
  `launch` int(1) NOT NULL DEFAULT '0',
  `expiry` date NOT NULL DEFAULT '2199-12-31',
  `getpayment` int(11) NOT NULL DEFAULT '1',
  `renew` int(1) NOT NULL DEFAULT '0',
  `iba_status` int(11) NOT NULL DEFAULT '0',
  `user_type` int(15) NOT NULL DEFAULT '2' COMMENT '1=-admin;2=marketer',
  `is_deleted` int(15) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `affiliateuser`
--

INSERT INTO `affiliateuser` (`Id`, `username`, `password`, `fname`, `address`, `email`, `referedby`, `mobile`, `image_url`, `about_me`, `active`, `doj`, `country`, `tamount`, `payment`, `signupcode`, `level`, `pcktaken`, `website`, `launch`, `expiry`, `getpayment`, `renew`, `iba_status`, `user_type`, `is_deleted`) VALUES
(1, 'admin', '123456', 'admin', 'sdfsfsfsfs', 'sridhar.skillers@gmail.com', '', 9789176467, NULL, '', 0, '0000-00-00', 'India', 99999890, '', '', 1, 1, '', 0, '2199-12-31', 1, 0, 0, 1, 0),
(2, 'roodabatoz', '123456', 'roodabatoz omid', '', '', 'admin', 0, NULL, '', 0, '2019-04-27', '', 2, '', '', 1, 1, 'roodabatoz', 0, '2199-12-31', 1, 0, 0, 2, 0),
(3, 'sridhar', '123456', 'Sridhar', '', '', 'roodabatoz', 0, NULL, '', 0, '2019-04-27', '', 0, '', '', 2, 1, 'skillers', 0, '2199-12-31', 1, 0, 0, 2, 0),
(4, 'omidam', '123456', '????????', '??????', 'omidroodab2@gmail.com', 'admin', 0, NULL, '????? ????????? ????????? ????????? ?? ????? ???? ??', 0, '2019-04-27', '', 0, '', '', 2, 1, 'omid', 0, '2199-12-31', 1, 0, 0, 2, 0),
(5, 'arun', '123456', 'arun', '', '', 'roodabatoz', 0, NULL, '', 0, '2019-04-27', '', 0, '', '', 2, 1, 'lakshmiindustries', 0, '2199-12-31', 1, 0, 0, 2, 0);

-- --------------------------------------------------------

--
-- Table structure for table `affiliate_bonus_history`
--

CREATE TABLE `affiliate_bonus_history` (
  `bid` int(11) NOT NULL,
  `user_id` varchar(50) NOT NULL,
  `referedby` varchar(50) NOT NULL,
  `stage1_ref` varchar(30) DEFAULT NULL,
  `stage2_ref` varchar(30) DEFAULT NULL,
  `stage3_ref` varchar(30) DEFAULT NULL,
  `stage4_ref` varchar(30) DEFAULT NULL,
  `stage5_ref` varchar(30) DEFAULT NULL,
  `stage6_ref` varchar(225) DEFAULT NULL,
  `stage7_ref` varchar(40) DEFAULT NULL,
  `stage8_ref` varchar(40) DEFAULT NULL,
  `stage9_ref` varchar(40) DEFAULT NULL,
  `stage10_ref` varchar(40) DEFAULT NULL,
  `stage11_ref` varchar(40) DEFAULT NULL,
  `stage12_ref` varchar(40) DEFAULT NULL,
  `stage13_ref` varchar(40) DEFAULT NULL,
  `stage14_ref` varchar(40) DEFAULT NULL,
  `stage15_ref` varchar(40) DEFAULT NULL,
  `stage16_ref` varchar(40) DEFAULT NULL,
  `stage17_ref` varchar(40) DEFAULT NULL,
  `stage18_ref` varchar(40) DEFAULT NULL,
  `stage19_ref` varchar(40) DEFAULT NULL,
  `stage20_ref` varchar(40) DEFAULT NULL,
  `stage21_ref` varchar(40) DEFAULT NULL,
  `stage22_ref` varchar(40) DEFAULT NULL,
  `stage23_ref` varchar(40) DEFAULT NULL,
  `stage24_ref` varchar(40) DEFAULT NULL,
  `stage25_ref` varchar(40) DEFAULT NULL,
  `stage26_ref` varchar(40) DEFAULT NULL,
  `stage27_ref` varchar(40) DEFAULT NULL,
  `stage28_ref` varchar(40) DEFAULT NULL,
  `stage29_ref` varchar(40) DEFAULT NULL,
  `stage30_ref` varchar(40) DEFAULT NULL,
  `stage31_ref` varchar(40) DEFAULT NULL,
  `stage32_ref` varchar(40) DEFAULT NULL,
  `stage33_ref` varchar(40) DEFAULT NULL,
  `stage34_ref` varchar(40) DEFAULT NULL,
  `stage35_ref` varchar(40) DEFAULT NULL,
  `stage36_ref` varchar(40) DEFAULT NULL,
  `stage37_ref` varchar(40) DEFAULT NULL,
  `stage38_ref` varchar(40) DEFAULT NULL,
  `stage39_ref` varchar(40) DEFAULT NULL,
  `stage40_ref` varchar(40) DEFAULT NULL,
  `stage41_ref` varchar(40) DEFAULT NULL,
  `stage42_ref` varchar(40) DEFAULT NULL,
  `stage43_ref` varchar(40) DEFAULT NULL,
  `stage44_ref` varchar(40) DEFAULT NULL,
  `stage45_ref` varchar(40) DEFAULT NULL,
  `stage46_ref` varchar(40) DEFAULT NULL,
  `stage47_ref` varchar(40) DEFAULT NULL,
  `stage48_ref` varchar(40) DEFAULT NULL,
  `stage49_ref` varchar(40) DEFAULT NULL,
  `stage50_ref` varchar(40) DEFAULT NULL,
  `stage51_ref` varchar(40) DEFAULT NULL,
  `stage52_ref` varchar(40) DEFAULT NULL,
  `stage53_ref` varchar(40) DEFAULT NULL,
  `stage54_ref` varchar(40) DEFAULT NULL,
  `stage55_ref` varchar(40) DEFAULT NULL,
  `stage56_ref` varchar(40) DEFAULT NULL,
  `stage57_ref` varchar(40) DEFAULT NULL,
  `stage58_ref` varchar(40) DEFAULT NULL,
  `stage59_ref` varchar(40) DEFAULT NULL,
  `stage60_ref` varchar(40) DEFAULT NULL,
  `stage61_ref` varchar(40) DEFAULT NULL,
  `stage62_ref` varchar(40) DEFAULT NULL,
  `stage63_ref` varchar(40) DEFAULT NULL,
  `stage64_ref` varchar(40) DEFAULT NULL,
  `stage65_ref` varchar(40) DEFAULT NULL,
  `stage66_ref` varchar(40) DEFAULT NULL,
  `stage67_ref` varchar(40) DEFAULT NULL,
  `stage68_ref` varchar(40) DEFAULT NULL,
  `stage69_ref` varchar(40) DEFAULT NULL,
  `stage70_ref` varchar(40) DEFAULT NULL,
  `stage71_ref` varchar(40) DEFAULT NULL,
  `stage72_ref` varchar(40) DEFAULT NULL,
  `stage73_ref` varchar(40) DEFAULT NULL,
  `stage74_ref` varchar(40) DEFAULT NULL,
  `stage75_ref` varchar(40) DEFAULT NULL,
  `stage76_ref` varchar(40) DEFAULT NULL,
  `stage77_ref` varchar(40) DEFAULT NULL,
  `stage78_ref` varchar(40) DEFAULT NULL,
  `stage79_ref` varchar(40) DEFAULT NULL,
  `stage80_ref` varchar(40) DEFAULT NULL,
  `stage81_ref` varchar(40) DEFAULT NULL,
  `stage82_ref` varchar(40) DEFAULT NULL,
  `stage83_ref` varchar(40) DEFAULT NULL,
  `stage84_ref` varchar(40) DEFAULT NULL,
  `stage85_ref` varchar(40) DEFAULT NULL,
  `stage86_ref` varchar(40) DEFAULT NULL,
  `stage87_ref` varchar(40) DEFAULT NULL,
  `stage88_ref` varchar(40) DEFAULT NULL,
  `stage89_ref` varchar(40) DEFAULT NULL,
  `stage90_ref` varchar(40) DEFAULT NULL,
  `stage91_ref` varchar(40) DEFAULT NULL,
  `stage92_ref` varchar(40) DEFAULT NULL,
  `stage93_ref` varchar(40) DEFAULT NULL,
  `stage94_ref` varchar(40) DEFAULT NULL,
  `stage95_ref` varchar(40) DEFAULT NULL,
  `stage96_ref` varchar(40) DEFAULT NULL,
  `stage97_ref` varchar(40) DEFAULT NULL,
  `stage98_ref` varchar(40) DEFAULT NULL,
  `stage99_ref` varchar(40) DEFAULT NULL,
  `stage100_ref` varchar(40) DEFAULT NULL,
  `ref_stage` varchar(10) NOT NULL,
  `amt` varchar(10) NOT NULL,
  `created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `affiliate_bonus_history`
--

INSERT INTO `affiliate_bonus_history` (`bid`, `user_id`, `referedby`, `stage1_ref`, `stage2_ref`, `stage3_ref`, `stage4_ref`, `stage5_ref`, `stage6_ref`, `stage7_ref`, `stage8_ref`, `stage9_ref`, `stage10_ref`, `stage11_ref`, `stage12_ref`, `stage13_ref`, `stage14_ref`, `stage15_ref`, `stage16_ref`, `stage17_ref`, `stage18_ref`, `stage19_ref`, `stage20_ref`, `stage21_ref`, `stage22_ref`, `stage23_ref`, `stage24_ref`, `stage25_ref`, `stage26_ref`, `stage27_ref`, `stage28_ref`, `stage29_ref`, `stage30_ref`, `stage31_ref`, `stage32_ref`, `stage33_ref`, `stage34_ref`, `stage35_ref`, `stage36_ref`, `stage37_ref`, `stage38_ref`, `stage39_ref`, `stage40_ref`, `stage41_ref`, `stage42_ref`, `stage43_ref`, `stage44_ref`, `stage45_ref`, `stage46_ref`, `stage47_ref`, `stage48_ref`, `stage49_ref`, `stage50_ref`, `stage51_ref`, `stage52_ref`, `stage53_ref`, `stage54_ref`, `stage55_ref`, `stage56_ref`, `stage57_ref`, `stage58_ref`, `stage59_ref`, `stage60_ref`, `stage61_ref`, `stage62_ref`, `stage63_ref`, `stage64_ref`, `stage65_ref`, `stage66_ref`, `stage67_ref`, `stage68_ref`, `stage69_ref`, `stage70_ref`, `stage71_ref`, `stage72_ref`, `stage73_ref`, `stage74_ref`, `stage75_ref`, `stage76_ref`, `stage77_ref`, `stage78_ref`, `stage79_ref`, `stage80_ref`, `stage81_ref`, `stage82_ref`, `stage83_ref`, `stage84_ref`, `stage85_ref`, `stage86_ref`, `stage87_ref`, `stage88_ref`, `stage89_ref`, `stage90_ref`, `stage91_ref`, `stage92_ref`, `stage93_ref`, `stage94_ref`, `stage95_ref`, `stage96_ref`, `stage97_ref`, `stage98_ref`, `stage99_ref`, `stage100_ref`, `ref_stage`, `amt`, `created`) VALUES
(1, '2', 'admin', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', '1', '2019-04-27 00:00:00'),
(2, '4', 'admin', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', '1', '2019-04-27 00:00:00'),
(3, '5', 'roodabatoz', 'roodabatoz', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', '1', '2019-04-27 00:00:00'),
(4, '3', 'roodabatoz', 'roodabatoz', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', '1', '2019-05-09 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `affliate_stage_bonus`
--

CREATE TABLE `affliate_stage_bonus` (
  `bonus_id` int(11) NOT NULL,
  `user_id` varchar(200) NOT NULL,
  `ref_by` varchar(200) NOT NULL,
  `upgrade_stage` varchar(100) NOT NULL,
  `upgrade_cost` varchar(20) NOT NULL,
  `bonus_to` varchar(100) NOT NULL,
  `created_on` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `affliate_stage_bonus`
--

INSERT INTO `affliate_stage_bonus` (`bonus_id`, `user_id`, `ref_by`, `upgrade_stage`, `upgrade_cost`, `bonus_to`, `created_on`) VALUES
(1, 'admin', '', '1', '0', 'adminadmin', '2019-04-27 00:00:00'),
(2, 'roodabatoz', 'admin', '1', '0', 'adminadmin', '2019-04-27 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `banners`
--

CREATE TABLE `banners` (
  `bannerid` double NOT NULL,
  `bannerdesc` varchar(100) NOT NULL,
  `bannerhtml` text NOT NULL,
  `banneractive` int(1) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `category_master`
--

CREATE TABLE `category_master` (
  `id` int(15) NOT NULL,
  `category_name` varchar(155) NOT NULL,
  `url` varchar(155) NOT NULL,
  `created_by` int(15) NOT NULL,
  `created_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `is_deleted` int(15) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `category_master`
--

INSERT INTO `category_master` (`id`, `category_name`, `url`, `created_by`, `created_date`, `is_deleted`) VALUES
(1, 'Omidmall', 'omid', 4, '2019-04-27 09:26:11', 0),
(2, 'Technology', 'skillers', 3, '2019-05-09 02:05:45', 0);

-- --------------------------------------------------------

--
-- Table structure for table `contacts`
--

CREATE TABLE `contacts` (
  `id` int(11) NOT NULL,
  `user_id` varchar(255) NOT NULL,
  `number` varchar(15) NOT NULL,
  `type` smallint(1) NOT NULL,
  `created_at` datetime DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `contacts_master`
--

CREATE TABLE `contacts_master` (
  `id` int(15) NOT NULL,
  `website` varchar(155) NOT NULL,
  `contact` varchar(155) NOT NULL,
  `fb_link` varchar(155) NOT NULL,
  `linked_url` varchar(155) NOT NULL,
  `created_date` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `is_deleted` int(15) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `contacts_master`
--

INSERT INTO `contacts_master` (`id`, `website`, `contact`, `fb_link`, `linked_url`, `created_date`, `is_deleted`) VALUES
(1, 'omid', 'http://roodabatoz.com/newsite/addcontact', 'http://roodabatoz.com/newsite/addcontact', 'http://roodabatoz.com/newsite/addcontact', '2019-04-27 09:28:59', 0);

-- --------------------------------------------------------

--
-- Table structure for table `currency`
--

CREATE TABLE `currency` (
  `id` int(11) NOT NULL,
  `name` text NOT NULL,
  `code` text NOT NULL,
  `comment` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `earning_settings`
--

CREATE TABLE `earning_settings` (
  `id` int(11) NOT NULL,
  `package_id` int(11) NOT NULL,
  `downline_count` int(11) NOT NULL,
  `earning_amt` int(11) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `active` smallint(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `earning_settings`
--

INSERT INTO `earning_settings` (`id`, `package_id`, `downline_count`, `earning_amt`, `created_at`, `updated_at`, `active`) VALUES
(1, 1, 15, 123, '2019-03-11 00:00:00', '0000-00-00 00:00:00', 0);

-- --------------------------------------------------------

--
-- Table structure for table `emailtext`
--

CREATE TABLE `emailtext` (
  `id` int(6) NOT NULL,
  `code` varchar(50) NOT NULL,
  `etext` text NOT NULL,
  `emailactive` int(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `emailtext`
--

INSERT INTO `emailtext` (`id`, `code`, `etext`, `emailactive`) VALUES
(1, 'SIGNUP', 'This email is the confirmation for your order you have just signed up. Thank you for your interest. Our team welcomes you to our website. \n\nRegards\nTeam MLM Marketing', 1),
(2, 'FORGOTPASSWORD', 'Hi, \nYou have requested a password on our website and therefore we have sent the password on this email. If you haven\'t do it please ignore the email.\n\nRegards\nTeam MLM Marketing', 1),
(5, 'NEWMEMBER', 'You have got new order, bingo!', 1),
(6, 'NEWMEMBER', 'You have got new order, bingo!', 1),
(7, 'SIGNUP', 'This email is the confirmation for your order you have just signed up. Thank you for your interest. Our team welcomes you to our website. \n\nRegards\nTeam MLM Marketing', 1),
(8, 'NEWMEMBER', 'You have got new order, bingo!', 1),
(9, 'SIGNUP', 'This email is the confirmation for your order you have just signed up. Thank you for your interest. Our team welcomes you to our website. \n\nRegards\nTeam MLM Marketing', 1),
(10, 'NEWMEMBER', 'You have got new order, bingo!', 1),
(11, 'SIGNUP', 'This email is the confirmation for your order you have just signed up. Thank you for your interest. Our team welcomes you to our website. \n\nRegards\nTeam MLM Marketing', 1);

-- --------------------------------------------------------

--
-- Table structure for table `notifications`
--

CREATE TABLE `notifications` (
  `id` int(11) NOT NULL,
  `subject` text NOT NULL,
  `body` text NOT NULL,
  `posteddate` date NOT NULL,
  `valid` int(1) NOT NULL DEFAULT '1'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `notifications`
--

INSERT INTO `notifications` (`id`, `subject`, `body`, `posteddate`, `valid`) VALUES
(14, 'test notification ', 'Details of thesadasdas asdasnotificationsasdasd', '2016-09-04', 1);

-- --------------------------------------------------------

--
-- Table structure for table `packages`
--

CREATE TABLE `packages` (
  `id` int(11) NOT NULL,
  `name` text NOT NULL,
  `price` double NOT NULL DEFAULT '0',
  `currency` text NOT NULL,
  `details` text NOT NULL,
  `tax` double NOT NULL DEFAULT '0',
  `mpay` double NOT NULL DEFAULT '0',
  `sbonus` double DEFAULT '0',
  `minimum_voucher` double NOT NULL,
  `maximum_transfer` double NOT NULL,
  `maximum_register` double NOT NULL,
  `cdate` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `active` int(1) NOT NULL DEFAULT '1',
  `level1` double NOT NULL DEFAULT '0',
  `stage1_up` double NOT NULL DEFAULT '0',
  `level2` double NOT NULL DEFAULT '0',
  `stage2_up` double NOT NULL DEFAULT '0',
  `level3` double NOT NULL DEFAULT '0',
  `stage3_up` double NOT NULL DEFAULT '0',
  `level4` double NOT NULL DEFAULT '0',
  `stage4_up` double NOT NULL DEFAULT '0',
  `level5` double NOT NULL DEFAULT '0',
  `stage5_up` double NOT NULL DEFAULT '0',
  `level6` double NOT NULL DEFAULT '0',
  `level7` double NOT NULL DEFAULT '0',
  `level8` double NOT NULL DEFAULT '0',
  `level9` double NOT NULL DEFAULT '0',
  `level10` double NOT NULL DEFAULT '0',
  `level11` double NOT NULL DEFAULT '0',
  `level12` double NOT NULL DEFAULT '0',
  `level13` double NOT NULL DEFAULT '0',
  `level14` double NOT NULL DEFAULT '0',
  `level15` double NOT NULL DEFAULT '0',
  `level16` double NOT NULL DEFAULT '0',
  `level17` double NOT NULL DEFAULT '0',
  `level18` double NOT NULL DEFAULT '0',
  `level19` double NOT NULL DEFAULT '0',
  `level20` double NOT NULL DEFAULT '0',
  `level21` double NOT NULL DEFAULT '0',
  `level22` double NOT NULL DEFAULT '0',
  `level23` double NOT NULL DEFAULT '0',
  `level24` double NOT NULL DEFAULT '0',
  `level25` double NOT NULL DEFAULT '0',
  `level26` double NOT NULL DEFAULT '0',
  `level27` double NOT NULL DEFAULT '0',
  `level28` double NOT NULL DEFAULT '0',
  `level29` double NOT NULL DEFAULT '0',
  `level30` double NOT NULL DEFAULT '0',
  `stage6_up` double NOT NULL DEFAULT '0',
  `stage7_up` double NOT NULL DEFAULT '0',
  `stage8_up` double NOT NULL DEFAULT '0',
  `stage9_up` double NOT NULL DEFAULT '0',
  `stage10_up` double NOT NULL DEFAULT '0',
  `stage11_up` double NOT NULL DEFAULT '0',
  `stage12_up` double NOT NULL DEFAULT '0',
  `stage13_up` double NOT NULL DEFAULT '0',
  `stage14_up` double NOT NULL DEFAULT '0',
  `stage15_up` double NOT NULL DEFAULT '0',
  `stage16_up` double NOT NULL DEFAULT '0',
  `stage17_up` double NOT NULL DEFAULT '0',
  `stage18_up` double NOT NULL DEFAULT '0',
  `stage19_up` double NOT NULL DEFAULT '0',
  `stage20_up` double NOT NULL DEFAULT '0',
  `stage21_up` double NOT NULL DEFAULT '0',
  `stage22_up` double NOT NULL DEFAULT '0',
  `stage23_up` double NOT NULL DEFAULT '0',
  `stage24_up` double NOT NULL DEFAULT '0',
  `stage25_up` double NOT NULL DEFAULT '0',
  `stage26_up` double NOT NULL DEFAULT '0',
  `stage27_up` double NOT NULL DEFAULT '0',
  `stage28_up` double NOT NULL DEFAULT '0',
  `stage29_up` double NOT NULL DEFAULT '0',
  `stage30_up` double NOT NULL DEFAULT '0',
  `gateway` int(1) NOT NULL DEFAULT '3',
  `validity` int(5) NOT NULL DEFAULT '0',
  `indirect_ref_amt` double NOT NULL DEFAULT '0',
  `is_deleted` int(15) NOT NULL DEFAULT '0',
  `pay_via_voucher` int(11) DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `packages`
--

INSERT INTO `packages` (`id`, `name`, `price`, `currency`, `details`, `tax`, `mpay`, `sbonus`, `minimum_voucher`, `maximum_transfer`, `maximum_register`, `cdate`, `active`, `level1`, `stage1_up`, `level2`, `stage2_up`, `level3`, `stage3_up`, `level4`, `stage4_up`, `level5`, `stage5_up`, `level6`, `level7`, `level8`, `level9`, `level10`, `level11`, `level12`, `level13`, `level14`, `level15`, `level16`, `level17`, `level18`, `level19`, `level20`, `level21`, `level22`, `level23`, `level24`, `level25`, `level26`, `level27`, `level28`, `level29`, `level30`, `stage6_up`, `stage7_up`, `stage8_up`, `stage9_up`, `stage10_up`, `stage11_up`, `stage12_up`, `stage13_up`, `stage14_up`, `stage15_up`, `stage16_up`, `stage17_up`, `stage18_up`, `stage19_up`, `stage20_up`, `stage21_up`, `stage22_up`, `stage23_up`, `stage24_up`, `stage25_up`, `stage26_up`, `stage27_up`, `stage28_up`, `stage29_up`, `stage30_up`, `gateway`, `validity`, `indirect_ref_amt`, `is_deleted`, `pay_via_voucher`) VALUES
(1, 'Website', 3, 'USD', 'Website ', 0, 1000000, 1, 1, 300000, 100000, '2017-02-02 00:00:00', 1, 1, 0, 1, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 93, 0, 0, 3);

-- --------------------------------------------------------

--
-- Table structure for table `package_info`
--

CREATE TABLE `package_info` (
  `id` int(11) NOT NULL,
  `package_name` varchar(155) NOT NULL,
  `package_price` double NOT NULL,
  `currency` varchar(155) NOT NULL,
  `pay_via_voucher` int(11) NOT NULL,
  `sign_up_bonus` double NOT NULL,
  `maximum_transfer` double NOT NULL,
  `package_details` varchar(155) NOT NULL,
  `package_tax` double NOT NULL,
  `indirect_ref_amount` double NOT NULL,
  `payout_for_user` double NOT NULL,
  `minimum_voucher` mediumtext NOT NULL,
  `maximum_generated_voucher` double NOT NULL,
  `stage_bonus_amount` longtext NOT NULL,
  `stage_upgradation_amount` longtext NOT NULL,
  `created_date` date NOT NULL,
  `is_deleted` int(15) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `package_info`
--

INSERT INTO `package_info` (`id`, `package_name`, `package_price`, `currency`, `pay_via_voucher`, `sign_up_bonus`, `maximum_transfer`, `package_details`, `package_tax`, `indirect_ref_amount`, `payout_for_user`, `minimum_voucher`, `maximum_generated_voucher`, `stage_bonus_amount`, `stage_upgradation_amount`, `created_date`, `is_deleted`) VALUES
(1, 'test', 3424, 'Australian Dollar', 2321, 23, 171, 'fsfsfsdfsfs', 24, 234, 2323, '4442', 2222, '', '', '0000-00-00', 0),
(2, 'maonthly packahe', 500, 'Australian Dollar', 78, 5, 80, 'renewall from monthly', 14, 50, 35, '47', 60, '[{\"id\":0,\"stage_bonus_amount \":100},{\"id\":1,\"stage_bonus_amount \":200},{\"id\":2,\"stage_bonus_amount \":300}]', '[{\"id\":0,\"stage_bonus_amount \":1000},{\"id\":1,\"stage_bonus_amount \":2000},{\"id\":2,\"stage_bonus_amount \":3000}]', '0000-00-00', 0),
(3, 'sdf', 23, 'Australian Dollar', 3, 3, 23, 'sdf', 23, 0, 2, '3', 0, '[{\"id\":0,\"stage_bonus_amount\":0},{\"id\":1,\"stage_bonus_amount\":0},{\"id\":2,\"stage_bonus_amount\":0},{\"id\":3,\"stage_bonus_amount\":0},{\"id\":4,\"stage_bonus_amount\":0},{\"id\":5,\"stage_bonus_amount\":0},{\"id\":6,\"stage_bonus_amount\":0},{\"id\":7,\"stage_bonus_amount\":0},{\"id\":8,\"stage_bonus_amount\":0},{\"id\":9,\"stage_bonus_amount\":0},{\"id\":10,\"stage_bonus_amount\":0},{\"id\":11,\"stage_bonus_amount\":0},{\"id\":12,\"stage_bonus_amount\":0},{\"id\":13,\"stage_bonus_amount\":0},{\"id\":14,\"stage_bonus_amount\":0},{\"id\":15,\"stage_bonus_amount\":0},{\"id\":16,\"stage_bonus_amount\":0},{\"id\":17,\"stage_bonus_amount\":0},{\"id\":18,\"stage_bonus_amount\":0},{\"id\":19,\"stage_bonus_amount\":0},{\"id\":20,\"stage_bonus_amount\":0},{\"id\":21,\"stage_bonus_amount\":0},{\"id\":22,\"stage_bonus_amount\":0},{\"id\":23,\"stage_bonus_amount\":0},{\"id\":24,\"stage_bonus_amount\":0},{\"id\":25,\"stage_bonus_amount\":0},{\"id\":26,\"stage_bonus_amount\":0},{\"id\":27,\"stage_bonus_amount\":0},{\"id\":28,\"stage_bonus_amount\":0},{\"id\":29,\"stage_bonus_amount\":0},{\"id\":30,\"stage_bonus_amount\":0},{\"id\":31,\"stage_bonus_amount\":0},{\"id\":32,\"stage_bonus_amount\":0},{\"id\":33,\"stage_bonus_amount\":0},{\"id\":34,\"stage_bonus_amount\":0},{\"id\":35,\"stage_bonus_amount\":0},{\"id\":36,\"stage_bonus_amount\":0},{\"id\":37,\"stage_bonus_amount\":0},{\"id\":38,\"stage_bonus_amount\":0},{\"id\":39,\"stage_bonus_amount\":0},{\"id\":40,\"stage_bonus_amount\":0},{\"id\":41,\"stage_bonus_amount\":0},{\"id\":42,\"stage_bonus_amount\":0},{\"id\":43,\"stage_bonus_amount\":0},{\"id\":44,\"stage_bonus_amount\":0},{\"id\":45,\"stage_bonus_amount\":0},{\"id\":46,\"stage_bonus_amount\":0},{\"id\":47,\"stage_bonus_amount\":0},{\"id\":48,\"stage_bonus_amount\":0},{\"id\":49,\"stage_bonus_amount\":0},{\"id\":50,\"stage_bonus_amount\":0},{\"id\":51,\"stage_bonus_amount\":0},{\"id\":52,\"stage_bonus_amount\":0},{\"id\":53,\"stage_bonus_amount\":0},{\"id\":54,\"stage_bonus_amount\":0},{\"id\":55,\"stage_bonus_amount\":0},{\"id\":56,\"stage_bonus_amount\":0},{\"id\":57,\"stage_bonus_amount\":0},{\"id\":58,\"stage_bonus_amount\":0},{\"id\":59,\"stage_bonus_amount\":0},{\"id\":60,\"stage_bonus_amount\":0},{\"id\":61,\"stage_bonus_amount\":0},{\"id\":62,\"stage_bonus_amount\":0},{\"id\":63,\"stage_bonus_amount\":0},{\"id\":64,\"stage_bonus_amount\":0},{\"id\":65,\"stage_bonus_amount\":0},{\"id\":66,\"stage_bonus_amount\":0},{\"id\":67,\"stage_bonus_amount\":0},{\"id\":68,\"stage_bonus_amount\":0},{\"id\":69,\"stage_bonus_amount\":0},{\"id\":70,\"stage_bonus_amount\":0},{\"id\":71,\"stage_bonus_amount\":0},{\"id\":72,\"stage_bonus_amount\":0},{\"id\":73,\"stage_bonus_amount\":0},{\"id\":74,\"stage_bonus_amount\":0},{\"id\":75,\"stage_bonus_amount\":0},{\"id\":76,\"stage_bonus_amount\":0},{\"id\":77,\"stage_bonus_amount\":0},{\"id\":78,\"stage_bonus_amount\":0},{\"id\":79,\"stage_bonus_amount\":0},{\"id\":80,\"stage_bonus_amount\":0},{\"id\":81,\"stage_bonus_amount\":0},{\"id\":82,\"stage_bonus_amount\":0},{\"id\":83,\"stage_bonus_amount\":0},{\"id\":84,\"stage_bonus_amount\":0},{\"id\":85,\"stage_bonus_amount\":0},{\"id\":86,\"stage_bonus_amount\":0},{\"id\":87,\"stage_bonus_amount\":0},{\"id\":88,\"stage_bonus_amount\":0},{\"id\":89,\"stage_bonus_amount\":0},{\"id\":90,\"stage_bonus_amount\":0},{\"id\":91,\"stage_bonus_amount\":0},{\"id\":92,\"stage_bonus_amount\":0},{\"id\":93,\"stage_bonus_amount\":0},{\"id\":94,\"stage_bonus_amount\":0},{\"id\":95,\"stage_bonus_amount\":0},{\"id\":96,\"stage_bonus_amount\":0},{\"id\":97,\"stage_bonus_amount\":0},{\"id\":98,\"stage_bonus_amount\":0},{\"id\":99,\"stage_bonus_amount\":0}]', '[{\"id\":0,\"stage_upgradation_amount\":0},{\"id\":1,\"stage_upgradation_amount\":0},{\"id\":2,\"stage_upgradation_amount\":0},{\"id\":3,\"stage_upgradation_amount\":0},{\"id\":4,\"stage_upgradation_amount\":0},{\"id\":5,\"stage_upgradation_amount\":0},{\"id\":6,\"stage_upgradation_amount\":0},{\"id\":7,\"stage_upgradation_amount\":0},{\"id\":8,\"stage_upgradation_amount\":0},{\"id\":9,\"stage_upgradation_amount\":0},{\"id\":10,\"stage_upgradation_amount\":0},{\"id\":11,\"stage_upgradation_amount\":0},{\"id\":12,\"stage_upgradation_amount\":0},{\"id\":13,\"stage_upgradation_amount\":0},{\"id\":14,\"stage_upgradation_amount\":0},{\"id\":15,\"stage_upgradation_amount\":0},{\"id\":16,\"stage_upgradation_amount\":0},{\"id\":17,\"stage_upgradation_amount\":0},{\"id\":18,\"stage_upgradation_amount\":0},{\"id\":19,\"stage_upgradation_amount\":0},{\"id\":20,\"stage_upgradation_amount\":0},{\"id\":21,\"stage_upgradation_amount\":0},{\"id\":22,\"stage_upgradation_amount\":0},{\"id\":23,\"stage_upgradation_amount\":0},{\"id\":24,\"stage_upgradation_amount\":0},{\"id\":25,\"stage_upgradation_amount\":0},{\"id\":26,\"stage_upgradation_amount\":0},{\"id\":27,\"stage_upgradation_amount\":0},{\"id\":28,\"stage_upgradation_amount\":0},{\"id\":29,\"stage_upgradation_amount\":0},{\"id\":30,\"stage_upgradation_amount\":0},{\"id\":31,\"stage_upgradation_amount\":0},{\"id\":32,\"stage_upgradation_amount\":0},{\"id\":33,\"stage_upgradation_amount\":0},{\"id\":34,\"stage_upgradation_amount\":0},{\"id\":35,\"stage_upgradation_amount\":0},{\"id\":36,\"stage_upgradation_amount\":0},{\"id\":37,\"stage_upgradation_amount\":0},{\"id\":38,\"stage_upgradation_amount\":0},{\"id\":39,\"stage_upgradation_amount\":0},{\"id\":40,\"stage_upgradation_amount\":0},{\"id\":41,\"stage_upgradation_amount\":0},{\"id\":42,\"stage_upgradation_amount\":0},{\"id\":43,\"stage_upgradation_amount\":0},{\"id\":44,\"stage_upgradation_amount\":0},{\"id\":45,\"stage_upgradation_amount\":0},{\"id\":46,\"stage_upgradation_amount\":0},{\"id\":47,\"stage_upgradation_amount\":0},{\"id\":48,\"stage_upgradation_amount\":0},{\"id\":49,\"stage_upgradation_amount\":0},{\"id\":50,\"stage_upgradation_amount\":0},{\"id\":51,\"stage_upgradation_amount\":0},{\"id\":52,\"stage_upgradation_amount\":0},{\"id\":53,\"stage_upgradation_amount\":0},{\"id\":54,\"stage_upgradation_amount\":0},{\"id\":55,\"stage_upgradation_amount\":0},{\"id\":56,\"stage_upgradation_amount\":0},{\"id\":57,\"stage_upgradation_amount\":0},{\"id\":58,\"stage_upgradation_amount\":0},{\"id\":59,\"stage_upgradation_amount\":0},{\"id\":60,\"stage_upgradation_amount\":0},{\"id\":61,\"stage_upgradation_amount\":0},{\"id\":62,\"stage_upgradation_amount\":0},{\"id\":63,\"stage_upgradation_amount\":0},{\"id\":64,\"stage_upgradation_amount\":0},{\"id\":65,\"stage_upgradation_amount\":0},{\"id\":66,\"stage_upgradation_amount\":0},{\"id\":67,\"stage_upgradation_amount\":0},{\"id\":68,\"stage_upgradation_amount\":0},{\"id\":69,\"stage_upgradation_amount\":0},{\"id\":70,\"stage_upgradation_amount\":0},{\"id\":71,\"stage_upgradation_amount\":0},{\"id\":72,\"stage_upgradation_amount\":0},{\"id\":73,\"stage_upgradation_amount\":0},{\"id\":74,\"stage_upgradation_amount\":0},{\"id\":75,\"stage_upgradation_amount\":0},{\"id\":76,\"stage_upgradation_amount\":0},{\"id\":77,\"stage_upgradation_amount\":0},{\"id\":78,\"stage_upgradation_amount\":0},{\"id\":79,\"stage_upgradation_amount\":0},{\"id\":80,\"stage_upgradation_amount\":0},{\"id\":81,\"stage_upgradation_amount\":0},{\"id\":82,\"stage_upgradation_amount\":0},{\"id\":83,\"stage_upgradation_amount\":0},{\"id\":84,\"stage_upgradation_amount\":0},{\"id\":85,\"stage_upgradation_amount\":0},{\"id\":86,\"stage_upgradation_amount\":0},{\"id\":87,\"stage_upgradation_amount\":0},{\"id\":88,\"stage_upgradation_amount\":0},{\"id\":89,\"stage_upgradation_amount\":0},{\"id\":90,\"stage_upgradation_amount\":0},{\"id\":91,\"stage_upgradation_amount\":0},{\"id\":92,\"stage_upgradation_amount\":0},{\"id\":93,\"stage_upgradation_amount\":0},{\"id\":94,\"stage_upgradation_amount\":0},{\"id\":95,\"stage_upgradation_amount\":0},{\"id\":96,\"stage_upgradation_amount\":0},{\"id\":97,\"stage_upgradation_amount\":0},{\"id\":98,\"stage_upgradation_amount\":0},{\"id\":99,\"stage_upgradation_amount\":0}]', '0000-00-00', 1),
(4, 'sdf', 23, 'Australian Dollar', 3, 3, 23, 'sdf', 23, 0, 2, '3', 0, '[{\"id\":0,\"stage_bonus_amount\":0},{\"id\":1,\"stage_bonus_amount\":0},{\"id\":2,\"stage_bonus_amount\":0},{\"id\":3,\"stage_bonus_amount\":0},{\"id\":4,\"stage_bonus_amount\":0},{\"id\":5,\"stage_bonus_amount\":0},{\"id\":6,\"stage_bonus_amount\":0},{\"id\":7,\"stage_bonus_amount\":0},{\"id\":8,\"stage_bonus_amount\":0},{\"id\":9,\"stage_bonus_amount\":0},{\"id\":10,\"stage_bonus_amount\":0},{\"id\":11,\"stage_bonus_amount\":0},{\"id\":12,\"stage_bonus_amount\":0},{\"id\":13,\"stage_bonus_amount\":0},{\"id\":14,\"stage_bonus_amount\":0},{\"id\":15,\"stage_bonus_amount\":0},{\"id\":16,\"stage_bonus_amount\":0},{\"id\":17,\"stage_bonus_amount\":0},{\"id\":18,\"stage_bonus_amount\":0},{\"id\":19,\"stage_bonus_amount\":0},{\"id\":20,\"stage_bonus_amount\":0},{\"id\":21,\"stage_bonus_amount\":0},{\"id\":22,\"stage_bonus_amount\":0},{\"id\":23,\"stage_bonus_amount\":0},{\"id\":24,\"stage_bonus_amount\":0},{\"id\":25,\"stage_bonus_amount\":0},{\"id\":26,\"stage_bonus_amount\":0},{\"id\":27,\"stage_bonus_amount\":0},{\"id\":28,\"stage_bonus_amount\":0},{\"id\":29,\"stage_bonus_amount\":0},{\"id\":30,\"stage_bonus_amount\":0},{\"id\":31,\"stage_bonus_amount\":0},{\"id\":32,\"stage_bonus_amount\":0},{\"id\":33,\"stage_bonus_amount\":0},{\"id\":34,\"stage_bonus_amount\":0},{\"id\":35,\"stage_bonus_amount\":0},{\"id\":36,\"stage_bonus_amount\":0},{\"id\":37,\"stage_bonus_amount\":0},{\"id\":38,\"stage_bonus_amount\":0},{\"id\":39,\"stage_bonus_amount\":0},{\"id\":40,\"stage_bonus_amount\":0},{\"id\":41,\"stage_bonus_amount\":0},{\"id\":42,\"stage_bonus_amount\":0},{\"id\":43,\"stage_bonus_amount\":0},{\"id\":44,\"stage_bonus_amount\":0},{\"id\":45,\"stage_bonus_amount\":0},{\"id\":46,\"stage_bonus_amount\":0},{\"id\":47,\"stage_bonus_amount\":0},{\"id\":48,\"stage_bonus_amount\":0},{\"id\":49,\"stage_bonus_amount\":0},{\"id\":50,\"stage_bonus_amount\":0},{\"id\":51,\"stage_bonus_amount\":0},{\"id\":52,\"stage_bonus_amount\":0},{\"id\":53,\"stage_bonus_amount\":0},{\"id\":54,\"stage_bonus_amount\":0},{\"id\":55,\"stage_bonus_amount\":0},{\"id\":56,\"stage_bonus_amount\":0},{\"id\":57,\"stage_bonus_amount\":0},{\"id\":58,\"stage_bonus_amount\":0},{\"id\":59,\"stage_bonus_amount\":0},{\"id\":60,\"stage_bonus_amount\":0},{\"id\":61,\"stage_bonus_amount\":0},{\"id\":62,\"stage_bonus_amount\":0},{\"id\":63,\"stage_bonus_amount\":0},{\"id\":64,\"stage_bonus_amount\":0},{\"id\":65,\"stage_bonus_amount\":0},{\"id\":66,\"stage_bonus_amount\":0},{\"id\":67,\"stage_bonus_amount\":0},{\"id\":68,\"stage_bonus_amount\":0},{\"id\":69,\"stage_bonus_amount\":0},{\"id\":70,\"stage_bonus_amount\":0},{\"id\":71,\"stage_bonus_amount\":0},{\"id\":72,\"stage_bonus_amount\":0},{\"id\":73,\"stage_bonus_amount\":0},{\"id\":74,\"stage_bonus_amount\":0},{\"id\":75,\"stage_bonus_amount\":0},{\"id\":76,\"stage_bonus_amount\":0},{\"id\":77,\"stage_bonus_amount\":0},{\"id\":78,\"stage_bonus_amount\":0},{\"id\":79,\"stage_bonus_amount\":0},{\"id\":80,\"stage_bonus_amount\":0},{\"id\":81,\"stage_bonus_amount\":0},{\"id\":82,\"stage_bonus_amount\":0},{\"id\":83,\"stage_bonus_amount\":0},{\"id\":84,\"stage_bonus_amount\":0},{\"id\":85,\"stage_bonus_amount\":0},{\"id\":86,\"stage_bonus_amount\":0},{\"id\":87,\"stage_bonus_amount\":0},{\"id\":88,\"stage_bonus_amount\":0},{\"id\":89,\"stage_bonus_amount\":0},{\"id\":90,\"stage_bonus_amount\":0},{\"id\":91,\"stage_bonus_amount\":0},{\"id\":92,\"stage_bonus_amount\":0},{\"id\":93,\"stage_bonus_amount\":0},{\"id\":94,\"stage_bonus_amount\":0},{\"id\":95,\"stage_bonus_amount\":0},{\"id\":96,\"stage_bonus_amount\":0},{\"id\":97,\"stage_bonus_amount\":0},{\"id\":98,\"stage_bonus_amount\":0},{\"id\":99,\"stage_bonus_amount\":0},{\"id\":0,\"stage_bonus_amount\":0},{\"id\":1,\"stage_bonus_amount\":0},{\"id\":2,\"stage_bonus_amount\":0},{\"id\":3,\"stage_bonus_amount\":0},{\"id\":4,\"stage_bonus_amount\":0},{\"id\":5,\"stage_bonus_amount\":0},{\"id\":6,\"stage_bonus_amount\":0},{\"id\":7,\"stage_bonus_amount\":0},{\"id\":8,\"stage_bonus_amount\":0},{\"id\":9,\"stage_bonus_amount\":0},{\"id\":10,\"stage_bonus_amount\":0},{\"id\":11,\"stage_bonus_amount\":0},{\"id\":12,\"stage_bonus_amount\":0},{\"id\":13,\"stage_bonus_amount\":0},{\"id\":14,\"stage_bonus_amount\":0},{\"id\":15,\"stage_bonus_amount\":0},{\"id\":16,\"stage_bonus_amount\":0},{\"id\":17,\"stage_bonus_amount\":0},{\"id\":18,\"stage_bonus_amount\":0},{\"id\":19,\"stage_bonus_amount\":0},{\"id\":20,\"stage_bonus_amount\":0},{\"id\":21,\"stage_bonus_amount\":0},{\"id\":22,\"stage_bonus_amount\":0},{\"id\":23,\"stage_bonus_amount\":0},{\"id\":24,\"stage_bonus_amount\":0},{\"id\":25,\"stage_bonus_amount\":0},{\"id\":26,\"stage_bonus_amount\":0},{\"id\":27,\"stage_bonus_amount\":0},{\"id\":28,\"stage_bonus_amount\":0},{\"id\":29,\"stage_bonus_amount\":0},{\"id\":30,\"stage_bonus_amount\":0},{\"id\":31,\"stage_bonus_amount\":0},{\"id\":32,\"stage_bonus_amount\":0},{\"id\":33,\"stage_bonus_amount\":0},{\"id\":34,\"stage_bonus_amount\":0},{\"id\":35,\"stage_bonus_amount\":0},{\"id\":36,\"stage_bonus_amount\":0},{\"id\":37,\"stage_bonus_amount\":0},{\"id\":38,\"stage_bonus_amount\":0},{\"id\":39,\"stage_bonus_amount\":0},{\"id\":40,\"stage_bonus_amount\":0},{\"id\":41,\"stage_bonus_amount\":0},{\"id\":42,\"stage_bonus_amount\":0},{\"id\":43,\"stage_bonus_amount\":0},{\"id\":44,\"stage_bonus_amount\":0},{\"id\":45,\"stage_bonus_amount\":0},{\"id\":46,\"stage_bonus_amount\":0},{\"id\":47,\"stage_bonus_amount\":0},{\"id\":48,\"stage_bonus_amount\":0},{\"id\":49,\"stage_bonus_amount\":0},{\"id\":50,\"stage_bonus_amount\":0},{\"id\":51,\"stage_bonus_amount\":0},{\"id\":52,\"stage_bonus_amount\":0},{\"id\":53,\"stage_bonus_amount\":0},{\"id\":54,\"stage_bonus_amount\":0},{\"id\":55,\"stage_bonus_amount\":0},{\"id\":56,\"stage_bonus_amount\":0},{\"id\":57,\"stage_bonus_amount\":0},{\"id\":58,\"stage_bonus_amount\":0},{\"id\":59,\"stage_bonus_amount\":0},{\"id\":60,\"stage_bonus_amount\":0},{\"id\":61,\"stage_bonus_amount\":0},{\"id\":62,\"stage_bonus_amount\":0},{\"id\":63,\"stage_bonus_amount\":0},{\"id\":64,\"stage_bonus_amount\":0},{\"id\":65,\"stage_bonus_amount\":0},{\"id\":66,\"stage_bonus_amount\":0},{\"id\":67,\"stage_bonus_amount\":0},{\"id\":68,\"stage_bonus_amount\":0},{\"id\":69,\"stage_bonus_amount\":0},{\"id\":70,\"stage_bonus_amount\":0},{\"id\":71,\"stage_bonus_amount\":0},{\"id\":72,\"stage_bonus_amount\":0},{\"id\":73,\"stage_bonus_amount\":0},{\"id\":74,\"stage_bonus_amount\":0},{\"id\":75,\"stage_bonus_amount\":0},{\"id\":76,\"stage_bonus_amount\":0},{\"id\":77,\"stage_bonus_amount\":0},{\"id\":78,\"stage_bonus_amount\":0},{\"id\":79,\"stage_bonus_amount\":0},{\"id\":80,\"stage_bonus_amount\":0},{\"id\":81,\"stage_bonus_amount\":0},{\"id\":82,\"stage_bonus_amount\":0},{\"id\":83,\"stage_bonus_amount\":0},{\"id\":84,\"stage_bonus_amount\":0},{\"id\":85,\"stage_bonus_amount\":0},{\"id\":86,\"stage_bonus_amount\":0},{\"id\":87,\"stage_bonus_amount\":0},{\"id\":88,\"stage_bonus_amount\":0},{\"id\":89,\"stage_bonus_amount\":0},{\"id\":90,\"stage_bonus_amount\":0},{\"id\":91,\"stage_bonus_amount\":0},{\"id\":92,\"stage_bonus_amount\":0},{\"id\":93,\"stage_bonus_amount\":0},{\"id\":94,\"stage_bonus_amount\":0},{\"id\":95,\"stage_bonus_amount\":0},{\"id\":96,\"stage_bonus_amount\":0},{\"id\":97,\"stage_bonus_amount\":0},{\"id\":98,\"stage_bonus_amount\":0},{\"id\":99,\"stage_bonus_amount\":0}]', '[{\"id\":0,\"stage_upgradation_amount\":0},{\"id\":1,\"stage_upgradation_amount\":0},{\"id\":2,\"stage_upgradation_amount\":0},{\"id\":3,\"stage_upgradation_amount\":0},{\"id\":4,\"stage_upgradation_amount\":0},{\"id\":5,\"stage_upgradation_amount\":0},{\"id\":6,\"stage_upgradation_amount\":0},{\"id\":7,\"stage_upgradation_amount\":0},{\"id\":8,\"stage_upgradation_amount\":0},{\"id\":9,\"stage_upgradation_amount\":0},{\"id\":10,\"stage_upgradation_amount\":0},{\"id\":11,\"stage_upgradation_amount\":0},{\"id\":12,\"stage_upgradation_amount\":0},{\"id\":13,\"stage_upgradation_amount\":0},{\"id\":14,\"stage_upgradation_amount\":0},{\"id\":15,\"stage_upgradation_amount\":0},{\"id\":16,\"stage_upgradation_amount\":0},{\"id\":17,\"stage_upgradation_amount\":0},{\"id\":18,\"stage_upgradation_amount\":0},{\"id\":19,\"stage_upgradation_amount\":0},{\"id\":20,\"stage_upgradation_amount\":0},{\"id\":21,\"stage_upgradation_amount\":0},{\"id\":22,\"stage_upgradation_amount\":0},{\"id\":23,\"stage_upgradation_amount\":0},{\"id\":24,\"stage_upgradation_amount\":0},{\"id\":25,\"stage_upgradation_amount\":0},{\"id\":26,\"stage_upgradation_amount\":0},{\"id\":27,\"stage_upgradation_amount\":0},{\"id\":28,\"stage_upgradation_amount\":0},{\"id\":29,\"stage_upgradation_amount\":0},{\"id\":30,\"stage_upgradation_amount\":0},{\"id\":31,\"stage_upgradation_amount\":0},{\"id\":32,\"stage_upgradation_amount\":0},{\"id\":33,\"stage_upgradation_amount\":0},{\"id\":34,\"stage_upgradation_amount\":0},{\"id\":35,\"stage_upgradation_amount\":0},{\"id\":36,\"stage_upgradation_amount\":0},{\"id\":37,\"stage_upgradation_amount\":0},{\"id\":38,\"stage_upgradation_amount\":0},{\"id\":39,\"stage_upgradation_amount\":0},{\"id\":40,\"stage_upgradation_amount\":0},{\"id\":41,\"stage_upgradation_amount\":0},{\"id\":42,\"stage_upgradation_amount\":0},{\"id\":43,\"stage_upgradation_amount\":0},{\"id\":44,\"stage_upgradation_amount\":0},{\"id\":45,\"stage_upgradation_amount\":0},{\"id\":46,\"stage_upgradation_amount\":0},{\"id\":47,\"stage_upgradation_amount\":0},{\"id\":48,\"stage_upgradation_amount\":0},{\"id\":49,\"stage_upgradation_amount\":0},{\"id\":50,\"stage_upgradation_amount\":0},{\"id\":51,\"stage_upgradation_amount\":0},{\"id\":52,\"stage_upgradation_amount\":0},{\"id\":53,\"stage_upgradation_amount\":0},{\"id\":54,\"stage_upgradation_amount\":0},{\"id\":55,\"stage_upgradation_amount\":0},{\"id\":56,\"stage_upgradation_amount\":0},{\"id\":57,\"stage_upgradation_amount\":0},{\"id\":58,\"stage_upgradation_amount\":0},{\"id\":59,\"stage_upgradation_amount\":0},{\"id\":60,\"stage_upgradation_amount\":0},{\"id\":61,\"stage_upgradation_amount\":0},{\"id\":62,\"stage_upgradation_amount\":0},{\"id\":63,\"stage_upgradation_amount\":0},{\"id\":64,\"stage_upgradation_amount\":0},{\"id\":65,\"stage_upgradation_amount\":0},{\"id\":66,\"stage_upgradation_amount\":0},{\"id\":67,\"stage_upgradation_amount\":0},{\"id\":68,\"stage_upgradation_amount\":0},{\"id\":69,\"stage_upgradation_amount\":0},{\"id\":70,\"stage_upgradation_amount\":0},{\"id\":71,\"stage_upgradation_amount\":0},{\"id\":72,\"stage_upgradation_amount\":0},{\"id\":73,\"stage_upgradation_amount\":0},{\"id\":74,\"stage_upgradation_amount\":0},{\"id\":75,\"stage_upgradation_amount\":0},{\"id\":76,\"stage_upgradation_amount\":0},{\"id\":77,\"stage_upgradation_amount\":0},{\"id\":78,\"stage_upgradation_amount\":0},{\"id\":79,\"stage_upgradation_amount\":0},{\"id\":80,\"stage_upgradation_amount\":0},{\"id\":81,\"stage_upgradation_amount\":0},{\"id\":82,\"stage_upgradation_amount\":0},{\"id\":83,\"stage_upgradation_amount\":0},{\"id\":84,\"stage_upgradation_amount\":0},{\"id\":85,\"stage_upgradation_amount\":0},{\"id\":86,\"stage_upgradation_amount\":0},{\"id\":87,\"stage_upgradation_amount\":0},{\"id\":88,\"stage_upgradation_amount\":0},{\"id\":89,\"stage_upgradation_amount\":0},{\"id\":90,\"stage_upgradation_amount\":0},{\"id\":91,\"stage_upgradation_amount\":0},{\"id\":92,\"stage_upgradation_amount\":0},{\"id\":93,\"stage_upgradation_amount\":0},{\"id\":94,\"stage_upgradation_amount\":0},{\"id\":95,\"stage_upgradation_amount\":0},{\"id\":96,\"stage_upgradation_amount\":0},{\"id\":97,\"stage_upgradation_amount\":0},{\"id\":98,\"stage_upgradation_amount\":0},{\"id\":99,\"stage_upgradation_amount\":0},{\"id\":0,\"stage_upgradation_amount\":0},{\"id\":1,\"stage_upgradation_amount\":0},{\"id\":2,\"stage_upgradation_amount\":0},{\"id\":3,\"stage_upgradation_amount\":0},{\"id\":4,\"stage_upgradation_amount\":0},{\"id\":5,\"stage_upgradation_amount\":0},{\"id\":6,\"stage_upgradation_amount\":0},{\"id\":7,\"stage_upgradation_amount\":0},{\"id\":8,\"stage_upgradation_amount\":0},{\"id\":9,\"stage_upgradation_amount\":0},{\"id\":10,\"stage_upgradation_amount\":0},{\"id\":11,\"stage_upgradation_amount\":0},{\"id\":12,\"stage_upgradation_amount\":0},{\"id\":13,\"stage_upgradation_amount\":0},{\"id\":14,\"stage_upgradation_amount\":0},{\"id\":15,\"stage_upgradation_amount\":0},{\"id\":16,\"stage_upgradation_amount\":0},{\"id\":17,\"stage_upgradation_amount\":0},{\"id\":18,\"stage_upgradation_amount\":0},{\"id\":19,\"stage_upgradation_amount\":0},{\"id\":20,\"stage_upgradation_amount\":0},{\"id\":21,\"stage_upgradation_amount\":0},{\"id\":22,\"stage_upgradation_amount\":0},{\"id\":23,\"stage_upgradation_amount\":0},{\"id\":24,\"stage_upgradation_amount\":0},{\"id\":25,\"stage_upgradation_amount\":0},{\"id\":26,\"stage_upgradation_amount\":0},{\"id\":27,\"stage_upgradation_amount\":0},{\"id\":28,\"stage_upgradation_amount\":0},{\"id\":29,\"stage_upgradation_amount\":0},{\"id\":30,\"stage_upgradation_amount\":0},{\"id\":31,\"stage_upgradation_amount\":0},{\"id\":32,\"stage_upgradation_amount\":0},{\"id\":33,\"stage_upgradation_amount\":0},{\"id\":34,\"stage_upgradation_amount\":0},{\"id\":35,\"stage_upgradation_amount\":0},{\"id\":36,\"stage_upgradation_amount\":0},{\"id\":37,\"stage_upgradation_amount\":0},{\"id\":38,\"stage_upgradation_amount\":0},{\"id\":39,\"stage_upgradation_amount\":0},{\"id\":40,\"stage_upgradation_amount\":0},{\"id\":41,\"stage_upgradation_amount\":0},{\"id\":42,\"stage_upgradation_amount\":0},{\"id\":43,\"stage_upgradation_amount\":0},{\"id\":44,\"stage_upgradation_amount\":0},{\"id\":45,\"stage_upgradation_amount\":0},{\"id\":46,\"stage_upgradation_amount\":0},{\"id\":47,\"stage_upgradation_amount\":0},{\"id\":48,\"stage_upgradation_amount\":0},{\"id\":49,\"stage_upgradation_amount\":0},{\"id\":50,\"stage_upgradation_amount\":0},{\"id\":51,\"stage_upgradation_amount\":0},{\"id\":52,\"stage_upgradation_amount\":0},{\"id\":53,\"stage_upgradation_amount\":0},{\"id\":54,\"stage_upgradation_amount\":0},{\"id\":55,\"stage_upgradation_amount\":0},{\"id\":56,\"stage_upgradation_amount\":0},{\"id\":57,\"stage_upgradation_amount\":0},{\"id\":58,\"stage_upgradation_amount\":0},{\"id\":59,\"stage_upgradation_amount\":0},{\"id\":60,\"stage_upgradation_amount\":0},{\"id\":61,\"stage_upgradation_amount\":0},{\"id\":62,\"stage_upgradation_amount\":0},{\"id\":63,\"stage_upgradation_amount\":0},{\"id\":64,\"stage_upgradation_amount\":0},{\"id\":65,\"stage_upgradation_amount\":0},{\"id\":66,\"stage_upgradation_amount\":0},{\"id\":67,\"stage_upgradation_amount\":0},{\"id\":68,\"stage_upgradation_amount\":0},{\"id\":69,\"stage_upgradation_amount\":0},{\"id\":70,\"stage_upgradation_amount\":0},{\"id\":71,\"stage_upgradation_amount\":0},{\"id\":72,\"stage_upgradation_amount\":0},{\"id\":73,\"stage_upgradation_amount\":0},{\"id\":74,\"stage_upgradation_amount\":0},{\"id\":75,\"stage_upgradation_amount\":0},{\"id\":76,\"stage_upgradation_amount\":0},{\"id\":77,\"stage_upgradation_amount\":0},{\"id\":78,\"stage_upgradation_amount\":0},{\"id\":79,\"stage_upgradation_amount\":0},{\"id\":80,\"stage_upgradation_amount\":0},{\"id\":81,\"stage_upgradation_amount\":0},{\"id\":82,\"stage_upgradation_amount\":0},{\"id\":83,\"stage_upgradation_amount\":0},{\"id\":84,\"stage_upgradation_amount\":0},{\"id\":85,\"stage_upgradation_amount\":0},{\"id\":86,\"stage_upgradation_amount\":0},{\"id\":87,\"stage_upgradation_amount\":0},{\"id\":88,\"stage_upgradation_amount\":0},{\"id\":89,\"stage_upgradation_amount\":0},{\"id\":90,\"stage_upgradation_amount\":0},{\"id\":91,\"stage_upgradation_amount\":0},{\"id\":92,\"stage_upgradation_amount\":0},{\"id\":93,\"stage_upgradation_amount\":0},{\"id\":94,\"stage_upgradation_amount\":0},{\"id\":95,\"stage_upgradation_amount\":0},{\"id\":96,\"stage_upgradation_amount\":0},{\"id\":97,\"stage_upgradation_amount\":0},{\"id\":98,\"stage_upgradation_amount\":0},{\"id\":99,\"stage_upgradation_amount\":0}]', '0000-00-00', 1),
(5, 'sdf', 23, 'Australian Dollar', 3, 3, 23, 'sdf', 23, 0, 2, '3', 0, '[{\"id\":0,\"stage_bonus_amount\":0},{\"id\":1,\"stage_bonus_amount\":0},{\"id\":2,\"stage_bonus_amount\":0},{\"id\":3,\"stage_bonus_amount\":0},{\"id\":4,\"stage_bonus_amount\":0},{\"id\":5,\"stage_bonus_amount\":0},{\"id\":6,\"stage_bonus_amount\":0},{\"id\":7,\"stage_bonus_amount\":0},{\"id\":8,\"stage_bonus_amount\":0},{\"id\":9,\"stage_bonus_amount\":0},{\"id\":10,\"stage_bonus_amount\":0},{\"id\":11,\"stage_bonus_amount\":0},{\"id\":12,\"stage_bonus_amount\":0},{\"id\":13,\"stage_bonus_amount\":0},{\"id\":14,\"stage_bonus_amount\":0},{\"id\":15,\"stage_bonus_amount\":0},{\"id\":16,\"stage_bonus_amount\":0},{\"id\":17,\"stage_bonus_amount\":0},{\"id\":18,\"stage_bonus_amount\":0},{\"id\":19,\"stage_bonus_amount\":0},{\"id\":20,\"stage_bonus_amount\":0},{\"id\":21,\"stage_bonus_amount\":0},{\"id\":22,\"stage_bonus_amount\":0},{\"id\":23,\"stage_bonus_amount\":0},{\"id\":24,\"stage_bonus_amount\":0},{\"id\":25,\"stage_bonus_amount\":0},{\"id\":26,\"stage_bonus_amount\":0},{\"id\":27,\"stage_bonus_amount\":0},{\"id\":28,\"stage_bonus_amount\":0},{\"id\":29,\"stage_bonus_amount\":0},{\"id\":30,\"stage_bonus_amount\":0},{\"id\":31,\"stage_bonus_amount\":0},{\"id\":32,\"stage_bonus_amount\":0},{\"id\":33,\"stage_bonus_amount\":0},{\"id\":34,\"stage_bonus_amount\":0},{\"id\":35,\"stage_bonus_amount\":0},{\"id\":36,\"stage_bonus_amount\":0},{\"id\":37,\"stage_bonus_amount\":0},{\"id\":38,\"stage_bonus_amount\":0},{\"id\":39,\"stage_bonus_amount\":0},{\"id\":40,\"stage_bonus_amount\":0},{\"id\":41,\"stage_bonus_amount\":0},{\"id\":42,\"stage_bonus_amount\":0},{\"id\":43,\"stage_bonus_amount\":0},{\"id\":44,\"stage_bonus_amount\":0},{\"id\":45,\"stage_bonus_amount\":0},{\"id\":46,\"stage_bonus_amount\":0},{\"id\":47,\"stage_bonus_amount\":0},{\"id\":48,\"stage_bonus_amount\":0},{\"id\":49,\"stage_bonus_amount\":0},{\"id\":50,\"stage_bonus_amount\":0},{\"id\":51,\"stage_bonus_amount\":0},{\"id\":52,\"stage_bonus_amount\":0},{\"id\":53,\"stage_bonus_amount\":0},{\"id\":54,\"stage_bonus_amount\":0},{\"id\":55,\"stage_bonus_amount\":0},{\"id\":56,\"stage_bonus_amount\":0},{\"id\":57,\"stage_bonus_amount\":0},{\"id\":58,\"stage_bonus_amount\":0},{\"id\":59,\"stage_bonus_amount\":0},{\"id\":60,\"stage_bonus_amount\":0},{\"id\":61,\"stage_bonus_amount\":0},{\"id\":62,\"stage_bonus_amount\":0},{\"id\":63,\"stage_bonus_amount\":0},{\"id\":64,\"stage_bonus_amount\":0},{\"id\":65,\"stage_bonus_amount\":0},{\"id\":66,\"stage_bonus_amount\":0},{\"id\":67,\"stage_bonus_amount\":0},{\"id\":68,\"stage_bonus_amount\":0},{\"id\":69,\"stage_bonus_amount\":0},{\"id\":70,\"stage_bonus_amount\":0},{\"id\":71,\"stage_bonus_amount\":0},{\"id\":72,\"stage_bonus_amount\":0},{\"id\":73,\"stage_bonus_amount\":0},{\"id\":74,\"stage_bonus_amount\":0},{\"id\":75,\"stage_bonus_amount\":0},{\"id\":76,\"stage_bonus_amount\":0},{\"id\":77,\"stage_bonus_amount\":0},{\"id\":78,\"stage_bonus_amount\":0},{\"id\":79,\"stage_bonus_amount\":0},{\"id\":80,\"stage_bonus_amount\":0},{\"id\":81,\"stage_bonus_amount\":0},{\"id\":82,\"stage_bonus_amount\":0},{\"id\":83,\"stage_bonus_amount\":0},{\"id\":84,\"stage_bonus_amount\":0},{\"id\":85,\"stage_bonus_amount\":0},{\"id\":86,\"stage_bonus_amount\":0},{\"id\":87,\"stage_bonus_amount\":0},{\"id\":88,\"stage_bonus_amount\":0},{\"id\":89,\"stage_bonus_amount\":0},{\"id\":90,\"stage_bonus_amount\":0},{\"id\":91,\"stage_bonus_amount\":0},{\"id\":92,\"stage_bonus_amount\":0},{\"id\":93,\"stage_bonus_amount\":0},{\"id\":94,\"stage_bonus_amount\":0},{\"id\":95,\"stage_bonus_amount\":0},{\"id\":96,\"stage_bonus_amount\":0},{\"id\":97,\"stage_bonus_amount\":0},{\"id\":98,\"stage_bonus_amount\":0},{\"id\":99,\"stage_bonus_amount\":0},{\"id\":0,\"stage_bonus_amount\":0},{\"id\":1,\"stage_bonus_amount\":0},{\"id\":2,\"stage_bonus_amount\":0},{\"id\":3,\"stage_bonus_amount\":0},{\"id\":4,\"stage_bonus_amount\":0},{\"id\":5,\"stage_bonus_amount\":0},{\"id\":6,\"stage_bonus_amount\":0},{\"id\":7,\"stage_bonus_amount\":0},{\"id\":8,\"stage_bonus_amount\":0},{\"id\":9,\"stage_bonus_amount\":0},{\"id\":10,\"stage_bonus_amount\":0},{\"id\":11,\"stage_bonus_amount\":0},{\"id\":12,\"stage_bonus_amount\":0},{\"id\":13,\"stage_bonus_amount\":0},{\"id\":14,\"stage_bonus_amount\":0},{\"id\":15,\"stage_bonus_amount\":0},{\"id\":16,\"stage_bonus_amount\":0},{\"id\":17,\"stage_bonus_amount\":0},{\"id\":18,\"stage_bonus_amount\":0},{\"id\":19,\"stage_bonus_amount\":0},{\"id\":20,\"stage_bonus_amount\":0},{\"id\":21,\"stage_bonus_amount\":0},{\"id\":22,\"stage_bonus_amount\":0},{\"id\":23,\"stage_bonus_amount\":0},{\"id\":24,\"stage_bonus_amount\":0},{\"id\":25,\"stage_bonus_amount\":0},{\"id\":26,\"stage_bonus_amount\":0},{\"id\":27,\"stage_bonus_amount\":0},{\"id\":28,\"stage_bonus_amount\":0},{\"id\":29,\"stage_bonus_amount\":0},{\"id\":30,\"stage_bonus_amount\":0},{\"id\":31,\"stage_bonus_amount\":0},{\"id\":32,\"stage_bonus_amount\":0},{\"id\":33,\"stage_bonus_amount\":0},{\"id\":34,\"stage_bonus_amount\":0},{\"id\":35,\"stage_bonus_amount\":0},{\"id\":36,\"stage_bonus_amount\":0},{\"id\":37,\"stage_bonus_amount\":0},{\"id\":38,\"stage_bonus_amount\":0},{\"id\":39,\"stage_bonus_amount\":0},{\"id\":40,\"stage_bonus_amount\":0},{\"id\":41,\"stage_bonus_amount\":0},{\"id\":42,\"stage_bonus_amount\":0},{\"id\":43,\"stage_bonus_amount\":0},{\"id\":44,\"stage_bonus_amount\":0},{\"id\":45,\"stage_bonus_amount\":0},{\"id\":46,\"stage_bonus_amount\":0},{\"id\":47,\"stage_bonus_amount\":0},{\"id\":48,\"stage_bonus_amount\":0},{\"id\":49,\"stage_bonus_amount\":0},{\"id\":50,\"stage_bonus_amount\":0},{\"id\":51,\"stage_bonus_amount\":0},{\"id\":52,\"stage_bonus_amount\":0},{\"id\":53,\"stage_bonus_amount\":0},{\"id\":54,\"stage_bonus_amount\":0},{\"id\":55,\"stage_bonus_amount\":0},{\"id\":56,\"stage_bonus_amount\":0},{\"id\":57,\"stage_bonus_amount\":0},{\"id\":58,\"stage_bonus_amount\":0},{\"id\":59,\"stage_bonus_amount\":0},{\"id\":60,\"stage_bonus_amount\":0},{\"id\":61,\"stage_bonus_amount\":0},{\"id\":62,\"stage_bonus_amount\":0},{\"id\":63,\"stage_bonus_amount\":0},{\"id\":64,\"stage_bonus_amount\":0},{\"id\":65,\"stage_bonus_amount\":0},{\"id\":66,\"stage_bonus_amount\":0},{\"id\":67,\"stage_bonus_amount\":0},{\"id\":68,\"stage_bonus_amount\":0},{\"id\":69,\"stage_bonus_amount\":0},{\"id\":70,\"stage_bonus_amount\":0},{\"id\":71,\"stage_bonus_amount\":0},{\"id\":72,\"stage_bonus_amount\":0},{\"id\":73,\"stage_bonus_amount\":0},{\"id\":74,\"stage_bonus_amount\":0},{\"id\":75,\"stage_bonus_amount\":0},{\"id\":76,\"stage_bonus_amount\":0},{\"id\":77,\"stage_bonus_amount\":0},{\"id\":78,\"stage_bonus_amount\":0},{\"id\":79,\"stage_bonus_amount\":0},{\"id\":80,\"stage_bonus_amount\":0},{\"id\":81,\"stage_bonus_amount\":0},{\"id\":82,\"stage_bonus_amount\":0},{\"id\":83,\"stage_bonus_amount\":0},{\"id\":84,\"stage_bonus_amount\":0},{\"id\":85,\"stage_bonus_amount\":0},{\"id\":86,\"stage_bonus_amount\":0},{\"id\":87,\"stage_bonus_amount\":0},{\"id\":88,\"stage_bonus_amount\":0},{\"id\":89,\"stage_bonus_amount\":0},{\"id\":90,\"stage_bonus_amount\":0},{\"id\":91,\"stage_bonus_amount\":0},{\"id\":92,\"stage_bonus_amount\":0},{\"id\":93,\"stage_bonus_amount\":0},{\"id\":94,\"stage_bonus_amount\":0},{\"id\":95,\"stage_bonus_amount\":0},{\"id\":96,\"stage_bonus_amount\":0},{\"id\":97,\"stage_bonus_amount\":0},{\"id\":98,\"stage_bonus_amount\":0},{\"id\":99,\"stage_bonus_amount\":0},{\"id\":0,\"stage_bonus_amount\":0},{\"id\":1,\"stage_bonus_amount\":0},{\"id\":2,\"stage_bonus_amount\":0},{\"id\":3,\"stage_bonus_amount\":0},{\"id\":4,\"stage_bonus_amount\":0},{\"id\":5,\"stage_bonus_amount\":0},{\"id\":6,\"stage_bonus_amount\":0},{\"id\":7,\"stage_bonus_amount\":0},{\"id\":8,\"stage_bonus_amount\":0},{\"id\":9,\"stage_bonus_amount\":0},{\"id\":10,\"stage_bonus_amount\":0},{\"id\":11,\"stage_bonus_amount\":0},{\"id\":12,\"stage_bonus_amount\":0},{\"id\":13,\"stage_bonus_amount\":0},{\"id\":14,\"stage_bonus_amount\":0},{\"id\":15,\"stage_bonus_amount\":0},{\"id\":16,\"stage_bonus_amount\":0},{\"id\":17,\"stage_bonus_amount\":0},{\"id\":18,\"stage_bonus_amount\":0},{\"id\":19,\"stage_bonus_amount\":0},{\"id\":20,\"stage_bonus_amount\":0},{\"id\":21,\"stage_bonus_amount\":0},{\"id\":22,\"stage_bonus_amount\":0},{\"id\":23,\"stage_bonus_amount\":0},{\"id\":24,\"stage_bonus_amount\":0},{\"id\":25,\"stage_bonus_amount\":0},{\"id\":26,\"stage_bonus_amount\":0},{\"id\":27,\"stage_bonus_amount\":0},{\"id\":28,\"stage_bonus_amount\":0},{\"id\":29,\"stage_bonus_amount\":0},{\"id\":30,\"stage_bonus_amount\":0},{\"id\":31,\"stage_bonus_amount\":0},{\"id\":32,\"stage_bonus_amount\":0},{\"id\":33,\"stage_bonus_amount\":0},{\"id\":34,\"stage_bonus_amount\":0},{\"id\":35,\"stage_bonus_amount\":0},{\"id\":36,\"stage_bonus_amount\":0},{\"id\":37,\"stage_bonus_amount\":0},{\"id\":38,\"stage_bonus_amount\":0},{\"id\":39,\"stage_bonus_amount\":0},{\"id\":40,\"stage_bonus_amount\":0},{\"id\":41,\"stage_bonus_amount\":0},{\"id\":42,\"stage_bonus_amount\":0},{\"id\":43,\"stage_bonus_amount\":0},{\"id\":44,\"stage_bonus_amount\":0},{\"id\":45,\"stage_bonus_amount\":0},{\"id\":46,\"stage_bonus_amount\":0},{\"id\":47,\"stage_bonus_amount\":0},{\"id\":48,\"stage_bonus_amount\":0},{\"id\":49,\"stage_bonus_amount\":0},{\"id\":50,\"stage_bonus_amount\":0},{\"id\":51,\"stage_bonus_amount\":0},{\"id\":52,\"stage_bonus_amount\":0},{\"id\":53,\"stage_bonus_amount\":0},{\"id\":54,\"stage_bonus_amount\":0},{\"id\":55,\"stage_bonus_amount\":0},{\"id\":56,\"stage_bonus_amount\":0},{\"id\":57,\"stage_bonus_amount\":0},{\"id\":58,\"stage_bonus_amount\":0},{\"id\":59,\"stage_bonus_amount\":0},{\"id\":60,\"stage_bonus_amount\":0},{\"id\":61,\"stage_bonus_amount\":0},{\"id\":62,\"stage_bonus_amount\":0},{\"id\":63,\"stage_bonus_amount\":0},{\"id\":64,\"stage_bonus_amount\":0},{\"id\":65,\"stage_bonus_amount\":0},{\"id\":66,\"stage_bonus_amount\":0},{\"id\":67,\"stage_bonus_amount\":0},{\"id\":68,\"stage_bonus_amount\":0},{\"id\":69,\"stage_bonus_amount\":0},{\"id\":70,\"stage_bonus_amount\":0},{\"id\":71,\"stage_bonus_amount\":0},{\"id\":72,\"stage_bonus_amount\":0},{\"id\":73,\"stage_bonus_amount\":0},{\"id\":74,\"stage_bonus_amount\":0},{\"id\":75,\"stage_bonus_amount\":0},{\"id\":76,\"stage_bonus_amount\":0},{\"id\":77,\"stage_bonus_amount\":0},{\"id\":78,\"stage_bonus_amount\":0},{\"id\":79,\"stage_bonus_amount\":0},{\"id\":80,\"stage_bonus_amount\":0},{\"id\":81,\"stage_bonus_amount\":0},{\"id\":82,\"stage_bonus_amount\":0},{\"id\":83,\"stage_bonus_amount\":0},{\"id\":84,\"stage_bonus_amount\":0},{\"id\":85,\"stage_bonus_amount\":0},{\"id\":86,\"stage_bonus_amount\":0},{\"id\":87,\"stage_bonus_amount\":0},{\"id\":88,\"stage_bonus_amount\":0},{\"id\":89,\"stage_bonus_amount\":0},{\"id\":90,\"stage_bonus_amount\":0},{\"id\":91,\"stage_bonus_amount\":0},{\"id\":92,\"stage_bonus_amount\":0},{\"id\":93,\"stage_bonus_amount\":0},{\"id\":94,\"stage_bonus_amount\":0},{\"id\":95,\"stage_bonus_amount\":0},{\"id\":96,\"stage_bonus_amount\":0},{\"id\":97,\"stage_bonus_amount\":0},{\"id\":98,\"stage_bonus_amount\":0},{\"id\":99,\"stage_bonus_amount\":0}]', '[{\"id\":0,\"stage_upgradation_amount\":0},{\"id\":1,\"stage_upgradation_amount\":0},{\"id\":2,\"stage_upgradation_amount\":0},{\"id\":3,\"stage_upgradation_amount\":0},{\"id\":4,\"stage_upgradation_amount\":0},{\"id\":5,\"stage_upgradation_amount\":0},{\"id\":6,\"stage_upgradation_amount\":0},{\"id\":7,\"stage_upgradation_amount\":0},{\"id\":8,\"stage_upgradation_amount\":0},{\"id\":9,\"stage_upgradation_amount\":0},{\"id\":10,\"stage_upgradation_amount\":0},{\"id\":11,\"stage_upgradation_amount\":0},{\"id\":12,\"stage_upgradation_amount\":0},{\"id\":13,\"stage_upgradation_amount\":0},{\"id\":14,\"stage_upgradation_amount\":0},{\"id\":15,\"stage_upgradation_amount\":0},{\"id\":16,\"stage_upgradation_amount\":0},{\"id\":17,\"stage_upgradation_amount\":0},{\"id\":18,\"stage_upgradation_amount\":0},{\"id\":19,\"stage_upgradation_amount\":0},{\"id\":20,\"stage_upgradation_amount\":0},{\"id\":21,\"stage_upgradation_amount\":0},{\"id\":22,\"stage_upgradation_amount\":0},{\"id\":23,\"stage_upgradation_amount\":0},{\"id\":24,\"stage_upgradation_amount\":0},{\"id\":25,\"stage_upgradation_amount\":0},{\"id\":26,\"stage_upgradation_amount\":0},{\"id\":27,\"stage_upgradation_amount\":0},{\"id\":28,\"stage_upgradation_amount\":0},{\"id\":29,\"stage_upgradation_amount\":0},{\"id\":30,\"stage_upgradation_amount\":0},{\"id\":31,\"stage_upgradation_amount\":0},{\"id\":32,\"stage_upgradation_amount\":0},{\"id\":33,\"stage_upgradation_amount\":0},{\"id\":34,\"stage_upgradation_amount\":0},{\"id\":35,\"stage_upgradation_amount\":0},{\"id\":36,\"stage_upgradation_amount\":0},{\"id\":37,\"stage_upgradation_amount\":0},{\"id\":38,\"stage_upgradation_amount\":0},{\"id\":39,\"stage_upgradation_amount\":0},{\"id\":40,\"stage_upgradation_amount\":0},{\"id\":41,\"stage_upgradation_amount\":0},{\"id\":42,\"stage_upgradation_amount\":0},{\"id\":43,\"stage_upgradation_amount\":0},{\"id\":44,\"stage_upgradation_amount\":0},{\"id\":45,\"stage_upgradation_amount\":0},{\"id\":46,\"stage_upgradation_amount\":0},{\"id\":47,\"stage_upgradation_amount\":0},{\"id\":48,\"stage_upgradation_amount\":0},{\"id\":49,\"stage_upgradation_amount\":0},{\"id\":50,\"stage_upgradation_amount\":0},{\"id\":51,\"stage_upgradation_amount\":0},{\"id\":52,\"stage_upgradation_amount\":0},{\"id\":53,\"stage_upgradation_amount\":0},{\"id\":54,\"stage_upgradation_amount\":0},{\"id\":55,\"stage_upgradation_amount\":0},{\"id\":56,\"stage_upgradation_amount\":0},{\"id\":57,\"stage_upgradation_amount\":0},{\"id\":58,\"stage_upgradation_amount\":0},{\"id\":59,\"stage_upgradation_amount\":0},{\"id\":60,\"stage_upgradation_amount\":0},{\"id\":61,\"stage_upgradation_amount\":0},{\"id\":62,\"stage_upgradation_amount\":0},{\"id\":63,\"stage_upgradation_amount\":0},{\"id\":64,\"stage_upgradation_amount\":0},{\"id\":65,\"stage_upgradation_amount\":0},{\"id\":66,\"stage_upgradation_amount\":0},{\"id\":67,\"stage_upgradation_amount\":0},{\"id\":68,\"stage_upgradation_amount\":0},{\"id\":69,\"stage_upgradation_amount\":0},{\"id\":70,\"stage_upgradation_amount\":0},{\"id\":71,\"stage_upgradation_amount\":0},{\"id\":72,\"stage_upgradation_amount\":0},{\"id\":73,\"stage_upgradation_amount\":0},{\"id\":74,\"stage_upgradation_amount\":0},{\"id\":75,\"stage_upgradation_amount\":0},{\"id\":76,\"stage_upgradation_amount\":0},{\"id\":77,\"stage_upgradation_amount\":0},{\"id\":78,\"stage_upgradation_amount\":0},{\"id\":79,\"stage_upgradation_amount\":0},{\"id\":80,\"stage_upgradation_amount\":0},{\"id\":81,\"stage_upgradation_amount\":0},{\"id\":82,\"stage_upgradation_amount\":0},{\"id\":83,\"stage_upgradation_amount\":0},{\"id\":84,\"stage_upgradation_amount\":0},{\"id\":85,\"stage_upgradation_amount\":0},{\"id\":86,\"stage_upgradation_amount\":0},{\"id\":87,\"stage_upgradation_amount\":0},{\"id\":88,\"stage_upgradation_amount\":0},{\"id\":89,\"stage_upgradation_amount\":0},{\"id\":90,\"stage_upgradation_amount\":0},{\"id\":91,\"stage_upgradation_amount\":0},{\"id\":92,\"stage_upgradation_amount\":0},{\"id\":93,\"stage_upgradation_amount\":0},{\"id\":94,\"stage_upgradation_amount\":0},{\"id\":95,\"stage_upgradation_amount\":0},{\"id\":96,\"stage_upgradation_amount\":0},{\"id\":97,\"stage_upgradation_amount\":0},{\"id\":98,\"stage_upgradation_amount\":0},{\"id\":99,\"stage_upgradation_amount\":0},{\"id\":0,\"stage_upgradation_amount\":0},{\"id\":1,\"stage_upgradation_amount\":0},{\"id\":2,\"stage_upgradation_amount\":0},{\"id\":3,\"stage_upgradation_amount\":0},{\"id\":4,\"stage_upgradation_amount\":0},{\"id\":5,\"stage_upgradation_amount\":0},{\"id\":6,\"stage_upgradation_amount\":0},{\"id\":7,\"stage_upgradation_amount\":0},{\"id\":8,\"stage_upgradation_amount\":0},{\"id\":9,\"stage_upgradation_amount\":0},{\"id\":10,\"stage_upgradation_amount\":0},{\"id\":11,\"stage_upgradation_amount\":0},{\"id\":12,\"stage_upgradation_amount\":0},{\"id\":13,\"stage_upgradation_amount\":0},{\"id\":14,\"stage_upgradation_amount\":0},{\"id\":15,\"stage_upgradation_amount\":0},{\"id\":16,\"stage_upgradation_amount\":0},{\"id\":17,\"stage_upgradation_amount\":0},{\"id\":18,\"stage_upgradation_amount\":0},{\"id\":19,\"stage_upgradation_amount\":0},{\"id\":20,\"stage_upgradation_amount\":0},{\"id\":21,\"stage_upgradation_amount\":0},{\"id\":22,\"stage_upgradation_amount\":0},{\"id\":23,\"stage_upgradation_amount\":0},{\"id\":24,\"stage_upgradation_amount\":0},{\"id\":25,\"stage_upgradation_amount\":0},{\"id\":26,\"stage_upgradation_amount\":0},{\"id\":27,\"stage_upgradation_amount\":0},{\"id\":28,\"stage_upgradation_amount\":0},{\"id\":29,\"stage_upgradation_amount\":0},{\"id\":30,\"stage_upgradation_amount\":0},{\"id\":31,\"stage_upgradation_amount\":0},{\"id\":32,\"stage_upgradation_amount\":0},{\"id\":33,\"stage_upgradation_amount\":0},{\"id\":34,\"stage_upgradation_amount\":0},{\"id\":35,\"stage_upgradation_amount\":0},{\"id\":36,\"stage_upgradation_amount\":0},{\"id\":37,\"stage_upgradation_amount\":0},{\"id\":38,\"stage_upgradation_amount\":0},{\"id\":39,\"stage_upgradation_amount\":0},{\"id\":40,\"stage_upgradation_amount\":0},{\"id\":41,\"stage_upgradation_amount\":0},{\"id\":42,\"stage_upgradation_amount\":0},{\"id\":43,\"stage_upgradation_amount\":0},{\"id\":44,\"stage_upgradation_amount\":0},{\"id\":45,\"stage_upgradation_amount\":0},{\"id\":46,\"stage_upgradation_amount\":0},{\"id\":47,\"stage_upgradation_amount\":0},{\"id\":48,\"stage_upgradation_amount\":0},{\"id\":49,\"stage_upgradation_amount\":0},{\"id\":50,\"stage_upgradation_amount\":0},{\"id\":51,\"stage_upgradation_amount\":0},{\"id\":52,\"stage_upgradation_amount\":0},{\"id\":53,\"stage_upgradation_amount\":0},{\"id\":54,\"stage_upgradation_amount\":0},{\"id\":55,\"stage_upgradation_amount\":0},{\"id\":56,\"stage_upgradation_amount\":0},{\"id\":57,\"stage_upgradation_amount\":0},{\"id\":58,\"stage_upgradation_amount\":0},{\"id\":59,\"stage_upgradation_amount\":0},{\"id\":60,\"stage_upgradation_amount\":0},{\"id\":61,\"stage_upgradation_amount\":0},{\"id\":62,\"stage_upgradation_amount\":0},{\"id\":63,\"stage_upgradation_amount\":0},{\"id\":64,\"stage_upgradation_amount\":0},{\"id\":65,\"stage_upgradation_amount\":0},{\"id\":66,\"stage_upgradation_amount\":0},{\"id\":67,\"stage_upgradation_amount\":0},{\"id\":68,\"stage_upgradation_amount\":0},{\"id\":69,\"stage_upgradation_amount\":0},{\"id\":70,\"stage_upgradation_amount\":0},{\"id\":71,\"stage_upgradation_amount\":0},{\"id\":72,\"stage_upgradation_amount\":0},{\"id\":73,\"stage_upgradation_amount\":0},{\"id\":74,\"stage_upgradation_amount\":0},{\"id\":75,\"stage_upgradation_amount\":0},{\"id\":76,\"stage_upgradation_amount\":0},{\"id\":77,\"stage_upgradation_amount\":0},{\"id\":78,\"stage_upgradation_amount\":0},{\"id\":79,\"stage_upgradation_amount\":0},{\"id\":80,\"stage_upgradation_amount\":0},{\"id\":81,\"stage_upgradation_amount\":0},{\"id\":82,\"stage_upgradation_amount\":0},{\"id\":83,\"stage_upgradation_amount\":0},{\"id\":84,\"stage_upgradation_amount\":0},{\"id\":85,\"stage_upgradation_amount\":0},{\"id\":86,\"stage_upgradation_amount\":0},{\"id\":87,\"stage_upgradation_amount\":0},{\"id\":88,\"stage_upgradation_amount\":0},{\"id\":89,\"stage_upgradation_amount\":0},{\"id\":90,\"stage_upgradation_amount\":0},{\"id\":91,\"stage_upgradation_amount\":0},{\"id\":92,\"stage_upgradation_amount\":0},{\"id\":93,\"stage_upgradation_amount\":0},{\"id\":94,\"stage_upgradation_amount\":0},{\"id\":95,\"stage_upgradation_amount\":0},{\"id\":96,\"stage_upgradation_amount\":0},{\"id\":97,\"stage_upgradation_amount\":0},{\"id\":98,\"stage_upgradation_amount\":0},{\"id\":99,\"stage_upgradation_amount\":0},{\"id\":0,\"stage_upgradation_amount\":0},{\"id\":1,\"stage_upgradation_amount\":0},{\"id\":2,\"stage_upgradation_amount\":0},{\"id\":3,\"stage_upgradation_amount\":0},{\"id\":4,\"stage_upgradation_amount\":0},{\"id\":5,\"stage_upgradation_amount\":0},{\"id\":6,\"stage_upgradation_amount\":0},{\"id\":7,\"stage_upgradation_amount\":0},{\"id\":8,\"stage_upgradation_amount\":0},{\"id\":9,\"stage_upgradation_amount\":0},{\"id\":10,\"stage_upgradation_amount\":0},{\"id\":11,\"stage_upgradation_amount\":0},{\"id\":12,\"stage_upgradation_amount\":0},{\"id\":13,\"stage_upgradation_amount\":0},{\"id\":14,\"stage_upgradation_amount\":0},{\"id\":15,\"stage_upgradation_amount\":0},{\"id\":16,\"stage_upgradation_amount\":0},{\"id\":17,\"stage_upgradation_amount\":0},{\"id\":18,\"stage_upgradation_amount\":0},{\"id\":19,\"stage_upgradation_amount\":0},{\"id\":20,\"stage_upgradation_amount\":0},{\"id\":21,\"stage_upgradation_amount\":0},{\"id\":22,\"stage_upgradation_amount\":0},{\"id\":23,\"stage_upgradation_amount\":0},{\"id\":24,\"stage_upgradation_amount\":0},{\"id\":25,\"stage_upgradation_amount\":0},{\"id\":26,\"stage_upgradation_amount\":0},{\"id\":27,\"stage_upgradation_amount\":0},{\"id\":28,\"stage_upgradation_amount\":0},{\"id\":29,\"stage_upgradation_amount\":0},{\"id\":30,\"stage_upgradation_amount\":0},{\"id\":31,\"stage_upgradation_amount\":0},{\"id\":32,\"stage_upgradation_amount\":0},{\"id\":33,\"stage_upgradation_amount\":0},{\"id\":34,\"stage_upgradation_amount\":0},{\"id\":35,\"stage_upgradation_amount\":0},{\"id\":36,\"stage_upgradation_amount\":0},{\"id\":37,\"stage_upgradation_amount\":0},{\"id\":38,\"stage_upgradation_amount\":0},{\"id\":39,\"stage_upgradation_amount\":0},{\"id\":40,\"stage_upgradation_amount\":0},{\"id\":41,\"stage_upgradation_amount\":0},{\"id\":42,\"stage_upgradation_amount\":0},{\"id\":43,\"stage_upgradation_amount\":0},{\"id\":44,\"stage_upgradation_amount\":0},{\"id\":45,\"stage_upgradation_amount\":0},{\"id\":46,\"stage_upgradation_amount\":0},{\"id\":47,\"stage_upgradation_amount\":0},{\"id\":48,\"stage_upgradation_amount\":0},{\"id\":49,\"stage_upgradation_amount\":0},{\"id\":50,\"stage_upgradation_amount\":0},{\"id\":51,\"stage_upgradation_amount\":0},{\"id\":52,\"stage_upgradation_amount\":0},{\"id\":53,\"stage_upgradation_amount\":0},{\"id\":54,\"stage_upgradation_amount\":0},{\"id\":55,\"stage_upgradation_amount\":0},{\"id\":56,\"stage_upgradation_amount\":0},{\"id\":57,\"stage_upgradation_amount\":0},{\"id\":58,\"stage_upgradation_amount\":0},{\"id\":59,\"stage_upgradation_amount\":0},{\"id\":60,\"stage_upgradation_amount\":0},{\"id\":61,\"stage_upgradation_amount\":0},{\"id\":62,\"stage_upgradation_amount\":0},{\"id\":63,\"stage_upgradation_amount\":0},{\"id\":64,\"stage_upgradation_amount\":0},{\"id\":65,\"stage_upgradation_amount\":0},{\"id\":66,\"stage_upgradation_amount\":0},{\"id\":67,\"stage_upgradation_amount\":0},{\"id\":68,\"stage_upgradation_amount\":0},{\"id\":69,\"stage_upgradation_amount\":0},{\"id\":70,\"stage_upgradation_amount\":0},{\"id\":71,\"stage_upgradation_amount\":0},{\"id\":72,\"stage_upgradation_amount\":0},{\"id\":73,\"stage_upgradation_amount\":0},{\"id\":74,\"stage_upgradation_amount\":0},{\"id\":75,\"stage_upgradation_amount\":0},{\"id\":76,\"stage_upgradation_amount\":0},{\"id\":77,\"stage_upgradation_amount\":0},{\"id\":78,\"stage_upgradation_amount\":0},{\"id\":79,\"stage_upgradation_amount\":0},{\"id\":80,\"stage_upgradation_amount\":0},{\"id\":81,\"stage_upgradation_amount\":0},{\"id\":82,\"stage_upgradation_amount\":0},{\"id\":83,\"stage_upgradation_amount\":0},{\"id\":84,\"stage_upgradation_amount\":0},{\"id\":85,\"stage_upgradation_amount\":0},{\"id\":86,\"stage_upgradation_amount\":0},{\"id\":87,\"stage_upgradation_amount\":0},{\"id\":88,\"stage_upgradation_amount\":0},{\"id\":89,\"stage_upgradation_amount\":0},{\"id\":90,\"stage_upgradation_amount\":0},{\"id\":91,\"stage_upgradation_amount\":0},{\"id\":92,\"stage_upgradation_amount\":0},{\"id\":93,\"stage_upgradation_amount\":0},{\"id\":94,\"stage_upgradation_amount\":0},{\"id\":95,\"stage_upgradation_amount\":0},{\"id\":96,\"stage_upgradation_amount\":0},{\"id\":97,\"stage_upgradation_amount\":0},{\"id\":98,\"stage_upgradation_amount\":0},{\"id\":99,\"stage_upgradation_amount\":0}]', '0000-00-00', 0);
INSERT INTO `package_info` (`id`, `package_name`, `package_price`, `currency`, `pay_via_voucher`, `sign_up_bonus`, `maximum_transfer`, `package_details`, `package_tax`, `indirect_ref_amount`, `payout_for_user`, `minimum_voucher`, `maximum_generated_voucher`, `stage_bonus_amount`, `stage_upgradation_amount`, `created_date`, `is_deleted`) VALUES
(6, 'sdf', 23, 'Australian Dollar', 3, 3, 23, 'sdf', 23, 0, 2, '3', 0, '[{\"id\":0,\"stage_bonus_amount\":0},{\"id\":1,\"stage_bonus_amount\":0},{\"id\":2,\"stage_bonus_amount\":0},{\"id\":3,\"stage_bonus_amount\":0},{\"id\":4,\"stage_bonus_amount\":0},{\"id\":5,\"stage_bonus_amount\":0},{\"id\":6,\"stage_bonus_amount\":0},{\"id\":7,\"stage_bonus_amount\":0},{\"id\":8,\"stage_bonus_amount\":0},{\"id\":9,\"stage_bonus_amount\":0},{\"id\":10,\"stage_bonus_amount\":0},{\"id\":11,\"stage_bonus_amount\":0},{\"id\":12,\"stage_bonus_amount\":0},{\"id\":13,\"stage_bonus_amount\":0},{\"id\":14,\"stage_bonus_amount\":0},{\"id\":15,\"stage_bonus_amount\":0},{\"id\":16,\"stage_bonus_amount\":0},{\"id\":17,\"stage_bonus_amount\":0},{\"id\":18,\"stage_bonus_amount\":0},{\"id\":19,\"stage_bonus_amount\":0},{\"id\":20,\"stage_bonus_amount\":0},{\"id\":21,\"stage_bonus_amount\":0},{\"id\":22,\"stage_bonus_amount\":0},{\"id\":23,\"stage_bonus_amount\":0},{\"id\":24,\"stage_bonus_amount\":0},{\"id\":25,\"stage_bonus_amount\":0},{\"id\":26,\"stage_bonus_amount\":0},{\"id\":27,\"stage_bonus_amount\":0},{\"id\":28,\"stage_bonus_amount\":0},{\"id\":29,\"stage_bonus_amount\":0},{\"id\":30,\"stage_bonus_amount\":0},{\"id\":31,\"stage_bonus_amount\":0},{\"id\":32,\"stage_bonus_amount\":0},{\"id\":33,\"stage_bonus_amount\":0},{\"id\":34,\"stage_bonus_amount\":0},{\"id\":35,\"stage_bonus_amount\":0},{\"id\":36,\"stage_bonus_amount\":0},{\"id\":37,\"stage_bonus_amount\":0},{\"id\":38,\"stage_bonus_amount\":0},{\"id\":39,\"stage_bonus_amount\":0},{\"id\":40,\"stage_bonus_amount\":0},{\"id\":41,\"stage_bonus_amount\":0},{\"id\":42,\"stage_bonus_amount\":0},{\"id\":43,\"stage_bonus_amount\":0},{\"id\":44,\"stage_bonus_amount\":0},{\"id\":45,\"stage_bonus_amount\":0},{\"id\":46,\"stage_bonus_amount\":0},{\"id\":47,\"stage_bonus_amount\":0},{\"id\":48,\"stage_bonus_amount\":0},{\"id\":49,\"stage_bonus_amount\":0},{\"id\":50,\"stage_bonus_amount\":0},{\"id\":51,\"stage_bonus_amount\":0},{\"id\":52,\"stage_bonus_amount\":0},{\"id\":53,\"stage_bonus_amount\":0},{\"id\":54,\"stage_bonus_amount\":0},{\"id\":55,\"stage_bonus_amount\":0},{\"id\":56,\"stage_bonus_amount\":0},{\"id\":57,\"stage_bonus_amount\":0},{\"id\":58,\"stage_bonus_amount\":0},{\"id\":59,\"stage_bonus_amount\":0},{\"id\":60,\"stage_bonus_amount\":0},{\"id\":61,\"stage_bonus_amount\":0},{\"id\":62,\"stage_bonus_amount\":0},{\"id\":63,\"stage_bonus_amount\":0},{\"id\":64,\"stage_bonus_amount\":0},{\"id\":65,\"stage_bonus_amount\":0},{\"id\":66,\"stage_bonus_amount\":0},{\"id\":67,\"stage_bonus_amount\":0},{\"id\":68,\"stage_bonus_amount\":0},{\"id\":69,\"stage_bonus_amount\":0},{\"id\":70,\"stage_bonus_amount\":0},{\"id\":71,\"stage_bonus_amount\":0},{\"id\":72,\"stage_bonus_amount\":0},{\"id\":73,\"stage_bonus_amount\":0},{\"id\":74,\"stage_bonus_amount\":0},{\"id\":75,\"stage_bonus_amount\":0},{\"id\":76,\"stage_bonus_amount\":0},{\"id\":77,\"stage_bonus_amount\":0},{\"id\":78,\"stage_bonus_amount\":0},{\"id\":79,\"stage_bonus_amount\":0},{\"id\":80,\"stage_bonus_amount\":0},{\"id\":81,\"stage_bonus_amount\":0},{\"id\":82,\"stage_bonus_amount\":0},{\"id\":83,\"stage_bonus_amount\":0},{\"id\":84,\"stage_bonus_amount\":0},{\"id\":85,\"stage_bonus_amount\":0},{\"id\":86,\"stage_bonus_amount\":0},{\"id\":87,\"stage_bonus_amount\":0},{\"id\":88,\"stage_bonus_amount\":0},{\"id\":89,\"stage_bonus_amount\":0},{\"id\":90,\"stage_bonus_amount\":0},{\"id\":91,\"stage_bonus_amount\":0},{\"id\":92,\"stage_bonus_amount\":0},{\"id\":93,\"stage_bonus_amount\":0},{\"id\":94,\"stage_bonus_amount\":0},{\"id\":95,\"stage_bonus_amount\":0},{\"id\":96,\"stage_bonus_amount\":0},{\"id\":97,\"stage_bonus_amount\":0},{\"id\":98,\"stage_bonus_amount\":0},{\"id\":99,\"stage_bonus_amount\":0},{\"id\":0,\"stage_bonus_amount\":0},{\"id\":1,\"stage_bonus_amount\":0},{\"id\":2,\"stage_bonus_amount\":0},{\"id\":3,\"stage_bonus_amount\":0},{\"id\":4,\"stage_bonus_amount\":0},{\"id\":5,\"stage_bonus_amount\":0},{\"id\":6,\"stage_bonus_amount\":0},{\"id\":7,\"stage_bonus_amount\":0},{\"id\":8,\"stage_bonus_amount\":0},{\"id\":9,\"stage_bonus_amount\":0},{\"id\":10,\"stage_bonus_amount\":0},{\"id\":11,\"stage_bonus_amount\":0},{\"id\":12,\"stage_bonus_amount\":0},{\"id\":13,\"stage_bonus_amount\":0},{\"id\":14,\"stage_bonus_amount\":0},{\"id\":15,\"stage_bonus_amount\":0},{\"id\":16,\"stage_bonus_amount\":0},{\"id\":17,\"stage_bonus_amount\":0},{\"id\":18,\"stage_bonus_amount\":0},{\"id\":19,\"stage_bonus_amount\":0},{\"id\":20,\"stage_bonus_amount\":0},{\"id\":21,\"stage_bonus_amount\":0},{\"id\":22,\"stage_bonus_amount\":0},{\"id\":23,\"stage_bonus_amount\":0},{\"id\":24,\"stage_bonus_amount\":0},{\"id\":25,\"stage_bonus_amount\":0},{\"id\":26,\"stage_bonus_amount\":0},{\"id\":27,\"stage_bonus_amount\":0},{\"id\":28,\"stage_bonus_amount\":0},{\"id\":29,\"stage_bonus_amount\":0},{\"id\":30,\"stage_bonus_amount\":0},{\"id\":31,\"stage_bonus_amount\":0},{\"id\":32,\"stage_bonus_amount\":0},{\"id\":33,\"stage_bonus_amount\":0},{\"id\":34,\"stage_bonus_amount\":0},{\"id\":35,\"stage_bonus_amount\":0},{\"id\":36,\"stage_bonus_amount\":0},{\"id\":37,\"stage_bonus_amount\":0},{\"id\":38,\"stage_bonus_amount\":0},{\"id\":39,\"stage_bonus_amount\":0},{\"id\":40,\"stage_bonus_amount\":0},{\"id\":41,\"stage_bonus_amount\":0},{\"id\":42,\"stage_bonus_amount\":0},{\"id\":43,\"stage_bonus_amount\":0},{\"id\":44,\"stage_bonus_amount\":0},{\"id\":45,\"stage_bonus_amount\":0},{\"id\":46,\"stage_bonus_amount\":0},{\"id\":47,\"stage_bonus_amount\":0},{\"id\":48,\"stage_bonus_amount\":0},{\"id\":49,\"stage_bonus_amount\":0},{\"id\":50,\"stage_bonus_amount\":0},{\"id\":51,\"stage_bonus_amount\":0},{\"id\":52,\"stage_bonus_amount\":0},{\"id\":53,\"stage_bonus_amount\":0},{\"id\":54,\"stage_bonus_amount\":0},{\"id\":55,\"stage_bonus_amount\":0},{\"id\":56,\"stage_bonus_amount\":0},{\"id\":57,\"stage_bonus_amount\":0},{\"id\":58,\"stage_bonus_amount\":0},{\"id\":59,\"stage_bonus_amount\":0},{\"id\":60,\"stage_bonus_amount\":0},{\"id\":61,\"stage_bonus_amount\":0},{\"id\":62,\"stage_bonus_amount\":0},{\"id\":63,\"stage_bonus_amount\":0},{\"id\":64,\"stage_bonus_amount\":0},{\"id\":65,\"stage_bonus_amount\":0},{\"id\":66,\"stage_bonus_amount\":0},{\"id\":67,\"stage_bonus_amount\":0},{\"id\":68,\"stage_bonus_amount\":0},{\"id\":69,\"stage_bonus_amount\":0},{\"id\":70,\"stage_bonus_amount\":0},{\"id\":71,\"stage_bonus_amount\":0},{\"id\":72,\"stage_bonus_amount\":0},{\"id\":73,\"stage_bonus_amount\":0},{\"id\":74,\"stage_bonus_amount\":0},{\"id\":75,\"stage_bonus_amount\":0},{\"id\":76,\"stage_bonus_amount\":0},{\"id\":77,\"stage_bonus_amount\":0},{\"id\":78,\"stage_bonus_amount\":0},{\"id\":79,\"stage_bonus_amount\":0},{\"id\":80,\"stage_bonus_amount\":0},{\"id\":81,\"stage_bonus_amount\":0},{\"id\":82,\"stage_bonus_amount\":0},{\"id\":83,\"stage_bonus_amount\":0},{\"id\":84,\"stage_bonus_amount\":0},{\"id\":85,\"stage_bonus_amount\":0},{\"id\":86,\"stage_bonus_amount\":0},{\"id\":87,\"stage_bonus_amount\":0},{\"id\":88,\"stage_bonus_amount\":0},{\"id\":89,\"stage_bonus_amount\":0},{\"id\":90,\"stage_bonus_amount\":0},{\"id\":91,\"stage_bonus_amount\":0},{\"id\":92,\"stage_bonus_amount\":0},{\"id\":93,\"stage_bonus_amount\":0},{\"id\":94,\"stage_bonus_amount\":0},{\"id\":95,\"stage_bonus_amount\":0},{\"id\":96,\"stage_bonus_amount\":0},{\"id\":97,\"stage_bonus_amount\":0},{\"id\":98,\"stage_bonus_amount\":0},{\"id\":99,\"stage_bonus_amount\":0},{\"id\":0,\"stage_bonus_amount\":0},{\"id\":1,\"stage_bonus_amount\":0},{\"id\":2,\"stage_bonus_amount\":0},{\"id\":3,\"stage_bonus_amount\":0},{\"id\":4,\"stage_bonus_amount\":0},{\"id\":5,\"stage_bonus_amount\":0},{\"id\":6,\"stage_bonus_amount\":0},{\"id\":7,\"stage_bonus_amount\":0},{\"id\":8,\"stage_bonus_amount\":0},{\"id\":9,\"stage_bonus_amount\":0},{\"id\":10,\"stage_bonus_amount\":0},{\"id\":11,\"stage_bonus_amount\":0},{\"id\":12,\"stage_bonus_amount\":0},{\"id\":13,\"stage_bonus_amount\":0},{\"id\":14,\"stage_bonus_amount\":0},{\"id\":15,\"stage_bonus_amount\":0},{\"id\":16,\"stage_bonus_amount\":0},{\"id\":17,\"stage_bonus_amount\":0},{\"id\":18,\"stage_bonus_amount\":0},{\"id\":19,\"stage_bonus_amount\":0},{\"id\":20,\"stage_bonus_amount\":0},{\"id\":21,\"stage_bonus_amount\":0},{\"id\":22,\"stage_bonus_amount\":0},{\"id\":23,\"stage_bonus_amount\":0},{\"id\":24,\"stage_bonus_amount\":0},{\"id\":25,\"stage_bonus_amount\":0},{\"id\":26,\"stage_bonus_amount\":0},{\"id\":27,\"stage_bonus_amount\":0},{\"id\":28,\"stage_bonus_amount\":0},{\"id\":29,\"stage_bonus_amount\":0},{\"id\":30,\"stage_bonus_amount\":0},{\"id\":31,\"stage_bonus_amount\":0},{\"id\":32,\"stage_bonus_amount\":0},{\"id\":33,\"stage_bonus_amount\":0},{\"id\":34,\"stage_bonus_amount\":0},{\"id\":35,\"stage_bonus_amount\":0},{\"id\":36,\"stage_bonus_amount\":0},{\"id\":37,\"stage_bonus_amount\":0},{\"id\":38,\"stage_bonus_amount\":0},{\"id\":39,\"stage_bonus_amount\":0},{\"id\":40,\"stage_bonus_amount\":0},{\"id\":41,\"stage_bonus_amount\":0},{\"id\":42,\"stage_bonus_amount\":0},{\"id\":43,\"stage_bonus_amount\":0},{\"id\":44,\"stage_bonus_amount\":0},{\"id\":45,\"stage_bonus_amount\":0},{\"id\":46,\"stage_bonus_amount\":0},{\"id\":47,\"stage_bonus_amount\":0},{\"id\":48,\"stage_bonus_amount\":0},{\"id\":49,\"stage_bonus_amount\":0},{\"id\":50,\"stage_bonus_amount\":0},{\"id\":51,\"stage_bonus_amount\":0},{\"id\":52,\"stage_bonus_amount\":0},{\"id\":53,\"stage_bonus_amount\":0},{\"id\":54,\"stage_bonus_amount\":0},{\"id\":55,\"stage_bonus_amount\":0},{\"id\":56,\"stage_bonus_amount\":0},{\"id\":57,\"stage_bonus_amount\":0},{\"id\":58,\"stage_bonus_amount\":0},{\"id\":59,\"stage_bonus_amount\":0},{\"id\":60,\"stage_bonus_amount\":0},{\"id\":61,\"stage_bonus_amount\":0},{\"id\":62,\"stage_bonus_amount\":0},{\"id\":63,\"stage_bonus_amount\":0},{\"id\":64,\"stage_bonus_amount\":0},{\"id\":65,\"stage_bonus_amount\":0},{\"id\":66,\"stage_bonus_amount\":0},{\"id\":67,\"stage_bonus_amount\":0},{\"id\":68,\"stage_bonus_amount\":0},{\"id\":69,\"stage_bonus_amount\":0},{\"id\":70,\"stage_bonus_amount\":0},{\"id\":71,\"stage_bonus_amount\":0},{\"id\":72,\"stage_bonus_amount\":0},{\"id\":73,\"stage_bonus_amount\":0},{\"id\":74,\"stage_bonus_amount\":0},{\"id\":75,\"stage_bonus_amount\":0},{\"id\":76,\"stage_bonus_amount\":0},{\"id\":77,\"stage_bonus_amount\":0},{\"id\":78,\"stage_bonus_amount\":0},{\"id\":79,\"stage_bonus_amount\":0},{\"id\":80,\"stage_bonus_amount\":0},{\"id\":81,\"stage_bonus_amount\":0},{\"id\":82,\"stage_bonus_amount\":0},{\"id\":83,\"stage_bonus_amount\":0},{\"id\":84,\"stage_bonus_amount\":0},{\"id\":85,\"stage_bonus_amount\":0},{\"id\":86,\"stage_bonus_amount\":0},{\"id\":87,\"stage_bonus_amount\":0},{\"id\":88,\"stage_bonus_amount\":0},{\"id\":89,\"stage_bonus_amount\":0},{\"id\":90,\"stage_bonus_amount\":0},{\"id\":91,\"stage_bonus_amount\":0},{\"id\":92,\"stage_bonus_amount\":0},{\"id\":93,\"stage_bonus_amount\":0},{\"id\":94,\"stage_bonus_amount\":0},{\"id\":95,\"stage_bonus_amount\":0},{\"id\":96,\"stage_bonus_amount\":0},{\"id\":97,\"stage_bonus_amount\":0},{\"id\":98,\"stage_bonus_amount\":0},{\"id\":99,\"stage_bonus_amount\":0},{\"id\":0,\"stage_bonus_amount\":0},{\"id\":1,\"stage_bonus_amount\":0},{\"id\":2,\"stage_bonus_amount\":0},{\"id\":3,\"stage_bonus_amount\":0},{\"id\":4,\"stage_bonus_amount\":0},{\"id\":5,\"stage_bonus_amount\":0},{\"id\":6,\"stage_bonus_amount\":0},{\"id\":7,\"stage_bonus_amount\":0},{\"id\":8,\"stage_bonus_amount\":0},{\"id\":9,\"stage_bonus_amount\":0},{\"id\":10,\"stage_bonus_amount\":0},{\"id\":11,\"stage_bonus_amount\":0},{\"id\":12,\"stage_bonus_amount\":0},{\"id\":13,\"stage_bonus_amount\":0},{\"id\":14,\"stage_bonus_amount\":0},{\"id\":15,\"stage_bonus_amount\":0},{\"id\":16,\"stage_bonus_amount\":0},{\"id\":17,\"stage_bonus_amount\":0},{\"id\":18,\"stage_bonus_amount\":0},{\"id\":19,\"stage_bonus_amount\":0},{\"id\":20,\"stage_bonus_amount\":0},{\"id\":21,\"stage_bonus_amount\":0},{\"id\":22,\"stage_bonus_amount\":0},{\"id\":23,\"stage_bonus_amount\":0},{\"id\":24,\"stage_bonus_amount\":0},{\"id\":25,\"stage_bonus_amount\":0},{\"id\":26,\"stage_bonus_amount\":0},{\"id\":27,\"stage_bonus_amount\":0},{\"id\":28,\"stage_bonus_amount\":0},{\"id\":29,\"stage_bonus_amount\":0},{\"id\":30,\"stage_bonus_amount\":0},{\"id\":31,\"stage_bonus_amount\":0},{\"id\":32,\"stage_bonus_amount\":0},{\"id\":33,\"stage_bonus_amount\":0},{\"id\":34,\"stage_bonus_amount\":0},{\"id\":35,\"stage_bonus_amount\":0},{\"id\":36,\"stage_bonus_amount\":0},{\"id\":37,\"stage_bonus_amount\":0},{\"id\":38,\"stage_bonus_amount\":0},{\"id\":39,\"stage_bonus_amount\":0},{\"id\":40,\"stage_bonus_amount\":0},{\"id\":41,\"stage_bonus_amount\":0},{\"id\":42,\"stage_bonus_amount\":0},{\"id\":43,\"stage_bonus_amount\":0},{\"id\":44,\"stage_bonus_amount\":0},{\"id\":45,\"stage_bonus_amount\":0},{\"id\":46,\"stage_bonus_amount\":0},{\"id\":47,\"stage_bonus_amount\":0},{\"id\":48,\"stage_bonus_amount\":0},{\"id\":49,\"stage_bonus_amount\":0},{\"id\":50,\"stage_bonus_amount\":0},{\"id\":51,\"stage_bonus_amount\":0},{\"id\":52,\"stage_bonus_amount\":0},{\"id\":53,\"stage_bonus_amount\":0},{\"id\":54,\"stage_bonus_amount\":0},{\"id\":55,\"stage_bonus_amount\":0},{\"id\":56,\"stage_bonus_amount\":0},{\"id\":57,\"stage_bonus_amount\":0},{\"id\":58,\"stage_bonus_amount\":0},{\"id\":59,\"stage_bonus_amount\":0},{\"id\":60,\"stage_bonus_amount\":0},{\"id\":61,\"stage_bonus_amount\":0},{\"id\":62,\"stage_bonus_amount\":0},{\"id\":63,\"stage_bonus_amount\":0},{\"id\":64,\"stage_bonus_amount\":0},{\"id\":65,\"stage_bonus_amount\":0},{\"id\":66,\"stage_bonus_amount\":0},{\"id\":67,\"stage_bonus_amount\":0},{\"id\":68,\"stage_bonus_amount\":0},{\"id\":69,\"stage_bonus_amount\":0},{\"id\":70,\"stage_bonus_amount\":0},{\"id\":71,\"stage_bonus_amount\":0},{\"id\":72,\"stage_bonus_amount\":0},{\"id\":73,\"stage_bonus_amount\":0},{\"id\":74,\"stage_bonus_amount\":0},{\"id\":75,\"stage_bonus_amount\":0},{\"id\":76,\"stage_bonus_amount\":0},{\"id\":77,\"stage_bonus_amount\":0},{\"id\":78,\"stage_bonus_amount\":0},{\"id\":79,\"stage_bonus_amount\":0},{\"id\":80,\"stage_bonus_amount\":0},{\"id\":81,\"stage_bonus_amount\":0},{\"id\":82,\"stage_bonus_amount\":0},{\"id\":83,\"stage_bonus_amount\":0},{\"id\":84,\"stage_bonus_amount\":0},{\"id\":85,\"stage_bonus_amount\":0},{\"id\":86,\"stage_bonus_amount\":0},{\"id\":87,\"stage_bonus_amount\":0},{\"id\":88,\"stage_bonus_amount\":0},{\"id\":89,\"stage_bonus_amount\":0},{\"id\":90,\"stage_bonus_amount\":0},{\"id\":91,\"stage_bonus_amount\":0},{\"id\":92,\"stage_bonus_amount\":0},{\"id\":93,\"stage_bonus_amount\":0},{\"id\":94,\"stage_bonus_amount\":0},{\"id\":95,\"stage_bonus_amount\":0},{\"id\":96,\"stage_bonus_amount\":0},{\"id\":97,\"stage_bonus_amount\":0},{\"id\":98,\"stage_bonus_amount\":0},{\"id\":99,\"stage_bonus_amount\":0}]', '[{\"id\":0,\"stage_upgradation_amount\":0},{\"id\":1,\"stage_upgradation_amount\":0},{\"id\":2,\"stage_upgradation_amount\":0},{\"id\":3,\"stage_upgradation_amount\":0},{\"id\":4,\"stage_upgradation_amount\":0},{\"id\":5,\"stage_upgradation_amount\":0},{\"id\":6,\"stage_upgradation_amount\":0},{\"id\":7,\"stage_upgradation_amount\":0},{\"id\":8,\"stage_upgradation_amount\":0},{\"id\":9,\"stage_upgradation_amount\":0},{\"id\":10,\"stage_upgradation_amount\":0},{\"id\":11,\"stage_upgradation_amount\":0},{\"id\":12,\"stage_upgradation_amount\":0},{\"id\":13,\"stage_upgradation_amount\":0},{\"id\":14,\"stage_upgradation_amount\":0},{\"id\":15,\"stage_upgradation_amount\":0},{\"id\":16,\"stage_upgradation_amount\":0},{\"id\":17,\"stage_upgradation_amount\":0},{\"id\":18,\"stage_upgradation_amount\":0},{\"id\":19,\"stage_upgradation_amount\":0},{\"id\":20,\"stage_upgradation_amount\":0},{\"id\":21,\"stage_upgradation_amount\":0},{\"id\":22,\"stage_upgradation_amount\":0},{\"id\":23,\"stage_upgradation_amount\":0},{\"id\":24,\"stage_upgradation_amount\":0},{\"id\":25,\"stage_upgradation_amount\":0},{\"id\":26,\"stage_upgradation_amount\":0},{\"id\":27,\"stage_upgradation_amount\":0},{\"id\":28,\"stage_upgradation_amount\":0},{\"id\":29,\"stage_upgradation_amount\":0},{\"id\":30,\"stage_upgradation_amount\":0},{\"id\":31,\"stage_upgradation_amount\":0},{\"id\":32,\"stage_upgradation_amount\":0},{\"id\":33,\"stage_upgradation_amount\":0},{\"id\":34,\"stage_upgradation_amount\":0},{\"id\":35,\"stage_upgradation_amount\":0},{\"id\":36,\"stage_upgradation_amount\":0},{\"id\":37,\"stage_upgradation_amount\":0},{\"id\":38,\"stage_upgradation_amount\":0},{\"id\":39,\"stage_upgradation_amount\":0},{\"id\":40,\"stage_upgradation_amount\":0},{\"id\":41,\"stage_upgradation_amount\":0},{\"id\":42,\"stage_upgradation_amount\":0},{\"id\":43,\"stage_upgradation_amount\":0},{\"id\":44,\"stage_upgradation_amount\":0},{\"id\":45,\"stage_upgradation_amount\":0},{\"id\":46,\"stage_upgradation_amount\":0},{\"id\":47,\"stage_upgradation_amount\":0},{\"id\":48,\"stage_upgradation_amount\":0},{\"id\":49,\"stage_upgradation_amount\":0},{\"id\":50,\"stage_upgradation_amount\":0},{\"id\":51,\"stage_upgradation_amount\":0},{\"id\":52,\"stage_upgradation_amount\":0},{\"id\":53,\"stage_upgradation_amount\":0},{\"id\":54,\"stage_upgradation_amount\":0},{\"id\":55,\"stage_upgradation_amount\":0},{\"id\":56,\"stage_upgradation_amount\":0},{\"id\":57,\"stage_upgradation_amount\":0},{\"id\":58,\"stage_upgradation_amount\":0},{\"id\":59,\"stage_upgradation_amount\":0},{\"id\":60,\"stage_upgradation_amount\":0},{\"id\":61,\"stage_upgradation_amount\":0},{\"id\":62,\"stage_upgradation_amount\":0},{\"id\":63,\"stage_upgradation_amount\":0},{\"id\":64,\"stage_upgradation_amount\":0},{\"id\":65,\"stage_upgradation_amount\":0},{\"id\":66,\"stage_upgradation_amount\":0},{\"id\":67,\"stage_upgradation_amount\":0},{\"id\":68,\"stage_upgradation_amount\":0},{\"id\":69,\"stage_upgradation_amount\":0},{\"id\":70,\"stage_upgradation_amount\":0},{\"id\":71,\"stage_upgradation_amount\":0},{\"id\":72,\"stage_upgradation_amount\":0},{\"id\":73,\"stage_upgradation_amount\":0},{\"id\":74,\"stage_upgradation_amount\":0},{\"id\":75,\"stage_upgradation_amount\":0},{\"id\":76,\"stage_upgradation_amount\":0},{\"id\":77,\"stage_upgradation_amount\":0},{\"id\":78,\"stage_upgradation_amount\":0},{\"id\":79,\"stage_upgradation_amount\":0},{\"id\":80,\"stage_upgradation_amount\":0},{\"id\":81,\"stage_upgradation_amount\":0},{\"id\":82,\"stage_upgradation_amount\":0},{\"id\":83,\"stage_upgradation_amount\":0},{\"id\":84,\"stage_upgradation_amount\":0},{\"id\":85,\"stage_upgradation_amount\":0},{\"id\":86,\"stage_upgradation_amount\":0},{\"id\":87,\"stage_upgradation_amount\":0},{\"id\":88,\"stage_upgradation_amount\":0},{\"id\":89,\"stage_upgradation_amount\":0},{\"id\":90,\"stage_upgradation_amount\":0},{\"id\":91,\"stage_upgradation_amount\":0},{\"id\":92,\"stage_upgradation_amount\":0},{\"id\":93,\"stage_upgradation_amount\":0},{\"id\":94,\"stage_upgradation_amount\":0},{\"id\":95,\"stage_upgradation_amount\":0},{\"id\":96,\"stage_upgradation_amount\":0},{\"id\":97,\"stage_upgradation_amount\":0},{\"id\":98,\"stage_upgradation_amount\":0},{\"id\":99,\"stage_upgradation_amount\":0},{\"id\":0,\"stage_upgradation_amount\":0},{\"id\":1,\"stage_upgradation_amount\":0},{\"id\":2,\"stage_upgradation_amount\":0},{\"id\":3,\"stage_upgradation_amount\":0},{\"id\":4,\"stage_upgradation_amount\":0},{\"id\":5,\"stage_upgradation_amount\":0},{\"id\":6,\"stage_upgradation_amount\":0},{\"id\":7,\"stage_upgradation_amount\":0},{\"id\":8,\"stage_upgradation_amount\":0},{\"id\":9,\"stage_upgradation_amount\":0},{\"id\":10,\"stage_upgradation_amount\":0},{\"id\":11,\"stage_upgradation_amount\":0},{\"id\":12,\"stage_upgradation_amount\":0},{\"id\":13,\"stage_upgradation_amount\":0},{\"id\":14,\"stage_upgradation_amount\":0},{\"id\":15,\"stage_upgradation_amount\":0},{\"id\":16,\"stage_upgradation_amount\":0},{\"id\":17,\"stage_upgradation_amount\":0},{\"id\":18,\"stage_upgradation_amount\":0},{\"id\":19,\"stage_upgradation_amount\":0},{\"id\":20,\"stage_upgradation_amount\":0},{\"id\":21,\"stage_upgradation_amount\":0},{\"id\":22,\"stage_upgradation_amount\":0},{\"id\":23,\"stage_upgradation_amount\":0},{\"id\":24,\"stage_upgradation_amount\":0},{\"id\":25,\"stage_upgradation_amount\":0},{\"id\":26,\"stage_upgradation_amount\":0},{\"id\":27,\"stage_upgradation_amount\":0},{\"id\":28,\"stage_upgradation_amount\":0},{\"id\":29,\"stage_upgradation_amount\":0},{\"id\":30,\"stage_upgradation_amount\":0},{\"id\":31,\"stage_upgradation_amount\":0},{\"id\":32,\"stage_upgradation_amount\":0},{\"id\":33,\"stage_upgradation_amount\":0},{\"id\":34,\"stage_upgradation_amount\":0},{\"id\":35,\"stage_upgradation_amount\":0},{\"id\":36,\"stage_upgradation_amount\":0},{\"id\":37,\"stage_upgradation_amount\":0},{\"id\":38,\"stage_upgradation_amount\":0},{\"id\":39,\"stage_upgradation_amount\":0},{\"id\":40,\"stage_upgradation_amount\":0},{\"id\":41,\"stage_upgradation_amount\":0},{\"id\":42,\"stage_upgradation_amount\":0},{\"id\":43,\"stage_upgradation_amount\":0},{\"id\":44,\"stage_upgradation_amount\":0},{\"id\":45,\"stage_upgradation_amount\":0},{\"id\":46,\"stage_upgradation_amount\":0},{\"id\":47,\"stage_upgradation_amount\":0},{\"id\":48,\"stage_upgradation_amount\":0},{\"id\":49,\"stage_upgradation_amount\":0},{\"id\":50,\"stage_upgradation_amount\":0},{\"id\":51,\"stage_upgradation_amount\":0},{\"id\":52,\"stage_upgradation_amount\":0},{\"id\":53,\"stage_upgradation_amount\":0},{\"id\":54,\"stage_upgradation_amount\":0},{\"id\":55,\"stage_upgradation_amount\":0},{\"id\":56,\"stage_upgradation_amount\":0},{\"id\":57,\"stage_upgradation_amount\":0},{\"id\":58,\"stage_upgradation_amount\":0},{\"id\":59,\"stage_upgradation_amount\":0},{\"id\":60,\"stage_upgradation_amount\":0},{\"id\":61,\"stage_upgradation_amount\":0},{\"id\":62,\"stage_upgradation_amount\":0},{\"id\":63,\"stage_upgradation_amount\":0},{\"id\":64,\"stage_upgradation_amount\":0},{\"id\":65,\"stage_upgradation_amount\":0},{\"id\":66,\"stage_upgradation_amount\":0},{\"id\":67,\"stage_upgradation_amount\":0},{\"id\":68,\"stage_upgradation_amount\":0},{\"id\":69,\"stage_upgradation_amount\":0},{\"id\":70,\"stage_upgradation_amount\":0},{\"id\":71,\"stage_upgradation_amount\":0},{\"id\":72,\"stage_upgradation_amount\":0},{\"id\":73,\"stage_upgradation_amount\":0},{\"id\":74,\"stage_upgradation_amount\":0},{\"id\":75,\"stage_upgradation_amount\":0},{\"id\":76,\"stage_upgradation_amount\":0},{\"id\":77,\"stage_upgradation_amount\":0},{\"id\":78,\"stage_upgradation_amount\":0},{\"id\":79,\"stage_upgradation_amount\":0},{\"id\":80,\"stage_upgradation_amount\":0},{\"id\":81,\"stage_upgradation_amount\":0},{\"id\":82,\"stage_upgradation_amount\":0},{\"id\":83,\"stage_upgradation_amount\":0},{\"id\":84,\"stage_upgradation_amount\":0},{\"id\":85,\"stage_upgradation_amount\":0},{\"id\":86,\"stage_upgradation_amount\":0},{\"id\":87,\"stage_upgradation_amount\":0},{\"id\":88,\"stage_upgradation_amount\":0},{\"id\":89,\"stage_upgradation_amount\":0},{\"id\":90,\"stage_upgradation_amount\":0},{\"id\":91,\"stage_upgradation_amount\":0},{\"id\":92,\"stage_upgradation_amount\":0},{\"id\":93,\"stage_upgradation_amount\":0},{\"id\":94,\"stage_upgradation_amount\":0},{\"id\":95,\"stage_upgradation_amount\":0},{\"id\":96,\"stage_upgradation_amount\":0},{\"id\":97,\"stage_upgradation_amount\":0},{\"id\":98,\"stage_upgradation_amount\":0},{\"id\":99,\"stage_upgradation_amount\":0},{\"id\":0,\"stage_upgradation_amount\":0},{\"id\":1,\"stage_upgradation_amount\":0},{\"id\":2,\"stage_upgradation_amount\":0},{\"id\":3,\"stage_upgradation_amount\":0},{\"id\":4,\"stage_upgradation_amount\":0},{\"id\":5,\"stage_upgradation_amount\":0},{\"id\":6,\"stage_upgradation_amount\":0},{\"id\":7,\"stage_upgradation_amount\":0},{\"id\":8,\"stage_upgradation_amount\":0},{\"id\":9,\"stage_upgradation_amount\":0},{\"id\":10,\"stage_upgradation_amount\":0},{\"id\":11,\"stage_upgradation_amount\":0},{\"id\":12,\"stage_upgradation_amount\":0},{\"id\":13,\"stage_upgradation_amount\":0},{\"id\":14,\"stage_upgradation_amount\":0},{\"id\":15,\"stage_upgradation_amount\":0},{\"id\":16,\"stage_upgradation_amount\":0},{\"id\":17,\"stage_upgradation_amount\":0},{\"id\":18,\"stage_upgradation_amount\":0},{\"id\":19,\"stage_upgradation_amount\":0},{\"id\":20,\"stage_upgradation_amount\":0},{\"id\":21,\"stage_upgradation_amount\":0},{\"id\":22,\"stage_upgradation_amount\":0},{\"id\":23,\"stage_upgradation_amount\":0},{\"id\":24,\"stage_upgradation_amount\":0},{\"id\":25,\"stage_upgradation_amount\":0},{\"id\":26,\"stage_upgradation_amount\":0},{\"id\":27,\"stage_upgradation_amount\":0},{\"id\":28,\"stage_upgradation_amount\":0},{\"id\":29,\"stage_upgradation_amount\":0},{\"id\":30,\"stage_upgradation_amount\":0},{\"id\":31,\"stage_upgradation_amount\":0},{\"id\":32,\"stage_upgradation_amount\":0},{\"id\":33,\"stage_upgradation_amount\":0},{\"id\":34,\"stage_upgradation_amount\":0},{\"id\":35,\"stage_upgradation_amount\":0},{\"id\":36,\"stage_upgradation_amount\":0},{\"id\":37,\"stage_upgradation_amount\":0},{\"id\":38,\"stage_upgradation_amount\":0},{\"id\":39,\"stage_upgradation_amount\":0},{\"id\":40,\"stage_upgradation_amount\":0},{\"id\":41,\"stage_upgradation_amount\":0},{\"id\":42,\"stage_upgradation_amount\":0},{\"id\":43,\"stage_upgradation_amount\":0},{\"id\":44,\"stage_upgradation_amount\":0},{\"id\":45,\"stage_upgradation_amount\":0},{\"id\":46,\"stage_upgradation_amount\":0},{\"id\":47,\"stage_upgradation_amount\":0},{\"id\":48,\"stage_upgradation_amount\":0},{\"id\":49,\"stage_upgradation_amount\":0},{\"id\":50,\"stage_upgradation_amount\":0},{\"id\":51,\"stage_upgradation_amount\":0},{\"id\":52,\"stage_upgradation_amount\":0},{\"id\":53,\"stage_upgradation_amount\":0},{\"id\":54,\"stage_upgradation_amount\":0},{\"id\":55,\"stage_upgradation_amount\":0},{\"id\":56,\"stage_upgradation_amount\":0},{\"id\":57,\"stage_upgradation_amount\":0},{\"id\":58,\"stage_upgradation_amount\":0},{\"id\":59,\"stage_upgradation_amount\":0},{\"id\":60,\"stage_upgradation_amount\":0},{\"id\":61,\"stage_upgradation_amount\":0},{\"id\":62,\"stage_upgradation_amount\":0},{\"id\":63,\"stage_upgradation_amount\":0},{\"id\":64,\"stage_upgradation_amount\":0},{\"id\":65,\"stage_upgradation_amount\":0},{\"id\":66,\"stage_upgradation_amount\":0},{\"id\":67,\"stage_upgradation_amount\":0},{\"id\":68,\"stage_upgradation_amount\":0},{\"id\":69,\"stage_upgradation_amount\":0},{\"id\":70,\"stage_upgradation_amount\":0},{\"id\":71,\"stage_upgradation_amount\":0},{\"id\":72,\"stage_upgradation_amount\":0},{\"id\":73,\"stage_upgradation_amount\":0},{\"id\":74,\"stage_upgradation_amount\":0},{\"id\":75,\"stage_upgradation_amount\":0},{\"id\":76,\"stage_upgradation_amount\":0},{\"id\":77,\"stage_upgradation_amount\":0},{\"id\":78,\"stage_upgradation_amount\":0},{\"id\":79,\"stage_upgradation_amount\":0},{\"id\":80,\"stage_upgradation_amount\":0},{\"id\":81,\"stage_upgradation_amount\":0},{\"id\":82,\"stage_upgradation_amount\":0},{\"id\":83,\"stage_upgradation_amount\":0},{\"id\":84,\"stage_upgradation_amount\":0},{\"id\":85,\"stage_upgradation_amount\":0},{\"id\":86,\"stage_upgradation_amount\":0},{\"id\":87,\"stage_upgradation_amount\":0},{\"id\":88,\"stage_upgradation_amount\":0},{\"id\":89,\"stage_upgradation_amount\":0},{\"id\":90,\"stage_upgradation_amount\":0},{\"id\":91,\"stage_upgradation_amount\":0},{\"id\":92,\"stage_upgradation_amount\":0},{\"id\":93,\"stage_upgradation_amount\":0},{\"id\":94,\"stage_upgradation_amount\":0},{\"id\":95,\"stage_upgradation_amount\":0},{\"id\":96,\"stage_upgradation_amount\":0},{\"id\":97,\"stage_upgradation_amount\":0},{\"id\":98,\"stage_upgradation_amount\":0},{\"id\":99,\"stage_upgradation_amount\":0},{\"id\":0,\"stage_upgradation_amount\":0},{\"id\":1,\"stage_upgradation_amount\":0},{\"id\":2,\"stage_upgradation_amount\":0},{\"id\":3,\"stage_upgradation_amount\":0},{\"id\":4,\"stage_upgradation_amount\":0},{\"id\":5,\"stage_upgradation_amount\":0},{\"id\":6,\"stage_upgradation_amount\":0},{\"id\":7,\"stage_upgradation_amount\":0},{\"id\":8,\"stage_upgradation_amount\":0},{\"id\":9,\"stage_upgradation_amount\":0},{\"id\":10,\"stage_upgradation_amount\":0},{\"id\":11,\"stage_upgradation_amount\":0},{\"id\":12,\"stage_upgradation_amount\":0},{\"id\":13,\"stage_upgradation_amount\":0},{\"id\":14,\"stage_upgradation_amount\":0},{\"id\":15,\"stage_upgradation_amount\":0},{\"id\":16,\"stage_upgradation_amount\":0},{\"id\":17,\"stage_upgradation_amount\":0},{\"id\":18,\"stage_upgradation_amount\":0},{\"id\":19,\"stage_upgradation_amount\":0},{\"id\":20,\"stage_upgradation_amount\":0},{\"id\":21,\"stage_upgradation_amount\":0},{\"id\":22,\"stage_upgradation_amount\":0},{\"id\":23,\"stage_upgradation_amount\":0},{\"id\":24,\"stage_upgradation_amount\":0},{\"id\":25,\"stage_upgradation_amount\":0},{\"id\":26,\"stage_upgradation_amount\":0},{\"id\":27,\"stage_upgradation_amount\":0},{\"id\":28,\"stage_upgradation_amount\":0},{\"id\":29,\"stage_upgradation_amount\":0},{\"id\":30,\"stage_upgradation_amount\":0},{\"id\":31,\"stage_upgradation_amount\":0},{\"id\":32,\"stage_upgradation_amount\":0},{\"id\":33,\"stage_upgradation_amount\":0},{\"id\":34,\"stage_upgradation_amount\":0},{\"id\":35,\"stage_upgradation_amount\":0},{\"id\":36,\"stage_upgradation_amount\":0},{\"id\":37,\"stage_upgradation_amount\":0},{\"id\":38,\"stage_upgradation_amount\":0},{\"id\":39,\"stage_upgradation_amount\":0},{\"id\":40,\"stage_upgradation_amount\":0},{\"id\":41,\"stage_upgradation_amount\":0},{\"id\":42,\"stage_upgradation_amount\":0},{\"id\":43,\"stage_upgradation_amount\":0},{\"id\":44,\"stage_upgradation_amount\":0},{\"id\":45,\"stage_upgradation_amount\":0},{\"id\":46,\"stage_upgradation_amount\":0},{\"id\":47,\"stage_upgradation_amount\":0},{\"id\":48,\"stage_upgradation_amount\":0},{\"id\":49,\"stage_upgradation_amount\":0},{\"id\":50,\"stage_upgradation_amount\":0},{\"id\":51,\"stage_upgradation_amount\":0},{\"id\":52,\"stage_upgradation_amount\":0},{\"id\":53,\"stage_upgradation_amount\":0},{\"id\":54,\"stage_upgradation_amount\":0},{\"id\":55,\"stage_upgradation_amount\":0},{\"id\":56,\"stage_upgradation_amount\":0},{\"id\":57,\"stage_upgradation_amount\":0},{\"id\":58,\"stage_upgradation_amount\":0},{\"id\":59,\"stage_upgradation_amount\":0},{\"id\":60,\"stage_upgradation_amount\":0},{\"id\":61,\"stage_upgradation_amount\":0},{\"id\":62,\"stage_upgradation_amount\":0},{\"id\":63,\"stage_upgradation_amount\":0},{\"id\":64,\"stage_upgradation_amount\":0},{\"id\":65,\"stage_upgradation_amount\":0},{\"id\":66,\"stage_upgradation_amount\":0},{\"id\":67,\"stage_upgradation_amount\":0},{\"id\":68,\"stage_upgradation_amount\":0},{\"id\":69,\"stage_upgradation_amount\":0},{\"id\":70,\"stage_upgradation_amount\":0},{\"id\":71,\"stage_upgradation_amount\":0},{\"id\":72,\"stage_upgradation_amount\":0},{\"id\":73,\"stage_upgradation_amount\":0},{\"id\":74,\"stage_upgradation_amount\":0},{\"id\":75,\"stage_upgradation_amount\":0},{\"id\":76,\"stage_upgradation_amount\":0},{\"id\":77,\"stage_upgradation_amount\":0},{\"id\":78,\"stage_upgradation_amount\":0},{\"id\":79,\"stage_upgradation_amount\":0},{\"id\":80,\"stage_upgradation_amount\":0},{\"id\":81,\"stage_upgradation_amount\":0},{\"id\":82,\"stage_upgradation_amount\":0},{\"id\":83,\"stage_upgradation_amount\":0},{\"id\":84,\"stage_upgradation_amount\":0},{\"id\":85,\"stage_upgradation_amount\":0},{\"id\":86,\"stage_upgradation_amount\":0},{\"id\":87,\"stage_upgradation_amount\":0},{\"id\":88,\"stage_upgradation_amount\":0},{\"id\":89,\"stage_upgradation_amount\":0},{\"id\":90,\"stage_upgradation_amount\":0},{\"id\":91,\"stage_upgradation_amount\":0},{\"id\":92,\"stage_upgradation_amount\":0},{\"id\":93,\"stage_upgradation_amount\":0},{\"id\":94,\"stage_upgradation_amount\":0},{\"id\":95,\"stage_upgradation_amount\":0},{\"id\":96,\"stage_upgradation_amount\":0},{\"id\":97,\"stage_upgradation_amount\":0},{\"id\":98,\"stage_upgradation_amount\":0},{\"id\":99,\"stage_upgradation_amount\":0}]', '0000-00-00', 1),
(7, 'wer', 34, 'US-Dollar-USD', 44, 34, 44, 'wer', 34, 34, 55, '55', 32, '[{\"level\":90},{\"level\":98},{\"level\":30},{\"level\":0},{\"level\":0},{\"level\":0},{\"level\":0},{\"level\":0},{\"level\":0},{\"level\":0},{\"level\":0},{\"level\":0},{\"level\":0},{\"level\":0},{\"level\":0},{\"level\":0},{\"level\":0},{\"level\":0},{\"level\":0},{\"level\":0},{\"level\":0},{\"level\":0},{\"level\":0},{\"level\":0},{\"level\":0},{\"level\":0},{\"level\":0},{\"level\":0},{\"level\":0}]', '[{\"stage_upgradation_amount\":91},{\"stage_upgradation_amount\":99},{\"stage_upgradation_amount\":31},{\"stage_upgradation_amount\":0},{\"stage_upgradation_amount\":0},{\"stage_upgradation_amount\":0},{\"stage_upgradation_amount\":0},{\"stage_upgradation_amount\":0},{\"stage_upgradation_amount\":0},{\"stage_upgradation_amount\":0},{\"stage_upgradation_amount\":0},{\"stage_upgradation_amount\":0},{\"stage_upgradation_amount\":0},{\"stage_upgradation_amount\":0},{\"stage_upgradation_amount\":0},{\"stage_upgradation_amount\":0},{\"stage_upgradation_amount\":0},{\"stage_upgradation_amount\":0},{\"stage_upgradation_amount\":0},{\"stage_upgradation_amount\":0},{\"stage_upgradation_amount\":0},{\"stage_upgradation_amount\":0},{\"stage_upgradation_amount\":0},{\"stage_upgradation_amount\":0},{\"stage_upgradation_amount\":0},{\"stage_upgradation_amount\":0},{\"stage_upgradation_amount\":0},{\"stage_upgradation_amount\":0},{\"stage_upgradation_amount\":0}]', '0000-00-00', 0);

-- --------------------------------------------------------

--
-- Table structure for table `paymentgateway`
--

CREATE TABLE `paymentgateway` (
  `id` int(11) NOT NULL,
  `Name` text NOT NULL,
  `status` int(11) NOT NULL DEFAULT '0',
  `comment` int(11) NOT NULL,
  `date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `paymentgateway`
--

INSERT INTO `paymentgateway` (`id`, `Name`, `status`, `comment`, `date`) VALUES
(1, 'PayPal', 1, 0, '0000-00-00'),
(2, 'Cash On Delivery', 0, 0, '0000-00-00'),
(3, 'Payza', 0, 0, '0000-00-00'),
(4, 'SolidTrustPay', 0, 0, '0000-00-00'),
(5, 'Marketer Balance', 1, 0, '0000-00-00');

-- --------------------------------------------------------

--
-- Table structure for table `payments`
--

CREATE TABLE `payments` (
  `id` int(6) NOT NULL,
  `userid` varchar(50) NOT NULL,
  `payment_amount` double NOT NULL DEFAULT '0',
  `payment_status` int(1) NOT NULL DEFAULT '0',
  `itemid` varchar(25) NOT NULL,
  `createdtime` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `paypalpayments`
--

CREATE TABLE `paypalpayments` (
  `id` int(11) NOT NULL,
  `orderid` int(11) NOT NULL,
  `transacid` text NOT NULL,
  `price` double DEFAULT '0',
  `currency` text NOT NULL,
  `date` date NOT NULL,
  `cod` int(1) NOT NULL DEFAULT '0',
  `renew` int(1) NOT NULL DEFAULT '0',
  `renacid` int(9) NOT NULL COMMENT 'Package choosen at renew time, id of package',
  `pckid` double NOT NULL,
  `gateway` varchar(25) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `paypalpayments`
--

INSERT INTO `paypalpayments` (`id`, `orderid`, `transacid`, `price`, `currency`, `date`, `cod`, `renew`, `renacid`, `pckid`, `gateway`) VALUES
(1, 2, 'R.V', 3, 'USD', '2019-04-27', 1, 0, 0, 1, 'R.B'),
(2, 4, 'R.V', 3, 'USD', '2019-04-27', 1, 0, 0, 1, 'R.B'),
(3, 5, 'R.V', 3, 'USD', '2019-04-27', 1, 0, 0, 1, 'R.B'),
(4, 3, 'R.V', 3, 'USD', '2019-05-09', 1, 0, 0, 1, 'R.B');

-- --------------------------------------------------------

--
-- Table structure for table `product_master`
--

CREATE TABLE `product_master` (
  `id` int(15) NOT NULL,
  `product_name` varchar(155) NOT NULL,
  `product_image` varchar(255) NOT NULL,
  `desc` longtext,
  `short_desc` longtext,
  `category_id` int(11) NOT NULL,
  `sub_category_id` int(11) NOT NULL,
  `website` varchar(155) NOT NULL,
  `price` double NOT NULL,
  `currency` varchar(155) NOT NULL,
  `created_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `is_deleted` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `product_master`
--

INSERT INTO `product_master` (`id`, `product_name`, `product_image`, `desc`, `short_desc`, `category_id`, `sub_category_id`, `website`, `price`, `currency`, `created_date`, `is_deleted`) VALUES
(1, '????', 'product_image/bd6676141b1d40507c92d6ec027958df.jpg', NULL, NULL, 1, 1, 'omid', 22, 'dollar', '2019-04-27 09:27:38', 0),
(2, 'Web Designing', 'product_image/64ade5bbee17b624144d90459ec606e8.jpg', 'sample description', 'test description', 2, 2, 'skillers', 20000, 'rs', '2019-05-09 02:23:58', 0);

-- --------------------------------------------------------

--
-- Table structure for table `services`
--

CREATE TABLE `services` (
  `id` int(15) NOT NULL,
  `title` varchar(155) NOT NULL,
  `description` varchar(255) NOT NULL,
  `website` varchar(155) NOT NULL,
  `service_image` varchar(155) NOT NULL,
  `created_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `is_deleted` int(15) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `services`
--

INSERT INTO `services` (`id`, `title`, `description`, `website`, `service_image`, `created_date`, `is_deleted`) VALUES
(1, '????? ???? ', '???? ???? ??? ????? ????????? ????????? ????????? ', 'omid', 'product_image/b66c1b95a2e74803ff932805193228c9.jpg', '2019-04-27 09:28:20', 1);

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE `settings` (
  `email` varchar(100) NOT NULL DEFAULT 'Enter Your E-Mail Address',
  `sno` int(9) NOT NULL,
  `wlink` varchar(100) NOT NULL DEFAULT 'www.yourwebsite.com',
  `invoicedetails` text NOT NULL,
  `coname` text NOT NULL,
  `fblink` text NOT NULL,
  `twitterlink` text NOT NULL,
  `paypalid` text NOT NULL,
  `maintain` int(1) NOT NULL DEFAULT '0',
  `alwdpayment` int(11) NOT NULL DEFAULT '0' COMMENT 'user will get payment via paypal or via payment in bank account.',
  `minmobile` double NOT NULL,
  `maxmobile` double NOT NULL,
  `footer` varchar(50) NOT NULL,
  `header` varchar(50) NOT NULL,
  `payzaid` varchar(128) NOT NULL DEFAULT 'Not Available',
  `solidtrustid` varchar(128) NOT NULL DEFAULT 'Not Available',
  `solidbutton` varchar(128) NOT NULL DEFAULT 'Not Available'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`email`, `sno`, `wlink`, `invoicedetails`, `coname`, `fblink`, `twitterlink`, `paypalid`, `maintain`, `alwdpayment`, `minmobile`, `maxmobile`, `footer`, `header`, `payzaid`, `solidtrustid`, `solidbutton`) VALUES
('sridhar.subit@gmail.com', 0, 'http://www.roodabatoz.com', 'Malaysia', 'Roodabatoz ', 'https://www.facebook.com/ROODAB1/', 'https://twitter.com/@roodabatoz', 'admin@arycapital.com.my', 0, 3, 0, 0, 'Powered By - Roodabatoz', 'Roodabatoz', 'Payza', 'Solid', 'Button');

-- --------------------------------------------------------

--
-- Table structure for table `sub_category_master`
--

CREATE TABLE `sub_category_master` (
  `id` int(5) NOT NULL,
  `sub_category_name` varchar(155) NOT NULL,
  `url` varchar(155) NOT NULL,
  `category_id` int(15) NOT NULL,
  `created_by` int(15) NOT NULL,
  `created_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `is_deleted` int(15) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sub_category_master`
--

INSERT INTO `sub_category_master` (`id`, `sub_category_name`, `url`, `category_id`, `created_by`, `created_date`, `is_deleted`) VALUES
(1, 'Omidroodab', 'omid', 1, 4, '2019-04-27 09:26:41', 0),
(2, 'Web Development', 'skillers', 2, 3, '2019-05-09 02:07:24', 0);

-- --------------------------------------------------------

--
-- Table structure for table `transfer_history`
--

CREATE TABLE `transfer_history` (
  `tid` int(11) NOT NULL,
  `transfer_from` varchar(70) NOT NULL,
  `transfer_to` varchar(70) NOT NULL,
  `amt` varchar(30) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `transfer_history`
--

INSERT INTO `transfer_history` (`tid`, `transfer_from`, `transfer_to`, `amt`) VALUES
(1, 'admin', 'roodabatoz', '100');

-- --------------------------------------------------------

--
-- Table structure for table `user_advertisements`
--

CREATE TABLE `user_advertisements` (
  `id` int(11) NOT NULL,
  `url` varchar(300) NOT NULL,
  `uploads` varchar(500) NOT NULL,
  `weblink` varchar(100) DEFAULT NULL,
  `desc` varchar(200) CHARACTER SET utf8 DEFAULT NULL,
  `user_id` varchar(20) NOT NULL,
  `ad_type` varchar(50) NOT NULL DEFAULT '0' COMMENT '1=image;2=video',
  `feature_of_ad` int(15) NOT NULL DEFAULT '0',
  `website_ad` int(15) NOT NULL DEFAULT '0',
  `iba_ad` int(15) NOT NULL DEFAULT '0',
  `is_deleted` int(15) NOT NULL DEFAULT '0',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user_advertisements`
--

INSERT INTO `user_advertisements` (`id`, `url`, `uploads`, `weblink`, `desc`, `user_id`, `ad_type`, `feature_of_ad`, `website_ad`, `iba_ad`, `is_deleted`, `created_at`) VALUES
(1, 'omid', '', NULL, NULL, '4', '1', 0, 0, 0, 0, '2019-04-27 09:20:19'),
(2, 'omid', '', NULL, NULL, '4', '2', 0, 0, 0, 0, '2019-04-27 09:20:38');

-- --------------------------------------------------------

--
-- Table structure for table `user_services`
--

CREATE TABLE `user_services` (
  `id` int(11) NOT NULL,
  `service_name` varchar(600) NOT NULL,
  `user_id` varchar(100) NOT NULL,
  `created_at` varchar(25) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `user_vs_packages`
--

CREATE TABLE `user_vs_packages` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `package_id` int(11) NOT NULL,
  `package_status` int(11) NOT NULL DEFAULT '1' COMMENT '1-deactive,0-active,2-expired',
  `website` varchar(155) NOT NULL,
  `template` int(15) NOT NULL DEFAULT '1',
  `activated_date` datetime DEFAULT CURRENT_TIMESTAMP,
  `renew_date` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user_vs_packages`
--

INSERT INTO `user_vs_packages` (`id`, `user_id`, `package_id`, `package_status`, `website`, `template`, `activated_date`, `renew_date`) VALUES
(1, 1, 1, 0, '', 1, NULL, NULL),
(2, 2, 1, 0, 'roodabatoz', 1, '2019-04-27 00:00:00', '2019-07-29 00:00:00'),
(3, 3, 1, 0, 'skillers', 1, '2019-05-09 00:00:00', '2019-08-10 00:00:00'),
(4, 4, 1, 0, 'omid', 1, '2019-04-27 00:00:00', '2019-07-29 00:00:00'),
(5, 5, 1, 0, 'lakshmiindustries', 1, '2019-04-27 00:00:00', '2019-07-29 00:00:00');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `affiliateuser`
--
ALTER TABLE `affiliateuser`
  ADD PRIMARY KEY (`username`),
  ADD UNIQUE KEY `Id` (`Id`);

--
-- Indexes for table `affiliate_bonus_history`
--
ALTER TABLE `affiliate_bonus_history`
  ADD PRIMARY KEY (`bid`);

--
-- Indexes for table `affliate_stage_bonus`
--
ALTER TABLE `affliate_stage_bonus`
  ADD PRIMARY KEY (`bonus_id`);

--
-- Indexes for table `banners`
--
ALTER TABLE `banners`
  ADD PRIMARY KEY (`bannerid`);

--
-- Indexes for table `category_master`
--
ALTER TABLE `category_master`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `contacts`
--
ALTER TABLE `contacts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `contacts_master`
--
ALTER TABLE `contacts_master`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `currency`
--
ALTER TABLE `currency`
  ADD PRIMARY KEY (`id`);
ALTER TABLE `currency` ADD FULLTEXT KEY `code` (`code`);

--
-- Indexes for table `earning_settings`
--
ALTER TABLE `earning_settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `emailtext`
--
ALTER TABLE `emailtext`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `notifications`
--
ALTER TABLE `notifications`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `packages`
--
ALTER TABLE `packages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `package_info`
--
ALTER TABLE `package_info`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `paymentgateway`
--
ALTER TABLE `paymentgateway`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `payments`
--
ALTER TABLE `payments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `paypalpayments`
--
ALTER TABLE `paypalpayments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product_master`
--
ALTER TABLE `product_master`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `services`
--
ALTER TABLE `services`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id` (`id`);

--
-- Indexes for table `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`sno`);

--
-- Indexes for table `sub_category_master`
--
ALTER TABLE `sub_category_master`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `transfer_history`
--
ALTER TABLE `transfer_history`
  ADD PRIMARY KEY (`tid`);

--
-- Indexes for table `user_advertisements`
--
ALTER TABLE `user_advertisements`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_services`
--
ALTER TABLE `user_services`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_vs_packages`
--
ALTER TABLE `user_vs_packages`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `affiliateuser`
--
ALTER TABLE `affiliateuser`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `affiliate_bonus_history`
--
ALTER TABLE `affiliate_bonus_history`
  MODIFY `bid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `affliate_stage_bonus`
--
ALTER TABLE `affliate_stage_bonus`
  MODIFY `bonus_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `banners`
--
ALTER TABLE `banners`
  MODIFY `bannerid` double NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `category_master`
--
ALTER TABLE `category_master`
  MODIFY `id` int(15) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `contacts`
--
ALTER TABLE `contacts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `contacts_master`
--
ALTER TABLE `contacts_master`
  MODIFY `id` int(15) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `currency`
--
ALTER TABLE `currency`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `earning_settings`
--
ALTER TABLE `earning_settings`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `emailtext`
--
ALTER TABLE `emailtext`
  MODIFY `id` int(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `notifications`
--
ALTER TABLE `notifications`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `packages`
--
ALTER TABLE `packages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `package_info`
--
ALTER TABLE `package_info`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `paymentgateway`
--
ALTER TABLE `paymentgateway`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `payments`
--
ALTER TABLE `payments`
  MODIFY `id` int(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `paypalpayments`
--
ALTER TABLE `paypalpayments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `product_master`
--
ALTER TABLE `product_master`
  MODIFY `id` int(15) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `services`
--
ALTER TABLE `services`
  MODIFY `id` int(15) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `sub_category_master`
--
ALTER TABLE `sub_category_master`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `transfer_history`
--
ALTER TABLE `transfer_history`
  MODIFY `tid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `user_advertisements`
--
ALTER TABLE `user_advertisements`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `user_services`
--
ALTER TABLE `user_services`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `user_vs_packages`
--
ALTER TABLE `user_vs_packages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
