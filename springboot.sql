-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 14, 2019 at 06:28 AM
-- Server version: 10.1.38-MariaDB
-- PHP Version: 7.3.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `springboot`
--

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(11) NOT NULL,
  `category_name` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `category_name`) VALUES
(1, 'Bevrages'),
(2, 'Starter'),
(3, 'Salads'),
(4, 'Pizza'),
(5, 'Momo'),
(6, 'Italian Pasta'),
(7, 'chicken &Fish');

-- --------------------------------------------------------

--
-- Table structure for table `hibernate_sequence`
--

CREATE TABLE `hibernate_sequence` (
  `next_val` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `hibernate_sequence`
--

INSERT INTO `hibernate_sequence` (`next_val`) VALUES
(6);

-- --------------------------------------------------------

--
-- Table structure for table `menu`
--

CREATE TABLE `menu` (
  `id` int(11) NOT NULL,
  `item_name` text,
  `price` int(11) NOT NULL,
  `category` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `menu`
--

INSERT INTO `menu` (`id`, `item_name`, `price`, `category`) VALUES
(1, 'Expresso : Single shot coffee', 65, 1),
(2, 'Double expresso: Double shot of coffee\r\n', 120, 1),
(3, 'Americano', 80, 1),
(4, 'Cappuccino', 80, 1),
(5, 'Mocha', 175, 1),
(6, 'Black Tea', 50, 1),
(7, 'Green Tea', 80, 1),
(8, 'Lemon Tea', 80, 1),
(9, 'Blended Mocha', 225, 1),
(10, 'Fresh Watermelon Juice', 100, 1),
(11, 'Juices Mango/pineapple/apple/peach/orang', 110, 1),
(12, 'Appale and Banana Smoothie', 125, 1),
(13, 'Plain Lassi', 100, 1),
(14, 'Sweet Lassi: yoghurt and sugar with ice', 100, 1),
(15, 'Mango lassi: Pure mango,yoghurt and sugar', 120, 1),
(16, 'French Fries: Deep fried potatoes Served with Ketchup', 120, 2),
(17, 'Onion Rings: Deep fried battered onion rings', 95, 2),
(18, 'Fish Fingers: 6pieces of bosa fish coverd in fine golden bread crumbs\r\n', 225, 2),
(19, 'Chicken Chilly', 250, 2),
(20, 'Fried Sausage: 4 pieces fried sausage served with ketchup (Buff)', 140, 2),
(21, 'Margherita', 295, 4),
(22, 'Green Pepper: Tomato sauce ,mazzeralla,green pepper ,onion', 350, 4),
(23, 'Paneer: tomato sauce, mozzarella,onion green pepper , paneer and olives', 450, 4),
(24, 'Double Cheese: tomato sauce, mazzeralla and extra topping of mozzaralla cheese', 435, 4),
(25, 'BBQ Chicken: Tomato sauce, mazzarella, garlic chicken, chicken sausage  , tandoori chicken and chicken salami', 495, 4),
(26, 'Meat lover: Tomato sauce, mozzarella , ham,boon, samali and chicken', 495, 4),
(27, 'Sausage Buff\\Chicken: Tomato sauce, mazzeralla and salami', 395, 4),
(28, 'Slice Pizza of your choice:Non-veg, Veg', 99, 4),
(29, 'Grilled chicken salad: chicken,lettuce, mozzeralla cheese, olives,tomatoes , capsicum.and carrot', 225, 3),
(30, 'Pasta salad( veg/Chicken/ Tuna): penne,pepper,tomato, onion, olives and lettuce ', 195, 3),
(31, 'Garden salad: lettuce, mushroom,olives , tomatoes,onions, capsicun, cucumber,carrots and mozzarella cheese tossed in olive oil', 195, 3),
(32, 'Chicken Momo', 180, 5),
(33, 'Buff momo', 180, 5),
(34, 'Veg momo', 140, 5),
(35, 'Tomato Sauce: Tomato sauce ,garlic ,pareley, origano and pasta of your choice', 250, 6),
(36, 'Carbonara: White sauce,egg, bacon/chicken/mushroom, ceam , parmeean and pasta of your choice', 315, 6),
(37, 'Pan Rosted Chicken Breast or Fish with Lemon Butter Sauce: 200gm of rosted chicken breast or Boas fish served with lemon butter sauce, with white milk cream', 395, 7);

-- --------------------------------------------------------

--
-- Table structure for table `purchase`
--

CREATE TABLE `purchase` (
  `id` bigint(20) NOT NULL,
  `item_no` int(11) NOT NULL,
  `quantity` int(11) NOT NULL,
  `table_no` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `purchase`
--

INSERT INTO `purchase` (`id`, `item_no`, `quantity`, `table_no`) VALUES
(1, 1, 0, 190),
(2, 190, 1, 2),
(3, 190, 1, 2),
(4, 1190, 2, 2),
(5, 190, 1, 2);

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` bigint(20) NOT NULL,
  `user_name` varchar(255) DEFAULT NULL,
  `age` int(11) NOT NULL,
  `sex` char(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `menu`
--
ALTER TABLE `menu`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `purchase`
--
ALTER TABLE `purchase`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `menu`
--
ALTER TABLE `menu`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
