-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 14, 2024 at 05:41 PM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `manajemen_pergudangan`
--

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `quantity` int(11) NOT NULL,
  `description` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `name`, `quantity`, `description`, `created_at`, `updated_at`) VALUES
(28, 'Box of A4 Paper', 50, 'Ream of 500 sheets of A4 paper', '2024-07-14 15:40:47', '2024-07-14 15:40:47'),
(29, 'HP LaserJet Toner Cartridge', 20, 'Black toner cartridge for HP LaserJet printers', '2024-07-14 15:40:47', '2024-07-14 15:40:47'),
(30, 'Pack of 10mm Bolts', 100, 'Box of 100 10mm bolts with nuts and washers', '2024-07-14 15:40:47', '2024-07-14 15:40:47'),
(31, 'Samsung 24\" Monitor', 15, '24\" LED monitor with HDMI and VGA ports', '2024-07-14 15:40:47', '2024-07-14 15:40:47'),
(32, 'Case of Coca-Cola', 24, '24 cans of Coca-Cola in a single case', '2024-07-14 15:40:47', '2024-07-14 15:40:47'),
(33, 'Box of 3M Masking Tape', 30, 'Roll of 3M masking tape for painting and crafting', '2024-07-14 15:40:47', '2024-07-14 15:40:47'),
(34, 'Dell Laptop Battery', 10, 'Replacement battery for Dell laptops', '2024-07-14 15:40:47', '2024-07-14 15:40:47'),
(35, 'Pack of AA Batteries', 50, 'Pack of 50 AA batteries for general use', '2024-07-14 15:40:47', '2024-07-14 15:40:47'),
(36, 'Canon Printer Ink Cartridge', 25, 'Color ink cartridge for Canon printers', '2024-07-14 15:40:47', '2024-07-14 15:40:47'),
(37, 'Box of Rubber Gloves', 20, 'Box of 20 pairs of rubber gloves for cleaning and protection', '2024-07-14 15:40:47', '2024-07-14 15:40:47');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
