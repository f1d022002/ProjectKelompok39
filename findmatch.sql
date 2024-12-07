-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 07 Des 2024 pada 11.25
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
  `clue` text DEFAULT NULL,
  `correctAnswer` varchar(255) DEFAULT NULL,
  `imagePath1` varchar(255) DEFAULT NULL,
  `imagePath2` varchar(255) DEFAULT NULL,
  `imagePath3` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `questions3`
--

INSERT INTO `questions3` (`id`, `clue`, `correctAnswer`, `imagePath1`, `imagePath2`, `imagePath3`) VALUES
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
(21, 'Tumbuhan dengan biji kecil yang menghasilkan minyak esensial.', 'D:\\praktikum\\SEMESTER 5\\PROJECT KELOMPOK 39\\assets\\images\\21C.jpg', 'D:\\praktikum\\SEMESTER 5\\PROJECT KELOMPOK 39\\assets\\images\\21A.jpg', 'D:\\praktikum\\SEMESTER 5\\PROJECT KELOMPOK 39\\assets\\images\\21B.jpg', 'D:\\praktikum\\SEMESTER 5\\PROJECT KELOMPOK 39\\assets\\images\\21C.jpg'),
(22, 'Tumbuhan yang berakar tunggang.', 'D:\\praktikum\\SEMESTER 5\\PROJECT KELOMPOK 39\\assets\\images\\22A.jpg', 'D:\\praktikum\\SEMESTER 5\\PROJECT KELOMPOK 39\\assets\\images\\22A.jpg', 'D:\\praktikum\\SEMESTER 5\\PROJECT KELOMPOK 39\\assets\\images\\22B.jpg', 'D:\\praktikum\\SEMESTER 5\\PROJECT KELOMPOK 39\\assets\\images\\22C.jpg'),
(23, 'Buah dengan biji yang menempel pada daging buahnya.', 'D:\\praktikum\\SEMESTER 5\\PROJECT KELOMPOK 39\\assets\\images\\23B.jpg', 'D:\\praktikum\\SEMESTER 5\\PROJECT KELOMPOK 39\\assets\\images\\23A.jpg', 'D:\\praktikum\\SEMESTER 5\\PROJECT KELOMPOK 39\\assets\\images\\23B.jpg', 'D:\\praktikum\\SEMESTER 5\\PROJECT KELOMPOK 39\\assets\\images\\23C.jpg'),
(24, 'Hewan yang memiliki gigi depan besar.', 'D:\\praktikum\\SEMESTER 5\\PROJECT KELOMPOK 39\\assets\\images\\24B.jpg', 'D:\\praktikum\\SEMESTER 5\\PROJECT KELOMPOK 39\\assets\\images\\24A.jpg', 'D:\\praktikum\\SEMESTER 5\\PROJECT KELOMPOK 39\\assets\\images\\24B.jpg', 'D:\\praktikum\\SEMESTER 5\\PROJECT KELOMPOK 39\\assets\\images\\24C.jpg'),
(25, 'Benda yang digunakan untuk menggoreng makanan.', 'D:\\praktikum\\SEMESTER 5\\PROJECT KELOMPOK 39\\assets\\images\\25A.jpg', 'D:\\praktikum\\SEMESTER 5\\PROJECT KELOMPOK 39\\assets\\images\\25A.jpg', 'D:\\praktikum\\SEMESTER 5\\PROJECT KELOMPOK 39\\assets\\images\\25B.jpg', 'D:\\praktikum\\SEMESTER 5\\PROJECT KELOMPOK 39\\assets\\images\\25C.jpg');

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
(83, 'tttt', 0, '2024-12-07 18:09:23');

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT untuk tabel `scores`
--
ALTER TABLE `scores`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=84;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
