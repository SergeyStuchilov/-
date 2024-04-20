-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1
-- Время создания: Апр 20 2024 г., 11:59
-- Версия сервера: 10.4.32-MariaDB
-- Версия PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `diploma-harmony_bd`
--

-- --------------------------------------------------------

--
-- Структура таблицы `articles`
--

CREATE TABLE `articles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `content` text DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `category_id` bigint(20) UNSIGNED NOT NULL,
  `is_published` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `articles`
--

INSERT INTO `articles` (`id`, `title`, `slug`, `content`, `image`, `category_id`, `is_published`, `created_at`, `updated_at`) VALUES
(2, 'пробую', 'probuiu', 'поищашгищвшопвз', 'articles/article_2/pedazo-del-panal-de-la-miel-aislado-en-el-fondo-blanco-primer-128042695.jpg', 3, 1, '2024-04-03 00:52:17', '2024-04-13 17:12:53');

-- --------------------------------------------------------

--
-- Структура таблицы `authors`
--

CREATE TABLE `authors` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `surname` varchar(255) NOT NULL,
  `nane` varchar(255) NOT NULL,
  `middle_name` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `author_book`
--

CREATE TABLE `author_book` (
  `author_id` bigint(20) UNSIGNED NOT NULL,
  `book_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `books`
--

CREATE TABLE `books` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `description` text DEFAULT NULL,
  `publish_date` date DEFAULT NULL,
  `pages` int(11) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `price` double(8,2) NOT NULL DEFAULT 0.00,
  `sale_price` double(8,2) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `books`
--

