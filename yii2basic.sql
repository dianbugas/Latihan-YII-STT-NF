-- phpMyAdmin SQL Dump
-- version 4.9.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Waktu pembuatan: 08 Jun 2020 pada 17.21
-- Versi server: 10.4.8-MariaDB
-- Versi PHP: 7.1.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `yii2basic`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `auth_assignment`
--

CREATE TABLE `auth_assignment` (
  `item_name` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `user_id` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data untuk tabel `auth_assignment`
--

INSERT INTO `auth_assignment` (`item_name`, `user_id`, `created_at`) VALUES
('Administrator', '2', 1591628164),
('Member', '1', 1591628828);

-- --------------------------------------------------------

--
-- Struktur dari tabel `auth_item`
--

CREATE TABLE `auth_item` (
  `name` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `type` smallint(6) NOT NULL,
  `description` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `rule_name` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL,
  `data` blob DEFAULT NULL,
  `created_at` int(11) DEFAULT NULL,
  `updated_at` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data untuk tabel `auth_item`
--

INSERT INTO `auth_item` (`name`, `type`, `description`, `rule_name`, `data`, `created_at`, `updated_at`) VALUES
('/*', 2, NULL, NULL, NULL, 1591627389, 1591627389),
('/admin/*', 2, NULL, NULL, NULL, 1591627388, 1591627388),
('/admin/assignment/*', 2, NULL, NULL, NULL, 1591627385, 1591627385),
('/admin/assignment/assign', 2, NULL, NULL, NULL, 1591627385, 1591627385),
('/admin/assignment/index', 2, NULL, NULL, NULL, 1591627385, 1591627385),
('/admin/assignment/revoke', 2, NULL, NULL, NULL, 1591627385, 1591627385),
('/admin/assignment/view', 2, NULL, NULL, NULL, 1591627385, 1591627385),
('/admin/default/*', 2, NULL, NULL, NULL, 1591627385, 1591627385),
('/admin/default/index', 2, NULL, NULL, NULL, 1591627385, 1591627385),
('/admin/menu/*', 2, NULL, NULL, NULL, 1591627386, 1591627386),
('/admin/menu/create', 2, NULL, NULL, NULL, 1591627386, 1591627386),
('/admin/menu/delete', 2, NULL, NULL, NULL, 1591627386, 1591627386),
('/admin/menu/index', 2, NULL, NULL, NULL, 1591627385, 1591627385),
('/admin/menu/update', 2, NULL, NULL, NULL, 1591627386, 1591627386),
('/admin/menu/view', 2, NULL, NULL, NULL, 1591627385, 1591627385),
('/admin/permission/*', 2, NULL, NULL, NULL, 1591627386, 1591627386),
('/admin/permission/assign', 2, NULL, NULL, NULL, 1591627386, 1591627386),
('/admin/permission/create', 2, NULL, NULL, NULL, 1591627386, 1591627386),
('/admin/permission/delete', 2, NULL, NULL, NULL, 1591627386, 1591627386),
('/admin/permission/index', 2, NULL, NULL, NULL, 1591627386, 1591627386),
('/admin/permission/remove', 2, NULL, NULL, NULL, 1591627386, 1591627386),
('/admin/permission/update', 2, NULL, NULL, NULL, 1591627386, 1591627386),
('/admin/permission/view', 2, NULL, NULL, NULL, 1591627386, 1591627386),
('/admin/role/*', 2, NULL, NULL, NULL, 1591627387, 1591627387),
('/admin/role/assign', 2, NULL, NULL, NULL, 1591627386, 1591627386),
('/admin/role/create', 2, NULL, NULL, NULL, 1591627386, 1591627386),
('/admin/role/delete', 2, NULL, NULL, NULL, 1591627386, 1591627386),
('/admin/role/index', 2, NULL, NULL, NULL, 1591627386, 1591627386),
('/admin/role/remove', 2, NULL, NULL, NULL, 1591627386, 1591627386),
('/admin/role/update', 2, NULL, NULL, NULL, 1591627386, 1591627386),
('/admin/role/view', 2, NULL, NULL, NULL, 1591627386, 1591627386),
('/admin/route/*', 2, NULL, NULL, NULL, 1591627387, 1591627387),
('/admin/route/assign', 2, NULL, NULL, NULL, 1591627387, 1591627387),
('/admin/route/create', 2, NULL, NULL, NULL, 1591627387, 1591627387),
('/admin/route/index', 2, NULL, NULL, NULL, 1591627387, 1591627387),
('/admin/route/refresh', 2, NULL, NULL, NULL, 1591627387, 1591627387),
('/admin/route/remove', 2, NULL, NULL, NULL, 1591627387, 1591627387),
('/admin/rule/*', 2, NULL, NULL, NULL, 1591627387, 1591627387),
('/admin/rule/create', 2, NULL, NULL, NULL, 1591627387, 1591627387),
('/admin/rule/delete', 2, NULL, NULL, NULL, 1591627387, 1591627387),
('/admin/rule/index', 2, NULL, NULL, NULL, 1591627387, 1591627387),
('/admin/rule/update', 2, NULL, NULL, NULL, 1591627387, 1591627387),
('/admin/rule/view', 2, NULL, NULL, NULL, 1591627387, 1591627387),
('/admin/user/*', 2, NULL, NULL, NULL, 1591627388, 1591627388),
('/admin/user/activate', 2, NULL, NULL, NULL, 1591627388, 1591627388),
('/admin/user/change-password', 2, NULL, NULL, NULL, 1591627388, 1591627388),
('/admin/user/delete', 2, NULL, NULL, NULL, 1591627387, 1591627387),
('/admin/user/index', 2, NULL, NULL, NULL, 1591627387, 1591627387),
('/admin/user/login', 2, NULL, NULL, NULL, 1591627388, 1591627388),
('/admin/user/logout', 2, NULL, NULL, NULL, 1591627388, 1591627388),
('/admin/user/request-password-reset', 2, NULL, NULL, NULL, 1591627388, 1591627388),
('/admin/user/reset-password', 2, NULL, NULL, NULL, 1591627388, 1591627388),
('/admin/user/signup', 2, NULL, NULL, NULL, 1591627388, 1591627388),
('/admin/user/view', 2, NULL, NULL, NULL, 1591627387, 1591627387),
('/debug/*', 2, NULL, NULL, NULL, 1591627388, 1591627388),
('/debug/default/*', 2, NULL, NULL, NULL, 1591627388, 1591627388),
('/debug/default/db-explain', 2, NULL, NULL, NULL, 1591627388, 1591627388),
('/debug/default/download-mail', 2, NULL, NULL, NULL, 1591627388, 1591627388),
('/debug/default/index', 2, NULL, NULL, NULL, 1591627388, 1591627388),
('/debug/default/toolbar', 2, NULL, NULL, NULL, 1591627388, 1591627388),
('/debug/default/view', 2, NULL, NULL, NULL, 1591627388, 1591627388),
('/debug/user/*', 2, NULL, NULL, NULL, 1591627388, 1591627388),
('/debug/user/reset-identity', 2, NULL, NULL, NULL, 1591627388, 1591627388),
('/debug/user/set-identity', 2, NULL, NULL, NULL, 1591627388, 1591627388),
('/gii/*', 2, NULL, NULL, NULL, 1591627389, 1591627389),
('/gii/default/*', 2, NULL, NULL, NULL, 1591627389, 1591627389),
('/gii/default/action', 2, NULL, NULL, NULL, 1591627389, 1591627389),
('/gii/default/diff', 2, NULL, NULL, NULL, 1591627389, 1591627389),
('/gii/default/index', 2, NULL, NULL, NULL, 1591627388, 1591627388),
('/gii/default/preview', 2, NULL, NULL, NULL, 1591627389, 1591627389),
('/gii/default/view', 2, NULL, NULL, NULL, 1591627388, 1591627388),
('/site/*', 2, NULL, NULL, NULL, 1591627389, 1591627389),
('/site/about', 2, NULL, NULL, NULL, 1591627389, 1591627389),
('/site/captcha', 2, NULL, NULL, NULL, 1591627389, 1591627389),
('/site/contact', 2, NULL, NULL, NULL, 1591627389, 1591627389),
('/site/error', 2, NULL, NULL, NULL, 1591627389, 1591627389),
('/site/index', 2, NULL, NULL, NULL, 1591627389, 1591627389),
('/site/login', 2, NULL, NULL, NULL, 1591627389, 1591627389),
('/site/logout', 2, NULL, NULL, NULL, 1591627389, 1591627389),
('/user/*', 2, NULL, NULL, NULL, 1591627385, 1591627385),
('/user/admin/*', 2, NULL, NULL, NULL, 1591627384, 1591627384),
('/user/admin/assignments', 2, NULL, NULL, NULL, 1591627383, 1591627383),
('/user/admin/block', 2, NULL, NULL, NULL, 1591627383, 1591627383),
('/user/admin/confirm', 2, NULL, NULL, NULL, 1591627383, 1591627383),
('/user/admin/create', 2, NULL, NULL, NULL, 1591627383, 1591627383),
('/user/admin/delete', 2, NULL, NULL, NULL, 1591627383, 1591627383),
('/user/admin/index', 2, NULL, NULL, NULL, 1591627383, 1591627383),
('/user/admin/info', 2, NULL, NULL, NULL, 1591627383, 1591627383),
('/user/admin/resend-password', 2, NULL, NULL, NULL, 1591627384, 1591627384),
('/user/admin/switch', 2, NULL, NULL, NULL, 1591627383, 1591627383),
('/user/admin/update', 2, NULL, NULL, NULL, 1591627383, 1591627383),
('/user/admin/update-profile', 2, NULL, NULL, NULL, 1591627383, 1591627383),
('/user/profile/*', 2, NULL, NULL, NULL, 1591627384, 1591627384),
('/user/profile/index', 2, NULL, NULL, NULL, 1591627384, 1591627384),
('/user/profile/show', 2, NULL, NULL, NULL, 1591627384, 1591627384),
('/user/recovery/*', 2, NULL, NULL, NULL, 1591627384, 1591627384),
('/user/recovery/request', 2, NULL, NULL, NULL, 1591627384, 1591627384),
('/user/recovery/reset', 2, NULL, NULL, NULL, 1591627384, 1591627384),
('/user/registration/*', 2, NULL, NULL, NULL, 1591627384, 1591627384),
('/user/registration/confirm', 2, NULL, NULL, NULL, 1591627384, 1591627384),
('/user/registration/connect', 2, NULL, NULL, NULL, 1591627384, 1591627384),
('/user/registration/register', 2, NULL, NULL, NULL, 1591627384, 1591627384),
('/user/registration/resend', 2, NULL, NULL, NULL, 1591627384, 1591627384),
('/user/security/*', 2, NULL, NULL, NULL, 1591627385, 1591627385),
('/user/security/auth', 2, NULL, NULL, NULL, 1591627384, 1591627384),
('/user/security/login', 2, NULL, NULL, NULL, 1591627384, 1591627384),
('/user/security/logout', 2, NULL, NULL, NULL, 1591627384, 1591627384),
('/user/settings/*', 2, NULL, NULL, NULL, 1591627385, 1591627385),
('/user/settings/account', 2, NULL, NULL, NULL, 1591627385, 1591627385),
('/user/settings/confirm', 2, NULL, NULL, NULL, 1591627385, 1591627385),
('/user/settings/delete', 2, NULL, NULL, NULL, 1591627385, 1591627385),
('/user/settings/disconnect', 2, NULL, NULL, NULL, 1591627385, 1591627385),
('/user/settings/networks', 2, NULL, NULL, NULL, 1591627385, 1591627385),
('/user/settings/profile', 2, NULL, NULL, NULL, 1591627385, 1591627385),
('Administrator', 1, 'User Administrator', NULL, NULL, 1591627789, 1591627789),
('manage rbac', 2, 'Manage RBAC', NULL, NULL, 1591628999, 1591628999),
('manage user', 2, 'Halaman Manage User', NULL, NULL, 1591627894, 1591627894),
('Member', 1, 'User Member', NULL, NULL, 1591627809, 1591627809),
('user auth', 2, 'Halaman yang bisa diakses oleh user terotentikasi', NULL, NULL, 1591628310, 1591628310);

-- --------------------------------------------------------

--
-- Struktur dari tabel `auth_item_child`
--

CREATE TABLE `auth_item_child` (
  `parent` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `child` varchar(64) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data untuk tabel `auth_item_child`
--

INSERT INTO `auth_item_child` (`parent`, `child`) VALUES
('Administrator', 'manage rbac'),
('Administrator', 'manage user'),
('Administrator', 'user auth'),
('manage rbac', '/admin/*'),
('manage user', '/user/admin/*'),
('Member', 'user auth'),
('user auth', '/user/profile/*'),
('user auth', '/user/security/logout'),
('user auth', '/user/settings/*');

-- --------------------------------------------------------

--
-- Struktur dari tabel `auth_rule`
--

CREATE TABLE `auth_rule` (
  `name` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `data` blob DEFAULT NULL,
  `created_at` int(11) DEFAULT NULL,
  `updated_at` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `migration`
--

CREATE TABLE `migration` (
  `version` varchar(180) NOT NULL,
  `apply_time` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `migration`
--

INSERT INTO `migration` (`version`, `apply_time`) VALUES
('m000000_000000_base', 1591622986),
('m140209_132017_init', 1591622994),
('m140403_174025_create_account_table', 1591622996),
('m140504_113157_update_tables', 1591622998),
('m140504_130429_create_token_table', 1591623000),
('m140506_102106_rbac_init', 1591626657),
('m140830_171933_fix_ip_field', 1591623001),
('m140830_172703_change_account_table_name', 1591623002),
('m141222_110026_update_ip_field', 1591623003),
('m141222_135246_alter_username_length', 1591623003),
('m150614_103145_update_social_account_table', 1591623004),
('m150623_212711_fix_username_notnull', 1591623004),
('m151218_234654_add_timezone_to_profile', 1591623004),
('m160929_103127_add_last_login_at_to_user_table', 1591623004),
('m170907_052038_rbac_add_index_on_auth_assignment_user_id', 1591626657),
('m180523_151638_rbac_updates_indexes_without_prefix', 1591626658),
('m200409_110543_rbac_update_mssql_trigger', 1591626658);

-- --------------------------------------------------------

--
-- Struktur dari tabel `profile`
--

CREATE TABLE `profile` (
  `user_id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `public_email` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `gravatar_email` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `gravatar_id` varchar(32) COLLATE utf8_unicode_ci DEFAULT NULL,
  `location` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `website` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `bio` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `timezone` varchar(40) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data untuk tabel `profile`
--

INSERT INTO `profile` (`user_id`, `name`, `public_email`, `gravatar_email`, `gravatar_id`, `location`, `website`, `bio`, `timezone`) VALUES
(1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `social_account`
--

CREATE TABLE `social_account` (
  `id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `provider` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `client_id` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `data` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `code` varchar(32) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` int(11) DEFAULT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `username` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `token`
--

CREATE TABLE `token` (
  `user_id` int(11) NOT NULL,
  `code` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` int(11) NOT NULL,
  `type` smallint(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data untuk tabel `token`
--

INSERT INTO `token` (`user_id`, `code`, `created_at`, `type`) VALUES
(1, 'whu1AQlPrx8gAe7EDzF137S04FIt6o-K', 1591623450, 0),
(2, '-MAHcwN4XsGR_bk_NKQylWEjav1nh36A', 1591623710, 0);

-- --------------------------------------------------------

--
-- Struktur dari tabel `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `username` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password_hash` varchar(60) COLLATE utf8_unicode_ci NOT NULL,
  `auth_key` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `confirmed_at` int(11) DEFAULT NULL,
  `unconfirmed_email` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `blocked_at` int(11) DEFAULT NULL,
  `registration_ip` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` int(11) NOT NULL,
  `updated_at` int(11) NOT NULL,
  `flags` int(11) NOT NULL DEFAULT 0,
  `last_login_at` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data untuk tabel `user`
--

INSERT INTO `user` (`id`, `username`, `email`, `password_hash`, `auth_key`, `confirmed_at`, `unconfirmed_email`, `blocked_at`, `registration_ip`, `created_at`, `updated_at`, `flags`, `last_login_at`) VALUES
(1, 'dianbugas', 'dianbugas@gmail.com', '$2y$12$iiOMg1EluLZS3ccLQaUbluToiBUJ1Wjk8bCe4w8wfjij0/H6b/H5q', 'Ydm5UYFpl8WWT1ytgjLfj67jYHByVvsW', 1591628664, NULL, NULL, '::1', 1591623450, 1591623450, 0, 1591628861),
(2, 'admin', 'dianynf@gmail.com', '$2y$12$MStrmjpoW30VwySvBajgxuJBvFM.G.cOIQE7tZI3iOcc/W3JQg9de', 'Bsc8EBXd8OECODnluU_e7SLbEvL901WO', NULL, NULL, NULL, '::1', 1591623710, 1591623710, 0, 1591629087);

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `auth_assignment`
--
ALTER TABLE `auth_assignment`
  ADD PRIMARY KEY (`item_name`,`user_id`),
  ADD KEY `idx-auth_assignment-user_id` (`user_id`);

--
-- Indeks untuk tabel `auth_item`
--
ALTER TABLE `auth_item`
  ADD PRIMARY KEY (`name`),
  ADD KEY `rule_name` (`rule_name`),
  ADD KEY `idx-auth_item-type` (`type`);

--
-- Indeks untuk tabel `auth_item_child`
--
ALTER TABLE `auth_item_child`
  ADD PRIMARY KEY (`parent`,`child`),
  ADD KEY `child` (`child`);

--
-- Indeks untuk tabel `auth_rule`
--
ALTER TABLE `auth_rule`
  ADD PRIMARY KEY (`name`);

--
-- Indeks untuk tabel `migration`
--
ALTER TABLE `migration`
  ADD PRIMARY KEY (`version`);

--
-- Indeks untuk tabel `profile`
--
ALTER TABLE `profile`
  ADD PRIMARY KEY (`user_id`);

--
-- Indeks untuk tabel `social_account`
--
ALTER TABLE `social_account`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `account_unique` (`provider`,`client_id`),
  ADD UNIQUE KEY `account_unique_code` (`code`),
  ADD KEY `fk_user_account` (`user_id`);

--
-- Indeks untuk tabel `token`
--
ALTER TABLE `token`
  ADD UNIQUE KEY `token_unique` (`user_id`,`code`,`type`);

--
-- Indeks untuk tabel `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `user_unique_username` (`username`),
  ADD UNIQUE KEY `user_unique_email` (`email`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `social_account`
--
ALTER TABLE `social_account`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `auth_assignment`
--
ALTER TABLE `auth_assignment`
  ADD CONSTRAINT `auth_assignment_ibfk_1` FOREIGN KEY (`item_name`) REFERENCES `auth_item` (`name`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `auth_item`
--
ALTER TABLE `auth_item`
  ADD CONSTRAINT `auth_item_ibfk_1` FOREIGN KEY (`rule_name`) REFERENCES `auth_rule` (`name`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `auth_item_child`
--
ALTER TABLE `auth_item_child`
  ADD CONSTRAINT `auth_item_child_ibfk_1` FOREIGN KEY (`parent`) REFERENCES `auth_item` (`name`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `auth_item_child_ibfk_2` FOREIGN KEY (`child`) REFERENCES `auth_item` (`name`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `profile`
--
ALTER TABLE `profile`
  ADD CONSTRAINT `fk_user_profile` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`) ON DELETE CASCADE;

--
-- Ketidakleluasaan untuk tabel `social_account`
--
ALTER TABLE `social_account`
  ADD CONSTRAINT `fk_user_account` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`) ON DELETE CASCADE;

--
-- Ketidakleluasaan untuk tabel `token`
--
ALTER TABLE `token`
  ADD CONSTRAINT `fk_user_token` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
