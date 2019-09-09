-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 26, 2019 at 09:30 PM
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
-- Database: `roodadae_mlm`
--

-- --------------------------------------------------------

--
-- Table structure for table `group_master`
--

CREATE TABLE `group_master` (
  `id` int(11) NOT NULL,
  `group_name` varchar(200) NOT NULL,
  `imagename` varchar(100) NOT NULL,
  `private_public` int(2) NOT NULL,
  `created_by` int(10) NOT NULL,
  `created_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `is_deleted` int(10) NOT NULL DEFAULT '0',
  `group_code` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `group_master`
--

INSERT INTO `group_master` (`id`, `group_name`, `imagename`, `private_public`, `created_by`, `created_date`, `is_deleted`, `group_code`) VALUES
(1, 'group test', 'pexels-photo-414612.jpeg', 2, 7, '2019-06-09 18:22:03', 0, ''),
(2, 'new group', 'download.jpg', 2, 7, '2019-06-09 18:27:50', 0, ''),
(4, 'sridhar group', 'image.jpg', 2, 2, '2019-06-09 18:29:50', 0, ''),
(5, 'private group', 'image.jpg', 1, 7, '2019-06-11 18:06:13', 0, ''),
(6, 'p2', 'images.jpg', 1, 7, '2019-06-11 18:14:43', 0, ''),
(7, 'new group test', 'images (1).jpg', 2, 7, '2019-06-26 19:22:41', 0, ''),
(8, 'new group test2', 'images (1).jpg', 2, 7, '2019-06-26 19:26:46', 0, 'XtKwVz89aY');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `group_master`
--
ALTER TABLE `group_master`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `group_master`
--
ALTER TABLE `group_master`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
