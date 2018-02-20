-- phpMyAdmin SQL Dump
-- version 4.6.4deb1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Feb 20, 2018 at 09:23 AM
-- Server version: 10.0.29-MariaDB-0ubuntu0.16.10.1
-- PHP Version: 7.0.18-0ubuntu0.16.10.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `land`
--

-- --------------------------------------------------------

--
-- Table structure for table `logos1`
--

CREATE TABLE `logos1` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `images` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `favicons` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `logos1`
--

INSERT INTO `logos1` (`id`, `name`, `images`, `favicons`, `created_at`, `updated_at`, `deleted_at`) VALUES
(10, 'logo', '/tmp/phpxK58n3', NULL, '2018-02-19 05:16:16', '2018-02-19 05:18:23', '2018-02-19 05:18:23'),
(11, 'logo', 'favicon.png', NULL, '2018-02-19 05:22:06', '2018-02-19 05:23:45', '2018-02-19 05:23:45'),
(12, 'logoFavicon', 'englSkype.jpeg', NULL, '2018-02-19 05:22:39', '2018-02-19 09:07:20', NULL);

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
(1, '2018_02_02_211520_create_table_portfolios1', 1),
(2, '2018_02_02_211602_create_table_peoples1', 1),
(3, '2018_02_02_211657_create_soft_deletes_table_peoples1', 1),
(4, '2018_02_02_211726_create_soft_deletes_table_portfolios1', 1),
(5, '2018_02_05_111801_create_socials1_table', 1),
(6, '2018_02_05_111900_create_logos1_table', 1),
(7, '2018_02_05_112045_create_soft_deletes_logos1_table', 1),
(8, '2018_02_05_112332_create_soft_deletes_socials1_table', 1),
(9, '2018_02_06_110136_create_portfolios1_table', 1),
(10, '2018_02_06_121253_create_social_peoples1_table', 1),
(11, '2018_02_06_122731_create_soft_deletes_social_peoples1_table', 1),
(12, '2018_02_08_232027_create_wordbooks1_table', 1),
(15, '2018_02_10_111438_create_soft_deletes_table_wordbooks1', 1),
(16, '2018_02_12_132851_create_social_peoples1', 1),
(17, '2018_02_06_110113_create_portfolios_table', 2),
(18, '2018_02_06_211726_create_soft_deletes_table_portfolios', 3),
(19, '2018_02_10_103934_create_pages1_table', 4),
(20, '2018_02_10_103935_create_soft_deletes_pages1_table', 5),
(21, '2018_02_06_110114_create_portfolios_table', 6),
(22, '2018_01_23_101315_create_table_services', 7),
(23, '2018_01_27_203012_create_soft_deletes_table_services', 7);

-- --------------------------------------------------------

--
-- Table structure for table `pages1`
--

CREATE TABLE `pages1` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `alias` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `text` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `images` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `audios` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `videos` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `portfolio_id` int(10) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `pages1`
--

