-- phpMyAdmin SQL Dump
-- version 4.0.4
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Nov 25, 2019 at 06:38 PM
-- Server version: 5.6.12-log
-- PHP Version: 5.4.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `traffic_offense`
--
CREATE DATABASE IF NOT EXISTS `traffic_offense` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `traffic_offense`;

-- --------------------------------------------------------

--
-- Table structure for table `offence`
--

CREATE TABLE IF NOT EXISTS `offence` (
  `id` int(11) NOT NULL,
  `offence` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `reported_offence`
--

CREATE TABLE IF NOT EXISTS `reported_offence` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `offence_id` varchar(200) NOT NULL,
  `vehicle_no` varchar(200) NOT NULL,
  `driver_license` varchar(300) NOT NULL,
  `name` varchar(500) NOT NULL,
  `address` varchar(1000) NOT NULL,
  `gender` varchar(300) NOT NULL,
  `officer_reporting` varchar(500) NOT NULL,
  `offence` varchar(1000) NOT NULL,
  `date` date NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `reported_offence`
--

INSERT INTO `reported_offence` (`id`, `offence_id`, `vehicle_no`, `driver_license`, `name`, `address`, `gender`, `officer_reporting`, `offence`, `date`) VALUES
(2, '2ce084', 'dfdf', 'fdfdf', 'Nairobi County', '56808-00200', 'Male', 'tobi', 'Riding Motorcycle without crash helmet', '2019-08-07'),
(3, '2ce084', 'dfdf', 'fdfdf', 'Nairobi County', '56808-00200', 'Male', 'tobi', 'Riding Motorcycle without crash helmet', '2019-08-07');

-- --------------------------------------------------------

--
-- Table structure for table `site_settings`
--

CREATE TABLE IF NOT EXISTS `site_settings` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `site_name` varchar(300) NOT NULL,
  `site_desc` varchar(2000) NOT NULL,
  `email` varchar(300) NOT NULL,
  `phone` varchar(300) NOT NULL,
  `address` varchar(500) NOT NULL,
  `city` varchar(300) NOT NULL,
  `country` varchar(300) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `site_settings`
--

INSERT INTO `site_settings` (`id`, `site_name`, `site_desc`, `email`, `phone`, `address`, `city`, `country`) VALUES
(1, 'Traffic Offence', 'Welcome to Traffic Dashboard - a beautiful Traffic Offence System.', 'admin@gmail.com', '+254707932079', 'Mount Kenya University', 'Nairobi', 'Kenya');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE IF NOT EXISTS `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` varchar(200) NOT NULL,
  `name` varchar(500) NOT NULL,
  `username` varchar(300) NOT NULL,
  `pass` varchar(300) NOT NULL,
  `email` varchar(300) NOT NULL,
  `address` varchar(500) NOT NULL,
  `position` varchar(300) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=6 ;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `user_id`, `name`, `username`, `pass`, `email`, `address`, `position`) VALUES
(1, 'bcefa114ee', 'oduor Rodgers', 'admin', '1212', 'admin@gmail.com', 'Mount Kenya University', 'admin'),
(5, '5dea1fd9c3', 'toby ken', 'tobi', 'tobi', 'ayomi@we.com', 'Kasarani', 'officer');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
