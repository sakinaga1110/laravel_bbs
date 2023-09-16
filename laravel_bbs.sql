-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- ホスト: localhost:8889
-- 生成日時: 2023 年 9 月 16 日 01:23
-- サーバのバージョン： 5.7.39
-- PHP のバージョン: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- データベース: `laravel_bbs`
--

-- --------------------------------------------------------

--
-- テーブルの構造 `comments`
--

CREATE TABLE `comments` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `post_id` int(10) UNSIGNED NOT NULL,
  `comment` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- テーブルのデータのダンプ `comments`
--

INSERT INTO `comments` (`id`, `user_id`, `post_id`, `comment`, `created_at`, `updated_at`) VALUES
(1, 27, 2, 'Magnam corporis et exercitationem numquam rem. Assumenda iure non suscipit voluptas vero. Consequuntur tenetur ut tempore officia laboriosam fugiat.', '2023-09-13 01:56:43', '2023-09-13 01:56:43'),
(2, 33, 5, 'Aut minima rerum alias ea non. Voluptatum pariatur ex saepe mollitia magnam ex. Et maxime numquam vel velit expedita incidunt.', '2023-09-13 01:56:43', '2023-09-13 01:56:43'),
(3, 33, 11, 'Aut sequi ab ipsum ratione quis enim ab. Nesciunt qui quisquam eligendi voluptas tempore. Vel qui soluta laboriosam vero voluptates cumque.', '2023-09-13 01:56:43', '2023-09-13 01:56:43'),
(4, 36, 16, 'Facilis in recusandae veritatis ipsa accusantium in quasi molestiae. At dolorum ea porro ex quo corrupti voluptatum. Nisi voluptatibus sit doloremque vel voluptas porro ut. Culpa natus suscipit veritatis repudiandae sit.', '2023-09-13 01:56:43', '2023-09-13 01:56:43'),
(5, 31, 15, 'Temporibus expedita placeat asperiores omnis at nihil. Ea molestiae fuga tenetur molestiae error consequatur qui. Est aut porro deleniti. Provident iure optio ducimus voluptatibus et magnam quasi.', '2023-09-13 01:56:43', '2023-09-13 01:56:43'),
(6, 25, 19, 'Earum optio ea cumque. Qui fuga hic pariatur ipsa consectetur. Architecto doloribus in voluptate. Laborum consequuntur et recusandae aut.', '2023-09-13 01:56:43', '2023-09-13 01:56:43'),
(7, 45, 2, 'Voluptas veritatis molestiae a aut quo voluptate assumenda. Accusantium itaque omnis rem illum nam. Quaerat velit laudantium dolores excepturi et expedita.', '2023-09-13 01:56:43', '2023-09-13 01:56:43'),
(8, 45, 9, 'Doloribus voluptatem modi autem tenetur voluptatem impedit amet voluptatibus. Voluptates quo reiciendis est quisquam qui nobis iste maxime. Dolore rerum quas vero id.', '2023-09-13 01:56:43', '2023-09-13 01:56:43'),
(9, 16, 4, 'Ullam delectus et est aut doloremque. Vitae est iste sunt voluptas ullam. Porro autem voluptates quia. Quod ab quia voluptatem libero libero.', '2023-09-13 01:56:43', '2023-09-13 01:56:43'),
(10, 13, 10, 'Eos et non aut rem aliquid vel. Quibusdam alias aliquid a. In voluptas soluta eos ad. Ea facere odio cumque omnis repudiandae dolore.', '2023-09-13 01:56:43', '2023-09-13 01:56:43'),
(11, 42, 25, 'Voluptatem voluptas deserunt blanditiis voluptate voluptas suscipit. Quidem magni itaque voluptatum doloremque necessitatibus fugit voluptates non. Quis perferendis sunt quisquam in rerum.', '2023-09-13 01:56:49', '2023-09-13 01:56:49'),
(12, 47, 22, 'Sunt similique ad ullam quibusdam. Ut doloribus voluptas nesciunt sapiente sit iste ut qui. Facere magnam placeat ut velit minima consequatur amet.', '2023-09-13 01:56:49', '2023-09-13 01:56:49'),
(13, 16, 10, 'Ut facilis id et numquam. Ipsum deleniti ipsum voluptatem possimus expedita dolorum mollitia. Eaque omnis hic et temporibus.', '2023-09-13 01:56:49', '2023-09-13 01:56:49'),
(14, 32, 26, 'Perferendis voluptatem deserunt iure. Quia voluptates non alias iure et voluptatum et. Illo aliquam quaerat earum dolores accusamus. Quo numquam voluptatum veritatis ducimus quidem deleniti inventore.', '2023-09-13 01:56:49', '2023-09-13 01:56:49'),
(15, 18, 27, 'Et libero eius autem sit. Dolor quam cum nesciunt impedit ex aut qui.', '2023-09-13 01:56:49', '2023-09-13 01:56:49'),
(16, 11, 12, 'Accusamus qui quos fugiat omnis. Architecto vitae dicta magnam debitis. Aspernatur consequatur odit aut. Veniam optio architecto aliquam officiis tenetur repudiandae et ad.', '2023-09-13 01:56:49', '2023-09-13 01:56:49'),
(17, 40, 10, 'Dolorem facilis id error aspernatur quis assumenda beatae. Exercitationem quia ex voluptatem ad labore. Perferendis eaque nostrum voluptas aperiam.', '2023-09-13 01:56:49', '2023-09-13 01:56:49'),
(18, 20, 10, 'Velit in quia et voluptatem dolor. Architecto aut maxime ut rerum doloribus qui. Aut aperiam placeat nisi possimus totam.', '2023-09-13 01:56:49', '2023-09-13 01:56:49'),
(19, 57, 12, 'Quaerat magni eum ex quae ea. Nulla iste omnis aliquam praesentium sint et. Nisi minus fugiat nihil aliquid cumque explicabo.', '2023-09-13 01:56:49', '2023-09-13 01:56:49'),
(20, 59, 6, 'Voluptate possimus eos unde. Sunt consequuntur aut quis ex. Repudiandae nobis commodi sed unde enim nihil. Est rerum eum omnis est. Et magni eum et totam voluptate suscipit.', '2023-09-13 01:56:49', '2023-09-13 01:56:49'),
(21, 59, 19, 'Dolore accusantium repudiandae recusandae magnam culpa consequatur. Voluptatum ea ut et possimus et placeat ut. Minima nulla amet exercitationem.', '2023-09-13 01:56:50', '2023-09-13 01:56:50'),
(22, 26, 20, 'Ea eos corporis qui et consequatur possimus. Ut sed tempora deleniti voluptas tempore et velit. Assumenda sapiente harum et aut repudiandae reprehenderit distinctio.', '2023-09-13 01:56:50', '2023-09-13 01:56:50'),
(23, 17, 16, 'Ipsam dolores velit molestias et in. Voluptatum ipsum laudantium dolor quaerat amet reprehenderit. Alias perferendis esse voluptatem beatae qui vel voluptas. Autem blanditiis quo aut ut.', '2023-09-13 01:56:50', '2023-09-13 01:56:50'),
(24, 50, 27, 'Doloribus labore aperiam quod aspernatur eum reiciendis ipsum. Voluptatem possimus rem incidunt iusto. Et laboriosam odio ut sit quaerat ex odio.', '2023-09-13 01:56:50', '2023-09-13 01:56:50'),
(25, 48, 6, 'Ea facilis quo sequi et consectetur suscipit ipsam. Architecto quos quibusdam cupiditate et voluptatibus consequatur ullam. Laboriosam dignissimos non sint ea neque quisquam similique. Necessitatibus dolores eum quis nobis delectus voluptatum.', '2023-09-13 01:56:50', '2023-09-13 01:56:50'),
(26, 41, 16, 'Corrupti itaque voluptas natus corrupti. Suscipit corrupti minima sed corrupti. Laudantium voluptatem in incidunt totam adipisci quibusdam voluptatem quis. Dolores velit aliquid voluptatem et eum.', '2023-09-13 01:56:50', '2023-09-13 01:56:50'),
(27, 56, 14, 'Eveniet vitae ipsam modi libero labore rerum cumque. Aut tenetur soluta minus ut et natus magni. Est aut deleniti officia quo placeat.', '2023-09-13 01:56:50', '2023-09-13 01:56:50'),
(28, 2, 28, 'Dolor ullam a omnis reiciendis. Aperiam ea quia velit facilis sunt. Debitis adipisci nobis fugiat quia vel qui veniam libero.', '2023-09-13 01:56:50', '2023-09-13 01:56:50'),
(29, 2, 11, 'Earum non incidunt quis aliquam. Vitae et autem reiciendis quia tempore non ea. Et laboriosam assumenda eos blanditiis labore dolor. Necessitatibus eligendi deleniti delectus voluptatum sed nesciunt totam.', '2023-09-13 01:56:50', '2023-09-13 01:56:50'),
(30, 33, 20, 'Ipsam amet voluptas fugiat quis. Cum nobis consequatur et qui nemo ea nihil voluptatibus. Molestiae consectetur aperiam omnis fugiat et nihil ea. Est est voluptas dolorum voluptatem accusantium molestias.', '2023-09-13 01:56:50', '2023-09-13 01:56:50'),
(32, 64, 32, '米米米yayaya米米米yayaya米米米yayaya米米米yayaya米米米yayaya米米米yayaya', '2023-09-13 10:56:21', '2023-09-13 10:56:21'),
(33, 64, 32, 'コメントを更新する', '2023-09-13 11:03:41', '2023-09-13 11:03:41');

