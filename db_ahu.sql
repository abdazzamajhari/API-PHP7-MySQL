-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 05, 2019 at 07:09 AM
-- Server version: 10.3.16-MariaDB
-- PHP Version: 7.3.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_ahu`
--

-- --------------------------------------------------------

--
-- Table structure for table `tb_jurnal`
--

CREATE TABLE `tb_jurnal` (
  `id` int(11) NOT NULL,
  `tanggal_jurnal` date NOT NULL,
  `judul_jurnal` varchar(255) NOT NULL,
  `judul_jurnal_terjemahan` varchar(255) NOT NULL,
  `penulis` varchar(255) NOT NULL,
  `bahasa_id` int(11) NOT NULL,
  `penerbit` varchar(255) NOT NULL,
  `kategori_id` int(11) NOT NULL,
  `publikasi_id` int(11) NOT NULL,
  `abstraksi` text NOT NULL,
  `abstraksi_terjemahan` text NOT NULL,
  `berkas_upload` varchar(255) NOT NULL,
  `gambar_upload` varchar(255) NOT NULL,
  `username_id` int(11) NOT NULL,
  `dibuat_pada` datetime NOT NULL,
  `terakhir_update` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_jurnal`
--

INSERT INTO `tb_jurnal` (`id`, `tanggal_jurnal`, `judul_jurnal`, `judul_jurnal_terjemahan`, `penulis`, `bahasa_id`, `penerbit`, `kategori_id`, `publikasi_id`, `abstraksi`, `abstraksi_terjemahan`, `berkas_upload`, `gambar_upload`, `username_id`, `dibuat_pada`, `terakhir_update`) VALUES
(1, '2008-12-01', 'PERENCANAAN PEMBANGUNAN HUKUM NASIONAL\r\nBIDANG HUKUM PIDANA DAN SISTEM PEMIDANAAN\r\n(POLITIK HUKUM DAN PEMIDANAAN)', 'NATIONAL LAW DEVELOPMENT PLANNING CRIMINAL LAW AND CRIMINAL SYSTEM (LEGAL POLITICS AND CRIMINALS)', 'Tim Kerja DR.Mudzakkir, S.H.M.H.', 1, 'Departemen Hukum dan Hak Asasi Manusia\r\nBadan Pembinaan Hukum Nasional', 1, 1, 'Sejak diterbitkannya Undang-undang Nomor 1 Tahun 1946 tentang Peraturan Hukum Pidana jo Undang-undang Nomor 73 tahun 1958 tentang Menyatakan Berlakunya Undang-undang Nomor 1 Tahun 1946 tentang Peraturan Hukum Pidana Untuk Seluruh Wilayah Republik Indonesia, perkembangan hukum pidana masih mengacu kepada ketentuan umum hukum pidana sebagaimana diatur dalam Buku I KUHP. Pengembangan asas-asas hukum pidana dan pemidanaan dalam peraturan perundang-undangan dan penegakan hukum pidana masih dapat dikendalikan berdasarkan asas-asas hukum pidana dan pemidanaan dalam Buku I KUHP.\r\nDalam perkembangannya, terutama setelah Tahun 1958, lahirlah produk hukum pidana dalam peraturan perundang-undangan di luar KUHP yang memuat asas-asas hukum pidana baik dalam di bidang hukum pidana materiil maupun hukum pidana formil yang menyimpang dari asas-asas umum hukum pidana materiil dalam Buku I KUHP dan hukum acara pidana (HIR).', 'Since the issuance of Law Number 1 of 1946 concerning Criminal Law Regulations in conjunction with Law Number 73 of 1958 concerning Declaring the Enactment of Law Number 1 of 1946 concerning Criminal Law Regulations for the Entire Territory of the Republic of Indonesia, the development of criminal law still refers to the general provisions of the law criminal code as regulated in Book I of the Criminal Code. The development of the principles of criminal law and penalties in the legislation and enforcement of criminal law can still be controlled based on the principles of criminal law and penalties in Book I of the Criminal Code. In its development, especially after 1958, criminal law products were born in the statutory regulations outside the Criminal Code which contained the principles of criminal law both in the field of material criminal law and formal criminal law that deviated from the general principles of material criminal law in the Book I of the Criminal Code and criminal procedure law (HIR).', 'PIDANA_1_2019-09-05', 'ahu.JPG', 1, '2019-09-05 09:34:00', '2019-09-05 09:34:00');

