-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Aug 22, 2024 at 03:24 PM
-- Server version: 5.7.41
-- PHP Version: 8.1.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `hashtagsoftware_realestate`
--

-- --------------------------------------------------------

--
-- Table structure for table `aboutuses`
--

CREATE TABLE `aboutuses` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_active` tinyint(4) NOT NULL DEFAULT '1',
  `is_deleted` tinyint(4) NOT NULL DEFAULT '0',
  `ip_address` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `deleted_by` bigint(20) NOT NULL DEFAULT '0',
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_by` bigint(20) NOT NULL DEFAULT '0',
  `updated_by` bigint(20) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `aboutuses`
--

INSERT INTO `aboutuses` (`id`, `uuid`, `title`, `description`, `image`, `is_active`, `is_deleted`, `ip_address`, `deleted_by`, `deleted_at`, `created_by`, `updated_by`, `created_at`, `updated_at`) VALUES
(1, '1711992067fBe', 'About Us', '<p>Test About Us</p>', '1713670475-601251009-13-9.webp', 1, 0, '1.38.91.8', 0, NULL, 1, 1, '2024-04-01 11:51:07', '2024-04-20 22:04:35');

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `category_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_active` tinyint(4) NOT NULL DEFAULT '1',
  `ip_address` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_deleted` tinyint(4) NOT NULL DEFAULT '0',
  `deleted_by` bigint(20) NOT NULL DEFAULT '0',
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_by` bigint(20) NOT NULL DEFAULT '0',
  `updated_by` bigint(20) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `uuid`, `category_name`, `is_active`, `ip_address`, `is_deleted`, `deleted_by`, `deleted_at`, `created_by`, `updated_by`, `created_at`, `updated_at`) VALUES
(1, '1712597002mOY', 'Flat', 1, '127.0.0.1', 0, 0, NULL, 1, 1, '2024-04-08 11:53:22', '2024-04-08 11:53:22'),
(2, '1712597007VIC', 'Shop', 1, '127.0.0.1', 0, 0, NULL, 1, 1, '2024-04-08 11:53:27', '2024-04-08 11:53:27'),
(3, '1712597018cW9', 'Open Plot', 1, '127.0.0.1', 0, 0, NULL, 1, 1, '2024-04-08 11:53:38', '2024-04-08 11:53:38'),
(4, '1712597030YPp', 'House', 1, '127.0.0.1', 0, 0, NULL, 1, 1, '2024-04-08 11:53:50', '2024-04-08 11:53:50'),
(5, '1712597036M5O', 'Form', 1, '127.0.0.1', 0, 0, NULL, 1, 1, '2024-04-08 11:53:56', '2024-04-08 11:53:56');

-- --------------------------------------------------------

--
-- Table structure for table `cities`
--

CREATE TABLE `cities` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `country_uuid` bigint(20) NOT NULL DEFAULT '1',
  `state_uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `city_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_active` tinyint(4) NOT NULL DEFAULT '0',
  `is_deleted` tinyint(4) NOT NULL DEFAULT '0',
  `ip_address` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `deleted_by` bigint(20) NOT NULL DEFAULT '0',
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_by` bigint(20) NOT NULL DEFAULT '0',
  `updated_by` bigint(20) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `cities`
--

