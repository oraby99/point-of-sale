-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 14, 2023 at 07:20 PM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 7.4.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `pos`
--

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `created_at`, `updated_at`) VALUES
(1, '2023-10-13 20:04:09', '2023-10-13 20:04:09'),
(2, '2023-10-13 20:04:09', '2023-10-13 20:04:09'),
(3, '2023-10-13 20:04:10', '2023-10-13 20:04:10'),
(4, '2023-10-14 13:58:46', '2023-10-14 13:58:46'),
(5, '2023-10-14 13:59:05', '2023-10-14 13:59:05'),
(6, '2023-10-14 13:59:36', '2023-10-14 13:59:36');

-- --------------------------------------------------------

--
-- Table structure for table `category_translations`
--

CREATE TABLE `category_translations` (
  `id` int(10) UNSIGNED NOT NULL,
  `category_id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `locale` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `category_translations`
--

INSERT INTO `category_translations` (`id`, `category_id`, `name`, `locale`) VALUES
(1, 1, 'cat one', 'ar'),
(2, 1, 'cat one', 'en'),
(3, 2, 'cat two', 'ar'),
(4, 2, 'cat two', 'en'),
(5, 3, 'cat three', 'ar'),
(6, 3, 'cat three', 'en'),
(7, 4, 'cat four', 'ar'),
(8, 4, 'cat four', 'en'),
(9, 5, 'cat five', 'ar'),
(10, 5, 'cat five', 'en'),
(11, 6, 'cat six', 'ar'),
(12, 6, 'cat six', 'en');

-- --------------------------------------------------------

--
-- Table structure for table `clients`
--

CREATE TABLE `clients` (
  `id` int(10) NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `clients`
--

INSERT INTO `clients` (`id`, `name`, `phone`, `address`, `created_at`, `updated_at`) VALUES
(1, 'ahmed', '\"01205082343\"', 'bani suef', '2023-10-13 20:04:10', '2023-10-13 20:04:10'),
(2, 'oraby', '\"01205082343\"', 'bani suef', '2023-10-13 20:04:10', '2023-10-13 20:04:10'),
(3, 'Ali', '[\"01205082343\",\"01095079525\"]', 'haram', '2023-10-14 13:56:06', '2023-10-14 13:56:06'),
(4, 'rami', '[\"01095079525\",\"01205082343\"]', 'giza', '2023-10-14 13:57:03', '2023-10-14 13:57:03'),
(5, 'mahmoud', '[\"01095079525\"]', 'salah salem', '2023-10-14 13:57:35', '2023-10-14 13:57:35'),
(6, 'adel', '[\"01205082343\",\"01095079525\"]', 'alex', '2023-10-14 13:58:07', '2023-10-14 13:58:07');

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
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2023_10_08_125009_laratrust_setup_tables', 1),
(5, '2023_10_10_020507_create_categories_table', 1),
(6, '2023_10_10_022034_create_products_table', 1),
(7, '2023_10_10_022056_create_clients_table', 1),
(8, '2023_10_13_150040_create_category_translations_table', 1),
(9, '2023_10_13_160134_create_product_translations_table', 1),
(10, '2023_10_13_223303_create_product_order_table', 1),
(11, '2023_10_13_224610_create_orders_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` int(10) UNSIGNED NOT NULL,
  `client_id` int(10) UNSIGNED NOT NULL,
  `total_price` double(8,2) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `client_id`, `total_price`, `created_at`, `updated_at`) VALUES
