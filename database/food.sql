-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 22, 2022 at 03:41 PM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 8.1.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `food`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `username` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(255) NOT NULL,
  `role` varchar(30) NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `name`, `username`, `email`, `password`, `role`, `date`) VALUES
(11, 'Imelda Mckinney', 'naranenip', 'jotixydiqi@mailinator.com', 'f3ed11bbdb94fd9ebdefbaf646ab94d3', 'Manager', '2021-10-25 19:20:22'),
(15, 'Md. Ismail', 'ismail', 'mdismailcse1@gmail.com', '21232f297a57a5a743894a0e4a801fc3', 'Admin', '2021-11-30 19:19:21'),
(39, 'Violet Vaughan', 'vimecigu', 'vosyv@mailinator.com', 'f3ed11bbdb94fd9ebdefbaf646ab94d3', 'Manager', '2021-11-30 19:32:17'),
(40, 'Harper Harris', 'bopizuhyzo', 'qehiqe@mailinator.com', 'f3ed11bbdb94fd9ebdefbaf646ab94d3', 'Manager', '2021-11-30 19:32:22'),
(49, 'India Cabrera', 'vesyjor', 'gakuby@mailinator.com', 'f3ed11bbdb94fd9ebdefbaf646ab94d3', 'Admin', '2021-12-16 16:13:38'),
(50, 'Md. Ismail', 'admin', 'admin@gmail.com', '21232f297a57a5a743894a0e4a801fc3', 'Admin', '2022-11-22 14:40:19'),
(51, 'Md. Ismail', 'manager', 'manager@gmail.com', '21232f297a57a5a743894a0e4a801fc3', 'Manager', '2022-11-22 14:40:38');

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL,
  `featured` varchar(10) NOT NULL,
  `active` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`id`, `title`, `image`, `featured`, `active`) VALUES
(35, 'Sandwich', 'food_category_6742.jpg', 'Yes', 'Yes'),
(37, 'Burger', 'food_category_2421.jpg', 'Yes', 'Yes'),
(38, 'Pizza', 'food_category_6618.jpg', 'Yes', 'Yes');

-- --------------------------------------------------------

--
-- Table structure for table `contact`
--

CREATE TABLE `contact` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `phone` text NOT NULL,
  `subject` varchar(255) NOT NULL,
  `message` text NOT NULL,
  `status` varchar(30) NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `contact`
--

INSERT INTO `contact` (`id`, `name`, `email`, `phone`, `subject`, `message`, `status`, `date`) VALUES
(15, 'Emily Lawson', 'cypezeh@mailinator.com', '+1 (131) 785-6791', 'Beatae quae distinct', 'Et et in voluptate p', 'Read', '2021-11-15 05:08:55'),
(16, 'Yvette Castro', 'zosasytysi@mailinator.com', '+1 (308) 334-5062', 'Sed possimus eos f', 'Magni molestias recu', 'Read', '2021-11-23 13:32:50'),
(19, 'Md. Ismail', 'ismailciucse@gmail.com', '+0185136565', 'Test Subject', 'This is test message.', 'Read', '2021-12-09 19:47:47'),
(25, 'Md. Ismail', 'ismailciucse@gmail.com', '0123456789', 'Message Subject', 'This is test message.', 'Read', '2021-12-10 14:39:33');

-- --------------------------------------------------------

--
-- Table structure for table `food`
--

CREATE TABLE `food` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `image` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL,
  `category_id` int(11) NOT NULL,
  `featured` varchar(10) NOT NULL,
  `active` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `food`
--