INSERT INTO `cities` (`id`, `uuid`, `country_uuid`, `state_uuid`, `city_name`, `is_active`, `is_deleted`, `ip_address`, `deleted_by`, `deleted_at`, `created_by`, `updated_by`, `created_at`, `updated_at`) VALUES
(1, '1693007200f8w', 1, '32', 'North and Middle Andaman', 1, 0, '', 0, NULL, 0, 0, NULL, NULL),
(2, '1693007201f8w', 1, '32', 'South Andaman', 1, 0, '', 0, NULL, 0, 0, NULL, NULL),
(3, '1693007202f8w', 1, '32', 'Nicobar', 1, 0, '', 0, NULL, 0, 0, NULL, NULL),
(4, '1693007203f8w', 1, '1', 'Adilabad', 1, 0, '', 0, NULL, 0, 0, NULL, NULL),
(5, '1693007204f8w', 1, '1', 'Anantapur', 1, 0, '', 0, NULL, 0, 0, NULL, NULL),
(6, '1693007205f8w', 1, '1', 'Chittoor', 1, 0, '', 0, NULL, 0, 0, NULL, NULL),
(7, '1693007206f8w', 1, '1', 'East Godavari', 1, 0, '', 0, NULL, 0, 0, NULL, NULL),
(8, '1693007207f8w', 1, '1', 'Guntur', 1, 0, '', 0, NULL, 0, 0, NULL, NULL),
(9, '1693007208f8w', 1, '1', 'Hyderabad', 1, 0, '', 0, NULL, 0, 0, NULL, NULL),
(10, '1693007209f8w', 1, '1', 'Kadapa', 1, 0, '', 0, NULL, 0, 0, NULL, NULL),
(11, '1693007210f8w', 1, '1', 'Karimnagar', 1, 0, '', 0, NULL, 0, 0, NULL, NULL),
(12, '1693007211f8w', 1, '1', 'Khammam', 1, 0, '', 0, NULL, 0, 0, NULL, NULL),
(13, '1693007212f8w', 1, '1', 'Krishna', 1, 0, '', 0, NULL, 0, 0, NULL, NULL),
(14, '1693007213f8w', 1, '1', 'Kurnool', 1, 0, '', 0, NULL, 0, 0, NULL, NULL),
(15, '1693007214f8w', 1, '1', 'Mahbubnagar', 1, 0, '', 0, NULL, 0, 0, NULL, NULL),
(16, '1693007215f8w', 1, '1', 'Medak', 1, 0, '', 0, NULL, 0, 0, NULL, NULL),
(17, '1693007216f8w', 1, '1', 'Nalgonda', 1, 0, '', 0, NULL, 0, 0, NULL, NULL),
(18, '1693007217f8w', 1, '1', 'Nellore', 1, 0, '', 0, NULL, 0, 0, NULL, NULL),
(19, '1693007218f8w', 1, '1', 'Nizamabad', 1, 0, '', 0, NULL, 0, 0, NULL, NULL),
(20, '1693007219f8w', 1, '1', 'Prakasam', 1, 0, '', 0, NULL, 0, 0, NULL, NULL),
(21, '1693007220f8w', 1, '1', 'Rangareddi', 1, 0, '', 0, NULL, 0, 0, NULL, NULL),
(22, '1693007221f8w', 1, '1', 'Srikakulam', 1, 0, '', 0, NULL, 0, 0, NULL, NULL),
(23, '1693007222f8w', 1, '1', 'Vishakhapatnam', 1, 0, '', 0, NULL, 0, 0, NULL, NULL),
(24, '1693007223f8w', 1, '1', 'Vizianagaram', 1, 0, '', 0, NULL, 0, 0, NULL, NULL),
(25, '1693007224f8w', 1, '1', 'Warangal', 1, 0, '', 0, NULL, 0, 0, NULL, NULL),
(26, '1693007225f8w', 1, '1', 'West Godavari', 1, 0, '', 0, NULL, 0, 0, NULL, NULL),
(27, '1693007226f8w', 1, '3', 'Anjaw', 1, 0, '', 0, NULL, 0, 0, NULL, NULL),
(28, '1693007227f8w', 1, '3', 'Changlang', 1, 0, '', 0, NULL, 0, 0, NULL, NULL),
(29, '1693007228f8w', 1, '3', 'East Kameng', 1, 0, '', 0, NULL, 0, 0, NULL, NULL),
(30, '1693007229f8w', 1, '3', 'Lohit', 1, 0, '', 0, NULL, 0, 0, NULL, NULL),
(31, '1693007230f8w', 1, '3', 'Lower Subansiri', 1, 0, '', 0, NULL, 0, 0, NULL, NULL),
(32, '1693007231f8w', 1, '3', 'Papum Pare', 1, 0, '', 0, NULL, 0, 0, NULL, NULL),
(33, '1693007232f8w', 1, '3', 'Tirap', 1, 0, '', 0, NULL, 0, 0, NULL, NULL),
(34, '1693007233f8w', 1, '3', 'Dibang Valley', 1, 0, '', 0, NULL, 0, 0, NULL, NULL),
(35, '1693007234f8w', 1, '3', 'Upper Subansiri', 1, 0, '', 0, NULL, 0, 0, NULL, NULL),
(36, '1693007235f8w', 1, '3', 'West Kameng', 1, 0, '', 0, NULL, 0, 0, NULL, NULL),
(37, '1693007236f8w', 1, '2', 'Barpeta', 1, 0, '', 0, NULL, 0, 0, NULL, NULL),
(38, '1693007237f8w', 1, '2', 'Bongaigaon', 1, 0, '', 0, NULL, 0, 0, NULL, NULL),
(39, '1693007238f8w', 1, '2', 'Cachar', 1, 0, '', 0, NULL, 0, 0, NULL, NULL),
(40, '1693007239f8w', 1, '2', 'Darrang', 1, 0, '', 0, NULL, 0, 0, NULL, NULL),
(41, '1693007240f8w', 1, '2', 'Dhemaji', 1, 0, '', 0, NULL, 0, 0, NULL, NULL),
(42, '1693007241f8w', 1, '2', 'Dhubri', 1, 0, '', 0, NULL, 0, 0, NULL, NULL),
(43, '1693007242f8w', 1, '2', 'Dibrugarh', 1, 0, '', 0, NULL, 0, 0, NULL, NULL),
(44, '1693007243f8w', 1, '2', 'Goalpara', 1, 0, '', 0, NULL, 0, 0, NULL, NULL),
(45, '1693007244f8w', 1, '2', 'Golaghat', 1, 0, '', 0, NULL, 0, 0, NULL, NULL),
(46, '1693007245f8w', 1, '2', 'Hailakandi', 1, 0, '', 0, NULL, 0, 0, NULL, NULL),
(47, '1693007246f8w', 1, '2', 'Jorhat', 1, 0, '', 0, NULL, 0, 0, NULL, NULL),
(48, '1693007247f8w', 1, '2', 'Karbi Anglong', 1, 0, '', 0, NULL, 0, 0, NULL, NULL),
(49, '1693007248f8w', 1, '2', 'Karimganj', 1, 0, '', 0, NULL, 0, 0, NULL, NULL),
(50, '1693007249f8w', 1, '2', 'Kokrajhar', 1, 0, '', 0, NULL, 0, 0, NULL, NULL),
(51, '1693007250f8w', 1, '2', 'Lakhimpur', 1, 0, '', 0, NULL, 0, 0, NULL, NULL),
(52, '1693007251f8w', 1, '2', 'Marigaon', 1, 0, '', 0, NULL, 0, 0, NULL, NULL),
(53, '1693007252f8w', 1, '2', 'Nagaon', 1, 0, '', 0, NULL, 0, 0, NULL, NULL),
(54, '1693007253f8w', 1, '2', 'Nalbari', 1, 0, '', 0, NULL, 0, 0, NULL, NULL),
(55, '1693007254f8w', 1, '2', 'North Cachar Hills', 1, 0, '', 0, NULL, 0, 0, NULL, NULL),
(56, '1693007255f8w', 1, '2', 'Sibsagar', 1, 0, '', 0, NULL, 0, 0, NULL, NULL),
(57, '1693007256f8w', 1, '2', 'Sonitpur', 1, 0, '', 0, NULL, 0, 0, NULL, NULL),
(58, '1693007257f8w', 1, '2', 'Tinsukia', 1, 0, '', 0, NULL, 0, 0, NULL, NULL),
(59, '1693007258f8w', 1, '4', 'Araria', 1, 0, '', 0, NULL, 0, 0, NULL, NULL),
(60, '1693007259f8w', 1, '4', 'Aurangabad', 1, 0, '', 0, NULL, 0, 0, NULL, NULL),
(61, '1693007260f8w', 1, '4', 'Banka', 1, 0, '', 0, NULL, 0, 0, NULL, NULL),
(62, '1693007261f8w', 1, '4', 'Begusarai', 1, 0, '', 0, NULL, 0, 0, NULL, NULL),
(63, '1693007262f8w', 1, '4', 'Bhagalpur', 1, 0, '', 0, NULL, 0, 0, NULL, NULL),
(64, '1693007263f8w', 1, '4', 'Bhojpur', 1, 0, '', 0, NULL, 0, 0, NULL, NULL),
(65, '1693007264f8w', 1, '4', 'Buxar', 1, 0, '', 0, NULL, 0, 0, NULL, NULL),
(66, '1693007265f8w', 1, '4', 'Darbhanga', 1, 0, '', 0, NULL, 0, 0, NULL, NULL),
(67, '1693007266f8w', 1, '4', 'Purba Champaran', 1, 0, '', 0, NULL, 0, 0, NULL, NULL),
(68, '1693007267f8w', 1, '4', 'Gaya', 1, 0, '', 0, NULL, 0, 0, NULL, NULL),
(69, '1693007268f8w', 1, '4', 'Gopalganj', 1, 0, '', 0, NULL, 0, 0, NULL, NULL),
(70, '1693007269f8w', 1, '4', 'Jamui', 1, 0, '', 0, NULL, 0, 0, NULL, NULL),
(71, '1693007270f8w', 1, '4', 'Jehanabad', 1, 0, '', 0, NULL, 0, 0, NULL, NULL),
(72, '1693007271f8w', 1, '4', 'Khagaria', 1, 0, '', 0, NULL, 0, 0, NULL, NULL),
(73, '1693007272f8w', 1, '4', 'Kishanganj', 1, 0, '', 0, NULL, 0, 0, NULL, NULL),
(74, '1693007273f8w', 1, '4', 'Kaimur', 1, 0, '', 0, NULL, 0, 0, NULL, NULL),
(75, '1693007274f8w ', 1, '4', 'Katihar', 1, 0, '', 0, NULL, 0, 0, NULL, NULL),
(76, '1693007275f8w', 1, '4', 'Lakhisarai', 1, 0, '', 0, NULL, 0, 0, NULL, NULL),
(77, '1693007276f8w', 1, '4', 'Madhubani', 1, 0, '', 0, NULL, 0, 0, NULL, NULL),
(78, '1693007277f8w', 1, '4', 'Munger', 1, 0, '', 0, NULL, 0, 0, NULL, NULL),
(79, '1693007278f8w', 1, '4', 'Madhepura', 1, 0, '', 0, NULL, 0, 0, NULL, NULL),
(80, '1693007279f8w', 1, '4', 'Muzaffarpur', 1, 0, '', 0, NULL, 0, 0, NULL, NULL),
(81, '1693007280f8w', 1, '4', 'Nalanda', 1, 0, '', 0, NULL, 0, 0, NULL, NULL),
(82, '1693007281f8w', 1, '4', 'Nawada', 1, 0, '', 0, NULL, 0, 0, NULL, NULL),
(83, '1693007282f8w', 1, '4', 'Patna', 1, 0, '', 0, NULL, 0, 0, NULL, NULL),
(84, '1693007283f8w', 1, '4', 'Purnia', 1, 0, '', 0, NULL, 0, 0, NULL, NULL),
(85, '1693007284f8w', 1, '4', 'Rohtas', 1, 0, '', 0, NULL, 0, 0, NULL, NULL),
(86, '1693007285f8w', 1, '4', 'Saharsa', 1, 0, '', 0, NULL, 0, 0, NULL, NULL),
(87, '1693007286f8w', 1, '4', 'Samastipur', 1, 0, '', 0, NULL, 0, 0, NULL, NULL),
(88, '1693007287f8w', 1, '4', 'Sheohar', 1, 0, '', 0, NULL, 0, 0, NULL, NULL),
(89, '1693007288f8w', 1, '4', 'Sheikhpura', 1, 0, '', 0, NULL, 0, 0, NULL, NULL),
(90, '1693007289f8w', 1, '4', 'Saran', 1, 0, '', 0, NULL, 0, 0, NULL, NULL),
(91, '1693007290f8w', 1, '4', 'Sitamarhi', 1, 0, '', 0, NULL, 0, 0, NULL, NULL),
(92, '1693007291f8w', 1, '4', 'Supaul', 1, 0, '', 0, NULL, 0, 0, NULL, NULL),
(93, '1693007292f8w', 1, '4', 'Siwan', 1, 0, '', 0, NULL, 0, 0, NULL, NULL),
(94, '1693007293f8w', 1, '4', 'Vaishali', 1, 0, '', 0, NULL, 0, 0, NULL, NULL),
(95, '1693007294f8w', 1, '4', 'Pashchim Champaran', 1, 0, '', 0, NULL, 0, 0, NULL, NULL),
(96, '1693007295f8w', 1, '36', 'Bastar', 1, 0, '', 0, NULL, 0, 0, NULL, NULL),
(97, '1693007296f8w', 1, '36', 'Bilaspur', 1, 0, '', 0, NULL, 0, 0, NULL, NULL),
(98, '1693007297f8w', 1, '36', 'Dantewada', 1, 0, '', 0, NULL, 0, 0, NULL, NULL),
(99, '1693007298f8w', 1, '36', 'Dhamtari', 1, 0, '', 0, NULL, 0, 0, NULL, NULL),
(100, '1693007299f8w', 1, '36', 'Durg', 1, 0, '', 0, NULL, 0, 0, NULL, NULL),
(101, '1693007300f8w', 1, '36', 'Jashpur', 1, 0, '', 0, NULL, 0, 0, NULL, NULL),
(102, '1693007301f8w', 1, '36', 'Janjgir-Champa', 1, 0, '', 0, NULL, 0, 0, NULL, NULL),
(103, '1693007302f8w', 1, '36', 'Korba', 1, 0, '', 0, NULL, 0, 0, NULL, NULL),
(104, '1693007303f8w', 1, '36', 'Koriya', 1, 0, '', 0, NULL, 0, 0, NULL, NULL),
(105, '1693007304f8w', 1, '36', 'Kanker', 1, 0, '', 0, NULL, 0, 0, NULL, NULL),
(106, '1693007305f8w', 1, '36', 'Kawardha', 1, 0, '', 0, NULL, 0, 0, NULL, NULL),
(107, '1693007306f8w', 1, '36', 'Mahasamund', 1, 0, '', 0, NULL, 0, 0, NULL, NULL),
(108, '1693007307f8w', 1, '36', 'Raigarh', 1, 0, '', 0, NULL, 0, 0, NULL, NULL),
(109, '1693007308f8w', 1, '36', 'Rajnandgaon', 1, 0, '', 0, NULL, 0, 0, NULL, NULL),
(110, '1693007309f8w', 1, '36', 'Raipur', 1, 0, '', 0, NULL, 0, 0, NULL, NULL),
(111, '1693007310f8w', 1, '36', 'Surguja', 1, 0, '', 0, NULL, 0, 0, NULL, NULL),
(112, '1693007311f8w', 1, '29', 'Diu', 1, 0, '', 0, NULL, 0, 0, NULL, NULL),
(113, '1693007312f8w', 1, '29', 'Daman', 1, 0, '', 0, NULL, 0, 0, NULL, NULL),
(114, '1693007313f8w', 1, '25', 'Central Delhi', 1, 0, '', 0, NULL, 0, 0, NULL, NULL),
(115, '1693007314f8w', 1, '25', 'East Delhi', 1, 0, '', 0, NULL, 0, 0, NULL, NULL),
(116, '1693007315f8w', 1, '25', 'New Delhi', 1, 0, '', 0, NULL, 0, 0, NULL, NULL),
(117, '1693007316f8w', 1, '25', 'North Delhi', 1, 0, '', 0, NULL, 0, 0, NULL, NULL),
(118, '1693007317f8w', 1, '25', 'North East Delhi', 1, 0, '', 0, NULL, 0, 0, NULL, NULL),
(119, '1693007318f8w', 1, '25', 'North West Delhi', 1, 0, '', 0, NULL, 0, 0, NULL, NULL),
(120, '1693007319f8w', 1, '25', 'South Delhi', 1, 0, '', 0, NULL, 0, 0, NULL, NULL),
(121, '1693007320f8w', 1, '25', 'South West Delhi', 1, 0, '', 0, NULL, 0, 0, NULL, NULL),
(122, '1693007321f8w', 1, '25', 'West Delhi', 1, 0, '', 0, NULL, 0, 0, NULL, NULL),
(123, '1693007322f8w', 1, '26', 'North Goa', 1, 0, '', 0, NULL, 0, 0, NULL, NULL),
(124, '1693007323f8w', 1, '26', 'South Goa', 1, 0, '', 0, NULL, 0, 0, NULL, NULL),
(125, '1693007324f8w', 1, '5', 'Ahmedabad', 1, 0, '', 0, NULL, 0, 0, NULL, NULL),
(126, '1693007325f8w', 1, '5', 'Amreli District', 1, 0, '', 0, NULL, 0, 0, NULL, NULL),
(127, '1693007326f8w', 1, '5', 'Anand', 1, 0, '', 0, NULL, 0, 0, NULL, NULL),
(128, '1693007327f8w', 1, '5', 'Banaskantha', 1, 0, '', 0, NULL, 0, 0, NULL, NULL),
(129, '1693007328f8w', 1, '5', 'Bharuch', 1, 0, '', 0, NULL, 0, 0, NULL, NULL),
(130, '1693007329f8w', 1, '5', 'Bhavnagar', 1, 0, '', 0, NULL, 0, 0, NULL, NULL),
(131, '1693007330f8w', 1, '5', 'Dahod', 1, 0, '', 0, NULL, 0, 0, NULL, NULL),
(132, '1693007331f8w', 1, '5', 'The Dangs', 1, 0, '', 0, NULL, 0, 0, NULL, NULL),
(133, '1693007332f8w', 1, '5', 'Gandhinagar', 1, 0, '', 0, NULL, 0, 0, NULL, NULL),
(134, '1693007333f8w', 1, '5', 'Jamnagar', 1, 0, '', 0, NULL, 0, 0, NULL, NULL),
(135, '1693007334f8w', 1, '5', 'Junagadh', 1, 0, '', 0, NULL, 0, 0, NULL, NULL),
(136, '1693007335f8w', 1, '5', 'Kutch', 1, 0, '', 0, NULL, 0, 0, NULL, NULL),
(137, '1693007336f8w', 1, '5', 'Kheda', 1, 0, '', 0, NULL, 0, 0, NULL, NULL),
(138, '1693007337f8w', 1, '5', 'Mehsana', 1, 0, '', 0, NULL, 0, 0, NULL, NULL),
(139, '1693007338f8w', 1, '5', 'Narmada', 1, 0, '', 0, NULL, 0, 0, NULL, NULL),
(140, '1693007339f8w', 1, '5', 'Navsari', 1, 0, '', 0, NULL, 0, 0, NULL, NULL),
(141, '1693007340f8w', 1, '5', 'Patan', 1, 0, '', 0, NULL, 0, 0, NULL, NULL),
(142, '1693007341f8w', 1, '5', 'Panchmahal', 1, 0, '', 0, NULL, 0, 0, NULL, NULL),
(143, '1693007342f8w', 1, '5', 'Porbandar', 1, 0, '', 0, NULL, 0, 0, NULL, NULL),
(144, '1693007343f8w', 1, '5', 'Rajkot', 1, 0, '', 0, NULL, 0, 0, NULL, NULL),
(145, '1693007344f8w', 1, '5', 'Sabarkantha', 1, 0, '', 0, NULL, 0, 0, NULL, NULL),
(146, '1693007345f8w', 1, '5', 'Surendranagar', 1, 0, '', 0, NULL, 0, 0, NULL, NULL),
(147, '1693007346f8w', 1, '5', 'Surat', 1, 0, '', 0, NULL, 0, 0, NULL, NULL),
(148, '1693007347f8w', 1, '5', 'Vadodara', 1, 0, '', 0, NULL, 0, 0, NULL, NULL),
(149, '1693007348f8w', 1, '5', 'Valsad', 1, 0, '', 0, NULL, 0, 0, NULL, NULL),
(150, '1693007349f8w', 1, '6', 'Ambala', 1, 0, '', 0, NULL, 0, 0, NULL, NULL),
(151, '1693007350f8w', 1, '6', 'Bhiwani', 1, 0, '', 0, NULL, 0, 0, NULL, NULL),
(152, '1693007351f8w', 1, '6', 'Faridabad', 1, 0, '', 0, NULL, 0, 0, NULL, NULL),
(153, '1693007352f8w', 1, '6', 'Fatehabad', 1, 0, '', 0, NULL, 0, 0, NULL, NULL),
(154, '1693007353f8w', 1, '6', 'Gurgaon', 1, 0, '', 0, NULL, 0, 0, NULL, NULL),
(155, '1693007354f8w', 1, '6', 'Hissar', 1, 0, '', 0, NULL, 0, 0, NULL, NULL),
(156, '1693007355f8w', 1, '6', 'Jhajjar', 1, 0, '', 0, NULL, 0, 0, NULL, NULL),
(157, '1693007356f8w', 1, '6', 'Jind', 1, 0, '', 0, NULL, 0, 0, NULL, NULL),
(158, '1693007357f8w', 1, '6', 'Karnal', 1, 0, '', 0, NULL, 0, 0, NULL, NULL),
(159, '1693007358f8w', 1, '6', 'Kaithal', 1, 0, '', 0, NULL, 0, 0, NULL, NULL),
(160, '1693007359f8w', 1, '6', 'Kurukshetra', 1, 0, '', 0, NULL, 0, 0, NULL, NULL),
(161, '1693007360f8w', 1, '6', 'Mahendragarh', 1, 0, '', 0, NULL, 0, 0, NULL, NULL),
(162, '1693007362f8w', 1, '6', 'Mewat', 1, 0, '', 0, NULL, 0, 0, NULL, NULL),
(163, '1693007363f8w', 1, '6', 'Panchkula', 1, 0, '', 0, NULL, 0, 0, NULL, NULL),
(164, '1693007364f8w', 1, '6', 'Panipat', 1, 0, '', 0, NULL, 0, 0, NULL, NULL),
(165, '1693007365f8w', 1, '6', 'Rewari', 1, 0, '', 0, NULL, 0, 0, NULL, NULL),
(166, '1693007366f8w', 1, '6', 'Rohtak', 1, 0, '', 0, NULL, 0, 0, NULL, NULL),
(167, '1693007367f8w', 1, '6', 'Sirsa', 1, 0, '', 0, NULL, 0, 0, NULL, NULL),
(168, '1693007368f8w', 1, '6', 'Sonepat', 1, 0, '', 0, NULL, 0, 0, NULL, NULL),
(169, '1693007369f8w', 1, '6', 'Yamuna Nagar', 1, 0, '', 0, NULL, 0, 0, NULL, NULL),
(170, '1693007370f8w', 1, '6', 'Palwal', 1, 0, '', 0, NULL, 0, 0, NULL, NULL),
(171, '1693007371f8w', 1, '7', 'Bilaspur', 1, 0, '', 0, NULL, 0, 0, NULL, NULL),
(172, '1693007372f8w', 1, '7', 'Chamba', 1, 0, '', 0, NULL, 0, 0, NULL, NULL),
(173, '1693007373f8w', 1, '7', 'Hamirpur', 1, 0, '', 0, NULL, 0, 0, NULL, NULL),
(174, '1693007374f8w', 1, '7', 'Kangra', 1, 0, '', 0, NULL, 0, 0, NULL, NULL),
(175, '1693007375f8w', 1, '7', 'Kinnaur', 1, 0, '', 0, NULL, 0, 0, NULL, NULL),
(176, '1693007376f8w', 1, '7', 'Kulu', 1, 0, '', 0, NULL, 0, 0, NULL, NULL),
(177, '1693007377f8w', 1, '7', 'Lahaul and Spiti', 1, 0, '', 0, NULL, 0, 0, NULL, NULL),
(178, '1693007378f8w', 1, '7', 'Mandi', 1, 0, '', 0, NULL, 0, 0, NULL, NULL),
(179, '1693007379f8w', 1, '7', 'Shimla', 1, 0, '', 0, NULL, 0, 0, NULL, NULL),
(180, '1693007380f8w', 1, '7', 'Sirmaur', 1, 0, '', 0, NULL, 0, 0, NULL, NULL),
(181, '1693007381f8w', 1, '7', 'Solan', 1, 0, '', 0, NULL, 0, 0, NULL, NULL),
(182, '1693007382f8w', 1, '7', 'Una', 1, 0, '', 0, NULL, 0, 0, NULL, NULL),
(183, '1693007383f8w', 1, '8', 'Anantnag', 1, 0, '', 0, NULL, 0, 0, NULL, NULL),
(184, '1693007384f8w', 1, '8', 'Badgam', 1, 0, '', 0, NULL, 0, 0, NULL, NULL),
(185, '1693007385f8w', 1, '8', 'Bandipore', 1, 0, '', 0, NULL, 0, 0, NULL, NULL),
(186, '1693007386f8w', 1, '8', 'Baramula', 1, 0, '', 0, NULL, 0, 0, NULL, NULL),
(187, '1693007387f8w', 1, '8', 'Doda', 1, 0, '', 0, NULL, 0, 0, NULL, NULL),
(188, '1693007388f8w', 1, '8', 'Jammu', 1, 0, '', 0, NULL, 0, 0, NULL, NULL),
(189, '1693007389f8w', 1, '8', 'Kargil', 1, 0, '', 0, NULL, 0, 0, NULL, NULL),
(190, '1693007390f8w', 1, '8', 'Kathua', 1, 0, '', 0, NULL, 0, 0, NULL, NULL),
(191, '1693007391f8w', 1, '8', 'Kupwara', 1, 0, '', 0, NULL, 0, 0, NULL, NULL),
(192, '1693007392f8w', 1, '8', 'Leh', 1, 0, '', 0, NULL, 0, 0, NULL, NULL),
(193, '1693007393f8w', 1, '8', 'Poonch', 1, 0, '', 0, NULL, 0, 0, NULL, NULL),
(194, '1693007394f8w', 1, '8', 'Pulwama', 1, 0, '', 0, NULL, 0, 0, NULL, NULL),
(195, '1693007395f8w', 1, '8', 'Rajauri', 1, 0, '', 0, NULL, 0, 0, NULL, NULL),
(196, '1693007396f8w', 1, '8', 'Srinagar', 1, 0, '', 0, NULL, 0, 0, NULL, NULL),
(197, '1693007397f8w', 1, '8', 'Samba', 1, 0, '', 0, NULL, 0, 0, NULL, NULL),
(198, '1693007398f8w', 1, '8', 'Udhampur', 1, 0, '', 0, NULL, 0, 0, NULL, NULL),
(199, '1693007399f8w', 1, '34', 'Bokaro', 1, 0, '', 0, NULL, 0, 0, NULL, NULL),
(200, '1693007400f8w', 1, '34', 'Chatra', 1, 0, '', 0, NULL, 0, 0, NULL, NULL),
(201, '1693007401f8w', 1, '34', 'Deoghar', 1, 0, '', 0, NULL, 0, 0, NULL, NULL),
(202, '1693007402f8w', 1, '34', 'Dhanbad', 1, 0, '', 0, NULL, 0, 0, NULL, NULL),
(203, '1693007403f8w', 1, '34', 'Dumka', 1, 0, '', 0, NULL, 0, 0, NULL, NULL),
(204, '1693007404f8w', 1, '34', 'Purba Singhbhum', 1, 0, '', 0, NULL, 0, 0, NULL, NULL),
(205, '1693007405f8w', 1, '34', 'Garhwa', 1, 0, '', 0, NULL, 0, 0, NULL, NULL),
(206, '1693007406f8w', 1, '34', 'Giridih', 1, 0, '', 0, NULL, 0, 0, NULL, NULL),
(207, '1693007407f8w', 1, '34', 'Godda', 1, 0, '', 0, NULL, 0, 0, NULL, NULL),
(208, '1693007408f8w', 1, '34', 'Gumla', 1, 0, '', 0, NULL, 0, 0, NULL, NULL),
(209, '1693007409f8w', 1, '34', 'Hazaribagh', 1, 0, '', 0, NULL, 0, 0, NULL, NULL),
(210, '1693007410f8w', 1, '34', 'Koderma', 1, 0, '', 0, NULL, 0, 0, NULL, NULL),
(211, '1693007411f8w', 1, '34', 'Lohardaga', 1, 0, '', 0, NULL, 0, 0, NULL, NULL),
(212, '1693007412f8w', 1, '34', 'Pakur', 1, 0, '', 0, NULL, 0, 0, NULL, NULL),
(213, '1693007413f8w', 1, '34', 'Palamu', 1, 0, '', 0, NULL, 0, 0, NULL, NULL),
(214, '1693007414f8w', 1, '34', 'Ranchi', 1, 0, '', 0, NULL, 0, 0, NULL, NULL),
(215, '1693007415f8w', 1, '34', 'Sahibganj', 1, 0, '', 0, NULL, 0, 0, NULL, NULL),
(216, '1693007416f8w', 1, '34', 'Seraikela and Kharsawan', 1, 0, '', 0, NULL, 0, 0, NULL, NULL),
(217, '1693007417f8w', 1, '34', 'Pashchim Singhbhum', 1, 0, '', 0, NULL, 0, 0, NULL, NULL),
(218, '1693007418f8w', 1, '34', 'Ramgarh', 1, 0, '', 0, NULL, 0, 0, NULL, NULL),
(219, '1693007419f8w', 1, '9', 'Bidar', 1, 0, '', 0, NULL, 0, 0, NULL, NULL),
(220, '1693007420f8w', 1, '9', 'Belgaum', 1, 0, '', 0, NULL, 0, 0, NULL, NULL),
(221, '1693007421f8w', 1, '9', 'Bijapur', 1, 0, '', 0, NULL, 0, 0, NULL, NULL),
(222, '1693007422f8w', 1, '9', 'Bagalkot', 1, 0, '', 0, NULL, 0, 0, NULL, NULL),
(223, '1693007423f8w', 1, '9', 'Bellary', 1, 0, '', 0, NULL, 0, 0, NULL, NULL),
(224, '1693007424f8w', 1, '9', 'Bangalore Rural District', 1, 0, '', 0, NULL, 0, 0, NULL, NULL),
(225, '1693007425f8w', 1, '9', 'Bangalore Urban District', 1, 0, '', 0, NULL, 0, 0, NULL, NULL),
(226, '1693007426f8w', 1, '9', 'Chamarajnagar', 1, 0, '', 0, NULL, 0, 0, NULL, NULL),
(227, '1693007427f8w', 1, '9', 'Chikmagalur', 1, 0, '', 0, NULL, 0, 0, NULL, NULL),
(228, '1693007428f8w', 1, '9', 'Chitradurga', 1, 0, '', 0, NULL, 0, 0, NULL, NULL),
(229, '1693007429f8w', 1, '9', 'Davanagere', 1, 0, '', 0, NULL, 0, 0, NULL, NULL),
(230, '1693007430f8w', 1, '9', 'Dharwad', 1, 0, '', 0, NULL, 0, 0, NULL, NULL),
(231, '1693007431f8w', 1, '9', 'Dakshina Kannada', 1, 0, '', 0, NULL, 0, 0, NULL, NULL),
(232, '1693007432f8w', 1, '9', 'Gadag', 1, 0, '', 0, NULL, 0, 0, NULL, NULL),
(233, '1693007433f8w', 1, '9', 'Gulbarga', 1, 0, '', 0, NULL, 0, 0, NULL, NULL),
(234, '1693007434f8w', 1, '9', 'Hassan', 1, 0, '', 0, NULL, 0, 0, NULL, NULL),
(235, '1693007435f8w', 1, '9', 'Haveri District', 1, 0, '', 0, NULL, 0, 0, NULL, NULL),
(236, '1693007436f8w', 1, '9', 'Kodagu', 1, 0, '', 0, NULL, 0, 0, NULL, NULL),
(237, '1693007437f8w', 1, '9', 'Kolar', 1, 0, '', 0, NULL, 0, 0, NULL, NULL),
(238, '1693007438f8w', 1, '9', 'Koppal', 1, 0, '', 0, NULL, 0, 0, NULL, NULL),
(239, '1693007439f8w', 1, '9', 'Mandya', 1, 0, '', 0, NULL, 0, 0, NULL, NULL),
(240, '1693007440f8w', 1, '9', 'Mysore', 1, 0, '', 0, NULL, 0, 0, NULL, NULL),
(241, '1693007441f8w', 1, '9', 'Raichur', 1, 0, '', 0, NULL, 0, 0, NULL, NULL),
(242, '1693007442f8w', 1, '9', 'Shimoga', 1, 0, '', 0, NULL, 0, 0, NULL, NULL),
(243, '1693007443f8w', 1, '9', 'Tumkur', 1, 0, '', 0, NULL, 0, 0, NULL, NULL),
(244, '1693007444f8w', 1, '9', 'Udupi', 1, 0, '', 0, NULL, 0, 0, NULL, NULL),
(245, '1693007445f8w', 1, '9', 'Uttara Kannada', 1, 0, '', 0, NULL, 0, 0, NULL, NULL),
(246, '1693007446f8w', 1, '9', 'Ramanagara', 1, 0, '', 0, NULL, 0, 0, NULL, NULL),
(247, '1693007447f8w', 1, '9', 'Chikballapur', 1, 0, '', 0, NULL, 0, 0, NULL, NULL),
(248, '1693007448f8w', 1, '9', 'Yadagiri', 1, 0, '', 0, NULL, 0, 0, NULL, NULL),
(249, '1693007449f8w', 1, '10', 'Alappuzha', 1, 0, '', 0, NULL, 0, 0, NULL, NULL),
(250, '1693007450f8w', 1, '10', 'Ernakulam', 1, 0, '', 0, NULL, 0, 0, NULL, NULL),
(251, '1693007451f8w', 1, '10', 'Idukki', 1, 0, '', 0, NULL, 0, 0, NULL, NULL),
(252, '1693007452f8w', 1, '10', 'Kollam', 1, 0, '', 0, NULL, 0, 0, NULL, NULL),
(253, '1693007453f8w', 1, '10', 'Kannur', 1, 0, '', 0, NULL, 0, 0, NULL, NULL),
(254, '1693007454f8w', 1, '10', 'Kasaragod', 1, 0, '', 0, NULL, 0, 0, NULL, NULL),
(255, '1693007455f8w', 1, '10', 'Kottayam', 1, 0, '', 0, NULL, 0, 0, NULL, NULL),
(256, '1693007456f8w', 1, '10', 'Kozhikode', 1, 0, '', 0, NULL, 0, 0, NULL, NULL),
(257, '1693007457f8w', 1, '10', 'Malappuram', 1, 0, '', 0, NULL, 0, 0, NULL, NULL),
(258, '1693007458f8w', 1, '10', 'Palakkad', 1, 0, '', 0, NULL, 0, 0, NULL, NULL),
(259, '1693007459f8w', 1, '10', 'Pathanamthitta', 1, 0, '', 0, NULL, 0, 0, NULL, NULL),
(260, '1693007460f8w', 1, '10', 'Thrissur', 1, 0, '', 0, NULL, 0, 0, NULL, NULL),
(261, '1693007461f8w', 1, '10', 'Thiruvananthapuram', 1, 0, '', 0, NULL, 0, 0, NULL, NULL),
(262, '1693007462f8w', 1, '10', 'Wayanad', 1, 0, '', 0, NULL, 0, 0, NULL, NULL),
(263, '1693007463f8w', 1, '11', 'Alirajpur', 1, 0, '', 0, NULL, 0, 0, NULL, NULL),
(264, '1693007464f8w', 1, '11', 'Anuppur', 1, 0, '', 0, NULL, 0, 0, NULL, NULL),
(265, '1693007465f8w', 1, '11', 'Ashok Nagar', 1, 0, '', 0, NULL, 0, 0, NULL, NULL),
(266, '1693007466f8w', 1, '11', 'Balaghat', 1, 0, '', 0, NULL, 0, 0, NULL, NULL),
(267, '1693007467f8w', 1, '11', 'Barwani', 1, 0, '', 0, NULL, 0, 0, NULL, NULL),
(268, '1693007468f8w', 1, '11', 'Betul', 1, 0, '', 0, NULL, 0, 0, NULL, NULL),
(269, '1693007469f8w', 1, '11', 'Bhind', 1, 0, '', 0, NULL, 0, 0, NULL, NULL),
(270, '1693007470f8w', 1, '11', 'Bhopal', 1, 0, '', 0, NULL, 0, 0, NULL, NULL),
(271, '1693007471f8w', 1, '11', 'Burhanpur', 1, 0, '', 0, NULL, 0, 0, NULL, NULL),
(272, '1693007472f8w', 1, '11', 'Chhatarpur', 1, 0, '', 0, NULL, 0, 0, NULL, NULL),
(273, '1693007473f8w', 1, '11', 'Chhindwara', 1, 0, '', 0, NULL, 0, 0, NULL, NULL),
(274, '1693007474f8w', 1, '11', 'Damoh', 1, 0, '', 0, NULL, 0, 0, NULL, NULL),
(275, '1693007475f8w', 1, '11', 'Datia', 1, 0, '', 0, NULL, 0, 0, NULL, NULL),
(276, '1693007476f8w', 1, '11', 'Dewas', 1, 0, '', 0, NULL, 0, 0, NULL, NULL),
(277, '1693007477f8w', 1, '11', 'Dhar', 1, 0, '', 0, NULL, 0, 0, NULL, NULL),
(278, '1693007478f8w', 1, '11', 'Dindori', 1, 0, '', 0, NULL, 0, 0, NULL, NULL),
(279, '1693007479f8w', 1, '11', 'Guna', 1, 0, '', 0, NULL, 0, 0, NULL, NULL),
(280, '1693007480f8w', 1, '11', 'Gwalior', 1, 0, '', 0, NULL, 0, 0, NULL, NULL),
(281, '1693007481f8w', 1, '11', 'Harda', 1, 0, '', 0, NULL, 0, 0, NULL, NULL),
(282, '1693007482f8w', 1, '11', 'Hoshangabad', 1, 0, '', 0, NULL, 0, 0, NULL, NULL),
(283, '1693007483f8w', 1, '11', 'Indore', 1, 0, '', 0, NULL, 0, 0, NULL, NULL),
(284, '1693007484f8w', 1, '11', 'Jabalpur', 1, 0, '', 0, NULL, 0, 0, NULL, NULL),
(285, '1693007485f8w', 1, '11', 'Jhabua', 1, 0, '', 0, NULL, 0, 0, NULL, NULL),
(286, '1693007486f8w', 1, '11', 'Katni', 1, 0, '', 0, NULL, 0, 0, NULL, NULL),
(287, '1693007487f8w', 1, '11', 'Khandwa', 1, 0, '', 0, NULL, 0, 0, NULL, NULL),
(288, '1693007488f8w', 1, '11', 'Khargone', 1, 0, '', 0, NULL, 0, 0, NULL, NULL),
(289, '1693007489f8w', 1, '11', 'Mandla', 1, 0, '', 0, NULL, 0, 0, NULL, NULL),
(290, '1693007490f8w', 1, '11', 'Mandsaur', 1, 0, '', 0, NULL, 0, 0, NULL, NULL),
(291, '1693007491f8w', 1, '11', 'Morena', 1, 0, '', 0, NULL, 0, 0, NULL, NULL),
(292, '1693007492f8w', 1, '11', 'Narsinghpur', 1, 0, '', 0, NULL, 0, 0, NULL, NULL),
(293, '1693007493f8w', 1, '11', 'Neemuch', 1, 0, '', 0, NULL, 0, 0, NULL, NULL),
(294, '1693007494f8w', 1, '11', 'Panna', 1, 0, '', 0, NULL, 0, 0, NULL, NULL),
(295, '1693007495f8w', 1, '11', 'Rewa', 1, 0, '', 0, NULL, 0, 0, NULL, NULL),
(296, '1693007496f8w', 1, '11', 'Rajgarh', 1, 0, '', 0, NULL, 0, 0, NULL, NULL),
(297, '1693007497f8w', 1, '11', 'Ratlam', 1, 0, '', 0, NULL, 0, 0, NULL, NULL),
(298, '1693007498f8w', 1, '11', 'Raisen', 1, 0, '', 0, NULL, 0, 0, NULL, NULL),
(299, '1693007499f8w', 1, '11', 'Sagar', 1, 0, '', 0, NULL, 0, 0, NULL, NULL),
(300, '1693007500f8w', 1, '11', 'Satna', 1, 0, '', 0, NULL, 0, 0, NULL, NULL),
(301, '1693007501f8w', 1, '11', 'Sehore', 1, 0, '', 0, NULL, 0, 0, NULL, NULL),
(302, '1693007502f8w', 1, '11', 'Seoni', 1, 0, '', 0, NULL, 0, 0, NULL, NULL),
(303, '1693007503f8w', 1, '11', 'Shahdol', 1, 0, '', 0, NULL, 0, 0, NULL, NULL),
(304, '1693007504f8w', 1, '11', 'Shajapur', 1, 0, '', 0, NULL, 0, 0, NULL, NULL),
(305, '1693007505f8w', 1, '11', 'Sheopur', 1, 0, '', 0, NULL, 0, 0, NULL, NULL),
(306, '1693007506f8w', 1, '11', 'Shivpuri', 1, 0, '', 0, NULL, 0, 0, NULL, NULL),
(307, '1693007507f8w', 1, '11', 'Sidhi', 1, 0, '', 0, NULL, 0, 0, NULL, NULL),
(308, '1693007508f8w', 1, '11', 'Singrauli', 1, 0, '', 0, NULL, 0, 0, NULL, NULL),
(309, '1693007509f8w', 1, '11', 'Tikamgarh', 1, 0, '', 0, NULL, 0, 0, NULL, NULL),
(310, '1693007510f8w', 1, '11', 'Ujjain', 1, 0, '', 0, NULL, 0, 0, NULL, NULL),
(311, '1693007511f8w', 1, '11', 'Umaria', 1, 0, '', 0, NULL, 0, 0, NULL, NULL),
(312, '1693007512f8w', 1, '11', 'Vidisha', 1, 0, '', 0, NULL, 0, 0, NULL, NULL),
(313, '1693007513f8w', 1, '12', 'Ahmednagar', 1, 0, '', 0, NULL, 0, 0, NULL, NULL),
(314, '1693007514f8w', 1, '12', 'Akola', 1, 0, '', 0, NULL, 0, 0, NULL, NULL),
(315, '1693007515f8w', 1, '12', 'Amrawati', 1, 0, '', 0, NULL, 0, 0, NULL, NULL),
(316, '1693007516f8w', 1, '12', 'Aurangabad', 1, 0, '', 0, NULL, 0, 0, NULL, NULL),
(317, '1693007517f8w', 1, '12', 'Bhandara', 1, 0, '', 0, NULL, 0, 0, NULL, NULL),
(318, '1693007518f8w', 1, '12', 'Beed', 1, 0, '', 0, NULL, 0, 0, NULL, NULL),
(319, '1693007519f8w', 1, '12', 'Buldhana', 1, 0, '', 0, NULL, 0, 0, NULL, NULL),
(320, '1693007520f8w', 1, '12', 'Chandrapur', 1, 0, '', 0, NULL, 0, 0, NULL, NULL),
(321, '1693007521f8w', 1, '12', 'Dhule', 1, 0, '', 0, NULL, 0, 0, NULL, NULL),
(322, '1693007522f8w', 1, '12', 'Gadchiroli', 1, 0, '', 0, NULL, 0, 0, NULL, NULL),
(323, '1693007523f8w', 1, '12', 'Gondiya', 1, 0, '', 0, NULL, 0, 0, NULL, NULL),
(324, '1693007524f8w', 1, '12', 'Hingoli', 1, 0, '', 0, NULL, 0, 0, NULL, NULL),
(325, '1693007525f8w', 1, '12', 'Jalgaon', 1, 0, '', 0, NULL, 0, 0, NULL, NULL),
(326, '1693007526f8w', 1, '12', 'Jalna', 1, 0, '', 0, NULL, 0, 0, NULL, NULL),
(327, '1693007527f8w', 1, '12', 'Kolhapur', 1, 0, '', 0, NULL, 0, 0, NULL, NULL),
(328, '1693007528f8w', 1, '12', 'Latur', 1, 0, '', 0, NULL, 0, 0, NULL, NULL),
(329, '1693007529f8w', 1, '12', 'Mumbai City', 1, 0, '', 0, NULL, 0, 0, NULL, NULL),
(330, '1693007530f8w', 1, '12', 'Mumbai suburban', 1, 0, '', 0, NULL, 0, 0, NULL, NULL),
(331, '1693007531f8w', 1, '12', 'Nandurbar', 1, 0, '', 0, NULL, 0, 0, NULL, NULL),
(332, '1693007532f8w', 1, '12', 'Nanded', 1, 0, '', 0, NULL, 0, 0, NULL, NULL),
(333, '1693007533f8w', 1, '12', 'Nagpur', 1, 0, '', 0, NULL, 0, 0, NULL, NULL),
(334, '1693007534f8w', 1, '12', 'Nashik', 1, 0, '', 0, NULL, 0, 0, NULL, NULL),
(335, '1693007535f8w', 1, '12', 'Osmanabad', 1, 0, '', 0, NULL, 0, 0, NULL, NULL),
(336, '1693007536f8w', 1, '12', 'Parbhani', 1, 0, '', 0, NULL, 0, 0, NULL, NULL),
(337, '1693007537f8w', 1, '12', 'Pune', 1, 0, '', 0, NULL, 0, 0, NULL, NULL),
(338, '1693007538f8w', 1, '12', 'Raigad', 1, 0, '', 0, NULL, 0, 0, NULL, NULL),
(339, '1693007539f8w', 1, '12', 'Ratnagiri', 1, 0, '', 0, NULL, 0, 0, NULL, NULL),
(340, '1693007540f8w', 1, '12', 'Sindhudurg', 1, 0, '', 0, NULL, 0, 0, NULL, NULL),
(341, '1693007541f8w', 1, '12', 'Sangli', 1, 0, '', 0, NULL, 0, 0, NULL, NULL),
(342, '1693007542f8w', 1, '12', 'Solapur', 1, 0, '', 0, NULL, 0, 0, NULL, NULL),
(343, '1693007543f8w', 1, '12', 'Satara', 1, 0, '', 0, NULL, 0, 0, NULL, NULL),
(344, '1693007544f8w', 1, '12', 'Thane', 1, 0, '', 0, NULL, 0, 0, NULL, NULL),
(345, '1693007545f8w', 1, '12', 'Wardha', 1, 0, '', 0, NULL, 0, 0, NULL, NULL),
(346, '1693007546f8w', 1, '12', 'Washim', 1, 0, '', 0, NULL, 0, 0, NULL, NULL),
(347, '1693007547f8w', 1, '12', 'Yavatmal', 1, 0, '', 0, NULL, 0, 0, NULL, NULL),
(348, '1693007548f8w', 1, '13', 'Bishnupur', 1, 0, '', 0, NULL, 0, 0, NULL, NULL),
(349, '1693007549f8w', 1, '13', 'Churachandpur', 1, 0, '', 0, NULL, 0, 0, NULL, NULL),
(350, '1693007550f8w', 1, '13', 'Chandel', 1, 0, '', 0, NULL, 0, 0, NULL, NULL),
(351, '1693007551f8w', 1, '13', 'Imphal East', 1, 0, '', 0, NULL, 0, 0, NULL, NULL),
(352, '1693007552f8w', 1, '13', 'Senapati', 1, 0, '', 0, NULL, 0, 0, NULL, NULL),
(353, '1693007553f8w', 1, '13', 'Tamenglong', 1, 0, '', 0, NULL, 0, 0, NULL, NULL),
(354, '1693007554f8w', 1, '13', 'Thoubal', 1, 0, '', 0, NULL, 0, 0, NULL, NULL),
(355, '1693007555f8w', 1, '13', 'Ukhrul', 1, 0, '', 0, NULL, 0, 0, NULL, NULL),
(356, '1693007556f8w', 1, '13', 'Imphal West', 1, 0, '', 0, NULL, 0, 0, NULL, NULL),
(357, '1693007557f8w', 1, '14', 'East Garo Hills', 1, 0, '', 0, NULL, 0, 0, NULL, NULL),
(358, '1693007558f8w', 1, '14', 'East Khasi Hills', 1, 0, '', 0, NULL, 0, 0, NULL, NULL),
(359, '1693007559f8w', 1, '14', 'Jaintia Hills', 1, 0, '', 0, NULL, 0, 0, NULL, NULL),
(360, '1693007560f8w', 1, '14', 'Ri-Bhoi', 1, 0, '', 0, NULL, 0, 0, NULL, NULL),
(361, '1693007561f8w', 1, '14', 'South Garo Hills', 1, 0, '', 0, NULL, 0, 0, NULL, NULL),
(362, '1693007562f8w', 1, '14', 'West Garo Hills', 1, 0, '', 0, NULL, 0, 0, NULL, NULL),
(363, '1693007563f8w', 1, '14', 'West Khasi Hills', 1, 0, '', 0, NULL, 0, 0, NULL, NULL),
(364, '1693007564f8w', 1, '15', 'Aizawl', 1, 0, '', 0, NULL, 0, 0, NULL, NULL),
(365, '1693007565f8w', 1, '15', 'Champhai', 1, 0, '', 0, NULL, 0, 0, NULL, NULL),
(366, '1693007566f8w', 1, '15', 'Kolasib', 1, 0, '', 0, NULL, 0, 0, NULL, NULL),
(367, '1693007567f8w', 1, '15', 'Lawngtlai', 1, 0, '', 0, NULL, 0, 0, NULL, NULL),
(368, '1693007568f8w', 1, '15', 'Lunglei', 1, 0, '', 0, NULL, 0, 0, NULL, NULL),
(369, '1693007569f8w', 1, '15', 'Mamit', 1, 0, '', 0, NULL, 0, 0, NULL, NULL),
(370, '1693007570f8w', 1, '15', 'Saiha', 1, 0, '', 0, NULL, 0, 0, NULL, NULL),
(371, '1693007571f8w', 1, '15', 'Serchhip', 1, 0, '', 0, NULL, 0, 0, NULL, NULL),
(372, '1693007572f8w', 1, '16', 'Dimapur', 1, 0, '', 0, NULL, 0, 0, NULL, NULL),
(373, '1693007573f8w', 1, '16', 'Kohima', 1, 0, '', 0, NULL, 0, 0, NULL, NULL),
(374, '1693007574f8w', 1, '16', 'Mokokchung', 1, 0, '', 0, NULL, 0, 0, NULL, NULL),
(375, '1693007575f8w', 1, '16', 'Mon', 1, 0, '', 0, NULL, 0, 0, NULL, NULL),
(376, '1693007576f8w', 1, '16', 'Phek', 1, 0, '', 0, NULL, 0, 0, NULL, NULL),
(377, '1693007577f8w', 1, '16', 'Tuensang', 1, 0, '', 0, NULL, 0, 0, NULL, NULL),
(378, '1693007578f8w', 1, '16', 'Wokha', 1, 0, '', 0, NULL, 0, 0, NULL, NULL),
(379, '1693007579f8w', 1, '16', 'Zunheboto', 1, 0, '', 0, NULL, 0, 0, NULL, NULL),
(380, '1693007580f8w', 1, '17', 'Angul', 1, 0, '', 0, NULL, 0, 0, NULL, NULL),
(381, '1693007581f8w', 1, '17', 'Boudh', 1, 0, '', 0, NULL, 0, 0, NULL, NULL),
(382, '1693007582f8w', 1, '17', 'Bhadrak', 1, 0, '', 0, NULL, 0, 0, NULL, NULL),
(383, '1693007583f8w', 1, '17', 'Bolangir', 1, 0, '', 0, NULL, 0, 0, NULL, NULL),
(384, '1693007584f8w', 1, '17', 'Bargarh', 1, 0, '', 0, NULL, 0, 0, NULL, NULL),
(385, '1693007585f8w', 1, '17', 'Baleswar', 1, 0, '', 0, NULL, 0, 0, NULL, NULL),
(386, '1693007586f8w', 1, '17', 'Cuttack', 1, 0, '', 0, NULL, 0, 0, NULL, NULL),
(387, '1693007587f8w', 1, '17', 'Debagarh', 1, 0, '', 0, NULL, 0, 0, NULL, NULL),
(388, '1693007588f8w', 1, '17', 'Dhenkanal', 1, 0, '', 0, NULL, 0, 0, NULL, NULL),
(389, '1693007589f8w', 1, '17', 'Ganjam', 1, 0, '', 0, NULL, 0, 0, NULL, NULL),
(390, '1693007590f8w', 1, '17', 'Gajapati', 1, 0, '', 0, NULL, 0, 0, NULL, NULL),
(391, '1693007591f8w', 1, '17', 'Jharsuguda', 1, 0, '', 0, NULL, 0, 0, NULL, NULL),
(392, '1693007592f8w', 1, '17', 'Jajapur', 1, 0, '', 0, NULL, 0, 0, NULL, NULL),
(393, '1693007593f8w', 1, '17', 'Jagatsinghpur', 1, 0, '', 0, NULL, 0, 0, NULL, NULL),
(394, '1693007594f8w', 1, '17', 'Khordha', 1, 0, '', 0, NULL, 0, 0, NULL, NULL),
(395, '1693007595f8w', 1, '17', 'Kendujhar', 1, 0, '', 0, NULL, 0, 0, NULL, NULL),
(396, '1693007596f8w', 1, '17', 'Kalahandi', 1, 0, '', 0, NULL, 0, 0, NULL, NULL),
(397, '1693007597f8w', 1, '17', 'Kandhamal', 1, 0, '', 0, NULL, 0, 0, NULL, NULL),
(398, '1693007598f8w', 1, '17', 'Koraput', 1, 0, '', 0, NULL, 0, 0, NULL, NULL),
(399, '1693007599f8w', 1, '17', 'Kendrapara', 1, 0, '', 0, NULL, 0, 0, NULL, NULL),
(400, '1693007600f8w', 1, '17', 'Malkangiri', 1, 0, '', 0, NULL, 0, 0, NULL, NULL),
(401, '1693007601f8w', 1, '17', 'Mayurbhanj', 1, 0, '', 0, NULL, 0, 0, NULL, NULL),
(402, '1693007602f8w', 1, '17', 'Nabarangpur', 1, 0, '', 0, NULL, 0, 0, NULL, NULL),
(403, '1693007603f8w', 1, '17', 'Nuapada', 1, 0, '', 0, NULL, 0, 0, NULL, NULL),
(404, '1693007604f8w', 1, '17', 'Nayagarh', 1, 0, '', 0, NULL, 0, 0, NULL, NULL),
(405, '1693007605f8w', 1, '17', 'Puri', 1, 0, '', 0, NULL, 0, 0, NULL, NULL),
(406, '1693007606f8w', 1, '17', 'Rayagada', 1, 0, '', 0, NULL, 0, 0, NULL, NULL),
(407, '1693007607f8w', 1, '17', 'Sambalpur', 1, 0, '', 0, NULL, 0, 0, NULL, NULL),
(408, '1693007608f8w', 1, '17', 'Subarnapur', 1, 0, '', 0, NULL, 0, 0, NULL, NULL),
(409, '1693007609f8w', 1, '17', 'Sundargarh', 1, 0, '', 0, NULL, 0, 0, NULL, NULL),
(410, '1693007610f8w', 1, '27', 'Karaikal', 1, 0, '', 0, NULL, 0, 0, NULL, NULL),
(411, '1693007611f8w', 1, '27', 'Mahe', 1, 0, '', 0, NULL, 0, 0, NULL, NULL),
(412, '1693007612f8w', 1, '27', 'Puducherry', 1, 0, '', 0, NULL, 0, 0, NULL, NULL),
(413, '1693007613f8w', 1, '27', 'Yanam', 1, 0, '', 0, NULL, 0, 0, NULL, NULL),
(414, '1693007614f8w', 1, '18', 'Amritsar', 1, 0, '', 0, NULL, 0, 0, NULL, NULL),
(415, '1693007615f8w', 1, '18', 'Bathinda', 1, 0, '', 0, NULL, 0, 0, NULL, NULL),
(416, '1693007616f8w', 1, '18', 'Firozpur', 1, 0, '', 0, NULL, 0, 0, NULL, NULL),
(417, '1693007617f8w', 1, '18', 'Faridkot', 1, 0, '', 0, NULL, 0, 0, NULL, NULL),
(418, '1693007618f8w', 1, '18', 'Fatehgarh Sahib', 1, 0, '', 0, NULL, 0, 0, NULL, NULL),
(419, '1693007619f8w', 1, '18', 'Gurdaspur', 1, 0, '', 0, NULL, 0, 0, NULL, NULL),
(420, '1693007620f8w', 1, '18', 'Hoshiarpur', 1, 0, '', 0, NULL, 0, 0, NULL, NULL),
(421, '1693007621f8w', 1, '18', 'Jalandhar', 1, 0, '', 0, NULL, 0, 0, NULL, NULL),
(422, '1693007622f8w', 1, '18', 'Kapurthala', 1, 0, '', 0, NULL, 0, 0, NULL, NULL),
(423, '1693007623f8w', 1, '18', 'Ludhiana', 1, 0, '', 0, NULL, 0, 0, NULL, NULL),
(424, '1693007624f8w', 1, '18', 'Mansa', 1, 0, '', 0, NULL, 0, 0, NULL, NULL),
(425, '1693007625f8w', 1, '18', 'Moga', 1, 0, '', 0, NULL, 0, 0, NULL, NULL),
(426, '1693007626f8w', 1, '18', 'Mukatsar', 1, 0, '', 0, NULL, 0, 0, NULL, NULL),
(427, '1693007627f8w', 1, '18', 'Nawan Shehar', 1, 0, '', 0, NULL, 0, 0, NULL, NULL),
(428, '1693007628f8w', 1, '18', 'Patiala', 1, 0, '', 0, NULL, 0, 0, NULL, NULL),
(429, '1693007629f8w', 1, '18', 'Rupnagar', 1, 0, '', 0, NULL, 0, 0, NULL, NULL),
(430, '1693007630f8w', 1, '18', 'Sangrur', 1, 0, '', 0, NULL, 0, 0, NULL, NULL),
(431, '1693007631f8w', 1, '19', 'Ajmer', 1, 0, '', 0, NULL, 0, 0, NULL, NULL),
(432, '1693007632f8w', 1, '19', 'Alwar', 1, 0, '', 0, NULL, 0, 0, NULL, NULL),
(433, '1693007633f8w', 1, '19', 'Bikaner', 1, 0, '', 0, NULL, 0, 0, NULL, NULL),
(434, '1693007634f8w', 1, '19', 'Barmer', 1, 0, '', 0, NULL, 0, 0, NULL, NULL),
(435, '1693007635f8w', 1, '19', 'Banswara', 1, 0, '', 0, NULL, 0, 0, NULL, NULL),
(436, '1693007636f8w', 1, '19', 'Bharatpur', 1, 0, '', 0, NULL, 0, 0, NULL, NULL),
(437, '1693007637f8w', 1, '19', 'Baran', 1, 0, '', 0, NULL, 0, 0, NULL, NULL),
(438, '1693007638f8w', 1, '19', 'Bundi', 1, 0, '', 0, NULL, 0, 0, NULL, NULL),
(439, '1693007639f8w', 1, '19', 'Bhilwara', 1, 0, '', 0, NULL, 0, 0, NULL, NULL),
(440, '1693007640f8w', 1, '19', 'Churu', 1, 0, '', 0, NULL, 0, 0, NULL, NULL),
(441, '1693007641f8w', 1, '19', 'Chittorgarh', 1, 0, '', 0, NULL, 0, 0, NULL, NULL),
(442, '1693007642f8w', 1, '19', 'Dausa', 1, 0, '', 0, NULL, 0, 0, NULL, NULL),
(443, '1693007643f8w', 1, '19', 'Dholpur', 1, 0, '', 0, NULL, 0, 0, NULL, NULL),
(444, '1693007644f8w', 1, '19', 'Dungapur', 1, 0, '', 0, NULL, 0, 0, NULL, NULL),
(445, '1693007645f8w', 1, '19', 'Ganganagar', 1, 0, '', 0, NULL, 0, 0, NULL, NULL),
(446, '1693007646f8w', 1, '19', 'Hanumangarh', 1, 0, '', 0, NULL, 0, 0, NULL, NULL),
(447, '1693007647f8w', 1, '19', 'Juhnjhunun', 1, 0, '', 0, NULL, 0, 0, NULL, NULL),
(448, '1693007648f8w', 1, '19', 'Jalore', 1, 0, '', 0, NULL, 0, 0, NULL, NULL),
(449, '1693007649f8w', 1, '19', 'Jodhpur', 1, 0, '', 0, NULL, 0, 0, NULL, NULL),
(450, '1693007650f8w', 1, '19', 'Jaipur', 1, 0, '', 0, NULL, 0, 0, NULL, NULL),
(451, '1693007651f8w', 1, '19', 'Jaisalmer', 1, 0, '', 0, NULL, 0, 0, NULL, NULL),
(452, '1693007652f8w', 1, '19', 'Jhalawar', 1, 0, '', 0, NULL, 0, 0, NULL, NULL),
(453, '1693007653f8w', 1, '19', 'Karauli', 1, 0, '', 0, NULL, 0, 0, NULL, NULL),
(454, '1693007654f8w', 1, '19', 'Kota', 1, 0, '', 0, NULL, 0, 0, NULL, NULL),
(455, '1693007655f8w', 1, '19', 'Nagaur', 1, 0, '', 0, NULL, 0, 0, NULL, NULL),
(456, '1693007656f8w', 1, '19', 'Pali', 1, 0, '', 0, NULL, 0, 0, NULL, NULL),
(457, '1693007657f8w', 1, '19', 'Pratapgarh', 1, 0, '', 0, NULL, 0, 0, NULL, NULL),
(458, '1693007658f8w', 1, '19', 'Rajsamand', 1, 0, '', 0, NULL, 0, 0, NULL, NULL),
(459, '1693007659f8w', 1, '19', 'Sikar', 1, 0, '', 0, NULL, 0, 0, NULL, NULL),
(460, '1693007660f8w', 1, '19', 'Sawai Madhopur', 1, 0, '', 0, NULL, 0, 0, NULL, NULL),
(461, '1693007661f8w', 1, '19', 'Sirohi', 1, 0, '', 0, NULL, 0, 0, NULL, NULL),
(462, '1693007662f8w', 1, '19', 'Tonk', 1, 0, '', 0, NULL, 0, 0, NULL, NULL),
(463, '1693007663f8w', 1, '19', 'Udaipur', 1, 0, '', 0, NULL, 0, 0, NULL, NULL),
(464, '1693007664f8w', 1, '20', 'East Sikkim', 1, 0, '', 0, NULL, 0, 0, NULL, NULL),
(465, '1693007665f8w', 1, '20', 'North Sikkim', 1, 0, '', 0, NULL, 0, 0, NULL, NULL),
(466, '1693007666f8w', 1, '20', 'South Sikkim', 1, 0, '', 0, NULL, 0, 0, NULL, NULL),
(467, '1693007667f8w', 1, '20', 'West Sikkim', 1, 0, '', 0, NULL, 0, 0, NULL, NULL),
(468, '1693007668f8w', 1, '21', 'Ariyalur', 1, 0, '', 0, NULL, 0, 0, NULL, NULL),
(469, '1693007669f8w', 1, '21', 'Chennai', 1, 0, '', 0, NULL, 0, 0, NULL, NULL),
(470, '1693007670f8w', 1, '21', 'Coimbatore', 1, 0, '', 0, NULL, 0, 0, NULL, NULL),
(471, '1693007671f8w', 1, '21', 'Cuddalore', 1, 0, '', 0, NULL, 0, 0, NULL, NULL),
(472, '1693007672f8w', 1, '21', 'Dharmapuri', 1, 0, '', 0, NULL, 0, 0, NULL, NULL),
(473, '1693007673f8w', 1, '21', 'Dindigul', 1, 0, '', 0, NULL, 0, 0, NULL, NULL),
(474, '1693007674f8w', 1, '21', 'Erode', 1, 0, '', 0, NULL, 0, 0, NULL, NULL),
(475, '1693007675f8w', 1, '21', 'Kanchipuram', 1, 0, '', 0, NULL, 0, 0, NULL, NULL),
(476, '1693007676f8w', 1, '21', 'Kanyakumari', 1, 0, '', 0, NULL, 0, 0, NULL, NULL),
(477, '1693007677f8w', 1, '21', 'Karur', 1, 0, '', 0, NULL, 0, 0, NULL, NULL),
(478, '1693007678f8w', 1, '21', 'Madurai', 1, 0, '', 0, NULL, 0, 0, NULL, NULL),
(479, '1693007679f8w', 1, '21', 'Nagapattinam', 1, 0, '', 0, NULL, 0, 0, NULL, NULL),
(480, '1693007680f8w', 1, '21', 'The Nilgiris', 1, 0, '', 0, NULL, 0, 0, NULL, NULL),
(481, '1693007681f8w', 1, '21', 'Namakkal', 1, 0, '', 0, NULL, 0, 0, NULL, NULL),
(482, '1693007682f8w', 1, '21', 'Perambalur', 1, 0, '', 0, NULL, 0, 0, NULL, NULL),
(483, '1693007683f8w', 1, '21', 'Pudukkottai', 1, 0, '', 0, NULL, 0, 0, NULL, NULL),
(484, '1693007684f8w', 1, '21', 'Ramanathapuram', 1, 0, '', 0, NULL, 0, 0, NULL, NULL),
(485, '1693007685f8w', 1, '21', 'Salem', 1, 0, '', 0, NULL, 0, 0, NULL, NULL),
(486, '1693007686f8w', 1, '21', 'Sivagangai', 1, 0, '', 0, NULL, 0, 0, NULL, NULL),
(487, '1693007687f8w', 1, '21', 'Tiruppur', 1, 0, '', 0, NULL, 0, 0, NULL, NULL),
(488, '1693007688f8w', 1, '21', 'Tiruchirappalli', 1, 0, '', 0, NULL, 0, 0, NULL, NULL),
(489, '1693007689f8w', 1, '21', 'Theni', 1, 0, '', 0, NULL, 0, 0, NULL, NULL),
(490, '1693007690f8w', 1, '21', 'Tirunelveli', 1, 0, '', 0, NULL, 0, 0, NULL, NULL),
(491, '1693007691f8w', 1, '21', 'Thanjavur', 1, 0, '', 0, NULL, 0, 0, NULL, NULL),
(492, '1693007692f8w', 1, '21', 'Thoothukudi', 1, 0, '', 0, NULL, 0, 0, NULL, NULL),
(493, '1693007693f8w', 1, '21', 'Thiruvallur', 1, 0, '', 0, NULL, 0, 0, NULL, NULL),
(494, '1693007694f8w', 1, '21', 'Thiruvarur', 1, 0, '', 0, NULL, 0, 0, NULL, NULL),
(495, '1693007695f8w', 1, '21', 'Tiruvannamalai', 1, 0, '', 0, NULL, 0, 0, NULL, NULL),
(496, '1693007696f8w', 1, '21', 'Vellore', 1, 0, '', 0, NULL, 0, 0, NULL, NULL),
(497, '1693007697f8w', 1, '21', 'Villupuram', 1, 0, '', 0, NULL, 0, 0, NULL, NULL),
(498, '1693007698f8w', 1, '22', 'Dhalai', 1, 0, '', 0, NULL, 0, 0, NULL, NULL),
(499, '1693007699f8w', 1, '22', 'North Tripura', 1, 0, '', 0, NULL, 0, 0, NULL, NULL),
(500, '1693007700f8w', 1, '22', 'South Tripura', 1, 0, '', 0, NULL, 0, 0, NULL, NULL),
(501, '1693007701f8w', 1, '22', 'West Tripura', 1, 0, '', 0, NULL, 0, 0, NULL, NULL),
(502, '1693007702f8w', 1, '33', 'Almora', 1, 0, '', 0, NULL, 0, 0, NULL, NULL),
(503, '1693007703f8w', 1, '33', 'Bageshwar', 1, 0, '', 0, NULL, 0, 0, NULL, NULL),
(504, '1693007704f8w', 1, '33', 'Chamoli', 1, 0, '', 0, NULL, 0, 0, NULL, NULL),
(505, '1693007705f8w', 1, '33', 'Champawat', 1, 0, '', 0, NULL, 0, 0, NULL, NULL),
(506, '1693007706f8w', 1, '33', 'Dehradun', 1, 0, '', 0, NULL, 0, 0, NULL, NULL),
(507, '1693007707f8w', 1, '33', 'Haridwar', 1, 0, '', 0, NULL, 0, 0, NULL, NULL),
(508, '1693007708f8w', 1, '33', 'Nainital', 1, 0, '', 0, NULL, 0, 0, NULL, NULL),
(509, '1693007709f8w', 1, '33', 'Pauri Garhwal', 1, 0, '', 0, NULL, 0, 0, NULL, NULL),
(510, '1693007710f8w', 1, '33', 'Pithoragharh', 1, 0, '', 0, NULL, 0, 0, NULL, NULL),
(511, '1693007711f8w', 1, '33', 'Rudraprayag', 1, 0, '', 0, NULL, 0, 0, NULL, NULL),
(512, '1693007712f8w', 1, '33', 'Tehri Garhwal', 1, 0, '', 0, NULL, 0, 0, NULL, NULL),
(513, '1693007713f8w', 1, '33', 'Udham Singh Nagar', 1, 0, '', 0, NULL, 0, 0, NULL, NULL),
(514, '1693007714f8w', 1, '33', 'Uttarkashi', 1, 0, '', 0, NULL, 0, 0, NULL, NULL),
(515, '1693007715f8w', 1, '23', 'Agra', 1, 0, '', 0, NULL, 0, 0, NULL, NULL),
(516, '1693007716f8w', 1, '23', 'Allahabad', 1, 0, '', 0, NULL, 0, 0, NULL, NULL),
(517, '1693007717f8w', 1, '23', 'Aligarh', 1, 0, '', 0, NULL, 0, 0, NULL, NULL),
(518, '1693007718f8w', 1, '23', 'Ambedkar Nagar', 1, 0, '', 0, NULL, 0, 0, NULL, NULL),
(519, '1693007719f8w', 1, '23', 'Auraiya', 1, 0, '', 0, NULL, 0, 0, NULL, NULL),
(520, '1693007720f8w', 1, '23', 'Azamgarh', 1, 0, '', 0, NULL, 0, 0, NULL, NULL),
(521, '1693007721f8w', 1, '23', 'Barabanki', 1, 0, '', 0, NULL, 0, 0, NULL, NULL),
(522, '1693007722f8w', 1, '23', 'Badaun', 1, 0, '', 0, NULL, 0, 0, NULL, NULL),
(523, '1693007723f8w', 1, '23', 'Bagpat', 1, 0, '', 0, NULL, 0, 0, NULL, NULL),
(524, '1693007724f8w', 1, '23', 'Bahraich', 1, 0, '', 0, NULL, 0, 0, NULL, NULL),
(525, '1693007725f8w', 1, '23', 'Bijnor', 1, 0, '', 0, NULL, 0, 0, NULL, NULL),
(526, '1693007726f8w', 1, '23', 'Ballia', 1, 0, '', 0, NULL, 0, 0, NULL, NULL),
(527, '1693007727f8w', 1, '23', 'Banda', 1, 0, '', 0, NULL, 0, 0, NULL, NULL),
(528, '1693007728f8w', 1, '23', 'Balrampur', 1, 0, '', 0, NULL, 0, 0, NULL, NULL),
(529, '1693007729f8w', 1, '23', 'Bareilly', 1, 0, '', 0, NULL, 0, 0, NULL, NULL),
(530, '1693007730f8w', 1, '23', 'Basti', 1, 0, '', 0, NULL, 0, 0, NULL, NULL),
(531, '1693007731f8w', 1, '23', 'Bulandshahr', 1, 0, '', 0, NULL, 0, 0, NULL, NULL),
(532, '1693007732f8w', 1, '23', 'Chandauli', 1, 0, '', 0, NULL, 0, 0, NULL, NULL),
(533, '1693007733f8w', 1, '23', 'Chitrakoot', 1, 0, '', 0, NULL, 0, 0, NULL, NULL),
(534, '1693007734f8w', 1, '23', 'Deoria', 1, 0, '', 0, NULL, 0, 0, NULL, NULL),
(535, '1693007735f8w', 1, '23', 'Etah', 1, 0, '', 0, NULL, 0, 0, NULL, NULL),
(536, '1693007736f8w', 1, '23', 'Kanshiram Nagar', 1, 0, '', 0, NULL, 0, 0, NULL, NULL),
(537, '1693007737f8w', 1, '23', 'Etawah', 1, 0, '', 0, NULL, 0, 0, NULL, NULL),
(538, '1693007738f8w', 1, '23', 'Firozabad', 1, 0, '', 0, NULL, 0, 0, NULL, NULL),
(539, '1693007739f8w', 1, '23', 'Farrukhabad', 1, 0, '', 0, NULL, 0, 0, NULL, NULL),
(540, '1693007740f8w', 1, '23', 'Fatehpur', 1, 0, '', 0, NULL, 0, 0, NULL, NULL),
(541, '1693007741f8w', 1, '23', 'Faizabad', 1, 0, '', 0, NULL, 0, 0, NULL, NULL),
(542, '1693007742f8w', 1, '23', 'Gautam Buddha Nagar', 1, 0, '', 0, NULL, 0, 0, NULL, NULL),
(543, '1693007743f8w', 1, '23', 'Gonda', 1, 0, '', 0, NULL, 0, 0, NULL, NULL),
(544, '1693007744f8w', 1, '23', 'Ghazipur', 1, 0, '', 0, NULL, 0, 0, NULL, NULL),
(545, '1693007745f8w', 1, '23', 'Gorkakhpur', 1, 0, '', 0, NULL, 0, 0, NULL, NULL),
(546, '1693007746f8w', 1, '23', 'Ghaziabad', 1, 0, '', 0, NULL, 0, 0, NULL, NULL),
(547, '1693007747f8w', 1, '23', 'Hamirpur', 1, 0, '', 0, NULL, 0, 0, NULL, NULL),
(548, '1693007748f8w', 1, '23', 'Hardoi', 1, 0, '', 0, NULL, 0, 0, NULL, NULL),
(549, '1693007749f8w', 1, '23', 'Mahamaya Nagar', 1, 0, '', 0, NULL, 0, 0, NULL, NULL),
(550, '1693007750f8w', 1, '23', 'Jhansi', 1, 0, '', 0, NULL, 0, 0, NULL, NULL),
(551, '1693007751f8w', 1, '23', 'Jalaun', 1, 0, '', 0, NULL, 0, 0, NULL, NULL),
(552, '1693007752f8w', 1, '23', 'Jyotiba Phule Nagar', 1, 0, '', 0, NULL, 0, 0, NULL, NULL),
(553, '1693007753f8w', 1, '23', 'Jaunpur District', 1, 0, '', 0, NULL, 0, 0, NULL, NULL),
(554, '1693007754f8w', 1, '23', 'Kanpur Dehat', 1, 0, '', 0, NULL, 0, 0, NULL, NULL),
(555, '1693007755f8w', 1, '23', 'Kannauj', 1, 0, '', 0, NULL, 0, 0, NULL, NULL),
(556, '1693007756f8w', 1, '23', 'Kanpur Nagar', 1, 0, '', 0, NULL, 0, 0, NULL, NULL),
(557, '1693007757f8w', 1, '23', 'Kaushambi', 1, 0, '', 0, NULL, 0, 0, NULL, NULL),
(558, '1693007758f8w', 1, '23', 'Kushinagar', 1, 0, '', 0, NULL, 0, 0, NULL, NULL),
(559, '1693007759f8w', 1, '23', 'Lalitpur', 1, 0, '', 0, NULL, 0, 0, NULL, NULL),
(560, '1693007760f8w', 1, '23', 'Lakhimpur Kheri', 1, 0, '', 0, NULL, 0, 0, NULL, NULL),
(561, '1693007761f8w', 1, '23', 'Lucknow', 1, 0, '', 0, NULL, 0, 0, NULL, NULL),
(562, '1693007762f8w', 1, '23', 'Mau', 1, 0, '', 0, NULL, 0, 0, NULL, NULL),
(563, '1693007763f8w', 1, '23', 'Meerut', 1, 0, '', 0, NULL, 0, 0, NULL, NULL),
(564, '1693007764f8w', 1, '23', 'Maharajganj', 1, 0, '', 0, NULL, 0, 0, NULL, NULL),
(565, '1693007765f8w', 1, '23', 'Mahoba', 1, 0, '', 0, NULL, 0, 0, NULL, NULL),
(566, '1693007766f8w', 1, '23', 'Mirzapur', 1, 0, '', 0, NULL, 0, 0, NULL, NULL),
(567, '1693007767f8w', 1, '23', 'Moradabad', 1, 0, '', 0, NULL, 0, 0, NULL, NULL),
(568, '1693007768f8w', 1, '23', 'Mainpuri', 1, 0, '', 0, NULL, 0, 0, NULL, NULL),
(569, '1693007769f8w', 1, '23', 'Mathura', 1, 0, '', 0, NULL, 0, 0, NULL, NULL),
(570, '1693007770f8w', 1, '23', 'Muzaffarnagar', 1, 0, '', 0, NULL, 0, 0, NULL, NULL),
(571, '1693007771f8w', 1, '23', 'Pilibhit', 1, 0, '', 0, NULL, 0, 0, NULL, NULL),
(572, '1693007772f8w', 1, '23', 'Pratapgarh', 1, 0, '', 0, NULL, 0, 0, NULL, NULL),
(573, '1693007773f8w', 1, '23', 'Rampur', 1, 0, '', 0, NULL, 0, 0, NULL, NULL),
(574, '1693007774f8w', 1, '23', 'Rae Bareli', 1, 0, '', 0, NULL, 0, 0, NULL, NULL),
(575, '1693007775f8w', 1, '23', 'Saharanpur', 1, 0, '', 0, NULL, 0, 0, NULL, NULL),
(576, '1693007776f8w', 1, '23', 'Sitapur', 1, 0, '', 0, NULL, 0, 0, NULL, NULL),
(577, '1693007777f8w', 1, '23', 'Shahjahanpur', 1, 0, '', 0, NULL, 0, 0, NULL, NULL),
(578, '1693007778f8w', 1, '23', 'Sant Kabir Nagar', 1, 0, '', 0, NULL, 0, 0, NULL, NULL),
(579, '1693007779f8w', 1, '23', 'Siddharthnagar', 1, 0, '', 0, NULL, 0, 0, NULL, NULL),
(580, '1693007780f8w', 1, '23', 'Sonbhadra', 1, 0, '', 0, NULL, 0, 0, NULL, NULL),
(581, '1693007781f8w', 1, '23', 'Sant Ravidas Nagar', 1, 0, '', 0, NULL, 0, 0, NULL, NULL),
(582, '1693007782f8w', 1, '23', 'Sultanpur', 1, 0, '', 0, NULL, 0, 0, NULL, NULL),
(583, '1693007783f8w', 1, '23', 'Shravasti', 1, 0, '', 0, NULL, 0, 0, NULL, NULL),
(584, '1693007784f8w', 1, '23', 'Unnao', 1, 0, '', 0, NULL, 0, 0, NULL, NULL),
(585, '1693007785f8w', 1, '23', 'Varanasi', 1, 0, '', 0, NULL, 0, 0, NULL, NULL),
(586, '1693007786f8w', 1, '24', 'Birbhum', 1, 0, '', 0, NULL, 0, 0, NULL, NULL),
(587, '1693007787f8w', 1, '24', 'Bankura', 1, 0, '', 0, NULL, 0, 0, NULL, NULL),
(588, '1693007788f8w', 1, '24', 'Bardhaman', 1, 0, '', 0, NULL, 0, 0, NULL, NULL),
(589, '1693007789f8w', 1, '24', 'Darjeeling', 1, 0, '', 0, NULL, 0, 0, NULL, NULL),
(590, '1693007790f8w', 1, '24', 'Dakshin Dinajpur', 1, 0, '', 0, NULL, 0, 0, NULL, NULL),
(591, '1693007791f8w', 1, '24', 'Hooghly', 1, 0, '', 0, NULL, 0, 0, NULL, NULL),
(592, '1693007792f8w', 1, '24', 'Howrah', 1, 0, '', 0, NULL, 0, 0, NULL, NULL),
(593, '1693007793f8w', 1, '24', 'Jalpaiguri', 1, 0, '', 0, NULL, 0, 0, NULL, NULL),
(594, '1693007794f8w', 1, '24', 'Cooch Behar', 1, 0, '', 0, NULL, 0, 0, NULL, NULL),
(595, '1693007795f8w', 1, '24', 'Kolkata', 1, 0, '', 0, NULL, 0, 0, NULL, NULL),
(596, '1693007796f8w', 1, '24', 'Malda', 1, 0, '', 0, NULL, 0, 0, NULL, NULL),
(597, '1693007797f8w', 1, '24', 'Midnapore', 1, 0, '', 0, NULL, 0, 0, NULL, NULL),
(598, '1693007798f8w', 1, '24', 'Murshidabad', 1, 0, '', 0, NULL, 0, 0, NULL, NULL),
(599, '1693007799f8w', 1, '24', 'Nadia', 1, 0, '', 0, NULL, 0, 0, NULL, NULL),
(600, '1693007800f8w', 1, '24', 'North 24 Parganas', 1, 0, '', 0, NULL, 0, 0, NULL, NULL),
(601, '1693007801f8w', 1, '24', 'South 24 Parganas', 1, 0, '', 0, NULL, 0, 0, NULL, NULL),
(602, '1693007802f8w', 1, '24', 'Purulia', 1, 0, '', 0, NULL, 0, 0, NULL, NULL),
(603, '1693007802f8w', 1, '24', 'Uttar Dinajpur', 1, 0, '', 0, NULL, 0, 0, NULL, NULL),
(604, '1704309266fIn', 4, '37', 'Calgary', 1, 0, '127.0.0.1', 0, NULL, 1, 1, '2024-01-03 13:44:26', '2024-01-03 13:44:26');

