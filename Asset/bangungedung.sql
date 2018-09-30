-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: 13 Sep 2018 pada 01.48
-- Versi Server: 10.1.28-MariaDB
-- PHP Version: 7.1.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `bangungedung`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `data_umum_bangunan_negara`
--

CREATE TABLE `data_umum_bangunan_negara` (
  `id_bangunan` int(5) NOT NULL,
  `id_reference` int(11) NOT NULL,
  `user_id` varchar(20) NOT NULL,
  `fungsi_bangunan` text NOT NULL,
  `jenis_bangunan` varchar(30) NOT NULL,
  `jenis_fungsi_bangunan` varchar(30) NOT NULL,
  `nama_departemen` text NOT NULL,
  `alamat_departemen` text NOT NULL,
  `no_ikmn` int(30) NOT NULL,
  `no_hdno` int(30) NOT NULL,
  `telpon` int(20) NOT NULL,
  `email` varchar(50) NOT NULL,
  `date_input` date NOT NULL,
  `nama_bangunan` varchar(30) NOT NULL,
  `alamat_bangunan` text NOT NULL,
  `klasifikasi_bangunan` varchar(30) NOT NULL,
  `jumlah_lantai_bangunan` int(11) NOT NULL,
  `luas_lantai_bangunan` float NOT NULL,
  `ketinggian_bangunan` float NOT NULL,
  `luas_basement` int(11) NOT NULL,
  `jumlah_basement` float NOT NULL,
  `latitude` float NOT NULL,
  `longitude` float NOT NULL,
  `date_selesai` date NOT NULL,
  `nama_pemilik_tanah` varchar(30) NOT NULL,
  `no_ipt` int(11) NOT NULL,
  `no_bkt` int(11) NOT NULL,
  `jenis_kepemilikan_tanah` varchar(30) NOT NULL,
  `alamat_tanah` text NOT NULL,
  `luas_tanah` float NOT NULL,
  `data_peruntukan_resmi` int(11) NOT NULL,
  `kdb` varchar(30) NOT NULL,
  `klb` varchar(30) NOT NULL,
  `kdh` varchar(30) NOT NULL,
  `ktb` varchar(30) NOT NULL,
  `nama_departemen_dulu` varchar(30) NOT NULL,
  `alamat_departemen_dulu` text NOT NULL,
  `telpon_dulu` varchar(30) NOT NULL,
  `email_dulu` varchar(30) NOT NULL,
  `no_imb_terdahulu` varchar(30) NOT NULL,
  `no_islf_terdahulu` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `data_umum_bangunan_negara`
--

INSERT INTO `data_umum_bangunan_negara` (`id_bangunan`, `id_reference`, `user_id`, `fungsi_bangunan`, `jenis_bangunan`, `jenis_fungsi_bangunan`, `nama_departemen`, `alamat_departemen`, `no_ikmn`, `no_hdno`, `telpon`, `email`, `date_input`, `nama_bangunan`, `alamat_bangunan`, `klasifikasi_bangunan`, `jumlah_lantai_bangunan`, `luas_lantai_bangunan`, `ketinggian_bangunan`, `luas_basement`, `jumlah_basement`, `latitude`, `longitude`, `date_selesai`, `nama_pemilik_tanah`, `no_ipt`, `no_bkt`, `jenis_kepemilikan_tanah`, `alamat_tanah`, `luas_tanah`, `data_peruntukan_resmi`, `kdb`, `klb`, `kdh`, `ktb`, `nama_departemen_dulu`, `alamat_departemen_dulu`, `telpon_dulu`, `email_dulu`, `no_imb_terdahulu`, `no_islf_terdahulu`) VALUES
(45, 3, 'alfian', 'Fungsi Usaha', 'Bangunan Perkantoran', '', 'Kantor Dinas Cipta Karya Tata', 'Gedung Dinas Teknis Lt. 2-6, Jln. Taman Jati Baru No. 1', 0, 0, 3865919, 'dki@jakarta.go.id', '2018-09-11', 'Kantor Dinas Cipta Karya Tata', 'Jl. Taman Jati Baru No. 1', 'Bangunan Khusus', 18, 18, 54, 0, 0, 0, 0, '0000-00-00', 'Pemerintah Provinsi Daerah Khu', 2147483647, 0, 'SHM', 'Jln. Jati Baru No 1', 5000, 0, '50', '2', '30', '55', 'Dinas Cipta Karya', 'Jln. Jati No 1', '0213865919', 'dki@jakarta.com', '123459', '123459'),
(51, 4, 'alfian', 'Fungsi Budaya', 'Bangunan Pendidikan', '', 'jaka', 'bsbs', 0, 0, 0, '', '0000-00-00', 'jaka', 'jaja', 'Bangunan Sederhana', 0, 0, 0, 0, 0, -6.26378, 106.864, '0000-00-00', '', 0, 0, 'SHM', '', 0, 0, '', '', '', '', '', '', '', '', '', ''),
(56, 4, 'alfian', 'Fungsi Budaya', 'Bangunan Pendidikan', '', 'kwks', 'komama', 0, 0, 0, '', '0000-00-00', 'kwks', 'jajsn', 'Bangunan Sederhana', 0, 0, 0, 0, 0, -6.25671, 106.856, '0000-00-00', '', 0, 0, 'SHM', '', 0, 0, '', '', '', '', '', '', '', '', '', '');

-- --------------------------------------------------------

--
-- Struktur dari tabel `id_reference`
--

CREATE TABLE `id_reference` (
  `id_reference` int(11) NOT NULL,
  `refrence_name` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `id_reference`
--

INSERT INTO `id_reference` (`id_reference`, `refrence_name`) VALUES
(1, 'Fungsi Hunian'),
(2, 'Fungsi Keagamaan'),
(3, 'Fungsi Usaha'),
(4, 'Fungsi Budaya');

-- --------------------------------------------------------

--
-- Struktur dari tabel `role`
--

CREATE TABLE `role` (
  `role_id` int(11) NOT NULL,
  `role_nama` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `role`
--

INSERT INTO `role` (`role_id`, `role_nama`) VALUES
(1, 'admin'),
(2, 'surveyor'),
(3, 'user_internal'),
(4, 'user_eksternal');

-- --------------------------------------------------------

--
-- Struktur dari tabel `user`
--

CREATE TABLE `user` (
  `id_user` int(5) NOT NULL,
  `user_id` varchar(20) NOT NULL,
  `nama` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `user_role` int(11) NOT NULL,
  `terakhir_login` datetime NOT NULL,
  `input_at` datetime NOT NULL,
  `update_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `user`
--

INSERT INTO `user` (`id_user`, `user_id`, `nama`, `password`, `user_role`, `terakhir_login`, `input_at`, `update_at`) VALUES
(1, '504147', 'Alfhan', '$1$MHKySMot$W5TU05ayrkGH5lhSKQvyA1', 1, '2018-08-29 23:23:49', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(2, '123456', 'fauzan', '$1$RIxEgY/h$RQ96s3zN65KP168uwPlQ7/', 2, '2018-08-17 09:17:37', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(3, '112233', 'Alfia Nidyanti', '$1$gcdoY.yi$eT42lZpnR3m4alsM5dgIp/', 3, '2018-08-17 09:58:35', '2018-08-17 09:40:05', '2018-09-03 17:25:27'),
(4, 'alfian', 'Alfian Fajriasyah', '$1$PYf5i9JX$tHbAdBjsLXBrUScUUcnLF0', 2, '2018-09-11 14:22:43', '2018-08-17 10:00:41', '0000-00-00 00:00:00'),
(5, '1234566', 'Uum Khulsum', '$1$Ms1RJMrt$GhJib5crB2d2l2tuU9mmr.', 3, '2018-09-05 17:47:50', '2018-08-21 06:01:52', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Struktur dari tabel `user_auth`
--

CREATE TABLE `user_auth` (
  `id` int(11) NOT NULL,
  `id_user` int(5) NOT NULL,
  `token` varchar(255) NOT NULL,
  `expired_at` datetime NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `user_auth`
--

INSERT INTO `user_auth` (`id`, `id_user`, `token`, `expired_at`, `created_at`, `updated_at`) VALUES
(1, 1, '$1$.gIO4Gfb$JL3./eEiC6MDv9P5SnWmj0', '2018-08-17 10:45:09', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(2, 1, '$1$S3sJ.3CM$XBm7Aehj0eqq.k9j48f4F/', '2018-08-17 10:46:32', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(3, 1, '$1$uvAAjdJz$ohrXQQzac1AbYDOVAdFz/.', '2018-08-17 10:46:55', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(4, 1, '$1$E0.ReCU0$oOLYCgv8u.2MLxfdgUkpY.', '2018-08-17 10:58:13', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(5, 1, '$1$cdIhXH8R$PaDez0b/HSFzWB8GKAXfW1', '2018-08-17 11:05:23', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(6, 1, '$1$iC1S.4qS$gqIUJ0nTx..3GyjzVRVBI1', '2018-08-17 11:06:05', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(7, 1, '$1$VkVbAXtB$vUb52CYXdgiVz8vujADN4.', '2018-08-17 11:11:17', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(9, 1, '$1$oVrlz.Bb$DIvqvtyX3HIMfnwgFzi86.', '2018-08-17 11:18:05', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(10, 1, '$1$i1r.KTJW$2OytmBliDOyon6M4ODez9.', '2018-08-17 11:18:30', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(11, 1, '$1$MK7X92IF$4Gf8pMaBQ39cCSv54S10y1', '2018-08-17 11:45:15', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(12, 1, '$1$xpFPxMkg$xsxDXualupo9lkY8qEc8J0', '2018-08-17 12:18:07', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(13, 2, '$1$G8R8PClG$T2yzgcJWgAZRJacaIMdYI1', '2018-08-17 12:36:17', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(14, 2, '$1$WVa17HcE$V8pczTYfOKcvsUYGoU62J0', '2018-08-17 13:02:18', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(15, 2, '$1$paUMvTZ.$dcWuGVY6oDIpRnjATyGXv0', '2018-08-17 13:46:23', '0000-00-00 00:00:00', '2018-08-17 01:46:23'),
(16, 2, '$1$OG2gz3t8$Eb8k3OjIpvvhiC6gJ17/U/', '2018-08-17 21:18:40', '0000-00-00 00:00:00', '2018-08-17 09:18:40'),
(19, 1, '$1$AIfMP.Kj$vh4m.DFhCdnBWVq1R9D6s0', '2018-08-17 21:26:51', '0000-00-00 00:00:00', '2018-08-17 09:26:51'),
(20, 3, '$1$YEhUc9wF$5cL4b5OelcoNJuAj2hXIL0', '2018-08-17 21:58:35', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(21, 4, '$1$n.fpJOFd$6OYo1p8CHth0m13vVWfWL0', '2018-08-17 22:15:51', '0000-00-00 00:00:00', '2018-08-17 10:15:51'),
(22, 4, '$1$1Lde1jEE$UAQhN5XMsc5VLhXZJrJLL1', '2018-08-17 22:16:56', '0000-00-00 00:00:00', '2018-08-17 10:16:56'),
(23, 4, '$1$PW3TCTO2$MtJgHZW4dTwAC8.vQOvsz1', '2018-08-18 02:35:28', '0000-00-00 00:00:00', '2018-08-17 14:35:28'),
(24, 4, '$1$rqzux7Tg$nCVZZQu.Y/L286ufddZ3C0', '2018-08-18 22:51:08', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(25, 4, '$1$zyeyCIdc$sFNA.pI1qFn1ZKUxXN7BC/', '2018-08-18 23:36:30', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(26, 4, '$1$5ebTJCV0$OONV1YkRUq7s4nEt5us741', '2018-08-18 23:46:23', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(27, 4, '$1$LHr4ZMFi$tflQ0Ue24Hb2IZn87A1Eb/', '2018-08-18 23:49:53', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(28, 4, '$1$zLMQY2BF$E/k7LgAl4bpZhz6mpsp/R0', '2018-08-19 00:08:47', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(29, 4, '$1$EI.d3IcF$Cw1IZYWrdqUBsAJidC.0b0', '2018-08-19 00:10:33', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(30, 4, '$1$ipaaAoyl$NBRloj9siLdCKCsnV0Zx1.', '2018-08-19 00:18:53', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(31, 4, '$1$hShmA.Lh$zza8laGOzaE4.1g6c.l51.', '2018-08-19 00:19:31', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(32, 4, '$1$Tma./Klv$IXfWwSfonW4tETRg31mCU1', '2018-08-19 02:48:03', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(33, 4, '$1$9sfOryqL$HC7HsweEA3gOll.5nEYy9.', '2018-08-19 02:48:09', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(34, 4, '$1$clJVvf/m$Ows7vCFYEQBvWSh45A8VZ.', '2018-08-19 02:49:26', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(35, 4, '$1$UrcsQh4S$q5Xo7QyKIgc0OI3BuMxFB1', '2018-08-19 02:49:32', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(36, 1, '$1$0hUmx54A$D6ppKvkximT/lvSW6blip0', '2018-08-19 02:49:58', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(37, 4, '$1$L2l3luoa$97BgcdtjuXY37e/7kfp0I1', '2018-08-19 02:53:15', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(38, 4, '$1$6vdv/2UV$b8U02g7wwTkqdtDaFcaDv/', '2018-08-19 02:55:50', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(39, 4, '$1$yYgDtg7t$RfBVRGoJUhizDSYC/vrqu/', '2018-08-19 03:44:37', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(40, 1, '$1$OJsCS6eu$BhXqyBwCjKOGs4O.h5VbE1', '2018-08-19 04:20:50', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(41, 4, '$1$yfTLp/pd$YjzYMjYh5pnoBqp431nfS/', '2018-08-19 04:32:45', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(42, 4, '$1$9gp6pOHi$je8wagwN5PG6.k986hzdT.', '2018-08-19 04:40:06', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(43, 4, '$1$cng/woWr$BaHoJEldgNi8EZT3JVN8Y.', '2018-08-19 04:40:54', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(44, 4, '$1$RqIKpvT2$CeYHJxiOu2uV56hAcHPtX0', '2018-08-19 04:58:13', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(45, 4, '$1$FBeiZCVd$eYLSTmwDGtMXtF/cFuYYt0', '2018-08-19 05:15:17', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(46, 1, '$1$S0C/wIh1$a1DN9e17ZqVU1mM/OV0vD1', '2018-08-19 05:23:11', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(47, 4, '$1$cRL0VPUs$7r.DarUcxC3zdpkFob.Dw.', '2018-08-19 05:25:01', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(48, 4, '$1$.Pi/XKh8$AnBvyJ9mwbWYsNcsF2/F5/', '2018-08-19 05:25:16', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(49, 4, '$1$ntYu50Pw$LrWWAXj5cIRAZT0EQUTTN/', '2018-08-19 05:25:30', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(50, 4, '$1$ODrzLcL9$WGKRjYHkGqAOzpBCPUSTH.', '2018-08-19 05:25:30', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(51, 4, '$1$WPu6y4Qo$.3mUxpK4eonwA6l0ZMra9.', '2018-08-19 05:25:54', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(52, 4, '$1$P9h3OtIb$PCbKDA1lUWAoXbsjHX7tu0', '2018-08-19 05:26:02', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(53, 1, '$1$KjBOvSE9$ac..iBusCUqN3eaXFxjyS1', '2018-08-19 05:26:29', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(54, 4, '$1$t5inoGGA$w.oIUlSRiBkDGscOPbNgL.', '2018-08-19 05:28:26', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(55, 4, '$1$JFodfd3d$ivzn7T/UM/Wq8ArI7p3u/1', '2018-08-19 05:32:49', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(56, 4, '$1$ZDNG2zZs$GfgFLPm3f4l0hWeoV2oE00', '2018-08-19 05:33:55', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(57, 4, '$1$MDEyVgim$k2MtBonFjrEFmgcl1XE8F.', '2018-08-19 05:43:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(58, 4, '$1$fUhhH3Vk$UShIdH32j4BKoh0oaAb6g1', '2018-08-19 05:56:26', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(59, 4, '$1$9TqeBQjv$oubFaMoBg7X9HZdJfKV6z/', '2018-08-19 05:56:56', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(60, 4, '$1$hNxON5cX$9gM0h0xuWRZhen.rTynUZ/', '2018-08-19 05:58:10', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(61, 4, '$1$lpZtTQ9U$CPcU2PVrEDm5pUYejTqfO0', '2018-08-20 22:46:46', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(62, 1, '$1$2nxa5YY8$aJhxztq5F0l1QmA.gcNha0', '2018-08-20 23:02:20', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(63, 4, '$1$GuCSqNCU$0MVOdF5QUSkSZGUgjjoQQ/', '2018-08-20 23:03:48', '0000-00-00 00:00:00', '2018-08-20 11:03:48'),
(64, 4, '$1$yBH4iEwV$A0CckiTq9GZfkmjAds1Nj1', '2018-08-21 04:57:39', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(65, 4, '$1$p.Wzoj9E$dsf0SxJx8nTKRaMmthu.8.', '2018-08-21 05:29:04', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(66, 4, '$1$UH82ExA5$2j0GhhTPQNOawAMqTEbdx0', '2018-08-21 05:30:37', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(67, 4, '$1$8TLd6wnI$Tba47A4RfosBaMq5i9iXN.', '2018-08-21 06:32:04', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(68, 1, '$1$GJMjk3eb$f6JGRGmQW.09TVbl5NVCN/', '2018-08-21 17:57:32', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(69, 4, '$1$8tlaKhmR$V8/YknloZSa7BkkMQTzqy/', '2018-08-21 17:58:12', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(70, 4, '$1$QOr2o7Pm$wHjnMBzryJcE5tKRYJLrX.', '2018-08-21 18:00:59', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(71, 5, '$1$R8MW8pi.$xEZkJR5SIsHs2.VdIzLqG1', '2018-08-21 18:02:16', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(72, 4, '$1$52XExXVe$jo/HExn9koeof76zNz4hB.', '2018-08-21 18:04:34', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(73, 4, '$1$1J7mnYHV$BTBIzaFFL022I4arSqq3X0', '2018-08-21 22:25:54', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(74, 1, '$1$uXbNLZqd$doJWaqKWoQm6jXeLvW3qF.', '2018-08-21 22:26:49', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(75, 4, '$1$3Jp4aGKp$hXvFBqW8RU0yvfuCWBYe81', '2018-08-21 22:34:30', '0000-00-00 00:00:00', '2018-08-21 10:34:30'),
(76, 4, '$1$cbT7VX3b$DM9wuMj0diyHpWETz6Hf4.', '2018-08-21 22:37:51', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(77, 4, '$1$/7UkIIA8$CTDhBiWdZUG8vg3Iz3pto1', '2018-08-21 22:39:56', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(80, 4, '$1$9MURrGQj$zWhldJzRDyYm.KjElv6Aj.', '2018-08-21 22:44:40', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(81, 4, '$1$cpXZ6E5F$SiHTLMklFvy2tWAs7c3cb/', '2018-08-21 22:46:29', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(82, 4, '$1$iLXQK3Wy$D4RJ/vCSqzy1day2VMg4U0', '2018-08-21 22:52:41', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(83, 4, '$1$K1JBRW4b$LVv4klm5oqoNYbmltIAHB1', '2018-08-21 22:56:08', '0000-00-00 00:00:00', '2018-08-21 10:56:08'),
(84, 1, '$1$B/g4Z06v$TfxO5Ym/C9LV.Me.c2nwh.', '2018-08-21 22:57:15', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(85, 1, '$1$lK7PnnAk$vCh9UAvDf4c/SbAc2u3Hs.', '2018-08-21 22:57:27', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(86, 4, '$1$KdmwLo4o$.87TbZeEoHaCaJ0NBgVe31', '2018-08-21 22:58:12', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(87, 1, '$1$EPmxe9UR$a.06tS5Yv3gYUf4e9LQ391', '2018-08-21 22:58:44', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(88, 4, '$1$vMQ8u.31$idXkCv8.5ia2VUq5zG497/', '2018-08-21 22:59:32', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(89, 4, '$1$NSej9Hui$/3ikR50zaGsh7U8YmXVDR0', '2018-08-21 23:01:23', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(90, 4, '$1$jpea/7kQ$PrFNW2PdMqxaIc7UuKfQp1', '2018-08-21 23:01:57', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(91, 4, '$1$QSsXwsgC$bdCOEs6iRn4vr3i8eCe8p/', '2018-08-21 23:03:49', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(92, 1, '$1$cSrXYro2$NK3g2OuSPHW45/eujbqF61', '2018-08-21 23:04:09', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(93, 4, '$1$HdtomBag$1OwP8859oaBI40xc.kBr5.', '2018-08-21 23:15:08', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(94, 5, '$1$rhXr4NOA$jjAUEGHcEWgWUAaJ5YqEb0', '2018-08-21 23:15:28', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(95, 4, '$1$9QIZwpRa$oVT6R6lCacR4FlSk0PoqN/', '2018-08-21 23:27:30', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(96, 4, '$1$dzafKQXI$8964Fmkiv246Xo4QisYp//', '2018-08-21 23:27:54', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(97, 5, '$1$9KVd9gVS$uIIEAK0gs8fb5Mbr.1BvK.', '2018-08-21 23:28:18', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(98, 4, '$1$1vQ6U6XL$omZbXH3EeUMP849YQ6KGa/', '2018-08-22 01:24:09', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(99, 4, '$1$Gu36H7WT$V1crpVBqS5xOSldolpdzE1', '2018-08-22 01:47:08', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(100, 1, '$1$cbM1050B$tpYMRkEllbt6wXQHFN1T3.', '2018-08-22 02:01:35', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(101, 5, '$1$46FAiG/h$QEaEnzR9EEd/5bT8Rv0r./', '2018-08-22 02:13:51', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(102, 4, '$1$X./FYCLo$B23jK5ZBdiLM5/bCts9qo0', '2018-08-22 02:14:30', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(103, 4, '$1$QDVDK7RL$2AyqUG.jJb4faBav6g.uE.', '2018-08-22 02:21:15', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(104, 4, '$1$9foSduTs$9IHQyAv1HM9QY1AKNnX5B/', '2018-08-22 02:26:20', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(105, 4, '$1$se1kc4.s$/DGJUwxQZWxFAqdVk3FPR/', '2018-08-22 02:27:28', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(106, 4, '$1$J9lfQKyj$Bjx.Qy4vq1FgQLtRulZZa.', '2018-08-22 02:28:03', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(107, 5, '$1$hNGh.yim$KFKchyoT52eoGr/PnIn/j/', '2018-08-22 02:29:11', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(108, 4, '$1$3KZ1LXRP$k5oQCfKWBHNmhiAwixU/v0', '2018-08-22 02:54:58', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(109, 1, '$1$3kHZ.mWz$2JUzHUm8/jbcVb4AulcOd0', '2018-08-22 02:55:51', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(110, 4, '$1$fjVjJwOn$yXyK81idkr2VW0Y9TUJ/D1', '2018-08-22 02:56:55', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(111, 4, '$1$5YahgPBe$89vvQ5EJ5FRbOktFs7Q4Q1', '2018-08-22 02:58:40', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(112, 4, '$1$bEkbYvNR$tsx0YI/mp3aiMDOsCwqOG.', '2018-08-22 03:03:48', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(113, 4, '$1$zwvCN///$efllBrTDBjiWoKvPzbFeT.', '2018-08-22 03:05:47', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(114, 4, '$1$1lHigvIQ$3GUEaBLlmAYaAbjUrMo3q0', '2018-08-22 04:40:06', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(115, 4, '$1$q8xN8WL3$NQzGRoSTuX2sEb5w.w2rM0', '2018-08-22 04:40:15', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(116, 4, '$1$JBGvpSmb$dhUQUx4bR14lqSGM46goj0', '2018-08-22 04:40:26', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(117, 4, '$1$Jp/3C05f$7qHpXDAtJHyBZoEk8KiLE0', '2018-08-22 04:44:20', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(118, 4, '$1$uWat/J5u$G8xxXu5oVVJEzSj7fo79d0', '2018-08-22 10:50:43', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(119, 4, '$1$2KEufMg1$QSz82HAZrirMlt5SCStyu0', '2018-08-22 10:58:24', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(120, 4, '$1$Reh1m1uF$63kPrgQPcvcm/QuhLcqKN1', '2018-08-22 10:59:08', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(121, 4, '$1$y/zzEdW6$wneax.Q7BmDfa//o2foqN/', '2018-08-22 10:59:30', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(122, 4, '$1$whrX879o$j28d0Fbst7jWDbYkpO2FS1', '2018-08-22 11:28:33', '0000-00-00 00:00:00', '2018-08-21 23:28:33'),
(123, 4, '$1$0gwREL2h$GyplLZ5E24scjJmmtSx781', '2018-08-22 11:33:07', '0000-00-00 00:00:00', '2018-08-21 23:33:07'),
(124, 4, '$1$V7T.Js9O$S5XeM6WNMwkGKXn20dla5/', '2018-08-23 18:00:27', '0000-00-00 00:00:00', '2018-08-23 06:00:27'),
(125, 4, '$1$IUBUPWOi$o.S1F48LCkXY0wL/2hpHJ.', '2018-08-23 18:00:43', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(129, 4, '$1$IlXaPqj0$ccNv9I/2UF9bE3WNMJ5x5/', '2018-08-23 18:46:32', '0000-00-00 00:00:00', '2018-08-23 06:46:32'),
(131, 4, '$1$IhZmUTr/$LKG6if6ASQHiBnutFSV/v/', '2018-08-23 23:44:06', '0000-00-00 00:00:00', '2018-08-23 11:44:06'),
(132, 4, '$1$oqTAqySg$JbvHPRnO5R6buLYBJ8zM91', '2018-08-24 10:15:49', '0000-00-00 00:00:00', '2018-08-23 22:15:49'),
(134, 4, '$1$EN0sT37q$ZWX3XFnQzQ7oFtVXAESEo.', '2018-08-24 11:18:26', '0000-00-00 00:00:00', '2018-08-23 23:18:26'),
(135, 4, '$1$YWKE9DMj$IK5Df4RyCB6nSEMFAFtab1', '2018-08-24 11:06:31', '0000-00-00 00:00:00', '2018-08-23 23:06:31'),
(137, 4, '$1$LCsz0RV9$cNLmnaT6GKahK.6rVAYMG0', '2018-08-25 01:32:36', '0000-00-00 00:00:00', '2018-08-24 13:32:36'),
(139, 5, '$1$jtqr5lF2$5tmzTuhgUpfz61rPQhGVe1', '2018-08-25 06:47:57', '0000-00-00 00:00:00', '2018-08-24 18:47:57'),
(141, 4, '$1$WSkxht/I$1iVKm/QOLtMYspbEdTB5h.', '2018-08-26 08:13:26', '0000-00-00 00:00:00', '2018-08-25 20:13:26'),
(144, 4, '$1$feohX2BE$CRN94Fhx5MBZPRegyVB9c.', '2018-08-26 09:30:34', '0000-00-00 00:00:00', '2018-08-25 21:30:34'),
(147, 4, '$1$MgWwCRes$MZt2XPEumcfS6tdmIVFaI.', '2018-08-28 01:49:39', '0000-00-00 00:00:00', '2018-08-27 13:49:39'),
(149, 4, '$1$ZODm9/6l$PAB/aAEoEEn7Pl6AiMFVp0', '2018-08-29 03:18:34', '0000-00-00 00:00:00', '2018-08-28 15:18:34'),
(150, 5, '$1$N1azQpOU$rHeJodxS8AjMPQF2Q1z5m0', '2018-08-29 05:40:54', '0000-00-00 00:00:00', '2018-08-28 17:40:54'),
(153, 4, '$1$Cgb8D8T4$9/H/YG/6BgZSryJNfiouG1', '2018-08-30 04:32:15', '0000-00-00 00:00:00', '2018-08-29 16:32:15'),
(154, 4, '$1$DUkGFEiI$9Lo6/3yQ7mCtKyA0B2PSh.', '2018-08-30 22:47:41', '0000-00-00 00:00:00', '2018-08-30 10:47:41'),
(157, 1, '$1$dv/kQc73$zpmJn8X3o4jT0csZhF40e/', '2018-08-30 23:15:24', '0000-00-00 00:00:00', '2018-08-30 11:15:24'),
(159, 4, '$1$if.yrNwb$LcPEVgZyAU/TOJbxoUWMD1', '2018-08-31 07:32:31', '0000-00-00 00:00:00', '2018-08-30 19:32:31'),
(172, 5, '$1$SKOujBA2$Xdi3oJ4nMl6tPjTZlRa/m.', '2018-08-31 07:24:37', '0000-00-00 00:00:00', '2018-08-30 19:24:37'),
(176, 4, '$1$617YZSvf$zCy9OZycFjwNJZJT60BB71', '2018-08-31 07:37:47', '0000-00-00 00:00:00', '2018-08-30 19:37:47'),
(178, 4, '$1$E1OfcDxM$SpL5CxB8/c/AjgffRDMUU/', '2018-09-01 05:32:53', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(179, 4, '$1$HEY62x35$.VP9hGgbz0P/gwEDI7mko0', '2018-09-01 06:21:59', '0000-00-00 00:00:00', '2018-08-31 18:21:59'),
(180, 4, '$1$ptnRdvnN$pGQXpw063S.Rblzubn0qn.', '2018-09-01 18:11:38', '0000-00-00 00:00:00', '2018-09-01 06:11:38'),
(184, 4, '$1$hZEKPCZJ$FKkLvxMfqJOikV1WplURz0', '2018-09-02 09:11:01', '0000-00-00 00:00:00', '2018-09-01 21:11:01'),
(185, 4, '$1$MnF95MIv$97/84fSQB2lc26yueSOT71', '2018-09-02 10:20:48', '0000-00-00 00:00:00', '2018-09-01 22:20:48'),
(189, 4, '$1$i8h6c2Se$0rS/1s2mz4l1NoDA7yJgf.', '2018-09-04 06:33:03', '0000-00-00 00:00:00', '2018-09-03 18:33:03'),
(190, 4, '$1$/We1K1xf$bHLStyoOQO6ZUrLMSOQUz.', '2018-09-06 07:52:10', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(191, 4, '$1$8PHQJT8/$CuLtKGGmuPuZ2Jed9EnJT1', '2018-09-06 07:52:14', '0000-00-00 00:00:00', '2018-09-05 19:52:14'),
(192, 4, '$1$40eKcWIw$axNBq8oV9KDbaVULe4fcX1', '2018-09-06 23:00:45', '0000-00-00 00:00:00', '2018-09-06 11:00:45'),
(194, 4, '$1$PWzqUME1$pwtrl.3hxcfSqcsLrF6f3/', '2018-09-12 03:14:33', '0000-00-00 00:00:00', '2018-09-11 15:14:33');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `data_umum_bangunan_negara`
--
ALTER TABLE `data_umum_bangunan_negara`
  ADD PRIMARY KEY (`id_bangunan`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `id_reference` (`id_reference`);

--
-- Indexes for table `id_reference`
--
ALTER TABLE `id_reference`
  ADD PRIMARY KEY (`id_reference`);

--
-- Indexes for table `role`
--
ALTER TABLE `role`
  ADD PRIMARY KEY (`role_id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id_user`),
  ADD UNIQUE KEY `user_jd` (`user_id`),
  ADD KEY `user_role` (`user_role`);

--
-- Indexes for table `user_auth`
--
ALTER TABLE `user_auth`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_user` (`id_user`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `data_umum_bangunan_negara`
--
ALTER TABLE `data_umum_bangunan_negara`
  MODIFY `id_bangunan` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=57;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id_user` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `user_auth`
--
ALTER TABLE `user_auth`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=195;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `data_umum_bangunan_negara`
--
ALTER TABLE `data_umum_bangunan_negara`
  ADD CONSTRAINT `data_umum_bangunan_negara_ibfk_2` FOREIGN KEY (`user_id`) REFERENCES `user` (`user_id`),
  ADD CONSTRAINT `data_umum_bangunan_negara_ibfk_3` FOREIGN KEY (`id_reference`) REFERENCES `id_reference` (`id_reference`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `user`
--
ALTER TABLE `user`
  ADD CONSTRAINT `user_ibfk_1` FOREIGN KEY (`user_role`) REFERENCES `role` (`role_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `user_auth`
--
ALTER TABLE `user_auth`
  ADD CONSTRAINT `user_auth_ibfk_1` FOREIGN KEY (`id_user`) REFERENCES `user` (`id_user`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
