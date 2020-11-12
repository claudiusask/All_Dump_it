-- phpMyAdmin SQL Dump
-- version 5.0.3
-- https://www.phpmyadmin.net/
--
-- Host: db
-- Generation Time: Nov 12, 2020 at 12:04 PM
-- Server version: 5.7.31
-- PHP Version: 7.4.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `dbexample`
--

-- --------------------------------------------------------

--
-- Table structure for table `tblBooking`
--

CREATE TABLE `tblBooking` (
  `id` int(11) NOT NULL,
  `token_no` varchar(255) NOT NULL,
  `vehicle_id` varchar(255) NOT NULL,
  `membership_id` varchar(255) NOT NULL,
  `floor_id` int(11) NOT NULL,
  `status` varchar(255) NOT NULL,
  `entry_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblBooking`
--

INSERT INTO `tblBooking` (`id`, `token_no`, `vehicle_id`, `membership_id`, `floor_id`, `status`, `entry_time`) VALUES
(1, '1', '1', '1', 1, '1', '2020-11-04 21:19:48');

-- --------------------------------------------------------

--
-- Table structure for table `tblDriver`
--

CREATE TABLE `tblDriver` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `age` int(11) DEFAULT NULL,
  `contact_no` varchar(15) NOT NULL,
  `cnic` varchar(255) NOT NULL,
  `driving_license_no` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblDriver`
--

INSERT INTO `tblDriver` (`id`, `name`, `age`, `contact_no`, `cnic`, `driving_license_no`) VALUES
(1, 'Ali', 32, '0300666999', '789456988524', 'LHR99009900'),
(2, 'Ahmed', 45, '0300887744', '56749908132', 'ISB356'),
(3, 'Hassan', 38, '+971507861142', '98654333098726', 'TRW12033453'),
(8, 'john', 23, '03334455667', '987654321', 'ISB78991'),
(9, 'john', 23, '03334455667', '987654321', 'ISB78991'),
(10, 'Tayab', 38, '03136677880', '7463526374859', 'SLK45768'),
(11, 'Jawad', 25, '032188574965', '56409857653', 'KRC-332314');

-- --------------------------------------------------------

--
-- Table structure for table `tblMembershipCard`
--

CREATE TABLE `tblMembershipCard` (
  `id` int(11) NOT NULL,
  `issues_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `expiry_date` date NOT NULL,
  `price` varchar(255) NOT NULL,
  `membership_price` varchar(255) NOT NULL,
  `status` varchar(255) NOT NULL,
  `driver_id` int(11) NOT NULL,
  `vehicle` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblMembershipCard`
--

INSERT INTO `tblMembershipCard` (`id`, `issues_date`, `expiry_date`, `price`, `membership_price`, `status`, `driver_id`, `vehicle`) VALUES
(1, '2020-11-02 12:01:51', '2021-11-02', '1500', '1800', '1', 1, 1),
(2, '2020-11-02 12:18:17', '2021-11-02', '2000', '2300', '1', 2, 2),
(4, '2020-11-02 13:01:02', '2021-11-02', '1500', '1800', '1', 3, 3);

-- --------------------------------------------------------

--
-- Table structure for table `tblUsers`
--

CREATE TABLE `tblUsers` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `status` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblUsers`
--

INSERT INTO `tblUsers` (`id`, `name`, `email`, `password`, `status`) VALUES
(1, 'admin', 'admin@marinacp.com', 'test123', '1');

-- --------------------------------------------------------

--
-- Table structure for table `tblVehicle`
--

CREATE TABLE `tblVehicle` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `model` varchar(255) NOT NULL,
  `type` varchar(255) NOT NULL,
  `color` varchar(255) DEFAULT NULL,
  `registration_no` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tblVehicle`
--

INSERT INTO `tblVehicle` (`id`, `name`, `model`, `type`, `color`, `registration_no`) VALUES
(1, 'Honda', '2017', 'car', 'black', 'HND-995'),
(2, 'Toyota', '2020', 'truck', 'white', 'ISB-572'),
(3, 'Toyota', '2012 - FJ', 'Truck', 'green', 'AJM-123');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tblBooking`
--
ALTER TABLE `tblBooking`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblDriver`
--
ALTER TABLE `tblDriver`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblMembershipCard`
--
ALTER TABLE `tblMembershipCard`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblUsers`
--
ALTER TABLE `tblUsers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblVehicle`
--
ALTER TABLE `tblVehicle`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tblBooking`
--
ALTER TABLE `tblBooking`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tblDriver`
--
ALTER TABLE `tblDriver`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `tblMembershipCard`
--
ALTER TABLE `tblMembershipCard`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `tblUsers`
--
ALTER TABLE `tblUsers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tblVehicle`
--
ALTER TABLE `tblVehicle`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
