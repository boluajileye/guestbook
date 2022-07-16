-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 06, 2022 at 08:21 PM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.4.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `guestbook`
--

-- --------------------------------------------------------

--
-- Table structure for table `guest`
--

CREATE TABLE `guest` (
  `guest_id` int(11) NOT NULL,
  `guest_fname` varchar(30) NOT NULL,
  `guest_lname` varchar(30) NOT NULL,
  `guest_phone` varchar(30) NOT NULL,
  `guest_address` varchar(300) NOT NULL,
  `guest_arrive` date NOT NULL,
  `guest_status` varchar(30) NOT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `guest`
--

INSERT INTO `guest` (`guest_id`, `guest_fname`, `guest_lname`, `guest_phone`, `guest_address`, `guest_arrive`, `guest_status`, `created_at`) VALUES
(1, 'Sheila', 'White', '+234 (221) 615-6294', '159 Hague Road', '2021-04-23', 'invited', '2022-07-06 11:40:15'),
(2, 'Brandon', 'Cain', '+234 (343) 764-6291', '374 First Street', '2020-09-29', 'uninvited', '2022-07-06 11:40:22'),
(3, 'Marny', 'Wagner', '+234 (767) 347-7406', '81 North Clarendon Road', '1983-01-09', 'invited', '2022-07-06 11:40:35'),
(4, 'Aquila', 'Lawrence', '+234 (482) 953-1483', '79 East New Parkway', '1991-07-25', 'uninvited', '2022-07-06 11:45:51'),
(5, 'Lacota', 'Kim', '+234 (559) 624-9146', '680 North First Drive', '2021-05-02', 'invited', '2022-07-06 11:46:00'),
(6, 'Calvin', 'Osborne', '+234 (426) 833-3050', '68 East Cowley Lane', '2021-10-08', 'uninvited', '2022-07-06 11:46:08');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `guest`
--
ALTER TABLE `guest`
  ADD PRIMARY KEY (`guest_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `guest`
--
ALTER TABLE `guest`
  MODIFY `guest_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
