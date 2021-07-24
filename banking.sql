-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 22, 2021 at 05:51 PM
-- Server version: 10.4.20-MariaDB
-- PHP Version: 8.0.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `sparks_bank`
--
CREATE DATABASE IF NOT EXISTS `sparks_bank` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `sparks_bank`;

-- --------------------------------------------------------

--
-- Table structure for table `transaction`
--

CREATE TABLE `transaction` (
  `sno` int(4) NOT NULL,
  `sender` text NOT NULL,
  `receiver` text NOT NULL,
  `balance` int(8) NOT NULL,
  `datetime` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `transaction`
--

INSERT INTO `transaction` (`sno`, `sender`, `receiver`, `balance`, `datetime`) VALUES
(1, 'ram', 'gorry', 0, '2021-07-21 18:10:17'),
(2, 'ram', 'ayushi', 0, '2021-07-21 19:12:59'),
(0, 'ram', 'mayur', 50, '2021-07-21 21:28:28'),
(0, 'priya', 'ayushi', 1500, '2021-07-21 21:39:03');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(3) NOT NULL,
  `name` text NOT NULL,
  `email` varchar(30) NOT NULL,
  `balance` int(8) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `balance`) VALUES
(1, 'ayushi', 'ayushusavaldekar@gmail.com', 1505),
(2, 'ram', 'ram@gmail.com', 955),
(3, 'mayur', 'mayur7@gmail.com', 2550),
(4, 'aman', 'aman56@gmail.com', 5000),
(4, 'Rani', 'ranikumari@gmail.com', 10000),
(5, 'Raj', 'raj87@yahoo.com', 15000),
(6, 'shreya', 'shreya12nk@yahoo.com', 20000),
(6, 'Priti', 'Priti789@gmail.com', 5000),
(7, 'priya', 'priyasingh@gmail.com', 34500),
(8, 'Darsh', 'KumarDarsh@gmail.com', 6300),
(9, 'Payal', 'PayalD@yahoo.com', 5697),
(10, 'Sakshi', 'Sakshib@gmail.com', 9633);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