-- --------------------------------------------------------

--
-- Table structure for table `tb_jurnal_bahasa`
--

CREATE TABLE `tb_jurnal_bahasa` (
  `id` int(11) NOT NULL,
  `nama_bahasa` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_jurnal_bahasa`
--

INSERT INTO `tb_jurnal_bahasa` (`id`, `nama_bahasa`) VALUES
(1, 'Bahasa Indonesia'),
(2, 'Melayu'),
(3, 'English');

-- --------------------------------------------------------

--
-- Table structure for table `tb_jurnal_kategori`
--

CREATE TABLE `tb_jurnal_kategori` (
  `id` int(11) NOT NULL,
  `nama_kategori` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_jurnal_kategori`
--

INSERT INTO `tb_jurnal_kategori` (`id`, `nama_kategori`) VALUES
(1, 'Pidana'),
(2, 'Perdata'),
(3, 'OPHI'),
(4, 'Tata Negara');

-- --------------------------------------------------------

--
-- Table structure for table `tb_jurnal_publikasi`
--

CREATE TABLE `tb_jurnal_publikasi` (
  `id` int(11) NOT NULL,
  `nama_publikasi` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_jurnal_publikasi`
--

INSERT INTO `tb_jurnal_publikasi` (`id`, `nama_publikasi`) VALUES
(1, 'Nasional'),
(2, 'Internasional');

-- --------------------------------------------------------

--
-- Table structure for table `tb_log`
--

CREATE TABLE `tb_log` (
  `id` int(11) NOT NULL,
  `username_id` int(11) NOT NULL,
  `last_activity` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tb_pengguna`
--

CREATE TABLE `tb_pengguna` (
  `id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `full_name` varchar(255) NOT NULL,
  `access_id` int(11) NOT NULL,
  `created_at` datetime NOT NULL,
  `last_login` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_pengguna`
--

INSERT INTO `tb_pengguna` (`id`, `username`, `password`, `full_name`, `access_id`, `created_at`, `last_login`) VALUES
(1, 'admin', '21232f297a57a5a743894a0e4a801fc3', 'Administrator', 1, '2019-09-05 00:00:00', '2019-09-05 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `tb_pengguna_validasi`
--

CREATE TABLE `tb_pengguna_validasi` (
  `id` int(11) NOT NULL,
  `access` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_pengguna_validasi`
--

INSERT INTO `tb_pengguna_validasi` (`id`, `access`) VALUES
(1, 'admin'),
(2, 'personal');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tb_jurnal`
--
ALTER TABLE `tb_jurnal`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tb_jurnal_bahasa`
--
ALTER TABLE `tb_jurnal_bahasa`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tb_jurnal_kategori`
--
ALTER TABLE `tb_jurnal_kategori`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tb_jurnal_publikasi`
--
ALTER TABLE `tb_jurnal_publikasi`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tb_log`
--
ALTER TABLE `tb_log`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tb_pengguna`
--
ALTER TABLE `tb_pengguna`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tb_pengguna_validasi`
--
ALTER TABLE `tb_pengguna_validasi`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tb_jurnal`
--
ALTER TABLE `tb_jurnal`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tb_jurnal_bahasa`
--
ALTER TABLE `tb_jurnal_bahasa`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tb_jurnal_kategori`
--
ALTER TABLE `tb_jurnal_kategori`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `tb_jurnal_publikasi`
--
ALTER TABLE `tb_jurnal_publikasi`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tb_log`
--
ALTER TABLE `tb_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tb_pengguna`
--
ALTER TABLE `tb_pengguna`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tb_pengguna_validasi`
--
ALTER TABLE `tb_pengguna_validasi`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
