-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1:3306
-- Время создания: Апр 18 2022 г., 15:51
-- Версия сервера: 8.0.24
-- Версия PHP: 7.4.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `sb227`
--

-- --------------------------------------------------------

--
-- Структура таблицы `admin_users`
--

CREATE TABLE `admin_users` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `admin_users`
--

INSERT INTO `admin_users` (`id`, `name`, `email`, `password`, `created_at`, `updated_at`) VALUES
(19, 'admin', 'admin@gmail.com', '$2y$10$otxbl3ZCyvhADvctkzLuRet6neI9sQx1BQ4vMHBias0DhVxtru43u', '2022-04-17 05:12:15', '2022-04-17 05:12:15'),
(21, 'admin', 'admin123@gmail.com', '$2y$10$8mVKDoxEqcaj7vUDRq3zXeR9qAoVZRci3i6OSbjzKBuKiiP34KLwO', '2022-04-18 06:04:55', '2022-04-18 06:04:55');

-- --------------------------------------------------------

--
-- Структура таблицы `comments`
--

CREATE TABLE `comments` (
  `id` bigint UNSIGNED NOT NULL,
  `user_id` bigint UNSIGNED NOT NULL,
  `post_id` bigint UNSIGNED NOT NULL,
  `text` bigint UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `migrations`
--

CREATE TABLE `migrations` (
  `id` int UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2022_04_11_013237_create_posts_table', 1),
(6, '2022_04_11_014043_create_admin_users_table', 1),
(7, '2022_04_11_014312_create_comments_table', 1);

-- --------------------------------------------------------

--
-- Структура таблицы `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `posts`
--

CREATE TABLE `posts` (
  `id` bigint UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `preview` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `thumbnail` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `posts`
--

INSERT INTO `posts` (`id`, `title`, `preview`, `description`, `thumbnail`, `created_at`, `updated_at`) VALUES
(161, 'Prof. Justine Dibbert Jr.', 'Mollitia error doloribus exercitationem.', 'In aliquid nesciunt similique voluptas quidem et. Beatae cumque voluptas sunt quam repellendus rerum ut. Totam placeat quis velit veniam. Voluptatibus magnam alias non rerum aut rerum voluptatibus.', '/storage//posts/', '2022-04-16 05:44:14', '2022-04-16 05:44:14'),
(162, 'Shirley Weimann', 'Deserunt inventore earum quia quisquam qui eos.', 'Repellat corporis quas fugit possimus doloribus quas ut. Illo laborum quia qui laboriosam ducimus. Non eaque quod culpa alias ut. Odit ut occaecati similique eius quo aliquid.', '/storage//posts/', '2022-04-16 05:44:14', '2022-04-16 05:44:14'),
(163, 'Valentin Nienow V', 'Eum ut iste libero nihil quis ex.', 'Perferendis qui et minus inventore ducimus itaque molestias. Rem eos sint quibusdam at aspernatur molestias. Necessitatibus quidem vitae et exercitationem aliquam aut esse.', '/storage//posts/', '2022-04-16 05:44:14', '2022-04-16 05:44:14'),
(164, 'Ophelia Bogan', 'Adipisci sit ea quisquam.', 'Omnis qui sapiente nihil explicabo dicta sed dignissimos. Quo consectetur distinctio omnis dolore harum. Aut et totam esse consectetur deserunt eum magni. Rerum et ab explicabo inventore perferendis.', '/storage//posts/', '2022-04-16 05:44:14', '2022-04-16 05:44:14'),
(165, 'Kian Howe', 'Maxime id incidunt omnis aut.', 'Tempore et blanditiis vel ipsam explicabo. Temporibus necessitatibus qui eligendi soluta. Sequi harum sed dolor enim aperiam. Fugit est nihil consectetur aut.', '/storage//posts/', '2022-04-16 05:44:14', '2022-04-16 05:44:14'),
(166, 'Myriam Quigley', 'Culpa facilis illo sit pariatur totam.', 'Blanditiis laborum cumque aut nemo consequatur alias culpa porro. Modi perspiciatis quia et. Maiores quidem pariatur fugit.', '/storage//posts/', '2022-04-16 05:44:14', '2022-04-16 05:44:14'),
(167, 'Miss Leanne Stamm PhD', 'Qui ab est similique dolorem excepturi ab quam.', 'Error eum aut et cum magnam et ad. Ullam autem est adipisci esse. Cumque ratione quia impedit voluptatem necessitatibus eius iure.', '/storage//posts/', '2022-04-16 05:44:15', '2022-04-16 05:44:15'),
(168, 'Pearline Schinner', 'Autem sint minima voluptatem.', 'Ipsa pariatur ex tenetur error. Eligendi id veritatis aut voluptatem deserunt doloremque corporis. Repudiandae non autem excepturi saepe repellendus eum eos fugiat.', '/storage//posts/', '2022-04-16 05:44:15', '2022-04-16 05:44:15'),
(169, 'Mr. Emanuel Haley Jr.', 'Tempore eos libero tenetur veritatis voluptas in.', 'Non sunt aut animi facilis. Dolores omnis minima ut qui dolorum expedita. Sunt alias voluptatibus qui minus.', '/storage//posts/', '2022-04-16 05:44:15', '2022-04-16 05:44:15'),
(170, 'Miss Florida Witting', 'Ut illo quasi sapiente delectus.', 'Laudantium nesciunt qui fuga laborum. Aut in saepe ducimus dolorem illo. Quia ut nihil sapiente voluptatibus ut.', '/storage//posts/', '2022-04-16 05:44:15', '2022-04-16 05:44:15'),
(171, 'Jensen Strosin DVM', 'Accusantium blanditiis est non odit voluptatem.', 'Quisquam est qui ratione quae error. Aliquid commodi tenetur veniam eum similique tenetur dolores.', '0', '2022-04-16 05:51:51', '2022-04-16 05:51:51'),
(172, 'Camron Reichert Sr.', 'Itaque cum ipsam vero deleniti.', 'Et reprehenderit doloribus quisquam iure soluta quaerat. Non quibusdam consequatur veniam voluptas. Quae enim blanditiis repellat fugit nobis.', '0', '2022-04-16 05:51:52', '2022-04-16 05:51:52'),
(173, 'Dr. Lavon Nikolaus', 'Qui et hic blanditiis beatae distinctio.', 'Omnis sed doloremque et consectetur voluptatum qui. Cupiditate ut est soluta non sunt explicabo. Tempora aliquam consequuntur qui iure dolorum repudiandae.', '0', '2022-04-16 05:51:52', '2022-04-16 05:51:52'),
(174, 'Angie Sawayn', 'Nulla ab accusantium distinctio voluptas.', 'Illo voluptatibus nobis nihil tenetur numquam rerum. Cumque repellendus eaque voluptatem dolores culpa. Ex eligendi tempora qui necessitatibus autem numquam. Est molestiae nemo eligendi voluptas.', '0', '2022-04-16 05:51:52', '2022-04-16 05:51:52'),
(175, 'Madisyn Kreiger', 'Vitae numquam explicabo quaerat veritatis ut.', 'Optio quia dolorem deleniti ut delectus commodi. Numquam qui laboriosam aut. Excepturi omnis et aut molestiae. Iste amet tempore quibusdam illo.', '0', '2022-04-16 05:51:52', '2022-04-16 05:51:52'),
(176, 'Marlee Morar', 'Magni totam voluptate expedita.', 'Sed nisi quia ullam incidunt quae. Exercitationem maiores in qui libero deserunt eos. Quia voluptatem ut non voluptatum architecto eos. Architecto omnis molestiae consequatur qui tempora nihil hic.', '0', '2022-04-16 05:51:52', '2022-04-16 05:51:52'),
(177, 'Dr. Erich Ryan', 'Reiciendis et quidem et quo magnam quidem.', 'Molestiae numquam ea distinctio nihil nemo. Ut unde aut et qui magnam. Vel est aut eaque natus. Consequatur pariatur quia temporibus facilis est.', '0', '2022-04-16 05:51:52', '2022-04-16 05:51:52'),
(178, 'Mr. Albert Shields', 'Non quia vel quae.', 'Accusantium et at ratione totam. Vel aut facilis quo possimus necessitatibus doloribus nam. Ut commodi blanditiis velit voluptatem. Ea aut eum vitae voluptatem quisquam.', '0', '2022-04-16 05:51:52', '2022-04-16 05:51:52'),
(180, 'Brenda Powlowski', 'Omnis repellat sapiente quod cupiditate.', 'Minus ad ipsa dolor expedita esse. Fuga et nulla dignissimos provident voluptas odit. Sed qui velit voluptates qui aspernatur.', '0', '2022-04-16 05:51:53', '2022-04-16 05:51:53'),
(182, 'Maritza Trantow', 'Atque incidunt iste porro a iusto ullam hic.', 'Maxime est minus assumenda ipsa placeat. Soluta adipisci dignissimos voluptatem aut rerum maiores et. Optio at occaecati magni tempora in dolorum.', '/storage//posts/', '2022-04-17 05:12:13', '2022-04-17 05:12:13'),
(184, 'Prof. Clyde Hudson PhD', 'Velit iste sequi natus a in.', 'Sit eveniet qui ducimus rerum provident omnis enim. Fuga maxime a magnam illum voluptate rerum. Aut accusamus reprehenderit ipsum.', '/storage//posts/', '2022-04-17 05:12:13', '2022-04-17 05:12:13'),
(191, 'Это просто тестовая картина', 'Здесь космос', 'круто!', '/fIxp4Nz0qlFI32TV6envlFubQhtClhsM1Rl3kb4f.png', '2022-04-18 03:35:32', '2022-04-18 04:22:00'),
(192, 'Chaz Breitenberg', 'Et voluptas consequatur et omnis et assumenda.', 'Sapiente deserunt nostrum rerum corporis reprehenderit. Vero rerum perferendis rem eaque ut delectus earum eos. Laboriosam similique pariatur sint mollitia ullam repellat sit.', '0', '2022-04-18 06:01:10', '2022-04-18 06:01:10'),
(193, 'Mr. Fred Cronin', 'Suscipit saepe omnis iure.', 'Et et odit cum numquam qui at. Quidem illum alias error ipsam assumenda ut consequatur.', '0', '2022-04-18 06:01:11', '2022-04-18 06:01:11'),
(194, 'Miss Valerie Cormier', 'Quia corporis omnis labore aspernatur.', 'Non aut dolor quo est eligendi qui sed. Ipsam earum sed commodi. Numquam eveniet quis placeat minima ratione. Tempora sequi soluta ipsam quasi.', '0', '2022-04-18 06:01:11', '2022-04-18 06:01:11'),
(195, 'Freddie Casper', 'Quis ipsam et beatae accusamus incidunt.', 'Et voluptatem et impedit in autem. Eos nesciunt hic nostrum itaque ut accusantium. A recusandae velit similique quod provident dignissimos molestiae.', '0', '2022-04-18 06:01:11', '2022-04-18 06:01:11'),
(196, 'Lia Raynor II', 'Esse aut earum voluptatem possimus facere esse.', 'Omnis doloribus eius eum voluptas ullam. Deserunt pariatur quia pariatur magni perspiciatis. Debitis aliquid officia dolore soluta. Dolore sequi natus est velit dignissimos sunt.', '0', '2022-04-18 06:01:11', '2022-04-18 06:01:11'),
(197, 'Miss Freeda Grant', 'Unde et id quas molestiae vitae ad atque.', 'Adipisci magnam vero nobis. Nostrum quia modi distinctio deleniti dolor. Dolorem id at illum est cum aut perspiciatis. Neque perferendis necessitatibus hic quaerat.', '0', '2022-04-18 06:01:11', '2022-04-18 06:01:11'),
(198, 'Art Dooley V', 'Ullam ut sit non praesentium porro.', 'Reprehenderit nostrum consequuntur totam modi sed corrupti. Distinctio ratione doloremque aliquam est ut numquam. Est minus ut aliquid et ut in. Ut architecto dolor ab similique sed autem.', '0', '2022-04-18 06:01:11', '2022-04-18 06:01:11'),
(199, 'Juvenal Carter', 'Numquam earum sed sapiente.', 'Corrupti suscipit et eos eum non hic aspernatur hic. Debitis voluptate est hic praesentium non. Aut sit ipsa ducimus sit aliquid nostrum. Incidunt iste qui corrupti iure omnis.', '0', '2022-04-18 06:01:11', '2022-04-18 06:01:11'),
(201, 'Prof. Jordon Paucek IV', 'Inventore dolorum est voluptatem dolorum.', 'Iusto sunt laudantium eligendi asperiores commodi eos pariatur eaque. Ex sunt et veritatis accusamus. Consequuntur quos nesciunt recusandae reprehenderit labore.', '0', '2022-04-18 06:01:11', '2022-04-18 06:01:11'),
(203, 'Nyah Hartmann', 'Qui ut tempora voluptatem vel cumque illo quae.', 'Delectus maiores alias illo magnam sunt culpa harum. Sit quis corporis molestiae cupiditate. Ut exercitationem ratione ratione.', '0', '2022-04-18 06:04:54', '2022-04-18 06:04:54'),
(204, 'Miss Amaya Shields', 'Quis praesentium cumque quae.', 'Perferendis temporibus quasi hic. Dignissimos inventore perspiciatis illo dolorem est aliquid sint. Nisi accusamus neque ullam. Voluptates perferendis ipsam ad ipsam nesciunt.', '0', '2022-04-18 06:04:54', '2022-04-18 06:04:54'),
(205, 'Myron Gusikowski', 'Quo omnis possimus est exercitationem veniam.', 'Non et similique reprehenderit cum quia id. Est provident et non consequatur eum omnis provident. Neque ad distinctio ipsam quod.', 'C:\\Users\\Acer ПК\\AppData\\Local\\Temp\\php78D0.tmp', '2022-04-18 06:04:54', '2022-04-18 06:10:36'),
(206, 'Prof. Prince Satterfield', 'Sapiente nisi et aliquam sit dolores.', 'Beatae eum repellendus ipsam necessitatibus laborum. Quia perferendis iusto ea. Illo nam et nesciunt. Voluptas sint et sunt illo et voluptatem cum. Rem aut veritatis tempore et.', '0', '2022-04-18 06:04:54', '2022-04-18 06:04:54'),
(207, 'Ernestine Howe', 'Rerum iusto omnis consequatur sed.', 'Excepturi laudantium enim corrupti quia est fuga voluptas et. Eos tempore ab nobis. Eveniet sed blanditiis voluptas iure officiis consequatur ducimus. Nesciunt id omnis blanditiis aut.', '0', '2022-04-18 06:04:54', '2022-04-18 06:04:54'),
(208, 'Ms. Marianne Tremblay', 'Culpa magni vel ea earum error odit.', 'Pariatur veritatis dolorem nam ut consequatur velit. Culpa libero enim placeat qui est deserunt in. Et harum ullam unde in.', '0', '2022-04-18 06:04:54', '2022-04-18 06:04:54'),
(209, 'Miss Mariana Senger IV', 'Ullam quaerat autem vel eligendi.', 'Amet et et reiciendis impedit natus doloribus deserunt. Dolores in quo ipsam ab assumenda numquam ut aliquid. Facilis nisi est libero neque.', '0', '2022-04-18 06:04:54', '2022-04-18 06:04:54'),
(210, 'Gisselle Crist II', 'Voluptatibus et delectus et.', 'Ut eum sed est pariatur. Sed quia distinctio omnis aliquid dolor dignissimos voluptatem. Vitae eos omnis et nihil corrupti qui ut aut.', '0', '2022-04-18 06:04:54', '2022-04-18 06:04:54');

-- --------------------------------------------------------

--
-- Структура таблицы `users`
--

CREATE TABLE `users` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(171, 'Leann Kling', 'waters.hiram@example.org', '2022-04-16 05:44:10', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'beYfBLLDcM', '2022-04-16 05:44:10', '2022-04-16 05:44:10'),
(172, 'Pearline Stark', 'howell.alysa@example.org', '2022-04-16 05:44:10', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'uZ7f7YCanR', '2022-04-16 05:44:10', '2022-04-16 05:44:10'),
(173, 'Jodie Gottlieb', 'kfriesen@example.org', '2022-04-16 05:44:10', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'NHH6NFWktj', '2022-04-16 05:44:10', '2022-04-16 05:44:10'),
(174, 'Alberto Collier', 'ttrantow@example.com', '2022-04-16 05:44:10', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'hg12LDnEQ1', '2022-04-16 05:44:10', '2022-04-16 05:44:10'),
(175, 'Ms. Emmalee Bernhard', 'emiller@example.com', '2022-04-16 05:44:10', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'QIsarcyuIX', '2022-04-16 05:44:10', '2022-04-16 05:44:10'),
(176, 'Dr. Abby Gusikowski Sr.', 'leola98@example.net', '2022-04-16 05:44:10', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'ioRHGjO8eJ', '2022-04-16 05:44:10', '2022-04-16 05:44:10'),
(177, 'Dr. Lavonne Wolff', 'darryl42@example.com', '2022-04-16 05:44:10', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'SrHCht25eP', '2022-04-16 05:44:11', '2022-04-16 05:44:11'),
(178, 'Dr. Liam Renner', 'lindsay96@example.org', '2022-04-16 05:44:10', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '2POHue5hDq', '2022-04-16 05:44:11', '2022-04-16 05:44:11'),
(179, 'Miss Caroline Thompson DDS', 'nelson22@example.org', '2022-04-16 05:44:10', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'njXIxq0PIu', '2022-04-16 05:44:11', '2022-04-16 05:44:11'),
(180, 'Amie Gerlach', 'mmurazik@example.com', '2022-04-16 05:44:10', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'YK0lGjiPTe', '2022-04-16 05:44:11', '2022-04-16 05:44:11'),
(181, 'Irma Sawayn', 'lucy.koepp@example.com', '2022-04-16 05:51:48', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'QTa8DGgLu8', '2022-04-16 05:51:48', '2022-04-16 05:51:48'),
(182, 'Sidney Wolff', 'zlebsack@example.com', '2022-04-16 05:51:48', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'wTZjV4PtSo', '2022-04-16 05:51:48', '2022-04-16 05:51:48'),
(183, 'Garnet Smitham III', 'lyost@example.com', '2022-04-16 05:51:48', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'sdS0zQqLLd', '2022-04-16 05:51:48', '2022-04-16 05:51:48'),
(184, 'Riley Renner DDS', 'stephania77@example.net', '2022-04-16 05:51:48', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'GLkrIz5xj6', '2022-04-16 05:51:49', '2022-04-16 05:51:49'),
(185, 'Ms. Jade Rutherford IV', 'gage53@example.net', '2022-04-16 05:51:48', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'xvI7safKwd', '2022-04-16 05:51:49', '2022-04-16 05:51:49'),
(186, 'Devonte Hagenes III', 'michel.blick@example.com', '2022-04-16 05:51:48', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'uc8jhNnKt3', '2022-04-16 05:51:49', '2022-04-16 05:51:49'),
(187, 'Victor Witting', 'hoppe.lexi@example.org', '2022-04-16 05:51:48', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'rP1agJER7k', '2022-04-16 05:51:49', '2022-04-16 05:51:49'),
(188, 'Dr. Eduardo Wolff', 'mills.macey@example.net', '2022-04-16 05:51:48', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '87yr9l9dSP', '2022-04-16 05:51:49', '2022-04-16 05:51:49'),
(189, 'Kira McLaughlin', 'dedric.trantow@example.com', '2022-04-16 05:51:48', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'mW8JvtkNZ9', '2022-04-16 05:51:49', '2022-04-16 05:51:49'),
(190, 'Amos Cormier', 'christelle.zboncak@example.org', '2022-04-16 05:51:48', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'yDmnZLcJXb', '2022-04-16 05:51:49', '2022-04-16 05:51:49'),
(191, 'Bobur', 'bobur777@gmail.com', '2022-04-04 04:07:22', '$2y$10$izb.zebPtqcT1YQs3yjCB.wVA4Yefvxr2ObRfK0xpEb.0izpIPx.m', NULL, '2022-04-16 23:00:44', '2022-04-16 23:00:44'),
(192, 'Norwood Keebler DDS', 'betty10@example.com', '2022-04-17 02:01:53', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'jN24bc8vBt', '2022-04-17 02:01:53', '2022-04-17 02:01:53'),
(193, 'Ms. Virgie Stanton DDS', 'robyn.cormier@example.com', '2022-04-17 02:01:53', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'LCEU4JyzRb', '2022-04-17 02:01:54', '2022-04-17 02:01:54'),
(194, 'Margarette Jenkins I', 'claire53@example.org', '2022-04-17 02:01:53', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '9ylmGZWF9V', '2022-04-17 02:01:54', '2022-04-17 02:01:54'),
(195, 'Elliot Willms', 'jane.mclaughlin@example.net', '2022-04-17 02:01:53', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'MLw1mrrQTJ', '2022-04-17 02:01:54', '2022-04-17 02:01:54'),
(196, 'Anais Torphy', 'daron97@example.net', '2022-04-17 02:01:53', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'E7l3ZXGHPw', '2022-04-17 02:01:54', '2022-04-17 02:01:54'),
(197, 'Ms. Elvie Mayert', 'libbie.bosco@example.com', '2022-04-17 02:01:53', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'hSC6KsW4HQ', '2022-04-17 02:01:54', '2022-04-17 02:01:54'),
(198, 'Mrs. Shanel Yundt MD', 'xlang@example.org', '2022-04-17 02:01:53', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'zPGsTwSI2u', '2022-04-17 02:01:54', '2022-04-17 02:01:54'),
(199, 'Prof. Lazaro Wiegand II', 'antonia94@example.com', '2022-04-17 02:01:53', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'YjVzovjMXJ', '2022-04-17 02:01:55', '2022-04-17 02:01:55'),
(200, 'Lottie Dach', 'hkling@example.com', '2022-04-17 02:01:53', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'A9b6gNHqXj', '2022-04-17 02:01:55', '2022-04-17 02:01:55'),
(201, 'Mr. Reid Walsh', 'bessie.mitchell@example.net', '2022-04-17 02:01:53', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '039dZHzQ15', '2022-04-17 02:01:55', '2022-04-17 02:01:55'),
(202, 'Maegan Stiedemann', 'gerhold.bart@example.net', '2022-04-17 05:12:09', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'Ugnc9X2Pds', '2022-04-17 05:12:09', '2022-04-17 05:12:09'),
(203, 'Mrs. Lenora Padberg II', 'pgleichner@example.net', '2022-04-17 05:12:09', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'ijHQYPn12R', '2022-04-17 05:12:10', '2022-04-17 05:12:10'),
(204, 'Martin Grant IV', 'tianna.bailey@example.net', '2022-04-17 05:12:09', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '5t3qMNpsKm', '2022-04-17 05:12:10', '2022-04-17 05:12:10'),
(205, 'Prof. Meagan Fadel', 'theo.hansen@example.com', '2022-04-17 05:12:09', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '69PaRSrTXz', '2022-04-17 05:12:10', '2022-04-17 05:12:10'),
(206, 'Dr. Marcus Kilback', 'orlo.kuhn@example.com', '2022-04-17 05:12:09', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'p5SwpDaF3Z', '2022-04-17 05:12:10', '2022-04-17 05:12:10'),
(207, 'Estevan Blanda', 'gracie.reynolds@example.net', '2022-04-17 05:12:09', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'df1uwTShuU', '2022-04-17 05:12:10', '2022-04-17 05:12:10'),
(208, 'Patricia Nicolas', 'erdman.tracey@example.com', '2022-04-17 05:12:09', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '7Lrw69U48D', '2022-04-17 05:12:10', '2022-04-17 05:12:10'),
(209, 'Mr. Alford Sanford III', 'alford.mueller@example.org', '2022-04-17 05:12:09', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'f4361lRNys', '2022-04-17 05:12:10', '2022-04-17 05:12:10'),
(210, 'Prof. Raven Wilkinson PhD', 'ytoy@example.net', '2022-04-17 05:12:09', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'r0Y2eaXUex', '2022-04-17 05:12:10', '2022-04-17 05:12:10'),
(211, 'Owen Heathcote I', 'enrico.ernser@example.org', '2022-04-17 05:12:09', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'jDx0ZGQ3AZ', '2022-04-17 05:12:10', '2022-04-17 05:12:10'),
(212, 'Bob', 'Guest@gmail.com', NULL, '$2y$10$JmroUGloWJ9jGcNorjmPsO1TRrso5FvLGGKsfg39LEHxJPrGXYSLa', NULL, '2022-04-18 05:22:11', '2022-04-18 05:22:11'),
(213, 'Makenzie Johnson Jr.', 'btorphy@example.net', '2022-04-18 06:01:06', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'cm6pegeuIv', '2022-04-18 06:01:06', '2022-04-18 06:01:06'),
(214, 'Ms. Sadye Schuppe DDS', 'dcummings@example.com', '2022-04-18 06:01:06', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'kO4mTZ2Xdv', '2022-04-18 06:01:06', '2022-04-18 06:01:06'),
(215, 'Rosella Hahn DVM', 'muller.immanuel@example.com', '2022-04-18 06:01:06', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '5JPI3iD2AQ', '2022-04-18 06:01:06', '2022-04-18 06:01:06'),
(216, 'Prof. Ariel Boyle', 'ezra.simonis@example.org', '2022-04-18 06:01:06', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'nfN1FXm6Lv', '2022-04-18 06:01:07', '2022-04-18 06:01:07'),
(217, 'Marjory Barrows DDS', 'breichel@example.net', '2022-04-18 06:01:06', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'MQGKvO9DlD', '2022-04-18 06:01:07', '2022-04-18 06:01:07'),
(218, 'Mr. Adam Bosco', 'ryan04@example.com', '2022-04-18 06:01:06', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'SzGE122a2K', '2022-04-18 06:01:07', '2022-04-18 06:01:07'),
(219, 'Mavis Fadel', 'nhessel@example.net', '2022-04-18 06:01:06', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'RheSa6F0Kx', '2022-04-18 06:01:07', '2022-04-18 06:01:07'),
(220, 'Guillermo Grady', 'reymundo98@example.com', '2022-04-18 06:01:06', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'bCl6btKuj0', '2022-04-18 06:01:07', '2022-04-18 06:01:07'),
(221, 'Brannon Rath', 'brandon.maggio@example.net', '2022-04-18 06:01:06', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'gRfxFomIKn', '2022-04-18 06:01:08', '2022-04-18 06:01:08'),
(222, 'Shany Kulas', 'roberts.cloyd@example.org', '2022-04-18 06:01:06', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'Bf4hInii0D', '2022-04-18 06:01:08', '2022-04-18 06:01:08'),
(223, 'Francisco Labadie', 'margarete.bechtelar@example.com', '2022-04-18 06:04:51', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'pffq6Q56OL', '2022-04-18 06:04:51', '2022-04-18 06:04:51'),
(224, 'Brandt Beer', 'koss.leilani@example.com', '2022-04-18 06:04:51', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'QUXyHUNwC7', '2022-04-18 06:04:51', '2022-04-18 06:04:51'),
(225, 'Amari Glover', 'beverly.buckridge@example.net', '2022-04-18 06:04:51', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'vy9V5s0xuS', '2022-04-18 06:04:51', '2022-04-18 06:04:51'),
(226, 'Shaniya Champlin', 'lgibson@example.com', '2022-04-18 06:04:51', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'YEt33UM7PB', '2022-04-18 06:04:51', '2022-04-18 06:04:51'),
(227, 'Sabrina Corkery', 'williamson.deshawn@example.com', '2022-04-18 06:04:51', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'Bw82QbTATr', '2022-04-18 06:04:51', '2022-04-18 06:04:51'),
(228, 'Cara Harris Jr.', 'ankunding.kenna@example.org', '2022-04-18 06:04:51', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'rtRUJ3fvXp', '2022-04-18 06:04:52', '2022-04-18 06:04:52'),
(229, 'Ms. Kiana Lubowitz DDS', 'iemmerich@example.net', '2022-04-18 06:04:51', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'yrGBETRq1y', '2022-04-18 06:04:52', '2022-04-18 06:04:52'),
(230, 'Ms. Reyna Mitchell III', 'mmitchell@example.com', '2022-04-18 06:04:51', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'SYuS2lyjQK', '2022-04-18 06:04:52', '2022-04-18 06:04:52'),
(231, 'Myriam Haley', 'qpfannerstill@example.com', '2022-04-18 06:04:51', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '5CkDMpxQOH', '2022-04-18 06:04:52', '2022-04-18 06:04:52'),
(232, 'Zelda King I', 'bart.daugherty@example.com', '2022-04-18 06:04:51', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'inxe3Ppb0O', '2022-04-18 06:04:52', '2022-04-18 06:04:52');

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `admin_users`
--
ALTER TABLE `admin_users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `admin_users_email_unique` (`email`);

--
-- Индексы таблицы `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `comments_user_id_foreign` (`user_id`),
  ADD KEY `comments_post_id_foreign` (`post_id`);

--
-- Индексы таблицы `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Индексы таблицы `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Индексы таблицы `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Индексы таблицы `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `admin_users`
--
ALTER TABLE `admin_users`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT для таблицы `comments`
--
ALTER TABLE `comments`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT для таблицы `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `posts`
--
ALTER TABLE `posts`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=212;

--
-- AUTO_INCREMENT для таблицы `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=233;

--
-- Ограничения внешнего ключа сохраненных таблиц
--

--
-- Ограничения внешнего ключа таблицы `comments`
--
ALTER TABLE `comments`
  ADD CONSTRAINT `comments_post_id_foreign` FOREIGN KEY (`post_id`) REFERENCES `posts` (`id`),
  ADD CONSTRAINT `comments_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
