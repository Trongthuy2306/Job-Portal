-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 19, 2024 at 05:30 AM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `job_portal`
--

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `status` int(11) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Accountant', 1, '2024-03-16 09:23:31', '2024-03-16 09:23:31'),
(2, 'Construction & Engineering', 1, '2024-03-16 09:23:31', '2024-03-16 09:23:31'),
(3, 'IT/Computes', 1, '2024-03-16 09:23:31', '2024-03-16 09:23:31'),
(4, 'Social Media', 1, '2024-03-16 09:23:31', '2024-03-16 09:23:31'),
(5, 'Telecom', 1, '2024-03-16 09:23:31', '2024-03-16 09:23:31');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
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
-- Table structure for table `jobs`
--

CREATE TABLE `jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `category_id` bigint(20) UNSIGNED NOT NULL,
  `job_type_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `vacancy` int(11) NOT NULL,
  `salary` varchar(255) DEFAULT NULL,
  `location` varchar(255) NOT NULL,
  `description` text DEFAULT NULL,
  `benefits` text DEFAULT NULL,
  `responsibility` text DEFAULT NULL,
  `qualifications` text DEFAULT NULL,
  `keywords` text DEFAULT NULL,
  `experience` varchar(255) NOT NULL,
  `company_name` varchar(255) NOT NULL,
  `company_location` varchar(255) DEFAULT NULL,
  `company_website` varchar(255) DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT 1,
  `isFeatured` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `jobs`
--

