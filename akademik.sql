-- phpMyAdmin SQL Dump
-- version 4.0.4.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Apr 09, 2018 at 12:22 PM
-- Server version: 5.5.32
-- PHP Version: 5.4.19

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `akademik`
--
CREATE DATABASE IF NOT EXISTS `akademik` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `akademik`;

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE IF NOT EXISTS `customer` (
  `id_customer` int(5) NOT NULL AUTO_INCREMENT,
  `username` varchar(50) NOT NULL,
  `password` varchar(255) NOT NULL,
  `nama` varchar(255) NOT NULL,
  `umur` int(3) NOT NULL,
  `alamat` text NOT NULL,
  `telp` varchar(15) NOT NULL,
  `email` varchar(50) NOT NULL,
  `tgl_lahir` varchar(15) NOT NULL,
  `kode_pos` varchar(10) NOT NULL,
  `nama_ibu_k` varchar(50) NOT NULL,
  `gender` varchar(15) NOT NULL,
  PRIMARY KEY (`id_customer`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=6 ;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`id_customer`, `username`, `password`, `nama`, `umur`, `alamat`, `telp`, `email`, `tgl_lahir`, `kode_pos`, `nama_ibu_k`, `gender`) VALUES
(1, 'cust1', '91ec1f9324753048c0096d036a694f86', 'Customer 1', 25, 'Muara Bahari', '09289301', 'test@gmail.com', '', '', '', ''),
(3, 'sandi', '827ccb0eea8a706c4c34a16891f84e7b', 'ariessandi x', 29, 'jakarta', '987899', 'sandi@yahoo.com', '', '', '', ''),
(4, 'aries', '827ccb0eea8a706c4c34a16891f84e7b', 'aries s', 25, 'jakarta', '987980709', 'ss@ymail.com', '', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `mahasiswa`
--

CREATE TABLE IF NOT EXISTS `mahasiswa` (
  `nim` char(10) NOT NULL,
  `nama` varchar(35) NOT NULL,
  `prodi` char(5) NOT NULL,
  PRIMARY KEY (`nim`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `mahasiswa`
--

INSERT INTO `mahasiswa` (`nim`, `nama`, `prodi`) VALUES
('1501530044', 'Dhika Bagas Whisnu Aji', 'TI-S1'),
('1501530034', 'Mochamad Teguh', 'TI-S1'),
('1501530013', 'Listyani Praptining Putri', 'TI-S1');

-- --------------------------------------------------------

--
-- Table structure for table `matakuliah`
--

CREATE TABLE IF NOT EXISTS `matakuliah` (
  `kdmk` char(6) NOT NULL,
  `nmmk` varchar(35) NOT NULL,
  `sks` int(11) NOT NULL,
  `prodi` char(5) NOT NULL,
  PRIMARY KEY (`kdmk`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `matakuliah`
--

INSERT INTO `matakuliah` (`kdmk`, `nmmk`, `sks`, `prodi`) VALUES
('112233', 'Pemrograman Internet I', 3, 'TI-D3'),
('104531', 'Pemrograman Database', 3, 'TI-D3'),
('812345', 'Basis Data Lanjut', 3, 'TI-S1'),
('780123', 'Interpersonal Skill', 2, 'TI-S1'),
('672134', 'Kewirausahaan', 2, 'TI-S1'),
('671234', 'PTK', 3, 'TI-S1'),
('123211', 'Algoritma & Pemrograman', 3, 'TI-S1');

-- --------------------------------------------------------

--
-- Table structure for table `nilai`
--

CREATE TABLE IF NOT EXISTS `nilai` (
  `thakd` char(5) NOT NULL,
  `nim` char(10) NOT NULL,
  `kdmk` char(6) NOT NULL,
  `nilai` int(11) DEFAULT NULL,
  PRIMARY KEY (`thakd`,`nim`,`kdmk`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `nilai`
--

INSERT INTO `nilai` (`thakd`, `nim`, `kdmk`, `nilai`) VALUES
('20122', '09.3.00012', '112233', NULL),
('20122', '09.5.00056', '780123', NULL),
('20122', '09.5.00056', '812345', NULL),
('20122', '10.5.00001', 'M01', NULL),
('20122', '10.5.00001', 'M02', NULL),
('20122', '11.5.00001', 'M01', NULL),
('20122', '11.5.00001', 'M02', NULL),
('20122', '11.5.00001', 'M03', NULL),
('20122', '12.5.00001', 'M04', NULL),
('20122', '12.5.00001', 'M05', NULL);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
