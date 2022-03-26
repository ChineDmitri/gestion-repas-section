-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3308
-- Generation Time: Mar 26, 2022 at 04:41 AM
-- Server version: 8.0.24
-- PHP Version: 7.1.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `declaration-repas`
--

-- --------------------------------------------------------

--
-- Table structure for table `declaration_member`
--

CREATE TABLE `declaration_member` (
  `member_id` bigint UNSIGNED DEFAULT NULL,
  `declaration_num_week` varchar(8) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `lundi_midi` tinyint(1) DEFAULT NULL,
  `lundi_soir` tinyint(1) DEFAULT NULL,
  `mardi_midi` tinyint(1) DEFAULT NULL,
  `mardi_soir` tinyint(1) DEFAULT NULL,
  `mercredi_midi` tinyint(1) DEFAULT NULL,
  `mercredi_soir` tinyint(1) DEFAULT NULL,
  `jeudi_midi` tinyint(1) DEFAULT NULL,
  `jeudi_soir` tinyint(1) DEFAULT NULL,
  `vendredi_midi` tinyint(1) DEFAULT NULL,
  `vendredi_soir` tinyint(1) DEFAULT NULL,
  `samedi_midi` tinyint(1) DEFAULT NULL,
  `samedi_soir` tinyint(1) DEFAULT NULL,
  `dimanche_midi` tinyint(1) DEFAULT NULL,
  `dimanche_soir` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `declaration_week`
--

CREATE TABLE `declaration_week` (
  `num_week` varchar(8) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokent` varchar(256) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `members`
--

CREATE TABLE `members` (
  `id` bigint UNSIGNED NOT NULL,
  `email` varchar(256) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nom` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `test1`
--

CREATE TABLE `test1` (
  `id` bigint UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `test2`
--

CREATE TABLE `test2` (
  `id` bigint NOT NULL,
  `test2_id` bigint DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `declaration_member`
--
ALTER TABLE `declaration_member`
  ADD KEY `member_id` (`member_id`),
  ADD KEY `declaration_num_week` (`declaration_num_week`);

--
-- Indexes for table `declaration_week`
--
ALTER TABLE `declaration_week`
  ADD PRIMARY KEY (`num_week`),
  ADD UNIQUE KEY `num_week` (`num_week`),
  ADD UNIQUE KEY `tokent` (`tokent`);

--
-- Indexes for table `members`
--
ALTER TABLE `members`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `test1`
--
ALTER TABLE `test1`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id` (`id`);

--
-- Indexes for table `test2`
--
ALTER TABLE `test2`
  ADD PRIMARY KEY (`id`),
  ADD KEY `test2_id` (`test2_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `members`
--
ALTER TABLE `members`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `test1`
--
ALTER TABLE `test1`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `declaration_member`
--
ALTER TABLE `declaration_member`
  ADD CONSTRAINT `declaration_member_ibfk_1` FOREIGN KEY (`member_id`) REFERENCES `members` (`id`),
  ADD CONSTRAINT `declaration_member_ibfk_2` FOREIGN KEY (`declaration_num_week`) REFERENCES `declaration_week` (`num_week`);

--
-- Constraints for table `test2`
--
ALTER TABLE `test2`
  ADD CONSTRAINT `test2_ibfk_1` FOREIGN KEY (`test2_id`) REFERENCES `test2` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