INSERT INTO `jobs` (`id`, `title`, `category_id`, `job_type_id`, `user_id`, `vacancy`, `salary`, `location`, `description`, `benefits`, `responsibility`, `qualifications`, `keywords`, `experience`, `company_name`, `company_location`, `company_website`, `status`, `isFeatured`, `created_at`, `updated_at`) VALUES
(2, 'Job 1', 1, 3, 1, 10, '1.000.000', 'HCM', '<h3 style=\"font-family: Inter, sans-serif; font-weight: 600; line-height: 24px; color: rgb(33, 47, 63); font-size: 16px; letter-spacing: -0.16px;\">Mô tả công việc</h3><p class=\"job-description__item--content\" style=\"color: rgb(51, 51, 51); font-family: Inter, sans-serif; font-size: 14px;\"><ul style=\"margin-bottom: 10px; font-family: unset !important; width: unset !important;\"><li style=\"font-family: unset !important; width: unset !important;\">Finding and approaching potential customers through social media channels, networking, events, and conferences.</li><li style=\"font-family: unset !important; width: unset !important;\">Building relationships with customers using Cloud services.</li><li style=\"font-family: unset !important; width: unset !important;\">Conduct legal documents and procedures to establish official cooperation relationships with customers.</li><li style=\"font-family: unset !important; width: unset !important;\">Business implementation of Google Cloud services with customers includes consultant solutions and contract signing.</li><li style=\"font-family: unset !important; width: unset !important;\">Monitor and ensure the progress of providing services to customers and functional departments following the process.</li><li style=\"font-family: unset !important; width: unset !important;\">Monitor and collaborate with accountant collect debts.</li><li style=\"font-family: unset !important; width: unset !important;\">Monitor and make periodic business reports (weekly, monthly, quarterly, annually). Propose options business for each project and customer.</li><li style=\"font-family: unset !important; width: unset !important;\">Synthesize, analyze, and periodically evaluate the market situation, competitors.</li><li style=\"font-family: unset !important; width: unset !important;\">Participating in business or customer development projects, the Center‘s common infrastructure, or company.</li><li style=\"font-family: unset !important; width: unset !important;\">Other tasks as directed by superiors.</li></ul></p>', '<h3 style=\"font-family: Inter, sans-serif; font-weight: 600; line-height: 24px; color: rgb(33, 47, 63); font-size: 16px; letter-spacing: -0.16px;\">Quyền lợi</h3><p class=\"job-description__item--content\" style=\"color: rgb(51, 51, 51); font-family: Inter, sans-serif; font-size: 14px;\"><ul style=\"margin-bottom: 10px; font-family: unset !important; width: unset !important;\"><li style=\"font-family: unset !important; width: unset !important;\">Salary: Negotiable</li><li style=\"font-family: unset !important; width: unset !important;\">Professional working environment</li><li style=\"font-family: unset !important; width: unset !important;\">Promotion once/year</li><li style=\"font-family: unset !important; width: unset !important;\">13th month salary</li><li style=\"font-family: unset !important; width: unset !important;\">Insurance based on the Vietnam labor law</li><li style=\"font-family: unset !important; width: unset !important;\">Yearly vacation</li><li style=\"font-family: unset !important; width: unset !important;\">12 full-paid days off</li><li style=\"font-family: unset !important; width: unset !important;\">Commission bonus</li><li style=\"font-family: unset !important; width: unset !important;\">Company party</li></ul></p>', '<h3 style=\"font-family: Inter, sans-serif; font-weight: 600; line-height: 24px; color: rgb(33, 47, 63); font-size: 16px; letter-spacing: -0.16px;\"><p style=\"margin-right: 0px; margin-bottom: 10px; margin-left: 0px; font-family: Inter, sans-serif; color: rgb(51, 51, 51); font-size: 14px; font-weight: 400; letter-spacing: normal; width: unset !important;\"><span style=\"font-weight: 700; font-family: unset !important; width: unset !important;\">Prioritize:</span></p><ul style=\"margin-bottom: 10px; color: rgb(51, 51, 51); font-size: 14px; font-weight: 400; letter-spacing: normal; width: unset !important;\"><li style=\"font-family: unset !important; width: unset !important;\">Experience in FSI and Cloud fields.</li><li style=\"font-family: unset !important; width: unset !important;\">Having a good understanding of Vietnam &amp; International Cloud services. Especially having a good understanding of public Cloud services such as Google Cloud, AWS, etc.</li></ul></h3>', '<h3 style=\"font-weight: 600; line-height: 24px; font-size: 16px; font-family: Inter, sans-serif; color: rgb(33, 47, 63); letter-spacing: -0.16px;\">Yêu cầu ứng viên</h3><p></p><ul style=\"box-sizing: border-box; vertical-align: baseline; -webkit-tap-highlight-color: transparent; -webkit-font-smoothing: antialiased; text-rendering: optimizelegibility; padding: 0px; margin: 0px 0px 10px; font-family: unset !important; width: unset !important;\"><li style=\"box-sizing: border-box; vertical-align: baseline; -webkit-tap-highlight-color: transparent; -webkit-font-smoothing: antialiased; text-rendering: optimizelegibility; list-style: disc; font-family: unset !important; width: unset !important;\">Graduated from University with a major in Information Technology, International Economics, International Trade or equivalent;</li><li style=\"box-sizing: border-box; vertical-align: baseline; -webkit-tap-highlight-color: transparent; -webkit-font-smoothing: antialiased; text-rendering: optimizelegibility; list-style: disc; font-family: unset !important; width: unset !important;\">Have 3 years of experience in sales, B2B business;</li><li style=\"box-sizing: border-box; vertical-align: baseline; -webkit-tap-highlight-color: transparent; -webkit-font-smoothing: antialiased; text-rendering: optimizelegibility; list-style: disc; font-family: unset !important; width: unset !important;\">Have two years of working experience in IT: hardware (server, DELL server, HP, etc.), software (SAP, etc.);</li><li style=\"box-sizing: border-box; vertical-align: baseline; -webkit-tap-highlight-color: transparent; -webkit-font-smoothing: antialiased; text-rendering: optimizelegibility; list-style: disc; font-family: unset !important; width: unset !important;\">Good communication skills in English;</li><li style=\"box-sizing: border-box; vertical-align: baseline; -webkit-tap-highlight-color: transparent; -webkit-font-smoothing: antialiased; text-rendering: optimizelegibility; list-style: disc; font-family: unset !important; width: unset !important;\">Agile, proactive, persistent. Responsible for work, passionate about business;</li><li style=\"box-sizing: border-box; vertical-align: baseline; -webkit-tap-highlight-color: transparent; -webkit-font-smoothing: antialiased; text-rendering: optimizelegibility; list-style: disc; font-family: unset !important; width: unset !important;\">Ability to present at conferences and events.</li></ul>', 'Intern', '1', 'CTY TNHH A', 'HCM', 'www.abc.vn', 1, 0, '2024-03-16 10:20:30', '2024-03-16 10:20:30'),
(3, 'Title', 5, 2, 1, 10, '100', 'HN', '<p><span style=\"font-family: Mont-Regular; font-size: 16px;\">Description</span><br></p>', '<p><span style=\"font-family: Mont-Regular; font-size: 16px;\">Benefits</span><br></p>', '<p><span style=\"font-family: Mont-Regular; font-size: 16px;\">Responsibility</span><br></p>', '<p><span style=\"font-family: Mont-Regular; font-size: 16px;\">Qualifications</span><br></p>', 'Presher', '1', 'CTY TNHH B', 'HN', 'WWW.XYZ.COM', 1, 1, '2024-03-18 07:39:03', '2024-04-17 20:54:53'),
(4, '11111', 1, 5, 4, 12, '200', 'HCM', '<p>1</p>', '<p>1</p>', '<p>1</p>', '<p>1</p>', 'Intern', '2', '1111', '1', '1', 1, 0, '2024-04-01 18:58:02', '2024-04-18 08:14:56'),
(5, '22222', 3, 3, 3, 2, '2', '2', '<p>2</p>', '<p>2</p>', '<p>2</p>', '<p>2</p>', NULL, '2', 'CTY TNHH B', 'HCM', NULL, 1, 0, '2024-04-18 08:19:32', '2024-04-18 08:19:32'),
(6, '32345', 1, 1, 1, 9, '1.000.000', 'HCM', '<p>3</p>', '<p>3</p>', '<p>3</p>', '<p>3</p>', 'PHP', '2', 'CTY TNHH A', 'HCM', 'www.abc.vn', 1, 0, '2024-04-18 20:15:44', '2024-04-18 20:15:44');

