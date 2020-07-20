-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 20 Jul 2020 pada 17.37
-- Versi server: 10.4.13-MariaDB
-- Versi PHP: 7.4.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `mapping_db`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `data`
--

CREATE TABLE `data` (
  `id` int(11) NOT NULL,
  `nama` text NOT NULL,
  `hp` text NOT NULL,
  `alamat` text NOT NULL,
  `keahlian` text NOT NULL,
  `pengalaman` text NOT NULL,
  `pendidikan` text NOT NULL,
  `ktp` text NOT NULL,
  `poto` text NOT NULL,
  `status` int(11) NOT NULL,
  `pekerjaan` text NOT NULL,
  `partner` text NOT NULL,
  `tanggal` text NOT NULL,
  `lat` text NOT NULL,
  `lng` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `data`
--

INSERT INTO `data` (`id`, `nama`, `hp`, `alamat`, `keahlian`, `pengalaman`, `pendidikan`, `ktp`, `poto`, `status`, `pekerjaan`, `partner`, `tanggal`, `lat`, `lng`) VALUES
(1, 'Fery Andriani', '08817769047', 'Argasunya, Cirebon', 'MS Office, Web & Mobile Develp, Blogging, Design Editor.', 'IT Practice 2yrs', 'SMA', '3214013123132', 'man.png07-03-2020-13-47-19.png', 1, 'IT', '1', '07-03-2020-13-47-19', '-6.759', '108.545');

-- --------------------------------------------------------

--
-- Struktur dari tabel `datapkh`
--

CREATE TABLE `datapkh` (
  `id` int(11) NOT NULL,
  `nama` text NOT NULL,
  `ttl` text NOT NULL,
  `alamat` text NOT NULL,
  `kriteriawarga` text NOT NULL,
  `kode_kriteriawarga` text NOT NULL,
  `kriteriapkh` text NOT NULL,
  `kode_kriteriapkh` text NOT NULL,
  `tanggal` text NOT NULL,
  `lat` text NOT NULL,
  `lng` text NOT NULL,
  `partner` text NOT NULL,
  `poto` text NOT NULL,
  `hp` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `datapkh`
--

INSERT INTO `datapkh` (`id`, `nama`, `ttl`, `alamat`, `kriteriawarga`, `kode_kriteriawarga`, `kriteriapkh`, `kode_kriteriapkh`, `tanggal`, `lat`, `lng`, `partner`, `poto`, `hp`) VALUES
(1, 'Ahmad PKH', 'Cirebon, 15 Mei 2011', 'Argasunya, Cirebon', 'Kurang Mampu', '2', 'Anak SMA/MA atau sederajat', '3', '20-07-2020-20-59-14', '-6.766', '108.540', '1', '20-07-2020-20-59-14iconlogo.png', '0817798989');

-- --------------------------------------------------------

--
-- Struktur dari tabel `datawarga`
--

CREATE TABLE `datawarga` (
  `id` int(11) NOT NULL,
  `nama` text NOT NULL,
  `ttl` text NOT NULL,
  `alamat` text NOT NULL,
  `penghasilan` text NOT NULL,
  `partner` text NOT NULL,
  `poto` text NOT NULL,
  `tanggal` text NOT NULL,
  `lat` text NOT NULL,
  `lng` text NOT NULL,
  `hp` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `datawarga`
--

INSERT INTO `datawarga` (`id`, `nama`, `ttl`, `alamat`, `penghasilan`, `partner`, `poto`, `tanggal`, `lat`, `lng`, `hp`) VALUES
(1, 'Ahmad Warga', 'Cirebon 18 Juli 2020', 'Argasunya, Cirebon', '1600000', '1', '20-07-2020-21-13-06download.png', '20-07-2020-21-13-06', '-6.766', '108.539', '0817798989');

-- --------------------------------------------------------

--
-- Struktur dari tabel `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `email` text NOT NULL,
  `password` text NOT NULL,
  `nama` text NOT NULL,
  `hp` text NOT NULL,
  `alamat` text NOT NULL,
  `poto` text NOT NULL,
  `role` text NOT NULL,
  `status` int(11) NOT NULL,
  `tanggal` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `users`
--

INSERT INTO `users` (`id`, `email`, `password`, `nama`, `hp`, `alamat`, `poto`, `role`, `status`, `tanggal`) VALUES
(1, 'veridetta@gmail.com', 'chealsea', 'Fery Andriani', '08817654213', 'Cirebon', 'order.png07-03-2020-12-14-02', 'partner', 1, '07-03-2020 12:14:02'),
(2, 'admin@gmail.com', 'admin123', 'Ahmad Jalaluddin', '', 'Argasunya, Cirebon', 'order.png07-03-2020-12-14-02.png', 'admin', 1, '');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `data`
--
ALTER TABLE `data`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `datapkh`
--
ALTER TABLE `datapkh`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `datawarga`
--
ALTER TABLE `datawarga`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `data`
--
ALTER TABLE `data`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT untuk tabel `datapkh`
--
ALTER TABLE `datapkh`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT untuk tabel `datawarga`
--
ALTER TABLE `datawarga`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
