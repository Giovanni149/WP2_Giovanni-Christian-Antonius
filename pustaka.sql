-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 17, 2022 at 06:07 PM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 8.1.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `pustaka`
--

-- --------------------------------------------------------

--
-- Table structure for table `buku`
--

CREATE TABLE `buku` (
  `id` int(11) NOT NULL,
  `judul_buku` varchar(128) CHARACTER SET latin1 NOT NULL,
  `id_kategori` int(11) NOT NULL,
  `pengarang` varchar(64) CHARACTER SET latin1 NOT NULL,
  `penerbit` varchar(64) CHARACTER SET latin1 NOT NULL,
  `tahun_terbit` year(4) NOT NULL,
  `isbn` int(64) NOT NULL,
  `stok` int(11) NOT NULL,
  `dipinjam` int(11) NOT NULL,
  `dibooking` int(11) NOT NULL,
  `image` varchar(256) CHARACTER SET latin1 DEFAULT 'bookcover.jpg'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `buku`
--

INSERT INTO `buku` (`id`, `judul_buku`, `id_kategori`, `pengarang`, `penerbit`, `tahun_terbit`, `isbn`, `stok`, `dipinjam`, `dibooking`, `image`) VALUES
(1, 'Statistika Dengan Program komputer', 1, 'Ahmad Kholiqul Amin', 'Deep Publish', 2014, 978602280, 6, 1, 1, 'bookcover.jpg'),
(2, 'Mudah Belajar Komputer Untuk Anak', 1, 'Bambang Agus Setiawan', 'Huta Media', 2014, 978602511, 5, 3, 1, 'bookcover.jpg'),
(3, 'PHP Komplet', 1, 'Jubilee', 'Elex Media Komputindo', 2017, 834675354, 5, 1, 1, 'bookcover.jpg'),
(4, 'Detektif Conan Ep.200', 9, 'Okigawa Sasuke', 'Cultura', 2016, 874387583, 5, 0, 0, 'bookcover.jpg'),
(5, 'Bahasa Indonesia', 2, 'Umri Nur\'aini & Indriyani', 'Pusat Perbukuan', 2015, 757254724, 3, 0, 0, 'bookcover.jpg'),
(6, 'Komunikasi Lintas Budaya', 5, 'Dr. Dedy Kurnia', 'Published', 2015, 878674646, 5, 0, 0, 'bookcover.jpg'),
(7, 'Kombinasi CodeIgniter Dan Ajax Dalam Perancangan', 1, 'Anton Subagia', 'Elex Media Komputindo', 2017, 433453565, 5, 0, 0, 'bookcover.jpg'),
(8, 'From Hobby To Money', 4, 'Deasylawati', 'Elex Media Komputindo', 2015, 879686867, 5, 0, 0, 'bookcover.jpg'),
(9, 'Buku Saku Pramuka', 8, 'Rudi Himawan', 'Pusat Perbukuan', 2016, 978686879, 6, 0, 0, 'bookcover.jpg'),
(10, 'Rahasia Keajaiban Bumi', 3, 'Nurul Ikhsan', 'Luxima', 2014, 565756565, 5, 0, 0, 'bookcover.jpg'),
(1, 'Statistika Dengan Program komputer', 1, 'Ahmad Kholiqul Amin', 'Deep Publish', 2014, 978602280, 6, 1, 1, 'bookcover.jpg'),
(2, 'Mudah Belajar Komputer Untuk Anak', 1, 'Bambang Agus Setiawan', 'Huta Media', 2014, 978602511, 5, 3, 1, 'bookcover.jpg'),
(3, 'PHP Komplet', 1, 'Jubilee', 'Elex Media Komputindo', 2017, 834675354, 5, 1, 1, 'bookcover.jpg'),
(4, 'Detektif Conan Ep.200', 9, 'Okigawa Sasuke', 'Cultura', 2016, 874387583, 5, 0, 0, 'bookcover.jpg'),
(5, 'Bahasa Indonesia', 2, 'Umri Nur\'aini & Indriyani', 'Pusat Perbukuan', 2015, 757254724, 3, 0, 0, 'bookcover.jpg'),
(6, 'Komunikasi Lintas Budaya', 5, 'Dr. Dedy Kurnia', 'Published', 2015, 878674646, 5, 0, 0, 'bookcover.jpg'),
(7, 'Kombinasi CodeIgniter Dan Ajax Dalam Perancangan', 1, 'Anton Subagia', 'Elex Media Komputindo', 2017, 433453565, 5, 0, 0, 'bookcover.jpg'),
(8, 'From Hobby To Money', 4, 'Deasylawati', 'Elex Media Komputindo', 2015, 879686867, 5, 0, 0, 'bookcover.jpg'),
(9, 'Buku Saku Pramuka', 8, 'Rudi Himawan', 'Pusat Perbukuan', 2016, 978686879, 6, 0, 0, 'bookcover.jpg'),
(10, 'Rahasia Keajaiban Bumi', 3, 'Nurul Ikhsan', 'Luxima', 2014, 565756565, 5, 0, 0, 'bookcover.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `kategori`
--

CREATE TABLE `kategori` (
  `id_kategori` int(5) NOT NULL,
  `nama_kategori` varchar(45) CHARACTER SET latin1 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `kategori`
--

INSERT INTO `kategori` (`id_kategori`, `nama_kategori`) VALUES
(1, 'Komputer'),
(2, 'Bahasa'),
(3, 'Sains'),
(4, 'Hobby'),
(5, 'Komunikasi'),
(6, 'Hukum'),
(7, 'Agama'),
(8, 'Populer'),
(9, 'Komik'),
(1, 'Komputer'),
(2, 'Bahasa'),
(3, 'Sains'),
(4, 'Hobby'),
(5, 'Komunikasi'),
(6, 'Hukum'),
(7, 'Agama'),
(8, 'Populer'),
(9, 'Komik');

-- --------------------------------------------------------

--
-- Table structure for table `role`
--

CREATE TABLE `role` (
  `id` int(11) NOT NULL,
  `role` varchar(128) CHARACTER SET latin1 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `role`
--

INSERT INTO `role` (`id`, `role`) VALUES
(0, 'administrator'),
(0, 'member'),
(0, 'administrator'),
(0, 'member');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `nama` varchar(128) CHARACTER SET latin1 NOT NULL,
  `email` varchar(128) CHARACTER SET latin1 NOT NULL,
  `image` varchar(128) CHARACTER SET latin1 NOT NULL,
  `password` varchar(128) CHARACTER SET latin1 NOT NULL,
  `role_id` int(11) NOT NULL,
  `is_active` int(1) NOT NULL,
  `tanggal_input` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