-- --------------------------------------------------------

--
-- Table structure for table `contacts`
--

CREATE TABLE `contacts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `contact` bigint(20) DEFAULT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_active` tinyint(4) NOT NULL DEFAULT '1',
  `is_deleted` tinyint(4) NOT NULL DEFAULT '0',
  `ip_address` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `deleted_by` bigint(20) NOT NULL DEFAULT '0',
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_by` bigint(20) NOT NULL DEFAULT '0',
  `updated_by` bigint(20) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `contactuses`
--

CREATE TABLE `contactuses` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `contact` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `topic` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_active` tinyint(4) NOT NULL,
  `is_deleted` tinyint(4) NOT NULL DEFAULT '0',
  `ip_address` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `deleted_by` bigint(20) NOT NULL DEFAULT '0',
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_by` bigint(20) NOT NULL,
  `updated_by` bigint(20) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `countries`
--

CREATE TABLE `countries` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `country_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_active` tinyint(4) NOT NULL,
  `is_deleted` tinyint(4) NOT NULL,
  `ip_address` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `deleted_by` bigint(20) NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_by` bigint(20) NOT NULL,
  `updated_by` bigint(20) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `customer_tokens`
--

CREATE TABLE `customer_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `device_type` tinyint(4) NOT NULL,
  `device_token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_active` tinyint(4) NOT NULL,
  `is_deleted` tinyint(4) NOT NULL,
  `ip_address` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `deleted_by` bigint(20) NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_by` bigint(20) NOT NULL,
  `updated_by` bigint(20) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `faqs`
