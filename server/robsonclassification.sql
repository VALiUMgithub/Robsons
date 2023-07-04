-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 03, 2023 at 12:35 PM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 8.0.13

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `robsonclassification`
--

-- --------------------------------------------------------

--
-- Table structure for table `groups`
--

CREATE TABLE `groups` (
  `id` int(11) NOT NULL,
  `group_name` varchar(255) NOT NULL,
  `created_by` varchar(255) NOT NULL,
  `created_on` datetime NOT NULL,
  `dataId` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `groups`
--

INSERT INTO `groups` (`id`, `group_name`, `created_by`, `created_on`, `dataId`) VALUES
(1, 'group 3', 'consultant', '2023-05-11 23:17:42', 25),
(2, 'group 10', 'consultant', '2023-05-11 23:59:39', 26),
(3, 'group 10', 'consultant', '2023-05-12 00:00:10', 27),
(4, 'group 10', 'consultant', '2023-05-12 00:00:40', 28),
(5, 'group 5', 'consultant', '2023-05-12 00:01:18', 29),
(6, 'group 10', 'consultant', '2023-05-12 15:14:18', 30),
(7, 'group 10', 'consultant', '2023-05-12 15:23:13', 31),
(8, 'group 10', 'consultant', '2023-06-24 11:35:31', 32);

-- --------------------------------------------------------

--
-- Table structure for table `loginauth`
--

CREATE TABLE `loginauth` (
  `user_name` varchar(20) NOT NULL,
  `password` varchar(20) NOT NULL,
  `role` enum('junior_dr','consultant','admin','') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `loginauth`
--

INSERT INTO `loginauth` (`user_name`, `password`, `role`) VALUES
('doctor@7891', 'og@1234', 'consultant'),
('jr@7895', 'og@5678', 'junior_dr');

-- --------------------------------------------------------

--
-- Table structure for table `robosonsdata`
--

CREATE TABLE `robosonsdata` (
  `id` int(11) NOT NULL,
  `obs_index` varchar(20) DEFAULT NULL,
  `weeks` varchar(10) DEFAULT NULL,
  `pog` varchar(10) DEFAULT NULL,
  `single_twins` varchar(10) DEFAULT NULL,
  `previous_cesarean` varchar(10) DEFAULT NULL,
  `present` varchar(10) DEFAULT NULL,
  `Labour` varchar(20) DEFAULT NULL,
  `delivery` varchar(20) DEFAULT NULL,
  `indeovp` varchar(20) DEFAULT NULL,
  `IndeCS` varchar(20) DEFAULT NULL,
  `Stage` varchar(20) DEFAULT NULL,
  `BabyDetails` varchar(20) DEFAULT NULL,
  `date_of_birth` date DEFAULT NULL,
  `time_of_birth` time DEFAULT NULL,
  `weight` varchar(20) DEFAULT NULL,
  `apgar` varchar(20) DEFAULT NULL,
  `outcome` varchar(20) DEFAULT NULL,
  `indication` varchar(20) DEFAULT NULL,
  `final_outcome` varchar(20) DEFAULT NULL,
  `indication_for_induction` varchar(20) DEFAULT NULL,
  `ripening` varchar(20) DEFAULT NULL,
  `group_name` varchar(20) DEFAULT NULL,
  `created_by` enum('consultant','junior_dr') DEFAULT NULL,
  `created_on` datetime DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `robosonsdata`
--

INSERT INTO `robosonsdata` (`id`, `obs_index`, `weeks`, `pog`, `single_twins`, `previous_cesarean`, `present`, `Labour`, `delivery`, `indeovp`, `IndeCS`, `Stage`, `BabyDetails`, `date_of_birth`, `time_of_birth`, `weight`, `apgar`, `outcome`, `indication`, `final_outcome`, `indication_for_induction`, `ripening`, `group_name`, `created_by`, `created_on`) VALUES
(1, 'primi', '35<40', '>36', 'multiple', '2', 'breech', 'pre_labour', 'forceps', 'prof_sec', 'map', 'i_stage', 'male', '2023-05-01', NULL, '2.5-3.5', 'at_1_min', 'nicv', 'low_apgar', 'hieiii', 'prom', 'propess', NULL, 'consultant', '2023-05-08 22:22:24'),
(2, 'primi', '35<40', '>36', 'single', '2', 'vertex_cep', 'spontaneous', 'forceps', 'mat_exha', 'place_pre', 'i_stage', 'female', '2023-05-02', NULL, '2.5-3.5', 'at_1_min', 'nicv', 'low_apgar', 'hieiii', 'fgr', NULL, 'group1', 'consultant', '2023-05-09 00:50:40'),
(3, 'primi', '35<40', '>36', 'single', '2', 'others', 'spontaneous', 'forceps', 'mat_exha', 'place_pre', 'i_stage', 'female', '2023-05-02', NULL, '2.5-3.5', 'at_1_min', 'nicv', 'low_apgar', 'hieiii', 'fgr', NULL, 'group1', 'consultant', '2023-05-09 01:32:18'),
(4, 'primi', '20-35', '<36', 'single', '1', 'breech', 'spontaneous', 'forceps', 'prof_sec', 'mat_ind', 'i_stage', 'male', '2023-05-18', NULL, '1.5-2', 'at_1_min', 'lr', 'preterm', 'expired', 'undefined', NULL, 'group1', 'consultant', '2023-05-10 20:59:50'),
(5, 'primi', '20-35', '<36', 'single', '1', 'breech', 'spontaneous', 'forceps', 'prof_sec', 'mat_ind', 'i_stage', 'male', '2023-05-18', '00:02:00', '1.5-2', 'at_1_min', 'lr', 'preterm', 'expired', NULL, NULL, 'group1', 'consultant', '2023-05-10 21:01:38'),
(6, 'primi', '35<40', '<36', 'single', '2', 'breech', 'spontaneous', 'forceps', 'mat_exha', 'map', 'i_stage', 'male', '2023-05-09', '00:00:00', '2.5-3.5', 'at_1_min', 'lr', 'low_apgar', 'hieiii', NULL, NULL, 'group1', 'consultant', '2023-05-10 22:33:54'),
(7, 'primi', '35<40', '<36', 'single', '2', 'breech', 'spontaneous', 'forceps', 'mat_exha', 'map', 'i_stage', 'male', '2023-05-09', '00:00:00', '2.5-3.5', 'at_1_min', 'lr', 'low_apgar', 'hieiii', NULL, NULL, 'group1', 'consultant', '2023-05-10 22:35:22'),
(8, 'primi', '35<40', '<36', 'single', '2', 'breech', 'spontaneous', 'forceps', 'mat_exha', 'map', 'i_stage', 'male', '2023-05-09', '00:00:00', '2.5-3.5', 'at_1_min', 'lr', 'low_apgar', 'hieiii', NULL, NULL, 'group1', 'consultant', '2023-05-10 22:36:31'),
(9, 'primi', '35<40', '<36', 'single', '2', 'breech', 'spontaneous', 'forceps', 'mat_exha', 'place_pre', 'i_stage', 'male', '2023-05-10', '01:00:00', '2-2.5', 'at_1_min', 'lr', 'preterm', 'hieiii', NULL, NULL, 'group1', 'consultant', '2023-05-10 22:39:24'),
(10, 'primi', '35<40', '<36', 'single', '2', 'breech', 'spontaneous', 'forceps', 'mat_exha', 'place_pre', 'i_stage', 'male', '2023-05-10', '01:00:00', '2-2.5', 'at_1_min', 'lr', 'preterm', 'hieiii', NULL, NULL, 'group1', 'consultant', '2023-05-10 22:41:48'),
(11, 'primi', '35<40', '>36', 'single', '2', 'breech', 'spontaneous', 'forceps', 'prof_sec', 'abruption', 'ii_stage', 'male', '2023-05-24', '00:59:00', '2.5-3.5', 'at_1_min', 'nicv', 'low_apgar', 'm_s', NULL, NULL, 'group1', 'consultant', '2023-05-10 22:48:15'),
(12, 'primi', '35<40', '>36', 'single', '2', 'breech', 'spontaneous', 'forceps', 'prof_sec', 'abruption', 'ii_stage', 'male', '2023-05-24', '00:59:00', '2.5-3.5', 'at_1_min', 'nicv', 'low_apgar', 'm_s', NULL, NULL, 'group1', 'consultant', '2023-05-10 22:48:50'),
(13, 'primi', '35<40', '>36', 'single', '2', 'breech', 'spontaneous', 'forceps', 'prof_sec', 'abruption', 'ii_stage', 'male', '2023-05-24', '00:59:00', '2.5-3.5', 'at_1_min', 'nicv', 'low_apgar', 'm_s', NULL, NULL, 'group1', 'consultant', '2023-05-10 22:52:09'),
(14, 'primi', '35<40', '>36', 'single', '2', 'breech', 'spontaneous', 'forceps', 'prof_sec', 'abruption', 'ii_stage', 'male', '2023-05-24', '00:59:00', '2.5-3.5', 'at_1_min', 'nicv', 'low_apgar', 'm_s', NULL, NULL, 'group1', 'consultant', '2023-05-10 22:54:16'),
(15, 'primi', '35<40', '<36', 'multiple', '2', 'breech', 'spontaneous', 'forceps', 'mat_exha', 'map', 'ii_stage', 'male', '2023-05-17', '00:01:00', '2-2.5', 'at_5_min', 'nicv', 'low_apgar', 'hieiii', 'gdm_dm', NULL, 'group1', 'consultant', '2023-05-10 23:02:44'),
(16, 'primi', '35<40', '<36', 'multiple', '2', 'breech', 'spontaneous', 'forceps', 'mat_exha', 'map', 'ii_stage', 'male', '2023-05-17', '00:01:00', '2-2.5', 'at_5_min', 'nicv', 'low_apgar', 'hieiii', NULL, NULL, 'group1', 'consultant', '2023-05-10 23:10:14'),
(17, 'primi', '35<40', '<36', 'multiple', '2', 'breech', 'spontaneous', 'forceps', 'mat_exha', 'map', 'ii_stage', 'male', '2023-05-17', '00:01:00', '2-2.5', 'at_5_min', 'nicv', 'low_apgar', 'hieiii', NULL, NULL, 'group1', 'consultant', '2023-05-10 23:10:14'),
(18, 'primi', '35<40', '<36', 'multiple', '2', 'breech', 'spontaneous', 'forceps', 'mat_exha', 'map', 'ii_stage', 'male', '2023-05-17', '00:01:00', '2-2.5', 'at_5_min', 'nicv', 'low_apgar', 'hieiii', 'gdm_dm', NULL, 'group1', 'consultant', '2023-05-10 23:10:14'),
(19, 'primi', '35<40', '>36', 'single', '>0', 'vertex_cep', 'spontaneous', 'forceps', 'mat_exha', 'map', 'ii_stage', 'male', '2023-05-17', '00:01:00', '2-2.5', 'at_5_min', 'nicv', 'low_apgar', 'hieiii', 'gdm_dm', 'pge2_gel', 'group 1', 'consultant', '2023-05-11 00:03:46'),
(20, 'multi', '35<40', '>36', 'multiple', '>0', 'vertex_cep', 'induced', 'forceps', 'mat_exha', 'map', 'ii_stage', 'male', '2023-05-17', '00:01:00', '2-2.5', 'at_5_min', 'nicv', 'low_apgar', 'hieiii', NULL, 'pge2_gel', 'group 5', 'consultant', '2023-05-11 00:07:36'),
(21, 'multi', '35<40', '>36', 'multiple', '2', 'vertex_cep', 'induced', 'forceps', 'mat_exha', 'map', 'ii_stage', 'male', '2023-05-17', '00:01:00', '2-2.5', 'at_5_min', 'nicv', 'low_apgar', 'hieiii', NULL, 'pge2_gel', 'group 5', 'consultant', '2023-05-11 00:10:56'),
(22, 'Primi', '20-35', '<36', 'Single', '0', 'Vertex/Cep', 'Spontaneous', 'Vacuum', 'Protracted second st', 'Maternal indication', 'I Stage', 'Male', '2023-05-02', '00:00:00', '1.5-2 kg', 'At 1 min', 'LR', 'Preterm', 'HIE III', 'APH', 'PGE1 gel', 'group 3', 'consultant', '2023-05-11 22:26:06'),
(23, 'Primi', '20-35', '<36', 'Single', '0', 'Vertex/Cep', 'Spontaneous', 'Vacuum', 'Protracted second st', 'Maternal indication', 'I Stage', 'Male', '2023-05-02', '00:00:00', '1.5-2 kg', 'At 1 min', 'LR', 'Preterm', 'HIE III', NULL, 'PGE1 gel', 'group 3', 'consultant', '2023-05-11 23:14:22'),
(24, 'Primi', '20-35', '<36', 'Single', '0', 'Vertex/Cep', 'Spontaneous', 'Vacuum', 'Protracted second st', 'Maternal indication', 'I Stage', 'Male', '2023-05-02', '00:00:00', '1.5-2 kg', 'At 1 min', 'LR', 'Preterm', 'HIE III', NULL, 'PGE1 gel', 'group 3', 'consultant', '2023-05-11 23:16:25'),
(25, 'Primi', '20-35', '<36', 'Single', '0', 'Vertex/Cep', 'Spontaneous', 'Vacuum', 'Protracted second st', 'Maternal indication', 'I Stage', 'Male', '2023-05-02', '00:00:00', '1.5-2 kg', 'At 1 min', 'LR', 'Preterm', 'HIE III', 'GDM/DM', 'PGE1 gel', 'group 3', 'consultant', '2023-05-11 23:17:42'),
(26, 'Primi', '20-35', '<36', 'Single', '1', 'Breech', 'Spontaneous', 'Vacuum', 'Protracted second st', 'Abruptio placentae', 'I Stage', 'Male', '2023-05-09', '19:00:00', '1-1.5 kg', 'At 1 min', 'M/S', 'Low APGAR', 'HIE III', 'IUFD', 'PGE2 gel', 'group 10', 'consultant', '2023-05-11 23:59:39'),
(27, 'Primi', '20-35', '<36', 'Single', '1', 'Breech', 'Spontaneous', 'Forceps', 'Protracted second st', 'Abruptio placentae', 'I Stage', 'Male', '2023-05-09', '19:00:00', '1-1.5 kg', 'At 1 min', 'M/S', 'Low APGAR', 'HIE III', 'IUFD', 'Propess', 'group 10', 'consultant', '2023-05-12 00:00:10'),
(28, 'Multi', '20-35', '<36', 'Multiple', '1', 'Breech', 'Spontaneous', 'Forceps', 'Protracted second st', 'Abruptio placentae', 'I Stage', 'Male', '2023-05-09', '19:00:00', '1-1.5 kg', 'At 1 min', 'M/S', 'Low APGAR', 'HIE III', 'IUFD', 'Propess', 'group 10', 'consultant', '2023-05-12 00:00:40'),
(29, 'Multi', '35<40', '>36', 'Single', '2', 'Breech', 'Induced', 'Forceps', 'Protracted second st', 'Abruptio placentae', 'I Stage', 'Male', '2023-05-09', '19:00:00', '1-1.5 kg', 'At 1 min', 'M/S', 'Low APGAR', 'HIE III', 'IUFD', 'Propess', 'group 5', 'consultant', '2023-05-12 00:01:18'),
(30, 'Primi', '35<40', '<36', 'Single', '2', 'Vertex/Cep', 'Pre Labour', 'CS', 'Protracted second st', 'Doubtful scar', 'I Stage', 'Male', '2023-05-12', '01:00:00', '1.5-2 kg', 'At 1 min', 'LR', 'Low APGAR', 'LAMA', 'undefined', 'Propess', 'group 10', 'consultant', '2023-05-12 15:14:17'),
(31, 'Primi', '20-35', '<36', 'Single', '2', 'Vertex/Cep', 'Spontaneous', 'Vacuum', 'Protracted second st', 'Maternal indication', 'I Stage', 'Male', '2023-05-11', '05:00:00', '3.5-4 kg', 'At 1 min', 'LR', 'Low APGAR', 'HIE I', NULL, NULL, 'group 10', 'consultant', '2023-05-12 15:23:13'),
(32, 'Primi', '35<40', '<36', 'Single', '1', 'Breech', 'Spontaneous', 'Vacuum', 'Protracted second st', 'Rupture uterus', 'I Stage', 'Male', '2023-06-06', '04:00:00', '1.5-2 kg', 'At 1 min', 'NICV', 'Low APGAR', 'Expired', NULL, 'EASI', 'group 10', 'consultant', '2023-06-24 11:35:31');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `groups`
--
ALTER TABLE `groups`
  ADD PRIMARY KEY (`id`),
  ADD KEY `dataId` (`dataId`);

--
-- Indexes for table `loginauth`
--
ALTER TABLE `loginauth`
  ADD PRIMARY KEY (`user_name`);

--
-- Indexes for table `robosonsdata`
--
ALTER TABLE `robosonsdata`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `groups`
--
ALTER TABLE `groups`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `robosonsdata`
--
ALTER TABLE `robosonsdata`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `groups`
--
ALTER TABLE `groups`
  ADD CONSTRAINT `groups_ibfk_1` FOREIGN KEY (`dataId`) REFERENCES `robosonsdata` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