(2, 2, 150.00, '2023-01-13 21:49:42', '2023-10-13 20:49:42'),
(3, 1, 300.00, '2023-05-13 20:50:01', '2023-10-13 20:50:01'),
(4, 1, 150.00, '2023-05-14 11:07:50', '2023-10-14 11:07:50'),
(8, 6, 1680.00, '2023-05-14 14:09:56', '2023-10-14 14:09:56'),
(9, 1, 950.00, '2023-09-14 14:14:58', '2023-10-14 14:14:59'),
(10, 4, 2180.00, '2023-09-14 14:16:03', '2023-10-14 14:16:03');

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
  `display_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `permissions`
--

INSERT INTO `permissions` (`id`, `name`, `display_name`, `description`, `created_at`, `updated_at`) VALUES
(1, 'categories_create', 'Create Categories', 'Create Categories', '2023-10-13 20:04:05', '2023-10-13 20:04:05'),
(2, 'categories_read', 'Read Categories', 'Read Categories', '2023-10-13 20:04:06', '2023-10-13 20:04:06'),
(3, 'categories_update', 'Update Categories', 'Update Categories', '2023-10-13 20:04:06', '2023-10-13 20:04:06'),
(4, 'categories_delete', 'Delete Categories', 'Delete Categories', '2023-10-13 20:04:06', '2023-10-13 20:04:06'),
(5, 'products_create', 'Create Products', 'Create Products', '2023-10-13 20:04:06', '2023-10-13 20:04:06'),
(6, 'products_read', 'Read Products', 'Read Products', '2023-10-13 20:04:07', '2023-10-13 20:04:07'),
(7, 'products_update', 'Update Products', 'Update Products', '2023-10-13 20:04:07', '2023-10-13 20:04:07'),
(8, 'products_delete', 'Delete Products', 'Delete Products', '2023-10-13 20:04:07', '2023-10-13 20:04:07'),
(9, 'clients_create', 'Create Clients', 'Create Clients', '2023-10-13 20:04:07', '2023-10-13 20:04:07'),
(10, 'clients_read', 'Read Clients', 'Read Clients', '2023-10-13 20:04:07', '2023-10-13 20:04:07'),
(11, 'clients_update', 'Update Clients', 'Update Clients', '2023-10-13 20:04:07', '2023-10-13 20:04:07'),
(12, 'clients_delete', 'Delete Clients', 'Delete Clients', '2023-10-13 20:04:07', '2023-10-13 20:04:07'),
(13, 'orders_create', 'Create Orders', 'Create Orders', '2023-10-13 20:04:07', '2023-10-13 20:04:07'),
(14, 'orders_read', 'Read Orders', 'Read Orders', '2023-10-13 20:04:07', '2023-10-13 20:04:07'),
(15, 'orders_update', 'Update Orders', 'Update Orders', '2023-10-13 20:04:07', '2023-10-13 20:04:07'),
(16, 'orders_delete', 'Delete Orders', 'Delete Orders', '2023-10-13 20:04:07', '2023-10-13 20:04:07'),
(17, 'users_create', 'Create Users', 'Create Users', '2023-10-13 20:04:07', '2023-10-13 20:04:07'),
(18, 'users_read', 'Read Users', 'Read Users', '2023-10-13 20:04:07', '2023-10-13 20:04:07'),
(19, 'users_update', 'Update Users', 'Update Users', '2023-10-13 20:04:07', '2023-10-13 20:04:07'),
(20, 'users_delete', 'Delete Users', 'Delete Users', '2023-10-13 20:04:07', '2023-10-13 20:04:07');

-- --------------------------------------------------------

--
-- Table structure for table `permission_role`
--

CREATE TABLE `permission_role` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `permission_role`
--

INSERT INTO `permission_role` (`permission_id`, `role_id`) VALUES
(1, 1),
(2, 1),
(3, 1),
(4, 1),
(5, 1),
(6, 1),
(7, 1),
(8, 1),
(9, 1),
(10, 1),
(11, 1),
(12, 1),
(13, 1),
(14, 1),
(15, 1),
(16, 1),
(17, 1),
(18, 1),
(19, 1),
(20, 1);

-- --------------------------------------------------------

--
-- Table structure for table `permission_user`
--

CREATE TABLE `permission_user` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `user_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `permission_user`
--