--

CREATE TABLE `faqs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `question` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `answer` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_active` tinyint(4) NOT NULL DEFAULT '1',
  `is_deleted` tinyint(4) NOT NULL DEFAULT '0',
  `ip_address` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `deleted_by` bigint(20) NOT NULL DEFAULT '0',
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_by` bigint(20) NOT NULL DEFAULT '0',
  `updated_by` bigint(20) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_reset_tokens_table', 1),
(3, '2016_06_01_000001_create_oauth_auth_codes_table', 1),
(4, '2016_06_01_000002_create_oauth_access_tokens_table', 1),
(5, '2016_06_01_000003_create_oauth_refresh_tokens_table', 1),
(6, '2016_06_01_000004_create_oauth_clients_table', 1),
(7, '2016_06_01_000005_create_oauth_personal_access_clients_table', 1),
(8, '2019_08_19_000000_create_failed_jobs_table', 1),
(9, '2023_08_11_075130_create_customer_tokens_table', 2),
(10, '2023_08_15_123524_create_standards_table', 2),
(11, '2023_08_15_130848_create_subjects_table', 3),
(12, '2023_08_15_133129_create_lessons_table', 4),
(13, '2023_08_16_121147_create_topics_table', 4),
(14, '2023_08_16_121317_create_paper_types_table', 4),
(15, '2023_09_02_164438_create_aboutuses_table', 5),
(16, '2023_09_13_181956_create_mcq_questions_table', 6),
(17, '2023_09_15_175150_create_subjective_questions_table', 6),
(18, '2023_10_07_081716_create_forms_table', 7),
(19, '2023_10_14_114044_create_categories_table', 8),
(20, '2023_10_15_154634_create_form_images_table', 9),
(21, '2023_10_20_172655_create_houses_table', 10),
(22, '2023_10_20_174406_create_house_images_table', 11),
(23, '2023_10_21_043638_create_shops_table', 12),
(24, '2023_10_21_045030_create_shop_images_table', 13),
(25, '2023_10_21_052329_create_flats_table', 14),
(26, '2023_10_21_052341_create_flat_images_table', 14),
(27, '2023_10_21_064558_create_plots_table', 15),
(28, '2023_10_21_064637_create_plot_images_table', 15),
(29, '2024_03_14_070009_create_aboutuses_table', 16),
(30, '2024_03_14_070022_create_terms_table', 16),
(31, '2024_03_14_070029_create_privacies_table', 16),
(32, '2024_03_14_072511_create_faqs_table', 17),
(33, '2024_03_14_072523_create_social_medias_table', 17),
(34, '2024_03_14_130423_create_newsletters_table', 17),
(35, '2024_03_31_055036_create_properties_table', 18),
(36, '2024_04_01_082801_create_countries_table', 18),
(37, '2024_04_01_082826_create_states_table', 18),
(38, '2024_04_01_082845_create_cities_table', 18),
(39, '2024_04_01_104350_create_sliders_table', 18),
(40, '2024_04_01_123425_create_contacts_table', 18),
(41, '2024_04_01_123511_create_contactuses_table', 18),
(42, '2024_04_08_144643_create_property_images_table', 19);

-- --------------------------------------------------------

--
-- Table structure for table `newsletters`
--

CREATE TABLE `newsletters` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_active` tinyint(4) NOT NULL DEFAULT '1',
  `is_deleted` tinyint(4) NOT NULL DEFAULT '0',
  `ip_address` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `deleted_by` bigint(20) NOT NULL DEFAULT '0',
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `oauth_access_tokens`
--

