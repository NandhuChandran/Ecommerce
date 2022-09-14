-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 14, 2022 at 09:27 AM
-- Server version: 10.4.6-MariaDB
-- PHP Version: 7.2.22

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ecommerce`
--

-- --------------------------------------------------------

--
-- Table structure for table `admins`
--

CREATE TABLE `admins` (
  `id` bigint(20) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `admins`
--

INSERT INTO `admins` (`id`, `name`, `email`, `password`) VALUES
(1, 'Admin', 'admin@gmail.com', '$2y$10$TOvbSWeUOcXBHGB/Y7J1S.59/9i1EcYyiAsvvgSeE8WLhyJ2xvAS6'),
(2, 'admin', 'admin123@gmail.com', '$2y$10$TOvbSWeUOcXBHGB/Y7J1S.59/9i1EcYyiAsvvgSeE8WLhyJ2xvAS6');

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `Category_Name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Category_image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `Category_Name`, `Category_image`, `created_at`, `updated_at`) VALUES
(1, 'Men', 'images/8 (1).png', '2022-04-13 04:22:57', '2022-04-13 04:22:57'),
(2, 'Women', 'images/7 (1).png', '2022-04-13 04:23:11', '2022-04-13 04:23:11'),
(3, 'Children', 'images/KITCHENWARE.png', '2022-04-13 04:23:38', '2022-04-13 04:23:38');

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
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2021_12_28_073457_create_product_table', 1),
(6, '2021_12_28_084130_create_category_table', 1),
(7, '2021_12_28_085918_create_subcategory_table', 1),
(8, '2022_01_12_071616_create_order_table', 2),
(9, '2022_01_13_092844_create_payment_table', 3),
(10, '2022_01_18_104433_create__register_table', 3);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `password_resets`
--

INSERT INTO `password_resets` (`email`, `token`, `created_at`) VALUES
('nandhutamil1997@gmail.com', 'xNityFNLyxLsgikFcA25JJQEe9BxSBWlB9raOoVxiukHEedNkopWNbdRLVXoDSpJ', '2022-06-23 07:34:08'),
('nandhutamil1997@gmail.com', 'oKzlRMkZo50OMkFmZiTi5ukGPq0X3bY68vejSNF1r1p7fFUSZWRxDLXmRvvVwcoR', '2022-06-23 07:34:35'),
('test123@gmail.com', 'cPYieUwQmfLB37yfbOraCX8Ulo7CDudSOJXvhBqpir0ZskiIMFZ7JWX8njpcuMt8', '2022-06-23 07:35:31'),
('test123@gmail.com', 'kR7FP4UU8Vk5WP6ousyR4ivWQdxuRPv0biOCUWwkarFgFWgpMEoDrsfq5CLmBIi0', '2022-06-23 07:36:21'),
('test123@gmail.com', 'UiwkirFVzsRuk0zXTlIvrC70qsAzsty96eBhta8o1CLAva6dIBjbIOsf7s8H5xa0', '2022-06-23 07:40:18'),
('test123@gmail.com', 'Tu5xxm1RjbiySOfj7rIFo8MXbafwHg4cmUVp4o81C9Vsn1BaKHqvDiWBBmI9KuJn', '2022-06-23 07:41:04'),
('test123@gmail.com', 'sh6tc4kPcNrXDBXNjpoiXfIKeMjiz7cyPqzFc2ruunNcnHxzh0kJ2DN9EMl8WICT', '2022-06-23 07:52:14'),
('test123@gmail.com', 'mfOwZtdXxkc8el1QP7fkLmJ33ehqtM3FrgLNOgnCscnGJSKKMeEDsYiJ3nFUaikQ', '2022-06-23 07:53:16'),
('test123@gmail.com', 'IDsLajDnuDSNwsjoQU9jrLVymC8781dIr0gLW5XPTSOjTQUWklxWaXarKGWU5l2q', '2022-06-23 07:59:53'),
('test123@gmail.com', 'pc4FVhnxkhJQ7EqMPSRIz1nbGiZTs3EAp3S1LtW5HWXpjdJaG7eVe89Pmm7cwUHJ', '2022-06-23 08:15:28'),
('test123@gmail.com', 'uIxuadtT3ZFQJvY0b6YBGzXVQ0RL7Fhza4LUvwwQVA71K2MFFOtqQigIG7h32K4E', '2022-06-23 08:15:38'),
('test123@gmail.com', 'vferLjA1kBY5CHL9fyLwyRpurDfZzVI63uy9Xn8rvCZWp2S1zHcFQFbBIEkOgEjg', '2022-06-23 08:20:42'),
('test123@gmail.com', 'JCGZE9ooRhzBsXeYj3RdLA0VJdpGVngONffeyCpscki4GgOwLqKLNPykcoSKvkX7', '2022-06-23 08:21:29'),
('test123@gmail.com', 'SNiqskLKmf7nXconhl9m7KV944SsIVjJo7Bm9cxx9DNf2SbEW1rg4mOmn1tsmlrT', '2022-06-23 08:22:00'),
('nandhini.laravel@gmail.com', 'TMYbvTX74uyPULrXXhuA4aRXfF27NmuZtOLfTy4WyVK6OWYP5AoeOmDkiagjFyc1', '2022-06-30 07:27:14'),
('nandhini.laravel@gmail.com', 'gVnGlPbrZatyIN63TjMIdE9fdg0PoMOK7narh0sKtcZH4FK30vgmLhZXVUrdQby3', '2022-06-30 07:28:33'),
('nandhini.laravel@gmail.com', 'EGxRx9lZcN7BeoJrzQyQtTd7jiBPLs4bHGV8QEc2L1EVdmUqObYMPUn6Wd7wvOzE', '2022-06-30 07:30:30'),
('nandhini.laravel@gmail.com', 'BIXFojR0fSjLYRZPccQWipeSpGaJ2F2KwgWhF3BbEaflNmyHssOebd1QUnnCa7pS', '2022-06-30 07:32:09'),
('nandhini.laravel@gmail.com', 'sxc0dDZWNMjK3XzIcAL4uzSKelCaGPxTBkLgjje8aCl03q7cQAmBCLh0HcPL19gn', '2022-06-30 07:32:41'),
('nandhini.laravel@gmail.com', 'RFmIlVGNiRFDn70BF7FnjvFMT565rWYHs8pBvq5DKaPtRcpBmWVFBcca54b78Kgd', '2022-06-30 07:42:02');

