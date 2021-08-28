-- phpMyAdmin SQL Dump
-- version 4.9.7
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Aug 21, 2021 at 04:34 AM
-- Server version: 5.7.35
-- PHP Version: 7.3.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `chillkr_youth_emp`
--

-- --------------------------------------------------------

--
-- Table structure for table `banner`
--

CREATE TABLE `banner` (
  `id` int(11) NOT NULL,
  `image` varchar(250) DEFAULT NULL,
  `description` text,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `banner`
--

INSERT INTO `banner` (`id`, `image`, `description`, `created_at`) VALUES
(7, 'assets/images/product_image/608fc912c0566.jpg', '<p>covid-19</p><p><br></p>', '2021-05-03 09:57:38'),
(35, 'assets/images/product_image/60adef7e8eb3f.jpg', '<p>order</p>', '2021-05-26 06:49:34'),
(36, 'assets/images/product_image/60ae110cae7a6.png', '<p>Stopped Orders</p>', '2021-05-26 09:12:44');

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `active` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`id`, `name`, `active`) VALUES
(4, 'Hostels', 1),
(5, 'Stadium', 1),
(6, 'Projects', 1),
(7, 'Maintenance', 1);

-- --------------------------------------------------------

--
-- Table structure for table `company`
--

CREATE TABLE `company` (
  `id` int(11) NOT NULL,
  `company_name` varchar(255) NOT NULL,
  `service_charge_value` varchar(255) NOT NULL,
  `vat_charge_value` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL,
  `phone` varchar(255) NOT NULL,
  `country` varchar(255) NOT NULL,
  `message` text NOT NULL,
  `currency` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `company`
--

INSERT INTO `company` (`id`, `company_name`, `service_charge_value`, `vat_charge_value`, `address`, `phone`, `country`, `message`, `currency`) VALUES
(1, 'KSPHC', '0', '5', 'Bangalore', '234234235', 'India', 'this is just an service', 'INR');

-- --------------------------------------------------------

--
-- Table structure for table `district`
--

CREATE TABLE `district` (
  `id` int(11) NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `image` varchar(250) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `district`
--

INSERT INTO `district` (`id`, `name`, `image`) VALUES
(1, 'Bagalkote', 'image/bagalkote.jpg'),
(2, 'Ballari', 'image/ballari.jpg'),
(3, 'Belagavi', 'image/belgaum.jpg'),
(4, 'Bengaluru Urban', 'image/bangalore.jpg'),
(5, 'Bengaluru Rural', 'image/bangalore-rural.jpg'),
(6, 'Bidar', 'image/bidar.jpg'),
(7, 'Chamarajanagara', 'image/chamrajanagara.jpg'),
(8, 'Chikkaballapura', 'image/chikkaballapur.jpg'),
(9, 'Chikkmagaluru', 'image/Chikkmagaluru.jpg'),
(10, 'Chitradurga', 'image/chitradurga.jpg'),
(11, 'Dakshina Kannada', 'image/dakshin-kannad.jpg'),
(12, 'Davanagere', 'image/davengere.jpg\r\n'),
(13, 'Dharawada', 'image/dharwad.jpg'),
(14, 'Gadag', 'image/gadag.jpg'),
(15, 'Hassan', 'image/hassan.jpg'),
(16, 'Haveri', 'image/haveri.jpg'),
(17, 'Kalaburagi', NULL),
(18, 'Kodagu', 'image/kodagu.jpg'),
(19, 'Kolara', 'image/kolar.jpg'),
(20, 'Koppala', 'image/koppala.jpg'),
(21, 'Mandya', 'image/mandya.jpg'),
(22, 'Mysuru', 'image/mysore.jpg'),
(23, 'Raichur', 'image/raichur.jpg'),
(24, 'Ramanagara', 'image/ramanagara.jpg'),
(25, 'Shivamogga', 'image/shimoga.jpg'),
(26, 'Tumakuru', 'image/tumkur.jpg'),
(27, 'Udupi', 'image/udupi.jpg'),
(28, 'Uttara Kannada', 'image/uttarkannad.jpg'),
(29, 'Vijayapura', NULL),
(30, 'Yadagiri', 'image/yadgir.jpg'),
(31, 'Vijayanagara district', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `groups`
--

CREATE TABLE `groups` (
  `id` int(11) NOT NULL,
  `group_name` varchar(255) NOT NULL,
  `permission` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `groups`
--

INSERT INTO `groups` (`id`, `group_name`, `permission`) VALUES
(1, 'Super Administrator', 'a:32:{i:0;s:10:\"createUser\";i:1;s:10:\"updateUser\";i:2;s:8:\"viewUser\";i:3;s:10:\"deleteUser\";i:4;s:11:\"createGroup\";i:5;s:11:\"updateGroup\";i:6;s:9:\"viewGroup\";i:7;s:11:\"deleteGroup\";i:8;s:11:\"createStore\";i:9;s:11:\"updateStore\";i:10;s:9:\"viewStore\";i:11;s:11:\"deleteStore\";i:12;s:11:\"createTable\";i:13;s:11:\"updateTable\";i:14;s:9:\"viewTable\";i:15;s:11:\"deleteTable\";i:16;s:14:\"createCategory\";i:17;s:14:\"updateCategory\";i:18;s:12:\"viewCategory\";i:19;s:14:\"deleteCategory\";i:20;s:13:\"createProduct\";i:21;s:13:\"updateProduct\";i:22;s:11:\"viewProduct\";i:23;s:13:\"deleteProduct\";i:24;s:11:\"createOrder\";i:25;s:11:\"updateOrder\";i:26;s:9:\"viewOrder\";i:27;s:11:\"deleteOrder\";i:28;s:10:\"viewReport\";i:29;s:13:\"updateCompany\";i:30;s:11:\"viewProfile\";i:31;s:13:\"updateSetting\";}'),
(4, 'District Officer', 'a:20:{i:0;s:10:\"createUser\";i:1;s:10:\"updateUser\";i:2;s:8:\"viewUser\";i:3;s:10:\"deleteUser\";i:4;s:11:\"createStore\";i:5;s:11:\"updateStore\";i:6;s:9:\"viewStore\";i:7;s:11:\"deleteStore\";i:8;s:11:\"createTable\";i:9;s:11:\"updateTable\";i:10;s:9:\"viewTable\";i:11;s:11:\"deleteTable\";i:12;s:14:\"createCategory\";i:13;s:14:\"updateCategory\";i:14;s:12:\"viewCategory\";i:15;s:14:\"deleteCategory\";i:16;s:13:\"createProduct\";i:17;s:13:\"updateProduct\";i:18;s:11:\"viewProduct\";i:19;s:13:\"deleteProduct\";}'),
(5, 'Head Office', 'a:2:{i:0;s:13:\"createProduct\";i:1;s:11:\"viewProduct\";}');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` int(11) NOT NULL,
  `bill_no` varchar(255) DEFAULT NULL,
  `date_time` varchar(255) DEFAULT NULL,
  `gross_amount` varchar(255) DEFAULT NULL,
  `service_charge_rate` varchar(255) DEFAULT NULL,
  `service_charge_amount` varchar(255) DEFAULT NULL,
  `vat_charge_rate` varchar(255) DEFAULT NULL,
  `vat_charge_amount` varchar(255) DEFAULT NULL,
  `discount` varchar(255) DEFAULT NULL,
  `net_amount` varchar(255) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `phone` varchar(10) DEFAULT NULL,
  `pincode` int(10) DEFAULT NULL,
  `payment_id` text,
  `payment_method` varchar(50) DEFAULT NULL,
  `paid_status` int(11) DEFAULT NULL,
  `order_status` varchar(50) NOT NULL DEFAULT 'Created',
  `store_id` varchar(11) NOT NULL DEFAULT '1',
  `address` text,
  `table_id` int(11) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `order_items`
--

CREATE TABLE `order_items` (
  `id` int(11) NOT NULL,
  `order_id` int(11) DEFAULT NULL,
  `product_id` int(11) DEFAULT NULL,
  `qty` varchar(255) DEFAULT NULL,
  `rate` varchar(255) DEFAULT NULL,
  `amount` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `pincode`
--

CREATE TABLE `pincode` (
  `id` int(11) NOT NULL,
  `pincode` varchar(6) DEFAULT NULL,
  `status` varchar(11) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pincode`
--

INSERT INTO `pincode` (`id`, `pincode`, `status`, `created_at`) VALUES
(1, '662100', '1', '2021-04-29 06:13:18'),
(2, '123456', '1', '2021-04-29 07:01:47'),
(3, '123456', '1', '2021-04-29 07:02:07'),
(4, '34567', '1', '2021-04-29 07:02:47'),
(5, '560037', '1', '2021-04-30 13:15:38'),
(6, '560016', '1', '2021-04-30 13:15:56'),
(7, ' 56004', '1', '2021-04-30 13:16:10'),
(8, '562123', '1', '2021-04-30 13:16:25'),
(9, '560036', '1', '2021-04-30 13:16:40'),
(10, '560038', '1', '2021-05-01 09:01:01'),
(11, '563122', '1', '2021-05-04 05:46:34');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(11) NOT NULL,
  `category_id` text,
  `store_id` varchar(255) DEFAULT '1',
  `name` varchar(255) DEFAULT NULL,
  `price` varchar(255) DEFAULT NULL,
  `description` text,
  `image` text,
  `active` int(11) DEFAULT NULL,
  `maintanance_file` text,
  `infrastructure_details_file` text,
  `contractor_name` varchar(100) DEFAULT NULL,
  `project_manager` varchar(100) DEFAULT NULL,
  `agreement_number` varchar(100) DEFAULT NULL,
  `scheduled_start_date` varchar(100) DEFAULT NULL,
  `scheduled_end_date` varchar(100) DEFAULT NULL,
  `actual_start_date` varchar(100) DEFAULT NULL,
  `actual_end_date` varchar(100) DEFAULT NULL,
  `amount_put_to_tender` varchar(100) DEFAULT NULL,
  `contract_amount` varchar(100) DEFAULT NULL,
  `fund_released` varchar(100) DEFAULT NULL,
  `expenditure` varchar(100) DEFAULT NULL,
  `remaining_amount` varchar(100) DEFAULT NULL,
  `status` varchar(100) DEFAULT NULL,
  `year` int(11) DEFAULT NULL,
  `contract_period` varchar(100) DEFAULT NULL,
  `district_name` varchar(100) DEFAULT NULL,
  `taluk_name` varchar(11) DEFAULT NULL,
  `plinth_area_sq` varchar(100) DEFAULT NULL,
  `actual_execution_period` varchar(100) DEFAULT NULL,
  `upto_date_expenditure` varchar(100) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `category_id`, `store_id`, `name`, `price`, `description`, `image`, `active`, `maintanance_file`, `infrastructure_details_file`, `contractor_name`, `project_manager`, `agreement_number`, `scheduled_start_date`, `scheduled_end_date`, `actual_start_date`, `actual_end_date`, `amount_put_to_tender`, `contract_amount`, `fund_released`, `expenditure`, `remaining_amount`, `status`, `year`, `contract_period`, `district_name`, `taluk_name`, `plinth_area_sq`, `actual_execution_period`, `upto_date_expenditure`, `created_at`) VALUES
(35, '7', '1', 'Bagalkot Government Girls Hostel', NULL, 'Bagalkot Government Girls Hostel', NULL, 1, 'assets/images/product_image/60fe5f5ba0b3c.docx', 'assets/images/product_image/60fe5f5ba1bd0.xlsx', 'manikanta', '42', 'bagal23456', '2021-07-26', '2021-07-27', '2021-07-27', '2021-07-27', '2100000', '120000', '1200000', '2021-07-27', '1200000', NULL, 1, '10', '1', '4', '200000', '5 months', NULL, '0000-00-00 00:00:00'),
(36, '7', '1', 'maintanence', NULL, 'Bagalkot Government Girls Hostel  ', NULL, 1, 'assets/images/product_image/60fe60521a400.docx', 'assets/images/product_image/60fe60521b4c8.xlsx', 'mani', '42', 'manni1223344', '2021-07-26', '2021-07-27', '2021-07-26', '2021-07-27', '140000', '1500000', '100000', '2021-07-26', '12000000', NULL, 1, '4', '1', '1', '12000000', '3 months', NULL, '0000-00-00 00:00:00'),
(39, '4', '1', 'Government Boys Hostel', NULL, ' Government Boys Hostel', '[\"assets\\/images\\/product_image\\/1591006744phpWkEhOU.png\"]', 1, 'assets/images/product_image/60ff907a8c926.docx', 'assets/images/product_image/60ff907a8d3c9.xlsx', 'Akash', '50', 'hostel123', '2021-07-27', '2021-07-28', '2021-07-27', '2021-07-28', '120000', '120000', '120000', '2021-07-27', '120000', NULL, 1, '120000', '1', '1', '25,000', '4 months', NULL, '0000-00-00 00:00:00'),
(41, '6', '1', 'Bagalkote sports Project', NULL, 'Sport project', '[\"assets\\/images\\/product_image\\/25631_1_1.jpg\"]', 1, 'assets/images/product_image/60ff925ab0547.pdf', 'assets/images/product_image/60ff925ab0817.xlsx', 'Akash', '50', 'project12344', '2021-07-27', '2021-07-28', '2021-07-27', '2021-07-28', '210000', '120000', '120000', '2021-07-27', '210000', NULL, 2, '3', '1', '1', '24,0000', '2', NULL, '0000-00-00 00:00:00'),
(45, '5', '1', 'Bagalkote Stadium details', NULL, ' Bagalkote District Stadium', '[\"assets\\/images\\/product_image\\/300px-Sree_kanteerava_stadium,Bangalore2.jpg\",\"assets\\/images\\/product_image\\/maxresdefault.jpg\"]', 1, 'assets/images/product_image/610393be3ecc0.pdf', 'assets/images/product_image/610393be3eec5.xlsx', 'Akash', '', 'stadium01', '2021-07-29', '2021-07-30', '2021-07-29', '2021-07-30', '21400000', '230000', '1400000', '2021-07-30', '100000', NULL, 1, '3', '1', '1', '25000', '2', NULL, '0000-00-00 00:00:00'),
(46, '5', '1', 'Badami taluk Stadium', NULL, 'Badami Taluk Stadium', '[\"assets\\/images\\/product_image\\/img_9026-1024x6831.jpg\"]', 1, 'assets/images/product_image/61039774558da.pdf', 'assets/images/product_image/6103977455aaf.xlsx', 'Akash', '50', 'stadium02', '2021-07-29', '2021-07-30', '2021-07-29', '2021-07-30', '1230000', '1230000', '140000', '2021-07-30', '140000', NULL, 1, '4 months', '1', '4', '25,000', '3', NULL, '0000-00-00 00:00:00'),
(48, '5', '1', 'BILAGI TALUK STADIUM', NULL, 'Bilagi taluk stadium     ', '[\"assets\\/images\\/product_image\\/yamuna-sports-complex-header.jpg\"]', 1, 'assets/images/product_image/610399355df25.pdf', 'assets/images/product_image/610399355e0f3.xlsx', 'Akash', '50', 'stadium03', '2021-07-30', '2021-07-30', '2021-07-30', '2021-07-30', '12000', '210000', '120', '2021-07-30', '1200000', NULL, 1, '20', '1', '5', '01210', '112', NULL, '0000-00-00 00:00:00'),
(49, '5', '1', 'Hunagunda Taluk Stadium', NULL, 'Hunagunda Taluk Stadium                  ', '[\"assets\\/images\\/product_image\\/maxresdefault1.jpg\"]', 1, 'assets/images/product_image/61039a4679b54.pdf', 'assets/images/product_image/61039a4679d0a.xlsx', 'Akash', '50', 'stadium04', '2021-07-30', '2021-07-30', '2021-07-30', '2021-07-30', '1234242', '3121212', '212124', '2021-07-30', '1200000', NULL, 1, '1212', '1', '6', '42422', '42', NULL, '0000-00-00 00:00:00'),
(50, '5', '1', 'Jamakandi Taluk Stadium', NULL, 'Jamakhandi', '[\"assets\\/images\\/product_image\\/indoor-std-300x161.jpg\"]', 1, 'assets/images/product_image/61039b6836e9c.pdf', 'assets/images/product_image/61039b6837139.xlsx', 'Akash', '50', 'stadium 05', '2021-07-30', '2021-07-30', '2021-07-30', '2021-07-30', '245000', '2450000', '245000', '2021-07-29', '12000', NULL, 2, '245000', '1', '2', '25000', '12', NULL, '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `stores`
--

CREATE TABLE `stores` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `active` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `stores`
--

INSERT INTO `stores` (`id`, `name`, `active`) VALUES
(1, 'KSPHC', 1);

-- --------------------------------------------------------

--
-- Table structure for table `tables`
--

CREATE TABLE `tables` (
  `id` int(11) NOT NULL,
  `table_name` varchar(255) NOT NULL,
  `capacity` varchar(255) NOT NULL,
  `available` int(11) NOT NULL,
  `active` int(11) NOT NULL,
  `store_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tables`
--

INSERT INTO `tables` (`id`, `table_name`, `capacity`, `available`, `active`, `store_id`) VALUES
(1, 'Table 01', '6', 1, 1, 1),
(2, 'aa', '2', 1, 1, 1),
(3, 'Twst', '', 1, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `taluk`
--

CREATE TABLE `taluk` (
  `id` int(11) NOT NULL,
  `district_id` int(11) DEFAULT NULL,
  `name` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `taluk`
--

INSERT INTO `taluk` (`id`, `district_id`, `name`) VALUES
(1, 1, '1.Bagalkote'),
(2, 1, '2.Jamkhandi'),
(3, 1, '3.Mudhol'),
(4, 1, '4.Badami'),
(5, 1, '5.Bilagi'),
(6, 1, '6.Hunagunda'),
(7, 1, '7.Ilkal'),
(8, 1, '8.Rabkavi Banhatti'),
(9, 1, '9.Guledgudda'),
(10, 2, '1.Ballari'),
(11, 2, '2.Kurugodu'),
(12, 2, '3.Kampli'),
(13, 2, '4.Sanduru'),
(14, 2, '5.?Siraguppa'),
(15, 3, '1.Belagavi'),
(16, 3, '2.Athani'),
(17, 3, '3.?Bailhongal'),
(18, 3, '4.?Chikkodi'),
(19, 3, '5.?Gokak'),
(20, 3, '6.?Khanapura'),
(21, 3, '7.?Mudalgi'),
(22, 3, '8.?Nippani'),
(23, 3, '9.?Raybag'),
(24, 3, '10.?Savadatti'),
(25, 3, '11.?Ramadurga'),
(26, 3, '12.?Kagawada'),
(27, 3, '13.?Hukkeri'),
(28, 3, '14.?Kitturu'),
(29, 4, '1.?Bengaluru?(Bangalore North)'),
(30, 4, '2.?Kengeri?(Bangalore South)'),
(31, 4, '3.?Krishnarajapuram?(Bangalore East)'),
(32, 4, '4.?Anekal'),
(33, 4, '5.?Yelahanka'),
(34, 5, '1.?Nelamangala'),
(35, 5, '2.?Doddaballapura'),
(36, 5, '3.?Devanahalli'),
(37, 5, '4.?Hosakote'),
(38, 6, '1.?Aurad'),
(39, 6, '2.?Basavakalyana'),
(40, 6, '3.?Bhalki'),
(41, 6, '4.?Bidar'),
(42, 6, '5.?Chitgoppa'),
(43, 6, '6.?Hulsoor'),
(44, 6, '7.?Humnabad'),
(45, 6, '8.?Kamalnagar'),
(46, 7, '1.?Chamarajanagara'),
(47, 7, '2.?Gundlupete'),
(48, 7, '3.?Kollegala'),
(49, 7, '4.?Yelanduru'),
(50, 7, '5.?Hanur'),
(51, 7, '6.?Ramapura'),
(52, 8, '1.?Chikkaballapura'),
(53, 8, '2.?Bagepalli'),
(54, 8, '3.?Chintamani'),
(55, 8, '4.?Gauribidanur'),
(56, 8, '5.?Gudibanda'),
(57, 8, '6.?Sidlaghatta'),
(58, 8, '7.?Chelur'),
(59, 9, '1.?Chikkamagaluru'),
(60, 9, '2.?Kadur'),
(61, 9, '3.?Koppa'),
(62, 9, '4.?Mudigere'),
(63, 9, '5.?Narasimharajapura'),
(64, 9, '6.?Sringeri'),
(65, 9, '7.?Tarikere'),
(66, 9, '8.?Ajjampura'),
(67, 9, '9.?Kalasa'),
(68, 10, '1.?Chitradurga'),
(69, 10, '2.?Challakere'),
(70, 10, '3.?Hiriyur'),
(71, 10, '4.?Holalkere'),
(72, 10, '5.?Hosadurga'),
(73, 10, '6.?Molakalmuru'),
(74, 11, '1.?Mangaluru'),
(75, 11, '2.?Ullal'),
(76, 11, '3.?Mulki'),
(77, 11, '4.?Moodbidri'),
(78, 11, '5.?Bantwala'),
(79, 11, '6.?Beltangadi'),
(80, 11, '7.?Puttur'),
(81, 11, '8.?Sulya'),
(82, 11, '9.?Kadaba'),
(83, 12, '1.?Davanagere'),
(84, 12, '2.?Harihara'),
(85, 12, '3.?Channagiri'),
(86, 12, '4.?Honnali'),
(87, 12, '5.?Nyamathi'),
(88, 12, '6.?Jagalur'),
(89, 13, '1.?Kalghatgi'),
(90, 13, '2.?Dharawada'),
(91, 13, '3.?Hubballi?(Rural)'),
(92, 13, '4.?Hubballi?(Urban)'),
(93, 13, '5.?Kundgol'),
(94, 13, '6.?Navalgund'),
(95, 13, '7.?Alnavara'),
(96, 13, '8.?Annigeri'),
(97, 14, '1.?Gadag'),
(98, 14, '2.?Naragund'),
(99, 14, '3.?Mundaragi'),
(100, 14, '4.?Ron'),
(101, 14, '5.?Gajendragada'),
(102, 14, '6.?Lakshmeshwara'),
(103, 14, '7.?Shirahatti'),
(104, 15, '1.?Hassan'),
(105, 15, '2.?Arasikere'),
(106, 15, '3.?Channarayapattana'),
(107, 15, '4.?Holenarsipura'),
(108, 15, '5.?Sakleshpura'),
(109, 15, '6.?Aluru'),
(110, 15, '7.?Arakalagudu'),
(111, 15, '8.?Beluru'),
(112, 16, '1.?Ranibennur'),
(113, 16, '2.?Byadgi'),
(114, 16, '3.?Hangal'),
(115, 16, '4.?Haveri'),
(116, 16, '5.?Savanuru'),
(117, 16, '6.?Hirekeruru'),
(118, 16, '7.?Shiggavi'),
(119, 16, '8.?Rattihalli'),
(120, 17, '1.?Kalaburagi'),
(121, 17, '2.?Afzalpura'),
(122, 17, '3.?Alanda'),
(123, 17, '4.?Chincholi'),
(124, 17, '5.?Chitapura'),
(125, 17, '6.?Jevargi'),
(126, 17, '7.?Sedam'),
(127, 18, '1.?Madikeri'),
(128, 18, '2.?Somawarapete'),
(129, 18, '3.?Virajapete'),
(130, 18, '4.?Kushalanagara'),
(131, 19, '1.?Kolara'),
(132, 19, '2.?Bangarapete'),
(133, 19, '3.?Maluru'),
(134, 19, '4.?Srinivasapura'),
(135, 19, '6.?Kolar Gold Fields?(Robertsonpete)'),
(136, 20, '1.?Koppala'),
(137, 20, '2.?Gangavathi'),
(138, 20, '3.?Kushtagi'),
(139, 20, '4.?Yalaburga'),
(140, 20, '5.?Kanakagiri'),
(141, 20, '6.?Karatagi'),
(142, 20, '7.?Kukanoor'),
(143, 21, '1.?Mandya'),
(144, 21, '2.?Maddur'),
(145, 21, '3.?Malavalli'),
(146, 21, '4.?Srirangapattana'),
(147, 21, '5.?Krishnarajpet'),
(148, 21, '6.?Nagamangala'),
(149, 21, '7.?Pandavapura'),
(150, 22, '1.?Mysuru'),
(151, 22, '2.?Hunasuru'),
(152, 22, '3.?Krishnarajanagara'),
(153, 22, '4.?Nanjanagudu'),
(154, 22, '5.?Heggadadevanakote'),
(155, 22, '6.?Piriyapattana'),
(156, 22, '7.?T.Narasipura'),
(157, 22, '8.?Saragur'),
(158, 22, '9.?Saligrama'),
(159, 23, '1.?Raichur'),
(160, 23, '2.?Sindhnur'),
(161, 23, '4.?Devadurga'),
(162, 23, '5.?Lingsugur'),
(163, 23, '6.?Mudgal'),
(164, 23, '7.?Maski'),
(165, 23, '8.?Sirawar'),
(166, 23, '9.?Turavihal'),
(167, 23, '10.?Balaganuru'),
(168, 23, '11.?Hatti'),
(169, 23, '12.?Kavital'),
(170, 24, '1.?Ramanagara'),
(171, 24, '2.?Magadi'),
(172, 24, '3.?Kanakapura'),
(173, 24, '4.?Channapatna'),
(174, 24, '5.?Harohalli'),
(175, 24, '7.?Kunigal'),
(176, 24, '8.?Huliyurdurga'),
(177, 25, '1.?Shivamogga'),
(178, 25, '2.?Bhadravathi'),
(179, 25, '3.?Hosanagara'),
(180, 25, '4.?Shikaripura'),
(181, 25, '5.?Soraba'),
(182, 25, '6.?Tirthahalli'),
(183, 25, '7.?Sagara'),
(184, 25, '8.?Nyamathi'),
(185, 26, '1.?Tumakuru'),
(186, 26, '2.?Chikkanayakanahalli'),
(187, 26, '3.?Kunigal'),
(188, 26, '4.?Madhugiri'),
(189, 26, '5.?Sira'),
(190, 26, '6.?Tiptur'),
(191, 26, '7.?Gubbi'),
(192, 26, '8.?Koratagere'),
(193, 26, '9.?Pavagada'),
(194, 26, '10.?Turuvekere'),
(195, 27, '1.?Udupi'),
(196, 27, '2.?Kaup'),
(197, 27, '7.?Byndoor'),
(198, 27, '4.?Karkala'),
(199, 27, '5.?Kundapura'),
(200, 27, '6.?Hebri'),
(201, 27, '3.?Brahmavara'),
(202, 28, '1.Karawara'),
(203, 28, '2.?Sirsi'),
(204, 28, '3.?Joida'),
(205, 28, '4.?Dandeli'),
(206, 28, '5.?Bhatkal'),
(207, 28, '6.?Kumta'),
(208, 28, '7.?Ankola'),
(209, 28, '8.?Haliyal'),
(210, 28, '9.?Honnavar'),
(211, 28, '10.?Mundgod'),
(212, 28, '11.?Siddapura'),
(213, 28, '12.?Yellapur'),
(214, 29, '1.Vijayapura'),
(215, 29, '2.?Indi'),
(216, 29, '3.?Basavana Bagewadi'),
(217, 29, '4.?Sindgi'),
(218, 29, '5.?Muddebihal'),
(219, 29, '6.?Talikote'),
(220, 29, '7.?Devara Hipparagi'),
(221, 29, '8.?Chadchan'),
(222, 29, '9.?Tikota'),
(223, 29, '10.?Babaleshwar'),
(224, 29, '11.?Kolhar'),
(225, 29, '12.?Nidagundi'),
(226, 29, '13.?Almel'),
(227, 30, '1.?Yadagiri'),
(228, 30, '2.?Shahapura'),
(229, 30, '3.?Surapura'),
(230, 30, '4.?Gurmitkal'),
(231, 30, 'Vadagera'),
(232, 30, '6.?Hunsagi'),
(233, 31, '1.?Hosapete'),
(234, 31, '2.?Hagaribommanahalli'),
(235, 31, '3.?Harpanahalli'),
(236, 31, '4.?Hoovina Hadagali'),
(237, 31, '5.?Kudligi'),
(238, 31, '6.?Kotturu');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(255) DEFAULT NULL,
  `designation` varchar(100) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `firstname` varchar(255) DEFAULT NULL,
  `lastname` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `map` text,
  `gender` int(11) DEFAULT NULL,
  `store_id` int(11) DEFAULT NULL,
  `district_id` int(11) DEFAULT NULL,
  `profile` text,
  `status` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `designation`, `password`, `email`, `firstname`, `lastname`, `phone`, `map`, `gender`, `store_id`, `district_id`, `profile`, `status`, `created_at`) VALUES
(1, 'admin', NULL, '$2y$10$ug1eNsCYaQEcxu9o/8bSRORZs2hJUhsM4kYufvT6coOQl9k.xOKuq', 'admin@123.com', 'Dinner', 'Treats', '80789998', NULL, 1, 0, NULL, NULL, NULL, '2021-04-23 00:10:48'),
(50, 'Akash', 'District Officer', '$2y$10$v8OINFqHvRPyYkahEgiLRuOOaKjlmBE.4g6ecBxxgUSo2rBbJcnbe', 'akash@gmail.com', 'akash', 's', '8310019756', 'assets/images/product_image/60fea2ea70103.jpg', 1, NULL, 1, NULL, 1, '0000-00-00 00:00:00'),
(52, 'Rakesh', 'head office', '$2y$10$Nelfd79KTD6PHyR2iGToT.AwmmckXEgTq3mVbI.dWvA0q7LeQcQyi', 'rakesh@gmail.com', 'rakesh', 'n', '8310019756', 'assets/images/product_image/60ffa3a3ab06e.png', 1, NULL, 1, NULL, 1, '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `user_group`
--

CREATE TABLE `user_group` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `user_group`
--

INSERT INTO `user_group` (`id`, `user_id`, `group_id`) VALUES
(1, 1, 1),
(27, 26, 4),
(28, 27, 5),
(29, 28, 5),
(30, 29, 5),
(31, 30, 5),
(32, 36, 5),
(33, 37, 5),
(34, 38, 4),
(35, 39, 4),
(36, 40, 5),
(37, 41, 4),
(38, 42, 4),
(39, 43, 5),
(40, 44, 4),
(41, 45, 4),
(42, 46, 4),
(43, 47, 4),
(44, 48, 4),
(45, 49, 4),
(46, 50, 4),
(47, 51, 5),
(48, 52, 5);

-- --------------------------------------------------------

--
-- Table structure for table `year`
--

CREATE TABLE `year` (
  `id` int(11) NOT NULL,
  `year` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `year`
--

INSERT INTO `year` (`id`, `year`) VALUES
(1, 2016),
(2, 2017),
(3, 2018),
(4, 2019),
(5, 2020),
(6, 2021),
(7, 2022);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `banner`
--
ALTER TABLE `banner`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `company`
--
ALTER TABLE `company`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `district`
--
ALTER TABLE `district`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `groups`
--
ALTER TABLE `groups`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `order_items`
--
ALTER TABLE `order_items`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pincode`
--
ALTER TABLE `pincode`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `stores`
--
ALTER TABLE `stores`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tables`
--
ALTER TABLE `tables`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `taluk`
--
ALTER TABLE `taluk`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_group`
--
ALTER TABLE `user_group`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `year`
--
ALTER TABLE `year`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `banner`
--
ALTER TABLE `banner`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `company`
--
ALTER TABLE `company`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `district`
--
ALTER TABLE `district`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT for table `groups`
--
ALTER TABLE `groups`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `order_items`
--
ALTER TABLE `order_items`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pincode`
--
ALTER TABLE `pincode`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- AUTO_INCREMENT for table `stores`
--
ALTER TABLE `stores`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tables`
--
ALTER TABLE `tables`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `taluk`
--
ALTER TABLE `taluk`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=240;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=53;

--
-- AUTO_INCREMENT for table `user_group`
--
ALTER TABLE `user_group`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=49;

--
-- AUTO_INCREMENT for table `year`
--
ALTER TABLE `year`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