CREATE TABLE `oauth_access_tokens` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `client_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `oauth_access_tokens`
--

INSERT INTO `oauth_access_tokens` (`id`, `user_id`, `client_id`, `name`, `scopes`, `revoked`, `created_at`, `updated_at`, `expires_at`) VALUES
('00c653e81944741ece2aad7d0f1e85d8c021aa1cb12a0b117b0863cad48b131ccc58abdb7f02199a', 1, 3, 'Personal Access Token', '[]', 0, '2023-10-07 05:12:01', '2023-10-07 05:12:02', '2023-10-07 12:42:02'),
('03a91ed447d736d8c84666c6637735adbc50807331d1e244a4184c4470f291fd6e43a1a949465bff', 1, 3, 'Personal Access Token', '[]', 0, '2024-08-21 11:41:46', '2024-08-21 11:41:46', '2024-08-21 19:11:46'),
('07d6be92521ef8613efc9514a776bec0e8851983e8da6b1b140f596f29a0596694b16a9cd4d74388', 1, 3, 'Personal Access Token', '[]', 0, '2023-10-11 20:38:16', '2023-10-11 20:38:16', '2023-10-12 04:08:16'),
('082cf69175def70b9e9b855b2037851ccad26fc7171ab7c5136bce3a4fd982df959d53a12411fe5c', 1, 3, 'Personal Access Token', '[]', 0, '2023-10-21 05:36:06', '2023-10-21 05:36:06', '2023-10-21 13:06:06'),
('0a7f47693732791abac21b532bee0c2dfa04b815acc30ec3a5923dbc3fa443ced3e1fd9d10938297', 1, 3, 'Personal Access Token', '[]', 0, '2023-10-11 00:49:26', '2023-10-11 00:49:26', '2023-10-11 08:19:26'),
('0bebde806f5713d675ad63efa63f09b6e472df7857482e527947c5a69ca33b4ffa3b6a812e3e50ad', 1, 1, 'Access Token', '[]', 0, '2023-10-05 12:24:03', '2023-10-05 12:24:04', '2024-10-05 17:54:04'),
('0c39cfbfe531d7f097e2e1af170f5ce66614318261bb8e9a7f9911c36a5e20024cc2e3b4c60ca6f9', 1, 3, 'Personal Access Token', '[]', 0, '2024-08-21 02:13:44', '2024-08-21 02:13:45', '2024-08-21 09:43:45'),
('0fbd3b21783d28152e7769a4561465cd4748aa24d14517720155f6946b78209cc8f66ba08f148019', 1, 3, 'Personal Access Token', '[]', 0, '2023-10-21 05:08:13', '2023-10-21 05:08:13', '2023-10-21 12:38:13'),
('12b5cae897ffb38f91bdc3f86525a270b64d06a3dce7bba67211eace0803a0a31ba76012219bb360', 1, 3, 'Personal Access Token', '[]', 0, '2024-05-13 03:31:02', '2024-05-13 03:31:02', '2024-05-13 11:01:02'),
('1cdd3d3e5ba231943898de075730e6752aa7fe5e134d5008f96bdc4a535dea8f52369a64ce99ee66', 1, 1, 'Access Token', '[]', 0, '2023-08-11 00:50:04', '2023-08-11 00:50:04', '2024-08-11 06:20:04'),
('205fcee845a47c6dcd3dbe71f833c9f75bf1be966d68291674499de90769518747753ae5c0ba6321', 1, 3, 'Personal Access Token', '[]', 0, '2023-12-07 04:24:29', '2023-12-07 04:24:29', '2023-12-07 11:54:29'),
('20eb64e2b88b4b502ddf2f60cba1d7e81e096179f1de1342f8f1d8dd8af79af55b46f8c90c21d318', 1, 1, 'Access Token', '[]', 0, '2023-09-02 07:36:49', '2023-09-02 07:36:50', '2024-09-02 13:06:50'),
('24e2641bf7d6617471c3c90dbe1d8a4e22c1f09dcc3af1cd572f6600bf3d9d57b4614c483f4ac6c7', 1, 3, 'Personal Access Token', '[]', 0, '2023-10-06 22:27:27', '2023-10-06 22:27:27', '2023-10-07 05:57:27'),
('2524ece06ab6937d79dac77ebd2495ca48ad6e373e733edef1a11d0bc167ae7baf5b83a0968be493', 1, 3, 'Personal Access Token', '[]', 0, '2023-10-22 23:20:53', '2023-10-22 23:20:54', '2023-10-23 06:50:54'),
('2d5c2b0a089c0a7e25b083a1f4809e12061c0bf64d8aea1c7f58822791aa616834580752f97961d6', 3, 3, 'Personal Access Token', '[]', 0, '2023-10-10 12:28:36', '2023-10-10 12:28:36', '2023-10-10 19:58:36'),
('2ed567d9cc86a49eee1f98b681c92213f6603d40daaf7e1755724204452663a3abca5291055ea870', 1, 3, 'Personal Access Token', '[]', 0, '2023-10-10 10:40:18', '2023-10-10 10:40:18', '2023-10-10 18:10:18'),
('3650120156a76da23d4f8b5051d94b525fc4a6e8b5dabd2676def05829c40c450d603ff5d7ad1679', 1, 3, 'Personal Access Token', '[]', 0, '2024-04-14 10:57:46', '2024-04-14 10:57:47', '2024-04-14 18:27:47'),
('3911081d54ecc9f69fcf059be382ba3c401362679b0aacdeac0cf2dc42a56d73d06df5e39b7c4326', 1, 1, 'Personal Access Token', '[]', 0, '2023-10-05 11:59:11', '2023-10-05 11:59:12', '2023-10-05 19:29:12'),
('3c36c922b3e29480982284d22be1e326cebfad94539df9eacb36eaf4c8461fd7bcf1d00cd1f7e969', 1, 3, 'Personal Access Token', '[]', 0, '2024-04-21 12:12:57', '2024-04-21 12:12:57', '2024-04-21 19:42:57'),
('3d027ba418d57dc8eb4f451fa49367a8262cfd0fdbed4df0887a3102ff2b51a9955c770a33c4e992', 11, 3, 'Personal Access Token', '[]', 0, '2024-05-13 11:21:03', '2024-05-13 11:21:04', '2024-05-13 18:51:04'),
('3f6efda256dd4f400e642d56daf43219801d976b759a3e381703806aa7e5682cf391196ffba294f1', 2, 3, 'Personal Access Token', '[]', 0, '2023-10-06 22:31:19', '2023-10-06 22:31:19', '2023-10-07 06:01:19'),
('41d723113fe44ecead6e330e0074580dfb3157f03e7744ff930f30e8deca69be9bebbcec6dc8a96a', 1, 3, 'Personal Access Token', '[]', 0, '2023-10-10 22:38:07', '2023-10-10 22:38:07', '2023-10-11 06:08:07'),
('4632573a095c2ca49828407abbb2013b52d0975a4c7aa946767350d892e86c8d7268445f999eac96', 1, 3, 'Personal Access Token', '[]', 0, '2023-12-07 08:56:16', '2023-12-07 08:56:16', '2023-12-07 16:26:16'),
('46586ce8049d319d3c1f14f4ca8c7a3bfb7169e10fc7326057f8ca57e3e27d887efe6fdc9c77dec2', 1, 3, 'Personal Access Token', '[]', 0, '2024-03-30 23:45:01', '2024-03-30 23:45:01', '2024-03-31 07:15:01'),
('478f777c623698f83fbbbe765f9c2add4d73399359ade83542cf5d3b10812ed9c4333ace7f6c51f8', 1, 3, 'Personal Access Token', '[]', 0, '2023-10-06 22:01:00', '2023-10-06 22:01:01', '2023-10-07 05:31:01'),
('487e530f568ad3238c132912c340fb64a0ab7c9d6b3e4bdd8aba6796a946f9609b59c7edec2bdbe7', 1, 1, 'Access Token', '[]', 0, '2023-08-11 00:49:28', '2023-08-11 00:49:28', '2024-08-11 06:19:28'),
('48b8b2af940a9c2dca57f357025238ba081751843fb3081a823c222319195e451416c6fbebd61f0d', 7, 3, 'Personal Access Token', '[]', 0, '2024-04-14 14:40:18', '2024-04-14 14:40:19', '2024-04-14 22:10:19'),
('48d8975acdeabb87ed768ddbc9638f1f59f0779d8f164784f12b33a7d5ab9935982f564a1722eeb0', 1, 3, 'Personal Access Token', '[]', 0, '2024-03-30 23:46:51', '2024-03-30 23:46:52', '2024-03-31 07:16:52'),
('4e35b8fd995f01ede6ee99423ddbbeb9c1556b12ea25cd4fbc024b0f25d571b5d7b8c4de126e0951', 1, 3, 'Personal Access Token', '[]', 0, '2024-05-13 11:31:42', '2024-05-13 11:31:42', '2024-05-13 19:01:42'),
('521e55b512618de8553278cdbd546331b817d06d114ec04011b17c418cdf6bf1f627057a53202d38', 11, 3, 'Personal Access Token', '[]', 0, '2024-05-13 11:34:58', '2024-05-13 11:34:58', '2024-05-13 19:04:58'),
('53f347e1a5c0a1ba16ffabe9446c0bc671f4c4855a3d9382013c02846c93fd27b043d581ca2db560', 1, 1, 'Access Token', '[]', 0, '2023-08-11 01:47:46', '2023-08-11 01:47:46', '2024-08-11 07:17:46'),
('56ebcbabe66cd878b85d2c586e83735d489645768e4dd5f3ecffb9a04edd3c9af6d20a25b60e264a', 3, 3, 'Personal Access Token', '[]', 0, '2023-10-06 22:34:51', '2023-10-06 22:34:51', '2023-10-07 06:04:51'),
('5bf42bd3c1e0ce268bf15d351cfd4ae6a695affa8fee8230ec603523a2c64547201e8b8ade2e6225', 1, 3, 'Personal Access Token', '[]', 0, '2024-03-22 12:17:41', '2024-03-22 12:17:41', '2024-03-22 19:47:41'),
('6002dbed35b519c8e01e0d42b76039256c314ea5d27f597a8005c00b7ee7b8b398655b42736cc615', 7, 3, 'Personal Access Token', '[]', 0, '2024-04-14 14:44:17', '2024-04-14 14:44:17', '2024-04-14 22:14:17'),
('62ee14ed62f19900078934ce023be54bada79c72445b8817430bb22e845bdb74a97a5a8c77435330', 4, 3, 'Personal Access Token', '[]', 0, '2023-10-10 13:22:15', '2023-10-10 13:22:15', '2023-10-10 20:52:15'),
('64841bdc04eaa9f737ec04b0333b10bfaaebc08cbd5849c6861697657b89b10819f3c4e76e25dfff', 1, 3, 'Personal Access Token', '[]', 0, '2024-08-21 06:30:57', '2024-08-21 06:30:58', '2024-08-21 14:00:58'),
('650eacb92fefee0ad522f824e811c4804667be7f05433cd5e57b5df6a16c8fee398be978e6a8b960', 1, 3, 'Personal Access Token', '[]', 0, '2024-03-14 08:06:40', '2024-03-14 08:06:40', '2024-03-14 15:36:40'),
('65278bec34b8f0562c40ce1ba41a9d38c95fbe9bade9dde8fad8b185a0045f5b3f4d9d923655139b', 1, 3, 'Personal Access Token', '[]', 0, '2023-10-10 10:46:48', '2023-10-10 10:46:48', '2023-10-10 18:16:48'),
('699a5e71d5978707e46721425bf1943554cdb05f36ef928bdcbffa67362fc6be1c5557a5eacfe9af', 1, 1, 'Personal Access Token', '[]', 0, '2023-08-19 04:07:17', '2023-08-19 04:07:17', '2023-08-19 11:37:17'),
('6a58001c17109b1a46e468eb13ce5b31c63a3580943252feeefbb29e669edb5c6fff761079aafc69', 1, 3, 'Personal Access Token', '[]', 0, '2023-10-12 22:22:11', '2023-10-12 22:22:11', '2023-10-13 05:52:11'),
('6c4561a733556ced699ccef4e71b00409ee06e1108ff108dcbc9f1a8989a79a044b4e61dffe3f638', 1, 3, 'Personal Access Token', '[]', 0, '2023-10-11 03:07:29', '2023-10-11 03:07:29', '2023-10-11 10:37:29'),
('6d8b97ac24d724127052e0f492fdef4e0ba357c4bacd18aa52691392b8383359d774217f8ca85d44', 1, 1, 'Personal Access Token', '[]', 0, '2023-08-26 05:28:12', '2023-08-26 05:28:12', '2023-08-26 12:58:12'),
('6e9222f711b92f9032ef956fc5b2c104fbd1de2bc52b6b4e5454b5e4c84d12ecfa34f29cb498a239', 1, 3, 'Personal Access Token', '[]', 0, '2024-05-15 11:56:45', '2024-05-15 11:56:45', '2024-05-15 19:26:45'),
('70946732abec1bdbc8c8f03c8e4d77b448bf5b2677884501a818370a11ad0c7e6828f44f1559130a', 1, 3, 'Personal Access Token', '[]', 0, '2023-10-15 07:30:55', '2023-10-15 07:30:56', '2023-10-15 15:00:56'),
('730f7d064fa663cdaa91e57818a751582fd1dbcb9236da88c3d78831e4d7070e1ebf058f4f9386bb', 7, 3, 'Personal Access Token', '[]', 0, '2024-04-01 14:05:20', '2024-04-01 14:05:20', '2024-04-01 21:35:20'),
('746fc2638894d7a1e60bc1e9d10626d735768ec4f6d113bff5da31720b71d1d2e0c19ee7bd38bc2e', 1, 3, 'Personal Access Token', '[]', 0, '2023-12-07 04:23:40', '2023-12-07 04:23:40', '2023-12-07 11:53:40'),
('792da8ac1a55837a1d16d572f4fc8b4befde2abcf7f57b4963262617d619da5e87d474efe9e1e07a', 1, 3, 'Personal Access Token', '[]', 0, '2024-04-08 11:38:05', '2024-04-08 11:38:06', '2024-04-08 19:08:06'),
('7a26279dc0743812761cf0034acaa85407ad7d972a1d7ff3944166f2deb6671f0efa0396956acffa', 1, 1, 'Access Token', '[]', 0, '2023-08-11 02:15:13', '2023-08-11 02:15:13', '2024-08-11 07:45:13'),
('7a66f9b4633adee9d0b302e36afe4bb6d06d68e203c2c4678e549f3ef4f526a3e5479c137e0ebff7', 1, 3, 'Personal Access Token', '[]', 0, '2023-10-06 23:29:02', '2023-10-06 23:29:03', '2023-10-07 06:59:03'),
('7b9800b61a87d1f043806531acd09cedb60499495c6e621aaafdb6d65d9a8c1409c2b7bdf799b3f7', 1, 3, 'Personal Access Token', '[]', 0, '2023-12-19 14:08:39', '2023-12-19 14:08:39', '2023-12-19 21:38:39'),
('7d4d5cf43cf809e56d0407360c7b38875ccd03b441eaf5b7bacd6369be9cf5aed27c234a607b65c1', 1, 3, 'Personal Access Token', '[]', 0, '2023-10-06 12:29:50', '2023-10-06 12:29:50', '2023-10-06 19:59:50'),
('82a61e67fb5efeb4c6684fa7a8c471d91f6e7152d64447a135509d38e957ecfe283c8936ecd9efeb', 2, 3, 'Personal Access Token', '[]', 0, '2023-10-06 22:35:06', '2023-10-06 22:35:06', '2023-10-07 06:05:06'),
('82c62fa0296111a7c6226958d9ba841dda1d90709e5a7058308ec5fc69b269d1086b8e91c48f6b0a', 1, 1, 'Personal Access Token', '[]', 0, '2023-08-19 04:18:34', '2023-08-19 04:18:34', '2023-08-19 11:48:34'),
('830cf34f25822742c599aa5d96a16da61c7cc4c11ac24935d6f00c208beb6a2c19bdb744f288973f', 13, 3, 'Personal Access Token', '[]', 0, '2024-08-21 11:45:52', '2024-08-21 11:45:52', '2024-08-21 19:15:52'),
('85d4f5aa1f662f9f7ccce3455ba4c12e22cc1c3d1e7e4b55e0d800e3476b5c5e1947c9287086c026', 7, 3, 'Personal Access Token', '[]', 0, '2024-04-01 14:03:32', '2024-04-01 14:03:33', '2024-04-01 21:33:33'),
('86abfc0a7b5770442f292981a76cdce4aef1faf395f19e3b257fe9174ed67d4a95eef0180671649f', 1, 3, 'Personal Access Token', '[]', 0, '2023-10-10 22:38:25', '2023-10-10 22:38:25', '2023-10-11 06:08:25'),
('88a7ba1883a7c350477e0654569e1ffccc72d90f061a8803304d578e3352f7a9d8f95fd19b5178e3', 1, 1, 'Access Token', '[]', 0, '2023-09-02 12:14:49', '2023-09-02 12:14:49', '2024-09-02 17:44:49'),
('8f531f769f6ec01c8ea1ef2beafbbdbf134972eb6b8ed44f13967508d533339a6c7bd4c1cab89b72', 1, 1, 'Access Token', '[]', 0, '2023-08-11 01:47:23', '2023-08-11 01:47:23', '2024-08-11 07:17:23'),
('917433351f70bb75c3541495b7cc9450eb3a13aa208048652460aecb7d00f86d44265073d9a2552f', 1, 3, 'Personal Access Token', '[]', 0, '2023-10-10 21:49:21', '2023-10-10 21:49:21', '2023-10-11 05:19:21'),
('91c533424e36c1c3ff4376874b15e4de618d2366a6ae9d54cb9cc160109b7a2d34f63817ee6a57bf', 1, 3, 'Personal Access Token', '[]', 0, '2023-10-06 12:28:38', '2023-10-06 12:28:38', '2023-10-06 19:58:38'),
('9268afd1a7b0dcc40c44c05a6fa40925dae4ab78596dec70b096573ad31f42ba8fe2fb1a4379bdd7', 1, 1, 'Personal Access Token', '[]', 0, '2023-08-19 04:17:55', '2023-08-19 04:17:55', '2023-08-19 11:47:55'),
('937d7164f6b31905d01bbe19eaa0cbf3dc2752b092592003a99b695d21adc879cfefb8f6c83ed80f', 3, 3, 'Personal Access Token', '[]', 0, '2023-10-06 22:44:03', '2023-10-06 22:44:03', '2023-10-07 06:14:03'),
('95bd1e89ea32b3ca5162d00d00d40d235c03fd27c5b08856ea786e99e89e3d93d9b84043ebb26310', 1, 3, 'Personal Access Token', '[]', 0, '2023-10-06 22:28:42', '2023-10-06 22:28:42', '2023-10-07 05:58:42'),
('970483933b6a1ee25c84bc0c9fb4d29d521932e513e664132e73dd49a371431108c203af3eeb1701', 1, 3, 'Personal Access Token', '[]', 0, '2023-10-10 21:49:35', '2023-10-10 21:49:35', '2023-10-11 05:19:35'),
('97ff3d8b4cc8eacacf899a7825fb9a6a40fdb2f77e7d8be1155f3a2c79b3e8cbcb12db4a032d0b53', 1, 3, 'Personal Access Token', '[]', 0, '2024-03-15 01:02:28', '2024-03-15 01:02:28', '2024-03-15 08:32:28'),
('982b25645fa3a40658b8b55fea15c92fd2d8e1be42bd2b6f55f944e96bb3a18e8367f2e8e1ee7565', 1, 1, 'Personal Access Token', '[]', 0, '2023-09-02 12:51:21', '2023-09-02 12:51:22', '2023-09-02 20:21:22'),
('9892f8997c36dc2f1fdcfd5a877eb22367d22b62919cc3130de16bb4f3ec894f175dd9f48f06a422', 1, 3, 'Personal Access Token', '[]', 0, '2024-03-27 13:26:42', '2024-03-27 13:26:42', '2024-03-27 20:56:42'),
('9b00b9ee391266d0a6f5b24009657fad0f824cac1a62c166e58ae1d8e3f854bb9c9708a9623d9c25', 1, 3, 'Personal Access Token', '[]', 0, '2023-10-31 10:54:24', '2023-10-31 10:54:24', '2023-10-31 18:24:24'),
('9fa68c8b45dc59bd290921a083838d942920a5bb98de6ab6bc925d31dcdd98d52fd43e490be6bede', 1, 1, 'Personal Access Token', '[]', 0, '2023-08-19 04:18:16', '2023-08-19 04:18:16', '2023-08-19 11:48:16'),
('a13cb5cbeaf2338dafee070c67beae0773ae52894b5a5a4fb88693100a0d477ad9d23b7ac16d64e3', 2, 3, 'Personal Access Token', '[]', 0, '2023-10-06 13:28:07', '2023-10-06 13:28:07', '2023-10-06 20:58:07'),
('a28f5edf168caa35ef128090360cc3fad7c4297bec90b552e41b0b888d03efa427d4994f61870642', 1, 3, 'Personal Access Token', '[]', 0, '2023-10-06 22:26:53', '2023-10-06 22:26:54', '2023-10-07 05:56:54'),
('a40c13df4a088efd263f690326e885a068c8a1fe02a1ec795821b8552cade3c58bd68cdc5fc67bef', 1, 3, 'Personal Access Token', '[]', 0, '2024-04-01 11:49:09', '2024-04-01 11:49:10', '2024-04-01 19:19:10'),
('a9ed2503078d6a446583ddeb2194ced2abdb0af707362f8434c863f593ed36be3371d4f954b71f6b', 2, 3, 'Personal Access Token', '[]', 0, '2023-10-06 22:32:00', '2023-10-06 22:32:00', '2023-10-07 06:02:00'),
('aa557fdff5b1b2dc6b78c6c9e389d389f63a8cfaf6edacc4b27b1d1c18b55f8607f202089e17e946', 1, 1, 'Personal Access Token', '[]', 0, '2023-09-02 03:53:59', '2023-09-02 03:53:59', '2023-09-02 11:23:59'),
('ab007dd49e6b554f2482d5601165c8354c5a09d2b8e6fda3cb0369a5b00a20ec408c55299150aa5b', 1, 3, 'Personal Access Token', '[]', 0, '2023-10-21 05:07:57', '2023-10-21 05:07:57', '2023-10-21 12:37:57'),
('ac2aee929833e21265e0d752ad5d899741efd9f6dc3100a977c57f8387b2a803763ff45738f6913f', 1, 3, 'Personal Access Token', '[]', 0, '2023-10-06 12:30:07', '2023-10-06 12:30:07', '2023-10-06 20:00:07'),
('b67dd388a7f9deeefc0f86c043828aefe8f80fec532ea50ab5ce07c40b2b1a34c0cfe5f8186e273e', 1, 3, 'Personal Access Token', '[]', 0, '2023-10-22 23:18:25', '2023-10-22 23:18:25', '2023-10-23 06:48:25'),
('b747fceda9e71d29210bc20d2d7e3c9055ab76063ede4c160c385a0c8f010d7a38cfbc9ae3f92c74', 1, 3, 'Personal Access Token', '[]', 0, '2023-10-06 12:30:05', '2023-10-06 12:30:05', '2023-10-06 20:00:05'),
('b8f96a6578a39a522a2eb2d0e2da901fab10b7a8d9a3f021228f1e0d4adc055ab978269aa26fa1af', 1, 3, 'Personal Access Token', '[]', 0, '2024-07-20 02:51:53', '2024-07-20 02:51:53', '2024-07-20 10:21:53'),
('ba45adfd5cef603fbc2a226758c16613d5c09fd19ee1deb4a647230ec94b0d9921ca7ddfa54d9197', 3, 3, 'Personal Access Token', '[]', 0, '2023-10-10 12:45:42', '2023-10-10 12:45:42', '2023-10-10 20:15:42'),
('ba5cdb5c1a29df0a0361f293ecbb93acc69bcce1a4dd584b7a3d52ea5e7e01f622b92c78653b68e7', 11, 3, 'Personal Access Token', '[]', 0, '2024-05-13 03:39:53', '2024-05-13 03:39:53', '2024-05-13 11:09:53'),
('baed349a7381de0ae5147ca9e0fa07f51fe91ff29a4fc07c1c9a0c0ecf243af8960e8f577e9e2f14', 2, 3, 'Personal Access Token', '[]', 0, '2023-10-10 12:28:21', '2023-10-10 12:28:21', '2023-10-10 19:58:21'),
('bd8e7b4344f268dac1f689c7c8afa3292fb5c0eb8def5e0a2db64a93532a90539b918f7e21097752', 1, 3, 'Personal Access Token', '[]', 0, '2024-05-19 11:48:39', '2024-05-19 11:48:39', '2024-05-19 19:18:39'),
('bec5026b20e94bc691491e17da8978b93ace7abce2188162c3965d16ceda5a488db4a1c12c7e1f76', 11, 3, 'Personal Access Token', '[]', 0, '2024-05-13 03:38:19', '2024-05-13 03:38:19', '2024-05-13 11:08:19'),
('bf2fab5cab1b00107579dff5869bb5c5e114976e443a0442474e43759802e73f227bfc3a31af0f21', 10, 3, 'Personal Access Token', '[]', 0, '2024-04-14 14:55:08', '2024-04-14 14:55:08', '2024-04-14 22:25:08'),
('c24a889be5b6369a08fa8e4636913487eec0c561999006a298c3775f4adbc9fc9664f8f606f56519', 1, 3, 'Personal Access Token', '[]', 0, '2024-04-01 12:12:32', '2024-04-01 12:12:32', '2024-04-01 19:42:32'),
('c3190a56b1135723be035d3932ba1b720bb10a3941546dfd5fe1af1bac0e639ecd82b79e3bd1145b', 1, 3, 'Personal Access Token', '[]', 0, '2023-10-06 12:37:05', '2023-10-06 12:37:05', '2023-10-06 20:07:05'),
('c352a12040b7f5535b3a38d24840d38227250e8ade8eb3046e03d4b7e16459c0ba06579c78211b4a', 11, 3, 'Personal Access Token', '[]', 0, '2024-05-13 03:29:26', '2024-05-13 03:29:26', '2024-05-13 10:59:26'),
('c3d3e77bbc9ee25e192914fee39b02dd01b829a4ef8b8699ddb8408a2009e5151b0204a5ee21dfd3', 1, 3, 'Personal Access Token', '[]', 0, '2023-10-15 08:26:45', '2023-10-15 08:26:46', '2023-10-15 15:56:46'),
('c40c54cf5faf7b134d40caa6822f6fd0b26787e660920439ebfdab320b825aac4b9491f576897ae6', 1, 3, 'Personal Access Token', '[]', 0, '2023-10-13 07:20:22', '2023-10-13 07:20:22', '2023-10-13 14:50:22'),
('c40d2a943c72e54f1be82466cbd904c5c58827490ed15833e56eb4a94a8b326cbc16a436f7d78e6d', 1, 3, 'Personal Access Token', '[]', 0, '2023-10-06 12:28:50', '2023-10-06 12:28:51', '2023-10-06 19:58:51'),
('c41a58175bc4feab2e947b438264d6cae4d446b1340d7ddf7947d9179c2aa9b1e3fc253094a94bf0', 1, 3, 'Personal Access Token', '[]', 0, '2023-10-20 23:43:16', '2023-10-20 23:43:16', '2023-10-21 07:13:16'),
('c6e6d4843a5e786158e88a786e3ee7371af69e782d009261fe721f8f8a977768fd3647500376db2d', 2, 3, 'Personal Access Token', '[]', 0, '2023-10-10 10:44:37', '2023-10-10 10:44:38', '2023-10-10 18:14:38'),
('c72bb99e85b83381b7ee4280d435d9400dede9dacd00e69bcca41f3321835ccf0c2e8779dbf92504', 1, 3, 'Personal Access Token', '[]', 0, '2024-05-13 03:32:20', '2024-05-13 03:32:20', '2024-05-13 11:02:20'),
('c79cf81f56e9f6bc1ada4fca75c84b3aa771dcbd40f05fe8daf01c01d943b9fb0e827a945669ffdd', 7, 3, 'Personal Access Token', '[]', 0, '2024-04-21 10:54:06', '2024-04-21 10:54:06', '2024-04-21 18:24:06'),
('cb71fe143cdbf29552251800619bcbb37c950f30beb4cff0671d3f784a5f69b1995cd8505ff5cdab', 1, 3, 'Personal Access Token', '[]', 0, '2024-04-01 14:12:03', '2024-04-01 14:12:03', '2024-04-01 21:42:03'),
('cd7b1d887f14ecdb4cda30b62db1434a7441b7addd3c1ed1b29effbbe084b17b74bede6a0cefda43', 1, 3, 'Personal Access Token', '[]', 0, '2024-05-19 11:58:57', '2024-05-19 11:58:57', '2024-05-19 19:28:57'),
('cda7d92f6319088e44ecf7657db2169bd8fa0afdf2cee7137adcc8d2537f3b73f847693c4263e0f3', 1, 3, 'Personal Access Token', '[]', 0, '2024-05-13 11:46:58', '2024-05-13 11:46:58', '2024-05-13 19:16:58'),
('d440df6e4b226a07a93964ac17ca466f8854f9f328ef11658e33f306b8317b9e8ce3a2b9e8ef37f9', 1, 3, 'Personal Access Token', '[]', 0, '2023-10-10 12:53:51', '2023-10-10 12:53:51', '2023-10-10 20:23:51'),
('d449b518690ff0fae0635bbd1aedee0847f615c705fbd3d8bda08a9de53697835dbe3e8daeea9267', 1, 3, 'Personal Access Token', '[]', 0, '2024-04-20 21:59:44', '2024-04-20 21:59:44', '2024-04-21 05:29:44'),
('d68c60b55d14f245a6316b55585c2175c3ac68f47ab344e685268e176d3972227a9033e0510e379b', 1, 3, 'Personal Access Token', '[]', 0, '2023-10-20 11:36:36', '2023-10-20 11:36:37', '2023-10-20 19:06:37'),
('d6c9da91b9078f23440d2fa52c75952c806d0ab9c116d2659a79738fcdec4a0546b86afefe807276', 1, 3, 'Personal Access Token', '[]', 0, '2023-10-06 11:39:38', '2023-10-06 11:39:38', '2023-10-06 19:09:38'),
('d792b13dfc97c4ec2604078832439fda4c2de1e4a049c690711cd7aaac3f6c87726f4c4fef828614', 1, 3, 'Personal Access Token', '[]', 0, '2023-10-10 23:15:08', '2023-10-10 23:15:08', '2023-10-11 06:45:08'),
('d84242e40ffed07e037f9f0ebf94dee39f99ebf8deed6cae1fcbe8c33b30a7926f0b9d573c994e81', 1, 1, 'Access Token', '[]', 0, '2023-08-21 22:41:29', '2023-08-21 22:41:29', '2024-08-22 04:11:29'),
('dbfa0ab9bfd33f736f1d8d4be998f9a4ba87af1b34ba460a5aeb0f5e5cf91deda711e7dc7b50a20a', 1, 3, 'Personal Access Token', '[]', 0, '2024-03-24 23:41:47', '2024-03-24 23:41:48', '2024-03-25 07:11:48'),
('dc8a220dce91c575e089ab344e0c98e674c89679049b88120c87e7d96bdc15ef69b4edb0e053417f', 1, 3, 'Personal Access Token', '[]', 0, '2024-08-21 12:05:23', '2024-08-21 12:05:23', '2024-08-21 19:35:23'),
('e596919e3449e4fce8560a0060b9d96c15fdbea152230e6b9321aa6d7de74421810a72b14da1b519', 1, 3, 'Personal Access Token', '[]', 0, '2024-04-21 10:47:41', '2024-04-21 10:47:41', '2024-04-21 18:17:41'),
('e5af3d60ed83b068eab2199f4377d4127b1a10aa18f37ac88de012ee03a7f198a6ff7769b7901eaa', 1, 3, 'Personal Access Token', '[]', 0, '2024-05-13 03:30:42', '2024-05-13 03:30:46', '2024-05-13 11:00:46'),
('e5ca32157cfabaccb50b48336dc4432241a2424b68bcdab14996de34659366f38e6e77071e27c647', 1, 3, 'Personal Access Token', '[]', 0, '2024-04-07 10:35:23', '2024-04-07 10:35:24', '2024-04-07 18:05:24'),
('e9de2d7a7cb0ccd645d6c386040d92dee4b8957876d3435dde18e262a914c9b08ce6f95350eb785c', 1, 3, 'Personal Access Token', '[]', 0, '2023-10-10 13:44:08', '2023-10-10 13:44:08', '2023-10-10 21:14:08'),
('ea0ac23aea3c8275b4694ad55c9aedbc567330fcaccdba8f4d17f6c81ece8c9e149b46383f9f55f4', 1, 1, 'Personal Access Token', '[]', 0, '2023-08-19 04:16:23', '2023-08-19 04:16:23', '2023-08-19 11:46:23'),
('ebe508b74e1dac381ec44085a63a4a0f0d3846a8fd18fcdc56a4e52a84d63609e2147e9d0b03ea39', 1, 3, 'Personal Access Token', '[]', 0, '2023-10-10 13:42:44', '2023-10-10 13:42:44', '2023-10-10 21:12:44'),
('ecf4723247f2ba6c8bdc6f64dcf29b81a6f2bb59e9dc1a5ac1c9bf304d383225ee0bc5f8e9bed7b5', 1, 3, 'Personal Access Token', '[]', 0, '2023-10-07 11:15:22', '2023-10-07 11:15:22', '2023-10-07 18:45:22'),
('eded98ebd2aaa1cf22a54ba2b159950f6f753abe74b16a978361a12a55882ca62ca337cbe716b8ce', 1, 3, 'Personal Access Token', '[]', 0, '2024-08-21 11:43:37', '2024-08-21 11:43:37', '2024-08-21 19:13:37'),
('eec8fe4213db1e4f0632ef69c128cc66fb8fc509c6fdfab8fc73bf3654cba48fcc42da47fc8e04f6', 1, 3, 'Personal Access Token', '[]', 0, '2023-10-11 03:07:27', '2023-10-11 03:07:27', '2023-10-11 10:37:27'),
('efc095a714f2478a366b401bf6f7e021e7092fd68781d140f2c333236403189d5997aaff67b5cb9f', 1, 1, 'Personal Access Token', '[]', 0, '2023-08-21 22:25:28', '2023-08-21 22:25:28', '2023-08-22 05:55:28'),
('f096c81b35d1ca0bf4ed09bff8423c1e0770c8d570a0402d177e013100f44b1f1ae74b9ad7c9b79b', 1, 3, 'Personal Access Token', '[]', 0, '2023-10-14 06:05:50', '2023-10-14 06:05:51', '2023-10-14 13:35:51'),
('f0e777d2be4d602dae3e58561c145c226f67ab95a2c01e3828ce2e8fa2f74e4440b2c5b9975b48ad', 3, 3, 'Personal Access Token', '[]', 0, '2023-10-06 22:33:20', '2023-10-06 22:33:20', '2023-10-07 06:03:20'),
('f2bd4663d90de2cd08ac4c460d1f189f1ffe9bb7a2bee282450c53cd135809cd147db319e5020661', 1, 3, 'Personal Access Token', '[]', 0, '2023-10-06 11:35:08', '2023-10-06 11:35:08', '2023-10-06 19:05:08'),
('f4c00977bf70dbbe1d85056cb7f61844135e446f00311f0d3c3a95a3b3defdd1fb5163b908335550', 1, 3, 'Personal Access Token', '[]', 0, '2023-10-17 09:13:58', '2023-10-17 09:13:59', '2023-10-17 16:43:59'),
('fb0f72a8ad562adebcbbf93b879a3531564def5fcc6c4bc1ef906814a97a0851aa793c1dabdd30da', 1, 3, 'Personal Access Token', '[]', 0, '2024-08-21 12:05:24', '2024-08-21 12:05:25', '2024-08-21 19:35:25'),
('ff3e3586966936dcdec65749f0494e083cc0e0b267fa118c9fc6c112319808945eabe9e24f682ddd', 1, 3, 'Personal Access Token', '[]', 0, '2023-10-10 13:43:53', '2023-10-10 13:43:53', '2023-10-10 21:13:53'),
('fff35481f3e9965366ee169ddc3a008b231763dccde4d15b9bf3b7a99703f7bba9e758c509ae1006', 1, 3, 'Personal Access Token', '[]', 0, '2023-10-21 02:00:18', '2023-10-21 02:00:19', '2023-10-21 09:30:19');

-- --------------------------------------------------------

--
-- Table structure for table `oauth_auth_codes`
--

CREATE TABLE `oauth_auth_codes` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `client_id` bigint(20) UNSIGNED NOT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `oauth_clients`
--

CREATE TABLE `oauth_clients` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `secret` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `provider` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `redirect` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `personal_access_client` tinyint(1) NOT NULL,
  `password_client` tinyint(1) NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `oauth_clients`
--

INSERT INTO `oauth_clients` (`id`, `user_id`, `name`, `secret`, `provider`, `redirect`, `personal_access_client`, `password_client`, `revoked`, `created_at`, `updated_at`) VALUES
(1, NULL, 'Laravel Personal Access Client', 'PN069tEPQOk6itLQqwAwmeAQ8PHL91cuF8giJb5I', NULL, 'http://localhost', 1, 0, 0, '2023-08-11 00:28:46', '2023-08-11 00:28:46'),
(2, NULL, 'Laravel Password Grant Client', 'YzxjGeVXj4v0n8hyJHtGfGDtDn7mADAOlsxpzzas', 'users', 'http://localhost', 0, 1, 0, '2023-08-11 00:28:46', '2023-08-11 00:28:46'),
(3, NULL, 'RealEstate Personal Access Client', 'rK7YZB4JG10IANXAuOz5Ss0nMpuM0CCoDSDsgmUg', NULL, 'http://localhost', 1, 0, 0, '2023-10-06 11:30:56', '2023-10-06 11:30:56');

-- --------------------------------------------------------

--
-- Table structure for table `oauth_personal_access_clients`
--

CREATE TABLE `oauth_personal_access_clients` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `client_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `oauth_personal_access_clients`
--