INSERT INTO `food` (`id`, `title`, `price`, `image`, `description`, `category_id`, `featured`, `active`) VALUES
(36, 'Burger', '5.00', 'food-name-4206.jpg', 'Culpa assumenda ani Culpa assumenda ani Culpa assumenda ani Culpa assumenda ani Culpa assumenda ani ', 37, 'Yes', 'Yes'),
(37, 'Pizza', '7.00', 'food-name-4369.jpg', 'Culpa assumenda ani Culpa assumenda ani Culpa assumenda ani Culpa assumenda ani Culpa assumenda ani ', 38, 'Yes', 'Yes'),
(38, 'Sandwich', '6.00', 'food-name-8723.jpg', 'Culpa assumenda ani Culpa assumenda ani Culpa assumenda ani Culpa assumenda ani Culpa assumenda ani ', 35, 'Yes', 'Yes'),
(39, 'Pizza', '8.00', 'food-name-1849.jpg', 'Culpa assumenda ani Culpa assumenda ani Culpa assumenda ani Culpa assumenda ani Culpa assumenda ani ', 38, 'Yes', 'Yes'),
(40, 'Burger', '5.00', 'food-name-9069.jpg', 'Culpa assumenda ani Culpa assumenda ani Culpa assumenda ani Culpa assumenda ani Culpa assumenda ani ', 37, 'Yes', 'Yes'),
(41, 'Pizza', '8.00', 'food-name-4445.jpg', 'Culpa assumenda ani Culpa assumenda ani Culpa assumenda ani Culpa assumenda ani Culpa assumenda ani ', 38, 'Yes', 'Yes'),
(42, 'Sandwich', '6.00', 'food-name-4413.jpg', 'Culpa assumenda ani Culpa assumenda ani Culpa assumenda ani Culpa assumenda ani Culpa assumenda ani ', 35, 'Yes', 'Yes'),
(43, 'Pizza', '8.00', 'food-name-1770.jpg', 'Culpa assumenda ani Culpa assumenda ani Culpa assumenda ani Culpa assumenda ani Culpa assumenda ani ', 35, 'Yes', 'Yes'),
(44, 'Sandwich', '7.00', 'food-name-2854.jpg', 'Culpa assumenda ani Culpa assumenda ani Culpa assumenda ani Culpa assumenda ani Culpa assumenda ani ', 35, 'Yes', 'Yes'),
(45, 'Burger', '6.00', 'food-name-6204.jpg', 'Culpa assumenda ani Culpa assumenda ani Culpa assumenda ani Culpa assumenda ani Culpa assumenda ani ', 37, 'Yes', 'Yes'),
(46, 'Sandwich', '8.00', 'food-name-2747.jpg', 'Culpa assumenda ani Culpa assumenda ani Culpa assumenda ani Culpa assumenda ani Culpa assumenda ani ', 35, 'Yes', 'Yes'),
(47, 'Burger', '6.00', 'food-name-4461.jpg', 'Culpa assumenda ani Culpa assumenda ani Culpa assumenda ani Culpa assumenda ani Culpa assumenda ani ', 37, 'Yes', 'Yes'),
(48, 'Pizza', '8.00', 'food-name-3436.jpg', 'Culpa assumenda ani Culpa assumenda ani Culpa assumenda ani Culpa assumenda ani Culpa assumenda ani ', 38, 'Yes', 'Yes');

-- --------------------------------------------------------

--
-- Table structure for table `food_order`
--

CREATE TABLE `food_order` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `qty` int(11) NOT NULL,
  `total` decimal(10,2) NOT NULL,
  `order_date` datetime NOT NULL,
  `status` varchar(50) NOT NULL,
  `customer_name` varchar(255) NOT NULL,
  `customer_contact` varchar(255) NOT NULL,
  `customer_email` varchar(150) NOT NULL,
  `customer_address` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `food_order`
--

INSERT INTO `food_order` (`id`, `title`, `price`, `qty`, `total`, `order_date`, `status`, `customer_name`, `customer_contact`, `customer_email`, `customer_address`) VALUES
(13, 'Pizza', '8.00', 2, '16.00', '2021-11-08 11:52:11', 'Delivered', 'Shoshana Pittman', '+1 (204) 461-4227', 'tyci@mailinator.com', 'Voluptates quis cons'),
(14, 'Pizza', '8.00', 1, '8.00', '2021-11-09 01:04:24', 'Cancelled', 'Christopher Gomez', '+1 (327) 199-2275', 'gugi@mailinator.com', 'Et esse delectus cu'),
(15, 'Pizza', '8.00', 2, '16.00', '2021-12-01 01:39:35', 'Delivered', 'Frances Mullins', '+1 (496) 111-7531', 'cajejic@mailinator.com', 'Dignissimos tempore'),
(152, 'Pizza', '8.00', 2, '16.00', '2021-12-10 08:38:26', 'Cancelled', 'Ismail', '0123456789', 'ismailciucse@gmail.com', 'Chittagong, Bangladesh'),
(153, 'Burger', '6.00', 5, '30.00', '2021-12-10 08:38:26', 'Delivered', 'Ismail', '0123456789', 'ismailciucse@gmail.com', 'Chittagong, Bangladesh'),
(154, 'Burger', '6.00', 1, '6.00', '2021-12-11 07:29:16', 'On Delivery', 'Ralph Rutledge', '+1 (176) 443-9984', 'qujylur@mailinator.com', 'Qui iste esse non r'),
(155, 'Sandwich', '8.00', 1, '8.00', '2022-07-27 01:43:54', 'Ordered', 'Nayda Bradford', '+1 (866) 188-9508', 'bipe@mailinator.com', 'Magna recusandae Nu');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `contact`
--
ALTER TABLE `contact`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `food`
--
ALTER TABLE `food`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `food_order`
--
ALTER TABLE `food_order`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=52;

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;

--
-- AUTO_INCREMENT for table `contact`
--
ALTER TABLE `contact`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `food`
--
ALTER TABLE `food`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=49;

--
-- AUTO_INCREMENT for table `food_order`
--
ALTER TABLE `food_order`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=156;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
