-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Apr 15, 2023 at 05:25 AM
-- Server version: 5.7.33
-- PHP Version: 8.1.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `batteries`
--

-- --------------------------------------------------------

--
-- Table structure for table `activity_log`
--

CREATE TABLE `activity_log` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `log_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `subject_type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `event` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `subject_id` bigint(20) UNSIGNED DEFAULT NULL,
  `causer_type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `causer_id` bigint(20) UNSIGNED DEFAULT NULL,
  `properties` json DEFAULT NULL,
  `batch_uuid` char(36) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `activity_log`
--

INSERT INTO `activity_log` (`id`, `log_name`, `description`, `subject_type`, `event`, `subject_id`, `causer_type`, `causer_id`, `properties`, `batch_uuid`, `created_at`, `updated_at`) VALUES
(1, 'authentication', 'Logged-in', 'App\\Models\\User', NULL, 1, NULL, NULL, '[]', NULL, '2023-04-10 06:23:54', '2023-04-10 06:23:54'),
(2, 'authentication', 'Logged-out', 'App\\Models\\User', NULL, 1, 'App\\Models\\User', 1, '[]', NULL, '2023-04-10 06:23:59', '2023-04-10 06:23:59'),
(3, 'authentication', 'Logged-in', 'App\\Models\\User', NULL, 1, NULL, NULL, '[]', NULL, '2023-04-10 14:33:24', '2023-04-10 14:33:24'),
(4, 'User', 'updated', 'App\\Models\\User', 'updated', 1, 'App\\Models\\User', 1, '{\"old\": {\"id\": 1, \"email\": \"admin@admin.com\", \"phone\": \"+923339471086\", \"status\": \"Active\", \"role_id\": 1, \"password\": \"$2y$10$HjiSMML5pVPx7zcQC.HQXuPRB3YVdcqbzVTeGaUUIiKpGBXiWUwG.\", \"verified\": 1, \"last_name\": \"Admin\", \"created_at\": \"2023-04-07 12:01:53\", \"deleted_at\": null, \"first_name\": \"Super\", \"updated_at\": \"2023-04-07 12:01:53\", \"remember_token\": null, \"two_factor_secret\": null, \"two_factor_recovery_codes\": null}, \"attributes\": {\"id\": 1, \"email\": \"admin@admin.com\", \"phone\": \"+923339471086\", \"status\": \"Active\", \"role_id\": 1, \"password\": \"$2y$10$HjiSMML5pVPx7zcQC.HQXuPRB3YVdcqbzVTeGaUUIiKpGBXiWUwG.\", \"verified\": 1, \"last_name\": \"Admin\", \"created_at\": \"2023-04-07 12:01:53\", \"deleted_at\": null, \"first_name\": \"Super\", \"updated_at\": \"2023-04-07 12:01:53\", \"remember_token\": \"BXX9DRHaT1UCgvvdSZdtwa00Y25eB0g5b8zijlIF6G5u54NgeKo9aJzUF3Ex\", \"two_factor_secret\": null, \"two_factor_recovery_codes\": null}}', NULL, '2023-04-10 15:20:41', '2023-04-10 15:20:41'),
(5, 'authentication', 'Logged-in', 'App\\Models\\User', NULL, 1, NULL, NULL, '[]', NULL, '2023-04-10 15:20:41', '2023-04-10 15:20:41'),
(6, 'authentication', 'Logged-in', 'App\\Models\\User', NULL, 1, NULL, NULL, '[]', NULL, '2023-04-10 22:04:14', '2023-04-10 22:04:14'),
(7, 'authentication', 'Logged-in', 'App\\Models\\User', NULL, 1, NULL, NULL, '[]', NULL, '2023-04-10 22:04:14', '2023-04-10 22:04:14'),
(8, 'authentication', 'Logged-in', 'App\\Models\\User', NULL, 1, NULL, NULL, '[]', NULL, '2023-04-10 22:12:52', '2023-04-10 22:12:52'),
(9, 'authentication', 'Logged-in', 'App\\Models\\User', NULL, 1, NULL, NULL, '[]', NULL, '2023-04-11 01:02:51', '2023-04-11 01:02:51'),
(10, 'authentication', 'Logged-in', 'App\\Models\\User', NULL, 1, NULL, NULL, '[]', NULL, '2023-04-11 05:48:26', '2023-04-11 05:48:26'),
(11, 'Battery', 'created', 'App\\Models\\Battery', 'created', 137, 'App\\Models\\User', 1, '{\"attributes\": {\"id\": 137, \"name\": \"831\", \"created_at\": \"2023-04-11 07:52:29\", \"deleted_at\": null, \"updated_at\": \"2023-04-11 07:52:29\"}}', NULL, '2023-04-11 05:52:30', '2023-04-11 05:52:30'),
(12, 'Battery', 'created', 'App\\Models\\Battery', 'created', 138, 'App\\Models\\User', 1, '{\"attributes\": {\"id\": 138, \"name\": \"808\", \"created_at\": \"2023-04-11 07:53:03\", \"deleted_at\": null, \"updated_at\": \"2023-04-11 07:53:03\"}}', NULL, '2023-04-11 05:53:03', '2023-04-11 05:53:03'),
(13, 'Battery', 'created', 'App\\Models\\Battery', 'created', 139, 'App\\Models\\User', 1, '{\"attributes\": {\"id\": 139, \"name\": \"569\", \"created_at\": \"2023-04-11 07:53:32\", \"deleted_at\": null, \"updated_at\": \"2023-04-11 07:53:32\"}}', NULL, '2023-04-11 05:53:32', '2023-04-11 05:53:32'),
(14, 'authentication', 'Logged-in', 'App\\Models\\User', NULL, 1, NULL, NULL, '[]', NULL, '2023-04-11 21:35:12', '2023-04-11 21:35:12'),
(15, 'authentication', 'Logged-in', 'App\\Models\\User', NULL, 1, NULL, NULL, '[]', NULL, '2023-04-11 21:36:15', '2023-04-11 21:36:15'),
(16, 'Battery', 'created', 'App\\Models\\Battery', 'created', 140, 'App\\Models\\User', 1, '{\"attributes\": {\"id\": 140, \"name\": \"784\", \"created_at\": \"2023-04-11 23:38:03\", \"deleted_at\": null, \"updated_at\": \"2023-04-11 23:38:03\"}}', NULL, '2023-04-11 21:38:03', '2023-04-11 21:38:03'),
(17, 'Battery', 'created', 'App\\Models\\Battery', 'created', 141, 'App\\Models\\User', 1, '{\"attributes\": {\"id\": 141, \"name\": \"718\", \"created_at\": \"2023-04-11 23:39:52\", \"deleted_at\": null, \"updated_at\": \"2023-04-11 23:39:52\"}}', NULL, '2023-04-11 21:39:52', '2023-04-11 21:39:52'),
(18, 'Battery', 'created', 'App\\Models\\Battery', 'created', 142, 'App\\Models\\User', 1, '{\"attributes\": {\"id\": 142, \"name\": \"720\", \"created_at\": \"2023-04-11 23:39:58\", \"deleted_at\": null, \"updated_at\": \"2023-04-11 23:39:58\"}}', NULL, '2023-04-11 21:39:58', '2023-04-11 21:39:58'),
(19, 'Battery', 'created', 'App\\Models\\Battery', 'created', 143, 'App\\Models\\User', 1, '{\"attributes\": {\"id\": 143, \"name\": \"722\", \"created_at\": \"2023-04-11 23:40:06\", \"deleted_at\": null, \"updated_at\": \"2023-04-11 23:40:06\"}}', NULL, '2023-04-11 21:40:06', '2023-04-11 21:40:06'),
(20, 'Battery', 'created', 'App\\Models\\Battery', 'created', 144, 'App\\Models\\User', 1, '{\"attributes\": {\"id\": 144, \"name\": \"723\", \"created_at\": \"2023-04-11 23:40:09\", \"deleted_at\": null, \"updated_at\": \"2023-04-11 23:40:09\"}}', NULL, '2023-04-11 21:40:09', '2023-04-11 21:40:09'),
(21, 'Battery', 'created', 'App\\Models\\Battery', 'created', 145, 'App\\Models\\User', 1, '{\"attributes\": {\"id\": 145, \"name\": \"724\", \"created_at\": \"2023-04-11 23:40:15\", \"deleted_at\": null, \"updated_at\": \"2023-04-11 23:40:15\"}}', NULL, '2023-04-11 21:40:15', '2023-04-11 21:40:15'),
(22, 'Battery', 'created', 'App\\Models\\Battery', 'created', 146, 'App\\Models\\User', 1, '{\"attributes\": {\"id\": 146, \"name\": \"725\", \"created_at\": \"2023-04-11 23:40:19\", \"deleted_at\": null, \"updated_at\": \"2023-04-11 23:40:19\"}}', NULL, '2023-04-11 21:40:19', '2023-04-11 21:40:19'),
(23, 'Battery', 'created', 'App\\Models\\Battery', 'created', 147, 'App\\Models\\User', 1, '{\"attributes\": {\"id\": 147, \"name\": \"727\", \"created_at\": \"2023-04-11 23:40:25\", \"deleted_at\": null, \"updated_at\": \"2023-04-11 23:40:25\"}}', NULL, '2023-04-11 21:40:25', '2023-04-11 21:40:25'),
(24, 'Battery', 'created', 'App\\Models\\Battery', 'created', 148, 'App\\Models\\User', 1, '{\"attributes\": {\"id\": 148, \"name\": \"728\", \"created_at\": \"2023-04-11 23:40:28\", \"deleted_at\": null, \"updated_at\": \"2023-04-11 23:40:28\"}}', NULL, '2023-04-11 21:40:28', '2023-04-11 21:40:28'),
(25, 'Battery', 'created', 'App\\Models\\Battery', 'created', 149, 'App\\Models\\User', 1, '{\"attributes\": {\"id\": 149, \"name\": \"729\", \"created_at\": \"2023-04-11 23:40:36\", \"deleted_at\": null, \"updated_at\": \"2023-04-11 23:40:36\"}}', NULL, '2023-04-11 21:40:36', '2023-04-11 21:40:36'),
(26, 'Battery', 'created', 'App\\Models\\Battery', 'created', 150, 'App\\Models\\User', 1, '{\"attributes\": {\"id\": 150, \"name\": \"731\", \"created_at\": \"2023-04-11 23:40:39\", \"deleted_at\": null, \"updated_at\": \"2023-04-11 23:40:39\"}}', NULL, '2023-04-11 21:40:39', '2023-04-11 21:40:39'),
(27, 'Battery', 'created', 'App\\Models\\Battery', 'created', 151, 'App\\Models\\User', 1, '{\"attributes\": {\"id\": 151, \"name\": \"732\", \"created_at\": \"2023-04-11 23:40:45\", \"deleted_at\": null, \"updated_at\": \"2023-04-11 23:40:45\"}}', NULL, '2023-04-11 21:40:45', '2023-04-11 21:40:45'),
(28, 'Battery', 'created', 'App\\Models\\Battery', 'created', 152, 'App\\Models\\User', 1, '{\"attributes\": {\"id\": 152, \"name\": \"733\", \"created_at\": \"2023-04-11 23:40:49\", \"deleted_at\": null, \"updated_at\": \"2023-04-11 23:40:49\"}}', NULL, '2023-04-11 21:40:49', '2023-04-11 21:40:49'),
(29, 'Battery', 'created', 'App\\Models\\Battery', 'created', 153, 'App\\Models\\User', 1, '{\"attributes\": {\"id\": 153, \"name\": \"734\", \"created_at\": \"2023-04-11 23:40:56\", \"deleted_at\": null, \"updated_at\": \"2023-04-11 23:40:56\"}}', NULL, '2023-04-11 21:40:56', '2023-04-11 21:40:56'),
(30, 'Battery', 'created', 'App\\Models\\Battery', 'created', 154, 'App\\Models\\User', 1, '{\"attributes\": {\"id\": 154, \"name\": \"735\", \"created_at\": \"2023-04-11 23:40:59\", \"deleted_at\": null, \"updated_at\": \"2023-04-11 23:40:59\"}}', NULL, '2023-04-11 21:40:59', '2023-04-11 21:40:59'),
(31, 'Battery', 'created', 'App\\Models\\Battery', 'created', 155, 'App\\Models\\User', 1, '{\"attributes\": {\"id\": 155, \"name\": \"736\", \"created_at\": \"2023-04-11 23:41:06\", \"deleted_at\": null, \"updated_at\": \"2023-04-11 23:41:06\"}}', NULL, '2023-04-11 21:41:06', '2023-04-11 21:41:06'),
(32, 'Battery', 'created', 'App\\Models\\Battery', 'created', 156, 'App\\Models\\User', 1, '{\"attributes\": {\"id\": 156, \"name\": \"738\", \"created_at\": \"2023-04-11 23:41:14\", \"deleted_at\": null, \"updated_at\": \"2023-04-11 23:41:14\"}}', NULL, '2023-04-11 21:41:14', '2023-04-11 21:41:14'),
(33, 'Battery', 'created', 'App\\Models\\Battery', 'created', 157, 'App\\Models\\User', 1, '{\"attributes\": {\"id\": 157, \"name\": \"739\", \"created_at\": \"2023-04-11 23:41:17\", \"deleted_at\": null, \"updated_at\": \"2023-04-11 23:41:17\"}}', NULL, '2023-04-11 21:41:17', '2023-04-11 21:41:17'),
(34, 'Battery', 'created', 'App\\Models\\Battery', 'created', 158, 'App\\Models\\User', 1, '{\"attributes\": {\"id\": 158, \"name\": \"740\", \"created_at\": \"2023-04-11 23:42:07\", \"deleted_at\": null, \"updated_at\": \"2023-04-11 23:42:07\"}}', NULL, '2023-04-11 21:42:07', '2023-04-11 21:42:07'),
(35, 'Battery', 'created', 'App\\Models\\Battery', 'created', 159, 'App\\Models\\User', 1, '{\"attributes\": {\"id\": 159, \"name\": \"741\", \"created_at\": \"2023-04-11 23:42:11\", \"deleted_at\": null, \"updated_at\": \"2023-04-11 23:42:11\"}}', NULL, '2023-04-11 21:42:11', '2023-04-11 21:42:11'),
(36, 'Battery', 'created', 'App\\Models\\Battery', 'created', 160, 'App\\Models\\User', 1, '{\"attributes\": {\"id\": 160, \"name\": \"742\", \"created_at\": \"2023-04-11 23:42:14\", \"deleted_at\": null, \"updated_at\": \"2023-04-11 23:42:14\"}}', NULL, '2023-04-11 21:42:14', '2023-04-11 21:42:14'),
(37, 'Battery', 'created', 'App\\Models\\Battery', 'created', 161, 'App\\Models\\User', 1, '{\"attributes\": {\"id\": 161, \"name\": \"744\", \"created_at\": \"2023-04-11 23:42:22\", \"deleted_at\": null, \"updated_at\": \"2023-04-11 23:42:22\"}}', NULL, '2023-04-11 21:42:22', '2023-04-11 21:42:22'),
(38, 'Battery', 'created', 'App\\Models\\Battery', 'created', 162, 'App\\Models\\User', 1, '{\"attributes\": {\"id\": 162, \"name\": \"745\", \"created_at\": \"2023-04-11 23:43:21\", \"deleted_at\": null, \"updated_at\": \"2023-04-11 23:43:21\"}}', NULL, '2023-04-11 21:43:21', '2023-04-11 21:43:21'),
(39, 'Battery', 'created', 'App\\Models\\Battery', 'created', 163, 'App\\Models\\User', 1, '{\"attributes\": {\"id\": 163, \"name\": \"746\", \"created_at\": \"2023-04-11 23:43:24\", \"deleted_at\": null, \"updated_at\": \"2023-04-11 23:43:24\"}}', NULL, '2023-04-11 21:43:24', '2023-04-11 21:43:24'),
(40, 'Battery', 'created', 'App\\Models\\Battery', 'created', 164, 'App\\Models\\User', 1, '{\"attributes\": {\"id\": 164, \"name\": \"747\", \"created_at\": \"2023-04-11 23:43:29\", \"deleted_at\": null, \"updated_at\": \"2023-04-11 23:43:29\"}}', NULL, '2023-04-11 21:43:30', '2023-04-11 21:43:30'),
(41, 'Battery', 'created', 'App\\Models\\Battery', 'created', 165, 'App\\Models\\User', 1, '{\"attributes\": {\"id\": 165, \"name\": \"748\", \"created_at\": \"2023-04-11 23:43:36\", \"deleted_at\": null, \"updated_at\": \"2023-04-11 23:43:36\"}}', NULL, '2023-04-11 21:43:37', '2023-04-11 21:43:37'),
(42, 'Battery', 'created', 'App\\Models\\Battery', 'created', 166, 'App\\Models\\User', 1, '{\"attributes\": {\"id\": 166, \"name\": \"749\", \"created_at\": \"2023-04-11 23:43:52\", \"deleted_at\": null, \"updated_at\": \"2023-04-11 23:43:52\"}}', NULL, '2023-04-11 21:43:52', '2023-04-11 21:43:52'),
(43, 'Battery', 'created', 'App\\Models\\Battery', 'created', 167, 'App\\Models\\User', 1, '{\"attributes\": {\"id\": 167, \"name\": \"750\", \"created_at\": \"2023-04-11 23:43:55\", \"deleted_at\": null, \"updated_at\": \"2023-04-11 23:43:55\"}}', NULL, '2023-04-11 21:43:55', '2023-04-11 21:43:55'),
(44, 'Battery', 'created', 'App\\Models\\Battery', 'created', 168, 'App\\Models\\User', 1, '{\"attributes\": {\"id\": 168, \"name\": \"751\", \"created_at\": \"2023-04-11 23:43:59\", \"deleted_at\": null, \"updated_at\": \"2023-04-11 23:43:59\"}}', NULL, '2023-04-11 21:43:59', '2023-04-11 21:43:59'),
(45, 'Battery', 'created', 'App\\Models\\Battery', 'created', 169, 'App\\Models\\User', 1, '{\"attributes\": {\"id\": 169, \"name\": \"752\", \"created_at\": \"2023-04-11 23:44:08\", \"deleted_at\": null, \"updated_at\": \"2023-04-11 23:44:08\"}}', NULL, '2023-04-11 21:44:08', '2023-04-11 21:44:08'),
(46, 'Battery', 'created', 'App\\Models\\Battery', 'created', 170, 'App\\Models\\User', 1, '{\"attributes\": {\"id\": 170, \"name\": \"753\", \"created_at\": \"2023-04-11 23:44:14\", \"deleted_at\": null, \"updated_at\": \"2023-04-11 23:44:14\"}}', NULL, '2023-04-11 21:44:14', '2023-04-11 21:44:14'),
(47, 'Battery', 'created', 'App\\Models\\Battery', 'created', 171, 'App\\Models\\User', 1, '{\"attributes\": {\"id\": 171, \"name\": \"754\", \"created_at\": \"2023-04-11 23:44:17\", \"deleted_at\": null, \"updated_at\": \"2023-04-11 23:44:17\"}}', NULL, '2023-04-11 21:44:18', '2023-04-11 21:44:18'),
(48, 'Battery', 'created', 'App\\Models\\Battery', 'created', 172, 'App\\Models\\User', 1, '{\"attributes\": {\"id\": 172, \"name\": \"755\", \"created_at\": \"2023-04-11 23:44:21\", \"deleted_at\": null, \"updated_at\": \"2023-04-11 23:44:21\"}}', NULL, '2023-04-11 21:44:21', '2023-04-11 21:44:21'),
(49, 'Battery', 'created', 'App\\Models\\Battery', 'created', 173, 'App\\Models\\User', 1, '{\"attributes\": {\"id\": 173, \"name\": \"758\", \"created_at\": \"2023-04-11 23:44:28\", \"deleted_at\": null, \"updated_at\": \"2023-04-11 23:44:28\"}}', NULL, '2023-04-11 21:44:28', '2023-04-11 21:44:28'),
(50, 'Battery', 'created', 'App\\Models\\Battery', 'created', 174, 'App\\Models\\User', 1, '{\"attributes\": {\"id\": 174, \"name\": \"759\", \"created_at\": \"2023-04-11 23:44:32\", \"deleted_at\": null, \"updated_at\": \"2023-04-11 23:44:32\"}}', NULL, '2023-04-11 21:44:32', '2023-04-11 21:44:32'),
(51, 'Battery', 'created', 'App\\Models\\Battery', 'created', 175, 'App\\Models\\User', 1, '{\"attributes\": {\"id\": 175, \"name\": \"760\", \"created_at\": \"2023-04-11 23:47:31\", \"deleted_at\": null, \"updated_at\": \"2023-04-11 23:47:31\"}}', NULL, '2023-04-11 21:47:32', '2023-04-11 21:47:32'),
(52, 'Battery', 'created', 'App\\Models\\Battery', 'created', 176, 'App\\Models\\User', 1, '{\"attributes\": {\"id\": 176, \"name\": \"761\", \"created_at\": \"2023-04-11 23:47:37\", \"deleted_at\": null, \"updated_at\": \"2023-04-11 23:47:37\"}}', NULL, '2023-04-11 21:47:38', '2023-04-11 21:47:38'),
(53, 'Battery', 'created', 'App\\Models\\Battery', 'created', 177, 'App\\Models\\User', 1, '{\"attributes\": {\"id\": 177, \"name\": \"762\", \"created_at\": \"2023-04-11 23:47:44\", \"deleted_at\": null, \"updated_at\": \"2023-04-11 23:47:44\"}}', NULL, '2023-04-11 21:47:44', '2023-04-11 21:47:44'),
(54, 'Battery', 'created', 'App\\Models\\Battery', 'created', 178, 'App\\Models\\User', 1, '{\"attributes\": {\"id\": 178, \"name\": \"763\", \"created_at\": \"2023-04-11 23:47:50\", \"deleted_at\": null, \"updated_at\": \"2023-04-11 23:47:50\"}}', NULL, '2023-04-11 21:47:51', '2023-04-11 21:47:51'),
(55, 'Battery', 'created', 'App\\Models\\Battery', 'created', 179, 'App\\Models\\User', 1, '{\"attributes\": {\"id\": 179, \"name\": \"765\", \"created_at\": \"2023-04-11 23:47:57\", \"deleted_at\": null, \"updated_at\": \"2023-04-11 23:47:57\"}}', NULL, '2023-04-11 21:47:57', '2023-04-11 21:47:57'),
(56, 'Battery', 'created', 'App\\Models\\Battery', 'created', 180, 'App\\Models\\User', 1, '{\"attributes\": {\"id\": 180, \"name\": \"766\", \"created_at\": \"2023-04-11 23:48:02\", \"deleted_at\": null, \"updated_at\": \"2023-04-11 23:48:02\"}}', NULL, '2023-04-11 21:48:02', '2023-04-11 21:48:02'),
(57, 'Battery', 'created', 'App\\Models\\Battery', 'created', 181, 'App\\Models\\User', 1, '{\"attributes\": {\"id\": 181, \"name\": \"767\", \"created_at\": \"2023-04-11 23:48:07\", \"deleted_at\": null, \"updated_at\": \"2023-04-11 23:48:07\"}}', NULL, '2023-04-11 21:48:08', '2023-04-11 21:48:08'),
(58, 'Battery', 'created', 'App\\Models\\Battery', 'created', 182, 'App\\Models\\User', 1, '{\"attributes\": {\"id\": 182, \"name\": \"768\", \"created_at\": \"2023-04-11 23:48:13\", \"deleted_at\": null, \"updated_at\": \"2023-04-11 23:48:13\"}}', NULL, '2023-04-11 21:48:13', '2023-04-11 21:48:13'),
(59, 'Battery', 'created', 'App\\Models\\Battery', 'created', 183, 'App\\Models\\User', 1, '{\"attributes\": {\"id\": 183, \"name\": \"769\", \"created_at\": \"2023-04-11 23:48:18\", \"deleted_at\": null, \"updated_at\": \"2023-04-11 23:48:18\"}}', NULL, '2023-04-11 21:48:18', '2023-04-11 21:48:18'),
(60, 'Battery', 'created', 'App\\Models\\Battery', 'created', 184, 'App\\Models\\User', 1, '{\"attributes\": {\"id\": 184, \"name\": \"771\", \"created_at\": \"2023-04-11 23:48:27\", \"deleted_at\": null, \"updated_at\": \"2023-04-11 23:48:27\"}}', NULL, '2023-04-11 21:48:27', '2023-04-11 21:48:27'),
(61, 'Battery', 'created', 'App\\Models\\Battery', 'created', 185, 'App\\Models\\User', 1, '{\"attributes\": {\"id\": 185, \"name\": \"772\", \"created_at\": \"2023-04-11 23:48:30\", \"deleted_at\": null, \"updated_at\": \"2023-04-11 23:48:30\"}}', NULL, '2023-04-11 21:48:31', '2023-04-11 21:48:31'),
(62, 'Battery', 'created', 'App\\Models\\Battery', 'created', 186, 'App\\Models\\User', 1, '{\"attributes\": {\"id\": 186, \"name\": \"773\", \"created_at\": \"2023-04-11 23:48:35\", \"deleted_at\": null, \"updated_at\": \"2023-04-11 23:48:35\"}}', NULL, '2023-04-11 21:48:35', '2023-04-11 21:48:35'),
(63, 'Battery', 'created', 'App\\Models\\Battery', 'created', 187, 'App\\Models\\User', 1, '{\"attributes\": {\"id\": 187, \"name\": \"775\", \"created_at\": \"2023-04-11 23:48:40\", \"deleted_at\": null, \"updated_at\": \"2023-04-11 23:48:40\"}}', NULL, '2023-04-11 21:48:40', '2023-04-11 21:48:40'),
(64, 'Battery', 'created', 'App\\Models\\Battery', 'created', 188, 'App\\Models\\User', 1, '{\"attributes\": {\"id\": 188, \"name\": \"777\", \"created_at\": \"2023-04-11 23:48:45\", \"deleted_at\": null, \"updated_at\": \"2023-04-11 23:48:45\"}}', NULL, '2023-04-11 21:48:45', '2023-04-11 21:48:45'),
(65, 'Battery', 'created', 'App\\Models\\Battery', 'created', 189, 'App\\Models\\User', 1, '{\"attributes\": {\"id\": 189, \"name\": \"779\", \"created_at\": \"2023-04-11 23:50:17\", \"deleted_at\": null, \"updated_at\": \"2023-04-11 23:50:17\"}}', NULL, '2023-04-11 21:50:18', '2023-04-11 21:50:18'),
(66, 'Battery', 'created', 'App\\Models\\Battery', 'created', 190, 'App\\Models\\User', 1, '{\"attributes\": {\"id\": 190, \"name\": \"778\", \"created_at\": \"2023-04-11 23:50:23\", \"deleted_at\": null, \"updated_at\": \"2023-04-11 23:50:23\"}}', NULL, '2023-04-11 21:50:23', '2023-04-11 21:50:23'),
(67, 'Battery', 'created', 'App\\Models\\Battery', 'created', 191, 'App\\Models\\User', 1, '{\"attributes\": {\"id\": 191, \"name\": \"781\", \"created_at\": \"2023-04-11 23:50:36\", \"deleted_at\": null, \"updated_at\": \"2023-04-11 23:50:36\"}}', NULL, '2023-04-11 21:50:36', '2023-04-11 21:50:36'),
(68, 'Battery', 'created', 'App\\Models\\Battery', 'created', 192, 'App\\Models\\User', 1, '{\"attributes\": {\"id\": 192, \"name\": \"782\", \"created_at\": \"2023-04-11 23:50:41\", \"deleted_at\": null, \"updated_at\": \"2023-04-11 23:50:41\"}}', NULL, '2023-04-11 21:50:41', '2023-04-11 21:50:41'),
(69, 'Battery', 'created', 'App\\Models\\Battery', 'created', 193, 'App\\Models\\User', 1, '{\"attributes\": {\"id\": 193, \"name\": \"783\", \"created_at\": \"2023-04-11 23:50:46\", \"deleted_at\": null, \"updated_at\": \"2023-04-11 23:50:46\"}}', NULL, '2023-04-11 21:50:46', '2023-04-11 21:50:46'),
(70, 'Battery', 'created', 'App\\Models\\Battery', 'created', 194, 'App\\Models\\User', 1, '{\"attributes\": {\"id\": 194, \"name\": \"800\", \"created_at\": \"2023-04-11 23:50:57\", \"deleted_at\": null, \"updated_at\": \"2023-04-11 23:50:57\"}}', NULL, '2023-04-11 21:50:57', '2023-04-11 21:50:57'),
(71, 'Battery', 'created', 'App\\Models\\Battery', 'created', 195, 'App\\Models\\User', 1, '{\"attributes\": {\"id\": 195, \"name\": \"801\", \"created_at\": \"2023-04-11 23:51:02\", \"deleted_at\": null, \"updated_at\": \"2023-04-11 23:51:02\"}}', NULL, '2023-04-11 21:51:02', '2023-04-11 21:51:02'),
(72, 'Battery', 'created', 'App\\Models\\Battery', 'created', 196, 'App\\Models\\User', 1, '{\"attributes\": {\"id\": 196, \"name\": \"803\", \"created_at\": \"2023-04-11 23:51:06\", \"deleted_at\": null, \"updated_at\": \"2023-04-11 23:51:06\"}}', NULL, '2023-04-11 21:51:06', '2023-04-11 21:51:06'),
(73, 'Battery', 'created', 'App\\Models\\Battery', 'created', 197, 'App\\Models\\User', 1, '{\"attributes\": {\"id\": 197, \"name\": \"805\", \"created_at\": \"2023-04-11 23:51:13\", \"deleted_at\": null, \"updated_at\": \"2023-04-11 23:51:13\"}}', NULL, '2023-04-11 21:51:13', '2023-04-11 21:51:13'),
(74, 'Battery', 'created', 'App\\Models\\Battery', 'created', 198, 'App\\Models\\User', 1, '{\"attributes\": {\"id\": 198, \"name\": \"809\", \"created_at\": \"2023-04-11 23:51:31\", \"deleted_at\": null, \"updated_at\": \"2023-04-11 23:51:31\"}}', NULL, '2023-04-11 21:51:32', '2023-04-11 21:51:32'),
(75, 'Battery', 'created', 'App\\Models\\Battery', 'created', 199, 'App\\Models\\User', 1, '{\"attributes\": {\"id\": 199, \"name\": \"810\", \"created_at\": \"2023-04-11 23:51:36\", \"deleted_at\": null, \"updated_at\": \"2023-04-11 23:51:36\"}}', NULL, '2023-04-11 21:51:36', '2023-04-11 21:51:36'),
(76, 'Battery', 'created', 'App\\Models\\Battery', 'created', 200, 'App\\Models\\User', 1, '{\"attributes\": {\"id\": 200, \"name\": \"811\", \"created_at\": \"2023-04-11 23:51:41\", \"deleted_at\": null, \"updated_at\": \"2023-04-11 23:51:41\"}}', NULL, '2023-04-11 21:51:41', '2023-04-11 21:51:41'),
(77, 'Battery', 'created', 'App\\Models\\Battery', 'created', 201, 'App\\Models\\User', 1, '{\"attributes\": {\"id\": 201, \"name\": \"812\", \"created_at\": \"2023-04-11 23:51:45\", \"deleted_at\": null, \"updated_at\": \"2023-04-11 23:51:45\"}}', NULL, '2023-04-11 21:51:45', '2023-04-11 21:51:45'),
(78, 'Battery', 'created', 'App\\Models\\Battery', 'created', 202, 'App\\Models\\User', 1, '{\"attributes\": {\"id\": 202, \"name\": \"814\", \"created_at\": \"2023-04-11 23:51:49\", \"deleted_at\": null, \"updated_at\": \"2023-04-11 23:51:49\"}}', NULL, '2023-04-11 21:51:49', '2023-04-11 21:51:49'),
(79, 'Battery', 'created', 'App\\Models\\Battery', 'created', 203, 'App\\Models\\User', 1, '{\"attributes\": {\"id\": 203, \"name\": \"815\", \"created_at\": \"2023-04-11 23:52:02\", \"deleted_at\": null, \"updated_at\": \"2023-04-11 23:52:02\"}}', NULL, '2023-04-11 21:52:02', '2023-04-11 21:52:02'),
(80, 'Battery', 'created', 'App\\Models\\Battery', 'created', 204, 'App\\Models\\User', 1, '{\"attributes\": {\"id\": 204, \"name\": \"816\", \"created_at\": \"2023-04-11 23:52:07\", \"deleted_at\": null, \"updated_at\": \"2023-04-11 23:52:07\"}}', NULL, '2023-04-11 21:52:07', '2023-04-11 21:52:07'),
(81, 'Battery', 'created', 'App\\Models\\Battery', 'created', 205, 'App\\Models\\User', 1, '{\"attributes\": {\"id\": 205, \"name\": \"817\", \"created_at\": \"2023-04-11 23:52:18\", \"deleted_at\": null, \"updated_at\": \"2023-04-11 23:52:18\"}}', NULL, '2023-04-11 21:52:18', '2023-04-11 21:52:18'),
(82, 'Battery', 'created', 'App\\Models\\Battery', 'created', 206, 'App\\Models\\User', 1, '{\"attributes\": {\"id\": 206, \"name\": \"818\", \"created_at\": \"2023-04-11 23:52:23\", \"deleted_at\": null, \"updated_at\": \"2023-04-11 23:52:23\"}}', NULL, '2023-04-11 21:52:23', '2023-04-11 21:52:23'),
(83, 'Battery', 'created', 'App\\Models\\Battery', 'created', 207, 'App\\Models\\User', 1, '{\"attributes\": {\"id\": 207, \"name\": \"819\", \"created_at\": \"2023-04-11 23:52:27\", \"deleted_at\": null, \"updated_at\": \"2023-04-11 23:52:27\"}}', NULL, '2023-04-11 21:52:27', '2023-04-11 21:52:27'),
(84, 'Battery', 'created', 'App\\Models\\Battery', 'created', 208, 'App\\Models\\User', 1, '{\"attributes\": {\"id\": 208, \"name\": \"820\", \"created_at\": \"2023-04-11 23:52:31\", \"deleted_at\": null, \"updated_at\": \"2023-04-11 23:52:31\"}}', NULL, '2023-04-11 21:52:31', '2023-04-11 21:52:31'),
(85, 'Battery', 'created', 'App\\Models\\Battery', 'created', 209, 'App\\Models\\User', 1, '{\"attributes\": {\"id\": 209, \"name\": \"822\", \"created_at\": \"2023-04-11 23:52:35\", \"deleted_at\": null, \"updated_at\": \"2023-04-11 23:52:35\"}}', NULL, '2023-04-11 21:52:35', '2023-04-11 21:52:35'),
(86, 'Battery', 'created', 'App\\Models\\Battery', 'created', 210, 'App\\Models\\User', 1, '{\"attributes\": {\"id\": 210, \"name\": \"823\", \"created_at\": \"2023-04-11 23:52:41\", \"deleted_at\": null, \"updated_at\": \"2023-04-11 23:52:41\"}}', NULL, '2023-04-11 21:52:41', '2023-04-11 21:52:41'),
(87, 'Battery', 'created', 'App\\Models\\Battery', 'created', 211, 'App\\Models\\User', 1, '{\"attributes\": {\"id\": 211, \"name\": \"824\", \"created_at\": \"2023-04-11 23:52:44\", \"deleted_at\": null, \"updated_at\": \"2023-04-11 23:52:44\"}}', NULL, '2023-04-11 21:52:44', '2023-04-11 21:52:44'),
(88, 'Battery', 'created', 'App\\Models\\Battery', 'created', 212, 'App\\Models\\User', 1, '{\"attributes\": {\"id\": 212, \"name\": \"825\", \"created_at\": \"2023-04-11 23:52:48\", \"deleted_at\": null, \"updated_at\": \"2023-04-11 23:52:48\"}}', NULL, '2023-04-11 21:52:48', '2023-04-11 21:52:48'),
(89, 'Battery', 'created', 'App\\Models\\Battery', 'created', 213, 'App\\Models\\User', 1, '{\"attributes\": {\"id\": 213, \"name\": \"826\", \"created_at\": \"2023-04-11 23:52:52\", \"deleted_at\": null, \"updated_at\": \"2023-04-11 23:52:52\"}}', NULL, '2023-04-11 21:52:52', '2023-04-11 21:52:52'),
(90, 'Battery', 'created', 'App\\Models\\Battery', 'created', 214, 'App\\Models\\User', 1, '{\"attributes\": {\"id\": 214, \"name\": \"828\", \"created_at\": \"2023-04-11 23:53:02\", \"deleted_at\": null, \"updated_at\": \"2023-04-11 23:53:02\"}}', NULL, '2023-04-11 21:53:02', '2023-04-11 21:53:02'),
(91, 'Battery', 'created', 'App\\Models\\Battery', 'created', 215, 'App\\Models\\User', 1, '{\"attributes\": {\"id\": 215, \"name\": \"829\", \"created_at\": \"2023-04-11 23:53:07\", \"deleted_at\": null, \"updated_at\": \"2023-04-11 23:53:07\"}}', NULL, '2023-04-11 21:53:07', '2023-04-11 21:53:07'),
(92, 'Battery', 'created', 'App\\Models\\Battery', 'created', 216, 'App\\Models\\User', 1, '{\"attributes\": {\"id\": 216, \"name\": \"832\", \"created_at\": \"2023-04-11 23:53:19\", \"deleted_at\": null, \"updated_at\": \"2023-04-11 23:53:19\"}}', NULL, '2023-04-11 21:53:19', '2023-04-11 21:53:19'),
(93, 'Battery', 'created', 'App\\Models\\Battery', 'created', 217, 'App\\Models\\User', 1, '{\"attributes\": {\"id\": 217, \"name\": \"833\", \"created_at\": \"2023-04-11 23:56:18\", \"deleted_at\": null, \"updated_at\": \"2023-04-11 23:56:18\"}}', NULL, '2023-04-11 21:56:18', '2023-04-11 21:56:18'),
(94, 'Battery', 'created', 'App\\Models\\Battery', 'created', 218, 'App\\Models\\User', 1, '{\"attributes\": {\"id\": 218, \"name\": \"834\", \"created_at\": \"2023-04-11 23:56:24\", \"deleted_at\": null, \"updated_at\": \"2023-04-11 23:56:24\"}}', NULL, '2023-04-11 21:56:24', '2023-04-11 21:56:24'),
(95, 'Battery', 'created', 'App\\Models\\Battery', 'created', 219, 'App\\Models\\User', 1, '{\"attributes\": {\"id\": 219, \"name\": \"835\", \"created_at\": \"2023-04-11 23:56:34\", \"deleted_at\": null, \"updated_at\": \"2023-04-11 23:56:34\"}}', NULL, '2023-04-11 21:56:34', '2023-04-11 21:56:34'),
(96, 'Battery', 'created', 'App\\Models\\Battery', 'created', 220, 'App\\Models\\User', 1, '{\"attributes\": {\"id\": 220, \"name\": \"836\", \"created_at\": \"2023-04-11 23:56:39\", \"deleted_at\": null, \"updated_at\": \"2023-04-11 23:56:39\"}}', NULL, '2023-04-11 21:56:39', '2023-04-11 21:56:39'),
(97, 'Battery', 'created', 'App\\Models\\Battery', 'created', 221, 'App\\Models\\User', 1, '{\"attributes\": {\"id\": 221, \"name\": \"837\", \"created_at\": \"2023-04-11 23:56:42\", \"deleted_at\": null, \"updated_at\": \"2023-04-11 23:56:42\"}}', NULL, '2023-04-11 21:56:42', '2023-04-11 21:56:42'),
(98, 'Battery', 'created', 'App\\Models\\Battery', 'created', 222, 'App\\Models\\User', 1, '{\"attributes\": {\"id\": 222, \"name\": \"840\", \"created_at\": \"2023-04-11 23:56:47\", \"deleted_at\": null, \"updated_at\": \"2023-04-11 23:56:47\"}}', NULL, '2023-04-11 21:56:47', '2023-04-11 21:56:47'),
(99, 'Battery', 'created', 'App\\Models\\Battery', 'created', 223, 'App\\Models\\User', 1, '{\"attributes\": {\"id\": 223, \"name\": \"841\", \"created_at\": \"2023-04-11 23:57:16\", \"deleted_at\": null, \"updated_at\": \"2023-04-11 23:57:16\"}}', NULL, '2023-04-11 21:57:16', '2023-04-11 21:57:16'),
(100, 'Battery', 'created', 'App\\Models\\Battery', 'created', 224, 'App\\Models\\User', 1, '{\"attributes\": {\"id\": 224, \"name\": \"842\", \"created_at\": \"2023-04-11 23:57:20\", \"deleted_at\": null, \"updated_at\": \"2023-04-11 23:57:20\"}}', NULL, '2023-04-11 21:57:20', '2023-04-11 21:57:20'),
(101, 'Battery', 'created', 'App\\Models\\Battery', 'created', 225, 'App\\Models\\User', 1, '{\"attributes\": {\"id\": 225, \"name\": \"843\", \"created_at\": \"2023-04-11 23:57:42\", \"deleted_at\": null, \"updated_at\": \"2023-04-11 23:57:42\"}}', NULL, '2023-04-11 21:57:42', '2023-04-11 21:57:42'),
(102, 'Battery', 'created', 'App\\Models\\Battery', 'created', 226, 'App\\Models\\User', 1, '{\"attributes\": {\"id\": 226, \"name\": \"844\", \"created_at\": \"2023-04-11 23:57:46\", \"deleted_at\": null, \"updated_at\": \"2023-04-11 23:57:46\"}}', NULL, '2023-04-11 21:57:46', '2023-04-11 21:57:46'),
(103, 'Battery', 'created', 'App\\Models\\Battery', 'created', 227, 'App\\Models\\User', 1, '{\"attributes\": {\"id\": 227, \"name\": \"846\", \"created_at\": \"2023-04-11 23:57:52\", \"deleted_at\": null, \"updated_at\": \"2023-04-11 23:57:52\"}}', NULL, '2023-04-11 21:57:52', '2023-04-11 21:57:52'),
(104, 'Battery', 'created', 'App\\Models\\Battery', 'created', 228, 'App\\Models\\User', 1, '{\"attributes\": {\"id\": 228, \"name\": \"847\", \"created_at\": \"2023-04-11 23:57:57\", \"deleted_at\": null, \"updated_at\": \"2023-04-11 23:57:57\"}}', NULL, '2023-04-11 21:57:57', '2023-04-11 21:57:57'),
(105, 'Battery', 'created', 'App\\Models\\Battery', 'created', 229, 'App\\Models\\User', 1, '{\"attributes\": {\"id\": 229, \"name\": \"848\", \"created_at\": \"2023-04-11 23:58:02\", \"deleted_at\": null, \"updated_at\": \"2023-04-11 23:58:02\"}}', NULL, '2023-04-11 21:58:03', '2023-04-11 21:58:03'),
(106, 'Battery', 'created', 'App\\Models\\Battery', 'created', 230, 'App\\Models\\User', 1, '{\"attributes\": {\"id\": 230, \"name\": \"849\", \"created_at\": \"2023-04-11 23:58:27\", \"deleted_at\": null, \"updated_at\": \"2023-04-11 23:58:27\"}}', NULL, '2023-04-11 21:58:28', '2023-04-11 21:58:28'),
(107, 'Battery', 'created', 'App\\Models\\Battery', 'created', 231, 'App\\Models\\User', 1, '{\"attributes\": {\"id\": 231, \"name\": \"850\", \"created_at\": \"2023-04-11 23:58:33\", \"deleted_at\": null, \"updated_at\": \"2023-04-11 23:58:33\"}}', NULL, '2023-04-11 21:58:33', '2023-04-11 21:58:33'),
(108, 'Battery', 'created', 'App\\Models\\Battery', 'created', 232, 'App\\Models\\User', 1, '{\"attributes\": {\"id\": 232, \"name\": \"851\", \"created_at\": \"2023-04-11 23:58:38\", \"deleted_at\": null, \"updated_at\": \"2023-04-11 23:58:38\"}}', NULL, '2023-04-11 21:58:38', '2023-04-11 21:58:38'),
(109, 'Battery', 'created', 'App\\Models\\Battery', 'created', 233, 'App\\Models\\User', 1, '{\"attributes\": {\"id\": 233, \"name\": \"853\", \"created_at\": \"2023-04-11 23:58:41\", \"deleted_at\": null, \"updated_at\": \"2023-04-11 23:58:41\"}}', NULL, '2023-04-11 21:58:41', '2023-04-11 21:58:41'),
(110, 'Battery', 'created', 'App\\Models\\Battery', 'created', 234, 'App\\Models\\User', 1, '{\"attributes\": {\"id\": 234, \"name\": \"854\", \"created_at\": \"2023-04-11 23:58:45\", \"deleted_at\": null, \"updated_at\": \"2023-04-11 23:58:45\"}}', NULL, '2023-04-11 21:58:45', '2023-04-11 21:58:45'),
(111, 'Battry', 'created', 'App\\Models\\Employee', 'created', 1, 'App\\Models\\User', 1, '{\"attributes\": {\"id\": 1, \"name\": \"ZULFIQAR\", \"phone\": null, \"created_at\": \"2023-04-12 00:04:25\", \"deleted_at\": null, \"updated_at\": \"2023-04-12 00:04:25\"}}', NULL, '2023-04-11 22:04:26', '2023-04-11 22:04:26'),
(112, 'Battry', 'created', 'App\\Models\\Employee', 'created', 2, 'App\\Models\\User', 1, '{\"attributes\": {\"id\": 2, \"name\": \"HABIBULLAH\", \"phone\": null, \"created_at\": \"2023-04-12 00:05:09\", \"deleted_at\": null, \"updated_at\": \"2023-04-12 00:05:09\"}}', NULL, '2023-04-11 22:05:09', '2023-04-11 22:05:09'),
(113, 'Battry', 'created', 'App\\Models\\Employee', 'created', 3, 'App\\Models\\User', 1, '{\"attributes\": {\"id\": 3, \"name\": \"ZABAR\", \"phone\": null, \"created_at\": \"2023-04-12 00:06:30\", \"deleted_at\": null, \"updated_at\": \"2023-04-12 00:06:30\"}}', NULL, '2023-04-11 22:06:30', '2023-04-11 22:06:30'),
(114, 'Battry', 'created', 'App\\Models\\Employee', 'created', 4, 'App\\Models\\User', 1, '{\"attributes\": {\"id\": 4, \"name\": \"AKHTAR\", \"phone\": null, \"created_at\": \"2023-04-12 00:06:35\", \"deleted_at\": null, \"updated_at\": \"2023-04-12 00:06:35\"}}', NULL, '2023-04-11 22:06:36', '2023-04-11 22:06:36'),
(115, 'Battry', 'created', 'App\\Models\\Employee', 'created', 5, 'App\\Models\\User', 1, '{\"attributes\": {\"id\": 5, \"name\": \"BILAL\", \"phone\": null, \"created_at\": \"2023-04-12 00:06:43\", \"deleted_at\": null, \"updated_at\": \"2023-04-12 00:06:43\"}}', NULL, '2023-04-11 22:06:43', '2023-04-11 22:06:43'),
(116, 'Battry', 'created', 'App\\Models\\Employee', 'created', 6, 'App\\Models\\User', 1, '{\"attributes\": {\"id\": 6, \"name\": \"SHAMSHAD\", \"phone\": null, \"created_at\": \"2023-04-12 00:06:50\", \"deleted_at\": null, \"updated_at\": \"2023-04-12 00:06:50\"}}', NULL, '2023-04-11 22:06:50', '2023-04-11 22:06:50'),
(117, 'Battry', 'created', 'App\\Models\\Employee', 'created', 7, 'App\\Models\\User', 1, '{\"attributes\": {\"id\": 7, \"name\": \"ASAD\", \"phone\": null, \"created_at\": \"2023-04-12 00:07:05\", \"deleted_at\": null, \"updated_at\": \"2023-04-12 00:07:05\"}}', NULL, '2023-04-11 22:07:05', '2023-04-11 22:07:05'),
(118, 'Battry', 'created', 'App\\Models\\Employee', 'created', 8, 'App\\Models\\User', 1, '{\"attributes\": {\"id\": 8, \"name\": \"ALI AHMAD\", \"phone\": null, \"created_at\": \"2023-04-12 00:07:30\", \"deleted_at\": null, \"updated_at\": \"2023-04-12 00:07:30\"}}', NULL, '2023-04-11 22:07:30', '2023-04-11 22:07:30'),
(119, 'Battry', 'created', 'App\\Models\\Employee', 'created', 9, 'App\\Models\\User', 1, '{\"attributes\": {\"id\": 9, \"name\": \"ASAD\", \"phone\": null, \"created_at\": \"2023-04-12 00:07:37\", \"deleted_at\": null, \"updated_at\": \"2023-04-12 00:07:37\"}}', NULL, '2023-04-11 22:07:37', '2023-04-11 22:07:37'),
(120, 'Battry', 'created', 'App\\Models\\Employee', 'created', 10, 'App\\Models\\User', 1, '{\"attributes\": {\"id\": 10, \"name\": \"ISRAR\", \"phone\": null, \"created_at\": \"2023-04-12 00:08:09\", \"deleted_at\": null, \"updated_at\": \"2023-04-12 00:08:09\"}}', NULL, '2023-04-11 22:08:09', '2023-04-11 22:08:09'),
(121, 'Battry', 'created', 'App\\Models\\Employee', 'created', 11, 'App\\Models\\User', 1, '{\"attributes\": {\"id\": 11, \"name\": \"AAMIR\", \"phone\": null, \"created_at\": \"2023-04-12 00:08:16\", \"deleted_at\": null, \"updated_at\": \"2023-04-12 00:08:16\"}}', NULL, '2023-04-11 22:08:16', '2023-04-11 22:08:16'),
(122, 'Battry', 'created', 'App\\Models\\Employee', 'created', 12, 'App\\Models\\User', 1, '{\"attributes\": {\"id\": 12, \"name\": \"ALI GUL\", \"phone\": null, \"created_at\": \"2023-04-12 00:08:27\", \"deleted_at\": null, \"updated_at\": \"2023-04-12 00:08:27\"}}', NULL, '2023-04-11 22:08:27', '2023-04-11 22:08:27'),
(123, 'Battry', 'created', 'App\\Models\\Employee', 'created', 13, 'App\\Models\\User', 1, '{\"attributes\": {\"id\": 13, \"name\": \"ZAHID\", \"phone\": null, \"created_at\": \"2023-04-12 00:08:32\", \"deleted_at\": null, \"updated_at\": \"2023-04-12 00:08:32\"}}', NULL, '2023-04-11 22:08:32', '2023-04-11 22:08:32'),
(124, 'Battry', 'created', 'App\\Models\\Employee', 'created', 14, 'App\\Models\\User', 1, '{\"attributes\": {\"id\": 14, \"name\": \"KHALID\", \"phone\": null, \"created_at\": \"2023-04-12 00:08:40\", \"deleted_at\": null, \"updated_at\": \"2023-04-12 00:08:40\"}}', NULL, '2023-04-11 22:08:40', '2023-04-11 22:08:40'),
(125, 'Battry', 'created', 'App\\Models\\Employee', 'created', 15, 'App\\Models\\User', 1, '{\"attributes\": {\"id\": 15, \"name\": \"KHADIM\", \"phone\": null, \"created_at\": \"2023-04-12 00:08:44\", \"deleted_at\": null, \"updated_at\": \"2023-04-12 00:08:44\"}}', NULL, '2023-04-11 22:08:45', '2023-04-11 22:08:45'),
(126, 'Battry', 'created', 'App\\Models\\Employee', 'created', 16, 'App\\Models\\User', 1, '{\"attributes\": {\"id\": 16, \"name\": \"MUNAWAR\", \"phone\": null, \"created_at\": \"2023-04-12 00:08:52\", \"deleted_at\": null, \"updated_at\": \"2023-04-12 00:08:52\"}}', NULL, '2023-04-11 22:08:52', '2023-04-11 22:08:52'),
(127, 'Battry', 'created', 'App\\Models\\Employee', 'created', 17, 'App\\Models\\User', 1, '{\"attributes\": {\"id\": 17, \"name\": \"AMJAD\", \"phone\": null, \"created_at\": \"2023-04-12 00:09:04\", \"deleted_at\": null, \"updated_at\": \"2023-04-12 00:09:04\"}}', NULL, '2023-04-11 22:09:04', '2023-04-11 22:09:04'),
(128, 'Battry', 'created', 'App\\Models\\Employee', 'created', 18, 'App\\Models\\User', 1, '{\"attributes\": {\"id\": 18, \"name\": \"YASIR\", \"phone\": null, \"created_at\": \"2023-04-12 00:09:11\", \"deleted_at\": null, \"updated_at\": \"2023-04-12 00:09:11\"}}', NULL, '2023-04-11 22:09:11', '2023-04-11 22:09:11'),
(129, 'Battry', 'created', 'App\\Models\\Employee', 'created', 19, 'App\\Models\\User', 1, '{\"attributes\": {\"id\": 19, \"name\": \"RAMZAN\", \"phone\": null, \"created_at\": \"2023-04-12 00:09:23\", \"deleted_at\": null, \"updated_at\": \"2023-04-12 00:09:23\"}}', NULL, '2023-04-11 22:09:23', '2023-04-11 22:09:23'),
(130, 'Battry', 'created', 'App\\Models\\Employee', 'created', 20, 'App\\Models\\User', 1, '{\"attributes\": {\"id\": 20, \"name\": \"JHARO\", \"phone\": null, \"created_at\": \"2023-04-12 00:09:32\", \"deleted_at\": null, \"updated_at\": \"2023-04-12 00:09:32\"}}', NULL, '2023-04-11 22:09:32', '2023-04-11 22:09:32'),
(131, 'authentication', 'Logged-in', 'App\\Models\\User', NULL, 1, NULL, NULL, '[]', NULL, '2023-04-11 22:26:04', '2023-04-11 22:26:04'),
(132, 'Battery', 'created', 'App\\Models\\Battery', 'created', 235, 'App\\Models\\User', 1, '{\"attributes\": {\"id\": 235, \"name\": \"558\", \"created_at\": \"2023-04-12 00:41:11\", \"deleted_at\": null, \"updated_at\": \"2023-04-12 00:41:11\"}}', NULL, '2023-04-11 22:41:11', '2023-04-11 22:41:11'),
(133, 'authentication', 'Logged-in', 'App\\Models\\User', NULL, 1, NULL, NULL, '[]', NULL, '2023-04-11 22:54:54', '2023-04-11 22:54:54'),
(134, 'authentication', 'Logged-in', 'App\\Models\\User', NULL, 1, NULL, NULL, '[]', NULL, '2023-04-12 04:30:15', '2023-04-12 04:30:15'),
(135, 'authentication', 'Logged-in', 'App\\Models\\User', NULL, 1, NULL, NULL, '[]', NULL, '2023-04-12 04:32:07', '2023-04-12 04:32:07'),
(136, 'Battry', 'created', 'App\\Models\\Employee', 'created', 21, 'App\\Models\\User', 1, '{\"attributes\": {\"id\": 21, \"name\": \"MEER HASAN\", \"phone\": null, \"created_at\": \"2023-04-12 06:33:26\", \"deleted_at\": null, \"updated_at\": \"2023-04-12 06:33:26\"}}', NULL, '2023-04-12 04:33:26', '2023-04-12 04:33:26'),
(137, 'Battry', 'created', 'App\\Models\\Employee', 'created', 22, 'App\\Models\\User', 1, '{\"attributes\": {\"id\": 22, \"name\": \"MEER MUHAMMAD\", \"phone\": null, \"created_at\": \"2023-04-12 06:33:34\", \"deleted_at\": null, \"updated_at\": \"2023-04-12 06:33:34\"}}', NULL, '2023-04-12 04:33:34', '2023-04-12 04:33:34'),
(138, 'Battry', 'created', 'App\\Models\\Employee', 'created', 23, 'App\\Models\\User', 1, '{\"attributes\": {\"id\": 23, \"name\": \"MOOR\", \"phone\": null, \"created_at\": \"2023-04-12 06:33:39\", \"deleted_at\": null, \"updated_at\": \"2023-04-12 06:33:39\"}}', NULL, '2023-04-12 04:33:39', '2023-04-12 04:33:39'),
(139, 'Battry', 'created', 'App\\Models\\Employee', 'created', 24, 'App\\Models\\User', 1, '{\"attributes\": {\"id\": 24, \"name\": \"SINDHI\", \"phone\": null, \"created_at\": \"2023-04-12 06:33:53\", \"deleted_at\": null, \"updated_at\": \"2023-04-12 06:33:53\"}}', NULL, '2023-04-12 04:33:53', '2023-04-12 04:33:53'),
(140, 'Battry', 'created', 'App\\Models\\Employee', 'created', 25, 'App\\Models\\User', 1, '{\"attributes\": {\"id\": 25, \"name\": \"YASEEN\", \"phone\": null, \"created_at\": \"2023-04-12 06:35:22\", \"deleted_at\": null, \"updated_at\": \"2023-04-12 06:35:22\"}}', NULL, '2023-04-12 04:35:22', '2023-04-12 04:35:22'),
(141, 'Battry', 'created', 'App\\Models\\Employee', 'created', 26, 'App\\Models\\User', 1, '{\"attributes\": {\"id\": 26, \"name\": \"KHADIM HUSSAIN\", \"phone\": null, \"created_at\": \"2023-04-12 06:35:30\", \"deleted_at\": null, \"updated_at\": \"2023-04-12 06:35:30\"}}', NULL, '2023-04-12 04:35:30', '2023-04-12 04:35:30'),
(142, 'Battry', 'created', 'App\\Models\\Employee', 'created', 27, 'App\\Models\\User', 1, '{\"attributes\": {\"id\": 27, \"name\": \"ZAHOOR ALI\", \"phone\": null, \"created_at\": \"2023-04-12 06:35:36\", \"deleted_at\": null, \"updated_at\": \"2023-04-12 06:35:36\"}}', NULL, '2023-04-12 04:35:36', '2023-04-12 04:35:36'),
(143, 'Battry', 'created', 'App\\Models\\Employee', 'created', 28, 'App\\Models\\User', 1, '{\"attributes\": {\"id\": 28, \"name\": \"GULAB\", \"phone\": null, \"created_at\": \"2023-04-12 06:35:42\", \"deleted_at\": null, \"updated_at\": \"2023-04-12 06:35:42\"}}', NULL, '2023-04-12 04:35:42', '2023-04-12 04:35:42'),
(144, 'Battry', 'created', 'App\\Models\\Employee', 'created', 29, 'App\\Models\\User', 1, '{\"attributes\": {\"id\": 29, \"name\": \"JALAL\", \"phone\": null, \"created_at\": \"2023-04-12 06:35:46\", \"deleted_at\": null, \"updated_at\": \"2023-04-12 06:35:46\"}}', NULL, '2023-04-12 04:35:46', '2023-04-12 04:35:46'),
(145, 'Battry', 'created', 'App\\Models\\Employee', 'created', 30, 'App\\Models\\User', 1, '{\"attributes\": {\"id\": 30, \"name\": \"LIAQAT\", \"phone\": null, \"created_at\": \"2023-04-12 06:35:51\", \"deleted_at\": null, \"updated_at\": \"2023-04-12 06:35:51\"}}', NULL, '2023-04-12 04:35:51', '2023-04-12 04:35:51'),
(146, 'Battry', 'created', 'App\\Models\\Employee', 'created', 31, 'App\\Models\\User', 1, '{\"attributes\": {\"id\": 31, \"name\": \"MUKHTYAR\", \"phone\": null, \"created_at\": \"2023-04-12 06:35:58\", \"deleted_at\": null, \"updated_at\": \"2023-04-12 06:35:58\"}}', NULL, '2023-04-12 04:35:58', '2023-04-12 04:35:58'),
(147, 'Battry', 'created', 'App\\Models\\Employee', 'created', 32, 'App\\Models\\User', 1, '{\"attributes\": {\"id\": 32, \"name\": \"HAFEEZ\", \"phone\": null, \"created_at\": \"2023-04-12 06:36:15\", \"deleted_at\": null, \"updated_at\": \"2023-04-12 06:36:15\"}}', NULL, '2023-04-12 04:36:15', '2023-04-12 04:36:15'),
(148, 'Battry', 'created', 'App\\Models\\Employee', 'created', 33, 'App\\Models\\User', 1, '{\"attributes\": {\"id\": 33, \"name\": \"EHSAN\", \"phone\": null, \"created_at\": \"2023-04-12 06:36:21\", \"deleted_at\": null, \"updated_at\": \"2023-04-12 06:36:21\"}}', NULL, '2023-04-12 04:36:21', '2023-04-12 04:36:21'),
(149, 'Battry', 'created', 'App\\Models\\Employee', 'created', 34, 'App\\Models\\User', 1, '{\"attributes\": {\"id\": 34, \"name\": \"ABDUL GHANI\", \"phone\": null, \"created_at\": \"2023-04-12 06:36:32\", \"deleted_at\": null, \"updated_at\": \"2023-04-12 06:36:32\"}}', NULL, '2023-04-12 04:36:32', '2023-04-12 04:36:32'),
(150, 'Battry', 'created', 'App\\Models\\Employee', 'created', 35, 'App\\Models\\User', 1, '{\"attributes\": {\"id\": 35, \"name\": \"ALI RAZA\", \"phone\": null, \"created_at\": \"2023-04-12 06:36:37\", \"deleted_at\": null, \"updated_at\": \"2023-04-12 06:36:37\"}}', NULL, '2023-04-12 04:36:37', '2023-04-12 04:36:37'),
(151, 'Battry', 'created', 'App\\Models\\Employee', 'created', 36, 'App\\Models\\User', 1, '{\"attributes\": {\"id\": 36, \"name\": \"HIDAYATULLAH\", \"phone\": null, \"created_at\": \"2023-04-12 06:36:46\", \"deleted_at\": null, \"updated_at\": \"2023-04-12 06:36:46\"}}', NULL, '2023-04-12 04:36:46', '2023-04-12 04:36:46'),
(152, 'Battry', 'created', 'App\\Models\\Employee', 'created', 37, 'App\\Models\\User', 1, '{\"attributes\": {\"id\": 37, \"name\": \"ALAM\", \"phone\": null, \"created_at\": \"2023-04-12 06:36:53\", \"deleted_at\": null, \"updated_at\": \"2023-04-12 06:36:53\"}}', NULL, '2023-04-12 04:36:53', '2023-04-12 04:36:53'),
(153, 'Battry', 'created', 'App\\Models\\Employee', 'created', 38, 'App\\Models\\User', 1, '{\"attributes\": {\"id\": 38, \"name\": \"SALMAN\", \"phone\": null, \"created_at\": \"2023-04-12 06:37:11\", \"deleted_at\": null, \"updated_at\": \"2023-04-12 06:37:11\"}}', NULL, '2023-04-12 04:37:11', '2023-04-12 04:37:11'),
(154, 'Battry', 'created', 'App\\Models\\Employee', 'created', 39, 'App\\Models\\User', 1, '{\"attributes\": {\"id\": 39, \"name\": \"ABDUL REHMAN\", \"phone\": null, \"created_at\": \"2023-04-12 06:37:19\", \"deleted_at\": null, \"updated_at\": \"2023-04-12 06:37:19\"}}', NULL, '2023-04-12 04:37:19', '2023-04-12 04:37:19'),
(155, 'Battry', 'created', 'App\\Models\\Employee', 'created', 40, 'App\\Models\\User', 1, '{\"attributes\": {\"id\": 40, \"name\": \"MURAD\", \"phone\": null, \"created_at\": \"2023-04-12 06:38:15\", \"deleted_at\": null, \"updated_at\": \"2023-04-12 06:38:15\"}}', NULL, '2023-04-12 04:38:15', '2023-04-12 04:38:15'),
(156, 'Battry', 'created', 'App\\Models\\Employee', 'created', 41, 'App\\Models\\User', 1, '{\"attributes\": {\"id\": 41, \"name\": \"ABDULLAH\", \"phone\": null, \"created_at\": \"2023-04-12 06:38:20\", \"deleted_at\": null, \"updated_at\": \"2023-04-12 06:38:20\"}}', NULL, '2023-04-12 04:38:20', '2023-04-12 04:38:20'),
(157, 'Battry', 'created', 'App\\Models\\Employee', 'created', 42, 'App\\Models\\User', 1, '{\"attributes\": {\"id\": 42, \"name\": \"RASOOL BAKHSH\", \"phone\": null, \"created_at\": \"2023-04-12 06:38:25\", \"deleted_at\": null, \"updated_at\": \"2023-04-12 06:38:25\"}}', NULL, '2023-04-12 04:38:25', '2023-04-12 04:38:25'),
(158, 'Battry', 'created', 'App\\Models\\Employee', 'created', 43, 'App\\Models\\User', 1, '{\"attributes\": {\"id\": 43, \"name\": \"ASGHAR\", \"phone\": null, \"created_at\": \"2023-04-12 06:38:29\", \"deleted_at\": null, \"updated_at\": \"2023-04-12 06:38:29\"}}', NULL, '2023-04-12 04:38:29', '2023-04-12 04:38:29'),
(159, 'Battry', 'created', 'App\\Models\\Employee', 'created', 44, 'App\\Models\\User', 1, '{\"attributes\": {\"id\": 44, \"name\": \"SHEHZAD\", \"phone\": null, \"created_at\": \"2023-04-12 06:38:38\", \"deleted_at\": null, \"updated_at\": \"2023-04-12 06:38:38\"}}', NULL, '2023-04-12 04:38:38', '2023-04-12 04:38:38'),
(160, 'Battry', 'created', 'App\\Models\\Employee', 'created', 45, 'App\\Models\\User', 1, '{\"attributes\": {\"id\": 45, \"name\": \"WAQAR\", \"phone\": null, \"created_at\": \"2023-04-12 06:38:44\", \"deleted_at\": null, \"updated_at\": \"2023-04-12 06:38:44\"}}', NULL, '2023-04-12 04:38:44', '2023-04-12 04:38:44'),
(161, 'Battry', 'created', 'App\\Models\\Employee', 'created', 46, 'App\\Models\\User', 1, '{\"attributes\": {\"id\": 46, \"name\": \"HASIL\", \"phone\": null, \"created_at\": \"2023-04-12 06:39:09\", \"deleted_at\": null, \"updated_at\": \"2023-04-12 06:39:09\"}}', NULL, '2023-04-12 04:39:09', '2023-04-12 04:39:09'),
(162, 'Battry', 'created', 'App\\Models\\Employee', 'created', 47, 'App\\Models\\User', 1, '{\"attributes\": {\"id\": 47, \"name\": \"MANIK\", \"phone\": null, \"created_at\": \"2023-04-12 06:39:13\", \"deleted_at\": null, \"updated_at\": \"2023-04-12 06:39:13\"}}', NULL, '2023-04-12 04:39:13', '2023-04-12 04:39:13'),
(163, 'Battry', 'created', 'App\\Models\\Employee', 'created', 48, 'App\\Models\\User', 1, '{\"attributes\": {\"id\": 48, \"name\": \"ANWAR RIND\", \"phone\": null, \"created_at\": \"2023-04-12 06:39:18\", \"deleted_at\": null, \"updated_at\": \"2023-04-12 06:39:18\"}}', NULL, '2023-04-12 04:39:18', '2023-04-12 04:39:18'),
(164, 'Battry', 'created', 'App\\Models\\Employee', 'created', 49, 'App\\Models\\User', 1, '{\"attributes\": {\"id\": 49, \"name\": \"MUHAMMAD KHAN\", \"phone\": null, \"created_at\": \"2023-04-12 06:39:28\", \"deleted_at\": null, \"updated_at\": \"2023-04-12 06:39:28\"}}', NULL, '2023-04-12 04:39:28', '2023-04-12 04:39:28'),
(165, 'Battry', 'created', 'App\\Models\\Employee', 'created', 50, 'App\\Models\\User', 1, '{\"attributes\": {\"id\": 50, \"name\": \"DEEN MUHAMMAD\", \"phone\": null, \"created_at\": \"2023-04-12 06:39:35\", \"deleted_at\": null, \"updated_at\": \"2023-04-12 06:39:35\"}}', NULL, '2023-04-12 04:39:35', '2023-04-12 04:39:35'),
(166, 'Battry', 'created', 'App\\Models\\Employee', 'created', 51, 'App\\Models\\User', 1, '{\"attributes\": {\"id\": 51, \"name\": \"FAUJI CAMP\", \"phone\": null, \"created_at\": \"2023-04-12 06:43:31\", \"deleted_at\": null, \"updated_at\": \"2023-04-12 06:43:31\"}}', NULL, '2023-04-12 04:43:31', '2023-04-12 04:43:31'),
(167, 'Battry', 'created', 'App\\Models\\Employee', 'created', 52, 'App\\Models\\User', 1, '{\"attributes\": {\"id\": 52, \"name\": \"ZAMEER HUSSAIN\", \"phone\": null, \"created_at\": \"2023-04-12 07:24:59\", \"deleted_at\": null, \"updated_at\": \"2023-04-12 07:24:59\"}}', NULL, '2023-04-12 05:24:59', '2023-04-12 05:24:59');
INSERT INTO `activity_log` (`id`, `log_name`, `description`, `subject_type`, `event`, `subject_id`, `causer_type`, `causer_id`, `properties`, `batch_uuid`, `created_at`, `updated_at`) VALUES
(168, 'Battry', 'created', 'App\\Models\\Employee', 'created', 53, 'App\\Models\\User', 1, '{\"attributes\": {\"id\": 53, \"name\": \"MEER MUHAMMAD\", \"phone\": null, \"created_at\": \"2023-04-12 07:25:12\", \"deleted_at\": null, \"updated_at\": \"2023-04-12 07:25:12\"}}', NULL, '2023-04-12 05:25:12', '2023-04-12 05:25:12'),
(169, 'Battry', 'created', 'App\\Models\\Employee', 'created', 54, 'App\\Models\\User', 1, '{\"attributes\": {\"id\": 54, \"name\": \"MEER MUHAMMAD\", \"phone\": null, \"created_at\": \"2023-04-12 07:25:33\", \"deleted_at\": null, \"updated_at\": \"2023-04-12 07:25:33\"}}', NULL, '2023-04-12 05:25:33', '2023-04-12 05:25:33'),
(170, 'Battry', 'created', 'App\\Models\\Employee', 'created', 55, 'App\\Models\\User', 1, '{\"attributes\": {\"id\": 55, \"name\": \"MEER MUHAMMAD\", \"phone\": null, \"created_at\": \"2023-04-12 07:25:52\", \"deleted_at\": null, \"updated_at\": \"2023-04-12 07:25:52\"}}', NULL, '2023-04-12 05:25:52', '2023-04-12 05:25:52'),
(171, 'Battry', 'created', 'App\\Models\\Employee', 'created', 56, 'App\\Models\\User', 1, '{\"attributes\": {\"id\": 56, \"name\": \"FAIZAN\", \"phone\": null, \"created_at\": \"2023-04-12 07:54:53\", \"deleted_at\": null, \"updated_at\": \"2023-04-12 07:54:53\"}}', NULL, '2023-04-12 05:54:53', '2023-04-12 05:54:53'),
(172, 'Battry', 'created', 'App\\Models\\Employee', 'created', 57, 'App\\Models\\User', 1, '{\"attributes\": {\"id\": 57, \"name\": \"KHADIM HUSSAIN SENIOR\", \"phone\": null, \"created_at\": \"2023-04-12 07:55:20\", \"deleted_at\": null, \"updated_at\": \"2023-04-12 07:55:20\"}}', NULL, '2023-04-12 05:55:20', '2023-04-12 05:55:20'),
(173, 'Battry', 'created', 'App\\Models\\Employee', 'created', 58, 'App\\Models\\User', 1, '{\"attributes\": {\"id\": 58, \"name\": \"ZAHOOR\", \"phone\": null, \"created_at\": \"2023-04-12 07:56:27\", \"deleted_at\": null, \"updated_at\": \"2023-04-12 07:56:27\"}}', NULL, '2023-04-12 05:56:27', '2023-04-12 05:56:27'),
(174, 'Battry', 'created', 'App\\Models\\Employee', 'created', 59, 'App\\Models\\User', 1, '{\"attributes\": {\"id\": 59, \"name\": \"EHSAN SENIOR\", \"phone\": null, \"created_at\": \"2023-04-12 07:58:21\", \"deleted_at\": null, \"updated_at\": \"2023-04-12 07:58:21\"}}', NULL, '2023-04-12 05:58:21', '2023-04-12 05:58:21'),
(175, 'Battry', 'created', 'App\\Models\\Employee', 'created', 60, 'App\\Models\\User', 1, '{\"attributes\": {\"id\": 60, \"name\": \"MANTHAR\", \"phone\": null, \"created_at\": \"2023-04-12 08:07:21\", \"deleted_at\": null, \"updated_at\": \"2023-04-12 08:07:21\"}}', NULL, '2023-04-12 06:07:21', '2023-04-12 06:07:21'),
(176, 'Battry', 'created', 'App\\Models\\Employee', 'created', 61, 'App\\Models\\User', 1, '{\"attributes\": {\"id\": 61, \"name\": \"SAIFULLAH\", \"phone\": null, \"created_at\": \"2023-04-12 08:08:41\", \"deleted_at\": null, \"updated_at\": \"2023-04-12 08:08:41\"}}', NULL, '2023-04-12 06:08:41', '2023-04-12 06:08:41'),
(177, 'Battry', 'created', 'App\\Models\\Employee', 'created', 62, 'App\\Models\\User', 1, '{\"attributes\": {\"id\": 62, \"name\": \"MAANAK\", \"phone\": null, \"created_at\": \"2023-04-12 08:08:57\", \"deleted_at\": null, \"updated_at\": \"2023-04-12 08:08:57\"}}', NULL, '2023-04-12 06:08:57', '2023-04-12 06:08:57'),
(178, 'Battry', 'created', 'App\\Models\\Employee', 'created', 63, 'App\\Models\\User', 1, '{\"attributes\": {\"id\": 63, \"name\": \"MANAK\", \"phone\": null, \"created_at\": \"2023-04-12 08:09:00\", \"deleted_at\": null, \"updated_at\": \"2023-04-12 08:09:00\"}}', NULL, '2023-04-12 06:09:00', '2023-04-12 06:09:00'),
(179, 'Battry', 'created', 'App\\Models\\Employee', 'created', 64, 'App\\Models\\User', 1, '{\"attributes\": {\"id\": 64, \"name\": \"RASOOL BUKHSH\", \"phone\": null, \"created_at\": \"2023-04-12 08:09:55\", \"deleted_at\": null, \"updated_at\": \"2023-04-12 08:09:55\"}}', NULL, '2023-04-12 06:09:55', '2023-04-12 06:09:55'),
(180, 'Battery', 'created', 'App\\Models\\Battery', 'created', 236, 'App\\Models\\User', 1, '{\"attributes\": {\"id\": 236, \"name\": \"618\", \"created_at\": \"2023-04-12 08:11:51\", \"deleted_at\": null, \"updated_at\": \"2023-04-12 08:11:51\"}}', NULL, '2023-04-12 06:11:52', '2023-04-12 06:11:52'),
(181, 'Battery', 'created', 'App\\Models\\Battery', 'created', 237, 'App\\Models\\User', 1, '{\"attributes\": {\"id\": 237, \"name\": \"774\", \"created_at\": \"2023-04-12 08:12:34\", \"deleted_at\": null, \"updated_at\": \"2023-04-12 08:12:34\"}}', NULL, '2023-04-12 06:12:34', '2023-04-12 06:12:34'),
(182, 'Battery', 'created', 'App\\Models\\Battery', 'created', 238, 'App\\Models\\User', 1, '{\"attributes\": {\"id\": 238, \"name\": \"568\", \"created_at\": \"2023-04-12 08:13:21\", \"deleted_at\": null, \"updated_at\": \"2023-04-12 08:13:21\"}}', NULL, '2023-04-12 06:13:21', '2023-04-12 06:13:21'),
(183, 'Battery', 'created', 'App\\Models\\Battery', 'created', 239, 'App\\Models\\User', 1, '{\"attributes\": {\"id\": 239, \"name\": \"780\", \"created_at\": \"2023-04-12 08:14:17\", \"deleted_at\": null, \"updated_at\": \"2023-04-12 08:14:17\"}}', NULL, '2023-04-12 06:14:17', '2023-04-12 06:14:17'),
(184, 'Battery', 'created', 'App\\Models\\Battery', 'created', 240, 'App\\Models\\User', 1, '{\"attributes\": {\"id\": 240, \"name\": \"582\", \"created_at\": \"2023-04-12 08:15:06\", \"deleted_at\": null, \"updated_at\": \"2023-04-12 08:15:06\"}}', NULL, '2023-04-12 06:15:06', '2023-04-12 06:15:06'),
(185, 'Battery', 'created', 'App\\Models\\Battery', 'created', 241, 'App\\Models\\User', 1, '{\"attributes\": {\"id\": 241, \"name\": \"694\", \"created_at\": \"2023-04-12 08:16:54\", \"deleted_at\": null, \"updated_at\": \"2023-04-12 08:16:54\"}}', NULL, '2023-04-12 06:16:54', '2023-04-12 06:16:54'),
(186, 'Battery', 'created', 'App\\Models\\Battery', 'created', 242, 'App\\Models\\User', 1, '{\"attributes\": {\"id\": 242, \"name\": \"587\", \"created_at\": \"2023-04-12 08:29:03\", \"deleted_at\": null, \"updated_at\": \"2023-04-12 08:29:03\"}}', NULL, '2023-04-12 06:29:03', '2023-04-12 06:29:03'),
(187, 'Battery', 'created', 'App\\Models\\Battery', 'created', 243, 'App\\Models\\User', 1, '{\"attributes\": {\"id\": 243, \"name\": \"648\", \"created_at\": \"2023-04-12 08:41:00\", \"deleted_at\": null, \"updated_at\": \"2023-04-12 08:41:00\"}}', NULL, '2023-04-12 06:41:00', '2023-04-12 06:41:00'),
(188, 'Battery', 'created', 'App\\Models\\Battery', 'created', 244, 'App\\Models\\User', 1, '{\"attributes\": {\"id\": 244, \"name\": \"845\", \"created_at\": \"2023-04-12 08:43:22\", \"deleted_at\": null, \"updated_at\": \"2023-04-12 08:43:22\"}}', NULL, '2023-04-12 06:43:22', '2023-04-12 06:43:22'),
(189, 'Battery', 'created', 'App\\Models\\Battery', 'created', 245, 'App\\Models\\User', 1, '{\"attributes\": {\"id\": 245, \"name\": \"520\", \"created_at\": \"2023-04-12 08:47:26\", \"deleted_at\": null, \"updated_at\": \"2023-04-12 08:47:26\"}}', NULL, '2023-04-12 06:47:26', '2023-04-12 06:47:26'),
(190, 'Battery', 'created', 'App\\Models\\Battery', 'created', 246, 'App\\Models\\User', 1, '{\"attributes\": {\"id\": 246, \"name\": \"717\", \"created_at\": \"2023-04-12 08:49:46\", \"deleted_at\": null, \"updated_at\": \"2023-04-12 08:49:46\"}}', NULL, '2023-04-12 06:49:46', '2023-04-12 06:49:46'),
(191, 'Battery', 'created', 'App\\Models\\Battery', 'created', 247, 'App\\Models\\User', 1, '{\"attributes\": {\"id\": 247, \"name\": \"579\", \"created_at\": \"2023-04-12 08:51:04\", \"deleted_at\": null, \"updated_at\": \"2023-04-12 08:51:04\"}}', NULL, '2023-04-12 06:51:04', '2023-04-12 06:51:04'),
(192, 'Battery', 'created', 'App\\Models\\Battery', 'created', 248, 'App\\Models\\User', 1, '{\"attributes\": {\"id\": 248, \"name\": \"839\", \"created_at\": \"2023-04-12 08:51:11\", \"deleted_at\": null, \"updated_at\": \"2023-04-12 08:51:11\"}}', NULL, '2023-04-12 06:51:11', '2023-04-12 06:51:11'),
(193, 'Battery', 'created', 'App\\Models\\Battery', 'created', 249, 'App\\Models\\User', 1, '{\"attributes\": {\"id\": 249, \"name\": \"806\", \"created_at\": \"2023-04-12 08:54:55\", \"deleted_at\": null, \"updated_at\": \"2023-04-12 08:54:55\"}}', NULL, '2023-04-12 06:54:55', '2023-04-12 06:54:55'),
(194, 'Battery', 'created', 'App\\Models\\Battery', 'created', 250, 'App\\Models\\User', 1, '{\"attributes\": {\"id\": 250, \"name\": \"804\", \"created_at\": \"2023-04-12 08:56:15\", \"deleted_at\": null, \"updated_at\": \"2023-04-12 08:56:15\"}}', NULL, '2023-04-12 06:56:15', '2023-04-12 06:56:15'),
(195, 'Battry', 'created', 'App\\Models\\Employee', 'created', 65, 'App\\Models\\User', 1, '{\"attributes\": {\"id\": 65, \"name\": \"ALI\", \"phone\": null, \"created_at\": \"2023-04-12 08:57:10\", \"deleted_at\": null, \"updated_at\": \"2023-04-12 08:57:10\"}}', NULL, '2023-04-12 06:57:10', '2023-04-12 06:57:10'),
(196, 'Battery', 'created', 'App\\Models\\Battery', 'created', 251, 'App\\Models\\User', 1, '{\"attributes\": {\"id\": 251, \"name\": \"518\", \"created_at\": \"2023-04-12 08:58:05\", \"deleted_at\": null, \"updated_at\": \"2023-04-12 08:58:05\"}}', NULL, '2023-04-12 06:58:05', '2023-04-12 06:58:05'),
(197, 'Battery', 'created', 'App\\Models\\Battery', 'created', 252, 'App\\Models\\User', 1, '{\"attributes\": {\"id\": 252, \"name\": \"615\", \"created_at\": \"2023-04-12 09:06:14\", \"deleted_at\": null, \"updated_at\": \"2023-04-12 09:06:14\"}}', NULL, '2023-04-12 07:06:14', '2023-04-12 07:06:14'),
(198, 'Battery', 'created', 'App\\Models\\Battery', 'created', 253, 'App\\Models\\User', 1, '{\"attributes\": {\"id\": 253, \"name\": \"757\", \"created_at\": \"2023-04-12 09:07:39\", \"deleted_at\": null, \"updated_at\": \"2023-04-12 09:07:39\"}}', NULL, '2023-04-12 07:07:39', '2023-04-12 07:07:39'),
(199, 'Battery', 'created', 'App\\Models\\Battery', 'created', 254, 'App\\Models\\User', 1, '{\"attributes\": {\"id\": 254, \"name\": \"578\", \"created_at\": \"2023-04-12 09:09:30\", \"deleted_at\": null, \"updated_at\": \"2023-04-12 09:09:30\"}}', NULL, '2023-04-12 07:09:30', '2023-04-12 07:09:30'),
(200, 'Battery', 'created', 'App\\Models\\Battery', 'created', 255, 'App\\Models\\User', 1, '{\"attributes\": {\"id\": 255, \"name\": \"623\", \"created_at\": \"2023-04-12 09:10:57\", \"deleted_at\": null, \"updated_at\": \"2023-04-12 09:10:57\"}}', NULL, '2023-04-12 07:10:57', '2023-04-12 07:10:57'),
(201, 'Battery', 'created', 'App\\Models\\Battery', 'created', 256, 'App\\Models\\User', 1, '{\"attributes\": {\"id\": 256, \"name\": \"565\", \"created_at\": \"2023-04-12 09:16:50\", \"deleted_at\": null, \"updated_at\": \"2023-04-12 09:16:50\"}}', NULL, '2023-04-12 07:16:50', '2023-04-12 07:16:50'),
(202, 'Battery', 'created', 'App\\Models\\Battery', 'created', 257, 'App\\Models\\User', 1, '{\"attributes\": {\"id\": 257, \"name\": \"838\", \"created_at\": \"2023-04-12 09:18:26\", \"deleted_at\": null, \"updated_at\": \"2023-04-12 09:18:26\"}}', NULL, '2023-04-12 07:18:26', '2023-04-12 07:18:26'),
(203, 'authentication', 'Logged-in', 'App\\Models\\User', NULL, 1, NULL, NULL, '[]', NULL, '2023-04-12 08:38:59', '2023-04-12 08:38:59'),
(204, 'authentication', 'Logged-in', 'App\\Models\\User', NULL, 1, NULL, NULL, '[]', NULL, '2023-04-12 13:22:09', '2023-04-12 13:22:09'),
(205, 'authentication', 'Logged-in', 'App\\Models\\User', NULL, 1, NULL, NULL, '[]', NULL, '2023-04-12 16:32:02', '2023-04-12 16:32:02'),
(206, 'Battery', 'created', 'App\\Models\\Battery', 'created', 258, 'App\\Models\\User', 1, '{\"attributes\": {\"id\": 258, \"name\": \"542\", \"created_at\": \"2023-04-12 18:36:14\", \"deleted_at\": null, \"updated_at\": \"2023-04-12 18:36:14\"}}', NULL, '2023-04-12 16:36:14', '2023-04-12 16:36:14'),
(207, 'authentication', 'Logged-in', 'App\\Models\\User', NULL, 1, NULL, NULL, '[]', NULL, '2023-04-12 16:43:13', '2023-04-12 16:43:13'),
(208, 'Battery', 'created', 'App\\Models\\Battery', 'created', 259, 'App\\Models\\User', 1, '{\"attributes\": {\"id\": 259, \"name\": \"538\", \"created_at\": \"2023-04-12 18:44:18\", \"deleted_at\": null, \"updated_at\": \"2023-04-12 18:44:18\"}}', NULL, '2023-04-12 16:44:18', '2023-04-12 16:44:18'),
(209, 'Battery', 'created', 'App\\Models\\Battery', 'created', 260, 'App\\Models\\User', 1, '{\"attributes\": {\"id\": 260, \"name\": \"626\", \"created_at\": \"2023-04-12 18:45:58\", \"deleted_at\": null, \"updated_at\": \"2023-04-12 18:45:58\"}}', NULL, '2023-04-12 16:45:58', '2023-04-12 16:45:58'),
(210, 'Battery', 'created', 'App\\Models\\Battery', 'created', 261, 'App\\Models\\User', 1, '{\"attributes\": {\"id\": 261, \"name\": \"586\", \"created_at\": \"2023-04-12 18:48:41\", \"deleted_at\": null, \"updated_at\": \"2023-04-12 18:48:41\"}}', NULL, '2023-04-12 16:48:41', '2023-04-12 16:48:41'),
(211, 'Battery', 'created', 'App\\Models\\Battery', 'created', 262, 'App\\Models\\User', 1, '{\"attributes\": {\"id\": 262, \"name\": \"567\", \"created_at\": \"2023-04-12 18:50:11\", \"deleted_at\": null, \"updated_at\": \"2023-04-12 18:50:11\"}}', NULL, '2023-04-12 16:50:11', '2023-04-12 16:50:11'),
(212, 'Battry', 'created', 'App\\Models\\Employee', 'created', 66, 'App\\Models\\User', 1, '{\"attributes\": {\"id\": 66, \"name\": \"ASAD ALI\", \"phone\": null, \"created_at\": \"2023-04-12 18:52:15\", \"deleted_at\": null, \"updated_at\": \"2023-04-12 18:52:15\"}}', NULL, '2023-04-12 16:52:15', '2023-04-12 16:52:15'),
(213, 'Battery', 'created', 'App\\Models\\Battery', 'created', 263, 'App\\Models\\User', 1, '{\"attributes\": {\"id\": 263, \"name\": \"563\", \"created_at\": \"2023-04-12 18:54:18\", \"deleted_at\": null, \"updated_at\": \"2023-04-12 18:54:18\"}}', NULL, '2023-04-12 16:54:18', '2023-04-12 16:54:18'),
(214, 'Battery', 'created', 'App\\Models\\Battery', 'created', 264, 'App\\Models\\User', 1, '{\"attributes\": {\"id\": 264, \"name\": \"570\", \"created_at\": \"2023-04-12 18:56:07\", \"deleted_at\": null, \"updated_at\": \"2023-04-12 18:56:07\"}}', NULL, '2023-04-12 16:56:07', '2023-04-12 16:56:07'),
(215, 'Battery', 'created', 'App\\Models\\Battery', 'created', 265, 'App\\Models\\User', 1, '{\"attributes\": {\"id\": 265, \"name\": \"655\", \"created_at\": \"2023-04-12 19:00:58\", \"deleted_at\": null, \"updated_at\": \"2023-04-12 19:00:58\"}}', NULL, '2023-04-12 17:00:58', '2023-04-12 17:00:58'),
(216, 'Battery', 'created', 'App\\Models\\Battery', 'created', 266, 'App\\Models\\User', 1, '{\"attributes\": {\"id\": 266, \"name\": \"KHADIM HUSSAIN LAYOUT\", \"created_at\": \"2023-04-12 19:02:00\", \"deleted_at\": null, \"updated_at\": \"2023-04-12 19:02:00\"}}', NULL, '2023-04-12 17:02:00', '2023-04-12 17:02:00'),
(217, 'Battry', 'created', 'App\\Models\\Employee', 'created', 67, 'App\\Models\\User', 1, '{\"attributes\": {\"id\": 67, \"name\": \"KHADIM HUSSAIN LAYOUT\", \"phone\": null, \"created_at\": \"2023-04-12 19:02:21\", \"deleted_at\": null, \"updated_at\": \"2023-04-12 19:02:21\"}}', NULL, '2023-04-12 17:02:21', '2023-04-12 17:02:21'),
(218, 'Battery', 'created', 'App\\Models\\Battery', 'created', 267, 'App\\Models\\User', 1, '{\"attributes\": {\"id\": 267, \"name\": \"547\", \"created_at\": \"2023-04-12 19:03:31\", \"deleted_at\": null, \"updated_at\": \"2023-04-12 19:03:31\"}}', NULL, '2023-04-12 17:03:31', '2023-04-12 17:03:31'),
(219, 'Battry', 'created', 'App\\Models\\Employee', 'created', 68, 'App\\Models\\User', 1, '{\"attributes\": {\"id\": 68, \"name\": \"HAYAT DRILING\", \"phone\": null, \"created_at\": \"2023-04-12 19:08:55\", \"deleted_at\": null, \"updated_at\": \"2023-04-12 19:08:55\"}}', NULL, '2023-04-12 17:08:55', '2023-04-12 17:08:55'),
(220, 'Battry', 'created', 'App\\Models\\Employee', 'created', 69, 'App\\Models\\User', 1, '{\"attributes\": {\"id\": 69, \"name\": \"HUSSAIN BUX LAYOUT\", \"phone\": null, \"created_at\": \"2023-04-12 19:11:13\", \"deleted_at\": null, \"updated_at\": \"2023-04-12 19:11:13\"}}', NULL, '2023-04-12 17:11:13', '2023-04-12 17:11:13'),
(221, 'Battery', 'created', 'App\\Models\\Battery', 'created', 268, 'App\\Models\\User', 1, '{\"attributes\": {\"id\": 268, \"name\": \"575\", \"created_at\": \"2023-04-12 19:13:22\", \"deleted_at\": null, \"updated_at\": \"2023-04-12 19:13:22\"}}', NULL, '2023-04-12 17:13:22', '2023-04-12 17:13:22'),
(222, 'Battry', 'created', 'App\\Models\\Employee', 'created', 70, 'App\\Models\\User', 1, '{\"attributes\": {\"id\": 70, \"name\": \"NAZEER QASRANI\", \"phone\": null, \"created_at\": \"2023-04-12 19:14:34\", \"deleted_at\": null, \"updated_at\": \"2023-04-12 19:14:34\"}}', NULL, '2023-04-12 17:14:34', '2023-04-12 17:14:34'),
(223, 'Battery', 'created', 'App\\Models\\Battery', 'created', 269, 'App\\Models\\User', 1, '{\"attributes\": {\"id\": 269, \"name\": \"821\", \"created_at\": \"2023-04-12 19:15:13\", \"deleted_at\": null, \"updated_at\": \"2023-04-12 19:15:13\"}}', NULL, '2023-04-12 17:15:13', '2023-04-12 17:15:13'),
(224, 'Battry', 'created', 'App\\Models\\Employee', 'created', 71, 'App\\Models\\User', 1, '{\"attributes\": {\"id\": 71, \"name\": \"ASLAM DRILLING\", \"phone\": null, \"created_at\": \"2023-04-12 19:18:05\", \"deleted_at\": null, \"updated_at\": \"2023-04-12 19:18:05\"}}', NULL, '2023-04-12 17:18:05', '2023-04-12 17:18:05'),
(225, 'Battry', 'created', 'App\\Models\\Employee', 'created', 72, 'App\\Models\\User', 1, '{\"attributes\": {\"id\": 72, \"name\": \"HAIDER BUX DRILLING\", \"phone\": null, \"created_at\": \"2023-04-12 19:19:46\", \"deleted_at\": null, \"updated_at\": \"2023-04-12 19:19:46\"}}', NULL, '2023-04-12 17:19:46', '2023-04-12 17:19:46'),
(226, 'Battery', 'created', 'App\\Models\\Battery', 'created', 270, 'App\\Models\\User', 1, '{\"attributes\": {\"id\": 270, \"name\": \"592\", \"created_at\": \"2023-04-12 19:48:01\", \"deleted_at\": null, \"updated_at\": \"2023-04-12 19:48:01\"}}', NULL, '2023-04-12 17:48:01', '2023-04-12 17:48:01'),
(227, 'authentication', 'Logged-in', 'App\\Models\\User', NULL, 1, NULL, NULL, '[]', NULL, '2023-04-13 01:36:40', '2023-04-13 01:36:40'),
(228, 'authentication', 'Logged-in', 'App\\Models\\User', NULL, 1, NULL, NULL, '[]', NULL, '2023-04-13 05:56:20', '2023-04-13 05:56:20'),
(229, 'authentication', 'Logged-in', 'App\\Models\\User', NULL, 1, NULL, NULL, '[]', NULL, '2023-04-13 12:55:53', '2023-04-13 12:55:53'),
(230, 'authentication', 'Logged-in', 'App\\Models\\User', NULL, 1, NULL, NULL, '[]', NULL, '2023-04-13 13:28:53', '2023-04-13 13:28:53'),
(231, 'Battery', 'created', 'App\\Models\\Battery', 'created', 271, 'App\\Models\\User', 1, '{\"attributes\": {\"id\": 271, \"name\": \"556\", \"created_at\": \"2023-04-13 15:39:16\", \"deleted_at\": null, \"updated_at\": \"2023-04-13 15:39:16\"}}', NULL, '2023-04-13 13:39:16', '2023-04-13 13:39:16'),
(232, 'Battery', 'created', 'App\\Models\\Battery', 'created', 272, 'App\\Models\\User', 1, '{\"attributes\": {\"id\": 272, \"name\": \"553\", \"created_at\": \"2023-04-13 15:41:48\", \"deleted_at\": null, \"updated_at\": \"2023-04-13 15:41:48\"}}', NULL, '2023-04-13 13:41:48', '2023-04-13 13:41:48'),
(233, 'Battery', 'created', 'App\\Models\\Battery', 'created', 273, 'App\\Models\\User', 1, '{\"attributes\": {\"id\": 273, \"name\": \"533\", \"created_at\": \"2023-04-13 15:43:22\", \"deleted_at\": null, \"updated_at\": \"2023-04-13 15:43:22\"}}', NULL, '2023-04-13 13:43:22', '2023-04-13 13:43:22'),
(234, 'Battery', 'created', 'App\\Models\\Battery', 'created', 274, 'App\\Models\\User', 1, '{\"attributes\": {\"id\": 274, \"name\": \"580\", \"created_at\": \"2023-04-13 15:46:08\", \"deleted_at\": null, \"updated_at\": \"2023-04-13 15:46:08\"}}', NULL, '2023-04-13 13:46:08', '2023-04-13 13:46:08'),
(235, 'Battery', 'created', 'App\\Models\\Battery', 'created', 275, 'App\\Models\\User', 1, '{\"attributes\": {\"id\": 275, \"name\": \"560\", \"created_at\": \"2023-04-13 15:55:51\", \"deleted_at\": null, \"updated_at\": \"2023-04-13 15:55:51\"}}', NULL, '2023-04-13 13:55:51', '2023-04-13 13:55:51'),
(236, 'Battery', 'created', 'App\\Models\\Battery', 'created', 276, 'App\\Models\\User', 1, '{\"attributes\": {\"id\": 276, \"name\": \"583\", \"created_at\": \"2023-04-13 17:51:29\", \"deleted_at\": null, \"updated_at\": \"2023-04-13 17:51:29\"}}', NULL, '2023-04-13 15:51:29', '2023-04-13 15:51:29'),
(237, 'Battery', 'created', 'App\\Models\\Battery', 'created', 277, 'App\\Models\\User', 1, '{\"attributes\": {\"id\": 277, \"name\": \"662\", \"created_at\": \"2023-04-13 17:55:13\", \"deleted_at\": null, \"updated_at\": \"2023-04-13 17:55:13\"}}', NULL, '2023-04-13 15:55:14', '2023-04-13 15:55:14'),
(238, 'Battery', 'created', 'App\\Models\\Battery', 'created', 278, 'App\\Models\\User', 1, '{\"attributes\": {\"id\": 278, \"name\": \"861\", \"created_at\": \"2023-04-13 17:57:27\", \"deleted_at\": null, \"updated_at\": \"2023-04-13 17:57:27\"}}', NULL, '2023-04-13 15:57:27', '2023-04-13 15:57:27'),
(239, 'Battery', 'created', 'App\\Models\\Battery', 'created', 279, 'App\\Models\\User', 1, '{\"attributes\": {\"id\": 279, \"name\": \"640\", \"created_at\": \"2023-04-13 18:00:48\", \"deleted_at\": null, \"updated_at\": \"2023-04-13 18:00:48\"}}', NULL, '2023-04-13 16:00:48', '2023-04-13 16:00:48'),
(240, 'Battry', 'created', 'App\\Models\\Employee', 'created', 73, 'App\\Models\\User', 1, '{\"attributes\": {\"id\": 73, \"name\": \"ASIF ALI\", \"phone\": null, \"created_at\": \"2023-04-13 18:02:47\", \"deleted_at\": null, \"updated_at\": \"2023-04-13 18:02:47\"}}', NULL, '2023-04-13 16:02:47', '2023-04-13 16:02:47'),
(241, 'Battery', 'created', 'App\\Models\\Battery', 'created', 280, 'App\\Models\\User', 1, '{\"attributes\": {\"id\": 280, \"name\": \"702\", \"created_at\": \"2023-04-13 18:08:18\", \"deleted_at\": null, \"updated_at\": \"2023-04-13 18:08:18\"}}', NULL, '2023-04-13 16:08:18', '2023-04-13 16:08:18'),
(242, 'Battery', 'created', 'App\\Models\\Battery', 'created', 281, 'App\\Models\\User', 1, '{\"attributes\": {\"id\": 281, \"name\": \"572\", \"created_at\": \"2023-04-13 18:09:25\", \"deleted_at\": null, \"updated_at\": \"2023-04-13 18:09:25\"}}', NULL, '2023-04-13 16:09:25', '2023-04-13 16:09:25'),
(243, 'Battery', 'created', 'App\\Models\\Battery', 'created', 282, 'App\\Models\\User', 1, '{\"attributes\": {\"id\": 282, \"name\": \"807\", \"created_at\": \"2023-04-13 18:16:04\", \"deleted_at\": null, \"updated_at\": \"2023-04-13 18:16:04\"}}', NULL, '2023-04-13 16:16:04', '2023-04-13 16:16:04'),
(244, 'Battery', 'created', 'App\\Models\\Battery', 'created', 283, 'App\\Models\\User', 1, '{\"attributes\": {\"id\": 283, \"name\": \"522\", \"created_at\": \"2023-04-13 18:19:48\", \"deleted_at\": null, \"updated_at\": \"2023-04-13 18:19:48\"}}', NULL, '2023-04-13 16:19:48', '2023-04-13 16:19:48'),
(245, 'Battery', 'created', 'App\\Models\\Battery', 'created', 284, 'App\\Models\\User', 1, '{\"attributes\": {\"id\": 284, \"name\": \"429\", \"created_at\": \"2023-04-13 18:21:02\", \"deleted_at\": null, \"updated_at\": \"2023-04-13 18:21:02\"}}', NULL, '2023-04-13 16:21:03', '2023-04-13 16:21:03'),
(246, 'Battery', 'created', 'App\\Models\\Battery', 'created', 285, 'App\\Models\\User', 1, '{\"attributes\": {\"id\": 285, \"name\": \"557\", \"created_at\": \"2023-04-13 18:23:45\", \"deleted_at\": null, \"updated_at\": \"2023-04-13 18:23:45\"}}', NULL, '2023-04-13 16:23:45', '2023-04-13 16:23:45'),
(247, 'Battery', 'created', 'App\\Models\\Battery', 'created', 286, 'App\\Models\\User', 1, '{\"attributes\": {\"id\": 286, \"name\": \"852\", \"created_at\": \"2023-04-13 18:24:55\", \"deleted_at\": null, \"updated_at\": \"2023-04-13 18:24:55\"}}', NULL, '2023-04-13 16:24:55', '2023-04-13 16:24:55'),
(248, 'Battery', 'created', 'App\\Models\\Battery', 'created', 287, 'App\\Models\\User', 1, '{\"attributes\": {\"id\": 287, \"name\": \"719\", \"created_at\": \"2023-04-13 18:27:43\", \"deleted_at\": null, \"updated_at\": \"2023-04-13 18:27:43\"}}', NULL, '2023-04-13 16:27:43', '2023-04-13 16:27:43'),
(249, 'Battery', 'created', 'App\\Models\\Battery', 'created', 288, 'App\\Models\\User', 1, '{\"attributes\": {\"id\": 288, \"name\": \"581\", \"created_at\": \"2023-04-13 18:28:40\", \"deleted_at\": null, \"updated_at\": \"2023-04-13 18:28:40\"}}', NULL, '2023-04-13 16:28:40', '2023-04-13 16:28:40'),
(250, 'Battery', 'created', 'App\\Models\\Battery', 'created', 289, 'App\\Models\\User', 1, '{\"attributes\": {\"id\": 289, \"name\": \"574\", \"created_at\": \"2023-04-13 18:39:10\", \"deleted_at\": null, \"updated_at\": \"2023-04-13 18:39:10\"}}', NULL, '2023-04-13 16:39:10', '2023-04-13 16:39:10'),
(251, 'Battery', 'created', 'App\\Models\\Battery', 'created', 290, 'App\\Models\\User', 1, '{\"attributes\": {\"id\": 290, \"name\": \"585\", \"created_at\": \"2023-04-13 18:47:24\", \"deleted_at\": null, \"updated_at\": \"2023-04-13 18:47:24\"}}', NULL, '2023-04-13 16:47:24', '2023-04-13 16:47:24'),
(252, 'Battery', 'created', 'App\\Models\\Battery', 'created', 291, 'App\\Models\\User', 1, '{\"attributes\": {\"id\": 291, \"name\": \"770\", \"created_at\": \"2023-04-13 18:52:24\", \"deleted_at\": null, \"updated_at\": \"2023-04-13 18:52:24\"}}', NULL, '2023-04-13 16:52:24', '2023-04-13 16:52:24'),
(253, 'Battery', 'created', 'App\\Models\\Battery', 'created', 292, 'App\\Models\\User', 1, '{\"attributes\": {\"id\": 292, \"name\": \"669\", \"created_at\": \"2023-04-13 18:54:30\", \"deleted_at\": null, \"updated_at\": \"2023-04-13 18:54:30\"}}', NULL, '2023-04-13 16:54:30', '2023-04-13 16:54:30'),
(254, 'Battery', 'created', 'App\\Models\\Battery', 'created', 293, 'App\\Models\\User', 1, '{\"attributes\": {\"id\": 293, \"name\": \"571\", \"created_at\": \"2023-04-13 18:55:56\", \"deleted_at\": null, \"updated_at\": \"2023-04-13 18:55:56\"}}', NULL, '2023-04-13 16:55:56', '2023-04-13 16:55:56'),
(255, 'Battery', 'created', 'App\\Models\\Battery', 'created', 294, 'App\\Models\\User', 1, '{\"attributes\": {\"id\": 294, \"name\": \"737\", \"created_at\": \"2023-04-13 18:57:44\", \"deleted_at\": null, \"updated_at\": \"2023-04-13 18:57:44\"}}', NULL, '2023-04-13 16:57:45', '2023-04-13 16:57:45'),
(256, 'Battery', 'created', 'App\\Models\\Battery', 'created', 295, 'App\\Models\\User', 1, '{\"attributes\": {\"id\": 295, \"name\": \"554\", \"created_at\": \"2023-04-13 19:07:24\", \"deleted_at\": null, \"updated_at\": \"2023-04-13 19:07:24\"}}', NULL, '2023-04-13 17:07:24', '2023-04-13 17:07:24'),
(257, 'Battery', 'created', 'App\\Models\\Battery', 'created', 296, 'App\\Models\\User', 1, '{\"attributes\": {\"id\": 296, \"name\": \"576\", \"created_at\": \"2023-04-13 19:14:21\", \"deleted_at\": null, \"updated_at\": \"2023-04-13 19:14:21\"}}', NULL, '2023-04-13 17:14:21', '2023-04-13 17:14:21'),
(258, 'Battry', 'created', 'App\\Models\\Employee', 'created', 74, 'App\\Models\\User', 1, '{\"attributes\": {\"id\": 74, \"name\": \"SHEHZAD JUNIOR\", \"phone\": null, \"created_at\": \"2023-04-13 19:30:51\", \"deleted_at\": null, \"updated_at\": \"2023-04-13 19:30:51\"}}', NULL, '2023-04-13 17:30:51', '2023-04-13 17:30:51'),
(259, 'Battery', 'created', 'App\\Models\\Battery', 'created', 297, 'App\\Models\\User', 1, '{\"attributes\": {\"id\": 297, \"name\": \"698\", \"created_at\": \"2023-04-13 19:38:27\", \"deleted_at\": null, \"updated_at\": \"2023-04-13 19:38:27\"}}', NULL, '2023-04-13 17:38:27', '2023-04-13 17:38:27'),
(260, 'Battery', 'created', 'App\\Models\\Battery', 'created', 298, 'App\\Models\\User', 1, '{\"attributes\": {\"id\": 298, \"name\": \"764\", \"created_at\": \"2023-04-13 20:01:36\", \"deleted_at\": null, \"updated_at\": \"2023-04-13 20:01:36\"}}', NULL, '2023-04-13 18:01:36', '2023-04-13 18:01:36'),
(261, 'Battery', 'created', 'App\\Models\\Battery', 'created', 299, 'App\\Models\\User', 1, '{\"attributes\": {\"id\": 299, \"name\": \"559\", \"created_at\": \"2023-04-13 20:12:30\", \"deleted_at\": null, \"updated_at\": \"2023-04-13 20:12:30\"}}', NULL, '2023-04-13 18:12:31', '2023-04-13 18:12:31'),
(262, 'Battery', 'created', 'App\\Models\\Battery', 'created', 300, 'App\\Models\\User', 1, '{\"attributes\": {\"id\": 300, \"name\": \"813\", \"created_at\": \"2023-04-13 20:25:34\", \"deleted_at\": null, \"updated_at\": \"2023-04-13 20:25:34\"}}', NULL, '2023-04-13 18:25:34', '2023-04-13 18:25:34'),
(263, 'Battery', 'created', 'App\\Models\\Battery', 'created', 301, 'App\\Models\\User', 1, '{\"attributes\": {\"id\": 301, \"name\": \"726\", \"created_at\": \"2023-04-13 20:31:57\", \"deleted_at\": null, \"updated_at\": \"2023-04-13 20:31:57\"}}', NULL, '2023-04-13 18:31:57', '2023-04-13 18:31:57'),
(264, 'authentication', 'Logged-in', 'App\\Models\\User', NULL, 1, NULL, NULL, '[]', NULL, '2023-04-13 18:55:23', '2023-04-13 18:55:23'),
(265, 'authentication', 'Logged-in', 'App\\Models\\User', NULL, 1, NULL, NULL, '[]', NULL, '2023-04-13 21:20:09', '2023-04-13 21:20:09'),
(266, 'authentication', 'Logged-in', 'App\\Models\\User', NULL, 1, NULL, NULL, '[]', NULL, '2023-04-13 23:33:22', '2023-04-13 23:33:22'),
(267, 'authentication', 'Logged-in', 'App\\Models\\User', NULL, 1, NULL, NULL, '[]', NULL, '2023-04-14 04:38:53', '2023-04-14 04:38:53'),
(268, 'authentication', 'Logged-in', 'App\\Models\\User', NULL, 1, NULL, NULL, '[]', NULL, '2023-04-14 05:19:43', '2023-04-14 05:19:43'),
(269, 'authentication', 'Logged-in', 'App\\Models\\User', NULL, 1, NULL, NULL, '[]', NULL, '2023-04-14 05:23:46', '2023-04-14 05:23:46'),
(270, 'authentication', 'Logged-in', 'App\\Models\\User', NULL, 1, NULL, NULL, '[]', NULL, '2023-04-14 12:24:35', '2023-04-14 12:24:35'),
(271, 'authentication', 'Logged-in', 'App\\Models\\User', NULL, 1, NULL, NULL, '[]', NULL, '2023-04-14 12:54:12', '2023-04-14 12:54:12'),
(272, 'authentication', 'Logged-in', 'App\\Models\\User', NULL, 1, NULL, NULL, '[]', NULL, '2023-04-14 14:05:16', '2023-04-14 14:05:16'),
(273, 'authentication', 'Logged-in', 'App\\Models\\User', NULL, 1, NULL, NULL, '[]', NULL, '2023-04-15 03:25:27', '2023-04-15 03:25:27');

-- --------------------------------------------------------

--
-- Table structure for table `auth_logs`
--

CREATE TABLE `auth_logs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ip_address` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `authenticated` enum('Not Found','Suspended','Failed','Pass') COLLATE utf8mb4_unicode_ci NOT NULL,
  `logged_in` datetime NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `batteries`
--

CREATE TABLE `batteries` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `batteries`
--

INSERT INTO `batteries` (`id`, `name`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, '12', NULL, '2023-04-09 12:40:52', '2023-04-10 04:53:31'),
(2, '15', NULL, '2023-04-09 12:41:06', '2023-04-10 04:53:45'),
(3, '72', NULL, '2023-04-09 12:41:17', '2023-04-10 04:54:02'),
(4, '87', NULL, '2023-04-09 16:55:38', '2023-04-10 04:54:31'),
(5, '115', NULL, '2023-04-09 16:55:53', '2023-04-10 04:57:57'),
(6, '148', NULL, '2023-04-09 16:56:06', '2023-04-10 04:58:25'),
(7, '179', NULL, '2023-04-09 16:56:14', '2023-04-10 04:58:49'),
(8, '180', NULL, '2023-04-09 16:56:21', '2023-04-10 05:00:10'),
(9, '181', NULL, '2023-04-09 16:56:31', '2023-04-10 05:00:47'),
(10, '182', NULL, '2023-04-09 16:56:40', '2023-04-10 05:01:03'),
(11, '183', NULL, '2023-04-09 16:56:49', '2023-04-10 05:01:20'),
(12, '184', NULL, '2023-04-09 16:56:56', '2023-04-10 05:01:36'),
(13, '225', NULL, '2023-04-09 16:57:04', '2023-04-10 05:01:59'),
(14, '321', NULL, '2023-04-09 16:57:13', '2023-04-10 05:02:15'),
(15, '456', NULL, '2023-04-10 05:02:32', '2023-04-10 05:02:32'),
(16, '457', NULL, '2023-04-10 05:02:48', '2023-04-10 05:02:48'),
(17, '459', NULL, '2023-04-10 05:02:58', '2023-04-10 05:02:58'),
(18, '479', NULL, '2023-04-10 05:03:18', '2023-04-10 05:03:18'),
(19, '499', NULL, '2023-04-10 05:03:35', '2023-04-10 05:03:35'),
(20, '501', NULL, '2023-04-10 05:03:56', '2023-04-10 05:03:56'),
(21, '502', NULL, '2023-04-10 05:04:11', '2023-04-10 05:04:11'),
(22, '503', NULL, '2023-04-10 05:04:24', '2023-04-10 05:04:24'),
(23, '504', NULL, '2023-04-10 05:05:12', '2023-04-10 05:05:12'),
(24, '506', NULL, '2023-04-10 05:05:24', '2023-04-10 05:05:24'),
(25, '509', NULL, '2023-04-10 05:05:39', '2023-04-10 05:05:39'),
(26, '512', NULL, '2023-04-10 05:05:54', '2023-04-10 05:05:54'),
(27, '514', NULL, '2023-04-10 05:06:10', '2023-04-10 05:06:10'),
(28, '515', NULL, '2023-04-10 05:06:18', '2023-04-10 05:06:18'),
(29, '517', NULL, '2023-04-10 05:06:45', '2023-04-10 05:06:45'),
(30, '519', NULL, '2023-04-10 05:07:02', '2023-04-10 05:07:02'),
(31, '521', NULL, '2023-04-10 05:07:15', '2023-04-10 05:07:15'),
(32, '523', NULL, '2023-04-10 05:07:26', '2023-04-10 05:07:26'),
(33, '525', NULL, '2023-04-10 05:07:39', '2023-04-10 05:07:39'),
(34, '526', NULL, '2023-04-10 05:07:50', '2023-04-10 05:07:50'),
(35, '527', NULL, '2023-04-10 05:08:02', '2023-04-10 05:08:02'),
(36, '528', NULL, '2023-04-10 05:08:12', '2023-04-10 05:08:12'),
(37, '529', NULL, '2023-04-10 05:08:24', '2023-04-10 05:08:24'),
(38, '530', NULL, '2023-04-10 05:08:37', '2023-04-10 05:08:37'),
(39, '531', NULL, '2023-04-10 05:08:48', '2023-04-10 05:08:48'),
(40, '532', NULL, '2023-04-10 05:09:28', '2023-04-10 05:09:28'),
(41, '535', NULL, '2023-04-10 05:09:39', '2023-04-10 05:09:39'),
(42, '537', NULL, '2023-04-10 05:09:50', '2023-04-10 05:09:50'),
(43, '539', NULL, '2023-04-10 05:10:04', '2023-04-10 05:10:04'),
(44, '540', NULL, '2023-04-10 05:10:16', '2023-04-10 05:10:16'),
(45, '541', NULL, '2023-04-10 05:10:26', '2023-04-10 05:10:26'),
(46, '543', NULL, '2023-04-10 05:10:39', '2023-04-10 05:10:39'),
(47, '544', NULL, '2023-04-10 05:10:50', '2023-04-10 05:10:50'),
(48, '545', NULL, '2023-04-10 05:11:00', '2023-04-10 05:11:00'),
(49, '546', NULL, '2023-04-10 05:11:13', '2023-04-10 05:11:13'),
(50, '548', NULL, '2023-04-10 05:11:25', '2023-04-10 05:11:25'),
(51, '550', NULL, '2023-04-10 05:11:36', '2023-04-10 05:11:36'),
(52, '516', NULL, '2023-04-10 05:12:47', '2023-04-10 05:12:47'),
(53, '589', NULL, '2023-04-10 05:13:32', '2023-04-10 05:13:32'),
(54, '590', NULL, '2023-04-10 05:13:41', '2023-04-10 05:13:41'),
(55, '594', NULL, '2023-04-10 05:13:54', '2023-04-10 05:13:54'),
(56, '595', NULL, '2023-04-10 05:14:03', '2023-04-10 05:14:03'),
(57, '598', NULL, '2023-04-10 05:14:20', '2023-04-10 05:14:20'),
(58, '603', NULL, '2023-04-10 05:14:36', '2023-04-10 05:14:36'),
(59, '604', NULL, '2023-04-10 05:14:46', '2023-04-10 05:14:46'),
(60, '605', NULL, '2023-04-10 05:15:00', '2023-04-10 05:15:00'),
(61, '606', NULL, '2023-04-10 05:15:11', '2023-04-10 05:15:11'),
(62, '607', NULL, '2023-04-10 05:15:21', '2023-04-10 05:15:21'),
(63, '608', NULL, '2023-04-10 05:15:29', '2023-04-10 05:15:29'),
(64, '609', NULL, '2023-04-10 05:15:40', '2023-04-10 05:15:40'),
(65, '610', NULL, '2023-04-10 05:15:51', '2023-04-10 05:15:51'),
(66, '611', NULL, '2023-04-10 05:16:03', '2023-04-10 05:16:03'),
(67, '613', NULL, '2023-04-10 05:16:13', '2023-04-10 05:16:13'),
(68, '614', NULL, '2023-04-10 05:16:24', '2023-04-10 05:16:24'),
(69, '616', NULL, '2023-04-10 05:16:36', '2023-04-10 05:16:36'),
(70, '617', NULL, '2023-04-10 05:16:51', '2023-04-10 05:16:51'),
(71, '619', NULL, '2023-04-10 05:17:06', '2023-04-10 05:17:06'),
(72, '620', NULL, '2023-04-10 05:17:29', '2023-04-10 05:17:29'),
(73, '621', NULL, '2023-04-10 05:17:41', '2023-04-10 05:17:41'),
(74, '624', NULL, '2023-04-10 05:17:49', '2023-04-10 05:17:49'),
(75, '625', NULL, '2023-04-10 05:17:59', '2023-04-10 05:17:59'),
(76, '627', NULL, '2023-04-10 05:18:10', '2023-04-10 05:18:10'),
(77, '629', NULL, '2023-04-10 05:18:20', '2023-04-10 05:18:20'),
(78, '630', NULL, '2023-04-10 05:18:31', '2023-04-10 05:18:31'),
(79, '632', NULL, '2023-04-10 05:18:48', '2023-04-10 05:18:48'),
(80, '633', NULL, '2023-04-10 05:18:57', '2023-04-10 05:18:57'),
(81, '634', NULL, '2023-04-10 05:19:09', '2023-04-10 05:19:09'),
(82, '635', NULL, '2023-04-10 05:19:21', '2023-04-10 05:19:21'),
(83, '636', NULL, '2023-04-10 05:19:32', '2023-04-10 05:19:32'),
(84, '638', NULL, '2023-04-10 05:19:41', '2023-04-10 05:19:41'),
(85, '639', NULL, '2023-04-10 05:19:54', '2023-04-10 05:19:54'),
(86, '641', NULL, '2023-04-10 05:20:06', '2023-04-10 05:20:06'),
(87, '643', NULL, '2023-04-10 05:20:15', '2023-04-10 05:20:15'),
(88, '644', NULL, '2023-04-10 05:20:25', '2023-04-10 05:20:25'),
(89, '645', NULL, '2023-04-10 05:20:37', '2023-04-10 05:20:37'),
(90, '646', NULL, '2023-04-10 05:20:45', '2023-04-10 05:20:45'),
(91, '649', NULL, '2023-04-10 05:20:57', '2023-04-10 05:20:57'),
(92, '651', NULL, '2023-04-10 05:21:05', '2023-04-10 05:21:05'),
(93, '653', NULL, '2023-04-10 05:21:14', '2023-04-10 05:21:14'),
(94, '654', NULL, '2023-04-10 05:21:28', '2023-04-10 05:21:28'),
(95, '657', NULL, '2023-04-10 05:21:38', '2023-04-10 05:21:38'),
(96, '658', NULL, '2023-04-10 05:21:48', '2023-04-10 05:21:48'),
(97, '659', NULL, '2023-04-10 05:22:00', '2023-04-10 05:22:00'),
(98, '663', NULL, '2023-04-10 05:22:11', '2023-04-10 05:22:11'),
(99, '664', NULL, '2023-04-10 05:22:31', '2023-04-10 05:22:31'),
(100, '665', NULL, '2023-04-10 05:22:41', '2023-04-10 05:22:41'),
(101, '666', NULL, '2023-04-10 05:22:49', '2023-04-10 05:22:49'),
(102, '670', NULL, '2023-04-10 05:23:02', '2023-04-10 05:23:02'),
(103, '672', NULL, '2023-04-10 05:23:13', '2023-04-10 05:23:13'),
(104, '673', NULL, '2023-04-10 05:23:29', '2023-04-10 05:23:29'),
(105, '675', NULL, '2023-04-10 05:24:01', '2023-04-10 05:24:01'),
(106, '676', NULL, '2023-04-10 05:24:12', '2023-04-10 05:24:12'),
(107, '677', NULL, '2023-04-10 05:24:21', '2023-04-10 05:24:21'),
(108, '679', NULL, '2023-04-10 05:24:29', '2023-04-10 05:24:29'),
(109, '680', NULL, '2023-04-10 05:24:41', '2023-04-10 05:24:41'),
(110, '681', NULL, '2023-04-10 05:24:49', '2023-04-10 05:24:49'),
(111, '682', NULL, '2023-04-10 05:25:00', '2023-04-10 05:25:00'),
(112, '683', NULL, '2023-04-10 05:25:09', '2023-04-10 05:25:09'),
(113, '685', NULL, '2023-04-10 05:25:20', '2023-04-10 05:25:20'),
(114, '688', NULL, '2023-04-10 05:25:30', '2023-04-10 05:25:30'),
(115, '689', NULL, '2023-04-10 05:25:40', '2023-04-10 05:25:40'),
(116, '691', NULL, '2023-04-10 05:25:54', '2023-04-10 05:25:54'),
(117, '693', NULL, '2023-04-10 05:26:06', '2023-04-10 05:26:06'),
(118, '695', NULL, '2023-04-10 05:26:15', '2023-04-10 05:26:15'),
(119, '696', NULL, '2023-04-10 05:26:28', '2023-04-10 05:26:28'),
(120, '697', NULL, '2023-04-10 05:26:43', '2023-04-10 05:26:43'),
(121, '699', NULL, '2023-04-10 05:26:53', '2023-04-10 05:26:53'),
(122, '700', NULL, '2023-04-10 05:27:02', '2023-04-10 05:27:02'),
(123, '701', NULL, '2023-04-10 05:37:54', '2023-04-10 05:37:54'),
(124, '703', NULL, '2023-04-10 05:38:27', '2023-04-10 05:38:27'),
(125, '704', NULL, '2023-04-10 05:39:56', '2023-04-10 05:39:56'),
(126, '705', NULL, '2023-04-10 05:40:19', '2023-04-10 05:40:19'),
(127, '706', NULL, '2023-04-10 05:40:33', '2023-04-10 05:40:33'),
(128, '707', NULL, '2023-04-10 05:40:43', '2023-04-10 05:40:43'),
(129, '709', NULL, '2023-04-10 05:49:40', '2023-04-10 05:49:40'),
(130, '710', NULL, '2023-04-10 05:49:56', '2023-04-10 05:49:56'),
(131, '711', NULL, '2023-04-10 05:50:12', '2023-04-10 05:50:12'),
(132, '712', NULL, '2023-04-10 05:50:20', '2023-04-10 05:50:20'),
(133, '713', NULL, '2023-04-10 05:50:31', '2023-04-10 05:50:31'),
(134, '714', NULL, '2023-04-10 05:50:38', '2023-04-10 05:50:38'),
(135, '715', NULL, '2023-04-10 05:50:51', '2023-04-10 05:50:51'),
(136, '716', NULL, '2023-04-10 05:51:00', '2023-04-10 05:51:00'),
(137, '831', NULL, '2023-04-11 05:52:29', '2023-04-11 05:52:29'),
(138, '808', NULL, '2023-04-11 05:53:03', '2023-04-11 05:53:03'),
(139, '569', NULL, '2023-04-11 05:53:32', '2023-04-11 05:53:32'),
(140, '784', NULL, '2023-04-11 21:38:03', '2023-04-11 21:38:03'),
(141, '718', NULL, '2023-04-11 21:39:52', '2023-04-11 21:39:52'),
(142, '720', NULL, '2023-04-11 21:39:58', '2023-04-11 21:39:58'),
(143, '722', NULL, '2023-04-11 21:40:06', '2023-04-11 21:40:06'),
(144, '723', NULL, '2023-04-11 21:40:09', '2023-04-11 21:40:09'),
(145, '724', NULL, '2023-04-11 21:40:15', '2023-04-11 21:40:15'),
(146, '725', NULL, '2023-04-11 21:40:19', '2023-04-11 21:40:19'),
(147, '727', NULL, '2023-04-11 21:40:25', '2023-04-11 21:40:25'),
(148, '728', NULL, '2023-04-11 21:40:28', '2023-04-11 21:40:28'),
(149, '729', NULL, '2023-04-11 21:40:36', '2023-04-11 21:40:36'),
(150, '731', NULL, '2023-04-11 21:40:39', '2023-04-11 21:40:39'),
(151, '732', NULL, '2023-04-11 21:40:45', '2023-04-11 21:40:45'),
(152, '733', NULL, '2023-04-11 21:40:49', '2023-04-11 21:40:49'),
(153, '734', NULL, '2023-04-11 21:40:56', '2023-04-11 21:40:56'),
(154, '735', NULL, '2023-04-11 21:40:59', '2023-04-11 21:40:59'),
(155, '736', NULL, '2023-04-11 21:41:06', '2023-04-11 21:41:06'),
(156, '738', NULL, '2023-04-11 21:41:14', '2023-04-11 21:41:14'),
(157, '739', NULL, '2023-04-11 21:41:17', '2023-04-11 21:41:17'),
(158, '740', NULL, '2023-04-11 21:42:07', '2023-04-11 21:42:07'),
(159, '741', NULL, '2023-04-11 21:42:11', '2023-04-11 21:42:11'),
(160, '742', NULL, '2023-04-11 21:42:14', '2023-04-11 21:42:14'),
(161, '744', NULL, '2023-04-11 21:42:22', '2023-04-11 21:42:22'),
(162, '745', NULL, '2023-04-11 21:43:21', '2023-04-11 21:43:21'),
(163, '746', NULL, '2023-04-11 21:43:24', '2023-04-11 21:43:24'),
(164, '747', NULL, '2023-04-11 21:43:29', '2023-04-11 21:43:29'),
(165, '748', NULL, '2023-04-11 21:43:36', '2023-04-11 21:43:36'),
(166, '749', NULL, '2023-04-11 21:43:52', '2023-04-11 21:43:52'),
(167, '750', NULL, '2023-04-11 21:43:55', '2023-04-11 21:43:55'),
(168, '751', NULL, '2023-04-11 21:43:59', '2023-04-11 21:43:59'),
(169, '752', NULL, '2023-04-11 21:44:08', '2023-04-11 21:44:08'),
(170, '753', NULL, '2023-04-11 21:44:14', '2023-04-11 21:44:14'),
(171, '754', NULL, '2023-04-11 21:44:17', '2023-04-11 21:44:17'),
(172, '755', NULL, '2023-04-11 21:44:21', '2023-04-11 21:44:21'),
(173, '758', NULL, '2023-04-11 21:44:28', '2023-04-11 21:44:28'),
(174, '759', NULL, '2023-04-11 21:44:32', '2023-04-11 21:44:32'),
(175, '760', NULL, '2023-04-11 21:47:31', '2023-04-11 21:47:31'),
(176, '761', NULL, '2023-04-11 21:47:37', '2023-04-11 21:47:37'),
(177, '762', NULL, '2023-04-11 21:47:44', '2023-04-11 21:47:44'),
(178, '763', NULL, '2023-04-11 21:47:50', '2023-04-11 21:47:50'),
(179, '765', NULL, '2023-04-11 21:47:57', '2023-04-11 21:47:57'),
(180, '766', NULL, '2023-04-11 21:48:02', '2023-04-11 21:48:02'),
(181, '767', NULL, '2023-04-11 21:48:07', '2023-04-11 21:48:07'),
(182, '768', NULL, '2023-04-11 21:48:13', '2023-04-11 21:48:13'),
(183, '769', NULL, '2023-04-11 21:48:18', '2023-04-11 21:48:18'),
(184, '771', NULL, '2023-04-11 21:48:27', '2023-04-11 21:48:27'),
(185, '772', NULL, '2023-04-11 21:48:30', '2023-04-11 21:48:30'),
(186, '773', NULL, '2023-04-11 21:48:35', '2023-04-11 21:48:35'),
(187, '775', NULL, '2023-04-11 21:48:40', '2023-04-11 21:48:40'),
(188, '777', NULL, '2023-04-11 21:48:45', '2023-04-11 21:48:45'),
(189, '779', NULL, '2023-04-11 21:50:17', '2023-04-11 21:50:17'),
(190, '778', NULL, '2023-04-11 21:50:23', '2023-04-11 21:50:23'),
(191, '781', NULL, '2023-04-11 21:50:36', '2023-04-11 21:50:36'),
(192, '782', NULL, '2023-04-11 21:50:41', '2023-04-11 21:50:41'),
(193, '783', NULL, '2023-04-11 21:50:46', '2023-04-11 21:50:46'),
(194, '800', NULL, '2023-04-11 21:50:57', '2023-04-11 21:50:57'),
(195, '801', NULL, '2023-04-11 21:51:02', '2023-04-11 21:51:02'),
(196, '803', NULL, '2023-04-11 21:51:06', '2023-04-11 21:51:06'),
(197, '805', NULL, '2023-04-11 21:51:13', '2023-04-11 21:51:13'),
(198, '809', NULL, '2023-04-11 21:51:31', '2023-04-11 21:51:31'),
(199, '810', NULL, '2023-04-11 21:51:36', '2023-04-11 21:51:36'),
(200, '811', NULL, '2023-04-11 21:51:41', '2023-04-11 21:51:41'),
(201, '812', NULL, '2023-04-11 21:51:45', '2023-04-11 21:51:45'),
(202, '814', NULL, '2023-04-11 21:51:49', '2023-04-11 21:51:49'),
(203, '815', NULL, '2023-04-11 21:52:02', '2023-04-11 21:52:02'),
(204, '816', NULL, '2023-04-11 21:52:07', '2023-04-11 21:52:07'),
(205, '817', NULL, '2023-04-11 21:52:18', '2023-04-11 21:52:18'),
(206, '818', NULL, '2023-04-11 21:52:23', '2023-04-11 21:52:23'),
(207, '819', NULL, '2023-04-11 21:52:27', '2023-04-11 21:52:27'),
(208, '820', NULL, '2023-04-11 21:52:31', '2023-04-11 21:52:31'),
(209, '822', NULL, '2023-04-11 21:52:35', '2023-04-11 21:52:35'),
(210, '823', NULL, '2023-04-11 21:52:41', '2023-04-11 21:52:41'),
(211, '824', NULL, '2023-04-11 21:52:44', '2023-04-11 21:52:44'),
(212, '825', NULL, '2023-04-11 21:52:48', '2023-04-11 21:52:48'),
(213, '826', NULL, '2023-04-11 21:52:52', '2023-04-11 21:52:52'),
(214, '828', NULL, '2023-04-11 21:53:02', '2023-04-11 21:53:02'),
(215, '829', NULL, '2023-04-11 21:53:07', '2023-04-11 21:53:07'),
(216, '832', NULL, '2023-04-11 21:53:19', '2023-04-11 21:53:19'),
(217, '833', NULL, '2023-04-11 21:56:18', '2023-04-11 21:56:18'),
(218, '834', NULL, '2023-04-11 21:56:24', '2023-04-11 21:56:24'),
(219, '835', NULL, '2023-04-11 21:56:34', '2023-04-11 21:56:34'),
(220, '836', NULL, '2023-04-11 21:56:39', '2023-04-11 21:56:39'),
(221, '837', NULL, '2023-04-11 21:56:42', '2023-04-11 21:56:42'),
(222, '840', NULL, '2023-04-11 21:56:47', '2023-04-11 21:56:47'),
(223, '841', NULL, '2023-04-11 21:57:16', '2023-04-11 21:57:16'),
(224, '842', NULL, '2023-04-11 21:57:20', '2023-04-11 21:57:20'),
(225, '843', NULL, '2023-04-11 21:57:42', '2023-04-11 21:57:42'),
(226, '844', NULL, '2023-04-11 21:57:46', '2023-04-11 21:57:46'),
(227, '846', NULL, '2023-04-11 21:57:52', '2023-04-11 21:57:52'),
(228, '847', NULL, '2023-04-11 21:57:57', '2023-04-11 21:57:57'),
(229, '848', NULL, '2023-04-11 21:58:02', '2023-04-11 21:58:02'),
(230, '849', NULL, '2023-04-11 21:58:27', '2023-04-11 21:58:27'),
(231, '850', NULL, '2023-04-11 21:58:33', '2023-04-11 21:58:33'),
(232, '851', NULL, '2023-04-11 21:58:38', '2023-04-11 21:58:38'),
(233, '853', NULL, '2023-04-11 21:58:41', '2023-04-11 21:58:41'),
(234, '854', NULL, '2023-04-11 21:58:45', '2023-04-11 21:58:45'),
(235, '558', NULL, '2023-04-11 22:41:11', '2023-04-11 22:41:11'),
(236, '618', NULL, '2023-04-12 06:11:51', '2023-04-12 06:11:51'),
(237, '774', NULL, '2023-04-12 06:12:34', '2023-04-12 06:12:34'),
(238, '568', NULL, '2023-04-12 06:13:21', '2023-04-12 06:13:21'),
(239, '780', NULL, '2023-04-12 06:14:17', '2023-04-12 06:14:17'),
(240, '582', NULL, '2023-04-12 06:15:06', '2023-04-12 06:15:06'),
(241, '694', NULL, '2023-04-12 06:16:54', '2023-04-12 06:16:54'),
(242, '587', NULL, '2023-04-12 06:29:03', '2023-04-12 06:29:03'),
(243, '648', NULL, '2023-04-12 06:41:00', '2023-04-12 06:41:00'),
(244, '845', NULL, '2023-04-12 06:43:22', '2023-04-12 06:43:22'),
(245, '520', NULL, '2023-04-12 06:47:26', '2023-04-12 06:47:26'),
(246, '717', NULL, '2023-04-12 06:49:46', '2023-04-12 06:49:46'),
(247, '579', NULL, '2023-04-12 06:51:04', '2023-04-12 06:51:04'),
(248, '839', NULL, '2023-04-12 06:51:11', '2023-04-12 06:51:11'),
(249, '806', NULL, '2023-04-12 06:54:55', '2023-04-12 06:54:55'),
(250, '804', NULL, '2023-04-12 06:56:15', '2023-04-12 06:56:15'),
(251, '518', NULL, '2023-04-12 06:58:05', '2023-04-12 06:58:05'),
(252, '615', NULL, '2023-04-12 07:06:14', '2023-04-12 07:06:14'),
(253, '757', NULL, '2023-04-12 07:07:39', '2023-04-12 07:07:39'),
(254, '578', NULL, '2023-04-12 07:09:30', '2023-04-12 07:09:30'),
(255, '623', NULL, '2023-04-12 07:10:57', '2023-04-12 07:10:57'),
(256, '565', NULL, '2023-04-12 07:16:50', '2023-04-12 07:16:50'),
(257, '838', NULL, '2023-04-12 07:18:26', '2023-04-12 07:18:26'),
(258, '542', NULL, '2023-04-12 16:36:14', '2023-04-12 16:36:14'),
(259, '538', NULL, '2023-04-12 16:44:18', '2023-04-12 16:44:18'),
(260, '626', NULL, '2023-04-12 16:45:58', '2023-04-12 16:45:58'),
(261, '586', NULL, '2023-04-12 16:48:41', '2023-04-12 16:48:41'),
(262, '567', NULL, '2023-04-12 16:50:11', '2023-04-12 16:50:11'),
(263, '563', NULL, '2023-04-12 16:54:18', '2023-04-12 16:54:18'),
(264, '570', NULL, '2023-04-12 16:56:07', '2023-04-12 16:56:07'),
(265, '655', NULL, '2023-04-12 17:00:58', '2023-04-12 17:00:58'),
(266, 'KHADIM HUSSAIN LAYOUT', NULL, '2023-04-12 17:02:00', '2023-04-12 17:02:00'),
(267, '547', NULL, '2023-04-12 17:03:31', '2023-04-12 17:03:31'),
(268, '575', NULL, '2023-04-12 17:13:22', '2023-04-12 17:13:22'),
(269, '821', NULL, '2023-04-12 17:15:13', '2023-04-12 17:15:13'),
(270, '592', NULL, '2023-04-12 17:48:01', '2023-04-12 17:48:01'),
(271, '556', NULL, '2023-04-13 13:39:16', '2023-04-13 13:39:16'),
(272, '553', NULL, '2023-04-13 13:41:48', '2023-04-13 13:41:48'),
(273, '533', NULL, '2023-04-13 13:43:22', '2023-04-13 13:43:22'),
(274, '580', NULL, '2023-04-13 13:46:08', '2023-04-13 13:46:08'),
(275, '560', NULL, '2023-04-13 13:55:51', '2023-04-13 13:55:51'),
(276, '583', NULL, '2023-04-13 15:51:29', '2023-04-13 15:51:29'),
(277, '662', NULL, '2023-04-13 15:55:13', '2023-04-13 15:55:13'),
(278, '861', NULL, '2023-04-13 15:57:27', '2023-04-13 15:57:27'),
(279, '640', NULL, '2023-04-13 16:00:48', '2023-04-13 16:00:48'),
(280, '702', NULL, '2023-04-13 16:08:18', '2023-04-13 16:08:18'),
(281, '572', NULL, '2023-04-13 16:09:25', '2023-04-13 16:09:25'),
(282, '807', NULL, '2023-04-13 16:16:04', '2023-04-13 16:16:04'),
(283, '522', NULL, '2023-04-13 16:19:48', '2023-04-13 16:19:48'),
(284, '429', NULL, '2023-04-13 16:21:02', '2023-04-13 16:21:02'),
(285, '557', NULL, '2023-04-13 16:23:45', '2023-04-13 16:23:45'),
(286, '852', NULL, '2023-04-13 16:24:55', '2023-04-13 16:24:55'),
(287, '719', NULL, '2023-04-13 16:27:43', '2023-04-13 16:27:43'),
(288, '581', NULL, '2023-04-13 16:28:40', '2023-04-13 16:28:40'),
(289, '574', NULL, '2023-04-13 16:39:10', '2023-04-13 16:39:10'),
(290, '585', NULL, '2023-04-13 16:47:24', '2023-04-13 16:47:24'),
(291, '770', NULL, '2023-04-13 16:52:24', '2023-04-13 16:52:24'),
(292, '669', NULL, '2023-04-13 16:54:30', '2023-04-13 16:54:30'),
(293, '571', NULL, '2023-04-13 16:55:56', '2023-04-13 16:55:56'),
(294, '737', NULL, '2023-04-13 16:57:44', '2023-04-13 16:57:44'),
(295, '554', NULL, '2023-04-13 17:07:24', '2023-04-13 17:07:24'),
(296, '576', NULL, '2023-04-13 17:14:21', '2023-04-13 17:14:21'),
(297, '698', NULL, '2023-04-13 17:38:27', '2023-04-13 17:38:27'),
(298, '764', NULL, '2023-04-13 18:01:36', '2023-04-13 18:01:36'),
(299, '559', NULL, '2023-04-13 18:12:30', '2023-04-13 18:12:30'),
(300, '813', NULL, '2023-04-13 18:25:34', '2023-04-13 18:25:34'),
(301, '726', NULL, '2023-04-13 18:31:57', '2023-04-13 18:31:57');

-- --------------------------------------------------------

--
-- Table structure for table `battery_users`
--

CREATE TABLE `battery_users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `battery_id` bigint(20) UNSIGNED NOT NULL,
  `issued_by` bigint(20) UNSIGNED NOT NULL,
  `status` enum('Good','Bad','Charging') COLLATE utf8mb4_unicode_ci NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `issued_to` bigint(20) DEFAULT NULL,
  `remarks` text COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `battery_users`
