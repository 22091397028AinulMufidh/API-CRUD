-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Feb 29, 2024 at 12:05 PM
-- Server version: 10.4.21-MariaDB-log
-- PHP Version: 8.0.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_mhs`
--

-- --------------------------------------------------------

--
-- Table structure for table `mahasiswa`
--

CREATE TABLE `mahasiswa` (
  `id` int(11) NOT NULL,
  `nama` varchar(100) DEFAULT NULL,
  `nim` varchar(20) DEFAULT NULL,
  `jurusan` varchar(50) DEFAULT NULL,
  `semester` int(11) DEFAULT NULL,
  `ipk` decimal(3,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `mahasiswa`
--

INSERT INTO `mahasiswa` (`id`, `nama`, `nim`, `jurusan`, `semester`, `ipk`) VALUES
(1, 'John Doe', '123456789', 'Teknik Informatika', 3, '3.75'),
(2, 'Jane Doe', '987654321', 'Sistem Informasi', 2, '3.50'),
(3, 'Alice Smith', '456789123', 'Teknik Elektro', 4, '3.90'),
(4, 'Bob Johnson', '789123456', 'Manajemen', 5, '3.25'),
(5, 'Michael Brown', '321654987', 'Ekonomi', 2, '3.60'),
(6, 'Emily Davis', '654987321', 'Sastra Inggris', 3, '3.80'),
(7, 'David Wilson', '159753468', 'Teknik Kimia', 4, '3.45'),
(8, 'Jessica Martinez', '852369741', 'Psikologi', 3, '3.70'),
(9, 'Daniel Anderson', '369258147', 'Hukum', 6, '3.20'),
(10, 'Sophia Taylor', '147258369', 'Kedokteran', 5, '3.95'),
(11, 'James Smith', '228916752', 'Teknik Informatika', 6, '3.90');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `mahasiswa`
--
ALTER TABLE `mahasiswa`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `mahasiswa`
--
ALTER TABLE `mahasiswa`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
