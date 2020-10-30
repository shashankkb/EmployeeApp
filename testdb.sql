-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Oct 30, 2020 at 02:23 PM
-- Server version: 5.7.31
-- PHP Version: 7.3.21

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `testdb`
--

-- --------------------------------------------------------

--
-- Table structure for table `company`
--

DROP TABLE IF EXISTS `company`;
CREATE TABLE IF NOT EXISTS `company` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `company`
--

INSERT INTO `company` (`id`, `name`) VALUES
(1, 'Company 1'),
(2, 'Company 2'),
(3, 'Company 3'),
(4, 'Company 4'),
(5, 'Company 5'),
(6, 'Company 6');

-- --------------------------------------------------------

--
-- Table structure for table `employee`
--

DROP TABLE IF EXISTS `employee`;
CREATE TABLE IF NOT EXISTS `employee` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `company_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `father_name` varchar(255) NOT NULL,
  `mother_name` varchar(255) NOT NULL,
  `sex` tinyint(4) NOT NULL,
  `spouse_name` varchar(255) DEFAULT NULL,
  `pincode` int(11) NOT NULL,
  `area` varchar(255) NOT NULL,
  `city` varchar(255) NOT NULL,
  `state` varchar(255) NOT NULL,
  `country` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `company_id` (`company_id`)
) ENGINE=MyISAM AUTO_INCREMENT=14 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `employee`
--

INSERT INTO `employee` (`id`, `company_id`, `name`, `father_name`, `mother_name`, `sex`, `spouse_name`, `pincode`, `area`, `city`, `state`, `country`) VALUES
(1, 1, 'Employee 1', 'father 1', 'mother 1', 0, 'spouse 1', 112233, 'area 1', 'city 1', 'state 1', 'country 1'),
(2, 1, 'Employee 2', 'father 2', 'mother 2', 1, 'spouse 2', 112233, 'area 2', 'city 2', 'state 2', 'country 2'),
(3, 1, 'Employee 3', 'father 3', 'mother 3', 1, 'spouse 3', 112233, 'area 3', 'city 3', 'state 3', 'country 3'),
(4, 2, 'Employee 1', 'father 1', 'mother 1', 1, 'spouse 1', 112233, 'area 1', 'city 1', 'state 1', 'country 1'),
(5, 2, 'Employee 2', 'father 2', 'mother 2', 1, 'spouse 2', 112233, 'area 2', 'city 2', 'state 2', 'country 2'),
(6, 3, 'Employee 1', 'father 1', 'mother 1', 1, 'spouse 1', 112233, 'area 1', 'city 1', 'state 1', 'country 1'),
(7, 3, 'Employee 2', 'father 2', 'mother 2', 1, 'spouse 2', 112233, 'area 2', 'city 2', 'state 2', 'country 2'),
(8, 4, 'Employee 1', 'father 1', 'mother 1', 1, 'spouse 1', 112233, 'area 1', 'city 1', 'state 1', 'country 1'),
(9, 4, 'Employee 2', 'father 2', 'mother 2', 1, 'spouse 2', 112233, 'area 2', 'city 2', 'state 2', 'country 2'),
(10, 5, 'Employee 1', 'father 1', 'mother 1', 1, 'spouse 1', 112233, 'area 1', 'city 1', 'state 1', 'country 1'),
(11, 5, 'Employee 2', 'father 2', 'mother 2', 1, 'spouse 2', 112233, 'area 2', 'city 2', 'state 2', 'country 2'),
(12, 6, 'Employee 1', 'father 1', 'mother 1', 1, 'spouse 1', 112233, 'area 1', 'city 1', 'state 1', 'country 1'),
(13, 6, 'Employee 2', 'father 2', 'mother 2', 1, 'spouse 2', 112233, 'area 2', 'city 2', 'state 2', 'country 2');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
