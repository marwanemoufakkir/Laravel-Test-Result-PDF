/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;

CREATE DATABASE IF NOT EXISTS `laravel` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci */;
USE `laravel`;

CREATE TABLE IF NOT EXISTS `categories` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

DELETE FROM `categories`;
/*!40000 ALTER TABLE `categories` DISABLE KEYS */;
INSERT INTO `categories` (`id`, `name`, `created_at`, `updated_at`, `deleted_at`) VALUES
	(1, 'Platforms', NULL, '2021-05-24 08:41:27', NULL),
	(2, 'Data Quality Management', NULL, '2021-05-24 08:41:15', NULL),
	(3, 'technology', NULL, '2021-05-24 08:40:51', NULL),
	(4, 'Infrastructure', NULL, '2021-05-24 08:40:32', NULL),
	(5, 'Data', NULL, '2021-05-24 08:40:11', NULL),
	(6, 'Management', '2021-05-24 08:41:42', '2021-05-24 08:41:42', NULL),
	(7, 'Knowledge Management', '2021-05-24 08:44:29', '2021-05-24 08:44:29', NULL),
	(8, 'Domain Integration', '2021-05-24 08:44:50', '2021-05-24 08:44:50', NULL);
/*!40000 ALTER TABLE `categories` ENABLE KEYS */;

CREATE TABLE IF NOT EXISTS `migrations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

DELETE FROM `migrations`;
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
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
/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;

CREATE TABLE IF NOT EXISTS `oauth_access_tokens` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) DEFAULT NULL,
  `client_id` int(10) unsigned NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `expires_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `oauth_access_tokens_user_id_index` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

DELETE FROM `oauth_access_tokens`;
/*!40000 ALTER TABLE `oauth_access_tokens` DISABLE KEYS */;
/*!40000 ALTER TABLE `oauth_access_tokens` ENABLE KEYS */;

CREATE TABLE IF NOT EXISTS `oauth_auth_codes` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `client_id` int(10) unsigned NOT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

DELETE FROM `oauth_auth_codes`;
/*!40000 ALTER TABLE `oauth_auth_codes` DISABLE KEYS */;
/*!40000 ALTER TABLE `oauth_auth_codes` ENABLE KEYS */;

CREATE TABLE IF NOT EXISTS `oauth_clients` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `secret` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `redirect` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `personal_access_client` tinyint(1) NOT NULL,
  `password_client` tinyint(1) NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `oauth_clients_user_id_index` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

DELETE FROM `oauth_clients`;
/*!40000 ALTER TABLE `oauth_clients` DISABLE KEYS */;
/*!40000 ALTER TABLE `oauth_clients` ENABLE KEYS */;

