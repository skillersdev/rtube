-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 17, 2019 at 04:58 PM
-- Server version: 10.3.16-MariaDB
-- PHP Version: 7.2.20

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
-- Table structure for table `mallproduct_master`
--

CREATE TABLE `mallproduct_master` (
  `id` int(11) NOT NULL,
  `product_name` varchar(400) NOT NULL,
  `mall_id` int(10) NOT NULL,
  `floor_id` int(10) NOT NULL,
  `shop_id` int(10) NOT NULL,
  `created_by` int(2) NOT NULL,
  `created_date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `is_deleted` int(2) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `mallproduct_master`
--

INSERT INTO `mallproduct_master` (`id`, `product_name`, `mall_id`, `floor_id`, `shop_id`, `created_by`, `created_date`, `is_deleted`, `username`, `password`) VALUES
(1, 'product1', 2, 2, 1, 2, '2019-08-17 14:54:47', 0, 'test1', 'test1');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `mallproduct_master`
--
ALTER TABLE `mallproduct_master`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `mallproduct_master`
--
ALTER TABLE `mallproduct_master`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