-- --------------------------------------------------------

--
-- Table structure for table `job_applications`
--

CREATE TABLE `job_applications` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `job_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `employer_id` bigint(20) UNSIGNED NOT NULL,
  `applied_date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `job_applications`
--

INSERT INTO `job_applications` (`id`, `job_id`, `user_id`, `employer_id`, `applied_date`, `created_at`, `updated_at`) VALUES
(3, 2, 2, 1, '2024-03-18 07:32:52', '2024-03-18 07:32:52', '2024-03-18 07:32:52'),
(4, 3, 3, 1, '2024-03-18 07:41:56', '2024-03-18 07:41:56', '2024-03-18 07:41:56'),
(5, 5, 2, 3, '2024-04-18 08:20:21', '2024-04-18 08:20:21', '2024-04-18 08:20:21'),
(6, 5, 5, 3, '2024-04-18 08:34:53', '2024-04-18 08:34:53', '2024-04-18 08:34:53'),
(7, 6, 2, 1, '2024-04-18 20:16:53', '2024-04-18 20:16:53', '2024-04-18 20:16:53');

-- --------------------------------------------------------

--
-- Table structure for table `job_types`
--

CREATE TABLE `job_types` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `status` int(11) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `job_types`
--

INSERT INTO `job_types` (`id`, `name`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Full Time', 1, '2024-03-16 09:23:31', '2024-03-16 09:23:31'),
(2, 'Part Time', 1, '2024-03-16 09:23:31', '2024-03-16 09:23:31'),
(3, 'Freelance', 1, '2024-03-16 09:23:31', '2024-03-16 09:23:31'),
(4, 'Remote', 1, '2024-03-16 09:23:31', '2024-03-16 09:23:31'),
(5, 'Contract', 1, '2024-03-16 09:23:31', '2024-03-16 09:23:31');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_reset_tokens_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2023_12_21_194133_create_categories_table', 1),
(6, '2023_12_21_194227_create_job_types_table', 1),
(7, '2023_12_21_194315_create_jobs_table', 1),
(8, '2023_12_25_191003_alter_jobs_table', 1),
(9, '2023_12_27_181245_alter_jobs_table', 1),
(10, '2024_01_12_180428_create_job_applications_table', 1),
(11, '2024_01_24_050302_create_saved_jobs_table', 1),
(12, '2024_02_05_194735_alter_users_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `password_reset_tokens`
--

INSERT INTO `password_reset_tokens` (`email`, `token`, `created_at`) VALUES
('nvc@gmail.com', 'iGxfkjQUHREUyBC2POSnvB2332hvoqM9UcSgle1RU1kPKeqxhDY0MHbbHaRC', '2024-04-18 18:25:33'),
('thuynguyen@gmail.com', 'IhOliMY2c4TxPdgDO5YLm5GzZ6vmOJPX87TdrMtWiMqXcQRy5igdmSTWjJIg', '2024-04-01 19:30:26');

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
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
-- Table structure for table `saved_jobs`
--

CREATE TABLE `saved_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `job_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `saved_jobs`
--

INSERT INTO `saved_jobs` (`id`, `job_id`, `user_id`, `created_at`, `updated_at`) VALUES
(2, 5, 2, '2024-04-18 08:20:26', '2024-04-18 08:20:26'),
(3, 5, 5, '2024-04-18 08:35:53', '2024-04-18 08:35:53'),
(4, 6, 2, '2024-04-18 20:16:44', '2024-04-18 20:16:44');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `designation` varchar(255) DEFAULT NULL,
  `mobile` varchar(255) DEFAULT NULL,
  `role` enum('admin','user') NOT NULL DEFAULT 'user',
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `image`, `designation`, `mobile`, `role`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'NGUYỄN TRỌNG THỦY', 'thuynguyen.23062002@gmail.com', NULL, '$2y$12$IMPf7g.kvXB6vgh3lR6SyefV6k12rp8471p7mM0CQfeTmsTPhFmDy', '1-1710523537.jpg', 'Developer', '0383857229', 'admin', NULL, '2024-03-15 09:02:16', '2024-03-18 07:27:26'),
(2, 'Nguyen Van A', 'nva@gmail.com', NULL, '$2y$12$NhZc4IbZZpy/3YovgMFLpuxyGGhOGfAmNtCYNIJ0.EeNEKaXijpTG', NULL, 'Senior', '0123456789', 'user', NULL, '2024-03-16 10:22:07', '2024-03-18 07:29:54'),
(3, 'Nguyen Van B', 'nvb@gmail.com', NULL, '$2y$12$WC2EaOE292Xahg7dHgwtNudtlzSWaQVCTbJjsgWq5AojCO8iNgvyC', NULL, NULL, NULL, 'user', NULL, '2024-03-18 07:41:20', '2024-03-18 07:41:20'),
(4, 'Nguyễn Trọng Thủy', 'thuynguyen@gmail.com', NULL, '$2y$12$M5wvTTedWaxNj06o3r5lneHArsomDIpiR6n0m9OgBOeqJaOnjAmQ.', NULL, NULL, NULL, 'user', NULL, '2024-04-01 18:52:09', '2024-04-01 19:27:58'),
(5, 'Nguyen Van C', 'nvc@gmail.com', NULL, '$2y$12$41I66hBolZSrJfk15adHneLzJzFWfVcOELMRbw7kCUtQVp/43hxIO', NULL, NULL, NULL, 'user', NULL, '2024-04-18 08:31:09', '2024-04-18 18:27:31');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `jobs_category_id_foreign` (`category_id`),
  ADD KEY `jobs_job_type_id_foreign` (`job_type_id`),
  ADD KEY `jobs_user_id_foreign` (`user_id`);

--
-- Indexes for table `job_applications`
--
ALTER TABLE `job_applications`
  ADD PRIMARY KEY (`id`),
  ADD KEY `job_applications_job_id_foreign` (`job_id`),
  ADD KEY `job_applications_user_id_foreign` (`user_id`),
  ADD KEY `job_applications_employer_id_foreign` (`employer_id`);

--
-- Indexes for table `job_types`
--
ALTER TABLE `job_types`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `saved_jobs`
--
ALTER TABLE `saved_jobs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `saved_jobs_job_id_foreign` (`job_id`),
  ADD KEY `saved_jobs_user_id_foreign` (`user_id`);

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
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `job_applications`
--
ALTER TABLE `job_applications`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `job_types`
--
ALTER TABLE `job_types`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `saved_jobs`
--
ALTER TABLE `saved_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `jobs`
--
ALTER TABLE `jobs`
  ADD CONSTRAINT `jobs_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `jobs_job_type_id_foreign` FOREIGN KEY (`job_type_id`) REFERENCES `job_types` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `jobs_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `job_applications`
--
ALTER TABLE `job_applications`
  ADD CONSTRAINT `job_applications_employer_id_foreign` FOREIGN KEY (`employer_id`) REFERENCES `users` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `job_applications_job_id_foreign` FOREIGN KEY (`job_id`) REFERENCES `jobs` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `job_applications_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `saved_jobs`
--
ALTER TABLE `saved_jobs`
  ADD CONSTRAINT `saved_jobs_job_id_foreign` FOREIGN KEY (`job_id`) REFERENCES `jobs` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `saved_jobs_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