INSERT INTO `permission_user` (`permission_id`, `user_id`, `user_type`) VALUES
(1, 2, 'App\\Models\\User'),
(2, 2, 'App\\Models\\User'),
(3, 2, 'App\\Models\\User'),
(5, 2, 'App\\Models\\User'),
(6, 2, 'App\\Models\\User'),
(7, 2, 'App\\Models\\User'),
(9, 2, 'App\\Models\\User'),
(10, 2, 'App\\Models\\User'),
(11, 2, 'App\\Models\\User'),
(13, 2, 'App\\Models\\User'),
(14, 2, 'App\\Models\\User'),
(15, 2, 'App\\Models\\User'),
(16, 2, 'App\\Models\\User'),
(17, 2, 'App\\Models\\User'),
(18, 2, 'App\\Models\\User'),
(19, 2, 'App\\Models\\User'),
(20, 2, 'App\\Models\\User');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(10) UNSIGNED NOT NULL,
  `category_id` int(10) UNSIGNED NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'default.png',
  `purchase_price` double(8,2) NOT NULL,
  `sale_price` double(8,2) NOT NULL,
  `stock` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `category_id`, `image`, `purchase_price`, `sale_price`, `stock`, `created_at`, `updated_at`) VALUES
(1, 1, 'default.png', 100.00, 150.00, 96, '2023-10-13 20:04:10', '2023-10-14 14:16:03'),
(2, 3, 'default.png', 100.00, 150.00, 92, '2023-10-13 20:04:10', '2023-10-14 14:16:03'),
(3, 2, 'POS_PRODUCT-652ac93ad9870.png', 400.00, 530.00, 18, '2023-10-14 14:00:42', '2023-10-14 14:16:03'),
(4, 4, 'POS_PRODUCT-652ac9d20881c.png', 203.00, 250.00, 11, '2023-10-14 14:03:14', '2023-10-14 14:16:03'),
(5, 5, 'POS_PRODUCT-652aca21276d2.png', 345.00, 400.00, 51, '2023-10-14 14:04:33', '2023-10-14 14:16:03'),
(6, 6, 'POS_PRODUCT-652aca740701a.png', 565.00, 700.00, 21, '2023-10-14 14:05:56', '2023-10-14 14:16:03');

-- --------------------------------------------------------

--
-- Table structure for table `product_order`
--