INSERT INTO `books` (`id`, `title`, `slug`, `description`, `publish_date`, `pages`, `image`, `price`, `sale_price`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'gbcfbbfcx', 'gbcfbbfcx', 'cn c  v vmhbfgm', NULL, NULL, NULL, 250.00, NULL, '2024-04-05 05:03:32', '2024-04-07 08:28:58', '2024-04-07 08:28:58'),
(2, 'сделали неожиданное', 'sdelali-neozidannoe', 'По словам эксперта, ситуация практически идентичная и для других больших населенных пунктов, даже если они находятся совсем далеко от передовой. Львов страдает от тех же проблем, сообщила Гранцева', NULL, NULL, NULL, 150.00, NULL, '2024-04-05 05:04:23', '2024-04-20 04:33:46', '2024-04-20 04:33:46'),
(3, 'bbmg,mcg', 'bbmgmcg', 'vfgmnfmfg,mj,', '2012-02-10', NULL, NULL, 200.00, NULL, '2024-04-05 05:06:58', '2024-04-20 04:32:51', '2024-04-20 04:32:51'),
(4, '12345', '12345', 'gckckctuk4273', '0014-12-12', NULL, 'C:\\xampp\\tmp\\php83EC.tmp', 2200.00, NULL, '2024-04-05 05:11:21', '2024-04-19 08:33:11', '2024-04-19 08:33:11'),
(5, '4586374', '4586374', 'cgbxfnfxm fgg mg', '2021-01-25', NULL, 'C:\\xampp\\tmp\\phpDD33.tmp', 320.00, NULL, '2024-04-05 05:15:35', '2024-04-19 08:33:15', '2024-04-19 08:33:15'),
(6, 'Без фото', 'bez-foto', 'Описание', '2022-12-25', NULL, NULL, 0.00, NULL, '2024-04-05 05:51:43', '2024-04-20 04:34:57', NULL),
(7, 'шоколад', 'sokolad', 'У сладостей — плохая репутация, когда речь заходит о здоровье, но некоторые виды шоколада могут быть полезны для кожи, считают эксперты', '2024-04-04', NULL, 'C:\\xampp\\tmp\\php31EF.tmp', 0.00, NULL, '2024-04-07 08:53:24', '2024-04-20 04:33:49', '2024-04-20 04:33:49'),
(8, 'Сумки с брелками', 'sumki-s-brelkami', 'Брелоки, цепочки, мини-игрушки — создать свой уникальный аксессуар можно разными способами, полет фантазии не ограничен. Кто-то привязывает к сумкам обычные шнурки, кто-то находит забавные детские брелки с мультяшными героями и использует их.', '2024-04-02', NULL, '1-246.jpg', 1500.00, NULL, '2024-04-13 03:17:39', '2024-04-20 04:33:33', '2024-04-20 04:33:33'),
(9, 'ss', 'ss', 'bdfbzdbdf', '2024-04-02', NULL, 'books/book_9/задание 2 (1).jpg', 110.00, NULL, '2024-04-13 16:36:35', '2024-04-20 04:33:16', '2024-04-20 04:33:16'),
(10, 'tt', 'tt', 'z nfgx', '2024-04-15', NULL, 'C:\\xampp\\tmp\\phpE765.tmp', 800.00, NULL, '2024-04-13 16:37:52', '2024-04-20 04:35:20', '2024-04-20 04:35:20'),
(11, 'ррр', 'rrr', 'сичат', NULL, NULL, 'books/book_11/bionika_1.jpg', 20.00, NULL, '2024-04-13 16:43:08', '2024-04-20 04:33:38', '2024-04-20 04:33:38'),
(12, '1111', '1111', 'dhdxhd', NULL, NULL, 'C:\\xampp\\tmp\\phpF50E.tmp', 140.00, NULL, '2024-04-14 08:44:27', '2024-04-19 08:32:58', '2024-04-19 08:32:58'),
(13, '1111', '1111-1', 'dhdxhd', NULL, NULL, 'C:\\xampp\\tmp\\php60B0.tmp', 140.00, NULL, '2024-04-14 08:47:06', '2024-04-19 08:33:00', '2024-04-19 08:33:00'),
(14, '1111', '1111-2', 'dhdxhd', NULL, NULL, 'C:\\xampp\\tmp\\phpA1C2.tmp', 140.00, NULL, '2024-04-14 08:50:39', '2024-04-19 08:33:03', '2024-04-19 08:33:03'),
(15, '1111', '1111-3', 'dhdxhd', NULL, NULL, 'C:\\xampp\\tmp\\php150A.tmp', 140.00, NULL, '2024-04-14 08:52:14', '2024-04-19 08:33:05', '2024-04-19 08:33:05'),
(16, '1111', '1111-4', 'dhdxhd', NULL, NULL, 'C:\\xampp\\tmp\\php463D.tmp', 140.00, NULL, '2024-04-14 09:02:17', '2024-04-19 08:33:07', '2024-04-19 08:33:07'),
(17, 'dgd', 'dgd', 'dgzzzse', NULL, NULL, 'C:\\xampp\\tmp\\phpC32B.tmp', 12.00, NULL, '2024-04-14 09:03:54', '2024-04-20 04:33:03', '2024-04-20 04:33:03'),
(18, 'dgd', 'dgd-1', 'dgzzzse', NULL, NULL, 'books/book_18/angl_1.jpg', 12.00, NULL, '2024-04-14 09:30:48', '2024-04-20 04:33:06', '2024-04-20 04:33:06'),
(19, 'ghjf', 'ghjf', 'hvncgcg', NULL, NULL, 'books/book_19/1-246.jpg', 300.00, NULL, '2024-04-14 09:32:01', '2024-04-20 04:33:13', '2024-04-20 04:33:13'),
(20, 'ggg', 'ggg', 'gggg', NULL, NULL, 'C:\\xampp\\tmp\\phpD9AE.tmp', 12.00, NULL, '2024-04-14 09:50:58', '2024-04-20 04:33:10', '2024-04-20 04:33:10'),
(21, '1234', '1234', '0', '2024-04-19', NULL, 'C:\\xampp\\tmp\\php74EB.tmp', 2500.00, NULL, '2024-04-14 09:54:07', '2024-04-19 08:33:09', '2024-04-19 08:33:09'),
(22, '124', '124', '1 jfyjc', '2024-04-19', NULL, 'C:\\xampp\\tmp\\php326B.tmp', 1222.00, NULL, '2024-04-14 11:29:45', '2024-04-19 08:32:55', '2024-04-19 08:32:55'),
(23, '1', '1-1', '1', NULL, NULL, 'C:\\xampp\\tmp\\php1E58.tmp', 12.00, NULL, '2024-04-14 11:54:54', '2024-04-19 08:32:43', '2024-04-19 08:32:43'),
(24, '2', '2', '2gckmg', '2024-04-19', NULL, 'C:\\xampp\\tmp\\phpEAE5.tmp', 250.00, NULL, '2024-04-14 12:04:25', '2024-04-19 08:32:51', '2024-04-19 08:32:51'),
(25, '1', '1-3', '4', NULL, NULL, 'C:\\xampp\\tmp\\php3D50.tmp', 300.00, NULL, '2024-04-14 12:54:31', '2024-04-19 08:32:49', '2024-04-19 08:32:49'),
(26, 'csdzcsz', 'csdzcsz', 'zv zv z', NULL, NULL, 'books/book_26/bionika_1.jpg', 300.00, NULL, '2024-04-19 06:21:47', '2024-04-20 04:32:58', '2024-04-20 04:32:58'),
(27, 'zzzz', 'zzzz', 'vsds', NULL, NULL, 'books/book_27/1c759e126cfcbfdb0c88d42022ed8d79.png', 250.00, NULL, '2024-04-19 08:02:33', '2024-04-20 04:33:26', '2024-04-20 04:33:26'),
(28, '124', '124-1', 'zhdd', '2024-04-19', NULL, 'C:\\xampp\\tmp\\phpCB3B.tmp', 300.00, NULL, '2024-04-19 08:33:45', '2024-04-20 03:06:43', '2024-04-20 03:06:43'),
(29, 'Большой дом для большой семьи', 'bolsoi-dom-dlia-bolsoi-semi', NULL, '2024-04-08', NULL, 'books/book_29/1780_05 1.jpg', 2500.00, NULL, '2024-04-20 03:47:06', '2024-04-20 03:47:06', NULL),
(30, 'Спокойствие и много света.', 'spokoistvie-i-mnogo-sveta', NULL, '2024-04-06', NULL, 'books/book_30/1747_00 1.jpg', 2000.00, NULL, '2024-04-20 04:39:00', '2024-04-20 04:39:00', NULL),
(31, 'Частный кинотеатр', 'castnyi-kinoteatr', NULL, '2024-04-01', NULL, 'books/book_31/1700_chastnyy-kinoteatr 1.jpg', 250.00, NULL, '2024-04-20 04:40:59', '2024-04-20 04:40:59', NULL),
(32, 'Придерживаясь \"Фен-Шуй\"', 'priderzivaias-fen-sui', NULL, '2024-04-22', NULL, 'books/book_32/1420_living_v3_cam_001 1.jpg', 1000.00, NULL, '2024-04-20 04:42:14', '2024-04-20 04:42:14', NULL),
(33, 'Офис с комнатой отдыха', 'ofis-s-komnatoi-otdyxa', NULL, '2024-04-03', NULL, 'books/book_33/1542_1 1.jpg', 1400.00, NULL, '2024-04-20 04:44:25', '2024-04-20 04:44:25', NULL),
(34, 'Терракотовое настроение', 'terrakotovoe-nastroenie', NULL, '2024-04-06', NULL, 'books/book_34/1194_gost-1_07 1.jpg', 250.00, NULL, '2024-04-20 04:46:04', '2024-04-20 04:46:04', NULL),
(35, 'Яркая жизнь', 'iarkaia-zizn', NULL, '2024-04-06', NULL, 'books/book_35/1137_2 1.jpg', 500.00, NULL, '2024-04-20 04:47:26', '2024-04-20 04:47:26', NULL),
(36, 'Лофтовая кофейня', 'loftovaia-kofeinia', NULL, '2024-04-17', NULL, 'books/book_36/955_8.rgb_color 1.jpg', 520.00, NULL, '2024-04-20 04:48:52', '2024-04-20 04:48:52', NULL);

