-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 21, 2023 at 06:44 AM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 8.1.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `blood_bank`
--

-- --------------------------------------------------------

--
-- Table structure for table `bb_blood`
--

CREATE TABLE `bb_blood` (
  `blood_id` int(11) NOT NULL,
  `blood` varchar(255) NOT NULL,
  `detail` varchar(255) NOT NULL,
  `status` tinyint(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='data of all available blood group';

--
-- Dumping data for table `bb_blood`
--

INSERT INTO `bb_blood` (`blood_id`, `blood`, `detail`, `status`) VALUES
(1, 'A+', '', 1),
(2, 'A-', '', 1),
(3, 'B+', '', 1),
(4, 'B-', '', 1),
(5, 'AB+', '', 1),
(6, 'AB-', '', 1),
(7, 'O+', '', 1),
(8, 'O-', '', 1);

-- --------------------------------------------------------

--
-- Table structure for table `bb_hospital`
--

CREATE TABLE `bb_hospital` (
  `hospital_id` int(11) NOT NULL,
  `hospital_name` varchar(255) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `mobile` bigint(20) NOT NULL,
  `datetime` datetime NOT NULL,
  `status` tinyint(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='store the details of hospital data';

--
-- Dumping data for table `bb_hospital`
--

INSERT INTO `bb_hospital` (`hospital_id`, `hospital_name`, `username`, `password`, `mobile`, `datetime`, `status`) VALUES
(2, 'Admin', 'admin', 'e10adc3949ba59abbe56e057f20f883e', 7972722953, '2023-04-14 06:22:00', 1),
(3, 'birla hospital pune', 'birlahospital', 'e807f1fcf82d132f9bb018ca6738a19f', 8976554232, '2023-04-14 23:26:05', 1),
(4, 'goverment hospital', 'govhospital', 'e807f1fcf82d132f9bb018ca6738a19f', 2323232332, '2023-04-14 23:30:27', 1);

-- --------------------------------------------------------

--
-- Table structure for table `bb_request`
--

CREATE TABLE `bb_request` (
  `request_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `hospital_id` int(11) NOT NULL,
  `blood_id` int(11) NOT NULL,
  `volume` int(11) NOT NULL COMMENT 'in ml',
  `datetime` datetime NOT NULL,
  `status` tinyint(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='request detail by user to the hospital';

--
-- Dumping data for table `bb_request`
--

INSERT INTO `bb_request` (`request_id`, `user_id`, `hospital_id`, `blood_id`, `volume`, `datetime`, `status`) VALUES
(2, 3, 3, 2, 50, '2023-04-14 23:28:20', 1),
(3, 3, 2, 4, 50, '2023-04-14 23:41:18', 1),
(4, 3, 4, 4, 100, '2023-04-18 10:27:40', 1);

-- --------------------------------------------------------

--
-- Table structure for table `bb_stock`
--

CREATE TABLE `bb_stock` (
  `stock_id` int(11) NOT NULL,
  `hospital_id` int(11) NOT NULL,
  `blood_id` int(11) NOT NULL,
  `volume` int(11) NOT NULL,
  `status` tinyint(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='blood stock available in the hospital';

--
-- Dumping data for table `bb_stock`
--

INSERT INTO `bb_stock` (`stock_id`, `hospital_id`, `blood_id`, `volume`, `status`) VALUES
(3, 3, 7, 500, 1),
(4, 3, 8, 300, 1),
(5, 3, 1, 200, 1),
(6, 3, 5, 700, 1),
(7, 3, 2, 700, 1),
(8, 4, 1, 8000, 1),
(9, 4, 4, 1500, 1),
(10, 4, 6, 900, 1),
(11, 4, 3, 100, 1),
(12, 4, 8, 150, 1),
(13, 4, 7, 450, 1),
(14, 2, 5, 750, 1),
(15, 2, 7, 600, 1),
(16, 2, 4, 300, 1),
(17, 2, 1, 200, 1);

-- --------------------------------------------------------

--
-- Table structure for table `bb_user`
--

CREATE TABLE `bb_user` (
  `user_id` int(11) NOT NULL,
  `blood_id` int(11) NOT NULL,
  `first_name` varchar(255) NOT NULL,
  `last_name` varchar(255) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `mobile` bigint(20) NOT NULL,
  `datetime` datetime NOT NULL,
  `status` tinyint(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='all data of reciever';

--
-- Dumping data for table `bb_user`
--

INSERT INTO `bb_user` (`user_id`, `blood_id`, `first_name`, `last_name`, `username`, `password`, `mobile`, `datetime`, `status`) VALUES
(3, 1, 'user', 'user', 'user', 'e10adc3949ba59abbe56e057f20f883e', 7972722953, '2023-04-14 09:09:32', 1),
(4, 7, 'kunal', 'chaudhari', 'kunalpc', 'e807f1fcf82d132f9bb018ca6738a19f', 7972722953, '2023-04-14 23:24:16', 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `bb_blood`
--
ALTER TABLE `bb_blood`
  ADD PRIMARY KEY (`blood_id`);

--
-- Indexes for table `bb_hospital`
--
ALTER TABLE `bb_hospital`
  ADD PRIMARY KEY (`hospital_id`);

--
-- Indexes for table `bb_request`
--
ALTER TABLE `bb_request`
  ADD PRIMARY KEY (`request_id`);

--
-- Indexes for table `bb_stock`
--
ALTER TABLE `bb_stock`
  ADD PRIMARY KEY (`stock_id`);

--
-- Indexes for table `bb_user`
--
ALTER TABLE `bb_user`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `bb_blood`
--
ALTER TABLE `bb_blood`
  MODIFY `blood_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `bb_hospital`
--
ALTER TABLE `bb_hospital`
  MODIFY `hospital_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `bb_request`
--
ALTER TABLE `bb_request`
  MODIFY `request_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `bb_stock`
--
ALTER TABLE `bb_stock`
  MODIFY `stock_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `bb_user`
--
ALTER TABLE `bb_user`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
