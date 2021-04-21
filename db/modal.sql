-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3307
-- Generation Time: Apr 21, 2021 at 11:14 AM
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
-- Database: `modal`
--

-- --------------------------------------------------------

--
-- Table structure for table `filters`
--

CREATE TABLE `filters` (
  `id` int(11) NOT NULL,
  `filterName` varchar(50) NOT NULL,
  `field1` varchar(30) NOT NULL,
  `field2` varchar(30) NOT NULL,
  `textValue` varchar(50) NOT NULL,
  `field3` varchar(30) NOT NULL,
  `field4` varchar(30) NOT NULL,
  `numValue` varchar(11) NOT NULL,
  `field5` varchar(30) NOT NULL,
  `field6` varchar(30) NOT NULL,
  `dateValue` varchar(18) NOT NULL,
  `selection` enum('all','one','none','') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `filters`
--

INSERT INTO `filters` (`id`, `filterName`, `field1`, `field2`, `textValue`, `field3`, `field4`, `numValue`, `field5`, `field6`, `dateValue`, `selection`) VALUES
(1, 'testfilter', 'none', 'none', 'xxx', 'xxx', 'xxx', '11', 'xxx', 'xxx', '2021-04-07', 'all'),
(7, 'Filter 002x', 'owner', 'includes', 'rt', 'pages', 'exactly', '10', 'creation', 'before', '2020-05-05', 'one'),
(8, 'Filter 002x', 'title', 'starts', 'rt', 'rows', 'more', '200', 'approval', 'after', '2015-05-05', 'all'),
(9, 'Filter xx7', 'title', 'starts', '', 'size', 'less', '', 'creation', 'on', '2021-04-29', 'all'),
(11, 'S-Filter', '', '', '', 'size', 'less', '1024', '', '', '', 'all'),
(12, 'Lost Filter', 'title', 'includes', 'Lost', '', '', '', '', '', '', 'all'),
(13, 'Happy Coding !!! :)', 'contents', 'ends', 'Happy Coding !!! :)', 'pages', 'more', '1', 'creation', 'on', '2021-04-21', 'all'),
(14, 'No Date', '', '', '', '', '', '', 'creation', 'on', '2003-02-13', 'none');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `filters`
--
ALTER TABLE `filters`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `filters`
--
ALTER TABLE `filters`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
