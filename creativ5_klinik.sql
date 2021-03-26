-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 26, 2021 at 04:19 AM
-- Server version: 10.4.14-MariaDB
-- PHP Version: 7.4.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `creativ5_klinik`
--

-- --------------------------------------------------------

--
-- Table structure for table `antrian_pasien`
--

CREATE TABLE `antrian_pasien` (
  `id` int(11) NOT NULL,
  `no_urut` int(11) DEFAULT NULL,
  `no_faktur` varchar(100) DEFAULT NULL,
  `id_pasien` varchar(50) NOT NULL,
  `tanggal_pendaftaran` date NOT NULL,
  `status` varchar(50) DEFAULT NULL,
  `kunjungan_ke` int(11) NOT NULL,
  `jenis_layanan` text DEFAULT NULL,
  `id_dr` varchar(10) DEFAULT NULL,
  `asuransi` varchar(10) DEFAULT NULL,
  `poliklinik` int(50) DEFAULT NULL,
  `bb` int(11) DEFAULT NULL,
  `tb` int(11) DEFAULT NULL,
  `keluhan` text DEFAULT NULL,
  `jenis_pasien` text DEFAULT NULL,
  `id_kasir` int(11) DEFAULT NULL,
  `ruang` int(11) NOT NULL,
  `tgl_out` date DEFAULT NULL,
  `online` int(11) DEFAULT NULL,
  `suhu` text DEFAULT NULL,
  `tensi` text DEFAULT NULL,
  `respirasi` text DEFAULT NULL,
  `nadi` text DEFAULT NULL,
  `rujuk_inap` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `antrian_pasien`
--

INSERT INTO `antrian_pasien` (`id`, `no_urut`, `no_faktur`, `id_pasien`, `tanggal_pendaftaran`, `status`, `kunjungan_ke`, `jenis_layanan`, `id_dr`, `asuransi`, `poliklinik`, `bb`, `tb`, `keluhan`, `jenis_pasien`, `id_kasir`, `ruang`, `tgl_out`, `online`, `suhu`, `tensi`, `respirasi`, `nadi`, `rujuk_inap`) VALUES
(12, 2, '202003091422598', 'S.M.S.5', '2020-03-09', NULL, 1, 'lab', NULL, NULL, NULL, 80, 180, 'pusing\r\nmeriang', 'bpjs', 35, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(2, 1, '202003091117377', 'S.M.S.3', '2020-03-09', 'Lunas', 1, 'apotek', NULL, '1', NULL, 76, 182, 'Sakit tenggorokan\r\nFlu\r\nMeriang\r\nPusing', 'corp1', 34, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(3, 1, '202003091128113', 'S.M.S.3', '2020-03-09', NULL, 1, 'lab', NULL, NULL, NULL, 76, 182, 'Batuk Kering\r\nFlu\r\nPusing\r\nMeriang', 'umum', 35, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(9, 1, '202003091344398', 'S.M.S', '2020-03-09', 'Lunas', 1, 'apotek', NULL, NULL, NULL, 48, 156, '', 'corp1', 34, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(10, 1, '202003091413372', 'S.M.S.3', '2020-03-09', 'Lunas', 2, 'apotek', NULL, NULL, NULL, 55, 150, 'Terlalu sibuk memilih', 'umum', 34, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(11, 1, '202003091419509', 'S.M.S.5', '2020-03-09', 'Lunas', 1, 'apotek', NULL, NULL, NULL, 80, 180, 'Sakit Kepala\r\nLemas\r\nPilek', 'bpjs', 34, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(13, 1, '202004091102388', 'S.M.S.2', '2020-04-09', NULL, 2, 'poliklinik', NULL, '1', 1, NULL, NULL, '', 'umum', 33, 0, NULL, NULL, 'NULL', 'NULL', NULL, NULL, NULL),
(14, 1, '202004101109499', 'S.M.S', '2020-04-10', NULL, 1, 'poliklinik', NULL, '1', 9, NULL, NULL, '', 'umum', 33, 0, NULL, NULL, 'NULL', 'NULL', NULL, NULL, NULL),
(15, 2, '202004101459211', 'S.M.S.3', '2020-04-10', NULL, 2, 'poliklinik', NULL, NULL, 2, NULL, NULL, '', 'bpjs', 33, 0, NULL, NULL, 'NULL', 'NULL', NULL, NULL, NULL),
(16, 1, '202004110932117', 'S.M.S.2', '2020-04-11', NULL, 2, 'poliklinik', NULL, NULL, 7, NULL, NULL, '', 'umum', 33, 0, NULL, NULL, 'NULL', 'NULL', NULL, NULL, NULL),
(17, 2, '202004111359194', 'S.M.S.3', '2020-04-11', NULL, 2, 'poliklinik', NULL, NULL, 7, NULL, NULL, '', 'umum', 33, 0, NULL, NULL, 'NULL', 'NULL', NULL, NULL, NULL),
(33, 4, '202004151404175', 'S.M.S 4', '2020-04-15', NULL, 1, 'poliklinik', '12', NULL, 6, NULL, NULL, '', 'inhealt', 33, 0, NULL, NULL, 'NULL', 'NULL', NULL, NULL, NULL),
(30, 1, '202004151403418', 'S.M.S.5', '2020-04-15', NULL, 1, 'poliklinik', '9', NULL, 1, NULL, NULL, '', 'umum', 33, 0, NULL, NULL, 'NULL', 'NULL', NULL, NULL, NULL),
(31, 2, '202004151403535', 'S.M.S.6', '2020-04-15', NULL, 1, 'poliklinik', '10', NULL, 2, NULL, NULL, '', 'lain', 33, 0, NULL, NULL, 'NULL', 'NULL', NULL, NULL, NULL),
(36, 1, '202004210959111', 'S.M.S.3', '2020-04-21', 'Lunas', 5, 'apotek', NULL, NULL, NULL, 45, 165, 'asad', 'lain', 34, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(35, 1, '202004181258347', 'S.M.S.5', '2020-04-18', 'Lunas', 1, 'apotek', NULL, '1', NULL, 45, 165, 'Sakit kepala', 'umum', 34, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(37, 1, '202004241457579', 'S.M.S.5', '2020-04-24', NULL, 1, 'igd', '12', '1', NULL, NULL, NULL, '', 'lain', 33, 0, NULL, NULL, 'NULL', 'NULL', NULL, NULL, NULL),
(151, 1, '202102081318184', 'S.M.S.6', '2021-02-08', NULL, 2, 'rawat jalan', '11', NULL, NULL, 55, 170, 'hepatitis', 'bpjs', 34, 0, NULL, NULL, '40', '110/90', NULL, NULL, NULL),
(39, 1, '202005041341088', 'S.M.S.1', '2020-05-04', NULL, 1, 'poliklinik', '9', NULL, 2, NULL, NULL, '', 'lain', 33, 0, NULL, NULL, 'NULL', 'NULL', NULL, NULL, 9),
(43, 1, '202005131708522', 'S.M.S.3', '2020-05-15', NULL, 5, 'igd', '9', NULL, NULL, NULL, NULL, '', 'umum', 33, 0, NULL, NULL, 'NULL', 'NULL', NULL, NULL, NULL),
(44, 2, '202005131709205', 'S.M.S', '2020-05-15', NULL, 2, 'igd', '9', '1', NULL, NULL, NULL, '', 'lain', 33, 0, NULL, NULL, 'NULL', 'NULL', NULL, NULL, NULL),
(46, 1, '202005161354171', 'S.M.S.3', '2020-05-16', 'Lunas', 5, 'apotek', NULL, '1', NULL, 58, 170, 'Sakit', 'umum', 34, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(47, 1, '202005161557078', 'S.M.S', '2020-05-16', 'Lunas', 3, 'apotek', NULL, NULL, NULL, 45, 165, 'dw', 'umum', 34, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(48, 1, '202005161620333', 'S.M.S', '2020-05-16', 'Lunas', 3, 'apotek', NULL, NULL, NULL, 45, 165, 'asd', 'umum', 34, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(57, 1, '202005270313259', 'S.M.S 4', '2020-05-27', 'Lunas', 2, 'apotek', NULL, NULL, NULL, 23, 22, 'asd', 'lain', 34, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(66, 2, '202005281631071', 'S.M.S 4', '2020-05-28', NULL, 2, 'poliklinik', '9', NULL, 2, 12, 165, '133', 'umum', 36, 0, NULL, NULL, '23', '333', '444', '55', NULL),
(56, 1, '202005270310304', 'S.M.S.3', '2020-05-27', 'Lunas', 6, 'apotek', NULL, NULL, NULL, 23, 123, 'asd', 'umum', 34, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(68, 1, '202005301429297', 'S.M.S.3', '2020-05-30', NULL, 8, 'lab', NULL, NULL, NULL, 45, 165, 'sda', 'umum', 35, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(73, 2, '202006010910335', 'S.M.S.3', '2020-06-01', NULL, 11, 'lab', NULL, NULL, NULL, 23, 12, 'asd', 'lain', 35, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(74, 1, '202006040754512', 'S.M.S.3', '2020-06-04', NULL, 11, 'poliklinik', '9', NULL, 7, NULL, NULL, '', 'lain', 33, 0, NULL, NULL, 'NULL', 'NULL', NULL, NULL, NULL),
(75, 2, '202006040821599', 'S.M.S.6', '2020-06-04', NULL, 1, 'poliklinik', '9', NULL, 7, NULL, NULL, '', 'lain', 33, 0, NULL, NULL, 'NULL', 'NULL', NULL, NULL, NULL),
(76, 1, '202006040832065', 'S.M.S.3', '2020-06-04', NULL, 12, 'apotek', NULL, '1', NULL, 45, 165, 'gjhgh', 'corp1', 34, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(77, 1, '202006051556273', 'S.M.S.3', '2020-06-05', NULL, 12, 'poliklinik', '9', NULL, 6, NULL, NULL, '', 'corp1', 33, 0, NULL, NULL, 'NULL', 'NULL', NULL, NULL, NULL),
(95, 1, '202006091601393', 'S.M.S.3', '2020-06-09', NULL, 14, 'poliklinik', '9', NULL, 7, NULL, NULL, '', 'lain', 33, 0, NULL, NULL, 'NULL', 'NULL', NULL, NULL, NULL),
(87, 1, '202006051556273', 'S.M.S.3', '2020-06-06', NULL, 11, 'lab', '9', '', 6, 0, 0, '', 'corp1', 33, 0, '0000-00-00', 0, 'NULL', 'NULL', '', '', 0),
(90, 2, '202006060155159', 'S.M.S.5', '2020-06-06', NULL, 5, 'lab', NULL, NULL, NULL, 45, 170, 'adw', 'bpjs', 35, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(102, 3, '202006100616478', 'S.M.S.5', '2020-06-10', NULL, 5, 'lab', NULL, NULL, NULL, 45, 165, 'dad', 'bpjs', 35, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(101, 2, '202006100527362', 'S.M.S.2', '2020-06-10', NULL, 5, 'lab', '9', '1', 0, 0, 0, '', '', 33, 0, '0000-00-00', 0, 'NULL', 'NULL', '', '', 0),
(100, 1, '202006100616063', 'S.M.S.3', '2020-06-10', NULL, 15, 'lab', NULL, NULL, NULL, 45, 165, 'dada', 'umum', 35, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(103, 4, '202005051206323', 'S.M.S.6', '2020-06-10', NULL, 1, 'lab', '9', '1', 0, 0, 0, '', 'umum', 33, 0, '0000-00-00', 0, 'NULL', 'NULL', '', '', 0),
(104, 1, '202006191446566', 'S.M.S.3', '2020-06-19', NULL, 15, 'poliklinik', '9', NULL, 6, NULL, NULL, '', 'umum', 33, 0, NULL, NULL, 'NULL', 'NULL', NULL, NULL, NULL),
(105, 1, '202006191450321', 'S.M.S.5', '2020-06-19', NULL, 5, 'lab', NULL, '1', NULL, 45, 165, 'awdad', 'bpjs', 35, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(119, 1, '202008011430462', 'S.M.S.5', '2020-08-01', NULL, 7, 'poliklinik', '9', '1', 7, NULL, NULL, '', 'umum', 33, 0, NULL, NULL, 'NULL', 'NULL', NULL, NULL, NULL),
(115, 1, '202006231651563', 'S.M.S.5', '2020-06-23', NULL, 5, 'lab', '9', '', 7, 0, 0, '', 'lain', 33, 0, '0000-00-00', 0, 'NULL', 'NULL', '', '', 0),
(114, 1, '202006231651563', 'S.M.S.5', '2020-06-23', NULL, 6, 'poliklinik', '9', NULL, 7, NULL, NULL, '', 'lain', 33, 0, NULL, NULL, 'NULL', 'NULL', NULL, NULL, NULL),
(116, 1, '202006241028013', 'S.M.S.3', '2020-06-24', NULL, 14, 'lab', '9', '1', 0, 0, 0, '', 'corp1', 33, 0, '0000-00-00', 0, 'NULL', 'NULL', '', '', 0),
(117, 2, '202006241127291', 'S.M.S.3', '2020-06-24', NULL, 14, 'lab', '9', '', 0, 0, 0, '', 'umum', 33, 0, '0000-00-00', 0, 'NULL', 'NULL', '', '', 0),
(120, 1, '202008181431504', 'S.M.S.5', '2020-08-18', NULL, 7, 'poliklinik', '9', '1', 1, NULL, NULL, '', 'umum', 33, 0, NULL, NULL, 'NULL', 'NULL', NULL, NULL, NULL),
(121, 1, '202012081204201', 'S.M.S.2', '2020-12-08', NULL, 6, 'lab', NULL, '1', NULL, 45, 160, 'Sakit', 'umum', 39, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(123, 1, '202012101341559', 'S.M.S.2', '2020-12-10', NULL, 6, 'apotek', NULL, '1', NULL, 70, 190, 'sakitt', 'umum', 34, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(125, 1, '202101191207265', 'S.M.S.2', '2021-01-19', NULL, 6, 'apotek', NULL, NULL, NULL, 50, 160, 'Pusing', 'umum', 34, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(126, 1, '202102011349274', 'S.M.S.2', '2021-02-01', NULL, 6, 'igd', '11', NULL, NULL, NULL, NULL, '', 'umum', 33, 0, NULL, NULL, 'NULL', 'NULL', NULL, NULL, NULL),
(127, 1, '202102011402562', 'S.M.S', '2021-02-01', NULL, 6, 'poliklinik', NULL, NULL, 5, NULL, NULL, '', 'bpjs', 33, 0, NULL, NULL, 'NULL', 'NULL', NULL, NULL, NULL),
(128, 1, '202102021051127', 'S.M.S.2', '2021-02-02', NULL, 6, 'poliklinik', NULL, NULL, 7, NULL, NULL, '', 'umum', 33, 0, NULL, NULL, 'NULL', 'NULL', NULL, NULL, NULL),
(129, 1, '202102021051325', 'S.M.S', '2021-02-02', NULL, 6, 'igd', '11', NULL, NULL, NULL, NULL, '', 'bpjs', 33, 0, NULL, NULL, 'NULL', 'NULL', NULL, NULL, NULL),
(130, 1, '202102021338345', 'S.M.S.2', '2021-02-02', NULL, 6, 'apotek', NULL, NULL, NULL, 50, 160, '', 'umum', 34, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(131, 1, '202102021428091', 'S.M.S', '2021-02-02', NULL, 6, 'apotek', NULL, NULL, NULL, 70, 165, 'Batuk Pilek', 'umum', 34, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(132, 1, '202102031042444', 'S.M.S', '2021-02-03', NULL, 6, 'rawat jalan', '11', NULL, NULL, NULL, NULL, '', 'umum', 33, 0, NULL, NULL, 'NULL', 'NULL', NULL, NULL, NULL),
(133, 2, '202102031124002', 'S.M.S.3', '2021-02-03', NULL, 15, 'rawat jalan', '11', '1', NULL, 50, 165, 'sakit kepala', 'umum', 34, 0, NULL, NULL, '39', '120/70', NULL, NULL, NULL),
(135, 1, '202102031134524', 'S.M.S.2', '2021-02-03', NULL, 6, 'apotek', NULL, NULL, NULL, 70, 165, 'kejang', 'umum', 34, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(136, 3, '202102031135317', 'S.M.S.2', '2021-02-03', NULL, 6, 'rawat jalan', '11', NULL, NULL, 70, 165, 'Kejang', 'bpjs', 34, 0, NULL, NULL, '40', '120/70', NULL, NULL, NULL),
(137, 1, '202102041050501', 'S.M.S.5', '2021-02-04', NULL, 8, 'apotek', NULL, NULL, NULL, 60, 165, 'Kejang-kejang', 'bpjs', 34, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(138, 1, '202102041052155', 'A888C', '2021-02-04', NULL, 1, 'rawat jalan', '11', NULL, NULL, 50, 165, 'Kejang-kejang', 'bpjs', 34, 0, NULL, NULL, '40', '130/90', NULL, NULL, NULL),
(139, 2, '202102041114197', 'S.M.S.3', '2021-02-04', NULL, 15, 'rawat jalan', '11', NULL, NULL, 30, 160, 'Lemas', 'jkk', 34, 0, NULL, NULL, '35', '90/60', NULL, NULL, NULL),
(140, 3, '202102041117593', 'S.M.S.1', '2021-02-04', NULL, 1, 'rawat jalan', '11', NULL, NULL, 90, 165, 'Pusing', 'jkk', 34, 0, NULL, NULL, '37', '110/70', NULL, NULL, NULL),
(141, 1, '202102041222488', 'A888C', '2021-02-04', NULL, 1, 'apotek', NULL, NULL, NULL, 50, 165, 'Kejang', 'bpjs', 34, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(142, 4, '202102041318079', 'S.M.S.6', '2021-02-04', NULL, 2, 'rawat jalan', '11', NULL, NULL, 30, 170, 'Kejang', 'bpjs', 34, 0, NULL, NULL, '40', '130/90', NULL, NULL, NULL),
(143, 1, '202102051048544', 'S.M.S.6', '2021-02-05', NULL, 2, 'rawat jalan', '11', NULL, NULL, 60, 165, 'Kejang-kejang', 'bpjs', 34, 0, NULL, NULL, '39', '120/70', NULL, NULL, NULL),
(144, 2, '202102051105584', 'S.M.S.3', '2021-02-05', NULL, 15, 'rawat jalan', '11', NULL, NULL, 70, 165, 'Meriang', 'jkk', 34, 0, NULL, NULL, '39', '130/90', NULL, NULL, NULL),
(145, 3, '202102051421418', 'S.M.S.2', '2021-02-05', NULL, 6, 'rawat jalan', '11', NULL, NULL, 60, 165, 'Pusing dan Meriang', 'umum', 34, 0, NULL, NULL, '39', '120/70', NULL, NULL, NULL),
(147, 1, '202102051456114', 'S.M.S.3', '2021-02-05', NULL, 15, 'apotek', NULL, NULL, NULL, 45, 170, 'Meriang Pusing', 'umum', 34, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(148, 1, '202102081057598', 'S.M.S.6', '2021-02-08', NULL, 2, 'apotek', NULL, NULL, NULL, 50, 165, 'pusing', 'umum', 34, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(152, 1, '202102091042266', 'A999C', '2021-02-09', NULL, 1, 'apotek', NULL, NULL, NULL, 50, 160, 'Mual', 'bpjs', 34, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(150, 1, '202102081115132', 'A999C', '2021-02-08', NULL, 1, 'apotek', NULL, NULL, NULL, 50, 160, 'meriangggg', 'umum', 34, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(155, 1, '202102091421417', 'S.M.S.3', '2021-02-09', NULL, 15, 'rawat jalan', '11', NULL, NULL, 70, 170, 'Kejang', 'bpjs', 34, 0, NULL, NULL, '39', '130/90', NULL, NULL, NULL),
(156, 2, '202102091422151', 'S.M.S.6', '2021-02-09', NULL, 2, 'rawat jalan', '11', NULL, NULL, 55, 160, 'Demam', 'umum', 34, 0, NULL, NULL, '39', '130/90', NULL, NULL, NULL),
(157, 1, '202102111049007', 'S.M.S.6', '2021-02-11', NULL, 2, 'rawat jalan', '11', NULL, NULL, 50, 165, 'Pusing Mual', 'umum', 34, 0, NULL, NULL, '38', '120/70', NULL, NULL, NULL),
(158, 1, '202102151136588', 'S.M.S.6', '2021-02-15', NULL, 2, 'rawat jalan', '11', NULL, NULL, 55, 165, 'Pusing', 'bpjs', 34, 0, NULL, NULL, '39', '120/70', NULL, NULL, NULL),
(159, 1, '202102161055594', 'S.M.S.6', '2021-02-16', NULL, 2, 'rawat jalan', '11', NULL, NULL, 50, 170, 'Pusing', 'bpjs', 34, 0, NULL, NULL, '39', '120/70', NULL, NULL, NULL),
(160, 1, '202102231301153', 'S.M.S.2', '2021-02-23', NULL, 6, 'rawat jalan', '11', NULL, NULL, 55, 160, 'Pusing', 'bpjs', 34, 0, NULL, NULL, '39', '120/70', NULL, NULL, NULL),
(161, 2, '202102231317262', 'S.M.S.3', '2021-02-23', NULL, 15, 'rawat jalan', '11', NULL, NULL, 50, 165, 'Meriang', 'umum', 34, 0, NULL, NULL, '39', '120/70', NULL, NULL, NULL),
(162, 3, '202102231318249', 'S.M.S.6', '2021-02-23', NULL, 2, 'rawat jalan', '11', NULL, NULL, 45, 155, 'Kejang', 'bpjs', 34, 0, NULL, NULL, '40', '120/70', NULL, NULL, NULL),
(163, 4, '202102231318568', 'S.M.S.5', '2021-02-23', NULL, 8, 'rawat jalan', '11', NULL, NULL, 50, 165, 'Kepala Pusing dan Perut Kembung', 'umum', 34, 0, NULL, NULL, '35', '90/70', NULL, NULL, NULL),
(164, 1, '202102241035077', 'S.M.S.3', '2021-02-24', NULL, 15, 'rawat jalan', '11', NULL, NULL, 70, 170, 'Pusing ', 'umum', 34, 0, NULL, NULL, '39', '120/70', NULL, NULL, NULL),
(165, 2, '202102241124463', 'S.M.S.2', '2021-02-24', NULL, 6, 'rawat jalan', '11', NULL, NULL, 70, 160, 'Pusing Mual Lemes', 'bpjs', 34, 0, NULL, NULL, '39', '90/70', NULL, NULL, NULL),
(166, 3, '202102241138532', 'S.M.S.5', '2021-02-24', NULL, 8, 'rawat jalan', '11', NULL, NULL, 50, 165, 'Meriang', 'bpjs', 34, 0, NULL, NULL, '38', '110/70', NULL, NULL, NULL),
(167, 1, '202102260000007', 'S.M.S.2', '2021-02-26', NULL, 0, 'poliklinik', '', NULL, 7, NULL, NULL, NULL, 'umum', NULL, 0, '2021-02-26', 1, NULL, NULL, NULL, NULL, NULL),
(168, 2, '202102260000005', 'S.M.S.3', '2021-02-26', NULL, 0, 'poliklinik', '11', NULL, 7, NULL, NULL, NULL, 'umum', NULL, 0, '2021-02-26', 1, NULL, NULL, NULL, NULL, NULL),
(169, 1, '202103051104372', 'S.M.S.2', '2021-03-05', NULL, 6, 'poliklinik', '11', NULL, 7, NULL, NULL, '', 'umum', 33, 0, NULL, NULL, 'NULL', 'NULL', NULL, NULL, NULL),
(170, 1, '202103101118289', 'A999C', '2021-03-10', NULL, 1, 'rawat jalan', '16', NULL, NULL, 55, 160, 'Kejang-kejang', 'bpjs', 34, 0, NULL, NULL, '39', '130/90', NULL, NULL, NULL),
(171, 1, '202103151120437', 'S.M.S', '2021-03-15', NULL, 6, 'rawat jalan', '16', NULL, NULL, 70, 165, 'Pusing', 'bpjs', 34, 0, NULL, NULL, '35', '90/70', NULL, NULL, NULL),
(173, 1, '202103161434368', 'S.M.S.3', '2021-03-16', NULL, 15, 'rawat jalan', '16', NULL, NULL, 55, 165, 'Sakit Perut', 'umum', 34, 0, NULL, NULL, '38', '110/90', NULL, NULL, NULL),
(175, 1, '202103181037394', 'A888C', '2021-03-18', NULL, 1, 'rawat jalan', '16', NULL, NULL, 50, 170, 'Pusing', 'umum', 34, 0, NULL, NULL, '39', '90/70', NULL, NULL, NULL),
(176, 1, '202103221026384', 'S.M.S.3', '2021-03-22', NULL, 15, 'rawat jalan', '16', NULL, NULL, 50, 165, 'Pusing', 'umum', 34, 0, NULL, NULL, '38', '110/70', NULL, NULL, NULL),
(177, 1, '202103221046243', 'S.M.S', '2021-03-22', NULL, 6, 'poliklinik', '16', NULL, 7, NULL, NULL, '', 'umum', 33, 0, NULL, NULL, 'NULL', 'NULL', NULL, NULL, NULL),
(178, 2, '202103221402456', 'S.M.S.5', '2021-03-22', NULL, 8, 'rawat jalan', '11', NULL, NULL, 50, 165, 'Kejang', 'umum', 34, 0, NULL, NULL, '40', '120/70', NULL, NULL, NULL),
(179, 1, '202103231114106', 'S.M.S.6', '2021-03-23', NULL, 2, 'apotek', NULL, NULL, NULL, 55, 165, 'Mual', 'bpjs', 34, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `asuransi`
--

CREATE TABLE `asuransi` (
  `id` int(11) NOT NULL,
  `nama` text DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `asuransi`
--

INSERT INTO `asuransi` (`id`, `nama`) VALUES
(1, 'AXA');

-- --------------------------------------------------------

--
-- Table structure for table `beli`
--

CREATE TABLE `beli` (
  `no_fak` varchar(15) NOT NULL,
  `tgl_beli` date NOT NULL,
  `total` int(11) NOT NULL,
  `id` int(11) NOT NULL,
  `id_sup` varchar(30) NOT NULL,
  `pembayaran` varchar(15) NOT NULL,
  `ket` varchar(50) NOT NULL,
  `bukti_bayar` varchar(25) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `beli`
--

INSERT INTO `beli` (`no_fak`, `tgl_beli`, `total`, `id`, `id_sup`, `pembayaran`, `ket`, `bukti_bayar`) VALUES
('PT-00001', '2021-01-26', 5300000, 37, '1', 'tunai', 'lunas', ''),
('PT-00002', '2021-01-26', 3550000, 38, '1', 'tunai', 'asffkgfhj', ''),
('PT-00003', '2021-01-27', 520000, 39, '1', 'tunai', 'lunas', ''),
('PT-00004', '2021-02-11', 5950000, 40, '1', 'tunai', 'Lunas', ''),
('PT-00005', '2021-02-23', 5330000, 41, '1', 'tunai', 'LUNAS', '');

-- --------------------------------------------------------

--
-- Table structure for table `beli_k`
--

CREATE TABLE `beli_k` (
  `no_fak` varchar(15) NOT NULL,
  `tgl_beli` date NOT NULL,
  `total` int(11) NOT NULL,
  `id` int(11) NOT NULL,
  `id_sup` varchar(30) NOT NULL,
  `tgl_tempo` date NOT NULL,
  `bukti_bayar` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `beli_k`
--

INSERT INTO `beli_k` (`no_fak`, `tgl_beli`, `total`, `id`, `id_sup`, `tgl_tempo`, `bukti_bayar`) VALUES
('PK-00001', '2021-01-19', 7110000, 10, '1', '2021-01-22', 'bukti.jpg'),
('PK-00002', '2021-01-26', 1500000, 11, '1', '2021-01-26', ''),
('PK-00003', '2021-01-26', 166650, 12, '1', '2021-01-28', ''),
('PK-00004', '2021-02-25', 3650000, 13, '1', '2021-03-11', '');

-- --------------------------------------------------------

--
-- Table structure for table `beli_obat`
--

CREATE TABLE `beli_obat` (
  `id_beli_obat` int(11) NOT NULL,
  `kd_brg` varchar(25) NOT NULL,
  `nama_brg` varchar(25) NOT NULL,
  `jenis_obat` enum('bebas','keras') NOT NULL,
  `satuan_o` int(11) NOT NULL,
  `kategori_o` int(11) NOT NULL,
  `hrg` varchar(50) NOT NULL,
  `hrg_jual` int(11) NOT NULL,
  `batas_cabang` int(11) NOT NULL,
  `batas_minim` int(11) NOT NULL,
  `jumlah` varchar(50) NOT NULL,
  `diskon` varchar(50) NOT NULL,
  `sub_tot` varchar(50) NOT NULL,
  `tgl_beli` datetime NOT NULL,
  `tgl_produksi` date NOT NULL,
  `tgl_expired` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `biaya_administrasi`
--

CREATE TABLE `biaya_administrasi` (
  `id` int(11) NOT NULL,
  `nama` text DEFAULT NULL,
  `biaya` double DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `biaya_administrasi`
--

INSERT INTO `biaya_administrasi` (`id`, `nama`, `biaya`) VALUES
(9, 'Sipa ', 800000),
(2, 'Dia', 2000000),
(3, 'Kamu', 3000000),
(7, 'Siapa', 2500000),
(6, 'Mereka', 2000000),
(8, 'Charlie', 50000000),
(13, 'Ela', 2500000);

-- --------------------------------------------------------

--
-- Table structure for table `broadcast`
--

CREATE TABLE `broadcast` (
  `id_broadcast` int(11) NOT NULL,
  `klaster` varchar(25) NOT NULL,
  `subjek` varchar(50) NOT NULL,
  `isi` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `broadcast_nominal`
--

CREATE TABLE `broadcast_nominal` (
  `id_broadcast` int(11) NOT NULL,
  `nominal` varchar(50) NOT NULL,
  `subjek` varchar(225) NOT NULL,
  `isi` varchar(255) NOT NULL,
  `tgl_kirim` date NOT NULL,
  `pengirim` varchar(50) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `broadcast_pekerjaan`
--

CREATE TABLE `broadcast_pekerjaan` (
  `id_broadcast` int(11) NOT NULL,
  `pekerjaan` varchar(50) NOT NULL,
  `subjek` varchar(25) NOT NULL,
  `isi` varchar(50) NOT NULL,
  `tgl_kirim` date NOT NULL,
  `pengirim` varchar(25) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `broadcast_treatment`
--

CREATE TABLE `broadcast_treatment` (
  `id_broadcast` int(11) NOT NULL,
  `treatment` varchar(50) NOT NULL,
  `subjek` varchar(50) NOT NULL,
  `isi` text NOT NULL,
  `tgl_kirim` date NOT NULL,
  `pengirim` varchar(25) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `checkout`
--

CREATE TABLE `checkout` (
  `id` int(11) NOT NULL,
  `kd_produk` varchar(128) DEFAULT NULL,
  `nama_produk` text DEFAULT NULL,
  `awal` int(11) DEFAULT NULL,
  `akhir` int(11) DEFAULT NULL,
  `tgl` date DEFAULT NULL,
  `id_kk` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `daftar_klinik`
--

CREATE TABLE `daftar_klinik` (
  `id_kk` int(11) NOT NULL,
  `nama_klinik` varchar(50) NOT NULL,
  `alamat` text NOT NULL,
  `jenis` enum('Pusat','Cabang') NOT NULL,
  `penanggung_jawab` varchar(50) NOT NULL,
  `telepon` varchar(20) NOT NULL,
  `printer_kasir` varchar(100) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `daftar_klinik`
--

INSERT INTO `daftar_klinik` (`id_kk`, `nama_klinik`, `alamat`, `jenis`, `penanggung_jawab`, `telepon`, `printer_kasir`) VALUES
(1, 'Klinik CGS', 'Jl. Tatabumi Selatan No.109 Kel. Banyuraden, Kec. Gamping, Sleman - Yogyakarta', 'Pusat', '-', '-', 'epson');

-- --------------------------------------------------------

--
-- Table structure for table `data_kas`
--

CREATE TABLE `data_kas` (
  `id_kas` int(11) NOT NULL,
  `tanggal` datetime NOT NULL,
  `nama_kas` varchar(50) NOT NULL,
  `jumlah` varchar(50) NOT NULL,
  `ket` varchar(50) NOT NULL,
  `kategori` enum('pengeluaran','pemasukan') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `data_kas`
--

INSERT INTO `data_kas` (`id_kas`, `tanggal`, `nama_kas`, `jumlah`, `ket`, `kategori`) VALUES
(1, '2021-02-16 15:30:30', 'Kas Minggu I', '100000', 'Kas Karyawan', 'pemasukan'),
(2, '2021-02-16 15:34:09', 'Bensin', '50000', 'Perjalanan Dinas', 'pengeluaran'),
(3, '2021-02-16 15:51:22', 'Dana Hibah', '30000', 'Hamba Allah', 'pemasukan'),
(4, '2021-02-17 11:54:53', 'Kas Harian', '150000', 'Kas Karyawan', 'pemasukan'),
(5, '2021-02-17 11:56:44', 'Cemilan', '30000', 'Untuk karyawan', 'pengeluaran');

-- --------------------------------------------------------

--
-- Table structure for table `data_satuan`
--

CREATE TABLE `data_satuan` (
  `id_s` int(11) NOT NULL,
  `satuan` varchar(20) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `data_satuan`
--

INSERT INTO `data_satuan` (`id_s`, `satuan`) VALUES
(1, 'Tablet'),
(2, 'Pil'),
(3, 'Kapsul'),
(4, 'Kaplet'),
(5, 'Pulvis'),
(6, 'Larutan'),
(7, 'Salep'),
(8, 'Lain-lain');

-- --------------------------------------------------------

--
-- Table structure for table `dr_pengganti`
--

CREATE TABLE `dr_pengganti` (
  `id` int(11) NOT NULL,
  `id_dr` int(11) DEFAULT NULL,
  `tgl` date DEFAULT NULL,
  `hari` int(11) DEFAULT NULL,
  `jam` time DEFAULT NULL,
  `id_poli` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `dr_pengganti`
--

INSERT INTO `dr_pengganti` (`id`, `id_dr`, `tgl`, `hari`, `jam`, `id_poli`) VALUES
(2, 10, '2020-03-09', 1, '00:00:12', 7),
(3, 9, '2020-03-09', 1, '13:00:00', 6),
(6, 10, '2020-03-02', 1, '00:00:19', 2),
(8, 11, '2020-12-07', 1, '13:30:00', 2),
(9, 9, '2020-12-08', 2, '20:00:00', 8);

-- --------------------------------------------------------

--
-- Table structure for table `dr_praktek`
--

CREATE TABLE `dr_praktek` (
  `id_drpraktek` int(11) NOT NULL,
  `id_poli` int(11) DEFAULT NULL,
  `id_dr` int(11) DEFAULT NULL,
  `hari` int(11) DEFAULT NULL,
  `jam` time DEFAULT NULL,
  `expired` date DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `dr_praktek`
--

INSERT INTO `dr_praktek` (`id_drpraktek`, `id_poli`, `id_dr`, `hari`, `jam`, `expired`) VALUES
(1, 2, 10, 4, '18:00:00', '2020-03-24'),
(2, 1, 9, 1, '15:00:00', '2020-03-24'),
(3, 6, 11, 5, '16:00:00', '2020-03-24'),
(4, 7, 12, 1, '06:00:00', '2020-03-24'),
(5, 7, 9, 1, '09:00:00', '2020-04-24'),
(6, 2, 9, 1, '14:00:00', '2020-04-24'),
(7, 2, 9, 2, '09:00:00', '2020-04-24'),
(8, 7, 9, 2, '12:00:00', '2020-04-24'),
(15, 2, 10, 3, '12:00:00', '2020-04-24'),
(14, 1, 9, 3, '12:00:00', '2020-04-24'),
(17, 6, 12, 3, '12:00:00', '2020-04-24'),
(16, 5, 11, 3, '12:00:00', '2020-04-24'),
(22, 2, 9, 4, '12:00:00', '2020-05-24'),
(23, 2, 12, 5, '12:00:00', '2020-05-24'),
(24, 2, 9, 1, '12:00:00', '2020-05-24'),
(25, 2, 9, 2, '12:00:00', '2020-05-24'),
(28, 5, 11, 2, '12:00:00', '2020-05-24'),
(29, 11, 9, 3, '12:00:00', '2020-05-24'),
(30, 8, 11, 3, '12:00:00', '2020-05-24'),
(31, 7, 9, 6, '12:00:00', '2020-05-24'),
(33, 7, 9, 2, '16:00:00', '2020-06-24'),
(34, 6, 11, 2, '17:00:00', '2020-06-24'),
(35, 7, 9, 3, '15:00:00', '2020-06-24'),
(36, 8, 11, 3, '15:00:00', '2020-06-24'),
(49, 7, 9, 4, '13:00:00', '2020-07-24'),
(39, 7, 9, 4, '12:00:00', '2020-06-24'),
(40, 2, 9, 4, '16:00:00', '2020-06-24'),
(41, 6, 9, 5, '14:00:00', '2020-06-24'),
(42, 7, 9, 6, '14:00:00', '2020-06-24'),
(43, 7, 9, 1, '07:00:00', '2020-06-24'),
(44, 7, 9, 4, '07:00:00', '2020-06-24'),
(45, 7, 9, 6, '05:00:00', '2020-06-24'),
(46, 7, 9, 3, '05:00:00', '2020-06-24'),
(47, 7, 9, 2, '13:00:00', '2020-06-24'),
(48, 7, 9, 3, '10:00:00', '2020-06-24'),
(50, 7, 9, 6, '14:00:00', '2020-08-24'),
(51, 1, 9, 2, '14:00:00', '2020-08-24'),
(52, 1, 9, 1, '07:00:00', '2020-09-24'),
(53, 2, 10, 2, '12:00:00', '2020-09-24'),
(56, 1, 11, 1, '14:00:00', '2020-09-24'),
(55, 5, 12, 1, '15:00:00', '2020-09-24'),
(60, 2, 11, 5, '20:00:00', '2020-12-24'),
(61, 2, 12, 4, '20:00:00', '2020-12-24'),
(63, 7, 11, 1, '08:30:00', '2021-02-24'),
(64, 7, 11, 5, '11:00:00', '2021-03-24'),
(65, 1, 9, 2, '10:00:00', '2021-03-24'),
(66, 7, 11, 3, '16:00:00', '2021-03-24'),
(67, 7, 16, 5, '15:00:00', '2021-03-24'),
(68, 7, 16, 1, '09:00:00', '2021-03-24');

-- --------------------------------------------------------

--
-- Table structure for table `dr_visit`
--

CREATE TABLE `dr_visit` (
  `id` int(11) NOT NULL,
  `id_pasien` text DEFAULT NULL,
  `no_faktur` text DEFAULT NULL,
  `id_dr` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `dr_visit`
--

INSERT INTO `dr_visit` (`id`, `id_pasien`, `no_faktur`, `id_dr`) VALUES
(1, 'S.M.S', '202003091351427', 11),
(2, 'S.M.S', '202003091351427', 9),
(3, 'S.M.S.1', '202004301221125', 12),
(4, 'S.M.S.2', '202005051205062', 11),
(5, 'S.M.S.3', '202006241028013', 11),
(6, 'S.M.S.3', '202006241127291', 11),
(7, 'S.M.S.6', '202102161055594', 16);

-- --------------------------------------------------------

--
-- Table structure for table `history_ap`
--

CREATE TABLE `history_ap` (
  `id` int(11) NOT NULL,
  `id_kk` int(11) NOT NULL,
  `no_urut` int(11) NOT NULL,
  `id_pasien` varchar(50) NOT NULL,
  `tanggal_pendaftaran` date NOT NULL,
  `status` varchar(50) NOT NULL,
  `pembayaran` varchar(50) NOT NULL DEFAULT 'Belum Lunas',
  `no_faktur` varchar(20) DEFAULT NULL,
  `kunjungan_ke` int(11) NOT NULL,
  `konsultasi` varchar(10) NOT NULL,
  `jenis_pasien` text DEFAULT NULL,
  `jenis_layanan` text DEFAULT NULL,
  `asuransi` int(11) DEFAULT NULL,
  `poliklinik` int(11) DEFAULT NULL,
  `bb` int(11) DEFAULT NULL,
  `tb` int(11) DEFAULT NULL,
  `keluhan` text DEFAULT NULL,
  `suhu` text DEFAULT NULL,
  `tensi` text DEFAULT NULL,
  `respirasi` text DEFAULT NULL,
  `nadi` text DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `history_ap`
--

INSERT INTO `history_ap` (`id`, `id_kk`, `no_urut`, `id_pasien`, `tanggal_pendaftaran`, `status`, `pembayaran`, `no_faktur`, `kunjungan_ke`, `konsultasi`, `jenis_pasien`, `jenis_layanan`, `asuransi`, `poliklinik`, `bb`, `tb`, `keluhan`, `suhu`, `tensi`, `respirasi`, `nadi`) VALUES
(1, 0, 1, 'S.M.S.3', '2020-03-09', 'Selesai', 'Lunas', '202003091131282', 1, 'Yes', '', 'igd', 1, NULL, NULL, NULL, '', 'NULL', 'NULL', NULL, NULL),
(2, 0, 2, 'S.M.S 5', '2020-03-09', 'Selesai', 'Lunas', '202003091330462', 1, 'Yes', 'umum', 'poliklinik', NULL, 1, NULL, NULL, '', 'NULL', 'NULL', NULL, NULL),
(3, 0, 2, 'S.M.S.2', '2020-03-09', 'Selesai', 'Lunas', '202003091354513', 1, 'Yes', 'corp2', 'poliklinik', NULL, 6, NULL, NULL, '', 'NULL', 'NULL', NULL, NULL),
(4, 0, 1, 'S.M.S.2', '2020-03-09', 'Selesai', 'Lunas', '202003091354068', 1, 'Yes', 'umum', 'igd', NULL, NULL, NULL, NULL, '', 'NULL', 'NULL', NULL, NULL),
(7, 0, 1, 'S.M.S.2', '2020-04-14', 'Selesai', 'Lunas', '202004140921151', 3, 'Yes', 'umum', 'poliklinik', NULL, 2, 45, 165, 'Kepala terasa pusing', '35', '12', NULL, NULL),
(9, 0, 1, 'S.M.S', '2020-04-14', 'Selesai', 'Lunas', '202004141234179', 1, 'Yes', 'umum', 'poliklinik', NULL, 7, 45, 170, 'sada', '23', '12', NULL, NULL),
(10, 0, 1, 'S.M.S.3', '2020-04-14', 'Selesai', 'Belum Lunas', '202004141344389', 3, 'Yes', 'bpjs', 'poliklinik', NULL, 7, 45, 165, 'wadada', '23', '12', NULL, NULL),
(11, 0, 1, 'S.M.S.2', '2020-04-14', 'Selesai', 'Belum Lunas', '202004141356563', 4, 'Yes', 'umum', 'poliklinik', NULL, 7, 45, 165, 'adadg', '23', '12', NULL, NULL),
(12, 0, 3, 'S.M.S.3', '2020-04-15', 'Selesai', 'Lunas', '202004151404049', 4, 'Yes', 'corp1', 'poliklinik', NULL, 5, 45, 165, 'bssb', '23', '12', NULL, NULL),
(13, 0, 5, 'S.M.S.2', '2020-04-15', 'Selesai', 'Lunas', '202004151427055', 5, 'Yes', 'umum', 'poliklinik', NULL, 5, 45, 165, 'hkhg', '23', '12', NULL, NULL),
(14, 0, 1, 'S.M.S.5', '2020-05-07', 'Selesai', 'Lunas', '202005071357156', 1, 'Yes', 'lain', 'poliklinik', NULL, 2, NULL, NULL, '', 'NULL', 'NULL', NULL, NULL),
(15, 0, 1, 'S.M.S.5', '2020-05-07', 'Selesai', 'Lunas', '202005071402057', 2, 'Yes', '', 'poliklinik', NULL, 2, NULL, NULL, '', 'NULL', 'NULL', NULL, NULL),
(16, 0, 1, 'S.M.S.5', '2020-05-07', 'Selesai', 'Lunas', '202005071404171', 3, 'Yes', '', 'poliklinik', NULL, 2, NULL, NULL, '', 'NULL', 'NULL', NULL, NULL),
(17, 0, 1, 'S.M.S', '2020-05-16', 'Selesai', 'Lunas', '202005161341409', 2, 'Yes', 'jkk', 'poliklinik', 1, 7, 45, 165, 'Sakit', '23', '23', NULL, NULL),
(18, 0, 4, 'S.M.S 4', '2020-05-26', 'Selesai', 'Lunas', '202005261745566', 1, 'Yes', 'bpjs', 'poliklinik', NULL, 6, 23, 123, '124as ', '124', '244', NULL, NULL),
(19, 0, 1, 'S.M.S.3', '2020-05-26', 'Selesai', 'Lunas', '202005261623254', 5, 'Yes', 'bpjs', 'poliklinik', NULL, 7, 45, 165, 'adad', '23', '12', NULL, NULL),
(20, 0, 2, 'S.M.S', '2020-05-26', 'Selesai', 'Lunas', '202005261623363', 3, 'Yes', 'inhealt', 'poliklinik', NULL, 7, 67, 170, 'rrees', '45', '13', NULL, NULL),
(21, 0, 3, 'S.M.S.5', '2020-05-26', 'Selesai', 'Lunas', '202005261623531', 4, 'Yes', 'corp1', 'poliklinik', NULL, 7, 80, 178, 'fafa', '44', '11', NULL, NULL),
(22, 0, 1, 'S.M.S 4', '2020-05-28', 'Selesai', 'Lunas', '202005280000006', 0, 'Yes', 'umum', 'poliklinik', NULL, 7, 45, 165, 'asd', '66', '12', NULL, NULL),
(23, 0, 1, 'S.M.S', '2020-05-27', 'Selesai', 'Lunas', '202005271458217', 4, 'Yes', 'lain', 'poliklinik', NULL, 7, NULL, NULL, '', 'NULL', 'NULL', NULL, NULL),
(24, 0, 1, 'S.M.S', '2020-05-28', 'Selesai', 'Lunas', '202005281439593', 5, 'Yes', 'lain', 'poliklinik', NULL, 7, NULL, NULL, '', 'NULL', 'NULL', NULL, NULL),
(25, 0, 1, 'S.M.S.3', '2020-05-28', 'Selesai', 'Lunas', '202005281629025', 6, 'Yes', 'inhealt', 'poliklinik', NULL, 2, 45, 165, 'assdaw', '133', '12', NULL, NULL),
(26, 0, 1, 'S.M.S.3', '2020-05-29', 'Selesai', 'Lunas', '202005291458512', 7, 'Yes', 'lain', 'poliklinik', 1, 6, NULL, NULL, '', 'NULL', 'NULL', NULL, NULL),
(27, 0, 1, 'S.M.S.3', '2020-05-30', 'Selesai', 'Lunas', '202005301434279', 8, 'Yes', 'corp1', 'poliklinik', NULL, 7, NULL, NULL, '', 'NULL', 'NULL', NULL, NULL),
(28, 0, 1, 'S.M.S.3', '2020-05-30', 'Selesai', 'Lunas', '202005301536426', 9, 'Yes', 'lain', 'poliklinik', NULL, 7, NULL, NULL, '', 'NULL', 'NULL', NULL, NULL),
(29, 0, 1, 'S.M.S.3', '2020-06-01', 'Selesai', 'Lunas', '202006010741122', 10, 'Yes', 'corp1', 'poliklinik', NULL, 7, NULL, NULL, '', 'NULL', 'NULL', NULL, NULL),
(30, 0, 1, 'S.M.S.3', '2020-06-04', 'Selesai', 'Lunas', '202006040754512', 11, 'Yes', 'lain', 'poliklinik', NULL, 7, NULL, NULL, '', 'NULL', 'NULL', NULL, NULL),
(31, 0, 2, 'S.M.S.6', '2020-06-04', 'Selesai', 'Lunas', '202006040821599', 1, 'Yes', 'lain', 'poliklinik', NULL, 7, NULL, NULL, '', 'NULL', 'NULL', NULL, NULL),
(32, 0, 1, 'S.M.S.3', '2020-06-09', 'Selesai', 'Lunas', '202006091544577', 11, 'Yes', 'umum', 'lab', 0, 7, 45, 165, 'sdad', '23', '12', NULL, NULL),
(33, 0, 1, 'S.M.S.3', '2020-06-09', 'Selesai', 'Lunas', '202006091544577', 12, 'Yes', 'umum', 'poliklinik', NULL, 7, 45, 165, 'sdad', '23', '12', NULL, NULL),
(34, 0, 1, 'S.M.S.3', '2020-06-09', 'Selesai', 'Lunas', '202006091553129', 13, 'Yes', 'umum', 'poliklinik', NULL, 7, 45, 165, 'adad', '44', '12', NULL, NULL),
(36, 0, 1, 'S.M.S.3', '2020-06-09', 'Selesai', 'Lunas', '202006091601393', 14, 'Yes', 'lain', 'poliklinik', NULL, 7, NULL, NULL, '', 'NULL', 'NULL', NULL, NULL),
(37, 0, 1, 'S.M.S.5', '2020-06-23', 'Selesai', 'Lunas', '202006231642159', 5, 'Yes', 'lain', 'poliklinik', 1, 7, 45, 165, 'Sakit', '66', '23', NULL, NULL),
(38, 0, 1, 'S.M.S.5', '2020-06-23', 'Selesai', 'Lunas', '202006231642159', 4, 'Yes', 'lain', 'lab', 1, 7, 45, 165, 'Sakit', '66', '23', NULL, NULL),
(40, 0, 1, 'S.M.S.5', '2020-06-23', 'Selesai', 'Belum Lunas', '202006231651563', 6, 'Yes', 'lain', 'poliklinik', NULL, 7, NULL, NULL, '', 'NULL', 'NULL', NULL, NULL),
(41, 0, 1, 'S.M.S.5', '2020-08-18', 'Selesai', 'Lunas', '202008181431504', 7, 'Yes', 'umum', 'poliklinik', 1, 1, NULL, NULL, '', 'NULL', 'NULL', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `history_beli_k`
--

CREATE TABLE `history_beli_k` (
  `id` int(11) NOT NULL,
  `no_fak` varchar(50) NOT NULL,
  `tgl_beli` date NOT NULL,
  `kd_brg` varchar(25) NOT NULL,
  `nama_brg` varchar(50) NOT NULL,
  `jenis_obat` enum('bebas','keras') DEFAULT NULL,
  `satuan` varchar(50) NOT NULL,
  `kategori` varchar(50) NOT NULL,
  `hrg` varchar(50) NOT NULL,
  `hrg_jual` int(11) NOT NULL,
  `batas_cabang` int(11) NOT NULL,
  `batas_minim` int(11) NOT NULL,
  `jumlah` varchar(50) NOT NULL,
  `diskon` varchar(50) NOT NULL,
  `sub_tot` varchar(50) NOT NULL,
  `tgl_produksi` date DEFAULT NULL,
  `tgl_expired` date DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `history_beli_k`
--

INSERT INTO `history_beli_k` (`id`, `no_fak`, `tgl_beli`, `kd_brg`, `nama_brg`, `jenis_obat`, `satuan`, `kategori`, `hrg`, `hrg_jual`, `batas_cabang`, `batas_minim`, `jumlah`, `diskon`, `sub_tot`, `tgl_produksi`, `tgl_expired`) VALUES
(8, 'PK-00001', '2021-01-19', '279603', 'ALBOTHYL ( POLICRESULEN) 10 ML', NULL, '6', '21', '53000', 0, 100, 10, '50', '0', '2650000', '2021-01-01', '2023-01-01'),
(9, 'PK-00001', '2021-01-19', '947114', 'ALBOTHYL ( POLICRESULEN) 5 ML', NULL, '6', '21', '50000', 0, 100, 10, '50', '10', '2250000', '2021-01-21', '2023-01-21'),
(10, 'PK-00001', '2021-01-19', '661713', 'ALKOHOL 70 %', NULL, '6', '16', '26000', 0, 100, 10, '100', '15', '2210000', '2021-01-21', '2023-01-21'),
(11, 'PK-00002', '2021-01-26', '678528', 'BETADIN OBAT KUMUR', NULL, '8', '19', '15000', 0, 100, 10, '100', '0', '1500000', '2020-10-25', '2021-12-31'),
(12, 'PK-00003', '2021-01-26', '581543', 'ALKOHOL KECIL', NULL, '6', '15', '5555', 0, 100, 10, '30', '0', '166650', '2021-01-21', '2023-01-21'),
(13, 'PK-00004', '2021-02-25', '279603', 'ALBOTHYL ( POLICRESULEN) 10 ML', NULL, '6', '21', '36500', 0, 100, 10, '100', '0', '3650000', '2021-01-01', '2023-01-01');

-- --------------------------------------------------------

--
-- Table structure for table `history_beli_obat`
--

CREATE TABLE `history_beli_obat` (
  `id` int(11) NOT NULL,
  `no_tran` varchar(50) NOT NULL,
  `tgl_beli` datetime NOT NULL,
  `kd_brg` varchar(50) NOT NULL,
  `nama_brg` varchar(50) NOT NULL,
  `jenis_obat` enum('bebas','keras') NOT NULL,
  `satuan` varchar(50) NOT NULL,
  `kategori` varchar(50) NOT NULL,
  `hrg` varchar(50) NOT NULL,
  `hrg_jual` int(11) NOT NULL,
  `batas_cabang` int(11) NOT NULL,
  `batas_minim` int(11) NOT NULL,
  `jumlah` varchar(50) NOT NULL,
  `diskon` varchar(50) NOT NULL,
  `sub_tot` varchar(50) NOT NULL,
  `tgl_produksi` date NOT NULL,
  `tgl_expired` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `history_beli_obat`
--

INSERT INTO `history_beli_obat` (`id`, `no_tran`, `tgl_beli`, `kd_brg`, `nama_brg`, `jenis_obat`, `satuan`, `kategori`, `hrg`, `hrg_jual`, `batas_cabang`, `batas_minim`, `jumlah`, `diskon`, `sub_tot`, `tgl_produksi`, `tgl_expired`) VALUES
(11, 'TRS-00001', '2021-01-13 20:41:13', '150194', 'Hawedion', 'bebas', '7', '6', '40000', 45000, 100, 10, '1', '0', '40000', '2020-11-02', '2022-11-02'),
(12, 'TRS-00002', '2021-01-13 20:44:23', '150194', 'Hawedion', 'bebas', '7', '6', '40000', 45000, 100, 10, '1', '0', '40000', '2020-11-02', '2022-11-02'),
(13, 'TRS-00003', '2021-01-13 20:51:10', '150194', 'Hawedion', 'bebas', '7', '6', '40000', 45000, 100, 10, '1', '0', '40000', '2020-11-02', '2022-11-02'),
(14, 'TRS-00004', '2021-01-13 21:00:44', '150194', 'Hawedion', 'bebas', '7', '6', '40000', 45000, 100, 10, '1', '0', '40000', '2020-11-02', '2022-11-02'),
(15, 'TRS-00005', '2021-01-13 21:02:41', '150194', 'Hawedion', 'bebas', '7', '6', '40000', 45000, 100, 10, '2', '0', '80000', '2020-11-02', '2022-11-02'),
(16, 'TRS-00006', '2021-01-14 11:41:08', '150194', 'Hawedion', 'bebas', '7', '6', '40000', 45000, 100, 10, '10', '0', '400000', '2020-11-02', '2022-11-02'),
(17, 'TRS-00007', '2021-01-19 14:23:14', '954468', 'BYE BYE FEVER ANAK', 'bebas', '8', '20', '6000', 10000, 100, 10, '4', '0', '24000', '2020-12-06', '2022-05-10'),
(18, 'TRS-00007', '2021-01-19 14:23:14', '226227', 'BYE BYE FEVER BAYI', 'bebas', '8', '20', '5000', 8000, 100, 10, '10', '5', '47500', '2020-10-04', '2022-01-14'),
(20, 'TRS-00008', '2021-01-19 16:11:55', '180024', 'BETADINE 5 LITER', 'bebas', '6', '19', '500000', 866500, 100, 10, '10', '0', '5000000', '2021-01-04', '2021-08-21'),
(21, 'TRS-00009', '2021-01-25 23:18:49', '581543', 'ALKOHOL KECIL', 'keras', '6', '15', '5555', 7875, 100, 10, '1', '0', '5555', '2021-01-21', '2023-01-21'),
(22, 'TRS-00010', '2021-01-25 23:30:01', '186097', 'ANTIMO DEWASA', 'bebas', '2', '9', '3750', 4620, 100, 10, '2', '0', '7500', '2020-11-30', '2021-05-29'),
(25, 'TRS-00011', '2021-01-27 14:27:21', '954468', 'BYE BYE FEVER ANAK', 'bebas', '8', '20', '6000', 10000, 100, 10, '1', '0', '6000', '2020-12-06', '2022-05-10'),
(26, 'TRS-00012', '2021-01-27 14:30:42', '954468', 'BYE BYE FEVER ANAK', 'bebas', '8', '20', '6000', 10000, 100, 10, '1', '0', '6000', '2020-12-06', '2022-05-10'),
(27, 'TRS-00013', '2021-01-27 14:38:03', '581543', 'ALKOHOL KECIL', 'keras', '6', '15', '5555', 7875, 100, 10, '1', '0', '5555', '2021-01-21', '2023-01-21'),
(29, 'TRS-00014', '2021-01-28 12:33:07', '661713', 'ALKOHOL 70 %', 'bebas', '6', '16', '26000', 46200, 100, 10, '1', '0', '26000', '2021-01-21', '2023-01-21'),
(30, 'TRS-00015', '2021-01-29 13:00:20', '661713', 'ALKOHOL 70 %', 'bebas', '6', '16', '26000', 46200, 100, 10, '1', '0', '26000', '2021-01-21', '2023-01-21'),
(31, 'TRS-00015', '2021-01-29 13:00:20', '581543', 'ALKOHOL KECIL', 'keras', '6', '15', '5555', 7875, 100, 10, '2', '0', '11110', '2021-01-21', '2023-01-21'),
(33, 'TRS-00016', '2021-01-29 16:31:16', '661713', 'ALKOHOL 70 %', 'bebas', '6', '16', '26000', 46200, 100, 10, '1', '0', '26000', '2021-01-21', '2023-01-21'),
(34, 'TRS-00017', '2021-01-29 16:40:56', '661713', 'ALKOHOL 70 %', 'bebas', '6', '16', '26000', 46200, 100, 10, '1', '0', '26000', '2021-01-21', '2023-01-21'),
(35, 'TRS-00018', '2021-02-01 11:31:16', '954468', 'BYE BYE FEVER ANAK', 'bebas', '8', '20', '6000', 10000, 100, 10, '3', '0', '18000', '2020-12-06', '2022-05-10'),
(36, 'TRS-00018', '2021-02-01 11:31:16', '226227', 'BYE BYE FEVER BAYI', 'bebas', '8', '20', '5000', 8000, 100, 10, '3', '0', '15000', '2020-10-04', '2022-01-14'),
(37, 'TRS-00018', '2021-02-01 11:31:16', '279603', 'ALBOTHYL ( POLICRESULEN) ', 'bebas', '6', '15', '53000', 36750, 100, 10, '2', '0', '106000', '2021-01-01', '2023-01-01'),
(38, 'TRS-00019', '2021-02-08 14:47:08', '636628', 'AB VASK  10 MG', 'bebas', '1', '9', '88800', 168000, 100, 10, '4', '0', '355200', '2021-01-12', '2023-01-12'),
(39, 'TRS-00019', '2021-02-08 14:47:08', '954468', 'BYE BYE FEVER ANAK', 'bebas', '8', '20', '6000', 10000, 100, 10, '2', '0', '12000', '2020-12-06', '2022-05-10'),
(40, 'TRS-00020', '2021-02-11 12:00:52', '180024', 'BETADINE 5 LITER', 'bebas', '6', '19', '500000', 866500, 100, 10, '1', '0', '500000', '2021-01-04', '2021-08-21'),
(41, 'TRS-00021', '2021-02-16 14:45:09', '186097', 'ANTIMO DEWASA', 'bebas', '2', '9', '3750', 4620, 100, 10, '2', '0', '7500', '2020-11-30', '2021-05-29'),
(42, 'TRS-00022', '2021-02-17 12:07:01', '186097', 'ANTIMO DEWASA', 'bebas', '2', '9', '3750', 4620, 100, 10, '2', '0', '7500', '2020-11-30', '2021-05-29'),
(43, 'TRS-00022', '2021-02-17 12:07:01', '643464', 'ANTANGIN JRG', 'bebas', '6', '9', '2000', 2500, 100, 10, '1', '0', '2000', '2020-12-27', '2021-04-29'),
(44, 'TRS-00023', '2021-02-22 11:43:29', '186097', 'ANTIMO DEWASA', 'bebas', '2', '9', '3750', 4620, 100, 10, '2', '0', '7500', '2020-11-30', '2021-05-29'),
(45, 'TRS-00023', '2021-02-22 11:43:29', '954468', 'BYE BYE FEVER ANAK', 'bebas', '8', '20', '6000', 10000, 100, 10, '6', '0', '36000', '2020-12-06', '2022-05-10'),
(47, 'TRS-00024', '2021-02-22 11:45:19', '180024', 'BETADINE 5 LITER', 'bebas', '6', '19', '500000', 866500, 100, 10, '5', '0', '2500000', '2021-01-04', '2021-08-21'),
(48, 'TRS-00025', '2021-02-22 11:54:16', '180024', 'BETADINE 5 LITER', 'bebas', '6', '19', '500000', 866500, 100, 10, '2', '0', '1000000', '2021-01-04', '2021-08-21'),
(49, 'TRS-00026', '2021-02-22 12:51:44', '180024', 'BETADINE 5 LITER', 'bebas', '6', '19', '500000', 866500, 100, 10, '1', '0', '500000', '2021-01-04', '2021-08-21'),
(50, 'TRS-00027', '2021-02-22 12:53:05', '180024', 'BETADINE 5 LITER', 'bebas', '6', '19', '500000', 866500, 100, 10, '2', '0', '1000000', '2021-01-04', '2021-08-21'),
(51, 'TRS-00028', '2021-02-23 11:53:18', '180024', 'BETADINE 5 LITER', 'bebas', '6', '19', '500000', 866500, 100, 10, '2', '0', '1000000', '2021-01-04', '2021-08-21'),
(52, 'TRS-00029', '2021-02-23 11:54:37', '180024', 'BETADINE 5 LITER', 'bebas', '6', '19', '500000', 866500, 100, 10, '1', '0', '500000', '2021-01-04', '2021-08-21'),
(53, 'TRS-00030', '2021-02-23 12:03:17', '180024', 'BETADINE 5 LITER', 'bebas', '6', '19', '500000', 866500, 100, 10, '2', '0', '1000000', '2021-01-04', '2021-08-21'),
(54, 'TRS-00031', '2021-02-23 12:18:40', '180024', 'BETADINE 5 LITER', 'bebas', '6', '19', '500000', 866500, 100, 10, '1', '0', '500000', '2021-01-04', '2021-08-21'),
(55, 'TRS-00032', '2021-02-23 12:20:23', '180024', 'BETADINE 5 LITER', 'bebas', '6', '19', '500000', 866500, 100, 10, '1', '0', '500000', '2021-01-04', '2021-08-21'),
(56, 'TRS-00033', '2021-02-23 00:00:00', '954468', 'BYE BYE FEVER ANAK', 'bebas', '8', '20', '6000', 10000, 100, 10, '2', '0', '12000', '2020-12-06', '2022-05-10'),
(57, 'TRS-00034', '2021-02-24 00:00:00', '180024', 'BETADINE 5 LITER', 'bebas', '6', '19', '500000', 866500, 100, 10, '1', '0', '500000', '2021-01-04', '2021-08-21'),
(58, 'TRS-00035', '2021-02-23 00:00:00', '954468', 'BYE BYE FEVER ANAK', 'bebas', '8', '20', '6000', 10000, 100, 10, '3', '0', '18000', '2020-12-06', '2022-05-10'),
(59, 'TRS-00036', '2021-02-24 00:00:00', '954468', 'BYE BYE FEVER ANAK', 'bebas', '8', '20', '6000', 10000, 100, 10, '5', '0', '30000', '2020-12-06', '2022-05-10'),
(60, 'TRS-00037', '2021-02-23 00:00:00', '226227', 'BYE BYE FEVER BAYI', 'bebas', '8', '20', '5000', 8000, 100, 10, '4', '5', '19000', '2020-10-04', '2022-01-14'),
(61, 'TRS-00037', '2021-02-23 00:00:00', '954468', 'BYE BYE FEVER ANAK', 'bebas', '8', '20', '6000', 10000, 100, 10, '5', '5', '28500', '2020-12-06', '2022-05-10');

-- --------------------------------------------------------

--
-- Table structure for table `history_beli_t`
--

CREATE TABLE `history_beli_t` (
  `id` int(11) NOT NULL,
  `no_fak` varchar(50) NOT NULL,
  `tgl_beli` date NOT NULL,
  `kd_brg` varchar(50) NOT NULL,
  `nama_brg` varchar(50) NOT NULL,
  `jenis_obat` enum('bebas','keras') DEFAULT NULL,
  `satuan` varchar(50) NOT NULL,
  `kategori` varchar(50) NOT NULL,
  `hrg` varchar(50) NOT NULL,
  `hrg_jual` int(11) NOT NULL,
  `batas_cabang` int(225) NOT NULL,
  `batas_minim` int(225) NOT NULL,
  `jumlah` varchar(50) NOT NULL,
  `diskon` varchar(50) NOT NULL,
  `sub_tot` varchar(50) NOT NULL,
  `tgl_produksi` date DEFAULT NULL,
  `tgl_expired` date DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `history_beli_t`
--

INSERT INTO `history_beli_t` (`id`, `no_fak`, `tgl_beli`, `kd_brg`, `nama_brg`, `jenis_obat`, `satuan`, `kategori`, `hrg`, `hrg_jual`, `batas_cabang`, `batas_minim`, `jumlah`, `diskon`, `sub_tot`, `tgl_produksi`, `tgl_expired`) VALUES
(57, 'PT-00001', '2021-01-26', '279603', 'ALBOTHYL ( POLICRESULEN) 10 ML', NULL, '6', '21', '53000', 36750, 100, 10, '100', '0', '5300000', '2021-01-01', '2023-01-01'),
(58, 'PT-00002', '2021-01-26', '151886', 'CAMAAG SYRUP 100 ML / ANTASIDA', NULL, '6', '9', '35500', 40425, 100, 10, '100', '0', '3550000', '2020-12-06', '2021-06-06'),
(59, 'PT-00003', '2021-01-27', '661713', 'ALKOHOL 70 %', NULL, '6', '16', '26000', 46200, 100, 10, '20', '0', '520000', '2021-01-21', '2023-01-21'),
(60, 'PT-00004', '2021-02-11', '279603', 'ALBOTHYL ( POLICRESULEN) 10 ML', NULL, '6', '21', '53000', 36750, 100, 10, '50', '0', '2650000', '2021-01-01', '2023-01-01'),
(61, 'PT-00004', '2021-02-11', '947114', 'ALBOTHYL ( POLICRESULEN) 5 ML', NULL, '6', '21', '50000', 34650, 100, 10, '50', '0', '2500000', '2021-01-21', '2023-01-21'),
(62, 'PT-00004', '2021-02-11', '592225', 'BEDAK SALICYL MENTHOL 100 MG', NULL, '5', '18', '8000', 14700, 100, 10, '100', '0', '800000', '2020-11-29', '2021-12-31'),
(63, 'PT-00005', '2021-02-23', '592225', 'BEDAK SALICYL MENTHOL 100 MG', NULL, '5', '18', '8000', 14700, 100, 10, '50', '5', '380000', '2020-11-29', '2021-12-31'),
(64, 'PT-00005', '2021-02-23', '086152', 'ANFLAT TAB', NULL, '1', '9', '55000', 62000, 100, 10, '100', '10', '4950000', '2020-11-30', '2021-12-02');

-- --------------------------------------------------------

--
-- Table structure for table `history_kasir`
--

CREATE TABLE `history_kasir` (
  `id` int(11) NOT NULL,
  `no_faktur` varchar(100) NOT NULL,
  `id_pasien` varchar(50) DEFAULT NULL,
  `id_dr` int(11) DEFAULT NULL,
  `id_kasir` int(11) DEFAULT NULL,
  `tanggal` date DEFAULT NULL,
  `no_urut` int(11) DEFAULT NULL,
  `nama` varchar(50) NOT NULL,
  `kode` varchar(50) DEFAULT NULL,
  `harga_beli` varchar(50) DEFAULT NULL,
  `harga` varchar(50) NOT NULL,
  `jumlah` int(11) NOT NULL,
  `diskon` int(11) DEFAULT NULL,
  `sub_total` varchar(50) DEFAULT NULL,
  `id_kk` int(11) NOT NULL,
  `jenis` varchar(50) NOT NULL,
  `status` varchar(50) DEFAULT NULL,
  `ket` varchar(50) DEFAULT NULL,
  `penginput` varchar(50) DEFAULT NULL,
  `kategori` int(11) NOT NULL,
  `tgl_visit` date DEFAULT NULL,
  `half` text DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `history_kasir`
--

INSERT INTO `history_kasir` (`id`, `no_faktur`, `id_pasien`, `id_dr`, `id_kasir`, `tanggal`, `no_urut`, `nama`, `kode`, `harga_beli`, `harga`, `jumlah`, `diskon`, `sub_total`, `id_kk`, `jenis`, `status`, `ket`, `penginput`, `kategori`, `tgl_visit`, `half`) VALUES
(1, '202003091117377', 'S.M.S.3', 0, NULL, '2020-03-09', 1, 'DOTRAMOL-PARACETAMOL-TRAMADOL', '251069', '', '', 4, 0, '0', 1, 'Produk', 'Belum Lunas', '', 'Apotek', 0, NULL, NULL),
(2, '202003091128113', 'S.M.S.3', 0, NULL, '2020-03-09', 1, 'Konsultasi', NULL, '', '20000', 1, 0, '20000', 1, 'Treatment', 'Belum Lunas', '-', 'Dokter', 2, NULL, NULL),
(3, '202003091131282', 'S.M.S.3', 0, 33, '2020-03-09', 1, 'Tes Golongan Darah', NULL, '', '', 1, 0, '0', 1, 'Treatment', 'Lunas', '-', 'Dokter', 2, NULL, NULL),
(4, '202003091131282', 'S.M.S.3', 0, 33, '2020-03-09', 1, 'Tes Gula Darah', NULL, '', '', 1, 0, '0', 1, 'Treatment', 'Lunas', '-', 'Dokter', 0, NULL, NULL),
(5, '202003091131282', 'S.M.S.3', 12, 33, '2020-03-09', 1, 'Pemeriksaan Biasa', NULL, '', '', 1, 0, '0', 0, 'Treatment', 'Lunas', '-', 'Dokter', 1, NULL, NULL),
(6, '202003091131282', 'S.M.S.3', 0, 33, '2020-03-09', 1, 'Pemeriksaan Biasa', NULL, '', '', 1, 0, '0', 1, 'Jasa', 'Lunas', '-', 'Kasir', 0, NULL, NULL),
(7, '202003091112221', 'S.M.S.3', 9, NULL, '2020-03-09', 1, 'Tes Golongan Darah', NULL, '', '10000', 1, 0, '10000', 1, 'Treatment', 'Belum Lunas', '-', 'Dokter', 2, NULL, NULL),
(8, '202003091112221', 'S.M.S.3', 0, NULL, '2020-03-09', 1, 'Cek Telinga', NULL, '', '79000', 1, 0, '79000', 1, 'Treatment', 'Belum Lunas', '-', 'Dokter', 2, NULL, NULL),
(10, '202003091354513', 'S.M.S.2', 9, 33, '2020-03-09', 2, 'Pemeriksaan Biasa', NULL, '', '', 1, 0, '0', 0, 'Treatment', 'Lunas', '-', 'Dokter', 1, NULL, NULL),
(11, '202003091354513', 'S.M.S.2', 9, NULL, '2020-03-09', 2, 'DOTRAMOL-PARACETAMOL-TRAMADOL', '251069', '', '', 1, 0, '0', 0, 'Produk', 'Lunas', '-', 'Dokter', 0, NULL, 'Ya'),
(12, '202003091117377', 'S.M.S.3', 0, NULL, '2020-03-09', 1, 'ctm', '', '', '', 3, 0, '0', 1, 'Produk', 'Belum Lunas', '', 'Apotek', 0, NULL, NULL),
(13, '202003091405171', 'S.M.S.3', 10, 33, '2020-03-09', 0, 'Perawatan Luka kena Benda Tajam', NULL, '', '', 1, 0, '0', 0, 'Treatment', 'Lunas', '-', 'Dokter', 1, '2020-03-21', NULL),
(14, '202003091405171', 'S.M.S.3', 10, 33, '2020-03-09', 0, 'Pemeriksaan Biasa', NULL, '', '', 1, 0, '0', 1, 'Jasa', 'Lunas', '-', 'Kasir', 0, NULL, NULL),
(15, '202003091419509', 'S.M.S.5', 10, NULL, '2020-03-09', 1, 'DOTRAMOL-PARACETAMOL-TRAMADOL', '251069', '', '', 1, 0, '0', 1, 'Produk', 'Belum Lunas', 'untuk pilek', 'Apotek', 0, NULL, NULL),
(16, '202003091422598', 'S.M.S.5', 10, NULL, '2020-03-09', 2, 'Pemeriksaan Biasa', NULL, '', '9000', 1, 2, '8820', 1, 'Treatment', 'Belum Lunas', '-', 'Dokter', 2, NULL, NULL),
(18, '202003091117377', 'S.M.S.3', 0, NULL, '2020-03-09', 1, 'VIT C ( KALENG )', '766785', '', '', 2, 0, '0', 1, 'Produk', 'Belum Lunas', '', 'Apotek', 0, NULL, NULL),
(20, '202003091344398', 'S.M.S', 0, NULL, '2020-04-10', 1, 'ALKOHOL KECIL', '581543', '5555', '', 1, 0, '0', 1, 'Produk', 'Belum Lunas', '', 'Apotek', 0, NULL, NULL),
(21, '202003091344398', 'S.M.S', 0, NULL, '2020-04-10', 1, 'DOTRAMOL-PARACETAMOL-TRAMADOL', '251069', '', '', 1, 0, '0', 1, 'Produk', 'Belum Lunas', '', 'Apotek', 0, NULL, NULL),
(22, '202004131420536', 'S.M.S.2', 0, NULL, '2020-04-13', 1, 'Tes Gula Darah', NULL, '', '10000', 1, 0, '10000', 1, 'Treatment', 'Belum Lunas', '-', 'Dokter', 2, NULL, NULL),
(23, '202004131420536', 'S.M.S.2', 0, NULL, '2020-04-13', 1, 'Tes Golongan Darah', NULL, '', '10000', 1, 0, '10000', 1, 'Treatment', 'Belum Lunas', '-', 'Dokter', 2, NULL, NULL),
(24, '202004140935337', 'S.M.S.3', 0, NULL, '2020-04-14', 1, 'Tes Golongan Darah', NULL, '', '10000', 1, 0, '10000', 1, 'Treatment', 'Belum Lunas', '-', 'Dokter', 2, NULL, NULL),
(25, '202004140921151', 'S.M.S.2', 9, NULL, '2020-04-14', 1, 'DOTRAMOL-PARACETAMOL-TRAMADOL', '251069', '', '8085', 1, 0, '8085', 0, 'Produk', 'Lunas', '-', 'Dokter', 0, NULL, 'Tidak'),
(26, '202004140935337', 'S.M.S.3', 9, NULL, '2020-04-14', 1, 'ANTIMO DEWASA', '186097', '', '4620', 1, 0, '4620', 0, 'Produk', 'Lunas', '-', 'Dokter', 0, NULL, 'Tidak'),
(27, '202004141234179', 'S.M.S', 9, NULL, '2020-04-14', 1, 'Pemeriksaan Biasa', NULL, '', '12000', 1, 0, '12000', 0, 'Treatment', 'Belum Lunas', '-', 'Dokter', 1, NULL, NULL),
(28, '202004141344389', 'S.M.S.3', 9, NULL, '2020-04-14', 1, 'Pemeriksaan Biasa', NULL, '', '9000', 1, 0, '9000', 0, 'Treatment', 'Belum Lunas', '-', 'Dokter', 1, NULL, NULL),
(29, '202004141344389', 'S.M.S.3', 9, NULL, '2020-04-14', 1, 'VIT C ( KALENG )', '766785', '', '', 1, 0, '0', 0, 'Produk', 'Lunas', '-', 'Dokter', 0, NULL, 'Tidak'),
(30, '202004141356563', 'S.M.S.2', 9, NULL, '2020-04-14', 1, 'Pemeriksaan Biasa', NULL, '', '12000', 1, 0, '12000', 0, 'Treatment', 'Belum Lunas', '-', 'Dokter', 1, NULL, NULL),
(32, '202004142329503', 'S.M.S.6', 9, 33, '2020-04-15', 0, 'Pemeriksaan Biasa', NULL, '', '', 1, 0, '0', 0, 'Treatment', 'Lunas', '-', 'Dokter', 1, '0000-00-00', NULL),
(117, '202005281439593', 'S.M.S', 9, 33, '2020-05-28', 1, 'Perawatan Luka kena Benda Tajam', NULL, '', '20000', 1, 0, '20000', 0, 'Treatment', 'Lunas', '-', 'Dokter', 1, NULL, NULL),
(116, '202005281439593', 'S.M.S', 9, 33, '2020-05-28', 1, 'Pemeriksaan Biasa', NULL, '', '15000', 1, 0, '15000', 0, 'Treatment', 'Lunas', '-', 'Dokter', 1, NULL, NULL),
(38, '202004142329503', 'S.M.S.6', 9, 33, '2020-04-15', 0, 'VIT C ( KALENG )', '766785', '', '577', 2, 0, '1154', 0, 'Produk', 'Lunas', '-', 'Dokter', 0, NULL, NULL),
(39, '202004142329503', 'S.M.S.6', 9, 33, '2020-04-15', 0, 'DOTRAMOL-PARACETAMOL-TRAMADOL', '251069', '', '8085', 2, 0, '16170', 0, 'Produk', 'Lunas', '-', 'Dokter', 0, NULL, NULL),
(40, '202004151404049', 'S.M.S.3', 11, NULL, '2020-04-15', 3, 'DOTRAMOL-PARACETAMOL-TRAMADOL', '251069', '', '', 10, 0, '0', 0, 'Produk', 'Lunas', '-', 'Dokter', 0, NULL, 'Tidak'),
(41, '202004151427055', 'S.M.S.2', 11, NULL, '2020-04-15', 5, 'DOTRAMOL-PARACETAMOL-TRAMADOL', '251069', '', '8085', 5, 0, '40425', 0, 'Produk', 'Lunas', '-', 'Dokter', 0, NULL, 'Tidak'),
(44, '202004181258347', 'S.M.S.5', 0, NULL, '2020-04-18', 1, 'DOTRAMOL-PARACETAMOL-TRAMADOL', '251069', '', '8085', 2, 10, '14553', 1, 'Produk', 'Belum Lunas', '', 'Apotek', 0, NULL, NULL),
(46, '202004210959111', 'S.M.S.3', 0, NULL, '2020-04-21', 1, 'ANTIMO DEWASA', '186097', '', '', 1, 0, '0', 1, 'Produk', 'Belum Lunas', '', 'Apotek', 0, NULL, NULL),
(49, '202005041341088', 'S.M.S.1', 9, 33, '2020-05-04', 0, 'DOTRAMOL-PARACETAMOL-TRAMADOL', '251069', '', '', 2, 0, '0', 0, 'Produk', 'Lunas', '-', 'Dokter', 0, NULL, NULL),
(48, '202004301221125', 'S.M.S.1', 0, NULL, '2020-05-01', 0, 'Pemeriksaan Biasa', NULL, '', '12000', 1, 0, '12000', 0, 'Treatment', 'Belum Lunas', '-', 'Dokter', 1, '0000-00-00', NULL),
(50, '202005041341088', 'S.M.S.1', 9, 33, '2020-05-04', 0, 'DOTRAMOL-PARACETAMOL-TRAMADOL', '251069', '', '', 2, 0, '0', 0, 'Produk', 'Lunas', '-', 'Dokter', 0, NULL, NULL),
(134, '202005051206323', '', 0, NULL, '2020-06-06', 1, 'Pemeriksaan Biasa', NULL, '', '12000', 1, 0, '12000', 1, 'Treatment', 'Belum Lunas', '-', 'Dokter', 2, NULL, NULL),
(132, '202005051205062', 'S.M.S.2', 0, NULL, '2020-06-05', 0, 'Pemeriksaan Biasa', NULL, '', '', 1, 0, '0', 1, 'Treatment', 'Belum Lunas', '-', 'Dokter', 2, NULL, NULL),
(53, '202005051206143', 'S.M.S.1', 9, 33, '2020-05-05', 0, 'DOTRAMOL-PARACETAMOL-TRAMADOL', '251069', '', '', 2, 0, '0', 0, 'Produk', 'Lunas', '-', 'Dokter', 0, NULL, NULL),
(54, '202005051206143', 'S.M.S.1', 9, 33, '2020-05-05', 0, 'VIT C ( KALENG )', '766785', '', '', 1, 0, '0', 0, 'Produk', 'Lunas', '-', 'Dokter', 0, NULL, NULL),
(55, '202005051206323', 'S.M.S.6', 9, NULL, '2020-05-05', 0, 'DOTRAMOL-PARACETAMOL-TRAMADOL', '251069', '', '8085', 2, 0, '16170', 0, 'Produk', 'Belum Lunas', '-', 'Dokter', 0, NULL, NULL),
(56, '202005051206323', 'S.M.S.6', 9, NULL, '2020-05-05', 0, 'VIT C ( KALENG )', '766785', '', '577', 1, 0, '577', 0, 'Produk', 'Belum Lunas', '-', 'Dokter', 0, NULL, NULL),
(57, '202005051207023', 'S.M.S.3', 11, 33, '2020-05-05', 0, 'DOTRAMOL-PARACETAMOL-TRAMADOL', '251069', '', '', 2, 0, '0', 0, 'Produk', 'Lunas', '-', 'Dokter', 0, NULL, NULL),
(58, '202005051207023', 'S.M.S.3', 11, 33, '2020-05-05', 0, 'VIT C ( KALENG )', '766785', '', '', 1, 0, '0', 0, 'Produk', 'Lunas', '-', 'Dokter', 0, NULL, NULL),
(133, '202006051556273', '', 0, NULL, '2020-06-06', 1, 'Pemeriksaan Biasa', NULL, '', '', 1, 0, '0', 1, 'Treatment', 'Belum Lunas', '-', 'Dokter', 2, NULL, NULL),
(73, '202005071404171', 'S.M.S.5', 9, NULL, '2020-05-07', 1, 'DOTRAMOL-PARACETAMOL-TRAMADOL', '251069', '', '', 1, 0, '0', 0, 'Produk', 'Lunas', '-', 'Dokter', 0, NULL, 'Tidak'),
(72, '202005071402057', 'S.M.S.5', 9, NULL, '2020-05-07', 1, 'DOTRAMOL-PARACETAMOL-TRAMADOL', '251069', '', '', 1, 0, '0', 0, 'Produk', 'Lunas', '-', 'Dokter', 0, NULL, 'Tidak'),
(71, '202005071357156', 'S.M.S.5', 9, NULL, '2020-05-07', 1, 'DOTRAMOL-PARACETAMOL-TRAMADOL', '251069', '', '', 1, 0, '0', 0, 'Produk', 'Lunas', '-', 'Dokter', 0, NULL, 'Tidak'),
(70, '202005071404171', 'S.M.S.5', 0, 33, '2020-05-07', 1, 'Pemeriksaan Biasa', NULL, '', '', 1, 0, '0', 1, 'Treatment', 'Lunas', '-', 'Dokter', 2, NULL, NULL),
(69, '202005071357156', 'S.M.S.5', 0, 33, '2020-05-07', 1, 'Pemeriksaan Biasa', NULL, '', '15000', 1, 0, '15000', 1, 'Treatment', 'Lunas', '-', 'Dokter', 2, NULL, NULL),
(129, '202005301434279', 'S.M.S.3', 9, 33, '2020-05-30', 1, 'Pemeriksaan Biasa', NULL, '', '', 1, 0, '0', 0, 'Treatment', 'Lunas', '-', 'Dokter', 1, NULL, NULL),
(81, '202005131709205', 'S.M.S', 0, NULL, '2020-05-16', 2, 'Pemeriksaan Biasa', NULL, '', '15000', 1, 0, '15000', 1, 'Treatment', 'Belum Lunas', '-', 'Dokter', 2, NULL, NULL),
(82, '202005131708522', 'S.M.S.3', 0, NULL, '2020-05-16', 1, 'Perawatan Luka kena Benda Tajam', NULL, '', '15000', 1, 0, '15000', 1, 'Treatment', 'Belum Lunas', '-', 'Dokter', 2, NULL, NULL),
(83, '202005051206143', 'S.M.S.1', 0, 33, '2020-05-16', 0, 'Pemeriksaan Biasa', NULL, '', '', 1, 0, '0', 1, 'Treatment', 'Lunas', '-', 'Dokter', 2, NULL, NULL),
(84, '202005161341409', 'S.M.S', 9, NULL, '2020-05-16', 1, 'DOTRAMOL-PARACETAMOL-TRAMADOL', '251069', '', '', 2, 0, '0', 0, 'Produk', 'Lunas', '-', 'Dokter', 0, NULL, 'Tidak'),
(85, '202005161354171', 'S.M.S.3', 0, NULL, '2020-05-16', 1, 'VIT C ( KALENG )', '766785', '', '577', 2, 0, '1154', 1, 'Produk', 'Belum Lunas', '', 'Apotek', 0, NULL, NULL),
(86, '202005161354171', 'S.M.S.3', 0, NULL, '2020-05-16', 1, 'DOTRAMOL-PARACETAMOL-TRAMADOL', '251069', '', '8085', 1, 0, '8085', 1, 'Produk', 'Belum Lunas', '', 'Apotek', 0, NULL, NULL),
(88, '202005161557078', 'S.M.S', 0, NULL, '2020-05-16', 1, 'HICO - HEPARIN SODIUM', '504761', '', '28000', 1, 0, '28000', 1, 'Produk', 'Belum Lunas', '', 'Apotek', 0, NULL, NULL),
(92, '202005261745566', 'S.M.S 4', 0, 33, '2020-05-26', 4, 'Pemeriksaan Biasa', NULL, '', '9000', 1, 0, '9000', 1, 'Treatment', 'Lunas', '-', 'Dokter', 2, NULL, NULL),
(93, '202005261623254', 'S.M.S.3', 0, 33, '2020-05-26', 1, 'Pemeriksaan Biasa', NULL, '', '9000', 1, 0, '9000', 1, 'Treatment', 'Lunas', '-', 'Dokter', 2, NULL, NULL),
(94, '202005261623531', 'S.M.S.5', 0, 33, '2020-05-26', 3, 'Pemeriksaan Biasa', NULL, '', '', 1, 0, '0', 1, 'Treatment', 'Lunas', '-', 'Dokter', 2, NULL, NULL),
(95, '202005261623363', 'S.M.S', 0, 33, '2020-05-26', 2, 'Pemeriksaan Biasa', NULL, '', '', 1, 0, '0', 1, 'Treatment', 'Lunas', '-', 'Dokter', 2, NULL, NULL),
(96, '202005261623254', 'S.M.S.3', 9, NULL, '2020-05-26', 1, 'DOTRAMOL-PARACETAMOL-TRAMADOL', '251069', '', '', 1, 0, '0', 0, 'Produk', 'Lunas', '-', 'Dokter', 0, NULL, 'Tidak'),
(97, '202005261623363', 'S.M.S', 9, NULL, '2020-05-26', 2, 'DOTRAMOL-PARACETAMOL-TRAMADOL', '251069', '', '', 1, 0, '0', 0, 'Produk', 'Lunas', '-', 'Dokter', 0, NULL, 'Ya'),
(98, '202005261623531', 'S.M.S.5', 9, NULL, '2020-05-26', 3, 'DOTRAMOL-PARACETAMOL-TRAMADOL', '251069', '', '', 1, 0, '0', 0, 'Produk', 'Lunas', '-', 'Dokter', 0, NULL, 'Tidak'),
(99, '202005261745566', 'S.M.S 4', 11, NULL, '2020-05-26', 4, 'DOTRAMOL-PARACETAMOL-TRAMADOL', '251069', '', '', 1, 0, '0', 0, 'Produk', 'Lunas', '-', 'Dokter', 0, NULL, 'Tidak'),
(100, '202005161620333', 'S.M.S', 0, NULL, '2020-05-27', 1, 'DOTRAMOL-PARACETAMOL-TRAMADOL', '251069', '', '8085', 1, 0, '8085', 1, 'Produk', 'Belum Lunas', '', 'Apotek', 0, NULL, NULL),
(101, '202005270310304', 'S.M.S.3', 0, NULL, '2020-05-27', 1, 'DOTRAMOL-PARACETAMOL-TRAMADOL', '251069', '', '8085', 1, 0, '8085', 1, 'Produk', 'Belum Lunas', '', 'Apotek', 0, NULL, NULL),
(103, '202005270313259', 'S.M.S 4', 0, NULL, '2020-05-27', 1, 'DOTRAMOL-PARACETAMOL-TRAMADOL', '251069', '', '', 1, 0, '0', 1, 'Produk', 'Belum Lunas', '', 'Apotek', 0, NULL, NULL),
(104, '202005280000006', 'S.M.S 4', 0, 33, '2020-05-28', 1, 'Pemeriksaan Biasa', NULL, '', '12000', 1, 0, '12000', 1, 'Treatment', 'Lunas', '-', 'Dokter', 2, NULL, NULL),
(105, '202005280000006', 'S.M.S 4', 9, NULL, '2020-05-28', 1, 'DOTRAMOL-PARACETAMOL-TRAMADOL', '251069', '', '8085', 1, 0, '8085', 0, 'Produk', 'Lunas', '-', 'Dokter', 0, NULL, 'Tidak'),
(108, '202005271458217', 'S.M.S', 9, NULL, '2020-05-27', 1, 'DOTRAMOL-PARACETAMOL-TRAMADOL', '251069', '', '', 1, 0, '0', 0, 'Produk', 'Lunas', '-', 'Dokter', 0, NULL, 'Tidak'),
(114, '202005281439593', 'S.M.S', 9, 33, '2020-05-28', 1, 'Pemeriksaan Biasa', NULL, '', '15000', 1, 0, '15000', 0, 'Treatment', 'Lunas', '-', 'Dokter', 1, NULL, NULL),
(118, '202005281439593', 'S.M.S', 9, 33, '2020-05-28', 1, 'Pemeriksaan Biasa', NULL, '', '15000', 1, 0, '15000', 0, 'Treatment', 'Lunas', '-', 'Dokter', 1, NULL, NULL),
(119, '202005281629025', 'S.M.S.3', 9, 33, '2020-05-28', 1, 'Pemeriksaan Biasa', NULL, '', '', 1, 0, '0', 0, 'Treatment', 'Lunas', '-', 'Dokter', 1, NULL, NULL),
(120, '202005281631071', 'S.M.S 4', 0, NULL, '2020-05-28', 2, 'Pemeriksaan Biasa', NULL, '', '12000', 1, 0, '12000', 1, 'Treatment', 'Belum Lunas', '-', 'Dokter', 2, NULL, NULL),
(122, '202005291458512', 'S.M.S.3', 9, 33, '2020-05-29', 1, 'Pemeriksaan Biasa', NULL, '', '15000', 1, 0, '15000', 0, 'Treatment', 'Lunas', '-', 'Dokter', 1, NULL, NULL),
(123, '202005291458512', 'S.M.S.3', 9, NULL, '2020-05-29', 1, 'DOTRAMOL-PARACETAMOL-TRAMADOL', '251069', '', '', 1, 0, '0', 0, 'Produk', 'Lunas', '-', 'Dokter', 0, NULL, 'Tidak'),
(130, '202006010741122', 'S.M.S.3', 9, NULL, '2020-06-01', 1, 'DOTRAMOL-PARACETAMOL-TRAMADOL', '251069', '', '', 1, 0, '0', 0, 'Produk', 'Lunas', '-', 'Dokter', 0, NULL, 'Tidak'),
(135, '202006010853075', '', 0, NULL, '2020-06-06', 1, 'Pemeriksaan Biasa', NULL, '', '', 1, 0, '0', 1, 'Treatment', 'Belum Lunas', '-', 'Dokter', 2, NULL, NULL),
(136, '202006060621541', '', 0, NULL, '2020-06-06', 2, 'Pemeriksaan Biasa', NULL, '', '9000', 1, 0, '9000', 1, 'Treatment', 'Belum Lunas', '-', 'Dokter', 2, NULL, NULL),
(137, '202006060155159', '', 0, NULL, '2020-06-06', 2, 'wadad', NULL, '', '', 1, 0, '0', 1, 'Treatment', 'Belum Lunas', '-', 'Dokter', 2, NULL, NULL),
(138, '202006091544577', '', 0, 33, '2020-06-09', 1, 'Pemeriksaan Biasa', NULL, '', '12000', 1, 0, '12000', 1, 'Treatment', 'Lunas', '-', 'Dokter', 2, NULL, NULL),
(139, '202006091544577', 'S.M.S.3', 9, 33, '2020-06-09', 1, 'Perawatan Luka kena Benda Tajam', NULL, '', '15000', 1, 0, '15000', 0, 'Treatment', 'Lunas', '-', 'Dokter', 1, NULL, NULL),
(140, '202006091544577', 'S.M.S.3', 9, NULL, '2020-06-09', 1, 'DOTRAMOL-PARACETAMOL-TRAMADOL', '251069', '', '8085', 2, 0, '16170', 0, 'Produk', 'Lunas', '-', 'Dokter', 0, NULL, 'Tidak'),
(141, '202006091553129', '', 0, NULL, '2020-06-09', 1, 'Pemeriksaan Biasa', NULL, '', '12000', 1, 0, '12000', 1, 'Treatment', 'Belum Lunas', '-', 'Dokter', 2, NULL, NULL),
(142, '202006091553129', '', 0, NULL, '2020-06-09', 1, 'Perawatan Luka kena Benda Tajam', NULL, '', '15000', 1, 0, '15000', 1, 'Treatment', 'Belum Lunas', '-', 'Dokter', 2, NULL, NULL),
(143, '202006091553129', 'S.M.S.3', 9, NULL, '2020-06-09', 1, 'Pemeriksaan Biasa', NULL, '', '12000', 1, 0, '12000', 0, 'Treatment', 'Belum Lunas', '-', 'Dokter', 1, NULL, NULL),
(144, '202006091553129', 'S.M.S.3', 9, NULL, '2020-06-09', 1, 'DOTRAMOL-PARACETAMOL-TRAMADOL', '251069', '', '8085', 1, 0, '8085', 0, 'Produk', 'Lunas', '-', 'Dokter', 0, NULL, 'Tidak'),
(145, '202006191450321', '', 0, NULL, '2020-06-19', 1, 'Pemeriksaan Biasa', NULL, '', '9000', 1, 0, '9000', 1, 'Treatment', 'Belum Lunas', '-', 'Dokter', 2, NULL, NULL),
(146, '202006231642159', '', 0, 33, '2020-06-23', 1, 'Perawatan Luka kena Benda Tajam', NULL, '', '20000', 1, 0, '20000', 1, 'Treatment', 'Lunas', '-', 'Dokter', 2, NULL, NULL),
(147, '202006231642159', 'S.M.S.5', 9, 33, '2020-06-23', 1, 'Perawatan Luka kena Benda Tajam', NULL, '', '20000', 1, 0, '20000', 0, 'Treatment', 'Lunas', '-', 'Dokter', 1, NULL, NULL),
(148, '202006231642159', 'S.M.S.5', 9, NULL, '2020-06-23', 1, 'DOTRAMOL-PARACETAMOL-TRAMADOL', '251069', '', '', 1, 0, '0', 0, 'Produk', 'Lunas', '-', 'Dokter', 0, NULL, 'Tidak'),
(225, '202103091342414', 'A888C', 11, NULL, '2021-03-09', 0, 'Tes Gula Darah', NULL, '', '', 1, 0, '0', 0, 'Treatment', 'Belum Lunas', '-', 'Dokter', 1, '2021-03-09', NULL),
(150, '202006231651563', 'S.M.S.5', 9, NULL, '2020-06-23', 1, 'Pemeriksaan Biasa', NULL, '', '15000', 1, 0, '15000', 0, 'Treatment', 'Belum Lunas', '-', 'Dokter', 1, NULL, NULL),
(151, '202006241028013', 'S.M.S.3', 0, NULL, '2020-06-24', 0, 'Pemeriksaan Biasa', NULL, '', '', 1, 0, '0', 0, 'Treatment', 'Belum Lunas', '-', 'Dokter', 1, '0000-00-00', NULL),
(152, '202006241028013', 'S.M.S.3', 9, NULL, '2020-06-24', 0, 'DOTRAMOL-PARACETAMOL-TRAMADOL', '251069', '', '', 1, 0, '0', 0, 'Produk', 'Belum Lunas', '-', 'Dokter', 0, NULL, NULL),
(153, '202006241028013', 'S.M.S.3', 9, NULL, '2020-06-24', 0, 'ANTIMO DEWASA', '186097', '', '', 1, 0, '0', 0, 'Produk', 'Belum Lunas', '-', 'Dokter', 0, NULL, NULL),
(155, '202006241028013', '', 0, NULL, '2020-06-24', 1, 'Perawatan Luka kena Benda Tajam', NULL, '', '', 1, 0, '0', 1, 'Treatment', 'Belum Lunas', '-', 'Dokter', 2, NULL, NULL),
(156, '202006241127291', '', 0, NULL, '2020-06-24', 2, 'Perawatan Luka kena Benda Tajam', NULL, '', '15000', 1, 0, '15000', 1, 'Treatment', 'Belum Lunas', '-', 'Dokter', 2, NULL, NULL),
(157, '202006241127291', 'S.M.S.3', 0, NULL, '2020-06-24', 0, 'Pemeriksaan Biasa', NULL, '', '12000', 1, 0, '12000', 0, 'Treatment', 'Belum Lunas', '-', 'Dokter', 1, '0000-00-00', NULL),
(158, '202006241127291', 'S.M.S.3', 9, NULL, '2020-06-24', 0, 'DOTRAMOL-PARACETAMOL-TRAMADOL', '251069', '', '8085', 1, 0, '8085', 0, 'Produk', 'Belum Lunas', '-', 'Dokter', 0, NULL, NULL),
(159, '202006241127291', 'S.M.S.3', 9, NULL, '2020-06-24', 0, 'ANTIMO DEWASA', '186097', '', '4620', 1, 0, '4620', 0, 'Produk', 'Belum Lunas', '-', 'Dokter', 0, NULL, NULL),
(160, '202006241127291', 'S.M.S.3', 9, NULL, '2020-06-24', 0, 'ALKOHOL 70 %', '661713', '', '46200', 1, 0, '46200', 0, 'Produk', 'Belum Lunas', '-', 'Dokter', 0, NULL, NULL),
(161, '202006241127291', 'S.M.S.3', 9, NULL, '2020-06-24', 0, 'ANTANGIN JRG', '643464', '', '2500', 1, 0, '2500', 0, 'Produk', 'Belum Lunas', '-', 'Dokter', 0, NULL, NULL),
(162, '202005051206143', 'S.M.S.1', 9, 33, '2020-05-14', 0, 'ANTIMO DEWASA', '186097', '', '', 1, 0, '0', 0, 'Produk', 'Lunas', '-', 'Dokter', 0, NULL, NULL),
(169, '202006251237287', 'S.M.S.2', 9, NULL, '2020-06-25', 0, 'DOTRAMOL-PARACETAMOL-TRAMADOL', '251069', '', '', 1, 0, '0', 0, 'Produk', 'Belum Lunas', '-', 'Dokter', 0, NULL, NULL),
(164, '202006250928465', 'S.M.S.5', 9, 33, '2020-06-25', 0, 'VIT C ( KALENG )', '766785', '', '577', 1, 0, '577', 0, 'Produk', 'Lunas', '-', 'Dokter', 0, NULL, NULL),
(166, '202006251055049', 'S.M.S.5', 9, NULL, '2020-06-25', 0, 'VIT C ( KALENG )', '766785', '', '', 1, 0, '0', 0, 'Produk', 'Belum Lunas', '-', 'Dokter', 0, NULL, NULL),
(172, '202006251302069', 'S.M.S.5', 0, 33, '2020-06-25', 0, 'Perawatan Luka kena Benda Tajam', NULL, '', '', 1, 0, '0', 0, 'Treatment', 'Lunas', '-', 'Dokter', 1, '0000-00-00', NULL),
(173, '202006251302069', 'S.M.S.5', 9, 33, '2020-06-25', 0, 'VIT C ( KALENG )', '766785', '', '577', 1, 0, '577', 0, 'Produk', 'Lunas', '-', 'Dokter', 0, NULL, NULL),
(174, '202006250928465', 'S.M.S.5', 9, NULL, '2020-06-25', 0, 'DOTRAMOL-PARACETAMOL-TRAMADOL', '251069', '', '8085', 1, 0, '8085', 0, 'Produk', 'Belum Lunas', '-', 'Dokter', 0, NULL, NULL),
(175, '202006250928465', 'S.M.S.5', 9, NULL, '2020-06-25', 0, 'VIT C ( KALENG )', '766785', '', '577', 1, 0, '577', 0, 'Produk', 'Belum Lunas', '-', 'Dokter', 0, NULL, NULL),
(176, '202005051206323', 'S.M.S.6', 9, NULL, '2020-05-15', 0, 'DOTRAMOL-PARACETAMOL-TRAMADOL', '251069', '', '8085', 1, 0, '8085', 0, 'Produk', 'Belum Lunas', '-', 'Dokter', 0, NULL, NULL),
(177, '202012101341559', 'S.M.S.2', 0, NULL, '2020-12-10', 1, 'GEQUIN', '010494', '25000', '', 1, 0, '0', 1, 'Produk', 'Belum Lunas', 'sakittt', 'Apotek', 0, NULL, NULL),
(178, '202102031124002', 'S.M.S.3', 0, NULL, '2021-02-03', 2, 'Cek Telinga', NULL, '', '79000', 1, 0, '79000', 0, 'Treatment', 'Belum Lunas', '-', 'Dokter', 1, '2021-02-03', NULL),
(183, '202102051048544', 'S.M.S.6', 11, NULL, '2021-02-05', 1, 'Tes Gula Darah', NULL, '', '8000', 1, 0, '8000', 0, 'Treatment', 'Belum Lunas', '-', 'Dokter', 1, '2021-02-05', NULL),
(180, '202102041052155', 'A888C', 11, NULL, '2021-02-04', 1, 'Tes Gula Darah', NULL, '', '8000', 1, 0, '8000', 1, 'Treatment', 'Belum Lunas', 'Gula darah tinggi', 'Dokter', 1, '2021-02-04', NULL),
(181, '202102021338345', 'S.M.S.2', 11, NULL, '2021-02-04', 1, 'ALKOHOL 70 %', '661713', '26000', '3000', 1, 0, '3000', 1, 'Produk', 'Belum Lunas', '', 'Apotek', 0, NULL, NULL),
(182, '202004301221125', 'S.M.S.1', 9, NULL, '2020-04-30', 0, 'ANTIMO DEWASA', '186097', '', '4620', 2, 0, '9240', 0, 'Produk', 'Belum Lunas', '-', 'Dokter', 0, NULL, NULL),
(184, '202102051048544', 'S.M.S.6', 11, NULL, '2021-02-05', 1, 'ANTIMO DEWASA', '186097', '3750', '4000', 6, 0, '24000', 0, 'Produk', 'Belum Lunas', '3X Sehari', 'Dokter', 0, NULL, NULL),
(185, '202102051048544', 'S.M.S.6', 11, NULL, '2021-02-05', 1, 'ALKOHOL KECIL', '581543', '5555', '10000', 2, 0, '20000', 0, 'Produk', 'Belum Lunas', '-', 'Dokter', 0, NULL, NULL),
(186, '202102051421418', 'S.M.S.2', 11, NULL, '2021-02-05', 3, 'Tes Gula Darah', NULL, '', '10000', 1, 0, '10000', 0, 'Treatment', 'Belum Lunas', '-', 'Dokter', 1, '2021-02-12', NULL),
(187, '202102051421418', 'S.M.S.2', 11, NULL, '2021-02-05', 3, 'AB VASK  10 MG', '636628', '88800', '168000', 6, 0, '1008000', 0, 'Produk', 'Belum Lunas', '2x Sehari', 'Dokter', 0, NULL, NULL),
(188, '202102051421418', 'S.M.S.2', 11, NULL, '2021-02-05', 3, 'ALKOHOL KECIL', '581543', '5555', '7875', 2, 0, '15750', 0, 'Produk', 'Belum Lunas', '-', 'Dokter', 0, NULL, NULL),
(189, '202102051421418', 'S.M.S.2', 11, NULL, '2021-02-05', 3, 'ANTIMO DEWASA', '186097', '3750', '4620', 5, 0, '23100', 0, 'Produk', 'Belum Lunas', '1x sehari', 'Dokter', 0, NULL, NULL),
(190, '202102051446122', 'S.M.S.1', 11, NULL, '2021-02-05', 1, 'ANTIMO DEWASA', '186097', '3750', '4620', 4, 0, '18480', 1, 'Produk', 'Belum Lunas', '', 'Apotek', 0, NULL, NULL),
(191, '202102051456114', 'S.M.S.3', 11, NULL, '2021-02-05', 1, 'ANTIMO DEWASA', '186097', '3750', '4620', 3, 0, '13860', 1, 'Produk', 'Belum Lunas', '', 'Apotek', 0, NULL, NULL),
(192, '202102051456114', 'S.M.S.3', 11, NULL, '2021-02-05', 1, 'ANTANGIN JRG', '643464', '2000', '2500', 4, 0, '10000', 1, 'Produk', 'Belum Lunas', '12', 'Apotek', 0, NULL, NULL),
(193, '202102091042266', 'A999C', 0, NULL, '2021-02-09', 1, 'ANTIMO DEWASA', '186097', '3750', '4620', 3, 0, '13860', 1, 'Produk', 'Belum Lunas', '', 'Apotek', 0, NULL, NULL),
(194, '202102091042266', 'A999C', 0, NULL, '2021-02-09', 1, 'AB VASK  10 MG', '636628', '88800', '168000', 1, 0, '168000', 1, 'Produk', 'Belum Lunas', '', 'Apotek', 0, NULL, NULL),
(195, '202102091134459', 'S.M.S.5', 11, NULL, '2021-02-09', 1, 'Pemeriksaan Biasa', NULL, '', '9000', 1, 0, '9000', 0, 'Treatment', 'Belum Lunas', '-', 'Dokter', 1, '2021-02-09', NULL),
(196, '202102091421417', 'S.M.S.3', 11, NULL, '2021-02-09', 1, 'ANTIMO DEWASA', '186097', '3750', '4620', 3, 0, '13860', 0, 'Produk', 'Belum Lunas', '-', 'Dokter', 0, NULL, NULL),
(197, '202102091421417', 'S.M.S.3', 11, NULL, '2021-02-09', 1, 'ALBOTHYL ( POLICRESULEN) 10 ML', '279603', '53000', '36750', 1, 0, '36750', 0, 'Produk', 'Belum Lunas', '-', 'Dokter', 0, NULL, NULL),
(198, '202102091422151', 'S.M.S.6', 11, NULL, '2021-02-09', 2, 'BYE BYE FEVER ANAK', '954468', '6000', '10000', 2, 0, '20000', 0, 'Produk', 'Belum Lunas', '-', 'Dokter', 0, NULL, NULL),
(199, '202102091134459', 'S.M.S.5', 11, NULL, '2021-02-09', 1, 'ANTIMO DEWASA', '186097', '3750', '4620', 5, 0, '23100', 0, 'Produk', 'Belum Lunas', '-', 'Dokter', 0, NULL, NULL),
(200, '202102111049007', 'S.M.S.6', 11, NULL, '2021-02-11', 1, 'ANTANGIN JRG', '643464', '2000', '2500', 5, 0, '12500', 0, 'Produk', 'Belum Lunas', '-', 'Dokter', 0, NULL, NULL),
(201, '202102111049007', 'S.M.S.6', 11, NULL, '2021-02-11', 1, 'ANTIMO DEWASA', '186097', '3750', '4620', 2, 0, '9240', 0, 'Produk', 'Belum Lunas', '-', 'Dokter', 0, NULL, NULL),
(202, '202102151136588', 'S.M.S.6', 11, NULL, '2021-02-15', 1, 'Tes Gula Darah', NULL, '', '8000', 1, 0, '8000', 0, 'Treatment', 'Belum Lunas', '-', 'Dokter', 1, '2021-02-16', NULL),
(203, '202102151136588', 'S.M.S.6', 11, NULL, '2021-02-15', 1, 'ANTIMO DEWASA', '186097', '3750', '4620', 1, 0, '4620', 0, 'Produk', 'Belum Lunas', '-', 'Dokter', 0, NULL, NULL),
(204, '202102151136588', 'S.M.S.6', 11, NULL, '2021-02-15', 1, 'ANTANGIN JRG', '643464', '2000', '2500', 3, 0, '7500', 0, 'Produk', 'Belum Lunas', '-', 'Dokter', 0, NULL, NULL),
(205, '202102231301153', 'S.M.S.2', 11, NULL, '2021-02-23', 1, 'Tes Golongan Darah', NULL, '', '5000', 1, 0, '5000', 0, 'Treatment', 'Belum Lunas', '-', 'Dokter', 1, '2021-02-24', NULL),
(206, '202102231301153', 'S.M.S.2', 11, NULL, '2021-02-23', 1, 'Tes Gula Darah', NULL, '', '8000', 1, 0, '8000', 0, 'Treatment', 'Belum Lunas', '-', 'Dokter', 1, '2021-02-24', NULL),
(207, '202102231301153', 'S.M.S.2', 11, NULL, '2021-02-23', 1, 'ANTANGIN JRG', '643464', '2000', '2500', 6, 5, '14250', 0, 'Produk', 'Belum Lunas', '-', 'Dokter', 0, NULL, NULL),
(208, '202102231301153', 'S.M.S.2', 11, NULL, '2021-02-23', 1, 'Hawedion', '150194', '40000', '45000', 9, 10, '364500', 0, 'Produk', 'Belum Lunas', '-', 'Dokter', 0, NULL, NULL),
(209, '202102231318249', 'S.M.S.6', 11, NULL, '2021-02-23', 3, 'Cek Telinga', NULL, '', '55000', 1, 0, '55000', 0, 'Treatment', 'Belum Lunas', '-', 'Dokter', 1, '2021-02-23', NULL),
(210, '202102231318249', 'S.M.S.6', 11, NULL, '2021-02-23', 3, 'Perawatan Luka kena Benda Tajam', NULL, '', '9000', 1, 0, '9000', 0, 'Treatment', 'Belum Lunas', '-', 'Dokter', 1, '2021-02-23', NULL),
(211, '202102231317262', 'S.M.S.3', 11, NULL, '2021-02-23', 2, 'AB VASK  10 MG', '636628', '88800', '168000', 9, 0, '1512000', 0, 'Produk', 'Belum Lunas', '-', 'Dokter', 0, NULL, NULL),
(212, '202102241035077', 'S.M.S.3', 11, NULL, '2021-02-24', 1, 'Tes Gula Darah', NULL, '', '10000', 1, 0, '10000', 0, 'Treatment', 'Belum Lunas', '-', 'Dokter', 1, '2021-02-24', NULL),
(213, '202102241035077', 'S.M.S.3', 11, NULL, '2021-02-24', 1, 'AB VASK  10 MG', '636628', '88800', '168000', 2, 0, '336000', 0, 'Produk', 'Belum Lunas', '-', 'Dokter', 0, NULL, NULL),
(214, '202102241035077', 'S.M.S.3', 11, NULL, '2021-02-24', 1, 'ANTANGIN JRG', '643464', '2000', '2500', 2, 0, '5000', 0, 'Produk', 'Belum Lunas', '-', 'Dokter', 0, NULL, NULL),
(216, '202102241124463', 'S.M.S.2', 11, NULL, '2021-02-24', 2, 'Tes Gula Darah', NULL, '', '8000', 1, 0, '8000', 0, 'Treatment', 'Belum Lunas', '-', 'Dokter', 1, '2021-02-24', NULL),
(217, '202102241124463', 'S.M.S.2', 11, NULL, '2021-02-24', 2, 'Konsultasi', NULL, '', '17000', 1, 0, '17000', 0, 'Treatment', 'Belum Lunas', '-', 'Dokter', 1, '2021-02-24', NULL),
(218, '202102241124463', 'S.M.S.2', 11, NULL, '2021-02-24', 2, 'BYE BYE FEVER ANAK', '954468', '6000', '10000', 10, 0, '100000', 0, 'Produk', 'Belum Lunas', '-', 'Dokter', 0, NULL, NULL),
(219, '202102241124463', 'S.M.S.2', 11, NULL, '2021-02-24', 2, 'BYE BYE FEVER BAYI', '226227', '5000', '8000', 10, 10, '72000', 0, 'Produk', 'Belum Lunas', '-', 'Dokter', 0, NULL, NULL),
(220, '202102241138532', 'S.M.S.5', 11, NULL, '2021-02-24', 3, 'Konsultasi', NULL, '', '17000', 1, 0, '17000', 0, 'Treatment', 'Belum Lunas', '-', 'Dokter', 1, '2021-02-24', NULL),
(221, '202102241138532', 'S.M.S.5', 11, NULL, '2021-02-24', 3, 'ANTIMO DEWASA', '186097', '3750', '4620', 1, 0, '4620', 0, 'Produk', 'Belum Lunas', '-', 'Dokter', 0, NULL, NULL),
(222, '202102241138532', 'S.M.S.5', 11, NULL, '2021-02-24', 3, 'AB VASK  10 MG', '636628', '88800', '168000', 1, 0, '168000', 0, 'Produk', 'Belum Lunas', '-', 'Dokter', 0, NULL, NULL),
(223, '202103051104372', 'S.M.S.2', 11, NULL, '2021-03-05', 1, 'Tes Gula Darah', NULL, '', '10000', 1, 0, '10000', 0, 'Treatment', 'Belum Lunas', '-', 'Dokter', 1, '2021-03-05', NULL),
(224, '202103051104372', 'S.M.S.2', 11, NULL, '2021-03-05', 1, 'Konsultasi', NULL, '', '20000', 1, 0, '20000', 0, 'Treatment', 'Belum Lunas', '-', 'Dokter', 1, '2021-03-05', NULL),
(227, '202103101118289', 'A999C', 16, NULL, '2021-03-10', 0, 'Tes Gula Darah', NULL, '', '8000', 1, 0, '8000', 0, 'Treatment', 'Belum Lunas', '-', 'Dokter', 1, '2021-03-10', NULL),
(230, '202103151120437', 'S.M.S', 16, NULL, '2021-03-15', 0, 'Pemeriksaan Biasa', '', NULL, '9000', 1, 0, '9000', 1, 'Treatment', 'Belum Lunas', '-', 'Kasir', 1, '2021-03-15', NULL),
(231, '202103151120437', '', 16, NULL, '2021-03-15', 0, 'BYE BYE FEVER ANAK', '954468', '6000', '7000', 1, 0, '7000', 1, 'Produk', 'Belum Lunas', '-', 'Kasir', 0, NULL, NULL),
(232, '202103151120437', 'S.M.S', 16, NULL, '2021-03-15', 0, 'Perawatan Luka kena Benda Tajam', '', NULL, '9000', 1, 0, '9000', 1, 'Treatment', 'Belum Lunas', '-', 'Kasir', 1, '2021-03-15', NULL),
(233, '202103161434368', 'S.M.S.3', 16, NULL, '2021-03-16', 1, 'Cek Telinga', NULL, '', '79000', 1, 0, '79000', 0, 'Treatment', 'Belum Lunas', '-', 'Dokter', 1, '2021-03-16', NULL),
(234, '202103171204338', 'S.M.S.3', 16, NULL, '2021-03-17', 1, 'Pemeriksaan Biasa', NULL, '', '12000', 1, 0, '12000', 0, 'Treatment', 'Belum Lunas', '-', 'Dokter', 1, '2021-03-17', NULL),
(235, '202006231651563', 'S.M.S.5', 16, NULL, '2021-03-17', 1, 'Tes Golongan Darah', '', NULL, '12000', 1, 0, '12000', 1, 'Treatment', 'Belum Lunas', '-', 'Kasir', 2, '2021-03-17', NULL),
(236, '202006231651563', '', 16, NULL, '2021-03-17', 0, 'BYE BYE FEVER ANAK', '954468', '6000', '8000', 2, 0, '16000', 1, 'Produk', 'Belum Lunas', '-', 'Kasir', 0, NULL, NULL),
(238, '202103181037394', 'A888C', 16, NULL, '2021-03-18', 1, 'Pemeriksaan Biasa', NULL, '', '12000', 1, 0, '12000', 0, 'Treatment', 'Belum Lunas', '-', 'Dokter', 1, '2021-03-18', NULL),
(239, '202103181037394', 'A888C', 16, NULL, '2021-03-18', 1, 'Cek Telinga', NULL, '', '79000', 1, 0, '79000', 0, 'Treatment', 'Belum Lunas', '-', 'Dokter', 1, '2021-03-18', NULL),
(240, '202103181037394', '', 16, NULL, '2021-03-18', 0, 'BYE BYE FEVER ANAK', '954468', '6000', '10000', 1, 0, '10000', 1, 'Produk', 'Belum Lunas', '-', 'Kasir', 0, NULL, NULL),
(241, '202103221026384', 'S.M.S.3', 16, NULL, '2021-03-22', 1, 'Pemeriksaan Biasa', NULL, '', '12000', 1, 0, '12000', 0, 'Treatment', 'Belum Lunas', '-', 'Dokter', 1, '2021-03-22', NULL),
(242, '202103101118289', 'A999C', 16, 33, '2021-03-22', 0, 'Pemeriksaan Biasa', NULL, '', '9000', 1, 0, '9000', 0, 'Treatment', 'Lunas', '-', 'Dokter', 1, '2021-03-23', NULL),
(243, '202103221402456', 'S.M.S.5', 11, 33, '2021-03-22', 2, 'Hawedion', '150194', '40000', '45000', 1, 0, '45000', 0, 'Produk', 'Lunas', '-', 'Apotek', 0, NULL, NULL),
(244, '202103221402456', 'S.M.S.5', 11, 33, '2021-03-22', 2, 'ALBOTHYL ( POLICRESULEN) 10 ML', '279603', '53000', '53000', 1, 0, '53000', 0, 'Produk', 'Lunas', '-', 'Apotek', 0, NULL, NULL),
(245, '202103221402456', 'S.M.S.5', 11, 33, '2021-03-22', 2, 'Pemeriksaan Biasa', NULL, '', '12000', 1, 0, '12000', 0, 'Treatment', 'Lunas', '-', 'Apotek', 1, '2021-03-22', NULL),
(246, '202103221402456', 'S.M.S.5', 11, 33, '2021-03-22', 2, 'Cek Telinga', NULL, '', '79000', 1, 0, '79000', 0, 'Treatment', 'Lunas', '-', 'Apotek', 1, '2021-03-22', NULL),
(247, '202103101118289', 'A999C', 16, 33, '2021-03-22', 0, 'BYE BYE FEVER ANAK', '954468', '6000', '7000', 1, 0, '7000', 0, 'Produk', 'Lunas', '-', 'Dokter', 0, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `history_kirim_stok`
--

CREATE TABLE `history_kirim_stok` (
  `id` int(11) NOT NULL,
  `no_peng` varchar(50) NOT NULL,
  `tgl_kirim` datetime NOT NULL,
  `kd_brg` varchar(50) NOT NULL,
  `nama_brg` varchar(50) NOT NULL,
  `jenis_obat` enum('bebas','keras') DEFAULT NULL,
  `satuan` varchar(50) NOT NULL,
  `kategori` varchar(50) NOT NULL,
  `hrg` varchar(50) NOT NULL,
  `hrg_jual` int(11) NOT NULL,
  `batas_cabang` int(11) NOT NULL,
  `batas_minim` int(11) NOT NULL,
  `jumlah` int(11) NOT NULL,
  `tgl_produksi` date DEFAULT NULL,
  `tgl_expired` date DEFAULT NULL,
  `status` enum('kirim','terima','tolak') NOT NULL,
  `pesan` text NOT NULL,
  `tgl_terima` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `history_kirim_stok`
--

INSERT INTO `history_kirim_stok` (`id`, `no_peng`, `tgl_kirim`, `kd_brg`, `nama_brg`, `jenis_obat`, `satuan`, `kategori`, `hrg`, `hrg_jual`, `batas_cabang`, `batas_minim`, `jumlah`, `tgl_produksi`, `tgl_expired`, `status`, `pesan`, `tgl_terima`) VALUES
(7, 'PS-00001', '2021-01-04 15:10:05', '150194', 'Hawedion', 'bebas', '7', '6', '40000', 45000, 100, 10, 5, '2020-11-02', '2022-11-02', 'terima', '', '2021-01-04 20:03:01'),
(8, 'PS-00002', '2021-01-05 12:07:29', '010494', 'GEQUIN', 'bebas', '3', '9', '25000', 30000, 100, 10, 10, '2020-11-01', '2022-11-01', 'terima', '', '2021-01-05 12:24:24'),
(9, 'PS-00003', '2021-01-14 12:17:58', '226227', 'BYE BYE FEVER BAYI', 'bebas', '8', '20', '5000', 8000, 100, 10, 100, '2020-10-04', '2022-01-14', 'terima', '', '2021-01-14 12:26:35'),
(10, 'PS-00003', '2021-01-14 12:17:58', '040070', 'ANDALAN 1 MG / 3 BULAN INJEKSI', 'bebas', '6', '12', '100000', 130000, 100, 10, 20, '2020-12-29', '2021-08-31', 'terima', '', '2021-01-14 12:26:22'),
(11, 'PS-00003', '2021-01-14 12:17:58', '636628', 'AB VASK  10 MG', 'bebas', '1', '9', '88800', 168000, 100, 10, 100, '2021-01-12', '2023-01-12', 'terima', '', '2021-01-14 12:26:02'),
(12, 'PS-00003', '2021-01-14 12:17:58', '279603', 'ALBOTHYL ( POLICRESULEN) 10 ML', 'bebas', '6', '15', '53000', 36750, 100, 10, 50, '2021-01-01', '2023-01-01', 'terima', '', '2021-01-14 12:25:39'),
(16, 'PS-00004', '2021-01-14 12:29:32', '226227', 'BYE BYE FEVER BAYI', 'bebas', '8', '20', '5000', 8000, 100, 10, 200, '2020-10-04', '2022-01-14', 'terima', '', '2021-01-14 12:44:06'),
(17, 'PS-00004', '2021-01-14 12:29:32', '954468', 'BYE BYE FEVER ANAK', 'bebas', '8', '20', '6000', 10000, 100, 10, 100, '2020-12-06', '2022-05-10', 'terima', '', '2021-01-14 12:44:01'),
(18, 'PS-00004', '2021-01-14 12:29:32', '279603', 'ALBOTHYL ( POLICRESULEN) 10 ML', 'bebas', '6', '15', '53000', 36750, 100, 10, 50, '2021-01-01', '2023-01-01', 'terima', '', '2021-01-14 12:43:47'),
(19, 'PS-00004', '2021-01-14 12:29:32', '636628', 'AB VASK  10 MG', 'bebas', '1', '9', '88800', 168000, 100, 10, 100, '2021-01-12', '2023-01-12', 'terima', '', '2021-01-14 12:43:12'),
(20, 'PS-00004', '2021-01-14 12:29:32', '040070', 'ANDALAN 1 MG / 3 BULAN INJEKSI', 'bebas', '6', '12', '100000', 130000, 100, 10, 100, '2020-12-29', '2021-08-31', 'terima', '', '2021-01-14 12:29:54'),
(21, 'PS-00005', '2021-01-19 15:58:39', '954468', 'BYE BYE FEVER ANAK', 'bebas', '8', '20', '6000', 10000, 100, 10, 100, '2020-12-06', '2022-05-10', 'terima', '', '2021-01-19 16:00:07'),
(22, 'PS-00005', '2021-01-19 15:58:39', '226227', 'BYE BYE FEVER BAYI', 'bebas', '8', '20', '5000', 8000, 100, 10, 150, '2020-10-04', '2022-01-14', 'terima', '', '2021-01-19 15:59:38'),
(24, 'PS-00006', '2021-01-19 16:08:28', '180024', 'BETADINE 5 LITER', 'bebas', '6', '19', '500000', 866250, 100, 10, 100, '2020-08-30', '2021-10-31', 'terima', '', '2021-01-19 16:08:52'),
(28, 'PS-00008', '2021-01-26 14:27:11', '460419', 'BENANG ETILON 6.0 (UTK WAJAH) T-LENE', NULL, '8', '19', '10000', 120750, 100, 10, 50, '2021-01-11', '2022-01-27', 'terima', '', '2021-01-26 14:27:20'),
(29, 'PS-00009', '2021-02-05 15:25:30', '151886', 'CAMAAG SYRUP 100 ML / ANTASIDA', NULL, '6', '9', '35500', 40425, 100, 10, 30, '2020-12-06', '2021-06-06', 'terima', '', '2021-02-05 15:25:50'),
(30, 'PS-00009', '2021-02-05 15:25:30', '678528', 'BETADIN OBAT KUMUR', NULL, '8', '19', '15000', 0, 100, 10, 30, '2020-10-25', '2021-12-31', 'terima', '', '2021-02-05 15:25:46'),
(31, 'PS-00009', '2021-02-05 15:25:30', '636628', 'AB VASK  10 MG', NULL, '1', '9', '88800', 168000, 100, 10, 100, '2021-01-12', '2023-01-12', 'terima', '', '2021-02-05 15:25:41'),
(32, 'PS-00010', '2021-02-25 14:54:51', '151886', 'CAMAAG SYRUP 100 ML / ANTASIDA', NULL, '6', '9', '35500', 40425, 100, 10, 20, '2020-12-06', '2021-06-06', 'kirim', '', '0000-00-00 00:00:00'),
(33, 'PS-00010', '2021-02-25 14:54:51', '636628', 'AB VASK  10 MG', NULL, '1', '9', '88800', 168000, 100, 10, 50, '2021-01-12', '2023-01-12', 'kirim', '', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `identitas`
--

CREATE TABLE `identitas` (
  `id` int(1) NOT NULL,
  `nama_organisasi` varchar(50) NOT NULL,
  `nama_web` varchar(50) NOT NULL,
  `alamat` text NOT NULL,
  `informasi` text NOT NULL,
  `logo` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `identitas`
--

INSERT INTO `identitas` (`id`, `nama_organisasi`, `nama_web`, `alamat`, `informasi`, `logo`) VALUES
(1, 'Klinik CGS', '-', 'Jl. Tatabumi Selatan No.109 Kel. Banyuraden, Kec. Gamping, Sleman - Yogyakarta', '-', 'logo.ico'),
(2, 'App Apotik', '', 'Jl. Tatabumi Selatan No.109 Kel. Banyuraden, Kec. Gamping, Kab. Sleman - DIY', '', 'logo.ico');

-- --------------------------------------------------------

--
-- Table structure for table `jenis_user`
--

CREATE TABLE `jenis_user` (
  `id_ju` varchar(5) NOT NULL,
  `nama_ju` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `jenis_user`
--

INSERT INTO `jenis_user` (`id_ju`, `nama_ju`) VALUES
('JU-01', 'Admin'),
('JU-02', 'Dokter'),
('JU-06', 'Resepsionis'),
('JU-07', 'Apotek'),
('JU-08', 'Lab'),
('JU-09', 'Karyawan'),
('JU-10', 'Perawat');

-- --------------------------------------------------------

--
-- Table structure for table `karyawan`
--

CREATE TABLE `karyawan` (
  `id_karyawan` int(11) NOT NULL,
  `id_kk` int(11) NOT NULL,
  `nama_karyawan` varchar(50) NOT NULL,
  `jk` varchar(25) NOT NULL,
  `tgl_lahir` varchar(25) NOT NULL,
  `no_telp` varchar(25) NOT NULL,
  `id_ju` varchar(25) NOT NULL,
  `status` varchar(25) NOT NULL,
  `foto` varchar(255) NOT NULL,
  `tgl_masuk` date NOT NULL,
  `alamat` varchar(255) NOT NULL,
  `lulusan` varchar(50) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(150) NOT NULL,
  `blokir` varchar(6) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `karyawan`
--

INSERT INTO `karyawan` (`id_karyawan`, `id_kk`, `nama_karyawan`, `jk`, `tgl_lahir`, `no_telp`, `id_ju`, `status`, `foto`, `tgl_masuk`, `alamat`, `lulusan`, `username`, `password`, `blokir`) VALUES
(18, 1, 'Syahli', 'L', '2019-05-01', '081931745058', 'JU-06', 'Aktif', 'kambing-hitam-romansa.jpg', '2019-10-31', 'Pontianak', 'sma', 'syahli', 'f573ddf42d2b45645b608c863aff257c', 'N'),
(33, 1, 'Hibiscus rosa-sinensis', 'L', '2000-01-01', '', 'JU-06', 'Aktif', 'hibiscus.jpg', '2019-12-09', 'Indonesia', 'SD', 'hibiscus', 'ec07d733adeecee47a5573f257db6005', 'N'),
(34, 0, 'Gingerbread', 'P', '0', '0', 'JU-07', 'Aktif', '', '2000-01-01', '-', '-', 'ginger', '6f4ec514eee84cc58c8e610a0c87d7a2', 'N'),
(35, 0, 'Marshmallow', 'P', '1996-04-02', '089765432567', 'JU-08', 'Nonaktif', 'product_main_233122605_66320.jpg', '2000-01-01', '-', '-', 'marsh', 'd3ee527baae384aad8ef4ba0e308da7c', 'N'),
(36, 1, 'Lorem Ipsum', 'P', '2000-01-01', '12345', 'JU-10', 'Aktif', '', '2020-01-01', '-', '-', 'lorem', 'd2e16e6ef52a45b7468f1da56bba1953', 'N'),
(37, 1, 'Dolors Sit Amet', 'P', '1990-01-01', '', 'JU-10', 'Aktif', 'Desert.jpg', '2020-02-05', '-', '-', 'dolors', '82e2e29d72b4a557c7516beabf088886', 'N'),
(38, 1, 'kiki', 'L', '1995-03-01', '089123432234', 'JU-09', 'Aktif', 'icon_orang.png', '2020-03-09', 'Bantul', 'UGM', 'apt', 'd41d8cd98f00b204e9800998ecf8427e', 'N'),
(39, 1, 'Laboratorium', 'P', '2000-11-02', '000', 'JU-08', 'Aktif', '2.png', '2020-11-20', 'Lab', 'S4', 'lab', 'f9664ea1803311b35f81d07d8c9e072d', 'N'),
(42, 1, 'Saya Siputri', 'P', '2000-03-12', '0812345876909', 'JU-06', 'Aktif', 'Screenshot_2019-02-01-22-13-57.png', '2021-02-25', 'Gamping, Yogyakarta', '2020', 'saya', '20c1a26a55039b30866c9d0aa51953ca', 'N');

-- --------------------------------------------------------

--
-- Table structure for table `kasir_sementara`
--

CREATE TABLE `kasir_sementara` (
  `id` int(11) NOT NULL,
  `no_faktur` varchar(100) NOT NULL,
  `id_pasien` varchar(50) DEFAULT NULL,
  `id_dr` int(11) DEFAULT NULL,
  `id_kasir` int(11) DEFAULT NULL,
  `tanggal` date DEFAULT NULL,
  `no_urut` int(11) DEFAULT NULL,
  `nama` varchar(50) NOT NULL,
  `kode` varchar(50) DEFAULT NULL,
  `harga_beli` varchar(50) DEFAULT NULL,
  `harga` varchar(50) NOT NULL,
  `jumlah` int(11) NOT NULL,
  `diskon` int(11) DEFAULT NULL,
  `sub_total` varchar(50) DEFAULT NULL,
  `id_kk` int(11) NOT NULL,
  `jenis` varchar(50) NOT NULL,
  `status` varchar(50) DEFAULT NULL,
  `ket` varchar(50) DEFAULT NULL,
  `penginput` varchar(50) DEFAULT NULL,
  `kategori` int(11) NOT NULL,
  `tgl_visit` date DEFAULT NULL,
  `ganti_resep` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `kasir_sementara`
--

INSERT INTO `kasir_sementara` (`id`, `no_faktur`, `id_pasien`, `id_dr`, `id_kasir`, `tanggal`, `no_urut`, `nama`, `kode`, `harga_beli`, `harga`, `jumlah`, `diskon`, `sub_total`, `id_kk`, `jenis`, `status`, `ket`, `penginput`, `kategori`, `tgl_visit`, `ganti_resep`) VALUES
(272, '202103221026384', 'S.M.S.3', 16, NULL, '2021-03-22', 1, 'AB VASK  10 MG', '636628', '88800', '168000', 1, 0, '168000', 0, 'Produk', 'Belum Lunas', '-', 'Dokter', 0, NULL, NULL),
(273, '202103221026384', 'S.M.S.3', 16, NULL, '2021-03-22', 1, 'Hawedion', '150194', '40000', '45000', 1, 0, '45000', 0, 'Produk', 'Belum Lunas', '-', 'Dokter', 0, NULL, NULL),
(274, '202103221026384', 'S.M.S.3', 16, NULL, '2021-03-22', 1, 'Pemeriksaan Biasa', NULL, '', '12000', 1, 0, '12000', 0, 'Treatment', 'Belum Lunas', '-', 'Dokter', 1, '2021-03-22', NULL),
(276, '202103101118289', 'A999C', 16, NULL, '2021-03-22', 0, 'Pemeriksaan Biasa', NULL, '', '9000', 1, 0, '9000', 0, 'Treatment', 'Belum Lunas', '-', 'Dokter', 1, '2021-03-23', NULL),
(268, '202103181037394', 'A888C', 16, NULL, '2021-03-18', 1, 'ANTIMO DEWASA', '186097', '3750', '4620', 1, 0, '4620', 0, 'Produk', 'Belum Lunas', '-', 'Dokter', 0, NULL, NULL),
(269, '202103181037394', 'A888C', 16, NULL, '2021-03-18', 1, 'ALBOTHYL ( POLICRESULEN) 10 ML', '279603', '53000', '53000', 1, 0, '53000', 0, 'Produk', 'Belum Lunas', '-', 'Dokter', 0, NULL, NULL),
(270, '202103181037394', 'A888C', 16, NULL, '2021-03-18', 1, 'Pemeriksaan Biasa', NULL, '', '12000', 1, 0, '12000', 0, 'Treatment', 'Belum Lunas', '-', 'Dokter', 1, '2021-03-18', NULL),
(271, '202103181037394', 'A888C', 16, NULL, '2021-03-18', 1, 'Cek Telinga', NULL, '', '79000', 1, 0, '79000', 0, 'Treatment', 'Belum Lunas', '-', 'Dokter', 1, '2021-03-18', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `kategori`
--

CREATE TABLE `kategori` (
  `id_kategori` int(11) NOT NULL,
  `kategori` varchar(20) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `kategori`
--

INSERT INTO `kategori` (`id_kategori`, `kategori`) VALUES
(1, 'Krim Malam'),
(2, 'Krim Siang'),
(3, 'Lipstik'),
(4, 'Lipcream '),
(5, 'Foundation'),
(6, 'Primer'),
(7, 'Masker'),
(9, 'Obat Minum'),
(13, 'Treatment'),
(12, 'Infus whitening'),
(14, 'Serum'),
(15, 'Toner'),
(16, 'Facial wash'),
(17, 'Body Lotion'),
(18, 'Bedak'),
(19, 'P3K'),
(20, 'Obat Luar'),
(21, 'Tetes'),
(23, 'Injeksi/Suntik'),
(25, 'Gas'),
(26, 'Semprot');

-- --------------------------------------------------------

--
-- Table structure for table `kategori_biaya`
--

CREATE TABLE `kategori_biaya` (
  `id` int(11) NOT NULL,
  `kategori` text DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `kategori_biaya`
--

INSERT INTO `kategori_biaya` (`id`, `kategori`) VALUES
(1, 'Biaya Tindakan Dokter'),
(2, 'Jasa Laboratorium'),
(4, 'Administrasi RS'),
(5, 'Biaya Apoteker'),
(6, 'Biaya Rawat Inap'),
(7, 'Biaya Operasi'),
(12, 'Obat'),
(11, 'Perawatan');

-- --------------------------------------------------------

--
-- Table structure for table `kategori_pelanggan`
--

CREATE TABLE `kategori_pelanggan` (
  `id_katpel` int(11) NOT NULL,
  `kategori` varchar(25) NOT NULL,
  `keterangan` text NOT NULL,
  `diskon_p` varchar(25) NOT NULL,
  `diskon_t` varchar(25) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `kategori_pelanggan`
--

INSERT INTO `kategori_pelanggan` (`id_katpel`, `kategori`, `keterangan`, `diskon_p`, `diskon_t`) VALUES
(1, 'A', 'Paling Sering Berkunjung', '50', '40'),
(2, 'B', 'Pelanggan Dengan Pembelian Terbanyak', '30', '20'),
(3, 'C', 'Pelanggan Paling Suka Promo', '20', '10'),
(5, 'D', 'Pelanggan Biasa', '0', '0'),
(7, 'P', 'Diskon untuk pelajar', '10', '10');

-- --------------------------------------------------------

--
-- Table structure for table `kehadiran_dr`
--

CREATE TABLE `kehadiran_dr` (
  `id_keh` int(11) NOT NULL,
  `id_dr` int(11) NOT NULL,
  `id_kk` int(11) NOT NULL,
  `tanggal` date NOT NULL,
  `jam` time NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `kehadiran_dr`
--

INSERT INTO `kehadiran_dr` (`id_keh`, `id_dr`, `id_kk`, `tanggal`, `jam`) VALUES
(1, 9, 0, '2020-03-09', '09:56:07'),
(2, 10, 0, '2020-03-09', '09:57:38'),
(3, 12, 0, '2020-03-09', '11:14:22'),
(4, 9, 0, '2020-03-10', '09:45:00'),
(5, 9, 0, '2020-03-11', '15:07:28'),
(6, 9, 0, '2020-03-12', '13:28:16'),
(7, 10, 0, '2020-04-10', '09:27:29'),
(8, 10, 0, '2020-04-11', '09:31:06'),
(9, 9, 0, '2020-04-11', '13:52:16'),
(10, 10, 0, '2020-04-13', '11:05:08'),
(11, 9, 0, '2020-04-13', '11:05:49'),
(12, 9, 0, '2020-04-14', '09:22:33'),
(13, 9, 0, '2020-04-15', '06:39:32'),
(14, 11, 0, '2020-04-15', '14:38:07'),
(15, 12, 0, '2020-04-24', '15:39:07'),
(16, 9, 0, '2020-04-30', '12:27:25'),
(17, 12, 0, '2020-04-30', '14:45:48'),
(18, 9, 0, '2020-05-01', '11:58:36'),
(19, 9, 0, '2020-05-04', '12:06:09'),
(20, 9, 0, '2020-05-05', '12:08:12'),
(21, 11, 0, '2020-05-05', '15:37:31'),
(22, 9, 0, '2020-05-06', '00:44:01'),
(23, 11, 0, '2020-05-06', '15:48:55'),
(24, 9, 0, '2020-05-07', '12:40:18'),
(25, 9, 0, '2020-05-08', '12:19:46'),
(26, 9, 0, '2020-05-09', '12:35:38'),
(27, 9, 0, '2020-05-11', '15:53:18'),
(28, 9, 0, '2020-05-12', '11:37:42'),
(29, 9, 0, '2020-05-13', '11:36:48'),
(30, 9, 0, '2020-05-14', '12:18:30'),
(31, 9, 0, '2020-05-15', '11:39:42'),
(32, 9, 0, '2020-05-16', '13:43:28'),
(33, 9, 0, '2020-05-26', '16:20:32'),
(34, 11, 0, '2020-05-26', '17:13:31'),
(35, 9, 0, '2020-05-27', '03:56:56'),
(36, 9, 0, '2020-05-28', '14:33:34'),
(37, 9, 0, '2020-05-29', '14:59:27'),
(38, 9, 0, '2020-05-30', '14:34:49'),
(39, 9, 0, '2020-06-01', '07:41:44'),
(40, 9, 0, '2020-06-04', '07:55:25'),
(41, 9, 0, '2020-06-05', '14:51:17'),
(42, 9, 0, '2020-06-06', '14:34:45'),
(43, 9, 0, '2020-06-09', '15:46:08'),
(44, 9, 0, '2020-06-10', '05:21:14'),
(45, 9, 0, '2020-06-19', '14:50:13'),
(46, 9, 0, '2020-06-23', '16:43:20'),
(47, 9, 0, '2020-06-24', '10:11:41'),
(48, 11, 0, '2020-06-24', '10:36:32'),
(49, 9, 0, '2020-06-25', '09:29:25'),
(50, 9, 0, '2020-08-01', '14:24:54'),
(51, 9, 0, '2020-08-18', '14:33:36'),
(52, 11, 0, '2020-11-20', '14:54:50'),
(53, 11, 0, '2020-11-21', '15:03:24'),
(54, 11, 0, '2020-11-23', '14:32:14'),
(55, 11, 0, '2020-12-03', '11:47:25'),
(56, 11, 0, '2020-12-07', '21:07:59'),
(57, 11, 0, '2020-12-08', '12:21:06'),
(58, 11, 0, '2020-12-10', '19:17:58'),
(59, 11, 0, '2021-01-19', '12:01:23'),
(60, 11, 0, '2021-01-21', '11:06:10'),
(61, 11, 0, '2021-02-01', '11:05:51'),
(62, 11, 0, '2021-02-02', '10:47:08'),
(63, 11, 0, '2021-02-03', '10:44:34'),
(64, 11, 0, '2021-02-04', '11:05:37'),
(65, 11, 0, '2021-02-05', '10:37:21'),
(66, 11, 0, '2021-02-08', '11:04:11'),
(67, 11, 0, '2021-02-09', '11:35:39'),
(68, 11, 0, '2021-02-11', '10:50:00'),
(69, 11, 0, '2021-02-15', '11:34:23'),
(70, 11, 0, '2021-02-16', '12:17:49'),
(71, 11, 0, '2021-02-23', '13:02:03'),
(72, 11, 0, '2021-02-24', '10:34:40'),
(73, 11, 0, '2021-02-25', '11:02:34'),
(74, 11, 0, '2021-03-04', '10:35:10'),
(75, 11, 0, '2021-03-05', '11:13:51'),
(76, 11, 0, '2021-03-08', '11:43:14'),
(77, 11, 0, '2021-03-09', '11:13:28'),
(78, 16, 0, '2021-03-10', '11:05:47'),
(79, 16, 0, '2021-03-12', '10:29:50'),
(80, 16, 0, '2021-03-15', '11:08:37'),
(81, 16, 0, '2021-03-16', '11:00:22'),
(82, 16, 0, '2021-03-17', '12:05:53'),
(83, 16, 0, '2021-03-18', '10:38:22'),
(84, 16, 0, '2021-03-22', '10:28:04'),
(85, 11, 0, '2021-03-22', '14:03:18');

-- --------------------------------------------------------

--
-- Table structure for table `kirim_stok`
--

CREATE TABLE `kirim_stok` (
  `id` int(11) NOT NULL,
  `no_peng` varchar(15) NOT NULL,
  `id_ju` varchar(5) NOT NULL,
  `tgl_kirim` datetime NOT NULL,
  `ket` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `kirim_stok`
--

INSERT INTO `kirim_stok` (`id`, `no_peng`, `id_ju`, `tgl_kirim`, `ket`) VALUES
(6, 'PS-00001', 'JU-01', '2021-01-04 15:10:05', 'Kirim'),
(7, 'PS-00002', 'JU-01', '2021-01-05 12:07:29', 'Bismillah'),
(8, 'PS-00003', 'JU-01', '2021-01-14 12:17:58', 'Kirim'),
(9, 'PS-00004', 'JU-01', '2021-01-14 12:29:32', 'dghhj'),
(10, 'PS-00005', 'JU-01', '2021-01-19 15:58:39', 'Kirim'),
(11, 'PS-00006', 'JU-01', '2021-01-19 16:08:28', 'Kirim ya'),
(13, 'PS-00008', 'JU-01', '2021-01-26 14:27:11', 'Kirim'),
(14, 'PS-00009', 'JU-01', '2021-02-05 15:25:30', 'Kirim Ke Cabang'),
(15, 'PS-00010', 'JU-01', '2021-02-25 14:54:51', 'Kirim Gudang Penjualan');

-- --------------------------------------------------------

--
-- Table structure for table `krisar`
--

CREATE TABLE `krisar` (
  `id_krisar` int(11) NOT NULL,
  `tanggal` date NOT NULL,
  `id_pasien` varchar(25) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `no_telp` varchar(25) NOT NULL,
  `beauty` varchar(25) NOT NULL,
  `krisar` text NOT NULL,
  `tindakan` text NOT NULL,
  `id_kk` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `log`
--

CREATE TABLE `log` (
  `id` int(11) NOT NULL,
  `username` varchar(25) NOT NULL,
  `aksi` text NOT NULL,
  `tanggal` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `log`
--

INSERT INTO `log` (`id`, `username`, `aksi`, `tanggal`) VALUES
(1, 'hibiscus', 'Berhasil Login dengan IP 118.96.157.179', '2020-02-25 18:48:35'),
(2, 'username', 'Gagal Login', '2020-03-09 02:32:17'),
(3, 'user', 'Gagal Login', '2020-03-09 02:32:56'),
(4, 'username', 'Gagal Login', '2020-03-09 02:33:19'),
(5, 'admin', 'Gagal Login', '2020-03-09 02:34:10'),
(6, 'admin', 'Gagal Login', '2020-03-09 02:34:36'),
(7, 'username', 'Gagal Login', '2020-03-09 02:34:54'),
(8, 'drwatson', 'Gagal Login', '2020-03-09 02:35:03'),
(9, 'admin', 'Gagal Login', '2020-03-09 02:35:56'),
(10, 'admin', 'Gagal Login', '2020-03-09 02:35:58'),
(11, 'drwatson', 'Gagal Login', '2020-03-09 02:36:26'),
(12, 'admin', 'Gagal Login', '2020-03-09 02:36:33'),
(13, 'admin', 'Gagal Login', '2020-03-09 02:36:44'),
(14, 'drwatson', 'Gagal Login', '2020-03-09 02:36:51'),
(15, 'admin', 'Gagal Login', '2020-03-09 02:36:56'),
(16, 'drstrange', 'Gagal Login', '2020-03-09 02:37:23'),
(17, 'ginger', 'Berhasil Login dengan IP 114.125.111.219', '2020-03-09 02:37:39'),
(18, 'ginger', 'Gagal Login', '2020-03-09 02:37:41'),
(19, 'hibiscus', 'Berhasil Login dengan IP 36.72.214.67', '2020-03-09 02:37:47'),
(20, 'drstrange', 'Gagal Login', '2020-03-09 02:37:56'),
(21, 'ginger', 'Berhasil Login dengan IP 36.72.214.67', '2020-03-09 02:38:20'),
(22, 'marsh', 'Gagal Login', '2020-03-09 02:38:20'),
(23, 'admin', 'Berhasil Login dengan IP 36.72.214.67', '2020-03-09 02:38:44'),
(24, 'drstrange', 'Gagal Login', '2020-03-09 02:39:25'),
(25, 'ginger', 'Berhasil Login dengan IP 114.125.109.66', '2020-03-09 02:39:38'),
(26, 'marsh', 'Gagal Login', '2020-03-09 02:40:07'),
(27, 'ginger', 'Berhasil Login dengan IP 36.72.214.67', '2020-03-09 02:40:23'),
(28, 'hibiscus', 'Gagal Login', '2020-03-09 02:40:28'),
(29, 'lorem', 'Gagal Login', '2020-03-09 02:40:37'),
(30, 'ginger', 'Berhasil Login dengan IP 114.125.109.237', '2020-03-09 02:40:50'),
(31, 'marsh', 'Berhasil Login dengan IP 36.72.214.67', '2020-03-09 02:41:56'),
(32, 'ginger', 'Berhasil Login dengan IP 36.72.214.67', '2020-03-09 02:42:03'),
(33, 'lorem', 'Gagal Login', '2020-03-09 02:42:08'),
(34, 'marsh', 'Berhasil Login dengan IP 140.213.46.175', '2020-03-09 02:43:16'),
(35, 'ginger', 'Berhasil Login dengan IP 114.125.124.252', '2020-03-09 02:44:07'),
(36, 'admin', 'Gagal Login', '2020-03-09 02:44:35'),
(37, 'hibiscus', 'Gagal Login', '2020-03-09 02:45:01'),
(38, 'drwatson', 'Gagal Login', '2020-03-09 02:45:04'),
(39, 'hibiscus', 'Gagal Login', '2020-03-09 02:45:17'),
(40, 'lorem', 'Gagal Login', '2020-03-09 02:45:30'),
(41, 'lorem', 'Berhasil Login dengan IP 36.72.214.67', '2020-03-09 02:46:05'),
(42, 'ginger', 'Berhasil Login dengan IP 140.213.46.175', '2020-03-09 02:46:23'),
(43, 'drwatson', 'Gagal Login', '2020-03-09 02:48:12'),
(44, 'admin', 'Berhasil Login dengan IP 140.213.46.175', '2020-03-09 02:48:19'),
(45, 'marsh', 'Berhasil Login dengan IP 36.72.214.67', '2020-03-09 02:48:48'),
(46, 'admin', 'Gagal Login', '2020-03-09 02:50:05'),
(47, 'ginger', 'Berhasil Login dengan IP 114.125.110.238', '2020-03-09 02:52:40'),
(48, 'admin', 'Berhasil Login dengan IP 36.72.214.67', '2020-03-09 02:55:16'),
(49, 'drwatson', 'Berhasil Login dengan IP 36.72.214.67', '2020-03-09 02:55:43'),
(50, 'ginger', 'Berhasil Login dengan IP 114.125.124.195', '2020-03-09 02:56:46'),
(51, 'drstrange', 'Berhasil Login dengan IP 36.72.214.67', '2020-03-09 02:57:14'),
(52, 'drstrange', 'Berhasil Login dengan IP 140.213.46.175', '2020-03-09 02:57:19'),
(53, 'marsh', 'Gagal Login', '2020-03-09 02:57:25'),
(54, 'hibiscus', 'Gagal Login', '2020-03-09 02:57:52'),
(55, 'admin', 'Berhasil Login dengan IP 36.72.214.67', '2020-03-09 02:58:19'),
(56, 'lorem', 'Gagal Login', '2020-03-09 02:58:38'),
(57, 'admin', 'Berhasil Login dengan IP 114.125.109.104', '2020-03-09 02:59:47'),
(58, 'admin', 'Berhasil Login dengan IP 36.72.214.67', '2020-03-09 02:59:48'),
(59, 'hibiscus', 'Berhasil Login dengan IP 140.213.46.175', '2020-03-09 03:01:13'),
(60, 'hibiscus', 'Gagal Login', '2020-03-09 03:01:42'),
(61, 'hibiscus', 'Gagal Login', '2020-03-09 03:01:59'),
(62, 'drstrange', 'Gagal Login', '2020-03-09 03:03:07'),
(63, 'admin', 'Gagal Login', '2020-03-09 03:04:18'),
(64, 'admin', 'Berhasil Login dengan IP 140.213.46.175', '2020-03-09 03:05:12'),
(65, 'admin', 'Gagal Login', '2020-03-09 03:05:42'),
(66, 'admin', 'Berhasil Login dengan IP 114.125.124.83', '2020-03-09 03:05:53'),
(67, 'admin', 'Berhasil Login dengan IP 140.213.46.175', '2020-03-09 03:05:54'),
(68, 'drwatson', 'Berhasil Login dengan IP 140.213.46.175', '2020-03-09 03:06:11'),
(69, 'drwatson', 'Gagal Login', '2020-03-09 03:07:06'),
(70, 'drwatson', 'Berhasil Login dengan IP 140.213.46.175', '2020-03-09 03:07:17'),
(71, 'admin', 'Berhasil Login dengan IP 140.213.46.175', '2020-03-09 03:07:30'),
(72, 'drstrange', 'Gagal Login', '2020-03-09 03:09:28'),
(73, 'drstrange', 'Berhasil Login dengan IP 36.72.214.67', '2020-03-09 03:09:46'),
(74, 'marsh', 'Berhasil Login dengan IP 36.72.214.67', '2020-03-09 03:10:15'),
(75, 'hibiscus', 'Berhasil Login dengan IP 36.72.214.67', '2020-03-09 03:10:39'),
(76, 'hibiscus', 'Berhasil Login dengan IP 140.213.46.175', '2020-03-09 03:11:57'),
(77, 'admin', 'Hapus Data Produk (1)', '2020-03-09 03:16:56'),
(78, 'hibiscus', 'Berhasil Login dengan IP 36.72.214.67', '2020-03-09 03:23:50'),
(79, 'hibiscus', 'Berhasil Login dengan IP 140.213.46.175', '2020-03-09 03:25:43'),
(80, 'perawat', 'Gagal Login', '2020-03-09 03:27:40'),
(81, 'lorem', 'Berhasil Login dengan IP 140.213.46.175', '2020-03-09 03:27:52'),
(82, 'lorem', 'Gagal Login', '2020-03-09 03:36:27'),
(83, 'marsh', 'Gagal Login', '2020-03-09 03:40:42'),
(84, 'admin', 'Berhasil Login dengan IP 140.213.46.175', '2020-03-09 03:40:58'),
(85, 'admin', 'Berhasil Login dengan IP 36.72.214.67', '2020-03-09 03:41:02'),
(86, 'marsh', 'Berhasil Login dengan IP 114.125.124.83', '2020-03-09 03:41:17'),
(87, 'admin', 'Berhasil Login dengan IP 114.125.110.238', '2020-03-09 03:42:00'),
(88, 'admin', 'Data Treatment Baru ()', '2020-03-09 03:45:40'),
(89, 'admin', 'Data Treatment Baru ()', '2020-03-09 03:47:15'),
(90, 'admin', 'Hapus Ruangan (8)', '2020-03-09 03:48:38'),
(91, 'admin', 'Data Treatment Baru ()', '2020-03-09 03:50:03'),
(92, 'admin', 'Edit Data Ruangan (2)', '2020-03-09 03:50:48'),
(93, 'admin', 'Hapus Ruangan (3)', '2020-03-09 03:51:01'),
(94, 'drwatson', 'Berhasil Login dengan IP 36.72.214.67', '2020-03-09 03:55:20'),
(95, 'drwatson', 'Berhasil Login dengan IP 114.125.109.237', '2020-03-09 03:56:07'),
(96, 'drwatson', 'Gagal Login', '2020-03-09 04:01:58'),
(97, 'drwatson', 'Berhasil Login dengan IP 36.72.214.67', '2020-03-09 04:02:19'),
(98, 'drstrange', 'Berhasil Login dengan IP 36.72.214.67', '2020-03-09 04:02:49'),
(99, 'drstrange', 'Berhasil Login dengan IP 114.125.109.66', '2020-03-09 04:03:01'),
(100, 'ginger', 'Berhasil Login dengan IP 114.125.111.239', '2020-03-09 04:03:39'),
(101, 'marsh', 'Berhasil Login dengan IP 36.72.214.67', '2020-03-09 04:04:01'),
(102, 'hibiscus', 'Berhasil Login dengan IP 114.125.111.219', '2020-03-09 04:05:06'),
(103, 'ginger', 'Berhasil Login dengan IP 36.72.214.67', '2020-03-09 04:05:17'),
(104, 'hibiscus', 'Berhasil Login dengan IP 36.72.214.67', '2020-03-09 04:05:38'),
(105, 'hibiscus', 'Gagal Login', '2020-03-09 04:06:56'),
(106, 'hibiscus', 'Gagal Login', '2020-03-09 04:07:12'),
(107, 'hibiscus', 'Berhasil Login dengan IP 36.72.214.67', '2020-03-09 04:07:34'),
(108, 'hibiscus', 'Gagal Login', '2020-03-09 04:08:21'),
(109, 'hibiscus', 'Berhasil Login dengan IP 114.125.124.252', '2020-03-09 04:08:57'),
(110, 'drcharles', 'Berhasil Login dengan IP 36.72.214.67', '2020-03-09 04:13:58'),
(111, 'hibiscus', 'Edit KategoriKa Produk (1)', '2020-03-09 04:14:17'),
(112, 'marsh', 'Gagal Login', '2020-03-09 04:16:50'),
(113, 'ginger', 'Gagal Login', '2020-03-09 04:16:59'),
(114, 'ginger', 'Berhasil Login dengan IP 36.72.214.67', '2020-03-09 04:17:08'),
(115, 'lorem', 'Berhasil Login dengan IP 36.72.214.67', '2020-03-09 04:17:51'),
(116, 'hibiscus', 'Edit KategoriKa Produk (2)', '2020-03-09 04:18:23'),
(117, 'hibiscus', 'Edit KategoriKa Produk (5)', '2020-03-09 04:19:04'),
(118, 'hibiscus', 'Edit KategoriKa Produk (5)', '2020-03-09 04:19:31'),
(119, 'hibiscus', 'Edit KategoriKa Produk (2)', '2020-03-09 04:19:33'),
(120, 'hibiscus', 'Edit KategoriKa Produk (5)', '2020-03-09 04:19:53'),
(121, 'hibiscus', 'Edit KategoriKa Produk (5)', '2020-03-09 04:20:10'),
(122, 'hibiscus', 'Edit KategoriKa Produk (5)', '2020-03-09 04:20:33'),
(123, 'hibiscus', 'Edit KategoriKa Produk (5)', '2020-03-09 04:20:35'),
(124, 'hibiscus', 'Hapus Data Pasien (1)', '2020-03-09 04:20:59'),
(125, 'lorem', 'Berhasil Login dengan IP 114.125.124.121', '2020-03-09 04:22:51'),
(126, 'hibiscus', 'Berhasil Login dengan IP 140.213.46.175', '2020-03-09 04:22:52'),
(127, 'drstrange', 'Gagal Login', '2020-03-09 04:25:01'),
(128, 'drstrange', 'Berhasil Login dengan IP 114.125.108.211', '2020-03-09 04:25:18'),
(129, 'drwatson', 'Berhasil Login dengan IP 114.125.124.195', '2020-03-09 04:26:35'),
(130, 'marsh', 'Berhasil Login dengan IP 36.72.214.67', '2020-03-09 04:27:43'),
(131, 'hibiscus', 'Berhasil Login dengan IP 36.72.214.67', '2020-03-09 04:30:10'),
(132, 'lorem', 'Berhasil Login dengan IP 114.125.124.195', '2020-03-09 04:33:11'),
(133, 'lorem', 'Berhasil Login dengan IP 36.72.214.67', '2020-03-09 04:33:54'),
(134, 'drcharles', 'Berhasil Login dengan IP 36.72.214.67', '2020-03-09 04:34:26'),
(135, 'marsh', 'Gagal Login', '2020-03-09 04:36:13'),
(136, 'marsh', 'Berhasil Login dengan IP 36.72.214.67', '2020-03-09 04:36:24'),
(137, 'lorem', 'Berhasil Login dengan IP 36.72.214.67', '2020-03-09 04:37:18'),
(138, 'drcharles', 'Berhasil Login dengan IP 36.72.214.67', '2020-03-09 04:38:20'),
(139, 'hibiscus', 'Berhasil Login dengan IP 36.72.214.67', '2020-03-09 04:40:13'),
(140, 'lorem', 'Berhasil Login dengan IP 36.72.214.67', '2020-03-09 04:46:39'),
(141, 'drstrange', 'Gagal Login', '2020-03-09 04:48:35'),
(142, 'drstrange', 'Gagal Login', '2020-03-09 04:49:04'),
(143, 'drwatson', 'Berhasil Login dengan IP 140.213.46.175', '2020-03-09 04:49:26'),
(144, 'marsh', 'Berhasil Login dengan IP 140.213.46.175', '2020-03-09 04:50:19'),
(145, 'drstrange', 'Berhasil Login dengan IP 36.72.214.67', '2020-03-09 06:09:46'),
(146, 'lorem', 'Berhasil Login dengan IP 114.125.81.105', '2020-03-09 06:15:15'),
(147, 'lorem', 'Berhasil Login dengan IP 36.72.214.67', '2020-03-09 06:15:26'),
(148, 'marsh', 'Berhasil Login dengan IP 114.125.81.105', '2020-03-09 06:15:28'),
(149, 'hibiscus', 'Gagal Login', '2020-03-09 06:16:28'),
(150, 'marsh', 'Berhasil Login dengan IP 114.125.81.105', '2020-03-09 06:17:08'),
(151, 'admin', 'Berhasil Login dengan IP 36.72.214.67', '2020-03-09 06:17:49'),
(152, 'admin', 'Gagal Login', '2020-03-09 06:17:58'),
(153, 'admin', 'Berhasil Login dengan IP 114.125.81.105', '2020-03-09 06:18:19'),
(154, 'hibiscus', 'Berhasil Login dengan IP 36.72.214.67', '2020-03-09 06:19:22'),
(155, 'lorem', 'Gagal Login', '2020-03-09 06:20:14'),
(156, 'lorem', 'Berhasil Login dengan IP 114.125.81.105', '2020-03-09 06:20:25'),
(157, 'marsh', 'Berhasil Login dengan IP 114.125.81.105', '2020-03-09 06:23:15'),
(158, 'marsh', 'Berhasil Login dengan IP 114.125.81.105', '2020-03-09 06:24:20'),
(159, 'marsh', 'Berhasil Login dengan IP 36.72.214.67', '2020-03-09 06:25:41'),
(160, 'admin', 'Gagal Login', '2020-03-09 06:25:41'),
(161, 'admin', 'Berhasil Login dengan IP 114.125.81.105', '2020-03-09 06:25:55'),
(162, 'admin', 'Berhasil Login dengan IP 114.125.81.105', '2020-03-09 06:26:59'),
(163, 'hibiscus', 'Berhasil Login dengan IP 36.72.214.67', '2020-03-09 06:29:55'),
(164, 'marsh', 'Berhasil Login dengan IP 36.72.214.67', '2020-03-09 06:31:40'),
(165, 'drwatson', 'Berhasil Login dengan IP 36.72.214.67', '2020-03-09 06:31:58'),
(166, 'admin', 'Berhasil Login dengan IP 36.72.214.67', '2020-03-09 06:34:44'),
(167, 'admin', 'Berhasil Login dengan IP 36.72.214.67', '2020-03-09 06:35:35'),
(168, 'hibiskus', 'Gagal Login', '2020-03-09 06:38:43'),
(169, 'hibiskus', 'Gagal Login', '2020-03-09 06:38:51'),
(170, 'hibiscus', 'Berhasil Login dengan IP 36.72.214.67', '2020-03-09 06:39:01'),
(171, 'ginger', 'Gagal Login', '2020-03-09 06:39:57'),
(172, 'ginger', 'Gagal Login', '2020-03-09 06:40:32'),
(173, 'ginger', 'Gagal Login', '2020-03-09 06:43:38'),
(174, 'ginger', 'Berhasil Login dengan IP 114.125.81.105', '2020-03-09 06:43:44'),
(175, 'ginger', 'Berhasil Login dengan IP 36.72.214.67', '2020-03-09 06:44:07'),
(176, 'hibiscus', 'Berhasil Login dengan IP 36.72.214.67', '2020-03-09 06:44:15'),
(177, 'hibiscus', 'Edit KategoriKa Produk (6)', '2020-03-09 06:44:25'),
(178, 'admin', 'Berhasil Login dengan IP 114.125.81.105', '2020-03-09 06:46:37'),
(179, 'admin', 'Berhasil Login dengan IP 114.125.81.114', '2020-03-09 06:47:07'),
(180, 'drstrange', 'Gagal Login', '2020-03-09 06:47:49'),
(181, 'drstrange', 'Berhasil Login dengan IP 36.72.214.67', '2020-03-09 06:48:16'),
(182, 'hibiscus', 'Berhasil Login dengan IP 36.72.214.67', '2020-03-09 06:49:07'),
(183, 'drwatson', 'Berhasil Login dengan IP 36.72.214.67', '2020-03-09 06:52:39'),
(184, 'marsh', 'Berhasil Login dengan IP 36.72.214.67', '2020-03-09 06:52:58'),
(185, 'ginger', 'Berhasil Login dengan IP 36.72.214.67', '2020-03-09 06:53:43'),
(186, 'lorem', 'Berhasil Login dengan IP 36.72.214.67', '2020-03-09 06:54:00'),
(187, 'hibiscus', 'Berhasil Login dengan IP 36.72.214.67', '2020-03-09 06:54:23'),
(188, 'drwatson', 'Berhasil Login dengan IP 36.72.214.67', '2020-03-09 06:55:28'),
(189, 'hibiscus', 'Gagal Login', '2020-03-09 07:00:57'),
(190, 'hibiscus', 'Berhasil Login dengan IP 36.72.214.67', '2020-03-09 07:01:04'),
(191, 'admin', 'Berhasil Login dengan IP 36.72.214.67', '2020-03-09 07:01:17'),
(192, 'ginger', 'Berhasil Login dengan IP 36.72.214.67', '2020-03-09 07:01:53'),
(193, 'admin', 'Berhasil Login dengan IP 36.72.214.67', '2020-03-09 07:03:40'),
(194, 'hibiscus', 'Gagal Login', '2020-03-09 07:04:41'),
(195, 'hibiscus', 'Berhasil Login dengan IP 36.72.214.67', '2020-03-09 07:04:47'),
(196, 'drstrange', 'Berhasil Login dengan IP 36.72.214.67', '2020-03-09 07:06:16'),
(197, 'marsh', 'Berhasil Login dengan IP 36.72.214.67', '2020-03-09 07:07:32'),
(198, 'drstrange', 'Berhasil Login dengan IP 36.72.214.67', '2020-03-09 07:08:47'),
(199, 'marsh', 'Berhasil Login dengan IP 36.72.214.67', '2020-03-09 07:09:23'),
(200, 'drstrange', 'Berhasil Login dengan IP 36.72.214.67', '2020-03-09 07:10:30'),
(201, 'drwatson', 'Berhasil Login dengan IP 114.125.81.105', '2020-03-09 07:10:48'),
(202, 'drstrange', 'Berhasil Login dengan IP 114.125.81.105', '2020-03-09 07:11:17'),
(203, 'lorem', 'Berhasil Login dengan IP 36.72.214.67', '2020-03-09 07:12:10'),
(204, 'hibiscus', 'Berhasil Login dengan IP 36.72.214.67', '2020-03-09 07:12:47'),
(205, 'ginger', 'Berhasil Login dengan IP 114.125.81.105', '2020-03-09 07:13:02'),
(206, 'marsh', 'Berhasil Login dengan IP 114.125.81.114', '2020-03-09 07:16:08'),
(207, 'ginger', 'Gagal Login', '2020-03-09 07:19:13'),
(208, 'ginger', 'Berhasil Login dengan IP 36.72.214.67', '2020-03-09 07:19:22'),
(209, 'drwatson', 'Berhasil Login dengan IP 36.72.214.67', '2020-03-09 07:20:20'),
(210, 'marsh', 'Berhasil Login dengan IP 114.125.81.105', '2020-03-09 07:21:09'),
(211, 'marsh', 'Berhasil Login dengan IP 36.72.214.67', '2020-03-09 07:22:33'),
(212, 'admin', 'Berhasil Login dengan IP 36.72.214.67', '2020-03-09 07:22:56'),
(213, 'hibiscus', 'Berhasil Login dengan IP 114.125.81.105', '2020-03-09 07:24:05'),
(214, 'drstrange', 'Berhasil Login dengan IP 36.72.214.67', '2020-03-09 07:24:06'),
(215, 'hibiscus', 'Berhasil Login dengan IP 36.72.214.67', '2020-03-09 07:25:46'),
(216, 'admin', 'Berhasil Login dengan IP 36.72.214.67', '2020-03-09 07:27:09'),
(217, 'hibiscus', 'Berhasil Login dengan IP 36.72.214.67', '2020-03-09 07:27:33'),
(218, 'drcharles', 'Gagal Login', '2020-03-09 07:27:58'),
(219, 'drcharles', 'Gagal Login', '2020-03-09 07:28:08'),
(220, 'marsh', 'Berhasil Login dengan IP 36.72.214.67', '2020-03-09 07:28:58'),
(221, 'admin', 'Berhasil Login dengan IP 36.72.214.67', '2020-03-09 07:29:49'),
(222, 'hibiscus', 'Edit KategoriKa Produk (5)', '2020-03-09 07:32:12'),
(223, 'admin', 'Berhasil Login dengan IP 114.125.81.114', '2020-03-09 07:34:01'),
(224, 'hibiscus', 'Edit KategoriKa Produk (2)', '2020-03-09 07:41:08'),
(225, 'admin', 'Hapus Data Produk (342513)', '2020-03-09 07:46:02'),
(226, 'ginger', 'Gagal Login', '2020-03-09 07:46:54'),
(227, 'ginger', 'Berhasil Login dengan IP 36.72.214.67', '2020-03-09 07:47:43'),
(228, 'drstrange', 'Gagal Login', '2020-03-09 07:51:30'),
(229, 'drwatson', 'Berhasil Login dengan IP 36.72.214.67', '2020-03-09 07:51:55'),
(230, 'lorem', 'Berhasil Login dengan IP 36.72.214.67', '2020-03-09 07:53:43'),
(231, 'marsh', 'Gagal Login', '2020-03-09 08:04:27'),
(232, 'lorem', 'Berhasil Login dengan IP 36.72.214.67', '2020-03-09 08:04:45'),
(233, 'drwatson', 'Berhasil Login dengan IP 36.72.214.67', '2020-03-09 08:07:02'),
(234, 'drwatson', 'Berhasil Login dengan IP 36.72.214.67', '2020-03-09 08:13:44'),
(235, 'drstrange', 'Gagal Login', '2020-03-09 08:14:07'),
(236, 'ginger', 'Berhasil Login dengan IP 36.72.214.67', '2020-03-09 08:32:08'),
(237, 'ginger', 'Berhasil Login dengan IP 114.125.81.114', '2020-03-09 08:38:47'),
(238, 'hibiscus', 'Berhasil Login dengan IP 114.125.81.114', '2020-03-09 08:43:15'),
(239, 'ginger', 'Gagal Login', '2020-03-09 08:46:00'),
(240, 'lorem', 'Berhasil Login dengan IP 36.72.214.67', '2020-03-09 08:46:08'),
(241, 'ginger', 'Berhasil Login dengan IP 36.72.214.67', '2020-03-09 08:48:10'),
(242, 'hibiscus', 'Berhasil Login dengan IP 36.72.214.67', '2020-03-09 08:48:12'),
(243, 'admin', 'Gagal Login', '2020-03-09 08:54:51'),
(244, 'admin', 'Berhasil Login dengan IP 36.72.214.67', '2020-03-09 08:54:59'),
(245, 'admin', 'Berhasil Login dengan IP 114.125.81.114', '2020-03-09 08:59:34'),
(246, 'drwatson', 'Berhasil Login dengan IP 36.72.214.67', '2020-03-09 09:00:33'),
(247, 'admin', 'Berhasil Login dengan IP 36.72.214.67', '2020-03-10 02:31:31'),
(248, 'drwatson', 'Gagal Login', '2020-03-10 02:44:26'),
(249, 'drwatson', 'Berhasil Login dengan IP 36.72.214.67', '2020-03-10 02:44:36'),
(250, 'admin', 'Berhasil Login dengan IP 36.72.214.67', '2020-03-10 03:23:45'),
(251, 'admin', 'Berhasil Login dengan IP 36.72.214.67', '2020-03-10 03:29:25'),
(252, 'admin', 'Gagal Login', '2020-03-10 03:31:25'),
(253, 'hibiscus', 'Berhasil Login dengan IP 36.72.214.67', '2020-03-10 03:31:53'),
(254, 'perawat', 'Gagal Login', '2020-03-10 03:40:16'),
(255, 'lorem', 'Berhasil Login dengan IP 36.72.214.67', '2020-03-10 03:40:28'),
(256, 'admin', 'Gagal Login', '2020-03-11 07:41:29'),
(257, 'admin', 'Berhasil Login dengan IP 36.72.214.67', '2020-03-11 07:41:43'),
(258, 'lorem', 'Berhasil Login dengan IP 36.72.214.67', '2020-03-11 07:42:14'),
(259, 'admin', 'Berhasil Login dengan IP 36.72.214.67', '2020-03-11 07:42:50'),
(260, 'admin', 'Berhasil Login dengan IP 36.72.214.67', '2020-03-11 07:43:28'),
(261, 'hibiscus', 'Berhasil Login dengan IP 36.72.214.67', '2020-03-11 07:56:12'),
(262, 'admin', 'Berhasil Login dengan IP 36.72.214.67', '2020-03-11 08:01:52'),
(263, 'hibiscus', 'Berhasil Login dengan IP 36.72.214.67', '2020-03-11 08:02:44'),
(264, 'admin', 'Berhasil Login dengan IP 36.72.214.67', '2020-03-11 08:02:50'),
(265, 'admin', 'Berhasil Login dengan IP 36.72.214.67', '2020-03-11 08:04:48'),
(266, 'drwatson', 'Berhasil Login dengan IP 36.72.214.67', '2020-03-11 08:07:04'),
(267, 'admin', 'Gagal Login', '2020-03-11 08:17:31'),
(268, 'admin', 'Berhasil Login dengan IP 36.72.214.67', '2020-03-11 08:17:53'),
(269, 'hibiscus', 'Berhasil Login dengan IP 36.72.214.67', '2020-03-11 08:40:56'),
(270, 'ginger', 'Berhasil Login dengan IP 36.72.214.67', '2020-03-11 08:43:41'),
(271, 'hibiscus', 'Berhasil Login dengan IP 36.72.214.67', '2020-03-11 08:45:56'),
(272, 'admin', 'Gagal Login', '2020-03-12 06:03:50'),
(273, 'admin', 'Berhasil Login dengan IP 36.72.214.67', '2020-03-12 06:04:21'),
(274, 'hibiscus', 'Berhasil Login dengan IP 36.72.214.67', '2020-03-12 06:20:39'),
(275, 'admin', 'Berhasil Login dengan IP 36.72.214.67', '2020-03-12 06:20:42'),
(276, 'drwatson', 'Berhasil Login dengan IP 36.72.214.67', '2020-03-12 06:27:52'),
(277, 'admin', 'Berhasil Login dengan IP 36.72.214.67', '2020-03-12 06:28:47'),
(278, 'admin', 'Berhasil Login dengan IP 36.72.214.67', '2020-03-12 06:28:56'),
(279, 'admin', 'Berhasil Login dengan IP 36.72.214.67', '2020-03-12 06:30:10'),
(280, 'hibiscus', 'Edit KategoriKa Produk (7)', '2020-03-12 06:32:38'),
(281, 'admin', 'Berhasil Login dengan IP 36.72.214.67', '2020-03-12 06:34:26'),
(282, 'admin', 'Berhasil Login dengan IP 36.72.214.67', '2020-03-12 06:36:54'),
(283, 'marsh', 'Gagal Login', '2020-03-12 06:42:35'),
(284, 'marsh', 'Gagal Login', '2020-03-12 06:42:52'),
(285, 'marsh', 'Gagal Login', '2020-03-12 06:43:09'),
(286, 'marsh', 'Gagal Login', '2020-03-12 06:43:26'),
(287, 'ginger', 'Berhasil Login dengan IP 36.72.214.67', '2020-03-12 06:43:33'),
(288, 'marsh', 'Gagal Login', '2020-03-12 06:43:39'),
(289, 'drwatson', 'Berhasil Login dengan IP 36.72.214.67', '2020-03-12 06:43:59'),
(290, 'admin', 'Berhasil Login dengan IP 36.72.214.67', '2020-03-12 06:50:19'),
(291, 'admin', 'Gagal Login', '2020-03-12 06:57:21'),
(292, 'admin', 'Berhasil Login dengan IP 36.72.214.67', '2020-03-12 06:57:49'),
(293, 'hisbicus', 'Gagal Login', '2020-03-12 07:27:37'),
(294, 'hibsicus', 'Gagal Login', '2020-03-12 07:28:25'),
(295, 'hibiscus', 'Berhasil Login dengan IP 36.72.214.192', '2020-03-12 07:58:07'),
(296, 'admin', 'Gagal Login', '2020-03-12 08:03:33'),
(297, 'admin', 'Berhasil Login dengan IP 36.72.214.192', '2020-03-12 08:04:03'),
(298, 'admin', 'Berhasil Login dengan IP 36.72.214.36', '2020-03-13 06:49:24'),
(299, 'admin', 'Berhasil Login dengan IP 36.72.214.36', '2020-03-13 06:51:31'),
(300, 'admin', 'Berhasil Login dengan IP 36.72.214.36', '2020-03-13 07:09:38'),
(301, 'hibiscus', 'Berhasil Login dengan IP 36.72.214.36', '2020-03-13 07:37:19'),
(302, 'admin', 'Gagal Login', '2020-03-13 08:08:27'),
(303, 'admin', 'Berhasil Login dengan IP 36.72.214.36', '2020-03-13 08:08:38'),
(304, 'admin', 'Gagal Login', '2020-03-15 06:03:39'),
(305, 'hibiscus', 'Berhasil Login dengan IP 36.72.214.149', '2020-03-16 04:42:40'),
(306, 'admin', 'Gagal Login', '2020-03-16 07:22:50'),
(307, 'hibiscus', 'Berhasil Login dengan IP 36.72.214.149', '2020-03-16 07:23:49'),
(308, 'admin', 'Berhasil Login dengan IP 36.72.214.149', '2020-03-16 07:25:35'),
(309, 'admin', 'Berhasil Login dengan IP ::1', '2020-04-09 02:51:59'),
(310, 'ginger', 'Berhasil Login dengan IP ::1', '2020-04-09 02:54:08'),
(311, 'admin', 'Gagal Login', '2020-04-09 03:03:49'),
(312, 'admin', 'Berhasil Login dengan IP ::1', '2020-04-09 03:03:55'),
(313, 'hibiscus', 'Berhasil Login dengan IP ::1', '2020-04-09 04:02:05'),
(314, 'ginger', 'Berhasil Login dengan IP ::1', '2020-04-09 04:26:04'),
(315, 'admin', 'Berhasil Login dengan IP ::1', '2020-04-09 04:27:07'),
(316, 'admin', 'Berhasil Login dengan IP ::1', '2020-04-09 05:09:12'),
(317, 'admin', 'Berhasil Login dengan IP ::1', '2020-04-09 07:38:03'),
(318, 'admin', 'Gagal Login', '2020-04-09 09:06:38'),
(319, 'admin', 'Gagal Login', '2020-04-09 09:06:54'),
(320, 'admin', 'Berhasil Login dengan IP ::1', '2020-04-09 09:07:01'),
(321, 'hibiscus', 'Berhasil Login dengan IP ::1', '2020-04-10 02:24:46'),
(322, 'drstrange', 'Gagal Login', '2020-04-10 02:26:08'),
(323, 'drstrange', 'Gagal Login', '2020-04-10 02:26:23'),
(324, 'drstrange', 'Gagal Login', '2020-04-10 02:26:40'),
(325, 'drstrange', 'Berhasil Login dengan IP ::1', '2020-04-10 02:27:29'),
(326, 'ginger', 'Berhasil Login dengan IP ::1', '2020-04-10 02:27:56'),
(327, 'marsh', 'Gagal Login', '2020-04-10 02:28:19'),
(328, 'marsh', 'Berhasil Login dengan IP ::1', '2020-04-10 02:34:45'),
(329, 'hibiscus', 'Berhasil Login dengan IP ::1', '2020-04-10 02:35:20'),
(330, 'admin', 'Berhasil Login dengan IP ::1', '2020-04-10 02:35:45'),
(331, 'lorem', 'Berhasil Login dengan IP ::1', '2020-04-10 02:36:13'),
(332, 'admin', 'Berhasil Login dengan IP ::1', '2020-04-10 03:05:59'),
(333, 'hibiscus', 'Berhasil Login dengan IP ::1', '2020-04-10 03:36:01'),
(334, 'drstrange', 'Berhasil Login dengan IP ::1', '2020-04-10 07:07:54'),
(335, 'hibiscus', 'Berhasil Login dengan IP ::1', '2020-04-10 07:59:09'),
(336, 'drstrange', 'Berhasil Login dengan IP ::1', '2020-04-10 08:03:42'),
(337, 'drstrange', 'Berhasil Login dengan IP ::1', '2020-04-10 08:04:51'),
(338, 'hibiscus', 'Berhasil Login dengan IP ::1', '2020-04-10 08:07:51'),
(339, 'drstrange', 'Berhasil Login dengan IP ::1', '2020-04-10 08:15:18'),
(340, 'hibiscus', 'Berhasil Login dengan IP ::1', '2020-04-10 08:16:17'),
(341, 'drstrange', 'Berhasil Login dengan IP ::1', '2020-04-10 08:17:25'),
(342, 'ginger', 'Berhasil Login dengan IP ::1', '2020-04-10 08:17:46'),
(343, 'ginger', 'Berhasil Login dengan IP ::1', '2020-04-10 08:42:46'),
(344, 'ginger', 'Berhasil Login dengan IP ::1', '2020-04-10 09:43:30'),
(345, 'ginger', 'Berhasil Login dengan IP ::1', '2020-04-11 02:20:53'),
(346, 'drstrange', 'Berhasil Login dengan IP ::1', '2020-04-11 02:31:06'),
(347, 'hibiscus', 'Gagal Login', '2020-04-11 02:31:28'),
(348, 'hibiscus', 'Berhasil Login dengan IP ::1', '2020-04-11 02:31:35'),
(349, 'drstrange', 'Berhasil Login dengan IP ::1', '2020-04-11 02:33:03'),
(350, 'ginger', 'Berhasil Login dengan IP ::1', '2020-04-11 02:45:25'),
(351, 'hibiscus', 'Berhasil Login dengan IP ::1', '2020-04-11 02:59:21'),
(352, 'lorem', 'Berhasil Login dengan IP ::1', '2020-04-11 03:01:10'),
(353, 'hibiscus', 'Berhasil Login dengan IP ::1', '2020-04-11 05:10:57'),
(354, 'hibiscus', 'Berhasil Login dengan IP ::1', '2020-04-11 06:48:19'),
(355, 'drwatson', 'Berhasil Login dengan IP ::1', '2020-04-11 06:52:16'),
(356, 'lorem', 'Berhasil Login dengan IP ::1', '2020-04-11 06:54:00'),
(357, 'hibiscus', 'Berhasil Login dengan IP ::1', '2020-04-11 06:59:07'),
(358, 'lorem', 'Berhasil Login dengan IP ::1', '2020-04-11 07:00:09'),
(359, 'admin', 'Berhasil Login dengan IP ::1', '2020-04-11 07:09:20'),
(360, 'lorem', 'Berhasil Login dengan IP ::1', '2020-04-11 07:13:20'),
(361, 'lorem', 'Berhasil Login dengan IP ::1', '2020-04-13 03:38:00'),
(362, 'hibiscus', 'Berhasil Login dengan IP ::1', '2020-04-13 03:38:35'),
(363, 'lorem', 'Berhasil Login dengan IP ::1', '2020-04-13 03:39:28'),
(364, 'hibiscus', 'Berhasil Login dengan IP ::1', '2020-04-13 03:40:06'),
(365, 'lorem', 'Berhasil Login dengan IP ::1', '2020-04-13 03:41:21'),
(366, 'drstrange', 'Berhasil Login dengan IP ::1', '2020-04-13 04:05:08'),
(367, 'drwatson', 'Berhasil Login dengan IP ::1', '2020-04-13 04:05:49'),
(368, 'drwatson', 'Berhasil Login dengan IP ::1', '2020-04-13 06:29:05'),
(369, 'drstrange', 'Berhasil Login dengan IP ::1', '2020-04-13 06:29:27'),
(370, 'drwatson', 'Berhasil Login dengan IP ::1', '2020-04-13 06:30:04'),
(371, 'hibiscus', 'Berhasil Login dengan IP ::1', '2020-04-13 06:30:21'),
(372, 'admin', 'Berhasil Login dengan IP ::1', '2020-04-13 06:49:00'),
(373, 'hibiscus', 'Berhasil Login dengan IP ::1', '2020-04-13 06:54:22'),
(374, 'lorem', 'Berhasil Login dengan IP ::1', '2020-04-13 06:55:05'),
(375, 'drwatson', 'Berhasil Login dengan IP ::1', '2020-04-13 06:55:38'),
(376, 'lorem', 'Berhasil Login dengan IP ::1', '2020-04-13 06:56:09'),
(377, 'hibiscus', 'Berhasil Login dengan IP ::1', '2020-04-13 07:08:16'),
(378, 'admin', 'Berhasil Login dengan IP ::1', '2020-04-13 07:09:26'),
(379, 'drwatson', 'Berhasil Login dengan IP ::1', '2020-04-13 07:24:04'),
(380, 'lorem', 'Berhasil Login dengan IP ::1', '2020-04-13 07:25:25'),
(381, 'drwatson', 'Berhasil Login dengan IP ::1', '2020-04-13 07:26:05'),
(382, 'drwatson', 'Gagal Login', '2020-04-13 07:31:48'),
(383, 'drwatson', 'Berhasil Login dengan IP ::1', '2020-04-13 07:31:57'),
(384, 'drwatson', 'Berhasil Login dengan IP ::1', '2020-04-13 07:32:17'),
(385, 'marsh', 'Berhasil Login dengan IP ::1', '2020-04-13 07:41:17'),
(386, 'drwatson', 'Berhasil Login dengan IP ::1', '2020-04-13 08:40:56'),
(387, 'marsh', 'Berhasil Login dengan IP ::1', '2020-04-13 08:45:46'),
(388, 'drwatson', 'Berhasil Login dengan IP ::1', '2020-04-13 08:50:58'),
(389, 'hibiscus', 'Berhasil Login dengan IP ::1', '2020-04-13 10:05:10'),
(390, 'hibiscus', 'Berhasil Login dengan IP ::1', '2020-04-13 11:26:10'),
(391, 'lorem', 'Berhasil Login dengan IP ::1', '2020-04-13 11:27:17'),
(392, 'hibiscus', 'Berhasil Login dengan IP ::1', '2020-04-13 11:27:38'),
(393, 'drwatson', 'Gagal Login', '2020-04-13 11:34:32'),
(394, 'drwatson', 'Berhasil Login dengan IP ::1', '2020-04-13 11:34:41'),
(395, 'hibiscus', 'Berhasil Login dengan IP ::1', '2020-04-13 11:35:09'),
(396, 'admin', 'Gagal Login', '2020-04-14 02:16:57'),
(397, 'admin', 'Berhasil Login dengan IP ::1', '2020-04-14 02:17:10'),
(398, 'hibiscus', 'Berhasil Login dengan IP ::1', '2020-04-14 02:19:08'),
(399, 'lorem', 'Berhasil Login dengan IP ::1', '2020-04-14 02:21:44'),
(400, 'drwatson', 'Berhasil Login dengan IP ::1', '2020-04-14 02:22:33'),
(401, 'hibiscus', 'Berhasil Login dengan IP ::1', '2020-04-14 02:33:05'),
(402, 'lorem', 'Berhasil Login dengan IP ::1', '2020-04-14 02:36:21'),
(403, 'drwatson', 'Berhasil Login dengan IP ::1', '2020-04-14 02:37:53'),
(404, 'marsh', 'Berhasil Login dengan IP ::1', '2020-04-14 02:38:43'),
(405, 'drwatson', 'Berhasil Login dengan IP ::1', '2020-04-14 02:40:47'),
(406, 'ginger', 'Berhasil Login dengan IP ::1', '2020-04-14 02:41:53'),
(407, 'hibiscus', 'Berhasil Login dengan IP ::1', '2020-04-14 02:45:50'),
(408, 'marsh', 'Berhasil Login dengan IP ::1', '2020-04-14 02:46:37'),
(409, 'drwatson', 'Berhasil Login dengan IP ::1', '2020-04-14 02:46:55'),
(410, 'lorem', 'Berhasil Login dengan IP ::1', '2020-04-14 02:47:18'),
(411, 'lorem', 'Berhasil Login dengan IP ::1', '2020-04-14 02:48:04'),
(412, 'ginger', 'Berhasil Login dengan IP ::1', '2020-04-14 02:48:50'),
(413, 'hibiscus', 'Berhasil Login dengan IP ::1', '2020-04-14 05:20:41'),
(414, 'admin', 'Gagal Login', '2020-04-14 05:29:19'),
(415, 'admin', 'Berhasil Login dengan IP ::1', '2020-04-14 05:29:26'),
(416, 'hibiscus', 'Berhasil Login dengan IP ::1', '2020-04-14 05:30:38'),
(417, 'admin', 'Berhasil Login dengan IP ::1', '2020-04-14 05:33:07'),
(418, 'hibiscus', 'Berhasil Login dengan IP ::1', '2020-04-14 05:34:11'),
(419, 'lorem', 'Gagal Login', '2020-04-14 05:34:54'),
(420, 'lorem', 'Berhasil Login dengan IP ::1', '2020-04-14 05:34:58'),
(421, 'drwatson', 'Gagal Login', '2020-04-14 05:35:33'),
(422, 'drwatson', 'Berhasil Login dengan IP ::1', '2020-04-14 05:35:40'),
(423, 'hibiscus', 'Berhasil Login dengan IP ::1', '2020-04-14 05:37:58'),
(424, 'ginger', 'Berhasil Login dengan IP ::1', '2020-04-14 05:38:26'),
(425, 'hibiscus', 'Berhasil Login dengan IP ::1', '2020-04-14 06:08:08'),
(426, 'lorem', 'Berhasil Login dengan IP ::1', '2020-04-14 06:45:07'),
(427, 'drwatson', 'Berhasil Login dengan IP ::1', '2020-04-14 06:45:37'),
(428, 'ginger', 'Berhasil Login dengan IP ::1', '2020-04-14 06:46:41'),
(429, 'hibiscus', 'Berhasil Login dengan IP ::1', '2020-04-14 06:48:05'),
(430, 'drwatson', 'Berhasil Login dengan IP ::1', '2020-04-14 06:53:23'),
(431, 'hibiscus', 'Berhasil Login dengan IP ::1', '2020-04-14 06:56:10'),
(432, 'lorem', 'Berhasil Login dengan IP ::1', '2020-04-14 06:57:24'),
(433, 'drwatson', 'Gagal Login', '2020-04-14 06:57:52'),
(434, 'drwatson', 'Berhasil Login dengan IP ::1', '2020-04-14 06:57:58'),
(435, 'hibiscus', 'Gagal Login', '2020-04-14 07:56:28'),
(436, 'hibiscus', 'Berhasil Login dengan IP ::1', '2020-04-14 07:56:34'),
(437, 'drwatson', 'Berhasil Login dengan IP ::1', '2020-04-14 16:00:10'),
(438, 'hibiscus', 'Berhasil Login dengan IP ::1', '2020-04-14 16:29:40'),
(439, 'lorem', 'Berhasil Login dengan IP ::1', '2020-04-14 16:30:26'),
(440, 'drwatson', 'Berhasil Login dengan IP ::1', '2020-04-14 16:35:42'),
(441, 'drwatson', 'Berhasil Login dengan IP ::1', '2020-04-14 23:39:32'),
(442, 'marsh', 'Berhasil Login dengan IP ::1', '2020-04-14 23:43:02'),
(443, 'lorem', 'Berhasil Login dengan IP ::1', '2020-04-14 23:48:08'),
(444, 'hibiscus', 'Berhasil Login dengan IP ::1', '2020-04-14 23:48:39'),
(445, 'lorem', 'Berhasil Login dengan IP ::1', '2020-04-14 23:49:50'),
(446, 'marsh', 'Berhasil Login dengan IP ::1', '2020-04-14 23:50:31'),
(447, 'drwatson', 'Berhasil Login dengan IP ::1', '2020-04-14 23:50:53'),
(448, 'hibiscus', 'Berhasil Login dengan IP ::1', '2020-04-14 23:59:55'),
(449, 'ginger', 'Berhasil Login dengan IP ::1', '2020-04-15 00:03:02'),
(450, 'drwatson', 'Berhasil Login dengan IP ::1', '2020-04-15 00:06:40'),
(451, 'hibiscus', 'Berhasil Login dengan IP ::1', '2020-04-15 00:07:47'),
(452, 'admin', 'Berhasil Login dengan IP ::1', '2020-04-15 00:53:03'),
(453, 'hibiscus', 'Berhasil Login dengan IP ::1', '2020-04-15 04:42:32'),
(454, 'admin', 'Berhasil Login dengan IP ::1', '2020-04-15 05:09:13'),
(455, 'hibiscus', 'Berhasil Login dengan IP ::1', '2020-04-15 05:10:00'),
(456, 'admin', 'Berhasil Login dengan IP ::1', '2020-04-15 05:10:37'),
(457, 'hibiscus', 'Gagal Login', '2020-04-15 05:12:05'),
(458, 'hibiscus', 'Berhasil Login dengan IP ::1', '2020-04-15 05:12:10'),
(459, 'admin', 'Berhasil Login dengan IP ::1', '2020-04-15 05:13:28'),
(460, 'hibiscus', 'Berhasil Login dengan IP ::1', '2020-04-15 05:16:47'),
(461, 'admin', 'Gagal Login', '2020-04-15 06:32:29'),
(462, 'admin', 'Berhasil Login dengan IP ::1', '2020-04-15 06:32:33'),
(463, 'hibiscus', 'Berhasil Login dengan IP ::1', '2020-04-15 06:36:31'),
(464, 'lorem', 'Berhasil Login dengan IP ::1', '2020-04-15 06:51:33'),
(465, 'admin', 'Berhasil Login dengan IP ::1', '2020-04-15 06:59:30'),
(466, 'hibiscus', 'Gagal Login', '2020-04-15 06:59:45'),
(467, 'hibiscus', 'Berhasil Login dengan IP ::1', '2020-04-15 06:59:50'),
(468, 'lorem', 'Berhasil Login dengan IP ::1', '2020-04-15 07:01:51'),
(469, 'lorem', 'Berhasil Login dengan IP ::1', '2020-04-15 07:04:49'),
(470, 'admin', 'Gagal Login', '2020-04-15 07:05:22'),
(471, 'admin', 'Berhasil Login dengan IP ::1', '2020-04-15 07:05:26'),
(472, 'lorem', 'Berhasil Login dengan IP ::1', '2020-04-15 07:06:26'),
(473, 'dolors', 'Berhasil Login dengan IP ::1', '2020-04-15 07:11:39'),
(474, 'admin', 'Berhasil Login dengan IP ::1', '2020-04-15 07:12:31'),
(475, 'hibiscus', 'Berhasil Login dengan IP ::1', '2020-04-15 07:26:44'),
(476, 'lorem', 'Berhasil Login dengan IP ::1', '2020-04-15 07:27:49'),
(477, 'drsam', 'Berhasil Login dengan IP ::1', '2020-04-15 07:38:07'),
(478, 'drwatson', 'Berhasil Login dengan IP ::1', '2020-04-15 07:38:34'),
(479, 'drsam', 'Berhasil Login dengan IP ::1', '2020-04-15 07:38:59'),
(480, 'admin', 'Berhasil Login dengan IP ::1', '2020-04-15 11:06:34'),
(481, 'admin', 'Berhasil Login dengan IP ::1', '2020-04-15 11:24:29'),
(482, 'drsam', 'Berhasil Login dengan IP ::1', '2020-04-15 11:24:48'),
(483, 'ginger', 'Berhasil Login dengan IP ::1', '2020-04-15 11:29:23'),
(484, 'admin', 'Berhasil Login dengan IP ::1', '2020-04-16 04:41:08'),
(485, 'hibiscus', 'Gagal Login', '2020-04-15 05:04:48'),
(486, 'hibiscus', 'Berhasil Login dengan IP ::1', '2020-04-15 05:04:54'),
(487, 'admin', 'Berhasil Login dengan IP ::1', '2020-04-15 06:06:52'),
(488, 'admin', 'Gagal Login', '2020-04-16 06:57:24'),
(489, 'admin', 'Berhasil Login dengan IP ::1', '2020-04-16 06:57:38'),
(490, 'admin', 'Berhasil Login dengan IP ::1', '2020-04-17 02:22:03'),
(491, 'ginger', 'Berhasil Login dengan IP ::1', '2020-04-18 05:46:04'),
(492, 'admin', 'Berhasil Login dengan IP ::1', '2020-04-18 06:01:50'),
(493, 'ginger', 'Berhasil Login dengan IP ::1', '2020-04-18 07:37:42'),
(494, 'ginger', 'Berhasil Login dengan IP ::1', '2020-04-21 02:59:04'),
(495, 'ginger', 'Berhasil Login dengan IP ::1', '2020-04-21 05:37:40'),
(496, 'hibiscus', 'Berhasil Login dengan IP ::1', '2020-04-21 06:20:03'),
(497, 'hibiscus', 'Berhasil Login dengan IP ::1', '2020-04-21 06:31:49'),
(498, 'ginger', 'Berhasil Login dengan IP ::1', '2020-04-21 06:32:17'),
(499, 'hibiscus', 'Berhasil Login dengan IP ::1', '2020-04-24 07:56:39'),
(500, 'drdaniel', 'Gagal Login', '2020-04-24 08:39:01'),
(501, 'drdaniel', 'Berhasil Login dengan IP ::1', '2020-04-24 08:39:07'),
(502, 'hibiscus', 'Berhasil Login dengan IP ::1', '2020-04-24 08:44:07'),
(503, 'drdaniel', 'Berhasil Login dengan IP ::1', '2020-04-24 08:53:30'),
(504, 'hibiscus', 'Berhasil Login dengan IP ::1', '2020-04-24 08:54:11'),
(505, 'hibiscus', 'Berhasil Login dengan IP ::1', '2020-04-29 06:52:54'),
(506, 'admin', 'Berhasil Login dengan IP ::1', '2020-04-29 07:01:30'),
(507, 'drwatson', 'Gagal Login', '2020-04-29 07:03:21'),
(508, 'drwatson', 'Gagal Login', '2020-04-29 07:03:29'),
(509, 'hibiscus', 'Berhasil Login dengan IP ::1', '2020-04-29 07:03:41'),
(510, 'admin', 'Berhasil Login dengan IP ::1', '2020-04-29 07:04:19'),
(511, 'hibiscus', 'Berhasil Login dengan IP ::1', '2020-04-29 07:28:20'),
(512, 'admin', 'Berhasil Login dengan IP ::1', '2020-04-30 05:15:34'),
(513, 'hibiscus', 'Berhasil Login dengan IP ::1', '2020-04-30 05:20:50'),
(514, 'drwatson', 'Gagal Login', '2020-04-30 05:27:01'),
(515, 'drwatson', 'Gagal Login', '2020-04-30 05:27:08'),
(516, 'drwatson', 'Gagal Login', '2020-04-30 05:27:17'),
(517, 'drwatson', 'Berhasil Login dengan IP ::1', '2020-04-30 05:27:25'),
(518, 'hibiscus', 'Berhasil Login dengan IP ::1', '2020-04-30 05:55:30'),
(519, 'drwatson', 'Berhasil Login dengan IP ::1', '2020-04-30 06:32:47'),
(520, 'drwatson', 'Berhasil Login dengan IP ::1', '2020-04-30 07:37:02'),
(521, 'drdaniel', 'Berhasil Login dengan IP ::1', '2020-04-30 07:45:48'),
(522, 'admin', 'Berhasil Login dengan IP ::1', '2020-04-30 07:52:24'),
(523, 'admin', 'Berhasil Login dengan IP ::1', '2020-05-01 04:57:23'),
(524, 'drwatson', 'Berhasil Login dengan IP ::1', '2020-05-01 04:58:36'),
(525, 'drwatson', 'Berhasil Login dengan IP ::1', '2020-05-01 05:10:28'),
(526, 'drwatson', 'Berhasil Login dengan IP ::1', '2020-05-01 06:03:43'),
(527, 'drwatson', 'Berhasil Login dengan IP ::1', '2020-05-04 05:06:09'),
(528, 'admin', 'Berhasil Login dengan IP ::1', '2020-05-04 05:06:59'),
(529, 'hibiscus', 'Gagal Login', '2020-05-04 05:20:48'),
(530, 'hibiscus', 'Berhasil Login dengan IP ::1', '2020-05-04 05:20:56'),
(531, 'drwatson', 'Berhasil Login dengan IP ::1', '2020-05-04 05:21:46'),
(532, 'hibiscus', 'Berhasil Login dengan IP ::1', '2020-05-04 05:22:30'),
(533, 'drwatson', 'Berhasil Login dengan IP ::1', '2020-05-04 05:23:19'),
(534, 'hibiscus', 'Berhasil Login dengan IP ::1', '2020-05-04 05:23:34'),
(535, 'lorem', 'Berhasil Login dengan IP ::1', '2020-05-04 05:34:02'),
(536, 'dolor', 'Gagal Login', '2020-05-04 05:36:03'),
(537, 'dolors', 'Berhasil Login dengan IP ::1', '2020-05-04 05:36:24'),
(538, 'ginger', 'Berhasil Login dengan IP ::1', '2020-05-04 05:37:59'),
(539, 'drwatson', 'Berhasil Login dengan IP ::1', '2020-05-04 05:40:57'),
(540, 'hibiscus', 'Berhasil Login dengan IP ::1', '2020-05-04 05:41:24'),
(541, 'drwatson', 'Berhasil Login dengan IP ::1', '2020-05-04 06:25:25'),
(542, 'hibiscus', 'Berhasil Login dengan IP ::1', '2020-05-04 06:25:50'),
(543, 'drwatson', 'Berhasil Login dengan IP ::1', '2020-05-04 06:42:17'),
(544, 'hibiscus', 'Berhasil Login dengan IP ::1', '2020-05-04 06:42:46'),
(545, 'drwatson', 'Berhasil Login dengan IP ::1', '2020-05-04 06:43:40'),
(546, 'admin', 'Berhasil Login dengan IP ::1', '2020-05-04 06:44:02'),
(547, 'ginger', 'Berhasil Login dengan IP ::1', '2020-05-04 06:44:52'),
(548, 'lorem', 'Berhasil Login dengan IP ::1', '2020-05-04 07:12:53'),
(549, 'drwatson', 'Berhasil Login dengan IP ::1', '2020-05-04 07:13:30'),
(550, 'ginger', 'Berhasil Login dengan IP ::1', '2020-05-04 07:14:20'),
(551, 'lorem', 'Gagal Login', '2020-05-04 07:20:26'),
(552, 'lorem', 'Berhasil Login dengan IP ::1', '2020-05-04 07:20:31'),
(553, 'lorem', 'Berhasil Login dengan IP ::1', '2020-05-04 07:21:10'),
(554, 'hibiscus', 'Gagal Login', '2020-05-04 07:37:09'),
(555, 'ginger', 'Berhasil Login dengan IP ::1', '2020-05-04 07:37:16'),
(556, 'drwatson', 'Berhasil Login dengan IP ::1', '2020-05-04 07:38:14'),
(557, 'lorem', 'Berhasil Login dengan IP ::1', '2020-05-04 07:39:17'),
(558, 'drwatson', 'Berhasil Login dengan IP ::1', '2020-05-04 07:43:12'),
(559, 'ginger', 'Berhasil Login dengan IP ::1', '2020-05-04 07:43:56'),
(560, 'drwatson', 'Berhasil Login dengan IP ::1', '2020-05-04 07:52:52'),
(561, 'lorem', 'Berhasil Login dengan IP ::1', '2020-05-04 07:58:44'),
(562, 'drwatson', 'Berhasil Login dengan IP ::1', '2020-05-04 08:01:24'),
(563, 'hibiscus', 'Berhasil Login dengan IP ::1', '2020-05-04 09:29:22'),
(564, 'hibiscus', 'Berhasil Login dengan IP ::1', '2020-05-04 12:03:28'),
(565, 'admin', 'Berhasil Login dengan IP ::1', '2020-05-05 05:03:40'),
(566, 'hibiscus', 'Berhasil Login dengan IP ::1', '2020-05-05 05:05:00'),
(567, 'drwatson', 'Berhasil Login dengan IP ::1', '2020-05-05 05:08:12'),
(568, 'hibiscus', 'Berhasil Login dengan IP ::1', '2020-05-05 05:13:37'),
(569, 'drwatson', 'Berhasil Login dengan IP ::1', '2020-05-05 08:37:16'),
(570, 'drsam', 'Berhasil Login dengan IP ::1', '2020-05-05 08:37:31'),
(571, 'drwatson', 'Berhasil Login dengan IP ::1', '2020-05-05 09:10:43'),
(572, 'admin', 'Berhasil Login dengan IP ::1', '2020-05-05 09:16:40'),
(573, 'drsam', 'Berhasil Login dengan IP ::1', '2020-05-05 09:19:52'),
(574, 'lorem', 'Berhasil Login dengan IP ::1', '2020-05-05 09:21:17'),
(575, 'admin', 'Berhasil Login dengan IP ::1', '2020-05-05 10:02:45'),
(576, 'drwatson', 'Berhasil Login dengan IP ::1', '2020-05-05 17:44:01'),
(577, 'admin', 'Berhasil Login dengan IP ::1', '2020-05-05 17:44:26'),
(578, 'lorem', 'Berhasil Login dengan IP ::1', '2020-05-05 17:44:43'),
(579, 'admin', 'Berhasil Login dengan IP ::1', '2020-05-05 17:45:03'),
(580, 'admin', 'Berhasil Login dengan IP ::1', '2020-05-06 05:00:18'),
(581, 'lorem', 'Berhasil Login dengan IP ::1', '2020-05-06 06:22:47'),
(582, 'lorem', 'Gagal Login', '2020-05-06 06:23:07'),
(583, 'admin', 'Berhasil Login dengan IP ::1', '2020-05-06 06:23:14'),
(584, 'dolors', 'Berhasil Login dengan IP ::1', '2020-05-06 07:10:41'),
(585, 'admin', 'Berhasil Login dengan IP ::1', '2020-05-06 07:11:06'),
(586, 'admin', 'Berhasil Login dengan IP ::1', '2020-05-06 07:54:04'),
(587, 'lorem', 'Berhasil Login dengan IP ::1', '2020-05-06 08:29:52'),
(588, 'dolors', 'Berhasil Login dengan IP ::1', '2020-05-06 08:30:50'),
(589, 'admin', 'Berhasil Login dengan IP ::1', '2020-05-06 08:31:21'),
(590, 'dolors', 'Berhasil Login dengan IP ::1', '2020-05-06 08:32:15'),
(591, 'ginger', 'Berhasil Login dengan IP ::1', '2020-05-06 08:32:57'),
(592, 'admin', 'Berhasil Login dengan IP ::1', '2020-05-06 08:37:09'),
(593, 'hibiscus', 'Berhasil Login dengan IP ::1', '2020-05-06 08:42:00'),
(594, 'hibiscus', 'Berhasil Login dengan IP ::1', '2020-05-06 08:42:39'),
(595, 'drwatson', 'Berhasil Login dengan IP ::1', '2020-05-06 08:48:12'),
(596, 'drsam', 'Berhasil Login dengan IP ::1', '2020-05-06 08:48:55'),
(597, 'drwatson', 'Berhasil Login dengan IP ::1', '2020-05-06 08:49:49'),
(598, 'ginger', 'Berhasil Login dengan IP ::1', '2020-05-06 08:50:34'),
(599, 'admin', 'Berhasil Login dengan IP ::1', '2020-05-06 08:50:58'),
(600, 'drwatson', 'Berhasil Login dengan IP ::1', '2020-05-06 08:52:21'),
(601, 'marsh', 'Berhasil Login dengan IP ::1', '2020-05-06 08:55:03'),
(602, 'hibiscus', 'Berhasil Login dengan IP ::1', '2020-05-06 09:10:19'),
(603, 'drwatson', 'Berhasil Login dengan IP ::1', '2020-05-06 09:10:40'),
(604, 'marsh', 'Berhasil Login dengan IP ::1', '2020-05-07 05:36:23'),
(605, 'drwatson', 'Berhasil Login dengan IP ::1', '2020-05-07 05:40:19'),
(606, 'marsh', 'Berhasil Login dengan IP ::1', '2020-05-07 05:51:45'),
(607, 'drwatson', 'Berhasil Login dengan IP ::1', '2020-05-07 05:52:15'),
(608, 'marsh', 'Berhasil Login dengan IP ::1', '2020-05-07 06:08:22'),
(609, 'drwatson', 'Berhasil Login dengan IP ::1', '2020-05-07 06:13:52'),
(610, 'marsh', 'Berhasil Login dengan IP ::1', '2020-05-07 06:15:35'),
(611, 'hibiscus', 'Berhasil Login dengan IP ::1', '2020-05-07 06:57:11'),
(612, 'drwatson', 'Berhasil Login dengan IP ::1', '2020-05-07 06:57:52'),
(613, 'drwatson', 'Berhasil Login dengan IP ::1', '2020-05-07 07:00:11'),
(614, 'hibiscus', 'Berhasil Login dengan IP ::1', '2020-05-07 07:01:07'),
(615, 'drwatson', 'Berhasil Login dengan IP ::1', '2020-05-07 07:02:28'),
(616, 'hibiscus', 'Berhasil Login dengan IP ::1', '2020-05-07 07:03:51'),
(617, 'drwatson', 'Gagal Login', '2020-05-07 07:04:33'),
(618, 'drwatson', 'Berhasil Login dengan IP ::1', '2020-05-07 07:04:47'),
(619, 'admin', 'Berhasil Login dengan IP ::1', '2020-05-07 07:05:36'),
(620, 'marsh', 'Berhasil Login dengan IP ::1', '2020-05-07 07:06:40'),
(621, 'ginger', 'Berhasil Login dengan IP ::1', '2020-05-07 07:18:40'),
(622, 'hibiscus', 'Berhasil Login dengan IP ::1', '2020-05-07 07:20:05'),
(623, 'drwatson', 'Berhasil Login dengan IP ::1', '2020-05-07 07:20:59'),
(624, 'admin', 'Berhasil Login dengan IP ::1', '2020-05-08 05:01:16'),
(625, 'marsh', 'Berhasil Login dengan IP ::1', '2020-05-08 05:12:27'),
(626, 'drwatson', 'Gagal Login', '2020-05-08 05:19:39'),
(627, 'drwatson', 'Berhasil Login dengan IP ::1', '2020-05-08 05:19:46'),
(628, 'marsh', 'Berhasil Login dengan IP ::1', '2020-05-08 05:21:13'),
(629, 'admin', 'Berhasil Login dengan IP ::1', '2020-05-08 06:05:31'),
(630, 'drwatson', 'Berhasil Login dengan IP ::1', '2020-05-09 05:35:38'),
(631, 'drwatson', 'Gagal Login', '2020-05-11 05:08:05'),
(632, 'marsh', 'Berhasil Login dengan IP ::1', '2020-05-11 05:08:19'),
(633, 'marsh', 'Berhasil Login dengan IP ::1', '2020-05-11 06:16:11'),
(634, 'ginger', 'Berhasil Login dengan IP ::1', '2020-05-11 08:49:08'),
(635, 'marsh', 'Berhasil Login dengan IP ::1', '2020-05-11 08:52:55'),
(636, 'drwatson', 'Berhasil Login dengan IP ::1', '2020-05-11 08:53:18'),
(637, 'drwatson', 'Berhasil Login dengan IP ::1', '2020-05-12 04:37:44'),
(638, 'marsh', 'Berhasil Login dengan IP ::1', '2020-05-12 07:23:11'),
(639, 'drwatson', 'Berhasil Login dengan IP ::1', '2020-05-12 16:38:51'),
(640, 'drwatson', 'Berhasil Login dengan IP ::1', '2020-05-13 04:36:48'),
(641, 'hibiscus', 'Berhasil Login dengan IP ::1', '2020-05-13 10:05:37'),
(642, 'drwatson', 'Berhasil Login dengan IP ::1', '2020-05-13 10:10:10'),
(643, 'hibiscus', 'Berhasil Login dengan IP ::1', '2020-05-13 10:11:03'),
(644, 'drwatson', 'Berhasil Login dengan IP ::1', '2020-05-13 10:11:39'),
(645, 'drwatson', 'Berhasil Login dengan IP ::1', '2020-05-13 10:17:57'),
(646, 'drwatson', 'Berhasil Login dengan IP ::1', '2020-05-14 05:18:30'),
(647, 'ginger', 'Gagal Login', '2020-05-14 07:45:05'),
(648, 'marsh', 'Berhasil Login dengan IP ::1', '2020-05-14 07:45:13'),
(649, 'drwatson', 'Berhasil Login dengan IP ::1', '2020-05-14 15:30:50'),
(650, 'marsh', 'Berhasil Login dengan IP ::1', '2020-05-14 15:31:28'),
(651, 'drwatson', 'Berhasil Login dengan IP ::1', '2020-05-14 15:32:10'),
(652, 'marsh', 'Berhasil Login dengan IP ::1', '2020-05-14 15:33:47'),
(653, 'admin', 'Berhasil Login dengan IP ::1', '2020-05-14 15:35:06'),
(654, 'drwatson', 'Berhasil Login dengan IP ::1', '2020-05-15 04:39:43'),
(655, 'marsh', 'Berhasil Login dengan IP ::1', '2020-05-15 06:19:02'),
(656, 'drwatson', 'Berhasil Login dengan IP ::1', '2020-05-15 06:20:32'),
(657, 'drwatson', 'Berhasil Login dengan IP ::1', '2020-05-15 09:02:00'),
(658, 'hibiscus', 'Berhasil Login dengan IP ::1', '2020-05-15 09:07:51'),
(659, 'drwatson', 'Berhasil Login dengan IP ::1', '2020-05-15 09:10:39'),
(660, 'hibiscus', 'Berhasil Login dengan IP ::1', '2020-05-15 09:44:35'),
(661, 'drwatson', 'Berhasil Login dengan IP ::1', '2020-05-15 09:47:51'),
(662, 'marsh', 'Berhasil Login dengan IP ::1', '2020-05-15 09:48:45'),
(663, 'marsh', 'Berhasil Login dengan IP ::1', '2020-05-16 05:41:08'),
(664, 'hibiscus', 'Berhasil Login dengan IP ::1', '2020-05-16 06:25:50'),
(665, 'hibiscus', 'Berhasil Login dengan IP ::1', '2020-05-16 06:39:38'),
(666, 'admin', 'Berhasil Login dengan IP ::1', '2020-05-16 06:40:29'),
(667, 'hibiscus', 'Berhasil Login dengan IP ::1', '2020-05-16 06:41:20'),
(668, 'lorem', 'Berhasil Login dengan IP ::1', '2020-05-16 06:42:09'),
(669, 'drwatson', 'Berhasil Login dengan IP ::1', '2020-05-16 06:43:28'),
(670, 'ginger', 'Berhasil Login dengan IP ::1', '2020-05-16 06:53:24'),
(671, 'admin', 'Berhasil Login dengan IP ::1', '2020-05-16 06:56:03'),
(672, 'hibiscus', 'Berhasil Login dengan IP ::1', '2020-05-16 08:55:34'),
(673, 'ginger', 'Berhasil Login dengan IP ::1', '2020-05-16 08:57:02'),
(674, 'admin', 'Berhasil Login dengan IP ::1', '2020-05-16 16:39:30'),
(675, 'hibiscus', 'Berhasil Login dengan IP ::1', '2020-05-19 06:35:42'),
(676, 'hibiscus', 'Berhasil Login dengan IP ::1', '2020-05-19 11:45:39'),
(677, 'hibiscus', 'Berhasil Login dengan IP ::1', '2020-05-25 14:39:26'),
(678, 'admin', 'Berhasil Login dengan IP ::1', '2020-05-26 07:38:52'),
(679, 'hibiscus', 'Berhasil Login dengan IP ::1', '2020-05-26 07:53:38'),
(680, 'admin', 'Berhasil Login dengan IP ::1', '2020-05-26 07:54:12'),
(681, 'hibiscus', 'Berhasil Login dengan IP ::1', '2020-05-26 09:18:19'),
(682, 'drwatson', 'Berhasil Login dengan IP ::1', '2020-05-26 09:20:32'),
(683, 'admin', 'Berhasil Login dengan IP ::1', '2020-05-26 09:22:01'),
(684, 'lorem', 'Berhasil Login dengan IP ::1', '2020-05-26 09:24:28'),
(685, 'drwatson', 'Berhasil Login dengan IP ::1', '2020-05-26 10:08:00'),
(686, 'admin', 'Berhasil Login dengan IP ::1', '2020-05-26 10:10:30'),
(687, 'hibiscus', 'Berhasil Login dengan IP ::1', '2020-05-26 10:11:02'),
(688, 'admin', 'Berhasil Login dengan IP ::1', '2020-05-26 10:11:57'),
(689, 'lorem', 'Berhasil Login dengan IP ::1', '2020-05-26 10:12:19'),
(690, 'drsam', 'Gagal Login', '2020-05-26 10:13:26'),
(691, 'drsam', 'Berhasil Login dengan IP ::1', '2020-05-26 10:13:31'),
(692, 'admin', 'Berhasil Login dengan IP ::1', '2020-05-26 10:13:48'),
(693, 'dolors', 'Berhasil Login dengan IP ::1', '2020-05-26 13:08:21'),
(694, 'drwatson', 'Berhasil Login dengan IP ::1', '2020-05-26 13:16:52'),
(695, 'hibiscus', 'Berhasil Login dengan IP ::1', '2020-05-25 18:50:51'),
(696, 'lorem', 'Berhasil Login dengan IP ::1', '2020-05-25 19:03:29'),
(697, 'dolors', 'Berhasil Login dengan IP ::1', '2020-05-25 19:31:14'),
(698, 'hibiscus', 'Gagal Login', '2020-05-25 19:31:49'),
(699, 'lorem', 'Berhasil Login dengan IP ::1', '2020-05-25 19:31:56'),
(700, 'hibiscus', 'Berhasil Login dengan IP ::1', '2020-05-25 19:33:21'),
(701, 'lorem', 'Berhasil Login dengan IP ::1', '2020-05-25 19:34:28'),
(702, 'hibiscus', 'Berhasil Login dengan IP ::1', '2020-05-25 19:35:21'),
(703, 'admin', 'Berhasil Login dengan IP ::1', '2020-05-25 19:36:16'),
(704, 'hibiscus', 'Berhasil Login dengan IP ::1', '2020-05-26 10:37:04'),
(705, 'lorem', 'Berhasil Login dengan IP ::1', '2020-05-26 10:37:51'),
(706, 'hibiscus', 'Berhasil Login dengan IP ::1', '2020-05-26 10:45:17'),
(707, 'dolors', 'Berhasil Login dengan IP ::1', '2020-05-26 10:48:38'),
(708, 'drsam', 'Berhasil Login dengan IP ::1', '2020-05-26 10:49:33'),
(709, 'drwatson', 'Berhasil Login dengan IP ::1', '2020-05-26 10:49:51'),
(710, 'marsh', 'Berhasil Login dengan IP ::1', '2020-05-26 10:50:22'),
(711, 'drsam', 'Berhasil Login dengan IP ::1', '2020-05-26 10:54:39'),
(712, 'dolors', 'Berhasil Login dengan IP ::1', '2020-05-26 10:57:46'),
(713, 'ginger', 'Berhasil Login dengan IP ::1', '2020-05-26 10:58:58'),
(714, 'drwatson', 'Berhasil Login dengan IP ::1', '2020-05-26 10:59:14'),
(715, 'marsh', 'Berhasil Login dengan IP ::1', '2020-05-26 10:59:55');
INSERT INTO `log` (`id`, `username`, `aksi`, `tanggal`) VALUES
(716, 'drsam', 'Berhasil Login dengan IP ::1', '2020-05-26 11:00:59'),
(717, 'drwatson', 'Berhasil Login dengan IP ::1', '2020-05-26 11:01:29'),
(718, 'ginger', 'Berhasil Login dengan IP ::1', '2020-05-26 11:04:48'),
(719, 'hibiscus', 'Gagal Login', '2020-05-26 11:06:17'),
(720, 'hibiscus', 'Berhasil Login dengan IP ::1', '2020-05-26 11:06:24'),
(721, 'ginger', 'Berhasil Login dengan IP ::1', '2020-05-26 20:10:28'),
(722, 'admin', 'Berhasil Login dengan IP ::1', '2020-05-26 20:11:31'),
(723, 'ginger', 'Berhasil Login dengan IP ::1', '2020-05-26 20:56:43'),
(724, 'drwatson', 'Berhasil Login dengan IP ::1', '2020-05-26 20:56:56'),
(725, 'lorem', 'Berhasil Login dengan IP ::1', '2020-05-26 20:57:13'),
(726, 'hibiscus', 'Berhasil Login dengan IP ::1', '2020-05-26 20:57:30'),
(727, 'lorem', 'Berhasil Login dengan IP ::1', '2020-05-26 21:05:42'),
(728, 'drwatson', 'Berhasil Login dengan IP ::1', '2020-05-26 21:06:07'),
(729, 'marsh', 'Berhasil Login dengan IP ::1', '2020-05-26 21:06:56'),
(730, 'lorem', 'Berhasil Login dengan IP ::1', '2020-05-26 21:07:33'),
(731, 'ginger', 'Berhasil Login dengan IP ::1', '2020-05-26 21:07:47'),
(732, 'drwatson', 'Berhasil Login dengan IP ::1', '2020-05-26 21:07:59'),
(733, 'marsh', 'Berhasil Login dengan IP ::1', '2020-05-26 21:08:10'),
(734, 'hibiscus', 'Gagal Login', '2020-05-26 21:17:28'),
(735, 'hibiscus', 'Berhasil Login dengan IP ::1', '2020-05-26 21:17:33'),
(736, 'lorem', 'Berhasil Login dengan IP ::1', '2020-05-26 21:17:49'),
(737, 'drwatson', 'Berhasil Login dengan IP ::1', '2020-05-26 21:18:02'),
(738, 'ginger', 'Berhasil Login dengan IP ::1', '2020-05-26 21:18:30'),
(739, 'marsh', 'Berhasil Login dengan IP ::1', '2020-05-26 21:19:02'),
(740, 'admin', 'Berhasil Login dengan IP ::1', '2020-05-27 07:51:13'),
(741, 'hibiscus', 'Berhasil Login dengan IP ::1', '2020-05-27 07:58:15'),
(742, 'admin', 'Berhasil Login dengan IP ::1', '2020-05-27 07:59:24'),
(743, 'do', 'Gagal Login', '2020-05-27 07:59:32'),
(744, 'dolors', 'Berhasil Login dengan IP ::1', '2020-05-27 07:59:42'),
(745, 'lorem', 'Berhasil Login dengan IP ::1', '2020-05-27 08:00:04'),
(746, 'dolors', 'Berhasil Login dengan IP ::1', '2020-05-27 08:04:45'),
(747, 'lorem', 'Berhasil Login dengan IP ::1', '2020-05-27 08:05:07'),
(748, 'dolors', 'Berhasil Login dengan IP ::1', '2020-05-27 08:19:13'),
(749, 'hibiscus', 'Berhasil Login dengan IP ::1', '2020-05-27 08:24:30'),
(750, 'admin', 'Berhasil Login dengan IP ::1', '2020-05-27 07:26:38'),
(751, 'hibiscus', 'Berhasil Login dengan IP ::1', '2020-05-28 07:31:28'),
(752, 'admin', 'Berhasil Login dengan IP ::1', '2020-05-28 07:32:39'),
(753, 'lorem', 'Berhasil Login dengan IP ::1', '2020-05-28 07:33:07'),
(754, 'drwatson', 'Berhasil Login dengan IP ::1', '2020-05-28 07:33:34'),
(755, 'marsh', 'Berhasil Login dengan IP ::1', '2020-05-28 07:34:00'),
(756, 'drwatson', 'Berhasil Login dengan IP ::1', '2020-05-28 07:34:31'),
(757, 'ginger', 'Berhasil Login dengan IP ::1', '2020-05-28 07:35:28'),
(758, 'hibiscus', 'Berhasil Login dengan IP ::1', '2020-05-28 07:35:55'),
(759, 'hibiscus', 'Berhasil Login dengan IP ::1', '2020-05-27 09:45:12'),
(760, 'drwatson', 'Berhasil Login dengan IP ::1', '2020-05-27 09:45:46'),
(761, 'hibiscus', 'Berhasil Login dengan IP ::1', '2020-05-27 09:46:07'),
(762, 'ginger', 'Berhasil Login dengan IP ::1', '2020-05-27 09:47:20'),
(763, 'hibiscus', 'Berhasil Login dengan IP ::1', '2020-05-27 09:47:57'),
(764, 'drwatson', 'Berhasil Login dengan IP ::1', '2020-05-27 09:49:04'),
(765, 'hibiscus', 'Berhasil Login dengan IP ::1', '2020-05-27 09:52:29'),
(766, 'admin', 'Berhasil Login dengan IP ::1', '2020-05-28 07:22:49'),
(767, 'hibiscus', 'Berhasil Login dengan IP ::1', '2020-05-28 07:39:54'),
(768, 'drwatson', 'Berhasil Login dengan IP ::1', '2020-05-28 07:40:26'),
(769, 'hibiscus', 'Berhasil Login dengan IP ::1', '2020-05-28 09:28:03'),
(770, 'admin', 'Berhasil Login dengan IP ::1', '2020-05-28 09:29:55'),
(771, 'drwatson', 'Berhasil Login dengan IP ::1', '2020-05-28 09:30:49'),
(772, 'admin', 'Berhasil Login dengan IP ::1', '2020-05-28 09:31:39'),
(773, 'lorem', 'Berhasil Login dengan IP ::1', '2020-05-28 09:32:06'),
(774, 'marsh', 'Berhasil Login dengan IP ::1', '2020-05-28 09:33:52'),
(775, 'hibiscus', 'Berhasil Login dengan IP ::1', '2020-05-28 09:47:48'),
(776, 'admin', 'Berhasil Login dengan IP ::1', '2020-05-29 07:57:12'),
(777, 'drwatson', 'Gagal Login', '2020-05-29 07:58:21'),
(778, 'hibiscus', 'Berhasil Login dengan IP ::1', '2020-05-29 07:58:29'),
(779, 'drwatson', 'Berhasil Login dengan IP ::1', '2020-05-29 07:59:27'),
(780, 'ginger', 'Gagal Login', '2020-05-29 08:33:37'),
(781, 'ginger', 'Berhasil Login dengan IP ::1', '2020-05-29 08:33:42'),
(782, 'hibiscus', 'Berhasil Login dengan IP ::1', '2020-05-29 08:34:31'),
(783, 'drwatson', 'Berhasil Login dengan IP ::1', '2020-05-29 08:35:33'),
(784, 'marsh', 'Berhasil Login dengan IP ::1', '2020-05-29 08:41:13'),
(785, 'marsh', 'Berhasil Login dengan IP ::1', '2020-05-30 07:29:23'),
(786, 'admin', 'Berhasil Login dengan IP ::1', '2020-05-30 07:33:21'),
(787, 'admin', 'Berhasil Login dengan IP ::1', '2020-05-30 07:33:54'),
(788, 'hibiscus', 'Berhasil Login dengan IP ::1', '2020-05-30 07:34:19'),
(789, 'drwatson', 'Berhasil Login dengan IP ::1', '2020-05-30 07:34:49'),
(790, 'marsh', 'Berhasil Login dengan IP ::1', '2020-05-30 07:35:32'),
(791, 'drwatson', 'Berhasil Login dengan IP ::1', '2020-05-30 07:54:13'),
(792, 'hibiscus', 'Berhasil Login dengan IP ::1', '2020-05-30 08:36:19'),
(793, 'drwatson', 'Berhasil Login dengan IP ::1', '2020-05-30 08:37:12'),
(794, 'hibiscus', 'Berhasil Login dengan IP ::1', '2020-05-30 08:45:35'),
(795, 'marsh', 'Berhasil Login dengan IP ::1', '2020-05-30 15:52:06'),
(796, 'hibiscus', 'Berhasil Login dengan IP ::1', '2020-06-01 00:35:51'),
(797, 'admin', 'Berhasil Login dengan IP ::1', '2020-06-01 00:40:13'),
(798, 'hibiscus', 'Berhasil Login dengan IP ::1', '2020-06-01 00:41:10'),
(799, 'drwatson', 'Berhasil Login dengan IP ::1', '2020-06-01 00:41:44'),
(800, 'ginger', 'Berhasil Login dengan IP ::1', '2020-06-01 00:45:37'),
(801, 'drwatson', 'Berhasil Login dengan IP ::1', '2020-06-01 00:48:03'),
(802, 'marsh', 'Berhasil Login dengan IP ::1', '2020-06-01 01:52:00'),
(803, 'hibiscus', 'Berhasil Login dengan IP ::1', '2020-06-01 02:02:18'),
(804, 'marsh', 'Berhasil Login dengan IP ::1', '2020-06-02 00:43:45'),
(805, 'marsh', 'Berhasil Login dengan IP ::1', '2020-06-03 03:11:19'),
(806, 'admin', 'Berhasil Login dengan IP ::1', '2020-06-04 00:46:10'),
(807, 'hibiscus', 'Berhasil Login dengan IP ::1', '2020-06-04 00:54:22'),
(808, 'drwatson', 'Berhasil Login dengan IP ::1', '2020-06-04 00:55:25'),
(809, 'ginger', 'Berhasil Login dengan IP ::1', '2020-06-04 01:15:56'),
(810, 'drwatson', 'Berhasil Login dengan IP ::1', '2020-06-04 01:26:47'),
(811, 'marsh', 'Berhasil Login dengan IP ::1', '2020-06-04 01:34:59'),
(812, 'marsh', 'Berhasil Login dengan IP ::1', '2020-06-04 07:29:05'),
(813, 'marsh', 'Berhasil Login dengan IP ::1', '2020-06-05 07:32:01'),
(814, 'drwatson', 'Berhasil Login dengan IP ::1', '2020-06-05 07:51:17'),
(815, 'hibiscus', 'Berhasil Login dengan IP ::1', '2020-06-05 08:43:11'),
(816, 'admin', 'Berhasil Login dengan IP ::1', '2020-06-05 08:53:57'),
(817, 'drwatson', 'Gagal Login', '2020-06-05 08:56:13'),
(818, 'hibiscus', 'Berhasil Login dengan IP ::1', '2020-06-05 08:56:22'),
(819, 'drwatson', 'Berhasil Login dengan IP ::1', '2020-06-05 08:56:59'),
(820, 'marsh', 'Berhasil Login dengan IP ::1', '2020-06-05 08:58:34'),
(821, 'hibiscus', 'Berhasil Login dengan IP ::1', '2020-06-05 10:07:27'),
(822, 'marsh', 'Berhasil Login dengan IP ::1', '2020-06-05 14:17:16'),
(823, 'hibiscus', 'Berhasil Login dengan IP ::1', '2020-06-05 17:16:53'),
(824, 'marsh', 'Berhasil Login dengan IP ::1', '2020-06-05 21:42:02'),
(825, 'hibiscus', 'Berhasil Login dengan IP ::1', '2020-06-05 22:12:19'),
(826, 'admin', 'Berhasil Login dengan IP ::1', '2020-06-05 22:13:37'),
(827, 'marsh', 'Berhasil Login dengan IP ::1', '2020-06-05 22:14:08'),
(828, 'marsh', 'Berhasil Login dengan IP ::1', '2020-06-06 07:32:58'),
(829, 'drwatson', 'Berhasil Login dengan IP ::1', '2020-06-06 07:34:45'),
(830, 'drwatson', 'Berhasil Login dengan IP ::1', '2020-06-06 09:58:12'),
(831, 'marsh', 'Berhasil Login dengan IP ::1', '2020-06-06 15:03:32'),
(832, 'marsh', 'Gagal Login', '2020-06-06 17:23:44'),
(833, 'marsh', 'Berhasil Login dengan IP ::1', '2020-06-06 17:23:50'),
(834, 'marsh', 'Berhasil Login dengan IP ::1', '2020-06-06 22:20:10'),
(835, 'marsh', 'Berhasil Login dengan IP ::1', '2020-06-06 21:40:52'),
(836, 'marsh', 'Berhasil Login dengan IP ::1', '2020-06-07 23:19:00'),
(837, 'hibiscus', 'Berhasil Login dengan IP ::1', '2020-06-09 08:38:45'),
(838, 'admin', 'Berhasil Login dengan IP ::1', '2020-06-09 08:39:18'),
(839, 'admin', 'Berhasil Login dengan IP ::1', '2020-06-09 08:40:02'),
(840, 'hibiscus', 'Berhasil Login dengan IP ::1', '2020-06-09 08:44:53'),
(841, 'lorem', 'Berhasil Login dengan IP ::1', '2020-06-09 08:45:32'),
(842, 'drwatson', 'Berhasil Login dengan IP ::1', '2020-06-09 08:46:08'),
(843, 'marsh', 'Berhasil Login dengan IP ::1', '2020-06-09 08:46:42'),
(844, 'drwatson', 'Berhasil Login dengan IP ::1', '2020-06-09 08:47:53'),
(845, 'ginger', 'Berhasil Login dengan IP ::1', '2020-06-09 08:48:52'),
(846, 'hibiscus', 'Berhasil Login dengan IP ::1', '2020-06-09 08:49:57'),
(847, 'lorem', 'Berhasil Login dengan IP ::1', '2020-06-09 08:53:36'),
(848, 'drwatson', 'Berhasil Login dengan IP ::1', '2020-06-09 08:54:24'),
(849, 'marsh', 'Berhasil Login dengan IP ::1', '2020-06-09 08:54:51'),
(850, 'drwatson', 'Berhasil Login dengan IP ::1', '2020-06-09 08:55:55'),
(851, 'ginger', 'Berhasil Login dengan IP ::1', '2020-06-09 08:57:11'),
(852, 'hibiscus', 'Berhasil Login dengan IP ::1', '2020-06-09 08:58:22'),
(853, 'drwatson', 'Berhasil Login dengan IP ::1', '2020-06-09 09:01:06'),
(854, 'hibiscus', 'Berhasil Login dengan IP ::1', '2020-06-09 09:01:34'),
(855, 'drwatson', 'Berhasil Login dengan IP ::1', '2020-06-09 09:02:05'),
(856, 'hibiscus', 'Berhasil Login dengan IP ::1', '2020-06-09 09:07:19'),
(857, 'hibiscus', 'Berhasil Login dengan IP ::1', '2020-06-08 22:04:15'),
(858, 'marsh', 'Berhasil Login dengan IP ::1', '2020-06-09 22:19:16'),
(859, 'drwatson', 'Berhasil Login dengan IP ::1', '2020-06-09 22:21:14'),
(860, 'admin', 'Berhasil Login dengan IP ::1', '2020-06-09 22:25:11'),
(861, 'hibiscus', 'Berhasil Login dengan IP ::1', '2020-06-09 22:25:54'),
(862, 'drwatson', 'Berhasil Login dengan IP ::1', '2020-06-09 22:26:51'),
(863, 'marsh', 'Berhasil Login dengan IP ::1', '2020-06-09 22:29:02'),
(864, 'hibiscus', 'Berhasil Login dengan IP ::1', '2020-06-09 23:28:12'),
(865, 'drwatson', 'Berhasil Login dengan IP ::1', '2020-06-10 07:34:59'),
(866, 'marsh', 'Berhasil Login dengan IP ::1', '2020-06-10 07:38:23'),
(867, 'admin', 'Berhasil Login dengan IP ::1', '2020-06-10 17:47:57'),
(868, 'hibiscus', 'Berhasil Login dengan IP ::1', '2020-06-10 20:03:47'),
(869, 'admin', 'Berhasil Login dengan IP ::1', '2020-06-19 07:46:06'),
(870, 'hibiscus', 'Berhasil Login dengan IP ::1', '2020-06-19 07:46:50'),
(871, 'marsh', 'Berhasil Login dengan IP ::1', '2020-06-19 07:49:47'),
(872, 'drwatson', 'Berhasil Login dengan IP ::1', '2020-06-19 07:50:13'),
(873, 'admin', 'Berhasil Login dengan IP ::1', '2020-06-19 09:16:32'),
(874, 'admin', 'Berhasil Login dengan IP ::1', '2020-06-20 10:26:39'),
(875, 'admin', 'Gagal Login', '2020-06-21 18:49:38'),
(876, 'admin', 'Berhasil Login dengan IP ::1', '2020-06-21 18:49:53'),
(877, 'admin', 'Berhasil Login dengan IP ::1', '2020-06-22 02:55:51'),
(878, 'admin', 'Berhasil Login dengan IP ::1', '2020-06-22 06:18:12'),
(879, 'admin', 'Berhasil Login dengan IP ::1', '2020-06-23 02:55:52'),
(880, 'admin', 'Berhasil Login dengan IP ::1', '2020-06-23 04:33:30'),
(881, 'hibiscus', 'Berhasil Login dengan IP ::1', '2020-06-23 05:29:49'),
(882, 'admin', 'Berhasil Login dengan IP ::1', '2020-06-23 05:34:13'),
(883, 'admin', 'Berhasil Login dengan IP ::1', '2020-06-23 05:35:35'),
(884, 'admin', 'Berhasil Login dengan IP ::1', '2020-06-23 05:38:17'),
(885, 'hibiscus', 'Berhasil Login dengan IP ::1', '2020-06-23 06:06:17'),
(886, 'hibiscus', 'Berhasil Login dengan IP ::1', '2020-06-23 07:20:33'),
(887, 'hibiscus', 'Berhasil Login dengan IP ::1', '2020-06-23 07:26:01'),
(888, 'hibiscus', 'Berhasil Login dengan IP ::1', '2020-06-23 07:29:45'),
(889, 'hibiscus', 'Berhasil Login dengan IP ::1', '2020-06-23 09:30:22'),
(890, 'hibiscus', 'Berhasil Login dengan IP ::1', '2020-06-23 09:42:12'),
(891, 'lorem', 'Berhasil Login dengan IP ::1', '2020-06-23 09:42:40'),
(892, 'drwatson', 'Berhasil Login dengan IP ::1', '2020-06-23 09:43:21'),
(893, 'marsh', 'Gagal Login', '2020-06-23 09:43:43'),
(894, 'marsh', 'Gagal Login', '2020-06-23 09:43:43'),
(895, 'marsh', 'Berhasil Login dengan IP ::1', '2020-06-23 09:43:49'),
(896, 'drwatson', 'Berhasil Login dengan IP ::1', '2020-06-23 09:44:49'),
(897, 'ginger', 'Berhasil Login dengan IP ::1', '2020-06-23 09:46:04'),
(898, 'hibiscus', 'Gagal Login', '2020-06-23 09:46:43'),
(899, 'hibiscus', 'Berhasil Login dengan IP ::1', '2020-06-23 09:46:49'),
(900, 'hibiscus', 'Berhasil Login dengan IP ::1', '2020-06-23 09:51:41'),
(901, 'drwatson', 'Berhasil Login dengan IP ::1', '2020-06-23 09:52:20'),
(902, 'ginger', 'Gagal Login', '2020-06-23 09:52:45'),
(903, 'ginger', 'Gagal Login', '2020-06-23 09:52:51'),
(904, 'marsh', 'Berhasil Login dengan IP ::1', '2020-06-23 09:52:58'),
(905, 'hibiscus', 'Berhasil Login dengan IP ::1', '2020-06-23 09:54:12'),
(906, 'admin', 'Berhasil Login dengan IP ::1', '2020-06-24 03:08:38'),
(907, 'admin', 'Berhasil Login dengan IP ::1', '2020-06-24 03:09:03'),
(908, 'hibiscus', 'Berhasil Login dengan IP ::1', '2020-06-24 03:10:20'),
(909, 'drwatson', 'Gagal Login', '2020-06-24 03:11:10'),
(910, 'lorem', 'Berhasil Login dengan IP ::1', '2020-06-24 03:11:19'),
(911, 'drwatson', 'Berhasil Login dengan IP ::1', '2020-06-24 03:11:42'),
(912, 'admin', 'Berhasil Login dengan IP ::1', '2020-06-24 03:13:36'),
(913, 'drwatson', 'Berhasil Login dengan IP ::1', '2020-06-24 03:18:17'),
(914, 'hibiscus', 'Gagal Login', '2020-06-24 03:18:50'),
(915, 'hibiscus', 'Berhasil Login dengan IP ::1', '2020-06-24 03:18:56'),
(916, 'hibiscus', 'Berhasil Login dengan IP ::1', '2020-06-24 03:21:43'),
(917, 'lorem', 'Berhasil Login dengan IP ::1', '2020-06-24 03:22:17'),
(918, 'drwatson', 'Berhasil Login dengan IP ::1', '2020-06-24 03:26:11'),
(919, 'hibiscus', 'Berhasil Login dengan IP ::1', '2020-06-24 03:27:58'),
(920, 'drwatson', 'Berhasil Login dengan IP ::1', '2020-06-24 03:28:24'),
(921, 'lorem', 'Berhasil Login dengan IP ::1', '2020-06-24 03:29:51'),
(922, 'drwatson', 'Berhasil Login dengan IP ::1', '2020-06-24 03:30:55'),
(923, 'ginger', 'Berhasil Login dengan IP ::1', '2020-06-24 03:31:23'),
(924, 'drwatson', 'Berhasil Login dengan IP ::1', '2020-06-24 03:33:46'),
(925, 'marsh', 'Berhasil Login dengan IP ::1', '2020-06-24 03:34:51'),
(926, 'drwatson', 'Berhasil Login dengan IP ::1', '2020-06-24 03:36:01'),
(927, 'drsam', 'Berhasil Login dengan IP ::1', '2020-06-24 03:36:32'),
(928, 'drwatson', 'Berhasil Login dengan IP ::1', '2020-06-24 03:37:40'),
(929, 'hibiscus', 'Gagal Login', '2020-06-24 03:38:13'),
(930, 'hibiscus', 'Berhasil Login dengan IP ::1', '2020-06-24 03:38:18'),
(931, 'drsam', 'Berhasil Login dengan IP ::1', '2020-06-24 04:04:32'),
(932, 'hibiscus', 'Berhasil Login dengan IP ::1', '2020-06-24 04:27:23'),
(933, 'drwatson', 'Berhasil Login dengan IP ::1', '2020-06-24 04:30:01'),
(934, 'marsh', 'Berhasil Login dengan IP ::1', '2020-06-24 04:30:33'),
(935, 'drwatson', 'Berhasil Login dengan IP ::1', '2020-06-24 04:33:28'),
(936, 'ginger', 'Berhasil Login dengan IP ::1', '2020-06-24 04:34:49'),
(937, 'ginger', 'Berhasil Login dengan IP ::1', '2020-06-24 04:38:55'),
(938, 'drwatson', 'Berhasil Login dengan IP ::1', '2020-06-24 05:09:12'),
(939, 'drwatson', 'Berhasil Login dengan IP ::1', '2020-06-24 05:16:44'),
(940, 'lorem', 'Berhasil Login dengan IP ::1', '2020-06-24 05:17:52'),
(941, 'admin', 'Berhasil Login dengan IP ::1', '2020-06-24 05:18:55'),
(942, 'lorem', 'Berhasil Login dengan IP ::1', '2020-06-24 05:21:31'),
(943, 'dolors', 'Berhasil Login dengan IP ::1', '2020-06-24 05:40:29'),
(944, 'drwatson', 'Berhasil Login dengan IP ::1', '2020-06-24 05:41:14'),
(945, 'lorem', 'Berhasil Login dengan IP ::1', '2020-06-24 05:42:15'),
(946, 'dolors', 'Berhasil Login dengan IP ::1', '2020-06-24 05:45:27'),
(947, 'admin', 'Berhasil Login dengan IP ::1', '2020-06-24 05:45:49'),
(948, 'lorem', 'Berhasil Login dengan IP ::1', '2020-06-24 05:47:09'),
(949, 'admin', 'Berhasil Login dengan IP ::1', '2020-06-24 07:04:57'),
(950, 'lorem', 'Berhasil Login dengan IP ::1', '2020-06-24 07:05:25'),
(951, 'lorem', 'Gagal Login', '2020-06-24 07:06:18'),
(952, 'lorem', 'Berhasil Login dengan IP ::1', '2020-06-24 07:06:29'),
(953, 'ginger', 'Berhasil Login dengan IP ::1', '2020-06-24 07:07:26'),
(954, 'drwatson', 'Berhasil Login dengan IP ::1', '2020-06-24 07:11:32'),
(955, 'drsam', 'Berhasil Login dengan IP ::1', '2020-06-24 07:11:59'),
(956, 'drwatson', 'Berhasil Login dengan IP ::1', '2020-06-24 07:14:46'),
(957, 'hibiscus', 'Berhasil Login dengan IP ::1', '2020-06-24 07:15:13'),
(958, 'drwatson', 'Berhasil Login dengan IP ::1', '2020-06-24 07:23:13'),
(959, 'hibiscus', 'Berhasil Login dengan IP ::1', '2020-06-24 07:29:04'),
(960, 'hibiscus', 'Berhasil Login dengan IP ::1', '2020-06-24 08:01:29'),
(961, 'drwatson', 'Berhasil Login dengan IP ::1', '2020-06-24 08:02:16'),
(962, 'ginger', 'Berhasil Login dengan IP ::1', '2020-06-24 08:04:44'),
(963, 'drwatson', 'Berhasil Login dengan IP ::1', '2020-06-24 08:05:22'),
(964, 'hibiscus', 'Berhasil Login dengan IP ::1', '2020-06-24 08:06:06'),
(965, 'drwatson', 'Berhasil Login dengan IP ::1', '2020-06-24 08:21:49'),
(966, 'drsam', 'Berhasil Login dengan IP ::1', '2020-06-24 08:22:21'),
(967, 'hibiscus', 'Berhasil Login dengan IP ::1', '2020-06-24 08:22:56'),
(968, 'hibiscus', 'Berhasil Login dengan IP ::1', '2020-06-24 08:23:59'),
(969, 'admin', 'Berhasil Login dengan IP ::1', '2020-06-24 08:30:39'),
(970, 'admin', 'Berhasil Login dengan IP ::1', '2020-06-24 09:42:26'),
(971, 'admin', 'Berhasil Login dengan IP ::1', '2020-06-24 09:42:26'),
(972, 'hibiscus', 'Berhasil Login dengan IP ::1', '2020-06-25 02:28:37'),
(973, 'drwatson', 'Berhasil Login dengan IP ::1', '2020-06-25 02:29:25'),
(974, 'ginger', 'Berhasil Login dengan IP ::1', '2020-06-25 02:30:36'),
(975, 'drwatson', 'Berhasil Login dengan IP ::1', '2020-06-25 02:31:28'),
(976, 'hibiscus', 'Berhasil Login dengan IP ::1', '2020-06-25 02:31:57'),
(977, 'drwatson', 'Berhasil Login dengan IP ::1', '2020-06-25 03:57:01'),
(978, 'marsh', 'Berhasil Login dengan IP ::1', '2020-06-25 03:58:17'),
(979, 'ginger', 'Berhasil Login dengan IP ::1', '2020-06-25 03:58:34'),
(980, 'ginger', 'Berhasil Login dengan IP ::1', '2020-06-25 03:58:56'),
(981, 'hibiscus', 'Berhasil Login dengan IP ::1', '2020-06-25 04:00:28'),
(982, 'hibiscus', 'Berhasil Login dengan IP ::1', '2020-06-25 05:37:02'),
(983, 'drwatson', 'Berhasil Login dengan IP ::1', '2020-06-25 05:39:13'),
(984, 'ginger', 'Berhasil Login dengan IP ::1', '2020-06-25 05:43:06'),
(985, 'hibiscus', 'Berhasil Login dengan IP ::1', '2020-06-25 05:55:42'),
(986, 'admin', 'Berhasil Login dengan IP ::1', '2020-06-25 06:06:01'),
(987, 'hibiscus', 'Berhasil Login dengan IP ::1', '2020-06-25 06:16:51'),
(988, 'ginger', 'Gagal Login', '2020-06-25 06:17:12'),
(989, 'ginger', 'Berhasil Login dengan IP ::1', '2020-06-25 06:17:42'),
(990, 'hibiscus', 'Berhasil Login dengan IP ::1', '2020-06-25 06:18:23'),
(991, 'admin', 'Berhasil Login dengan IP ::1', '2020-06-25 06:23:11'),
(992, 'hibiscus', 'Berhasil Login dengan IP ::1', '2020-06-25 06:24:22'),
(993, 'hibiscus', 'Berhasil Login dengan IP ::1', '2020-06-26 03:17:49'),
(994, 'ginger', 'Berhasil Login dengan IP ::1', '2020-06-26 03:33:28'),
(995, 'ginger', 'Berhasil Login dengan IP ::1', '2020-06-26 09:45:58'),
(996, 'ginger', 'Berhasil Login dengan IP ::1', '2020-06-27 02:42:07'),
(997, 'ginger', 'Berhasil Login dengan IP ::1', '2020-06-27 06:43:12'),
(998, 'ginger', 'Berhasil Login dengan IP ::1', '2020-06-29 05:46:31'),
(999, 'admin', 'Berhasil Login dengan IP ::1', '2020-06-29 07:16:29'),
(1000, 'ginger', 'Berhasil Login dengan IP ::1', '2020-06-29 22:11:53'),
(1001, 'ginger', 'Berhasil Login dengan IP ::1', '2020-06-29 22:48:12'),
(1002, 'ginger', 'Berhasil Login dengan IP ::1', '2020-06-30 02:35:36'),
(1003, 'ginger', 'Berhasil Login dengan IP ::1', '2020-06-30 10:13:40'),
(1004, 'ginger', 'Berhasil Login dengan IP ::1', '2020-07-05 07:54:55'),
(1005, 'hibiscus', 'Berhasil Login dengan IP ::1', '2020-07-05 08:56:02'),
(1006, 'ginger', 'Berhasil Login dengan IP ::1', '2020-07-06 07:33:31'),
(1007, 'ginger', 'Berhasil Login dengan IP ::1', '2020-07-06 08:03:32'),
(1008, 'ginger', 'Berhasil Login dengan IP ::1', '2020-07-06 09:14:05'),
(1009, 'ginger', 'Berhasil Login dengan IP ::1', '2020-07-07 02:30:00'),
(1010, 'ginger', 'Berhasil Login dengan IP ::1', '2020-07-08 04:33:34'),
(1011, 'ginger', 'Berhasil Login dengan IP ::1', '2020-07-08 06:25:25'),
(1012, 'admin', 'Berhasil Login dengan IP ::1', '2020-07-08 06:25:50'),
(1013, 'ginger', 'Berhasil Login dengan IP ::1', '2020-07-08 07:33:30'),
(1014, 'ginger', 'Berhasil Login dengan IP ::1', '2020-07-08 09:07:46'),
(1015, 'ginger', 'Berhasil Login dengan IP ::1', '2020-07-09 06:19:28'),
(1016, 'ginger', 'Berhasil Login dengan IP ::1', '2020-07-09 07:51:14'),
(1017, 'ginger', 'Berhasil Login dengan IP ::1', '2020-07-10 05:42:15'),
(1018, 'hibiscus', 'Berhasil Login dengan IP ::1', '2020-07-10 06:59:15'),
(1019, 'hibiscus', 'Berhasil Login dengan IP ::1', '2020-07-10 22:36:42'),
(1020, 'hibiscus', 'Berhasil Login dengan IP ::1', '2020-07-11 04:32:41'),
(1021, 'hibiscus', 'Berhasil Login dengan IP ::1', '2020-07-11 06:14:14'),
(1022, 'admin', 'Berhasil Login dengan IP ::1', '2020-07-11 06:59:48'),
(1023, 'admin', 'Berhasil Login dengan IP ::1', '2020-07-11 16:39:45'),
(1024, 'hibiscus', 'Berhasil Login dengan IP ::1', '2020-07-11 22:14:51'),
(1025, 'admin', 'Berhasil Login dengan IP ::1', '2020-07-27 05:36:03'),
(1026, 'hibiscus', 'Berhasil Login dengan IP ::1', '2020-07-27 06:41:46'),
(1027, 'admin', 'Berhasil Login dengan IP ::1', '2020-07-27 06:47:24'),
(1028, 'hibiscus', 'Berhasil Login dengan IP ::1', '2020-07-27 08:01:02'),
(1029, 'hibiscus', 'Berhasil Login dengan IP ::1', '2020-08-01 07:21:20'),
(1030, 'drwatson', 'Berhasil Login dengan IP ::1', '2020-08-01 07:24:54'),
(1031, 'hibiscus', 'Berhasil Login dengan IP ::1', '2020-08-01 07:26:42'),
(1032, 'admin', 'Gagal Login', '2020-08-01 07:29:53'),
(1033, 'admin', 'Berhasil Login dengan IP ::1', '2020-08-01 07:30:02'),
(1034, 'hibiscus', 'Berhasil Login dengan IP ::1', '2020-08-01 07:30:42'),
(1035, 'hibiscus', 'Berhasil Login dengan IP ::1', '2020-08-18 07:30:33'),
(1036, 'admin', 'Berhasil Login dengan IP ::1', '2020-08-18 07:31:12'),
(1037, 'hibiscus', 'Berhasil Login dengan IP ::1', '2020-08-18 07:31:43'),
(1038, 'admin', 'Berhasil Login dengan IP ::1', '2020-08-18 07:32:39'),
(1039, 'drwatson', 'Berhasil Login dengan IP ::1', '2020-08-18 07:33:36'),
(1040, 'admin', 'Berhasil Login dengan IP ::1', '2020-08-24 06:51:38'),
(1041, 'hibiscus', 'Berhasil Login dengan IP 180.254.94.37', '2020-08-28 23:47:14'),
(1042, 'hibiscus', 'Berhasil Login dengan IP 180.254.94.37', '2020-08-28 23:52:10'),
(1043, 'admin', 'Gagal Login', '2020-08-29 00:07:57'),
(1044, 'admin', 'Berhasil Login dengan IP 180.254.94.37', '2020-08-29 00:08:04'),
(1045, 'hibiscus', 'Gagal Login', '2020-08-29 00:11:26'),
(1046, 'hibiscus', 'Berhasil Login dengan IP 36.81.31.222', '2020-08-31 01:42:14'),
(1047, 'hibiscus', 'Berhasil Login dengan IP 118.96.154.215', '2020-08-31 01:53:29'),
(1048, 'hibiscus', 'Berhasil Login dengan IP 36.81.31.222', '2020-08-31 02:02:00'),
(1049, 'admin', 'Gagal Login', '2020-08-31 02:03:49'),
(1050, 'hibiscus', 'Berhasil Login dengan IP 112.215.238.250', '2020-09-07 03:56:49'),
(1051, 'admin', 'Gagal Login', '2020-11-10 02:17:01'),
(1052, 'apotik', 'Gagal Login', '2020-11-10 02:17:14'),
(1053, 'ginger', 'Berhasil Login dengan IP 140.213.190.57', '2020-11-10 02:21:16'),
(1054, 'admin', 'Berhasil Login dengan IP 140.213.190.57', '2020-11-10 02:22:44'),
(1055, 'admin', 'Berhasil Login dengan IP 103.144.102.12', '2020-11-10 02:26:22'),
(1056, 'admin', 'Berhasil Login dengan IP 180.245.223.251', '2020-11-10 02:26:26'),
(1057, 'admin', 'Berhasil Login dengan IP 120.188.65.212', '2020-11-10 02:28:42'),
(1058, 'ginger', 'Berhasil Login dengan IP 103.144.102.12', '2020-11-10 02:30:11'),
(1059, 'ginger', 'Gagal Login', '2020-11-10 02:31:40'),
(1060, 'admin', 'Berhasil Login dengan IP 103.144.102.12', '2020-11-10 02:31:54'),
(1061, 'ginger', 'Berhasil Login dengan IP 180.245.223.251', '2020-11-10 02:31:59'),
(1062, 'admin', 'Berhasil Login dengan IP 180.245.223.251', '2020-11-10 02:33:55'),
(1063, 'ginjer', 'Gagal Login', '2020-11-10 02:38:10'),
(1064, 'ginger', 'Berhasil Login dengan IP 120.188.65.212', '2020-11-10 02:38:32'),
(1065, 'admin', 'Berhasil Login dengan IP 120.188.65.212', '2020-11-10 02:40:53'),
(1066, 'admin', 'Gagal Login', '2020-11-16 06:11:48'),
(1067, 'admin', 'Berhasil Login dengan IP ::1', '2020-11-16 06:11:59'),
(1068, 'admin', 'Berhasil Login dengan IP ::1', '2020-11-16 06:12:24'),
(1069, 'admin', 'Gagal Login', '2020-11-16 06:12:32'),
(1070, 'admin', 'Berhasil Login dengan IP ::1', '2020-11-16 06:13:14'),
(1071, 'admin', 'Berhasil Login dengan IP ::1', '2020-11-16 14:35:44'),
(1072, 'admin', 'Gagal Login', '2020-11-16 16:47:15'),
(1073, 'admin', 'Berhasil Login dengan IP ::1', '2020-11-16 16:47:26'),
(1074, 'admin', 'Berhasil Login dengan IP ::1', '2020-11-16 16:47:47'),
(1075, 'admin', 'Berhasil Login dengan IP ::1', '2020-11-16 16:47:56'),
(1076, 'admin', 'Berhasil Login dengan IP ::1', '2020-11-16 16:49:12'),
(1077, 'ginger', 'Gagal Login', '2020-11-16 16:52:06'),
(1078, 'ginger', 'Berhasil Login dengan IP ::1', '2020-11-16 16:52:12'),
(1079, 'ginger', 'Berhasil Login dengan IP ::1', '2020-11-16 16:57:12'),
(1080, 'admin', 'Berhasil Login dengan IP ::1', '2020-11-17 02:18:10'),
(1081, 'admin', 'Berhasil Login dengan IP ::1', '2020-11-20 07:32:13'),
(1082, 'admin', 'Berhasil Login dengan IP ::1', '2020-11-20 07:32:23'),
(1083, 'drsam', 'Berhasil Login dengan IP ::1', '2020-11-20 07:54:50'),
(1084, 'drsam', 'Berhasil Login dengan IP ::1', '2020-11-20 07:55:26'),
(1085, 'ginger', 'Berhasil Login dengan IP ::1', '2020-11-20 07:57:06'),
(1086, 'ginger', 'Berhasil Login dengan IP ::1', '2020-11-20 07:57:41'),
(1087, 'drsam', 'Berhasil Login dengan IP ::1', '2020-11-20 07:59:57'),
(1088, 'admin', 'Berhasil Login dengan IP ::1', '2020-11-20 08:03:31'),
(1089, 'lab', 'Berhasil Login dengan IP ::1', '2020-11-20 08:07:24'),
(1090, 'lab', 'Berhasil Login dengan IP ::1', '2020-11-20 08:18:49'),
(1091, 'admin', 'Berhasil Login dengan IP ::1', '2020-11-20 08:34:31'),
(1092, 'ginger', 'Berhasil Login dengan IP ::1', '2020-11-20 08:34:48'),
(1093, 'admin', 'Berhasil Login dengan IP ::1', '2020-11-20 08:39:18'),
(1094, 'ginger', 'Berhasil Login dengan IP ::1', '2020-11-20 08:44:47'),
(1095, 'drsam', 'Berhasil Login dengan IP ::1', '2020-11-20 10:32:32'),
(1096, 'admin', 'Berhasil Login dengan IP ::1', '2020-11-20 10:41:54'),
(1097, 'drsam', 'Berhasil Login dengan IP ::1', '2020-11-20 10:42:11'),
(1098, 'ginger', 'Berhasil Login dengan IP ::1', '2020-11-20 10:47:50'),
(1099, 'ginger', 'Berhasil Login dengan IP ::1', '2020-11-20 10:49:17'),
(1100, 'lab', 'Berhasil Login dengan IP ::1', '2020-11-20 10:51:41'),
(1101, 'drsam', 'Gagal Login', '2020-11-20 10:53:14'),
(1102, 'drsam', 'Berhasil Login dengan IP ::1', '2020-11-20 10:54:47'),
(1103, 'admin', 'Gagal Login', '2020-11-20 13:49:52'),
(1104, 'admin', 'Berhasil Login dengan IP ::1', '2020-11-20 13:50:02'),
(1105, 'admin', 'Gagal Login', '2020-11-20 14:41:01'),
(1106, 'drsam', 'Berhasil Login dengan IP ::1', '2020-11-20 14:45:03'),
(1107, 'lab', 'Gagal Login', '2020-11-20 15:04:18'),
(1108, 'lab', 'Berhasil Login dengan IP ::1', '2020-11-20 15:04:27'),
(1109, 'ginger', 'Berhasil Login dengan IP ::1', '2020-11-20 15:19:12'),
(1110, 'admin', 'Berhasil Login dengan IP ::1', '2020-11-21 07:58:50'),
(1111, 'ginger', 'Berhasil Login dengan IP ::1', '2020-11-21 07:59:22'),
(1112, 'lab', 'Berhasil Login dengan IP ::1', '2020-11-21 08:03:04'),
(1113, 'drsam', 'Berhasil Login dengan IP ::1', '2020-11-21 08:03:24'),
(1114, 'drsam', 'Berhasil Login dengan IP ::1', '2020-11-21 09:11:25'),
(1115, 'drsam', 'Berhasil Login dengan IP ::1', '2020-11-21 09:12:27'),
(1116, 'ginger', 'Berhasil Login dengan IP ::1', '2020-11-21 09:55:45'),
(1117, 'lorem', 'Berhasil Login dengan IP ::1', '2020-11-21 11:05:24'),
(1118, 'ginger', 'Berhasil Login dengan IP ::1', '2020-11-21 11:06:13'),
(1119, 'lorem', 'Berhasil Login dengan IP ::1', '2020-11-21 11:09:22'),
(1120, 'ginger', 'Berhasil Login dengan IP ::1', '2020-11-21 11:25:01'),
(1121, 'hibiscus', 'Gagal Login', '2020-11-21 11:26:46'),
(1122, 'syahli', 'Gagal Login', '2020-11-21 11:27:08'),
(1123, 'hibiscus', 'Berhasil Login dengan IP ::1', '2020-11-21 11:28:34'),
(1124, 'hibiscus', 'Berhasil Login dengan IP ::1', '2020-11-21 11:40:58'),
(1125, 'apt', 'Gagal Login', '2020-11-21 11:53:01'),
(1126, 'apt', 'Berhasil Login dengan IP ::1', '2020-11-21 11:54:03'),
(1127, 'hibiscus', 'Berhasil Login dengan IP ::1', '2020-11-21 12:23:05'),
(1128, 'hibiscus', 'Berhasil Login dengan IP ::1', '2020-11-22 05:35:20'),
(1129, 'lab', 'Berhasil Login dengan IP ::1', '2020-11-22 08:12:07'),
(1130, 'hibiscus', 'Berhasil Login dengan IP ::1', '2020-11-22 08:13:28'),
(1131, 'hibiscus', 'Edit KategoriKa Produk (4)', '2020-11-22 16:25:38'),
(1132, 'ginger', 'Berhasil Login dengan IP ::1', '2020-11-23 04:21:52'),
(1133, 'hibiscus', 'Berhasil Login dengan IP ::1', '2020-11-23 04:30:48'),
(1134, 'admin', 'Berhasil Login dengan IP ::1', '2020-11-23 04:38:36'),
(1135, 'hibiscus', 'Berhasil Login dengan IP ::1', '2020-11-23 04:54:57'),
(1136, 'lab', 'Berhasil Login dengan IP ::1', '2020-11-23 07:31:48'),
(1137, 'drsam', 'Gagal Login', '2020-11-23 07:32:05'),
(1138, 'drsam', 'Berhasil Login dengan IP ::1', '2020-11-23 07:32:14'),
(1139, 'hibiscus', 'Berhasil Login dengan IP ::1', '2020-11-23 07:39:50'),
(1140, 'ginger', 'Berhasil Login dengan IP ::1', '2020-11-23 09:21:47'),
(1141, 'admin', 'Berhasil Login dengan IP ::1', '2020-11-23 09:49:06'),
(1142, 'ginger', 'Berhasil Login dengan IP ::1', '2020-11-23 09:52:21'),
(1143, 'ginger', 'Berhasil Login dengan IP ::1', '2020-11-23 10:46:08'),
(1144, 'admin', 'Berhasil Login dengan IP ::1', '2020-11-26 07:32:26'),
(1145, 'admin', 'Berhasil Login dengan IP ::1', '2020-11-26 13:41:02'),
(1146, 'admin', 'Berhasil Login dengan IP ::1', '2020-11-26 17:45:49'),
(1147, 'admin', 'Berhasil Login dengan IP ::1', '2020-11-27 04:19:51'),
(1148, 'admin', 'Hapus Data Produk (27112020)', '2020-11-27 04:39:22'),
(1149, 'admin', 'Hapus Data Produk (28112020)', '2020-11-27 07:43:51'),
(1150, 'admin', 'Hapus Data Produk (30122020)', '2020-11-27 08:03:00'),
(1151, 'admin', 'Berhasil Login dengan IP ::1', '2020-11-27 14:15:19'),
(1152, 'admin', 'Berhasil Login dengan IP ::1', '2020-11-27 14:36:39'),
(1153, 'admin', 'Berhasil Login dengan IP ::1', '2020-11-27 15:00:19'),
(1154, 'admin', 'Berhasil Login dengan IP ::1', '2020-11-27 15:25:43'),
(1155, 'admin', 'Berhasil Login dengan IP ::1', '2020-11-27 16:30:46'),
(1156, 'admin', 'Berhasil Login dengan IP ::1', '2020-11-30 03:31:08'),
(1157, 'admin', 'Gagal Login', '2020-11-30 04:04:10'),
(1158, 'admin', 'Berhasil Login dengan IP ::1', '2020-11-30 04:04:17'),
(1159, 'admin', 'Hapus Data Produk (28052014)', '2020-11-30 07:17:50'),
(1160, 'admin', 'Hapus Data Produk (1230202012)', '2020-11-30 07:34:15'),
(1161, 'admin', 'Berhasil Login dengan IP ::1', '2020-12-01 03:52:55'),
(1162, 'admin', 'Hapus Data Produk (30112020)', '2020-12-01 05:16:32'),
(1163, 'admin', 'Hapus Data Produk (879098)', '2020-12-01 05:17:15'),
(1164, 'admin', 'Hapus Data Produk (987809)', '2020-12-01 05:21:21'),
(1165, 'admin', 'Hapus Data Produk (890987)', '2020-12-01 05:23:50'),
(1166, 'admin', 'Hapus Data Produk (898789)', '2020-12-01 05:46:31'),
(1167, 'admin', 'Hapus Data Produk (898789)', '2020-12-01 06:07:03'),
(1168, 'ginger', 'Berhasil Login dengan IP ::1', '2020-12-01 06:12:28'),
(1169, 'admin', 'Berhasil Login dengan IP ::1', '2020-12-01 06:18:45'),
(1170, 'admin', 'Hapus Data Produk (01122020)', '2020-12-01 06:19:38'),
(1171, 'admin', 'Hapus Data Produk (01122020)', '2020-12-01 06:22:48'),
(1172, 'admin', 'Hapus Data Produk (01122020)', '2020-12-01 06:22:48'),
(1173, 'admin', 'Hapus Data Produk (01122020)', '2020-12-01 06:45:42'),
(1174, 'admin', 'Hapus Data Produk (01122020)', '2020-12-01 06:45:42'),
(1175, 'admin', 'Hapus Data Produk (01122020)', '2020-12-01 06:49:01'),
(1176, 'admin', 'Hapus Data Produk (01122020)', '2020-12-01 06:49:01'),
(1177, 'admin', 'Berhasil Login dengan IP 127.0.0.1', '2020-12-03 04:04:49'),
(1178, 'ginger', 'Berhasil Login dengan IP 127.0.0.1', '2020-12-03 04:09:16'),
(1179, 'ginger', 'Berhasil Login dengan IP 127.0.0.1', '2020-12-03 04:13:10'),
(1180, 'lab', 'Berhasil Login dengan IP 127.0.0.1', '2020-12-03 04:43:26'),
(1181, 'drsam', 'Berhasil Login dengan IP 127.0.0.1', '2020-12-03 04:47:25'),
(1182, 'marsh', 'Gagal Login', '2020-12-03 04:51:47'),
(1183, 'lorem', 'Berhasil Login dengan IP 127.0.0.1', '2020-12-03 04:51:55'),
(1184, 'hibiscus', 'Berhasil Login dengan IP 127.0.0.1', '2020-12-03 04:52:19'),
(1185, 'admin', 'Berhasil Login dengan IP 127.0.0.1', '2020-12-03 05:18:56'),
(1186, 'admin', 'Berhasil Login dengan IP 127.0.0.1', '2020-12-03 05:47:33'),
(1187, 'hibiscus', 'Berhasil Login dengan IP 127.0.0.1', '2020-12-03 06:04:29'),
(1188, 'admin', 'Berhasil Login dengan IP 127.0.0.1', '2020-12-03 06:19:17'),
(1189, 'admin', 'Data Treatment Baru ()', '2020-12-03 07:33:07'),
(1190, 'admin', 'Edit Data Ruangan (10)', '2020-12-03 07:33:20'),
(1191, 'admin', 'Hapus Ruangan (10)', '2020-12-03 07:34:40'),
(1192, 'hibiscus', 'Berhasil Login dengan IP 127.0.0.1', '2020-12-03 07:36:19'),
(1193, 'admin', 'Berhasil Login dengan IP ::1', '2020-12-07 04:13:28'),
(1194, 'admin', 'Berhasil Login dengan IP ::1', '2020-12-07 04:16:13'),
(1195, 'admin', 'Hapus Data Karyawan (40)', '2020-12-07 05:04:20'),
(1196, 'hibiscus', 'Berhasil Login dengan IP ::1', '2020-12-07 05:05:13'),
(1197, 'admin', 'Berhasil Login dengan IP ::1', '2020-12-07 12:30:15'),
(1198, 'admin', 'Gagal Login', '2020-12-07 12:31:19'),
(1199, 'hibiscus', 'Berhasil Login dengan IP ::1', '2020-12-07 12:31:26'),
(1200, 'admin', 'Berhasil Login dengan IP ::1', '2020-12-07 13:53:10'),
(1201, 'lab', 'Berhasil Login dengan IP ::1', '2020-12-07 14:06:54'),
(1202, 'drsam', 'Berhasil Login dengan IP ::1', '2020-12-07 14:08:00'),
(1203, 'lorem', 'Berhasil Login dengan IP ::1', '2020-12-07 14:09:35'),
(1204, 'ginger', 'Berhasil Login dengan IP ::1', '2020-12-07 14:10:10'),
(1205, 'admin', 'Berhasil Login dengan IP ::1', '2020-12-08 04:03:52'),
(1206, 'lab', 'Berhasil Login dengan IP ::1', '2020-12-08 05:04:16'),
(1207, 'hibiscus', 'Berhasil Login dengan IP ::1', '2020-12-08 05:20:12'),
(1208, 'drsam', 'Berhasil Login dengan IP ::1', '2020-12-08 05:21:06'),
(1209, 'ginger', 'Berhasil Login dengan IP ::1', '2020-12-08 05:21:33'),
(1210, 'admin', 'Berhasil Login dengan IP ::1', '2020-12-08 05:22:20'),
(1211, 'admin', 'Hapus Data Karyawan (41)', '2020-12-08 05:33:13'),
(1212, 'hibiscus', 'Berhasil Login dengan IP ::1', '2020-12-08 05:42:51'),
(1213, 'admin', 'Berhasil Login dengan IP ::1', '2020-12-08 06:35:05'),
(1214, 'admin', 'Berhasil Login dengan IP ::1', '2020-12-10 03:43:42'),
(1215, 'ginger', 'Berhasil Login dengan IP ::1', '2020-12-10 06:41:52'),
(1216, 'admin', 'Berhasil Login dengan IP ::1', '2020-12-10 06:45:57'),
(1217, 'hibiscus', 'Berhasil Login dengan IP ::1', '2020-12-10 07:07:56'),
(1218, 'admin', 'Berhasil Login dengan IP ::1', '2020-12-10 07:12:34'),
(1219, 'admin', 'Berhasil Login dengan IP ::1', '2020-12-10 11:39:33'),
(1220, 'ginger', 'Berhasil Login dengan IP ::1', '2020-12-10 12:05:50'),
(1221, 'lab', 'Berhasil Login dengan IP ::1', '2020-12-10 12:15:28'),
(1222, 'hibiscus', 'Berhasil Login dengan IP ::1', '2020-12-10 12:16:32'),
(1223, 'drsam', 'Berhasil Login dengan IP ::1', '2020-12-10 12:17:58'),
(1224, 'ginger', 'Berhasil Login dengan IP ::1', '2020-12-10 12:21:10'),
(1225, 'admin', 'Berhasil Login dengan IP ::1', '2020-12-10 12:24:35'),
(1226, 'admin', 'Berhasil Login dengan IP ::1', '2020-12-11 05:46:10'),
(1227, 'admin', 'Berhasil Login dengan IP ::1', '2020-12-14 06:29:05'),
(1228, 'ginger', 'Berhasil Login dengan IP ::1', '2020-12-14 07:47:35'),
(1229, 'admin', 'Berhasil Login dengan IP ::1', '2020-12-15 03:57:15'),
(1230, 'ginger', 'Berhasil Login dengan IP ::1', '2020-12-15 04:02:51'),
(1231, 'admin', 'Berhasil Login dengan IP ::1', '2020-12-15 04:07:27'),
(1232, 'hibiscus', 'Berhasil Login dengan IP ::1', '2020-12-15 04:07:45'),
(1233, 'admin', 'Berhasil Login dengan IP ::1', '2020-12-15 04:15:25'),
(1234, 'hibiscus', 'Berhasil Login dengan IP ::1', '2020-12-15 04:21:00'),
(1235, 'admin', 'Berhasil Login dengan IP ::1', '2020-12-15 04:36:40'),
(1236, 'hibiscus', 'Berhasil Login dengan IP ::1', '2020-12-15 04:50:04'),
(1237, 'admin', 'Berhasil Login dengan IP ::1', '2020-12-15 05:39:41'),
(1238, 'ginger', 'Berhasil Login dengan IP ::1', '2020-12-15 05:54:19'),
(1239, 'admin', 'Berhasil Login dengan IP ::1', '2020-12-15 06:42:52'),
(1240, 'hibiscus', 'Berhasil Login dengan IP ::1', '2020-12-15 06:44:27'),
(1241, 'ginger', 'Berhasil Login dengan IP ::1', '2020-12-17 03:59:52'),
(1242, 'admin', 'Gagal Login', '2020-12-17 08:05:05'),
(1243, 'admin', 'Berhasil Login dengan IP ::1', '2020-12-17 08:05:13'),
(1244, 'admin', 'Berhasil Login dengan IP ::1', '2020-12-17 09:04:04'),
(1245, 'admin', 'Berhasil Login dengan IP ::1', '2020-12-17 10:32:44'),
(1246, 'admin', 'Berhasil Login dengan IP 127.0.0.1', '2020-12-21 05:26:49'),
(1247, 'ginger', 'Berhasil Login dengan IP 127.0.0.1', '2020-12-21 05:37:28'),
(1248, 'admin', 'Berhasil Login dengan IP 127.0.0.1', '2020-12-21 05:42:02'),
(1249, 'ginger', 'Berhasil Login dengan IP 127.0.0.1', '2020-12-21 05:55:20'),
(1250, 'admin', 'Berhasil Login dengan IP 127.0.0.1', '2020-12-21 06:02:31'),
(1251, 'ginger', 'Berhasil Login dengan IP 127.0.0.1', '2020-12-21 10:07:20'),
(1252, 'admin', 'Berhasil Login dengan IP ::1', '2020-12-22 06:35:52'),
(1253, 'admin', 'Hapus Data Produk (22122020)', '2020-12-22 07:35:33'),
(1254, 'admin', 'Berhasil Login dengan IP 127.0.0.1', '2020-12-22 14:29:22'),
(1255, 'admin', 'Berhasil Login dengan IP 127.0.0.1', '2020-12-28 02:48:42'),
(1256, 'ginger', 'Berhasil Login dengan IP 127.0.0.1', '2020-12-28 04:55:38'),
(1257, 'admin', 'Berhasil Login dengan IP 127.0.0.1', '2020-12-28 05:11:04'),
(1258, 'admin', 'Hapus Data Produk (22122020)', '2020-12-28 07:50:29'),
(1259, 'ginger', 'Berhasil Login dengan IP 127.0.0.1', '2020-12-28 08:14:15'),
(1260, 'admin', 'Berhasil Login dengan IP 127.0.0.1', '2020-12-30 07:33:06'),
(1261, 'admin', 'Berhasil Login dengan IP 127.0.0.1', '2021-01-04 04:45:03'),
(1262, 'admin', 'Hapus Data Produk (20122020)', '2021-01-04 05:42:41'),
(1263, 'admin', 'Hapus Data Produk (28122020)', '2021-01-04 05:42:45'),
(1264, 'admin', 'Berhasil Login dengan IP 127.0.0.1', '2021-01-05 03:42:06'),
(1265, 'ginger', 'Berhasil Login dengan IP 127.0.0.1', '2021-01-07 04:06:42'),
(1266, 'admin', 'Berhasil Login dengan IP 127.0.0.1', '2021-01-07 04:09:10'),
(1267, 'ginger', 'Berhasil Login dengan IP 127.0.0.1', '2021-01-07 04:26:30'),
(1268, 'ginger', 'Berhasil Login dengan IP 127.0.0.1', '2021-01-07 07:40:17'),
(1269, 'ginger', 'Berhasil Login dengan IP 127.0.0.1', '2021-01-08 05:24:53'),
(1270, 'ginger', 'Berhasil Login dengan IP 127.0.0.1', '2021-01-08 11:08:08'),
(1271, 'ginger', 'Berhasil Login dengan IP ::1', '2021-01-08 14:41:25'),
(1272, 'admin', 'Berhasil Login dengan IP 127.0.0.1', '2021-01-08 16:27:42'),
(1273, 'ginger', 'Berhasil Login dengan IP 127.0.0.1', '2021-01-08 16:34:17'),
(1274, 'ginger', 'Berhasil Login dengan IP 127.0.0.1', '2021-01-11 03:35:20'),
(1275, 'ginger', 'Berhasil Login dengan IP 127.0.0.1', '2021-01-11 04:24:01'),
(1276, 'ginger', 'Berhasil Login dengan IP 127.0.0.1', '2021-01-11 06:48:59'),
(1277, 'ginger', 'Berhasil Login dengan IP ::1', '2021-01-13 05:14:12'),
(1278, 'admin', 'Berhasil Login dengan IP ::1', '2021-01-13 05:19:21'),
(1279, 'ginger', 'Berhasil Login dengan IP 127.0.0.1', '2021-01-13 06:02:49'),
(1280, 'ginger', 'Hapus Data Produk (TRS-00004)', '2021-01-13 06:02:58'),
(1281, 'ginger', 'Hapus Data Produk (TRS-00003)', '2021-01-13 06:03:02'),
(1282, 'ginger', 'Hapus Data Produk (TRS-00002)', '2021-01-13 06:03:05'),
(1283, 'ginger', 'Hapus Data Produk (TRS-00001)', '2021-01-13 06:03:09'),
(1284, 'ginger', 'Berhasil Login dengan IP 127.0.0.1', '2021-01-13 09:18:21'),
(1285, 'admin', 'Berhasil Login dengan IP 127.0.0.1', '2021-01-13 11:20:19'),
(1286, 'ginger', 'Berhasil Login dengan IP 127.0.0.1', '2021-01-13 12:13:11'),
(1287, 'ginger', 'Berhasil Login dengan IP 127.0.0.1', '2021-01-13 14:37:51'),
(1288, 'ginger', 'Hapus Data Produk (TRS-00003)', '2021-01-13 15:12:32'),
(1289, 'ginger', 'Hapus Data Produk (TRS-00002)', '2021-01-13 15:12:36'),
(1290, 'ginger', 'Hapus Data Produk (TRS-00001)', '2021-01-13 15:12:53'),
(1291, 'admin', 'Berhasil Login dengan IP 127.0.0.1', '2021-01-14 03:42:24'),
(1292, 'ginger', 'Berhasil Login dengan IP 127.0.0.1', '2021-01-14 06:21:47'),
(1293, 'admin', 'Hapus Data Produk (202004171)', '2021-01-19 04:36:27'),
(1294, 'admin', 'Hapus Data Produk (03122020)', '2021-01-19 04:41:49'),
(1295, 'admin', 'Hapus Data Produk (03122020)', '2021-01-19 04:41:49'),
(1296, 'admin', 'Hapus Data Produk (10122020)', '2021-01-19 04:42:00'),
(1297, 'admin', 'Hapus Data Produk (1234)', '2021-01-19 04:42:11'),
(1298, 'admin', 'Berhasil Login dengan IP 127.0.0.1', '2021-01-19 04:46:13'),
(1299, 'ginger', 'Berhasil Login dengan IP 127.0.0.1', '2021-01-19 04:54:08'),
(1300, 'hibiscus', 'Berhasil Login dengan IP 127.0.0.1', '2021-01-19 04:56:58'),
(1301, 'lab', 'Berhasil Login dengan IP 127.0.0.1', '2021-01-19 04:57:19'),
(1302, 'mars', 'Gagal Login', '2021-01-19 04:58:27'),
(1303, 'lorem', 'Gagal Login', '2021-01-19 04:58:38'),
(1304, 'lorem', 'Gagal Login', '2021-01-19 04:59:34'),
(1305, 'lorem', 'Berhasil Login dengan IP 127.0.0.1', '2021-01-19 04:59:58'),
(1306, 'drsam', 'Berhasil Login dengan IP 127.0.0.1', '2021-01-19 05:01:23'),
(1307, 'ginger', 'Berhasil Login dengan IP 127.0.0.1', '2021-01-19 05:02:38'),
(1308, 'ginger', 'Berhasil Login dengan IP 127.0.0.1', '2021-01-19 06:39:57'),
(1309, 'ginger', 'Berhasil Login dengan IP 127.0.0.1', '2021-01-19 07:54:07'),
(1310, 'hibiscus', 'Berhasil Login dengan IP 127.0.0.1', '2021-01-19 07:54:49'),
(1311, 'admin', 'Berhasil Login dengan IP 127.0.0.1', '2021-01-19 07:57:28'),
(1312, 'ginger', 'Berhasil Login dengan IP 127.0.0.1', '2021-01-19 08:09:27'),
(1313, 'ginger', 'Berhasil Login dengan IP 127.0.0.1', '2021-01-21 03:39:55'),
(1314, 'admin', 'Berhasil Login dengan IP 127.0.0.1', '2021-01-21 04:05:44'),
(1315, 'drsam', 'Berhasil Login dengan IP 127.0.0.1', '2021-01-21 04:06:10'),
(1316, 'ginger', 'Berhasil Login dengan IP 127.0.0.1', '2021-01-21 04:13:28'),
(1317, 'drsam', 'Berhasil Login dengan IP 127.0.0.1', '2021-01-21 04:13:59'),
(1318, 'ginger', 'Berhasil Login dengan IP 127.0.0.1', '2021-01-21 04:14:19'),
(1319, 'drsam', 'Berhasil Login dengan IP 127.0.0.1', '2021-01-21 04:40:10'),
(1320, 'ginger', 'Berhasil Login dengan IP 127.0.0.1', '2021-01-21 04:40:28'),
(1321, 'admin', 'Berhasil Login dengan IP 127.0.0.1', '2021-01-21 04:53:24'),
(1322, 'ginger', 'Berhasil Login dengan IP 127.0.0.1', '2021-01-21 04:53:46'),
(1323, 'drsam', 'Berhasil Login dengan IP 127.0.0.1', '2021-01-21 07:49:45'),
(1324, 'hibiscus', 'Berhasil Login dengan IP 127.0.0.1', '2021-01-21 07:51:13'),
(1325, 'lab', 'Berhasil Login dengan IP 127.0.0.1', '2021-01-21 07:51:38'),
(1326, 'ginger', 'Berhasil Login dengan IP 127.0.0.1', '2021-01-21 07:52:12'),
(1327, 'ginger', 'Berhasil Login dengan IP 127.0.0.1', '2021-01-21 08:08:02'),
(1328, 'ginger', 'Berhasil Login dengan IP 127.0.0.1', '2021-01-22 06:59:52'),
(1329, 'admin', 'Berhasil Login dengan IP 127.0.0.1', '2021-01-22 07:41:17'),
(1330, 'ginger', 'Berhasil Login dengan IP 127.0.0.1', '2021-01-22 07:52:48'),
(1331, 'ginger', 'Berhasil Login dengan IP 127.0.0.1', '2021-01-25 05:43:09'),
(1332, 'admin', 'Berhasil Login dengan IP 127.0.0.1', '2021-01-25 06:51:13'),
(1333, 'ginger', 'Berhasil Login dengan IP 127.0.0.1', '2021-01-25 07:12:07'),
(1334, 'admin', 'Berhasil Login dengan IP 127.0.0.1', '2021-01-26 03:57:36'),
(1335, 'ginger', 'Berhasil Login dengan IP 127.0.0.1', '2021-01-26 04:54:35'),
(1336, 'admin', 'Berhasil Login dengan IP 127.0.0.1', '2021-01-26 04:55:06'),
(1337, 'ginger', 'Berhasil Login dengan IP 127.0.0.1', '2021-01-26 05:17:09'),
(1338, 'admin', 'Berhasil Login dengan IP 127.0.0.1', '2021-01-26 05:36:17'),
(1339, 'ginger', 'Berhasil Login dengan IP 127.0.0.1', '2021-01-26 05:40:22'),
(1340, 'admin', 'Berhasil Login dengan IP 127.0.0.1', '2021-01-26 06:18:49'),
(1341, 'ginger', 'Berhasil Login dengan IP 127.0.0.1', '2021-01-26 06:27:32'),
(1342, 'ginger', 'Hapus Data Produk (35143)', '2021-01-26 06:38:42'),
(1343, 'ginger', 'Hapus Data Produk (35143)', '2021-01-26 06:38:42'),
(1344, 'ginger', 'Hapus Data Produk (35143)', '2021-01-26 06:38:42'),
(1345, 'ginger', 'Hapus Data Produk (35143)', '2021-01-26 06:38:42'),
(1346, 'ginger', 'Hapus Data Produk (747712)', '2021-01-26 06:38:46'),
(1347, 'ginger', 'Hapus Data Produk (4311432)', '2021-01-26 06:38:51'),
(1348, 'ginger', 'Hapus Data Produk (1987657)', '2021-01-26 06:38:57'),
(1349, 'ginger', 'Hapus Data Produk (1)', '2021-01-26 06:39:01'),
(1350, 'ginger', 'Hapus Data Produk ()', '2021-01-26 06:39:04'),
(1351, 'ginger', 'Hapus Data Produk (999911107)', '2021-01-26 06:39:08'),
(1352, 'ginger', 'Hapus Data Produk (999911107)', '2021-01-26 06:39:08'),
(1353, 'ginger', 'Hapus Data Produk (999911107)', '2021-01-26 06:39:08'),
(1354, 'ginger', 'Hapus Data Produk (2020-17-04)', '2021-01-26 06:39:12'),
(1355, 'ginger', 'Hapus Data Produk (20200415)', '2021-01-26 06:39:16'),
(1356, 'ginger', 'Hapus Data Produk (123311)', '2021-01-26 06:39:20'),
(1357, 'ginger', 'Hapus Data Produk (32141)', '2021-01-26 06:39:24'),
(1358, 'ginger', 'Hapus Data Produk (32141)', '2021-01-26 06:39:24'),
(1359, 'ginger', 'Hapus Data Produk (32141)', '2021-01-26 06:39:24'),
(1360, 'ginger', 'Hapus Data Produk (32141)', '2021-01-26 06:39:24'),
(1361, 'ginger', 'Hapus Data Produk (32141)', '2021-01-26 06:39:24'),
(1362, 'ginger', 'Hapus Data Produk (01122020)', '2021-01-26 06:39:28'),
(1363, 'ginger', 'Hapus Data Produk (01122020)', '2021-01-26 06:39:28'),
(1364, 'ginger', 'Hapus Data Produk (PT-00109)', '2021-01-26 07:22:54'),
(1365, 'ginger', 'Hapus Data Produk (PT-00109)', '2021-01-26 07:22:54'),
(1366, 'ginger', 'Hapus Data Produk (PT-00109)', '2021-01-26 07:22:54'),
(1367, 'ginger', 'Hapus Data Produk (PT-00109)', '2021-01-26 07:22:54'),
(1368, 'ginger', 'Hapus Data Produk (PT-00109)', '2021-01-26 07:22:54'),
(1369, 'ginger', 'Hapus Data Produk (PT-00109)', '2021-01-26 07:22:54'),
(1370, 'ginger', 'Hapus Data Produk (PT-00109)', '2021-01-26 07:22:54'),
(1371, 'ginger', 'Hapus Data Produk (PT-01108)', '2021-01-26 07:22:58'),
(1372, 'ginger', 'Hapus Data Produk (PT-01108)', '2021-01-26 07:22:58'),
(1373, 'ginger', 'Hapus Data Produk (PT-01108)', '2021-01-26 07:22:58'),
(1374, 'ginger', 'Berhasil Login dengan IP 140.213.54.76', '2021-01-26 07:51:22'),
(1375, 'ginger', 'Berhasil Login dengan IP 140.213.54.76', '2021-01-26 08:02:40'),
(1376, 'ginger', 'Berhasil Login dengan IP 140.213.54.76', '2021-01-26 08:15:28'),
(1377, 'ginger', 'Berhasil Login dengan IP 140.213.54.76', '2021-01-26 08:16:53'),
(1378, 'ginger', 'Berhasil Login dengan IP 140.213.54.76', '2021-01-26 08:18:19'),
(1379, 'ginger', 'Berhasil Login dengan IP 120.188.73.19', '2021-01-27 03:22:54'),
(1380, 'ginger', 'Berhasil Login dengan IP 120.188.73.19', '2021-01-27 04:22:33'),
(1381, 'ginger', 'Berhasil Login dengan IP 120.188.73.19', '2021-01-27 04:47:20'),
(1382, 'ginger', 'Berhasil Login dengan IP 120.188.73.19', '2021-01-27 04:54:16'),
(1383, 'ginger', 'Berhasil Login dengan IP 120.188.73.19', '2021-01-27 04:58:45'),
(1384, 'ginger', 'Gagal Login', '2021-01-27 05:02:17'),
(1385, 'ginger', 'Berhasil Login dengan IP 120.188.73.19', '2021-01-27 05:02:35'),
(1386, 'ginger', 'Berhasil Login dengan IP 120.188.87.110', '2021-01-27 05:36:00'),
(1387, 'ginger', 'Hapus Data Produk (TRS-00011)', '2021-01-27 05:37:15'),
(1388, 'ginger', 'Hapus Data Produk (TRS-00011)', '2021-01-27 05:42:57'),
(1389, 'ginger', 'Berhasil Login dengan IP 120.188.87.110', '2021-01-27 06:29:53'),
(1390, 'ginger', 'Berhasil Login dengan IP 120.188.73.19', '2021-01-27 06:37:05'),
(1391, 'ginger', 'Berhasil Login dengan IP 140.213.54.76', '2021-01-27 07:43:16'),
(1392, 'ginger', 'Berhasil Login dengan IP 114.4.223.139', '2021-01-27 08:33:44'),
(1393, 'ginger', 'Berhasil Login dengan IP 140.213.54.76', '2021-01-28 01:27:32'),
(1394, 'ginger', 'Berhasil Login dengan IP 127.0.0.1', '2021-01-28 03:50:45'),
(1395, 'ginger', 'Berhasil Login dengan IP 127.0.0.1', '2021-01-28 04:05:57'),
(1396, 'ginger', 'Berhasil Login dengan IP 127.0.0.1', '2021-01-28 04:06:30'),
(1397, 'ginger', 'Berhasil Login dengan IP 127.0.0.1', '2021-01-28 04:08:31'),
(1398, 'ginger', 'Hapus Data Produk (TRS-00014)', '2021-01-28 04:32:41'),
(1399, 'ginger', 'Berhasil Login dengan IP 127.0.0.1', '2021-01-28 13:41:26'),
(1400, 'ginger', 'Berhasil Login dengan IP 127.0.0.1', '2021-01-29 03:56:49'),
(1401, 'ginger', 'Berhasil Login dengan IP 127.0.0.1', '2021-01-29 08:30:21'),
(1402, 'ginger', 'Berhasil Login dengan IP 127.0.0.1', '2021-01-29 08:39:20'),
(1403, 'ginger', 'Berhasil Login dengan IP 127.0.0.1', '2021-01-29 08:46:55'),
(1404, 'admin', 'Berhasil Login dengan IP 127.0.0.1', '2021-01-31 15:51:57'),
(1405, 'ginger', 'Berhasil Login dengan IP 127.0.0.1', '2021-02-01 03:29:25'),
(1406, 'drsam', 'Berhasil Login dengan IP 127.0.0.1', '2021-02-01 04:05:51'),
(1407, 'ginger', 'Gagal Login', '2021-02-01 04:07:04'),
(1408, 'ginger', 'Berhasil Login dengan IP 127.0.0.1', '2021-02-01 04:07:11'),
(1409, 'drsam', 'Berhasil Login dengan IP 127.0.0.1', '2021-02-01 04:10:01'),
(1410, 'admin', 'Berhasil Login dengan IP 127.0.0.1', '2021-02-01 04:14:23'),
(1411, 'ginger', 'Berhasil Login dengan IP 127.0.0.1', '2021-02-01 04:18:48'),
(1412, 'admin', 'Berhasil Login dengan IP 127.0.0.1', '2021-02-01 04:20:35'),
(1413, 'drsam', 'Gagal Login', '2021-02-01 04:22:22'),
(1414, 'drsam', 'Berhasil Login dengan IP 127.0.0.1', '2021-02-01 04:22:32'),
(1415, 'admin', 'Berhasil Login dengan IP 127.0.0.1', '2021-02-01 04:24:43'),
(1416, 'ginger', 'Berhasil Login dengan IP 127.0.0.1', '2021-02-01 04:45:14'),
(1417, 'admin', 'Berhasil Login dengan IP 127.0.0.1', '2021-02-01 04:48:43'),
(1418, 'admin', 'Berhasil Login dengan IP 127.0.0.1', '2021-02-01 04:49:46'),
(1419, 'drsam', 'Berhasil Login dengan IP 127.0.0.1', '2021-02-01 05:30:01'),
(1420, 'ginger', 'Berhasil Login dengan IP 127.0.0.1', '2021-02-01 05:30:29');
INSERT INTO `log` (`id`, `username`, `aksi`, `tanggal`) VALUES
(1421, 'drsam', 'Berhasil Login dengan IP 127.0.0.1', '2021-02-01 05:31:36'),
(1422, 'ginger', 'Berhasil Login dengan IP 127.0.0.1', '2021-02-01 05:33:08'),
(1423, 'drsam', 'Berhasil Login dengan IP 127.0.0.1', '2021-02-01 05:34:35'),
(1424, 'admin', 'Berhasil Login dengan IP 127.0.0.1', '2021-02-01 05:41:55'),
(1425, 'drsam', 'Berhasil Login dengan IP 127.0.0.1', '2021-02-01 05:43:21'),
(1426, 'ginger', 'Berhasil Login dengan IP 127.0.0.1', '2021-02-01 05:46:40'),
(1427, 'drsam', 'Gagal Login', '2021-02-01 05:47:11'),
(1428, 'drsam', 'Berhasil Login dengan IP 127.0.0.1', '2021-02-01 05:47:18'),
(1429, 'admin', 'Berhasil Login dengan IP 127.0.0.1', '2021-02-01 06:43:48'),
(1430, 'hibiscus', 'Berhasil Login dengan IP 127.0.0.1', '2021-02-01 06:44:10'),
(1431, 'drsam', 'Berhasil Login dengan IP 127.0.0.1', '2021-02-01 06:50:58'),
(1432, 'hibiscus', 'Berhasil Login dengan IP 127.0.0.1', '2021-02-01 07:02:46'),
(1433, 'drsam', 'Berhasil Login dengan IP 127.0.0.1', '2021-02-01 07:03:39'),
(1434, 'hibiscus', 'Gagal Login', '2021-02-01 07:05:31'),
(1435, 'hibiscus', 'Berhasil Login dengan IP 127.0.0.1', '2021-02-01 07:05:43'),
(1436, 'drsam', 'Berhasil Login dengan IP 127.0.0.1', '2021-02-01 07:06:55'),
(1437, 'hibiscus', 'Berhasil Login dengan IP 127.0.0.1', '2021-02-01 07:24:42'),
(1438, 'drsam', 'Berhasil Login dengan IP 127.0.0.1', '2021-02-01 07:25:39'),
(1439, 'drsam', 'Berhasil Login dengan IP 127.0.0.1', '2021-02-02 03:47:08'),
(1440, 'hibiscus', 'Berhasil Login dengan IP 127.0.0.1', '2021-02-02 03:51:10'),
(1441, 'drsam', 'Berhasil Login dengan IP 127.0.0.1', '2021-02-02 03:52:07'),
(1442, 'ginger', 'Berhasil Login dengan IP 127.0.0.1', '2021-02-02 06:30:27'),
(1443, 'hibiscus', 'Berhasil Login dengan IP 127.0.0.1', '2021-02-02 06:33:26'),
(1444, 'ginger', 'Berhasil Login dengan IP 127.0.0.1', '2021-02-02 06:38:31'),
(1445, 'hibiscus', 'Berhasil Login dengan IP 127.0.0.1', '2021-02-02 07:01:48'),
(1446, 'drsam', 'Berhasil Login dengan IP 127.0.0.1', '2021-02-02 07:02:59'),
(1447, 'ginger', 'Berhasil Login dengan IP 127.0.0.1', '2021-02-02 07:03:13'),
(1448, 'drsam', 'Berhasil Login dengan IP 127.0.0.1', '2021-02-02 07:04:13'),
(1449, 'ginger', 'Berhasil Login dengan IP 127.0.0.1', '2021-02-02 07:08:02'),
(1450, 'drsam', 'Berhasil Login dengan IP 127.0.0.1', '2021-02-02 07:35:16'),
(1451, 'ginger', 'Berhasil Login dengan IP 127.0.0.1', '2021-02-02 07:35:38'),
(1452, 'drsam', 'Berhasil Login dengan IP 127.0.0.1', '2021-02-02 07:38:40'),
(1453, 'ginger', 'Berhasil Login dengan IP 127.0.0.1', '2021-02-02 07:40:05'),
(1454, 'ginger', 'Berhasil Login dengan IP 127.0.0.1', '2021-02-02 07:41:31'),
(1455, 'ginger', 'Berhasil Login dengan IP 127.0.0.1', '2021-02-02 08:11:13'),
(1456, 'drsam', 'Berhasil Login dengan IP 127.0.0.1', '2021-02-02 08:14:58'),
(1457, 'ginger', 'Berhasil Login dengan IP 127.0.0.1', '2021-02-02 08:17:48'),
(1458, 'drsam', 'Berhasil Login dengan IP 127.0.0.1', '2021-02-02 08:18:24'),
(1459, 'ginger', 'Berhasil Login dengan IP 127.0.0.1', '2021-02-03 03:24:56'),
(1460, 'hibiscus', 'Berhasil Login dengan IP 127.0.0.1', '2021-02-03 03:42:43'),
(1461, 'drsam', 'Berhasil Login dengan IP 127.0.0.1', '2021-02-03 03:44:34'),
(1462, 'ginger', 'Berhasil Login dengan IP 127.0.0.1', '2021-02-03 04:00:11'),
(1463, 'drsam', 'Berhasil Login dengan IP 127.0.0.1', '2021-02-03 04:08:53'),
(1464, 'ginger', 'Berhasil Login dengan IP 127.0.0.1', '2021-02-03 04:09:50'),
(1465, 'drsam', 'Berhasil Login dengan IP 127.0.0.1', '2021-02-03 04:20:59'),
(1466, 'ginger', 'Berhasil Login dengan IP 127.0.0.1', '2021-02-03 04:23:55'),
(1467, 'drsam', 'Berhasil Login dengan IP 127.0.0.1', '2021-02-03 04:25:11'),
(1468, 'ginger', 'Berhasil Login dengan IP 127.0.0.1', '2021-02-03 04:30:16'),
(1469, 'drsam', 'Berhasil Login dengan IP 127.0.0.1', '2021-02-03 04:50:03'),
(1470, 'ginger', 'Berhasil Login dengan IP 127.0.0.1', '2021-02-03 05:09:47'),
(1471, 'drsam', 'Berhasil Login dengan IP 127.0.0.1', '2021-02-03 05:12:37'),
(1472, 'ginger', 'Berhasil Login dengan IP 127.0.0.1', '2021-02-03 06:30:59'),
(1473, 'drsam', 'Berhasil Login dengan IP 127.0.0.1', '2021-02-03 06:31:21'),
(1474, 'ginger', 'Berhasil Login dengan IP 127.0.0.1', '2021-02-04 03:25:42'),
(1475, 'drsam', 'Berhasil Login dengan IP 127.0.0.1', '2021-02-04 04:05:37'),
(1476, 'ginger', 'Berhasil Login dengan IP 127.0.0.1', '2021-02-04 04:11:08'),
(1477, 'drsam', 'Berhasil Login dengan IP 127.0.0.1', '2021-02-04 04:12:54'),
(1478, 'ginger', 'Berhasil Login dengan IP 127.0.0.1', '2021-02-04 04:14:15'),
(1479, 'drsam', 'Berhasil Login dengan IP 127.0.0.1', '2021-02-04 04:15:18'),
(1480, 'ginger', 'Berhasil Login dengan IP 127.0.0.1', '2021-02-04 04:17:56'),
(1481, 'drsam', 'Berhasil Login dengan IP 127.0.0.1', '2021-02-04 04:18:52'),
(1482, 'ginger', 'Berhasil Login dengan IP 127.0.0.1', '2021-02-04 05:21:51'),
(1483, 'drsam', 'Berhasil Login dengan IP 127.0.0.1', '2021-02-04 05:47:07'),
(1484, 'ginger', 'Berhasil Login dengan IP 127.0.0.1', '2021-02-04 06:18:05'),
(1485, 'drsam', 'Gagal Login', '2021-02-04 06:18:57'),
(1486, 'drsam', 'Berhasil Login dengan IP 127.0.0.1', '2021-02-04 06:19:04'),
(1487, 'drsam', 'Berhasil Login dengan IP 127.0.0.1', '2021-02-04 06:28:37'),
(1488, 'drsam', 'Gagal Login', '2021-02-04 07:01:27'),
(1489, 'drsam', 'Berhasil Login dengan IP 127.0.0.1', '2021-02-04 07:01:39'),
(1490, 'drsam', 'Berhasil Login dengan IP 127.0.0.1', '2021-02-05 03:37:22'),
(1491, 'ginger', 'Berhasil Login dengan IP 127.0.0.1', '2021-02-05 03:48:40'),
(1492, 'drsam', 'Berhasil Login dengan IP 127.0.0.1', '2021-02-05 03:49:53'),
(1493, 'ginger', 'Berhasil Login dengan IP 127.0.0.1', '2021-02-05 03:59:14'),
(1494, 'drsam', 'Gagal Login', '2021-02-05 04:06:53'),
(1495, 'drsam', 'Berhasil Login dengan IP 127.0.0.1', '2021-02-05 04:07:00'),
(1496, 'admin', 'Berhasil Login dengan IP 127.0.0.1', '2021-02-05 04:36:08'),
(1497, 'drsam', 'Berhasil Login dengan IP 127.0.0.1', '2021-02-05 04:42:43'),
(1498, 'drsam', 'Gagal Login', '2021-02-05 07:20:57'),
(1499, 'ginger', 'Berhasil Login dengan IP 127.0.0.1', '2021-02-05 07:21:04'),
(1500, 'drsam', 'Berhasil Login dengan IP 127.0.0.1', '2021-02-05 07:22:49'),
(1501, 'admin', 'Berhasil Login dengan IP 127.0.0.1', '2021-02-05 07:23:51'),
(1502, 'drsam', 'Berhasil Login dengan IP 127.0.0.1', '2021-02-05 07:26:06'),
(1503, 'ginger', 'Berhasil Login dengan IP 127.0.0.1', '2021-02-05 07:29:53'),
(1504, 'admin', 'Berhasil Login dengan IP 127.0.0.1', '2021-02-07 07:43:36'),
(1505, 'ginger', 'Berhasil Login dengan IP 127.0.0.1', '2021-02-08 03:39:38'),
(1506, 'drsam', 'Berhasil Login dengan IP 127.0.0.1', '2021-02-08 04:04:11'),
(1507, 'ginger', 'Berhasil Login dengan IP 127.0.0.1', '2021-02-08 04:05:23'),
(1508, 'drsam', 'Berhasil Login dengan IP 127.0.0.1', '2021-02-08 04:17:36'),
(1509, 'ginger', 'Berhasil Login dengan IP 127.0.0.1', '2021-02-08 04:19:21'),
(1510, 'drsam', 'Berhasil Login dengan IP 127.0.0.1', '2021-02-08 06:17:47'),
(1511, 'ginger', 'Berhasil Login dengan IP 127.0.0.1', '2021-02-08 06:18:08'),
(1512, 'drsam', 'Berhasil Login dengan IP 127.0.0.1', '2021-02-08 06:19:04'),
(1513, 'ginger', 'Berhasil Login dengan IP 127.0.0.1', '2021-02-08 06:40:07'),
(1514, 'ginger', 'Berhasil Login dengan IP 127.0.0.1', '2021-02-09 03:41:57'),
(1515, 'drsam', 'Berhasil Login dengan IP 127.0.0.1', '2021-02-09 04:35:39'),
(1516, 'drsam', 'Berhasil Login dengan IP 127.0.0.1', '2021-02-09 04:41:52'),
(1517, 'ginger', 'Berhasil Login dengan IP 127.0.0.1', '2021-02-09 04:50:49'),
(1518, 'ginger', 'Berhasil Login dengan IP 127.0.0.1', '2021-02-09 04:52:52'),
(1519, 'drsam', 'Berhasil Login dengan IP 127.0.0.1', '2021-02-09 06:18:26'),
(1520, 'ginger', 'Berhasil Login dengan IP 127.0.0.1', '2021-02-09 06:19:33'),
(1521, 'drsam', 'Berhasil Login dengan IP 127.0.0.1', '2021-02-09 07:22:50'),
(1522, 'ginger', 'Berhasil Login dengan IP 127.0.0.1', '2021-02-09 07:24:39'),
(1523, 'admin', 'Berhasil Login dengan IP 127.0.0.1', '2021-02-11 03:36:22'),
(1524, 'ginger', 'Berhasil Login dengan IP 127.0.0.1', '2021-02-11 03:36:52'),
(1525, 'admin', 'Berhasil Login dengan IP 127.0.0.1', '2021-02-11 03:42:41'),
(1526, 'admin', 'Berhasil Login dengan IP 127.0.0.1', '2021-02-11 03:47:01'),
(1527, 'ginger', 'Berhasil Login dengan IP 127.0.0.1', '2021-02-11 03:48:03'),
(1528, 'drsam', 'Berhasil Login dengan IP 127.0.0.1', '2021-02-11 03:50:00'),
(1529, 'ginger', 'Berhasil Login dengan IP 127.0.0.1', '2021-02-11 03:52:43'),
(1530, 'drsam', 'Berhasil Login dengan IP 127.0.0.1', '2021-02-11 03:54:19'),
(1531, 'ginger', 'Berhasil Login dengan IP 127.0.0.1', '2021-02-11 03:57:30'),
(1532, 'admin', 'Berhasil Login dengan IP 127.0.0.1', '2021-02-11 04:10:04'),
(1533, 'drsam', 'Berhasil Login dengan IP 127.0.0.1', '2021-02-11 06:29:10'),
(1534, 'ginger', 'Berhasil Login dengan IP 127.0.0.1', '2021-02-11 06:41:46'),
(1535, 'admin', 'Berhasil Login dengan IP 127.0.0.1', '2021-02-11 07:34:06'),
(1536, 'admin', 'Berhasil Login dengan IP 127.0.0.1', '2021-02-15 03:23:00'),
(1537, 'drsam', 'Berhasil Login dengan IP 127.0.0.1', '2021-02-15 04:34:24'),
(1538, 'ginger', 'Berhasil Login dengan IP 127.0.0.1', '2021-02-15 04:36:41'),
(1539, 'drsam', 'Berhasil Login dengan IP 127.0.0.1', '2021-02-15 04:47:59'),
(1540, 'ginger', 'Berhasil Login dengan IP 127.0.0.1', '2021-02-15 04:59:17'),
(1541, 'ginger', 'Berhasil Login dengan IP 127.0.0.1', '2021-02-16 03:55:47'),
(1542, 'drsam', 'Berhasil Login dengan IP 127.0.0.1', '2021-02-16 05:17:49'),
(1543, 'ginger', 'Berhasil Login dengan IP 127.0.0.1', '2021-02-16 05:21:06'),
(1544, 'admin', 'Berhasil Login dengan IP 127.0.0.1', '2021-02-16 06:11:39'),
(1545, 'ginger', 'Berhasil Login dengan IP 127.0.0.1', '2021-02-16 06:22:04'),
(1546, 'admin', 'Berhasil Login dengan IP 127.0.0.1', '2021-02-16 08:18:34'),
(1547, 'ginger', 'Berhasil Login dengan IP 127.0.0.1', '2021-02-17 03:27:24'),
(1548, 'admin', 'Berhasil Login dengan IP 127.0.0.1', '2021-02-17 06:01:53'),
(1549, 'admin', 'Berhasil Login dengan IP 127.0.0.1', '2021-02-18 03:32:04'),
(1550, 'ginger', 'Berhasil Login dengan IP ::1', '2021-02-18 04:38:57'),
(1551, 'admin', 'Berhasil Login dengan IP 127.0.0.1', '2021-02-19 04:56:47'),
(1552, 'ginger', 'Berhasil Login dengan IP 127.0.0.1', '2021-02-19 04:57:26'),
(1553, 'admin', 'Berhasil Login dengan IP 127.0.0.1', '2021-02-22 03:33:10'),
(1554, 'ginger', 'Berhasil Login dengan IP 127.0.0.1', '2021-02-22 03:41:32'),
(1555, 'admin', 'Berhasil Login dengan IP 127.0.0.1', '2021-02-22 03:52:39'),
(1556, 'ginger', 'Berhasil Login dengan IP 127.0.0.1', '2021-02-22 03:53:49'),
(1557, 'admin', 'Berhasil Login dengan IP 127.0.0.1', '2021-02-22 03:56:10'),
(1558, 'ginger', 'Berhasil Login dengan IP 127.0.0.1', '2021-02-22 04:51:11'),
(1559, 'admin', 'Berhasil Login dengan IP 127.0.0.1', '2021-02-22 04:51:57'),
(1560, 'ginger', 'Berhasil Login dengan IP 127.0.0.1', '2021-02-22 04:52:34'),
(1561, 'admin', 'Berhasil Login dengan IP 127.0.0.1', '2021-02-22 04:53:19'),
(1562, 'ginger', 'Berhasil Login dengan IP 127.0.0.1', '2021-02-22 06:54:17'),
(1563, 'admin', 'Berhasil Login dengan IP 127.0.0.1', '2021-02-22 07:19:17'),
(1564, 'admin', 'Berhasil Login dengan IP 127.0.0.1', '2021-02-23 03:37:17'),
(1565, 'ginger', 'Berhasil Login dengan IP 127.0.0.1', '2021-02-23 03:51:46'),
(1566, 'admin', 'Berhasil Login dengan IP 127.0.0.1', '2021-02-23 03:55:16'),
(1567, 'ginger', 'Berhasil Login dengan IP 127.0.0.1', '2021-02-23 04:02:24'),
(1568, 'admin', 'Berhasil Login dengan IP 127.0.0.1', '2021-02-23 04:33:17'),
(1569, 'ginger', 'Berhasil Login dengan IP 127.0.0.1', '2021-02-23 05:09:16'),
(1570, 'admin', 'Berhasil Login dengan IP 127.0.0.1', '2021-02-23 05:48:34'),
(1571, 'ginger', 'Berhasil Login dengan IP 127.0.0.1', '2021-02-23 05:57:50'),
(1572, 'drsam', 'Berhasil Login dengan IP 127.0.0.1', '2021-02-23 06:02:03'),
(1573, 'ginger', 'Berhasil Login dengan IP 127.0.0.1', '2021-02-23 06:08:51'),
(1574, 'drsam', 'Berhasil Login dengan IP 127.0.0.1', '2021-02-23 06:15:03'),
(1575, 'ginger', 'Berhasil Login dengan IP 127.0.0.1', '2021-02-23 06:17:08'),
(1576, 'drsam', 'Berhasil Login dengan IP 127.0.0.1', '2021-02-23 06:19:59'),
(1577, 'drsam', 'Berhasil Login dengan IP 127.0.0.1', '2021-02-23 07:25:22'),
(1578, 'ginger', 'Berhasil Login dengan IP 127.0.0.1', '2021-02-23 07:53:35'),
(1579, 'drsam', 'Berhasil Login dengan IP 127.0.0.1', '2021-02-24 03:34:41'),
(1580, 'ginger', 'Berhasil Login dengan IP 127.0.0.1', '2021-02-24 03:35:04'),
(1581, 'drsam', 'Berhasil Login dengan IP 127.0.0.1', '2021-02-24 03:37:27'),
(1582, 'ginger', 'Berhasil Login dengan IP 127.0.0.1', '2021-02-24 03:40:24'),
(1583, 'drsam', 'Berhasil Login dengan IP 127.0.0.1', '2021-02-24 03:43:36'),
(1584, 'ginger', 'Gagal Login', '2021-02-24 04:21:11'),
(1585, 'ginger', 'Berhasil Login dengan IP 127.0.0.1', '2021-02-24 04:21:16'),
(1586, 'drsam', 'Berhasil Login dengan IP 127.0.0.1', '2021-02-24 04:27:42'),
(1587, 'ginger', 'Berhasil Login dengan IP 127.0.0.1', '2021-02-24 04:31:20'),
(1588, 'drsam', 'Berhasil Login dengan IP 127.0.0.1', '2021-02-24 04:42:41'),
(1589, 'admin', 'Berhasil Login dengan IP 127.0.0.1', '2021-02-25 03:41:17'),
(1590, 'admin', 'Berhasil Login dengan IP 127.0.0.1', '2021-02-25 03:42:31'),
(1591, 'ginger', 'Berhasil Login dengan IP 127.0.0.1', '2021-02-25 03:59:43'),
(1592, 'drsam', 'Berhasil Login dengan IP 127.0.0.1', '2021-02-25 04:02:34'),
(1593, 'drsam', 'Berhasil Login dengan IP 127.0.0.1', '2021-02-25 04:05:25'),
(1594, 'admin', 'Berhasil Login dengan IP 127.0.0.1', '2021-02-25 06:14:11'),
(1595, 'S.M.S.3', 'Hapus Data Produk (PS-00007)', '2021-02-25 06:48:22'),
(1596, 'S.M.S.3', 'Hapus Data Produk (PS-00007)', '2021-02-25 06:48:22'),
(1597, 'S.M.S.3', 'Hapus Data Produk (PS-00007)', '2021-02-25 06:48:22'),
(1598, 'S.M.S.3', 'Data Treatment Baru ()', '2021-02-25 07:15:08'),
(1599, 'hibiscus', 'Berhasil Login dengan IP 127.0.0.1', '2021-02-25 07:44:57'),
(1600, 'ginger', 'Berhasil Login dengan IP 127.0.0.1', '2021-03-03 04:45:26'),
(1601, 'admin', 'Berhasil Login dengan IP 127.0.0.1', '2021-03-03 04:56:26'),
(1602, 'ginger', 'Berhasil Login dengan IP 127.0.0.1', '2021-03-03 05:00:17'),
(1603, 'ginger', 'Berhasil Login dengan IP 127.0.0.1', '2021-03-03 05:23:23'),
(1604, 'admin', 'Berhasil Login dengan IP 127.0.0.1', '2021-03-03 06:04:13'),
(1605, 'ginger', 'Berhasil Login dengan IP 127.0.0.1', '2021-03-03 06:08:05'),
(1606, 'admin', 'Berhasil Login dengan IP 127.0.0.1', '2021-03-03 06:14:37'),
(1607, 'ginger', 'Berhasil Login dengan IP 127.0.0.1', '2021-03-03 06:24:59'),
(1608, 'drsam', 'Berhasil Login dengan IP 127.0.0.1', '2021-03-04 03:35:11'),
(1609, 'hibiscus', 'Berhasil Login dengan IP 127.0.0.1', '2021-03-05 03:31:19'),
(1610, 'ginger', 'Berhasil Login dengan IP 127.0.0.1', '2021-03-05 03:44:16'),
(1611, 'hibiscus', 'Berhasil Login dengan IP 127.0.0.1', '2021-03-05 04:04:34'),
(1612, 'ginger', 'Berhasil Login dengan IP 127.0.0.1', '2021-03-05 04:13:14'),
(1613, 'drsam', 'Gagal Login', '2021-03-05 04:13:44'),
(1614, 'drsam', 'Berhasil Login dengan IP 127.0.0.1', '2021-03-05 04:13:52'),
(1615, 'ginger', 'Berhasil Login dengan IP 127.0.0.1', '2021-03-05 04:15:51'),
(1616, 'hibiscus', 'Berhasil Login dengan IP 127.0.0.1', '2021-03-05 04:32:25'),
(1617, 'drsam', 'Berhasil Login dengan IP 127.0.0.1', '2021-03-05 07:51:39'),
(1618, 'ginger', 'Berhasil Login dengan IP 127.0.0.1', '2021-03-05 07:52:14'),
(1619, 'hibiscus', 'Berhasil Login dengan IP 127.0.0.1', '2021-03-08 04:07:00'),
(1620, 'drsam', 'Berhasil Login dengan IP 127.0.0.1', '2021-03-08 04:43:14'),
(1621, 'hibiscus', 'Berhasil Login dengan IP 127.0.0.1', '2021-03-08 04:45:09'),
(1622, 'hibiscus', 'Berhasil Login dengan IP 127.0.0.1', '2021-03-09 03:48:07'),
(1623, 'admin', 'Berhasil Login dengan IP 127.0.0.1', '2021-03-09 04:09:37'),
(1624, 'ginger', 'Berhasil Login dengan IP 127.0.0.1', '2021-03-09 04:10:48'),
(1625, 'ginger', 'Berhasil Login dengan IP 127.0.0.1', '2021-03-09 04:11:45'),
(1626, 'admin', 'Berhasil Login dengan IP 127.0.0.1', '2021-03-09 04:12:55'),
(1627, 'ginger', 'Berhasil Login dengan IP 127.0.0.1', '2021-03-09 04:13:17'),
(1628, 'drsam', 'Berhasil Login dengan IP 127.0.0.1', '2021-03-09 04:13:28'),
(1629, 'drsam', 'Berhasil Login dengan IP 127.0.0.1', '2021-03-09 04:13:45'),
(1630, 'drsam', 'Berhasil Login dengan IP 127.0.0.1', '2021-03-09 06:39:58'),
(1631, 'hibiscus', 'Berhasil Login dengan IP 127.0.0.1', '2021-03-09 06:42:25'),
(1632, 'drsam', 'Berhasil Login dengan IP 127.0.0.1', '2021-03-09 06:43:05'),
(1633, 'hibiscus', 'Berhasil Login dengan IP 127.0.0.1', '2021-03-09 06:45:52'),
(1634, 'drsam', 'Berhasil Login dengan IP 127.0.0.1', '2021-03-09 06:48:39'),
(1635, 'hibiscus', 'Berhasil Login dengan IP 127.0.0.1', '2021-03-09 08:10:03'),
(1636, 'hibiscus', 'Berhasil Login dengan IP 127.0.0.1', '2021-03-10 04:04:59'),
(1637, 'drarf', 'Berhasil Login dengan IP 127.0.0.1', '2021-03-10 04:05:47'),
(1638, 'ginger', 'Berhasil Login dengan IP 127.0.0.1', '2021-03-10 04:06:51'),
(1639, 'drarf', 'Berhasil Login dengan IP 127.0.0.1', '2021-03-10 04:19:15'),
(1640, 'hibiscus', 'Berhasil Login dengan IP 127.0.0.1', '2021-03-10 06:39:19'),
(1641, 'admin', 'Berhasil Login dengan IP 127.0.0.1', '2021-03-10 07:14:53'),
(1642, 'hibiscus', 'Berhasil Login dengan IP 127.0.0.1', '2021-03-10 07:46:39'),
(1643, 'hibiscus', 'Berhasil Login dengan IP 127.0.0.1', '2021-03-12 03:29:02'),
(1644, 'drarf', 'Berhasil Login dengan IP 127.0.0.1', '2021-03-12 03:29:50'),
(1645, 'hibiscus', 'Berhasil Login dengan IP 127.0.0.1', '2021-03-12 03:31:12'),
(1646, 'hibiscus', 'Berhasil Login dengan IP 127.0.0.1', '2021-03-12 03:42:09'),
(1647, 'ginger', 'Berhasil Login dengan IP 127.0.0.1', '2021-03-12 04:02:42'),
(1648, 'hibiscus', 'Berhasil Login dengan IP 127.0.0.1', '2021-03-12 04:11:06'),
(1649, 'admin', 'Berhasil Login dengan IP 127.0.0.1', '2021-03-12 04:42:23'),
(1650, 'hibiscus', 'Berhasil Login dengan IP 127.0.0.1', '2021-03-12 05:53:47'),
(1651, 'hibiscus', 'Berhasil Login dengan IP 127.0.0.1', '2021-03-15 03:35:20'),
(1652, 'drarf', 'Berhasil Login dengan IP 127.0.0.1', '2021-03-15 04:08:37'),
(1653, 'ginger', 'Berhasil Login dengan IP 127.0.0.1', '2021-03-15 04:20:40'),
(1654, 'drarf', 'Berhasil Login dengan IP 127.0.0.1', '2021-03-15 04:21:22'),
(1655, 'hibiscus', 'Berhasil Login dengan IP 127.0.0.1', '2021-03-15 04:37:42'),
(1656, 'drarf', 'Berhasil Login dengan IP 127.0.0.1', '2021-03-15 06:04:19'),
(1657, 'hibiscus', 'Berhasil Login dengan IP 127.0.0.1', '2021-03-15 07:49:25'),
(1658, 'hibiscus', 'Berhasil Login dengan IP 127.0.0.1', '2021-03-16 03:49:40'),
(1659, 'ginger', 'Berhasil Login dengan IP 127.0.0.1', '2021-03-16 03:55:36'),
(1660, 'hibiscus', 'Berhasil Login dengan IP 127.0.0.1', '2021-03-16 03:58:32'),
(1661, 'drarf', 'Berhasil Login dengan IP 127.0.0.1', '2021-03-16 04:00:22'),
(1662, 'hibiscus', 'Berhasil Login dengan IP 127.0.0.1', '2021-03-16 06:54:05'),
(1663, 'ginger', 'Berhasil Login dengan IP 127.0.0.1', '2021-03-16 07:17:30'),
(1664, 'drarf', 'Berhasil Login dengan IP 127.0.0.1', '2021-03-16 07:18:37'),
(1665, 'ginger', 'Berhasil Login dengan IP 127.0.0.1', '2021-03-16 07:19:18'),
(1666, 'drarf', 'Berhasil Login dengan IP 127.0.0.1', '2021-03-16 07:35:24'),
(1667, 'hibiscus', 'Berhasil Login dengan IP 127.0.0.1', '2021-03-16 07:56:51'),
(1668, 'hibiscus', 'Berhasil Login dengan IP 127.0.0.1', '2021-03-17 04:32:34'),
(1669, 'hibiscus', 'Berhasil Login dengan IP 127.0.0.1', '2021-03-17 04:56:46'),
(1670, 'ginger', 'Berhasil Login dengan IP 127.0.0.1', '2021-03-17 05:04:30'),
(1671, 'drarf', 'Berhasil Login dengan IP 127.0.0.1', '2021-03-17 05:05:53'),
(1672, 'hibiscus', 'Berhasil Login dengan IP 127.0.0.1', '2021-03-17 05:10:24'),
(1673, 'drarf', 'Berhasil Login dengan IP 127.0.0.1', '2021-03-17 06:25:35'),
(1674, 'hibiscus', 'Berhasil Login dengan IP 127.0.0.1', '2021-03-17 06:27:19'),
(1675, 'ginger', 'Berhasil Login dengan IP 127.0.0.1', '2021-03-17 07:27:27'),
(1676, 'drarf', 'Berhasil Login dengan IP 127.0.0.1', '2021-03-17 07:27:42'),
(1677, 'ginger', 'Berhasil Login dengan IP 127.0.0.1', '2021-03-17 07:28:32'),
(1678, 'drarf', 'Berhasil Login dengan IP 127.0.0.1', '2021-03-17 07:28:54'),
(1679, 'ginger', 'Berhasil Login dengan IP 127.0.0.1', '2021-03-17 07:40:43'),
(1680, 'hibiscus', 'Berhasil Login dengan IP 127.0.0.1', '2021-03-17 07:44:06'),
(1681, 'hibiscus', 'Berhasil Login dengan IP 127.0.0.1', '2021-03-18 03:31:47'),
(1682, 'ginger', 'Berhasil Login dengan IP 127.0.0.1', '2021-03-18 03:36:02'),
(1683, 'hibiscus', 'Berhasil Login dengan IP 127.0.0.1', '2021-03-18 03:37:03'),
(1684, 'ginger', 'Berhasil Login dengan IP 127.0.0.1', '2021-03-18 03:37:37'),
(1685, 'drarf', 'Berhasil Login dengan IP 127.0.0.1', '2021-03-18 03:38:22'),
(1686, 'ginger', 'Berhasil Login dengan IP 127.0.0.1', '2021-03-18 03:40:15'),
(1687, 'hibiscus', 'Berhasil Login dengan IP 127.0.0.1', '2021-03-18 03:46:21'),
(1688, 'hibiscus', 'Berhasil Login dengan IP 127.0.0.1', '2021-03-19 03:25:13'),
(1689, 'hibiscus', 'Berhasil Login dengan IP 127.0.0.1', '2021-03-22 03:17:10'),
(1690, 'ginger', 'Berhasil Login dengan IP 127.0.0.1', '2021-03-22 03:26:21'),
(1691, 'drarf', 'Berhasil Login dengan IP 127.0.0.1', '2021-03-22 03:28:04'),
(1692, 'ginger', 'Berhasil Login dengan IP 127.0.0.1', '2021-03-22 03:31:46'),
(1693, 'hibiscus', 'Berhasil Login dengan IP 127.0.0.1', '2021-03-22 03:35:15'),
(1694, 'drarf', 'Berhasil Login dengan IP 127.0.0.1', '2021-03-22 03:49:22'),
(1695, 'ginger', 'Berhasil Login dengan IP 127.0.0.1', '2021-03-22 04:01:20'),
(1696, 'hibiscus', 'Berhasil Login dengan IP 127.0.0.1', '2021-03-22 04:03:24'),
(1697, 'hibiscus', 'Berhasil Login dengan IP 127.0.0.1', '2021-03-22 05:50:43'),
(1698, 'drarf', 'Berhasil Login dengan IP 127.0.0.1', '2021-03-22 05:58:01'),
(1699, 'hibiscus', 'Berhasil Login dengan IP 127.0.0.1', '2021-03-22 06:12:10'),
(1700, 'drarf', 'Berhasil Login dengan IP 127.0.0.1', '2021-03-22 07:01:32'),
(1701, 'ginger', 'Berhasil Login dengan IP 127.0.0.1', '2021-03-22 07:02:41'),
(1702, 'drsam', 'Berhasil Login dengan IP 127.0.0.1', '2021-03-22 07:03:18'),
(1703, 'hibiscus', 'Berhasil Login dengan IP 127.0.0.1', '2021-03-22 07:04:57'),
(1704, 'hibiscus', 'Berhasil Login dengan IP 127.0.0.1', '2021-03-23 03:29:47'),
(1705, 'ginger', 'Berhasil Login dengan IP 127.0.0.1', '2021-03-23 04:14:06'),
(1706, 'hibiscus', 'Berhasil Login dengan IP 127.0.0.1', '2021-03-23 04:14:48'),
(1707, 'ginger', 'Berhasil Login dengan IP 127.0.0.1', '2021-03-23 06:44:11'),
(1708, 'hibiscus', 'Berhasil Login dengan IP 127.0.0.1', '2021-03-23 07:19:45'),
(1709, 'hibiscus', 'Berhasil Login dengan IP 127.0.0.1', '2021-03-24 03:27:30'),
(1710, 'hibiscus', 'Berhasil Login dengan IP 127.0.0.1', '2021-03-25 03:46:36'),
(1711, 'hibiscus', 'Berhasil Login dengan IP 127.0.0.1', '2021-03-25 15:34:52');

-- --------------------------------------------------------

--
-- Table structure for table `master_retur_jual`
--

CREATE TABLE `master_retur_jual` (
  `id` int(11) NOT NULL,
  `retur` text DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `master_retur_jual`
--

INSERT INTO `master_retur_jual` (`id`, `retur`) VALUES
(1, 'TUKAR PRODUK YG SAMA'),
(2, 'TUKAR UANG');

-- --------------------------------------------------------

--
-- Table structure for table `menu`
--

CREATE TABLE `menu` (
  `id_sm` varchar(11) NOT NULL,
  `id_menu` varchar(11) NOT NULL,
  `nama_menu` varchar(50) NOT NULL,
  `page_menu` varchar(50) NOT NULL,
  `sts_menu` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `menu`
--

INSERT INTO `menu` (`id_sm`, `id_menu`, `nama_menu`, `page_menu`, `sts_menu`) VALUES
('SM-06', 'MN-04', 'Setting Menu', 'set_menu', 'Tidak Aktif'),
('SM-06', 'MN-05', 'Sub Menu', 'sub_menu', 'Tidak Aktif'),
('SM-03', 'MN-07', 'Data Pasien', 'pasien', 'Tidak Aktif'),
('SM-04', 'MN-08', 'Data Klinik', 'identitas', 'Aktif'),
('SM-04', 'MN-09', 'Database Klinik', 'database', 'Non Aktif'),
('SM-05', 'MN-10', 'Jenis User', 'jenis_user', 'Tidak Aktif'),
('SM-42', 'MN-100', 'Laporan Kritik dan Saran', 'krisar_admin', 'Tidak Aktif'),
('SM-42', 'MN-101', 'Laporan Netto Bruto', 'lap_netbrut', 'Tidak Aktif'),
('SM-42', 'MN-102', 'Laporan Transaksi', 'lap_transaksi', 'Tidak Aktif'),
('SM-69', 'MN-103', 'Grafik Jasa dan Lainnya', 'grafik_treatment', 'Tidak Aktif'),
('SM-69', 'MN-104', 'Grafik Penjualan Apotik', 'grafik_produk', 'Tidak Aktif'),
('SM-66', 'MN-105', 'Laporan Transaksi', 'lap_transaksi', 'Tidak Aktif'),
('SM-36', 'MN-106', 'Data Pekerjaan', 'pekerjaan', 'Tidak Aktif'),
('SM-64', 'MN-107', 'Rekap Broadcast Whatsapp', 'bc_rekap', 'Tidak Aktif'),
('SM-64', 'MN-108', 'BC Berdasarkan Pekerjaan', 'bc_pekerjaan', 'Non Aktif'),
('SM-64', 'MN-109', 'BC Nominal Belanja', 'bc_nominal', 'Non Aktif'),
('SM-05', 'MN-11', 'Setting User', 'user', 'Tidak Aktif'),
('SM-64', 'MN-111', 'BC Banyak Treatment', 'bc_perawatan', 'Non Aktif'),
('SM-42', 'MN-112', 'Laporan Inkaso', 'lap_inkaso', 'Tidak Aktif'),
('SM-66', 'MN-113', 'Laporan Netto Bruto Cabang', 'lap_netbrutcab', 'Tidak Aktif'),
('SM-64', 'MN-114', 'Bradcast Message', 'broadcast_new', 'Tidak Aktif'),
('SM-05', 'MN-12', 'Log Aktivitas', 'log', 'Non Aktif'),
('SM-42', 'MN-121', 'Laporan Harian Produk', 'harian_produk', 'Tidak Aktif'),
('SM-63', 'MN-122', 'Laporan Harian Produk', 'harian_produk', 'Tidak Aktif'),
('SM-28', 'MN-123', 'Kartu Member', 'kartu_member', 'Tidak Aktif'),
('SM-02', 'MN-125', 'History Perawatan', 'history_p', 'Non Aktif'),
('SM-02', 'MN-126', 'Pasca Treatment Pertanggal', 'history_pc', 'Non Aktif'),
('SM-99998', 'MN-129987', 'Tambah Data', 'prarilis_pt', 'Tidak Aktif'),
('SM-99998', 'MN-129988', 'History', 'prarilis_pth', 'Tidak Aktif'),
('SM-07', 'MN-13', 'Golongan Tenaga Medis', 'jenis_medis', 'Tidak Aktif'),
('SM-02', 'MN-133', 'Pasca Treatment Pasien', 'history_pcp', 'Tidak Aktif'),
('SM-66', 'MN-134', 'Laporan Penjualan Produk', 'penpro_cab', 'Non Aktif'),
('SM-07', 'MN-14', 'Tenaga Medis', 'tenaga_medis', 'Tidak Aktif'),
('SM-42', 'MN-140', 'Laporan Reture', 'lap_reture', 'Tidak Aktif'),
('SM-43', 'MN-141', 'Produk Rusak', 'produk_rusak', 'Tidak Aktif'),
('SM-09', 'MN-15', 'Data Mitra', 'data_mitra', 'Tidak Aktif'),
('SM-10', 'MN-16', 'Data Supplier', 'data_supplier', 'Tidak Aktif'),
('SM-11', 'MN-17', 'Jenis Tindakan', 'jenis_tindakan', 'Tidak Aktif'),
('SM-11', 'MN-18', 'Jenis Ruangan', 'jenis_ruangan', 'Tidak Aktif'),
('SM-12', 'MN-19', 'Jenis Pengeluaran', 'pengeluaran_jenis', 'Tidak Aktif'),
('SM-12', 'MN-20', 'Jenis Pembayaran', 'jenis_bayar', 'Tidak Aktif'),
('SM-107', 'MN-201', 'Pembelian Tunai', 'pembelian_t', 'Aktif'),
('SM-107', 'MN-202', 'Pembelian Kredit', 'pembelian_k', 'Aktif'),
('SM-13', 'MN-21', 'Pengeluaran Operasional', 'pengeluaran_pop', 'Tidak Aktif'),
('SM-13', 'MN-22', 'Data Pengeluaran', 'pengeluaran', 'Tidak Aktif'),
('SM-13', 'MN-23', 'Data Pemasukan', 'pemasukan', 'Tidak Aktif'),
('SM-13', 'MN-24', 'Data KAS', 'kas', 'Tidak Aktif'),
('SM-13', 'MN-25', 'Laba Rugi', 'keuangan', 'Tidak Aktif'),
('SM-36', 'MN-300', 'Data Kategori Biaya', 'kategori_biaya', 'Aktif'),
('SM-103', 'MN-301', 'Stok Pusat', 'gudang', 'Aktif'),
('SM-103', 'MN-302', 'Stok Penjualan', 'gudang_cabang', 'Aktif'),
('SM-422', 'MN-305', 'Laporan Penerimaan', 'lap_penerimaan_pro', 'Aktif'),
('SM-289', 'MN-306', 'Pelayanan Pasien', 'kasir_apotek', 'Aktif'),
('SM-289', 'MN-307', 'Antrian Obat Apotek', 'apotek_antrian', 'Non Aktif'),
('SM-289', 'MN-308', 'Data Pasien', 'data_pasien', 'Aktif'),
('SM-289', 'MN-309', 'Tambah Pasien Baru', 'pasien_baru', 'Aktif'),
('SM-422', 'MN-310', 'Laporan Penjualan', 'lap_penjualan', 'Aktif'),
('SM-15', 'MN-32', 'Pasien Baru', 'pendaftarbaru', 'Tidak Aktif'),
('SM-43', 'MN-321', 'Stok Opname', 'stok_opname', 'Aktif'),
('SM-15', 'MN-33', 'Antrian Baru', 'data_antrian', 'Tidak Aktif'),
('SM-36', 'MN-333', 'Data Poliklinik', 'poliklinik', 'Aktif'),
('SM-15', 'MN-34', 'Checkout', 'checkout', 'Tidak Aktif'),
('SM-16', 'MN-35', 'Data Resep', 'racik_resep', 'Tidak Aktif'),
('SM-16', 'MN-36', 'Data Pembayaran', 'data_resep&act=data_pemrsp', 'Tidak Aktif'),
('SM-20', 'MN-37', 'Penjualan Obat', 'penjualan_obat', 'Tidak Aktif'),
('SM-17', 'MN-38', 'Master Obat', 'master_obat', 'Tidak Aktif'),
('SM-18', 'MN-42', 'Poli', 'data_poli', 'Tidak Aktif'),
('SM-36', 'MN-444', 'Data Karyawan', 'karyawan', 'Aktif'),
('SM-18', 'MN-46', 'Ruangan/Kamar', 'kamar', 'Tidak Aktif'),
('SM-19', 'MN-47', 'Data Tagihan', 'data_tagihan', 'Non Aktif'),
('SM-19', 'MN-48', 'Data Pembayaran', 'data_pembayaran', 'Tidak Aktif'),
('SM-20', 'MN-49', 'Data Pembayaran', 'pembayaran_po', 'Tidak Aktif'),
('SM-23', 'MN-52', 'Riwayat Dokter', 'rd', 'Tidak Aktif'),
('SM-36', 'MN-555', 'Data Dokter', 'dokter', 'Aktif'),
('SM-25', 'MN-63', 'Data Fasilitas', 'fsl_kamar', 'Tidak Aktif'),
('SM-05', 'MN-64', 'Backup Database', 'database', 'Non Aktif'),
('SM-200', 'MN-6464', 'Setting User', 'setuser_cabang', 'Tidak Aktif'),
('SM-27', 'MN-68', 'Data Tunggakan', 'tunggakan', 'Tidak Aktif'),
('SM-36', 'MN-69', 'Data Produk Apotik', 'produk', 'Aktif'),
('SM-36', 'MN-70', 'Data Ruangan', 'druangan', 'Tidak Aktif'),
('SM-36', 'MN-71', 'Data Layanan Jasa', 'treatment', 'Aktif'),
('SM-36', 'MN-72', 'Data  Klinik ', 'cabang', 'Tidak Aktif'),
('SM-36', 'MN-73', 'Data Pasien', 'data_pasien', 'Tidak Aktif'),
('SM-37', 'MN-74', 'Pembelian Tunai', 'pembelian_t', 'Aktif'),
('SM-37', 'MN-75', 'Pembelian Kredit', 'pembelian_k', 'Aktif'),
('SM-36', 'MN-76', 'Data Supplier', 'suplier', 'Tidak Aktif'),
('SM-289', 'MN-766', 'Antrian Pasien', 'antrian_pasien', 'Aktif'),
('SM-36', 'MN-77', 'Kategori Produk Apotik', 'kategori', 'Tidak Aktif'),
('SM-36', 'MN-78', 'Data Satuan', 'data_satuan', 'Tidak Aktif'),
('SM-42', 'MN-789', 'Laporan Rugi Laba', 'lap_rugilaba', 'Aktif'),
('SM-42', 'MN-79', 'Laporan Pengiriman', 'lap_pengiriman_pro', 'Aktif'),
('SM-42', 'MN-80', 'Kas', 'lap_kas', 'Non Aktif'),
('SM-42', 'MN-81', 'Laporan Perpasien', 'lap_pel', 'Tidak Aktif'),
('SM-42', 'MN-82', 'Laporan Tutup Toko', 'lap_tuto', 'Non Aktif'),
('SM-42', 'MN-83', 'Laporan Kehadiran Dokter', 'lap_kedo', 'Tidak Aktif'),
('SM-42', 'MN-84', 'Laporan Pembelian', 'lap_pempro', 'Aktif'),
('SM-422', 'MN-844', 'Laporan Pembelian', 'lap_pempro', 'Non Aktif'),
('SM-42', 'MN-85', 'Laporan Stock Produk', 'lap_stock', 'Tidak Aktif'),
('SM-43', 'MN-86', 'Stok Pusat', 'gudang', 'Aktif'),
('SM-43', 'MN-87', 'Stok Penjualan', 'gudang_cabang', 'Aktif'),
('SM-42', 'MN-88', 'Rugi Laba', 'rugi_laba', 'Non Aktif'),
('SM-42', 'MN-89', 'Laporan Penjualan', 'lap_penjualan', 'Aktif'),
('SM-289', 'MN-899', 'Antrian Obat Pasien', 'rawat_jalan', 'Aktif'),
('SM-28', 'MN-90', 'Pasien Baru', 'pasien_baru', 'Aktif'),
('SM-28', 'MN-91', 'Data Pasien', 'data_pasien', 'Aktif'),
('SM-49', 'MN-92', 'Setting User', 'setuser_cabang', 'Tidak Aktif'),
('SM-66', 'MN-94', 'Laporan Pelayanan Treatment', 'pendapatan_treatment', 'Tidak Aktif'),
('SM-63', 'MN-95', 'Pendapatan Produk', 'pendapatan_harian', 'Non Aktif'),
('SM-42', 'MN-97', 'Laporan Penjualan Perfaktur', 'laporan_perfaktur', 'Tidak Aktif'),
('SM-66', 'MN-98', 'Laporan Penjualan Perfaktur', 'laporan_cabang_perfaktur', 'Tidak Aktif'),
('SM-66', 'MN-99', 'Laporan Kritik dan Saran', 'laporan_krisar', 'Tidak Aktif'),
('SM-5000', 'MN-9900', 'Buat Kiriman', 'trf_out', 'Tidak Aktif'),
('SM-5000', 'MN-9901', 'Terima Kiriman', 'trf_in', 'Tidak Aktif'),
('SM-42', 'MN-9989', 'Lap Penjualan Harian', 'penjualan_ha', 'Tidak Aktif'),
('SM-66', 'MN-9999', 'Lap Penjualan Harian', 'penjualan_h', 'Tidak Aktif');

-- --------------------------------------------------------

--
-- Table structure for table `noticelab`
--

CREATE TABLE `noticelab` (
  `id` int(11) NOT NULL,
  `no_faktur` varchar(100) DEFAULT NULL,
  `id_pasien` varchar(50) NOT NULL,
  `id_dr` int(11) DEFAULT NULL,
  `tgl` date DEFAULT NULL,
  `rawat_inap` int(11) DEFAULT NULL,
  `jasa` int(11) DEFAULT NULL,
  `jamin` text DEFAULT NULL,
  `status` enum('S','T') NOT NULL DEFAULT 'T'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `noticelab`
--

INSERT INTO `noticelab` (`id`, `no_faktur`, `id_pasien`, `id_dr`, `tgl`, `rawat_inap`, `jasa`, `jamin`, `status`) VALUES
(34, '202005281631071', 'S.M.S 4', 9, '2020-05-28', 1, 4, 'umum', 'T'),
(39, '202006060512245', 'S.M.S.3', 9, '2020-06-06', 1, 4, '', 'S'),
(21, '202005051206143', 'S.M.S.1', 9, '2020-05-16', 1, 4, 'lain', 'T'),
(23, '202005131708522', 'S.M.S.3', 9, '2020-06-05', 1, 4, 'umum', 'S'),
(24, '202005131709205', 'S.M.S', 9, '2020-05-16', 1, 4, 'lain', 'S'),
(40, '202005051206323', 'S.M.S.6', 9, '2020-06-06', 1, 4, 'umum', 'S'),
(35, '202005051205062', 'S.M.S.2', 9, '2020-06-05', 1, 4, 'umum', 'S'),
(38, '202006051556273', 'S.M.S.3', 9, '2020-06-06', 1, 4, 'corp1', 'S'),
(43, '202006100527362', 'S.M.S.2', 9, '2020-06-10', 1, 4, '', 'S'),
(44, '202005051206323', 'S.M.S.6', 9, '2020-06-10', 1, 5, 'umum', 'S'),
(45, '202006191446566', 'S.M.S.3', 9, '2020-06-19', 1, 4, 'umum', 'T'),
(48, '202006241028013', 'S.M.S.3', 9, '2020-06-24', 1, 4, 'corp1', 'S'),
(50, '202012151447238', 'S.M.S.2', 11, '2021-02-03', 1, 4, 'bpjs', 'T');

-- --------------------------------------------------------

--
-- Table structure for table `nurse`
--

CREATE TABLE `nurse` (
  `id_nurse` int(11) NOT NULL,
  `drpraktek` int(11) DEFAULT NULL,
  `perawat` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `nurse`
--

INSERT INTO `nurse` (`id_nurse`, `drpraktek`, `perawat`) VALUES
(1, 1, 36),
(2, 2, 37),
(3, 3, 36),
(4, 4, 37),
(5, 7, 36),
(6, 16, 36),
(7, 17, 36),
(8, 14, 36),
(9, 15, 36),
(10, 2, 36),
(11, 24, 36),
(12, 8, 36),
(13, 7, 37),
(14, 14, 37),
(15, 29, 36),
(16, 30, 37),
(17, 31, 36),
(18, 33, 36),
(19, 34, 37),
(20, 35, 37),
(21, 36, 37),
(22, 35, 37),
(31, 49, 36),
(24, 39, 36),
(25, 40, 36),
(26, 41, 36),
(27, 42, 36),
(28, 43, 36),
(29, 47, 36),
(30, 48, 36),
(33, 60, 37),
(34, 61, 36),
(35, 64, 37),
(36, 66, 36);

-- --------------------------------------------------------

--
-- Table structure for table `pasca_treatment`
--

CREATE TABLE `pasca_treatment` (
  `id_pt` int(11) NOT NULL,
  `id_kk` int(11) NOT NULL,
  `id_dr` int(11) NOT NULL,
  `id_pasien` varchar(50) NOT NULL,
  `no_faktur` varchar(50) NOT NULL,
  `tanggal` date NOT NULL,
  `subjek` text NOT NULL,
  `objek` text NOT NULL,
  `assestment` text NOT NULL,
  `foto1` text DEFAULT NULL,
  `foto2` text DEFAULT NULL,
  `foto3` text DEFAULT NULL,
  `foto4` text DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pasca_treatment`
--

INSERT INTO `pasca_treatment` (`id_pt`, `id_kk`, `id_dr`, `id_pasien`, `no_faktur`, `tanggal`, `subjek`, `objek`, `assestment`, `foto1`, `foto2`, `foto3`, `foto4`) VALUES
(1, 0, 12, 'S.M.S.3', '202003091131282', '2020-03-09', '-', '-', '-', '', '', '', ''),
(2, 0, 9, 'S.M.S 5', '202003091330462', '2020-03-09', '-', '-', '-', '', '', '', ''),
(3, 0, 9, 'S.M.S.2', '202003091354513', '2020-03-09', '-', '-', '-', '', '', '', ''),
(4, 0, 10, 'S.M.S.3', '202003091405171', '2020-03-09', '-', '-', '-', '', '', '', ''),
(5, 0, 9, 'S.M.S.2', '202003091354068', '2020-03-09', '-', '-', '-', '', '', '', ''),
(6, 0, 9, 'S.M.S.3', '202003091112221', '2020-03-09', '-', '-', '-', '', '', '', ''),
(7, 0, 9, 'S.M.S', '202003091351427', '2020-03-09', '-', '-', '-', '', '', '', ''),
(8, 0, 9, 'S.M.S.2', '202004131420536', '2020-04-13', '-', '-', '-', '', '', '', ''),
(9, 0, 9, 'S.M.S.2', '202004140921151', '2020-04-14', '-', '-', '-', '', '', '', ''),
(10, 0, 9, 'S.M.S.3', '202004140935337', '2020-04-14', '-', '-', '-', '', '', '', ''),
(11, 0, 9, 'S.M.S', '202004141234179', '2020-04-14', '-', '-', '-', '', '', '', ''),
(12, 0, 9, 'S.M.S.3', '202004141344389', '2020-04-14', '-', '-', '-', '', '', '', ''),
(13, 0, 9, 'S.M.S.3', '202004131038391', '2020-04-14', '-', '-', '-', '', '', '', ''),
(14, 0, 9, 'S.M.S.2', '202004141356563', '2020-04-14', '-', '-', '-', '', '', '', ''),
(15, 0, 9, 'S.M.S.6', '202004142329503', '2020-04-15', '-', '-', '-', '', '', '', ''),
(16, 0, 9, 'S.M.S.6', '202004142329503', '2020-04-15', '-', '-', '-', '', '', '', ''),
(17, 0, 11, 'S.M.S.3', '202004151404049', '2020-04-15', '-', '-', '-', '', '', '', ''),
(18, 0, 11, 'S.M.S.2', '202004151427055', '2020-04-15', '-', '-', '-', '', '', '', ''),
(19, 0, 9, 'S.M.S.1', '202004301221125', '2020-04-30', '-', '-', '-', '', '', '', ''),
(20, 0, 12, 'S.M.S.1', '202004301221125', '2020-04-30', '-', '-', '-', '', '', '', ''),
(21, 0, 9, 'S.M.S.1', '202004301221125', '2020-05-01', 'Chek', 'Check', 'Pemeriksaan rutin', '65data jurusan.PNG', '79data yang diterima.PNG', '53STEMPEL dan TTD KEPSEK SMA YPVDP.jpeg', '89data jurusan.PNG'),
(22, 0, 9, 'S.M.S.1', '202004301221125', '2020-05-04', '-', '-', '-', '', '', '', ''),
(23, 0, 9, 'S.M.S.1', '202004301221125', '2020-05-04', '-', '-', '-', '', '', '', ''),
(24, 0, 9, 'S.M.S.1', '202005041341088', '2020-05-04', '-', '-', '-', '', '', '', ''),
(25, 0, 9, 'S.M.S.1', '202005041341088', '2020-05-04', '-', '-', '-', '', '', '', ''),
(26, 0, 9, 'S.M.S.2', '202005051205062', '2020-05-05', '-', '-', '-', '', '', '', ''),
(27, 0, 9, 'S.M.S.1', '202005051206143', '2020-05-05', '-', '-', '-', '', '', '', ''),
(28, 0, 9, 'S.M.S.6', '202005051206323', '2020-05-05', '-', '-', '-', '', '', '', ''),
(29, 0, 11, 'S.M.S.3', '202005051207023', '2020-05-05', '-', '-', '-', '', '', '', ''),
(30, 0, 11, 'S.M.S.2', '202005051205062', '2020-05-06', 'a', 'a', 'a', '', '', '', ''),
(31, 0, 9, 'S.M.S.5', '202005071357156', '2020-05-07', '-', '-', '-', '', '', '', ''),
(32, 0, 9, 'S.M.S.5', '202005071402057', '2020-05-07', '-', '-', '-', '', '', '', ''),
(33, 0, 9, 'S.M.S.5', '202005071404171', '2020-05-07', '-', '-', '-', '', '', '', ''),
(34, 0, 9, 'S.M.S', '202005161341409', '2020-05-16', 'w', 'w', 'a', '', '', '', ''),
(35, 0, 11, 'S.M.S 4', '202005261745566', '2020-05-26', '-', '-', '-', '49Capture3.JPG', '63Capture4.JPG', '46default-profile-pic.png', '57default.jpg'),
(36, 0, 9, 'S.M.S.3', '202005261623254', '2020-05-26', '-', '-', '-', '', '', '', ''),
(37, 0, 9, 'S.M.S', '202005261623363', '2020-05-26', '-', '-', '-', '', '', '', ''),
(38, 0, 9, 'S.M.S.5', '202005261623531', '2020-05-26', '-', '-', '-', '', '', '', ''),
(39, 0, 9, 'S.M.S 4', '202005280000006', '2020-05-28', '-', '-', '-', '51default-profile-pic.png', '', '', ''),
(40, 0, 9, 'S.M.S', '202005271458217', '2020-05-27', '-', '-', '-', '', '', '', ''),
(41, 0, 9, 'S.M.S.2', '202005051205062', '2020-05-28', '-', '-', '-', '49default-profile-pic.png', '', '', ''),
(42, 0, 9, 'S.M.S', '202005281439593', '2020-05-28', '-', '-', '-', '', '', '', ''),
(43, 0, 9, 'S.M.S.3', '202005281629025', '2020-05-28', '-', '-', '-', '', '', '', ''),
(44, 0, 9, 'S.M.S.3', '202005291458512', '2020-05-29', '-', '-', '-', '', '', '', ''),
(45, 0, 9, 'S.M.S.3', '202005301434279', '2020-05-30', '-', '-', '-', '', '', '', ''),
(46, 0, 9, 'S.M.S.3', '202005301536426', '2020-05-30', '-', '-', '-', '', '', '', ''),
(47, 0, 9, 'S.M.S.3', '202006010741122', '2020-06-01', '-', '-', '-', '', '', '', ''),
(48, 0, 9, 'S.M.S.3', '202006010741122', '2020-06-01', '-', '-', '-', '', '', '', ''),
(49, 0, 9, 'S.M.S.3', '202006010741122', '2020-06-01', '-', '-', '-', '', '', '', ''),
(50, 0, 9, 'S.M.S.3', '202006040754512', '2020-06-04', '-', '-', '-', '', '', '', ''),
(51, 0, 9, 'S.M.S.6', '202006040821599', '2020-06-04', '-', '-', '-', '', '', '', ''),
(52, 0, 9, 'S.M.S.3', '202006091544577', '2020-06-09', '-', '-', '-', '', '', '', ''),
(53, 0, 9, 'S.M.S.3', '202006091553129', '2020-06-09', '-', '-', '-', '', '', '', ''),
(54, 0, 9, 'S.M.S.3', '202006091601393', '2020-06-09', '-', '-', '-', '', '', '', ''),
(55, 0, 9, 'S.M.S.5', '202006231642159', '2020-06-23', '-', '-', '-', '19blender_awesome_in_space.jpg', '', '', ''),
(56, 0, 9, 'S.M.S.5', '202006231651563', '2020-06-23', '-', '-', '-', '', '', '', ''),
(57, 0, 9, 'S.M.S.3', '202006241028013', '2020-06-24', 'a', 'a', 'a', '51$Unity Wallpaper.jpg', '', '', ''),
(58, 0, 9, 'S.M.S.3', '202006241127291', '2020-06-24', 'a', 'a', 'a', '43$Unity Wallpaper.jpg', '', '', ''),
(59, 0, 9, 'S.M.S.3', '202006241127291', '2020-06-24', '-', '-', '-', '', '', '', ''),
(60, 0, 9, 'S.M.S.5', '202006250928465', '2020-06-25', '-', '-', '-', '', '', '', ''),
(61, 0, 9, 'S.M.S.5', '202006251055049', '2020-06-25', '-', '-', '-', '', '', '', ''),
(62, 0, 9, 'S.M.S.2', '202006251237287', '2020-06-25', '-', '-', '-', '', '', '', ''),
(63, 0, 9, 'S.M.S.5', '202006251302069', '2020-06-25', '-', '-', '-', '', '', '', ''),
(64, 0, 9, 'S.M.S.5', '202008181431504', '2020-08-18', '-', '-', '-', '', '', '', ''),
(65, 0, 9, 'S.M.S.5', '202008181431504', '2020-08-18', '-', '-', '-', '', '', '', ''),
(66, 0, 9, 'S.M.S.5', '202008181431504', '2020-08-18', '-', '-', '-', '', '', '', ''),
(67, 0, 9, 'S.M.S.5', '202008181431504', '2020-08-18', '-', '-', '-', '27$Unity Wallpaper.jpg', '', '', ''),
(68, 0, 11, 'S.M.S.3', '202102031124002', '2021-02-03', '-', '-', '-', '36Screenshot_2021-02-01  ta2021.png', '', '', ''),
(69, 0, 11, 'S.M.S.3', '202102031124002', '2021-02-03', 'Pemeriksaan Ke 2', 'Perut', 'Selesai', '26Screenshot_2021-02-01  ta2021.png', '', '', ''),
(70, 1, 0, 'A888C', '202102041052155', '2021-02-04', 'Pemeriksaan Gula Darah', 'Gejala-gejala Darah Tinggi', 'Kontrol selanjutnya cek tensi darah', '6Screenshot_2021-02-01  ta2021.png', '', '', ''),
(71, 0, 11, 'A888C', '202102041052155', '2021-02-04', 'Pemeriksaan Gula Darah', 'Cek gula darah', 'Tensi darah tinggi', '49Screenshot_2021-02-01  ta2021.png', '', '', ''),
(73, 0, 11, 'S.M.S.6', '202102051048544', '2021-02-05', 'Pemeriksaan Gula Darah', 'Pemeriksaan Biasa', 'Lakukan pemeriksaan berikutnya', '', '', '', ''),
(74, 0, 11, 'S.M.S.2', '202102051421418', '2021-02-05', 'Pemeriksaan Ke 1', 'Cek darah', 'Pemeriksaan selanjutnya Minggu Depan', '', '', '', ''),
(75, 0, 11, 'S.M.S.3', '202102081103174', '2021-02-08', 'Pemeriksaan Ke 3', 'Tes Gula Darah', 'Pemeriksaan berlanjut', '', '', '', ''),
(76, 0, 11, 'S.M.S.5', '202102091134459', '2021-02-09', 'Pemeriksaan Biasa', 'Keluhan Pusing', 'Konsultasi', '', '', '', ''),
(77, 0, 11, 'A888C', '202102091317376', '2021-02-09', 'Pemeriksaan Luar Biasa', 'Pemeriksaan Luas Biasa', 'Konsul', '', '', '', ''),
(78, 0, 11, 'S.M.S.3', '202102091421417', '2021-02-09', 'A', 'B', 'C', '', '', '', ''),
(79, 0, 11, 'S.M.S.6', '202102091422151', '2021-02-09', 'D', 'E', 'F', '', '', '', ''),
(80, 0, 11, 'S.M.S.6', '202102111049007', '2021-02-11', 'Pemeriksaan Biasa', 'Gejala Kecapean', 'Istirahat yang cukup', '', '', '', ''),
(81, 0, 11, 'S.M.S.6', '202102151136588', '2021-02-15', 'Pemeriksaan Gula Darah', 'Keluhan Pusing', 'Pemeriksaan Lanjutan', '', '', '', ''),
(82, 0, 11, 'S.M.S.2', '202102231301153', '2021-02-23', 'Konsultasi Kesehatan', 'Pemeriksaan Gula Darah', 'Konsultasi selanjutnya', '', '', '', ''),
(83, 0, 11, 'S.M.S.3', '202102231317262', '2021-02-23', 'Pemeriksaan Biasa', 'Keluhan Pusing', 'Pemeriksaan Berlanjut', '7Screenshot_2021-02-01  ta2021.png', '', '', ''),
(84, 0, 11, 'S.M.S.6', '202102231318249', '2021-02-23', 'Perawatan Luka', '5 Jahitan', 'Cepat Sembuh', '', '', '', ''),
(85, 0, 11, 'S.M.S.3', '202102241035077', '2021-02-24', 'Pemeriksaan Gula Darah', 'Keluhan Pusing', 'Tekanan darah tinggi', '', '', '', ''),
(86, 0, 11, 'S.M.S.2', '202102241124463', '2021-02-24', 'Pemeriksaan Biasa', 'Konsultasi Tekanan Darah', 'Tensi Darah Rendah', '4spongebob-e1441057213584.jpg', '', '', ''),
(87, 0, 11, 'S.M.S.5', '202102241138532', '2021-02-24', 'Pemeriksaan Biasa', 'Gejala Kecapean', 'Kurang tidur', '85spongebob-e1441057213584.jpg', '', '', ''),
(88, 0, 11, 'S.M.S.2', '202103051104372', '2021-03-05', 'Testing 5 Maret part II', 'Konsultasi Tekanan Darah', 'Pemeriksaan', '', '', '', ''),
(89, 0, 11, 'A888C', '202103091342414', '2021-03-09', 'Testing 9 Maret', 'Pemeriksaan', 'Perawatan Pasien Inap', '', '', '', ''),
(90, 0, 16, 'A999C', '202103101118289', '2021-03-10', 'Testing Rawat Jalan', 'Maret 10', 'Dicoba', '', '', '', ''),
(91, 0, 16, 'S.M.S.1', '202103121029181', '2021-03-12', 'Testing 12 Maret ', 'Testing', 'Klinik', '', '', '', ''),
(92, 0, 16, 'S.M.S.3', '202103161434368', '2021-03-16', 'Testing 16 Maret', '2021', 'Dicoba', '', '', '', ''),
(93, 0, 16, 'S.M.S.3', '202103171204338', '2021-03-17', 'Testing 17 Maret', 'Testing', 'Rawat Jalan', '', '', '', ''),
(94, 0, 16, 'S.M.S.3', '202103171204338', '2021-03-17', 'Testing 17 Maret II', 'Apapun', 'Dicoba', '', '', '', ''),
(95, 0, 16, 'A888C', '202103181037394', '2021-03-18', 'Testing Rawat Jalan Maret', 'Pemeriksaan Pasien Maret', 'Ditesting', '', '', '', ''),
(96, 0, 16, 'S.M.S.3', '202103221026384', '2021-03-22', 'Pemeriksaan Pasien', 'Keluhan Pusing dan Pusing', 'Pasien cek tensi darah', '', '', '', ''),
(97, 0, 16, 'A999C', '202103101118289', '2021-03-22', '-', '-', '-', '', '', '', ''),
(98, 0, 16, 'S.M.S.3', '202103221026384', '2021-03-22', 'testing', 'mbuh', 'aaa', '', '', '', ''),
(99, 0, 11, 'S.M.S.5', '202103221402456', '2021-03-22', 'Di Coba', 'Testing ting', 'Pasien', '', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `pasien`
--

CREATE TABLE `pasien` (
  `id` int(11) NOT NULL,
  `id_pasien` varchar(15) DEFAULT NULL,
  `id_kk` int(11) DEFAULT NULL,
  `nama_pasien` varchar(30) DEFAULT NULL,
  `alamat` text DEFAULT NULL,
  `jk` varchar(5) DEFAULT NULL,
  `tgl_lahir` date DEFAULT NULL,
  `umur` varchar(20) NOT NULL,
  `no_telp` varchar(25) DEFAULT NULL,
  `tgl_pendaftaran` date DEFAULT NULL,
  `total_kunjungan` int(11) NOT NULL,
  `klaster` varchar(5) DEFAULT NULL,
  `pekerjaan` varchar(30) DEFAULT NULL,
  `km_exp` date NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pasien`
--

INSERT INTO `pasien` (`id`, `id_pasien`, `id_kk`, `nama_pasien`, `alamat`, `jk`, `tgl_lahir`, `umur`, `no_telp`, `tgl_pendaftaran`, `total_kunjungan`, `klaster`, `pekerjaan`, `km_exp`) VALUES
(2, 'S.M.S.2', 1, 'Anisa', 'Bantul', 'P', '2001-12-04', '18', '+628', '2019-12-11', 0, 'M', '-', '0000-00-00'),
(3, 'S.M.S.3', 1, 'Charlie', 'Kasihan, Bantul', 'Laki-', '1999-04-04', '20', '0879897834', '2020-03-09', 0, 'M', 'Wiraswasta', '0000-00-00'),
(4, 'S.M.S', 1, 'Agus', 'Yogyakarta', 'Perem', '0000-00-00', '0', '', '0000-00-00', 0, 'M', '', '0000-00-00'),
(7, 'S.M.S.1', 1, 'asep', 'Kasihan, Bantul', 'Laki-', '1990-03-01', '30', '0879897834', '2020-03-09', 0, 'D', 'Wiraswasta', '0000-00-00'),
(5, 'S.M.S 4', 1, 'Elvi', 'Jl.Cnta', 'P', '1990-03-22', '29', '081237878900', '2020-03-09', 0, 'D', 'Makelar Hp', '0000-00-00'),
(6, 'S.M.S.5', 1, 'Ade', 'Gejayan', 'Laki-', '1990-04-04', '29', '089765432123', '2020-03-09', 0, 'M', 'Orang Sibuk', '0000-00-00'),
(8, 'S.M.S.6', 1, 'Andrianis', 'Pahandut', 'Laki-', '1995-01-17', '25', '0850314314', '2020-03-12', 0, 'D', 'Barista', '0000-00-00'),
(9, 'A888C', 1, 'Astuti', 'Sleman, Yogyakarta', 'Perem', '1995-06-14', '26', '08912345678', '2021-02-04', 0, 'D', 'Ibu Rumah Tangga', '0000-00-00'),
(10, 'A999C', 1, 'Asti', 'Bantul, Sleman-Yogyakarta', 'Perem', '2000-01-01', '21', '081234567123', '2021-02-04', 0, 'D', 'Mahasiswi', '0000-00-00');

-- --------------------------------------------------------

--
-- Table structure for table `pekerjaan`
--

CREATE TABLE `pekerjaan` (
  `id_pekerjaan` int(11) NOT NULL,
  `pekerjaan` varchar(50) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pekerjaan`
--

INSERT INTO `pekerjaan` (`id_pekerjaan`, `pekerjaan`) VALUES
(2, 'Akuntansi'),
(4, 'Dokter'),
(5, 'Buruh'),
(6, 'Guru'),
(7, 'Mahasiswa'),
(8, 'Pelajar'),
(9, 'PNS'),
(10, 'Karyawan'),
(11, 'Wirausaha'),
(12, 'IRT'),
(13, 'Wiraswasta'),
(14, 'Honorer'),
(15, 'Kepala Desa');

-- --------------------------------------------------------

--
-- Table structure for table `pelayanan_obat`
--

CREATE TABLE `pelayanan_obat` (
  `id_pelayanan_obat` int(11) NOT NULL,
  `id_ju` varchar(5) NOT NULL,
  `no_tran` varchar(50) NOT NULL,
  `nama_pembeli` varchar(255) NOT NULL,
  `tgl_pembelian` datetime NOT NULL,
  `jenis_pembayaran` enum('tunai','transfer') NOT NULL,
  `total` int(11) NOT NULL,
  `cash` int(11) DEFAULT NULL,
  `kembalian` int(11) DEFAULT NULL,
  `status_pembayaran` enum('lunas','belum lunas') DEFAULT NULL,
  `resep` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `pelayanan_obat`
--

INSERT INTO `pelayanan_obat` (`id_pelayanan_obat`, `id_ju`, `no_tran`, `nama_pembeli`, `tgl_pembelian`, `jenis_pembayaran`, `total`, `cash`, `kembalian`, `status_pembayaran`, `resep`) VALUES
(9, 'JU-07', 'TRS-00002', 'Ela', '2021-01-13 20:44:23', 'tunai', 40000, 50000, 10000, 'lunas', 'calmag.jpg'),
(10, 'JU-07', 'TRS-00003', 'Ela', '2021-01-13 20:51:10', 'tunai', 40000, 50000, 10000, 'lunas', 'bralifex.jpg'),
(11, 'JU-07', 'TRS-00004', 'Ela', '2021-01-13 21:00:44', 'tunai', 40000, 50000, 10000, 'lunas', 'ETILON.jpg'),
(12, 'JU-07', 'TRS-00005', 'Nada', '2021-01-13 21:02:41', 'tunai', 80000, 100000, 20000, 'lunas', 'callcii.jpg'),
(13, 'JU-07', 'TRS-00006', 'Nada Q', '2021-01-14 11:41:08', 'tunai', 400000, 400000, 0, 'lunas', 'calmag.jpg'),
(14, 'JU-07', 'TRS-00007', 'Nur', '2021-01-19 14:23:14', 'tunai', 71500, 100000, 28500, 'lunas', 'blood set.jpg'),
(15, 'JU-07', 'TRS-00008', 'Melati', '2021-01-19 16:11:55', 'tunai', 5000000, 5000000, 0, 'lunas', 'ARGESID-500-MG-TABLET.jpg'),
(16, 'JU-07', 'TRS-00009', 'Lala', '2021-01-25 23:18:49', 'tunai', 5555, 10000, 4445, 'lunas', 'spongebob-e1441057213584.jpg'),
(17, 'JU-07', 'TRS-00010', 'lulu', '2021-01-25 23:30:01', 'transfer', 7500, 10000, 2500, 'lunas', 'spongebob-e1441057213584.jpg'),
(20, 'JU-07', 'TRS-00011', 'Nurlaela Khasannah', '2021-01-27 14:27:21', 'tunai', 6000, 10000, 4000, 'lunas', NULL),
(21, 'JU-07', 'TRS-00012', 'Shafira Aura', '2021-01-27 14:30:42', 'tunai', 6000, 10000, 4000, 'lunas', NULL),
(22, 'JU-07', 'TRS-00013', 'saya', '2021-01-27 14:38:03', 'tunai', 5555, 10000, 4445, 'lunas', 'spongebob-e1441057213584.jpg'),
(24, 'JU-07', 'TRS-00014', 'lololo', '2021-01-28 12:33:07', 'tunai', 26000, 30000, 4000, 'belum lunas', NULL),
(25, 'JU-07', 'TRS-00015', 'Lilili', '2021-01-29 13:00:20', 'tunai', 37110, 40000, 2890, 'lunas', 'WhatsApp Image 2020-12-26 at 19.08.36(2).jpeg'),
(26, 'JU-07', 'TRS-00016', 'lalalala', '2021-01-29 16:31:16', 'tunai', 26000, 30000, 4000, NULL, NULL),
(27, 'JU-07', 'TRS-00017', 'hayo', '2021-01-29 16:40:56', 'transfer', 26000, 50000, 24000, NULL, NULL),
(28, 'JU-07', 'TRS-00018', 'Siti', '2021-02-01 11:31:16', 'tunai', 139000, 150000, 11000, 'lunas', NULL),
(29, 'JU-07', 'TRS-00019', 'Ela', '2021-02-08 14:47:08', 'tunai', 367200, 400000, 32800, 'lunas', NULL),
(30, 'JU-07', 'TRS-00020', 'Agus', '2021-02-11 12:00:52', 'tunai', 500000, 500000, 0, 'lunas', NULL),
(31, 'JU-07', 'TRS-00021', 'Ela', '2021-02-16 14:45:09', 'tunai', 7500, 10000, 2500, 'lunas', NULL),
(32, 'JU-07', 'TRS-00022', 'Ela', '2021-02-17 12:07:01', 'tunai', 9500, 10000, 500, 'lunas', NULL),
(33, 'JU-07', 'TRS-00023', 'Nur', '2021-02-22 11:43:29', 'tunai', 43500, 50000, 6500, 'lunas', NULL),
(34, 'JU-07', 'TRS-00024', 'Siti', '2021-02-22 11:45:19', 'tunai', 2500000, 3000000, 500000, 'lunas', NULL),
(35, 'JU-07', 'TRS-00025', 'Nada Q', '2021-02-22 11:54:16', 'tunai', 1000000, 1000000, 0, 'lunas', NULL),
(36, 'JU-07', 'TRS-00026', 'Melati', '2021-02-22 12:51:44', 'tunai', 500000, 500000, 0, 'lunas', NULL),
(37, 'JU-07', 'TRS-00027', 'Laela', '2021-02-22 12:53:05', 'tunai', 1000000, 1000000, 0, 'lunas', NULL),
(38, 'JU-07', 'TRS-00028', 'Nur', '2021-02-23 11:53:18', 'tunai', 1000000, 1000000, 0, 'lunas', NULL),
(39, 'JU-07', 'TRS-00029', 'Ela', '2021-02-23 11:54:37', 'tunai', 500000, 500000, 0, 'lunas', NULL),
(40, 'JU-07', 'TRS-00030', 'saya', '2021-02-23 12:03:17', 'tunai', 1000000, 1000000, 0, 'lunas', NULL),
(41, 'JU-07', 'TRS-00031', 'lololo', '2021-02-23 12:18:40', 'tunai', 500000, 500000, 0, 'lunas', NULL),
(42, 'JU-07', 'TRS-00032', 'hayo', '2021-02-23 12:20:23', 'tunai', 500000, 500000, 0, 'lunas', NULL),
(43, 'JU-07', 'TRS-00033', 'Nur', '2021-02-23 00:00:00', 'transfer', 12000, 15000, 3000, 'lunas', NULL),
(44, 'JU-07', 'TRS-00034', 'Nur', '2021-02-24 00:00:00', 'tunai', 500000, 500000, 0, 'lunas', NULL),
(45, 'JU-07', 'TRS-00035', 'Ela', '2021-02-23 00:00:00', 'tunai', 18000, 20000, 2000, 'lunas', NULL),
(46, 'JU-07', 'TRS-00036', 'Asan', '2021-02-24 00:00:00', 'transfer', 30000, 30000, 0, 'lunas', NULL),
(47, 'JU-01', 'TRS-00037', 'Nurlaela', '2021-02-23 00:00:00', 'tunai', 47500, 50000, 2500, 'lunas', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `pemasukan`
--

CREATE TABLE `pemasukan` (
  `id_pemasukan` int(11) NOT NULL,
  `tanggal` datetime NOT NULL,
  `nama_kas` varchar(50) NOT NULL,
  `jumlah` varchar(50) NOT NULL,
  `ket` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `pemasukan`
--

INSERT INTO `pemasukan` (`id_pemasukan`, `tanggal`, `nama_kas`, `jumlah`, `ket`) VALUES
(1, '2021-02-16 00:00:00', 'Kas Minggu I', '100000', 'Kas Karyawan');

-- --------------------------------------------------------

--
-- Table structure for table `pembayaran`
--

CREATE TABLE `pembayaran` (
  `id` int(11) NOT NULL,
  `no_faktur` varchar(50) DEFAULT NULL,
  `id_pasien` varchar(50) NOT NULL,
  `id_kk` int(11) NOT NULL,
  `status` varchar(50) DEFAULT NULL,
  `no_urut` int(11) DEFAULT NULL,
  `tgl` date NOT NULL,
  `total` varchar(50) NOT NULL,
  `uang` varchar(50) DEFAULT NULL,
  `uang_transfer` varchar(50) DEFAULT NULL,
  `uang_ongkir` varchar(50) DEFAULT NULL,
  `m_pembayaran` varchar(20) DEFAULT NULL,
  `id_rek` int(11) DEFAULT NULL,
  `ket` text DEFAULT NULL,
  `kembalian` varchar(50) NOT NULL,
  `id_kasir` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pembayaran`
--

INSERT INTO `pembayaran` (`id`, `no_faktur`, `id_pasien`, `id_kk`, `status`, `no_urut`, `tgl`, `total`, `uang`, `uang_transfer`, `uang_ongkir`, `m_pembayaran`, `id_rek`, `ket`, `kembalian`, `id_kasir`) VALUES
(1, '202003091131282', 'S.M.S.3', 1, 'Lunas', 1, '2020-03-09', '0', '0', '0', '', 'Tunai', 0, NULL, '0', 33),
(2, '202003091405171', 'S.M.S.3', 1, 'Lunas', 0, '2020-03-09', '0', '100000', '0', '', 'Tunai', 0, NULL, '100000', 33),
(3, '202003091354513', 'S.M.S.2', 1, NULL, 2, '2020-03-09', '0', '100000', '0', '', 'Tunai', 0, NULL, '100000', 33),
(4, '202004142329503', 'S.M.S.6', 1, 'Lunas', 0, '2020-04-15', '17324', '20000', '0', '', 'Tunai', 0, NULL, '2676', 33),
(5, '202005041341088', 'S.M.S.1', 1, 'Lunas', 0, '2020-05-04', '0', '0', '0', '', 'Tunai', 0, NULL, '0', 33),
(6, '202005071357156', 'S.M.S.5', 1, NULL, 1, '2020-05-07', '15000', '25000', '0', '', 'Tunai', 0, NULL, '10000', 33),
(7, '202005071404171', 'S.M.S.5', 1, 'Lunas', 1, '2020-05-07', '0', '0', '0', '', 'Tunai', 0, NULL, '0', 33),
(8, '202005261623254', 'S.M.S.3', 1, 'Lunas', 1, '2020-05-26', '9000', '9000', '0', '', 'Tunai', 0, NULL, '0', 33),
(9, '202005261623363', 'S.M.S', 1, 'Lunas', 2, '2020-05-26', '0', '0', '0', '', 'Tunai', 0, NULL, '0', 33),
(10, '202005261745566', 'S.M.S 4', 1, 'Lunas', 4, '2020-05-26', '9000', '9000', '0', '', 'Tunai', 0, NULL, '0', 33),
(11, '202005261623531', 'S.M.S.5', 1, 'Lunas', 3, '2020-05-26', '0', '0', '0', '', 'Tunai', 0, NULL, '0', 33),
(12, '202005280000006', 'S.M.S 4', 1, 'Lunas', 1, '2020-05-28', '12000', '12000', '0', '', 'Tunai', 0, NULL, '0', 33),
(13, '202005281629025', 'S.M.S.3', 1, 'Lunas', 1, '2020-05-28', '0', '0', '0', '', 'Tunai', 0, NULL, '0', 33),
(14, '202005281439593', 'S.M.S', 1, 'Lunas', 1, '2020-05-28', '65000', '65000', '0', '', 'Tunai', 0, NULL, '0', 33),
(15, '202005291458512', 'S.M.S.3', 1, 'Lunas', 1, '2020-05-29', '15000', '15000', '0', '', 'Tunai', 0, NULL, '0', 33),
(16, '202005301434279', 'S.M.S.3', 1, 'Lunas', 1, '2020-05-30', '0', '0', '0', '', 'Tunai', 0, NULL, '0', 33),
(17, '202006091544577', 'S.M.S.3', 1, NULL, 1, '2020-06-09', '27000', '30000', '0', '', 'Tunai', 0, NULL, '3000', 33),
(18, '202006231642159', 'S.M.S.5', 1, 'Lunas', 1, '2020-06-23', '40000', '40000', '0', '', 'Tunai', 0, NULL, '0', 33),
(19, '202005051207023', 'S.M.S.3', 1, 'Lunas', 0, '2020-05-05', '0', '0', '0', '', 'Tunai', 0, NULL, '0', 33),
(20, '202005051206143', 'S.M.S.1', 1, 'Lunas', 0, '2020-05-05', '0', '0', '0', '', 'Tunai', 0, NULL, '0', 33),
(21, '202006241501536', 'S.M.S.1', 1, 'Lunas', 0, '2020-06-24', '0', '0', '0', '', 'Tunai', 0, NULL, '0', 33),
(22, '202006100527362', 'S.M.S.2', 1, 'Lunas', 0, '2020-06-10', '0', '0', '0', '', 'Tunai', 0, NULL, '0', 33),
(23, '202006250928465', 'S.M.S.5', 1, 'Lunas', 0, '2020-06-25', '577', '577', '0', '', 'Tunai', 0, NULL, '0', 33),
(24, '202006251302069', 'S.M.S.5', 1, NULL, 0, '2020-06-25', '577', '1000', '0', '', 'Tunai', 0, NULL, '423', 33),
(25, '202103121029181', 'S.M.S.1', 1, 'Lunas', 0, '0000-00-00', '0', '0', '0', '', '', 0, NULL, '0', 2),
(26, '202103171324277', 'A999C', 1, 'Lunas', 0, '0000-00-00', '0', '0', '0', '', '', 0, NULL, '5000', 33),
(27, '202103221402456', 'S.M.S.5', 1, 'Lunas', 2, '2021-03-22', '45000', '45000', '0', '', 'Tunai', 0, NULL, '0', 33),
(28, '202103101118289', 'A999C', 1, 'Lunas', 0, '2021-03-22', '16000', '17000', '0', '', 'Tunai', 0, NULL, '0', 33);

-- --------------------------------------------------------

--
-- Table structure for table `pembayaran_apotek`
--

CREATE TABLE `pembayaran_apotek` (
  `id` int(11) NOT NULL,
  `no_faktur` varchar(50) DEFAULT NULL,
  `id_pasien` varchar(50) NOT NULL,
  `id_kk` int(11) NOT NULL,
  `status` varchar(50) DEFAULT NULL,
  `no_urut` int(11) DEFAULT NULL,
  `tgl` date NOT NULL,
  `total` varchar(50) NOT NULL,
  `uang` varchar(50) DEFAULT NULL,
  `uang_transfer` varchar(50) DEFAULT NULL,
  `uang_ongkir` varchar(50) DEFAULT NULL,
  `m_pembayaran` varchar(20) DEFAULT NULL,
  `id_rek` int(11) DEFAULT NULL,
  `ket` text DEFAULT NULL,
  `kembalian` varchar(50) NOT NULL,
  `id_kasir` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pembayaran_apotek`
--

INSERT INTO `pembayaran_apotek` (`id`, `no_faktur`, `id_pasien`, `id_kk`, `status`, `no_urut`, `tgl`, `total`, `uang`, `uang_transfer`, `uang_ongkir`, `m_pembayaran`, `id_rek`, `ket`, `kembalian`, `id_kasir`) VALUES
(1, '202003091117377', 'S.M.S.3', 0, 'Lunas', NULL, '0000-00-00', '0', '100000', NULL, NULL, NULL, NULL, NULL, '100000', 0),
(2, '202003091117377', 'S.M.S.3', 0, 'Lunas', NULL, '0000-00-00', '0', '100000', NULL, NULL, NULL, NULL, NULL, '100000', 0),
(3, '202003091354513', 'S.M.S.2', 0, 'Lunas', NULL, '0000-00-00', '0', '50000', NULL, NULL, NULL, NULL, NULL, '50000', 0),
(4, '202003091419509', 'S.M.S.5', 0, 'Lunas', NULL, '0000-00-00', '0', '0', NULL, NULL, NULL, NULL, NULL, '0', 0),
(5, '202003091354068', 'S.M.S.2', 0, 'Lunas', NULL, '0000-00-00', '', '0', NULL, NULL, NULL, NULL, NULL, '0', 0),
(6, '202003091117377', 'S.M.S.3', 0, 'Lunas', NULL, '0000-00-00', '0', '0', NULL, NULL, NULL, NULL, NULL, '0', 0),
(7, '202003091117377', 'S.M.S.3', 0, 'Lunas', NULL, '0000-00-00', '0', '0', NULL, NULL, NULL, NULL, NULL, '0', 0),
(8, '202003091117377', 'S.M.S.3', 0, 'Lunas', NULL, '0000-00-00', '0', '0', NULL, NULL, NULL, NULL, NULL, '0', 0),
(9, '202003091117377', 'S.M.S.3', 0, 'Lunas', NULL, '0000-00-00', '0', '0', NULL, NULL, NULL, NULL, NULL, '0', 0),
(10, '202003091117377', 'S.M.S.3', 0, 'Lunas', NULL, '0000-00-00', '0', '0', NULL, NULL, NULL, NULL, NULL, '0', 0),
(11, '202003091117377', 'S.M.S.3', 0, 'Lunas', NULL, '0000-00-00', '0', '0', NULL, NULL, NULL, NULL, NULL, '0', 0),
(12, '202003091117377', 'S.M.S.3', 0, 'Lunas', NULL, '0000-00-00', '0', '0', NULL, NULL, NULL, NULL, NULL, '0', 0),
(13, '202004140921151', 'S.M.S.2', 0, 'Lunas', NULL, '0000-00-00', '8085', '10000', NULL, NULL, NULL, NULL, NULL, '1915', 0),
(14, '202004140935337', 'S.M.S.3', 0, 'Lunas', NULL, '0000-00-00', '14620', '5000', NULL, NULL, NULL, NULL, NULL, '-9620', 0),
(15, '202004141344389', 'S.M.S.3', 0, 'Lunas', NULL, '0000-00-00', '9000', '0', NULL, NULL, NULL, NULL, NULL, '-9000', 0),
(16, '202004151404049', 'S.M.S.3', 0, 'Lunas', NULL, '0000-00-00', '0', '0', NULL, NULL, NULL, NULL, NULL, '0', 0),
(17, '202004151427055', 'S.M.S.2', 0, 'Lunas', NULL, '0000-00-00', '40425', '50000', NULL, NULL, NULL, NULL, NULL, '9575', 0),
(18, '202004181258347', 'S.M.S.5', 0, 'Lunas', NULL, '0000-00-00', '14553', '15000', NULL, NULL, NULL, NULL, NULL, '447', 0),
(19, '202004210959111', 'S.M.S.3', 0, 'Lunas', NULL, '0000-00-00', '0', '0', NULL, NULL, NULL, NULL, NULL, '0', 0),
(20, '202005071357156', 'S.M.S.5', 0, 'Lunas', NULL, '0000-00-00', '15000', '0', NULL, NULL, NULL, NULL, NULL, '-15000', 0),
(21, '202005071402057', 'S.M.S.5', 0, 'Lunas', NULL, '0000-00-00', '0', '0', NULL, NULL, NULL, NULL, NULL, '0', 0),
(22, '202005071404171', 'S.M.S.5', 0, 'Lunas', NULL, '0000-00-00', '0', '0', NULL, NULL, NULL, NULL, NULL, '0', 0),
(23, '202005161341409', 'S.M.S', 0, 'Lunas', NULL, '0000-00-00', '0', '0', NULL, NULL, NULL, NULL, NULL, '0', 0),
(24, '202005161354171', 'S.M.S.3', 0, 'Lunas', NULL, '0000-00-00', '9239', '9239', NULL, NULL, NULL, NULL, NULL, '0', 0),
(25, '202005161557078', 'S.M.S', 0, 'Lunas', NULL, '0000-00-00', '28000', '28000', NULL, NULL, NULL, NULL, NULL, '0', 0),
(26, '202005261623254', 'S.M.S.3', 0, 'Lunas', NULL, '0000-00-00', '9000', '0', NULL, NULL, NULL, NULL, NULL, '-9000', 0),
(27, '202005261623363', 'S.M.S', 0, 'Lunas', NULL, '0000-00-00', '0', '0', NULL, NULL, NULL, NULL, NULL, '0', 0),
(28, '202005261623531', 'S.M.S.5', 0, 'Lunas', NULL, '0000-00-00', '0', '0', NULL, NULL, NULL, NULL, NULL, '0', 0),
(29, '202005261745566', 'S.M.S 4', 0, 'Lunas', NULL, '0000-00-00', '9000', '0', NULL, NULL, NULL, NULL, NULL, '-9000', 0),
(30, '202005161620333', 'S.M.S', 0, 'Lunas', NULL, '0000-00-00', '8085', '9000', NULL, NULL, NULL, NULL, NULL, '915', 0),
(31, '202005270310304', 'S.M.S.3', 0, 'Lunas', NULL, '0000-00-00', '8085', '8085', NULL, NULL, NULL, NULL, NULL, '0', 0),
(32, '202005270313259', 'S.M.S 4', 0, 'Lunas', NULL, '0000-00-00', '0', '0', NULL, NULL, NULL, NULL, NULL, '0', 0),
(33, '202005280000006', 'S.M.S 4', 0, 'Lunas', NULL, '0000-00-00', '20085', '8085', NULL, NULL, NULL, NULL, NULL, '-12000', 0),
(34, '202005271458217', 'S.M.S', 0, 'Lunas', NULL, '0000-00-00', '0', '0', NULL, NULL, NULL, NULL, NULL, '0', 0),
(35, '202005291458512', 'S.M.S.3', 0, 'Lunas', NULL, '0000-00-00', '15000', '0', NULL, NULL, NULL, NULL, NULL, '-15000', 0),
(36, '202006010741122', 'S.M.S.3', 0, 'Lunas', NULL, '0000-00-00', '0', '0', NULL, NULL, NULL, NULL, NULL, '0', 0),
(37, '202006091544577', 'S.M.S.3', 0, 'Lunas', NULL, '0000-00-00', '31170', '20000', NULL, NULL, NULL, NULL, NULL, '-11170', 0),
(38, '202006091553129', 'S.M.S.3', 0, 'Lunas', NULL, '0000-00-00', '20085', '8085', NULL, NULL, NULL, NULL, NULL, '-12000', 0),
(39, '202006231642159', 'S.M.S.5', 0, 'Lunas', NULL, '0000-00-00', '20000', '0', NULL, NULL, NULL, NULL, NULL, '-20000', 0),
(40, '202006231642159', 'S.M.S.5', 0, 'Lunas', NULL, '0000-00-00', '20000', '0', NULL, NULL, NULL, NULL, NULL, '-20000', 0),
(41, '202102051446122', 'S.M.S.1', 0, 'Lunas', NULL, '0000-00-00', '18480', '20000', NULL, NULL, NULL, NULL, NULL, '1520', 0),
(42, '202102081103174', 'S.M.S.3', 0, 'Lunas', NULL, '0000-00-00', '', '100000', NULL, NULL, NULL, NULL, NULL, '100000', 0),
(43, '202102081103174', 'S.M.S.3', 0, 'Lunas', NULL, '0000-00-00', '', '100000', NULL, NULL, NULL, NULL, NULL, '100000', 0),
(44, '202004301221125', 'S.M.S.1', 0, 'Lunas', NULL, '0000-00-00', '21240', '50000', NULL, NULL, NULL, NULL, NULL, '28760', 0),
(45, '202102091134459', 'S.M.S.5', 0, 'Lunas', NULL, '0000-00-00', '9000', '100000', NULL, NULL, NULL, NULL, NULL, '91000', 0),
(46, '202102091134459', 'S.M.S.5', 0, 'Lunas', NULL, '0000-00-00', '9000', '100000', NULL, NULL, NULL, NULL, NULL, '91000', 0),
(47, '202102091134459', 'S.M.S.5', 0, 'Lunas', NULL, '0000-00-00', '9000', '100000', NULL, NULL, NULL, NULL, NULL, '91000', 0),
(48, '202102091317376', 'A888C', 0, 'Lunas', NULL, '0000-00-00', '', '900000', NULL, NULL, NULL, NULL, NULL, '900000', 0);

-- --------------------------------------------------------

--
-- Table structure for table `pembayaran_lab`
--

CREATE TABLE `pembayaran_lab` (
  `id` int(11) NOT NULL,
  `no_faktur` varchar(50) DEFAULT NULL,
  `id_pasien` varchar(50) NOT NULL,
  `id_kk` int(11) NOT NULL,
  `status` varchar(50) DEFAULT NULL,
  `no_urut` int(11) DEFAULT NULL,
  `tgl` date NOT NULL,
  `total` varchar(50) NOT NULL,
  `uang` varchar(50) DEFAULT NULL,
  `uang_transfer` varchar(50) DEFAULT NULL,
  `uang_ongkir` varchar(50) DEFAULT NULL,
  `m_pembayaran` varchar(20) DEFAULT NULL,
  `id_rek` int(11) DEFAULT NULL,
  `ket` text DEFAULT NULL,
  `kembalian` varchar(50) NOT NULL,
  `id_kasir` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pembayaran_lab`
--

INSERT INTO `pembayaran_lab` (`id`, `no_faktur`, `id_pasien`, `id_kk`, `status`, `no_urut`, `tgl`, `total`, `uang`, `uang_transfer`, `uang_ongkir`, `m_pembayaran`, `id_rek`, `ket`, `kembalian`, `id_kasir`) VALUES
(1, '202003091128113', 'S.M.S.3', 0, 'Lunas', NULL, '2020-03-09', '20000', '50000', NULL, NULL, NULL, NULL, NULL, '', NULL),
(2, '202003091131282', 'S.M.S.3', 0, 'Lunas', NULL, '2020-03-09', '0', '0', NULL, NULL, NULL, NULL, NULL, '0', NULL),
(3, '202003091112221', 'S.M.S.3', 0, 'Lunas', NULL, '2020-03-09', '89000', '100000', NULL, NULL, NULL, NULL, NULL, '', NULL),
(4, '202003091422598', 'S.M.S.5', 0, 'Lunas', NULL, '2020-03-09', '8820', '10000', NULL, NULL, NULL, NULL, NULL, '1180', NULL),
(5, '202004131420536', 'S.M.S.2', 0, 'Lunas', NULL, '2020-04-13', '20000', '20000', NULL, NULL, NULL, NULL, NULL, '', NULL),
(6, '202004140935337', 'S.M.S.3', 0, 'Lunas', NULL, '2020-04-14', '10000', '10000', NULL, NULL, NULL, NULL, NULL, '0', NULL),
(7, '202005131709205', 'S.M.S', 0, 'Lunas', NULL, '2020-05-16', '15000', '15000', NULL, NULL, NULL, NULL, NULL, '', NULL),
(8, '202005131708522', 'S.M.S.3', 0, 'Lunas', NULL, '2020-05-16', '15000', '15000', NULL, NULL, NULL, NULL, NULL, '0', NULL),
(9, '202005261745566', 'S.M.S 4', 0, 'Lunas', NULL, '2020-05-26', '9000', '9000', NULL, NULL, NULL, NULL, NULL, '0', NULL),
(10, '202005261623254', 'S.M.S.3', 0, 'Lunas', NULL, '2020-05-26', '9000', '9000', NULL, NULL, NULL, NULL, NULL, '0', NULL),
(11, '202005261623531', 'S.M.S.5', 0, 'Lunas', NULL, '2020-05-26', '0', '0', NULL, NULL, NULL, NULL, NULL, '0', NULL),
(12, '202005261623363', 'S.M.S', 0, 'Lunas', NULL, '2020-05-26', '0', '0', NULL, NULL, NULL, NULL, NULL, '0', NULL),
(13, '202005280000006', 'S.M.S 4', 0, 'Lunas', NULL, '2020-05-28', '12000', '12000', NULL, NULL, NULL, NULL, NULL, '0', NULL),
(15, '202006051556273', 'S.M.S.3', 0, 'Lunas', NULL, '2020-06-06', '0', '0', NULL, NULL, NULL, NULL, NULL, '', NULL),
(16, '202006010853075', '', 0, 'Lunas', NULL, '2020-06-06', '0', '0', NULL, NULL, NULL, NULL, NULL, '0', NULL),
(17, '202006060621541', '', 0, 'Lunas', NULL, '2020-06-06', '9000', '9000', NULL, NULL, NULL, NULL, NULL, '0', NULL),
(18, '202006091544577', 'S.M.S.3', 0, 'Lunas', NULL, '2020-06-09', '12000', '12000', NULL, NULL, NULL, NULL, NULL, '0', NULL),
(19, '202006091553129', 'S.M.S.3', 0, 'Lunas', NULL, '2020-06-09', '27000', '27000', NULL, NULL, NULL, NULL, NULL, '0', NULL),
(20, '202006191450321', 'S.M.S.5', 0, 'Lunas', NULL, '2020-06-19', '9000', '9000', NULL, NULL, NULL, NULL, NULL, '0', NULL),
(21, '202006231642159', 'S.M.S.5', 0, 'Lunas', NULL, '2020-06-23', '20000', '20000', NULL, NULL, NULL, NULL, NULL, '0', NULL),
(22, '202006231651563', 'S.M.S.5', 0, 'Lunas', NULL, '2020-06-23', '15000', '15000', NULL, NULL, NULL, NULL, NULL, '0', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `pembelian_k`
--

CREATE TABLE `pembelian_k` (
  `id_k` int(11) NOT NULL,
  `kd_brg` varchar(25) NOT NULL,
  `nama_brg` varchar(50) NOT NULL,
  `jenis_obat` enum('bebas','keras') DEFAULT NULL,
  `satuan_k` varchar(50) NOT NULL,
  `kategori_k` varchar(50) NOT NULL,
  `hrg` varchar(50) NOT NULL,
  `hrg_jual` int(11) NOT NULL,
  `batas_cabang` int(11) NOT NULL,
  `batas_minim` int(11) NOT NULL,
  `jumlah` varchar(50) NOT NULL,
  `diskon` varchar(50) NOT NULL,
  `sub_tot` varchar(50) NOT NULL,
  `tgl_beli` date NOT NULL,
  `tgl_produksi` date DEFAULT NULL,
  `tgl_expired` date DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `pembelian_t`
--

CREATE TABLE `pembelian_t` (
  `id_t` int(11) NOT NULL,
  `kd_brg` varchar(25) NOT NULL,
  `nama_brg` varchar(50) NOT NULL,
  `jenis_obat` enum('bebas','keras') DEFAULT NULL,
  `satuan_t` int(11) NOT NULL,
  `kategori_t` int(11) NOT NULL,
  `hrg` varchar(50) NOT NULL,
  `hrg_jual` int(11) NOT NULL,
  `batas_cabang` int(11) NOT NULL,
  `batas_minim` int(11) NOT NULL,
  `jumlah` varchar(50) NOT NULL,
  `diskon` varchar(50) NOT NULL,
  `sub_tot` varchar(50) NOT NULL,
  `tgl_beli` date NOT NULL,
  `tgl_produksi` date DEFAULT NULL,
  `tgl_expired` date DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `pengeluaran`
--

CREATE TABLE `pengeluaran` (
  `id_pengeluaran` int(11) NOT NULL,
  `tanggal` datetime NOT NULL,
  `nama_kas` varchar(50) NOT NULL,
  `jumlah` varchar(50) NOT NULL,
  `ket` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pengeluaran`
--

INSERT INTO `pengeluaran` (`id_pengeluaran`, `tanggal`, `nama_kas`, `jumlah`, `ket`) VALUES
(2, '2021-02-16 00:00:00', 'Bensin', '50000', 'Perjalanan Dinas');

-- --------------------------------------------------------

--
-- Table structure for table `pengiriman_stok`
--

CREATE TABLE `pengiriman_stok` (
  `id_ps` int(11) NOT NULL,
  `kd_brg` varchar(25) CHARACTER SET latin1 NOT NULL,
  `nama_brg` varchar(50) CHARACTER SET latin1 NOT NULL,
  `jenis_obat` enum('bebas','keras') DEFAULT NULL,
  `satuan_ps` int(11) NOT NULL,
  `kategori_ps` int(11) NOT NULL,
  `hrg` varchar(50) CHARACTER SET latin1 NOT NULL,
  `hrg_jual` int(11) NOT NULL,
  `batas_cabang` int(11) NOT NULL,
  `batas_minim` int(11) NOT NULL,
  `jumlah` varchar(50) CHARACTER SET latin1 NOT NULL,
  `tgl_kirim` date NOT NULL,
  `tgl_produksi` date DEFAULT NULL,
  `tgl_expired` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `perawatan_pasien`
--

CREATE TABLE `perawatan_pasien` (
  `id` int(11) NOT NULL,
  `id_dr` varchar(10) NOT NULL,
  `id_kasir` int(11) DEFAULT NULL,
  `no_faktur` varchar(50) DEFAULT NULL,
  `id_pasien` varchar(50) DEFAULT NULL,
  `id_ruang` int(11) DEFAULT NULL,
  `tanggal_pendaftaran` date DEFAULT NULL,
  `bb` int(11) DEFAULT NULL,
  `tb` int(11) DEFAULT NULL,
  `keluhan` text DEFAULT NULL,
  `jenis_pasien` text DEFAULT NULL,
  `asuransi` int(11) DEFAULT NULL,
  `status` text DEFAULT NULL,
  `tgl_out` date DEFAULT NULL,
  `suhu` text DEFAULT NULL,
  `tensi` text DEFAULT NULL,
  `nadi` text DEFAULT NULL,
  `respirasi` text DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `perawatan_pasien`
--

INSERT INTO `perawatan_pasien` (`id`, `id_dr`, `id_kasir`, `no_faktur`, `id_pasien`, `id_ruang`, `tanggal_pendaftaran`, `bb`, `tb`, `keluhan`, `jenis_pasien`, `asuransi`, `status`, `tgl_out`, `suhu`, `tensi`, `nadi`, `respirasi`) VALUES
(1, '11', 33, '202003091350008', 'S.M.S', 1, '2020-03-09', NULL, NULL, '', 'bpjs', NULL, 'a', '2020-06-24', 'NULL', 'NULL', NULL, NULL),
(2, '10', 33, '202003091351427', 'S.M.S', 1, '2020-03-09', NULL, NULL, '', 'bpjs', NULL, NULL, NULL, 'NULL', 'NULL', NULL, NULL),
(3, '10', 33, '202003091405171', 'S.M.S.3', 1, '2020-03-09', NULL, NULL, '', 'bpjs', NULL, 'alhamdulillah sudah sembuh', '2020-03-09', 'NULL', 'NULL', NULL, NULL),
(4, '10', 33, '202003091424391', 'S.M.S.2', 1, '2020-03-09', NULL, NULL, '', 'umum', NULL, NULL, NULL, 'NULL', 'NULL', NULL, NULL),
(5, '9', 33, '202004131038391', 'S.M.S.3', 1, '2020-04-13', NULL, NULL, '', 'umum', NULL, 'Sembuh', '2020-04-14', 'NULL', 'NULL', NULL, NULL),
(6, '9', 33, '202004142329503', 'S.M.S.6', 1, '2020-04-15', NULL, NULL, '', 'umum', NULL, 'Sembuh', '2020-04-15', 'NULL', 'NULL', NULL, NULL),
(7, '9', 33, '202004150648448', 'S.M.S.3', 1, '2020-04-15', NULL, NULL, '', 'umum', NULL, 'Sehat', '2020-05-04', 'NULL', 'NULL', NULL, NULL),
(8, '9', 33, '202004301221125', 'S.M.S.1', 1, '2020-04-30', NULL, NULL, '', 'umum', 1, 'ss', '2020-05-04', 'NULL', 'NULL', NULL, NULL),
(9, '9', 33, '202005041341088', 'S.M.S.1', 1, '2020-05-04', NULL, NULL, '', 'lain', NULL, 'Sehat', '2020-05-05', 'NULL', 'NULL', NULL, NULL),
(10, '9', 33, '202005051205062', 'S.M.S.2', 1, '2020-05-05', NULL, NULL, '', 'umum', 1, 'sembuh', '2020-06-10', 'NULL', 'NULL', NULL, NULL),
(11, '9', 33, '202005051206143', 'S.M.S.1', 1, '2020-05-05', NULL, NULL, '', 'lain', NULL, 'sembuh', '2020-06-24', 'NULL', 'NULL', NULL, NULL),
(12, '9', 33, '202005051206323', 'S.M.S.6', 1, '2020-05-05', NULL, NULL, '', 'umum', 1, 'a', '2020-06-24', 'NULL', 'NULL', NULL, NULL),
(13, '11', 33, '202005051207023', 'S.M.S.3', 1, '2020-05-05', NULL, NULL, '', 'lain', NULL, '', '2020-06-24', 'NULL', 'NULL', NULL, NULL),
(14, '9', 33, '202006100527362', 'S.M.S.2', 1, '2020-06-10', NULL, NULL, '', '', 1, 'a', '2020-06-24', 'NULL', 'NULL', NULL, NULL),
(15, '9', 33, '202006241010316', 'S.M.S.3', 1, '2020-06-24', NULL, NULL, '', 'lain', 1, 'sehat', '2020-06-24', 'NULL', 'NULL', NULL, NULL),
(16, '9', 33, '202006241021468', 'S.M.S.3', 1, '2020-06-24', NULL, NULL, '', 'inhealt', 1, 'sehat', '2020-06-24', 'NULL', 'NULL', NULL, NULL),
(17, '9', 33, '202006241028013', 'S.M.S.3', 1, '2020-06-24', NULL, NULL, '', 'corp1', 1, 'Sehat', '2020-06-24', 'NULL', 'NULL', NULL, NULL),
(18, '9', 33, '202006241127291', 'S.M.S.3', 1, '2020-06-24', NULL, NULL, '', 'umum', NULL, 'a', '2020-06-24', 'NULL', 'NULL', NULL, NULL),
(19, '9', 33, '202006241501536', 'S.M.S.1', 1, '2020-06-24', NULL, NULL, '', 'lain', NULL, 'sembuh', '2020-06-24', 'NULL', 'NULL', NULL, NULL),
(20, '9', 33, '202006250928465', 'S.M.S.5', 1, '2020-06-25', NULL, NULL, '', 'umum', NULL, 'sembuh', '2020-06-25', 'NULL', 'NULL', NULL, NULL),
(21, '9', 33, '202006251055049', 'S.M.S.5', 1, '2020-06-25', NULL, NULL, '', 'corp1', NULL, 'Sembuh', '2020-06-25', 'NULL', 'NULL', NULL, NULL),
(22, '9', 33, '202006251105202', 'S.M.S.2', 1, '2020-06-25', NULL, NULL, '', 'lain', NULL, 'sembuh', '2020-06-25', 'NULL', 'NULL', NULL, NULL),
(23, '9', 33, '202006251237083', 'S.M.S.2', 1, '2020-06-25', NULL, NULL, '', 'bpjs', NULL, 'a', '2020-06-25', 'NULL', 'NULL', NULL, NULL),
(24, '9', 33, '202006251237287', 'S.M.S.2', 1, '2020-06-25', NULL, NULL, '', 'lain', 1, 'Sembuh', '2020-06-25', 'NULL', 'NULL', NULL, NULL),
(25, '9', 33, '202006261259243', 'S.M.S.5', 1, '2020-06-26', NULL, NULL, '', 'corp1', 1, 'sembuh', '2020-06-26', 'NULL', 'NULL', NULL, NULL),
(26, '9', 33, '202006251302069', 'S.M.S.5', 1, '2020-06-25', NULL, NULL, '', 'umum', NULL, 'Sehat', '2020-06-25', 'NULL', 'NULL', NULL, NULL),
(27, '11', 33, '202012151447238', 'S.M.S.2', 1, '2020-12-15', NULL, NULL, '', 'bpjs', 1, NULL, NULL, 'NULL', 'NULL', NULL, NULL),
(28, '11', 34, '202102041318079', 'S.M.S.6', 1, '2021-02-04', 30, 170, 'Kejang', 'bpjs', 0, NULL, NULL, '40', '130/90', NULL, NULL),
(29, '11', 34, '202102051048544', 'S.M.S.6', 1, '2021-02-05', 60, 165, 'Kejang-kejang', 'bpjs', 0, NULL, NULL, '39', '120/70', NULL, NULL),
(30, '11', 34, '202102051105584', 'S.M.S.3', 1, '2021-02-05', 70, 165, 'Meriang', 'jkk', 0, NULL, NULL, '39', '130/90', NULL, NULL),
(31, '11', 34, '202102051421418', 'S.M.S.2', 1, '2021-02-05', 60, 165, 'Pusing dan Meriang', 'umum', 0, NULL, NULL, '39', '120/70', NULL, NULL),
(32, '11', 34, '202102081103174', 'S.M.S.3', 1, '2021-02-08', 50, 165, 'Pusing Kejang', 'umum', 0, NULL, NULL, '39', '120/70', NULL, NULL),
(33, '11', 34, '202102081318184', 'S.M.S.6', 1, '2021-02-08', 55, 170, 'hepatitis', 'bpjs', 0, NULL, NULL, '40', '110/90', NULL, NULL),
(34, '11', 34, '202102091134459', 'S.M.S.5', 1, '2021-02-09', 40, 155, 'Panas Batuk Pilek', 'bpjs', 0, NULL, NULL, '39', '120/70', NULL, NULL),
(35, '11', 34, '202102091317376', 'A888C', 1, '2021-02-09', 50, 165, 'Panas Mual', 'umum', 0, NULL, NULL, '39', '110/70', NULL, NULL),
(36, '11', 34, '202102091421417', 'S.M.S.3', 1, '2021-02-09', 70, 170, 'Kejang', 'bpjs', 0, NULL, NULL, '39', '130/90', NULL, NULL),
(37, '11', 34, '202102091422151', 'S.M.S.6', 1, '2021-02-09', 55, 160, 'Demam', 'umum', 0, NULL, NULL, '39', '130/90', NULL, NULL),
(38, '11', 34, '202102111049007', 'S.M.S.6', 1, '2021-02-11', 50, 165, 'Pusing Mual', 'umum', 0, NULL, NULL, '38', '120/70', NULL, NULL),
(39, '11', 34, '202102151136588', 'S.M.S.6', 1, '2021-02-15', 55, 165, 'Pusing', 'bpjs', 0, NULL, NULL, '39', '120/70', NULL, NULL),
(55, '16', 34, '202103161417405', 'A999C', 1, '2021-03-16', 70, 165, 'Pusing', 'umum', 0, 'Sehat', '2021-03-16', '40', '120/70', NULL, NULL),
(41, '11', 34, '202102231301153', 'S.M.S.2', 1, '2021-02-23', 55, 160, 'Pusing', 'bpjs', 0, NULL, NULL, '39', '120/70', NULL, NULL),
(42, '11', 34, '202102231317262', 'S.M.S.3', 1, '2021-02-23', 50, 165, 'Meriang', 'umum', 0, NULL, NULL, '39', '120/70', NULL, NULL),
(43, '11', 34, '202102231318249', 'S.M.S.6', 1, '2021-02-23', 45, 155, 'Kejang', 'bpjs', 0, NULL, NULL, '40', '120/70', NULL, NULL),
(44, '11', 34, '202102231318568', 'S.M.S.5', 1, '2021-02-23', 50, 165, 'Kepala Pusing dan Perut Kembung', 'umum', 0, NULL, NULL, '35', '90/70', NULL, NULL),
(45, '11', 34, '202102241035077', 'S.M.S.3', 1, '2021-02-24', 70, 170, 'Pusing ', 'umum', 0, NULL, NULL, '39', '120/70', NULL, NULL),
(46, '11', 34, '202102241124463', 'S.M.S.2', 1, '2021-02-24', 70, 160, 'Pusing Mual Lemes', 'bpjs', 0, NULL, NULL, '39', '90/70', NULL, NULL),
(47, '11', 34, '202102241138532', 'S.M.S.5', 1, '2021-02-24', 50, 165, 'Meriang', 'bpjs', 0, NULL, NULL, '38', '110/70', NULL, NULL),
(48, '11', 33, '202103081405485', 'S.M.S', 1, '2021-03-08', NULL, NULL, '', 'umum', 1, NULL, NULL, 'NULL', 'NULL', NULL, NULL),
(49, '11', 33, '202103091342414', 'A888C', 1, '2021-03-09', NULL, NULL, '', 'bpjs', NULL, NULL, NULL, 'NULL', 'NULL', NULL, NULL),
(50, '16', 33, '202103101105099', 'A999C', 1, '2021-03-10', NULL, NULL, '', 'bpjs', NULL, 'Sehat sehat', '2021-03-10', 'NULL', 'NULL', NULL, NULL),
(51, '16', 34, '202103101118289', 'A999C', 1, '2021-03-10', 55, 160, 'Kejang-kejang', 'bpjs', 0, 'Sudah sehat', '2021-03-22', '39', '130/90', NULL, NULL),
(52, '16', 33, '202103121029181', 'S.M.S.1', 1, '2021-03-12', NULL, NULL, '', 'umum', NULL, 'Sudah sehat', '2021-03-12', 'NULL', 'NULL', NULL, NULL),
(56, '16', 33, '202103171324277', 'A999C', 1, '2021-03-17', NULL, NULL, '', 'umum', NULL, 'Sudah Sehat', '2021-03-17', 'NULL', 'NULL', NULL, NULL),
(54, '16', 34, '202103151120437', 'S.M.S', 1, '2021-03-15', 70, 165, 'Pusing', 'bpjs', 0, 'Sudah Sehat', '2021-03-15', '35', '90/70', NULL, NULL),
(57, '16', 33, '202103221046413', 'S.M.S.1', 1, '2021-03-22', NULL, NULL, '', 'umum', NULL, NULL, NULL, 'NULL', 'NULL', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `poliklinik`
--

CREATE TABLE `poliklinik` (
  `id_poli` int(11) NOT NULL,
  `poli` text DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `poliklinik`
--

INSERT INTO `poliklinik` (`id_poli`, `poli`) VALUES
(1, 'Poliklinik THT'),
(2, 'Poliklinik Penyakit Dalam'),
(5, 'Poliklinik Anak'),
(6, 'Poliklink Gigi'),
(7, 'Poliklinik Umum'),
(8, 'Poliklinik Syaraf'),
(9, 'Poliklinik Gizi'),
(11, 'Poliklinik Ibu & Anak'),
(13, 'Poliklinik Kesehatan Kulit');

-- --------------------------------------------------------

--
-- Table structure for table `produk`
--

CREATE TABLE `produk` (
  `id_p` int(11) NOT NULL,
  `kode_barang` varchar(50) NOT NULL,
  `nama_p` varchar(50) NOT NULL,
  `jenis_obat` enum('bebas','keras') DEFAULT NULL,
  `jumlah` int(11) NOT NULL,
  `hrg` int(11) NOT NULL,
  `hrg_jual` int(11) NOT NULL,
  `satuan` varchar(50) NOT NULL,
  `kategori` varchar(50) NOT NULL,
  `tgl_produksi` date DEFAULT NULL,
  `tgl_expired` date DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `produk`
--

INSERT INTO `produk` (`id_p`, `kode_barang`, `nama_p`, `jenis_obat`, `jumlah`, `hrg`, `hrg_jual`, `satuan`, `kategori`, `tgl_produksi`, `tgl_expired`) VALUES
(5, '186097', 'ANTIMO DEWASA', 'bebas', 2, 3750, 4620, '2', '9', '2020-11-30', '2021-05-29'),
(4, '581543', 'ALKOHOL KECIL', 'keras', 44, 5555, 7875, '6', '15', '2021-01-21', '2023-01-21'),
(2, '661713', 'ALKOHOL 70 %', 'bebas', 2, 26000, 46200, '6', '16', '2021-01-21', '2023-01-21'),
(6, '643464', 'ANTANGIN JRG', 'bebas', 8, 2000, 2500, '6', '9', '2020-12-27', '2021-04-29'),
(7, '180024', 'BETADINE 5 LITER', 'bebas', 72, 500000, 866500, '6', '19', '2021-01-04', '2021-08-21'),
(21, '150194', 'Hawedion', 'bebas', 59, 40000, 45000, '7', '6', '2020-11-02', '2022-11-02'),
(20, '010494', 'GEQUIN', 'bebas', 85, 25000, 30000, '3', '9', '2020-11-01', '2022-11-01'),
(23, '636628', 'AB VASK  10 MG', 'bebas', 177, 88800, 168000, '1', '9', '2021-01-12', '2023-01-12'),
(24, '279603', 'ALBOTHYL ( POLICRESULEN) 10 ML', 'bebas', 46, 53000, 36750, '6', '15', '2021-01-01', '2023-01-01'),
(25, '954468', 'BYE BYE FEVER ANAK', 'bebas', 248, 6000, 10000, '8', '20', '2020-12-06', '2022-05-10'),
(26, '226227', 'BYE BYE FEVER BAYI', 'bebas', 473, 5000, 8000, '8', '20', '2020-10-04', '2022-01-14');

-- --------------------------------------------------------

--
-- Table structure for table `produk_master`
--

CREATE TABLE `produk_master` (
  `kd_produk` varchar(25) NOT NULL,
  `nama_produk` varchar(50) NOT NULL,
  `harga_beli` varchar(25) NOT NULL,
  `jual_umum` varchar(25) DEFAULT NULL,
  `gambar` varchar(100) DEFAULT NULL,
  `jenis_obat` enum('bebas','keras') DEFAULT NULL,
  `id_kategori` int(11) DEFAULT NULL,
  `id_satuan` int(11) DEFAULT NULL,
  `jual_bpjs` double DEFAULT NULL,
  `jual_lain` double DEFAULT NULL,
  `tgl_produksi` date DEFAULT NULL,
  `tgl_expired` date DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `produk_master`
--

INSERT INTO `produk_master` (`kd_produk`, `nama_produk`, `harga_beli`, `jual_umum`, `gambar`, `jenis_obat`, `id_kategori`, `id_satuan`, `jual_bpjs`, `jual_lain`, `tgl_produksi`, `tgl_expired`) VALUES
('636628', 'AB VASK  10 MG', '88800', '168000', 'obat ab vask.jpg', 'bebas', 9, 1, 16000, 16000, '2021-01-12', '2023-01-12'),
('940980', 'ABIXIM / SIMFIX CAPSUL (CEFIXIME 100MG)', '145500', '100000', 'abixim.png', 'bebas', 9, 3, 50000, 50000, '2021-01-13', '2023-01-13'),
('412201', 'ACARBOSA', '8250', '7661', 'acarbose.jpg', 'bebas', 9, 1, 7000, 7000, '2021-01-14', '2023-01-14'),
('134766', 'ACITRAL', '4700', '14000', 'acitral.jpeg', 'bebas', 9, 1, 4000, 4000, '2021-01-15', '2023-01-15'),
('066193', 'ACLAM 500 MG ( AMOX + AS CLAV)', '522100', '188000', 'aclam.jpg', 'bebas', 9, 6, 50000, 5000, '2021-01-16', '2023-01-16'),
('326111', 'ACTALIPID TAB 20 MG / FASTOR 20', '261400', '144400', 'fastor.jpg', 'bebas', 9, 1, 50000, 50000, '2021-01-17', '2023-01-17'),
('704072', 'ACTOS 30 (PIOGLITAZONE)', '150000', '140000', 'actos.jpg', 'bebas', 6, 1, 10000, 16000, '2021-01-18', '2023-01-18'),
('011109', 'ACYCLOVIR 400MG TAB', '43000', '40000', 'acyclovir.jpeg', 'bebas', 9, 1, 20000, 20000, '2021-01-19', '2023-01-19'),
('400055', 'ACYCLOVIR ZALF ( ACIFAR ZALF ) 5 GM', '23000', '9975', 'acifar-cr-5g-1.jpg', 'bebas', 4, 7, 5000, 5000, '2021-01-20', '2023-01-20'),
('279603', 'ALBOTHYL ( POLICRESULEN) 10 ML', '36500', '53000', 'abotil.jpg', 'bebas', 21, 6, 20000, 20000, '2021-01-01', '2023-01-01'),
('947114', 'ALBOTHYL ( POLICRESULEN) 5 ML', '50000', '34650', 'abotil.jpg', 'bebas', 21, 6, 20000, 20000, '2021-01-21', '2023-01-21'),
('565186', 'ALCO DROP ( PSEUDOEPHEDRIN HCL )', '133000', '78000', 'alco.jpg', 'bebas', 9, 6, 50000, 5000, '2021-01-21', '2021-01-21'),
('606965', 'ALERFED SYRUP / LAPIFED SYR', '62000', '34650', 'lapifed.jpg', 'bebas', 9, 6, 20000, 20000, '2021-01-21', '2023-01-21'),
('395203', 'ALERFED TAB / LAPIFED TABLET', '55000', '31500', 'lapifedd.jpg', 'bebas', 9, 1, 5000, 5000, '2021-01-22', '2023-01-22'),
('860077', 'ALGANAX-0.5', '340000', '300.35', 'alganax.jpg', 'bebas', 9, 1, 100000, 100000, '2021-01-21', '2023-01-21'),
('140748', 'ALGANAX-1', '300000', '100000', 'alganax.jpg', 'bebas', 9, 1, 50000, 50000, '2021-01-21', '2023-01-21'),
('155671', 'ALINAMIN F INJ / FURAMIN INJ', '70000', '47250', 'furamin.jpg', 'bebas', 15, 6, 50000, 50000, '2021-01-21', '2023-01-21'),
('766663', 'ALINAMIN F TAB', '16000', '2310', 'alinamin-f.jpg', 'bebas', 9, 1, 10000, 10000, '2021-01-21', '2021-01-21'),
('661713', 'ALKOHOL 70 %', '26000', '46200', 'alqohol.jpg', 'bebas', 16, 6, 20000, 20000, '2021-01-21', '2023-01-21'),
('581543', 'ALKOHOL KECIL', '5555', '7875', 'alqohol.jpg', 'keras', 15, 6, 10000, 10000, '2021-01-21', '2023-01-21'),
('014924', 'ALLETROL', '33000', '15000', 'alle.jpg', 'bebas', 15, 6, 0, 0, '2021-01-21', '2023-01-21'),
('987732', 'ALOFAR ( ALLOPURINOL ) 100 MG', '13000', '2000', 'alfor.jpg', 'bebas', 6, 4, 400, 900, '2021-01-21', '2023-01-21'),
('070771', 'ALOFAR ( ALLOPURINOL ) 300 MG', '22000', '2000', 'alforr.jpg', 'bebas', 9, 4, 0, 0, '2021-01-21', '2023-02-21'),
('231324', 'ALPARA', '19500', '1155', 'alpara.jpg', 'bebas', 9, 4, 0, 0, '2021-01-21', '2023-01-21'),
('653473', 'AMINOPHILIN GENERIK TAB', '28000', '20000', 'AMINOPHILIN GENERIK TAB.jpg', 'bebas', 9, 4, 0, 0, '2021-01-21', '2023-01-21'),
('152161', 'AMINOPHYLLINE INJ G', '20000', '22500', '1843e02a-99de-46c9-bbd5-79166505d7b2.jpg', 'bebas', 9, 1, 21000, 21000, '2020-11-24', '2021-05-01'),
('306000', 'AMOXAN 100MG DROP (AMOCIXILLIN)', '24200', '34650', '6959.jpg', 'bebas', 9, 6, 26000, 26000, '2021-01-04', '2021-03-26'),
('933838', 'AMVAR', '39000', '42000', '8674.jpg', 'bebas', 9, 4, 40000, 40000, '2020-11-10', '2021-06-04'),
('040070', 'ANDALAN 1 MG / 3 BULAN INJEKSI', '100000', '130000', 'c99ced44-c59b-4444-ab3b-66f625837a8d.jpg', 'bebas', 12, 6, 115000, 115000, '2020-12-29', '2021-08-31'),
('853699', 'ANDALAN 3 MG / 3 BULAN INJEKSI', '115000', '130000', 'andalan 3 mg.jpg', 'bebas', 12, 6, 120000, 120000, '2020-12-27', '2021-04-30'),
('086152', 'ANFLAT TAB', '55000', '62000', 'anflat.jpg', 'bebas', 9, 1, 59000, 59000, '2020-11-30', '2021-12-02'),
('032837', 'ANOXI TAB SPESIALIS', '27000', '31000', 'anoxi.jpg', 'bebas', 9, 1, 29000, 29000, '2020-10-13', '2021-09-30'),
('643464', 'ANTANGIN JRG', '2000', '2500', 'antagin jrg.jpg', 'bebas', 9, 6, 2300, 2300, '2020-12-27', '2021-04-29'),
('186097', 'ANTIMO DEWASA', '3750', '4620', 'antimo.jpg', 'bebas', 9, 2, 4000, 4000, '2020-11-30', '2021-05-29'),
('629975', 'ANTRAIN INJEKSI', '25000', '30000.75', 'antrain.jpg', 'bebas', 12, 6, 27000, 27000, '2020-12-01', '2021-11-06'),
('372071', 'APECUR SYRUP', '42000', '50300', 'apecur.jpg', 'bebas', 9, 6, 45000, 47000, '2020-12-28', '2021-05-29'),
('432404', 'APIALYS DROP', '49000', '52500', 'apialys.jpg', 'bebas', 9, 6, 50000, 51000, '2021-01-01', '2021-12-30'),
('743104', 'APIALYS SYRUP', '38000', '42000', 'apialys.jpg', 'bebas', 9, 6, 40000, 41000, '2021-01-04', '2021-07-30'),
('656220', 'APROFIT ', '240000', '278000.5', 'aprofit.jpg', 'bebas', 9, 4, 250000, 260000, '2021-01-01', '2021-12-31'),
('295289', 'AQUABIDEST', '4000', '6930', 'aquabidest.jpg', 'bebas', 12, 6, 5000, 5500, '2021-01-12', '2021-09-30'),
('875641', 'ARCAPEC SYR ( + AIR )', '23500', '26250', 'arcapec syr.jpg', 'bebas', 9, 6, 24000, 25000, '2021-01-10', '2021-09-13'),
('618470', 'ARGESID 500 ( ASAM MEFENAMAT )', '1900', '5400', 'ARGESID-500-MG-TABLET.jpg', 'bebas', 9, 1, 3000, 4500, '2020-09-08', '2021-06-23'),
('383637', 'ARIMED ( MELOXICAM 15 )', '6000', '10000', 'arimed meloxicam.jpg', 'bebas', 9, 4, 7000, 8000, '2020-11-02', '2021-07-30'),
('646241', 'ARTEM INJEKSI', '79500', '122000', 'artem injeksi.jpg', 'bebas', 12, 6, 99000, 112000, '2020-11-30', '2021-07-03'),
('941926', 'ASAM TRANEKSAMAT INJEKSI', '49000', '60000', 'asam traneksamat.jpg', 'bebas', 12, 6, 55000, 57000, '2020-12-29', '2021-07-09'),
('405945', 'ASAM TRANEXAMAT INJEKSI', '6000', '1087.5', 'asam traneksamat.jpg', 'bebas', 9, 4, 8000, 9900, '2021-01-12', '2021-11-27'),
('530976', 'ASERING', '25000', '34650', 'asering.jpg', 'bebas', 12, 6, 27000, 28000, '2020-12-14', '2021-12-31'),
('768677', 'ASPILET', '15000', '3500', 'aspilet.jpg', 'bebas', 9, 2, 2000, 2500, '2020-12-28', '2021-05-28'),
('100007', 'ASTIN FORCE', '10000', '15500', 'asthin.jpg', 'bebas', 9, 4, 12000, 13000, '2020-10-06', '2021-06-25'),
('199280', 'ATROCOX ( MELOXICAM 7.5 MG)', '5000', '8400', 'atrocox.jpg', 'bebas', 9, 4, 6500, 7500, '2020-12-30', '2021-10-01'),
('316987', 'ATROPINE INJ', '18250', '23100', 'atropine_injeksi_harga_box.jpg', 'bebas', 12, 6, 19600, 21300, '2021-01-11', '2022-01-31'),
('506348', 'AVITER', '30000', '35000', 'aviter.jpg', 'bebas', 9, 4, 32000, 33000, '2021-01-01', '2021-07-31'),
('318635', 'AXTAN TAB ( SPESIALIS )', '7000', '11550', 'axtan.jpg', 'bebas', 9, 3, 8550, 10000, '2020-09-27', '2021-07-01'),
('592225', 'BEDAK SALICYL MENTHOL 100 MG', '8000', '14700', 'bedak salicyl.jpg', 'bebas', 18, 5, 10000, 12000, '2020-11-29', '2021-12-31'),
('460419', 'BENANG ETILON 6.0 (UTK WAJAH) T-LENE', '10000', '120750', 'ETILON.jpg', 'bebas', 19, 8, 12000, 12000, '2021-01-11', '2022-01-27'),
('203003', 'BENANG HEATING SILK', '14000', '17325', 'heating.jpg', 'bebas', 19, 8, 15000, 16000, '2020-12-27', '2022-01-19'),
('066559', 'BENANG HEATING VICRYL', '99000', '115500', 'vicryl.jpg', 'bebas', 19, 8, 100000, 110000, '2020-12-27', '2021-10-28'),
('678528', 'BETADIN OBAT KUMUR', '15000', '22000', 'betadine.jpg', 'bebas', 19, 8, 19000, 20000, '2020-10-25', '2021-12-31'),
('180024', 'BETADINE 5 LITER', '500000', '866250', 'betadinejpg.jpg', 'bebas', 19, 6, 600000, 750000, '2020-08-30', '2021-10-31'),
('702393', 'BETARHIN DROP', '34100', '53550', 'betarhin.jpg', 'bebas', 19, 6, 45000, 50500, '2021-01-04', '2021-08-27'),
('312531', 'BETARHIN SYR', '35550', '49350', 'betarhin SYR.jpg', 'bebas', 9, 6, 40650, 43900, '2020-10-11', '2021-05-28'),
('051941', 'BETASON-N KRIM', '12654', '18721.25', 'betason.jpg', 'bebas', 19, 7, 15550, 16500, '2020-10-04', '2021-07-30'),
('194550', 'BIDICEF ( CEFADROXIL ) 125MG SYRUP', '34550', '40425', 'bidicef.jpg', 'bebas', 9, 6, 36600, 38500, '2021-01-03', '2021-07-30'),
('348267', 'BIOGESIC', '900', '2000', 'biogesic.jpg', 'bebas', 9, 1, 1500, 1600, '2020-10-05', '2021-10-14'),
('525300', 'BIOPLACENTON', '21000', '29000', 'bioplacenton.jpg', 'bebas', 19, 7, 24000, 26000, '2021-01-04', '2021-05-07'),
('806214', 'BLOOD SET', '23500', '26250', 'blood set.jpg', 'bebas', 19, 8, 25500, 26000, '2021-01-03', '2021-09-23'),
('722748', 'BODREX', '4550', '6825', 'bodrex.jpg', 'bebas', 9, 1, 5600, 6000, '2020-10-04', '2021-08-25'),
('984376', 'BONVIT', '4500', '6930', 'bonvitjpg.jpg', 'bebas', 9, 4, 5000, 5500, '2020-11-01', '2021-04-30'),
('673615', 'BRALIFEX ( TOBRAMYCIN )', '36500', '46200', 'bralifex.jpg', 'bebas', 20, 6, 45500, 45500, '2020-11-15', '2021-07-24'),
('535096', 'BUFACORT N', '4500', '7875', 'bufacort n.jpg', 'bebas', 20, 7, 5500, 6000, '2020-10-04', '2021-12-27'),
('483368', 'BURNAZIN', '65500', '72000', 'burnazin.jpg', 'bebas', 20, 7, 68900, 70500, '2020-11-01', '2021-07-30'),
('954468', 'BYE BYE FEVER ANAK', '6000', '10000', 'byebye anak.jpg', 'bebas', 20, 8, 7000, 8000, '2020-12-06', '2022-05-10'),
('226227', 'BYE BYE FEVER BAYI', '5000', '8000', 'byebye bayi.jpg', 'bebas', 20, 8, 6000, 6500, '2020-10-04', '2022-01-14'),
('332337', 'CAL -95', '5600', '7350', 'Cal.png', 'bebas', 9, 3, 6000, 6500, '2020-10-25', '2021-03-26'),
('695160', 'CALCI GLUCONAS', '30500', '47250', 'callcii.jpg', 'bebas', 20, 6, 42500, 45500, '2020-10-25', '2021-10-01'),
('102295', 'CALMET 2 MG', '6000', '9660', 'calm.jpg', 'bebas', 9, 1, 6500, 7000, '2020-12-27', '2021-07-31'),
('151886', 'CAMAAG SYRUP 100 ML / ANTASIDA', '35500', '40425', 'camaag.jpg', 'bebas', 9, 6, 36600, 37000, '2020-12-06', '2021-06-06'),
('791688', 'CALMAG TABLET', '95900', '115500', 'calmag.jpg', 'bebas', 9, 2, 98900, 100000, '2020-09-13', '2021-10-21'),
('076874', 'CAMIDRYL ( DIPHENYDRAMINE ) INJEKSI', '20000', '17325', 'CAMIDRYL ( DIPHENYDRAMINE ) INJEKSI.jpg', 'bebas', 12, 6, 0, 0, '2021-01-23', '2021-01-23'),
('771607', 'CAMIGESIK INJ', '30000', '23100', 'CAMIGESIK INJ.jpg', 'bebas', 9, 1, 0, 0, '2021-01-23', '2021-01-23'),
('919343', 'CAMIKOLIN SYR', '30000', '15000', 'CAMIKOLIN SYR.jpg', 'bebas', 9, 6, 10000, 10000, '2021-01-23', '2023-01-23'),
('006897', 'CAMISTAN ( ASAM MEFENAMAT ) 500 MG', '28000', '17320', 'CAMIGESIK INJ.jpg', 'bebas', 9, 4, 10000, 10000, '2021-01-23', '2023-01-21'),
('847260', 'CANUL NASAL ANAK (CANUL O2)', '10000', '9000', 'CANUL NASAL ANAK (CANUL O2).jpg', 'bebas', 19, 8, 0, 0, '2021-01-21', '2023-01-21'),
('806153', 'CANUL NASAL DEWASA (CANUL O2)', '10000', '7500', 'CANUL NASAL DEWASA (CANUL O2).jpg', 'bebas', 19, 8, 0, 0, '2021-01-21', '2023-01-21'),
('497345', 'CASETAMOL SYR (PARASETAMOL)', '20000', '16800', 'CASETAMOL SYR (PARASETAMOL).jpg', 'bebas', 9, 6, 0, 0, '0201-01-21', '2023-01-21'),
('571717', 'CATGUT CROMIC', '180000', '20000', 'CATGUT CROMIC.jpg', 'bebas', 19, 8, 0, 0, '2021-01-21', '2023-01-23'),
('725068', 'CATGUT PLAIN', '180000', '17325', 'CATGUT CROMIC.jpg', 'bebas', 19, 8, 0, 0, '2021-01-21', '2023-01-21'),
('549683', 'CDR', '88000', '34650', 'cdr.jpg', 'bebas', 9, 2, 0, 0, '2021-01-21', '2023-01-21'),
('354645', 'CEBEX TAB SPESIALIS', '168000', '3465', 'CEBEX TAB SPESIALIS.jpg', 'bebas', 9, 1, 0, 0, '2021-01-21', '2023-01-21'),
('579896', 'CEFILA 100 MG TAB', '35000', '24150', 'CEFILA 100 MG TAB.jpg', 'bebas', 9, 1, 0, 0, '2021-01-21', '2023-01-21'),
('929047', 'CEFILA 200 MG TAB', '355000', '36750', 'CEFILA 200 MG TAB.jpg', 'bebas', 9, 3, 0, 0, '2021-01-21', '2023-01-21'),
('845948', 'CEFOR ( CEFOTAXIME ) INJEKSI', '50000', '173250', 'CEFOR ( CEFOTAXIME ) INJEKSI.jpeg', 'bebas', 23, 6, 0, 0, '2021-01-21', '2023-02-21'),
('459992', 'CEFTRIAXONE GENERIK 1G', '25000', '25200', 'CEFTRIAXONE GENERIK 1G.jpg', 'bebas', 12, 8, 0, 0, '2021-01-21', '2023-01-21'),
('625184', 'CENDO FENICOL TM', '50000', '45000', 'CENDO FENICOL TM.jpg', 'bebas', 21, 6, 0, 0, '2021-01-21', '2023-02-23'),
('177948', 'CENDO LITERS', '32000', '46068.75', 'CENDO LITERS.jpg', 'bebas', 21, 6, 0, 0, '2021-01-21', '2023-01-21'),
('038697', 'CENDO XITROL', '50000', '46200', 'CENDO XITROL.jpg', 'bebas', 20, 7, 10000, 10000, '2021-01-21', '2023-01-21'),
('282136', 'CEPHAPLOX - CEFTRIAXONE / CEFTRIMAX INJ', '30000', '291060', 'CEPHAPLOX -.jpg', 'bebas', 23, 6, 10000, 10000, '2021-01-21', '2023-01-21'),
('801331', 'CEPTIK TAB 100MG / 30 TAB ( CEFIXIME)', '66000', '26250', 'CEPTIK TAB 100MG.jpg', 'bebas', 9, 1, 20000, 20000, '2021-01-21', '2023-01-21'),
('690522', 'CEPTIK TAB 200 MG / 10 TAB', '280000', '36750', 'CEPTIK TAB 200 MG.jpg', 'bebas', 9, 1, 20000, 2000, '2021-01-21', '2023-01-21'),
('971680', 'CESTER TAB ( SPESIALIS )', '62000', '46200', 'CESTER TAB ( SPESIALIS ).jpg', 'bebas', 9, 4, 20000, 2000, '2021-01-21', '2023-02-21'),
('789826', 'CHLOR ETHIL SEMPROT', '200000', '135000', 'CHLOR ETHIL SEMPROT.jpg', 'bebas', 26, 8, 50000, 5000, '2021-01-21', '2021-01-21'),
('702088', 'CHLORPROMAZINE ( CPZ )', '50000', '17320', 'CHLORPROMAZINE ( CPZ ).jpg', 'bebas', 9, 2, 10000, 10000, '2021-01-21', '2023-01-21'),
('185517', 'CIFLON', '20000', '12600', 'CIFLON.jpg', 'bebas', 9, 4, 7000, 7000, '2021-01-21', '2023-01-21'),
('988648', 'CITICOLINE INJ 250MG GENERIK INJEKSI', '82000', '34650', 'CITICOLINE INJ 250MG GENERIK INJEKSI.jpg', 'bebas', 23, 8, 20000, 2000, '2021-01-21', '2023-01-21'),
('451813', 'CLIAD / BRAXIDIN TAB', '20000', '2310', 'BRAXIDIN TAB.jpg', 'bebas', 9, 1, 2000, 2000, '2021-01-21', '2023-01-21'),
('421204', 'CLOGIN (CLOPIDOGREL) / SIMCLOVIX ', '20000', '19950', 'SIMCLOVIX.jpg', 'bebas', 9, 2, 10000, 10000, '2021-01-12', '2023-01-12'),
('881684', 'COARTEM 20/120', '200000', '15000', 'SIMCLOVIX.jpg', 'bebas', 9, 2, 20000, 20000, '2021-01-21', '2023-01-21'),
('933350', 'CODEIN 10 MG TAB', '20000', '5775', 'CODEIN 10 MG TAB.jpg', 'bebas', 9, 1, 10000, 1000, '2021-01-21', '2023-01-21'),
('236847', 'COMTUSI SYR ANAK (OXOMEMAZINE.GUAIFENISIN)', '50000', '49665', 'camtusi.jpg', 'bebas', 9, 6, 20000, 2000, '2021-01-24', '2021-01-24'),
('552430', 'COMTUSI SYRUP', '53000', '49350', 'camtusi.jpg', 'bebas', 9, 6, 21000, 21000, '2024-01-24', '2026-01-24'),
('497773', 'COMTUSI TAB', '20000', '2730', 'camtusi tab.jpg', 'bebas', 9, 1, 1000, 1000, '2021-01-21', '2023-01-21'),
('149537', 'CONFORTIN CREAM ANAK', '35000', '30450', 'CONFORTIN CREAM ANAK.jpg', 'bebas', 20, 7, 15000, 15000, '0021-03-21', '2023-03-21'),
('613678', 'COPARCETIN TAB ( PCT. GG. EFEDRIN. CTM)', '25000', '3077', 'COPARCETIN TAB.jpg', 'bebas', 9, 1, 1000, 1000, '2023-01-21', '2027-01-21'),
('189515', 'CORTAMINE SYR / COLERGIS SYR', '70000', '63472.5', 'CORTAMINE SYR.jpg', 'bebas', 9, 6, 50000, 5000, '2021-01-21', '2021-01-21'),
('252533', 'COUNTERPAIN 15 MG', '30000', '25725', 'COUNTERPAIN 15 MG.jpg', 'bebas', 20, 7, 15000, 15000, '2021-01-21', '2023-01-21'),
('480958', 'COUNTERPAIN 30 MG', '60000', '38325', 'COUNTERPAIN 30 MG.jpg', 'bebas', 20, 7, 20000, 20000, '2021-01-21', '2023-01-21'),
('551056', 'CRIPSA', '30000', '20202', 'CRIPSA.jpg', 'bebas', 9, 1, 12000, 12000, '2021-01-21', '2023-01-21'),
('926209', 'CTM ( KALENG )', '10000', '5777', 'CTM ( KALENG ).jpg', 'bebas', 9, 2, 2000, 2000, '2021-01-21', '2023-01-21'),
('864716', 'CUPANOL SYR ( PARASETAMOL )/SANMOL 120 MG', '30000', '29729.7', 'CUPANOL SYR ( PARASETAMOL )SANMOL 120 MG.jpg', 'bebas', 9, 6, 20000, 20000, '2023-01-21', '2025-01-21'),
('271363', 'CURBEXON SYRUP 100 ML', '50000', '46200', 'CURBEXON SYRUP 100 ML.jpg', 'bebas', 9, 6, 20000, 20000, '2021-01-21', '2023-01-20'),
('517731', 'CURCUMA TABLET', '23000', '1732', 'CURCUMA TABLET.jpg', 'bebas', 9, 1, 12000, 12000, '2021-01-21', '2025-01-21'),
('856263', 'CYCLOFEM INJ', '34000', '17325', 'CYCLOFEM INJ.jpg', 'bebas', 23, 6, 15000, 15000, '2021-01-21', '2023-01-21'),
('553071', 'CYCLOGESTON INJ', '340000', '17325', 'CYCLOGESTON INJ.jpg', 'bebas', 23, 6, 15000, 15000, '2021-01-21', '2023-01-21'),
('364502', 'CYCLO-PROGYNOVA', '30000', '173250', 'CYCLO-PROGYNOVA.jpg', 'bebas', 9, 2, 15000, 10000, '2021-01-21', '2023-01-21'),
('482453', 'CYGEST PESSARY 200 MG - PROGESTERONE', '35000', '18480', 'CYGEST PESSARY 200 MG - PROGESTERONE.jpg', 'bebas', 23, 6, 17000, 17000, '2021-01-21', '2023-01-21'),
('573426', 'CYGEST PESSARY 400 MG - PROGESTERONE', '35000', '34650', 'CYGEST PESSARY 400 MG - PROGESTERONE.jpg', 'bebas', 23, 6, 21000, 21000, '2021-01-21', '2023-01-21'),
('036347', 'CYTOSTOL-MISOPROSTOL', '23000', '15015', 'CYTOSTOL-MISOPROSTOL.jpg', 'bebas', 9, 1, 2000, 2000, '2021-01-21', '2022-01-21'),
('104126', 'D 10', '30000', '23100', 'd10.jpg', 'bebas', 23, 6, 12000, 12000, '2021-01-21', '2023-01-21'),
('913971', 'D 40', '50000', '14999', 'd40.jpg', 'bebas', 23, 6, 12000, 12000, '2021-01-21', '2023-01-21'),
('171448', 'D 5', '30', '17325', 'd5.jpg', 'bebas', 23, 6, 12000, 12000, '2021-01-21', '2023-01-21'),
('533295', 'D 5 1/2', '25000', '22821.75', 'd5.jpg', 'bebas', 23, 6, 15000, 15000, '2021-01-21', '2021-01-21'),
('333985', 'D 5 1/4', '24000', '23100', 'd5.jpg', 'bebas', 23, 6, 13000, 13000, '2021-01-21', '2023-01-21'),
('781037', 'D:I ( DURADRIL.INTHESA) INJ ML', '25000', '7875', 'di.jpg', 'bebas', 23, 6, 12000, 12000, '2021-01-12', '2023-01-12'),
('244080', 'DANOCLAV FILM COATED 500 MG - AMOXICILLIN', '20000', '12705', 'DANOCLAV FILM COATED 500 MG AMOXICILLIN.jpg', 'bebas', 9, 1, 10000, 1000, '2021-01-12', '2023-01-12'),
('762665', 'DEHISTA  TAB', '25000', '5777', 'DEHISTA.jpg', 'bebas', 9, 1, 12000, 12000, '2021-01-21', '2023-01-21'),
('397828', 'DEHISTA ', '20000', '577', 'DEHISTA.jpg', 'bebas', 9, 1, 119, 120, '2021-01-21', '2023-01-21'),
('552399', 'DERMAFIX', '50000', '47250', 'DERMAFIX.jpg', 'bebas', 19, 8, 12000, 12000, '2021-01-21', '2021-01-21'),
('885071', 'DERMAKEL KIDS', '135000', '113250', 'DERMAKEL KIDS.jpg', 'bebas', 20, 9, 50000, 50000, '2021-01-21', '2023-01-21'),
('943207', 'DERMAKEL ZALF', '150000', '127900', 'DERMAKEL ZALF.jpg', 'bebas', 20, 9, 50000, 50000, '2021-01-21', '2023-01-21'),
('139405', 'DERMAKEL ZALF BESAR', '250000', '202500', 'DERMAKEL ZALF.jpg', 'bebas', 20, 9, 50000, 50000, '2021-01-21', '2023-01-21'),
('196808', 'DEXAMETHASON TAB ( KALENG )', '130000', '5777', 'DEXAMETHASON TAB ( KALENG ).jpg', 'bebas', 9, 4, 1000, 1000, '2021-01-31', '2023-01-31'),
('688172', 'DEXTAFEN / ALEGI', '500000', '2310', 'DEXTAFENALEGI.jpg', 'bebas', 9, 1, 2310, 2012, '2121-01-21', '2021-12-12'),
('793671', 'DEXTRAL', '66000', '1050', 'dextral.jpg', 'bebas', 9, 1, 1000, 10000, '2023-01-21', '2024-01-21'),
('902466', 'DEXTRAL F TAB', '20000', '1155', 'dextral.jpg', 'bebas', 9, 4, 1000, 1000, '2021-01-21', '2023-01-21'),
('183014', 'DHAVIT SYRUP', '66000', '34650', 'DHAVIT SYRUP.jpg', 'bebas', 9, 6, 2000, 20000, '2023-01-21', '2024-01-21'),
('747132', 'DIABIT', '9000', '3155', 'DIABIT.jpg', 'bebas', 9, 1, 1000, 1000, '2021-01-23', '2023-01-23'),
('532807', 'DIANE', '135000', '111100', 'DIANE.jpg', 'bebas', 9, 2, 20000, 2000, '2021-01-23', '2023-02-23'),
('530762', 'DIASTON - LOPERAMIDE HCI', '34000', '577', 'DIASTON - LOPERAMIDE HCI.jpg', 'bebas', 9, 1, 500, 500, '2021-01-21', '2023-01-21'),
('479767', 'DIAZEPAM 10 MG / 2ML INJEKSI', '30000', '27750', 'DIAZEPAM 10 MG in.jpg', 'bebas', 23, 6, 10000, 10000, '2024-01-21', '2026-01-21'),
('655701', 'DIAZEPAM TAB', '50000', '4620', 'DIAZEPAM TAB.jpg', 'bebas', 9, 1, 1000, 1000, '2021-01-12', '2022-02-21'),
('879365', 'DIGENTA CREAM', '91000', '8436.75', 'DIGENTA CREAM.jpg', 'bebas', 20, 7, 1000, 2000, '2023-01-21', '2023-12-23'),
('368042', 'DIGESTAGON SYR / DOM SYR', '34000', '22500', 'DIGESTAGON SYR.jpg', 'bebas', 9, 6, 14000, 14000, '0000-00-00', '2024-01-21'),
('555817', 'DIONICOL - THIAMPENICOL', '20000', '1155', 'DIONICOL - THIAMPENICOL.jpg', 'bebas', 9, 1, 500, 500, '2020-01-21', '2023-01-21'),
('507630', 'DIONICOL ( THIAMPENICOL ) 125 MG SYR', '23000', '17325', 'DIONICOL ( THIAMPENICOL ) 125 MG SYR.jpg', 'bebas', 9, 6, 14000, 14000, '2023-01-21', '2023-01-21'),
('052094', 'DISMENO', '340000', '5460', 'DISMENO.jpg', 'bebas', 9, 1, 1000, 10000, '2021-10-21', '2023-01-21'),
('258057', 'DIVOLTAR 50MG (NATRIUM DIKLOFENAK)', '20000', '1155', 'DIONICOL ( THIAMPENICOL ) 125 MG SYR.jpg', 'bebas', 9, 4, 500, 500, '2021-01-21', '0202-12-20'),
('379914', 'DMP ( DEXTROMETHORPHANE ) TAB KALENG', '15000', '5778', 'DMP ( DEXTROMETHORPHANE ) TAB KALENG.jpg', 'bebas', 9, 1, 2000, 1000, '0000-00-00', '2023-10-20'),
('896668', 'DN 1 CC ( DURADRIL. NEUROTROPIN)', '23000', '6300', 'NEUROTROPIN.jpg', 'bebas', 9, 2, 5000, 5000, '2021-01-21', '2021-01-21'),
('769745', 'DOFEN FORTE - IBUPROFEN', '12000', '1155', 'DOFEN FORTE.jpg', 'bebas', 9, 1, 200, 200, '2023-01-21', '2024-01-21'),
('544556', 'DOHIXAT 100 MG KAP ( DOXYCYCLINE )', '12000', '1155', 'DOHIXAT 100 MG kab.jpg', 'bebas', 9, 3, 1000, 1000, '2023-01-25', '2024-01-25'),
('420807', 'DOME 10 ( DOMPERIDON )', '20000', '4725', 'DOMPERIDON.jpg', 'bebas', 9, 1, 1000, 1000, '2021-02-23', '2023-02-23'),
('916565', 'DOPAMET 250 MG - METHYLDOPA', '22300', '3465', 'DOPAMET 250 MG - METHYLDOPA.jpg', 'bebas', 9, 1, 1000, 1000, '2023-01-21', '2023-01-27'),
('251069', 'DOTRAMOL-PARACETAMOL-TRAMADOL', '34000', '8085', 'DOTRAMOL-PARACETAMOL-TRAMADOL.jpg', 'bebas', 9, 8, 15000, 15000, '2023-04-21', '2023-04-21'),
('071290', 'DOVASK 5', '12000', '4042', 'DOVASK 5.jpg', 'bebas', 9, 1, 1000, 1000, '2021-01-21', '2021-02-21'),
('647248', 'DROXAL', '32000', '15750', 'DROXAL.jpg', 'bebas', 9, 6, 12000, 12000, '2021-01-21', '2021-02-21'),
('161072', 'DULCOLAX - BISACODYL', '32000', '2719.5', 'DULCOLAX - BISACODYL.jpg', 'bebas', 9, 1, 21000, 21000, '2021-01-21', '2021-02-21'),
('214814', 'DUMIN 125MG SUPP (PARACETAMOL)', '32000', '28875', 'DUMIN 250MG SUPP.jpg', 'bebas', 9, 3, 21000, 21000, '2021-01-21', '2021-02-21'),
('182007', 'DUMIN 250MG SUPP', '21000', '14650', 'DUMIN 250MG SUPP.jpg', 'bebas', 9, 3, 10000, 1000, '2021-01-21', '2021-03-21'),
('527985', 'DURADRYL INJEKSI  1ML', '21000', '28870', 'DURADRYL INJEKSI - DIPHENHYDRAMINE HCI 10 MG.jpg', 'bebas', 23, 6, 211, 211, '2021-01-21', '2023-03-21'),
('723938', 'DURADRYL INJEKSI - DIPHENHYDRAMINE HCI 10 MG/ML', '23000', '8662', 'DURADRYL INJEKSI - DIPHENHYDRAMINE HCI 10 MG.jpg', 'bebas', 23, 6, 1000, 1000, '2021-09-21', '2023-09-21'),
('879731', 'ELASTIC BAND BESAR', '55000', '98175', 'ELASTIK BAND KECIL.jpg', 'bebas', 19, 8, 21000, 21000, '2021-01-21', '2021-02-21'),
('720459', 'ELASTIK BAND KECIL', '50000', '47250', 'ELASTIK BAND KECIL.jpg', 'bebas', 19, 8, 20000, 20000, '2021-01-21', '2021-03-21'),
('031769', 'ELOX CREAM 10 MG', '23000', '80850', 'ELOX CREAM 10 MG.jpg', 'bebas', 20, 7, 12000, 12000, '2021-01-21', '2021-02-21'),
('198914', 'ELOX CREAM 5 MG', '50000', '40600', 'ELOX CREAM 5 MG.jpg', 'bebas', 20, 7, 20000, 20000, '2021-01-21', '2021-02-20'),
('964570', 'EMERAN (METOCLOPRAMIDE)', '21000', '5777', 'EMERAN (METOCLOPRAMIDE).jpg', 'bebas', 9, 1, 1000, 1000, '2021-01-12', '2021-02-21'),
('030396', 'ENATIN TAB', '91000', '20000', 'ENATIN TAB.jpg', 'bebas', 9, 1, 3000, 3000, '2021-01-21', '2021-02-21'),
('679749', 'EPHEDRINE HCI 50 MG/ML', '23000', '18480', 'EPHEDRINE HCI 50 MG.jpg', 'bebas', 23, 6, 10000, 10000, '2021-01-21', '2023-01-21'),
('627350', 'ENVIOS / NEO KAOLANA SYR', '23000', '15750', 'NEO KAOLANA SYR.jpg', 'bebas', 9, 6, 10000, 10000, '2021-01-20', '2021-02-21'),
('688080', 'EPHINEPRIN 1 MG', '23000', '19950', 'EPHINEPRIN 1 MG.jpg', 'bebas', 23, 6, 21000, 21000, '2021-01-21', '2021-02-21'),
('955567', 'ERAPHAGE ( METFORMIN ) 500', '30000', '15750', 'ERAPHAGE ( METFORMIN ) 500.jpg', 'bebas', 9, 1, 1000, 1000, '2021-01-21', '2021-02-21'),
('283478', 'ERICAF ( ERGOTAMINE ) TAB', '24000', '5775', 'ERLAMYCETIN  PLUS TETES MATA.jpg', 'bebas', 9, 2, 1000, 1000, '2021-01-21', '2023-01-21'),
('760193', 'ERLAMYCETIN  PLUS TETES MATA', '21000', '17325', 'ERLAMYCETIN  PLUS TETES MATA.jpg', 'bebas', 21, 6, 10000, 10000, '2031-01-23', '3333-02-20'),
('769013', 'ERLAMYCETIN TETES TELINGA ( CHLORAMPHENICOL )', '20000', '17325', 'ERLAMYCETIN TETES TELINGA ( CHLORAMPHENICOL ).jpg', 'bebas', 21, 6, 10000, 10000, '2021-10-21', '2022-10-21'),
('839722', 'ERLAQUIN 250 CHLOROQUIN', '30000', '23100', 'ERLAQUIN 250 CHLOROQUIN.jpg', 'bebas', 9, 4, 1000, 1000, '2021-01-21', '2022-02-21'),
('468903', 'ERYSANBE (ERYTROMYCIN) SIRUP', '54000', '36750', 'ERYTHROMYCIN SYRUP.jpg', 'bebas', 9, 6, 20000, 20000, '2021-01-23', '2023-01-23'),
('533997', 'ERYTHRIN - ERYTHROMYCIN 500MG TAB', '53000', '8000', 'ERYTHRIN - ERYTHROMYCIN 500MG TAB.jpg', 'bebas', 9, 1, 1000, 1000, '2021-01-21', '2023-01-21'),
('426117', 'ERYTHRIN - ERYTHROMYCIN SYRUP', '59999', '55000', 'ERYTHROMYCIN SYRUP.jpg', 'bebas', 9, 6, 200000, 20000, '2020-01-21', '2023-02-21'),
('526612', 'ESFOLAT', '20000', '3465', 'ESFOLAT.jpg', 'bebas', 9, 1, 1000, 1000, '2021-01-21', '2021-01-21'),
('152375', 'ETHIGOBAL / SIMCOBAL ( MECOBALAMIN 500 MG ) TAB', '23000', '5250', 'ETHIGOBAL  SIMCOBAL ( MECOBALAMIN 500 MG ) TAB.jpg', 'bebas', 9, 2, 12000, 12000, '2023-01-21', '2026-01-21'),
('594910', 'EVO MASKER', '23000', '2100', 'EVO MASKER.jpg', 'bebas', 7, 8, 10000, 1000, '0021-01-21', '2025-01-21'),
('378144', 'EWOMA', '30000', '9240', 'EWOMA.jpg', 'bebas', 9, 3, 20000, 20000, '2021-01-21', '2023-01-21'),
('359986', 'EXAFLAM TAB (DICLOFENAC POTASSIUM)', '20000', '3822', 'EXAFLAM TAB (DICLOFENAC POTASSIUM).jpg', 'bebas', 9, 1, 2000, 2000, '2021-01-21', '2023-01-12'),
('802643', 'EXCELASE TAB', '3000', '2887', 'EXCELASE TAB.jpg', 'bebas', 9, 1, 2000, 2000, '2021-01-21', '2023-01-21'),
('036683', 'EXERGIN CO-DERGOCRINE', '30000', '17325', 'EXERGIN CO-DERGOCRINE.jpg', 'bebas', 17, 2, 2001, 2000, '0021-01-21', '2023-12-21'),
('843842', 'EXTRACE 500 / SANKORBIN INJ', '40000', '33600', 'EXTRACE 500.jpg', 'bebas', 9, 1, 210000, 10000, '2021-01-21', '2023-08-21'),
('183594', 'EXTROPECT - AMBROXOL', '40000', '23100', 'EXTROPECT SYRUP.jpg', 'bebas', 9, 6, 15000, 15000, '2021-01-21', '2023-01-21'),
('388459', 'EXTROPECT SYRUP / INTERPEC 15 SYRUP', '50000', '45360', 'EXTROPECT SYRUP.jpg', 'bebas', 9, 6, 10000, 10000, '2021-01-21', '2024-01-21'),
('453064', 'FARGOXIN ( DIGOXIN )', '20000', '5775', 'FARGOXIN ( DIGOXIN ).jpg', 'bebas', 9, 1, 10000, 10000, '2021-01-21', '2024-01-21'),
('541962', 'FARIDEXON 0.75 MG ( DEXAMETHASONE )', '20000', '73550', 'FARIDEXON 0.75 MG ( DEXAMETHASONE ).jpg', 'bebas', 9, 4, 1000, 1000, '2021-01-21', '2021-02-23'),
('341187', 'FARIZOL SYRUP - METRONIDAZOLE', '21000', '18480', 'FARIZOL SYRUP - METRONIDAZOLE.jpg', 'bebas', 9, 6, 10000, 10000, '2021-02-21', '2023-02-21'),
('937806', 'FARMALAT TAB 10 MG ( NIFEDIPIN )', '21000', '600', 'FARMALAT TAB 10 MG ( NIFEDIPIN ).jpg', 'bebas', 9, 1, 100, 100, '2021-02-21', '2022-02-22'),
('378571', 'FARIZOL TAB ( METRONIDAZOLE )', '21000', '1155', 'FARIZOL TAB ( METRONIDAZOLE ).jpg', 'bebas', 9, 1, 500, 500, '2021-03-21', '2021-04-23'),
('691254', 'FARMOTEN 12.5 MG TAB ( CAPTOPRIL )', '32000', '7350', 'FARMOTEN 12.5 MG TAB ( CAPTOPRIL ).jpg', 'bebas', 9, 1, 1000, 1000, '2021-01-21', '2022-02-22'),
('741730', 'FARSIRETIC TAB ( FUROSEMIDE )', '2100', '5777', 'FARSIRETIC TAB ( FUROSEMIDE ).jpg', 'bebas', 9, 1, 2000, 2000, '2021-02-21', '2022-03-22'),
('676514', 'FARMOTEN 25 MG TAB ( CAPTOPRIL )', '21000', '1155', 'FARMOTEN 25 MG TAB ( CAPTOPRIL ).jpg', 'bebas', 9, 1, 1000, 1000, '2021-09-21', '2022-09-21'),
('084656', 'FARSORBID ( ISOSORBID DINITRAT ) 5MG', '21000', '1155', 'FARSORBID ( ISOSORBID DINITRAT ) 5MG.jpg', 'bebas', 9, 4, 200, 200, '2021-01-21', '2022-01-22'),
('010468', 'FASGO FORTE / FASIDOL FORTE', '16000', '13800', 'FASGO FORTE.jpg', 'bebas', 9, 6, 12000, 12000, '2021-02-21', '2021-03-23'),
('533326', 'FASIPRIM - TRIMETHOPRIM SYR', '21122', '11550', 'FASIPRIM (COTRIMOXASOLE).jpg', 'bebas', 9, 6, 12000, 12000, '2021-03-21', '2021-04-21'),
('946686', 'FASIPRIM (COTRIMOXASOLE)', '22333', '11555', 'FASIPRIM (COTRIMOXASOLE).jpg', 'bebas', 9, 6, 12000, 12000, '2021-01-23', '2022-02-23'),
('718354', 'FAXIDEN TAB 10 MG ( PIROXICAM )', '23000', '11555', 'FAXIDEN TAB 10 MG ( PIROXICAM ).jpg', 'bebas', 9, 3, 2000, 2000, '2021-03-21', '2021-04-22'),
('987366', 'FASIPRIM F ( TRIMETHOPRIM )', '31000', '17320', 'FASIPRIM F ( TRIMETHOPRIM ).jpg', 'bebas', 9, 2, 14000, 14000, '2021-03-21', '2021-06-21'),
('962189', 'FENVLON MAKRO', '32000', '26250', 'FENVLON MAKRO.jpg', 'bebas', 19, 8, 12000, 12000, '2021-02-21', '2021-03-21'),
('755372', 'FAXIDEN TAB 20MG ( PIROXICAM )', '21000', '1732', 'FAXIDEN TAB 20MG ( PIROXICAM ).jpg', 'bebas', 9, 1, 100, 100, '2021-02-21', '2021-04-20'),
('533661', 'FERRIZ DROP', '21000', '57750', 'FERRIZ DROP.jpg', 'bebas', 9, 6, 12000, 12000, '2021-02-23', '2032-04-23'),
('239686', 'FENVLON MIKRO', '21000', '18050', 'FENVLON MAKRO.jpg', 'bebas', 19, 8, 11000, 11000, '2021-02-21', '2021-03-12'),
('686402', 'FERTIN / GENOCLOM  - CLOMIPHENE CITRATE', '25000', '23100', 'GENOCLOM  - CLOMIPHENE CITRATE.jpg', 'bebas', 9, 3, 10000, 10000, '2021-03-21', '2021-04-21'),
('935364', 'FIMEDIAB ( GLIBENCLAMID )', '25222', '7374', 'FIMEDIAB ( GLIBENCLAMID ).jpg', 'bebas', 9, 2, 7723, 7723, '2021-02-03', '2022-03-01'),
('256989', 'FG TROCHES', '21000', '13650', 'FG TROCHES.jpg', 'bebas', 9, 3, 10000, 10000, '2021-03-21', '2021-05-21'),
('170167', 'FLAZYMEC', '21000', '1386', 'FLAZYMEC.jpg', 'bebas', 9, 3, 12000, 12000, '2021-01-21', '2022-02-02'),
('675141', 'FIXAME 100 MG', '21000', '23100', 'FIXAME 100 MG.jpg', 'bebas', 9, 1, 12000, 12000, '2021-02-21', '2022-03-22'),
('668152', 'FOLDA - ASAM FOLAT', '21900', '6930', 'FOLDA - ASAM FOLAT.jpg', 'bebas', 9, 2, 1220, 1312, '2021-02-01', '2022-03-01'),
('799836', 'FOLAC-ASAM FOLAT', '21000', '1732', 'FOLAC-ASAM FOLAT.jpg', 'bebas', 9, 3, 210, 120, '2021-02-21', '2022-03-03'),
('550416', 'FOLEY CATHETER NO. 12', '23000', '36750', 'FOLEY CATHETER N0. 16.jpg', 'bebas', 19, 8, 12000, 12000, '2021-02-01', '2022-03-01'),
('861542', 'FOLEY CATHETER N0. 16', '10209', '23100', 'FOLEY CATHETER N0. 16.jpg', 'bebas', 19, 8, 3000, 3000, '2021-02-01', '2022-03-02'),
('531800', 'FOLEY CATHETER NO. 8', '32000', '36750', 'FOLEY CATHETER N0. 16.jpg', 'bebas', 19, 8, 12000, 12000, '2022-02-01', '2023-02-01'),
('059479', 'FOLEY CATHETER NO. 18', '43000', '23100', 'FOLEY CATHETER N0. 16.jpg', 'bebas', 19, 8, 1200, 1200, '2021-02-01', '2022-03-02'),
('311615', 'FOLEY CHATHETER NO 14', '54000', '23100', 'FOLEY CATHETER N0. 16.jpg', 'bebas', 19, 8, 13000, 13000, '2021-01-01', '2022-02-01'),
('670899', 'FORDIN 50 MG INJ (SPESIALIS)', '34000', '39039', 'FORDIN 50 MG INJ (SPESIALIS).jpg', 'bebas', 9, 4, 21000, 21000, '2021-02-01', '2022-03-01'),
('120057', 'FORGANOL (ITRACONAZOLE 100)', '62000', '31500', 'FORGANOL (ITRACONAZOLE 100).jpg', 'bebas', 9, 3, 12000, 12000, '2021-02-01', '2022-02-01'),
('004670', 'FORELAX ( EPERISON HCL )', '43000', '6756.75', 'FORELAX ( EPERISON HCL ).jpg', 'bebas', 9, 4, 67000, 12000, '2021-02-01', '2022-03-02'),
('875367', 'FOSMICIN - FOSFOMYCIN', '32000', '225225', 'FOSMICIN - FOSFOMYCIN.jpg', 'bebas', 23, 6, 12000, 12000, '2021-02-01', '2022-03-03'),
('744111', 'FORUMEN', '40000', '36750', 'FORUMEN.jpg', 'bebas', 9, 6, 12000, 12000, '2022-01-01', '2023-02-01'),
('526673', 'FUNGARES ZALF', '53000', '40425', 'FUNGARES ZALF.jpg', 'bebas', 20, 7, 50000, 50000, '2021-01-21', '2023-03-23'),
('104157', 'FRESHCARE', '32000', '13650', 'FRESHCARE.jpg', 'bebas', 20, 6, 12000, 12000, '2021-12-01', '2022-12-01'),
('007569', 'FUNGASOL ZALF', '21000', '31500', 'FUNGASOL ZALF.jpg', 'bebas', 20, 7, 12000, 12000, '2021-01-01', '2021-02-01'),
('377778', 'FUNGASOL TABLET', '21000', '5670', 'FUNGASOL TABLET.jpg', 'bebas', 9, 1, 1000, 1000, '2021-12-01', '2022-11-01'),
('345398', 'GALFLUX ( DOMPERIDON ) / DOM TABLET', '23000', '5250', 'GALFLUX ( DOMPERIDON ).jpg', 'bebas', 9, 4, 1000, 1000, '2022-01-01', '2023-02-01'),
('326691', 'FUROSEMID GENERIK', '31000', '8925', 'furosemid.jpg', 'bebas', 9, 3, 1000, 1000, '2021-01-01', '2022-02-01'),
('931366', 'GASTRIDIN ( RANITIDINE ) INJEKSI', '23000', '30975', 'GASTRIDIN ( RANITIDINE ) INJEKSI.jpg', 'bebas', 23, 6, 230, 230, '2022-01-01', '2022-02-01'),
('411255', 'GASTRIDIN (RANITIDINE) TAB - SPECIALIS', '21000', '7507', 'GASTRIDIN (RANITIDINE) TAB - SPECIALIS.jpg', 'bebas', 9, 2, 1000, 1000, '2021-12-01', '2022-12-02'),
('669983', 'GD KAPSUL', '50000', '6930', 'GD KAPSUL.jpg', 'bebas', 9, 3, 1000, 1000, '2021-02-01', '2023-03-02'),
('141022', 'GC KAPSUL', '32000', '6352', 'GC KAPSUL.jpg', 'bebas', 9, 3, 12000, 12000, '2022-02-01', '2023-02-01'),
('930176', 'GENOINT SALEP MATA ( GENTAMICIN )', '21000', '9975', 'GENOINT SALEP MATA ( GENTAMICIN ).jpg', 'bebas', 20, 7, 12000, 12000, '2021-01-21', '2022-02-20'),
('623627', 'GDR', '21000', '22000', 'GDR.jpg', 'bebas', 19, 8, 12000, 12000, '2022-01-01', '2021-02-01'),
('515900', 'GENTALEX', '120000', '57750', 'GENTALEX.jpg', 'bebas', 20, 7, 12000, 120000, '2021-01-12', '2022-01-21'),
('094178', 'GENTAMICIN INJ', '21000', '17325', 'GENTAMICIN INJ.jpg', 'bebas', 23, 6, 12000, 12000, '2021-01-21', '2022-01-21'),
('173310', 'GG ( GLYCERYL GUAIACOLATE ) TAB KALENG', '12000', '5770', 'GLYCERYL GUAIACOLATE.jpg', 'bebas', 9, 1, 1000, 1000, '2023-03-21', '2024-03-21'),
('908082', 'GIFED EXPECTORANT', '32000', '20790', 'GIFED EXPECTORANT.jpg', 'bebas', 9, 6, 13000, 13000, '2202-01-21', '2122-02-01'),
('920075', 'GIRABLOC 500 MG  ( CIPRO )', '2100', '15750', 'GIRABLOC 500 MG  ( CIPRO ).jpg', 'bebas', 9, 1, 2000, 2000, '2021-01-01', '2022-02-01'),
('711731', 'GITAS ( BUSCOPAN ) / SCOPAMIN INJ', '21000', '36750', 'gitas.jpg', 'bebas', 9, 4, 1200, 1200, '2021-02-01', '2021-02-08'),
('188721', 'GLAMAROL', '21000', '4515', 'GLAMAROL.jpg', 'bebas', 9, 4, 1000, 1000, '2022-01-01', '2023-02-01'),
('799164', 'GITAS PLUS TAB / BUSCOPAN PLUS TAB', '32000', '7875', 'gitas.jpg', 'bebas', 9, 1, 1200, 1200, '2021-01-01', '2021-02-01'),
('322297', 'GLIFORMIN ( METFORMIN )', '21000', '2310', 'GLIFORMIN ( METFORMIN ).jpg', 'bebas', 9, 1, 1000, 1000, '2022-02-01', '2023-02-01'),
('219941', 'GLOMASIN 300 - CLINDAMYCIN 300 MG', '21000', '8400', 'GLOMASIN 300 - CLINDAMYCIN 300 MG.jpg', 'bebas', 9, 3, 1000, 1000, '2021-02-01', '2023-02-01'),
('116395', 'GLODIN', '210000', '2940', 'GLODIN.jpg', 'bebas', 9, 3, 1000, 1000, '2022-02-01', '2022-03-31'),
('115845', 'GLOMIN INJ (DOPAMINE 40MG/ML)', '', '61950', NULL, 'bebas', NULL, NULL, NULL, NULL, NULL, NULL),
('191315', 'GLOSIX', '', '20790', NULL, 'bebas', NULL, NULL, NULL, NULL, NULL, NULL),
('401917', 'GLUCODEX (GLICLAZIDE )', '', '3465', NULL, 'bebas', NULL, NULL, NULL, NULL, NULL, NULL),
('533204', 'GOFLEX (NABUMETONE 500 MG)', '', '11550', NULL, 'bebas', NULL, NULL, NULL, NULL, NULL, NULL),
('654389', 'GLUDEPATIK ( METFORMIN HCL 500MG )', '', '1155', NULL, 'bebas', NULL, NULL, NULL, NULL, NULL, NULL),
('495881', 'GOFORAN ( CEFOTAXIME ) INJEKSI/ FOBET (CEFOTAXIME)', '', '189000', NULL, 'bebas', NULL, NULL, NULL, NULL, NULL, NULL),
('162049', 'GORALGIN (METHAMPYRONE.VIT B1. VIT B6 . VIT B12 )', '33133', '23103', 'gor.jpg', 'bebas', 9, 2, 12000, 21000, '2021-02-21', '2022-02-22'),
('821259', 'GOTROPIL 800 MG / LATROPIL 800', '', '5250', NULL, 'bebas', NULL, NULL, NULL, NULL, NULL, NULL),
('704743', 'GRAFAZOLE TAB (METRONIDAZOLE)', '', '1155', NULL, 'bebas', NULL, NULL, NULL, NULL, NULL, NULL),
('784546', 'GOVAZOL ', '', '102375', NULL, 'bebas', NULL, NULL, NULL, NULL, NULL, NULL),
('490540', 'GRALIXA', '', '577', NULL, 'bebas', NULL, NULL, NULL, NULL, NULL, NULL),
('786652', 'HANDSCONE OBGYN', '', '23100', NULL, 'bebas', NULL, NULL, NULL, NULL, NULL, NULL),
('713624', 'H2 O2', '', '80850', NULL, 'bebas', NULL, NULL, NULL, NULL, NULL, NULL),
('939301', 'GRICIN', '', '1732', NULL, 'bebas', NULL, NULL, NULL, NULL, NULL, NULL),
('981141', 'HANDSCONE STERIL (MRM) NO 7', '', '11550', NULL, 'bebas', NULL, NULL, NULL, NULL, NULL, NULL),
('664185', 'HANDSCUND M', '', '84000', NULL, 'bebas', NULL, NULL, NULL, NULL, NULL, NULL),
('727265', 'HANDSCONE STERIL NO 7.5', '', '11550', NULL, 'bebas', NULL, NULL, NULL, NULL, NULL, NULL),
('727601', 'HARMONIS 1 BULAN', '', '17325', NULL, 'bebas', NULL, NULL, NULL, NULL, NULL, NULL),
('210358', 'HANSAPLAST', '', '525', NULL, 'bebas', NULL, NULL, NULL, NULL, NULL, NULL),
('403901', 'HCT / HYDROKLORTIAZID', '', '1155', NULL, 'bebas', NULL, NULL, NULL, NULL, NULL, NULL),
('479981', 'HELIXIM 100 MG', '', '1969.8', NULL, 'bebas', NULL, NULL, NULL, NULL, NULL, NULL),
('323670', 'HEXCAM', '21000', '2310', 'HEXCAM.jpg', 'bebas', 9, 3, 1000, 1000, '2022-02-01', '2023-02-01'),
('944611', 'HEMOROGARD', '23000', '3465', 'HEMOROGARD.jpg', 'bebas', 9, 2, 2000, 2000, '2021-01-31', '2022-02-01'),
('687958', 'HI BONE TABLET KUNYAH ( SPOG )', '21000', '3570', 'HI BONE TABLET KUNYAH ( SPOG ).jpg', 'bebas', 9, 6, 12000, 12000, '2021-04-01', '2022-05-01'),
('504761', 'HICO - HEPARIN SODIUM', '30830', '28000', 'HICO - HEPARIN SODIUM.jpg', 'bebas', 20, 7, 12000, 12000, '2021-02-01', '2022-03-01'),
('458161', 'HISTIGO (BETAHISTIN MESILATE)', '', '1732', NULL, 'bebas', NULL, NULL, NULL, NULL, NULL, NULL),
('798188', 'HUFADIN ( RANITIDIN ) 150 MG', '30999', '8079', 'HUFADIN ( RANITIDIN ) 150 MG.jpg', 'bebas', 9, 3, 2104, 2253, '2021-02-01', '2022-03-03'),
('863099', 'HOTIN CREAM', '21000', '18900', 'HOTIN CREAM.jpg', 'bebas', 20, 7, 1200, 12000, '2022-01-21', '2022-02-02'),
('582276', 'HYDROCORTISON ZALF (NESTACORT 2.5 % )', '21000', '8925', 'HYDROCORTISON ZALF (NESTACORT 2.5 % ).jpg', 'bebas', 20, 7, 2000, 2000, '2021-02-21', '2021-12-21'),
('719758', 'HYPAFIX 10X5CM', '', '254100', NULL, 'bebas', NULL, NULL, NULL, NULL, NULL, NULL),
('939637', 'HYPAFIX PER CM ( HYFAFIX ) 1 BOX 50 CM', '21000', '5082', 'HYPAFIX PER CM ( HYFAFIX ) 1 BOX 50 CM.jpg', 'bebas', 19, 8, 1000, 1000, '2021-02-21', '2022-03-22'),
('453339', 'ILIADIN', '34000', '28250', 'ILIADIN.jpg', 'bebas', 21, 6, 12000, 12000, '2021-01-21', '2021-03-22'),
('056275', 'IMBOOST F COUGH SPESIALIS', '23000', '9240', 'IMFORCE PLUS KAPLET.jpg', 'bebas', 9, 1, 1000, 1000, '2021-01-21', '2021-02-21'),
('647034', 'IMFORCE SYR 60 ML', '23000', '15050', 'IMFORCE SYR 60 ML.jpg', 'bebas', 9, 6, 12000, 12000, '2021-01-21', '2021-03-21'),
('198151', 'IMFORCE PLUS KAPLET', '12000', '9817', 'IMFORCE PLUS KAPLET.jpg', 'bebas', 9, 4, 1000, 1000, '2021-01-21', '2021-02-23'),
('770508', 'IMUNVIT PLUS TABLET', '20000', '12757.5', 'IMUNVIT PLUS TABLET.jpg', 'bebas', 9, 1, 1100, 11000, '2021-02-21', '2023-02-21'),
('872162', 'IMODIUM', '23000', '11550', 'IMODIUM.jpg', 'bebas', 9, 2, 1000, 1000, '2021-01-21', '2021-02-21'),
('862092', 'IMUNVIT SYR', '', '120225', NULL, 'bebas', NULL, NULL, NULL, NULL, NULL, NULL),
('579041', 'INBION / MALTIRON PLUS TAB', '12000', '2310', 'MALTIRON PLUS TAB.jpg', 'bebas', 9, 1, 1000, 1000, '2021-01-21', '2021-02-23'),
('773407', 'INDANOX ( CLINDAMICIN 300 )', '20000', '9975', 'CLINDAMICIN 300.jpg', 'bebas', 23, 6, 1000, 1000, '2021-01-21', '2023-02-21'),
('068726', 'INDEXON INJEKSI / CORTIDEX INJ ', '23000', '18900', 'INDEXON INJEKSI.jpg', 'bebas', 23, 6, 12000, 12000, '2021-01-31', '2021-02-23'),
('829407', 'INLACTA DHA', '23000', '7500', 'INLACTA DHA.jpg', 'bebas', 9, 3, 1000, 1000, '2021-01-21', '2021-02-21'),
('180329', 'INFUS SANBE HES', '30000', '25000', 'INFUS SANBE HES.jpg', 'bebas', 12, 6, 14000, 14000, '2021-01-21', '2021-02-21'),
('375824', 'INTERFLOX-CIPROFLOXACIN500 SPESIALIS', '', '21000', NULL, 'bebas', NULL, NULL, NULL, NULL, NULL, NULL),
('121613', 'INTERMIC', '', '24000', NULL, 'bebas', NULL, NULL, NULL, NULL, NULL, NULL),
('794678', 'INTERLAC SACHET', '', '12075', NULL, 'bebas', NULL, NULL, NULL, NULL, NULL, NULL),
('398163', 'INTERPRIL', '', '4000', NULL, 'bebas', NULL, NULL, NULL, NULL, NULL, NULL),
('991883', 'INTERMOXIL ( AMOXICILLIN )', '', '5307', NULL, 'bebas', NULL, NULL, NULL, NULL, NULL, NULL),
('292115', 'INTERVASK ( AMLODIPIN 5 MG )', '', '7140', NULL, 'bebas', NULL, NULL, NULL, NULL, NULL, NULL),
('154694', 'INTERZINC SYR / ZIRCUM KID', '', '43000', NULL, 'bebas', NULL, NULL, NULL, NULL, NULL, NULL),
('059174', 'INTUNAL F TABLET', '', '1260', NULL, 'bebas', NULL, NULL, NULL, NULL, NULL, NULL),
('160218', 'INTRIZIN SYR', '', '84341.25', NULL, 'bebas', NULL, NULL, NULL, NULL, NULL, NULL),
('248322', 'INVOMIT INJ / ODR 4 MG ', '', '48300', NULL, 'bebas', NULL, NULL, NULL, NULL, NULL, NULL),
('404786', 'INTUNAL SYRUP', '', '17325', NULL, 'bebas', NULL, NULL, NULL, NULL, NULL, NULL),
('077607', 'ISOPLAST ONEMED', '', '19635', NULL, 'bebas', NULL, NULL, NULL, NULL, NULL, NULL),
('928162', 'INVOMIT TAB', '', '22113', NULL, 'bebas', NULL, NULL, NULL, NULL, NULL, NULL),
('476441', 'ITAMOL ( PARACETAMOL ) 500 MG', '', '577', NULL, 'bebas', NULL, NULL, NULL, NULL, NULL, NULL),
('871247', 'ITAMOL FORTE ( PARACETAMOL ) 650 MG', '', '1155', NULL, 'bebas', NULL, NULL, NULL, NULL, NULL, NULL),
('389466', 'KAEN 3 B', '', '28875', NULL, 'bebas', NULL, NULL, NULL, NULL, NULL, NULL),
('350831', 'KALPANAX CAIR', '', '3465', NULL, 'bebas', NULL, NULL, NULL, NULL, NULL, NULL),
('672211', 'KALNEX TABLET ( ASAM TRANEKSAMAT )', '', '4725', NULL, 'bebas', NULL, NULL, NULL, NULL, NULL, NULL),
('992219', 'KALPANAX SALEP', '', '8400', NULL, 'bebas', NULL, NULL, NULL, NULL, NULL, NULL),
('561738', 'KANAMYCIN 2 GRAM', '', '173250', NULL, 'bebas', NULL, NULL, NULL, NULL, NULL, NULL),
('137879', 'KANAMYCIN 1 G', '', '86625', NULL, 'bebas', NULL, NULL, NULL, NULL, NULL, NULL),
('079987', 'KAPAS GULUNG 500 MG', '', '47250', NULL, 'bebas', NULL, NULL, NULL, NULL, NULL, NULL),
('371705', 'KANDISTATIN', '', '51975', NULL, 'bebas', NULL, NULL, NULL, NULL, NULL, NULL),
('964936', 'KAPSUL NO 00', '', '577', NULL, 'bebas', NULL, NULL, NULL, NULL, NULL, NULL),
('267151', 'KAPSUL NO 0', '', '577', NULL, 'bebas', NULL, NULL, NULL, NULL, NULL, NULL),
('382813', 'KASSA KOTAK STERIL PER BOX', '', '17325', NULL, 'bebas', NULL, NULL, NULL, NULL, NULL, NULL),
('103303', 'KASSA KOTAK STERIL PER LEMBAR ', '', '987', NULL, 'bebas', NULL, NULL, NULL, NULL, NULL, NULL),
('371033', 'KASSA ROLL 40 * 80', '', '289380', NULL, 'bebas', NULL, NULL, NULL, NULL, NULL, NULL),
('600556', 'KENALOG / SINOCORT PASTA ORAL', '', '63000', NULL, 'bebas', NULL, NULL, NULL, NULL, NULL, NULL),
('530915', 'KETROBAT INJ / KETOROLAK / MATOLAC INJ', '', '57750', NULL, 'bebas', NULL, NULL, NULL, NULL, NULL, NULL),
('727906', 'KERTAS PUYER', '', '735', NULL, 'bebas', NULL, NULL, NULL, NULL, NULL, NULL),
('543274', 'KINA TAB', '', '1732', NULL, 'bebas', NULL, NULL, NULL, NULL, NULL, NULL),
('250733', 'KLODERMA', '', '28875', NULL, 'bebas', NULL, NULL, NULL, NULL, NULL, NULL),
('687348', 'KLEM COSA', '', '5775', NULL, 'bebas', NULL, NULL, NULL, NULL, NULL, NULL),
('377625', 'KOMIK PEPERMINT', '', '1155', NULL, 'bebas', NULL, NULL, NULL, NULL, NULL, NULL),
('331574', 'KOMIK JERUK NIPIS', '', '1155', NULL, 'bebas', NULL, NULL, NULL, NULL, NULL, NULL),
('944062', 'KONDOM DUREX', '', '15750', NULL, 'bebas', NULL, NULL, NULL, NULL, NULL, NULL),
('295044', 'KONDOM FIESTA', '', '11550', NULL, 'bebas', NULL, NULL, NULL, NULL, NULL, NULL),
('967835', 'KONDOM SUTRA', '', '6825', NULL, 'bebas', NULL, NULL, NULL, NULL, NULL, NULL),
('974030', 'KONDOM SIMPLEX CHOCO', '', '10237', NULL, 'bebas', NULL, NULL, NULL, NULL, NULL, NULL),
('704590', 'LACONS ( LACTOLASE )', '', '57750', NULL, 'bebas', NULL, NULL, NULL, NULL, NULL, NULL),
('589448', 'KONDOM VIESTA ISI 3', '', '11550', NULL, 'bebas', NULL, NULL, NULL, NULL, NULL, NULL),
('427033', 'LACTASIN', '', '4620', NULL, 'bebas', NULL, NULL, NULL, NULL, NULL, NULL),
('342255', 'LAMODEX', '', '39270', NULL, 'bebas', NULL, NULL, NULL, NULL, NULL, NULL),
('907654', 'LAGESIL SUSPENSI ( ANTASIDA )', '', '40425', NULL, 'bebas', NULL, NULL, NULL, NULL, NULL, NULL),
('159333', 'LANCETTE - HOMECARE', '', '1155', NULL, 'bebas', NULL, NULL, NULL, NULL, NULL, NULL),
('823121', 'LANAKELOID ( SPESIALIS )', '', '78750', NULL, 'bebas', NULL, NULL, NULL, NULL, NULL, NULL),
('421235', 'LAPIBROZ ( GEMFIBROZIL )', '', '5775', NULL, 'bebas', NULL, NULL, NULL, NULL, NULL, NULL),
('290833', 'LANSOPRAZOLE', '', '2310', NULL, 'bebas', NULL, NULL, NULL, NULL, NULL, NULL),
('494385', 'LAPIFED EXPECTORAN SYR', '', '31500', NULL, 'bebas', NULL, NULL, NULL, NULL, NULL, NULL),
('139679', 'LAPIMOX 250 SYR ( AMOXICILIN )', '', '50400', NULL, 'bebas', NULL, NULL, NULL, NULL, NULL, NULL),
('545136', 'LAPISTAN ( ASAM MEFENAMAT )', '', '2100', NULL, 'bebas', NULL, NULL, NULL, NULL, NULL, NULL),
('711121', 'LAPIMOX 500 TAB (AMOXICILIN )', '', '4200', NULL, 'bebas', NULL, NULL, NULL, NULL, NULL, NULL),
('062134', 'LARMETA (DOMPERIDONE) TAB', '', '4725', NULL, 'bebas', NULL, NULL, NULL, NULL, NULL, NULL),
('836823', 'LASAL ( SALBUTAMOL ) SYR', '', '33600', NULL, 'bebas', NULL, NULL, NULL, NULL, NULL, NULL),
('932709', 'LATIBET - GLIBENCLAMIDE', '', '577', NULL, 'bebas', NULL, NULL, NULL, NULL, NULL, NULL),
('262269', 'LASAL NEBU', '', '11340', NULL, 'bebas', NULL, NULL, NULL, NULL, NULL, NULL),
('370118', 'LAXING', '', '3150', NULL, 'bebas', NULL, NULL, NULL, NULL, NULL, NULL),
('538025', 'L-BIO KAPSUL DEWASA', '', '10500', NULL, 'bebas', NULL, NULL, NULL, NULL, NULL, NULL),
('219513', 'L-BIO', '', '10500', NULL, 'bebas', NULL, NULL, NULL, NULL, NULL, NULL),
('302704', 'LEOMOXYL - AMOXICILLIN 125 / LAPIMOX 125', '', '35700', NULL, 'bebas', NULL, NULL, NULL, NULL, NULL, NULL),
('756501', 'LERZIN ( CETIRIZINE ) 10 MG', '', '1732', NULL, 'bebas', NULL, NULL, NULL, NULL, NULL, NULL),
('762085', 'LEOMOXYL TABLET - AMOXICILLIN', '', '4200', NULL, 'bebas', NULL, NULL, NULL, NULL, NULL, NULL),
('632142', 'LERZIN SYR 60 ML', '', '15015', NULL, 'bebas', NULL, NULL, NULL, NULL, NULL, NULL),
('081788', 'LIBRONIL (GLIBENKLAMID)', '', '577', NULL, 'bebas', NULL, NULL, NULL, NULL, NULL, NULL),
('873871', 'LIBROCEF ( CEFADROXIL ) TABLET', '', '2100', NULL, 'bebas', NULL, NULL, NULL, NULL, NULL, NULL),
('416535', 'LICOGENTA ZALF (GENTAMICIN)', '', '8000', NULL, 'bebas', NULL, NULL, NULL, NULL, NULL, NULL),
('364960', 'LIDOCAIN', '', '5775', NULL, 'bebas', NULL, NULL, NULL, NULL, NULL, NULL),
('138367', 'LICOVIR ( ACYCLOVIR )', '', '11550', NULL, 'bebas', NULL, NULL, NULL, NULL, NULL, NULL),
('668366', 'LOPITEN 5 MG ( AMLODIPIN ) / AB VASK 5 MG', '', '8400', NULL, 'bebas', NULL, NULL, NULL, NULL, NULL, NULL),
('672974', 'LIPOFOOD', '', '6930', NULL, 'bebas', NULL, NULL, NULL, NULL, NULL, NULL),
('150452', 'LOSTACEF CAP ( CEFADROXYL ) 500 MG', '', '1732', NULL, 'bebas', NULL, NULL, NULL, NULL, NULL, NULL),
('379395', 'L-ZINC', '100000', '51455.25', 'L-.jpg', 'bebas', 9, 6, 12000, 12000, '2021-01-21', '2021-02-21'),
('994721', 'LOTUS BISTURI', '', '17325', NULL, 'bebas', NULL, NULL, NULL, NULL, NULL, NULL),
('262146', 'MALTOFER ( SYRUP )', '', '75075', NULL, 'bebas', NULL, NULL, NULL, NULL, NULL, NULL),
('480744', 'MAGANOL', '', '1155', NULL, 'bebas', NULL, NULL, NULL, NULL, NULL, NULL),
('544800', 'MASKER O2 ANAK', '', '73500', NULL, 'bebas', NULL, NULL, NULL, NULL, NULL, NULL),
('481904', 'MASKER 1 KOTAK', '', '36093.75', NULL, 'bebas', NULL, NULL, NULL, NULL, NULL, NULL),
('322419', 'MASKER O2 BAYI', '', '73500', NULL, 'bebas', NULL, NULL, NULL, NULL, NULL, NULL),
('567200', 'MASKER O2 DEWASA', '', '73500', NULL, 'bebas', NULL, NULL, NULL, NULL, NULL, NULL),
('012940', 'MAXCEF ( CEFADROXIL ) TABLET', '', '15225', NULL, 'bebas', NULL, NULL, NULL, NULL, NULL, NULL),
('045258', 'MATXIME INJ (CEFETAXIME)', '', '189000', NULL, 'bebas', NULL, NULL, NULL, NULL, NULL, NULL),
('162140', 'MAXCEF SYR 125 ( CEFADROXIL )', '', '57750', NULL, 'bebas', NULL, NULL, NULL, NULL, NULL, NULL),
('659363', 'MAXPRINOL SYRUP', '', '86625', NULL, 'bebas', NULL, NULL, NULL, NULL, NULL, NULL),
('403534', 'MAXSTAN', '', '1995', NULL, 'bebas', NULL, NULL, NULL, NULL, NULL, NULL),
('127564', 'MAYO/GUADEL', '', '52500', NULL, 'bebas', NULL, NULL, NULL, NULL, NULL, NULL),
('468659', 'MECOQUIN / HUFAFLOX / FLOXIFAR', '', '1050', NULL, 'bebas', NULL, NULL, NULL, NULL, NULL, NULL),
('632386', 'MEDIGREL ( CLOPIDOGREL )', '', '17325', NULL, 'bebas', NULL, NULL, NULL, NULL, NULL, NULL),
('775483', 'MEFINTER ( ASAM MEFENAMAT ) 500 MG TAB', '', '2887', NULL, 'bebas', NULL, NULL, NULL, NULL, NULL, NULL),
('732422', 'MEFLAMIN 50  MG', '', '3465', NULL, 'bebas', NULL, NULL, NULL, NULL, NULL, NULL),
('210724', 'MELIDOX', '', '2310', NULL, 'bebas', NULL, NULL, NULL, NULL, NULL, NULL),
('080018', 'MERTIGO', '', '5775', NULL, 'bebas', NULL, NULL, NULL, NULL, NULL, NULL),
('879853', 'METHERGIN ( METHYLERGOMETRINE )/MYOTONIC', '', '17325', NULL, 'bebas', NULL, NULL, NULL, NULL, NULL, NULL),
('171265', 'MGSO4', '', '10500', NULL, 'bebas', NULL, NULL, NULL, NULL, NULL, NULL),
('857087', 'MICROLAX', '', '23100', NULL, 'bebas', NULL, NULL, NULL, NULL, NULL, NULL),
('096009', 'MINIASPI ', '', '1365', NULL, 'bebas', NULL, NULL, NULL, NULL, NULL, NULL),
('935395', 'MINOSEP GARGLE 0.1 % ( OBAT KUMUR ) DRG', '', '34650', NULL, 'bebas', NULL, NULL, NULL, NULL, NULL, NULL),
('287842', 'MINOSEP GARGLE 0.1 % ( OBAT KUMUR ) KECIL', '', '26334', NULL, 'bebas', NULL, NULL, NULL, NULL, NULL, NULL),
('376496', 'MINOSEP GARGLE 0.2 % ( OBAT KUMUR ) DRG', '', '47250', NULL, 'bebas', NULL, NULL, NULL, NULL, NULL, NULL),
('274109', 'MINOSEP GARGLE 0.2 % ( OBAT KUMUR ) KECIL', '50000', '31531.5', 'download.jpg', 'bebas', 21, 6, 230000, 230003, '2021-01-31', '2021-02-23'),
('660859', 'MINYAK KAYU PUTIH CAP LANG', '', '8246.7', NULL, 'bebas', NULL, NULL, NULL, NULL, NULL, NULL),
('425904', 'MINYAK KAYU PUTIH DRAGON 15 ML', '', '5040', NULL, 'bebas', NULL, NULL, NULL, NULL, NULL, NULL),
('237702', 'MINYAK KAYU PUTIH DRAGON 30 ML', '', '10080', NULL, 'bebas', NULL, NULL, NULL, NULL, NULL, NULL),
('708069', 'MIPROS 200 (MISOPROSTOL)', '', '15015', NULL, 'bebas', NULL, NULL, NULL, NULL, NULL, NULL),
('274994', 'MOFACORT - MOMETASONE / CREAM', '', '40425', NULL, 'bebas', NULL, NULL, NULL, NULL, NULL, NULL),
('429200', 'MOLACORT TAB 0.75 MG ( DEXAMETHASON )', '', '577', NULL, 'bebas', NULL, NULL, NULL, NULL, NULL, NULL),
('409455', 'MOLAGIT / AKITA', '', '735', NULL, 'bebas', NULL, NULL, NULL, NULL, NULL, NULL),
('991639', 'MOLAKRIM ZALF - ANALGESIC CREAM', '', '17325', NULL, 'bebas', NULL, NULL, NULL, NULL, NULL, NULL),
('496552', 'MOLINFA', '', '4620', NULL, 'bebas', NULL, NULL, NULL, NULL, NULL, NULL),
('641480', 'MOVIX (MELOXICAM)', '', '8575.35', NULL, 'bebas', NULL, NULL, NULL, NULL, NULL, NULL),
('360505', 'MOZUKU SYR', '', '88725', NULL, 'bebas', NULL, NULL, NULL, NULL, NULL, NULL),
('218567', 'MP4MG MECOSOLON ', '', '3465', NULL, 'bebas', NULL, NULL, NULL, NULL, NULL, NULL),
('544282', 'MUCERA DROP', '', '52447.5', NULL, 'bebas', NULL, NULL, NULL, NULL, NULL, NULL),
('906495', 'MUCOGARD ( SUKRALFAT )', '', '46200', NULL, 'bebas', NULL, NULL, NULL, NULL, NULL, NULL),
('059601', 'MUCOS DROP', '', '47250', NULL, 'bebas', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `produk_master` (`kd_produk`, `nama_produk`, `harga_beli`, `jual_umum`, `gambar`, `jenis_obat`, `id_kategori`, `id_satuan`, `jual_bpjs`, `jual_lain`, `tgl_produksi`, `tgl_expired`) VALUES
('982605', 'MUCOTUSAN / LAPISIV T', '', '2625', NULL, 'bebas', NULL, NULL, NULL, NULL, NULL, NULL),
('136933', 'MUCOUS EXTRACTOR', '', '15750', NULL, 'bebas', NULL, NULL, NULL, NULL, NULL, NULL),
('567994', 'MUVERON DROP', '', '31500', NULL, 'bebas', NULL, NULL, NULL, NULL, NULL, NULL),
('975495', 'MUVERON SYRUP', '', '43050', NULL, 'bebas', NULL, NULL, NULL, NULL, NULL, NULL),
('377503', 'MYCONAZOLE CREAM TUBE', '', '15750', NULL, 'bebas', NULL, NULL, NULL, NULL, NULL, NULL),
('493256', 'MYOTONIC ( METHYLERGOMETRINE ) TABLET', '', '3990', NULL, 'bebas', NULL, NULL, NULL, NULL, NULL, NULL),
('469727', 'NATTO - 10', '', '12705', NULL, 'bebas', NULL, NULL, NULL, NULL, NULL, NULL),
('076935', 'NEEDLE NO. 23', '', '2887', NULL, 'bebas', NULL, NULL, NULL, NULL, NULL, NULL),
('997010', 'NEEDLE NO. 24', '', '2887', NULL, 'bebas', NULL, NULL, NULL, NULL, NULL, NULL),
('332001', 'NEEDLE NO. 25', '', '2887', NULL, 'bebas', NULL, NULL, NULL, NULL, NULL, NULL),
('955445', 'NEEDLE NO. 26', '', '2887', NULL, 'bebas', NULL, NULL, NULL, NULL, NULL, NULL),
('832673', 'NEO K / PHYFION ( VITAMIN K ) INJEKSI', '', '20000', NULL, 'bebas', NULL, NULL, NULL, NULL, NULL, NULL),
('934876', 'NEO PRODIAR - FURAZOLIDONE SYRUP', '', '18480', NULL, 'bebas', NULL, NULL, NULL, NULL, NULL, NULL),
('871918', 'NEO PROTIFED TAB', '', '1575', NULL, 'bebas', NULL, NULL, NULL, NULL, NULL, NULL),
('868897', 'NEO ULTRASILINE', '', '11550', NULL, 'bebas', NULL, NULL, NULL, NULL, NULL, NULL),
('211457', 'NEOZEP', '', '2310', NULL, 'bebas', NULL, NULL, NULL, NULL, NULL, NULL),
('784852', 'NEPHROLIT', '', '1443', NULL, 'bebas', NULL, NULL, NULL, NULL, NULL, NULL),
('831757', 'NEUCITI - 250 INJECTION ( CITICOLINE 250 MG / 2 ML', '', '60060', NULL, 'bebas', NULL, NULL, NULL, NULL, NULL, NULL),
('553834', 'NEUCITI - 500 INJECTION', '', '88200', NULL, 'bebas', NULL, NULL, NULL, NULL, NULL, NULL),
('682038', 'NEUROBAT FORTE INJ 3 ML/20', '', '15015', NULL, 'bebas', NULL, NULL, NULL, NULL, NULL, NULL),
('640687', 'NEUROCET', '', '2310', NULL, 'bebas', NULL, NULL, NULL, NULL, NULL, NULL),
('430268', 'NEURODEX', '', '1155', NULL, 'bebas', NULL, NULL, NULL, NULL, NULL, NULL),
('854004', 'NEUROHAX / LAPIBION', '', '1905', NULL, 'bebas', NULL, NULL, NULL, NULL, NULL, NULL),
('213166', 'NEUROHAX 5000', '', '2625', NULL, 'bebas', NULL, NULL, NULL, NULL, NULL, NULL),
('096131', 'NEUROMEC ( METAMPIRON.B6.B1.B12 )', '', '808', NULL, 'bebas', NULL, NULL, NULL, NULL, NULL, NULL),
('386200', 'NEUROSANBE INJEKSI / BIOCOMBIN INJ', '', '17325', NULL, 'bebas', NULL, NULL, NULL, NULL, NULL, NULL),
('113160', 'NEUROTROPIN', '', '11550', NULL, 'bebas', NULL, NULL, NULL, NULL, NULL, NULL),
('273591', 'NEUROTROPIN (ML)', '', '2887', NULL, 'bebas', NULL, NULL, NULL, NULL, NULL, NULL),
('244935', 'NEXITRA - ASAM TRANEXAMAT', '', '2950', NULL, 'bebas', NULL, NULL, NULL, NULL, NULL, NULL),
('918305', 'NGT', '', '34650', NULL, 'bebas', NULL, NULL, NULL, NULL, NULL, NULL),
('175049', 'NGT 12', '', '42588', NULL, 'bebas', NULL, NULL, NULL, NULL, NULL, NULL),
('832062', 'NGT NO 10', '', '40950', NULL, 'bebas', NULL, NULL, NULL, NULL, NULL, NULL),
('680848', 'NGT NO 16', '', '23100', NULL, 'bebas', NULL, NULL, NULL, NULL, NULL, NULL),
('745331', 'NGT NO 18', '', '23100', NULL, 'bebas', NULL, NULL, NULL, NULL, NULL, NULL),
('383423', 'NGT NO 5', '', '23100', NULL, 'bebas', NULL, NULL, NULL, NULL, NULL, NULL),
('357331', 'NGT NO 8', '', '45727.5', NULL, 'bebas', NULL, NULL, NULL, NULL, NULL, NULL),
('497620', 'NICOLIN', '', '75075', NULL, 'bebas', NULL, NULL, NULL, NULL, NULL, NULL),
('086030', 'NIFEDIN (NIFEDIPINE)', '', '949.2', NULL, 'bebas', NULL, NULL, NULL, NULL, NULL, NULL),
('582032', 'NISAGON - BETHAMETHASONE', '', '11550', NULL, 'bebas', NULL, NULL, NULL, NULL, NULL, NULL),
('818146', 'NONEMI TABLET ( VITAMIN SPESIALIS )', '', '2520', NULL, 'bebas', NULL, NULL, NULL, NULL, NULL, NULL),
('289002', 'NONFLAMIN', '', '6300', NULL, 'bebas', NULL, NULL, NULL, NULL, NULL, NULL),
('659150', 'NORAGES INJEKSI', '', '23100', NULL, 'bebas', NULL, NULL, NULL, NULL, NULL, NULL),
('114625', 'NORAGES SYRUP - METAMIZOLE', '', '32917', NULL, 'bebas', NULL, NULL, NULL, NULL, NULL, NULL),
('683259', 'NORELUT / REGUMEN', '', '6930', NULL, 'bebas', NULL, NULL, NULL, NULL, NULL, NULL),
('148743', 'NORESTIL', '', '6300', NULL, 'bebas', NULL, NULL, NULL, NULL, NULL, NULL),
('683442', 'NOROID BABY LOTION', '', '150150', NULL, 'bebas', NULL, NULL, NULL, NULL, NULL, NULL),
('824952', 'NOROID LOTION', '', '155925', NULL, 'bebas', NULL, NULL, NULL, NULL, NULL, NULL),
('921418', 'NOVABIOTIC 500 MG', '', '1732', NULL, 'bebas', NULL, NULL, NULL, NULL, NULL, NULL),
('670594', 'NOVAGYL SYRUP', '', '12000', NULL, 'bebas', NULL, NULL, NULL, NULL, NULL, NULL),
('877656', 'NOVALDO INJ - METAMIZOLE', '', '17325', NULL, 'bebas', NULL, NULL, NULL, NULL, NULL, NULL),
('056763', 'NOVALGIN 250 MG ( METAMIZOL )', '', '51975', NULL, 'bebas', NULL, NULL, NULL, NULL, NULL, NULL),
('001374', 'NOVALGIN TAB 500MG', '21000', '2310', 'NOVALGIN TAB 500MG.jpg', 'bebas', 9, 3, 100, 100, '2021-02-21', '2021-03-21'),
('948304', 'NOVAT - INTRA UTERINE DEVICE', '', '346500', NULL, 'bebas', NULL, NULL, NULL, NULL, NULL, NULL),
('460541', 'NOVAXIFEN TAB 400 MG (IBUPROFEN) / ETAFEN', '', '1050', NULL, 'bebas', NULL, NULL, NULL, NULL, NULL, NULL),
('653809', 'NOVELAS ESENSIAL LOTION STRETCH MARK', '', '78750', NULL, 'bebas', NULL, NULL, NULL, NULL, NULL, NULL),
('891877', 'NOVIX (MELOXICAM 7.5 MG)', '', '9210.6', NULL, 'bebas', NULL, NULL, NULL, NULL, NULL, NULL),
('575623', 'NOZA', '', '577', NULL, 'bebas', NULL, NULL, NULL, NULL, NULL, NULL),
('150849', 'NS ( NACL ) PZ', '', '17325', NULL, 'bebas', NULL, NULL, NULL, NULL, NULL, NULL),
('959839', 'NS ( NACL ) PZ (100 CC)', '', '19950', NULL, 'bebas', NULL, NULL, NULL, NULL, NULL, NULL),
('061677', 'NUCALCI ', '', '178899', NULL, 'bebas', NULL, NULL, NULL, NULL, NULL, NULL),
('646302', 'NUCRAL (SUKRALFAT)', '', '76576.5', NULL, 'bebas', NULL, NULL, NULL, NULL, NULL, NULL),
('167328', 'NUGALMIN ', '', '10392.9', NULL, 'bebas', NULL, NULL, NULL, NULL, NULL, NULL),
('818604', 'NUTRIBEAST', '', '12084.45', NULL, 'bebas', NULL, NULL, NULL, NULL, NULL, NULL),
('479523', 'NUTRIFLAM', '', '15750', NULL, 'bebas', NULL, NULL, NULL, NULL, NULL, NULL),
('754090', 'NUTRIMAMA 1 CAP ( SPESIALIS )', '', '11340', NULL, 'bebas', NULL, NULL, NULL, NULL, NULL, NULL),
('228730', 'NUTRIMAMA 1 CAP ( SPESIALIS ) ISI 15', '', '12629.4', NULL, 'bebas', NULL, NULL, NULL, NULL, NULL, NULL),
('573853', 'NUTRIMAMA 2 CAP ( SPESIALIS )', '', '11340', NULL, 'bebas', NULL, NULL, NULL, NULL, NULL, NULL),
('614167', 'NUTRIMAMA 2 CAP ( SPESIALIS ) ISI 15', '', '12629.4', NULL, 'bebas', NULL, NULL, NULL, NULL, NULL, NULL),
('992737', 'NUTRIMAMA 3 CAP ( SPECIALIS )', '', '11340', NULL, 'bebas', NULL, NULL, NULL, NULL, NULL, NULL),
('553803', 'NUTRIMAMA 3 CAP ( SPECIALIS ) ISI 15', '', '12629.4', NULL, 'bebas', NULL, NULL, NULL, NULL, NULL, NULL),
('069336', 'NUVIGEN', '', '9269.4', NULL, 'bebas', NULL, NULL, NULL, NULL, NULL, NULL),
('434357', 'NUVOGIN', '', '6300', NULL, 'bebas', NULL, NULL, NULL, NULL, NULL, NULL),
('955994', 'NYNDIA / MYCONYS ( NYSTATIN )', '', '47250', NULL, 'bebas', NULL, NULL, NULL, NULL, NULL, NULL),
('861298', 'OA KAPSUL', '', '6930', NULL, 'bebas', NULL, NULL, NULL, NULL, NULL, NULL),
('648804', 'OBDHAMIN', '', '5460', NULL, 'bebas', NULL, NULL, NULL, NULL, NULL, NULL),
('408844', 'OBH COMBI PLUS', '', '15015', NULL, 'bebas', NULL, NULL, NULL, NULL, NULL, NULL),
('737610', 'ODR SYRUP ( ONDANSETRON)', '', '126000', NULL, 'bebas', NULL, NULL, NULL, NULL, NULL, NULL),
('369965', 'OESTROGEL', '', '317625', NULL, 'bebas', NULL, NULL, NULL, NULL, NULL, NULL),
('156006', 'OKSITOSIN', '', '11550', NULL, 'bebas', NULL, NULL, NULL, NULL, NULL, NULL),
('506379', 'OMEGTRIM SYR', '', '10500', NULL, 'bebas', NULL, NULL, NULL, NULL, NULL, NULL),
('931336', 'OMELLEGAR TAB (LORATADINE)', '', '525', NULL, 'bebas', NULL, NULL, NULL, NULL, NULL, NULL),
('798554', 'OMERIC', '', '577', NULL, 'bebas', NULL, NULL, NULL, NULL, NULL, NULL),
('934693', 'ONDANE ( ONDANSETRON ) 4 ML 8 MG', '', '57750', NULL, 'bebas', NULL, NULL, NULL, NULL, NULL, NULL),
('195710', 'ONDANE 2 ML', '', '40425', NULL, 'bebas', NULL, NULL, NULL, NULL, NULL, NULL),
('630921', 'ONE MED TEST PECK', '', '5250', NULL, 'bebas', NULL, NULL, NULL, NULL, NULL, NULL),
('828614', 'OPICEF ( CEFADROXIL )', '', '13125', NULL, 'bebas', NULL, NULL, NULL, NULL, NULL, NULL),
('445588', 'OPIMOX ( AMOXICILIN )', '', '3675', NULL, 'bebas', NULL, NULL, NULL, NULL, NULL, NULL),
('430115', 'OPIXIME ( CEFIXIME )', '', '24570', NULL, 'bebas', NULL, NULL, NULL, NULL, NULL, NULL),
('790497', 'OPOX (LOPERAMIDE)', '', '2252.25', NULL, 'bebas', NULL, NULL, NULL, NULL, NULL, NULL),
('181519', 'ORALIT', '', '1470', NULL, 'bebas', NULL, NULL, NULL, NULL, NULL, NULL),
('724762', 'OSKADON', '', '2100', NULL, 'bebas', NULL, NULL, NULL, NULL, NULL, NULL),
('422669', 'OTOLIN ( CHLORAMPENICOL + BENZOCAIN )', '', '38850', NULL, 'bebas', NULL, NULL, NULL, NULL, NULL, NULL),
('291352', 'OTOPAIN TETES TELINGA ( CHLORAMPENICOL + BENZOCAIN', '', '63735', NULL, 'bebas', NULL, NULL, NULL, NULL, NULL, NULL),
('837159', 'OTORYL 25 - CAPTOPRIL', '', '577', NULL, 'bebas', NULL, NULL, NULL, NULL, NULL, NULL),
('001984', 'OTSU CATCH I.V CATHETHER 22 GX1\" ( 25 MM)', '', '9817', NULL, 'bebas', NULL, NULL, NULL, NULL, NULL, NULL),
('202332', 'OTSU CATCH I.V CATHETHER 24 GX1\" ( 25 MM)', '', '13860', NULL, 'bebas', NULL, NULL, NULL, NULL, NULL, NULL),
('587128', 'OVISKIN N', '', '11550', NULL, 'bebas', NULL, NULL, NULL, NULL, NULL, NULL),
('139283', 'OVISKIN N CREAM 10MG', '', '19950', NULL, 'bebas', NULL, NULL, NULL, NULL, NULL, NULL),
('746003', 'OXCAL', '', '6930', NULL, 'bebas', NULL, NULL, NULL, NULL, NULL, NULL),
('862855', 'OXOPECT SYR', '', '42000', NULL, 'bebas', NULL, NULL, NULL, NULL, NULL, NULL),
('896576', 'OXOPERIN SOLUTIO PER BOTOL', '', '100000', NULL, 'bebas', NULL, NULL, NULL, NULL, NULL, NULL),
('931641', 'OXOPERIN SOLUTIO PER MILI / CC (30 MILI/ BOTOL)', '', '3990', NULL, 'bebas', NULL, NULL, NULL, NULL, NULL, NULL),
('925568', 'OXYTETRACYCLINE - SALEP MATA', '', '6825', NULL, 'bebas', NULL, NULL, NULL, NULL, NULL, NULL),
('997986', 'OXYTOSIN', '', '17325', NULL, 'bebas', NULL, NULL, NULL, NULL, NULL, NULL),
('938447', 'PAMOL DROP', '', '60952.5', NULL, 'bebas', NULL, NULL, NULL, NULL, NULL, NULL),
('557984', 'PAMOL SYRUP 60 ML PCT - PARACATAMOL SYRUP', '', '25000', NULL, 'bebas', NULL, NULL, NULL, NULL, NULL, NULL),
('009430', 'PANADOL BIRU', '', '8085', NULL, 'bebas', NULL, NULL, NULL, NULL, NULL, NULL),
('701478', 'PANADOL HIJAU', '', '9817', NULL, 'bebas', NULL, NULL, NULL, NULL, NULL, NULL),
('931489', 'PANADOL MERAH', '', '9240', NULL, 'bebas', NULL, NULL, NULL, NULL, NULL, NULL),
('862061', 'PANTOCAIN', '', '23100', NULL, 'bebas', NULL, NULL, NULL, NULL, NULL, NULL),
('966340', 'PANTOPUMP', '', '144375', NULL, 'bebas', NULL, NULL, NULL, NULL, NULL, NULL),
('567078', 'PARACETAMOL INFUS 1000 MG / PYREXIN INFUS', '', '63000', NULL, 'bebas', NULL, NULL, NULL, NULL, NULL, NULL),
('594452', 'PARAMEX', '', '2100', NULL, 'bebas', NULL, NULL, NULL, NULL, NULL, NULL),
('187623', 'PATRAL', '', '10510.5', NULL, 'bebas', NULL, NULL, NULL, NULL, NULL, NULL),
('265046', 'PEHACAIN', '', '11550', NULL, 'bebas', NULL, NULL, NULL, NULL, NULL, NULL),
('688538', 'PEPZOL / TOPAZOL 40 MG INJEKSI', '', '160000', NULL, 'bebas', NULL, NULL, NULL, NULL, NULL, NULL),
('146088', 'PEPZOL 40 MG TABLET', '', '24255', NULL, 'bebas', NULL, NULL, NULL, NULL, NULL, NULL),
('378418', 'PEPZOL-PANTOPRAZOLE 20MG TABLET', '', '18480', NULL, 'bebas', NULL, NULL, NULL, NULL, NULL, NULL),
('874299', 'PERBAN PANJANG', '', '157500', NULL, 'bebas', NULL, NULL, NULL, NULL, NULL, NULL),
('659607', 'PHAMINOV ( AMINOPHYLLINE )', '', '24255', NULL, 'bebas', NULL, NULL, NULL, NULL, NULL, NULL),
('305146', 'PHENZACOL ', '', '750.75', NULL, 'bebas', NULL, NULL, NULL, NULL, NULL, NULL),
('778199', 'PIRACETAM 200 MG INJEKSI GENERIK', '', '23100', NULL, 'bebas', NULL, NULL, NULL, NULL, NULL, NULL),
('262848', 'PIRACETAM TABLET', '', '1155', NULL, 'bebas', NULL, NULL, NULL, NULL, NULL, NULL),
('574036', 'PIROTOP 5 MG CREAM (SPESIALIS)', '', '55566', NULL, 'bebas', NULL, NULL, NULL, NULL, NULL, NULL),
('290375', 'PIROXICAM G 10 MG', '', '577', NULL, 'bebas', NULL, NULL, NULL, NULL, NULL, NULL),
('230713', 'PKD-1 ( INFUSION SET MACRO )', '', '18900', NULL, 'bebas', NULL, NULL, NULL, NULL, NULL, NULL),
('399445', 'PKD-2 ( INFUSION  SET MICRO )', '', '18900', NULL, 'bebas', NULL, NULL, NULL, NULL, NULL, NULL),
('025574', 'POLDANMIG', '', '3150', NULL, 'bebas', NULL, NULL, NULL, NULL, NULL, NULL),
('820527', 'POLYMEN FILM ISLAND', '', '157500', NULL, 'bebas', NULL, NULL, NULL, NULL, NULL, NULL),
('079712', 'POVIRAL CREAM ( ACYCLOVIR )', '', '20000', NULL, 'bebas', NULL, NULL, NULL, NULL, NULL, NULL),
('752839', 'POVIRAL TAB', '', '2900', NULL, 'bebas', NULL, NULL, NULL, NULL, NULL, NULL),
('107972', 'PREDNISONE 5MG', '', '577', NULL, 'bebas', NULL, NULL, NULL, NULL, NULL, NULL),
('114350', 'PRENATIN DF', '', '3465', NULL, 'bebas', NULL, NULL, NULL, NULL, NULL, NULL),
('168946', 'PRESCHOL 10 / SIMVASTATIN', '', '7875', NULL, 'bebas', NULL, NULL, NULL, NULL, NULL, NULL),
('291779', 'PRESTRENOL', '', '6352', NULL, 'bebas', NULL, NULL, NULL, NULL, NULL, NULL),
('414979', 'PRIMAQUINE GENERIK 15 MG', '', '577', NULL, 'bebas', NULL, NULL, NULL, NULL, NULL, NULL),
('890595', 'PROCETAM 3 G - PIRACETAM INJEKSI', '', '69300', NULL, 'bebas', NULL, NULL, NULL, NULL, NULL, NULL),
('842164', 'PROCUR PLUS KAPSUL', '', '11550', NULL, 'bebas', NULL, NULL, NULL, NULL, NULL, NULL),
('485016', 'PRODEXON ( DEXAMETHASON 0.5 MG )', '', '600', NULL, 'bebas', NULL, NULL, NULL, NULL, NULL, NULL),
('040345', 'PROFAT SIRUP (SPESIALIS)', '', '88588.5', NULL, 'bebas', NULL, NULL, NULL, NULL, NULL, NULL),
('368012', 'PROFEN - IBUPROFEN SYRUP', '', '26500', NULL, 'bebas', NULL, NULL, NULL, NULL, NULL, NULL),
('943116', 'PROFIM ( CEFIXIME ) SYRUP', '', '3150', NULL, 'bebas', NULL, NULL, NULL, NULL, NULL, NULL),
('301301', 'PROGINA SPECIALIS', '', '48300', NULL, 'bebas', NULL, NULL, NULL, NULL, NULL, NULL),
('577820', 'PROHELIC TAB', '', '8108.1', NULL, 'bebas', NULL, NULL, NULL, NULL, NULL, NULL),
('265351', 'PROHISTIN ( LORATADIN )', '', '5460', NULL, 'bebas', NULL, NULL, NULL, NULL, NULL, NULL),
('815552', 'PROIMUN SYRUP', '', '57750', NULL, 'bebas', NULL, NULL, NULL, NULL, NULL, NULL),
('209382', 'PROMAMA ', '', '11413.5', NULL, 'bebas', NULL, NULL, NULL, NULL, NULL, NULL),
('121155', 'PROMAVIT', '', '5040', NULL, 'bebas', NULL, NULL, NULL, NULL, NULL, NULL),
('801362', 'PROMEDEX TABLET', '', '1900', NULL, 'bebas', NULL, NULL, NULL, NULL, NULL, NULL),
('303223', 'PROMIN TAB', '', '9240', NULL, 'bebas', NULL, NULL, NULL, NULL, NULL, NULL),
('178010', 'PRONIS ( PEMANIS PUYER )', '', '20475', NULL, 'bebas', NULL, NULL, NULL, NULL, NULL, NULL),
('264100', 'PROPRANOLOL 10 MG TABLET', '', '525', NULL, 'bebas', NULL, NULL, NULL, NULL, NULL, NULL),
('694794', 'PROPRANOLOL 40 MG TABLET', '', '945', NULL, 'bebas', NULL, NULL, NULL, NULL, NULL, NULL),
('749878', 'PROPYRETIC 160 ( PARACETAMOL SUPP )', '', '19635', NULL, 'bebas', NULL, NULL, NULL, NULL, NULL, NULL),
('675934', 'PROPYRETIC 80 MG ( PARACETAMOL SUPP )', '', '17325', NULL, 'bebas', NULL, NULL, NULL, NULL, NULL, NULL),
('100403', 'PROSTE (GLOCOSAMIN CONDROITIN)', '', '4620', NULL, 'bebas', NULL, NULL, NULL, NULL, NULL, NULL),
('164399', 'PROTHYRA TAB ( SPESIALIS )', '', '8085', NULL, 'bebas', NULL, NULL, NULL, NULL, NULL, NULL),
('999268', 'PROTIFED SYRUP', '', '11550', NULL, 'bebas', NULL, NULL, NULL, NULL, NULL, NULL),
('671906', 'PROVAGIN OVULA', '', '20000', NULL, 'bebas', NULL, NULL, NULL, NULL, NULL, NULL),
('223816', 'PROVOMER FC B6 ', '', '3360', NULL, 'bebas', NULL, NULL, NULL, NULL, NULL, NULL),
('928925', 'PSIDII SYR', '', '54600', NULL, 'bebas', NULL, NULL, NULL, NULL, NULL, NULL),
('395142', 'PSIDII TABLET', '', '6930', NULL, 'bebas', NULL, NULL, NULL, NULL, NULL, NULL),
('634675', 'PULMICORT NEBU', '', '48058.5', NULL, 'bebas', NULL, NULL, NULL, NULL, NULL, NULL),
('728089', 'PYRANTEL 125 MG', '', '288', NULL, 'bebas', NULL, NULL, NULL, NULL, NULL, NULL),
('207123', 'PYREXIN 160 SUPP', '', '19635', NULL, 'bebas', NULL, NULL, NULL, NULL, NULL, NULL),
('781251', 'PYTRAMIC', '', '3753.75', NULL, 'bebas', NULL, NULL, NULL, NULL, NULL, NULL),
('532990', 'Q10-DS', '', '29999.55', NULL, 'bebas', NULL, NULL, NULL, NULL, NULL, NULL),
('206971', 'RANITIDIN INJEKSI GENERIK NOVEL 25 MG/ML', '', '3465', NULL, 'bebas', NULL, NULL, NULL, NULL, NULL, NULL),
('717743', 'RANITIDIN TAB 150 MG', '', '577', NULL, 'bebas', NULL, NULL, NULL, NULL, NULL, NULL),
('501343', 'REBONE / GCM (GLUCOSAMIN CONDROITIN)', '', '13860', NULL, 'bebas', NULL, NULL, NULL, NULL, NULL, NULL),
('835602', 'RECO TETES MATA ( CHLORAMPHENICOL )', '', '11550', NULL, 'bebas', NULL, NULL, NULL, NULL, NULL, NULL),
('754212', 'RECO -TETES TELINGA CHLORAMPHENICOL', '', '11550', NULL, 'bebas', NULL, NULL, NULL, NULL, NULL, NULL),
('679535', 'RECO ZALF MATA', '', '11550', NULL, 'bebas', NULL, NULL, NULL, NULL, NULL, NULL),
('399170', 'REDOXON', '', '34650', NULL, 'bebas', NULL, NULL, NULL, NULL, NULL, NULL),
('511261', 'REGRESSOR TAB', '', '4200', NULL, 'bebas', NULL, NULL, NULL, NULL, NULL, NULL),
('963563', 'REXAVIN 500 MG', '', '3465', NULL, 'bebas', NULL, NULL, NULL, NULL, NULL, NULL),
('811249', 'RHEMAFAR - METHYLPREDNISONE', '', '1155', NULL, 'bebas', NULL, NULL, NULL, NULL, NULL, NULL),
('818482', 'RHINOS JUNIOR SYR', '', '39375', NULL, 'bebas', NULL, NULL, NULL, NULL, NULL, NULL),
('028718', 'RHINOS NEO DROP', '', '57750', NULL, 'bebas', NULL, NULL, NULL, NULL, NULL, NULL),
('928772', 'RIAMYCIN ( THIAMPENICOL ) 500 MG', '', '1732', NULL, 'bebas', NULL, NULL, NULL, NULL, NULL, NULL),
('331635', 'RINDOBION', '', '1732', NULL, 'bebas', NULL, NULL, NULL, NULL, NULL, NULL),
('603028', 'RINDOFLOX-CIPROFLOXACIN', '', '13860', NULL, 'bebas', NULL, NULL, NULL, NULL, NULL, NULL),
('356720', 'RINDOMOX - AMOXICILLIN 500MG', '', '2310', NULL, 'bebas', NULL, NULL, NULL, NULL, NULL, NULL),
('243592', 'RINDOMOX 250 MG SYR', '', '32340', NULL, 'bebas', NULL, NULL, NULL, NULL, NULL, NULL),
('959443', 'RINDOPAIN - KETOROLAC', '', '4042', NULL, 'bebas', NULL, NULL, NULL, NULL, NULL, NULL),
('096558', 'RINDOPAIN INJ - KETOROLAC', '', '28875', NULL, 'bebas', NULL, NULL, NULL, NULL, NULL, NULL),
('964020', 'RISTEON', '', '8085', NULL, 'bebas', NULL, NULL, NULL, NULL, NULL, NULL),
('001771', 'RIXONE - CEFTRIAXONE', '', '190575', NULL, 'bebas', NULL, NULL, NULL, NULL, NULL, NULL),
('913422', 'RL', '', '21000', NULL, 'bebas', NULL, NULL, NULL, NULL, NULL, NULL),
('142823', 'RYCEF 1GRAM / BIOCEF INJ / LAPIXIME INJ', '', '200000', NULL, 'bebas', NULL, NULL, NULL, NULL, NULL, NULL),
('819367', 'SAGALON', '', '39270', NULL, 'bebas', NULL, NULL, NULL, NULL, NULL, NULL),
('797059', 'SAGESTAN CREAM ( GENTAMICIN )', '', '16380', NULL, 'bebas', NULL, NULL, NULL, NULL, NULL, NULL),
('912323', 'SALBRON (SALBUTANOL 2 MG)', '', '1155', NULL, 'bebas', NULL, NULL, 1000, NULL, NULL, NULL),
('085572', 'SALON PAS', '', '11550', NULL, 'bebas', NULL, NULL, NULL, NULL, NULL, NULL),
('391511', 'SANAFLU', '', '2100', NULL, 'bebas', NULL, NULL, NULL, NULL, NULL, NULL),
('723206', 'SANGOBION', '', '1200', NULL, 'bebas', NULL, NULL, NULL, NULL, NULL, NULL),
('174897', 'SANMOL DROP', '', '21000', NULL, 'bebas', NULL, NULL, NULL, NULL, NULL, NULL),
('768555', 'SCABIMITE KECIL / SCACID ZALF', '', '57807.75', NULL, 'bebas', NULL, NULL, NULL, NULL, NULL, NULL),
('649201', 'SCABIMITE ZALF BESAR', '', '110250', NULL, 'bebas', NULL, NULL, NULL, NULL, NULL, NULL),
('373963', 'SCANTIPID ( GEMFIBROZIL )', '', '5775', NULL, 'bebas', NULL, NULL, NULL, NULL, NULL, NULL),
('419892', 'SEDROFEN (CEFADROXIL SPECIALIS) / LAPICEF TAB', '', '15750', NULL, 'bebas', NULL, NULL, NULL, NULL, NULL, NULL),
('535523', 'SELKOM-C', '', '1500', NULL, 'bebas', NULL, NULL, NULL, NULL, NULL, NULL),
('061188', 'SELVIM', '', '556.5', NULL, 'bebas', NULL, NULL, NULL, NULL, NULL, NULL),
('843079', 'SENSITIVE - TEST PACK', '', '28350', NULL, 'bebas', NULL, NULL, NULL, NULL, NULL, NULL),
('866059', 'SIM DHA', '', '63000', NULL, 'bebas', NULL, NULL, NULL, NULL, NULL, NULL),
('230225', 'SIMEXIM INJ ', '', '210000', NULL, 'bebas', NULL, NULL, NULL, NULL, NULL, NULL),
('596222', 'SIMFIX SYRUP (CEFIXIME)', '', '105000', NULL, 'bebas', NULL, NULL, NULL, NULL, NULL, NULL),
('724305', 'SIMFLOX TAB', '', '15750', NULL, 'bebas', NULL, NULL, NULL, NULL, NULL, NULL),
('232148', 'SIMTRAM ', '', '11693.85', NULL, 'bebas', NULL, NULL, NULL, NULL, NULL, NULL),
('196412', 'SIMZEN DROP (CETERIZINE )', '', '86100', NULL, 'bebas', NULL, NULL, NULL, NULL, NULL, NULL),
('723053', 'SOFRA-TULLE 1/2 LEMBAR', '', '14700', NULL, 'bebas', NULL, NULL, NULL, NULL, NULL, NULL),
('111390', 'SOFRA-TULLE 1/4 LEMBAR', '', '7350', NULL, 'bebas', NULL, NULL, NULL, NULL, NULL, NULL),
('736908', 'SOFRA-TULLE 10 X 10', '', '29925', NULL, 'bebas', NULL, NULL, NULL, NULL, NULL, NULL),
('277833', 'SPASMOLIT / SCOPAMIN TAB', '', '3377.85', NULL, 'bebas', NULL, NULL, NULL, NULL, NULL, NULL),
('410431', 'SPIRAMICYN', '', '2862.3', NULL, 'bebas', NULL, NULL, NULL, NULL, NULL, NULL),
('598084', 'SPIRONOLACTON', '', '2310', NULL, 'bebas', NULL, NULL, NULL, NULL, NULL, NULL),
('099091', 'SPUIT 1 CC', '', '4200', NULL, 'bebas', NULL, NULL, NULL, NULL, NULL, NULL),
('818238', 'SPUIT 10 CC', '', '4200', NULL, 'bebas', NULL, NULL, NULL, NULL, NULL, NULL),
('127106', 'SPUIT 3 CC', '', '4200', NULL, 'bebas', NULL, NULL, NULL, NULL, NULL, NULL),
('278138', 'SPUIT 5 CC', '', '4200', NULL, 'bebas', NULL, NULL, NULL, NULL, NULL, NULL),
('537446', 'SPUIT 50 CC ', '', '21262.5', NULL, 'bebas', NULL, NULL, NULL, NULL, NULL, NULL),
('661377', 'STENIROL (MP 4 )', '', '4879.35', NULL, 'bebas', NULL, NULL, NULL, NULL, NULL, NULL),
('841828', 'STOBLED', '', '11550', NULL, 'bebas', NULL, NULL, NULL, NULL, NULL, NULL),
('745301', 'SUCCUS CATHETER / SELANG SUCTION', '', '23100', NULL, 'bebas', NULL, NULL, NULL, NULL, NULL, NULL),
('770722', 'SUPERHOID', '', '5775', NULL, 'bebas', NULL, NULL, NULL, NULL, NULL, NULL),
('151001', 'SUPRA LIVRON', '', '577', NULL, 'bebas', NULL, NULL, NULL, NULL, NULL, NULL),
('023346', 'SUPRAVIT TAB', '', '577', NULL, 'bebas', NULL, NULL, NULL, NULL, NULL, NULL),
('093323', 'SURFLO 26', '', '49612.5', NULL, 'bebas', NULL, NULL, NULL, NULL, NULL, NULL),
('017670', 'SURFLO NO 18', '', '18900', NULL, 'bebas', NULL, NULL, NULL, NULL, NULL, NULL),
('130860', 'SURFLO NO 22 ( MAKRO )', '', '18900', NULL, 'bebas', NULL, NULL, NULL, NULL, NULL, NULL),
('640412', 'SURFLO NO 24 ( MIKRO )', '', '18900', NULL, 'bebas', NULL, NULL, NULL, NULL, NULL, NULL),
('915955', 'SUTURE NEEDLE HEATING NO. 10', '', '28875', NULL, 'bebas', NULL, NULL, NULL, NULL, NULL, NULL),
('997040', 'SUTURE NEEDLE HEATING NO. 12', '', '28875', NULL, 'bebas', NULL, NULL, NULL, NULL, NULL, NULL),
('944703', 'SUTURE NEEDLE HEATING NO. 14', '', '28875', NULL, 'bebas', NULL, NULL, NULL, NULL, NULL, NULL),
('161774', 'SVT 10MG (SIMVASTATIN)', '', '1680', NULL, 'bebas', NULL, NULL, NULL, NULL, NULL, NULL),
('306946', 'TAXIME CAPSUL 100 MG', '', '7000', NULL, 'bebas', NULL, NULL, NULL, NULL, NULL, NULL),
('927582', 'TAXIME CAPSUL 200 MG', '', '5231.1', NULL, 'bebas', NULL, NULL, NULL, NULL, NULL, NULL),
('436280', 'TAXIME SYRUP', '', '46200', NULL, 'bebas', NULL, NULL, NULL, NULL, NULL, NULL),
('556183', 'TEGADERM', '', '69300', NULL, 'bebas', NULL, NULL, NULL, NULL, NULL, NULL),
('860047', 'TEKASOL OINMENT 10 GRAM (SPESIALIS)', '', '56080.5', NULL, 'bebas', NULL, NULL, NULL, NULL, NULL, NULL),
('528046', 'TENSOCREFE 15X4.5 CM', '', '98175', NULL, 'bebas', NULL, NULL, NULL, NULL, NULL, NULL),
('949341', 'TENSOCREFE 7.5X4.5 CM', '', '57750', NULL, 'bebas', NULL, NULL, NULL, NULL, NULL, NULL),
('292389', 'TEOSAL', '', '577', NULL, 'bebas', NULL, NULL, NULL, NULL, NULL, NULL),
('669007', 'TERANOL INJ', '', '57750', NULL, 'bebas', NULL, NULL, NULL, NULL, NULL, NULL),
('017182', 'TERANOL TAB', '', '6500', NULL, 'bebas', NULL, NULL, NULL, NULL, NULL, NULL),
('327637', 'TERMOMETER DIGITAL', '', '31500', NULL, 'bebas', NULL, NULL, NULL, NULL, NULL, NULL),
('339142', 'TERMOMETER RAKSA', '', '15750', NULL, 'bebas', NULL, NULL, NULL, NULL, NULL, NULL),
('327576', 'TIRIZ ( CETIRIZINE ) TABLET LAPI', '', '5460', NULL, 'bebas', NULL, NULL, NULL, NULL, NULL, NULL),
('113740', 'TITAN (RANITIDIN TAB)', '', '1200', NULL, 'bebas', NULL, NULL, NULL, NULL, NULL, NULL),
('914917', 'TIVOMIT ( METOCLOPRAMIDE HCL )', '', '577', NULL, 'bebas', NULL, NULL, NULL, NULL, NULL, NULL),
('165192', 'TOFEDEX INJEKSI', '', '63000', NULL, 'bebas', NULL, NULL, NULL, NULL, NULL, NULL),
('929505', 'TOFEDEX TABLET', '', '9450', NULL, 'bebas', NULL, NULL, NULL, NULL, NULL, NULL),
('036469', 'TOMAAG / STROMAG TABLET MAAG', '', '1155', NULL, 'bebas', NULL, NULL, NULL, NULL, NULL, NULL),
('554932', 'TOMAAG FORTE SYRUP', '', '25410', NULL, 'bebas', NULL, NULL, NULL, NULL, NULL, NULL),
('739289', 'TOMIT INJ (METOKLOPRAMID)', '', '17325', NULL, 'bebas', NULL, NULL, NULL, NULL, NULL, NULL),
('068543', 'TRAMADOL TABLET', '', '808', NULL, 'bebas', NULL, NULL, NULL, NULL, NULL, NULL),
('504120', 'TRANSPULMIN (KUNING) DEWASA', '', '65625', NULL, 'bebas', NULL, NULL, NULL, NULL, NULL, NULL),
('591431', 'TRANSPULMIN BB (PUTIH) BAYI', '', '65625', NULL, 'bebas', NULL, NULL, NULL, NULL, NULL, NULL),
('530182', 'TRIAMCORT ( TRIAMCINOLONE )', '', '4100', NULL, 'bebas', NULL, NULL, NULL, NULL, NULL, NULL),
('838440', 'TRIBESTAN', '', '15015', NULL, 'bebas', NULL, NULL, NULL, NULL, NULL, NULL),
('735444', 'TRICKER INJ / RANITIDIN INJ', '', '28875', NULL, 'bebas', NULL, NULL, NULL, NULL, NULL, NULL),
('868165', 'TRICLOFEM 1ML/3BLN INJEKSI', '', '17325', NULL, 'bebas', NULL, NULL, NULL, NULL, NULL, NULL),
('506623', 'TRIFED TABLET (TRIPOL. PSEUDO)', '', '2310', NULL, 'bebas', NULL, NULL, NULL, NULL, NULL, NULL),
('832947', 'TRIMOXSUL SYR / MEPROTRIN SYR', '', '30000', NULL, 'bebas', NULL, NULL, NULL, NULL, NULL, NULL),
('449189', 'TRIVEXAN SUSPENSI', '', '11550', NULL, 'bebas', NULL, NULL, NULL, NULL, NULL, NULL),
('728882', 'TROGYL ( METRONIDAZOLE )', '', '3465', NULL, 'bebas', NULL, NULL, NULL, NULL, NULL, NULL),
('137360', 'ULTRA SONIQUE GEL 5L', '', '210000', NULL, 'bebas', NULL, NULL, NULL, NULL, NULL, NULL),
('145813', 'UNALIUM - FLUNARIZINE 10 MG', '', '12474', NULL, 'bebas', NULL, NULL, NULL, NULL, NULL, NULL),
('864106', 'UNALIUM - FLUNARIZINE 5 MG', '', '8258.25', NULL, 'bebas', NULL, NULL, NULL, NULL, NULL, NULL),
('017334', 'UNDERPAD', '', '11550', NULL, 'bebas', NULL, NULL, NULL, NULL, NULL, NULL),
('391144', 'UNIGEN', '', '11025', NULL, 'bebas', NULL, NULL, NULL, NULL, NULL, NULL),
('370789', 'URINE BAG', '', '23100', NULL, 'bebas', NULL, NULL, NULL, NULL, NULL, NULL),
('698945', 'URINTER', '', '5800', NULL, 'bebas', NULL, NULL, NULL, NULL, NULL, NULL),
('077271', 'UTROGESTAN 100 MG-MICRONISED PROGESTERONE', '', '16800', NULL, 'bebas', NULL, NULL, NULL, NULL, NULL, NULL),
('736725', 'UTROGESTAN 200MG -MICRONISED PROGESTERONE', '', '30450', NULL, 'bebas', NULL, NULL, NULL, NULL, NULL, NULL),
('601624', 'VAGISTIN SUPP', '', '25410', NULL, 'bebas', NULL, NULL, NULL, NULL, NULL, NULL),
('172455', 'VAKSIN HEPATITIS B', '', '89250', NULL, 'bebas', NULL, NULL, NULL, NULL, NULL, NULL),
('752442', 'VAKSIN SERVIK', '', '808500', NULL, 'bebas', NULL, NULL, NULL, NULL, NULL, NULL),
('142853', 'VAKSIN TETANUS ( TETAGAM )', '', '249900', NULL, 'bebas', NULL, NULL, NULL, NULL, NULL, NULL),
('432068', 'VALAMIN', '', '92400', NULL, 'bebas', NULL, NULL, NULL, NULL, NULL, NULL),
('003388', 'VASTIGO (BETAHISTINE MESILATE)', '', '1575', NULL, 'bebas', NULL, NULL, NULL, NULL, NULL, NULL),
('386597', 'VENAROID (RUTIN . EKSTRAKS CURCUMAE )', '', '9135', NULL, 'bebas', NULL, NULL, NULL, NULL, NULL, NULL),
('078278', 'VENTOLIN INHELER', '', '138600', NULL, 'bebas', NULL, NULL, NULL, NULL, NULL, NULL),
('955872', 'VENTOLIN NEBULES 2.5 MG', '', '23100', NULL, 'bebas', NULL, NULL, NULL, NULL, NULL, NULL),
('410492', 'VENVLON', '', '21000', NULL, 'bebas', NULL, NULL, NULL, NULL, NULL, NULL),
('823487', 'VIPALBUMIN ( ALBUMIN )', '', '7500', NULL, 'bebas', NULL, NULL, NULL, NULL, NULL, NULL),
('511750', 'VIT B COMPLEK ( KALENG )', '', '577', NULL, 'bebas', NULL, NULL, NULL, NULL, NULL, NULL),
('766785', 'VIT C ( KALENG )', '', '577', NULL, 'bebas', NULL, NULL, NULL, NULL, NULL, NULL),
('112519', 'VIT K INJEKSI GANTI NEO K', '', '20000', NULL, 'bebas', NULL, NULL, NULL, NULL, NULL, NULL),
('406861', 'VITAMIN C + COLLAGEN', '', '78750', NULL, 'bebas', NULL, NULL, NULL, NULL, NULL, NULL),
('912018', 'VOLTAREN GEL', '', '42000', NULL, 'bebas', NULL, NULL, NULL, NULL, NULL, NULL),
('958558', 'VOMETRON ( ONDANSETRON  4 MG / 2 ML )', '', '40425', NULL, 'bebas', NULL, NULL, NULL, NULL, NULL, NULL),
('328217', 'VOMETRON 4 MG', '', '19635', NULL, 'bebas', NULL, NULL, NULL, NULL, NULL, NULL),
('980469', 'VOMETRON SYRUP', '', '105000', NULL, 'bebas', NULL, NULL, NULL, NULL, NULL, NULL),
('247834', 'VOMIL B6', '', '2625', NULL, 'bebas', NULL, NULL, NULL, NULL, NULL, NULL),
('124939', 'WINATIN ( LORATADINE )', '', '1155', NULL, 'bebas', NULL, NULL, NULL, NULL, NULL, NULL),
('776337', 'WINGS NEEDLE NO 23', '', '17325', NULL, 'bebas', NULL, NULL, NULL, NULL, NULL, NULL),
('888062', 'WINGS NEEDLE NO 25', '', '17325', NULL, 'bebas', NULL, NULL, NULL, NULL, NULL, NULL),
('987946', 'XDN 1 CC(XILOMIDON.DURADRYL.NEUTROPIN)', '', '7875', NULL, 'bebas', NULL, NULL, NULL, NULL, NULL, NULL),
('359681', 'XEPAMOL / SANMOL FORTE', '', '29400', NULL, 'bebas', NULL, NULL, NULL, NULL, NULL, NULL),
('675629', 'XIDANE CAPS ( AXTASANTIN ) / ASTA PLUS', '', '12600', NULL, 'bebas', NULL, NULL, NULL, NULL, NULL, NULL),
('973389', 'XILLOMIDON', '', '11550', NULL, 'bebas', NULL, NULL, NULL, NULL, NULL, NULL),
('101105', 'XYLOMIDON INJ', '', '23100', NULL, 'bebas', NULL, NULL, NULL, NULL, NULL, NULL),
('256531', 'YARIDON (DOMPERIDON) TAB', '', '2310', NULL, 'bebas', NULL, NULL, NULL, NULL, NULL, NULL),
('744843', 'YARIDON SUSP - DOMPERIDON', '', '32340', NULL, 'bebas', NULL, NULL, NULL, NULL, NULL, NULL),
('580201', 'YARIZINE SYR', '', '34125', NULL, 'bebas', NULL, NULL, NULL, NULL, NULL, NULL),
('056061', 'YASMIN', '', '215250', NULL, 'bebas', NULL, NULL, NULL, NULL, NULL, NULL),
('909241', 'Y-RINS', '', '33000', NULL, 'bebas', NULL, NULL, NULL, NULL, NULL, NULL),
('202729', 'ZEGREN 50 ( NATRIUM / SODIUM DIKLOFENAK )', '', '1995', NULL, 'bebas', NULL, NULL, NULL, NULL, NULL, NULL),
('552247', 'ZIBRAMAX ( AZITHROMYCIN )', '', '142065', NULL, 'bebas', NULL, NULL, NULL, NULL, NULL, NULL),
('821564', 'ZINE 10 MG (SPESIALIS)', '', '6006', NULL, 'bebas', NULL, NULL, NULL, NULL, NULL, NULL),
('911561', 'ZORALIN ( KETOCONAZOLE  ) ZALF', '', '28875', NULL, 'bebas', NULL, NULL, NULL, NULL, NULL, NULL),
('768036', 'ZORALIN TABLET ( KETOCONAZOLE )', '', '3150', NULL, 'bebas', NULL, NULL, NULL, NULL, NULL, NULL),
('010494', 'TEQUINOL', '240000', '119100', 'tequin.jpg', 'bebas', 9, 4, 27000, 27000, '2021-11-01', '2023-11-01'),
('150194', 'Haemocaine', '40000', '45000', 'Haemocainee.jpg', 'bebas', 6, 7, 37000, 46000, '2020-11-02', '2022-11-02');

-- --------------------------------------------------------

--
-- Table structure for table `produk_pasien`
--

CREATE TABLE `produk_pasien` (
  `id_pp` int(11) NOT NULL,
  `id_kk` int(11) NOT NULL,
  `id_kasir` int(11) NOT NULL,
  `no_faktur` varchar(20) DEFAULT NULL,
  `nama_pr` varchar(50) NOT NULL,
  `kode_pr` varchar(50) NOT NULL,
  `harga_beli` varchar(50) NOT NULL,
  `jumlah` int(11) NOT NULL,
  `harga_pr` varchar(50) NOT NULL,
  `no_urut` int(11) NOT NULL,
  `tanggal` date NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `produk_pengiriman`
--

CREATE TABLE `produk_pengiriman` (
  `id` int(11) NOT NULL,
  `tgl_kirim` date DEFAULT NULL,
  `kode_barang` varchar(50) DEFAULT NULL,
  `nama_p` varchar(50) DEFAULT NULL,
  `jumlah` int(11) NOT NULL,
  `jml_sblm_kirim` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `produk_pengiriman`
--

INSERT INTO `produk_pengiriman` (`id`, `tgl_kirim`, `kode_barang`, `nama_p`, `jumlah`, `jml_sblm_kirim`) VALUES
(1, '2020-03-09', '251069', 'DOTRAMOL-PARACETAMOL-TRAMADOL', 2, 0),
(2, '2020-03-09', '661713', 'ALKOHOL 70 %', 1, 0),
(3, '2020-03-09', '661713', 'ALKOHOL 70 %', 2, 1),
(4, '2020-03-09', '661713', 'ALKOHOL 70 %', 1, 3),
(5, '2020-03-09', '661713', 'ALKOHOL 70 %', 2, 4),
(6, '2020-03-09', '661713', 'ALKOHOL 70 %', 1, 6),
(7, '2020-03-09', '661713', 'ALKOHOL 70 %', 2, 7),
(8, '2020-03-09', '251069', 'DOTRAMOL-PARACETAMOL-TRAMADOL', 1, 2),
(9, '2020-03-09', '251069', 'DOTRAMOL-PARACETAMOL-TRAMADOL', 1, 3),
(10, '2020-03-09', '251069', 'DOTRAMOL-PARACETAMOL-TRAMADOL', 5, 2),
(11, '2020-03-09', '766785', 'VIT C ( KALENG )', 11, 0),
(12, '2020-03-09', '581543', 'ALKOHOL KECIL', 5, 0),
(13, '2020-03-09', '186097', 'ANTIMO DEWASA', 50, 0),
(14, '2020-03-09', '643464', 'ANTANGIN JRG', 30, 0),
(15, '2020-03-09', '180024', 'BETADINE 5 LITER', 2, 0),
(16, '2020-04-15', '251069', 'DOTRAMOL-PARACETAMOL-TRAMADOL', 100, 0),
(17, '2020-04-17', '251069', 'DOTRAMOL-PARACETAMOL-TRAMADOL', 5, 85),
(26, '2020-06-24', '766785', 'VIT C ( KALENG )', 50, 0),
(25, '2020-05-16', '504761', 'HICO - HEPARIN SODIUM', 1, 0),
(24, '2020-04-18', '251069', 'DOTRAMOL-PARACETAMOL-TRAMADOL', 80, 10),
(23, '2020-04-17', '251069', 'DOTRAMOL-PARACETAMOL-TRAMADOL', 10, 0),
(27, '2020-11-27', '010494', 'GEQUIN', 100, 0),
(28, '2020-11-27', '010494', 'GEQUIN', 50, 0),
(29, '2020-11-30', '150194', 'Hawedion', 40, 0),
(30, '2020-11-30', '150194', 'Hawedion', 70, 40),
(31, '2020-12-01', '010494', 'GEQUIN', 20, 0),
(32, '2020-12-01', '010494', 'GEQUIN', 50, 0),
(33, '2020-12-01', '150194', 'Hawedion', 60, 0),
(34, '2020-12-01', '010494', 'GEQUIN', 50, 0),
(35, '2020-12-01', '150194', 'Hawedion', 80, 0),
(36, '2020-12-15', '010494', 'GEQUIN', 49, 49),
(37, '2020-12-22', '', '', 0, 0),
(38, '2020-12-22', '150194', 'Hawedion', 20, 80),
(39, '2020-12-28', '150194', 'Hawedion', 5, 100),
(40, '2020-12-30', '010494', 'GEQUIN', 10, 98),
(41, '2021-01-04', '150194', 'Hawedion', 5, 105),
(42, '2021-01-05', '010494', 'GEQUIN', 10, 108),
(43, '2021-01-19', '226227', 'BYE BYE FEVER BAYI', 150, 190),
(44, '2021-01-19', '954468', 'BYE BYE FEVER ANAK', 100, 96),
(45, '2021-01-19', '180024', 'BETADINE 5 LITER', 100, 2),
(46, '2021-01-26', '226227', 'BYE BYE FEVER BAYI', 150, 340),
(47, '2021-01-26', '954468', 'BYE BYE FEVER ANAK', 100, 196),
(48, '2021-01-26', '581543', 'ALKOHOL KECIL', 50, 3),
(49, '2021-01-26', '460419', 'BENANG ETILON 6.0 (UTK WAJAH) T-LENE', 50, 0),
(50, '2021-02-05', '636628', 'AB VASK  10 MG', 100, 100),
(51, '2021-02-05', '678528', 'BETADIN OBAT KUMUR', 30, 0),
(52, '2021-02-05', '151886', 'CAMAAG SYRUP 100 ML / ANTASIDA', 30, 0);

-- --------------------------------------------------------

--
-- Table structure for table `produk_ps`
--

CREATE TABLE `produk_ps` (
  `id` int(11) NOT NULL,
  `kode_produk` varchar(50) NOT NULL,
  `nama_produk` varchar(50) NOT NULL,
  `id_kat` int(11) NOT NULL,
  `id_sat` int(11) NOT NULL,
  `harga_jual` int(11) NOT NULL,
  `harga_b` int(11) NOT NULL,
  `cabang_maks` int(11) NOT NULL,
  `cabang_min` int(11) NOT NULL,
  `jumlah` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `produk_pusat`
--

CREATE TABLE `produk_pusat` (
  `id_p` int(11) NOT NULL,
  `nama_p` varchar(50) NOT NULL,
  `jenis_obat` enum('bebas','keras') DEFAULT NULL,
  `jumlah` int(11) NOT NULL,
  `kode_barang` varchar(50) NOT NULL,
  `hrg` varchar(50) NOT NULL,
  `hrg_jual` int(11) NOT NULL,
  `satuan` varchar(50) NOT NULL,
  `kategori` varchar(50) NOT NULL,
  `tgl_produksi` date DEFAULT NULL,
  `tgl_expired` date DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `produk_pusat`
--

INSERT INTO `produk_pusat` (`id_p`, `nama_p`, `jenis_obat`, `jumlah`, `kode_barang`, `hrg`, `hrg_jual`, `satuan`, `kategori`, `tgl_produksi`, `tgl_expired`) VALUES
(33, 'BETADINE 5 LITER', 'bebas', 505, '180024', '500000', 866250, '6', '19', '2020-08-30', '2021-10-31'),
(25, 'Hawedion', 'bebas', 50, '150194', '40000', 45000, '7', '6', '2020-11-02', '2022-11-02'),
(27, 'ANDALAN 1 MG / 3 BULAN INJEKSI', 'bebas', 380, '040070', '100000', 130000, '6', '12', '2020-12-29', '2021-08-31'),
(28, 'AB VASK  10 MG', 'bebas', 250, '636628', '88800', 168000, '1', '9', '2021-01-12', '2023-01-12'),
(29, 'ALBOTHYL ( POLICRESULEN) 10 ML', 'bebas', 800, '279603', '36500', 53000, '6', '15', '2021-01-01', '2023-01-01'),
(30, 'BYE BYE FEVER BAYI', 'bebas', 100, '226227', '5000', 8000, '8', '20', '2020-10-04', '2022-01-14'),
(31, 'BYE BYE FEVER ANAK', 'bebas', 150, '954468', '6000', 10000, '8', '20', '2020-12-06', '2022-05-10'),
(32, 'ALBOTHYL ( POLICRESULEN) 5 ML', 'bebas', 100, '947114', '50000', 65000, '6', '21', '2021-01-21', '2023-01-21'),
(34, 'ALKOHOL KECIL', 'bebas', 170, '581543', '5555', 7875, '6', '15', '2021-01-21', '2023-01-21'),
(35, 'ALKOHOL 70 %', 'bebas', 120, '661713', '26000', 46200, '6', '16', '2021-01-21', '2023-01-21'),
(36, 'BENANG ETILON 6.0 (UTK WAJAH) T-LENE', 'keras', 50, '460419', '10000', 120750, '8', '19', '2021-01-11', '2022-01-27'),
(37, 'BETADIN OBAT KUMUR', NULL, 70, '678528', '15000', 25000, '8', '19', '2020-10-25', '2021-12-31'),
(38, 'BEDAK SALICYL MENTHOL 100 MG', NULL, 150, '592225', '8000', 14700, '5', '18', '2020-11-29', '2021-12-31'),
(39, 'CAMAAG SYRUP 100 ML / ANTASIDA', NULL, 50, '151886', '35500', 40425, '6', '9', '2020-12-06', '2021-06-06'),
(40, 'ANFLAT TAB', NULL, 100, '086152', '55000', 62000, '1', '9', '2020-11-30', '2021-12-02');

-- --------------------------------------------------------

--
-- Table structure for table `produk_reture`
--

CREATE TABLE `produk_reture` (
  `id_pr` int(11) NOT NULL,
  `no_reture` varchar(50) NOT NULL,
  `kode_produk` varchar(50) NOT NULL,
  `nama_produk` varchar(50) NOT NULL,
  `id_kat` int(11) NOT NULL,
  `id_sat` int(11) NOT NULL,
  `jumlah` int(11) NOT NULL,
  `harga_jual` int(11) NOT NULL,
  `keterangan` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `produk_rs`
--

CREATE TABLE `produk_rs` (
  `id_pr` int(11) NOT NULL,
  `id_kk` int(11) DEFAULT NULL,
  `no_pengiriman` varchar(50) DEFAULT NULL,
  `no_reture` varchar(50) DEFAULT NULL,
  `kode_produk` varchar(50) NOT NULL,
  `nama_produk` varchar(50) NOT NULL,
  `id_kat` int(11) NOT NULL,
  `id_sat` int(11) NOT NULL,
  `jumlah` int(11) NOT NULL,
  `harga_jual` int(11) NOT NULL,
  `keterangan` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `produk_rusak`
--

CREATE TABLE `produk_rusak` (
  `id_p` int(11) NOT NULL,
  `kode_produk` varchar(50) NOT NULL,
  `nama_produk` varchar(50) NOT NULL,
  `id_sat` int(15) NOT NULL,
  `id_kat` int(15) NOT NULL,
  `jumlah` int(11) NOT NULL,
  `keterangan` varchar(50) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `produk_rusak`
--

INSERT INTO `produk_rusak` (`id_p`, `kode_produk`, `nama_produk`, `id_sat`, `id_kat`, `jumlah`, `keterangan`) VALUES
(1, '251069', 'DOTRAMOL-PARACETAMOL-TRAMADOL', 0, 0, 0, '');

-- --------------------------------------------------------

--
-- Table structure for table `rekening`
--

CREATE TABLE `rekening` (
  `id_rekening` int(11) NOT NULL,
  `id_kk` int(11) NOT NULL,
  `nama_bank` varchar(25) NOT NULL,
  `no_rek` varchar(25) NOT NULL,
  `atas_nama` varchar(25) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `reture`
--

CREATE TABLE `reture` (
  `id_r` int(11) NOT NULL,
  `no_pengiriman` varchar(50) NOT NULL,
  `no_reture` varchar(50) NOT NULL,
  `tanggal` date NOT NULL,
  `pengirim` varchar(50) NOT NULL,
  `asal_cabang` int(11) NOT NULL,
  `keterangan` varchar(50) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `retur_jual`
--

CREATE TABLE `retur_jual` (
  `id` int(11) NOT NULL,
  `history` int(11) DEFAULT NULL,
  `retur` int(11) DEFAULT NULL,
  `tgl` date DEFAULT NULL,
  `username` text DEFAULT NULL,
  `jml` int(11) DEFAULT NULL,
  `replaces` text DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `retur_jual`
--

INSERT INTO `retur_jual` (`id`, `history`, `retur`, `tgl`, `username`, `jml`, `replaces`) VALUES
(1, 44, 2, '2020-07-09', 'ginger', 1, NULL),
(2, 164, 1, '2020-07-10', 'ginger', 1, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `ruangan`
--

CREATE TABLE `ruangan` (
  `id` int(11) NOT NULL,
  `id_kk` int(11) DEFAULT NULL,
  `nama_ruangan` varchar(50) NOT NULL,
  `status` varchar(50) DEFAULT NULL,
  `kapasitas` int(11) NOT NULL,
  `terpakai` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ruangan`
--

INSERT INTO `ruangan` (`id`, `id_kk`, `nama_ruangan`, `status`, `kapasitas`, `terpakai`) VALUES
(1, NULL, 'Bangsal 1', NULL, 10, 0);

-- --------------------------------------------------------

--
-- Table structure for table `rujuk_inap`
--

CREATE TABLE `rujuk_inap` (
  `id` int(11) NOT NULL,
  `antrian_pasien` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `rujuk_inap`
--

INSERT INTO `rujuk_inap` (`id`, `antrian_pasien`) VALUES
(1, 37);

-- --------------------------------------------------------

--
-- Table structure for table `stok_manual`
--

CREATE TABLE `stok_manual` (
  `id` int(11) NOT NULL,
  `kode_produk` text DEFAULT NULL,
  `nama_produk` text DEFAULT NULL,
  `kategori` int(11) DEFAULT NULL,
  `satuan` int(11) DEFAULT NULL,
  `jual` double DEFAULT NULL,
  `beli` double DEFAULT NULL,
  `stok` int(11) DEFAULT NULL,
  `status` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `stok_opname`
--

CREATE TABLE `stok_opname` (
  `id_stok` int(11) NOT NULL,
  `kode_barang` varchar(50) NOT NULL,
  `nama_produk` varchar(50) NOT NULL,
  `stok_awal` varchar(50) NOT NULL,
  `terjual` varchar(50) NOT NULL,
  `retur` varchar(50) NOT NULL,
  `stok_akhir` varchar(50) NOT NULL,
  `tanggal` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `stok_opname`
--

INSERT INTO `stok_opname` (`id_stok`, `kode_barang`, `nama_produk`, `stok_awal`, `terjual`, `retur`, `stok_akhir`, `tanggal`) VALUES
(11, '180024', 'BETADINE 5 LITER', '80', '7', '', '73', '2021-02-23'),
(13, '954468', 'BYE BYE FEVER ANAK', '280', '10', '', '270', '2021-02-23'),
(14, '180024', 'BETADINE 5 LITER', '73', '1', '', '72', '2021-02-24'),
(15, '954468', 'BYE BYE FEVER ANAK', '275', '10', '', '270', '2021-02-24'),
(16, '226227', 'BYE BYE FEVER BAYI', '487', '4', '', '483', '2021-02-23'),
(17, '954468', 'BYE BYE FEVER ANAK', '487', '10', '', '270', '2021-02-23');

-- --------------------------------------------------------

--
-- Table structure for table `sub_menu`
--

CREATE TABLE `sub_menu` (
  `id_ju` varchar(11) NOT NULL,
  `id_sm` varchar(11) NOT NULL,
  `nama_sm` varchar(50) NOT NULL,
  `page_sm` varchar(50) DEFAULT NULL,
  `sts_sm` varchar(15) NOT NULL,
  `icon_fa` varchar(50) NOT NULL DEFAULT 'cog',
  `urutan` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sub_menu`
--

INSERT INTO `sub_menu` (`id_ju`, `id_sm`, `nama_sm`, `page_sm`, `sts_sm`, `icon_fa`, `urutan`) VALUES
('JU-01', 'SM-001', 'Keuangan', 'keuangan', 'Tidak Aktif', 'dollar', 121),
('JU-01', 'SM-002', 'Penjualan Obat', 'pelayanan_obat', 'Aktif', 'cog', 16),
('JU-06', 'SM-004', 'History Antrian', 'antrian', 'Aktif', 'history', 12),
('JU-01', 'SM-01010101', 'Biaya Administrasi RS', 'admin_rs', 'Aktif', 'money-check', 4),
('JU-02', 'SM-02', 'History', '#', 'Tidak Aktif', 'history', 2),
('JU-02', 'SM-023', 'Pelayanan Pasien', 'kasir_apotek', 'Non Aktif', 'cog', 2),
('JU-01', 'SM-04', 'Setting Bisnis', '#', 'Tidak Aktif', 'handshake-o', 14),
('JU-01', 'SM-05', 'Setting User', '#', 'Tidak Aktif', 'users', 13),
('JU-01', 'SM-06', 'Setting Menu', '#', 'Tidak Aktif', 'list', 15),
('JU-06', 'SM-07', 'Pembayaran', 'pembayaran_ks', 'Aktif', 'dollar-sign', 2),
('JU-01', 'SM-100', 'Pelayanan', 'kasir', 'Tidak Aktif', 'laptop', 2),
('JU-10', 'SM-101010', 'Pasien Rawat Inap', 'nurse_inap', 'Tidak Aktif', 'bed', 1),
('JU-07', 'SM-103', 'Stok Apotek', '#', 'Aktif', 'building', 7),
('JU-07', 'SM-107', 'Pembelian Produk', '#', 'Non Aktif', 'shopping-cart', 6),
('JU-07', 'SM-121212', 'Data Pendaftaran Apotek', 'apotek_antrian', 'Non Aktif', 'search', 4),
('JU-01', 'SM-124345', 'Jadwal Dokter', 'jadwal_dokter', 'Aktif', 'stethoscope', 5),
('JU-06', 'SM-124399', 'Jadwal Dokter Ganti', 'dr_ganti', 'Aktif', 'stethoscope', 4),
('JU-07', 'SM-13', 'Data Kas', 'kas', 'Aktif', 'cog', 7),
('JU-01', 'SM-133', 'Data Kas', 'kas', 'Aktif', 'cog', 18),
('JU-09', 'SM-200', 'Setting User', '#', 'Tidak Aktif', 'cog', 3),
('JU-07', 'SM-201', 'Retur Penjualan', 'retur', 'Aktif', 'exchange-alt', 10),
('JU-06', 'SM-202', 'Data Dokter', 'dokter', 'Aktif', 'user-md', 9),
('JU-06', 'SM-28', 'Pasien', '#', 'Aktif', 'user', 8),
('JU-07', 'SM-288', 'Pasien', '#', 'Non Aktif', 'user', 2),
('JU-07', 'SM-289', 'Pelayanan Dokter', '#', 'Aktif', 'stethoscope', 1),
('JU-09', 'SM-299', 'Bonus', 'bonus', 'Non Aktif', 'cog', 4),
('JU-06', 'SM-300', 'Bonus', 'bonus', 'Tidak Aktif', 'gift', 4),
('JU-06', 'SM-3000', 'Produk Pra Rilis', 'prerelease', 'Tidak Aktif', 'heartbeat', 5),
('JU-06', 'SM-302', 'Data Poliklinik', 'poliklinik', 'Aktif', 'tags', 10),
('JU-06', 'SM-303', 'Biaya Administrasi RS', 'admin_rs', 'Aktif', 'cog', 11),
('JU-06', 'SM-304', 'Pasien dan Asuransi', 'asuransi', 'Aktif', 'list-alt', 12),
('JU-06', 'SM-31', 'History Transaksi', 'history_transaksi', 'Aktif', 'history', 11),
('JU-06', 'SM-335399', 'Data Kasir Lama', 'kasir_lama', 'Tidak Aktif', 'cog', 4),
('JU-01', 'SM-33978', 'Data Kategori Biaya', 'kategori_biaya', 'Non Aktif', 'fire', 8),
('JU-06', 'SM-3434343', 'History Kasir Lama', 'history_kasir_lama', 'Non Aktif', 'cog', 4),
('JU-01', 'SM-36', 'Data Master', '#', 'Aktif', 'th-list', 7),
('JU-01', 'SM-37', 'Pembelian Produk', '#', 'Aktif', 'shopping-cart', 1),
('JU-01', 'SM-38', 'Reture Produk', 'reture', 'Non Aktif', 'sign-in', 3),
('JU-01', 'SM-39', 'Pengeluaran', 'pengeluaran', 'Tidak Aktif', 'sign-out', 4),
('JU-01', 'SM-398', 'Data Bonus', 'data_bonus', 'Non Aktif', 'cog', 2),
('JU-01', 'SM-40', 'Data Karyawan', 'karyawan', 'Non Aktif', 'users', 10),
('JU-01', 'SM-41', 'Data Dokter', 'dokter', 'Non Aktif', 'user-md', 11),
('JU-01', 'SM-42', 'Laporan Produk', '#', 'Aktif', 'book', 12),
('JU-07', 'SM-422', 'Laporan Produk', '#', 'Aktif', 'book', 11),
('JU-01', 'SM-43', 'Stok Apotek', '#', 'Aktif', 'building', 2),
('JU-01', 'SM-443', 'Pengiriman Stok', 'pengiriman_stok', 'Aktif', 'people-carry', 3),
('JU-06', 'SM-46', 'Pelayanan', 'kasir', 'Aktif', 'laptop', 1),
('JU-06', 'SM-47', 'Data Karyawan', 'karyawan', 'Tidak Aktif', 'users', 9),
('JU-06', 'SM-48', 'Data Dokter', 'dokter_cabang', 'Tidak Aktif', 'user-md', 10),
('JU-06', 'SM-49', 'Setting User', '#', 'Tidak Aktif', 'users', 14),
('JU-06', 'SM-50', 'Stok Produk', 'stok_cabang', 'Tidak Aktif', 'building', 5),
('JU-06', 'SM-5000', 'Kirim Produk Antar Klinik', '#', 'Non Aktif', 'cog', 3),
('JU-06', 'SM-55', 'Jenis Pelayanan', 'pelayanan_cabang', 'Tidak Aktif', 'list', 6),
('JU-02', 'SM-57', 'Daftar Produk', 'dokter_dafpro', 'Tidak Aktif', 'list', 3),
('JU-02', 'SM-58', 'Daftar Treatment', 'dokter_treatment', 'Tidak Aktif', 'user-md', 4),
('JU-01', 'SM-60', 'Rekening', 'rekening', 'Tidak Aktif', 'money', 10),
('JU-06', 'SM-61', 'Rekening Cabang', 'rek_cabang', 'Tidak Aktif', 'money', 7),
('JU-06', 'SM-63', 'Laporan Harian', '#', 'Tidak Aktif', 'book', 12),
('JU-01', 'SM-64', 'Broadcast Pesan', '#', 'Non Aktif', 'bullhorn', 5),
('JU-01', 'SM-65', 'Kategori Pelanggan', 'kategori_pelanggan', 'Tidak Aktif', 'users', 11),
('JU-06', 'SM-66', 'Laporan Cabang', '#', 'Tidak Aktif', 'book', 13),
('JU-02', 'SM-666', 'Jadwal Dokter', 'jadwal_dokter', 'Aktif', 'stethoscope', 3),
('JU-06', 'SM-669969', 'Rujukan Rawat Inap', 'rujuk_inap', 'Aktif', 'wheelchair', 2),
('JU-06', 'SM-67', 'Kritik Dan Saran', 'kritik_saran', 'Tidak Aktif', 'thumbs-up', 3),
('JU-06', 'SM-68', 'Pengeluaran', 'pengeluaran_cabang', 'Tidak Aktif', 'sign-out', 4),
('JU-01', 'SM-69', 'Grafik', '#', 'Tidak Aktif', 'bar-chart', 5),
('JU-06', 'SM-70', 'Setting Printer', 'set_print', 'Tidak Aktif', 'print', 14),
('JU-07', 'SM-71', 'Penjualan Obat', 'pelayanan_obat', 'Aktif', 'cog', 8),
('JU-06', 'SM-77', 'Jadwal Dokter', 'jadwal_dokter', 'Aktif', 'stethoscope', 8),
('JU-02', 'SM-777', 'Layanan Jasa', 'treatment', 'Non Aktif', 'cog', 4),
('JU-07', 'SM-7778', 'Pelayanan Pasien', 'kasir_apotek', 'Non Aktif', 'copy', 1),
('JU-02', 'SM-888', 'Stok Obat Penjualan', 'gudang_cabang', 'Aktif', 'th-list', 5),
('JU-02', 'SM-898', 'Data Pasien Rawat Jalan', 'histori_rawat_jalan', 'Aktif', 'cog', 2),
('JU-06', 'SM-9889', 'Retur Penjualan', 'retur', 'Tidak Aktif', 'chain-broken', 4),
('JU-09', 'SM-99', 'Kritik & Saran', 'kritik_saran', 'Tidak Aktif', 'thumbs-up', 3),
('JU-01', 'SM-99000999', 'Data Poliklinik', 'poliklinik', 'Non Aktif', 'tags', 9),
('JU-10', 'SM-990911', 'Data Obat Rawat Inap', 'apotek_inap', 'Aktif', 'bed', 4),
('JU-07', 'SM-990990', 'Data Obat Rawat Inap', 'apotek_inap', 'Aktif', 'bed', 4),
('JU-08', 'SM-998767', 'Pelayanan Lab', 'kasir_lab', 'Aktif', 'table', 1),
('JU-08', 'SM-998789', 'Data Antrian Lab', 'data_lab', 'Tidak Aktif', 'files-o', 2),
('JU-02', 'SM-998990', 'Data Rawat Inap', 'rawat_inap', 'Aktif', 'cog', 3),
('JU-01', 'SM-9989976', 'Jadwal Perawat', 'jadwal_perawat', 'Aktif', 'wheelchair', 6),
('JU-02', 'SM-999', 'Daftar Antrian Pasien', 'antrian_pasien', 'Aktif', 'building', 1),
('JU-10', 'SM-99998', 'Data Lab Rawat Inap', 'lab_inap', 'Aktif', 'cog', 4);

-- --------------------------------------------------------

--
-- Table structure for table `suplier`
--

CREATE TABLE `suplier` (
  `id_sup` int(5) NOT NULL,
  `nama_sup` varchar(50) NOT NULL,
  `alamat` varchar(500) NOT NULL,
  `tlp` varchar(15) NOT NULL,
  `email` varchar(20) NOT NULL,
  `penanggung_jwb` varchar(20) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `suplier`
--

INSERT INTO `suplier` (`id_sup`, `nama_sup`, `alamat`, `tlp`, `email`, `penanggung_jwb`) VALUES
(1, 'Gudang', 'Jalan', '098472642', 'produk@gmail.com', 'Sasa');

-- --------------------------------------------------------

--
-- Table structure for table `treatment`
--

CREATE TABLE `treatment` (
  `id` int(11) NOT NULL,
  `nama_t` varchar(50) NOT NULL,
  `modal` varchar(50) NOT NULL,
  `harga` double DEFAULT NULL,
  `jasa_dokter` double DEFAULT NULL,
  `manfaat` text DEFAULT NULL,
  `bpjs` double DEFAULT NULL,
  `lain` double DEFAULT NULL,
  `kategori` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `treatment`
--

INSERT INTO `treatment` (`id`, `nama_t`, `modal`, `harga`, `jasa_dokter`, `manfaat`, `bpjs`, `lain`, `kategori`) VALUES
(1, 'Pemeriksaan Biasa', '0', 12000, 10000, '-', 9000, 15000, 1),
(2, 'Perawatan Luka kena Benda Tajam', '0', 15000, 15000, 'Merawat Luka agar tidak ternfeksi', 9000, 20000, 1),
(4, 'Tes Golongan Darah', '0', 10000, 0, '-', 5000, 12000, 2),
(5, 'Tes Gula Darah', '0', 10000, 0, '-', 8000, 12000, 2),
(7, 'Konsultasi', '8000', 20000, 40000, '-', 17000, 17000, 5),
(9, 'Cek Telinga', '65000', 79000, 20000, 'Memeriksa keadaan telinga bagian dalam.', 55000, 55000, 1),
(11, 'Perawatan Kulit', '100000', 150000, 50000, 'Bermanfaat', 100000, 120000, 11);

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id_ju` varchar(5) NOT NULL,
  `id_kk` int(11) NOT NULL,
  `id_user` int(5) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(100) NOT NULL,
  `nama_lengkap` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `no_telp` varchar(15) NOT NULL,
  `foto` varchar(100) NOT NULL,
  `blokir` varchar(5) NOT NULL,
  `tgl_masuk` date NOT NULL,
  `lulusan` varchar(50) NOT NULL,
  `alamat` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id_ju`, `id_kk`, `id_user`, `username`, `password`, `nama_lengkap`, `email`, `no_telp`, `foto`, `blokir`, `tgl_masuk`, `lulusan`, `alamat`) VALUES
('JU-01', 1, 2, 'admin', '21232f297a57a5a743894a0e4a801fc3', 'Administrator', 'paid@gmail.com', '085294976830', '171625.png', 'N', '0000-00-00', '', ''),
('JU-06', 1, 8, 'resepsionis', '13016b898b3877960653191b72b2f03c', 'Resepsionis', 'ropiatunanisa@gmail.com', '08975755472311', '', 'N', '0000-00-00', '', ''),
('JU-02', 0, 9, 'drwatson', '0bdd56e52b9f2ba1568f732087ddcad9', 'Watson', '-', '-', '', 'N', '2000-01-01', '-', '-'),
('JU-02', 0, 10, 'drstrange', '8b6e10530f75d23c0a0eca4d5671db7d', 'Stephen', '-', '-', '', 'N', '2000-01-01', '-', '-'),
('JU-02', 1, 11, 'drsam', 'c4584667951e1479b8dedb9d8105f19b', 'drsam', 'drsam@gmail.com', '088212671299', '', 'N', '2020-04-15', 's3 UGM', 'Jl. jalan'),
('JU-02', 1, 12, 'drdaniel', '364393b7ac43318a848e94ee90b75835', 'drdaniel', 'daniel@gmail.com', '109923764789', '', 'N', '2020-04-15', 's3 UGM', 'Jl. Sudirman'),
('JU-02', 1, 15, 'drahn', 'd41d8cd98f00b204e9800998ecf8427e', 'Dokter Ahn', 'drahn@gmail.com', '089999888787', '84shopping_cart_PNG59.png', 'N', '2021-01-08', '2017', 'Seoul'),
('JU-02', 1, 16, 'drarf', 'bcd2e36be3672036e96fe537210ff122', 'Dr Arifuddin', 'drarh@gmail.com', '081234567890', '67spongebob-e1441057213584.jpg', 'N', '2021-02-25', '2015', 'Yogyakarta');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `antrian_pasien`
--
ALTER TABLE `antrian_pasien`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `asuransi`
--
ALTER TABLE `asuransi`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `beli`
--
ALTER TABLE `beli`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `beli_k`
--
ALTER TABLE `beli_k`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `beli_obat`
--
ALTER TABLE `beli_obat`
  ADD PRIMARY KEY (`id_beli_obat`);

--
-- Indexes for table `biaya_administrasi`
--
ALTER TABLE `biaya_administrasi`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `broadcast`
--
ALTER TABLE `broadcast`
  ADD PRIMARY KEY (`id_broadcast`);

--
-- Indexes for table `broadcast_nominal`
--
ALTER TABLE `broadcast_nominal`
  ADD PRIMARY KEY (`id_broadcast`);

--
-- Indexes for table `broadcast_pekerjaan`
--
ALTER TABLE `broadcast_pekerjaan`
  ADD PRIMARY KEY (`id_broadcast`);

--
-- Indexes for table `broadcast_treatment`
--
ALTER TABLE `broadcast_treatment`
  ADD PRIMARY KEY (`id_broadcast`);

--
-- Indexes for table `checkout`
--
ALTER TABLE `checkout`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `daftar_klinik`
--
ALTER TABLE `daftar_klinik`
  ADD PRIMARY KEY (`id_kk`);

--
-- Indexes for table `data_kas`
--
ALTER TABLE `data_kas`
  ADD PRIMARY KEY (`id_kas`);

--
-- Indexes for table `data_satuan`
--
ALTER TABLE `data_satuan`
  ADD PRIMARY KEY (`id_s`);

--
-- Indexes for table `dr_pengganti`
--
ALTER TABLE `dr_pengganti`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `dr_praktek`
--
ALTER TABLE `dr_praktek`
  ADD PRIMARY KEY (`id_drpraktek`);

--
-- Indexes for table `dr_visit`
--
ALTER TABLE `dr_visit`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `history_ap`
--
ALTER TABLE `history_ap`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `history_beli_k`
--
ALTER TABLE `history_beli_k`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `history_beli_obat`
--
ALTER TABLE `history_beli_obat`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `history_beli_t`
--
ALTER TABLE `history_beli_t`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `history_kasir`
--
ALTER TABLE `history_kasir`
  ADD PRIMARY KEY (`id`),
  ADD KEY `no_faktur` (`no_faktur`,`id_kk`),
  ADD KEY `id_pasien` (`id_pasien`,`no_urut`,`nama`,`kode`,`jenis`);

--
-- Indexes for table `history_kirim_stok`
--
ALTER TABLE `history_kirim_stok`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `identitas`
--
ALTER TABLE `identitas`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `jenis_user`
--
ALTER TABLE `jenis_user`
  ADD PRIMARY KEY (`id_ju`);

--
-- Indexes for table `karyawan`
--
ALTER TABLE `karyawan`
  ADD PRIMARY KEY (`id_karyawan`),
  ADD KEY `id_kk` (`id_kk`,`id_ju`,`username`,`password`);

--
-- Indexes for table `kasir_sementara`
--
ALTER TABLE `kasir_sementara`
  ADD PRIMARY KEY (`id`),
  ADD KEY `no_faktur` (`no_faktur`,`id_kk`),
  ADD KEY `id_pasien` (`id_pasien`,`no_urut`,`nama`,`kode`,`jenis`);

--
-- Indexes for table `kategori`
--
ALTER TABLE `kategori`
  ADD PRIMARY KEY (`id_kategori`);

--
-- Indexes for table `kategori_biaya`
--
ALTER TABLE `kategori_biaya`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `kategori_pelanggan`
--
ALTER TABLE `kategori_pelanggan`
  ADD PRIMARY KEY (`id_katpel`);

--
-- Indexes for table `kehadiran_dr`
--
ALTER TABLE `kehadiran_dr`
  ADD PRIMARY KEY (`id_keh`);

--
-- Indexes for table `kirim_stok`
--
ALTER TABLE `kirim_stok`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `krisar`
--
ALTER TABLE `krisar`
  ADD PRIMARY KEY (`id_krisar`);

--
-- Indexes for table `log`
--
ALTER TABLE `log`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `master_retur_jual`
--
ALTER TABLE `master_retur_jual`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `menu`
--
ALTER TABLE `menu`
  ADD PRIMARY KEY (`id_menu`);

--
-- Indexes for table `noticelab`
--
ALTER TABLE `noticelab`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `nurse`
--
ALTER TABLE `nurse`
  ADD PRIMARY KEY (`id_nurse`);

--
-- Indexes for table `pasca_treatment`
--
ALTER TABLE `pasca_treatment`
  ADD PRIMARY KEY (`id_pt`);

--
-- Indexes for table `pasien`
--
ALTER TABLE `pasien`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_pasien` (`id_pasien`,`id_kk`);

--
-- Indexes for table `pekerjaan`
--
ALTER TABLE `pekerjaan`
  ADD PRIMARY KEY (`id_pekerjaan`);

--
-- Indexes for table `pelayanan_obat`
--
ALTER TABLE `pelayanan_obat`
  ADD PRIMARY KEY (`id_pelayanan_obat`);

--
-- Indexes for table `pemasukan`
--
ALTER TABLE `pemasukan`
  ADD PRIMARY KEY (`id_pemasukan`);

--
-- Indexes for table `pembayaran`
--
ALTER TABLE `pembayaran`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pembayaran_apotek`
--
ALTER TABLE `pembayaran_apotek`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pembayaran_lab`
--
ALTER TABLE `pembayaran_lab`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pembelian_k`
--
ALTER TABLE `pembelian_k`
  ADD PRIMARY KEY (`id_k`);

--
-- Indexes for table `pembelian_t`
--
ALTER TABLE `pembelian_t`
  ADD PRIMARY KEY (`id_t`);

--
-- Indexes for table `pengeluaran`
--
ALTER TABLE `pengeluaran`
  ADD PRIMARY KEY (`id_pengeluaran`);

--
-- Indexes for table `pengiriman_stok`
--
ALTER TABLE `pengiriman_stok`
  ADD PRIMARY KEY (`id_ps`);

--
-- Indexes for table `perawatan_pasien`
--
ALTER TABLE `perawatan_pasien`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `poliklinik`
--
ALTER TABLE `poliklinik`
  ADD PRIMARY KEY (`id_poli`);

--
-- Indexes for table `produk`
--
ALTER TABLE `produk`
  ADD PRIMARY KEY (`id_p`),
  ADD KEY `kode_barang` (`kode_barang`),
  ADD KEY `kode_barang_2` (`kode_barang`,`nama_p`);

--
-- Indexes for table `produk_master`
--
ALTER TABLE `produk_master`
  ADD PRIMARY KEY (`kd_produk`);

--
-- Indexes for table `produk_pasien`
--
ALTER TABLE `produk_pasien`
  ADD PRIMARY KEY (`id_pp`);

--
-- Indexes for table `produk_pengiriman`
--
ALTER TABLE `produk_pengiriman`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `produk_ps`
--
ALTER TABLE `produk_ps`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `produk_pusat`
--
ALTER TABLE `produk_pusat`
  ADD PRIMARY KEY (`id_p`);

--
-- Indexes for table `produk_reture`
--
ALTER TABLE `produk_reture`
  ADD PRIMARY KEY (`id_pr`);

--
-- Indexes for table `produk_rs`
--
ALTER TABLE `produk_rs`
  ADD PRIMARY KEY (`id_pr`);

--
-- Indexes for table `produk_rusak`
--
ALTER TABLE `produk_rusak`
  ADD PRIMARY KEY (`id_p`);

--
-- Indexes for table `rekening`
--
ALTER TABLE `rekening`
  ADD PRIMARY KEY (`id_rekening`);

--
-- Indexes for table `reture`
--
ALTER TABLE `reture`
  ADD PRIMARY KEY (`id_r`);

--
-- Indexes for table `retur_jual`
--
ALTER TABLE `retur_jual`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ruangan`
--
ALTER TABLE `ruangan`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `rujuk_inap`
--
ALTER TABLE `rujuk_inap`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `stok_manual`
--
ALTER TABLE `stok_manual`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `stok_opname`
--
ALTER TABLE `stok_opname`
  ADD PRIMARY KEY (`id_stok`);

--
-- Indexes for table `sub_menu`
--
ALTER TABLE `sub_menu`
  ADD PRIMARY KEY (`id_sm`);

--
-- Indexes for table `suplier`
--
ALTER TABLE `suplier`
  ADD PRIMARY KEY (`id_sup`);

--
-- Indexes for table `treatment`
--
ALTER TABLE `treatment`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id_user`),
  ADD KEY `id_kk` (`id_kk`,`id_user`,`username`,`password`),
  ADD KEY `id_ju` (`id_ju`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `antrian_pasien`
--
ALTER TABLE `antrian_pasien`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=180;

--
-- AUTO_INCREMENT for table `asuransi`
--
ALTER TABLE `asuransi`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `beli`
--
ALTER TABLE `beli`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;

--
-- AUTO_INCREMENT for table `beli_k`
--
ALTER TABLE `beli_k`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `beli_obat`
--
ALTER TABLE `beli_obat`
  MODIFY `id_beli_obat` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `biaya_administrasi`
--
ALTER TABLE `biaya_administrasi`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `broadcast`
--
ALTER TABLE `broadcast`
  MODIFY `id_broadcast` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `broadcast_nominal`
--
ALTER TABLE `broadcast_nominal`
  MODIFY `id_broadcast` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `broadcast_pekerjaan`
--
ALTER TABLE `broadcast_pekerjaan`
  MODIFY `id_broadcast` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `broadcast_treatment`
--
ALTER TABLE `broadcast_treatment`
  MODIFY `id_broadcast` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `checkout`
--
ALTER TABLE `checkout`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `daftar_klinik`
--
ALTER TABLE `daftar_klinik`
  MODIFY `id_kk` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `data_kas`
--
ALTER TABLE `data_kas`
  MODIFY `id_kas` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `data_satuan`
--
ALTER TABLE `data_satuan`
  MODIFY `id_s` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `dr_pengganti`
--
ALTER TABLE `dr_pengganti`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `dr_praktek`
--
ALTER TABLE `dr_praktek`
  MODIFY `id_drpraktek` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=69;

--
-- AUTO_INCREMENT for table `dr_visit`
--
ALTER TABLE `dr_visit`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `history_ap`
--
ALTER TABLE `history_ap`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;

--
-- AUTO_INCREMENT for table `history_beli_k`
--
ALTER TABLE `history_beli_k`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `history_beli_obat`
--
ALTER TABLE `history_beli_obat`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=62;

--
-- AUTO_INCREMENT for table `history_beli_t`
--
ALTER TABLE `history_beli_t`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=65;

--
-- AUTO_INCREMENT for table `history_kasir`
--
ALTER TABLE `history_kasir`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=248;

--
-- AUTO_INCREMENT for table `history_kirim_stok`
--
ALTER TABLE `history_kirim_stok`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT for table `karyawan`
--
ALTER TABLE `karyawan`
  MODIFY `id_karyawan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;

--
-- AUTO_INCREMENT for table `kasir_sementara`
--
ALTER TABLE `kasir_sementara`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=281;

--
-- AUTO_INCREMENT for table `kategori`
--
ALTER TABLE `kategori`
  MODIFY `id_kategori` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `kategori_biaya`
--
ALTER TABLE `kategori_biaya`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `kategori_pelanggan`
--
ALTER TABLE `kategori_pelanggan`
  MODIFY `id_katpel` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `kehadiran_dr`
--
ALTER TABLE `kehadiran_dr`
  MODIFY `id_keh` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=86;

--
-- AUTO_INCREMENT for table `kirim_stok`
--
ALTER TABLE `kirim_stok`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `krisar`
--
ALTER TABLE `krisar`
  MODIFY `id_krisar` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `log`
--
ALTER TABLE `log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1712;

--
-- AUTO_INCREMENT for table `master_retur_jual`
--
ALTER TABLE `master_retur_jual`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `noticelab`
--
ALTER TABLE `noticelab`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- AUTO_INCREMENT for table `nurse`
--
ALTER TABLE `nurse`
  MODIFY `id_nurse` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT for table `pasca_treatment`
--
ALTER TABLE `pasca_treatment`
  MODIFY `id_pt` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=100;

--
-- AUTO_INCREMENT for table `pasien`
--
ALTER TABLE `pasien`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `pekerjaan`
--
ALTER TABLE `pekerjaan`
  MODIFY `id_pekerjaan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `pelayanan_obat`
--
ALTER TABLE `pelayanan_obat`
  MODIFY `id_pelayanan_obat` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=48;

--
-- AUTO_INCREMENT for table `pemasukan`
--
ALTER TABLE `pemasukan`
  MODIFY `id_pemasukan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `pembayaran`
--
ALTER TABLE `pembayaran`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `pembayaran_apotek`
--
ALTER TABLE `pembayaran_apotek`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=49;

--
-- AUTO_INCREMENT for table `pembayaran_lab`
--
ALTER TABLE `pembayaran_lab`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `pembelian_k`
--
ALTER TABLE `pembelian_k`
  MODIFY `id_k` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pembelian_t`
--
ALTER TABLE `pembelian_t`
  MODIFY `id_t` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pengeluaran`
--
ALTER TABLE `pengeluaran`
  MODIFY `id_pengeluaran` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `pengiriman_stok`
--
ALTER TABLE `pengiriman_stok`
  MODIFY `id_ps` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `perawatan_pasien`
--
ALTER TABLE `perawatan_pasien`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=58;

--
-- AUTO_INCREMENT for table `poliklinik`
--
ALTER TABLE `poliklinik`
  MODIFY `id_poli` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `produk`
--
ALTER TABLE `produk`
  MODIFY `id_p` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `produk_pasien`
--
ALTER TABLE `produk_pasien`
  MODIFY `id_pp` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `produk_pengiriman`
--
ALTER TABLE `produk_pengiriman`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=53;

--
-- AUTO_INCREMENT for table `produk_ps`
--
ALTER TABLE `produk_ps`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `produk_pusat`
--
ALTER TABLE `produk_pusat`
  MODIFY `id_p` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT for table `produk_reture`
--
ALTER TABLE `produk_reture`
  MODIFY `id_pr` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `produk_rs`
--
ALTER TABLE `produk_rs`
  MODIFY `id_pr` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `produk_rusak`
--
ALTER TABLE `produk_rusak`
  MODIFY `id_p` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `rekening`
--
ALTER TABLE `rekening`
  MODIFY `id_rekening` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `reture`
--
ALTER TABLE `reture`
  MODIFY `id_r` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `retur_jual`
--
ALTER TABLE `retur_jual`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `ruangan`
--
ALTER TABLE `ruangan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `rujuk_inap`
--
ALTER TABLE `rujuk_inap`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `stok_manual`
--
ALTER TABLE `stok_manual`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `stok_opname`
--
ALTER TABLE `stok_opname`
  MODIFY `id_stok` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `suplier`
--
ALTER TABLE `suplier`
  MODIFY `id_sup` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `treatment`
--
ALTER TABLE `treatment`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id_user` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
