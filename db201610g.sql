-- phpMyAdmin SQL Dump
-- version 4.7.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 12, 2020 at 05:29 PM
-- Server version: 10.1.24-MariaDB
-- PHP Version: 7.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db201610g`
--

-- --------------------------------------------------------

--
-- Table structure for table `categorytype`
--

CREATE TABLE `categorytype` (
  `id` int(11) NOT NULL,
  `Name` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `categorytype`
--

INSERT INTO `categorytype` (`id`, `Name`) VALUES
(1, 'laptop'),
(2, 'mouse'),
(3, 'mobile'),
(4, 'house'),
(5, 'iphone'),
(6, 'BOOTLE');

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `id` int(11) NOT NULL,
  `Name` varchar(100) NOT NULL,
  `Price` float NOT NULL,
  `Quantity` int(11) NOT NULL,
  `DiscountPercentage` float NOT NULL,
  `AddDate` datetime NOT NULL,
  `ModifyDate` datetime DEFAULT NULL,
  `imageName` varchar(100) DEFAULT NULL,
  `CategoryID` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`id`, `Name`, `Price`, `Quantity`, `DiscountPercentage`, `AddDate`, `ModifyDate`, `imageName`, `CategoryID`) VALUES
(1, 'abc', 2000, 10, 10, '2018-11-26 00:00:00', '2018-11-26 00:00:00', '1255740350_739636550S.png', 3),
(2, 'abc', 300, 20, 20, '2018-11-26 00:00:00', '2018-11-26 00:00:00', '1416620560_525320363E.png', 2),
(3, 'abc', 1000, 4, 10, '2018-12-10 00:00:00', '2018-12-10 00:00:00', '927426879_2111895606', 3);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categorytype`
--
ALTER TABLE `categorytype`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`id`),
  ADD KEY `CategoryID` (`CategoryID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `categorytype`
--
ALTER TABLE `categorytype`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `product`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `product`
--
ALTER TABLE `product`
  ADD CONSTRAINT `product_ibfk_1` FOREIGN KEY (`CategoryID`) REFERENCES `categorytype` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
