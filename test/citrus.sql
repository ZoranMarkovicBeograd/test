-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 12, 2020 at 12:17 PM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.2.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `citrus`
--

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE `comments` (
  `id` int(11) NOT NULL,
  `customer_name` varchar(256) DEFAULT NULL,
  `customer_email` varchar(256) DEFAULT NULL,
  `description_products` varchar(512) DEFAULT NULL,
  `description_firm` varchar(512) NOT NULL,
  `status` enum('pending','approved') NOT NULL DEFAULT 'pending'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `comments`
--

INSERT INTO `comments` (`id`, `customer_name`, `customer_email`, `description_products`, `description_firm`, `status`) VALUES
(11, 'Zoran Marković', 'zoran.markovic87@hotmail.com', 'High quality products\r\n', ' A company that is synonymous with quality and safety.', 'approved'),
(12, 'Marko Peric', 'marko@gmail.com', '  always fresh products', ' A company that is recognizable.', 'pending'),
(13, 'Marija', 'marija@gmail.com', 'great attitude towards customers', ' I love their pomelos the most', 'pending'),
(14, 'Darko', 'darko@hotmail.com', ' \r\nI love their lemons', ' Large selection of citrus.', 'approved'),
(15, 'Jovan', 'jovan@gmail.com', 'I recommend their products.', 'I always choose fruit by quality', 'approved');

-- --------------------------------------------------------

--
-- Table structure for table `fruits`
--

CREATE TABLE `fruits` (
  `id` int(11) NOT NULL,
  `title` varchar(256) DEFAULT NULL,
  `image` varchar(256) DEFAULT NULL,
  `description` varchar(512) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `fruits`
--

INSERT INTO `fruits` (`id`, `title`, `image`, `description`) VALUES
(1, 'orange', 'orange.jpg', 'The orange is the fruit of various citrus species in the family Rutaceae (see list of plants known as orange); it primarily refers to Citrus × sinensis,[1] which is also called sweet orange, to distinguish it from the related Citrus × aurantium, referred to as bitter orange'),
(2, 'lemon', 'lemon.jpg', 'The lemon, Citrus limon, is a species of small evergreen tree in the flowering plant family Rutaceae, native to South Asia, primarily North eastern India.'),
(3, 'grapefruit', 'grapefruit.jpg', 'The grapefruit (Citrus × paradisi) is a subtropical citrus tree known for its relatively large sour to semisweet, somewhat bitter fruit.[1] The interior flesh is segmented and varies in color from white to yellow to pink to red.'),
(4, 'finger lime', 'finger_lime.jpg', 'Australian limes are species of the plant genus Citrus that are native to Australia and Papua New Guinea.'),
(5, 'kumquat', 'kumquat.jpg', 'Kumquats (or cumquats in Australian English, /ˈkʌmkwɒt/; Citrus japonica) are a group of small fruit-bearing trees in the flowering plant family Rutaceae. They were previously classified as forming the now-historical genus Fortunella, or placed within Citrus sensu lato.'),
(6, 'lime', 'lime.jpg', 'A lime (from French lime, from Arabic līma, from Persian līmū, \"lemon\"),[1] known as dayap[2] in the Philippines, is a citrus fruit, which is typically round, green in color, 3–6 centimetres (1.2–2.4 in) in diameter, and contains acidic juice vesicles.[3]'),
(7, 'mandarin', 'mandarin.jpg', 'The mandarin orange (Citrus reticulata), also known as the mandarin or mandarine, is a small citrus tree with fruit resembling other oranges, usually eaten plain or in fruit salads.[1] The tangerine is a group of orange-coloured citrus fruit consisting of hybrids of mandarin orange.'),
(8, 'oroblanco', 'oroblanco.jpg', 'An oroblanco, oro blanco (white gold), Pomelit (Israel) or sweetie[1] (Citrus grandis Osbeck × C. Paradisi Macf.) is a sweet seedless citrus hybrid fruit similar to grapefruit. It is often referred to as oroblanco grapefruit.\r\n\r\n'),
(9, 'pomelo', 'pomelo.jpg', 'The pomelo, pummelo, or in scientific terms Citrus maxima or Citrus grandis, is the largest citrus fruit from the family Rutaceae and the principal ancestor of the grapefruit.[1] It is a natural, i.e., non-hybrid, citrus fruit, native to Southeast Asia.[1] Similar in taste to a large, sweet grapefruit, the pomelo is commonly consumed and used for festive occasions throughout Southeast Asia.\r\n\r\n\r\n');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `fruits`
--
ALTER TABLE `fruits`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `fruits`
--
ALTER TABLE `fruits`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
