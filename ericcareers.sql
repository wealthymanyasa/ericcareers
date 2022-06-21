-- phpMyAdmin SQL Dump
-- version 4.9.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 21, 2022 at 03:10 PM
-- Server version: 10.4.8-MariaDB
-- PHP Version: 7.3.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ericcareers`
--

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `listings`
--

CREATE TABLE `listings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tags` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `company` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `location` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `website` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `listings`
--

INSERT INTO `listings` (`id`, `title`, `tags`, `company`, `location`, `email`, `website`, `description`, `created_at`, `updated_at`) VALUES
(1, 'Laravel Senior Developer', 'laravel, javascript', 'Acme Corp', 'Boston, MA', 'email1@email.com', 'https://www.acme.com', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Ipsam minima et illo reprehenderit quas possimus voluptas repudiandae cum expedita, eveniet aliquid, quam illum quaerat consequatur! Expedita ab consectetur tenetur delensiti?', '2022-06-21 06:49:06', '2022-06-21 06:49:06'),
(2, 'Full-Stack Engineer', 'laravel, backend ,api', 'Stark Industries', 'New York, NY', 'email2@email.com', 'https://www.starkindustries.com', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Ipsam minima et illo reprehenderit quas possimus voluptas repudiandae cum expedita, eveniet aliquid, quam illum quaerat consequatur! Expedita ab consectetur tenetur delensiti?', '2022-06-21 06:49:06', '2022-06-21 06:49:06'),
(3, 'Quo voluptatem odio qui qui.', 'laravel, api, backend', 'Jacobi-Mraz', 'Watsicachester', 'deven72@bartoletti.com', 'http://wiza.com/pariatur-aut-ratione-facilis-et', 'Vel dignissimos eum qui tenetur accusantium harum. Quos unde reprehenderit nobis facere. Molestias provident inventore ut aliquam autem id. Vel eveniet quidem ut rem necessitatibus ullam.', '2022-06-21 07:25:54', '2022-06-21 07:25:54'),
(4, 'Velit consectetur consectetur inventore sapiente consequuntur.', 'laravel, api, backend', 'Rolfson Inc', 'Danialview', 'bailee.littel@hoeger.net', 'http://barrows.org/assumenda-ipsum-atque-itaque-molestiae-error', 'Aut harum numquam dignissimos delectus eaque sapiente. Et nam cum modi quis maiores voluptates accusamus. Nemo dolorum laborum quia rerum. Rerum dolor velit et voluptatum illo. Nulla ipsam error aut at non perferendis.', '2022-06-21 07:25:54', '2022-06-21 07:25:54'),
(5, 'Et nihil qui adipisci molestiae consequuntur.', 'laravel, api, backend', 'Strosin Group', 'Lomaside', 'jking@simonis.org', 'http://www.konopelski.com/velit-sed-quam-cupiditate', 'Unde architecto sed qui distinctio voluptatibus rerum enim. Quod id fuga neque sit aut occaecati sed a. Amet enim et sequi possimus est molestias. Qui enim aspernatur quidem magnam eveniet. Et molestiae consectetur aut dicta voluptatibus in. Molestiae ex quo et sit repellendus.', '2022-06-21 07:25:54', '2022-06-21 07:25:54'),
(6, 'Expedita vel quae aliquid facilis perspiciatis odit.', 'laravel, api, backend', 'D\'Amore-Pacocha', 'Jillianport', 'freeda.durgan@runte.com', 'http://www.koepp.com/', 'Eveniet quis debitis animi ut expedita delectus delectus. Veniam et iste ipsam quia vel omnis voluptatibus. Quo commodi rerum dolore id nostrum temporibus a. Fugit a commodi accusantium possimus voluptatem voluptatum. Magni voluptatem ipsam libero illo sunt voluptatem in. Rerum nemo natus qui libero ullam aut.', '2022-06-21 07:25:54', '2022-06-21 07:25:54'),
(7, 'Rerum ut consequatur ut.', 'laravel, api, backend', 'Robel-Hegmann', 'Port Lloydville', 'ozella60@kirlin.com', 'http://prohaska.biz/omnis-eos-delectus-nemo.html', 'Sint consectetur aut aut rem quia odit. Omnis quod nihil nobis quasi est harum vel. Ex ullam aut distinctio provident commodi numquam sed. Fugit qui nostrum ut eaque. Veritatis id in esse esse aut iste. Mollitia culpa illum voluptatem iste. Excepturi facere ducimus nostrum rerum natus.', '2022-06-21 07:25:54', '2022-06-21 07:25:54'),
(8, 'Architecto natus officia ab architecto ut sit omnis.', 'laravel, api, backend', 'Graham LLC', 'South Lina', 'darian.marvin@keeling.org', 'http://bergstrom.info/possimus-ut-autem-voluptates-vel-a.html', 'Commodi praesentium iure excepturi. Et et repellat minima sit. Voluptatem dolores ut aut eius consequuntur ipsam. Et voluptas cum tenetur consequuntur in. Asperiores et et sit eum. Dolorem quod laborum iusto magnam dolores facere. Quod dicta a officia voluptatem.', '2022-06-21 07:25:54', '2022-06-21 07:25:54'),
(9, 'Quasi sit possimus qui esse distinctio voluptates.', 'laravel, api, backend', 'Cronin Inc', 'Lake Rafaelport', 'felix87@block.com', 'http://bernhard.com/dolorem-architecto-commodi-delectus-ut-vitae-omnis-quaerat', 'Provident eos et nulla qui. Est nulla recusandae iure asperiores dolores ratione fugit. Consequatur nesciunt sunt exercitationem reiciendis molestiae eum ipsam. Ex sunt dolor in officia. Et doloribus iure velit molestiae nihil. Assumenda voluptatibus occaecati sunt.', '2022-06-21 07:25:54', '2022-06-21 07:25:54'),
(10, 'Ducimus qui ipsa libero ipsam.', 'laravel, api, backend', 'Ryan, Kemmer and Pagac', 'North Earnest', 'verdie.rosenbaum@legros.com', 'http://www.carroll.com/rerum-molestias-minima-distinctio-sit-eos-perspiciatis-id', 'Cumque quod maiores qui quia minima sed fuga autem. Provident illo odit libero sunt. Nihil porro voluptatem facere quam. Provident omnis in reiciendis neque est. Aperiam qui laborum in tempore ex sed accusantium.', '2022-06-21 07:25:54', '2022-06-21 07:25:54'),
(11, 'Eum quibusdam quibusdam commodi aut ex.', 'laravel, api, backend', 'Cummings-Erdman', 'Reaganton', 'umurphy@bosco.com', 'http://durgan.biz/ipsa-non-deleniti-voluptas-aut.html', 'Suscipit quia consectetur nostrum doloribus. Et ab dolorum et. Aut pariatur omnis enim inventore molestias minima velit. Vel illo quia non nisi. Aut quia modi nostrum. Non enim eum voluptatem molestias reprehenderit sunt dolorum. Repellat et nihil dolorum velit. Ut voluptate eum facilis eum dolorem ipsa.', '2022-06-21 07:25:54', '2022-06-21 07:25:54'),
(12, 'Dolores ut eos libero mollitia laborum in.', 'laravel, api, backend', 'Dickens Group', 'Lake Maeve', 'zabbott@cronin.com', 'http://bechtelar.com/', 'Quia tempore recusandae totam voluptates unde. Ea repellendus ab voluptatem eos eum enim. Omnis ut modi sit et. Ut voluptatem quam sed reprehenderit perferendis. Aspernatur vel animi ab dolor nemo expedita. Dolore tenetur est et provident corporis. Voluptatem ut voluptatem dolor aut ab quia rem.', '2022-06-21 07:25:54', '2022-06-21 07:25:54');

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
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2022_06_21_082017_create_listings_table', 1);

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
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `listings`
--
ALTER TABLE `listings`
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
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

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
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `listings`
--
ALTER TABLE `listings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
