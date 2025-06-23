-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 23, 2025 at 01:17 PM
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
-- Database: `loginprofil`
--

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
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `token` varchar(64) NOT NULL,
  `abilities` text DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Admin', 'admin@admin.com', NULL, '$2y$10$ovhdvZGw6QbaIuNL6pfuWuFCZb283NyG6iuKwP7eCHlwsekrj1Xp6', NULL, '2025-06-23 03:43:10', '2025-06-23 03:45:56'),
(2, 'Admin 1', 'admin1@admin.com', NULL, '$2y$10$7M6l3wEYIUAdVvbxOxLbse6sYoGQcadmvKIm8egHzW1zFF2M586D.', NULL, '2025-06-23 03:57:29', '2025-06-23 03:57:29'),
(3, 'User 1', 'user1@example.com', NULL, '$2y$10$53E0vsvbtmAmmmOmOgOQzeEIHT.8uMwAvkz43g2bm.TAkIv38JqKe', NULL, '2025-06-23 04:01:51', '2025-06-23 04:01:51'),
(4, 'User 2', 'user2@example.com', NULL, '$2y$10$GCZdxU9eUyQc/V.O97Wv5unNijkvEJqUBHmumXBZEc6OROvc60zr.', NULL, '2025-06-23 04:01:51', '2025-06-23 04:01:51'),
(5, 'User 3', 'user3@example.com', NULL, '$2y$10$vB1NaHxzJFchHmkz3W9L3eI4.xQjTg.TdRQ4By0nrCCCYLvONYX/O', NULL, '2025-06-23 04:01:52', '2025-06-23 04:01:52'),
(6, 'User 4', 'user4@example.com', NULL, '$2y$10$Oa8yQE4G71hFM1kQhBgUB.0vpYCo5rOAMtHHkTNR5MbrnI.6hcs9q', NULL, '2025-06-23 04:01:52', '2025-06-23 04:01:52'),
(7, 'User 5', 'user5@example.com', NULL, '$2y$10$lPwHXbUu8pSxTn5X27dy3e5W93omUsiwic2H2kgfzYB/q4l1ZcirO', NULL, '2025-06-23 04:01:52', '2025-06-23 04:01:52'),
(8, 'User 6', 'user6@example.com', NULL, '$2y$10$8kPlUtNBjvV1yh2dFffk4OuCgI5Q4WW4vuoaN6vAUoQJaTCqPH4MO', NULL, '2025-06-23 04:01:52', '2025-06-23 04:01:52'),
(9, 'User 7', 'user7@example.com', NULL, '$2y$10$Xl/uDcsJXuuNTtUt7SY2jeXOuB15oAMgWQGGNuTPAlLcNELjahtUy', NULL, '2025-06-23 04:01:52', '2025-06-23 04:01:52'),
(12, 'User 10', 'user10@example.com', NULL, '$2y$10$iQWG2LYOmKEg6wVNcDhE2e69i5lj58an5J.0NrB7pSHO7/KoXzAzS', NULL, '2025-06-23 04:01:52', '2025-06-23 04:01:52'),
(13, 'Dr. Adell Kris', 'earnest25@example.net', '2025-06-23 04:03:19', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'kxTcnOiBuk', '2025-06-23 04:03:19', '2025-06-23 04:03:19'),
(14, 'Isabelle Quitzon', 'astrid40@example.net', '2025-06-23 04:03:19', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '6Ff91lB5WZ', '2025-06-23 04:03:19', '2025-06-23 04:03:19'),
(15, 'Earlene Kiehn', 'moen.filiberto@example.org', '2025-06-23 04:03:19', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'xkdpDuPqyQ', '2025-06-23 04:03:19', '2025-06-23 04:03:19'),
(16, 'Hilda Upton', 'tony.stamm@example.com', '2025-06-23 04:03:19', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'cETbXEvCOo', '2025-06-23 04:03:19', '2025-06-23 04:03:19'),
(17, 'Beaulah Schaden', 'walter.krista@example.net', '2025-06-23 04:03:19', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'B2gRvQ6Ton', '2025-06-23 04:03:19', '2025-06-23 04:03:19'),
(18, 'Max McDermott', 'kris.fadel@example.org', '2025-06-23 04:03:19', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'Yf1rgFvLrp', '2025-06-23 04:03:19', '2025-06-23 04:03:19'),
(19, 'Mrs. Adele Williamson', 'audrey.hartmann@example.org', '2025-06-23 04:03:19', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'DeBytVqVH1', '2025-06-23 04:03:19', '2025-06-23 04:03:19'),
(20, 'Catalina Zboncak', 'scot.graham@example.org', '2025-06-23 04:03:19', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'wLss76ErZw', '2025-06-23 04:03:19', '2025-06-23 04:03:19'),
(21, 'Mrs. Annalise Fahey', 'tbeier@example.net', '2025-06-23 04:03:19', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'A2aapPY2sX', '2025-06-23 04:03:19', '2025-06-23 04:03:19'),
(22, 'Aniyah Bradtke', 'osinski.zachariah@example.org', '2025-06-23 04:03:19', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'vEQDQxeo2q', '2025-06-23 04:03:19', '2025-06-23 04:03:19');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

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
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
