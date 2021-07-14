-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Apr 09, 2020 at 03:22 PM
-- Server version: 5.7.26
-- PHP Version: 7.2.18

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `bikerental`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

DROP TABLE IF EXISTS `admin`;
CREATE TABLE IF NOT EXISTS `admin` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `Emailid` varchar(10) NOT NULL,
  `Password` varchar(10) NOT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`Id`, `Emailid`, `Password`) VALUES
(1, 'admin@123', 'admin123');

-- --------------------------------------------------------

--
-- Table structure for table `booking`
--

DROP TABLE IF EXISTS `booking`;
CREATE TABLE IF NOT EXISTS `booking` (
  `Id` int(30) NOT NULL AUTO_INCREMENT,
  `Bikeid` varchar(50) DEFAULT NULL,
  `Useremailid` varchar(50) NOT NULL,
  `Fromdate` varchar(10) NOT NULL,
  `Todate` varchar(10) NOT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=MyISAM AUTO_INCREMENT=29 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `booking`
--

INSERT INTO `booking` (`Id`, `Bikeid`, `Useremailid`, `Fromdate`, `Todate`) VALUES
(1, NULL, 'harshada@gmail.com', '01/04/2020', '02/04/2010'),
(19, '8', 'sanket@gmail.com', '02/04/2020', '04/04/2020'),
(17, '7', 'harshada@gmail.com', '21/03/2020', '22/03/2020'),
(18, '8', 'harshada@gmail.com', '01/04/2020', '02/04/2010'),
(20, '7', 'sanket@gmail.com', '02/04/2020', '04/04/2020'),
(21, '7', 'sanket@gmail.com', '21/03/2020', '22/03/2020'),
(22, '7', 'sanket@gmail.com', '21/03/2020', '22/03/2020'),
(23, '7', 'sanket@gmail.com', '02/04/2020', '02/04/2020'),
(24, '11', 'sanket@gmail.com', '01/04/2020', '02/04/2010'),
(25, '12', 'sanket@gmail.com', '02/04/2020', '02/04/2020'),
(26, '12', 'sanket@gmail.com', '21/03/2020', '22/03/2020'),
(27, '12', 'sanket@gmail.com', '21/03/2020', '22/03/2020'),
(28, '12', 'harshada@gmail.com', '01/04/2020', '02/04/2010');

-- --------------------------------------------------------

--
-- Table structure for table `brand`
--

DROP TABLE IF EXISTS `brand`;
CREATE TABLE IF NOT EXISTS `brand` (
  `Id` int(30) NOT NULL AUTO_INCREMENT,
  `Brand` varchar(50) NOT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `brand`
--

INSERT INTO `brand` (`Id`, `Brand`) VALUES
(1, 'Honda'),
(2, 'Hero'),
(3, 'TVS'),
(4, 'Suzuki'),
(5, 'Yahama');

-- --------------------------------------------------------

--
-- Table structure for table `postbike`
--

DROP TABLE IF EXISTS `postbike`;
CREATE TABLE IF NOT EXISTS `postbike` (
  `Id` int(30) NOT NULL AUTO_INCREMENT,
  `Name` varchar(10) NOT NULL,
  `Brand` varchar(10) NOT NULL,
  `Overview` varchar(50) NOT NULL,
  `Rupees` varchar(50) NOT NULL,
  `Modelyear` varchar(5) NOT NULL,
  `Image1` varchar(80) NOT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=MyISAM AUTO_INCREMENT=14 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `postbike`
--

INSERT INTO `postbike` (`Id`, `Name`, `Brand`, `Overview`, `Rupees`, `Modelyear`, `Image1`) VALUES
(7, 'scooty', 'TVS', 'jknkj,lkokpop,', '330', '2018', 'img123.jpg'),
(13, 'Bullet', 'Honda', 'It is nice and little much heavy to handle', '600', '2018', 'IMG-20200402-WA0014.jpg'),
(10, 'bjnkjk', 'Suzuki', 'gyugjhknkl,;', '3320', '2010', 'IMG-20200324-WA0025.jpg'),
(11, 'bjnkjk', 'Suzuki', 'gyugjhknkl,;', '3320', '2010', 'IMG-20200324-WA0025.jpg'),
(12, 'abcdef', 'TVS', 'gfkvgjbyliunolo', '330', '2010', 'img123.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
CREATE TABLE IF NOT EXISTS `user` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `Name` varchar(30) NOT NULL,
  `Emailid` varchar(20) NOT NULL,
  `Contact` varchar(10) NOT NULL,
  `Addhar` varchar(13) NOT NULL,
  `Age` varchar(11) NOT NULL,
  `City` varchar(20) NOT NULL,
  `Password` varchar(10) NOT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`Id`, `Name`, `Emailid`, `Contact`, `Addhar`, `Age`, `City`, `Password`) VALUES
(1, 'Harshada Kamble', 'harshada@gmail.com', '7896754321', '8732415678903', '21', 'vasai', 'harshada'),
(2, 'Sanket Bhoir', 'sanket@gmail.com', '9746784678', '2910875647890', '22', 'vasai', 'sanket123'),
(3, 'Chintan Pandey', 'chintan@1gmail.com', '9048930907', '7894590946789', '22', 'Palghar', 'chintan');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
