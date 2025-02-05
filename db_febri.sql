-- phpMyAdmin SQL Dump
-- version 5.0.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 11, 2021 at 05:43 AM
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
-- Database: `db_febri`
--

-- --------------------------------------------------------

--
-- Table structure for table `forum`
--

CREATE TABLE `forum` (
  `id` int(12) NOT NULL,
  `konten` text NOT NULL,
  `user_id` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `forum`
--

INSERT INTO `forum` (`id`, `konten`, `user_id`, `created_at`, `updated_at`) VALUES
(1, 'aduhduhudhh', 92, '2021-03-02 03:26:42', '0000-00-00'),
(2, 'dwadawdas sadasd', 91, '2021-03-02 03:36:01', '0000-00-00'),
(3, 'memang mantapp', 92, '2021-03-02 04:01:41', '2021-03-02'),
(5, 'dasdas', 86, '2021-03-02 04:16:19', '0000-00-00'),
(6, 'dasads', 86, '2021-03-02 04:18:31', '2021-03-02'),
(7, 'dwadaw', 86, '2021-03-02 04:20:12', '2021-03-02'),
(8, 'adsdas', 92, '2021-03-02 07:32:25', '2021-03-02'),
(9, 'sasa', 92, '2021-03-02 07:35:20', '2021-03-02'),
(10, 'asdasd', 86, '2021-03-02 07:54:27', '2021-03-02'),
(11, 'sdaadasd', 86, '2021-03-02 07:54:35', '2021-03-02'),
(12, 'assa', 86, '2021-03-02 07:54:52', '2021-03-02'),
(13, 'judul 1', 91, '2021-03-02 13:40:55', '2021-03-02'),
(14, 'Tugas 3 harus selesai', 109, '2021-03-02 14:10:05', '2021-03-02'),
(15, 'tes', 110, '2021-03-02 15:27:29', '2021-03-02'),
(16, 'Halo semua !!!', 86, '2021-03-02 15:31:37', '2021-03-02'),
(17, 'tes', 91, '2021-03-06 10:32:47', '2021-03-06'),
(18, 'hallo !!!', 87, '2021-03-08 05:52:38', '2021-03-08');

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
(12, '196612181995121001', 'Drs.Ishak,MPd', 90, 27, 'Laki-Laki', '085266884422', '1966-12-18', NULL, '2021-03-01 13:21:14', '2021-03-01 20:21:14'),
(14, '08211221121', 'Suriyadi,S.Pd', 109, 29, 'Laki-Laki', '80218311321', '2021-03-26', 'person_3.jpg', '2021-03-02 14:02:03', '2021-03-02 21:04:25');

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
(58, 31, 48, '2021-03-01 14:14:27'),
(59, 31, 49, '2021-03-02 14:07:25'),
(60, 32, 49, '2021-03-02 14:07:25'),
(61, 33, 49, '2021-03-02 14:07:25'),
(62, 34, 49, '2021-03-02 14:07:25'),
(63, 35, 49, '2021-03-02 14:07:25'),
(64, 36, 49, '2021-03-02 14:07:25'),
(65, 37, 49, '2021-03-02 14:07:25'),
(66, 38, 49, '2021-03-02 14:07:25'),
(67, 39, 49, '2021-03-02 14:07:25'),
(68, 40, 49, '2021-03-02 14:07:25'),
(69, 41, 49, '2021-03-02 14:07:25'),
(70, 42, 49, '2021-03-02 14:07:25'),
(71, 43, 49, '2021-03-02 14:07:25'),
(72, 31, 50, '2021-03-06 11:54:44'),
(73, 31, 51, '2021-03-08 05:54:42'),
(74, 32, 51, '2021-03-08 05:54:42'),
(75, 33, 51, '2021-03-08 05:54:42'),
(76, 34, 51, '2021-03-08 05:54:42'),
(77, 35, 51, '2021-03-08 05:54:42'),
(78, 36, 51, '2021-03-08 05:54:42'),
(79, 37, 51, '2021-03-08 05:54:42'),
(80, 38, 51, '2021-03-08 05:54:42'),
(81, 39, 51, '2021-03-08 05:54:42'),
(82, 40, 51, '2021-03-08 05:54:42'),
(83, 41, 51, '2021-03-08 05:54:42'),
(84, 42, 51, '2021-03-08 05:54:42'),
(85, 43, 51, '2021-03-08 05:54:42'),
(86, 44, 51, '2021-03-08 05:54:42'),
(87, 45, 51, '2021-03-08 05:54:42'),
(88, 46, 51, '2021-03-08 05:54:42'),
(89, 47, 51, '2021-03-08 05:54:42'),
(90, 48, 51, '2021-03-08 05:54:42');

-- --------------------------------------------------------

--
-- Table structure for table `komentar`
--

CREATE TABLE `komentar` (
  `id` int(11) NOT NULL,
  `konten` text NOT NULL,
  `user_id` int(11) NOT NULL,
  `forum_id` int(11) NOT NULL,
  `parent` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

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
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `mapel_siswa`
--

INSERT INTO `mapel_siswa` (`id`, `mapel_id`, `siswa_id`, `created_at`, `updated_at`) VALUES
(16, 23, 5, '2021-03-07 07:47:27', '2021-03-07 14:47:27'),
(20, 23, 5, '2021-03-07 08:33:42', '2021-03-07 15:33:42'),
(21, 23, 5, '2021-03-07 08:34:08', '2021-03-07 15:34:08'),
(22, 23, 5, '2021-03-07 08:34:22', '2021-03-07 15:34:22');

-- --------------------------------------------------------

--
-- Table structure for table `materi`
--

CREATE TABLE `materi` (
  `id` int(25) NOT NULL,
  `nama` varchar(100) NOT NULL,
  `mapel_id` int(25) NOT NULL,
  `link` varchar(200) DEFAULT NULL,
  `kelas_id` int(25) NOT NULL,
  `file_materi` varchar(200) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `materi`
--

INSERT INTO `materi` (`id`, `nama`, `mapel_id`, `link`, `kelas_id`, `file_materi`, `created_at`, `updated_at`) VALUES
(77, 'Pertemuan 1', 23, 'https://www.youtube.com/watch?v=VYG_ThSykl4', 31, 'Kegiatan 6.docx', '2021-03-01 14:12:08', '2021-03-01 21:12:08'),
(78, 'assa', 23, '', 31, 'Bab 1 Menulis Surat lamaran Pekerjaan-dikonversi.docx', '2021-03-02 14:06:34', '2021-03-02 21:06:34'),
(79, 'Peralatan Sekolah', 25, 'https://www.youtube.com/watch?v=Vh8QeLXz0hI', 31, NULL, '2021-03-08 02:16:03', '2021-03-08 09:16:03');

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
-- Table structure for table `nilai`
--

CREATE TABLE `nilai` (
  `id` int(11) NOT NULL,
  `tugas1` int(50) DEFAULT NULL,
  `tugas2` int(50) DEFAULT NULL,
  `tugas3` int(50) DEFAULT NULL,
  `tugas4` int(50) DEFAULT NULL,
  `tugas5` int(50) DEFAULT NULL,
  `tugas6` int(50) DEFAULT NULL,
  `uts` int(50) DEFAULT NULL,
  `uas` int(50) DEFAULT NULL,
  `mapel_id` int(50) NOT NULL,
  `siswa_id` int(12) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `nilai`
--

INSERT INTO `nilai` (`id`, `tugas1`, `tugas2`, `tugas3`, `tugas4`, `tugas5`, `tugas6`, `uts`, `uas`, `mapel_id`, `siswa_id`, `created_at`, `updated_at`) VALUES
(1, 80, 80, 50, 90, 90, 87, 90, 78, 24, 5, '2021-03-07 12:30:52', '2021-03-08'),
(4, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 24, 5, '2021-03-07 13:52:03', '2021-03-07'),
(6, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 25, 5, '2021-03-08 02:01:51', '2021-03-08');

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
-- Table structure for table `pengumuman`
--

CREATE TABLE `pengumuman` (
  `id` int(11) NOT NULL,
  `pesan` text NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `pengumuman`
--

INSERT INTO `pengumuman` (`id`, `pesan`, `created_at`, `updated_at`) VALUES
(5, 'Pada hari senin dan sabtu libur, akan masuk kembali pada tanggal 16 maret', '2021-03-02 14:00:07', '2021-03-02');

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
(6, '2212311232', 'Selvi', 92, 31, 'Islam', 'Perempuan', 'teacher-6.jpg', 'jambi', '2008-07-09', '2021-03-01 13:35:12', '2021-03-02 03:54:48'),
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
(19, '1122334447', 'Siti Nur Aisyah', 105, 31, 'Islam', 'Perempuan', NULL, 'jambi', '2008-03-01', '2021-03-01 13:45:51', '2021-03-01 13:45:51'),
(20, '22289298888', 'Yulizar', 107, 31, 'Islam', 'Laki-Laki', NULL, 'jambi', '2021-03-12', '2021-03-02 13:33:32', '2021-03-02 13:33:32'),
(21, '2212212', 'Ramlan', 108, 31, 'Islam', 'Laki-Laki', NULL, 'jambi', '2021-03-19', '2021-03-02 13:35:36', '2021-03-02 13:35:36'),
(22, '222892988882', 'Mail', 110, 31, 'Islam', 'Laki-Laki', 'person_2.jpg', 'jambi', '2021-03-04', '2021-03-02 14:02:53', '2021-03-02 14:03:19');

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
(100, 5, 48, '2021-03-07 04:38:29', '2021-03-07 11:38:29'),
(101, 5, 49, '2021-03-07 04:38:41', '2021-03-07 11:38:41'),
(102, 6, 48, '2021-03-07 04:40:22', '2021-03-07 11:40:22'),
(103, 5, 51, '2021-03-08 06:00:35', '2021-03-08 13:00:35'),
(104, 6, 51, '2021-03-08 06:05:43', '2021-03-08 13:05:43'),
(105, 14, 51, '2021-03-09 01:29:31', '2021-03-09 08:29:31');

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
(47, 48, 'Satuan SI dari sebuah besaran waktu yaitu', 'Sekon', 'Meter', 'Ampere', 'Cendela', 'A', '10', NULL, '2021-03-01 14:19:22', '2021-03-01 21:19:22'),
(48, 49, 'bahasa inggris buku', 'book', 'cat', 'drawingbooks', 'pain', 'A', '100', 'IMG_20210222_225835.jpg', '2021-03-02 14:08:35', '2021-03-02 21:08:35'),
(49, 50, 'adas', 'adsdsa', 'dsaasdas', 'asdads', 'asddasd', 'A', '22', 'bg1.jpg', '2021-03-06 11:55:12', '2021-03-06 18:55:12'),
(50, 50, 'asdasd', 'asdasdda', 'asddasads', 'asdsadasd', 'asdasdada', 'A', '22', 'bg_2.jpg', '2021-03-06 11:55:26', '2021-03-06 18:55:26'),
(51, 50, 'ddddddddd', 'awdawd', 'dawdawdaw', 'awddawdaw', 'dawawddaw', 'A', '11', NULL, '2021-03-06 11:57:22', '2021-03-06 18:57:22'),
(52, 50, 'dsadsasda', 'dasdas', 'asdasd', 'adsdas', 'asddsadas', 'A', '11', NULL, '2021-03-06 11:57:32', '2021-03-06 18:57:32'),
(53, 50, 'dsadsasda', 'dasdas', 'asdasd', 'adsdas', 'asddsadas', 'A', '11', NULL, '2021-03-06 11:57:32', '2021-03-06 18:57:32'),
(54, 50, '1321313', 'dwadaw', 'dwaddawd', 'awdwa', 'waddwa', 'A', '123', NULL, '2021-03-06 11:57:45', '2021-03-06 18:57:45'),
(55, 50, '3132', '12wdqa', 'dsaasddas', 'asddasdasa', 'sdadas', 'A', '11', NULL, '2021-03-06 11:57:55', '2021-03-06 18:57:55'),
(56, 51, 'berapa jumlah kaki ayam', '1', '2', '3', '4', 'B', '20', NULL, '2021-03-08 05:55:11', '2021-03-08 12:55:11'),
(57, 51, 'tingkat sekolah apa ini ???', 'tk', 'sd', 'smp', 'sma', 'A', '20', '2.jpeg', '2021-03-08 05:55:56', '2021-03-08 12:55:56'),
(58, 51, 'ada berapa ban mobil ??', '1', '2', '3', '4', 'D', '20', NULL, '2021-03-08 05:56:17', '2021-03-08 12:56:17'),
(59, 51, 'dimanakah ini ??', 'disekolah', 'dirumah', 'dilapangan', 'direstoran', 'A', '20', 'bg_2.jpg', '2021-03-08 05:56:59', '2021-03-08 12:56:59'),
(60, 51, 'ada berapa kaki ikan ??', '4', '2', '3', 'tidak ada', 'D', '20', NULL, '2021-03-08 05:57:20', '2021-03-08 12:57:20');

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
(16, 48, 'Secara umum, besaran dibagi kedalam dua kelompok, yaitu', '100', '2021-03-01 14:20:38', '2021-03-01 21:20:38'),
(17, 49, 'bahasa inggris pena', '100', '2021-03-02 14:08:58', '2021-03-02 21:08:58'),
(18, 51, 'apa itu motor ??', '50', '2021-03-08 05:57:50', '2021-03-08 12:57:50'),
(19, 51, 'ada berapa ban mobil', '50', '2021-03-08 05:58:27', '2021-03-08 12:58:27'),
(20, 51, 'ada berapa kaki kuda', '10', '2021-03-08 05:58:44', '2021-03-08 12:58:44');

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
(33, 5, 48, '123', '26', '2021-03-07 04:38:29', '2021-03-07 14:15:36'),
(34, 5, 49, '123', NULL, '2021-03-07 04:38:41', '2021-03-07 11:38:41'),
(35, 6, 48, '123', '25', '2021-03-07 04:40:22', '2021-03-07 14:09:50'),
(36, 5, 51, '1. motor adalah kendaraan manusia\r\n2. 4\r\n3. 4', NULL, '2021-03-08 06:00:35', '2021-03-08 13:00:35'),
(37, 6, 51, '4', NULL, '2021-03-08 06:05:43', '2021-03-08 13:05:43'),
(38, 14, 51, 'awdwad', '100', '2021-03-09 01:29:31', '2021-03-09 08:30:25');

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
(260, 48, 31, 23, 5, 45, 'A', 'salah', '0', '2021-03-07 04:38:29', '2021-03-07 11:38:29'),
(261, 48, 31, 23, 5, 44, 'A', 'salah', '0', '2021-03-07 04:38:29', '2021-03-07 11:38:29'),
(262, 48, 31, 23, 5, 47, 'A', 'benar', '10', '2021-03-07 04:38:29', '2021-03-07 11:38:29'),
(263, 48, 31, 23, 5, 46, 'A', 'salah', '0', '2021-03-07 04:38:29', '2021-03-07 11:38:29'),
(264, 49, 31, 29, 5, 48, 'A', 'benar', '100', '2021-03-07 04:38:41', '2021-03-07 11:38:41'),
(265, 48, 31, 23, 6, 44, 'C', 'salah', '0', '2021-03-07 04:40:22', '2021-03-07 11:40:22'),
(266, 48, 31, 23, 6, 46, 'B', 'benar', '33', '2021-03-07 04:40:22', '2021-03-07 11:40:22'),
(267, 48, 31, 23, 6, 47, 'C', 'salah', '0', '2021-03-07 04:40:22', '2021-03-07 11:40:22'),
(268, 48, 31, 23, 6, 45, 'C', 'benar', '27', '2021-03-07 04:40:22', '2021-03-07 11:40:22'),
(269, 51, 31, 24, 5, 58, 'D', 'benar', '20', '2021-03-08 06:00:35', '2021-03-08 13:00:35'),
(270, 51, 31, 24, 5, 59, 'A', 'benar', '20', '2021-03-08 06:00:35', '2021-03-08 13:00:35'),
(271, 51, 31, 24, 5, 56, 'B', 'benar', '20', '2021-03-08 06:00:35', '2021-03-08 13:00:35'),
(272, 51, 31, 24, 5, 60, 'D', 'benar', '20', '2021-03-08 06:00:35', '2021-03-08 13:00:35'),
(273, 51, 31, 24, 5, 57, 'B', 'salah', '0', '2021-03-08 06:00:35', '2021-03-08 13:00:35'),
(274, 51, 31, 24, 6, 56, 'B', 'benar', '20', '2021-03-08 06:05:43', '2021-03-08 13:05:43'),
(275, 51, 31, 24, 6, 57, 'A', 'benar', '20', '2021-03-08 06:05:43', '2021-03-08 13:05:43'),
(276, 51, 31, 24, 6, 59, 'B', 'salah', '0', '2021-03-08 06:05:43', '2021-03-08 13:05:43'),
(277, 51, 31, 24, 6, 60, 'D', 'benar', '20', '2021-03-08 06:05:43', '2021-03-08 13:05:43'),
(278, 51, 31, 24, 6, 58, 'D', 'benar', '20', '2021-03-08 06:05:43', '2021-03-08 13:05:43'),
(279, 51, 31, 24, 14, 58, 'D', 'benar', '20', '2021-03-09 01:29:31', '2021-03-09 08:29:31'),
(280, 51, 31, 24, 14, 56, 'B', 'benar', '20', '2021-03-09 01:29:31', '2021-03-09 08:29:31'),
(281, 51, 31, 24, 14, 60, 'B', 'salah', '0', '2021-03-09 01:29:31', '2021-03-09 08:29:31'),
(282, 51, 31, 24, 14, 57, 'B', 'salah', '0', '2021-03-09 01:29:31', '2021-03-09 08:29:31'),
(283, 51, 31, 24, 14, 59, 'A', 'benar', '20', '2021-03-09 01:29:31', '2021-03-09 08:29:31');

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
(48, 'Tugas 1', 'Ermadewita,S.Pd', 23, '60', 'Latihan', '2021-03-01 14:14:27', '2021-03-01 21:14:27'),
(49, 'Tugas 2', 'Suriyadi,S.Pd', 29, '60', 'Latihan', '2021-03-02 14:07:25', '2021-03-02 21:07:25'),
(50, 'Tugas 12', 'Ermadewita,S.Pd', 23, '110', 'Latihan', '2021-03-06 11:54:44', '2021-03-06 18:54:44'),
(51, 'ujian uas', 'Trisonta, S.Pd', 24, '60', 'Ujian', '2021-03-08 05:54:42', '2021-03-08 12:54:42');

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
(2, 'admin', 'febri', 'admin@admin.com', '$2y$10$SM/ph52kyOC4yzTm3HRJzuXE288FKT2Q4NeX38n8KzB478hc7Xovi', 'FKRVRUODI08qd1cScyjc0mkxjVoUmtr179Lofi9wgSEl9bcq5qDqXOMvwFTE', '2020-10-19 05:11:51', '2020-10-19 05:11:51'),
(75, 'guru', 'Rati Sumani, S.Pd', 'rati@gmail.com', '$2y$10$IktpD7n4MWM.TS9cZi1mku9EVrcFN87tK59ytGPJahO.MGMcg7Vp.', 'IudIQx2nYp2rTOFGNVMmJkRVZ6DBLbyvL1b4GxhXLAbuF39NGnKDRkayYlCZ', '2020-11-08 07:10:21', '2020-11-08 07:10:21'),
(78, 'guru', 'Harizonta,a', 'harizonta@gmail.com', '$2y$10$IS/6SW2URqfZcp6QLJR0rOFMxlNJ3xv5GAXQSpfE7NU1ZJAyPzVCi', '8GtfsrLj0JER85yl1ZAUYmPD7rKePeWwy12ULtkqLobpMVrDAD00acyeRga3', '2020-11-08 07:13:49', '2021-02-22 15:15:22'),
(79, 'guru', 'Yenii', 'yeni@gmail.com', '$2y$10$naNfastk0DwvKmNk9xEMo.hN3q4mpsfj5/3g1tT4JlcEGT.Afqzda', 'VWW2FWg5hoZLmZMbsb8fmpmSb3kUVaanawjLy8Jd2PekbrCbNYvYa9Gw9aO8', '2020-11-08 07:14:38', '2021-02-27 15:07:46'),
(80, 'siswa', 'febri', 'febri@gmail.com', '$2y$10$H0cHXUW03eeHq8odKetp9.iLyRWFhNLo9VDRafWhav4XeboHl97NW', 'z6tKl4Hva0fW28D7VTph84e2DUnYytmxNq9ESSs5ePdp6AkrUGnFpCvr2kJc', '2020-11-08 07:22:34', '2021-02-23 01:25:00'),
(81, 'siswa', 'Isan', 'isan@gmail.com', '$2y$10$rVsmpguhtk2KbRCiXJKPpeVzaQUWcj/Y.q1V2RAJ9aCG9VoE49P32', '7K3xONqnmqohKSZe7YswC93gu6MPYLZ06fkjesYUd0N5EjvRAUsASsunYZVZ', '2020-11-08 07:23:10', '2020-11-08 07:23:10'),
(82, 'siswa', 'yopi', 'yopi@gmail.com', '$2y$10$QINHIdeCckIv9Ua4SpMjG.yC11fiGZEc8G9JACSoBLfDuYRvIRuHm', 'lQB2RRshGsPBwfgU223T2ktN5yT7cfyanVgdei8s9ssMdtrcnDej2prdxMBR', '2020-11-08 07:23:33', '2020-11-08 07:23:33'),
(83, 'guru', 'Donsa, S.Pd', 'donsa@gmail.com', '$2y$10$zm8B1u9utEHQzKEjZJeQmODxUuxccXCR4sbVHb/z.SJUZH4HNjZku', 'GhkKwVpah1gJ0tupr8x6ZDN4XtMoDkzK9HYskvDShr4nx6SzMWM2oiSUdCJt', '2020-11-13 04:13:45', '2020-11-13 04:13:45'),
(84, 'siswa', 'Dino', 'dino@gmail.com', '$2y$10$WkvLaj7xwD3HtyWES.PL2u0zbuPzydpnXGDIhU28xZGj0RQgUAvwS', 'EyvQuZxtvNo7UOv9VlqFERcxFPNZUgSYSderxgSD5H0WsyxIh7AiAKVVYmBV', '2020-11-13 04:14:21', '2020-11-13 04:14:21'),
(85, 'guru', 'puput', 'puput@gmail.com', '$2y$10$zoET/yz7AjV/LudL/sxb7uGTpwgyiSGOVodN8CMdEAmqPc4PFZO8e', 'RIRFH6i1AKR0CfoUTQtOyXOCwEdHddQVHsDozKHxPXgDLOihRtJfRWl3wEwW', '2020-11-13 04:18:20', '2020-11-13 04:18:20'),
(86, 'guru', 'Ermadewita,S.Pd', 'ermadewita@gmail.com', '$2y$10$S.OtspLkJ4BHKW4pTiaPletskcK1XEORdUGibWlPy2ul4FBEan9E2', 'aHoRuueEiQGoDKHIBmCNnq3Tr2eLyvvl01qWOZMeRVB5eYeSRp4Wk4KQBkS5', '2021-03-01 13:11:18', '2021-03-01 14:08:13'),
(87, 'guru', 'Trisonta, S.Pd', 'trisonta@gmail.com', '$2y$10$5Tg7ghgRPuaOP4sk5.wd7.9YFEpKFvVPZZgVQFr0Nt9BhNLuhw9vK', 'BZxo3Jxk9plw9oKjYpSHFUd2fqkRQaP294gkBIbcHLqxQSdKNhK9LJSTRjKU', '2021-03-01 13:13:07', '2021-03-01 13:13:07'),
(88, 'guru', 'Edison, S.Pd', 'edison@gmail.com', '$2y$10$gzlz.NaYr/RrsSFq3QxzkeZtt.GJxbjMUkvdw8dx04Hbdb2UNsdUC', 'SKpIDhMlz8rUKWPFRPMCRa4xZi7N4q66BDS7pvoQBjYCowsXQTCckWa6Ggk0', '2021-03-01 13:16:19', '2021-03-01 13:16:19'),
(89, 'guru', 'Yulien, S.Pd', 'yulien@gmail.com', '$2y$10$SLgojNmWPnYD6xHNj42ZDOiIocaBKr4rHi.NbIO/dbgWpBlCwGMGG', 'RW0CTUlte3ZTq28X62u1Z7GauOj5JTBYVMJrZxuaAccOB71doudOgCiQoOYn', '2021-03-01 13:19:31', '2021-03-01 13:19:31'),
(90, 'guru', 'Drs.Ishak,MPd', 'ishak@gmail.com', '$2y$10$B80wHkGYLjho9pobYfM1A.mTQpuKDbkXGseNIOBVj181g6ToySM7W', 'ZBjAnoj4sgiJ4bcu6tpi0vdi2sAXbRJEinW6iCu7yAqs7P1lPMIEYm1WqJfS', '2021-03-01 13:21:14', '2021-03-01 13:21:14'),
(91, 'siswa', 'Azwar Shodri', 'azwar@gmail.com', '$2y$10$/qzoPDVYLsrfs38LgL1VzeejLpUBunB/wyvXyVML0egLCmlLJZ8me', 'vgRclf8qxzrdvzi29c7QdSZn9BPkvOgIJrKhmBwE2WF4LshjP5rKxQFzRFZc', '2021-03-01 13:26:36', '2021-03-01 13:26:36'),
(92, 'siswa', 'Selvi', 'selvi@gmail.com', '$2y$10$RDLWsklD1ASsb2K82CSwh.kc9FM5/oM7bqbcNZtKwtI.Dv/WdAIse', '1OB9QehIZAP2GRW1J5soQo3uzoq1wqVLWenBeEtohoKh8OBMDp1Ogs7vY9Ko', '2021-03-01 13:35:12', '2021-03-01 14:24:15'),
(93, 'siswa', 'Ahmad Daniel', 'ahmad@gmail.com', '$2y$10$GNVHybily/33fRLrF2FpJ.ldNcW6sf7RWQpY2C9IAGvumGIfAEM2S', 'o7yno0LwfknAHACMDdSZb5eEvG17bzpwqCiq9ZMBwiHsGYE9lBY4y8eevoDc', '2021-03-01 13:36:22', '2021-03-01 13:36:22'),
(94, 'siswa', 'Rian Pratama', 'rian@gmail.com', '$2y$10$1GYXL/WTX4/ORso2xrhIne2UstEmkArdYOU4P3xeuu3rxldeocDZy', '0rn60AjnY3p0WNYw8eFiFrXEvQsuKFyas0sLU6GgpwkKQ2Q29dzp4yaXCgOk', '2021-03-01 13:37:24', '2021-03-01 13:37:24'),
(95, 'siswa', 'Desta Rasyin', 'desta@gmail.com', '$2y$10$tFUiZQwvdW2hbBtcJAlTI.dLjbTcuTUbjxNi78kZw9hVCLe9Vbqtu', 'FFuJKL54YbtgEYVdx80pZc3ChoTNbIWrxOkMRGTxdUpOtBSzKQp9yVhunS7B', '2021-03-01 13:38:06', '2021-03-01 13:38:06'),
(96, 'siswa', 'Yuni Fatmawati', 'yuni@gmail.com', '$2y$10$LsukhMJBKHeHOOh9P3MCqOPMYB6SoGC5v.bRsEwlWHaA59ZBNFLcu', '8HFgelwvgksM8v4YZJbbsfyxOaFTz482urUAMD6ms0hO7KXMTqOCgxurOMCa', '2021-03-01 13:38:43', '2021-03-01 13:38:43'),
(97, 'siswa', 'Rinjani Humaira', 'rinjani@gmail.com', '$2y$10$78tiNbAXWTLVtuVF7JqLLuT9IpF6Y2ats1JEV8GoeiXuHxZVlXdce', 'tZJJI7qkVsFnhBa4RtBgQJMPNP1T4GUeynCvP4KvbrM9Gt7bGz1FLJKkxi20', '2021-03-01 13:39:43', '2021-03-01 13:39:43'),
(98, 'siswa', 'Samsul Jumaidi', 'samsul@gmail.com', '$2y$10$0cmtl2Ld3JlOtP5yF2Rt2eKzhJ6ISnKzKsHmXm9qCFaWXOuNKAgI.', 'ecpJzDYE1e9XsU6sECuDtqTeRopyqimTm9N6Zq9Rbtd6IrGiDThQmuBVlDy5', '2021-03-01 13:40:24', '2021-03-01 13:40:24'),
(99, 'siswa', 'Rama Siti Nursyamsiah', 'rama@gmail.com', '$2y$10$YJohcU4JZ1RmqhyducikPOWhuLKeP1NxPuz8xRhRDqE11/bagd4SW', 'IAoLH2FWGEhYALuQIq011VFx5js4asZN12NVlhCjjE7X0htA1IPoIvqSz3s3', '2021-03-01 13:41:27', '2021-03-01 13:41:27'),
(100, 'siswa', 'Toriq Akbar', 'toriq@gmail.com', '$2y$10$Llx2q/pJ3pp.Y4.sUpEuxOe0zYODlLKrEgN9ThLCt4BK/hYOP.s4.', 'umlL4KypsSnhUnMQAKlLdhXMQqeMA52rFwv0aNQmocw6opXGvdcUZuGPOlYv', '2021-03-01 13:41:58', '2021-03-01 13:41:58'),
(101, 'siswa', 'Ferdi Silalahi', 'ferdi@gmail.com', '$2y$10$CZXtvYj.eo2krvTC4VKNAu5KDo1ddh.et1tqpsNFzCx.uhGdxAoY.', 'JsXVhwCNVhOuHzWN3pK6PVh2ynSx6vofdyPeDtTJaRETY5b3k21OK5Ix6jnp', '2021-03-01 13:42:51', '2021-03-01 13:42:51'),
(102, 'siswa', 'Ramlah Sayuti', 'ramlah@gmail.com', '$2y$10$5h4PR8srTlkcPwQprclQNeM0gcdqbKch8ggXXtMSqPSnJZ5hg73wa', 'AEcpMjq0jENz3MGLtEoYJCmwOn5KnfFVhLyqYMbD8eB0oRGAVK3CgEL4FQEM', '2021-03-01 13:43:37', '2021-03-01 13:43:37'),
(103, 'siswa', 'Tasyid Lainatul Khadar', 'tasyid@gmail.com', '$2y$10$OvQ0PBqmtOdWmTTSV2og0Odt3f/6Gb3I9hXUY7upkI4fetzprozHK', 'VNKIOdvURljSnpynEBmbMB3oNhAHT4Py5jaXroLceuqcWAHPc7ZFaKMtLC1R', '2021-03-01 13:44:15', '2021-03-01 13:44:15'),
(104, 'siswa', 'Muhammad Leonardo Pratama', 'muhammad@gmail.com', '$2y$10$9kDmytTQMOm3j2Pj1zsNPuFgYYV.iQUYLChCdgpHsUg.raHdbzVpm', 'PsU128sn0zhY0mY4YsA7PlQQtikxu5vxc4Sc8RcgXcWVHrrQR6oMjEXzXm12', '2021-03-01 13:45:12', '2021-03-01 13:45:12'),
(105, 'siswa', 'Siti Nur Aisyah', 'siti@gmail.com', '$2y$10$m.JyO7fVsFHe.susOUM2k.dvJcpBrmZHKVgizJY7Wo7gIUBU1P4V2', 'sstLhwZboy1dVyOps1x2DEUmXDdNUXgeDbLnSbqKyTR2yWjoaCQo8g2OOAur', '2021-03-01 13:45:51', '2021-03-01 13:45:51'),
(107, 'siswa', 'Yulizar', 'yulizar@gmail.com', '$2y$10$EerhgMhU6zCsPmXwjOfoP.BHB9x4en0jLb9EIA0CPnPG7Cc.JV2kW', 'WDixGoYEpW9uIfC5i07d3hEBtYmgrEKYEwZu18sqSOgkHmbYtMR8LlonEMBR', '2021-03-02 13:33:32', '2021-03-02 13:33:32'),
(108, 'siswa', 'Ramlan', 'ramlan@gmail.com', '$2y$10$CYJ4grrRMtvCtMyHCTmmwuPbZiEXqjZv3CG1q3i5WpMl.bRa9DMWm', 'sfKT7fkdYJ5modUmyymRvojNTjD1yEFPW9vOgcISEcpt07VQk1sVuwxUQkHG', '2021-03-02 13:35:36', '2021-03-02 13:35:36'),
(109, 'guru', 'Suriyadi,S.Pd', 'suriyadi@gmail.com', '$2y$10$RMxJh8PlLNTxF3/2z0HyCusXOZEiGmi3C27pN8j2SLwXOowEqSmSm', '4qaQO0KMHm0veKpmbrXa5XcSiBr6cSlLbxQLPkoZzsrfjh2D80YWefFFteBl', '2021-03-02 14:02:03', '2021-03-02 14:02:03'),
(110, 'siswa', 'Mail', 'mail@gmail.com', '$2y$10$S5Os6MpzlCj88aX6FYBH.eEEVw2PiPlyanfnk/QF/HaOQjoZcGVDC', '0GQHHvVwh2lemDvcnVQ8OQoyhZ4B4U70delgLD13rg6ElWPWa0byWxEQJeCm', '2021-03-02 14:02:53', '2021-03-02 14:02:53');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `forum`
--
ALTER TABLE `forum`
  ADD PRIMARY KEY (`id`);

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
-- Indexes for table `komentar`
--
ALTER TABLE `komentar`
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
-- Indexes for table `nilai`
--
ALTER TABLE `nilai`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `pengumuman`
--
ALTER TABLE `pengumuman`
  ADD PRIMARY KEY (`id`);

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
-- AUTO_INCREMENT for table `forum`
--
ALTER TABLE `forum`
  MODIFY `id` int(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `guru`
--
ALTER TABLE `guru`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=91;

--
-- AUTO_INCREMENT for table `komentar`
--
ALTER TABLE `komentar`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `mapel`
--
ALTER TABLE `mapel`
  MODIFY `id` int(25) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT for table `mapel_siswa`
--
ALTER TABLE `mapel_siswa`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `materi`
--
ALTER TABLE `materi`
  MODIFY `id` int(25) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=80;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `nilai`
--
ALTER TABLE `nilai`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `pengumuman`
--
ALTER TABLE `pengumuman`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `siswa`
--
ALTER TABLE `siswa`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `siswa_tugas`
--
ALTER TABLE `siswa_tugas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=106;

--
-- AUTO_INCREMENT for table `soal`
--
ALTER TABLE `soal`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=61;

--
-- AUTO_INCREMENT for table `soalessay`
--
ALTER TABLE `soalessay`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `soalessay_jawaban`
--
ALTER TABLE `soalessay_jawaban`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;

--
-- AUTO_INCREMENT for table `soal_jawaban`
--
ALTER TABLE `soal_jawaban`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=284;

--
-- AUTO_INCREMENT for table `tugas`
--
ALTER TABLE `tugas`
  MODIFY `id` int(25) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=52;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=111;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