CREATE TABLE IF NOT EXISTS `oauth_personal_access_clients` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `client_id` int(10) unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `oauth_personal_access_clients_client_id_index` (`client_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

DELETE FROM `oauth_personal_access_clients`;
/*!40000 ALTER TABLE `oauth_personal_access_clients` DISABLE KEYS */;
/*!40000 ALTER TABLE `oauth_personal_access_clients` ENABLE KEYS */;

CREATE TABLE IF NOT EXISTS `oauth_refresh_tokens` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `access_token_id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `oauth_refresh_tokens_access_token_id_index` (`access_token_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

DELETE FROM `oauth_refresh_tokens`;
/*!40000 ALTER TABLE `oauth_refresh_tokens` DISABLE KEYS */;
/*!40000 ALTER TABLE `oauth_refresh_tokens` ENABLE KEYS */;

CREATE TABLE IF NOT EXISTS `options` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `option_text` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `points` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `question_id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `question_fk_773758` (`question_id`),
  CONSTRAINT `question_fk_773758` FOREIGN KEY (`question_id`) REFERENCES `questions` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

DELETE FROM `options`;
/*!40000 ALTER TABLE `options` DISABLE KEYS */;
INSERT INTO `options` (`id`, `option_text`, `points`, `created_at`, `updated_at`, `deleted_at`, `question_id`) VALUES
	(1, 'Production process generates structured data which are not in common use', 1, '2021-05-23 15:24:43', '2021-05-23 15:24:43', NULL, 17),
	(2, 'Production process generates structured data which are in use for on-demand purposes', 2, '2021-05-23 15:24:43', '2021-05-23 15:24:43', NULL, 17),
	(3, 'Production process generates structured data which are in use for specified tasks', 3, '2021-05-23 15:24:43', '2021-05-23 15:24:43', NULL, 17),
	(4, 'Production process generates structured data which are in use for all tasks', 4, '2021-05-23 15:24:43', '2021-05-23 15:24:43', NULL, 17),
	(5, 'Production process generates structured data which are managed and optimised for improvement purposes', 5, '2021-05-23 15:24:43', '2021-05-23 15:24:43', NULL, 17),
	(6, 'Organisation or production generates unstructured data which are not in use', 1, '2021-05-23 15:24:43', '2021-05-23 15:24:43', NULL, 18),
	(7, 'Organisation or production generates unstructured data which are in use for on-demand purposes', 2, '2021-05-23 15:24:43', '2021-05-23 15:24:43', NULL, 18),
	(8, 'Organisation or production generates unstructured data which are in use for specified tasks', 3, '2021-05-23 15:24:43', '2021-05-23 15:24:43', NULL, 18),
	(9, 'Organisation or production generates unstructured data which are in use for all tasks', 4, '2021-05-23 15:24:43', '2021-05-23 15:24:43', NULL, 18),
	(10, 'Organisation or production generates unstructured data which are managed and optimised for improvement purposes', 5, '2021-05-23 15:24:43', '2021-05-23 15:24:43', NULL, 18),
	(11, 'Events logs are generated but not used', 1, '2021-05-23 15:24:43', '2021-05-23 15:24:43', NULL, 19),
	(12, 'Events logs are generated and used for on-demand purpose', 2, '2021-05-23 15:24:43', '2021-05-23 15:24:43', NULL, 19),
	(13, 'Events logs are generated, used repeatably for specified task', 3, '2021-05-23 15:24:43', '2021-05-23 15:24:43', NULL, 19),
	(14, 'Events logs are generated, used, and well managed in processes', 4, '2021-05-23 15:24:43', '2021-05-23 15:24:43', NULL, 19),
	(15, 'Events logs are generated, used and its process of generating is optimised for  improvements', 5, '2021-05-23 15:24:43', '2021-05-23 15:24:43', NULL, 19),
	(16, 'Signals form machines are generated but not used', 1, '2021-05-23 15:24:43', '2021-05-23 15:24:43', NULL, 20),
	(17, 'Signals form machines are generated and used for on-demand purpose', 2, '2021-05-23 15:24:43', '2021-05-23 15:24:43', NULL, 20),
	(18, 'Signals form machines are generated and used repeatably for specified task', 3, '2021-05-23 15:24:43', '2021-05-23 15:24:43', NULL, 20),
	(19, 'Signals form machines are generated and used and well managed processes', 4, '2021-05-23 15:24:43', '2021-05-23 15:24:43', NULL, 20),
	(20, 'Signals form machines are generated and used for process optimisation and improvements', 5, '2021-05-23 15:24:43', '2021-05-23 15:24:43', NULL, 20),
	(21, 'Database System Management is defined but it is not in common use', 1, '2021-05-23 15:24:43', '2021-05-23 15:24:43', NULL, 21),
	(22, 'Database System Management is defined but it is used only in occasional situation', 2, '2021-05-23 15:24:43', '2021-05-23 15:24:43', NULL, 21),
	(23, 'Database System Management is defined and used repeatably for specified tasks', 3, '2021-05-23 15:24:43', '2021-05-23 15:24:43', NULL, 21),
	(24, 'Database System Management is well defined and used as an integral part of the management', 4, '2021-05-23 15:24:43', '2021-05-23 15:24:43', NULL, 21),
	(25, 'Database System Management is well defined, and it is optimised and improved', 5, '2021-05-23 15:24:43', '2021-05-23 15:24:43', NULL, 21),
	(26, 'Archive is set, but it is used only as a backup for documents', 1, '2021-05-23 15:24:43', '2021-05-23 15:24:43', NULL, 22),
	(27, 'Archive is set, but it is used as a backup for documents and databases', 2, '2021-05-23 15:24:43', '2021-05-23 15:24:43', NULL, 22),
	(28, 'Archive is set, but it is used as a backup for documents and databases', 3, '2021-05-23 15:24:43', '2021-05-23 15:24:43', NULL, 22),
	(29, 'Archive management is set, and it is used and well managed', 4, '2021-05-23 15:24:43', '2021-05-23 15:24:43', NULL, 22),
	(30, 'Archive management is set, and it is used well managed with purpose to fasten the analytical processes on platforms', 5, '2021-05-23 15:24:43', '2021-05-23 15:24:43', NULL, 22),
	(31, 'DW Appliance is set but it is used only for testing', 1, '2021-05-23 15:24:43', '2021-05-23 15:24:43', NULL, 23),
	(32, 'DW Appliance is set but it is used only for specific process', 2, '2021-05-23 15:24:43', '2021-05-23 15:24:43', NULL, 23),
	(33, 'DW Appliance is set for most data processes', 3, '2021-05-23 15:24:43', '2021-05-23 15:24:43', NULL, 23),
	(34, 'DW Appliance is set and well managed for all data processes', 4, '2021-05-23 15:24:43', '2021-05-23 15:24:43', NULL, 23),
	(35, 'DW Appliance is set and well managed for all data processes in way which optimises the production processes to improve them', 5, '2021-05-23 15:24:43', '2021-05-23 15:24:43', NULL, 23),
	(36, 'Physical infrastructure is set but it is not used for data handling', 1, '2021-05-23 15:24:43', '2021-05-23 15:24:43', NULL, 24),
	(37, 'Physical infrastructure is set but it is used only occasionally for handling data', 2, '2021-05-23 15:24:43', '2021-05-23 15:24:43', NULL, 24),
	(38, 'Handling data via physical infrastructure is formalised for all machines and devices', 3, '2021-05-23 15:24:43', '2021-05-23 15:24:43', NULL, 24),
	(39, 'Handling data via physical infrastructure is well managed for all machines and devices', 4, '2021-05-23 15:24:43', '2021-05-23 15:24:43', NULL, 24),
	(40, 'Handling data via physical infrastructure is managed, optimised, and improved according to data flow needs', 5, '2021-05-23 15:24:43', '2021-05-23 15:24:43', NULL, 24),
	(41, 'IIot infrastructure is set but it is used only occasionally', 1, '2021-05-23 15:24:43', '2021-05-23 15:24:43', NULL, 25),
	(42, 'IIot infrastructure is set and used only for specific process', 2, '2021-05-23 15:24:43', '2021-05-23 15:24:43', NULL, 25),
	(43, 'IIot infrastructure is set and used for most of production processes, also is formalised via protocols', 3, '2021-05-23 15:24:43', '2021-05-23 15:24:43', NULL, 25),
	(44, 'IIot infrastructure is set, well managed and used for all production processes', 4, '2021-05-23 15:24:43', '2021-05-23 15:24:43', NULL, 25),
	(45, 'IIot infrastructure is set, managed, optimised, and improved according to data flow needs', 5, '2021-05-23 15:24:43', '2021-05-23 15:24:43', NULL, 25),
	(46, 'Data Processing is designed but it is applied in action only rarely', 1, '2021-05-23 15:24:43', '2021-05-23 15:24:43', NULL, 29),
	(47, 'Data Processing is designed but it is applied repeatably for specified task', 2, '2021-05-23 15:24:43', '2021-05-23 15:24:43', NULL, 29),
	(48, 'Data Processing is designed and applied for specified processes', 3, '2021-05-23 15:24:43', '2021-05-23 15:24:43', NULL, 29),
	(49, 'Data Processing is designed and mostly applied, integrated within the management', 4, '2021-05-23 15:24:43', '2021-05-23 15:24:43', NULL, 29),
	(50, 'Data Processing is fully designed, it is optimised and improved to deliver most value out of the processes', 5, '2021-05-23 15:24:43', '2021-05-23 15:24:43', NULL, 29),
	(51, 'Report Management is specified, but it is used only ad-hoc', 1, '2021-05-23 15:24:43', '2021-05-23 15:24:43', NULL, 30),
	(52, 'Report Management is specified, and it is used repeatably for predefined task', 2, '2021-05-23 15:24:43', '2021-05-23 15:24:43', NULL, 30),
	(53, 'Report Management is specified, and formalised for defined processes', 3, '2021-05-23 15:24:43', '2021-05-23 15:24:43', NULL, 30),
	(54, 'Report Management is specified, and used as an integral part of the management', 4, '2021-05-23 15:24:43', '2021-05-23 15:24:43', NULL, 30),
	(55, 'Report Management is well specified, and it is optimised with improving outputs', 5, '2021-05-23 15:24:43', '2021-05-23 15:24:43', NULL, 30),
	(56, 'Analytics Software is specified, but it is used only scarcely', 1, '2021-05-23 15:24:43', '2021-05-23 15:24:43', NULL, 31),
	(57, 'Analytics Software is specified, and it is used repeatably for predefined task', 2, '2021-05-23 15:24:43', '2021-05-23 15:24:43', NULL, 31),
	(58, 'Analytics Software is specified, and formalised for defined processes', 3, '2021-05-23 15:24:43', '2021-05-23 15:24:43', NULL, 31),
	(59, 'Analytics Software is specified, and used as an integral part of the management', 4, '2021-05-23 15:24:43', '2021-05-23 15:24:43', NULL, 31),
	(60, 'Analytics Software is well specified, and it is optimised with improving outputs', 5, '2021-05-23 15:24:43', '2021-05-23 15:24:43', NULL, 31),
	(61, 'Information Systems are defined, but they are used as ad-hoc service', 1, '2021-05-23 15:24:43', '2021-05-23 15:24:43', NULL, 32),
	(62, 'Information Systems are defined, and they are used only for selected task', 2, '2021-05-23 15:24:43', '2021-05-23 15:24:43', NULL, 32),
	(63, 'Information Systems are defined, and used formally for most processes', 3, '2021-05-23 15:24:43', '2021-05-23 15:24:43', NULL, 32),
	(64, 'Information Systems are defined, and used as an integral part of the processes', 4, '2021-05-23 15:24:43', '2021-05-23 15:24:43', NULL, 32),
	(65, 'Information Systems are well specified, and they are optimised and improved', 5, '2021-05-23 15:24:43', '2021-05-23 15:24:43', NULL, 32),
	(66, 'Data Democratisation is specified but it is not used', 1, '2021-05-23 15:24:43', '2021-05-23 15:24:43', NULL, 33),
	(67, ' Data Democratisation is specified but it is used only scarcely', 2, '2021-05-23 15:24:43', '2021-05-23 15:24:43', NULL, 33),
	(68, 'Data Democratisation is specified and used repeatably for some tasks', 3, '2021-05-23 15:24:43', '2021-05-23 15:24:43', NULL, 33),
	(69, 'Data Democratisation is specified and used as an integral part of the management', 4, '2021-05-23 15:24:43', '2021-05-23 15:24:43', NULL, 33),
	(70, ' Data Democratisation is well specified, and it is optimised and improved', 5, '2021-05-23 15:24:43', '2021-05-23 15:24:43', NULL, 33),
	(71, 'KPI & Metric is adjusted but it is hardly ever used', 1, '2021-05-23 15:24:43', '2021-05-23 15:24:43', NULL, 34),
	(72, 'KPI & Metric is adjusted, and it is used repeatably for specific tasks', 2, '2021-05-23 15:24:43', '2021-05-23 15:24:43', NULL, 34),
	(73, 'KPI & Metric is adjusted, and used repeatably for specified processes', 3, '2021-05-23 15:24:43', '2021-05-23 15:24:43', NULL, 34),
	(74, 'KPI & Metric is adjusted, and used as an integral part of the management', 4, '2021-05-23 15:24:43', '2021-05-23 15:24:43', NULL, 34),
	(75, 'KPI & Metric is well adjusted, it is optimised and delivers the improvement of processes', 5, '2021-05-23 15:24:43', '2021-05-23 15:24:43', NULL, 34),
	(76, 'VSM is adjusted but it is used as an ad-hoc service', 1, '2021-05-23 15:24:43', '2021-05-23 15:24:43', NULL, 35),
	(77, 'VSM is adjusted but it is repeatably for specified tasks', 2, '2021-05-23 15:24:43', '2021-05-23 15:24:43', NULL, 35),
	(78, 'VSM is adjusted and used formally for specified process', 3, '2021-05-23 15:24:43', '2021-05-23 15:24:43', NULL, 35),
	(79, 'VSM is adjusted and used as an integral part of the management', 4, '2021-05-23 15:24:43', '2021-05-23 15:24:43', NULL, 35),
	(80, 'VSM is well adjusted, and it is optimised, and its outcomes improve the processes', 5, '2021-05-23 15:24:43', '2021-05-23 15:24:43', NULL, 35),
	(81, 'Process Optimisation is adjusted but it is used on-demand', 1, '2021-05-23 15:24:43', '2021-05-23 15:24:43', NULL, 36),
	(82, 'Process Optimisation is adjusted and used repeatably for designed tasks', 2, '2021-05-23 15:24:43', '2021-05-23 15:24:43', NULL, 36),
	(83, 'Process Optimisation is adjusted and used formally for specified processes', 3, '2021-05-23 15:24:43', '2021-05-23 15:24:43', NULL, 36),
	(84, 'Process Optimisation is adjusted specified and used as an integral part of the management', 4, '2021-05-23 15:24:43', '2021-05-23 15:24:43', NULL, 36),
	(85, 'Process Optimisation is well adjusted, and it is optimised and fully functional', 5, '2021-05-23 15:24:43', '2021-05-23 15:24:43', NULL, 36),
	(86, 'Quality Control is adjusted but it is hardly ever used', 1, '2021-05-23 15:24:43', '2021-05-23 15:24:43', NULL, 37),
	(87, 'Quality Control is adjusted and used repeatably for specified tasks', 2, '2021-05-23 15:24:43', '2021-05-23 15:24:43', NULL, 37),
	(88, 'Quality Control is adjusted and used formally for designed processes', 3, '2021-05-23 15:24:43', '2021-05-23 15:24:43', NULL, 37),
	(89, ' Quality Control is adjusted and used as an integral part of the management', 4, '2021-05-23 15:24:43', '2021-05-23 15:24:43', NULL, 37),
	(90, 'Quality Control is well adjusted, and it is optimised and fully functional to improve itself', 5, '2021-05-23 15:24:43', '2021-05-23 15:24:43', NULL, 37),
	(91, 'Production Process is set but it is not under control', 1, '2021-05-23 15:24:43', '2021-05-23 15:24:43', NULL, 38),
	(92, 'Production Process is set and it is managed repeatably for selected task', 2, '2021-05-23 15:24:43', '2021-05-23 15:24:43', NULL, 38),
	(93, 'Production Process is adjusted and used formalised for most processes', 3, '2021-05-23 15:24:43', '2021-05-23 15:24:43', NULL, 38),
	(94, 'Production Process is adjusted and used as an integral part of the productions', 4, '2021-05-23 15:24:43', '2021-05-23 15:24:43', NULL, 38),
	(95, 'Production Process is well adjusted, and it is optimised', 5, '2021-05-23 15:24:43', '2021-05-23 15:24:43', NULL, 38),
	(96, 'Data Security is adjusted but not controlled', 1, '2021-05-23 15:24:43', '2021-05-23 15:24:43', NULL, 39),
	(97, 'Data Security is adjusted but it is hardly ever used', 2, '2021-05-23 15:24:43', '2021-05-23 15:24:43', NULL, 39),
	(98, 'Data Security is adjusted and used repeatably for specified tasks', 3, '2021-05-23 15:24:43', '2021-05-23 15:24:43', NULL, 39),
	(99, 'Data Security is adjusted and used as an integral part of the management', 4, '2021-05-23 15:24:43', '2021-05-23 15:24:43', NULL, 39),
	(100, 'Data Security is well adjusted, and it is optimised and fully functional', 5, '2021-05-23 15:24:43', '2021-05-23 15:24:43', NULL, 39),
	(101, 'Data Management Strategy is set in ad-hoc mode', 1, '2021-05-23 15:24:43', '2021-05-23 15:24:43', NULL, 40),
	(102, 'Data Management Strategy is used repeatably for specified tasks', 2, '2021-05-23 15:24:43', '2021-05-23 15:24:43', NULL, 40),
	(103, 'Data Management Strategy is used formally for specified processes', 3, '2021-05-23 15:24:43', '2021-05-23 15:24:43', NULL, 40),
	(104, 'Data Management Strategy is accommodated and used as an integral part of the management', 4, '2021-05-23 15:24:43', '2021-05-23 15:24:43', NULL, 40),
	(105, 'Data Management Strategy is well accommodated, and it is fully functional and optimised', 5, '2021-05-23 15:24:43', '2021-05-23 15:24:43', NULL, 40),
	(106, 'IP Management is proposed only informally', 1, '2021-05-23 15:24:43', '2021-05-23 15:24:43', NULL, 41),
	(107, 'IP Management is designed and used repeatably for specified tasks', 2, '2021-05-23 15:24:43', '2021-05-23 15:24:43', NULL, 41),
	(108, 'IP Management is set and in action formally for specified processes', 3, '2021-05-23 15:24:43', '2021-05-23 15:24:43', NULL, 41),
	(109, 'IP Management is set and well managed', 4, '2021-05-23 15:24:43', '2021-05-23 15:24:43', NULL, 41),
	(110, 'IP Management is well managed, and it is optimised to deliver the most valuable outcomes', 5, '2021-05-23 15:24:43', '2021-05-23 15:24:43', NULL, 41),
	(111, 'Insides Generation is proposed but it is in action only occasionally', 1, '2021-05-23 15:24:43', '2021-05-23 15:24:43', NULL, 42),
	(112, 'Insides Generation is designed for repetition in specified tasks', 2, '2021-05-23 15:24:43', '2021-05-23 15:24:43', NULL, 42),
	(113, 'Insides Generation is set formally for specified processes', 3, '2021-05-23 15:24:43', '2021-05-23 15:24:43', NULL, 42),
	(114, 'Insides Generation is set and well managed', 4, '2021-05-23 15:24:43', '2021-05-23 15:24:43', NULL, 42),
	(115, 'Insides Generation is well managed, optimised to deliver desired outcomes', 5, '2021-05-23 15:24:43', '2021-05-23 15:24:43', NULL, 42),
	(116, 'Training & Education is proposed but used only occasionally', 1, '2021-05-23 15:24:43', '2021-05-23 15:24:43', NULL, 43),
	(117, 'Training & Education is designed and used repeatable ', 2, '2021-05-23 15:24:43', '2021-05-23 15:24:43', NULL, 43),
	(118, 'Training & Education is set and in action for specified improvements', 3, '2021-05-23 15:24:43', '2021-05-23 15:24:43', NULL, 43),
	(119, 'Training & Education is set and well managed', 4, '2021-05-23 15:24:43', '2021-05-23 15:24:43', NULL, 43),
	(120, 'Training & Education is well adjusted, effective, and delivers creative outcomes', 5, '2021-05-23 15:24:43', '2021-05-23 15:24:43', NULL, 43),
	(121, 'Data Integration is proposed but it is applied in action only rarely', 1, '2021-05-23 15:24:43', '2021-05-23 15:24:43', NULL, 44),
	(122, 'Data Integration is designed it is applied in action repeatably', 2, '2021-05-23 15:24:43', '2021-05-23 15:24:43', NULL, 44),
	(123, 'Data Integration is set and applied formally', 3, '2021-05-23 15:24:43', '2021-05-23 15:24:43', NULL, 44),
	(124, 'Data Integration is set integrated within vertical structure and well managed', 4, '2021-05-23 15:24:43', '2021-05-23 15:24:43', NULL, 44),
	(125, 'Data Integration is effective and optimised', 5, '2021-05-23 15:24:43', '2021-05-23 15:24:43', NULL, 44),
	(126, 'Infrastructure Integration is proposed but it is applied in action only rarely', 1, '2021-05-23 15:24:43', '2021-05-23 15:24:43', NULL, 45),
	(127, 'Infrastructure Integration is designed it is applied in action repeatably', 2, '2021-05-23 15:24:43', '2021-05-23 15:24:43', NULL, 45),
	(128, 'Infrastructure Integration is set and applied formally', 3, '2021-05-23 15:24:43', '2021-05-23 15:24:43', NULL, 45),
	(129, 'Infrastructure Integration is set integrated within vertical structure and well managed', 4, '2021-05-23 15:24:43', '2021-05-23 15:24:43', NULL, 45),
	(130, 'Infrastructure Integration is effective and optimised', 5, '2021-05-23 15:24:43', '2021-05-23 15:24:43', NULL, 45),
	(131, 'Technology Integration is proposed but it is applied in action only rarely', 1, '2021-05-23 15:24:43', '2021-05-23 15:24:43', NULL, 46),
	(132, 'Technology Integration is designed it is applied in action repeatably', 2, '2021-05-23 15:24:43', '2021-05-23 15:24:43', NULL, 46),
	(133, 'Technology Integration is set and applied formally', 3, '2021-05-23 15:24:43', '2021-05-23 15:24:43', NULL, 46),
	(134, 'Technology Integration is set integrated within vertical structure and well managed', 4, '2021-05-23 15:24:43', '2021-05-23 15:24:43', NULL, 46),
	(135, 'Technology Integration is effective and optimised', 5, '2021-05-23 15:24:43', '2021-05-23 15:24:43', NULL, 46),
	(136, 'Data Quality Management Integration is proposed but it is applied in action only rarely', 1, '2021-05-23 15:24:43', '2021-05-23 15:24:43', NULL, 47),
	(137, 'Data Quality Management Integration is designed it is applied in action repeatably', 2, '2021-05-23 15:24:43', '2021-05-23 15:24:43', NULL, 47),
	(138, 'Data Quality Management Integration is set and applied formally tasks', 3, '2021-05-23 15:24:43', '2021-05-23 15:24:43', NULL, 47),
	(139, 'Data Quality Management Integration is set integrated within vertical structure and well managed', 4, '2021-05-23 15:24:43', '2021-05-23 15:24:43', NULL, 47),
	(140, 'Data Quality Management Integration is effective and optimised', 5, '2021-05-23 15:24:43', '2021-05-23 15:24:43', NULL, 47),
	(141, 'Platform Integration is proposed but it is applied in action only rarely', 1, '2021-05-23 15:24:43', '2021-05-23 15:24:43', NULL, 48),
	(142, 'Platform Integration is designed it is applied in action repeatably', 2, '2021-05-23 15:24:43', '2021-05-23 15:24:43', NULL, 48),
	(143, 'Platform Integration is set and applied formally', 3, '2021-05-23 15:24:43', '2021-05-23 15:24:43', NULL, 48),
	(144, 'Platform Integration is set integrated within vertical structure and well managed', 4, '2021-05-23 15:24:43', '2021-05-23 15:24:43', NULL, 48),
	(145, 'Platform Integration is effective and optimised', 5, '2021-05-23 15:24:43', '2021-05-23 15:24:43', NULL, 48),
	(146, 'Management Integration is proposed but it is applied in action only rarely', 1, '2021-05-23 15:24:43', '2021-05-23 15:24:43', NULL, 49),
	(147, 'Management Integration is designed it is applied in action repeatably', 2, '2021-05-23 15:24:43', '2021-05-23 15:24:43', NULL, 49),
	(148, 'Management Integration is set and applied formally', 3, '2021-05-23 15:24:43', '2021-05-23 15:24:43', NULL, 49),
	(149, 'Management Integration is effective and optimised', 4, '2021-05-23 15:24:43', '2021-05-23 15:24:43', NULL, 49),
	(155, 'ELT Tools are designed but is put in action only rarely', 1, '2021-05-23 15:24:43', '2021-05-23 15:24:43', NULL, 50),
	(156, 'ELT Tools are designed but they are repeatably for specified tasks', 2, '2021-05-23 15:24:43', '2021-05-23 15:24:43', NULL, 50),
	(157, 'ELT Tools are designed and applied formalised for most processes', 3, '2021-05-23 15:24:43', '2021-05-23 15:24:43', NULL, 50),
	(158, 'ELT Tools are designed and mostly applied, integrated within the management', 4, '2021-05-23 15:24:43', '2021-05-23 15:24:43', NULL, 50),
	(159, 'ELT Tools are fully designed, they are optimised and improved', 5, '2021-05-23 15:24:43', '2021-05-23 15:24:43', NULL, 50),
	(160, 'Embeded analytics is running on the machines but it is not evaluated', 1, '2021-05-23 15:24:43', '2021-05-23 15:24:43', NULL, 28),
	(161, 'Embeded analytics is used only for specific task', 2, '2021-05-23 15:24:43', '2021-05-23 15:24:43', NULL, 28),
	(162, 'Embeded analytics is only a part of selected process', 3, NULL, NULL, NULL, 28),
	(163, 'Embeded analytics is an integral part of production processes', 4, NULL, NULL, NULL, 28),
	(164, 'Embeded analytics is an integral part of production processes which focuses on process improvement and optimalisation', 5, NULL, NULL, NULL, 28),
	(165, 'Machines are not the main part of the production process', 1, NULL, NULL, NULL, 27),
	(166, 'Machines are not the main part of the production process, but machines are used occasionally in the production task', 2, NULL, NULL, NULL, 27),
	(167, 'Machines are used repeatably in the production process is set for specific process', 3, NULL, NULL, NULL, 27),
	(168, 'Machines are used for most of the tasks in the production process which are well managed', 4, NULL, NULL, NULL, 27),
	(169, 'Machines are used in production process and the machines are well managed, optimised for future improvements', 5, NULL, NULL, NULL, 27),
	(170, 'Production is powered by labour force rarely', 1, NULL, NULL, NULL, 26),
	(171, 'Production is powered by labour force occasionally for specific task', 2, NULL, NULL, NULL, 26),
	(172, 'Production is powered by labour force is set for specific process', 3, NULL, NULL, NULL, 26),
	(173, 'Production is powered by labour force repeatably for most of the tasks which are managed', 4, NULL, NULL, NULL, 26),
	(174, 'Production is powered by labour force repeatably for most of the tasks which are improved and optimised over time', 5, NULL, NULL, NULL, 26),
	(177, 'Management Integration is set integrated within vertical structure and well managed', 5, '2021-05-23 15:24:43', '2021-05-23 15:24:43', NULL, 49);
/*!40000 ALTER TABLE `options` ENABLE KEYS */;

CREATE TABLE IF NOT EXISTS `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

DELETE FROM `password_resets`;
/*!40000 ALTER TABLE `password_resets` DISABLE KEYS */;
/*!40000 ALTER TABLE `password_resets` ENABLE KEYS */;

CREATE TABLE IF NOT EXISTS `permissions` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

DELETE FROM `permissions`;
/*!40000 ALTER TABLE `permissions` DISABLE KEYS */;
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
/*!40000 ALTER TABLE `permissions` ENABLE KEYS */;

CREATE TABLE IF NOT EXISTS `permission_role` (
  `role_id` int(10) unsigned NOT NULL,
  `permission_id` int(10) unsigned NOT NULL,
  KEY `role_id_fk_773672` (`role_id`),
  KEY `permission_id_fk_773672` (`permission_id`),
  CONSTRAINT `permission_id_fk_773672` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  CONSTRAINT `role_id_fk_773672` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

DELETE FROM `permission_role`;
/*!40000 ALTER TABLE `permission_role` DISABLE KEYS */;
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
/*!40000 ALTER TABLE `permission_role` ENABLE KEYS */;

CREATE TABLE IF NOT EXISTS `questions` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `question_text` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `sub_category_id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `category_fk_773713` (`sub_category_id`),
  CONSTRAINT `category_fk_773713` FOREIGN KEY (`sub_category_id`) REFERENCES `sub-categories` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

DELETE FROM `questions`;
/*!40000 ALTER TABLE `questions` DISABLE KEYS */;
INSERT INTO `questions` (`id`, `question_text`, `created_at`, `updated_at`, `deleted_at`, `sub_category_id`) VALUES
	(17, 'Select the most suitable for your processes', NULL, NULL, NULL, 46),
	(18, 'Select the most suitable for your processes', NULL, NULL, NULL, 47),
	(19, 'Select the most suitable for your processes', NULL, NULL, NULL, 48),
	(20, 'Select the most suitable for your processes', NULL, NULL, NULL, 49),
	(21, 'Select most suitable for your organisation', NULL, NULL, NULL, 50),
	(22, 'Select most suitable for handling data ', NULL, NULL, NULL, 51),
	(23, 'Select most suitable for handling data ', NULL, NULL, NULL, 52),
	(24, 'Select most suitable for handling data in terms of infrastructure', NULL, NULL, NULL, 53),
	(25, 'Select most suitable for handling data', NULL, NULL, NULL, 54),
	(26, 'Please, select most relevant', NULL, NULL, NULL, 55),
	(27, 'Please, select most relevant', NULL, NULL, NULL, 56),
	(28, 'Please, select most relevant', NULL, NULL, NULL, 57),
	(29, 'Select most suitable for your organisation', NULL, NULL, NULL, 58),
	(30, 'Select most suitable for your organisation', NULL, NULL, NULL, 59),
	(31, 'Select most suitable for your organisation', NULL, NULL, NULL, 60),
	(32, 'Select most suitable for your organisation', NULL, NULL, NULL, 61),
	(33, 'Select most suitable for your organisation', NULL, NULL, NULL, 62),
	(34, 'Select most suitable for your organisation', NULL, NULL, NULL, 63),
	(35, 'Select most suitable for your organisation', NULL, NULL, NULL, 64),
	(36, 'Select most suitable for your organisation', NULL, NULL, NULL, 65),
	(37, 'Select most suitable for your organisation', NULL, NULL, NULL, 66),
	(38, 'Select most suitable for your organisation', NULL, NULL, NULL, 67),
	(39, 'Select most suitable for your organisation', NULL, NULL, NULL, 68),
	(40, 'Select most suitable for your organisation', NULL, NULL, NULL, 69),
	(41, 'Select most suitable for your organisation', NULL, NULL, NULL, 70),
	(42, 'Select most suitable for your organisation', NULL, NULL, NULL, 71),
	(43, 'Select most suitable for your organisation', NULL, NULL, NULL, 72),
	(44, 'Select most suitable for your organisation', NULL, NULL, NULL, 73),
	(45, 'Select most suitable for your organisation', NULL, NULL, NULL, 74),
	(46, 'Select most suitable for your organisation', NULL, NULL, NULL, 75),
	(47, 'Select most suitable for your organisation', NULL, NULL, NULL, 76),
	(48, 'Select most suitable for your organisation', NULL, NULL, NULL, 77),
	(49, 'Select most suitable for your organisation', NULL, NULL, NULL, 78),
	(50, 'Select most suitable for your organisation', NULL, NULL, NULL, 79),
	(51, 'Select most suitable for your organisation', NULL, NULL, NULL, 80);
/*!40000 ALTER TABLE `questions` ENABLE KEYS */;

CREATE TABLE IF NOT EXISTS `question_result` (
  `result_id` int(10) unsigned NOT NULL,
  `question_id` int(10) unsigned NOT NULL,
  `option_id` int(10) unsigned NOT NULL,
  `points` int(11) NOT NULL DEFAULT '0',
  KEY `result_id_fk_773767` (`result_id`),
  KEY `question_id_fk_773767` (`question_id`),
  KEY `option_id_fk_773767` (`option_id`),
  CONSTRAINT `option_id_fk_773767` FOREIGN KEY (`option_id`) REFERENCES `options` (`id`) ON DELETE CASCADE,
  CONSTRAINT `question_id_fk_773767` FOREIGN KEY (`question_id`) REFERENCES `questions` (`id`) ON DELETE CASCADE,
  CONSTRAINT `result_id_fk_773767` FOREIGN KEY (`result_id`) REFERENCES `results` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

DELETE FROM `question_result`;
/*!40000 ALTER TABLE `question_result` DISABLE KEYS */;
INSERT INTO `question_result` (`result_id`, `question_id`, `option_id`, `points`) VALUES
	(3, 17, 2, 2),
	(3, 18, 9, 4),
	(3, 19, 14, 4),
	(3, 20, 16, 1),
	(3, 21, 23, 3),
	(3, 22, 28, 3),
	(3, 23, 35, 5),
	(3, 24, 40, 5),
	(3, 25, 44, 4),
	(3, 29, 50, 5),
	(3, 30, 54, 4),
	(3, 31, 57, 2),
	(3, 32, 63, 3),
	(3, 33, 66, 1),
	(3, 34, 74, 4),
	(3, 35, 78, 3),
	(3, 36, 85, 5),
	(3, 37, 90, 5),
	(3, 38, 91, 1),
	(3, 39, 96, 1),
	(3, 40, 105, 5),
	(3, 41, 106, 1),
	(3, 42, 111, 1),
	(3, 43, 119, 4),
	(3, 44, 121, 1),
	(3, 45, 127, 2),
	(3, 46, 132, 2),
	(3, 47, 137, 2),
	(3, 48, 141, 1),
	(3, 49, 149, 4),
	(3, 50, 156, 2),
	(3, 28, 163, 4),
	(3, 27, 168, 4),
	(3, 26, 174, 5),
	(4, 17, 1, 1),
	(4, 18, 6, 1),
	(4, 19, 15, 5),
	(4, 20, 17, 2),
	(4, 21, 21, 1),
	(4, 22, 26, 1),
	(4, 23, 32, 2),
	(4, 24, 37, 2),
	(4, 25, 44, 4),
	(4, 29, 50, 5),
	(4, 30, 54, 4),
	(4, 31, 60, 5),
	(4, 32, 61, 1),
	(4, 33, 67, 2),
	(4, 34, 71, 1),
	(4, 35, 77, 2),
	(4, 36, 83, 3),
	(4, 37, 86, 1),
	(4, 38, 91, 1),
	(4, 39, 99, 4),
	(4, 40, 102, 2),
	(4, 41, 106, 1),
	(4, 42, 114, 4),
	(4, 43, 116, 1),
	(4, 44, 124, 4),
	(4, 45, 127, 2),
	(4, 46, 131, 1),
	(4, 47, 137, 2),
	(4, 48, 144, 4),
	(4, 49, 149, 4),
	(4, 50, 159, 5),
	(4, 28, 160, 1),
	(4, 27, 168, 4),
	(4, 26, 172, 3),
	(5, 17, 4, 4),
	(5, 18, 7, 2),
	(5, 19, 11, 1),
	(5, 20, 16, 1),
	(5, 21, 21, 1),
	(5, 22, 28, 3),
	(5, 23, 31, 1),
	(5, 24, 40, 5),
	(5, 25, 43, 3),
	(5, 29, 50, 5),
	(5, 30, 55, 5),
	(5, 31, 60, 5),
	(5, 32, 64, 4),
	(5, 33, 68, 3),
	(5, 34, 75, 5),
	(5, 35, 79, 4),
	(5, 36, 82, 2),
	(5, 37, 86, 1),
	(5, 38, 95, 5),
	(5, 39, 100, 5),
	(5, 40, 103, 3),
	(5, 41, 110, 5),
	(5, 42, 114, 4),
	(5, 43, 118, 3),
	(5, 44, 123, 3),
	(5, 45, 130, 5),
	(5, 46, 132, 2),
	(5, 47, 138, 3),
	(5, 48, 141, 1),
	(5, 49, 147, 2),
	(5, 50, 159, 5),
	(5, 28, 164, 5),
	(5, 27, 166, 2),
	(5, 26, 171, 2),
	(6, 17, 2, 2),
	(6, 18, 8, 3),
	(6, 19, 15, 5),
	(6, 20, 20, 5),
	(6, 21, 21, 1),
	(6, 22, 28, 3),
	(6, 23, 35, 5),
	(6, 24, 36, 1),
	(6, 25, 41, 1),
	(6, 29, 50, 5),
	(6, 30, 54, 4),
	(6, 31, 59, 4),
	(6, 32, 64, 4),
	(6, 33, 68, 3),
	(6, 34, 72, 2),
	(6, 35, 77, 2),
	(6, 36, 84, 4),
	(6, 37, 88, 3),
	(6, 38, 95, 5),
	(6, 39, 97, 2),
	(6, 40, 104, 4),
	(6, 41, 108, 3),
	(6, 42, 115, 5),
	(6, 43, 120, 5),
	(6, 44, 125, 5),
	(6, 45, 126, 1),
	(6, 46, 134, 4),
	(6, 47, 138, 3),
	(6, 48, 141, 1),
	(6, 50, 156, 2),
	(6, 28, 162, 3),
	(6, 27, 169, 5),
	(6, 26, 170, 1),
	(6, 49, 177, 5),
	(7, 17, 4, 4),
	(7, 18, 8, 3),
	(7, 19, 15, 5),
	(7, 20, 20, 5),
	(7, 21, 25, 5),
	(7, 22, 28, 3),
	(7, 23, 31, 1),
	(7, 24, 38, 3),
	(7, 25, 41, 1),
	(7, 29, 47, 2),
	(7, 30, 53, 3),
	(7, 31, 57, 2),
	(7, 32, 64, 4),
	(7, 33, 68, 3),
	(7, 34, 71, 1),
	(7, 35, 77, 2),
	(7, 36, 84, 4),
	(7, 37, 88, 3),
	(7, 38, 93, 3),
	(7, 39, 99, 4),
	(7, 40, 102, 2),
	(7, 41, 109, 4),
	(7, 42, 113, 3),
	(7, 43, 119, 4),
	(7, 44, 122, 2),
	(7, 45, 130, 5),
	(7, 46, 132, 2),
	(7, 47, 138, 3),
	(7, 48, 141, 1),
	(7, 49, 146, 1),
	(7, 50, 155, 1),
	(7, 28, 160, 1),
	(7, 27, 166, 2),
	(7, 26, 170, 1),
	(8, 17, 5, 5),
	(8, 18, 9, 4),
	(8, 19, 15, 5),
	(8, 20, 18, 3),
	(8, 21, 24, 4),
	(8, 22, 28, 3),
	(8, 23, 32, 2),
	(8, 24, 40, 5),
	(8, 25, 41, 1),
	(8, 29, 49, 4),
	(8, 30, 55, 5),
	(8, 31, 57, 2),
	(8, 32, 63, 3),
	(8, 33, 69, 4),
	(8, 34, 71, 1),
	(8, 35, 77, 2),
	(8, 36, 84, 4),
	(8, 37, 89, 4),
	(8, 38, 92, 2),
	(8, 39, 96, 1),
	(8, 40, 105, 5),
	(8, 41, 107, 2),
	(8, 42, 111, 1),
	(8, 43, 118, 3),
	(8, 44, 122, 2),
	(8, 45, 130, 5),
	(8, 46, 133, 3),
	(8, 47, 139, 4),
	(8, 48, 144, 4),
	(8, 49, 146, 1),
	(8, 50, 157, 3),
	(8, 28, 160, 1),
	(8, 27, 166, 2),
	(8, 26, 173, 4);
/*!40000 ALTER TABLE `question_result` ENABLE KEYS */;

CREATE TABLE IF NOT EXISTS `results` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `total_points` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `user_id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `user_fk_773765` (`user_id`),
  CONSTRAINT `user_fk_773765` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

DELETE FROM `results`;
/*!40000 ALTER TABLE `results` DISABLE KEYS */;
INSERT INTO `results` (`id`, `total_points`, `created_at`, `updated_at`, `deleted_at`, `user_id`) VALUES
	(3, 103, '2021-05-24 10:58:45', '2021-05-24 10:58:45', NULL, 4),
	(4, 86, '2021-05-24 12:57:30', '2021-05-24 12:57:30', NULL, 4),
	(5, 110, '2021-05-24 13:26:50', '2021-05-24 13:26:50', NULL, 4),
	(6, 111, '2021-05-24 14:49:50', '2021-05-24 14:49:50', NULL, 4),
	(7, 93, '2021-05-24 14:57:25', '2021-05-24 14:57:25', NULL, 5),
	(8, 104, '2021-05-24 15:56:20', '2021-05-24 15:56:20', NULL, 4);
/*!40000 ALTER TABLE `results` ENABLE KEYS */;

CREATE TABLE IF NOT EXISTS `roles` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

DELETE FROM `roles`;
/*!40000 ALTER TABLE `roles` DISABLE KEYS */;
INSERT INTO `roles` (`id`, `title`, `created_at`, `updated_at`, `deleted_at`) VALUES
	(1, 'Admin', NULL, NULL, NULL),
	(2, 'User', NULL, NULL, NULL);
/*!40000 ALTER TABLE `roles` ENABLE KEYS */;

CREATE TABLE IF NOT EXISTS `role_user` (
  `user_id` int(10) unsigned NOT NULL,
  `role_id` int(10) unsigned NOT NULL,
  KEY `user_id_fk_773681` (`user_id`),
  KEY `role_id_fk_773681` (`role_id`),
  CONSTRAINT `role_id_fk_773681` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE,
  CONSTRAINT `user_id_fk_773681` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

DELETE FROM `role_user`;
/*!40000 ALTER TABLE `role_user` DISABLE KEYS */;
INSERT INTO `role_user` (`user_id`, `role_id`) VALUES
	(1, 1),
	(2, 2),
	(3, 2),
	(4, 2),
	(5, 2),
	(6, 2);
/*!40000 ALTER TABLE `role_user` ENABLE KEYS */;

CREATE TABLE IF NOT EXISTS `sub-categories` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `categories_id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `categories_id` (`categories_id`),
  CONSTRAINT `categories_id` FOREIGN KEY (`categories_id`) REFERENCES `categories` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

DELETE FROM `sub-categories`;
/*!40000 ALTER TABLE `sub-categories` DISABLE KEYS */;
INSERT INTO `sub-categories` (`id`, `name`, `created_at`, `updated_at`, `deleted_at`, `categories_id`) VALUES
	(46, 'Structured Data', NULL, NULL, NULL, 5),
	(47, 'Unstructured Data', NULL, NULL, NULL, 5),
	(48, 'Event Logs', NULL, NULL, NULL, 5),
	(49, 'Signals', NULL, NULL, NULL, 5),
	(50, 'Database System Management', NULL, NULL, NULL, 4),
	(51, 'Archive Management', NULL, NULL, NULL, 4),
	(52, 'DW Appliance', NULL, NULL, NULL, 4),
	(53, 'Physical Infrastructure', NULL, NULL, NULL, 4),
	(54, 'Hot Infrastructure', NULL, NULL, NULL, 4),
	(55, 'Labour Force', NULL, NULL, NULL, 3),
	(56, 'Machinery', NULL, NULL, NULL, 3),
	(57, 'Data Preprocessing', NULL, NULL, NULL, 2),
	(58, 'ELT Tools', NULL, NULL, NULL, 2),
	(59, 'Data Gouvernance', NULL, NULL, NULL, 2),
	(60, 'Report Management', NULL, NULL, NULL, 1),
	(61, 'Analytics Software', NULL, NULL, NULL, 1),
	(62, 'Information Systems', NULL, NULL, NULL, 1),
	(63, 'Data Democratisation', NULL, NULL, NULL, 1),
	(64, 'KPI & Metric', NULL, NULL, NULL, 6),
	(65, 'VSM', NULL, NULL, NULL, 6),
	(66, 'Process Optimisation', NULL, NULL, NULL, 6),
	(67, 'Quality Control', NULL, NULL, NULL, 6),
	(68, 'Production Process', NULL, NULL, NULL, 6),
	(69, 'Data Security', NULL, NULL, NULL, 6),
	(70, 'Data Management Strategy', NULL, NULL, NULL, 6),
	(71, 'IP Management', NULL, NULL, NULL, 7),
	(72, 'Insight Generation', NULL, NULL, NULL, 7),
	(73, 'Training & Education', NULL, NULL, NULL, 7),
	(74, 'Data Integration', NULL, NULL, NULL, 8),
	(75, 'Infrastructure Integration', NULL, NULL, NULL, 8),
	(76, 'Technology Integration', NULL, NULL, NULL, 8),
	(77, 'Data Quality Management Integration', NULL, NULL, NULL, 8),
	(78, 'Knowledge Management Integration', NULL, NULL, NULL, 8),
	(79, 'Platforms Integration', NULL, NULL, NULL, 8),
	(80, 'Management Integration', NULL, NULL, '2021-05-24 12:45:35', 8);
/*!40000 ALTER TABLE `sub-categories` ENABLE KEYS */;

CREATE TABLE IF NOT EXISTS `users` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` datetime DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

DELETE FROM `users`;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`, `deleted_at`) VALUES
	(1, 'Admin', 'admin@admin.com', NULL, '$2y$10$wNIDxA5tfzPm6XEsjrt0IOS9dbUrhjZSigPvzruq2Rz0BEqudStyK', NULL, NULL, NULL, NULL),
	(2, 'Blythe Stark', 'kuzora@mailinator.com', NULL, '$2y$10$p4tygZP0Vy9NXeFL1YSUiuz9snYJGCdQnPiGtusKEEbDzrZBnfOOu', NULL, '2021-05-23 15:25:30', '2021-05-23 15:25:30', NULL),
	(3, 'Beverly Bradford', 'myzawo@mailinator.com', NULL, '$2y$10$WMo7/1aaHlPBmXmU68jCyuMb1Qd5xNqtrOzIooO9ksZD8Hz4QRkPC', NULL, '2021-05-23 16:24:35', '2021-05-23 16:24:35', NULL),
	(4, 'Ishmael Mullen', 'letosan@mailinator.com', NULL, '$2y$10$Sxeud/B8Nj.p9/e2CGbW9ukArXiLRbLW0kJ9LTpYXdVo2GXetsIF2', NULL, '2021-05-24 08:28:44', '2021-05-24 08:28:44', NULL),
	(5, 'ee', 'admin@example.com', NULL, '$2y$10$GYubpiOKgYKHDfDD48O1zeKjTZ1WenmydE88ymFmO3HPmLWIeC0cq', NULL, '2021-05-24 14:56:18', '2021-05-24 14:56:18', NULL),
	(6, 'Whilemina Perez', 'zofipy@mailinator.com', NULL, '$2y$10$51yYEbXKoI0wqIqJ4XB3G.qe7.sQCke9/zkBhydcyQhb4iBIrc4.m', NULL, '2021-05-24 16:22:48', '2021-05-24 16:22:48', NULL);
/*!40000 ALTER TABLE `users` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