-- --------------------------------------------------------

--
-- テーブルの構造 `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- テーブルの構造 `likes`
--

CREATE TABLE `likes` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `post_id` int(10) UNSIGNED NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- テーブルのデータのダンプ `likes`
--

INSERT INTO `likes` (`id`, `user_id`, `post_id`, `status`, `created_at`, `updated_at`) VALUES
(2, 2, 1, 0, '2023-09-13 01:55:10', '2023-09-13 01:55:10'),
(3, 61, 25, 0, '2023-09-13 01:57:07', '2023-09-13 01:57:07'),
(4, 6, 16, 0, '2023-09-13 01:57:07', '2023-09-13 01:57:07'),
(5, 39, 21, 0, '2023-09-13 01:57:07', '2023-09-13 01:57:07'),
(6, 45, 21, 0, '2023-09-13 01:57:07', '2023-09-13 01:57:07'),
(7, 1, 15, 0, '2023-09-13 01:57:07', '2023-09-13 01:57:07'),
(8, 52, 17, 0, '2023-09-13 01:57:07', '2023-09-13 01:57:07'),
(9, 55, 27, 0, '2023-09-13 01:57:07', '2023-09-13 01:57:07'),
(10, 61, 14, 0, '2023-09-13 01:57:07', '2023-09-13 01:57:07'),
(11, 40, 22, 0, '2023-09-13 01:57:07', '2023-09-13 01:57:07'),
(12, 16, 5, 0, '2023-09-13 01:57:07', '2023-09-13 01:57:07'),
(13, 40, 15, 0, '2023-09-13 01:57:13', '2023-09-13 01:57:13'),
(14, 14, 7, 0, '2023-09-13 01:57:13', '2023-09-13 01:57:13'),
(15, 29, 28, 0, '2023-09-13 01:57:13', '2023-09-13 01:57:13'),
(16, 28, 13, 0, '2023-09-13 01:57:13', '2023-09-13 01:57:13'),
(17, 4, 21, 0, '2023-09-13 01:57:13', '2023-09-13 01:57:13'),
(18, 10, 12, 0, '2023-09-13 01:57:13', '2023-09-13 01:57:13'),
(19, 30, 29, 0, '2023-09-13 01:57:13', '2023-09-13 01:57:13'),
(20, 50, 27, 0, '2023-09-13 01:57:13', '2023-09-13 01:57:13'),
(21, 45, 22, 0, '2023-09-13 01:57:13', '2023-09-13 01:57:13'),
(22, 12, 30, 0, '2023-09-13 01:57:13', '2023-09-13 01:57:13'),
(23, 54, 16, 0, '2023-09-13 01:57:14', '2023-09-13 01:57:14'),
(24, 38, 7, 0, '2023-09-13 01:57:14', '2023-09-13 01:57:14'),
(25, 43, 27, 0, '2023-09-13 01:57:14', '2023-09-13 01:57:14'),
(26, 1, 30, 0, '2023-09-13 01:57:14', '2023-09-13 01:57:14'),
(27, 34, 13, 0, '2023-09-13 01:57:14', '2023-09-13 01:57:14'),
(28, 1, 30, 0, '2023-09-13 01:57:14', '2023-09-13 01:57:14'),
(29, 13, 22, 0, '2023-09-13 01:57:14', '2023-09-13 01:57:14'),
(30, 43, 20, 0, '2023-09-13 01:57:14', '2023-09-13 01:57:14'),
(31, 38, 11, 0, '2023-09-13 01:57:14', '2023-09-13 01:57:14'),
(32, 31, 13, 0, '2023-09-13 01:57:14', '2023-09-13 01:57:14'),
(33, 29, 19, 0, '2023-09-13 01:57:15', '2023-09-13 01:57:15'),
(34, 46, 21, 0, '2023-09-13 01:57:15', '2023-09-13 01:57:15'),
(35, 47, 17, 0, '2023-09-13 01:57:15', '2023-09-13 01:57:15'),
(36, 6, 9, 0, '2023-09-13 01:57:15', '2023-09-13 01:57:15'),
(37, 29, 8, 0, '2023-09-13 01:57:15', '2023-09-13 01:57:15'),
(38, 4, 20, 0, '2023-09-13 01:57:15', '2023-09-13 01:57:15'),
(39, 61, 2, 0, '2023-09-13 01:57:15', '2023-09-13 01:57:15'),
(40, 41, 6, 0, '2023-09-13 01:57:15', '2023-09-13 01:57:15'),
(41, 5, 16, 0, '2023-09-13 01:57:15', '2023-09-13 01:57:15'),
(42, 5, 2, 0, '2023-09-13 01:57:15', '2023-09-13 01:57:15'),
(43, 2, 22, 0, '2023-09-13 01:57:25', '2023-09-13 01:57:25'),
(47, 2, 23, 0, '2023-09-13 09:08:22', '2023-09-13 09:08:22'),
(48, 64, 32, 0, '2023-09-13 10:42:55', '2023-09-13 10:42:55'),
(58, 2, 32, 0, '2023-09-14 01:56:42', '2023-09-14 01:56:42'),
(59, 2, 33, 0, '2023-09-14 01:56:55', '2023-09-14 01:56:55');

-- --------------------------------------------------------

--
-- テーブルの構造 `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- テーブルのデータのダンプ `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_100000_create_password_reset_tokens_table', 1),
(2, '2019_08_19_000000_create_failed_jobs_table', 1),
(3, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(4, '2023_09_09_131139_create_posts_table', 1),
(5, '2023_09_09_131230_create_comments_table', 1),
(6, '2023_09_09_131258_create_likes_table', 1),
(7, '2023_09_13_104642_create_users_table', 1);

-- --------------------------------------------------------

--
-- テーブルの構造 `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- テーブルの構造 `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- テーブルの構造 `posts`
--

CREATE TABLE `posts` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `title` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `main_text` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `tag` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- テーブルのデータのダンプ `posts`
--

INSERT INTO `posts` (`id`, `user_id`, `title`, `main_text`, `tag`, `created_at`, `updated_at`) VALUES
(2, 33, 'Nam quidem suscipit delectus eos aut voluptates tenetur.', 'Nihil similique quaerat aut consequatur enim qui. Nostrum repellat nihil iste in. Cumque ea et qui pariatur. Ut cum et error voluptates quia.', 'aut', '2023-09-13 01:56:24', '2023-09-13 01:56:24'),
(3, 34, 'Minus amet deserunt ipsam repudiandae.', 'Architecto dolores occaecati illo ea nostrum sit. Ut voluptatem sed architecto nihil consequatur aut vel. Omnis est laboriosam dolorem pariatur et.', 'voluptatem', '2023-09-13 01:56:24', '2023-09-13 01:56:24'),
(4, 35, 'Consectetur aliquid tempora eum maiores facilis voluptas.', 'Eos quo aliquam aut sit quo. Alias nam rem ut soluta explicabo consequuntur. Laboriosam aspernatur aliquam nihil voluptas voluptas.', 'voluptates', '2023-09-13 01:56:24', '2023-09-13 01:56:24'),
(5, 36, 'Magnam voluptatem suscipit ullam odit minima ea voluptate nihil.', 'Et exercitationem aperiam distinctio et rem id. Voluptatibus tempore in deserunt accusamus exercitationem. Est et dolor voluptates sit architecto unde libero. Debitis quia consequatur molestiae architecto.', 'delectus', '2023-09-13 01:56:24', '2023-09-13 01:56:24'),
(6, 37, 'Quibusdam sint dolore quam dolor voluptatem pariatur.', 'Nemo impedit rem et et omnis sit et. Ut odio perspiciatis fuga odit et minima. Veritatis veritatis at vel qui consequuntur suscipit sunt.', 'ducimus', '2023-09-13 01:56:24', '2023-09-13 01:56:24'),
(7, 38, 'Quo illo tempora suscipit totam et.', 'Non quo autem est sint rerum. Et cum natus delectus amet. Inventore quidem quam eius esse aut. Amet reiciendis quidem minima voluptatem optio ut. Distinctio et est eaque veritatis aut.', 'voluptas', '2023-09-13 01:56:24', '2023-09-13 01:56:24'),
(8, 39, 'Voluptates perferendis molestiae earum at sit.', 'Similique expedita a alias molestiae culpa incidunt. Repellendus laborum ea velit. Et ut voluptatibus dolore labore quia voluptatum et ut.', 'nihil', '2023-09-13 01:56:24', '2023-09-13 01:56:24'),
(9, 40, 'Similique ut nostrum quis nemo.', 'Accusantium neque voluptatem cum eligendi sapiente. Sint nisi et voluptates alias doloremque inventore. Dolorem iure dolorem labore explicabo nemo. Aliquid nihil assumenda commodi et voluptatum. In illum ea impedit autem voluptas quas.', 'et', '2023-09-13 01:56:24', '2023-09-13 01:56:24'),
(10, 41, 'Ipsam est dicta voluptatum fugit maxime repellat placeat.', 'Quidem illo qui quisquam facilis. Vel exercitationem amet at fuga mollitia vel. Recusandae in blanditiis dolorem voluptate sed.', 'voluptas', '2023-09-13 01:56:24', '2023-09-13 01:56:24'),
(11, 42, 'Mollitia ut et eum molestiae odio.', 'Eum accusamus eligendi quia ratione perferendis. In vel deserunt repellendus eaque nisi cupiditate et. Autem sequi quis autem labore vel est. Et et recusandae harum inventore sed.', 'repellat', '2023-09-13 01:56:24', '2023-09-13 01:56:24'),
(12, 43, 'Non labore debitis dignissimos id dolorem omnis consequatur.', 'Omnis officiis sint aut. Sit distinctio dolorum veniam et aut. Sit ratione ut et fuga ullam dolorem. Repudiandae cumque et atque repellendus rerum illo enim.', 'illo', '2023-09-13 01:56:32', '2023-09-13 01:56:32'),
(13, 44, 'Hic quia odio aut exercitationem sint pariatur.', 'Ut omnis similique at eius ut dolorem. Explicabo eligendi necessitatibus sunt eaque tempora non nihil. Et consequatur dolor voluptas ad. Porro voluptatem quia illum et blanditiis nulla ut.', 'autem', '2023-09-13 01:56:32', '2023-09-13 01:56:32'),
(14, 45, 'Fugit sunt est beatae ratione dolor.', 'Deleniti inventore officia adipisci laboriosam enim dolore et. Asperiores magnam adipisci tenetur quo consequuntur voluptatem. Est qui ut enim aut. Reiciendis voluptas magni et dolorem eius est officiis voluptatum.', 'tempora', '2023-09-13 01:56:32', '2023-09-13 01:56:32'),
(15, 46, 'Perferendis quasi minus voluptas quae enim.', 'Nihil iure est aut mollitia qui. Sit ratione accusamus enim nemo. Est accusantium libero eos ea nemo. Velit vel vel delectus sunt aspernatur labore.', 'perferendis', '2023-09-13 01:56:32', '2023-09-13 01:56:32'),
(16, 47, 'Nostrum corporis est nihil tempore totam quis.', 'Doloribus voluptas eligendi in autem ut pariatur aut. Ut molestiae dolor cum aut.', 'distinctio', '2023-09-13 01:56:32', '2023-09-13 01:56:32'),
(17, 48, 'Sint quisquam provident rerum occaecati laboriosam qui.', 'Qui fuga sed debitis mollitia voluptate sunt et. Voluptatem quia iure corporis porro quia. Assumenda eaque beatae consequatur porro est accusantium sunt.', 'qui', '2023-09-13 01:56:32', '2023-09-13 01:56:32'),
(18, 49, 'Ipsa sequi voluptatem dicta qui qui occaecati quod.', 'Molestiae ex corporis sit id. Sed quas voluptas quo qui consequatur maxime pariatur. Eos ipsa eligendi deleniti non.', 'sit', '2023-09-13 01:56:32', '2023-09-13 01:56:32'),
(19, 50, 'Sed reprehenderit nobis laborum fuga vel dolor dolor.', 'Qui totam asperiores quidem similique excepturi adipisci quos. Suscipit ipsa at quidem illo qui sunt perferendis et. Deserunt quia praesentium omnis vel voluptatem odio eligendi.', 'autem', '2023-09-13 01:56:32', '2023-09-13 01:56:32'),
(20, 51, 'Alias est quia neque.', 'Nostrum illum qui quisquam consequatur consectetur quae dolores rerum. Laborum eligendi fuga officia. Eaque sit harum voluptatum et. Totam est aut earum ab quia.', 'animi', '2023-09-13 01:56:32', '2023-09-13 01:56:32'),
(21, 52, 'Ea laborum est sequi atque beatae.', 'Natus repellendus est minus sunt culpa perferendis iusto. Veniam beatae aut pariatur a laborum hic. Dolores voluptatum consequatur odit sunt.', 'molestiae', '2023-09-13 01:56:32', '2023-09-13 01:56:32'),
(22, 53, 'Iusto autem exercitationem magnam vel quo provident et.', 'Consequatur eveniet error excepturi ea. Ad et maxime qui molestias nemo est unde. Veritatis facilis porro unde officiis.', 'eum', '2023-09-13 01:56:33', '2023-09-13 01:56:33'),
(23, 54, 'Dignissimos aspernatur deserunt dignissimos nihil culpa voluptatibus libero.', 'Ipsum et sequi consequatur dolores quaerat alias doloribus rerum. Voluptates ducimus quo sunt doloribus. Velit laborum quidem quia fuga iste aut molestias. Deleniti quia reiciendis architecto et. A molestiae quo temporibus consequatur ut repellendus enim.', 'rerum', '2023-09-13 01:56:33', '2023-09-13 01:56:33'),
(24, 55, 'Et magnam placeat enim praesentium dolores quas rerum.', 'Rerum illum dolorum cumque architecto incidunt. Voluptate fuga omnis et a. Molestiae alias asperiores ut sit voluptas. Harum quaerat excepturi temporibus quaerat esse voluptatibus.', 'quasi', '2023-09-13 01:56:33', '2023-09-13 01:56:33'),
(25, 56, 'Ex neque enim id facere mollitia.', 'Natus iste voluptatem blanditiis voluptas officiis qui quasi. Et consectetur doloribus placeat corrupti possimus. Et aut molestiae numquam dolores sint quibusdam.', 'atque', '2023-09-13 01:56:33', '2023-09-13 01:56:33'),
(26, 57, 'Consectetur eum placeat eos cumque sapiente amet.', 'Et voluptatem ut dolor ratione et ab delectus. Temporibus sed ut distinctio ex. Rerum modi odio quidem sed.', 'consequatur', '2023-09-13 01:56:33', '2023-09-13 01:56:33'),
(27, 58, 'Fugit quia eos dolor vero non nam.', 'Illo esse assumenda aut repellendus aut et. Explicabo in aperiam cum quae omnis blanditiis. Distinctio incidunt qui vitae distinctio. Corrupti ut facilis aut sapiente voluptas assumenda dolorum.', 'dolor', '2023-09-13 01:56:33', '2023-09-13 01:56:33'),
(28, 59, 'Quia omnis earum fuga natus assumenda.', 'Mollitia maiores beatae enim sed iusto. Aperiam qui dolores qui. Quia accusantium libero et rerum error voluptas. Vel voluptatum suscipit quidem eum et ab natus.', 'dolor', '2023-09-13 01:56:33', '2023-09-13 01:56:33'),
(29, 60, 'Non commodi voluptatibus possimus deserunt atque quia eos quia.', 'Reiciendis sunt qui eum. Ad commodi cupiditate ut aut vel earum. Exercitationem qui facilis et esse quis illum harum vitae. Consequatur eos cupiditate odio ut non. Autem nobis assumenda quia aut aut.', 'ut', '2023-09-13 01:56:33', '2023-09-13 01:56:33'),
(30, 61, 'Dolores et nam et consequuntur unde facilis laboriosam.', 'Ut autem expedita veritatis totam esse eos. Nostrum totam officiis pariatur qui. Et officiis explicabo harum. In aspernatur omnis voluptatem voluptas sapiente et saepe.', 'atque', '2023-09-13 01:56:33', '2023-09-13 01:56:33'),
(31, 62, 'Et magnam error et saepe.', 'Sit aliquam ducimus eligendi ea. Repellat et tempora perferendis dolores cumque unde dolorem. Libero facilis magni et error. Autem non ut eius.', 'reiciendis', '2023-09-13 01:56:33', '2023-09-13 01:56:33'),
(32, 2, 'my song', 'my songmy songmy songmy songmy song\"', '#my song', '2023-09-13 02:13:20', '2023-09-13 22:17:46'),
(33, 2, 'タグが検索に', 'タグ\"', '#tag', '2023-09-13 22:18:26', '2023-09-13 22:31:45');

-- --------------------------------------------------------

--
-- テーブルの構造 `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `icon` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT 'default.jpg',
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- テーブルのデータのダンプ `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `icon`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Guest User', 'guest@example.com', NULL, '$2y$10$jP/vSf/aF6qgQ.f0fvCEoOFL4/LEg1kfA2f4wTD7.WXC0P6EWZW6e', 'default.jpg', NULL, '2023-09-13 01:52:03', '2023-09-13 01:52:03'),
(2, '崎長雅史', 'masashi.pc1110@gmail.com', NULL, '$2y$10$fH9KProbBpFGOaoRDMv2lux6TGNFV.tWAI2zG0eWEfgoSDVpcmkM.', 'bjKo04OrPY00Cfjk3vwv9umBuhU3RemLZZ34irse.jpg', NULL, '2023-09-13 01:53:56', '2023-09-13 09:15:38'),
(3, '吉本 花子', 'sayuri26@example.org', NULL, '$2y$10$8B2DD1inWtgvInT1Wblz4O.YcaS62Npk7ZtW5jpbo/DtwuWnkYcQy', 'default.jpg', NULL, '2023-09-13 01:55:57', '2023-09-13 01:55:57'),
(4, '杉山 知実', 'rei50@example.com', NULL, '$2y$10$v4J1kw38gPQzf9EQshwgRea7Ox0j8tPzbsbWj2tony6/FBI7HdIXu', 'default.jpg', NULL, '2023-09-13 01:55:57', '2023-09-13 01:55:57'),
(5, '山田 里佳', 'kudo.mikako@example.net', NULL, '$2y$10$G8uslLix96bCM1rDeqFg3uqDyeVw.1XHm5JT/JL37w2RbK5qw6/xq', 'default.jpg', NULL, '2023-09-13 01:55:57', '2023-09-13 01:55:57'),
(6, '坂本 七夏', 'myoshimoto@example.com', NULL, '$2y$10$otVHeiq1lU2pMft3ftmJjOLYW45BuVqPu574AIs7OM8sN70oNmsG6', 'default.jpg', NULL, '2023-09-13 01:55:57', '2023-09-13 01:55:57'),
(7, '井高 零', 'xkoizumi@example.org', NULL, '$2y$10$Er3qQfvxnE5I5EhmIg9pO.HItQricHhqp46o0WpGlvzmqJ.w.bqZ2', 'default.jpg', NULL, '2023-09-13 01:55:57', '2023-09-13 01:55:57'),
(8, '渡辺 淳', 'sakamoto.mai@example.net', NULL, '$2y$10$Yg/3UWnp9E1ejhEBb4tGgu/Vdpvns4Nwp3P8Zjjj3Pvh5awgE3ybm', 'default.jpg', NULL, '2023-09-13 01:55:57', '2023-09-13 01:55:57'),
(9, '小林 翔太', 'kumiko92@example.org', NULL, '$2y$10$HxTpGZX2.OFDidysaIwcp.MWbmhoowzvt1zRtjeoIgwq9oOl3It12', 'default.jpg', NULL, '2023-09-13 01:55:57', '2023-09-13 01:55:57'),
(10, '斉藤 直子', 'ohirokawa@example.org', NULL, '$2y$10$Y4bK2J/FFRExBq5An1S0FOTEn3ZVEes.YMH3fbPGf1PFaydxkrB8u', 'default.jpg', NULL, '2023-09-13 01:55:57', '2023-09-13 01:55:57'),
(11, '大垣 あすか', 'saito.nanami@example.net', NULL, '$2y$10$hXjktCmZB2akxKmEaPlqb.2dnuMkKXDS7yXeAwnuQunuhWkwee9py', 'default.jpg', NULL, '2023-09-13 01:55:57', '2023-09-13 01:55:57'),
(12, '藤本 里佳', 'tsubasa42@example.com', NULL, '$2y$10$3abONzeDSKI8HR44BiTIhekAla9NV2THwV38auUXpA5CpVNgDwbx.', 'default.jpg', NULL, '2023-09-13 01:55:57', '2023-09-13 01:55:57'),
(13, '津田 さゆり', 'kato.yoko@example.org', NULL, '$2y$10$w40l3bcurJrVcz3md6vbLOnaZU.oGSA3U3LUySK.fH9zwZLc5uzKu', 'default.jpg', NULL, '2023-09-13 01:56:03', '2023-09-13 01:56:03'),
(14, '山田 英樹', 'yumiko15@example.com', NULL, '$2y$10$c5hGdMi8a1.7SGw.EMHKiuwKgaQx1yOhhttbMHelYACwyF3ZGaDwO', 'default.jpg', NULL, '2023-09-13 01:56:03', '2023-09-13 01:56:03'),
(15, '渡辺 篤司', 'tsuda.sayuri@example.org', NULL, '$2y$10$PFeSikRSILBdRtZDFNtvHu43dpnA3Dypoou3AMxL6lPURZUgrCUES', 'default.jpg', NULL, '2023-09-13 01:56:03', '2023-09-13 01:56:03'),
(16, '小泉 聡太郎', 'kenichi.harada@example.org', NULL, '$2y$10$Y9NxJYccklqb43U8IMm22OOUgsG.uI7kAzahPm2owVGwq5prbXImi', 'default.jpg', NULL, '2023-09-13 01:56:03', '2023-09-13 01:56:03'),
(17, '浜田 さゆり', 'maaya33@example.com', NULL, '$2y$10$V/dOZMd4HAatUXzJfeUYXOeEfCTLMoHEsWfswDcom2PhU0Jn732Ue', 'default.jpg', NULL, '2023-09-13 01:56:03', '2023-09-13 01:56:03'),
(18, '木村 翔太', 'yui71@example.org', NULL, '$2y$10$7Rcl9eoEZwUS/7zuk0gnnuhBnWEOSOdIiAfPFRj9S6I1CaIgwdKcq', 'default.jpg', NULL, '2023-09-13 01:56:03', '2023-09-13 01:56:03'),
(19, '野村 幹', 'yuta73@example.net', NULL, '$2y$10$YDsC3UDGu9X1NX0iDPkrre7DFVkfCpoFdHNdn4csXgzyorJJQHbla', 'default.jpg', NULL, '2023-09-13 01:56:03', '2023-09-13 01:56:03'),
(20, '村山 桃子', 'yasuhiro.yamagishi@example.org', NULL, '$2y$10$gckCAJgMmISCVhNng49ZTeDqv9sHDbeJgmztlQ1dd4oECd6PemDE.', 'default.jpg', NULL, '2023-09-13 01:56:03', '2023-09-13 01:56:03'),
(21, '藤本 康弘', 'nakamura.kenichi@example.net', NULL, '$2y$10$N46mPITcfr9X/4/Mz0hktuqsvh2t9YjAV3YMuSKOF5rnwDV90io/q', 'default.jpg', NULL, '2023-09-13 01:56:03', '2023-09-13 01:56:03'),
(22, '廣川 浩', 'hirokawa.taro@example.com', NULL, '$2y$10$sAq8vM9nP2EaikrCPrMUpuFZxj4HRNpV7/SprTu0BeVHgKzdsa9N2', 'default.jpg', NULL, '2023-09-13 01:56:03', '2023-09-13 01:56:03'),
(23, '村山 学', 'yamagishi.manabu@example.net', NULL, '$2y$10$c.o.svW8MQbjWUevKrverO1vRsfBWj3ArHU0rqrQ8lOv6AEFJhS8O', 'default.jpg', NULL, '2023-09-13 01:56:08', '2023-09-13 01:56:08'),
(24, '近藤 和也', 'mwakamatsu@example.org', NULL, '$2y$10$YJCtk6UpcQq3gNAZhJ2N8eXevtWl2lnwF7VKHhhBDXV4pdxWMtmo.', 'default.jpg', NULL, '2023-09-13 01:56:08', '2023-09-13 01:56:08'),
(25, '中津川 聡太郎', 'ysasaki@example.net', NULL, '$2y$10$lnZVJUR5cVpgaEdYIes4ruSLZOZTxlCUY3Vig06a.NxyjIukd0MiC', 'default.jpg', NULL, '2023-09-13 01:56:08', '2023-09-13 01:56:08'),
(26, '井高 里佳', 'uno.rei@example.com', NULL, '$2y$10$3sCx2vsznHBddQnwVGisBOy.MRsoww709zr.k1yM1EKFhXXFx/3qm', 'default.jpg', NULL, '2023-09-13 01:56:08', '2023-09-13 01:56:08'),
(27, '杉山 晃', 'naoki.nishinosono@example.net', NULL, '$2y$10$CX5iY.O91A76aYBJvfCbUuqgwRfsxLqaXnQHHlu6UaFYFZtQdZmF6', 'default.jpg', NULL, '2023-09-13 01:56:08', '2023-09-13 01:56:08'),
(28, '田辺 健一', 'naoki64@example.net', NULL, '$2y$10$0sSyAjeOi50QLf0N65hGt.nAm8II4Ykc3bNjmW9nggvR8tCONLwxC', 'default.jpg', NULL, '2023-09-13 01:56:08', '2023-09-13 01:56:08'),
(29, '石田 加奈', 'asuka.yoshida@example.com', NULL, '$2y$10$Rwmjj0E9jV17TxUsBIvRl.qgcu3RlkrpQ3fC6xGSs1YyaobP4sqyC', 'default.jpg', NULL, '2023-09-13 01:56:08', '2023-09-13 01:56:08'),
(30, '笹田 結衣', 'fmatsumoto@example.com', NULL, '$2y$10$7VpjEo/Ebpx6JqxpLPB35.sp.7YLXZFsZf15.wi6IFMahYFjoJKiu', 'default.jpg', NULL, '2023-09-13 01:56:08', '2023-09-13 01:56:08'),
(31, '桐山 直子', 'ishida.kyosuke@example.net', NULL, '$2y$10$/ZNF8qukGbHkt2z5V/CEheG.9zC5yux9RMXhCXkmXUIhXorKXC3Yu', 'default.jpg', NULL, '2023-09-13 01:56:08', '2023-09-13 01:56:08'),
(32, '工藤 春香', 'dkiriyama@example.com', NULL, '$2y$10$LZ6utPqs.MIwEw3OZOzyrOETdSGzpDXcYaXEynq.lO0nRGyOg5kea', 'default.jpg', NULL, '2023-09-13 01:56:08', '2023-09-13 01:56:08'),
(33, '中島 健一', 'suzuki.soutaro@example.org', NULL, '$2y$10$HeHnsw14PJBIaR.HqGM3F.q0/g4t570FrrVCM8BvkcbigH1xFTlnG', 'default.jpg', NULL, '2023-09-13 01:56:24', '2023-09-13 01:56:24'),
(34, '佐々木 健一', 'mai.kiriyama@example.org', NULL, '$2y$10$L6eC6JF665dt2nyreJFLWuVhOhbKmE81YDpetUkiMJH7b.LHmUmZK', 'default.jpg', NULL, '2023-09-13 01:56:24', '2023-09-13 01:56:24'),
(35, '田辺 直人', 'takuma23@example.com', NULL, '$2y$10$5n/CoH/pDG.uFblE8a/8B.ov/lKRa2X4AGqvpgod53T4qwRGYNlCe', 'default.jpg', NULL, '2023-09-13 01:56:24', '2023-09-13 01:56:24'),
(36, '坂本 春香', 'satomi.kudo@example.com', NULL, '$2y$10$2iBkoT7wgrhtlkhLASsSGen5MwiOh4w.GpS7sTkwfOzXgJNf.xZ6a', 'default.jpg', NULL, '2023-09-13 01:56:24', '2023-09-13 01:56:24'),
(37, '桐山 花子', 'yuki.nagisa@example.org', NULL, '$2y$10$s6zx9XvgWz5ISvOfyCtgEOBqEH8dnq653Hb2bnp3quLl/1n23d2UK', 'default.jpg', NULL, '2023-09-13 01:56:24', '2023-09-13 01:56:24'),
(38, '渚 直子', 'maaya71@example.net', NULL, '$2y$10$80RI8rUHRwSflNZEuGe94OyyYhz.bgK/QGRkfLkg9h6WLe1N4Xbxi', 'default.jpg', NULL, '2023-09-13 01:56:24', '2023-09-13 01:56:24'),
(39, '杉山 美加子', 'rika90@example.com', NULL, '$2y$10$cQ2AUSDcR/zkg/vSr1iX4OK0TQAjlRIyysuYrS0jaK5OcVkjL6biW', 'default.jpg', NULL, '2023-09-13 01:56:24', '2023-09-13 01:56:24'),
(40, '青山 直子', 'rogaki@example.org', NULL, '$2y$10$EGx7HxEeZhqmZ/joWIMhTetYlWBJB3PzT3Xfr07nti9Lf5DCMJwpG', 'default.jpg', NULL, '2023-09-13 01:56:24', '2023-09-13 01:56:24'),
(41, '石田 裕太', 'uno.maaya@example.org', NULL, '$2y$10$csLX6mhUXF7q05pDzGZRueALg770mOMlS/jgy0a3wkrrg8yX1PqLO', 'default.jpg', NULL, '2023-09-13 01:56:24', '2023-09-13 01:56:24'),
(42, '山田 篤司', 'aota.osamu@example.org', NULL, '$2y$10$ESiV4ClyiZNMxPF7HyzzFOD5iopoYfjbtT9QkH/IGWzAgbRqyFW/W', 'default.jpg', NULL, '2023-09-13 01:56:24', '2023-09-13 01:56:24'),
(43, '田中 治', 'hamada.chiyo@example.com', NULL, '$2y$10$Ihhxe8X6TasrD/kjp1p/CemeM4IcsHN7K2WdGRuv2aKvmdR5n8vrm', 'default.jpg', NULL, '2023-09-13 01:56:31', '2023-09-13 01:56:31'),
(44, '村山 七夏', 'yuki45@example.org', NULL, '$2y$10$09q/1BgDb/Ca2FbySlNrLuuHjmZ0ACBne0G5eF5/Ynt0EIhAx0Uuu', 'default.jpg', NULL, '2023-09-13 01:56:31', '2023-09-13 01:56:31'),
(45, '伊藤 結衣', 'osamu.miyake@example.org', NULL, '$2y$10$5ZjU0A7cUlMZlmPwMlPNZ.ZBMpTM4p1m2iMcoQOFBcglWYEoSLYf.', 'default.jpg', NULL, '2023-09-13 01:56:31', '2023-09-13 01:56:31'),
(46, '三宅 智也', 'taichi91@example.net', NULL, '$2y$10$eU8IBw0eupRP0VSVORT75e5T8ebeTkussTufFkikX.dKqy4VLbU/e', 'default.jpg', NULL, '2023-09-13 01:56:31', '2023-09-13 01:56:31'),
(47, '小泉 結衣', 'naoki.miyake@example.org', NULL, '$2y$10$XTmy1dx7qs3LM0I0oX6EHORsJpDQJnJWRpSFvuFUd.AU7Bqc88dUa', 'default.jpg', NULL, '2023-09-13 01:56:31', '2023-09-13 01:56:31'),
(48, '木村 康弘', 'yuta93@example.com', NULL, '$2y$10$bSIaDSMsqh4STtFkx18N7eLvIl9HXvyqF0UnQ7xuSoT5ZUV2uQHRO', 'default.jpg', NULL, '2023-09-13 01:56:31', '2023-09-13 01:56:31'),
(49, '斉藤 晃', 'kazuya.kijima@example.org', NULL, '$2y$10$xQoR/luXXMuBdVeJgiEA2O715TN0BBncjSGleF83DX1hLT2CiNat.', 'default.jpg', NULL, '2023-09-13 01:56:31', '2023-09-13 01:56:31'),
(50, '大垣 陽子', 'matsumoto.mai@example.com', NULL, '$2y$10$YXyG0O9reU.GGUrHEFmFL.oeyCwBKWWjyF3DQ7x5ZElW.mvFVSfAi', 'default.jpg', NULL, '2023-09-13 01:56:31', '2023-09-13 01:56:31'),
(51, '加藤 千代', 'akira09@example.net', NULL, '$2y$10$rFD5iczwt7Z7i8YoXzyOve2VgFNlGkufpUJW9Ngi7un826VNmlhGO', 'default.jpg', NULL, '2023-09-13 01:56:31', '2023-09-13 01:56:31'),
(52, '青田 あすか', 'jun99@example.net', NULL, '$2y$10$RySFF6rh3rGGFwZxf/3gA.HLdDOrVEKazQxtMNgg74eY2H8WSNgMi', 'default.jpg', NULL, '2023-09-13 01:56:32', '2023-09-13 01:56:32'),
(53, '高橋 翼', 'kudo.kazuya@example.net', NULL, '$2y$10$ysyXx/Df4Qks9A.gp3ZpVeKWz98BrAzTkyhLS60iSDSpNYldRigoC', 'default.jpg', NULL, '2023-09-13 01:56:33', '2023-09-13 01:56:33'),
(54, '若松 聡太郎', 'yuki.ishida@example.net', NULL, '$2y$10$grHFpZZm/ufNDKOMfKLWx.aUyKkc6QAw9lTM1YkHwZq/Tyy/gr.dq', 'default.jpg', NULL, '2023-09-13 01:56:33', '2023-09-13 01:56:33'),
(55, '杉山 拓真', 'ctakahashi@example.org', NULL, '$2y$10$PA8PVFuJgjpAVC1gbbJ8FeY02jOFOAvMh34C3SzfDDR2hA2l3.Rbm', 'default.jpg', NULL, '2023-09-13 01:56:33', '2023-09-13 01:56:33'),
(56, '宇野 太一', 'fnakatsugawa@example.net', NULL, '$2y$10$kxn9etlylkO14jaILhW34uUWZ1P2t5sDo.UwXL1KTXSc/fkT9xY1S', 'default.jpg', NULL, '2023-09-13 01:56:33', '2023-09-13 01:56:33'),
(57, '廣川 桃子', 'hideki.tanabe@example.com', NULL, '$2y$10$Wy9At.rqQ.FR.koQc3BGMuD/cBQuRQawhtEfo8yyB/S4L5jkfYUQ6', 'default.jpg', NULL, '2023-09-13 01:56:33', '2023-09-13 01:56:33'),
(58, '田中 洋介', 'koizumi.naoto@example.com', NULL, '$2y$10$wdWrIhVNerrc.UHMas7p3.I4LYUyO4FSg0iiESLP.QGQlTaC.IGPy', 'default.jpg', NULL, '2023-09-13 01:56:33', '2023-09-13 01:56:33'),
(59, '山本 香織', 'kenichi78@example.net', NULL, '$2y$10$D.OFkRYOU51TaTOtoXabZeDOFRcHf.E9oyGOAjz34rkqboMWK3QCe', 'default.jpg', NULL, '2023-09-13 01:56:33', '2023-09-13 01:56:33'),
(60, '佐藤 京助', 'akira.koizumi@example.org', NULL, '$2y$10$YRB1mKZTsk35YlCKJL7EBeiAaIRySWML3pJvacHS2miv1uscBj8ai', 'default.jpg', NULL, '2023-09-13 01:56:33', '2023-09-13 01:56:33'),
(61, '中島 さゆり', 'dmiyazawa@example.com', NULL, '$2y$10$HYmuYc4Zwi0xLIzSd.eQ0.0eqZ9SW7hJn5kkAdOTQnB65I6rn2oWe', 'default.jpg', NULL, '2023-09-13 01:56:33', '2023-09-13 01:56:33'),
(62, '青田 香織', 'maaya.sakamoto@example.net', NULL, '$2y$10$yhxU6hpfur7a9wI0lwbqfu7VB.WuHEr2PBUi2cz.iW3hui6NR6f7e', 'default.jpg', NULL, '2023-09-13 01:56:33', '2023-09-13 01:56:33'),
(64, 'tamago', 'tamago@co.jp', NULL, '$2y$10$QSHOFDBlRpzLdOk52KfMIu0.1KfdzmVkmFNM1egcJIHjD3NseTJ7i', 'hFE5FxyoIJWRyOMSXA7uyLsM5QmLOUC27CiSEBnt.jpg', NULL, '2023-09-13 10:37:13', '2023-09-13 10:37:37');

--
-- ダンプしたテーブルのインデックス
--

--
-- テーブルのインデックス `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`);

--
-- テーブルのインデックス `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- テーブルのインデックス `likes`
--
ALTER TABLE `likes`
  ADD PRIMARY KEY (`id`);

--
-- テーブルのインデックス `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- テーブルのインデックス `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- テーブルのインデックス `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- テーブルのインデックス `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`);

--
-- テーブルのインデックス `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- ダンプしたテーブルの AUTO_INCREMENT
--

--
-- テーブルの AUTO_INCREMENT `comments`
--
ALTER TABLE `comments`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- テーブルの AUTO_INCREMENT `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- テーブルの AUTO_INCREMENT `likes`
--
ALTER TABLE `likes`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=60;

--
-- テーブルの AUTO_INCREMENT `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- テーブルの AUTO_INCREMENT `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- テーブルの AUTO_INCREMENT `posts`
--
ALTER TABLE `posts`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- テーブルの AUTO_INCREMENT `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=65;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