INSERT INTO `pages1` (`id`, `name`, `alias`, `text`, `images`, `audios`, `videos`, `portfolio_id`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Engl Tenses', 'tenses', '<p>in a future</p>', 'engl4.png', NULL, NULL, 1, '2018-02-17 16:42:14', '2018-02-17 16:42:14', NULL),
(2, 'Future Indefinite Tens Topic #2', 'topic2', '<p>text will be here</p>', 'about-img.jpg', NULL, NULL, 1, '2018-02-17 18:17:45', '2018-02-17 18:17:45', NULL),
(3, 'Robin\'s Phrases', 'robin', '<p>1. vacation:&nbsp;When you go some where on a&nbsp;trip, we are taking a vacation.</p>\r\n\r\n<p>2. companions: Those are you</p>', 'skype Engl.jpeg', NULL, NULL, 4, '2018-02-19 08:29:15', '2018-02-19 08:29:15', NULL),
(4, 'From tests', 'test', '<p>Imtermediate:</p>\r\n\r\n<p>1.I was hungry because I had not eating any breackfast that morning.</p>', 'engl to2.png', NULL, NULL, 4, '2018-02-19 09:33:37', '2018-02-19 09:33:37', NULL),
(5, 'From Robin', 'idiom', '<p>1. Beat around a bush: when you want to heard some thing but result is false. You can say it.&nbsp;</p>\r\n\r\n<p>2. Talk am mile a minute:</p>\r\n\r\n<p>3. Shoot&nbsp;the breze: it means we are talking about nothing.&nbsp;</p>', 'engl3.png', NULL, NULL, 5, '2018-02-19 10:44:59', '2018-02-19 10:44:59', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `peoples1`
--

CREATE TABLE `peoples1` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `position` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  `text` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `images` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `peoples1`
--

INSERT INTO `peoples1` (`id`, `name`, `position`, `text`, `images`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Inna Danylevska', 'begginer', 'Something about my experience here as when I decide to understand Engl talking I would done it during 2 month because I known in which way I get it. And now I going speak Eng fluently during the same period of time...', 'myPic.jpg', '2018-02-17 17:10:20', '2018-02-17 17:10:20', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `portfolios`
--

CREATE TABLE `portfolios` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `filter` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `images` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `link` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `portfolioAll_id` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `portfolios`
--

INSERT INTO `portfolios` (`id`, `name`, `filter`, `images`, `link`, `created_at`, `updated_at`, `deleted_at`, `portfolioAll_id`) VALUES
(1, 'My Day with Engl Tenses', 'myDay', 'portfolio_pic8.jpg', 'https://www.youtube.com/watch?v=th8SNmRW69w', '2018-02-17 14:30:51', '2018-02-17 18:39:37', NULL, NULL),
(2, 'apps', 'apps', 'portfolio_pic2.jpg', 'https://www.engvid.com/', '2018-02-17 18:27:57', '2018-02-19 05:44:46', NULL, NULL),
(3, 'Questions', 'questions', 'portfolio_pic5.jpg', 'https://www.youtube.com/watch?v=2JG2qCsEPp0', '2018-02-18 14:43:08', '2018-02-18 14:43:08', NULL, NULL),
(4, 'vocabulory', 'commonwords', 'portfolio_pic3.jpg', 'www', '2018-02-19 07:18:16', '2018-02-19 08:40:43', NULL, NULL),
(5, 'Idioms', 'idioms', 'portfolio_pic1.jpg', 'ww', '2018-02-19 10:36:53', '2018-02-19 10:36:53', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `portfolios1`
--

CREATE TABLE `portfolios1` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `filter` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `images` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `link` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `services`
--

CREATE TABLE `services` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `text` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `icon` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `socialpeoples1`
--

CREATE TABLE `socialpeoples1` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `link` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `callBack` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `people_id` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `socialpeoples1`
--

INSERT INTO `socialpeoples1` (`id`, `name`, `link`, `callBack`, `created_at`, `updated_at`, `deleted_at`, `people_id`) VALUES
(1, 'skype', 'https://join.skype.com/eouNXEjbdzvC', 'fa-skype', '2018-02-17 17:20:36', '2018-02-17 17:20:36', NULL, 1),
(2, 'insta', 'https://www.instagram.com/innadanylevska/', 'fa-instagram', '2018-02-17 17:23:37', '2018-02-17 17:23:37', NULL, 1),
(3, 'fb', 'https://www.facebook.com/ITvolunteerInnaDanylevska', 'fa-facebook', '2018-02-17 17:25:24', '2018-02-17 17:25:24', NULL, 1),
(4, 'myApps', 'http://icontrolmy.tk/dressing.php', 'fa-shopping-cart', '2018-02-17 17:27:08', '2018-02-17 17:27:08', NULL, 1),
(5, 'donate', 'https://www.facebook.com/Icontrolmy-TK-168072557128288/', 'fa-coffee', '2018-02-17 17:30:30', '2018-02-17 17:30:30', NULL, 1);

-- --------------------------------------------------------

--
-- Table structure for table `socials1`
--

CREATE TABLE `socials1` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `link` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `callBack` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `socials1`
--

INSERT INTO `socials1` (`id`, `name`, `link`, `callBack`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'youtube', 'www', 'fa-youtube-play', '2018-02-19 06:30:10', '2018-02-19 06:30:10', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Inna Danylevska', 'innassik@yahoo.com', '$2y$10$swfI1SMuv91JrYPeJT0rverdN0D/F6WqAiWkA3KsKxDSoeIC1/q8G', 'F1iI6iYhCjBbW4xpFgHW6cfnxwirtAglB8ZngdeC9X10q5lUAoJQIaiNwd7g', '2018-02-17 14:02:35', '2018-02-17 14:02:35'),
(2, 'Liliia Danylevska', 'liliiadanylevska@gmail.com', '$2y$10$8sp5aotyMhnfLDsyqKWb7uUjKwiL.H0mjvdAG056d8iqcxJoktg9a', NULL, '2018-02-17 18:21:46', '2018-02-17 18:21:46');

-- --------------------------------------------------------

--
-- Table structure for table `wordbooks1`
--

CREATE TABLE `wordbooks1` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `filter` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `definition` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `logos1`
--
ALTER TABLE `logos1`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pages1`
--
ALTER TABLE `pages1`
  ADD PRIMARY KEY (`id`),
  ADD KEY `pages1_portfolio_id_foreign` (`portfolio_id`);

--
-- Indexes for table `peoples1`
--
ALTER TABLE `peoples1`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `portfolios`
--
ALTER TABLE `portfolios`
  ADD PRIMARY KEY (`id`),
  ADD KEY `portfolios_portfolioall_id_foreign` (`portfolioAll_id`);

--
-- Indexes for table `portfolios1`
--
ALTER TABLE `portfolios1`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `services`
--
ALTER TABLE `services`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `socialpeoples1`
--
ALTER TABLE `socialpeoples1`
  ADD PRIMARY KEY (`id`),
  ADD KEY `socialpeoples1_people_id_foreign` (`people_id`);

--
-- Indexes for table `socials1`
--
ALTER TABLE `socials1`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `wordbooks1`
--
ALTER TABLE `wordbooks1`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `logos1`
--
ALTER TABLE `logos1`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;
--
-- AUTO_INCREMENT for table `pages1`
--
ALTER TABLE `pages1`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `peoples1`
--
ALTER TABLE `peoples1`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `portfolios`
--
ALTER TABLE `portfolios`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `portfolios1`
--
ALTER TABLE `portfolios1`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `services`
--
ALTER TABLE `services`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `socialpeoples1`
--
ALTER TABLE `socialpeoples1`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `socials1`
--
ALTER TABLE `socials1`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `wordbooks1`
--
ALTER TABLE `wordbooks1`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `pages1`
--
ALTER TABLE `pages1`
  ADD CONSTRAINT `pages1_portfolio_id_foreign` FOREIGN KEY (`portfolio_id`) REFERENCES `portfolios` (`id`);

--
-- Constraints for table `portfolios`
--
ALTER TABLE `portfolios`
  ADD CONSTRAINT `portfolios_portfolioall_id_foreign` FOREIGN KEY (`portfolioAll_id`) REFERENCES `portfolios1` (`id`);

--
-- Constraints for table `socialpeoples1`
--
ALTER TABLE `socialpeoples1`
  ADD CONSTRAINT `socialpeoples1_people_id_foreign` FOREIGN KEY (`people_id`) REFERENCES `peoples1` (`id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
