-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 23, 2021 at 12:26 PM
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
('param', 'param@gmail.com', '12345678'),
('abhi', 'abhi@gmail.com', '987654321'),
('devarsh shah', 'devarsh@gmail.com', '12345678'),
('dhairya', 'dhairya@gmail.co', '12345'),
('priyank', 'priyank@gmail.com', '12345678'),
('raman', 'raman@gmail.com', '1234567'),
('rama', 'rama@gmail.com', '12345678'),
('ankur', 'ankur@gmail.com', 'ankur12'),
('khush', 'khush@gmail.com', '123456'),
('', '', ''),
('Manoj', 'manoj@gmail.com', '12345678'),
('Doremon', 'doremon@gmail.com', '12345678');

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
(7, '2021-05-13 07:36:55', 'priyank', 21, 'padra', 'priyank@gmail.com', '9879879874'),
(9, '2021-05-13 08:37:01', 'Abhi Patel', 28, 'Gandhinagar', 'abhi@gmail.com', '7894561234'),
(10, '2021-05-13 08:59:55', 'devarsh', 22, 'anand', 'devarsh@gmail.com', '1234567890'),
(11, '2021-05-18 06:11:23', 'priyank', 28, 'botad', 'priyank@gmail.com', '9998882525'),
(12, '2021-05-23 16:00:35', 'Chotta bheem', 23, 'dhokalpur', 'bheem@gmail.com', '1112223334'),
(14, '2021-05-23 17:03:47', 'rakesh', 12, 'vrundavan', 'rakesh@g.com', '9876543210'),
(15, '2021-05-24 07:12:43', 'Jasbir', 41, 'Pune', 'jasbir@gmail.com', '9879876540'),
(16, '2021-05-24 07:13:40', 'Manav', 24, 'surat', 'manav@gcet.ac.in', '9859859856'),
(17, '2021-05-25 08:06:41', 'Bunty', 23, 'vadodara', 'bunty@gmail.com', '9879658879'),
(18, '2021-05-25 08:08:09', 'harsh', 19, 'surat', 'harsh@gcet.ac.in', '9638527410'),
(19, '2021-05-25 08:53:52', 'Arth', 20, 'vadodara', 'arth@gmail.com', '7894561230'),
(21, '2021-05-25 09:17:02', 'montu', 20, 'vadodara', 'montu@gmail.com', '9876543210');

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
  MODIFY `ID` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
