-- phpMyAdmin SQL Dump
-- version 4.5.4.1deb2ubuntu2.1
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Mar 07, 2020 at 05:36 PM
-- Server version: 5.7.28-0ubuntu0.16.04.2
-- PHP Version: 7.2.26-1+ubuntu16.04.1+deb.sury.org+1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
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
-- Table structure for table `data`
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
-- Dumping data for table `data`
--

INSERT INTO `data` (`id`, `nama`, `hp`, `alamat`, `keahlian`, `pengalaman`, `pendidikan`, `ktp`, `poto`, `status`, `pekerjaan`, `partner`, `tanggal`, `lat`, `lng`) VALUES
(1, 'Fery Andriani', '08817769047', 'Argasunya, Cirebon', 'MS Office, Web & Mobile Develp, Blogging, Design Editor.', 'IT Practice 2yrs', 'SMA', '3214013123132', 'man.png07-03-2020-13-47-19.png', 1, 'IT', '1', '07-03-2020-13-47-19', '-6.759', '108.545');

-- --------------------------------------------------------

--
-- Table structure for table `users`
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
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `email`, `password`, `nama`, `hp`, `alamat`, `poto`, `role`, `status`, `tanggal`) VALUES
(1, 'veridetta@gmail.com', 'chealsea', 'Fery Andriani', '08817654213', 'Cirebon', 'order.png07-03-2020-12-14-02', 'partner', 1, '07-03-2020 12:14:02'),
(2, 'admin@gmail.com', 'admin123', 'Ahmad Jalaluddin', '', 'Argasunya, Cirebon', 'order.png07-03-2020-12-14-02.png', 'admin', 1, '');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `data`
--
ALTER TABLE `data`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `data`
--
ALTER TABLE `data`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
