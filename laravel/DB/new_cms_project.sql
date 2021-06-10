-- phpMyAdmin SQL Dump
-- version 5.0.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 10, 2021 at 08:06 PM
-- Server version: 10.4.14-MariaDB
-- PHP Version: 7.2.34

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `new_cms_project`
--

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
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
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
(10, '2014_10_12_000000_create_users_table', 1),
(11, '2014_10_12_100000_create_password_resets_table', 1),
(12, '2019_08_19_000000_create_failed_jobs_table', 1),
(13, '2021_06_04_170109_create_posts_table', 1),
(14, '2021_06_07_045008_create_permissions_table', 1),
(15, '2021_06_07_045029_create_roles_table', 1),
(16, '2021_06_07_045233_create_users_permissions_table', 1),
(17, '2021_06_07_045255_create_users_roles_table', 1),
(18, '2021_06_07_045403_create_roles_permissions_table', 1);

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
-- Table structure for table `permissions`
--

CREATE TABLE `permissions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `permissions`
--

INSERT INTO `permissions` (`id`, `name`, `slug`, `created_at`, `updated_at`) VALUES
(1, 'View Dashboard', 'view-dashboard', '2021-06-09 12:35:27', '2021-06-09 12:35:27');

-- --------------------------------------------------------

--
-- Table structure for table `permission_role`
--

CREATE TABLE `permission_role` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `permission_user`
--

CREATE TABLE `permission_user` (
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `permission_user`
--

INSERT INTO `permission_user` (`user_id`, `permission_id`, `created_at`, `updated_at`) VALUES
(1, 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `body` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_image` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `user_id`, `title`, `body`, `post_image`, `created_at`, `updated_at`) VALUES
(3, 5, 'Aspernatur consequatur nemo ipsa quisquam at eius.', 'Dicta labore at doloribus aut qui expedita. Laudantium corrupti doloribus facilis est. Rerum eum nemo mollitia doloremque.', 'http://localhost/storage/https://via.placeholder.com/900x300.png/0077bb?text=sint', '2021-06-09 12:11:25', '2021-06-09 12:11:25'),
(4, 6, 'Similique et autem ratione dolor minus recusandae necessitatibus.', 'Occaecati quam voluptas non. Dolorem delectus neque ut labore corporis. Omnis dolores architecto voluptatem enim eveniet. Dolorem dolor ipsum omnis earum ab.', 'http://localhost/storage/https://via.placeholder.com/900x300.png/003344?text=eum', '2021-06-09 12:11:25', '2021-06-09 12:11:25'),
(5, 7, 'Soluta aperiam sit quis quis.', 'Quo quas id voluptatem molestiae necessitatibus dolor. Amet at corrupti quia impedit in. Voluptatem sunt perferendis mollitia ratione amet.', 'http://localhost/storage/https://via.placeholder.com/900x300.png/0099dd?text=enim', '2021-06-09 12:11:25', '2021-06-09 12:11:25'),
(6, 8, 'Voluptas provident consequuntur vel accusantium ut magnam eius.', 'Vitae eum incidunt debitis et sed ut. Aspernatur molestiae consequatur dolor quisquam. Nisi dolorem perferendis illum. Consectetur animi quia aperiam qui mollitia et sint et.', 'http://localhost/storage/https://via.placeholder.com/900x300.png/00bb22?text=eius', '2021-06-09 12:11:25', '2021-06-09 12:11:25'),
(7, 9, 'Porro nihil quos laboriosam fugiat totam omnis.', 'Asperiores exercitationem ab similique consequuntur blanditiis. Quae at qui doloribus quasi veritatis. Id facere unde provident ea similique reprehenderit. Qui soluta libero et est iste alias.', 'http://localhost/storage/https://via.placeholder.com/900x300.png/009966?text=rem', '2021-06-09 12:11:25', '2021-06-09 12:11:25'),
(8, 10, 'Magni reiciendis voluptates nemo et molestiae.', 'Atque nemo ipsam natus inventore. Quae repellat qui voluptas repellat et. Cumque minima omnis rem impedit dolorum sapiente voluptas. Qui sed consequatur ut sed quia et praesentium.', 'http://localhost/storage/https://via.placeholder.com/900x300.png/0099bb?text=explicabo', '2021-06-09 12:11:25', '2021-06-09 12:11:25'),
(9, 11, 'Nam voluptatem ut tenetur ratione perspiciatis quia repudiandae.', 'Est itaque dignissimos consequatur voluptatem quidem qui enim. Repellat sit ea ut ut aut deserunt laboriosam. Numquam est nesciunt ut ipsum totam alias odio. Nihil cum vitae odit.', 'http://localhost/storage/https://via.placeholder.com/900x300.png/00ff88?text=qui', '2021-06-09 12:11:25', '2021-06-09 12:11:25'),
(10, 12, 'Illum libero unde quis est minus.', 'Eveniet at inventore iusto sed optio quis. Veritatis optio quam nulla minima doloremque. Nesciunt ab voluptatem repellat minima temporibus qui.', 'http://localhost/storage/https://via.placeholder.com/900x300.png/00ee66?text=expedita', '2021-06-09 12:11:25', '2021-06-09 12:11:25'),
(11, 13, 'Velit ipsa quo et dolor et aut.', 'Eligendi quis sed laborum porro non fugiat amet. Beatae voluptatem sit a culpa pariatur. Fugiat temporibus eos qui laboriosam velit aspernatur. Quod enim cumque sed labore excepturi repudiandae.', 'http://localhost/storage/https://via.placeholder.com/900x300.png/005599?text=eius', '2021-06-09 12:11:25', '2021-06-09 12:11:25'),
(12, 14, 'Temporibus architecto consequatur et.', 'Illum est corporis eius inventore eius ducimus voluptatem et. Ea vero ad incidunt et ratione quaerat. Labore et esse reiciendis ut unde dolorum animi. Et provident non assumenda dignissimos cumque nemo qui.', 'http://localhost/storage/https://via.placeholder.com/900x300.png/0044dd?text=neque', '2021-06-09 12:11:25', '2021-06-09 12:11:25'),
(13, 15, 'Laboriosam aliquid tempora quae dolorem asperiores maiores quia.', 'Magni eius commodi quidem voluptate qui corrupti libero magnam. Sint ipsam et maxime sed iusto iusto. Saepe ea pariatur laboriosam nemo tenetur nisi quis totam. Alias error voluptatem dignissimos eveniet ipsum quia.', 'http://localhost/storage/https://via.placeholder.com/900x300.png/00cccc?text=nam', '2021-06-09 12:11:25', '2021-06-09 12:11:25'),
(14, 16, 'Dolorum quia cumque qui atque impedit iste non.', 'Facere sed quod asperiores sapiente eius eos. Dolor nemo et aut aut molestias. Consequatur qui maiores omnis. Ut magnam ad in laboriosam. Aliquid dolores voluptatibus animi et quos.', 'http://localhost/storage/https://via.placeholder.com/900x300.png/00cc33?text=est', '2021-06-09 12:11:25', '2021-06-09 12:11:25'),
(15, 17, 'Nihil quaerat voluptatem distinctio eligendi eos incidunt.', 'Sunt iste ad sint commodi inventore illo voluptatum. Reiciendis maiores unde quia blanditiis provident aut. Et aut quia et fugit natus.', 'http://localhost/storage/https://via.placeholder.com/900x300.png/004411?text=officia', '2021-06-09 12:11:26', '2021-06-09 12:11:26'),
(16, 18, 'Ut minima facilis voluptas velit ipsa dolorem dolore.', 'Sit dicta et eaque amet deleniti dolor sunt id. Consequatur qui et aut id laborum necessitatibus.', 'http://localhost/storage/https://via.placeholder.com/900x300.png/00aa88?text=nesciunt', '2021-06-09 12:11:26', '2021-06-09 12:11:26'),
(17, 19, 'Assumenda saepe possimus quae adipisci dolorum sit.', 'Sed iusto ut dolorem temporibus debitis et expedita. Aliquid architecto dolores sed repellendus nihil. Et et similique blanditiis. Asperiores expedita architecto ratione tenetur praesentium animi.', 'http://localhost/storage/https://via.placeholder.com/900x300.png/0066aa?text=rerum', '2021-06-09 12:11:26', '2021-06-09 12:11:26'),
(18, 20, 'Ab exercitationem eos voluptates repudiandae voluptas deleniti soluta nisi.', 'Repellendus sit nisi id aut quod reprehenderit. Asperiores harum doloremque voluptas voluptatem quis. Doloremque quaerat libero libero incidunt laboriosam et eius. Quis sed et neque perferendis optio autem.', 'http://localhost/storage/https://via.placeholder.com/900x300.png/006633?text=et', '2021-06-09 12:11:26', '2021-06-09 12:11:26'),
(19, 21, 'Magni magnam vel sit aliquam rerum iusto eos.', 'Maiores accusamus ipsa qui necessitatibus quibusdam. Rerum porro tenetur non eos. Repellat labore quia consectetur ut excepturi expedita. Ut reiciendis aut rerum porro ratione tempore.', 'http://localhost/storage/https://via.placeholder.com/900x300.png/003366?text=unde', '2021-06-09 12:11:26', '2021-06-09 12:11:26'),
(20, 22, 'Explicabo suscipit voluptas expedita corporis.', 'Neque sequi quia id esse. Eos ea animi sit officiis soluta.', 'http://localhost/storage/https://via.placeholder.com/900x300.png/00ccaa?text=voluptas', '2021-06-09 12:11:26', '2021-06-09 12:11:26'),
(21, 23, 'Rem dolore aspernatur repellendus blanditiis consequatur ut.', 'Amet corporis doloribus et ipsam laborum. Est laudantium accusamus ad voluptatibus. Laborum laudantium et quisquam esse laboriosam porro.', 'http://localhost/storage/https://via.placeholder.com/900x300.png/00aabb?text=nulla', '2021-06-09 12:11:26', '2021-06-09 12:11:26'),
(22, 24, 'Soluta omnis sit omnis neque omnis minus.', 'Quos corporis dicta occaecati pariatur minus dignissimos consectetur. Repudiandae nam velit commodi vero. Dolorem quia officiis est corrupti dolorem et aut esse. Eveniet tenetur quo qui minima.', 'http://localhost/storage/https://via.placeholder.com/900x300.png/004499?text=quasi', '2021-06-09 12:11:26', '2021-06-09 12:11:26'),
(23, 25, 'Magni voluptas error veniam sint earum cum laborum amet.', 'Quae magni repellendus est eaque ipsum non omnis. Pariatur laborum voluptate sunt non cumque. Voluptates quaerat optio rerum laboriosam consectetur molestias.', 'http://localhost/storage/https://via.placeholder.com/900x300.png/00ff77?text=ullam', '2021-06-09 12:11:26', '2021-06-09 12:11:26'),
(24, 26, 'Ab sed accusantium doloremque et.', 'Omnis voluptatem et nihil aut nihil vitae enim. Vel aut ducimus exercitationem et doloremque. Porro ea odio doloribus et eius. Sunt dolorem officia est.', 'http://localhost/storage/https://via.placeholder.com/900x300.png/008899?text=ut', '2021-06-09 12:11:27', '2021-06-09 12:11:27'),
(25, 27, 'Id officia porro quia eaque laborum adipisci aperiam.', 'Placeat repellat aspernatur consectetur nihil. Officia provident et sunt qui qui. Quia nostrum repellat reprehenderit omnis. Accusamus esse molestias non ut illum iste et.', 'http://localhost/storage/https://via.placeholder.com/900x300.png/008866?text=et', '2021-06-09 12:11:27', '2021-06-09 12:11:27'),
(26, 28, 'Velit ullam quo aliquam voluptatem aperiam ut non architecto.', 'Itaque ab omnis itaque voluptas consequuntur nobis cumque. Odit magnam est inventore nam. Illum molestias quia rem ut nesciunt. Excepturi consequatur molestiae aspernatur. Culpa possimus quia et aut unde vero.', 'http://localhost/storage/https://via.placeholder.com/900x300.png/003366?text=hic', '2021-06-09 12:11:27', '2021-06-09 12:11:27'),
(27, 29, 'Delectus et quia et ea similique harum qui.', 'Quisquam quis quo aperiam ad. Minima assumenda tenetur ipsum dolor. Fugit sed quia ut rerum enim adipisci.', 'http://localhost/storage/https://via.placeholder.com/900x300.png/00dd33?text=ut', '2021-06-09 12:11:27', '2021-06-09 12:11:27'),
(28, 30, 'Debitis incidunt tempora assumenda ut blanditiis dignissimos occaecati.', 'Eaque mollitia commodi magni nam. Voluptate praesentium magnam tenetur quaerat. Cum ea reiciendis a voluptate dolorem.', 'http://localhost/storage/https://via.placeholder.com/900x300.png/006677?text=neque', '2021-06-09 12:11:27', '2021-06-09 12:11:27'),
(29, 31, 'Explicabo harum possimus ut in.', 'Laboriosam quas voluptatem ipsum cupiditate repellat. Inventore similique voluptatem iure esse. Est nemo fuga totam soluta magnam adipisci eos. Qui tempore facilis ducimus voluptas. Voluptatum rerum dolores reiciendis modi qui deserunt.', 'http://localhost/storage/https://via.placeholder.com/900x300.png/00eecc?text=itaque', '2021-06-09 12:11:27', '2021-06-09 12:11:27'),
(30, 32, 'A sequi eos quod officiis.', 'Voluptatem et iusto placeat veritatis sunt. Cum adipisci suscipit et. Ab officia repellat sed itaque est. Consequatur voluptatem accusantium ut deserunt ea.', 'http://localhost/storage/https://via.placeholder.com/900x300.png/008844?text=ratione', '2021-06-09 12:11:27', '2021-06-09 12:11:27'),
(31, 33, 'Et cupiditate quibusdam temporibus.', 'Nesciunt totam est voluptatibus dolorem doloremque. Quae impedit dolores doloremque deserunt quis delectus reprehenderit. Mollitia sit occaecati itaque sed voluptatibus. Nemo qui aut iure sequi aut.', 'http://localhost/storage/https://via.placeholder.com/900x300.png/0077cc?text=beatae', '2021-06-09 12:11:27', '2021-06-09 12:11:27'),
(32, 34, 'Ea qui voluptatem quia in dolore.', 'Adipisci ad molestias incidunt ut sit velit. Similique possimus ullam id vitae occaecati. Sunt voluptas molestiae mollitia dolores itaque et doloribus. Voluptatem excepturi nam rem voluptates.', 'http://localhost/storage/https://via.placeholder.com/900x300.png/004400?text=dignissimos', '2021-06-09 12:11:27', '2021-06-09 12:11:27'),
(33, 35, 'Rerum consectetur voluptate necessitatibus voluptas harum molestiae minima.', 'Iusto a a quas sed asperiores tenetur fugit. Soluta recusandae nemo est tenetur. Dolorum et maiores est sit. Et soluta quia hic quisquam officiis.', 'http://localhost/storage/https://via.placeholder.com/900x300.png/0033dd?text=iusto', '2021-06-09 12:11:27', '2021-06-09 12:11:27'),
(34, 36, 'Voluptatem rerum eius sed veniam quisquam quos ut quos.', 'Sapiente incidunt optio itaque est. Aut sapiente ea accusantium consequatur omnis. Est officia doloribus odit molestiae. Sit aut nihil tempora soluta dignissimos exercitationem nostrum laborum.', 'http://localhost/storage/https://via.placeholder.com/900x300.png/00cc77?text=magnam', '2021-06-09 12:11:28', '2021-06-09 12:11:28'),
(35, 37, 'Aspernatur quos et modi asperiores voluptas.', 'Eos quia ad sequi. Culpa quaerat consequatur voluptas blanditiis magni modi odio. Ipsa provident similique maxime iure expedita. Accusantium qui itaque vitae quam inventore quia.', 'http://localhost/storage/https://via.placeholder.com/900x300.png/00dd11?text=voluptas', '2021-06-09 12:11:28', '2021-06-09 12:11:28'),
(36, 38, 'Laudantium aut voluptatum iusto et consequatur veritatis.', 'Consequuntur dignissimos est ut nesciunt facere. Dolor eius tempore delectus assumenda iste accusantium id consequatur. Doloremque voluptatem ullam impedit consequatur ut repudiandae. Odio quam voluptatem modi dolore cumque totam sint.', 'http://localhost/storage/https://via.placeholder.com/900x300.png/0099cc?text=omnis', '2021-06-09 12:11:28', '2021-06-09 12:11:28'),
(37, 39, 'Nulla dolores commodi voluptatem velit.', 'Sunt maiores quas et eum ut soluta et adipisci. In voluptatum officiis earum quam dicta tempora. Dignissimos ut suscipit omnis soluta necessitatibus voluptatem ad. Facilis qui qui rerum deleniti eos.', 'http://localhost/storage/https://via.placeholder.com/900x300.png/0033dd?text=consectetur', '2021-06-09 12:11:28', '2021-06-09 12:11:28'),
(38, 40, 'Reprehenderit voluptatem tempore ut iste et sint.', 'Est nisi aut non eveniet consequatur. Et velit debitis odit quia officiis rem. Voluptatem excepturi sit modi possimus cumque culpa non sint. Ad eum ipsum enim beatae aut.', 'http://localhost/storage/https://via.placeholder.com/900x300.png/004444?text=et', '2021-06-09 12:11:28', '2021-06-09 12:11:28'),
(39, 41, 'Error accusantium totam et exercitationem qui sequi ipsa dignissimos.', 'Incidunt reiciendis nobis facilis. Totam totam qui sint. Tempora harum et dolor aut dolor veritatis. Voluptas quia qui error autem enim fugit.', 'http://localhost/storage/https://via.placeholder.com/900x300.png/0066ee?text=cumque', '2021-06-09 12:11:28', '2021-06-09 12:11:28'),
(40, 42, 'Perferendis modi sed nam eius quas unde.', 'Consequatur dolorem voluptatum quis et harum beatae quod. Voluptatem molestiae qui eligendi est eaque corporis. Laborum atque omnis laborum molestiae.', 'http://localhost/storage/https://via.placeholder.com/900x300.png/003366?text=ipsa', '2021-06-09 12:11:28', '2021-06-09 12:11:28'),
(41, 43, 'Aut deleniti est beatae maxime.', 'Nihil consequatur deserunt est quo suscipit. Quis sunt voluptatem eos cum dolores earum maiores voluptatibus. Rem et qui ut dolorem. Nostrum illo consequuntur quis laboriosam.', 'http://localhost/storage/https://via.placeholder.com/900x300.png/00aacc?text=porro', '2021-06-09 12:11:28', '2021-06-09 12:11:28'),
(42, 44, 'Voluptatum deserunt necessitatibus porro omnis fugit a.', 'Vero dolorem sit nisi. Ut ea et cupiditate vero quod autem quis. Quis ad accusantium numquam. Omnis accusantium rerum odio quisquam officiis aut ab.', 'http://localhost/storage/https://via.placeholder.com/900x300.png/004455?text=eum', '2021-06-09 12:11:28', '2021-06-09 12:11:28'),
(43, 45, 'Veritatis necessitatibus non assumenda.', 'Consequatur nam reprehenderit omnis sequi et animi quia. Laborum itaque sed possimus facere. Excepturi quibusdam excepturi praesentium nostrum perspiciatis magni. Ratione perspiciatis alias eaque est ullam.', 'http://localhost/storage/https://via.placeholder.com/900x300.png/000044?text=ut', '2021-06-09 12:11:28', '2021-06-09 12:11:28'),
(44, 46, 'Earum quia et minima asperiores.', 'Est ex sint sed rem. Officiis aut assumenda aliquam incidunt minima. Quia dicta vero mollitia nam. Quos et et quo soluta et.', 'http://localhost/storage/https://via.placeholder.com/900x300.png/008833?text=est', '2021-06-09 12:11:28', '2021-06-09 12:11:28'),
(45, 47, 'Consectetur quasi dolorem odit quo.', 'Laboriosam fugit non accusantium et nihil. Rem ea et itaque non optio veniam. Inventore tenetur dolorum facilis ab molestiae.', 'http://localhost/storage/https://via.placeholder.com/900x300.png/009999?text=est', '2021-06-09 12:11:28', '2021-06-09 12:11:28'),
(46, 48, 'Exercitationem eligendi iste error aut quasi facere.', 'Asperiores reprehenderit atque a est debitis. Aperiam sit neque voluptatem reprehenderit et. Voluptatem ut minus eum dolor.', 'http://localhost/storage/https://via.placeholder.com/900x300.png/00cc66?text=nisi', '2021-06-09 12:11:29', '2021-06-09 12:11:29'),
(47, 49, 'Qui quam velit aperiam sit non natus fugiat.', 'Deserunt accusamus impedit suscipit numquam porro. Dicta magni aut rerum. Unde et ut blanditiis explicabo tenetur et. Dolorem assumenda dolorum quia ab.', 'http://localhost/storage/https://via.placeholder.com/900x300.png/00bb00?text=facilis', '2021-06-09 12:11:29', '2021-06-09 12:11:29'),
(48, 50, 'Assumenda voluptatem libero blanditiis tenetur.', 'Sit possimus earum vel libero minima quidem. Eveniet eum quibusdam fugiat neque sint id. Consequuntur non sunt facere veniam. Inventore aut quos deserunt rerum dolorum. Reprehenderit et quis qui architecto exercitationem reprehenderit.', 'http://localhost/storage/https://via.placeholder.com/900x300.png/0077aa?text=alias', '2021-06-09 12:11:29', '2021-06-09 12:11:29'),
(49, 51, 'Quidem dolorem sit neque nesciunt veritatis fugit.', 'Libero accusantium ut sit architecto et numquam aut. Natus nam nobis in provident recusandae. Exercitationem et expedita nesciunt dolores officia. Assumenda dicta molestiae magni impedit fugit.', 'http://localhost/storage/https://via.placeholder.com/900x300.png/002288?text=et', '2021-06-09 12:11:29', '2021-06-09 12:11:29'),
(50, 52, 'Quo quis amet ipsum.', 'Et explicabo iusto nesciunt suscipit voluptates cupiditate. Suscipit odit doloribus tempore sunt velit a omnis.', 'http://localhost/storage/https://via.placeholder.com/900x300.png/002266?text=quo', '2021-06-09 12:11:29', '2021-06-09 12:11:29'),
(51, 53, 'Amet eveniet dolorum voluptatibus atque nihil soluta rerum quo.', 'Vitae sint quidem et dicta error. Sint excepturi et velit distinctio sint. Eius fugit dolorem corrupti laboriosam ut. Minus accusantium eius id sunt exercitationem non.', 'http://localhost/storage/https://via.placeholder.com/900x300.png/002233?text=voluptas', '2021-06-09 12:11:29', '2021-06-09 12:11:29'),
(52, 54, 'Fuga iusto tempore quo natus dolorem aperiam.', 'Quo ducimus eum expedita quia omnis. Sit asperiores molestiae earum rerum. Exercitationem facilis molestiae consequatur et distinctio pariatur. Quidem dolor perferendis eius at accusamus architecto tempora.', 'http://localhost/storage/https://via.placeholder.com/900x300.png/0000ee?text=qui', '2021-06-09 12:11:29', '2021-06-09 12:11:29'),
(53, 55, 'Aut non placeat ut similique illum adipisci aliquid.', 'Et odio sint quia blanditiis odio. Similique quae magnam cum labore veritatis. Quis et dignissimos quo aut molestias beatae. Enim provident dignissimos eveniet sint aut adipisci.', 'http://localhost/storage/https://via.placeholder.com/900x300.png/009955?text=sequi', '2021-06-09 12:11:29', '2021-06-09 12:11:29'),
(54, 56, 'Tempore voluptatibus beatae minus est ut labore.', 'A tempora pariatur alias aut asperiores consequatur voluptates dolor. Quo molestias laudantium vitae minus corporis.', 'http://localhost/storage/https://via.placeholder.com/900x300.png/004466?text=aut', '2021-06-09 12:11:29', '2021-06-09 12:11:29'),
(55, 57, 'Omnis qui sit quis aut neque aut.', 'Repudiandae asperiores et cupiditate molestiae deleniti ut. Perferendis ut soluta rerum tenetur placeat enim doloremque. Doloribus ut fuga possimus ipsum qui dolores cum.', 'http://localhost/storage/https://via.placeholder.com/900x300.png/003366?text=laboriosam', '2021-06-09 12:11:29', '2021-06-09 12:11:29'),
(56, 58, 'Voluptatibus et necessitatibus excepturi ea.', 'Voluptatem earum unde voluptas quam velit. Consequuntur sunt error labore ad magni explicabo. Enim ut voluptate sed natus adipisci. Quos mollitia dolore amet aut.', 'http://localhost/storage/https://via.placeholder.com/900x300.png/0011aa?text=non', '2021-06-09 12:11:29', '2021-06-09 12:11:29'),
(57, 59, 'Nihil atque non dolorum corporis hic.', 'Voluptas eos ullam velit ipsam deleniti repudiandae laborum. Perspiciatis incidunt a aut atque corporis quia. Cum quod eius praesentium molestiae expedita. Voluptas quod in dolorum minima molestiae.', 'http://localhost/storage/https://via.placeholder.com/900x300.png/0088ee?text=ut', '2021-06-09 12:11:29', '2021-06-09 12:11:29'),
(58, 60, 'Itaque praesentium non tempora voluptatum hic.', 'Ipsa magnam rerum autem impedit est reprehenderit pariatur. Ex rem tenetur expedita architecto repudiandae accusamus eius. Blanditiis sit nisi voluptas quos. Distinctio expedita et itaque eum aut ducimus aspernatur pariatur. Ratione qui ut inventore rem aut maxime reprehenderit.', 'http://localhost/storage/https://via.placeholder.com/900x300.png/0077ff?text=temporibus', '2021-06-09 12:11:29', '2021-06-09 12:11:29'),
(59, 61, 'Voluptas voluptatem autem tenetur vel.', 'Saepe explicabo vel libero sed non ratione. Ratione eveniet beatae doloremque libero. Tenetur repudiandae qui assumenda eum aperiam excepturi. Ducimus sint voluptatibus excepturi eius itaque sit.', 'http://localhost/storage/https://via.placeholder.com/900x300.png/00bbbb?text=incidunt', '2021-06-09 12:11:29', '2021-06-09 12:11:29'),
(60, 62, 'Nobis voluptas vitae iste quasi distinctio.', 'Ut vero quia nobis quas dolores et optio ducimus. Voluptatem consequatur facere voluptatibus eos doloribus omnis consectetur.', 'http://localhost/storage/https://via.placeholder.com/900x300.png/001188?text=omnis', '2021-06-09 12:11:30', '2021-06-09 12:11:30'),
(61, 63, 'Autem ab vitae rem perferendis.', 'Perferendis voluptas et cupiditate velit ab earum quibusdam enim. Voluptatem voluptate magni fugit quidem iste quo. Non modi minima vel nulla possimus aliquid.', 'http://localhost/storage/https://via.placeholder.com/900x300.png/00aadd?text=praesentium', '2021-06-09 12:11:30', '2021-06-09 12:11:30'),
(62, 64, 'Voluptas optio et occaecati dolorem iure amet necessitatibus.', 'Illum quod molestiae voluptas rerum. Minima pariatur rerum esse earum quaerat dignissimos iste. Nam qui iure alias quos.', 'http://localhost/storage/https://via.placeholder.com/900x300.png/0044ee?text=est', '2021-06-09 12:11:30', '2021-06-09 12:11:30'),
(63, 65, 'Quasi unde molestiae ut rem perferendis tenetur a.', 'Et perferendis ipsa unde et. Adipisci explicabo reprehenderit neque delectus accusantium. Quo et aut sint ea.', 'http://localhost/storage/https://via.placeholder.com/900x300.png/00cc55?text=harum', '2021-06-09 12:11:30', '2021-06-09 12:11:30'),
(64, 66, 'Quia maiores eos nihil non.', 'Deserunt porro natus corrupti natus consectetur veniam ratione. Adipisci ratione voluptas cum ea nostrum. Consectetur eos quibusdam veritatis aspernatur.', 'http://localhost/storage/https://via.placeholder.com/900x300.png/003300?text=atque', '2021-06-09 12:11:30', '2021-06-09 12:11:30'),
(65, 67, 'Quae asperiores eos perferendis quis id neque totam sit.', 'Eos repellat quia aut est ut. Modi hic error delectus est libero aspernatur delectus. Enim numquam eos repudiandae eveniet magni fugiat.', 'http://localhost/storage/https://via.placeholder.com/900x300.png/0066aa?text=ipsa', '2021-06-09 12:11:30', '2021-06-09 12:11:30'),
(66, 68, 'Dolorum deleniti natus ea aliquid dolor labore.', 'In rem ut et quia tenetur cumque. Soluta aliquam et asperiores dolorem quia iure mollitia. Alias aliquid ad deleniti quisquam aut sit. Occaecati cupiditate ea aspernatur ducimus. Nesciunt sunt non quos dolorem odit consequatur.', 'http://localhost/storage/https://via.placeholder.com/900x300.png/00eebb?text=corrupti', '2021-06-09 12:11:30', '2021-06-09 12:11:30'),
(67, 69, 'Deserunt eum sit omnis.', 'Aut mollitia non at totam aut. Maxime possimus quod aut eos beatae consequatur. Molestiae aut soluta porro voluptas. Commodi illo blanditiis et perspiciatis expedita autem et. Deserunt deserunt suscipit et sed eaque quasi quae.', 'http://localhost/storage/https://via.placeholder.com/900x300.png/0033cc?text=necessitatibus', '2021-06-09 12:11:30', '2021-06-09 12:11:30'),
(68, 70, 'A fugit expedita non.', 'Blanditiis est esse unde soluta ab tenetur molestiae. Alias eos autem enim in totam. Consectetur aut autem voluptatibus iusto rerum repudiandae deleniti. Asperiores illum quisquam dolor laborum.', 'http://localhost/storage/https://via.placeholder.com/900x300.png/0044ee?text=quibusdam', '2021-06-09 12:11:30', '2021-06-09 12:11:30'),
(69, 71, 'Sed dolorum alias ipsa veniam fugit.', 'Exercitationem minima architecto quo. Eos nisi in soluta eaque eos.', 'http://localhost/storage/https://via.placeholder.com/900x300.png/002200?text=et', '2021-06-09 12:11:30', '2021-06-09 12:11:30'),
(70, 72, 'Nesciunt quisquam molestiae aut quo in harum aut.', 'Veniam in sit et dolores doloribus deserunt qui. Quo et qui quia. Maxime iste ea dignissimos quod unde ipsam voluptas tempore.', 'http://localhost/storage/https://via.placeholder.com/900x300.png/00ccdd?text=magnam', '2021-06-09 12:11:30', '2021-06-09 12:11:30'),
(71, 73, 'Optio hic omnis iste.', 'Molestiae sit blanditiis eum deserunt similique. In ipsa sed repellat dolores architecto. Perferendis harum architecto maiores debitis. Aut consequuntur autem ad eos animi dolor dolor.', 'http://localhost/storage/https://via.placeholder.com/900x300.png/00eebb?text=distinctio', '2021-06-09 12:11:30', '2021-06-09 12:11:30'),
(72, 74, 'Commodi porro ea omnis optio temporibus aut.', 'Facilis suscipit fugit recusandae ullam consequatur vel omnis. Similique et quis accusantium beatae mollitia. Vitae laudantium quia qui enim fuga.', 'http://localhost/storage/https://via.placeholder.com/900x300.png/00ff33?text=velit', '2021-06-09 12:11:31', '2021-06-09 12:11:31'),
(73, 75, 'Autem iste aut beatae harum aspernatur minus quibusdam.', 'Quod harum possimus error eveniet. Id sed molestiae nihil. Ut quia eos expedita est quis aut veniam. Et voluptatem temporibus debitis cupiditate.', 'http://localhost/storage/https://via.placeholder.com/900x300.png/00cc00?text=qui', '2021-06-09 12:11:31', '2021-06-09 12:11:31'),
(74, 76, 'Quisquam illo ex voluptatibus dolorem perspiciatis quos amet.', 'Deleniti earum commodi est autem. Sed modi atque quibusdam voluptatibus corrupti maiores. Rerum non fugiat corporis laborum eos. Omnis laboriosam labore fugit illo animi.', 'http://localhost/storage/https://via.placeholder.com/900x300.png/0099ee?text=ullam', '2021-06-09 12:11:31', '2021-06-09 12:11:31'),
(75, 77, 'Mollitia quaerat qui similique laudantium.', 'Quia delectus dolore temporibus quia aut laborum. Quae explicabo ducimus at quidem. Quam amet autem eum ab. Asperiores ab omnis nemo voluptatem quisquam facilis facere. Fugit id impedit ipsa optio nostrum.', 'http://localhost/storage/https://via.placeholder.com/900x300.png/00cc55?text=at', '2021-06-09 12:11:31', '2021-06-09 12:11:31'),
(76, 78, 'Modi ipsa molestiae perferendis omnis praesentium quae et est.', 'Assumenda delectus quis pariatur ipsum. Maiores dolores quaerat veritatis inventore id dolorum eius. Sit quia perferendis fugit.', 'http://localhost/storage/https://via.placeholder.com/900x300.png/001122?text=animi', '2021-06-09 12:11:31', '2021-06-09 12:11:31'),
(77, 79, 'Cumque atque aliquam assumenda rerum.', 'At est deleniti sequi debitis. Velit aut dolorem veniam ut.', 'http://localhost/storage/https://via.placeholder.com/900x300.png/0044ee?text=impedit', '2021-06-09 12:11:31', '2021-06-09 12:11:31'),
(78, 80, 'Quia eveniet et sed sint eos suscipit voluptatum.', 'Sequi vel dolorum commodi dolores vero accusantium. Repellat est natus deleniti ut quis. Eos et earum consequatur velit tempora. Et quas alias non velit sit commodi aut.', 'http://localhost/storage/https://via.placeholder.com/900x300.png/00cc22?text=eius', '2021-06-09 12:11:31', '2021-06-09 12:11:31'),
(79, 81, 'Voluptas amet dolores natus illum excepturi dolor ipsa.', 'Vel totam quae nisi. Repudiandae laudantium laudantium et sit. Sed quibusdam quam voluptatem vitae molestias natus neque. Quia excepturi voluptatem veniam provident iusto doloremque.', 'http://localhost/storage/https://via.placeholder.com/900x300.png/00aa33?text=aut', '2021-06-09 12:11:31', '2021-06-09 12:11:31'),
(80, 82, 'Nulla molestias dicta ut molestiae ratione.', 'Corrupti soluta quia dicta vel veritatis laudantium hic blanditiis. Nihil hic recusandae omnis quidem. Quibusdam sit ratione nobis consequatur officiis blanditiis ex.', 'http://localhost/storage/https://via.placeholder.com/900x300.png/004433?text=vel', '2021-06-09 12:11:31', '2021-06-09 12:11:31'),
(81, 83, 'Impedit ex aliquam ea ut vel est ut non.', 'Dolore ad aliquam culpa et iure aut enim. Perspiciatis rerum quaerat similique pariatur voluptate et.', 'http://localhost/storage/https://via.placeholder.com/900x300.png/000099?text=et', '2021-06-09 12:11:31', '2021-06-09 12:11:31'),
(82, 84, 'Ipsam rerum adipisci minus quae alias.', 'Aliquam sint voluptatem libero et adipisci ducimus sit. Perspiciatis consectetur illo deserunt incidunt quo necessitatibus dignissimos vitae. Voluptatem vero facere architecto fugiat incidunt aut. In enim dolores dicta velit possimus et.', 'http://localhost/storage/https://via.placeholder.com/900x300.png/005599?text=beatae', '2021-06-09 12:11:31', '2021-06-09 12:11:31'),
(83, 85, 'Optio minus officiis corrupti quae.', 'Dicta officia ut aut cumque commodi quod. Ut pariatur sit facilis esse maiores ratione. Quo ipsam iste sed cum.', 'http://localhost/storage/https://via.placeholder.com/900x300.png/009933?text=distinctio', '2021-06-09 12:11:32', '2021-06-09 12:11:32'),
(84, 86, 'Labore cupiditate libero dolorem placeat illo sequi numquam ipsam.', 'Quasi doloribus aspernatur enim nihil quia enim facere. Accusantium voluptatem laudantium officia.', 'http://localhost/storage/https://via.placeholder.com/900x300.png/0088aa?text=est', '2021-06-09 12:11:32', '2021-06-09 12:11:32'),
(85, 87, 'Nostrum nulla quam delectus molestiae totam eius.', 'At voluptatibus ab cumque. Earum veniam corrupti dolorum id voluptates ex quidem repudiandae. Tenetur est inventore repellendus consectetur occaecati expedita quis amet.', 'http://localhost/storage/https://via.placeholder.com/900x300.png/00eecc?text=distinctio', '2021-06-09 12:11:32', '2021-06-09 12:11:32'),
(86, 88, 'Natus numquam quod quibusdam explicabo architecto vel rem.', 'Sint velit eum et. Odio nihil porro molestiae tempore sed aliquam. Rem quo rerum ab nihil excepturi.', 'http://localhost/storage/https://via.placeholder.com/900x300.png/00bbbb?text=voluptatem', '2021-06-09 12:11:32', '2021-06-09 12:11:32'),
(87, 89, 'Quia maxime consectetur voluptas sed molestiae voluptas.', 'Vel distinctio laboriosam possimus ea facere similique qui. Voluptates doloribus optio officiis dicta veritatis. Aliquid expedita iure est.', 'http://localhost/storage/https://via.placeholder.com/900x300.png/006611?text=dicta', '2021-06-09 12:11:32', '2021-06-09 12:11:32'),
(88, 90, 'Cumque ipsa repellendus vel officiis modi.', 'Nisi qui dolorem corporis aut repudiandae. Odit harum ut error perferendis dolores aspernatur ex sit. Qui ipsa ullam magnam rem ea voluptatibus molestias. Et ex nam dolorum ullam natus sint rerum.', 'http://localhost/storage/https://via.placeholder.com/900x300.png/0033ff?text=repellat', '2021-06-09 12:11:32', '2021-06-09 12:11:32'),
(89, 91, 'Nihil ab accusamus quis est sapiente dolorum et.', 'Quo dolorem doloremque aliquam dolorum magni qui. Alias consequatur ut sit ipsa molestiae. Explicabo mollitia dolor eum maiores eius animi.', 'http://localhost/storage/https://via.placeholder.com/900x300.png/009933?text=dignissimos', '2021-06-09 12:11:32', '2021-06-09 12:11:32'),
(90, 92, 'Qui voluptas minima corporis numquam.', 'Velit debitis sit beatae eius ea. Laboriosam qui voluptas cumque qui praesentium. Necessitatibus est amet facilis earum omnis omnis. Quam distinctio tempore aut fugit rerum aperiam illum.', 'http://localhost/storage/https://via.placeholder.com/900x300.png/00dd44?text=doloribus', '2021-06-09 12:11:32', '2021-06-09 12:11:32'),
(91, 93, 'Molestiae voluptas aliquam voluptates.', 'Sequi ex dolore beatae veniam. Eum alias ut voluptatibus est aut repellendus ad. Laudantium necessitatibus perferendis incidunt id eveniet. Odit eligendi deserunt nihil quibusdam mollitia et voluptas.', 'http://localhost/storage/https://via.placeholder.com/900x300.png/0077bb?text=dicta', '2021-06-09 12:11:32', '2021-06-09 12:11:32'),
(92, 94, 'Molestiae optio aliquam est et molestiae est reprehenderit voluptatem.', 'Hic est aut ut repellendus animi. Porro sequi quas qui perferendis incidunt corrupti maxime. Quos assumenda eveniet quam a velit quis.', 'http://localhost/storage/https://via.placeholder.com/900x300.png/0099dd?text=vel', '2021-06-09 12:11:32', '2021-06-09 12:11:32'),
(93, 95, 'Ut facere dicta ad quo sapiente.', 'Velit ut quidem iusto nobis. Autem blanditiis sed repellendus sint quos repudiandae eum. Itaque exercitationem voluptatem est accusantium aliquam mollitia. Iusto ullam assumenda aut quas.', 'http://localhost/storage/https://via.placeholder.com/900x300.png/009977?text=facilis', '2021-06-09 12:11:32', '2021-06-09 12:11:32'),
(94, 96, 'Laudantium ipsa aut voluptatem consequatur.', 'Enim maxime velit ut reiciendis odit autem deserunt voluptatum. Odit in corrupti ad debitis est omnis. Atque unde exercitationem nostrum est facere qui. Ullam et consequatur iusto corporis eligendi temporibus explicabo. Soluta sint corporis natus in possimus.', 'http://localhost/storage/https://via.placeholder.com/900x300.png/002255?text=praesentium', '2021-06-09 12:11:33', '2021-06-09 12:11:33'),
(95, 97, 'Quae voluptas velit ea placeat.', 'Voluptate ut itaque aut error magnam dolorem dignissimos consequatur. Recusandae reprehenderit placeat rem quis adipisci debitis et. Velit distinctio est aut et sequi eos. Enim ex minus molestiae repellendus natus. Ea at possimus velit ullam et aliquam tenetur.', 'http://localhost/storage/https://via.placeholder.com/900x300.png/005599?text=quis', '2021-06-09 12:11:33', '2021-06-09 12:11:33'),
(96, 98, 'Voluptatibus deleniti alias voluptatibus tempora quia non.', 'Tenetur non quia delectus qui voluptas. Autem ex officiis labore non dolor dolor minima. Dicta aliquid enim qui explicabo. Vitae sit aut sed ducimus nulla quod rerum.', 'http://localhost/storage/https://via.placeholder.com/900x300.png/00aaee?text=qui', '2021-06-09 12:11:33', '2021-06-09 12:11:33'),
(97, 99, 'Magni ut minima sit ea consequatur.', 'Tenetur assumenda ex qui explicabo rerum vero sunt molestias. Officiis soluta sequi mollitia est. Iure non eum porro beatae consequatur. Qui qui nulla rerum occaecati harum cum fugit.', 'http://localhost/storage/https://via.placeholder.com/900x300.png/009922?text=explicabo', '2021-06-09 12:11:33', '2021-06-09 12:11:33'),
(98, 100, 'Magnam omnis officia corrupti cumque et officia eius non.', 'Dolore delectus optio maiores et molestiae distinctio. Consectetur et et ipsum voluptas accusamus vitae et. Doloremque sit eos et. Recusandae animi architecto et veniam reprehenderit et ut totam.', 'http://localhost/storage/https://via.placeholder.com/900x300.png/0044cc?text=et', '2021-06-09 12:11:33', '2021-06-09 12:11:33'),
(99, 101, 'Sunt nulla aut perspiciatis voluptas quasi rerum nulla nihil.', 'Atque sunt voluptate et nobis veniam. Soluta quisquam et ipsam sint. Autem quia quidem et autem.', 'http://localhost/storage/https://via.placeholder.com/900x300.png/00bb11?text=dolorum', '2021-06-09 12:11:33', '2021-06-09 12:11:33'),
(100, 102, 'Et nesciunt vel odit numquam.', 'Et laudantium deleniti dolore ut quis eveniet. Blanditiis quidem consequuntur et nam est fuga accusamus. Corporis a vel nobis. Est minima corporis impedit dolores.', 'http://localhost/storage/https://via.placeholder.com/900x300.png/0000cc?text=consequatur', '2021-06-09 12:11:33', '2021-06-09 12:11:33');

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `slug`, `created_at`, `updated_at`) VALUES
(1, 'Admin', 'admin', '2021-06-09 12:34:53', '2021-06-09 12:34:53'),
(2, 'Assistant', 'assistant', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `role_user`
--

CREATE TABLE `role_user` (
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `role_user`
--

INSERT INTO `role_user` (`user_id`, `role_id`, `created_at`, `updated_at`) VALUES
(1, 1, NULL, NULL),
(203, 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `username` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `avatar` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `username`, `email`, `avatar`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'amritpal singh', 'amrit13111', 'amrit@gmail.com', 'images/iOymqQUzh2Rv1B830X3a5PGXdNJ73eRNSYHU8Rk1.jpg', NULL, '12345678', NULL, '2021-06-08 12:49:39', '2021-06-08 13:47:30'),
(2, 'iqbal dhillon', 'iqbal', 'dhillon.iqbal.116@gmail.com', 'images/FBXwVNyWXRBs0JIlGPHHIodIdA64F5XXqRSgrHsT.jpg', NULL, '25d55ad283aa400af464c76d713c07ad', NULL, '2021-06-09 11:49:35', '2021-06-09 12:08:07'),
(5, 'Beatrice Hessel', 'ezequiel94', 'lizeth.towne@example.org', NULL, '2021-06-09 12:11:21', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'rGK5mB0cGe', '2021-06-09 12:11:21', '2021-06-09 12:11:21'),
(6, 'Claud Beatty', 'prince71', 'welch.selena@example.net', NULL, '2021-06-09 12:11:21', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'wlYScb3HRN', '2021-06-09 12:11:21', '2021-06-09 12:11:21'),
(7, 'Curt Hintz I', 'milan05', 'myrl.corkery@example.net', NULL, '2021-06-09 12:11:21', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'OYyb4p5Sfz', '2021-06-09 12:11:21', '2021-06-09 12:11:21'),
(8, 'Jedidiah Schaefer', 'littel.velva', 'dhessel@example.net', NULL, '2021-06-09 12:11:21', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'vxSTWQUSMP', '2021-06-09 12:11:21', '2021-06-09 12:11:21'),
(9, 'Carolyn Waters', 'fkassulke', 'nyah.hamill@example.org', NULL, '2021-06-09 12:11:21', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'qHWggQNTaS', '2021-06-09 12:11:21', '2021-06-09 12:11:21'),
(10, 'Clemmie Waelchi', 'hugh.bergnaum', 'ohane@example.org', NULL, '2021-06-09 12:11:21', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'oCrNw3adds', '2021-06-09 12:11:21', '2021-06-09 12:11:21'),
(11, 'Prof. Sylvia Blick', 'jdaugherty', 'john41@example.net', NULL, '2021-06-09 12:11:21', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'tX3u0TETO4', '2021-06-09 12:11:21', '2021-06-09 12:11:21'),
(12, 'Dr. Romaine Brakus III', 'georgette.larson', 'adella.koss@example.net', NULL, '2021-06-09 12:11:21', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'Lk7kXOFHdB', '2021-06-09 12:11:21', '2021-06-09 12:11:21'),
(13, 'Dr. Gerhard Ritchie', 'gretchen84', 'rernser@example.net', NULL, '2021-06-09 12:11:21', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'HyEQVG8v8K', '2021-06-09 12:11:21', '2021-06-09 12:11:21'),
(14, 'Jazmyn Schumm', 'hbernier', 'kuphal.marlon@example.org', NULL, '2021-06-09 12:11:21', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'TCYWWGh9Je', '2021-06-09 12:11:22', '2021-06-09 12:11:22'),
(15, 'Chaz Keebler', 'kertzmann.max', 'kessler.ezra@example.com', NULL, '2021-06-09 12:11:21', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'puM8I77Elu', '2021-06-09 12:11:22', '2021-06-09 12:11:22'),
(16, 'Ms. Leonora Hamill', 'rpagac', 'omer.muller@example.org', NULL, '2021-06-09 12:11:21', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'Zetcy4UCaN', '2021-06-09 12:11:22', '2021-06-09 12:11:22'),
(17, 'Douglas Rice DDS', 'oherman', 'lloyd66@example.com', NULL, '2021-06-09 12:11:21', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'JU639Tqjts', '2021-06-09 12:11:22', '2021-06-09 12:11:22'),
(18, 'Roxane Towne', 'eschaden', 'marilie.howe@example.org', NULL, '2021-06-09 12:11:21', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'WXF3Egsi8U', '2021-06-09 12:11:22', '2021-06-09 12:11:22'),
(19, 'Mr. Jess Prohaska', 'adrain.gleichner', 'hollis20@example.net', NULL, '2021-06-09 12:11:21', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '3pMdo5sqqj', '2021-06-09 12:11:22', '2021-06-09 12:11:22'),
(20, 'Prof. Michale Reichert Jr.', 'tia.johns', 'nicolas.tatyana@example.com', NULL, '2021-06-09 12:11:21', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'cm51i5ETo6', '2021-06-09 12:11:22', '2021-06-09 12:11:22'),
(21, 'Dr. Jared Bashirian IV', 'shanahan.rachael', 'clarabelle07@example.net', NULL, '2021-06-09 12:11:21', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'qZ2ktO27NN', '2021-06-09 12:11:22', '2021-06-09 12:11:22'),
(22, 'Evangeline Adams', 'cole.schuster', 'mmayer@example.net', NULL, '2021-06-09 12:11:21', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '24XZXn0SdB', '2021-06-09 12:11:22', '2021-06-09 12:11:22'),
(23, 'Miss Lila Littel IV', 'dwalker', 'frances48@example.com', NULL, '2021-06-09 12:11:21', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '916HcQGsOw', '2021-06-09 12:11:22', '2021-06-09 12:11:22'),
(24, 'Jennyfer Conroy', 'littel.gabriel', 'monserrat.schaden@example.org', NULL, '2021-06-09 12:11:21', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'shCLFwT1wW', '2021-06-09 12:11:22', '2021-06-09 12:11:22'),
(25, 'Prof. Chaya Quitzon DDS', 'owehner', 'bchristiansen@example.org', NULL, '2021-06-09 12:11:21', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'kbbPNefmd3', '2021-06-09 12:11:22', '2021-06-09 12:11:22'),
(26, 'Dr. Sabrina Effertz', 'swift.parker', 'ally34@example.org', NULL, '2021-06-09 12:11:21', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'cltrKX26Nh', '2021-06-09 12:11:22', '2021-06-09 12:11:22'),
(27, 'Prof. Jerrod Turcotte', 'aisha.wolff', 'fwillms@example.net', NULL, '2021-06-09 12:11:21', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'dmU07DgwKe', '2021-06-09 12:11:22', '2021-06-09 12:11:22'),
(28, 'Dr. Carter Raynor', 'harber.rae', 'aubrey15@example.com', NULL, '2021-06-09 12:11:21', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '59grE5DyfL', '2021-06-09 12:11:22', '2021-06-09 12:11:22'),
(29, 'Mr. Lesley Blick MD', 'kokeefe', 'marcia15@example.org', NULL, '2021-06-09 12:11:21', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'DpBdYO5rGP', '2021-06-09 12:11:22', '2021-06-09 12:11:22'),
(30, 'Calista Beahan', 'jdonnelly', 'susanna.monahan@example.org', NULL, '2021-06-09 12:11:21', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'Yp0uIS1tdZ', '2021-06-09 12:11:22', '2021-06-09 12:11:22'),
(31, 'Hellen Jones', 'concepcion.halvorson', 'kpfeffer@example.org', NULL, '2021-06-09 12:11:21', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '3dp7MGtb3C', '2021-06-09 12:11:22', '2021-06-09 12:11:22'),
(32, 'Ms. Heloise Eichmann III', 'mohr.priscilla', 'jrodriguez@example.com', NULL, '2021-06-09 12:11:21', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'xdSNVyyxig', '2021-06-09 12:11:22', '2021-06-09 12:11:22'),
(33, 'Mrs. Yvette Pacocha DVM', 'schroeder.fabian', 'aaliyah70@example.org', NULL, '2021-06-09 12:11:21', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'o2Teoj3kOu', '2021-06-09 12:11:22', '2021-06-09 12:11:22'),
(34, 'Kayden Wisoky', 'mrippin', 'schimmel.fred@example.org', NULL, '2021-06-09 12:11:21', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'DX1xoW7rhJ', '2021-06-09 12:11:22', '2021-06-09 12:11:22'),
(35, 'Eugene Ratke', 'kihn.jordy', 'zboehm@example.com', NULL, '2021-06-09 12:11:21', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'Lm0VvTlsaP', '2021-06-09 12:11:22', '2021-06-09 12:11:22'),
(36, 'Ally Connelly', 'ecollier', 'terrence.runolfsdottir@example.net', NULL, '2021-06-09 12:11:21', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'nUcpaZL9TC', '2021-06-09 12:11:22', '2021-06-09 12:11:22'),
(37, 'Newton Langworth II', 'pierre.borer', 'gerhold.willa@example.org', NULL, '2021-06-09 12:11:21', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'UuMpXEU5xl', '2021-06-09 12:11:22', '2021-06-09 12:11:22'),
(38, 'Gabrielle Volkman', 'harrison.hegmann', 'djacobson@example.org', NULL, '2021-06-09 12:11:21', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'sn9hszDJPi', '2021-06-09 12:11:22', '2021-06-09 12:11:22'),
(39, 'Ms. Antonetta Herman I', 'hrunolfsdottir', 'felipe61@example.com', NULL, '2021-06-09 12:11:21', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'iEUnZvpilD', '2021-06-09 12:11:22', '2021-06-09 12:11:22'),
(40, 'Leslie Grant', 'vella.white', 'katlyn79@example.com', NULL, '2021-06-09 12:11:21', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'HLHKO61N7h', '2021-06-09 12:11:22', '2021-06-09 12:11:22'),
(41, 'Christine Stokes', 'fharvey', 'nona25@example.org', NULL, '2021-06-09 12:11:21', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'qlxGGPFyZV', '2021-06-09 12:11:23', '2021-06-09 12:11:23'),
(42, 'Hobart Senger', 'leopoldo36', 'audra.rau@example.org', NULL, '2021-06-09 12:11:21', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'aoEvwp10BA', '2021-06-09 12:11:23', '2021-06-09 12:11:23'),
(43, 'Flossie Goodwin IV', 'cloyd.grady', 'josianne77@example.net', NULL, '2021-06-09 12:11:21', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '1UwezzGmt1', '2021-06-09 12:11:23', '2021-06-09 12:11:23'),
(44, 'Dr. Leda Collier DDS', 'seamus72', 'lstrosin@example.org', NULL, '2021-06-09 12:11:21', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '690NfaTBHA', '2021-06-09 12:11:23', '2021-06-09 12:11:23'),
(45, 'Deshaun Tillman', 'kkilback', 'sawayn.cory@example.org', NULL, '2021-06-09 12:11:21', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'bRX7msKXx9', '2021-06-09 12:11:23', '2021-06-09 12:11:23'),
(46, 'Cassandra Kemmer', 'aleen.schulist', 'jevon.senger@example.net', NULL, '2021-06-09 12:11:21', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'hr5oXaRWqj', '2021-06-09 12:11:23', '2021-06-09 12:11:23'),
(47, 'Verdie Huels II', 'hspencer', 'abigail65@example.org', NULL, '2021-06-09 12:11:21', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'RfWtzMOc7k', '2021-06-09 12:11:23', '2021-06-09 12:11:23'),
(48, 'Reuben Sawayn', 'aaliyah.damore', 'abe.armstrong@example.org', NULL, '2021-06-09 12:11:21', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'jqY3DGuORM', '2021-06-09 12:11:23', '2021-06-09 12:11:23'),
(49, 'Rhea Fritsch', 'lebsack.timmothy', 'jamil88@example.net', NULL, '2021-06-09 12:11:21', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'XVWpFBkUY1', '2021-06-09 12:11:23', '2021-06-09 12:11:23'),
(50, 'Judah Sauer', 'dbarrows', 'miracle96@example.org', NULL, '2021-06-09 12:11:21', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'L4QfC9sqAY', '2021-06-09 12:11:23', '2021-06-09 12:11:23'),
(51, 'Joel Schuster IV', 'flarkin', 'armand67@example.net', NULL, '2021-06-09 12:11:21', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'IfPbjrwCGP', '2021-06-09 12:11:23', '2021-06-09 12:11:23'),
(52, 'Jaime Cronin V', 'kacie.oconner', 'brenda69@example.net', NULL, '2021-06-09 12:11:21', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'BZmrSIUmTI', '2021-06-09 12:11:23', '2021-06-09 12:11:23'),
(53, 'Mr. Merlin Zulauf', 'deron16', 'eliseo.mclaughlin@example.org', NULL, '2021-06-09 12:11:21', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'GTHf1ezmdy', '2021-06-09 12:11:23', '2021-06-09 12:11:23'),
(54, 'Darrick Miller', 'luettgen.javon', 'uconnelly@example.com', NULL, '2021-06-09 12:11:21', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'mpRp7kmanx', '2021-06-09 12:11:23', '2021-06-09 12:11:23'),
(55, 'Kirstin Buckridge', 'lelah23', 'swift.ariane@example.com', NULL, '2021-06-09 12:11:21', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'PxWh3lh2ql', '2021-06-09 12:11:23', '2021-06-09 12:11:23'),
(56, 'Jessyca Baumbach', 'imosciski', 'wolf.lenny@example.net', NULL, '2021-06-09 12:11:21', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'xoqcJX95i4', '2021-06-09 12:11:23', '2021-06-09 12:11:23'),
(57, 'Sylvia Nolan', 'ally07', 'afton21@example.com', NULL, '2021-06-09 12:11:21', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'S8CjLHIGCn', '2021-06-09 12:11:23', '2021-06-09 12:11:23'),
(58, 'Vidal Cronin', 'clint37', 'dale94@example.com', NULL, '2021-06-09 12:11:21', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '5nvGEyh1Ty', '2021-06-09 12:11:23', '2021-06-09 12:11:23'),
(59, 'Ms. Joanie Ward IV', 'yhauck', 'sbarrows@example.net', NULL, '2021-06-09 12:11:21', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'eU9NZoPErg', '2021-06-09 12:11:23', '2021-06-09 12:11:23'),
(60, 'Prof. Consuelo Turner', 'ccrona', 'julian.ortiz@example.com', NULL, '2021-06-09 12:11:21', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'kdOvphGMBE', '2021-06-09 12:11:23', '2021-06-09 12:11:23'),
(61, 'Janie Cormier', 'xander53', 'kaci.gutkowski@example.org', NULL, '2021-06-09 12:11:21', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'WKYYI8vdqV', '2021-06-09 12:11:23', '2021-06-09 12:11:23'),
(62, 'Terence Lakin MD', 'benny.bergstrom', 'windler.kim@example.org', NULL, '2021-06-09 12:11:21', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '9EeUEd7Fjo', '2021-06-09 12:11:23', '2021-06-09 12:11:23'),
(63, 'Sophia Metz', 'sjaskolski', 'xferry@example.com', NULL, '2021-06-09 12:11:21', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '9BBObtaxbC', '2021-06-09 12:11:23', '2021-06-09 12:11:23'),
(64, 'Jakob Jacobson', 'lesley.conroy', 'beth91@example.net', NULL, '2021-06-09 12:11:21', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'pfHgFl3hDn', '2021-06-09 12:11:23', '2021-06-09 12:11:23'),
(65, 'Cory Hudson', 'blangosh', 'stamm.tia@example.com', NULL, '2021-06-09 12:11:21', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'PCMOBPk1BQ', '2021-06-09 12:11:23', '2021-06-09 12:11:23'),
(66, 'Mr. Hans Pouros', 'jedidiah48', 'giovanni30@example.net', NULL, '2021-06-09 12:11:21', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'B9vTRXDHUf', '2021-06-09 12:11:23', '2021-06-09 12:11:23'),
(67, 'Garrett Weissnat', 'ocrona', 'alexander.oberbrunner@example.net', NULL, '2021-06-09 12:11:21', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'ONHzf4KUUD', '2021-06-09 12:11:23', '2021-06-09 12:11:23'),
(68, 'Prof. Leatha Auer IV', 'rosie25', 'thelma22@example.com', NULL, '2021-06-09 12:11:21', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'oJBeUQrB7R', '2021-06-09 12:11:23', '2021-06-09 12:11:23'),
(69, 'Maida Rutherford', 'roger.hegmann', 'vivianne27@example.org', NULL, '2021-06-09 12:11:21', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'ApMeTvTLHB', '2021-06-09 12:11:23', '2021-06-09 12:11:23'),
(70, 'Donny Rempel I', 'shanna.beier', 'antonetta.jakubowski@example.org', NULL, '2021-06-09 12:11:21', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'Gce5EwIxrz', '2021-06-09 12:11:23', '2021-06-09 12:11:23'),
(71, 'Ahmed Renner', 'kfeeney', 'vsauer@example.com', NULL, '2021-06-09 12:11:21', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'cH6UIEPmlM', '2021-06-09 12:11:23', '2021-06-09 12:11:23'),
(72, 'Ms. Damaris Keeling MD', 'dora65', 'raegan54@example.net', NULL, '2021-06-09 12:11:21', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'p8GsAEPzMx', '2021-06-09 12:11:23', '2021-06-09 12:11:23'),
(73, 'Sherman Cronin', 'heathcote.rico', 'zfeil@example.net', NULL, '2021-06-09 12:11:21', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'fGxO5hyf7N', '2021-06-09 12:11:23', '2021-06-09 12:11:23'),
(74, 'Okey Flatley V', 'gus.schowalter', 'citlalli.damore@example.com', NULL, '2021-06-09 12:11:21', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'TQOSxn6A6V', '2021-06-09 12:11:23', '2021-06-09 12:11:23'),
(75, 'Novella Gorczany', 'jwaters', 'boyer.vergie@example.org', NULL, '2021-06-09 12:11:21', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'csIFn4ZWqb', '2021-06-09 12:11:23', '2021-06-09 12:11:23'),
(76, 'Efrain Fisher', 'kristy23', 'gottlieb.wilmer@example.org', NULL, '2021-06-09 12:11:21', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'q0eN5l5qcY', '2021-06-09 12:11:23', '2021-06-09 12:11:23'),
(77, 'Fannie Runolfsson', 'dejuan51', 'hschmidt@example.net', NULL, '2021-06-09 12:11:21', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'U7p252C9k7', '2021-06-09 12:11:23', '2021-06-09 12:11:23'),
(78, 'Dorris Wiegand', 'ghowe', 'lonzo48@example.org', NULL, '2021-06-09 12:11:21', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'vkbmRdnprL', '2021-06-09 12:11:23', '2021-06-09 12:11:23'),
(79, 'Prof. Madelyn Waelchi', 'hamill.tanya', 'lbatz@example.org', NULL, '2021-06-09 12:11:21', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'ucqKvv77K1', '2021-06-09 12:11:24', '2021-06-09 12:11:24'),
(80, 'Dr. Tristin Brakus V', 'xaltenwerth', 'jillian.heaney@example.com', NULL, '2021-06-09 12:11:21', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'fzs0KDeOfL', '2021-06-09 12:11:24', '2021-06-09 12:11:24'),
(81, 'Leslie Nader', 'waters.aaron', 'ernestina37@example.com', NULL, '2021-06-09 12:11:21', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'rhT6LJhapW', '2021-06-09 12:11:24', '2021-06-09 12:11:24'),
(82, 'Miss Ara DuBuque DVM', 'volkman.hope', 'rebeca.brakus@example.org', NULL, '2021-06-09 12:11:21', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'dUIxOzSLng', '2021-06-09 12:11:24', '2021-06-09 12:11:24'),
(83, 'Claud Schuster', 'donato.schuster', 'chelsie.keebler@example.org', NULL, '2021-06-09 12:11:21', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '44136ArTVn', '2021-06-09 12:11:24', '2021-06-09 12:11:24'),
(84, 'Demarcus Ryan', 'spinka.josefina', 'arlo16@example.net', NULL, '2021-06-09 12:11:21', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'jvcIt4s6CK', '2021-06-09 12:11:24', '2021-06-09 12:11:24'),
(85, 'Mrs. Nyah Borer I', 'berta09', 'miracle.stamm@example.com', NULL, '2021-06-09 12:11:21', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'KmY0Qmh5j6', '2021-06-09 12:11:24', '2021-06-09 12:11:24'),
(86, 'Ms. Nelle Rodriguez', 'amir.kreiger', 'koch.cathy@example.com', NULL, '2021-06-09 12:11:21', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'ZegzeSGOjt', '2021-06-09 12:11:24', '2021-06-09 12:11:24'),
(87, 'Sherman Romaguera', 'harold.bernier', 'myron.jerde@example.com', NULL, '2021-06-09 12:11:21', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'd8dOU1gOby', '2021-06-09 12:11:24', '2021-06-09 12:11:24'),
(88, 'Prof. Amelia Leannon', 'kling.armani', 'ispinka@example.net', NULL, '2021-06-09 12:11:21', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'kfOkSurllo', '2021-06-09 12:11:24', '2021-06-09 12:11:24'),
(89, 'Jefferey Torphy', 'coy37', 'emcglynn@example.net', NULL, '2021-06-09 12:11:21', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'aDB6accTaV', '2021-06-09 12:11:24', '2021-06-09 12:11:24'),
(90, 'Rahsaan Predovic', 'bartoletti.orville', 'koepp.marc@example.net', NULL, '2021-06-09 12:11:21', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'nY7E8DoVdf', '2021-06-09 12:11:24', '2021-06-09 12:11:24'),
(91, 'Estevan Dickens', 'stokes.natalie', 'jarmstrong@example.com', NULL, '2021-06-09 12:11:21', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'CPk4pPYWon', '2021-06-09 12:11:24', '2021-06-09 12:11:24'),
(92, 'Miss Alison Wyman IV', 'elenora.schulist', 'sdietrich@example.com', NULL, '2021-06-09 12:11:21', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'zanrN79gAa', '2021-06-09 12:11:24', '2021-06-09 12:11:24'),
(93, 'Elyse Gusikowski Jr.', 'renee84', 'schinner.alyson@example.com', NULL, '2021-06-09 12:11:21', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'CYsSWGC06o', '2021-06-09 12:11:24', '2021-06-09 12:11:24'),
(94, 'Mr. Kay Rogahn Sr.', 'carlo.lakin', 'providenci64@example.net', NULL, '2021-06-09 12:11:21', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'H8HSccQDhk', '2021-06-09 12:11:24', '2021-06-09 12:11:24'),
(95, 'Vallie Bauch PhD', 'arden.farrell', 'carli27@example.com', NULL, '2021-06-09 12:11:21', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'ejjbBjEULA', '2021-06-09 12:11:24', '2021-06-09 12:11:24'),
(96, 'Miss Glenna Kertzmann', 'ipaucek', 'melyssa58@example.net', NULL, '2021-06-09 12:11:21', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'Zl7pSvn7Vn', '2021-06-09 12:11:24', '2021-06-09 12:11:24'),
(97, 'Mrs. Margarette Fisher V', 'ambrose.ziemann', 'kshlerin.roman@example.com', NULL, '2021-06-09 12:11:21', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'l4XhZhA4hK', '2021-06-09 12:11:24', '2021-06-09 12:11:24'),
(98, 'Wayne Tromp', 'gutkowski.rocio', 'rebeka56@example.org', NULL, '2021-06-09 12:11:21', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'rPLhzrvrOf', '2021-06-09 12:11:24', '2021-06-09 12:11:24'),
(99, 'Eddie Kuvalis DDS', 'gerlach.mekhi', 'kohler.kayli@example.org', NULL, '2021-06-09 12:11:21', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'wAl8PULh6h', '2021-06-09 12:11:24', '2021-06-09 12:11:24'),
(100, 'Mrs. Drew Hauck', 'bchristiansen', 'tfadel@example.com', NULL, '2021-06-09 12:11:21', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '1omyXtqnkt', '2021-06-09 12:11:24', '2021-06-09 12:11:24'),
(101, 'Ms. Dena Buckridge IV', 'wfahey', 'genesis22@example.com', NULL, '2021-06-09 12:11:21', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'ctJQp0hCTe', '2021-06-09 12:11:24', '2021-06-09 12:11:24'),
(102, 'Ivory Hoeger IV', 'lamont.vandervort', 'vella90@example.com', NULL, '2021-06-09 12:11:21', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'wZGu8jI3FC', '2021-06-09 12:11:24', '2021-06-09 12:11:24'),
(103, 'Ms. Alejandra Bechtelar', 'vhowe', 'tina.sporer@example.net', NULL, '2021-06-09 12:11:24', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '9elKzmgH1C', '2021-06-09 12:11:24', '2021-06-09 12:11:24'),
(104, 'Lorine Baumbach', 'haag.randi', 'hobart.erdman@example.org', NULL, '2021-06-09 12:11:25', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'uJS6dUImds', '2021-06-09 12:11:25', '2021-06-09 12:11:25'),
(105, 'Mrs. Nicolette Douglas I', 'lockman.kasey', 'brayan.ebert@example.com', NULL, '2021-06-09 12:11:25', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '86wYKYsmK4', '2021-06-09 12:11:25', '2021-06-09 12:11:25'),
(106, 'Dr. Skylar Terry DDS', 'daugherty.forrest', 'mclaughlin.kaelyn@example.com', NULL, '2021-06-09 12:11:25', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'r3ZIOXh1hb', '2021-06-09 12:11:25', '2021-06-09 12:11:25'),
(107, 'Ms. Addie Lowe', 'ncronin', 'elvie15@example.net', NULL, '2021-06-09 12:11:25', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'AFAYko1bXc', '2021-06-09 12:11:25', '2021-06-09 12:11:25'),
(108, 'Christop Dicki', 'armani30', 'emmy.keeling@example.net', NULL, '2021-06-09 12:11:25', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'VUdkWGmCQM', '2021-06-09 12:11:25', '2021-06-09 12:11:25'),
(109, 'Shirley Gutmann DVM', 'iva94', 'isaiah.oconner@example.com', NULL, '2021-06-09 12:11:25', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'aTpqGVADyb', '2021-06-09 12:11:25', '2021-06-09 12:11:25'),
(110, 'Hollis Stamm', 'christop91', 'helena.hermiston@example.net', NULL, '2021-06-09 12:11:25', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'iEzlqpHspr', '2021-06-09 12:11:25', '2021-06-09 12:11:25'),
(111, 'Dr. Darrin Legros', 'qrunte', 'dach.harmony@example.org', NULL, '2021-06-09 12:11:25', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'klL4ZnGrFT', '2021-06-09 12:11:25', '2021-06-09 12:11:25'),
(112, 'Prof. Kellie Keebler PhD', 'efren43', 'ngreenholt@example.com', NULL, '2021-06-09 12:11:25', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'khSfeiWsYU', '2021-06-09 12:11:25', '2021-06-09 12:11:25'),
(113, 'Arne Nienow V', 'trunolfsson', 'jasmin28@example.com', NULL, '2021-06-09 12:11:25', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'h1m0bYXwIb', '2021-06-09 12:11:25', '2021-06-09 12:11:25'),
(114, 'Dr. Tracey Hilpert', 'kristofer.keeling', 'florencio.treutel@example.com', NULL, '2021-06-09 12:11:25', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'Wlowu2zklO', '2021-06-09 12:11:25', '2021-06-09 12:11:25'),
(115, 'Cortney Carroll', 'shyanne09', 'wendy.nader@example.com', NULL, '2021-06-09 12:11:25', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'K5y5UopIQc', '2021-06-09 12:11:25', '2021-06-09 12:11:25'),
(116, 'Mrs. Lura Sporer', 'fdicki', 'unique22@example.com', NULL, '2021-06-09 12:11:25', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'F1ZwJ3tAOA', '2021-06-09 12:11:25', '2021-06-09 12:11:25'),
(117, 'Carlie O\'Kon', 'murl.anderson', 'brock.kunze@example.org', NULL, '2021-06-09 12:11:25', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'qOlYU3E5fE', '2021-06-09 12:11:25', '2021-06-09 12:11:25'),
(118, 'Werner Dooley DDS', 'leonardo15', 'katelyn.russel@example.com', NULL, '2021-06-09 12:11:26', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'gibiKD7bVJ', '2021-06-09 12:11:26', '2021-06-09 12:11:26'),
(119, 'Miss Savanna Welch DDS', 'tbeer', 'iskiles@example.com', NULL, '2021-06-09 12:11:26', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '552y6Y4xvM', '2021-06-09 12:11:26', '2021-06-09 12:11:26'),
(120, 'Dr. Diana Romaguera V', 'wilbert.kovacek', 'erdman.tressa@example.org', NULL, '2021-06-09 12:11:26', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'iUcumdaRef', '2021-06-09 12:11:26', '2021-06-09 12:11:26'),
(121, 'Mathilde Emmerich PhD', 'durgan.faye', 'sigmund88@example.net', NULL, '2021-06-09 12:11:26', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'XBfI6bsfXA', '2021-06-09 12:11:26', '2021-06-09 12:11:26'),
(122, 'Dr. Kennedy Altenwerth', 'parisian.bette', 'wuckert.hilma@example.net', NULL, '2021-06-09 12:11:26', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '6HUGKaCRjn', '2021-06-09 12:11:26', '2021-06-09 12:11:26'),
(123, 'Itzel Ankunding III', 'erna.pfannerstill', 'wiza.jada@example.org', NULL, '2021-06-09 12:11:26', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'BL4foq0Ixz', '2021-06-09 12:11:26', '2021-06-09 12:11:26'),
(124, 'Valentin Little', 'hlowe', 'destiney.kiehn@example.com', NULL, '2021-06-09 12:11:26', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'hKggxa2Va7', '2021-06-09 12:11:26', '2021-06-09 12:11:26'),
(125, 'Cameron Will', 'murphy.leila', 'uarmstrong@example.org', NULL, '2021-06-09 12:11:26', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'tAd0LRXBE4', '2021-06-09 12:11:26', '2021-06-09 12:11:26'),
(126, 'Daniela Boyle', 'cgibson', 'hilbert.koepp@example.net', NULL, '2021-06-09 12:11:27', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'BcO4HQzFX2', '2021-06-09 12:11:27', '2021-06-09 12:11:27'),
(127, 'Bethany Luettgen', 'hkunze', 'tlueilwitz@example.net', NULL, '2021-06-09 12:11:27', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'OqAMQSJToV', '2021-06-09 12:11:27', '2021-06-09 12:11:27'),
(128, 'Mariana Kuvalis', 'bwest', 'pouros.moises@example.net', NULL, '2021-06-09 12:11:27', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '5tGeeV0lOy', '2021-06-09 12:11:27', '2021-06-09 12:11:27'),
(129, 'Dr. Chance Mosciski', 'leonardo23', 'zrowe@example.com', NULL, '2021-06-09 12:11:27', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'DT33betjQY', '2021-06-09 12:11:27', '2021-06-09 12:11:27'),
(130, 'Miss Rachel Brown', 'gail.mccullough', 'brooke.mccullough@example.com', NULL, '2021-06-09 12:11:27', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'BiKYGb0n36', '2021-06-09 12:11:27', '2021-06-09 12:11:27'),
(131, 'Eveline Zemlak', 'boyle.scot', 'awaters@example.com', NULL, '2021-06-09 12:11:27', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'rpdAJtOYjT', '2021-06-09 12:11:27', '2021-06-09 12:11:27'),
(132, 'Dr. Mathias Cormier', 'mia65', 'gibson.abagail@example.com', NULL, '2021-06-09 12:11:27', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'vPvSFbK3DO', '2021-06-09 12:11:27', '2021-06-09 12:11:27'),
(133, 'Johanna Goyette PhD', 'wlemke', 'aurelio.monahan@example.org', NULL, '2021-06-09 12:11:27', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'PtDayOrLI5', '2021-06-09 12:11:27', '2021-06-09 12:11:27'),
(134, 'Mrs. Cassandre Durgan Jr.', 'rhammes', 'tcronin@example.net', NULL, '2021-06-09 12:11:27', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'xC8IoDDIWh', '2021-06-09 12:11:27', '2021-06-09 12:11:27'),
(135, 'Prof. Isaias Boyle MD', 'wjacobs', 'conroy.rodger@example.com', NULL, '2021-06-09 12:11:27', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'lvuoNgyRhK', '2021-06-09 12:11:27', '2021-06-09 12:11:27'),
(136, 'Ford McDermott', 'chet.bins', 'goyette.constance@example.net', NULL, '2021-06-09 12:11:28', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'EFQ8Zhqmpg', '2021-06-09 12:11:28', '2021-06-09 12:11:28'),
(137, 'Josh Abbott', 'alisa.ryan', 'santa.weissnat@example.net', NULL, '2021-06-09 12:11:28', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'lJdK87SccA', '2021-06-09 12:11:28', '2021-06-09 12:11:28'),
(138, 'Miles Lockman Jr.', 'haag.keyon', 'dominique.veum@example.com', NULL, '2021-06-09 12:11:28', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'dXW7W3r33F', '2021-06-09 12:11:28', '2021-06-09 12:11:28'),
(139, 'Prof. Kamille Deckow', 'isidro.daugherty', 'myrl.jacobs@example.org', NULL, '2021-06-09 12:11:28', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'FDeMy2udgL', '2021-06-09 12:11:28', '2021-06-09 12:11:28'),
(140, 'Bertram Altenwerth MD', 'maybell.krajcik', 'justina.damore@example.com', NULL, '2021-06-09 12:11:28', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'z6Wuc5lmGQ', '2021-06-09 12:11:28', '2021-06-09 12:11:28'),
(141, 'Arvel Kutch', 'dooley.gladyce', 'lenny.becker@example.com', NULL, '2021-06-09 12:11:28', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'tI6eN4AW6P', '2021-06-09 12:11:28', '2021-06-09 12:11:28'),
(142, 'Jaime Effertz', 'melvina.wehner', 'meichmann@example.org', NULL, '2021-06-09 12:11:28', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'bME9FdApkZ', '2021-06-09 12:11:28', '2021-06-09 12:11:28'),
(143, 'Clyde Kuvalis II', 'della.batz', 'ezra17@example.org', NULL, '2021-06-09 12:11:28', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'tP54BOKjW5', '2021-06-09 12:11:28', '2021-06-09 12:11:28'),
(144, 'Elmore Corkery III', 'marvin.nathanial', 'orobel@example.com', NULL, '2021-06-09 12:11:28', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'Eyw585pFar', '2021-06-09 12:11:28', '2021-06-09 12:11:28'),
(145, 'Ally Blick', 'wanda.stracke', 'maggie.boehm@example.org', NULL, '2021-06-09 12:11:28', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '2DJl6hOCsK', '2021-06-09 12:11:28', '2021-06-09 12:11:28'),
(146, 'Mrs. Modesta Yost II', 'julien.reynolds', 'emard.dena@example.org', NULL, '2021-06-09 12:11:28', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'p6uXHTWlYL', '2021-06-09 12:11:28', '2021-06-09 12:11:28'),
(147, 'Gerard Borer', 'legros.jakayla', 'gnitzsche@example.net', NULL, '2021-06-09 12:11:28', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'TIgBCgAFb2', '2021-06-09 12:11:28', '2021-06-09 12:11:28'),
(148, 'Miss Lue Bergnaum V', 'dmaggio', 'rodger.wehner@example.org', NULL, '2021-06-09 12:11:29', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '4ZSQLfIlox', '2021-06-09 12:11:29', '2021-06-09 12:11:29'),
(149, 'Mr. Clemens Crist', 'pagac.adolfo', 'tanner14@example.com', NULL, '2021-06-09 12:11:29', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'gWCjbzboRt', '2021-06-09 12:11:29', '2021-06-09 12:11:29'),
(150, 'Dereck Steuber', 'dayton.hackett', 'watsica.edison@example.org', NULL, '2021-06-09 12:11:29', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'xQhZK17p2p', '2021-06-09 12:11:29', '2021-06-09 12:11:29'),
(151, 'Marion Bailey', 'zella26', 'araceli.kulas@example.net', NULL, '2021-06-09 12:11:29', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'xXSNmPtHpp', '2021-06-09 12:11:29', '2021-06-09 12:11:29'),
(152, 'Jacynthe Hickle', 'kuhic.magnus', 'autumn.waelchi@example.net', NULL, '2021-06-09 12:11:29', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'JV8XOrhqeV', '2021-06-09 12:11:29', '2021-06-09 12:11:29'),
(153, 'Dejon Fadel', 'langworth.caitlyn', 'clement04@example.org', NULL, '2021-06-09 12:11:29', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'D5gP91ZUju', '2021-06-09 12:11:29', '2021-06-09 12:11:29'),
(154, 'Richard Schamberger Jr.', 'mkuphal', 'kathlyn.brown@example.net', NULL, '2021-06-09 12:11:29', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'xAtZptx0y3', '2021-06-09 12:11:29', '2021-06-09 12:11:29'),
(155, 'Sienna Buckridge', 'rabbott', 'corwin.corrine@example.com', NULL, '2021-06-09 12:11:29', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'VBYFH8Fb4N', '2021-06-09 12:11:29', '2021-06-09 12:11:29'),
(156, 'Lavonne Feeney', 'rocio52', 'ernesto.kautzer@example.org', NULL, '2021-06-09 12:11:29', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'VDpfrmkvqJ', '2021-06-09 12:11:29', '2021-06-09 12:11:29'),
(157, 'Brisa Kreiger', 'lucy84', 'vcummings@example.net', NULL, '2021-06-09 12:11:29', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'U8DVs3TqIF', '2021-06-09 12:11:29', '2021-06-09 12:11:29'),
(158, 'Dangelo Olson', 'ipadberg', 'casimir39@example.org', NULL, '2021-06-09 12:11:29', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'VNpUs365IB', '2021-06-09 12:11:29', '2021-06-09 12:11:29'),
(159, 'Dr. Luz Mann Jr.', 'xhamill', 'catalina09@example.com', NULL, '2021-06-09 12:11:29', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'ODzJKUYjOB', '2021-06-09 12:11:29', '2021-06-09 12:11:29'),
(160, 'Nikki Boyer', 'lindgren.pearlie', 'delbert67@example.net', NULL, '2021-06-09 12:11:29', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '7NNNWOdMEM', '2021-06-09 12:11:29', '2021-06-09 12:11:29'),
(161, 'Wallace Wilkinson', 'knader', 'laurianne04@example.net', NULL, '2021-06-09 12:11:29', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'xcSQU8OJmp', '2021-06-09 12:11:29', '2021-06-09 12:11:29'),
(162, 'Dr. Jacynthe Veum II', 'roselyn.ullrich', 'swift.arnulfo@example.net', NULL, '2021-06-09 12:11:30', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'biklEZP8yx', '2021-06-09 12:11:30', '2021-06-09 12:11:30'),
(163, 'Derek Stamm', 'xsanford', 'jordane26@example.org', NULL, '2021-06-09 12:11:30', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'kZi8ZsoyHH', '2021-06-09 12:11:30', '2021-06-09 12:11:30'),
(164, 'Dr. Hoyt Zemlak DVM', 'harley.stroman', 'august57@example.com', NULL, '2021-06-09 12:11:30', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'mHg14A4WUi', '2021-06-09 12:11:30', '2021-06-09 12:11:30'),
(165, 'Miss Beverly Ruecker III', 'mpouros', 'damien.reynolds@example.com', NULL, '2021-06-09 12:11:30', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'SHy94C7y03', '2021-06-09 12:11:30', '2021-06-09 12:11:30'),
(166, 'Neil Crona', 'austin92', 'anya77@example.com', NULL, '2021-06-09 12:11:30', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'M5KvDKnQXX', '2021-06-09 12:11:30', '2021-06-09 12:11:30'),
(167, 'Mr. Saige Fritsch', 'braynor', 'aaron.kshlerin@example.net', NULL, '2021-06-09 12:11:30', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'uF7peX2tDS', '2021-06-09 12:11:30', '2021-06-09 12:11:30'),
(168, 'Marisol Keeling', 'eruecker', 'minnie42@example.com', NULL, '2021-06-09 12:11:30', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'eA7Oh9KpPJ', '2021-06-09 12:11:30', '2021-06-09 12:11:30'),
(169, 'Lavonne Wintheiser', 'aditya17', 'coby11@example.net', NULL, '2021-06-09 12:11:30', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'PsUIjlMh8O', '2021-06-09 12:11:30', '2021-06-09 12:11:30'),
(170, 'Jerod Boyle', 'darron.torphy', 'amira65@example.net', NULL, '2021-06-09 12:11:30', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'ohlPge7oYM', '2021-06-09 12:11:30', '2021-06-09 12:11:30'),
(171, 'Katelin Wintheiser', 'frank.baumbach', 'irunte@example.com', NULL, '2021-06-09 12:11:30', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'biOIOaDtYG', '2021-06-09 12:11:30', '2021-06-09 12:11:30'),
(172, 'Kaleb Lockman', 'vwatsica', 'little.delaney@example.org', NULL, '2021-06-09 12:11:30', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'OAm8PjWw4u', '2021-06-09 12:11:30', '2021-06-09 12:11:30'),
(173, 'Bert Casper', 'schroeder.gracie', 'graham.ross@example.net', NULL, '2021-06-09 12:11:30', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 's2O8TMwqLp', '2021-06-09 12:11:30', '2021-06-09 12:11:30'),
(174, 'Ottilie Abshire', 'candace.hoppe', 'frederick72@example.com', NULL, '2021-06-09 12:11:31', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'gsUvR4ledQ', '2021-06-09 12:11:31', '2021-06-09 12:11:31'),
(175, 'Elmo Gusikowski I', 'rolando.dooley', 'grice@example.org', NULL, '2021-06-09 12:11:31', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'XJdNbHPYOG', '2021-06-09 12:11:31', '2021-06-09 12:11:31'),
(176, 'Mrs. Keara Dicki', 'felix.kovacek', 'dsipes@example.net', NULL, '2021-06-09 12:11:31', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '2RmyDfbFBj', '2021-06-09 12:11:31', '2021-06-09 12:11:31'),
(177, 'Darrion Crona', 'jerrell.kuhic', 'tom12@example.com', NULL, '2021-06-09 12:11:31', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'J1Oya2Fl1U', '2021-06-09 12:11:31', '2021-06-09 12:11:31'),
(178, 'Noemie Nicolas', 'wmurray', 'pansy.schoen@example.com', NULL, '2021-06-09 12:11:31', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'HThPDCiupo', '2021-06-09 12:11:31', '2021-06-09 12:11:31'),
(179, 'Gwendolyn Wuckert III', 'brendan.corkery', 'monty.berge@example.net', NULL, '2021-06-09 12:11:31', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'HQyI7odPxE', '2021-06-09 12:11:31', '2021-06-09 12:11:31'),
(180, 'Keshawn Graham', 'darrin.lang', 'penelope.bradtke@example.com', NULL, '2021-06-09 12:11:31', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'h55GAOO6Lb', '2021-06-09 12:11:31', '2021-06-09 12:11:31'),
(181, 'Neva Grimes Jr.', 'rutherford.jed', 'cole.sharon@example.com', NULL, '2021-06-09 12:11:31', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '4Un1bBrMJ2', '2021-06-09 12:11:31', '2021-06-09 12:11:31'),
(182, 'Daphne Reinger', 'lura.thiel', 'jgoldner@example.org', NULL, '2021-06-09 12:11:31', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'i5nrcNwdh9', '2021-06-09 12:11:31', '2021-06-09 12:11:31'),
(183, 'Noelia Harvey', 'thiel.aleen', 'amelie33@example.org', NULL, '2021-06-09 12:11:31', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'S4OK6cwo0t', '2021-06-09 12:11:31', '2021-06-09 12:11:31'),
(184, 'Miss Lucile Eichmann II', 'keon.kemmer', 'keagan.balistreri@example.com', NULL, '2021-06-09 12:11:31', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'mXtwsGod9b', '2021-06-09 12:11:31', '2021-06-09 12:11:31'),
(185, 'Prof. Kaley Oberbrunner', 'oswaldo60', 'vkunde@example.org', NULL, '2021-06-09 12:11:31', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'SYDEN9cryS', '2021-06-09 12:11:31', '2021-06-09 12:11:31'),
(186, 'Jeremie Streich', 'tamia.abshire', 'prince94@example.net', NULL, '2021-06-09 12:11:32', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'K0j4jskNFn', '2021-06-09 12:11:32', '2021-06-09 12:11:32'),
(187, 'Kolby Schmidt II', 'juliet.fadel', 'sarah.sporer@example.com', NULL, '2021-06-09 12:11:32', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'GKdbxquiV2', '2021-06-09 12:11:32', '2021-06-09 12:11:32'),
(188, 'Mathilde Maggio', 'noel.friesen', 'cordelia85@example.com', NULL, '2021-06-09 12:11:32', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'Mu3zKwxD3H', '2021-06-09 12:11:32', '2021-06-09 12:11:32'),
(189, 'Roma Daniel PhD', 'scotty.herzog', 'mckenzie.clifton@example.com', NULL, '2021-06-09 12:11:32', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'KsMGy4XFZk', '2021-06-09 12:11:32', '2021-06-09 12:11:32'),
(190, 'Ms. Hillary Cartwright DDS', 'jbernhard', 'leta.smith@example.com', NULL, '2021-06-09 12:11:32', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'Ho6nAn9n2f', '2021-06-09 12:11:32', '2021-06-09 12:11:32'),
(191, 'Berniece Gaylord', 'colby.crona', 'ulakin@example.net', NULL, '2021-06-09 12:11:32', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'vFYhVUwzSt', '2021-06-09 12:11:32', '2021-06-09 12:11:32'),
(192, 'Dr. Hollie Williamson I', 'zieme.dariana', 'kulas.braden@example.com', NULL, '2021-06-09 12:11:32', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'd6csQh63xH', '2021-06-09 12:11:32', '2021-06-09 12:11:32'),
(193, 'Mrs. Jeanne Medhurst MD', 'omari36', 'oberbrunner.toy@example.net', NULL, '2021-06-09 12:11:32', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '3PQQpmWcjh', '2021-06-09 12:11:32', '2021-06-09 12:11:32'),
(194, 'Dr. Destiney Cruickshank', 'shyanne.hilpert', 'oullrich@example.com', NULL, '2021-06-09 12:11:32', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '3kVvmZHfkf', '2021-06-09 12:11:32', '2021-06-09 12:11:32'),
(195, 'Lorna Kuhn', 'gregorio21', 'pkozey@example.net', NULL, '2021-06-09 12:11:32', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '4RJIqFX0pu', '2021-06-09 12:11:32', '2021-06-09 12:11:32'),
(196, 'Ezekiel VonRueden', 'jerome10', 'durgan.irwin@example.com', NULL, '2021-06-09 12:11:33', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '7isRtvv19Y', '2021-06-09 12:11:33', '2021-06-09 12:11:33'),
(197, 'Kayla Gerlach DDS', 'orville.hilpert', 'dparker@example.org', NULL, '2021-06-09 12:11:33', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '6n6r7Qz4Ua', '2021-06-09 12:11:33', '2021-06-09 12:11:33'),
(198, 'Mittie Hartmann', 'keith.klocko', 'fhickle@example.com', NULL, '2021-06-09 12:11:33', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '6U41WM4Ntj', '2021-06-09 12:11:33', '2021-06-09 12:11:33'),
(199, 'Maryjane Morissette', 'dorian17', 'vdicki@example.net', NULL, '2021-06-09 12:11:33', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'OFARjwRrPV', '2021-06-09 12:11:33', '2021-06-09 12:11:33'),
(200, 'Chauncey Schultz', 'chagenes', 'dameon.stanton@example.com', NULL, '2021-06-09 12:11:33', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'YC1uD0XhCs', '2021-06-09 12:11:33', '2021-06-09 12:11:33'),
(201, 'Miss Evangeline Tillman I', 'vmorar', 'estevan.wuckert@example.net', NULL, '2021-06-09 12:11:33', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'iheIgJssy4', '2021-06-09 12:11:33', '2021-06-09 12:11:33'),
(202, 'Milton Volkman', 'jstark', 'veum.moises@example.org', NULL, '2021-06-09 12:11:33', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'ly5WLyTRwM', '2021-06-09 12:11:33', '2021-06-09 12:11:33'),
(203, 'amritpal', 'amrit136', 'amrit13@gmail.com', NULL, NULL, '$2y$10$V313Gc/v2/PWjLZTSpeL9umjSOYXT/dg8QNgIKbeN0BKoVPLDuFou', 'vPiuJVSzbCWJgnRL6J6K55pIt0ZX7vyc9lAhMQ1wI0H1CXXvJZUcVfBUAnF6', '2021-06-10 07:29:30', '2021-06-10 10:29:03');

--
-- Indexes for dumped tables
--

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
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `permissions_name_unique` (`name`),
  ADD UNIQUE KEY `permissions_slug_unique` (`slug`);

--
-- Indexes for table `permission_role`
--
ALTER TABLE `permission_role`
  ADD PRIMARY KEY (`permission_id`,`role_id`),
  ADD KEY `permission_role_role_id_foreign` (`role_id`);

--
-- Indexes for table `permission_user`
--
ALTER TABLE `permission_user`
  ADD PRIMARY KEY (`user_id`,`permission_id`),
  ADD KEY `permission_user_permission_id_foreign` (`permission_id`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `posts_user_id_foreign` (`user_id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `roles_name_unique` (`name`),
  ADD UNIQUE KEY `roles_slug_unique` (`slug`);

--
-- Indexes for table `role_user`
--
ALTER TABLE `role_user`
  ADD PRIMARY KEY (`user_id`,`role_id`),
  ADD KEY `role_user_role_id_foreign` (`role_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_username_unique` (`username`),
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
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=101;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=204;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `permission_role`
--
ALTER TABLE `permission_role`
  ADD CONSTRAINT `permission_role_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `permission_role_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `permission_user`
--
ALTER TABLE `permission_user`
  ADD CONSTRAINT `permission_user_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `permission_user_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `posts`
--
ALTER TABLE `posts`
  ADD CONSTRAINT `posts_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `role_user`
--
ALTER TABLE `role_user`
  ADD CONSTRAINT `role_user_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `role_user_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
