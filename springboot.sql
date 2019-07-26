-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 26, 2019 at 04:01 PM
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
(159),
(1),
(1),
(1),
(1),
(1),
(1),
(1),
(1),
(1),
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
(1, 'Alu chop:500 gm boiled,mashed potato 1 tablespoon coriander leaves salt as required 1/2 teaspoon white pepper powder 2 beaten egg refined oil as required', 20, 2, 'aluchop.jpg'),
(2, 'Pakuda:Besan,Baking powder ,Cumin Powder,Small onion,Potato', 20, 2, 'pakauda.jpg'),
(3, 'Chicken momo:dumplings are packed with healthy veggies like carrots and cabbage sauteed with onion, garlic, soya sauce, vinegar and black pepper. The perfect homemade vegetarian snack to serve for evening snacks.', 60, 5, 'momos (1).jpg'),
(16, 'French Fries: Deep fried potatoes Served with Ketchup', 120, 2, '20180309-french-fries-vicky-wasik-15-1500x1125.jpg'),
(17, 'Onion Rings: Deep fried battered onion rings', 95, 2, 'onion-rings1.jpg'),
(18, 'Pani Puri: golgappa', 10, 2, 'Panipuri,_Golgappa,_Phuchka.jpg'),
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
  `id` int(11) NOT NULL,
  `item_no` int(11) NOT NULL,
  `quantity` int(11) NOT NULL,
  `table_no` int(11) NOT NULL,
  `status` int(11) DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `purchase`
--

