-- phpMyAdmin SQL Dump
-- version 4.9.4
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Mar 07, 2020 at 07:58 PM
-- Server version: 5.7.24
-- PHP Version: 7.2.19

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `rentalmobil`
--

-- --------------------------------------------------------

--
-- Table structure for table `mobil`
--

CREATE TABLE `mobil` (
  `id_mobil` int(11) NOT NULL,
  `id_type` int(11) NOT NULL,
  `merk` varchar(100) NOT NULL,
  `no_plat` varchar(20) NOT NULL,
  `warna` varchar(20) NOT NULL,
  `tahun` varchar(4) NOT NULL,
  `harga` int(11) NOT NULL,
  `status` varchar(50) NOT NULL,
  `gambar` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `mobil`
--

INSERT INTO `mobil` (`id_mobil`, `id_type`, `merk`, `no_plat`, `warna`, `tahun`, `harga`, `status`, `gambar`) VALUES
(6, 1, 'Suzuki Ciaz', 'N 1985 RTF', 'Putih', '2019', 800000, '1', 'mobil-suzuki-ciaz1.jpg'),
(7, 1, 'Honda Civic', 'B 9547 HUY', 'Silver', '2014', 1000000, '1', 'std_in-2499489_300e.jpg'),
(8, 5, 'Suzuki Ciaz', 'N 6758 AW', 'PINK', '2017', 600000, '1', 'Suzuki-Ciaz.jpg'),
(10, 5, 'Suzuki Ertiga', 'N 1985 NK', 'Silver', '2018', 650000, '1', 'Suzuki-All-new-Ertiga-2018-Warna-merah-Pearl-Radiant-Red.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `transaksi`
--

CREATE TABLE `transaksi` (
  `id_transaksi` int(11) NOT NULL,
  `id_user` int(11) NOT NULL,
  `id_mobil` int(11) NOT NULL,
  `tanggal_sewa` datetime NOT NULL,
  `tanggal_kembali` datetime NOT NULL,
  `total_sewa` int(11) NOT NULL,
  `status` int(1) NOT NULL COMMENT '1. Disewa, 2. Selesai',
  `status_pembayaran` int(1) NOT NULL COMMENT '0.belum dibayar, 1.menunggu pembayaran, 2.sudah dibayar',
  `bukti_pembayaran` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `transaksi`
--

INSERT INTO `transaksi` (`id_transaksi`, `id_user`, `id_mobil`, `tanggal_sewa`, `tanggal_kembali`, `total_sewa`, `status`, `status_pembayaran`, `bukti_pembayaran`) VALUES
(1, 3, 7, '2020-02-11 13:00:00', '2020-02-15 12:30:00', 4000000, 2, 2, 'Screenshot_12.jpg'),
(4, 3, 6, '2020-02-20 11:51:00', '2020-02-22 11:51:00', 1600000, 2, 2, 'Screenshot_12.jpg'),
(5, 6, 8, '2020-02-06 01:58:00', '2020-02-08 01:58:00', 1200000, 2, 2, 'Screenshot_12.jpg'),
(6, 6, 10, '2020-02-27 02:03:00', '2020-02-29 02:03:00', 1300000, 2, 2, 'Screenshot_12.jpg'),
(10, 4, 8, '2020-02-26 04:00:00', '2020-02-29 04:30:00', 1800000, 2, 2, 'Screenshot_13.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `type`
--

CREATE TABLE `type` (
  `id_type` int(11) NOT NULL,
  `kode_type` varchar(10) NOT NULL,
  `nama_type` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `type`
--

INSERT INTO `type` (`id_type`, `kode_type`, `nama_type`) VALUES
(1, 'SD', 'Sedan'),
(5, 'HB', 'Hatchback');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id_user` int(11) NOT NULL,
  `nama` varchar(100) NOT NULL,
  `email` varchar(150) NOT NULL,
  `password` varchar(255) NOT NULL,
  `alamat` varchar(100) NOT NULL,
  `gender` varchar(20) NOT NULL,
  `no_telp` varchar(20) NOT NULL,
  `no_ktp` varchar(50) NOT NULL,
  `scan_ktp` varchar(255) NOT NULL,
  `scan_kk` varchar(255) NOT NULL,
  `level` int(1) NOT NULL COMMENT '1. admin, 2. customer',
  `status` int(1) NOT NULL COMMENT '1.pending, 2. aktif'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id_user`, `nama`, `email`, `password`, `alamat`, `gender`, `no_telp`, `no_ktp`, `scan_ktp`, `scan_kk`, `level`, `status`) VALUES
(3, 'Wildan Dawam Bash', 'wildan@gmail.com', 'af6b3aa8c3fcd651674359f500814679', 'Probolinggo', 'Laki-Laki', '8046399877', '213123123112', 'KTP-1544523262.png', 'KK.PNG', 1, 1),
(4, 'Martin Amanu', 'martin@gmail.com', '925d7518fc597af0e43f5606f9a51512', 'Jombang', 'Laki-Laki', '085727287289', '123213123', 'KTP-15445232621.png', 'KK1.PNG', 2, 1),
(6, 'Facko Ellanda', 'facko@gmail.com', '98285560d7c2772047634cfa4b6e3c8d', 'Blitar', 'Laki-Laki', '08921711221', '896786128689', 'KTP-15445232623.png', 'KK3.PNG', 2, 1),
(7, 'wahyu prasetyo', 'wahyu@gmail.com', '32c9e71e866ecdbc93e497482aa6779f', 'Jombang', 'Laki-Laki', '089788967', '275782578222', 'KTP-15445232624.png', 'KK4.PNG', 2, 1),
(9, 'risti', 'risti@gmail.com', 'f4e4ed60089aa5d06938cb7ace645b4b', 'malang', 'Perempuan', '087666782533', '895778329828', '13.jpg', '23.jpg', 2, 1),
(10, 'farah', 'farah@gmail.com', '9b0f4d720720fd55436ac7f07ac8a840', 'jember', 'Perempuan', '0896896897', '90098978989', '14.jpg', '24.jpg', 2, 1),
(13, 'dimas', 'dimas@gmail.com', '7d49e40f4b3d8f68c19406a58303f826', 'Malang', 'Laki-Laki', '287612891', '8979790', 'KTP-15445232627.png', 'KK7.PNG', 2, 1),
(14, 'Ernold', 'ernold@gmail.com', '71348276d1229ccb335ebedc677b3ed1', 'Magetan', 'Laki-Laki', '899709709', '9070979', 'KTP-15445232628.png', 'KK8.PNG', 2, 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `mobil`
--
ALTER TABLE `mobil`
  ADD PRIMARY KEY (`id_mobil`),
  ADD KEY `fk_id_type` (`id_type`);

--
-- Indexes for table `transaksi`
--
ALTER TABLE `transaksi`
  ADD PRIMARY KEY (`id_transaksi`),
  ADD KEY `fk_customer` (`id_user`),
  ADD KEY `fk_mobil` (`id_mobil`);

--
-- Indexes for table `type`
--
ALTER TABLE `type`
  ADD PRIMARY KEY (`id_type`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id_user`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `mobil`
--
ALTER TABLE `mobil`
  MODIFY `id_mobil` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `transaksi`
--
ALTER TABLE `transaksi`
  MODIFY `id_transaksi` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `type`
--
ALTER TABLE `type`
  MODIFY `id_type` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id_user` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `mobil`
--
ALTER TABLE `mobil`
  ADD CONSTRAINT `fk_id_type` FOREIGN KEY (`id_type`) REFERENCES `type` (`id_type`);

--
-- Constraints for table `transaksi`
--
ALTER TABLE `transaksi`
  ADD CONSTRAINT `fk_customer` FOREIGN KEY (`id_user`) REFERENCES `user` (`id_user`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_mobil` FOREIGN KEY (`id_mobil`) REFERENCES `mobil` (`id_mobil`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