INSERT INTO `oauth_personal_access_clients` (`id`, `client_id`, `created_at`, `updated_at`) VALUES
(1, 1, '2023-08-11 00:28:46', '2023-08-11 00:28:46'),
(2, 3, '2023-10-06 11:30:56', '2023-10-06 11:30:56');

-- --------------------------------------------------------

--
-- Table structure for table `oauth_refresh_tokens`
--

CREATE TABLE `oauth_refresh_tokens` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `access_token_id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `privacies`
--

CREATE TABLE `privacies` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_active` tinyint(4) NOT NULL DEFAULT '1',
  `is_deleted` tinyint(4) NOT NULL DEFAULT '0',
  `ip_address` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `deleted_by` bigint(20) NOT NULL DEFAULT '0',
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_by` bigint(20) NOT NULL DEFAULT '0',
  `updated_by` bigint(20) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `privacies`
--

INSERT INTO `privacies` (`id`, `uuid`, `title`, `description`, `is_active`, `is_deleted`, `ip_address`, `deleted_by`, `deleted_at`, `created_by`, `updated_by`, `created_at`, `updated_at`) VALUES
(1, '1712602006IEE', NULL, '<p>Privacy Policy</p>', 1, 0, '43.241.146.87', 0, NULL, 1, 1, '2024-04-08 13:16:46', '2024-08-21 06:31:45');

-- --------------------------------------------------------

--
-- Table structure for table `properties`
--

CREATE TABLE `properties` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `agent_id` bigint(20) NOT NULL,
  `property_type_id` bigint(20) NOT NULL,
  `property_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `owner_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `mobile_no` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `var` bigint(20) DEFAULT NULL,
  `sqft` bigint(20) DEFAULT NULL,
  `sqmeter` bigint(20) DEFAULT NULL,
  `location` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `price` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pincode` bigint(20) DEFAULT NULL,
  `state` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `floor` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_ladder` tinyint(4) NOT NULL DEFAULT '0',
  `flat_size` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `house_size` bigint(20) DEFAULT NULL,
  `house_sqft` bigint(20) DEFAULT NULL,
  `survey_no` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `account_no` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `old_condition` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `new_condition` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `transfer_condition` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `road_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cultivation` tinyint(4) DEFAULT '0',
  `landproblem` bigint(20) NOT NULL DEFAULT '0',
  `is_meter` tinyint(4) NOT NULL DEFAULT '0',
  `is_well` tinyint(4) NOT NULL DEFAULT '0',
  `is_bore` tinyint(4) NOT NULL DEFAULT '0',
  `is_house` tinyint(4) NOT NULL DEFAULT '0',
  `is_fancing` tinyint(4) NOT NULL DEFAULT '0',
  `land_type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `land_on_road` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_far` bigint(20) NOT NULL DEFAULT '0',
  `from_road` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `to_road` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `roadland` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `from_road1` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `to_road1` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_active` tinyint(4) NOT NULL DEFAULT '0',
  `ip_address` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_deleted` tinyint(4) NOT NULL DEFAULT '0',
  `deleted_by` bigint(20) NOT NULL DEFAULT '0',
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_by` bigint(20) NOT NULL DEFAULT '0',
  `updated_by` bigint(20) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `properties`
