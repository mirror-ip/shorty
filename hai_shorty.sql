-- phpMyAdmin SQL Dump
-- version 5.2.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 03, 2025 at 10:42 AM
-- Server version: 11.8.0-MariaDB
-- PHP Version: 8.4.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `hai_shorty`
--

-- --------------------------------------------------------

--
-- Table structure for table `urls`
--

CREATE TABLE `urls` (
  `id` int(10) UNSIGNED NOT NULL,
  `url` varchar(1000) NOT NULL,
  `created` datetime NOT NULL,
  `accessed` datetime DEFAULT NULL,
  `hits` int(10) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci;

--
-- Dumping data for table `urls`
--

INSERT INTO `urls` (`id`, `url`, `created`, `accessed`, `hits`) VALUES
(1, 'http://www.google.com', '2025-04-01 13:26:11', '2025-04-02 16:01:17', 13),
(2, 'http://www.facebook.com', '2025-04-01 14:19:07', '2025-04-02 15:55:57', 6),
(3, 'http://e.quangai.net', '2025-04-01 14:22:23', '2025-04-01 15:40:15', 3),
(4, 'https://vnexpress.net/', '2025-04-02 05:31:25', '2025-04-02 15:56:17', 3),
(5, 'http://viettel.vn', '2025-04-02 06:41:41', '2025-04-02 15:32:34', 3),
(6, 'https://m.soha.vn/la-nguoi-tung-thu-den-40-dien-thoai-nam-day-la-mau-may-toi-muon-gan-bo-nhat-thay-vi-iphone-hay-samsung-198250331223126024.htm', '2025-04-02 07:05:01', '2025-04-02 15:33:08', 2),
(7, 'https://m.me/haildh', '2025-04-02 10:30:31', '2025-04-02 15:33:28', 2),
(8, 'https://www.w3schools.com/', '2025-04-02 16:10:20', NULL, 0),
(9, 'http://wowotech.net/', '2025-04-02 16:21:57', '2025-04-02 16:22:00', 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `urls`
--
ALTER TABLE `urls`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `url` (`url`) USING HASH;

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `urls`
--
ALTER TABLE `urls`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