-- --------------------------------------------------------

--
-- Table structure for table `payments`
--

CREATE TABLE `payments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `Image` blob DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `order_id` int(11) DEFAULT NULL,
  `Status` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `payments`
--

INSERT INTO `payments` (`id`, `Image`, `user_id`, `order_id`, `Status`, `created_at`, `updated_at`) VALUES
(1, NULL, NULL, NULL, NULL, '2022-05-24 08:05:43', '2022-05-24 08:05:43'),
(2, NULL, NULL, NULL, NULL, '2022-05-24 08:11:26', '2022-05-24 08:11:26'),
(3, NULL, NULL, NULL, NULL, '2022-05-24 08:26:42', '2022-05-24 08:26:42'),
(4, NULL, NULL, NULL, NULL, '2022-05-24 10:32:45', '2022-05-24 10:32:45'),
(5, NULL, NULL, NULL, NULL, '2022-05-24 10:37:08', '2022-05-24 10:37:08'),
(6, NULL, NULL, NULL, NULL, '2022-05-24 10:39:55', '2022-05-24 10:39:55'),
(7, NULL, NULL, NULL, NULL, '2022-05-25 02:58:36', '2022-05-25 02:58:36'),
(8, NULL, NULL, NULL, NULL, '2022-05-25 03:00:36', '2022-05-25 03:00:36'),
(9, NULL, NULL, NULL, NULL, '2022-05-26 00:14:24', '2022-05-26 00:14:24'),
(10, NULL, NULL, NULL, NULL, '2022-05-26 00:18:54', '2022-05-26 00:18:54'),
(11, NULL, NULL, NULL, NULL, '2022-05-26 00:37:46', '2022-05-26 00:37:46'),
(12, NULL, NULL, NULL, NULL, '2022-05-26 00:43:41', '2022-05-26 00:43:41'),
(13, NULL, NULL, NULL, NULL, '2022-05-26 00:49:24', '2022-05-26 00:49:24'),
(14, NULL, NULL, NULL, NULL, '2022-05-26 01:59:08', '2022-05-26 01:59:08'),
(15, NULL, NULL, NULL, NULL, '2022-05-26 07:11:21', '2022-05-26 07:11:21'),
(16, NULL, NULL, NULL, NULL, '2022-05-26 07:18:41', '2022-05-26 07:18:41'),
(17, NULL, NULL, NULL, NULL, '2022-05-26 07:34:59', '2022-05-26 07:34:59'),
(18, NULL, NULL, NULL, NULL, '2022-05-26 07:43:27', '2022-05-26 07:43:27'),
(19, NULL, NULL, NULL, NULL, '2022-05-26 07:49:04', '2022-05-26 07:49:04'),
(20, NULL, NULL, NULL, NULL, '2022-05-27 04:35:34', '2022-05-27 04:35:34'),
(21, NULL, NULL, NULL, NULL, '2022-05-28 05:43:08', '2022-05-28 05:43:08'),
(22, NULL, NULL, NULL, NULL, '2022-05-28 05:55:55', '2022-05-28 05:55:55'),
(23, NULL, NULL, NULL, NULL, '2022-05-28 06:21:22', '2022-05-28 06:21:22'),
(24, NULL, NULL, NULL, NULL, '2022-05-30 07:01:03', '2022-05-30 07:01:03'),
(25, NULL, NULL, NULL, NULL, '2022-05-30 08:28:31', '2022-05-30 08:28:31'),
(26, NULL, NULL, NULL, NULL, '2022-05-31 02:52:35', '2022-05-31 02:52:35'),
(27, NULL, NULL, NULL, NULL, '2022-05-31 05:08:47', '2022-05-31 05:08:47'),
(28, NULL, NULL, NULL, NULL, '2022-06-10 23:58:04', '2022-06-10 23:58:04'),
(29, NULL, NULL, NULL, NULL, '2022-06-11 00:03:36', '2022-06-11 00:03:36'),
(30, NULL, NULL, NULL, NULL, '2022-06-11 00:06:18', '2022-06-11 00:06:18'),
(31, NULL, NULL, NULL, NULL, '2022-06-11 01:22:11', '2022-06-11 01:22:11'),
(32, NULL, NULL, NULL, NULL, '2022-06-11 01:36:04', '2022-06-11 01:36:04'),
(33, NULL, NULL, NULL, NULL, '2022-06-23 10:14:06', '2022-06-23 10:14:06'),
(34, NULL, NULL, NULL, NULL, '2022-06-23 10:22:20', '2022-06-23 10:22:20'),
(35, NULL, NULL, NULL, NULL, '2022-06-24 07:10:05', '2022-06-24 07:10:05'),
(36, NULL, NULL, NULL, NULL, '2022-06-24 07:13:05', '2022-06-24 07:13:05'),
(37, NULL, NULL, NULL, NULL, '2022-06-24 07:17:55', '2022-06-24 07:17:55'),
(38, NULL, NULL, NULL, NULL, '2022-06-24 07:21:53', '2022-06-24 07:21:53'),
(39, NULL, NULL, NULL, NULL, '2022-06-24 07:25:23', '2022-06-24 07:25:23'),
(40, NULL, NULL, NULL, NULL, '2022-06-24 07:31:30', '2022-06-24 07:31:30'),
(41, NULL, NULL, NULL, NULL, '2022-06-24 09:14:04', '2022-06-24 09:14:04'),
(42, NULL, NULL, NULL, NULL, '2022-06-24 22:23:33', '2022-06-24 22:23:33'),
(43, NULL, NULL, NULL, NULL, '2022-06-28 02:52:54', '2022-06-28 02:52:54'),
(44, NULL, NULL, NULL, NULL, '2022-06-29 07:36:39', '2022-06-29 07:36:39'),
(45, NULL, NULL, NULL, NULL, '2022-06-29 08:17:37', '2022-06-29 08:17:37'),
(46, NULL, NULL, NULL, NULL, '2022-06-29 09:05:33', '2022-06-29 09:05:33'),
(47, NULL, NULL, NULL, NULL, '2022-06-29 09:31:16', '2022-06-29 09:31:16'),
(48, NULL, NULL, NULL, NULL, '2022-06-29 09:36:29', '2022-06-29 09:36:29'),
(49, NULL, NULL, NULL, NULL, '2022-06-29 09:43:32', '2022-06-29 09:43:32'),
(50, NULL, NULL, NULL, NULL, '2022-06-29 09:46:41', '2022-06-29 09:46:41'),
(51, NULL, NULL, NULL, NULL, '2022-06-30 05:34:11', '2022-06-30 05:34:11'),
(52, NULL, NULL, NULL, NULL, '2022-07-05 00:03:02', '2022-07-05 00:03:02'),
(53, NULL, NULL, NULL, NULL, '2022-07-05 02:07:10', '2022-07-05 02:07:10'),
(54, NULL, NULL, NULL, NULL, '2022-07-05 02:09:06', '2022-07-05 02:09:06'),
(55, NULL, NULL, NULL, NULL, '2022-07-05 02:20:34', '2022-07-05 02:20:34'),
(56, NULL, NULL, NULL, NULL, '2022-07-05 02:25:08', '2022-07-05 02:25:08'),
(57, NULL, NULL, NULL, NULL, '2022-07-05 02:28:53', '2022-07-05 02:28:53'),
(58, NULL, NULL, NULL, NULL, '2022-07-05 02:39:55', '2022-07-05 02:39:55'),
(59, NULL, NULL, NULL, NULL, '2022-07-05 02:41:40', '2022-07-05 02:41:40'),
(60, NULL, NULL, NULL, NULL, '2022-07-05 06:13:56', '2022-07-05 06:13:56'),
(61, NULL, NULL, NULL, NULL, '2022-07-05 06:37:24', '2022-07-05 06:37:24');

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `Category_id` bigint(20) DEFAULT NULL,
  `SubCategory_id` bigint(20) DEFAULT NULL,
  `product_name` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `stock_availability` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `product_image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL,
  `Quantity` int(10) DEFAULT NULL,
  `Product_Description` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Price` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sale` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `gallery_photo` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `Category_id`, `SubCategory_id`, `product_name`, `stock_availability`, `product_image`, `created_at`, `updated_at`, `Quantity`, `Product_Description`, `Price`, `sale`, `gallery_photo`) VALUES