--

INSERT INTO `properties` (`id`, `uuid`, `agent_id`, `property_type_id`, `property_name`, `owner_name`, `address`, `mobile_no`, `email`, `var`, `sqft`, `sqmeter`, `location`, `price`, `description`, `pincode`, `state`, `city`, `floor`, `is_ladder`, `flat_size`, `house_size`, `house_sqft`, `survey_no`, `account_no`, `old_condition`, `new_condition`, `transfer_condition`, `road_name`, `cultivation`, `landproblem`, `is_meter`, `is_well`, `is_bore`, `is_house`, `is_fancing`, `land_type`, `land_on_road`, `is_far`, `from_road`, `to_road`, `roadland`, `from_road1`, `to_road1`, `is_active`, `ip_address`, `is_deleted`, `deleted_by`, `deleted_at`, `created_by`, `updated_by`, `created_at`, `updated_at`) VALUES
(1, '1713124380lsE', 6, 1, 'New Flat', 'NareshBhai', 'Kalawad Road', '8547125489', 'naresh@gmail.com', 240, 223, 254, 'Kalawad Road', '25,00,000', 'Best Flat Garden View', 360001, 'Gujarat', 'Rajkot', '2nd Floor', 0, '0 BHK', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 1, '49.36.83.250', 0, 0, NULL, 1, 1, '2024-04-14 14:23:00', '2024-04-21 00:15:00'),
(2, '1713124915C9o', 9, 3, 'Open Plot', 'MukeshBhai', 'Raiya Road', '7458963254', 'mukesh@gmail.com', 500, 1200, 1254, 'Raiya Road', '30,00,000', 'Best Open Plot. Road touch.', 360002, 'Gujarat', 'Rajkot', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 1, '103.90.46.155', 0, 0, NULL, 1, 1, '2024-04-14 14:31:55', '2024-05-13 03:37:30'),
(3, '17131250560Mo', 9, 4, '4 BHK Bungalow', 'BhaveshBhai', 'Amin Marg Road', '7125648952', 'bhavesh@gmail.com', NULL, 2145, 2365, 'Amin Marg', '50,00,000', '4 BHK Bungalow with swimming Pool and other amenities', 360005, 'Gujarat', 'Rajkot', NULL, 0, NULL, 600, 2350, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 1, '127.0.0.1', 0, 0, NULL, 1, 1, '2024-04-14 14:34:16', '2024-04-14 14:34:16'),
(4, '1713125176iM8', 6, 2, 'New Shop', 'VijaybBhai', 'Madhapar Chowk', '8569254122', 'vijay@gmail.com', 100, 250, 250, 'Madhapar Chowk', '10,00,000', 'Two shutter corner shop for best business', 360007, 'Gujarat', 'Rajkot', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 1, '127.0.0.1', 0, 0, NULL, 1, 1, '2024-04-14 14:36:16', '2024-04-14 14:36:16'),
(5, '17131253583n6', 9, 5, 'Farm', 'JayBhai', 'Rajkot-Jamnagar Highway', '9658214758', 'jay@gmail.com', NULL, NULL, NULL, 'Rajkot-Jamnagar Highway', '0', NULL, 360001, 'Gujarat', 'Rajkot', NULL, 0, NULL, NULL, NULL, '2568415', '2015632547', 'ddddddd', 'new condition', 'transfer from old party to new party', NULL, 1, 1, 1, 1, 1, 1, 1, 'Black Soil', '1', 0, 'Rajkot', 'Hadala', NULL, NULL, NULL, 1, '127.0.0.1', 0, 0, NULL, 1, 1, '2024-04-14 14:39:18', '2024-04-14 14:39:18');

-- --------------------------------------------------------

--
-- Table structure for table `property_images`
--

CREATE TABLE `property_images` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `property_uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_active` tinyint(4) NOT NULL,
  `is_deleted` tinyint(4) NOT NULL DEFAULT '0',
  `ip_address` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `deleted_by` bigint(20) NOT NULL DEFAULT '0',
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_by` bigint(20) NOT NULL,
  `updated_by` bigint(20) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `property_images`
--

INSERT INTO `property_images` (`id`, `uuid`, `property_uuid`, `image`, `is_active`, `is_deleted`, `ip_address`, `deleted_by`, `deleted_at`, `created_by`, `updated_by`, `created_at`, `updated_at`) VALUES
(1, '17131243807lK', '1713124380lsE', '1713124380-1-3.jpg', 1, 0, '127.0.0.1', 0, NULL, 1, 1, '2024-04-14 14:23:00', '2024-04-14 14:23:00'),
(2, '17131243803Mh', '1713124380lsE', '1713124380-1-2.jpg', 1, 0, '127.0.0.1', 0, NULL, 1, 1, '2024-04-14 14:23:00', '2024-04-14 14:23:00'),
(4, '1713124916iDI', '1713124915C9o', '1713124916-3-3.jpg', 1, 0, '127.0.0.1', 0, NULL, 1, 1, '2024-04-14 14:31:56', '2024-04-14 14:31:56'),
(5, '1713124916C2C', '1713124915C9o', '1713124916-3-2.jpg', 1, 0, '127.0.0.1', 0, NULL, 1, 1, '2024-04-14 14:31:56', '2024-04-14 14:31:56'),
(6, '1713125056uDn', '17131250560Mo', '1713125056-2-4.jpg', 1, 0, '127.0.0.1', 0, NULL, 1, 1, '2024-04-14 14:34:16', '2024-04-14 14:34:16'),
(7, '1713125056bsF', '17131250560Mo', '1713125056-2-3.jpg', 1, 0, '127.0.0.1', 0, NULL, 1, 1, '2024-04-14 14:34:16', '2024-04-14 14:34:16'),
(8, '1713125176ux0', '1713125176iM8', '1713125176-9.webp', 1, 0, '127.0.0.1', 0, NULL, 1, 1, '2024-04-14 14:36:16', '2024-04-14 14:36:16'),
(9, '1713125177RSp', '1713125176iM8', '1713125177-8.webp', 1, 0, '127.0.0.1', 0, NULL, 1, 1, '2024-04-14 14:36:17', '2024-04-14 14:36:17'),
(10, '1713125358ccP', '17131253583n6', '1713125358-7.webp', 1, 0, '127.0.0.1', 0, NULL, 1, 1, '2024-04-14 14:39:18', '2024-04-14 14:39:18'),
(11, '1713125358bj4', '17131253583n6', '1713125358-6.webp', 1, 0, '127.0.0.1', 0, NULL, 1, 1, '2024-04-14 14:39:18', '2024-04-14 14:39:18'),
(12, '1713721500Bsh', '1713124380lsE', '1713721500-1-4.jpg', 1, 0, '49.36.83.250', 0, NULL, 1, 1, '2024-04-21 12:15:00', '2024-04-21 12:15:00'),
(13, '1715591250BLY', '1713124915C9o', '1715591250-01-imovel-70183-8-Jardim-Paulista.jpg', 1, 0, '103.90.46.155', 0, NULL, 1, 1, '2024-05-13 03:37:30', '2024-05-13 03:37:30');

-- --------------------------------------------------------

--
-- Table structure for table `sliders`
--

CREATE TABLE `sliders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slider_image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_active` tinyint(4) NOT NULL DEFAULT '1',
  `ip_address` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_deleted` tinyint(4) NOT NULL DEFAULT '0',
  `deleted_by` bigint(20) NOT NULL DEFAULT '0',
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_by` bigint(20) NOT NULL DEFAULT '0',
  `updated_by` bigint(20) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sliders`
