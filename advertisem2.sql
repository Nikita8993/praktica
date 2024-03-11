CREATE TABLE `failed_jobs` (
  `id` bigint UNSIGNED NOT NULL,
  `uuid` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- РЎС‚СЂСѓРєС‚СѓСЂР° С‚Р°Р±Р»РёС†С‹ `migrations`
--

CREATE TABLE `migrations` (
  `id` int UNSIGNED NOT NULL,
  `migration` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Р”Р°РјРї РґР°РЅРЅС‹С… С‚Р°Р±Р»РёС†С‹ `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(13, '2014_10_12_000000_create_users_table', 1),
(14, '2014_10_12_100000_create_password_resets_table', 1),
(15, '2019_08_19_000000_create_failed_jobs_table', 1),
(16, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(17, '2023_11_16_035140_create_posts_table', 1),
(18, '2023_11_30_111525_create_rubrics_table', 2),
(19, '2023_11_30_112310_add_rubric_posts', 2),
(20, '2023_12_06_092427_create_tags_table', 3),
(21, '2023_12_06_092609_create_post_tag_table', 3),
(22, '2023_12_21_035255_alter_users_table', 4);

-- --------------------------------------------------------

--
-- РЎС‚СЂСѓРєС‚СѓСЂР° С‚Р°Р±Р»РёС†С‹ `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- РЎС‚СЂСѓРєС‚СѓСЂР° С‚Р°Р±Р»РёС†С‹ `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- РЎС‚СЂСѓРєС‚СѓСЂР° С‚Р°Р±Р»РёС†С‹ `posts`
--

CREATE TABLE `posts` (
  `id` bigint UNSIGNED NOT NULL,
  `title` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `rubric_id` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Р”Р°РјРї РґР°РЅРЅС‹С… С‚Р°Р±Р»РёС†С‹ `posts`
--

INSERT INTO `posts` (`id`, `title`, `content`, `created_at`, `updated_at`, `rubric_id`) VALUES
(1, 'РЎС‚Р°С‚СЊСЏ 1', 'РљРѕРЅС‚РµРЅС‚ 1', '2023-11-22 04:43:45', '2023-11-22 04:43:45', 1),
(2, 'РЎС‚Р°С‚СЊСЏ 2', 'РљРѕРЅС‚РµРЅС‚ 1', '2023-11-22 04:44:02', '2023-11-22 04:44:02', 2),
(3, 'РЎС‚Р°С‚СЊСЏ 3', 'РљРѕРЅС‚РµРЅС‚ 1', '2023-11-22 04:44:38', '2023-11-22 04:44:38', 1),
(4, 'РЎС‚Р°С‚СЊСЏ 4', 'РљРѕРЅС‚РµРЅС‚ 1', '2023-11-22 05:01:33', '2023-11-22 05:01:33', 1),
(6, 'РЎС‚Р°С‚СЊСЏ 1', 'РљРѕРЅС‚РµРЅС‚ 1', '2023-11-22 05:01:58', '2023-11-22 05:01:58', 2),
(7, 'РЎС‚Р°С‚СЊСЏ 1', 'РљРѕРЅС‚РµРЅС‚ 1', '2023-11-22 05:02:28', '2023-11-22 05:02:28', 1),
(8, 'РЎС‚Р°С‚СЊСЏ 1', 'РљРѕРЅС‚РµРЅС‚ 1', '2023-11-22 05:02:40', '2023-11-22 05:02:40', 2),
(9, 'РЎС‚Р°С‚СЊСЏ 1', 'РљРѕРЅС‚РµРЅС‚ 1', '2023-11-22 05:02:51', '2023-11-22 05:02:51', 1),
(10, 'РЎС‚Р°С‚СЊСЏ 1', 'РљРѕРЅС‚РµРЅС‚ 1', NULL, NULL, 2),
(11, 'РџРѕСЃС‚ 5', 'Content 5', NULL, NULL, 1),
(12, 'РџРѕСЃС‚ 10', 'РљРѕРЅС‚РµРЅС‚ 10', '2023-12-15 08:29:01', '2023-12-15 08:29:01', 2),
(13, 'sdf', 'asdf', NULL, NULL, 1);

-- --------------------------------------------------------

--
-- РЎС‚СЂСѓРєС‚СѓСЂР° С‚Р°Р±Р»РёС†С‹ `post_tag`
--

CREATE TABLE `post_tag` (
  `id` bigint UNSIGNED NOT NULL,
  `post_id` int NOT NULL,
  `tag_id` int NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Р”Р°РјРї РґР°РЅРЅС‹С… С‚Р°Р±Р»РёС†С‹ `post_tag`
--

INSERT INTO `post_tag` (`id`, `post_id`, `tag_id`, `created_at`, `updated_at`) VALUES
(1, 1, 2, NULL, NULL),
(2, 3, 3, NULL, NULL),
(3, 4, 3, NULL, NULL),
(4, 1, 1, NULL, NULL),
(5, 2, 1, NULL, NULL),
(6, 1, 3, NULL, NULL),
(7, 2, 2, NULL, NULL),
(8, 2, 3, NULL, NULL);

-- --------------------------------------------------------

--
-- РЎС‚СЂСѓРєС‚СѓСЂР° С‚Р°Р±Р»РёС†С‹ `rubrics`
--

CREATE TABLE `rubrics` (
  `id` bigint UNSIGNED NOT NULL,
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Р”Р°РјРї РґР°РЅРЅС‹С… С‚Р°Р±Р»РёС†С‹ `rubrics`
--

INSERT INTO `rubrics` (`id`, `title`, `created_at`, `updated_at`) VALUES
(1, 'Rubric 1', NULL, NULL),
(2, 'Rubric 2', NULL, NULL);

-- --------------------------------------------------------

--
-- РЎС‚СЂСѓРєС‚СѓСЂР° С‚Р°Р±Р»РёС†С‹ `tags`
--

CREATE TABLE `tags` (
  `id` bigint UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Р”Р°РјРї РґР°РЅРЅС‹С… С‚Р°Р±Р»РёС†С‹ `tags`
--

INSERT INTO `tags` (`id`, `title`, `created_at`, `updated_at`) VALUES
(1, 'РўСЌРі 1', NULL, NULL),
(2, 'РўСЌРі 2', NULL, NULL),
(3, 'РўСЌРі 3', NULL, NULL),
(4, 'РўСЌРі 4', NULL, NULL);

-- --------------------------------------------------------

--
-- РЎС‚СЂСѓРєС‚СѓСЂР° С‚Р°Р±Р»РёС†С‹ `users`
--

CREATE TABLE `users` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `is_admin` tinyint NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Р”Р°РјРї РґР°РЅРЅС‹С… С‚Р°Р±Р»РёС†С‹ `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`, `is_admin`) VALUES
(1, 'РРІР°РЅ', 'admin@admin', NULL, '$2y$10$8tGM6PHV2h5ROiHAWM/0Tec7O8ASl3Z67.7Rk4DmKyCVndXRFEAHG', NULL, '2023-12-20 01:58:01', '2023-12-20 01:58:01', 0),
(2, 'РРІР°РЅ', 'admin1@admin', NULL, '$2y$10$qYthW./.J0/46zdPkTQXXeiVzN1.zerPktSNjypV6bozoXFrQas2G', NULL, '2023-12-20 02:10:46', '2023-12-20 02:10:46', 0),
(3, 'РРІР°РЅ', 'admin2@admin', NULL, '$2y$10$qhPUoj5sgjhCp8kS3buFAu9q.etmHFaeAQnDvdEWj/bQ6gppqH1VW', 'yysOXCRaplDGc7Uir5SvUcQm9kYVQzVpFQZvEXbpbcaF1HCWqTnAWFVjfnfj', '2023-12-20 02:19:06', '2023-12-20 02:19:06', 0),
(4, 'РРІР°РЅ', 'admin3@admin', NULL, '$2y$10$UXI9IN7V9N/MF8mOfyMQyeMawlZp0Y8NF85EHyljTrMosR4ARJSea', NULL, '2023-12-20 02:20:03', '2023-12-20 02:20:03', 0),
(5, 'РРІР°РЅ', 'admin4@admin', NULL, '$2y$10$NI3wVjlEAoaXF.Kn.lHuQuKrQ1K2CCIv4MXPYljQ1z43i5NtC/Myy', NULL, '2023-12-20 02:21:06', '2023-12-20 02:21:06', 0),
(6, 'РРІР°РЅ', 'admin5@admin', NULL, '$2y$10$bs3ZwVqQmVlZypUyi4nXJeNE/.RVGDtm3UcjsvegdjjPzyCIpRADO', NULL, '2023-12-20 02:33:51', '2023-12-20 02:33:51', 0),
(7, 'РРІР°РЅ', 'admin6@admin', NULL, '$2y$10$1RDXa.NeQNhXchjsq4lUYe4hw9cPIQt.lZjb.0iwo4VrV9EPuOgpq', NULL, '2023-12-20 03:08:40', '2023-12-20 03:08:40', 0),
(8, 'РРІР°РЅ', 'admin7@admin', NULL, '$2y$10$1Ryul188Uoro/goT7UpuoOK/H4SJQ8qo9jUbyaTU.9qPU3id8csF6', NULL, '2023-12-20 03:25:17', '2023-12-20 03:25:17', 0),
(9, 'РРІР°РЅ', 'admin8@admin', NULL, '$2y$10$ShDS1S45dEoEe5YDU.xOx.wtgBR9riT5D3h9x6n/inSxnlPxKWFtu', NULL, '2023-12-21 00:44:42', '2023-12-21 00:44:42', 1),
(10, 'РРІР°РЅ', 'admin9@admin', NULL, '$2y$10$bcgm8fhuXzE4AEXNjCO3euS80gfPjI75jR3kTqznSuuFcXSSE0lZ6', NULL, '2023-12-21 01:29:51', '2023-12-21 01:29:51', 0);

--
-- РРЅРґРµРєСЃС‹ СЃРѕС…СЂР°РЅС‘РЅРЅС‹С… С‚Р°Р±Р»РёС†
--

--
-- РРЅРґРµРєСЃС‹ С‚Р°Р±Р»РёС†С‹ `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- РРЅРґРµРєСЃС‹ С‚Р°Р±Р»РёС†С‹ `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- РРЅРґРµРєСЃС‹ С‚Р°Р±Р»РёС†С‹ `password_resets`
--
ALTER TABLE `password_resets`
  ADD PRIMARY KEY (`email`);

--
-- РРЅРґРµРєСЃС‹ С‚Р°Р±Р»РёС†С‹ `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- РРЅРґРµРєСЃС‹ С‚Р°Р±Р»РёС†С‹ `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`);

--
-- РРЅРґРµРєСЃС‹ С‚Р°Р±Р»РёС†С‹ `post_tag`
--
ALTER TABLE `post_tag`
  ADD PRIMARY KEY (`id`);

--
-- РРЅРґРµРєСЃС‹ С‚Р°Р±Р»РёС†С‹ `rubrics`
--
ALTER TABLE `rubrics`
  ADD PRIMARY KEY (`id`);

--
-- РРЅРґРµРєСЃС‹ С‚Р°Р±Р»РёС†С‹ `tags`
--
ALTER TABLE `tags`
  ADD PRIMARY KEY (`id`);

--
-- РРЅРґРµРєСЃС‹ С‚Р°Р±Р»РёС†С‹ `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT РґР»СЏ СЃРѕС…СЂР°РЅС‘РЅРЅС‹С… С‚Р°Р±Р»РёС†
--

--
-- AUTO_INCREMENT РґР»СЏ С‚Р°Р±Р»РёС†С‹ `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT РґР»СЏ С‚Р°Р±Р»РёС†С‹ `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT РґР»СЏ С‚Р°Р±Р»РёС†С‹ `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT РґР»СЏ С‚Р°Р±Р»РёС†С‹ `posts`
--
ALTER TABLE `posts`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT РґР»СЏ С‚Р°Р±Р»РёС†С‹ `post_tag`
--
ALTER TABLE `post_tag`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT РґР»СЏ С‚Р°Р±Р»РёС†С‹ `rubrics`
--
ALTER TABLE `rubrics`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT РґР»СЏ С‚Р°Р±Р»РёС†С‹ `tags`
--
ALTER TABLE `tags`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT РґР»СЏ С‚Р°Р±Р»РёС†С‹ `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
COMMIT;

advertisem2advertisem2