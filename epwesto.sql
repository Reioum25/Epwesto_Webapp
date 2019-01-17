-- phpMyAdmin SQL Dump
-- version 4.8.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 20, 2018 at 07:53 AM
-- Server version: 10.1.33-MariaDB
-- PHP Version: 7.2.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `epwesto`
--

-- --------------------------------------------------------

--
-- Table structure for table `appointments`
--

CREATE TABLE `appointments` (
  `id` int(10) UNSIGNED NOT NULL,
  `space_id` int(11) NOT NULL,
  `owner_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `space_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `firstname` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lastname` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `message` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `schedule` date NOT NULL,
  `time` time NOT NULL,
  `accept` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE `comments` (
  `id` int(10) UNSIGNED NOT NULL,
  `space_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `firstname` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lastname` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `body` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `commercial_spaces`
--

CREATE TABLE `commercial_spaces` (
  `id` int(10) UNSIGNED NOT NULL,
  `owner_id` int(11) NOT NULL,
  `space_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `about_space` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `sqm` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `cr` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `barangay` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `street` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `latitude` double NOT NULL,
  `longitude` double NOT NULL,
  `about_area` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `owner_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mobile_no` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tel_no` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image1` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image2` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image3` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `commercial_spaces`
--

INSERT INTO `commercial_spaces` (`id`, `owner_id`, `space_name`, `about_space`, `sqm`, `cr`, `barangay`, `street`, `latitude`, `longitude`, `about_area`, `owner_name`, `email`, `mobile_no`, `tel_no`, `price`, `type`, `status`, `image1`, `image2`, `image3`, `created_at`, `updated_at`) VALUES
(1, 15, 'Prince Royal Business', 'adsfdghjhk', '500', '1', 'Tetuan', 'Don Alfaro St', 6.916053400000001, 122.09004119999997, 'asdfghj', 'Prince Loon', 'loon@gmail.com', '09050227027', '062-975-5035', '15000', 'monthly', 'Available', '1_1538694891_1544118870.jpg', 'noimage.jpg', 'noimage.jpg', '2018-12-06 09:54:30', '2018-12-06 09:54:30'),
(2, 15, 'Yubenco', 'adsfsgfhgfj', '300', '1', 'Tetuan', 'Don Alfaro St', 6.916064050769093, 122.09004119999997, 'sadfsgdhgfjhg', 'Prince loon', 'loon@gmail.com', '09050227027', '062-975-5035', '10000', 'monthly', 'Available', '3_1539199909_1544808928.jpg', 'noimage.jpg', 'noimage.jpg', '2018-12-14 09:35:28', '2018-12-14 09:35:28'),
(3, 15, 'Yubenco', 'adsfsgfhgfj', '300', '1', 'Tetuan', 'Don Alfaro St', 6.916064050769093, 122.09004119999997, 'sadfsgdhgfjhg', 'Prince loon', 'loon@gmail.com', '09050227027', '062-975-5035', '10000', 'monthly', 'Available', '3_1539199909_1544808928.jpg', 'noimage.jpg', 'noimage.jpg', '2018-12-14 09:35:28', '2018-12-14 09:35:28');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(59, '2014_10_12_000000_create_users_table', 1),
(60, '2014_10_12_100000_create_password_resets_table', 1),
(61, '2018_09_05_194334_create_posts_table', 1),
(62, '2018_09_11_164929_create_commercial_spaces_table', 1),
(63, '2018_09_26_114014_create_comments_table', 1),
(64, '2018_10_03_160327_create_appointments_table', 1),
(65, '2018_10_10_155254_create_notifications_table', 1),
(66, '2018_10_10_220705_create_rents_table', 1),
(67, '2018_10_14_040100_create_users_activations_table', 2);

-- --------------------------------------------------------

--
-- Table structure for table `notifications`
--

CREATE TABLE `notifications` (
  `id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `notifiable_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `notifiable_id` bigint(20) UNSIGNED NOT NULL,
  `data` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `read_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `rents`
--

CREATE TABLE `rents` (
  `id` int(10) UNSIGNED NOT NULL,
  `space_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `space_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `firstname` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lastname` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `rent_duration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `firstname` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lastname` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `admin` tinyint(1) NOT NULL DEFAULT '0',
  `is_activated` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `phone`, `password`, `remember_token`, `created_at`, `updated_at`, `admin`, `is_activated`) VALUES
(13, 'sharif', 'yasin', 'sharlynclein12@gmail.com', '09050227027', '$2y$10$NpN1dLY0qy7yRtci9FZaceNRVYeWVkKaFmB03EOCYBQxexRhAkJj2', 'uSDxIGeczcszwMFyayiFjJpC8CvKdfI1cgsBk6yefsDaUDRhdyZYYNI4bieg', '2018-10-14 14:52:22', '2018-10-14 14:52:52', 1, 1),
(15, 'Prince', 'Loon', 'loon@gmail.com', '09050227027', '$2y$10$FhdkvbIJlwCe5ugrTvVRaOtyNg3cqu66A55ybwmSJpi4I6uhHzwtC', '7lIpVzzorKo8Dzl2FKnRdtY0wkBF5B6SGtrRuKMDpRlEfzUuIUk2bXYEAPkS', '2018-10-14 14:58:03', '2018-10-14 14:58:03', 2, 1),
(18, 'Salimar', 'Tahil', 'valice143h3.VH@gmail.com', '09050227027', '$2y$10$VGtuEqTdtZLxzHj9loYrme44qURNSZ3ONP2r972CPZydG9pdl5CkG', 'HpcqDwjJ4S5Y6gJC26WrzEce6y69qaQk3sEMcSyOea3IgdzYJ2DNAeRMCgjm', '2018-10-14 20:10:20', '2018-10-14 20:13:30', 0, 1),
(19, 'Luffy', 'Monkey', 'king.strawhatluffy@gmail.com', '09050227027', '$2y$10$JGfX.fa2M6gW9nHxhJM5D.6nNaZIBmSRxNBGhN8hJfYo3tF3XNwC2', 'D9U5QbwNOfBVeomdVnuYhiXF5gXTtZF72zu9cfF0LaKlM1XgmCDhHlPkPiOR', '2018-12-16 08:38:17', '2018-12-16 08:38:41', 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `users_activations`
--

CREATE TABLE `users_activations` (
  `id` int(10) UNSIGNED NOT NULL,
  `id_user` int(10) UNSIGNED NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `create_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `appointments`
--
ALTER TABLE `appointments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `commercial_spaces`
--
ALTER TABLE `commercial_spaces`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `notifications`
--
ALTER TABLE `notifications`
  ADD PRIMARY KEY (`id`),
  ADD KEY `notifications_notifiable_type_notifiable_id_index` (`notifiable_type`,`notifiable_id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `rents`
--
ALTER TABLE `rents`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indexes for table `users_activations`
--
ALTER TABLE `users_activations`
  ADD PRIMARY KEY (`id`),
  ADD KEY `users_activations_id_user_foreign` (`id_user`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `appointments`
--
ALTER TABLE `appointments`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `commercial_spaces`
--
ALTER TABLE `commercial_spaces`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=68;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `rents`
--
ALTER TABLE `rents`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `users_activations`
--
ALTER TABLE `users_activations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `users_activations`
--
ALTER TABLE `users_activations`
  ADD CONSTRAINT `users_activations_id_user_foreign` FOREIGN KEY (`id_user`) REFERENCES `users` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
