-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 13, 2021 at 09:59 AM
-- Server version: 10.4.19-MariaDB
-- PHP Version: 8.0.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `gymlogin`
--

-- --------------------------------------------------------

--
-- Table structure for table `signup`
--

CREATE TABLE `signup` (
  `username` varchar(20) NOT NULL,
  `email` varchar(30) NOT NULL,
  `password` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `signup`
--

INSERT INTO `signup` (`username`, `email`, `password`) VALUES
('rakshit', 'rakshit17p@gmail.com', '12345678'),
('Prince Patel', 'pp2104@gmail.com', '12345678'),
('soumya', 's@gmail.com', '12345678'),
('raj', 'raj@2.com', '12345678'),
('hritik shah', 'hritik@gmail.com', '987654321'),
('jaydeep', 'jd@gmail.com', '12345678'),
('vraj patel', 'vraj@gmail.com', '12345678'),
('ayush', 'ayush@gmail.com', '12345678'),
('param', 'param@gmail.com', '12345678');

-- --------------------------------------------------------

--
-- Table structure for table `trainer`
--

CREATE TABLE `trainer` (
  `ID` int(20) NOT NULL,
  `Date` timestamp NOT NULL DEFAULT current_timestamp(),
  `name` varchar(50) NOT NULL,
  `age` int(10) NOT NULL,
  `city` varchar(20) NOT NULL,
  `email` varchar(20) NOT NULL,
  `phone` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `trainer`
--

INSERT INTO `trainer` (`ID`, `Date`, `name`, `age`, `city`, `email`, `phone`) VALUES
(1, '2021-05-13 05:21:00', 'Ayush Patel', 22, 'Anand', 'ayush@gmail.com', '2147483647'),
(2, '2021-05-13 05:26:01', 'rakshit', 20, 'vadodara', 'rakshit17p@gmail.com', '9427846144'),
(3, '2021-05-13 05:28:38', 'prince patel', 23, 'anand', 'pp2104@gmail.com', '9998882220'),
(4, '2021-05-13 05:29:52', 'soumya', 0, 'borsad', 'S@gmail.com', '9876543221'),
(5, '2021-05-13 05:30:59', 'raj', 45, 'bharuch', 'raj@gmail.com', '9428585302'),
(6, '2021-05-13 05:33:07', 'hritik shah', 22, 'mehsana', 'hritik@gmail.com', '1234567890'),
(7, '2021-05-13 07:36:55', 'priyank', 21, 'padra', 'priyank@gmail.com', '9879879874');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `trainer`
--
ALTER TABLE `trainer`
  ADD PRIMARY KEY (`ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `trainer`
--
ALTER TABLE `trainer`
  MODIFY `ID` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
