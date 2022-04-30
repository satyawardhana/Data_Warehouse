-- phpMyAdmin SQL Dump
-- version 5.1.3
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Waktu pembuatan: 30 Apr 2022 pada 02.13
-- Versi server: 5.7.33
-- Versi PHP: 7.4.19

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `dw`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `branch`
--

CREATE TABLE `branch` (
  `branch_key` int(11) NOT NULL,
  `branch_name` varchar(45) DEFAULT NULL,
  `branch_type` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `branch`
--

INSERT INTO `branch` (`branch_key`, `branch_name`, `branch_type`) VALUES
(1, 'Dewata', 'Store'),
(2, 'Surya', 'Gudang'),
(3, 'Indra', 'Store'),
(4, 'Cakra', 'Store'),
(5, 'Wisnu', 'Gudang'),
(6, 'Varuna', 'Toko'),
(7, 'Agni', 'Toko'),
(8, 'Rudra', 'Gudang'),
(9, 'Mahaswara', 'Store'),
(10, 'Yoga', 'Store');

-- --------------------------------------------------------

--
-- Struktur dari tabel `fact_sales`
--

CREATE TABLE `fact_sales` (
  `id_fact` int(11) NOT NULL,
  `time_key` int(11) NOT NULL,
  `item_key` int(11) NOT NULL,
  `branch_key` int(11) NOT NULL,
  `location_key` int(11) NOT NULL,
  `units_sold` int(11) DEFAULT NULL,
  `dollars_sold` int(11) DEFAULT NULL,
  `avg_sales` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `fact_sales`
--

INSERT INTO `fact_sales` (`id_fact`, `time_key`, `item_key`, `branch_key`, `location_key`, `units_sold`, `dollars_sold`, `avg_sales`) VALUES
(1, 1, 2, 5, 3, 3, 1000, 4),
(2, 4, 8, 8, 1, 5, 500, 2),
(3, 8, 1, 2, 5, 8, 2000, 7),
(4, 10, 10, 6, 2, 3, 4000, 8),
(5, 3, 4, 10, 5, 8, 2000, 9),
(6, 6, 9, 9, 8, 1, 6000, 6),
(7, 9, 3, 7, 7, 10, 3500, 5),
(8, 7, 7, 3, 6, 7, 2500, 7),
(9, 5, 10, 3, 5, 9, 10000, 7),
(10, 3, 6, 4, 2, 5, 9000, 9);

-- --------------------------------------------------------

--
-- Struktur dari tabel `item`
--

CREATE TABLE `item` (
  `item_key` int(11) NOT NULL,
  `item_name` varchar(45) DEFAULT NULL,
  `brand` varchar(45) DEFAULT NULL,
  `type` varchar(45) DEFAULT NULL,
  `supplier_type` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `item`
--

INSERT INTO `item` (`item_key`, `item_name`, `brand`, `type`, `supplier_type`) VALUES
(1, 'Samsung Xperia Z1', 'Samsung', 'Handphone', 'A1'),
(2, 'Redmi Note 9', 'Xiaomi', 'Handphone', 'A2'),
(3, 'Mito Smartwatch W1', 'Mito', 'Watch', 'B1'),
(4, 'Sharp Mega TV', 'Sharp', 'Televisi', 'C1'),
(5, 'LG AC Sentral', 'LG', 'AC', 'D1'),
(6, 'LG Power Television', 'LG', 'Televisi', 'C2'),
(7, 'Nokia Lumia C2', 'Nokia', 'Handphone', 'A3'),
(8, 'iWatch 5', 'Apple', 'Watch', 'B2'),
(9, 'iPhone 11 Pro', 'Apple', 'Handphone', 'A4'),
(10, 'Polytron TV 14\"', 'Polytron', 'Televisi', 'C3');

-- --------------------------------------------------------

--
-- Struktur dari tabel `location`
--

CREATE TABLE `location` (
  `location_key` int(11) NOT NULL,
  `street` varchar(45) DEFAULT NULL,
  `city` varchar(45) DEFAULT NULL,
  `state_or_province` varchar(45) DEFAULT NULL,
  `country` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `location`
--

INSERT INTO `location` (`location_key`, `street`, `city`, `state_or_province`, `country`) VALUES
(1, 'Jl Garuda', 'Kendari', 'Sultra', 'Indonesia'),
(2, 'Jl Elang', 'Kolaka', 'Sultra', 'Indonesia'),
(3, 'Jl Garuda', 'Denpasar', 'Bali', 'Indonesia'),
(4, 'Jl Gelatik', 'Bone', 'Sulsel', 'Indonesia'),
(5, 'Jl Dara', 'Malang', 'Jatim', 'Indonesia'),
(6, 'Jl Merpati', 'Bandung', 'Jawa Barat', 'Indonesia'),
(7, 'Jl Cendrawasih', 'Manokwari', 'Papua', 'Indonesia'),
(8, 'Jl Perkutut', 'Kupang', 'Nusa Tenggara Timur', 'Indonesia'),
(9, 'Jl Belibis', 'DKI Jakarta', 'Jakarta', 'Indonesia'),
(10, 'Jl Kakatua', 'Buleleng', 'Bali', 'Indonesia');

-- --------------------------------------------------------

--
-- Struktur dari tabel `time`
--

CREATE TABLE `time` (
  `time_key` int(11) NOT NULL,
  `day` varchar(45) DEFAULT NULL,
  `day_of_the_week` varchar(45) DEFAULT NULL,
  `month` varchar(45) DEFAULT NULL,
  `quarter` varchar(45) DEFAULT NULL,
  `year` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `time`
--

INSERT INTO `time` (`time_key`, `day`, `day_of_the_week`, `month`, `quarter`, `year`) VALUES
(1, '6', 'Minggu', 'Maret', 'Q1', '2022'),
(2, '15', 'Jumat', 'April', 'Q2', '2022'),
(3, '2', 'Senin', 'Mei', 'Q2', '2022'),
(4, '23', 'Kamis', 'Juni', 'Q2', '2022'),
(5, '13', 'Rabu', 'Juli', 'Q3', '2022'),
(6, '9', 'Selasa', 'Agustus', 'Q3', '2022'),
(7, '30', 'Jumat', 'September', 'Q3', '2022'),
(8, '25', 'Senin', 'Oktober', 'Q4', '2022'),
(9, '17', 'Kamis', 'November', 'Q4', '2022'),
(10, '18', 'Minggu', 'Desember', 'Q4', '2022');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `branch`
--
ALTER TABLE `branch`
  ADD PRIMARY KEY (`branch_key`);

--
-- Indeks untuk tabel `fact_sales`
--
ALTER TABLE `fact_sales`
  ADD PRIMARY KEY (`id_fact`),
  ADD KEY `fk_fact_sales_item1_idx` (`item_key`),
  ADD KEY `fk_fact_sales_branch1_idx` (`branch_key`),
  ADD KEY `fk_fact_sales_location1_idx` (`location_key`),
  ADD KEY `fk_fact_sales_time` (`time_key`);

--
-- Indeks untuk tabel `item`
--
ALTER TABLE `item`
  ADD PRIMARY KEY (`item_key`);

--
-- Indeks untuk tabel `location`
--
ALTER TABLE `location`
  ADD PRIMARY KEY (`location_key`);

--
-- Indeks untuk tabel `time`
--
ALTER TABLE `time`
  ADD PRIMARY KEY (`time_key`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `fact_sales`
--
ALTER TABLE `fact_sales`
  MODIFY `id_fact` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `fact_sales`
--
ALTER TABLE `fact_sales`
  ADD CONSTRAINT `fk_fact_sales_branch1` FOREIGN KEY (`branch_key`) REFERENCES `branch` (`branch_key`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_fact_sales_item1` FOREIGN KEY (`item_key`) REFERENCES `item` (`item_key`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_fact_sales_location1` FOREIGN KEY (`location_key`) REFERENCES `location` (`location_key`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_fact_sales_time` FOREIGN KEY (`time_key`) REFERENCES `time` (`time_key`) ON DELETE NO ACTION ON UPDATE NO ACTION;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
