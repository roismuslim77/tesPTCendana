-- phpMyAdmin SQL Dump
-- version 4.8.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 20, 2019 at 03:58 AM
-- Server version: 10.1.37-MariaDB
-- PHP Version: 7.3.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `test3`
--

DELIMITER $$
--
-- Procedures
--
CREATE DEFINER=`root`@`localhost` PROCEDURE `test_mysql_while_loop` ()  BEGIN
 DECLARE x  INT;
 DECLARE y INT;
 
 SET x = 26;
 SET y = 16;
 
 WHILE x  <= 98 DO
 INSERT INTO departemen VALUES (null, y, concat('DEPARTMENT ',x));
 SET  x = x + 1;
 SET y = y +1;
 END WHILE;
 END$$

--
-- Functions
--
CREATE DEFINER=`root`@`localhost` FUNCTION `hello_world` () RETURNS TEXT CHARSET latin1 BEGIN
  RETURN 'Hello World';
END$$

CREATE DEFINER=`root`@`localhost` FUNCTION `total_gaji` (`gaji` INT(20), `umr` INT(20)) RETURNS TEXT CHARSET latin1 BEGIN
     RETURN concat('Rp ', FORMAT(gaji+umr,0));
    END$$

DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `departemen`
--

CREATE TABLE `departemen` (
  `id` int(5) NOT NULL,
  `parent_id` int(5) DEFAULT NULL,
  `detail` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `departemen`
--

INSERT INTO `departemen` (`id`, `parent_id`, `detail`) VALUES
(1, NULL, 'DEPARTMENT 1'),
(2, NULL, 'DEPARTMENT 2'),
(3, 1, 'DEPARTMENT 3'),
(4, 1, 'DEPARTMENT 4'),
(5, 1, 'DEPARTMENT 5'),
(6, 1, 'DEPARTMENT 6'),
(7, 1, 'DEPARTMENT 7'),
(8, 2, 'DEPARTMENT 8'),
(9, 2, 'DEPARTMENT 9'),
(10, 2, 'DEPARTMENT 10'),
(11, 2, 'DEPARTMENT 11'),
(12, 2, 'DEPARTMENT 12'),
(13, 3, 'DEPARTMENT 13'),
(14, 4, 'DEPARTMENT 14'),
(15, 5, 'DEPARTMENT 15'),
(16, 6, 'DEPARTMENT 16'),
(17, 7, 'DEPARTMENT 17'),
(18, 8, 'DEPARTMENT 18'),
(19, 9, 'DEPARTMENT 19'),
(20, 10, 'DEPARTMENT 20'),
(21, 11, 'DEPARTMENT 21'),
(22, 12, 'DEPARTMENT 22'),
(23, 13, 'DEPARTMENT 23'),
(24, 14, 'DEPARTMENT 24'),
(25, 15, 'DEPARTMENT 25'),
(26, 16, 'DEPARTMENT 26'),
(27, 17, 'DEPARTMENT 27'),
(28, 18, 'DEPARTMENT 28'),
(29, 19, 'DEPARTMENT 29'),
(30, 20, 'DEPARTMENT 30'),
(31, 21, 'DEPARTMENT 31'),
(32, 22, 'DEPARTMENT 32'),
(33, 23, 'DEPARTMENT 33'),
(34, 24, 'DEPARTMENT 34'),
(35, 25, 'DEPARTMENT 35'),
(36, 26, 'DEPARTMENT 36'),
(37, 27, 'DEPARTMENT 37'),
(38, 28, 'DEPARTMENT 38'),
(39, 29, 'DEPARTMENT 39'),
(40, 30, 'DEPARTMENT 40'),
(41, 31, 'DEPARTMENT 41'),
(42, 32, 'DEPARTMENT 42'),
(43, 33, 'DEPARTMENT 43'),
(44, 34, 'DEPARTMENT 44'),
(45, 35, 'DEPARTMENT 45'),
(46, 36, 'DEPARTMENT 46'),
(47, 37, 'DEPARTMENT 47'),
(48, 38, 'DEPARTMENT 48'),
(49, 39, 'DEPARTMENT 49'),
(50, 40, 'DEPARTMENT 50'),
(51, 41, 'DEPARTMENT 51'),
(52, 42, 'DEPARTMENT 52'),
(53, 43, 'DEPARTMENT 53'),
(54, 44, 'DEPARTMENT 54'),
(55, 45, 'DEPARTMENT 55'),
(56, 46, 'DEPARTMENT 56'),
(57, 47, 'DEPARTMENT 57'),
(58, 48, 'DEPARTMENT 58'),
(59, 49, 'DEPARTMENT 59'),
(60, 50, 'DEPARTMENT 60'),
(61, 51, 'DEPARTMENT 61'),
(62, 52, 'DEPARTMENT 62'),
(63, 53, 'DEPARTMENT 63'),
(64, 54, 'DEPARTMENT 64'),
(65, 55, 'DEPARTMENT 65'),
(66, 56, 'DEPARTMENT 66'),
(67, 57, 'DEPARTMENT 67'),
(68, 58, 'DEPARTMENT 68'),
(69, 59, 'DEPARTMENT 69'),
(70, 60, 'DEPARTMENT 70'),
(71, 61, 'DEPARTMENT 71'),
(72, 62, 'DEPARTMENT 72'),
(73, 63, 'DEPARTMENT 73'),
(74, 64, 'DEPARTMENT 74'),
(75, 65, 'DEPARTMENT 75'),
(76, 66, 'DEPARTMENT 76'),
(77, 67, 'DEPARTMENT 77'),
(78, 68, 'DEPARTMENT 78'),
(79, 69, 'DEPARTMENT 79'),
(80, 70, 'DEPARTMENT 80'),
(81, 71, 'DEPARTMENT 81'),
(82, 72, 'DEPARTMENT 82'),
(83, 73, 'DEPARTMENT 83'),
(84, 74, 'DEPARTMENT 84'),
(85, 75, 'DEPARTMENT 85'),
(86, 76, 'DEPARTMENT 86'),
(87, 77, 'DEPARTMENT 87'),
(88, 78, 'DEPARTMENT 88'),
(89, 79, 'DEPARTMENT 89'),
(90, 80, 'DEPARTMENT 90'),
(91, 81, 'DEPARTMENT 91'),
(92, 82, 'DEPARTMENT 92'),
(93, 83, 'DEPARTMENT 93'),
(94, 84, 'DEPARTMENT 94'),
(95, 85, 'DEPARTMENT 95'),
(96, 86, 'DEPARTMENT 96'),
(97, 87, 'DEPARTMENT 97'),
(98, 88, 'DEPARTMENT 98'),
(99, NULL, 'DEPARTMENT 99');

-- --------------------------------------------------------

--
-- Stand-in structure for view `gaji_pegawai`
-- (See below for the actual view)
--
CREATE TABLE `gaji_pegawai` (
`nama_pegawai` varchar(30)
,`jabatan` varchar(30)
,`penempatan` varchar(30)
,`total_gaji` varchar(57)
);

-- --------------------------------------------------------

--
-- Table structure for table `jabatan`
--

CREATE TABLE `jabatan` (
  `id` int(5) NOT NULL,
  `nama` varchar(30) NOT NULL,
  `gaji_tambahan` int(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `jabatan`
--

INSERT INTO `jabatan` (`id`, `nama`, `gaji_tambahan`) VALUES
(1, 'SYSTEM ANALIST', 2000000),
(2, 'PROGRAMMER', 1000000),
(3, 'TECHNICAL WRITER', 500000),
(4, 'PROJECT MANAGER', 300000);

-- --------------------------------------------------------

--
-- Table structure for table `pegawai`
--

CREATE TABLE `pegawai` (
  `id` int(5) NOT NULL,
  `nik` int(20) NOT NULL,
  `nama` varchar(30) NOT NULL,
  `kota_kelahiran` varchar(10) NOT NULL,
  `id_jabatan` int(5) NOT NULL,
  `id_penempatan` int(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pegawai`
--

INSERT INTO `pegawai` (`id`, `nik`, `nama`, `kota_kelahiran`, `id_jabatan`, `id_penempatan`) VALUES
(2, 2147483647, 'SULASTRI IMANAH', 'MALANG', 1, 1),
(3, 2147483647, 'HADI DWI ANDIKA', 'MALANG', 2, 2),
(4, 2147483647, 'RAHMAT MUTTAQIM', 'JAKARTA', 2, 3),
(5, 2147483647, 'JACKSON LAWO', 'MALANG', 3, 1),
(6, 2147483647, 'DIAS IAPA', 'MALANG', 4, 2),
(7, 2147483647, 'SUMARNO TRI WAHYU', 'JAKARTA', 4, 3),
(8, 2147483647, 'SELLT DAWAK', 'MALANG', 2, 1),
(9, 2147483647, 'SOLKHIN NUR HIDAYAT', 'MEDAN', 1, 2),
(10, 2147483647, 'ANDIK LUKMAN', 'MEDAN', 2, 3),
(11, 2147483647, 'FAHRIN HASYIN', 'TUMPANG', 1, 2),
(12, 2147483647, 'DALIMA DUA TIGA', 'MALANG', 3, 2),
(13, 2147483647, 'MESTAR SUM ALIKA', 'MALANG', 2, 3),
(14, 2147483647, 'SULAIMAN BILLY', 'MALANG', 4, 1),
(15, 2147483647, 'JIN KANUFA', 'JAKARTA', 3, 2),
(16, 2147483647, 'AHMAD EFENDI', 'MEDAN', 2, 3);

-- --------------------------------------------------------

--
-- Table structure for table `penempatan`
--

CREATE TABLE `penempatan` (
  `id` int(5) NOT NULL,
  `nama` varchar(30) NOT NULL,
  `umr` int(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `penempatan`
--

INSERT INTO `penempatan` (`id`, `nama`, `umr`) VALUES
(1, 'MALANG', 2400000),
(2, 'JAKARTA', 3800000),
(3, 'MEDAN', 3200000);

-- --------------------------------------------------------

--
-- Structure for view `gaji_pegawai`
--
DROP TABLE IF EXISTS `gaji_pegawai`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `gaji_pegawai`  AS  select `pegawai`.`nama` AS `nama_pegawai`,`jabatan`.`nama` AS `jabatan`,`penempatan`.`nama` AS `penempatan`,concat('Rp ',format((`jabatan`.`gaji_tambahan` + `penempatan`.`umr`),0)) AS `total_gaji` from ((`pegawai` join `jabatan` on((`pegawai`.`id_jabatan` = `jabatan`.`id`))) join `penempatan` on((`pegawai`.`id_penempatan` = `penempatan`.`id`))) ;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `departemen`
--
ALTER TABLE `departemen`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `jabatan`
--
ALTER TABLE `jabatan`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pegawai`
--
ALTER TABLE `pegawai`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `penempatan`
--
ALTER TABLE `penempatan`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `departemen`
--
ALTER TABLE `departemen`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=100;

--
-- AUTO_INCREMENT for table `jabatan`
--
ALTER TABLE `jabatan`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `pegawai`
--
ALTER TABLE `pegawai`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `penempatan`
--
ALTER TABLE `penempatan`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
