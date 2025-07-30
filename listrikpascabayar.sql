-- phpMyAdmin SQL Dump
-- version 5.2.2
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Waktu pembuatan: 30 Jul 2025 pada 07.28
-- Versi server: 5.7.39
-- Versi PHP: 8.2.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `listrikpascabayar`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `cache`
--

CREATE TABLE `cache` (
  `key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `cache_locks`
--

CREATE TABLE `cache_locks` (
  `key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `owner` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `failed_jobs`
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
-- Struktur dari tabel `jobs`
--

CREATE TABLE `jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `queue` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `attempts` tinyint(3) UNSIGNED NOT NULL,
  `reserved_at` int(10) UNSIGNED DEFAULT NULL,
  `available_at` int(10) UNSIGNED NOT NULL,
  `created_at` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `job_batches`
--

CREATE TABLE `job_batches` (
  `id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `total_jobs` int(11) NOT NULL,
  `pending_jobs` int(11) NOT NULL,
  `failed_jobs` int(11) NOT NULL,
  `failed_job_ids` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `options` mediumtext COLLATE utf8mb4_unicode_ci,
  `cancelled_at` int(11) DEFAULT NULL,
  `created_at` int(11) NOT NULL,
  `finished_at` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `level`
--

CREATE TABLE `level` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nama_level` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `level`
--

INSERT INTO `level` (`id`, `nama_level`, `created_at`, `updated_at`) VALUES
(1, 'administrator', '2025-07-29 05:10:48', '2025-07-29 05:10:48'),
(2, 'petugas', '2025-07-29 05:10:48', '2025-07-29 05:10:48');

-- --------------------------------------------------------

--
-- Struktur dari tabel `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '0001_01_01_000001_create_cache_table', 1),
(2, '0001_01_01_000002_create_jobs_table', 1),
(3, '2025_07_21_040702_create_level_table', 1),
(4, '2025_07_21_040721_create_users_table', 1),
(5, '2025_07_21_040734_create_tarifs_table', 1),
(6, '2025_07_21_040749_create_pelanggan_table', 1),
(7, '2025_07_21_044821_create_penggunaan_table', 1),
(8, '2025_07_21_044835_create_tagihan_table', 1),
(9, '2025_07_21_044845_create_pembayaran_table', 1),
(10, '2025_07_21_044919_create_sessions_table', 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `pelanggan`
--

CREATE TABLE `pelanggan` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tarif_id` bigint(20) UNSIGNED DEFAULT NULL,
  `nama_pelanggan` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `username` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `alamat` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nomor_kwh` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `pelanggan`
--

INSERT INTO `pelanggan` (`id`, `tarif_id`, `nama_pelanggan`, `username`, `password`, `alamat`, `nomor_kwh`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 3, 'selena', 'sel3na', '$2y$12$jyfs6LMSyfFlEmrSShovOurZrA.GAHp9NSlI42CGQQxo9ISEbHxRq', 'Jl. jabar', '12322156', NULL, '2025-07-29 05:10:48', '2025-07-29 05:17:38'),
(2, 5, 'santoso', 'santoso', '$2y$12$CviNptNyk7fdffJ3M0fkGOkYhT0vrbDxwTMXC7xoa55lEY2UuhWuC', 'jl bandung', '109384029', NULL, '2025-07-29 09:41:32', '2025-07-29 09:41:32');

-- --------------------------------------------------------

--
-- Struktur dari tabel `pembayaran`
--

CREATE TABLE `pembayaran` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tagihan_id` bigint(20) UNSIGNED NOT NULL,
  `pelanggan_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `tanggal_pembayaran` date NOT NULL,
  `biaya_admin` decimal(12,2) NOT NULL DEFAULT '0.00',
  `total_bayar` decimal(12,2) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'success'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `pembayaran`
--

INSERT INTO `pembayaran` (`id`, `tagihan_id`, `pelanggan_id`, `user_id`, `tanggal_pembayaran`, `biaya_admin`, `total_bayar`, `created_at`, `updated_at`, `status`) VALUES
(1, 2, 1, 1, '2025-07-29', 8000.00, 730350.00, '2025-07-29 05:58:19', '2025-07-29 05:58:19', 'success');

-- --------------------------------------------------------

--
-- Struktur dari tabel `penggunaan`
--

CREATE TABLE `penggunaan` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `pelanggan_id` bigint(20) UNSIGNED NOT NULL,
  `bulan` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tahun` int(11) NOT NULL,
  `meter_awal` int(11) NOT NULL,
  `meter_akhir` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `penggunaan`
--

INSERT INTO `penggunaan` (`id`, `pelanggan_id`, `bulan`, `tahun`, `meter_awal`, `meter_akhir`, `created_at`, `updated_at`) VALUES
(1, 1, 'Januari', 2025, 0, 3000, '2025-07-29 05:53:24', '2025-07-29 05:53:24'),
(2, 1, 'Februari', 2025, 3000, 3500, '2025-07-29 05:57:27', '2025-07-29 05:57:27');

-- --------------------------------------------------------

--
-- Struktur dari tabel `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_agent` text COLLATE utf8mb4_unicode_ci,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_activity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `sessions`
--

INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('BP5jkv0AdKF1L3Au9QO5jMjaNRJ1MWQ7IFLkr7Yl', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/138.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiSEFrTDE5ZHhNWFJxaDMxT0UzSmRSdXdBbmJ6YWlyZnZ4MnB5eldGYyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzE6Imh0dHA6Ly9sb2NhbGhvc3Q6ODAwMC90ZWxlc2NvcGUiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1753810777),
('fTD7RdSWKZ8Qn6B0O49xKuXVybWhkvG4j3G4CJUi', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/138.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiTkg0a2Z1REo3cW5wVEx2YldUYVZEYm5oWTY5Zkhta2xibU1TSVoxSCI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mjc6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9sb2dpbiI7fX0=', 1753798342),
('HfGxly3ix5zqKXYd3VSLK0XLGkTcifaUOXoyqbu8', 1, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/138.0.0.0 Safari/537.36', 'YTo1OntzOjY6Il90b2tlbiI7czo0MDoiS0JTV0hUenM2aWxIQnRudHdSR3phcU5jVGt2TVFpTFZud0ZSS1E5WSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mjc6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9sb2dpbiI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fXM6NTA6ImxvZ2luX3dlYl81OWJhMzZhZGRjMmIyZjk0MDE1ODBmMDE0YzdmNThlYTRlMzA5ODlkIjtpOjE7czoyMjoiUEhQREVCVUdCQVJfU1RBQ0tfREFUQSI7YTowOnt9fQ==', 1753810941);

-- --------------------------------------------------------

--
-- Struktur dari tabel `tagihan`
--

CREATE TABLE `tagihan` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `penggunaan_id` bigint(20) UNSIGNED NOT NULL,
  `pelanggan_id` bigint(20) UNSIGNED NOT NULL,
  `bulan` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tahun` int(11) NOT NULL,
  `jumlah_meter` int(11) NOT NULL,
  `status_tagihan` enum('Belum Dibayar','Sudah Dibayar') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Belum Dibayar',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `tagihan`
--

INSERT INTO `tagihan` (`id`, `penggunaan_id`, `pelanggan_id`, `bulan`, `tahun`, `jumlah_meter`, `status_tagihan`, `created_at`, `updated_at`) VALUES
(2, 2, 1, 'Februari', 2025, 500, 'Sudah Dibayar', '2025-07-29 05:57:53', '2025-07-29 05:58:19');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tarifs`
--

CREATE TABLE `tarifs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `daya` int(11) NOT NULL,
  `tarif_perkwh` decimal(10,2) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `tarifs`
--

INSERT INTO `tarifs` (`id`, `daya`, `tarif_perkwh`, `created_at`, `updated_at`) VALUES
(1, 450, 418.00, '2025-07-29 05:10:47', '2025-07-29 05:10:47'),
(2, 900, 1352.00, '2025-07-29 05:10:47', '2025-07-29 05:10:47'),
(3, 1300, 1444.70, '2025-07-29 05:10:47', '2025-07-29 05:10:47'),
(4, 2200, 1444.70, '2025-07-29 05:10:47', '2025-07-29 05:10:47'),
(5, 3500, 1444.70, '2025-07-29 05:10:47', '2025-07-29 05:10:47');

-- --------------------------------------------------------

--
-- Struktur dari tabel `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nama_user` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `username` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `level_id` bigint(20) UNSIGNED DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `users`
--

INSERT INTO `users` (`id`, `nama_user`, `username`, `password`, `level_id`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Administrator Utama', 'admin', '$2y$12$HbZ3Q69JcCmFMZnCB98VRODsLMtxpbqgqkvvsA3q/wZEIVSWeql9C', 1, NULL, '2025-07-29 05:10:49', '2025-07-29 05:10:49'),
(2, 'Bebek sayur', 'petugas', '$2y$12$Rvq7rQyweUfAxwLPgQB/cu8vpJPCbUI/W3nwTXFusv4/GNunyIcDO', 2, NULL, '2025-07-29 05:10:49', '2025-07-29 05:18:16');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `cache`
--
ALTER TABLE `cache`
  ADD PRIMARY KEY (`key`);

--
-- Indeks untuk tabel `cache_locks`
--
ALTER TABLE `cache_locks`
  ADD PRIMARY KEY (`key`);

--
-- Indeks untuk tabel `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indeks untuk tabel `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `jobs_queue_index` (`queue`);

--
-- Indeks untuk tabel `job_batches`
--
ALTER TABLE `job_batches`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `level`
--
ALTER TABLE `level`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `level_nama_level_unique` (`nama_level`);

--
-- Indeks untuk tabel `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `pelanggan`
--
ALTER TABLE `pelanggan`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `pelanggan_username_unique` (`username`),
  ADD UNIQUE KEY `pelanggan_nomor_kwh_unique` (`nomor_kwh`),
  ADD KEY `pelanggan_tarif_id_foreign` (`tarif_id`);

--
-- Indeks untuk tabel `pembayaran`
--
ALTER TABLE `pembayaran`
  ADD PRIMARY KEY (`id`),
  ADD KEY `pembayaran_user_id_foreign` (`user_id`),
  ADD KEY `pembayaran_pelanggan_id_tanggal_pembayaran_index` (`pelanggan_id`,`tanggal_pembayaran`),
  ADD KEY `pembayaran_tagihan_id_index` (`tagihan_id`);

--
-- Indeks untuk tabel `penggunaan`
--
ALTER TABLE `penggunaan`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `penggunaan_pelanggan_id_bulan_tahun_unique` (`pelanggan_id`,`bulan`,`tahun`),
  ADD KEY `penggunaan_pelanggan_id_bulan_tahun_index` (`pelanggan_id`,`bulan`,`tahun`);

--
-- Indeks untuk tabel `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

--
-- Indeks untuk tabel `tagihan`
--
ALTER TABLE `tagihan`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `tagihan_penggunaan_id_unique` (`penggunaan_id`),
  ADD KEY `tagihan_pelanggan_id_tahun_bulan_index` (`pelanggan_id`,`tahun`,`bulan`),
  ADD KEY `tagihan_status_tagihan_index` (`status_tagihan`);

--
-- Indeks untuk tabel `tarifs`
--
ALTER TABLE `tarifs`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_username_unique` (`username`),
  ADD KEY `users_level_id_foreign` (`level_id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `level`
--
ALTER TABLE `level`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT untuk tabel `pelanggan`
--
ALTER TABLE `pelanggan`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `pembayaran`
--
ALTER TABLE `pembayaran`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `penggunaan`
--
ALTER TABLE `penggunaan`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `tagihan`
--
ALTER TABLE `tagihan`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `tarifs`
--
ALTER TABLE `tarifs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT untuk tabel `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `pelanggan`
--
ALTER TABLE `pelanggan`
  ADD CONSTRAINT `pelanggan_tarif_id_foreign` FOREIGN KEY (`tarif_id`) REFERENCES `tarifs` (`id`);

--
-- Ketidakleluasaan untuk tabel `pembayaran`
--
ALTER TABLE `pembayaran`
  ADD CONSTRAINT `pembayaran_pelanggan_id_foreign` FOREIGN KEY (`pelanggan_id`) REFERENCES `pelanggan` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `pembayaran_tagihan_id_foreign` FOREIGN KEY (`tagihan_id`) REFERENCES `tagihan` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `pembayaran_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Ketidakleluasaan untuk tabel `penggunaan`
--
ALTER TABLE `penggunaan`
  ADD CONSTRAINT `penggunaan_pelanggan_id_foreign` FOREIGN KEY (`pelanggan_id`) REFERENCES `pelanggan` (`id`) ON DELETE CASCADE;

--
-- Ketidakleluasaan untuk tabel `tagihan`
--
ALTER TABLE `tagihan`
  ADD CONSTRAINT `tagihan_pelanggan_id_foreign` FOREIGN KEY (`pelanggan_id`) REFERENCES `pelanggan` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `tagihan_penggunaan_id_foreign` FOREIGN KEY (`penggunaan_id`) REFERENCES `penggunaan` (`id`) ON DELETE CASCADE;

--
-- Ketidakleluasaan untuk tabel `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `users_level_id_foreign` FOREIGN KEY (`level_id`) REFERENCES `level` (`id`) ON DELETE SET NULL;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
