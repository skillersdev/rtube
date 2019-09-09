-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 19, 2019 at 11:01 PM
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
-- Table structure for table `all_message`
--

CREATE TABLE `all_message` (
  `id` int(11) NOT NULL,
  `group_id` int(10) NOT NULL,
  `message` varchar(4000) NOT NULL,
  `chatimage` varchar(100) NOT NULL,
  `created_by` int(10) NOT NULL,
  `user_name` varchar(400) NOT NULL,
  `created_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `is_deleted` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `all_message`
--

INSERT INTO `all_message` (`id`, `group_id`, `message`, `chatimage`, `created_by`, `user_name`, `created_date`, `is_deleted`) VALUES
(1, 1, 'hi', '', 7, 'ramasway', '2019-06-09 18:22:33', 0),
(2, 1, 'hi sridhar', '', 7, 'ramasway', '2019-06-09 18:24:25', 0),
(3, 1, 'hi ramas', '', 2, 'sridhar', '2019-06-09 18:25:51', 0),
(4, 1, 'fyn', '', 2, 'sridhar', '2019-06-09 18:26:01', 0),
(5, 1, 'wt about you', '', 2, 'sridhar', '2019-06-09 18:26:08', 0),
(6, 2, 'dddd', '', 7, 'ramasway', '2019-06-09 18:28:01', 0),
(8, 4, 'hi', '', 7, 'ramasway', '2019-06-09 18:32:21', 0),
(9, 4, 'hi', '', 2, 'sridhar', '2019-06-09 18:32:34', 0),
(10, 4, 'wt doing?', '', 7, 'ramasway', '2019-06-09 18:32:44', 0),
(11, 4, 'vo', '', 2, 'sridhar', '2019-06-09 18:32:53', 0),
(12, 4, 'u', '', 2, 'sridhar', '2019-06-09 18:32:58', 0),
(13, 4, 'same', '', 7, 'ramasway', '2019-06-09 18:33:08', 0),
(14, 6, 'sss', '', 7, 'ramasway', '2019-06-11 18:54:10', 0),
(15, 2, '', '', 7, 'ramasway', '2019-06-19 20:32:02', 0),
(17, 2, '', '1560976952image.jpg', 7, 'ramasway', '2019-06-19 20:42:32', 0),
(18, 2, '', '1560977381images.jpg', 7, 'ramasway', '2019-06-19 20:49:41', 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `all_message`
--
ALTER TABLE `all_message`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `all_message`
--
ALTER TABLE `all_message`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
