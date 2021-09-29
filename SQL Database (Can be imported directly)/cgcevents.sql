-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 15, 2021 at 10:33 AM
-- Server version: 10.4.17-MariaDB
-- PHP Version: 8.0.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `cgcevents`
--

-- --------------------------------------------------------

--
-- Table structure for table `contactd`
--

CREATE TABLE `contactd` (
  `srno` int(255) NOT NULL,
  `name` varchar(30) NOT NULL,
  `rollno` int(7) NOT NULL,
  `email` varchar(30) NOT NULL,
  `number1` bigint(14) NOT NULL,
  `queries` varchar(9999) NOT NULL,
  `dateandtime` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `e1que`
--

CREATE TABLE `e1que` (
  `srno` int(99) NOT NULL,
  `name` varchar(20) NOT NULL,
  `rollno` int(7) NOT NULL,
  `email` varchar(30) NOT NULL,
  `number1` bigint(14) NOT NULL,
  `department` varchar(30) NOT NULL,
  `college` varchar(30) NOT NULL,
  `question` varchar(999) NOT NULL,
  `dateandtime` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `e1reg`
--

CREATE TABLE `e1reg` (
  `srno` int(99) NOT NULL,
  `name` varchar(20) NOT NULL,
  `rollno` int(7) NOT NULL,
  `email` varchar(30) NOT NULL,
  `number1` bigint(14) NOT NULL,
  `department` varchar(31) NOT NULL,
  `college` varchar(30) NOT NULL,
  `dateandtime` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `mcord`
--

CREATE TABLE `mcord` (
  `srno` int(99) NOT NULL,
  `name` varchar(20) NOT NULL,
  `rollno` int(7) NOT NULL,
  `email` varchar(30) NOT NULL,
  `number1` bigint(14) NOT NULL,
  `department` varchar(30) NOT NULL,
  `college` varchar(30) NOT NULL,
  `dateandtime` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `pcord`
--

CREATE TABLE `pcord` (
  `srno` int(99) NOT NULL,
  `name` varchar(20) NOT NULL,
  `rollno` int(7) NOT NULL,
  `email` varchar(30) NOT NULL,
  `number1` bigint(14) NOT NULL,
  `department` varchar(31) NOT NULL,
  `college` varchar(30) NOT NULL,
  `duty` varchar(20) NOT NULL,
  `prevcord` varchar(5) NOT NULL,
  `dateandtime` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `ppart`
--

CREATE TABLE `ppart` (
  `srno` int(99) NOT NULL,
  `name` varchar(20) NOT NULL,
  `rollno` int(7) NOT NULL,
  `email` varchar(30) NOT NULL,
  `number1` bigint(14) NOT NULL,
  `department` varchar(31) NOT NULL,
  `college` varchar(30) NOT NULL,
  `activity` varchar(20) NOT NULL,
  `prevpart` varchar(5) NOT NULL,
  `dateandtime` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `contactd`
--
ALTER TABLE `contactd`
  ADD PRIMARY KEY (`srno`);

--
-- Indexes for table `e1que`
--
ALTER TABLE `e1que`
  ADD PRIMARY KEY (`srno`),
  ADD UNIQUE KEY `rollno` (`rollno`);

--
-- Indexes for table `e1reg`
--
ALTER TABLE `e1reg`
  ADD PRIMARY KEY (`srno`),
  ADD UNIQUE KEY `rollno` (`rollno`);

--
-- Indexes for table `mcord`
--
ALTER TABLE `mcord`
  ADD PRIMARY KEY (`srno`),
  ADD UNIQUE KEY `rollno` (`rollno`);

--
-- Indexes for table `pcord`
--
ALTER TABLE `pcord`
  ADD PRIMARY KEY (`srno`),
  ADD UNIQUE KEY `rollno` (`rollno`);

--
-- Indexes for table `ppart`
--
ALTER TABLE `ppart`
  ADD PRIMARY KEY (`srno`),
  ADD UNIQUE KEY `rollno` (`rollno`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `contactd`
--
ALTER TABLE `contactd`
  MODIFY `srno` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `e1que`
--
ALTER TABLE `e1que`
  MODIFY `srno` int(99) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT for table `e1reg`
--
ALTER TABLE `e1reg`
  MODIFY `srno` int(99) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;

--
-- AUTO_INCREMENT for table `mcord`
--
ALTER TABLE `mcord`
  MODIFY `srno` int(99) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT for table `pcord`
--
ALTER TABLE `pcord`
  MODIFY `srno` int(99) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `ppart`
--
ALTER TABLE `ppart`
  MODIFY `srno` int(99) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