(119, 1, 20, 'PRD101', 'Available', 'images/half.jpeg', '2022-09-14 07:17:17', '2022-09-14 01:18:08', 10, 'xxxxx', '500', '1', '[\"1663138088_half.jpeg\"]'),
(120, 1, 21, 'PRD102', 'Available', 'images/ful.jpeg', '2022-09-14 07:17:17', '2022-09-14 01:18:49', 20, 'xxxxx', '1000', '1', '[\"1663138129_ful.jpeg\"]'),
(121, 1, 22, 'PRD103', 'Available', 'images/short.jpeg', '2022-09-14 07:16:40', '2022-09-14 01:19:32', 25, 'xxxxx', '500', '1', '[\"1663138172_short.jpeg\"]'),
(122, 2, 23, 'PRD104', 'Available', 'images/tops.jpeg', '2022-09-14 07:16:41', '2022-09-14 01:20:17', 30, 'xxxxxxxx', '600', '1', '[\"1663138217_tops.jpeg\"]'),
(123, 2, 24, 'PRD105', 'Available', 'images/saree.jpeg', '2022-09-14 07:16:41', '2022-09-14 01:21:10', 30, 'xxxxxxxx', '500', '1', '[\"1663138270_saree.jpeg\"]'),
(124, 3, 25, 'PRD106', 'Available', 'images/kids.jpeg', '2022-09-14 07:16:41', '2022-09-14 01:22:03', 25, 'xxxxxxxxx', '500', '1', '[\"1663138323_kids.jpeg\"]'),
(125, 3, 26, 'PRD107', 'Available', 'images/swim.jpeg', '2022-09-14 07:16:41', '2022-09-14 01:22:35', 10, 'xxxxxxxxx', '1000', '1', '[\"1663138355_swim.jpeg\"]'),
(126, 2, 24, 'PRD108', 'Available', 'images/saree1.jpeg', '2022-09-14 07:16:41', '2022-09-14 01:42:06', 30, 'xxxxxx', '1000', '1', '[\"1663139526_saree1.jpeg\"]'),
(127, 2, 23, 'PRD109', 'Available', 'images/top1.jpeg', '2022-09-14 01:45:35', '2022-09-14 01:45:35', 50, 'xxxxxxxx', '2000', '1', '[\"1663139735_top1.jpeg\"]');

