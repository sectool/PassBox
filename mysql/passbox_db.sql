-- phpMyAdmin SQL Dump
-- version 4.6.5.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 01, 2017 at 01:17 AM
-- Server version: 10.1.21-MariaDB
-- PHP Version: 7.1.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `passbox_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `password_database_tb`
--

CREATE TABLE `password_database_tb` (
  `u_id` int(10) NOT NULL,
  `account_name` varchar(50) COLLATE utf8mb4_turkish_ci NOT NULL,
  `username` varchar(50) COLLATE utf8mb4_turkish_ci NOT NULL,
  `password` varchar(50) COLLATE utf8mb4_turkish_ci NOT NULL,
  `email_address` varchar(50) COLLATE utf8mb4_turkish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_turkish_ci;

--
-- Dumping data for table `password_database_tb`
--

INSERT INTO `password_database_tb` (`u_id`, `account_name`, `username`, `password`, `email_address`) VALUES
(2, 'github', 'ismailtasdelen', '5110passDb', 'ismailtasdelen@std.sehir.edu.tr'),
(3, 'facebook', 'user123', 'pass123', 'user123@gmail.com'),
(4, 'sadsa', 'asdsad', 'asdas', 'dasasd');

-- --------------------------------------------------------

--
-- Table structure for table `users_tb`
--

CREATE TABLE `users_tb` (
  `id` int(10) NOT NULL,
  `fullname` varchar(50) CHARACTER SET utf8 NOT NULL,
  `username` varchar(50) CHARACTER SET utf8 NOT NULL,
  `password` varchar(50) CHARACTER SET utf8 NOT NULL,
  `email_address` varchar(50) CHARACTER SET utf8 NOT NULL,
  `mobile_number` varchar(50) CHARACTER SET utf8 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_turkish_ci;

--
-- Dumping data for table `users_tb`
--

INSERT INTO `users_tb` (`id`, `fullname`, `username`, `password`, `email_address`, `mobile_number`) VALUES
(3, '?smail Ta?delen', 'root', 'toor', 'ismailtasdelen@std.sehir.edu.tr', '+905342959431');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `password_database_tb`
--
ALTER TABLE `password_database_tb`
  ADD PRIMARY KEY (`u_id`),
  ADD KEY `u_id` (`u_id`);

--
-- Indexes for table `users_tb`
--
ALTER TABLE `users_tb`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id` (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `password_database_tb`
--
ALTER TABLE `password_database_tb`
  MODIFY `u_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `users_tb`
--
ALTER TABLE `users_tb`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