-- --------------------------------------------------------

--
-- Структура таблицы `book_genre`
--

CREATE TABLE `book_genre` (
  `book_id` bigint(20) UNSIGNED NOT NULL,
  `genre_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `book_genre`
--

INSERT INTO `book_genre` (`book_id`, `genre_id`) VALUES
(29, 6),
(29, 11),
(29, 13),
(6, 10),
(6, 15),
(30, 7),
(30, 14),
(30, 16),
(31, 6),
(31, 9),
(31, 13),
(32, 7),
(32, 9),
(32, 14),
(32, 16),
(33, 7),
(33, 11),
(33, 12),
(33, 15),
(34, 6),
(34, 9),
(34, 10),
(34, 14),
(34, 15),
(35, 6),
(35, 9),
(35, 11),
(35, 14),
(35, 16),
(36, 6),
(36, 8),
(36, 11);

-- --------------------------------------------------------

--
-- Структура таблицы `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `categories`
--

INSERT INTO `categories` (`id`, `name`, `created_at`, `updated_at`) VALUES
(3, 'Средняя детализация', '2024-04-01 02:54:36', '2024-04-20 03:39:33'),
(5, 'Авторский интерьер', '2024-04-05 08:39:00', '2024-04-20 03:40:05'),
(7, 'Эскизный проект', '2024-04-20 03:38:56', '2024-04-20 03:38:56');

-- --------------------------------------------------------

--
-- Структура таблицы `failed_jobs`
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
-- Структура таблицы `genres`
--

CREATE TABLE `genres` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `genres`
--

INSERT INTO `genres` (`id`, `name`, `slug`, `created_at`, `updated_at`) VALUES
(6, 'Ампир', 'ampir', '2024-04-19 23:48:17', '2024-04-19 23:48:17'),
(7, 'Индустриальный', 'industrialnyi', '2024-04-20 01:02:11', '2024-04-20 01:02:11'),
(8, 'Классический', 'klassiceskii', '2024-04-20 03:33:42', '2024-04-20 03:33:42'),
(9, 'Кантри', 'kantri', '2024-04-20 03:34:03', '2024-04-20 03:34:03'),
(10, 'Минимализм', 'minimalizm', '2024-04-20 03:34:25', '2024-04-20 03:34:25'),
(11, 'Поп-арт', 'pop-art', '2024-04-20 03:34:47', '2024-04-20 03:34:47'),
(12, 'Скандинавский', 'skandinavskii', '2024-04-20 03:35:07', '2024-04-20 03:35:07'),
(13, 'Средиземноморский', 'sredizemnomorskii', '2024-04-20 03:35:31', '2024-04-20 03:35:31'),
(14, 'Футуризм', 'futurizm', '2024-04-20 03:35:50', '2024-04-20 03:35:50'),
(15, 'Хай-тек', 'xai-tek', '2024-04-20 03:36:13', '2024-04-20 03:36:13'),
(16, 'Японский', 'iaponskii', '2024-04-20 03:36:36', '2024-04-20 03:36:36');

-- --------------------------------------------------------

--
-- Структура таблицы `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_reset_tokens_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2024_04_01_043013_create_categories_table', 1),
(6, '2024_04_01_043601_create_articles_table', 1),
(7, '2024_04_01_080107_add_slug_to_articles_table', 2),
(8, '2024_04_03_140715_add_is_admin_to_users_table', 3),
(9, '2024_04_05_051328_create_books_table', 4),
(10, '2024_04_05_052623_create_genres_table', 5),
(11, '2024_04_05_052712_create_authors_table', 5),
(12, '2024_04_05_053752_create_book_genre_table', 5),
(13, '2024_04_05_053848_create_author_book_table', 5),
(15, '2024_04_05_155758_create_permission_tables', 6),
(16, '2024_04_07_120708_add_price_to_books_table', 6),
(19, '2024_04_15_092338_add_is_ban_to_users_table', 7),
(20, '2024_04_19_102501_create_sliders_table', 8);

-- --------------------------------------------------------

--
-- Структура таблицы `model_has_permissions`
--

CREATE TABLE `model_has_permissions` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `model_type` varchar(255) NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `model_has_permissions`
--

INSERT INTO `model_has_permissions` (`permission_id`, `model_type`, `model_id`) VALUES
(1, 'App\\Models\\User', 2),
(1, 'App\\Models\\User', 3),
(1, 'App\\Models\\User', 4),
(2, 'App\\Models\\User', 2),
(2, 'App\\Models\\User', 3),
(3, 'App\\Models\\User', 2),
(3, 'App\\Models\\User', 3),
(4, 'App\\Models\\User', 3),
(5, 'App\\Models\\User', 2),
(5, 'App\\Models\\User', 3),
(6, 'App\\Models\\User', 3),
(7, 'App\\Models\\User', 3),
(8, 'App\\Models\\User', 2),
(8, 'App\\Models\\User', 3);

-- --------------------------------------------------------

--
-- Структура таблицы `model_has_roles`
--

CREATE TABLE `model_has_roles` (
  `role_id` bigint(20) UNSIGNED NOT NULL,
  `model_type` varchar(255) NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `model_has_roles`
--

INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES
(1, 'App\\Models\\User', 2),
(2, 'App\\Models\\User', 1),
(2, 'App\\Models\\User', 4),
(3, 'App\\Models\\User', 3);

-- --------------------------------------------------------

--
-- Структура таблицы `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `permissions`
--

CREATE TABLE `permissions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `guard_name` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `permissions`
--

INSERT INTO `permissions` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
(1, 'books-show', 'web', '2024-04-07 08:03:52', '2024-04-07 08:03:52'),
(2, 'books-delete', 'web', '2024-04-07 08:04:19', '2024-04-07 08:04:19'),
(3, 'books-create', 'web', '2024-04-07 08:04:33', '2024-04-07 08:04:33'),
(4, 'books-edit', 'web', '2024-04-07 08:04:44', '2024-04-07 08:04:44'),
(5, 'users-create', 'web', '2024-04-07 08:04:58', '2024-04-07 08:04:58'),
(6, 'users-delete', 'web', '2024-04-07 08:05:05', '2024-04-07 08:05:05'),
(7, 'users-edit', 'web', '2024-04-07 08:05:13', '2024-04-07 08:05:13'),
(8, 'users-show', 'web', '2024-04-07 08:05:20', '2024-04-07 08:05:20');

-- --------------------------------------------------------

--
-- Структура таблицы `personal_access_tokens`
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
-- Структура таблицы `roles`
--

CREATE TABLE `roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `guard_name` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `roles`
--

INSERT INTO `roles` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'web', '2024-04-07 08:02:18', '2024-04-07 08:02:18'),
(2, 'user', 'web', '2024-04-07 08:02:34', '2024-04-07 08:02:34'),
(3, 'super-admin', 'web', '2024-04-07 08:03:20', '2024-04-07 08:03:20');

