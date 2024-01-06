-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 06, 2024 at 02:23 PM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 7.4.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `rps`
--

-- --------------------------------------------------------

--
-- Table structure for table `table_user`
--

CREATE TABLE `table_user` (
  `user_id` int(11) NOT NULL,
  `user_name` varchar(255) NOT NULL,
  `user_email` varchar(255) NOT NULL,
  `user_password` varchar(255) NOT NULL,
  `user_akses` int(11) NOT NULL,
  `user_status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `table_user`
--

INSERT INTO `table_user` (`user_id`, `user_name`, `user_email`, `user_password`, `user_akses`, `user_status`) VALUES
(1, 'Rieski Dhanu Saputra', 'admin@email.com', '58acb7acccce58ffa8b953b12b5a7702bd42dae441c1ad85057fa70b', 1, 1),
(2, 'Rieski Dhanu Saputra', 'dosen@email.com', '57a44514f5c5149d6bb6346966d70a73bb1618a6899c97bf841d33a5', 2, 1),
(3, 'Rieski Dhanu', 'mahasiswa@email.com', 'b2b0d7f03aeb6a8bd1922d857473737660745767a77b52edcfe2409a', 3, 1),
(13, 'Rieski Dhanu', 'rieski@email.com', 'b028370bde360df15a9eb5c2ec11db17a0e4ab7f2f19680a1f3af262', 2, 1),
(14, 'Rieski Dhanu', 'rieskidhanu@email.com', '99fb2f48c6af4761f904fc85f95eb56190e5d40b1f44ec3a9c1fa319', 2, 1),
(15, 'Brian Al syarief', 'Blaa@email.com', 'a7470858e79c282bc2f6adfd831b132672dfd1224c1e78cbf5bcd057', 2, 1),
(16, 'Brian Syarief', 'Syarief@email.com', 'a7470858e79c282bc2f6adfd831b132672dfd1224c1e78cbf5bcd057', 2, 1);

-- --------------------------------------------------------

--
-- Table structure for table `tb_finalexam`
--

CREATE TABLE `tb_finalexam` (
  `id` int(11) NOT NULL,
  `kode_matkul` varchar(255) NOT NULL,
  `nama_matkul` varchar(255) NOT NULL,
  `program_studi` varchar(255) NOT NULL,
  `soal` varchar(255) NOT NULL,
  `rentang_waktu` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tb_materi`
--

CREATE TABLE `tb_materi` (
  `id_materi` int(11) NOT NULL,
  `pertemuan` varchar(255) NOT NULL,
  `kemampuan_akhir` varchar(255) NOT NULL,
  `indikator` varchar(255) NOT NULL,
  `topik` varchar(255) NOT NULL,
  `aktivitas` varchar(255) NOT NULL,
  `waktu` varchar(255) NOT NULL,
  `penilaian` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tb_materi`
--

INSERT INTO `tb_materi` (`id_materi`, `pertemuan`, `kemampuan_akhir`, `indikator`, `topik`, `aktivitas`, `waktu`, `penilaian`) VALUES
(16, 'Pertemuan 1', 'Dapat mengolah database', 'Mahasiswa mampu memahami dengan benar PHPMyAdmin', 'Dasar-dasar database', 'Praktikum', '75 menit', 'Bobot 5% dengan mengumpulkan laporan praktikum');

-- --------------------------------------------------------

--
-- Table structure for table `tb_matkul`
--

CREATE TABLE `tb_matkul` (
  `id` int(11) NOT NULL,
  `program_studi` varchar(255) NOT NULL,
  `kode_matkul` varchar(255) NOT NULL,
  `nama_matkul` varchar(255) NOT NULL,
  `semester` varchar(255) NOT NULL,
  `sks` varchar(255) NOT NULL,
  `deskripsi` text NOT NULL,
  `gambaran_umum` text NOT NULL,
  `capaian_pembelajaran` varchar(255) NOT NULL,
  `prasyarat` varchar(255) NOT NULL,
  `kemampuan` varchar(255) NOT NULL,
  `indikator` varchar(255) NOT NULL,
  `bahan_kajian` varchar(255) NOT NULL,
  `metode_pembelajaran` varchar(255) NOT NULL,
  `waktu` varchar(255) NOT NULL,
  `metode_penilaian` varchar(255) NOT NULL,
  `bahan_ajar` varchar(255) NOT NULL,
  `aktivitas` varchar(255) NOT NULL,
  `waktu_tugas` varchar(255) NOT NULL,
  `bobot` varchar(255) NOT NULL,
  `kriteria` varchar(255) NOT NULL,
  `indikator_penilaian` varchar(255) NOT NULL,
  `referensi` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tb_matkul`
--

INSERT INTO `tb_matkul` (`id`, `program_studi`, `kode_matkul`, `nama_matkul`, `semester`, `sks`, `deskripsi`, `gambaran_umum`, `capaian_pembelajaran`, `prasyarat`, `kemampuan`, `indikator`, `bahan_kajian`, `metode_pembelajaran`, `waktu`, `metode_penilaian`, `bahan_ajar`, `aktivitas`, `waktu_tugas`, `bobot`, `kriteria`, `indikator_penilaian`, `referensi`) VALUES
(16, 'D3 Teknik Informatika', 'DT001', 'Perancangan Web 2', 'Ganjil', '4', 'Perancangan web (web design) adalah istilah umum yang digunakan untuk mencakup bagaimana isi web konten ditampilkan, (biasanya berupa hypertext atau hypermedia) yang dikirimkan ke pengguna akhir melalui World Wide Web, dengan menggunakan sebuah browser web atau perangkat lunak berbasis web. Tujuan dari web design adalah untuk membuat website—sekumpulan konten online termasuk dokumen dan aplikasi yang berada pada server web / server. Sebuah website dapat berupa sekumpulan teks, gambar, suara dan konten lainnya, serta dapat bersifat interaktif ataupun statis.', 'Mata kuliah ini membahas teknologi web serta pemrograman web termasuk didalamnya yaitu HTML, CSS, Weblayout, JQuery dan Front End Framework ', 'Mahasiswa mampu merancang web mengunakan bahasa HTML', 'Tidak ada mata kuliah prasyarat untuk mengambil mata kuliah Pemrograman Web.', 'Mampu memahami definisi perancangan dan pemrograman web dengan elemen-elemen dasar HTML.', 'Mahasiswa mampu memahami bahasa pemrograman PHP dengan benar', 'Pengenalan HTML, implementasi Link pada halaman HTML, navigasi pada halaman HTML, serta penggunaan CSS', 'Praktikum, Latihan', '200', 'Laporan Praktikum', 'Elemen HTML, Link, Navigasi, dan Color', 'Praktikum', 'Minggu 1 - 2', '20%', 'Kelengkapan materi laporan dan sistematika penulisan laporan', 'Mahasiswa membuat dan mengumpulkan laporan praktikum dari hasil kegiatan praktikum 1 dan 2', 'Saputra, Rieski Dhanu, M.Kom. 2023. PHP Codeigniter : Sleman');

-- --------------------------------------------------------

--
-- Table structure for table `tb_midterm`
--

CREATE TABLE `tb_midterm` (
  `id` int(11) NOT NULL,
  `kode_matkul` varchar(255) NOT NULL,
  `nama_matkul` varchar(255) NOT NULL,
  `program_studi` varchar(255) NOT NULL,
  `soal` varchar(255) NOT NULL,
  `rentang_waktu` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tb_schedule`
--

CREATE TABLE `tb_schedule` (
  `id` int(11) NOT NULL,
  `kode_matkul` varchar(255) NOT NULL,
  `nama_matkul` varchar(255) NOT NULL,
  `program_studi` varchar(255) NOT NULL,
  `tgl_mengajar` date NOT NULL,
  `kelas` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tb_schedule`
--

INSERT INTO `tb_schedule` (`id`, `kode_matkul`, `nama_matkul`, `program_studi`, `tgl_mengajar`, `kelas`) VALUES
(13, 'dt', 'mm', 'mm', '2024-01-03', '01');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `table_user`
--
ALTER TABLE `table_user`
  ADD PRIMARY KEY (`user_id`);

--
-- Indexes for table `tb_finalexam`
--
ALTER TABLE `tb_finalexam`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tb_materi`
--
ALTER TABLE `tb_materi`
  ADD PRIMARY KEY (`id_materi`);

--
-- Indexes for table `tb_matkul`
--
ALTER TABLE `tb_matkul`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tb_midterm`
--
ALTER TABLE `tb_midterm`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tb_schedule`
--
ALTER TABLE `tb_schedule`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `table_user`
--
ALTER TABLE `table_user`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `tb_finalexam`
--
ALTER TABLE `tb_finalexam`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `tb_materi`
--
ALTER TABLE `tb_materi`
  MODIFY `id_materi` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `tb_matkul`
--
ALTER TABLE `tb_matkul`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `tb_midterm`
--
ALTER TABLE `tb_midterm`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `tb_schedule`
--
ALTER TABLE `tb_schedule`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
