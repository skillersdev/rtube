-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 09, 2019 at 08:42 PM
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
-- Table structure for table `group_members`
--

CREATE TABLE `group_members` (
  `id` int(11) NOT NULL,
  `group_id` int(10) NOT NULL,
  `group_name` varchar(400) NOT NULL,
  `user_id` int(10) NOT NULL,
  `user_name` varchar(200) NOT NULL,
  `created_by` int(10) NOT NULL,
  `created_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `is_deleted` int(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `group_members`
--

INSERT INTO `group_members` (`id`, `group_id`, `group_name`, `user_id`, `user_name`, `created_by`, `created_date`, `is_deleted`) VALUES
(1, 1, 'group test', 7, 'ramasway', 7, '2019-06-09 18:22:03', 0),
(2, 1, 'group test', 2, 'sridhar', 7, '2019-06-09 18:22:03', 0),
(3, 1, 'group test', 10, 'dhanas', 7, '2019-06-09 18:22:03', 0),
(4, 2, 'new group', 7, 'ramasway', 7, '2019-06-09 18:27:50', 0),
(5, 2, 'new group', 2, 'sridhar', 7, '2019-06-09 18:27:50', 0),
(6, 2, 'new group', 1, 'marketer', 7, '2019-06-09 18:27:50', 0),
(8, 4, 'sridhar group', 2, 'sridhar', 2, '2019-06-09 18:29:50', 0),
(9, 4, 'sridhar group', 7, 'ramasway', 2, '2019-06-09 18:29:50', 0),
(10, 4, 'sridhar group', 4, 'remo', 2, '2019-06-09 18:29:50', 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `group_members`
--
ALTER TABLE `group_members`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `group_members`
--
ALTER TABLE `group_members`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
