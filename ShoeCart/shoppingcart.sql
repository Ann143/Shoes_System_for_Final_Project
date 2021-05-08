-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 08, 2021 at 03:34 AM
-- Server version: 10.4.17-MariaDB
-- PHP Version: 7.4.13

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `shoppingcart`
--

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE `cart` (
  `id` int(11) NOT NULL,
  `product_name` varchar(100) NOT NULL,
  `price` varchar(50) NOT NULL,
  `product_image` varchar(255) NOT NULL,
  `quantity` int(100) NOT NULL,
  `total_price` varchar(100) NOT NULL,
  `product_code` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `phone` varchar(20) NOT NULL,
  `address` varchar(255) NOT NULL,
  `pmode` varchar(50) NOT NULL,
  `products` varchar(255) NOT NULL,
  `amount_paid` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `name`, `email`, `phone`, `address`, `pmode`, `products`, `amount_paid`) VALUES
(1, 'adsf', 'sdgdfg@gmail.com', '2343254', 'ertfsdfgfdg', 'cod', 'LEBRON WITNESS(1)', '6666.5'),
(2, 'adsdfsd', 'sdfsd@gmail.com', '234325', 'ddsfsdvfg', 'cards', 'LEBRON SOLDIER(1), LEBRON WITNESS V WHITE(2), ULTRABOOST(4), NIKE LEBRON XVII LOW(2)', '20000'),
(3, 'fgfh', 'cn@gmail.com', '3435', 'sdfvsd', 'cod', 'LEBRON WITNESS(0), NIKE LEBRON XVII (PS)(2)', '6000'),
(4, 'dvds', 'ad@gmail.com', '2342345', 'gdf', 'cod', 'LEBRON WITNESS V WHITE(0), NIKE LEBRON XVII LOW(1)', '3000'),
(5, 'Ann', 'dssf@gmail.com', '2133', 'sdcfsfdfc', 'cod', 'LEBRON SOLDIER(0), LEBRON WITNESS WHITE(0), NIKE LEBRON XVII LOW(1)', '3000'),
(6, 'sdfsdf', 'ggf@gmail.com', '2353465', 'dfbgvdf', 'netbanking', 'LEBRON SOLDIER(6)', '12000');

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `id` int(11) NOT NULL,
  `product_name` varchar(100) NOT NULL,
  `product-price` varchar(50) NOT NULL,
  `product_image` varchar(255) NOT NULL,
  `product_code` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`id`, `product_name`, `product-price`, `product_image`, `product_code`) VALUES
(1, 'LEBRON WITNESS', '6666.50', 'imgs/lebron-witness.jpg', 'CD5007-101 '),
(2, 'LEBRON SOLDIER', '2000.00', 'imgs/lebron-soldier.jpg', 'BQ5595-007'),
(3, 'LEBRON WITNESS V WHITE', '4000.00', 'imgs/lebron-witness-v-white.jpg', 'BQ5595-006'),
(4, 'NIKE LEBRON XVII LOW', '3000.00', 'imgs/lebron-xvii-low.jpg', 'CD5007-101'),
(7, 'NIKE LEBRON XVII (PS)', '3000.00', 'imgs/lebron-xvii-ps.jpg', 'BQ5595-006'),
(8, 'ULTRABOOST', '1000.00', 'imgs/ultraboost.jpg', 'BQ5595-009'),
(9, 'KYRIE LOW', '1000.00', 'imgs/kyrie-low-4.jpg', 'BQ5595-010'),
(10, 'LEBRON WITNESS WHITE', '6000.00', 'imgs/lebron-witness-v-white.jpg', 'BQ5595-010');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(255) NOT NULL,
  `created_at` datetime DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `password`, `created_at`) VALUES
(8, 'Ann', '$2y$10$XSWkpP3yFgImSTAtmo7AKeJtTpieYlR1p9PDRIHInZ1p9MOdsQDtu', '2021-05-03 21:02:16'),
(9, 'Ann@gmail.com', '$2y$10$yxK4jUenlUeOOTIrgJ0iZOXozC8zRT1SXpD8I6vt41sL/QH/Am7tS', '2021-05-06 17:52:18');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `cart`
--
ALTER TABLE `cart`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `product`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