--

INSERT INTO `sliders` (`id`, `uuid`, `title`, `slider_image`, `is_active`, `ip_address`, `is_deleted`, `deleted_by`, `deleted_at`, `created_by`, `updated_by`, `created_at`, `updated_at`) VALUES
(1, '17119987723X8', 'Slider 1', '1713121551-4.webp', 1, '127.0.0.1', 1, 1, '2024-04-20 22:03:07', 1, 1, '2024-04-01 13:42:52', '2024-04-20 22:03:07'),
(2, '1713121692Xxh', 'slider 2', '1713121692-2-1.jpg', 1, '127.0.0.1', 1, 1, '2024-04-20 22:03:03', 1, 1, '2024-04-14 13:38:12', '2024-04-20 22:03:03'),
(3, '1713670416vUq', 'Test 1', '1713670416-601251022-10-15.webp', 1, '1.38.91.8', 0, 0, NULL, 1, 1, '2024-04-20 22:03:36', '2024-04-20 22:03:36'),
(4, '1713670433RW7', 'testb 2', '1713670433-601251009-13-9.webp', 1, '1.38.91.8', 0, 0, NULL, 1, 1, '2024-04-20 22:03:53', '2024-04-20 22:03:53'),
(5, '1713670447vu6', 'test 3', '1713670447-AP5216-1.webp', 1, '1.38.91.8', 0, 0, NULL, 1, 1, '2024-04-20 22:04:07', '2024-04-20 22:04:07'),
(6, '1716139498cns', 'test 4', '1716139845-2-1.jpg', 1, '49.36.83.167', 0, 0, NULL, 1, 1, '2024-05-19 11:54:58', '2024-05-19 00:00:45');

-- --------------------------------------------------------

--
-- Table structure for table `social_media`
--

CREATE TABLE `social_media` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `link` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `icon` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_active` tinyint(4) NOT NULL DEFAULT '1',
  `is_deleted` tinyint(4) NOT NULL DEFAULT '0',
  `ip_address` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `deleted_by` bigint(20) NOT NULL DEFAULT '0',
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_by` bigint(20) NOT NULL DEFAULT '0',
  `updated_by` bigint(20) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `states`
--

CREATE TABLE `states` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `country_uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `state_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_active` tinyint(4) NOT NULL DEFAULT '0',
  `is_deleted` tinyint(4) NOT NULL DEFAULT '0',
  `ip_address` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `deleted_by` bigint(20) NOT NULL DEFAULT '0',
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_by` bigint(20) NOT NULL DEFAULT '0',
  `updated_by` bigint(20) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `states`
--

INSERT INTO `states` (`id`, `uuid`, `country_uuid`, `state_name`, `is_active`, `is_deleted`, `ip_address`, `deleted_by`, `deleted_at`, `created_by`, `updated_by`, `created_at`, `updated_at`) VALUES
(1, '1671884593Imi', '1', 'ANDHRA PRADESH', 1, 0, '127.0.0.1', 0, NULL, 0, 0, NULL, NULL),
(2, '1671884593Imq', '1', 'ASSAM', 1, 0, '127.0.0.1', 0, NULL, 0, 0, NULL, NULL),
(3, '1671884593Imw', '1', 'ARUNACHAL PRADESH', 1, 0, '127.0.0.1', 0, NULL, 0, 0, NULL, NULL),
(4, '1671884593Ime', '1', 'BIHAR', 1, 0, '127.0.0.1', 0, NULL, 0, 0, NULL, NULL),
(5, '1671884593Imr', '1', 'GUJRAT', 1, 0, '127.0.0.1', 0, NULL, 0, 0, NULL, NULL),
(6, '1671884593Imt', '1', 'HARYANA', 1, 0, '127.0.0.1', 0, NULL, 0, 0, NULL, NULL),
(7, '1671884593Imy', '1', 'HIMACHAL PRADESH', 1, 0, '127.0.0.1', 0, NULL, 0, 0, NULL, NULL),
(8, '1671884593Imu', '1', 'JAMMU & KASHMIR', 1, 0, '127.0.0.1', 0, NULL, 0, 0, NULL, NULL),
(9, '1671884593Imo', '1', 'KARNATAKA', 1, 0, '127.0.0.1', 0, NULL, 0, 0, NULL, NULL),
(10, '1671884593Imp', '1', 'KERALA', 1, 0, '127.0.0.1', 0, NULL, 0, 0, NULL, NULL),
(11, '1671884593Ima', '1', 'MADHYA PRADESH', 1, 0, '127.0.0.1', 0, NULL, 0, 0, NULL, NULL),
(12, '1671884593Ims', '1', 'MAHARASHTRA', 1, 0, '127.0.0.1', 0, NULL, 0, 0, NULL, NULL),
(13, '1671884593Imd', '1', 'MANIPUR', 1, 0, '127.0.0.1', 0, NULL, 0, 0, NULL, NULL),
(14, '1671884593Imf', '1', 'MEGHALAYA', 1, 0, '127.0.0.1', 0, NULL, 0, 0, NULL, NULL),
(15, '1671884593Img', '1', 'MIZORAM', 1, 0, '127.0.0.1', 0, NULL, 0, 0, NULL, NULL),
(16, '1671884593Imh', '1', 'NAGALAND', 1, 0, '127.0.0.1', 0, NULL, 0, 0, NULL, NULL),
(17, '1671884593Imj', '1', 'ORISSA', 1, 0, '127.0.0.1', 0, NULL, 0, 0, NULL, NULL),
(18, '1671884593Imk', '1', 'PUNJAB', 1, 0, '127.0.0.1', 0, NULL, 0, 0, NULL, NULL),
(19, '1671884593Iml', '1', 'RAJASTHAN', 1, 0, '127.0.0.1', 0, NULL, 0, 0, NULL, NULL),
(20, '1671884593Imz', '1', 'SIKKIM', 1, 0, '127.0.0.1', 0, NULL, 0, 0, NULL, NULL),
(21, '1671884593Imx', '1', 'TAMIL NADU', 1, 0, '127.0.0.1', 0, NULL, 0, 0, NULL, NULL),
(22, '1671884593Imc', '1', 'TRIPURA', 1, 0, '127.0.0.1', 0, NULL, 0, 0, NULL, NULL),
(23, '1671884593Imv', '1', 'UTTAR PRADESH', 1, 0, '127.0.0.1', 0, NULL, 0, 0, NULL, NULL),
(24, '1671884593Imb', '1', 'WEST BENGAL', 1, 0, '127.0.0.1', 0, NULL, 0, 0, NULL, NULL),
(25, '1671884593Imn', '1', 'DELHI', 1, 0, '127.0.0.1', 0, NULL, 0, 0, NULL, NULL),
(26, '1671884593Imm', '1', 'GOA', 1, 0, '127.0.0.1', 0, NULL, 0, 0, NULL, NULL),
(27, '1671884593Iqr', '1', 'PONDICHERY', 1, 0, '127.0.0.1', 0, NULL, 0, 0, NULL, NULL),
(28, '1671884593Iwr', '1', 'LAKSHDWEEP', 1, 0, '127.0.0.1', 0, NULL, 0, 0, NULL, NULL),
(29, '1671884593Ier', '1', 'DAMAN & DIU', 1, 0, '127.0.0.1', 0, NULL, 0, 0, NULL, NULL),
(30, '1671884593Irr', '1', 'DADRA & NAGAR', 1, 0, '127.0.0.1', 0, NULL, 0, 0, NULL, NULL),
(31, '1671884593Itr', '1', 'CHANDIGARH', 1, 0, '127.0.0.1', 0, NULL, 0, 0, NULL, NULL),
(32, '1671884593Iyr', '1', 'ANDAMAN & NICOBAR', 1, 0, '127.0.0.1', 0, NULL, 0, 0, NULL, NULL),
(33, '1671884593Iur', '1', 'UTTARANCHAL', 1, 0, '127.0.0.1', 0, NULL, 0, 0, NULL, NULL),
(34, '1671884593Iir', '1', 'JHARKHAND', 1, 0, '127.0.0.1', 0, NULL, 0, 0, NULL, NULL),
(35, '1671884593Ior', '1', 'CHATTISGARH', 1, 0, '127.0.0.1', 0, NULL, 0, 0, NULL, NULL),
(36, '16954645180PO', '1', 'uu', 1, 1, '43.241.145.101', 1, '2023-09-23 04:52:15', 1, 1, '2023-09-23 04:51:58', '2023-09-23 04:52:15'),
(37, '17043092118VQ', '4', 'Alberta', 1, 0, '127.0.0.1', 0, NULL, 1, 1, '2024-01-03 13:43:31', '2024-01-03 13:43:31');

-- --------------------------------------------------------

--
-- Table structure for table `terms`
--

CREATE TABLE `terms` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_active` tinyint(4) NOT NULL DEFAULT '1',
  `is_deleted` tinyint(4) NOT NULL DEFAULT '0',
  `ip_address` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `deleted_by` bigint(20) NOT NULL DEFAULT '0',
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_by` bigint(20) NOT NULL DEFAULT '0',
  `updated_by` bigint(20) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `terms`
--

INSERT INTO `terms` (`id`, `uuid`, `title`, `description`, `is_active`, `is_deleted`, `ip_address`, `deleted_by`, `deleted_at`, `created_by`, `updated_by`, `created_at`, `updated_at`) VALUES
(1, '1712601955dq8', 'Terms & Condition', '<p>Terms &amp; Condition</p>', 1, 0, '127.0.0.1', 0, NULL, 1, 1, '2024-04-08 13:15:55', '2024-04-08 13:15:55');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `firstname` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lastname` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone_verified_at` timestamp NULL DEFAULT NULL,
  `profilepicture` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `device_type` tinyint(4) NOT NULL DEFAULT '0',
  `user_type` tinyint(4) NOT NULL DEFAULT '1',
  `is_home` tinyint(4) NOT NULL DEFAULT '0',
  `mobile_token` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `lastlogin` timestamp NULL DEFAULT NULL,
  `forget_token` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `token_expire` timestamp NULL DEFAULT NULL,
  `ip_address` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `hash_key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_active` tinyint(4) NOT NULL DEFAULT '0',
  `is_deleted` tinyint(4) NOT NULL DEFAULT '0',
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deleted_by` bigint(20) NOT NULL DEFAULT '0',
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_by` bigint(20) NOT NULL DEFAULT '0',
  `updated_by` bigint(20) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `uuid`, `firstname`, `lastname`, `email`, `email_verified_at`, `password`, `phone`, `phone_verified_at`, `profilepicture`, `device_type`, `user_type`, `is_home`, `mobile_token`, `lastlogin`, `forget_token`, `token_expire`, `ip_address`, `hash_key`, `is_active`, `is_deleted`, `remember_token`, `deleted_by`, `deleted_at`, `created_by`, `updated_by`, `created_at`, `updated_at`) VALUES
(1, '1651670811gwb', 'admin', 'user', 'admin@gmail.com', NULL, '$2y$10$aCBmAxAM91LRYk4.SLqhP.xk8I.RtSrjYeT/W0Wh3WjTsJTZObc9C', '7897897897', NULL, '1712000543-12.png', 0, 1, 0, NULL, '2024-08-21 12:05:25', NULL, '2024-08-21 14:05:25', '43.241.146.34', 'wGQVoP', 1, 0, NULL, 0, NULL, 0, 1, NULL, '2024-08-21 12:05:25'),
(6, '1711994084Lkc', 'Raju', 'Patel', 'raju@gmail.com', NULL, '$2y$10$ntu2kRTHY0QrdQsAV8tlw.66ysSSMLV31WT/nyCGOGCcfp2J6JZ0W', '7859621458', NULL, '1715619724-user2.png', 0, 2, 1, NULL, NULL, NULL, NULL, '49.36.81.221', 'gI7XIi', 1, 0, NULL, 0, NULL, 1, 1, '2024-04-01 12:24:44', '2024-05-12 23:32:04'),
(7, '1711999913e2q', 'testuser', NULL, 'testuser@gmail.com', NULL, '$2y$10$nL3dxagDIZcXLvrhglQ4Gur/O5xXZVeBrkcJGAoNefgBCVSzLv6he', '8541256395', NULL, NULL, 0, 3, 0, NULL, '2024-04-21 10:54:06', NULL, '2024-04-21 12:54:06', '127.0.0.1', 'RzXVpj', 1, 0, NULL, 0, NULL, 0, 0, '2024-04-01 14:01:53', '2024-04-21 10:54:06'),
(8, '1711999974N3u', 'test user 2', NULL, 'testuser2@gmail.com', NULL, '$2y$10$J5i.50GJwi09CtWaXM1GTOnjPDmemo.UZLRavmdLqgfigmfss1nFu', '7452698541', NULL, NULL, 0, 3, 0, NULL, NULL, NULL, NULL, '127.0.0.1', 'kvaUMc', 1, 0, NULL, 0, NULL, 0, 0, '2024-04-01 14:02:54', '2024-04-01 14:02:54'),
(9, '1713121984z84', 'Nilesh', 'Patel', 'nilesh@gmail.com', NULL, '$2y$10$6NOpbR/iStw9UrlXhK9MSecttuK1G9o.M9WaFvg7iwBuj.aX9XrT2', '8547125965', NULL, '1713121984-user1.jpg', 0, 2, 1, NULL, NULL, NULL, NULL, '127.0.0.1', '5PHhWN', 1, 0, NULL, 0, NULL, 1, 1, '2024-04-14 13:43:04', '2024-04-14 13:43:04'),
(10, '1713126297Z8z', 'krunal', 'patel', 'krunal@gmail.com', NULL, '$2y$10$Jxqca/idLB8L.TeAmvJnZ.ZJYeZ938PasDdsOhjvagMpSHhVbJzMK', '8547145698', NULL, NULL, 0, 3, 0, NULL, '2024-04-14 14:55:08', NULL, '2024-04-14 16:55:08', '49.36.83.66', '4poH05', 1, 0, NULL, 0, NULL, 0, 0, '2024-04-14 14:54:57', '2024-04-14 14:55:08'),
(11, '1715590754xVd', 'test', 'test', 'test@gmail.com', NULL, '$2y$10$6h/B8kS27dRNj6J7uSw4uOf5d0AfvcSkjNlOz4U0I0Fy5zE7Z.Xpi', '1234567895', NULL, NULL, 0, 3, 0, NULL, '2024-05-13 11:34:58', NULL, '2024-05-13 13:34:58', '103.90.46.155', 'Veg5uo', 1, 0, NULL, 0, NULL, 0, 0, '2024-05-13 03:29:14', '2024-05-13 11:34:58'),
(12, '1715591189OZc', 'test', 'new rg', 'rgh@gmail.com', NULL, '$2y$10$zfup6NXUYcpqxf4v7qZNae9IYPV3CCxkzm4chg5TE1czjaLclpwIG', '7412589635', NULL, '1715591189-blog-image-1.jpg', 0, 2, 1, NULL, NULL, NULL, NULL, '103.90.46.155', 'xE0U49', 1, 0, NULL, 0, NULL, 1, 1, '2024-05-13 03:36:29', '2024-05-13 03:36:29'),
(13, '1724260537GXn', 'drashti', 'solanki', 'drashti@gmail.com', NULL, '$2y$10$ans17oqW3vJZzCVnuR/k4OrmLOEfoU8NwlIY.2qjkzEaRtUtuV3WW', '8799353362', NULL, NULL, 0, 3, 0, NULL, '2024-08-21 11:45:52', NULL, '2024-08-21 13:45:52', '152.59.23.1', 'qZkURG', 1, 0, NULL, 0, NULL, 0, 0, '2024-08-21 11:45:37', '2024-08-21 11:45:52');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `aboutuses`
--
ALTER TABLE `aboutuses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cities`
--
ALTER TABLE `cities`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `contacts`
--
ALTER TABLE `contacts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `contactuses`
--
ALTER TABLE `contactuses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `countries`
--
ALTER TABLE `countries`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `customer_tokens`
--
ALTER TABLE `customer_tokens`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `faqs`
--
ALTER TABLE `faqs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `newsletters`
--
ALTER TABLE `newsletters`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `oauth_access_tokens`
--
ALTER TABLE `oauth_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_access_tokens_user_id_index` (`user_id`);

--
-- Indexes for table `oauth_auth_codes`
--
ALTER TABLE `oauth_auth_codes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_auth_codes_user_id_index` (`user_id`);

--
-- Indexes for table `oauth_clients`
--
ALTER TABLE `oauth_clients`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_clients_user_id_index` (`user_id`);

--
-- Indexes for table `oauth_personal_access_clients`
--
ALTER TABLE `oauth_personal_access_clients`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `oauth_refresh_tokens`
--
ALTER TABLE `oauth_refresh_tokens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_refresh_tokens_access_token_id_index` (`access_token_id`);

--
-- Indexes for table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `privacies`
--
ALTER TABLE `privacies`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `properties`
--
ALTER TABLE `properties`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `property_images`
--
ALTER TABLE `property_images`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sliders`
--
ALTER TABLE `sliders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `social_media`
--
ALTER TABLE `social_media`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `states`
--
ALTER TABLE `states`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `terms`
--
ALTER TABLE `terms`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`),
  ADD UNIQUE KEY `users_phone_unique` (`phone`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `aboutuses`
--
ALTER TABLE `aboutuses`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `cities`
--
ALTER TABLE `cities`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=605;

--
-- AUTO_INCREMENT for table `contacts`
--
ALTER TABLE `contacts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `contactuses`
--
ALTER TABLE `contactuses`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `countries`
--
ALTER TABLE `countries`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `customer_tokens`
--
ALTER TABLE `customer_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `faqs`
--
ALTER TABLE `faqs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;

--
-- AUTO_INCREMENT for table `newsletters`
--
ALTER TABLE `newsletters`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `oauth_clients`
--
ALTER TABLE `oauth_clients`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `oauth_personal_access_clients`
--
ALTER TABLE `oauth_personal_access_clients`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `privacies`
--
ALTER TABLE `privacies`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `properties`
--
ALTER TABLE `properties`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `property_images`
--
ALTER TABLE `property_images`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `sliders`
--
ALTER TABLE `sliders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `social_media`
--
ALTER TABLE `social_media`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `states`
--
ALTER TABLE `states`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

--
-- AUTO_INCREMENT for table `terms`
--
ALTER TABLE `terms`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
