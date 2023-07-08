-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 08, 2023 at 01:57 PM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `coincount`
--

-- --------------------------------------------------------

--
-- Table structure for table `transactions`
--

CREATE TABLE `transactions` (
  `email` varchar(100) NOT NULL,
  `id` int(11) NOT NULL,
  `description` varchar(255) NOT NULL,
  `amount` decimal(10,2) NOT NULL,
  `month` date NOT NULL,
  `date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `transactions`
--

INSERT INTO `transactions` (`email`, `id`, `description`, `amount`, `month`, `date`) VALUES
('abhay@gmail.com', 16, 'second', '200.00', '2023-07-06', '0000-00-00'),
('abhay@gmail.com', 20, 'second', '100.00', '2023-06-08', '0000-00-00'),
('abhay@gmail.com', 21, 'first', '20.00', '2023-06-05', '0000-00-00'),
('abhay@gmail.com', 32, 'Car Servicing', '1000.00', '2023-07-06', '0000-00-00'),
('j@gmail.com', 33, 'journey', '1000.00', '2023-07-06', '0000-00-00'),
('j@gmail.com', 34, 'Car Servicing', '10000.00', '2023-07-07', '0000-00-00'),
('j@gmail.com', 35, 'machinery', '1000.00', '2023-06-06', '0000-00-00'),
('j@gmail.com', 36, 'fees', '500.00', '2023-07-07', '0000-00-00'),
('j@gmail.com', 37, 'journey', '3000.00', '2023-05-06', '0000-00-00');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(255) NOT NULL,
  `salary` int(50) NOT NULL,
  `credit_score` int(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `salary`, `credit_score`) VALUES
(3, 'name', 'nagrahari31@gmail.com', 'naman', 300000, 0),
(5, 'name', 'abhay@gmail.com', 'abhay', 100000, 20),
(7, 'Ajay Parmar', 'j@gmail.com', 'ajay123', 300000, 230);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `transactions`
--
ALTER TABLE `transactions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `transactions`
--
ALTER TABLE `transactions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
