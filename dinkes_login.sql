-- phpMyAdmin SQL Dump
-- version 4.9.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 01, 2020 at 01:24 PM
-- Server version: 10.4.8-MariaDB
-- PHP Version: 7.3.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `dinkes_login`
--

-- --------------------------------------------------------

--
-- Table structure for table `gawat_darurat`
--

CREATE TABLE `gawat_darurat` (
  `id` int(11) NOT NULL,
  `id_pasien` varchar(50) NOT NULL,
  `nama_gawat_darurat` varchar(128) NOT NULL,
  `tanggal` date NOT NULL,
  `obat` varchar(50) NOT NULL,
  `alat` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `gawat_darurat`
--

INSERT INTO `gawat_darurat` (`id`, `id_pasien`, `nama_gawat_darurat`, `tanggal`, `obat`, `alat`) VALUES
(20, 'Caca', 'ISPA', '2018-02-10', 'Ringer Laktat larutan infus (botol/500ml) , Sodium', 'Tandu , Jarum Suntik , Stethoscope , Tas Medical K'),
(21, 'Udin', 'Hypertensi', '2018-11-11', 'Ringer Laktat larutan infus (botol/500ml) , Sodium', 'Tandu , Matras , Stethoscope , Tas Medical Kit'),
(22, 'Lala', 'Hypertensi', '2018-11-11', 'Ringer Laktat larutan infus (botol/500ml) , Sodium', 'Tandu , Matras , Stethoscope , Tas Medical Kit'),
(23, 'Hafi', 'ISPA', '2019-12-08', 'Ringer Laktat larutan infus (botol/500ml) , Sodium', 'Tandu , Jarum Suntik , Matras , Stethoscope , Tas '),
(24, 'Budi', 'ISPA', '2019-12-08', 'Ringer Laktat larutan infus (botol/500ml) , Sodium', 'Tandu , Jarum Suntik , Matras , Stethoscope , Tas '),
(25, 'Haris', 'Hypertensi', '2019-02-07', 'Sodium Chloride 0.9 % (botol/500ml) , Dextrose 5 %', 'Tandu , Matras , Stethoscope'),
(26, 'Husdi', 'ISPA', '2020-04-01', 'Dextrose 5 % (botol/500ml) , Diazepam injeksi 5 mg', 'Tandu , Matras , Stethoscope'),
(27, 'Risfan', 'Hypertensi', '2020-02-25', 'Sodium Chloride 0.9 % (botol/500ml) , Dextrose 5 %', 'Tandu , Matras , Stethoscope'),
(28, 'Zali', 'Covid-19', '2020-03-22', 'Ringer Laktat larutan infus (botol/500ml) , Sodium', 'Tandu , Jarum Suntik , Matras , Stethoscope , Tas '),
(29, 'Joe', 'Covid-19', '2020-03-22', 'Ringer Laktat larutan infus (botol/500ml) , Sodium', 'Tandu , Jarum Suntik , Matras , Stethoscope , Tas '),
(30, 'Ifit', 'Covid-19', '2020-03-22', 'Ringer Laktat larutan infus (botol/500ml) , Sodium', 'Tandu , Jarum Suntik , Matras , Stethoscope , Tas '),
(31, 'Bagas', 'Covid-19', '2020-03-22', 'Ringer Laktat larutan infus (botol/500ml) , Sodium', 'Tandu , Jarum Suntik , Matras , Stethoscope , Tas '),
(32, 'Nana', 'Covid-19', '2020-04-12', 'Ringer Laktat larutan infus (botol/500ml) , Sodium', 'Tandu , Matras , Stethoscope , Tas Medical Kit');

-- --------------------------------------------------------

--
-- Table structure for table `laporan_kegiatan`
--

CREATE TABLE `laporan_kegiatan` (
  `id` int(11) NOT NULL,
  `id_pegawai` varchar(50) NOT NULL,
  `nama_kegiatan` varchar(70) NOT NULL,
  `tanggal` date NOT NULL,
  `tempat` varchar(70) NOT NULL,
  `jumlah_pasien` int(11) NOT NULL,
  `hasil` varchar(128) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `laporan_kegiatan`
--

INSERT INTO `laporan_kegiatan` (`id`, `id_pegawai`, `nama_kegiatan`, `tanggal`, `tempat`, `jumlah_pasien`, `hasil`) VALUES
(1, 'Awliya Rahman, AMK', 'Covid-19', '2020-07-14', 'Rs Ulin', 120, 'Diberlakukan prosedur covid-19'),
(2, 'Bhagus Hidayat, AMK', 'Covid-19', '2020-07-14', 'Rs Ulin', 120, 'Diberlakukan prosedur covid-19'),
(3, 'Bisma Zain Ilham, AMK', 'Covid-19', '2020-07-14', 'Rs Ulin', 120, 'Diberlakukan prosedur covid-19'),
(4, 'Dr. Aprilia Alvadaro Dirgantari', 'Covid-19', '2020-07-14', 'Rs Ulin', 120, 'Diberlakukan prosedur covid-19'),
(5, 'Hj. Ridha Zuraida, SKM', 'Covid-19', '2020-07-14', 'Rs Ulin', 120, 'Diberlakukan prosedur covid-19'),
(6, 'Endi Hermawan, AMK', 'Sunatan Massal', '2020-07-02', 'PKM. Jejangkit Kab. Barito Kuala', 20, 'Berjalan lancar dan hikmat'),
(7, 'Isnaniah, AMK', 'Sunatan Massal', '2020-07-02', 'PKM. Jejangkit Kab. Barito Kuala', 20, 'Berjalan lancar dan hikmat'),
(8, 'Mahani, AMK', 'Sunatan Massal', '2020-07-02', 'PKM. Jejangkit Kab. Barito Kuala', 20, 'Berjalan lancar dan hikmat'),
(11, 'Dr. M. Rizkha Ridhani', 'Sunatan Massal', '2020-07-02', 'PKM. Jejangkit Kab. Barito Kuala', 20, 'Berjalan lancar dan hikmat');

-- --------------------------------------------------------

--
-- Table structure for table `obat_keluar`
--

CREATE TABLE `obat_keluar` (
  `id` int(11) NOT NULL,
  `nama_barang` varchar(128) NOT NULL,
  `qty` int(11) NOT NULL,
  `Tanggal` date NOT NULL,
  `keperluan` varchar(128) NOT NULL,
  `penanggung` varchar(70) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `obat_keluar`
--

INSERT INTO `obat_keluar` (`id`, `nama_barang`, `qty`, `Tanggal`, `keperluan`, `penanggung`) VALUES
(2, 'Ringer Laktat larutan infus (botol/500ml)', 5, '2020-06-12', 'Covid-19', 'Dr. Aprilia Alvadaro Dirgantari'),
(7, 'Sodium Chloride 0.9 % (botol/500ml)', 20, '2020-07-07', 'Covid-19', 'Dr. Aprilia Alvadaro Dirgantari'),
(8, 'Diazepam injeksi 5 mg/ml (kotak/10 ampul)', 2, '2020-07-02', 'Sunatan Massal', 'Dr. M. Rizkha Ridhani'),
(9, 'Dextrose 5 % (botol/500ml)', 3, '2020-09-09', 'Covid-19', 'Dr. M. Rizkha Ridhani'),
(10, 'Diazepam injeksi 5 mg/ml (kotak/10 ampul)', 2, '2020-09-09', 'Covid-19', 'Dr. M. Rizkha Ridhani'),
(11, 'Bioplacenton krim (tube/15 gram)', 2, '2020-09-09', 'Covid-19', 'Dr. M. Rizkha Ridhani'),
(12, 'Thromboflash (tube 10 gram)', 2, '2020-09-10', 'Dinas Kesehatan Provinsi Kalsel', 'Dr. Aprilia Alvadaro Dirgantari'),
(13, 'Amlodipin 10 mg (kotak/30 tablet)', 3, '2020-09-10', 'Dinas Kesehatan Provinsi Kalsel', 'Dr. Aprilia Alvadaro Dirgantari');

--
-- Triggers `obat_keluar`
--
DELIMITER $$
CREATE TRIGGER `stok_keluar` AFTER INSERT ON `obat_keluar` FOR EACH ROW BEGIN
	UPDATE stok_obat SET qty=qty-NEW.qty
    WHERE nama_barang = NEW.nama_barang;
END
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `stok_keluar_delete` AFTER DELETE ON `obat_keluar` FOR EACH ROW UPDATE stok_obat set stok_obat.qty = stok_obat.qty + old.qty WHERE stok_obat.nama_barang = old.nama_barang
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `stok_keluar_update_after` AFTER UPDATE ON `obat_keluar` FOR EACH ROW UPDATE stok_obat set stok_obat.qty = stok_obat.qty + old.qty WHERE stok_obat.nama_barang = old.nama_barang
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `stok_keluar_update_before` BEFORE UPDATE ON `obat_keluar` FOR EACH ROW UPDATE stok_obat set stok_obat.qty = stok_obat.qty - new.qty WHERE stok_obat.nama_barang = new.nama_barang
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `obat_masuk`
--

CREATE TABLE `obat_masuk` (
  `id` int(11) NOT NULL,
  `nama_barang` varchar(128) NOT NULL,
  `qty` int(11) NOT NULL,
  `Tanggal` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `obat_masuk`
--

INSERT INTO `obat_masuk` (`id`, `nama_barang`, `qty`, `Tanggal`) VALUES
(1, 'Ringer Laktat larutan infus (botol/500ml)', 5, '2020-05-08'),
(2, 'Sodium Chloride 0.9 % (botol/500ml)', 10, '2020-07-07'),
(3, 'Amlodipin 10 mg (kotak/30 tablet)', 10, '2020-09-01'),
(4, 'Thromboflash (tube 10 gram)', 10, '2020-09-01'),
(5, 'Sodium Chloride 0.9 % (botol/500ml)', 10, '2020-09-01'),
(6, 'Diazepam injeksi 5 mg/ml (kotak/10 ampul)', 5, '2020-09-01'),
(7, 'Dextrose 5 % (botol/500ml)', 9, '2020-09-01'),
(8, 'Amlodipin 5 mg (kotak/300 tablet)', 10, '2020-09-01');

--
-- Triggers `obat_masuk`
--
DELIMITER $$
CREATE TRIGGER `stok_masuk` AFTER INSERT ON `obat_masuk` FOR EACH ROW BEGIN
	UPDATE stok_obat SET qty=qty+NEW.qty
    WHERE nama_barang = NEW.nama_barang;
END
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `stok_masuk_delete` AFTER DELETE ON `obat_masuk` FOR EACH ROW UPDATE stok_obat set stok_obat.qty = stok_obat.qty - old.qty WHERE stok_obat.nama_barang = old.nama_barang
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `stok_masuk_update_after` AFTER UPDATE ON `obat_masuk` FOR EACH ROW UPDATE stok_obat set stok_obat.qty = stok_obat.qty - old.qty WHERE stok_obat.nama_barang = old.nama_barang
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `stok_masuk_update_before` BEFORE UPDATE ON `obat_masuk` FOR EACH ROW UPDATE stok_obat set stok_obat.qty = stok_obat.qty + new.qty WHERE stok_obat.nama_barang = new.nama_barang
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `pasien`
--

CREATE TABLE `pasien` (
  `id` int(11) NOT NULL,
  `nama_pasien` varchar(40) NOT NULL,
  `ttl` varchar(50) NOT NULL,
  `umur` int(5) NOT NULL,
  `alamat` varchar(128) NOT NULL,
  `keluhan` varchar(128) NOT NULL,
  `no_telepon` varchar(14) NOT NULL,
  `kejadian` varchar(128) NOT NULL,
  `penanganan` varchar(80) NOT NULL,
  `tanggal` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pasien`
--

INSERT INTO `pasien` (`id`, `nama_pasien`, `ttl`, `umur`, `alamat`, `keluhan`, `no_telepon`, `kejadian`, `penanganan`, `tanggal`) VALUES
(12, 'Zali', 'Banjarmasin, 26 Oktober 1997', 23, 'Jalan Mahligai', 'Covid-19', '087752891211', 'Jalan Bumi Mas Raya Komplek Bumi Jaya', 'Pasien diduga positif corona dan diisolasi ke Rs Ulin', '2020-11-01'),
(13, 'Joe', 'Banjarmasin, 9 April 1998', 22, 'Jalan Veteran', 'Covid-19', '086969860070', 'Jalan Bumi Mas Raya Komplek Bumi Jaya', 'Pasien diduga positif corona dan diisolasi ke Rs Ulin', '2020-11-01'),
(14, 'Ifit', 'Banjarmasin, 01 Februari1998', 22, 'Jalan Mahligai', 'Covid-19', '0898368268042', 'Puncak HKN', 'Diberi Obat Mylanta', '2020-11-01'),
(15, 'Caca', 'Banjarmasin, 22 Mei 1998', 22, 'Jalan Mahligai', 'ISPA', '087838927972', 'Puncak HKN', 'Di Rujuk Ke Rs Ulin Banjarmasin', '2020-11-01'),
(16, 'Hafi', 'Banjarmasin, 01 Maret 1990', 30, 'Jalan Lokasi', 'ISPA', '087752892452', 'Dinas Kesehatan Prov Kalsel', 'Di Rujuk Ke Rs Ulin Banjarmasin', '2019-11-01'),
(17, 'Haris', 'Banjarmasin, 2 Oktober 1985', 35, 'Jalan Purnasakti', 'Hypertensi', '087772627964', 'Dinas Kesehatan Prov Kalsel', 'Diberi Obat Mylanta', '2019-11-01'),
(18, 'Risfan', 'Banjarmasin, 21 Februari 1992', 28, 'Jalan Landasan Ulin Komplek Golf', 'Hypertensi', '08756858797', 'Dinas Kesehatan Prov Kalsel', 'Diberi Captopril 25 Mg Becefort', '2019-11-01'),
(19, 'Udin', 'Banjarmasin, 03 Oktober 1980', 40, 'Jalan Sungai Lulut Komplek Garuda', 'Hypertensi', '0886877696769', 'Jalan Sungai Lulut Komplek Garuda', 'Di Rujuk Ke Rs Ulin Banjarmasin', '2020-11-01'),
(20, 'Lala', 'Banjarmasin, 20 Maret 1995', 25, 'Jalan Handil Bakti', 'Hypertensi', '0886986833', 'Jalan Handil Bakti', 'Di Rujuk Ke Rs Ulin Banjarmasin', '2019-11-01'),
(21, 'Nana', 'Banjarmasin, 22 Juli 1998', 22, 'Jalan Veteran Komplek Al Ikhwan', 'Covid-19', '087882680202', 'Jalan Veteran Komplek Al Ikhwan', 'Di Rujuk Ke Rs Ulin Banjarmasin', '2020-11-01'),
(22, 'Budi', 'Banjarmasin, 12 Mei 1997', 23, 'Jalan Veteran Komplek Al Ikhwan', 'ISPA', '0887896982623', 'Jalan Veteran Komplek Al Ikhwan', 'Di Rujuk Ke Rs Ulin Banjarmasin', '2018-11-01'),
(23, 'Husdi', 'Banjarmasin, 20 Februari 1988', 32, 'Jalan Alalak No. 23', 'ISPA', '08876926896222', 'Jalan Alalak No. 23', 'Di Rujuk Ke Rs Ansari Shaleh', '2018-11-01'),
(24, 'Bagas', 'Banjarmasin, 01 Oktober 1980', 40, 'Jalan Alalak Utara No. 3', 'ISPA', '0872672862792', 'Jalan Alalak Utara No. 3', 'Di Rujuk Ke Rs Ansari Shaleh', '2018-11-01'),
(25, 'Nana', 'Banjarmasin, 11 Januari 1997', 23, 'jl antasan kecil', 'ISPA', '0822211111', 'Jalan Kenangan', 'Diberi obat', '2020-10-31'),
(26, 'Rimuru', 'Banjarmasin, 12 Febuari 1997', 23, 'jl antasan kecil', 'Hypertensi', '0822211111', 'Jalan Kenangan', 'Diberi obat', '2018-10-31');

-- --------------------------------------------------------

--
-- Table structure for table `pegawai`
--

CREATE TABLE `pegawai` (
  `id` int(11) NOT NULL,
  `NIP` varchar(30) NOT NULL,
  `nama_pegawai` varchar(128) NOT NULL,
  `jenis_kelamin` varchar(10) NOT NULL,
  `jabatan` varchar(30) NOT NULL,
  `golongan` varchar(30) NOT NULL,
  `no_telepon` varchar(15) NOT NULL,
  `email` varchar(50) NOT NULL,
  `alamat` varchar(128) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pegawai`
--

INSERT INTO `pegawai` (`id`, `NIP`, `nama_pegawai`, `jenis_kelamin`, `jabatan`, `golongan`, `no_telepon`, `email`, `alamat`) VALUES
(2, '19874980', 'Awliya Rahman, AMK', 'Laki-laki', 'Perawat', 'Honorer', '081387493783', 'awliya21@gmail.com', 'Jalan Belitung Darat No. 79'),
(3, '13849383', 'Bhagus Hidayat, AMK', 'Laki-laki', 'Perawat', 'Honorer', '081250538111', 'bhagus_gans@gmail.com', 'Jalan Antasan Kecil Timur Dalam RT.14 NO.73 Gang Merah Saga'),
(4, '19769137', 'Bisma Zain Ilham, AMK', 'Laki-laki', 'Perawat', 'Honorer', '0877981828602', 'Bisma11@gmail.com', 'Jalan Belitung No. 287'),
(5, '19753825', 'Dony, AMK', 'Laki-laki', 'Perawat', 'Honorer', '089715264782', 'Dony22@gmail.com', 'Jalan Sungai Lulut'),
(6, '19274922', 'Endi Hermawan, AMK', 'Laki-laki', 'Perawat', 'Honorer', '085218764087', 'Endi88@gmail.com', 'Jalan Belitung Darat No. 22'),
(7, '19337293', 'Isnaniah, AMK', 'Perempuan', 'Perawat', 'Honorer', '0897496389953', 'Isna20@gmail.com', 'Jalan Veteran Gang Dahlia No. 20'),
(8, '19749205', 'Mahani, AMK', 'Perempuan', 'Perawat', 'Honorer', '089964098712', 'Hani33@gmail.com', 'Jalan HKSN No. 40'),
(9, '19332568', 'Melissa Effendie, S.Kep', 'Perempuan', 'Perawat', 'Honorer', '081282876455', 'Melmel@gmail.com', 'Jalan Belitung No. 80'),
(10, '19097904', 'M. Rully Sairi, S.Kep, Ns', 'Laki-laki', 'Perawat', 'Honorer', '0899248024042', 'Arul45@gmail.com', 'Jalan Kayu Tangi No. 99A'),
(11, '19801255', 'Nursyifa, A.md.Kep', 'Perempuan', 'Perawat', 'Honorer', '08983462123', 'Syifabul@gmail.com', 'Jalan Kelayan A Gang Abadi No. 12'),
(12, '1209993', 'Said Thoriq, AMK', 'Laki-laki', 'Perawat', 'Honorer', '0815830842042', 'Said99@gmail.com', 'Jalan Alalak No. 67'),
(13, '1966543', 'Slamet Rusman Hadi, S.Kep', 'Laki-laki', 'Perawat', 'Honorer', '0877923916391', 'Rusman33@gmail.com', 'Jalan Belitung Dalam No. 78'),
(14, '1984363', 'Dr. Aprilia Alvadaro Dirgantari', 'Perempuan', 'Dokter Umum', 'Honorer', '089726785318', 'Aprillya77@gmail.com', 'Jalan Gatoto Subroto Komplek Kelapa Gading No. 32'),
(15, '1909723', 'Dr. M. Rizkha Ridhani', 'Laki-laki', 'Dokter Umum', 'Honorer', '087726544291', 'Dhani09@gmail.com', 'Jalan Cemara No. 50'),
(17, '196412251988122002', 'Hj. Ridha Zuraida, SKM', 'Perempuan', 'Kepala Bidang Yankes', 'III', '088928742842', 'ridha123@gmail.com', 'Jalan HKSN No. 20'),
(18, '196412251988122044', 'Dwi Wulan Permatasari, SKM', 'Perempuan', 'Administrasi', 'Honorer', '086666587539', 'wulan12@gmail.com', 'Jalan Tunjung Maya No. 11');

-- --------------------------------------------------------

--
-- Table structure for table `pengaduan`
--

CREATE TABLE `pengaduan` (
  `id` int(11) NOT NULL,
  `no_identitas` varchar(30) NOT NULL,
  `nama_member` varchar(40) NOT NULL,
  `isi` varchar(256) NOT NULL,
  `tanggal` date NOT NULL,
  `lokasi` varchar(128) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pengaduan`
--

INSERT INTO `pengaduan` (`id`, `no_identitas`, `nama_member`, `isi`, `tanggal`, `lokasi`) VALUES
(10, '123820476846041', 'Joe', 'Ada warga yang diduga positif covid-19', '2020-07-28', 'Jalan bumi mas raya komplek bumi jaya, Banjarmasin'),
(11, '88680606909707', 'Jul', 'Ada Tabrakan Beruntun', '2020-10-02', 'Didepan pasar landasan ulin');

-- --------------------------------------------------------

--
-- Table structure for table `perintah_tugas`
--

CREATE TABLE `perintah_tugas` (
  `id` int(11) NOT NULL,
  `pegawai_id` varchar(50) NOT NULL,
  `nama_kegiatan` varchar(50) NOT NULL,
  `tanggal` date NOT NULL,
  `tempat` varchar(128) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `perintah_tugas`
--

INSERT INTO `perintah_tugas` (`id`, `pegawai_id`, `nama_kegiatan`, `tanggal`, `tempat`) VALUES
(1, 'Awliya Rahman, AMK', 'Covid-19', '2020-06-17', 'Rs Ulin'),
(2, 'Bhagus Hidayat, AMK', 'Covid-19', '2020-06-17', 'Rs Ulin'),
(3, 'Bisma Zain Ilham, AMK', 'Covid-19', '2020-06-17', 'Rs Ulin'),
(4, 'Dr. Aprilia Alvadaro Dirgantari', 'Covid-19', '2020-06-17', 'Rs Ulin'),
(5, 'Endi Hermawan, AMK', 'Sunatan Massal', '2020-07-17', 'PKM. Jejangkit Kab. Barito Kuala'),
(6, 'Isnaniah, AMK', 'Sunatan Massal', '2020-07-17', 'PKM. Jejangkit Kab. Barito Kuala'),
(7, 'Mahani, AMK', 'Sunatan Massal', '2020-07-17', 'PKM. Jejangkit Kab. Barito Kuala'),
(8, 'Melissa Effendie, S.Kep', 'Sunatan Massal', '2020-07-17', 'PKM. Jejangkit Kab. Barito Kuala');

-- --------------------------------------------------------

--
-- Table structure for table `prioritas`
--

CREATE TABLE `prioritas` (
  `id` int(11) NOT NULL,
  `id_pengaduan` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `prioritas`
--

INSERT INTO `prioritas` (`id`, `id_pengaduan`) VALUES
(1, 10);

-- --------------------------------------------------------

--
-- Table structure for table `stok_alat`
--

CREATE TABLE `stok_alat` (
  `id` int(11) NOT NULL,
  `id_alat` varchar(10) NOT NULL,
  `nama_barang` varchar(128) NOT NULL,
  `qty` int(11) NOT NULL,
  `status` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `stok_alat`
--

INSERT INTO `stok_alat` (`id`, `id_alat`, `nama_barang`, `qty`, `status`) VALUES
(1, 'A001', 'Tandu', 10, 'Kondisi Baik'),
(2, 'A002', 'Pelampung', 3, 'Kondisi Baik'),
(3, 'A003', 'Jarum Suntik', 9, 'Kondisi Baik'),
(4, 'A004', 'Matras', 7, 'Kondisi Baik'),
(5, 'A005', 'Stethoscope', 4, 'Kondisi Baik'),
(12, 'A006', 'Tas Medical Kit', 10, 'Kondisi Baik'),
(13, 'A007', 'Sarung', 10, 'Kondisi Baik'),
(14, 'A008', 'Pisau bedah', 15, 'Kondisi Baik');

-- --------------------------------------------------------

--
-- Table structure for table `stok_obat`
--

CREATE TABLE `stok_obat` (
  `id` int(11) NOT NULL,
  `id_barcode` varchar(128) NOT NULL,
  `jenis_obat` varchar(50) NOT NULL,
  `nama_barang` varchar(128) NOT NULL,
  `merek` varchar(80) NOT NULL,
  `harga` int(11) NOT NULL,
  `qty` int(11) NOT NULL,
  `satuan` varchar(128) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `stok_obat`
--

INSERT INTO `stok_obat` (`id`, `id_barcode`, `jenis_obat`, `nama_barang`, `merek`, `harga`, `qty`, `satuan`) VALUES
(19, 'A001', 'Cairan Suntik', 'Ringer Laktat larutan infus (botol/500ml)', 'Otsuka', 7150, 15, 'Botol'),
(20, 'A002', 'Cairan Suntik', 'Sodium Chloride 0.9 % (botol/500ml)', 'Otsuka', 6410, 50, 'Botol'),
(21, 'A003', 'Cairan Suntik', 'Dextrose 5 % (botol/500ml)', 'WIDATRA', 6900, 16, 'Botol'),
(22, 'A004', 'Larutan', 'Diazepam injeksi 5 mg/ml (kotak/10 ampul)', 'Generik', 19130, 8, 'Kotak'),
(23, 'A005', 'Salep', 'Bioplacenton krim (tube/15 gram)', 'Kalbe', 10000, 8, 'Tube'),
(24, 'A006', 'Salep', 'Thromboflash (tube 10 gram)', 'Fahrenheit', 30800, 21, 'Kotak'),
(25, 'A007', 'Tablet', 'Amlodipin 5 mg (kotak/300 tablet)', 'Bernofarm', 22800, 20, 'Kotak'),
(26, 'A008', 'Tablet', 'Amlodipin 10 mg (kotak/30 tablet)', 'Bernofarm', 35000, 17, 'Kotak');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `name` varchar(128) NOT NULL,
  `email` varchar(128) NOT NULL,
  `image` varchar(128) NOT NULL,
  `password` varchar(256) NOT NULL,
  `role_id` int(11) NOT NULL,
  `is_active` int(1) NOT NULL,
  `date_created` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `name`, `email`, `image`, `password`, `role_id`, `is_active`, `date_created`) VALUES
(1, 'STAFF', 'achmad_gazali79@yahoo.com', 'default.jpg', '$2y$10$vkFpji4/shTBMK4rzsCVyO7qV.P1ybsYb3e3kMdYWjko.CjxzCVRS', 3, 1, 1572405254),
(3, 'ADMIN', 'achmadgazali97@gmail.com', 'AGR.jpg', '$2y$10$AItRGsj/Ut8AH78dQ.gE8ugaAaNFQOMnQ/21wptsWfDCqcYWiMXky', 1, 1, 1573784133),
(4, 'USER', 'agzamunich69@gmail.com', 'spgdt-1.jpg', '$2y$10$hhHj8ic0qu2x5f6rnX2gLuomarVbeezWhXA1xGFrvcwX4t1RAbZ.i', 2, 1, 1573890893),
(9, 'Gazali', 'didikanrasul@gmail.com', 'default.jpg', '$2y$10$bvi9hI8c7z9kZf3mbFujz.sMxRakr.AAhlFhTGiJA3/S75IG5V88.', 4, 1, 1589942151);

-- --------------------------------------------------------

--
-- Table structure for table `user_access_menu`
--

CREATE TABLE `user_access_menu` (
  `id` int(11) NOT NULL,
  `role_id` int(11) NOT NULL,
  `menu_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user_access_menu`
--

INSERT INTO `user_access_menu` (`id`, `role_id`, `menu_id`) VALUES
(1, 1, 1),
(3, 2, 2),
(8, 1, 3),
(9, 1, 4),
(10, 2, 4),
(11, 1, 2),
(12, 2, 5),
(13, 1, 6),
(14, 2, 6),
(15, 3, 2),
(16, 3, 7),
(17, 3, 8),
(18, 1, 8),
(19, 2, 8),
(20, 4, 2),
(21, 4, 9),
(22, 4, 8),
(23, 4, 10),
(24, 1, 11);

-- --------------------------------------------------------

--
-- Table structure for table `user_menu`
--

CREATE TABLE `user_menu` (
  `id` int(11) NOT NULL,
  `menu` varchar(128) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user_menu`
--

INSERT INTO `user_menu` (`id`, `menu`) VALUES
(1, 'admin'),
(2, 'user'),
(3, 'menu'),
(5, 'Perintah Tugas'),
(7, 'Staff'),
(8, 'About'),
(9, 'Pengaduan'),
(10, 'Grafik'),
(11, 'Keberhasilan Penanggulangan'),
(12, 'Testing');

-- --------------------------------------------------------

--
-- Table structure for table `user_role`
--

CREATE TABLE `user_role` (
  `id` int(11) NOT NULL,
  `role` varchar(128) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user_role`
--

INSERT INTO `user_role` (`id`, `role`) VALUES
(1, 'Administrator'),
(2, 'User'),
(3, 'Staff'),
(4, 'Member');

-- --------------------------------------------------------

--
-- Table structure for table `user_sub_menu`
--

CREATE TABLE `user_sub_menu` (
  `id` int(11) NOT NULL,
  `menu_id` int(11) NOT NULL,
  `title` varchar(128) NOT NULL,
  `url` varchar(128) NOT NULL,
  `icon` varchar(128) NOT NULL,
  `is_active` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user_sub_menu`
--

INSERT INTO `user_sub_menu` (`id`, `menu_id`, `title`, `url`, `icon`, `is_active`) VALUES
(1, 1, 'Dashboard', 'admin', 'fas fa-fw fa-chart-line', 1),
(2, 2, 'My Profile', 'user', 'fas fa-fw fa-user', 1),
(3, 2, 'Edit Profile', 'user/edit', 'fas fa-fw fa-user-edit', 1),
(4, 3, 'Menu Management', 'menu', 'fas fa-fw fa-tools', 1),
(5, 3, 'Submenu Management', 'menu/submenu', 'fas fa-fw fa-screwdriver', 1),
(6, 1, 'Access Management', 'admin/role', 'fas fa-fw fa-user-tie', 1),
(7, 2, 'Change Password', 'user/changepassword', 'fas fa-fw fa-key', 1),
(8, 4, 'SPGDT Profile', 'about', 'fas fa-fw fa-question-circle', 1),
(9, 1, 'Data Stok Obat', 'obat', 'fas fa-fw fa-capsules', 1),
(10, 1, 'Data Alat Medis', 'alat', 'fas fa-fw fa-stethoscope', 1),
(11, 1, 'Data Pegawai', 'pegawai', 'fas fa-fw fa-users', 1),
(12, 5, 'Tambah Surat Perintah Tugas', 'tugas', 'fas fa-fw fa-file-medical', 1),
(13, 6, 'SPGDT Profile', 'about', 'fas fa-fw fa-question-circle', 1),
(14, 7, 'Data Obat Keluar', 'keluar', 'fas fa-fw fa-truck-moving', 1),
(15, 7, 'Data Obat Masuk', 'masuk', 'fas fa-fw fa-cart-plus', 1),
(16, 8, 'SPGDT Profile', 'about', 'fas fa-fw fa-question-circle', 1),
(17, 1, 'Data Pasien', 'pasien', 'fas fa-fw fa-wheelchair', 1),
(19, 9, 'Pengaduan Masyarakat', 'pengaduan', 'fas fas-fw fa-people-carry', 1),
(20, 10, 'Grafik Kasus', 'grafik', 'fab fa-fw fa-youtube', 1),
(21, 1, 'Pengaduan', 'pengaduan_m', 'fas fa-chalkboard-teacher', 1),
(22, 7, 'Stok Obat', 'masuk/stokobat', 'fas fa-fw fa-capsules', 1),
(23, 1, 'Laporan Kegiatan', 'kegiatan', 'fas fas-fw fa-envelope-open-text', 1),
(24, 11, 'Kegawat Daruratan', 'Gawat', 'fas fa-file-medical-alt', 1),
(25, 5, 'Aduan Masuk', 'tugas/aduan', 'fas fas-fw fa-people-carry', 1),
(26, 1, 'Data Penyakit', 'penyakit', 'fas fa-fw fa-stethoscope', 0);

-- --------------------------------------------------------

--
-- Table structure for table `user_token`
--

CREATE TABLE `user_token` (
  `id` int(11) NOT NULL,
  `email` varchar(128) NOT NULL,
  `token` varchar(128) NOT NULL,
  `date_created` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `gawat_darurat`
--
ALTER TABLE `gawat_darurat`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `laporan_kegiatan`
--
ALTER TABLE `laporan_kegiatan`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `obat_keluar`
--
ALTER TABLE `obat_keluar`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `obat_masuk`
--
ALTER TABLE `obat_masuk`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pasien`
--
ALTER TABLE `pasien`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pegawai`
--
ALTER TABLE `pegawai`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pengaduan`
--
ALTER TABLE `pengaduan`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `perintah_tugas`
--
ALTER TABLE `perintah_tugas`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `prioritas`
--
ALTER TABLE `prioritas`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `stok_alat`
--
ALTER TABLE `stok_alat`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `stok_obat`
--
ALTER TABLE `stok_obat`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_access_menu`
--
ALTER TABLE `user_access_menu`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_menu`
--
ALTER TABLE `user_menu`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_role`
--
ALTER TABLE `user_role`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_sub_menu`
--
ALTER TABLE `user_sub_menu`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_token`
--
ALTER TABLE `user_token`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `gawat_darurat`
--
ALTER TABLE `gawat_darurat`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT for table `laporan_kegiatan`
--
ALTER TABLE `laporan_kegiatan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `obat_keluar`
--
ALTER TABLE `obat_keluar`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `obat_masuk`
--
ALTER TABLE `obat_masuk`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `pasien`
--
ALTER TABLE `pasien`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `pegawai`
--
ALTER TABLE `pegawai`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `pengaduan`
--
ALTER TABLE `pengaduan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `perintah_tugas`
--
ALTER TABLE `perintah_tugas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `prioritas`
--
ALTER TABLE `prioritas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `stok_alat`
--
ALTER TABLE `stok_alat`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `stok_obat`
--
ALTER TABLE `stok_obat`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `user_access_menu`
--
ALTER TABLE `user_access_menu`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `user_menu`
--
ALTER TABLE `user_menu`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `user_role`
--
ALTER TABLE `user_role`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `user_sub_menu`
--
ALTER TABLE `user_sub_menu`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `user_token`
--
ALTER TABLE `user_token`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
