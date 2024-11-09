-- phpMyAdmin SQL Dump
-- version 4.2.7.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: 09 Nov 2024 pada 17.27
-- Versi Server: 5.6.20
-- PHP Version: 5.5.15

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `ujianlabor`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `pendaftaran`
--

CREATE TABLE IF NOT EXISTS `pendaftaran` (
`id` int(11) NOT NULL,
  `username` varchar(30) NOT NULL,
  `nama` varchar(30) NOT NULL,
  `nisn` varchar(30) NOT NULL,
  `jurusan` varchar(30) NOT NULL,
  `ktp` text NOT NULL,
  `status` enum('diterima','ditolak') NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=16 ;

-- --------------------------------------------------------

--
-- Struktur dari tabel `user`
--

CREATE TABLE IF NOT EXISTS `user` (
`id` int(11) NOT NULL,
  `username` varchar(30) NOT NULL,
  `password` varchar(30) NOT NULL,
  `role` enum('admin','staf','mahasiswa') NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=26 ;

--
-- Dumping data untuk tabel `user`
--

INSERT INTO `user` (`id`, `username`, `password`, `role`) VALUES
(2, 'uud', '$2y$10$lT1Vr16Hf6Pp53bv8DUy0Of', 'admin'),
(3, 'wawa', '$2y$10$bQeI5F1mu7wW3GTgnUUHCeH', ''),
(5, 'dini', '1234', ''),
(6, 'zaza', '$2y$10$nKH5gG1al6U16Tn0Qr/UbOP', 'admin'),
(9, 'kakak', '$2y$10$6gXbK15BI/Mvt5t/ZK8B8.C', 'admin'),
(10, 'yaya', '0987', 'mahasiswa'),
(11, 'jangan', '12345', 'mahasiswa'),
(12, 'ubi', '12345', 'admin'),
(13, 'jagung', '0000', 'mahasiswa'),
(14, 'nasi', '0000', 'mahasiswa'),
(16, 'air', '0909', 'mahasiswa'),
(17, 'olala', '7878', 'mahasiswa'),
(18, 'banu', '123', 'mahasiswa'),
(19, 'toni', '123', 'staf'),
(20, 'gigi', '2222', 'admin'),
(21, 'bismillah', '6666', 'mahasiswa'),
(22, 'ica', '3232', 'staf'),
(23, 'hahaha', '9393', 'admin'),
(24, 'bakso', '1111', 'mahasiswa'),
(25, 'insyaallah', '2222', 'admin');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `pendaftaran`
--
ALTER TABLE `pendaftaran`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
 ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `pendaftaran`
--
ALTER TABLE `pendaftaran`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=16;
--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=26;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