-- --------------------------------------------------------

--
-- Table structure for table `stocks`
--

CREATE TABLE `stocks` (
  `id` bigint(20) NOT NULL,
  `product_name` varchar(255) NOT NULL,
  `stock_image` varchar(255) NOT NULL,
  `stock_available` varchar(255) NOT NULL,
  `stock_input_date` date DEFAULT NULL,
  `updated_at` datetime(6) NOT NULL,
  `created_at` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `stocks`
--

INSERT INTO `stocks` (`id`, `product_name`, `stock_image`, `stock_available`, `stock_input_date`, `updated_at`, `created_at`) VALUES
(2, '5', 'images/banner1.jpg', '57', NULL, '2022-04-13 07:18:27.000000', '2022-04-13 07:18:27.000000'),
(3, '7', 'images/pic.png', '20', '2022-05-05', '2022-05-02 07:53:17.000000', '2022-05-02 07:53:17.000000'),
(4, '3', 'images/card1.jpg', '2', '2022-06-24', '2022-06-24 15:36:37.000000', '2022-06-24 15:36:37.000000');

-- --------------------------------------------------------

--
-- Table structure for table `subcategories`
--

CREATE TABLE `subcategories` (
  `Category_id` bigint(20) NOT NULL,
  `id` bigint(20) NOT NULL,
  `SubCategory_Name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `SubCategory_image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `subcategories`
--

INSERT INTO `subcategories` (`Category_id`, `id`, `SubCategory_Name`, `SubCategory_image`, `created_at`, `updated_at`) VALUES
(1, 20, 'Half_Sleeve', 'images/half.jpeg', '2022-09-14 00:46:31', '2022-09-14 00:46:31'),
(1, 21, 'Full_Sleeve', 'images/ful.jpeg', '2022-09-14 00:47:14', '2022-09-14 00:47:14'),
(1, 22, 'Short Shirt', 'images/short.jpeg', '2022-09-14 00:48:05', '2022-09-14 00:48:05'),
(2, 23, 'Tops', 'images/tops.jpeg', '2022-09-14 00:51:09', '2022-09-14 00:51:09'),
(2, 24, 'Sarees', 'images/saree.jpeg', '2022-09-14 00:51:33', '2022-09-14 00:51:33'),
(3, 25, 'Kids shirt', 'images/kids.jpeg', '2022-09-14 00:53:34', '2022-09-14 00:53:34'),
(3, 26, 'Swim_Suit', 'images/swim.jpeg', '2022-09-14 00:54:01', '2022-09-14 00:54:01');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `id` int(20) NOT NULL,
  `unique_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` bigint(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`name`, `email`, `email_verified_at`, `password`, `image`, `remember_token`, `created_at`, `updated_at`, `id`, `unique_id`, `phone`) VALUES
('test123', 'test123@gmail.com', NULL, '$2y$10$Kko/XU41zH02Bmvz13ecwOl3SGZJTc38fV0Jv7k4EODy/Qi7Mhgda', NULL, NULL, '2022-02-07 04:54:12', '2022-02-07 04:54:12', 1, 'GML0000001', 2147483647),
('test', 'test@gmail.com', NULL, '$2y$10$z94Q6zqAFjEMMsrlFWhxGuqmRpTEvye7O.qCaImbheZbVkT2vEE6W', NULL, NULL, '2022-04-28 05:58:10', '2022-04-28 05:58:10', 2, 'GML0000002', 2147483647),
('new', 'abi@gmail.com', NULL, '$2y$10$INB/wMF.LQOTi5slRb/Lt.LfIFtZcWbsu97xZ8G3YAMt9MMSUcLvy', NULL, NULL, '2022-07-05 01:44:00', '2022-07-05 01:44:00', 10, 'GML0000003', 9788671878),
('nandhu', 'nandhutamil1997@gmail.com', NULL, '$2y$10$yLaA17g8/r.Yco.NvmBkfuv1oc6XLNiIz1CasBvT9xbQtgd6ziixG', NULL, NULL, '2022-09-13 21:23:52', '2022-09-13 21:23:52', 11, 'GML0000004', 8870296295);

-- --------------------------------------------------------

--
-- Table structure for table `_registers`
--

CREATE TABLE `_registers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `Name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Phone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Retype_Password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `payments`
--
ALTER TABLE `payments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `stocks`
--
ALTER TABLE `stocks`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `subcategories`
--
ALTER TABLE `subcategories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indexes for table `_registers`
--
ALTER TABLE `_registers`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `payments`
--
ALTER TABLE `payments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=62;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=128;

--
-- AUTO_INCREMENT for table `stocks`
--
ALTER TABLE `stocks`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `subcategories`
--
ALTER TABLE `subcategories`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `_registers`
--
ALTER TABLE `_registers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
