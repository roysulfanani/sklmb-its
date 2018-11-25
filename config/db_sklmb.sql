-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Nov 25, 2018 at 04:57 AM
-- Server version: 10.1.19-MariaDB
-- PHP Version: 5.6.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_sklmb`
--

-- --------------------------------------------------------

--
-- Table structure for table `tjenis_biaya`
--

CREATE TABLE `tjenis_biaya` (
  `id` int(11) NOT NULL,
  `jenis_biaya` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tjenis_biaya`
--

INSERT INTO `tjenis_biaya` (`id`, `jenis_biaya`) VALUES
(1, 'hr asisten'),
(2, 'hr kuliah tamu (narasumber lokas)');

-- --------------------------------------------------------

--
-- Table structure for table `tpendanaan`
--

CREATE TABLE `tpendanaan` (
  `id` int(11) NOT NULL,
  `jenis_biaya` varchar(50) NOT NULL,
  `rab_total` varchar(15) NOT NULL,
  `rab` varchar(15) NOT NULL,
  `penyerapan` varchar(15) NOT NULL,
  `saldo_berjalan` varchar(15) NOT NULL,
  `tanggal` date NOT NULL,
  `kegiatan` text NOT NULL,
  `status` varchar(12) NOT NULL,
  `id_user` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tproposal`
--

CREATE TABLE `tproposal` (
  `id` int(11) NOT NULL,
  `id_user` int(11) NOT NULL,
  `judul_proposal` varchar(255) NOT NULL,
  `status` varchar(15) NOT NULL,
  `file_input` varchar(255) NOT NULL,
  `date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tproposal`
--

INSERT INTO `tproposal` (`id`, `id_user`, `judul_proposal`, `status`, `file_input`, `date`) VALUES
(1, 1, 'test', 'proses proposal', '2018-11-25-(UZ01POH18010733)-0-191884555-398898577.pdf', '2018-11-25 00:00:00'),
(2, 1, 'test2', 'proses proposal', '4 Surat penawaran RS Adi Husada UNDAAN, MPI.doc', '2018-11-25 00:00:00'),
(3, 1, 'test3', 'proses proposal', '413.TL.SBY2.MPI.V.18.pdf', '2018-11-25 00:00:00'),
(4, 1, 'test4', 'proses proposal', '2018-11-25-UPT RSUD DR. MOHAMAD SOEWANDIE ID1133098.pdf', '2018-11-25 00:00:00'),
(5, 1, 'test5', 'proses proposal', '2018-11-25-114.TL.SBY1.MPI.VII.18.pdf', '2018-11-25 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `trab`
--

CREATE TABLE `trab` (
  `id` int(11) NOT NULL,
  `jenis_biaya` varchar(100) NOT NULL,
  `rab` varchar(15) NOT NULL,
  `tahun` date NOT NULL,
  `id_user` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `trab`
--

INSERT INTO `trab` (`id`, `jenis_biaya`, `rab`, `tahun`, `id_user`) VALUES
(1, 'hr asisten', '20000000', '2018-11-25', 1),
(2, 'hr kuliah tamu (narasumber lokas)', '30000', '2018-11-25', 1);

-- --------------------------------------------------------

--
-- Table structure for table `tuser`
--

CREATE TABLE `tuser` (
  `id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(255) NOT NULL,
  `email` varchar(50) NOT NULL,
  `level` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tuser`
--

INSERT INTO `tuser` (`id`, `username`, `password`, `email`, `level`) VALUES
(1, 'admin', '21232f297a57a5a743894a0e4a801fc3', 'adminsklmb@gmail.com', 'admin');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tjenis_biaya`
--
ALTER TABLE `tjenis_biaya`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tpendanaan`
--
ALTER TABLE `tpendanaan`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tproposal`
--
ALTER TABLE `tproposal`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `trab`
--
ALTER TABLE `trab`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tuser`
--
ALTER TABLE `tuser`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tjenis_biaya`
--
ALTER TABLE `tjenis_biaya`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `tpendanaan`
--
ALTER TABLE `tpendanaan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `tproposal`
--
ALTER TABLE `tproposal`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `trab`
--
ALTER TABLE `trab`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `tuser`
--
ALTER TABLE `tuser`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
