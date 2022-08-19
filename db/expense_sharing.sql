-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 19, 2022 at 05:03 PM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `expense_sharing`
--

-- --------------------------------------------------------

--
-- Table structure for table `expense_table`
--

CREATE TABLE `expense_table` (
  `id` int(11) NOT NULL,
  `total_expense` float DEFAULT NULL,
  `payed_user` bigint(20) DEFAULT NULL,
  `message` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `expense_table`
--

INSERT INTO `expense_table` (`id`, `total_expense`, `payed_user`, `message`, `created_at`, `updated_at`) VALUES
(1, 1000, 4, 'Pay Electric city Bill', '2022-08-19 08:13:39', '2022-08-19 08:13:39'),
(2, 1000, 4, 'Pay Electric city Bill', '2022-08-19 08:13:54', '2022-08-19 08:13:54'),
(3, 1000, 4, 'Pay Electric city Bill', '2022-08-19 08:13:58', '2022-08-19 08:13:58'),
(4, 1000, 1, 'Pay Electric city Bill', '2022-08-19 08:14:13', '2022-08-19 08:14:13'),
(5, 1000, 1, 'Pay Electric city Bill', '2022-08-19 08:14:17', '2022-08-19 08:14:17'),
(6, 1000, 1, 'Pay Electric city Bill', '2022-08-19 08:14:20', '2022-08-19 08:14:20'),
(7, 1000, 1, 'Pay Electric city Bill', '2022-08-19 09:25:44', '2022-08-19 09:25:44'),
(8, 1000, 1, 'Pay Electric city Bill', '2022-08-19 09:32:12', '2022-08-19 09:32:12');

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
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `group`
--

CREATE TABLE `group` (
  `id` int(11) NOT NULL,
  `group_name` varchar(255) DEFAULT NULL,
  `user_id` text CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `group`
--

INSERT INTO `group` (`id`, `group_name`, `user_id`, `created_at`, `updated_at`) VALUES
(1, 'Testing', '[\"1\",\"2\",\"3\",\"4\"]', '2022-08-19 07:33:16', '2022-08-19 07:33:16');

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
(5, '2016_06_01_000001_create_oauth_auth_codes_table', 2),
(6, '2016_06_01_000002_create_oauth_access_tokens_table', 2),
(7, '2016_06_01_000003_create_oauth_refresh_tokens_table', 2),
(8, '2016_06_01_000004_create_oauth_clients_table', 2),
(9, '2016_06_01_000005_create_oauth_personal_access_clients_table', 2);

-- --------------------------------------------------------

--
-- Table structure for table `oauth_access_tokens`
--

CREATE TABLE `oauth_access_tokens` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `client_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `oauth_access_tokens`
--

INSERT INTO `oauth_access_tokens` (`id`, `user_id`, `client_id`, `name`, `scopes`, `revoked`, `created_at`, `updated_at`, `expires_at`) VALUES
('0077413a172cc89ff07b202df0a644dc1084b7bcb591b78ea539a8cd64d863ea62889e8daf18206f', NULL, 1, 'expense_sharing', '[]', 0, '2022-08-19 01:21:28', '2022-08-19 01:21:28', '2023-08-19 06:51:28'),
('0ba816bd68402a0da253a1d42c73082334a8b73e45d5249340350aabda3cc8c56cac18f1f5e310a5', NULL, 1, 'expense_sharing', '[]', 0, '2022-08-19 01:21:43', '2022-08-19 01:21:43', '2023-08-19 06:51:43'),
('259fe6a0d853f576210f103d842b4a956ba21ee33d9a5eff7a8a235657d946533d3108dde9a04b0d', 1, 1, 'expense_sharing', '[]', 0, '2022-08-19 03:24:26', '2022-08-19 03:24:26', '2023-08-19 08:54:26'),
('34448d53facfb3cd41fc4b4056752d67143afb52f3bc96ca1b8db4f46907af116f0e3cf87637df87', 4, 1, 'expense_sharing', '[]', 0, '2022-08-19 05:38:14', '2022-08-19 05:38:14', '2023-08-19 11:08:14'),
('3ed3d0669e16721d8c25647671bce3daf5f444dca8c85681cb5315e15b1ac65c770e95842657e869', 5, 1, 'expense_sharing', '[]', 0, '2022-08-19 05:38:25', '2022-08-19 05:38:25', '2023-08-19 11:08:25'),
('47cd951c6ef51df79801f4c39051b5236bfdbf72d4c3f7770e14063a39f214452ddd6c80b1d46781', 1, 1, 'expense_sharing', '[]', 0, '2022-08-19 01:53:06', '2022-08-19 01:53:06', '2023-08-19 07:23:06'),
('565a76cac38ed1a3d9d9189b6119ed3aaa64c5266cbc31bec0d701e6d9ae737e5d6a9d75f443823f', 1, 1, 'expense_sharing', '[]', 1, '2022-08-19 01:31:49', '2022-08-19 01:31:49', '2023-08-19 07:01:49'),
('8560b57c86409677cfbabad25d750e3912fc68898bef709b87a655c251ebfc3d2fa542a735d72536', 1, 1, 'expense_sharing', '[]', 1, '2022-08-19 01:34:26', '2022-08-19 01:34:26', '2023-08-19 07:04:26'),
('9700e2886a14b1588ddc1d0f47074a4376829453a004e10d37fa578a3f110542fac27d2feb6badcc', 1, 1, 'expense_sharing', '[]', 0, '2022-08-19 01:19:13', '2022-08-19 01:19:13', '2023-08-19 06:49:13'),
('d01a67321fa784cede40aabdafc92a73792ad5f3b5ce5734aa42094484f1314003a94ae1a5f20c53', 1, 1, 'expense_sharing', '[]', 1, '2022-08-19 01:35:07', '2022-08-19 01:35:07', '2023-08-19 07:05:07'),
('d3a3172f4d3740956999724dbd59a7a721886505e9c98fb311dbcf471b82bf03b81ca1ceed36796c', 3, 1, 'expense_sharing', '[]', 0, '2022-08-19 01:19:34', '2022-08-19 01:19:34', '2023-08-19 06:49:34'),
('e3a6746c6b01bcefec9d3b2d4b2a7bd75a5d3faa6d8ae5260b68b9e9802fcbfa0f0d312bbb5a9dfd', 1, 1, 'expense_sharing', '[]', 1, '2022-08-19 01:35:37', '2022-08-19 01:35:37', '2023-08-19 07:05:37'),
('fe21e5b8710f1ddaf10679d85af8483eafaac416b87ad626ce1838e9bf32da20ae090585cf2b9288', 1, 1, 'expense_sharing', '[]', 1, '2022-08-19 01:33:16', '2022-08-19 01:33:16', '2023-08-19 07:03:16');

-- --------------------------------------------------------

--
-- Table structure for table `oauth_auth_codes`
--

CREATE TABLE `oauth_auth_codes` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `client_id` bigint(20) UNSIGNED NOT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
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
(1, NULL, 'Laravel Personal Access Client', 'gFbplJXF8rkNwDMGtPsQbWPpVsCzgZFkLSliNLIy', NULL, 'http://localhost', 1, 0, 0, '2022-08-19 00:58:02', '2022-08-19 00:58:02'),
(2, NULL, 'Laravel Password Grant Client', 'LLS8lPt3swCOXNDoo03P2RJC8IBLPAOwpa8ksELi', 'users', 'http://localhost', 0, 1, 0, '2022-08-19 00:58:02', '2022-08-19 00:58:02');

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
(1, 1, '2022-08-19 00:58:02', '2022-08-19 00:58:02');

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
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `transaction_table`
--

CREATE TABLE `transaction_table` (
  `id` bigint(20) NOT NULL,
  `user_id` bigint(20) DEFAULT NULL,
  `expense` float DEFAULT NULL,
  `message` varchar(255) DEFAULT NULL,
  `credit_debit` varchar(255) DEFAULT NULL,
  `given_user_id` bigint(20) DEFAULT NULL,
  `group_id` bigint(20) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `transaction_table`
--

INSERT INTO `transaction_table` (`id`, `user_id`, `expense`, `message`, `credit_debit`, `given_user_id`, `group_id`, `created_at`, `updated_at`) VALUES
(1, 1, 250, 'test4 Pay Electric city Bill', 'debit', 4, 1, '2022-08-19 08:13:39', '2022-08-19 08:13:39'),
(2, 2, 250, 'test4 Pay Electric city Bill', 'debit', 4, 1, '2022-08-19 08:13:39', '2022-08-19 08:13:39'),
(3, 3, 250, 'test4 Pay Electric city Bill', 'debit', 4, 1, '2022-08-19 08:13:39', '2022-08-19 08:13:39'),
(4, 1, 400, 'test4 Pay Electric city Bill', 'debit', 4, 1, '2022-08-19 08:13:54', '2022-08-19 08:13:54'),
(5, 2, 300, 'test4 Pay Electric city Bill', 'debit', 4, 1, '2022-08-19 08:13:54', '2022-08-19 08:13:54'),
(6, 3, 100, 'test4 Pay Electric city Bill', 'debit', 4, 1, '2022-08-19 08:13:54', '2022-08-19 08:13:54'),
(7, 1, 400, 'test4 Pay Electric city Bill', 'debit', 4, 1, '2022-08-19 08:13:58', '2022-08-19 08:13:58'),
(8, 2, 300, 'test4 Pay Electric city Bill', 'debit', 4, 1, '2022-08-19 08:13:58', '2022-08-19 08:13:58'),
(9, 3, 100, 'test4 Pay Electric city Bill', 'debit', 4, 1, '2022-08-19 08:13:58', '2022-08-19 08:13:58'),
(10, 2, 250, 'test1 Pay Electric city Bill', 'debit', 1, 1, '2022-08-19 08:14:13', '2022-08-19 08:14:13'),
(11, 3, 250, 'test1 Pay Electric city Bill', 'debit', 1, 1, '2022-08-19 08:14:13', '2022-08-19 08:14:13'),
(12, 4, 250, 'test1 Pay Electric city Bill', 'debit', 1, 1, '2022-08-19 08:14:13', '2022-08-19 08:14:13'),
(13, 2, 300, 'test1 Pay Electric city Bill', 'debit', 1, 1, '2022-08-19 08:14:17', '2022-08-19 08:14:17'),
(14, 3, 100, 'test1 Pay Electric city Bill', 'debit', 1, 1, '2022-08-19 08:14:17', '2022-08-19 08:14:17'),
(15, 4, 200, 'test1 Pay Electric city Bill', 'debit', 1, 1, '2022-08-19 08:14:17', '2022-08-19 08:14:17'),
(16, 2, 300, 'test1 Pay Electric city Bill', 'debit', 1, 1, '2022-08-19 08:14:20', '2022-08-19 08:14:20'),
(17, 3, 100, 'test1 Pay Electric city Bill', 'debit', 1, 1, '2022-08-19 08:14:20', '2022-08-19 08:14:20'),
(18, 4, 200, 'test1 Pay Electric city Bill', 'debit', 1, 1, '2022-08-19 08:14:20', '2022-08-19 08:14:20'),
(19, 2, 250, 'test1 Pay Electric city Bill', 'debit', 1, 1, '2022-08-19 09:25:44', '2022-08-19 09:25:44'),
(20, 3, 250, 'test1 Pay Electric city Bill', 'debit', 1, 1, '2022-08-19 09:25:44', '2022-08-19 09:25:44'),
(21, 4, 250, 'test1 Pay Electric city Bill', 'debit', 1, 1, '2022-08-19 09:25:44', '2022-08-19 09:25:44'),
(22, 2, 250, 'test1 Pay Electric city Bill', 'debit', 1, 1, '2022-08-19 09:32:12', '2022-08-19 09:32:12'),
(23, 3, 250, 'test1 Pay Electric city Bill', 'debit', 1, 1, '2022-08-19 09:32:12', '2022-08-19 09:32:12'),
(24, 4, 250, 'test1 Pay Electric city Bill', 'debit', 1, 1, '2022-08-19 09:32:12', '2022-08-19 09:32:12');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mobile_number` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `mobile_number`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'test1', 'test1@gmail.com', NULL, '$2y$10$eGT7blUXk3S3q3WQBlpmxuLkSpxEION8lRWKm7nq./gYtSgqTglDy', '9512727308', NULL, '2022-08-19 01:19:13', '2022-08-19 01:19:13'),
(2, 'test2', 'test2@gmail.com', NULL, '$2y$10$axjq.3UDICCY3qc1cmX3iOBrsXsPKQBkFdNo7KYpX4c5ADKVGGIUi', '9512727308', NULL, '2022-08-19 01:19:34', '2022-08-19 01:19:34'),
(3, 'test3', 'test3@gmail.com', NULL, '$2y$10$D1WA7reV.jWvFwAQBn/fueDVmraU8U9sdfjxdpfLM46wCIZfOtcjG', '9512727308', NULL, '2022-08-19 05:38:14', '2022-08-19 05:38:14'),
(4, 'test4', 'test4@gmail.com', NULL, '$2y$10$FG4CsVACyptVkff//JVPG.ZD1fHN8UJJ2vh54rPfMqA4Rg7SRVnwK', '9512727308', NULL, '2022-08-19 05:38:25', '2022-08-19 05:38:25');

-- --------------------------------------------------------

--
-- Table structure for table `user_balance`
--

CREATE TABLE `user_balance` (
  `id` bigint(20) NOT NULL,
  `user_id` bigint(20) DEFAULT NULL,
  `total_balance` bigint(20) DEFAULT NULL,
  `given_user_id` bigint(20) DEFAULT NULL,
  `group_id` bigint(20) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user_balance`
--

INSERT INTO `user_balance` (`id`, `user_id`, `total_balance`, `given_user_id`, `group_id`, `created_at`, `updated_at`) VALUES
(1, 1, 250, 4, 1, '2022-08-19 08:13:39', '2022-08-19 08:13:39'),
(2, 2, 250, 4, 1, '2022-08-19 08:13:39', '2022-08-19 08:13:39'),
(3, 3, 250, 4, 1, '2022-08-19 08:13:39', '2022-08-19 08:13:39'),
(4, 1, 400, 4, 1, '2022-08-19 08:13:54', '2022-08-19 08:13:54'),
(5, 2, 300, 4, 1, '2022-08-19 08:13:54', '2022-08-19 08:13:54'),
(6, 3, 100, 4, 1, '2022-08-19 08:13:54', '2022-08-19 08:13:54'),
(7, 1, 400, 4, 1, '2022-08-19 08:13:58', '2022-08-19 08:13:58'),
(8, 2, 300, 4, 1, '2022-08-19 08:13:58', '2022-08-19 08:13:58'),
(9, 3, 100, 4, 1, '2022-08-19 08:13:58', '2022-08-19 08:13:58'),
(10, 2, 250, 1, 1, '2022-08-19 08:14:13', '2022-08-19 08:14:13'),
(11, 3, 250, 1, 1, '2022-08-19 08:14:13', '2022-08-19 08:14:13'),
(12, 4, 250, 1, 1, '2022-08-19 08:14:13', '2022-08-19 08:14:13'),
(13, 2, 300, 1, 1, '2022-08-19 08:14:17', '2022-08-19 08:14:17'),
(14, 3, 100, 1, 1, '2022-08-19 08:14:17', '2022-08-19 08:14:17'),
(15, 4, 200, 1, 1, '2022-08-19 08:14:17', '2022-08-19 08:14:17'),
(16, 2, 300, 1, 1, '2022-08-19 08:14:20', '2022-08-19 08:14:20'),
(17, 3, 100, 1, 1, '2022-08-19 08:14:20', '2022-08-19 08:14:20'),
(18, 4, 200, 1, 1, '2022-08-19 08:14:20', '2022-08-19 08:14:20'),
(19, 2, 250, 1, 1, '2022-08-19 09:25:44', '2022-08-19 09:25:44'),
(20, 3, 250, 1, 1, '2022-08-19 09:25:44', '2022-08-19 09:25:44'),
(21, 4, 250, 1, 1, '2022-08-19 09:25:44', '2022-08-19 09:25:44'),
(22, 2, 250, 1, 1, '2022-08-19 09:32:12', '2022-08-19 09:32:12'),
(23, 3, 250, 1, 1, '2022-08-19 09:32:12', '2022-08-19 09:32:12'),
(24, 4, 250, 1, 1, '2022-08-19 09:32:12', '2022-08-19 09:32:12');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `expense_table`
--
ALTER TABLE `expense_table`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `group`
--
ALTER TABLE `group`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
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
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `transaction_table`
--
ALTER TABLE `transaction_table`
  ADD PRIMARY KEY (`id`),
  ADD KEY `u_id` (`user_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indexes for table `user_balance`
--
ALTER TABLE `user_balance`
  ADD PRIMARY KEY (`id`),
  ADD KEY `u_id` (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `expense_table`
--
ALTER TABLE `expense_table`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `group`
--
ALTER TABLE `group`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `oauth_clients`
--
ALTER TABLE `oauth_clients`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `oauth_personal_access_clients`
--
ALTER TABLE `oauth_personal_access_clients`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `transaction_table`
--
ALTER TABLE `transaction_table`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `user_balance`
--
ALTER TABLE `user_balance`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
