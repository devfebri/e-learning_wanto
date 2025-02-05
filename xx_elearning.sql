-- phpMyAdmin SQL Dump
-- version 5.0.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 01, 2021 at 04:57 PM
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
-- Database: `xx_elearning`
--

-- --------------------------------------------------------

--
-- Table structure for table `guru`
--

CREATE TABLE `guru` (
  `id` int(11) NOT NULL,
  `nip` varchar(20) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `user_id` int(15) NOT NULL,
  `mapel_id` int(11) NOT NULL,
  `jenis_kelamin` varchar(50) NOT NULL,
  `no_hp` varchar(15) NOT NULL,
  `tanggal_lahir` varchar(20) NOT NULL,
  `avatar` varchar(200) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `guru`
--

INSERT INTO `guru` (`id`, `nip`, `nama`, `user_id`, `mapel_id`, `jenis_kelamin`, `no_hp`, `tanggal_lahir`, `avatar`, `created_at`, `updated_at`) VALUES
(8, '196612311992032037', 'Ermadewita,S.Pd', 86, 23, 'Perempuan', '085266661111', '1966-12-31', 'teacher-1.jpg', '2021-03-01 13:11:18', '2021-03-01 21:10:02'),
(9, '1965040219876810111', 'Trisonta, S.Pd', 87, 24, 'Laki-Laki', '085266996633', '1965-04-02', NULL, '2021-03-01 13:13:07', '2021-03-01 20:13:07'),
(10, '196512311988121009', 'Edison, S.Pd', 88, 25, 'Laki-Laki', '085266112233', '1965-10-11', NULL, '2021-03-01 13:16:19', '2021-03-01 20:16:19'),
(11, '196407191994012002', 'Yulien, S.Pd', 89, 26, 'Perempuan', '085299554466', '1964-07-19', NULL, '2021-03-01 13:19:31', '2021-03-01 20:19:31'),
(12, '196612181995121001', 'Drs.Ishak,MPd', 90, 27, 'Laki-Laki', '085266884422', '1966-12-18', NULL, '2021-03-01 13:21:14', '2021-03-01 20:21:14');

-- --------------------------------------------------------

--
-- Table structure for table `guru_siswa`
--

CREATE TABLE `guru_siswa` (
  `id` int(11) NOT NULL,
  `guru_id` int(11) NOT NULL,
  `siswa_id` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `kelas`
--

CREATE TABLE `kelas` (
  `id` int(15) NOT NULL,
  `nama` varchar(25) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `kelas`
--

INSERT INTO `kelas` (`id`, `nama`, `created_at`, `updated_at`) VALUES
(31, 'VII A', '2020-10-28 22:14:35', '2020-10-29 05:14:35'),
(32, 'VII B', '2020-10-28 22:25:37', '2020-10-29 05:25:37'),
(33, 'VII C', '2020-10-28 22:26:48', '2020-10-29 05:26:48'),
(34, 'VII D', '2020-10-28 22:28:12', '2020-10-29 05:28:12'),
(35, 'VII E', '2020-10-30 07:44:21', '2020-10-30 14:44:21'),
(36, 'VII F', '2020-11-01 23:25:54', '2020-11-02 06:25:54'),
(37, 'VIII A', '2020-11-08 06:48:43', '2020-11-08 13:48:43'),
(38, 'VIII B', '2020-11-08 06:48:54', '2020-11-08 13:48:54'),
(39, 'VIII C', '2020-11-08 06:49:02', '2020-11-08 13:49:02'),
(40, 'VIII D', '2020-11-08 06:49:10', '2020-11-08 13:49:10'),
(41, 'VIII E', '2020-11-08 06:49:20', '2020-11-08 13:49:20'),
(42, 'VIII F', '2020-11-08 06:49:28', '2020-11-08 13:49:28'),
(43, 'IX A', '2020-11-08 06:49:40', '2020-11-08 13:49:40'),
(44, 'IX B', '2020-11-08 06:49:48', '2020-11-08 13:49:48'),
(45, 'IX C', '2020-11-08 06:49:53', '2020-11-08 13:49:53'),
(46, 'IX D', '2020-11-08 06:50:03', '2020-11-08 13:50:03'),
(47, 'IX E', '2020-11-08 06:50:10', '2020-11-08 13:50:10'),
(48, 'IX F', '2020-11-08 06:50:15', '2020-11-08 13:50:15');

-- --------------------------------------------------------

--
-- Table structure for table `kelas_mapel`
--

CREATE TABLE `kelas_mapel` (
  `id` int(11) NOT NULL,
  `kelas_id` int(11) NOT NULL,
  `mapel_id` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `kelas_mapel`
--

INSERT INTO `kelas_mapel` (`id`, `kelas_id`, `mapel_id`, `created_at`) VALUES
(1, 31, 22, '2020-11-08 13:48:17'),
(2, 32, 22, '2020-11-08 13:48:17'),
(3, 33, 22, '2020-11-08 13:48:17'),
(4, 34, 22, '2020-11-08 13:48:17'),
(5, 35, 22, '2020-11-08 13:48:17'),
(6, 36, 22, '2020-11-08 13:48:17'),
(7, 31, 23, '2020-11-08 14:03:12'),
(8, 32, 23, '2020-11-08 14:03:12'),
(9, 33, 23, '2020-11-08 14:03:12'),
(10, 34, 23, '2020-11-08 14:03:12'),
(11, 35, 23, '2020-11-08 14:03:12'),
(12, 36, 23, '2020-11-08 14:03:12'),
(13, 37, 23, '2020-11-08 14:03:12'),
(14, 38, 23, '2020-11-08 14:03:12'),
(15, 39, 23, '2020-11-08 14:03:12'),
(16, 40, 23, '2020-11-08 14:03:12'),
(17, 41, 23, '2020-11-08 14:03:12'),
(18, 42, 23, '2020-11-08 14:03:12'),
(19, 43, 23, '2020-11-08 14:03:12'),
(20, 44, 23, '2020-11-08 14:03:12'),
(21, 45, 23, '2020-11-08 14:03:12'),
(22, 46, 23, '2020-11-08 14:03:12'),
(23, 47, 23, '2020-11-08 14:03:12'),
(24, 48, 23, '2020-11-08 14:03:12'),
(25, 31, 24, '2020-11-08 14:03:29'),
(26, 32, 24, '2020-11-08 14:03:29'),
(27, 33, 24, '2020-11-08 14:03:29'),
(28, 34, 24, '2020-11-08 14:03:29'),
(29, 35, 24, '2020-11-08 14:03:29'),
(30, 36, 24, '2020-11-08 14:03:29'),
(31, 37, 24, '2020-11-08 14:03:29'),
(32, 38, 24, '2020-11-08 14:03:29'),
(33, 39, 24, '2020-11-08 14:03:29'),
(34, 40, 24, '2020-11-08 14:03:29'),
(35, 41, 24, '2020-11-08 14:03:29'),
(36, 42, 24, '2020-11-08 14:03:29'),
(37, 43, 24, '2020-11-08 14:03:29'),
(38, 44, 24, '2020-11-08 14:03:29'),
(39, 45, 24, '2020-11-08 14:03:29'),
(40, 46, 24, '2020-11-08 14:03:29'),
(41, 47, 24, '2020-11-08 14:03:29'),
(42, 48, 24, '2020-11-08 14:03:29'),
(43, 31, 25, '2020-11-08 14:03:51'),
(44, 32, 25, '2020-11-08 14:03:51'),
(45, 33, 25, '2020-11-08 14:03:51'),
(46, 34, 25, '2020-11-08 14:03:51'),
(47, 35, 25, '2020-11-08 14:03:51'),
(48, 36, 25, '2020-11-08 14:03:51'),
(49, 37, 25, '2020-11-08 14:03:51'),
(50, 38, 25, '2020-11-08 14:03:51'),
(51, 39, 25, '2020-11-08 14:03:51'),
(52, 40, 25, '2020-11-08 14:03:51'),
(53, 41, 25, '2020-11-08 14:03:51'),
(54, 42, 25, '2020-11-08 14:03:51'),
(55, 43, 25, '2020-11-08 14:03:51'),
(56, 44, 25, '2020-11-08 14:03:51'),
(57, 45, 25, '2020-11-08 14:03:51'),
(58, 46, 25, '2020-11-08 14:03:51'),
(59, 47, 25, '2020-11-08 14:03:51'),
(60, 48, 25, '2020-11-08 14:03:51'),
(61, 31, 26, '2020-11-13 11:17:43'),
(62, 32, 26, '2020-11-13 11:17:43'),
(63, 33, 26, '2020-11-13 11:17:43'),
(64, 34, 26, '2020-11-13 11:17:43'),
(65, 35, 26, '2020-11-13 11:17:43'),
(66, 36, 26, '2020-11-13 11:17:43'),
(67, 37, 26, '2020-11-13 11:17:43'),
(68, 38, 26, '2020-11-13 11:17:43'),
(69, 39, 26, '2020-11-13 11:17:43'),
(70, 40, 26, '2020-11-13 11:17:43'),
(71, 41, 26, '2020-11-13 11:17:43'),
(72, 42, 26, '2020-11-13 11:17:43'),
(73, 43, 26, '2020-11-13 11:17:43'),
(74, 44, 26, '2020-11-13 11:17:43'),
(75, 45, 26, '2020-11-13 11:17:43'),
(76, 46, 26, '2020-11-13 11:17:43'),
(77, 47, 26, '2020-11-13 11:17:43'),
(78, 48, 26, '2020-11-13 11:17:43'),
(79, 31, 27, '2021-03-01 13:08:35'),
(80, 32, 27, '2021-03-01 13:08:35'),
(81, 33, 27, '2021-03-01 13:08:35'),
(82, 34, 27, '2021-03-01 13:08:35'),
(83, 35, 27, '2021-03-01 13:08:35'),
(84, 36, 27, '2021-03-01 13:08:35'),
(85, 37, 27, '2021-03-01 13:08:35'),
(86, 38, 27, '2021-03-01 13:08:35'),
(87, 39, 27, '2021-03-01 13:08:35'),
(88, 40, 27, '2021-03-01 13:08:35'),
(89, 41, 27, '2021-03-01 13:08:35'),
(90, 42, 27, '2021-03-01 13:08:35'),
(91, 43, 27, '2021-03-01 13:08:35'),
(92, 44, 27, '2021-03-01 13:08:35'),
(93, 45, 27, '2021-03-01 13:08:35'),
(94, 46, 27, '2021-03-01 13:08:35'),
(95, 47, 27, '2021-03-01 13:08:35'),
(96, 48, 27, '2021-03-01 13:08:35'),
(97, 31, 29, '2021-03-01 13:09:11'),
(98, 32, 29, '2021-03-01 13:09:11'),
(99, 33, 29, '2021-03-01 13:09:11'),
(100, 34, 29, '2021-03-01 13:09:11'),
(101, 35, 29, '2021-03-01 13:09:11'),
(102, 36, 29, '2021-03-01 13:09:11'),
(103, 37, 29, '2021-03-01 13:09:11'),
(104, 38, 29, '2021-03-01 13:09:11'),
(105, 39, 29, '2021-03-01 13:09:11'),
(106, 40, 29, '2021-03-01 13:09:11'),
(107, 41, 29, '2021-03-01 13:09:11'),
(108, 42, 29, '2021-03-01 13:09:11'),
(109, 43, 29, '2021-03-01 13:09:11'),
(110, 44, 29, '2021-03-01 13:09:11'),
(111, 45, 29, '2021-03-01 13:09:11'),
(112, 46, 29, '2021-03-01 13:09:11'),
(113, 47, 29, '2021-03-01 13:09:11'),
(114, 48, 29, '2021-03-01 13:09:11');

-- --------------------------------------------------------

--
-- Table structure for table `kelas_tugas`
--

CREATE TABLE `kelas_tugas` (
  `id` int(11) NOT NULL,
  `kelas_id` int(11) NOT NULL,
  `tugas_id` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `kelas_tugas`
--

INSERT INTO `kelas_tugas` (`id`, `kelas_id`, `tugas_id`, `created_at`) VALUES
(48, 31, 43, '2020-11-13 11:19:47'),
(49, 32, 43, '2020-11-13 11:19:47'),
(50, 33, 43, '2020-11-13 11:19:47'),
(51, 34, 43, '2020-11-13 11:19:47'),
(52, 35, 43, '2020-11-13 11:19:47'),
(53, 36, 43, '2020-11-13 11:19:47'),
(54, 37, 43, '2020-11-13 11:19:47'),
(55, 38, 43, '2020-11-13 11:19:47'),
(58, 31, 48, '2021-03-01 14:14:27');

-- --------------------------------------------------------

--
-- Table structure for table `mapel`
--

CREATE TABLE `mapel` (
  `id` int(25) NOT NULL,
  `nama` varchar(100) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `mapel`
--

INSERT INTO `mapel` (`id`, `nama`, `created_at`, `updated_at`) VALUES
(23, 'IPA', '2020-11-08 07:03:12', '2020-11-08 14:03:12'),
(24, 'IPS', '2020-11-08 07:03:29', '2020-11-08 14:03:29'),
(25, 'B.Indo', '2020-11-08 07:03:51', '2020-11-08 14:03:51'),
(26, 'Olahraga', '2020-11-13 04:17:43', '2020-11-13 11:17:43'),
(27, 'MTK', '2021-03-01 13:08:35', '2021-03-01 20:08:35'),
(29, 'B.Inggris', '2021-03-01 13:09:11', '2021-03-01 20:09:11');

-- --------------------------------------------------------

--
-- Table structure for table `mapel_siswa`
--

CREATE TABLE `mapel_siswa` (
  `id` int(11) NOT NULL,
  `mapel_id` int(11) NOT NULL,
  `siswa_id` int(11) NOT NULL,
  `kettugas` varchar(100) NOT NULL,
  `nilai` varchar(11) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `mapel_siswa`
--

INSERT INTO `mapel_siswa` (`id`, `mapel_id`, `siswa_id`, `kettugas`, `nilai`, `created_at`, `updated_at`) VALUES
(10, 26, 4, 'Tugas Olahraga dasar', '100', '2020-11-13 04:22:51', '2020-11-13 11:22:51'),
(11, 25, 4, '50', '100', '2020-11-13 04:49:48', '2020-11-13 11:49:48'),
(12, 23, 6, 'tugas 1', '97', '2021-03-01 14:26:43', '2021-03-01 21:26:43');

-- --------------------------------------------------------

--
-- Table structure for table `materi`
--

CREATE TABLE `materi` (
  `id` int(25) NOT NULL,
  `nama` varchar(100) NOT NULL,
  `mapel_id` int(25) NOT NULL,
  `deskripsi` varchar(100) NOT NULL,
  `kelas_id` int(25) NOT NULL,
  `file_materi` varchar(200) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `materi`
--

INSERT INTO `materi` (`id`, `nama`, `mapel_id`, `deskripsi`, `kelas_id`, `file_materi`, `created_at`, `updated_at`) VALUES
(77, 'Pertemuan 1', 23, 'dibaca semua ya', 31, 'Kegiatan 6.docx', '2021-03-01 14:12:08', '2021-03-01 21:12:08');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2020_08_31_043912_create_siswa_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `siswa`
--

CREATE TABLE `siswa` (
  `id` int(11) NOT NULL,
  `nisn` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nama` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(15) NOT NULL,
  `kelas_id` int(25) NOT NULL,
  `agama` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `jenis_kelamin` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `avatar` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tempat_lahir` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tanggal_lahir` varchar(15) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `siswa`
--

INSERT INTO `siswa` (`id`, `nisn`, `nama`, `user_id`, `kelas_id`, `agama`, `jenis_kelamin`, `avatar`, `tempat_lahir`, `tanggal_lahir`, `created_at`, `updated_at`) VALUES
(5, '1122331120', 'Azwar Shodri', 91, 31, 'Islam', 'Laki-Laki', NULL, 'jambi', '2008-06-01', '2021-03-01 13:26:36', '2021-03-01 13:36:50'),
(6, '2212311232', 'Selvi', 92, 31, 'Islam', 'Perempuan', NULL, 'jambi', '2008-07-09', '2021-03-01 13:35:12', '2021-03-01 14:24:15'),
(7, '1122334455', 'Ahmad Daniel', 93, 31, 'Islam', 'Laki-Laki', NULL, 'jambi', '2008-08-02', '2021-03-01 13:36:22', '2021-03-01 13:36:42'),
(8, '1122334456', 'Rian Pratama', 94, 31, 'Islam', 'Laki-Laki', NULL, 'jambi', '2008-03-26', '2021-03-01 13:37:24', '2021-03-01 13:37:24'),
(9, '1122334459', 'Desta Rasyin', 95, 31, 'Islam', 'Laki-Laki', 'C:\\xampp\\tmp\\phpDBDC.tmp', 'jambi', '2008-03-31', '2021-03-01 13:38:06', '2021-03-01 13:38:06'),
(10, '1122334451', 'Yuni Fatmawati', 96, 31, 'Islam', 'Perempuan', NULL, 'jambi', '2008-03-31', '2021-03-01 13:38:43', '2021-03-01 13:38:50'),
(11, '1122334452', 'Rinjani Humaira', 97, 31, 'Islam', 'Perempuan', NULL, 'jambi', '2008-03-23', '2021-03-01 13:39:43', '2021-03-01 13:39:43'),
(12, '1122334453', 'Samsul Jumaidi', 98, 31, 'Islam', 'Laki-Laki', NULL, 'jambi', '2008-03-17', '2021-03-01 13:40:24', '2021-03-01 13:40:24'),
(13, '1122334454', 'Rama Siti Nursyamsiah', 99, 31, 'Islam', 'Perempuan', NULL, 'jambi', '2008-03-24', '2021-03-01 13:41:27', '2021-03-01 13:41:27'),
(14, '1122334441', 'Toriq Akbar', 100, 31, 'Islam', 'Laki-Laki', NULL, 'kerinci', '2008-03-24', '2021-03-01 13:41:58', '2021-03-01 13:41:58'),
(15, '1122334442', 'Ferdi Silalahi', 101, 31, 'Kristen', 'Laki-Laki', NULL, 'jambi', '2008-03-15', '2021-03-01 13:42:51', '2021-03-01 13:42:51'),
(16, '1122334443', 'Ramlah Sayuti', 102, 31, 'Islam', 'Perempuan', NULL, 'jambi', '2008-03-23', '2021-03-01 13:43:37', '2021-03-01 13:43:37'),
(17, '1122334444', 'Tasyid Lainatul Khadar', 103, 31, 'Islam', 'Laki-Laki', NULL, 'jambi', '2008-03-24', '2021-03-01 13:44:15', '2021-03-01 13:44:15'),
(18, '1122334446', 'Muhammad Leonardo Pratama', 104, 31, 'Islam', 'Laki-Laki', NULL, 'jambi', '2008-03-30', '2021-03-01 13:45:12', '2021-03-01 13:45:12'),
(19, '1122334447', 'Siti Nur Aisyah', 105, 31, 'Islam', 'Perempuan', NULL, 'jambi', '2008-03-01', '2021-03-01 13:45:51', '2021-03-01 13:45:51');

-- --------------------------------------------------------

--
-- Table structure for table `siswa_tugas`
--

CREATE TABLE `siswa_tugas` (
  `id` int(11) NOT NULL,
  `siswa_id` int(11) NOT NULL,
  `tugas_id` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `siswa_tugas`
--

INSERT INTO `siswa_tugas` (`id`, `siswa_id`, `tugas_id`, `created_at`, `updated_at`) VALUES
(87, 6, 48, '2021-03-01 14:24:01', '2021-03-01 21:24:01');

-- --------------------------------------------------------

--
-- Table structure for table `soal`
--

CREATE TABLE `soal` (
  `id` int(11) NOT NULL,
  `tugas_id` int(11) NOT NULL,
  `soal` text NOT NULL,
  `a` varchar(50) NOT NULL,
  `b` varchar(50) NOT NULL,
  `c` varchar(50) NOT NULL,
  `d` varchar(50) NOT NULL,
  `kunci` varchar(50) NOT NULL,
  `score` varchar(25) NOT NULL,
  `gambar` varchar(100) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `soal`
--

INSERT INTO `soal` (`id`, `tugas_id`, `soal`, `a`, `b`, `c`, `d`, `kunci`, `score`, `gambar`, `created_at`, `updated_at`) VALUES
(44, 48, 'Yang bukan termasuk kedalam besaran pokok yaitu antara lain', 'Panjang', 'Massa', 'Waktu', 'Volume', 'D', '30', NULL, '2021-03-01 14:16:20', '2021-03-01 21:16:20'),
(45, 48, 'Besaran yang dapat diukur dan memiliki satuan disebut besaran', 'Biologi', 'Kimia', 'Fisika', 'Matematika', 'C', '27', NULL, '2021-03-01 14:17:29', '2021-03-01 21:17:29'),
(46, 48, 'Berikut ini yang bukan termasuk kedalam besaran pokok yaitu', 'Waktu', 'Luas', 'Volume', 'Massa Jenis', 'B', '33', NULL, '2021-03-01 14:18:34', '2021-03-01 21:18:34'),
(47, 48, 'Satuan SI dari sebuah besaran waktu yaitu', 'Sekon', 'Meter', 'Ampere', 'Cendela', 'A', '10', NULL, '2021-03-01 14:19:22', '2021-03-01 21:19:22');

-- --------------------------------------------------------

--
-- Table structure for table `soalessay`
--

CREATE TABLE `soalessay` (
  `id` int(11) NOT NULL,
  `tugas_id` int(11) NOT NULL,
  `pertanyaan` varchar(100) NOT NULL,
  `score` varchar(100) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `soalessay`
--

INSERT INTO `soalessay` (`id`, `tugas_id`, `pertanyaan`, `score`, `created_at`, `updated_at`) VALUES
(16, 48, 'Secara umum, besaran dibagi kedalam dua kelompok, yaitu', '100', '2021-03-01 14:20:38', '2021-03-01 21:20:38');

-- --------------------------------------------------------

--
-- Table structure for table `soalessay_jawaban`
--

CREATE TABLE `soalessay_jawaban` (
  `id` int(11) NOT NULL,
  `siswa_id` int(11) NOT NULL,
  `tugas_id` int(11) NOT NULL,
  `jawaban` varchar(200) NOT NULL,
  `score` varchar(100) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `soalessay_jawaban`
--

INSERT INTO `soalessay_jawaban` (`id`, `siswa_id`, `tugas_id`, `jawaban`, `score`, `created_at`, `updated_at`) VALUES
(25, 6, 48, 'Besaran pokok dan turunan', NULL, '2021-03-01 14:24:01', '2021-03-01 21:24:01');

-- --------------------------------------------------------

--
-- Table structure for table `soal_jawaban`
--

CREATE TABLE `soal_jawaban` (
  `id` int(11) NOT NULL,
  `tugas_id` int(11) NOT NULL,
  `kelas_id` int(11) NOT NULL,
  `mapel_id` int(11) NOT NULL,
  `siswa_id` int(11) NOT NULL,
  `soal_id` int(11) NOT NULL,
  `jawaban` varchar(50) NOT NULL,
  `status` varchar(50) NOT NULL,
  `score` varchar(50) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `soal_jawaban`
--

INSERT INTO `soal_jawaban` (`id`, `tugas_id`, `kelas_id`, `mapel_id`, `siswa_id`, `soal_id`, `jawaban`, `status`, `score`, `created_at`, `updated_at`) VALUES
(216, 48, 31, 23, 6, 44, 'B', 'salah', '0', '2021-03-01 14:24:01', '2021-03-01 21:24:01'),
(217, 48, 31, 23, 6, 45, 'C', 'benar', '27', '2021-03-01 14:24:01', '2021-03-01 21:24:01'),
(218, 48, 31, 23, 6, 46, 'B', 'benar', '33', '2021-03-01 14:24:01', '2021-03-01 21:24:01'),
(219, 48, 31, 23, 6, 47, 'A', 'benar', '10', '2021-03-01 14:24:01', '2021-03-01 21:24:01');

-- --------------------------------------------------------

--
-- Table structure for table `tugas`
--

CREATE TABLE `tugas` (
  `id` int(25) NOT NULL,
  `judul` varchar(100) NOT NULL,
  `pembuat` varchar(200) NOT NULL,
  `mapel_id` int(25) NOT NULL,
  `waktu` varchar(100) DEFAULT NULL,
  `jenis_tugas` varchar(200) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tugas`
--

INSERT INTO `tugas` (`id`, `judul`, `pembuat`, `mapel_id`, `waktu`, `jenis_tugas`, `created_at`, `updated_at`) VALUES
(48, 'Tugas 1', 'Ermadewita,S.Pd', 23, '60', 'Latihan', '2021-03-01 14:14:27', '2021-03-01 21:14:27');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `role` varchar(15) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `role`, `name`, `email`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(2, 'admin', 'febri', 'admin@admin.com', '$2y$10$SM/ph52kyOC4yzTm3HRJzuXE288FKT2Q4NeX38n8KzB478hc7Xovi', '1PkjjLq7nk5MHYJ0CLPYJgKBRlKNASIaX63JnfLnrNVWw1TWLfH3kb48HexE', '2020-10-19 05:11:51', '2020-10-19 05:11:51'),
(75, 'guru', 'Rati Sumani, S.Pd', 'rati@gmail.com', '$2y$10$IktpD7n4MWM.TS9cZi1mku9EVrcFN87tK59ytGPJahO.MGMcg7Vp.', 'IudIQx2nYp2rTOFGNVMmJkRVZ6DBLbyvL1b4GxhXLAbuF39NGnKDRkayYlCZ', '2020-11-08 07:10:21', '2020-11-08 07:10:21'),
(78, 'guru', 'Harizonta,a', 'harizonta@gmail.com', '$2y$10$IS/6SW2URqfZcp6QLJR0rOFMxlNJ3xv5GAXQSpfE7NU1ZJAyPzVCi', '8GtfsrLj0JER85yl1ZAUYmPD7rKePeWwy12ULtkqLobpMVrDAD00acyeRga3', '2020-11-08 07:13:49', '2021-02-22 15:15:22'),
(79, 'guru', 'Yenii', 'yeni@gmail.com', '$2y$10$naNfastk0DwvKmNk9xEMo.hN3q4mpsfj5/3g1tT4JlcEGT.Afqzda', 'VWW2FWg5hoZLmZMbsb8fmpmSb3kUVaanawjLy8Jd2PekbrCbNYvYa9Gw9aO8', '2020-11-08 07:14:38', '2021-02-27 15:07:46'),
(80, 'siswa', 'febri', 'febri@gmail.com', '$2y$10$H0cHXUW03eeHq8odKetp9.iLyRWFhNLo9VDRafWhav4XeboHl97NW', 'z6tKl4Hva0fW28D7VTph84e2DUnYytmxNq9ESSs5ePdp6AkrUGnFpCvr2kJc', '2020-11-08 07:22:34', '2021-02-23 01:25:00'),
(81, 'siswa', 'Isan', 'isan@gmail.com', '$2y$10$rVsmpguhtk2KbRCiXJKPpeVzaQUWcj/Y.q1V2RAJ9aCG9VoE49P32', '7K3xONqnmqohKSZe7YswC93gu6MPYLZ06fkjesYUd0N5EjvRAUsASsunYZVZ', '2020-11-08 07:23:10', '2020-11-08 07:23:10'),
(82, 'siswa', 'yopi', 'yopi@gmail.com', '$2y$10$QINHIdeCckIv9Ua4SpMjG.yC11fiGZEc8G9JACSoBLfDuYRvIRuHm', 'lQB2RRshGsPBwfgU223T2ktN5yT7cfyanVgdei8s9ssMdtrcnDej2prdxMBR', '2020-11-08 07:23:33', '2020-11-08 07:23:33'),
(83, 'guru', 'Donsa, S.Pd', 'donsa@gmail.com', '$2y$10$zm8B1u9utEHQzKEjZJeQmODxUuxccXCR4sbVHb/z.SJUZH4HNjZku', 'GhkKwVpah1gJ0tupr8x6ZDN4XtMoDkzK9HYskvDShr4nx6SzMWM2oiSUdCJt', '2020-11-13 04:13:45', '2020-11-13 04:13:45'),
(84, 'siswa', 'Dino', 'dino@gmail.com', '$2y$10$WkvLaj7xwD3HtyWES.PL2u0zbuPzydpnXGDIhU28xZGj0RQgUAvwS', 'EyvQuZxtvNo7UOv9VlqFERcxFPNZUgSYSderxgSD5H0WsyxIh7AiAKVVYmBV', '2020-11-13 04:14:21', '2020-11-13 04:14:21'),
(85, 'guru', 'puput', 'puput@gmail.com', '$2y$10$zoET/yz7AjV/LudL/sxb7uGTpwgyiSGOVodN8CMdEAmqPc4PFZO8e', 'RIRFH6i1AKR0CfoUTQtOyXOCwEdHddQVHsDozKHxPXgDLOihRtJfRWl3wEwW', '2020-11-13 04:18:20', '2020-11-13 04:18:20'),
(86, 'guru', 'Ermadewita,S.Pd', 'ermadewita@gmail.com', '$2y$10$S.OtspLkJ4BHKW4pTiaPletskcK1XEORdUGibWlPy2ul4FBEan9E2', 'jYTbKAVa5u4PR3kBQwegwJc4c5XR3sAlkptGVSfUu9YkxTW3cZHA9ZxH6nYu', '2021-03-01 13:11:18', '2021-03-01 14:08:13'),
(87, 'guru', 'Trisonta, S.Pd', 'trisonta@gmail.com', '$2y$10$5Tg7ghgRPuaOP4sk5.wd7.9YFEpKFvVPZZgVQFr0Nt9BhNLuhw9vK', 'oivwC7ijvXddhA7wFaLAWwxqB7iLVCrUtmCTCFReFBXHbb83ilmcxUaHnqwS', '2021-03-01 13:13:07', '2021-03-01 13:13:07'),
(88, 'guru', 'Edison, S.Pd', 'edison@gmail.com', '$2y$10$gzlz.NaYr/RrsSFq3QxzkeZtt.GJxbjMUkvdw8dx04Hbdb2UNsdUC', 'SKpIDhMlz8rUKWPFRPMCRa4xZi7N4q66BDS7pvoQBjYCowsXQTCckWa6Ggk0', '2021-03-01 13:16:19', '2021-03-01 13:16:19'),
(89, 'guru', 'Yulien, S.Pd', 'yulien@gmail.com', '$2y$10$SLgojNmWPnYD6xHNj42ZDOiIocaBKr4rHi.NbIO/dbgWpBlCwGMGG', 'RW0CTUlte3ZTq28X62u1Z7GauOj5JTBYVMJrZxuaAccOB71doudOgCiQoOYn', '2021-03-01 13:19:31', '2021-03-01 13:19:31'),
(90, 'guru', 'Drs.Ishak,MPd', 'ishak@gmail.com', '$2y$10$B80wHkGYLjho9pobYfM1A.mTQpuKDbkXGseNIOBVj181g6ToySM7W', 'ZBjAnoj4sgiJ4bcu6tpi0vdi2sAXbRJEinW6iCu7yAqs7P1lPMIEYm1WqJfS', '2021-03-01 13:21:14', '2021-03-01 13:21:14'),
(91, 'siswa', 'Azwar Shodri', 'azwar@gmail.com', '$2y$10$/qzoPDVYLsrfs38LgL1VzeejLpUBunB/wyvXyVML0egLCmlLJZ8me', 'zxhE190PcGFNrzA8iTO8dS14mk8BWfeGPDHBkT2yJUfVVU7Cuiar5is2OOEV', '2021-03-01 13:26:36', '2021-03-01 13:26:36'),
(92, 'siswa', 'Selvi', 'selvi@gmail.com', '$2y$10$RDLWsklD1ASsb2K82CSwh.kc9FM5/oM7bqbcNZtKwtI.Dv/WdAIse', 'qMHA9yxtarXSOn4hKA3Na4M48aWLFOdbZSed898SyMFgWQcIeuh4wIFeVqpi', '2021-03-01 13:35:12', '2021-03-01 14:24:15'),
(93, 'siswa', 'Ahmad Daniel', 'ahmad@gmail.com', '$2y$10$GNVHybily/33fRLrF2FpJ.ldNcW6sf7RWQpY2C9IAGvumGIfAEM2S', 'o7yno0LwfknAHACMDdSZb5eEvG17bzpwqCiq9ZMBwiHsGYE9lBY4y8eevoDc', '2021-03-01 13:36:22', '2021-03-01 13:36:22'),
(94, 'siswa', 'Rian Pratama', 'rian@gmail.com', '$2y$10$1GYXL/WTX4/ORso2xrhIne2UstEmkArdYOU4P3xeuu3rxldeocDZy', '0rn60AjnY3p0WNYw8eFiFrXEvQsuKFyas0sLU6GgpwkKQ2Q29dzp4yaXCgOk', '2021-03-01 13:37:24', '2021-03-01 13:37:24'),
(95, 'siswa', 'Desta Rasyin', 'desta@gmail.com', '$2y$10$tFUiZQwvdW2hbBtcJAlTI.dLjbTcuTUbjxNi78kZw9hVCLe9Vbqtu', 'FFuJKL54YbtgEYVdx80pZc3ChoTNbIWrxOkMRGTxdUpOtBSzKQp9yVhunS7B', '2021-03-01 13:38:06', '2021-03-01 13:38:06'),
(96, 'siswa', 'Yuni Fatmawati', 'yuni@gmail.com', '$2y$10$LsukhMJBKHeHOOh9P3MCqOPMYB6SoGC5v.bRsEwlWHaA59ZBNFLcu', '8HFgelwvgksM8v4YZJbbsfyxOaFTz482urUAMD6ms0hO7KXMTqOCgxurOMCa', '2021-03-01 13:38:43', '2021-03-01 13:38:43'),
(97, 'siswa', 'Rinjani Humaira', 'rinjani@gmail.com', '$2y$10$78tiNbAXWTLVtuVF7JqLLuT9IpF6Y2ats1JEV8GoeiXuHxZVlXdce', 'tZJJI7qkVsFnhBa4RtBgQJMPNP1T4GUeynCvP4KvbrM9Gt7bGz1FLJKkxi20', '2021-03-01 13:39:43', '2021-03-01 13:39:43'),
(98, 'siswa', 'Samsul Jumaidi', 'samsul@gmail.com', '$2y$10$0cmtl2Ld3JlOtP5yF2Rt2eKzhJ6ISnKzKsHmXm9qCFaWXOuNKAgI.', 'ecpJzDYE1e9XsU6sECuDtqTeRopyqimTm9N6Zq9Rbtd6IrGiDThQmuBVlDy5', '2021-03-01 13:40:24', '2021-03-01 13:40:24'),
(99, 'siswa', 'Rama Siti Nursyamsiah', 'rama@gmail.com', '$2y$10$YJohcU4JZ1RmqhyducikPOWhuLKeP1NxPuz8xRhRDqE11/bagd4SW', 'IAoLH2FWGEhYALuQIq011VFx5js4asZN12NVlhCjjE7X0htA1IPoIvqSz3s3', '2021-03-01 13:41:27', '2021-03-01 13:41:27'),
(100, 'siswa', 'Toriq Akbar', 'toriq@gmail.com', '$2y$10$Llx2q/pJ3pp.Y4.sUpEuxOe0zYODlLKrEgN9ThLCt4BK/hYOP.s4.', 'eHYhdFRVP2rxOLqvAxwXurXGa8Dr1dqNV05E2GSmH91wZFrRr2RddsWrRLPm', '2021-03-01 13:41:58', '2021-03-01 13:41:58'),
(101, 'siswa', 'Ferdi Silalahi', 'ferdi@gmail.com', '$2y$10$CZXtvYj.eo2krvTC4VKNAu5KDo1ddh.et1tqpsNFzCx.uhGdxAoY.', 'JsXVhwCNVhOuHzWN3pK6PVh2ynSx6vofdyPeDtTJaRETY5b3k21OK5Ix6jnp', '2021-03-01 13:42:51', '2021-03-01 13:42:51'),
(102, 'siswa', 'Ramlah Sayuti', 'ramlah@gmail.com', '$2y$10$5h4PR8srTlkcPwQprclQNeM0gcdqbKch8ggXXtMSqPSnJZ5hg73wa', 'AEcpMjq0jENz3MGLtEoYJCmwOn5KnfFVhLyqYMbD8eB0oRGAVK3CgEL4FQEM', '2021-03-01 13:43:37', '2021-03-01 13:43:37'),
(103, 'siswa', 'Tasyid Lainatul Khadar', 'tasyid@gmail.com', '$2y$10$OvQ0PBqmtOdWmTTSV2og0Odt3f/6Gb3I9hXUY7upkI4fetzprozHK', 'VNKIOdvURljSnpynEBmbMB3oNhAHT4Py5jaXroLceuqcWAHPc7ZFaKMtLC1R', '2021-03-01 13:44:15', '2021-03-01 13:44:15'),
(104, 'siswa', 'Muhammad Leonardo Pratama', 'muhammad@gmail.com', '$2y$10$9kDmytTQMOm3j2Pj1zsNPuFgYYV.iQUYLChCdgpHsUg.raHdbzVpm', 'PsU128sn0zhY0mY4YsA7PlQQtikxu5vxc4Sc8RcgXcWVHrrQR6oMjEXzXm12', '2021-03-01 13:45:12', '2021-03-01 13:45:12'),
(105, 'siswa', 'Siti Nur Aisyah', 'siti@gmail.com', '$2y$10$m.JyO7fVsFHe.susOUM2k.dvJcpBrmZHKVgizJY7Wo7gIUBU1P4V2', 'sstLhwZboy1dVyOps1x2DEUmXDdNUXgeDbLnSbqKyTR2yWjoaCQo8g2OOAur', '2021-03-01 13:45:51', '2021-03-01 13:45:51');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `guru`
--
ALTER TABLE `guru`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `guru_siswa`
--
ALTER TABLE `guru_siswa`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `kelas`
--
ALTER TABLE `kelas`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `kelas_mapel`
--
ALTER TABLE `kelas_mapel`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `kelas_tugas`
--
ALTER TABLE `kelas_tugas`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mapel`
--
ALTER TABLE `mapel`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mapel_siswa`
--
ALTER TABLE `mapel_siswa`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `materi`
--
ALTER TABLE `materi`
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
-- Indexes for table `siswa`
--
ALTER TABLE `siswa`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `siswa_tugas`
--
ALTER TABLE `siswa_tugas`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `soal`
--
ALTER TABLE `soal`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `soalessay`
--
ALTER TABLE `soalessay`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `soalessay_jawaban`
--
ALTER TABLE `soalessay_jawaban`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `soal_jawaban`
--
ALTER TABLE `soal_jawaban`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tugas`
--
ALTER TABLE `tugas`
  ADD PRIMARY KEY (`id`);

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
-- AUTO_INCREMENT for table `guru`
--
ALTER TABLE `guru`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `guru_siswa`
--
ALTER TABLE `guru_siswa`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `kelas`
--
ALTER TABLE `kelas`
  MODIFY `id` int(15) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=49;

--
-- AUTO_INCREMENT for table `kelas_mapel`
--
ALTER TABLE `kelas_mapel`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=115;

--
-- AUTO_INCREMENT for table `kelas_tugas`
--
ALTER TABLE `kelas_tugas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=59;

--
-- AUTO_INCREMENT for table `mapel`
--
ALTER TABLE `mapel`
  MODIFY `id` int(25) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT for table `mapel_siswa`
--
ALTER TABLE `mapel_siswa`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `materi`
--
ALTER TABLE `materi`
  MODIFY `id` int(25) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=78;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `siswa`
--
ALTER TABLE `siswa`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `siswa_tugas`
--
ALTER TABLE `siswa_tugas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=88;

--
-- AUTO_INCREMENT for table `soal`
--
ALTER TABLE `soal`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=48;

--
-- AUTO_INCREMENT for table `soalessay`
--
ALTER TABLE `soalessay`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `soalessay_jawaban`
--
ALTER TABLE `soalessay_jawaban`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `soal_jawaban`
--
ALTER TABLE `soal_jawaban`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=220;

--
-- AUTO_INCREMENT for table `tugas`
--
ALTER TABLE `tugas`
  MODIFY `id` int(25) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=49;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=106;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
