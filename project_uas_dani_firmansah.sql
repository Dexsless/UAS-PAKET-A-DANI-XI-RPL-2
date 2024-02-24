-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 21 Nov 2023 pada 05.36
-- Versi server: 10.4.11-MariaDB
-- Versi PHP: 7.4.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `project_uas_dani_firmansah`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `barang`
--

CREATE TABLE `barang` (
  `id` int(20) NOT NULL,
  `nama_barang` varchar(50) NOT NULL,
  `harga` varchar(50) NOT NULL,
  `stok` varchar(50) DEFAULT NULL,
  `id_supplier` int(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `barang`
--

INSERT INTO `barang` (`id`, `nama_barang`, `harga`, `stok`, `id_supplier`) VALUES
(1, 'mi goreng', '3500', '212', 8),
(2, 'mi rebus', '3000', '215', 5),
(3, 'better', '2000', '551', 1),
(4, 'beng beng', '2500', '121', 3),
(5, 'choki choki', '1000', '212', 9),
(6, 'telur', '2000', '870', 10),
(7, 'le vonte', '1000', '346', 6),
(8, 'marimas', '500', '761', 7),
(9, 'ale ale', '1000', '213', 2),
(10, 'royco', '500', '819', 8);

-- --------------------------------------------------------

--
-- Struktur dari tabel `pembayaran`
--

CREATE TABLE `pembayaran` (
  `id` int(20) NOT NULL,
  `tgl_bayar` varchar(20) DEFAULT NULL,
  `total_bayar` varchar(50) DEFAULT NULL,
  `id_transaksi` int(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `pembayaran`
--

INSERT INTO `pembayaran` (`id`, `tgl_bayar`, `total_bayar`, `id_transaksi`) VALUES
(1, '01-01-23', '100000', 1),
(2, '02-02-23', '200000', 2),
(3, '-', 'Belum Bayar', 3),
(4, '02-02-23', '213000', 4),
(5, '-', 'Belum Bayar', 5),
(6, '03-03-23', '1240000', 6),
(7, '-', 'Belum Bayar', 7),
(8, '-', 'Belum Bayar', 8),
(9, '-', 'Belum Bayar', 9),
(10, '03-03-23', '9820000', 10);

-- --------------------------------------------------------

--
-- Struktur dari tabel `pembeli`
--

CREATE TABLE `pembeli` (
  `id` int(20) NOT NULL,
  `nama_pembeli` varchar(50) NOT NULL,
  `jk` varchar(50) NOT NULL,
  `no_telp` varchar(50) DEFAULT NULL,
  `alamat` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `pembeli`
--

INSERT INTO `pembeli` (`id`, `nama_pembeli`, `jk`, `no_telp`, `alamat`) VALUES
(1, 'jack', 'Laki-Laki', '08987654321', 'Bandung'),
(2, 'zaki', 'Laki-Laki', '08987654322', 'Jakarta'),
(3, 'tono', 'Laki-Laki', '08987654323', 'Bogor'),
(4, 'rehan ft layla', 'Laki-Laki', '08987654324', 'Jawa'),
(5, 'cidd', 'Laki-Laki', '08987654325', 'Jawir'),
(6, 'litch', 'Laki-Laki', '08987654326', 'Jatim'),
(7, 'saber', 'Laki-Laki', '08987654327', 'Jateng'),
(8, 'Faiz Tzy', 'Laki-Laki', '08987654328', 'Bandung'),
(9, 'agus', 'Laki-Laki', '08987654329', 'Jaksel'),
(10, 'Dylan Pros', 'Laki-Laki', '08987654330', 'Garut'),
(11, 'Bintang', 'Laki-Laki', '08987654331', 'Bandung');

-- --------------------------------------------------------

--
-- Struktur dari tabel `supplier`
--

CREATE TABLE `supplier` (
  `id` int(20) NOT NULL,
  `nama_supplier` varchar(50) NOT NULL,
  `no_telp` varchar(50) DEFAULT NULL,
  `alamat` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `supplier`
--

INSERT INTO `supplier` (`id`, `nama_supplier`, `no_telp`, `alamat`) VALUES
(1, 'Gibran', '08987654321', 'Bandung'),
(2, 'Budi', '08987654322', 'Jakarta'),
(3, 'Mas Fajar', '08987654323', 'Bogor'),
(4, 'Rehan Wangsaf', '08987654324', 'Jawa'),
(5, 'Si Hitam', '08987654325', 'Jawir'),
(6, 'Rehan FF', '08987654326', 'Jatim'),
(7, 'Rehan Wibusoft', '08987654327', 'Jateng'),
(8, 'Fajar Tzy', '08987654328', 'Bandung'),
(9, 'Reza Arap', '08987654329', 'Jaksel'),
(10, 'FrontaL', '08987654330', 'Garut');

-- --------------------------------------------------------

--
-- Struktur dari tabel `transaksi`
--

CREATE TABLE `transaksi` (
  `id` int(20) NOT NULL,
  `id_barang` int(20) DEFAULT NULL,
  `id_pembeli` int(20) DEFAULT NULL,
  `tanggal` varchar(50) DEFAULT NULL,
  `keterangan` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `transaksi`
--

INSERT INTO `transaksi` (`id`, `id_barang`, `id_pembeli`, `tanggal`, `keterangan`) VALUES
(1, 9, 9, '01-02-23', 'Lunas'),
(2, 4, 5, '02-02-23', 'Lunas'),
(3, 3, 10, '02-02-23', 'Belum Lunas'),
(4, 5, 8, '02-02-23', 'Lunas'),
(5, 7, 1, '03-03-23', 'Belum Lunas'),
(6, 8, 6, '03-03-23', 'Lunas'),
(7, 1, 4, '03-03-23', 'Belum Lunas'),
(8, 2, 7, '03-03-23', 'Belum Lunas'),
(9, 10, 3, '03-03-23', 'Belum Lunas'),
(10, 6, 2, '03-03-23', 'Lunas');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `barang`
--
ALTER TABLE `barang`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_supplier` (`id_supplier`) USING BTREE;

--
-- Indeks untuk tabel `pembayaran`
--
ALTER TABLE `pembayaran`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_transaksi` (`id_transaksi`);

--
-- Indeks untuk tabel `pembeli`
--
ALTER TABLE `pembeli`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `supplier`
--
ALTER TABLE `supplier`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `transaksi`
--
ALTER TABLE `transaksi`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_pembeli` (`id_pembeli`),
  ADD KEY `id_barang` (`id_barang`) USING BTREE;

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `barang`
--
ALTER TABLE `barang`
  MODIFY `id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT untuk tabel `pembayaran`
--
ALTER TABLE `pembayaran`
  MODIFY `id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT untuk tabel `pembeli`
--
ALTER TABLE `pembeli`
  MODIFY `id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT untuk tabel `supplier`
--
ALTER TABLE `supplier`
  MODIFY `id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT untuk tabel `transaksi`
--
ALTER TABLE `transaksi`
  MODIFY `id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `barang`
--
ALTER TABLE `barang`
  ADD CONSTRAINT `barang` FOREIGN KEY (`id_supplier`) REFERENCES `supplier` (`id`);

--
-- Ketidakleluasaan untuk tabel `pembayaran`
--
ALTER TABLE `pembayaran`
  ADD CONSTRAINT `pembayaran_ibfk_1` FOREIGN KEY (`id_transaksi`) REFERENCES `transaksi` (`id`);

--
-- Ketidakleluasaan untuk tabel `transaksi`
--
ALTER TABLE `transaksi`
  ADD CONSTRAINT `transaksi` FOREIGN KEY (`id_barang`) REFERENCES `barang` (`id`),
  ADD CONSTRAINT `transaksi_ibfk_1` FOREIGN KEY (`id_pembeli`) REFERENCES `pembeli` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
