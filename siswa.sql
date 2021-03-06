-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 05, 2020 at 12:22 AM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.2.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `test`
--

-- --------------------------------------------------------

--
-- Table structure for table `siswa`
--

CREATE TABLE `siswa` (
  `id` int(255) UNSIGNED NOT NULL,
  `nama_lengkap` varchar(255) DEFAULT NULL,
  `nama_panggilan` varchar(255) DEFAULT NULL,
  `nis` varchar(255) DEFAULT NULL,
  `nisn` varchar(255) DEFAULT NULL,
  `nik` varchar(255) DEFAULT NULL,
  `nikk` varchar(255) DEFAULT NULL,
  `jenis_kelamin` varchar(255) DEFAULT NULL,
  `tempat_lahir` varchar(255) DEFAULT NULL,
  `tanggal_lahir` varchar(255) DEFAULT NULL,
  `alamat` varchar(255) DEFAULT NULL,
  `kelurahan` varchar(255) DEFAULT NULL,
  `kecamatan` varchar(255) DEFAULT NULL,
  `kota_kab` varchar(255) DEFAULT NULL,
  `provinsi` varchar(255) DEFAULT NULL,
  `kode_pos` varchar(255) DEFAULT NULL,
  `agama` varchar(255) DEFAULT NULL,
  `ayah` varchar(255) DEFAULT NULL,
  `pekerjaan_ayah` varchar(255) DEFAULT NULL,
  `penghasilan_ayah` varchar(255) DEFAULT NULL,
  `ibu` varchar(255) DEFAULT NULL,
  `pekerjaan_ibu` varchar(255) DEFAULT NULL,
  `penghasilan_ibu` varchar(255) DEFAULT NULL,
  `wali` varchar(255) DEFAULT NULL,
  `pekerjaan_wali` varchar(255) DEFAULT NULL,
  `penghasilan_wali` varchar(255) DEFAULT NULL,
  `foto` varchar(255) DEFAULT NULL,
  `tanggal_masuk` date DEFAULT NULL,
  `aktif` tinyint(1) DEFAULT NULL,
  `telp_wali` varchar(255) DEFAULT NULL,
  `telp_ayah` varchar(255) DEFAULT NULL,
  `telp_ibu` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `siswa`
--

INSERT INTO `siswa` (`id`, `nama_lengkap`, `nama_panggilan`, `nis`, `nisn`, `nik`, `nikk`, `jenis_kelamin`, `tempat_lahir`, `tanggal_lahir`, `alamat`, `kelurahan`, `kecamatan`, `kota_kab`, `provinsi`, `kode_pos`, `agama`, `ayah`, `pekerjaan_ayah`, `penghasilan_ayah`, `ibu`, `pekerjaan_ibu`, `penghasilan_ibu`, `wali`, `pekerjaan_wali`, `penghasilan_wali`, `foto`, `tanggal_masuk`, `aktif`, `telp_wali`, `telp_ayah`, `telp_ibu`) VALUES
(4, 'ABIYU RAMADHANI SETIAWAN', NULL, '216001', NULL, NULL, NULL, 'L', 'MALANG', '2006-06-23', 'JL SUKAPURA 111', NULL, NULL, 'MALANG', 'JAWA TIMUR', NULL, 'Islam', 'HARI SETIAWAN', 'WIRASWASTA', NULL, 'SITI ROMLAH', 'IBU RUMAH TANGGA', NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, '`62813317861', NULL),
(5, 'ACHMAD JOSSY RIZAL', '', '216002', '', '', '', 'L', 'MALANG', '2009-09-10', 'JL SUMBERSARI VI/20 A', '', '', 'MALANG', 'JAWA TIMUR', '', 'Islam', 'ACHMAD FREDI ASFRIYANTO', 'WIRASWASTA', '', 'IRAWATI', 'IBU RUMAH TANGGA', '', '', '', '', '', '0000-00-00', 0, '', '', ''),
(6, 'ACHMAD RACHMAD TAUFIQ', NULL, '216003', NULL, NULL, NULL, 'L', 'MALANG', '2008-12-10', 'JL MAWAR I/144-B', NULL, NULL, 'MALANG', 'JAWA TIMUR', NULL, 'Islam', 'ABDUL MUJIB', 'WIRASWASTA', NULL, 'LILIK SUMARMI', 'IBU RUMAH TANGGA', NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, '`62823329888', NULL),
(7, 'AHMAD BAGUS SETYO AJI', NULL, '216004', NULL, NULL, NULL, 'L', 'MALANG', '2008-10-14', 'JL JA SUPRAPTO I/75', NULL, NULL, 'MALANG', 'JAWA TIMUR', NULL, 'Islam', 'CAHYO PURWONO AJI', 'WIRASWASTA', NULL, 'YAYUK ISWATI', 'IBU RUMAH TANGGA', NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, '`62852340569', NULL),
(8, 'AHNAF DEVIN RAMADANI', NULL, '216005', NULL, NULL, NULL, 'L', 'MALANG', '2004-11-11', 'JL KALIURANG BARAT III/1402', NULL, NULL, 'MALANG', 'JAWA TIMUR', NULL, 'Islam', 'MUHAMMAD ARIFIN', 'WIRASWASTA', NULL, 'DESY NOVIARI', 'IBU RUMAH TANGGA', NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, '`62881331874', NULL),
(9, 'AISYAH NAYLA TURROHMAH', NULL, '216006', NULL, NULL, NULL, 'P', 'MALANG', '2008-09-26', 'JL LEMBANG II-D/1538', NULL, NULL, 'MALANG', 'JAWA TIMUR', NULL, 'Islam', 'WAHYONO SLAMET', 'WIRASWASTA', NULL, 'AFRILIA KUSMIHARI', 'IBU RUMAH TANGGA', NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, '`62813352291', NULL),
(10, 'ALIFVINO SETIAWAN', NULL, '216007', NULL, NULL, NULL, 'L', 'MALANG', '2008-11-07', 'JL JA SUPRAPTO I-L/171', NULL, NULL, 'MALANG', 'JAWA TIMUR', NULL, 'Islam', 'WARSO GIYONO', 'WIRASWASTA', NULL, 'WIWIT SETYO MUKTI', 'IBU RUMAH TANGGA', NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, '`62857495491', NULL),
(11, 'ALLAN PUJA PRATAMA', NULL, '216008', NULL, NULL, NULL, 'L', 'MALANG', '2010-02-23', 'JL JA SUPRAPTO I-L/7', NULL, NULL, 'MALANG', 'JAWA TIMUR', NULL, 'Islam', 'JARWO SUBEKTI', 'WIRASWASTA', NULL, 'PUJI RAIDA', 'IBU RUMAH TANGGA', NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, '`62888557432', NULL),
(12, 'ARLE EVANDER ATTALLA', NULL, '216009', NULL, NULL, NULL, 'L', 'MALANG', '2008-02-25', 'JL SUKAPURA 109', NULL, NULL, 'MALANG', 'JAWA TIMUR', NULL, 'Islam', 'NANANG SUGIANTO', 'WIRASWASTA', NULL, 'RINA IRAWATI', 'IBU RUMAH TANGGA', NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL),
(13, 'AZARIA RIFDAH RAMADHANI', NULL, '216010', NULL, NULL, NULL, 'P', 'MALANG', '2008-09-13', 'JL DANAU KERINCI II E5 E-17', NULL, NULL, 'MALANG', 'JAWA TIMUR', NULL, 'Islam', 'ERWAN NOVANDI', 'WIRASWASTA', NULL, 'LAILY ROCHMA', 'IBU RUMAH TANGGA', NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, '`62822454886', NULL),
(14, 'AZIZAH WALIDATIL ARDI', NULL, '216011', NULL, NULL, NULL, 'P', 'MALANG', '2011-03-01', 'JL KINTAMANI II/12', NULL, NULL, 'MALANG', 'JAWA TIMUR', NULL, 'Islam', 'ARDI YULIANTO', 'WIRASWASTA', NULL, 'SYARIFATUZZAHRO', 'IBU RUMAH TANGGA', NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, '`62813350351', NULL),
(15, 'AZ-ZAHRA WALIDATIL ARDI', NULL, '216012', NULL, NULL, NULL, 'P', 'MALANG', '2009-08-15', 'JL KINTAMANI II/12', NULL, NULL, 'MALANG', 'JAWA TIMUR', NULL, 'Islam', 'ARDI YULIANTO', 'WIRASWASTA', NULL, 'SYARIFATUZZAHRO', 'IBU RUMAH TANGGA', NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, '`62813350351', NULL),
(16, 'CARISSA MAHARANI SAFITRI', NULL, '216013', NULL, NULL, NULL, 'P', 'KEDIRI', '2010-09-09', 'JL KALIURANG BARAT I/2', NULL, NULL, 'MALANG', 'JAWA TIMUR', NULL, 'Islam', 'BEKTI AFANDI', 'WIRASWASTA', NULL, 'INDAH WULANDARI', 'IBU RUMAH TANGGA', NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, '`62856676039', NULL),
(17, 'CHRISTOPHER ELANG SATRIA', NULL, '216014', NULL, NULL, NULL, 'L', 'MALANG', '2009-05-04', 'JL KALIURANG BARAT 123-A', NULL, NULL, 'MALANG', 'JAWA TIMUR', NULL, 'Islam', 'GILANG SURYANTO', 'WIRASWASTA', NULL, 'ERNAWATI', 'IBU RUMAH TANGGA', NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL),
(18, 'DIANA NOVITA SARI', NULL, '216015', NULL, NULL, NULL, 'L', 'MALANG', '2007-11-10', 'JL JA SUPRAPTO I-G/115', NULL, NULL, 'MALANG', 'JAWA TIMUR', NULL, 'Islam', 'SISWANTO', 'WIRASWASTA', NULL, 'HERNANIK', 'IBU RUMAH TANGGA', NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, '`62822457047', NULL),
(19, 'EKA ARYA SANTOSO', NULL, '216016', NULL, NULL, NULL, 'L', 'MALANG', '2006-11-11', 'JL LEMBANG NO 123', NULL, NULL, 'MALANG', 'JAWA TIMUR', NULL, 'Islam', 'H. M. EDY SANTOSO', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL),
(20, 'FAIZ FIRDAUS AKBAR', NULL, '216017', NULL, NULL, NULL, 'L', 'MALANG', '2007-01-30', 'JL JA SUPRAPTO I-L/3', NULL, NULL, 'MALANG', 'JAWA TIMUR', NULL, 'Islam', 'DIDIK NOVIANTO', 'WIRASWASTA', NULL, 'SRI MUNTIANI', 'IBU RUMAH TANGGA', NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL),
(21, 'FARRAS ANINDYA PUTRI', NULL, '216018', NULL, NULL, NULL, 'P', 'MALANG', '2008-11-11', 'JL JA SUPRAPTO I-G/116', NULL, NULL, 'MALANG', 'JAWA TIMUR', NULL, 'Islam', 'PANCA SETYO BUDI', 'WIRASWASTA', NULL, 'SUMIATUN', 'IBU RUMAH TANGGA', NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, '`62812302725', NULL),
(22, 'FARREL GIAN ISTINTO', NULL, '216019', NULL, NULL, NULL, 'L', 'MALANG', '2008-01-29', 'JL LEMBANG II-D/1509', NULL, NULL, 'MALANG', 'JAWA TIMUR', NULL, 'Islam', 'PUNGKY CHRISARIYANTO', 'WIRASWASTA', NULL, 'MISTINI', 'IBU RUMAH TANGGA', NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, '`62812525990', NULL),
(23, 'HAFIZH RAMADHAN D', NULL, '216020', NULL, NULL, NULL, 'L', 'MALANG', '2008-09-15', 'JL TAPAKSIRING II/35', NULL, NULL, 'MALANG', 'JAWA TIMUR', NULL, 'Islam', 'EDI PURNOMO', 'WIRASWASTA', NULL, 'SRI WAHYUNI', 'IBU RUMAH TANGGA', NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL),
(24, 'IBNU ABAS', NULL, '216021', NULL, NULL, NULL, 'L', 'MALANG', '2008-03-04', 'JL LEMBANG II-D/1513-B', NULL, NULL, 'MALANG', 'JAWA TIMUR', NULL, 'Islam', 'SUROSO', 'WIRASWASTA', NULL, 'NGATIAH', 'IBU RUMAH TANGGA', NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL),
(25, 'IMAM AHMAD AINURRIDHO', NULL, '216022', NULL, NULL, NULL, 'L', 'MALANG', '2006-05-29', 'JL JA SUPRAPTO II-E/97-A', NULL, NULL, 'MALANG', 'JAWA TIMUR', NULL, 'Islam', 'JUMIKAN MOGOG', 'WIRASWASTA', NULL, NULL, 'IBU RUMAH TANGGA', NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL),
(26, 'IMELLA TIVANDA SHAHARANI', NULL, '216023', NULL, NULL, NULL, 'P', 'MALANG', '2005-09-15', 'JL MAWAR GG 1 NO 4 B', NULL, NULL, 'MALANG', 'JAWA TIMUR', NULL, 'Islam', 'MOCHAMAD SHOLEH', 'WIRASWASTA', NULL, 'ROSITA NURUL AINI', 'IBU RUMAH TANGGA', NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL),
(27, 'M. AKMAL HAFIZ ABHYASA', NULL, '216024', NULL, NULL, NULL, 'L', 'MALANG', '2006-07-06', 'JL DANAU KERINCI II E5 E-17', NULL, NULL, 'MALANG', 'JAWA TIMUR', NULL, 'Islam', 'ERWAN NOVANDI', 'WIRASWASTA', NULL, 'LAILY ROCHMA', 'IBU RUMAH TANGGA', NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, '`62822454886', NULL),
(28, 'M. ELMI BACHRUL ULUM', NULL, '216025', NULL, NULL, NULL, 'L', 'MALANG', '2008-02-02', 'JL SUKAPURA 111 A', NULL, NULL, 'MALANG', 'JAWA TIMUR', NULL, 'Islam', 'FENDY H', 'WIRASWASTA', NULL, 'SITI INDAH K', 'IBU RUMAH TANGGA', NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL),
(29, 'MARSYA PRAPESWARI YUSFIAH', NULL, '216026', NULL, NULL, NULL, 'P', 'MALANG', '2007-06-14', 'JL JA SUPRAPTO I-G/78', NULL, NULL, 'MALANG', 'JAWA TIMUR', NULL, 'Islam', 'MOCHAMMAD YUSWANTO', 'WIRASWASTA', NULL, 'SURYA ISNAINI YULFAH', 'IBU RUMAH TANGGA', NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, '`62851077711', NULL),
(30, 'MAULANA EKA PRATAMA', NULL, '216027', NULL, NULL, NULL, 'L', 'MALANG', '2005-04-22', 'JL NGANTANG 8', NULL, NULL, 'MALANG', 'JAWA TIMUR', NULL, 'Islam', 'KHOIRUL ANAM', 'WIRASWASTA', NULL, 'KUTSIYAH', 'IBU RUMAH TANGGA', NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, '`62856499412', NULL),
(31, 'METZALLUNA DZAKIRAH ISLAMI NEGARA', NULL, '216028', NULL, NULL, NULL, 'P', 'MALANG', '2008-03-11', 'JL SUKAPURA NO 108', NULL, NULL, 'MALANG', 'JAWA TIMUR', NULL, 'Islam', 'KUSTRIAMAN', 'WIRASWASTA', NULL, 'TUTUT WIDIYAH', 'IBU RUMAH TANGGA', NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, '`62877597879', NULL),
(32, 'MOCH RADIFA ILHAM KURNIAWAN', NULL, '216029', NULL, NULL, NULL, 'L', 'MALANG', '2008-01-31', 'JL GILIMANUK 36', NULL, NULL, 'MALANG', 'JAWA TIMUR', NULL, 'Islam', 'ANDRI SUBAGIYO', 'WIRASWASTA', NULL, 'ERNY KURNIAWATI', 'IBU RUMAH TANGGA', NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, '`62858556103', NULL),
(33, 'MUETYA HAFFIDZ', NULL, '216030', NULL, NULL, NULL, 'P', 'MALANG', '2005-07-02', 'JL BATOK 17-D', NULL, NULL, 'MALANG', 'JAWA TIMUR', NULL, 'Islam', 'MARIO FEBRIANTO', 'WIRASWASTA', NULL, 'IDA WAHYU STYANINGRUM', 'IBU RUMAH TANGGA', NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, '`62838338074', NULL),
(34, 'MUHAMMAD ALIF FAUZY', NULL, '216031', NULL, NULL, NULL, 'L', 'MALANG', '2010-02-12', 'JL JA SUPRAPTO II-E/357', NULL, NULL, 'MALANG', 'JAWA TIMUR', NULL, 'Islam', 'AFFANDI', 'WIRASWASTA', NULL, 'YENI ASTUTIK', 'IBU RUMAH TANGGA', NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, '`62857558925', NULL),
(35, 'MUHAMMAD FAHRI DWI AKBAR', NULL, '216032', NULL, NULL, NULL, 'L', 'MALANG', '2009-03-29', 'JL JA SUPRAPTO II/92', NULL, NULL, 'MALANG', 'JAWA TIMUR', NULL, 'Islam', 'HARY SUDARMANTO', 'WIRASWASTA', NULL, 'DYAH FARIANTINI', 'IBU RUMAH TANGGA', NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, '`62813366925', NULL),
(36, 'MUHAMMAD SHOLEH FAIZ IHSAN', NULL, '216033', NULL, NULL, NULL, 'L', 'MALANG', '2009-05-22', 'JL JA SUPRAPTO I-G/122-A', NULL, NULL, 'MALANG', 'JAWA TIMUR', NULL, 'Islam', 'SUTADJI', 'WIRASWASTA', NULL, 'IIN INDRAWATI', 'IBU RUMAH TANGGA', NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, '`62858505146', NULL),
(37, 'MUHAMMAD SYAHRUL AZKIYAA', NULL, '216034', NULL, NULL, NULL, 'L', 'MALANG', '2009-07-21', 'JL JA SUPRAPTO II-E/327', NULL, NULL, 'MALANG', 'JAWA TIMUR', NULL, 'Islam', 'MOCH. SAIFUL ROCHMAN', 'WIRASWASTA', NULL, 'RAHAYU INDARWATI', 'IBU RUMAH TANGGA', NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, '`62838346215', NULL),
(38, 'MUHAMMAD WILDAN NAFI\'', NULL, '216035', NULL, NULL, NULL, 'L', 'MALANG', '2009-01-03', 'JL KALIURANG BARAT III/1390-A', NULL, NULL, 'MALANG', 'JAWA TIMUR', NULL, 'Islam', 'SUHERIYANTO', 'WIRASWASTA', NULL, 'AIDA', 'IBU RUMAH TANGGA', NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, '`62838359201', NULL),
(39, 'MUHAMMAD YASRIL WIBAWA', NULL, '216036', NULL, NULL, NULL, 'L', 'MALANG', '2008-02-12', 'JL SUKAPURA 119', NULL, NULL, 'MALANG', 'JAWA TIMUR', NULL, 'Islam', 'YANIS SUHARTO', 'WIRASWASTA', NULL, 'DESI HARINI', 'IBU RUMAH TANGGA', NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, '`62881492717', NULL),
(40, 'NABILA RAHMA KRISTANTI', NULL, '216037', NULL, NULL, NULL, 'P', 'MALANG', '2004-04-18', 'JL JA SUPRAPTO 1-M/141', NULL, NULL, 'MALANG', 'JAWA TIMUR', NULL, 'Islam', 'SANTOSO', 'WIRASWASTA', NULL, 'KRISTIN SOEHARTINI', 'IBU RUMAH TANGGA', NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, '`62823348785', NULL),
(41, 'NADYAH HAFIZAH AZALIANTI YUSFIAH', NULL, '216038', NULL, NULL, NULL, 'P', 'MALANG', '2005-08-08', 'JL JA SUPRAPTO I-G/78', NULL, NULL, 'MALANG', 'JAWA TIMUR', NULL, 'Islam', 'MOCHAMMAD YUSWANTO', 'WIRASWASTA', NULL, 'SURYA ISNAINI YULFAH', 'IBU RUMAH TANGGA', NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, '`62851077711', NULL),
(42, 'NAILA APTA SARI', NULL, '216039', NULL, NULL, NULL, 'P', 'MALANG', '2007-01-07', 'JL SUKAPURA 119', NULL, NULL, 'MALANG', 'JAWA TIMUR', NULL, 'Islam', 'YANIS SUHARTO', 'WIRASWASTA', NULL, 'DESI HARINI', 'IBU RUMAH TANGGA', NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, '`62881492717', NULL),
(43, 'NURUL LAILATUL FITRI', NULL, '216040', NULL, NULL, NULL, 'P', 'MALANG', '2006-10-15', 'JL SUKAPURA 109 B', NULL, NULL, 'MALANG', 'JAWA TIMUR', NULL, 'Islam', 'ACHMAD RIFADI', 'WIRASWASTA', NULL, 'BADRIYAH', 'IBU RUMAH TANGGA', NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, '`62819377189', NULL),
(44, 'OUREEL AL IMAN MAULANA', NULL, '216041', NULL, NULL, NULL, 'L', 'MALANG', '2008-11-26', 'JL LEMBANG GG I NO 10', NULL, NULL, 'MALANG', 'JAWA TIMUR', NULL, 'Islam', 'AGUS SUPAAT', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL),
(45, 'PAUNDRA PUTRA PRATAMA', NULL, '216042', NULL, NULL, NULL, 'L', 'MALANG', '2010-03-21', 'JL JA SUPRAPTO 11-B/315-B', NULL, NULL, 'MALANG', 'JAWA TIMUR', NULL, 'Islam', 'SUGIANTORO', 'WIRASWASTA', NULL, 'ENI SETYOWATI', 'IBU RUMAH TANGGA', NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, '`62857856391', NULL),
(46, 'PRAPANCA PUTRA BAKTI ARIYANTO', NULL, '216043', NULL, NULL, NULL, 'L', 'MALANG', '2009-09-24', 'JL NGANTANG V/10', NULL, NULL, 'MALANG', 'JAWA TIMUR', NULL, 'Islam', 'SUYANTO', 'WIRASWASTA', NULL, 'SUNU MUDJIATI', 'IBU RUMAH TANGGA', NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, '`62838488955', NULL),
(47, 'PRAYOGA BARA PUTRA', NULL, '216044', NULL, NULL, NULL, 'L', 'BATU', '2009-01-29', 'JL TAPAKSIRING NO 2', NULL, NULL, 'MALANG', 'JAWA TIMUR', NULL, 'Islam', 'YOHANES WIJAYANTO', 'WIRASWASTA', NULL, 'PUJI ASTUTI', 'IBU RUMAH TANGGA', NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, '`62823362427', NULL),
(48, 'PUTRI RAHAYU', NULL, '216045', NULL, NULL, NULL, 'P', 'MALANG', '2011-01-26', 'JL MAWAR II/20-A', NULL, NULL, 'MALANG', 'JAWA TIMUR', NULL, 'Islam', 'YESSA GILANG PARAHESTIAWAN', 'WIRASWASTA', NULL, 'EKA HANIK BUDIANI', 'IBU RUMAH TANGGA', NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, '`62812161233', NULL),
(49, 'RAFA ZELIA PUTRI', NULL, '216046', NULL, NULL, NULL, 'P', 'MALANG', '2009-04-11', 'JL SUKAPURA 97', NULL, NULL, 'MALANG', 'JAWA TIMUR', NULL, 'Islam', 'YUSUP ZAINUDIN', 'WIRASWASTA', NULL, 'SRI WAHYUNI', 'IBU RUMAH TANGGA', NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL),
(50, 'RAISSA ALMAIRA PUTRI', NULL, '216047', NULL, NULL, NULL, 'P', 'MALANG', '2009-07-25', 'JL JA SUPRAPTO I/73', NULL, NULL, 'MALANG', 'JAWA TIMUR', NULL, 'Islam', 'I NYOMAN HERIAWAN', 'WIRASWASTA', NULL, 'WAHYU DWI PRATIWI', 'IBU RUMAH TANGGA', NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, '`62898691921', NULL),
(51, 'RIFQI ARYA SAPUTRA', NULL, '216048', NULL, NULL, NULL, 'L', 'MALANG', '2004-06-12', 'JL TAPAKSIRING II/35', NULL, NULL, 'MALANG', 'JAWA TIMUR', NULL, 'Islam', 'EDI PURNOMO', 'WIRASWASTA', NULL, 'SRI WAHYUNI', 'IBU RUMAH TANGGA', NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL),
(52, 'SAFFA ALZAHRA OKTAVIA', NULL, '216049', NULL, NULL, NULL, 'P', 'MALANG', '2009-10-15', 'JL TAPAKSIRING III/KAV 22', NULL, NULL, 'MALANG', 'JAWA TIMUR', NULL, 'Islam', 'PIRYONO', 'WIRASWASTA', NULL, 'DWI HASTUTIK', 'IBU RUMAH TANGGA', NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, '`62857315905', NULL),
(53, 'TALITHA ASIYAH ZAHRA', NULL, '216050', NULL, NULL, NULL, 'P', 'MALANG', '2006-09-23', 'JL JA SUPRAPTO II-E/348', NULL, NULL, 'MALANG', 'JAWA TIMUR', NULL, 'Islam', 'R ANDRY WIDJAYANTO', 'WIRASWASTA', NULL, 'DEWI SULISTYOWATI', 'IBU RUMAH TANGGA', NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, '`62851001888', NULL),
(54, 'YAAFI DWI KARTIKO', NULL, '216051', NULL, NULL, NULL, 'L', 'MALANG', '0000-00-00', 'JL NGANTANG I/19', NULL, NULL, 'MALANG', 'JAWA TIMUR', NULL, 'Islam', 'WAHYUDI PRASETYO', 'WIRASWASTA', NULL, NULL, 'IBU RUMAH TANGGA', NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL),
(55, 'YOGI KURNIAWAN', NULL, '216052', NULL, NULL, NULL, 'L', 'MALANG', '2009-10-04', 'JL NGANTANG 8', NULL, NULL, 'MALANG', 'JAWA TIMUR', NULL, 'Islam', 'KHOIRUL ANAM', 'WIRASWASTA', NULL, 'KUTSIYAH', 'IBU RUMAH TANGGA', NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, '`62856499412', NULL),
(56, 'ZACKLEE FARELINO YUSFIAH', NULL, '216053', NULL, NULL, NULL, 'L', 'MALANG', '2008-06-21', 'JL JA SUPRAPTO I-G/78', NULL, NULL, 'MALANG', 'JAWA TIMUR', NULL, 'Islam', 'MOCHAMMAD YUSWANTO', 'WIRASWASTA', NULL, 'SURYA ISNAINI YULFAH', 'IBU RUMAH TANGGA', NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, '`62851077711', NULL),
(57, 'ZAFRANI MAULIDYA', NULL, '216054', NULL, NULL, NULL, 'P', 'MALANG', '2011-03-17', 'JL KALIURANG BARAT III/1392', NULL, NULL, 'MALANG', 'JAWA TIMUR', NULL, 'Islam', 'SUBANDI', 'WIRASWASTA', NULL, 'ROSILIYAH', 'IBU RUMAH TANGGA', NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, '`62838345026', NULL),
(58, 'ZAMIR FAIRUS', NULL, '216055', NULL, NULL, NULL, 'L', 'MALANG', '2010-11-03', 'JL KH HASYIM ASHARI VI/1415 L', NULL, NULL, 'MALANG', 'JAWA TIMUR', NULL, 'Islam', 'ARIS ISKANDAR', 'WIRASWASTA', NULL, 'RENI DWI ESTININGRUM', 'IBU RUMAH TANGGA', NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, '`62896498536', NULL),
(59, 'NAURA AZZARA RACHMAWATI', NULL, '217056', NULL, NULL, NULL, 'P', 'MALANG', '2010-11-24', 'JL JA SUPRAPTO I/14', NULL, NULL, 'MALANG', 'JAWA TIMUR', NULL, 'Islam', 'RACHMAD WIDJIYANTO', 'WIRASWASTA', NULL, 'INDRAWATI', 'IBU RUMAH TANGGA', NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, '`62821396193', NULL),
(60, 'ALIEFSYAH AZAENURI', NULL, '217057', NULL, NULL, NULL, 'L', 'MALANG', '2011-05-29', 'JL RAYA CANDI II/45', NULL, NULL, 'MALANG', 'JAWA TIMUR', NULL, 'Islam', 'HASAN BISRI', 'SWASTA', NULL, 'ZAZILATUL SHOLICHA', 'SWASTA', NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, '`62812681398', NULL),
(61, 'FIRYAAL AQIL AIDA THUFAILANI', NULL, '217058', NULL, NULL, NULL, 'P', 'MALANG', '2012-03-11', 'JL JA SUPRAPTO II/152 B', NULL, NULL, 'MALANG', 'JAWA TIMUR', NULL, 'Islam', 'LUKMAN HAKIM', 'SWASTA', NULL, 'NOVI NINGRUM', 'IBU RUMAH TANGGA', NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, '`62822318744', NULL),
(62, 'KHAIRA AZARIA', NULL, '217059', NULL, NULL, NULL, 'P', 'DENPASAR', '2011-02-09', 'JL SUKAPURA 35', NULL, NULL, 'MALANG', 'JAWA TIMUR', NULL, 'Islam', 'RINO ARGATA RINJANI', 'KARYAWAN SWASTA', NULL, 'YUNUR CAHYA N (NENEK)', 'SWASTA', NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL),
(63, 'MUHAMMAD HIBBAN AL FAWWAZ', NULL, '217060', NULL, NULL, NULL, 'L', 'MALANG', '2012-06-18', 'JL LETJEN SUTOYO IV//83 C', NULL, NULL, 'MALANG', 'JAWA TIMUR', NULL, 'Islam', 'MUHAMMAD TAUFIK', 'WIRASWASTA', NULL, 'RUSTIFA SARI', 'IBU RUMAH TANGGA', NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, '`6285N7913099', NULL),
(64, 'KALISTA HANNA SABRINA NUR ELISIA', NULL, '217061', NULL, NULL, NULL, 'P', 'MALANG', '2008-12-21', 'JL TAWANGMANGU I/5', NULL, NULL, 'MALANG', 'JAWA TIMUR', NULL, 'Islam', 'DIDIT PERMADI', 'WIRASWASTA', NULL, 'YUYUN NING WAHYUNI', 'WIRASWASTA', NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, '`62852114466', NULL),
(65, 'GHAIDA AZ ZAHRA PUTRI AULIA', NULL, '217062', NULL, NULL, NULL, 'P', 'MALANG', '2010-09-08', 'JL JA SUPRAPTO IG/138', NULL, NULL, 'MALANG', 'JAWA TIMUR', NULL, 'Islam', 'GANANG ADI PRASETYO', 'WIRASWASTA', NULL, 'SRI MULIYATI', 'IBU RUMAH TANGGA', NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, '`62851060726', NULL),
(66, 'AHMAD AKBAR ALFATIH', NULL, '217063', NULL, NULL, NULL, 'L', 'MALANG', '2011-04-27', 'JL JA SUPRAPTO II/84', NULL, NULL, 'MALANG', 'JAWA TIMUR', NULL, 'Islam', 'ACHMAD ANANG BASORI', 'WIRASWASTA', NULL, 'SOFIA FITRIA WANTI', 'IBU RUMAH TANGGA', NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, '`62838318`6287', NULL),
(67, 'HAFIZ ARIEF MAULANA', NULL, '217064', NULL, NULL, NULL, 'L', 'MALANG', '2011-05-14', 'JL JA SUPRAPTO II/45', NULL, NULL, 'MALANG', 'JAWA TIMUR', NULL, 'Islam', 'SYAMSI ARIEF', 'SWASTA', NULL, 'TITIK ANDRIANI', 'KARYAWAN SWASTA', NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, '`62813342007', NULL),
(68, 'MUHAMMAD RAIHAN IBNU ALIF', NULL, '217065', NULL, NULL, NULL, 'L', 'MALANG', '2011-07-03', 'JL JA SUPRAPTO III/33', NULL, NULL, 'MALANG', 'JAWA TIMUR', NULL, 'Islam', 'SAMSUL SUHARDI', 'KARYAWAN SWASTA', NULL, 'ANITA ANORFIDA', 'IBU RUMAH TANGGA', NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, '`62822458599', NULL),
(69, 'NABILA KHANZA CANTIKA', NULL, '217066', NULL, NULL, NULL, 'P', 'MALANG', '2008-12-21', 'JL BS RIADI IX/228', NULL, NULL, 'MALANG', 'JAWA TIMUR', NULL, 'Islam', 'HERU PUTRA PRASETYA', 'SWASTA', NULL, 'INTAN PRIYATIM', 'SWASTA', NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, '`62812836205', NULL),
(70, 'ZIDNI NUR NAFI\'A', NULL, '217067', NULL, NULL, NULL, 'P', 'MALANG', '2009-12-17', 'JL LEMBANG 100', NULL, NULL, 'MALANG', 'JAWA TIMUR', NULL, 'Islam', 'MOCHAMMAD SAIFUL', 'KARYAWAN SWASTA', NULL, 'NENENG SAFTRI', 'IBU RUMAH TANGGA', NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, '`62822232260', NULL),
(71, 'NADINE ANINDYA PUTRI', NULL, '217068', NULL, NULL, NULL, 'P', 'MALANG', '2011-12-17', 'JL JA SUPRAPTO IG/116', NULL, NULL, 'MALANG', 'JAWA TIMUR', NULL, 'Islam', 'PANCA SETYO BUDI', 'BURUH HARIAN LEPAS', NULL, 'SUMIATUN', 'IBU RUMAH TANGGA', NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, '`62812302725', NULL),
(72, 'TALITHA BELVA ZAHIRAH MARITZA', NULL, '218069', NULL, NULL, NULL, 'P', 'MALANG', '2010-02-14', 'JL TAPAKSIRING II/43-B', NULL, NULL, 'MALANG', 'JAWA TIMUR', NULL, 'Islam', 'NOVAR RAHARDIAN YUSTITIAWAN', 'KARYAWAN SWASTA', NULL, 'SINTA MUTIARA SARI', 'KARYAWAN SWASTA', NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, '`62819453922', NULL),
(73, 'MIFTA ROHMATUS TSANIA', NULL, '218070', NULL, NULL, NULL, 'P', 'MALANG', '2012-06-12', 'JL LEMBANG II-D/1538', NULL, NULL, 'MALANG', 'JAWA TIMUR', NULL, 'Islam', 'WAHYONO SLAMET', 'KARYAWAN SWASTA', NULL, 'AFRILIA KUSMIHARI', 'IBU RUMAH TANGGA', NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, '`62813347704', NULL),
(74, 'SEFANIA PUTRI RAMADHANI', NULL, '218071', NULL, NULL, NULL, 'P', 'MALANG', '2011-08-05', 'JL JA SUPRAPTO II-E/339', NULL, NULL, 'MALANG', 'JAWA TIMUR', NULL, 'Islam', 'FAIZUL', 'KARYAWAN SWASTA', NULL, 'SEPTI HERAWATI', '-', NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, '`62852351423', NULL),
(75, 'ISNANI NAURAH AFIFAH', NULL, '218072', NULL, NULL, NULL, 'P', 'MALANG', '2011-10-28', 'JL JA SUPRAPTO I-G118', NULL, NULL, 'MALANG', 'JAWA TIMUR', NULL, 'Islam', 'BACHTIAR EFFENDI', 'KARYAWAN SWASTA', NULL, 'TRI UTARI', 'IBU RUMAH TANGGA', NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, '`62812595270', NULL),
(76, 'DWI FADILLAH EFENDI', NULL, '218073', NULL, NULL, NULL, 'L', 'MALANG', '2011-02-06', 'JL KALIURANG BARAT 3 / III-B', NULL, NULL, 'MALANG', 'JAWA TIMUR', NULL, 'Islam', 'DWI EFENDI', 'BURUH HARIAN LEPAS', NULL, 'SOLVI MARIATI', 'IBU RUMAH TANGGA', NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, '`62838482315', NULL),
(77, 'NABILA NAURA MAULIDYA', NULL, '218074', NULL, NULL, NULL, 'P', 'MALANG', '2008-12-24', 'JL JA SUPRAPTO II-E / 339', NULL, NULL, 'MALANG', 'JAWA TIMUR', NULL, 'Islam', 'MUHAMMAD AFIF', 'KARYAWAN SWASTA', NULL, 'SULIMAH', 'BURUH PABRIK', NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, '`628963255551', NULL),
(78, 'MUHAMMAD ADITYA', NULL, '218075', NULL, NULL, NULL, 'L', 'MALANG', '2018-08-06', 'JL JA SUPRAPTO IG/138', NULL, NULL, 'MALANG', 'JAWA TIMUR', NULL, 'Islam', 'GANANG ADI PRASETYO', 'WIRASWASTA', NULL, 'SRI MULIYATI', 'IBU RUMAH TANGGA', NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, '`62851060726', NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `siswa`
--
ALTER TABLE `siswa`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `siswa`
--
ALTER TABLE `siswa`
  MODIFY `id` int(255) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=79;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