INSERT INTO `purchase` (`id`, `item_no`, `quantity`, `table_no`, `status`) VALUES
(1, 5, 2, 12, 0),
(2, 3, 1, 10, 0),
(3, 10, 1, 5, 0),
(6, 1, 2, 2, 0),
(7, 1, 2, 2, 0),
(8, 1, 2, 2, 0),
(9, 2, 1, 2, 0),
(10, 3, 1, 2, 0),
(11, 1, 2, 2, 0),
(12, 3, 0, 2, 0),
(13, 2, 1, 2, 0),
(14, 1, 1, 2, 0),
(15, 1, 1, 2, 0),
(16, 1, 1, 2, 0),
(17, 1, 1, 2, 0),
(18, 1, 1, 2, 0),
(19, 1, 1, 2, 0),
(20, 1, 1, 2, 0),
(21, 1, 1, 2, 0),
(22, 1, 1, 2, 0),
(23, 1, 0, 2, 0),
(24, 2, 0, 2, 0),
(25, 1, 1, 2, 0),
(26, 1, 1, 1, 0),
(27, 2, 1, 1, 0),
(28, 1, 1, 1, 0),
(29, 2, 1, 1, 0),
(30, 2, 1, 1, 0),
(31, 1, 1, 2, 0),
(32, 2, 1, 2, 0),
(33, 3, 1, 2, 0),
(34, 1, 1, 20, 0),
(35, 2, 1, 1, 0),
(36, 1, 1, 1, 0),
(37, 1, 2, 1, 0),
(38, 2, 2, 1, 0),
(39, 1, 3, 1, 0),
(40, 1, 1, 1, 0),
(41, 1, 1, 1, 0),
(42, 2, 1, 1, 0),
(43, 1, 1, 1, 0),
(44, 17, 1, 1, 0),
(45, 17, 1, 1, 0),
(46, 17, 1, 1, 0),
(47, 17, 1, 1, 0),
(48, 17, 1, 1, 0),
(49, 17, 1, 1, 0),
(50, 17, 1, 1, 0),
(51, 17, 1, 1, 0),
(52, 17, 1, 1, 0),
(53, 17, 1, 1, 0),
(54, 17, 1, 1, 0),
(55, 17, 1, 1, 0),
(56, 1, 1, 1, 0),
(57, 2, 1, 1, 0),
(58, 1, 2, 1, 0),
(59, 2, 3, 1, 0),
(60, 1, 2, 1, 0),
(61, 2, 2, 1, 0),
(62, 1, 2, 1, 0),
(63, 2, 2, 1, 0),
(64, 1, 2, 1, 0),
(65, 2, 2, 1, 0),
(66, 3, 1, 1, 0),
(67, 2, 1, 1, 0),
(68, 3, 1, 1, 0),
(69, 2, 4, 1, 0),
(70, 3, 4, 1, 0),
(71, 1, 2, 1, 0),
(72, 2, 2, 1, 0),
(73, 3, 1, 1, 0),
(74, 1, 2, 1, 0),
(75, 2, 2, 1, 0),
(76, 1, 1, 1, 0),
(77, 3, 2, 1, 0),
(78, 2, 1, 1, 0),
(79, 2, 1, 1, 0),
(80, 1, 1, 1, 0),
(81, 3, 1, 1, 0),
(82, 2, 2, 1, 0),
(83, 3, 1, 1, 0),
(84, 1, 2, 1, 0),
(85, 1, 2, 1, 0),
(86, 2, 2, 1, 0),
(87, 3, 1, 1, 0),
(88, 3, 3, 1, 0),
(89, 1, 2, 1, 0),
(90, 2, 3, 1, 0),
(91, 2, 3, 1, 0),
(92, 1, 2, 1, 0),
(93, 1, 2, 1, 0),
(94, 2, 1, 1, 0),
(95, 1, 3, 1, 0),
(96, 2, 3, 1, 0),
(97, 2, 2, 1, 0),
(98, 1, 3, 1, 0),
(99, 3, 5, 1, 0),
(100, 3, 2, 1, 0),
(101, 1, 2, 1, 0),
(102, 1, 2, 1, 0),
(103, 2, 2, 1, 0),
(104, 1, 3, 1, 0),
(105, 2, 3, 1, 0),
(106, 1, 3, 1, 0),
(107, 18, 2, 1, 0),
(108, 17, 3, 1, 0),
(109, 1, 3, 1, 0),
(110, 2, 1, 1, 0),
(111, 1, 3, 1, 0),
(112, 2, 2, 1, 0),
(113, 1, 2, 1, 0),
(114, 2, 2, 1, 0),
(115, 1, 2, 1, 0),
(116, 2, 1, 1, 0),
(117, 1, 2, 1, 0),
(118, 2, 2, 1, 0),
(119, 1, 2, 1, 0),
(120, 2, 2, 1, 0),
(121, 1, 1, 1, 0),
(122, 2, 1, 1, 0),
(123, 1, 2, 1, 0),
(124, 2, 2, 1, 0),
(125, 3, 2, 1, 0),
(126, 16, 2, 1, 0),
(127, 1, 2, 1, 0),
(128, 2, 1, 1, 0),
(129, 1, 1, 1, 0),
(130, 2, 1, 1, 0),
(131, 1, 1, 1, 0),
(132, 2, 1, 1, 0),
(133, 1, 2, 1, 0),
(134, 2, 2, 1, 0),
(135, 1, 1, 1, 0),
(136, 2, 2, 1, 0),
(137, 3, 2, 1, 0),
(138, 2, 2, 1, 0),
(139, 1, 2, 1, 0),
(140, 2, 2, 1, 0),
(141, 1, 2, 1, 0),
(142, 1, 2, 1, 0),
(143, 32, 1, 1, 0),
(144, 32, 1, 1, 0),
(145, 1, 1, 1, 0),
(146, 2, 2, 1, 0),
(147, 32, 1, 1, 0),
(148, 3, 1, 1, 0),
(149, 3, 2, 1, 0),
(150, 3, 2, 1, 0),
(151, 16, 2, 1, 0),
(152, 18, 2, 1, 0),
(153, 20, 1, 1, 0),
(154, 19, 1, 1, 0),
(155, 18, 3, 1, 0),
(156, 16, 2, 1, 0),
(157, 16, 2, 1, 0),
(158, 16, 1, 1, 0);

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

--
-- AUTO_INCREMENT for table `purchase`
--
ALTER TABLE `purchase`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=159;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
