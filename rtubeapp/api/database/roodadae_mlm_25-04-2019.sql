-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 12, 2019 at 09:15 PM
-- Server version: 10.1.36-MariaDB
-- PHP Version: 5.6.38

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `roodadae_mlm`
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

INSERT INTO `affiliateuser` (`Id`, `username`, `password`, `fname`, `address`, `email`, `referedby`, `mobile`, `image_url`, `about_me`, `active`, `doj`, `country`, `tamount`, `payment`, `signupcode`, `level`, `pcktaken`, `launch`, `expiry`, `getpayment`, `renew`, `iba_status`, `user_type`, `is_deleted`) VALUES
(1, 'marketer', '123456', 'MAnimarana mariumuth', 'sdfsfsfsfs', 'mr.mani99@gmail.com', '12', 9874563212, NULL, '', 0, '0000-00-00', 'India', 5000, '', '', 2, 1, 0, '2199-12-31', 1, 0, 0, 2, 0),
(2, 'sridhar', '123456', 'MAnimarana mariumuth', 'sdfsfsfsfs', 'mr.mani99@gmail.com', '12', 9874563212, NULL, '', 1, '0000-00-00', 'India', 9799, '', '', 2, 1, 0, '2199-12-31', 1, 0, 0, 1, 0),
(3, 'user module tes', 'lkjdfgjk', 'xjgsfds', 'we', 'sf', 'sf', 0, NULL, '', 0, '0000-00-00', 'xcf', 0, '', '', 2, 1, 0, '2199-12-31', 1, 0, 0, 2, 1),
(4, 'remo', '1234567', 'remo', '', '', 'referr', 0, NULL, '', 0, '2019-03-01', '', 0, '', '', 2, 5, 0, '2199-12-31', 1, 0, 0, 2, 0),
(5, 'romeo', '12345678', 'romeo', '', '', 'kathir', 0, NULL, '', 1, '2019-03-01', '', 1000, '', '', 2, 2, 0, '2199-12-31', 1, 0, 0, 2, 0),
(6, 'michael', '0123456', 'michaels', 'test', 'mr.mani99@gmail.com', '12', 0, 'user_profile/97a0bf18c64dfe7d08afdd2ef8b86e69.jpg', '', 1, '2019-03-01', '', 979, '', '', 2, 2, 0, '2199-12-31', 1, 0, 0, 2, 0),
(7, 'ramasway', '123456789', 'ramasway', '', 'mr.michael@gmail.com', 'niolll', 0, 'user_profile/e88c494d4165a16d828a864174f791f4.jpg', 'Hi Am from MLM family. Its free from all over the world.', 0, '2019-03-04', '', 0, '', '', 2, 1, 0, '2199-12-31', 1, 0, 0, 2, 0),
(8, 'manikam', '123456', 'kamalesh', '', '', 'rest', 0, NULL, '', 0, '2019-04-02', '', 0, '', '', 2, 3, 0, '2199-12-31', 1, 0, 0, 2, 0);

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
(1, '6', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', '3', '2019-03-11 18:30:00'),
(2, '7', 'niolll', 'niolll', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', '10', '2019-03-13 18:30:00');

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
(1, 'category updated', '', 2, '2019-03-15 17:57:50', 0),
(2, 'catgeory 2', '', 2, '2019-03-16 08:16:55', 1),
(3, 'web category', 'tyree', 2, '2019-03-26 02:54:21', 0);

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
(1, 'kakak', 'tmamma', 'ww.fb.com1', 'www.link.com', '2019-03-31 00:17:00', 0),
(2, 'tyree', 'sdfsdfsfdfsf000', 'sdfsfsf77', 'sfsfsf99', '2019-03-31 01:14:49', 1);

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
(1, 1, 12, 123, '2019-03-11 00:00:00', '0000-00-00 00:00:00', 0),
(2, 9, 67, 78, '0000-00-00 00:00:00', '2019-03-12 02:31:19', 0),
(3, 3, 23, 33, '0000-00-00 00:00:00', '2019-03-12 02:32:42', 1);

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
(1, 'T...,....12', 0, 'USD', '.........', 0, 300, 4, 50, 100, 100, '2016-09-15 00:00:00', 0, 3, 50, 0, 261, 30, 783, 40, 2349, 0, 7047, 0, 0, 0, 0, 100, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3, 0, 0, 0),
(2, 't..........', 1.2e27, 'USD', 't.......', 0, 7000, 49, 50, 100, 100, '2016-11-12 00:00:00', 0, 10, 15, 20, 15, 30, 15, 40, 15, 30, 20, 15, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 15, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 33, 3, 0, 21),
(3, 'Website', 3, 'USD', 'Website ', 0, 1000000, 1, 1, 300000, 100000, '2017-02-02 00:00:00', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 93, 0, 0, 3),
(9, 'Iranian rial', 0, 'IRR', 'Iranian rial', 0, 0, 0, 0, 0, 0, '2018-04-26 00:00:00', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(4, 'T...........', 0, 'USD', 'T..........', 0, 7000, 10, 50, 100, 100, '2017-02-10 00:00:00', 0, 10, 1, 10, 0, 10, 0, 10, 0, 10, 0, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 60, 4, 0, 70),
(5, 'T.............', 0, 'USD', 'T..........', 0, 7000, 0, 0, 30000, 1200, '2017-02-21 00:00:00', 0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 30, 0, 0, 50),
(6, 'T...........', 0, 'USD', '..........', 0, 7000, 0, 50, 100, 100, '2017-02-21 00:00:00', 0, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 30, 30, 0, 490),
(7, 'T...........', 0, 'USD', 'T............', 0, 7000, 0, 50, 100, 100, '2017-02-21 00:00:00', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 30, 40, 0, 1000),
(8, 'T.........', 0, 'USD', 'T...........', 0, 7000, 13, 50, 100, 100, '2017-02-26 00:00:00', 0, 7, 0, 7, 0, 7, 0, 7, 0, 7, 0, 7, 7, 7, 7, 7, 7, 7, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 59, 3, 0, 30),
(10, 'joker', 10, 'US-Dollar-USD', 'koker', 11, 0, 23, 23, 233, 20190310183429, '0000-00-00 00:00:00', 100, 200, 201, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3, 0, 0, 1, 0),
(11, 'dgfgdgdgfdg', 3533, 'US-Dollar-USD', 'dfgdgfdgdgdfgdg', 45, 0, 34, 345, 345, 0, '2019-04-06 00:00:00', 1, 1, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3, 3, 0, 0, 345),
(12, 'sdfsfsfsfsfs', 312313, 'US-Dollar-USD', 'fsfsfsfsf', 123131, 0, 23424, 23424, 23424, 0, '2019-04-06 00:00:00', 1, 2, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3, 2342, 123131, 0, 12313),
(13, 'marketpack', 12, 'Australian Dollar', 'test', 1, 0, 34, 11, 12, 0, '2019-04-06 00:00:00', 1, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2, 0, 3, 10, 10, 0, 11),
(14, 'packagemarketer', 1900, 'Australian Dollar', 'package from marketer', 12, 0, 90, 12, 12, 0, '2019-04-06 00:00:00', 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 3, 9, 12, 0, 12);

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
(1, 6, 'R.V', 21, 'USD', '2019-03-13', 1, 0, 0, 2, 'R.B'),
(2, 6, 'R.V', 21, 'USD', '2019-03-13', 1, 0, 0, 2, 'R.B'),
(3, 6, 'R.V', 21, 'USD', '2019-03-13', 1, 0, 0, 2, 'R.B'),
(4, 6, 'R.V', 21, 'USD', '2019-03-13', 1, 0, 0, 2, 'R.B'),
(5, 6, 'R.V', 21, 'USD', '2019-03-13', 1, 0, 0, 2, 'R.B'),
(6, 6, 'R.V', 21, 'USD', '2019-03-13', 1, 0, 0, 2, 'R.B'),
(7, 6, 'R.V', 21, 'USD', '2019-03-13', 1, 0, 0, 2, 'R.B'),
(8, 6, 'R.V', 21, 'USD', '2019-03-13', 1, 0, 0, 2, 'R.B'),
(9, 7, 'R.V', 0, 'USD', '2019-03-14', 1, 0, 0, 1, 'R.B'),
(10, 7, 'R.V', 0, 'USD', '2019-03-14', 1, 0, 0, 1, 'R.B'),
(11, 7, 'R.V', 12, 'Australian Dollar', '2019-04-06', 1, 0, 0, 14, 'R.B'),
(12, 7, 'R.V', 12, 'Australian Dollar', '2019-04-07', 1, 0, 0, 14, 'R.B');

-- --------------------------------------------------------

--
-- Table structure for table `product_master`
--

CREATE TABLE `product_master` (
  `id` int(15) NOT NULL,
  `product_name` varchar(155) NOT NULL,
  `product_image` varchar(255) NOT NULL,
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

INSERT INTO `product_master` (`id`, `product_name`, `product_image`, `category_id`, `sub_category_id`, `website`, `price`, `currency`, `created_date`, `is_deleted`) VALUES
(1, 'product1', '', 1, 1, '0', 12, '0', '2019-03-17 09:43:03', 1),
(2, 'product2', 'product_image/2acb28b1249f4400e0f0b7f918cf9d01.jpg', 1, 1, 'kakak', 12, 'rs', '2019-03-17 10:50:53', 0),
(3, 'montior', 'product_image/534bc5c03b3e94a97a0d38c916e1e1b6.jpg', 1, 1, 'kakak', 111119, 'rs', '2019-04-10 18:53:26', 0);

-- --------------------------------------------------------

--
-- Table structure for table `services`
--

CREATE TABLE `services` (
  `id` int(15) NOT NULL,
  `title` varchar(155) NOT NULL,
  `description` varchar(255) NOT NULL,
  `website` varchar(155) NOT NULL,
  `created_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `is_deleted` int(15) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `services`
--

INSERT INTO `services` (`id`, `title`, `description`, `website`, `created_date`, `is_deleted`) VALUES
(1, 'service toitleqwq212', 'fulmarggggggggg', 'tyree', '2019-03-19 18:16:56', 1),
(2, 'titke', 'asdadas', 'kakak', '2019-03-19 18:59:44', 0);

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
(1, 'subcategory1123', '', 1, 2, '2019-03-16 16:57:24', 0),
(2, 'web sub', 'tyree', 3, 2, '2019-03-26 03:24:58', 0);

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
(1, 'marketer', 'Arasham', '2'),
(2, 'marketer', 'leong8835', '89'),
(3, 'Leong8835', 'Leong1', '0'),
(4, 'Leong8835', 'Leong1 ', '0'),
(5, 'Leong1', 'Leong8835', '0'),
(6, 'Leong1', 'Leong8835', '0'),
(7, 'Leong1 ', 'Leong8835', '0'),
(8, 'Leong8835', 'Nicole20', '0'),
(9, 'Nicole20', 'Leong8835', '0'),
(10, 'Leong8835', 'Fang7411', '0'),
(11, 'roodabatoz', 'amiran', '0'),
(12, 'amiran', 'UNIVERSE', '0'),
(13, 'amiran', 'FARIA77', '0'),
(14, 'amiran', 'RAHA777', '0'),
(15, 'amiran', 'FATIFATI', '0'),
(16, 'amiran', 'OMID', '0'),
(17, 'omid', 'omid', '0'),
(18, 'omid', 'amiran', '0'),
(19, 'Saidamo', 'Saidamo2', '0'),
(20, 'omid', 'Advertising', '0'),
(21, 'omid', 'omidad', '0'),
(22, 'AMIRAN', 'AMIRANAD', '0'),
(23, 'Roodabatoz', 'Amiran', '0'),
(24, 'Roodabatoz', 'Amiranad', '0'),
(25, 'Roodabatoz', 'Arashamad', '0'),
(26, 'Roodabatoz', 'Joshuaad', '0'),
(27, 'Roodabatoz', 'Joshuaad', '0'),
(28, 'Roodabatoz', 'Joshuaad', '0'),
(29, 'Roodabatoz', 'Joshuaad', '0'),
(30, 'roodabatoz', 'leongad', '0'),
(31, 'roodabatoz', 'joshuaad', '0'),
(32, 'roodabatoz', 'joshuaad', '0'),
(33, 'joshuaad', 'leongad', '0'),
(34, 'Roodabatoz', 'Joshuaad', '0'),
(35, 'Roodabatoz', 'Roga', '0'),
(36, 'Roga', 'Rogaad', '0'),
(37, 'Roodabatoz', 'Joshuaad', '0'),
(38, 'Roodabatoz', 'Joshuaad', '0'),
(39, 'Joshuaad', 'Joshuaad1 ', '0'),
(40, 'roodabatoz', 'radvertising', '0'),
(41, 'AMIRAN', 'AMIRANAD', '0'),
(42, 'amiran', 'omid', '0'),
(43, 'universe', 'omid', '0'),
(44, 'amiranad', 'omid', '0'),
(45, 'leongad', 'omid', '0'),
(46, 'Roodabatoz', 'Advertising1', '0'),
(47, 'Advertising1', 'Omid', '0'),
(48, 'Advertising1', 'Omid', '0'),
(49, 'Roodabatoz', 'ROODABad15', '0'),
(50, 'Roodabatoz', 'Omidad', '0'),
(51, 'Roodabatoz', 'Amiranad', '0'),
(52, 'Amiranad', 'Omid', '0'),
(53, 'Roodabatoz', 'Amiranad', '0'),
(54, 'roodabatoz', 'roodabad22', '0'),
(55, 'roodabatoz', 'omidshop', '0'),
(56, 'roodabatoz', 'amiranshop', '0'),
(57, 'roodabatoz', 'arashshop', '0'),
(58, 'roodabatoz', 'mehdi38', '0'),
(59, 'roodabatoz', 'mehdi38', '0'),
(60, 'roodabatoz', 'mehdi38', '0'),
(61, 'Roodabatoz', 'Saidamo', '0'),
(62, 'saidamo', 'gme01', '0'),
(63, 'roodabatoz', 'gme01', '0'),
(64, 'roodabatoz', 'Alexpeyman2017ad', '0'),
(65, 'roodabatoz', 'joshuaad', '0'),
(66, 'roodabatoz', 'leongad', '0'),
(67, 'roodabatoz', 'kumar', '0'),
(68, 'roodabatoz', 'kumarad', '0'),
(69, 'roodabatoz', 'kumar', '0'),
(70, 'kumarad', 'Alexpeyman2017ad', '0'),
(71, 'roodabatoz', 'joshuaad', '0'),
(72, 'gme01', 'Saidamo', '0'),
(73, 'Roodabatoz', 'Sophiaad', '0'),
(74, 'mehdi38', 'rosemarket', '0'),
(75, 'mehdi38', 'rosemarket', '0'),
(76, 'Roodabatoz', 'Mehdi38', '0'),
(77, 'Roodabatoz', 'Alexpeyman2017', '0'),
(78, 'mehdi38', 'rosemarket', '0'),
(79, 'mehdi38', 'rosemarket', '0'),
(80, 'RoseMarket', 'mehdi38', '0'),
(81, 'Roodabatoz', 'Mehdi38', '0'),
(82, 'Roodabatoz', 'Mehdi38', '0'),
(83, 'Roodabatoz', 'Mehdi38', '0'),
(84, 'Roodabatoz', 'Mehdi38', '0'),
(85, 'roodabatoz', 'Alexpeyman2017 ', '0'),
(86, 'roodabatoz', 'mehdi38', '0'),
(87, 'adminadmin', 'Joshua', '0'),
(88, 'adminadmin', 'Joshua', '0'),
(89, 'adminadmin', 'Joshua', '0'),
(90, 'Joshua ', 'Sophiahui ', '0'),
(91, 'Joshua ', 'Kanlin93 ', '0'),
(92, 'Joshua ', 'Teressatang ', '0'),
(93, 'Joshua ', 'Soongweng ', '0'),
(94, 'Joshua ', 'Joshua1', '0'),
(95, 'Joshua ', 'Joshua2', '0'),
(96, 'Roodabatoz', 'Vk090670', '0'),
(97, 'Roodabatoz', 'Vk090670', '0'),
(98, 'Roodabatoz', 'Arasham', '0'),
(99, 'Leong8835', 'Leong1 ', '0'),
(100, 'roodabatoz', 'leong8835', '0'),
(101, 'roodabatoz', 'leong8835', '0'),
(102, 'omid', 'arasham', '0'),
(103, 'omid', 'arasham', '0'),
(104, 'arasham', 'omid', '0'),
(105, 'omid', 'arasham', '0'),
(106, 'Omid', 'Dayang', '0'),
(107, 'Omid', 'Dayang', '0'),
(108, 'Dayang', 'Omid', '0'),
(109, 'Omid', 'Chrishong', '0'),
(110, 'Joshua ', 'Omid', '0'),
(111, 'Joshua ', 'Omid', '0'),
(112, 'Roodabatoz', 'Joshua', '0'),
(113, 'Roodabatoz', 'Joshua', '0'),
(114, 'Roodabatoz', 'Joshua', '0'),
(115, 'Joshua ', 'Sagaidecruz ', '0'),
(116, 'Omid', 'Narges85', '0'),
(117, 'Omid', 'Narges85', '0'),
(118, 'Omid', 'Mahboo2017', '0'),
(119, 'Omid', 'Narges85', '0'),
(120, 'Omid', 'Narges85', '0'),
(121, 'Omid', 'Mahboo2017', '0'),
(122, 'Roodabatoz', 'Joshua', '0'),
(123, 'ACASHAFIE', 'Omid', '0'),
(124, 'Omid', 'Acashafie', '0'),
(125, 'Omid', 'Acashafie', '0'),
(126, 'Omid', 'Acashafie', '0'),
(127, 'Omid', 'Acashafie', '0'),
(128, 'Alexpeyman2017', 'Alexpeyman301', '0'),
(129, 'Alexpeyman2017', 'Alexpeyman301', '0'),
(130, 'Alexpeyman2017', 'Alexpeyman301', '0'),
(131, 'Alexpeyman2017', 'Tahmasebi', '0'),
(132, 'Alexpeyman2017', 'Alexpeyman302', '0'),
(133, 'Alexpeyman302', 'Shahin30M1', '0'),
(134, 'Alexpeyman302', 'Shahin30M1', '0'),
(135, 'Alexpeyman302', 'Afsaneh30M1', '0'),
(136, 'AlexPeyman302', 'Shayan30M1', '0'),
(137, 'AlexPeyman302', 'Saman30M1', '0'),
(138, 'alexpeyman302', 'Shayan30M2', '0'),
(139, 'alexpeyman302', 'Saman30M2', '0'),
(140, 'Alexpeyman302', 'Afsaneh30M2', '0'),
(141, 'Alexpeyman2017', 'Alexpeyman303', '0'),
(142, 'Alexpeyman2017', 'Fariba30M1', '0'),
(143, 'alexpeyman303', 'Masoumeh30M1', '0'),
(144, 'Alexpeyman2017', 'Alexpeyman304', '0'),
(145, 'Alexpeyman2017', 'Alexpeyman305', '0'),
(146, 'Alexpeyman2017', 'Alexpeyman306', '0'),
(147, 'Alexpeyman2017', 'Alexpeyman307', '0'),
(148, 'omid', 'Alexpeyman2017', '0'),
(149, 'Alexpeyman2017', 'Alexpeyman307', '0'),
(150, 'Alexpeyman307', 'Shahin330MC1', '0'),
(151, 'Alexpeyman307', 'Shahin330MC2', '0'),
(152, 'Alexpeyman307', 'Shahin330MC3', '0'),
(153, 'omid', 'arasham', '0'),
(154, 'omid', 'arasham', '0'),
(155, 'omid', 'arasham', '0'),
(156, 'omid', 'arasham', '0'),
(157, 'arasham', 'omid', '0'),
(158, 'arasham', 'omid', '0'),
(159, 'arasham', 'omid', '0'),
(160, 'arasham', 'omid', '0'),
(161, 'arasham', 'omid', '0'),
(162, 'arasham', 'omid', '0'),
(163, 'arasham', 'omid', '0'),
(164, 'arasham', 'omid', '0'),
(165, 'OMID', 'ARASHAM', '0'),
(166, 'Omid', 'Gym1', '0'),
(167, 'Omid', 'Gym2', '0'),
(168, 'Omid', 'RGym', '0'),
(169, 'Omid', 'RGym', '0'),
(170, 'RGym', 'Ashkangym', '0'),
(171, 'RGym', 'Joshuagym', '0'),
(172, 'Eshgham', 'RGym', '0'),
(173, 'RGym', 'Omid', '0'),
(174, 'Ashkangym', 'Omid', '0'),
(175, 'Joshuagym', 'Roodab1', '0'),
(176, 'Eshgham', 'Ashkangym', '0'),
(177, 'Omid', 'Herselharounian', '0'),
(178, 'Joshua', 'Joshua5', '0'),
(179, 'adminadmin', 'Omid', '0'),
(180, 'omid', 'joshua', '0'),
(181, 'Omid', 'NilaiMurniCatering', '0'),
(182, 'Omid', 'Acashafie', '0'),
(183, 'Omid', 'shahrahman49', '0'),
(184, 'Omid', 'Mahboo2017', '0'),
(185, 'Omid', 'Sailendra', '0'),
(186, 'Omid', 'Amiran', '0'),
(187, 'Omid', 'Joshua', '0'),
(188, 'Omid', 'Joshua', '0'),
(189, 'Omid', 'Yousofzadeh', '0'),
(190, 'Omid', 'Elsagasht', '0'),
(191, 'omid', 'jdslogistics', '0'),
(192, 'Omid', 'Mahsa', '0'),
(193, 'omid', 'elsagasht', '0'),
(194, 'omid', 'yousofzadeh', '0'),
(195, 'Elsagasht', 'Elsagasht', '0'),
(196, 'omid', 'hashemi', '0'),
(197, 'Omid', 'Sultantradingco', '0'),
(198, 'adminadmin', 'Omid', '0'),
(199, 'adminadmin', 'Omid', '0'),
(200, 'adminadmin', 'Omid', '0'),
(201, 'Omid', 'Melk', '0'),
(202, 'omid', 'iman', '0'),
(203, 'omid', 'meimei', '0'),
(204, 'Omid', 'leewayglobally', '0'),
(205, 'Omid', 'leewayglobally', '0'),
(206, 'Omid', 'leewayglobally', '0'),
(207, 'Omid', 'Jacklee', '0'),
(208, 'Omid', 'Sagaidecruz', '0'),
(209, 'Omid', 'Sagaidecruz', '0'),
(210, 'Yousofzadeh', 'shareife', '0'),
(211, 'Omid', 'Arlaadii', '0'),
(212, 'Omid', 'Rania', '0'),
(213, 'Omid', 'Rania', '0'),
(214, 'rania', 'zeinab', '0'),
(215, 'zeinab', 'rania', '0'),
(216, 'Joshua', 'Omid', '0'),
(217, 'Omid', 'Joshua', '0'),
(218, 'omid', 'zara', '0'),
(219, 'zara', 'omid', '0'),
(220, 'Omid', 'Meimei', '0'),
(221, 'Omid', 'AcaShafieWhealthPlanner', '0'),
(222, 'Omid', 'Joshua', '0'),
(223, 'Omid', 'Sophiahui', '0'),
(224, 'Yousofzadeh', 'Omid', '0'),
(225, 'Omid', 'Kanlin93', '0'),
(226, 'mahboo2017', 'omid', '0'),
(227, 'omid', 'mahboo2017', '0'),
(228, 'Joshua', 'Kanlinad', '0'),
(229, 'Omid', 'Cthanna', '0'),
(230, 'Joshua', 'Teressatang', '0'),
(231, 'Joshua', 'Leesham', '0'),
(232, 'Joshua', 'Wingkin', '0'),
(233, 'Joshua', 'Milianlee', '0'),
(234, 'Joshua', 'Cheekong', '0'),
(235, 'Joshua', 'Malai', '0'),
(236, 'omid', 'meimei', '0'),
(237, 'omid', 'meimei', '0'),
(238, 'Kanlin93', 'Joshua ', '0'),
(239, 'Sophiahui', 'Joshua ', '0'),
(240, 'Omid', 'Joshua', '0'),
(241, 'Omid', 'Inoti', '0'),
(242, 'Omid', 'Inoti', '0'),
(243, 'Omid', 'Joshua', '0'),
(244, 'Sophiahui', 'Joshua ', '0'),
(245, 'Teressatang', 'Joshua ', '0'),
(246, 'Omid', 'Joshua', '0'),
(247, 'Joshua', 'SocialAngels', '0'),
(248, 'Kanlin93', 'SocialAngels', '0'),
(249, 'Omid', 'Joshua', '0'),
(250, 'Joshua', 'SocialAngels', '0'),
(251, 'Omid', 'Inoti', '0'),
(252, 'inoti', 'Ehsan', '0'),
(253, 'Omid', 'Ehsan', '0'),
(254, 'Ehsan', 'Omid', '0'),
(255, 'Omid', 'Robatjain', '0'),
(256, 'Omid', 'Ehsan', '0'),
(257, 'Hashemi', 'ehsan', '0'),
(258, 'Omid', 'Pasaonline', '0'),
(259, 'Omid', 'Pasaonline', '0'),
(260, 'Omid', 'Joshua', '0'),
(261, 'Joshua', 'SocialAngels', '0'),
(262, 'Omid', 'Joshua', '0'),
(263, 'SocialAngels', 'Joshua ', '0'),
(264, 'Omid', 'Nicole', '0'),
(265, 'Omid', 'Yousofzadeh', '0'),
(266, 'Omid', 'ehsan', '0'),
(267, 'omid', 'mehrdadtabriz', '0'),
(268, 'omid', 'acashafie', '0'),
(269, 'omid', 'mehrdadat', '0'),
(270, 'omid', 'mehrdadat', '0'),
(271, 'Exim', 'Lisanawi ', '0'),
(272, 'Lisanawi', 'Michelle95', '0'),
(273, 'Lisanawi', 'Kenneth', '0'),
(274, 'Exim', 'Michelle95', '0'),
(275, 'Exim', 'Kenneth', '0'),
(276, 'Joshua', 'Sophiahui', '0'),
(277, 'Joshua', 'Teressatang', '0'),
(278, 'Joshua', 'Soongweng', '0'),
(279, 'omid', 'robatjain', '0'),
(280, 'mehrdadat', 'Omid', '0'),
(281, 'mehrdadat', 'Omid', '0'),
(282, 'adminadmin', 'Omid', '0'),
(283, 'OMID', 'arzanyadak', '0'),
(284, 'omid', 'arzanyadak', '0'),
(285, 'arzanyadak', 'rezarado', '0'),
(286, 'Joshua', 'Yeska', '0'),
(287, 'Acashafie ', 'AcaTPlus', '0'),
(288, 'omid', 'soma', '0'),
(289, 'Omid', 'Robatjain', '0'),
(290, 'Omid', 'Robatjain', '0'),
(291, 'robatjain', 'fatemeh', '0'),
(292, 'Omid', 'Robatjain', '0'),
(293, 'Joshua', 'Axon', '0'),
(294, 'Axon', 'joshua', '0'),
(295, 'Exim', 'Axon', '0'),
(296, 'Exim', 'Kael', '0'),
(297, 'Joshua', 'Loverna', '0'),
(298, 'Exim', 'Lovely', '0'),
(299, 'Joshua', 'Imilda', '0'),
(300, 'omid', 'laalfb', '0'),
(301, 'Joshua', 'Jane', '0'),
(302, 'Joshua', 'Isabel', '0'),
(303, 'Joshua', 'Lyzelmae19', '0'),
(304, 'Joshua', 'Kenski99', '0'),
(305, 'Exim', 'Joshua', '0'),
(306, 'Joshua', 'Erlina', '0'),
(307, 'laalfb', 'msh1349', '0'),
(308, 'laalfb', 'foad1363', '0'),
(309, 'Joshua', 'Lenzie', '0'),
(310, 'Omid', 'Iranproducts', '0'),
(311, 'adminadmin', 'IRANTABSTAXI', '0'),
(312, 'Joshua', 'Meriam', '0'),
(313, 'Joshua', 'Nelsonjohn', '0'),
(314, 'Joshua', 'Sabina', '0'),
(315, 'Sabina', 'Kathmandu', '0'),
(316, 'Joshua', 'Lingling', '0'),
(317, 'Sabina', 'Kathmandu', '0'),
(318, 'Sabina', 'Kathmandu', '0'),
(319, 'Sabina', 'Kathmandu', '0'),
(320, 'Joshua', 'CandyKim', '0'),
(321, 'Joshua', 'Camae', '0'),
(322, 'Sabina', 'Kathmandu', '0'),
(323, 'Joshua', 'Lervina', '0'),
(324, 'Joshua', 'Lervina', '0'),
(325, 'Joshua', 'Amanda', '0'),
(326, 'Joshua', 'Krystal', '0'),
(327, 'Joshua', 'NaiTomyumKrung', '0'),
(328, 'Omid', 'Mahdavirad', '0'),
(329, 'Sophiahui', 'Joshua', '0'),
(330, 'Joshua', 'Emmanuel', '0'),
(331, 'Joshua', 'Anchan', '0'),
(332, 'Joshua', 'JenGonzaga', '0'),
(333, 'Joshua', 'Emily', '0'),
(334, 'Omid', 'pejvakdanesh', '0'),
(335, 'Omid', 'Mahdavirad', '0'),
(336, 'Joshua', 'Chinemerem', '0'),
(337, 'Joshua', 'Camae', '0'),
(338, 'Joshua', 'Imilda', '0'),
(339, 'Joshua', 'AkiraAldamia', '0'),
(340, 'Joshua', 'Anthony', '0'),
(341, 'Joshua', 'Annie', '0'),
(342, 'Joshua', 'Antonio', '0'),
(343, 'Joshua', 'Anlord', '0'),
(344, 'Joshua', 'Mabel', '0'),
(345, 'Joshua', 'Stephen', '0'),
(346, 'Joshua', 'Zach', '0'),
(347, 'mahadavirad', 'Omid', '0'),
(348, 'Omid', 'Mahdavirad', '0'),
(349, 'Mahdavirad', 'abedi313', '0'),
(350, 'Mahdavirad', 'abedi313', '0'),
(351, 'Joshua', 'April', '0'),
(352, 'Omid', 'chatredanesh', '0'),
(353, 'Mahdavirad', 'Mahdavirad', '0'),
(354, 'Mahdavirad', 'Mahdavirad', '0'),
(355, 'Mahdavirad', 'Mahdavirad', '0'),
(356, 'Joshua', 'Bebeng', '0'),
(357, 'Joshua', 'Camae', '0'),
(358, 'Joshua', 'Sophiahui', '0'),
(359, 'Joshua', 'Anchan', '0'),
(360, 'Joshua', 'Yuliana', '0'),
(361, 'Mahdavirad', 'Fidar', '0'),
(362, 'Chinemerem', 'Joshua ', '0'),
(363, 'Omid', 'Mahour', '0'),
(364, 'Omid', 'Mehdiafshari ', '0'),
(365, 'Mehdiafshari', 'Ashkanbagherzadeh', '0'),
(366, 'Omid', 'Roodab1a', '0'),
(367, 'Omid', 'Roodab1a ', '0'),
(368, 'Omid', 'Roodab1h', '0'),
(369, 'Mehdiafshari', 'Omid', '0'),
(370, 'Ashkanbagherzadeh', 'Omid', '0'),
(371, 'Omid', 'Roodab1p', '0'),
(372, 'Omid', 'Roodab1p', '0'),
(373, 'Omid', 'Roodab1p2', '0'),
(374, 'Omid', 'Roodab1p3', '0'),
(375, 'Omid', 'Roodab1p12', '0'),
(376, 'Omid', 'Roodab1p5', '0'),
(377, 'Omid', 'Roodab1p1', '0'),
(378, 'Omid', 'Roodab1pt4', '0'),
(379, 'roodab1pt4', 'roodab1p5', '0'),
(380, 'roodab1pt4', 'roodab1p5', '0'),
(381, 'Joshua', 'Roodab9p', '0'),
(382, 'Joshua', 'Roodab9p1', '0'),
(383, 'Joshua', 'Roodab9p', '0'),
(384, 'Joshua', 'Roodab9p1', '0'),
(385, 'Omid', 'roodab1p6b1c7', '0'),
(386, 'roodab1p6b1c7', 'roodab1a3b3', '0'),
(387, 'roodab1p6b1c7', 'roodab1a2', '0'),
(388, 'roodab1p6b1c7', 'roodab1a6b2', '0'),
(389, 'roodab1p6b1c7', 'roodab1p5', '0'),
(390, 'roodab1p6b1c7', 'roodab1a10', '0'),
(391, 'roodab1p6b1c7', 'roodab1p10', '0'),
(392, 'roodab1a10', 'roodab1p6b1c7', '0'),
(393, 'Omid', 'Roodab1a2', '0'),
(394, 'Joshua', 'Roodab9p2', '0'),
(395, 'Omid', 'Roodab1p31', '0'),
(396, 'Omid', 'Roodab1p31', '0'),
(397, 'Omid', 'Roodab1tp', '0'),
(398, 'Omid', 'Roodab1pt7', '0'),
(399, 'roodab1pt7', 'roodab1pt8', '0'),
(400, 'roodab1pt7', 'roodab1pt9', '0'),
(401, 'roodab1p1', 'roodab1pt11', '0'),
(402, 'roodab1p1', 'roodab1pt10', '0'),
(403, 'Omid', 'Roodab1p1', '0'),
(404, 'omid', 'hoghoghkadeh', '0'),
(405, 'omid', 'hoghoghkadeh', '0'),
(406, 'omid', 'hoghoghkadeh', '0'),
(407, 'roodab1a2', 'roodab1p1b1t23', '0'),
(408, 'Omid', 'Farzanehkaffash', '0'),
(409, 'roodab1p1', 'roodab1p1b1t30', '0'),
(410, 'omid', 'roodab1p1b1t', '0'),
(411, 'roodab1p1', 'hoghoghkadeh', '0'),
(412, 'roodab1p1', 'hoghoghkadeh', '0'),
(413, 'roodab1p1', 'roodab1p1b1t3', '0'),
(414, 'roodab1p1b1t', 'Roodab1p1b1t30', '0'),
(415, 'roodab1p1b1t30', 'Omid', '0'),
(416, 'Omid', 'Roodab1p1b1t30', '0'),
(417, 'roodab1p1b1t', 'Roodab1p1b1t23', '0'),
(418, 'roodab1p1b1t', 'Roodab1p1b1t10', '0'),
(419, 'roodab1p1b1t', 'Roodab1p1b1t4', '0'),
(420, 'roodab1p1', 'roodab1t', '0'),
(421, 'roodab1p1', 'roodab1t', '0'),
(422, 'roodab1p1', 'roodab1t', '0'),
(423, 'Omid', 'Roodab1p1b1t7', '0'),
(424, 'roodab1p1', 'roodab1p1b1t10', '0'),
(425, 'roodab1p1', 'roodab1t', '0'),
(426, 'roodab1p1', 'roodab1p1b1t32', '0'),
(427, 'roodab1p1b1t32', 'roodab1p1b1t6', '0'),
(428, 'roodab1p1b1t10', 'roodab1p1b1t29', '0'),
(429, 'roodab1p1', 'roodab1gp1b1t', '0'),
(430, 'Omid', 'Roodab1p1', '0'),
(431, 'roodab1p1', 'roodab1gp1b1t', '0'),
(432, 'roodab1p1', 'roodab1k9b3d1', '0'),
(433, 'roodab1p1', 'roodab1p1b1t33', '0'),
(434, 'roodab1p1', 'roodab1k9b3s', '0'),
(435, 'roodab1p1', 'roodab1k9b3s', '0'),
(436, 'roodab1k9b3s', 'roodab1p1', '0'),
(437, 'roodab1p1b1t33', 'roodab1p1b1t7', '0'),
(438, 'roodab1p1', 'ghiyasi', '0'),
(439, 'roodab1p1', 'zahrabagheri', '0'),
(440, 'roodab1p1', 'roodab1p1b1t30', '0'),
(441, 'roodab1p1', 'roodab1p1b1t3', '0'),
(442, 'roodab1p1', 'roodab1p3b2', '0'),
(443, 'roodab1p1', 'roodab1p1b1t20', '0'),
(444, 'roodab1p1', 'alisafari', '0'),
(445, 'roodab1p1', 'roodab1k9b3d1', '0'),
(446, 'roodab1p1', 'roodab1k9b3d2', '0'),
(447, 'roodab1p1', 'bazarbozorgsemnan', '0'),
(448, 'roodab1p1', 'roodab1gp1b1t', '0'),
(449, 'roodab1p1', 'roodab1p1b1t46', '0'),
(450, 'roodab1p1', 'roodab1gp1b1t', '0'),
(451, 'Omid', 'Babakakbarnia', '0'),
(452, 'roodab1p1', 'roodab1gp1b1t', '0'),
(453, 'roodab1p1', 'roodab1gp1b1t', '0'),
(454, 'Omid', 'roodab1p1', '0'),
(455, 'roodab1p1', 'roodab1gp1b1t', '0'),
(456, 'roodab1p1', 'roodab1gp1b1t', '0'),
(457, 'Omid', 'Babakakbarnia', '0'),
(458, 'Joshua', 'Atomy', '0'),
(459, 'Omid', 'Nedaasi', '0'),
(460, 'nedaasi', 'omid', '0'),
(461, 'Joshua', 'Roodab9p1b1', '0'),
(462, 'Roodab9p1b1', 'Joshua', '0'),
(463, 'Joshua', 'Roodab9p1b1c1', '0'),
(464, 'Atomy', 'Joshua', '0'),
(465, 'Omid', 'Roodab9p1b', '0'),
(466, 'Omid', 'Roodab9p1b1', '0'),
(467, 'adminadmin', 'Omid', '300000'),
(468, 'Omid', 'Roodab9p1b1', '3'),
(469, 'Omid', 'Roodab9p1b1', '27'),
(470, 'Omid', 'Roodab9p1b1', '39'),
(471, 'Omid', 'Roodab9p1b1', '1'),
(472, 'Omid', 'Roodab9p1b2', '1'),
(473, 'Omid', 'Roodab9p1b', '1'),
(474, 'Omid', 'Roodab9p1b3', '1'),
(475, 'Omid', 'Roodab9p1b', '39'),
(476, 'Omid', 'Roodab9p1b', '39'),
(477, 'Roodab9p1b1', 'Roodab9p1b1t1', '3'),
(478, 'Omid', 'Iranshop', '3000'),
(479, 'Iranshop', 'Omid', '9'),
(480, 'Omid', 'Roodab3p1b', '9'),
(481, 'Omid', 'Roodab9p1bshop', '90'),
(482, 'Omid', 'Roodab9p1bvc1', '60'),
(483, 'iranshop', 'iranmarketing', '36'),
(484, 'Roodab9p1b1', 'Roodab9p1b1t1', '9'),
(485, 'iranshop', 'iranmarketing', '36'),
(486, 'Omid', 'Roodab3p2b', '90'),
(487, 'omid', 'roodab3p2b', '30'),
(488, 'omid', 'roodab3p2b', '30'),
(489, 'omid', 'roodab3p2b', '30'),
(490, 'Roodab3p2b', 'omid', '2'),
(491, 'Omid', 'Roodab9p1b1t1', '400'),
(492, 'Roodab9p1b1t1m2', 'Roodab9p1b1t1', '9'),
(493, 'Roodab9p1b1t1m3', 'Roodab9p1b1t1', '9'),
(494, 'iranshop', 'hoghoghkadeh1p', '168'),
(495, 'iranshop', 'hoghoghkadeh1p', '12'),
(496, 'Roodab9p1b', 'Roodab9p1b1', '78'),
(497, 'Omid', 'Roodab3p1b1c1t1', '290'),
(498, 'Roodab9p1b1t1m5', 'Joshua', '1'),
(499, 'Omid', 'Joshua', '300'),
(500, 'iranshop', 'roodab3p1b', '200'),
(501, 'Joshua', 'TimesSquareKL', '28'),
(502, 'Joshua', 'TimesSquareNYC', '10'),
(503, 'Joshua', 'MidValleyKL', '28'),
(504, 'Joshua', 'TheGardens', '28'),
(505, 'Joshua', 'PavilionKL', '28'),
(506, 'Joshua', 'Fahrenheit88', '28'),
(507, 'Joshua', 'Lot10', '28'),
(508, 'Omid', 'roodab3p1b1c1t7', '300'),
(509, 'roodab3p1b1c1t3m4', 'roodabiran', '1'),
(510, 'roodab3p1b', 'roodab3p1b4c1', '4'),
(511, 'roodab3p1b', 'roodab3p1b4c1t1', '62'),
(512, 'iranshop', 'roodab3p1b', '200'),
(513, 'roodab3p1b', 'roodab3p1b3c1', '3'),
(514, 'roodab3p1b', 'roodab3p1b3c1t1', '63'),
(515, 'Roodab9p1b1t1', 'Joshua', '100'),
(516, 'roodab3p1b', 'roodab3p1b13c1t1', '31'),
(517, 'roodab3p1b', 'roodab3p1b13c1t1', '6'),
(518, 'Omid', 'roodab3p1b1c1t7m27', '6'),
(519, 'Omid', 'roodab3p1b1c1t7m2', '6'),
(520, 'Omid', 'Joshua', '120000'),
(521, 'Omid', 'Joshua', '9000'),
(522, 'Omid', 'Joshua', '108025'),
(523, '1', 'sridhar', '19'),
(524, 'marketer', 'sridhar', '79'),
(525, 'marketer', 'sridhar', '1'),
(526, 'sridhar', 'romeo', '78'),
(527, 'sridhar', 'romeo', '30');

-- --------------------------------------------------------

--
-- Table structure for table `user_advertisements`
--

CREATE TABLE `user_advertisements` (
  `id` int(11) NOT NULL,
  `url` varchar(300) NOT NULL,
  `uploads` varchar(500) NOT NULL,
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

INSERT INTO `user_advertisements` (`id`, `url`, `uploads`, `user_id`, `ad_type`, `feature_of_ad`, `website_ad`, `iba_ad`, `is_deleted`, `created_at`) VALUES
(1, 'kakak', 'user_adv_uploads/a811936c885451af7e03793703077f63.mp4', '2', '2', 0, 1, 0, 0, '0000-00-00 00:00:00'),
(2, 'kakak', 'user_adv_uploads/d1d5d3a570721b328eef555a4401ec09.mp4', '2', '2', 0, 0, 0, 1, '2019-03-23 01:04:17'),
(3, 'kakak', 'user_adv_uploads/b64d84960168384d30d67bdbb887dd3a.mp4', '2', '1', 0, 0, 0, 0, '2019-03-24 17:56:36');

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

--
-- Dumping data for table `user_services`
--

INSERT INTO `user_services` (`id`, `service_name`, `user_id`, `created_at`) VALUES
(1, 'Social Marketing', 'roodabatoz', '2017-05-07 20:10:03'),
(113, '4. Own your personal link now.', 'roodab', '2017-06-02 09:05:11'),
(112, '3. MARKETER - We provide marketer to promote your products and services.', 'roodab', '2017-06-02 09:01:47'),
(404, 'You can advertise your website on this website. Contact: http://roodabatoz.com/store/Joshua/ ', 'SocialAngels', '2017-09-17 03:36:27'),
(361, 'Ø®Ø±ÛŒØ¯ ÙˆÙØ±ÙˆØ´ Ø±Ø·Ø¨ Ù…Ø¶Ø§ÙØªÛŒ Ø¨Ù… Ø¨Ø§ Ù†Ø§Ø²Ù„ØªØ±ÛŒÙ† Ù‚ÛŒÙ…Øª ÙˆØ¯Ø±Ø¨Ø³ØªÙ‡ Ø¨Ù†Ø¯ÛŒ Ù‡Ø§ÛŒ Ù…Ø®ØªÙ„Ù ÙˆÙ†Ú¯Ù‡Ø¯Ø§Ø±ÛŒ Ø¯Ø± Ø¨Ù‡ØªØ±ÛŒ Ø³Ø±Ø¯Ø®Ø§Ù†Ù‡ ÙˆØ§Ø±Ø³Ø§Ù„ Ø¨Ù‡ ØªÙ…Ø§Ù… Ù†Ù‚Ø§Ø', 'Yousofzadeh', '2017-09-07 11:36:22'),
(250, 'Ø¢Ù…ÙˆØ²Ø´ Ù‚ÙˆØ§Ù†ÛŒÙ† Ø´Ú©Ø±Ú¯Ø²Ø§Ø±ÛŒ', 'sajad', '2017-07-22 06:51:38'),
(457, 'Ø³Ø§Ø®Øª ÙˆØ¨ Ø³Ø§ÛŒØª Ø´Ø®ØµÛŒ', 'Hashemi', '2017-09-20 13:25:22'),
(458, 'Ø³Ø§Ø®Øª ÙˆØ¨ Ø³Ø§ÛŒØª Ø´Ø®ØµÛŒ', 'Hashemi', '2017-09-20 13:30:31'),
(17, 'Advertising ', 'Joshua', '2017-05-10 11:32:17'),
(18, 'Teaching ', 'Joshua', '2017-05-10 11:32:25'),
(27, 'Marketing ', 'Joshua', '2017-05-12 22:15:55'),
(20, 'ØªØ¯Ø±ÛŒØ³', 'Nahid', '2017-05-10 18:09:30'),
(21, 'Ù…Ø´Ø§ÙˆØ±Ù‡', 'Nahid', '2017-05-10 18:09:39'),
(22, 'Ú¯Ø±Ø¯Ø´Ú¯Ø±ÛŒ', 'Nahid', '2017-05-10 18:09:47'),
(23, 'ØªÙØ±ÛŒØ­ÛŒ', 'Nahid', '2017-05-10 18:09:54'),
(24, 'Doing trading', 'Wasim', '2017-05-11 06:32:01'),
(25, 'Important and export', 'Wasim', '2017-05-11 06:32:14'),
(26, 'Consultancy', 'Wasim', '2017-05-11 06:32:19'),
(29, 'Flower arrangement ', 'Sophiahui ', '2017-05-13 07:35:41'),
(30, 'Cooking', 'Sophiahui ', '2017-05-13 07:35:59'),
(31, 'Baby sitting ', 'Sophiahui ', '2017-05-13 07:36:22'),
(32, 'Decorative Cakes', 'Kanlin93', '2017-05-13 08:02:56'),
(33, 'Teaching ', 'Kanlin93', '2017-05-13 08:03:12'),
(36, 'My Services  is to help you succeed and become  Millionaire ', 'Joshua', '2017-05-14 03:49:01'),
(47, '1: Top up', 'NeracaGemilang', '2017-05-14 06:12:50'),
(48, '2: pay bills', 'NeracaGemilang', '2017-05-14 06:13:01'),
(139, '1) Own your personal link(Homepage) now and upload your products and services in roodabatoz.com. ', 'Joshua', '2017-06-04 09:44:09'),
(51, 'Pet product', 'Alansham84', '2017-05-15 06:40:55'),
(52, 'Pet boarding service', 'Alansham84', '2017-05-15 06:41:38'),
(56, '1: legal services', 'Vishal', '2017-05-15 11:47:25'),
(57, '2: legal consultant', 'Vishal', '2017-05-15 11:47:48'),
(58, '3: any type agreement', 'Vishal', '2017-05-15 11:47:59'),
(63, 'Www.roodabatoz.com ', 'Joshua', '2017-05-18 01:06:57'),
(71, 'Roodab Gym Independent Business Associate, Country IBA, City IBA, Place(condos) IBA ', 'Joshua', '2017-05-18 08:26:02'),
(65, '*Roodab Travel, Roodab Training, Roodab E-payment, Roodab Skills Training etc', 'Joshua', '2017-05-18 01:11:28'),
(67, 'Roodab IBA Area Service Center', 'Joshua', '2017-05-18 01:37:45'),
(68, 'Roodab IBA Training Franchise ', 'Joshua', '2017-05-18 01:38:56'),
(72, 'Ù…Ø´Ø§ÙˆØ±Ù‡ Ø¨Ø§Ø²Ø±Ú¯Ø§Ù†ÛŒ', 'Herselharounian', '2017-05-19 06:47:41'),
(73, 'Ù…Ø´Ø§ÙˆØ±Ù‡ Ù…ÙˆÙÙ‚ÛŒØª', 'Herselharounian', '2017-05-19 06:47:53'),
(74, 'Ù…Ø´Ø§ÙˆØ±Ù‡ Ù…ÙˆÙÙ‚ÛŒØª Ø¯Ø± Ú©Ø§Ø±', 'Herselharounian', '2017-05-19 06:48:09'),
(75, 'teaching', 'iman', '2017-05-19 09:30:52'),
(76, 'Consultancy', 'Kiran', '2017-05-20 09:56:16'),
(77, 'Advertising', 'Kiran', '2017-05-20 09:56:21'),
(78, 'Teaching', 'Kiran', '2017-05-20 09:56:26'),
(79, 'Ø¨Ø§Ø´Ú¯Ø§Ù‡ ÙˆØ±Ø²Ø´ÛŒ', 'Bashgah', '2017-05-20 10:10:06'),
(80, 'Ø¨Ø¯Ù†Ø³Ø§Ø²ÛŒ', 'Bashgah', '2017-05-20 10:10:14'),
(81, 'Ø±Ø²Ù…ÛŒ', 'Bashgah', '2017-05-20 10:10:21'),
(82, 'Teaching', 'Sailendra025', '2017-05-22 09:37:28'),
(83, 'Advertising', 'Sailendra025', '2017-05-22 09:37:33'),
(84, 'Consultancy', 'Sailendra025', '2017-05-22 09:37:38'),
(86, 'Golden hill resort Cameron highland homestay', 'Alansham84', '2017-05-24 03:07:06'),
(335, 'Ø¨Ø±Ø§ÛŒ ØªÙ…Ø±Ú©Ø² Ùˆ Ù…ÙˆÙÙ‚ÛŒØª Ø¨ÛŒØ´ØªØ± Ø¯Ø± Ú©Ø§Ø±ÙˆÙØ±ÙˆØ´ Ø¨Ø§ Ù…Ø§ Ø¨Ø§Ø´ÛŒØ¯', 'Zohreh', '2017-08-12 05:51:10'),
(89, 'Advertising ', 'Joshua2', '2017-05-24 08:38:01'),
(90, 'logistics', 'jdslogistics', '2017-05-25 12:25:19'),
(91, 'Consultancy', 'jdslogistics', '2017-05-25 12:41:18'),
(92, 'Shipping ', 'jdslogistics', '2017-05-25 12:41:30'),
(93, 'Clearing cargo', 'jdslogistics', '2017-05-25 12:41:54'),
(94, 'Marketing', 'jdslogistics', '2017-05-25 12:42:12'),
(95, ' Clearing cargo', 'jdslogistics', '2017-05-25 12:42:26'),
(275, 'If you need to top up your phone, kindly contact me', 'Sagaidecruz', '2017-07-26 09:27:07'),
(274, 'WhealthPlanner', 'acashafie', '2017-07-25 11:52:52'),
(99, 'Consultancy', 'Mehdi38', '2017-05-31 12:18:43'),
(100, 'Teaching', 'Mehdi38', '2017-05-31 12:18:47'),
(101, 'Marketing', 'Mehdi38', '2017-05-31 12:18:51'),
(102, 'Advertising', 'Mehdi38', '2017-05-31 12:18:56'),
(103, 'Gym training ', 'Mehdi38', '2017-05-31 12:19:00'),
(104, 'Gym consultancy ', 'Mehdi38', '2017-05-31 12:19:07'),
(105, 'Important and export', 'Paven', '2017-06-01 08:48:44'),
(106, 'Trading', 'Paven', '2017-06-01 08:48:52'),
(107, 'Consultancy', 'Paven', '2017-06-01 08:48:57'),
(108, 'Marketing', 'Paven', '2017-06-01 08:49:02'),
(109, 'Advertising', 'Paven', '2017-06-01 08:49:08'),
(144, '6) Roodab increase your well-known with roodabatoz.com. ', 'Joshua', '2017-06-04 09:50:46'),
(115, '6. Become IBA and start your business with us.', 'roodab', '2017-06-02 09:07:20'),
(116, '7. Upload your services and products in roodabatoz.com', 'roodab', '2017-06-02 09:17:21'),
(329, '09381164804', 'sajad1', '2017-08-10 07:45:28'),
(119, '10. Be a successful TOP UP Dealer.', 'roodab', '2017-06-02 09:39:50'),
(143, '5) Become IBA & start your business with Roodab. ', 'Joshua', '2017-06-04 09:49:23'),
(122, 'c. Apply Roodab Gym courses and be a certify Trainer.', 'roodab', '2017-06-02 09:49:51'),
(140, '2) Recruit your own marketers or we can provide marketers to promote your products and services. ', 'Joshua', '2017-06-04 09:45:42'),
(125, 'f. Pay all your utilities through roodabatoz.com', 'roodab', '2017-06-02 09:56:19'),
(142, '4) Apply Roodab Gym Courses & be a certified Trainer or Advisor. ', 'Joshua', '2017-06-04 09:48:16'),
(623, '1) You can advertise your website on this website. Contact: http://roodabatoz.com/store/Joshua/ ', 'WorldWar3', '2017-10-13 01:23:08'),
(128, 'i. Increase your wellknown from roodabatoz.com', 'roodab', '2017-06-02 11:57:15'),
(299, 'ÙØ±ÙˆØ´ Ø³Ø§Ø² Ùˆ Ø³ÛŒØ³ØªÙ… ØµØ¯Ø§Ø¨Ø±Ø¯Ø§Ø±ÛŒ Ùˆ Ø®Ø¯Ù…Ø§Øª Ø§Ø±Ú©Ø³Øª', 'Shabhaytalaee', '2017-08-05 13:16:01'),
(145, '7) IBA gain advertising profits from roodabatoz.com. ', 'Joshua', '2017-06-04 09:51:46'),
(146, '8) *Be a traveling agent & visit all over the world. ', 'Joshua', '2017-06-04 09:52:58'),
(147, '9) *Marketers encouraged to promote Roodab Computer, Scanner Mouse, Keyboard & Cellphone. ', 'Joshua', '2017-06-04 09:55:06'),
(1574, 'Ù…ÙˆØ±Ø¯ Ù†Ø¸Ø± Ø±Ø§ Ø¨Ù‡ Ø§ÛŒÙ† Ø´Ù…Ø§Ø±Ù‡ Ø­Ø³Ø§Ø¨ ÙˆØ§Ø±ÛŒØ² Ú©Ù†ÛŒØ¯', 'babakakbarnia', '2018-09-26 15:16:58'),
(150, '11) *Roodab Dates are readied for import & distribute by Marketers in Malaysia.  ', 'Joshua', '2017-06-06 00:00:53'),
(152, 'Consultancy', 'AcaShafieWhealthPlanner', '2017-06-10 10:28:34'),
(154, 'Roodab ATM Cards', 'Sagaidecruz', '2017-06-20 03:50:32'),
(155, 'Dripper sprinkler', 'Sagaidecruz', '2017-06-20 04:25:25'),
(1575, 'Û¶Û²Û·Û³Û¸Û±Û±Û±Û°Û²Û±Û°Û³Û·Û³Û³', 'babakakbarnia', '2018-09-26 15:18:03'),
(159, 'Advertising ', 'Joshuaad ', '2017-07-03 00:22:09'),
(160, 'Teaching ', 'Joshuaad ', '2017-07-03 00:22:29'),
(161, 'Roodab physical ATM Merchants ', 'Joshuaad1', '2017-07-03 00:36:44'),
(162, 'Roodab ATM card', 'Joshuaad1', '2017-07-03 00:37:00'),
(163, 'Roodab Gym IBA Area Center', 'Joshuagym', '2017-07-03 02:31:34'),
(164, 'Roodab Gym Trainer & Advisor', 'Joshuagym', '2017-07-03 02:32:15'),
(334, 'Ø¢Ù…ÙˆØ²Ø´ Ù‡Ø§ÛŒ Ù…ÙˆÙÙ‚ÛŒØª', 'Zohreh', '2017-08-12 05:50:09'),
(167, 'Roodab ATM card', 'Joshua2', '2017-07-03 04:04:57'),
(168, 'Www.roodabatoz.com ', 'Joshua3', '2017-07-03 05:54:00'),
(169, 'Teaching ', 'Joshua3', '2017-07-03 05:54:26'),
(170, 'Roodab ATM card', 'Joshua4', '2017-07-03 09:31:25'),
(171, 'Roodab ATM card', 'Joshua5', '2017-07-03 09:47:38'),
(172, 'Roodab International Simcard ', 'Joshua5', '2017-07-03 09:48:03'),
(173, '3 tons Lorry Hire ', 'Malai', '2017-07-05 13:03:00'),
(176, '1. Approved by Bank Negara Malaysia to issue e-money (prepaid card) and provide merchant acquiring by Bank Negara Malaysia.', 'roodabatm', '2017-07-09 11:14:22'),
(177, '2. Funds loaded to the prepaid card are deposited to Trust Account with CIMB Bank Trustee.', 'roodabatm', '2017-07-09 11:16:11'),
(175, ' ROODAB ATM  Visa  Cards', 'roodabatm', '2017-07-09 08:36:40'),
(178, '3. Regulated by Bank Negara Malaysia  (FSA 2013) and compliant to Visa International Operating Rules.', 'roodabatm', '2017-07-09 11:16:59'),
(179, '4. Compliant to PCI DSS Level 1 â€“ cardholder data are secured.', 'roodabatm', '2017-07-09 11:17:34'),
(180, '5. For individual applicant whom age 18 and above.', 'roodabatm', '2017-07-09 11:18:21'),
(181, '6. Open for citizen of Malaysia and individuals residing in Malaysia with valid travel documentation.', 'roodabatm', '2017-07-09 11:19:57'),
(182, '7. RM 10,000 wallet size.', 'roodabatm', '2017-07-09 11:20:29'),
(183, '8. RM 2.50 monthly fee â€“ charged to individual card.', 'roodabatm', '2017-07-09 11:21:09'),
(184, '9. RM 1 per withdrawal at Visa ATM worldwide.', 'roodabatm', '2017-07-09 11:21:38'),
(185, '10. Card can be used for payment at any POS terminal accepting Visa Card or withdrawal at any ATM accepting Visa Card.', 'roodabatm', '2017-07-09 11:22:37'),
(186, '11. Perform international remittance, domestic money transfer, airtime top-up, electronic payment, etc. via mobile phone.', 'roodabatm', '2017-07-09 11:23:17'),
(187, 'Roodab ATM card', 'KamYing1', '2017-07-10 07:58:32'),
(188, 'Roodab ATM card machine ', 'KamYing1', '2017-07-10 07:58:46'),
(189, 'Roodab physical ATM merchants ', 'KamYing1', '2017-07-10 07:59:24'),
(190, 'http://www.bnm.gov.my/?ch=ps&pg=ps_regulatees#emoney', 'KamYing1', '2017-07-10 08:01:12'),
(191, 'Tang Chee Wah: https://www.finexuscards.com', 'KamYing1', '2017-07-10 08:01:42'),
(192, 'Roodab Gym Trainer & Advisor', 'KamYing1', '2017-07-10 09:26:59'),
(194, 'ÙØ±ÙˆØ´ Ú†Ø§ÛŒ ØµØ¯Ø¯Ø±ØµØ¯ Ø§Ø±Ú¯Ø§Ù†ÛŒÚ© ÙˆØ·Ø¨ÛŒØ¹ÛŒ Ùˆ ', 'melk', '2017-07-14 12:43:03'),
(195, 'Ø¯  ÙˆØ¯Ø³ØªÚ†ÛŒÙ† Ø¨Ø¯ÙˆÙ†  Ù…ÙˆØ§Ø¯ Ø§ÙØ²ÙˆØ¯Ù†ÛŒ ÙˆØ¨Ø¯ÙˆÙ† Ø¢Ø³Ø§Ù†Ø³  Ú†Ø§ÛŒ ØµØ¯Ø¯Ø±ØµØ¯ Ø§Ø±Ú¯Ø§Ù†ÛŒÚ© ÙˆØ·Ø¨ÛŒØ¹ÛŒ Ùˆ Ø®Ø§Ù„Øµ Ø§Ø² Ø¨Ø§ØºØ§Øª Ùˆ Ú©ÙˆÙ‡Ù¾Ø§ÛŒÙ‡ Ù‡Ø§ ÛŒ Ø§Ø³ØªØ§Ù† ', 'melk', '2017-07-14 14:36:10'),
(196, '  Ú†Ø§ÛŒ ØµØ¯Ø¯Ø±ØµØ¯ Ø§Ø±Ú¯Ø§Ù†ÛŒÚ© ÙˆØ·Ø¨ÛŒØ¹ÛŒ Ùˆ Ø®Ø§Ù„Øµ Ø§Ø² Ø¨Ø§ØºØ§Øª Ùˆ Ú©ÙˆÙ‡Ù¾Ø§ÛŒÙ‡ Ù‡Ø§ ÛŒ Ø§Ø³ØªØ§Ù† ', 'melk', '2017-07-14 14:38:01'),
(1201, 'ØªÙˆØ²ÛŒØ¹ Ùˆ Ú¯Ø³ØªØ±Ø´ Ù¾ÙˆØ²Ù‡Ø§ÛŒ Ø¨Ø§Ù†Ú©ÛŒ ØªØ®ÙÛŒÙÛŒ', 'Mehdiafshari', '2018-05-11 10:56:36'),
(595, '1) You can advertise your website on this website. Contact: http://roodabatoz.com/store/Joshua/ ', 'KLProperty', '2017-10-08 07:27:35'),
(336, 'Tour & Transport Service', 'mahboo2017', '2017-08-12 09:10:30'),
(294, ' Ø§ÙˆÙ„ÛŒÙ† Ù…Ø§Ø¬Ø±Ø§ÛŒ Ø¹Ø´Ù‚ÛŒâ€ŒØ§ÛŒ Ú©Ù‡ Ø¯Ø± Ø§ÛŒÙ† Ø¬Ù‡Ø§Ù† Ø¨Ø§ÛŒØ¯ Ø¢Ù†â€ŒØ±Ø§ Ø¨Ù‡ Ú©Ù…Ø§Ù„ Ø¨Ø±Ø³Ø§Ù†ÛŒÙ…    Ø±Ø§Ø¨Ø·Ù‡ Ø¨Ø§ Ø®ÙˆØ¯Ù…Ø§Ù† Ø§Ø³Øª.     ØªÙ†Ù‡Ø§ Ù¾Ø³ Ø§Ø² Ù…ÙˆÙÙ‚ÛŒØª Ø¯Ø± Ø§', 'Myhopeishere', '2017-07-31 10:09:07'),
(220, 'Training', 'sailendra', '2017-07-17 10:59:20'),
(594, '1) You can advertise your website on this website. Contact: http://roodabatoz.com/store/Joshua/ ', 'KualaLumpurTravelAgency', '2017-10-08 07:08:22'),
(590, 'I am designer', 'Nicole', '2017-10-06 12:12:43'),
(218, 'Teaching', 'sailendra', '2017-07-16 09:36:17'),
(219, 'Gftctcrctctctvt', 'azeem', '2017-07-17 10:34:25'),
(221, 'Training', 'sailendra', '2017-07-17 10:59:36'),
(319, 'Ú©Ø§ÙÛŒ Ø´Ø§Ø¯ÛŒ', 'Omidman', '2017-08-08 21:51:01'),
(241, 'Ø¢Ù‡ Ù†Ú©Ø´ Ø²Ø­Ù…Øª Ø¨Ú©Ø´!Ø´Ø¯ Ø´Ø¯ØŒÙ†Ø´Ø¯ ØŒÙ…Ù†Øª Ù†Ú©Ø´', 'mahsa', '2017-07-21 04:42:43'),
(586, '1) You can advertise your website on this website. Contact: http://roodabatoz.com/store/Joshua/ ', 'Auto', '2017-10-05 05:05:42'),
(288, 'mohandes omran', 'zara', '2017-07-30 11:13:00'),
(289, 'Ø¯ÛŒØ¬ÛŒ...ÙˆÙ…ÙˆØ³ÛŒÙ‚ÛŒ Ø²Ù†Ø¯Ù‡', 'Milad', '2017-07-31 07:12:59'),
(285, 'Ø³Ø§Ø®ØªÙ† ÙˆØ¨Ø³Ø§ÛŒØª Ø¯Ø± Ú©Ù…ØªØ± Ø§Ø² ÛŒÚ© Ø¯Ù‚ÛŒÙ‚Ù‡', 'rania', '2017-07-29 10:34:38'),
(365, 'ÙØ±ÙˆØ´ Ø¹Ù…Ø¯Ù‡ Ø®Ø±Ù…Ø§', 'yousofzadeh', '2017-09-08 07:19:50'),
(362, 'Ø®Ø±ÛŒØ¯ ÙˆÙØ±ÙˆØ´ Ø±Ø·Ø¨ ÙˆØ®Ø±Ù…Ø§ÛŒ Ù…Ø¶Ø§ÙØªÛŒ Ø¨Ù… Ø¨Ø§ Ù†Ø§Ø²Ù„ØªØ±ÛŒÙ† Ù‚ÛŒÙ…Øª ÙˆØ¯Ø±Ø¨Ø³ØªÙ‡ Ø¨Ù†Ø¯ÛŒ Ù‡Ø§ÛŒ Ù…Ø®ØªÙ„Ù ÙˆÙ†Ú¯Ù‡Ø¯Ø§Ø±ÛŒ Ø¯Ø± Ø¨Ù‡ØªØ±ÛŒ Ø³Ø±Ø¯Ø®Ø§Ù†Ù‡ ÙˆØ§Ø±Ø³Ø§Ù„ Ø¨Ù‡ ØªÙ', 'Yousofzadeh', '2017-09-07 14:21:54'),
(242, 'Ø¢Ù‡ Ù†Ú©Ø´ Ø²Ø­Ù…Øª Ø¨Ú©Ø´!Ø´Ø¯ Ø´Ø¯ØŒÙ†Ø´Ø¯ ØŒÙ…Ù†Øª Ù†Ú©Ø´', 'mahsa', '2017-07-21 04:46:09'),
(248, 'Ø®Ø±ÛŒØ¯ Ùˆ ÙØ±ÙˆØ´ Ø®Ø±Ù…Ø§ÛŒ Ù…Ø¶Ø§ÙØªÛŒ Ø¨Ù… .', 'Amandade', '2017-07-21 08:59:59'),
(249, 'Ø®Ø±ÛŒØ¯ Ùˆ ÙØ±ÙˆØ´ Ø®Ø±Ù…Ø§ÛŒ Ù…Ø¶Ø§ÙØªÛŒ Ø¨Ù… ', 'Amandade', '2017-07-21 09:00:02'),
(363, 'Ø´Ø±Ú©Øª Ø­Ù…Ù„ ÙˆÙ†Ù‚Ù„ ÙˆØ­ÛŒØ¯ÛŒØ²Ø¯....Ø­Ù…Ù„ Ú©Ø§Ù„Ø§ Ø¨Ù‡ ØªÙ…Ø§Ù… Ù†Ù‚Ø§Ø· Ú©Ø´ÙˆØ±...ÛŒØ²Ø¯ Ù¾Ø§ÛŒØ§Ù†Ù‡ Ø¨Ø§Ø±Ø¨Ø±ÛŒ ØºØ±ÙÙ‡ Ø´Ù…Ø§Ø±Ù‡1', 'matinshad', '2017-09-07 14:31:59'),
(320, 'Ù…Ø±Ø¨ÛŒ Ø¨Ø§Ø´Ú¯Ø§Ù‡', 'Mehrdad', '2017-08-09 05:31:49'),
(235, 'House Rent', 'Derkleon', '2017-07-19 08:43:23'),
(236, 'House sell', 'Derkleon', '2017-07-19 08:43:40'),
(260, 'Ú©Ø§ÙÛŒ Ø´Ø§Ø¯ÛŒ', 'Omidman', '2017-07-23 21:26:40'),
(272, 'Photographer', 'acashafie', '2017-07-25 11:12:31'),
(364, 'Ø®Ø±ÛŒØ¯ ÙˆÙØ±ÙˆØ´ Ø±Ø·Ø¨ ÙˆØ®Ø±Ù…Ø§ÛŒ Ù…Ø¶Ø§ÙØªÛŒ Ø¨Ù… Ø¨Ø§ Ù†Ø§Ø²Ù„ØªØ±ÛŒÙ† Ù‚ÛŒÙ…Øª ÙˆØ¯Ø±Ø¨Ø³ØªÙ‡ Ø¨Ù†Ø¯ÛŒ Ù‡Ø§ÛŒ Ù…Ø®ØªÙ„Ù ÙˆÙ†Ú¯Ù‡Ø¯Ø§Ø±ÛŒ Ø¯Ø± Ø¨Ù‡ØªØ±ÛŒ Ø³Ø±Ø¯Ø®Ø§Ù†Ù‡ ÙˆØ§Ø±Ø³Ø§Ù„ Ø¨Ù‡ ØªÙ', 'Yousofzadeh', '2017-09-08 02:45:27'),
(263, 'O-10 ocean collagen ', 'leewayglobally', '2017-07-24 04:08:07'),
(1194, 'Anda boleh melelak iklan di website ini', 'Pohsiew', '2018-04-29 16:28:45'),
(1199, 'Do you wanna know how to have your own website with 3 USD only? if yes let me know.', 'omid', '2018-05-07 12:32:33'),
(1196, 'Saya  boleh membantu anda menjadi jutawan', 'Pohsiew', '2018-04-29 16:35:38'),
(1202, 'Ø¨Ø§Ø²Ø§Ø±ÛŒØ§Ø¨ÛŒ Ùˆ Ø¬Ø°Ø¨ Ù†ÛŒØ±ÙˆÛŒ ÙØ¹Ø§Ù„ Ùˆ Ø§Ø±Ø§Ø¦Ù‡ Ø¢Ù…ÙˆØ²Ø´ Ù‡Ø§ÛŒ Ø¨Ø§Ø²Ø§Ø±ÛŒØ§Ø¨ÛŒ ', 'Mehdiafshari', '2018-05-11 10:57:59'),
(1205, 'Ø·Ø±Ø§Ø­ÛŒ ÙˆØ¨ Ø³Ø§ÛŒØª ', 'Mehdiafshari', '2018-05-12 14:48:17'),
(1204, 'Ø¨Ø§Ø´Ú¯Ø§Ù‡ Ù…Ø´ØªØ±ÛŒØ§Ù† Ø³Ø§ÛŒÙ…Ø§Ù†', 'Mehdiafshari', '2018-05-11 11:54:46'),
(943, 'Ù†Ù…Ø§ÛŒÙ†Ø¯Ù‡ Ø²Ù†Ø¬Ø§Ù† Ø¨Ø±Ø§ÛŒ Ø±Ø²Ùˆ Ùˆ Ø®Ø±ÛŒØ¯ÙˆÙˆÚ†Ø± Ùˆ Ø·Ø±Ø§Ø­ÛŒ Ø³Ø§ÛŒØª', 'Roodabiran6', '2018-01-26 16:36:25'),
(944, '2) You can advertise your Jobs here. Please contact the nearest IBA or Area Center.', 'StylishMen', '2018-01-27 15:11:47'),
(276, 'Moral values', 'Decruz', '2017-07-26 10:26:09'),
(277, 'I am happy', 'Sagaidecruz', '2017-07-26 10:32:01'),
(278, 'Ø®Ø¯Ø§ÛŒØ§ Ø³Ù¾Ø§Ø³Ú¯Ø²Ø§Ø±Ù… Ø³Ù¾Ø§Ø³Ú¯Ø²Ø§Ø±Ù… Ø³Ù¾Ø§Ø³Ú¯Ø²Ø§Ø±Ù…', 'Omid1', '2017-07-27 07:07:39'),
(279, 'Ø§Ù…Ø±ÙˆØ² Ø´Ø±ÙˆØ¹ Ú©Ø±Ø¯Ù… Ø¨Ù‡ Ù†ÙˆØ´ØªÙ† Ø¯Ø§Ø®Ù„ Ø§ÛŒÙ† ÙˆØ¨Ø³Ø§ÛŒØªÙ… ', 'Omid1', '2017-07-27 07:08:11'),
(280, 'Ø§Ù…Ø±ÙˆØ² 27/07/2017 Ù‡Ø³Øª Ø³Ø§Ø¹Øª 15:09', 'Omid1', '2017-07-27 07:09:08'),
(295, '1) TOP UP', 'MEIMEI', '2017-08-01 11:34:59'),
(296, '2) ORDERING ROODAB DATES', 'MEIMEI', '2017-08-01 11:35:20'),
(297, 'My life is so much beautiful ', 'Myhopeishere', '2017-08-01 12:08:58'),
(293, 'ðŸŒ¹ðŸŒ¹ðŸŒ¹ðŸŒ¹ðŸŒ¹ðŸŒ¹ðŸŒ¹  Ø§ÙˆÙ„ÛŒÙ† Ù…Ø§Ø¬Ø±Ø§ÛŒ Ø¹Ø´Ù‚ÛŒâ€ŒØ§ÛŒ Ú©Ù‡ Ø¯Ø± Ø§ÛŒÙ† Ø¬Ù‡Ø§Ù† Ø¨Ø§ÛŒØ¯ Ø¢Ù†â€ŒØ±Ø§ Ø¨Ù‡ Ú©Ù…Ø§Ù„ Ø¨Ø±Ø³Ø§Ù†ÛŒÙ…ØŒ Ø±Ø§Ø¨Ø·Ù‡ Ø¨Ø§ Ø®ÙˆØ¯Ù…Ø§Ù† Ø§Ø³Øª.  ØªÙ†Ù‡Ø§ Ù¾Ø³ ', 'Myhopeishere', '2017-07-31 10:08:10'),
(389, '3: Facebook. Roodab Gym  https://www.facebook.com/RoodabGYM/', 'rooDABGYM', '2017-09-13 08:40:52'),
(327, 'Ø³Ù¾Ø§Ø³Ú¯Ø²Ø§Ø±Ø§Ù†', 'Ghazal', '2017-08-09 13:51:24'),
(326, 'Ø³Ù¾Ø§Ø³Ú¯Ø²Ø§Ø±Ù… Ú¯Ø°Ø§Ø±ÛŒ', 'Ghazal', '2017-08-09 13:50:59'),
(325, 'Ø³Ù¾Ø§Ø³Ú¯Ø²Ø§Ø±Ù…', 'Ghazal', '2017-08-09 13:50:41'),
(306, 'https://telegram.me/iranturkie', 'Elsagasht', '2017-08-06 23:34:02'),
(307, 'https://telegram.me/iranturkie', 'Elsagasht', '2017-08-06 23:34:11'),
(313, 'Ø§Ø±ØªÙ‚Ø§ Ú©ÛŒØ¨ÙˆØ±Ø¯Ù‡Ø§ÛŒ Korg pa50.80.1x Ø¨Ù‡ pa3x', 'Shabhaytalaee', '2017-08-08 01:46:00'),
(317, 'Lymphatic Drainage Therapy ', 'sammy', '2017-08-08 08:52:57'),
(318, 'Health Diagnostic with QRMA', 'sammy', '2017-08-08 09:20:48'),
(321, 'Ù…Ø±Ø¨ÛŒ Ú©ÙˆÙ†Ú¯ÙÙˆ', 'Mehrdad', '2017-08-09 05:31:58'),
(322, 'I am designer', 'Melika', '2017-08-09 11:24:03'),
(323, 'Ù…Ù† Ø·Ø±Ø§Ø­ Ù‡Ø³ØªÙ…', 'Melika', '2017-08-09 11:24:18'),
(324, 'Ø·Ø±Ø§Ø­ÛŒ Ú©Ø§Ø±Øª ÙˆÛŒØ²ÛŒØªØŒ Ø¨Ø±ÙˆØ´ÙˆØ±ØŒ ÙˆØ¨Ø³Ø§ÛŒØª â€Œ', 'Melika', '2017-08-09 11:24:44'),
(330, 'sajad', 'sajad1', '2017-08-10 07:46:03'),
(331, 'Body Composition Analysis', 'sammy', '2017-08-11 09:34:58'),
(332, 'Total Health & Diet Program', 'sammy', '2017-08-11 09:36:25'),
(333, 'Total Health & Diet Program', 'sammy', '2017-08-11 09:36:44'),
(337, 'Health Store', 'sammy', '2017-08-15 07:38:04'),
(338, 'Health Management to corporate and public', 'sammy', '2017-08-15 08:00:30'),
(339, 'Korean Gold Jewellery', 'IrismithJewellery', '2017-08-15 12:31:55'),
(340, 'Ù…Ø±Ú©Ø² Ú¯Ø±Ø¯Ø´Ú¯Ø±ÛŒ', 'Dehbakri', '2017-08-17 12:23:49'),
(341, 'Ø¨Ù‡ØªØ±ÛŒÙ† Ù…Ú©Ø§Ù† Ø¨Ø±Ø§ÛŒ Ú¯Ø±Ø¯Ø´Ú¯Ø±ÛŒ', 'Dehbakri', '2017-08-17 12:24:06'),
(342, 'Ù…Ø±Ø¨ÛŒ Ø¨Ø§Ø´Ú¯Ø§Ù‡', 'Iman1', '2017-08-17 12:35:33'),
(343, 'Ù…Ø´Ø§ÙˆØ±Ù‡', 'Ali1', '2017-08-17 12:43:39'),
(344, 'Ù…Ø´Ø§ÙˆØ±Ù‡ Ú¯Ø±Ø¯Ø´Ú¯Ø±ÛŒ Ø¯Ù‡Ø¨Ú©Ø±ÛŒ', 'Ghasmi', '2017-08-17 12:55:11'),
(345, 'Ù…Ø´Ø§ÙˆØ±Ù‡ Ù…Ù†Ø§Ø¨Ø¹ Ø·Ø¨ÛŒØ¹ÛŒ', 'Ghasmi', '2017-08-17 12:55:23'),
(346, 'Ù…Ø´Ø§ÙˆØ±Ù‡ Ù…ÙˆÙÙ‚ÛŒØª', 'Elham', '2017-08-17 14:52:27'),
(347, 'Ù…Ø´Ø§ÙˆØ±Ù‡ Ø§Ø±ØªØ¨Ø§Ø·Ø§Øª', 'Elham', '2017-08-17 14:52:51'),
(541, '1) You can advertise your website on this website. Contact: http://roodabatoz.com/store/Joshua/ ', 'CyberSecurity', '2017-09-27 07:55:06'),
(387, '1: Website. Roodab Gym http://roodabatoz.com/store/roodabgym/', 'rooDABGYM', '2017-09-13 08:40:04'),
(388, '2: Instagram. Roodab Gym  https://www.instagram.com/roodab.gym/', 'rooDABGYM', '2017-09-13 08:40:27'),
(542, '1) You can advertise your website on this website. Contact: http://roodabatoz.com/store/Joshua/ ', 'Medicine', '2017-09-27 08:06:30'),
(516, 'Ù…Ø±Ø¬Ø¹ ØªÙ…Ø§Ù… Ø³Ø§ÛŒØª Ù‡Ø§ÛŒ Ø±ÙˆØ¯Ø§Ø¨ Ø¯Ø± Ø§ÛŒØ±Ø§Ù†', 'Iran', '2017-09-24 21:09:08'),
(366, 'ÙØ±ÙˆØ´ Ø¹Ù…Ø¯Ù‡ Ø®Ø±Ù…Ø§', 'yousofzadeh', '2017-09-08 07:20:13'),
(589, '1) You can advertise your website on this website. Contact: http://roodabatoz.com/store/Joshua/ ', 'Help', '2017-10-06 09:40:01'),
(588, '                       Tabriz 2018 .   Ø´Ù‡Ø± Ø§ÛŒÙ†ØªØ±Ù†ØªÛŒ ØªØ¨Ø±ÛŒØ²                                                                ______________                    Ø®Ø¯Ù…Ø§Øª ØŒÙ…Ø­ØµÙˆÙ„Ø§Øª Ù', 'Tabriz', '2017-10-05 19:04:55'),
(515, 'Ø§ÙˆÙ„ÛŒÙ† Ø³Ø§ÛŒØª Ø±Ø³Ù…ÛŒ Ø´Ø±Ú©Øª Ø±ÙˆØ¯Ø§Ø¨ Ø¯Ø± Ø§ÛŒØ±Ø§Ù†', 'Iran', '2017-09-24 21:07:53'),
(512, '1) You can advertise your website on this website. Contact: http://roodabatoz.com/store/Joshua/ ', 'African', '2017-09-24 09:42:59'),
(514, 'Ø³Ø§ÛŒØª Ù…Ø±Ø¬Ø¹ Ø¨Ø±Ø§ÛŒ ØªÙ…Ø§Ù…ÛŒ Ù…Ø´Ø§ØºÙ„ Ùˆ Ø§ÙØ±Ø§Ø¯ Ø¬Ù‡Ø§Ù† Ø¨Ø§ Ø§Ø³ØªÙØ§Ø¯Ù‡ Ø§Ø² Ø®Ø¯Ù…Ø§Øª Ø¯ÛŒØ¬ÛŒØªØ§Ù„ Ù…Ú¯Ø²ÛŒÙ†ØŒÚ©Ø§ÙÛŒÙ‡ Ø±ÙˆÛŒ Ø¹Ú©Ø³ Ù‡Ø± Ø§Ø³ØªØ§Ù† Ú©Ù„ÛŒÚ© Ú©Ù†ÛŒØ¯ ØªØ§ Ù', 'Iran', '2017-09-24 21:07:00'),
(511, '1. All cities of Malaysia click on each Name under MY ADVERTISEMENT to view the business of every cities.', 'MALAYSIA', '2017-09-23 09:59:03'),
(390, '4: Telegram. Roodab Gym  https://t.me/roodabgym', 'rooDABGYM', '2017-09-13 08:41:04'),
(391, 'You can advertise your website on my websites. ', 'Joshua', '2017-09-14 02:36:21'),
(460, '1) You can advertise your website on this website. Contact: http://roodabatoz.com/store/Joshua/ ', 'KLCity', '2017-09-21 03:24:54'),
(393, 'You can advertise your website on this website. Contact: http://roodabatoz.com/store/Joshua/ ', 'Furniture', '2017-09-14 04:13:37'),
(394, 'You can advertise your website on this website. Contact: http://roodabatoz.com/store/Joshua/ ', 'HomeDecor', '2017-09-14 04:19:09'),
(395, 'You can advertise your website on this website. Contact: http://roodabatoz.com/store/Joshua/ ', 'LandscapeArchitecture', '2017-09-14 06:11:48'),
(396, 'You can advertise your website on this website. Contact: http://roodabatoz.com/store/Joshua/ ', 'MensFashion', '2017-09-14 06:21:49'),
(397, 'You can advertise your website on this website. Contact: http://roodabatoz.com/store/Joshua/ ', 'MensShoes', '2017-09-14 06:30:38'),
(398, 'You can advertise your website on this website. Contact: http://roodabatoz.com/store/Joshua/ ', 'WomensFashion', '2017-09-14 06:33:00'),
(466, '1) You can advertise your website on this website. Contact: http://roodabatoz.com/store/Joshua/ ', 'BukitBintang', '2017-09-21 04:04:27'),
(467, '1) You can advertise your website on this website. Contact: http://roodabatoz.com/store/Joshua/ ', 'BakKutTeh', '2017-09-21 04:08:07'),
(468, '1) You can advertise your website on this website. Contact: http://roodabatoz.com/store/Joshua/ ', 'JalanAlor', '2017-09-21 04:11:29'),
(402, ' Ø¯ÙƒØªØ±Ù‡Ø§Ø¯ÙŠ Ù‚Ø·Ø¨ÙŠ Ø¬Ø´ÙˆÙ‚Ø§Ù†ÙŠ  Ù…ØªØ®ØµØµ Ø¬Ø±Ø§Ø­ÙŠ Ø§Ø±ØªÙˆÙ¾Ø¯ÙŠ  Ø¯Ø§Ø±Ø§ÙŠ Ø¨ÙˆØ±Ø¯ ØªØ®ØµØµÙŠ  Ø¬Ø±Ø§Ø­ÙŠ ØªØ¹ÙˆÙŠØ¶ Ù…ÙØµÙ„ Ø²Ø§Ù†Ùˆ Ùˆ Ù‡ÙŠÙ¾ - Ø¢Ø±ØªØ±ÙˆØ³ÙƒÙˆÙ¾ÙŠ Ø²Ø§Ù†Ùˆ Ùˆ Ø´', 'Drghotbi', '2017-09-15 06:43:26'),
(403, 'Ø¨Ø±Ù†Ø§Ù…Ù‡ Ù†ÙˆÛŒØ³ÛŒ Ú©Ø§Ù…Ù¾ÛŒÙˆØªØ±', 'Farzad', '2017-09-15 11:40:34'),
(470, '1) You can advertise your website on this website. Contact: http://roodabatoz.com/store/Joshua/ ', 'FurnitureFair', '2017-09-21 04:22:36'),
(469, '1) You can advertise your website on this website. Contact: http://roodabatoz.com/store/Joshua/ ', 'Travel', '2017-09-21 04:17:14'),
(471, '1) You can advertise your website on this website. Contact: http://roodabatoz.com/store/Joshua/ ', 'Holidays', '2017-09-21 04:28:44'),
(472, '1) You can advertise your website on this website. Contact: http://roodabatoz.com/store/Joshua/ ', 'MensHairstyles', '2017-09-21 04:34:07'),
(473, '1) You can advertise your website on this website. Contact: http://roodabatoz.com/store/Joshua/ ', 'Sneakers', '2017-09-21 04:41:48'),
(490, '1) You can advertise your website on this website. Contact: http://roodabatoz.com/store/Joshua/ ', 'Beauty', '2017-09-21 06:36:48'),
(501, '1) You can advertise your website on this website. Contact: http://roodabatoz.com/store/Joshua/ ', 'Property', '2017-09-21 07:42:54'),
(474, '1) You can advertise your website on this website. Contact: http://roodabatoz.com/store/Joshua/ ', 'PropertyFair', '2017-09-21 04:53:01'),
(475, '1) You can advertise your website on this website. Contact: http://roodabatoz.com/store/Joshua/ ', 'OldKlangRoad', '2017-09-21 04:58:57'),
(476, '1) You can advertise your website on this website. Contact: http://roodabatoz.com/store/Joshua/ ', 'TheScottGarden', '2017-09-21 05:03:57'),
(477, '1) You can advertise your website on this website. Contact: http://roodabatoz.com/store/Joshua/ ', 'PearlPointKL', '2017-09-21 05:11:39'),
(478, '1) You can advertise your website on this website. Contact: http://roodabatoz.com/store/Joshua/ ', 'KoreanCuisine', '2017-09-21 05:16:56'),
(479, '1) You can advertise your website on this website. Contact: http://roodabatoz.com/store/Joshua/ ', 'KoreanStreetFood', '2017-09-21 05:21:59'),
(480, '1) You can advertise your website on this website. Contact: http://roodabatoz.com/store/Joshua/ ', 'MalayAsianCuisine', '2017-09-21 05:28:58'),
(481, '1) You can advertise your website on this website. Contact: http://roodabatoz.com/store/Joshua/ ', 'WesternCuisine', '2017-09-21 05:33:50'),
(482, '1) You can advertise your website on this website. Contact: http://roodabatoz.com/store/Joshua/ ', 'ChineseCuisine', '2017-09-21 05:39:12'),
(483, '1) You can advertise your website on this website. Contact: http://roodabatoz.com/store/Joshua/ ', 'Chinatown', '2017-09-21 05:44:10'),
(484, '1) You can advertise your website on this website. Contact: http://roodabatoz.com/store/Joshua/ ', 'PetalingStreet', '2017-09-21 05:49:13'),
(485, '1) You can advertise your website on this website. Contact: http://roodabatoz.com/store/Joshua/ ', 'YongTauFoo', '2017-09-21 05:54:08'),
(486, '1) You can advertise your website on this website. Contact: http://roodabatoz.com/store/Joshua/ ', 'BerjayaTimesSquare', '2017-09-21 06:06:46'),
(425, 'Ù…Ø±Ø¨ÛŒ Ø¨Ø§Ø´Ú¯Ø§Ù‡', 'Aligym', '2017-09-17 11:14:57'),
(426, 'Ù…Ø±Ø¨ÛŒ Ø¨Ø¯Ù†Ø³Ø§Ø²ÛŒ', 'Aligym', '2017-09-17 11:15:09'),
(487, '1) You can advertise your website on this website. Contact: http://roodabatoz.com/store/Joshua/ ', 'MyTownKL', '2017-09-21 06:12:14'),
(429, 'You can advertise your website on this website. Contact: http://roodabatoz.com/store/Joshua/ ', 'MidValley', '2017-09-18 04:06:55'),
(488, '1) You can advertise your website on this website. Contact: http://roodabatoz.com/store/Joshua/ ', 'StylishMen', '2017-09-21 06:20:27'),
(489, '1) You can advertise your website on this website. Contact: http://roodabatoz.com/store/Joshua/ ', 'AutoParts', '2017-09-21 06:25:45'),
(491, '1) You can advertise your website on this website. Contact: http://roodabatoz.com/store/Joshua/ ', 'AutoExpo', '2017-09-21 06:45:20'),
(433, 'You can advertise your website on this website. Contact: http://roodabatoz.com/store/Joshua/ ', 'RestaurantWorld', '2017-09-18 16:51:08'),
(492, '1) You can advertise your website on this website. Contact: http://roodabatoz.com/store/Joshua/ ', 'KuchaiLama', '2017-09-21 06:49:49'),
(493, '1) You can advertise your website on this website. Contact: http://roodabatoz.com/store/Joshua/ ', 'NSKTradeCity', '2017-09-21 06:56:57'),
(494, '1) You can advertise your website on this website. Contact: http://roodabatoz.com/store/Joshua/ ', 'NuSentral', '2017-09-21 07:01:45'),
(437, 'You can advertise your website on this website. Contact: http://roodabatoz.com/store/Joshua/ ', 'DimSum', '2017-09-18 17:45:29'),
(438, 'Ø®Ø¯Ø§ÛŒØ§ Ø¹Ø§Ø´Ù‚ØªÙ… Ø¹Ø§Ø´Ù‚ØªÙ… ', 'Robatjain', '2017-09-18 21:16:34'),
(495, '1) You can advertise your website on this website. Contact: http://roodabatoz.com/store/Joshua/ ', 'PlazaLowYat', '2017-09-21 07:08:09'),
(497, '1) You can advertise your website on this website. Contact: http://roodabatoz.com/store/Joshua/ ', 'Gadgets', '2017-09-21 07:15:23'),
(498, '1) You can advertise your website on this website. Contact: http://roodabatoz.com/store/Joshua/ ', 'Electronics', '2017-09-21 07:20:01'),
(499, '1) You can advertise your website on this website. Contact: http://roodabatoz.com/store/Joshua/ ', 'ElectronicsFair', '2017-09-21 07:26:29'),
(500, '1) You can advertise your website on this website. Contact: http://roodabatoz.com/store/Joshua/ ', 'DIYhomedecor', '2017-09-21 07:30:54'),
(502, '1) You can advertise your website on this website. Contact: http://roodabatoz.com/store/Joshua/ ', 'Photography', '2017-09-21 07:48:12'),
(503, '1) You can advertise your website on this website. Contact: http://roodabatoz.com/store/Joshua/ ', 'LuxuryCars', '2017-09-21 15:15:47'),
(446, '1) You can advertise your website on this website. Contact: http://roodabatoz.com/store/Joshua/ ', 'News', '2017-09-20 01:56:41'),
(447, '1) You can advertise your website on this website. Contact: http://roodabatoz.com/store/Joshua/ ', 'MalaysiaDay', '2017-09-20 03:13:35'),
(448, '1) You can advertise your website on this website. Contact: http://roodabatoz.com/store/Joshua/ ', '3Dprinting', '2017-09-20 03:15:03'),
(449, '1) You can advertise your website on this website. Contact: http://roodabatoz.com/store/Joshua/ ', 'MotorShow', '2017-09-20 03:16:50'),
(450, '1) You can advertise your website on this website. Contact: http://roodabatoz.com/store/Joshua/ ', 'SurvivalSkills', '2017-09-20 03:17:33'),
(451, '1) You can advertise your website on this website. Contact: http://roodabatoz.com/store/Joshua/ ', 'TravelFair', '2017-09-20 03:19:40'),
(452, '1) You can advertise your website on this website. Contact: http://roodabatoz.com/store/Joshua/ ', 'FoodFair', '2017-09-20 03:21:09'),
(453, '1) You can advertise your website on this website. Contact: http://roodabatoz.com/store/Joshua/ ', 'Food', '2017-09-20 03:22:24'),
(454, '1) You can advertise your website on this website. Contact: http://roodabatoz.com/store/Joshua/ ', 'Seafood', '2017-09-20 03:23:40'),
(455, '1) You can advertise your website on this website. Contact: http://roodabatoz.com/store/Joshua/ ', '29th', '2017-09-20 03:24:47'),
(456, '1) You can advertise your website on this website. Contact: http://roodabatoz.com/store/Joshua/ ', 'Festival', '2017-09-20 03:26:23'),
(459, '1) You can advertise your website on this website. Contact: http://roodabatoz.com/store/Joshua/ ', 'LandscapePhotography', '2017-09-21 03:07:43'),
(461, '1) You can advertise your website on this website. Contact: http://roodabatoz.com/store/Joshua/ ', 'Puchong', '2017-09-21 03:45:19'),
(462, '1) You can advertise your website on this website. Contact: http://roodabatoz.com/store/Joshua/ ', 'SubangJaya', '2017-09-21 03:49:18'),
(463, '1) You can advertise your website on this website. Contact: http://roodabatoz.com/store/Joshua/ ', 'PavilionKL', '2017-09-21 03:52:33'),
(464, '1) You can advertise your website on this website. Contact: http://roodabatoz.com/store/Joshua/ ', 'Lot10', '2017-09-21 03:56:33'),
(465, '1) You can advertise your website on this website. Contact: http://roodabatoz.com/store/Joshua/ ', 'Fahrenheit88', '2017-09-21 03:59:24'),
(496, 'ðŸ’ªðŸ’ªðŸ’ªðŸ’ª....Ø·ÙˆÙØ§Ù† ØªÙ…ÙˆÙ… Ù†Ù…ÛŒØ´Ù‡ØŒ Ø²Ù†Ø¯Ú¯ÛŒ Ø¯Ø± Ø·ÙˆÙØ§Ù† Ø±Ùˆ ÛŒØ§Ø¯ Ø¨Ú¯ÛŒØ± ', 'Robatjain', '2017-09-21 07:09:46'),
(504, '1) You can advertise your website on this website. Contact: http://roodabatoz.com/store/Joshua/ ', 'LuxuryHotels', '2017-09-21 15:21:03'),
(505, '1) You can advertise your website on this website. Contact: http://roodabatoz.com/store/Joshua/ ', 'Lingerie', '2017-09-21 15:22:13'),
(506, '1) You can advertise your website on this website. Contact: http://roodabatoz.com/store/Joshua/ ', 'Logistics', '2017-09-21 15:29:41'),
(1573, ' Ø¨Ø±Ø§ÛŒ Ø®Ø±ÛŒØ¯Ù…Ø­ØµÙˆÙ„Ø§Øª Ø¨Ø¹Ø¯ Ø§Ø² Ø§Ù†ØªØ®Ø§Ø¨ Ù…Ø¨Ù„Øº ', 'babakakbarnia', '2018-09-26 15:16:13'),
(508, ' Ø¯Ø± ÙˆØ¬ÙˆØ¯ Ù‡Ù…Ù‡ Ù…Ø§ ÛŒÚ© Ù…Ù†Ù Ø§ÙØ³Ø±Ø¯Ù‡, ÛŒÚ© Ù…Ù†Ù Ø¹ØµØ¨Ø§Ù†ÛŒØŒ ÛŒÚ© Ù…Ù†Ù Ø´Ø§Ø¯ Ùˆ ÛŒÚ© Ù…Ù†Ù Ù…Ø¶Ø·Ø±Ø¨ ÙˆØ¬ÙˆØ¯ Ø¯Ø§Ø±Ø¯. Ú©Ø¯Ø§Ù… Ù…Ù† Ù¾ÛŒØ±ÙˆØ² Ù…ÛŒ Ø´ÙˆØ¯', 'Robatjain', '2017-09-22 10:20:01'),
(509, 'Ú©Ø§Ø± Ø®ÙˆØ¯ Ø±Ø§ Ø¬Ù‡Ø§Ù†ÛŒ Ú©Ù†ÛŒØ¯ Ø¨Ø§ 3 Ø¯Ù„Ø§Ø± ÙˆØ¨Ø³Ø§ÛŒØªâ€Œ Ø¨Ø±Ø§ÛŒ Ø®ÙˆØ¯ Ùˆâ€ŒÚ©Ø³Ø¨ Ú©Ø§Ø± Ø®ÙˆØ¯ Ø¯Ø§Ø´ØªÙ‡ Ø¨Ø§Ø´ÛŒØ¯ ', 'Sirjan', '2017-09-22 10:51:18'),
(510, '1) You can advertise your website on this website. Contact: http://roodabatoz.com/store/Joshua/ ', 'EducationFair', '2017-09-23 05:42:17'),
(517, '1) You can advertise your website on this website. Contact: http://roodabatoz.com/store/Joshua/ ', 'TimesSquare', '2017-09-25 07:40:30'),
(550, '1) You can advertise your website on this website. Contact: http://roodabatoz.com/store/Joshua/ ', 'Love', '2017-09-29 05:19:56'),
(522, 'You can advertise your company jobs on this website. Contact: 60108323456 http://roodabatoz.com/store/Joshua/ ', '', '2017-09-25 12:39:52'),
(523, '1) You can advertise your website on this website. Contact: http://roodabatoz.com/store/Joshua/ ', 'Fitness', '2017-09-25 13:09:42'),
(524, '1) You can advertise your website on this website. Contact: http://roodabatoz.com/store/Joshua/ ', 'Fortune', '2017-09-25 13:13:47'),
(525, '1) You can advertise your website on this website. Contact: http://roodabatoz.com/store/Joshua/ ', 'Forex', '2017-09-25 13:21:09'),
(526, '1) You can advertise your website on this website. Contact: http://roodabatoz.com/store/Joshua/ ', 'Wealth', '2017-09-25 13:33:41'),
(527, '..... Ú©Ø³Ø¨ Ø¯Ø±Ø¢Ù…Ø¯ Ù…ÛŒÙ„ÛŒØ§Ø±Ø¯ÛŒ .....', 'Fars', '2017-09-25 14:12:04'),
(530, '..... Ú©Ø³Ø¨ Ø¯Ø±Ø¢Ù…Ø¯ Ù…ÛŒÙ„ÛŒØ§Ø±Ø¯ÛŒ .....', 'Fars', '2017-09-25 14:12:50'),
(1914, 'You can advertise your businesses here. Enquiry : Joshua +60108323456', 'TravelMalaysia', '2019-01-20 04:49:12'),
(1915, 'Grab one Area Center and learn to make RM3,000 per week! ', 'TravelMalaysia', '2019-01-20 04:49:18'),
(536, 'Ú©Ø§Ø± Ø®ÙˆØ¯ Ø±Ø§ Ø¬Ù‡Ø§Ù†ÛŒ Ú©Ù†ÛŒØ¯ Ùˆ ÛŒÚ© ÙˆØ¨ Ø³Ø§ÛŒØª Ø­Ø±ÙÙ‡ Ø§ÛŒ  Ø¨Ø§ Ø§Ù…Ú©Ø§Ù†Ø§Øª ÙØ±Ø§ÙˆÙ† Ø¨Ø±Ø§ÛŒ Ø®ÙˆØ¯ Ø¨Ø³Ø§Ø²ÛŒØ¯ ÙÙ‚Ø· Ø¨Ø§ 3 Ø¯Ù„Ø§Ø± ', 'zanjancity', '2017-09-26 08:19:09'),
(537, 'Ø´Ù…Ø§Ø±Ù‡ ØªÙ…Ø§Ø³ 09100262983', 'zanjancity', '2017-09-26 08:19:26'),
(538, 'Ø¨Ø§ Ú©Ù„ÛŒÚ© Ø¨Ø± Ø±ÙˆÛŒ Ø¹Ú©Ø³ Ø§Ø³ØªØ§Ù† ØªØ§Ù† ÙˆØ§Ø±Ø¯ Ø§Ø³ØªØ§Ù† Ø®ÙˆØ¯ Ø´ÙˆÛŒØ¯', 'iran', '2017-09-26 15:04:28'),
(534, ' 989100262983 Ø´Ù…Ø§Ø±Ù‡ ØªÙ…Ø§Ø³ ØªÙ„Ú¯Ø±Ø§Ù…', 'pasaonline', '2017-09-25 18:39:15'),
(543, '1) You can advertise your website on this website. Contact: http://roodabatoz.com/store/Joshua/ ', 'Agriculture', '2017-09-27 08:42:52'),
(1192, 'Enquiry:+60108323456 Joshua (Malaysia)', 'Krystal', '2018-04-23 00:34:03'),
(1193, 'Saya boleh membantu anda menjadi jutawan', 'Pohsiew', '2018-04-29 16:27:04'),
(544, '1) You can advertise your website on this website. Contact: http://roodabatoz.com/store/Joshua/ ', 'Health', '2017-09-27 09:07:30'),
(545, '1) You can advertise your website on this website. Contact: http://roodabatoz.com/store/Joshua/ ', 'Startups', '2017-09-27 09:09:30'),
(546, '1) You can advertise your website on this website. Contact: http://roodabatoz.com/store/Joshua/ ', 'Invest', '2017-09-27 09:11:31'),
(549, '1) You can advertise your jobs on this website. Contact: http://roodabatoz.com/store/Joshua/ ', 'MalaysiaJobs', '2017-09-29 02:37:25'),
(548, '1) You can advertise your website on this website. Contact: http://roodabatoz.com/store/Joshua/ ', 'ElectricCars', '2017-09-28 04:37:41'),
(551, '1) You can advertise your website on this website. Contact: http://roodabatoz.com/store/Joshua/ ', 'Moon', '2017-09-29 07:44:28'),
(556, '1) You can advertise your website on this website. Contact: http://roodabatoz.com/store/Joshua/ ', 'Marijuana', '2017-10-03 02:48:08'),
(555, 'Click on your country flag image to check any jobs opportunity available.', 'Jobs', '2017-10-02 04:22:50'),
(580, 'Apply to become ROODAB Computer Shop in your Country,City, Area, and Village.', 'ROODABPHONE', '2017-10-03 13:18:43'),
(558, 'Apply to become ROODAB Computer Shop in your Country,City, Area, and Village.', 'roodabcomputershop', '2017-10-03 12:09:49'),
(561, 'Ø±ÙˆÛŒ Ø¹Ú©Ø³ Ù‡Ø§ÛŒ Ø²ÛŒØ± Ú©Ù„ÛŒÚ© Ú©Ù†ÛŒØ¯ ÙˆØ§Ø±Ø¯ ÙˆØ¨Ø³Ø§ÛŒØªâ€Œ Ø§ØµÙ„ÛŒ ÛŒÚ© Ø±ÙˆØ³ØªØ§ ÛŒØ§ Ù…Ø­Ù„Ù‡ Ø±ÙˆØ¯Ø§Ø¨ Ù…ÛŒ Ø´ÙˆÛŒØ¯ Ú©Ù‡ Ø¨Ø§ØºØ¯Ø§Ø±Ø§Ù† Ø®Ø±Ù…Ø§ÛŒÛŒ  Ø®ÙˆØ¯ Ø±Ø§ Ù…ÛŒ ÙØ±ÙˆØ´Ù†Ø¯', 'ROODABDates', '2017-10-03 12:21:36'),
(560, 'Click on each photo you will see main website of one Roodab village or area which Gardeners selling their dates you can talk to them directly', 'ROODABDates', '2017-10-03 12:14:44'),
(605, '1) You can advertise your website on this website. Contact: http://roodabatoz.com/store/Joshua/ ', 'GlobalBizOpp', '2017-10-11 07:40:43'),
(563, 'Click on each photo you will see website of one Roodab Gardeners selling their Roodab dates you can talk to them directly to buy dates', 'Ghotbabad', '2017-10-03 12:27:45'),
(601, '1) You can advertise your website on this website. Contact: http://roodabatoz.com/store/Joshua/ ', 'Prophecy', '2017-10-09 07:04:51'),
(602, '1) You can advertise your website on this website. Contact: http://roodabatoz.com/store/Joshua/ ', 'GODisLove', '2017-10-09 09:54:15'),
(603, '1) You can advertise your website on this website. Contact: http://roodabatoz.com/store/Joshua/ ', 'MalaysiaTravel', '2017-10-09 10:01:08'),
(604, '2) You can advertise your jobs/careers on this website. Contact: http://roodabatoz.com/store/Joshua/ ', 'MalaysiaTravel', '2017-10-09 10:01:55'),
(593, '1) You can advertise your website on this website. Contact: http://roodabatoz.com/store/Joshua/ ', 'KualaLumpurCafes', '2017-10-08 06:52:57'),
(573, 'Apply to become ROODAB Computer Shop in your Country,City, Area, and Village.', 'ROODABKEYBOARDCOMPUTER', '2017-10-03 13:15:11'),
(592, 'Ù„ÙˆØ§Ø²Ù… ÛŒØ¯Ú©ÛŒ Ø®ÙˆØ±Ø¯Ø±Ùˆ Ø¨Ø±Ø§ÛŒ Ø®ÙˆØ±Ø¯Ø±Ùˆ Ù‡Ø§ÛŒ Ù¾Ú˜Ùˆ Ùˆ Ù¾Ø±Ø§ÛŒØ¯ Ù¾ÛŒÚ©Ø§Ù†  _ Ù„ÙˆØ§Ø²Ù… Ø¨Ø±Ù‚ÛŒ _ Ù„ÙˆØ§Ø²Ù… Ø¬Ù„Ùˆ Ø¨Ù†Ø¯ÛŒ  _ Ú©Ø§Ø¨Ù„ Ù‡Ø§ÛŒ Ù…ØµØ±ÙÛŒ _ Ù„ÙˆØ§Ø²Ù… Ù…ØµØ±ÙÛŒ ', 'Arzanyadak', '2017-10-06 12:13:31'),
(575, 'Apply to become ROODAB Computer Shop in your Country,City, Area, and Village.', 'ROODABEZYSCAN', '2017-10-03 13:16:21'),
(577, 'Apply to become ROODAB Computer Shop in your Country,City, Area, and Village.', 'ROODABLAPTOPWINDOWS', '2017-10-03 13:17:09'),
(585, '1) You can advertise your website on this website. Contact: http://roodabatoz.com/store/Joshua/ ', 'Mars', '2017-10-04 13:32:18'),
(583, 'Apply to become ROODAB Computer Shop in your Country,City, Area, and Village.', 'ROODABLAPTOPANDROID', '2017-10-04 08:36:22'),
(584, 'Ú©Ø³Ø¨ ÙˆÚ©Ø§Ø±Ø®ÙˆØ¯Ø±Ø§Ø¬Ù‡Ø§Ù†ÛŒ Ú©Ù†ÛŒØ¯..ÙÙ‚Ø· Ø¨Ø§12000ØªÙˆÙ…Ø§Ù† ØµØ§Ø­Ø¨ ÙˆØ¨ Ø³Ø§ÛŒØª Ø¨Ø´ÙˆÛŒØ¯', 'yazd', '2017-10-04 11:32:41'),
(582, 'Apply to become ROODAB Computer Shop in your Country,City, Area, and Village.', 'ROODABMONITOR', '2017-10-03 13:19:34'),
(596, '1) You can advertise your website on this website. Contact: http://roodabatoz.com/store/Joshua/ ', 'KLBusinessOpportunity', '2017-10-08 07:28:46'),
(597, '1) You can advertise your website on this website. Contact: http://roodabatoz.com/store/Joshua/ ', 'BusinessOpportunity', '2017-10-08 08:07:38'),
(598, '1) You can advertise your website on this website. Contact: http://roodabatoz.com/store/Joshua/ ', 'MalaysiaBusinessOpportunity', '2017-10-08 08:08:48'),
(599, '1) You can advertise your jobs on this website. Contact: http://roodabatoz.com/store/Joshua/ ', 'JobsKualaLumpur', '2017-10-08 08:31:42'),
(600, '1) You can advertise your website on this website. Contact: http://roodabatoz.com/store/Joshua/ ', 'KLHouseforSale', '2017-10-08 10:10:29'),
(606, '1) You can advertise your website on this website. Contact: http://roodabatoz.com/store/Joshua/ ', 'Malaysia1', '2017-10-12 03:56:24'),
(607, '1) You can advertise your website on this website. Contact: http://roodabatoz.com/store/Joshua/ ', 'KualaLumpur1', '2017-10-12 04:02:49'),
(608, '1) You can advertise your website on this website. Contact: http://roodabatoz.com/store/Joshua/ ', 'KualaLumpur', '2017-10-12 04:14:42'),
(609, 'You can advertise your Free stuffs on this website. Contact: http://roodabatoz.com/store/Joshua/ ', 'Free', '2017-10-12 05:54:35'),
(610, 'Ù…Ø¬ØªÙ…Ø¹ Ø±Ø³ØªÙˆØ±Ø§Ù† Ùˆ ÙØ³Øª ÙÙˆØ¯ Ø³Ø§ÛŒÙ‡ Ø¢Ø¯Ø±Ø³: Ø³ÛŒØ±Ø¬Ø§Ù†ØŒØ¨Ù„ÙˆØ§Ø± Ø³Ø±Ø¯Ø§Ø± Ø¬Ù†Ú¯Ù„ØŒØ±ÙˆØ¨Ø±ÙˆÛŒ Ù¾Ø§Ø±Ú© Ù„Ø§Ù„Ù‡ØŒØ¬Ù†Ø¨ Ø®Ø§Ù†Ù‡ Ù…Ø¹Ù„Ù…ØŒÙ…Ø¬ØªÙ…Ø¹ Ø³Ø§ÛŒÙ‡ Ø´Ù…Ø§Ø±Ù‡ ØªÙ', 'Sayeh', '2017-10-12 08:46:05'),
(611, 'Ù…Ø¬ØªÙ…Ø¹ Ø±Ø³ØªÙˆØ±Ø§Ù† Ùˆ ÙØ³Øª ÙÙˆØ¯ Ø³Ø§ÛŒÙ‡ Ø¨Ø±Ø§ÛŒ Ø±ÙØ§Ù‡ Ø­Ø§Ù„ Ù‡Ù…Ø´Ù‡Ø±ÛŒ Ù‡Ø§ÛŒ Ø¹Ø²ÛŒØ² Ø®Ø¯Ù…Ø§Øª ÙÙˆÙ‚ Ø±Ø§ Ø¯Ø§ÛŒØ± Ø¯ÛŒØ¯Ù‡ Ø§Ø³Øª: Ø§Ø·Ù„Ø§Ø¹Ø§Øª ØŒ ØªØ®ÙÛŒÙØ§Øª Ùˆ Ù…Ù†ÙˆÙ‡Ø', 'Sayeh', '2017-10-12 08:46:35'),
(612, 'Ø³ÛŒØ±Ø¬Ø§Ù†ØŒØ¨Ù„ÙˆØ§Ø± Ø³Ø±Ø¯Ø§Ø± Ø¬Ù†Ú¯Ù„ØŒØ±ÙˆØ¨Ø±ÙˆÛŒ Ù¾Ø§Ø±Ú© Ù„Ø§Ù„Ù‡ØŒØ¬Ù†Ø¨ Ø®Ø§Ù†Ù‡ Ù…Ø¹Ù„Ù…ØŒÙ…Ø¬ØªÙ…Ø¹ Ø³Ø§ÛŒÙ‡', 'Sayeh', '2017-10-12 09:04:27'),
(613, 'Ù…Ø¬ØªÙ…Ø¹ Ø±Ø³ØªÙˆØ±Ø§Ù† Ùˆ ÙØ³Øª ÙÙˆØ¯ Ø³Ø§ÛŒÙ‡', 'Sayeh', '2017-10-12 09:04:41'),
(629, '1) You can advertise your website on this website. Contact: http://roodabatoz.com/store/Joshua/ ', 'MalaysiaWomen', '2017-10-13 06:32:42'),
(626, '1) You can advertise your website on this website. Contact: http://roodabatoz.com/store/Joshua/ ', 'Expo', '2017-10-13 05:49:05'),
(627, '1) You can advertise your website on this website. Contact: http://roodabatoz.com/store/Joshua/ ', 'Mens', '2017-10-13 06:04:02'),
(628, '1) You can advertise your website on this website. Contact: http://roodabatoz.com/store/Joshua/ ', 'Women', '2017-10-13 06:07:44'),
(619, '*Ù…Ø¨Ù„Øº Ø¨Ù‡ Ø±ÛŒØ§Ù„*724*1*22*724#', 'Sayeh', '2017-10-12 09:09:07'),
(620, '*6655*2*724#', 'Sayeh', '2017-10-12 09:09:25'),
(621, '*6655*1*724#', 'Sayeh', '2017-10-12 09:09:41'),
(622, '1) You can advertise your website on this website. Contact: http://roodabatoz.com/store/Joshua/ ', 'Water', '2017-10-12 09:49:32'),
(630, 'http://roodabatoz.com/store/social', 'Social ', '2017-10-13 07:52:25'),
(631, '1) You can advertise your website on this website. Contact: http://roodabatoz.com/store/Joshua/ ', 'MalaysiaDoctors', '2017-10-13 08:30:53'),
(632, '1) You can advertise your website on this website. Contact: http://roodabatoz.com/store/Joshua/ ', 'Doctors', '2017-10-13 08:37:04'),
(633, ' Ø¨Ø± Ø±ÙˆÛŒ ØµÙ†Ù Ù…ÙˆØ±Ø¯ Ù†Ø¸Ø±ØªØ§Ù† Ú©Ù„ÛŒÚ© Ú©Ù†ÛŒØ¯', 'sirjan', '2017-10-13 08:47:10'),
(1576, 'Ø¨Ø§Ù†Ú© Ø§Ù†ØµØ§Ø± Ø¨Ø§Ø¨Ú© Ø§Ú©Ø¨Ø±Ù†ÛŒØ§', 'babakakbarnia', '2018-09-26 15:18:36'),
(1577, 'Ù…ØªÙ† Ø±Ø§ Ø§Ø² Ù¾Ø§ÛŒÛŒÙ† Ø¨Ù‡ Ø¨Ø§Ù„Ø§ Ø¨Ø®ÙˆØ§Ù…ÛŒØ¯', 'babakakbarnia', '2018-09-26 15:19:14'),
(635, '1) You can advertise your website on this website. Contact: http://roodabatoz.com/store/Joshua/ ', 'SheERA', '2017-10-13 09:47:59'),
(699, '2) You can advertise your Jobs/Careers on Roodab. Please refer to your nearest Area Center or IBA. Enquiry : http://roodabatoz.com/store/Joshua', 'Hyperloop', '2017-10-23 09:17:40'),
(637, '1) You can advertise your website on this website. Contact: http://roodabatoz.com/store/Joshua/ ', 'Billionaire', '2017-10-14 07:39:35'),
(638, '1) You can advertise your website on this website. Contact: http://roodabatoz.com/store/Joshua/ ', 'Quadrillionaire', '2017-10-14 08:38:40'),
(639, 'Ø¨Ø²Ø±Ú¯ØªØ±ÛŒÙ† Ø¨Ø§Ù†Ú© Ø§Ø·Ù„Ø§Ø¹Ø§Øª Ù…Ø´Ø§ØºÙ„ Ø§ÛŒØ±Ø§Ù†', 'Tehran', '2017-10-14 10:04:55'),
(640, 'Ú©Ø§Ø± Ø®ÙˆØ¯ Ø±Ø§ Ø¬Ù‡Ø§Ù†ÛŒ Ú©Ù†ÛŒØ¯ Ø¨Ø§ 3 Ø¯Ù„Ø§Ø± ÙˆØ¨Ø³Ø§ÛŒØªâ€Œ Ø¨Ø±Ø§ÛŒ Ø®ÙˆØ¯ Ùˆâ€ŒÚ©Ø³Ø¨ Ú©Ø§Ø± Ø®ÙˆØ¯ Ø¯Ø§Ø´ØªÙ‡ Ø¨Ø§Ø´ÛŒØ¯ ', 'Tehran', '2017-10-14 10:05:07'),
(641, 'Ù…Ø­Ù„Ù‡ Ù‡Ø§ÛŒ Ø³ÛŒØ±Ø¬Ø§Ù†', 'Sirjan1', '2017-10-15 09:08:53'),
(642, 'Ù†Ù‚Ø´Ù‡ Ø³ÛŒØ±Ø¬Ø§Ù†', 'Sirjan1', '2017-10-15 09:09:20'),
(643, '1) You can advertise your website on this website. Contact: http://roodabatoz.com/store/Joshua/ ', 'ArtificialIntelligence', '2017-10-15 10:58:49'),
(644, '1) You can advertise your website on this website. Contact: http://roodabatoz.com/store/Joshua/ ', 'Vegan', '2017-10-15 11:32:37'),
(645, '1) You can advertise your website on this website. Contact: http://roodabatoz.com/store/Joshua/ ', 'KualaLumpurMLM', '2017-10-16 03:08:27'),
(647, '2) You can advertise your Jobs/Careers on this website. Contact: http://roodabatoz.com/store/Joshua/ ', 'KualaLumpurMLM', '2017-10-16 03:10:09'),
(685, '2) You can advertise your Jobs/Careers on Roodab. Refer to your nearest Area Center or IBA. . Enquiry : http://roodabatoz.com/store/Joshua ', 'WorldWar3', '2017-10-23 04:38:12'),
(684, '2) You can advertise your Jobs/Careers on Roodab. Please refer to your nearest Area Center or IBA. Enquiry : http://roodabatoz.com/store/Joshua', 'Travel', '2017-10-23 03:57:29'),
(650, '1) You can advertise your website on this website. Contact: http://roodabatoz.com/store/Joshua/ ', 'Restaurants', '2017-10-16 03:33:31'),
(651, '2) You can advertise your Jobs/Careers on this website. Contact: http://roodabatoz.com/store/Joshua/ ', 'Restaurants', '2017-10-16 03:33:37'),
(652, '2) You can advertise your Jobs/Careers on this website. Contact: http://roodabatoz.com/store/Joshua/ ', 'Women', '2017-10-16 05:51:00'),
(653, '1) You can advertise your Jobs/Careers on this website. Contact: http://roodabatoz.com/store/Joshua/ ', 'Careers', '2017-10-16 06:08:44'),
(654, '1) You can advertise your Jobs/Careers on this website. Contact: http://roodabatoz.com/store/Joshua/ ', 'Career', '2017-10-16 06:10:51'),
(655, '1) You can advertise your website on this website. Contact: http://roodabatoz.com/store/Joshua/ ', 'Cafe', '2017-10-16 06:33:18'),
(656, '1) You can advertise your website on this website. Contact: http://roodabatoz.com/store/Joshua/ ', 'Single', '2017-10-17 07:47:17'),
(657, '1) You can advertise your website on this website. Contact: http://roodabatoz.com/store/Joshua/ ', 'Freelancer', '2017-10-17 15:20:54'),
(658, 'Ø¢Ú¯Ù‡ÛŒ Ù‡Ø§ÛŒ Ø®ÙˆØ¯ Ø±Ø§ Ø¯Ø± Ú©Ù…ØªØ±ÛŒÙ† Ø²Ù…Ø§Ù† Ø¯Ø± Ù†ÛŒØ§Ø² Ø§ÛŒØ±Ø§Ù† Ø«Ø¨Øª Ú©Ù†ÛŒØ¯ Ùˆ Ø¢Ø³Ø§Ù† Ø®Ø±ÛŒØ¯ Ùˆ ÙØ±ÙˆØ´ Ú©Ù†ÛŒØ¯', 'niaziran', '2017-10-17 15:44:32'),
(659, 'Ù…Ø±Ø¨ÛŒ Ø¨Ø§Ø´Ú¯Ø§Ù‡', 'Iranbazar', '2017-10-17 17:42:38'),
(671, 'Ø§ÛŒÙ† ÙˆØ¨ Ø·Ø±Ø§Ø­ÛŒ Ø´Ø¯Ù‡ ØªÙˆ Ø³Ø§ÛŒØª Ø±ÙˆØ¯Ø§Ø¨ Ø¨Ø±Ø§ÛŒ Ù‡Ù… Ø§Ù†Ø¯ÛŒØ´ÛŒ ÙˆÙ‡Ù…Ú©Ø§Ø±ÛŒ Ù‡Ù…Ù‡ Ø¢Ù† Ù‡Ø§ÛŒ Ú©Ù‡ Ø®ÙˆØ§Ù‡Ø§Ù† ØªØ§Ù…Ù„ Ø§Ø·Ù„Ø§Ø¹Ø§Øª Ø¬Ù‡Øª  Ø§Ø±ØªÙ‚Ø§Ø¹ Ø¯Ø§Ù†Ø´ ÙÙ† Ø±ÙˆØ²Ø', 'mehrdadtabriz', '2017-10-21 18:16:30'),
(661, '2) You can advertise your Jobs/Careers on this website. Please contact : http://roodabatoz.com/store/Joshua ', 'ArtificialIntelligence ', '2017-10-19 06:14:56'),
(663, '1) You can advertise your website on this website. Contact : http://roodabatoz.com/store/Joshua', 'UGGs', '2017-10-20 00:40:47'),
(664, '2) You can advertise your Jobs/Careers on this website. Contact : http://roodabatoz.com/store/Joshua', 'UGGs', '2017-10-20 00:41:44'),
(665, '1) You can advertise your website on this website. Contact : Tang Chee Wah: http://roodabatoz.com/store/Joshua', 'Watch', '2017-10-20 02:26:34'),
(666, '1) You can advertise your website on this website. Contact : Tang Chee Wah: http://roodabatoz.com/store/Joshua', 'WomenMalaysia', '2017-10-20 08:30:22'),
(667, '2) You can advertise your Jobs/Careers on this website. Please contact : http://roodabatoz.com/store/Joshua ', 'WomenMalaysia', '2017-10-20 08:30:33'),
(668, 'Ú©Ø¯ Ù…Ø¹Ø±Ù : 111118', 'nodino', '2017-10-21 06:50:38'),
(676, 'Ø·Ø±Ø§Ø­ÛŒ ÙˆØ¨ Ø³Ø§ÛŒØª Ø®ÙˆØ¯ Ø±Ø§ Ø¨Ù‡ Ù…Ø§ Ø¨Ø³Ù¾Ø§Ø±ÛŒØ¯ Ø¨Ø§ Ú©Ù…ØªØ±ÛŒÙ† Ù‡Ø²ÛŒÙ†Ù‡', 'mehrdadat', '2017-10-22 04:22:43'),
(677, 'Ø¨Ø±Ø§ÛŒ Ø¨Ø±Ù‚Ø±Ø§Ø±ÛŒ Ø§Ø±ØªØ¨Ø§Ø· Ø¨Ø§ Ù…Ø§ Ø¨Ø± Ø±ÙˆÛŒ Ù„ÛŒÙ†Ú© ØªÙ„Ú¯Ø±Ø§Ù…ÛŒ Ú©Ù„ÛŒÚ© Ú©Ù†ÛŒØ¯', 'mehrdadat', '2017-10-22 04:23:06'),
(672, '1) You can advertise your website on this website. Contact : Tang Chee Wah: http://roodabatoz.com/store/Joshua', 'SpaceTravel', '2017-10-22 03:29:53'),
(673, '2) You can advertise your Jobs/Careers on this website. Please contact : http://roodabatoz.com/store/Joshua ', 'SpaceTravel', '2017-10-22 03:30:03'),
(674, '2) You can advertise your Jobs/Careers on this website. Please contact : http://roodabatoz.com/store/Joshua ', 'Joshua', '2017-10-22 03:43:39'),
(678, 'https://t.me/roodab_website', 'mehrdadat', '2017-10-22 04:23:29'),
(679, '2) You can advertise your Jobs/Careers on this website. Please contact : http://roodabatoz.com/store/Joshua ', 'Malaysia1', '2017-10-22 07:32:04'),
(680, '1) You can advertise your website on this website. Contact : Tang Chee Wah: http://roodabatoz.com/store/Joshua', 'CareersKualaLumpur', '2017-10-22 08:09:45'),
(681, '2) You can advertise your Jobs/Careers on this website. Please contact : http://roodabatoz.com/store/Joshua ', 'CareersKualaLumpur', '2017-10-22 08:09:53'),
(682, '1) You can advertise your website on this website. Contact : Tang Chee Wah: http://roodabatoz.com/store/Joshua', 'ChinaBizOpp', '2017-10-22 09:32:39'),
(683, '2) You can advertise your Jobs/Careers on this website. Please contact : http://roodabatoz.com/store/Joshua ', 'ChinaBizOpp', '2017-10-22 09:32:59'),
(688, 'Consulting and training on improving management in the industry', 'iranfoodbazar', '2017-10-23 07:04:50'),
(687, 'Export of agricultural products and food products', 'iranfoodbazar', '2017-10-23 07:03:09'),
(689, '2) You can advertise your Jobs/Careers on Roodab. Please refer to your nearest Area Center or IBA. Enquiry : http://roodabatoz.com/store/Joshua', 'Property', '2017-10-23 08:09:00'),
(690, '1) You can advertise your website here. Please contact: http://roodabatoz.com/store/Joshua', 'MalaysiaProperty', '2017-10-23 08:16:19'),
(691, '2) You can advertise your Jobs/Careers on Roodab. Please refer to your nearest Area Center or IBA. Enquiry : http://roodabatoz.com/store/Joshua', 'MalaysiaProperty', '2017-10-23 08:16:36'),
(692, '1) You can advertise your website here. Please contact: http://roodabatoz.com/store/Joshua', 'PropertyMalaysia', '2017-10-23 08:19:53'),
(693, '2) You can advertise your Jobs/Careers on Roodab. Please refer to your nearest Area Center or IBA. Enquiry : http://roodabatoz.com/store/Joshua', 'PropertyMalaysia', '2017-10-23 08:20:00'),
(694, '1) You can advertise your website here. Please contact: http://roodabatoz.com/store/Joshua', 'PropertyKualaLumpur', '2017-10-23 08:30:05'),
(695, '2) You can advertise your Jobs/Careers on Roodab. Please refer to your nearest Area Center or IBA. Enquiry : http://roodabatoz.com/store/Joshua', 'PropertyKualaLumpur', '2017-10-23 08:30:21'),
(696, '2) You can advertise your Jobs/Careers on Roodab. Refer to your nearest Area Center or IBA. . Enquiry : http://roodabatoz.com/store/Joshua ', 'KLHouseforSale', '2017-10-23 08:34:18'),
(1996, 'Grab one Area Center and learn to make RM3,000 per week! ', 'KLHouseforSale', '2019-02-06 11:17:12'),
(1997, 'Grab one Area Center and learn to make RM3,000 per week! ', 'KLHousetoLet', '2019-02-06 11:31:04'),
(698, '1) You can advertise your website here. Please contact: http://roodabatoz.com/store/Joshua', 'Hyperloop', '2017-10-23 09:16:54'),
(700, '2) You can advertise your Jobs/Careers on Roodab. Please refer to your nearest Area Center or IBA. Enquiry : http://roodabatoz.com/store/Joshua', 'Hyperloop', '2017-10-23 09:17:41'),
(701, '1) You can advertise your website on this website. Contact : Tang Chee Wah: http://roodabatoz.com/store/Joshua', '4Dprinting', '2017-10-24 02:46:49'),
(702, '2) You can advertise your Jobs/Careers on Roodab. Refer to your nearest Area Center or IBA. . Enquiry : http://roodabatoz.com/store/Joshua ', '4Dprinting', '2017-10-24 02:47:09'),
(703, '1) You can advertise your website on this website. Contact : Tang Chee Wah: http://roodabatoz.com/store/Joshua', 'Nutrition', '2017-10-24 03:24:32'),
(704, '2) You can advertise your Jobs/Careers on Roodab. Refer to your nearest Area Center or IBA. . Enquiry : http://roodabatoz.com/store/Joshua ', 'Nutrition', '2017-10-24 03:24:45'),
(705, '1) You can advertise your website here. Please contact: http://roodabatoz.com/store/Joshua', 'SpaceExploration', '2017-10-24 05:02:42'),
(706, '2) You can advertise your Jobs/Careers on Roodab. Please refer to your nearest Area Center or IBA. Enquiry : http://roodabatoz.com/store/Joshua', 'SpaceExploration', '2017-10-24 05:02:51'),
(712, 'Ø®Ø±ÛŒØ¯ Ùˆ ÙØ±ÙˆØ´ Ø¹Ù…Ø¯Ù‡ Ø®Ø±Ù…Ø§ÛŒ Ù…Ø¶Ø§ÙØªÛŒ Ø¨Ù… ', 'Rotabroodab', '2017-10-24 21:20:16'),
(709, 'Ø®Ø±ÛŒØ¯ Ùˆ ÙØ±ÙˆØ´ Ø¹Ù…Ø¯Ù‡ Ø®Ø±Ù…Ø§ÛŒ Ù…Ø¶Ø§ÙØªÛŒ Ø¨Ù… ', 'Rotabroodab', '2017-10-24 21:17:51'),
(710, 'Ø®Ø±ÛŒØ¯ Ùˆ ÙØ±ÙˆØ´ Ø¹Ù…Ø¯Ù‡ Ø®Ø±Ù…Ø§ÛŒ Ù…Ø¶Ø§ÙØªÛŒ Ø¨Ù… ', 'Rotabroodab', '2017-10-24 21:18:19'),
(711, 'Ø®Ø±ÛŒØ¯ Ùˆ ÙØ±ÙˆØ´ Ø¹Ù…Ø¯Ù‡ Ø®Ø±Ù…Ø§ÛŒ Ù…Ø¶Ø§ÙØªÛŒ Ø¨Ù… ', 'Rotabroodab', '2017-10-24 21:18:47'),
(713, 'Ø§ÛŒÙ† ÙˆØ¨Ø³Ø§ÛŒØª Ø¬Ù‡Øª Ø§Ø±ØªÙ‚Ø§Ø¡ Ú©Ù…ÛŒ Ùˆ Ú©ÛŒÙÛŒ Ú¯Ø±Ø¯Ø´Ú¯Ø±ÛŒ Ùˆ Ø¨Ø§Ù„Ø§ Ø¨Ø±Ø¯Ù† Ø¢Ú¯Ø§Ù‡ÛŒ Ø§Ø² Ø§Ù…Ø§Ú©Ù† ØªØ§Ø±ÛŒØ®ÛŒ Ùˆ Ø·Ø¨ÛŒØ¹Øª Ø¨Ú©Ø± Ø§Ø³ØªØ§Ù† Ùˆ Ø§Ù…Ø§Ú©Ù† ØªØ¬Ø§Ø±ÛŒ Ùˆ ØªÙØ', 'mehrdadtabriz', '2017-10-25 12:53:18'),
(714, 'Ø§ÛŒÙ† ÙˆØ¨Ø³Ø§ÛŒØª Ø±Ø§Ù‡ Ø§Ù†Ø¯Ø§Ø²ÛŒ Ø´Ø¯Ù‡ Ø§Ø³Øª Ø¨Ø±Ø§ÛŒ Ø¢Ù…ÙˆØ²Ø´ Ø³Ø§ÛŒØª Ø±ÙˆØ¯Ø§Ø¨ ÙˆØ·Ø±Ø² Ú©Ø§Ø±Ú©Ø±Ø¯Ù† Ø¨Ø§ ÙˆØ¨Ø³Ø§ÛŒØª Ù‡Ø§ÛŒ Ø¢Ù†', 'amozesh', '2017-10-25 15:07:36'),
(715, ' Ù†ÙˆØ¯ÛŒÙ†Ùˆ ØŒ ÙØ±ØµØªÛŒ Ù†Ùˆ ...', 'nodino', '2017-10-25 18:26:26');
INSERT INTO `user_services` (`id`, `service_name`, `user_id`, `created_at`) VALUES
(716, 'Ø§Ø³ØªØ§Ø±Øª 3 Ø¨ÛŒØ²Ù†Ø³ Ù‚Ø¯Ø±ØªÙ…Ù†Ø¯ Ø¨Ø§ Ú©Ø³Ø¨ Ø¯Ø±Ø¢Ù…Ø¯ Ø¹Ø§Ù„ÛŒ Ø¨Ø±Ø§ÛŒ Ø§ÙˆÙ„ÛŒÙ† Ø¨Ø§Ø± Ø¯Ø± Ø§ÛŒØ±Ø§Ù†', 'gilan', '2017-10-27 14:15:48'),
(717, '1) You can advertise your website on this website. Contact : Tang Chee Wah: http://roodabatoz.com/store/Joshua', 'IoTs', '2017-10-28 02:29:50'),
(718, '2) You can advertise your Jobs/Careers on Roodab. Refer to your nearest Area Center or IBA. . Enquiry : http://roodabatoz.com/store/Joshua ', 'IoTs', '2017-10-28 02:30:26'),
(719, '1) You can advertise your website on this website. Contact : Tang Chee Wah: http://roodabatoz.com/store/Joshua', 'Conference', '2017-10-28 02:46:11'),
(720, '2) You can advertise your Jobs/Careers on Roodab. Refer to your nearest Area Center or IBA. . Enquiry : http://roodabatoz.com/store/Joshua ', 'Conference', '2017-10-28 02:46:18'),
(721, '2) You can advertise your Jobs/Careers on Roodab. Refer to your nearest Area Center or IBA. . Enquiry : http://roodabatoz.com/store/Joshua ', 'Invest', '2017-10-28 02:55:49'),
(722, '2) You can advertise your Jobs/Careers on this website. Please contact : http://roodabatoz.com/store/Joshua ', 'StartUps', '2017-10-28 03:10:39'),
(723, '1) You can advertise your website on this website. Contact : Tang Chee Wah: http://roodabatoz.com/store/Joshua', 'ConceptCars', '2017-10-28 12:28:30'),
(724, '2) You can advertise your Jobs/Careers on Roodab. Refer to your nearest Area Center or IBA. . Enquiry : http://roodabatoz.com/store/Joshua ', 'ConceptCars', '2017-10-28 12:28:38'),
(725, '1) You can advertise your website here. Please contact: http://roodabatoz.com/store/Kanlin93', 'Selangor', '2017-10-29 00:53:24'),
(726, '2) You can advertise your Jobs/Careers on Roodab. Please refer to your nearest Area Center or IBA. Enquiry : http://roodabatoz.com/store/KanLin93', 'Selangor', '2017-10-29 00:54:12'),
(727, '1) You can advertise your website here. Please contact: http://roodabatoz.com/store/Joshua', 'Home', '2017-10-29 01:55:05'),
(728, '2) You can advertise your Jobs/Careers on Roodab. Please refer to your nearest Area Center or IBA. Enquiry : http://roodabatoz.com/store/Joshua', 'Home', '2017-10-29 01:55:13'),
(729, '2) You can advertise your Jobs/Careers on Roodab. Please refer to your nearest Area Center or IBA. Enquiry : http://roodabatoz.com/store/Joshua', 'Expo', '2017-10-29 02:08:36'),
(730, '1) You can advertise your website on this website. Contact : Tang Chee Wah: http://roodabatoz.com/store/Joshua', 'Honey', '2017-10-29 09:53:58'),
(731, '2) You can advertise your Jobs/Careers on this website. Please contact : http://roodabatoz.com/store/Joshua ', 'Honey', '2017-10-29 09:54:08'),
(732, '1) You can advertise your website on this website. Contact : http://roodabatoz.com/store/Sophiahui/', 'Sarawak', '2017-10-30 07:44:55'),
(733, '2) You can advertise your Jobs/Careers on Roodab. Refer to your nearest Area Center or IBA. . Enquiry : http://roodabatoz.com/store/Sophiahui ', 'Sarawak', '2017-10-30 07:46:10'),
(734, '1) You can advertise your website on this website. Contact : Tang Chee Wah: http://roodabatoz.com/store/Joshua', 'BakeryCafe', '2017-10-31 00:09:52'),
(735, '2) You can advertise your Jobs/Careers on Roodab. Refer to your nearest Area Center or IBA. . Inquiry : http://roodabatoz.com/store/Joshua ', 'BakeryCafe', '2017-10-31 00:10:52'),
(736, '1) You can advertise your website on this website. Contact : Tang Chee Wah: http://roodabatoz.com/store/Joshua', 'MusangKing', '2017-10-31 01:04:15'),
(737, '2) You can advertise your Jobs/Careers on Roodab. Refer to your nearest Area Center or IBA. . Inquiry : http://roodabatoz.com/store/Joshua ', 'MusangKing', '2017-10-31 01:04:40'),
(738, '2) You can advertise your Jobs/Careers on Roodab. Refer to your nearest Area Center or IBA. . Inquiry : http://roodabatoz.com/store/Joshua ', 'CyberSecurity', '2017-10-31 03:22:45'),
(739, '1) You can advertise your website on this website. Contact : Tang Chee Wah: http://roodabatoz.com/store/Joshua', 'Soccer', '2017-10-31 14:06:21'),
(740, '2) You can advertise your Jobs/Careers on Roodab. Refer to your nearest Area Center or IBA. . Inquiry : http://roodabatoz.com/store/Joshua ', 'Soccer', '2017-10-31 14:06:39'),
(741, '2) You can advertise your Jobs/Careers on Roodab. Refer to your nearest Area Center or IBA. . Inquiry : http://roodabatoz.com/store/Joshua ', 'Health', '2017-11-01 04:38:01'),
(742, '2) You can advertise your Jobs/Careers on Roodab. Refer to your nearest Area Center or IBA. . Inquiry : http://roodabatoz.com/store/Joshua ', 'Moon', '2017-11-01 12:52:52'),
(743, '1) You can advertise your website on this website. Contact : Tang Chee Wah: http://roodabatoz.com/store/Joshua', 'Baby', '2017-11-02 13:46:28'),
(744, '2) You can advertise your Jobs/Careers on Roodab. Refer to your nearest Area Center or IBA. . Inquiry : http://roodabatoz.com/store/Joshua ', 'Baby', '2017-11-02 13:46:44'),
(745, '1) You can advertise your website on this website. Contact : Tang Chee Wah: http://roodabatoz.com/store/Joshua', 'Fast', '2017-11-02 15:10:51'),
(746, '2) You can advertise your Jobs/Careers on Roodab. Refer to your nearest Area Center or IBA. . Inquiry : http://roodabatoz.com/store/Joshua ', 'Fast', '2017-11-02 15:11:08'),
(747, '2) You can advertise your Jobs/Careers on Roodab. Refer to your nearest Area Center or IBA. . Inquiry : http://roodabatoz.com/store/Joshua ', 'News', '2017-11-03 02:37:08'),
(748, '1) You can advertise your website on this website. Contact : Tang Chee Wah: http://roodabatoz.com/store/Joshua', 'Millionaire', '2017-11-03 04:02:09'),
(749, '2) You can advertise your Jobs/Careers on Roodab. Refer to your nearest Area Center or IBA. . Enquiry : http://roodabatoz.com/store/Joshua ', 'Millionaire', '2017-11-03 04:02:20'),
(750, '2) You can advertise your Jobs/Careers on this website. Please contact : http://roodabatoz.com/store/Joshua ', 'SurvivalSkills', '2017-11-03 07:50:39'),
(751, '1) You can advertise your website on this website. Contact : Tang Chee Wah: http://roodabatoz.com/store/Joshua', 'Lawyer', '2017-11-03 10:23:36'),
(752, '2) You can advertise your Jobs/Careers on Roodab. Refer to your nearest Area Center or IBA. . Inquiry : http://roodabatoz.com/store/Joshua ', 'Lawyer', '2017-11-03 10:23:44'),
(753, '2) You can advertise your Jobs/Careers on Roodab. Refer to your nearest Area Center or IBA. . Enquiry : http://roodabatoz.com/store/Joshua ', 'Photography', '2017-11-04 05:22:54'),
(754, '2) You can advertise your Jobs/Careers on this website. Please contact : http://roodabatoz.com/store/Joshua ', 'GlobalBizOpp', '2017-11-05 05:37:26'),
(755, '2) You can advertise your Jobs/Careers on Roodab. Refer to your nearest Area Center or IBA. . Inquiry : http://roodabatoz.com/store/Joshua ', 'Love', '2017-11-07 02:29:52'),
(756, '1) You can advertise your website here. Please contact: http://roodabatoz.com/store/Soongweng', 'Melaka', '2017-11-07 05:11:41'),
(757, '2) You can advertise your Jobs/Careers on Roodab. Please refer to your nearest Area Center or IBA. Enquiry : http://roodabatoz.com/store/SoongWeng/', 'Melaka', '2017-11-07 05:12:09'),
(758, '2) You can advertise your Jobs/Careers on Roodab. Refer to your nearest Area Center or IBA. . Inquiry : http://roodabatoz.com/store/Joshua ', '', '2017-11-07 05:43:00'),
(759, '1) You can advertise your website here. Please contact: http://roodabatoz.com/store/Joshua', 'WonderWoman', '2017-11-07 07:26:21'),
(760, '2) You can advertise your Jobs/Careers on Roodab. Please refer to your nearest Area Center or IBA. Enquiry : http://roodabatoz.com/store/Joshua', 'WonderWoman', '2017-11-07 07:26:29'),
(761, '1) You can advertise your website here. Please contact: http://roodabatoz.com/store/Joshua', 'Holiday', '2017-11-07 12:43:08'),
(762, '2) You can advertise your Jobs/Careers on Roodab. Please refer to your nearest Area Center or IBA. Enquiry : http://roodabatoz.com/store/Joshua', 'Holiday', '2017-11-07 12:43:15'),
(763, '1) You can advertise your website on this website. Contact : Tang Chee Wah: http://roodabatoz.com/store/Joshua', 'BabyandKid', '2017-11-08 01:42:41'),
(764, '2) You can advertise your Jobs/Careers on Roodab. Refer to your nearest Area Center or IBA. . Enquiry : http://roodabatoz.com/store/Joshua ', 'BabyandKid', '2017-11-08 01:42:57'),
(765, '2) You can advertise your Jobs/Careers on this website. Please contact : http://roodabatoz.com/store/Joshua ', 'Mars', '2017-11-08 04:05:13'),
(766, '1) You can advertise your website on this website. Contact : Tang Chee Wah: http://roodabatoz.com/store/Joshua', 'Snooker', '2017-11-08 09:53:42'),
(767, '2) You can advertise your Jobs/Careers on Roodab. Refer to your nearest Area Center or IBA. . Inquiry : http://roodabatoz.com/store/Joshua ', 'Snooker', '2017-11-08 09:53:55'),
(768, '2) You can advertise your Jobs/Careers on Roodab. Refer to your nearest Area Center or IBA. . Enquiry : http://roodabatoz.com/store/Joshua ', 'GodisLove', '2017-11-08 10:24:23'),
(769, '1) You can advertise your website on this website. Contact : Tang Chee Wah: http://roodabatoz.com/store/Joshua', 'GiveandLove', '2017-11-08 10:25:51'),
(770, '2) You can advertise your Jobs/Careers on this website. Please contact : http://roodabatoz.com/store/Joshua ', 'GiveandLove', '2017-11-08 10:26:02'),
(771, '1) You can advertise your website on this website. Contact : Tang Chee Wah: http://roodabatoz.com/store/Joshua', 'Humour', '2017-11-08 11:27:14'),
(772, '2) You can advertise your Jobs/Careers on Roodab. Refer to your nearest Area Center or IBA. . Inquiry : http://roodabatoz.com/store/Joshua ', 'Humour', '2017-11-08 11:27:23'),
(774, '1) You can advertise your website here. Please contact: http://roodabatoz.com/store/Joshua', 'Cemetery', '2017-11-08 13:29:41'),
(775, '2) You can advertise your Jobs/Careers on Roodab. Please refer to your nearest Area Center or IBA. Enquiry : http://roodabatoz.com/store/Joshua', 'Cemetery', '2017-11-08 13:29:48'),
(776, '1) You can advertise your website here. Please contact: http://roodabatoz.com/store/TeressaTang/', 'Sabah', '2017-11-08 13:43:33'),
(777, '2) You can advertise your Jobs/Careers on Roodab. Please refer to your nearest Area Center or IBA. Enquiry : http://roodabatoz.com/store/TeressaTang/', 'Sabah', '2017-11-08 13:43:58'),
(779, '2) You can advertise your Jobs/Careers on Roodab. Please refer to your nearest Area Center or IBA. Enquiry : http://roodabatoz.com/store/Joshua', 'Water', '2017-11-08 15:02:25'),
(780, 'Ù…Ù† Ø¹Ø§Ø´Ù‚ Ø­ÛŒÙˆØ§Ù†Ø§Øª Ù‡Ø³ØªÙ…', 'danialpet', '2017-11-09 12:36:32'),
(781, '1) You can advertise your website on this website. Contact : Tang Chee Wah: http://roodabatoz.com/store/Joshua', 'Archaeology', '2017-11-10 08:29:44'),
(782, '2) You can advertise your Jobs/Careers on Roodab. Refer to your nearest Area Center or IBA. . Enquiry : http://roodabatoz.com/store/Joshua ', 'Archaeology', '2017-11-10 08:30:01'),
(783, 'Ø¹Ú©Ø§Ø³ÛŒ Ùˆ Ø·Ø±Ø§Ø­ÛŒ 3 Ø¨Ø¹Ø¯ÛŒ', 'hadinobaran', '2017-11-10 11:17:31'),
(784, 'Ø³Ø³Ø³Ø³Ø³Ø³Ø³Ø³Ø³Ø³Ø³Ø³Ø³Ø³Ø³Ø³Ø³Ø³Ø³Ø³Ø³Ø³Ø³Ø³Ø³Ø³Ø³Ø³Ø³Ø³Ø³Ø³Ø³Ø³Ø³Ø³Ø³Ø³Ø³Ø³Ø³Ø³Ø³Ø³Ø³Ø³Ø³Ø³Ø³Ø³Ø³Ø³Ø³Ø³Ø³Ø³Ø³Ø³Ø³Ø³Ø³Ø³Ø³Ø³Ø³Ø³Ø³Ø³Ø³Ø³Ø³Ø³Ø¨Ø¨Ø¨Ø¨Ø¨Ø¨Ø¨Ø¨Ø¨Ø¨Ø¨Ø¨Ø¨Ø¨Ø¨Ø¨Ø¨Ø¨Ø¨Ø¨Ø¨Ø¨Ø¨Ø¨Ø¨Ø¨Ø¨Ø¨', 'hadinobaran', '2017-11-10 11:18:41'),
(785, '1) You can advertise your website on this website. Contact : Tang Chee Wah: http://roodabatoz.com/store/Joshua', 'InterstellarTravel', '2017-11-11 05:21:12'),
(786, '2) You can advertise your Jobs/Careers on this website. Please contact : http://roodabatoz.com/store/Joshua ', 'InterstellarTravel', '2017-11-11 05:21:25'),
(787, '1) You can advertise your website on this website. Contact : Tang Chee Wah: http://roodabatoz.com/store/Joshua', 'AirForce', '2017-11-11 05:54:50'),
(788, '2) You can advertise your Jobs/Careers on Roodab. Refer to your nearest Area Center or IBA. . Inquiry : http://roodabatoz.com/store/Joshua ', 'AirForce', '2017-11-11 05:55:03'),
(789, '1) You can advertise your website on this website. Contact : Tang Chee Wah: http://roodabatoz.com/store/Joshua', 'Truth', '2017-11-11 09:06:20'),
(790, '2) You can advertise your Jobs/Careers on Roodab. Refer to your nearest Area Center or IBA. . Inquiry : http://roodabatoz.com/store/Joshua ', 'Truth', '2017-11-11 09:06:36'),
(791, '1) You can advertise your website on this website. Contact : Tang Chee Wah: http://roodabatoz.com/store/Joshua', 'Arts', '2017-11-11 09:41:33'),
(792, '2) You can advertise your Jobs/Careers on Roodab. Refer to your nearest Area Center or IBA. . Inquiry : http://roodabatoz.com/store/Joshua ', 'Arts', '2017-11-11 09:41:46'),
(793, '1) You can advertise your website on this website. Contact : Tang Chee Wah: http://roodabatoz.com/store/Joshua', 'Cannabis', '2017-11-11 15:29:10'),
(794, '2) You can advertise your Jobs/Careers on Roodab. Refer to your nearest Area Center or IBA. . Inquiry : http://roodabatoz.com/store/Joshua ', 'Cannabis', '2017-11-11 15:29:27'),
(795, 'Ø¹Ø§Ø´Ù‚ØªÙ… Ø³ÙˆÙ…Ø§', 'robatjain', '2017-11-13 19:17:17'),
(796, '1) You can advertise your website here. http://roodabatoz.com/store/Yeska/', 'yeska', '2017-11-14 04:45:27'),
(797, '2) You can advertise your Jobs on ROODAB, Please contact your IBA.', 'yeska', '2017-11-14 04:47:47'),
(801, 'Mini Pau', 'AcaFrozen', '2017-11-15 08:44:45'),
(800, 'Dim Sum', 'AcaFrozen', '2017-11-15 08:44:17'),
(802, '1) You can advertise your website on this website. Contact : Tang Chee Wah: http://roodabatoz.com/store/Joshua', 'Drone', '2017-11-16 15:08:56'),
(803, '2) You can advertise your Jobs/Careers on Roodab. Refer to your nearest Area Center or IBA. . Inquiry : http://roodabatoz.com/store/Joshua ', 'Drone', '2017-11-16 15:09:15'),
(804, 'rasoulking', 'rasoulking', '2017-11-16 19:00:21'),
(805, 'rasoulking', 'rasoulking', '2017-11-16 19:00:55'),
(806, 'rasoulking', 'rasoulking', '2017-11-16 19:02:19'),
(807, 'rasoulkinger', 'rasoulking', '2017-11-16 19:13:26'),
(808, '1) You can advertise your website on this website. Contact : Tang Chee Wah: http://roodabatoz.com/store/Joshua', 'Milk', '2017-11-19 14:56:13'),
(809, '2) You can advertise your Jobs/Careers on Roodab. Refer to your nearest Area Center or IBA. . Enquiry : http://roodabatoz.com/store/Joshua ', 'Milk', '2017-11-19 14:56:28'),
(810, '1) You can advertise your website on this website. Contact : Tang Chee Wah: http://roodabatoz.com/store/Joshua', 'Obesity', '2017-11-19 15:18:37'),
(811, '2) You can advertise your Jobs/Careers on this website. Please contact : http://roodabatoz.com/store/Joshua ', 'Obesity', '2017-11-19 15:18:50'),
(812, '1) You can advertise your website on this website. Contact : Tang Chee Wah: http://roodabatoz.com/store/Joshua', 'AIGod', '2017-11-21 16:00:21'),
(813, '2) You can advertise your Jobs/Careers on Roodab. Refer to your nearest Area Center or IBA. . Enquiry : http://roodabatoz.com/store/Joshua ', 'AIGod', '2017-11-21 16:00:38'),
(814, 'Ø³Ø§Ø®Øª ÙˆØ¨ Ø³Ø§ÛŒØª', 'Majidjafari', '2017-11-23 08:35:05'),
(815, '     Ø²Ù†Ø¯Ú¯ÛŒ  Ø¨Ø§ ÙÙ†Ø§ÙˆØ±ÛŒ Ù‡Ø§ÛŒ Ù†ÙˆÛŒÙ† Ø¨Ù‡ Ø§Ø¸Ù„Ø§Ø¹Ø§Øª Ù…Ø§ Ùˆ Ø²Ù†Ø¯Ú¯ÛŒ Ø±ÙˆØ¯Ù…Ø±Ù‡ Ø¯ Ù…Ø§ Ø±Ø¨Ø· Ø¯Ø§Ø´ØªÙ‡ ÙˆÙ…Ø§ Ø¨Ø§ÛŒØ¯ Ø¨Ø§ Ø¨Ø§Ù„Ø§ Ù†Ú¯Ù‡ Ø¯Ø§Ø´ØªÙ† Ø§Ø·Ù„Ø§Ø¹Ø§Øª Ø®ÙˆØ¯ Ø', 'danialpet', '2017-11-26 19:37:35'),
(816, '     Ø²Ù†Ø¯Ú¯ÛŒ  Ø¨Ø§ ÙÙ†Ø§ÙˆØ±ÛŒ Ù‡Ø§ÛŒ Ù†ÙˆÛŒÙ† Ø¨Ù‡ Ø§Ø¸Ù„Ø§Ø¹Ø§Øª Ù…Ø§ Ùˆ Ø²Ù†Ø¯Ú¯ÛŒ Ø±ÙˆØ¯Ù…Ø±Ù‡ Ø¯ Ù…Ø§ Ø±Ø¨Ø· Ø¯Ø§Ø´ØªÙ‡ ÙˆÙ…Ø§ Ø¨Ø§ÛŒØ¯ Ø¨Ø§ Ø¨Ø§Ù„Ø§ Ù†Ú¯Ù‡ Ø¯Ø§Ø´ØªÙ† Ø§Ø·Ù„Ø§Ø¹Ø§Øª Ø®ÙˆØ¯ Ø', 'danialpet', '2017-11-26 19:37:55'),
(825, '1) You can advertise your website on this website. Contact : Tang Chee Wah: http://roodabatoz.com/store/Joshua', 'History', '2017-12-04 10:58:30'),
(818, '2) You can advertise your Jobs/Careers on Roodab. Refer to your nearest Area Center or IBA. . Inquiry : http://roodabatoz.com/store/Joshua ', 'Doctors', '2017-11-27 10:33:19'),
(826, '2) You can advertise your Jobs/Careers on Roodab. Refer to your nearest Area Center or IBA. . Inquiry : http://roodabatoz.com/store/Joshua ', 'History', '2017-12-04 10:59:16'),
(822, 'Decor Max Marketing (Ipoh) Plywood Trading ', 'Axon', '2017-12-01 15:43:50'),
(823, '1) You can advertise your website on this website. Contact : Tang Chee Wah: http://roodabatoz.com/store/Joshua', 'KravMaga', '2017-12-02 15:42:52'),
(824, '2) You can advertise your Jobs/Careers on Roodab. Refer to your nearest Area Center or IBA. . Enquiry : http://roodabatoz.com/store/Joshua ', 'KravMaga', '2017-12-02 15:43:10'),
(827, '1) You can advertise your website on this website. Contact : Tang Chee Wah: http://roodabatoz.com/store/Joshua', 'Apocalypse', '2017-12-06 05:08:54'),
(828, '2) You can advertise your Jobs/Careers on Roodab. Refer to your nearest Area Center or IBA. . Inquiry : http://roodabatoz.com/store/Joshua ', 'Apocalypse', '2017-12-06 05:09:37'),
(829, '1) You can advertise your website on this website. Contact : Tang Chee Wah: http://roodabatoz.com/store/Joshua', 'Family', '2017-12-08 06:15:18'),
(830, '2) You can advertise your Jobs/Careers on Roodab. Refer to your nearest Area Center or IBA. . Inquiry : http://roodabatoz.com/store/Joshua ', 'Family', '2017-12-08 06:15:27'),
(831, '1) You can advertise your website on this website. Contact : Tang Chee Wah: http://roodabatoz.com/store/Joshua', 'Animals', '2017-12-08 07:03:23'),
(832, '2) You can advertise your Jobs/Careers on Roodab. Refer to your nearest Area Center or IBA. . Inquiry : http://roodabatoz.com/store/Joshua ', 'Animals', '2017-12-08 07:03:31'),
(833, '1) You can advertise your website on this website. Contact : Tang Chee Wah: http://roodabatoz.com/store/Joshua', 'Shareconomy', '2017-12-08 09:05:38'),
(834, '2) You can advertise your Jobs/Careers on Roodab. Refer to your nearest Area Center or IBA. . Inquiry : http://roodabatoz.com/store/Joshua ', 'Shareconomy', '2017-12-08 09:05:46'),
(835, 'Ø°Ø±Ø§Ù„Ø²Ø±Ø°Ø¦ÙˆÙ†Ù†ØªØ°Ùˆ', 'soma', '2017-12-08 19:09:39'),
(836, '2) You can advertise your Jobs/Careers on Roodab. Refer to your nearest Area Center or IBA. . Inquiry : http://roodabatoz.com/store/Joshua ', 'Food', '2017-12-09 08:59:46'),
(837, '1) You can advertise your website on this website. Contact : Tang Chee Wah: http://roodabatoz.com/store/Joshua', 'Parenting', '2017-12-09 14:10:18'),
(838, '2) You can advertise your Jobs/Careers on Roodab. Refer to your nearest Area Center or IBA. . Inquiry : http://roodabatoz.com/store/Joshua ', 'Parenting', '2017-12-09 14:10:26'),
(839, 'ÙØ±ÙˆØ´ Ù„ÙˆØ§Ø²Ù… â€Ø®Ø§Ù†Ú¯ÛŒ', 'pezeshkiiran', '2017-12-10 14:56:15'),
(840, '1) You can advertise your website on this website. Contact : Tang Chee Wah: http://roodabatoz.com/store/Joshua', 'Knowledge', '2017-12-13 02:20:02'),
(841, '2) You can advertise your Jobs/Careers on Roodab. Refer to your nearest Area Center or IBA. . Inquiry : http://roodabatoz.com/store/Joshua ', 'Knowledge', '2017-12-13 02:20:10'),
(842, '2) You can advertise your Jobs/Careers on Roodab. Refer to your nearest Area Center or IBA. . Inquiry : http://roodabatoz.com/store/Joshua ', 'Vegan', '2017-12-13 03:30:50'),
(843, '1) You can advertise your website on this website. Contact : Tang Chee Wah: http://roodabatoz.com/store/Joshua', 'Happiest', '2017-12-13 07:25:23'),
(844, '2) You can advertise your Jobs/Careers on Roodab. Refer to your nearest Area Center or IBA. . Inquiry : http://roodabatoz.com/store/Joshua ', 'Happiest', '2017-12-13 07:25:30'),
(845, 'Ø¨Ø§ Ø¹Ù†Ø§ÛŒØ§Øª Ø®Ø¯Ø§ÙˆÙ†Ø¯ Ø§ÛŒÙ† Ù…Ø¬Ù…ÙˆØ¹Ù‡ Ø§Ø²Ù‡Ù…Ù‡ ØªÙˆÙ„ÛŒØ¯Ú©Ù†Ù†Ø¯Ú¯Ø§Ù† ÙˆÙˆØ§Ø±Ø¯ Ú©Ù†Ù†Ø¯Ú¯Ø§Ù† Ø¯Ø¹ÙˆØª Ø¨Ù‡ Ù‡Ù…Ú©Ø§Ø±ÛŒ Ù…ÛŒ Ù†Ù…Ø§ÛŒØ¯ ', 'yaran', '2017-12-13 09:39:22'),
(846, '1) You can advertise your website on this website. Contact : Tang Chee Wah: http://roodabatoz.com/store/Joshua', 'Guangdong', '2017-12-14 00:30:14'),
(847, '2) You can advertise your Jobs/Careers on Roodab. Refer to your nearest Area Center or IBA. . Inquiry : http://roodabatoz.com/store/Joshua ', 'Guangdong', '2017-12-14 00:30:23'),
(848, '1) You can advertise your website on this website. Contact : Tang Chee Wah: http://roodabatoz.com/store/Joshua', 'Galaxy', '2017-12-14 00:33:37'),
(849, '2) You can advertise your Jobs/Careers on Roodab. Refer to your nearest Area Center or IBA. . Inquiry : http://roodabatoz.com/store/Joshua ', 'Galaxy', '2017-12-14 00:33:47'),
(850, '1) You can advertise your website on this website. Contact : Tang Chee Wah: http://roodabatoz.com/store/Joshua', 'CosmicLove', '2017-12-14 00:50:00'),
(851, '2) You can advertise your Jobs/Careers on Roodab. Refer to your nearest Area Center or IBA. . Inquiry : http://roodabatoz.com/store/Joshua ', 'CosmicLove', '2017-12-14 00:50:11'),
(852, '1) You can advertise your website on this website. Contact : Tang Chee Wah: http://roodabatoz.com/store/Joshua', 'BreakingNews', '2017-12-14 02:59:13'),
(853, '2) You can advertise your Jobs/Careers on Roodab. Refer to your nearest Area Center or IBA. . Inquiry : http://roodabatoz.com/store/Joshua ', 'BreakingNews', '2017-12-14 02:59:21'),
(854, '1) You can advertise your website on this website. Contact : Tang Chee Wah: http://roodabatoz.com/store/Joshua', 'SearchandRescue', '2017-12-14 14:11:19'),
(855, '2) You can advertise your Jobs/Careers on Roodab. Refer to your nearest Area Center or IBA. . Inquiry : http://roodabatoz.com/store/Joshua ', 'SearchandRescue', '2017-12-14 14:11:33'),
(856, '1) You can advertise your website on this website. Contact : Tang Chee Wah: http://roodabatoz.com/store/Joshua', 'Future', '2017-12-15 02:53:41'),
(857, '2) You can advertise your Jobs/Careers on Roodab. Refer to your nearest Area Center or IBA. . Inquiry : http://roodabatoz.com/store/Joshua ', 'Future', '2017-12-15 02:53:49'),
(858, 'Ø¨Ø§Ø²Ø§Ø± Ø³Ø±Ù¾ÙˆØ´ÛŒØ¯Ù‡ ØªØ¨Ø±ÛŒØ²', 'bazartabriz', '2017-12-16 09:18:18'),
(859, '  Ø¨Ø§Ø²Ø§Ø±Ø³Ø±Ù¾ÙˆØ´ÛŒØ¯Ù‡ ØªØ¨Ø±ÛŒØ²', 'bazartabriz', '2017-12-16 09:18:54'),
(860, 'Ø§Ù…Ø§Ú©Ù† Ø¨Ø§Ø² Ø³Ø§Ø²ÛŒ Ø¨Ø§Ø²Ø§Ø± ØªØ¨Ø±ÛŒØ² ', 'bazartabriz', '2017-12-16 09:19:38'),
(861, 'Ø¨Ø§Ø²Ø§Ø± Ø³Ø± Ù¾ÙˆØ´ÛŒØ¯Ù‡ ØªØ¨Ø±ÛŒØ²     Ø§Ù…Ø§Ú©Ù† Ø¯Ø± Ø­Ø§Ù„ Ø¨Ø§Ø² Ø³Ø§Ø²ÛŒ      Ø¯ÛŒØ¯Ù† Ù…Ú©Ø§Ù† Ù‡Ø§ÛŒ Ø¯ÛŒØ¯Ù†ÛŒ Ùˆ Ø³Ù‚Ù Ù¾ÙˆØ´ÛŒØ¯Ù‡ Ø¨Ø§Ø²Ø§Ø±       Ø¯Ú©Ø§Ù† Ù‡Ø§ Ù‡Ø§ÛŒ Ø¯Ø§Ø®Ù„ Ø¨Ø§Ø²', 'bazartabriz', '2017-12-16 09:24:19'),
(862, '1) You can advertise your website on this website. Contact : Tang Chee Wah: http://roodabatoz.com/store/Joshua', 'Match', '2017-12-16 10:04:16'),
(863, '2) You can advertise your Jobs/Careers on Roodab. Refer to your nearest Area Center or IBA. . Inquiry : http://roodabatoz.com/store/Joshua ', 'Match', '2017-12-16 10:04:24'),
(864, '1) You can advertise your website on this website. Contact : Tang Chee Wah: http://roodabatoz.com/store/Joshua', 'Space', '2017-12-17 04:03:52'),
(865, '2) You can advertise your Jobs/Careers on Roodab. Refer to your nearest Area Center or IBA. . Inquiry : http://roodabatoz.com/store/Joshua ', 'Space', '2017-12-17 04:04:02'),
(866, '1) You can advertise your website on this website. Contact : Tang Chee Wah: http://roodabatoz.com/store/Joshua', 'Airlines', '2017-12-17 04:46:40'),
(867, '2) You can advertise your Jobs/Careers on Roodab. Refer to your nearest Area Center or IBA. . Inquiry : http://roodabatoz.com/store/Joshua ', 'Airlines', '2017-12-17 04:47:10'),
(868, '1) You can advertise your website on this website. Contact : Tang Chee Wah: http://roodabatoz.com/store/Joshua', 'Cash', '2017-12-19 02:45:26'),
(869, '2) You can advertise your Jobs/Careers on Roodab. Refer to your nearest Area Center or IBA. . Inquiry : http://roodabatoz.com/store/Joshua ', 'Cash', '2017-12-19 02:45:33'),
(870, '1) You can advertise your website on this website. Contact : Tang Chee Wah: http://roodabatoz.com/store/Joshua', 'Dogs', '2017-12-19 06:59:05'),
(871, '2) You can advertise your Jobs/Careers on Roodab. Refer to your nearest Area Center or IBA. . Inquiry : http://roodabatoz.com/store/Joshua ', 'Dogs', '2017-12-19 06:59:13'),
(872, '1) You can advertise your website on this website. Contact : Tang Chee Wah: http://roodabatoz.com/store/Joshua', 'Shopping', '2017-12-20 04:42:22'),
(873, '2) You can advertise your Jobs/Careers on Roodab. Refer to your nearest Area Center or IBA. . Inquiry : http://roodabatoz.com/store/Joshua ', 'Shopping', '2017-12-20 04:42:30'),
(874, '1) You can advertise your website on this website. Contact : http://roodabatoz.com/store/Lovely/', 'Lovely', '2017-12-20 13:25:39'),
(875, '2) You can advertise your Jobs/Careers on Roodab. Refer to your nearest Area Center or IBA. . Inquiry : http://roodabatoz.com/store/Lovely/ ', 'Lovely', '2017-12-20 13:28:36'),
(876, '1) You can advertise your website on this website. Contact : http://roodabatoz.com/store/LyzelMae19', 'LyzelMae19', '2017-12-21 08:44:23'),
(877, '2) You can advertise your Jobs/Careers on Roodab. Refer to your nearest Area Center or IBA. . Inquiry : http://roodabatoz.com/store/LyzelMae19', 'LyzelMae19', '2017-12-21 08:45:06'),
(878, '1) You can advertise your website on this website. Contact : http://roodabatoz.com/store/Loverna', 'Loverna', '2017-12-21 09:56:01'),
(879, '2) You can advertise your Jobs/Careers on Roodab. Refer to your nearest Area Center or IBA. . Inquiry : http://roodabatoz.com/store/Loverna', 'Loverna', '2017-12-21 09:56:27'),
(880, '1) You can advertise your website on this website. Contact : http://roodabatoz.com/store/Lovely/', 'Laguna', '2017-12-21 12:01:11'),
(881, '2) You can advertise your Jobs/Careers on Roodab. Refer to your nearest Area Center or IBA. . Inquiry : http://roodabatoz.com/store/Lovely', 'Laguna', '2017-12-21 12:01:44'),
(882, '1) You can advertise your website on this website. Contact : http://roodabatoz.com/store/Imilda', 'Imilda', '2017-12-22 08:38:04'),
(883, '2) You can advertise your Jobs/Careers on Roodab. Refer to your nearest Area Center or IBA. . Inquiry : http://roodabatoz.com/store/Imilda', 'Imilda', '2017-12-22 08:38:30'),
(968, '1) You can advertise your websites here. Contact: http://roodabatoz.com/store/AkiraAldamia/', 'AkiraAldamia', '2018-02-03 08:05:45'),
(885, ' You can advertise your Jobs/Careers on Roodab. Refer to your nearest Area Center or IBA. . Inquiry : http://roodabatoz.com/store/Imilda', 'NegrosOccidental', '2017-12-22 10:26:34'),
(886, 'ØªØ§Ú©Ø³ÛŒ Ø³Ø±ÙˆÛŒØ³', 'irantabstaxi', '2017-12-22 11:43:11'),
(887, '1) You can advertise your website on this website. Contact :  http://roodabatoz.com/store/Jane/', 'Jane', '2017-12-24 14:22:19'),
(888, '2) You can advertise your Jobs/Careers on Roodab. Refer to your nearest Area Center or IBA. . Inquiry : http://roodabatoz.com/store/Jane/', 'Jane', '2017-12-24 14:22:54'),
(889, 'Ø§Ù…ÙˆØ²Ø´ Ø±ÙˆØ¯Ø§Ø¨', 'test10', '2017-12-25 13:32:06'),
(890, 'Ø§Ù…ÙˆØ²Ø´ Ú¯Ø±Ø¯Ø´Ú¯Ø±ÛŒ', 'test10', '2017-12-25 13:32:25'),
(891, 'Ø§Ù…ÙˆØ²Ø´ ÙˆØ¨Ø³Ø§ÛŒØª', 'test10', '2017-12-25 13:32:38'),
(893, 'Ù…Ø´Ø§ÙˆØ±Ù‡ ØªØ®ØµØµÛŒ Ø¯ÙˆØ±Ù‡ Ø¯ÙˆÙ… Ø¯Ø¨ÛŒØ±Ø³ØªØ§Ù† Ùˆ Ø§Ù†ØªØ®Ø§Ø¨ Ø±Ø´ØªÙ‡', 'Mrbiology', '2017-12-25 18:59:17'),
(895, '1) You can advertise your website here, please contact: http://roodabatoz.com/store/Erlina/', 'Erlina', '2018-01-01 06:03:11'),
(896, '2) You can advertise your Jobs/Careers on Roodab. Please contact the nearest Area Center or IBA. ', 'Erlina', '2018-01-01 06:04:43'),
(897, '1) You can advertise your websites here, please contact :http://roodabatoz.com/store/Lenzie/', 'Lenzie', '2018-01-02 04:35:04'),
(898, '2) You can advertise Your Jobs/Careers here, please refer to your nearest Area Center or IBA.', 'Lenzie', '2018-01-02 04:37:38'),
(903, 'Ù…Ù‡Ù†Ø¯Ø³ ØªÚ©Ù†Ù„ÙˆÚ˜ÛŒ Ø§Ù„Ú©ØªØ±ÙˆÙ†ÛŒÚ©  Ø¨Ø§ Ø³Ø§Ø¨Ù‚Ù‡ Ø³ÛŒ Ø³Ø§Ù„ Ú©Ø§Ø±  Ø¯Ø± Ø¶Ù…ÛŒÙ†Ù‡ Ø·Ø±Ø§Ø­ÛŒ  Ø³Ø§Ø®Øª Ùˆ Ù…ÙˆÙ†ØªØ§Ú˜ Ø§Ù†ÙˆØ§Ø¹ ØªØ§Ø¨Ù„ÙˆÙ‡Ø§ÛŒ Ø¨Ø§Ù†Ú© Ø®Ø§Ø²Ù† . Ø±Ø§Ù‡ Ø§Ù†Ø¯Ø§Ø²', 'msh1349', '2018-01-04 12:15:34'),
(904, '1) You can advertise your website on this website. Contact : http://roodabatoz.com/store/Meriam/', 'Meriam', '2018-01-08 13:04:43'),
(905, '2) You can advertise your Jobs/Careers on Roodab. Refer to your nearest Area Center or IBA. . Inquiry : http://roodabatoz.com/store/Meriam/ ', 'Meriam', '2018-01-08 13:05:11'),
(909, '1) You can advertise your Jobs/careers on this website. Please refer to your nearest Area Center or IBA. Contact: http://roodabatoz.com/store/Lenzie/', 'Palawan', '2018-01-11 04:48:09'),
(908, 'Ø§Ù„Ù…Ø§Ø³ Ø±Ø§ Ø¬Ø² Ø¯Ø± Ú˜Ø±ÙØ§ÛŒ Ø²Ù…ÛŒÙ† Ù†Ù…ÛŒ ØªÙˆØ§Ù† ÛŒØ§ÙØª Ùˆ Ø­Ù‚Ø§ÛŒÙ‚ Ø±Ø§ Ø¬Ø² Ø¯Ø± Ø§Ø¹Ù…Ø§Ù‚ Ø§Ù†Ø¯ÛŒØ´Ù‡ Ù†Ù…ÛŒ ØªÙˆØ§Ù† ÙƒØ´Ù ÙƒØ±Ø¯.                                         Ù…Ø´Ø', 'mrbiology', '2018-01-09 08:54:36'),
(910, '1) You can advertise your Jobs/careers on this website. Please refer to your nearest Area Center or IBA. Contact: http://roodabatoz.com/store/Meriam/', 'NegrosOriental', '2018-01-11 06:32:53'),
(911, '1) You can advertise your Jobs/careers on this website. Please refer to your nearest Area Center or IBA. Contact: http://roodabatoz.com/store/Jane/', 'CamarinesNorte', '2018-01-11 08:16:06'),
(912, '1) You can advertise your Jobs/careers on this website. Please refer to your nearest Area Center or IBA. Contact: http://roodabatoz.com/store/Joshua/', 'Texas', '2018-01-11 09:07:16'),
(913, '1) You can advertise your Jobs/careers on this website. Please refer to your nearest Area Center or IBA. Contact: http://roodabatoz.com/store/Erlina/', 'Rizal', '2018-01-11 09:34:21'),
(914, 'Ø·Ø±Ø§Ø­ÛŒ Ø¯Ú©ÙˆØ±Ø§Ø³ÛŒÙˆÙ† Ø¯Ø§Ø®Ù„ÛŒ', 'smpayami', '2018-01-11 17:20:07'),
(915, '@omid1177 ØªÙ„Ú¯Ø±Ø§Ù… ', 'Amandadi', '2018-01-16 07:38:24'),
(916, 'Ù…Ø¯ÛŒØ±ÛŒØª Ø§Ø¬Ø±Ø§ÛŒ ÙˆØªÙˆØ³Ø¹Ù‡ Ø®Ø¯Ù…Ø§Øª Ø±ÙˆØ¯Ø§Ø¨ Ø¯Ø± Ø§ÛŒØ±Ø§Ù† ', 'Amandadi', '2018-01-16 07:38:52'),
(920, 'Ø®Ø¯Ø§ÛŒØ§ Ø³Ù¾Ø§Ø³Ú¯Ø°Ø§Ø±Ù… Ø§Ø² Ø§ÛŒÙ†Ú©Ù‡ Ø³Ù„Ø§Ù…ØªÛŒ Ø±Ø§ Ø¨Ù‡ Ù…Ù† Ø¹Ø·Ø§ Ú©Ø±Ø¯ÛŒ .Ø§Ø² Ø§ÛŒÙ†Ú©Ù‡ Ù‡Ù…ÛŒØ´Ù‡ Ù‡Ù…Ø±Ø§Ù‡ Ù…Ù† ', 'Aliazadbakht', '2018-01-17 18:44:35'),
(918, 'ÙÙˆØ§Ø¯ Ø¨ÛŒÚ¯ÛŒ      Ù…Ø¯Ø±Ø³ Ø¢Ù…Ø§Ø± Ùˆ Ø§Ø­ØªÙ…Ø§Ù„      Ú©Ø§Ø±Ø´Ù†Ø§Ø³ÛŒ Ø§Ø±Ø´Ø¯ Ùˆ Ø¯Ú©ØªØ±ÛŒ            Ù…ÙˆÙ„Ù Ú©ØªØ¨ Ø§Ø­ØªÙ…Ø§Ù„ Ùˆ Ø¢Ù…Ø§Ø±Ø±ÛŒØ§Ø¶ÛŒ Ùˆ Ø±Ú¯Ø±Ø³ÛŒÙˆÙ† Ùˆ Ù†Ù…ÙˆÙ†Ù‡ Ú¯ÛŒ', 'foad1363', '2018-01-16 10:55:41'),
(919, 'Ø¨Ø±Ú¯Ø²Ø§Ø±ÛŒ Ø¯ÙˆØ±Ù‡ Ù‡Ø§ÛŒ ØªØ®ØµØµÛŒ Ø¨Ø§Ø²Ø§Ø± Ú©Ø§Ø±     icdl,autocad,3d max ,        ÙØªÙˆØ´Ø§Ù¾      Ø§Ø®Ø° Ù…Ø¯Ø±Ú© Ø¯ÛŒÙ¾Ù„Ù… Ùˆ Ù…Ø´Ø§ÙˆØ±Ù‡ Ø¬Ù‡Øª ÙˆØ±ÙˆØ¯ Ø¨Ù‡ Ø¨Ø§Ø²Ø§Ø± Ú©Ø§Ø±      ', 'foad1363', '2018-01-16 11:00:01'),
(921, 'Ø®Ø¯Ø§ÛŒØ§ Ø³Ù¾Ø§Ø³Ú¯Ø°Ø§Ø±Ù… Ø§Ø² Ø§ÛŒÙ†Ú©Ù‡ Ø³Ù„Ø§Ù…ØªÛŒ Ø±Ø§ Ø¨Ù‡ Ù…Ù† Ø¹Ø·Ø§ Ú©Ø±Ø¯ÛŒ .Ø§Ø² Ø§ÛŒÙ†Ú©Ù‡ Ù‡Ù…ÛŒØ´Ù‡ Ù‡Ù…Ø±Ø§Ù‡ Ù…Ù† ', 'Aliazadbakht', '2018-01-17 18:46:04'),
(922, 'Ø¯Ø± Ø³Ø§Ù„ 1362 Ù¾Ø³ Ø§Ø² Ø§ÛŒØ¬Ø§Ø¯ ØªØºÛŒÛŒØ±Ø§Øª Ø¯Ø± Ù†Ø¸Ø§Ù… ØµÙ†Ø¹ØªÛŒ Ú©Ø´ÙˆØ±ØŒ Ø³Ø§Ø²Ù…Ø§Ù† ØµÙ†Ø§ÛŒØ¹ Ú©ÙˆÚ†Ú© Ùˆ Ù†ÙˆØ§Ø­ÛŒ ØµÙ†Ø¹ØªÛŒ Ø§ÛŒØ±Ø§Ù† Ø¨Ø§ Ú©Ù„ÛŒÙ‡ ÙˆØ¸Ø§ÛŒÙ Ø¯Ø± ÙˆØ²Ø§Ø±Øª Ø', 'iranproducts', '2018-01-21 09:26:21'),
(923, '1) You can advertise your Jobs/careers on this website. Please refer to your nearest Area Center or IBA. Contact: http://roodabatoz.com/store/LisaNawi/', 'Johor', '2018-01-22 02:47:27'),
(924, '1) You can Advertise your Jobs/Careers in this website. Please contact the nearest Area Center or IBA.', 'Pahang', '2018-01-22 10:35:31'),
(925, '1) You can Advertise your Jobs/Careers in this website. Please contact the nearest Area Center or IBA.', 'Penang', '2018-01-22 10:45:03'),
(926, '1) You can Advertise your Jobs/Careers in this website. Please contact the nearest Area Center or IBA.', 'Eric', '2018-01-24 04:06:23'),
(927, '2) You can advertise your websites here. Please contact: http://roodabatoz.com/store/Eric/', 'Eric', '2018-01-24 04:07:50'),
(929, 'Ø®Ø¯Ø§ÙŠ Ø¨Ø²Ø±Ú¯ Ø±Ø§ Ø³Ù¾Ø§Ø³Ú¯Ø²Ø§Ø±Ù… ÙƒÙ‡ Ù†Ø¹Ù…Øª Ø®Ø¯Ù…ØªÚ¯Ø²Ø§Ø±ÙŠ Ø¨Ù‡ ØªÙ„Ø§Ø´Ú¯Ø±Ø§Ù† Ø¹Ø±ØµÙ‡ ØµÙ†Ø¹Øª Ø§Ø³ØªØ§Ù† Ø§Ù„Ø¨Ø±Ø² Ø±Ø§ Ø¨Ù‡ Ù…Ø§ Ø¹Ø·Ø§ ÙØ±Ù…ÙˆØ¯.', 'iranproducts1md', '2018-01-24 09:29:30'),
(930, 'Ø§Ø³ØªØ§Ù†ÙŠ ÙƒÙ‡ Ù‚Ø§Ø¨Ù„ÙŠØªÙ‡Ø§ÙŠ ØµÙ†Ø¹ØªÙŠ Ø¨Ø§Ù„Ø§ÙŠÙŠ Ø¯Ø§Ø±Ø¯ Ùˆ Ø¨Ø³ÙŠØ§Ø±ÙŠ Ø§Ø² ØµÙ†Ø§ÙŠØ¹ Ø¨Ø§ Ù†Ù‚Ø´ ÙƒØ´ÙˆØ±ÙŠ Ùˆ Ù…Ù†Ø·Ù‚Ù‡ Ø§ÙŠ Ø¯Ø± Ø¢Ù† ÙØ¹Ø§Ù„ÙŠØª Ù…ÙŠÙ†Ù…Ø§ÙŠÙ†Ø¯.', 'iranproducts1md', '2018-01-24 09:29:50'),
(931, 'Ø±Ø§ÙŠ Ù…Ù† Ùˆ Ù‡Ù…ÙƒØ§Ø±Ø§Ù†Ù… Ø¯Ø± Ø´Ø±ÙƒØª Ø´Ù‡Ø±ÙƒÙ‡Ø§ÙŠ ØµÙ†Ø¹ØªÙŠ Ø§Ø³ØªØ§Ù† Ù…Ø§ÙŠÙ‡ Ù…Ø¨Ø§Ù‡Ø§Øª Ø§Ø³Øª ÙƒÙ‡ Ø§Ø² Ø·Ø±ÙŠÙ‚ Ø§ÙŠÙ† Ù¾Ù„ Ø§Ø±ØªØ¨Ø§Ø·ÙŠ Ø¨Ù‡ Ø¯Ø±ÙŠØ§ÙŠ Ø¨ÙŠÙƒØ±Ø§Ù† Ù‡Ù…ØªØŒ ØªÙ„', 'iranproducts1md', '2018-01-24 09:30:04'),
(932, '1) You can Advertise your Jobs/Careers in this website. Please contact the nearest Area Center or IBA.', 'Amanda', '2018-01-24 10:02:12'),
(1018, '2) You can advertise your websites here. Contact: http://roodabatoz.com/store/Joshua/', 'Amanda', '2018-02-11 00:08:14'),
(934, '1) You can Advertise your Jobs/Careers in this website. Please contact the nearest Area Center or IBA.', 'Jewelry', '2018-01-25 11:15:05'),
(935, '2) You can advertise your websites here. Please contact: http://roodabatoz.com/store/Joshua/', 'Jewelry', '2018-01-25 11:15:30'),
(936, '1) You can Advertise your Jobs/Careers in this website. Please contact the nearest Area Center or IBA.', 'Jewellery', '2018-01-25 11:38:44'),
(937, '2) You can advertise your websites here. Please contact: http://roodabatoz.com/store/Joshua/', 'Jewellery', '2018-01-25 11:39:03'),
(938, '3) Please contact: http://roodabatoz.com/store/Amanda/', 'Jewellery', '2018-01-25 11:40:41'),
(940, '3) Please contact: http://roodabatoz.com/store/Amanda/', 'Jewelry', '2018-01-25 11:50:45'),
(941, '1) You can Advertise your Jobs/Careers in this website. Please contact the nearest Area Center or IBA.', 'Tainan', '2018-01-25 13:00:19'),
(942, '2) You can advertise your websites here. Please contact: http://roodabatoz.com/store/LingLing/', 'Tainan', '2018-01-25 13:00:51'),
(945, '2) You can advertise your Jobs here. Please contact the nearest IBA or Area Center.', 'Beauty', '2018-01-27 15:22:57'),
(946, '2) You can advertise your Jobs here. Please contact the nearest IBA or Area Center.', 'Mens', '2018-01-27 15:43:45'),
(947, '1) You can advertise you website here. http://roodabatoz.com/store/Joshua/', 'Fashion', '2018-01-27 16:03:15'),
(948, '2) You can advertise your Jobs here. Please contact the nearest IBA or Area Center.', 'Fashion', '2018-01-27 16:03:23'),
(1019, '1) You can advertise your websites here. Contact: http://roodabatoz.com/store/Joshua/', 'SkillsAcademy', '2018-02-11 14:59:23'),
(951, '1) You can advertise your websites here. Contact: http://roodabatoz.com/store/Sabina/', 'Sabina', '2018-01-29 05:33:17'),
(952, '2) You can advertise your Jobs here. Please contact the nearest IBA or Area Center.', 'Sabina', '2018-01-29 05:33:29'),
(953, '1) You can advertise your Jobs here. Please contact the nearest IBA or Area Center.', 'Kathmandu', '2018-01-29 06:37:40'),
(954, '1) You can advertise your websites here. Contact: http://roodabatoz.com/store/LingLing/', 'LingLing', '2018-01-29 08:31:13'),
(955, '2) You can advertise your Jobs here. Please contact the nearest IBA or Area Center.', 'LingLing', '2018-01-29 08:31:44'),
(956, '1) You can advertise your websites here. Contact: http://roodabatoz.com/store/Camae/', 'Camae', '2018-01-30 13:29:46'),
(957, '2) You can advertise your Jobs here. Please contact the nearest IBA or Area Center.', 'Camae', '2018-01-30 13:31:08'),
(958, '1) You can advertise your Jobs here. Please contact the nearest IBA or Area Center.', 'MisamisOccidental', '2018-01-30 15:02:54'),
(959, '2) You can advertise your websites here. Contact: http://roodabatoz.com/store/Camae/', 'MisamisOccidental', '2018-01-30 15:03:59'),
(960, '1) You can advertise your websites here. Contact: http://roodabatoz.com/store/Jashua/', 'WomenNepal', '2018-02-01 04:22:47'),
(961, '2) You can advertise your Jobs here. Please contact the nearest IBA or Area Center.', 'WomenNepal', '2018-02-01 04:23:04'),
(962, '1) You can advertise your websites here. Contact: http://roodabatoz.com/store/Sabina/', 'WomenKathmandu', '2018-02-01 04:53:16'),
(963, '2) You can advertise your Jobs here. Please contact the nearest IBA or Area Center.', 'WomenKathmandu', '2018-02-01 04:53:27'),
(964, '1) You can advertise your websites here. Contact: http://roodabatoz.com/store/Jashua/', 'WomenTaiwan', '2018-02-01 10:02:07'),
(965, '2) You can advertise your Jobs here. Please contact the nearest IBA or Area Center.', 'WomenTaiwan', '2018-02-01 10:02:26'),
(966, '1) You can advertise your websites here. Contact: http://roodabatoz.com/store/Jashua/', 'WomenPhilippines', '2018-02-01 10:27:30'),
(967, '2) You can advertise your Jobs here. Please contact the nearest IBA or Area Center.', 'WomenPhilippines', '2018-02-01 10:27:39'),
(969, '2) You can advertise your Jobs here. Please contact the nearest IBA or Area Center.', 'AkiraAldamia', '2018-02-03 08:06:21'),
(970, '1) You can advertise your websites here. Contact: http://roodabatoz.com/store/Naitomyumkrung/', 'NaiTomyumKrung', '2018-02-03 14:40:27'),
(971, 'WeChat : Tomyum 08444424449', 'NaiTomyumKrung', '2018-02-03 15:06:08'),
(972, '2) You can advertise your Jobs here. Please contact the nearest IBA or Area Center.', 'NaiTomyumKrung', '2018-02-03 15:06:34'),
(1087, 'Ù…Ø´Ø§ÙˆØ±Ù‡ Ùˆ Ù†Ú¯Ø§Ø±Ø´ Ù¾Ø±ÙˆÙ¾ÙˆØ²Ø§Ù„ Ùˆ Ù¾Ø§ÛŒØ§Ù† Ù†Ø§Ù…Ù‡', 'Pejvakdanesh', '2018-03-07 11:14:56'),
(974, '1) You can advertise your websites here. Contact: http://roodabatoz.com/store/Candykim/', 'CandyKim', '2018-02-05 09:14:37'),
(975, '2) You can advertise your Jobs here. Please contact the nearest IBA or Area Center.', 'CandyKim', '2018-02-05 09:14:50'),
(976, '1) You can advertise your Jobs here. Please contact the nearest IBA or Area Center.', 'Maryland', '2018-02-05 09:46:59'),
(977, '1) You can advertise your websites here. Contact: http://roodabatoz.com/store/NelsonJohn/', 'Nelsonjohn', '2018-02-05 10:34:33'),
(978, '2) You can advertise your Jobs here. Please contact the nearest IBA or Area Center.', 'Nelsonjohn', '2018-02-05 10:34:50'),
(979, '1) You can advertise your Jobs here. Please contact the nearest IBA or Area Center.', 'CamarinesSur', '2018-02-05 10:50:37'),
(980, '1) You can advertise your websites here. Contact: http://roodabatoz.com/store/JJenGonzaga/', 'JenGonzaga', '2018-02-05 12:24:02'),
(981, 'Address: ChinaGarden Hotel, 40-42-44, Niphatuthit 1 Road, Hatyai Songkhla 90110 Thailand', 'NaiTomyumKrung', '2018-02-05 13:35:50'),
(982, 'Hotel ChinaGarden info: Tel/WIFI: 074-221426, Fax: 074-221429', 'NaiTomyumKrung', '2018-02-05 14:19:38'),
(983, '1) You can advertise your websites here. Contact: http://roodabatoz.com/store/Jashua/', 'TomYum', '2018-02-06 00:22:11'),
(984, '2) You can advertise your Jobs here. Please contact the nearest IBA or Area Center.', 'TomYum', '2018-02-06 00:22:28'),
(985, '1) You can advertise your websites here. Contact: http://roodabatoz.com/store/Jashua/', 'Hotels', '2018-02-06 15:20:07'),
(986, '2) You can advertise your Jobs here. Please contact the nearest IBA or Area Center.', 'Hotels', '2018-02-06 15:20:22'),
(987, '1) You can advertise your websites here. Contact: http://roodabatoz.com/store/Isabel/', 'Havana', '2018-02-07 09:17:45'),
(988, '2) You can advertise your Jobs here. Please contact the nearest IBA or Area Center.', 'Havana', '2018-02-07 09:17:59'),
(989, '1) You can advertise your websites here. Contact: http://roodabatoz.com/store/Joshua/', 'JewelleryFair', '2018-02-07 10:36:09'),
(990, '2) You can advertise your Jobs here. Please contact the nearest IBA or Area Center.', 'JewelleryFair', '2018-02-07 10:36:25'),
(991, '1) You can advertise your websites here. Contact: http://roodabatoz.com/store/Joshua/', 'JalanBukitBintang', '2018-02-07 11:02:11'),
(992, '2) You can advertise your Jobs here. Please contact the nearest IBA or Area Center.', 'JalanBukitBintang', '2018-02-07 11:03:25'),
(993, '1) You can advertise your websites here. Contact: http://roodabatoz.com/store/Joshua/', 'ThaiFood', '2018-02-07 14:14:30'),
(994, '2) You can advertise your Jobs here. Please contact the nearest IBA or Area Center.', 'ThaiFood', '2018-02-07 14:14:42'),
(995, '1) You can advertise your websites here. Contact: http://roodabatoz.com/store/Joshua/', 'Dessert', '2018-02-08 01:43:45'),
(996, '2) You can advertise your Jobs here. Please contact the nearest IBA or Area Center.', 'Dessert', '2018-02-08 01:44:02'),
(997, '2) You can advertise your Jobs here. Please contact the nearest IBA or Area Center.', 'DimSum', '2018-02-08 02:05:46'),
(998, '1) You can advertise your websites here. Contact: http://roodabatoz.com/store/Joshua/', 'Dinner', '2018-02-08 02:59:17'),
(999, '2) You can advertise your Jobs here. Please contact the nearest IBA or Area Center.', 'Dinner', '2018-02-08 02:59:26'),
(1000, '1) You can advertise your websites here. Contact: http://roodabatoz.com/store/Joshua/', 'FusionFood', '2018-02-08 03:38:57'),
(1001, '2) You can advertise your Jobs here. Please contact the nearest IBA or Area Center.', 'FusionFood', '2018-02-08 03:39:08'),
(1002, '1) You can advertise your websites here. Contact: http://roodabatoz.com/store/Joshua/', 'Chefs', '2018-02-08 03:57:39'),
(1003, '2) You can advertise your Jobs here. Please contact the nearest IBA or Area Center.', 'Chefs', '2018-02-08 03:57:47'),
(1004, '1) You can advertise your websites here. Contact: http://roodabatoz.com/store/Joshua/', 'ChefsRestaurant', '2018-02-08 04:13:35'),
(1005, '2) You can advertise your Jobs here. Please contact the nearest IBA or Area Center.', 'ChefsRestaurant', '2018-02-08 04:13:43'),
(1006, '2) You can advertise your Jobs here. Please contact the nearest IBA or Area Center.', 'BakKutTeh', '2018-02-08 04:52:25'),
(1007, 'Ù…Ø¯ÛŒØ± Ø¨Ø§Ø²Ø§Ø±ÛŒØ§Ø¨ÛŒ Ø±ÙˆØ¯Ø§Ø¨ Ø§ÛŒØ±Ø§Ù† ', 'Mahdavirad', '2018-02-08 12:09:21'),
(1088, 'ØªØ±Ø¬Ù…Ù‡ Ø§Ù†ÙˆØ§Ø¹ Ù…Ù…Ù†ÙˆÙ† Ø¹Ù…ÙˆÙ…ÛŒ Ùˆ ØªØ®ØµØµÛŒ', 'Pejvakdanesh', '2018-03-07 11:15:30'),
(1009, '1) You can advertise your websites here. Contact: http://roodabatoz.com/store/Amanda/', 'Scotland', '2018-02-08 13:53:03'),
(1010, '2) You can advertise your Jobs here. Please contact the nearest IBA or Area Center.', 'Scotland', '2018-02-08 13:53:18'),
(1012, '1) You can advertise your websites here. Contact: http://roodabatoz.com/store/Joshua/', 'Academy', '2018-02-09 03:09:01'),
(1013, '2) You can advertise your Jobs here. Please contact the nearest IBA or Area Center.', 'Academy', '2018-02-09 03:09:09'),
(1014, '1) You can advertise your websites here. Contact: http://roodabatoz.com/store/Joshua/', 'FoodAcademy', '2018-02-09 03:57:33'),
(1015, '2) You can advertise your Jobs here. Please contact the nearest IBA or Area Center.', 'FoodAcademy', '2018-02-09 03:57:45'),
(1016, '1) You can advertise your websites here. Contact: http://roodabatoz.com/store/Amanda/', 'Wales', '2018-02-09 09:44:18'),
(1017, '2) You can advertise your Jobs here. Please contact the nearest IBA or Area Center.', 'Wales', '2018-02-09 09:44:31'),
(1020, '2) You can advertise your Jobs here. Please contact the nearest IBA or Area Center.', 'SkillsAcademy', '2018-02-11 14:59:29'),
(1021, '1) You can advertise your websites here. Contact: http://roodabatoz.com/store/Joshua/', 'Cuisines', '2018-02-11 16:26:31'),
(1022, '2) You can advertise your Jobs here. Please contact the nearest IBA or Area Center.', 'Cuisines', '2018-02-11 16:26:45'),
(1023, '1) You can advertise your websites here. Contact: http://roodabatoz.com/store/Krystal/', 'Krystal', '2018-02-12 00:45:01'),
(1024, '2) You can advertise your Jobs here. Please contact the nearest IBA or Area Center.', 'Krystal', '2018-02-12 00:45:14'),
(1025, '1) You can advertise your websites here. Contact: http://roodabatoz.com/store/Joshua/', 'CookingAcademy', '2018-02-12 07:17:15'),
(1026, '2) You can advertise your Jobs here. Please contact the nearest IBA or Area Center.', 'CookingAcademy', '2018-02-12 07:17:21'),
(1027, '2) You can advertise your Jobs here. Please contact the nearest IBA or Area Center.', 'KLCity', '2018-02-12 08:11:08'),
(1028, '1) You can advertise your websites here. Contact: http://roodabatoz.com/store/Krystal/', 'Pampanga', '2018-02-12 09:24:55'),
(1029, '2) You can advertise your Jobs here. Please contact the nearest IBA or Area Center.', 'Pampanga', '2018-02-12 09:25:03'),
(1030, '1) You can advertise your websites here. Contact: http://roodabatoz.com/store/Lervina/', 'NorthSumatra', '2018-02-12 09:51:08'),
(1031, '2) You can advertise your Jobs here. Please contact the nearest IBA or Area Center.', 'NorthSumatra', '2018-02-12 09:51:16'),
(1032, '1) You can advertise your websites here. Contact: http://roodabatoz.com/store/Lervina/', 'Lervina', '2018-02-12 10:31:09'),
(1033, '2) You can advertise your Jobs here. Please contact the nearest IBA or Area Center.', 'Lervina', '2018-02-12 10:31:17'),
(1034, '1) You can advertise your websites here. Contact: http://roodabatoz.com/store/Anchan/', 'Anchan', '2018-02-12 10:42:43'),
(1035, '2) You can advertise your Jobs here. Please contact the nearest IBA or Area Center.', 'Anchan', '2018-02-12 10:42:54'),
(1037, '3) Enquiry: http://roodabatoz.com/store/Joshua/', 'Anchan', '2018-02-12 10:56:08'),
(1038, '1) You can advertise your websites here. Contact: http://roodabatoz.com/store/Anchan/', 'TomYumKung', '2018-02-12 11:04:08'),
(1039, '2) You can advertise your Jobs here. Please contact the nearest IBA or Area Center.', 'TomYumKung', '2018-02-12 11:04:17'),
(1040, '3 ) Enquiry:http://roodabatoz.com/store/Joshua/', 'TomYumKung', '2018-02-12 11:05:24'),
(1041, '1) You can advertise your Jobs/careers on this website. Please refer to your nearest Area Center or IBA. Contact: http://roodabatoz.com/store/Emmanual/', 'Emmanuel', '2018-02-20 01:17:06'),
(1042, '2) You can advertise your websites here, please contact: http://roodabatoz.com/store/Emmanual/', 'Emmanuel', '2018-02-20 01:18:44'),
(1043, '1) You can advertise your websites here. Please contact: http://roodabatoz.com/store/Joshua/', 'GoodNews', '2018-02-20 06:53:38'),
(1044, '2) You can advertise your Jobs/Careers here. Contact your nearest Area Center or IBA.', 'GoodNews', '2018-02-20 06:54:58'),
(1045, '1) You can advertise your Jobs/Careers here. Please refer to your nearest Area Center or IBA.', 'Buganda', '2018-02-20 07:42:03'),
(1046, '1) You can advertise your websites here, please contact: http://roodabatoz.com/store/Emmanuel/', 'AOCU', '2018-02-20 11:40:21'),
(1047, '1) You can advertise your websites here, please contact: http://roodabatoz.com/store/Anchan/', 'Songkhla', '2018-02-20 15:00:40'),
(1048, '2) You can advertise your Jobs/Careers here, please refer to your nearest Area Center or IBA', 'Songkhla', '2018-02-20 15:01:57'),
(1049, '3) Enquiry: +60108323456 Joshua', 'Songkhla', '2018-02-20 15:02:38'),
(1050, '1) You can advertise your websites here, please contact: http://roodabatoz.com/store/ChinaGardenHotel/', 'ChinaGardenHotel', '2018-02-21 08:25:06'),
(1051, '1) You can advertise your websites here, please contact: http://roodabatoz.com/store/Joshua/', 'Curry', '2018-02-23 03:17:16'),
(1052, 'Enquiry:+60108323456 Joshua ', 'AkiraAldamia', '2018-02-25 13:31:57'),
(1053, '1) You can advertise your websites here, please contact: http://roodabatoz.com/store/ Krystal/', 'Crystals', '2018-02-25 13:43:23'),
(1054, 'Enquiry:+60108323456 Joshua ', 'Crystals', '2018-02-25 13:43:43'),
(1055, '2) You can advertise your Jobs/ Careers here. Please refer to your nearest Area Center or IBA.', 'Crystals', '2018-02-25 13:45:37'),
(1056, '2) You can advertise your Jobs/ Careers here. Please refer to your nearest Area Center or IBA.', 'NorthernSamar', '2018-02-25 14:46:42'),
(1057, 'Enquiry:+60108323456 Joshua ', 'NorthernSamar', '2018-02-25 14:46:50'),
(1058, 'Fax:+6674221429', 'ChinaGardenHotel', '2018-02-25 15:43:24'),
(1059, 'Email:chinagarden@outlook.co.th', 'ChinaGardenHotel', '2018-02-25 15:44:12'),
(1060, 'Enquiry:+60108323456 Joshua ( Malaysia)', 'ChinaGardenHotel', '2018-02-25 15:44:49'),
(1061, ' Ù†Ù…Ø§ÛŒÙ†Ø¯Ù‡ ÛŒ Ø±Ø³Ù…ÛŒ Ø®Ø¯Ù…Ø§Øª Ø±ÙˆØ¯Ø§Ø¨ Ø¯Ø± Ø§ÛŒØ±Ø§Ù†', 'FarhadAhmadi', '2018-02-26 09:19:57'),
(1062, 'Ø³Ø§Ø®Øª ÙˆØ¨ Ø³Ø§ÛŒØª ØªÙ†Ù‡Ø§ Ø¨Ø§ Ù¾Ø±Ø¯Ø§Ø®Øª 100Ù‡Ø²Ø§Ø± ØªÙˆÙ…Ø§Ù† ', 'FarhadAhmadi', '2018-02-26 09:22:25'),
(1063, '1) You can advertise your Jobs/Careers on this website. Please refer to your nearest Area Center or IBA. Contact: http://roodabatoz.com/store/ILoveYouCatering//', 'ILoveYouCatering', '2018-03-01 06:40:40'),
(1064, '2) You can advertise your websites here, please contact: http://roodabatoz.com/store/ILoveYouCatering//', 'ILoveYouCatering', '2018-03-01 06:41:09'),
(1065, 'Address: 4-1-11, Jalan 7/116B, Kuchai Enterpreneurs Park, Jalan Kuchai Lama, 58200 Kuala Lumpur, W.P.', 'ILoveYouCatering', '2018-03-01 07:25:12'),
(1066, '1) You can advertise your websites here, please contact: http://roodabatoz.com/store/ Emily/', 'Jiangsu', '2018-03-06 08:17:29'),
(1067, '2) You can advertise your Jobs/ Careers here. Please refer to your nearest Area Center or IBA.', 'Jiangsu', '2018-03-06 08:17:42'),
(1068, 'Enquiry:+60108323456 Joshua ', 'Jiangsu', '2018-03-06 08:18:03'),
(1069, 'Enquiry:+8618851238243 Emily', 'Jiangsu', '2018-03-06 08:18:40'),
(1070, 'emily', 'emily', '2018-03-06 12:18:29'),
(1081, 'Ù…Ø´Ø§ÙˆØ±Ù‡ Ø¯ÛŒØ­ÛŒØªØ§Ù„ Ù…Ø§Ø±Ú©ØªÛŒÙ†Ú¯ ', 'Amandadi', '2018-03-07 07:59:13'),
(1082, 'Ù…Ø´Ø§ÙˆØ±Ù‡ Ø±Ø§Ù‡ Ø§Ù†Ø¯Ø§Ø²ÛŒ Ú©Ø³Ø¨ Ú©Ø§Ø± Ø§ÛŒÙ†ØªØ±Ù†ØªÛŒ ', 'Amandadi', '2018-03-07 07:59:44'),
(1629, 'Ø¢Ø¯Ø±Ø³: ØªÙ‡Ø±Ø§Ù† - Ù…ÛŒØ¯Ø§Ù† Ø§Ù†Ù‚Ù„Ø§Ø¨- Ø®ÛŒØ§Ø¨Ø§Ù† ÙØ®Ø± Ø±Ø§Ø²ÛŒ -Ù¾Ù„Ø§Ú© 27 -  Ø³Ø§Ø®ØªÙ…Ø§Ù† Ú†ØªØ± Ø¯Ø§Ù†Ø´', 'ROODAB3P1B', '2018-11-24 05:46:23'),
(1086, 'Ú†Ø§Ù¾ Ùˆ Ù†Ú¯Ø§Ø±Ø´ Ú©ØªØ§Ø¨', 'Pejvakdanesh', '2018-03-07 11:13:05'),
(1083, 'Ù…Ø´Ø§ÙˆØ±Ù‡ Ø¨Ø±Ù†Ø§Ù…Ù‡ Ø±ÛŒØ²ÛŒ Ø´Ø®ØµÛŒ Ùˆ ØªØ¬Ø§Ø±ÛŒ ', 'Amandadi', '2018-03-07 08:00:20'),
(1084, 'Ù…Ø´Ø§ÙˆØ±Ù‡  Ø¨Ø§Ø²Ø§Ø±ÛŒØ§Ø¨ÛŒØŒ ØªØ¨Ù„ÛŒØºØ§ØªÛŒ ', 'Amandadi', '2018-03-07 08:01:00'),
(1085, 'Ù…Ø´Ø§ÙˆØ±Ù‡ Ùˆ Ù†Ú¯Ø§Ø±Ø´ Ù¾Ø±ÙˆÙ¾ÙˆØ²Ø§Ù„', 'Pejvakdanesh', '2018-03-07 11:11:52'),
(1089, 'Ø·Ø±Ø§Ø­ÛŒ Ùˆ Ø³Ø§Ø®Øª Ø§Ù†ÙˆØ§Ø¹ ÙˆØ¨ Ø³Ø§ÛŒØª', 'Pejvakdanesh', '2018-03-07 11:16:41'),
(1090, '1) You can advertise your websites here, please contact: http://roodabatoz.com/store/BaroneSusan/', 'BaroneSusan', '2018-03-08 11:08:54'),
(1091, 'Enquiry:+60108323456 Joshua ', 'BaroneSusan', '2018-03-08 11:09:09'),
(1092, '1) You can advertise your websites here, please contact: http://roodabatoz.com/store/ Chinemerem/', 'Ebonyi', '2018-03-10 11:44:35'),
(1093, '2) You can advertise your Jobs/ Careers here. Please refer to your nearest Area Center or IBA.', 'Ebonyi', '2018-03-10 11:44:46'),
(1094, 'Enquiry:+60108323456 Joshua ', 'Ebonyi', '2018-03-10 11:44:57'),
(1095, 'Enquiry:+60108323456 Joshua ', 'Lovely', '2018-03-12 09:35:35'),
(1096, '1) You can advertise your websites here, please contact: http://roodabatoz.com/store/Joshua/', 'TukTuk', '2018-03-13 00:43:15'),
(1097, '2) You can advertise your Jobs/ Careers here. Please refer to your nearest Area Center or IBA.', 'TukTuk', '2018-03-13 00:43:31'),
(1098, 'Enquiry:+60108323456 Joshua ', 'TukTuk', '2018-03-13 00:43:53'),
(1099, 'Enquiry: +66625790705 Ms Anchan (Hat Yai, Songkhla)', 'TukTuk', '2018-03-13 00:45:56');
INSERT INTO `user_services` (`id`, `service_name`, `user_id`, `created_at`) VALUES
(1100, 'Enquiry:+60108323456 Joshua (Malaysia)', 'Imilda', '2018-03-13 03:53:29'),
(1101, 'Enquiry:+60108323456 Joshua ( Malaysia)', 'Camae', '2018-03-13 05:55:42'),
(1102, '1) You can advertise your websites here, please contact: http://roodabatoz.com/store/ AkiraAldamia/', 'DavaoDelSur', '2018-03-13 06:11:13'),
(1103, '2) You can advertise your Jobs/ Careers here. Please refer to your nearest Area Center or IBA.', 'DavaoDelSur', '2018-03-13 06:11:28'),
(1104, 'Enquiry:+60108323456 Joshua ( Malaysia)', 'DavaoDelSur', '2018-03-13 06:12:02'),
(1105, 'Enquiry:+60108323456 Joshua ( Malaysia)', 'Loverna', '2018-03-13 07:39:12'),
(1106, '1) You can advertise your websites here, please contact: http://roodabatoz.com/store/ Loverna/', 'DavaoDelNorte', '2018-03-13 09:05:49'),
(1107, '2) You can advertise your Jobs/ Careers here. Please refer to your nearest Area Center or IBA.', 'DavaoDelNorte', '2018-03-13 09:05:58'),
(1108, 'Enquiry:+60108323456 Joshua (Malaysia)', 'DavaoDelNorte', '2018-03-13 09:06:20'),
(1109, '1) You can advertise your websites here, please contact: http://roodabatoz.com/store/Stephen/', 'ZamboangaDelSur', '2018-03-14 02:38:45'),
(1110, '2) You can advertise your Jobs/Careers here. Please refer to your nearest Area Center or IBA.', 'ZamboangaDelSur', '2018-03-14 02:39:09'),
(1111, 'Enquiry:+60108323456 Joshua (Malaysia)', 'ZamboangaDelSur', '2018-03-14 02:39:24'),
(1112, '1) You can advertise your websites here, please contact: http://roodabatoz.com/store/Zach/', 'ZamboangaDelNorte', '2018-03-14 08:22:43'),
(1113, '2) You can advertise your Jobs/Careers here. Please refer to your nearest Area Center or IBA.', 'ZamboangaDelNorte', '2018-03-14 08:22:55'),
(1114, 'Enquiry:+60108323456 Joshua (Malaysia)', 'ZamboangaDelNorte', '2018-03-14 08:23:04'),
(1115, '1) You can advertise your websites here, please contact: http://roodabatoz.com/store/Mabel/', 'Iloilo', '2018-03-15 02:50:26'),
(1116, '2) You can advertise your Jobs/Careers here. Please refer to your nearest Area Center or IBA.', 'Iloilo', '2018-03-15 02:50:55'),
(1117, 'Enquiry:+60108323456 Joshua (Malaysia)', 'Iloilo', '2018-03-15 02:51:04'),
(1118, '1) You can advertise your websites here, please contact: http://roodabatoz.com/store/April', 'Virginia', '2018-03-16 06:34:39'),
(1119, '2) You can advertise your Jobs/Careers here. Please refer to your nearest Area Center or IBA.', 'Virginia', '2018-03-16 06:34:52'),
(1120, 'Enquiry:+60108323456 Joshua (Malaysia)', 'Virginia', '2018-03-16 06:35:02'),
(1121, '1) You can advertise your Jobs/Careers here. Please refer to your nearest Area Center or IBA.', 'Aklan', '2018-03-18 07:44:37'),
(1122, 'Enquiry:+60108323456 Joshua (Malaysia)', 'Aklan', '2018-03-18 07:44:44'),
(1123, '2) You can advertise your websites here, please contact: http://roodabatoz.com/store/Mabel/', 'Aklan', '2018-03-18 07:45:26'),
(1124, '1) You can advertise your websites here, please contact: http://roodabatoz.com/store/Antonio/', 'Leyte', '2018-03-18 12:53:33'),
(1125, '2) You can advertise your Jobs/Careers here. Please refer to your nearest Area Center or IBA.', 'Leyte', '2018-03-18 12:53:42'),
(1126, 'Enquiry:+60108323456 Joshua (Malaysia)', 'Leyte', '2018-03-18 12:53:51'),
(1127, '1) You can advertise your websites here, please contact: http://roodabatoz.com/store/Annie/', 'Bohol', '2018-03-19 06:30:05'),
(1128, '2) You can advertise your Jobs/Careers here. Please refer to your nearest Area Center or IBA.', 'Bohol', '2018-03-19 06:30:23'),
(1129, 'Enquiry:+60108323456 Joshua (Malaysia)', 'Bohol', '2018-03-19 06:30:32'),
(1130, '1) You can advertise your websites here, please contact: http://roodabatoz.com/store/Annie/', 'Annie', '2018-03-19 09:17:10'),
(1131, 'Enquiry:+60108323456 Joshua (Malaysia)', 'Annie', '2018-03-19 09:17:23'),
(1132, '1) You can advertise your websites here, please contact: http://roodabatoz.com/store/Anthony/', 'Cebu', '2018-03-19 10:33:55'),
(1133, '2) You can advertise your Jobs/Careers here. Please refer to your nearest Area Center or IBA.', 'Cebu', '2018-03-19 10:34:04'),
(1134, 'Enquiry:+60108323456 Joshua (Malaysia)', 'Cebu', '2018-03-19 10:34:16'),
(1135, '1) You can advertise your websites here, please contact: http://roodabatoz.com/store/Anthony/', 'Anthony', '2018-03-21 00:46:36'),
(1136, '2) You can advertise your Jobs/Careers here. Please refer to your nearest Area Center or IBA.', 'Anthony', '2018-03-21 00:46:43'),
(1137, 'Enquiry:+60108323456 Joshua (Malaysia)', 'Anthony', '2018-03-21 00:46:54'),
(1138, '1) You can advertise your websites here, please contact: http://roodabatoz.com/store/Bebeng/', 'EasternSamar', '2018-03-21 05:18:55'),
(1139, '2) You can advertise your Jobs/Careers here. Please refer to your nearest Area Center or IBA.', 'EasternSamar', '2018-03-21 05:19:05'),
(1140, 'Enquiry:+60108323456 Joshua (Malaysia)', 'EasternSamar', '2018-03-21 05:19:12'),
(1141, '1) You can advertise your websites here, please contact: http://roodabatoz.com/store/Bebeng', 'Bebeng', '2018-03-21 07:22:00'),
(1142, '2) You can advertise your Jobs/Careers here. Please refer to your nearest Area Center or IBA.', 'Bebeng', '2018-03-21 07:22:07'),
(1143, 'Enquiry:+60108323456 Joshua ( Malaysia)', 'Bebeng', '2018-03-21 07:22:19'),
(1144, '1) You can advertise your websites here, please contact: http://roodabatoz.com/store/Anlord/', 'Samar', '2018-03-22 06:50:48'),
(1145, '2) You can advertise your Jobs here, please contact nearest Area Center or IBA.', 'Samar', '2018-03-22 06:53:37'),
(1146, '3) Enquiry: +60108323456 Joshua (Malaysia)', 'Samar', '2018-03-22 06:54:36'),
(1147, '1) You can advertise your websites here, contact: http://roodabatoz.com/store/Anlord', 'Anlord', '2018-03-22 08:18:25'),
(1148, 'Enquiry: +60108323456 Joshua (Malaysia)', 'Anlord', '2018-03-22 08:19:15'),
(1149, '1) You can advertise your websites here, please contact: http://roodabatoz.com/store/Camae/', 'MisamisOriental', '2018-03-25 04:46:31'),
(1150, '2) You can advertise your Jobs/Careers here. Please refer to your nearest Area Center or IBA.', 'MisamisOriental', '2018-03-25 04:46:46'),
(1151, 'Enquiry:+60108323456 Joshua (Malaysia)', 'MisamisOriental', '2018-03-25 04:46:55'),
(1152, '1) You can advertise your websites here, please contact: http://roodabatoz.com/store/Annie', 'Siquijor', '2018-03-26 06:25:22'),
(1153, '2) You can advertise your Jobs/Careers here. Please refer to your nearest Area Center or IBA.', 'Siquijor', '2018-03-26 06:25:30'),
(1154, 'Enquiry:+60108323456 Joshua (Malaysia)', 'Siquijor', '2018-03-26 06:25:36'),
(1155, '1) You can advertise your websites here, please contact: http://roodabatoz.com/store/Joshua/', 'Bangkok', '2018-03-27 07:55:48'),
(1156, '2) You can advertise your Jobs/Careers here. Please refer to your nearest Area Center or IBA.', 'Bangkok', '2018-03-27 07:55:56'),
(1157, '1) You can advertise your websites here, please contact: http://roodabatoz.com/store/Joshua/', 'Beijing', '2018-03-28 03:59:41'),
(1158, '2) You can advertise your Jobs/Careers here. Please refer to your nearest Area Center or IBA.', 'Beijing', '2018-03-28 03:59:48'),
(1159, '1) You can advertise your websites here, please contact: http://roodabatoz.com/store/Sophiahui/', 'Shandong', '2018-04-02 10:00:11'),
(1160, '2) You can advertise your Jobs/Careers here. Please refer to your nearest Area Center or IBA.', 'Shandong', '2018-04-02 10:00:28'),
(1161, 'Enquiry:+60108323456 Joshua ', 'Shandong', '2018-04-02 10:00:44'),
(1162, '1) You can advertise your websites here, please contact: http://roodabatoz.com/store/Anchan/', 'Henan', '2018-04-05 01:59:31'),
(1163, '2) You can advertise your Jobs/Careers here. Please refer to your nearest Area Center or IBA.', 'Henan', '2018-04-05 01:59:40'),
(1164, 'Enquiry:+60108323456 Joshua (Malaysia)', 'Henan', '2018-04-05 01:59:50'),
(1165, '1) You can advertise your websites here, please contact: http://roodabatoz.com/store/Joanne/', 'Joanne', '2018-04-05 17:10:47'),
(1166, 'Enquiry:+60108323456 Joshua (Malaysia)', 'Joanne', '2018-04-05 17:11:01'),
(1167, '1) You can advertise your websites here, please contact: http://roodabatoz.com/store/Yuliana/', 'Yuliana', '2018-04-06 03:36:30'),
(1168, 'Enquiry:+60108323456 Joshua (Malaysia)', 'Yuliana', '2018-04-06 03:36:39'),
(1169, '1) You can advertise your websites here, please contact: http://roodabatoz.com/store/Camae/', 'Sichuan', '2018-04-07 14:52:27'),
(1170, '2) You can advertise your Jobs/Careers here. Please refer to your nearest Area Center or IBA.', 'Sichuan', '2018-04-07 14:52:36'),
(1171, 'Enquiry:+60108323456 Joshua (Malaysia)', 'Sichuan', '2018-04-07 14:52:43'),
(1172, ' Ù…ÛŒØ¯Ø§Ù† Ø§Ù†Ù‚Ù„Ø§Ø¨ Ø§Ø³Ù„Ø§Ù…ÛŒØŒ Ø§Ø¨ØªØ¯Ø§ÛŒ Ø®ÛŒØ§Ø¨Ø§Ù† Ú©Ø§Ø±Ú¯Ø± Ø´Ù…Ø§Ù„ÛŒØŒ Ù†Ø±Ø³ÛŒØ¯Ù‡ Ø¨Ù‡ Ø®ÛŒØ§Ø¨Ø§Ù† ÙØ±ØµØª Ø´ÛŒØ±Ø§Ø²ÛŒØŒ Ù¾Ù„Ø§Ú© 1038ØŒ Ø·Ø¨Ù‚Ù‡ Ø¯ÙˆÙ…   Ú©Ø¯ Ù¾Ø³ØªÛŒ  141894', 'Contectus', '2018-04-07 17:03:17'),
(1183, '1) You can advertise your websites here, please contact: http://roodabatoz.com/store/Joshua/', 'WhereToEat', '2018-04-10 14:48:30'),
(1184, '2) You can advertise your Jobs/Careers here. Please refer to your nearest Area Center or IBA.', 'WhereToEat', '2018-04-10 14:48:38'),
(1366, '1) You can advertise your websites here, please contact Mr. Joshua +60108323456', 'WestJava', '2018-06-27 09:58:58'),
(1186, '2) You can advertise your Jobs/Careers here. Please refer to your nearest Area Center or IBA.', 'WestJava', '2018-04-12 11:43:07'),
(1187, 'Enquiry:+60108323456 Joshua (Malaysia)', 'WestJava', '2018-04-12 11:43:14'),
(1188, '1) You can advertise your websites here, please contact: http://roodabatoz.com/store/Joshua/', 'NewYork', '2018-04-13 01:41:25'),
(1189, '2) You can advertise your Jobs/Careers here. Please refer to your nearest Area Center or IBA.', 'NewYork', '2018-04-13 01:41:33'),
(1190, '1) You can advertise your websites here, please contact: http://roodabatoz.com/store/Joshua/', 'California', '2018-04-20 04:20:16'),
(1191, '2) You can advertise your Jobs/Careers here. Please refer to your nearest Area Center or IBA.', 'California', '2018-04-20 04:20:23'),
(1206, 'Ú©Ø§Ø±Ø¢ÙØ±ÛŒÙ†ÛŒ Ø¯ÛŒØ¬ÛŒØªØ§Ù„', 'Mehdiafshari', '2018-05-12 14:48:30'),
(1207, 'Ø¨Ø§Ø²Ø§Ø± Ø³Ø±Ù¾ÙˆØ´ÛŒØ¯Ù‡ 2018', 'different', '2018-05-18 10:13:54'),
(1210, 'Ø³Ù„Ø§Ù… Ø§Ø² Ø§ÛŒÙ†Ú©Ù‡ Ø®Ø§Ù†ÙˆØ§Ø¯Ù‡ Ø¨Ø²Ø±Ú¯ Ú©Ø§Ø±Ø¢ÙØ±ÛŒÙ†ÛŒ Ø±ÙˆØ¯Ø§Ø¨ Ø§ÛŒØ±Ø§Ù† Ø±Ø§ Ø§Ù†ØªØ®Ø§Ø¨ Ú©Ø±Ø¯Ù‡ Ø§ÛŒØ¯ .Ø³Ù¾Ø§Ø³Ú¯Ø°Ø§Ø±Ù… .', 'Farzanehkaffash', '2018-05-19 11:54:08'),
(1222, 'ØªÙˆØ²ÛŒØ¹ Ùˆ ØªØ±ÙˆÛŒØ¬ Ù¾ÙˆØ²Ù‡Ø§ÛŒ Ø¨Ø§Ù†Ú©ÛŒ ØªØ®ÙÛŒÙÛŒ Ø²ÛŒØ± Ù†Ø¸Ø± Ø´Ø§Ù¾Ø±Ú©', 'Ashkanbagherzadeh', '2018-05-22 14:25:28'),
(1221, 'Ø¬Ø°Ø¨ Ù†ÛŒØ±ÙˆÙ‡Ø§ÛŒ ÙØ¹Ø§Ù„ Ø¨Ø§Ø²Ø±ÛŒØ§Ø¨ÛŒ Ø¨Ù‡ Ù‡Ù…Ø±Ø§Ù‡ Ø¢Ù…ÙˆØ²Ø´ ', 'Ashkanbagherzadeh', '2018-05-22 14:23:56'),
(1220, 'Ú©Ø§Ø±Ø¢ÙØ±ÛŒÙ†ÛŒ Ø¯ÛŒØ¬ÛŒØªØ§Ù„', 'Ashkanbagherzadeh', '2018-05-22 14:22:18'),
(1215, 'Ù…Ø¯ÛŒØ± Ø´Ø±Ú©Øª Ø§Ù„Ú©ØªØ±ÙˆÙ†ÛŒÚ©â€Œ Ú¯Ø³ØªØ± Ø³Ø§ÛŒÙ…Ø§Ù†', 'Ashkanbagherzadeh', '2018-05-21 14:07:22'),
(1216, 'Ù…Ø¯ÛŒØ± Ø´Ø±Ú©Øª Ø§Ù„Ú©ØªØ±ÙˆÙ†ÛŒÚ©â€Œ Ú¯Ø³ØªØ± Ø³Ø§ÛŒÙ…Ø§Ù†', '', '2018-05-21 14:08:43'),
(1223, 'Ø¨Ø§Ø´Ú¯Ø§Ù‡ Ù…Ø´ØªØ±ÛŒØ§Ù† Ø³Ø§ÛŒÙ…Ø§Ù†', 'Ashkanbagherzadeh', '2018-05-22 14:25:50'),
(1224, 'Ø·Ø±Ø§Ø­ÛŒ Ùˆ Ø³Ø§Ø®Øª ÙˆØ¨Ø³Ø§ÛŒØª Ø±ÙˆØ¯Ø¢Ø¨', 'Ashkanbagherzadeh', '2018-05-22 14:26:18'),
(1225, 'Ø®Ø¯Ø§ÛŒØ§ Ø³Ù¾Ø§Ø³Ú¯Ø²Ø§Ø±Ù… Ø³Ù¾Ø§Ø³Ú¯Ø²Ø§Ø±Ù… Ø³Ù¾Ø§Ø³Ú¯Ø²Ø§Ø±Ù… ', 'parisaamini', '2018-05-25 09:59:35'),
(1226, 'Ø®Ø¯Ø§ÛŒØ§ Ø¹Ø§Ø´Ù‚ØªÙ… Ø¹Ø§Ø´Ù‚ØªÙ… Ø¹Ø§Ø´Ù‚ØªÙ… ', 'parisaamini', '2018-05-25 09:59:47'),
(1227, 'Ù…Ù† Ø¹Ø§Ù„ÛŒ Ø¹Ø§Ù„ÛŒ Ø¹Ø§Ù„ÛŒ Ù‡Ø³ØªÙ… ', 'parisaamini', '2018-05-25 09:59:58'),
(1228, 'Ø®Ø§Ù†ÙˆØ§Ø¯Ù‡ Ø¨Ø²Ø±Ú¯ Ú©Ø§Ø±Ø¢ÙØ±ÛŒÙ†ÛŒ Ø¯ÛŒØ¬ÛŒØªØ§Ù„ ', 'ROODAB1A6', '2018-05-26 04:17:28'),
(1229, 'Ø¯ÛŒØ¬ÛŒØªØ§Ù„ Ù…Ø§Ø±Ú©ØªÛŒÙ†Ú¯', 'maryamostovan', '2018-05-26 07:44:27'),
(1254, 'Ø®Ø¯Ù…Ø§Øª Ú©Ø´Ø§ÙˆØ±Ø²ÛŒ Ø§Ù†Ù„Ø§ÛŒÙ† Ø§Ø³ØªØ§Ù† Ø§ØµÙÙ‡Ø§Ù†', 'Roodab1k3', '2018-06-11 01:54:12'),
(1262, 'ÙˆØ¨ Ø³Ø§ÛŒØª Ù†Ù…Ø§ÛŒÙ†Ø¯Ú¯ÛŒ Ù…Ù†Ø·Ù‚Ù‡ ØµØ§Ø¯Ù‚ÛŒÙ‡ Ùˆ Ø³ØªØ§Ø±Ø®Ø§Ù†', 'roodab1a6b1c1', '2018-06-14 04:52:51'),
(1261, 'Ú©Ø§Ø±Ø§ÙØ±ÛŒÙ†ÛŒ Ø¯ÛŒØ¬ÛŒØªØ§Ù„ Ø±ÙˆØ¯Ø§Ø¨ Ø§ÛŒØ±Ø§Ù†', 'Roodab1a2', '2018-06-13 20:46:38'),
(1233, 'ÙØ±ÙˆØ´ Ù†Ù‚Ø§Ø´ÛŒ ', 'Minajafarinezhad', '2018-05-29 10:20:21'),
(1234, 'Ù†ÙˆØ´ÛŒØ¯Ù†ÛŒ Ú©Ø§Ù…Ø¨ÙˆØ¬Ø§ ', 'NematRazzaghi', '2018-06-02 19:45:15'),
(1235, 'Ù†ÙˆØ´ÛŒØ¯Ù†ÛŒ Ú©Ø§Ù…Ø¨ÙˆØ¬Ø§ ', 'NematRazzaghi', '2018-06-02 19:45:43'),
(1236, 'Ù†Ù…Ø§ÛŒÙ†Ø¯Ù‡ Ú©Ø§Ø±Ø§ÙØ±ÛŒÙ†ÛŒ Ø¯ÛŒØ¬ÛŒØªØ§Ù„ Ø±ÙˆØ¯Ø§Ø¨ Ø¯Ø±Ø§Ø³ØªØ§Ù† Ø§ØµÙÙ‡Ø§Ù†', 'Roodab1a3', '2018-06-04 19:59:25'),
(1237, 'Ù†Ù…Ø§ÛŒÙ†Ø¯Ù‡ Ø¨ÛŒÙ…Ø§Ø±Ø³ØªØ§Ù† Ø§Ù†Ù„Ø§ÛŒÙ† Ú©Ù„ Ú©Ø´ÙˆØ±', 'Roodab1a3', '2018-06-04 20:00:01'),
(1256, 'Ú©Ø§Ø±Ø§ÙØ±ÛŒÙ†ÛŒ Ø¯ÛŒØ¬ÛŒØªØ§Ù„ Ø±ÙˆØ¯Ø§Ø¨ Ø¯Ø±Ø§Ø³ØªØ§Ù† Ø§ØµÙÙ‡Ø§Ù† Ø§Ù…Ø§Ø¯Ù‡ Ø§Ø¹Ø·Ø§ÛŒ Ù†Ù…Ø§ÛŒÙ†Ø¯Ú¯ÛŒ Ø¨Ù‡ Ø´Ù‡Ø±Ø³ØªØ§Ù†Ù‡Ø§ÛŒ Ø§ÛŒÙ† Ø§Ø³ØªØ§Ù† Ù…ÛŒØ¨Ø§Ø´Ø¯', 'Roodab1a3b', '2018-06-11 14:53:49'),
(1597, 'Ù…Ù† Ø®ÙˆØ´Ø­Ø§Ù„Ù…', 'nedaasi', '2018-11-01 07:40:04'),
(1255, 'Ø¨ÛŒÙ…Ø§Ø±Ø³ØªØ§Ù† Ø§Ù†Ù„Ø§ÛŒÙ† Ø§Ø³ØªØ§Ù† Ø§ØµÙÙ‡Ø§Ù†', 'Roodab1h3', '2018-06-11 04:54:57'),
(1244, 'Ù†Ù…Ø§ÛŒÙ†Ø¯Ù‡ Ú©Ø§Ø±Ø§ÙØ±ÛŒÙ†ÛŒ Ø¯ÛŒØ¬ÛŒØªØ§Ù„ Ø±ÙˆØ¯Ø§Ø¨ Ø¯Ø±Ø§Ø³ØªØ§Ù† Ø§ØµÙÙ‡Ø§Ù†', 'Roodab1a3', '2018-06-04 20:14:33'),
(1247, ' Ø§ÛŒØ±Ø§Ù† Ù†Ù…Ø§ÛŒÙ†Ø¯Ù‡  Ø±Ø³Ù…ÛŒ Ø§Ø³ØªØ§Ù† ØªÙ‡Ø±Ø§Ù† Ù…ÙˆØ³Ø³Ù‡ Ú©Ø§Ø±Ø¢ÙØ±ÛŒÙ†ÛŒ Ø¯ÛŒØ¬ÛŒØªØ§Ù„ Ø±ÙˆØ¯Ø§Ø¨ ', 'Farzanehkaffash ', '2018-06-04 22:31:46'),
(1248, 'Ù…Ø³ÙˆÙˆÙ„ Ø¢Ù…ÙˆØ²Ø´ Ù…ÙˆØ³Ø³Ù‡ Ú©Ø§Ø±Ø¢ÙØ±ÛŒÙ†ÛŒ Ø¯ÛŒØ¬ÛŒØªØ§Ù„ Ø±ÙˆØ¯Ø§Ø¨ Ø§ÛŒØ±Ø§Ù† ', 'Farzanehkaffash ', '2018-06-04 22:32:24'),
(1249, 'Ù†Ù…Ø§ÛŒÙ†Ø¯Ù‡ Ø¨ÛŒÙ…Ø§Ø±Ø³ØªØ§Ù† Ø§Ù†Ù„Ø§ÛŒÙ† Ú©Ù„ Ú©Ø´ÙˆØ±', 'Roodab1h', '2018-06-06 12:39:41'),
(1257, 'ÙƒÙ†ØªØ±Ù„ ØªÙ†Ø®ÙˆØ§Ù‡ Ú¯Ø±Ø¯Ø§Ù†Ù‡Ø§ Ùˆ Ø±ÙØ¹ Ù…ØºØ§ÙŠØ±Øª Ø¨Ø§Ù†ÙƒÙŠ Ø§Ø±Ø³Ø§Ù„ Ù„ÙŠØ³Øª Ø¨ÙŠÙ…Ù‡ ØªØ§Ù…ÙŠÙ† Ø§Ø¬ØªÙ…Ø§Ø¹ÙŠ Ùˆ Ù…Ø§Ù„ÙŠØ§Øª Ø­Ù‚ÙˆÙ‚ Ù¾Ø±Ø³Ù†Ù„ ØªÙ‡ÙŠÙ‡ Ù„ÙŠØ³Øª Ø­Ù‚ÙˆÙ‚ Ù¾Ø±Ø³Ù†Ù', 'hajarramezanigohar', '2018-06-12 14:42:11'),
(1263, 'ÙˆØ¨ Ø³Ø§ÛŒØª Ù†Ù…Ø§ÛŒÙ†Ø¯Ú¯ÛŒ Ù…Ù†Ø·Ù‚Ù‡ ØµØ§Ø¯Ù‚ÛŒÙ‡ Ùˆ Ø³ØªØ§Ø±Ø®Ø§Ù†', 'roodab1a6b1c1', '2018-06-14 04:58:28'),
(1264, 'Ù¾Ø§Ø³Ø§Ú˜ Ø¢Ù†Ù„Ø§ÛŒÙ† Ù…Ù†Ø·Ù‚Ù‡ ØµØ§Ø¯Ù‚ÛŒÙ‡ Ùˆ Ø³ØªØ§Ø±Ø®Ø§Ù†', 'roodab1p6b1c1', '2018-06-14 05:35:52'),
(1265, 'ÛŒÚ© Ù¾Ø§Ø³Ø§Ú˜ Ø¢Ù†Ù„Ø§ÛŒÙ† Ø¨Ø±Ø§ÛŒ ØªÙ…Ø§Ù…ÛŒ Ú©Ø³Ø¨ Ùˆ Ú©Ø§Ø±Ù‡Ø§ Ø¨Ø±Ø§ÛŒ Ù…Ù†Ø·Ù‚Ù‡ ØµØ§Ø¯Ù‚ÛŒÙ‡ Ùˆ Ø³ØªØ§Ø±Ø®Ø§Ù† Ú©Ù‡ Ø¯ÛŒÚ¯Ø± Ø§Ø­ØªÛŒØ§Ø¬ Ø¨Ù‡ Ù…Ø±Ø§Ø¬Ø¹Ù‡ Ø­Ø¶ÙˆØ±ÛŒ Ù…Ø´ØªØ±ÛŒ Ù†Ø®ÙˆØ§Ù‡Ø¯', 'roodab1p6b1c1', '2018-06-14 05:40:05'),
(1266, 'Ø¨Ø§ Ù¾Ø±Ø¯Ø§Ø®Øª Ù‡Ø²ÛŒÙ†Ù‡ Ø¨Ø³ÛŒØ§Ø± Ø§Ù†Ø¯Ú© Ø¨Ø§ Ù…Ø¨Ù„Øº 10 Ù‡Ø²Ø§Ø± ØªÙˆÙ…Ø§Ù† Ø¨ØµÙˆØ±Øª Ù…Ø§Ù‡ÛŒØ§Ù†Ù‡ Ù…ÛŒØªÙˆØ§Ù†ÛŒØ¯ ÛŒÚ© Ù…ØºØ§Ø²Ù‡ Ø§Ø¬Ø§Ø±Ù‡ ÙØ±Ù…Ø§ÛŒÛŒØ¯', 'roodab1p6b1c1', '2018-06-14 05:42:24'),
(1267, 'Ø¯Ø± Ø§ÛŒÙ† Ù¾Ø§Ø³Ø§Ú˜ Ø§ØµÙ†Ø§Ù Ø¯Ø³ØªÙ‡ Ø¨Ù†Ø¯ÛŒ Ø´Ø¯Ù‡ Ùˆ Ù‡Ø± ØµÙ†Ù Ø¯Ø± Ø·Ø¨Ù‚Ù‡ Ø®Ø§Øµ Ø®ÙˆØ¯ Ù‚Ø±Ø§Ø± Ù…ÛŒÚ¯ÛŒØ±Ø¯. ', 'roodab1p6b1c1', '2018-06-14 05:44:50'),
(1306, '#Ø±Ø§Ù‡Ù†Ù…Ø§ÛŒ_Ø¯Ø±ÙˆÙ†ÛŒ  Ø¹Ø´Ù‚ Ú†Ø±Ø§ØºÛŒ Ú©ÙˆÚ†Ú© Ø§Ø³Øª Ø§Ù…Ø§ Ù†ÙˆØ± Ø¢Ù† Ú©Ø§ÙÛŒ Ø§Ø³Øª.  Ù„Ø§Ø²Ù… Ù†ÛŒØ³Øª Ø¨Ø§ Ø®ÙˆØ¯ Ø®ÙˆØ±Ø´ÛŒØ¯ÛŒ Ø­Ù…Ù„ Ú©Ù†ÛŒ. ÛŒÚ© Ú†Ø±Ø§Øº Ú©ÙˆÚ†Ú© Ø¯Ø± ØªØ§Ø±ÛŒÚ©ÛŒ Ø´Ø¨ Ú©Ø§ÙÛŒ Ø§Ø³Øª.  Ø§Ù„Ø¨ØªÙ‡ Ø§ÛŒÙ† Ú†Ø±Ø§Øº ÙÙ‚Ø· Ú†Ù†Ø¯ Ù…ØªØ±ÛŒ Ù¾ÛŒØ´ Ù¾Ø§ÛŒ ØªÙˆ Ø±Ø§ Ø±ÙˆØ´Ù† Ù…ÛŒ Ú©Ù†Ø¯ Ø§Ù…Ø§ Ù‡Ù…ÛŒÙ† Ø§Ù†Ø¯Ø§Ø²Ù‡ Ú©Ø§ÙÛŒ Ø§Ø³Øª.  Ú†Ù†Ø¯ Ú¯Ø§Ù… Ú©Ù‡ Ø¨Ù‡ Ø¬Ù„Ùˆ Ø¨Ø±Ø¯Ø§Ø±ÛŒØŒ Ù†ÙˆØ± Ú†Ù†Ø¯ Ù…ØªØ±ÛŒ Ø¬Ù„ÙˆØªØ± Ù…ÛŒ Ø±ÙˆØ¯.  Ù†ÙˆØ± Ù‡Ù…ÛŒØ´Ù‡ Ø§Ø² ØªÙˆ Ø¬Ù„ÙˆØªØ± Ø§Ø³Øª.  Ø¹Ø´Ù‚ Ú†Ø±Ø§ØºÛŒ Ú©ÙˆÚ†Ú© Ø¯Ø± Ù‚Ù„Ø¨ Ø§Ø³Øª Ø§Ù…Ø§ Ø¨Ù‡ ØªÙ†Ù‡Ø§ÛŒÛŒ Ú©Ø§ÙÛŒ Ø§Ø³Øª.  Ø¨Ù‡', 'Test19', '2018-06-15 08:05:26'),
(1305, '#Ø²Ù†Ø¯Ú¯ÛŒ_Ø±Ø§_Ú©Ù†ØªØ±Ù„_Ù†Ú©Ù†ÛŒØ¯  Ø²Ù†Ø¯Ú¯ÙŠ Ø¯Ø± ÙƒÙ†ØªØ±Ù„ Ø´Ù…Ø§ Ù†ÙŠØ³Øª .  Ù…ÙŠ ØªÙˆØ§Ù†ÙŠØ¯ Ø§Ø² Ø¢Ù† Ù„Ø°Øª Ø¨Ø¨Ø±ÙŠØ¯ ØŒ  Ø§Ù…Ø§ Ù†Ù…ÙŠ ØªÙˆØ§Ù†ÙŠØ¯ Ø¢Ù† Ø±Ø§ ÙƒÙ†ØªØ±Ù„ ÙƒÙ†ÙŠØ¯ .  Ù…ÙŠ ØªÙˆØ§Ù†ÙŠØ¯ Ø²Ù†Ø¯Ú¯ÙŠ ÙƒÙ†ÙŠØ¯ ØŒ  Ø§Ù…Ø§ Ù†Ù…ÙŠ ØªÙˆØ§Ù†ÙŠØ¯ Ø²Ù†Ø¯Ú¯ÙŠ Ø±Ø§ ÙƒÙ†ØªØ±Ù„ ÙƒÙ†ÙŠØ¯ .  Ù…ÙŠ ØªÙˆØ§Ù†ÙŠØ¯ Ø¯Ø³Øª Ø§ÙØ´Ø§Ù†ÙŠ ÙƒÙ†ÙŠØ¯ Ø§Ù…Ø§ Ù†Ù…ÙŠ ØªÙˆØ§Ù†ÙŠØ¯ Ø²Ù†Ø¯Ú¯ÙŠ Ø±Ø§ ÙƒÙ†ØªØ±Ù„ ÙƒÙ†ÙŠØ¯ . Ù…Ø¹Ù…ÙˆÙ„Ø§Ù‹ Ù…ÙŠ Ú¯ÙˆÙŠÙŠÙ… ÙƒÙ‡ Ù†ÙØ³ Ù…ÙŠ ÙƒØ´ÙŠÙ… ØŒ Ø§Ù…Ø§ Ø§ÙŠÙ† Ù…ÙˆØ¶ÙˆØ¹ Ø¯Ø±Ø³Øª Ù†ÙŠØ³Øª Ø›  Ø²ÙŠØ±Ø§ Ø§ÙŠÙ† Ø²Ù†Ø¯Ú¯ÙŠ Ø§Ø³Øª ÙƒÙ‡ Ù…Ø§ Ø±Ø§ ØªÙ†ÙØ³ Ù…ÙŠ ÙƒÙ†Ø¯ .  Ù¾ÙŠ', 'Test19', '2018-06-15 08:02:55'),
(1274, ' Ù…Ù‡ÛŒÙ† ÙØ±ÙˆØ²Ù†Ø¯Ù‡ Ù¾ÙˆØ±  Ø¨Ø§ Ø§ÙØªØ®Ø§Ø± Ù†Ù…Ø§ÛŒÙ†Ø¯Ù‡ Ú©Ø§Ø± Ø¢ÙØ±ÛŒÙ†ÛŒ Ø¯ÛŒØ¬ÛŒØªØ§Ù„ Ø±ÙˆØ¯Ø§Ø¨ Ø§ÛŒØ±Ø§Ù† Ø¯Ø± Ø®ÛŒØ§Ø¨Ø§Ù† Ù¾Ø§Ø³Ø¯Ø§Ø±Ø§Ù†.   Ù…Ú˜Ø¯Ù‡ Ø¨Ù‡ Ø¬ÙˆÛŒÙ†Ø¯Ú¯Ø§Ù† Ú©Ø³Ø¨ Ù', 'Mahinfourozandehpour', '2018-06-14 11:26:52'),
(1275, ' Ù…Ù‡ÛŒÙ† ÙØ±ÙˆØ²Ù†Ø¯Ù‡ Ù¾ÙˆØ±  Ø¨Ø§ Ø§ÙØªØ®Ø§Ø± Ù†Ù…Ø§ÛŒÙ†Ø¯Ù‡ Ú©Ø§Ø± Ø¢ÙØ±ÛŒÙ†ÛŒ Ø¯ÛŒØ¬ÛŒØªØ§Ù„ Ø±ÙˆØ¯Ø§Ø¨ Ø§ÛŒØ±Ø§Ù† Ø¯Ø± Ø®ÛŒØ§Ø¨Ø§Ù† Ù¾Ø§Ø³Ø¯Ø§Ø±Ø§Ù†.   Ù…Ú˜Ø¯Ù‡ Ø¨Ù‡ Ø¬ÙˆÛŒÙ†Ø¯Ú¯Ø§Ù† Ú©Ø³Ø¨ Ù', 'Mahinfourozandehpour', '2018-06-14 11:29:08'),
(1276, ' Ù…Ù‡ÛŒÙ† ÙØ±ÙˆØ²Ù†Ø¯Ù‡ Ù¾ÙˆØ±  Ø¨Ø§ Ø§ÙØªØ®Ø§Ø± Ù†Ù…Ø§ÛŒÙ†Ø¯Ù‡ Ú©Ø§Ø± Ø¢ÙØ±ÛŒÙ†ÛŒ Ø¯ÛŒØ¬ÛŒØªØ§Ù„ Ø±ÙˆØ¯Ø§Ø¨ Ø§ÛŒØ±Ø§Ù† Ø¯Ø± Ø®ÛŒØ§Ø¨Ø§Ù† Ù¾Ø§Ø³Ø¯Ø§Ø±Ø§Ù†.   Ù…Ú˜Ø¯Ù‡ Ø¨Ù‡ Ø¬ÙˆÛŒÙ†Ø¯Ú¯Ø§Ù† Ú©Ø³Ø¨ Ù', 'Mahinfourozandehpour', '2018-06-14 11:29:14'),
(1277, ' Ù…Ù‡ÛŒÙ† ÙØ±ÙˆØ²Ù†Ø¯Ù‡ Ù¾ÙˆØ±  Ø¨Ø§ Ø§ÙØªØ®Ø§Ø± Ù†Ù…Ø§ÛŒÙ†Ø¯Ù‡ Ú©Ø§Ø± Ø¢ÙØ±ÛŒÙ†ÛŒ Ø¯ÛŒØ¬ÛŒØªØ§Ù„ Ø±ÙˆØ¯Ø§Ø¨ Ø§ÛŒØ±Ø§Ù† Ø¯Ø± Ø®ÛŒØ§Ø¨Ø§Ù† Ù¾Ø§Ø³Ø¯Ø§Ø±Ø§Ù†.   Ù…Ú˜Ø¯Ù‡ Ø¨Ù‡ Ø¬ÙˆÛŒÙ†Ø¯Ú¯Ø§Ù† Ú©Ø³Ø¨ Ù', 'Mahinfourozandehpour', '2018-06-14 11:29:21'),
(1364, '1) You can advertise your websites here, please contact Mr. Joshua +60108323456', 'Jakarta', '2018-06-27 09:53:08'),
(1551, 'UURASS MOFO POST MJ KKSH ', 'Shivamanavipour', '2018-08-26 16:24:11'),
(1365, 'http://roodabatoz.com/store/Joshua', 'Jakarta', '2018-06-27 09:54:13'),
(1367, 'http://roodabatoz.com/store/Joshua', 'WestJava', '2018-06-27 09:59:07'),
(1368, '1) You can advertise your websites here, please contact Mr. Joshua +60108323456', 'Seoul', '2018-06-28 04:18:50'),
(1286, 'Www.roodabatoz.com/store/Ashkanbagherzadeh', 'Roodab1p', '2018-06-14 12:25:51'),
(1287, 'Www.roodabatoz.com/store/mehdiafshari', 'Roodab1p', '2018-06-14 12:26:26'),
(1288, 'Www.roodabatoz.com/store/roodab1a6b1c1', 'Roodab1p', '2018-06-14 12:27:14'),
(1289, 'Www.roodabatoz.com/store/roodab1a6b1c2', 'Roodab1p', '2018-06-14 12:28:01'),
(1290, 'Www.roodabatoz.com/store/roodab1a6b1c1', 'Roodab1p', '2018-06-14 12:28:20'),
(1291, 'Www.roodabatoz.com/store/mehdiafshari', 'Roodab1p', '2018-06-14 12:28:23'),
(1292, 'Www.roodabatoz.com/store/Ashkanbagherzadeh', 'Roodab1p', '2018-06-14 12:28:26'),
(1446, 'Ø§Ù…ÙˆØ²Ø´ Ø¯ÛŒØ¬ÛŒØªØ§Ù„ Ù…Ø§Ø±Ú©ØªÛŒÙ†Ú¯', 'roodab1pt8', '2018-07-20 15:11:24'),
(1450, 'Ø®Ø¯Ø§ÛŒØ§ Ø³Ù¾Ø§Ø³Ú¯Ø²Ø§Ø±Ù… Ø³Ù¾Ø§Ø³Ú¯Ø²Ø§Ø±Ù… Ø³Ù¾Ø§Ø³Ú¯Ø²Ø§Ø±Ù… Ø§Ø² Ø§ÛŒÙ†Ú©Ù‡ ', 'Test19', '2018-07-24 06:11:55'),
(1444, 'Ù†Ù…Ø§ÛŒÙ†Ø¯Ú¯ÛŒ Ú©Ø§Ø±Ø¢ÙØ±ÛŒÙ† Ø¯ÛŒØ¬ÛŒØªØ§Ù„ Ø´Ù‡Ø±Ø³ØªØ§Ù† Ù…Ø¨Ø§Ø±Ú©Ù‡', 'Zahrarahimi', '2018-07-17 19:42:15'),
(1445, 'Ù…Ø±Ø¨ÛŒ Ù¾Ø§Ø³Ø§Ú˜ Ù‡Ø§ÛŒ www.roodabatoz.com/store/roodab1p5 - www.roodabatoz.com/store/roodab1p12', 'roodab1pt9', '2018-07-19 09:43:17'),
(1363, 'ÙÙˆØ±ÙˆØ´ Ø§Ù†ÙˆØ§Ø¹ Ø§Ù‚Ø§Ø³Ù… Ú©Ø§Ù„Ø§ Ù‡Ø§ÛŒ Ø´Ù…Ø§Ù„ Ú©Ø´ÙˆØ±. Ù†Ø¸ÛŒØ± ÛŒØ±Ù†Ø¬ Ùˆ...', 'MObinLatifi', '2018-06-26 16:16:37'),
(1438, '.Ø¨Ø±Ø§ÛŒ Ú¯Ø±ÙØªÙ† Ù†Ù…Ø§ÛŒÙ†Ø¯Ú¯ÛŒ Ù¾Ø§Ø³Ø§Ú˜ Ø´Ù‡Ø± Ùˆ Ù…Ø­Ù„Ù‡ Ø®ÙˆØ¯ Ø¨Ø§ Ø´Ù…Ø§Ø±Ù‡ Ù…Ù†Ø¯Ø±Ø¬ Ø´Ø¯Ù‡ Ø¯Ø± Ù¾Ø±ÙˆÙØ§ÛŒÙ„ ØªÙ…Ø§Ø³ Ø­Ø§ØµÙ„ Ù†Ù…Ø§ÛŒÛŒØ¯', 'roodab1p31b6', '2018-07-11 16:43:39'),
(1568, '09136813055', 'Roodab1p1b1t20', '2018-08-29 08:20:12'),
(1431, 'Enquiry: Joshua Tang +60108323456', 'Melaka', '2018-07-10 09:03:37'),
(1432, '1) You can advertise your business here, please contact Mr. Joshua +60108323456', 'Roodab9p4', '2018-07-10 09:09:55'),
(1433, 'Ú©Ø§Ø± Ø¢ÙØ±ÛŒÙ† Ø§ÛŒØ±Ø§Ù†', 'zahrabaghri', '2018-07-10 18:21:37'),
(1434, '.Ø¨Ø±Ø§ÛŒ Ú¯Ø±ÙØªÙ† Ù†Ù…Ø§ÛŒÙ†Ø¯Ú¯ÛŒ Ù¾Ø§Ø³Ø§Ú˜ Ø´Ù‡Ø± Ùˆ Ù…Ø­Ù„Ù‡ Ø¨Ø§ Ø´Ù…Ø§Ø±Ù‡ Ù…Ù†Ø¯Ø±Ø¬ Ø´Ø¯Ù‡ Ø¯Ø± Ù‚Ø³Ù…Øª Ù¾Ø±ÙˆÙØ§ÛŒÙ„ ØªÙ…Ø§Ø³ Ø­Ø§ØµÙ„ Ù†Ù…Ø§ÛŒÛŒØ¯', 'roodab1p31b1', '2018-07-11 13:50:51'),
(1369, 'http://roodabatoz.com/store/Joshua', 'Seoul', '2018-06-28 04:18:57'),
(1358, 'fa.business1366@gmail.com', 'roodab1p6b1c8', '2018-06-24 19:06:10'),
(1359, 'fa.business1366@gmail.com', 'roodab1p6b1c8', '2018-06-24 19:08:52'),
(1361, 'Ø¯Ø± Ø§ÛŒÙ† Ù¾Ø§Ø³Ø§Ú˜ Ø§Ù†ØµØ§Ù Ø¯Ø³ØªÙ‡ Ø¨Ù†Ø¯ÛŒ Ø´Ø¯Ù‡ Ùˆ Ù‡Ø± ØµÙ†Ù Ø¯Ø± Ø·Ø¨Ù‚Ù‡ Ø®Ø§Øµ Ø®ÙˆØ¯ Ù‚Ø±Ø§Ø± Ù…ÛŒÚ¯ÛŒØ±Ø¯ . Ø¨Ø§ Ù¾Ø±Ø¯Ø§Ø®Øª Ù‡Ø²ÛŒÙ†Ù‡ Ø¨Ø³ÛŒØ§Ø± Ø§Ù†Ø¯Ú© Ø¨Ø§ Ù…Ø¨Ù„Ù‚ 10 Ù‡Ø²Ø§Ø± ØªÙˆÙ…Ø§Ù† Ø¨Ù‡ ØµÙˆØ±Øª Ù…Ø§Ù‡ÛŒØ§Ù†Ù‡ Ù…ÛŒ ØªÙˆØ§Ù†ÛŒØ¯ ÛŒÚ© Ù…ØºØ§Ø²Ù‡ Ø§Ø¬Ø§Ø±Ù‡ ÙØ±Ù…Ø§ÛŒÛŒØ¯ . ÛŒÚ© Ù¾Ø§Ø³Ø§Ú˜ Ø§Ù†Ù„Ø§ÛŒÙ† Ø¨Ø±Ø§ÛŒ ØªÙ…Ø§Ù…ÛŒ Ú©Ø³Ø¨ Ú©Ø§Ø± Ù‡Ø§ Ø¨Ø±Ø§ÛŒ Ù…Ù†Ø·Ù‚Ù‡ Ù¾Ø±Ø¯ÛŒØ³ Ú©Ù‡ Ø¯ÛŒÚ¯Ø± Ø§Ø­ØªÛŒØ§Ø¬ Ø¨Ù‡ Ù…Ø±Ø§Ø¬Ø¹Ù‡ Ø­Ø¶ÙˆØ±ÛŒ Ù†Ø®Ø§Ù‡Ø¯ . Ù¾Ø§Ø³Ø§Ú˜Ø§Ù†Ù„Ø§ÛŒÙ† Ù…Ù†Ø·Ù‚Ù‡ Ù¾Ø±Ø¯ÛŒØ³ .', 'Roodab1p6b12', '2018-06-25 00:13:59'),
(1550, 'UURASS MOFO POST MJ KKSH ', 'Shivamanavipour', '2018-08-26 16:18:15'),
(1328, 'Ù†Ù…Ø§ÛŒÙ†Ø¯Ú¯ÛŒ Ø¯ÛŒØ¬ÛŒØªØ§Ù„ Ú©Ø§Ø±Ø¢ÙØ±ÛŒÙ†ÛŒ Ø´Ù‡Ø±Ø³ØªØ§Ù† ÙˆØ±Ø§Ù…ÛŒÙ† ', 'Azamsoflaei', '2018-06-16 20:17:09'),
(1332, 'Ù†Ù…Ø§ÛŒÙ†Ø¯Ù‡ Ù¾Ø§Ø³Ø§Ú˜ Ø§Ù†Ù„Ø§ÛŒÙ† Ø§Ø³ØªØ§Ù† Ø²Ù†Ø¬Ø§Ù† Ø¬Ù‡Øª Ú©Ø³Ø¨ Ø§Ø·Ù„Ø§Ø¹Ø§Øª Ø¨ÛŒØ´ØªØ± Ù…ÛŒ ØªÙˆØ§Ù†ÛŒØ¯ Ø¨Ø§ Ø´Ù…Ø§Ø±Ù‡ Ù‡Ø§ÛŒ Ø¯Ø±Ø¬ Ø´Ø¯Ù‡ Ø¯Ø± Ø³Ø§ÛŒØª Ø¯Ø± ØªÙ…Ø§Ø³ Ø¨Ø§Ø´ÛŒØ¯', 'Roodab1p13', '2018-06-17 07:10:55'),
(1331, 'Ù†Ù…Ø§ÛŒÙ†Ø¯Ú¯ÛŒ Ù¾Ø§Ø³Ø§Ú˜Ø¢Ù†Ù„Ø§ÛŒÙ† Ø§Ø³ØªØ§Ù† Ø³Ù…Ù†Ø§Ù†', 'Roodab1P2', '2018-06-16 20:51:45'),
(1570, '09136813055', 'Roodab1p1b1t20', '2018-08-29 08:21:36'),
(1439, '.Ø¨Ø±Ø§ÛŒ Ú¯Ø±ÙØªÙ† Ù†Ù…Ø§ÛŒÙ†Ø¯Ú¯ÛŒ Ù¾Ø§Ø³Ø§Ú˜ Ø´Ù‡Ø± Ùˆ Ù…Ø­Ù„Ù‡ Ø®ÙˆØ¯ Ø¨Ø§ Ø´Ù…Ø§Ø±Ù‡ Ù…Ù†Ø¯Ø±Ø¬ Ø´Ø¯Ù‡ Ø¯Ø± Ù¾Ø±ÙˆÙØ§ÛŒÙ„ ØªÙ…Ø§Ø³ Ø­Ø§ØµÙ„ Ù†Ù…Ø§ÛŒÛŒØ¯', 'roodab1p31', '2018-07-11 16:56:53'),
(1436, '.Ø¨Ø±Ø§ÛŒ Ú¯Ø±ÙØªÙ† Ù†Ù…Ø§ÛŒÙ†Ø¯Ú¯ÛŒ Ù¾Ø§Ø³Ø§Ú˜ Ø´Ù‡Ø± Ùˆ Ù…Ø­Ù„Ù‡ Ø®ÙˆØ¯ Ø¨Ø§ Ø´Ù…Ø§Ø±Ù‡ Ù…Ù†Ø¯Ø±Ø¬ Ø´Ø¯Ù‡ Ø¯Ø± Ù¾Ø±ÙˆÙØ§ÛŒÙ„ ØªÙ…Ø§Ø³ Ø­Ø§ØµÙ„ Ù†Ù…Ø§ÛŒÛŒØ¯', 'roodab1p31b2', '2018-07-11 14:00:20'),
(1571, 'Ù†Ù…Ø§ÛŒÙ†Ø¯Ú¯ÛŒ Ú©Ø§Ø±Ø¢ÙØ±ÛŒÙ† Ø¯ÛŒØ¬ÛŒØªØ§Ù„ Ø´Ù‡Ø±Ø³ØªØ§Ù† Ù…Ø¨Ø§Ø±Ú©Ù‡', 'Roodab1p1b1t20', '2018-08-29 08:21:59'),
(1572, ' Ù†Ù…Ø§ÛŒÙ†Ø¯Ú¯ÛŒ Ú©Ø§Ø±Ø¢ÙØ±ÛŒÙ† Ø¯ÛŒØ¬ÛŒØªØ§Ù„ Ø´Ù‡Ø±Ø³ØªØ§Ù† Ù…Ø¨Ø§Ø±Ú©Ù‡ Ø¨Ø§ Ù…Ø¬ÙˆØ² Ø±Ø³Ù…ÛŒ Ø§Ø² Ø§Ø¯Ø§Ø±Ù‡ Ú©Ø§Ø± Ø¢ÙØ±ÛŒÙ† Ø±Ø§Ø´ÛŒÙ† Ù…Ø§Ù†Ø¯Ú¯Ø§Ø±', 'Roodab1p1b1t20', '2018-08-29 08:24:04'),
(1440, '.Ø¨Ø±Ø§ÛŒ Ú¯Ø±ÙØªÙ† Ù†Ù…Ø§ÛŒÙ†Ø¯Ú¯ÛŒ Ù¾Ø§Ø³Ø§Ú˜ Ø´Ù‡Ø± Ùˆ Ù…Ø­Ù„Ù‡ Ø®ÙˆØ¯ Ø¨Ø§ Ø´Ù…Ø§Ø±Ù‡ Ù…Ù†Ø¯Ø±Ø¬ Ø´Ø¯Ù‡ Ø¯Ø± Ù¾Ø±ÙˆÙØ§ÛŒÙ„ ØªÙ…Ø§Ø³ Ø­Ø§ØµÙ„ Ù†Ù…Ø§ÛŒÛŒØ¯', 'roodab1p31b5', '2018-07-11 17:00:19'),
(1441, 'Ù…Ù† ÛŒÚ© Ø§Ø¯Ù… ÙÙˆÙ‚ Ø§Ù„Ø¹Ø§Ø¯Ù‡ Ù…ÙˆÙÙ‚ Ùˆ Ù…ÛŒÙ„ÛŒØ§Ø±Ø¯Ø± Ù‡Ø³ØªÙ…', 'Hemn', '2018-07-16 19:14:51'),
(1462, 'Ú¯Ø§Ù„Ø±ÛŒ Ú¯Ù„Ø¯ÙˆØ²ÛŒ Ú©Ø§Ø¨Ø§Ù†', 'roodab1p2t1m5', '2018-07-29 05:02:05'),
(1463, 'Ù¾Ø§Ø³Ø§Ú˜ Ø§Ù†Ù„Ø§ÛŒÙ† Ø´Ù‡Ø±Ø³ØªØ§Ù† Ù…Ø¨Ø§Ø±Ú©Ù‡', 'Roodab1p3b2', '2018-07-29 05:28:04'),
(1343, 'http://roodabatoz.com/store/GrainsMaster', 'GrainsMaster', '2018-06-18 10:53:54'),
(1357, 'Enquiry: Mr. Yeska Chun +60175075055', 'GrainsMaster', '2018-06-21 07:36:38'),
(1370, '2) You can advertise your jobs here, please contact IBA or nearest Area Center.', 'Seoul', '2018-06-28 04:20:44'),
(1527, 'Ú©Ø§Ø±Ø®ÙˆÙ†Ù‡ Ù…Ú© Ù…Ø§Ú©Ø§Ø±ÙˆÙ†ÛŒ', 'Roodab1p1b1t30m25', '2018-08-12 08:10:10'),
(1354, 'Ù¾Ø§Ø³Ø§Ú˜ Ø¢Ù†Ù„Ø§ÛŒÙ† Ø¢Ø°Ø±Ø¨Ø§ÛŒØ¬Ø§Ù† Ø´Ø±Ù‚ÛŒ', 'Roodab1p5', '2018-06-19 19:08:53'),
(1356, '    Ù…Ø¬Ù…ÙˆØ¹Ù‡ Ù†ÙˆØ´ Ø¢ÙˆØ± ØªÙˆÙ„ÛŒØ¯ Ú©Ù†Ù†Ø¯Ù‡ Ø§Ù†ÙˆØ§Ø¹ Ù†ÙˆØ´ÛŒØ¯Ù†ÛŒ Ú©Ø§Ù…Ø¨ÙˆÚ†Ø§ Ø¨Ø§ Ø±ÙˆÛŒÚ©Ø±Ø¯Ø¬Ù‡Ø§Ù†ÛŒ Ù‚ØµØ¯ Ø¯Ø§Ø±Ø¯ Ø¬Ù‡Øª Ø§Ø±ØªÙ‚Ø§ Ø³Ù„Ø§Ù…Øª Ùˆ Ø¨Ù‡Ø¨ÙˆØ¯ Ø¯Ø± Ø±ÙˆÙ†Ø¯ Ú©ÛŒÙÛŒØª Ø²Ù†Ø¯Ú¯ÛŒ Ø¬Ø§Ù…Ø¹Ù‡ Ú¯Ø§Ù… Ø¨Ø±Ø¯Ø§Ø±Ø¯', 'Hadikeshani', '2018-06-20 07:58:00'),
(1372, 'Ù…Ø±Ø¨ÛŒ Ø¢Ù…ÙˆØ²Ø´ÛŒ Ø§Ø³ØªØ§Ù†Ù‡Ø§ÛŒ Ù…Ø§Ø²Ù†Ø¯Ø±Ø§Ù†-Ø®ÙˆØ²Ø³ØªØ§Ù† Ùˆ Ù‡Ø±Ù…Ø²Ú¯Ø§Ù†', 'Roodab1pt3', '2018-06-28 18:45:19'),
(1373, 'Ø±Ù†Ù…Ø§ÛŒÙ†Ø¯Ú¯ÛŒ Ù…Ø±Ú©Ø²ÛŒ Ø§Ø³ØªØ§Ù† Ø®Ø±Ø§Ø³Ø§Ù† Ø¬Ù†ÙˆØ¨ÛŒ .Ø±ÙˆØ¯Ø§Ø¨ Ø§ÛŒØ±Ø§Ù† Ø¨Ù‡ Ù…Ù†Ø¸ÙˆØ± Ø§Ø¹Ø·Ø§ÛŒ  Ù†Ù…Ø§ÛŒÙ†Ø¯Ú¯ÛŒ Ú©Ø§Ø±Ø¢ÙØ±ÛŒÙ†ÛŒ Ø¯ÛŒØ¬ÛŒØªØ§Ù„ Ø§ÛŒÙ† Ø´Ø±Ú©Øª Ø¯Ø± Ø§Ø³ØªØ§Ù† Ù‡Ø§ /Ø´Ù‡Ø±Ù‡Ø§ /Ù…Ù†Ø§Ø·Ù‚ /Ù…Ø­Ù„Ù‡ Ù‡Ø§ÛŒ Ù…Ø®ØªÙ„Ù Ø¶Ø±ÙˆØ±Øª Ø¬Ø°Ø¨ Ù†ÛŒØ±Ùˆ Ø¨Ø±Ø§ÛŒ Ø§Ø´ØªØºØ§Ù„Ø²Ø§ÛŒÛŒ ÙˆÚ©Ø³Ø¨ Ø¯Ø±Ø¢Ù…Ø¯ Ùˆ ØªÙˆØ³Ø¹Ù‡ Ú©Ø³Ø¨ Ø¯Ø± Ø¢Ù… ', 'roodab1a11', '2018-06-30 05:10:25'),
(1355, 'Ø¢Ù…ÙˆØ²Ø´ Ùˆ Ø±Ø§Ù‡Ù†Ù…Ø§ÛŒÛŒ Ø§Ø³ØªÙØ§Ø¯Ù‡', 'mahdihadian', '2018-06-20 05:59:30'),
(1371, 'ID Telegram:@Ashkan_bagherzadeh', 'Roodab1pt3', '2018-06-28 17:38:55'),
(1594, 'You can advertise your businesses here. Enquiry : Joshua +60108323456', 'Roodab9p1b1', '2018-10-28 01:42:51'),
(1381, '1) You can advertise your business here, please contact Mr. Joshua +60108323456', 'Roodab9p', '2018-06-30 09:40:18'),
(1382, 'http://roodabatoz.com/store/Joshua', 'Roodab9p', '2018-06-30 09:41:21'),
(1383, '1) You can advertise your business here, please contact Mr. Joshua +60108323456', 'Roodab9p1', '2018-06-30 11:37:41'),
(1384, 'http://roodabatoz.com/store/Joshua', 'Roodab9p1', '2018-06-30 11:37:51'),
(1395, 'Ù¾Ø§Ø³Ø§Ú˜ Ø¢Ù†Ù„Ø§ÛŒÙ† ØªÙ‡Ø±Ø§Ù†', 'roodab1p1', '2018-07-03 12:44:27'),
(1386, 'Ù…Ø±Ø¨ÛŒ Ø§Ù…ÙˆØ²Ø´ÛŒ ØªÛŒÙ… Ø¨Ø²Ø±Ú¯ Ø±ÙˆØ¯Ø§Ø¨', 'Roodab1pt1', '2018-07-02 03:20:16'),
(1595, 'You can advertise your businesses here. Enquiry : Joshua +60108323456', 'Roodab9p1b1c1', '2018-10-28 16:14:56'),
(1417, '1) You can advertise your business here. Enquiry: Joshua Tang : +60108323456', 'Roodab9p2', '2018-07-08 13:19:51'),
(1403, 'ÙØ±ÙˆØ´ Ù…Ø­ØµÙˆÙ„Ø§Øª Ø¯Ø±Ù…Ø§Ù†ÛŒ ÙˆØ²ÛŒØ¨Ø§ÛŒÛŒ Ø·Ø¨ Ø³Ù†ØªÛŒ ', 'Roodab1p1t4m9', '2018-07-05 16:28:17'),
(1397, 'Ù…Ø±Ø¨ÛŒ Ù¾Ø§Ø³Ø§Ú˜ Ù‡Ø§ÛŒ www.roodabatoz.com/store/roodab1p5 - www.roodabatoz.com/store/roodab1p12', 'roodab1pt4', '2018-07-03 21:23:37'),
(1578, 'Ø®Ø¯Ø§ÛŒØ§ Ø³Ù¾Ø§Ø³Ú¯Ø°Ø§Ø±Ù… Ø³Ù¾Ø§Ø³Ú¯Ø°Ø§Ø±Ù… Ø³Ù¾Ø§Ø³Ú¯Ø°Ø§Ø±Ù…', 'babakakbarnia', '2018-09-26 15:33:34'),
(1579, 'ÙØ±ÙˆØ´ Ú†Ù…Ø¯Ø§Ù† ÙˆØ§Ù†ÙˆØ§Ø¹ Ú©ÛŒÙÙ‡Ø§ÛŒ Ú†Ø±Ù…ÛŒ ( Ù¾Ø§Ø³Ù¾ÙˆØ±ØªÛŒ Ùˆ', 'babakakbarnia', '2018-09-28 18:25:15'),
(1580, 'Ú©ÛŒÙÙ‡Ø§ÛŒ Ø§Ø¯Ø§Ø±ÛŒ ÙˆØ§Ù†ÙˆØ§Ø¹ Ú©Ù…Ø±Ø¨Ù†Ø¯ ÙˆØ¬Ø§Ø³ÙˆÛŒÛŒÚ†ÛŒ ÙˆÚ©ÛŒÙ Ù¾', 'babakakbarnia', '2018-09-28 18:26:45'),
(1552, 'UURASS MOFO POST MJ KKSH ', 'Shivamanavipour', '2018-08-26 16:24:18'),
(1569, ' Ù¾Ø§Ø³Ø§Ú˜ Ø§Ù†Ù„Ø§ÛŒÙ† Ø´Ù‡Ø±Ø³ØªØ§Ù† Ù…Ø¨Ø§Ø±Ú©Ù‡ Ø¨Ø§ Ù…Ø¬ÙˆØ² Ø±Ø³Ù…ÛŒ Ø§Ø² Ø§Ø¯Ø§Ø±Ù‡ Ú©Ø§ Ø± Ø¢ÙØ±ÛŒÙ† Ø±Ø§Ø´ÛŒÙ† Ù…Ø§Ù†Ø¯Ú¯Ø§Ø±', 'Roodab1p1b1t20', '2018-08-29 08:21:12'),
(1565, '09136813055', 'Roodab1p1b1t20', '2018-08-29 07:30:31'),
(1566, ' Ù¾Ø§Ø³Ø§Ú˜ Ø§Ù†Ù„Ø§ÛŒÙ† Ø´Ù‡Ø±Ø³ØªØ§Ù† Ù…Ø¨Ø§Ø±Ú©Ù‡ Ø¨Ø§ Ù…Ø¬ÙˆØ² Ø±Ø³Ù…ÛŒ Ø§Ø² Ø´Ø±Ú©Øª Ú©Ø§ Ø± Ø¢ÙØ±ÛŒÙ† Ø±Ø§Ø´ÛŒÙ† Ù…Ø§Ù†Ø¯Ú¯Ø§Ø±', 'Roodab1p1b1t20', '2018-08-29 07:31:01'),
(1567, ' Ù¾Ø§Ø³Ø§Ú˜ Ø§Ù†Ù„Ø§ÛŒÙ† Ø´Ù‡Ø±Ø³ØªØ§Ù† Ù…Ø¨Ø§Ø±Ú©Ù‡ Ø¨Ø§ Ù…Ø¬ÙˆØ² Ø±Ø³Ù…ÛŒ Ø§Ø² Ø§Ø¯Ø§Ø±Ù‡ Ú©Ø§ Ø± Ø¢ÙØ±ÛŒÙ† Ø±Ø§Ø´ÛŒÙ† Ù…Ø§Ù†Ø¯Ú¯Ø§Ø±', 'Roodab1p1b1t20', '2018-08-29 08:19:43'),
(1413, 'â€@maryammirjafarii', 'roodab1pt5', '2018-07-07 17:06:49'),
(1414, 'Ø¨Ø±Ø§ÙŠ ÙƒØ³Ø¨ Ø§Ø·Ù„Ø§Ø¹Ø§Øª Ø¨ÙŠØ´ØªØ± Ø¨Ø§ Ù…Ù† ØªÙ…Ø§Ø³ Ø¨Ú¯ÙŠØ±ÙŠØ¯', 'roodab1pt5', '2018-07-07 17:07:08'),
(1415, 'Ù…Ø±Ø¨ÙŠ Ø§Ø³ØªØ§Ù† Ù‡Ø§ÙŠ Ú¯ÙŠÙ„Ø§Ù† Ùˆ Ø²Ù†Ø¬Ø§Ù† Ø¯Ø± Ø´Ø±ÙƒØª Ø±ÙˆØ¯Ø§Ø¨ Ù‡Ø³ØªÙ… ', 'roodab1pt5', '2018-07-07 17:07:29'),
(1416, 'Ù…Ø±ÙŠÙ… Ù…ÙŠØ±Ø¬Ø¹ÙØ±ÙŠ', 'roodab1pt5', '2018-07-07 17:07:40'),
(1437, '.Ø¨Ø±Ø§ÛŒ Ú¯Ø±ÙØªÙ† Ù†Ù…Ø§ÛŒÙ†Ø¯Ú¯ÛŒ Ù¾Ø§Ø³Ø§Ú˜ Ø´Ù‡Ø± Ùˆ Ù…Ø­Ù„Ù‡ Ø®ÙˆØ¯ Ø¨Ø§ Ø´Ù…Ø§Ø±Ù‡ Ù…Ù†Ø¯Ø±Ø¬ Ø´Ø¯Ù‡ Ø¯Ø± Ù¾Ø±ÙˆÙØ§ÛŒÙ„ ØªÙ…Ø§Ø³ Ø­Ø§ØµÙ„ Ù†Ù…Ø§ÛŒÛŒØ¯', 'roodab1p31b3', '2018-07-11 14:56:45'),
(1420, ' ØªÙØ±ÛŒØ­ÛŒ Ù„Ø­Ø¸Ø§Øª Ø®ÙˆØ´ÛŒ Ø±Ø§ Ø¨Ù‡ ÛŒØ§Ø¯Ú¯Ø§Ø± Ú¯Ø°Ø§Ø±.', 'roodab1t', '2018-07-09 11:57:57'),
(1422, ' Ø¯ÛŒØ¯Ù†ÛŒ Ùˆ ØªØ§Ø±ÛŒØ®ÛŒ ÙˆØªÙØ±ÛŒØ­ÛŒØŒ ÙØ±Ù‡Ù†Ú¯ØŒ Ø§Ø¯Ø§Ø¨ Ùˆ Ø±Ø³ÙˆÙ… Ùˆ Ø²Ø¨Ø§Ù†', 'roodab1t', '2018-07-09 11:59:56'),
(1553, 'https://t.me/joinchat/AAAAAEblHKYA-hxwpcJaw', 'roodab1p1b1t29m5', '2018-08-27 05:49:22'),
(1560, 'ÙØ±ÙˆØ´Ú¯Ø§Ù‡ Ù‚Ù†Ø¯ Ø¨Ø§ Ù…Ø¯ÛŒØ±ÛŒØª Ù…Ù‡Ù†Ø¯Ø³ Ø¹ÛŒØ³ÛŒ Ù¾ÙˆØ± Ù…Ø¯ÛŒØ± Ø§Ù†Ø¬Ù…Ù† Ø¨Ø§Ø¨Ù„', 'roodab1p1b1t30m30', '2018-08-28 08:01:38'),
(1561, 'ØªÙ„ÙÙ†: 011323266660 Ùˆ 09112168780', 'roodab1p1b1t30m30', '2018-08-28 08:02:28'),
(1426, ' Ø¯Ø± Ø§Ø®ØªÛŒØ§Ø± Ú¯Ø°Ø§Ø´ØªÙ† Ø§Ù…Ú©Ø§Ù†Ø§Øª Ø±ÙØ§Ù‡ÛŒØŒ Â ØªÙØ±ÛŒØ­ÛŒ Ù„Ø­Ø¸Ø§Øª Ø®ÙˆØ´ÛŒ Ø±Ø§ Ø¨Ù‡ ÛŒØ§Ø¯Ú¯Ø§Ø± Ú¯Ø°Ø§Ø±ÛŒÙ…', 'roodab1t', '2018-07-09 12:10:16'),
(1427, 'Ø§Ù…Ø§Ø¯Ù‡ Ø³Ø±ÙˆÛŒØ³ Ø¯Ù‡ÛŒ Ø¨Ù‡ Ø´Ù…Ø§ Ù‡Ù… ÙˆØ·Ù†Ø§Ù† Ø¹Ø²ÛŒØ² Ù…ÛŒ Ø¨Ø§Ø´Ø¯', 'roodab1p1t5m3', '2018-07-09 12:15:40'),
(1449, 'Ù¾Ø§Ø³Ø§Ú˜Ø¢Ù†Ù„Ø§ÛŒÙ† ØªØ§Ø¨Ù„Ùˆ ÙØ±Ø´ Ú©Ø§Ø´Ø§Ù†', 'roodab1p2t1m2', '2018-07-22 16:32:13'),
(1429, 'ÙØ±ÙˆØ´Ú¯Ø§Ù‡ Ù„ÙˆØ§Ø²Ù… Ø¢Ø±Ø§ÛŒØ´ÛŒ Ùˆ Ø¨Ù‡Ø¯Ø§Ø´ØªÛŒ Ø¨Ø§ Ø¨Ø§Ù„Ø§ØªØ±ÛŒÙ† Ú©ÛŒÙÛŒØª Ù…Ù…Ú©Ù† ', 'roodab1p1t5m3', '2018-07-09 12:16:42'),
(1430, 'roodab1p1c1t4m4', 'Roodab1p1', '2018-07-09 17:40:23'),
(1451, 'Ø®Ø¯Ø§ÛŒØ§ Ø³Ù¾Ø§Ø³Ú¯Ø²Ø§Ø±Ù… Ø³Ù¾Ø§Ø³Ú¯Ø²Ø§Ø±Ù… Ø³Ù¾Ø§Ø³Ú¯Ø²Ø§Ø±Ù… Ø§Ø² Ø§ÛŒÙ†Ú©Ù‡ ', 'Test19', '2018-07-24 06:12:45'),
(1470, 'Ø·Ø¨Ù‚Ù‡ Ø¯ÙˆÙ…', 'roodab1p1b1t23', '2018-08-04 19:52:31'),
(1467, 'Ø·Ø¨Ù‚Ù‡ Ø§ÙˆÙ„', 'roodab1p1b1t23', '2018-08-04 18:01:57'),
(1465, 'Ù…Ø¯ÛŒØ±ÛŒØª Ø·Ø¨Ù‚Ø§Øª Ø´Ù‡Ø±Ø³ØªØ§Ù† Ø³Ù…Ù†Ø§Ù†', 'roodab1p1b1t23', '2018-08-02 08:18:02'),
(1454, 'Ù†Ù…Ø§ÛŒÙ†Ø¯Ù‡ Ù¾Ø§Ø³Ø§Ú˜ Ø¢Ù†Ù„Ø§ÛŒÙ† ÙÙ„Ø§ÙˆØ±Ø¬Ø§Ù†', 'roodab1p1b1t22', '2018-07-24 21:48:33'),
(1469, 'Ø·Ø¨Ù‚Ù‡ Ø¯ÙˆÙ…', 'roodab1p1b1t23', '2018-08-04 19:52:30'),
(1456, 'Ù†Ù…Ø§ÛŒÙ†Ø¯Ù‡ Ù¾Ø§Ø³Ø§Ú˜ Ø¢Ù†Ù„Ø§ÛŒÙ† ÙÙ„Ø§ÙˆØ±Ø¬Ø§Ù†', 'roodab1p1b1t22', '2018-07-24 21:50:50'),
(1457, 'Ù†Ù…Ø§ÛŒÙ†Ø¯Ù‡ Ù¾Ø§Ø³Ø§Ú˜ Ø¢Ù†Ù„Ø§ÛŒÙ† ÙÙ„Ø§ÙˆØ±Ø¬Ø§Ù†', 'roodab1p1b1t22', '2018-07-24 21:51:17'),
(1458, 'Ù†Ù…Ø§ÛŒÙ†Ø¯Ù‡ Ù¾Ø§Ø³Ø§Ú˜ Ø¢Ù†Ù„Ø§ÛŒÙ† ÙÙ„Ø§ÙˆØ±Ø¬Ø§Ù†', 'roodab1p1b1t22', '2018-07-24 21:51:26'),
(1459, 'Ù†Ù…Ø§ÛŒÙ†Ø¯Ù‡ Ù¾Ø§Ø³Ø§Ú˜ Ø¢Ù†Ù„Ø§ÛŒÙ† ÙÙ„Ø§ÙˆØ±Ø¬Ø§Ù†', 'roodab1p1b1t22', '2018-07-24 21:53:28'),
(1466, 'Ø¨Ø±Ø§Ø§Ø¬Ø§Ø±Ù‡ Ù…ØºØ§Ø²Ù‡ Ø§Ù†Ù„Ø§ÛŒÙ† Ø¯Ø±Ø®Ø¯Ù…Øª Ø¯ÙˆØ³ØªØ§Ù† Ù‡Ø³ØªÙ… Ú©Ø³Ø¨ ÙˆÚ©Ø§Ø± Ø§ÛŒÙ†ØªØ±Ù†ØªÛŒ ', 'Roodab1p1b1t30', '2018-08-03 12:07:29'),
(1471, 'ØªØ¨Ù„ÛŒØºØ§Øª Ú¯Ø³ØªØ±Ø¯Ù‡ Ù¾Ø§Ø³Ø§Ú˜ Ø¢Ù†Ù„Ø§ÛŒÙ† Ø±ÙˆØ¯Ø§Ø¨ Ø§ÛŒØ±Ø§Ù†', 'Roodab1p1b1t10', '2018-08-05 22:22:42'),
(1472, 'Ø§Ø±Ø§Ø¦Ù‡ ØªØ®Ù… Ù†Ø·ÙÙ‡ Ø¯Ø§Ø± Ùˆ Ø®ÙˆØ±Ø§Ú©ÛŒ Ø¨Ù„Ø¯Ø±Ú†ÛŒÙ†ØŒ Ú¯ÙˆØ´Øª Ú¯Ø±Ùˆ Ùˆ Ù…Ù†Ø¬Ù…Ø¯ Ø¨Ù„Ø¯Ø±Ú†ÛŒÙ†ØŒ Ø®Ø±ÙˆØ³ Ù…Ø­Ù„ÛŒ Ø²Ù†Ø¯Ù‡ Ùˆ Ú©Ø´ØªØ§Ø± Ø´Ø¯Ù‡ØŒ ØªØ®Ù… Ù†Ø·ÙÙ‡ Ø¯Ø§Ø± Ùˆ Ø®ÙˆØ±Ø§Ú©ÛŒ Ù…Ø±Øº Ø¨ÙˆÙ…ÛŒ', 'saeedbakhshi', '2018-08-06 09:38:54'),
(1473, 'Ø¢Ø±Ø§ÛŒØ´ÛŒ Ø¨Ù‡Ø¯Ø§Ø´ØªÛŒ Ùˆ Ø´Ø§Ù„ Ùˆ Ø±ÙˆØ³Ø±ÛŒ', 'Roodab1p1b1t10m1', '2018-08-06 10:58:16'),
(1474, 'Ù…ØºØ§Ø²Ù‡ Ø¢Ù†Ù„Ø§ÛŒÙ† ØªØ§Ø¨Ù„ÙˆÙØ±Ø´ Ú©Ø§Ø´Ø§Ù†', 'Roodab1p1b1t10m2', '2018-08-06 18:31:44'),
(1476, 'Ù…Ø´Ù…Ø­ØµÙˆÙ„Ø§Øª Ø¨Ø±ØªØ±ÛŒÙ† Ø¨Ø±Ù†Ø¯Ø¯Ù†ÛŒØ§ ÙˆÛŒÚ©ØªÙˆØ±ÛŒØ§Ø³Ú©Ø±Øª Ø¨Ø§Ø¯ÛŒ Ø§Ø³Ù¾Ù„Ø´', 'Roodab1p1b1t10m3', '2018-08-06 19:56:07'),
(1477, 'Ù…Ø­ØµÙˆÙ„Ø§Øª ÙˆÛŒÚ©ØªÙˆØ±ÛŒØ§ Ø³Ú©Ø±Øª Ø¨Ø§Ø¯ÛŒ Ø§Ø³Ù¾Ù„Ø´', 'Roodab1p1b1t10m3', '2018-08-06 19:57:10'),
(1478, 'Ù…Ø­ØµÙˆÙ„Ø§Øª ÙˆÛŒÚ©ØªÙˆØ±ÛŒØ§ Ø³Ú©Ø±Øª Ø¨Ø§Ø¯ÛŒ Ø§Ø³Ù¾Ù„Ø´', 'Roodab1p1b1t10m3', '2018-08-06 19:58:23'),
(1479, 'Ú¯Ø§Ù„Ø±ÛŒ Ú¯Ù„Ø¯ÙˆØ²ÛŒ Ú©Ø§Ø¨Ø§Ù†', 'Roodab1p1b1t10m4', '2018-08-07 05:41:49'),
(1480, 'Ù„ÙˆØ§Ø²Ù… Ø®Ø§Ù†Ù‡ Ùˆ Ø¢Ø´Ù¾Ø² Ø®Ø§Ù†Ù‡', 'Roodab1p1b1t10m5', '2018-08-07 05:54:39'),
(1509, 'Ù…Ø®ØµÙˆÙ„Ø§Øª Ø·Ø¨ÛŒØ¹ÛŒ Ù†ÛŒÙˆØ´Ø§', 'Roodab1p1b1t10m8', '2018-08-07 17:12:26'),
(1482, 'Ù¾ÙˆØ´Ø§Ú© Û±Û¸Ûµ', 'Roodab1p1b1t30m21', '2018-08-07 07:57:39'),
(1485, 'Ú†Ø´Ù… Ù¾Ù†Ù‡Ø§Ù†', 'Roodab1p1b1t30m3', '2018-08-07 08:21:08'),
(1486, 'Ù‡Ù†Ø±Ø¯Ø³Øª Ø¯Ø±Ø®Ø§Ù†Ù‡', 'Roodab1p1b1t30m4', '2018-08-07 08:55:13'),
(1487, 'Ø·Ø§Ù„Ø¹ Ø¨ÛŒÙ†ÛŒ ÙˆÙØ§Ù„ Ùˆ Ú©Ù Ø¨ÛŒÙ†ÛŒ', 'Roodab1p1b1t30m5', '2018-08-07 09:02:23'),
(1488, 'Ø¬Ø±Ø§Ø­ÛŒ Ø²ÛŒØ¨Ø§ÛŒÛŒ Ø¨ÛŒÙ†ÛŒ ÙˆØµÙˆØ±Øª', 'Roodab1p1b1t30m6', '2018-08-07 09:09:43'),
(1489, 'Ú©Ø§ÙÙ‡ Ø¯ÙˆØ±Ù‡Ù…ÛŒ', 'Roodab1p1b1t30m7', '2018-08-07 09:15:41'),
(1490, 'Ø§Ù…Ù„Ø§Ú© Ù¾ÛŒØ±ÙˆØ²ÛŒ', 'Roodab1p1b1t30m8', '2018-08-07 10:00:37'),
(1491, 'Ø¢ØªÙ„ÛŒÙ‡ ØªØ®ØµØµÛŒ Ú©ÙˆØ¯Ú© Ù†ÙˆØ²Ø§Ø¯ Ø¨Ø§Ø±Ø¯Ø§Ø±ÛŒ Ø¨Ø§Ù…ÛŒØ¨Ù†Ùˆ', 'Roodab1p1b1t30m9', '2018-08-07 10:07:55'),
(1492, 'Ú†ÙˆÚ©Ø§Ø¨ Ø³ÛŒØ³ØªÙ… .Ù…Ø¬Ø±ÛŒ Ø³ÛŒØ³ØªÙ… Ù‡Ø§ÛŒ Ù…Ø¯Ø±Ù† Ø¢Ø´Ù¾Ø²Ø®Ø§Ù†Ù‡', 'Roodab1p1b1t30m10', '2018-08-07 10:15:49'),
(1493, 'Ø¢ØªÙ„ÛŒÙ‡ Ø¹Ú©Ø³ Ù…Ø¬Ø§Ù„Ø³', 'Roodab1p1b1t30m11', '2018-08-07 10:34:29'),
(1494, 'Ø­Ø¬Ø§Ù…Øª .Ø¨Ø§Ø¯Ú©Ø´.Ø²Ø§Ù„ÙˆØ¯Ø±Ù…Ø§Ù†ÛŒ', 'Roodab1p1b1t30m12', '2018-08-07 10:38:59'),
(1495, 'Ø­Ø¬Ø§Ù…Øª .Ø¨Ø§Ø¯Ú©Ø´.Ø²Ø§Ù„ÙˆØ¯Ø±Ù…Ø§Ù†ÛŒ', 'Roodab1p1b1t30m12', '2018-08-07 10:39:28'),
(1496, 'Ù…Ø­ØµÙˆÙ„Ø§ Øª Ø·Ø¨ÛŒØ¹ÛŒ Ù†ÛŒÙˆØ´Ø§', 'Roodab1p1b1t30m13', '2018-08-07 10:44:46'),
(1497, 'Ø¢Ø±Ø§ÛŒØ´Ú¯Ø§Ù‡ Ù…Ø±Ø¯Ø§Ù†Ù‡ ', 'Roodab1p1b1t30m14', '2018-08-07 11:01:51'),
(1498, 'Ø¢Ø±Ø§ÛŒØ´Ú¯Ø§Ù‡ Ù…Ø±Ø¯Ø§Ù†Ù‡ ', 'Roodab1p1b1t30m14', '2018-08-07 11:01:58'),
(1499, 'Ù…Ø±Ø¨ÛŒ Ø´Ù†Ø§ Ø¨ØµÙˆØ±Øª Ø®ØµÙˆØµÛŒ ÙˆÚ¯Ø±ÙˆÙ‡ÛŒ ', 'Roodab1p1b1t30m16', '2018-08-07 11:15:32'),
(1500, 'Ø¯Ø¨ÛŒØ±Ø³ØªØ§Ù† ØºÛŒØ±Ø¯ÙˆÙ„ØªÛŒ Ù†Ø±Ø¬Ø³ Ù†ÙˆÛŒÙ†', 'Roodab1p1b1t30m17', '2018-08-07 11:35:57'),
(1501, 'Ø¢Ú˜Ø§Ù†Ø³ Ù‡ÙˆØ§Ù¾ÛŒÙ…Ø§ÛŒÛŒ Ø§Ø±Ø§Ù† Ø³ÛŒØ±Ù…Ø´Ù‡Ø¯', 'Roodab1p1b1t30m18', '2018-08-07 11:48:07'),
(1502, 'Ø§Ù†Ø¯Ø§Ø²Ù‡ Ú¯ÛŒØ±ÛŒ Ø²Ø±Ø¯ÛŒ Ù†ÙˆØ§Ø²Ø§Ø¯Ø§Ù† Ø¨Ø§Ø¯Ø³ØªÚ¯Ø§Ù‡ ÙØªÙˆØªØ±Ø§Ù¾ÛŒ', 'Roodab1p1b1t30m19', '2018-08-07 11:56:41'),
(1503, 'Ù…Ø±Ú©Ø² Ø®Ø¯Ù…Ø§ØªÛŒ Ú©Ø´Ø§ÙˆØ±Ø²ÛŒ Ø¯Ø§Ù†Ø´Ú¯Ø§Ù‡ Ø¹Ù„Ù…ÛŒ Ú©Ø§Ø±Ø¨Ø±Ø¯ÛŒ ', 'Roodab1p1b1t30m20', '2018-08-07 12:02:15'),
(1504, 'Ø§Ù†ÙˆØ§Ø¹ Ø¯ÙˆØ±Ø¨ÛŒÙ† Ù‡Ø§ÛŒ Ù…Ø¯Ø§Ø±Ø¨Ø³ØªÙ‡ Ø¯Ø²Ø¯Ú¯ÛŒØ±.Ø§Ù…Ø§Ú©Ù†', 'Roodab1p1b1t30m3', '2018-08-07 12:16:45'),
(1505, 'Ú©Ø§ÙÙ‡ Ø¯ÙˆØ±Ù‡Ù…ÛŒ', 'Roodab1p1b1t30m7', '2018-08-07 13:16:17'),
(1506, 'Ú©Ø§ÙÙ‡ Ø¯ÙˆØ±Ù‡Ù…ÛŒ', 'Roodab1p1b1t30m7', '2018-08-07 13:21:42'),
(1507, 'Ú¯ÛŒÙ„Ø§Ù† Ø´Ù‡Ø±Ø³ØªØ§Ù† Ù„Ù†Ú¯Ø±ÙˆØ¯ ØªØ§Ø³ÛŒØ³Ø§ØªÛŒ Ø¢ÙØ±', 'Roodab1p1b1t10m6', '2018-08-07 13:38:04'),
(1508, 'Ø§Ø³ØªØ®Ø±Ø¢Ø±ÛŒØ§  Ú©Ù„Ø§Ø³Ù‡Ø§ÛŒ Ø´Ù†Ø§ Ø¨ØµÙˆØ±Øª Ø®ØµÙˆØµÛŒ ÙˆØ¹Ù…ÙˆÙ…ÛŒ', 'Roodab1p1b1t30m15', '2018-08-07 13:59:11'),
(1510, 'Ú©Ù„ÛŒÙ†ÛŒÚ© ØªØ®ØµÛŒØµÛŒ Ø¯Ø§Ù†Ø¯Ø§Ù† Ù¾Ø²Ø´Ú©ÛŒ', 'Roodab1p1b1t10m9', '2018-08-07 17:49:43'),
(1511, 'ØªØ§Ø¨Ù„Ùˆ Ø±ÙˆØ§Ù† Ø«Ø§Ø¨Øª Ù¾Ù„Ú©Ø³ÛŒ', 'Roodab1p1b1t10m10', '2018-08-07 17:56:47'),
(1512, 'Ú©Ù„ÛŒÙ†ÛŒÚ© ØªØ®ØµÛŒØµÛŒ Ø¯Ø§Ù†Ø¯Ø§Ù† Ù¾Ø²Ø´Ú©ÛŒ', 'Roodab1p1b1t10m9', '2018-08-07 18:07:41'),
(1513, 'Ø¹Ø·Ø§Ø±ÛŒ Ø¹Ù‚ÛŒÙ„ÛŒ Ø®Ø±Ø§Ø³Ø§Ù†ÛŒ', 'Roodab1p1b1t30m22', '2018-08-08 09:39:26'),
(1514, 'Ø¹Ø·Ø§Ø±ÛŒ Ø¹Ù‚ÛŒÙ„ÛŒ Ø®Ø±Ø§Ø³Ø§Ù†ÛŒ', 'Roodab1p1b1t30m22', '2018-08-08 09:39:52'),
(1515, 'Ø¹Ø·Ø§Ø±ÛŒ Ø¨Ù‡Ø§Ø±', 'Roodab1p1b1t30m23', '2018-08-08 09:59:14'),
(1516, 'ØªÚ©Ù…ÛŒÙ„ Ù…Ø¯Ø±Ú© ØªØ­ØµÛŒÙ„ÛŒ Ø¨ØµÙˆØ±Øª Ø¢Ø³Ø§Ù† ÙˆÙ‚Ø§Ù†ÙˆÙ†ÛŒ Ø¯ÛŒÙ…Ù„Ù… ÙˆÚ©Ø§Ø±Ø´Ù†Ø§Ø³ÛŒ', 'Roodab1p1b1t30m24', '2018-08-08 11:44:58'),
(1517, 'ØªÚ©Ù…ÛŒÙ„ Ù…Ø¯Ø±Ú© ØªØ­ØµÛŒÙ„ÛŒ Ø¨ØµÙˆØ±Øª Ø¢Ø³Ø§Ù† ÙˆÙ‚Ø§Ù†ÙˆÙ†ÛŒ Ø¯ÛŒÙ…Ù„Ù… ÙˆÚ©Ø§Ø±Ø´Ù†Ø§Ø³ÛŒ', 'Roodab1p1b1t30m24', '2018-08-08 11:45:22'),
(1518, 'Ù…Ø¯ÛŒØ±ÛŒØª Ù…Ù‡Ø¯ÛŒ Ù…Ù‚ÛŒÙ… ..ØªÚ©Ù…ÛŒÙ„ Ù…Ø¯Ø±Ú© ØªØ­ØµÛŒÙ„ÛŒ Ø¨ØµÙˆØ±Øª Ø§Ø³Ø§Ù†â€ŒÙˆÙ‚Ø§Ù†ÙˆÙ†ÛŒ', 'Roodab1p1b1t30m24', '2018-08-08 11:49:49'),
(1521, 'Ø¯Ú©ÙˆØ±Ø§Ø³ÛŒÙˆÙ† Ø¯Ø§Ø®Ù„ÛŒ Ù…Ù†Ø²Ù„Ù„', 'Roodab1p1b1t10m11', '2018-08-09 02:19:11'),
(1520, 'Ø¯Ú©ÙˆØ±Ø§Ø³ÛŒÙˆÙ† Ø¯Ø§Ø®Ù„ÛŒ Ù…Ù†Ø²Ù„ ', 'Roodab1p1b1t10m11', '2018-08-09 02:18:41'),
(1522, 'Ø¯Ú©ÙˆØ±Ø§Ø³ÛŒÙˆÙ† Ø¯Ø§Ø®Ù„ÛŒ Ù…Ù†Ø²Ù„ ', 'Roodab1p1b1t10m11', '2018-08-09 02:19:38'),
(1523, 'ØªÙˆÙ„ÛŒØ¯ÛŒ Ù…Ø¨Ù„ Ø²Ø±ÛŒÙ† ØªÙ‡Ø±Ø§Ù†', 'Roodab1p1b1t10m14', '2018-08-09 03:26:04'),
(1524, 'ØªÙˆÙ„ÛŒØ¯ÛŒ Ù…Ø¨Ù„ Ø²Ø±ÛŒÙ† ØªÙ‡Ø±Ø§Ù†', 'Roodab1p1b1t10m14', '2018-08-09 03:26:29'),
(1525, 'Ø´ÛŒÚ© Ù¾ÙˆØ´Ø§Ù† ØµÙØ§ÛŒÛŒ', 'Roodab1p1b1t10m13', '2018-08-09 03:28:47'),
(1526, 'Ù¾Ø®Ø´ ØªØ§Ø³ÛŒØ³Ø§ØªÛŒ ÙˆØ­ÛŒØ¯', 'Roodab1p1b1t10m12', '2018-08-09 03:30:49'),
(1528, 'Ø·Ø¨ Ø³Ù†ØªÛŒ ÙˆØ§Ø³Ù„Ø§Ù…ÛŒ ÙˆÛŒØ²ÛŒØª .Ù…Ø´Ø§ÙˆØ±Ù‡.Ø±Ú© Ú¯ÛŒØ±ÛŒ.Ø­Ø¬Ø§Ù…Øª', 'Roodab1p1b1t30m27', '2018-08-12 08:53:04'),
(1531, 'Ø§Ø±Ø§ÛŒØ´ Ú¯Ø±ÛŒÙ… ØªØ®ØµØµÛŒ Ø¹Ø±ÙˆØ³ Ø±Ù†Ú¯ Ù…Ùˆ ØªØªÙˆ ØªÙˆØ³Ø· ØªÛŒÙ… Ø­Ø±ÙÙ‡ Ø§ÛŒÛŒ', 'Roodab1p1t4m2', '2018-08-13 10:09:50'),
(1530, 'Ø§Ù†ÙˆØ§Ø¹ Ø®Ø¯Ù…Ø§Øª Ù‡ÛŒØ±Ú©Ø§Øª', 'Roodab1p1t4m2', '2018-08-13 10:08:27'),
(1532, 'Ú©ÙØ´ ØªØ¨Ø±ÛŒØ²', 'Roodab1p1b1t30m28', '2018-08-14 08:21:44'),
(1533, 'Ø§Ù†Ø¬ÛŒØ±Ø¨Ø³ØªÙ‡ Ø¨Ù†Ø¯ÛŒ Ù…ÛŒÚ©Ù†ÛŒÙ… Ø¯Ø±Ø¬Ù‡ Û±ÙˆÛ²', 'Roodab1p1b1t30m29', '2018-08-15 14:04:50'),
(1536, 'Ø¨Ø±Ø§ÛŒ Ø®Ø±ÛŒØ¯ Ø§Ø±Ø²Ø§Ù†ØªØ²ÛŒÙ† Ùˆ Ø¨Ø§ Ú©ÛŒÙÛŒØª ØªØ±ÛŒÙ† Ú©ÛŒÙ Ù‡Ø§ÛŒ Ú†Ø±Ù… Ø¨Ø§ Ø´Ù…Ø§Ø±Ù‡ Ù…Ù†Ø¯Ø±Ø¬ Ø´Ø¯Ù‡ Ø¯Ø± Ù‚ÛŒÙ…Øª Ø¨ÛŒÙˆÚ¯Ø±Ø§ÙÛŒ  ØªÙ…Ø§Ø³ Ø­Ø§ØµÙ„ Ù†Ù…Ø§ÛŒÛŒØ¯.', 'roodab1p1b1t3m4', '2018-08-19 06:18:54'),
(1539, 'Ø´Ø±Ú©Øª Ø¨Ø§Ø²Ø±Ú¯Ø§Ù†ÛŒ Ø§ÙØºØ§Ù†Ø³ØªØ§Ù† Ø§Ù…Ø§Ø¯Ù‡ Ø®Ø¯Ù…Øª Ø±Ø³Ø§Ù†ÛŒ Ù…ÛŒ Ø¨Ø§Ø´Ø¯.', 'roodab1p1b1t3m5', '2018-08-21 12:12:47'),
(1540, 'roodab1p1b1t29m3', 'roodab1p1b1t29m3', '2018-08-23 05:43:21'),
(1543, 'roodab1p1b1t29m3', 'roodab1p1b1t29m3', '2018-08-23 05:44:15'),
(1544, 'Ù†Ø§Ù‡ÛŒØ¯ Ù…Ù„Ú©ÛŒ', 'roodab1p1b1t29m3', '2018-08-23 05:46:18'),
(1545, 'Ø§Ø±Ø²Ø§Ù†Ú©Ø¯Ù‡ ÙˆØ§Ù†ÛŒØ§ ', 'roodab1p1b1t29m3', '2018-08-23 05:46:28'),
(1546, 'roodab1p1b1t29m3', 'roodab1p1b1t29m3', '2018-08-23 05:48:42'),
(1562, '  Ø²ÛŒØ± Ù†Ø¸Ø± Ø§Ù†Ø¬Ù…Ù† Ù¾ÛŒØ´Ú¯ÛŒØ±ÛŒ Ùˆ Ù…Ù‡Ø§Ø± Ø¯ÛŒØ§Ø¨Øª Ù…Ø§Ø²Ù†Ø¯Ø±Ø§Ù† Ø¨Ø§ Ù…Ø¯ÛŒØ±ÛŒØª Ø¯Ú©ØªØ± Ø³ÛŒØ¯ Ø¬Ø¹ÙØ± Ø§Ø³Ø¯Ø§Ù„Ù„Ù‡ Ù¾ÙˆØ± Ù…Ø¯ÛŒØ± Ø§Ù†Ø¬Ù…Ù† Ø§Ø³ØªØ§Ù† ', 'roodab1p1b1t30m30', '2018-08-28 08:03:55'),
(1563, 'ØªÙ„ÙÙ†: 01135288132  Ùˆ  09111137959', 'roodab1p1b1t30m30', '2018-08-28 08:04:53'),
(1581, 'Ù¾ÙˆÙ„ Ø²Ù†Ø§Ù†Ù‡ ÙˆÙ…Ø±Ø¯Ø§Ù†Ù‡  Ø¬Ø§', 'babakakbarnia', '2018-09-28 18:27:22'),
(1582, 'Ø¬Ø§Ú©Ø§Ø±ØªÛŒ  Ø§Ù†ÙˆØ§Ø¹ Ø³Øª Ú†Ø±Ù…ÛŒ ÙˆØªØ±Ø§ÙˆÙ„ÛŒ Ø¯Ø± Û³ Ø³Ø§ÛŒØ²', 'babakakbarnia', '2018-09-28 18:28:35'),
(1583, 'By making your business digital with Roodab, you can indirectly helping these little angels.', 'Angel', '2018-10-04 11:07:18'),
(1584, 'By making your business digital with Roodab, you can indirectly helping these little angels.', 'AOCU', '2018-10-04 11:18:43'),
(1585, 'You can advertise your website here. Enquiry : Joshua +60108323456', 'Angel', '2018-10-04 12:10:08'),
(1586, 'You can advertise your website here. Enquiry : Joshua +60108323456', 'Recommend', '2018-10-07 03:16:35'),
(1587, 'You can advertise your website here. Enquiry : Joshua +60108323456', 'Atomy', '2018-10-07 03:34:33'),
(1588, 'You can advertise your website here. Enquiry : Joshua +60108323456', 'BabyCenter', '2018-10-08 07:19:31'),
(1589, 'You can advertise your website here. Enquiry : Joshua +60108323456', 'Confinement', '2018-10-08 08:26:49'),
(1590, 'You can advertise your website here. Enquiry : Joshua +60108323456', 'Shampoo', '2018-10-08 09:08:56'),
(1591, 'You can advertise your website here. Enquiry : Joshua +60108323456', 'AtomyMalaysia', '2018-10-08 09:41:52'),
(1592, 'You can advertise your website here. Enquiry : Joshua +60108323456', 'AtomyKualaLumpur', '2018-10-08 10:01:08'),
(1596, 'You can advertise your businesses here. Enquiry : Joshua +60108323456', 'Roodab9p1b1c1t1', '2018-10-29 07:12:31'),
(1599, 'Ø®Ø¯Ø§ÛŒØ§ Ø³Ù¾Ø§Ø³Ú¯Ø°Ø§Ø±Ù…', 'nedaasi', '2018-11-01 07:40:39'),
(1602, 'ÙˆØ§Ø±Ø¯ Ú©Ø±Ø¯Ù† Ù…Ø­ØªÙˆØ§', 'chatredanesh5', '2018-11-10 10:25:33'),
(1601, 'Ø§Ù…Ø±ÙˆØ² Ø´Ù†Ø¨Ù‡ Ø³Øª', 'nedaasi', '2018-11-10 07:52:26'),
(1603, 'ÙˆØ§Ø±Ø¯ Ú©Ø±Ø¯Ù† Ù…Ø­ØªÙˆØ§', 'chatredanesh5', '2018-11-10 11:01:09'),
(1604, 'ÙˆØ§Ø±Ø¯ Ú©Ø±Ø¯Ù† Ù…Ø­ØªÙˆØ§', 'chatredanesh5', '2018-11-10 11:01:25'),
(1605, 'ÙˆØ§Ø±Ø¯ Ú©Ø±Ø¯Ù† Ù…Ø­ØªÙˆØ§', 'chatredanesh5', '2018-11-10 11:09:22'),
(1606, 'ÙˆØ§Ø±Ø¯ Ú©Ø±Ø¯Ù† Ù…Ø­ØªÙˆØ§', 'chatredanesh5', '2018-11-10 11:37:00'),
(1607, 'ÙˆØ§Ø±Ø¯ Ú©Ø±Ø¯Ù† Ù…Ø­ØªÙˆØ§', 'chatredanesh5', '2018-11-10 11:37:54'),
(1608, 'ÙˆØ§Ø±Ø¯ Ú©Ø±Ø¯Ù† Ù…Ø­ØªÙˆØ§', 'chatredanesh5', '2018-11-10 11:38:36'),
(1609, 'Grab one Area Center and learn to make RM3,000 per week! ', 'Roodab9p1b', '2018-11-12 05:24:00'),
(1610, 'You can advertise your businesses here. Enquiry : Joshua +60108323456', 'Roodab9p1b', '2018-11-12 05:24:24'),
(1611, 'You can advertise your businesses here. Enquiry : Joshua +60108323456', 'Roodab9p1b1t1', '2018-11-13 11:28:12'),
(1614, 'Ù…Ù† Ù‡Ø¯Ù Ù‡Ø§ÛŒ Ø²ÛŒØ§Ø¯ÛŒ Ø¯Ø§Ø±Ù…', 'Faranakshop', '2018-11-14 09:12:08'),
(1670, 'https://m.facebook.com/whatsapp.blast.marketing  ::This software has features:: â˜‘ Reduce Risk Banned From WhatsApp â˜‘ Blast Unlimited text & images(No Credit) â˜‘ Extract Group Contacts (Collect Database) â˜‘ Auto Join Groups â˜‘ Blast Messages to Multiple Individual Contact  â˜‘ Support Spin Text Messages / Random Delay / Unique Code â˜‘ WhatsApp Group Finder (Malaysia all area / Worldwide) â˜‘ WhatsApp Phone Number Generator & Detector â˜‘ Auto Update  â˜‘ After Sale Support (FaceBook,WhatsApp & Teamviewer) / Video Tutorial  ::Please WhatsApp For More Info:: ðŸ“² Direct WhatsApp: http://w', 'Roodab9p1b1t1m7', '2018-12-11 02:06:42'),
(1628, 'You can advertise your businesses here, RM3/week. WhatsApp: Joshua +60108323456', 'Roodab9p1b1g', '2018-11-19 04:00:00'),
(1635, ' Ø§ÛŒÙ…ÛŒÙ„: roodabiran@roodabatoz.com', 'roodab3p2b', '2018-11-28 10:54:07'),
(1636, 'Ø¢Ø¯Ø±Ø³: ØªÙ‡Ø±Ø§Ù† - Ù…ÛŒØ¯Ø§Ù† Ø§Ù†Ù‚Ù„Ø§Ø¨- Ø®ÛŒØ§Ø¨Ø§Ù† ÙØ®Ø± Ø±Ø§Ø²ÛŒ -Ù¾Ù„Ø§Ú© 27 - Ø³Ø§Ø®ØªÙ…Ø§Ù† Ú†ØªØ± Ø¯Ø§Ù†Ø´', 'roodab3p2b', '2018-11-28 10:54:28'),
(1618, 'Ø¨Ø±Ø§ÛŒ Ø±Ø³ÛŒØ¯Ù† Ø¨Ù‡ Ù‡Ø¯Ù Ù‡Ø§Ù… ØªÙ„Ø§Ø´ Ù…ÛŒÚ©Ù†Ù… Ùˆ Ø¨Ù‡ Ù‡Ù…Ù‡ Ù‡Ø¯Ù Ù‡Ø§Ù… Ù…ÛŒ Ø±Ø³Ù…', 'Faranakshop', '2018-11-14 09:15:03'),
(1664, 'Ø¨Ø²Ø±Ú¯ØªØ±ÛŒÙ† Ø³Ø±Ø¯Ø®Ø§Ù†Ù‡ Ø®Ø±Ù…Ø§ÛŒ Ø§ÛŒØ±Ø§Ù† ', 'roodab1k9b3s1', '2018-12-09 10:35:07'),
(1630, 'Ø§ÛŒÙ…ÛŒÙ„: roodabiran@roodabatoz.com', 'ROODAB3P1B', '2018-11-24 05:54:32'),
(1631, 'Grab one Area Center and learn to make RM3,000 per week! ', 'Roodab9p1b1t1m1', '2018-11-28 01:58:22'),
(1632, 'You can advertise your website here. Enquiry : Joshua +60108323456', 'Roodab9p1b1t1m1', '2018-11-28 01:58:32'),
(1633, 'Grab one Area Center and learn to make RM3,000 per week! ', 'Roodab9p1b3', '2018-11-28 06:32:26'),
(1634, 'You can advertise your businesses here. Enquiry : Joshua +60108323456', 'Roodab9p1b3', '2018-11-28 06:32:43'),
(1637, 'ç¥¥å“¥çƒ§è‚‰ï¼Œå‰çƒ§ï¼Œçƒ§é·„é£¯ä¸Žäº‘åžé¢', 'Roodab9p1b1t1m2', '2018-11-29 03:42:56'),
(1638, 'åœ°å€ï¼šæ²™å»ç§€æ–°æ‘å¤§ä¼šå ‚å¯¹é¢', 'Roodab9p1b1t1m2', '2018-11-29 03:44:21'),
(1639, 'Desa Petaling, at traffic light T-junction', 'Roodab9p1b1t1m3', '2018-11-29 06:58:28'),
(1640, 'Street food DUG Burger (Ramly)', 'Roodab9p1b1t1m4', '2018-11-30 09:55:43'),
(1641, 'No. 5, Jalan Gading, Off Bukit Bintang, Kuala Lumpur', 'Roodab9p1b1t1m4', '2018-11-30 09:57:04'),
(1642, 'Road site food stall between Ansa Hotel and Fahrenheit88 Shopping Mall', 'Roodab9p1b1t1m4', '2018-11-30 10:01:39'),
(1660, 'Coffee spread & Coffee Chocolate', 'Roodab9p1b1t1m9', '2018-12-09 04:53:26'),
(1812, 'Ø¨Ù‡ Ù¾Ø§Ø³Ø§Ú˜ Ø¨Ø²Ø±Ú¯ Ø´Ù‡Ø± Ø¢ÙØªØ§Ø¨ Ø®ÙˆØ´ Ø§Ù…Ø¯ÛŒØ¯', 'roodab3p1b3c1', '2019-01-02 13:40:21'),
(1665, 'Ø¨Ø²Ø±Ú¯ØªØ±ÛŒÙ† Ø³Ø±Ø¯Ø®Ø§Ù†Ù‡ Ùˆ ØµÙ†Ø§ÛŒØ¹ Ø¨Ø³ØªÙ‡ Ø¨Ù†Ø¯ÛŒ Ø®Ø±Ù…Ø§ÛŒ Ø±ÙˆØ¯Ø§Ø¨ Ø¯Ø± Ø§ÛŒØ±Ø§Ù† ', 'roodab1k9b3s1', '2018-12-09 10:43:43'),
(1645, 'ØªÙˆÙ„ÛŒØ¯ÛŒ Ù‡Ø§ÛŒ Ø§Ø³ØªØ§Ù† Ù‡Ø§ Ùˆ Ø´Ù‡Ø±Ø³ØªØ§Ù† Ù‡Ø§ Ø¨Ø±Ø§ÛŒ Ù…Ø¹Ø±ÙÛŒ Ù…Ø­ØµÙˆÙ„Ø§Øª ØªÙˆÙ„ÛŒØ¯ÛŒ Ø®ÙˆØ¯ Ø¨Ø§ Ø´Ù…Ø§Ø±Ù‡ Ù‡Ø§ÛŒ Ø²ÛŒØ± ØªÙ…Ø§Ø³ Ø¨Ú¯ÛŒØ±ÛŒØ¯', 'roodab3p2bac', '2018-12-02 07:58:25'),
(1646, 'Opposite road of Dewan Orang Ramai Salak South', 'Roodab9p1b1t1m2', '2018-12-02 10:52:13'),
(1647, 'ä»è®°å°ç‚’ ', 'Roodab9p1b1t1m5', '2018-12-03 10:10:45'),
(1648, 'Desa Petaling, at traffic light T-junction', 'Roodab9p1b1t1m5', '2018-12-03 10:10:58'),
(1649, 'è”ç³»: å®¶æˆå…ˆç”Ÿ', 'Roodab9p1b1t1m5', '2018-12-03 10:13:39'),
(1650, 'B-1-14, Jalan 3/125C, PPR Desa Petaling', 'Roodab9p1b1t1m6', '2018-12-03 11:09:23'),
(1651, 'No. 3F-1B, 3rd. Floor, Tower 1 @PFCC, Jalan Puteri 1/2, Bandar Puteri, 47100 Puchong, Selangor, Malaysia', 'Roodab9p1b1t1m7', '2018-12-06 04:48:09'),
(1652, 'AAA Global System é©¬æ¥è¥¿äºšAAAçŽ¯çƒç³»çµ± Fax: +603-8051 6669  Email: aaaglobalsystem@gmail.com', 'Roodab9p1b1t1m7', '2018-12-06 04:51:28'),
(1653, 'Equiry: Kenneth Chin (Project Manager-Event Planner) +6012-629 1222', 'Roodab9p1b1t1m7', '2018-12-06 04:53:28'),
(1654, 'ç”³è¯·APEC å¡çš„ä¼˜ç‚¹  å…ç­¾è¯  19å›½ä¸éœ€è¦åŠžç†ç­¾è¯å°¤å…¶æ˜¯ä¸­å›½ã€‚å•†åŠ¡å¡å·²ç»é¢„å…ˆæ‰¹å‡†é€šå…³ä½œä¸šï¼Œçœç•¥é€šå…³æ‰‹ç»­  å¿«é€Ÿé€šé“  ä½¿ç”¨å¿«é€Ÿé€šé“å‡ºå…¥å¢ƒ19å›½ä¸»è¦æœºåœºä¸å†éœ€è¦æŽ’é•¿é¾™  é«˜è¾¾5å¹´æœ‰æ•ˆæœŸ  å•†åŠ¡å¡å¯é«˜è¾¾5å¹´æœ‰æ•ˆæœŸã€‚æœŸé—´æ— éœ€æ›´æ–°ï¼Œæ— éœ€ç”³åŠžå…¥å¢ƒç­¾è¯ï¼Œå•†åŠ¡å¡å°±è¢«è§†ä¸ºå…¥å¢ƒç­¾è¯ã€‚èŠ‚çœæ—¶é—´é‡‘é’±  æ›´é•¿é€—ç•™æœŸ  æŒå¡è€…èŽ·å‡†å¤šæ¬¡å…¥å¢ƒ19ä¸ªä¼šå‘˜å›½ä½œçŸ­æœŸé€—ç•™æœŸé•¿è¾¾60è‡³90å¤©', 'Roodab9p1b1t1m7', '2018-12-06 04:54:20'),
(1655, 'Advantages of applying APEC Card:  NO VISA REQUIRED   19 countries no visa required especially China. Cardholders are saving the time of clearance at immigration counter as the entry pre-clearance has been given are printed on the cardâ€™s reverse.  FAST TRACK LANE   With Fast Track Lane NO MORE long queue at major airport of 19 countries.  UP TO FIVE (5) YEARS   The card has up to Five (5) years validity. No renewal needed for the period. No need to apply for a visa or entry permit, as the card is treated as such. Save cost and time of visa application.  LONGER STAY PERIOD   Cardholders are a', 'Roodab9p1b1t1m7', '2018-12-06 04:55:03'),
(1656, 'Manufactory & Exporter: Turmeric Powder Series Products, Taiwan Herbs Series, Tea Bag, 100% pure no added. For Infrad Ray Energy, Competitors Series Products.', 'Roodab9p1b1t1m8', '2018-12-07 03:41:46'),
(1657, 'INLIR INDUSTRIAL CORP.  No. 3-5, Ln. 112, Cuiping Rd., Dashe Dist., Kaohsiung City 815, Taiwan. Fax: 886-7-3531645, www.inlir.com.tw  Email: inlir.amywoo@msa.hinet.net , inlir.amywoo@gmail.com', 'Roodab9p1b1t1m8', '2018-12-07 03:46:00'),
(1658, 'Enquiry æŸ¥è¯¢: Amy Woo å·«å®œç¾Ž+886988304149', 'Roodab9p1b1t1m8', '2018-12-07 03:48:26'),
(1659, 'DeKofie  Instagram: @dekofie.id  Enquiryï¼š Mr. Handrian +6285649692740, +6282231078657', 'Roodab9p1b1t1m9', '2018-12-07 06:45:13'),
(1669, 'https://m.facebook.com/whatsapp.blast.marketing', 'Roodab9p1b1t1m7', '2018-12-11 02:05:15'),
(1668, 'Worldwide Number.1 FIRST-ClassðŸ¤–ðŸ¤–ðŸ¤– WHATSAPP LICENCE Blasting Software Please like my page also invite more people like my page here, 2 video-clips to be given away freeðŸ‘‡ðŸ‘‡ðŸ‘‡ https://m.facebook.com/whatsapp.blast.marketing ðŸ‘‹ Please share to other groups , share this link to other groups, they sure keen my licence software WORLD-class Top WhatsApp Blasting 100% genuineðŸ†ðŸ¥‡', 'Roodab9p1b1t1m7', '2018-12-11 02:03:35'),
(1674, 'Ø¬Ù‡Øª Ø§Ø±ØªØ¨Ø§Ø· Ø¨Ø§ Ø¨Ø§ØºØ¯Ø§Ø±ÛŒ Ø¨Ø§ ØªÙ„ÙÙ† Ø¯Ø±Ø¬ Ø´Ø¯Ù‡ ØªÙ…Ø§Ø³ Ø¨Ú¯ÛŒØ±ÛŒØ¯.', 'roodab1k9b3s1b', '2018-12-11 09:23:16'),
(1672, 'Ø¬Ù‡Øª Ø§Ø±ØªØ¨Ø§Ø· Ø¨Ø§ Ø¨Ø§ØºØ¯Ø§Ø±Ù‡Ø§ Ø±ÙˆÛŒ Ø¹Ú©Ø³ Ù…ÙˆØ±Ø¯ Ù†Ø¸Ø± Ú©Ù„ÛŒÚ© Ú©Ù†ÛŒØ¯.', 'roodab1k9b3d1', '2018-12-11 06:36:48'),
(1682, 'Ø¬Ù‡Øª Ø§Ø±ØªØ¨Ø§Ø· Ø¨Ø§ Ø¨Ø§ØºØ¯Ø§Ø± Ø¨Ø§ ØªÙ„ÙÙ† Ø¯Ø±Ø¬ Ø´Ø¯Ù‡ ØªÙ…Ø§Ø³ Ú¯ÛŒØ±ÛŒØ¯.', 'roodab1k9b3s1b1', '2018-12-13 08:27:31'),
(1683, 'Ø¬Ù‡Øª Ø§Ø±ØªØ¨Ø§Ø· Ø¨Ø§ Ø¨Ø§ØºØ¯Ø§Ø± Ø¨Ø§ ØªÙ„ÙÙ† Ø¯Ø±Ø¬ Ø´Ø¯Ù‡ ØªÙ…Ø§Ø³ Ú¯ÛŒØ±ÛŒØ¯.', 'roodab1k9b3s1b2', '2018-12-13 08:35:21'),
(1725, 'Ø¬Ù‡Øª Ú¯Ø±ÙØªÙ† ÙˆØ¨ Ø³Ø§ÛŒØª Ø³Ø±Ø¯Ø®Ø§Ù†Ù‡ Ø¨Ø§ Ø´Ù…Ø§Ø±Ù‡ ØªÙ„ÙÙ† Ø¯Ø±Ø¬ Ø´Ø¯Ù‡ ØªÙ…Ø§Ø³ Ø¨Ú¯ÛŒØ±ÛŒØ¯', 'roodab1k9b3s2', '2018-12-18 08:43:27'),
(1680, 'Ø¬Ù‡Øª Ø§Ø±ØªØ¨Ø§Ø· Ø¨Ø§Ø³Ø±Ø¯Ø®Ø§Ù†Ù‡ Ùˆ Ø¨Ø§ØºØ¯Ø§Ø±Ø§Ù† Ø¨Ø§ ØªÙ„ÙÙ† Ù‡Ø§ÛŒ Ø¯Ø±Ø¬ Ø´Ø¯Ù‡ ØªÙ…Ø§Ø³ Ø¨Ú¯ÛŒØ±ÛŒØ¯.', 'roodab1k9b3', '2018-12-12 12:34:18'),
(1728, 'Ø¬Ù‡Øª Ú¯Ø±ÙØªÙ† ÙˆØ¨ Ø³Ø§ÛŒØª Ø³Ø±Ø¯Ø®Ø§Ù†Ù‡ Ø¨Ø§ Ø´Ù…Ø§Ø±Ù‡ ØªÙ„ÙÙ† Ø¯Ø±Ø¬ Ø´Ø¯Ù‡ ØªÙ…Ø§Ø³ Ø¨Ú¯ÛŒØ±ÛŒØ¯', 'roodab1k9b3s3', '2018-12-18 08:48:51'),
(1684, 'Ø¬Ù‡Øª Ø§Ø¬Ø§Ø±Ù‡ Ù…ØºØ§Ø²Ù‡ Ø¨Ø§ ØªÙ„ÙÙ† Ø¯Ø±Ø¬ Ø´Ø¯Ù‡ ØªÙ…Ø§Ø³ Ø­Ø§ØµÙ„ ÙØ±Ù…Ø§ÛŒÛŒØ¯.', 'roodab3p1b1c1t1', '2018-12-15 05:33:31'),
(1685, 'Ø¹Ú©Ø³ Ù‡Ø§ÛŒ Ø³Ø±Ø¯ Ø®Ø§Ù†Ù‡ Ø±Ø§ Ù…ÛŒ ØªÙˆØ§Ù†ÛŒØ¯ Ø¯Ø± Ø§ÛŒÙ†Ø¬Ø§ Ù…Ù„Ø§Ø­Ø¸Ù‡ ÙØ±Ù…Ø§ÛŒÛŒØ¯.', 'roodab1k9b3sg', '2018-12-15 09:08:18'),
(1678, 'Chicken burger                         Rm3.50 Special chicken burger            Rm4.50 Double chicken burger            Rm6.00 Beef burger                               Rm3.50 Special beef burger                  Rm4.50 Double beef burger                  Rm6.00 Hot dog                                      RM3.50 Double hot dog                         RM6.00 Special hot dog                         RM4.50 Egg burger                                RM3.00 Add on cheese                          RM1.50', 'Roodab9p1b1t1m4', '2018-12-11 15:27:13'),
(1723, 'Ø¬Ù‡Øª Ú¯Ø±ÙØªÙ† ÙˆØ¨ Ø³Ø§ÛŒØª Ø³Ø±Ø¯Ø®Ø§Ù†Ù‡ Ø¨Ø§ ØªÙ„ÙÙ† Ø¯Ø±Ø¬ Ø´Ø¯Ù‡ ØªÙ…Ø§Ø³ Ø¨Ú¯ÛŒØ±ÛŒØ¯', 'roodab1k9b3s', '2018-12-18 08:08:09'),
(1692, 'Ù…Ù‡Ù†Ø¯Ø³ÛŒÙ† Ú©Ø´Ø§ÙˆØ±Ø²ÛŒ Ø¬Ù‡Øª Ú¯Ø±ÙØªÙ† Ø¯ÙØªØ± Ø¢Ù†Ù„Ø§ÛŒÙ† Ù…Ù‡Ù†Ø¯Ø³ÛŒ Ø®ÙˆØ¯ Ø¨Ø§ Ø´Ù…Ø§Ø±Ù‡ Ø¯Ø±Ø¬ Ø´Ø¯Ù‡ ØªÙ…Ø§Ø³ Ø¨Ú¯ÛŒØ±Ù†Ø¯', 'roodab1k9b3m', '2018-12-16 07:43:41'),
(1752, 'Ù†Ø´Ø±Ú†ØªØ±Ø¯Ø§Ù†Ø´ØŒ Ù†Ø§Ø´Ø± ØªØ®ØµØµÛŒ Ø­Ù‚ÙˆÙ‚ Ø§ÛŒØ±Ø§Ù†', 'hoghoghkadeh1p1b2b1', '2018-12-23 10:10:47'),
(1751, 'Ø¬Ù‡Øª Ø§Ø±ØªØ¨Ø§Ø· Ø¨Ø§ Ø¨Ø§ØºØ¯Ø§Ø± Ø¨Ø§ ØªÙ„ÙÙ† Ø¯Ø±Ø¬ Ø´Ø¯Ù‡ ØªÙ…Ø§Ø³ Ú¯ÛŒØ±ÛŒØ¯.', 'roodab1k9b3s1b3', '2018-12-19 07:24:44'),
(1720, 'Ø¬Ù‡Øª Ú¯Ø±ÙØªÙ† ÙˆØ¨ Ø³Ø§ÛŒØª Ù…Ù‡Ù†Ø¯Ø³ÛŒ Ø¨Ø§ Ø´Ù…Ø§Ø±Ù‡ ØªÙ„ÙÙ† Ù…ÙˆØ¬ÙˆØ¯ ØªÙ…Ø§Ø³ Ø¨Ú¯ÛŒØ±ÛŒØ¯', 'roodab1k9b3m2', '2018-12-17 13:55:01'),
(1691, 'ØªÙ‡Ø±Ø§Ù†ØŒ Ø§Ù†Ù‚Ù„Ø§Ø¨ØŒ Ø®ÛŒØ§Ø¨Ø§Ù† ÙØ®Ø± Ø±Ø§Ø²ÛŒØŒ Ù¾Ù„Ø§Ú©27ØŒ Ø³Ø§Ø®ØªÙ…Ø§Ù† Ú†ØªØ±Ø¯Ø§Ù†Ø´', 'roodab1k9b3', '2018-12-15 13:34:11'),
(1693, 'Ø¬Ù‡Øª Ø§Ø±ØªØ¨Ø§Ø· Ø¨Ø§ Ù…Ù‡Ù†Ø¯Ø³ÛŒÙ† Ø¨Ø± Ø±ÙˆÛŒ Ø¹Ú©Ø³ Ú©Ù„ÛŒÚ© Ú©Ù†ÛŒØ¯', 'roodab1k9b3m', '2018-12-16 07:44:31'),
(1694, 'ØªÙ‡Ø±Ø§Ù†ØŒ Ø§Ù†Ù‚Ù„Ø§Ø¨ØŒ Ø®ÛŒØ§Ø¨Ø§Ù† ÙØ®Ø± Ø±Ø§Ø²ÛŒØŒ Ù¾Ù„Ø§Ú©27ØŒ Ø³Ø§Ø®ØªÙ…Ø§Ù† Ú†ØªØ±Ø¯Ø§Ù†Ø´', 'roodab1k9b3m', '2018-12-16 07:46:13'),
(1695, 'ØªÙ‡Ø±Ø§Ù†ØŒ Ø§Ù†Ù‚Ù„Ø§Ø¨ØŒ Ø®ÛŒØ§Ø¨Ø§Ù† ÙØ®Ø± Ø±Ø§Ø²ÛŒØŒ Ù¾Ù„Ø§Ú©27ØŒ Ø³Ø§Ø®ØªÙ…Ø§Ù† Ú†ØªØ±Ø¯Ø§Ù†Ø´', 'roodab1k9b3s', '2018-12-16 08:00:37'),
(1696, 'ØªÙ‡Ø±Ø§Ù†ØŒ Ø§Ù†Ù‚Ù„Ø§Ø¨ØŒ Ø®ÛŒØ§Ø¨Ø§Ù† ÙØ®Ø± Ø±Ø§Ø²ÛŒØŒ Ù¾Ù„Ø§Ú©27ØŒ Ø³Ø§Ø®ØªÙ…Ø§Ù† Ú†ØªØ±Ø¯Ø§Ù†Ø´', 'roodab1k9b3d1', '2018-12-16 08:47:45'),
(1730, 'Ø¬Ù‡Øª Ø§Ø±ØªØ¨Ø§Ø· Ø¨Ø§ Ú©Ø´Ø§ÙˆØ±Ø²Ø§Ù† Ø±ÙˆÛŒ Ø¹Ú©Ø³ Ø¢Ù† Ù‡Ø§ Ú©Ù„ÛŒÚ© Ú©Ù†ÛŒØ¯', 'roodab1k9b3d1k', '2018-12-18 09:04:01'),
(1722, 'Ø¬Ù‡Øª Ø§Ø±ØªØ¨Ø§Ø· Ø¨Ø§ Ø¨Ø§ØºØ¯Ø§Ø±Ø§Ù† Ø³Ø±Ø¯Ø®Ø§Ù†Ù‡ Ø¨Ø± Ø±ÙˆÛŒ Ø¹Ú©Ø³ Ú©Ù„ÛŒÚ© Ú©Ù†ÛŒØ¯ ', 'roodab1k9b3s1', '2018-12-18 07:33:30'),
(1699, 'ØªÙ‡Ø±Ø§Ù†ØŒ Ø§Ù†Ù‚Ù„Ø§Ø¨ØŒ Ø®ÛŒØ§Ø¨Ø§Ù† ÙØ®Ø± Ø±Ø§Ø²ÛŒØŒ Ù¾Ù„Ø§Ú©27ØŒ Ø³Ø§Ø®ØªÙ…Ø§Ù† Ú†ØªØ±Ø¯Ø§Ù†Ø´', 'roodab1k9b3d1k', '2018-12-16 09:01:50'),
(1700, 'Services :1) UV FLATBED PRINTING- direct print on tiles or woods', 'Roodab9p1b1t1m10', '2018-12-17 03:13:27'),
(1701, '2) Van wrapping', 'Roodab9p1b1t1m10', '2018-12-17 03:13:46'),
(1702, '3) Hoarding', 'Roodab9p1b1t1m10', '2018-12-17 03:14:05'),
(1703, '4) Vinyl Lift Advertisement Sticker', 'Roodab9p1b1t1m10', '2018-12-17 03:14:55'),
(1704, '5) Backdrop Display System ', 'Roodab9p1b1t1m10', '2018-12-17 03:15:29'),
(1705, 'About Us Advertising and promotion are crucial to todayâ€™s market. They will determined the successfulness of the marketing plan. As a result, the important role they play are more concerned in this competitive market.  Color Dot Com S/B is incorporated to meet customerâ€™s expectations and requirements to achieve brilliant results. We have our, passion, highly energy and experience marketing and production teams to work with you to provide the highest quality, innovative and market relevant product and services profitably in a competitive advertising and design environment.  As a service org', 'Roodab9p1b1t1m10', '2018-12-17 03:15:54'),
(1708, 'Official Functions, Project Launching, Family Day, Sport Event, Wedding Reception. ', 'Roodab9p1b1t1m11', '2018-12-17 08:47:13'),
(1709, 'Annual Dinner, Catering Event, Canopies, Tent, Table & Chair, Stage, Balloons. ', 'Roodab9p1b1t1m11', '2018-12-17 08:48:52'),
(1707, 'Color Dot Com Sdn Bhd 21, Jalan PDR 6, Kawasan Perniagaan Desa Ria, 43300 Seri Kembangan, Selangor, Malaysia.	  +603-8961 6211  +603-8961 0633  c2design06@yahoo.com  c2design066@gmail.com http://www.colordotcom.com', 'Roodab9p1b1t1m10', '2018-12-17 03:18:02'),
(1710, 'P. A. System, Mobile Toilet & Etc, Garden Table, Stool and High Bar Table, Cooling System, Platform. ', 'Roodab9p1b1t1m11', '2018-12-17 08:50:37'),
(1711, 'Rental: We Cater & Organise', 'Roodab9p1b1t1m11', '2018-12-17 08:51:25');
INSERT INTO `user_services` (`id`, `service_name`, `user_id`, `created_at`) VALUES
(1712, 'Ø·Ø±Ø§Ø­ Ú¯Ø±Ø§ÙÛŒÚ© Ùˆ Ù…Ø¯ÛŒØ± Ù‡Ù†Ø±ÛŒ', 'roodab3p1b1c1t4m1', '2018-12-17 08:54:01'),
(1713, 'Ø·Ø±Ø§Ø­ Ú¯Ø±Ø§ÙÛŒÚ©ØŒ Ø·Ø±Ø§Ø­ Ø±Ø§Ø¨Ø· Ú©Ø§Ø±Ø¨Ø±ÛŒØŒ Ù…ÙˆØ´Ù† Ú¯Ø±Ø§ÙÛŒØ³Øª ØŒ Ø¢Ø´Ù†Ø§ Ø¨Ù‡ ØªØ¨Ù„ÛŒØºØ§Øª Ø¯ÛŒØ¬ÛŒØªØ§Ù„ Ùˆ Ø¢Ù†Ù„Ø§ÛŒÙ† Ùˆ...', 'roodab3p1b1c1t4m1', '2018-12-17 08:55:54'),
(1714, 'Top Tent Sdn Bhd  No. 1, London Seri long 59/2/KS2, Perindustrian Klang Jaya, 41200 Klang, Selangor. Tel: +603 5166 9766  Fax:+603 5166 8766  E-mail: gan@gcwcanopy.com.my  www.gcwcanopy.com.my', 'Roodab9p1b1t1m11', '2018-12-17 08:56:30'),
(1715, 'Ø¨Ø±Ø§ÛŒ Ø§Ø±ØªØ¨Ø§Ø· Ùˆ Ø³ÙØ§Ø±Ø´ Ú©Ø§Ø± Ùˆ Ù‡Ù…Ú†Ù†ÛŒÙ† Ø¯Ø±Ø®ÙˆØ§Ø³Øª Ø¢Ù…ÙˆØ²Ø´ Ø¨Ø§ ØªÙ„ÙÙ† Ø¯Ø±Ø¬ Ø´Ø¯Ù‡ ØªÙ…Ø§Ø³ Ø¨Ú¯ÛŒØ±ÛŒØ¯.', 'roodab3p1b1c1t4m1', '2018-12-17 08:57:08'),
(1716, 'Enquiry : Mr. Gan +6012-213 7327', 'Roodab9p1b1t1m11', '2018-12-17 08:57:25'),
(1717, 'Klang Canopy Sdn Bhd  E-mail: admin@klangcanopy.my  Website: http://klangcanopy.my  ', 'Roodab9p1b1t1m11', '2018-12-17 09:07:00'),
(1718, 'Grab one Area Center and learn to make RM3,000 per week! ', 'Roodab9p1b2', '2018-12-17 12:08:25'),
(1719, 'You can advertise your businesses in my Area digital mall.  Enquiry : Lisa +60163912432', 'Roodab9p1b2', '2018-12-17 12:10:01'),
(1721, 'Ø§Ø±ØªØ¨Ø§Ø· Ø¨Ø±Ù‚Ø±Ø§Ø±Ú©Ù†ÛŒØ¯ Roodabiran2 Ø¨Ø§ Ø¢ÛŒ Ø¯ÛŒ ØªÙ„Ú¯Ø±Ø§Ù… ', 'roodab1k9b3m2', '2018-12-17 13:56:49'),
(1724, 'Ø¬Ù‡Øª Ú¯Ø±ÙØªÙ† ÙˆØ¨ Ø³Ø§ÛŒØª Ø³Ø±Ø¯Ø®Ø§Ù†Ù‡ Ø¨Ø§ Ø´Ù…Ø§Ø±Ù‡ Ø¯Ø±Ø¬ Ø´Ø¯Ù‡ ØªÙ…Ø§Ø³ Ø¨Ú¯ÛŒØ±ÛŒØ¯', 'roodab1k9b3s2', '2018-12-18 08:27:25'),
(1726, 'Ø¬Ù‡Øª Ú¯Ø±ÙØªÙ† ÙˆØ¨ Ø³Ø§ÛŒØª Ø³Ø±Ø¯Ø®Ø§Ù†Ù‡ Ø¨Ø§ Ø´Ù…Ø§Ø±Ù‡ ØªÙ„ÙÙ† Ø¯Ø±Ø¬ Ø´Ø¯Ù‡ ØªÙ…Ø§Ø³ Ø¨Ú¯ÛŒØ±ÛŒØ¯', 'roodab1k9b3s2', '2018-12-18 08:44:49'),
(1727, 'Ø§Ø±ØªØ¨Ø§Ø· Ø¨Ø±Ù‚Ø±Ø§Ø± Ú©Ù†ÛŒØ¯ Roodabiran2 Ø¨Ø§ Ø¢ÛŒ Ø¯ÛŒ ØªÙ„Ú¯Ø±Ø§Ù… ', 'roodab1k9b3s2', '2018-12-18 08:45:19'),
(1729, 'Ø§Ø±ØªØ¨Ø§Ø· Ø¨Ø±Ù‚Ø±Ø§Ø± Ú©Ù†ÛŒØ¯ Roodabiran2 Ø¨Ø§ Ø¢ÛŒ Ø¯ÛŒ ØªÙ„Ú¯Ø±Ø§Ù… ', 'roodab1k9b3s3', '2018-12-18 08:49:29'),
(1731, 'Ø·Ø±Ø§Ø­ Ú¯Ø±Ø§ÙÛŒÚ© Ø·Ø±Ø§Ø­ Ø±Ø§Ø¨Ø· Ú©Ø§Ø±Ø¨Ø±ÛŒ(ui (Ù…ÙˆØ´Ù† Ú¯Ø±Ø§ÙÛŒØ³Øª Ø¢Ø´Ù†Ø§ Ø¨Ù‡ ØªØ¨Ù„ÛŒØºØ§Øª Ø¯ÛŒØ¬ÛŒØªØ§Ù„ Ùˆ Ø¢Ù†Ù„Ø§ÛŒÙ† Ø¢Ø´Ù†Ø§ÛŒÛŒ Ø¨Ø§ Ø¨Ø±Ù†Ø¯ÛŒÙ†Ú¯ Ùˆ Ù…Ø¯ÛŒØ±ÛŒØª ØªØ¨Ù„ÛŒØºØ§Øª Ø¢Ø´Ù†Ø§ Ø¨Ù‡ Ø§Ù…ÙˆØ± Ú†Ø§Ù¾ Ø¢Ø´Ù†Ø§ Ø¨Ù‡ Ø¹Ú©Ø§Ø³ÛŒ Ø®Ø¨Ø±ÛŒ Ùˆ ØµÙ†Ø¹ØªÛŒ', 'roodab3p1b1c1t4m2', '2018-12-18 09:32:01'),
(1732, 'Ø·Ù€Ù€Ø±Ø§Ø­ Ú¯Ù€Ù€Ø±Ø§ÙÛŒÚ© Ùˆ Ù…Ø¯ÛŒÙ€Ù€Ù€Ø± Ù‡Ù†Ù€Ù€Ù€Ø±ÛŒ', 'roodab3p1b1c1t4m2', '2018-12-18 09:32:18'),
(1733, 'Ø¬Ù‡Øª Ø§Ø±ØªØ¨Ø§Ø· Ø¨Ø§ Ú©Ø´Ø§ÙˆØ±Ø² Ø¨Ø§ Ø´Ù…Ø§Ø±Ù‡ Ø¯Ø±Ø¬ Ø´Ø¯Ù‡ ØªÙ…Ø§Ø³ Ø¨Ú¯ÛŒØ±ÛŒØ¯', 'roodab1k9b3d1k1', '2018-12-18 12:51:16'),
(1734, 'CHY Travel & Tours (M) Sdn Bhd', 'Roodab9p1b1t1m12', '2018-12-18 13:06:45'),
(1735, 'Ø¬Ù‡Øª Ø§Ø±ØªØ¨Ø§Ø· Ø¨Ø§ Ú©Ø´Ø§ÙˆØ±Ø² Ø¨Ø§ Ø´Ù…Ø§Ø±Ù‡ Ø¯Ø±Ø¬ Ø´Ø¯Ù‡ ØªÙ…Ø§Ø³ Ø¨Ú¯ÛŒØ±ÛŒØ¯', 'roodab1k9b3d1k3', '2018-12-18 13:39:45'),
(1736, 'è¯šæ„æ—…æ¸¸ï¼ˆé©¬ï¼‰æœ‰é™å…¬å¸', 'Roodab9p1b1t1m12', '2018-12-18 13:41:11'),
(1737, 'æŸ¥è¯¢: è´µå¦ƒ +6016-9975033', 'Roodab9p1b1t1m12', '2018-12-18 13:43:11'),
(1991, 'A Top Station Enterprise (M) Sdn Bhd    15-1 & 2, Jalan USJ 9/1, Regalia Business Centre, 47620 Subang Jaya, Selangor', 'Roodab9p1b1t1m13', '2019-02-05 13:57:26'),
(1739, 'Enquiry æŸ¥è¯¢: PK Steven +60123161328', 'Roodab9p1b1t1m13', '2018-12-19 02:34:23'),
(1740, 'CKD Cabinet Design ( Luxurious valuemade affordable for you!)', 'Roodab9p1b1t1m18', '2018-12-19 06:24:01'),
(1741, 'Enquiry æŸ¥è¯¢: Danny +60188717848', 'Roodab9p1b1t1m18', '2018-12-19 06:24:57'),
(1742, 'FB: ckdcabinetdesign,   E-mail: ckdcabinetdesign@gmail.com', 'Roodab9p1b1t1m18', '2018-12-19 06:26:21'),
(1743, 'ðŸ‘ Free Consultation', 'Roodab9p1b1t1m18', '2018-12-19 06:29:39'),
(1744, 'ðŸ‘ Free Quotation', 'Roodab9p1b1t1m18', '2018-12-19 06:30:03'),
(1745, 'ðŸ‘ Free Site Measurement', 'Roodab9p1b1t1m18', '2018-12-19 06:30:51'),
(1746, 'ðŸ‘ Space Planning', 'Roodab9p1b1t1m18', '2018-12-19 06:31:35'),
(1747, 'ðŸ‘ Custom Made Cabinet', 'Roodab9p1b1t1m18', '2018-12-19 06:32:11'),
(1748, 'ðŸ‘ Professional Cabinet Installer', 'Roodab9p1b1t1m18', '2018-12-19 06:32:57'),
(1749, 'ðŸ‘ Clean & Fast Installation', 'Roodab9p1b1t1m18', '2018-12-19 06:33:33'),
(1753, '...ÙØ±ÙˆØ´Ú¯Ø§Ù‡ Ú©ØªØ§Ø¨ Ù‡Ø§ÛŒ Ù…ÙˆÙÙ‚ÛŒØªØŒ Ø«Ø±ÙˆØªØŒ Ø±Ø´Ø¯ ÙØ±Ø¯ÛŒ Ùˆ', 'roodab3p1b1c1t1m2', '2018-12-26 05:38:27'),
(1754, 'Ø§Ø±Ø³Ø§Ù„ Ø¨Ù‡ Ø³Ø±Ø§Ø³Ø± Ø§ÛŒØ±Ø§Ù†', 'roodab3p1b1c1t1m2', '2018-12-26 05:39:47'),
(1755, 'Ø§Ø±Ø³Ø§Ù„ Ø¨Ù‡ Ø³Ø±Ø§Ø³Ø± Ø§ÛŒØ±Ø§Ù†', 'roodab3p1b1c1t1m2', '2018-12-26 05:39:54'),
(1756, 'Ù…Ø±Ø§Ø¬Ø¹Ù‡ Ú©Ù†ÛŒØ¯ https://t.me/Gozide_Kotobe_MovafaghiatØ¨Ø±Ø§ÛŒ Ù…Ø±Ø§Ø¬Ø¹Ù‡ Ø¨Ù‡ Ú©Ø§Ù†Ø§Ù„ ØªÙ„Ú¯Ø±Ø§Ù… Ø¨Ù‡ Ø¢Ø¯Ø±Ø³ ', 'roodab3p1b1c1t1m2', '2018-12-26 05:46:41'),
(1757, 'ÙØ±ÙˆØ´Ú¯Ø§Ù‡ Ú©ØªØ§Ø¨ Ù‡Ø§ÛŒ Ù…ÙˆÙÙ‚ÛŒØªØŒ Ø«Ø±ÙˆØª Ùˆ Ø±Ø´Ø¯ ÙØ±Ø¯ÛŒ', 'roodab3p1b1c1t1m2', '2018-12-26 06:13:16'),
(1758, 'Ø§Ø±Ø³Ø§Ù„ Ø¨Ù‡ Ø³Ø±Ø§Ø³Ø± Ø§ÛŒØ±Ø§Ù†', 'roodab3p1b1c1t1m2', '2018-12-26 06:13:39'),
(1759, ' Ù…Ø±Ø§Ø¬Ø¹Ù‡ Ú©Ù†ÛŒØ¯https://t.me/Gozide_Kotobe_MovafaghiatØ¨Ø±Ø§ÛŒ Ø¹Ø¶ÙˆÛŒØª Ø¯Ø± Ú©Ø§Ù†Ø§Ù„ ØªÙ„Ú¯Ø±Ø§Ù… Ø¨Ù‡ Ø¢Ø¯Ø±Ø³ ', 'roodab3p1b1c1t1m2', '2018-12-26 06:14:48'),
(1760, 'ÙØ±ÙˆØ´Ú¯Ø§Ù‡ Ú©ØªØ§Ø¨ Ù‡Ø§ÛŒ Ù…ÙˆÙÙ‚ÛŒØªØŒ Ø«Ø±ÙˆØª Ùˆ Ø±Ø´Ø¯ ÙØ±Ø¯ÛŒ', 'roodab3p1b1c1t1m2', '2018-12-26 06:24:18'),
(1761, 'Ø§Ø±Ø³Ø§Ù„ Ø¨Ù‡ Ø³Ø±Ø§Ø³Ø± Ø§ÛŒØ±Ø§Ù†', 'roodab3p1b1c1t1m2', '2018-12-26 06:24:24'),
(1762, 'Ù…Ø±Ø§Ø¬Ø¹Ù‡ Ú©Ù†ÛŒØ¯ https://t.me/Gozide_Kotobe_MovafaghiatØ¨Ø±Ø§ÛŒ Ø¹Ø¶ÙˆÛŒØª Ø¯Ø± Ú©Ø§Ù†Ø§Ù„ ØªÙ„Ú¯Ø±Ø§Ù… Ø¨Ù‡ Ø¢Ø¯Ø±Ø³ ', 'roodab3p1b1c1t1m2', '2018-12-26 06:25:07'),
(1763, 'ÙØ±ÙˆØ´Ú¯Ø§Ù‡ Ú©ØªØ§Ø¨ Ù‡Ø§ÛŒ Ù…ÙˆÙÙ‚ÛŒØªØŒ Ø«Ø±ÙˆØª Ùˆ Ø±Ø´Ø¯ ÙØ±Ø¯ÛŒ', 'roodab3p1b1c1t1m2', '2018-12-26 06:29:06'),
(1764, 'Ø§Ø±Ø³Ø§Ù„ Ø¨Ù‡ Ø³Ø±Ø§Ø³Ø± Ø§ÛŒØ±Ø§Ù†', 'roodab3p1b1c1t1m2', '2018-12-26 06:29:11'),
(1765, ' Ù…Ø±Ø§Ø¬Ø¹Ù‡ Ú©Ù†ÛŒØ¯https://t.me/Gozide_Kotobe_Movafaghiat Ø¨Ø±Ø§ÛŒ Ø¹Ø¶ÙˆÛŒØª Ø¯Ø± Ú©Ø§Ù†Ø§Ù„ ØªÙ„Ú¯Ø±Ø§Ù… Ø¨Ù‡ Ø¢Ø¯Ø±Ø³ ', 'roodab3p1b1c1t1m2', '2018-12-26 06:30:22'),
(1766, 'Ø¢Ø¯Ø±Ø³ Ù¾ÛŒØ¬ Ø§ÛŒÙ†Ø³ØªØ§ Ú©ØªØ§Ø¨ Ù…ÙˆÙÙ‚ÛŒØª  https://www.instagram.com/gozide_kotobe_movafaghiat/?hl=en', 'roodab3p1b1c1t1m2', '2018-12-26 06:31:37'),
(1767, 'Ù†Ø´Ø±Ú†ØªØ±Ø¯Ø§Ù†Ø´ØŒ Ù†Ø§Ø´Ø± ØªØ®ØµØµÛŒ Ø­Ù‚ÙˆÙ‚ Ø§ÛŒØ±Ø§Ù†', 'hoghoghkadeh1p1b2b2', '2018-12-26 07:06:23'),
(1880, 'Ø¨Ø§Ø²ÛŒØ§Ø¨ÛŒ Ø§Ø·Ù„Ø§Ø¹Ø§Øª', 'roodab3p1b2c1t2', '2019-01-15 12:34:14'),
(1789, 'Ø§Ø±Ø§Ø¦Ù‡ Ø¨Ø±ØªØ±ÛŒÙ† Ø®Ø¯Ù…Ø§Øª Ø­Ù‚ÙˆÙ‚ÛŒ', 'chatredanesh3', '2018-12-29 09:51:16'),
(1806, 'Ø±ÙˆØ¯Ø§Ø¨', 'roodab3p1b1c1t4', '2018-12-31 08:51:47'),
(1796, 'Ø¬Ù‡Øª Ø§Ø¬Ø§Ø±Ù‡ Ù…ØºØ§Ø²Ù‡ Ø¨Ø± Ø±ÙˆÛŒ Ø¹Ú©Ø³ Ú©Ù„ÛŒÚ© Ú©Ù†ÛŒØ¯', 'roodab3p1b1c1t7', '2018-12-30 13:15:29'),
(1793, 'ØªÙ‡Ø±Ø§Ù†ØŒ Ø§Ù†Ù‚Ù„Ø§Ø¨ØŒ Ø®ÛŒØ§Ø¨Ø§Ù† ÙØ®Ø± Ø±Ø§Ø²ÛŒØŒ Ù¾Ù„Ø§Ú©27ØŒ Ø³Ø§Ø®ØªÙ…Ø§Ù† Ú†ØªØ±Ø¯Ø§Ù†Ø´', 'roodab3p1b1c1t7', '2018-12-30 10:40:59'),
(1820, 'Ø¬Ù‡Øª ØªÙ‡ÛŒÙ‡ Ø¨Ø³ØªÙ‡ Ù‡Ø§ Ø¨Ø§ Ø´Ù…Ø§Ø±Ù‡ ØªÙ„ÙÙ† Ø¯Ø±Ø¬ Ø´Ø¯Ù‡ Ø­Ø§ØµÙ„ ÙØ±Ù…Ø§ÛŒÛŒØ¯', 'hoghoghkadeh1p1b1b1', '2019-01-05 07:05:43'),
(1779, 'Ù†Ø´Ø±Ú†ØªØ±Ø¯Ø§Ù†Ø´ØŒ Ù†Ø§Ø´Ø± ØªØ®ØµØµÛŒ Ø­Ù‚ÙˆÙ‚ Ø§ÛŒØ±Ø§Ù†', 'hoghoghkadeh1p1b2b3', '2018-12-26 08:25:01'),
(1780, 'You can advertise your website here. Enquiry : Joshua +60108323456', 'Pavilion', '2018-12-26 09:45:45'),
(1781, 'You can advertise your businesses here. Enquiry : Joshua +60108323456', 'TimesSquareKL', '2018-12-26 11:45:00'),
(1782, 'Ù†Ø´Ø±Ú†ØªØ±Ø¯Ø§Ù†Ø´ØŒ Ù†Ø§Ø´Ø± ØªØ®ØµØµÛŒ Ø­Ù‚ÙˆÙ‚ Ø§ÛŒØ±Ø§Ù†', 'hoghoghkadeh1p1b2b4', '2018-12-26 11:58:38'),
(1783, 'You can advertise your businesses here. Enquiry : Joshua +60108323456', 'TimesSquareNYC', '2018-12-26 13:08:28'),
(1784, 'You can advertise your businesses here. Enquiry : Joshua +60108323456', 'TheGardens', '2018-12-27 06:08:02'),
(1785, 'You can advertise your businesses here. Enquiry : Joshua +60108323456', 'MidValleyKL', '2018-12-27 06:20:36'),
(1786, 'You can advertise your businesses here. Enquiry : Joshua +60108323456', 'TimesSquareklLGf', '2018-12-28 08:53:32'),
(1787, 'You can advertise your businesses here. Enquiry : Joshua +60108323456', 'TimesSquareklGf', '2018-12-28 09:01:55'),
(1788, 'You can advertise your businesses here. Enquiry : Joshua +60108323456', 'TimesSquarenycLGf', '2018-12-28 09:35:09'),
(1841, 'ØªÙ‡Ø±Ø§Ù†ØŒ Ø§Ù†Ù‚Ù„Ø§Ø¨ØŒ Ø®ÛŒØ§Ø¨Ø§Ù† ÙØ®Ø± Ø±Ø§Ø²ÛŒØŒ Ù¾Ù„Ø§Ú©27ØŒ Ø³Ø§Ø®ØªÙ…Ø§Ù† Ú†ØªØ±Ø¯Ø§Ù†Ø´', 'roodabiran', '2019-01-07 07:44:47'),
(1798, 'You can advertise your businesses here. Enquiry : Joshua +60108323456', 'Lot10Gf', '2018-12-31 06:42:19'),
(1795, 'ØªÙ‡Ø±Ø§Ù†ØŒ Ø§Ù†Ù‚Ù„Ø§Ø¨ØŒ Ø®ÛŒØ§Ø¨Ø§Ù† ÙØ®Ø± Ø±Ø§Ø²ÛŒØŒ Ù¾Ù„Ø§Ú©27ØŒ Ø³Ø§Ø®ØªÙ…Ø§Ù† Ú†ØªØ±Ø¯Ø§Ù†Ø´', 'roodab3p1b1c1t7m', '2018-12-30 11:20:45'),
(1799, 'You can advertise your businesses here. Enquiry : Joshua +60108323456', 'Lot101f', '2018-12-31 07:00:04'),
(1800, 'You can advertise your businesses here. Enquiry : Joshua +60108323456', 'PavilionKLB1f', '2018-12-31 07:28:22'),
(1801, 'You can advertise your businesses here. Enquiry : Joshua +60108323456', 'PavilionKL1f', '2018-12-31 07:35:09'),
(1802, 'You can advertise your businesses here. Enquiry : Joshua +60108323456', 'MidValleyKLGf', '2018-12-31 08:00:52'),
(1803, 'You can advertise your businesses here. Enquiry : Joshua +60108323456', 'MidValleyKLLGf', '2018-12-31 08:07:03'),
(1804, 'You can advertise your businesses here. Enquiry : Joshua +60108323456', 'TheGardensLGf', '2018-12-31 08:24:19'),
(1805, 'You can advertise your businesses here. Enquiry : Joshua +60108323456', 'TheGardensGf', '2018-12-31 08:30:38'),
(1809, 'Ù…Ø¹ØªØ¨Ø± ØªØ±ÛŒÙ† Ù…Ø±Ø¬Ø¹ Ø¨Ø±Ú¯Ø²Ø§Ø±ÛŒ Ú©Ù„Ø§Ø³Ø›Ø¢Ø²Ù…ÙˆÙ† Ø›Ú©ØªØ§Ø¨ Ø¯Ø± Ø§Ø±Ø§Ú©', 'chatredanesh2', '2018-12-31 14:34:29'),
(1808, 'Ù…Ø¹ØªØ¨Ø± ØªØ±ÛŒÙ† Ù…Ø±Ø¬Ø¹ Ø¨Ø±Ú¯Ø²Ø§Ø±ÛŒ Ú©Ù„Ø§Ø³Ø›Ø¢Ø²Ù…ÙˆÙ† Ø›Ú©ØªØ§Ø¨', 'chatredanesh2', '2018-12-31 13:25:31'),
(1818, 'Ø®Ø¯Ø§ÙˆÙ†Ø¯Ø§ Ø³Ù¾Ø§Ø³ Ú¯Ø°Ø§Ø±Ù…', 'roodab3p1b1c1t7m2', '2019-01-03 17:30:40'),
(1859, 'Address: 98, Jalan Cerdas, Taman Connaught, Cheras, 56100 Kuala Lumpur', 'Roodab9p1b1t1m16', '2019-01-11 09:18:31'),
(1821, 'ØªÙ‡Ø±Ø§Ù†ØŒ Ø§Ù†Ù‚Ù„Ø§Ø¨ØŒ Ø®ÛŒØ§Ø¨Ø§Ù† ÙØ®Ø± Ø±Ø§Ø²ÛŒØŒ Ù¾Ù„Ø§Ú©27ØŒ Ø³Ø§Ø®ØªÙ…Ø§Ù† Ú†ØªØ±Ø¯Ø§Ù†Ø´', 'hoghoghkadeh1p1b1b1', '2019-01-05 07:05:48'),
(1822, 'Ø¬Ù‡Øª ØªÙ‡ÛŒÙ‡ Ø¨Ø³ØªÙ‡ Ù‡Ø§ Ø¨Ø§ Ø´Ù…Ø§Ø±Ù‡ ØªÙ„ÙÙ† Ø¯Ø±Ø¬ Ø´Ø¯Ù‡ ØªÙ…Ø§Ø³ Ø¨Ú¯ÛŒØ±ÛŒØ¯', 'hoghoghkadeh1p1b1b2', '2019-01-05 07:12:44'),
(1823, 'ØªÙ‡Ø±Ø§Ù†ØŒ Ø§Ù†Ù‚Ù„Ø§Ø¨ØŒ Ø®ÛŒØ§Ø¨Ø§Ù† ÙØ®Ø± Ø±Ø§Ø²ÛŒØŒ Ù¾Ù„Ø§Ú©27ØŒ Ø³Ø§Ø®ØªÙ…Ø§Ù† Ú†ØªØ±Ø¯Ø§Ù†Ø´', 'hoghoghkadeh1p1b1b2', '2019-01-05 07:22:08'),
(1824, 'Ø¬Ù‡Øª ØªÙ‡ÛŒÙ‡ Ø¨Ø³ØªÙ‡ Ù‡Ø§ Ø¨Ø§ Ø´Ù…Ø§Ø±Ù‡ ØªÙ„ÙÙ† Ø¯Ø±Ø¬ Ø´Ø¯Ù‡ ØªÙ…Ø§Ø³ Ø¨Ú¯ÛŒØ±ÛŒØ¯', 'hoghoghkadeh1p1b1b3', '2019-01-05 07:24:14'),
(1825, 'ØªÙ‡Ø±Ø§Ù†ØŒ Ø§Ù†Ù‚Ù„Ø§Ø¨ØŒ Ø®ÛŒØ§Ø¨Ø§Ù† ÙØ®Ø± Ø±Ø§Ø²ÛŒØŒ Ù¾Ù„Ø§Ú©27ØŒ Ø³Ø§Ø®ØªÙ…Ø§Ù† Ú†ØªØ±Ø¯Ø§Ù†Ø´', 'hoghoghkadeh1p1b1b3', '2019-01-05 07:24:17'),
(1826, 'Ø¬Ù‡Øª ØªÙ‡ÛŒÙ‡ Ø¨Ø³ØªÙ‡ Ù‡Ø§ Ø¨Ø§ Ø´Ù…Ø§Ø±Ù‡ ØªÙ„ÙÙ† Ø¯Ø±Ø¬ Ø´Ø¯Ù‡ ØªÙ…Ø§Ø³ Ø¨Ú¯ÛŒØ±ÛŒØ¯', 'hoghoghkadeh1p1b1b4', '2019-01-05 07:26:01'),
(1827, 'ØªÙ‡Ø±Ø§Ù†ØŒ Ø§Ù†Ù‚Ù„Ø§Ø¨ØŒ Ø®ÛŒØ§Ø¨Ø§Ù† ÙØ®Ø± Ø±Ø§Ø²ÛŒØŒ Ù¾Ù„Ø§Ú©27ØŒ Ø³Ø§Ø®ØªÙ…Ø§Ù† Ú†ØªØ±Ø¯Ø§Ù†Ø´', 'hoghoghkadeh1p1b1b4', '2019-01-05 07:26:13'),
(1828, 'ØªÙ‡Ø±Ø§Ù†ØŒ Ø§Ù†Ù‚Ù„Ø§Ø¨ØŒ Ø®ÛŒØ§Ø¨Ø§Ù† ÙØ®Ø± Ø±Ø§Ø²ÛŒØŒ Ù¾Ù„Ø§Ú©27ØŒ Ø³Ø§Ø®ØªÙ…Ø§Ù† Ú†ØªØ±Ø¯Ø§Ù†Ø´', 'hoghoghkadeh1p1b1', '2019-01-05 07:29:46'),
(1829, 'Ø¬Ù‡Øª Ú¯Ø±ÙØªÙ† Ø¨Ø³ØªÙ‡ Ø¢Ù…ÙˆØ²Ø´ÛŒ Ù…ÙˆØ±Ø¯ Ù†Ø¸Ø± Ø¨Ø± Ø±ÙˆÛŒ Ø¹Ú©Ø³ Ù…Ø±Ø¨ÙˆØ·Ù‡ Ú©Ù„ÛŒÚ© Ú©Ù†ÛŒØ¯', 'hoghoghkadeh1p1b1', '2019-01-05 07:30:26'),
(1831, 'You can advertise your businesses here. Enquiry : Joshua +60108323456', 'TravelAgents', '2019-01-05 13:02:52'),
(1832, 'You can advertise your businesses here. Enquiry : Joshua +60108323456', 'Canopy', '2019-01-05 13:24:39'),
(1833, 'You can advertise your businesses here. Enquiry : Joshua +60108323456', 'BizOppMalaysia', '2019-01-05 14:12:02'),
(1834, 'You can advertise your businesses here. Enquiry : Joshua +60108323456', 'BizOppKualaLumpur', '2019-01-05 14:20:08'),
(1835, 'You can advertise your businesses here. Enquiry : Joshua +60108323456', 'BestProducts', '2019-01-05 15:01:37'),
(1836, 'You can advertise your businesses here. Enquiry : Joshua +60108323456', 'BestProducts', '2019-01-05 15:11:50'),
(1882, 'Ø¨Ø§Ø²ÛŒØ§Ø¨ÛŒ Ø§Ø·Ù„Ø§Ø¹Ø§Øª', 'roodab3p1b2c1t2', '2019-01-15 12:36:29'),
(1881, 'Ø¨Ø§Ø²ÛŒØ§Ø¨ÛŒ Ø§Ø·Ù„Ø§Ø¹Ø§Øª', 'roodab3p1b2c1t2', '2019-01-15 12:34:25'),
(1840, 'ØªØ¹Ù…ÛŒØ±Ø§Øª Ùˆ ÙØ±ÙˆØ´ ', 'roodab3p1b2c1t2', '2019-01-06 15:34:44'),
(1842, 'Ø¬Ù‡Øª Ù…Ø´Ø§Ù‡Ø¯Ù‡ Ù¾Ø§Ø³Ø§Ú˜ Ø§Ø³ØªØ§Ù† Ù‡Ø§ Ùˆ Ø´Ù‡Ø±Ø³ØªØ§Ù† Ù‡Ø§ Ø¨Ø± Ø±ÙˆÛŒ Ø¹Ú©Ø³ Ù¾Ø§Ø³Ø§Ú˜ Ù…ÙˆØ±Ø¯ Ù†Ø¸Ø± Ú©Ù„ÛŒÚ© Ú©Ù†ÛŒØ¯', 'roodabiran', '2019-01-07 07:49:56'),
(1843, 'No. 15 G, Jalan Wawasan Ampang 4/1, Bandar Baru Ampang, 68000 Ampang', 'Roodab9p1b1t1m14', '2019-01-08 03:03:46'),
(1844, 'Enquiry æŸ¥è¯¢: Mr. Yang +6012 235 3322', 'Roodab9p1b1t1m14', '2019-01-08 03:04:53'),
(1845, 'AUTO GEARBOX SPECIALIST', 'Roodab9p1b1t1m14', '2019-01-08 03:05:37'),
(1846, 'Weng Cheong Auto Gear Box & Tyres Service', 'Roodab9p1b1t1m14', '2019-01-08 03:06:33'),
(1847, 'Perodua, BMW, Nissan, Mercedes-Benz, Ford, Proton, Hyundai, Toyota, KIA, Honda', 'Roodab9p1b1t1m14', '2019-01-08 03:10:29'),
(1848, 'Ú†ØªØ±Ø¯Ø§Ù†Ø´', 'roodab3p1b1c1t7m1', '2019-01-08 07:54:16'),
(1849, '.ØªÙ‡ÛŒÙ‡ Ú©Ù†Ù†Ø¯Ù‡.Ø·Ø±Ø§Ø­ Ø³Ù‡ Ø¨Ø¹Ø¯ÛŒ.Ù…ÙˆØ´Ù† Ú¯Ø±Ø§ÙÛŒØ³Øª.ØªØ¯ÙˆÛŒÙ†Ú¯Ø±.', 'roodab3p1b1c1t4m4', '2019-01-08 08:51:14'),
(1850, 'You can advertise your businesses here. Enquiry : +6663-5422232', 'Roodab9p1b1t1m15', '2019-01-09 03:58:20'),
(1851, 'Address: 40-42-44, Niphat Uthit 1 Road, Hatyai, Songkhla, Thailand.', 'Roodab9p1b1t1m15', '2019-01-09 04:01:34'),
(1852, 'Nai Tomyum Krung 1 @ China Garden Hotel', 'Roodab9p1b1t1m15', '2019-01-09 04:02:19'),
(1853, 'Enquiry æŸ¥è¯¢: 063-5422232', 'Roodab9p1b1t1m15', '2019-01-09 04:03:55'),
(1854, 'You can advertise your businesses here. Enquiry : Joshua +60108323456', 'Fahrenheit88LG1f', '2019-01-10 03:46:36'),
(1855, 'You can advertise your businesses here. Enquiry : Joshua +60108323456', 'Fahrenheit88Gf', '2019-01-10 03:52:45'),
(1856, 'ÙØ±ÙˆØ´ Ø§Ù†ÙˆØ§Ø¹ Ú©ØªØ¨ Ø­Ù‚ÙˆÙ‚ÛŒ Ø¨Ø§ ØªØ®ÙÙ', 'roodab3p1b3c1t1m1', '2019-01-10 06:37:26'),
(1857, 'Ø¨Ø±Ø§ÛŒ ÙˆØ±Ø¯ Ø¨Ù‡ Ù‡Ø± Ø·Ø¨Ù‚Ù‡ Ø±ÙˆÛŒ Ø¢Ù† Ø·Ø¨Ù‚Ù‡ Ú©Ù„ÛŒÚ© Ù†Ù…Ø§ÛŒÛŒØ¯.', 'roodab3p1b3c1', '2019-01-10 07:04:21'),
(1858, 'Ø¨Ø±Ø§ÛŒ Ø¨Ø§Ø²Ø¯ÛŒØ¯ Ùˆ Ø®Ø±ÛŒØ¯ Ø§Ø² Ù‡Ø± Ù…ØºØ§Ø²Ù‡ Ø¨Ø±Ø±ÙˆÛŒ Ø¢ÛŒÚ©ÙˆÙ† Ù‡Ø§ÛŒ Ø²ÛŒØ± Ú©Ù„ÛŒÚ© Ù†Ù…Ø§ÛŒÛŒØ¯.', 'roodab3p1b3c1t1', '2019-01-10 07:08:03'),
(1860, 'Opening Hours: Mon - Sun 12:00-15:00, 18:00-23:30', 'Roodab9p1b1t1m16', '2019-01-11 09:20:28'),
(1861, 'Payment Method: Cash ', 'Roodab9p1b1t1m16', '2019-01-11 09:21:04'),
(1862, 'Other Info: Accept reservation, Alcohol served', 'Roodab9p1b1t1m16', '2019-01-11 09:21:55'),
(1863, 'Woh Kei Restaurant å’Œè¨˜æµ·é²œé£¯åº—', 'Roodab9p1b1t1m16', '2019-01-11 09:22:50'),
(1864, 'Enquiry æŸ¥è¯¢: Ms. May +6016 687 1508', 'Roodab9p1b1t1m16', '2019-01-11 09:27:28'),
(1865, 'Ù…Ø¯ÛŒØ± Ø´Ù‡Ø± ØªÙ‡Ø±Ø§Ù†', 'abedi313', '2019-01-12 13:38:11'),
(1866, 'Ù…Ø¯ÛŒØ± Ø´Ù‡Ø± ØªÙ‡Ø±Ø§Ù†', 'abedi313', '2019-01-12 13:38:23'),
(1867, 'Ù…Ø¯ÛŒØ± Ø´Ù‡Ø± ØªÙ‡Ø±Ø§Ù†', 'abedi313', '2019-01-12 13:39:43'),
(1868, '143-G1, Jalan Tun H.S.Lee, 50000 Kuala Lumpur, Malaysia', 'Roodab9p1b1t1m17', '2019-01-13 06:58:52'),
(1869, 'Kedai Bunga Flower Movement  Fax: +603 2026 7463', 'Roodab9p1b1t1m17', '2019-01-13 07:00:22'),
(1870, 'You can advertise your businesses here. Enquiry : Joshua +60108323456', 'Flowers', '2019-01-14 08:27:18'),
(1871, 'You can advertise your businesses here. Enquiry : Joshua +60108323456', 'Wedding', '2019-01-14 09:33:21'),
(1872, 'You can advertise your businesses here. Enquiry : Joshua +60108323456', 'Special', '2019-01-15 01:39:43'),
(1873, 'You can advertise your businesses here. Enquiry : Joshua +60108323456', 'StreetFoods', '2019-01-15 01:41:58'),
(1874, 'You can advertise your businesses here. Enquiry : Joshua +60108323456', 'Steak', '2019-01-15 01:43:06'),
(1875, 'You can advertise your businesses here. Enquiry : Joshua +60108323456', 'Spaghetti', '2019-01-15 01:50:25'),
(1876, 'You can advertise your businesses here. Enquiry : Joshua +60108323456', 'EconomyRice', '2019-01-15 01:52:01'),
(1877, 'You can advertise your businesses here. Enquiry : Joshua +60108323456', 'Easy', '2019-01-15 01:53:32'),
(1878, 'You can advertise your businesses here. Enquiry : Joshua +60108323456', 'Event', '2019-01-15 01:56:38'),
(1879, 'You can advertise your businesses here. Enquiry : Joshua +60108323456', 'PuiYuet', '2019-01-15 06:35:30'),
(1883, 'Ø¨Ø§Ø²ÛŒØ§Ø¨ÛŒ Ø§Ø·Ù„Ø§Ø¹Ø§Øª', 'roodab3p1b2c1t2', '2019-01-15 12:38:02'),
(1884, 'Ø¨Ø§Ø²ÛŒØ§Ø¨ÛŒ Ø§Ø·Ù„Ø§Ø¹Ø§Øª', 'roodab3p1b2c1t2', '2019-01-15 12:38:17'),
(1886, 'You can advertise your businesses here. Enquiry : Connie Loo +6012 2073 113', 'Roodab9p1b1t1m19', '2019-01-15 13:10:14'),
(1887, 'E-mail: carenannymalaysia@gmail.com', 'Roodab9p1b1t1m19', '2019-01-15 13:12:29'),
(1888, '59, SS19/4A, 47500 Subang Jaya, Selangor', 'Roodab9p1b1t1m19', '2019-01-15 13:13:33'),
(1889, 'Tel: +603-7785 5888, +603-5613 0008 (Office)', 'Roodab9p1b1t1m19', '2019-01-15 13:14:55'),
(1890, 'Enquiry æŸ¥è¯¢: Connie Loo (Director) +6012-2073 113', 'Roodab9p1b1t1m19', '2019-01-15 13:16:36'),
(1891, 'C & M Care Nanny & Herbs', 'Roodab9p1b1t1m19', '2019-01-15 13:17:18'),
(1892, 'Care Nanny Malaysia', 'Roodab9p1b1t1m19', '2019-01-15 13:17:35'),
(1893, 'Location: Kuala Terengganu Airport (TGG)', 'Roodab9p1b1t1m20', '2019-01-16 05:33:47'),
(1894, 'E-mail: sales@dygtravel.com.my, zul@dygtravel.com.my', 'Roodab9p1b1t1m20', '2019-01-16 05:35:28'),
(1895, 'Travel & Transportation, Car Rental, Self Drive, Limousine,.Vans, Coaches and Tour Package', 'Roodab9p1b1t1m20', '2019-01-16 05:36:44'),
(1896, 'DYG Travel', 'Roodab9p1b1t1m20', '2019-01-16 05:37:08'),
(1897, 'Enquiry æŸ¥è¯¢: Zul +6019-983 3103', 'Roodab9p1b1t1m20', '2019-01-16 05:38:36'),
(1907, 'Hours: Mon, Wed, Thurs, Sat: 10.00-19.00    Tues, Fri : 10.00-18.00   Sun : Closed', 'Roodab9p1b1t1m22', '2019-01-19 12:25:10'),
(1899, 'Open Hours: Tuesday to Sunday 11am-11pm, Monday: Closed', 'Roodab9p1b1t1m21', '2019-01-17 15:28:58'),
(1900, 'Address: 20, Jalan Landak, Pudu, 55100 Kuala Lumpur', 'Roodab9p1b1t1m21', '2019-01-17 15:30:01'),
(1901, 'Chinese Restaurant', 'Roodab9p1b1t1m21', '2019-01-17 15:30:22'),
(1902, 'Yik See Ho Bak Kut Teh äº¦æ˜¯å¥½é©°åç“¦ç…²è‚‰éª¨èŒ¶', 'Roodab9p1b1t1m21', '2019-01-17 15:32:34'),
(1903, 'Enquiry æŸ¥è¯¢: Mr. Wong +6012-789 2293', 'Roodab9p1b1t1m21', '2019-01-17 15:33:58'),
(1904, 'You can post your Jobs Vacancy here, enquiry: +60108323456 Joshua Tang', 'JobsSelangor', '2019-01-18 03:53:42'),
(1905, 'You can advertise your businesses here. Enquiry : Joshua +60108323456', 'Transport', '2019-01-18 10:54:52'),
(1906, 'Grab one Area Center and learn to make RM3,000 per week! ', 'Transport', '2019-01-18 10:55:06'),
(1908, 'Address: B-2-3A, Seri Gembira Avenue A, 6, Jalan Senang Ria, Taman Gembira, 58200 Kuala Lumpur', 'Roodab9p1b1t1m22', '2019-01-19 12:27:15'),
(1909, 'E-mail: info@bloemdesign.com.my', 'Roodab9p1b1t1m22', '2019-01-19 12:28:39'),
(1910, 'Website: http://www.bloemdesign.com.my', 'Roodab9p1b1t1m22', '2019-01-19 12:29:08'),
(1911, 'Bloem Design Florist', 'Roodab9p1b1t1m22', '2019-01-19 12:29:43'),
(1912, 'Enquiry æŸ¥è¯¢: 018-281 4268 Marcus', 'Roodab9p1b1t1m22', '2019-01-19 12:30:49'),
(1916, 'Grab one Area Center and learn to make RM3,000 per week! ', 'TravelKualaLumpur', '2019-01-20 05:03:21'),
(1917, 'You can advertise your businesses here. Enquiry : Joshua +60108323456', 'TravelKualaLumpur', '2019-01-20 05:03:28'),
(1918, 'Grab one Area Center and learn to make RM3,000 per week! ', 'MalaysiaTravelAgency', '2019-01-20 05:18:20'),
(1919, 'You can advertise your businesses here. Enquiry : Joshua +60108323456', 'MalaysiaTravelAgency', '2019-01-20 05:18:25'),
(1920, 'Ø®ÙˆØ§Øµ Ù…Ø¹Ø¬Ø²Ù‡ Ø§Ù†Ú¯ÛŒØ² Ù‚Ø§Ø±Ú† Ú¯Ø§Ù†ÙˆØ¯Ø±Ù…Ø§', 'pasaonline', '2019-01-20 09:46:26'),
(1921, 'ÙØ±ÙˆØ´Ú¯Ø§Ù‡', 'tehraniran', '2019-01-20 18:42:05'),
(1922, 'Ø§Ù…ÙˆØ±Ø´Ø´ÛŒØ±ÛŒÙ†ÛŒ ', 'ROODab3p1b1c1t7m6', '2019-01-20 20:22:53'),
(1923, 'Ø´ÛŒØ±ÛŒÙ†ÛŒ Ù¾Ø±ÛŒ', 'ROODab3p1b1c1t7m6', '2019-01-20 20:23:34'),
(1924, 'Ø´ÛŒØ±ÛŒÙ†ÛŒ Ù¾Ø±ÛŒ', 'ROODab3p1b1c1t7m6', '2019-01-20 20:23:45'),
(1925, 'Ù…ÙˆÙÙ‚ ØªØ±ÛŒÙ† Ø¯Ø®ØªØ± Ø¯Ù†ÛŒØ§', 'Bahrami', '2019-01-22 14:15:12'),
(1926, 'Ù…ÙˆÙÙ‚ ØªØ±ÛŒÙ† Ú©Ø§Ø± Ø¹Ù„Ù…Ø§ÛŒ ', 'Bahrami', '2019-01-22 14:15:26'),
(1927, 'Ù…ÙˆÙÙ‚ ØªØ±ÛŒÙ† Ø¯Ø®ØªØ± Ú©Ø§Ø± Ø¢ÙØ±ÛŒÙ† Ø¯Ù†ÛŒØ§ ', 'Bahrami', '2019-01-22 14:15:44'),
(1928, 'Ù…ÙˆÙÙ‚ ØªØ±ÛŒÙ† Ùˆ Ù¾ÙˆÙ„ Ø¯Ø§Ø± ØªØ±ÛŒÙ† Ø¯Ø®ØªØ± Ø¯Ù†ÛŒØ§ ', 'Bahrami', '2019-01-22 14:16:06'),
(1929, 'You can advertise your businesses here. Enquiry : Joshua +60108323456', 'HomeStay', '2019-01-23 04:40:47'),
(1930, 'Grab one Area Center and learn to make RM3,000 per week! ', 'HomeStay', '2019-01-23 04:40:53'),
(1931, 'Address: E-0-9, Jalan 1/127, Pusat Perdagangan Kuchai, 58200 Kuala Lumpur', 'Roodab9p1b1t1m24', '2019-01-23 12:58:58'),
(1932, 'Tel: +603-7497 2352, +6012-244 4883', 'Roodab9p1b1t1m24', '2019-01-23 12:59:51'),
(1933, 'Restoran Hong Toh Yuan', 'Roodab9p1b1t1m24', '2019-01-23 13:00:51'),
(1934, 'Grab one Area Center and learn to make RM3,000 per week! ', 'Trip', '2019-01-24 02:59:43'),
(1935, 'You can advertise your businesses here. Enquiry : Joshua +60108323456', 'Trip', '2019-01-24 02:59:48'),
(1936, 'You can advertise your businesses here. Enquiry : Joshua +60108323456', 'HotelsMalaysia', '2019-01-25 05:45:58'),
(1937, 'Grab one Area Center and learn to make RM3,000 per week! ', 'Forum', '2019-01-26 02:07:01'),
(1938, 'You can advertise your businesses here. Enquiry : Joshua +60108323456', 'Forum', '2019-01-26 02:07:06'),
(1939, 'Grab one Area Center and learn to make RM3,000 per week! ', 'AutoShow', '2019-01-27 03:10:27'),
(1940, 'You can advertise your businesses here. Enquiry : Joshua +60108323456', 'AutoShow', '2019-01-27 03:10:32'),
(1941, 'Grab one Area Center and learn to make RM3,000 per week! ', 'AutoCar', '2019-01-27 03:23:36'),
(1942, 'You can advertise your businesses here. Enquiry : Joshua +60108323456', 'AutoCar', '2019-01-27 03:23:41'),
(1943, 'Grab one Area Center and learn to make RM3,000 per week! ', 'Cafe', '2019-01-27 04:06:27'),
(1944, 'Grab one Area Center and learn to make RM3,000 per week! ', 'Chef', '2019-01-27 04:22:46'),
(1945, 'You can advertise your businesses here. Enquiry : Joshua +60108323456', 'Chef', '2019-01-27 04:22:52'),
(1946, 'Grab one Area Center and learn to make RM3,000 per week! ', 'Lorry', '2019-01-28 03:17:40'),
(1947, 'You can advertise your businesses here. Enquiry : Joshua +60108323456', 'Lorry', '2019-01-28 03:17:45'),
(1948, 'Grab one Area Center and learn to make RM3,000 per week! ', 'Laundry', '2019-01-28 03:27:29'),
(1949, 'You can advertise your businesses here. Enquiry : Joshua +60108323456', 'Laundry', '2019-01-28 03:27:34'),
(1950, 'Grab one Area Center and learn to make RM3,000 per week! ', 'HomeStayMalaysia', '2019-01-28 05:22:13'),
(1951, 'You can advertise your businesses here. Enquiry : Joshua +60108323456', 'HomeStayMalaysia', '2019-01-28 05:22:19'),
(1952, 'Grab one Area Center and learn to make RM3,000 per week! ', 'Entrepreneur', '2019-01-29 05:14:42'),
(1953, 'You can advertise your businesses here. Enquiry : Joshua +60108323456', 'Entrepreneur', '2019-01-29 05:14:47'),
(1954, 'Grab one Area Center and learn to make RM3,000 per week! ', 'Entrepreneurship', '2019-01-29 05:31:26'),
(1955, 'You can advertise your businesses here. Enquiry : Joshua +60108323456', 'Entrepreneurship', '2019-01-29 05:31:31'),
(1956, 'ØªÙ‡Ø±Ø§Ù†ØŒ Ø§Ù†Ù‚Ù„Ø§Ø¨ØŒ Ø®ÛŒØ§Ø¨Ø§Ù† ÙØ®Ø±Ø±Ø§Ø²ÛŒØŒ Ù¾Ù„Ø§Ú© 27Ø·Ø¨Ù‚Ù‡ 4', 'hoghoghkadeh1p1b3b1', '2019-01-29 09:16:40'),
(1957, 'Grab one Area Center and learn to make RM3,000 per week! ', 'Education', '2019-01-30 06:19:48'),
(1958, 'You can advertise your businesses here. Enquiry : Joshua +60108323456', 'Education', '2019-01-30 06:19:54'),
(1959, 'Grab one Area Center and learn to make RM3,000 per week! ', 'WhereToTravel', '2019-01-30 08:50:50'),
(1960, 'You can advertise your businesses here. Enquiry : Joshua +60108323456', 'WhereToTravel', '2019-01-30 08:50:55'),
(1961, 'ØªÙ‡Ø±Ø§Ù†ØŒ Ø§Ù†Ù‚Ù„Ø§Ø¨ØŒ Ø®ÛŒØ§Ø¨Ø§Ù† ÙØ®Ø±Ø±Ø§Ø²ÛŒØŒ Ù¾Ù„Ø§Ú© 27Ø·Ø¨Ù‚Ù‡ 4', 'hoghoghkadeh1p1b3b2', '2019-01-30 08:55:57'),
(1962, 'Grab one Area Center and learn to make RM3,000 per week! ', 'WhereToSleep', '2019-01-30 09:01:41'),
(1963, 'You can advertise your businesses here. Enquiry : Joshua +60108323456', 'WhereToSleep', '2019-01-30 09:01:47'),
(1964, 'ØªÙ‡Ø±Ø§Ù†ØŒ Ø§Ù†Ù‚Ù„Ø§Ø¨ØŒ Ø®ÛŒØ§Ø¨Ø§Ù† ÙØ®Ø±Ø±Ø§Ø²ÛŒØŒ Ù¾Ù„Ø§Ú© 27Ø·Ø¨Ù‚Ù‡ 4', 'hoghoghkadeh1p1b3b3', '2019-01-30 09:12:44'),
(1965, 'ØªÙ‡Ø±Ø§Ù†ØŒ Ø§Ù†Ù‚Ù„Ø§Ø¨ØŒ Ø®ÛŒØ§Ø¨Ø§Ù† ÙØ®Ø±Ø±Ø§Ø²ÛŒØŒ Ù¾Ù„Ø§Ú© 27Ø·Ø¨Ù‚Ù‡ 4', 'hoghoghkadeh1p1b3b4', '2019-01-30 11:40:14'),
(1966, 'Grab one Area Center and learn to make RM3,000 per week! ', 'WhereToBuy', '2019-01-30 11:45:19'),
(1967, 'You can advertise your businesses here. Enquiry : Joshua +60108323456', 'WhereToBuy', '2019-01-30 11:45:24'),
(1968, 'ØªÙ‡Ø±Ø§Ù†ØŒ Ø§Ù†Ù‚Ù„Ø§Ø¨ØŒ Ø®ÛŒØ§Ø¨Ø§Ù† ÙØ®Ø±Ø±Ø§Ø²ÛŒØŒ Ù¾Ù„Ø§Ú© 27Ø·Ø¨Ù‚Ù‡ 4', 'hoghoghkadeh1p1b3b5', '2019-01-30 12:31:28'),
(1976, 'Grab one Area Center and learn to make RM3,000 per week! ', 'Nanny', '2019-01-31 09:01:15'),
(1970, 'Grab one Area Center and learn to make RM3,000 per week! ', 'WhereToStay', '2019-01-31 06:49:56'),
(1971, 'You can advertise your businesses here. Enquiry : Joshua +60108323456', 'WhereToStay', '2019-01-31 06:50:03'),
(1972, 'Confinementé™ªæœˆå­', 'SophiaHui', '2019-01-31 08:04:40'),
(1973, 'Grab one Area Center and learn to make RM3,000 per week! ', 'SophiaHui', '2019-01-31 08:04:57'),
(1974, 'You can advertise your businesses here. Enquiry : Joshua +60108323456', 'SophiaHui', '2019-01-31 08:05:04'),
(1975, 'Confinementé™ªæœˆå­, please call Sophia Hui : +60122129823', 'Roodab9p1b1t1m23', '2019-01-31 08:10:15'),
(1977, 'You can advertise your businesses here. Enquiry : Joshua +60108323456', 'Nanny', '2019-01-31 09:01:19'),
(1978, 'Enquiry :Pui Yuet é™ªæœˆ +60122129823 Sophia Hui', 'PuiYuet', '2019-01-31 10:30:20'),
(1979, 'Grab one Area Center and learn to make RM3,000 per week! ', 'BabySitter', '2019-02-01 02:43:38'),
(1980, 'You can advertise your businesses here. Enquiry : Joshua +60108323456', 'BabySitter', '2019-02-01 02:43:43'),
(1981, 'Grab one Area Center and learn to make RM3,000 per week! ', 'Cars', '2019-02-01 03:10:23'),
(1982, 'You can advertise your businesses here. Enquiry : Joshua +60108323456', 'Cars', '2019-02-01 03:10:28'),
(1983, 'You can advertise your businesses here. Enquiry : Joshua +60108323456', 'JobsMalaysia', '2019-02-02 14:40:55'),
(1984, 'Grab one Area Center and learn to make RM3,000 per week! ', 'Reward', '2019-02-03 02:00:49'),
(1985, 'You can advertise your businesses here. Enquiry : Joshua +60108323456', 'Reward', '2019-02-03 02:00:54'),
(1986, 'You can advertise your businesses here. Enquiry : Joshua +60108323456', 'Roodab9p1b1t1m25', '2019-02-04 07:54:38'),
(1987, 'Grab one Area Center and learn to make RM3,000 per week! ', 'Roodab9p1b1t1m25', '2019-02-04 07:54:42'),
(1988, 'Grab one Area Center and learn to make RM3,000 per week! ', 'Deco', '2019-02-04 08:22:49'),
(1989, 'You can advertise your businesses here. Enquiry : Joshua +60108323456', 'Deco', '2019-02-04 08:22:54'),
(1990, 'Ø®Ø¯Ø§ÛŒØ§ Ø³Ù¾Ø§Ø³Ú¯Ø²Ø§Ø±Ù…', 'zeinosalehin3913', '2019-02-04 21:26:43'),
(1992, ' Ø±Ø§ Ø¨Ù‡ Ù…Ø§ Ø¨Ø³Ù¾Ø§Ø±ÛŒØ¯ Ø¹Ú©Ø§Ø³ÛŒ ..Ø¯ÛŒØ¬ÛŒØªØ§Ù„ ...Ø«Ø¨Øª Ù„Ø­Ø¸Ø§Øª Ø²ÛŒØ¨Ø§ÛŒ Ø²Ù†Ø¯Ú¯ÛŒØªØ§Ù† ', 'roodab3p1b13c1t1', '2019-02-06 10:40:05'),
(1993, 'Grab one Area Center and learn to make RM3,000 per week! ', 'PropertyKualaLumpur', '2019-02-06 10:55:41'),
(1994, 'Grab one Area Center and learn to make RM3,000 per week! ', 'PropertySelangor', '2019-02-06 10:57:47'),
(1995, 'You can advertise your businesses here. Enquiry : Joshua +60108323456', 'PropertySelangor', '2019-02-06 10:57:54'),
(1998, 'You can advertise your businesses here. Enquiry : Joshua +60108323456', 'KLHousetoLet', '2019-02-06 11:31:12'),
(1999, 'Grab one Area Center and learn to make RM3,000 per week! ', 'KLApartmentforSale', '2019-02-06 12:09:47'),
(2000, 'You can advertise your businesses here. Enquiry : Joshua +60108323456', 'KLApartmentforSale', '2019-02-06 12:09:52'),
(2001, 'Grab one Area Center and learn to make RM3,000 per week! ', 'KLApartmenttoLet', '2019-02-06 12:21:12'),
(2002, 'You can advertise your businesses here. Enquiry : Joshua +60108323456', 'KLApartmenttoLet', '2019-02-06 12:21:17'),
(2003, 'Grab one Area Center and learn to make RM3,000 per week! ', 'KLCondoforSale', '2019-02-06 12:29:51'),
(2004, 'You can advertise your businesses here. Enquiry : Joshua +60108323456', 'KLCondoforSale', '2019-02-06 12:29:56'),
(2005, 'Grab one Area Center and learn to make RM3,000 per week! ', 'KLOfficeforSale', '2019-02-06 12:49:58'),
(2006, 'You can advertise your businesses here. Enquiry : Joshua +60108323456', 'KLOfficeforSale', '2019-02-06 12:50:03'),
(2007, 'Grab one Area Center and learn to make RM3,000 per week! ', 'KLOfficetoLet', '2019-02-06 12:58:09'),
(2008, 'You can advertise your businesses here. Enquiry : Joshua +60108323456', 'KLOfficetoLet', '2019-02-06 12:58:14'),
(2009, 'E-mail: homestayalamdamaicheras@gmail.com', 'Roodab9p1b1t1m26', '2019-02-07 06:56:53'),
(2010, 'Contact : Kak Zie +6010-513 3967', 'Roodab9p1b1t1m26', '2019-02-07 06:59:09'),
(2011, 'Address: No. 28, Jalan Damai Perdana 3/3C, Bandar Damai Perdana, 56000 Cheras, Kuala Lumpur', 'Roodab9p1b1t1m26', '2019-02-07 07:01:16'),
(2012, 'Close to Dining & Grocery shop.', 'Roodab9p1b1t1m26', '2019-02-07 07:02:23'),
(2013, 'Private Area for family, safety and guarded area.', 'Roodab9p1b1t1m26', '2019-02-07 07:03:52'),
(2014, 'Features: 3 bed rooms, 3 bathrooms, dining room, spacious car park.', 'Roodab9p1b1t1m26', '2019-02-07 07:05:28'),
(2015, 'Double storey link house, 1,600 sq ft (20 x 60)', 'Roodab9p1b1t1m26', '2019-02-07 07:07:17'),
(2016, 'Price: RM700k ( negotiable)', 'Roodab9p1b1t1m26', '2019-02-07 07:08:04'),
(2017, 'House for Sale', 'Roodab9p1b1t1m26', '2019-02-07 07:08:17'),
(2018, 'Grab one Area Center and learn to make RM3,000 per week! ', 'DecorativeCakes', '2019-02-07 08:31:31'),
(2019, 'You can advertise your businesses here. Enquiry : Joshua +60108323456', 'DecorativeCakes', '2019-02-07 08:31:35'),
(2020, 'Enquiry æŸ¥è¯¢: +6017-977 9352 Kan Lin', 'DecorativeCakes', '2019-02-07 08:38:02'),
(2021, 'Grab one Area Center and learn to make RM3,000 per week! ', 'Display', '2019-02-08 01:27:15'),
(2022, 'You can advertise your businesses here. Enquiry : Joshua +60108323456', 'Display', '2019-02-08 01:27:20'),
(2023, 'Grab one Area Center and learn to make RM3,000 per week! ', 'HouseforSale', '2019-02-08 09:14:41'),
(2024, 'You can advertise your businesses here. Enquiry : Joshua +60108323456', 'HouseforSale', '2019-02-08 09:14:47'),
(2025, 'Grab one Area Center and learn to make RM3,000 per week! ', 'ApartmentforSale', '2019-02-08 10:07:30'),
(2026, 'You can advertise your businesses here. Enquiry : Joshua +60108323456', 'ApartmentforSale', '2019-02-08 10:07:35'),
(2028, 'Grab one Area Center and learn to make RM3,000 per week! ', 'MalaysiaJobs', '2019-02-10 09:54:12'),
(2029, 'You can advertise your businesses here. Enquiry : Joshua +60108323456', 'MalaysiaJobs', '2019-02-10 09:54:17'),
(2030, 'Grab one Area Center and learn to make RM3,000 per week! ', 'MalaysiaLandforSale', '2019-02-10 11:07:13'),
(2031, 'You can advertise your businesses here. Enquiry : Joshua +60108323456', 'MalaysiaLandforSale', '2019-02-10 11:07:19'),
(2032, 'You can advertise your businesses here. Enquiry : Joshua +60108323456', 'Fair', '2019-02-10 13:35:51'),
(2033, 'You can advertise your businesses here. Enquiry : Joshua +60108323456', 'Land', '2019-02-10 14:46:34'),
(2034, 'You can advertise your businesses here. Enquiry : Joshua +60108323456', 'MalaysiaHomeStay', '2019-02-11 05:16:49'),
(2035, 'You can advertise your businesses here. Enquiry : Joshua +60108323456', 'MalaysiaHouseforSale', '2019-02-11 07:18:07'),
(2036, 'You can advertise your businesses here. Enquiry : Joshua +60108323456', 'HousetoLet', '2019-02-11 08:37:20'),
(2037, 'Grab one Area Center and learn to make RM3,000 per week! ', 'ApartmenttoLet', '2019-02-11 09:33:14'),
(2038, 'You can advertise your businesses here. Enquiry : Joshua +60108323456', 'ApartmenttoLet', '2019-02-11 09:33:20'),
(2039, 'Grab one Area Center and learn to make RM3,000 per week! ', 'HomestaySelangor', '2019-02-11 15:05:09'),
(2040, 'You can advertise your businesses here. Enquiry : Joshua +60108323456', 'HomestaySelangor', '2019-02-11 15:05:13'),
(2041, 'Grab one Area Center and learn to make RM3,000 per week! ', 'HomestayNegeriSembilan', '2019-02-11 15:37:42'),
(2042, 'You can advertise your businesses here. Enquiry : Joshua +60108323456', 'HomestayNegeriSembilan', '2019-02-11 15:37:47');

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
(1, 3, 1, 1, '', 1, NULL, NULL),
(2, 6, 2, 0, 'tyree', 1, NULL, NULL),
(3, 7, 1, 1, 'kakak', 1, NULL, NULL),
(4, 7, 1, 1, '', 1, NULL, NULL),
(5, 8, 3, 1, '', 1, NULL, NULL),
(6, 7, 9, 1, '', 1, NULL, NULL),
(7, 7, 3, 1, '', 1, NULL, NULL),
(8, 7, 2, 1, '', 1, NULL, NULL),
(9, 7, 10, 1, '', 1, NULL, NULL),
(10, 7, 14, 0, 'hhhhhhhhhh', 1, '2019-04-07 00:00:00', '2019-04-06 00:00:00');

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
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `affiliate_bonus_history`
--
ALTER TABLE `affiliate_bonus_history`
  MODIFY `bid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `affliate_stage_bonus`
--
ALTER TABLE `affliate_stage_bonus`
  MODIFY `bonus_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `banners`
--
ALTER TABLE `banners`
  MODIFY `bannerid` double NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `category_master`
--
ALTER TABLE `category_master`
  MODIFY `id` int(15) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `contacts`
--
ALTER TABLE `contacts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `contacts_master`
--
ALTER TABLE `contacts_master`
  MODIFY `id` int(15) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `currency`
--
ALTER TABLE `currency`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `earning_settings`
--
ALTER TABLE `earning_settings`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `product_master`
--
ALTER TABLE `product_master`
  MODIFY `id` int(15) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `services`
--
ALTER TABLE `services`
  MODIFY `id` int(15) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `sub_category_master`
--
ALTER TABLE `sub_category_master`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `transfer_history`
--
ALTER TABLE `transfer_history`
  MODIFY `tid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=528;

--
-- AUTO_INCREMENT for table `user_advertisements`
--
ALTER TABLE `user_advertisements`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `user_services`
--
ALTER TABLE `user_services`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2043;

--
-- AUTO_INCREMENT for table `user_vs_packages`
--
ALTER TABLE `user_vs_packages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
