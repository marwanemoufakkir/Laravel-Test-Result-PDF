-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Hôte : localhost
-- Généré le : lun. 24 mai 2021 à 01:46
-- Version du serveur :  10.4.17-MariaDB
-- Version de PHP : 7.4.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `laravel`
--

-- --------------------------------------------------------

--
-- Structure de la table `categories`
--

CREATE TABLE `categories` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `categories`
--

INSERT INTO `categories` (`id`, `name`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Reporting', NULL, NULL, NULL),
(2, 'Analyzing', NULL, NULL, NULL),
(3, 'Optimizing', NULL, NULL, NULL),
(4, 'Empowering', NULL, NULL, NULL),
(5, 'Innovating', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Structure de la table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_100000_create_password_resets_table', 1),
(2, '2016_06_01_000001_create_oauth_auth_codes_table', 1),
(3, '2016_06_01_000002_create_oauth_access_tokens_table', 1),
(4, '2016_06_01_000003_create_oauth_refresh_tokens_table', 1),
(5, '2016_06_01_000004_create_oauth_clients_table', 1),
(6, '2016_06_01_000005_create_oauth_personal_access_clients_table', 1),
(7, '2019_12_23_000001_create_permissions_table', 1),
(8, '2019_12_23_000002_create_roles_table', 1),
(9, '2019_12_23_000003_create_users_table', 1),
(10, '2019_12_23_000004_create_categories_table', 1),
(11, '2019_12_23_000005_create_questions_table', 1),
(12, '2019_12_23_000006_create_options_table', 1),
(13, '2019_12_23_000007_create_results_table', 1),
(14, '2019_12_23_000008_create_permission_role_pivot_table', 1),
(15, '2019_12_23_000009_create_role_user_pivot_table', 1),
(16, '2019_12_23_000010_create_question_result_pivot_table', 1),
(17, '2019_12_23_000011_add_relationship_fields_to_questions_table', 1),
(18, '2019_12_23_000012_add_relationship_fields_to_options_table', 1),
(19, '2019_12_23_000013_add_relationship_fields_to_results_table', 1);

-- --------------------------------------------------------

--
-- Structure de la table `oauth_access_tokens`
--

CREATE TABLE `oauth_access_tokens` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) DEFAULT NULL,
  `client_id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `oauth_auth_codes`
--

CREATE TABLE `oauth_auth_codes` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `client_id` int(10) UNSIGNED NOT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `oauth_clients`
--

CREATE TABLE `oauth_clients` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` bigint(20) DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `secret` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `redirect` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `personal_access_client` tinyint(1) NOT NULL,
  `password_client` tinyint(1) NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `oauth_personal_access_clients`
--

CREATE TABLE `oauth_personal_access_clients` (
  `id` int(10) UNSIGNED NOT NULL,
  `client_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `oauth_refresh_tokens`
--

CREATE TABLE `oauth_refresh_tokens` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `access_token_id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `options`
--

CREATE TABLE `options` (
  `id` int(10) UNSIGNED NOT NULL,
  `option_text` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `points` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `question_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `options`
--

INSERT INTO `options` (`id`, `option_text`, `points`, `created_at`, `updated_at`, `deleted_at`, `question_id`) VALUES
(1, 'Production process generates structured data which are not in common use', 1, '2021-05-23 13:24:43', '2021-05-23 13:24:43', NULL, 1),
(2, 'Production process generates structured data which are in use for on-demand purposes', 2, '2021-05-23 13:24:43', '2021-05-23 13:24:43', NULL, 1),
(3, 'Production process generates structured data which are in use for specified tasks', 3, '2021-05-23 13:24:43', '2021-05-23 13:24:43', NULL, 1),
(4, 'Production process generates structured data which are in use for all tasks', 4, '2021-05-23 13:24:43', '2021-05-23 13:24:43', NULL, 1),
(5, 'Production process generates structured data which are managed and optimised for improvement purposes', 5, '2021-05-23 13:24:43', '2021-05-23 13:24:43', NULL, 1),
(6, 'Organisation or production generates unstructured data which are not in use', 0, '2021-05-23 13:24:43', '2021-05-23 13:24:43', NULL, 2),
(7, 'Organisation or production generates unstructured data which are in use for on-demand purposes', 1, '2021-05-23 13:24:43', '2021-05-23 13:24:43', NULL, 2),
(8, 'Organisation or production generates unstructured data which are in use for specified tasks', 0, '2021-05-23 13:24:43', '2021-05-23 13:24:43', NULL, 2),
(9, 'Organisation or production generates unstructured data which are in use for all tasks', 0, '2021-05-23 13:24:43', '2021-05-23 13:24:43', NULL, 2),
(10, 'Organisation or production generates unstructured data which are managed and optimised for improvement purposes', 1, '2021-05-23 13:24:43', '2021-05-23 13:24:43', NULL, 2),
(11, 'Events logs are generated but not used', 0, '2021-05-23 13:24:43', '2021-05-23 13:24:43', NULL, 3),
(12, 'Events logs are generated and used for on-demand purpose', 0, '2021-05-23 13:24:43', '2021-05-23 13:24:43', NULL, 3),
(13, 'Events logs are generated, used repeatably for specified task', 0, '2021-05-23 13:24:43', '2021-05-23 13:24:43', NULL, 3),
(14, 'Events logs are generated, used, and well managed in processes', 0, '2021-05-23 13:24:43', '2021-05-23 13:24:43', NULL, 3),
(15, 'Events logs are generated, used and its process of generating is optimised for  improvements', 0, '2021-05-23 13:24:43', '2021-05-23 13:24:43', NULL, 3),
(16, 'Signals form machines are generated but not used', 1, '2021-05-23 13:24:43', '2021-05-23 13:24:43', NULL, 4),
(17, 'Signals form machines are generated and used for on-demand purpose', 0, '2021-05-23 13:24:43', '2021-05-23 13:24:43', NULL, 4),
(18, 'Signals form machines are generated and used repeatably for specified task', 0, '2021-05-23 13:24:43', '2021-05-23 13:24:43', NULL, 4),
(19, 'Signals form machines are generated and used and well managed processes', 0, '2021-05-23 13:24:43', '2021-05-23 13:24:43', NULL, 4),
(20, 'Signals form machines are generated and used for process optimisation and improvements', 1, '2021-05-23 13:24:43', '2021-05-23 13:24:43', NULL, 4),
(21, 'Database System Management is defined but it is not in common use', 0, '2021-05-23 13:24:43', '2021-05-23 13:24:43', NULL, 5),
(22, 'Database System Management is defined but it is used only in occasional situation', 0, '2021-05-23 13:24:43', '2021-05-23 13:24:43', NULL, 5),
(23, 'Database System Management is defined and used repeatably for specified tasks', 0, '2021-05-23 13:24:43', '2021-05-23 13:24:43', NULL, 5),
(24, 'Database System Management is well defined and used as an integral part of the management', 1, '2021-05-23 13:24:43', '2021-05-23 13:24:43', NULL, 5),
(25, 'Database System Management is well defined, and it is optimised and improved', 0, '2021-05-23 13:24:43', '2021-05-23 13:24:43', NULL, 5),
(26, 'Archive is set, but it is used only as a backup for documents', 0, '2021-05-23 13:24:43', '2021-05-23 13:24:43', NULL, 6),
(27, 'Archive is set, but it is used as a backup for documents and databases', 0, '2021-05-23 13:24:43', '2021-05-23 13:24:43', NULL, 6),
(28, 'Archive is set, but it is used as a backup for documents and databases', 1, '2021-05-23 13:24:43', '2021-05-23 13:24:43', NULL, 6),
(29, 'Archive management is set, and it is used and well managed', 0, '2021-05-23 13:24:43', '2021-05-23 13:24:43', NULL, 6),
(30, 'Archive management is set, and it is used well managed with purpose to fasten the analytical processes on platforms', 1, '2021-05-23 13:24:43', '2021-05-23 13:24:43', NULL, 6),
(31, 'DW Appliance is set but it is used only for testing', 0, '2021-05-23 13:24:43', '2021-05-23 13:24:43', NULL, 7),
(32, 'DW Appliance is set but it is used only for specific process', 0, '2021-05-23 13:24:43', '2021-05-23 13:24:43', NULL, 7),
(33, 'DW Appliance is set for most data processes', 0, '2021-05-23 13:24:43', '2021-05-23 13:24:43', NULL, 7),
(34, 'DW Appliance is set and well managed for all data processes', 0, '2021-05-23 13:24:43', '2021-05-23 13:24:43', NULL, 7),
(35, 'DW Appliance is set and well managed for all data processes in way which optimises the production processes to improve them', 1, '2021-05-23 13:24:43', '2021-05-23 13:24:43', NULL, 7),
(36, 'Physical infrastructure is set but it is not used for data handling', 0, '2021-05-23 13:24:43', '2021-05-23 13:24:43', NULL, 8),
(37, 'Physical infrastructure is set but it is used only occasionally for handling data', 0, '2021-05-23 13:24:43', '2021-05-23 13:24:43', NULL, 8),
(38, 'Handling data via physical infrastructure is formalised for all machines and devices', 0, '2021-05-23 13:24:43', '2021-05-23 13:24:43', NULL, 8),
(39, 'Handling data via physical infrastructure is well managed for all machines and devices', 1, '2021-05-23 13:24:43', '2021-05-23 13:24:43', NULL, 8),
(40, 'Handling data via physical infrastructure is managed, optimised, and improved according to data flow needs', 0, '2021-05-23 13:24:43', '2021-05-23 13:24:43', NULL, 8),
(41, 'IIot infrastructure is set but it is used only occasionally', 0, '2021-05-23 13:24:43', '2021-05-23 13:24:43', NULL, 9),
(42, 'IIot infrastructure is set and used only for specific process', 0, '2021-05-23 13:24:43', '2021-05-23 13:24:43', NULL, 9),
(43, 'IIot infrastructure is set and used for most of production processes, also is formalised via protocols', 0, '2021-05-23 13:24:43', '2021-05-23 13:24:43', NULL, 9),
(44, 'IIot infrastructure is set, well managed and used for all production processes', 1, '2021-05-23 13:24:43', '2021-05-23 13:24:43', NULL, 9),
(45, 'IIot infrastructure is set, managed, optimised, and improved according to data flow needs', 0, '2021-05-23 13:24:43', '2021-05-23 13:24:43', NULL, 9);

-- --------------------------------------------------------

--
-- Structure de la table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `permissions`
--

CREATE TABLE `permissions` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `permissions`
--

INSERT INTO `permissions` (`id`, `title`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'user_management_access', NULL, NULL, NULL),
(2, 'permission_create', NULL, NULL, NULL),
(3, 'permission_edit', NULL, NULL, NULL),
(4, 'permission_show', NULL, NULL, NULL),
(5, 'permission_delete', NULL, NULL, NULL),
(6, 'permission_access', NULL, NULL, NULL),
(7, 'role_create', NULL, NULL, NULL),
(8, 'role_edit', NULL, NULL, NULL),
(9, 'role_show', NULL, NULL, NULL),
(10, 'role_delete', NULL, NULL, NULL),
(11, 'role_access', NULL, NULL, NULL),
(12, 'user_create', NULL, NULL, NULL),
(13, 'user_edit', NULL, NULL, NULL),
(14, 'user_show', NULL, NULL, NULL),
(15, 'user_delete', NULL, NULL, NULL),
(16, 'user_access', NULL, NULL, NULL),
(17, 'category_create', NULL, NULL, NULL),
(18, 'category_edit', NULL, NULL, NULL),
(19, 'category_show', NULL, NULL, NULL),
(20, 'category_delete', NULL, NULL, NULL),
(21, 'category_access', NULL, NULL, NULL),
(22, 'question_create', NULL, NULL, NULL),
(23, 'question_edit', NULL, NULL, NULL),
(24, 'question_show', NULL, NULL, NULL),
(25, 'question_delete', NULL, NULL, NULL),
(26, 'question_access', NULL, NULL, NULL),
(27, 'option_create', NULL, NULL, NULL),
(28, 'option_edit', NULL, NULL, NULL),
(29, 'option_show', NULL, NULL, NULL),
(30, 'option_delete', NULL, NULL, NULL),
(31, 'option_access', NULL, NULL, NULL),
(32, 'result_create', NULL, NULL, NULL),
(33, 'result_edit', NULL, NULL, NULL),
(34, 'result_show', NULL, NULL, NULL),
(35, 'result_delete', NULL, NULL, NULL),
(36, 'result_access', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Structure de la table `permission_role`
--

CREATE TABLE `permission_role` (
  `role_id` int(10) UNSIGNED NOT NULL,
  `permission_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `permission_role`
--

INSERT INTO `permission_role` (`role_id`, `permission_id`) VALUES
(1, 1),
(1, 2),
(1, 3),
(1, 4),
(1, 5),
(1, 6),
(1, 7),
(1, 8),
(1, 9),
(1, 10),
(1, 11),
(1, 12),
(1, 13),
(1, 14),
(1, 15),
(1, 16),
(1, 17),
(1, 18),
(1, 19),
(1, 20),
(1, 21),
(1, 22),
(1, 23),
(1, 24),
(1, 25),
(1, 26),
(1, 27),
(1, 28),
(1, 29),
(1, 30),
(1, 31),
(1, 32),
(1, 33),
(1, 34),
(1, 35),
(1, 36);

-- --------------------------------------------------------

--
-- Structure de la table `questions`
--

CREATE TABLE `questions` (
  `id` int(10) UNSIGNED NOT NULL,
  `question_text` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `category_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `questions`
--

INSERT INTO `questions` (`id`, `question_text`, `created_at`, `updated_at`, `deleted_at`, `category_id`) VALUES
(1, 'Select the most suitable for your processes', '2021-05-23 13:24:43', '2021-05-23 13:24:43', NULL, 1),
(2, 'Select the most suitable for your processes', '2021-05-23 13:24:43', '2021-05-23 13:24:43', NULL, 1),
(3, 'Select the most suitable for your processes', '2021-05-23 13:24:43', '2021-05-23 13:24:43', NULL, 1),
(4, 'Select the most suitable for your processes', '2021-05-23 13:24:43', '2021-05-23 13:24:43', NULL, 1),
(5, 'Select most suitable for your organisation', '2021-05-23 13:24:43', '2021-05-23 13:24:43', NULL, 1),
(6, 'Select most suitable for handling data', '2021-05-23 13:24:43', '2021-05-23 13:24:43', NULL, 2),
(7, 'Select most suitable for handling data', '2021-05-23 13:24:43', '2021-05-23 13:24:43', NULL, 2),
(8, 'Select most suitable for handling data in terms of infrastructure', '2021-05-23 13:24:43', '2021-05-23 13:24:43', NULL, 2),
(9, 'Select most suitable for handling data', '2021-05-23 13:24:43', '2021-05-23 13:24:43', '2021-05-23 15:36:24', 5),
(10, 'Please, select most relevant', '2021-05-23 13:24:43', '2021-05-23 13:24:43', '2021-05-23 15:36:31', 5),
(11, 'Please, select most relevant', NULL, NULL, '2021-05-23 15:36:37', 5),
(12, 'Please, select most relevant', NULL, NULL, '2021-05-23 15:36:44', 5),
(13, 'Select most suitable for your organisation', NULL, NULL, '2021-05-23 15:36:51', 4),
(14, 'Select most suitable for your organisation', NULL, NULL, '2021-05-23 15:36:57', 4),
(15, 'Select most suitable for your organisation', NULL, NULL, '2021-05-23 15:37:02', 4),
(16, 'Select most suitable for your organisation', NULL, NULL, '2021-05-23 15:37:05', 4);

-- --------------------------------------------------------

--
-- Structure de la table `question_result`
--

CREATE TABLE `question_result` (
  `result_id` int(10) UNSIGNED NOT NULL,
  `question_id` int(10) UNSIGNED NOT NULL,
  `option_id` int(10) UNSIGNED NOT NULL,
  `points` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `question_result`
--

INSERT INTO `question_result` (`result_id`, `question_id`, `option_id`, `points`) VALUES
(1, 1, 2, 0),
(1, 2, 5, 0),
(1, 3, 11, 0),
(1, 4, 14, 0),
(1, 5, 18, 0),
(1, 6, 21, 0),
(1, 7, 28, 1),
(1, 8, 31, 0),
(1, 9, 33, 0),
(1, 10, 39, 1);

-- --------------------------------------------------------

--
-- Structure de la table `results`
--

CREATE TABLE `results` (
  `id` int(10) UNSIGNED NOT NULL,
  `total_points` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `user_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `results`
--

INSERT INTO `results` (`id`, `total_points`, `created_at`, `updated_at`, `deleted_at`, `user_id`) VALUES
(1, 2, '2021-05-23 13:26:07', '2021-05-23 13:26:07', NULL, 2);

-- --------------------------------------------------------

--
-- Structure de la table `roles`
--

CREATE TABLE `roles` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `roles`
--

INSERT INTO `roles` (`id`, `title`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Admin', NULL, NULL, NULL),
(2, 'User', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Structure de la table `role_user`
--

CREATE TABLE `role_user` (
  `user_id` int(10) UNSIGNED NOT NULL,
  `role_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `role_user`
--

INSERT INTO `role_user` (`user_id`, `role_id`) VALUES
(1, 1),
(2, 2),
(3, 2);

-- --------------------------------------------------------

--
-- Structure de la table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` datetime DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Admin', 'admin@admin.com', NULL, '$2y$10$wNIDxA5tfzPm6XEsjrt0IOS9dbUrhjZSigPvzruq2Rz0BEqudStyK', NULL, NULL, NULL, NULL),
(2, 'Blythe Stark', 'kuzora@mailinator.com', NULL, '$2y$10$p4tygZP0Vy9NXeFL1YSUiuz9snYJGCdQnPiGtusKEEbDzrZBnfOOu', NULL, '2021-05-23 13:25:30', '2021-05-23 13:25:30', NULL),
(3, 'Beverly Bradford', 'myzawo@mailinator.com', NULL, '$2y$10$WMo7/1aaHlPBmXmU68jCyuMb1Qd5xNqtrOzIooO9ksZD8Hz4QRkPC', NULL, '2021-05-23 14:24:35', '2021-05-23 14:24:35', NULL);

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `oauth_access_tokens`
--
ALTER TABLE `oauth_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_access_tokens_user_id_index` (`user_id`);

--
-- Index pour la table `oauth_auth_codes`
--
ALTER TABLE `oauth_auth_codes`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `oauth_clients`
--
ALTER TABLE `oauth_clients`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_clients_user_id_index` (`user_id`);

--
-- Index pour la table `oauth_personal_access_clients`
--
ALTER TABLE `oauth_personal_access_clients`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_personal_access_clients_client_id_index` (`client_id`);

--
-- Index pour la table `oauth_refresh_tokens`
--
ALTER TABLE `oauth_refresh_tokens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_refresh_tokens_access_token_id_index` (`access_token_id`);

--
-- Index pour la table `options`
--
ALTER TABLE `options`
  ADD PRIMARY KEY (`id`),
  ADD KEY `question_fk_773758` (`question_id`);

--
-- Index pour la table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Index pour la table `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `permission_role`
--
ALTER TABLE `permission_role`
  ADD KEY `role_id_fk_773672` (`role_id`),
  ADD KEY `permission_id_fk_773672` (`permission_id`);

--
-- Index pour la table `questions`
--
ALTER TABLE `questions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `category_fk_773713` (`category_id`);

--
-- Index pour la table `question_result`
--
ALTER TABLE `question_result`
  ADD KEY `result_id_fk_773767` (`result_id`),
  ADD KEY `question_id_fk_773767` (`question_id`),
  ADD KEY `option_id_fk_773767` (`option_id`);

--
-- Index pour la table `results`
--
ALTER TABLE `results`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_fk_773765` (`user_id`);

--
-- Index pour la table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `role_user`
--
ALTER TABLE `role_user`
  ADD KEY `user_id_fk_773681` (`user_id`),
  ADD KEY `role_id_fk_773681` (`role_id`);

--
-- Index pour la table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT pour la table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT pour la table `oauth_clients`
--
ALTER TABLE `oauth_clients`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `oauth_personal_access_clients`
--
ALTER TABLE `oauth_personal_access_clients`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `options`
--
ALTER TABLE `options`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=46;

--
-- AUTO_INCREMENT pour la table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT pour la table `questions`
--
ALTER TABLE `questions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT pour la table `results`
--
ALTER TABLE `results`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT pour la table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT pour la table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `options`
--
ALTER TABLE `options`
  ADD CONSTRAINT `question_fk_773758` FOREIGN KEY (`question_id`) REFERENCES `questions` (`id`);

--
-- Contraintes pour la table `permission_role`
--
ALTER TABLE `permission_role`
  ADD CONSTRAINT `permission_id_fk_773672` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `role_id_fk_773672` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Contraintes pour la table `questions`
--
ALTER TABLE `questions`
  ADD CONSTRAINT `category_fk_773713` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`);

--
-- Contraintes pour la table `question_result`
--
ALTER TABLE `question_result`
  ADD CONSTRAINT `option_id_fk_773767` FOREIGN KEY (`option_id`) REFERENCES `options` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `question_id_fk_773767` FOREIGN KEY (`question_id`) REFERENCES `questions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `result_id_fk_773767` FOREIGN KEY (`result_id`) REFERENCES `results` (`id`) ON DELETE CASCADE;

--
-- Contraintes pour la table `results`
--
ALTER TABLE `results`
  ADD CONSTRAINT `user_fk_773765` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Contraintes pour la table `role_user`
--
ALTER TABLE `role_user`
  ADD CONSTRAINT `role_id_fk_773681` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `user_id_fk_773681` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
