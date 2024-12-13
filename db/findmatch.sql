-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 14 Des 2024 pada 00.27
-- Versi server: 10.4.28-MariaDB
-- Versi PHP: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `findmatch`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `questions3`
--

CREATE TABLE `questions3` (
  `id` int(11) NOT NULL,
  `questions` text DEFAULT NULL,
  `correctAnswer` varchar(255) DEFAULT NULL,
  `imagePath1` varchar(255) DEFAULT NULL,
  `imagePath2` varchar(255) DEFAULT NULL,
  `imagePath3` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `questions3`
--

INSERT INTO `questions3` (`id`, `questions`, `correctAnswer`, `imagePath1`, `imagePath2`, `imagePath3`) VALUES
(1, 'Burung yang sering terlihat di sawah.', 'D:\\praktikum\\SEMESTER 5\\PROJECT KELOMPOK 39\\assets\\images\\1B.jpg', 'D:\\praktikum\\SEMESTER 5\\PROJECT KELOMPOK 39\\assets\\images\\1A.jpg', 'D:\\praktikum\\SEMESTER 5\\PROJECT KELOMPOK 39\\assets\\images\\1B.jpg', 'D:\\praktikum\\SEMESTER 5\\PROJECT KELOMPOK 39\\assets\\images\\1C.jpg'),
(2, 'Hewan yang aktif di malam hari.', 'D:\\praktikum\\SEMESTER 5\\PROJECT KELOMPOK 39\\assets\\images\\2C.png', 'D:\\praktikum\\SEMESTER 5\\PROJECT KELOMPOK 39\\assets\\images\\2A.png', 'D:\\praktikum\\SEMESTER 5\\PROJECT KELOMPOK 39\\assets\\images\\2B.png', 'D:\\praktikum\\SEMESTER 5\\PROJECT KELOMPOK 39\\assets\\images\\2C.png'),
(3, 'Tumbuhan yang dapat menangkap serangga.', 'D:\\praktikum\\SEMESTER 5\\PROJECT KELOMPOK 39\\assets\\images\\3A.jpg', 'D:\\praktikum\\SEMESTER 5\\PROJECT KELOMPOK 39\\assets\\images\\3A.jpg', 'D:\\praktikum\\SEMESTER 5\\PROJECT KELOMPOK 39\\assets\\images\\3B.jpg', 'D:\\praktikum\\SEMESTER 5\\PROJECT KELOMPOK 39\\assets\\images\\3C.jpg'),
(4, 'Bunga yang mekar di malam hari.', 'D:\\praktikum\\SEMESTER 5\\PROJECT KELOMPOK 39\\assets\\images\\4A.jpg', 'D:\\praktikum\\SEMESTER 5\\PROJECT KELOMPOK 39\\assets\\images\\4A.jpg', 'D:\\praktikum\\SEMESTER 5\\PROJECT KELOMPOK 39\\assets\\images\\4B.jpg', 'D:\\praktikum\\SEMESTER 5\\PROJECT KELOMPOK 39\\assets\\images\\4C.jpg'),
(5, 'Alat yang digunakan untuk memotong kertas.', 'D:\\praktikum\\SEMESTER 5\\PROJECT KELOMPOK 39\\assets\\images\\5C.jpg', 'D:\\praktikum\\SEMESTER 5\\PROJECT KELOMPOK 39\\assets\\images\\5A.jpg', 'D:\\praktikum\\SEMESTER 5\\PROJECT KELOMPOK 39\\assets\\images\\5B.jpg', 'D:\\praktikum\\SEMESTER 5\\PROJECT KELOMPOK 39\\assets\\images\\5C.jpg'),
(6, 'Hewan yang hidup di gua.', 'D:\\praktikum\\SEMESTER 5\\PROJECT KELOMPOK 39\\assets\\images\\6B.jpg', 'D:\\praktikum\\SEMESTER 5\\PROJECT KELOMPOK 39\\assets\\images\\6A.jpg', 'D:\\praktikum\\SEMESTER 5\\PROJECT KELOMPOK 39\\assets\\images\\6B.jpg', 'D:\\praktikum\\SEMESTER 5\\PROJECT KELOMPOK 39\\assets\\images\\6C.jpg'),
(7, 'Benda yang menghasilkan api.', 'D:\\praktikum\\SEMESTER 5\\PROJECT KELOMPOK 39\\assets\\images\\7A.jpg', 'D:\\praktikum\\SEMESTER 5\\PROJECT KELOMPOK 39\\assets\\images\\7A.jpg', 'D:\\praktikum\\SEMESTER 5\\PROJECT KELOMPOK 39\\assets\\images\\7B.jpg', 'D:\\praktikum\\SEMESTER 5\\PROJECT KELOMPOK 39\\assets\\images\\7C.jpg'),
(8, 'Benda yang digunakan untuk minum teh.', 'D:\\praktikum\\SEMESTER 5\\PROJECT KELOMPOK 39\\assets\\images\\8B.jpg', 'D:\\praktikum\\SEMESTER 5\\PROJECT KELOMPOK 39\\assets\\images\\8A.jpg', 'D:\\praktikum\\SEMESTER 5\\PROJECT KELOMPOK 39\\assets\\images\\8B.jpg', 'D:\\praktikum\\SEMESTER 5\\PROJECT KELOMPOK 39\\assets\\images\\8C.jpg'),
(9, 'Benda yang digunakan untuk memotong makanan.', 'D:\\praktikum\\SEMESTER 5\\PROJECT KELOMPOK 39\\assets\\images\\9C.jpg', 'D:\\praktikum\\SEMESTER 5\\PROJECT KELOMPOK 39\\assets\\images\\9A.jpg', 'D:\\praktikum\\SEMESTER 5\\PROJECT KELOMPOK 39\\assets\\images\\9B.jpg', 'D:\\praktikum\\SEMESTER 5\\PROJECT KELOMPOK 39\\assets\\images\\9C.jpg'),
(10, 'Tumbuhan yang biasa tumbuh di tepi sungai.', 'D:\\praktikum\\SEMESTER 5\\PROJECT KELOMPOK 39\\assets\\images\\10B.jpg', 'D:\\praktikum\\SEMESTER 5\\PROJECT KELOMPOK 39\\assets\\images\\10A.jpg', 'D:\\praktikum\\SEMESTER 5\\PROJECT KELOMPOK 39\\assets\\images\\10B.jpg', 'D:\\praktikum\\SEMESTER 5\\PROJECT KELOMPOK 39\\assets\\images\\10C.jpg'),
(11, 'Hewan yang bertelur tetapi menyusui anaknya.', 'D:\\praktikum\\SEMESTER 5\\PROJECT KELOMPOK 39\\assets\\images\\11A.jpg', 'D:\\praktikum\\SEMESTER 5\\PROJECT KELOMPOK 39\\assets\\images\\11A.jpg', 'D:\\praktikum\\SEMESTER 5\\PROJECT KELOMPOK 39\\assets\\images\\11B.jpg', 'D:\\praktikum\\SEMESTER 5\\PROJECT KELOMPOK 39\\assets\\images\\11C.jpg'),
(12, 'Benda yang dapat menunjukkan arah.', 'D:\\praktikum\\SEMESTER 5\\PROJECT KELOMPOK 39\\assets\\images\\12B.jpg', 'D:\\praktikum\\SEMESTER 5\\PROJECT KELOMPOK 39\\assets\\images\\12A.jpg', 'D:\\praktikum\\SEMESTER 5\\PROJECT KELOMPOK 39\\assets\\images\\12B.jpg', 'D:\\praktikum\\SEMESTER 5\\PROJECT KELOMPOK 39\\assets\\images\\12C.jpg'),
(13, 'Tumbuhan dengan daun lebar.', 'D:\\praktikum\\SEMESTER 5\\PROJECT KELOMPOK 39\\assets\\images\\13A.jpg', 'D:\\praktikum\\SEMESTER 5\\PROJECT KELOMPOK 39\\assets\\images\\13A.jpg', 'D:\\praktikum\\SEMESTER 5\\PROJECT KELOMPOK 39\\assets\\images\\13B.jpg', 'D:\\praktikum\\SEMESTER 5\\PROJECT KELOMPOK 39\\assets\\images\\13C.jpg'),
(14, 'Benda yang digunakan untuk memotong kayu.', 'D:\\praktikum\\SEMESTER 5\\PROJECT KELOMPOK 39\\assets\\images\\14C.jpg', 'D:\\praktikum\\SEMESTER 5\\PROJECT KELOMPOK 39\\assets\\images\\14A.jpg', 'D:\\praktikum\\SEMESTER 5\\PROJECT KELOMPOK 39\\assets\\images\\14B.jpg', 'D:\\praktikum\\SEMESTER 5\\PROJECT KELOMPOK 39\\assets\\images\\14C.jpg'),
(15, 'Hewan laut yang memiliki sirip besar.', 'D:\\praktikum\\SEMESTER 5\\PROJECT KELOMPOK 39\\assets\\images\\15B.jpg', 'D:\\praktikum\\SEMESTER 5\\PROJECT KELOMPOK 39\\assets\\images\\15A.jpg', 'D:\\praktikum\\SEMESTER 5\\PROJECT KELOMPOK 39\\assets\\images\\15B.jpg', 'D:\\praktikum\\SEMESTER 5\\PROJECT KELOMPOK 39\\assets\\images\\15C.jpg'),
(16, 'Tumbuhan yang dikenal bisa membersihkan udara.', 'D:\\praktikum\\SEMESTER 5\\PROJECT KELOMPOK 39\\assets\\images\\16C.jpg', 'D:\\praktikum\\SEMESTER 5\\PROJECT KELOMPOK 39\\assets\\images\\16A.jpg', 'D:\\praktikum\\SEMESTER 5\\PROJECT KELOMPOK 39\\assets\\images\\16B.jpg', 'D:\\praktikum\\SEMESTER 5\\PROJECT KELOMPOK 39\\assets\\images\\16C.jpg'),
(17, 'Bunga yang harum dan biasa dijadikan teh.', 'D:\\praktikum\\SEMESTER 5\\PROJECT KELOMPOK 39\\assets\\images\\17C.jpg', 'D:\\praktikum\\SEMESTER 5\\PROJECT KELOMPOK 39\\assets\\images\\17A.jpg', 'D:\\praktikum\\SEMESTER 5\\PROJECT KELOMPOK 39\\assets\\images\\17B.jpg', 'D:\\praktikum\\SEMESTER 5\\PROJECT KELOMPOK 39\\assets\\images\\17C.jpg'),
(18, 'Buah yang memiliki kulit berbulu halus.', 'D:\\praktikum\\SEMESTER 5\\PROJECT KELOMPOK 39\\assets\\images\\18B.jpg', 'D:\\praktikum\\SEMESTER 5\\PROJECT KELOMPOK 39\\assets\\images\\18A.jpg', 'D:\\praktikum\\SEMESTER 5\\PROJECT KELOMPOK 39\\assets\\images\\18B.jpg', 'D:\\praktikum\\SEMESTER 5\\PROJECT KELOMPOK 39\\assets\\images\\18C.jpg'),
(19, 'Alat untuk memperbaiki baut yang longgar.', 'D:\\praktikum\\SEMESTER 5\\PROJECT KELOMPOK 39\\assets\\images\\19A.jpg', 'D:\\praktikum\\SEMESTER 5\\PROJECT KELOMPOK 39\\assets\\images\\19A.jpg', 'D:\\praktikum\\SEMESTER 5\\PROJECT KELOMPOK 39\\assets\\images\\19B.jpg', 'D:\\praktikum\\SEMESTER 5\\PROJECT KELOMPOK 39\\assets\\images\\19C.jpg'),
(20, 'Tumbuhan yang dikenal memiliki daun berbentuk menjari.', 'D:\\praktikum\\SEMESTER 5\\PROJECT KELOMPOK 39\\assets\\images\\20A.jpg', 'D:\\praktikum\\SEMESTER 5\\PROJECT KELOMPOK 39\\assets\\images\\20A.jpg', 'D:\\praktikum\\SEMESTER 5\\PROJECT KELOMPOK 39\\assets\\images\\20B.jpg', 'D:\\praktikum\\SEMESTER 5\\PROJECT KELOMPOK 39\\assets\\images\\20C.jpg'),
(22, 'Tumbuhan yang berakar tunggang.', 'D:\\praktikum\\SEMESTER 5\\PROJECT KELOMPOK 39\\assets\\images\\22A.jpg', 'D:\\praktikum\\SEMESTER 5\\PROJECT KELOMPOK 39\\assets\\images\\22A.jpg', 'D:\\praktikum\\SEMESTER 5\\PROJECT KELOMPOK 39\\assets\\images\\22B.jpg', 'D:\\praktikum\\SEMESTER 5\\PROJECT KELOMPOK 39\\assets\\images\\22C.jpg'),
(23, 'Buah dengan biji yang menempel pada daging buahnya.', 'D:\\praktikum\\SEMESTER 5\\PROJECT KELOMPOK 39\\assets\\images\\23B.jpg', 'D:\\praktikum\\SEMESTER 5\\PROJECT KELOMPOK 39\\assets\\images\\23A.jpg', 'D:\\praktikum\\SEMESTER 5\\PROJECT KELOMPOK 39\\assets\\images\\23B.jpg', 'D:\\praktikum\\SEMESTER 5\\PROJECT KELOMPOK 39\\assets\\images\\23C.jpg'),
(24, 'Hewan yang memiliki gigi depan besar.', 'D:\\praktikum\\SEMESTER 5\\PROJECT KELOMPOK 39\\assets\\images\\24B.jpg', 'D:\\praktikum\\SEMESTER 5\\PROJECT KELOMPOK 39\\assets\\images\\24A.jpg', 'D:\\praktikum\\SEMESTER 5\\PROJECT KELOMPOK 39\\assets\\images\\24B.jpg', 'D:\\praktikum\\SEMESTER 5\\PROJECT KELOMPOK 39\\assets\\images\\24C.jpg'),
(25, 'Benda yang digunakan untuk menggoreng makanan.', 'D:\\praktikum\\SEMESTER 5\\PROJECT KELOMPOK 39\\assets\\images\\25A.jpg', 'D:\\praktikum\\SEMESTER 5\\PROJECT KELOMPOK 39\\assets\\images\\25A.jpg', 'D:\\praktikum\\SEMESTER 5\\PROJECT KELOMPOK 39\\assets\\images\\25B.jpg', 'D:\\praktikum\\SEMESTER 5\\PROJECT KELOMPOK 39\\assets\\images\\25C.jpg'),
(27, 'Profesi ini bertugas menjaga keamanan dan ketertiban masyarakat.', 'D:\\praktikum\\SEMESTER 5\\PROJECT KELOMPOK 39\\assets\\images\\26A.jpg', 'D:\\praktikum\\SEMESTER 5\\PROJECT KELOMPOK 39\\assets\\images\\26A.jpg', 'D:\\praktikum\\SEMESTER 5\\PROJECT KELOMPOK 39\\assets\\images\\26B.jpg', 'D:\\praktikum\\SEMESTER 5\\PROJECT KELOMPOK 39\\assets\\images\\26C.jpg'),
(28, 'Tanaman yang terkenal sebagai bahan utama pembuatan cokelat.', 'D:\\praktikum\\SEMESTER 5\\PROJECT KELOMPOK 39\\assets\\images\\21B.jpg', 'D:\\praktikum\\SEMESTER 5\\PROJECT KELOMPOK 39\\assets\\images\\21A.jpg', 'D:\\praktikum\\SEMESTER 5\\PROJECT KELOMPOK 39\\assets\\images\\21B.jpg', 'D:\\praktikum\\SEMESTER 5\\PROJECT KELOMPOK 39\\assets\\images\\21C.jpg'),
(29, 'Orang yang pekerjaannya menerbangkan pesawat terbang.', 'D:\\praktikum\\SEMESTER 5\\PROJECT KELOMPOK 39\\assets\\images\\27C.jpg', 'D:\\praktikum\\SEMESTER 5\\PROJECT KELOMPOK 39\\assets\\images\\27A.jpg', 'D:\\praktikum\\SEMESTER 5\\PROJECT KELOMPOK 39\\assets\\images\\27B.jpg', 'D:\\praktikum\\SEMESTER 5\\PROJECT KELOMPOK 39\\assets\\images\\27C.jpg'),
(30, 'Profesi ini bertugas memadamkan api saat terjadi kebakaran.', 'D:\\praktikum\\SEMESTER 5\\PROJECT KELOMPOK 39\\assets\\images\\28A.jpg', 'D:\\praktikum\\SEMESTER 5\\PROJECT KELOMPOK 39\\assets\\images\\28A.jpg', 'D:\\praktikum\\SEMESTER 5\\PROJECT KELOMPOK 39\\assets\\images\\28B.jpg', 'D:\\praktikum\\SEMESTER 5\\PROJECT KELOMPOK 39\\assets\\images\\28C.jpg'),
(31, 'Profesi ini bertugas menyembuhkan orang yang sakit.', 'D:\\praktikum\\SEMESTER 5\\PROJECT KELOMPOK 39\\assets\\images\\30A.jpg', 'D:\\praktikum\\SEMESTER 5\\PROJECT KELOMPOK 39\\assets\\images\\30A.jpg', 'D:\\praktikum\\SEMESTER 5\\PROJECT KELOMPOK 39\\assets\\images\\30B.jpg', 'D:\\praktikum\\SEMESTER 5\\PROJECT KELOMPOK 39\\assets\\images\\30C.jpg'),
(32, 'Tanaman dengan biji kecil yang sering digunakan untuk menghasilkan minyak.', 'D:\\praktikum\\SEMESTER 5\\PROJECT KELOMPOK 39\\assets\\images\\29B.jpg', 'D:\\praktikum\\SEMESTER 5\\PROJECT KELOMPOK 39\\assets\\images\\29A.jpg', 'D:\\praktikum\\SEMESTER 5\\PROJECT KELOMPOK 39\\assets\\images\\29B.jpg', 'D:\\praktikum\\SEMESTER 5\\PROJECT KELOMPOK 39\\assets\\images\\29C.jpg'),
(33, 'Pekerjaan ini bertanggung jawab dalam membuat makanan.', 'D:\\praktikum\\SEMESTER 5\\PROJECT KELOMPOK 39\\assets\\images\\31B.jpg', 'D:\\praktikum\\SEMESTER 5\\PROJECT KELOMPOK 39\\assets\\images\\31A.jpg', 'D:\\praktikum\\SEMESTER 5\\PROJECT KELOMPOK 39\\assets\\images\\31B.jpg', 'D:\\praktikum\\SEMESTER 5\\PROJECT KELOMPOK 39\\assets\\images\\31C.jpg'),
(34, 'Profesi ini bekerja di ladang untuk menanam dan memanen hasil bumi.', 'D:\\praktikum\\SEMESTER 5\\PROJECT KELOMPOK 39\\assets\\images\\32C.jpg', 'D:\\praktikum\\SEMESTER 5\\PROJECT KELOMPOK 39\\assets\\images\\32A.jpg', 'D:\\praktikum\\SEMESTER 5\\PROJECT KELOMPOK 39\\assets\\images\\32B.jpg', 'D:\\praktikum\\SEMESTER 5\\PROJECT KELOMPOK 39\\assets\\images\\32C.jpg'),
(35, 'Merawat hewan ternak untuk menghasilkan produk.', 'D:\\praktikum\\SEMESTER 5\\PROJECT KELOMPOK 39\\assets\\images\\33B.jpg', 'D:\\praktikum\\SEMESTER 5\\PROJECT KELOMPOK 39\\assets\\images\\33A.jpg', 'D:\\praktikum\\SEMESTER 5\\PROJECT KELOMPOK 39\\assets\\images\\33B.jpg', 'D:\\praktikum\\SEMESTER 5\\PROJECT KELOMPOK 39\\assets\\images\\33C.jpg'),
(36, 'Profesi yang Menangkap ikan di laut untuk dijual.', 'D:\\praktikum\\SEMESTER 5\\PROJECT KELOMPOK 39\\assets\\images\\34A.jpg', 'D:\\praktikum\\SEMESTER 5\\PROJECT KELOMPOK 39\\assets\\images\\34A.jpg', 'D:\\praktikum\\SEMESTER 5\\PROJECT KELOMPOK 39\\assets\\images\\34B.jpg', 'D:\\praktikum\\SEMESTER 5\\PROJECT KELOMPOK 39\\assets\\images\\34C.jpg'),
(37, 'Orang yang Mengambil dan mengantarkan barang ke pelanggan.', 'D:\\praktikum\\SEMESTER 5\\PROJECT KELOMPOK 39\\assets\\images\\35B.jpg', 'D:\\praktikum\\SEMESTER 5\\PROJECT KELOMPOK 39\\assets\\images\\35A.jpg', 'D:\\praktikum\\SEMESTER 5\\PROJECT KELOMPOK 39\\assets\\images\\35B.jpg', 'D:\\praktikum\\SEMESTER 5\\PROJECT KELOMPOK 39\\assets\\images\\35C.jpg'),
(38, 'Bekerja di luar angkasa untuk melakukan penelitian dan eksplorasi.', 'D:\\praktikum\\SEMESTER 5\\PROJECT KELOMPOK 39\\assets\\images\\36A.jpg', 'D:\\praktikum\\SEMESTER 5\\PROJECT KELOMPOK 39\\assets\\images\\36A.jpg', 'D:\\praktikum\\SEMESTER 5\\PROJECT KELOMPOK 39\\assets\\images\\36B.jpg', 'D:\\praktikum\\SEMESTER 5\\PROJECT KELOMPOK 39\\assets\\images\\36C.jpg'),
(39, 'Membela klien dan memberikan nasihat hukum.', 'D:\\praktikum\\SEMESTER 5\\PROJECT KELOMPOK 39\\assets\\images\\37A.jpg', 'D:\\praktikum\\SEMESTER 5\\PROJECT KELOMPOK 39\\assets\\images\\37A.jpg', 'D:\\praktikum\\SEMESTER 5\\PROJECT KELOMPOK 39\\assets\\images\\37B.jpg', 'D:\\praktikum\\SEMESTER 5\\PROJECT KELOMPOK 39\\assets\\images\\37C.jpg'),
(40, 'Menentukan keputusan dalam perkara hukum di pengadilan.', 'D:\\praktikum\\SEMESTER 5\\PROJECT KELOMPOK 39\\assets\\images\\38B.jpg', 'D:\\praktikum\\SEMESTER 5\\PROJECT KELOMPOK 39\\assets\\images\\38A.jpg', 'D:\\praktikum\\SEMESTER 5\\PROJECT KELOMPOK 39\\assets\\images\\38B.jpg', 'D:\\praktikum\\SEMESTER 5\\PROJECT KELOMPOK 39\\assets\\images\\38C.jpg'),
(41, 'Mewakili negara dalam menuntut pelaku kejahatan.', 'D:\\praktikum\\SEMESTER 5\\PROJECT KELOMPOK 39\\assets\\images\\39C.jpg', 'D:\\praktikum\\SEMESTER 5\\PROJECT KELOMPOK 39\\assets\\images\\39A.jpg', 'D:\\praktikum\\SEMESTER 5\\PROJECT KELOMPOK 39\\assets\\images\\39B.jpg', 'D:\\praktikum\\SEMESTER 5\\PROJECT KELOMPOK 39\\assets\\images\\39C.jpg'),
(42, 'Profesi ini ahli dalam merancang program komputer dan aplikasi.', 'D:\\praktikum\\SEMESTER 5\\PROJECT KELOMPOK 39\\assets\\images\\40C.jpg', 'D:\\praktikum\\SEMESTER 5\\PROJECT KELOMPOK 39\\assets\\images\\40A.jpg', 'D:\\praktikum\\SEMESTER 5\\PROJECT KELOMPOK 39\\assets\\images\\40B.jpg', 'D:\\praktikum\\SEMESTER 5\\PROJECT KELOMPOK 39\\assets\\images\\40C.jpg');

-- --------------------------------------------------------

--
-- Struktur dari tabel `scores`
--

CREATE TABLE `scores` (
  `id` int(11) NOT NULL,
  `player_name` varchar(255) NOT NULL,
  `score` int(11) NOT NULL,
  `timestamp` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `scores`
--

INSERT INTO `scores` (`id`, `player_name`, `score`, `timestamp`) VALUES
(1, 'Player1', 100, '2024-12-07 06:21:58'),
(2, 'safira', 0, '2024-12-07 06:21:58'),
(3, 'safira', 0, '2024-12-07 06:21:58'),
(4, 'safira', 0, '2024-12-07 06:21:58'),
(5, 'safira', 0, '2024-12-07 06:21:58'),
(6, 'safira', 0, '2024-12-07 06:21:58'),
(7, 'safira', 0, '2024-12-07 06:21:58'),
(8, 'safira', 10, '2024-12-07 06:21:58'),
(9, 'safira', 0, '2024-12-07 06:21:58'),
(10, 'safira', 0, '2024-12-07 06:21:58'),
(11, 'safira', 0, '2024-12-07 06:21:58'),
(12, 'safira', 20, '2024-12-07 06:21:58'),
(13, 'safira', 20, '2024-12-07 06:21:58'),
(14, 'YAYA', 10, '2024-12-07 06:21:58'),
(15, 'sasa', 20, '2024-12-07 06:21:58'),
(16, 'siti', 0, '2024-12-07 06:21:58'),
(17, 'rara', 190, '2024-12-07 06:21:58'),
(18, 'sese', 0, '2024-12-07 06:21:58'),
(19, 'sese', 110, '2024-12-07 06:21:58'),
(20, 'sese', 160, '2024-12-07 06:21:58'),
(21, 'yes', 250, '2024-12-07 06:21:58'),
(22, 'yes', 250, '2024-12-07 06:21:58'),
(23, 'fifi', 250, '2024-12-07 06:21:58'),
(24, 'fifi', 250, '2024-12-07 06:21:58'),
(25, 'SASA', 180, '2024-12-07 06:21:58'),
(26, 'IIO', 120, '2024-12-07 06:21:58'),
(27, 'JUJU', 0, '2024-12-07 06:21:58'),
(28, 'ff', 10, '2024-12-07 06:21:58'),
(29, 'gg', 10, '2024-12-07 06:21:58'),
(30, 'gg', 30, '2024-12-07 06:21:58'),
(31, 'jeje', 10, '2024-12-07 06:21:58'),
(32, 'oo', 0, '2024-12-07 06:21:58'),
(33, 'ff', 0, '2024-12-07 06:21:58'),
(34, 'jj', 0, '2024-12-07 06:21:58'),
(35, 'dd', 0, '2024-12-07 06:21:58'),
(36, 'll', 0, '2024-12-07 06:21:58'),
(37, 'ff', 0, '2024-12-07 06:21:58'),
(38, 'ff', 0, '2024-12-07 06:21:58'),
(39, 'kk', 0, '2024-12-07 06:21:58'),
(40, 'didi', 40, '2024-12-07 06:21:58'),
(41, 'gege', 10, '2024-12-07 06:21:58'),
(42, 'didi', 20, '2024-12-07 06:21:58'),
(43, 'rere', 20, '2024-12-07 06:21:58'),
(44, 'uya', 20, '2024-12-07 06:21:58'),
(45, 'wewe', 10, '2024-12-07 06:52:58'),
(46, 'dede', 0, '2024-12-07 06:53:56'),
(47, 'hwhw', 0, '2024-12-07 06:54:08'),
(48, 'uti', 20, '2024-12-07 06:54:36'),
(49, 'oti', 0, '2024-12-07 06:54:44'),
(50, 'dede', 60, '2024-12-07 07:02:42'),
(51, 'yuyu', 250, '2024-12-07 07:05:51'),
(52, 'yuyu', 250, '2024-12-07 07:06:33'),
(53, 'wiwi', 30, '2024-12-07 13:37:30'),
(54, 'waw', 250, '2024-12-07 14:24:04'),
(55, 'fefe', 10, '2024-12-07 16:14:22'),
(56, 'wq', 0, '2024-12-07 16:18:03'),
(57, 'sasa', 0, '2024-12-07 16:28:35'),
(58, 'dede', 0, '2024-12-07 16:29:37'),
(59, 'tr', 0, '2024-12-07 16:38:53'),
(60, 'yuyu', 20, '2024-12-07 16:46:50'),
(61, 'u', 0, '2024-12-07 16:48:23'),
(62, 'hyhy', 0, '2024-12-07 16:54:27'),
(63, 'ioio', 0, '2024-12-07 16:57:54'),
(64, 'op', 0, '2024-12-07 17:01:53'),
(65, 'iij', 0, '2024-12-07 17:04:27'),
(66, 'yaya', 20, '2024-12-07 17:04:47'),
(67, 'jiji', 0, '2024-12-07 17:08:13'),
(68, 'uu', 0, '2024-12-07 17:12:20'),
(69, 'uu', 0, '2024-12-07 17:12:23'),
(70, 'uu', 0, '2024-12-07 17:12:25'),
(71, 'uu', 0, '2024-12-07 17:12:29'),
(72, 'hh', 0, '2024-12-07 17:13:13'),
(73, 'ooo', 0, '2024-12-07 17:15:18'),
(74, 'uu', 0, '2024-12-07 17:19:53'),
(75, 'pp', 0, '2024-12-07 17:21:21'),
(76, 'yeye', 0, '2024-12-07 17:25:37'),
(77, 'tutu', 0, '2024-12-07 17:31:20'),
(78, 'tgtg', 10, '2024-12-07 17:41:35'),
(79, 'ff', 0, '2024-12-07 17:43:21'),
(80, 'xx', 0, '2024-12-07 17:54:31'),
(81, 'yy', 20, '2024-12-07 18:04:38'),
(82, 'rrrrr', 250, '2024-12-07 18:09:11'),
(83, 'tttt', 0, '2024-12-07 18:09:23'),
(84, 'wewe', 10, '2024-12-07 21:34:38'),
(85, 'hihi', 30, '2024-12-07 21:37:05'),
(86, 'yy', 20, '2024-12-07 21:53:20'),
(87, 'tt', 0, '2024-12-07 21:53:35'),
(88, 'gg', 30, '2024-12-07 21:55:50'),
(89, 'oo', 30, '2024-12-07 22:20:23'),
(90, 'ggp', 40, '2024-12-07 22:24:02'),
(91, 'aaaaaa', 250, '2024-12-07 22:24:58'),
(92, 'IIIIIII', 40, '2024-12-07 22:26:26'),
(93, 'DDDD', 70, '2024-12-07 22:29:17'),
(94, 'hihihihihi', 20, '2024-12-07 22:30:12'),
(95, 'eeee', 20, '2024-12-07 22:36:09'),
(96, 'rrrrrrrr', 50, '2024-12-07 22:37:20'),
(97, 'gigi', 0, '2024-12-13 21:02:51'),
(98, 'hihi', 20, '2024-12-13 21:27:34'),
(99, 'sss', 180, '2024-12-13 22:06:51'),
(100, 'uyu', 30, '2024-12-14 04:25:01'),
(101, 'iiiiiiii', 210, '2024-12-14 04:27:52'),
(102, 'ooooo', 70, '2024-12-14 04:29:09'),
(103, 'hhhhh', 230, '2024-12-14 04:30:08'),
(104, 'ssss', 130, '2024-12-14 04:35:03'),
(105, 'llll', 240, '2024-12-14 04:38:01'),
(106, 'ffff', 190, '2024-12-14 04:46:06'),
(107, 'hhhhh', 180, '2024-12-14 04:50:19'),
(108, 'gigigigig', 0, '2024-12-14 04:53:41'),
(109, 'oooo', 60, '2024-12-14 04:54:04'),
(110, 'jjjjj', 250, '2024-12-14 04:55:43'),
(111, 'hhhh', 10, '2024-12-14 04:55:57'),
(112, 'gggg', 110, '2024-12-14 04:59:04'),
(113, 'gigigig', 120, '2024-12-14 04:59:42'),
(114, 'plplpl', 250, '2024-12-14 05:01:29'),
(115, 'dddd', 250, '2024-12-14 05:06:28'),
(116, 'hihihih', 260, '2024-12-14 05:09:46'),
(117, 'gigigig', 140, '2024-12-14 05:12:33'),
(118, 'ooooo', 120, '2024-12-14 05:13:02'),
(119, 'sayaa', 40, '2024-12-14 05:13:21'),
(120, 'xxxx', 100, '2024-12-14 05:38:50'),
(121, 'ffff', 290, '2024-12-14 05:42:40'),
(122, 'OOO', 300, '2024-12-14 05:47:44'),
(123, 'HOHO', 0, '2024-12-14 05:47:54'),
(124, 'KIKI', 300, '2024-12-14 05:50:46'),
(125, 'ddd', 350, '2024-12-14 06:15:44'),
(126, 'yyy', 350, '2024-12-14 06:19:49'),
(127, 'iii', 210, '2024-12-14 06:21:28'),
(128, 'youuu', 400, '2024-12-14 06:51:11'),
(129, 'UYEE', 390, '2024-12-14 06:57:38'),
(130, 'heyy', 10, '2024-12-14 07:09:31'),
(131, 'oiyaa', 10, '2024-12-14 07:11:23');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `questions3`
--
ALTER TABLE `questions3`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `scores`
--
ALTER TABLE `scores`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `questions3`
--
ALTER TABLE `questions3`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;

--
-- AUTO_INCREMENT untuk tabel `scores`
--
ALTER TABLE `scores`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=132;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
