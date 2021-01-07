-- phpMyAdmin SQL Dump
-- version 5.0.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 05, 2021 at 07:42 AM
-- Server version: 10.4.14-MariaDB
-- PHP Version: 7.4.11

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
(38, 1, '202004301221125', 'S.M.S.1', '2020-04-30', NULL, 1, 'poliklinik', '9', '1', 2, NULL, NULL, '', 'umum', 33, 0, NULL, NULL, 'NULL', 'NULL', NULL, NULL, 8),
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
(123, 1, '202012101341559', 'S.M.S.2', '2020-12-10', NULL, 6, 'apotek', NULL, '1', NULL, 70, 190, 'sakitt', 'umum', 34, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

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
('999911107', '2020-03-09', 40059, 1, '', 'tunai', '', ''),
(' ', '2020-03-09', 9021, 3, '', 'transfer', 'belum di transfer', ''),
('1', '2020-03-09', 30000, 4, '', 'tunai', 'Lunas', ''),
('1987657', '2020-03-09', 19800, 5, '', 'tunai', 'Lunas', ''),
('4311432', '2020-03-09', 11, 6, '', 'tunai', 'Lunas', ''),
('747712', '2020-03-09', 20000, 7, '', 'tunai', 'Oye', ''),
('35143', '2020-03-09', 55550, 9, '', 'transfer', 'Lunas', ''),
('20200415', '2020-04-15', 2100000, 10, '1', 'tunai', 'adad', ''),
('2020-17-04', '2020-04-17', 1050000, 11, '1', 'tunai', 'Beli', ''),
('202004171', '2020-04-17', 2100000, 12, '', '--Pilih Salah S', '131', ''),
('123311', '2020-06-24', 2100000, 13, '1', 'tunai', 'ssa', ''),
('01122020', '2020-12-01', 7300000, 29, '1', 'tunai', 'Fix 01 Desember 2020', '');

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
('03122020', '2020-12-03', 250000, 4, '1', '2021-01-03', 'IMG_20191031_110653_892.jpg'),
('10122020', '2020-12-10', 1225000, 5, '1', '2021-01-10', 'Screenshot_2021-01-02 Denisya Shop.png');

-- --------------------------------------------------------

--
-- Table structure for table `beli_obat`
--

CREATE TABLE `beli_obat` (
  `id_beli_obat` int(11) NOT NULL,
  `kd_brg` varchar(25) NOT NULL,
  `nama_brg` varchar(25) NOT NULL,
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
(8, 'Charlie', 50000000);

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
(7, 'Salep');

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
(61, 2, 12, 4, '20:00:00', '2020-12-24');

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
(6, 'S.M.S.3', '202006241127291', 11);

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
(5, 0, 1, 'S.M.S.3', '2020-03-09', 'Selesai', 'Belum Lunas', '202003091112221', 1, 'Yes', 'umum', 'poliklinik', NULL, 6, NULL, NULL, '', 'NULL', 'NULL', NULL, NULL),
(6, 0, 1, 'S.M.S.2', '2020-04-13', 'Selesai', 'Belum Lunas', '202004131420536', 2, 'Yes', 'umum', 'poliklinik', NULL, 2, 58, 165, 'Kepala pusing', '23', '12', NULL, NULL),
(7, 0, 1, 'S.M.S.2', '2020-04-14', 'Selesai', 'Lunas', '202004140921151', 3, 'Yes', 'umum', 'poliklinik', NULL, 2, 45, 165, 'Kepala terasa pusing', '35', '12', NULL, NULL),
(8, 0, 1, 'S.M.S.3', '2020-04-14', 'Selesai', 'Belum Lunas', '202004140935337', 2, 'Yes', 'umum', 'poliklinik', NULL, 2, 58, 170, 'Sakit', '35', '23', NULL, NULL),
(9, 0, 1, 'S.M.S', '2020-04-14', 'Selesai', 'Belum Lunas', '202004141234179', 1, 'Yes', 'umum', 'poliklinik', NULL, 7, 45, 170, 'sada', '23', '12', NULL, NULL),
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
(34, 0, 1, 'S.M.S.3', '2020-06-09', 'Selesai', 'Belum Lunas', '202006091553129', 13, 'Yes', 'umum', 'poliklinik', NULL, 7, 45, 165, 'adad', '44', '12', NULL, NULL),
(35, 0, 1, 'S.M.S.3', '2020-06-09', 'Selesai', 'Belum Lunas', '202006091553129', 12, 'Yes', 'umum', 'lab', 0, 7, 45, 165, 'adad', '44', '12', NULL, NULL),
(36, 0, 1, 'S.M.S.3', '2020-06-09', 'Selesai', 'Lunas', '202006091601393', 14, 'Yes', 'lain', 'poliklinik', NULL, 7, NULL, NULL, '', 'NULL', 'NULL', NULL, NULL),
(37, 0, 1, 'S.M.S.5', '2020-06-23', 'Selesai', 'Lunas', '202006231642159', 5, 'Yes', 'lain', 'poliklinik', 1, 7, 45, 165, 'Sakit', '66', '23', NULL, NULL),
(38, 0, 1, 'S.M.S.5', '2020-06-23', 'Selesai', 'Lunas', '202006231642159', 4, 'Yes', 'lain', 'lab', 1, 7, 45, 165, 'Sakit', '66', '23', NULL, NULL),
(39, 0, 1, 'S.M.S.5', '2020-06-23', 'Selesai', 'Belum Lunas', '202006231651563', 5, 'Yes', 'lain', 'lab', 0, 7, 0, 0, '', 'NULL', 'NULL', NULL, NULL),
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

INSERT INTO `history_beli_k` (`id`, `no_fak`, `tgl_beli`, `kd_brg`, `nama_brg`, `satuan`, `kategori`, `hrg`, `hrg_jual`, `batas_cabang`, `batas_minim`, `jumlah`, `diskon`, `sub_tot`, `tgl_produksi`, `tgl_expired`) VALUES
(4, '03122020', '2020-12-03', '009430', 'PANADOL BIRU', '6', '9', '10000', 0, 100, 10, '10', '0', '100000', '2020-11-24', '2022-11-24'),
(5, '03122020', '2020-12-03', '931489', 'PANADOL MERAH', '6', '9', '10000', 0, 100, 10, '15', '0', '150000', '2020-11-24', '2022-11-24'),
(6, '10122020', '2020-12-10', '010494', 'GEQUIN', '3', '9', '25000', 0, 100, 10, '49', '0', '1225000', '2020-11-01', '2022-11-01');

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

INSERT INTO `history_beli_obat` (`id`, `no_tran`, `tgl_beli`, `kd_brg`, `nama_brg`, `satuan`, `kategori`, `hrg`, `hrg_jual`, `batas_cabang`, `batas_minim`, `jumlah`, `diskon`, `sub_tot`, `tgl_produksi`, `tgl_expired`) VALUES
(1, 'TRS-00001', '2021-01-05 14:41:15', '010494', 'GEQUIN', '3', '9', '25000', 30000, 100, 10, '8', '0', '200000', '2020-11-01', '2022-11-01');

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

INSERT INTO `history_beli_t` (`id`, `no_fak`, `tgl_beli`, `kd_brg`, `nama_brg`, `satuan`, `kategori`, `hrg`, `hrg_jual`, `batas_cabang`, `batas_minim`, `jumlah`, `diskon`, `sub_tot`, `tgl_produksi`, `tgl_expired`) VALUES
(1, '999911107', '2020-03-09', '251069', 'DOTRAMOL-PARACETAMOL-TRAMADOL', '', '', '22.000', 0, 100, 10, '2', '0', '44', NULL, NULL),
(2, '999911107', '2020-03-09', '368012', 'PROFEN - IBUPROFEN SYRUP', '', '9', '15.000', 0, 100, 10, '1', '0', '15', NULL, NULL),
(3, '999911107', '2020-03-09', '766785', 'VIT C ( KALENG )', '', '9', '40000', 0, 100, 10, '1', '0', '40000', NULL, NULL),
(8, '1', '2020-03-09', '056275', 'IMBOOST F COUGH SPESIALIS', '', '9', '15000', 0, 100, 10, '2', '0', '30000', NULL, NULL),
(7, ' ', '2020-03-09', '504761', 'HICO - HEPARIN SODIUM', '', '', '3000', 0, 100, 10, '3', '0', '9000', NULL, NULL),
(9, '1987657', '2020-03-09', '682038', 'NEUROBAT FORTE INJ 3 ML/20', '', '', '20000', 0, 100, 10, '1', '1', '19800', NULL, NULL),
(10, '4311432', '2020-03-09', '497345', 'CASETAMOL SYR (PARASETAMOL)', '', '', '11.000', 0, 100, 10, '1', '0', '11', NULL, NULL),
(11, '747712', '2020-03-09', '251069', 'DOTRAMOL-PARACETAMOL-TRAMADOL', '', '', '10000', 0, 100, 10, '2', '0', '20000', NULL, NULL),
(14, '35143', '2020-03-09', '581543', 'ALKOHOL KECIL', '', '', '5555', 0, 100, 10, '10', '0', '55550', NULL, NULL),
(15, '35143', '2020-03-09', '186097', 'ANTIMO DEWASA', '', '', '', 0, 100, 10, '100', '0', '0', NULL, NULL),
(16, '35143', '2020-03-09', '643464', 'ANTANGIN JRG', '', '', '', 0, 100, 10, '50', '0', '0', NULL, NULL),
(17, '35143', '2020-03-09', '180024', 'BETADINE 5 LITER', '', '', '', 0, 100, 10, '5', '0', '0', NULL, NULL),
(18, '20200415', '2020-04-15', '251069', 'DOTRAMOL-PARACETAMOL-TRAMADOL', '', '', '21000', 0, 100, 10, '100', '0', '2100000', NULL, NULL),
(19, '2020-17-04', '2020-04-17', '251069', 'DOTRAMOL-PARACETAMOL-TRAMADOL', '', '', '21000', 0, 100, 10, '50', '0', '1050000', NULL, NULL),
(20, '202004171', '2020-04-17', '251069', 'DOTRAMOL-PARACETAMOL-TRAMADOL', '', '', '21000', 0, 100, 10, '100', '0', '2100000', NULL, NULL),
(21, '123311', '2020-06-24', '766785', 'VIT C ( KALENG )', '', '9', '21000', 0, 100, 10, '100', '0', '2100000', NULL, NULL),
(41, '01122020', '2020-12-01', '010494', 'GEQUIN', '3', '9', '25000', 30000, 100, 10, '100', '0', '2500000', '2020-11-01', '2022-11-01'),
(40, '01122020', '2020-12-01', '150194', 'Hawedion', '7', '6', '40000', 45000, 100, 10, '120', '0', '4800000', '2020-11-02', '2022-11-02');

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
(149, '202006231651563', '', 0, NULL, '2020-06-23', 1, 'Pemeriksaan Biasa', NULL, '', '15000', 1, 0, '15000', 1, 'Treatment', 'Belum Lunas', '-', 'Dokter', 2, NULL, NULL),
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
(165, '202006251055049', 'S.M.S.5', 0, NULL, '2020-06-25', 0, 'Pemeriksaan Biasa', NULL, '', '', 1, 0, '0', 0, 'Treatment', 'Belum Lunas', '-', 'Dokter', 1, '0000-00-00', NULL),
(166, '202006251055049', 'S.M.S.5', 9, NULL, '2020-06-25', 0, 'VIT C ( KALENG )', '766785', '', '', 1, 0, '0', 0, 'Produk', 'Belum Lunas', '-', 'Dokter', 0, NULL, NULL),
(172, '202006251302069', 'S.M.S.5', 0, 33, '2020-06-25', 0, 'Perawatan Luka kena Benda Tajam', NULL, '', '', 1, 0, '0', 0, 'Treatment', 'Lunas', '-', 'Dokter', 1, '0000-00-00', NULL),
(173, '202006251302069', 'S.M.S.5', 9, 33, '2020-06-25', 0, 'VIT C ( KALENG )', '766785', '', '577', 1, 0, '577', 0, 'Produk', 'Lunas', '-', 'Dokter', 0, NULL, NULL),
(174, '202006250928465', 'S.M.S.5', 9, NULL, '2020-06-25', 0, 'DOTRAMOL-PARACETAMOL-TRAMADOL', '251069', '', '8085', 1, 0, '8085', 0, 'Produk', 'Belum Lunas', '-', 'Dokter', 0, NULL, NULL),
(175, '202006250928465', 'S.M.S.5', 9, NULL, '2020-06-25', 0, 'VIT C ( KALENG )', '766785', '', '577', 1, 0, '577', 0, 'Produk', 'Belum Lunas', '-', 'Dokter', 0, NULL, NULL),
(176, '202005051206323', 'S.M.S.6', 9, NULL, '2020-05-15', 0, 'DOTRAMOL-PARACETAMOL-TRAMADOL', '251069', '', '8085', 1, 0, '8085', 0, 'Produk', 'Belum Lunas', '-', 'Dokter', 0, NULL, NULL),
(177, '202012101341559', 'S.M.S.2', 0, NULL, '2020-12-10', 1, 'GEQUIN', '010494', '25000', '', 1, 0, '0', 1, 'Produk', 'Belum Lunas', 'sakittt', 'Apotek', 0, NULL, NULL);

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

INSERT INTO `history_kirim_stok` (`id`, `no_peng`, `tgl_kirim`, `kd_brg`, `nama_brg`, `satuan`, `kategori`, `hrg`, `hrg_jual`, `batas_cabang`, `batas_minim`, `jumlah`, `tgl_produksi`, `tgl_expired`, `status`, `pesan`, `tgl_terima`) VALUES
(7, 'PS-00001', '2021-01-04 15:10:05', '150194', 'Hawedion', '7', '6', '40000', 45000, 100, 10, 5, '2020-11-02', '2022-11-02', 'terima', '', '2021-01-04 20:03:01'),
(8, 'PS-00002', '2021-01-05 12:07:29', '010494', 'GEQUIN', '3', '9', '25000', 30000, 100, 10, 10, '2020-11-01', '2022-11-01', 'terima', '', '2021-01-05 12:24:24');

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
(1, 'Klinik CGS', '-', 'Jl. Tatabumi Selatan No.109 Kel. Banyuraden, Kec. Gamping, Sleman - Yogyakarta', '-', 'logo.ico');

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
(39, 1, 'Laboratorium', 'P', '2000-11-02', '000', 'JU-08', 'Aktif', '2.png', '2020-11-20', 'Lab', 'S4', 'lab', 'f9664ea1803311b35f81d07d8c9e072d', 'N');

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
(1, '202003091128113', 'S.M.S.3', 0, NULL, '2020-03-09', 1, 'Konsultasi', NULL, '', '20000', 1, 0, '20000', 1, 'Treatment', 'Belum Lunas', '-', 'Dokter', 2, NULL, NULL),
(5, '202003091112221', 'S.M.S.3', 9, NULL, '2020-03-09', 1, 'Tes Golongan Darah', NULL, '', '10000', 1, 0, '10000', 1, 'Treatment', 'Belum Lunas', '-', 'Dokter', 2, NULL, NULL),
(6, '202003091112221', 'S.M.S.3', 0, NULL, '2020-03-09', 1, 'Cek Telinga', NULL, '', '79000', 1, 0, '79000', 1, 'Treatment', 'Belum Lunas', '-', 'Dokter', 2, NULL, NULL),
(13, '', '', 0, NULL, '2020-03-09', 0, 'Tes Goldar', NULL, '', '', 1, 0, '0', 1, 'Treatment', 'Belum Lunas', '-', 'Dokter', 2, NULL, NULL),
(12, '202003091422598', 'S.M.S.5', 10, NULL, '2020-03-09', 2, 'Pemeriksaan Biasa', NULL, '', '9000', 1, 2, '8820', 1, 'Treatment', 'Belum Lunas', '-', 'Dokter', 2, NULL, NULL),
(15, '202004131420536', 'S.M.S.2', 0, NULL, '2020-04-13', 1, 'Tes Gula Darah', NULL, '', '10000', 1, 0, '10000', 1, 'Treatment', 'Belum Lunas', '-', 'Dokter', 2, NULL, NULL),
(16, '202004131420536', 'S.M.S.2', 0, NULL, '2020-04-13', 1, 'Tes Golongan Darah', NULL, '', '10000', 1, 0, '10000', 1, 'Treatment', 'Belum Lunas', '-', 'Dokter', 2, NULL, NULL),
(17, '202004131420536', 'S.M.S.2', 9, NULL, '2020-04-13', 1, 'DOTRAMOL-PARACETAMOL-TRAMADOL', '251069', '', '8085', 1, 0, '8085', 0, 'Produk', 'Belum Lunas', '-', 'Dokter', 0, NULL, NULL),
(19, '202004140935337', 'S.M.S.3', 0, NULL, '2020-04-14', 1, 'Tes Golongan Darah', NULL, '', '10000', 1, 0, '10000', 1, 'Treatment', 'Belum Lunas', '-', 'Dokter', 2, NULL, NULL),
(21, '202004141234179', 'S.M.S', 9, NULL, '2020-04-14', 1, 'Pemeriksaan Biasa', NULL, '', '12000', 1, 0, '12000', 0, 'Treatment', 'Belum Lunas', '-', 'Dokter', 1, NULL, NULL),
(24, '202004141356563', 'S.M.S.2', 9, NULL, '2020-04-14', 1, 'Pemeriksaan Biasa', NULL, '', '12000', 1, 0, '12000', 0, 'Treatment', 'Belum Lunas', '-', 'Dokter', 1, NULL, NULL),
(23, '202004141344389', 'S.M.S.3', 9, NULL, '2020-04-14', 1, 'Pemeriksaan Biasa', NULL, '', '9000', 1, 0, '9000', 0, 'Treatment', 'Belum Lunas', '-', 'Dokter', 1, NULL, NULL),
(36, '202004301221125', 'S.M.S.1', 9, NULL, '2020-04-30', 0, 'ANTIMO DEWASA', '186097', '', '4620', 2, 0, '9240', 0, 'Produk', 'Belum Lunas', '-', 'Dokter', 0, NULL, NULL),
(39, '202004301221125', 'S.M.S.1', 9, NULL, '2020-05-04', 0, 'DOTRAMOL-PARACETAMOL-TRAMADOL', '251069', '', '8085', 4, 0, '32340', 0, 'Produk', 'Belum Lunas', '-', 'Dokter', 0, NULL, NULL),
(28, '', '', 0, NULL, '2020-04-15', 0, 'Tes Golongan Darah', NULL, '', '', 1, 0, '0', 1, 'Treatment', 'Belum Lunas', '-', 'Dokter', 2, NULL, NULL),
(29, '', '', 0, NULL, '2020-04-15', 0, 'Tes Gula Darah', NULL, '', '', 1, 0, '0', 1, 'Treatment', 'Belum Lunas', '-', 'Dokter', 2, NULL, NULL),
(30, '', '', 0, NULL, '2020-04-15', 0, 'Pemeriksaan Biasa', NULL, '', '', 1, 0, '0', 1, 'Treatment', 'Belum Lunas', '-', 'Dokter', 2, NULL, NULL),
(31, '', '', 0, NULL, '2020-04-15', 0, 'Tes Gula Darah', NULL, '', '', 1, 0, '0', 1, 'Treatment', 'Belum Lunas', '-', 'Dokter', 2, NULL, NULL),
(32, '', '', 0, NULL, '2020-04-15', 0, 'Tes Golongan Darah', NULL, '', '', 1, 0, '0', 1, 'Treatment', 'Belum Lunas', '-', 'Dokter', 2, NULL, NULL),
(37, '202004301221125', 'S.M.S.1', 0, NULL, '2020-04-30', 0, 'Pemeriksaan Biasa', NULL, '', '12000', 1, 0, '12000', 0, 'Treatment', 'Belum Lunas', '-', 'Dokter', 1, '0000-00-00', NULL),
(58, '', '', 0, NULL, '2020-05-07', 0, 'Pemeriksaan Biasa', NULL, '', '', 1, 0, '0', 1, 'Treatment', 'Belum Lunas', '-', 'Dokter', 2, NULL, NULL),
(57, '', '', 0, NULL, '2020-05-07', 0, 'Perawatan Luka kena Benda Tajam', NULL, '', '', 1, 0, '0', 1, 'Treatment', 'Belum Lunas', '-', 'Dokter', 2, NULL, NULL),
(82, '202005131708522', 'S.M.S.3', 0, NULL, '2020-05-16', 1, 'Perawatan Luka kena Benda Tajam', NULL, '', '15000', 1, 0, '15000', 1, 'Treatment', 'Belum Lunas', '-', 'Dokter', 2, NULL, NULL),
(81, '202005131709205', 'S.M.S', 0, NULL, '2020-05-16', 2, 'Pemeriksaan Biasa', NULL, '', '15000', 1, 0, '15000', 1, 'Treatment', 'Belum Lunas', '-', 'Dokter', 2, NULL, NULL),
(54, '', '', 0, NULL, '2020-05-07', 0, 'Pemeriksaan Biasa', NULL, '', '', 1, 0, '0', 1, 'Treatment', 'Belum Lunas', '-', 'Dokter', 2, NULL, NULL),
(53, '', '', 0, NULL, '2020-05-06', 0, 'Pemeriksaan Biasa', NULL, '', '', 1, 0, '0', 1, 'Treatment', 'Belum Lunas', '-', 'Dokter', 2, NULL, NULL),
(51, '', '', 0, NULL, '2020-05-06', 0, 'Tes Golongan Darah', NULL, '', '', 1, 0, '0', 1, 'Treatment', 'Belum Lunas', '-', 'Dokter', 2, NULL, NULL),
(52, '', '', 0, NULL, '2020-05-06', 0, 'Tes Golongan Darah', NULL, '', '', 1, 0, '0', 1, 'Treatment', 'Belum Lunas', '-', 'Dokter', 2, NULL, NULL),
(59, '', '', 0, NULL, '2020-05-07', 0, 'Pemeriksaan Biasa', NULL, '', '', 1, 0, '0', 1, 'Treatment', 'Belum Lunas', '-', 'Dokter', 2, NULL, NULL),
(165, '202006251055049', 'S.M.S.5', 0, NULL, '2020-06-25', 0, 'Pemeriksaan Biasa', NULL, '', '', 1, 0, '0', 0, 'Treatment', 'Belum Lunas', '-', 'Dokter', 1, '0000-00-00', NULL),
(129, '202005051205062', 'S.M.S.2', 0, NULL, '2020-06-05', 0, 'Pemeriksaan Biasa', NULL, '', '', 1, 0, '0', 1, 'Treatment', 'Belum Lunas', '-', 'Dokter', 2, NULL, NULL),
(130, '202005051205062', 'S.M.S.2', 0, NULL, '2020-06-05', 0, 'Pemeriksaan Biasa', NULL, '', '', 1, 0, '0', 1, 'Treatment', 'Belum Lunas', '-', 'Dokter', 2, NULL, NULL),
(131, '202006051556273', '', 0, NULL, '2020-06-06', 1, 'Pemeriksaan Biasa', NULL, '', '', 1, 0, '0', 1, 'Treatment', 'Belum Lunas', '-', 'Dokter', 2, NULL, NULL),
(114, '202005281631071', 'S.M.S 4', 0, NULL, '2020-05-28', 2, 'Pemeriksaan Biasa', NULL, '', '12000', 1, 0, '12000', 1, 'Treatment', 'Belum Lunas', '-', 'Dokter', 2, NULL, NULL),
(128, '202006040821599', 'S.M.S.6', 9, NULL, '2020-06-04', 2, 'DOTRAMOL-PARACETAMOL-TRAMADOL', '251069', '', '', 1, 0, '0', 0, 'Produk', 'Belum Lunas', '-', 'Dokter', 0, NULL, NULL),
(127, '202006040754512', 'S.M.S.3', 9, NULL, '2020-06-04', 1, 'DOTRAMOL-PARACETAMOL-TRAMADOL', '251069', '', '', 1, 0, '0', 0, 'Produk', 'Belum Lunas', '-', 'Dokter', 0, NULL, NULL),
(112, '202005281629025', 'S.M.S.3', 9, NULL, '2020-05-28', 1, 'DOTRAMOL-PARACETAMOL-TRAMADOL', '251069', '', '', 1, 0, '0', 0, 'Produk', 'Belum Lunas', '-', 'Dokter', 0, NULL, NULL),
(110, '202005281439593', 'S.M.S', 9, NULL, '2020-05-28', 1, 'DOTRAMOL-PARACETAMOL-TRAMADOL', '251069', '', '', 1, 0, '0', 0, 'Produk', 'Belum Lunas', '-', 'Dokter', 0, NULL, NULL),
(132, '202005051206323', '', 0, NULL, '2020-06-06', 1, 'Pemeriksaan Biasa', NULL, '', '12000', 1, 0, '12000', 1, 'Treatment', 'Belum Lunas', '-', 'Dokter', 2, NULL, NULL),
(133, '202006010853075', '', 0, NULL, '2020-06-06', 1, 'Pemeriksaan Biasa', NULL, '', '', 1, 0, '0', 1, 'Treatment', 'Belum Lunas', '-', 'Dokter', 2, NULL, NULL),
(134, '202006060621541', '', 0, NULL, '2020-06-06', 2, 'Pemeriksaan Biasa', NULL, '', '9000', 1, 0, '9000', 1, 'Treatment', 'Belum Lunas', '-', 'Dokter', 2, NULL, NULL),
(135, '202006060155159', '', 0, NULL, '2020-06-06', 2, 'wadad', NULL, '', '', 1, 0, '0', 1, 'Treatment', 'Belum Lunas', '-', 'Dokter', 2, NULL, NULL),
(139, '202006091553129', '', 0, NULL, '2020-06-09', 1, 'Pemeriksaan Biasa', NULL, '', '12000', 1, 0, '12000', 1, 'Treatment', 'Belum Lunas', '-', 'Dokter', 2, NULL, NULL),
(140, '202006091553129', '', 0, NULL, '2020-06-09', 1, 'Perawatan Luka kena Benda Tajam', NULL, '', '15000', 1, 0, '15000', 1, 'Treatment', 'Belum Lunas', '-', 'Dokter', 2, NULL, NULL),
(143, '202006091601393', 'S.M.S.3', 9, NULL, '2020-06-09', 1, 'DOTRAMOL-PARACETAMOL-TRAMADOL', '251069', '', '', 1, 0, '0', 0, 'Produk', 'Belum Lunas', '-', 'Dokter', 0, NULL, NULL),
(142, '202006091553129', 'S.M.S.3', 9, NULL, '2020-06-09', 1, 'Pemeriksaan Biasa', NULL, '', '12000', 1, 0, '12000', 0, 'Treatment', 'Belum Lunas', '-', 'Dokter', 1, NULL, NULL),
(144, '202006191450321', '', 0, NULL, '2020-06-19', 1, 'Pemeriksaan Biasa', NULL, '', '9000', 1, 0, '9000', 1, 'Treatment', 'Belum Lunas', '-', 'Dokter', 2, NULL, NULL),
(148, '202006231651563', '', 0, NULL, '2020-06-23', 1, 'Pemeriksaan Biasa', NULL, '', '15000', 1, 0, '15000', 1, 'Treatment', 'Belum Lunas', '-', 'Dokter', 2, NULL, NULL),
(149, '202006231651563', 'S.M.S.5', 9, NULL, '2020-06-23', 1, 'DOTRAMOL-PARACETAMOL-TRAMADOL', '251069', '', '', 1, 0, '0', 0, 'Produk', 'Belum Lunas', '-', 'Dokter', 0, NULL, NULL),
(150, '202006231651563', 'S.M.S.5', 9, NULL, '2020-06-23', 1, 'Pemeriksaan Biasa', NULL, '', '15000', 1, 0, '15000', 0, 'Treatment', 'Belum Lunas', '-', 'Dokter', 1, NULL, NULL),
(155, '202006241028013', '', 0, NULL, '2020-06-24', 1, 'Perawatan Luka kena Benda Tajam', NULL, '', '', 1, 0, '0', 1, 'Treatment', 'Belum Lunas', '-', 'Dokter', 2, NULL, NULL),
(156, '202006241127291', '', 0, NULL, '2020-06-24', 2, 'Perawatan Luka kena Benda Tajam', NULL, '', '15000', 1, 0, '15000', 1, 'Treatment', 'Belum Lunas', '-', 'Dokter', 2, NULL, NULL),
(153, '202006241028013', 'S.M.S.3', 0, NULL, '2020-06-24', 0, 'Pemeriksaan Biasa', NULL, '', '', 1, 0, '0', 0, 'Treatment', 'Belum Lunas', '-', 'Dokter', 1, '0000-00-00', NULL),
(159, '202006241127291', 'S.M.S.3', 0, NULL, '2020-06-24', 0, 'Pemeriksaan Biasa', NULL, '', '12000', 1, 0, '12000', 0, 'Treatment', 'Belum Lunas', '-', 'Dokter', 1, '0000-00-00', NULL);

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
(18, 'Bedak');

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
(10, 'Hahaha');

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
(58, 11, 0, '2020-12-10', '19:17:58');

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
(7, 'PS-00002', 'JU-01', '2021-01-05 12:07:29', 'Bismillah');

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
(1265, 'admin', 'Berhasil Login dengan IP 127.0.0.1', '2021-01-05 05:08:29'),
(1266, 'ginger', 'Berhasil Login dengan IP 127.0.0.1', '2021-01-05 05:09:12'),
(1267, 'ginger', 'Berhasil Login dengan IP 127.0.0.1', '2021-01-05 06:28:33');

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
('SM-103', 'MN-301', 'Stok Pusat', 'gudang', 'Aktif'),
('SM-103', 'MN-302', 'Stok Penjualan', 'gudang_cabang', 'Aktif'),
('SM-422', 'MN-305', 'Laporan Penerimaan', 'lap_penerimaan_pro', 'Aktif'),
('SM-15', 'MN-32', 'Pasien Baru', 'pendaftarbaru', 'Tidak Aktif'),
('SM-15', 'MN-33', 'Antrian Baru', 'data_antrian', 'Tidak Aktif'),
('SM-15', 'MN-34', 'Checkout', 'checkout', 'Tidak Aktif'),
('SM-16', 'MN-35', 'Data Resep', 'racik_resep', 'Tidak Aktif'),
('SM-16', 'MN-36', 'Data Pembayaran', 'data_resep&act=data_pemrsp', 'Tidak Aktif'),
('SM-20', 'MN-37', 'Penjualan Obat', 'penjualan_obat', 'Tidak Aktif'),
('SM-17', 'MN-38', 'Master Obat', 'master_obat', 'Tidak Aktif'),
('SM-18', 'MN-42', 'Poli', 'data_poli', 'Tidak Aktif'),
('SM-18', 'MN-46', 'Ruangan/Kamar', 'kamar', 'Tidak Aktif'),
('SM-19', 'MN-47', 'Data Tagihan', 'data_tagihan', 'Non Aktif'),
('SM-19', 'MN-48', 'Data Pembayaran', 'data_pembayaran', 'Tidak Aktif'),
('SM-20', 'MN-49', 'Data Pembayaran', 'pembayaran_po', 'Tidak Aktif'),
('SM-23', 'MN-52', 'Riwayat Dokter', 'rd', 'Tidak Aktif'),
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
('SM-36', 'MN-77', 'Kategori Produk Apotik', 'kategori', 'Tidak Aktif'),
('SM-36', 'MN-78', 'Data Satuan', 'data_satuan', 'Tidak Aktif'),
('SM-42', 'MN-79', 'Laporan Pengiriman', 'lap_pengiriman_pro', 'Aktif'),
('SM-42', 'MN-80', 'Kas', 'lap_kas', 'Non Aktif'),
('SM-42', 'MN-81', 'Laporan Perpasien', 'lap_pel', 'Tidak Aktif'),
('SM-42', 'MN-82', 'Laporan Tutup Toko', 'lap_tuto', 'Non Aktif'),
('SM-42', 'MN-83', 'Laporan Kehadiran Dokter', 'lap_kedo', 'Tidak Aktif'),
('SM-42', 'MN-84', 'Laporan Pembelian', 'lap_pempro', 'Aktif'),
('SM-422', 'MN-844', 'Laporan Pembelian', 'lap_pempro', 'Aktif'),
('SM-42', 'MN-85', 'Laporan Stock Produk', 'lap_stock', 'Tidak Aktif'),
('SM-43', 'MN-86', 'Stok Pusat', 'gudang', 'Aktif'),
('SM-43', 'MN-87', 'Stok Penjualan', 'gudang_cabang', 'Aktif'),
('SM-42', 'MN-88', 'Rugi Laba', 'rugi_laba', 'Non Aktif'),
('SM-42', 'MN-89', 'Laporan Penjualan Produk', 'lap_penjualan_pro', 'Tidak Aktif'),
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
(48, '202006241028013', 'S.M.S.3', 9, '2020-06-24', 1, 4, 'corp1', 'S');

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
(34, 61, 36);

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
(67, 0, 9, 'S.M.S.5', '202008181431504', '2020-08-18', '-', '-', '-', '27$Unity Wallpaper.jpg', '', '', '');

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
(2, 'S.M.S.2', 1, 'Anisa', 'Bantul', 'P', '2001-12-04', '18', '+628', '2019-12-11', 0, 'D', '-', '0000-00-00'),
(3, 'S.M.S.3', 1, 'Charlie', 'Kasihan, Bantul', 'Laki-', '1999-04-04', '20', '0879897834', '2020-03-09', 0, 'M', 'Wiraswasta', '0000-00-00'),
(4, 'S.M.S', 1, 'Agus', 'Yogyakarta', 'Perem', '0000-00-00', '0', '', '0000-00-00', 0, 'M', '', '0000-00-00'),
(7, 'S.M.S.1', 1, 'asep', 'Kasihan, Bantul', 'Laki-', '1990-03-01', '30', '0879897834', '2020-03-09', 0, 'D', 'Wiraswasta', '0000-00-00'),
(5, 'S.M.S 4', 1, 'Elvi', 'Jl.Cnta', 'P', '1990-03-22', '29', '081237878900', '2020-03-09', 0, 'D', 'Makelar Hp', '0000-00-00'),
(6, 'S.M.S.5', 1, 'Ade', 'Gejayan', 'Laki-', '1990-04-04', '29', '089765432123', '2020-03-09', 0, 'M', 'Orang Sibuk', '0000-00-00'),
(8, 'S.M.S.6', 1, 'Andrianis', 'Pahandut', 'Laki-', '1995-01-17', '25', '0850314314', '2020-03-12', 0, 'D', 'Barista', '0000-00-00');

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
  `no_tran` varchar(50) NOT NULL,
  `nama_pembeli` varchar(255) NOT NULL,
  `tgl_pembelian` datetime NOT NULL,
  `total` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `pelayanan_obat`
--

INSERT INTO `pelayanan_obat` (`id_pelayanan_obat`, `no_tran`, `nama_pembeli`, `tgl_pembelian`, `total`) VALUES
(3, 'TRS-00001', 'Nurlaela Khasannah', '2021-01-05 14:41:15', '200000');

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
(24, '202006251302069', 'S.M.S.5', 1, NULL, 0, '2020-06-25', '577', '1000', '0', '', 'Tunai', 0, NULL, '423', 33);

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
(40, '202006231642159', 'S.M.S.5', 0, 'Lunas', NULL, '0000-00-00', '20000', '0', NULL, NULL, NULL, NULL, NULL, '-20000', 0);

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

--
-- Dumping data for table `pembelian_t`
--

INSERT INTO `pembelian_t` (`id_t`, `kd_brg`, `nama_brg`, `satuan_t`, `kategori_t`, `hrg`, `hrg_jual`, `batas_cabang`, `batas_minim`, `jumlah`, `diskon`, `sub_tot`, `tgl_beli`, `tgl_produksi`, `tgl_expired`) VALUES
(5, '150194', 'Hawedion', 7, 6, '40000', 45000, 100, 10, '50', '0', '2000000', '2020-12-08', '2020-11-02', '2022-11-02');

-- --------------------------------------------------------

--
-- Table structure for table `pengeluaran`
--

CREATE TABLE `pengeluaran` (
  `id_p` int(11) NOT NULL,
  `tanggal` date NOT NULL,
  `kasir` varchar(50) NOT NULL,
  `biaya_p` varchar(50) NOT NULL,
  `kategori_p` varchar(50) NOT NULL,
  `ket` text NOT NULL,
  `id_kk` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `pengiriman_stok`
--

CREATE TABLE `pengiriman_stok` (
  `id_ps` int(11) NOT NULL,
  `kd_brg` varchar(25) CHARACTER SET latin1 NOT NULL,
  `nama_brg` varchar(50) CHARACTER SET latin1 NOT NULL,
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
(27, '11', 33, '202012151447238', 'S.M.S.2', 1, '2020-12-15', NULL, NULL, '', 'bpjs', 1, NULL, NULL, 'NULL', 'NULL', NULL, NULL);

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
(11, 'Poliklinik Ibu & Anak');

-- --------------------------------------------------------

--
-- Table structure for table `produk`
--

CREATE TABLE `produk` (
  `id_p` int(11) NOT NULL,
  `kode_barang` varchar(50) NOT NULL,
  `nama_p` varchar(50) NOT NULL,
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

INSERT INTO `produk` (`id_p`, `kode_barang`, `nama_p`, `jumlah`, `hrg`, `hrg_jual`, `satuan`, `kategori`, `tgl_produksi`, `tgl_expired`) VALUES
(1, '251069', 'DOTRAMOL-PARACETAMOL-TRAMADOL', 51, 0, 0, '', '', NULL, NULL),
(2, '661713', 'ALKOHOL 70 %', 7, 0, 0, '', '', NULL, NULL),
(3, '766785', 'VIT C ( KALENG )', 48, 0, 0, '', '', NULL, NULL),
(4, '581543', 'ALKOHOL KECIL', 4, 0, 0, '', '', NULL, NULL),
(5, '186097', 'ANTIMO DEWASA', 45, 0, 0, '', '', NULL, NULL),
(6, '643464', 'ANTANGIN JRG', 29, 0, 0, '', '', NULL, NULL),
(7, '180024', 'BETADINE 5 LITER', 2, 0, 0, '', '', NULL, NULL),
(13, '504761', 'HICO - HEPARIN SODIUM', 0, 0, 0, '', '', NULL, NULL),
(21, '150194', 'Hawedion', 110, 40000, 45000, '7', '6', '2020-11-02', '2022-11-02'),
(20, '010494', 'GEQUIN', 110, 25000, 30000, '3', '9', '2020-11-01', '2022-11-01');

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

INSERT INTO `produk_master` (`kd_produk`, `nama_produk`, `harga_beli`, `jual_umum`, `gambar`, `id_kategori`, `id_satuan`, `jual_bpjs`, `jual_lain`, `tgl_produksi`, `tgl_expired`) VALUES
('636628', 'AB VASK  10 MG', '', '14700', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('940980', 'ABIXIM / SIMFIX CAPSUL (CEFIXIME 100MG)', '', '21000', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('412201', 'ACARBOSA', '', '2310', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('134766', 'ACITRAL', '', '47775', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('066193', 'ACLAM 500 MG ( AMOX + AS CLAV)', '', '16000', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('326111', 'ACTALIPID TAB 20 MG / FASTOR 20', '', '15750', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('704072', 'ACTOS 30 (PIOGLITAZONE)', '8000', '15750', NULL, 0, 0, 10000, 16000, NULL, NULL),
('011109', 'ACYCLOVIR 400MG TAB', '', '577', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('400055', 'ACYCLOVIR ZALF ( ACIFAR ZALF )', '', '9975', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('279603', 'ALBOTHYL ( POLICRESULEN) 10 ML', '', '36750', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('947114', 'ALBOTHYL ( POLICRESULEN) 5 ML', '', '34650', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('565186', 'ALCO DROP ( PSEUDOEPHEDRIN HCL )', '', '75000', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('606965', 'ALERFED SYRUP / LAPIFED SYR', '', '34650', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('395203', 'ALERFED TAB / LAPIFED TABLET', '', '3150', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('860077', 'ALGANAX-0.5', '', '4879.35', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('140748', 'ALGANAX-1', '', '5000', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('155671', 'ALINAMIN F INJ / FURAMIN INJ', '', '47250', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('766663', 'ALINAMIN F TAB', '', '2310', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('661713', 'ALKOHOL 70 %', '', '46200', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('581543', 'ALKOHOL KECIL', '5555', '7875', NULL, 0, 0, 0, 0, NULL, NULL),
('014924', 'ALLETROL', '', '17325', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('987732', 'ALOFAR ( ALLOPURINOL ) 100 MG', '0', '600', NULL, 0, 0, 400, 900, NULL, NULL),
('070771', 'ALOFAR ( ALLOPURINOL ) 300 MG', '', '800', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('231324', 'ALPARA', '', '1155', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('653473', 'AMINOPHILIN GENERIK TAB', '', '577', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('152161', 'AMINOPHYLLINE INJ G', '', '8085', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('306000', 'AMOXAN 100MG DROP (AMOCIXILLIN)', '', '34650', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('933838', 'AMVAR', '', '9555', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('040070', 'ANDALAN 1 MG / 3 BULAN INJEKSI', '', '17325', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('853699', 'ANDALAN 3 MG / 3 BULAN INJEKSI', '', '17325', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('086152', 'ANFLAT TAB', '', '1050', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('032837', 'ANOXI TAB SPESIALIS', '', '4200', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('643464', 'ANTANGIN JRG', '', '2500', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('186097', 'ANTIMO DEWASA', '', '4620', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('629975', 'ANTRAIN INJEKSI', '', '56736.75', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('372071', 'APECUR SYRUP', '', '43000', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('432404', 'APIALYS DROP', '', '52500', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('743104', 'APIALYS SYRUP', '', '42000', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('656220', 'APROFIT ', '', '8872.5', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('295289', 'AQUABIDEST', '', '6930', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('875641', 'ARCAPEC SYR ( + AIR )', '', '26250', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('618470', 'ARGESID 500 ( ASAM MEFENAMAT )', '', '1732', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('383637', 'ARIMED ( MELOXICAM 15 )', '', '6825', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('646241', 'ARTEM INJEKSI', '', '63000', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('941926', 'ASAM TRANEKSAMAT INJEKSI', '', '10000', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('405945', 'ASAM TRANEXAMAT INJEKSI', '', '7087.5', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('530976', 'ASERING', '', '34650', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('768677', 'ASPILET', '', '1155', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('100007', 'ASTIN FORCE', '', '13650', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('199280', 'ATROCOX ( MELOXICAM 7.5 MG)', '', '8400', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('316987', 'ATROPIN INJ', '', '23100', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('506348', 'AVITER', '', '35000', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('318635', 'AXTAN TAB ( SPESIALIS )', '', '11550', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('592225', 'BEDAK SALICYL MENTHOL 100 MG', '', '14700', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('460419', 'BENANG ETILON 6.0 (UTK WAJAH) T-LENE', '', '120750', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('203003', 'BENANG HEATING SILK', '', '17325', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('066559', 'BENANG HEATING VICRYL', '', '115500', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('678528', 'BETADIN OBAT KUMUR', '', '15750', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('180024', 'BETADINE 5 LITER', '', '866250', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('702393', 'BETARHIN DROP', '', '53550', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('312531', 'BETARHIN SYR', '', '49350', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('051941', 'BETASON-N KRIM', '', '16721.25', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('194550', 'BIDICEF ( CEFADROXIL ) 125MG SYRUP', '', '40425', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('348267', 'BIOGESIC', '', '525', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('525300', 'BIOPLACENTON', '', '21000', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('806214', 'BLOOD SET', '', '26250', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('722748', 'BODREX', '', '6825', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('984376', 'BONVIT', '', '6930', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('673615', 'BRALIFEX ( TOBRAMYCIN )', '', '46200', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('535096', 'BUFACORT N', '', '7875', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('483368', 'BURNAZIN', '', '72000', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('954468', 'BYE BYE FEVER ANAK', '', '10000', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('226227', 'BYE BYE FEVER BAYI', '', '8000', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('332337', 'CAL -95', '', '7350', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('695160', 'CALCI GLUCONAS', '', '47250', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('102295', 'CALMET 2 MG', '', '9660', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('151886', 'CAMAAG SYRUP 100 ML / ANTASIDA', '', '40425', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('791688', 'CAMAAG TABLET', '', '1155', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('076874', 'CAMIDRYL ( DIPHENYDRAMINE ) INJEKSI', '', '17325', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('771607', 'CAMIGESIK INJ', '', '23100', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('919343', 'CAMIKOLIN SYR', '', '38850', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('006897', 'CAMISTAN ( ASAM MEFENAMAT ) 500 MG', '', '1732', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('847260', 'CANUL NASAL ANAK (CANUL O2)', '', '19950', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('806153', 'CANUL NASAL DEWASA (CANUL O2)', '', '19950', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('497345', 'CASETAMOL SYR (PARASETAMOL)', '', '16800', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('571717', 'CATGUT CROMIC', '', '17325', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('725068', 'CATGUT PLAIN', '', '17325', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('549683', 'CDR', '', '34650', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('354645', 'CEBEX TAB SPESIALIS', '', '3465', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('579896', 'CEFILA 100 MG TAB', '', '24150', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('929047', 'CEFILA 200 MG TAB', '', '36750', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('845948', 'CEFOR ( CEFOTAXIME ) INJEKSI', '', '173250', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('459992', 'CEFTRIAXONE GENERIK 1G', '', '25200', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('625184', 'CENDO FENICOL TM', '', '45000', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('177948', 'CENDO LITERS', '', '46068.75', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('038697', 'CENDO XITROL', '', '46200', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('282136', 'CEPHAPLOX - CEFTRIAXONE / CEFTRIMAX INJ', '', '291060', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('801331', 'CEPTIK TAB 100MG / 30 TAB ( CEFIXIME)', '', '26250', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('690522', 'CEPTIK TAB 200 MG / 10 TAB', '', '36750', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('971680', 'CESTER TAB ( SPESIALIS )', '', '4620', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('789826', 'CHLOR ETHIL SEMPROT', '', '135000', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('702088', 'CHLORPROMAZINE ( CPZ )', '', '1732', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('185517', 'CIFLON', '', '12600', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('988648', 'CITICOLINE INJ 250MG GENERIK INJEKSI', '', '34650', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('451813', 'CLIAD / BRAXIDIN TAB', '', '2310', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('421204', 'CLOGIN (CLOPIDOGREL) / SIMCLOVIX ', '', '19950', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('881684', 'COARTEM 20/120', '', '150150', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('933350', 'CODEIN 10 MG TAB', '', '5775', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('236847', 'COMTUSI SYR ANAK (OXOMEMAZINE.GUAIFENISIN)', '', '49665', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('552430', 'COMTUSI SYRUP', '', '49350', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('497773', 'COMTUSI TAB', '', '2730', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('149537', 'CONFORTIN CREAM ANAK', '', '30450', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('613678', 'COPARCETIN TAB ( PCT. GG. EFEDRIN. CTM)', '', '577', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('189515', 'CORTAMINE SYR / COLERGIS SYR', '', '63472.5', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('252533', 'COUNTERPAIN 15 MG', '', '25725', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('480958', 'COUNTERPAIN 30 MG', '', '38325', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('551056', 'CRIPSA', '', '20202', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('926209', 'CTM ( KALENG )', '', '577', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('864716', 'CUPANOL SYR ( PARASETAMOL )/SANMOL 120 MG', '', '29729.7', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('271363', 'CURBEXON SYRUP 100 ML', '', '46200', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('517731', 'CURCUMA TABLET', '', '1732', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('856263', 'CYCLOFEM INJ', '', '17325', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('553071', 'CYCLOGESTON INJ', '', '17325', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('364502', 'CYCLO-PROGYNOVA', '', '173250', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('482453', 'CYGEST PESSARY 200 MG - PROGESTERONE', '', '18480', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('573426', 'CYGEST PESSARY 400 MG - PROGESTERONE', '', '34650', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('036347', 'CYTOSTOL-MISOPROSTOL', '', '15015', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('104126', 'D 10', '', '23100', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('913971', 'D 40', '', '5250', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('171448', 'D 5', '', '17325', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('533295', 'D 5 1/2', '', '22821.75', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('333985', 'D 5 1/4', '', '23100', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('781037', 'D:I ( DURADRIL.INTHESA) INJ ML', '', '7875', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('244080', 'DANOCLAV FILM COATED 500 MG - AMOXICILLIN', '', '12705', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('762665', 'DEHISTA  ( KALENG ) ( CTM )', '', '577', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('397828', 'DEHISTA TAB ( CTM )', '', '577', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('552399', 'DERMAFIX', '', '47250', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('885071', 'DERMAKEL KIDS', '', '173250', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('943207', 'DERMAKEL ZALF', '', '207900', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('139405', 'DERMAKEL ZALF BESAR', '', '262500', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('196808', 'DEXAMETHASON TAB ( KALENG )', '', '577', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('688172', 'DEXTAFEN / ALEGI', '', '2310', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('793671', 'DEXTRAL', '', '1050', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('902466', 'DEXTRAL F TAB', '', '1155', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('183014', 'DHAVIT SYRUP', '', '34650', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('747132', 'DIABIT', '', '1155', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('532807', 'DIANE', '', '149100', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('530762', 'DIASTON - LOPERAMIDE HCI', '', '577', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('479767', 'DIAZEPAM 10 MG / 2ML INJEKSI', '', '57750', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('655701', 'DIAZEPAM TAB', '', '4620', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('879365', 'DIGENTA CREAM', '', '84036.75', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('368042', 'DIGESTAGON SYR / DOM SYR', '', '52500', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('555817', 'DIONICOL - THIAMPENICOL', '', '1155', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('507630', 'DIONICOL ( THIAMPENICOL ) 125 MG SYR', '', '17325', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('052094', 'DISMENO', '', '5460', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('258057', 'DIVOLTAR 50MG (NATRIUM DIKLOFENAK)', '', '1155', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('379914', 'DMP ( DEXTROMETHORPHANE ) TAB KALENG', '', '577', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('896668', 'DN 1 CC ( DURADRIL. NEUROTROPIN)', '', '6300', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('769745', 'DOFEN FORTE - IBUPROFEN', '', '1155', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('544556', 'DOHIXAT 100 MG TAB ( DOXYCYCLINE )', '', '1155', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('420807', 'DOME 10 ( DOMPERIDON )', '', '4725', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('916565', 'DOPAMET 250 MG - METHYLDOPA', '', '3465', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('251069', 'DOTRAMOL-PARACETAMOL-TRAMADOL', '', '8085', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('071290', 'DOVASK 5', '', '4042', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('647248', 'DROXAL', '', '15750', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('161072', 'DULCOLAX - BISACODYL', '', '2719.5', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('214814', 'DUMIN 125MG SUPP (PARACETAMOL)', '', '28875', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('182007', 'DUMIN 250MG SUPP', '', '34650', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('527985', 'DURADRYL INJEKSI  1ML', '', '2887', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('723938', 'DURADRYL INJEKSI - DIPHENHYDRAMINE HCI 10 MG/ML', '', '8662', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('879731', 'ELASTIC BAND BESAR', '', '98175', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('720459', 'ELASTIK BAND KECIL', '', '47250', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('031769', 'ELOX CREAM 10 MG', '', '80850', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('198914', 'ELOX CREAM 5 MG', '', '54600', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('964570', 'EMERAN (METOCLOPRAMIDE)', '', '577', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('030396', 'ENATIN TAB', '', '2887', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('627350', 'ENVIOS / NEO KAOLANA SYR', '', '15750', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('679749', 'EPHEDRINE HCI 50 MG/ML', '', '18480', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('688080', 'EPHINEPRIN 1 MG', '', '19950', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('955567', 'ERAPHAGE ( METFORMIN ) 500', '', '1575', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('283478', 'ERICAF ( ERGOTAMINE ) TAB', '', '5775', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('760193', 'ERLAMYCETIN  PLUS TETES MATA', '', '17325', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('769013', 'ERLAMYCETIN TETES TELINGA ( CHLORAMPHENICOL )', '', '17325', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('839722', 'ERLAQUIN 250 CHLOROQUIN', '', '2310', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('468903', 'ERYSANBE (ERYTROMYCIN) SIRUP', '', '36750', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('533997', 'ERYTHRIN - ERYTHROMYCIN 500MG TAB', '', '8000', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('426117', 'ERYTHRIN - ERYTHROMYCIN SYRUP', '', '55000', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('526612', 'ESFOLAT', '', '3465', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('152375', 'ETHIGOBAL / SIMCOBAL ( MECOBALAMIN 500 MG ) TAB', '', '5250', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('594910', 'EVO MASKER', '', '2100', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('378144', 'EWOMA', '', '9240', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('359986', 'EXAFLAM TAB (DICLOFENAC POTASSIUM)', '', '3822', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('802643', 'EXCELASE TAB', '', '2887', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('036683', 'EXERGIN CO-DERGOCRINE', '', '17325', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('843842', 'EXTRACE 500 / SANKORBIN INJ', '', '33600', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('183594', 'EXTROPECT - AMBROXOL', '', '2310', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('388459', 'EXTROPECT SYRUP / INTERPEC 15 SYRUP', '', '45360', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('453064', 'FARGOXIN ( DIGOXIN )', '', '577', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('541962', 'FARIDEXON 0.75 MG ( DEXAMETHASONE )', '', '735', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('341187', 'FARIZOL SYRUP - METRONIDAZOLE', '', '18480', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('378571', 'FARIZOL TAB ( METRONIDAZOLE )', '', '1155', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('937806', 'FARMALAT TAB 10 MG ( NIFEDIPIN )', '', '600', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('691254', 'FARMOTEN 12.5 MG TAB ( CAPTOPRIL )', '', '735', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('676514', 'FARMOTEN 25 MG TAB ( CAPTOPRIL )', '', '1155', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('741730', 'FARSIRETIC TAB ( FUROSEMIDE )', '', '577', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('084656', 'FARSORBID ( ISOSORBID DINITRAT ) 5MG', '', '1155', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('010468', 'FASGO FORTE / FASIDOL FORTE', '', '1680', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('533326', 'FASIPRIM - TRIMETHOPRIM SYR', '', '11550', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('946686', 'FASIPRIM (COTRIMOXASOLE)', '', '1155', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('987366', 'FASIPRIM F ( TRIMETHOPRIM )', '', '1732', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('718354', 'FAXIDEN TAB 10 MG ( PIROXICAM )', '', '1155', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('755372', 'FAXIDEN TAB 20MG ( PIROXICAM )', '', '1732', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('962189', 'FENVLON MAKRO', '', '26250', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('239686', 'FENVLON MIKRO', '', '26250', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('533661', 'FERRIZ DROP', '', '57750', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('686402', 'FERTIN / GENOCLOM  - CLOMIPHENE CITRATE', '', '23100', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('256989', 'FG TROCHES', '', '1365', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('935364', 'FIMEDIAB ( GLIBENCLAMID )', '', '577', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('675141', 'FIXAME 100 MG', '', '23100', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('170167', 'FLAZYMEC', '', '1386', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('799836', 'FOLAC-ASAM FOLAT', '', '1732', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('668152', 'FOLDA - ASAM FOLAT', '', '6930', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('861542', 'FOLEY CATHETER N0. 16', '', '23100', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('550416', 'FOLEY CATHETER NO. 12', '', '36750', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('059479', 'FOLEY CATHETER NO. 18', '', '23100', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('531800', 'FOLEY CATHETER NO. 8', '', '36750', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('311615', 'FOLEY CHATHETER NO 14', '', '23100', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('670899', 'FORDIN 50 MG INJ (SPESIALIS)', '', '39039', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('004670', 'FORELAX ( EPERISON HCL )', '', '6756.75', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('120057', 'FORGANOL (ITRACONAZOLE 100)', '', '31500', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('744111', 'FORUMEN', '', '36750', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('875367', 'FOSMICIN - FOSFOMYCIN', '', '225225', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('104157', 'FRESHCARE', '', '13650', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('526673', 'FUNGARES ZALF', '', '40425', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('377778', 'FUNGASOL TABLET', '', '5670', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('007569', 'FUNGASOL ZALF', '', '31500', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('326691', 'FUROSEMID GENERIK', '', '8925', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('345398', 'GALFLUX ( DOMPERIDON ) / DOM TABLET', '', '5250', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('931366', 'GASTRIDIN ( RANITIDINE ) INJEKSI', '', '30975', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('411255', 'GASTRIDIN (RANITIDINE) TAB - SPECIALIS', '', '7507', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('141022', 'GC KAPSUL', '', '6352', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('669983', 'GD KAPSUL', '', '6930', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('623627', 'GDR', '', '6352', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('930176', 'GENOINT SALEP MATA ( GENTAMICIN )', '', '9975', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('515900', 'GENTALEX', '', '5775', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('094178', 'GENTAMICIN INJ', '', '17325', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('173310', 'GG ( GLYCERYL GUAIACOLATE ) TAB KALENG', '', '577', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('908082', 'GIFED EXPECTORANT', '', '20790', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('920075', 'GIRABLOC 500 MG  ( CIPRO )', '', '1575', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('711731', 'GITAS ( BUSCOPAN ) / SCOPAMIN INJ', '', '36750', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('799164', 'GITAS PLUS TAB / BUSCOPAN PLUS TAB', '', '7875', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('188721', 'GLAMAROL', '', '4515', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('322297', 'GLIFORMIN ( METFORMIN )', '', '2310', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('116395', 'GLODIN', '', '2940', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('219941', 'GLOMASIN 300 - CLINDAMYCIN 300 MG', '', '8400', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('115845', 'GLOMIN INJ (DOPAMINE 40MG/ML)', '', '61950', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('191315', 'GLOSIX', '', '20790', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('401917', 'GLUCODEX (GLICLAZIDE )', '', '3465', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('654389', 'GLUDEPATIK ( METFORMIN HCL 500MG )', '', '1155', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('533204', 'GOFLEX (NABUMETONE 500 MG)', '', '11550', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('495881', 'GOFORAN ( CEFOTAXIME ) INJEKSI/ FOBET (CEFOTAXIME)', '', '189000', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('162049', 'GORALGIN (METHAMPYRONE.VIT B1. VIT B6 . VIT B12 )', '', '2310', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('821259', 'GOTROPIL 800 MG / LATROPIL 800', '', '5250', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('784546', 'GOVAZOL ', '', '102375', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('704743', 'GRAFAZOLE TAB (METRONIDAZOLE)', '', '1155', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('490540', 'GRALIXA', '', '577', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('939301', 'GRICIN', '', '1732', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('713624', 'H2 O2', '', '80850', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('786652', 'HANDSCONE OBGYN', '', '23100', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('981141', 'HANDSCONE STERIL (MRM) NO 7', '', '11550', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('727265', 'HANDSCONE STERIL NO 7.5', '', '11550', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('664185', 'HANDSCUND M', '', '84000', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('210358', 'HANSAPLAST', '', '525', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('727601', 'HARMONIS 1 BULAN', '', '17325', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('403901', 'HCT / HYDROKLORTIAZID', '', '1155', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('479981', 'HELIXIM 100 MG', '', '1969.8', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('944611', 'HEMOROGARD', '', '3465', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('323670', 'HEXCAM', '', '2310', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('687958', 'HI BONE TABLET KUNYAH ( SPOG )', '', '3570', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('504761', 'HICO - HEPARIN SODIUM', '', '28000', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('458161', 'HISTIGO (BETAHISTIN MESILATE)', '', '1732', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('863099', 'HOTIN CREAM', '', '18900', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('798188', 'HUFADIN ( RANITIDIN ) 150 MG', '', '808', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('582276', 'HYDROCORTISON ZALF (NESTACORT 2.5 % )', '', '8925', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('719758', 'HYPAFIX 10X5CM', '', '254100', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('939637', 'HYPAFIX PER CM ( HYFAFIX ) 1 BOX 50 CM', '', '5082', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('453339', 'ILIADIN', '', '68250', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('056275', 'IMBOOST F COUGH SPESIALIS', '', '9240', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('198151', 'IMFORCE PLUS KAPLET', '', '9817', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('647034', 'IMFORCE SYR 60 ML', '', '64050', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('872162', 'IMODIUM', '', '11550', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('770508', 'IMUNVIT PLUS TABLET', '', '12757.5', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('862092', 'IMUNVIT SYR', '', '120225', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('579041', 'INBION / MALTIRON PLUS TAB', '', '2310', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('773407', 'INDANOX ( CLINDAMICIN 300 )', '', '9975', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('068726', 'INDEXON INJEKSI / CORTIDEX INJ ', '', '18900', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('180329', 'INFUS SANBE HES', '', '267750', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('829407', 'INLACTA DHA', '', '7500', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('375824', 'INTERFLOX-CIPROFLOXACIN500 SPESIALIS', '', '21000', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('794678', 'INTERLAC SACHET', '', '12075', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('121613', 'INTERMIC', '', '24000', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('991883', 'INTERMOXIL ( AMOXICILLIN )', '', '5307', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('398163', 'INTERPRIL', '', '4000', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('292115', 'INTERVASK ( AMLODIPIN 5 MG )', '', '7140', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('154694', 'INTERZINC SYR / ZIRCUM KID', '', '43000', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('160218', 'INTRIZIN SYR', '', '84341.25', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('059174', 'INTUNAL F TABLET', '', '1260', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('404786', 'INTUNAL SYRUP', '', '17325', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('248322', 'INVOMIT INJ / ODR 4 MG ', '', '48300', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('928162', 'INVOMIT TAB', '', '22113', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('077607', 'ISOPLAST ONEMED', '', '19635', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('476441', 'ITAMOL ( PARACETAMOL ) 500 MG', '', '577', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('871247', 'ITAMOL FORTE ( PARACETAMOL ) 650 MG', '', '1155', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('389466', 'KAEN 3 B', '', '28875', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('672211', 'KALNEX TABLET ( ASAM TRANEKSAMAT )', '', '4725', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('350831', 'KALPANAX CAIR', '', '3465', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('992219', 'KALPANAX SALEP', '', '8400', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('137879', 'KANAMYCIN 1 G', '', '86625', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('561738', 'KANAMYCIN 2 GRAM', '', '173250', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('371705', 'KANDISTATIN', '', '51975', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('079987', 'KAPAS GULUNG 500 MG', '', '47250', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('267151', 'KAPSUL NO 0', '', '577', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('964936', 'KAPSUL NO 00', '', '577', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('382813', 'KASSA KOTAK STERIL PER BOX', '', '17325', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('103303', 'KASSA KOTAK STERIL PER LEMBAR ', '', '987', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('371033', 'KASSA ROLL 40 * 80', '', '289380', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('600556', 'KENALOG / SINOCORT PASTA ORAL', '', '63000', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('727906', 'KERTAS PUYER', '', '735', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('530915', 'KETROBAT INJ / KETOROLAK / MATOLAC INJ', '', '57750', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('543274', 'KINA TAB', '', '1732', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('687348', 'KLEM COSA', '', '5775', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('250733', 'KLODERMA', '', '28875', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('331574', 'KOMIK JERUK NIPIS', '', '1155', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('377625', 'KOMIK PEPERMINT', '', '1155', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('944062', 'KONDOM DUREX', '', '15750', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('295044', 'KONDOM FIESTA', '', '11550', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('974030', 'KONDOM SIMPLEX CHOCO', '', '10237', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('967835', 'KONDOM SUTRA', '', '6825', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('589448', 'KONDOM VIESTA ISI 3', '', '11550', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('704590', 'LACONS ( LACTOLASE )', '', '57750', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('427033', 'LACTASIN', '', '4620', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('907654', 'LAGESIL SUSPENSI ( ANTASIDA )', '', '40425', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('342255', 'LAMODEX', '', '39270', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('823121', 'LANAKELOID ( SPESIALIS )', '', '78750', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('159333', 'LANCETTE - HOMECARE', '', '1155', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('290833', 'LANSOPRAZOLE', '', '2310', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('421235', 'LAPIBROZ ( GEMFIBROZIL )', '', '5775', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('494385', 'LAPIFED EXPECTORAN SYR', '', '31500', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('139679', 'LAPIMOX 250 SYR ( AMOXICILIN )', '', '50400', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('711121', 'LAPIMOX 500 TAB (AMOXICILIN )', '', '4200', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('545136', 'LAPISTAN ( ASAM MEFENAMAT )', '', '2100', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('062134', 'LARMETA (DOMPERIDONE) TAB', '', '4725', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('836823', 'LASAL ( SALBUTAMOL ) SYR', '', '33600', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('262269', 'LASAL NEBU', '', '11340', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('932709', 'LATIBET - GLIBENCLAMIDE', '', '577', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('370118', 'LAXING', '', '3150', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('219513', 'L-BIO', '', '10500', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('538025', 'L-BIO KAPSUL DEWASA', '', '10500', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('302704', 'LEOMOXYL - AMOXICILLIN 125 / LAPIMOX 125', '', '35700', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('762085', 'LEOMOXYL TABLET - AMOXICILLIN', '', '4200', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('756501', 'LERZIN ( CETIRIZINE ) 10 MG', '', '1732', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('632142', 'LERZIN SYR 60 ML', '', '15015', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('873871', 'LIBROCEF ( CEFADROXIL ) TABLET', '', '2100', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('081788', 'LIBRONIL (GLIBENKLAMID)', '', '577', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('416535', 'LICOGENTA ZALF (GENTAMICIN)', '', '8000', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('138367', 'LICOVIR ( ACYCLOVIR )', '', '11550', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('364960', 'LIDOCAIN', '', '5775', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('672974', 'LIPOFOOD', '', '6930', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('668366', 'LOPITEN 5 MG ( AMLODIPIN ) / AB VASK 5 MG', '', '8400', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('150452', 'LOSTACEF CAP ( CEFADROXYL ) 500 MG', '', '1732', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('994721', 'LOTUS BISTURI', '', '17325', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('379395', 'L-ZINC', '', '51455.25', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('480744', 'MAGANOL', '', '1155', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('262146', 'MALTOFER ( SYRUP )', '', '75075', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('481904', 'MASKER 1 KOTAK', '', '36093.75', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('544800', 'MASKER O2 ANAK', '', '73500', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('322419', 'MASKER O2 BAYI', '', '73500', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('567200', 'MASKER O2 DEWASA', '', '73500', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('045258', 'MATXIME INJ (CEFETAXIME)', '', '189000', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('012940', 'MAXCEF ( CEFADROXIL ) TABLET', '', '15225', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('162140', 'MAXCEF SYR 125 ( CEFADROXIL )', '', '57750', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('659363', 'MAXPRINOL SYRUP', '', '86625', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('403534', 'MAXSTAN', '', '1995', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('127564', 'MAYO/GUADEL', '', '52500', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('468659', 'MECOQUIN / HUFAFLOX / FLOXIFAR', '', '1050', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('632386', 'MEDIGREL ( CLOPIDOGREL )', '', '17325', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('775483', 'MEFINTER ( ASAM MEFENAMAT ) 500 MG TAB', '', '2887', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('732422', 'MEFLAMIN 50  MG', '', '3465', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('210724', 'MELIDOX', '', '2310', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('080018', 'MERTIGO', '', '5775', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('879853', 'METHERGIN ( METHYLERGOMETRINE )/MYOTONIC', '', '17325', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('171265', 'MGSO4', '', '10500', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('857087', 'MICROLAX', '', '23100', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('096009', 'MINIASPI ', '', '1365', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('935395', 'MINOSEP GARGLE 0.1 % ( OBAT KUMUR ) DRG', '', '34650', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('287842', 'MINOSEP GARGLE 0.1 % ( OBAT KUMUR ) KECIL', '', '26334', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('376496', 'MINOSEP GARGLE 0.2 % ( OBAT KUMUR ) DRG', '', '47250', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('274109', 'MINOSEP GARGLE 0.2 % ( OBAT KUMUR ) KECIL', '', '31531.5', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('660859', 'MINYAK KAYU PUTIH CAP LANG', '', '8246.7', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('425904', 'MINYAK KAYU PUTIH DRAGON 15 ML', '', '5040', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('237702', 'MINYAK KAYU PUTIH DRAGON 30 ML', '', '10080', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('708069', 'MIPROS 200 (MISOPROSTOL)', '', '15015', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('274994', 'MOFACORT - MOMETASONE / CREAM', '', '40425', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('429200', 'MOLACORT TAB 0.75 MG ( DEXAMETHASON )', '', '577', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('409455', 'MOLAGIT / AKITA', '', '735', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('991639', 'MOLAKRIM ZALF - ANALGESIC CREAM', '', '17325', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('496552', 'MOLINFA', '', '4620', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('641480', 'MOVIX (MELOXICAM)', '', '8575.35', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('360505', 'MOZUKU SYR', '', '88725', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('218567', 'MP4MG MECOSOLON ', '', '3465', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('544282', 'MUCERA DROP', '', '52447.5', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('906495', 'MUCOGARD ( SUKRALFAT )', '', '46200', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('059601', 'MUCOS DROP', '', '47250', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('982605', 'MUCOTUSAN / LAPISIV T', '', '2625', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('136933', 'MUCOUS EXTRACTOR', '', '15750', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('567994', 'MUVERON DROP', '', '31500', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('975495', 'MUVERON SYRUP', '', '43050', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('377503', 'MYCONAZOLE CREAM TUBE', '', '15750', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('493256', 'MYOTONIC ( METHYLERGOMETRINE ) TABLET', '', '3990', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('469727', 'NATTO - 10', '', '12705', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('076935', 'NEEDLE NO. 23', '', '2887', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('997010', 'NEEDLE NO. 24', '', '2887', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('332001', 'NEEDLE NO. 25', '', '2887', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('955445', 'NEEDLE NO. 26', '', '2887', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('832673', 'NEO K / PHYFION ( VITAMIN K ) INJEKSI', '', '20000', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('934876', 'NEO PRODIAR - FURAZOLIDONE SYRUP', '', '18480', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('871918', 'NEO PROTIFED TAB', '', '1575', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('868897', 'NEO ULTRASILINE', '', '11550', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('211457', 'NEOZEP', '', '2310', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('784852', 'NEPHROLIT', '', '1443', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('831757', 'NEUCITI - 250 INJECTION ( CITICOLINE 250 MG / 2 ML', '', '60060', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('553834', 'NEUCITI - 500 INJECTION', '', '88200', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('682038', 'NEUROBAT FORTE INJ 3 ML/20', '', '15015', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('640687', 'NEUROCET', '', '2310', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('430268', 'NEURODEX', '', '1155', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('854004', 'NEUROHAX / LAPIBION', '', '1905', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('213166', 'NEUROHAX 5000', '', '2625', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('096131', 'NEUROMEC ( METAMPIRON.B6.B1.B12 )', '', '808', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('386200', 'NEUROSANBE INJEKSI / BIOCOMBIN INJ', '', '17325', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('113160', 'NEUROTROPIN', '', '11550', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('273591', 'NEUROTROPIN (ML)', '', '2887', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('244935', 'NEXITRA - ASAM TRANEXAMAT', '', '2950', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('918305', 'NGT', '', '34650', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('175049', 'NGT 12', '', '42588', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('832062', 'NGT NO 10', '', '40950', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('680848', 'NGT NO 16', '', '23100', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('745331', 'NGT NO 18', '', '23100', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('383423', 'NGT NO 5', '', '23100', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('357331', 'NGT NO 8', '', '45727.5', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('497620', 'NICOLIN', '', '75075', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('086030', 'NIFEDIN (NIFEDIPINE)', '', '949.2', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('582032', 'NISAGON - BETHAMETHASONE', '', '11550', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('818146', 'NONEMI TABLET ( VITAMIN SPESIALIS )', '', '2520', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('289002', 'NONFLAMIN', '', '6300', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('659150', 'NORAGES INJEKSI', '', '23100', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('114625', 'NORAGES SYRUP - METAMIZOLE', '', '32917', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('683259', 'NORELUT / REGUMEN', '', '6930', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('148743', 'NORESTIL', '', '6300', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('683442', 'NOROID BABY LOTION', '', '150150', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('824952', 'NOROID LOTION', '', '155925', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('921418', 'NOVABIOTIC 500 MG', '', '1732', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('670594', 'NOVAGYL SYRUP', '', '12000', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('877656', 'NOVALDO INJ - METAMIZOLE', '', '17325', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('056763', 'NOVALGIN 250 MG ( METAMIZOL )', '', '51975', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('001374', 'NOVALGIN TAB 500MG', '', '2310', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('948304', 'NOVAT - INTRA UTERINE DEVICE', '', '346500', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('460541', 'NOVAXIFEN TAB 400 MG (IBUPROFEN) / ETAFEN', '', '1050', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('653809', 'NOVELAS ESENSIAL LOTION STRETCH MARK', '', '78750', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('891877', 'NOVIX (MELOXICAM 7.5 MG)', '', '9210.6', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('575623', 'NOZA', '', '577', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('150849', 'NS ( NACL ) PZ', '', '17325', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('959839', 'NS ( NACL ) PZ (100 CC)', '', '19950', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('061677', 'NUCALCI ', '', '178899', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('646302', 'NUCRAL (SUKRALFAT)', '', '76576.5', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('167328', 'NUGALMIN ', '', '10392.9', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('818604', 'NUTRIBEAST', '', '12084.45', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('479523', 'NUTRIFLAM', '', '15750', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('754090', 'NUTRIMAMA 1 CAP ( SPESIALIS )', '', '11340', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('228730', 'NUTRIMAMA 1 CAP ( SPESIALIS ) ISI 15', '', '12629.4', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('573853', 'NUTRIMAMA 2 CAP ( SPESIALIS )', '', '11340', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('614167', 'NUTRIMAMA 2 CAP ( SPESIALIS ) ISI 15', '', '12629.4', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('992737', 'NUTRIMAMA 3 CAP ( SPECIALIS )', '', '11340', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('553803', 'NUTRIMAMA 3 CAP ( SPECIALIS ) ISI 15', '', '12629.4', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('069336', 'NUVIGEN', '', '9269.4', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('434357', 'NUVOGIN', '', '6300', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('955994', 'NYNDIA / MYCONYS ( NYSTATIN )', '', '47250', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('861298', 'OA KAPSUL', '', '6930', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('648804', 'OBDHAMIN', '', '5460', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('408844', 'OBH COMBI PLUS', '', '15015', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('737610', 'ODR SYRUP ( ONDANSETRON)', '', '126000', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('369965', 'OESTROGEL', '', '317625', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('156006', 'OKSITOSIN', '', '11550', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('506379', 'OMEGTRIM SYR', '', '10500', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('931336', 'OMELLEGAR TAB (LORATADINE)', '', '525', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('798554', 'OMERIC', '', '577', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('934693', 'ONDANE ( ONDANSETRON ) 4 ML 8 MG', '', '57750', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('195710', 'ONDANE 2 ML', '', '40425', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('630921', 'ONE MED TEST PECK', '', '5250', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('828614', 'OPICEF ( CEFADROXIL )', '', '13125', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('445588', 'OPIMOX ( AMOXICILIN )', '', '3675', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('430115', 'OPIXIME ( CEFIXIME )', '', '24570', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('790497', 'OPOX (LOPERAMIDE)', '', '2252.25', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('181519', 'ORALIT', '', '1470', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('724762', 'OSKADON', '', '2100', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('422669', 'OTOLIN ( CHLORAMPENICOL + BENZOCAIN )', '', '38850', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('291352', 'OTOPAIN TETES TELINGA ( CHLORAMPENICOL + BENZOCAIN', '', '63735', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('837159', 'OTORYL 25 - CAPTOPRIL', '', '577', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('001984', 'OTSU CATCH I.V CATHETHER 22 GX1\" ( 25 MM)', '', '9817', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('202332', 'OTSU CATCH I.V CATHETHER 24 GX1\" ( 25 MM)', '', '13860', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('587128', 'OVISKIN N', '', '11550', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('139283', 'OVISKIN N CREAM 10MG', '', '19950', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('746003', 'OXCAL', '', '6930', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('862855', 'OXOPECT SYR', '', '42000', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('896576', 'OXOPERIN SOLUTIO PER BOTOL', '', '100000', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('931641', 'OXOPERIN SOLUTIO PER MILI / CC (30 MILI/ BOTOL)', '', '3990', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('925568', 'OXYTETRACYCLINE - SALEP MATA', '', '6825', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('997986', 'OXYTOSIN', '', '17325', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('938447', 'PAMOL DROP', '', '60952.5', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('557984', 'PAMOL SYRUP 60 ML PCT - PARACATAMOL SYRUP', '', '25000', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('009430', 'PANADOL BIRU', '', '8085', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('701478', 'PANADOL HIJAU', '', '9817', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('931489', 'PANADOL MERAH', '', '9240', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('862061', 'PANTOCAIN', '', '23100', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('966340', 'PANTOPUMP', '', '144375', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('567078', 'PARACETAMOL INFUS 1000 MG / PYREXIN INFUS', '', '63000', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('594452', 'PARAMEX', '', '2100', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('187623', 'PATRAL', '', '10510.5', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('265046', 'PEHACAIN', '', '11550', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('688538', 'PEPZOL / TOPAZOL 40 MG INJEKSI', '', '160000', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('146088', 'PEPZOL 40 MG TABLET', '', '24255', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('378418', 'PEPZOL-PANTOPRAZOLE 20MG TABLET', '', '18480', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('874299', 'PERBAN PANJANG', '', '157500', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('659607', 'PHAMINOV ( AMINOPHYLLINE )', '', '24255', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('305146', 'PHENZACOL ', '', '750.75', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('778199', 'PIRACETAM 200 MG INJEKSI GENERIK', '', '23100', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('262848', 'PIRACETAM TABLET', '', '1155', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('574036', 'PIROTOP 5 MG CREAM (SPESIALIS)', '', '55566', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('290375', 'PIROXICAM G 10 MG', '', '577', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('230713', 'PKD-1 ( INFUSION SET MACRO )', '', '18900', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('399445', 'PKD-2 ( INFUSION  SET MICRO )', '', '18900', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('025574', 'POLDANMIG', '', '3150', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('820527', 'POLYMEN FILM ISLAND', '', '157500', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('079712', 'POVIRAL CREAM ( ACYCLOVIR )', '', '20000', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('752839', 'POVIRAL TAB', '', '2900', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('107972', 'PREDNISONE 5MG', '', '577', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('114350', 'PRENATIN DF', '', '3465', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('168946', 'PRESCHOL 10 / SIMVASTATIN', '', '7875', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('291779', 'PRESTRENOL', '', '6352', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('414979', 'PRIMAQUINE GENERIK 15 MG', '', '577', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('890595', 'PROCETAM 3 G - PIRACETAM INJEKSI', '', '69300', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('842164', 'PROCUR PLUS KAPSUL', '', '11550', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('485016', 'PRODEXON ( DEXAMETHASON 0.5 MG )', '', '600', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('040345', 'PROFAT SIRUP (SPESIALIS)', '', '88588.5', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('368012', 'PROFEN - IBUPROFEN SYRUP', '', '26500', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('943116', 'PROFIM ( CEFIXIME ) SYRUP', '', '3150', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('301301', 'PROGINA SPECIALIS', '', '48300', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('577820', 'PROHELIC TAB', '', '8108.1', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('265351', 'PROHISTIN ( LORATADIN )', '', '5460', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('815552', 'PROIMUN SYRUP', '', '57750', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('209382', 'PROMAMA ', '', '11413.5', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('121155', 'PROMAVIT', '', '5040', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('801362', 'PROMEDEX TABLET', '', '1900', NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `produk_master` (`kd_produk`, `nama_produk`, `harga_beli`, `jual_umum`, `gambar`, `id_kategori`, `id_satuan`, `jual_bpjs`, `jual_lain`, `tgl_produksi`, `tgl_expired`) VALUES
('303223', 'PROMIN TAB', '', '9240', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('178010', 'PRONIS ( PEMANIS PUYER )', '', '20475', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('264100', 'PROPRANOLOL 10 MG TABLET', '', '525', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('694794', 'PROPRANOLOL 40 MG TABLET', '', '945', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('749878', 'PROPYRETIC 160 ( PARACETAMOL SUPP )', '', '19635', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('675934', 'PROPYRETIC 80 MG ( PARACETAMOL SUPP )', '', '17325', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('100403', 'PROSTE (GLOCOSAMIN CONDROITIN)', '', '4620', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('164399', 'PROTHYRA TAB ( SPESIALIS )', '', '8085', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('999268', 'PROTIFED SYRUP', '', '11550', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('671906', 'PROVAGIN OVULA', '', '20000', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('223816', 'PROVOMER FC B6 ', '', '3360', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('928925', 'PSIDII SYR', '', '54600', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('395142', 'PSIDII TABLET', '', '6930', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('634675', 'PULMICORT NEBU', '', '48058.5', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('728089', 'PYRANTEL 125 MG', '', '288', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('207123', 'PYREXIN 160 SUPP', '', '19635', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('781251', 'PYTRAMIC', '', '3753.75', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('532990', 'Q10-DS', '', '29999.55', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('206971', 'RANITIDIN INJEKSI GENERIK NOVEL 25 MG/ML', '', '3465', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('717743', 'RANITIDIN TAB 150 MG', '', '577', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('501343', 'REBONE / GCM (GLUCOSAMIN CONDROITIN)', '', '13860', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('835602', 'RECO TETES MATA ( CHLORAMPHENICOL )', '', '11550', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('754212', 'RECO -TETES TELINGA CHLORAMPHENICOL', '', '11550', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('679535', 'RECO ZALF MATA', '', '11550', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('399170', 'REDOXON', '', '34650', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('511261', 'REGRESSOR TAB', '', '4200', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('963563', 'REXAVIN 500 MG', '', '3465', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('811249', 'RHEMAFAR - METHYLPREDNISONE', '', '1155', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('818482', 'RHINOS JUNIOR SYR', '', '39375', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('028718', 'RHINOS NEO DROP', '', '57750', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('928772', 'RIAMYCIN ( THIAMPENICOL ) 500 MG', '', '1732', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('331635', 'RINDOBION', '', '1732', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('603028', 'RINDOFLOX-CIPROFLOXACIN', '', '13860', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('356720', 'RINDOMOX - AMOXICILLIN 500MG', '', '2310', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('243592', 'RINDOMOX 250 MG SYR', '', '32340', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('959443', 'RINDOPAIN - KETOROLAC', '', '4042', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('096558', 'RINDOPAIN INJ - KETOROLAC', '', '28875', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('964020', 'RISTEON', '', '8085', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('001771', 'RIXONE - CEFTRIAXONE', '', '190575', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('913422', 'RL', '', '21000', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('142823', 'RYCEF 1GRAM / BIOCEF INJ / LAPIXIME INJ', '', '200000', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('819367', 'SAGALON', '', '39270', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('797059', 'SAGESTAN CREAM ( GENTAMICIN )', '', '16380', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('912323', 'SALBRON (SALBUTANOL 2 MG)', '', '1155', NULL, NULL, NULL, 1000, NULL, NULL, NULL),
('085572', 'SALON PAS', '', '11550', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('391511', 'SANAFLU', '', '2100', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('723206', 'SANGOBION', '', '1200', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('174897', 'SANMOL DROP', '', '21000', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('768555', 'SCABIMITE KECIL / SCACID ZALF', '', '57807.75', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('649201', 'SCABIMITE ZALF BESAR', '', '110250', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('373963', 'SCANTIPID ( GEMFIBROZIL )', '', '5775', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('419892', 'SEDROFEN (CEFADROXIL SPECIALIS) / LAPICEF TAB', '', '15750', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('535523', 'SELKOM-C', '', '1500', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('061188', 'SELVIM', '', '556.5', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('843079', 'SENSITIVE - TEST PACK', '', '28350', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('866059', 'SIM DHA', '', '63000', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('230225', 'SIMEXIM INJ ', '', '210000', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('596222', 'SIMFIX SYRUP (CEFIXIME)', '', '105000', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('724305', 'SIMFLOX TAB', '', '15750', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('232148', 'SIMTRAM ', '', '11693.85', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('196412', 'SIMZEN DROP (CETERIZINE )', '', '86100', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('723053', 'SOFRA-TULLE 1/2 LEMBAR', '', '14700', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('111390', 'SOFRA-TULLE 1/4 LEMBAR', '', '7350', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('736908', 'SOFRA-TULLE 10 X 10', '', '29925', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('277833', 'SPASMOLIT / SCOPAMIN TAB', '', '3377.85', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('410431', 'SPIRAMICYN', '', '2862.3', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('598084', 'SPIRONOLACTON', '', '2310', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('099091', 'SPUIT 1 CC', '', '4200', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('818238', 'SPUIT 10 CC', '', '4200', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('127106', 'SPUIT 3 CC', '', '4200', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('278138', 'SPUIT 5 CC', '', '4200', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('537446', 'SPUIT 50 CC ', '', '21262.5', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('661377', 'STENIROL (MP 4 )', '', '4879.35', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('841828', 'STOBLED', '', '11550', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('745301', 'SUCCUS CATHETER / SELANG SUCTION', '', '23100', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('770722', 'SUPERHOID', '', '5775', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('151001', 'SUPRA LIVRON', '', '577', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('023346', 'SUPRAVIT TAB', '', '577', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('093323', 'SURFLO 26', '', '49612.5', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('017670', 'SURFLO NO 18', '', '18900', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('130860', 'SURFLO NO 22 ( MAKRO )', '', '18900', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('640412', 'SURFLO NO 24 ( MIKRO )', '', '18900', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('915955', 'SUTURE NEEDLE HEATING NO. 10', '', '28875', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('997040', 'SUTURE NEEDLE HEATING NO. 12', '', '28875', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('944703', 'SUTURE NEEDLE HEATING NO. 14', '', '28875', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('161774', 'SVT 10MG (SIMVASTATIN)', '', '1680', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('306946', 'TAXIME CAPSUL 100 MG', '', '7000', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('927582', 'TAXIME CAPSUL 200 MG', '', '5231.1', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('436280', 'TAXIME SYRUP', '', '46200', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('556183', 'TEGADERM', '', '69300', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('860047', 'TEKASOL OINMENT 10 GRAM (SPESIALIS)', '', '56080.5', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('528046', 'TENSOCREFE 15X4.5 CM', '', '98175', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('949341', 'TENSOCREFE 7.5X4.5 CM', '', '57750', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('292389', 'TEOSAL', '', '577', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('669007', 'TERANOL INJ', '', '57750', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('017182', 'TERANOL TAB', '', '6500', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('327637', 'TERMOMETER DIGITAL', '', '31500', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('339142', 'TERMOMETER RAKSA', '', '15750', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('327576', 'TIRIZ ( CETIRIZINE ) TABLET LAPI', '', '5460', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('113740', 'TITAN (RANITIDIN TAB)', '', '1200', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('914917', 'TIVOMIT ( METOCLOPRAMIDE HCL )', '', '577', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('165192', 'TOFEDEX INJEKSI', '', '63000', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('929505', 'TOFEDEX TABLET', '', '9450', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('036469', 'TOMAAG / STROMAG TABLET MAAG', '', '1155', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('554932', 'TOMAAG FORTE SYRUP', '', '25410', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('739289', 'TOMIT INJ (METOKLOPRAMID)', '', '17325', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('068543', 'TRAMADOL TABLET', '', '808', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('504120', 'TRANSPULMIN (KUNING) DEWASA', '', '65625', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('591431', 'TRANSPULMIN BB (PUTIH) BAYI', '', '65625', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('530182', 'TRIAMCORT ( TRIAMCINOLONE )', '', '4100', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('838440', 'TRIBESTAN', '', '15015', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('735444', 'TRICKER INJ / RANITIDIN INJ', '', '28875', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('868165', 'TRICLOFEM 1ML/3BLN INJEKSI', '', '17325', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('506623', 'TRIFED TABLET (TRIPOL. PSEUDO)', '', '2310', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('832947', 'TRIMOXSUL SYR / MEPROTRIN SYR', '', '30000', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('449189', 'TRIVEXAN SUSPENSI', '', '11550', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('728882', 'TROGYL ( METRONIDAZOLE )', '', '3465', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('137360', 'ULTRA SONIQUE GEL 5L', '', '210000', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('145813', 'UNALIUM - FLUNARIZINE 10 MG', '', '12474', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('864106', 'UNALIUM - FLUNARIZINE 5 MG', '', '8258.25', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('017334', 'UNDERPAD', '', '11550', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('391144', 'UNIGEN', '', '11025', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('370789', 'URINE BAG', '', '23100', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('698945', 'URINTER', '', '5800', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('077271', 'UTROGESTAN 100 MG-MICRONISED PROGESTERONE', '', '16800', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('736725', 'UTROGESTAN 200MG -MICRONISED PROGESTERONE', '', '30450', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('601624', 'VAGISTIN SUPP', '', '25410', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('172455', 'VAKSIN HEPATITIS B', '', '89250', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('752442', 'VAKSIN SERVIK', '', '808500', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('142853', 'VAKSIN TETANUS ( TETAGAM )', '', '249900', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('432068', 'VALAMIN', '', '92400', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('003388', 'VASTIGO (BETAHISTINE MESILATE)', '', '1575', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('386597', 'VENAROID (RUTIN . EKSTRAKS CURCUMAE )', '', '9135', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('078278', 'VENTOLIN INHELER', '', '138600', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('955872', 'VENTOLIN NEBULES 2.5 MG', '', '23100', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('410492', 'VENVLON', '', '21000', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('823487', 'VIPALBUMIN ( ALBUMIN )', '', '7500', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('511750', 'VIT B COMPLEK ( KALENG )', '', '577', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('766785', 'VIT C ( KALENG )', '', '577', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('112519', 'VIT K INJEKSI GANTI NEO K', '', '20000', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('406861', 'VITAMIN C + COLLAGEN', '', '78750', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('912018', 'VOLTAREN GEL', '', '42000', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('958558', 'VOMETRON ( ONDANSETRON  4 MG / 2 ML )', '', '40425', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('328217', 'VOMETRON 4 MG', '', '19635', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('980469', 'VOMETRON SYRUP', '', '105000', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('247834', 'VOMIL B6', '', '2625', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('124939', 'WINATIN ( LORATADINE )', '', '1155', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('776337', 'WINGS NEEDLE NO 23', '', '17325', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('888062', 'WINGS NEEDLE NO 25', '', '17325', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('987946', 'XDN 1 CC(XILOMIDON.DURADRYL.NEUTROPIN)', '', '7875', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('359681', 'XEPAMOL / SANMOL FORTE', '', '29400', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('675629', 'XIDANE CAPS ( AXTASANTIN ) / ASTA PLUS', '', '12600', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('973389', 'XILLOMIDON', '', '11550', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('101105', 'XYLOMIDON INJ', '', '23100', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('256531', 'YARIDON (DOMPERIDON) TAB', '', '2310', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('744843', 'YARIDON SUSP - DOMPERIDON', '', '32340', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('580201', 'YARIZINE SYR', '', '34125', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('056061', 'YASMIN', '', '215250', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('909241', 'Y-RINS', '', '33000', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('202729', 'ZEGREN 50 ( NATRIUM / SODIUM DIKLOFENAK )', '', '1995', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('552247', 'ZIBRAMAX ( AZITHROMYCIN )', '', '142065', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('821564', 'ZINE 10 MG (SPESIALIS)', '', '6006', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('911561', 'ZORALIN ( KETOCONAZOLE  ) ZALF', '', '28875', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('768036', 'ZORALIN TABLET ( KETOCONAZOLE )', '', '3150', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('010494', 'GEQUIN', '25000', '30000', '1.png', 9, 3, 27000, 27000, '2020-11-01', '2022-11-01'),
('150194', 'Hawedion', '40000', '45000', 'betyouwanna.jpg', 6, 7, 37000, 46000, '2020-11-02', '2022-11-02');

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
(42, '2021-01-05', '010494', 'GEQUIN', 10, 108);

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

INSERT INTO `produk_pusat` (`id_p`, `nama_p`, `jumlah`, `kode_barang`, `hrg`, `hrg_jual`, `satuan`, `kategori`, `tgl_produksi`, `tgl_expired`) VALUES
(1, 'DOTRAMOL-PARACETAMOL-TRAMADOL', 20, '251069', '', 0, '', '0', NULL, NULL),
(2, 'PROFEN - IBUPROFEN SYRUP', 1, '368012', '', 0, '', '0', NULL, NULL),
(3, 'VIT C ( KALENG )', 50, '766785', '', 0, '', '0', NULL, NULL),
(4, 'PANADOL BIRU', 12, '009430', '', 0, '', '0', NULL, NULL),
(5, 'PARAMEX', 1, '594452', '', 0, '', '0', NULL, NULL),
(6, 'antibotik', 3, '661713', '', 0, '', '0', NULL, NULL),
(7, 'HICO - HEPARIN SODIUM', -1, '504761', '', 0, '', '0', NULL, NULL),
(8, 'IMBOOST F COUGH SPESIALIS', 2, '056275', '', 0, '', '0', NULL, NULL),
(9, 'NEUROBAT FORTE INJ 3 ML/20', 1, '682038', '', 0, '', '0', NULL, NULL),
(10, 'CASETAMOL SYR (PARASETAMOL)', 1, '497345', '', 0, '', '0', NULL, NULL),
(11, 'ALKOHOL KECIL', 5, '581543', '', 0, '', '0', NULL, NULL),
(12, 'ANTIMO DEWASA', 50, '186097', '', 0, '', '0', NULL, NULL),
(13, 'ANTANGIN JRG', 20, '643464', '', 0, '', '0', NULL, NULL),
(14, 'BETADINE 5 LITER', 3, '180024', '', 0, '', '0', NULL, NULL),
(24, 'GEQUIN', 80, '010494', '25000', 30000, '3', '9', '2020-11-01', '2022-11-01'),
(25, 'Hawedion', 90, '150194', '40000', 45000, '7', '6', '2020-11-02', '2022-11-02'),
(26, 'PANADOL MERAH', 15, '931489', '10000', 0, '', '9', '2020-11-24', '2022-11-24');

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
('JU-06', 'SM-004', 'History Antrian', 'antrian', 'Aktif', 'history', 12),
('JU-01', 'SM-01010101', 'Biaya Administrasi RS', 'admin_rs', 'Aktif', 'money-check', 4),
('JU-02', 'SM-02', 'History', '#', 'Tidak Aktif', 'history', 2),
('JU-01', 'SM-04', 'Setting Bisnis', '#', 'Tidak Aktif', 'handshake-o', 14),
('JU-01', 'SM-05', 'Setting User', '#', 'Tidak Aktif', 'users', 13),
('JU-01', 'SM-06', 'Setting Menu', '#', 'Tidak Aktif', 'list', 15),
('JU-06', 'SM-07', 'Pembayaran', 'pembayaran_ks', 'Aktif', 'dollar-sign', 2),
('JU-01', 'SM-100', 'Pelayanan', 'kasir', 'Tidak Aktif', 'laptop', 2),
('JU-10', 'SM-101010', 'Pasien Rawat Inap', 'nurse_inap', 'Tidak Aktif', 'bed', 1),
('JU-07', 'SM-103', 'Stok Apotek', '#', 'Aktif', 'building', 7),
('JU-07', 'SM-107', 'Pembelian Produk', '#', 'Aktif', 'shopping-cart', 6),
('JU-07', 'SM-121212', 'Data Pendaftaran Apotek', 'apotek_antrian', 'Aktif', 'search', 4),
('JU-01', 'SM-124345', 'Jadwal Dokter', 'jadwal_dokter', 'Aktif', 'stethoscope', 5),
('JU-06', 'SM-124399', 'Jadwal Dokter Ganti', 'dr_ganti', 'Aktif', 'stethoscope', 4),
('JU-09', 'SM-200', 'Setting User', '#', 'Tidak Aktif', 'cog', 3),
('JU-07', 'SM-201', 'Retur Penjualan', 'retur', 'Aktif', 'exchange-alt', 10),
('JU-06', 'SM-202', 'Data Dokter', 'dokter', 'Aktif', 'user-md', 9),
('JU-06', 'SM-28', 'Pasien', '#', 'Aktif', 'user', 8),
('JU-09', 'SM-299', 'Bonus', 'bonus', 'Non Aktif', 'cog', 4),
('JU-06', 'SM-300', 'Bonus', 'bonus', 'Tidak Aktif', 'gift', 4),
('JU-06', 'SM-3000', 'Produk Pra Rilis', 'prerelease', 'Tidak Aktif', 'heartbeat', 5),
('JU-06', 'SM-302', 'Data Poliklinik', 'poliklinik', 'Aktif', 'tags', 10),
('JU-06', 'SM-303', 'Biaya Administrasi RS', 'admin_rs', 'Aktif', 'cog', 11),
('JU-06', 'SM-304', 'Pasien dan Asuransi', 'asuransi', 'Aktif', 'list-alt', 12),
('JU-06', 'SM-31', 'History Transaksi', 'history_transaksi', 'Aktif', 'history', 11),
('JU-06', 'SM-335399', 'Data Kasir Lama', 'kasir_lama', 'Tidak Aktif', 'cog', 4),
('JU-01', 'SM-33978', 'Data Kategori Biaya', 'kategori_biaya', 'Aktif', 'fire', 8),
('JU-06', 'SM-3434343', 'History Kasir Lama', 'history_kasir_lama', 'Non Aktif', 'cog', 4),
('JU-01', 'SM-36', 'Data Master', '#', 'Aktif', 'th-list', 7),
('JU-01', 'SM-37', 'Pembelian Produk', '#', 'Aktif', 'shopping-cart', 1),
('JU-01', 'SM-38', 'Reture Produk', 'reture', 'Non Aktif', 'sign-in', 3),
('JU-01', 'SM-39', 'Pengeluaran', 'pengeluaran', 'Tidak Aktif', 'sign-out', 4),
('JU-01', 'SM-398', 'Data Bonus', 'data_bonus', 'Non Aktif', 'cog', 2),
('JU-01', 'SM-40', 'Data Karyawan', 'karyawan', 'Aktif', 'users', 10),
('JU-01', 'SM-41', 'Data Dokter', 'dokter', 'Aktif', 'user-md', 11),
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
('JU-06', 'SM-669969', 'Rujukan Rawat Inap', 'rujuk_inap', 'Aktif', 'wheelchair', 2),
('JU-06', 'SM-67', 'Kritik Dan Saran', 'kritik_saran', 'Tidak Aktif', 'thumbs-up', 3),
('JU-06', 'SM-68', 'Pengeluaran', 'pengeluaran_cabang', 'Tidak Aktif', 'sign-out', 4),
('JU-01', 'SM-69', 'Grafik', '#', 'Tidak Aktif', 'bar-chart', 5),
('JU-06', 'SM-70', 'Setting Printer', 'set_print', 'Tidak Aktif', 'print', 14),
('JU-07', 'SM-71', 'Pelayanan Obat', 'pelayanan_obat', 'Aktif', 'cog', 8),
('JU-07', 'SM-7778', 'Pelayanan Apotek', 'kasir_apotek', 'Aktif', 'copy', 1),
('JU-06', 'SM-9889', 'Retur Penjualan', 'retur', 'Tidak Aktif', 'chain-broken', 4),
('JU-09', 'SM-99', 'Kritik & Saran', 'kritik_saran', 'Tidak Aktif', 'thumbs-up', 3),
('JU-01', 'SM-99000999', 'Data Poliklinik', 'poliklinik', 'Aktif', 'tags', 9),
('JU-10', 'SM-990911', 'Data Obat Rawat Inap', 'apotek_inap', 'Aktif', 'bed', 4),
('JU-07', 'SM-990990', 'Data Obat Rawat Inap', 'apotek_inap', 'Aktif', 'bed', 4),
('JU-08', 'SM-998767', 'Pelayanan Lab', 'kasir_lab', 'Aktif', 'table', 1),
('JU-08', 'SM-998789', 'Data Antrian Lab', 'data_lab', 'Tidak Aktif', 'files-o', 2),
('JU-02', 'SM-998990', 'Data Rawat Inap', 'rawat_inap', 'Aktif', 'cog', 3),
('JU-01', 'SM-9989976', 'Jadwal Perawat', 'jadwal_perawat', 'Aktif', 'wheelchair', 6),
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
(9, 'Cek Telinga', '65000', 79000, 20000, 'Memeriksa keadaan telinga bagian dalam.', 55000, 55000, 1);

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
('JU-02', 1, 12, 'drdaniel', '364393b7ac43318a848e94ee90b75835', 'drdaniel', 'daniel@gmail.com', '109923764789', '', 'N', '2020-04-15', 's3 UGM', 'Jl. Sudirman');

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
  ADD PRIMARY KEY (`id_p`);

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
  ADD PRIMARY KEY (`kd_produk`),
  ADD KEY `nama_produk` (`nama_produk`);

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=125;

--
-- AUTO_INCREMENT for table `asuransi`
--
ALTER TABLE `asuransi`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `beli`
--
ALTER TABLE `beli`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT for table `beli_k`
--
ALTER TABLE `beli_k`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `beli_obat`
--
ALTER TABLE `beli_obat`
  MODIFY `id_beli_obat` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `biaya_administrasi`
--
ALTER TABLE `biaya_administrasi`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

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
-- AUTO_INCREMENT for table `data_satuan`
--
ALTER TABLE `data_satuan`
  MODIFY `id_s` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `dr_pengganti`
--
ALTER TABLE `dr_pengganti`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `dr_praktek`
--
ALTER TABLE `dr_praktek`
  MODIFY `id_drpraktek` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=63;

--
-- AUTO_INCREMENT for table `dr_visit`
--
ALTER TABLE `dr_visit`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `history_ap`
--
ALTER TABLE `history_ap`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;

--
-- AUTO_INCREMENT for table `history_beli_k`
--
ALTER TABLE `history_beli_k`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `history_beli_obat`
--
ALTER TABLE `history_beli_obat`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `history_beli_t`
--
ALTER TABLE `history_beli_t`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;

--
-- AUTO_INCREMENT for table `history_kasir`
--
ALTER TABLE `history_kasir`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=178;

--
-- AUTO_INCREMENT for table `history_kirim_stok`
--
ALTER TABLE `history_kirim_stok`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `karyawan`
--
ALTER TABLE `karyawan`
  MODIFY `id_karyawan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;

--
-- AUTO_INCREMENT for table `kasir_sementara`
--
ALTER TABLE `kasir_sementara`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=185;

--
-- AUTO_INCREMENT for table `kategori`
--
ALTER TABLE `kategori`
  MODIFY `id_kategori` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `kategori_biaya`
--
ALTER TABLE `kategori_biaya`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `kategori_pelanggan`
--
ALTER TABLE `kategori_pelanggan`
  MODIFY `id_katpel` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `kehadiran_dr`
--
ALTER TABLE `kehadiran_dr`
  MODIFY `id_keh` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=59;

--
-- AUTO_INCREMENT for table `kirim_stok`
--
ALTER TABLE `kirim_stok`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `krisar`
--
ALTER TABLE `krisar`
  MODIFY `id_krisar` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `log`
--
ALTER TABLE `log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1268;

--
-- AUTO_INCREMENT for table `master_retur_jual`
--
ALTER TABLE `master_retur_jual`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `noticelab`
--
ALTER TABLE `noticelab`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=50;

--
-- AUTO_INCREMENT for table `nurse`
--
ALTER TABLE `nurse`
  MODIFY `id_nurse` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT for table `pasca_treatment`
--
ALTER TABLE `pasca_treatment`
  MODIFY `id_pt` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=68;

--
-- AUTO_INCREMENT for table `pasien`
--
ALTER TABLE `pasien`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `pekerjaan`
--
ALTER TABLE `pekerjaan`
  MODIFY `id_pekerjaan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `pelayanan_obat`
--
ALTER TABLE `pelayanan_obat`
  MODIFY `id_pelayanan_obat` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `pembayaran`
--
ALTER TABLE `pembayaran`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `pembayaran_apotek`
--
ALTER TABLE `pembayaran_apotek`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT for table `pembayaran_lab`
--
ALTER TABLE `pembayaran_lab`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `pembelian_k`
--
ALTER TABLE `pembelian_k`
  MODIFY `id_k` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `pembelian_t`
--
ALTER TABLE `pembelian_t`
  MODIFY `id_t` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `pengeluaran`
--
ALTER TABLE `pengeluaran`
  MODIFY `id_p` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pengiriman_stok`
--
ALTER TABLE `pengiriman_stok`
  MODIFY `id_ps` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `perawatan_pasien`
--
ALTER TABLE `perawatan_pasien`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `poliklinik`
--
ALTER TABLE `poliklinik`
  MODIFY `id_poli` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `produk`
--
ALTER TABLE `produk`
  MODIFY `id_p` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `produk_pasien`
--
ALTER TABLE `produk_pasien`
  MODIFY `id_pp` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `produk_pengiriman`
--
ALTER TABLE `produk_pengiriman`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;

--
-- AUTO_INCREMENT for table `produk_ps`
--
ALTER TABLE `produk_ps`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `produk_pusat`
--
ALTER TABLE `produk_pusat`
  MODIFY `id_p` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

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
-- AUTO_INCREMENT for table `suplier`
--
ALTER TABLE `suplier`
  MODIFY `id_sup` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `treatment`
--
ALTER TABLE `treatment`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id_user` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
