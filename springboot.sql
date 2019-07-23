-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 23, 2019 at 02:11 PM
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
-- Table structure for table `dog`
--

CREATE TABLE `dog` (
  `id` bigint(20) NOT NULL,
  `age` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

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
(6),
(1),
(1),
(1);

-- --------------------------------------------------------

--
-- Table structure for table `menu`
--

CREATE TABLE `menu` (
  `id` int(11) NOT NULL,
  `item_name` text,
  `price` int(11) NOT NULL,
  `category` int(11) NOT NULL,
  `image` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `menu`
--

INSERT INTO `menu` (`id`, `item_name`, `price`, `category`, `image`) VALUES
(1, 'Expresso : Single shot coffee', 65, 1, 'expresso.png'),
(2, 'Double expresso: Double shot of coffee', 120, 1, 'double_expresso.jpg'),
(3, 'Americano:', 80, 1, 'americano.jpg'),
(4, 'Cappuccino:', 80, 1, 'cappuchino.jpeg'),
(5, 'Mocha:', 175, 1, 'mocha.jpg'),
(6, 'Black Tea:', 50, 1, 'blacktea.jpg'),
(7, 'Green Tea:', 80, 1, 'greenTea.jpg'),
(8, 'Lemon Tea:', 80, 1, 'lemonTea.jpg'),
(9, 'Blended Mocha:', 225, 1, 'Blendedmocha.jpg'),
(10, 'Fresh Watermelon Juice:', 100, 1, 'watermelon-juice-5.jpg'),
(11, 'Juices Mango/pineapple/apple/peach/orang:', 110, 1, 'JuiceB.jpg'),
(12, 'Appale and Banana Smoothie:', 125, 1, 'AppleBananaSmothiee.jpg'),
(13, 'Plain Lassi:', 100, 1, 'PlainLAssi.jpg'),
(14, 'Sweet Lassi: yoghurt and sugar with ice', 100, 1, 'SweeTLAssi.jpg'),
(15, 'Mango lassi: Pure mango,yoghurt and sugar', 120, 1, 'MangoLassi.jpg'),
(16, 'French Fries: Deep fried potatoes Served with Ketchup', 120, 2, '20180309-french-fries-vicky-wasik-15-1500x1125.jpg'),
(17, 'Onion Rings: Deep fried battered onion rings', 95, 2, 'onion-rings1.jpg'),
(18, 'Fish Fingers: 6pieces of bosa fish coverd in fine golden bread crumbs', 225, 2, 'Fish_Fingers.jpg'),
(19, 'Chicken Chilly:boneless chicken, salt, cornflour, black pepper, egg, soy sauce, red chilli sauce, garlic, green chillies, green chilli sauce, vinegar, onion, capsicum, black Pepper, ', 250, 2, 'Prepare-Chilli-Chicken-Step-17.jpg'),
(20, 'Fried Sausage: 4 pieces fried sausage served with ketchup (Buff)', 140, 2, '81360392-fried-sausages-on-a-wooden-tray.jpg'),
(21, 'Margherita: San Marzano tomatoes, mozzarella cheese, fresh basil, salt and extra-virgin olive oil', 295, 4, 'margherita-pizza-11.jpg'),
(22, 'Green Pepper Pizza: Tomato sauce ,mazzeralla,green pepper ,onion', 350, 4, 'manny-s-pizza-house.jpg'),
(23, 'Paneer Pizza: tomato sauce, mozzarella,onion green pepper , paneer and olives', 450, 4, 'paneer-pizza-recipe-1.jpg'),
(24, 'Double Cheese Pizza: tomato sauce, mazzeralla and extra topping of mozzaralla cheese', 435, 4, 'papa-johns-1-750x500.jpg'),
(25, 'BBQ Chicken Pizza: Tomato sauce, mazzarella, garlic chicken, chicken sausage  , tandoori chicken and chicken salami', 495, 4, 'bbq-chicken-pizza_standard.jpg'),
(26, 'Meat lover: Tomato sauce, mozzarella , ham,boon, samali and chicken', 495, 4, 'xtralargemeatlovers.jpg'),
(27, 'Sausage BuffChicken: Tomato sauce, mazzeralla and salami', 395, 4, '81360392-fried-sausages-on-a-wooden-tray.jpg'),
(28, 'Slice Pizza of your choice:Non-veg, Veg', 99, 4, 'pizza-slices-shutterstock_1550860997.jpg'),
(29, 'Grilled chicken salad: chicken,lettuce, mozzeralla cheese, olives,tomatoes , capsicum.and carrot', 225, 3, 'easy-grilled-chicken-salad-1.jpg'),
(30, 'Pasta salad( veg/Chicken/ Tuna): penne,pepper,tomato, onion, olives and lettuce ', 195, 3, 'pasta-salad-9.jpg'),
(31, 'Garden salad: lettuce, mushroom,olives , tomatoes,onions, capsicun, cucumber,carrots and mozzarella cheese tossed in olive oil', 195, 3, '52744_3000x2000.jpg'),
(32, 'Chicken Momo:', 180, 5, 'Chicken_Momos_Recipe_Delicious_Steamed_Chicken_Dumplings.jpg'),
(33, 'Buff momo:', 180, 5, '10502100_747954098583790_6705335203378436329_n.jpg'),
(34, 'Veg momo:', 140, 5, 'Veg_Momos_Recipe.png'),
(35, 'Tomato Sauce Pasta: Tomato sauce ,garlic ,pareley, origano and pasta of your choice', 250, 6, 'pasta-with-simple-tomato-sauce-21073-1.jpeg'),
(36, 'Carbonara Pasta: White sauce,egg, bacon/chicken/mushroom, ceam , parmeean and pasta of your choice', 315, 6, 'recipe-image-legacy-id--1001491_11.jpg'),
(37, 'Pan Rosted Chicken Breast or Fish with Lemon Butter Sauce: 200gm of rosted chicken breast or Boas fish served with lemon butter sauce, with white milk cream', 395, 7, 'Rosemary-Lemon-Roasted-Chicken-Breasts-Primavera-Kitchen-1.jpg');

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
-- Indexes for table `dog`
--
ALTER TABLE `dog`
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
