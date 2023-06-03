-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Mar 21, 2023 at 04:56 AM
-- Server version: 8.0.31
-- PHP Version: 8.0.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `bus_depo`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

DROP TABLE IF EXISTS `admin`;
CREATE TABLE IF NOT EXISTS `admin` (
  `uname` varchar(30) DEFAULT NULL,
  `upass` varchar(50) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`uname`, `upass`) VALUES
('Admin', 'admin123');

-- --------------------------------------------------------

--
-- Table structure for table `bus_tbl`
--

DROP TABLE IF EXISTS `bus_tbl`;
CREATE TABLE IF NOT EXISTS `bus_tbl` (
  `bid` int NOT NULL AUTO_INCREMENT,
  `bname` varchar(100) NOT NULL,
  `bsource` varchar(100) NOT NULL,
  `bdestination` varchar(100) NOT NULL,
  `btime` varchar(100) NOT NULL,
  `bticketprice` double NOT NULL,
  PRIMARY KEY (`bid`),
  UNIQUE KEY `bid` (`bid`),
  UNIQUE KEY `bid_2` (`bid`)
) ENGINE=MyISAM AUTO_INCREMENT=107 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `bus_tbl`
--

INSERT INTO `bus_tbl` (`bid`, `bname`, `bsource`, `bdestination`, `btime`, `bticketprice`) VALUES
(101, 'PMPL', 'Akurdi', 'Pimpri', '09.00', 2),
(102, 'PMPL', 'Shivaji nagar', 'Pimpri', '11.00', 20),
(103, 'PMPL', 'Sangavi', 'Baner', '11.00', 5),
(106, 'PMPL', 'Kothrud', 'Baner', '01.00', 10);

-- --------------------------------------------------------

--
-- Table structure for table `feedback_tbl`
--

DROP TABLE IF EXISTS `feedback_tbl`;
CREATE TABLE IF NOT EXISTS `feedback_tbl` (
  `feedback` varchar(500) NOT NULL,
  `username` varchar(100) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `feedback_tbl`
--

INSERT INTO `feedback_tbl` (`feedback`, `username`) VALUES
('This website is very good for booking ticket', 'Devendra'),
('Very good website.', 'Yatinnk'),
('This is good web site', 'Devendra');

-- --------------------------------------------------------

--
-- Table structure for table `passenger_tbl`
--

DROP TABLE IF EXISTS `passenger_tbl`;
CREATE TABLE IF NOT EXISTS `passenger_tbl` (
  `puname` varchar(50) NOT NULL,
  `ppass` varchar(50) DEFAULT NULL,
  `pfullname` varchar(100) DEFAULT NULL,
  `paddress` varchar(100) DEFAULT NULL,
  `pmob` varchar(14) DEFAULT NULL,
  `pemail` varchar(100) DEFAULT NULL,
  `page` int NOT NULL,
  `padharnumber` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `pimage` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `pdob` date DEFAULT NULL,
  PRIMARY KEY (`puname`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `passenger_tbl`
--

INSERT INTO `passenger_tbl` (`puname`, `ppass`, `pfullname`, `paddress`, `pmob`, `pemail`, `page`, `padharnumber`, `pimage`, `pdob`) VALUES
('Devendra', 'deven@123', 'Devendra Gokul Bhole', 'pune', '9764715488', 'devendrabhole3369@gmail.com', 21, '123434551234', 'uploads/passengermale.jpg', '2000-11-09'),
('Yatinnk', 'Yatin@123', 'Yatin Narkhede', 'pune', '9158856720', 'yatin@gmail.com', 21, '789478947894', 'uploads/passengermale1.jpg', '2001-09-23'),
('Lokesh', 'Lokesh@123', 'Lokesh Bhamare', 'Pune', '9876549876', 'lokesh@gmail.com', 23, '506212235669', 'uploads/passengermale.jpg', '1999-08-31');

-- --------------------------------------------------------

--
-- Table structure for table `pass_tbl`
--

DROP TABLE IF EXISTS `pass_tbl`;
CREATE TABLE IF NOT EXISTS `pass_tbl` (
  `passid` int NOT NULL AUTO_INCREMENT,
  `pfullname` varchar(50) DEFAULT NULL,
  `padharnumber` varchar(100) NOT NULL,
  `pmobileno` varchar(100) NOT NULL,
  `page` int DEFAULT NULL,
  `pgender` varchar(50) DEFAULT NULL,
  `pstartdate` date DEFAULT NULL,
  `penddate` date DEFAULT NULL,
  `pprice` varchar(100) NOT NULL,
  `pduration` varchar(100) NOT NULL,
  `pstatus` varchar(100) NOT NULL,
  `pusername` varchar(100) NOT NULL,
  `ppaymentmode` varchar(100) NOT NULL,
  PRIMARY KEY (`passid`)
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `pass_tbl`
--

INSERT INTO `pass_tbl` (`passid`, `pfullname`, `padharnumber`, `pmobileno`, `page`, `pgender`, `pstartdate`, `penddate`, `pprice`, `pduration`, `pstatus`, `pusername`, `ppaymentmode`) VALUES
(1, 'Devendra Gokul Bhole', '123412341234', '9764715488', 21, 'Male', '2023-02-16', '2023-03-16', '100', 'One Month', 'Confirm', 'Devendra', 'UPI'),
(3, 'Yatin Narkhede', '123456788765', '9158856720', 21, 'Male', '2023-02-28', '2023-03-28', '100', 'One Month', 'Confirm', 'Yatinnk', 'UPI'),
(7, 'Lokesh Bhamare', '506212235669', '9876549876', 23, 'Male', '2023-03-20', '2023-04-20', '100', 'one', 'Confirm', 'Lokesh', 'Debit card or Credit card');

-- --------------------------------------------------------

--
-- Table structure for table `ticket_tbl`
--

DROP TABLE IF EXISTS `ticket_tbl`;
CREATE TABLE IF NOT EXISTS `ticket_tbl` (
  `tid` int NOT NULL AUTO_INCREMENT,
  `bid` varchar(50) DEFAULT NULL,
  `btime` varchar(100) NOT NULL,
  `puname` varchar(100) DEFAULT NULL,
  `bsource` varchar(100) DEFAULT NULL,
  `bdestination` varchar(100) DEFAULT NULL,
  `page` int DEFAULT NULL,
  `pgender` varchar(50) DEFAULT NULL,
  `btqty` varchar(100) NOT NULL,
  `bticketprice` varchar(100) NOT NULL,
  `tusername` varchar(100) NOT NULL,
  `tstatus` varchar(100) NOT NULL,
  `tpaymentmode` varchar(100) NOT NULL,
  PRIMARY KEY (`tid`)
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `ticket_tbl`
--

INSERT INTO `ticket_tbl` (`tid`, `bid`, `btime`, `puname`, `bsource`, `bdestination`, `page`, `pgender`, `btqty`, `bticketprice`, `tusername`, `tstatus`, `tpaymentmode`) VALUES
(3, '103', '11.00', 'Devendra Bhole', 'Sangavi', 'Baner', 21, 'Male', '4', '20', 'Devendra', 'Confirm', 'UPI'),
(4, '105', '12.00', 'yatin narhedhe', 'sangavi', 'Akurdi', 23, 'Male', '4', '20', 'Yatinnk', 'Confirm', 'UPI'),
(8, '103', '11.00', 'Lokesh Bhamare', 'Sangavi', 'Baner', 18, 'Male', '2', '10', 'Lokesh', 'Confirm', 'Debit card or Credit card');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