-- --------------------------------------------------------

--
-- Структура таблицы `role_has_permissions`
--

CREATE TABLE `role_has_permissions` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `role_has_permissions`
--

INSERT INTO `role_has_permissions` (`permission_id`, `role_id`) VALUES
(1, 1),
(1, 3),
(2, 3),
(3, 1),
(3, 3),
(4, 1),
(4, 3),
(5, 1),
(5, 3),
(6, 3),
(7, 3),
(8, 1),
(8, 3);

-- --------------------------------------------------------

--
-- Структура таблицы `sliders`
--

CREATE TABLE `sliders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `url` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `sliders`
--

INSERT INTO `sliders` (`id`, `title`, `url`, `created_at`, `updated_at`) VALUES
(1, 'Image 1', 'https://picsum.photos/seed/picsum/700/400', '2024-04-19 05:46:03', '2024-04-19 05:46:03'),
(2, 'Image 2', 'https://picsum.photos/id/237/700/400', '2024-04-19 05:46:03', '2024-04-19 05:46:03'),
(3, 'Image 3', 'https://picsum.photos/id/200/700/400', '2024-04-19 05:46:03', '2024-04-19 05:46:03');

-- --------------------------------------------------------

--
-- Структура таблицы `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `is_admin` tinyint(1) NOT NULL DEFAULT 0,
  `is_ban` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `is_admin`, `is_ban`, `created_at`, `updated_at`) VALUES
