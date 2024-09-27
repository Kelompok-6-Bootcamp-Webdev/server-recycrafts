-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 27, 2024 at 02:45 PM
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
-- Database: `recycrafts_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `id` int(11) NOT NULL,
  `uuid` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `desc` text NOT NULL,
  `price` int(11) NOT NULL,
  `image` varchar(255) NOT NULL,
  `url` varchar(255) NOT NULL,
  `userId` int(11) NOT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`id`, `uuid`, `name`, `desc`, `price`, `image`, `url`, `userId`, `createdAt`, `updatedAt`) VALUES
(2, '36d2da91-8ee0-4172-b042-0046d11bda40', 'Mainan Anak', 'Mainan dengna berbagai bentuk dan warna, barang menarik untuk anak. Terbuat dari bahan plastik botol bekas daur ulang.', 10000, 'c502d7ca6ef9625ce99c147bdde245fe.jpg', 'http://localhost:5000/images/c502d7ca6ef9625ce99c147bdde245fe.jpg', 1, '2024-09-24 07:28:20', '2024-09-24 07:28:20'),
(3, '8cef3ade-118d-4431-a0c4-6c94beb77a73', 'Tas Wanita', 'Tas untuk menyimpan dan membawa beberapa barang dengan bentuk yang unik dan cantik. Terbuat dari bekas gelas plastik kemasan minuman yang telah didaur ulang dengna proses yang lama.', 20000, '3e02368705445d8902a2851b442416e6.jpg', 'http://localhost:5000/images/3e02368705445d8902a2851b442416e6.jpg', 1, '2024-09-24 07:30:39', '2024-09-24 07:30:39'),
(4, 'cbae1316-668a-45c5-96cb-3fa8f996341b', 'Bunga Hias', 'Bunga plastik sebagai hiasan perabotan rumah untuk mempercantik ruangan. Terbuat dari bitil bekas yang telah didaur ulang serta sihias dengan sedemikian rupa.', 15000, 'b7c55ee0b222ad87da413e492189627c.jpeg', 'http://localhost:5000/images/b7c55ee0b222ad87da413e492189627c.jpeg', 1, '2024-09-24 07:32:07', '2024-09-24 07:32:07');

-- --------------------------------------------------------

--
-- Table structure for table `sessions`
--

CREATE TABLE `sessions` (
  `sid` varchar(36) NOT NULL,
  `expires` datetime DEFAULT NULL,
  `data` text DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `sessions`
--

INSERT INTO `sessions` (`sid`, `expires`, `data`, `createdAt`, `updatedAt`) VALUES
('BcRKODowYxi1rB3XQ34cOE13cLXnm5RN', '2024-09-24 14:47:20', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"},\"userId\":\"230fcf2a-2cfd-4faa-8560-7def930785ff\"}', '2024-09-23 14:47:12', '2024-09-23 14:47:20'),
('TmxDHaBjyOJC3Jk_oXkZou8Sv1RjYiIs', '2024-09-25 07:40:29', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2024-09-24 07:40:29', '2024-09-24 07:40:29');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `uuid` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `role` varchar(255) NOT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `uuid`, `name`, `email`, `password`, `role`, `createdAt`, `updatedAt`) VALUES
(1, '230fcf2a-2cfd-4faa-8560-7def930785ff', 'M Asyraf', 'admin@gmail.com', '$argon2id$v=19$m=65536,t=3,p=4$sSOe+iFJkgrzpTSIR/RiIg$UyQcnwIxDIbResf3sqXPE69Ml5Y/jGjkTSg9N37a+h4', 'admin', '2024-09-23 13:47:11', '2024-09-23 13:47:11'),
(3, '6d30b7dc-c1c9-4e2b-aae1-225226e88a68', 'Regan', 'regan@gmail.com', '$argon2id$v=19$m=65536,t=3,p=4$RgVunjygcjsVR6iVqzUhSA$CpbN1aXTI63A6iMnXhihsrSj6Oa69kO37AtyGPgeSZE', 'user', '2024-09-23 14:08:26', '2024-09-23 14:08:26');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`id`),
  ADD KEY `userId` (`userId`);

--
-- Indexes for table `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`sid`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `product`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `product`
--
ALTER TABLE `product`
  ADD CONSTRAINT `product_ibfk_1` FOREIGN KEY (`userId`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
