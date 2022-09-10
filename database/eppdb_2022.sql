-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 08, 2022 at 08:14 AM
-- Server version: 10.1.38-MariaDB
-- PHP Version: 7.3.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `eppdb_v153`
--

-- --------------------------------------------------------

--
-- Table structure for table `berkas`
--

CREATE TABLE `berkas` (
  `id_berkas` int(10) NOT NULL,
  `nama_berkas` varchar(100) NOT NULL,
  `keterangan_berkas` varchar(100) NOT NULL,
  `tipe_berkas` varchar(100) NOT NULL,
  `ukuran_berkas` float NOT NULL,
  `id_peserta` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `bobot`
--

CREATE TABLE `bobot` (
  `id_bobot` int(10) NOT NULL,
  `id_jalur` int(10) NOT NULL,
  `bobot_jarak` int(4) NOT NULL,
  `bobot_nilai` int(4) NOT NULL,
  `bobot_prestasi` int(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `bobot`
--

INSERT INTO `bobot` (`id_bobot`, `id_jalur`, `bobot_jarak`, `bobot_nilai`, `bobot_prestasi`) VALUES
(1, 1, 100, 0, 0),
(2, 2, 0, 60, 40),
(3, 3, 100, 0, 0),
(4, 4, 100, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `formulir`
--

CREATE TABLE `formulir` (
  `id_formulir` int(10) NOT NULL,
  `tahun_pelajaran` varchar(5) NOT NULL,
  `jalur_pendaftaran` varchar(5) NOT NULL,
  `nama_peserta` varchar(5) NOT NULL,
  `jenis_kelamin` varchar(5) NOT NULL,
  `nisn` varchar(5) NOT NULL,
  `nik` varchar(5) NOT NULL,
  `tempat_lahir` varchar(5) NOT NULL,
  `tanggal_lahir` varchar(5) NOT NULL,
  `no_registrasi_akta_lahir` varchar(5) NOT NULL,
  `agama` varchar(5) NOT NULL,
  `kewarganegaraan` varchar(5) NOT NULL,
  `berkebutuhan_khusus` varchar(5) NOT NULL,
  `alamat` varchar(5) NOT NULL,
  `rt` varchar(5) NOT NULL,
  `rw` varchar(5) NOT NULL,
  `nama_dusun` varchar(5) NOT NULL,
  `nama_kelurahan` varchar(5) NOT NULL,
  `kecamatan` varchar(5) NOT NULL,
  `kode_pos` varchar(5) NOT NULL,
  `latitude` varchar(5) NOT NULL,
  `longitude` varchar(5) NOT NULL,
  `tempat_tinggal` varchar(5) NOT NULL,
  `moda_transportasi` varchar(5) NOT NULL,
  `no_kks` varchar(5) NOT NULL,
  `anak_ke` varchar(5) NOT NULL,
  `penerima_kps_pkh` varchar(5) NOT NULL,
  `no_kps_pkh` varchar(5) NOT NULL,
  `penerima_kip` varchar(5) NOT NULL,
  `no_kip` varchar(5) NOT NULL,
  `nama_tertera_di_kip` varchar(5) NOT NULL,
  `terima_fisik_kartu_kip` varchar(5) NOT NULL,
  `nama_ayah` varchar(5) NOT NULL,
  `nik_ayah` varchar(5) NOT NULL,
  `tahun_lahir_ayah` varchar(5) NOT NULL,
  `pendidikan_ayah` varchar(5) NOT NULL,
  `pekerjaan_ayah` varchar(5) NOT NULL,
  `penghasilan_bulanan_ayah` varchar(5) NOT NULL,
  `berkebutuhan_khusus_ayah` varchar(5) NOT NULL,
  `nama_ibu` varchar(5) NOT NULL,
  `nik_ibu` varchar(5) NOT NULL,
  `tahun_lahir_ibu` varchar(5) NOT NULL,
  `pendidikan_ibu` varchar(5) NOT NULL,
  `pekerjaan_ibu` varchar(5) NOT NULL,
  `penghasilan_bulanan_ibu` varchar(5) NOT NULL,
  `berkebutuhan_khusus_ibu` varchar(5) NOT NULL,
  `nama_wali` varchar(5) NOT NULL,
  `nik_wali` varchar(5) NOT NULL,
  `tahun_lahir_wali` varchar(5) NOT NULL,
  `pendidikan_wali` varchar(5) NOT NULL,
  `pekerjaan_wali` varchar(5) NOT NULL,
  `penghasilan_bulanan_wali` varchar(5) NOT NULL,
  `no_telepon_rumah` varchar(5) NOT NULL,
  `nomor_hp` varchar(5) NOT NULL,
  `email` varchar(5) NOT NULL,
  `jenis_ekstrakurikuler` varchar(5) NOT NULL,
  `tinggi_badan` varchar(5) NOT NULL,
  `berat_badan` varchar(5) NOT NULL,
  `jarak_ke_sekolah` varchar(5) NOT NULL,
  `jumlah_saudara_kandung` varchar(5) NOT NULL,
  `jurusan` varchar(5) NOT NULL,
  `asal_sekolah` varchar(5) NOT NULL,
  `no_peserta_ujian` varchar(5) NOT NULL,
  `no_seri_ijazah` varchar(5) NOT NULL,
  `no_seri_skhu` varchar(5) NOT NULL,
  `nilai_usbn` varchar(5) NOT NULL,
  `nilai_rapor` varchar(5) NOT NULL,
  `nilai_unbk_unkp` varchar(5) NOT NULL,
  `ketentuan` longtext NOT NULL,
  `foto` varchar(5) NOT NULL,
  `akte_kelahiran` varchar(5) NOT NULL,
  `kartu_keluarga` varchar(5) NOT NULL,
  `skl_skhu` varchar(5) NOT NULL,
  `skd` varchar(5) NOT NULL,
  `berkaslain` varchar(5) NOT NULL,
  `tipe` varchar(1) NOT NULL,
  `kode_daring` varchar(100) NOT NULL,
  `kode_luring` varchar(100) NOT NULL,
  `kode_formulir` varchar(5) NOT NULL,
  `foto_full` varchar(5) NOT NULL,
  `rapor` varchar(5) NOT NULL,
  `sktm` varchar(5) NOT NULL,
  `ktp_ortu` varchar(5) NOT NULL,
  `kartu_bantuan` varchar(5) NOT NULL,
  `sptjm` varchar(5) NOT NULL,
  `sp` varchar(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `formulir`
--

INSERT INTO `formulir` (`id_formulir`, `tahun_pelajaran`, `jalur_pendaftaran`, `nama_peserta`, `jenis_kelamin`, `nisn`, `nik`, `tempat_lahir`, `tanggal_lahir`, `no_registrasi_akta_lahir`, `agama`, `kewarganegaraan`, `berkebutuhan_khusus`, `alamat`, `rt`, `rw`, `nama_dusun`, `nama_kelurahan`, `kecamatan`, `kode_pos`, `latitude`, `longitude`, `tempat_tinggal`, `moda_transportasi`, `no_kks`, `anak_ke`, `penerima_kps_pkh`, `no_kps_pkh`, `penerima_kip`, `no_kip`, `nama_tertera_di_kip`, `terima_fisik_kartu_kip`, `nama_ayah`, `nik_ayah`, `tahun_lahir_ayah`, `pendidikan_ayah`, `pekerjaan_ayah`, `penghasilan_bulanan_ayah`, `berkebutuhan_khusus_ayah`, `nama_ibu`, `nik_ibu`, `tahun_lahir_ibu`, `pendidikan_ibu`, `pekerjaan_ibu`, `penghasilan_bulanan_ibu`, `berkebutuhan_khusus_ibu`, `nama_wali`, `nik_wali`, `tahun_lahir_wali`, `pendidikan_wali`, `pekerjaan_wali`, `penghasilan_bulanan_wali`, `no_telepon_rumah`, `nomor_hp`, `email`, `jenis_ekstrakurikuler`, `tinggi_badan`, `berat_badan`, `jarak_ke_sekolah`, `jumlah_saudara_kandung`, `jurusan`, `asal_sekolah`, `no_peserta_ujian`, `no_seri_ijazah`, `no_seri_skhu`, `nilai_usbn`, `nilai_rapor`, `nilai_unbk_unkp`, `ketentuan`, `foto`, `akte_kelahiran`, `kartu_keluarga`, `skl_skhu`, `skd`, `berkaslain`, `tipe`, `kode_daring`, `kode_luring`, `kode_formulir`, `foto_full`, `rapor`, `sktm`, `ktp_ortu`, `kartu_bantuan`, `sptjm`, `sp`) VALUES
(1, 'Ya', 'Ya', 'Ya', 'Ya', 'Ya', '', 'Ya', 'Ya', '', 'Ya', '', '', 'Ya', '', '', '', '', '', '', '', '', '', '', '', '', 'Ya', 'Ya', 'Ya', 'Ya', '', '', 'Ya', '', '', '', 'Ya', '', '', 'Ya', '', '', '', 'Ya', '', '', '', '', '', '', '', '', '', 'Ya', '', '', '', '', 'Ya', '', '', 'Ya', '', '', '', '', 'Ya', '', '<ol>\r\n <li>Setiap calon peserta didik wajib mengisi formulir pendaftaran dengan lengkap.</li>\r\n <li>Data-data yang diisikan pada formulir PPDB Online harus sesuai dengan data asli dan benar adanya.</li>\r\n <li>Calon peserta didik yang sudah mendaftar secara online wajib mencetak bukti pendaftaran sebanyak dua rangkap sebagai bukti pendaftaran dan dilampirkan dalam persyaratan yang diminta oleh Panitia PPDB.</li>\r\n <li>Calon peserta didik yang sudah mendaftarkan diri melalui PPDB Online wajib menyerahkan dokumen persyaratan yang sudah ditentukan oleh Panitia PPDB.</li>\r\n <li>Calon peserta didik yang telah mendaftar tidak dapat mencabut berkas pendaftaran dengan alasan apapun.</li>\r\n</ol>', '', '', '', '', '', '', '3', '13-0002', '13-0002', '', '', '', '', '', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `groups`
--

CREATE TABLE `groups` (
  `id` mediumint(8) UNSIGNED NOT NULL,
  `name` varchar(20) NOT NULL,
  `description` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `groups`
--

INSERT INTO `groups` (`id`, `name`, `description`) VALUES
(1, 'admin', 'Administrator'),
(2, 'members', 'General User'),
(3, 'panitia', 'Panitia PPDB');

-- --------------------------------------------------------

--
-- Table structure for table `groups_menu`
--

CREATE TABLE `groups_menu` (
  `id_groups` int(11) NOT NULL,
  `id_menu` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `groups_menu`
--

INSERT INTO `groups_menu` (`id_groups`, `id_menu`) VALUES
(1, 1),
(2, 1),
(3, 1),
(1, 3),
(2, 3),
(3, 3),
(1, 106),
(3, 106),
(1, 102),
(3, 102),
(1, 104),
(3, 104),
(1, 108),
(3, 108),
(1, 116),
(3, 116),
(1, 103),
(3, 103),
(1, 109),
(3, 109),
(1, 118),
(3, 118),
(1, 114),
(3, 114),
(1, 110),
(3, 110),
(1, 121),
(3, 121),
(2, 122),
(2, 115),
(2, 112),
(1, 125),
(3, 125),
(1, 126),
(1, 43),
(1, 44),
(1, 117),
(1, 105),
(1, 107),
(1, 113),
(1, 111),
(1, 127);

-- --------------------------------------------------------

--
-- Table structure for table `identitas`
--

CREATE TABLE `identitas` (
  `id_identitas` int(5) NOT NULL,
  `nama_sekolah` varchar(100) NOT NULL,
  `kode_sekolah` varchar(9) NOT NULL,
  `npsn` varchar(8) NOT NULL,
  `status` varchar(10) NOT NULL,
  `jenjang` varchar(10) NOT NULL,
  `alamat` varchar(200) NOT NULL,
  `kepala_sekolah` varchar(50) NOT NULL,
  `nip` varchar(18) NOT NULL,
  `kelurahan` varchar(100) NOT NULL,
  `kecamatan` varchar(100) NOT NULL,
  `kabupaten` varchar(100) NOT NULL,
  `kode_pos` varchar(6) NOT NULL,
  `no_telepon` varchar(12) NOT NULL,
  `website` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `latitude` varchar(25) NOT NULL,
  `longitude` varchar(25) NOT NULL,
  `gis` varchar(5) NOT NULL,
  `apikey` varchar(200) NOT NULL,
  `logo` varchar(50) NOT NULL,
  `bglogin` varchar(50) NOT NULL,
  `status_pendaftaran` varchar(5) NOT NULL,
  `status_hasil` varchar(5) NOT NULL,
  `status_daftar_ulang` varchar(5) NOT NULL,
  `penomoran` varchar(10) NOT NULL,
  `stempel` varchar(50) NOT NULL,
  `ttd` varchar(50) NOT NULL,
  `header` varchar(50) NOT NULL,
  `hstempel` varchar(3) NOT NULL,
  `httd` varchar(3) NOT NULL,
  `sstempel` varchar(5) NOT NULL,
  `sttd` varchar(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `identitas`
--

INSERT INTO `identitas` (`id_identitas`, `nama_sekolah`, `kode_sekolah`, `npsn`, `status`, `jenjang`, `alamat`, `kepala_sekolah`, `nip`, `kelurahan`, `kecamatan`, `kabupaten`, `kode_pos`, `no_telepon`, `website`, `email`, `latitude`, `longitude`, `gis`, `apikey`, `logo`, `bglogin`, `status_pendaftaran`, `status_hasil`, `status_daftar_ulang`, `penomoran`, `stempel`, `ttd`, `header`, `hstempel`, `httd`, `sstempel`, `sttd`) VALUES
(1, 'SMKN 1 BONDOWOSO', '344052201', '20521724', 'NEGERI', 'SMK', 'JL. HOS COKROAMINOTO NO. 110', 'Erik Tohir,S.Pd.M.Pd', '196508151986092003', 'Kademangan', 'Kademangan', 'Bondowoso', '68217', '07257576180', 'www.smkn1bwss.sch.id', 'smkn1bws@gmail.com', '-4.6221235655318225', '105.10049032725532', '', 'AIzaSyBchRI_21q70ikqLxY-SxgiRJUY6BWMav8', 'smkn1bws.png', 'background.png', '', '', '', 'otomatis', 'stempel.png', 'ttd.png', 'sds.PNG', '110', '95', 'Ya', 'Ya');

-- --------------------------------------------------------

--
-- Table structure for table `jalur`
--

CREATE TABLE `jalur` (
  `id_jalur` int(10) NOT NULL,
  `jalur` varchar(50) NOT NULL,
  `persentase` int(3) NOT NULL,
  `status_jalur` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `jalur`
--

INSERT INTO `jalur` (`id_jalur`, `jalur`, `persentase`, `status_jalur`) VALUES
(1, 'Zonasi', 60, 'Aktif'),
(2, 'Prestasi', 20, 'Aktif'),
(3, 'Afirmasi', 15, 'Aktif'),
(4, 'Perpindahan', 5, 'Aktif');

-- --------------------------------------------------------

--
-- Table structure for table `jarak`
--

CREATE TABLE `jarak` (
  `id_jarak` int(10) NOT NULL,
  `jarak` varchar(50) NOT NULL,
  `skor_jarak` int(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `jarak`
--

INSERT INTO `jarak` (`id_jarak`, `jarak`, `skor_jarak`) VALUES
(1, '0 - 250 meter', 500),
(2, '251 - 500 meter', 490),
(3, '501 - 750 meter', 480),
(4, '751 - 1000 meter', 470),
(5, '1001 - 1250 meter', 460),
(6, '1251 - 1500 meter', 450),
(7, '1501 - 1750 meter', 440),
(8, '1751 - 2000 meter', 430),
(9, '2001 - 2250 meter', 420),
(10, '2251 - 2500 meter', 410),
(11, '2501 - 2750 meter', 400),
(12, '2751 - 3000 meter', 390),
(13, '3001 - 3250 meter', 380),
(14, '3251 - 3500 meter', 370),
(15, '3501 - 3750 meter', 360),
(16, '3751 - 4000 meter', 350),
(17, '4001 - 4250 meter', 340),
(18, '4251 - 4500 meter', 330),
(19, '4501 - 4750 meter', 320),
(20, '4751 - 5000 meter', 310),
(21, '5001 - 5250 meter', 300),
(22, '5251 - 5500 meter', 290),
(23, '5501 - 5750 meter', 280),
(24, '5751 - 6000 meter', 270),
(25, '6001 - 6250 meter', 260),
(26, '6251 - 6500 meter', 250),
(27, '6501 - 6750 meter', 240),
(28, '6751 - 7000 meter', 230),
(29, '7001 - 7250 meter', 220),
(30, '7251 - 7500 meter', 210),
(31, '7501 - 7750 meter', 200),
(32, '7751 - 8000 meter', 190),
(33, '8001 - 8250 meter', 180),
(34, '8251 - 8500 meter', 170),
(35, '8501 - 8750 meter', 160),
(36, '8751 - 9000 meter', 150),
(37, '9001 - 9250 meter', 140),
(38, '9251 - 9500 meter', 130),
(39, '9501 - 9750 meter', 120),
(40, '9751 - 10000 meter', 110),
(41, 'Lebih dari 10000 meter', 100);

-- --------------------------------------------------------

--
-- Table structure for table `jurusan`
--

CREATE TABLE `jurusan` (
  `id_jurusan` int(5) NOT NULL,
  `bidang_keahlian` varchar(100) NOT NULL,
  `nama_jurusan` varchar(100) NOT NULL,
  `kuota_jurusan` varchar(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `jurusan`
--

INSERT INTO `jurusan` (`id_jurusan`, `bidang_keahlian`, `nama_jurusan`, `kuota_jurusan`) VALUES
(1, 'Umum', 'Umum', '288'),
(2, 'Teknik', 'Teknik Kendaraan Ringan Otomotif', '100'),
(3, 'Teknik', 'Rekayasa Perangkat Lunak', '90'),
(5, 'Teknik', 'Teknik Komputer dan Jaringan', '90');

-- --------------------------------------------------------

--
-- Table structure for table `log`
--

CREATE TABLE `log` (
  `id_log` int(11) NOT NULL,
  `log_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `log_user` varchar(50) NOT NULL,
  `log_tipe` int(11) NOT NULL,
  `log_ket` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `log`
--

INSERT INTO `log` (`id_log`, `log_time`, `log_user`, `log_tipe`, `log_ket`) VALUES
(1, '2021-06-04 07:10:46', 'admin', 4, 'Menghapus data tabel log'),
(2, '2021-06-04 07:12:30', 'admin', 1, 'Logout'),
(3, '2021-12-05 14:12:26', 'admin', 0, 'Login'),
(4, '2021-12-08 12:16:02', 'admin', 0, 'Login'),
(5, '2021-12-08 12:16:41', 'admin', 3, 'Update data pengaturan'),
(6, '2021-12-08 12:24:53', 'admin', 1, 'Logout'),
(7, '2021-12-08 12:25:14', 'admin', 0, 'Login'),
(8, '2022-05-28 07:57:38', 'admin', 0, 'Login'),
(9, '2022-05-28 08:02:11', 'admin', 3, 'Update data pengaturan'),
(10, '2022-05-28 08:07:17', 'admin', 3, 'Update data tahun pelajaran 2021'),
(11, '2022-05-28 08:08:32', 'admin', 3, 'Update data tahun pelajaran 2022'),
(12, '2022-05-28 08:10:06', 'admin', 1, 'Logout'),
(13, '2022-05-28 08:10:39', 'admin', 0, 'Login'),
(14, '2022-05-28 08:10:51', 'admin', 1, 'Logout'),
(15, '2022-05-28 08:11:59', 'admin', 0, 'Login'),
(16, '2022-05-28 08:20:59', 'admin', 3, 'Update data pengaturan'),
(17, '2022-05-28 08:25:26', 'admin', 3, 'Update Profile'),
(18, '2022-05-28 08:25:32', 'admin', 1, 'Logout'),
(19, '2022-05-28 08:25:44', 'admin', 0, 'Login'),
(20, '2022-05-28 08:27:17', 'admin', 3, 'Update data pengumuman Publik'),
(21, '2022-05-28 08:32:31', 'admin', 3, 'Update data tahun pelajaran 2022'),
(22, '2022-05-28 08:33:29', 'admin', 1, 'Logout'),
(23, '2022-05-28 08:36:43', '1122334455', 0, 'Login'),
(24, '2022-05-28 08:38:46', '1122334455', 1, 'Logout'),
(25, '2022-05-28 08:38:52', 'admin', 0, 'Login'),
(26, '2022-05-28 08:39:45', 'admin', 4, 'Menghapus multi data sekolah'),
(27, '2022-05-28 08:39:50', 'admin', 4, 'Menghapus multi data sekolah'),
(28, '2022-05-28 08:40:03', 'admin', 4, 'Menghapus multi data sekolah'),
(29, '2022-05-28 08:40:53', 'admin', 2, 'Menambah data sekolah SMPN 1 BONDOWOSO'),
(30, '2022-05-28 09:23:55', 'admin', 1, 'Logout'),
(31, '2022-05-28 10:28:02', 'admin', 0, 'Login'),
(32, '2022-05-28 10:30:21', 'admin', 1, 'Logout'),
(33, '2022-05-28 10:30:27', 'admin', 0, 'Login'),
(34, '2022-05-28 10:31:20', 'admin', 1, 'Logout'),
(35, '2022-05-28 10:31:25', 'admin', 0, 'Login'),
(36, '2022-05-28 14:31:37', '1122334455', 0, 'Login'),
(37, '2022-05-28 14:33:05', '1122334455', 2, 'Mengisi formulir pendaftaran'),
(38, '2022-05-29 12:53:29', 'admin', 0, 'Login'),
(39, '2022-05-29 12:55:21', 'admin', 5, 'Cetak bukti pendaftaran adita'),
(40, '2022-05-29 12:55:26', 'admin', 5, 'Cetak bukti pendaftaran adita'),
(41, '2022-05-29 13:00:48', 'admin', 1, 'Logout'),
(42, '2022-05-29 13:01:01', '1122334455', 0, 'Login'),
(43, '2022-05-29 13:01:29', '1122334455', 5, 'Cetak bukti pendaftaran'),
(44, '2022-05-29 13:01:30', '1122334455', 5, 'Cetak bukti pendaftaran'),
(45, '2022-05-29 13:01:57', '1122334455', 1, 'Logout'),
(46, '2022-05-29 13:02:01', 'admin', 0, 'Login'),
(47, '2022-05-29 13:02:16', 'admin', 3, 'Update data status peserta adita'),
(48, '2022-05-29 13:09:01', 'admin', 3, 'Update data pengaturan'),
(49, '2022-06-08 06:12:05', 'admin', 0, 'Login'),
(50, '2022-06-08 06:14:16', 'admin', 3, 'Update data pengaturan');

-- --------------------------------------------------------

--
-- Table structure for table `login_attempts`
--

CREATE TABLE `login_attempts` (
  `id` int(11) UNSIGNED NOT NULL,
  `ip_address` varchar(45) NOT NULL,
  `login` varchar(100) NOT NULL,
  `time` int(11) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `menu`
--

CREATE TABLE `menu` (
  `id_menu` int(11) NOT NULL,
  `sort` int(11) NOT NULL DEFAULT '99',
  `level` int(11) NOT NULL,
  `parent_id` int(11) NOT NULL DEFAULT '0',
  `icon` varchar(125) NOT NULL,
  `label` varchar(25) NOT NULL,
  `link` varchar(125) NOT NULL,
  `id` varchar(25) NOT NULL DEFAULT '#',
  `id_menu_type` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `menu`
--

INSERT INTO `menu` (`id_menu`, `sort`, `level`, `parent_id`, `icon`, `label`, `link`, `id`, `id_menu_type`) VALUES
(1, 0, 1, 0, 'empty', 'MAIN NAVIGATION', '#', '#', 1),
(3, 1, 2, 1, 'fas fa-tachometer-alt', 'Dashboard', 'dashboard', '#', 1),
(43, 23, 2, 1, 'fas fa-user-secret', 'Manajemen User', '#', '#', 1),
(44, 25, 3, 43, 'fas fa-angle-double-right', 'Groups', 'groups', '2', 1),
(102, 8, 3, 103, 'fas fa-angle-double-right', 'Asal Sekolah', 'sekolah', '#', 1),
(103, 5, 2, 1, 'fas fa-server', 'Referensi', '#', '#', 1),
(104, 9, 3, 103, 'fas fa-angle-double-right', 'Jalur Pendaftaran', 'jalur', '#', 1),
(105, 7, 3, 103, 'fas fa-angle-double-right', 'Tahun Penerimaan', 'tahunpelajaran', '#', 1),
(106, 6, 3, 103, 'fas fa-angle-double-right', 'Formulir PPDB', 'formulir', '#', 1),
(107, 11, 3, 103, 'fas fa-angle-double-right', 'Poin Jarak', 'jarak', '#', 1),
(108, 10, 3, 103, 'fas fa-angle-double-right', 'Bobot Jalur', 'bobot', '#', 1),
(109, 14, 2, 1, 'fas fa-user-alt', 'Data Peserta', '#', '#', 1),
(110, 15, 3, 109, 'fas fa-angle-double-right', 'List Peserta', 'peserta', '#', 1),
(111, 13, 3, 103, 'fas fa-angle-double-right', 'Jurusan', 'jurusan', '#', 1),
(112, 2, 2, 1, 'fas fa-file', 'Formulir Pendaftaran', 'member/formcreate', '#', 1),
(113, 12, 3, 103, 'fas fa-angle-double-right', 'Poin Prestasi', 'prestasi', '#', 1),
(114, 17, 3, 109, 'fas fa-angle-double-right', 'Prestasi Peserta', 'prestasipeserta', '#', 1),
(115, 3, 2, 1, 'fas fa-user-graduate', 'Prestasi Peserta', 'member/prestasipeserta', '#', 1),
(116, 20, 2, 1, 'fas fa-bullhorn', 'Pengumuman', 'pengumuman', '#', 1),
(117, 22, 2, 1, 'fas fa-cog', 'Pengaturan', 'pengaturan', '#', 1),
(118, 19, 2, 1, 'fas fa-chart-bar', 'Statistik', 'statistik', '#', 1),
(121, 18, 3, 109, 'fas fa-angle-double-right', 'Berkas', 'berkas', '#', 1),
(122, 4, 2, 1, 'fas fa-copy', 'Berkas Pendukung', 'member/berkas', '#', 1),
(125, 16, 3, 109, 'fas fa-angle-double-right', 'Rekap Nilai', 'peserta/nilai_peserta', '#', 1),
(126, 24, 3, 43, 'fas fa-angle-double-right', 'List Users', 'users', '1', 1),
(127, 21, 2, 1, 'fas fa-history', 'Log Pengguna', 'log', '#', 1);

-- --------------------------------------------------------

--
-- Table structure for table `menu_type`
--

CREATE TABLE `menu_type` (
  `id_menu_type` int(11) NOT NULL,
  `type` varchar(125) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `menu_type`
--

INSERT INTO `menu_type` (`id_menu_type`, `type`) VALUES
(1, 'Side menu');

-- --------------------------------------------------------

--
-- Table structure for table `pengumuman`
--

CREATE TABLE `pengumuman` (
  `id_pengumuman` int(5) NOT NULL,
  `type` varchar(30) NOT NULL,
  `judul` varchar(255) NOT NULL,
  `text` longtext NOT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pengumuman`
--

INSERT INTO `pengumuman` (`id_pengumuman`, `type`, `judul`, `text`, `date`) VALUES
(2, 'Member', 'Syarat Pendaftaran', '<ol>\r\n <li>Mengisi formulir yang telah disediakan melalui online ppdb.smpn1tumijajar.sch.id.</li>\r\n <li>Usia maksimal 15 tahun (1 Juli 2021).</li>\r\n <li>Ijazah terakhir/Surat Keterangan Lulus + foto copy legalisir 2 lembar.</li>\r\n <li>Kartu Keluarga/Surat Keterangan Domisili (minimal sudah 1 tahun) + foto copy legalisir 2 lembar.</li>\r\n <li>KTP Orangtua + foto copy 2 lembar.</li>\r\n <li>Akta Kelahiran + foto copy 2 lembar.</li>\r\n <li>Photo berwarna 3x4 sebanyak 2 lembar.</li>\r\n <li>Kartu bantuan sosial (PKH/KPS/KIP/SKTM) untuk jalur afirmasi.</li>\r\n <li>Surat penugasan dari instansi, lembaga, kantor atau perusahaan yang mempekerjakan (untuk jalur Perpindahan tugas orangtua).</li>\r\n <li>Bukti prestasi nilai rapor semester 1 s.d. 5, hasil perlombaan akademik/non akademik tingkat Internasional/Nasional/Provinsi/Kabupaten/Kecamatan/Sekolah/Hafiz Al Quran yang diterbitkan minimal 6 bulan dan maksimal 3 tahun (untuk jalur prestasi).</li>\r\n <li>Formulir Pendaftaran (2 rangkap) beserta syarat-syarat yang diminta dimasukkan ke dalam stofmap folio (forte/biola) 2 buah dan diserahkan ke sekolah.\r\n <ul>\r\n  <li>Laki-laki warna Merah.</li>\r\n  <li>Perempuan warna Biru.</li>\r\n </ul>\r\n </li>\r\n <li>calon peserta didik yang telah mendaftar tidak dapat mencabut berkas pendaftaran dengan alasan apapun.</li>\r\n</ol>', '2021-05-25 15:30:51'),
(3, 'Formulir', 'Keterangan bawah formulir', '<p>Catatan :</p>\r\n\r\n<ol>\r\n <li>Yang bertandatangan Orangtua/Wali atau Siswa bertanggung jawab secara hukum terhadap kebenaran data yang tercantum.</li>\r\n <li>Formulir Pendaftaran di cetak sebanyak dua rangkap.</li>\r\n <li>Calon Peserta Didik Baru <strong>Wajib</strong> mencantumkan <strong>Nomor Induk Siswa Nasional (NISN)</strong>.</li>\r\n <li>Ijazah/SKL Asli ditunjukkan kepada sekolah yang di daftar.</li>\r\n <li>Pengumuman Calon Peserta Didik Baru yang diterima tanggal 29 s.d 30 Juni 2021.</li>\r\n <li>Daftar ulang bagi calon siswa yang diterima pada tanggal 1 s.d 2 Juli 2021 membawa/menyerahkan formulir pendaftaran.</li>\r\n <li>Calon Peserta Didik Baru yang diterima tetapi tidak mendaftar ulang maka di anggap <strong>GUGUR</strong>.</li>\r\n <li>Calon Peserta Didik Baru yang telah mendaftar tidak dapat mencabut berkas pendaftaran dengan alasan apapun.</li>\r\n</ol>', '2021-05-31 06:01:19'),
(5, 'SKL', 'di isi dengan nomor pengumuman untuk skl', '<p>Ketentuan lainnya :</p>\r\n\r\n<ul>\r\n <li>Menyerahkan Formulir Pendaftaran.</li>\r\n <li>Peserta yang tidak melakukan <strong>REGISTRASI ULANG</strong> sesuai ketentuan dinyatakan <strong>GURUR</strong>.</li>\r\n</ul>', '2021-05-25 15:33:14'),
(6, 'Publik', 'Alur PPDB', '<ol>\r\n <li>Calon peserta didik membuat akun pengguna di <a href=\"http://ppdb.smpn1tumijajar.sch.id/\">http://ppdb.smkn1bws.sch.id/</a></li>\r\n <li>Calon peserta didik login menggunakan NISN dan kata sandi/password yang telah dibuat sebelumnya</li>\r\n <li>Calon peserta didik mengisi formulir pendaftaran</li>\r\n <li>Calon peserta didik menambahkan prestasi akademik/non akademik (jalur prestasi)</li>\r\n <li>Calon peserta didik mencetak bukti pendaftaran sebanyak dua rangkap</li>\r\n <li>Serahkan Bukti Pendaftaran beserta lampirkan syarat-syarat lainnya ke Panitia PPDB untuk diverifikasi</li>\r\n <li>Calon peserta didik yang telah mendaftar tidak dapat mencabut berkas pendaftaran dengan alasan apapun</li>\r\n</ol>', '2022-05-28 08:27:17');

-- --------------------------------------------------------

--
-- Table structure for table `peserta`
--

CREATE TABLE `peserta` (
  `id_peserta` int(10) NOT NULL,
  `no_pendaftaran` varchar(100) NOT NULL,
  `tanggal_daftar` date NOT NULL,
  `id_tahun` int(4) NOT NULL,
  `id_jalur` int(10) NOT NULL,
  `nama_peserta` varchar(50) NOT NULL,
  `jenis_kelamin` varchar(1) NOT NULL,
  `nisn` varchar(15) NOT NULL,
  `nik` varchar(16) NOT NULL,
  `tempat_lahir` varchar(50) NOT NULL,
  `tanggal_lahir` date NOT NULL,
  `no_registrasi_akta_lahir` varchar(25) NOT NULL,
  `agama` varchar(20) NOT NULL,
  `kewarganegaraan` varchar(16) NOT NULL,
  `berkebutuhan_khusus` varchar(50) NOT NULL,
  `alamat` varchar(50) NOT NULL,
  `rt` varchar(3) NOT NULL,
  `rw` varchar(3) NOT NULL,
  `nama_dusun` varchar(50) NOT NULL,
  `nama_kelurahan` varchar(50) NOT NULL,
  `kecamatan` varchar(50) NOT NULL,
  `kode_pos` varchar(6) NOT NULL,
  `latitude` varchar(25) NOT NULL,
  `longitude` varchar(25) NOT NULL,
  `tempat_tinggal` varchar(25) NOT NULL,
  `moda_transportasi` varchar(50) NOT NULL,
  `no_kks` varchar(6) NOT NULL,
  `anak_ke` varchar(2) NOT NULL,
  `penerima_kps_pkh` varchar(5) NOT NULL,
  `no_kps_pkh` varchar(20) NOT NULL,
  `penerima_kip` varchar(5) NOT NULL,
  `no_kip` varchar(6) NOT NULL,
  `nama_tertera_di_kip` varchar(50) NOT NULL,
  `terima_fisik_kartu_kip` varchar(5) NOT NULL,
  `nama_ayah` varchar(50) NOT NULL,
  `nik_ayah` varchar(16) NOT NULL,
  `tahun_lahir_ayah` varchar(4) NOT NULL,
  `pendidikan_ayah` varchar(15) NOT NULL,
  `pekerjaan_ayah` varchar(15) NOT NULL,
  `penghasilan_bulanan_ayah` varchar(25) NOT NULL,
  `berkebutuhan_khusus_ayah` varchar(50) NOT NULL,
  `nama_ibu` varchar(50) NOT NULL,
  `nik_ibu` varchar(16) NOT NULL,
  `tahun_lahir_ibu` varchar(4) NOT NULL,
  `pendidikan_ibu` varchar(15) NOT NULL,
  `pekerjaan_ibu` varchar(15) NOT NULL,
  `penghasilan_bulanan_ibu` varchar(25) NOT NULL,
  `berkebutuhan_khusus_ibu` varchar(50) NOT NULL,
  `nama_wali` varchar(50) NOT NULL,
  `nik_wali` varchar(16) NOT NULL,
  `tahun_lahir_wali` varchar(4) NOT NULL,
  `pendidikan_wali` varchar(15) NOT NULL,
  `pekerjaan_wali` varchar(15) NOT NULL,
  `penghasilan_bulanan_wali` varchar(25) NOT NULL,
  `no_telepon_rumah` varchar(10) NOT NULL,
  `nomor_hp` varchar(12) NOT NULL,
  `email` varchar(50) NOT NULL,
  `jenis_ekstrakurikuler` varchar(50) NOT NULL,
  `tinggi_badan` varchar(3) NOT NULL,
  `berat_badan` varchar(3) NOT NULL,
  `id_jarak` int(10) NOT NULL,
  `jumlah_saudara_kandung` varchar(2) NOT NULL,
  `id_jurusan` int(5) NOT NULL,
  `pilihan_dua` varchar(100) NOT NULL,
  `id_sekolah` int(10) NOT NULL,
  `no_un` varchar(25) NOT NULL,
  `no_seri_ijazah` varchar(25) NOT NULL,
  `no_seri_skhu` varchar(25) NOT NULL,
  `nilai_rapor` varchar(6) NOT NULL,
  `nilai_usbn` varchar(6) NOT NULL,
  `nilai_unbk_unkp` varchar(6) NOT NULL,
  `status` varchar(25) NOT NULL,
  `status_hasil` varchar(25) NOT NULL,
  `status_daftar_ulang` varchar(25) NOT NULL,
  `id_users` int(11) NOT NULL,
  `qrcode` varchar(100) NOT NULL,
  `pilihan_sekolah_lain` varchar(100) NOT NULL,
  `catatan` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `peserta`
--

INSERT INTO `peserta` (`id_peserta`, `no_pendaftaran`, `tanggal_daftar`, `id_tahun`, `id_jalur`, `nama_peserta`, `jenis_kelamin`, `nisn`, `nik`, `tempat_lahir`, `tanggal_lahir`, `no_registrasi_akta_lahir`, `agama`, `kewarganegaraan`, `berkebutuhan_khusus`, `alamat`, `rt`, `rw`, `nama_dusun`, `nama_kelurahan`, `kecamatan`, `kode_pos`, `latitude`, `longitude`, `tempat_tinggal`, `moda_transportasi`, `no_kks`, `anak_ke`, `penerima_kps_pkh`, `no_kps_pkh`, `penerima_kip`, `no_kip`, `nama_tertera_di_kip`, `terima_fisik_kartu_kip`, `nama_ayah`, `nik_ayah`, `tahun_lahir_ayah`, `pendidikan_ayah`, `pekerjaan_ayah`, `penghasilan_bulanan_ayah`, `berkebutuhan_khusus_ayah`, `nama_ibu`, `nik_ibu`, `tahun_lahir_ibu`, `pendidikan_ibu`, `pekerjaan_ibu`, `penghasilan_bulanan_ibu`, `berkebutuhan_khusus_ibu`, `nama_wali`, `nik_wali`, `tahun_lahir_wali`, `pendidikan_wali`, `pekerjaan_wali`, `penghasilan_bulanan_wali`, `no_telepon_rumah`, `nomor_hp`, `email`, `jenis_ekstrakurikuler`, `tinggi_badan`, `berat_badan`, `id_jarak`, `jumlah_saudara_kandung`, `id_jurusan`, `pilihan_dua`, `id_sekolah`, `no_un`, `no_seri_ijazah`, `no_seri_skhu`, `nilai_rapor`, `nilai_usbn`, `nilai_unbk_unkp`, `status`, `status_hasil`, `status_daftar_ulang`, `id_users`, `qrcode`, `pilihan_sekolah_lain`, `catatan`) VALUES
(1, '13-0002-0001', '2022-05-28', 5, 1, 'adita', 'P', '1122334455', '', 'jember', '1999-10-19', '', 'Islam', '', '', 'jember', '', '', '', '', '', '', '', '', '', '', '', '', 'Tidak', '', 'Tidak', '', '', '', 'putra', '', '', '', 'Wiraswasta', '', '', 'putri', '', '', '', 'Wirausaha', '', '', '', '', '', '', '', '', '', '028997456454', '', '', '', '', 5, '', 1, '', 191, '', '', '', '70', '0', '0', 'Sudah diverifikasi', 'Belum ada', 'Menunggu', 97, '13-0002-0001.png', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `prestasi`
--

CREATE TABLE `prestasi` (
  `id_prestasi` int(10) NOT NULL,
  `tingkat` varchar(50) NOT NULL,
  `kategori` varchar(20) NOT NULL,
  `juara` varchar(2) NOT NULL,
  `skor_prestasi` int(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `prestasi`
--

INSERT INTO `prestasi` (`id_prestasi`, `tingkat`, `kategori`, `juara`, `skor_prestasi`) VALUES
(12, 'Kecamatan', 'Beregu', '3', 70),
(13, 'Kecamatan', 'Beregu', '2', 80),
(14, 'Kecamatan', 'Beregu', '1', 90),
(15, 'Kecamatan', 'Perorangan', '3', 100),
(16, 'Kecamatan', 'Perorangan', '2', 110),
(17, 'Kecamatan', 'Perorangan', '1', 120),
(18, 'Kabupaten', 'Beregu', '3', 130),
(19, 'Kabupaten', 'Beregu', '2', 140),
(20, 'Kabupaten', 'Beregu', '1', 150),
(21, 'Kabupaten', 'Perorangan', '3', 160),
(22, 'Kabupaten', 'Perorangan', '2', 170),
(23, 'Kabupaten', 'Perorangan', '1', 180),
(24, 'Propinsi', 'Beregu', '3', 190),
(25, 'Propinsi', 'Beregu', '2', 200),
(26, 'Propinsi', 'Beregu', '1', 210),
(27, 'Propinsi', 'Perorangan', '3', 220),
(28, 'Propinsi', 'Perorangan', '2', 230),
(29, 'Propinsi', 'Perorangan', '1', 240),
(30, 'Nasional', 'Beregu', '3', 250),
(31, 'Nasional', 'Beregu', '2', 260),
(32, 'Nasional', 'Beregu', '1', 270),
(33, 'Nasional', 'Perorangan', '3', 280),
(34, 'Nasional', 'Perorangan', '2', 290),
(35, 'Nasional', 'Perorangan', '1', 300),
(36, 'Hafiz Al Quran', 'Beregu', '3', 130),
(37, 'Hafiz Al Quran', 'Beregu', '2', 140),
(38, 'Hafiz Al Quran', 'Beregu', '1', 150),
(39, 'Hafiz Al Quran', 'Perorangan', '3', 160),
(40, 'Hafiz Al Quran', 'Perorangan', '2', 170),
(41, 'Hafiz Al Quran', 'Perorangan', '1', 180),
(42, 'Sekolah', 'Beregu', '3', 10),
(43, 'Sekolah', 'Beregu', '2', 20),
(44, 'Sekolah', 'Beregu', '1', 30),
(45, 'Sekolah', 'Perorangan', '3', 40),
(46, 'Sekolah', 'Perorangan', '2', 50),
(47, 'Sekolah', 'Perorangan', '1', 60);

-- --------------------------------------------------------

--
-- Table structure for table `prestasipeserta`
--

CREATE TABLE `prestasipeserta` (
  `id_prestasipeserta` int(10) NOT NULL,
  `jenis` varchar(50) NOT NULL,
  `nama_prestasi` varchar(100) NOT NULL,
  `tahun` varchar(4) NOT NULL,
  `penyelenggara` varchar(150) NOT NULL,
  `id_peserta` int(10) NOT NULL,
  `id_prestasi` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `sekolah`
--

CREATE TABLE `sekolah` (
  `id_sekolah` int(10) NOT NULL,
  `npsn_sekolah` varchar(10) NOT NULL,
  `asal_sekolah` varchar(100) NOT NULL,
  `alamat_sekolah` varchar(100) NOT NULL,
  `kelurahan` varchar(50) NOT NULL,
  `status_sekolah` varchar(10) NOT NULL,
  `kecamatan` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sekolah`
--

INSERT INTO `sekolah` (`id_sekolah`, `npsn_sekolah`, `asal_sekolah`, `alamat_sekolah`, `kelurahan`, `status_sekolah`, `kecamatan`) VALUES
(191, '20554277', 'SMPN 1 BONDOWOSO', 'BONDOWOSO', 'BONDOWOSO', 'NEGERI', 'BONDOWOSO');

-- --------------------------------------------------------

--
-- Table structure for table `tahunpelajaran`
--

CREATE TABLE `tahunpelajaran` (
  `id_tahun` int(4) NOT NULL,
  `tahun_pelajaran` varchar(4) DEFAULT NULL,
  `kuota` varchar(3) NOT NULL,
  `tanggal_mulai_pendaftaran` date NOT NULL,
  `tanggal_selesai_pendaftaran` date NOT NULL,
  `tanggal_mulai_seleksi` date NOT NULL,
  `tanggal_selesai_seleksi` date NOT NULL,
  `tanggal_pengumuman` date NOT NULL,
  `tanggal_mulai_daftar_ulang` date NOT NULL,
  `tanggal_selesai_daftar_ulang` date NOT NULL,
  `status_tahun` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tahunpelajaran`
--

INSERT INTO `tahunpelajaran` (`id_tahun`, `tahun_pelajaran`, `kuota`, `tanggal_mulai_pendaftaran`, `tanggal_selesai_pendaftaran`, `tanggal_mulai_seleksi`, `tanggal_selesai_seleksi`, `tanggal_pengumuman`, `tanggal_mulai_daftar_ulang`, `tanggal_selesai_daftar_ulang`, `status_tahun`) VALUES
(5, '2022', '100', '2022-05-10', '2022-06-10', '2022-06-11', '2022-06-12', '2022-07-20', '2022-07-21', '2022-07-21', 'Aktif');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) UNSIGNED NOT NULL,
  `ip_address` varchar(45) NOT NULL,
  `username` varchar(100) DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `salt` varchar(255) DEFAULT NULL,
  `email` varchar(254) NOT NULL,
  `activation_code` varchar(40) DEFAULT NULL,
  `forgotten_password_code` varchar(40) DEFAULT NULL,
  `forgotten_password_time` int(11) UNSIGNED DEFAULT NULL,
  `remember_code` varchar(40) DEFAULT NULL,
  `created_on` int(11) UNSIGNED NOT NULL,
  `last_login` int(11) UNSIGNED DEFAULT NULL,
  `active` tinyint(1) UNSIGNED DEFAULT NULL,
  `first_name` varchar(50) DEFAULT NULL,
  `last_name` varchar(50) DEFAULT NULL,
  `company` varchar(100) DEFAULT NULL,
  `phone` varchar(20) DEFAULT NULL,
  `image` varchar(255) NOT NULL DEFAULT 'avatar.jpg'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `ip_address`, `username`, `password`, `salt`, `email`, `activation_code`, `forgotten_password_code`, `forgotten_password_time`, `remember_code`, `created_on`, `last_login`, `active`, `first_name`, `last_name`, `company`, `phone`, `image`) VALUES
(1, '127.0.0.1', 'admin', '$2y$10$3fVC8VJfm8ElEv6PNLT2R.XalOF.sFq7TOgJE54p5KQm2oL/0N1Im', '', 'admin@admin.com', '', '5vfXw8AFBMJnY.DC95LkHO611d8355408aeba502', 1579613175, 'fmqjlAIj.o/W3cqHnmFqYu', 1268889823, 1654668725, 1, 'Admin', 'istrator', 'SMKN 1 BONDOWOSO', '082184032134', 'admin.jpg'),
(96, '::1', 'panitia', '$2y$08$B5EWd7R/qp76l4OKcMbqP..y1/EozVfXIRhwaY7auneZlu.hme.s.', NULL, 'panitia@panitia.com', NULL, NULL, NULL, NULL, 1622028644, NULL, 1, 'Panitia', 'PPDB', '', '', 'panitia.jpg'),
(97, '::1', '1122334455', '$2y$08$Pm6y7sUPNHtikjubkGMGHuDIWtgRe/TvqKtFUzm0cQuyMpUuHt1YK', NULL, '1122334455@gmail.com', NULL, NULL, NULL, NULL, 1653726995, 1653829261, 1, '1122334455', NULL, NULL, NULL, '1122334455.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `users_groups`
--

CREATE TABLE `users_groups` (
  `id` int(11) UNSIGNED NOT NULL,
  `user_id` int(11) UNSIGNED NOT NULL,
  `group_id` mediumint(8) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `users_groups`
--

INSERT INTO `users_groups` (`id`, `user_id`, `group_id`) VALUES
(47, 1, 1),
(164, 96, 3),
(165, 97, 2);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `berkas`
--
ALTER TABLE `berkas`
  ADD PRIMARY KEY (`id_berkas`);

--
-- Indexes for table `bobot`
--
ALTER TABLE `bobot`
  ADD PRIMARY KEY (`id_bobot`);

--
-- Indexes for table `formulir`
--
ALTER TABLE `formulir`
  ADD PRIMARY KEY (`id_formulir`);

--
-- Indexes for table `groups`
--
ALTER TABLE `groups`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `identitas`
--
ALTER TABLE `identitas`
  ADD PRIMARY KEY (`id_identitas`);

--
-- Indexes for table `jalur`
--
ALTER TABLE `jalur`
  ADD PRIMARY KEY (`id_jalur`);

--
-- Indexes for table `jarak`
--
ALTER TABLE `jarak`
  ADD PRIMARY KEY (`id_jarak`);

--
-- Indexes for table `jurusan`
--
ALTER TABLE `jurusan`
  ADD PRIMARY KEY (`id_jurusan`);

--
-- Indexes for table `log`
--
ALTER TABLE `log`
  ADD PRIMARY KEY (`id_log`);

--
-- Indexes for table `login_attempts`
--
ALTER TABLE `login_attempts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `menu`
--
ALTER TABLE `menu`
  ADD PRIMARY KEY (`id_menu`);

--
-- Indexes for table `menu_type`
--
ALTER TABLE `menu_type`
  ADD PRIMARY KEY (`id_menu_type`);

--
-- Indexes for table `pengumuman`
--
ALTER TABLE `pengumuman`
  ADD PRIMARY KEY (`id_pengumuman`);

--
-- Indexes for table `peserta`
--
ALTER TABLE `peserta`
  ADD PRIMARY KEY (`id_peserta`),
  ADD UNIQUE KEY `no_pendaftaran` (`no_pendaftaran`);

--
-- Indexes for table `prestasi`
--
ALTER TABLE `prestasi`
  ADD PRIMARY KEY (`id_prestasi`);

--
-- Indexes for table `prestasipeserta`
--
ALTER TABLE `prestasipeserta`
  ADD PRIMARY KEY (`id_prestasipeserta`);

--
-- Indexes for table `sekolah`
--
ALTER TABLE `sekolah`
  ADD PRIMARY KEY (`id_sekolah`);

--
-- Indexes for table `tahunpelajaran`
--
ALTER TABLE `tahunpelajaran`
  ADD PRIMARY KEY (`id_tahun`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users_groups`
--
ALTER TABLE `users_groups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `uc_users_groups` (`user_id`,`group_id`),
  ADD KEY `fk_users_groups_users1_idx` (`user_id`),
  ADD KEY `fk_users_groups_groups1_idx` (`group_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `berkas`
--
ALTER TABLE `berkas`
  MODIFY `id_berkas` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `bobot`
--
ALTER TABLE `bobot`
  MODIFY `id_bobot` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `formulir`
--
ALTER TABLE `formulir`
  MODIFY `id_formulir` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `groups`
--
ALTER TABLE `groups`
  MODIFY `id` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `identitas`
--
ALTER TABLE `identitas`
  MODIFY `id_identitas` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `jalur`
--
ALTER TABLE `jalur`
  MODIFY `id_jalur` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `jarak`
--
ALTER TABLE `jarak`
  MODIFY `id_jarak` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;

--
-- AUTO_INCREMENT for table `jurusan`
--
ALTER TABLE `jurusan`
  MODIFY `id_jurusan` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `log`
--
ALTER TABLE `log`
  MODIFY `id_log` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- AUTO_INCREMENT for table `login_attempts`
--
ALTER TABLE `login_attempts`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `menu`
--
ALTER TABLE `menu`
  MODIFY `id_menu` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=128;

--
-- AUTO_INCREMENT for table `menu_type`
--
ALTER TABLE `menu_type`
  MODIFY `id_menu_type` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `pengumuman`
--
ALTER TABLE `pengumuman`
  MODIFY `id_pengumuman` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `peserta`
--
ALTER TABLE `peserta`
  MODIFY `id_peserta` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `prestasi`
--
ALTER TABLE `prestasi`
  MODIFY `id_prestasi` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=48;

--
-- AUTO_INCREMENT for table `prestasipeserta`
--
ALTER TABLE `prestasipeserta`
  MODIFY `id_prestasipeserta` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `sekolah`
--
ALTER TABLE `sekolah`
  MODIFY `id_sekolah` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=192;

--
-- AUTO_INCREMENT for table `tahunpelajaran`
--
ALTER TABLE `tahunpelajaran`
  MODIFY `id_tahun` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=98;

--
-- AUTO_INCREMENT for table `users_groups`
--
ALTER TABLE `users_groups`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=166;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `users_groups`
--
ALTER TABLE `users_groups`
  ADD CONSTRAINT `fk_users_groups_groups1` FOREIGN KEY (`group_id`) REFERENCES `groups` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_users_groups_users1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