CREATE TABLE `product_order` (
  `id` int(10) UNSIGNED NOT NULL,
  `product_id` int(10) UNSIGNED NOT NULL,
  `order_id` int(10) UNSIGNED NOT NULL,
  `quantity` int(11) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `product_order`
--

INSERT INTO `product_order` (`id`, `product_id`, `order_id`, `quantity`) VALUES
(3, 2, 2, 1),
(4, 1, 3, 1),
(5, 2, 3, 1),
(6, 2, 4, 1),
(7, 1, 8, 2),
(8, 3, 8, 1),
(9, 2, 8, 3),
(10, 5, 8, 1),
(11, 5, 9, 2),
(12, 2, 9, 1),
(13, 2, 10, 1),
(14, 4, 10, 1),
(15, 5, 10, 1),
(16, 6, 10, 1),
(17, 3, 10, 1),
(18, 1, 10, 1);

-- --------------------------------------------------------

--
-- Table structure for table `product_translations`
--

CREATE TABLE `product_translations` (
  `id` int(10) UNSIGNED NOT NULL,
  `product_id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `locale` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `product_translations`
--

INSERT INTO `product_translations` (`id`, `product_id`, `name`, `description`, `locale`) VALUES
(1, 1, 'pro one', 'pro one desc', 'ar'),
(2, 1, 'pro one', 'pro one desc', 'en'),
(3, 2, 'pro two', '<p>pro two desc</p>', 'ar'),
(4, 2, 'pro two', '<p>pro two desc</p>', 'en'),
(5, 3, 'pro three', '<p>pro three desc</p>', 'ar'),
(6, 3, 'pro three', '<p>pro three desc</p>', 'en'),
(7, 4, 'pro four', '<p>pro four desc</p>', 'ar'),
(8, 4, 'pro four', '<p>pro four desc</p>', 'en'),
(9, 5, 'pro five', '<p>pro five desc</p>', 'ar'),
(10, 5, 'pro five', '<p>pro five desc</p>', 'en'),
(11, 6, 'pro desc', '<p>pro six desc</p>', 'ar'),
(12, 6, 'pro desc', '<p>pro six desc</p>', 'en');

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `display_name`, `description`, `created_at`, `updated_at`) VALUES
(1, 'super_admin', 'Super Admin', 'Super Admin', '2023-10-13 20:04:05', '2023-10-13 20:04:05'),
(2, 'admin', 'Admin', 'Admin', '2023-10-13 20:04:09', '2023-10-13 20:04:09');

-- --------------------------------------------------------

--
-- Table structure for table `role_user`
--

CREATE TABLE `role_user` (
  `role_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `user_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `role_user`
--

INSERT INTO `role_user` (`role_id`, `user_id`, `user_type`) VALUES
(1, 1, 'App\\Models\\User'),
(2, 2, 'App\\Models\\User');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `first_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'default.png',
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `image`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'super', 'admin', 'super_admin@app.com', 'default.png', NULL, '$2y$10$JHYI/WlOKVWKD9SZbtulEuOD0Gut4PNa8hcIeOIzOmbgH9qZ/wNVK', 'BNtOa8pqgOg8k5bvgOn0cP2vYZdb0a0rlBVsemYncvXiEM6X4nyN25S7K9R4', '2023-10-13 20:04:09', '2023-10-13 20:04:09'),
(2, 'ahmed', 'oraby', 'ahmed.oraby.dev@gmail.com', 'default.png', NULL, '$2y$10$eHrAFgnFwZe9zBKOt0Zj6.dC1h/HoWyJh//siDRp9yg5bJilL94ce', '35ATK8zDTzKlBR0DQVsG7SyEvNGh7u9SL2wmGFu6YJO4LncmVdnLJpGbrtxb', '2023-10-13 20:20:35', '2023-10-13 20:20:35');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `category_translations`
--
ALTER TABLE `category_translations`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `category_translations_category_id_locale_unique` (`category_id`,`locale`),
  ADD KEY `category_translations_locale_index` (`locale`);

--
-- Indexes for table `clients`
--
ALTER TABLE `clients`
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
-- Indexes for table `orders`
--
ALTER TABLE `orders`
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
  ADD UNIQUE KEY `permissions_name_unique` (`name`);

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
  ADD PRIMARY KEY (`user_id`,`permission_id`,`user_type`),
  ADD KEY `permission_user_permission_id_foreign` (`permission_id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD KEY `products_category_id_foreign` (`category_id`);

--
-- Indexes for table `product_order`
--
ALTER TABLE `product_order`
  ADD PRIMARY KEY (`id`),
  ADD KEY `order_id` (`order_id`),
  ADD KEY `product_id` (`product_id`);

--
-- Indexes for table `product_translations`
--
ALTER TABLE `product_translations`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `product_translations_product_id_locale_unique` (`product_id`,`locale`),
  ADD KEY `product_translations_locale_index` (`locale`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `roles_name_unique` (`name`);

--
-- Indexes for table `role_user`
--
ALTER TABLE `role_user`
  ADD PRIMARY KEY (`user_id`,`role_id`,`user_type`),
  ADD KEY `role_user_role_id_foreign` (`role_id`);

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
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `category_translations`
--
ALTER TABLE `category_translations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `clients`
--
ALTER TABLE `clients`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `product_order`
--
ALTER TABLE `product_order`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `product_translations`
--
ALTER TABLE `product_translations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `category_translations`
--
ALTER TABLE `category_translations`
  ADD CONSTRAINT `category_translations_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `permission_role`
--
ALTER TABLE `permission_role`
  ADD CONSTRAINT `permission_role_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `permission_role_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `permission_user`
--
ALTER TABLE `permission_user`
  ADD CONSTRAINT `permission_user_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `products_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `product_order`
--
ALTER TABLE `product_order`
  ADD CONSTRAINT `product_order_ibfk_1` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `product_order_ibfk_2` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `product_translations`
--
ALTER TABLE `product_translations`
  ADD CONSTRAINT `product_translations_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `role_user`
--
ALTER TABLE `role_user`
  ADD CONSTRAINT `role_user_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
