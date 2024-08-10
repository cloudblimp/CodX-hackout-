-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 10, 2024 at 08:42 PM
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
-- Database: `hackout`
--

-- --------------------------------------------------------

--
-- Table structure for table `cache`
--

CREATE TABLE `cache` (
  `key` varchar(255) NOT NULL,
  `value` mediumtext NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cache_locks`
--

CREATE TABLE `cache_locks` (
  `key` varchar(255) NOT NULL,
  `owner` varchar(255) NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `crops`
--

CREATE TABLE `crops` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `crop_name` varchar(255) NOT NULL,
  `min_temp` decimal(5,2) NOT NULL,
  `max_temp` decimal(5,2) NOT NULL,
  `max_precipitation` int(11) NOT NULL,
  `max_humidity` int(11) NOT NULL,
  `planting_season` varchar(255) NOT NULL,
  `growth_duration` varchar(255) NOT NULL,
  `harvest_season` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `crops`
--

INSERT INTO `crops` (`id`, `crop_name`, `min_temp`, `max_temp`, `max_precipitation`, `max_humidity`, `planting_season`, `growth_duration`, `harvest_season`, `created_at`, `updated_at`) VALUES
(1, 'Wheat', 10.00, 25.00, 50, 60, 'Winter', '6-8 months', 'Spring', '2024-08-10 18:14:21', '2024-08-10 18:14:21'),
(2, 'Rice', 20.00, 35.00, 100, 80, 'Monsoon', '4-6 months', 'Autumn', '2024-08-10 18:14:21', '2024-08-10 18:14:21'),
(3, 'Barley', 5.00, 20.00, 40, 70, 'Spring', '4-6 months', 'Summer', '2024-08-10 18:14:21', '2024-08-10 18:14:21'),
(4, 'Corn', 15.00, 30.00, 70, 80, 'Spring', '3-4 months', 'Summer', '2024-08-10 18:14:21', '2024-08-10 18:14:21'),
(5, 'Soybean', 15.00, 30.00, 90, 70, 'Spring', '4-5 months', 'Autumn', '2024-08-10 18:14:21', '2024-08-10 18:14:21'),
(6, 'Oats', 10.00, 25.00, 60, 65, 'Spring', '4-6 months', 'Summer', '2024-08-10 18:14:21', '2024-08-10 18:14:21'),
(7, 'Sugarcane', 20.00, 35.00, 200, 85, 'Spring', '10-12 months', 'Winter', '2024-08-10 18:14:21', '2024-08-10 18:14:21'),
(8, 'Cotton', 20.00, 35.00, 70, 60, 'Spring', '5-6 months', 'Autumn', '2024-08-10 18:14:21', '2024-08-10 18:14:21'),
(9, 'Potato', 7.00, 20.00, 80, 75, 'Spring', '3-4 months', 'Summer', '2024-08-10 18:14:21', '2024-08-10 18:14:21'),
(10, 'Tomato', 15.00, 30.00, 60, 70, 'Spring', '3-4 months', 'Summer', '2024-08-10 18:14:21', '2024-08-10 18:14:21'),
(11, 'Lettuce', 10.00, 20.00, 40, 65, 'Spring', '2-3 months', 'Summer', '2024-08-10 18:14:21', '2024-08-10 18:14:21'),
(12, 'Carrot', 10.00, 25.00, 50, 70, 'Spring', '3-4 months', 'Summer', '2024-08-10 18:14:21', '2024-08-10 18:14:21'),
(13, 'Onion', 10.00, 30.00, 60, 80, 'Spring', '5-6 months', 'Autumn', '2024-08-10 18:14:21', '2024-08-10 18:14:21'),
(14, 'Garlic', 10.00, 25.00, 50, 70, 'Winter', '6-8 months', 'Summer', '2024-08-10 18:14:21', '2024-08-10 18:14:21'),
(15, 'Peas', 5.00, 20.00, 60, 65, 'Spring', '3-4 months', 'Summer', '2024-08-10 18:14:21', '2024-08-10 18:14:21'),
(16, 'Chili', 20.00, 35.00, 50, 60, 'Spring', '4-5 months', 'Autumn', '2024-08-10 18:14:21', '2024-08-10 18:14:21'),
(17, 'Cucumber', 15.00, 30.00, 70, 75, 'Spring', '2-3 months', 'Summer', '2024-08-10 18:14:21', '2024-08-10 18:14:21'),
(18, 'Pumpkin', 15.00, 30.00, 90, 80, 'Spring', '4-5 months', 'Autumn', '2024-08-10 18:14:21', '2024-08-10 18:14:21'),
(19, 'Zucchini', 15.00, 30.00, 70, 75, 'Spring', '2-3 months', 'Summer', '2024-08-10 18:14:21', '2024-08-10 18:14:21'),
(20, 'Spinach', 5.00, 20.00, 50, 60, 'Spring', '2-3 months', 'Summer', '2024-08-10 18:14:21', '2024-08-10 18:14:21'),
(21, 'Cabbage', 10.00, 25.00, 60, 65, 'Spring', '4-5 months', 'Autumn', '2024-08-10 18:14:21', '2024-08-10 18:14:21'),
(22, 'Cauliflower', 10.00, 25.00, 50, 60, 'Spring', '4-5 months', 'Autumn', '2024-08-10 18:14:21', '2024-08-10 18:14:21'),
(23, 'Broccoli', 10.00, 25.00, 60, 65, 'Spring', '3-4 months', 'Autumn', '2024-08-10 18:14:21', '2024-08-10 18:14:21'),
(24, 'Kale', 5.00, 20.00, 60, 65, 'Spring', '3-4 months', 'Autumn', '2024-08-10 18:14:21', '2024-08-10 18:14:21'),
(25, 'Radish', 10.00, 25.00, 50, 60, 'Spring', '2-3 months', 'Summer', '2024-08-10 18:14:21', '2024-08-10 18:14:21'),
(26, 'Beetroot', 10.00, 25.00, 50, 70, 'Spring', '3-4 months', 'Autumn', '2024-08-10 18:14:21', '2024-08-10 18:14:21'),
(27, 'Turnip', 10.00, 25.00, 50, 70, 'Spring', '2-3 months', 'Summer', '2024-08-10 18:14:21', '2024-08-10 18:14:21'),
(28, 'Raddish', 5.00, 20.00, 50, 60, 'Spring', '2-3 months', 'Summer', '2024-08-10 18:14:21', '2024-08-10 18:14:21'),
(29, 'Sweetcorn', 15.00, 30.00, 70, 80, 'Spring', '3-4 months', 'Summer', '2024-08-10 18:14:21', '2024-08-10 18:14:21'),
(30, 'Asparagus', 10.00, 25.00, 60, 65, 'Spring', '2-3 years', 'Spring', '2024-08-10 18:14:21', '2024-08-10 18:14:21'),
(31, 'Artichoke', 10.00, 25.00, 60, 70, 'Spring', '2-3 years', 'Autumn', '2024-08-10 18:14:21', '2024-08-10 18:14:21'),
(32, 'Brussels Sprouts', 10.00, 25.00, 60, 65, 'Spring', '5-6 months', 'Winter', '2024-08-10 18:14:21', '2024-08-10 18:14:21'),
(33, 'Chard', 10.00, 25.00, 50, 60, 'Spring', '4-5 months', 'Autumn', '2024-08-10 18:14:21', '2024-08-10 18:14:21'),
(34, 'Celery', 10.00, 25.00, 60, 65, 'Spring', '6-8 months', 'Autumn', '2024-08-10 18:14:21', '2024-08-10 18:14:21'),
(35, 'Dill', 15.00, 30.00, 60, 70, 'Spring', '2-3 months', 'Summer', '2024-08-10 18:14:21', '2024-08-10 18:14:21'),
(36, 'Fennel', 10.00, 25.00, 50, 65, 'Spring', '4-5 months', 'Autumn', '2024-08-10 18:14:21', '2024-08-10 18:14:21'),
(37, 'Leek', 10.00, 25.00, 60, 70, 'Spring', '6-8 months', 'Winter', '2024-08-10 18:14:21', '2024-08-10 18:14:21'),
(38, 'Mint', 15.00, 30.00, 70, 75, 'Spring', '2-3 months', 'Summer', '2024-08-10 18:14:21', '2024-08-10 18:14:21'),
(39, 'Parsley', 10.00, 25.00, 50, 60, 'Spring', '2-3 months', 'Summer', '2024-08-10 18:14:21', '2024-08-10 18:14:21'),
(40, 'Rosemary', 15.00, 30.00, 50, 60, 'Spring', '6-12 months', 'Summer', '2024-08-10 18:14:21', '2024-08-10 18:14:21'),
(41, 'Thyme', 15.00, 30.00, 50, 60, 'Spring', '6-12 months', 'Summer', '2024-08-10 18:14:21', '2024-08-10 18:14:21'),
(42, 'Sage', 15.00, 30.00, 50, 60, 'Spring', '6-12 months', 'Summer', '2024-08-10 18:14:21', '2024-08-10 18:14:21'),
(43, 'Tarragon', 15.00, 30.00, 50, 60, 'Spring', '6-12 months', 'Summer', '2024-08-10 18:14:21', '2024-08-10 18:14:21'),
(44, 'Basil', 20.00, 35.00, 60, 70, 'Spring', '2-3 months', 'Autumn', '2024-08-10 18:14:21', '2024-08-10 18:14:21'),
(45, 'Oregano', 15.00, 30.00, 50, 60, 'Spring', '6-12 months', 'Summer', '2024-08-10 18:14:21', '2024-08-10 18:14:21');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `forgot_passwords`
--

CREATE TABLE `forgot_passwords` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `jobs`
--

CREATE TABLE `jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `queue` varchar(255) NOT NULL,
  `payload` longtext NOT NULL,
  `attempts` tinyint(3) UNSIGNED NOT NULL,
  `reserved_at` int(10) UNSIGNED DEFAULT NULL,
  `available_at` int(10) UNSIGNED NOT NULL,
  `created_at` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `job_batches`
--

CREATE TABLE `job_batches` (
  `id` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `total_jobs` int(11) NOT NULL,
  `pending_jobs` int(11) NOT NULL,
  `failed_jobs` int(11) NOT NULL,
  `failed_job_ids` longtext NOT NULL,
  `options` mediumtext DEFAULT NULL,
  `cancelled_at` int(11) DEFAULT NULL,
  `created_at` int(11) NOT NULL,
  `finished_at` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '0001_01_01_000000_create_users_table', 1),
(2, '0001_01_01_000001_create_cache_table', 1),
(3, '0001_01_01_000002_create_jobs_table', 1),
(4, '2024_07_07_115444_add_google_id_to_users_table', 1),
(5, '2024_07_11_111758_create_forgot_passwords_table', 1),
(6, '2024_08_10_174855_create_crops_table', 1),
(7, '2024_08_10_175347_add_location_field_to_users_table', 1),
(8, '2024_08_10_181927_add_auth_type_to_users_table', 2);

-- --------------------------------------------------------

--
-- Table structure for table `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(255) NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) DEFAULT NULL,
  `user_agent` text DEFAULT NULL,
  `payload` longtext NOT NULL,
  `last_activity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sessions`
--

INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('Vdx2xsF58PhcuMB3x6qzcKaYHVPIWgZdAWVIxyVp', 201, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/109.0.0.0 Safari/537.36 Edg/109.0.1518.140', 'YTo1OntzOjY6Il90b2tlbiI7czo0MDoicFU3WEZVaVJkVldjNzRMZWtTbFh3NGpvdnppQ2pFWVVhYWxQSlcwbCI7czozOiJ1cmwiO2E6MDp7fXM6OToiX3ByZXZpb3VzIjthOjE6e3M6MzoidXJsIjtzOjIxOiJodHRwOi8vMTI3LjAuMC4xOjgwMDAiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX1zOjUwOiJsb2dpbl93ZWJfNTliYTM2YWRkYzJiMmY5NDAxNTgwZjAxNGM3ZjU4ZWE0ZTMwOTg5ZCI7aToyMDE7fQ==', 1723315133);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `auth_type` varchar(255) DEFAULT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `location` varchar(255) DEFAULT NULL,
  `google_id` varchar(255) DEFAULT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `auth_type`, `email_verified_at`, `password`, `location`, `google_id`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Farmer 1', 'farmer1@example.com', NULL, NULL, '$2y$12$HkBw6SmpXVhbdbQq4TpnHOxK2mfPlZfb6WRAFZg4sBuNeSifeWs8q', '35.6895,139.6917', NULL, NULL, '2024-08-10 12:37:44', '2024-08-10 12:37:44'),
(2, 'Farmer 2', 'farmer2@example.com', NULL, NULL, '$2y$12$W2QxPKXxaSz6rB/9Oj5XeOS/z8PAIroQlbLpioMItWE9QlrGy.boC', '35.6895,139.6917', NULL, NULL, '2024-08-10 12:37:44', '2024-08-10 12:37:44'),
(3, 'Farmer 3', 'farmer3@example.com', NULL, NULL, '$2y$12$97VGh7VXMa0gRMJAapsu/.1W1t4YjTTf1WXZVE8pmEPfKCFwOV3UC', '17.3850,78.4867', NULL, NULL, '2024-08-10 12:37:45', '2024-08-10 12:37:45'),
(4, 'Farmer 4', 'farmer4@example.com', NULL, NULL, '$2y$12$/ubOEH1IGLSl8VnTgGZHHei1YamIjMOTiBo7wj.AogoLQkEr3OPvq', '55.7558,37.6176', NULL, NULL, '2024-08-10 12:37:45', '2024-08-10 12:37:45'),
(5, 'Farmer 5', 'farmer5@example.com', NULL, NULL, '$2y$12$WLwgZ4pdJHkXGux7aqikfOpdXDnJNEjuyp4O2wb2AIBxrNzwixAB2', '20.5937,78.9629', NULL, NULL, '2024-08-10 12:37:46', '2024-08-10 12:37:46'),
(6, 'Farmer 6', 'farmer6@example.com', NULL, NULL, '$2y$12$JeE2zD19S9VGtK1rgVArbeoDZi2Wa239pitFihb8VGTsbmInECnDK', '39.9042,32.0626', NULL, NULL, '2024-08-10 12:37:46', '2024-08-10 12:37:46'),
(7, 'Farmer 7', 'farmer7@example.com', NULL, NULL, '$2y$12$msNFOg7NfjGmQFuJ1YHWK.a40ewdEnjPjOyuzZJ21sDmRsYJURjOe', '17.3850,78.4867', NULL, NULL, '2024-08-10 12:37:47', '2024-08-10 12:37:47'),
(8, 'Farmer 8', 'farmer8@example.com', NULL, NULL, '$2y$12$3960DDKjGEcJL/YOazNyyut5IffLIZkkQ8n5/msUoSp/DB8ZBncmG', '48.2082,16.3738', NULL, NULL, '2024-08-10 12:37:47', '2024-08-10 12:37:47'),
(9, 'Farmer 9', 'farmer9@example.com', NULL, NULL, '$2y$12$UmfTi0446F.FWjtICtYfrep43/18JbWdNs/VRqF6DaFDq/b8CJOj.', '20.5937,78.9629', NULL, NULL, '2024-08-10 12:37:47', '2024-08-10 12:37:47'),
(10, 'Farmer 10', 'farmer10@example.com', NULL, NULL, '$2y$12$MXqL9U.oHZRNDEDjkb1JBeZyDZevvBLx.jK15g/Xcei9MPcaZfIBq', '11.0168,76.9558', NULL, NULL, '2024-08-10 12:37:48', '2024-08-10 12:37:48'),
(11, 'Farmer 11', 'farmer11@example.com', NULL, NULL, '$2y$12$yLM4B44s5nmM5THEy9f8meCFwHB9a7SM5SdJzcQ9tz5J.8DWjh6/y', '13.0827,80.2707', NULL, NULL, '2024-08-10 12:37:48', '2024-08-10 12:37:48'),
(12, 'Farmer 12', 'farmer12@example.com', NULL, NULL, '$2y$12$Rspb76ALCMy80joG/TTxmeYZScJOD8HNdMU8mvl8IptKu4e/DNuia', '28.6139,77.2090', NULL, NULL, '2024-08-10 12:37:49', '2024-08-10 12:37:49'),
(13, 'Farmer 13', 'farmer13@example.com', NULL, NULL, '$2y$12$s.81Vk3Az1GszmxB6Tf0sehhxDcDGrO6yygtCIb5g/SbWZ7FBeqcu', '13.0827,80.2707', NULL, NULL, '2024-08-10 12:37:49', '2024-08-10 12:37:49'),
(14, 'Farmer 14', 'farmer14@example.com', NULL, NULL, '$2y$12$fNhxtkr46GrIWAS/XdfrleK5ZnTIlPOlK91.daLLda7U4XEkGxWou', '45.4215,-75.6972', NULL, NULL, '2024-08-10 12:37:50', '2024-08-10 12:37:50'),
(15, 'Farmer 15', 'farmer15@example.com', NULL, NULL, '$2y$12$JS99QtXwP5H2swgA7ZTFIe2RfPcCeRdAJt9HP1i3zxsw4rAr2ExXm', '28.6139,77.2090', NULL, NULL, '2024-08-10 12:37:50', '2024-08-10 12:37:50'),
(16, 'Farmer 16', 'farmer16@example.com', NULL, NULL, '$2y$12$7TPOTg3Nn0lVqQCcg.Nq3uVek6RaEzt0dnYTQTyAS.ubrlv6uN8zG', '30.7333,76.7794', NULL, NULL, '2024-08-10 12:37:51', '2024-08-10 12:37:51'),
(17, 'Farmer 17', 'farmer17@example.com', NULL, NULL, '$2y$12$OyvgBgBb7oKqV1pufUharOhu6FirXqhMFlcWh2XCaCNVv4XC1HTmq', '39.7392,-104.9903', NULL, NULL, '2024-08-10 12:37:51', '2024-08-10 12:37:51'),
(18, 'Farmer 18', 'farmer18@example.com', NULL, NULL, '$2y$12$Ys8gS68KD22C4h9D1LhRBOSYRYEjx/3GrwnZYDNsJvOZM7aD/Wpdi', '48.8566,2.3522', NULL, NULL, '2024-08-10 12:37:52', '2024-08-10 12:37:52'),
(19, 'Farmer 19', 'farmer19@example.com', NULL, NULL, '$2y$12$Ixq/J7FegPipb22EDxI7d.Hzycq.cFXhka/HEI/csNjcw806XBPLW', '11.0168,76.9558', NULL, NULL, '2024-08-10 12:37:52', '2024-08-10 12:37:52'),
(20, 'Farmer 20', 'farmer20@example.com', NULL, NULL, '$2y$12$Dw99DcyFcRned7.c00xW6.sKR3MrOVhCuBURFr095yyaLiUDPcl8e', '10.8505,76.2711', NULL, NULL, '2024-08-10 12:37:52', '2024-08-10 12:37:52'),
(21, 'Farmer 21', 'farmer21@example.com', NULL, NULL, '$2y$12$YGUk4.G5IRzmogZMBjAwGOyhn1CnTT6Gy2s6gfWiPF32M7UCI9sFm', '31.5497,74.3436', NULL, NULL, '2024-08-10 12:37:53', '2024-08-10 12:37:53'),
(22, 'Farmer 22', 'farmer22@example.com', NULL, NULL, '$2y$12$D5rXU.XYHcIiEtZH0RfSyO49L4SQMi3m7Y6B3dfyUwZcjs31t4uJS', '29.7604,-95.3698', NULL, NULL, '2024-08-10 12:37:53', '2024-08-10 12:37:53'),
(23, 'Farmer 23', 'farmer23@example.com', NULL, NULL, '$2y$12$sSx28zo74By8Uc0P2OaTVOax.E9O2bvB8L3/epAwsDaj0XNd8AdFq', '39.7392,-104.9903', NULL, NULL, '2024-08-10 12:37:54', '2024-08-10 12:37:54'),
(24, 'Farmer 24', 'farmer24@example.com', NULL, NULL, '$2y$12$zQ3IKHA6zzBNauG/e3Gn5.c38Ath3JwHvwg5fZuN09rv8mRqLH6HO', '40.7128,-74.0060', NULL, NULL, '2024-08-10 12:37:54', '2024-08-10 12:37:54'),
(25, 'Farmer 25', 'farmer25@example.com', NULL, NULL, '$2y$12$cnlOkqP0HQDJyN7oSfUS9uDULVzcfdDW.JM9vmWtwpWkYRjwec0Ia', '37.7749,-122.4194', NULL, NULL, '2024-08-10 12:37:55', '2024-08-10 12:37:55'),
(26, 'Farmer 26', 'farmer26@example.com', NULL, NULL, '$2y$12$WYPLaKrkklpZtwmMn6AF4edikZvha65Ey581jk/X8bX38Vpuzeoki', '28.6139,77.2090', NULL, NULL, '2024-08-10 12:37:55', '2024-08-10 12:37:55'),
(27, 'Farmer 27', 'farmer27@example.com', NULL, NULL, '$2y$12$5SiY4sG4WY1t.yZWZeUUbuw4873GGjw.R4FhMhaZcFOyppBoRyBI2', '28.6139,77.2090', NULL, NULL, '2024-08-10 12:37:55', '2024-08-10 12:37:55'),
(28, 'Farmer 28', 'farmer28@example.com', NULL, NULL, '$2y$12$rBfx7f4DDm5P90JoeNRfAOGZQbtLBm8JzC0ZY6/0QPTot.JN2t3fK', '45.4215,-75.6972', NULL, NULL, '2024-08-10 12:37:56', '2024-08-10 12:37:56'),
(29, 'Farmer 29', 'farmer29@example.com', NULL, NULL, '$2y$12$ezZvEiSOiFOAAYAiiha1rOfYO/CCyccvZGAV9qHoDq1LZX7/8oNqC', '39.9042,32.0626', NULL, NULL, '2024-08-10 12:37:56', '2024-08-10 12:37:56'),
(30, 'Farmer 30', 'farmer30@example.com', NULL, NULL, '$2y$12$5V3AeCAoaSZIPizqheJ/yOvt.iaRNibfcy3JWuvYk/BljM/DcsAEu', '22.5726,88.3639', NULL, NULL, '2024-08-10 12:37:57', '2024-08-10 12:37:57'),
(31, 'Farmer 31', 'farmer31@example.com', NULL, NULL, '$2y$12$fp5wnyd12k/vhaOL12L2kesG2qZKhPyuNNg3Pk1eKDVMu2jX7QHLm', '29.0588,75.3186', NULL, NULL, '2024-08-10 12:37:57', '2024-08-10 12:37:57'),
(32, 'Farmer 32', 'farmer32@example.com', NULL, NULL, '$2y$12$zQPeEt0oV9uby7b84hf07eQeTPdqQ2jcpthw64xb.gcIh.OowrwJW', '23.8103,90.4125', NULL, NULL, '2024-08-10 12:37:58', '2024-08-10 12:37:58'),
(33, 'Farmer 33', 'farmer33@example.com', NULL, NULL, '$2y$12$3aTT/MT4JJJfDvfr9QqnkO1YneeWD23Ibf2elq9HCwvhomeALRRuy', '34.0522,-118.2437', NULL, NULL, '2024-08-10 12:37:58', '2024-08-10 12:37:58'),
(34, 'Farmer 34', 'farmer34@example.com', NULL, NULL, '$2y$12$P2VvlgXmeZnX7zBi.khimOTo5b95hnOuxKJa9lFbyMd/CSswxQiD2', '22.5726,88.3639', NULL, NULL, '2024-08-10 12:37:58', '2024-08-10 12:37:58'),
(35, 'Farmer 35', 'farmer35@example.com', NULL, NULL, '$2y$12$at83e/d/JDFRMw805s9PROW3.gmb7CMhpcml4a0wNFYn2XSdMUguq', '48.8566,2.3522', NULL, NULL, '2024-08-10 12:37:59', '2024-08-10 12:37:59'),
(36, 'Farmer 36', 'farmer36@example.com', NULL, NULL, '$2y$12$bVLtAbF3PrChfJK9eWxLPOjmFcXhHsdiPNw39VINE/V24UlnGuLVe', '11.0168,76.9558', NULL, NULL, '2024-08-10 12:37:59', '2024-08-10 12:37:59'),
(37, 'Farmer 37', 'farmer37@example.com', NULL, NULL, '$2y$12$tXUOFz1b8ia1b6KnrZNnfOY/xu3ywuChMzC9zFuZjb0/HW4FDSHa2', '28.6139,77.2090', NULL, NULL, '2024-08-10 12:38:00', '2024-08-10 12:38:00'),
(38, 'Farmer 38', 'farmer38@example.com', NULL, NULL, '$2y$12$4QbGRed.pY4pmU2v0pG9Y.mfFTeAZvoGYeWBmOp07tuG0BlSXzaXC', '11.0168,76.9558', NULL, NULL, '2024-08-10 12:38:00', '2024-08-10 12:38:00'),
(39, 'Farmer 39', 'farmer39@example.com', NULL, NULL, '$2y$12$HXWWu2v7HJQWnoV7h8Lty.ZHelfglDCGqJwnc8LmPdB8VSNCUrswq', '12.9716,77.5946', NULL, NULL, '2024-08-10 12:38:01', '2024-08-10 12:38:01'),
(40, 'Farmer 40', 'farmer40@example.com', NULL, NULL, '$2y$12$YkQRedAcMpx8A6XEyiawBesgC2Qr9YODTitZwMYsD6ZhTeOWXjq8e', '21.1702,72.8311', NULL, NULL, '2024-08-10 12:38:01', '2024-08-10 12:38:01'),
(41, 'Farmer 41', 'farmer41@example.com', NULL, NULL, '$2y$12$TCM.BaMiJr4d9caDMomkPueVKhnlBkVNt1z11K.Ckq.VRO0KXFhjm', '13.0827,80.2707', NULL, NULL, '2024-08-10 12:38:01', '2024-08-10 12:38:01'),
(42, 'Farmer 42', 'farmer42@example.com', NULL, NULL, '$2y$12$Cxo17ZuFZvRQiVBiUiZpH.kgRVpVmZHOSNywf11KQUk9W.ljx6Zo2', '17.3850,78.4867', NULL, NULL, '2024-08-10 12:38:02', '2024-08-10 12:38:02'),
(43, 'Farmer 43', 'farmer43@example.com', NULL, NULL, '$2y$12$t2Tyln5db/17rVm4JsE6XuoVKFuXG3IzQWux6Sm2VurI0ebY4ipVy', '40.7128,-74.0060', NULL, NULL, '2024-08-10 12:38:02', '2024-08-10 12:38:02'),
(44, 'Farmer 44', 'farmer44@example.com', NULL, NULL, '$2y$12$mKgg/09zaWg.reFX9rpaEOZRc.IPwlW59aUf2RU9ZFeVSa7CAx7Gi', '39.7392,-104.9903', NULL, NULL, '2024-08-10 12:38:03', '2024-08-10 12:38:03'),
(45, 'Farmer 45', 'farmer45@example.com', NULL, NULL, '$2y$12$FCQae9Lo6bO5VZpm1ih73eqekBtoCMb637D45sLI.YGWJin4ooncK', '29.7604,-95.3698', NULL, NULL, '2024-08-10 12:38:03', '2024-08-10 12:38:03'),
(46, 'Farmer 46', 'farmer46@example.com', NULL, NULL, '$2y$12$6cztoOPmS9bfCfDjjh6Q9OGyIlXJDE40rSlYIfvhCgoYX5Gv425ka', '31.5497,74.3436', NULL, NULL, '2024-08-10 12:38:03', '2024-08-10 12:38:03'),
(47, 'Farmer 47', 'farmer47@example.com', NULL, NULL, '$2y$12$h26KOmzpMp94eFJQ6huS7.3WsDBOLiEg3RHaAnrAYEvpDrceILXW2', '51.5074,-0.1278', NULL, NULL, '2024-08-10 12:38:04', '2024-08-10 12:38:04'),
(48, 'Farmer 48', 'farmer48@example.com', NULL, NULL, '$2y$12$JrJokBAzVjL56l/Bw/brBOiuLTyqkahxNwB/M0foKgvGUKJqmaDl2', '39.7392,-104.9903', NULL, NULL, '2024-08-10 12:38:04', '2024-08-10 12:38:04'),
(49, 'Farmer 49', 'farmer49@example.com', NULL, NULL, '$2y$12$WyH7KGRkuRDbQTpvGaU1z.TVzlj5wxIr70.14lE.HFWeCBpl2OFEW', '20.5937,78.9629', NULL, NULL, '2024-08-10 12:38:05', '2024-08-10 12:38:05'),
(50, 'Farmer 50', 'farmer50@example.com', NULL, NULL, '$2y$12$6GNxBxCGD2bISdsYtsGFDua7vXlalZLkMD77/tK5WazH4ZZ2zEb0.', '43.6532,-79.3832', NULL, NULL, '2024-08-10 12:38:05', '2024-08-10 12:38:05'),
(51, 'Farmer 51', 'farmer51@example.com', NULL, NULL, '$2y$12$vlAXKCY3ycS.KHxhsT2zk.HZnXL3NMTPtSzIrUPulStVPh1UMzfTi', '52.5200,13.4050', NULL, NULL, '2024-08-10 12:38:06', '2024-08-10 12:38:06'),
(52, 'Farmer 52', 'farmer52@example.com', NULL, NULL, '$2y$12$XCdseC0sAs1kN1ubunv.DejN1HZ4VhPVJWmbVx1rlFuPf4c97kux6', '31.5497,74.3436', NULL, NULL, '2024-08-10 12:38:06', '2024-08-10 12:38:06'),
(53, 'Farmer 53', 'farmer53@example.com', NULL, NULL, '$2y$12$e4KKBcfMmP05QEpCuNvRTO5oVeub26FlgkrsWjoAUk2IwLbb6r3Xq', '40.7128,-74.0060', NULL, NULL, '2024-08-10 12:38:06', '2024-08-10 12:38:06'),
(54, 'Farmer 54', 'farmer54@example.com', NULL, NULL, '$2y$12$gHi15ii09J.FKNqf70eaAO1IoEMl3kwT.Qw2GsppbjNU92CtRuv3y', '35.6895,139.6917', NULL, NULL, '2024-08-10 12:38:07', '2024-08-10 12:38:07'),
(55, 'Farmer 55', 'farmer55@example.com', NULL, NULL, '$2y$12$Wu5KmUTlwggCy5N1ITRSUujSEqpZ2oN25OXz2JXJ45hKsgkaBACfe', '48.2082,16.3738', NULL, NULL, '2024-08-10 12:38:07', '2024-08-10 12:38:07'),
(56, 'Farmer 56', 'farmer56@example.com', NULL, NULL, '$2y$12$XuJbNx9OtNpcVIP82ww8EOoenx9wNXP2ZYWmXItOqgweBRxMM7F6i', '28.6139,77.2090', NULL, NULL, '2024-08-10 12:38:08', '2024-08-10 12:38:08'),
(57, 'Farmer 57', 'farmer57@example.com', NULL, NULL, '$2y$12$Zcr3hwfHj1xDurP5Ude7AujWonzv3efRgMKZ0cHI8GxRHXjpr19R6', '11.0168,76.9558', NULL, NULL, '2024-08-10 12:38:08', '2024-08-10 12:38:08'),
(58, 'Farmer 58', 'farmer58@example.com', NULL, NULL, '$2y$12$fXsAlK4mnLPg70OCbxAeuOj0HSXLR3u/t8MI6U571WGMgck0lnAAW', '11.0168,76.9558', NULL, NULL, '2024-08-10 12:38:09', '2024-08-10 12:38:09'),
(59, 'Farmer 59', 'farmer59@example.com', NULL, NULL, '$2y$12$wx6/Jf6R1wu0O2bHB2eOE.f/qq4xWbAgCJXaM6ER7rd3YCAf6/VbC', '40.7128,-74.0060', NULL, NULL, '2024-08-10 12:38:09', '2024-08-10 12:38:09'),
(60, 'Farmer 60', 'farmer60@example.com', NULL, NULL, '$2y$12$IdGeOb9zCWe3BwME3kh5BOR/2GjoWP.SjRPsKuPQ7svDJm6xrwX6K', '39.0997,-94.5786', NULL, NULL, '2024-08-10 12:38:09', '2024-08-10 12:38:09'),
(61, 'Farmer 61', 'farmer61@example.com', NULL, NULL, '$2y$12$aurq.uMQvqtIPdHpreoXdupUTtxlqSVZUhtO2yBSmTn5Kh2q/xIv.', '28.6139,77.2090', NULL, NULL, '2024-08-10 12:38:10', '2024-08-10 12:38:10'),
(62, 'Farmer 62', 'farmer62@example.com', NULL, NULL, '$2y$12$X0mQSlcDnxh.7/oxKnSMjOXI0zXA18AN2ltQKVqAl1mWKKNEwmwTi', '32.0668,76.2749', NULL, NULL, '2024-08-10 12:38:10', '2024-08-10 12:38:10'),
(63, 'Farmer 63', 'farmer63@example.com', NULL, NULL, '$2y$12$HiWmN2ZL/ih8N9Y4uYa65eR2tn3sSRj5YMnSltpSDlUwfK/vFH9UK', '37.7749,-122.4194', NULL, NULL, '2024-08-10 12:38:11', '2024-08-10 12:38:11'),
(64, 'Farmer 64', 'farmer64@example.com', NULL, NULL, '$2y$12$Mg4cv96Yyu02dEjXTNgJB.7fDdVnJZv4woo36VVBqPiFcN/y7Qka2', '41.8781,-87.6298', NULL, NULL, '2024-08-10 12:38:11', '2024-08-10 12:38:11'),
(65, 'Farmer 65', 'farmer65@example.com', NULL, NULL, '$2y$12$LxKHMXdIsDfhz66KQ/9zce71R7oQesEzTj7yUHE88vmbLAzEUeMOu', '28.6139,77.2090', NULL, NULL, '2024-08-10 12:38:11', '2024-08-10 12:38:11'),
(66, 'Farmer 66', 'farmer66@example.com', NULL, NULL, '$2y$12$D6j8e2qSV1QByZjtNITcpu9QXi2gHm/mq1gQP3uvC/NR0LdQZvS0q', '10.8505,76.2711', NULL, NULL, '2024-08-10 12:38:12', '2024-08-10 12:38:12'),
(67, 'Farmer 67', 'farmer67@example.com', NULL, NULL, '$2y$12$8wuSNYiw/EaV45i9aD9Uru86lLdfYZPlXbmIgKN9wYwKuVoV2w2DO', '35.6895,139.6917', NULL, NULL, '2024-08-10 12:38:12', '2024-08-10 12:38:12'),
(68, 'Farmer 68', 'farmer68@example.com', NULL, NULL, '$2y$12$K8Hn1q.ePQKlVU0gAMSFsONZPQdHz9fKYDBnZPM.IxvAeh61IXcLe', '17.3850,78.4867', NULL, NULL, '2024-08-10 12:38:13', '2024-08-10 12:38:13'),
(69, 'Farmer 69', 'farmer69@example.com', NULL, NULL, '$2y$12$Ny6LI7ZWJ5x7nBUIfQJVCeXhPeRw1BL1/orQkYMNWTUQO8IpY37uK', '52.5200,13.4050', NULL, NULL, '2024-08-10 12:38:13', '2024-08-10 12:38:13'),
(70, 'Farmer 70', 'farmer70@example.com', NULL, NULL, '$2y$12$qHDJpFa4hSYd5tQsSjs3yeEyjrIC0.ErsEdS6iCqc6OQkI7xKbrO.', '52.5200,13.4050', NULL, NULL, '2024-08-10 12:38:14', '2024-08-10 12:38:14'),
(71, 'Farmer 71', 'farmer71@example.com', NULL, NULL, '$2y$12$qDDmDK/hsyrUmg9G24I5ROeTsTgu5sqwetc9L5jhYfAFy04DNtYXG', '19.0760,72.8777', NULL, NULL, '2024-08-10 12:38:14', '2024-08-10 12:38:14'),
(72, 'Farmer 72', 'farmer72@example.com', NULL, NULL, '$2y$12$xMZV/c8E3goqUH0Nb80Q7OQw72FPrfN6JifvVYRJaRGPa13urjCHq', '37.7749,-122.4194', NULL, NULL, '2024-08-10 12:38:14', '2024-08-10 12:38:14'),
(73, 'Farmer 73', 'farmer73@example.com', NULL, NULL, '$2y$12$xJC49LLcLGf8v9DI1l0w5.VxwRCf.9XXfMmMODrMsZhIRgfg73Bha', '39.9042,116.4074', NULL, NULL, '2024-08-10 12:38:15', '2024-08-10 12:38:15'),
(74, 'Farmer 74', 'farmer74@example.com', NULL, NULL, '$2y$12$i1/GF9PcpZJI5YIsVzVfO..986NXFZk1VTXTm006Y5AwNDwM/a.1q', '26.9124,75.7873', NULL, NULL, '2024-08-10 12:38:15', '2024-08-10 12:38:15'),
(75, 'Farmer 75', 'farmer75@example.com', NULL, NULL, '$2y$12$9DMtBM5uZapP7CCpWr47ausEPvsr7fbf6afXY9Qoi1kCoOwPcVsWK', '40.7128,-74.0060', NULL, NULL, '2024-08-10 12:38:16', '2024-08-10 12:38:16'),
(76, 'Farmer 76', 'farmer76@example.com', NULL, NULL, '$2y$12$LKK4FDtPR3NNZvlfKJZf6ecZnQrAA1A.NjqCfCsRw3N9XD.0svTg2', '40.7128,-74.0060', NULL, NULL, '2024-08-10 12:38:16', '2024-08-10 12:38:16'),
(77, 'Farmer 77', 'farmer77@example.com', NULL, NULL, '$2y$12$iYDtj95tAcbQ8PeEqzn.YeI6FPMrSmC2o3bxxFogmikIsS.kw2Sme', '37.7749,-122.4194', NULL, NULL, '2024-08-10 12:38:17', '2024-08-10 12:38:17'),
(78, 'Farmer 78', 'farmer78@example.com', NULL, NULL, '$2y$12$o.Zkq8jEbSqV17u0XvPbmu6v.ADoM5PGUFFcM8ro64YpWUc/Po/o6', '17.3850,78.4867', NULL, NULL, '2024-08-10 12:38:17', '2024-08-10 12:38:17'),
(79, 'Farmer 79', 'farmer79@example.com', NULL, NULL, '$2y$12$hBRzyNiIQAN55VW0Lqnuge6fIu5fgDaB6F1pSjfvBrvvqIYaPhip6', '11.0168,76.9558', NULL, NULL, '2024-08-10 12:38:17', '2024-08-10 12:38:17'),
(80, 'Farmer 80', 'farmer80@example.com', NULL, NULL, '$2y$12$YtpU16ct3HqmRl18OOeh/OBa4iWNHSPoggKX.S1w8X351tmg0cflu', '21.1702,72.8311', NULL, NULL, '2024-08-10 12:38:18', '2024-08-10 12:38:18'),
(81, 'Farmer 81', 'farmer81@example.com', NULL, NULL, '$2y$12$RNn6C5cX0QrSLY/XJMKxV.kaQq.Ir3qJo8LqFRoFNTwpw5Jd9YOnK', '10.8505,76.2711', NULL, NULL, '2024-08-10 12:38:18', '2024-08-10 12:38:18'),
(82, 'Farmer 82', 'farmer82@example.com', NULL, NULL, '$2y$12$wcv9tiorNMXg8b2tzW2jNuieN6Ogcbf27i3pP8GRhygN99gYEaoUG', '34.0522,-118.2437', NULL, NULL, '2024-08-10 12:38:19', '2024-08-10 12:38:19'),
(83, 'Farmer 83', 'farmer83@example.com', NULL, NULL, '$2y$12$ruSOfEfHZmrbxgi8Ri7ZGuzc.4euyFuyGwdXgX9Zr1wvqv.1Rf5uq', '40.7306,-73.9352', NULL, NULL, '2024-08-10 12:38:19', '2024-08-10 12:38:19'),
(84, 'Farmer 84', 'farmer84@example.com', NULL, NULL, '$2y$12$XKUneSoXsmUkMmCbdXbqi.Tz32g3hFaq6Qds8rgezzQ0BqRFg2QI.', '30.7333,76.7794', NULL, NULL, '2024-08-10 12:38:19', '2024-08-10 12:38:19'),
(85, 'Farmer 85', 'farmer85@example.com', NULL, NULL, '$2y$12$gzYMNKynW6NUmIL/2gWmcOyEtGpOAZpl8dzHx5qdS6k/iR.gsNIe.', '39.9042,32.0626', NULL, NULL, '2024-08-10 12:38:20', '2024-08-10 12:38:20'),
(86, 'Farmer 86', 'farmer86@example.com', NULL, NULL, '$2y$12$nBPsl5s6AfoBh9tRA2YkreVQw0Wxn6wV5QzpcR/4VgkYoVaTrqlXy', '28.6139,77.2090', NULL, NULL, '2024-08-10 12:38:20', '2024-08-10 12:38:20'),
(87, 'Farmer 87', 'farmer87@example.com', NULL, NULL, '$2y$12$uycId4U6rJaFA/QBR/ZrPeWgkGmVgWNZ3/y4fCfEH6qD7Na7PEe2K', '29.0588,75.3186', NULL, NULL, '2024-08-10 12:38:21', '2024-08-10 12:38:21'),
(88, 'Farmer 88', 'farmer88@example.com', NULL, NULL, '$2y$12$oIdAHiACjmpPjiCzzK4eue4UndBjNp7tRjK1Ufw6.kl1bcvuThcVq', '40.7306,-73.9352', NULL, NULL, '2024-08-10 12:38:21', '2024-08-10 12:38:21'),
(89, 'Farmer 89', 'farmer89@example.com', NULL, NULL, '$2y$12$KbLYfukhJ/TNt6UhT1g8MeVjHxQrFWjcc2RsldsbvA1MgSt5QpCxi', '43.6532,-79.3832', NULL, NULL, '2024-08-10 12:38:22', '2024-08-10 12:38:22'),
(90, 'Farmer 90', 'farmer90@example.com', NULL, NULL, '$2y$12$O7otAqQKuAliPtIdhfgYieYlINtKtcr/bkcTxoOnBkvsIuHJGCPbO', '55.7558,37.6176', NULL, NULL, '2024-08-10 12:38:22', '2024-08-10 12:38:22'),
(91, 'Farmer 91', 'farmer91@example.com', NULL, NULL, '$2y$12$b4p9U7B.PIhR5zIXrhnzsuBR0RbGJU17jrys.pVwKVLSFV9omR99m', '55.7558,37.6176', NULL, NULL, '2024-08-10 12:38:22', '2024-08-10 12:38:22'),
(92, 'Farmer 92', 'farmer92@example.com', NULL, NULL, '$2y$12$EfnDOV2Q.AkaTBpNLjZg9ODZ8YRKSwNxLboKbL2WgcOgc7Tk/FJvy', '34.0522,-118.2437', NULL, NULL, '2024-08-10 12:38:23', '2024-08-10 12:38:23'),
(93, 'Farmer 93', 'farmer93@example.com', NULL, NULL, '$2y$12$W7DJ10Oyeg679QDjshJkj..Yj7l/AwF64HU.T/WQA.xY0WF17w1L.', '34.0522,-118.2437', NULL, NULL, '2024-08-10 12:38:23', '2024-08-10 12:38:23'),
(94, 'Farmer 94', 'farmer94@example.com', NULL, NULL, '$2y$12$SY0fai6l7MoqBltxUazXkObYR.j.nN2PkB75vb3vta8zO3Aekh.sa', '20.5937,78.9629', NULL, NULL, '2024-08-10 12:38:24', '2024-08-10 12:38:24'),
(95, 'Farmer 95', 'farmer95@example.com', NULL, NULL, '$2y$12$yNkUB9PgiDKOnvLYkEOvZuHSR6V5ncMEXN/K3bOqGY3X0HfD1hf6G', '31.5497,74.3436', NULL, NULL, '2024-08-10 12:38:24', '2024-08-10 12:38:24'),
(96, 'Farmer 96', 'farmer96@example.com', NULL, NULL, '$2y$12$ShtH5K101CPuZ9IfOGZkZ.9gS6zfy8z/23md4flWaIqk7hLOupPuq', '45.4215,-75.6972', NULL, NULL, '2024-08-10 12:38:25', '2024-08-10 12:38:25'),
(97, 'Farmer 97', 'farmer97@example.com', NULL, NULL, '$2y$12$wFEOqz7LViRPaD2NujwMMOC/lvQdxZ4p10le5jEwDJ0z6GbOtUodu', '33.8688,151.2093', NULL, NULL, '2024-08-10 12:38:25', '2024-08-10 12:38:25'),
(98, 'Farmer 98', 'farmer98@example.com', NULL, NULL, '$2y$12$EBWQKqIkSLfC52JcP2RFIO.k6hNMEpRbX68DYgPEsc4ZED.ZBY0Dm', '37.9838,23.7275', NULL, NULL, '2024-08-10 12:38:25', '2024-08-10 12:38:25'),
(99, 'Farmer 99', 'farmer99@example.com', NULL, NULL, '$2y$12$QzfOojuucA8DNAVWXEaQw.F3KAnX5vSJRM9Fwqm7pKULQ0y4QqTPW', '37.7749,-122.4194', NULL, NULL, '2024-08-10 12:38:26', '2024-08-10 12:38:26'),
(100, 'Farmer 100', 'farmer100@example.com', NULL, NULL, '$2y$12$JxHbwf.R2EJCwEiK0W95SuFhIOdcdcRaI0DNDFSX/dtpR8z829fhi', '40.7128,-74.0060', NULL, NULL, '2024-08-10 12:38:26', '2024-08-10 12:38:26'),
(101, 'Farmer 101', 'farmer101@example.com', NULL, NULL, '$2y$12$R4RcAw/q/UELkrset5k7lOJcTrNwom9yoilHSwg5jkjkXvWTLpKlm', '52.5200,13.4050', NULL, NULL, '2024-08-10 12:38:27', '2024-08-10 12:38:27'),
(102, 'Farmer 102', 'farmer102@example.com', NULL, NULL, '$2y$12$P0agZuT5clUFrBjlnEDE7OyNCfgrcO40nsN5JhLHqI0XN89boVkYC', '55.7558,37.6176', NULL, NULL, '2024-08-10 12:38:27', '2024-08-10 12:38:27'),
(103, 'Farmer 103', 'farmer103@example.com', NULL, NULL, '$2y$12$ZGrr0WCoONvnGHfO67P6R.nN4j/pj5dIwS7FQqOmzSRX1k6NIvUgK', '28.6139,77.2090', NULL, NULL, '2024-08-10 12:38:27', '2024-08-10 12:38:27'),
(104, 'Farmer 104', 'farmer104@example.com', NULL, NULL, '$2y$12$DGwgoFMfUn5k4M42MFAHvul5qAO0pigPGFXJscQOcM15nTkYBCkPK', '20.5937,78.9629', NULL, NULL, '2024-08-10 12:38:28', '2024-08-10 12:38:28'),
(105, 'Farmer 105', 'farmer105@example.com', NULL, NULL, '$2y$12$/kqwVVu4TuvRcp02mo2CzepA0QP6SEcel4djpEvDFJKg4yfDLdTDW', '19.0760,72.8777', NULL, NULL, '2024-08-10 12:38:28', '2024-08-10 12:38:28'),
(106, 'Farmer 106', 'farmer106@example.com', NULL, NULL, '$2y$12$kQgxygd.SGX.SV5yGPQpr.avIbeWBUGu3nGgpMT5MkMymIJey70m6', '43.6532,-79.3832', NULL, NULL, '2024-08-10 12:38:29', '2024-08-10 12:38:29'),
(107, 'Farmer 107', 'farmer107@example.com', NULL, NULL, '$2y$12$TD.vEold4UTz0eMmODfRCuoszVGyilSmnOFDlFbvPdU77oIulSb4i', '17.3850,78.4867', NULL, NULL, '2024-08-10 12:38:29', '2024-08-10 12:38:29'),
(108, 'Farmer 108', 'farmer108@example.com', NULL, NULL, '$2y$12$gOZz6UmFHxVrp2HAj4CVhuN9.1eW/l.0kBOg92wKPAOZgz7VUkYTy', '26.9124,75.7873', NULL, NULL, '2024-08-10 12:38:30', '2024-08-10 12:38:30'),
(109, 'Farmer 109', 'farmer109@example.com', NULL, NULL, '$2y$12$0q1QibdzigpZyY14OP5s/uN.43fq.kspRsRPgrFX/e6ONHNhRwZOa', '17.3850,78.4867', NULL, NULL, '2024-08-10 12:38:30', '2024-08-10 12:38:30'),
(110, 'Farmer 110', 'farmer110@example.com', NULL, NULL, '$2y$12$lbGRZsUnSH1beVY0LnPruOicpKe6a5ebiMnDwL/kpCY1JAAzIw9lK', '40.7306,-73.9352', NULL, NULL, '2024-08-10 12:38:30', '2024-08-10 12:38:30'),
(111, 'Farmer 111', 'farmer111@example.com', NULL, NULL, '$2y$12$yic.AFjyFk0t1kqAXmfuQuW2w8oVgA6YLBwNPnDfvzuELTc8cxsA6', '11.0168,76.9558', NULL, NULL, '2024-08-10 12:38:31', '2024-08-10 12:38:31'),
(112, 'Farmer 112', 'farmer112@example.com', NULL, NULL, '$2y$12$9WDB287B7bhQidHLo.Nzo.vTTv82Amy91TQCtksjfYEIG8XWZAJMK', '39.9042,32.0626', NULL, NULL, '2024-08-10 12:38:31', '2024-08-10 12:38:31'),
(113, 'Farmer 113', 'farmer113@example.com', NULL, NULL, '$2y$12$UXjTYnoS7ALiQDuEmPQ.POw5R6nJ1hwGGXteZCIN4LhpsofPgz32O', '17.3850,78.4867', NULL, NULL, '2024-08-10 12:38:32', '2024-08-10 12:38:32'),
(114, 'Farmer 114', 'farmer114@example.com', NULL, NULL, '$2y$12$krtNFmMb4IKxL9jq1aLvauCU4Ty8ar7AqCR0036iN6/uvQtebD.0m', '28.6139,77.2090', NULL, NULL, '2024-08-10 12:38:32', '2024-08-10 12:38:32'),
(115, 'Farmer 115', 'farmer115@example.com', NULL, NULL, '$2y$12$swcc6IAktgc3UNwSywEWyuro.iGfi05SWlplLDZvOLPOElkvv5N8.', '31.5497,74.3436', NULL, NULL, '2024-08-10 12:38:33', '2024-08-10 12:38:33'),
(116, 'Farmer 116', 'farmer116@example.com', NULL, NULL, '$2y$12$SLTMEe.Yg6KRAmvIaeMAyeLnxKCCJ8Hz8K8/J7l8goxf1w1VZoDrG', '48.2082,16.3738', NULL, NULL, '2024-08-10 12:38:33', '2024-08-10 12:38:33'),
(117, 'Farmer 117', 'farmer117@example.com', NULL, NULL, '$2y$12$SY1.E7a0qPYVb/SJdgo31u2vJaevKNzXLH5grrd/ZYYiJpxmOUAYS', '40.7128,-74.0060', NULL, NULL, '2024-08-10 12:38:33', '2024-08-10 12:38:33'),
(118, 'Farmer 118', 'farmer118@example.com', NULL, NULL, '$2y$12$7s6futE1XmSPjzNAOs5ZKeYsZCuRsB1gmXR88v7JTWsw91T377YfG', '34.0522,-118.2437', NULL, NULL, '2024-08-10 12:38:34', '2024-08-10 12:38:34'),
(119, 'Farmer 119', 'farmer119@example.com', NULL, NULL, '$2y$12$KSY23r9wIf7y21YUbjuMRO6q2tAQjffyKhpVgq6ChwPvrMtm/12tS', '48.2082,16.3738', NULL, NULL, '2024-08-10 12:38:34', '2024-08-10 12:38:34'),
(120, 'Farmer 120', 'farmer120@example.com', NULL, NULL, '$2y$12$gB7RVeJrZ.D/VMLYE6DCJe/dDKxkDMe3dbNIrGwOhqQBBrtiVOghS', '22.5726,88.3639', NULL, NULL, '2024-08-10 12:38:35', '2024-08-10 12:38:35'),
(121, 'Farmer 121', 'farmer121@example.com', NULL, NULL, '$2y$12$gxO4riZlU1kcV8.hE/MhYuvBtf8beRmLWk6zfpUFtk1HodOGO0Mrm', '26.9124,75.7873', NULL, NULL, '2024-08-10 12:38:35', '2024-08-10 12:38:35'),
(122, 'Farmer 122', 'farmer122@example.com', NULL, NULL, '$2y$12$OyzoNL.Gw1fyn4rUXxXxFOMPlS21lvPsrHt5xqL.RpFXEetgVY1ly', '20.5937,78.9629', NULL, NULL, '2024-08-10 12:38:35', '2024-08-10 12:38:35'),
(123, 'Farmer 123', 'farmer123@example.com', NULL, NULL, '$2y$12$EhgQWUYXU35Njj1bmjY/6OAAze61FHezsGa1BFDahqvV7UiUBUE/G', '19.0760,72.8777', NULL, NULL, '2024-08-10 12:38:36', '2024-08-10 12:38:36'),
(124, 'Farmer 124', 'farmer124@example.com', NULL, NULL, '$2y$12$wGcQARsuwYro3GqzbXh9fOrG6aBKk4saKc1soiFu3Eu.ndyXNkKhq', '40.7128,-74.0060', NULL, NULL, '2024-08-10 12:38:36', '2024-08-10 12:38:36'),
(125, 'Farmer 125', 'farmer125@example.com', NULL, NULL, '$2y$12$X9FecnULCXk5U.4hDqidCe3yRG5kJr1tC1fn30zET2kl5yraL78B.', '51.5074,-0.1278', NULL, NULL, '2024-08-10 12:38:37', '2024-08-10 12:38:37'),
(126, 'Farmer 126', 'farmer126@example.com', NULL, NULL, '$2y$12$CGxgvirbTAnLaMYXwfId2.qIHsc/Vx7uIau0E3X6TAQml/sQqeMfa', '19.0760,72.8777', NULL, NULL, '2024-08-10 12:38:37', '2024-08-10 12:38:37'),
(127, 'Farmer 127', 'farmer127@example.com', NULL, NULL, '$2y$12$sWiFTJie12MesOO86jzRV.SbBalQY7Ue4QGRa4BBTX0skZvctKM/a', '37.7749,-122.4194', NULL, NULL, '2024-08-10 12:38:38', '2024-08-10 12:38:38'),
(128, 'Farmer 128', 'farmer128@example.com', NULL, NULL, '$2y$12$cNBj4rPqWU/LU6PDqp3A4e4jnWR5LhCPttdMPVE3cg8dEsbkWo3Ci', '52.5200,13.4050', NULL, NULL, '2024-08-10 12:38:38', '2024-08-10 12:38:38'),
(129, 'Farmer 129', 'farmer129@example.com', NULL, NULL, '$2y$12$hIjgNVhEOibCl3EKbCdMPOLqMXZtsZPJFRD0sJJXWGVEMtTN4lVFe', '29.7604,-95.3698', NULL, NULL, '2024-08-10 12:38:38', '2024-08-10 12:38:38'),
(130, 'Farmer 130', 'farmer130@example.com', NULL, NULL, '$2y$12$MluUdNWTLhhz/ckbm3OASOc8q6mWpb0gyJHYKhZFhhbInicja9Szu', '26.9124,75.7873', NULL, NULL, '2024-08-10 12:38:39', '2024-08-10 12:38:39'),
(131, 'Farmer 131', 'farmer131@example.com', NULL, NULL, '$2y$12$ehVorwWfi6JWiYrRYKI9DO3rZfuC1aeNw1w76/S2Al6Hxio5EGE3y', '55.7558,37.6176', NULL, NULL, '2024-08-10 12:38:40', '2024-08-10 12:38:40'),
(132, 'Farmer 132', 'farmer132@example.com', NULL, NULL, '$2y$12$0CcUNjqgcm63LDks4lACnO4PtaIer3hRxqjiXifj4q9ogGVrKYz7C', '39.0997,-94.5786', NULL, NULL, '2024-08-10 12:38:40', '2024-08-10 12:38:40'),
(133, 'Farmer 133', 'farmer133@example.com', NULL, NULL, '$2y$12$gFFipv5xm50RsIulGcn9V.aQJ4HKU/s9r4aFpPVUcl5DeLMoTYKDi', '26.9124,75.7873', NULL, NULL, '2024-08-10 12:38:40', '2024-08-10 12:38:40'),
(134, 'Farmer 134', 'farmer134@example.com', NULL, NULL, '$2y$12$DbJe29zP4cCYuz9kAjYwleLy9uwZlUjf5x70jmyhcEH442BJGt/dO', '28.6139,77.2090', NULL, NULL, '2024-08-10 12:38:41', '2024-08-10 12:38:41'),
(135, 'Farmer 135', 'farmer135@example.com', NULL, NULL, '$2y$12$tbCKJKxqELfrcQ/cS0gLbOTMdhDnXSaTpVN4wawRfPAyftCkWXKae', '48.8566,2.3522', NULL, NULL, '2024-08-10 12:38:41', '2024-08-10 12:38:41'),
(136, 'Farmer 136', 'farmer136@example.com', NULL, NULL, '$2y$12$aR3.fr36wiizlgDPa6cRhOA.VuRX1hc1SqpgviAFWdVTRRJ7AiJp6', '39.7392,-104.9903', NULL, NULL, '2024-08-10 12:38:42', '2024-08-10 12:38:42'),
(137, 'Farmer 137', 'farmer137@example.com', NULL, NULL, '$2y$12$veNgSkhyoBs3G8o5lCdsvuq699cp/fdKNu9oHskJHoV534xWr7Yu2', '37.9838,23.7275', NULL, NULL, '2024-08-10 12:38:42', '2024-08-10 12:38:42'),
(138, 'Farmer 138', 'farmer138@example.com', NULL, NULL, '$2y$12$Wz.0MyxXT6tMw2JgEV838OJL9exb9tDYpDpKpXbR6HITSvW.7BnUm', '43.6532,-79.3832', NULL, NULL, '2024-08-10 12:38:43', '2024-08-10 12:38:43'),
(139, 'Farmer 139', 'farmer139@example.com', NULL, NULL, '$2y$12$IUVGIs9A89uHXLiaGhxynefSt5H3CPU.pjGdnZaqikIpatDsioV1W', '37.7749,-122.4194', NULL, NULL, '2024-08-10 12:38:43', '2024-08-10 12:38:43'),
(140, 'Farmer 140', 'farmer140@example.com', NULL, NULL, '$2y$12$tAk9pyzEkzfH23Kt87XBU.hjbeJzXAHeeugZzijSojDYs2ojp8YZu', '22.5726,88.3639', NULL, NULL, '2024-08-10 12:38:43', '2024-08-10 12:38:43'),
(141, 'Farmer 141', 'farmer141@example.com', NULL, NULL, '$2y$12$hXLYBIYVRhfZf7LXIP2fT.ecXZnjwNQT/Zvy49H8MhT0.V42GORUe', '39.0997,-94.5786', NULL, NULL, '2024-08-10 12:38:44', '2024-08-10 12:38:44'),
(142, 'Farmer 142', 'farmer142@example.com', NULL, NULL, '$2y$12$6h8KSHWDZctxLp5z0YqT8OurcITbCi3zxce.aWq2EBr8H/mo98bw.', '32.0668,76.2749', NULL, NULL, '2024-08-10 12:38:44', '2024-08-10 12:38:44'),
(143, 'Farmer 143', 'farmer143@example.com', NULL, NULL, '$2y$12$/ern1acdb5iPAlYa7OqPBe8dq4fJYRunqJrQrtZMnR47O/ZBmDgiK', '37.9838,23.7275', NULL, NULL, '2024-08-10 12:38:45', '2024-08-10 12:38:45'),
(144, 'Farmer 144', 'farmer144@example.com', NULL, NULL, '$2y$12$3JEyKzhrxzSPeF7XKbRDpO/msryPMAyL89naKtTuBVCIZFm57Dt9a', '12.9716,77.5946', NULL, NULL, '2024-08-10 12:38:45', '2024-08-10 12:38:45'),
(145, 'Farmer 145', 'farmer145@example.com', NULL, NULL, '$2y$12$ukvVT4FmfHK1sEOQO21uie3i0i1EmzKiW9L7nSfmdJoEPcR4Oekwe', '19.0760,72.8777', NULL, NULL, '2024-08-10 12:38:46', '2024-08-10 12:38:46'),
(146, 'Farmer 146', 'farmer146@example.com', NULL, NULL, '$2y$12$PfuBtrl.7x335y.9Wtp35.g9Udr5ighwtWuyJO.IiPgpkObAb4UtO', '55.7558,37.6176', NULL, NULL, '2024-08-10 12:38:46', '2024-08-10 12:38:46'),
(147, 'Farmer 147', 'farmer147@example.com', NULL, NULL, '$2y$12$tfH1J7w/L6ezIfYM6C79duIbpkW7MBYN7Y/T7mt8/UWWN8aCNG7uG', '12.9716,77.5946', NULL, NULL, '2024-08-10 12:38:47', '2024-08-10 12:38:47'),
(148, 'Farmer 148', 'farmer148@example.com', NULL, NULL, '$2y$12$jcpcjwep0BYnqcaeGhjRsO.xJhKWxI6K4V5kEn6IiblQh3OPkP8qm', '43.6532,-79.3832', NULL, NULL, '2024-08-10 12:38:48', '2024-08-10 12:38:48'),
(149, 'Farmer 149', 'farmer149@example.com', NULL, NULL, '$2y$12$o6M6yqHDPZrCtXRxDBrdxe2qxK2iq7dDrloql5typMsMx1bkGbgIG', '28.6139,77.2090', NULL, NULL, '2024-08-10 12:38:48', '2024-08-10 12:38:48'),
(150, 'Farmer 150', 'farmer150@example.com', NULL, NULL, '$2y$12$Ao/fqNs4vAf4FBLdQpDVTeGIgLWQrYjL.uy5A4NsSLKIqNFbF2IbW', '29.0588,75.3186', NULL, NULL, '2024-08-10 12:38:48', '2024-08-10 12:38:48'),
(151, 'Farmer 151', 'farmer151@example.com', NULL, NULL, '$2y$12$0xV70zNomfY43mQpzXSqrO2yEa8HVeossp3de6JFI84aWxBaqsTRO', '35.6895,139.6917', NULL, NULL, '2024-08-10 12:38:49', '2024-08-10 12:38:49'),
(152, 'Farmer 152', 'farmer152@example.com', NULL, NULL, '$2y$12$kX/8XIt0STmUWluwI8LmKO5Uv7I2o186LoDHo1d91QFSs9LfcZm7G', '31.5497,74.3436', NULL, NULL, '2024-08-10 12:38:49', '2024-08-10 12:38:49'),
(153, 'Farmer 153', 'farmer153@example.com', NULL, NULL, '$2y$12$W/esVAQ08nM6E9HO6j56QOLlzLPl4p53otifb/DZIWLqe79DkIS.e', '29.7604,-95.3698', NULL, NULL, '2024-08-10 12:38:50', '2024-08-10 12:38:50'),
(154, 'Farmer 154', 'farmer154@example.com', NULL, NULL, '$2y$12$V03YzxkS7EghtsUpM4N/TeMr4jpKwjLuv5DZ1F97JMVOjtYDDZpBK', '48.2082,16.3738', NULL, NULL, '2024-08-10 12:38:50', '2024-08-10 12:38:50'),
(155, 'Farmer 155', 'farmer155@example.com', NULL, NULL, '$2y$12$wMiAPr5bKhblGVVRiR15sudSNq7gJ1J/Yc8XQtrt7frmCzeTQB/hO', '22.5726,88.3639', NULL, NULL, '2024-08-10 12:38:51', '2024-08-10 12:38:51'),
(156, 'Farmer 156', 'farmer156@example.com', NULL, NULL, '$2y$12$Cq1dccsp8Siv/n3EpyjnKeJwSV3CY9VIkgCkVKuftip2DbRVxsVxK', '34.0522,-118.2437', NULL, NULL, '2024-08-10 12:38:51', '2024-08-10 12:38:51'),
(157, 'Farmer 157', 'farmer157@example.com', NULL, NULL, '$2y$12$liEd8iLMus.myr7wDFkSzOCUrrULdyKY6pMik4ss13vizkVMt/NTi', '23.8103,90.4125', NULL, NULL, '2024-08-10 12:38:52', '2024-08-10 12:38:52'),
(158, 'Farmer 158', 'farmer158@example.com', NULL, NULL, '$2y$12$grrc.ef1X73DOnOXjx1gh.fE/cdpEPq0vDRzgcK5YOf2Go9eXEko2', '33.8688,151.2093', NULL, NULL, '2024-08-10 12:38:52', '2024-08-10 12:38:52'),
(159, 'Farmer 159', 'farmer159@example.com', NULL, NULL, '$2y$12$woL62u79UQl.yQ9eDYz8xuRdWfKqvIdMIeU6nKQ9pxd.siiwKFhk.', '10.8505,76.2711', NULL, NULL, '2024-08-10 12:38:53', '2024-08-10 12:38:53'),
(160, 'Farmer 160', 'farmer160@example.com', NULL, NULL, '$2y$12$Ce3/WB5NtjupQE7PKgs4puWIppvrvftNtdvhYjVO5XZ/IZmozO9Ci', '35.6895,139.6917', NULL, NULL, '2024-08-10 12:38:53', '2024-08-10 12:38:53'),
(161, 'Farmer 161', 'farmer161@example.com', NULL, NULL, '$2y$12$ud7bDxBj0NO14PlbjzpYJegKyyBuGAcDy3WKNsHP8ee47J6NvoTKO', '17.3850,78.4867', NULL, NULL, '2024-08-10 12:38:54', '2024-08-10 12:38:54'),
(162, 'Farmer 162', 'farmer162@example.com', NULL, NULL, '$2y$12$A0ubcBYpR3cUo72SAqVkVumt/6/WdyGpX7azGkDVq45LguTEexSW.', '39.9042,32.0626', NULL, NULL, '2024-08-10 12:38:54', '2024-08-10 12:38:54'),
(163, 'Farmer 163', 'farmer163@example.com', NULL, NULL, '$2y$12$L3DuRoxpXF.R3Rji.GzYduiyL.2YUVsiMzjDlZ2JsfyiMCOVek8LO', '52.5200,13.4050', NULL, NULL, '2024-08-10 12:38:54', '2024-08-10 12:38:54'),
(164, 'Farmer 164', 'farmer164@example.com', NULL, NULL, '$2y$12$pdkhGaOy3XacPAUjO9FbNeJfrzAOM3tYhEnrSDnp.jbTZfjLIKqYS', '51.5074,-0.1278', NULL, NULL, '2024-08-10 12:38:55', '2024-08-10 12:38:55'),
(165, 'Farmer 165', 'farmer165@example.com', NULL, NULL, '$2y$12$qcTOBjMN64f6k6o1pmz6POgLYiyo9/dwfwQYTajXfkbAaX.NuLvKW', '10.8505,76.2711', NULL, NULL, '2024-08-10 12:38:55', '2024-08-10 12:38:55'),
(166, 'Farmer 166', 'farmer166@example.com', NULL, NULL, '$2y$12$ghfkdAsqrgFvMaXbIw6AguLEWoFZ9kjiyY5EiIqWlaJLtBU3SHgla', '39.9042,116.4074', NULL, NULL, '2024-08-10 12:38:56', '2024-08-10 12:38:56'),
(167, 'Farmer 167', 'farmer167@example.com', NULL, NULL, '$2y$12$2zSWnf.EpwqoHw4jfWla/ewiyg869gXfbJzpGUsgRKha5I0vocOyC', '48.8566,2.3522', NULL, NULL, '2024-08-10 12:38:56', '2024-08-10 12:38:56'),
(168, 'Farmer 168', 'farmer168@example.com', NULL, NULL, '$2y$12$.Y6JW0h33RupZedG8kcPD.XSLptkOo6tsw7iH4jo5Kq2rfiaLcMGO', '40.7128,-74.0060', NULL, NULL, '2024-08-10 12:38:57', '2024-08-10 12:38:57'),
(169, 'Farmer 169', 'farmer169@example.com', NULL, NULL, '$2y$12$VYR6f3/pWHzMa3Fb2fRCHeNCJNG9xo41NNCS/fju5aWL7UcgpyCkO', '12.9716,77.5946', NULL, NULL, '2024-08-10 12:38:57', '2024-08-10 12:38:57'),
(170, 'Farmer 170', 'farmer170@example.com', NULL, NULL, '$2y$12$Sh7iXxc6VfFRx.9s1/ao9uWFGequWIPjDQSJzalG7s0VOQbA3uGRG', '17.3850,78.4867', NULL, NULL, '2024-08-10 12:38:58', '2024-08-10 12:38:58'),
(171, 'Farmer 171', 'farmer171@example.com', NULL, NULL, '$2y$12$2MIAwN3cO09hONcc1nBp5e1825R.yXMSXoGegXP.K4/ndayiVR.xS', '30.7333,76.7794', NULL, NULL, '2024-08-10 12:38:58', '2024-08-10 12:38:58'),
(172, 'Farmer 172', 'farmer172@example.com', NULL, NULL, '$2y$12$g.kLkNXoNef3Ryt1pOcAx.BhyT1ncBbCYXSKqGSxmJYJzFc0IN.Ym', '48.8566,2.3522', NULL, NULL, '2024-08-10 12:38:59', '2024-08-10 12:38:59'),
(173, 'Farmer 173', 'farmer173@example.com', NULL, NULL, '$2y$12$HNaoRz/RW8ms3tB9US5s7.pIcpv/zu.7EUedeXlRArPW5Rng/X9Ay', '19.0760,72.8777', NULL, NULL, '2024-08-10 12:38:59', '2024-08-10 12:38:59'),
(174, 'Farmer 174', 'farmer174@example.com', NULL, NULL, '$2y$12$pFWU65rU2o4ribAyILn3PObEcaqmUjTLXAiOw17Sx7dIsYyWEj8WC', '13.0827,80.2707', NULL, NULL, '2024-08-10 12:39:00', '2024-08-10 12:39:00'),
(175, 'Farmer 175', 'farmer175@example.com', NULL, NULL, '$2y$12$GcTGaKsF446Kc0g2ivq/q.LNpUgw2Yv5NRHSRGD3FssY5S0Fxh4KS', '31.5497,74.3436', NULL, NULL, '2024-08-10 12:39:00', '2024-08-10 12:39:00'),
(176, 'Farmer 176', 'farmer176@example.com', NULL, NULL, '$2y$12$WJS6IUmAqGoY4JW2HXL1rezVPiUeQXtebWdcvtLRmSHf2rj0x5XUi', '39.9042,116.4074', NULL, NULL, '2024-08-10 12:39:01', '2024-08-10 12:39:01'),
(177, 'Farmer 177', 'farmer177@example.com', NULL, NULL, '$2y$12$H6pqh7jjq5UldZTthHyFmeRsVjhlO8xCfrWMBy5d2AvWmgtld0jx6', '41.8781,-87.6298', NULL, NULL, '2024-08-10 12:39:01', '2024-08-10 12:39:01'),
(178, 'Farmer 178', 'farmer178@example.com', NULL, NULL, '$2y$12$NVrtdmrp60YUZcohTiUup.bXXLxoJO8ZXE2oGSrgOz/HLrWhtBc2S', '17.3850,78.4867', NULL, NULL, '2024-08-10 12:39:01', '2024-08-10 12:39:01'),
(179, 'Farmer 179', 'farmer179@example.com', NULL, NULL, '$2y$12$Yh8a34sRG0rdiK7BYPN33OD6UNrCUen4mXuAq8kEFVFOsnmfhVJaG', '17.3850,78.4867', NULL, NULL, '2024-08-10 12:39:02', '2024-08-10 12:39:02'),
(180, 'Farmer 180', 'farmer180@example.com', NULL, NULL, '$2y$12$siAF.PwYEsZ1txcd2Rc2pOOKcZLz.Ybe0Xdqp/Pt21xyQX8kGk3bG', '39.7392,-104.9903', NULL, NULL, '2024-08-10 12:39:03', '2024-08-10 12:39:03'),
(181, 'Farmer 181', 'farmer181@example.com', NULL, NULL, '$2y$12$LwoES5QA4So1qSgOuFHTIeEfgv5QksR5pW/mYUxPDHbg0dv47U4k6', '40.7128,-74.0060', NULL, NULL, '2024-08-10 12:39:03', '2024-08-10 12:39:03'),
(182, 'Farmer 182', 'farmer182@example.com', NULL, NULL, '$2y$12$.lXW65PL48d1VvdUWZ9Bh.xgmwrZN4Zi3wPdNkp2G0pVb3V48.l4W', '43.6532,-79.3832', NULL, NULL, '2024-08-10 12:39:04', '2024-08-10 12:39:04'),
(183, 'Farmer 183', 'farmer183@example.com', NULL, NULL, '$2y$12$50dazG9L7HdyLzYnFiAjuuLlOLVBCgGWGdXWxGic2/zb76M7oPq9i', '32.0668,76.2749', NULL, NULL, '2024-08-10 12:39:04', '2024-08-10 12:39:04'),
(184, 'Farmer 184', 'farmer184@example.com', NULL, NULL, '$2y$12$hQpL2CbqrVuV9p5tvXNWueG46DzK5oe1GiDFc74l8nraJnxLmEkn6', '28.6139,77.2090', NULL, NULL, '2024-08-10 12:39:05', '2024-08-10 12:39:05'),
(185, 'Farmer 185', 'farmer185@example.com', NULL, NULL, '$2y$12$hGDQu.YEC4GJZcq8TcRZ1uK90TvGU84AjlpADz5guRczDicWnY0nW', '39.9042,116.4074', NULL, NULL, '2024-08-10 12:39:05', '2024-08-10 12:39:05'),
(186, 'Farmer 186', 'farmer186@example.com', NULL, NULL, '$2y$12$VMFn0YOZFQai/rFh4Tmb..69SkzhTzwa1PzJGy3Kx03lkXqfSfDqq', '28.6139,77.2090', NULL, NULL, '2024-08-10 12:39:05', '2024-08-10 12:39:05'),
(187, 'Farmer 187', 'farmer187@example.com', NULL, NULL, '$2y$12$3P1G/9KT45eHRu4ruNEz1..YswXHKPQIKqqMk3jQnDUa9/6ThdRoO', '45.4215,-75.6972', NULL, NULL, '2024-08-10 12:39:06', '2024-08-10 12:39:06'),
(188, 'Farmer 188', 'farmer188@example.com', NULL, NULL, '$2y$12$KbGq5qrGi4WGStjHKE27PeWVFeQRxHeSolZvvG2FVe0NPcaYIeu6q', '11.0168,76.9558', NULL, NULL, '2024-08-10 12:39:06', '2024-08-10 12:39:06'),
(189, 'Farmer 189', 'farmer189@example.com', NULL, NULL, '$2y$12$l2Rztd1URxmCPxAiL0xyv./3OYmOwy/Hh/Jyo.kJOD0j/uRG1dmrK', '48.2082,16.3738', NULL, NULL, '2024-08-10 12:39:07', '2024-08-10 12:39:07'),
(190, 'Farmer 190', 'farmer190@example.com', NULL, NULL, '$2y$12$KSb8WPAMKijlP9wt6G23XuBIEADKafBVaHYG5ojWj78/BXjN2MDqa', '39.7392,-104.9903', NULL, NULL, '2024-08-10 12:39:07', '2024-08-10 12:39:07'),
(191, 'Farmer 191', 'farmer191@example.com', NULL, NULL, '$2y$12$.LGPAxLVTVbG75MZKgquBujVZFZCCLjU2VG7E0E2HTaEKeGYGqDy6', '35.6895,139.6917', NULL, NULL, '2024-08-10 12:39:08', '2024-08-10 12:39:08'),
(192, 'Farmer 192', 'farmer192@example.com', NULL, NULL, '$2y$12$yMSWpg3FJgjb3JuG1JYxruI0fii8HefbRyFGnVc3ux979uIeBqOsi', '55.7558,37.6176', NULL, NULL, '2024-08-10 12:39:08', '2024-08-10 12:39:08'),
(193, 'Farmer 193', 'farmer193@example.com', NULL, NULL, '$2y$12$TOzG4d58tjK0t6mBiSysa.RR5f1yhgwvfo4EGtk4xCT55gGjSnsgS', '17.3850,78.4867', NULL, NULL, '2024-08-10 12:39:09', '2024-08-10 12:39:09'),
(194, 'Farmer 194', 'farmer194@example.com', NULL, NULL, '$2y$12$stfz2W5TMOwbhxuQ3E2t9O44QDBCBRy7DG5UNQXOp8ltO8aIxCZQ6', '21.1702,72.8311', NULL, NULL, '2024-08-10 12:39:09', '2024-08-10 12:39:09'),
(195, 'Farmer 195', 'farmer195@example.com', NULL, NULL, '$2y$12$F19IC4lgYhvl3U.7ZxryAe7xk1wKJdoMa0jO06nfnlLvKw/K/hFve', '43.6532,-79.3832', NULL, NULL, '2024-08-10 12:39:09', '2024-08-10 12:39:09'),
(196, 'Farmer 196', 'farmer196@example.com', NULL, NULL, '$2y$12$zlUwzIRUL3q6jQJnbzr6j.79pz02wz1TgvtGXDuA/Hy63.kjJKH3W', '39.9042,116.4074', NULL, NULL, '2024-08-10 12:39:10', '2024-08-10 12:39:10'),
(197, 'Farmer 197', 'farmer197@example.com', NULL, NULL, '$2y$12$q85Af6YdDs30QqnDxz7uKuVmqI878RKoB/taz506VS0mo.DxCQTwi', '39.7392,-104.9903', NULL, NULL, '2024-08-10 12:39:10', '2024-08-10 12:39:10'),
(198, 'Farmer 198', 'farmer198@example.com', NULL, NULL, '$2y$12$OBEU.m6qQcJXKkZR183TYOmb0T05lYAaWJIC/4eiiVWzGvpXh.n8C', '34.0522,-118.2437', NULL, NULL, '2024-08-10 12:39:11', '2024-08-10 12:39:11'),
(199, 'Farmer 199', 'farmer199@example.com', NULL, NULL, '$2y$12$Z1gKuGohahGCk0b13tAecO2NO1/FJFQhAP/DXNWU7A6XXv9eRskFi', '28.6139,77.2090', NULL, NULL, '2024-08-10 12:39:11', '2024-08-10 12:39:11'),
(200, 'Farmer 200', 'farmer200@example.com', NULL, NULL, '$2y$12$JRr01lS9U0QIsLQkpDCddeFQSay/RS/eS2h5BmXjDHYxtOND3BdEG', '39.9042,32.0626', NULL, NULL, '2024-08-10 12:39:12', '2024-08-10 12:39:12'),
(201, 'Kirtan Pithadiya', 'pithadiyakirtan08@gmail.com', 'google', NULL, '$2y$12$WhYeUQoX1QePkMS6UNnrGedzzSuRzwUlQOyJjVc.gvg7fNcl3Z5pa', NULL, '116017746038891781260', NULL, '2024-08-10 12:51:10', '2024-08-10 12:51:10');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cache`
--
ALTER TABLE `cache`
  ADD PRIMARY KEY (`key`);

--
-- Indexes for table `cache_locks`
--
ALTER TABLE `cache_locks`
  ADD PRIMARY KEY (`key`);

--
-- Indexes for table `crops`
--
ALTER TABLE `crops`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `forgot_passwords`
--
ALTER TABLE `forgot_passwords`
  ADD KEY `forgot_passwords_email_index` (`email`);

--
-- Indexes for table `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `jobs_queue_index` (`queue`);

--
-- Indexes for table `job_batches`
--
ALTER TABLE `job_batches`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `crops`
--
ALTER TABLE `crops`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=46;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=202;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