(1, 'Serg', 'ss@mail.ru', NULL, '$2y$10$Nr5uO1S4syUSZQ1HmKLnNeSaptL8bGCLKBsdJ/j324O4wwWlcqGki', NULL, 0, 0, '2024-04-03 05:59:13', '2024-04-17 07:42:14'),
(2, 'Nika', 'nika@mail.ru', NULL, '$2y$10$SI8hCFozaC3c3uGSMEq31OTtCB/KI.5w3GoJ1OjN5.OpBVzQInlO6', NULL, 0, 0, '2024-04-03 06:08:24', '2024-04-15 06:55:16'),
(3, 'Sergi', 'sserg@mail.ru', NULL, '$2y$10$W6k4xG3Ni2yr8nsG3ezMCu9yRNWx9g4hwO1wS40OeMjOWyedsK4om', NULL, 1, 0, '2024-04-03 08:24:44', '2024-04-15 05:45:55'),
(4, 'Fedor', 'Fedor@Fedor.ru', NULL, '$2y$10$InyxP0cKKaw1H0H1vkgeAer9ariOJft.1BhCDQV2oB4g99bsfQQfO', NULL, 0, 0, '2024-04-06 15:16:05', '2024-04-15 06:54:50'),
(5, 'Sergia', 'sergia@mail.ru', NULL, '$2y$10$YuPe2rHfpkvStruia2zvpO0tZnkBvrXJqIEhStWxHBiY7L6383zr2', NULL, 0, 0, '2024-04-17 07:30:33', '2024-04-17 07:42:13');

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `articles`
--
ALTER TABLE `articles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `articles_slug_unique` (`slug`),
  ADD KEY `articles_category_id_foreign` (`category_id`);

--
-- Индексы таблицы `authors`
--
ALTER TABLE `authors`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `author_book`
--
ALTER TABLE `author_book`
  ADD KEY `author_book_author_id_foreign` (`author_id`),
  ADD KEY `author_book_book_id_foreign` (`book_id`);

--
-- Индексы таблицы `books`
--
ALTER TABLE `books`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `books_slug_unique` (`slug`);

--
-- Индексы таблицы `book_genre`
--
ALTER TABLE `book_genre`
  ADD KEY `book_genre_book_id_foreign` (`book_id`),
  ADD KEY `book_genre_genre_id_foreign` (`genre_id`);

--
-- Индексы таблицы `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Индексы таблицы `genres`
--
ALTER TABLE `genres`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `genres_slug_unique` (`slug`);

