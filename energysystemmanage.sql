-- phpMyAdmin SQL Dump
-- version 4.7.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 05, 2018 at 01:16 PM
-- Server version: 10.1.26-MariaDB
-- PHP Version: 7.1.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `energysystemmanage`
--

-- --------------------------------------------------------

--
-- Table structure for table `analyzer`
--

CREATE TABLE `analyzer` (
  `id` int(11) NOT NULL,
  `name` varchar(30) NOT NULL,
  `status` varchar(30) NOT NULL,
  `totalconsumption` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `analyzer`
--

INSERT INTO `analyzer` (`id`, `name`, `status`, `totalconsumption`) VALUES
(10, 'MF1', '1', 0);

-- --------------------------------------------------------

--
-- Table structure for table `analyzerreading`
--

CREATE TABLE `analyzerreading` (
  `excel_id` int(12) NOT NULL,
  `date` varchar(250) NOT NULL,
  `valueunits` varchar(250) NOT NULL,
  `unit` varchar(250) NOT NULL,
  `analyzerid` int(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `analyzerreading`
--

INSERT INTO `analyzerreading` (`excel_id`, `date`, `valueunits`, `unit`, `analyzerid`) VALUES
(51, '2/4/2017 6:05', '16669293', '', 0),
(52, '2/4/2017 7:05', '16669293', '', 0),
(53, '2/4/2017 8:05', '16669293', '', 0),
(54, '2/4/2017 9:05', '16669293', '', 0),
(55, '2/4/2017 10:05', '16669293', '', 0),
(56, '2/4/2017 11:05', '16670480', '', 0),
(57, '2/4/2017 12:05', '16672071', '', 0),
(58, '2/4/2017 13:05', '16673619', '', 0),
(59, '2/4/2017 14:05', '16675155', '', 0),
(60, '2/4/2017 15:05', '16676698', '', 0),
(61, '2/4/2017 16:05', '16678243', '', 0),
(62, '2/4/2017 17:05', '16679755', '', 0),
(63, '2/4/2017 18:05', '16681215', '', 0),
(64, '2/4/2017 19:05', '16682725', '', 0),
(65, '2/4/2017 20:05', '16684274', '', 0),
(66, '2/4/2017 21:05', '16685833', '', 0),
(67, '2/4/2017 22:05', '16687375', '', 0),
(68, '2/4/2017 23:05', '16688850', '', 0),
(69, '2/5/2017 0:05', '16688850', '', 0),
(70, '2/5/2017 1:05', '16688850', '', 0),
(71, '2/5/2017 2:05', '16688850', '', 0),
(72, '2/5/2017 3:05', '16688850', '', 0),
(73, '2/5/2017 4:05', '16688850', '', 0),
(74, '2/5/2017 5:05', '16688850', '', 0),
(75, '2/5/2017 6:05', '16688850', '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `email`, `password`) VALUES
(1, 'saadat.saad2@gmail.com', 'saadat.saad0@gmail.com', '347602146a923872538f3803eb5f3cef');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `analyzer`
--
ALTER TABLE `analyzer`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `analyzerreading`
--
ALTER TABLE `analyzerreading`
  ADD PRIMARY KEY (`excel_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `analyzer`
--
ALTER TABLE `analyzer`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `analyzerreading`
--
ALTER TABLE `analyzerreading`
  MODIFY `excel_id` int(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=76;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
