-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 07, 2023 at 09:20 AM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `databasenotification`
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
(2, '2014_10_12_100000_create_password_reset_tokens_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2023_05_12_052613_create_notification_table', 2),
(6, '2023_05_12_055124_create_notifications_table', 3);

-- --------------------------------------------------------

--
-- Table structure for table `notifications`
--

CREATE TABLE `notifications` (
  `id` char(36) NOT NULL,
  `type` varchar(255) NOT NULL,
  `notifiable_type` varchar(255) NOT NULL,
  `notifiable_id` bigint(20) UNSIGNED NOT NULL,
  `data` text NOT NULL,
  `read_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `notifications`
--

INSERT INTO `notifications` (`id`, `type`, `notifiable_type`, `notifiable_id`, `data`, `read_at`, `created_at`, `updated_at`) VALUES
('04591422-cc51-4b54-9157-aca6cfa358b3', 'App\\Notifications\\UserNotification', 'App\\Models\\User', 1, '{\"user_id\":1,\"name\":\"Edgardo Purdy\",\"email\":\"omcdermott@example.net\"}', NULL, '2023-05-12 00:30:22', '2023-05-12 00:30:22'),
('0c77975a-c94a-4c6c-b64d-4262812208e5', 'App\\Notifications\\UserNotification', 'App\\Models\\User', 1, '{\"user_id\":1,\"name\":\"Edgardo Purdy\",\"email\":\"omcdermott@example.net\"}', NULL, '2023-05-12 00:30:49', '2023-05-12 00:30:49'),
('45427988-490a-469b-bd96-19589c1dd6e1', 'App\\Notifications\\UserNotification', 'App\\Models\\User', 1, '{\"user_id\":1,\"name\":\"Edgardo Purdy\",\"email\":\"omcdermott@example.net\"}', NULL, '2023-05-12 00:30:46', '2023-05-12 00:30:46'),
('7427939e-6ab5-492e-8099-d401d371b9ba', 'App\\Notifications\\UserNotification', 'App\\Models\\User', 1, '{\"user_id\":1,\"name\":\"Edgardo Purdy\",\"email\":\"omcdermott@example.net\"}', NULL, '2023-05-12 00:48:01', '2023-05-12 00:48:01'),
('93d11c39-5528-4949-850f-428c9b464f9e', 'App\\Notifications\\UserNotification', 'App\\Models\\User', 1, '{\"user_id\":1,\"name\":\"Edgardo Purdy\",\"email\":\"omcdermott@example.net\"}', NULL, '2023-05-12 01:04:27', '2023-05-12 01:04:27'),
('acc15995-1953-4f22-84dd-c612d5594820', 'App\\Notifications\\UserNotification', 'App\\Models\\User', 1, '{\"user_id\":1,\"name\":\"Edgardo Purdy\",\"email\":\"omcdermott@example.net\"}', NULL, '2023-05-12 01:04:25', '2023-05-12 01:04:25'),
('e3eabf8c-0327-4667-9b1e-84e0ce539e05', 'App\\Notifications\\UserNotification', 'App\\Models\\User', 1, '{\"user_id\":1,\"name\":\"Edgardo Purdy\",\"email\":\"omcdermott@example.net\"}', NULL, '2023-05-12 00:48:21', '2023-05-12 00:48:21'),
('ea49838e-3617-4427-a096-19d8776794e5', 'App\\Notifications\\UserNotification', 'App\\Models\\User', 1, '{\"user_id\":1,\"name\":\"Edgardo Purdy\",\"email\":\"omcdermott@example.net\"}', NULL, '2023-05-12 00:29:34', '2023-05-12 00:29:34');

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
(1, 'Edgardo Purdy', 'omcdermott@example.net', '2023-05-11 23:51:11', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'IhEhBwK56Q', '2023-05-11 23:51:11', '2023-05-11 23:51:11'),
(2, 'Imani Bosco DVM', 'shad34@example.net', '2023-05-11 23:51:11', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'RJ9iXupCHm', '2023-05-11 23:51:11', '2023-05-11 23:51:11'),
(3, 'Josephine Mayer', 'chintz@example.com', '2023-05-11 23:51:11', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'Qk8lViScB7', '2023-05-11 23:51:11', '2023-05-11 23:51:11'),
(4, 'Rico Okuneva', 'skylar31@example.com', '2023-05-11 23:51:11', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'Vb6bOMLNSH', '2023-05-11 23:51:11', '2023-05-11 23:51:11'),
(5, 'Michelle Fritsch', 'jade33@example.com', '2023-05-11 23:51:11', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'MBlTmdtnje', '2023-05-11 23:51:11', '2023-05-11 23:51:11'),
(6, 'Clay Dietrich', 'matilde39@example.com', '2023-05-11 23:51:11', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '8js9hMxkQr', '2023-05-11 23:51:12', '2023-05-11 23:51:12'),
(7, 'Mr. Angelo Braun DDS', 'kling.lela@example.com', '2023-05-11 23:51:11', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '2hV5sk2qxc', '2023-05-11 23:51:12', '2023-05-11 23:51:12'),
(8, 'Casimer Armstrong', 'grady.mortimer@example.org', '2023-05-11 23:51:11', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'RJZKmkUg1w', '2023-05-11 23:51:12', '2023-05-11 23:51:12'),
(9, 'Mrs. Anika Braun MD', 'pollich.audie@example.org', '2023-05-11 23:51:11', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'PgX2a2V2Dp', '2023-05-11 23:51:12', '2023-05-11 23:51:12'),
(10, 'Monserrat Lueilwitz', 'crist.clinton@example.org', '2023-05-11 23:51:11', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'BUKefsZmdk', '2023-05-11 23:51:12', '2023-05-11 23:51:12'),
(11, 'Test User', 'test@example.com', '2023-05-11 23:51:12', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'raf8JYToFc', '2023-05-11 23:51:12', '2023-05-11 23:51:12');

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
-- Indexes for table `notifications`
--
ALTER TABLE `notifications`
  ADD PRIMARY KEY (`id`),
  ADD KEY `notifications_notifiable_type_notifiable_id_index` (`notifiable_type`,`notifiable_id`);

--
-- Indexes for table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
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
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
