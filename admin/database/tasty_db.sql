-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 29, 2024 at 10:37 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `tasty_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE `cart` (
  `id` int(30) NOT NULL,
  `client_ip` varchar(20) NOT NULL,
  `user_id` int(30) NOT NULL,
  `product_id` int(30) NOT NULL,
  `qty` int(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `cart`
--

INSERT INTO `cart` (`id`, `client_ip`, `user_id`, `product_id`, `qty`) VALUES
(25, '', 4, 4, 1);

-- --------------------------------------------------------

--
-- Table structure for table `category_list`
--

CREATE TABLE `category_list` (
  `id` int(30) NOT NULL,
  `name` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `category_list`
--

INSERT INTO `category_list` (`id`, `name`) VALUES
(7, 'Side Dish'),
(8, 'Lunch'),
(9, 'Breakfast');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` int(30) NOT NULL,
  `name` text NOT NULL,
  `address` text NOT NULL,
  `mobile` text NOT NULL,
  `email` text NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `name`, `address`, `mobile`, `email`, `status`) VALUES
(10, 'gabby f', 'fare', '0123456785', 'eco@me.com', 1),
(11, 'gabby f', 'fare', '0123456785', 'eco@me.com', 1),
(12, 'gabby f', 'fare', '0123456785', 'eco@me.com', 1),
(13, 'ama d', 'xmvjqwk', '123584698', 'ama@me.com', 1),
(14, 'ama d', 'xmvjqwk', '123584698', 'ama@me.com', 1);

-- --------------------------------------------------------

--
-- Table structure for table `order_list`
--

