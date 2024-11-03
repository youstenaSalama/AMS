-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 09, 2023 at 10:12 AM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.1.17

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `(auction management system`
--

-- --------------------------------------------------------

--
-- Table structure for table `auctions`
--

CREATE TABLE `auctions` (
  `auction_id` int(11) NOT NULL,
  `auction_name` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `start_date` datetime NOT NULL,
  `end_date` datetime NOT NULL,
  `seller_id` int(11) NOT NULL,
  `image_url` varchar(255) NOT NULL,
  `category_name` varchar(255) NOT NULL,
  `auction_status` enum('active','closed') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `auctions`
--

INSERT INTO `auctions` (`auction_id`, `auction_name`, `description`, `start_date`, `end_date`, `seller_id`, `image_url`, `category_name`, `auction_status`) VALUES
(73, 'toys ', 'toy from 1960s', '2023-05-09 01:00:00', '2023-05-22 01:00:00', 19, '1683587364019.jpg', 'toys', 'active'),
(74, 'villa', '400m villa (sheraton) ', '2023-05-09 01:00:00', '2023-05-22 01:00:00', 19, '1683587589671.jpg', 'home', 'active'),
(75, 'dogs', '4 trainned dogs', '2023-05-09 01:00:00', '2023-05-22 01:00:00', 28, '1683588335297.jpeg', 'pets', 'active'),
(76, 'laptop', 'apple laptop', '2023-05-09 01:00:00', '2023-05-22 01:00:00', 28, '1683588699164.webp', 'electronics', 'active'),
(77, 'farm', 'about 500m', '2023-05-09 01:00:00', '2023-05-22 01:00:00', 28, '1683588808982.jpg', 'farms', 'active'),
(78, 'biscycle', 'amsterdam 8 satin black', '2023-05-09 01:00:00', '2023-05-09 02:34:00', 28, '1683589078350.webp', 'vehicle', 'active'),
(79, 'car', 'BMW 2023', '2023-05-08 23:42:00', '2023-05-08 23:45:00', 19, '1683589307889.webp', 'cars', 'closed'),
(80, 'dogs', 'bla bla bla', '2023-05-08 23:42:00', '2023-05-21 23:00:00', 19, '1683614856064.jpeg', 'pets', 'active'),
(84, 'house', 'house 450m', '2023-05-09 01:42:00', '2023-05-22 01:00:00', 19, '1683616675490.jpg', 'Home', 'active');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `auctions`
--
ALTER TABLE `auctions`
  ADD PRIMARY KEY (`auction_id`),
  ADD KEY `auction_const_id` (`seller_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `auctions`
--
ALTER TABLE `auctions`
  MODIFY `auction_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=85;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `auctions`
--
ALTER TABLE `auctions`
  ADD CONSTRAINT `auction_const_id` FOREIGN KEY (`seller_id`) REFERENCES `users` (`user_id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