--

INSERT INTO `battery_users` (`id`, `battery_id`, `issued_by`, `status`, `deleted_at`, `created_at`, `updated_at`, `issued_to`, `remarks`) VALUES
(1, 99, 51, 'Good', NULL, '2023-04-12 06:10:58', '2023-04-12 06:10:58', 52, NULL),
(2, 177, 51, 'Good', NULL, '2023-04-12 06:11:24', '2023-04-12 06:11:24', 52, NULL),
(3, 236, 51, 'Good', NULL, '2023-04-12 06:12:13', '2023-04-12 06:12:13', 52, NULL),
(4, 237, 51, 'Good', NULL, '2023-04-12 06:13:02', '2023-04-12 06:13:02', 22, NULL),
(5, 238, 51, 'Good', NULL, '2023-04-12 06:13:42', '2023-04-12 06:13:42', 22, NULL),
(6, 239, 51, 'Good', NULL, '2023-04-12 06:14:43', '2023-04-12 06:14:43', 23, NULL),
(7, 240, 51, 'Good', NULL, '2023-04-12 06:15:42', '2023-04-12 06:15:42', 23, NULL),
(8, 52, 51, 'Good', NULL, '2023-04-12 06:16:03', '2023-04-12 06:16:03', 23, NULL),
(9, 34, 51, 'Good', NULL, '2023-04-12 06:16:28', '2023-04-12 06:16:28', 24, NULL),
(10, 241, 51, 'Good', NULL, '2023-04-12 06:17:26', '2023-04-12 06:17:26', 24, NULL),
(11, 45, 51, 'Good', NULL, '2023-04-12 06:18:35', '2023-04-12 06:18:35', 56, NULL),
(12, 100, 51, 'Good', NULL, '2023-04-12 06:19:14', '2023-04-12 06:19:14', 56, NULL),
(13, 242, 51, 'Good', NULL, '2023-04-12 06:29:27', '2023-04-12 06:29:27', 21, NULL),
(14, 174, 51, 'Good', NULL, '2023-04-12 06:29:51', '2023-04-12 06:29:51', 21, NULL),
(15, 167, 51, 'Good', NULL, '2023-04-12 06:38:40', '2023-04-12 06:38:40', 25, NULL),
(16, 56, 51, 'Good', NULL, '2023-04-12 06:38:40', '2023-04-12 06:38:40', 25, NULL),
(17, 199, 51, 'Good', NULL, '2023-04-12 06:40:29', '2023-04-12 06:40:29', 57, NULL),
(18, 143, 51, 'Good', NULL, '2023-04-12 06:40:29', '2023-04-12 06:40:29', 57, NULL),
(19, 243, 51, 'Good', NULL, '2023-04-12 06:42:04', '2023-04-12 06:42:04', 27, NULL),
(20, 146, 51, 'Good', NULL, '2023-04-12 06:42:04', '2023-04-12 06:42:04', 27, NULL),
(21, 93, 51, 'Good', NULL, '2023-04-12 06:42:37', '2023-04-12 06:42:37', 28, NULL),
(22, 202, 51, 'Good', NULL, '2023-04-12 06:42:37', '2023-04-12 06:42:37', 28, NULL),
(23, 18, 51, 'Good', NULL, '2023-04-12 06:42:37', '2023-04-12 06:42:37', 28, NULL),
(24, 244, 51, 'Good', NULL, '2023-04-12 06:43:58', '2023-04-12 06:43:58', 29, NULL),
(25, 47, 51, 'Good', NULL, '2023-04-12 06:43:58', '2023-04-12 06:43:58', 29, NULL),
(26, 164, 51, 'Good', NULL, '2023-04-12 06:43:58', '2023-04-12 06:43:58', 29, NULL),
(27, 245, 51, 'Good', NULL, '2023-04-12 06:48:11', '2023-04-12 06:48:11', 30, NULL),
(28, 217, 51, 'Good', NULL, '2023-04-12 06:48:11', '2023-04-12 06:48:11', 30, NULL),
(29, 55, 51, 'Good', NULL, '2023-04-12 06:48:11', '2023-04-12 06:48:11', 30, NULL),
(30, 145, 51, 'Good', NULL, '2023-04-12 06:48:51', '2023-04-12 06:48:51', 31, NULL),
(31, 114, 51, 'Good', NULL, '2023-04-12 06:48:51', '2023-04-12 06:48:51', 31, NULL),
(32, 69, 51, 'Good', NULL, '2023-04-12 06:49:12', '2023-04-12 06:49:12', 32, NULL),
(33, 122, 51, 'Good', NULL, '2023-04-12 06:49:12', '2023-04-12 06:49:12', 32, NULL),
(34, 246, 51, 'Good', NULL, '2023-04-12 06:50:20', '2023-04-12 06:50:20', 33, NULL),
(35, 147, 51, 'Good', NULL, '2023-04-12 06:50:20', '2023-04-12 06:50:20', 33, NULL),
(36, 247, 51, 'Good', NULL, '2023-04-12 06:51:59', '2023-04-12 06:51:59', 34, NULL),
(37, 248, 51, 'Good', NULL, '2023-04-12 06:51:59', '2023-04-12 06:51:59', 34, NULL),
(38, 151, 51, 'Good', NULL, '2023-04-12 06:52:00', '2023-04-12 06:52:00', 34, NULL),
(39, 41, 51, 'Good', NULL, '2023-04-12 06:52:43', '2023-04-12 06:52:43', 35, NULL),
(40, 214, 51, 'Good', NULL, '2023-04-12 06:52:43', '2023-04-12 06:52:43', 35, NULL),
(41, 66, 51, 'Good', NULL, '2023-04-12 06:52:43', '2023-04-12 06:52:43', 35, NULL),
(42, 225, 51, 'Good', NULL, '2023-04-12 06:53:20', '2023-04-12 06:53:20', 36, NULL),
(43, 42, 51, 'Good', NULL, '2023-04-12 06:53:20', '2023-04-12 06:53:20', 36, NULL),
(44, 71, 51, 'Good', NULL, '2023-04-12 06:53:20', '2023-04-12 06:53:20', 36, NULL),
(45, 138, 51, 'Good', NULL, '2023-04-12 06:54:14', '2023-04-12 06:54:14', 37, NULL),
(46, 40, 51, 'Good', NULL, '2023-04-12 06:54:14', '2023-04-12 06:54:14', 37, NULL),
(47, 108, 51, 'Good', NULL, '2023-04-12 06:54:14', '2023-04-12 06:54:14', 37, NULL),
(48, 15, 51, 'Good', NULL, '2023-04-12 06:55:27', '2023-04-12 06:55:27', 38, NULL),
(49, 249, 51, 'Good', NULL, '2023-04-12 06:55:27', '2023-04-12 06:55:27', 38, NULL),
(50, 49, 51, 'Good', NULL, '2023-04-12 06:56:06', '2023-04-12 06:56:06', 39, NULL),
(51, 39, 51, 'Good', NULL, '2023-04-12 06:56:06', '2023-04-12 06:56:06', 39, NULL),
(52, 250, 51, 'Good', NULL, '2023-04-12 06:56:35', '2023-04-12 06:56:35', 39, NULL),
(53, 176, 51, 'Good', NULL, '2023-04-12 06:57:53', '2023-04-12 06:57:53', 65, NULL),
(54, 81, 51, 'Good', NULL, '2023-04-12 06:57:53', '2023-04-12 06:57:53', 65, NULL),
(55, 251, 51, 'Good', NULL, '2023-04-12 06:58:26', '2023-04-12 06:58:26', 65, NULL),
(56, 221, 51, 'Good', NULL, '2023-04-12 07:06:48', '2023-04-12 07:06:48', 59, NULL),
(57, 252, 51, 'Good', NULL, '2023-04-12 07:06:48', '2023-04-12 07:06:48', 59, NULL),
(58, 97, 51, 'Good', NULL, '2023-04-12 07:08:05', '2023-04-12 07:08:05', 40, NULL),
(59, 253, 51, 'Good', NULL, '2023-04-12 07:08:05', '2023-04-12 07:08:05', 40, NULL),
(60, 41, 51, 'Good', NULL, '2023-04-12 07:08:48', '2023-04-12 07:08:48', 41, NULL),
(61, 206, 51, 'Good', NULL, '2023-04-12 07:08:48', '2023-04-12 07:08:48', 41, NULL),
(62, 107, 51, 'Good', NULL, '2023-04-12 07:08:48', '2023-04-12 07:08:48', 41, NULL),
(63, 137, 51, 'Good', NULL, '2023-04-12 07:10:05', '2023-04-12 07:10:05', 64, NULL),
(64, 254, 51, 'Good', NULL, '2023-04-12 07:10:05', '2023-04-12 07:10:05', 64, NULL),
(65, 77, 51, 'Good', NULL, '2023-04-12 07:10:34', '2023-04-12 07:10:34', 43, NULL),
(66, 75, 51, 'Good', NULL, '2023-04-12 07:10:34', '2023-04-12 07:10:34', 43, NULL),
(67, 255, 51, 'Good', NULL, '2023-04-12 07:11:55', '2023-04-12 07:11:55', 45, NULL),
(68, 98, 51, 'Good', NULL, '2023-04-12 07:11:55', '2023-04-12 07:11:55', 45, NULL),
(69, 124, 51, 'Good', NULL, '2023-04-12 07:11:55', '2023-04-12 07:11:55', 45, NULL),
(70, 50, 51, 'Good', NULL, '2023-04-12 07:12:34', '2023-04-12 07:12:34', 46, NULL),
(71, 1, 51, 'Good', NULL, '2023-04-12 07:12:34', '2023-04-12 07:12:34', 46, NULL),
(72, 46, 51, 'Good', NULL, '2023-04-12 07:17:22', '2023-04-12 07:17:22', 63, NULL),
(73, 256, 51, 'Good', NULL, '2023-04-12 07:17:22', '2023-04-12 07:17:22', 63, NULL),
(74, 144, 51, 'Good', NULL, '2023-04-12 07:17:56', '2023-04-12 07:17:56', 60, NULL),
(75, 30, 51, 'Good', NULL, '2023-04-12 07:17:56', '2023-04-12 07:17:56', 60, NULL),
(76, 5, 51, 'Good', NULL, '2023-04-12 07:19:47', '2023-04-12 07:19:47', 48, NULL),
(77, 257, 51, 'Good', NULL, '2023-04-12 07:19:47', '2023-04-12 07:19:47', 48, NULL),
(78, 211, 51, 'Good', NULL, '2023-04-12 07:20:23', '2023-04-12 07:20:23', 61, NULL),
(79, 96, 51, 'Good', NULL, '2023-04-12 07:20:24', '2023-04-12 07:20:24', 61, NULL),
(80, 24, 51, 'Good', NULL, '2023-04-12 07:20:24', '2023-04-12 07:20:24', 61, NULL),
(81, 37, 51, 'Good', NULL, '2023-04-12 07:21:23', '2023-04-12 07:21:23', 49, NULL),
(82, 133, 51, 'Good', NULL, '2023-04-12 07:21:23', '2023-04-12 07:21:23', 49, NULL),
(83, 67, 51, 'Good', NULL, '2023-04-12 07:21:23', '2023-04-12 07:21:23', 49, NULL),
(84, 122, 51, 'Good', NULL, '2023-04-12 07:21:56', '2023-04-12 07:21:56', 50, NULL),
(85, 42, 51, 'Good', NULL, '2023-04-12 07:21:56', '2023-04-12 07:21:56', 50, NULL),
(86, 61, 51, 'Good', NULL, '2023-04-12 16:35:12', '2023-04-12 16:35:12', 20, NULL),
(87, 173, 51, 'Good', NULL, '2023-04-12 16:35:12', '2023-04-12 16:35:12', 20, NULL),
(88, 258, 51, 'Good', NULL, '2023-04-12 16:37:39', '2023-04-12 16:37:39', 13, NULL),
(89, 219, 51, 'Good', NULL, '2023-04-12 16:37:39', '2023-04-12 16:37:39', 13, NULL),
(90, 139, 51, 'Good', NULL, '2023-04-12 16:39:56', '2023-04-12 16:39:56', 13, NULL),
(91, 154, 51, 'Good', NULL, '2023-04-12 16:43:53', '2023-04-12 16:43:53', 1, NULL),
(92, 87, 51, 'Good', NULL, '2023-04-12 16:43:53', '2023-04-12 16:43:53', 1, NULL),
(93, 260, 51, 'Good', NULL, '2023-04-12 16:46:34', '2023-04-12 16:46:34', 2, NULL),
(94, 193, 51, 'Good', NULL, '2023-04-12 16:46:34', '2023-04-12 16:46:34', 2, NULL),
(95, 259, 51, 'Good', NULL, '2023-04-12 16:47:38', '2023-04-12 16:47:38', 3, NULL),
(96, 179, 51, 'Good', NULL, '2023-04-12 16:47:38', '2023-04-12 16:47:38', 3, NULL),
(97, 226, 51, 'Good', NULL, '2023-04-12 16:48:04', '2023-04-12 16:48:04', 4, NULL),
(98, 21, 51, 'Good', NULL, '2023-04-12 16:48:04', '2023-04-12 16:48:04', 4, NULL),
(99, 261, 51, 'Good', NULL, '2023-04-12 16:49:05', '2023-04-12 16:49:05', 5, NULL),
(100, 91, 51, 'Good', NULL, '2023-04-12 16:49:05', '2023-04-12 16:49:05', 5, NULL),
(101, 160, 51, 'Good', NULL, '2023-04-12 16:49:28', '2023-04-12 16:49:28', 10, NULL),
(102, 262, 51, 'Good', NULL, '2023-04-12 16:50:32', '2023-04-12 16:50:32', 6, NULL),
(103, 128, 51, 'Good', NULL, '2023-04-12 16:50:32', '2023-04-12 16:50:32', 6, NULL),
(104, 51, 51, 'Good', NULL, '2023-04-12 16:51:09', '2023-04-12 16:51:09', 8, NULL),
(105, 156, 51, 'Good', NULL, '2023-04-12 16:51:09', '2023-04-12 16:51:09', 8, NULL),
(106, 263, 51, 'Good', NULL, '2023-04-12 16:54:52', '2023-04-12 16:54:52', 66, NULL),
(107, 83, 51, 'Good', NULL, '2023-04-12 16:54:52', '2023-04-12 16:54:52', 66, NULL),
(108, 171, 51, 'Good', NULL, '2023-04-12 16:54:52', '2023-04-12 16:54:52', 66, NULL),
(109, 160, 51, 'Good', NULL, '2023-04-12 16:55:30', '2023-04-12 16:55:30', 11, NULL),
(110, 110, 51, 'Good', NULL, '2023-04-12 16:55:30', '2023-04-12 16:55:30', 11, NULL),
(111, 264, 51, 'Good', NULL, '2023-04-12 17:00:13', '2023-04-12 17:00:13', 12, NULL),
(112, 126, 51, 'Good', NULL, '2023-04-12 17:00:13', '2023-04-12 17:00:13', 12, NULL),
(113, 170, 51, 'Good', NULL, '2023-04-12 17:01:25', '2023-04-12 17:01:25', 14, NULL),
(114, 265, 51, 'Good', NULL, '2023-04-12 17:01:25', '2023-04-12 17:01:25', 14, NULL),
(115, 61, 51, 'Good', NULL, '2023-04-12 17:03:03', '2023-04-12 17:03:03', 67, NULL),
(116, 84, 51, 'Good', NULL, '2023-04-12 17:03:03', '2023-04-12 17:03:03', 67, NULL),
(117, 16, 51, 'Good', NULL, '2023-04-12 17:03:03', '2023-04-12 17:03:03', 67, NULL),
(118, 32, 51, 'Good', NULL, '2023-04-12 17:07:01', '2023-04-12 17:07:01', 16, NULL),
(119, 267, 51, 'Good', NULL, '2023-04-12 17:07:01', '2023-04-12 17:07:01', 16, NULL),
(120, 102, 51, 'Good', NULL, '2023-04-12 17:09:47', '2023-04-12 17:09:47', 68, NULL),
(121, 149, 51, 'Good', NULL, '2023-04-12 17:09:47', '2023-04-12 17:09:47', 68, NULL),
(122, 158, 51, 'Good', NULL, '2023-04-12 17:11:53', '2023-04-12 17:11:53', 69, NULL),
(123, 109, 51, 'Good', NULL, '2023-04-12 17:11:53', '2023-04-12 17:11:53', 69, NULL),
(124, 92, 51, 'Good', NULL, '2023-04-12 17:11:53', '2023-04-12 17:11:53', 69, NULL),
(125, 73, 51, 'Good', NULL, '2023-04-12 17:12:38', '2023-04-12 17:12:38', 19, NULL),
(126, 211, 51, 'Good', NULL, '2023-04-12 17:12:38', '2023-04-12 17:12:38', 19, NULL),
(127, 268, 51, 'Good', NULL, '2023-04-12 17:13:53', '2023-04-12 17:13:53', 17, NULL),
(128, 192, 51, 'Good', NULL, '2023-04-12 17:13:53', '2023-04-12 17:13:53', 17, NULL),
(129, 269, 51, 'Good', NULL, '2023-04-12 17:15:52', '2023-04-12 17:15:52', 70, NULL),
(130, 64, 51, 'Good', NULL, '2023-04-12 17:15:52', '2023-04-12 17:15:52', 70, NULL),
(131, 35, 51, 'Good', NULL, '2023-04-12 17:16:45', '2023-04-12 17:16:45', 18, NULL),
(132, 21, 51, 'Good', NULL, '2023-04-12 17:16:45', '2023-04-12 17:16:45', 18, NULL),
(133, 68, 51, 'Good', NULL, '2023-04-12 17:16:45', '2023-04-12 17:16:45', 18, NULL),
(134, 79, 51, 'Good', NULL, '2023-04-12 17:18:40', '2023-04-12 17:18:40', 71, NULL),
(135, 181, 51, 'Good', NULL, '2023-04-12 17:18:40', '2023-04-12 17:18:40', 71, NULL),
(136, 22, 51, 'Good', NULL, '2023-04-12 17:20:23', '2023-04-12 17:20:23', 72, NULL),
(137, 135, 51, 'Good', NULL, '2023-04-12 17:20:23', '2023-04-12 17:20:23', 72, NULL),
(138, 96, 51, 'Good', NULL, '2023-04-12 17:22:26', '2023-04-12 17:22:26', 44, NULL),
(139, 123, 51, 'Good', NULL, '2023-04-12 17:22:26', '2023-04-12 17:22:26', 44, NULL),
(140, 136, 51, 'Good', NULL, '2023-04-12 17:22:26', '2023-04-12 17:22:26', 44, NULL),
(141, 21, 18, 'Good', NULL, '2023-04-12 17:47:07', '2023-04-12 17:47:07', 4, NULL),
(142, 270, 51, 'Good', NULL, '2023-04-12 17:48:34', '2023-04-12 17:48:34', 18, NULL),
(143, 240, 23, 'Good', NULL, '2023-04-13 01:37:30', '2023-04-13 01:37:30', 2, NULL),
(144, 37, 49, 'Good', NULL, '2023-04-13 01:39:01', '2023-04-13 01:39:01', 6, NULL),
(145, 20, 49, 'Good', NULL, '2023-04-13 01:39:01', '2023-04-13 01:39:01', 6, NULL),
(146, 67, 49, 'Good', NULL, '2023-04-13 01:39:01', '2023-04-13 01:39:01', 6, NULL),
(147, 221, 59, 'Good', NULL, '2023-04-13 13:32:31', '2023-04-13 13:32:31', 51, NULL),
(148, 253, 40, 'Bad', NULL, '2023-04-13 13:33:23', '2023-04-13 13:33:23', 51, NULL),
(149, 117, 28, 'Bad', NULL, '2023-04-13 13:34:08', '2023-04-13 13:34:08', 51, NULL),
(150, 247, 34, 'Bad', NULL, '2023-04-13 13:35:04', '2023-04-13 13:35:04', 51, NULL),
(151, 185, 34, 'Bad', NULL, '2023-04-13 13:36:05', '2023-04-13 13:36:05', 51, NULL),
(152, 165, 34, 'Bad', NULL, '2023-04-13 13:37:54', '2023-04-13 13:37:54', 51, NULL),
(153, 30, 60, 'Good', NULL, '2023-04-13 13:38:42', '2023-04-13 13:38:42', 51, NULL),
(154, 271, 50, 'Bad', NULL, '2023-04-13 13:40:10', '2023-04-13 13:40:10', 51, NULL),
(155, 272, 50, 'Bad', NULL, '2023-04-13 13:42:24', '2023-04-13 13:42:24', 51, NULL),
(156, 273, 50, 'Bad', NULL, '2023-04-13 13:43:47', '2023-04-13 13:43:47', 51, NULL),
(157, 42, 50, 'Good', NULL, '2023-04-13 13:45:30', '2023-04-13 13:45:30', 51, NULL),
(158, 274, 36, 'Bad', NULL, '2023-04-13 13:46:54', '2023-04-13 13:46:54', 51, NULL),
(159, 249, 38, 'Good', NULL, '2023-04-13 13:48:33', '2023-04-13 13:48:33', 51, NULL),
(160, 252, 59, 'Good', NULL, '2023-04-13 13:49:16', '2023-04-13 13:49:16', 51, NULL),
(161, 75, 43, 'Good', NULL, '2023-04-13 13:50:30', '2023-04-13 13:50:30', 51, NULL),
(162, 180, 43, 'Bad', NULL, '2023-04-13 13:53:13', '2023-04-13 13:53:13', 51, NULL),
(163, 72, 43, 'Bad', NULL, '2023-04-13 13:54:04', '2023-04-13 13:54:04', 51, NULL),
(164, 196, 43, 'Bad', NULL, '2023-04-13 13:54:41', '2023-04-13 13:54:41', 51, NULL),
(165, 235, 43, 'Bad', NULL, '2023-04-13 13:55:23', '2023-04-13 13:55:23', 51, NULL),
(166, 275, 48, 'Bad', NULL, '2023-04-13 13:56:27', '2023-04-13 13:56:27', 51, NULL),
(167, 32, 16, 'Good', NULL, '2023-04-13 13:58:43', '2023-04-13 13:58:43', 51, NULL),
(168, 210, 27, 'Bad', NULL, '2023-04-13 14:00:29', '2023-04-13 14:00:29', 51, NULL),
(169, 45, 56, 'Good', NULL, '2023-04-13 14:04:52', '2023-04-13 14:04:52', 51, NULL),
(170, 276, 22, 'Bad', NULL, '2023-04-13 15:51:56', '2023-04-13 15:51:56', 51, NULL),
(171, 237, 22, 'Good', NULL, '2023-04-13 15:52:21', '2023-04-13 15:52:21', 51, NULL),
(172, 238, 22, 'Good', NULL, '2023-04-13 15:52:50', '2023-04-13 15:52:50', 51, NULL),
(173, 47, 29, 'Good', NULL, '2023-04-13 15:54:47', '2023-04-13 15:54:47', 51, NULL),
(174, 277, 22, 'Bad', NULL, '2023-04-13 15:55:53', '2023-04-13 15:55:53', 51, NULL),
(175, 115, 35, 'Bad', NULL, '2023-04-13 15:56:28', '2023-04-13 15:56:28', 51, NULL),
(176, 148, 35, 'Bad', NULL, '2023-04-13 15:57:07', '2023-04-13 15:57:07', 51, NULL),
(177, 278, 35, 'Bad', NULL, '2023-04-13 15:58:00', '2023-04-13 15:58:00', 51, NULL),
(178, 240, 2, 'Good', NULL, '2023-04-13 15:58:56', '2023-04-13 15:58:56', 51, NULL),
(179, 108, 37, 'Good', NULL, '2023-04-13 15:59:29', '2023-04-13 15:59:29', 51, NULL),
(180, 58, 21, 'Bad', NULL, '2023-04-13 16:00:09', '2023-04-13 16:00:09', 51, NULL),
(181, 279, 21, 'Bad', NULL, '2023-04-13 16:01:12', '2023-04-13 16:01:12', 51, NULL),
(182, 186, 49, 'Bad', NULL, '2023-04-13 16:02:02', '2023-04-13 16:02:02', 51, NULL),
(183, 209, 73, 'Bad', NULL, '2023-04-13 16:03:08', '2023-04-13 16:03:08', 51, NULL),
(184, 161, 73, 'Bad', NULL, '2023-04-13 16:03:38', '2023-04-13 16:03:38', 51, NULL),
(185, 124, 45, 'Good', NULL, '2023-04-13 16:04:10', '2023-04-13 16:04:10', 51, NULL),
(186, 48, 32, 'Bad', NULL, '2023-04-13 16:06:03', '2023-04-13 16:06:03', 51, NULL),
(187, 17, 32, 'Bad', NULL, '2023-04-13 16:06:50', '2023-04-13 16:06:50', 51, NULL),
(188, 158, 69, 'Good', NULL, '2023-04-13 16:07:28', '2023-04-13 16:07:28', 51, NULL),
(189, 280, 30, 'Bad', NULL, '2023-04-13 16:08:40', '2023-04-13 16:08:40', 51, NULL),
(190, 84, 67, 'Good', NULL, '2023-04-13 16:09:04', '2023-04-13 16:09:04', 51, NULL),
(191, 281, 30, 'Bad', NULL, '2023-04-13 16:09:46', '2023-04-13 16:09:46', 51, NULL),
(192, 80, 29, 'Bad', NULL, '2023-04-13 16:10:36', '2023-04-13 16:10:36', 51, NULL),
(193, 215, 29, 'Bad', NULL, '2023-04-13 16:11:15', '2023-04-13 16:11:15', 51, NULL),
(194, 172, 23, 'Bad', NULL, '2023-04-13 16:11:58', '2023-04-13 16:11:58', 51, NULL),
(195, 197, 23, 'Bad', NULL, '2023-04-13 16:12:28', '2023-04-13 16:12:28', 51, NULL),
(196, 106, 23, 'Bad', NULL, '2023-04-13 16:13:03', '2023-04-13 16:13:03', 51, NULL),
(197, 282, 65, 'Good', NULL, '2023-04-13 16:16:28', '2023-04-13 16:16:28', 51, NULL),
(198, 59, 65, 'Bad', NULL, '2023-04-13 16:17:06', '2023-04-13 16:17:06', 51, NULL),
(199, 228, 40, 'Bad', NULL, '2023-04-13 16:17:39', '2023-04-13 16:17:39', 51, NULL),
(200, 60, 40, 'Bad', NULL, '2023-04-13 16:18:12', '2023-04-13 16:18:12', 51, NULL),
(201, 31, 38, 'Bad', NULL, '2023-04-13 16:19:42', '2023-04-13 16:19:42', 51, NULL),
(202, 232, 38, 'Bad', NULL, '2023-04-13 16:19:42', '2023-04-13 16:19:42', 51, NULL),
(203, 283, 38, 'Good', NULL, '2023-04-13 16:20:22', '2023-04-13 16:20:22', 51, NULL),
(204, 95, 38, 'Good', NULL, '2023-04-13 16:20:22', '2023-04-13 16:20:22', 51, NULL),
(205, 62, 41, 'Good', NULL, '2023-04-13 16:21:41', '2023-04-13 16:21:41', 51, NULL),
(206, 284, 41, 'Good', NULL, '2023-04-13 16:21:41', '2023-04-13 16:21:41', 51, NULL),
(207, 229, 41, 'Good', NULL, '2023-04-13 16:21:41', '2023-04-13 16:21:41', 51, NULL),
(208, 90, 61, 'Good', NULL, '2023-04-13 16:22:40', '2023-04-13 16:22:40', 51, NULL),
(209, 103, 61, 'Good', NULL, '2023-04-13 16:22:40', '2023-04-13 16:22:40', 51, NULL),
(210, 119, 61, 'Good', NULL, '2023-04-13 16:22:40', '2023-04-13 16:22:40', 51, NULL),
(211, 24, 61, 'Good', NULL, '2023-04-13 16:22:40', '2023-04-13 16:22:40', 51, NULL),
(212, 23, 46, 'Bad', NULL, '2023-04-13 16:23:15', '2023-04-13 16:23:15', 51, NULL),
(213, 86, 46, 'Bad', NULL, '2023-04-13 16:23:15', '2023-04-13 16:23:15', 51, NULL),
(214, 49, 44, 'Bad', NULL, '2023-04-13 16:24:18', '2023-04-13 16:24:18', 51, NULL),
(215, 285, 44, 'Bad', NULL, '2023-04-13 16:24:18', '2023-04-13 16:24:18', 51, NULL),
(216, 159, 44, 'Bad', NULL, '2023-04-13 16:24:18', '2023-04-13 16:24:18', 51, NULL),
(217, 15, 45, 'Bad', NULL, '2023-04-13 16:25:41', '2023-04-13 16:25:41', 51, NULL),
(218, 152, 45, 'Bad', NULL, '2023-04-13 16:25:41', '2023-04-13 16:25:41', 51, NULL),
(219, 286, 45, 'Bad', NULL, '2023-04-13 16:25:41', '2023-04-13 16:25:41', 51, NULL),
(220, 220, 45, 'Bad', NULL, '2023-04-13 16:25:41', '2023-04-13 16:25:41', 51, NULL),
(221, 26, 56, 'Bad', NULL, '2023-04-13 16:26:44', '2023-04-13 16:26:44', 51, NULL),
(222, 127, 56, 'Bad', NULL, '2023-04-13 16:26:44', '2023-04-13 16:26:44', 51, NULL),
(223, 287, 63, 'Bad', NULL, '2023-04-13 16:28:09', '2023-04-13 16:28:09', 51, NULL),
(224, 140, 25, 'Bad', NULL, '2023-04-13 16:29:11', '2023-04-13 16:29:11', 51, NULL),
(225, 288, 25, 'Bad', NULL, '2023-04-13 16:29:11', '2023-04-13 16:29:11', 51, NULL),
(226, 118, 52, 'Bad', NULL, '2023-04-13 16:30:24', '2023-04-13 16:30:24', 51, NULL),
(227, 191, 52, 'Bad', NULL, '2023-04-13 16:30:24', '2023-04-13 16:30:24', 51, NULL),
(228, 236, 52, 'Bad', NULL, '2023-04-13 16:30:24', '2023-04-13 16:30:24', 51, NULL),
(229, 254, 64, 'Bad', NULL, '2023-04-13 16:31:33', '2023-04-13 16:31:33', 51, NULL),
(230, 137, 64, 'Bad', NULL, '2023-04-13 16:31:33', '2023-04-13 16:31:33', 51, NULL),
(231, 86, 59, 'Bad', NULL, '2023-04-13 16:32:35', '2023-04-13 16:32:35', 51, NULL),
(232, 23, 59, 'Bad', NULL, '2023-04-13 16:32:35', '2023-04-13 16:32:35', 51, NULL),
(233, 289, 1, 'Good', NULL, '2023-04-13 16:39:52', '2023-04-13 16:39:52', 51, NULL),
(234, 216, 2, 'Bad', NULL, '2023-04-13 16:40:15', '2023-04-13 16:40:15', 51, NULL),
(235, 1, 2, 'Bad', NULL, '2023-04-13 16:40:15', '2023-04-13 16:40:15', 51, NULL),
(236, 187, 3, 'Bad', NULL, '2023-04-13 16:40:42', '2023-04-13 16:40:42', 51, NULL),
(237, 207, 3, 'Bad', NULL, '2023-04-13 16:40:42', '2023-04-13 16:40:42', 51, NULL),
(238, 174, 3, 'Bad', NULL, '2023-04-13 16:40:42', '2023-04-13 16:40:42', 51, NULL),
(239, 226, 4, 'Bad', NULL, '2023-04-13 16:41:37', '2023-04-13 16:41:37', 51, NULL),
(240, 241, 4, 'Bad', NULL, '2023-04-13 16:41:37', '2023-04-13 16:41:37', 51, NULL),
(241, 139, 4, 'Bad', NULL, '2023-04-13 16:41:37', '2023-04-13 16:41:37', 51, NULL),
(242, 206, 5, 'Bad', NULL, '2023-04-13 16:43:57', '2023-04-13 16:43:57', 51, NULL),
(243, 261, 5, 'Bad', NULL, '2023-04-13 16:43:57', '2023-04-13 16:43:57', 51, NULL),
(244, 189, 5, 'Bad', NULL, '2023-04-13 16:43:57', '2023-04-13 16:43:57', 51, NULL),
(245, 142, 5, 'Bad', NULL, '2023-04-13 16:43:57', '2023-04-13 16:43:57', 51, NULL),
(246, 183, 6, 'Bad', NULL, '2023-04-13 16:45:17', '2023-04-13 16:45:17', 51, NULL),
(247, 198, 6, 'Bad', NULL, '2023-04-13 16:45:17', '2023-04-13 16:45:17', 51, NULL),
(248, 66, 10, 'Good', NULL, '2023-04-13 16:46:34', '2023-04-13 16:46:34', 51, NULL),
(249, 214, 10, 'Good', NULL, '2023-04-13 16:46:34', '2023-04-13 16:46:34', 51, NULL),
(250, 81, 10, 'Good', NULL, '2023-04-13 16:46:34', '2023-04-13 16:46:34', 51, NULL),
(251, 94, 10, 'Good', NULL, '2023-04-13 16:46:34', '2023-04-13 16:46:34', 51, NULL),
(252, 97, 12, 'Bad', NULL, '2023-04-13 16:48:19', '2023-04-13 16:48:19', 51, NULL),
(253, 290, 12, 'Bad', NULL, '2023-04-13 16:48:19', '2023-04-13 16:48:19', 51, NULL),
(254, 264, 12, 'Bad', NULL, '2023-04-13 16:48:19', '2023-04-13 16:48:19', 51, NULL),
(255, 156, 8, 'Bad', NULL, '2023-04-13 16:48:55', '2023-04-13 16:48:55', 51, NULL),
(256, 51, 8, 'Bad', NULL, '2023-04-13 16:48:55', '2023-04-13 16:48:55', 51, NULL),
(257, 171, 66, 'Bad', NULL, '2023-04-13 16:49:53', '2023-04-13 16:49:53', 51, NULL),
(258, 53, 13, 'Bad', NULL, '2023-04-13 16:50:47', '2023-04-13 16:50:47', 51, NULL),
(259, 120, 67, 'Bad', NULL, '2023-04-13 16:53:12', '2023-04-13 16:53:12', 51, NULL),
(260, 291, 67, 'Bad', NULL, '2023-04-13 16:53:12', '2023-04-13 16:53:12', 51, NULL),
(261, 16, 67, 'Bad', NULL, '2023-04-13 16:53:12', '2023-04-13 16:53:12', 51, NULL),
(262, 292, 16, 'Bad', NULL, '2023-04-13 16:56:50', '2023-04-13 16:56:50', 51, NULL),
(263, 120, 16, 'Bad', NULL, '2023-04-13 16:56:50', '2023-04-13 16:56:50', 51, NULL),
(264, 201, 16, 'Bad', NULL, '2023-04-13 16:56:50', '2023-04-13 16:56:50', 51, NULL),
(265, 293, 16, 'Bad', NULL, '2023-04-13 16:56:51', '2023-04-13 16:56:51', 51, NULL),
(266, 43, 19, 'Bad', NULL, '2023-04-13 16:58:56', '2023-04-13 16:58:56', 51, NULL),
(267, 294, 19, 'Bad', NULL, '2023-04-13 16:58:56', '2023-04-13 16:58:56', 51, NULL),
(268, 114, 19, 'Bad', NULL, '2023-04-13 16:58:56', '2023-04-13 16:58:56', 51, NULL),
(269, 107, 17, 'Bad', NULL, '2023-04-13 16:59:43', '2023-04-13 16:59:43', 51, NULL),
(270, 169, 68, 'Bad', NULL, '2023-04-13 17:00:15', '2023-04-13 17:00:15', 51, NULL),
(271, 149, 68, 'Bad', NULL, '2023-04-13 17:00:15', '2023-04-13 17:00:15', 51, NULL),
(272, 57, 70, 'Bad', NULL, '2023-04-13 17:01:21', '2023-04-13 17:01:21', 51, NULL),
(273, 195, 70, 'Bad', NULL, '2023-04-13 17:01:21', '2023-04-13 17:01:21', 51, NULL),
(274, 178, 18, 'Bad', NULL, '2023-04-13 17:01:56', '2023-04-13 17:01:56', 51, NULL),
(275, 64, 18, 'Bad', NULL, '2023-04-13 17:01:56', '2023-04-13 17:01:56', 51, NULL),
(276, 141, 71, 'Bad', NULL, '2023-04-13 17:02:39', '2023-04-13 17:02:39', 51, NULL),
(277, 188, 71, 'Bad', NULL, '2023-04-13 17:02:39', '2023-04-13 17:02:39', 51, NULL),
(278, 166, 69, 'Bad', NULL, '2023-04-13 17:03:54', '2023-04-13 17:03:54', 51, NULL),
(279, 109, 69, 'Bad', NULL, '2023-04-13 17:03:54', '2023-04-13 17:03:54', 51, NULL),
(280, 92, 69, 'Bad', NULL, '2023-04-13 17:03:54', '2023-04-13 17:03:54', 51, NULL),
(281, 71, 69, 'Bad', NULL, '2023-04-13 17:03:54', '2023-04-13 17:03:54', 51, NULL),
(282, 51, 69, 'Bad', NULL, '2023-04-13 17:03:54', '2023-04-13 17:03:54', 51, NULL),
(283, 122, 69, 'Bad', NULL, '2023-04-13 17:03:54', '2023-04-13 17:03:54', 51, NULL),
(284, 39, 44, 'Bad', NULL, '2023-04-13 17:05:13', '2023-04-13 17:05:13', 51, NULL),
(285, 250, 44, 'Bad', NULL, '2023-04-13 17:05:13', '2023-04-13 17:05:13', 51, NULL),
(286, 67, 20, 'Bad', NULL, '2023-04-13 17:08:44', '2023-04-13 17:08:44', 51, NULL),
(287, 295, 20, 'Bad', NULL, '2023-04-13 17:08:44', '2023-04-13 17:08:44', 51, NULL),
(288, 239, 20, 'Bad', NULL, '2023-04-13 17:08:44', '2023-04-13 17:08:44', 51, NULL),
(289, 34, 20, 'Bad', NULL, '2023-04-13 17:08:44', '2023-04-13 17:08:44', 51, NULL),
(290, 240, 20, 'Bad', NULL, '2023-04-13 17:08:44', '2023-04-13 17:08:44', 51, NULL),
(291, 52, 20, 'Bad', NULL, '2023-04-13 17:08:45', '2023-04-13 17:08:45', 51, NULL),
(292, 62, 51, 'Good', NULL, '2023-04-13 17:13:04', '2023-04-13 17:13:04', 52, NULL),
(293, 284, 51, 'Good', NULL, '2023-04-13 17:13:04', '2023-04-13 17:13:04', 52, NULL),
(294, 229, 51, 'Good', NULL, '2023-04-13 17:13:04', '2023-04-13 17:13:04', 52, NULL),
(295, 287, 51, 'Good', NULL, '2023-04-13 17:13:25', '2023-04-13 17:13:25', 22, NULL),
(296, 200, 51, 'Good', NULL, '2023-04-13 17:13:25', '2023-04-13 17:13:25', 22, NULL),
(297, 47, 51, 'Good', NULL, '2023-04-13 17:13:25', '2023-04-13 17:13:25', 22, NULL),
(298, 86, 51, 'Good', NULL, '2023-04-13 17:13:49', '2023-04-13 17:13:49', 23, NULL),
(299, 168, 51, 'Good', NULL, '2023-04-13 17:13:49', '2023-04-13 17:13:49', 23, NULL),
(300, 18, 51, 'Good', NULL, '2023-04-13 17:13:49', '2023-04-13 17:13:49', 23, NULL),
(301, 165, 51, 'Good', NULL, '2023-04-13 17:13:49', '2023-04-13 17:13:49', 23, NULL),
(302, 24, 51, 'Good', NULL, '2023-04-13 17:15:10', '2023-04-13 17:15:10', 24, NULL),
(303, 254, 51, 'Good', NULL, '2023-04-13 17:15:10', '2023-04-13 17:15:10', 24, NULL),
(304, 176, 51, 'Good', NULL, '2023-04-13 17:15:10', '2023-04-13 17:15:10', 24, NULL),
(305, 140, 51, 'Good', NULL, '2023-04-13 17:15:28', '2023-04-13 17:15:28', 56, NULL),
(306, 236, 51, 'Good', NULL, '2023-04-13 17:15:28', '2023-04-13 17:15:28', 56, NULL),
(307, 6, 51, 'Good', NULL, '2023-04-13 17:16:00', '2023-04-13 17:16:00', 21, NULL),
(308, 108, 51, 'Good', NULL, '2023-04-13 17:16:00', '2023-04-13 17:16:00', 21, NULL),
(309, 30, 51, 'Good', NULL, '2023-04-13 17:16:20', '2023-04-13 17:16:20', 25, NULL),
(310, 185, 51, 'Good', NULL, '2023-04-13 17:16:20', '2023-04-13 17:16:20', 25, NULL),
(311, 186, 51, 'Good', NULL, '2023-04-13 17:17:28', '2023-04-13 17:17:28', 57, NULL),
(312, 222, 51, 'Good', NULL, '2023-04-13 17:17:28', '2023-04-13 17:17:28', 57, NULL),
(313, 58, 51, 'Good', NULL, '2023-04-13 17:17:28', '2023-04-13 17:17:28', 57, NULL),
(314, 158, 51, 'Good', NULL, '2023-04-13 17:18:06', '2023-04-13 17:18:06', 27, NULL),
(315, 281, 51, 'Good', NULL, '2023-04-13 17:18:06', '2023-04-13 17:18:06', 27, NULL),
(316, 119, 51, 'Good', NULL, '2023-04-13 17:18:35', '2023-04-13 17:18:35', 28, NULL),
(317, 23, 51, 'Good', NULL, '2023-04-13 17:18:35', '2023-04-13 17:18:35', 28, NULL),
(318, 232, 51, 'Good', NULL, '2023-04-13 17:18:35', '2023-04-13 17:18:35', 28, NULL),
(319, 118, 51, 'Good', NULL, '2023-04-13 17:19:06', '2023-04-13 17:19:06', 29, NULL),
(320, 106, 51, 'Good', NULL, '2023-04-13 17:19:06', '2023-04-13 17:19:06', 29, NULL),
(321, 197, 51, 'Good', NULL, '2023-04-13 17:19:06', '2023-04-13 17:19:06', 29, NULL),
(322, 286, 51, 'Good', NULL, '2023-04-13 17:19:39', '2023-04-13 17:19:39', 30, NULL),
(323, 137, 51, 'Good', NULL, '2023-04-13 17:19:39', '2023-04-13 17:19:39', 30, NULL),
(324, 115, 51, 'Good', NULL, '2023-04-13 17:20:03', '2023-04-13 17:20:03', 31, NULL),
(325, 249, 51, 'Good', NULL, '2023-04-13 17:20:03', '2023-04-13 17:20:03', 31, NULL),
(326, 172, 51, 'Good', NULL, '2023-04-13 17:21:06', '2023-04-13 17:21:06', 32, NULL),
(327, 283, 51, 'Good', NULL, '2023-04-13 17:21:06', '2023-04-13 17:21:06', 32, NULL),
(328, 215, 51, 'Good', NULL, '2023-04-13 17:22:21', '2023-04-13 17:22:21', 59, NULL),
(329, 80, 51, 'Good', NULL, '2023-04-13 17:22:22', '2023-04-13 17:22:22', 59, NULL),
(330, 124, 51, 'Good', NULL, '2023-04-13 17:23:32', '2023-04-13 17:23:32', 34, NULL),
(331, 161, 51, 'Good', NULL, '2023-04-13 17:23:32', '2023-04-13 17:23:32', 34, NULL),
(332, 95, 51, 'Good', NULL, '2023-04-13 17:23:56', '2023-04-13 17:23:56', 35, NULL),
(333, 31, 51, 'Good', NULL, '2023-04-13 17:23:56', '2023-04-13 17:23:56', 35, NULL),
(334, 224, 51, 'Good', NULL, '2023-04-13 17:23:56', '2023-04-13 17:23:56', 35, NULL),
(335, 59, 51, 'Good', NULL, '2023-04-13 17:24:24', '2023-04-13 17:24:24', 36, NULL),
(336, 282, 51, 'Good', NULL, '2023-04-13 17:24:24', '2023-04-13 17:24:24', 36, NULL),
(337, 60, 51, 'Good', NULL, '2023-04-13 17:24:55', '2023-04-13 17:24:55', 37, NULL),
(338, 228, 51, 'Good', NULL, '2023-04-13 17:24:55', '2023-04-13 17:24:55', 37, NULL),
(339, 196, 51, 'Good', NULL, '2023-04-13 17:25:22', '2023-04-13 17:25:22', 38, NULL),
(340, 276, 51, 'Good', NULL, '2023-04-13 17:25:22', '2023-04-13 17:25:22', 38, NULL),
(341, 117, 51, 'Good', NULL, '2023-04-13 17:25:50', '2023-04-13 17:25:50', 39, NULL),
(342, 45, 51, 'Good', NULL, '2023-04-13 17:25:50', '2023-04-13 17:25:50', 39, NULL),
(343, 33, 51, 'Good', NULL, '2023-04-13 17:26:45', '2023-04-13 17:26:45', 65, NULL),
(344, 237, 51, 'Good', NULL, '2023-04-13 17:26:45', '2023-04-13 17:26:45', 65, NULL),
(345, 238, 51, 'Good', NULL, '2023-04-13 17:26:45', '2023-04-13 17:26:45', 65, NULL),
(346, 15, 51, 'Good', NULL, '2023-04-13 17:27:11', '2023-04-13 17:27:11', 33, NULL),
(347, 152, 51, 'Good', NULL, '2023-04-13 17:27:11', '2023-04-13 17:27:11', 33, NULL),
(348, 275, 51, 'Good', NULL, '2023-04-13 17:27:44', '2023-04-13 17:27:44', 40, NULL),
(349, 72, 51, 'Good', NULL, '2023-04-13 17:27:44', '2023-04-13 17:27:44', 40, NULL),
(350, 235, 51, 'Good', NULL, '2023-04-13 17:27:44', '2023-04-13 17:27:44', 40, NULL),
(351, 252, 51, 'Good', NULL, '2023-04-13 17:28:26', '2023-04-13 17:28:26', 41, NULL),
(352, 42, 51, 'Good', NULL, '2023-04-13 17:28:26', '2023-04-13 17:28:26', 41, NULL),
(353, 210, 51, 'Good', NULL, '2023-04-13 17:28:26', '2023-04-13 17:28:26', 41, NULL),
(354, 277, 51, 'Good', NULL, '2023-04-13 17:29:46', '2023-04-13 17:29:46', 64, NULL),
(355, 274, 51, 'Good', NULL, '2023-04-13 17:29:46', '2023-04-13 17:29:46', 64, NULL),
(356, 221, 51, 'Good', NULL, '2023-04-13 17:29:46', '2023-04-13 17:29:46', 64, NULL),
(357, 69, 51, 'Good', NULL, '2023-04-13 17:30:18', '2023-04-13 17:30:18', 43, NULL),
(358, 48, 51, 'Good', NULL, '2023-04-13 17:30:18', '2023-04-13 17:30:18', 43, NULL),
(359, 148, 51, 'Good', NULL, '2023-04-13 17:30:18', '2023-04-13 17:30:18', 43, NULL),
(360, 127, 51, 'Good', NULL, '2023-04-13 17:31:23', '2023-04-13 17:31:23', 74, NULL),
(361, 159, 51, 'Good', NULL, '2023-04-13 17:31:23', '2023-04-13 17:31:23', 74, NULL),
(362, 26, 51, 'Good', NULL, '2023-04-13 17:31:23', '2023-04-13 17:31:23', 74, NULL),
(363, 103, 51, 'Good', NULL, '2023-04-13 17:32:19', '2023-04-13 17:32:19', 45, NULL),
(364, 119, 51, 'Good', NULL, '2023-04-13 17:32:19', '2023-04-13 17:32:19', 45, NULL),
(365, 75, 51, 'Good', NULL, '2023-04-13 17:32:54', '2023-04-13 17:32:54', 46, NULL),
(366, 180, 51, 'Good', NULL, '2023-04-13 17:32:54', '2023-04-13 17:32:54', 46, NULL),
(367, 242, 51, 'Good', NULL, '2023-04-13 17:34:12', '2023-04-13 17:34:12', 60, NULL),
(368, 213, 51, 'Good', NULL, '2023-04-13 17:34:12', '2023-04-13 17:34:12', 60, NULL),
(369, 17, 51, 'Good', NULL, '2023-04-13 17:35:49', '2023-04-13 17:35:49', 48, NULL),
(370, 84, 51, 'Good', NULL, '2023-04-13 17:35:49', '2023-04-13 17:35:49', 48, NULL),
(371, 273, 51, 'Good', NULL, '2023-04-13 17:36:59', '2023-04-13 17:36:59', 61, NULL),
(372, 280, 51, 'Good', NULL, '2023-04-13 17:36:59', '2023-04-13 17:36:59', 61, NULL),
(373, 274, 51, 'Good', NULL, '2023-04-13 17:36:59', '2023-04-13 17:36:59', 61, NULL),
(374, 285, 51, 'Good', NULL, '2023-04-13 17:37:24', '2023-04-13 17:37:24', 50, NULL),
(375, 44, 51, 'Good', NULL, '2023-04-13 17:37:24', '2023-04-13 17:37:24', 50, NULL),
(376, 297, 51, 'Good', NULL, '2023-04-13 17:39:00', '2023-04-13 17:39:00', 49, NULL),
(377, 131, 51, 'Good', NULL, '2023-04-13 17:39:00', '2023-04-13 17:39:00', 49, NULL),
(378, 272, 51, 'Good', NULL, '2023-04-13 17:39:27', '2023-04-13 17:39:27', 63, NULL),
(379, 271, 51, 'Good', NULL, '2023-04-13 17:39:27', '2023-04-13 17:39:27', 63, NULL),
(380, 198, 51, 'Good', NULL, '2023-04-13 17:41:33', '2023-04-13 17:41:33', 1, NULL),
(381, 67, 51, 'Good', NULL, '2023-04-13 17:41:33', '2023-04-13 17:41:33', 1, NULL),
(382, 171, 51, 'Good', NULL, '2023-04-13 17:41:52', '2023-04-13 17:41:52', 2, NULL),
(383, 201, 51, 'Good', NULL, '2023-04-13 17:41:52', '2023-04-13 17:41:52', 2, NULL),
(384, 64, 51, 'Good', NULL, '2023-04-13 17:42:23', '2023-04-13 17:42:23', 3, NULL),
(385, 183, 51, 'Good', NULL, '2023-04-13 17:42:23', '2023-04-13 17:42:23', 3, NULL),
(386, 241, 51, 'Good', NULL, '2023-04-13 17:42:23', '2023-04-13 17:42:23', 3, NULL),
(387, 189, 51, 'Good', NULL, '2023-04-13 17:42:44', '2023-04-13 17:42:44', 4, NULL),
(388, 142, 51, 'Good', NULL, '2023-04-13 17:42:44', '2023-04-13 17:42:44', 4, NULL),
(389, 292, 51, 'Good', NULL, '2023-04-13 17:43:03', '2023-04-13 17:43:03', 5, NULL),
(390, 120, 51, 'Good', NULL, '2023-04-13 17:43:03', '2023-04-13 17:43:03', 5, NULL),
(391, 226, 51, 'Good', NULL, '2023-04-13 17:43:31', '2023-04-13 17:43:31', 6, NULL),
(392, 295, 51, 'Good', NULL, '2023-04-13 17:43:31', '2023-04-13 17:43:31', 6, NULL),
(393, 188, 51, 'Good', NULL, '2023-04-13 17:44:06', '2023-04-13 17:44:06', 10, NULL),
(394, 141, 51, 'Good', NULL, '2023-04-13 17:44:06', '2023-04-13 17:44:06', 10, NULL),
(395, 43, 51, 'Good', NULL, '2023-04-13 17:44:38', '2023-04-13 17:44:38', 8, NULL),
(396, 216, 51, 'Good', NULL, '2023-04-13 17:44:38', '2023-04-13 17:44:38', 8, NULL),
(397, 52, 51, 'Good', NULL, '2023-04-13 17:45:06', '2023-04-13 17:45:06', 66, NULL),
(398, 122, 51, 'Good', NULL, '2023-04-13 17:45:06', '2023-04-13 17:45:06', 66, NULL),
(399, 149, 51, 'Good', NULL, '2023-04-13 17:45:06', '2023-04-13 17:45:06', 66, NULL),
(400, 139, 51, 'Good', NULL, '2023-04-13 17:46:06', '2023-04-13 17:46:06', 12, NULL),
(401, 206, 51, 'Good', NULL, '2023-04-13 17:46:06', '2023-04-13 17:46:06', 12, NULL),
(402, 261, 51, 'Good', NULL, '2023-04-13 17:46:06', '2023-04-13 17:46:06', 12, NULL),
(403, 57, 51, 'Good', NULL, '2023-04-13 17:46:47', '2023-04-13 17:46:47', 11, NULL),
(404, 178, 51, 'Good', NULL, '2023-04-13 17:46:47', '2023-04-13 17:46:47', 11, NULL),
(405, 49, 51, 'Good', NULL, '2023-04-13 17:47:36', '2023-04-13 17:47:36', 13, NULL),
(406, 250, 51, 'Good', NULL, '2023-04-13 17:47:36', '2023-04-13 17:47:36', 13, NULL),
(407, 71, 51, 'Good', NULL, '2023-04-13 17:48:23', '2023-04-13 17:48:23', 14, NULL),
(408, 207, 51, 'Good', NULL, '2023-04-13 17:48:23', '2023-04-13 17:48:23', 14, NULL),
(409, 187, 51, 'Good', NULL, '2023-04-13 17:48:23', '2023-04-13 17:48:23', 14, NULL),
(410, 158, 51, 'Good', NULL, '2023-04-13 17:49:01', '2023-04-13 17:49:01', 67, NULL),
(411, 114, 51, 'Good', NULL, '2023-04-13 17:49:01', '2023-04-13 17:49:01', 67, NULL),
(412, 109, 51, 'Good', NULL, '2023-04-13 17:49:01', '2023-04-13 17:49:01', 67, NULL),
(413, 212, 51, 'Good', NULL, '2023-04-13 17:49:01', '2023-04-13 17:49:01', 67, NULL),
(414, 34, 51, 'Good', NULL, '2023-04-13 17:49:41', '2023-04-13 17:49:41', 16, NULL),
(415, 239, 51, 'Good', NULL, '2023-04-13 17:49:41', '2023-04-13 17:49:41', 16, NULL),
(416, 274, 51, 'Good', NULL, '2023-04-13 17:50:18', '2023-04-13 17:50:18', 20, NULL),
(417, 156, 51, 'Good', NULL, '2023-04-13 17:50:18', '2023-04-13 17:50:18', 20, NULL),
(418, 51, 51, 'Good', NULL, '2023-04-13 17:50:18', '2023-04-13 17:50:18', 20, NULL),
(419, 97, 51, 'Good', NULL, '2023-04-13 17:50:38', '2023-04-13 17:50:38', 19, NULL),
(420, 66, 51, 'Good', NULL, '2023-04-13 17:50:38', '2023-04-13 17:50:38', 19, NULL),
(421, 39, 51, 'Good', NULL, '2023-04-13 17:51:31', '2023-04-13 17:51:31', 17, NULL),
(422, 214, 51, 'Good', NULL, '2023-04-13 17:51:50', '2023-04-13 17:51:50', 70, NULL),
(423, 107, 51, 'Good', NULL, '2023-04-13 17:51:50', '2023-04-13 17:51:50', 70, NULL),
(424, 293, 51, 'Good', NULL, '2023-04-13 17:52:17', '2023-04-13 17:52:17', 18, NULL),
(425, 174, 51, 'Good', NULL, '2023-04-13 17:52:17', '2023-04-13 17:52:17', 18, NULL),
(426, 51, 51, 'Good', NULL, '2023-04-13 17:52:54', '2023-04-13 17:52:54', 71, NULL),
(427, 195, 51, 'Good', NULL, '2023-04-13 17:52:54', '2023-04-13 17:52:54', 71, NULL),
(428, 92, 51, 'Good', NULL, '2023-04-13 17:52:54', '2023-04-13 17:52:54', 71, NULL),
(429, 81, 51, 'Good', NULL, '2023-04-13 17:53:31', '2023-04-13 17:53:31', 69, NULL),
(430, 169, 51, 'Good', NULL, '2023-04-13 17:53:31', '2023-04-13 17:53:31', 69, NULL),
(431, 94, 51, 'Good', NULL, '2023-04-13 17:53:31', '2023-04-13 17:53:31', 69, NULL),
(432, 264, 51, 'Good', NULL, '2023-04-13 17:53:55', '2023-04-13 17:53:55', 68, NULL),
(433, 290, 51, 'Good', NULL, '2023-04-13 17:53:55', '2023-04-13 17:53:55', 68, NULL),
(434, 120, 51, 'Good', NULL, '2023-04-13 17:54:18', '2023-04-13 17:54:18', 72, NULL),
(435, 291, 51, 'Good', NULL, '2023-04-13 17:54:18', '2023-04-13 17:54:18', 72, NULL),
(436, 294, 51, 'Good', NULL, '2023-04-13 17:55:31', '2023-04-13 17:55:31', 44, NULL),
(437, 16, 51, 'Good', NULL, '2023-04-13 17:55:31', '2023-04-13 17:55:31', 44, NULL),
(438, 99, 52, 'Charging', NULL, '2023-04-13 18:03:39', '2023-04-13 18:03:39', 51, NULL),
(439, 298, 52, 'Charging', NULL, '2023-04-13 18:03:39', '2023-04-13 18:03:39', 51, NULL),
(440, 156, 52, 'Charging', NULL, '2023-04-13 18:03:39', '2023-04-13 18:03:39', 51, NULL),
(441, 65, 22, 'Charging', NULL, '2023-04-13 18:04:16', '2023-04-13 18:04:16', 51, NULL),
(442, 257, 22, 'Charging', NULL, '2023-04-13 18:04:16', '2023-04-13 18:04:16', 51, NULL),
(443, 126, 22, 'Charging', NULL, '2023-04-13 18:04:16', '2023-04-13 18:04:16', 51, NULL),
(444, 18, 23, 'Charging', NULL, '2023-04-13 18:04:44', '2023-04-13 18:04:44', 51, NULL),
(445, 84, 23, 'Charging', NULL, '2023-04-13 18:04:44', '2023-04-13 18:04:44', 51, NULL),
(446, 20, 24, 'Charging', NULL, '2023-04-13 18:06:01', '2023-04-13 18:06:01', 51, NULL),
(447, 191, 24, 'Charging', NULL, '2023-04-13 18:06:01', '2023-04-13 18:06:01', 51, NULL),
(448, 223, 56, 'Charging', NULL, '2023-04-13 18:06:57', '2023-04-13 18:06:57', 51, NULL),
(449, 113, 56, 'Charging', NULL, '2023-04-13 18:06:57', '2023-04-13 18:06:57', 51, NULL),
(450, 100, 56, 'Charging', NULL, '2023-04-13 18:06:57', '2023-04-13 18:06:57', 51, NULL),
(451, 80, 56, 'Charging', NULL, '2023-04-13 18:06:57', '2023-04-13 18:06:57', 51, NULL),
(452, 179, 21, 'Charging', NULL, '2023-04-13 18:07:29', '2023-04-13 18:07:29', 51, NULL),
(453, 91, 21, 'Charging', NULL, '2023-04-13 18:07:29', '2023-04-13 18:07:29', 51, NULL),
(454, 217, 57, 'Charging', NULL, '2023-04-13 18:08:48', '2023-04-13 18:08:48', 51, NULL),
(455, 199, 57, 'Charging', NULL, '2023-04-13 18:08:48', '2023-04-13 18:08:48', 51, NULL),
(456, 181, 27, 'Charging', NULL, '2023-04-13 18:09:58', '2023-04-13 18:09:58', 51, NULL),
(457, 175, 27, 'Charging', NULL, '2023-04-13 18:09:58', '2023-04-13 18:09:58', 51, NULL),
(458, 267, 28, 'Charging', NULL, '2023-04-13 18:11:07', '2023-04-13 18:11:07', 51, NULL),
(459, 32, 28, 'Charging', NULL, '2023-04-13 18:11:07', '2023-04-13 18:11:07', 51, NULL),
(460, 232, 28, 'Charging', NULL, '2023-04-13 18:11:07', '2023-04-13 18:11:07', 51, NULL),
(461, 93, 28, 'Charging', NULL, '2023-04-13 18:11:07', '2023-04-13 18:11:07', 51, NULL),
(462, 244, 29, 'Charging', NULL, '2023-04-13 18:11:45', '2023-04-13 18:11:45', 51, NULL),
(463, 164, 29, 'Charging', NULL, '2023-04-13 18:11:45', '2023-04-13 18:11:45', 51, NULL),
(464, 145, 31, 'Charging', NULL, '2023-04-13 18:13:05', '2023-04-13 18:13:05', 51, NULL),
(465, 299, 31, 'Charging', NULL, '2023-04-13 18:13:05', '2023-04-13 18:13:05', 51, NULL),
(466, 208, 32, 'Charging', NULL, '2023-04-13 18:13:43', '2023-04-13 18:13:43', 51, NULL),
(467, 258, 59, 'Charging', NULL, '2023-04-13 18:16:26', '2023-04-13 18:16:26', 51, NULL),
(468, 248, 34, 'Charging', NULL, '2023-04-13 18:17:05', '2023-04-13 18:17:05', 51, NULL),
(469, 151, 34, 'Charging', NULL, '2023-04-13 18:17:05', '2023-04-13 18:17:05', 51, NULL),
(470, 136, 34, 'Charging', NULL, '2023-04-13 18:17:05', '2023-04-13 18:17:05', 51, NULL),
(471, 88, 35, 'Charging', NULL, '2023-04-13 18:19:32', '2023-04-13 18:19:32', 51, NULL),
(472, 95, 35, 'Charging', NULL, '2023-04-13 18:19:32', '2023-04-13 18:19:32', 51, NULL),
(473, 22, 36, 'Charging', NULL, '2023-04-13 18:20:04', '2023-04-13 18:20:04', 51, NULL),
(474, 282, 36, 'Charging', NULL, '2023-04-13 18:20:04', '2023-04-13 18:20:04', 51, NULL),
(475, 138, 37, 'Charging', NULL, '2023-04-13 18:20:56', '2023-04-13 18:20:56', 51, NULL),
(476, 211, 37, 'Charging', NULL, '2023-04-13 18:20:56', '2023-04-13 18:20:56', 51, NULL),
(477, 204, 37, 'Charging', NULL, '2023-04-13 18:20:56', '2023-04-13 18:20:56', 51, NULL),
(478, 40, 37, 'Charging', NULL, '2023-04-13 18:20:56', '2023-04-13 18:20:56', 51, NULL),
(479, 83, 38, 'Charging', NULL, '2023-04-13 18:22:01', '2023-04-13 18:22:01', 51, NULL),
(480, 21, 38, 'Charging', NULL, '2023-04-13 18:22:01', '2023-04-13 18:22:01', 51, NULL),
(481, 263, 38, 'Charging', NULL, '2023-04-13 18:22:01', '2023-04-13 18:22:01', 51, NULL),
(482, 136, 39, 'Good', NULL, '2023-04-13 18:23:20', '2023-04-13 18:23:20', 51, NULL),
(483, 79, 39, 'Good', NULL, '2023-04-13 18:23:20', '2023-04-13 18:23:20', 51, NULL),
(484, 181, 39, 'Good', NULL, '2023-04-13 18:23:20', '2023-04-13 18:23:20', 51, NULL),
(485, 213, 65, 'Charging', NULL, '2023-04-13 18:24:05', '2023-04-13 18:24:05', 51, NULL),
(486, 260, 65, 'Charging', NULL, '2023-04-13 18:24:05', '2023-04-13 18:24:05', 51, NULL),
(487, 15, 33, 'Charging', NULL, '2023-04-13 18:24:45', '2023-04-13 18:24:45', 51, NULL),
(488, 152, 33, 'Charging', NULL, '2023-04-13 18:24:45', '2023-04-13 18:24:45', 51, NULL),
(489, 230, 40, 'Charging', NULL, '2023-04-13 18:26:58', '2023-04-13 18:26:58', 51, NULL),
(490, 300, 40, 'Charging', NULL, '2023-04-13 18:26:58', '2023-04-13 18:26:58', 51, NULL),
(491, 235, 40, 'Charging', NULL, '2023-04-13 18:26:58', '2023-04-13 18:26:58', 51, NULL),
(492, 268, 41, 'Charging', NULL, '2023-04-13 18:28:31', '2023-04-13 18:28:31', 51, NULL),
(493, 111, 64, 'Charging', NULL, '2023-04-13 18:38:13', '2023-04-13 18:38:13', 51, NULL),
(494, 301, 64, 'Charging', NULL, '2023-04-13 18:38:13', '2023-04-13 18:38:13', 51, NULL),
(495, 54, 64, 'Charging', NULL, '2023-04-13 18:38:13', '2023-04-13 18:38:13', 51, NULL),
(496, 77, 43, 'Charging', NULL, '2023-04-13 18:39:10', '2023-04-13 18:39:10', 51, NULL),
(497, 260, 43, 'Charging', NULL, '2023-04-13 18:39:10', '2023-04-13 18:39:10', 51, NULL),
(498, 162, 43, 'Charging', NULL, '2023-04-13 18:39:10', '2023-04-13 18:39:10', 51, NULL),
(499, 146, 43, 'Charging', NULL, '2023-04-13 18:39:10', '2023-04-13 18:39:10', 51, NULL),
(500, 69, 43, 'Charging', NULL, '2023-04-13 18:39:10', '2023-04-13 18:39:10', 51, NULL),
(501, 176, 74, 'Charging', NULL, '2023-04-13 18:39:49', '2023-04-13 18:39:49', 51, NULL),
(502, 26, 74, 'Charging', NULL, '2023-04-13 18:39:50', '2023-04-13 18:39:50', 51, NULL),
(503, 194, 46, 'Charging', NULL, '2023-04-13 18:40:33', '2023-04-13 18:40:33', 51, NULL),
(504, 89, 48, 'Charging', NULL, '2023-04-13 18:42:13', '2023-04-13 18:42:13', 51, NULL),
(505, 5, 48, 'Charging', NULL, '2023-04-13 18:42:13', '2023-04-13 18:42:13', 51, NULL),
(506, 96, 61, 'Charging', NULL, '2023-04-13 18:43:10', '2023-04-13 18:43:10', 51, NULL),
(507, 218, 61, 'Charging', NULL, '2023-04-13 18:43:10', '2023-04-13 18:43:10', 51, NULL),
(508, 128, 49, 'Charging', NULL, '2023-04-13 18:44:05', '2023-04-13 18:44:05', 51, NULL),
(509, 133, 49, 'Charging', NULL, '2023-04-13 18:44:05', '2023-04-13 18:44:05', 51, NULL),
(510, 190, 49, 'Charging', NULL, '2023-04-13 18:44:05', '2023-04-13 18:44:05', 51, NULL),
(511, 44, 50, 'Charging', NULL, '2023-04-13 18:44:51', '2023-04-13 18:44:51', 51, NULL),
(512, 285, 50, 'Charging', NULL, '2023-04-13 18:44:51', '2023-04-13 18:44:51', 51, NULL),
(513, 84, 50, 'Charging', NULL, '2023-04-13 18:44:51', '2023-04-13 18:44:51', 51, NULL),
(514, 271, 63, 'Charging', NULL, '2023-04-13 18:45:41', '2023-04-13 18:45:41', 51, NULL),
(515, 272, 63, 'Charging', NULL, '2023-04-13 18:45:41', '2023-04-13 18:45:41', 51, NULL),
(516, 104, 63, 'Charging', NULL, '2023-04-13 18:45:41', '2023-04-13 18:45:41', 51, NULL),
(517, 84, 51, 'Good', NULL, '2023-04-13 23:36:07', '2023-04-13 23:36:07', 52, NULL),
(518, 300, 51, 'Good', NULL, '2023-04-13 23:36:07', '2023-04-13 23:36:07', 52, NULL),
(519, 95, 51, 'Good', NULL, '2023-04-13 23:36:55', '2023-04-13 23:36:55', 22, NULL),
(520, 181, 51, 'Good', NULL, '2023-04-13 23:36:55', '2023-04-13 23:36:55', 22, NULL),
(521, 32, 51, 'Good', NULL, '2023-04-13 23:38:56', '2023-04-13 23:38:56', 23, NULL),
(522, 205, 51, 'Good', NULL, '2023-04-13 23:38:56', '2023-04-13 23:38:56', 23, NULL),
(523, 83, 51, 'Good', NULL, '2023-04-13 23:38:56', '2023-04-13 23:38:56', 23, NULL),
(524, 136, 51, 'Good', NULL, '2023-04-13 23:39:24', '2023-04-13 23:39:24', 24, NULL),
(525, 151, 51, 'Good', NULL, '2023-04-13 23:39:24', '2023-04-13 23:39:24', 24, NULL),
(526, 65, 51, 'Good', NULL, '2023-04-13 23:40:15', '2023-04-13 23:40:15', 56, NULL),
(527, 176, 51, 'Good', NULL, '2023-04-13 23:40:15', '2023-04-13 23:40:15', 56, NULL),
(528, 133, 51, 'Good', NULL, '2023-04-13 23:40:15', '2023-04-13 23:40:15', 56, NULL),
(529, 272, 51, 'Good', NULL, '2023-04-13 23:40:42', '2023-04-13 23:40:42', 21, NULL),
(530, 191, 51, 'Good', NULL, '2023-04-13 23:40:42', '2023-04-13 23:40:42', 21, NULL),
(531, 162, 51, 'Good', NULL, '2023-04-13 23:41:21', '2023-04-13 23:41:21', 27, NULL),
(532, 111, 51, 'Good', NULL, '2023-04-13 23:41:21', '2023-04-13 23:41:21', 27, NULL),
(533, 260, 51, 'Good', NULL, '2023-04-13 23:43:07', '2023-04-13 23:43:07', 28, NULL),
(534, 77, 51, 'Good', NULL, '2023-04-13 23:43:07', '2023-04-13 23:43:07', 28, NULL),
(535, 257, 51, 'Good', NULL, '2023-04-13 23:43:07', '2023-04-13 23:43:07', 28, NULL),
(536, 21, 51, 'Good', NULL, '2023-04-13 23:43:47', '2023-04-13 23:43:47', 29, NULL),
(537, 253, 51, 'Good', NULL, '2023-04-13 23:43:47', '2023-04-13 23:43:47', 29, NULL),
(538, 235, 51, 'Good', NULL, '2023-04-13 23:43:47', '2023-04-13 23:43:47', 29, NULL),
(539, 232, 51, 'Good', NULL, '2023-04-13 23:44:26', '2023-04-13 23:44:26', 30, NULL),
(540, 267, 51, 'Good', NULL, '2023-04-13 23:44:26', '2023-04-13 23:44:26', 30, NULL),
(541, 244, 51, 'Good', NULL, '2023-04-13 23:46:11', '2023-04-13 23:46:11', 31, NULL),
(542, 157, 51, 'Good', NULL, '2023-04-13 23:46:11', '2023-04-13 23:46:11', 31, NULL),
(543, 73, 51, 'Good', NULL, '2023-04-13 23:46:11', '2023-04-13 23:46:11', 31, NULL),
(544, 93, 51, 'Good', NULL, '2023-04-13 23:46:42', '2023-04-13 23:46:42', 32, NULL),
(545, 167, 51, 'Good', NULL, '2023-04-13 23:46:42', '2023-04-13 23:46:42', 32, NULL),
(546, 146, 51, 'Good', NULL, '2023-04-13 23:47:11', '2023-04-13 23:47:11', 59, NULL),
(547, 69, 51, 'Good', NULL, '2023-04-13 23:47:11', '2023-04-13 23:47:11', 59, NULL),
(548, 218, 51, 'Good', NULL, '2023-04-13 23:47:57', '2023-04-13 23:47:57', 34, NULL),
(549, 84, 51, 'Good', NULL, '2023-04-13 23:51:45', '2023-04-13 23:51:45', 35, NULL),
(550, 145, 51, 'Good', NULL, '2023-04-13 23:51:45', '2023-04-13 23:51:45', 35, NULL),
(551, 213, 51, 'Good', NULL, '2023-04-13 23:51:45', '2023-04-13 23:51:45', 35, NULL),
(552, 204, 51, 'Good', NULL, '2023-04-14 00:11:59', '2023-04-14 00:11:59', 37, NULL),
(553, 258, 51, 'Good', NULL, '2023-04-14 00:11:59', '2023-04-14 00:11:59', 37, NULL),
(554, 175, 51, 'Good', NULL, '2023-04-14 00:13:19', '2023-04-14 00:13:19', 38, NULL),
(555, 88, 51, 'Good', NULL, '2023-04-14 00:13:19', '2023-04-14 00:13:19', 38, NULL),
(556, 91, 51, 'Good', NULL, '2023-04-14 00:13:57', '2023-04-14 00:13:57', 39, NULL),
(557, 179, 51, 'Good', NULL, '2023-04-14 00:13:57', '2023-04-14 00:13:57', 39, NULL),
(558, 136, 51, 'Good', NULL, '2023-04-14 00:14:31', '2023-04-14 00:14:31', 65, NULL),
(559, 79, 51, 'Good', NULL, '2023-04-14 00:14:31', '2023-04-14 00:14:31', 65, NULL),
(560, 152, 51, 'Good', NULL, '2023-04-14 00:14:31', '2023-04-14 00:14:31', 65, NULL),
(561, 285, 51, 'Good', NULL, '2023-04-14 00:15:17', '2023-04-14 00:15:17', 33, NULL),
(562, 230, 51, 'Good', NULL, '2023-04-14 00:15:17', '2023-04-14 00:15:17', 33, NULL),
(563, 18, 51, 'Good', NULL, '2023-04-14 00:15:50', '2023-04-14 00:15:50', 40, NULL),
(564, 104, 51, 'Good', NULL, '2023-04-14 00:15:50', '2023-04-14 00:15:50', 40, NULL),
(565, 271, 51, 'Good', NULL, '2023-04-14 00:19:00', '2023-04-14 00:19:00', 41, NULL),
(566, 20, 51, 'Good', NULL, '2023-04-14 00:19:00', '2023-04-14 00:19:00', 41, NULL),
(567, 5, 51, 'Good', NULL, '2023-04-14 00:20:18', '2023-04-14 00:20:18', 64, NULL),
(568, 89, 51, 'Good', NULL, '2023-04-14 00:20:18', '2023-04-14 00:20:18', 64, NULL),
(569, 164, 51, 'Good', NULL, '2023-04-14 00:20:18', '2023-04-14 00:20:18', 64, NULL),
(570, 181, 51, 'Good', NULL, '2023-04-14 00:20:54', '2023-04-14 00:20:54', 43, NULL),
(571, 40, 51, 'Good', NULL, '2023-04-14 00:20:54', '2023-04-14 00:20:54', 43, NULL),
(572, 190, 51, 'Good', NULL, '2023-04-14 00:20:54', '2023-04-14 00:20:54', 43, NULL),
(573, 15, 51, 'Good', NULL, '2023-04-14 00:21:27', '2023-04-14 00:21:27', 74, NULL),
(574, 299, 51, 'Good', NULL, '2023-04-14 00:21:27', '2023-04-14 00:21:27', 74, NULL),
(575, 208, 51, 'Good', NULL, '2023-04-14 00:21:27', '2023-04-14 00:21:27', 74, NULL),
(576, 26, 51, 'Good', NULL, '2023-04-14 00:21:57', '2023-04-14 00:21:57', 45, NULL),
(577, 44, 51, 'Good', NULL, '2023-04-14 00:21:57', '2023-04-14 00:21:57', 45, NULL),
(578, 217, 51, 'Good', NULL, '2023-04-14 00:24:34', '2023-04-14 00:24:34', 46, NULL),
(579, 55, 51, 'Good', NULL, '2023-04-14 00:24:34', '2023-04-14 00:24:34', 46, NULL),
(580, 128, 51, 'Good', NULL, '2023-04-14 00:24:34', '2023-04-14 00:24:34', 46, NULL),
(581, 301, 51, 'Good', NULL, '2023-04-14 00:26:21', '2023-04-14 00:26:21', 63, NULL),
(582, 54, 51, 'Good', NULL, '2023-04-14 00:26:21', '2023-04-14 00:26:21', 63, NULL),
(583, 22, 51, 'Good', NULL, '2023-04-14 00:26:57', '2023-04-14 00:26:57', 60, NULL),
(584, 282, 51, 'Good', NULL, '2023-04-14 00:26:57', '2023-04-14 00:26:57', 60, NULL),
(585, 74, 51, 'Good', NULL, '2023-04-14 00:27:33', '2023-04-14 00:27:33', 48, NULL),
(586, 199, 51, 'Good', NULL, '2023-04-14 00:27:33', '2023-04-14 00:27:33', 48, NULL),
(587, 113, 51, 'Good', NULL, '2023-04-14 00:28:03', '2023-04-14 00:28:03', 61, NULL),
(588, 223, 51, 'Good', NULL, '2023-04-14 00:28:03', '2023-04-14 00:28:03', 61, NULL),
(589, 138, 51, 'Good', NULL, '2023-04-14 00:28:33', '2023-04-14 00:28:33', 49, NULL),
(590, 245, 51, 'Good', NULL, '2023-04-14 00:28:33', '2023-04-14 00:28:33', 49, NULL),
(591, 93, 51, 'Good', NULL, '2023-04-14 00:29:13', '2023-04-14 00:29:13', 50, NULL),
(592, 96, 51, 'Good', NULL, '2023-04-14 00:29:13', '2023-04-14 00:29:13', 50, NULL),
(593, 126, 51, 'Good', NULL, '2023-04-14 00:29:13', '2023-04-14 00:29:13', 50, NULL),
(594, 100, 51, 'Good', NULL, '2023-04-14 00:29:41', '2023-04-14 00:29:41', 25, NULL),
(595, 80, 51, 'Good', NULL, '2023-04-14 00:29:41', '2023-04-14 00:29:41', 25, NULL);
INSERT INTO `battery_users` (`id`, `battery_id`, `issued_by`, `status`, `deleted_at`, `created_at`, `updated_at`, `issued_to`, `remarks`) VALUES
(596, 298, 51, 'Good', NULL, '2023-04-14 00:32:48', '2023-04-14 00:32:48', 57, NULL),
(597, 99, 51, 'Good', NULL, '2023-04-14 00:32:48', '2023-04-14 00:32:48', 57, NULL),
(598, 268, 51, 'Good', NULL, '2023-04-14 00:33:28', '2023-04-14 00:33:28', 36, NULL),
(599, 194, 51, 'Good', NULL, '2023-04-14 00:33:28', '2023-04-14 00:33:28', 36, NULL),
(600, 248, 51, 'Charging', NULL, '2023-04-14 05:04:42', '2023-04-14 05:04:42', 34, NULL),
(601, 56, 11, 'Good', NULL, '2023-04-14 14:09:18', '2023-04-14 14:09:18', 51, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `employees`
--

CREATE TABLE `employees` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` text COLLATE utf8mb4_unicode_ci,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `employees`
--

INSERT INTO `employees` (`id`, `name`, `phone`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 'ZULFIQAR', NULL, NULL, '2023-04-11 22:04:25', '2023-04-11 22:04:25'),
(2, 'HABIBULLAH', NULL, NULL, '2023-04-11 22:05:09', '2023-04-11 22:05:09'),
(3, 'ZABAR', NULL, NULL, '2023-04-11 22:06:30', '2023-04-11 22:06:30'),
(4, 'AKHTAR', NULL, NULL, '2023-04-11 22:06:35', '2023-04-11 22:06:35'),
(5, 'BILAL', NULL, NULL, '2023-04-11 22:06:43', '2023-04-11 22:06:43'),
(6, 'SHAMSHAD', NULL, NULL, '2023-04-11 22:06:50', '2023-04-11 22:06:50'),
(7, 'ASAD', NULL, NULL, '2023-04-11 22:07:05', '2023-04-11 22:07:05'),
(8, 'ALI AHMAD', NULL, NULL, '2023-04-11 22:07:30', '2023-04-11 22:07:30'),
(9, 'ASAD', NULL, NULL, '2023-04-11 22:07:37', '2023-04-11 22:07:37'),
(10, 'ISRAR', NULL, NULL, '2023-04-11 22:08:09', '2023-04-11 22:08:09'),
(11, 'AAMIR', NULL, NULL, '2023-04-11 22:08:16', '2023-04-11 22:08:16'),
(12, 'ALI GUL', NULL, NULL, '2023-04-11 22:08:27', '2023-04-11 22:08:27'),
(13, 'ZAHID', NULL, NULL, '2023-04-11 22:08:32', '2023-04-11 22:08:32'),
(14, 'KHALID', NULL, NULL, '2023-04-11 22:08:40', '2023-04-11 22:08:40'),
(15, 'KHADIM', NULL, NULL, '2023-04-11 22:08:44', '2023-04-11 22:08:44'),
(16, 'MUNAWAR', NULL, NULL, '2023-04-11 22:08:52', '2023-04-11 22:08:52'),
(17, 'AMJAD', NULL, NULL, '2023-04-11 22:09:04', '2023-04-11 22:09:04'),
(18, 'YASIR', NULL, NULL, '2023-04-11 22:09:11', '2023-04-11 22:09:11'),
(19, 'RAMZAN', NULL, NULL, '2023-04-11 22:09:23', '2023-04-11 22:09:23'),
(20, 'JHARO', NULL, NULL, '2023-04-11 22:09:32', '2023-04-11 22:09:32'),
(21, 'MEER HASAN', NULL, NULL, '2023-04-12 04:33:26', '2023-04-12 04:33:26'),
(22, 'MEER MUHAMMAD', NULL, NULL, '2023-04-12 04:33:34', '2023-04-12 04:33:34'),
(23, 'MOOR', NULL, NULL, '2023-04-12 04:33:39', '2023-04-12 04:33:39'),
(24, 'SINDHI', NULL, NULL, '2023-04-12 04:33:53', '2023-04-12 04:33:53'),
(25, 'YASEEN', NULL, NULL, '2023-04-12 04:35:22', '2023-04-12 04:35:22'),
(26, 'KHADIM HUSSAIN', NULL, NULL, '2023-04-12 04:35:30', '2023-04-12 04:35:30'),
(27, 'ZAHOOR ALI', NULL, NULL, '2023-04-12 04:35:36', '2023-04-12 04:35:36'),
(28, 'GULAB', NULL, NULL, '2023-04-12 04:35:42', '2023-04-12 04:35:42'),
(29, 'JALAL', NULL, NULL, '2023-04-12 04:35:46', '2023-04-12 04:35:46'),
(30, 'LIAQAT', NULL, NULL, '2023-04-12 04:35:51', '2023-04-12 04:35:51'),
(31, 'MUKHTYAR', NULL, NULL, '2023-04-12 04:35:58', '2023-04-12 04:35:58'),
(32, 'HAFEEZ', NULL, NULL, '2023-04-12 04:36:15', '2023-04-12 04:36:15'),
(33, 'EHSAN', NULL, NULL, '2023-04-12 04:36:21', '2023-04-12 04:36:21'),
(34, 'ABDUL GHANI', NULL, NULL, '2023-04-12 04:36:32', '2023-04-12 04:36:32'),
(35, 'ALI RAZA', NULL, NULL, '2023-04-12 04:36:37', '2023-04-12 04:36:37'),
(36, 'HIDAYATULLAH', NULL, NULL, '2023-04-12 04:36:46', '2023-04-12 04:36:46'),
(37, 'ALAM', NULL, NULL, '2023-04-12 04:36:53', '2023-04-12 04:36:53'),
(38, 'SALMAN', NULL, NULL, '2023-04-12 04:37:11', '2023-04-12 04:37:11'),
(39, 'ABDUL REHMAN', NULL, NULL, '2023-04-12 04:37:19', '2023-04-12 04:37:19'),
(40, 'MURAD', NULL, NULL, '2023-04-12 04:38:15', '2023-04-12 04:38:15'),
(41, 'ABDULLAH', NULL, NULL, '2023-04-12 04:38:20', '2023-04-12 04:38:20'),
(42, 'RASOOL BAKHSH', NULL, NULL, '2023-04-12 04:38:25', '2023-04-12 04:38:25'),
(43, 'ASGHAR', NULL, NULL, '2023-04-12 04:38:29', '2023-04-12 04:38:29'),
(44, 'SHEHZAD', NULL, NULL, '2023-04-12 04:38:38', '2023-04-12 04:38:38'),
(45, 'WAQAR', NULL, NULL, '2023-04-12 04:38:44', '2023-04-12 04:38:44'),
(46, 'HASIL', NULL, NULL, '2023-04-12 04:39:09', '2023-04-12 04:39:09'),
(47, 'MANIK', NULL, NULL, '2023-04-12 04:39:13', '2023-04-12 04:39:13'),
(48, 'ANWAR RIND', NULL, NULL, '2023-04-12 04:39:18', '2023-04-12 04:39:18'),
(49, 'MUHAMMAD KHAN', NULL, NULL, '2023-04-12 04:39:28', '2023-04-12 04:39:28'),
(50, 'DEEN MUHAMMAD', NULL, NULL, '2023-04-12 04:39:35', '2023-04-12 04:39:35'),
(51, 'FAUJI CAMP', NULL, NULL, '2023-04-12 04:43:31', '2023-04-12 04:43:31'),
(52, 'ZAMEER HUSSAIN', NULL, NULL, '2023-04-12 05:24:59', '2023-04-12 05:24:59'),
(56, 'FAIZAN', NULL, NULL, '2023-04-12 05:54:53', '2023-04-12 05:54:53'),
(57, 'KHADIM HUSSAIN SENIOR', NULL, NULL, '2023-04-12 05:55:20', '2023-04-12 05:55:20'),
(58, 'ZAHOOR', NULL, NULL, '2023-04-12 05:56:27', '2023-04-12 05:56:27'),
(59, 'EHSAN SENIOR', NULL, NULL, '2023-04-12 05:58:21', '2023-04-12 05:58:21'),
(60, 'MANTHAR', NULL, NULL, '2023-04-12 06:07:21', '2023-04-12 06:07:21'),
(61, 'SAIFULLAH', NULL, NULL, '2023-04-12 06:08:41', '2023-04-12 06:08:41'),
(62, 'MAANAK', NULL, NULL, '2023-04-12 06:08:57', '2023-04-12 06:08:57'),
(63, 'MANAK', NULL, NULL, '2023-04-12 06:09:00', '2023-04-12 06:09:00'),
(64, 'RASOOL BUKHSH', NULL, NULL, '2023-04-12 06:09:55', '2023-04-12 06:09:55'),
(65, 'ALI', NULL, NULL, '2023-04-12 06:57:10', '2023-04-12 06:57:10'),
(66, 'ASAD ALI', NULL, NULL, '2023-04-12 16:52:15', '2023-04-12 16:52:15'),
(67, 'KHADIM HUSSAIN LAYOUT', NULL, NULL, '2023-04-12 17:02:21', '2023-04-12 17:02:21'),
(68, 'HAYAT DRILING', NULL, NULL, '2023-04-12 17:08:55', '2023-04-12 17:08:55'),
(69, 'HUSSAIN BUX LAYOUT', NULL, NULL, '2023-04-12 17:11:13', '2023-04-12 17:11:13'),
(70, 'NAZEER QASRANI', NULL, NULL, '2023-04-12 17:14:34', '2023-04-12 17:14:34'),
(71, 'ASLAM DRILLING', NULL, NULL, '2023-04-12 17:18:05', '2023-04-12 17:18:05'),
(72, 'HAIDER BUX DRILLING', NULL, NULL, '2023-04-12 17:19:46', '2023-04-12 17:19:46'),
(73, 'ASIF ALI', NULL, NULL, '2023-04-13 16:02:47', '2023-04-13 16:02:47'),
(74, 'SHEHZAD JUNIOR', NULL, NULL, '2023-04-13 17:30:51', '2023-04-13 17:30:51');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
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
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2014_10_12_200000_add_two_factor_columns_to_users_table', 1),
(4, '2019_08_19_000000_create_failed_jobs_table', 1),
(5, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(6, '2020_04_14_163720_create_roles_table', 1),
(7, '2020_08_28_082930_create_auth_logs_table', 1),
(8, '2020_12_26_120820_create_sessions_table', 1),
(9, '2021_01_14_091625_create_options_table', 1),
(10, '2022_10_26_132029_create_activity_log_table', 1),
(11, '2022_10_26_132030_add_event_column_to_activity_log_table', 1),
(12, '2022_10_26_132031_add_batch_uuid_column_to_activity_log_table', 1),
(13, '2023_04_07_144929_create_employees_table', 1),
(14, '2023_04_07_144945_create_batteries_table', 1),
(15, '2023_04_07_145000_create_battery_users_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `options`
--

CREATE TABLE `options` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `key` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `options`
--

INSERT INTO `options` (`id`, `key`, `value`, `created_at`, `updated_at`) VALUES
(1, 'title', '\"Batteries Managment\"', NULL, NULL),
(2, 'address', '\"Mingora\"', NULL, NULL),
(3, 'mobile', '\"03339471086\"', NULL, NULL),
(4, 'vat_amount', '\"0\"', NULL, NULL),
(5, 'vat_number', '\"0\"', NULL, NULL),
(6, 'printer', '\"Thermal Eng\"', NULL, NULL);

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
  `abilities` text COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `permissions` text COLLATE utf8mb4_unicode_ci,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `slug`, `description`, `permissions`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 'Admin', 'admin', 'Admin', '\"a:21:{i:0;s:11:\\\"add battery\\\";i:1;s:16:\\\"access batteries\\\";i:2;s:12:\\\"edit battery\\\";i:3;s:14:\\\"delete battery\\\";i:4;s:12:\\\"add employee\\\";i:5;s:16:\\\"access batteries\\\";i:6;s:13:\\\"edit employee\\\";i:7;s:15:\\\"delete employee\\\";i:8;s:8:\\\"add role\\\";i:9;s:12:\\\"access roles\\\";i:10;s:11:\\\"update role\\\";i:11;s:11:\\\"delete role\\\";i:12;s:18:\\\"update permissions\\\";i:13;s:8:\\\"add user\\\";i:14;s:12:\\\"access users\\\";i:15;s:11:\\\"update user\\\";i:16;s:11:\\\"delete user\\\";i:17;s:16:\\\"access dashboard\\\";i:18;s:8:\\\"show pos\\\";i:19;s:15:\\\"access settings\\\";i:20;s:11:\\\"access logs\\\";}\"', NULL, '2023-04-09 12:37:02', '2023-04-09 12:37:28');

-- --------------------------------------------------------

--
-- Table structure for table `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_agent` text COLLATE utf8mb4_unicode_ci,
  `payload` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_activity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `first_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `two_factor_secret` text COLLATE utf8mb4_unicode_ci,
  `two_factor_recovery_codes` text COLLATE utf8mb4_unicode_ci,
  `role_id` bigint(20) DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` text COLLATE utf8mb4_unicode_ci,
  `verified` tinyint(4) DEFAULT NULL,
  `status` enum('Active','Suspended') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Suspended',
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `first_name`, `last_name`, `password`, `two_factor_secret`, `two_factor_recovery_codes`, `role_id`, `email`, `phone`, `verified`, `status`, `remember_token`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 'Super', 'Admin', '$2y$10$HjiSMML5pVPx7zcQC.HQXuPRB3YVdcqbzVTeGaUUIiKpGBXiWUwG.', NULL, NULL, 1, 'admin@admin.com', '+923339471086', 1, 'Active', 'BXX9DRHaT1UCgvvdSZdtwa00Y25eB0g5b8zijlIF6G5u54NgeKo9aJzUF3Ex', NULL, '2023-04-07 10:01:53', '2023-04-07 10:01:53');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `activity_log`
--
ALTER TABLE `activity_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `subject` (`subject_type`,`subject_id`),
  ADD KEY `causer` (`causer_type`,`causer_id`),
  ADD KEY `activity_log_log_name_index` (`log_name`);

--
-- Indexes for table `auth_logs`
--
ALTER TABLE `auth_logs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `batteries`
--
ALTER TABLE `batteries`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `battery_users`
--
ALTER TABLE `battery_users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `employees`
--
ALTER TABLE `employees`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `options`
--
ALTER TABLE `options`
  ADD PRIMARY KEY (`id`);

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
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`);

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
-- AUTO_INCREMENT for table `activity_log`
--
ALTER TABLE `activity_log`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=274;

--
-- AUTO_INCREMENT for table `auth_logs`
--
ALTER TABLE `auth_logs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `batteries`
--
ALTER TABLE `batteries`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=302;

--
-- AUTO_INCREMENT for table `battery_users`
--
ALTER TABLE `battery_users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=602;

--
-- AUTO_INCREMENT for table `employees`
--
ALTER TABLE `employees`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=75;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `options`
--
ALTER TABLE `options`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