--
-- Индексы таблицы `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `model_has_permissions`
--
ALTER TABLE `model_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`model_id`,`model_type`),
  ADD KEY `model_has_permissions_model_id_model_type_index` (`model_id`,`model_type`);

--
-- Индексы таблицы `model_has_roles`
--
ALTER TABLE `model_has_roles`
  ADD PRIMARY KEY (`role_id`,`model_id`,`model_type`),
  ADD KEY `model_has_roles_model_id_model_type_index` (`model_id`,`model_type`);

--
-- Индексы таблицы `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Индексы таблицы `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `permissions_name_guard_name_unique` (`name`,`guard_name`);

--
-- Индексы таблицы `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Индексы таблицы `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `roles_name_guard_name_unique` (`name`,`guard_name`);

--
-- Индексы таблицы `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`role_id`),
  ADD KEY `role_has_permissions_role_id_foreign` (`role_id`);

--
-- Индексы таблицы `sliders`
--
ALTER TABLE `sliders`
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
-- AUTO_INCREMENT для таблицы `articles`
--
ALTER TABLE `articles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT для таблицы `authors`
--
ALTER TABLE `authors`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `books`
--
ALTER TABLE `books`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT для таблицы `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT для таблицы `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `genres`
--
ALTER TABLE `genres`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT для таблицы `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT для таблицы `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT для таблицы `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT для таблицы `sliders`
--
ALTER TABLE `sliders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT для таблицы `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- Ограничения внешнего ключа сохраненных таблиц
--

--
-- Ограничения внешнего ключа таблицы `articles`
--
ALTER TABLE `articles`
  ADD CONSTRAINT `articles_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE;

--
-- Ограничения внешнего ключа таблицы `author_book`
--
ALTER TABLE `author_book`
  ADD CONSTRAINT `author_book_author_id_foreign` FOREIGN KEY (`author_id`) REFERENCES `authors` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `author_book_book_id_foreign` FOREIGN KEY (`book_id`) REFERENCES `books` (`id`) ON DELETE CASCADE;

--
-- Ограничения внешнего ключа таблицы `book_genre`
--
ALTER TABLE `book_genre`
  ADD CONSTRAINT `book_genre_book_id_foreign` FOREIGN KEY (`book_id`) REFERENCES `books` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `book_genre_genre_id_foreign` FOREIGN KEY (`genre_id`) REFERENCES `genres` (`id`) ON DELETE CASCADE;

--
-- Ограничения внешнего ключа таблицы `model_has_permissions`
--
ALTER TABLE `model_has_permissions`
  ADD CONSTRAINT `model_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE;

--
-- Ограничения внешнего ключа таблицы `model_has_roles`
--
ALTER TABLE `model_has_roles`
  ADD CONSTRAINT `model_has_roles_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Ограничения внешнего ключа таблицы `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD CONSTRAINT `role_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `role_has_permissions_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