CREATE TABLE `order_list` (
  `id` int(30) NOT NULL,
  `order_id` int(30) NOT NULL,
  `product_id` int(30) NOT NULL,
  `qty` int(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `order_list`
--

INSERT INTO `order_list` (`id`, `order_id`, `product_id`, `qty`) VALUES
(24, 10, 11, 1),
(25, 10, 11, 1),
(26, 10, 11, 1),
(27, 10, 11, 1),
(28, 10, 11, 1),
(29, 10, 14, 1),
(30, 10, 14, 1),
(31, 11, 13, 1),
(32, 12, 13, 1),
(33, 13, 11, 1),
(34, 14, 13, 1);

-- --------------------------------------------------------

--
-- Table structure for table `product_list`
--

CREATE TABLE `product_list` (
  `id` int(30) NOT NULL,
  `category_id` int(30) NOT NULL,
  `name` varchar(100) NOT NULL,
  `description` text NOT NULL,
  `price` float NOT NULL DEFAULT 0,
  `img_path` text NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1 COMMENT '0= unavailable, 2 Available'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `product_list`
--

INSERT INTO `product_list` (`id`, `category_id`, `name`, `description`, `price`, `img_path`, `status`) VALUES
(11, 7, 'Assorted Beef Stir Fry', 'Assorted Beef Stir Fry\r\nTender strips of beef stir-fried with colorful vegetables in a savory sauce.\r\n\r\nIngredients: Thinly sliced beef, assorted vegetables, garlic, ginger, soy sauce, oyster sauce, sesame oil.\r\n\r\nServing Suggestion: Enjoy over steamed rice or noodles.\r\n\r\nSavor the flavors of this hearty and delicious stir-fry, perfect for a satisfying meal.', 150, '1714348020_stirfry.jpg', 1),
(13, 8, 'Banku with Tilapia', 'Grilled tilapia served with traditional Ghanaian banku—a fermented corn and cassava dough—alongside sliced onions and diced tomatoes.\r\n\r\nServing Suggestion: Enjoy with a side of spicy pepper sauce for a taste of West African cuisine.\r\n\r\n\r\n\r\n\r\n\r\n', 100, '1714348920_Banku.jpg', 1),
(14, 8, 'Fired Up Margherita', 'Experience the classic flavors of Italy with our Fired Up Margherita pizza. This delicious pie features a crispy thin crust topped with tangy tomato sauce, fresh mozzarella cheese, and aromatic basil leaves. Baked to perfection in a fiery oven, each bite bursts with the authentic taste of a traditional Margherita pizza. Simple, yet simply irresistible!\r\n\r\nEnjoy the Fired Up Margherita for a taste of Italy right at your table. Perfect for pizza lovers seeking a timeless favorite with a delightful twist!\r\n\r\n\r\n\r\n\r\n\r\n', 150, '1714349580_Pizza.jpg', 1),
(15, 8, '', '', 0, '1714422540_cornkoko12.jpeg', 1);

-- --------------------------------------------------------

--
-- Table structure for table `system_settings`
--

CREATE TABLE `system_settings` (
  `id` int(30) NOT NULL,
  `name` text NOT NULL,
  `email` varchar(200) NOT NULL,
  `contact` varchar(20) NOT NULL,
  `cover_img` text NOT NULL,
  `about_content` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `system_settings`
--

INSERT INTO `system_settings` (`id`, `name`, `email`, `contact`, `cover_img`, `about_content`) VALUES
(1, 'TastyDrive', 'TastyDrive@test.com', '+233245789621', '1714350240_ChocolateTeaPictures.jpg', '&lt;p style=&quot;text-align: left; background: transparent; position: relative;&quot;&gt;&lt;/p&gt;&lt;span style=&quot;font-size:24px;text-align: left; background: transparent; position: relative;&quot;&gt;&lt;p style=&quot;text-align: left; background: transparent; position: relative; font-size: 24px;&quot;&gt;&lt;span style=&quot;text-align: left; background: transparent; position: relative; font-size: 24px;&quot;&gt;&amp;nbsp;TastyDrive is your ultimate solution for easy and quick food delivery. Our platform connects you with a wide array of local restaurants, offering a diverse menu that caters to all tastes and preferences. With TastyDrive, you can enjoy the convenience of having your favorite meals delivered right to your doorstep.&lt;/span&gt;&lt;/p&gt;&lt;p style=&quot;text-align: left; margin-bottom: 15px; padding: 0px; color: rgb(0, 0, 0); font-family: &amp;quot;Open Sans&amp;quot;, Arial, sans-serif; font-size: 24px;&quot;&gt;The idea for TastyDrive emerged from a passion for food and a commitment to service. We wanted to create a platform that not only connects foodies with their favorite restaurants but also provides a hassle-free ordering experience. Our journey began with a simple belief: that everyone deserves to enjoy delicious food without any inconvenience.&lt;/p&gt;&lt;/span&gt;&lt;p style=&quot;text-align: left; margin-bottom: 15px; padding: 0px; color: rgb(0, 0, 0); font-family: &amp;quot;Open Sans&amp;quot;, Arial, sans-serif;&quot;&gt; &lt;/p&gt;&lt;p&gt;&lt;/p&gt;');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(30) NOT NULL,
  `name` varchar(200) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(200) NOT NULL,
  `type` tinyint(1) NOT NULL DEFAULT 2 COMMENT '1=admin , 2 = staff'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `username`, `password`, `type`) VALUES
(1, 'Admin', 'tastyd', 'tasty300', 1);

-- --------------------------------------------------------

--
-- Table structure for table `user_info`
--

CREATE TABLE `user_info` (
  `user_id` int(10) NOT NULL,
  `first_name` varchar(100) NOT NULL,
  `last_name` varchar(100) NOT NULL,
  `email` varchar(300) NOT NULL,
  `password` varchar(300) NOT NULL,
  `mobile` varchar(10) NOT NULL,
  `address` varchar(300) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `user_info`
--

INSERT INTO `user_info` (`user_id`, `first_name`, `last_name`, `email`, `password`, `mobile`, `address`) VALUES
(9, 'gabby', 'f', 'eco@me.com', 'be0f121e3dfac777029046de48f568af', '0123456785', 'fare'),
(10, 'ama', 'd', 'ama@me.com', '912ec803b2ce49e4a541068d495ab570', '123584698', 'xmvjqwk');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `category_list`
--
ALTER TABLE `category_list`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `order_list`
--
ALTER TABLE `order_list`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product_list`
--
ALTER TABLE `product_list`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `system_settings`
--
ALTER TABLE `system_settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_info`
--
ALTER TABLE `user_info`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `cart`
--
ALTER TABLE `cart`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;

--
-- AUTO_INCREMENT for table `category_list`
--
ALTER TABLE `category_list`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `order_list`
--
ALTER TABLE `order_list`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT for table `product_list`
--
ALTER TABLE `product_list`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `system_settings`
--
ALTER TABLE `system_settings`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `user_info`
--
ALTER TABLE `user_info`
  MODIFY `user_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
