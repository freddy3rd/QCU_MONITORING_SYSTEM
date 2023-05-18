-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: May 15, 2023 at 01:59 AM
-- Server version: 10.5.19-MariaDB-cll-lve
-- PHP Version: 7.2.34

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `u627028227_QCU_AMS`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `username` varchar(30) NOT NULL,
  `password` varchar(60) NOT NULL,
  `firstname` varchar(50) NOT NULL,
  `lastname` varchar(50) NOT NULL,
  `photo` varchar(200) NOT NULL,
  `created_on` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `username`, `password`, `firstname`, `lastname`, `photo`, `created_on`) VALUES
(1, 'beni', '$2y$10$n44qKkas1BkXO7DD3pgd6.IAfWJ//ExaYTCP7mTpSvhU28uBN8.AO', 'ADMIN ', 'Benipayo', 'profi.jpg', '2018-04-30');

-- --------------------------------------------------------

--
-- Table structure for table `announcement`
--

CREATE TABLE `announcement` (
  `id` int(11) NOT NULL,
  `userID` int(11) DEFAULT NULL,
  `announcementID` varchar(255) DEFAULT NULL,
  `announcement_to` varchar(50) DEFAULT NULL,
  `accesskey` varchar(255) DEFAULT NULL,
  `sender` varchar(255) DEFAULT NULL,
  `receiver` int(11) DEFAULT NULL,
  `departmentID` int(11) DEFAULT NULL,
  `courseID` int(11) DEFAULT NULL,
  `subject` varchar(255) DEFAULT NULL,
  `announcement_description` varchar(255) DEFAULT NULL,
  `announcement_status` int(11) DEFAULT NULL,
  `attachment` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `announcement`
--

INSERT INTO `announcement` (`id`, `userID`, `announcementID`, `announcement_to`, `accesskey`, `sender`, `receiver`, `departmentID`, `courseID`, `subject`, `announcement_description`, `announcement_status`, `attachment`, `created_at`, `updated_at`) VALUES
(1, 3, 'ANN-20230000001', 'Program Head', '0UGMTp5B9BY5jJrspMW7R0SYksrlhQPMalan0EFJqQmQ0Bwp8dFbqtgkGgzc', 'Jade Olosoro', 2, 0, NULL, 'Capstone', 'galaw galaw mga peeps', 2, '1681697987-5xJ.jpg', '2023-04-17 10:19:47', '2023-04-17 10:20:58'),
(2, 2, 'ANN-20230000002', 'Secretary', '32He20LlSGPvf91Ha7UahqbhGnfsj6Kg2qNUj2LNy5nazrmVGOXbB7z1wAlI', 'Edward Pornelos', 5, 0, NULL, 'Swimming tayo guys', 'KYU SI YU !!!!', 2, '1683572094-mgT.jpg', '2023-05-09 02:54:54', '2023-05-09 16:10:16'),
(3, 5, 'ANN-20230000003', 'Faculty', 'c67BzOBBhGtMf6dpR4M9pt0UcGoIjpuAGvfSgyW8BYxxKZxL6M0k9qm0IHiG', 'Anjo Panganiban', 91, 0, NULL, 'Swimming tayo guys', 'I love my self!!!', NULL, '1683572348-rUg.jpg', '2023-05-09 02:59:08', '2023-05-09 02:59:08'),
(4, 5, 'ANN-20230000004', 'Faculty', 'a83fPYg0qk0WXhueiadfdVhZw5k7hc9vwFhzIvfhvXNQume5olwWID55rz0w', 'Anjo Panganiban', 75, 0, NULL, 'Practicum102', 'Tulog na', NULL, '1683633657-oDs.doc', '2023-05-09 20:00:57', '2023-05-09 20:00:57'),
(5, 5, 'ANN-20230000005', 'Faculty', 'DLpt4C9BmibfuvBuArplWkultMCmb4T7XQ0ojfw0d5v2XKmBdvbmMLanGXO2', 'Anjo Panganiban', 68, 0, NULL, 'SAM102', 'Gusto kuna umuwi', NULL, '1683633774-GD0.doc', '2023-05-09 20:02:54', '2023-05-09 20:02:54'),
(6, 5, 'ANN-20230000006', 'Faculty', 'en2q28YFp8EC6zgf7QEjKug999LtgswzwxBQY6D2oL4rzYEoPbWix0LXvmJ4', 'Anjo Panganiban', 75, 0, NULL, 'SAM102', 'Gusto kuna umuwi', NULL, '1683633774-GD0.doc', '2023-05-09 20:02:56', '2023-05-09 20:02:56'),
(7, 5, 'ANN-20230000007', 'Faculty', 'LFwRI6YvToHXaIajConF9pas0txFU88783cImYsCwv6FWSnDZ7djvP5Jv1Iu', 'Anjo Panganiban', 77, 0, NULL, 'SAM102', 'Gusto kuna umuwi', NULL, '1683633774-GD0.doc', '2023-05-09 20:02:59', '2023-05-09 20:02:59'),
(8, 5, 'ANN-20230000008', 'Faculty', 'YzPVc2gxFXyTJvXG3596jq2Py4cvmroaDyPYkliPIMaU9VCCTuMLpYhgOd3R', 'Anjo Panganiban', 80, 0, NULL, 'SAM102', 'Gusto kuna umuwi', NULL, '1683633774-GD0.doc', '2023-05-09 20:03:01', '2023-05-09 20:03:01'),
(9, 5, 'ANN-20230000009', 'Faculty', 'm27fGP4MDGgpDX6RHdqtYwumLWnmQnF0mmnXKFpyVlFdD4arrEJG5ASviCME', 'Anjo Panganiban', 85, 0, NULL, 'SAM102', 'Gusto kuna umuwi', NULL, '1683633774-GD0.doc', '2023-05-09 20:03:04', '2023-05-09 20:03:04'),
(10, 5, 'ANN-20230000010', 'Faculty', 'O2lwKhAa94cuoBaOpky8Opsw886LBcUXMaW82Q52kUa8S2Eq969OYD349QUU', 'Anjo Panganiban', 86, 0, NULL, 'SAM102', 'Gusto kuna umuwi', NULL, '1683633774-GD0.doc', '2023-05-09 20:03:06', '2023-05-09 20:03:06'),
(11, 5, 'ANN-20230000011', 'Faculty', 'swWHftchNa9Vdrcj0m6eQJRyWAIDDjL9UWjbnPj1DYaqiA4vZktSN03ENzDh', 'Anjo Panganiban', 87, 0, NULL, 'SAM102', 'Gusto kuna umuwi', NULL, '1683633774-GD0.doc', '2023-05-09 20:03:08', '2023-05-09 20:03:08'),
(12, 5, 'ANN-20230000012', 'Faculty', 'u7DYfIUaHit7nLOIFbvpXSlU5Y1vNtOL4hyRO8wvgnp8jgZZSSjwezODiF1e', 'Anjo Panganiban', 89, 0, NULL, 'SAM102', 'Gusto kuna umuwi', NULL, '1683633774-GD0.doc', '2023-05-09 20:03:10', '2023-05-09 20:03:10'),
(13, 5, 'ANN-20230000013', 'Faculty', 'bpenA4xe1llhGFSLFkYpkh8iDP6jQHiPCp2bJnqf5NUvvHIsThyP13HUt7eU', 'Anjo Panganiban', 90, 0, NULL, 'SAM102', 'Gusto kuna umuwi', NULL, '1683633774-GD0.doc', '2023-05-09 20:03:13', '2023-05-09 20:03:13'),
(14, 5, 'ANN-20230000014', 'Faculty', '4vn9bFve3dwToGJI96R6wDiiCIKGZ3rWJIUQdPnBgcOb9kIBvrY9L5aAFey4', 'Anjo Panganiban', 91, 0, NULL, 'SAM102', 'Gusto kuna umuwi', NULL, '1683633774-GD0.doc', '2023-05-09 20:03:15', '2023-05-09 20:03:15'),
(15, 5, 'ANN-20230000015', 'Faculty', 'CikO9ZlzmILbbsRnWI7kCGx9rdUgNHGLoGXtohfEmyNtWK6KMxXLENjIRXRh', 'Anjo Panganiban', 94, 0, NULL, 'SAM102', 'Gusto kuna umuwi', NULL, '1683633774-GD0.doc', '2023-05-09 20:03:17', '2023-05-09 20:03:17'),
(16, 5, 'ANN-20230000016', 'Faculty', 'YVc66DkujNIbTDGht2tU8BF7Fo8AvcOh2lBtZEy9Iust33euVAeP3ZMOnbzZ', 'Anjo Panganiban', 95, 0, NULL, 'SAM102', 'Gusto kuna umuwi', NULL, '1683633774-GD0.doc', '2023-05-09 20:03:19', '2023-05-09 20:03:19');

-- --------------------------------------------------------

--
-- Table structure for table `attendance`
--

CREATE TABLE `attendance` (
  `id` int(11) NOT NULL,
  `facultyID` varchar(255) NOT NULL,
  `date` date NOT NULL,
  `time_in` time NOT NULL,
  `status` int(11) NOT NULL,
  `time_out` time NOT NULL,
  `subjectID` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `attendance`
--

INSERT INTO `attendance` (`id`, `facultyID`, `date`, `time_in`, `status`, `time_out`, `subjectID`) VALUES
(51, 'FAC-000000002', '2023-04-15', '08:58:43', 0, '09:00:27', NULL),
(52, 'FAC-000000002', '2023-04-15', '09:00:38', 0, '14:36:10', NULL),
(53, 'FAC-000000002', '2023-04-15', '14:36:14', 0, '15:18:32', NULL),
(54, 'FAC-000000002', '2023-04-15', '15:18:41', 0, '11:51:33', NULL),
(94, 'FAC-000000009', '2023-04-26', '21:40:00', 0, '21:40:00', 14),
(95, 'FAC-000000009', '2023-04-26', '21:45:00', 0, '21:45:00', 14),
(96, 'FAC-000000009', '2023-04-26', '08:00:00', 0, '08:00:00', 14),
(97, 'FAC-000000009', '2023-04-26', '22:51:14', 0, '22:51:27', 14),
(98, 'FAC-000000010', '2023-04-27', '15:53:22', 0, '15:54:24', 14),
(99, 'FAC-000000010', '2023-04-27', '15:57:59', 0, '15:58:42', 14),
(100, 'FAC-000000010', '2023-04-28', '04:22:41', 0, '04:23:02', 14),
(101, 'FAC-000000010', '2023-04-28', '04:23:09', 0, '04:23:33', 14),
(102, 'FAC-000000010', '2023-04-28', '04:23:49', 0, '04:24:22', 14),
(103, 'FAC-000000010', '2023-04-28', '04:25:46', 0, '04:25:54', 14),
(104, 'FAC-000000010', '2023-04-28', '04:30:17', 0, '04:30:25', 14),
(105, 'FAC-000000010', '2023-04-28', '04:34:35', 0, '04:34:42', 14),
(106, 'FAC-000000010', '2023-04-28', '04:35:49', 0, '04:35:54', 14),
(107, 'FAC-000000010', '2023-04-28', '04:45:31', 0, '04:45:36', 14),
(108, 'FAC-000000010', '2023-04-28', '04:46:37', 0, '04:46:45', 14),
(109, 'FAC-000000010', '2023-04-28', '04:47:18', 0, '04:47:22', 14),
(110, 'FAC-000000010', '2023-04-28', '04:47:59', 0, '04:48:04', 14),
(111, 'FAC-000000010', '2023-04-28', '04:49:50', 0, '04:49:53', 14),
(112, 'FAC-000000010', '2023-04-28', '04:58:45', 0, '04:58:51', 14),
(113, 'FAC-000000010', '2023-04-28', '09:21:35', 0, '09:21:40', 14),
(120, 'FAC-000000002', '2023-04-29', '01:42:29', 0, '01:42:34', 21),
(121, 'FAC-000000002', '2023-04-29', '01:42:37', 0, '01:42:43', 21),
(122, 'FAC-000000002', '2023-04-29', '04:44:49', 0, '04:57:52', 21),
(125, 'FAC-000000011', '2023-04-29', '01:47:37', 0, '01:48:08', 14),
(126, 'FAC-000000002', '2023-04-30', '01:36:18', 0, '01:36:29', 21),
(127, 'FAC-000000002', '2023-04-30', '02:50:21', 0, '02:50:25', 21),
(128, 'FAC-000000002', '2023-04-30', '02:52:22', 0, '02:52:26', 21),
(129, 'FAC-000000002', '2023-04-30', '02:54:18', 0, '02:54:22', 21),
(130, 'FAC-000000002', '2023-04-30', '02:57:19', 0, '02:57:22', 21),
(131, 'FAC-000000002', '2023-04-30', '03:00:37', 0, '03:01:14', 21),
(132, 'FAC-000000002', '2023-04-30', '03:01:20', 0, '03:01:55', 21),
(133, 'FAC-000000002', '2023-04-30', '11:19:27', 0, '11:19:32', 21),
(134, 'FAC-000000002', '2023-04-30', '11:22:04', 0, '11:22:08', 21),
(135, 'FAC-000000002', '2023-04-30', '11:26:11', 0, '11:26:44', 21),
(145, 'FAC-000000002', '2023-05-01', '14:10:14', 0, '14:10:18', 14),
(146, 'FAC-000000002', '2023-05-01', '14:10:24', 0, '14:10:29', 14),
(149, 'FAC-000000011', '2023-05-01', '17:03:00', 0, '17:03:52', 14),
(150, 'FAC-000000011', '2023-05-01', '18:40:00', 0, '17:04:41', 14),
(152, 'FAC-000000014', '2023-05-02', '20:48:07', 0, '20:48:11', 21),
(153, 'FAC-000000014', '2023-05-02', '20:48:15', 0, '20:48:18', 21),
(154, 'FAC-000000017', '2023-05-03', '16:29:58', 0, '16:47:44', 14),
(155, 'FAC-000000014', '2023-05-03', '16:59:53', 1, '00:00:00', 14),
(156, 'FAC-000000002', '2023-05-07', '21:10:52', 0, '21:11:38', 21),
(157, 'FAC-000000002', '2023-05-09', '17:20:02', 0, '17:22:32', 21),
(160, 'FAC-000000026', '2023-05-09', '18:23:52', 0, '18:26:39', 4),
(161, 'FAC-000000026', '2023-05-09', '18:26:48', 0, '18:28:00', 4),
(163, 'FAC-000000026', '2023-05-10', '10:28:18', 0, '10:47:00', 4);

-- --------------------------------------------------------

--
-- Table structure for table `attendance_attachments`
--

CREATE TABLE `attendance_attachments` (
  `id` int(11) NOT NULL,
  `attendanceID` int(11) DEFAULT NULL,
  `facultyID` varchar(255) DEFAULT NULL,
  `attachment` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `is_archive` int(11) DEFAULT 0,
  `subjectID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `attendance_attachments`
--

INSERT INTO `attendance_attachments` (`id`, `attendanceID`, `facultyID`, `attachment`, `created_at`, `updated_at`, `is_archive`, `subjectID`) VALUES
(65, 51, 'FAC-000000002', '2023.04.15 - 04.58.48pm .jpeg', NULL, NULL, 0, 0),
(66, 51, 'FAC-000000002', '2023.04.15 - 05.00.52pm .jpeg', NULL, NULL, 0, 0),
(67, 51, 'FAC-000000002', '2023.04.15 - 10.36.15pm .jpeg', NULL, NULL, 0, 0),
(68, 51, 'FAC-000000002', '2023.04.15 - 11.18.37pm .jpeg', NULL, NULL, 0, 0),
(69, 51, 'FAC-000000002', '2023.04.15 - 11.18.43pm .jpeg', NULL, NULL, 0, 0),
(132, 94, 'FAC-000000009', '2023.04.26 - 09.43.57pm.jpeg', NULL, NULL, 0, 0),
(133, 94, 'FAC-000000009', '2023.04.26 - 09.44.22pm.jpeg', NULL, NULL, 0, 0),
(134, 94, 'FAC-000000009', '2023.04.26 - 09.44.40pm.jpeg', NULL, NULL, 0, 0),
(135, 95, 'FAC-000000009', '2023.04.26 - 09.45.15pm.jpeg', NULL, NULL, 0, 0),
(136, 95, 'FAC-000000009', '2023.04.26 - 09.45.47pm.jpeg', NULL, NULL, 0, 0),
(137, 95, 'FAC-000000009', '2023.04.26 - 09.45.55pm.jpeg', NULL, NULL, 0, 0),
(138, 98, 'FAC-000000010', '2023.04.27 - 03.53.33pm.jpeg', NULL, NULL, 0, 0),
(139, 98, 'FAC-000000010', '2023.04.27 - 03.54.27pm.jpeg', NULL, NULL, 0, 0),
(140, 99, 'FAC-000000010', '2023.04.27 - 03.58.04pm.jpeg', NULL, NULL, 0, 0),
(141, 99, 'FAC-000000010', '2023.04.27 - 03.58.31pm.jpeg', NULL, NULL, 0, 0),
(142, 99, 'FAC-000000010', '2023.04.27 - 03.58.45pm.jpeg', NULL, '2023-04-27 16:21:31', 0, 0),
(155, 106, 'FAC-000000010', '2023.04.28 - 04.35.50am.jpeg', NULL, NULL, 0, 0),
(156, 106, 'FAC-000000010', '2023.04.28 - 04.35.55am.jpeg', NULL, NULL, 0, 0),
(161, 112, 'FAC-000000010', '2023.04.28 - 04.58.46am.jpeg', NULL, NULL, 0, 0),
(162, 112, 'FAC-000000010', '2023.04.28 - 04.58.52am.jpeg', NULL, NULL, 0, 0),
(163, 113, 'FAC-000000010', '2023.04.28 - 09.21.37am.jpeg', NULL, NULL, 0, 0),
(164, 114, 'FAC-000000002', '2023.04.28 - 11.59.39pm.jpeg', NULL, NULL, 0, 0),
(165, 114, 'FAC-000000002', '2023.04.29 - 12.00.46am.jpeg', NULL, NULL, 0, 0),
(166, 115, 'FAC-000000002', '2023.04.29 - 12.01.17am.jpeg', NULL, NULL, 0, 0),
(167, 115, 'FAC-000000002', '2023.04.29 - 12.01.23am.jpeg', NULL, NULL, 0, 0),
(168, 116, 'FAC-000000002', '2023.04.29 - 12.06.41am.jpeg', NULL, NULL, 0, 0),
(169, 116, 'FAC-000000002', '2023.04.29 - 12.06.48am.jpeg', NULL, NULL, 0, 0),
(170, 117, 'FAC-000000002', '2023.04.29 - 12.20.10am.jpeg', NULL, NULL, 0, 0),
(171, 117, 'FAC-000000002', '2023.04.29 - 12.20.17am.jpeg', NULL, NULL, 0, 0),
(172, 118, 'FAC-000000002', '2023.04.29 - 12.20.28am.jpeg', NULL, NULL, 0, 0),
(173, 118, 'FAC-000000002', '2023.04.29 - 12.20.32am.jpeg', NULL, NULL, 0, 0),
(174, 119, 'FAC-000000002', '2023.04.29 - 01.07.45am.jpeg', NULL, NULL, 0, 0),
(175, 120, 'FAC-000000002', '2023.04.29 - 01.42.30am.jpeg', NULL, NULL, 0, 0),
(176, 120, 'FAC-000000002', '2023.04.29 - 01.42.35am.jpeg', NULL, NULL, 0, 0),
(177, 121, 'FAC-000000002', '2023.04.29 - 01.42.41am.jpeg', NULL, NULL, 0, 0),
(178, 121, 'FAC-000000002', '2023.04.29 - 01.42.44am.jpeg', NULL, NULL, 0, 0),
(179, 122, 'FAC-000000002', '2023.04.29 - 04.56.02am.jpeg', NULL, NULL, 0, 0),
(180, 122, 'FAC-000000002', '2023.04.29 - 04.59.19am.jpeg', NULL, NULL, 0, 0),
(187, 125, 'FAC-000000011', '2023.04.29 - 01.47.42pm.jpeg', NULL, NULL, 0, 0),
(188, 125, 'FAC-000000011', '2023.04.29 - 01.48.01pm.jpeg', NULL, NULL, 0, 0),
(189, 125, 'FAC-000000011', '2023.04.29 - 01.48.14pm.jpeg', NULL, NULL, 0, 0),
(190, 126, 'FAC-000000002', '644dfe57e8996.jpeg', NULL, NULL, 0, 0),
(191, 126, 'FAC-000000002', '644dfe5e60788.jpeg', NULL, NULL, 0, 0),
(192, 127, 'FAC-000000002', '2023.04.30 - 02.50.22pm.jpeg', NULL, NULL, 0, 0),
(193, 127, 'FAC-000000002', '2023.04.30 - 02.50.25pm.jpeg', NULL, NULL, 0, 0),
(194, 128, 'FAC-000000002', '644e10273e34e.jpeg', NULL, NULL, 0, 0),
(195, 128, 'FAC-000000002', '644e102ab6d5b.jpeg', NULL, NULL, 0, 0),
(196, 129, 'FAC-000000002', '644e109b7e60d.jpeg', NULL, NULL, 0, 0),
(197, 129, 'FAC-000000002', '644e109f23e69.jpeg', NULL, NULL, 0, 0),
(198, 130, 'FAC-000000002', '2023.04.30 - 02.57.19pm.jpeg', NULL, NULL, 0, 0),
(199, 130, 'FAC-000000002', '2023.04.30 - 02.57.22pm.jpeg', NULL, NULL, 0, 0),
(200, 131, 'FAC-000000002', '2023.04.30 - 03.00.40pm.jpeg', NULL, NULL, 0, 0),
(201, 131, 'FAC-000000002', '2023.04.30 - 03.01.02pm.jpeg', NULL, NULL, 0, 0),
(202, 131, 'FAC-000000002', '2023.04.30 - 03.01.16pm.jpeg', NULL, NULL, 0, 0),
(203, 132, 'FAC-000000002', '2023.04.30 - 03.01.22pm.jpeg', NULL, NULL, 0, 0),
(204, 132, 'FAC-000000002', '2023.04.30 - 03.01.47pm.jpeg', NULL, NULL, 0, 0),
(205, 132, 'FAC-000000002', '2023.04.30 - 03.01.57pm.jpeg', NULL, NULL, 0, 0),
(206, 134, 'FAC-000000002', '644e879d78b04 .jpeg', NULL, NULL, 0, 0),
(207, 134, 'FAC-000000002', '644e87a1cd0c1 .jpeg', NULL, NULL, 0, 0),
(208, 135, 'FAC-000000002', '644e8896b202f .jpeg', NULL, NULL, 0, 0),
(209, 135, 'FAC-000000002', '644e88b0124b2 .jpeg', NULL, NULL, 0, 0),
(210, 135, 'FAC-000000002', '644e88b6d1e41 .jpeg', NULL, NULL, 0, 0),
(211, 137, 'FAC-000000002', '644f52a4789e5 .jpeg', NULL, NULL, 0, 0),
(212, 137, 'FAC-000000002', '644f52a7a1006 .jpeg', NULL, NULL, 0, 0),
(213, 138, 'FAC-000000002', '644f52aca2525 .jpeg', NULL, NULL, 0, 0),
(214, 138, 'FAC-000000002', '644f52b0374a0 .jpeg', NULL, NULL, 0, 0),
(223, 143, 'FAC-000000002', '644f55dedd261 .jpeg', NULL, NULL, 0, 0),
(224, 143, 'FAC-000000002', '644f55e247d93 .jpeg', NULL, NULL, 0, 0),
(225, 144, 'FAC-000000002', '644f55ed98e4e .jpeg', NULL, NULL, 0, 0),
(226, 144, 'FAC-000000002', '644f55f122a1e .jpeg', NULL, NULL, 0, 0),
(227, 145, 'FAC-000000002', '644f57c785aee .jpeg', NULL, NULL, 0, 0),
(228, 145, 'FAC-000000002', '644f57cb6a4d8 .jpeg', NULL, NULL, 0, 0),
(229, 146, 'FAC-000000002', '644f57d1b9750 .jpeg', NULL, NULL, 0, 0),
(230, 146, 'FAC-000000002', '644f57d688f26 .jpeg', NULL, NULL, 0, 0),
(237, 149, 'FAC-000000011', '644f8054cc21c .jpeg', NULL, NULL, 0, 0),
(238, 149, 'FAC-000000011', '644f807181148 .jpeg', NULL, NULL, 0, 0),
(239, 149, 'FAC-000000011', '644f807ba1cf3 .jpeg', NULL, NULL, 0, 0),
(240, 150, 'FAC-000000011', '644f8087a0ab3 .jpeg', NULL, NULL, 0, 0),
(241, 150, 'FAC-000000011', '644f809cf1744 .jpeg', NULL, NULL, 0, 0),
(242, 150, 'FAC-000000011', '644f80acc68f6 .jpeg', NULL, NULL, 0, 0),
(243, 152, 'FAC-000000014', '64510688f1f4b .jpeg', NULL, NULL, 0, 0),
(244, 152, 'FAC-000000014', '6451068cd51cd .jpeg', NULL, NULL, 0, 0),
(245, 153, 'FAC-000000014', '6451068fcb335 .jpeg', NULL, NULL, 0, 0),
(246, 153, 'FAC-000000014', '645106934ed03 .jpeg', NULL, NULL, 0, 0),
(247, 154, 'FAC-000000017', '64521b9270a0e .jpeg', NULL, NULL, 0, 0),
(248, 154, 'FAC-000000017', '64521d6152c51 .jpeg', NULL, NULL, 0, 0),
(249, 154, 'FAC-000000017', '64521fb51831e .jpeg', NULL, NULL, 0, 0),
(250, 155, 'FAC-000000014', '64522298de6c5 .jpeg', NULL, NULL, 0, 0),
(251, 156, 'FAC-000000002', '6457a36149f54 .jpeg', NULL, NULL, 0, 0),
(252, 156, 'FAC-000000002', '6457a3798934e .jpeg', NULL, NULL, 0, 0),
(253, 156, 'FAC-000000002', '6457a38f1d677 .jpeg', NULL, NULL, 0, 0),
(258, 160, 'FAC-000000026', '645a1fe24e894.jpeg', NULL, NULL, 0, 0),
(259, 161, 'FAC-000000026', '645a1fece9cb9.jpeg', NULL, NULL, 0, 0),
(260, 161, 'FAC-000000026', '645a200883c27.jpeg', NULL, NULL, 0, 0),
(261, 161, 'FAC-000000026', '645a2035bb447.jpeg', NULL, NULL, 0, 0),
(262, 163, 'FAC-000000026', '645b05794fcd0.jpeg', NULL, NULL, 0, 0),
(263, 163, 'FAC-000000026', '645b059515039.jpeg', NULL, NULL, 0, 0),
(264, 163, 'FAC-000000026', '645b05a86fb04.jpeg', NULL, NULL, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `chairman`
--

CREATE TABLE `chairman` (
  `id` int(11) NOT NULL,
  `chID` varchar(255) DEFAULT NULL,
  `empID` varchar(255) DEFAULT NULL,
  `userID` int(11) DEFAULT NULL,
  `departmentID` int(11) DEFAULT NULL,
  `ch_firstname` varchar(255) DEFAULT NULL,
  `ch_middlename` varchar(255) DEFAULT NULL,
  `ch_lastname` varchar(255) DEFAULT NULL,
  `ch_email` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `signature` varchar(255) DEFAULT 'signature.png'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `chairman`
--

INSERT INTO `chairman` (`id`, `chID`, `empID`, `userID`, `departmentID`, `ch_firstname`, `ch_middlename`, `ch_lastname`, `ch_email`, `created_at`, `updated_at`, `signature`) VALUES
(1, 'CH-20230000001', NULL, 60, 0, 'Chirstina', 'M', 'Josol', 'christina.m.josol@gmail.com', '2023-02-19 02:26:48', '2023-02-19 02:26:48', 'signature.png'),
(2, 'CH-20230000002', NULL, 100, 1, 'SamplePCEng', 'SamplePCEng', 'SamplePCEng', 'SamplePCEng@gmail.com', '2023-05-10 08:02:07', '2023-05-10 08:02:07', 'signature.png'),
(3, 'CH-20230000003', NULL, 102, 2, 'SamplePCBA', 'SamplePCBA', 'SamplePCBA', 'SamplePCBA@gmail.com', '2023-05-10 08:03:45', '2023-05-10 08:03:45', 'signature.png'),
(4, 'CH-20230000004', NULL, 104, 3, 'SamplePCEDU', 'SamplePCEDU', 'SamplePCEDU', 'SamplePCEDU@gmail.com', '2023-05-10 08:05:00', '2023-05-10 08:05:00', 'signature.png');

-- --------------------------------------------------------

--
-- Table structure for table `ch_faculty_reports`
--

CREATE TABLE `ch_faculty_reports` (
  `id` int(11) NOT NULL,
  `chID` varchar(255) DEFAULT NULL,
  `userID` int(11) DEFAULT NULL,
  `grouped_reportsID` int(11) DEFAULT NULL,
  `facultyID` varchar(255) DEFAULT NULL,
  `groupTokenID` varchar(45) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `ch_faculty_reports`
--

INSERT INTO `ch_faculty_reports` (`id`, `chID`, `userID`, `grouped_reportsID`, `facultyID`, `groupTokenID`, `created_at`, `updated_at`) VALUES
(1, 'CH-20230000001', 60, 1, 'FAC-000000002', 'tZLx', '2023-04-13 06:34:16', '2023-04-13 06:34:16'),
(2, 'CH-20230000001', 60, 2, 'FAC-000000002', 'tZLx', '2023-04-13 06:34:16', '2023-04-13 06:34:16'),
(3, 'CH-20230000001', 60, 6, 'FAC-000000009', 'B8Je', '2023-04-26 21:56:28', '2023-04-26 21:56:28'),
(4, 'CH-20230000001', 60, 8, 'FAC-000000011', 'AOFY', '2023-04-29 14:03:09', '2023-04-29 14:03:09'),
(5, 'CH-20230000001', 60, 9, 'FAC-000000017', 'ERW7', '2023-05-03 16:55:11', '2023-05-03 16:55:11');

-- --------------------------------------------------------

--
-- Table structure for table `compiled_report`
--

CREATE TABLE `compiled_report` (
  `id` int(11) NOT NULL,
  `userID` int(11) DEFAULT NULL,
  `groupTokenID` varchar(45) DEFAULT NULL,
  `report` varchar(10000) DEFAULT NULL,
  `type` int(11) DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `compiled_report`
--

INSERT INTO `compiled_report` (`id`, `userID`, `groupTokenID`, `report`, `type`, `created_at`, `updated_at`) VALUES
(1, 5, 'tZLx', '<ul><li>Goods naman po yung gawa nya walang kulang</li></ul>', 0, '2023-04-13 06:34:16', '2023-04-13 06:34:16'),
(2, 2, 'tZLx', '<ul class=\"todo-list\"><li><label class=\"todo-list__label\"><input type=\"checkbox\" disabled=\"disabled\" checked=\"checked\"><span class=\"todo-list__label__description\">Checked by Dean</span></label></li></ul>', 1, '2023-04-13 06:48:17', '2023-04-13 06:48:17'),
(3, 5, 'B8Je', '<ul><li>All Goods</li></ul>', 0, '2023-04-26 21:56:28', '2023-04-26 21:56:28'),
(4, 2, 'B8Je', '<ul><li>well done</li></ul>', 1, '2023-04-26 21:58:38', '2023-04-26 21:58:38'),
(5, 5, 'AOFY', NULL, 0, '2023-04-29 14:03:09', '2023-04-29 14:03:09'),
(6, 2, 'AOFY', NULL, 1, '2023-04-29 14:05:07', '2023-04-29 14:05:07'),
(7, 5, 'ERW7', '<p>sample</p>', 0, '2023-05-03 16:55:11', '2023-05-03 16:55:11'),
(8, 2, 'ERW7', NULL, 1, '2023-05-03 17:01:15', '2023-05-03 17:01:15'),
(9, 5, 'eqF7', NULL, 0, '2023-05-09 18:01:51', '2023-05-09 18:01:51'),
(10, 2, 'eqF7', NULL, 1, '2023-05-09 18:04:10', '2023-05-09 18:04:10'),
(11, 5, '5dcn', NULL, 0, '2023-05-09 18:45:46', '2023-05-09 18:45:46'),
(12, 2, '5dcn', NULL, 1, '2023-05-09 18:47:21', '2023-05-09 18:47:21');

-- --------------------------------------------------------

--
-- Table structure for table `course`
--

CREATE TABLE `course` (
  `id` int(11) NOT NULL,
  `code_course` int(11) DEFAULT NULL,
  `deptID` varchar(45) DEFAULT NULL,
  `acronym` varchar(45) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `course`
--

INSERT INTO `course` (`id`, `code_course`, `deptID`, `acronym`, `name`, `description`, `created_at`, `updated_at`) VALUES
(6, 0, '0', 'BSIT', 'Bachelor of Science in Information Technology', NULL, NULL, NULL),
(7, 1, '1', 'BSECE', 'Bachelor of Science in Electronics Engineering', NULL, NULL, NULL),
(8, 2, '2', 'BSA', 'Bachelor of Science in Accountancy ', NULL, NULL, NULL),
(9, 3, '1', 'BSIE', 'Bachelor of Science in Industrial Engineering', NULL, NULL, NULL),
(10, 4, '3', 'BSED', 'Bachelor of Science in Education', NULL, NULL, NULL),
(11, 5, '2', 'BSE', 'Bachelor of Science in Entrepreneurship', NULL, NULL, NULL),
(12, NULL, '', NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `department`
--

CREATE TABLE `department` (
  `id` int(11) NOT NULL,
  `code_dept` int(11) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `acronym` varchar(45) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated-at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `department`
--

INSERT INTO `department` (`id`, `code_dept`, `name`, `acronym`, `description`, `created_at`, `updated-at`) VALUES
(1, 0, 'College Of Computer Science And Information Technology', 'BSIT', NULL, NULL, NULL),
(2, 1, 'College Of Engineering', 'BSECE', NULL, NULL, NULL),
(3, 2, 'College Of Business And Accountancy', 'BSA', NULL, NULL, NULL),
(4, 3, 'College Of Education', 'BSIE', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `dm_faculty`
--

CREATE TABLE `dm_faculty` (
  `id` int(11) NOT NULL,
  `firstname` varchar(255) DEFAULT NULL,
  `middlename` varchar(255) DEFAULT NULL,
  `lastname` varchar(255) DEFAULT NULL,
  `suffix` varchar(45) DEFAULT NULL,
  `contact` bigint(20) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `course` varchar(45) DEFAULT NULL,
  `status` int(11) DEFAULT 0,
  `type` varchar(45) DEFAULT NULL,
  `is_rejected` int(11) DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `dm_faculty`
--

INSERT INTO `dm_faculty` (`id`, `firstname`, `middlename`, `lastname`, `suffix`, `contact`, `email`, `address`, `course`, `status`, `type`, `is_rejected`, `created_at`, `updated_at`) VALUES
(1, 'John Michel', 'Romero', 'Sarmiento', NULL, 9090909109, 'jhon.michel.romero.sarmiento@gmail.com', '136 Sampaguita Street', 'BSIT', 2, 'Plantilla', 0, NULL, '2023-04-29 12:46:53'),
(2, 'Michaella', 'P.', 'Ledesma', NULL, 9090909092, 'michaella.p.ledesma@gmail.com', '136 Sampaguita Street', 'BSA', 2, 'Plantilla', 0, NULL, '2023-05-03 15:57:45'),
(3, 'Anjo', 'N/A', 'Panganiban', NULL, 9090909093, 'anjo.panganiban24@gmail.com', '136 Sampaguita Street', 'BSE', 0, 'Plantilla', 0, NULL, NULL),
(4, 'Christine Joy', 'Dumadigo', 'Bona', NULL, 9090909093, 'christine.joy.dumadigo.bona@gmail.com', '136 Sampaguita Street', 'BSECE', 0, 'Plantilla', 0, NULL, NULL),
(5, 'Jericho', 'Dangaap', 'Lim', NULL, 9090909093, 'lim.jericho.dangaap@gmail.com', '136 Sampaguita Street', 'BSIT', 2, 'Plantilla', 0, NULL, '2023-05-03 16:00:22'),
(6, 'John Paul', 'N/A', 'Capistrano', NULL, 9090909094, 'jpcapistrano111416@gmail.com', '136 Sampaguita Street', 'BSIE', 0, 'Part Time', 0, NULL, NULL),
(8, 'Clarissa', 'De Guzman', 'Pacetes', NULL, 9090909095, 'clarissa.deguzman.pacetes@gmail.com', '136 Sampaguita Street', 'BSIT', 2, 'Part Time', 0, NULL, '2023-05-01 22:03:00'),
(9, 'Carly Joy', 'N/A', 'Tercenio', NULL, 9090909096, 'caryl.joy.tercenio@gmail.com', '136 Sampaguita Street', 'BSIT', 0, 'Part Time', 0, NULL, '2023-02-24 02:23:04'),
(10, 'Mark Jay', 'Porminto', 'Serafin', NULL, 9090909096, 'mark.jay.porminto.serafin@gmail.com', '136 Sampaguita Street', 'BSIT', 0, 'COS', 0, NULL, '2023-03-07 00:38:01'),
(11, 'Avery Christine', 'N/A', 'Salvador', NULL, 9090909097, 'avery.christine.salvador@gmail.com', '136 Sampaguita Street', 'BSIT', 0, 'COS', 0, NULL, NULL),
(12, 'Joseph', 'Rina', 'Beipayo', NULL, 9090909097, 'jbeni.tech@gmail.com', '136 Sampaguita Street', 'BSIT', 0, 'COS', 0, NULL, '2023-03-31 00:40:54'),
(13, 'Robert William', 'Arceno', 'Yrigan', NULL, 9090909012, 'robert.william.arceno.yrigan@gmail.com', '136 Sampaguita Street', 'BSIT', 0, 'COS', 0, NULL, NULL),
(14, 'Chemuel', 'Echavez', 'Escribano', NULL, 9090909013, 'chemuel.echavez.escribano@gmail.com', '136 Sampaguita Street', 'BSIT', 0, 'Plantilla', 0, NULL, NULL),
(15, 'Ma. Theresa', 'N/A', 'Andrade', NULL, 9090909014, 'ma.theresa.andrade12@gmail.com', 'San Bartolome Quezon City', 'BSIT', 0, 'Plantilla', 0, NULL, NULL),
(16, 'Apreal Rose', 'Bitamor', 'Guilaran', NULL, 9090909017, 'apreal.rose.bitamor.guilaran@gmail.com', 'San Bartolome Quezon City', 'BSIT', 0, 'Plantilla', 0, NULL, NULL),
(17, 'Luis Liam', 'Ortega', 'Baly', NULL, 9090909032, 'luisliam.ortega.baly@gmail.com', 'San Bartolome Quezon City', 'BSIT', 0, 'Plantilla', 0, NULL, NULL),
(18, 'Christina', 'M', 'Josol', NULL, 9090909034, 'christina.m.josol@gmail.com', 'San Bartolome Quezon City', 'BSIT', 0, 'Plantilla', 0, NULL, NULL),
(19, 'John Jerden', 'N/A', 'Dizon', NULL, 9090909021, 'jerdendizon@gmail.com', 'San Bartolome Quezon City', 'BSIT', 0, 'Plantilla', 0, NULL, '2023-04-20 05:32:45'),
(20, 'Edward', 'Corbes', 'Pornelos', NULL, 9090909021, 'edward.corbes.pornelos@gmail.com ', 'San Bartolome Quezon City', 'BSIT', 2, 'Plantilla', 0, NULL, '2023-04-26 21:26:21'),
(21, 'John Rey', 'G', 'Consulta', NULL, 9090909021, 'john.rey.taniega.consulta@gmail.com', '136 Sampaguita Street', 'BSIT', 2, 'Plantilla', 0, NULL, '2023-05-03 16:09:35'),
(22, 'Lei', 'Iniba', 'DelaCruz', NULL, 9995294172, 'leidc027@gmail.com', 'San Bartolome Quezon City', 'BSIT', 2, 'Plantilla', 0, NULL, '2023-05-02 20:42:10'),
(27, 'William', 'Arceno', 'Yrigan', 'Sample Prof', 99992321232, 'robert.william.arceno.yrigan@gmail.com', 'Sample Address', 'BSIT', 0, 'Plantilla', 0, '2023-05-02 22:02:46', '2023-05-02 22:02:46'),
(28, 'Robert William', 'Arceno', 'Yrigannnnn', 'Sample Prof', 99992321232, 'robert.william.arceno.yrigan@gmail.com', 'Sample Address', 'BSIT', 0, 'Plantilla', 0, '2023-05-03 15:40:07', '2023-05-03 15:40:07');

-- --------------------------------------------------------

--
-- Table structure for table `employees`
--

CREATE TABLE `employees` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `position` varchar(255) NOT NULL,
  `email` varchar(255) DEFAULT NULL,
  `pin_code` varchar(255) DEFAULT NULL,
  `permissions` text DEFAULT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `faculty`
--

CREATE TABLE `faculty` (
  `id` int(11) NOT NULL,
  `facultyID` varchar(45) DEFAULT NULL,
  `empID` varchar(45) DEFAULT NULL,
  `userID` int(11) DEFAULT NULL,
  `departmentID` int(11) DEFAULT NULL,
  `accesskey` varchar(255) DEFAULT NULL,
  `courseID` int(11) DEFAULT NULL,
  `faculty_firstname` varchar(45) DEFAULT NULL,
  `faculty_middlename` varchar(45) DEFAULT NULL,
  `faculty_lastname` varchar(45) DEFAULT NULL,
  `faculty_suffix` varchar(45) DEFAULT NULL,
  `faculty_contact` varchar(45) DEFAULT NULL,
  `faculty_email` varchar(45) DEFAULT NULL,
  `faculty_permission` varchar(45) DEFAULT NULL,
  `faculty_profilepic` varchar(255) DEFAULT NULL,
  `faculty_qr` varchar(255) DEFAULT NULL,
  `faculty_temp_password` varchar(255) DEFAULT NULL,
  `faculty_address` varchar(255) DEFAULT NULL,
  `faculty_type` varchar(45) DEFAULT NULL,
  `is_scheduled` int(11) DEFAULT 0,
  `is_return_scheduled` int(11) DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `faculty`
--

INSERT INTO `faculty` (`id`, `facultyID`, `empID`, `userID`, `departmentID`, `accesskey`, `courseID`, `faculty_firstname`, `faculty_middlename`, `faculty_lastname`, `faculty_suffix`, `faculty_contact`, `faculty_email`, `faculty_permission`, `faculty_profilepic`, `faculty_qr`, `faculty_temp_password`, `faculty_address`, `faculty_type`, `is_scheduled`, `is_return_scheduled`, `created_at`, `updated_at`) VALUES
(2, 'FAC-000000002', 'EMP-000000002', 68, 0, 'Ke7rEGA5g0rNYCVM0vtVhVCAITySdbdPklw0FlqSo0QqH9Dpj0bXJKVWtEaq', 0, 'Edward', 'Corbes', 'Pornelos', NULL, '9090909021', 'pornelos13@gmail.com', '2', NULL, '0002', 'mIVbPG7', NULL, 'Plantilla', 1, 0, '2023-04-12 01:50:50', '2023-04-12 05:46:47'),
(9, 'FAC-000000009', 'EMP-000000009', 75, 0, 'iAxpQQCMcxYXvLC22oQzjjXaq6UJc2lQN7BDolwfjaZZAwFUJqcfce1qFqRu', 0, 'Edward', 'Corbes', 'Pornelos', NULL, '9090909021', 'edward.corbes.pornelos@gmail.com', '2', NULL, '0009', 'N3WCdg5', NULL, 'Plantilla', 1, 0, '2023-04-26 21:26:21', '2023-04-26 21:36:17'),
(11, 'FAC-000000011', 'EMP-000000011', 77, 0, 'cwkXqMBPsq2xkCywZYx4o1wQGawNle1rDKGLysI4L1wt1f1JJphacQnIwcdD', 0, 'John Michel', 'Romero', 'Sarmiento', NULL, '9090909109', 'jhon.michels.romero.sarmiento@gmail.com', '2', NULL, '0011', '51ncwDs', NULL, 'Plantilla', 1, 0, '2023-04-29 12:46:53', '2023-04-29 12:54:13'),
(14, 'FAC-000000014', 'EMP-000000014', 80, 0, 'UoBlUdCCWTRudfKaCxA2NRqgxmBfanrcFbvZoX9Xt6nCqcseyT16Ebq9wQxB', 0, 'Lei', 'Iniba', 'DelaCruz', NULL, '9995294172', 'leidc027@gmail.com', '2', NULL, '0014', 'H45J6Tz', NULL, 'Plantilla', 1, 0, '2023-05-02 20:42:10', '2023-05-02 20:45:21'),
(15, 'FAC-000000015', 'EMP-000000015', 84, 2, 'TnrysfvmAr4ybU1v7jax9Ll6UT9T8QuFqQpmF2Ru7BA3SVN7FCtKlkkQL3zj', 2, 'Michaella', 'P.', 'Ledesma', NULL, '9090909092', 'michaella.p.ledesma@gmail.com', '2', NULL, '0015', 'Qk7lvF4', NULL, 'Plantilla', 0, 0, '2023-05-03 15:57:45', '2023-05-03 16:04:10'),
(16, 'FAC-000000016', 'EMP-000000016', 85, 0, 'tPOEtahMjPY8WEOtGRtfRcVcOChNRBKgdSP86fjUIapXt4odXeRyGmzgFPkA', 0, 'Jericho', 'Dangaap', 'Lim', NULL, '9090909093', 'lim.jericho.dangaap@gmail.com', '1', NULL, '0016', '8VGa4Oa', NULL, 'Plantilla', 0, 0, '2023-05-03 16:00:22', '2023-05-03 16:00:22'),
(17, 'FAC-000000017', 'EMP-000000017', 86, 0, 'DWO4ho2Yhh8oJqy0sDnO5XCqMZOxttQLWDTzk06BbmxJSx6LlwX3wMuN3Qmf', 0, 'John Rey', 'G', 'Consulta', NULL, '9090909021', 'john.rey.taniega.consulta@gmail.com', '2', NULL, '0017', 'xJcd6h2', NULL, 'Plantilla', 1, 0, '2023-05-03 16:09:35', '2023-05-03 16:22:25'),
(18, 'FAC-000000018', 'EMP-000000018', 87, 0, '2hamCvXkulyJ09cc3pA1eY7tHErQ5OQO8pXvUM0Q9ymqyMZ54CvYvSJWqCnm', 0, 'Clarisa', 'A', 'Pacetes', NULL, '+639995194078', 'clarissapacetes98@gmail.com', '1', NULL, '0018', 'nPeZ4gh', NULL, 'Plantilla', 0, 0, '2023-05-05 15:38:11', '2023-05-05 15:38:11'),
(20, 'FAC-000000020', 'EMP-000000020', 89, 0, 'wfaWxeh2exUgIvbKXbzigqzPYFe2ymZdKfeNhQPgFlf8t64Q2Z7mKaFk2VF6', 0, 'Wilmer', 'A', 'Cabayao', NULL, '+639291407345', 'wilmer.cabayao@gmail.com', '1', NULL, '0020', '1g0TfMG', NULL, 'Plantilla', 0, 0, '2023-05-06 22:17:19', '2023-05-06 22:17:19'),
(21, 'FAC-000000021', 'EMP-000000021', 90, 0, 'xGSAK4kRW75qFFmSmAVCczNCpLzoyZiHgqh57g7E0gw374exwRxgRgR2XOrw', 0, 'Mel John Rich', 'B', 'Briones', NULL, '+639456846959', 'mhss.meljohnrichbriones@gmail.com', '2', NULL, '0021', 'YMVGCpK', NULL, 'Plantilla', 1, 0, '2023-05-08 11:32:17', '2023-05-08 12:00:34'),
(22, 'FAC-000000022', 'EMP-000000022', 91, 0, 'K4rqSdVL4UjqUdDxiElZMKYNbuNMl9tWzyiAeLuLoeDsakxDdv4kVrlsXyhO', 0, 'Christina', 'M', 'Josol', NULL, '+639554215619', 'justcallmemiruki@gmail.com', '2', NULL, '0022', 'FgoLfud', NULL, 'Plantilla', 1, 0, '2023-05-09 02:37:18', '2023-05-09 02:45:49'),
(25, 'FAC-000000025', 'EMP-000000025', 94, 0, 'MO1JVdOLvQ1mgoFCjkkJuWHRgrQWgCj6yuMqo0FjVnHqASAzEMsmc49bLKFN', 0, 'Jhon Michel', 'Romero', 'Sarmiento', NULL, '+639456846959', 'jhon.michel.romero.sarmiento@gmail.com', '2', NULL, '0025', 'I9wYF2e', NULL, 'Plantilla', 0, 0, '2023-05-09 15:34:42', '2023-05-09 15:43:14'),
(26, 'FAC-000000026', 'EMP-000000026', 95, 0, 'lNvXzh57BOwo41Gv7gtyp04ro7V42yljvijLHlxvjMv3Nk3k2JXKeIb0zT7c', 0, 'Testing Faculty', 'Faculty', 'Testing', NULL, '+639995194078', 'jade.delima.oloroso@gmail.com', '2', NULL, '0026', 'vx4CC9Z', NULL, 'Plantilla', 1, 0, '2023-05-09 17:28:45', '2023-05-09 17:37:50'),
(27, 'FAC-000000027', 'EMP-000000027', 96, 0, 'cCqoN9F4psyV0IogcyzDQeHF6LKHAp0cZRekfqnUtFVohh7Imgxp7b8pL5hv', 0, 'Clarissa', 'De Guzman', 'Pacetes', NULL, '+639297528911', 'clarissapacetes@gmail.com', '1', NULL, '0027', 'h7t0iio', NULL, 'Plantilla', 0, 0, '2023-05-10 03:59:33', '2023-05-10 03:59:33'),
(28, 'FAC-000000028', 'EMP-000000028', 105, 0, '9BFrH2S8PCHt5iYIVWEFzwOMAmKksGHtsQmpGVCflZ7KzY2huAf3y9L6SbsU', 0, 'Edward', 'Corbes', 'Pornelos', NULL, '+639995194078', 'edward.corbes.pornelos@gmail.com', '1', NULL, '0028', 'SzI2nD5', NULL, 'Plantilla', 0, 0, '2023-05-10 10:08:01', '2023-05-10 10:08:01');

-- --------------------------------------------------------

--
-- Table structure for table `faculty_section_handled`
--

CREATE TABLE `faculty_section_handled` (
  `id` int(11) NOT NULL,
  `facultyID` varchar(45) DEFAULT NULL,
  `sectionID` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `faculty_section_handled`
--

INSERT INTO `faculty_section_handled` (`id`, `facultyID`, `sectionID`, `created_at`, `updated_at`) VALUES
(1, 'FAC-000000023', 1, '2023-02-04 02:20:48', '2023-02-04 02:20:48'),
(2, 'FAC-000000023', 2, '2023-02-06 22:18:20', '2023-02-06 22:18:20'),
(3, 'FAC-000000023', 3, '2023-02-06 22:34:35', '2023-02-06 22:34:35');

-- --------------------------------------------------------

--
-- Table structure for table `faculty_subject_schedule`
--

CREATE TABLE `faculty_subject_schedule` (
  `id` int(11) NOT NULL,
  `facultyID` varchar(45) DEFAULT NULL,
  `subjectID` int(11) DEFAULT NULL,
  `section` varchar(45) DEFAULT NULL,
  `day` varchar(45) DEFAULT NULL,
  `time_start` time DEFAULT NULL,
  `time_end` time DEFAULT NULL,
  `type_of_learning` varchar(45) DEFAULT NULL,
  `academic_year` varchar(45) DEFAULT NULL,
  `type` varchar(45) DEFAULT NULL,
  `status` int(11) DEFAULT 0,
  `count` int(11) DEFAULT 0,
  `is_group` varchar(45) DEFAULT NULL,
  `is_setable` int(11) DEFAULT 0,
  `hndl_student` int(11) DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `room` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `faculty_subject_schedule`
--

INSERT INTO `faculty_subject_schedule` (`id`, `facultyID`, `subjectID`, `section`, `day`, `time_start`, `time_end`, `type_of_learning`, `academic_year`, `type`, `status`, `count`, `is_group`, `is_setable`, `hndl_student`, `created_at`, `updated_at`, `room`) VALUES
(31, 'FAC-000000002', 21, 'A', 'Monday', '16:23:00', '10:59:00', 'Face to Face', '2022 - 2023', 'Lecture', 4, 1, 'KzktR', 2, 50, '2023-04-12 05:00:01', '2023-05-09 02:44:28', '0'),
(32, 'FAC-000000002', 21, 'A', 'Monday', '16:40:00', '11:51:00', 'Face to Face', '2022 - 2023', 'Laboratory', 4, 1, 'KzktR', 2, 50, '2023-04-12 05:00:01', '2023-05-09 02:44:28', '0'),
(33, 'FAC-000000002', 56, 'A', 'Saturday', '12:30:00', '12:50:00', 'Break', '2022 - 2023', 'Break', 4, 0, 'KzktR', 0, 0, '2023-04-12 05:00:01', '2023-04-12 10:16:26', '0'),
(34, 'FAC-000000002', 14, 'B', 'Wednesday', '20:15:00', '01:59:00', 'Face to Face', '2022 - 2023', 'Lecture', 4, 1, 'KzktR', 2, 50, '2023-04-12 05:00:01', '2023-05-09 02:43:19', '0'),
(35, 'FAC-000000002', 14, 'B', 'Wednesday', '14:15:00', '03:50:00', 'Face to Face', '2022 - 2023', 'Laboratory', 4, 0, 'KzktR', 2, 50, '2023-04-12 05:00:01', '2023-05-09 02:43:19', '0'),
(36, 'FAC-000000002', 56, 'B', 'Wednesday', '12:30:00', '12:50:00', 'Break', '2022 - 2023', 'Break', 4, 0, 'KzktR', 0, 0, '2023-04-12 05:00:01', '2023-04-12 10:16:26', '0'),
(61, 'FAC-000000009', 14, 'A', 'Saturday', '21:40:00', '21:40:00', 'Face to Face', '2022 - 2023', 'Lecture', 3, 1, 'H2syK', 2, 50, '2023-04-26 21:30:26', '2023-05-09 02:43:19', '0'),
(62, 'FAC-000000009', 14, 'A', 'Saturday', '21:45:00', '21:45:00', 'Face to Face', '2022 - 2023', 'Laboratory', 3, 1, 'H2syK', 2, 50, '2023-04-26 21:30:26', '2023-05-09 02:43:19', '0'),
(63, 'FAC-000000009', 56, 'A', 'Saturday', '12:30:00', '12:50:00', 'Break', '2022 - 2023', 'Break', 3, 0, 'H2syK', 0, 0, '2023-04-26 21:30:26', '2023-04-26 21:36:50', '0'),
(64, 'FAC-000000009', 21, 'C', 'Wednesday', '21:50:00', '10:59:00', 'Face to Face', '2022 - 2023', 'Lecture', 3, 1, 'H2syK', 2, 50, '2023-04-26 21:30:26', '2023-05-09 02:44:28', '0'),
(65, 'FAC-000000009', 21, 'C', 'Wednesday', '21:55:00', '11:51:00', 'Face to Face', '2022 - 2023', 'Laboratory', 3, 0, 'H2syK', 2, 50, '2023-04-26 21:30:26', '2023-05-09 02:44:28', '0'),
(66, 'FAC-000000009', 56, 'C', 'Wednesday', '12:30:00', '12:50:00', 'Break', '2022 - 2023', 'Break', 3, 0, 'H2syK', 0, 0, '2023-04-26 21:30:26', '2023-04-26 21:36:50', '0'),
(67, 'FAC-000000010', 14, 'A', 'Monday', '15:50:00', '15:45:00', 'Face to Face', '2022 - 2023', 'Lecture', 3, 1, 'cXNY0', 2, 50, '2023-04-27 15:36:27', '2023-05-09 02:43:19', '0'),
(68, 'FAC-000000010', 14, 'A', 'Monday', '15:56:00', '15:47:00', 'Face to Face', '2022 - 2023', 'Laboratory', 3, 1, 'cXNY0', 2, 50, '2023-04-27 15:36:27', '2023-05-09 02:43:19', '0'),
(69, 'FAC-000000010', 56, 'A', 'Saturday', '12:30:00', '12:50:00', 'Break', '2022 - 2023', 'Break', 3, 0, 'cXNY0', 0, 0, '2023-04-27 15:36:27', '2023-04-27 15:48:11', '0'),
(70, 'FAC-000000010', 21, 'C', 'Wednesday', '09:59:00', '10:59:00', 'Face to Face', '2022 - 2023', 'Lecture', 3, 1, 'cXNY0', 2, 50, '2023-04-27 15:36:27', '2023-05-09 02:44:28', '0'),
(71, 'FAC-000000010', 21, 'C', 'Wednesday', '11:50:00', '11:51:00', 'Face to Face', '2022 - 2023', 'Laboratory', 3, 0, 'cXNY0', 2, 50, '2023-04-27 15:36:27', '2023-05-09 02:44:28', '0'),
(72, 'FAC-000000010', 56, 'C', 'Wednesday', '12:30:00', '12:50:00', 'Break', '2022 - 2023', 'Break', 3, 0, 'cXNY0', 0, 0, '2023-04-27 15:36:27', '2023-04-27 15:48:11', '0'),
(73, 'FAC-000000011', 14, 'A', 'Saturday', '08:00:00', '08:30:00', 'Face to Face', '2022 - 2023', 'Lecture', 3, 1, 'A4NUH', 2, 50, '2023-04-29 12:52:50', '2023-05-09 02:43:19', '0'),
(74, 'FAC-000000011', 14, 'A', 'Saturday', '20:00:00', '20:30:00', 'Face to Face', '2022 - 2023', 'Laboratory', 3, 1, 'A4NUH', 2, 50, '2023-04-29 12:52:50', '2023-05-09 02:43:19', '0'),
(75, 'FAC-000000011', 56, 'A', 'Saturday', '12:30:00', '12:50:00', 'Break', '2022 - 2023', 'Break', 3, 0, 'A4NUH', 0, 0, '2023-04-29 12:52:50', '2023-04-29 12:55:13', '0'),
(76, 'FAC-000000011', 21, 'B', 'Wednesday', '09:59:00', '10:59:00', 'Face to Face', '2022 - 2023', 'Lecture', 3, 1, 'A4NUH', 2, 50, '2023-04-29 12:52:50', '2023-05-09 02:44:28', '0'),
(77, 'FAC-000000011', 21, 'B', 'Wednesday', '11:50:00', '11:51:00', 'Face to Face', '2022 - 2023', 'Laboratory', 3, 0, 'A4NUH', 2, 50, '2023-04-29 12:52:50', '2023-05-09 02:44:28', '0'),
(78, 'FAC-000000011', 56, 'B', 'Wednesday', '12:30:00', '12:50:00', 'Break', '2022 - 2023', 'Break', 3, 0, 'A4NUH', 0, 0, '2023-04-29 12:52:50', '2023-04-29 12:55:13', '0'),
(79, 'FAC-000000014', 14, 'A', 'Saturday', '13:00:00', '13:30:00', 'Face to Face', '2022 - 2023', 'Lecture', 3, 1, '70TV9', 2, 50, '2023-05-02 20:44:50', '2023-05-09 02:43:19', '0'),
(80, 'FAC-000000014', 14, 'A', 'Saturday', '17:30:00', '15:30:00', 'Face to Face', '2022 - 2023', 'Laboratory', 3, 0, '70TV9', 2, 50, '2023-05-02 20:44:50', '2023-05-09 02:43:19', '0'),
(81, 'FAC-000000014', 56, 'A', 'Saturday', '12:30:00', '12:50:00', 'Break', '2022 - 2023', 'Break', 3, 0, '70TV9', 0, 0, '2023-05-02 20:44:50', '2023-05-02 20:45:51', '0'),
(82, 'FAC-000000014', 21, 'B', 'Wednesday', '20:00:00', '20:30:00', 'Face to Face', '2022 - 2023', 'Lecture', 3, 1, '70TV9', 2, 50, '2023-05-02 20:44:50', '2023-05-09 02:44:28', '0'),
(83, 'FAC-000000014', 21, 'B', 'Wednesday', '22:00:00', '22:30:00', 'Face to Face', '2022 - 2023', 'Laboratory', 3, 0, '70TV9', 2, 50, '2023-05-02 20:44:50', '2023-05-09 02:44:28', '0'),
(84, 'FAC-000000014', 56, 'B', 'Wednesday', '23:00:00', '23:00:00', 'Break', '2022 - 2023', 'Break', 3, 0, '70TV9', 0, 0, '2023-05-02 20:44:50', '2023-05-02 20:45:51', '0'),
(85, 'FAC-000000017', 14, 'A', 'Saturday', '08:00:00', '08:30:00', 'Face to Face', '2022 - 2023', 'Lecture', 3, 1, '4zeti', 2, 50, '2023-05-03 16:15:59', '2023-05-09 02:43:19', '0'),
(86, 'FAC-000000017', 14, 'A', 'Saturday', '20:30:00', '20:30:00', 'Face to Face', '2022 - 2023', 'Laboratory', 3, 0, '4zeti', 2, 50, '2023-05-03 16:15:59', '2023-05-09 02:43:19', '0'),
(87, 'FAC-000000017', 56, 'A', 'Saturday', '12:30:00', '12:50:00', 'Break', '2022 - 2023', 'Break', 3, 0, '4zeti', 0, 0, '2023-05-03 16:16:00', '2023-05-03 16:26:26', '0'),
(88, 'FAC-000000017', 21, 'B', 'Wednesday', '20:00:00', '20:30:00', 'Face to Face', '2022 - 2023', 'Lecture', 3, 1, '4zeti', 2, 50, '2023-05-03 16:16:00', '2023-05-09 02:44:28', '0'),
(89, 'FAC-000000017', 21, 'B', 'Wednesday', '22:00:00', '22:30:00', 'Face to Face', '2022 - 2023', 'Laboratory', 3, 0, '4zeti', 2, 50, '2023-05-03 16:16:00', '2023-05-09 02:44:28', '0'),
(90, 'FAC-000000017', 56, 'B', 'Wednesday', '23:00:00', '23:00:00', 'Break', '2022 - 2023', 'Break', 3, 0, '4zeti', 0, 0, '2023-05-03 16:16:00', '2023-05-03 16:26:26', '0'),
(91, 'FAC-000000021', 14, 'A', 'Saturday', '13:00:00', '13:30:00', 'Face to Face', '2022 - 2023', 'Lecture', 3, 1, 'CAgjq', 2, 50, '2023-05-08 11:51:21', '2023-05-09 02:43:19', '0'),
(92, 'FAC-000000021', 14, 'A', 'Saturday', '14:30:00', '15:30:00', 'Face to Face', '2022 - 2023', 'Laboratory', 3, 0, 'CAgjq', 2, 50, '2023-05-08 11:51:21', '2023-05-09 02:43:19', '0'),
(93, 'FAC-000000021', 56, 'A', 'Saturday', '12:30:00', '12:50:00', 'Break', '2022 - 2023', 'Break', 3, 0, 'CAgjq', 0, 0, '2023-05-08 11:51:21', '2023-05-08 12:01:45', '0'),
(94, 'FAC-000000021', 21, 'B', 'Wednesday', '20:00:00', '20:30:00', 'Face to Face', '2022 - 2023', 'Lecture', 3, 1, 'CAgjq', 2, 50, '2023-05-08 11:51:21', '2023-05-09 02:44:28', '0'),
(95, 'FAC-000000021', 21, 'B', 'Wednesday', '22:00:00', '22:30:00', 'Face to Face', '2022 - 2023', 'Laboratory', 3, 0, 'CAgjq', 2, 50, '2023-05-08 11:51:21', '2023-05-09 02:44:28', '0'),
(96, 'FAC-000000021', 56, 'B', 'Wednesday', '23:00:00', '23:00:00', 'Break', '2022 - 2023', 'Break', 3, 0, 'CAgjq', 0, 0, '2023-05-08 11:51:21', '2023-05-08 12:01:45', '0'),
(97, 'FAC-000000022', 14, 'A', 'Monday', '08:30:00', '08:30:00', 'Face to Face', '2022 - 2023', 'Lecture', 3, 1, 'Uznwy', 2, 50, '2023-05-09 02:42:58', '2023-05-09 03:10:45', '0'),
(98, 'FAC-000000022', 14, 'A', 'Monday', '20:30:00', '20:30:00', 'Face to Face', '2022 - 2023', 'Laboratory', 3, 0, 'Uznwy', 2, 50, '2023-05-09 02:42:58', '2023-05-09 03:10:45', '0'),
(99, 'FAC-000000022', 56, 'A', 'Monday', '12:30:00', '12:50:00', 'Break', '2022 - 2023', 'Break', 3, 0, 'Uznwy', 0, 0, '2023-05-09 02:42:58', '2023-05-09 03:10:45', '0'),
(100, 'FAC-000000022', 21, 'B', 'Wednesday', '20:00:00', '20:30:00', 'Face to Face', '2022 - 2023', 'Lecture', 3, 1, 'Uznwy', 2, 50, '2023-05-09 02:42:58', '2023-05-09 03:10:45', '0'),
(101, 'FAC-000000022', 21, 'B', 'Wednesday', '22:00:00', '22:30:00', 'Face to Face', '2022 - 2023', 'Laboratory', 3, 0, 'Uznwy', 2, 50, '2023-05-09 02:42:58', '2023-05-09 03:10:45', '0'),
(102, 'FAC-000000022', 56, 'B', 'Wednesday', '23:00:00', '23:00:00', 'Break', '2022 - 2023', 'Break', 3, 0, 'Uznwy', 0, 0, '2023-05-09 02:42:58', '2023-05-09 03:10:45', '0'),
(103, 'FAC-000000025', 4, 'A', 'Monday', '15:48:00', '15:49:00', NULL, '2022 - 2023', 'Lecture', 3, 1, 'beli8', 2, 0, '2023-05-09 15:48:31', '2023-05-09 15:54:20', '0'),
(104, 'FAC-000000025', 4, 'A', 'Monday', '15:48:00', '15:50:00', NULL, '2022 - 2023', 'Laboratory', 3, 0, 'beli8', 2, 0, '2023-05-09 15:48:31', '2023-05-09 15:54:20', '0'),
(105, 'FAC-000000025', 57, 'A', 'Monday', '15:49:00', '15:50:00', NULL, '2022 - 2023', 'Advising', 3, 0, 'beli8', 0, 0, '2023-05-09 15:48:31', '2023-05-09 15:50:35', '0'),
(106, 'FAC-000000025', 56, 'A', 'Monday', '16:49:00', '16:49:00', NULL, '2022 - 2023', 'Break', 3, 0, 'beli8', 0, 0, '2023-05-09 15:48:31', '2023-05-09 15:50:35', '0'),
(107, 'FAC-000000025', 5, 'D', 'Monday', '15:49:00', '15:52:00', NULL, '2022 - 2023', 'Lecture', 3, 1, 'oMafs', 1, 0, '2023-05-09 15:48:31', '2023-05-09 15:50:35', '0'),
(108, 'FAC-000000025', 5, 'D', 'Monday', '15:51:00', '15:54:00', NULL, '2022 - 2023', 'Laboratory', 3, 0, 'oMafs', 1, 0, '2023-05-09 15:48:31', '2023-05-09 15:50:35', '0'),
(109, 'FAC-000000025', 57, 'D', 'Monday', '15:49:00', '15:49:00', NULL, '2022 - 2023', 'Advising', 3, 0, 'oMafs', 0, 0, '2023-05-09 15:48:31', '2023-05-09 15:50:35', '0'),
(110, 'FAC-000000025', 56, 'D', 'Monday', '15:49:00', '15:50:00', NULL, '2022 - 2023', 'Break', 3, 0, 'oMafs', 0, 0, '2023-05-09 15:48:31', '2023-05-09 15:50:35', '0'),
(111, 'FAC-000000025', 6, 'D', 'Wednesday', '15:50:00', '15:50:00', NULL, '2022 - 2023', 'Lecture', 3, 1, '9sPuq', 1, 0, '2023-05-09 15:48:31', '2023-05-09 15:50:35', '0'),
(112, 'FAC-000000025', 6, 'D', 'Wednesday', '15:50:00', '15:52:00', NULL, '2022 - 2023', 'Laboratory', 3, 0, '9sPuq', 1, 0, '2023-05-09 15:48:31', '2023-05-09 15:50:35', '0'),
(113, 'FAC-000000025', 57, 'D', 'Wednesday', '15:50:00', '15:50:00', NULL, '2022 - 2023', 'Advising', 3, 0, '9sPuq', 0, 0, '2023-05-09 15:48:31', '2023-05-09 15:50:35', '0'),
(114, 'FAC-000000025', 56, 'D', 'Wednesday', '15:50:00', '15:52:00', NULL, '2022 - 2023', 'Break', 3, 0, '9sPuq', 0, 0, '2023-05-09 15:48:31', '2023-05-09 15:50:35', '0'),
(115, 'FAC-000000026', 4, 'B', 'Monday', '10:00:00', '17:30:00', NULL, '2022 - 2023', 'Lecture', 4, 1, '0zO5Q', 2, 0, '2023-05-09 17:32:31', '2023-05-09 17:37:50', '0'),
(116, 'FAC-000000026', 4, 'B', 'Monday', '19:00:00', '20:00:00', NULL, '2022 - 2023', 'Laboratory', 4, 0, '0zO5Q', 2, 0, '2023-05-09 17:32:31', '2023-05-09 17:37:50', '0'),
(117, 'FAC-000000026', 57, 'B', 'Monday', '16:00:00', '16:30:00', NULL, '2022 - 2023', 'Advising', 4, 0, '0zO5Q', 0, 0, '2023-05-09 17:32:31', '2023-05-09 17:37:50', '0'),
(118, 'FAC-000000026', 56, 'B', 'Monday', '18:00:00', '18:30:00', NULL, '2022 - 2023', 'Break', 4, 0, '0zO5Q', 0, 0, '2023-05-09 17:32:31', '2023-05-09 17:37:50', '0'),
(119, 'FAC-000000018', 27, 'D', 'Thursday', NULL, NULL, NULL, NULL, 'Lecture', 4, 1, 'oCogB', 2, 0, '2023-05-09 19:45:48', '2023-05-10 07:54:57', '0'),
(120, 'FAC-000000018', 57, 'D', 'Thursday', NULL, NULL, NULL, NULL, 'Advising', 4, 0, 'oCogB', 0, 0, '2023-05-09 19:45:48', '2023-05-09 19:45:48', '0'),
(121, 'FAC-000000018', 56, 'D', 'Thursday', NULL, NULL, NULL, NULL, 'Break', 4, 0, 'oCogB', 0, 0, '2023-05-09 19:45:48', '2023-05-09 19:45:48', '0'),
(122, 'FAC-000000018', 28, 'A', 'Tuesday', NULL, NULL, NULL, NULL, 'Lecture', 4, 1, 'Fr4KJ', 1, 0, '2023-05-09 19:45:48', '2023-05-09 19:45:48', '0'),
(123, 'FAC-000000018', 57, 'A', 'Tuesday', NULL, NULL, NULL, NULL, 'Advising', 4, 0, 'Fr4KJ', 0, 0, '2023-05-09 19:45:48', '2023-05-09 19:45:48', '0'),
(124, 'FAC-000000018', 56, 'A', 'Tuesday', NULL, NULL, NULL, NULL, 'Break', 4, 0, 'Fr4KJ', 0, 0, '2023-05-09 19:45:48', '2023-05-09 19:45:48', '0'),
(125, 'FAC-000000018', 39, 'C', 'Monday', NULL, NULL, NULL, NULL, 'Lecture', 4, 1, 'WvS6U', 1, 0, '2023-05-09 19:45:48', '2023-05-09 19:45:48', '0'),
(126, 'FAC-000000018', 39, 'C', 'Monday', NULL, NULL, NULL, NULL, 'Laboratory', 4, 0, 'WvS6U', 1, 0, '2023-05-09 19:45:48', '2023-05-09 19:45:48', '0'),
(127, 'FAC-000000018', 57, 'C', 'Monday', NULL, NULL, NULL, NULL, 'Advising', 4, 0, 'WvS6U', 0, 0, '2023-05-09 19:45:48', '2023-05-09 19:45:48', '0'),
(128, 'FAC-000000018', 56, 'C', 'Monday', NULL, NULL, NULL, NULL, 'Break', 4, 0, 'WvS6U', 0, 0, '2023-05-09 19:45:48', '2023-05-09 19:45:48', '0'),
(129, 'FAC-000000018', 40, 'B', 'Monday', NULL, NULL, NULL, NULL, 'Lecture', 4, 1, 'BRLcY', 1, 0, '2023-05-09 19:45:48', '2023-05-09 19:45:48', '0'),
(130, 'FAC-000000018', 40, 'B', 'Monday', NULL, NULL, NULL, NULL, 'Laboratory', 4, 0, 'BRLcY', 1, 0, '2023-05-09 19:45:48', '2023-05-09 19:45:48', '0'),
(131, 'FAC-000000018', 57, 'B', 'Monday', NULL, NULL, NULL, NULL, 'Advising', 4, 0, 'BRLcY', 0, 0, '2023-05-09 19:45:48', '2023-05-09 19:45:48', '0'),
(132, 'FAC-000000018', 56, 'B', 'Monday', NULL, NULL, NULL, NULL, 'Break', 4, 0, 'BRLcY', 0, 0, '2023-05-09 19:45:48', '2023-05-09 19:45:48', '0'),
(133, 'FAC-000000018', 41, 'C', 'Wednesday', NULL, NULL, NULL, NULL, 'Lecture', 4, 1, 'OyNHe', 1, 0, '2023-05-09 19:45:48', '2023-05-09 19:45:48', '0'),
(134, 'FAC-000000018', 41, 'C', 'Wednesday', NULL, NULL, NULL, NULL, 'Laboratory', 4, 0, 'OyNHe', 1, 0, '2023-05-09 19:45:48', '2023-05-09 19:45:48', '0'),
(135, 'FAC-000000018', 57, 'C', 'Wednesday', NULL, NULL, NULL, NULL, 'Advising', 4, 0, 'OyNHe', 0, 0, '2023-05-09 19:45:48', '2023-05-09 19:45:48', '0'),
(136, 'FAC-000000018', 56, 'C', 'Wednesday', NULL, NULL, NULL, NULL, 'Break', 4, 0, 'OyNHe', 0, 0, '2023-05-09 19:45:48', '2023-05-09 19:45:48', '0'),
(137, 'FAC-000000016', 48, NULL, NULL, NULL, NULL, NULL, NULL, 'Lecture', 4, 1, 'rMS0c', 1, 0, '2023-05-10 08:47:36', '2023-05-10 08:47:36', '0'),
(138, 'FAC-000000016', 57, NULL, NULL, NULL, NULL, NULL, NULL, 'Advising', 4, 0, 'rMS0c', 0, 0, '2023-05-10 08:47:36', '2023-05-10 08:47:36', '0'),
(139, 'FAC-000000016', 56, NULL, NULL, NULL, NULL, NULL, NULL, 'Break', 4, 0, 'rMS0c', 0, 0, '2023-05-10 08:47:36', '2023-05-10 08:47:36', '0'),
(140, 'FAC-000000016', 49, NULL, NULL, NULL, NULL, NULL, NULL, 'Lecture', 4, 1, 'QSSZS', 1, 0, '2023-05-10 08:47:36', '2023-05-10 08:47:36', '0'),
(141, 'FAC-000000016', 57, NULL, NULL, NULL, NULL, NULL, NULL, 'Advising', 4, 0, 'QSSZS', 0, 0, '2023-05-10 08:47:36', '2023-05-10 08:47:36', '0'),
(142, 'FAC-000000016', 56, NULL, NULL, NULL, NULL, NULL, NULL, 'Break', 4, 0, 'QSSZS', 0, 0, '2023-05-10 08:47:36', '2023-05-10 08:47:36', '0'),
(143, 'FAC-000000027', 4, 'A', 'Wednesday', NULL, NULL, NULL, NULL, 'Lecture', 4, 1, 'BwyNY', 1, 0, '2023-05-10 10:11:56', '2023-05-10 10:11:56', '0'),
(144, 'FAC-000000027', 4, 'A', 'Wednesday', NULL, NULL, NULL, NULL, 'Laboratory', 4, 0, 'BwyNY', 1, 0, '2023-05-10 10:11:56', '2023-05-10 10:11:56', '0'),
(145, 'FAC-000000027', 57, 'A', 'Wednesday', NULL, NULL, NULL, NULL, 'Advising', 4, 0, 'BwyNY', 0, 0, '2023-05-10 10:11:56', '2023-05-10 10:11:56', '0'),
(146, 'FAC-000000027', 56, 'A', 'Wednesday', NULL, NULL, NULL, NULL, 'Break', 4, 0, 'BwyNY', 0, 0, '2023-05-10 10:11:56', '2023-05-10 10:11:56', '0'),
(147, 'FAC-000000028', 4, 'A', 'Wednesday', '14:22:00', '14:22:00', NULL, '2022 - 2023', 'Lecture', 3, 1, '0sfXh', 1, 0, '2023-05-10 10:15:31', '2023-05-10 10:43:33', 'a400'),
(148, 'FAC-000000028', 4, 'A', 'Wednesday', '14:22:00', '14:22:00', NULL, '2022 - 2023', 'Laboratory', 3, 0, '0sfXh', 1, 0, '2023-05-10 10:15:31', '2023-05-10 10:43:33', 'a400'),
(149, 'FAC-000000028', 57, 'A', 'Wednesday', '14:22:00', '14:22:00', NULL, '2022 - 2023', 'Advising', 3, 0, '0sfXh', 0, 0, '2023-05-10 10:15:31', '2023-05-10 10:43:33', '0'),
(150, 'FAC-000000028', 56, 'A', 'Wednesday', '14:22:00', '14:22:00', NULL, '2022 - 2023', 'Break', 3, 0, '0sfXh', 0, 0, '2023-05-10 10:15:31', '2023-05-10 10:43:33', '0');

-- --------------------------------------------------------

--
-- Table structure for table `faculty_weekly_class`
--

CREATE TABLE `faculty_weekly_class` (
  `id` int(11) NOT NULL,
  `userID` int(11) DEFAULT NULL,
  `subjectID` int(11) DEFAULT NULL,
  `departmentID` int(11) DEFAULT NULL,
  `courseID` int(11) DEFAULT NULL,
  `activity` varchar(1000) DEFAULT NULL,
  `activity1` varchar(1000) DEFAULT NULL,
  `weekID` int(11) DEFAULT NULL,
  `fssID` int(11) DEFAULT NULL,
  `attID` int(11) DEFAULT NULL,
  `attID1` int(11) DEFAULT NULL,
  `facultyID` varchar(255) DEFAULT NULL,
  `secID` int(11) DEFAULT NULL,
  `sec_approveDate` date DEFAULT NULL,
  `phID` int(11) DEFAULT NULL,
  `ph_approveDate` date DEFAULT NULL,
  `hrID` int(11) DEFAULT NULL,
  `hr_approveDate` date DEFAULT NULL,
  `no_absents` int(11) DEFAULT NULL,
  `no_attendees` int(11) DEFAULT NULL,
  `accesskey` varchar(255) DEFAULT NULL,
  `is_sent` int(11) DEFAULT 0,
  `is_saved` int(11) DEFAULT 0,
  `attachmentLab` varchar(1000) DEFAULT NULL,
  `attachmentLec` varchar(1000) DEFAULT NULL,
  `status` int(11) DEFAULT 0,
  `scheduleID` int(11) DEFAULT NULL,
  `week_no` varchar(45) DEFAULT NULL,
  `college` varchar(45) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `chID` int(11) DEFAULT NULL,
  `ch_approveDate` date DEFAULT NULL,
  `is_return` int(11) NOT NULL DEFAULT 0,
  `is_resubmit` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `faculty_weekly_class`
--

INSERT INTO `faculty_weekly_class` (`id`, `userID`, `subjectID`, `departmentID`, `courseID`, `activity`, `activity1`, `weekID`, `fssID`, `attID`, `attID1`, `facultyID`, `secID`, `sec_approveDate`, `phID`, `ph_approveDate`, `hrID`, `hr_approveDate`, `no_absents`, `no_attendees`, `accesskey`, `is_sent`, `is_saved`, `attachmentLab`, `attachmentLec`, `status`, `scheduleID`, `week_no`, `college`, `created_at`, `updated_at`, `chID`, `ch_approveDate`, `is_return`, `is_resubmit`) VALUES
(1, 68, 21, 0, 0, '<p>Testing&nbsp;</p>', NULL, 2, 31, 18, 19, 'FAC-000000002', 5, '2023-04-13', 2, '2023-04-13', NULL, NULL, 6, 44, 'SdhFmdCWnAh3pqCSU7zT2GpXNuyy3IoyKxWvgqbiYm5j4O1zGyBbTyTPidqH', 1, 0, NULL, NULL, 3, NULL, NULL, NULL, '2023-04-13 00:08:24', '2023-04-17 10:30:08', 0, '0000-00-00', 0, 0),
(2, 68, 21, 0, 0, '<p>Testing 2</p>', '<p>Testing 2</p>', 1, 31, NULL, NULL, 'FAC-000000002', 5, '2023-04-13', 2, '2023-04-13', NULL, NULL, 6, 44, 'vuAJf5lb920znVCiM6upM2duQyvGQDOVieCBnr4xdEH3aMbFb6EZSBbjYqw6', 1, 0, 'public/weeklyreport_files/b3967a0e938dc2a6340e258630febd5a.png', 'public/weeklyreport_files/3988c7f88ebcb58c6ce932b957b6f332.jpg|public/weeklyreport_files/202cb962ac59075b964b07152d234b70.jpg', 3, NULL, NULL, NULL, '2023-04-13 00:13:55', '2023-04-17 10:30:08', 0, '0000-00-00', 0, 0),
(3, 68, 14, 0, 0, '<p>tetsing&nbsp;</p>', NULL, 20, 34, NULL, NULL, 'FAC-000000002', NULL, NULL, NULL, NULL, NULL, NULL, 6, 44, 'kHvMrCjuT4alKVWzKUlLvQMBqfKMgRoPGvFlPHxBXrwi9CBy3s7ZNu0hyNCA', 1, 0, NULL, NULL, 0, NULL, NULL, NULL, '2023-04-17 10:17:33', '2023-04-17 10:30:08', 0, '0000-00-00', 0, 0),
(7, 75, 21, 0, 0, '<ul><li>sample&nbsp;</li><li>sample</li></ul>', NULL, 145, 64, NULL, NULL, 'FAC-000000009', 5, '2023-04-26', 2, '2023-04-26', NULL, NULL, 6, 44, 'TmdIESD7LM4I1sNULYe1ZgdnjPN0oiBqbqZq3Xmgl1zIG1Irkp1Dub0IA9Zc', 1, 0, 'public/weeklyreport_files/08d98638c6fcd194a4b1e6992063e944.jpg', 'public/weeklyreport_files/3e89ebdb49f712c7d90d1b39e348bbbf.jpg', 3, NULL, NULL, NULL, '2023-04-26 21:53:50', '2023-04-26 21:58:38', 0, '0000-00-00', 0, 0),
(8, 75, 14, 0, 0, '<p>asdsad</p>', NULL, 127, 61, 94, 95, 'FAC-000000009', NULL, NULL, NULL, NULL, NULL, NULL, 6, 44, 'lskvM1fKiIlUWoc1zfTpSpNDZ40mtW7aMGf2SXCEEy1yQyB6HHh7t1jtlXi7', 0, 0, 'public/weeklyreport_files/5705e1164a8394aace6018e27d20d237.jpg|public/weeklyreport_files/06409663226af2f3114485aa4e0a23b4.jpg|public/weeklyreport_files/e46de7e1bcaaced9a54f1e9d0d2f800d.jpg', 'public/weeklyreport_files/38913e1d6a7b94cb0f55994f679f5956.jpg', 0, NULL, NULL, NULL, '2023-04-26 22:58:06', '2023-04-26 22:58:06', 0, '0000-00-00', 0, 0),
(9, 75, 14, 0, 0, '<p>asdsadsd</p>', NULL, 128, 61, NULL, NULL, 'FAC-000000009', NULL, NULL, NULL, NULL, NULL, NULL, 6, 44, 'p8WT85zXRxztK0gPDrLM3G5AHYVnvcMzMH8M9h8lDtgWz4tGQgJ4lNBSkONU', 0, 0, 'weeklyreport_files/3cec07e9ba5f5bb252d13f5f431e4bbb.png', 'weeklyreport_files/cbcb58ac2e496207586df2854b17995f.jpg|weeklyreport_files/6aca97005c68f1206823815f66102863.jpg|weeklyreport_files/9232fe81225bcaef853ae32870a2b0fe.jpg', 0, NULL, NULL, NULL, '2023-04-26 23:11:23', '2023-04-26 23:11:23', 0, '0000-00-00', 0, 0),
(10, 76, 14, 0, 0, '<ul><li>TESTING&nbsp;</li></ul>', NULL, 164, 67, 98, 99, 'FAC-000000010', NULL, NULL, NULL, NULL, NULL, NULL, 6, 44, '6cMBObYYoTpKCekpQzviXi8No8Hq8rFu3RkqxaZ8vI8DYbwWXxGX7bZ71H9W', 1, 0, NULL, NULL, 0, NULL, NULL, NULL, '2023-04-27 16:43:04', '2023-04-27 16:46:31', 0, '0000-00-00', 0, 0),
(11, 77, 14, 0, 0, '<p>etst</p>', NULL, 199, 73, 125, 0, 'FAC-000000011', 5, '2023-04-29', 2, '2023-04-29', NULL, NULL, 6, 44, 'YuuuwLaeiot81TSCjXaNsqTWi0a6GqxShLLQtuzJpWWanAs5doKo8SG4qmRW', 1, 0, NULL, NULL, 3, NULL, NULL, NULL, '2023-04-29 14:01:19', '2023-04-29 14:05:07', 0, '0000-00-00', 0, 0),
(12, 75, 14, 0, 0, '<p>testing</p>', '<p>testing</p>', 129, 61, NULL, NULL, 'FAC-000000009', NULL, NULL, NULL, NULL, NULL, NULL, 6, 44, 'DocPr7V7sj8UjZQcqpxpMAmnlcrAjxp0wH5g8k6yIq3aJOmNFSkEci4kdo21', 0, 0, 'weeklyreport_files/40008b9a5380fcacce3976bf7c08af5b.jpg|weeklyreport_files/53c3bce66e43be4f209556518c2fcb54.png|weeklyreport_files/92c8c96e4c37100777c7190b76d28233.png', 'weeklyreport_files/df263d996281d984952c07998dc54358.jpg|weeklyreport_files/e57c6b956a6521b28495f2886ca0977a.jpg', 0, NULL, NULL, NULL, '2023-05-03 05:37:09', '2023-05-03 05:37:09', 0, '0000-00-00', 0, 0),
(13, 86, 14, 0, 0, '<ul><li>sample</li><li>sample</li></ul>', NULL, 271, 85, 154, NULL, 'FAC-000000017', 5, '2023-05-03', 2, '2023-05-03', NULL, NULL, 6, 44, 'Bcoa6cTyilS6mOQ7konj41WBlUqk3wc0nNwUpP2JwkLMM4DstDAzhZAnExzM', 1, 0, NULL, NULL, 3, NULL, NULL, NULL, '2023-05-03 16:52:17', '2023-05-03 17:01:15', 0, '0000-00-00', 0, 0),
(16, 95, 4, 0, 0, '<ul><li>Activity</li></ul>', NULL, 415, 115, 163, NULL, 'FAC-000000026', NULL, NULL, NULL, NULL, NULL, NULL, 6, 49, 'hUTmVeBiaQgDJwqeCtVTtLlpyrsnJ4mNjnrO4dZhXazeXwKNhHDqC9xKg9vv', 0, 0, NULL, NULL, 0, NULL, NULL, NULL, '2023-05-10 10:50:28', '2023-05-10 10:57:14', NULL, NULL, 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `forgot_password`
--

CREATE TABLE `forgot_password` (
  `id` int(11) NOT NULL,
  `userID` int(11) DEFAULT NULL,
  `accesstoken` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `fwc_notes`
--

CREATE TABLE `fwc_notes` (
  `id` int(11) NOT NULL,
  `userID` int(11) DEFAULT NULL,
  `fwcID` int(11) DEFAULT NULL,
  `notes` varchar(1000) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `fwc_remarks`
--

CREATE TABLE `fwc_remarks` (
  `id` int(11) NOT NULL,
  `userID` int(11) DEFAULT NULL,
  `fwcID` int(11) DEFAULT NULL,
  `remarks` varchar(10000) DEFAULT NULL,
  `type` int(11) DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `fwc_remarks`
--

INSERT INTO `fwc_remarks` (`id`, `userID`, `fwcID`, `remarks`, `type`, `created_at`, `updated_at`) VALUES
(1, 5, 2, '<p>testing</p>', 0, '2023-04-20 13:33:35', '2023-04-20 13:33:35'),
(2, 5, 2, '<p>ulit</p>', 0, '2023-04-20 13:35:03', '2023-04-20 13:35:03'),
(3, 68, 2, '<p>HAKDOG</p>', 1, '2023-04-22 09:33:25', '2023-04-22 09:33:25'),
(4, 5, 7, '<p>asdsadsadsad</p>', 0, '2023-04-26 22:12:02', '2023-04-26 22:12:02'),
(5, 75, 7, '<p>dasdasdsad</p>', 1, '2023-04-26 22:12:46', '2023-04-26 22:12:46'),
(6, 68, 1, '<p>testing</p>', 1, '2023-04-29 01:38:48', '2023-04-29 01:38:48'),
(7, 5, 13, '<p>sample remarks for faculty</p>', 0, '2023-05-03 16:55:56', '2023-05-03 16:55:56'),
(8, 5, 14, '<p>test</p>', 0, '2023-05-09 18:00:00', '2023-05-09 18:00:00'),
(9, 5, 15, '<p>Change upload more img</p>', 0, '2023-05-09 18:43:59', '2023-05-09 18:43:59'),
(10, 5, 16, '<ul><li>Return</li></ul>', 0, '2023-05-10 10:57:14', '2023-05-10 10:57:14');

-- --------------------------------------------------------

--
-- Table structure for table `fwc_status`
--

CREATE TABLE `fwc_status` (
  `id` int(11) NOT NULL,
  `statusID` int(11) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `created_at` varchar(45) DEFAULT NULL,
  `updated_at` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `fwc_status`
--

INSERT INTO `fwc_status` (`id`, `statusID`, `status`, `created_at`, `updated_at`) VALUES
(1, 0, 'Created', NULL, NULL),
(2, 1, 'Sent to Secretary', NULL, NULL),
(3, 2, 'Admin Assistant Approved', NULL, NULL),
(4, 3, 'Dean approved', NULL, NULL),
(5, 4, 'Human Resources approved', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `grouped_reports`
--

CREATE TABLE `grouped_reports` (
  `id` int(11) NOT NULL,
  `facultyID` varchar(45) DEFAULT NULL,
  `userID` varchar(45) DEFAULT NULL,
  `fwcID` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `grouped_reports`
--

INSERT INTO `grouped_reports` (`id`, `facultyID`, `userID`, `fwcID`, `created_at`, `updated_at`) VALUES
(1, 'FAC-000000002', '68', 1, '2023-04-13 01:19:47', '2023-04-13 01:19:47'),
(2, 'FAC-000000002', '68', 2, '2023-04-13 01:19:47', '2023-04-13 01:19:47'),
(3, 'FAC-000000002', '68', 3, '2023-04-17 10:30:08', '2023-04-17 10:30:08'),
(4, 'FAC-000000006', '72', 4, '2023-04-19 07:16:16', '2023-04-19 07:16:16'),
(5, 'FAC-000000004', '70', 5, '2023-04-20 06:25:00', '2023-04-20 06:25:00'),
(6, 'FAC-000000009', '75', 7, '2023-04-26 21:54:50', '2023-04-26 21:54:50'),
(8, 'FAC-000000011', '77', 11, '2023-04-29 14:01:27', '2023-04-29 14:01:27'),
(9, 'FAC-000000017', '86', 13, '2023-05-03 16:53:22', '2023-05-03 16:53:22'),
(10, 'FAC-000000026', '95', 14, '2023-05-09 17:58:57', '2023-05-09 17:58:57'),
(11, 'FAC-000000026', '95', 14, '2023-05-09 18:01:14', '2023-05-09 18:01:14'),
(12, 'FAC-000000026', '95', 15, '2023-05-09 18:33:56', '2023-05-09 18:33:56'),
(13, 'FAC-000000026', '95', 15, '2023-05-09 18:44:46', '2023-05-09 18:44:46'),
(14, 'FAC-000000026', '95', 16, '2023-05-10 10:50:47', '2023-05-10 10:50:47');

-- --------------------------------------------------------

--
-- Table structure for table `hr`
--

CREATE TABLE `hr` (
  `id` int(11) NOT NULL,
  `hrID` varchar(45) DEFAULT NULL,
  `userID` int(11) DEFAULT NULL,
  `hr_firstname` varchar(225) DEFAULT NULL,
  `hr_lastname` varchar(225) DEFAULT NULL,
  `hr_middlename` varchar(225) DEFAULT NULL,
  `hr_email` varchar(225) DEFAULT NULL,
  `departmentID` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `hr`
--

INSERT INTO `hr` (`id`, `hrID`, `userID`, `hr_firstname`, `hr_lastname`, `hr_middlename`, `hr_email`, `departmentID`, `created_at`, `updated_at`) VALUES
(1, 'HR-000000001', 3, 'Mel John', 'Rich', 'Briones', 'mel.john.rich.briones@gmail.com', 0, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `hr_faculty_reports`
--

CREATE TABLE `hr_faculty_reports` (
  `id` int(11) NOT NULL,
  `hrID` varchar(45) DEFAULT NULL,
  `userID` int(11) DEFAULT NULL,
  `grouped_reportsID` int(11) DEFAULT NULL,
  `facultyID` varchar(45) DEFAULT NULL,
  `groupTokenID` varchar(45) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `hr_faculty_reports`
--

INSERT INTO `hr_faculty_reports` (`id`, `hrID`, `userID`, `grouped_reportsID`, `facultyID`, `groupTokenID`, `created_at`, `updated_at`) VALUES
(1, 'HR-000000001', 3, 1, 'FAC-000000002', 'tZLx', '2023-04-13 01:19:47', '2023-04-13 01:19:47'),
(2, 'HR-000000001', 3, 2, 'FAC-000000002', 'tZLx', '2023-04-13 01:19:47', '2023-04-13 01:19:47'),
(6, 'HR-000000001', 3, 6, 'FAC-000000009', 'B8Je', '2023-04-26 21:54:50', '2023-04-26 21:54:50'),
(8, 'HR-000000001', 3, 8, 'FAC-000000011', 'AOFY', '2023-04-29 14:01:27', '2023-04-29 14:01:27'),
(9, 'HR-000000001', 3, 9, 'FAC-000000017', 'ERW7', '2023-05-03 16:53:22', '2023-05-03 16:53:22'),
(10, 'HR-000000001', 3, 10, 'FAC-000000026', 'zdGc', '2023-05-09 17:58:57', '2023-05-09 17:58:57'),
(11, 'HR-000000001', 3, 11, 'FAC-000000026', 'eqF7', '2023-05-09 18:01:14', '2023-05-09 18:01:14'),
(12, 'HR-000000001', 3, 12, 'FAC-000000026', 'tXyy', '2023-05-09 18:33:56', '2023-05-09 18:33:56'),
(13, 'HR-000000001', 3, 13, 'FAC-000000026', '5dcn', '2023-05-09 18:44:46', '2023-05-09 18:44:46'),
(14, 'HR-000000001', 3, 14, 'FAC-000000026', '1IYf', '2023-05-10 10:50:48', '2023-05-10 10:50:48');

-- --------------------------------------------------------

--
-- Table structure for table `learning_delivery_mode`
--

CREATE TABLE `learning_delivery_mode` (
  `id` int(11) NOT NULL,
  `fcwID` int(11) DEFAULT NULL,
  `attendees_no` int(11) DEFAULT NULL,
  `absent_no` int(11) DEFAULT NULL,
  `date_covered` date DEFAULT NULL,
  `duration` varchar(45) DEFAULT NULL,
  `activity_description` varchar(255) DEFAULT NULL,
  `attachments` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `learning_delivery_mode`
--

INSERT INTO `learning_delivery_mode` (`id`, `fcwID`, `attendees_no`, `absent_no`, `date_covered`, `duration`, `activity_description`, `attachments`, `created_at`, `updated_at`) VALUES
(1, 1, 50, 0, '2023-02-05', NULL, 'Testing', '1675502086-81t.png', '2023-02-04 05:44:46', '2023-02-04 05:44:46'),
(2, 2, 50, 0, '2023-02-09', NULL, 'Testing', '1675912583-HJx.png', '2023-02-08 23:46:23', '2023-02-08 23:46:23'),
(3, 3, 43, 7, '2023-02-10', NULL, 'Testing', '1675912612-UM6.png', '2023-02-08 23:46:52', '2023-02-08 23:46:52'),
(4, 4, 40, 10, '2023-02-11', NULL, 'Testing', '1675912643-HD2.png', '2023-02-08 23:47:23', '2023-02-08 23:47:23'),
(5, 5, 50, 0, '2023-02-10', NULL, 'Testing', '1675916171-nAZ.png', '2023-02-09 00:46:11', '2023-02-09 00:46:11'),
(6, 6, 40, 10, '2023-02-10', NULL, 'Testing', '1675916195-jUK.png', '2023-02-09 00:46:35', '2023-02-09 00:46:35'),
(7, 7, 45, 4, '2023-02-09', NULL, 'Testing Report', '1675916285-ifk.png', '2023-02-09 00:48:05', '2023-02-09 00:48:05'),
(8, 8, 40, 10, '2023-02-10', NULL, 'Testing Report', '1675916308-Zk2.png', '2023-02-09 00:48:28', '2023-02-09 00:48:28'),
(9, 9, 43, 7, '2023-02-09', NULL, 'Testing', '1675917047-0EB.png', '2023-02-09 01:00:47', '2023-02-09 01:00:47'),
(10, 10, 42, 8, '2023-02-10', NULL, 'Testing', '1675917072-mxS.png', '2023-02-09 01:01:12', '2023-02-09 01:01:12');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_11_25_113026_create_employees_table', 1),
(5, '2019_12_02_141403_create_roles_table', 1),
(6, '2019_12_03_044741_create_schedules_table', 1),
(7, '2019_12_03_045452_create_attendances_table', 1),
(8, '2019_12_03_045912_create_latetimes_table', 1),
(9, '2019_12_03_045930_create_overtimes_table', 1),
(10, '2019_12_03_050030_create_leaves_table', 1),
(11, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(12, '2019_12_22_183558_create_checks_table', 1),
(13, '2021_06_05_110414_create_finger_devices_table', 1),
(14, '2022_12_04_110645_create_notifications_table', 2),
(15, '2023_04_06_999999_add_active_status_to_users', 3),
(16, '2023_04_06_999999_add_avatar_to_users', 3),
(17, '2023_04_06_999999_add_dark_mode_to_users', 3),
(18, '2023_04_06_999999_add_messenger_color_to_users', 3),
(19, '2023_04_06_999999_create_chatify_favorites_table', 3),
(20, '2023_04_06_999999_create_chatify_messages_table', 3);

-- --------------------------------------------------------

--
-- Table structure for table `notifications`
--

CREATE TABLE `notifications` (
  `id` char(36) NOT NULL,
  `type` varchar(255) NOT NULL,
  `notifiable_type` varchar(255) NOT NULL,
  `notifiable_id` bigint(20) UNSIGNED NOT NULL,
  `data` text NOT NULL,
  `read_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `notifications`
--

INSERT INTO `notifications` (`id`, `type`, `notifiable_type`, `notifiable_id`, `data`, `read_at`, `created_at`, `updated_at`) VALUES
('022a2c45-a351-4220-90f6-0d4177f62518', 'App\\Notifications\\ApproveFWCDeanNotification', 'App\\Models\\User', 5, '{\"subject\":\"Dean Approve Compiled Reports\",\"link\":\"https:\\/\\/try-latest.qcu-fms.site\\/AA\\/Faculty\\/Compiled\\/Reports\\/FAC-000000026\\/eqF7\",\"name\":\"Leah Dela Cruz\"}', '2023-05-09 18:01:42', '2023-05-09 18:04:07', '2023-05-09 18:04:07'),
('05c646c2-7caa-48cd-b119-03614b3a8863', 'App\\Notifications\\NotifyDeanPCAccountCreationNotification', 'App\\Models\\User', 60, '{\"subject\":\"Faculty Mel John Rich Briones Schedule.\",\"link\":\"https:\\/\\/try-latest.qcu-fms.site\\/Program Chair\\/Faculty\\/List\\/View\\/FAC-000000021\\/xGSAK4kRW75qFFmSmAVCczNCpLzoyZiHgqh57g7E0gw374exwRxgRgR2XOrw\",\"name\":\"Anjo Panganiban\"}', '2023-05-09 18:01:42', '2023-05-08 11:32:17', '2023-05-08 11:32:17'),
('0a6fb703-e01f-41e1-a0cb-c97e72526fb0', 'App\\Notifications\\SentReportsHRNotification', 'App\\Models\\User', 3, '{\"subject\":\"Submitted Report\",\"link\":\"https:\\/\\/try-latest.qcu-fms.site\\/HR\\/Notification\\/FAC-000000026\\/zdGc\\/reports\",\"name\":\"Testing Faculty Testing\"}', '2023-05-09 18:01:42', '2023-05-09 17:59:02', '2023-05-09 17:59:02'),
('0b776048-260b-4515-9834-63ec9310df6a', 'App\\Notifications\\SentToDeanNotification', 'App\\Models\\User', 95, '{\"subject\":\"Program Chair Send Faculty Schedule.\",\"link\":\"https:\\/\\/try-latest.qcu-fms.site\\/Faculty\\/Class_Schedule\",\"name\":\"Chirstina Josol\"}', '2023-05-09 18:01:42', '2023-05-09 17:36:59', '2023-05-09 17:36:59'),
('0effca92-e1a5-4425-bba3-334876ec9a9d', 'App\\Notifications\\ApproveFWCDeanNotification', 'App\\Models\\User', 95, '{\"subject\":\"Dean Approve Compiled Reports\",\"link\":\"https:\\/\\/qcu-fms.site\\/Faculty\\/Reports?status=1\",\"name\":\"Leah Dela Cruz\"}', '2023-05-09 18:01:42', '2023-05-09 18:47:17', '2023-05-09 18:47:17'),
('0fb0ce83-5dcb-4c06-bc6d-41bc3616b89b', 'App\\Notifications\\WeeklyReminderNotification', 'App\\Models\\User', 86, '{\"subject\":\"Weekly Reminder.\",\"link\":\"http:\\/\\/127.0.0.1:8000\\/Faculty\\/Reports\\/Add-Report\\/add\\/3\\/14\",\"name\":\"QCU-FMS System\"}', NULL, '2023-05-15 00:04:04', '2023-05-15 00:04:04'),
('160a519b-bf27-4e57-8af9-291d73eba9a7', 'App\\Notifications\\NotifyDeanPCAccountCreationNotification', 'App\\Models\\User', 60, '{\"subject\":\"Faculty Jhon Michel Sarmiento Account Created.\",\"link\":\"https:\\/\\/try-latest.qcu-fms.site\\/Program Chair\\/Faculty\\/List\\/View\\/FAC-000000024\\/uBzX5TpwCd3QQszKaIouCavHPHNQcqPVqR8WQEhdTye06bWmBQQRdfl3Tx0q\",\"name\":\"Anjo Panganiban\"}', '2023-05-09 18:01:42', '2023-05-09 15:32:10', '2023-05-09 15:32:10'),
('16c9ec82-de68-4a62-b990-19743835980b', 'App\\Notifications\\ApproveFWCDeanNotification', 'App\\Models\\User', 95, '{\"subject\":\"Dean Approve Compiled Reports\",\"link\":\"https:\\/\\/try-latest.qcu-fms.site\\/Faculty\\/Reports?status=1\",\"name\":\"Leah Dela Cruz\"}', '2023-05-09 18:01:42', '2023-05-09 18:04:05', '2023-05-09 18:04:05'),
('1834f65d-0256-4450-be65-aae58eb87215', 'App\\Notifications\\WeeklyReminderNotification', 'App\\Models\\User', 91, '{\"subject\":\"Weekly Reminder.\",\"link\":\"http:\\/\\/127.0.0.1:8000\\/Faculty\\/Reports\\/Add-Report\\/add\\/6\\/14\",\"name\":\"QCU-FMS System\"}', NULL, '2023-05-15 00:03:08', '2023-05-15 00:03:08'),
('1a1a40fd-5f72-4852-b0ac-6a85135d9a44', 'App\\Notifications\\WeeklyReminderNotification', 'App\\Models\\User', 90, '{\"subject\":\"Weekly Reminder.\",\"link\":\"http:\\/\\/127.0.0.1:8000\\/Faculty\\/Reports\\/Add-Report\\/add\\/4\\/21\",\"name\":\"QCU-FMS System\"}', NULL, '2023-05-15 00:11:02', '2023-05-15 00:11:02'),
('1a773459-f722-4b9c-a9b8-d2fa9a09ca62', 'App\\Notifications\\WeeklyReminderNotification', 'App\\Models\\User', 90, '{\"subject\":\"Weekly Reminder.\",\"link\":\"http:\\/\\/127.0.0.1:8000\\/Faculty\\/Reports\\/Add-Report\\/add\\/2\\/21\",\"name\":\"QCU-FMS System\"}', NULL, '2023-05-15 00:10:02', '2023-05-15 00:10:02'),
('1d179a09-dfb6-42f1-8d3a-5d6f72cd0a7f', 'App\\Notifications\\AnnouncementSecNotification', 'App\\Models\\User', 80, '{\"subject\":\"SAM102\",\"link\":\"https:\\/\\/qcu-fms.site\\/Faculty\\/Notification\\/8\\/YzPVc2gxFXyTJvXG3596jq2Py4cvmroaDyPYkliPIMaU9VCCTuMLpYhgOd3R\\/announcement\",\"name\":\"Anjo Panganiban\"}', '2023-05-09 18:01:42', '2023-05-09 20:03:04', '2023-05-09 20:03:04'),
('2310838a-3aa4-4eb4-a060-31a154394e2f', 'App\\Notifications\\WeeklyReminderNotification', 'App\\Models\\User', 90, '{\"subject\":\"Weekly Reminder.\",\"link\":\"http:\\/\\/127.0.0.1:8000\\/Faculty\\/Reports\\/Add-Report\\/add\\/6\\/14\",\"name\":\"QCU-FMS System\"}', NULL, '2023-05-15 00:09:02', '2023-05-15 00:09:02'),
('24b1bea7-516a-49b7-ad13-d2275b606f1f', 'App\\Notifications\\MissingWeeklyNotification', 'App\\Models\\User', 90, '{\"subject\":\"You Missed Your Weekly.\",\"link\":\"https:\\/\\/qcu-fms.site\\/Faculty\\/Reports\\/Add-Report\\/missing\\/1\\/14\",\"name\":\"QCU-FMS System\"}', '2023-05-09 18:01:42', '2023-05-09 00:02:07', '2023-05-09 00:02:07'),
('2634bb06-214e-45cb-a1a2-b98c17cc5463', 'App\\Notifications\\SendSchedulePHCHNotification', 'App\\Models\\User', 5, '{\"subject\":\"Modified Faculty Edward Pornelos Schedule.\",\"link\":\"https:\\/\\/qcu-fms.site\\/AA\\/Faculty\\/Schedules\\/FAC-000000028\\/9BFrH2S8PCHt5iYIVWEFzwOMAmKksGHtsQmpGVCflZ7KzY2huAf3y9L6SbsU\",\"name\":\"Chirstina Josol\"}', NULL, '2023-05-10 10:36:42', '2023-05-10 10:36:42'),
('279108aa-b760-4f22-9682-f4f6f8274540', 'App\\Notifications\\WeeklyReminderNotification', 'App\\Models\\User', 90, '{\"subject\":\"Weekly Reminder.\",\"link\":\"http:\\/\\/127.0.0.1:8000\\/Faculty\\/Reports\\/Add-Report\\/add\\/1\\/21\",\"name\":\"QCU-FMS System\"}', NULL, '2023-05-15 00:05:05', '2023-05-15 00:05:05'),
('28389b2c-5b9f-493d-b90b-79cd10e4966e', 'App\\Notifications\\AddLoadToFacultyNotification', 'App\\Models\\User', 96, '{\"subject\":\"Faculty Clarissa Pacetes Schedule.\",\"link\":\"https:\\/\\/qcu-fms.site\\/Faculty\\/Class_Schedule\",\"name\":\"Chirstina Josol\"}', NULL, '2023-05-10 10:13:46', '2023-05-10 10:13:46'),
('2a8944de-277b-48e0-a95d-3a86a6a8b233', 'App\\Notifications\\SentReportsHRNotification', 'App\\Models\\User', 5, '{\"subject\":\"Re-Submit Report\",\"link\":\"https:\\/\\/try-latest.qcu-fms.site\\/AA\\/Faculty\\/Compiled\\/Reports\\/FAC-000000026\\/eqF7\",\"name\":\"Testing Faculty Testing\"}', '2023-05-09 18:01:42', '2023-05-09 18:01:16', '2023-05-09 18:01:42'),
('2aa29ccb-a17e-4c97-a25b-ce4f16eb8ea3', 'App\\Notifications\\SendToPHReportNotification', 'App\\Models\\User', 2, '{\"subject\":\"Compiled Faculty Report\",\"link\":\"https:\\/\\/try-latest.qcu-fms.site\\/Dean\\/Faculty\\/Compiled\\/Reports\\/FAC-000000026\\/eqF7\",\"name\":\"Anjo Panganiban\"}', '2023-05-09 18:01:42', '2023-05-09 18:01:49', '2023-05-09 18:01:49'),
('2d66547f-4e68-4889-97e8-286087eaece3', 'App\\Notifications\\WeeklyReminderNotification', 'App\\Models\\User', 91, '{\"subject\":\"Weekly Reminder.\",\"link\":\"http:\\/\\/127.0.0.1:8000\\/Faculty\\/Reports\\/Add-Report\\/add\\/2\\/14\",\"name\":\"QCU-FMS System\"}', NULL, '2023-05-15 00:02:12', '2023-05-15 00:02:12'),
('2e81e538-7cb0-4bc6-88ee-f681be5cc4c1', 'App\\Notifications\\SendSchedulePHCHNotification', 'App\\Models\\User', 2, '{\"subject\":\"Modified Faculty Edward Pornelos Schedule.\",\"link\":\"https:\\/\\/qcu-fms.site\\/Dean\\/Faculty\\/Schedules\\/FAC-000000028\\/9BFrH2S8PCHt5iYIVWEFzwOMAmKksGHtsQmpGVCflZ7KzY2huAf3y9L6SbsU\",\"name\":\"Chirstina Josol\"}', NULL, '2023-05-10 10:35:28', '2023-05-10 10:35:28'),
('2f57ef84-45df-417f-a637-cc2a653702a1', 'App\\Notifications\\AddLoadToFacultyNotification', 'App\\Models\\User', 105, '{\"subject\":\"Faculty Edward Pornelos Schedule.\",\"link\":\"https:\\/\\/qcu-fms.site\\/Faculty\\/Class_Schedule\",\"name\":\"Chirstina Josol\"}', NULL, '2023-05-10 10:35:35', '2023-05-10 10:35:35'),
('303137a4-d4ef-41e9-b809-d84ca4cd44e2', 'App\\Notifications\\WeeklyReminderNotification', 'App\\Models\\User', 91, '{\"subject\":\"Weekly Reminder.\",\"link\":\"http:\\/\\/127.0.0.1:8000\\/Faculty\\/Reports\\/Add-Report\\/add\\/6\\/21\",\"name\":\"QCU-FMS System\"}', NULL, '2023-05-15 00:21:01', '2023-05-15 00:21:01'),
('3269e16d-549c-46e6-b637-c2315d994316', 'App\\Notifications\\AnnouncementSecNotification', 'App\\Models\\User', 94, '{\"subject\":\"SAM102\",\"link\":\"https:\\/\\/qcu-fms.site\\/Faculty\\/Notification\\/15\\/CikO9ZlzmILbbsRnWI7kCGx9rdUgNHGLoGXtohfEmyNtWK6KMxXLENjIRXRh\\/announcement\",\"name\":\"Anjo Panganiban\"}', '2023-05-09 18:01:42', '2023-05-09 20:03:19', '2023-05-09 20:03:19'),
('329804c6-09cf-4a2b-ab97-0dd2bf8e4d8f', 'App\\Notifications\\SentReportsHRNotification', 'App\\Models\\User', 5, '{\"subject\":\"Submitted Report\",\"link\":\"https:\\/\\/qcu-fms.site\\/AA\\/Faculty\\/Compiled\\/Reports\\/FAC-000000026\\/1IYf\",\"name\":\"Testing Faculty Testing\"}', '2023-05-10 10:56:40', '2023-05-10 10:50:50', '2023-05-10 10:56:40'),
('33c87218-789b-4654-9dea-bc5251f7ca5e', 'App\\Notifications\\WeeklyReminderNotification', 'App\\Models\\User', 80, '{\"subject\":\"Weekly Reminder.\",\"link\":\"http:\\/\\/127.0.0.1:8000\\/Faculty\\/Reports\\/Add-Report\\/add\\/5\\/14\",\"name\":\"QCU-FMS System\"}', NULL, '2023-05-15 00:01:05', '2023-05-15 00:01:05'),
('33f90964-ac98-4ae7-bb67-219705dbfae8', 'App\\Notifications\\AnnouncementSecNotification', 'App\\Models\\User', 77, '{\"subject\":\"SAM102\",\"link\":\"https:\\/\\/qcu-fms.site\\/Faculty\\/Notification\\/7\\/LFwRI6YvToHXaIajConF9pas0txFU88783cImYsCwv6FWSnDZ7djvP5Jv1Iu\\/announcement\",\"name\":\"Anjo Panganiban\"}', '2023-05-09 18:01:42', '2023-05-09 20:03:01', '2023-05-09 20:03:01'),
('34a95cbf-9943-48f0-b20d-f4579b941484', 'App\\Notifications\\AddLoadToFacultyNotification', 'App\\Models\\User', 105, '{\"subject\":\"Faculty Edward Pornelos Schedule.\",\"link\":\"https:\\/\\/qcu-fms.site\\/Faculty\\/Class_Schedule\",\"name\":\"Chirstina Josol\"}', NULL, '2023-05-10 10:38:04', '2023-05-10 10:38:04'),
('3636180a-b8a1-4d75-bb1a-4e416d564598', 'App\\Notifications\\WeeklyReminderNotification', 'App\\Models\\User', 91, '{\"subject\":\"Weekly Reminder.\",\"link\":\"http:\\/\\/127.0.0.1:8000\\/Faculty\\/Reports\\/Add-Report\\/add\\/5\\/14\",\"name\":\"QCU-FMS System\"}', NULL, '2023-05-15 00:15:02', '2023-05-15 00:15:02'),
('3637c455-ba74-470d-b1f1-889b5a1039d1', 'App\\Notifications\\SendSchedulePHCHNotification', 'App\\Models\\User', 2, '{\"subject\":\"Modified Faculty Edward Pornelos Schedule.\",\"link\":\"https:\\/\\/qcu-fms.site\\/Dean\\/Faculty\\/Schedules\\/FAC-000000028\\/9BFrH2S8PCHt5iYIVWEFzwOMAmKksGHtsQmpGVCflZ7KzY2huAf3y9L6SbsU\",\"name\":\"Chirstina Josol\"}', NULL, '2023-05-10 10:37:57', '2023-05-10 10:37:57'),
('3678e420-d2a5-4ab2-99c5-24edda96a7fa', 'App\\Notifications\\SendSchedulePHCHNotification', 'App\\Models\\User', 5, '{\"subject\":\"Modified Faculty Jhon Michel Sarmiento Schedule.\",\"link\":\"https:\\/\\/try-latest.qcu-fms.site\\/AA\\/Faculty\\/Schedules\\/FAC-000000025\\/MO1JVdOLvQ1mgoFCjkkJuWHRgrQWgCj6yuMqo0FjVnHqASAzEMsmc49bLKFN\",\"name\":\"Chirstina Josol\"}', '2023-05-09 18:01:42', '2023-05-09 15:50:30', '2023-05-09 15:50:30'),
('3c4582b1-5e5e-480a-9dec-0674d2100232', 'App\\Notifications\\MissingWeeklyNotification', 'App\\Models\\User', 77, '{\"subject\":\"You Missed Your Weekly.\",\"link\":\"https:\\/\\/qcu-fms.site\\/Faculty\\/Reports\\/Add-Report\\/missing\\/5\\/14\",\"name\":\"QCU-FMS System\"}', '2023-05-09 18:01:42', '2023-05-09 00:00:13', '2023-05-09 00:00:13'),
('3d16356d-040f-42e5-9306-a065ff035426', 'App\\Notifications\\WeeklyReminderNotification', 'App\\Models\\User', 91, '{\"subject\":\"Weekly Reminder.\",\"link\":\"http:\\/\\/127.0.0.1:8000\\/Faculty\\/Reports\\/Add-Report\\/add\\/5\\/21\",\"name\":\"QCU-FMS System\"}', NULL, '2023-05-15 00:11:04', '2023-05-15 00:11:04'),
('3e27c727-d7cb-46d0-b986-cf3505b0a2ba', 'App\\Notifications\\NotifyDeanPCAccountCreationNotification', 'App\\Models\\User', 2, '{\"subject\":\"Faculty Mel John Rich Briones Schedule.\",\"link\":\"https:\\/\\/try-latest.qcu-fms.site\\/Dean\\/Faculty\\/List\\/View\\/FAC-000000021\\/xGSAK4kRW75qFFmSmAVCczNCpLzoyZiHgqh57g7E0gw374exwRxgRgR2XOrw\",\"name\":\"Anjo Panganiban\"}', '2023-05-09 18:01:42', '2023-05-08 11:32:17', '2023-05-08 11:32:17'),
('3e339dd2-f286-4c67-a1d8-01a0e774819f', 'App\\Notifications\\SentReportsHRNotification', 'App\\Models\\User', 3, '{\"subject\":\"Re-Submit Report\",\"link\":\"https:\\/\\/qcu-fms.site\\/HR\\/Notification\\/FAC-000000026\\/5dcn\\/reports\",\"name\":\"Testing Faculty Testing\"}', '2023-05-09 18:01:42', '2023-05-09 18:44:50', '2023-05-09 18:44:50'),
('40332d4a-4e86-41b6-aa4e-00ad665d3cc7', 'App\\Notifications\\SendToPHReportNotification', 'App\\Models\\User', 2, '{\"subject\":\"Compiled Faculty Report\",\"link\":\"https:\\/\\/qcu-fms.site\\/Dean\\/Faculty\\/Compiled\\/Reports\\/FAC-000000026\\/5dcn\",\"name\":\"Anjo Panganiban\"}', '2023-05-09 19:06:19', '2023-05-09 18:45:44', '2023-05-09 19:06:19'),
('44148b4e-246a-48a5-bb2a-1bb1330bbc88', 'App\\Notifications\\SentReportsHRNotification', 'App\\Models\\User', 5, '{\"subject\":\"Submitted Report\",\"link\":\"https:\\/\\/try-latest.qcu-fms.site\\/AA\\/Faculty\\/Compiled\\/Reports\\/FAC-000000026\\/zdGc\",\"name\":\"Testing Faculty Testing\"}', '2023-05-09 17:59:52', '2023-05-09 17:58:59', '2023-05-09 17:59:52'),
('443a4ac5-0d38-4c72-b295-672c3be88099', 'App\\Notifications\\ReturnSubmittedReportNotification', 'App\\Models\\User', 95, '{\"subject\":\"Program Chair Retured Your Submitted Report.\",\"link\":\"https:\\/\\/try-latest.qcu-fms.site\\/Faculty\\/Reports\\/View\\/14\\/pmkXBgKcNvzKDcD5MsithVZI57O0PAZMFowRiVwxvZP7zf5Ulq8wDfeE6M1h\",\"name\":\"Anjo Panganiban\"}', '2023-05-09 18:00:23', '2023-05-09 18:00:00', '2023-05-09 18:00:23'),
('44ec7b9e-b70f-4bc3-9c1f-e843f19052df', 'App\\Notifications\\MissingWeeklyNotification', 'App\\Models\\User', 68, '{\"subject\":\"You Missed Your Weekly.\",\"link\":\"http:\\/\\/127.0.0.1:8000\\/Faculty\\/Reports\\/Add-Report\\/missing\\/3\\/21\",\"name\":\"QCU-FMS System\"}', '2023-05-09 18:01:42', '2023-05-10 00:00:02', '2023-05-10 00:00:02'),
('44f1f84e-10ad-4de9-ad4b-bbd7945a658d', 'App\\Notifications\\WeeklyReminderNotification', 'App\\Models\\User', 90, '{\"subject\":\"Weekly Reminder.\",\"link\":\"http:\\/\\/127.0.0.1:8000\\/Faculty\\/Reports\\/Add-Report\\/add\\/1\\/21\",\"name\":\"QCU-FMS System\"}', NULL, '2023-05-15 00:01:09', '2023-05-15 00:01:09'),
('45792f2e-4e40-4b3e-8076-dd1a213474a1', 'App\\Notifications\\MissingWeeklyNotification', 'App\\Models\\User', 68, '{\"subject\":\"You Missed Your Weekly.\",\"link\":\"http:\\/\\/127.0.0.1:8000\\/Faculty\\/Reports\\/Add-Report\\/missing\\/3\\/21\",\"name\":\"QCU-FMS System\"}', NULL, '2023-05-14 00:00:03', '2023-05-14 00:00:03'),
('459d8d4d-743e-4dec-9244-1ac51209b808', 'App\\Notifications\\SendSchedulePHCHNotification', 'App\\Models\\User', 5, '{\"subject\":\"Modified Faculty Testing Faculty Testing Schedule.\",\"link\":\"https:\\/\\/try-latest.qcu-fms.site\\/AA\\/Faculty\\/Schedules\\/FAC-000000026\\/lNvXzh57BOwo41Gv7gtyp04ro7V42yljvijLHlxvjMv3Nk3k2JXKeIb0zT7c\",\"name\":\"Chirstina Josol\"}', '2023-05-09 18:01:42', '2023-05-09 17:35:34', '2023-05-09 17:35:34'),
('4952d990-04c1-4707-9415-d6051a2fcf9a', 'App\\Notifications\\WeeklyReminderNotification', 'App\\Models\\User', 80, '{\"subject\":\"Weekly Reminder.\",\"link\":\"http:\\/\\/127.0.0.1:8000\\/Faculty\\/Reports\\/Add-Report\\/add\\/4\\/21\",\"name\":\"QCU-FMS System\"}', NULL, '2023-05-15 00:02:05', '2023-05-15 00:02:05'),
('49c08b7a-978c-4813-816b-9b0ee66764ef', 'App\\Notifications\\WeeklyReminderNotification', 'App\\Models\\User', 90, '{\"subject\":\"Weekly Reminder.\",\"link\":\"http:\\/\\/127.0.0.1:8000\\/Faculty\\/Reports\\/Add-Report\\/add\\/6\\/21\",\"name\":\"QCU-FMS System\"}', NULL, '2023-05-15 00:02:10', '2023-05-15 00:02:10'),
('4da68162-a11c-4c2b-950b-2fe7c51b7547', 'App\\Notifications\\AddLoadToFacultyNotification', 'App\\Models\\User', 105, '{\"subject\":\"Faculty Edward Pornelos Schedule.\",\"link\":\"https:\\/\\/qcu-fms.site\\/Faculty\\/Class_Schedule\",\"name\":\"Chirstina Josol\"}', NULL, '2023-05-10 10:20:50', '2023-05-10 10:20:50'),
('521f171c-ab0a-4e75-8f45-b559ab128a61', 'App\\Notifications\\ReturnSubmittedReportNotification', 'App\\Models\\User', 95, '{\"subject\":\"Program Chair Retured Your Submitted Report.\",\"link\":\"https:\\/\\/qcu-fms.site\\/Faculty\\/Reports\\/View\\/15\\/qcO1mwpQb6BquUqoPe3jHxSKYdBp1jNoEyKJurYqxoREHYmIvYgFW7OF4Iy8\",\"name\":\"Anjo Panganiban\"}', '2023-05-09 18:44:26', '2023-05-09 18:43:59', '2023-05-09 18:44:26'),
('55fa63d4-2c86-4152-84bd-2ab8f8bfc2c0', 'App\\Notifications\\WeeklyReminderNotification', 'App\\Models\\User', 90, '{\"subject\":\"Weekly Reminder.\",\"link\":\"http:\\/\\/127.0.0.1:8000\\/Faculty\\/Reports\\/Add-Report\\/add\\/6\\/21\",\"name\":\"QCU-FMS System\"}', NULL, '2023-05-15 00:12:02', '2023-05-15 00:12:02'),
('560cc0c8-6d7a-4f26-acfe-26d93fce7119', 'App\\Notifications\\MissingWeeklyNotification', 'App\\Models\\User', 77, '{\"subject\":\"You Missed Your Weekly.\",\"link\":\"https:\\/\\/qcu-fms.site\\/Faculty\\/Reports\\/Add-Report\\/missing\\/5\\/21\",\"name\":\"QCU-FMS System\"}', '2023-05-09 18:01:42', '2023-05-09 00:01:02', '2023-05-09 00:01:02'),
('561c6015-b509-464a-b376-88c68031fb4d', 'App\\Notifications\\SendSchedulePHCHNotification', 'App\\Models\\User', 2, '{\"subject\":\"Modified Faculty Edward Pornelos Schedule.\",\"link\":\"https:\\/\\/qcu-fms.site\\/Dean\\/Faculty\\/Schedules\\/FAC-000000028\\/9BFrH2S8PCHt5iYIVWEFzwOMAmKksGHtsQmpGVCflZ7KzY2huAf3y9L6SbsU\",\"name\":\"Chirstina Josol\"}', NULL, '2023-05-10 10:36:40', '2023-05-10 10:36:40'),
('5a42800e-7715-4f7c-8288-7f57ba165ead', 'App\\Notifications\\MissingWeeklyNotification', 'App\\Models\\User', 80, '{\"subject\":\"You Missed Your Weekly.\",\"link\":\"https:\\/\\/qcu-fms.site\\/Faculty\\/Reports\\/Add-Report\\/missing\\/2\\/14\",\"name\":\"QCU-FMS System\"}', '2023-05-09 18:01:42', '2023-05-09 00:01:04', '2023-05-09 00:01:04'),
('5aa22f4a-9b26-412b-a944-4d4127113bdf', 'App\\Notifications\\AnnouncementSecNotification', 'App\\Models\\User', 90, '{\"subject\":\"SAM102\",\"link\":\"https:\\/\\/qcu-fms.site\\/Faculty\\/Notification\\/13\\/bpenA4xe1llhGFSLFkYpkh8iDP6jQHiPCp2bJnqf5NUvvHIsThyP13HUt7eU\\/announcement\",\"name\":\"Anjo Panganiban\"}', '2023-05-09 18:01:42', '2023-05-09 20:03:15', '2023-05-09 20:03:15'),
('5d80c6a5-2004-4fd8-842f-e7fddc94a16c', 'App\\Notifications\\SendSchedulePHCHNotification', 'App\\Models\\User', 2, '{\"subject\":\"Modified Faculty Jhon Michel Sarmiento Schedule.\",\"link\":\"https:\\/\\/try-latest.qcu-fms.site\\/Dean\\/Faculty\\/Schedules\\/FAC-000000025\\/MO1JVdOLvQ1mgoFCjkkJuWHRgrQWgCj6yuMqo0FjVnHqASAzEMsmc49bLKFN\",\"name\":\"Chirstina Josol\"}', '2023-05-09 18:01:42', '2023-05-09 15:50:28', '2023-05-09 15:50:28'),
('5d8d2737-da7b-4bfd-b9cb-e0cd76897186', 'App\\Notifications\\WeeklyReminderNotification', 'App\\Models\\User', 91, '{\"subject\":\"Weekly Reminder.\",\"link\":\"http:\\/\\/127.0.0.1:8000\\/Faculty\\/Reports\\/Add-Report\\/add\\/5\\/14\",\"name\":\"QCU-FMS System\"}', NULL, '2023-05-15 00:08:04', '2023-05-15 00:08:04'),
('5defcc81-6ba3-4942-8e15-5cef045018cb', 'App\\Notifications\\WeeklyReminderNotification', 'App\\Models\\User', 86, '{\"subject\":\"Weekly Reminder.\",\"link\":\"http:\\/\\/127.0.0.1:8000\\/Faculty\\/Reports\\/Add-Report\\/add\\/6\\/14\",\"name\":\"QCU-FMS System\"}', NULL, '2023-05-15 00:01:07', '2023-05-15 00:01:07'),
('5f52640b-f7df-47d9-b0dd-267cd805d62a', 'App\\Notifications\\AnnouncementSecNotification', 'App\\Models\\User', 85, '{\"subject\":\"SAM102\",\"link\":\"https:\\/\\/qcu-fms.site\\/Faculty\\/Notification\\/9\\/m27fGP4MDGgpDX6RHdqtYwumLWnmQnF0mmnXKFpyVlFdD4arrEJG5ASviCME\\/announcement\",\"name\":\"Anjo Panganiban\"}', '2023-05-09 18:01:42', '2023-05-09 20:03:06', '2023-05-09 20:03:06'),
('5fbf1433-f472-4efa-bf72-b31f4340e296', 'App\\Notifications\\WeeklyReminderNotification', 'App\\Models\\User', 77, '{\"subject\":\"Weekly Reminder.\",\"link\":\"https:\\/\\/qcu-fms.site\\/Faculty\\/Reports\\/Add-Report\\/add\\/2\\/14\",\"name\":\"QCU-FMS System\"}', '2023-05-09 18:01:42', '2023-05-08 08:56:02', '2023-05-08 08:56:02'),
('5ff027b8-8d11-4bfa-8c54-8e75af9edbb0', 'App\\Notifications\\AddLoadToFacultyNotification', 'App\\Models\\User', 95, '{\"subject\":\"Faculty Testing Faculty Testing Schedule.\",\"link\":\"https:\\/\\/try-latest.qcu-fms.site\\/Faculty\\/Class_Schedule\",\"name\":\"Chirstina Josol\"}', '2023-05-09 18:01:42', '2023-05-09 17:35:39', '2023-05-09 17:35:39'),
('617a3983-ee00-41a3-929c-d93ee57ed2c5', 'App\\Notifications\\SentReportsHRNotification', 'App\\Models\\User', 3, '{\"subject\":\"Re-Submit Report\",\"link\":\"https:\\/\\/try-latest.qcu-fms.site\\/HR\\/Notification\\/FAC-000000026\\/eqF7\\/reports\",\"name\":\"Testing Faculty Testing\"}', '2023-05-09 18:01:42', '2023-05-09 18:01:18', '2023-05-09 18:01:18'),
('61a60a2b-4a54-4058-96f8-62c94fa4423f', 'App\\Notifications\\SendSchedulePHCHNotification', 'App\\Models\\User', 5, '{\"subject\":\"Modified Faculty Edward Pornelos Schedule.\",\"link\":\"https:\\/\\/qcu-fms.site\\/AA\\/Faculty\\/Schedules\\/FAC-000000028\\/9BFrH2S8PCHt5iYIVWEFzwOMAmKksGHtsQmpGVCflZ7KzY2huAf3y9L6SbsU\",\"name\":\"Chirstina Josol\"}', NULL, '2023-05-10 10:43:29', '2023-05-10 10:43:29'),
('61b7c0b8-d712-46c6-beff-cff6c3315520', 'App\\Notifications\\ReadyForScheduleCreationNotification', 'App\\Models\\User', 60, '{\"subject\":\"Faculty Testing Ready for Schedule Creation.\",\"link\":\"https:\\/\\/try-latest.qcu-fms.site\\/Program Chair\\/Faculty\\/Schedules\\/FAC-000000026\\/lNvXzh57BOwo41Gv7gtyp04ro7V42yljvijLHlxvjMv3Nk3k2JXKeIb0zT7c\",\"name\":\"Testing Faculty Testing\"}', '2023-05-09 17:32:03', '2023-05-09 17:30:19', '2023-05-09 17:32:03'),
('61e19fe9-b2d2-4e4b-b17d-5e457cb853cf', 'App\\Notifications\\WeeklyReminderNotification', 'App\\Models\\User', 90, '{\"subject\":\"Weekly Reminder.\",\"link\":\"http:\\/\\/127.0.0.1:8000\\/Faculty\\/Reports\\/Add-Report\\/add\\/4\\/21\",\"name\":\"QCU-FMS System\"}', NULL, '2023-05-15 00:06:04', '2023-05-15 00:06:04'),
('63b7ea5b-60ca-48cd-afc4-913f5d976545', 'App\\Notifications\\MissingWeeklyNotification', 'App\\Models\\User', 80, '{\"subject\":\"You Missed Your Weekly.\",\"link\":\"https:\\/\\/qcu-fms.site\\/Faculty\\/Reports\\/Add-Report\\/missing\\/5\\/21\",\"name\":\"QCU-FMS System\"}', '2023-05-09 18:01:42', '2023-05-09 00:02:03', '2023-05-09 00:02:03'),
('656987bc-b142-4d5e-91ee-f93109d17d32', 'App\\Notifications\\SentReportsHRNotification', 'App\\Models\\User', 5, '{\"subject\":\"Re-Submit Report\",\"link\":\"https:\\/\\/qcu-fms.site\\/AA\\/Faculty\\/Compiled\\/Reports\\/FAC-000000026\\/5dcn\",\"name\":\"Testing Faculty Testing\"}', '2023-05-09 18:45:07', '2023-05-09 18:44:48', '2023-05-09 18:45:07'),
('6634a9c6-d62a-40e4-931f-7e94aa7918ec', 'App\\Notifications\\AnnouncementSecNotification', 'App\\Models\\User', 75, '{\"subject\":\"SAM102\",\"link\":\"https:\\/\\/qcu-fms.site\\/Faculty\\/Notification\\/6\\/en2q28YFp8EC6zgf7QEjKug999LtgswzwxBQY6D2oL4rzYEoPbWix0LXvmJ4\\/announcement\",\"name\":\"Anjo Panganiban\"}', '2023-05-09 18:01:42', '2023-05-09 20:02:59', '2023-05-09 20:02:59'),
('66f74142-d0f0-484f-99d3-c74049f4de77', 'App\\Notifications\\WeeklyReminderNotification', 'App\\Models\\User', 90, '{\"subject\":\"Weekly Reminder.\",\"link\":\"http:\\/\\/127.0.0.1:8000\\/Faculty\\/Reports\\/Add-Report\\/add\\/6\\/21\",\"name\":\"QCU-FMS System\"}', NULL, '2023-05-15 00:00:21', '2023-05-15 00:00:21'),
('6929ce87-3ef3-4ff4-983b-9ba08fdfb322', 'App\\Notifications\\WeeklyReminderNotification', 'App\\Models\\User', 94, '{\"subject\":\"Weekly Reminder.\",\"link\":\"https:\\/\\/qcu-fms.site\\/Faculty\\/Reports\\/Add-Report\\/add\\/1\\/4\",\"name\":\"QCU-FMS System\"}', '2023-05-09 18:01:42', '2023-05-09 15:55:03', '2023-05-09 15:55:03'),
('696af46f-2b9b-4a89-91ad-2ad44a592cd8', 'App\\Notifications\\SentToDeanNotification', 'App\\Models\\User', 95, '{\"subject\":\"Program Chair Send Faculty Schedule.\",\"link\":\"https:\\/\\/try-latest.qcu-fms.site\\/Faculty\\/Class_Schedule\",\"name\":\"Chirstina Josol\"}', '2023-05-09 18:01:42', '2023-05-09 17:37:50', '2023-05-09 17:37:50'),
('6fc00a47-7d93-4480-9133-5b14355e3dd1', 'App\\Notifications\\SendSchedulePHCHNotification', 'App\\Models\\User', 5, '{\"subject\":\"Modified Faculty Edward Pornelos Schedule.\",\"link\":\"https:\\/\\/qcu-fms.site\\/AA\\/Faculty\\/Schedules\\/FAC-000000028\\/9BFrH2S8PCHt5iYIVWEFzwOMAmKksGHtsQmpGVCflZ7KzY2huAf3y9L6SbsU\",\"name\":\"Chirstina Josol\"}', NULL, '2023-05-10 10:20:46', '2023-05-10 10:20:46'),
('70507c0d-8e90-4500-86c6-5592e2e32096', 'App\\Notifications\\WeeklyReminderNotification', 'App\\Models\\User', 91, '{\"subject\":\"Weekly Reminder.\",\"link\":\"http:\\/\\/127.0.0.1:8000\\/Faculty\\/Reports\\/Add-Report\\/add\\/4\\/14\",\"name\":\"QCU-FMS System\"}', NULL, '2023-05-15 00:14:02', '2023-05-15 00:14:02'),
('7423ed3f-067c-4e8d-ad74-73f153a3f86d', 'App\\Notifications\\WeeklyReminderNotification', 'App\\Models\\User', 86, '{\"subject\":\"Weekly Reminder.\",\"link\":\"http:\\/\\/127.0.0.1:8000\\/Faculty\\/Reports\\/Add-Report\\/add\\/4\\/14\",\"name\":\"QCU-FMS System\"}', NULL, '2023-05-15 00:03:04', '2023-05-15 00:03:04'),
('75719e7c-5ada-42ce-a9cc-6355ec80426e', 'App\\Notifications\\WeeklyReminderNotification', 'App\\Models\\User', 90, '{\"subject\":\"Weekly Reminder.\",\"link\":\"https:\\/\\/qcu-fms.site\\/Faculty\\/Reports\\/Add-Report\\/add\\/1\\/14\",\"name\":\"QCU-FMS System\"}', '2023-05-08 14:56:33', '2023-05-08 11:54:04', '2023-05-08 14:56:33'),
('75b03f05-eaf2-4565-ae34-e52b4b5b8c31', 'App\\Notifications\\ReturnSubmittedReportNotification', 'App\\Models\\User', 95, '{\"subject\":\"Program Chair Retured Your Submitted Report.\",\"link\":\"https:\\/\\/qcu-fms.site\\/Faculty\\/Reports\\/View\\/16\\/hUTmVeBiaQgDJwqeCtVTtLlpyrsnJ4mNjnrO4dZhXazeXwKNhHDqC9xKg9vv\",\"name\":\"Anjo Panganiban\"}', NULL, '2023-05-10 10:57:14', '2023-05-10 10:57:14'),
('76ae748c-041b-440e-90f3-457f8fa1dda0', 'App\\Notifications\\AnnouncementPHNotification', 'App\\Models\\User', 5, '{\"subject\":\"Swimming tayo guys\",\"link\":\"https:\\/\\/try-latest.qcu-fms.site\\/AA\\/Notification\\/2\\/32He20LlSGPvf91Ha7UahqbhGnfsj6Kg2qNUj2LNy5nazrmVGOXbB7z1wAlI\\/announcement\",\"name\":\"Edward Pornelos\"}', '2023-05-09 02:56:54', '2023-05-09 02:54:57', '2023-05-09 02:56:54'),
('78d48bf3-4aef-4391-b9dd-8dbb421bb445', 'App\\Notifications\\WeeklyReminderNotification', 'App\\Models\\User', 91, '{\"subject\":\"Weekly Reminder.\",\"link\":\"http:\\/\\/127.0.0.1:8000\\/Faculty\\/Reports\\/Add-Report\\/add\\/2\\/21\",\"name\":\"QCU-FMS System\"}', NULL, '2023-05-15 00:05:07', '2023-05-15 00:05:07'),
('792480cc-19ba-43ed-b94a-25d6c417e080', 'App\\Notifications\\NotifyDeanPCAccountCreationNotification', 'App\\Models\\User', 60, '{\"subject\":\"Faculty Jhon Michel Sarmiento Account Created.\",\"link\":\"https:\\/\\/try-latest.qcu-fms.site\\/Program Chair\\/Faculty\\/List\\/View\\/FAC-000000025\\/MO1JVdOLvQ1mgoFCjkkJuWHRgrQWgCj6yuMqo0FjVnHqASAzEMsmc49bLKFN\",\"name\":\"Anjo Panganiban\"}', '2023-05-09 18:01:42', '2023-05-09 15:34:42', '2023-05-09 15:34:42'),
('7c255d98-f6da-42a1-ae1a-9e04647c6f01', 'App\\Notifications\\WeeklyReminderNotification', 'App\\Models\\User', 77, '{\"subject\":\"Weekly Reminder.\",\"link\":\"http:\\/\\/127.0.0.1:8000\\/Faculty\\/Reports\\/Add-Report\\/add\\/6\\/14\",\"name\":\"QCU-FMS System\"}', NULL, '2023-05-15 00:00:15', '2023-05-15 00:00:15'),
('7c7f8f75-aab9-401a-8809-731ad5daad6e', 'App\\Notifications\\NotifyDeanPCAccountCreationNotification', 'App\\Models\\User', 2, '{\"subject\":\"Faculty Jhon Michel Sarmiento Account Created.\",\"link\":\"https:\\/\\/try-latest.qcu-fms.site\\/Dean\\/Faculty\\/List\\/View\\/FAC-000000025\\/MO1JVdOLvQ1mgoFCjkkJuWHRgrQWgCj6yuMqo0FjVnHqASAzEMsmc49bLKFN\",\"name\":\"Anjo Panganiban\"}', '2023-05-09 18:01:42', '2023-05-09 15:34:42', '2023-05-09 15:34:42'),
('7efca5f6-9932-4dfe-85f1-26ce812039ec', 'App\\Notifications\\AnnouncementSecNotification', 'App\\Models\\User', 68, '{\"subject\":\"SAM102\",\"link\":\"https:\\/\\/qcu-fms.site\\/Faculty\\/Notification\\/5\\/DLpt4C9BmibfuvBuArplWkultMCmb4T7XQ0ojfw0d5v2XKmBdvbmMLanGXO2\\/announcement\",\"name\":\"Anjo Panganiban\"}', '2023-05-09 18:01:42', '2023-05-09 20:02:56', '2023-05-09 20:02:56'),
('7fe92925-55cb-4ea9-bf7a-657638926636', 'App\\Notifications\\WeeklyReminderNotification', 'App\\Models\\User', 86, '{\"subject\":\"Weekly Reminder.\",\"link\":\"http:\\/\\/127.0.0.1:8000\\/Faculty\\/Reports\\/Add-Report\\/add\\/5\\/21\",\"name\":\"QCU-FMS System\"}', NULL, '2023-05-15 00:02:07', '2023-05-15 00:02:07'),
('82afbd20-6432-4cd4-823f-9438d6f22265', 'App\\Notifications\\SentReportsHRNotification', 'App\\Models\\User', 3, '{\"subject\":\"Submitted Report\",\"link\":\"https:\\/\\/qcu-fms.site\\/HR\\/Notification\\/FAC-000000026\\/1IYf\\/reports\",\"name\":\"Testing Faculty Testing\"}', NULL, '2023-05-10 10:50:52', '2023-05-10 10:50:52'),
('830fe741-4082-4a07-8b38-03ea12dfe033', 'App\\Notifications\\ReadyForScheduleCreationNotification', 'App\\Models\\User', 60, '{\"subject\":\"Faculty Josol Ready for Schedule Creation.\",\"link\":\"https:\\/\\/try-latest.qcu-fms.site\\/Program Chair\\/Faculty\\/Schedules\\/FAC-000000022\\/K4rqSdVL4UjqUdDxiElZMKYNbuNMl9tWzyiAeLuLoeDsakxDdv4kVrlsXyhO\",\"name\":\"Christina Josol\"}', '2023-05-09 18:01:42', '2023-05-09 02:40:16', '2023-05-09 02:40:16'),
('83a2d3b3-f16a-4da7-b4f9-37036cf962b9', 'App\\Notifications\\SentToDeanNotification', 'App\\Models\\User', 2, '{\"subject\":\"Program Chair Send Faculty Schedule.\",\"link\":\"https:\\/\\/try-latest.qcu-fms.site\\/Dean\\/Faculty\\/Schedules\\/FAC-000000022\\/K4rqSdVL4UjqUdDxiElZMKYNbuNMl9tWzyiAeLuLoeDsakxDdv4kVrlsXyhO\",\"name\":\"Chirstina Josol\"}', '2023-05-09 03:09:11', '2023-05-09 02:45:49', '2023-05-09 03:09:11'),
('853f1c28-29c7-459e-85ba-de14bf0276f3', 'App\\Notifications\\NotifyDeanSubmittedReportNotification', 'App\\Models\\User', 2, '{\"subject\":\"Program Chair Signed Submitted Report.\",\"link\":\"https:\\/\\/qcu-fms.site\\/Dean\\/Faculty\\/Compiled\\/Reports\\/FAC-000000026\\/5dcn\",\"name\":\"Chirstina Josol\"}', '2023-05-09 18:46:57', '2023-05-09 18:46:34', '2023-05-09 18:46:57'),
('857fed0b-918b-46c3-986e-1b364dfac19e', 'App\\Notifications\\MissingWeeklyNotification', 'App\\Models\\User', 90, '{\"subject\":\"You Missed Your Weekly.\",\"link\":\"https:\\/\\/qcu-fms.site\\/Faculty\\/Reports\\/Add-Report\\/missing\\/1\\/21\",\"name\":\"QCU-FMS System\"}', '2023-05-09 18:01:42', '2023-05-09 00:03:02', '2023-05-09 00:03:02'),
('860f6d94-f66d-40cc-b8d6-6b3879ac0825', 'App\\Notifications\\NotifyDeanPCAccountCreationNotification', 'App\\Models\\User', 60, '{\"subject\":\"Faculty Clarissa Pacetes Account Created.\",\"link\":\"https:\\/\\/qcu-fms.site\\/Program Chair\\/Faculty\\/List\\/View\\/FAC-000000027\\/cCqoN9F4psyV0IogcyzDQeHF6LKHAp0cZRekfqnUtFVohh7Imgxp7b8pL5hv\",\"name\":\"Anjo Panganiban\"}', '2023-05-09 18:01:42', '2023-05-10 03:59:33', '2023-05-10 03:59:33'),
('89787405-d52d-40ee-ab5f-49337c351b73', 'App\\Notifications\\WeeklyReminderNotification', 'App\\Models\\User', 90, '{\"subject\":\"Weekly Reminder.\",\"link\":\"http:\\/\\/127.0.0.1:8000\\/Faculty\\/Reports\\/Add-Report\\/add\\/4\\/14\",\"name\":\"QCU-FMS System\"}', NULL, '2023-05-15 00:08:02', '2023-05-15 00:08:02'),
('898991c8-e145-4876-a02a-aaadc88af7fb', 'App\\Notifications\\WeeklyReminderNotification', 'App\\Models\\User', 91, '{\"subject\":\"Weekly Reminder.\",\"link\":\"http:\\/\\/127.0.0.1:8000\\/Faculty\\/Reports\\/Add-Report\\/add\\/3\\/14\",\"name\":\"QCU-FMS System\"}', NULL, '2023-05-15 00:13:02', '2023-05-15 00:13:02'),
('8b958c23-474d-40b0-b1c4-26b1a16d7b67', 'App\\Notifications\\AddLoadToFacultyNotification', 'App\\Models\\User', 105, '{\"subject\":\"Faculty Edward Pornelos Schedule.\",\"link\":\"https:\\/\\/qcu-fms.site\\/Faculty\\/Class_Schedule\",\"name\":\"Chirstina Josol\"}', NULL, '2023-05-10 10:43:33', '2023-05-10 10:43:33'),
('8d10e2ba-a0e6-4b85-8dbc-6d3301d7f216', 'App\\Notifications\\WeeklyReminderNotification', 'App\\Models\\User', 77, '{\"subject\":\"Weekly Reminder.\",\"link\":\"http:\\/\\/127.0.0.1:8000\\/Faculty\\/Reports\\/Add-Report\\/add\\/4\\/14\",\"name\":\"QCU-FMS System\"}', NULL, '2023-05-15 00:01:02', '2023-05-15 00:01:02'),
('8d758451-7380-45bd-9993-2aaf4867ea82', 'App\\Notifications\\AnnouncementSecNotification', 'App\\Models\\User', 89, '{\"subject\":\"SAM102\",\"link\":\"https:\\/\\/qcu-fms.site\\/Faculty\\/Notification\\/12\\/u7DYfIUaHit7nLOIFbvpXSlU5Y1vNtOL4hyRO8wvgnp8jgZZSSjwezODiF1e\\/announcement\",\"name\":\"Anjo Panganiban\"}', '2023-05-09 18:01:42', '2023-05-09 20:03:13', '2023-05-09 20:03:13'),
('8d87c524-07eb-4d52-aa9a-3bada70236ec', 'App\\Notifications\\AddLoadToFacultyNotification', 'App\\Models\\User', 105, '{\"subject\":\"Faculty Edward Pornelos Schedule.\",\"link\":\"https:\\/\\/qcu-fms.site\\/Faculty\\/Class_Schedule\",\"name\":\"Chirstina Josol\"}', NULL, '2023-05-10 10:36:46', '2023-05-10 10:36:46'),
('8da59a93-fd08-4bd2-9716-fb3357e5e6b2', 'App\\Notifications\\MissingWeeklyNotification', 'App\\Models\\User', 86, '{\"subject\":\"You Missed Your Weekly.\",\"link\":\"https:\\/\\/qcu-fms.site\\/Faculty\\/Reports\\/Add-Report\\/missing\\/2\\/14\",\"name\":\"QCU-FMS System\"}', '2023-05-09 18:01:42', '2023-05-09 00:02:05', '2023-05-09 00:02:05'),
('8daf8f2a-9a18-4703-9af7-41c797b8dcc6', 'App\\Notifications\\AnnouncementSecNotification', 'App\\Models\\User', 75, '{\"subject\":\"Practicum102\",\"link\":\"https:\\/\\/qcu-fms.site\\/Faculty\\/Notification\\/4\\/a83fPYg0qk0WXhueiadfdVhZw5k7hc9vwFhzIvfhvXNQume5olwWID55rz0w\\/announcement\",\"name\":\"Anjo Panganiban\"}', '2023-05-09 18:01:42', '2023-05-09 20:01:05', '2023-05-09 20:01:05'),
('8e7dedd1-a9f3-4142-b3ff-493ecdac107a', 'App\\Notifications\\AnnouncementSecNotification', 'App\\Models\\User', 91, '{\"subject\":\"Swimming tayo guys\",\"link\":\"https:\\/\\/try-latest.qcu-fms.site\\/Faculty\\/Notification\\/3\\/c67BzOBBhGtMf6dpR4M9pt0UcGoIjpuAGvfSgyW8BYxxKZxL6M0k9qm0IHiG\\/announcement\",\"name\":\"Chedrick Rowy\"}', '2023-05-09 18:01:42', '2023-05-09 02:59:10', '2023-05-09 02:59:10'),
('8ea1a2fa-d194-43e0-931f-9a2b4c63f521', 'App\\Notifications\\WeeklyReminderNotification', 'App\\Models\\User', 91, '{\"subject\":\"Weekly Reminder.\",\"link\":\"http:\\/\\/127.0.0.1:8000\\/Faculty\\/Reports\\/Add-Report\\/add\\/3\\/21\",\"name\":\"QCU-FMS System\"}', NULL, '2023-05-15 00:18:02', '2023-05-15 00:18:02'),
('8fe192c9-0558-4094-9440-b7dd95b7c98b', 'App\\Notifications\\WeeklyReminderNotification', 'App\\Models\\User', 77, '{\"subject\":\"Weekly Reminder.\",\"link\":\"http:\\/\\/127.0.0.1:8000\\/Faculty\\/Reports\\/Add-Report\\/add\\/3\\/21\",\"name\":\"QCU-FMS System\"}', NULL, '2023-05-15 00:02:02', '2023-05-15 00:02:02'),
('9077584d-e9d8-4abc-8ea0-9aac750d89e4', 'App\\Notifications\\NotifyDeanPCAccountCreationNotification', 'App\\Models\\User', 2, '{\"subject\":\"Faculty Jhon Michel Sarmiento Account Created.\",\"link\":\"https:\\/\\/try-latest.qcu-fms.site\\/Dean\\/Faculty\\/List\\/View\\/FAC-000000024\\/uBzX5TpwCd3QQszKaIouCavHPHNQcqPVqR8WQEhdTye06bWmBQQRdfl3Tx0q\",\"name\":\"Anjo Panganiban\"}', '2023-05-09 18:01:42', '2023-05-09 15:32:10', '2023-05-09 15:32:10'),
('90ea51b4-c515-4213-be3c-fe1c178f9213', 'App\\Notifications\\MissingWeeklyNotification', 'App\\Models\\User', 94, '{\"subject\":\"You Missed Your Weekly.\",\"link\":\"https:\\/\\/qcu-fms.site\\/Faculty\\/Reports\\/Add-Report\\/missing\\/10\\/4\",\"name\":\"QCU-FMS System\"}', '2023-05-09 18:01:42', '2023-05-09 15:55:11', '2023-05-09 15:55:11'),
('91a6bfc9-5cde-40f6-8752-dcf0b4fb436b', 'App\\Notifications\\FacultyScheduleNotification', 'App\\Models\\User', 90, '{\"subject\":\"Faculty Mel John Rich Briones Schedule Approved.\",\"link\":\"https:\\/\\/try-latest.qcu-fms.site\\/Faculty\\/Class_Schedule\",\"name\":\"Leah Dela Cruz\"}', '2023-05-08 14:56:24', '2023-05-08 12:01:43', '2023-05-08 14:56:24'),
('91e5a41e-290f-4272-a924-cd243daf9301', 'App\\Notifications\\WeeklyReminderNotification', 'App\\Models\\User', 86, '{\"subject\":\"Weekly Reminder.\",\"link\":\"http:\\/\\/127.0.0.1:8000\\/Faculty\\/Reports\\/Add-Report\\/add\\/6\\/21\",\"name\":\"QCU-FMS System\"}', NULL, '2023-05-15 00:07:02', '2023-05-15 00:07:02'),
('948c1433-69a0-4f0e-aaca-98e8b0bddaf7', 'App\\Notifications\\NotifyDeanPCAccountCreationNotification', 'App\\Models\\User', 2, '{\"subject\":\"Faculty Jhon Michel Sarmiento Account Created.\",\"link\":\"https:\\/\\/try-latest.qcu-fms.site\\/Dean\\/Faculty\\/List\\/View\\/FAC-000000023\\/FmMC40NSaAaPtA68zY08fQ2VWuJjFACnDKnXJRApuucF1NIlWHCqOO66db5m\",\"name\":\"Anjo Panganiban\"}', '2023-05-09 18:01:42', '2023-05-09 15:29:26', '2023-05-09 15:29:26'),
('94908384-218d-4d3c-bb5a-3ba47cdbae93', 'App\\Notifications\\WeeklyReminderNotification', 'App\\Models\\User', 95, '{\"subject\":\"Weekly Reminder.\",\"link\":\"https:\\/\\/qcu-fms.site\\/Faculty\\/Reports\\/Add-Report\\/add\\/1\\/4\",\"name\":\"QCU-FMS System\"}', '2023-05-09 18:01:42', '2023-05-09 17:37:03', '2023-05-09 17:37:03'),
('97f6dd75-b510-45ac-b958-19836f6acfa4', 'App\\Notifications\\SentToDeanNotification', 'App\\Models\\User', 2, '{\"subject\":\"Program Chair Send Faculty Schedule.\",\"link\":\"https:\\/\\/try-latest.qcu-fms.site\\/Dean\\/Faculty\\/Schedules\\/FAC-000000021\\/xGSAK4kRW75qFFmSmAVCczNCpLzoyZiHgqh57g7E0gw374exwRxgRgR2XOrw\",\"name\":\"Chirstina Josol\"}', '2023-05-09 18:01:42', '2023-05-08 12:00:34', '2023-05-08 12:00:34'),
('9c9f2c0f-aff1-4332-9af7-2c15bd32af29', 'App\\Notifications\\WeeklyReminderNotification', 'App\\Models\\User', 75, '{\"subject\":\"Weekly Reminder.\",\"link\":\"http:\\/\\/127.0.0.1:8000\\/Faculty\\/Reports\\/Add-Report\\/add\\/6\\/14\",\"name\":\"QCU-FMS System\"}', NULL, '2023-05-15 00:00:13', '2023-05-15 00:00:13'),
('9d207dbd-5ce5-44f0-99ef-363ce6790428', 'App\\Notifications\\WeeklyReminderNotification', 'App\\Models\\User', 91, '{\"subject\":\"Weekly Reminder.\",\"link\":\"http:\\/\\/127.0.0.1:8000\\/Faculty\\/Reports\\/Add-Report\\/add\\/2\\/21\",\"name\":\"QCU-FMS System\"}', NULL, '2023-05-15 00:17:02', '2023-05-15 00:17:02'),
('9d841c45-060b-4408-954d-211592e2fb96', 'App\\Notifications\\NotifyDeanPCAccountCreationNotification', 'App\\Models\\User', 60, '{\"subject\":\"Faculty Edward Pornelos Account Created.\",\"link\":\"https:\\/\\/qcu-fms.site\\/Program Chair\\/Faculty\\/List\\/View\\/FAC-000000028\\/9BFrH2S8PCHt5iYIVWEFzwOMAmKksGHtsQmpGVCflZ7KzY2huAf3y9L6SbsU\",\"name\":\"Anjo Panganiban\"}', NULL, '2023-05-10 10:08:01', '2023-05-10 10:08:01'),
('9dc1716f-4711-4d37-9cfc-4358c33a6eec', 'App\\Notifications\\WeeklyReminderNotification', 'App\\Models\\User', 91, '{\"subject\":\"Weekly Reminder.\",\"link\":\"http:\\/\\/127.0.0.1:8000\\/Faculty\\/Reports\\/Add-Report\\/add\\/4\\/21\",\"name\":\"QCU-FMS System\"}', NULL, '2023-05-15 00:19:02', '2023-05-15 00:19:02'),
('9f7c3376-b9eb-4de8-a591-e3a40c1b582d', 'App\\Notifications\\WeeklyReminderNotification', 'App\\Models\\User', 91, '{\"subject\":\"Weekly Reminder.\",\"link\":\"http:\\/\\/127.0.0.1:8000\\/Faculty\\/Reports\\/Add-Report\\/add\\/3\\/14\",\"name\":\"QCU-FMS System\"}', NULL, '2023-05-15 00:07:06', '2023-05-15 00:07:06'),
('9fc46587-adb0-44f7-b225-5d67f65dccf1', 'App\\Notifications\\SendSchedulePHCHNotification', 'App\\Models\\User', 5, '{\"subject\":\"Modified Faculty Edward Pornelos Schedule.\",\"link\":\"https:\\/\\/qcu-fms.site\\/AA\\/Faculty\\/Schedules\\/FAC-000000028\\/9BFrH2S8PCHt5iYIVWEFzwOMAmKksGHtsQmpGVCflZ7KzY2huAf3y9L6SbsU\",\"name\":\"Chirstina Josol\"}', NULL, '2023-05-10 10:35:31', '2023-05-10 10:35:31'),
('a00f8092-89df-4919-8a09-3d9cf9c6d2b7', 'App\\Notifications\\NotifyDeanSubmittedReportNotification', 'App\\Models\\User', 2, '{\"subject\":\"Program Chair Signed Submitted Report.\",\"link\":\"https:\\/\\/try-latest.qcu-fms.site\\/Dean\\/Faculty\\/Compiled\\/Reports\\/FAC-000000026\\/eqF7\",\"name\":\"Chirstina Josol\"}', '2023-05-09 18:04:02', '2023-05-09 18:02:49', '2023-05-09 18:04:02'),
('a10b68d8-c846-4d97-a608-012c0476b976', 'App\\Notifications\\WeeklyReminderNotification', 'App\\Models\\User', 80, '{\"subject\":\"Weekly Reminder.\",\"link\":\"http:\\/\\/127.0.0.1:8000\\/Faculty\\/Reports\\/Add-Report\\/add\\/6\\/21\",\"name\":\"QCU-FMS System\"}', NULL, '2023-05-15 00:04:02', '2023-05-15 00:04:02'),
('a1581ce8-405d-4062-b1e4-b19bdf3a17b2', 'App\\Notifications\\WeeklyReminderNotification', 'App\\Models\\User', 91, '{\"subject\":\"Weekly Reminder.\",\"link\":\"http:\\/\\/127.0.0.1:8000\\/Faculty\\/Reports\\/Add-Report\\/add\\/6\\/14\",\"name\":\"QCU-FMS System\"}', NULL, '2023-05-15 00:16:02', '2023-05-15 00:16:02'),
('a2cd4d74-fbf5-4bd1-8254-3bda53a8320d', 'App\\Notifications\\WeeklyReminderNotification', 'App\\Models\\User', 80, '{\"subject\":\"Weekly Reminder.\",\"link\":\"http:\\/\\/127.0.0.1:8000\\/Faculty\\/Reports\\/Add-Report\\/add\\/3\\/14\",\"name\":\"QCU-FMS System\"}', NULL, '2023-05-15 00:03:02', '2023-05-15 00:03:02'),
('a4cee22e-4328-4594-b73a-d61b99a778b7', 'App\\Notifications\\AddLoadToFacultyNotification', 'App\\Models\\User', 94, '{\"subject\":\"Faculty Jhon Michel Sarmiento Schedule.\",\"link\":\"https:\\/\\/try-latest.qcu-fms.site\\/Faculty\\/Class_Schedule\",\"name\":\"Chirstina Josol\"}', '2023-05-09 18:01:42', '2023-05-09 15:50:35', '2023-05-09 15:50:35'),
('a54919a5-f802-4744-99e8-31ed1d526dec', 'App\\Notifications\\WeeklyReminderNotification', 'App\\Models\\User', 91, '{\"subject\":\"Weekly Reminder.\",\"link\":\"http:\\/\\/127.0.0.1:8000\\/Faculty\\/Reports\\/Add-Report\\/add\\/3\\/21\",\"name\":\"QCU-FMS System\"}', NULL, '2023-05-15 00:10:05', '2023-05-15 00:10:05'),
('a5bd5fe6-b947-46c3-a92e-a8e1b79d1c72', 'App\\Notifications\\WeeklyReminderNotification', 'App\\Models\\User', 68, '{\"subject\":\"Weekly Reminder.\",\"link\":\"http:\\/\\/127.0.0.1:8000\\/Faculty\\/Reports\\/Add-Report\\/add\\/3\\/21\",\"name\":\"QCU-FMS System\"}', NULL, '2023-05-13 21:43:08', '2023-05-13 21:43:08'),
('a91ac954-3b85-4c4a-9968-c55efdd3e1ca', 'App\\Notifications\\NotifyDeanSubmittedReportNotification', 'App\\Models\\User', 95, '{\"subject\":\"Program Chair Signed Submitted Report.\",\"link\":\"https:\\/\\/try-latest.qcu-fms.site\\/Faculty\\/Reports?status=1\",\"name\":\"Chirstina Josol\"}', '2023-05-09 18:01:42', '2023-05-09 18:02:47', '2023-05-09 18:02:47'),
('a9a96c80-7ba8-4978-b39a-388a9ab99701', 'App\\Notifications\\NotifyDeanPCAccountCreationNotification', 'App\\Models\\User', 60, '{\"subject\":\"Faculty Jhon Michel Sarmiento Account Created.\",\"link\":\"https:\\/\\/try-latest.qcu-fms.site\\/Program Chair\\/Faculty\\/List\\/View\\/FAC-000000023\\/FmMC40NSaAaPtA68zY08fQ2VWuJjFACnDKnXJRApuucF1NIlWHCqOO66db5m\",\"name\":\"Anjo Panganiban\"}', '2023-05-09 18:01:42', '2023-05-09 15:29:26', '2023-05-09 15:29:26'),
('aac345d5-0d40-4b94-9282-901223d67868', 'App\\Notifications\\SendSchedulePHCHNotification', 'App\\Models\\User', 5, '{\"subject\":\"Modified Faculty Edward Pornelos Schedule.\",\"link\":\"https:\\/\\/qcu-fms.site\\/AA\\/Faculty\\/Schedules\\/FAC-000000028\\/9BFrH2S8PCHt5iYIVWEFzwOMAmKksGHtsQmpGVCflZ7KzY2huAf3y9L6SbsU\",\"name\":\"Chirstina Josol\"}', NULL, '2023-05-10 10:18:31', '2023-05-10 10:18:31'),
('ac14d1dc-96f0-462b-833c-b7372a4de936', 'App\\Notifications\\AnnouncementSecNotification', 'App\\Models\\User', 95, '{\"subject\":\"SAM102\",\"link\":\"https:\\/\\/qcu-fms.site\\/Faculty\\/Notification\\/16\\/YVc66DkujNIbTDGht2tU8BF7Fo8AvcOh2lBtZEy9Iust33euVAeP3ZMOnbzZ\\/announcement\",\"name\":\"Anjo Panganiban\"}', '2023-05-09 18:01:42', '2023-05-09 20:03:21', '2023-05-09 20:03:21'),
('b193f518-b549-4dc8-8c7e-cbf909dc3686', 'App\\Notifications\\SentReportsHRNotification', 'App\\Models\\User', 3, '{\"subject\":\"Submitted Report\",\"link\":\"https:\\/\\/qcu-fms.site\\/HR\\/Notification\\/FAC-000000026\\/tXyy\\/reports\",\"name\":\"Testing Faculty Testing\"}', '2023-05-09 18:01:42', '2023-05-09 18:34:00', '2023-05-09 18:34:00'),
('b5fe4961-ede0-4016-924d-3bdc913c33c5', 'App\\Notifications\\FacultyScheduleToHigherUpsNotification', 'App\\Models\\User', 60, '{\"subject\":\"Faculty Christina Josol Schedule Approved.\",\"link\":\"https:\\/\\/try-latest.qcu-fms.site\\/Program Chair\\/Faculty\\/Schedules\\/FAC-000000022\\/K4rqSdVL4UjqUdDxiElZMKYNbuNMl9tWzyiAeLuLoeDsakxDdv4kVrlsXyhO\",\"name\":\"Leah Dela Cruz\"}', '2023-05-09 18:01:42', '2023-05-09 03:10:43', '2023-05-09 03:10:43'),
('b9cc667a-66ba-4c3b-a0e4-5d1c09ad679f', 'App\\Notifications\\SendSchedulePHCHNotification', 'App\\Models\\User', 2, '{\"subject\":\"Modified Faculty Edward Pornelos Schedule.\",\"link\":\"https:\\/\\/qcu-fms.site\\/Dean\\/Faculty\\/Schedules\\/FAC-000000028\\/9BFrH2S8PCHt5iYIVWEFzwOMAmKksGHtsQmpGVCflZ7KzY2huAf3y9L6SbsU\",\"name\":\"Chirstina Josol\"}', NULL, '2023-05-10 10:43:26', '2023-05-10 10:43:26'),
('baf7b974-364c-4892-96d7-0c833a5ff827', 'App\\Notifications\\SendSchedulePHCHNotification', 'App\\Models\\User', 2, '{\"subject\":\"Modified Faculty Testing Faculty Testing Schedule.\",\"link\":\"https:\\/\\/try-latest.qcu-fms.site\\/Dean\\/Faculty\\/Schedules\\/FAC-000000026\\/lNvXzh57BOwo41Gv7gtyp04ro7V42yljvijLHlxvjMv3Nk3k2JXKeIb0zT7c\",\"name\":\"Chirstina Josol\"}', '2023-05-09 18:01:42', '2023-05-09 17:35:32', '2023-05-09 17:35:32'),
('bd81944e-0a30-4794-8289-3224df3470e9', 'App\\Notifications\\NotifyDeanPCAccountCreationNotification', 'App\\Models\\User', 2, '{\"subject\":\"Faculty Christina Josol Schedule.\",\"link\":\"https:\\/\\/try-latest.qcu-fms.site\\/Dean\\/Faculty\\/List\\/View\\/FAC-000000022\\/K4rqSdVL4UjqUdDxiElZMKYNbuNMl9tWzyiAeLuLoeDsakxDdv4kVrlsXyhO\",\"name\":\"Anjo Panganiban\"}', '2023-05-09 18:01:42', '2023-05-09 02:37:19', '2023-05-09 02:37:19'),
('bfd300d2-f86f-4759-ab7a-398caba08343', 'App\\Notifications\\MissingWeeklyNotification', 'App\\Models\\User', 80, '{\"subject\":\"You Missed Your Weekly.\",\"link\":\"https:\\/\\/qcu-fms.site\\/Faculty\\/Reports\\/Add-Report\\/missing\\/5\\/14\",\"name\":\"QCU-FMS System\"}', '2023-05-09 18:01:42', '2023-05-09 00:00:16', '2023-05-09 00:00:16'),
('c46ae8f1-6905-443e-aaf9-4c49d6b596da', 'App\\Notifications\\WeeklyReminderNotification', 'App\\Models\\User', 91, '{\"subject\":\"Weekly Reminder.\",\"link\":\"http:\\/\\/127.0.0.1:8000\\/Faculty\\/Reports\\/Add-Report\\/add\\/2\\/21\",\"name\":\"QCU-FMS System\"}', NULL, '2023-05-15 00:01:12', '2023-05-15 00:01:12'),
('c73a434b-6b5b-4c98-8a9b-b9a722be0e5a', 'App\\Notifications\\MissingWeeklyNotification', 'App\\Models\\User', 68, '{\"subject\":\"You Missed Your Weekly.\",\"link\":\"https:\\/\\/qcu-fms.site\\/Faculty\\/Reports\\/Add-Report\\/missing\\/4\\/21\",\"name\":\"QCU-FMS System\"}', '2023-05-09 18:01:42', '2023-05-09 00:00:03', '2023-05-09 00:00:03'),
('c7b9ec70-4b74-4de8-b910-02f5c949f938', 'App\\Notifications\\WeeklyReminderNotification', 'App\\Models\\User', 91, '{\"subject\":\"Weekly Reminder.\",\"link\":\"http:\\/\\/127.0.0.1:8000\\/Faculty\\/Reports\\/Add-Report\\/add\\/2\\/14\",\"name\":\"QCU-FMS System\"}', NULL, '2023-05-15 00:12:04', '2023-05-15 00:12:04'),
('ca2d204b-5354-4e82-ac58-8e117b5cb2d8', 'App\\Notifications\\WeeklyReminderNotification', 'App\\Models\\User', 86, '{\"subject\":\"Weekly Reminder.\",\"link\":\"http:\\/\\/127.0.0.1:8000\\/Faculty\\/Reports\\/Add-Report\\/add\\/6\\/14\",\"name\":\"QCU-FMS System\"}', NULL, '2023-05-15 00:00:19', '2023-05-15 00:00:19'),
('ca5e385b-f6ed-4a46-8530-368e4fc5f8dd', 'App\\Notifications\\NotifyDeanPCAccountCreationNotification', 'App\\Models\\User', 2, '{\"subject\":\"Faculty Clarissa Pacetes Account Created.\",\"link\":\"https:\\/\\/qcu-fms.site\\/Dean\\/Faculty\\/List\\/View\\/FAC-000000027\\/cCqoN9F4psyV0IogcyzDQeHF6LKHAp0cZRekfqnUtFVohh7Imgxp7b8pL5hv\",\"name\":\"Anjo Panganiban\"}', '2023-05-09 18:01:42', '2023-05-10 03:59:33', '2023-05-10 03:59:33'),
('cb26160e-f435-4a04-97d3-eae6a2671bbf', 'App\\Notifications\\MissingWeeklyNotification', 'App\\Models\\User', 86, '{\"subject\":\"You Missed Your Weekly.\",\"link\":\"https:\\/\\/qcu-fms.site\\/Faculty\\/Reports\\/Add-Report\\/missing\\/3\\/21\",\"name\":\"QCU-FMS System\"}', '2023-05-09 18:01:42', '2023-05-09 00:01:06', '2023-05-09 00:01:06'),
('ce35c881-fa9d-4506-be9c-51919d354418', 'App\\Notifications\\WeeklyReminderNotification', 'App\\Models\\User', 91, '{\"subject\":\"Weekly Reminder.\",\"link\":\"http:\\/\\/127.0.0.1:8000\\/Faculty\\/Reports\\/Add-Report\\/add\\/5\\/21\",\"name\":\"QCU-FMS System\"}', NULL, '2023-05-15 00:20:02', '2023-05-15 00:20:02'),
('cf9c6609-4efb-496b-8553-af6dae14e8fb', 'App\\Notifications\\WeeklyReminderNotification', 'App\\Models\\User', 86, '{\"subject\":\"Weekly Reminder.\",\"link\":\"http:\\/\\/127.0.0.1:8000\\/Faculty\\/Reports\\/Add-Report\\/add\\/3\\/21\",\"name\":\"QCU-FMS System\"}', NULL, '2023-05-15 00:06:01', '2023-05-15 00:06:01'),
('d267b5a3-3c27-48ac-8e54-83b2b6be4eec', 'App\\Notifications\\WeeklyReminderNotification', 'App\\Models\\User', 68, '{\"subject\":\"Weekly Reminder.\",\"link\":\"http:\\/\\/127.0.0.1:8000\\/Faculty\\/Reports\\/Add-Report\\/add\\/6\\/21\",\"name\":\"QCU-FMS System\"}', NULL, '2023-05-15 00:00:04', '2023-05-15 00:00:04'),
('d3048864-61d9-4a3c-b202-5b7aab6c7316', 'App\\Notifications\\WeeklyReminderNotification', 'App\\Models\\User', 86, '{\"subject\":\"Weekly Reminder.\",\"link\":\"http:\\/\\/127.0.0.1:8000\\/Faculty\\/Reports\\/Add-Report\\/add\\/6\\/14\",\"name\":\"QCU-FMS System\"}', NULL, '2023-05-15 00:05:02', '2023-05-15 00:05:02'),
('d414dcd9-165d-43eb-99c2-555712fecde3', 'App\\Notifications\\WeeklyReminderNotification', 'App\\Models\\User', 91, '{\"subject\":\"Weekly Reminder.\",\"link\":\"http:\\/\\/127.0.0.1:8000\\/Faculty\\/Reports\\/Add-Report\\/add\\/5\\/21\",\"name\":\"QCU-FMS System\"}', NULL, '2023-05-15 00:06:06', '2023-05-15 00:06:06');
INSERT INTO `notifications` (`id`, `type`, `notifiable_type`, `notifiable_id`, `data`, `read_at`, `created_at`, `updated_at`) VALUES
('d43e245b-64a4-4ec6-9407-edbf5869d0b7', 'App\\Notifications\\MissingWeeklyNotification', 'App\\Models\\User', 86, '{\"subject\":\"You Missed Your Weekly.\",\"link\":\"https:\\/\\/qcu-fms.site\\/Faculty\\/Reports\\/Add-Report\\/missing\\/5\\/21\",\"name\":\"QCU-FMS System\"}', '2023-05-09 18:01:42', '2023-05-09 00:00:18', '2023-05-09 00:00:18'),
('d55b87e2-a40e-464e-8aa2-ae73afd9b89d', 'App\\Notifications\\SendSchedulePHCHNotification', 'App\\Models\\User', 2, '{\"subject\":\"Modified Faculty Edward Pornelos Schedule.\",\"link\":\"https:\\/\\/qcu-fms.site\\/Dean\\/Faculty\\/Schedules\\/FAC-000000028\\/9BFrH2S8PCHt5iYIVWEFzwOMAmKksGHtsQmpGVCflZ7KzY2huAf3y9L6SbsU\",\"name\":\"Chirstina Josol\"}', NULL, '2023-05-10 10:18:29', '2023-05-10 10:18:29'),
('d7fac754-b84a-4b69-b19f-a4d43d517f83', 'App\\Notifications\\ReadyForScheduleCreationNotification', 'App\\Models\\User', 60, '{\"subject\":\"Faculty Sarmiento Ready for Schedule Creation.\",\"link\":\"https:\\/\\/try-latest.qcu-fms.site\\/Program Chair\\/Faculty\\/Schedules\\/FAC-000000025\\/MO1JVdOLvQ1mgoFCjkkJuWHRgrQWgCj6yuMqo0FjVnHqASAzEMsmc49bLKFN\",\"name\":\"Jhon Michel Sarmiento\"}', '2023-05-09 15:44:58', '2023-05-09 15:43:15', '2023-05-09 15:44:58'),
('d9faa010-68fe-4a76-afa1-83418f1b0439', 'App\\Notifications\\MissingWeeklyNotification', 'App\\Models\\User', 90, '{\"subject\":\"You Missed Your Weekly.\",\"link\":\"https:\\/\\/qcu-fms.site\\/Faculty\\/Reports\\/Add-Report\\/missing\\/5\\/14\",\"name\":\"QCU-FMS System\"}', '2023-05-09 18:01:42', '2023-05-09 00:00:21', '2023-05-09 00:00:21'),
('daa14422-6e35-4158-9707-19659b5067f3', 'App\\Notifications\\ReadyForScheduleCreationNotification', 'App\\Models\\User', 60, '{\"subject\":\"Faculty Briones Ready for Schedule Creation.\",\"link\":\"https:\\/\\/try-latest.qcu-fms.site\\/Program Chair\\/Faculty\\/Schedules\\/FAC-000000021\\/xGSAK4kRW75qFFmSmAVCczNCpLzoyZiHgqh57g7E0gw374exwRxgRgR2XOrw\",\"name\":\"Mel John Rich Briones\"}', '2023-05-09 18:01:42', '2023-05-08 11:45:09', '2023-05-08 11:45:09'),
('dae5899a-36c0-42a6-baa2-f0336cc602ff', 'App\\Notifications\\AnnouncementSecNotification', 'App\\Models\\User', 87, '{\"subject\":\"SAM102\",\"link\":\"https:\\/\\/qcu-fms.site\\/Faculty\\/Notification\\/11\\/swWHftchNa9Vdrcj0m6eQJRyWAIDDjL9UWjbnPj1DYaqiA4vZktSN03ENzDh\\/announcement\",\"name\":\"Anjo Panganiban\"}', '2023-05-09 18:01:42', '2023-05-09 20:03:10', '2023-05-09 20:03:10'),
('dbf02419-95f1-4f49-b8da-89e596003747', 'App\\Notifications\\SendToPHReportNotification', 'App\\Models\\User', 60, '{\"subject\":\"Compiled Faculty Report\",\"link\":\"https:\\/\\/try-latest.qcu-fms.site\\/Program Chair\\/Faculty\\/Compiled\\/Reports\\/FAC-000000026\\/eqF7\",\"name\":\"Anjo Panganiban\"}', '2023-05-09 18:02:17', '2023-05-09 18:01:51', '2023-05-09 18:02:17'),
('dd18b6aa-8dd1-4598-9512-e95cbb2496f3', 'App\\Notifications\\SentReportsHRNotification', 'App\\Models\\User', 5, '{\"subject\":\"Submitted Report\",\"link\":\"https:\\/\\/qcu-fms.site\\/AA\\/Faculty\\/Compiled\\/Reports\\/FAC-000000026\\/tXyy\",\"name\":\"Testing Faculty Testing\"}', '2023-05-09 18:35:17', '2023-05-09 18:33:58', '2023-05-09 18:35:17'),
('dd2ea109-9e29-4228-9397-fff174bcc57d', 'App\\Notifications\\AddLoadToFacultyNotification', 'App\\Models\\User', 105, '{\"subject\":\"Faculty Edward Pornelos Schedule.\",\"link\":\"https:\\/\\/qcu-fms.site\\/Faculty\\/Class_Schedule\",\"name\":\"Chirstina Josol\"}', NULL, '2023-05-10 10:18:36', '2023-05-10 10:18:36'),
('dd49ae77-d9c2-473e-ae94-6d6ce3395f20', 'App\\Notifications\\WeeklyReminderNotification', 'App\\Models\\User', 90, '{\"subject\":\"Weekly Reminder.\",\"link\":\"https:\\/\\/qcu-fms.site\\/Faculty\\/Reports\\/Add-Report\\/add\\/1\\/21\",\"name\":\"QCU-FMS System\"}', '2023-05-08 14:56:28', '2023-05-08 12:00:02', '2023-05-08 14:56:28'),
('ddaa7fd4-4c7a-45c4-9b53-e1d48b4df980', 'App\\Notifications\\MissingWeeklyNotification', 'App\\Models\\User', 91, '{\"subject\":\"You Missed Your Weekly.\",\"link\":\"https:\\/\\/qcu-fms.site\\/Faculty\\/Reports\\/Add-Report\\/missing\\/1\\/21\",\"name\":\"QCU-FMS System\"}', '2023-05-09 18:01:42', '2023-05-09 02:45:03', '2023-05-09 02:45:03'),
('e329bd55-97db-4cad-b8f5-3647f316f7e4', 'App\\Notifications\\ApproveFWCDeanNotification', 'App\\Models\\User', 5, '{\"subject\":\"Dean Approve Compiled Reports\",\"link\":\"https:\\/\\/qcu-fms.site\\/AA\\/Faculty\\/Compiled\\/Reports\\/FAC-000000026\\/5dcn\",\"name\":\"Leah Dela Cruz\"}', '2023-05-09 18:01:42', '2023-05-09 18:47:19', '2023-05-09 18:47:19'),
('e3974d18-a267-4ebd-a728-a284016f7f2e', 'App\\Notifications\\SendToPHReportNotification', 'App\\Models\\User', 60, '{\"subject\":\"Compiled Faculty Report\",\"link\":\"https:\\/\\/qcu-fms.site\\/Program Chair\\/Faculty\\/Compiled\\/Reports\\/FAC-000000026\\/5dcn\",\"name\":\"Anjo Panganiban\"}', '2023-05-09 18:46:17', '2023-05-09 18:45:46', '2023-05-09 18:46:17'),
('e3c5bcca-7e1b-41b2-a550-cd3bb25231b6', 'App\\Notifications\\WeeklyReminderNotification', 'App\\Models\\User', 91, '{\"subject\":\"Weekly Reminder.\",\"link\":\"http:\\/\\/127.0.0.1:8000\\/Faculty\\/Reports\\/Add-Report\\/add\\/6\\/14\",\"name\":\"QCU-FMS System\"}', NULL, '2023-05-15 00:09:04', '2023-05-15 00:09:04'),
('e47b46ee-e844-440e-b042-79ef129fedc8', 'App\\Notifications\\NotifyDeanPCAccountCreationNotification', 'App\\Models\\User', 2, '{\"subject\":\"Faculty Edward Pornelos Account Created.\",\"link\":\"https:\\/\\/qcu-fms.site\\/Dean\\/Faculty\\/List\\/View\\/FAC-000000028\\/9BFrH2S8PCHt5iYIVWEFzwOMAmKksGHtsQmpGVCflZ7KzY2huAf3y9L6SbsU\",\"name\":\"Anjo Panganiban\"}', NULL, '2023-05-10 10:08:01', '2023-05-10 10:08:01'),
('e4fc9fce-1ca6-409d-94dd-386d7c3e20f3', 'App\\Notifications\\WeeklyReminderNotification', 'App\\Models\\User', 91, '{\"subject\":\"Weekly Reminder.\",\"link\":\"http:\\/\\/127.0.0.1:8000\\/Faculty\\/Reports\\/Add-Report\\/add\\/3\\/14\",\"name\":\"QCU-FMS System\"}', NULL, '2023-05-15 00:00:24', '2023-05-15 00:00:24'),
('e51bb871-5b70-40a5-8b75-8d215954ba8d', 'App\\Notifications\\FacultyScheduleToHigherUpsNotification', 'App\\Models\\User', 60, '{\"subject\":\"Faculty Mel John Rich Briones Schedule Approved.\",\"link\":\"https:\\/\\/try-latest.qcu-fms.site\\/Program Chair\\/Faculty\\/Schedules\\/FAC-000000021\\/xGSAK4kRW75qFFmSmAVCczNCpLzoyZiHgqh57g7E0gw374exwRxgRgR2XOrw\",\"name\":\"Leah Dela Cruz\"}', '2023-05-09 18:01:42', '2023-05-08 12:01:43', '2023-05-08 12:01:43'),
('e5bd35f4-36d3-4e1a-97c7-7e8f8860cf85', 'App\\Notifications\\NotifyDeanSubmittedReportNotification', 'App\\Models\\User', 95, '{\"subject\":\"Program Chair Signed Submitted Report.\",\"link\":\"https:\\/\\/qcu-fms.site\\/Faculty\\/Reports?status=1\",\"name\":\"Chirstina Josol\"}', '2023-05-09 18:01:42', '2023-05-09 18:46:32', '2023-05-09 18:46:32'),
('e5f3b64d-92e5-4861-bbb7-ac99f10a7ee7', 'App\\Notifications\\SendSchedulePHCHNotification', 'App\\Models\\User', 2, '{\"subject\":\"Modified Faculty Clarissa Pacetes Schedule.\",\"link\":\"https:\\/\\/qcu-fms.site\\/Dean\\/Faculty\\/Schedules\\/FAC-000000027\\/cCqoN9F4psyV0IogcyzDQeHF6LKHAp0cZRekfqnUtFVohh7Imgxp7b8pL5hv\",\"name\":\"Chirstina Josol\"}', NULL, '2023-05-10 10:13:40', '2023-05-10 10:13:40'),
('e9b85847-2254-4203-ada5-5a01d3d04e63', 'App\\Notifications\\NotifyDeanPCAccountCreationNotification', 'App\\Models\\User', 60, '{\"subject\":\"Faculty Testing Faculty Testing Account Created.\",\"link\":\"https:\\/\\/try-latest.qcu-fms.site\\/Program Chair\\/Faculty\\/List\\/View\\/FAC-000000026\\/lNvXzh57BOwo41Gv7gtyp04ro7V42yljvijLHlxvjMv3Nk3k2JXKeIb0zT7c\",\"name\":\"Anjo Panganiban\"}', '2023-05-09 18:01:42', '2023-05-09 17:28:45', '2023-05-09 17:28:45'),
('eabae725-e5b8-425c-b8f8-5ce726f4df5b', 'App\\Notifications\\MissingWeeklyNotification', 'App\\Models\\User', 75, '{\"subject\":\"You Missed Your Weekly.\",\"link\":\"https:\\/\\/qcu-fms.site\\/Faculty\\/Reports\\/Add-Report\\/missing\\/5\\/21\",\"name\":\"QCU-FMS System\"}', '2023-05-09 18:01:42', '2023-05-09 00:00:11', '2023-05-09 00:00:11'),
('ebcce217-e4d2-4e1a-bd1f-284c37ec344f', 'App\\Notifications\\SendSchedulePHCHNotification', 'App\\Models\\User', 2, '{\"subject\":\"Modified Faculty Edward Pornelos Schedule.\",\"link\":\"https:\\/\\/qcu-fms.site\\/Dean\\/Faculty\\/Schedules\\/FAC-000000028\\/9BFrH2S8PCHt5iYIVWEFzwOMAmKksGHtsQmpGVCflZ7KzY2huAf3y9L6SbsU\",\"name\":\"Chirstina Josol\"}', NULL, '2023-05-10 10:20:43', '2023-05-10 10:20:43'),
('ecc51dec-98cf-4237-a071-8869dc296662', 'App\\Notifications\\NotifyDeanPCAccountCreationNotification', 'App\\Models\\User', 60, '{\"subject\":\"Faculty Christina Josol Schedule.\",\"link\":\"https:\\/\\/try-latest.qcu-fms.site\\/Program Chair\\/Faculty\\/List\\/View\\/FAC-000000022\\/K4rqSdVL4UjqUdDxiElZMKYNbuNMl9tWzyiAeLuLoeDsakxDdv4kVrlsXyhO\",\"name\":\"Anjo Panganiban\"}', '2023-05-09 18:01:42', '2023-05-09 02:37:19', '2023-05-09 02:37:19'),
('ef08b93e-9b87-4b97-945a-ca27a3f6cc7e', 'App\\Notifications\\MissingWeeklyNotification', 'App\\Models\\User', 90, '{\"subject\":\"You Missed Your Weekly.\",\"link\":\"https:\\/\\/qcu-fms.site\\/Faculty\\/Reports\\/Add-Report\\/missing\\/4\\/21\",\"name\":\"QCU-FMS System\"}', '2023-05-09 18:01:42', '2023-05-09 00:01:09', '2023-05-09 00:01:09'),
('ef19d75d-b1f8-416d-9841-026e3b668967', 'App\\Notifications\\FacultyScheduleNotification', 'App\\Models\\User', 91, '{\"subject\":\"Faculty Christina Josol Schedule Approved.\",\"link\":\"https:\\/\\/try-latest.qcu-fms.site\\/Faculty\\/Class_Schedule\",\"name\":\"Leah Dela Cruz\"}', '2023-05-09 03:11:22', '2023-05-09 03:10:43', '2023-05-09 03:11:22'),
('ef5168bb-bba1-4254-9f92-b7c40d705f9c', 'App\\Notifications\\WeeklyReminderNotification', 'App\\Models\\User', 90, '{\"subject\":\"Weekly Reminder.\",\"link\":\"http:\\/\\/127.0.0.1:8000\\/Faculty\\/Reports\\/Add-Report\\/add\\/2\\/14\",\"name\":\"QCU-FMS System\"}', NULL, '2023-05-15 00:07:04', '2023-05-15 00:07:04'),
('f154833f-21be-48a8-9572-216635009df2', 'App\\Notifications\\SendSchedulePHCHNotification', 'App\\Models\\User', 5, '{\"subject\":\"Modified Faculty Clarissa Pacetes Schedule.\",\"link\":\"https:\\/\\/qcu-fms.site\\/AA\\/Faculty\\/Schedules\\/FAC-000000027\\/cCqoN9F4psyV0IogcyzDQeHF6LKHAp0cZRekfqnUtFVohh7Imgxp7b8pL5hv\",\"name\":\"Chirstina Josol\"}', NULL, '2023-05-10 10:13:42', '2023-05-10 10:13:42'),
('f1f4e041-7a05-4840-a682-31784c7355af', 'App\\Notifications\\SendSchedulePHCHNotification', 'App\\Models\\User', 5, '{\"subject\":\"Modified Faculty Edward Pornelos Schedule.\",\"link\":\"https:\\/\\/qcu-fms.site\\/AA\\/Faculty\\/Schedules\\/FAC-000000028\\/9BFrH2S8PCHt5iYIVWEFzwOMAmKksGHtsQmpGVCflZ7KzY2huAf3y9L6SbsU\",\"name\":\"Chirstina Josol\"}', NULL, '2023-05-10 10:38:00', '2023-05-10 10:38:00'),
('f3c396cf-4791-44d0-90ac-d7a998496713', 'App\\Notifications\\WeeklyReminderNotification', 'App\\Models\\User', 90, '{\"subject\":\"Weekly Reminder.\",\"link\":\"http:\\/\\/127.0.0.1:8000\\/Faculty\\/Reports\\/Add-Report\\/add\\/5\\/14\",\"name\":\"QCU-FMS System\"}', NULL, '2023-05-15 00:03:06', '2023-05-15 00:03:06'),
('f3fc2019-8d70-46c5-85b8-4363e3237526', 'App\\Notifications\\MissingWeeklyNotification', 'App\\Models\\User', 91, '{\"subject\":\"You Missed Your Weekly.\",\"link\":\"https:\\/\\/qcu-fms.site\\/Faculty\\/Reports\\/Add-Report\\/missing\\/1\\/14\",\"name\":\"QCU-FMS System\"}', '2023-05-09 18:01:42', '2023-05-09 02:44:02', '2023-05-09 02:44:02'),
('f5c5cc72-bfd7-41bc-90a8-a197223e9708', 'App\\Notifications\\WeeklyReminderNotification', 'App\\Models\\User', 80, '{\"subject\":\"Weekly Reminder.\",\"link\":\"http:\\/\\/127.0.0.1:8000\\/Faculty\\/Reports\\/Add-Report\\/add\\/6\\/21\",\"name\":\"QCU-FMS System\"}', NULL, '2023-05-15 00:00:17', '2023-05-15 00:00:17'),
('f9ba63e1-ee88-4356-a86c-c8ed0394edcb', 'App\\Notifications\\WeeklyReminderNotification', 'App\\Models\\User', 90, '{\"subject\":\"Weekly Reminder.\",\"link\":\"http:\\/\\/127.0.0.1:8000\\/Faculty\\/Reports\\/Add-Report\\/add\\/4\\/14\",\"name\":\"QCU-FMS System\"}', NULL, '2023-05-15 00:04:07', '2023-05-15 00:04:07'),
('fa1f8372-8c7f-43c4-b246-bb86c45d1c65', 'App\\Notifications\\AnnouncementSecNotification', 'App\\Models\\User', 86, '{\"subject\":\"SAM102\",\"link\":\"https:\\/\\/qcu-fms.site\\/Faculty\\/Notification\\/10\\/O2lwKhAa94cuoBaOpky8Opsw886LBcUXMaW82Q52kUa8S2Eq969OYD349QUU\\/announcement\",\"name\":\"Anjo Panganiban\"}', '2023-05-09 18:01:42', '2023-05-09 20:03:08', '2023-05-09 20:03:08'),
('fab97a07-cfa7-4e88-921c-e480e58704d6', 'App\\Notifications\\AnnouncementSecNotification', 'App\\Models\\User', 91, '{\"subject\":\"SAM102\",\"link\":\"https:\\/\\/qcu-fms.site\\/Faculty\\/Notification\\/14\\/4vn9bFve3dwToGJI96R6wDiiCIKGZ3rWJIUQdPnBgcOb9kIBvrY9L5aAFey4\\/announcement\",\"name\":\"Anjo Panganiban\"}', '2023-05-09 18:01:42', '2023-05-09 20:03:17', '2023-05-09 20:03:17'),
('fc6661a1-30fc-49e1-8afe-2a6749703091', 'App\\Notifications\\WeeklyReminderNotification', 'App\\Models\\User', 91, '{\"subject\":\"Weekly Reminder.\",\"link\":\"http:\\/\\/127.0.0.1:8000\\/Faculty\\/Reports\\/Add-Report\\/add\\/5\\/14\",\"name\":\"QCU-FMS System\"}', NULL, '2023-05-15 00:04:09', '2023-05-15 00:04:09'),
('fdf33218-edf2-4af4-ad43-c07a2963f215', 'App\\Notifications\\NotifyDeanPCAccountCreationNotification', 'App\\Models\\User', 2, '{\"subject\":\"Faculty Testing Faculty Testing Account Created.\",\"link\":\"https:\\/\\/try-latest.qcu-fms.site\\/Dean\\/Faculty\\/List\\/View\\/FAC-000000026\\/lNvXzh57BOwo41Gv7gtyp04ro7V42yljvijLHlxvjMv3Nk3k2JXKeIb0zT7c\",\"name\":\"Anjo Panganiban\"}', '2023-05-09 18:01:42', '2023-05-09 17:28:45', '2023-05-09 17:28:45');

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `token` varchar(64) NOT NULL,
  `abilities` text DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ph_faculty_reports`
--

CREATE TABLE `ph_faculty_reports` (
  `id` int(11) NOT NULL,
  `phID` varchar(45) DEFAULT NULL,
  `userID` int(11) DEFAULT NULL,
  `grouped_reportsID` int(11) DEFAULT NULL,
  `facultyID` varchar(45) DEFAULT NULL,
  `groupTokenID` varchar(45) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `ph_faculty_reports`
--

INSERT INTO `ph_faculty_reports` (`id`, `phID`, `userID`, `grouped_reportsID`, `facultyID`, `groupTokenID`, `created_at`, `updated_at`) VALUES
(1, 'PH-000000001', 2, 1, 'FAC-000000002', 'tZLx', '2023-04-13 06:34:16', '2023-04-13 06:34:16'),
(2, 'PH-000000001', 2, 2, 'FAC-000000002', 'tZLx', '2023-04-13 06:34:16', '2023-04-13 06:34:16'),
(5, 'PH-000000001', 2, 6, 'FAC-000000009', 'B8Je', '2023-04-26 21:56:28', '2023-04-26 21:56:28'),
(6, 'PH-000000001', 2, 8, 'FAC-000000011', 'AOFY', '2023-04-29 14:03:09', '2023-04-29 14:03:09'),
(7, 'PH-000000001', 2, 9, 'FAC-000000017', 'ERW7', '2023-05-03 16:55:11', '2023-05-03 16:55:11');

-- --------------------------------------------------------

--
-- Table structure for table `position`
--

CREATE TABLE `position` (
  `id` int(11) NOT NULL,
  `description` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `position`
--

INSERT INTO `position` (`id`, `description`) VALUES
(1, 'FACULTY');

-- --------------------------------------------------------

--
-- Table structure for table `program_head`
--

CREATE TABLE `program_head` (
  `id` int(11) NOT NULL,
  `phID` varchar(45) DEFAULT NULL,
  `empID` varchar(45) DEFAULT NULL,
  `userID` int(11) DEFAULT NULL,
  `departmentID` int(11) DEFAULT NULL,
  `ph_firstname` varchar(255) DEFAULT NULL,
  `ph_middlename` varchar(45) DEFAULT NULL,
  `ph_lastname` varchar(255) DEFAULT NULL,
  `ph_email` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `signature` varchar(255) DEFAULT 'signature.png'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `program_head`
--

INSERT INTO `program_head` (`id`, `phID`, `empID`, `userID`, `departmentID`, `ph_firstname`, `ph_middlename`, `ph_lastname`, `ph_email`, `created_at`, `updated_at`, `signature`) VALUES
(1, 'PH-000000001', 'EMP-000000002', 2, 0, 'Leah', 'Iniba', 'Dela Cruz', 'leah.iniba.delacruz@gmail.com', NULL, NULL, 'signature.png'),
(3, 'PH-20230000003', NULL, 81, 1, 'Sample Dean', 'K', 'Eng', 'SampleDeanEng@gmail.com', '2023-05-03 12:32:12', '2023-05-03 12:32:12', 'signature.png'),
(4, 'PH-20230000004', NULL, 82, 2, 'SampleDeanBA', 'A', 'BA', 'SampleDeanBA@gmail.com', '2023-05-03 12:33:14', '2023-05-03 12:33:14', 'signature.png'),
(5, 'PH-20230000005', NULL, 83, 3, 'SampleDeanEDU', 'U', 'EDU', 'SampleDeanEDU@gmail.com', '2023-05-03 12:37:23', '2023-05-03 12:37:23', 'signature.png');

-- --------------------------------------------------------

--
-- Table structure for table `request_access_faculty`
--

CREATE TABLE `request_access_faculty` (
  `id` int(11) NOT NULL,
  `userID` int(11) DEFAULT NULL,
  `facID` int(11) DEFAULT NULL,
  `course` varchar(45) DEFAULT NULL,
  `status` int(11) DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `request_access_faculty`
--

INSERT INTO `request_access_faculty` (`id`, `userID`, `facID`, `course`, `status`, `created_at`, `updated_at`) VALUES
(12, 2, 20, 'BSIT', 0, '2023-04-26 21:25:41', '2023-04-26 21:25:41'),
(13, 2, 22, 'BSIT', 0, '2023-04-27 15:27:29', '2023-04-27 15:27:29'),
(14, 2, 1, 'BSIT', 0, '2023-04-29 12:45:59', '2023-04-29 12:45:59'),
(15, 2, 8, 'BSIT', 0, '2023-05-01 22:02:28', '2023-05-01 22:02:28'),
(16, 2, 22, 'BSIT', 0, '2023-05-01 22:06:20', '2023-05-01 22:06:20'),
(17, 2, 22, 'BSIT', 0, '2023-05-02 20:41:41', '2023-05-02 20:41:41'),
(18, 2, 5, 'BSIT', 0, '2023-05-03 15:38:58', '2023-05-03 15:38:58'),
(19, 82, 2, 'BSA', 0, '2023-05-03 15:54:09', '2023-05-03 15:54:09'),
(20, 2, 21, 'BSIT', 0, '2023-05-03 16:09:20', '2023-05-03 16:09:20');

-- --------------------------------------------------------

--
-- Table structure for table `request_compiled_report`
--

CREATE TABLE `request_compiled_report` (
  `id` int(11) NOT NULL,
  `facultyID` varchar(45) DEFAULT NULL,
  `to_userID` int(11) DEFAULT NULL,
  `from_userID` int(11) DEFAULT NULL,
  `note` varchar(10000) DEFAULT NULL,
  `status` int(11) DEFAULT 0,
  `created_at` varchar(45) DEFAULT NULL,
  `updated_at` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` int(10) UNSIGNED NOT NULL,
  `slug` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `permissions` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `slug`, `name`, `permissions`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'Adminstrator', NULL, '2022-11-06 23:18:44', '2022-11-06 23:18:44'),
(2, 'program head', 'Program Head', NULL, NULL, NULL),
(3, 'secretary', 'Secretary', NULL, NULL, NULL),
(4, 'faculty', 'Faculty', NULL, NULL, NULL),
(5, 'student', 'Student', NULL, NULL, NULL),
(6, 'hr', 'Human Resources', NULL, NULL, NULL),
(7, 'chairman', 'Chairman', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `role_users`
--

CREATE TABLE `role_users` (
  `user_id` int(10) UNSIGNED NOT NULL,
  `role_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `role_users`
--

INSERT INTO `role_users` (`user_id`, `role_id`) VALUES
(1, 1),
(2, 2),
(3, 6),
(4, 5),
(5, 3),
(60, 7),
(68, 4),
(75, 4),
(77, 4),
(80, 4),
(81, 2),
(82, 2),
(83, 2),
(84, 4),
(85, 4),
(86, 4),
(87, 4),
(89, 4),
(90, 4),
(91, 4),
(94, 4),
(95, 4),
(96, 4),
(99, 3),
(100, 7),
(101, 3),
(102, 7),
(103, 3),
(104, 7),
(105, 4);

-- --------------------------------------------------------

--
-- Table structure for table `room_db`
--

CREATE TABLE `room_db` (
  `id` int(15) NOT NULL,
  `room` varchar(150) NOT NULL,
  `room_floor` varchar(150) NOT NULL,
  `Device` int(11) NOT NULL,
  `status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `room_db`
--

INSERT INTO `room_db` (`id`, `room`, `room_floor`, `Device`, `status`) VALUES
(1, 'a400', '1st floor', 1, 1),
(2, 'a401', '2nd floor', 2, 1),
(3, 'ac407', '1st floor', 2, 0),
(4, 'ac402', '2nd floor', 2, 1);

-- --------------------------------------------------------

--
-- Table structure for table `schedules`
--

CREATE TABLE `schedules` (
  `id` int(10) UNSIGNED NOT NULL,
  `subjectID` int(11) DEFAULT NULL,
  `day` varchar(45) DEFAULT NULL,
  `time_start` time DEFAULT NULL,
  `time_end` time DEFAULT NULL,
  `duration` int(11) DEFAULT NULL,
  `courseID` int(11) DEFAULT NULL,
  `sectionID` int(11) DEFAULT NULL,
  `type_of_learning` varchar(45) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `schedules`
--

INSERT INTO `schedules` (`id`, `subjectID`, `day`, `time_start`, `time_end`, `duration`, `courseID`, `sectionID`, `type_of_learning`, `created_at`, `updated_at`) VALUES
(1, 4, 'Monday', '11:19:00', '23:16:00', 4, 0, 1, 'Blended Class', '2023-02-04 02:20:48', '2023-02-08 11:45:53'),
(2, 2, 'Wednesday', '09:48:00', '22:48:00', 4, 0, 2, 'Online Class', '2023-02-06 22:18:20', '2023-02-06 22:18:20'),
(3, 3, 'Tuesday', '10:04:00', '15:04:00', 4, 0, 3, 'Online Class', '2023-02-06 22:34:35', '2023-02-06 22:34:35');

-- --------------------------------------------------------

--
-- Table structure for table `schedule_faculty`
--

CREATE TABLE `schedule_faculty` (
  `id` int(11) NOT NULL,
  `facultyID` varchar(45) DEFAULT NULL,
  `schedID` int(11) DEFAULT NULL,
  `created_at` varchar(45) DEFAULT NULL,
  `updated_at` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `schedule_faculty`
--

INSERT INTO `schedule_faculty` (`id`, `facultyID`, `schedID`, `created_at`, `updated_at`) VALUES
(1, 'FAC-000000023', 1, NULL, NULL),
(2, 'FAC-000000023', 2, NULL, NULL),
(3, 'FAC-000000023', 3, NULL, NULL),
(4, 'FAC-000000023', 4, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `schedule_remarks`
--

CREATE TABLE `schedule_remarks` (
  `id` int(11) NOT NULL,
  `facultyID` varchar(45) DEFAULT NULL,
  `is_group` varchar(45) DEFAULT NULL,
  `from_userID` int(11) DEFAULT NULL,
  `to_userID` int(11) DEFAULT NULL,
  `remarks` varchar(10000) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `is_faculty` int(11) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `schedule_remarks`
--

INSERT INTO `schedule_remarks` (`id`, `facultyID`, `is_group`, `from_userID`, `to_userID`, `remarks`, `created_at`, `updated_at`, `is_faculty`) VALUES
(1, 'FAC-000000002', 'KzktR', 2, 60, '<ul><li>Testing Remarks</li></ul>', '2023-04-12 05:34:23', '2023-04-12 05:34:23', 0),
(2, 'FAC-000000003', 'KmbrY', 2, 60, '<p>May mali</p>', '2023-04-16 18:18:44', '2023-04-16 18:18:44', 0),
(3, 'FAC-000000009', 'H2syK', 2, 60, '<ul><li>remarks</li></ul>', '2023-04-26 21:34:25', '2023-04-26 21:34:25', 0);

-- --------------------------------------------------------

--
-- Table structure for table `schedule_setup`
--

CREATE TABLE `schedule_setup` (
  `id` int(11) NOT NULL,
  `facultyID` varchar(255) DEFAULT NULL,
  `subjectID` int(11) DEFAULT NULL,
  `week_no` int(11) DEFAULT NULL,
  `type` varchar(45) DEFAULT 'Onsite',
  `date` date DEFAULT NULL,
  `objectives` varchar(1000) DEFAULT NULL,
  `descriptions` varchar(1000) DEFAULT NULL,
  `lab_room` varchar(45) DEFAULT NULL,
  `lec_room` varchar(45) DEFAULT NULL,
  `time_lec` varchar(255) DEFAULT NULL,
  `time_lab` varchar(255) DEFAULT NULL,
  `status` int(11) DEFAULT 0,
  `campus` varchar(255) DEFAULT NULL,
  `is_reported` int(11) DEFAULT 0,
  `is_missing` int(11) DEFAULT 0,
  `is_available` int(11) DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `schedule_setup`
--

INSERT INTO `schedule_setup` (`id`, `facultyID`, `subjectID`, `week_no`, `type`, `date`, `objectives`, `descriptions`, `lab_room`, `lec_room`, `time_lec`, `time_lab`, `status`, `campus`, `is_reported`, `is_missing`, `is_available`, `created_at`, `updated_at`) VALUES
(1, 'FAC-000000002', 21, 1, 'Onsite', '2023-04-20', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry', 'Room2', 'Room1', '09:59 AM - 10:59 AM', '11:50:00 AM - 11:51:00 AM', 1, 'San Bartolome', 1, 1, 0, '2023-04-12 05:02:22', '2023-04-13 00:13:55'),
(2, 'FAC-000000002', 21, 2, 'Onsite', '2023-04-13', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry', 'Room2', 'Room1', '09:59 AM - 10:59 AM', '11:50:00 AM - 11:51:00 AM', 1, 'San Bartolome', 1, 0, 1, '2023-04-12 05:02:22', '2023-04-13 00:08:24'),
(3, 'FAC-000000002', 21, 3, 'Onsite', '2023-05-13', '1Lorem Ipsum is simply dummy text of the printing and typesetting industry', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry', '1', '3', '09:59:00 AM - 10:59:00 AM', '11:50:00 AM - 11:51:00 AM', 1, 'San Bartolome', 0, 1, 0, '2023-04-12 05:02:22', '2023-05-14 00:00:09'),
(4, 'FAC-000000002', 21, 4, 'Online', '2023-05-08', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry', 'Room2', 'Room1', '09:59:00 AM - 10:59:00 AM', '11:50:00 AM - 11:51:00 AM', 1, 'San Fransisco', 0, 1, 0, '2023-04-12 05:02:22', '2023-05-09 00:00:11'),
(5, 'FAC-000000002', 21, 5, 'Onsite', '2023-05-08', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry', 'Room2', 'Room1', '09:59:00 AM - 10:59:00 AM', '11:50:00 AM - 11:51:00 AM', 1, 'San Bartolome', 0, 1, 0, '2023-04-12 05:02:22', '2023-05-09 00:00:13'),
(6, 'FAC-000000002', 21, 6, 'Onsite', '2023-05-15', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry', 'Room2', 'Room1', '09:59:00 AM - 10:59:00 AM', '11:50:00 AM - 11:51:00 AM', 1, 'San Bartolome', 0, 0, 1, '2023-04-12 05:02:22', '2023-05-15 00:00:13'),
(7, 'FAC-000000002', 21, 7, 'Onsite', '2023-05-22', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry', 'Room2', 'Room1', '09:59:00 AM - 10:59:00 AM', '11:50:00 AM - 11:51:00 AM', 1, 'San Fransisco', 0, 0, 0, '2023-04-12 05:02:22', '2023-04-12 05:02:22'),
(8, 'FAC-000000002', 21, 8, 'Online', '2023-05-29', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry', 'Room2', 'Room1', '09:59:00 AM - 10:59:00 AM', '11:50:00 AM - 11:51:00 AM', 1, 'San Fransisco', 0, 0, 0, '2023-04-12 05:02:22', '2023-04-12 05:02:22'),
(9, 'FAC-000000002', 21, 9, 'Online', '2023-05-29', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry', 'Room2', 'Room1', '09:59:00 AM - 10:59:00 AM', '11:50:00 AM - 11:51:00 AM', 1, 'San Fransisco', 0, 0, 0, '2023-04-12 05:02:22', '2023-04-12 05:02:22'),
(10, 'FAC-000000002', 21, 10, 'Onsite', '2023-05-29', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry', 'Room2', 'Room1', '09:59:00 AM - 10:59:00 AM', '11:50:00 AM - 11:51:00 AM', 1, 'San Bartolome', 0, 0, 0, '2023-04-12 05:02:22', '2023-04-12 05:02:22'),
(11, 'FAC-000000002', 21, 11, 'Onsite', '2023-05-29', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry', 'Room2', 'Room1', '09:59:00 AM - 10:59:00 AM', '11:50:00 AM - 11:51:00 AM', 1, 'San Bartolome', 0, 0, 0, '2023-04-12 05:02:22', '2023-04-12 05:02:22'),
(12, 'FAC-000000002', 21, 12, 'Onsite', '2023-05-29', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry', 'Room2', 'Room1', '09:59:00 AM - 10:59:00 AM', '11:50:00 AM - 11:51:00 AM', 1, 'San Bartolome', 0, 0, 0, '2023-04-12 05:02:22', '2023-04-12 05:02:22'),
(13, 'FAC-000000002', 21, 13, 'Online', '2023-05-29', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry', 'Room2', 'Room1', '09:59:00 AM - 10:59:00 AM', '11:50:00 AM - 11:51:00 AM', 1, 'San Bartolome', 0, 0, 0, '2023-04-12 05:02:22', '2023-04-12 05:02:22'),
(14, 'FAC-000000002', 21, 14, 'Online', '2023-05-29', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry', 'Room2', 'Room1', '09:59:00 AM - 10:59:00 AM', '11:50:00 AM - 11:51:00 AM', 1, 'San Bartolome', 0, 0, 0, '2023-04-12 05:02:22', '2023-04-12 05:02:22'),
(15, 'FAC-000000002', 21, 15, 'Onsite', '2023-05-29', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry', 'Room2', 'Room1', '09:59:00 AM - 10:59:00 AM', '11:50:00 AM - 11:51:00 AM', 1, 'San Bartolome', 0, 0, 0, '2023-04-12 05:02:22', '2023-04-12 05:02:22'),
(16, 'FAC-000000002', 21, 16, 'Online', '2023-05-29', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry', 'Room2', 'Room1', '09:59:00 AM - 10:59:00 AM', '11:50:00 AM - 11:51:00 AM', 1, 'San Bartolome', 0, 0, 0, '2023-04-12 05:02:22', '2023-04-12 05:02:22'),
(17, 'FAC-000000002', 21, 17, 'Online', '2023-05-29', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry', 'Room2', 'Room1', '09:59:00 AM - 10:59:00 AM', '11:50:00 AM - 11:51:00 AM', 1, 'San Bartolome', 0, 0, 0, '2023-04-12 05:02:22', '2023-04-12 05:02:22'),
(18, 'FAC-000000002', 21, 18, 'Onsite', '2023-05-29', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry', 'Room2', 'Room1', '09:59:00 AM - 10:59:00 AM', '11:50:00 AM - 11:51:00 AM', 1, 'San Bartolome', 0, 0, 0, '2023-04-12 05:02:22', '2023-04-12 05:02:22'),
(19, 'FAC-000000002', 14, 1, 'Online', '2023-04-10', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry', 'Room2', 'Room1', '09:59:00 AM - 10:59:00 AM', '11:50:00 AM - 11:51:00 AM', 1, 'San Bartolome', 1, 1, 0, '2023-04-12 05:02:52', '2023-04-22 09:48:21'),
(20, 'FAC-000000002', 14, 2, 'Onsite', '2023-04-13', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry', 'Room2', 'Room1', '09:59:00 AM - 10:59:00 AM', '11:50:00 AM - 11:51:00 AM', 1, 'San Bartolome', 1, 1, 0, '2023-04-12 05:02:52', '2023-04-17 10:17:33'),
(21, 'FAC-000000002', 14, 3, 'Onsite', '2023-04-29', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry', 'Room2', 'Room1', '09:59:00 AM - 10:59:00 AM', '11:50:00 AM - 11:51:00 AM', 1, 'San Bartolome', 0, 1, 0, '2023-04-12 05:02:52', '2023-04-30 00:01:05'),
(22, 'FAC-000000002', 14, 4, 'Onsite', '2023-05-01', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry', 'Room2', 'Room1', '09:59:00 AM - 10:59:00 AM', '11:50:00 AM - 11:51:00 AM', 1, 'San Fransisco', 0, 1, 0, '2023-04-12 05:02:52', '2023-05-02 00:00:14'),
(23, 'FAC-000000002', 14, 5, 'Onsite', '2023-05-08', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry', 'Room2', 'Room1', '09:59:00 AM - 10:59:00 AM', '11:50:00 AM - 11:51:00 AM', 1, 'San Bartolome', 0, 1, 0, '2023-04-12 05:02:52', '2023-05-09 00:00:16'),
(24, 'FAC-000000002', 14, 6, 'Onsite', '2023-08-17', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry', 'Room2', 'Room1', '09:59:00 AM - 10:59:00 AM', '11:50:00 AM - 11:51:00 AM', 1, 'San Bartolome', 0, 0, 1, '2023-04-12 05:02:52', '2023-05-15 00:00:15'),
(25, 'FAC-000000002', 14, 7, 'Onsite', '2023-05-22', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry', 'Room2', 'Room1', '09:59:00 AM - 10:59:00 AM', '11:50:00 AM - 11:51:00 AM', 1, 'San Fransisco', 0, 0, 0, '2023-04-12 05:02:52', '2023-04-12 05:02:52'),
(26, 'FAC-000000002', 14, 8, 'Online', '2023-05-29', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry', 'Room2', 'Room1', '09:59:00 AM - 10:59:00 AM', '11:50:00 AM - 11:51:00 AM', 1, 'San Fransisco', 0, 0, 0, '2023-04-12 05:02:52', '2023-04-12 05:02:52'),
(27, 'FAC-000000002', 14, 9, 'Online', '2023-05-29', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry', 'Room2', 'Room1', '09:59:00 AM - 10:59:00 AM', '11:50:00 AM - 11:51:00 AM', 1, 'San Fransisco', 0, 0, 0, '2023-04-12 05:02:52', '2023-04-12 05:02:52'),
(28, 'FAC-000000002', 14, 10, 'Onsite', '2023-05-29', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry', 'Room2', 'Room1', '09:59:00 AM - 10:59:00 AM', '11:50:00 AM - 11:51:00 AM', 1, 'San Bartolome', 0, 0, 0, '2023-04-12 05:02:52', '2023-04-12 05:02:52'),
(29, 'FAC-000000002', 14, 11, 'Onsite', '2023-05-29', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry', 'Room2', 'Room1', '09:59:00 AM - 10:59:00 AM', '11:50:00 AM - 11:51:00 AM', 1, 'San Bartolome', 0, 0, 0, '2023-04-12 05:02:52', '2023-04-12 05:02:52'),
(30, 'FAC-000000002', 14, 12, 'Onsite', '2023-05-29', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry', 'Room2', 'Room1', '09:59:00 AM - 10:59:00 AM', '11:50:00 AM - 11:51:00 AM', 1, 'San Bartolome', 0, 0, 0, '2023-04-12 05:02:52', '2023-04-12 05:02:52'),
(31, 'FAC-000000002', 14, 13, 'Online', '2023-05-29', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry', 'Room2', 'Room1', '09:59:00 AM - 10:59:00 AM', '11:50:00 AM - 11:51:00 AM', 1, 'San Bartolome', 0, 0, 0, '2023-04-12 05:02:52', '2023-04-12 05:02:52'),
(32, 'FAC-000000002', 14, 14, 'Online', '2023-05-29', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry', 'Room2', 'Room1', '09:59:00 AM - 10:59:00 AM', '11:50:00 AM - 11:51:00 AM', 1, 'San Bartolome', 0, 0, 0, '2023-04-12 05:02:52', '2023-04-12 05:02:52'),
(33, 'FAC-000000002', 14, 15, 'Onsite', '2023-05-29', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry', 'Room2', 'Room1', '09:59:00 AM - 10:59:00 AM', '11:50:00 AM - 11:51:00 AM', 1, 'San Bartolome', 0, 0, 0, '2023-04-12 05:02:52', '2023-04-12 05:02:52'),
(34, 'FAC-000000002', 14, 16, 'Online', '2023-05-29', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry', 'Room2', 'Room1', '09:59:00 AM - 10:59:00 AM', '11:50:00 AM - 11:51:00 AM', 1, 'San Bartolome', 0, 0, 0, '2023-04-12 05:02:52', '2023-04-12 05:02:52'),
(35, 'FAC-000000002', 14, 17, 'Online', '2023-05-29', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry', 'Room2', 'Room1', '09:59:00 AM - 10:59:00 AM', '11:50:00 AM - 11:51:00 AM', 1, 'San Bartolome', 0, 0, 0, '2023-04-12 05:02:52', '2023-04-12 05:02:52'),
(36, 'FAC-000000002', 14, 18, 'Onsite', '2023-04-24', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry', 'Room2', 'Room1', '09:59:00 AM - 10:59:00 AM', '11:50:00 AM - 11:51:00 AM', 1, 'San Bartolome', 0, 1, 0, '2023-04-12 05:02:52', '2023-04-26 20:43:05'),
(127, 'FAC-000000009', 14, 1, 'Onsite', '2023-04-26', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry', 'Room2', 'Room1', '09:59:00 AM - 10:59:00 AM', '11:50:00 AM - 11:51:00 AM', 1, 'San Bartolome', 1, 0, 1, '2023-04-26 21:32:16', '2023-04-26 22:58:06'),
(128, 'FAC-000000009', 14, 2, 'Onsite', '2023-04-17', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry', 'Room2', 'Room1', '09:59:00 AM - 10:59:00 AM', '11:50:00 AM - 11:51:00 AM', 1, 'San Bartolome', 1, 1, 0, '2023-04-26 21:32:16', '2023-04-26 23:11:23'),
(129, 'FAC-000000009', 14, 3, 'Online', '2023-04-24', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry', 'Room2', 'Room1', '09:59:00 AM - 10:59:00 AM', '11:50:00 AM - 11:51:00 AM', 1, 'San Bartolome', 1, 1, 0, '2023-04-26 21:32:16', '2023-05-03 05:37:09'),
(130, 'FAC-000000009', 14, 4, 'Online', '2023-05-01', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry', 'Room2', 'Room1', '09:59:00 AM - 10:59:00 AM', '11:50:00 AM - 11:51:00 AM', 1, 'San Fransisco', 0, 1, 0, '2023-04-26 21:32:16', '2023-05-02 00:00:16'),
(131, 'FAC-000000009', 14, 5, 'Onsite', '2023-05-08', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry', 'Room2', 'Room1', '09:59:00 AM - 10:59:00 AM', '11:50:00 AM - 11:51:00 AM', 1, 'San Bartolome', 0, 1, 0, '2023-04-26 21:32:16', '2023-05-09 00:00:18'),
(132, 'FAC-000000009', 14, 6, 'Onsite', '2023-08-17', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry', 'Room2', 'Room1', '09:59:00 AM - 10:59:00 AM', '11:50:00 AM - 11:51:00 AM', 1, 'San Bartolome', 0, 0, 1, '2023-04-26 21:32:16', '2023-05-15 00:00:17'),
(133, 'FAC-000000009', 14, 7, 'Onsite', '2023-05-22', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry', 'Room2', 'Room1', '09:59:00 AM - 10:59:00 AM', '11:50:00 AM - 11:51:00 AM', 1, 'San Fransisco', 0, 0, 0, '2023-04-26 21:32:16', '2023-04-26 21:32:16'),
(134, 'FAC-000000009', 14, 8, 'Online', '2023-05-29', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry', 'Room2', 'Room1', '09:59:00 AM - 10:59:00 AM', '11:50:00 AM - 11:51:00 AM', 1, 'San Fransisco', 0, 0, 0, '2023-04-26 21:32:16', '2023-04-26 21:32:16'),
(135, 'FAC-000000009', 14, 9, 'Online', '2023-05-29', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry', 'Room2', 'Room1', '09:59:00 AM - 10:59:00 AM', '11:50:00 AM - 11:51:00 AM', 1, 'San Fransisco', 0, 0, 0, '2023-04-26 21:32:16', '2023-04-26 21:32:16'),
(136, 'FAC-000000009', 14, 10, 'Onsite', '2023-05-29', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry', 'Room2', 'Room1', '09:59:00 AM - 10:59:00 AM', '11:50:00 AM - 11:51:00 AM', 1, 'San Bartolome', 0, 0, 0, '2023-04-26 21:32:16', '2023-04-26 21:32:16'),
(137, 'FAC-000000009', 14, 11, 'Onsite', '2023-05-29', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry', 'Room2', 'Room1', '09:59:00 AM - 10:59:00 AM', '11:50:00 AM - 11:51:00 AM', 1, 'San Bartolome', 0, 0, 0, '2023-04-26 21:32:16', '2023-04-26 21:32:16'),
(138, 'FAC-000000009', 14, 12, 'Onsite', '2023-05-29', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry', 'Room2', 'Room1', '09:59:00 AM - 10:59:00 AM', '11:50:00 AM - 11:51:00 AM', 1, 'San Bartolome', 0, 0, 0, '2023-04-26 21:32:16', '2023-04-26 21:32:16'),
(139, 'FAC-000000009', 14, 13, 'Online', '2023-05-29', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry', 'Room2', 'Room1', '09:59:00 AM - 10:59:00 AM', '11:50:00 AM - 11:51:00 AM', 1, 'San Bartolome', 0, 0, 0, '2023-04-26 21:32:16', '2023-04-26 21:32:16'),
(140, 'FAC-000000009', 14, 14, 'Online', '2023-05-29', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry', 'Room2', 'Room1', '09:59:00 AM - 10:59:00 AM', '11:50:00 AM - 11:51:00 AM', 1, 'San Bartolome', 0, 0, 0, '2023-04-26 21:32:16', '2023-04-26 21:32:16'),
(141, 'FAC-000000009', 14, 15, 'Onsite', '2023-05-29', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry', 'Room2', 'Room1', '09:59:00 AM - 10:59:00 AM', '11:50:00 AM - 11:51:00 AM', 1, 'San Bartolome', 0, 0, 0, '2023-04-26 21:32:16', '2023-04-26 21:32:16'),
(142, 'FAC-000000009', 14, 16, 'Online', '2023-05-29', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry', 'Room2', 'Room1', '09:59:00 AM - 10:59:00 AM', '11:50:00 AM - 11:51:00 AM', 1, 'San Bartolome', 0, 0, 0, '2023-04-26 21:32:16', '2023-04-26 21:32:16'),
(143, 'FAC-000000009', 14, 17, 'Online', '2023-05-29', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry', 'Room2', 'Room1', '09:59:00 AM - 10:59:00 AM', '11:50:00 AM - 11:51:00 AM', 1, 'San Bartolome', 0, 0, 0, '2023-04-26 21:32:16', '2023-04-26 21:32:16'),
(144, 'FAC-000000009', 14, 18, 'Onsite', '2023-05-29', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry', 'Room2', 'Room1', '09:59:00 AM - 10:59:00 AM', '11:50:00 AM - 11:51:00 AM', 1, 'San Bartolome', 0, 0, 0, '2023-04-26 21:32:16', '2023-04-26 21:32:16'),
(145, 'FAC-000000009', 21, 1, 'Onsite', '2023-04-26', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry', 'Room2', 'Room1', '09:59:00 AM - 10:59:00 AM', '11:50:00 AM - 11:51:00 AM', 1, 'San Bartolome', 1, 0, 1, '2023-04-26 21:32:35', '2023-04-26 21:53:50'),
(146, 'FAC-000000009', 21, 2, 'Onsite', '2023-04-17', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry', 'Room2', 'Room1', '09:59:00 AM - 10:59:00 AM', '11:50:00 AM - 11:51:00 AM', 1, 'San Bartolome', 0, 1, 0, '2023-04-26 21:32:35', '2023-04-26 21:36:04'),
(147, 'FAC-000000009', 21, 3, 'Online', '2023-04-24', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry', 'Room2', 'Room1', '09:59:00 AM - 10:59:00 AM', '11:50:00 AM - 11:51:00 AM', 1, 'San Bartolome', 0, 1, 0, '2023-04-26 21:32:35', '2023-04-26 21:37:04'),
(148, 'FAC-000000009', 21, 4, 'Online', '2023-05-01', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry', 'Room2', 'Room1', '09:59:00 AM - 10:59:00 AM', '11:50:00 AM - 11:51:00 AM', 1, 'San Fransisco', 0, 1, 0, '2023-04-26 21:32:35', '2023-05-02 00:00:18'),
(149, 'FAC-000000009', 21, 5, 'Onsite', '2023-05-08', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry', 'Room2', 'Room1', '09:59:00 AM - 10:59:00 AM', '11:50:00 AM - 11:51:00 AM', 1, 'San Bartolome', 0, 1, 0, '2023-04-26 21:32:35', '2023-05-09 00:00:21'),
(150, 'FAC-000000009', 21, 6, 'Onsite', '2023-08-17', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry', 'Room2', 'Room1', '09:59:00 AM - 10:59:00 AM', '11:50:00 AM - 11:51:00 AM', 1, 'San Bartolome', 0, 0, 1, '2023-04-26 21:32:35', '2023-05-15 00:00:19'),
(151, 'FAC-000000009', 21, 7, 'Onsite', '2023-05-22', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry', 'Room2', 'Room1', '09:59:00 AM - 10:59:00 AM', '11:50:00 AM - 11:51:00 AM', 1, 'San Fransisco', 0, 0, 0, '2023-04-26 21:32:35', '2023-04-26 21:32:35'),
(152, 'FAC-000000009', 21, 8, 'Online', '2023-05-29', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry', 'Room2', 'Room1', '09:59:00 AM - 10:59:00 AM', '11:50:00 AM - 11:51:00 AM', 1, 'San Fransisco', 0, 0, 0, '2023-04-26 21:32:35', '2023-04-26 21:32:35'),
(153, 'FAC-000000009', 21, 9, 'Online', '2023-05-29', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry', 'Room2', 'Room1', '09:59:00 AM - 10:59:00 AM', '11:50:00 AM - 11:51:00 AM', 1, 'San Fransisco', 0, 0, 0, '2023-04-26 21:32:35', '2023-04-26 21:32:35'),
(154, 'FAC-000000009', 21, 10, 'Onsite', '2023-05-29', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry', 'Room2', 'Room1', '09:59:00 AM - 10:59:00 AM', '11:50:00 AM - 11:51:00 AM', 1, 'San Bartolome', 0, 0, 0, '2023-04-26 21:32:35', '2023-04-26 21:32:35'),
(155, 'FAC-000000009', 21, 11, 'Onsite', '2023-05-29', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry', 'Room2', 'Room1', '09:59:00 AM - 10:59:00 AM', '11:50:00 AM - 11:51:00 AM', 1, 'San Bartolome', 0, 0, 0, '2023-04-26 21:32:35', '2023-04-26 21:32:35'),
(156, 'FAC-000000009', 21, 12, 'Onsite', '2023-05-29', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry', 'Room2', 'Room1', '09:59:00 AM - 10:59:00 AM', '11:50:00 AM - 11:51:00 AM', 1, 'San Bartolome', 0, 0, 0, '2023-04-26 21:32:35', '2023-04-26 21:32:35'),
(157, 'FAC-000000009', 21, 13, 'Online', '2023-05-29', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry', 'Room2', 'Room1', '09:59:00 AM - 10:59:00 AM', '11:50:00 AM - 11:51:00 AM', 1, 'San Bartolome', 0, 0, 0, '2023-04-26 21:32:35', '2023-04-26 21:32:35'),
(158, 'FAC-000000009', 21, 14, 'Online', '2023-05-29', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry', 'Room2', 'Room1', '09:59:00 AM - 10:59:00 AM', '11:50:00 AM - 11:51:00 AM', 1, 'San Bartolome', 0, 0, 0, '2023-04-26 21:32:35', '2023-04-26 21:32:35'),
(159, 'FAC-000000009', 21, 15, 'Onsite', '2023-05-29', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry', 'Room2', 'Room1', '09:59:00 AM - 10:59:00 AM', '11:50:00 AM - 11:51:00 AM', 1, 'San Bartolome', 0, 0, 0, '2023-04-26 21:32:35', '2023-04-26 21:32:35'),
(160, 'FAC-000000009', 21, 16, 'Online', '2023-05-29', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry', 'Room2', 'Room1', '09:59:00 AM - 10:59:00 AM', '11:50:00 AM - 11:51:00 AM', 1, 'San Bartolome', 0, 0, 0, '2023-04-26 21:32:35', '2023-04-26 21:32:35'),
(161, 'FAC-000000009', 21, 17, 'Online', '2023-05-29', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry', 'Room2', 'Room1', '09:59:00 AM - 10:59:00 AM', '11:50:00 AM - 11:51:00 AM', 1, 'San Bartolome', 0, 0, 0, '2023-04-26 21:32:35', '2023-04-26 21:32:35'),
(162, 'FAC-000000009', 21, 18, 'Onsite', '2023-05-29', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry', 'Room2', 'Room1', '09:59:00 AM - 10:59:00 AM', '11:50:00 AM - 11:51:00 AM', 1, 'San Bartolome', 0, 0, 0, '2023-04-26 21:32:35', '2023-04-26 21:32:35'),
(163, 'FAC-000000010', 14, 1, 'Onsite', '2023-04-10', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry', 'Room2', 'Room1', '09:59:00 AM - 10:59:00 AM', '11:50:00 AM - 11:51:00 AM', 1, 'San Bartolome', 0, 1, 0, '2023-04-27 15:46:57', '2023-04-27 15:47:05'),
(164, 'FAC-000000010', 14, 2, 'Onsite', '2023-04-27', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry', 'Room2', 'Room1', '09:59:00 AM - 10:59:00 AM', '11:50:00 AM - 11:51:00 AM', 1, 'San Bartolome', 1, 1, 1, '2023-04-27 15:46:57', '2023-04-27 16:43:04'),
(165, 'FAC-000000010', 14, 3, 'Onsite', '2023-04-28', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry', 'Room2', 'Room1', '09:59:00 AM - 10:59:00 AM', '11:50:00 AM - 11:51:00 AM', 1, 'San Bartolome', 0, 1, 1, '2023-04-27 15:46:57', '2023-04-28 04:23:11'),
(166, 'FAC-000000010', 14, 4, 'Online', '2023-05-01', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry', 'Room2', 'Room1', '09:59:00 AM - 10:59:00 AM', '11:50:00 AM - 11:51:00 AM', 1, 'San Fransisco', 0, 1, 0, '2023-04-27 15:46:57', '2023-05-02 00:01:06'),
(167, 'FAC-000000010', 14, 5, 'Onsite', '2023-05-08', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry', 'Room2', 'Room1', '09:59:00 AM - 10:59:00 AM', '11:50:00 AM - 11:51:00 AM', 1, 'San Bartolome', 0, 1, 0, '2023-04-27 15:46:57', '2023-05-09 00:00:24'),
(168, 'FAC-000000010', 14, 6, 'Onsite', '2023-05-15', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry', 'Room2', 'Room1', '09:59:00 AM - 10:59:00 AM', '11:50:00 AM - 11:51:00 AM', 1, 'San Bartolome', 0, 0, 1, '2023-04-27 15:46:57', '2023-05-15 00:00:21'),
(169, 'FAC-000000010', 14, 7, 'Onsite', '2023-05-22', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry', 'Room2', 'Room1', '09:59:00 AM - 10:59:00 AM', '11:50:00 AM - 11:51:00 AM', 1, 'San Fransisco', 0, 0, 0, '2023-04-27 15:46:57', '2023-04-27 15:46:57'),
(170, 'FAC-000000010', 14, 8, 'Online', '2023-05-29', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry', 'Room2', 'Room1', '09:59:00 AM - 10:59:00 AM', '11:50:00 AM - 11:51:00 AM', 1, 'San Fransisco', 0, 0, 0, '2023-04-27 15:46:57', '2023-04-27 15:46:57'),
(171, 'FAC-000000010', 14, 9, 'Online', '2023-05-29', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry', 'Room2', 'Room1', '09:59:00 AM - 10:59:00 AM', '11:50:00 AM - 11:51:00 AM', 1, 'San Fransisco', 0, 0, 0, '2023-04-27 15:46:57', '2023-04-27 15:46:57'),
(172, 'FAC-000000010', 14, 10, 'Onsite', '2023-05-29', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry', 'Room2', 'Room1', '09:59:00 AM - 10:59:00 AM', '11:50:00 AM - 11:51:00 AM', 1, 'San Bartolome', 0, 0, 0, '2023-04-27 15:46:57', '2023-04-27 15:46:57'),
(173, 'FAC-000000010', 14, 11, 'Onsite', '2023-05-29', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry', 'Room2', 'Room1', '09:59:00 AM - 10:59:00 AM', '11:50:00 AM - 11:51:00 AM', 1, 'San Bartolome', 0, 0, 0, '2023-04-27 15:46:57', '2023-04-27 15:46:57'),
(174, 'FAC-000000010', 14, 12, 'Onsite', '2023-05-29', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry', 'Room2', 'Room1', '09:59:00 AM - 10:59:00 AM', '11:50:00 AM - 11:51:00 AM', 1, 'San Bartolome', 0, 0, 0, '2023-04-27 15:46:57', '2023-04-27 15:46:57'),
(175, 'FAC-000000010', 14, 13, 'Online', '2023-05-29', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry', 'Room2', 'Room1', '09:59:00 AM - 10:59:00 AM', '11:50:00 AM - 11:51:00 AM', 1, 'San Bartolome', 0, 0, 0, '2023-04-27 15:46:57', '2023-04-27 15:46:57'),
(176, 'FAC-000000010', 14, 14, 'Online', '2023-05-29', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry', 'Room2', 'Room1', '09:59:00 AM - 10:59:00 AM', '11:50:00 AM - 11:51:00 AM', 1, 'San Bartolome', 0, 0, 0, '2023-04-27 15:46:57', '2023-04-27 15:46:57'),
(177, 'FAC-000000010', 14, 15, 'Onsite', '2023-05-29', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry', 'Room2', 'Room1', '09:59:00 AM - 10:59:00 AM', '11:50:00 AM - 11:51:00 AM', 1, 'San Bartolome', 0, 0, 0, '2023-04-27 15:46:57', '2023-04-27 15:46:57'),
(178, 'FAC-000000010', 14, 16, 'Online', '2023-05-29', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry', 'Room2', 'Room1', '09:59:00 AM - 10:59:00 AM', '11:50:00 AM - 11:51:00 AM', 1, 'San Bartolome', 0, 0, 0, '2023-04-27 15:46:57', '2023-04-27 15:46:57'),
(179, 'FAC-000000010', 14, 17, 'Online', '2023-05-29', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry', 'Room2', 'Room1', '09:59:00 AM - 10:59:00 AM', '11:50:00 AM - 11:51:00 AM', 1, 'San Bartolome', 0, 0, 0, '2023-04-27 15:46:57', '2023-04-27 15:46:57'),
(180, 'FAC-000000010', 14, 18, 'Onsite', '2023-05-29', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry', 'Room2', 'Room1', '09:59:00 AM - 10:59:00 AM', '11:50:00 AM - 11:51:00 AM', 1, 'San Bartolome', 0, 0, 0, '2023-04-27 15:46:57', '2023-04-27 15:46:57'),
(181, 'FAC-000000010', 21, 1, 'Online', '2023-04-10', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry', 'Room2', 'Room1', '09:59:00 AM - 10:59:00 AM', '11:50:00 AM - 11:51:00 AM', 1, 'San Bartolome', 0, 1, 0, '2023-04-27 15:47:20', '2023-04-27 15:50:05'),
(182, 'FAC-000000010', 21, 2, 'Onsite', '2023-04-17', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry', 'Room2', 'Room1', '09:59:00 AM - 10:59:00 AM', '11:50:00 AM - 11:51:00 AM', 1, 'San Bartolome', 0, 1, 0, '2023-04-27 15:47:20', '2023-04-27 15:51:04'),
(183, 'FAC-000000010', 21, 3, 'Online', '2023-04-24', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry', 'Room2', 'Room1', '09:59:00 AM - 10:59:00 AM', '11:50:00 AM - 11:51:00 AM', 1, 'San Bartolome', 0, 1, 0, '2023-04-27 15:47:20', '2023-04-27 15:52:04'),
(184, 'FAC-000000010', 21, 4, 'Online', '2023-05-01', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry', 'Room2', 'Room1', '09:59:00 AM - 10:59:00 AM', '11:50:00 AM - 11:51:00 AM', 1, 'San Fransisco', 0, 1, 0, '2023-04-27 15:47:20', '2023-05-02 00:02:05'),
(185, 'FAC-000000010', 21, 5, 'Onsite', '2023-05-08', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry', 'Room2', 'Room1', '09:59:00 AM - 10:59:00 AM', '11:50:00 AM - 11:51:00 AM', 1, 'San Bartolome', 0, 1, 0, '2023-04-27 15:47:20', '2023-05-09 00:01:04'),
(186, 'FAC-000000010', 21, 6, 'Onsite', '2023-08-17', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry', 'Room2', 'Room1', '09:59:00 AM - 10:59:00 AM', '11:50:00 AM - 11:51:00 AM', 1, 'San Bartolome', 0, 0, 1, '2023-04-27 15:47:20', '2023-05-15 00:00:24'),
(187, 'FAC-000000010', 21, 7, 'Onsite', '2023-05-22', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry', 'Room2', 'Room1', '09:59:00 AM - 10:59:00 AM', '11:50:00 AM - 11:51:00 AM', 1, 'San Fransisco', 0, 0, 0, '2023-04-27 15:47:20', '2023-04-27 15:47:20'),
(188, 'FAC-000000010', 21, 8, 'Online', '2023-05-29', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry', 'Room2', 'Room1', '09:59:00 AM - 10:59:00 AM', '11:50:00 AM - 11:51:00 AM', 1, 'San Fransisco', 0, 0, 0, '2023-04-27 15:47:20', '2023-04-27 15:47:20'),
(189, 'FAC-000000010', 21, 9, 'Online', '2023-05-29', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry', 'Room2', 'Room1', '09:59:00 AM - 10:59:00 AM', '11:50:00 AM - 11:51:00 AM', 1, 'San Fransisco', 0, 0, 0, '2023-04-27 15:47:20', '2023-04-27 15:47:20'),
(190, 'FAC-000000010', 21, 10, 'Onsite', '2023-05-29', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry', 'Room2', 'Room1', '09:59:00 AM - 10:59:00 AM', '11:50:00 AM - 11:51:00 AM', 1, 'San Bartolome', 0, 0, 0, '2023-04-27 15:47:20', '2023-04-27 15:47:20'),
(191, 'FAC-000000010', 21, 11, 'Onsite', '2023-05-29', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry', 'Room2', 'Room1', '09:59:00 AM - 10:59:00 AM', '11:50:00 AM - 11:51:00 AM', 1, 'San Bartolome', 0, 0, 0, '2023-04-27 15:47:20', '2023-04-27 15:47:20'),
(192, 'FAC-000000010', 21, 12, 'Onsite', '2023-05-29', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry', 'Room2', 'Room1', '09:59:00 AM - 10:59:00 AM', '11:50:00 AM - 11:51:00 AM', 1, 'San Bartolome', 0, 0, 0, '2023-04-27 15:47:20', '2023-04-27 15:47:20'),
(193, 'FAC-000000010', 21, 13, 'Online', '2023-05-29', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry', 'Room2', 'Room1', '09:59:00 AM - 10:59:00 AM', '11:50:00 AM - 11:51:00 AM', 1, 'San Bartolome', 0, 0, 0, '2023-04-27 15:47:20', '2023-04-27 15:47:20'),
(194, 'FAC-000000010', 21, 14, 'Online', '2023-05-29', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry', 'Room2', 'Room1', '09:59:00 AM - 10:59:00 AM', '11:50:00 AM - 11:51:00 AM', 1, 'San Bartolome', 0, 0, 0, '2023-04-27 15:47:20', '2023-04-27 15:47:20'),
(195, 'FAC-000000010', 21, 15, 'Onsite', '2023-05-29', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry', 'Room2', 'Room1', '09:59:00 AM - 10:59:00 AM', '11:50:00 AM - 11:51:00 AM', 1, 'San Bartolome', 0, 0, 0, '2023-04-27 15:47:20', '2023-04-27 15:47:20'),
(196, 'FAC-000000010', 21, 16, 'Online', '2023-05-29', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry', 'Room2', 'Room1', '09:59:00 AM - 10:59:00 AM', '11:50:00 AM - 11:51:00 AM', 1, 'San Bartolome', 0, 0, 0, '2023-04-27 15:47:20', '2023-04-27 15:47:20'),
(197, 'FAC-000000010', 21, 17, 'Online', '2023-05-29', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry', 'Room2', 'Room1', '09:59:00 AM - 10:59:00 AM', '11:50:00 AM - 11:51:00 AM', 1, 'San Bartolome', 0, 0, 0, '2023-04-27 15:47:20', '2023-04-27 15:47:20'),
(198, 'FAC-000000010', 21, 18, 'Onsite', '2023-05-29', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry', 'Room2', 'Room1', '09:59:00 AM - 10:59:00 AM', '11:50:00 AM - 11:51:00 AM', 1, 'San Bartolome', 0, 0, 0, '2023-04-27 15:47:20', '2023-04-27 15:47:20'),
(199, 'FAC-000000011', 14, 1, 'Onsite', '2023-04-29', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry', 'Room2', 'Room1', '09:59:00 AM - 10:59:00 AM', '11:50:00 AM - 11:51:00 AM', 1, 'San Bartolome', 1, 0, 1, '2023-04-29 12:53:33', '2023-04-29 14:01:19'),
(200, 'FAC-000000011', 14, 2, 'Onsite', '2023-05-08', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry', 'Room2', 'Room1', '09:59:00 AM - 10:59:00 AM', '11:50:00 AM - 11:51:00 AM', 1, 'San Bartolome', 0, 1, 0, '2023-04-29 12:53:33', '2023-05-09 00:01:06'),
(201, 'FAC-000000011', 14, 3, 'Online', '2023-08-17', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry', 'Room2', 'Room1', '09:59:00 AM - 10:59:00 AM', '11:50:00 AM - 11:51:00 AM', 1, 'San Bartolome', 0, 0, 1, '2023-04-29 12:53:33', '2023-05-15 00:00:26'),
(202, 'FAC-000000011', 14, 4, 'Onsite', '2023-08-17', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry', 'Room2', 'Room1', '09:59:00 AM - 10:59:00 AM', '11:50:00 AM - 11:51:00 AM', 1, 'San Fransisco', 0, 0, 1, '2023-04-29 12:53:33', '2023-05-15 00:01:05'),
(203, 'FAC-000000011', 14, 5, 'Onsite', '2023-08-17', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry', 'Room2', 'Room1', '09:59:00 AM - 10:59:00 AM', '11:50:00 AM - 11:51:00 AM', 1, 'San Bartolome', 0, 0, 1, '2023-04-29 12:53:33', '2023-05-15 00:01:07'),
(204, 'FAC-000000011', 14, 6, 'Onsite', '2023-08-17', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry', 'Room2', 'Room1', '09:59:00 AM - 10:59:00 AM', '11:50:00 AM - 11:51:00 AM', 1, 'San Bartolome', 0, 0, 1, '2023-04-29 12:53:33', '2023-05-15 00:01:09'),
(205, 'FAC-000000011', 14, 7, 'Onsite', '2023-05-22', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry', 'Room2', 'Room1', '09:59:00 AM - 10:59:00 AM', '11:50:00 AM - 11:51:00 AM', 1, 'San Fransisco', 0, 0, 0, '2023-04-29 12:53:33', '2023-04-29 12:53:33'),
(206, 'FAC-000000011', 14, 8, 'Online', '2023-05-29', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry', 'Room2', 'Room1', '09:59:00 AM - 10:59:00 AM', '11:50:00 AM - 11:51:00 AM', 1, 'San Fransisco', 0, 0, 0, '2023-04-29 12:53:33', '2023-04-29 12:53:33'),
(207, 'FAC-000000011', 14, 9, 'Online', '2023-05-29', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry', 'Room2', 'Room1', '09:59:00 AM - 10:59:00 AM', '11:50:00 AM - 11:51:00 AM', 1, 'San Fransisco', 0, 0, 0, '2023-04-29 12:53:33', '2023-04-29 12:53:33'),
(208, 'FAC-000000011', 14, 10, 'Onsite', '2023-05-29', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry', 'Room2', 'Room1', '09:59:00 AM - 10:59:00 AM', '11:50:00 AM - 11:51:00 AM', 1, 'San Bartolome', 0, 0, 0, '2023-04-29 12:53:33', '2023-04-29 12:53:33'),
(209, 'FAC-000000011', 14, 11, 'Onsite', '2023-05-29', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry', 'Room2', 'Room1', '09:59:00 AM - 10:59:00 AM', '11:50:00 AM - 11:51:00 AM', 1, 'San Bartolome', 0, 0, 0, '2023-04-29 12:53:33', '2023-04-29 12:53:33'),
(210, 'FAC-000000011', 14, 12, 'Onsite', '2023-05-29', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry', 'Room2', 'Room1', '09:59:00 AM - 10:59:00 AM', '11:50:00 AM - 11:51:00 AM', 1, 'San Bartolome', 0, 0, 0, '2023-04-29 12:53:33', '2023-04-29 12:53:33'),
(211, 'FAC-000000011', 14, 13, 'Online', '2023-05-29', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry', 'Room2', 'Room1', '09:59:00 AM - 10:59:00 AM', '11:50:00 AM - 11:51:00 AM', 1, 'San Bartolome', 0, 0, 0, '2023-04-29 12:53:33', '2023-04-29 12:53:33'),
(212, 'FAC-000000011', 14, 14, 'Online', '2023-05-29', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry', 'Room2', 'Room1', '09:59:00 AM - 10:59:00 AM', '11:50:00 AM - 11:51:00 AM', 1, 'San Bartolome', 0, 0, 0, '2023-04-29 12:53:33', '2023-04-29 12:53:33'),
(213, 'FAC-000000011', 14, 15, 'Onsite', '2023-05-29', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry', 'Room2', 'Room1', '09:59:00 AM - 10:59:00 AM', '11:50:00 AM - 11:51:00 AM', 1, 'San Bartolome', 0, 0, 0, '2023-04-29 12:53:33', '2023-04-29 12:53:33'),
(214, 'FAC-000000011', 14, 16, 'Online', '2023-05-29', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry', 'Room2', 'Room1', '09:59:00 AM - 10:59:00 AM', '11:50:00 AM - 11:51:00 AM', 1, 'San Bartolome', 0, 0, 0, '2023-04-29 12:53:33', '2023-04-29 12:53:33'),
(215, 'FAC-000000011', 14, 17, 'Online', '2023-05-29', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry', 'Room2', 'Room1', '09:59:00 AM - 10:59:00 AM', '11:50:00 AM - 11:51:00 AM', 1, 'San Bartolome', 0, 0, 0, '2023-04-29 12:53:33', '2023-04-29 12:53:33'),
(216, 'FAC-000000011', 14, 18, 'Onsite', '2023-05-29', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry', 'Room2', 'Room1', '09:59:00 AM - 10:59:00 AM', '11:50:00 AM - 11:51:00 AM', 1, 'San Bartolome', 0, 0, 0, '2023-04-29 12:53:33', '2023-04-29 12:53:33'),
(217, 'FAC-000000011', 21, 1, 'Onsite', '2023-08-17', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry', 'Room2', 'Room1', '09:59:00 AM - 10:59:00 AM', '11:50:00 AM - 11:51:00 AM', 1, 'San Bartolome', 0, 0, 1, '2023-04-29 12:53:56', '2023-05-15 00:01:12'),
(218, 'FAC-000000011', 21, 2, 'Onsite', '2023-08-17', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry', 'Room2', 'Room1', '09:59:00 AM - 10:59:00 AM', '11:50:00 AM - 11:51:00 AM', 1, 'San Bartolome', 0, 0, 1, '2023-04-29 12:53:56', '2023-05-15 00:01:14'),
(219, 'FAC-000000011', 21, 3, 'Online', '2023-08-17', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry', 'Room2', 'Room1', '09:59:00 AM - 10:59:00 AM', '11:50:00 AM - 11:51:00 AM', 1, 'San Bartolome', 0, 0, 1, '2023-04-29 12:53:56', '2023-05-15 00:02:05'),
(220, 'FAC-000000011', 21, 4, 'Online', '2023-08-17', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry', 'Room2', 'Room1', '09:59:00 AM - 10:59:00 AM', '11:50:00 AM - 11:51:00 AM', 1, 'San Fransisco', 0, 0, 1, '2023-04-29 12:53:56', '2023-05-15 00:02:07'),
(221, 'FAC-000000011', 21, 5, 'Onsite', '2023-08-17', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry', 'Room2', 'Room1', '09:59:00 AM - 10:59:00 AM', '11:50:00 AM - 11:51:00 AM', 1, 'San Bartolome', 0, 0, 1, '2023-04-29 12:53:56', '2023-05-15 00:02:10'),
(222, 'FAC-000000011', 21, 6, 'Onsite', '2023-08-17', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry', 'Room2', 'Room1', '09:59:00 AM - 10:59:00 AM', '11:50:00 AM - 11:51:00 AM', 1, 'San Bartolome', 0, 0, 1, '2023-04-29 12:53:56', '2023-05-15 00:02:12'),
(223, 'FAC-000000011', 21, 7, 'Onsite', '2023-05-22', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry', 'Room2', 'Room1', '09:59:00 AM - 10:59:00 AM', '11:50:00 AM - 11:51:00 AM', 1, 'San Fransisco', 0, 0, 0, '2023-04-29 12:53:56', '2023-04-29 12:53:56'),
(224, 'FAC-000000011', 21, 8, 'Online', '2023-05-29', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry', 'Room2', 'Room1', '09:59:00 AM - 10:59:00 AM', '11:50:00 AM - 11:51:00 AM', 1, 'San Fransisco', 0, 0, 0, '2023-04-29 12:53:56', '2023-04-29 12:53:56'),
(225, 'FAC-000000011', 21, 9, 'Online', '2023-05-29', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry', 'Room2', 'Room1', '09:59:00 AM - 10:59:00 AM', '11:50:00 AM - 11:51:00 AM', 1, 'San Fransisco', 0, 0, 0, '2023-04-29 12:53:56', '2023-04-29 12:53:56'),
(226, 'FAC-000000011', 21, 10, 'Onsite', '2023-05-29', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry', 'Room2', 'Room1', '09:59:00 AM - 10:59:00 AM', '11:50:00 AM - 11:51:00 AM', 1, 'San Bartolome', 0, 0, 0, '2023-04-29 12:53:56', '2023-04-29 12:53:56'),
(227, 'FAC-000000011', 21, 11, 'Onsite', '2023-05-29', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry', 'Room2', 'Room1', '09:59:00 AM - 10:59:00 AM', '11:50:00 AM - 11:51:00 AM', 1, 'San Bartolome', 0, 0, 0, '2023-04-29 12:53:56', '2023-04-29 12:53:56'),
(228, 'FAC-000000011', 21, 12, 'Onsite', '2023-05-29', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry', 'Room2', 'Room1', '09:59:00 AM - 10:59:00 AM', '11:50:00 AM - 11:51:00 AM', 1, 'San Bartolome', 0, 0, 0, '2023-04-29 12:53:56', '2023-04-29 12:53:56');
INSERT INTO `schedule_setup` (`id`, `facultyID`, `subjectID`, `week_no`, `type`, `date`, `objectives`, `descriptions`, `lab_room`, `lec_room`, `time_lec`, `time_lab`, `status`, `campus`, `is_reported`, `is_missing`, `is_available`, `created_at`, `updated_at`) VALUES
(229, 'FAC-000000011', 21, 13, 'Online', '2023-05-29', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry', 'Room2', 'Room1', '09:59:00 AM - 10:59:00 AM', '11:50:00 AM - 11:51:00 AM', 1, 'San Bartolome', 0, 0, 0, '2023-04-29 12:53:56', '2023-04-29 12:53:56'),
(230, 'FAC-000000011', 21, 14, 'Online', '2023-05-29', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry', 'Room2', 'Room1', '09:59:00 AM - 10:59:00 AM', '11:50:00 AM - 11:51:00 AM', 1, 'San Bartolome', 0, 0, 0, '2023-04-29 12:53:56', '2023-04-29 12:53:56'),
(231, 'FAC-000000011', 21, 15, 'Onsite', '2023-05-29', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry', 'Room2', 'Room1', '09:59:00 AM - 10:59:00 AM', '11:50:00 AM - 11:51:00 AM', 1, 'San Bartolome', 0, 0, 0, '2023-04-29 12:53:56', '2023-04-29 12:53:56'),
(232, 'FAC-000000011', 21, 16, 'Online', '2023-05-29', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry', 'Room2', 'Room1', '09:59:00 AM - 10:59:00 AM', '11:50:00 AM - 11:51:00 AM', 1, 'San Bartolome', 0, 0, 0, '2023-04-29 12:53:56', '2023-04-29 12:53:56'),
(233, 'FAC-000000011', 21, 17, 'Online', '2023-05-29', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry', 'Room2', 'Room1', '09:59:00 AM - 10:59:00 AM', '11:50:00 AM - 11:51:00 AM', 1, 'San Bartolome', 0, 0, 0, '2023-04-29 12:53:56', '2023-04-29 12:53:56'),
(234, 'FAC-000000011', 21, 18, 'Onsite', '2023-05-29', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry', 'Room2', 'Room1', '09:59:00 AM - 10:59:00 AM', '11:50:00 AM - 11:51:00 AM', 1, 'San Bartolome', 0, 0, 0, '2023-04-29 12:53:56', '2023-04-29 12:53:56'),
(235, 'FAC-000000014', 14, 1, 'Onsite', '2023-05-03', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry', 'Room2', 'Room1', '01:00:00 PM - 01:30:00 PM', '02:00:00 PM - 03:30:00 PM', 1, 'San Bartolome', 0, 1, 0, '2023-05-02 20:45:01', '2023-05-04 00:00:15'),
(236, 'FAC-000000014', 14, 2, 'Onsite', '2023-08-17', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry', 'Room2', 'Room1', '01:00:00 PM - 01:30:00 PM', '02:00:00 PM - 03:30:00 PM', 1, 'San Bartolome', 0, 0, 1, '2023-05-02 20:45:01', '2023-05-15 00:02:14'),
(237, 'FAC-000000014', 14, 3, 'Online', '2023-08-17', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry', 'Room2', 'Room1', '01:00:00 PM - 01:30:00 PM', '02:00:00 PM - 03:30:00 PM', 1, 'San Bartolome', 0, 0, 1, '2023-05-02 20:45:01', '2023-05-15 00:03:04'),
(238, 'FAC-000000014', 14, 4, 'Online', '2023-08-17', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry', 'Room2', 'Room1', '01:00:00 PM - 01:30:00 PM', '02:00:00 PM - 03:30:00 PM', 1, 'San Fransisco', 0, 0, 1, '2023-05-02 20:45:01', '2023-05-15 00:03:06'),
(239, 'FAC-000000014', 14, 5, 'Onsite', '2023-08-17', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry', 'Room2', 'Room1', '01:00:00 PM - 01:30:00 PM', '02:00:00 PM - 03:30:00 PM', 1, 'San Bartolome', 0, 0, 1, '2023-05-02 20:45:01', '2023-05-15 00:03:08'),
(240, 'FAC-000000014', 14, 6, 'Onsite', '2023-08-17', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry', 'Room2', 'Room1', '01:00:00 PM - 01:30:00 PM', '02:00:00 PM - 03:30:00 PM', 1, 'San Bartolome', 0, 0, 1, '2023-05-02 20:45:01', '2023-05-15 00:03:11'),
(241, 'FAC-000000014', 14, 7, 'Onsite', '2023-05-22', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry', 'Room2', 'Room1', '01:00:00 PM - 01:30:00 PM', '02:00:00 PM - 03:30:00 PM', 1, 'San Fransisco', 0, 0, 0, '2023-05-02 20:45:01', '2023-05-02 20:45:01'),
(242, 'FAC-000000014', 14, 8, 'Online', '2023-05-29', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry', 'Room2', 'Room1', '01:00:00 PM - 01:30:00 PM', '02:00:00 PM - 03:30:00 PM', 1, 'San Fransisco', 0, 0, 0, '2023-05-02 20:45:01', '2023-05-02 20:45:01'),
(243, 'FAC-000000014', 14, 9, 'Online', '2023-05-29', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry', 'Room2', 'Room1', '01:00:00 PM - 01:30:00 PM', '02:00:00 PM - 03:30:00 PM', 1, 'San Fransisco', 0, 0, 0, '2023-05-02 20:45:01', '2023-05-02 20:45:01'),
(244, 'FAC-000000014', 14, 10, 'Onsite', '2023-05-29', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry', 'Room2', 'Room1', '01:00:00 PM - 01:30:00 PM', '02:00:00 PM - 03:30:00 PM', 1, 'San Bartolome', 0, 0, 0, '2023-05-02 20:45:01', '2023-05-02 20:45:01'),
(245, 'FAC-000000014', 14, 11, 'Onsite', '2023-05-29', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry', 'Room2', 'Room1', '01:00:00 PM - 01:30:00 PM', '02:00:00 PM - 03:30:00 PM', 1, 'San Bartolome', 0, 0, 0, '2023-05-02 20:45:01', '2023-05-02 20:45:01'),
(246, 'FAC-000000014', 14, 12, 'Onsite', '2023-05-29', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry', 'Room2', 'Room1', '01:00:00 PM - 01:30:00 PM', '02:00:00 PM - 03:30:00 PM', 1, 'San Bartolome', 0, 0, 0, '2023-05-02 20:45:01', '2023-05-02 20:45:01'),
(247, 'FAC-000000014', 14, 13, 'Online', '2023-05-29', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry', 'Room2', 'Room1', '01:00:00 PM - 01:30:00 PM', '02:00:00 PM - 03:30:00 PM', 1, 'San Bartolome', 0, 0, 0, '2023-05-02 20:45:01', '2023-05-02 20:45:01'),
(248, 'FAC-000000014', 14, 14, 'Online', '2023-05-29', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry', 'Room2', 'Room1', '01:00:00 PM - 01:30:00 PM', '02:00:00 PM - 03:30:00 PM', 1, 'San Bartolome', 0, 0, 0, '2023-05-02 20:45:01', '2023-05-02 20:45:01'),
(249, 'FAC-000000014', 14, 15, 'Onsite', '2023-05-29', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry', 'Room2', 'Room1', '01:00:00 PM - 01:30:00 PM', '02:00:00 PM - 03:30:00 PM', 1, 'San Bartolome', 0, 0, 0, '2023-05-02 20:45:01', '2023-05-02 20:45:01'),
(250, 'FAC-000000014', 14, 16, 'Online', '2023-05-29', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry', 'Room2', 'Room1', '01:00:00 PM - 01:30:00 PM', '02:00:00 PM - 03:30:00 PM', 1, 'San Bartolome', 0, 0, 0, '2023-05-02 20:45:01', '2023-05-02 20:45:01'),
(251, 'FAC-000000014', 14, 17, 'Online', '2023-05-29', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry', 'Room2', 'Room1', '01:00:00 PM - 01:30:00 PM', '02:00:00 PM - 03:30:00 PM', 1, 'San Bartolome', 0, 0, 0, '2023-05-02 20:45:01', '2023-05-02 20:45:01'),
(252, 'FAC-000000014', 14, 18, 'Onsite', '2023-05-29', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry', 'Room2', 'Room1', '01:00:00 PM - 01:30:00 PM', '02:00:00 PM - 03:30:00 PM', 1, 'San Bartolome', 0, 0, 0, '2023-05-02 20:45:01', '2023-05-02 20:45:01'),
(253, 'FAC-000000014', 21, 1, 'Onsite', '2023-05-02', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry', 'Room2', 'Room1', '08:00:00 PM - 08:30:00 PM', '10:00:00 PM - 10:30:00 PM', 1, 'San Bartolome', 0, 1, 0, '2023-05-02 20:45:16', '2023-05-03 00:00:15'),
(254, 'FAC-000000014', 21, 2, 'Online', '2023-05-03', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry', 'Room2', 'Room1', '08:00:00 PM - 08:30:00 PM', '10:00:00 PM - 10:30:00 PM', 1, 'San Bartolome', 0, 1, 0, '2023-05-02 20:45:16', '2023-05-04 00:00:17'),
(255, 'FAC-000000014', 21, 3, 'Online', '2023-05-08', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry', 'Room2', 'Room1', '08:00:00 PM - 08:30:00 PM', '10:00:00 PM - 10:30:00 PM', 1, 'San Bartolome', 0, 1, 0, '2023-05-02 20:45:16', '2023-05-09 00:01:09'),
(256, 'FAC-000000014', 21, 4, 'Online', '2023-05-08', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry', 'Room2', 'Room1', '08:00:00 PM - 08:30:00 PM', '10:00:00 PM - 10:30:00 PM', 1, 'San Fransisco', 0, 1, 0, '2023-05-02 20:45:16', '2023-05-09 00:01:11'),
(257, 'FAC-000000014', 21, 5, 'Onsite', '2023-05-08', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry', 'Room2', 'Room1', '08:00:00 PM - 08:30:00 PM', '10:00:00 PM - 10:30:00 PM', 1, 'San Bartolome', 0, 1, 0, '2023-05-02 20:45:16', '2023-05-09 00:02:05'),
(258, 'FAC-000000014', 21, 6, 'Onsite', '2023-08-17', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry', 'Room2', 'Room1', '08:00:00 PM - 08:30:00 PM', '10:00:00 PM - 10:30:00 PM', 1, 'San Bartolome', 0, 0, 1, '2023-05-02 20:45:16', '2023-05-15 00:04:04'),
(259, 'FAC-000000014', 21, 7, 'Onsite', '2023-05-22', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry', 'Room2', 'Room1', '08:00:00 PM - 08:30:00 PM', '10:00:00 PM - 10:30:00 PM', 1, 'San Fransisco', 0, 0, 0, '2023-05-02 20:45:16', '2023-05-02 20:45:16'),
(260, 'FAC-000000014', 21, 8, 'Online', '2023-05-29', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry', 'Room2', 'Room1', '08:00:00 PM - 08:30:00 PM', '10:00:00 PM - 10:30:00 PM', 1, 'San Fransisco', 0, 0, 0, '2023-05-02 20:45:16', '2023-05-02 20:45:16'),
(261, 'FAC-000000014', 21, 9, 'Online', '2023-05-29', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry', 'Room2', 'Room1', '08:00:00 PM - 08:30:00 PM', '10:00:00 PM - 10:30:00 PM', 1, 'San Fransisco', 0, 0, 0, '2023-05-02 20:45:16', '2023-05-02 20:45:16'),
(262, 'FAC-000000014', 21, 10, 'Onsite', '2023-05-29', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry', 'Room2', 'Room1', '08:00:00 PM - 08:30:00 PM', '10:00:00 PM - 10:30:00 PM', 1, 'San Bartolome', 0, 0, 0, '2023-05-02 20:45:16', '2023-05-02 20:45:16'),
(263, 'FAC-000000014', 21, 11, 'Onsite', '2023-05-29', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry', 'Room2', 'Room1', '08:00:00 PM - 08:30:00 PM', '10:00:00 PM - 10:30:00 PM', 1, 'San Bartolome', 0, 0, 0, '2023-05-02 20:45:16', '2023-05-02 20:45:16'),
(264, 'FAC-000000014', 21, 12, 'Onsite', '2023-05-29', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry', 'Room2', 'Room1', '08:00:00 PM - 08:30:00 PM', '10:00:00 PM - 10:30:00 PM', 1, 'San Bartolome', 0, 0, 0, '2023-05-02 20:45:16', '2023-05-02 20:45:16'),
(265, 'FAC-000000014', 21, 13, 'Online', '2023-05-29', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry', 'Room2', 'Room1', '08:00:00 PM - 08:30:00 PM', '10:00:00 PM - 10:30:00 PM', 1, 'San Bartolome', 0, 0, 0, '2023-05-02 20:45:16', '2023-05-02 20:45:16'),
(266, 'FAC-000000014', 21, 14, 'Online', '2023-05-29', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry', 'Room2', 'Room1', '08:00:00 PM - 08:30:00 PM', '10:00:00 PM - 10:30:00 PM', 1, 'San Bartolome', 0, 0, 0, '2023-05-02 20:45:16', '2023-05-02 20:45:16'),
(267, 'FAC-000000014', 21, 15, 'Onsite', '2023-05-29', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry', 'Room2', 'Room1', '08:00:00 PM - 08:30:00 PM', '10:00:00 PM - 10:30:00 PM', 1, 'San Bartolome', 0, 0, 0, '2023-05-02 20:45:16', '2023-05-02 20:45:16'),
(268, 'FAC-000000014', 21, 16, 'Online', '2023-05-29', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry', 'Room2', 'Room1', '08:00:00 PM - 08:30:00 PM', '10:00:00 PM - 10:30:00 PM', 1, 'San Bartolome', 0, 0, 0, '2023-05-02 20:45:16', '2023-05-02 20:45:16'),
(269, 'FAC-000000014', 21, 17, 'Online', '2023-05-29', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry', 'Room2', 'Room1', '08:00:00 PM - 08:30:00 PM', '10:00:00 PM - 10:30:00 PM', 1, 'San Bartolome', 0, 0, 0, '2023-05-02 20:45:16', '2023-05-02 20:45:16'),
(270, 'FAC-000000014', 21, 18, 'Onsite', '2023-05-29', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry', 'Room2', 'Room1', '08:00:00 PM - 08:30:00 PM', '10:00:00 PM - 10:30:00 PM', 1, 'San Bartolome', 0, 0, 0, '2023-05-02 20:45:16', '2023-05-02 20:45:16'),
(271, 'FAC-000000017', 14, 1, 'Onsite', '2023-05-03', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry', 'Room2', 'Room1', '01:00:00 PM - 01:30:00 PM', '02:00:00 PM - 03:30:00 PM', 1, 'San Bartolome', 1, 0, 1, '2023-05-03 16:20:20', '2023-05-03 16:52:17'),
(272, 'FAC-000000017', 14, 2, 'Onsite', '2023-05-08', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry', 'Room2', 'Room1', '01:00:00 PM - 01:30:00 PM', '02:00:00 PM - 03:30:00 PM', 1, 'San Bartolome', 0, 1, 0, '2023-05-03 16:20:20', '2023-05-09 00:02:07'),
(273, 'FAC-000000017', 14, 3, 'Online', '2023-08-17', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry', 'Room2', 'Room1', '01:00:00 PM - 01:30:00 PM', '02:00:00 PM - 03:30:00 PM', 1, 'San Bartolome', 0, 0, 1, '2023-05-03 16:20:20', '2023-05-15 00:04:07'),
(274, 'FAC-000000017', 14, 4, 'Online', '2023-08-17', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry', 'Room2', 'Room1', '01:00:00 PM - 01:30:00 PM', '02:00:00 PM - 03:30:00 PM', 1, 'San Fransisco', 0, 0, 1, '2023-05-03 16:20:20', '2023-05-15 00:04:09'),
(275, 'FAC-000000017', 14, 5, 'Onsite', '2023-08-17', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry', 'Room2', 'Room1', '01:00:00 PM - 01:30:00 PM', '02:00:00 PM - 03:30:00 PM', 1, 'San Bartolome', 0, 0, 1, '2023-05-03 16:20:20', '2023-05-15 00:04:11'),
(276, 'FAC-000000017', 14, 6, 'Onsite', '2023-08-17', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry', 'Room2', 'Room1', '01:00:00 PM - 01:30:00 PM', '02:00:00 PM - 03:30:00 PM', 1, 'San Bartolome', 0, 0, 1, '2023-05-03 16:20:20', '2023-05-15 00:05:05'),
(277, 'FAC-000000017', 14, 7, 'Onsite', '2023-05-22', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry', 'Room2', 'Room1', '01:00:00 PM - 01:30:00 PM', '02:00:00 PM - 03:30:00 PM', 1, 'San Fransisco', 0, 0, 0, '2023-05-03 16:20:20', '2023-05-03 16:20:20'),
(278, 'FAC-000000017', 14, 8, 'Online', '2023-05-29', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry', 'Room2', 'Room1', '01:00:00 PM - 01:30:00 PM', '02:00:00 PM - 03:30:00 PM', 1, 'San Fransisco', 0, 0, 0, '2023-05-03 16:20:20', '2023-05-03 16:20:20'),
(279, 'FAC-000000017', 14, 9, 'Online', '2023-05-29', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry', 'Room2', 'Room1', '01:00:00 PM - 01:30:00 PM', '02:00:00 PM - 03:30:00 PM', 1, 'San Fransisco', 0, 0, 0, '2023-05-03 16:20:20', '2023-05-03 16:20:20'),
(280, 'FAC-000000017', 14, 10, 'Onsite', '2023-05-29', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry', 'Room2', 'Room1', '01:00:00 PM - 01:30:00 PM', '02:00:00 PM - 03:30:00 PM', 1, 'San Bartolome', 0, 0, 0, '2023-05-03 16:20:20', '2023-05-03 16:20:20'),
(281, 'FAC-000000017', 14, 11, 'Onsite', '2023-05-29', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry', 'Room2', 'Room1', '01:00:00 PM - 01:30:00 PM', '02:00:00 PM - 03:30:00 PM', 1, 'San Bartolome', 0, 0, 0, '2023-05-03 16:20:20', '2023-05-03 16:20:20'),
(282, 'FAC-000000017', 14, 12, 'Onsite', '2023-05-29', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry', 'Room2', 'Room1', '01:00:00 PM - 01:30:00 PM', '02:00:00 PM - 03:30:00 PM', 1, 'San Bartolome', 0, 0, 0, '2023-05-03 16:20:20', '2023-05-03 16:20:20'),
(283, 'FAC-000000017', 14, 13, 'Online', '2023-05-29', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry', 'Room2', 'Room1', '01:00:00 PM - 01:30:00 PM', '02:00:00 PM - 03:30:00 PM', 1, 'San Bartolome', 0, 0, 0, '2023-05-03 16:20:20', '2023-05-03 16:20:20'),
(284, 'FAC-000000017', 14, 14, 'Online', '2023-05-29', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry', 'Room2', 'Room1', '01:00:00 PM - 01:30:00 PM', '02:00:00 PM - 03:30:00 PM', 1, 'San Bartolome', 0, 0, 0, '2023-05-03 16:20:20', '2023-05-03 16:20:20'),
(285, 'FAC-000000017', 14, 15, 'Onsite', '2023-05-29', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry', 'Room2', 'Room1', '01:00:00 PM - 01:30:00 PM', '02:00:00 PM - 03:30:00 PM', 1, 'San Bartolome', 0, 0, 0, '2023-05-03 16:20:20', '2023-05-03 16:20:20'),
(286, 'FAC-000000017', 14, 16, 'Online', '2023-05-29', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry', 'Room2', 'Room1', '01:00:00 PM - 01:30:00 PM', '02:00:00 PM - 03:30:00 PM', 1, 'San Bartolome', 0, 0, 0, '2023-05-03 16:20:20', '2023-05-03 16:20:20'),
(287, 'FAC-000000017', 14, 17, 'Online', '2023-05-29', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry', 'Room2', 'Room1', '01:00:00 PM - 01:30:00 PM', '02:00:00 PM - 03:30:00 PM', 1, 'San Bartolome', 0, 0, 0, '2023-05-03 16:20:20', '2023-05-03 16:20:20'),
(288, 'FAC-000000017', 14, 18, 'Onsite', '2023-05-29', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry', 'Room2', 'Room1', '01:00:00 PM - 01:30:00 PM', '02:00:00 PM - 03:30:00 PM', 1, 'San Bartolome', 0, 0, 0, '2023-05-03 16:20:20', '2023-05-03 16:20:20'),
(289, 'FAC-000000017', 21, 1, 'Onsite', '2023-08-17', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry', 'Room2', 'Room1', '08:00:00 PM - 08:30:00 PM', '10:00:00 PM - 10:30:00 PM', 1, 'San Bartolome', 0, 0, 1, '2023-05-03 16:20:52', '2023-05-15 00:05:07'),
(290, 'FAC-000000017', 21, 2, 'Online', '2023-08-17', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry', 'Room2', 'Room1', '08:00:00 PM - 08:30:00 PM', '10:00:00 PM - 10:30:00 PM', 1, 'San Bartolome', 0, 0, 1, '2023-05-03 16:20:52', '2023-05-15 00:05:09'),
(291, 'FAC-000000017', 21, 3, 'Online', '2023-08-17', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry', 'Room2', 'Room1', '08:00:00 PM - 08:30:00 PM', '10:00:00 PM - 10:30:00 PM', 1, 'San Bartolome', 0, 0, 1, '2023-05-03 16:20:52', '2023-05-15 00:06:04'),
(292, 'FAC-000000017', 21, 4, 'Online', '2023-08-17', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry', 'Room2', 'Room1', '08:00:00 PM - 08:30:00 PM', '10:00:00 PM - 10:30:00 PM', 1, 'San Fransisco', 0, 0, 1, '2023-05-03 16:20:52', '2023-05-15 00:06:06'),
(293, 'FAC-000000017', 21, 5, 'Onsite', '2023-08-17', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry', 'Room2', 'Room1', '08:00:00 PM - 08:30:00 PM', '10:00:00 PM - 10:30:00 PM', 1, 'San Bartolome', 0, 0, 1, '2023-05-03 16:20:52', '2023-05-15 00:06:08'),
(294, 'FAC-000000017', 21, 6, 'Onsite', '2023-08-17', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry', 'Room2', 'Room1', '08:00:00 PM - 08:30:00 PM', '10:00:00 PM - 10:30:00 PM', 1, 'San Bartolome', 0, 0, 1, '2023-05-03 16:20:52', '2023-05-15 00:07:04'),
(295, 'FAC-000000017', 21, 7, 'Onsite', '2023-05-22', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry', 'Room2', 'Room1', '08:00:00 PM - 08:30:00 PM', '10:00:00 PM - 10:30:00 PM', 1, 'San Fransisco', 0, 0, 0, '2023-05-03 16:20:52', '2023-05-03 16:20:52'),
(296, 'FAC-000000017', 21, 8, 'Online', '2023-05-29', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry', 'Room2', 'Room1', '08:00:00 PM - 08:30:00 PM', '10:00:00 PM - 10:30:00 PM', 1, 'San Fransisco', 0, 0, 0, '2023-05-03 16:20:52', '2023-05-03 16:20:52'),
(297, 'FAC-000000017', 21, 9, 'Online', '2023-05-29', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry', 'Room2', 'Room1', '08:00:00 PM - 08:30:00 PM', '10:00:00 PM - 10:30:00 PM', 1, 'San Fransisco', 0, 0, 0, '2023-05-03 16:20:52', '2023-05-03 16:20:52'),
(298, 'FAC-000000017', 21, 10, 'Onsite', '2023-05-29', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry', 'Room2', 'Room1', '08:00:00 PM - 08:30:00 PM', '10:00:00 PM - 10:30:00 PM', 1, 'San Bartolome', 0, 0, 0, '2023-05-03 16:20:52', '2023-05-03 16:20:52'),
(299, 'FAC-000000017', 21, 11, 'Onsite', '2023-05-29', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry', 'Room2', 'Room1', '08:00:00 PM - 08:30:00 PM', '10:00:00 PM - 10:30:00 PM', 1, 'San Bartolome', 0, 0, 0, '2023-05-03 16:20:52', '2023-05-03 16:20:52'),
(300, 'FAC-000000017', 21, 12, 'Onsite', '2023-05-29', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry', 'Room2', 'Room1', '08:00:00 PM - 08:30:00 PM', '10:00:00 PM - 10:30:00 PM', 1, 'San Bartolome', 0, 0, 0, '2023-05-03 16:20:52', '2023-05-03 16:20:52'),
(301, 'FAC-000000017', 21, 13, 'Online', '2023-05-29', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry', 'Room2', 'Room1', '08:00:00 PM - 08:30:00 PM', '10:00:00 PM - 10:30:00 PM', 1, 'San Bartolome', 0, 0, 0, '2023-05-03 16:20:52', '2023-05-03 16:20:52'),
(302, 'FAC-000000017', 21, 14, 'Online', '2023-05-29', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry', 'Room2', 'Room1', '08:00:00 PM - 08:30:00 PM', '10:00:00 PM - 10:30:00 PM', 1, 'San Bartolome', 0, 0, 0, '2023-05-03 16:20:52', '2023-05-03 16:20:52'),
(303, 'FAC-000000017', 21, 15, 'Onsite', '2023-05-29', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry', 'Room2', 'Room1', '08:00:00 PM - 08:30:00 PM', '10:00:00 PM - 10:30:00 PM', 1, 'San Bartolome', 0, 0, 0, '2023-05-03 16:20:52', '2023-05-03 16:20:52'),
(304, 'FAC-000000017', 21, 16, 'Online', '2023-05-29', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry', 'Room2', 'Room1', '08:00:00 PM - 08:30:00 PM', '10:00:00 PM - 10:30:00 PM', 1, 'San Bartolome', 0, 0, 0, '2023-05-03 16:20:52', '2023-05-03 16:20:52'),
(305, 'FAC-000000017', 21, 17, 'Online', '2023-05-29', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry', 'Room2', 'Room1', '08:00:00 PM - 08:30:00 PM', '10:00:00 PM - 10:30:00 PM', 1, 'San Bartolome', 0, 0, 0, '2023-05-03 16:20:52', '2023-05-03 16:20:52'),
(306, 'FAC-000000017', 21, 18, 'Onsite', '2023-05-29', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry', 'Room2', 'Room1', '08:00:00 PM - 08:30:00 PM', '10:00:00 PM - 10:30:00 PM', 1, 'San Bartolome', 0, 0, 0, '2023-05-03 16:20:52', '2023-05-03 16:20:52'),
(307, 'FAC-000000021', 14, 1, 'Onsite', '2023-05-08', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry', 'Room2', 'Room1', '01:00:00 PM - 01:30:00 PM', '02:00:00 PM - 03:30:00 PM', 1, 'San Bartolome', 0, 1, 0, '2023-05-08 11:53:11', '2023-05-09 00:02:09'),
(308, 'FAC-000000021', 14, 2, 'Onsite', '2023-08-17', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry', 'Room2', 'Room1', '01:00:00 PM - 01:30:00 PM', '02:00:00 PM - 03:30:00 PM', 1, 'San Bartolome', 0, 0, 1, '2023-05-08 11:53:11', '2023-05-15 00:07:06'),
(309, 'FAC-000000021', 14, 3, 'Online', '2023-08-17', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry', 'Room2', 'Room1', '01:00:00 PM - 01:30:00 PM', '02:00:00 PM - 03:30:00 PM', 1, 'San Bartolome', 0, 0, 1, '2023-05-08 11:53:11', '2023-05-15 00:07:09'),
(310, 'FAC-000000021', 14, 4, 'Online', '2023-08-17', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry', 'Room2', 'Room1', '01:00:00 PM - 01:30:00 PM', '02:00:00 PM - 03:30:00 PM', 1, 'San Fransisco', 0, 0, 1, '2023-05-08 11:53:11', '2023-05-15 00:08:04'),
(311, 'FAC-000000021', 14, 5, 'Onsite', '2023-08-17', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry', 'Room2', 'Room1', '01:00:00 PM - 01:30:00 PM', '02:00:00 PM - 03:30:00 PM', 1, 'San Bartolome', 0, 0, 1, '2023-05-08 11:53:11', '2023-05-15 00:08:06'),
(312, 'FAC-000000021', 14, 6, 'Onsite', '2023-08-17', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry', 'Room2', 'Room1', '01:00:00 PM - 01:30:00 PM', '02:00:00 PM - 03:30:00 PM', 1, 'San Bartolome', 0, 0, 1, '2023-05-08 11:53:11', '2023-05-15 00:09:06'),
(313, 'FAC-000000021', 14, 7, 'Onsite', '2023-05-22', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry', 'Room2', 'Room1', '01:00:00 PM - 01:30:00 PM', '02:00:00 PM - 03:30:00 PM', 1, 'San Fransisco', 0, 0, 0, '2023-05-08 11:53:11', '2023-05-08 11:53:11'),
(314, 'FAC-000000021', 14, 8, 'Online', '2023-05-29', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry', 'Room2', 'Room1', '01:00:00 PM - 01:30:00 PM', '02:00:00 PM - 03:30:00 PM', 1, 'San Fransisco', 0, 0, 0, '2023-05-08 11:53:11', '2023-05-08 11:53:11'),
(315, 'FAC-000000021', 14, 9, 'Online', '2023-05-29', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry', 'Room2', 'Room1', '01:00:00 PM - 01:30:00 PM', '02:00:00 PM - 03:30:00 PM', 1, 'San Fransisco', 0, 0, 0, '2023-05-08 11:53:11', '2023-05-08 11:53:11'),
(316, 'FAC-000000021', 14, 10, 'Onsite', '2023-05-29', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry', 'Room2', 'Room1', '01:00:00 PM - 01:30:00 PM', '02:00:00 PM - 03:30:00 PM', 1, 'San Bartolome', 0, 0, 0, '2023-05-08 11:53:11', '2023-05-08 11:53:11'),
(317, 'FAC-000000021', 14, 11, 'Onsite', '2023-05-29', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry', 'Room2', 'Room1', '01:00:00 PM - 01:30:00 PM', '02:00:00 PM - 03:30:00 PM', 1, 'San Bartolome', 0, 0, 0, '2023-05-08 11:53:11', '2023-05-08 11:53:11'),
(318, 'FAC-000000021', 14, 12, 'Onsite', '2023-05-29', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry', 'Room2', 'Room1', '01:00:00 PM - 01:30:00 PM', '02:00:00 PM - 03:30:00 PM', 1, 'San Bartolome', 0, 0, 0, '2023-05-08 11:53:11', '2023-05-08 11:53:11'),
(319, 'FAC-000000021', 14, 13, 'Online', '2023-05-29', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry', 'Room2', 'Room1', '01:00:00 PM - 01:30:00 PM', '02:00:00 PM - 03:30:00 PM', 1, 'San Bartolome', 0, 0, 0, '2023-05-08 11:53:11', '2023-05-08 11:53:11'),
(320, 'FAC-000000021', 14, 14, 'Online', '2023-05-29', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry', 'Room2', 'Room1', '01:00:00 PM - 01:30:00 PM', '02:00:00 PM - 03:30:00 PM', 1, 'San Bartolome', 0, 0, 0, '2023-05-08 11:53:11', '2023-05-08 11:53:11'),
(321, 'FAC-000000021', 14, 15, 'Onsite', '2023-05-29', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry', 'Room2', 'Room1', '01:00:00 PM - 01:30:00 PM', '02:00:00 PM - 03:30:00 PM', 1, 'San Bartolome', 0, 0, 0, '2023-05-08 11:53:11', '2023-05-08 11:53:11'),
(322, 'FAC-000000021', 14, 16, 'Online', '2023-05-29', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry', 'Room2', 'Room1', '01:00:00 PM - 01:30:00 PM', '02:00:00 PM - 03:30:00 PM', 1, 'San Bartolome', 0, 0, 0, '2023-05-08 11:53:11', '2023-05-08 11:53:11'),
(323, 'FAC-000000021', 14, 17, 'Online', '2023-05-29', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry', 'Room2', 'Room1', '01:00:00 PM - 01:30:00 PM', '02:00:00 PM - 03:30:00 PM', 1, 'San Bartolome', 0, 0, 0, '2023-05-08 11:53:11', '2023-05-08 11:53:11'),
(324, 'FAC-000000021', 14, 18, 'Onsite', '2023-05-29', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry', 'Room2', 'Room1', '01:00:00 PM - 01:30:00 PM', '02:00:00 PM - 03:30:00 PM', 1, 'San Bartolome', 0, 0, 0, '2023-05-08 11:53:11', '2023-05-08 11:53:11'),
(325, 'FAC-000000021', 14, 1, 'Onsite', '2023-05-08', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry', 'Room2', 'Room1', '01:00:00 PM - 01:30:00 PM', '02:00:00 PM - 03:30:00 PM', 1, 'San Bartolome', 0, 1, 0, '2023-05-08 11:53:38', '2023-05-09 00:02:09'),
(326, 'FAC-000000021', 14, 2, 'Onsite', '2023-08-17', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry', 'Room2', 'Room1', '01:00:00 PM - 01:30:00 PM', '02:00:00 PM - 03:30:00 PM', 1, 'San Bartolome', 0, 0, 1, '2023-05-08 11:53:38', '2023-05-15 00:07:06'),
(327, 'FAC-000000021', 14, 3, 'Online', '2023-08-17', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry', 'Room2', 'Room1', '01:00:00 PM - 01:30:00 PM', '02:00:00 PM - 03:30:00 PM', 1, 'San Bartolome', 0, 0, 1, '2023-05-08 11:53:38', '2023-05-15 00:07:09'),
(328, 'FAC-000000021', 14, 4, 'Online', '2023-08-17', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry', 'Room2', 'Room1', '01:00:00 PM - 01:30:00 PM', '02:00:00 PM - 03:30:00 PM', 1, 'San Fransisco', 0, 0, 1, '2023-05-08 11:53:38', '2023-05-15 00:08:04'),
(329, 'FAC-000000021', 14, 5, 'Onsite', '2023-08-17', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry', 'Room2', 'Room1', '01:00:00 PM - 01:30:00 PM', '02:00:00 PM - 03:30:00 PM', 1, 'San Bartolome', 0, 0, 1, '2023-05-08 11:53:38', '2023-05-15 00:08:06'),
(330, 'FAC-000000021', 14, 6, 'Onsite', '2023-08-17', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry', 'Room2', 'Room1', '01:00:00 PM - 01:30:00 PM', '02:00:00 PM - 03:30:00 PM', 1, 'San Bartolome', 0, 0, 1, '2023-05-08 11:53:38', '2023-05-15 00:09:06'),
(331, 'FAC-000000021', 14, 7, 'Onsite', '2023-05-22', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry', 'Room2', 'Room1', '01:00:00 PM - 01:30:00 PM', '02:00:00 PM - 03:30:00 PM', 1, 'San Fransisco', 0, 0, 0, '2023-05-08 11:53:38', '2023-05-08 11:53:38'),
(332, 'FAC-000000021', 14, 8, 'Online', '2023-05-29', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry', 'Room2', 'Room1', '01:00:00 PM - 01:30:00 PM', '02:00:00 PM - 03:30:00 PM', 1, 'San Fransisco', 0, 0, 0, '2023-05-08 11:53:38', '2023-05-08 11:53:38'),
(333, 'FAC-000000021', 14, 9, 'Online', '2023-05-29', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry', 'Room2', 'Room1', '01:00:00 PM - 01:30:00 PM', '02:00:00 PM - 03:30:00 PM', 1, 'San Fransisco', 0, 0, 0, '2023-05-08 11:53:38', '2023-05-08 11:53:38'),
(334, 'FAC-000000021', 14, 10, 'Onsite', '2023-05-29', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry', 'Room2', 'Room1', '01:00:00 PM - 01:30:00 PM', '02:00:00 PM - 03:30:00 PM', 1, 'San Bartolome', 0, 0, 0, '2023-05-08 11:53:38', '2023-05-08 11:53:38'),
(335, 'FAC-000000021', 14, 11, 'Onsite', '2023-05-29', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry', 'Room2', 'Room1', '01:00:00 PM - 01:30:00 PM', '02:00:00 PM - 03:30:00 PM', 1, 'San Bartolome', 0, 0, 0, '2023-05-08 11:53:38', '2023-05-08 11:53:38'),
(336, 'FAC-000000021', 14, 12, 'Onsite', '2023-05-29', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry', 'Room2', 'Room1', '01:00:00 PM - 01:30:00 PM', '02:00:00 PM - 03:30:00 PM', 1, 'San Bartolome', 0, 0, 0, '2023-05-08 11:53:38', '2023-05-08 11:53:38'),
(337, 'FAC-000000021', 14, 13, 'Online', '2023-05-29', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry', 'Room2', 'Room1', '01:00:00 PM - 01:30:00 PM', '02:00:00 PM - 03:30:00 PM', 1, 'San Bartolome', 0, 0, 0, '2023-05-08 11:53:38', '2023-05-08 11:53:38'),
(338, 'FAC-000000021', 14, 14, 'Online', '2023-05-29', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry', 'Room2', 'Room1', '01:00:00 PM - 01:30:00 PM', '02:00:00 PM - 03:30:00 PM', 1, 'San Bartolome', 0, 0, 0, '2023-05-08 11:53:38', '2023-05-08 11:53:38'),
(339, 'FAC-000000021', 14, 15, 'Onsite', '2023-05-29', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry', 'Room2', 'Room1', '01:00:00 PM - 01:30:00 PM', '02:00:00 PM - 03:30:00 PM', 1, 'San Bartolome', 0, 0, 0, '2023-05-08 11:53:38', '2023-05-08 11:53:38'),
(340, 'FAC-000000021', 14, 16, 'Online', '2023-05-29', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry', 'Room2', 'Room1', '01:00:00 PM - 01:30:00 PM', '02:00:00 PM - 03:30:00 PM', 1, 'San Bartolome', 0, 0, 0, '2023-05-08 11:53:38', '2023-05-08 11:53:38'),
(341, 'FAC-000000021', 14, 17, 'Online', '2023-05-29', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry', 'Room2', 'Room1', '01:00:00 PM - 01:30:00 PM', '02:00:00 PM - 03:30:00 PM', 1, 'San Bartolome', 0, 0, 0, '2023-05-08 11:53:38', '2023-05-08 11:53:38'),
(342, 'FAC-000000021', 14, 18, 'Onsite', '2023-05-29', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry', 'Room2', 'Room1', '01:00:00 PM - 01:30:00 PM', '02:00:00 PM - 03:30:00 PM', 1, 'San Bartolome', 0, 0, 0, '2023-05-08 11:53:38', '2023-05-08 11:53:38'),
(343, 'FAC-000000021', 21, 1, 'Onsite', '2023-05-08', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry', 'Room2', 'Room1', '08:00:00 PM - 08:30:00 PM', '10:00:00 PM - 10:30:00 PM', 1, 'San Bartolome', 0, 1, 0, '2023-05-08 11:59:53', '2023-05-09 00:03:04'),
(344, 'FAC-000000021', 21, 2, 'Online', '2023-08-17', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry', 'Room2', 'Room1', '08:00:00 PM - 08:30:00 PM', '10:00:00 PM - 10:30:00 PM', 1, 'San Bartolome', 0, 0, 1, '2023-05-08 11:59:53', '2023-05-15 00:10:05'),
(345, 'FAC-000000021', 21, 3, 'Online', '2023-08-17', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry', 'Room2', 'Room1', '08:00:00 PM - 08:30:00 PM', '10:00:00 PM - 10:30:00 PM', 1, 'San Bartolome', 0, 0, 1, '2023-05-08 11:59:53', '2023-05-15 00:10:07'),
(346, 'FAC-000000021', 21, 4, 'Online', '2023-08-17', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry', 'Room2', 'Room1', '08:00:00 PM - 08:30:00 PM', '10:00:00 PM - 10:30:00 PM', 1, 'San Fransisco', 0, 0, 1, '2023-05-08 11:59:53', '2023-05-15 00:11:04'),
(347, 'FAC-000000021', 21, 5, 'Onsite', '2023-08-17', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry', 'Room2', 'Room1', '08:00:00 PM - 08:30:00 PM', '10:00:00 PM - 10:30:00 PM', 1, 'San Bartolome', 0, 0, 1, '2023-05-08 11:59:53', '2023-05-15 00:11:06'),
(348, 'FAC-000000021', 21, 6, 'Onsite', '2023-08-17', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry', 'Room2', 'Room1', '08:00:00 PM - 08:30:00 PM', '10:00:00 PM - 10:30:00 PM', 1, 'San Bartolome', 0, 0, 1, '2023-05-08 11:59:53', '2023-05-15 00:12:04'),
(349, 'FAC-000000021', 21, 7, 'Onsite', '2023-05-22', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry', 'Room2', 'Room1', '08:00:00 PM - 08:30:00 PM', '10:00:00 PM - 10:30:00 PM', 1, 'San Fransisco', 0, 0, 0, '2023-05-08 11:59:53', '2023-05-08 11:59:53'),
(350, 'FAC-000000021', 21, 8, 'Online', '2023-05-29', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry', 'Room2', 'Room1', '08:00:00 PM - 08:30:00 PM', '10:00:00 PM - 10:30:00 PM', 1, 'San Fransisco', 0, 0, 0, '2023-05-08 11:59:53', '2023-05-08 11:59:53'),
(351, 'FAC-000000021', 21, 9, 'Online', '2023-05-29', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry', 'Room2', 'Room1', '08:00:00 PM - 08:30:00 PM', '10:00:00 PM - 10:30:00 PM', 1, 'San Fransisco', 0, 0, 0, '2023-05-08 11:59:53', '2023-05-08 11:59:53'),
(352, 'FAC-000000021', 21, 10, 'Onsite', '2023-05-29', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry', 'Room2', 'Room1', '08:00:00 PM - 08:30:00 PM', '10:00:00 PM - 10:30:00 PM', 1, 'San Bartolome', 0, 0, 0, '2023-05-08 11:59:53', '2023-05-08 11:59:53'),
(353, 'FAC-000000021', 21, 11, 'Onsite', '2023-05-29', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry', 'Room2', 'Room1', '08:00:00 PM - 08:30:00 PM', '10:00:00 PM - 10:30:00 PM', 1, 'San Bartolome', 0, 0, 0, '2023-05-08 11:59:53', '2023-05-08 11:59:53'),
(354, 'FAC-000000021', 21, 12, 'Onsite', '2023-05-29', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry', 'Room2', 'Room1', '08:00:00 PM - 08:30:00 PM', '10:00:00 PM - 10:30:00 PM', 1, 'San Bartolome', 0, 0, 0, '2023-05-08 11:59:53', '2023-05-08 11:59:53'),
(355, 'FAC-000000021', 21, 13, 'Online', '2023-05-29', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry', 'Room2', 'Room1', '08:00:00 PM - 08:30:00 PM', '10:00:00 PM - 10:30:00 PM', 1, 'San Bartolome', 0, 0, 0, '2023-05-08 11:59:53', '2023-05-08 11:59:53'),
(356, 'FAC-000000021', 21, 14, 'Online', '2023-05-29', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry', 'Room2', 'Room1', '08:00:00 PM - 08:30:00 PM', '10:00:00 PM - 10:30:00 PM', 1, 'San Bartolome', 0, 0, 0, '2023-05-08 11:59:53', '2023-05-08 11:59:53'),
(357, 'FAC-000000021', 21, 15, 'Onsite', '2023-05-29', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry', 'Room2', 'Room1', '08:00:00 PM - 08:30:00 PM', '10:00:00 PM - 10:30:00 PM', 1, 'San Bartolome', 0, 0, 0, '2023-05-08 11:59:53', '2023-05-08 11:59:53'),
(358, 'FAC-000000021', 21, 16, 'Online', '2023-05-29', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry', 'Room2', 'Room1', '08:00:00 PM - 08:30:00 PM', '10:00:00 PM - 10:30:00 PM', 1, 'San Bartolome', 0, 0, 0, '2023-05-08 11:59:53', '2023-05-08 11:59:53'),
(359, 'FAC-000000021', 21, 17, 'Online', '2023-05-29', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry', 'Room2', 'Room1', '08:00:00 PM - 08:30:00 PM', '10:00:00 PM - 10:30:00 PM', 1, 'San Bartolome', 0, 0, 0, '2023-05-08 11:59:53', '2023-05-08 11:59:53'),
(360, 'FAC-000000021', 21, 18, 'Onsite', '2023-05-29', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry', 'Room2', 'Room1', '08:00:00 PM - 08:30:00 PM', '10:00:00 PM - 10:30:00 PM', 1, 'San Bartolome', 0, 0, 0, '2023-05-08 11:59:53', '2023-05-08 11:59:53'),
(361, 'FAC-000000022', 14, 1, 'Onsite', '2023-05-08', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry', 'Room2', 'Room1', '01:00:00 PM - 01:30:00 PM', '02:00:00 PM - 03:30:00 PM', 1, 'San Bartolome', 0, 1, 0, '2023-05-09 02:43:19', '2023-05-09 02:44:07'),
(362, 'FAC-000000022', 14, 2, 'Onsite', '2023-08-17', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry', 'Room2', 'Room1', '01:00:00 PM - 01:30:00 PM', '02:00:00 PM - 03:30:00 PM', 1, 'San Bartolome', 0, 0, 1, '2023-05-09 02:43:19', '2023-05-15 00:12:07'),
(363, 'FAC-000000022', 14, 3, 'Online', '2023-08-17', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry', 'Room2', 'Room1', '01:00:00 PM - 01:30:00 PM', '02:00:00 PM - 03:30:00 PM', 1, 'San Bartolome', 0, 0, 1, '2023-05-09 02:43:19', '2023-05-15 00:13:04'),
(364, 'FAC-000000022', 14, 4, 'Online', '2023-08-17', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry', 'Room2', 'Room1', '01:00:00 PM - 01:30:00 PM', '02:00:00 PM - 03:30:00 PM', 1, 'San Fransisco', 0, 0, 1, '2023-05-09 02:43:19', '2023-05-15 00:14:04'),
(365, 'FAC-000000022', 14, 5, 'Onsite', '2023-08-17', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry', 'Room2', 'Room1', '01:00:00 PM - 01:30:00 PM', '02:00:00 PM - 03:30:00 PM', 1, 'San Bartolome', 0, 0, 1, '2023-05-09 02:43:19', '2023-05-15 00:15:04'),
(366, 'FAC-000000022', 14, 6, 'Onsite', '2023-08-17', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry', 'Room2', 'Room1', '01:00:00 PM - 01:30:00 PM', '02:00:00 PM - 03:30:00 PM', 1, 'San Bartolome', 0, 0, 1, '2023-05-09 02:43:19', '2023-05-15 00:16:04');
INSERT INTO `schedule_setup` (`id`, `facultyID`, `subjectID`, `week_no`, `type`, `date`, `objectives`, `descriptions`, `lab_room`, `lec_room`, `time_lec`, `time_lab`, `status`, `campus`, `is_reported`, `is_missing`, `is_available`, `created_at`, `updated_at`) VALUES
(367, 'FAC-000000022', 14, 7, 'Onsite', '2023-05-22', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry', 'Room2', 'Room1', '01:00:00 PM - 01:30:00 PM', '02:00:00 PM - 03:30:00 PM', 1, 'San Fransisco', 0, 0, 0, '2023-05-09 02:43:19', '2023-05-09 02:43:19'),
(368, 'FAC-000000022', 14, 8, 'Online', '2023-05-29', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry', 'Room2', 'Room1', '01:00:00 PM - 01:30:00 PM', '02:00:00 PM - 03:30:00 PM', 1, 'San Fransisco', 0, 0, 0, '2023-05-09 02:43:19', '2023-05-09 02:43:19'),
(369, 'FAC-000000022', 14, 9, 'Online', '2023-05-29', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry', 'Room2', 'Room1', '01:00:00 PM - 01:30:00 PM', '02:00:00 PM - 03:30:00 PM', 1, 'San Fransisco', 0, 0, 0, '2023-05-09 02:43:19', '2023-05-09 02:43:19'),
(370, 'FAC-000000022', 14, 10, 'Onsite', '2023-05-29', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry', 'Room2', 'Room1', '01:00:00 PM - 01:30:00 PM', '02:00:00 PM - 03:30:00 PM', 1, 'San Bartolome', 0, 0, 0, '2023-05-09 02:43:19', '2023-05-09 02:43:19'),
(371, 'FAC-000000022', 14, 11, 'Onsite', '2023-05-29', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry', 'Room2', 'Room1', '01:00:00 PM - 01:30:00 PM', '02:00:00 PM - 03:30:00 PM', 1, 'San Bartolome', 0, 0, 0, '2023-05-09 02:43:19', '2023-05-09 02:43:19'),
(372, 'FAC-000000022', 14, 12, 'Onsite', '2023-05-29', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry', 'Room2', 'Room1', '01:00:00 PM - 01:30:00 PM', '02:00:00 PM - 03:30:00 PM', 1, 'San Bartolome', 0, 0, 0, '2023-05-09 02:43:19', '2023-05-09 02:43:19'),
(373, 'FAC-000000022', 14, 13, 'Online', '2023-05-29', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry', 'Room2', 'Room1', '01:00:00 PM - 01:30:00 PM', '02:00:00 PM - 03:30:00 PM', 1, 'San Bartolome', 0, 0, 0, '2023-05-09 02:43:19', '2023-05-09 02:43:19'),
(374, 'FAC-000000022', 14, 14, 'Online', '2023-05-29', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry', 'Room2', 'Room1', '01:00:00 PM - 01:30:00 PM', '02:00:00 PM - 03:30:00 PM', 1, 'San Bartolome', 0, 0, 0, '2023-05-09 02:43:19', '2023-05-09 02:43:19'),
(375, 'FAC-000000022', 14, 15, 'Onsite', '2023-05-29', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry', 'Room2', 'Room1', '01:00:00 PM - 01:30:00 PM', '02:00:00 PM - 03:30:00 PM', 1, 'San Bartolome', 0, 0, 0, '2023-05-09 02:43:19', '2023-05-09 02:43:19'),
(376, 'FAC-000000022', 14, 16, 'Online', '2023-05-29', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry', 'Room2', 'Room1', '01:00:00 PM - 01:30:00 PM', '02:00:00 PM - 03:30:00 PM', 1, 'San Bartolome', 0, 0, 0, '2023-05-09 02:43:19', '2023-05-09 02:43:19'),
(377, 'FAC-000000022', 14, 17, 'Online', '2023-05-29', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry', 'Room2', 'Room1', '01:00:00 PM - 01:30:00 PM', '02:00:00 PM - 03:30:00 PM', 1, 'San Bartolome', 0, 0, 0, '2023-05-09 02:43:19', '2023-05-09 02:43:19'),
(378, 'FAC-000000022', 14, 18, 'Onsite', '2023-05-29', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry', 'Room2', 'Room1', '01:00:00 PM - 01:30:00 PM', '02:00:00 PM - 03:30:00 PM', 1, 'San Bartolome', 0, 0, 0, '2023-05-09 02:43:19', '2023-05-09 02:43:19'),
(379, 'FAC-000000022', 21, 1, 'Onsite', '2023-05-08', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry', 'Room2', 'Room1', '08:00:00 PM - 08:30:00 PM', '10:00:00 PM - 10:30:00 PM', 1, 'San Bartolome', 0, 1, 0, '2023-05-09 02:44:28', '2023-05-09 02:45:05'),
(380, 'FAC-000000022', 21, 2, 'Online', '2023-08-17', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry', 'Room2', 'Room1', '08:00:00 PM - 08:30:00 PM', '10:00:00 PM - 10:30:00 PM', 1, 'San Bartolome', 0, 0, 1, '2023-05-09 02:44:28', '2023-05-15 00:17:04'),
(381, 'FAC-000000022', 21, 3, 'Online', '2023-08-17', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry', 'Room2', 'Room1', '08:00:00 PM - 08:30:00 PM', '10:00:00 PM - 10:30:00 PM', 1, 'San Bartolome', 0, 0, 1, '2023-05-09 02:44:28', '2023-05-15 00:18:04'),
(382, 'FAC-000000022', 21, 4, 'Online', '2023-08-17', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry', 'Room2', 'Room1', '08:00:00 PM - 08:30:00 PM', '10:00:00 PM - 10:30:00 PM', 1, 'San Fransisco', 0, 0, 1, '2023-05-09 02:44:28', '2023-05-15 00:19:04'),
(383, 'FAC-000000022', 21, 5, 'Onsite', '2023-08-17', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry', 'Room2', 'Room1', '08:00:00 PM - 08:30:00 PM', '10:00:00 PM - 10:30:00 PM', 1, 'San Bartolome', 0, 0, 1, '2023-05-09 02:44:28', '2023-05-15 00:20:04'),
(384, 'FAC-000000022', 21, 6, 'Onsite', '2023-08-17', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry', 'Room2', 'Room1', '08:00:00 PM - 08:30:00 PM', '10:00:00 PM - 10:30:00 PM', 1, 'San Bartolome', 0, 0, 1, '2023-05-09 02:44:28', '2023-05-15 00:21:04'),
(385, 'FAC-000000022', 21, 7, 'Onsite', '2023-05-22', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry', 'Room2', 'Room1', '08:00:00 PM - 08:30:00 PM', '10:00:00 PM - 10:30:00 PM', 1, 'San Fransisco', 0, 0, 0, '2023-05-09 02:44:28', '2023-05-09 02:44:28'),
(386, 'FAC-000000022', 21, 8, 'Online', '2023-05-29', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry', 'Room2', 'Room1', '08:00:00 PM - 08:30:00 PM', '10:00:00 PM - 10:30:00 PM', 1, 'San Fransisco', 0, 0, 0, '2023-05-09 02:44:28', '2023-05-09 02:44:28'),
(387, 'FAC-000000022', 21, 9, 'Online', '2023-05-29', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry', 'Room2', 'Room1', '08:00:00 PM - 08:30:00 PM', '10:00:00 PM - 10:30:00 PM', 1, 'San Fransisco', 0, 0, 0, '2023-05-09 02:44:28', '2023-05-09 02:44:28'),
(388, 'FAC-000000022', 21, 10, 'Onsite', '2023-05-29', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry', 'Room2', 'Room1', '08:00:00 PM - 08:30:00 PM', '10:00:00 PM - 10:30:00 PM', 1, 'San Bartolome', 0, 0, 0, '2023-05-09 02:44:28', '2023-05-09 02:44:28'),
(389, 'FAC-000000022', 21, 11, 'Onsite', '2023-05-29', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry', 'Room2', 'Room1', '08:00:00 PM - 08:30:00 PM', '10:00:00 PM - 10:30:00 PM', 1, 'San Bartolome', 0, 0, 0, '2023-05-09 02:44:28', '2023-05-09 02:44:28'),
(390, 'FAC-000000022', 21, 12, 'Onsite', '2023-05-29', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry', 'Room2', 'Room1', '08:00:00 PM - 08:30:00 PM', '10:00:00 PM - 10:30:00 PM', 1, 'San Bartolome', 0, 0, 0, '2023-05-09 02:44:28', '2023-05-09 02:44:28'),
(391, 'FAC-000000022', 21, 13, 'Online', '2023-05-29', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry', 'Room2', 'Room1', '08:00:00 PM - 08:30:00 PM', '10:00:00 PM - 10:30:00 PM', 1, 'San Bartolome', 0, 0, 0, '2023-05-09 02:44:28', '2023-05-09 02:44:28'),
(392, 'FAC-000000022', 21, 14, 'Online', '2023-05-29', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry', 'Room2', 'Room1', '08:00:00 PM - 08:30:00 PM', '10:00:00 PM - 10:30:00 PM', 1, 'San Bartolome', 0, 0, 0, '2023-05-09 02:44:28', '2023-05-09 02:44:28'),
(393, 'FAC-000000022', 21, 15, 'Onsite', '2023-05-29', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry', 'Room2', 'Room1', '08:00:00 PM - 08:30:00 PM', '10:00:00 PM - 10:30:00 PM', 1, 'San Bartolome', 0, 0, 0, '2023-05-09 02:44:28', '2023-05-09 02:44:28'),
(394, 'FAC-000000022', 21, 16, 'Online', '2023-05-29', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry', 'Room2', 'Room1', '08:00:00 PM - 08:30:00 PM', '10:00:00 PM - 10:30:00 PM', 1, 'San Bartolome', 0, 0, 0, '2023-05-09 02:44:28', '2023-05-09 02:44:28'),
(395, 'FAC-000000022', 21, 17, 'Online', '2023-05-29', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry', 'Room2', 'Room1', '08:00:00 PM - 08:30:00 PM', '10:00:00 PM - 10:30:00 PM', 1, 'San Bartolome', 0, 0, 0, '2023-05-09 02:44:28', '2023-05-09 02:44:28'),
(396, 'FAC-000000022', 21, 18, 'Onsite', '2023-05-29', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry', 'Room2', 'Room1', '08:00:00 PM - 08:30:00 PM', '10:00:00 PM - 10:30:00 PM', 1, 'San Bartolome', 0, 0, 0, '2023-05-09 02:44:28', '2023-05-09 02:44:28'),
(415, 'FAC-000000026', 4, 1, 'Onsite', '2023-05-10', 'Testing', 'Testing', NULL, NULL, '10:00:00 AM - 5:30:00 PM', '7:00:00 PM - 8:00:00 PM', 2, 'San Bartolome', 1, 0, 1, '2023-05-09 17:36:54', '2023-05-10 10:50:28'),
(416, 'FAC-000000026', 4, 2, NULL, NULL, NULL, NULL, NULL, NULL, '5:00:00 PM - 5:30:00 PM', '7:00:00 PM - 8:00:00 PM', 2, NULL, 0, 0, 0, '2023-05-09 17:36:54', '2023-05-09 17:36:54'),
(417, 'FAC-000000026', 4, 3, NULL, NULL, NULL, NULL, NULL, NULL, '5:00:00 PM - 5:30:00 PM', '7:00:00 PM - 8:00:00 PM', 2, NULL, 0, 0, 0, '2023-05-09 17:36:54', '2023-05-09 17:36:54'),
(418, 'FAC-000000026', 4, 4, NULL, NULL, NULL, NULL, NULL, NULL, '5:00:00 PM - 5:30:00 PM', '7:00:00 PM - 8:00:00 PM', 2, NULL, 0, 0, 0, '2023-05-09 17:36:54', '2023-05-09 17:36:54'),
(419, 'FAC-000000026', 4, 5, NULL, NULL, NULL, NULL, NULL, NULL, '5:00:00 PM - 5:30:00 PM', '7:00:00 PM - 8:00:00 PM', 2, NULL, 0, 0, 0, '2023-05-09 17:36:54', '2023-05-09 17:36:54'),
(420, 'FAC-000000026', 4, 6, NULL, NULL, NULL, NULL, NULL, NULL, '5:00:00 PM - 5:30:00 PM', '7:00:00 PM - 8:00:00 PM', 2, NULL, 0, 0, 0, '2023-05-09 17:36:54', '2023-05-09 17:36:54'),
(421, 'FAC-000000026', 4, 7, NULL, NULL, NULL, NULL, NULL, NULL, '5:00:00 PM - 5:30:00 PM', '7:00:00 PM - 8:00:00 PM', 2, NULL, 0, 0, 0, '2023-05-09 17:36:54', '2023-05-09 17:36:54'),
(422, 'FAC-000000026', 4, 8, NULL, NULL, NULL, NULL, NULL, NULL, '5:00:00 PM - 5:30:00 PM', '7:00:00 PM - 8:00:00 PM', 2, NULL, 0, 0, 0, '2023-05-09 17:36:54', '2023-05-09 17:36:54'),
(423, 'FAC-000000026', 4, 9, NULL, NULL, NULL, NULL, NULL, NULL, '5:00:00 PM - 5:30:00 PM', '7:00:00 PM - 8:00:00 PM', 2, NULL, 0, 0, 0, '2023-05-09 17:36:54', '2023-05-09 17:36:54'),
(424, 'FAC-000000026', 4, 10, NULL, NULL, NULL, NULL, NULL, NULL, '5:00:00 PM - 5:30:00 PM', '7:00:00 PM - 8:00:00 PM', 2, NULL, 0, 0, 0, '2023-05-09 17:36:54', '2023-05-09 17:36:54'),
(425, 'FAC-000000026', 4, 11, NULL, NULL, NULL, NULL, NULL, NULL, '5:00:00 PM - 5:30:00 PM', '7:00:00 PM - 8:00:00 PM', 2, NULL, 0, 0, 0, '2023-05-09 17:36:54', '2023-05-09 17:36:54'),
(426, 'FAC-000000026', 4, 12, NULL, NULL, NULL, NULL, NULL, NULL, '5:00:00 PM - 5:30:00 PM', '7:00:00 PM - 8:00:00 PM', 2, NULL, 0, 0, 0, '2023-05-09 17:36:54', '2023-05-09 17:36:54'),
(427, 'FAC-000000026', 4, 13, NULL, NULL, NULL, NULL, NULL, NULL, '5:00:00 PM - 5:30:00 PM', '7:00:00 PM - 8:00:00 PM', 2, NULL, 0, 0, 0, '2023-05-09 17:36:54', '2023-05-09 17:36:54'),
(428, 'FAC-000000026', 4, 14, NULL, NULL, NULL, NULL, NULL, NULL, '5:00:00 PM - 5:30:00 PM', '7:00:00 PM - 8:00:00 PM', 2, NULL, 0, 0, 0, '2023-05-09 17:36:54', '2023-05-09 17:36:54'),
(429, 'FAC-000000026', 4, 15, NULL, NULL, NULL, NULL, NULL, NULL, '5:00:00 PM - 5:30:00 PM', '7:00:00 PM - 8:00:00 PM', 2, NULL, 0, 0, 0, '2023-05-09 17:36:54', '2023-05-09 17:36:54'),
(430, 'FAC-000000026', 4, 16, NULL, NULL, NULL, NULL, NULL, NULL, '5:00:00 PM - 5:30:00 PM', '7:00:00 PM - 8:00:00 PM', 2, NULL, 0, 0, 0, '2023-05-09 17:36:54', '2023-05-09 17:36:54'),
(431, 'FAC-000000026', 4, 17, NULL, NULL, NULL, NULL, NULL, NULL, '5:00:00 PM - 5:30:00 PM', '7:00:00 PM - 8:00:00 PM', 2, NULL, 0, 0, 0, '2023-05-09 17:36:54', '2023-05-09 17:36:54'),
(432, 'FAC-000000026', 4, 18, NULL, NULL, NULL, NULL, NULL, NULL, '5:00:00 PM - 5:30:00 PM', '7:00:00 PM - 8:00:00 PM', 2, NULL, 0, 0, 0, '2023-05-09 17:36:54', '2023-05-09 17:36:54'),
(433, 'FAC-000000018', 27, 1, 'Onsite', NULL, NULL, NULL, NULL, NULL, '7:52:23 AM - 7:52:23 AM', 'None', 2, NULL, 0, 0, 0, '2023-05-10 07:54:57', '2023-05-10 07:54:57'),
(434, 'FAC-000000018', 27, 2, 'Onsite', NULL, NULL, NULL, NULL, NULL, '7:52:23 AM - 7:52:23 AM', 'None', 2, NULL, 0, 0, 0, '2023-05-10 07:54:57', '2023-05-10 07:54:57'),
(435, 'FAC-000000018', 27, 3, 'Onsite', NULL, NULL, NULL, NULL, NULL, '7:52:23 AM - 7:52:23 AM', 'None', 2, NULL, 0, 0, 0, '2023-05-10 07:54:57', '2023-05-10 07:54:57'),
(436, 'FAC-000000018', 27, 4, 'Onsite', NULL, NULL, NULL, NULL, NULL, '7:52:23 AM - 7:52:23 AM', 'None', 2, NULL, 0, 0, 0, '2023-05-10 07:54:57', '2023-05-10 07:54:57'),
(437, 'FAC-000000018', 27, 5, 'Onsite', NULL, NULL, NULL, NULL, NULL, '7:52:23 AM - 7:52:23 AM', 'None', 2, NULL, 0, 0, 0, '2023-05-10 07:54:57', '2023-05-10 07:54:57'),
(438, 'FAC-000000018', 27, 6, 'Onsite', NULL, NULL, NULL, NULL, NULL, '7:52:23 AM - 7:52:23 AM', 'None', 2, NULL, 0, 0, 0, '2023-05-10 07:54:57', '2023-05-10 07:54:57'),
(439, 'FAC-000000018', 27, 7, 'Onsite', NULL, NULL, NULL, NULL, NULL, '7:52:23 AM - 7:52:23 AM', 'None', 2, NULL, 0, 0, 0, '2023-05-10 07:54:57', '2023-05-10 07:54:57'),
(440, 'FAC-000000018', 27, 8, 'Onsite', NULL, NULL, NULL, NULL, NULL, '7:52:23 AM - 7:52:23 AM', 'None', 2, NULL, 0, 0, 0, '2023-05-10 07:54:57', '2023-05-10 07:54:57'),
(441, 'FAC-000000018', 27, 9, 'Onsite', NULL, NULL, NULL, NULL, NULL, '7:52:23 AM - 7:52:23 AM', 'None', 2, NULL, 0, 0, 0, '2023-05-10 07:54:57', '2023-05-10 07:54:57'),
(442, 'FAC-000000018', 27, 10, 'Onsite', NULL, NULL, NULL, NULL, NULL, '7:52:23 AM - 7:52:23 AM', 'None', 2, NULL, 0, 0, 0, '2023-05-10 07:54:57', '2023-05-10 07:54:57'),
(443, 'FAC-000000018', 27, 11, 'Onsite', NULL, NULL, NULL, NULL, NULL, '7:52:23 AM - 7:52:23 AM', 'None', 2, NULL, 0, 0, 0, '2023-05-10 07:54:57', '2023-05-10 07:54:57'),
(444, 'FAC-000000018', 27, 12, 'Onsite', NULL, NULL, NULL, NULL, NULL, '7:52:23 AM - 7:52:23 AM', 'None', 2, NULL, 0, 0, 0, '2023-05-10 07:54:57', '2023-05-10 07:54:57'),
(445, 'FAC-000000018', 27, 13, 'Onsite', NULL, NULL, NULL, NULL, NULL, '7:52:23 AM - 7:52:23 AM', 'None', 2, NULL, 0, 0, 0, '2023-05-10 07:54:57', '2023-05-10 07:54:57'),
(446, 'FAC-000000018', 27, 14, 'Onsite', NULL, NULL, NULL, NULL, NULL, '7:52:23 AM - 7:52:23 AM', 'None', 2, NULL, 0, 0, 0, '2023-05-10 07:54:57', '2023-05-10 07:54:57'),
(447, 'FAC-000000018', 27, 15, 'Onsite', NULL, NULL, NULL, NULL, NULL, '7:52:23 AM - 7:52:23 AM', 'None', 2, NULL, 0, 0, 0, '2023-05-10 07:54:57', '2023-05-10 07:54:57'),
(448, 'FAC-000000018', 27, 16, 'Onsite', NULL, NULL, NULL, NULL, NULL, '7:52:23 AM - 7:52:23 AM', 'None', 2, NULL, 0, 0, 0, '2023-05-10 07:54:57', '2023-05-10 07:54:57'),
(449, 'FAC-000000018', 27, 17, 'Onsite', NULL, NULL, NULL, NULL, NULL, '7:52:23 AM - 7:52:23 AM', 'None', 2, NULL, 0, 0, 0, '2023-05-10 07:54:57', '2023-05-10 07:54:57'),
(450, 'FAC-000000018', 27, 18, 'Onsite', NULL, NULL, NULL, NULL, NULL, '7:52:23 AM - 7:52:23 AM', 'None', 2, NULL, 0, 0, 0, '2023-05-10 07:54:57', '2023-05-10 07:54:57');

-- --------------------------------------------------------

--
-- Table structure for table `secretary`
--

CREATE TABLE `secretary` (
  `id` int(11) NOT NULL,
  `secID` varchar(45) DEFAULT NULL,
  `empID` varchar(45) DEFAULT NULL,
  `userID` int(11) DEFAULT NULL,
  `departmentID` int(11) DEFAULT NULL,
  `sec_firstname` varchar(255) DEFAULT NULL,
  `sec_middlename` varchar(255) DEFAULT NULL,
  `sec_lastname` varchar(255) DEFAULT NULL,
  `sec_email` varchar(45) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `signature` varchar(255) NOT NULL DEFAULT 'signature.png'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `secretary`
--

INSERT INTO `secretary` (`id`, `secID`, `empID`, `userID`, `departmentID`, `sec_firstname`, `sec_middlename`, `sec_lastname`, `sec_email`, `created_at`, `updated_at`, `signature`) VALUES
(1, 'SEC-000000001', 'EMP-000000005', 5, 0, 'Anjo', 'L.', 'Panganiban', 'anjo.panganiban24@gmail.com', NULL, NULL, 'signature.png'),
(4, 'SEC-20230000004', NULL, 99, 1, 'SampleAAEng', 'SampleAAEng', 'SampleAAEng', 'SampleAAEng@gmail.com', '2023-05-10 07:59:13', '2023-05-10 07:59:13', 'signature.png'),
(5, 'SEC-20230000005', NULL, 101, 2, 'SampleAABA', 'SampleAABA', 'SampleAABA', 'SampleAABA@gmail.com', '2023-05-10 08:02:59', '2023-05-10 08:02:59', 'signature.png'),
(6, 'SEC-20230000006', NULL, 103, 3, 'SampleAAEDU', 'SampleAAEDU', 'SampleAAEDU', 'SampleAAEDU@gmail.com', '2023-05-10 08:04:20', '2023-05-10 08:04:20', 'signature.png');

-- --------------------------------------------------------

--
-- Table structure for table `section`
--

CREATE TABLE `section` (
  `id` int(11) NOT NULL,
  `courseID` int(11) DEFAULT NULL,
  `section_year` varchar(46) DEFAULT NULL,
  `section` varchar(45) DEFAULT NULL,
  `year` varchar(45) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `section`
--

INSERT INTO `section` (`id`, `courseID`, `section_year`, `section`, `year`, `created_at`, `updated_at`) VALUES
(1, NULL, '4G', 'G', '4', '2023-02-04 02:20:48', '2023-02-04 02:20:48'),
(2, NULL, '1E', 'E', '1', '2023-02-06 22:18:20', '2023-02-06 22:18:20'),
(3, NULL, '2D', 'D', '2', '2023-02-06 22:34:35', '2023-02-06 22:34:35');

-- --------------------------------------------------------

--
-- Table structure for table `sec_faculty_reports`
--

CREATE TABLE `sec_faculty_reports` (
  `id` int(11) NOT NULL,
  `secID` varchar(45) DEFAULT NULL,
  `userID` int(11) DEFAULT NULL,
  `grouped_reportsID` int(11) DEFAULT NULL,
  `facultyID` varchar(45) DEFAULT NULL,
  `groupTokenID` varchar(45) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `sec_faculty_reports`
--

INSERT INTO `sec_faculty_reports` (`id`, `secID`, `userID`, `grouped_reportsID`, `facultyID`, `groupTokenID`, `created_at`, `updated_at`) VALUES
(1, 'SEC-000000001', 5, 1, 'FAC-000000002', 'tZLx', '2023-04-13 01:19:47', '2023-04-13 01:19:47'),
(2, 'SEC-000000001', 5, 2, 'FAC-000000002', 'tZLx', '2023-04-13 01:19:47', '2023-04-13 01:19:47'),
(6, 'SEC-000000001', 5, 6, 'FAC-000000009', 'B8Je', '2023-04-26 21:54:50', '2023-04-26 21:54:50'),
(8, 'SEC-000000001', 5, 8, 'FAC-000000011', 'AOFY', '2023-04-29 14:01:27', '2023-04-29 14:01:27'),
(9, 'SEC-000000001', 5, 9, 'FAC-000000017', 'ERW7', '2023-05-03 16:53:22', '2023-05-03 16:53:22'),
(14, 'SEC-000000001', 5, 14, 'FAC-000000026', '1IYf', '2023-05-10 10:50:48', '2023-05-10 10:50:48');

-- --------------------------------------------------------

--
-- Table structure for table `subject`
--

CREATE TABLE `subject` (
  `id` int(11) NOT NULL,
  `subjectName` varchar(45) DEFAULT NULL,
  `code` varchar(45) DEFAULT NULL,
  `units` int(11) DEFAULT NULL,
  `year` varchar(45) DEFAULT NULL,
  `departmentID` int(11) DEFAULT NULL,
  `courseID` int(11) DEFAULT NULL,
  `lec_hours` int(11) DEFAULT NULL,
  `lab_hours` int(11) DEFAULT NULL,
  `descriptions` varchar(255) DEFAULT NULL,
  `semester` int(11) DEFAULT NULL,
  `is_lab_lec` int(11) DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `subject`
--

INSERT INTO `subject` (`id`, `subjectName`, `code`, `units`, `year`, `departmentID`, `courseID`, `lec_hours`, `lab_hours`, `descriptions`, `semester`, `is_lab_lec`, `created_at`, `updated_at`) VALUES
(1, 'Mathematics in the Modern World', 'Math 1', 3, '1', 7, 7, 3, 0, NULL, 1, 0, NULL, NULL),
(2, 'Philosophy of the Good Life', 'GEE 1', 3, '1', 7, 7, 3, 0, NULL, 1, 0, NULL, NULL),
(3, 'Fundamentals of Creativity and Innovation', 'GEE 2', 3, '1', 7, 7, 3, 0, NULL, 1, 0, NULL, NULL),
(4, 'Introduction to Computing', 'CC101 ', 3, '1', 0, 0, 2, 3, NULL, 1, 1, NULL, NULL),
(5, 'Fundamentals of Programming', 'CC102', 3, '1', 0, 0, 2, 3, NULL, 1, 1, NULL, NULL),
(6, 'Web Systems and Technologies 1 (Electives)', 'WS101', 3, '1', 0, 0, 2, 3, NULL, 1, 1, NULL, NULL),
(7, 'Science, Technology and Society', 'SCI 1', 3, '1', 7, 7, 3, 0, NULL, 2, 0, NULL, NULL),
(8, 'Purposive Communication', 'ENG 1 ', 3, '1', 7, 7, 3, 0, NULL, 2, 0, NULL, NULL),
(9, 'Creative Practice: Tools, Methods ', 'GEE 3', 3, '1', 7, 7, 3, 0, NULL, 2, 0, NULL, NULL),
(10, 'Intermediate Programming', 'CC103', 3, '1', 0, 0, 2, 3, NULL, 2, 1, NULL, NULL),
(11, 'Platform Technologies (Electives)', 'PT101 ', 3, '1', 0, 0, 2, 3, NULL, 2, 1, NULL, NULL),
(12, 'Networking 1 ', 'NET101 ', 3, '1', 0, 0, 2, 3, NULL, 2, 1, NULL, NULL),
(13, 'Art Appreciation ', 'HUM 1', 3, '2', 7, 7, 3, 0, NULL, 1, 0, NULL, NULL),
(14, 'Systems Analysis and Design', 'IS104', 3, '2', 0, 0, 2, 3, NULL, 1, 1, NULL, NULL),
(15, 'Data Structures and Algorithms', 'CC104', 3, '2', 0, 0, 2, 3, NULL, 1, 1, NULL, NULL),
(16, 'Information Management', 'CC105', 3, '2', 0, 0, 2, 3, NULL, 1, 1, NULL, NULL),
(17, 'Object-Oriented Programming', 'PF101', 3, '2', 0, 0, 2, 3, NULL, 1, 1, NULL, NULL),
(18, 'Networking 2', 'NET102', 3, '2', 0, 0, 2, 3, NULL, 1, 1, NULL, NULL),
(19, 'Understanding the Self', 'SOCSCI 1', 3, '1', 7, 7, 3, 0, NULL, 2, 0, NULL, NULL),
(20, 'Readings in Philippine History', 'SOCSCI 2', 3, '2', 7, 7, 3, 0, NULL, 2, 0, NULL, NULL),
(21, 'Introduction to Human Computer Interaction', 'HCI101', 3, '2', 0, 0, 2, 3, NULL, 2, 1, NULL, NULL),
(22, 'Software Engineering', 'SE101', 3, '2', 0, 0, 2, 3, NULL, 2, 1, NULL, NULL),
(23, 'Integrative Programming and  Technologies 1 ', 'IPT101', 3, '2', 0, 0, 2, 3, NULL, 2, 1, NULL, NULL),
(24, 'Advanced Database Systems', 'IM101', 3, '2', 0, 0, 2, 3, NULL, 2, 1, NULL, NULL),
(25, 'The Contemporary World', 'SOCSCI 3', 3, '3', 7, 7, 3, 0, NULL, 1, 0, NULL, NULL),
(26, 'The Life and Works of Rizal', 'RIZAL', 3, '3', 7, 7, 3, 0, NULL, 1, 0, NULL, NULL),
(27, 'Discrete Mathematics', 'MS101', 3, '3', 0, 0, 3, 0, NULL, 1, 0, NULL, NULL),
(28, 'Social Professional Issues 1', 'SPI101 ', 3, '3', 0, 0, 3, 0, NULL, 1, 0, NULL, '0000-00-00 00:00:00'),
(39, 'Architecture and Organization', 'AR101 ', 3, '3', 0, 0, 2, 3, NULL, 1, 1, NULL, NULL),
(40, 'Integrative Programming and  Technologies 2 (', 'IPT102', 3, '3', 0, 0, 2, 3, NULL, 1, 1, NULL, NULL),
(41, 'Systems Integration and  Architecture 1 ', 'SIA101', 3, '3', 0, 0, 2, 3, NULL, 1, 1, NULL, NULL),
(42, 'Ethics', 'HUM 2', 3, '3', 7, 7, 3, 0, NULL, 2, 0, NULL, NULL),
(43, 'Algorithms and Complexity', 'AL101', 3, '3', 0, 0, 3, 0, NULL, 2, 0, NULL, NULL),
(44, 'Quantitative Methods', 'MS102', 3, '3', 0, 0, 3, 0, NULL, 2, 0, NULL, NULL),
(45, 'Application Development and  Emerging Technol', 'CC106', 3, '3', 0, 0, 2, 3, NULL, 2, 1, NULL, NULL),
(46, 'Fundamental of Information  Assurance and Sec', 'IAS101', 3, '3', 0, 0, 2, 3, NULL, 2, 1, NULL, NULL),
(47, 'Systems Integration and  Architecture 2 (Elec', 'SIA102', 3, '3', 0, 0, 2, 3, NULL, 2, 1, NULL, NULL),
(48, 'Capstone Project and Research 1 ', 'CAP101', 3, '4', 0, 0, 3, 0, NULL, 1, 0, NULL, '0000-00-00 00:00:00'),
(49, 'Practicum 1 ', 'PRC101', 3, '4', 0, 0, 0, 3, NULL, 1, 0, NULL, NULL),
(50, 'Automata Theory and Formal  Language', 'AL102', 3, '4', 0, 0, 3, 0, NULL, 1, 0, NULL, NULL),
(51, 'Information Assurance and Security 2', 'IAS102 ', 3, '4', 0, 0, 2, 3, NULL, 1, 1, NULL, NULL),
(52, 'Capstone Project and Research 2', 'CAP102', 3, '4', 0, 0, 3, 0, NULL, 2, 0, NULL, NULL),
(53, 'Practicum 2', 'PRC102', 3, '4', 0, 0, 0, 3, NULL, 2, 0, NULL, NULL),
(54, 'Systems Administration and Maintenance', 'SAM101', 3, '4', 0, 0, 2, 3, NULL, 2, 1, NULL, NULL),
(56, 'Break', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL),
(57, 'Advising Time', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `type_of_camera`
--

CREATE TABLE `type_of_camera` (
  `ID` int(11) NOT NULL,
  `Device` varchar(128) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `type_of_camera`
--

INSERT INTO `type_of_camera` (`ID`, `Device`) VALUES
(1, 'Scanner'),
(2, 'Monitoring');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `empID` varchar(100) DEFAULT NULL,
  `name` varchar(255) NOT NULL,
  `username` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `pin_code` varchar(255) DEFAULT NULL,
  `permissions` text DEFAULT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `active_status` tinyint(1) NOT NULL DEFAULT 0,
  `avatar` varchar(255) NOT NULL DEFAULT 'default.jpg',
  `dark_mode` tinyint(1) NOT NULL DEFAULT 0,
  `messenger_color` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `empID`, `name`, `username`, `email`, `pin_code`, `permissions`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`, `active_status`, `avatar`, `dark_mode`, `messenger_color`) VALUES
(1, 'EMP-000000001', 'Admin', 'Admin', 'admin@ams.com', NULL, NULL, NULL, '$2y$10$FFx.OGGw9iZmVYql8hksBuTCgVJdk9.an8ImFALTlq1HhHV.hA4US', NULL, '2022-11-06 23:18:44', '2022-11-06 23:18:44', 0, 'default.jpg', 0, NULL),
(2, 'EMP-000000002', 'Edward Pornelos', 'qcu_Dean', 'leah.iniba.delacruz@gmail.com', NULL, NULL, NULL, '$2y$10$fIaqC0gE2LyBLKDCStN1XeIfl1oAmwE0QviV4K/QKZF42stJZw9JO', NULL, '2022-11-20 01:40:32', '2023-04-06 01:30:34', 0, 'default.jpg', 0, NULL),
(3, 'EMP-000000003', 'Jade Olosoro', 'qcu_HR', '', NULL, NULL, NULL, '$2y$10$rJrBWMDsQmhoqaWqnhon3u7zinb2w1.DNBto06gI0Zh9PyDb510BC', 'kO7fTtTSfHcCKfG7duEc1O0OptESX6EuGl1rXiDwDf1l861iyVTulCfWIfsW', '2022-11-20 01:41:10', '2023-04-27 00:32:12', 1, '	\ndefault.jpg', 0, NULL),
(4, 'EMP-000000004', 'JC Pablicio', 'qcu_student', 'jcp-qcu@gmail.com', NULL, NULL, NULL, '$2y$10$.dMv32JQGEVxutwcOsMJweDvv.a137bOGutL/0ileLkFK72M6c2ti', NULL, '2022-11-20 01:53:02', '2022-11-20 01:53:02', 0, 'default.jpg', 0, NULL),
(5, 'EMP-000000005', 'Anjo Panganiban', 'qcu_Admin Assistant', 'anjo.panganiban24@gmail.com', NULL, NULL, NULL, '$2y$10$W1pmTuJ8BtrUTbZTjqv0purdmx3UmFGBNHEv0byufUjKE37wVEU.a', 'uNMwa4ssIM3lGARVY24HOv9Qx4879sIOdLON4GjKFbtOgWLvg4y6miJfqmgt', '2022-11-20 04:58:40', '2022-11-20 04:58:40', 0, 'default.jpg', 0, NULL),
(60, 'EMP-000000060', 'Sample Chairman Sample Chairman', 'qcu_Program Chair', 'christina.m.josol@gmail.com', NULL, NULL, NULL, '$2y$10$zi7NOPZDF94Yvoj03kLoHuFLn7cVzVKzJu6gb1M2yMuG9hgoByPzS', NULL, '2023-02-19 02:26:48', '2023-05-09 03:34:18', 0, 'ihfi1N-qcu_Program Chair.jpg', 0, NULL),
(68, 'EMP-000000068', 'Edward Pornelos', 'faculty_Pornelos', 'pornelos13@gmail.com', NULL, NULL, NULL, '$2y$10$LvV6pSRlYIhPhlvb6fNXrunPlpVV/qI7EZDvDA/O4.yQabYAwJ1g.', NULL, '2023-04-12 01:50:50', '2023-04-28 10:14:24', 0, '	\ndefault.jpg', 0, NULL),
(75, 'EMP-000000075', 'Edward Pornelos', 'faculty_Pornelos', 'edward1.corbes.pornelos@gmail.com', NULL, NULL, NULL, '$2y$10$YkbL5mm2LM5lcEQZ6TIbG.H9iTB120zQWiDr8lKCx1/hOQSyd42Wa', NULL, '2023-04-26 21:26:21', '2023-04-26 22:06:04', 0, '	\ndefault.jpg', 0, NULL),
(77, 'EMP-000000077', 'John Michel Sarmiento', 'faculty_Sarmiento', 'jhon.michels.romero.sarmiento@gmail.com', NULL, NULL, NULL, '$2y$10$jbyiE/NLJ/Io4M3wEt1HiOHrb.VWUD9eQPE0n6CnTjg3sfPsf5RkK', NULL, '2023-04-29 12:46:53', '2023-04-29 12:50:28', 0, 'default.jpg', 0, NULL),
(80, 'EMP-000000080', 'Lei DelaCruz', 'faculty_DelaCruz', 'leidc027@gmail.com', NULL, NULL, NULL, '$2y$10$EaftsL4uc8NlEqRJeu24f.b3aqfRwH3ZrzqsZX0BIhU8gnsKyYi6G', NULL, '2023-05-02 20:42:10', '2023-05-02 20:43:43', 0, 'default.jpg', 0, NULL),
(81, 'EMP-000000081', 'Sample Dean Eng', NULL, 'SampleDeanEng@gmail.com', NULL, NULL, NULL, '$2y$10$bxt8Pm98wuHaAgQytw/JR.MyT5fZ91dBvl3Aw2Gb2vxPeoJsieJN2', NULL, '2023-05-03 12:32:12', '2023-05-03 12:32:12', 0, 'default.jpg', 0, NULL),
(82, 'EMP-000000082', 'SampleDeanBA BA', NULL, 'SampleDeanBA@gmail.com', NULL, NULL, NULL, '$2y$10$TWT1sDlEJFofwzrq0Ci7UuZTDpRZZzwx18pPaa5KtBoBpSlx./FZm', NULL, '2023-05-03 12:33:14', '2023-05-03 12:33:14', 0, 'default.jpg', 0, NULL),
(83, 'EMP-000000083', 'SampleDeanEDU EDU', NULL, 'SampleDeanEDU@gmail.com', NULL, NULL, NULL, '$2y$10$92lIoXfqeBpRfKkLAo5dOe5wSArtFXZA/IbpO1LfxFuejoG0kSZty', NULL, '2023-05-03 12:37:23', '2023-05-03 12:37:23', 0, 'default.jpg', 0, NULL),
(84, 'EMP-000000084', 'Michaella Ledesma', 'faculty_Ledesma', 'michaella.p.ledesma@gmail.com', NULL, NULL, NULL, '$2y$10$BQa65RG.xaDlHKZfJ9Ghu.01n17MDAN7KpXxXoRlBDkeWiAGXBsei', NULL, '2023-05-03 15:57:45', '2023-05-03 16:04:10', 0, 'default.jpg', 0, NULL),
(85, 'EMP-000000085', 'Jericho Lim', 'faculty_Lim', 'lim.jericho.dangaap@gmail.com', NULL, NULL, NULL, '$2y$10$NILaTINcTbazmlITP7bk3.ZvPFyKeGEANM8F51MgtUDBhTNmsrlSK', NULL, '2023-05-03 16:00:22', '2023-05-03 16:00:22', 0, 'default.jpg', 0, NULL),
(86, 'EMP-000000086', 'John Rey Consulta', 'faculty_Consulta', 'john.rey.taniega.consulta@gmail.com', NULL, NULL, NULL, '$2y$10$xUivmOsHu/opL9.s/2NzK.EGFzqZhViHb703OELmAwDibs7.s3i1m', NULL, '2023-05-03 16:09:35', '2023-05-03 16:12:10', 0, 'default.jpg', 0, NULL),
(87, 'EMP-000000087', 'Clarisa Pacetes', 'Faculty_Pacetes', 'clarissapacetes98@gmail.com', NULL, NULL, NULL, '$2y$10$KCf9aGbjJJtRF.wE4AszMuKzCgUSJz9GwKTp0Wd2qPSdK1g5omph.', NULL, '2023-05-05 15:38:11', '2023-05-05 15:38:11', 0, 'default.jpg', 0, NULL),
(89, 'EMP-000000089', 'Wilmer Cabayao', 'Faculty_Cabayao', 'wilmer.cabayao@gmail.com', NULL, NULL, NULL, '$2y$10$8xCy9sTr03iAtmsV3ab.xOEX2e14w4DM77E5w9fmJkCAMBegV/8Gu', NULL, '2023-05-06 22:17:19', '2023-05-06 22:17:19', 0, 'default.jpg', 0, NULL),
(90, 'EMP-000000090', 'Mel John Rich Briones', 'Faculty_Briones', 'mhss.meljohnrichbriones@gmail.com', NULL, NULL, NULL, '$2y$10$XCyTJBOCFe17Y8gzz2ZgXuzBSkqJKWVmUmglHTCVnaGBPU2r90jDe', NULL, '2023-05-08 11:32:17', '2023-05-08 11:45:09', 0, 'default.jpg', 0, NULL),
(91, 'EMP-000000091', 'Christina Josol', 'Faculty_Josol', 'justcallmemiruki@gmail.com', NULL, NULL, NULL, '$2y$10$cpCzxPVOV6DtixD/9KqtMO.6TJqefr9RadD.WTBT.QDn82O.Ax.FK', NULL, '2023-05-09 02:37:18', '2023-05-09 03:12:40', 0, 'qrL3JU-Faculty_Josol.jpg', 0, NULL),
(94, 'EMP-000000094', 'Jhon Michel Sarmiento', 'Faculty_Sarmiento', 'jhon.michel.romero.sarmiento@gmail.com', NULL, NULL, NULL, '$2y$10$EVI6uaoFTb75LRaAyQ6zeOXcXLkyvpQcR.KWLRcm2ByNDUO0jvc.S', NULL, '2023-05-09 15:34:42', '2023-05-09 15:43:15', 0, 'default.jpg', 0, NULL),
(95, 'EMP-000000095', 'Testing Faculty Testing', 'Faculty_Testing', 'jade.delima.oloroso@gmail.com', NULL, NULL, NULL, '$2y$10$W1/A07mqynuMeNes.AMbHOTBOWLsbDXk.ynEk8YUFjPh.hSEtIR8O', NULL, '2023-05-09 17:28:45', '2023-05-09 18:32:44', 0, 'default.jpg', 0, NULL),
(96, 'EMP-000000096', 'Clarissa Pacetes', 'Faculty_Pacetes', 'clarissapacetes@gmail.com', NULL, NULL, NULL, '$2y$10$TUWdYC1fkyw1kTtCUljzUO9HqVYMXX1X3IqxNxDVKktrN/YLW0iJ2', NULL, '2023-05-10 03:59:32', '2023-05-10 03:59:32', 0, 'default.jpg', 0, NULL),
(99, 'EMP-000000099', 'SampleAAEng SampleAAEng', NULL, 'SampleAAEng@gmail.com', NULL, NULL, NULL, '$2y$10$1BeglnBQLS0Ma1vPPG5GTOZsEop1G1VQGJP00HAOkE2KiIjrJzGy2', NULL, '2023-05-10 07:59:13', '2023-05-10 07:59:13', 0, 'default.jpg', 0, NULL),
(100, 'EMP-000000100', 'SamplePCEng SamplePCEng', NULL, 'SamplePCEng@gmail.com', NULL, NULL, NULL, '$2y$10$byM9Lzt0sJAM/wY/dCO0surwNmrjEN61Dq2IjFBo1iK2OwHr9tqh6', NULL, '2023-05-10 08:02:07', '2023-05-10 08:02:07', 0, 'default.jpg', 0, NULL),
(101, 'EMP-000000101', 'SampleAABA SampleAABA', NULL, 'SampleAABA@gmail.com', NULL, NULL, NULL, '$2y$10$nodam/XelxKHHj0L1fJ4G.hEXt32D/tgg1Dfe2cuG7Y4kNPORl0Da', NULL, '2023-05-10 08:02:59', '2023-05-10 08:02:59', 0, 'default.jpg', 0, NULL),
(102, 'EMP-000000102', 'SamplePCBA SamplePCBA', NULL, 'SamplePCBA@gmail.com', NULL, NULL, NULL, '$2y$10$Ab3uZF0OJp0h8.39ADcc2u4WIuI6ziOilbc82bmiPGset.HkrL8Ly', NULL, '2023-05-10 08:03:45', '2023-05-10 08:03:45', 0, 'default.jpg', 0, NULL),
(103, 'EMP-000000103', 'SampleAAEDU SampleAAEDU', NULL, 'SampleAAEDU@gmail.com', NULL, NULL, NULL, '$2y$10$iZftGHrP/IqYUPqYdyPLn.aMbx2sUJv7mH4zlHGS.XzSn8mERT1uq', NULL, '2023-05-10 08:04:20', '2023-05-10 08:04:20', 0, 'default.jpg', 0, NULL),
(104, 'EMP-000000104', 'SamplePCEDU SamplePCEDU', NULL, 'SamplePCEDU@gmail.com', NULL, NULL, NULL, '$2y$10$j/07dbx6kreTdcS.e2UUSOItFwAy7Y5dMqPaRjIR1/VloPeHJnJ62', NULL, '2023-05-10 08:05:00', '2023-05-10 08:05:00', 0, 'default.jpg', 0, NULL),
(105, 'EMP-000000105', 'Edward Pornelos', 'Faculty_Pornelos', 'edward.corbes.pornelos@gmail.com', NULL, NULL, NULL, '$2y$10$kGTDnyKs0DkB1wrJYuycsemAjVyEQipXwiloP7oa/Qt52fz/oKOba', NULL, '2023-05-10 10:08:01', '2023-05-10 10:08:01', 0, 'default.jpg', 0, NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `announcement`
--
ALTER TABLE `announcement`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `attendance`
--
ALTER TABLE `attendance`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `attendance_attachments`
--
ALTER TABLE `attendance_attachments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `chairman`
--
ALTER TABLE `chairman`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ch_faculty_reports`
--
ALTER TABLE `ch_faculty_reports`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `compiled_report`
--
ALTER TABLE `compiled_report`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `course`
--
ALTER TABLE `course`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `department`
--
ALTER TABLE `department`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `dm_faculty`
--
ALTER TABLE `dm_faculty`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `employees`
--
ALTER TABLE `employees`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `employees_email_unique` (`email`);

--
-- Indexes for table `faculty`
--
ALTER TABLE `faculty`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `faculty_section_handled`
--
ALTER TABLE `faculty_section_handled`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `faculty_subject_schedule`
--
ALTER TABLE `faculty_subject_schedule`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `faculty_weekly_class`
--
ALTER TABLE `faculty_weekly_class`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `forgot_password`
--
ALTER TABLE `forgot_password`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `fwc_notes`
--
ALTER TABLE `fwc_notes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `fwc_remarks`
--
ALTER TABLE `fwc_remarks`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `fwc_status`
--
ALTER TABLE `fwc_status`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `grouped_reports`
--
ALTER TABLE `grouped_reports`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `hr`
--
ALTER TABLE `hr`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `hr_faculty_reports`
--
ALTER TABLE `hr_faculty_reports`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `learning_delivery_mode`
--
ALTER TABLE `learning_delivery_mode`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `notifications`
--
ALTER TABLE `notifications`
  ADD PRIMARY KEY (`id`),
  ADD KEY `notifications_notifiable_type_notifiable_id_index` (`notifiable_type`,`notifiable_id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `ph_faculty_reports`
--
ALTER TABLE `ph_faculty_reports`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `position`
--
ALTER TABLE `position`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `program_head`
--
ALTER TABLE `program_head`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `request_access_faculty`
--
ALTER TABLE `request_access_faculty`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `request_compiled_report`
--
ALTER TABLE `request_compiled_report`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `roles_slug_unique` (`slug`);

--
-- Indexes for table `role_users`
--
ALTER TABLE `role_users`
  ADD PRIMARY KEY (`user_id`,`role_id`),
  ADD KEY `role_users_role_id_foreign` (`role_id`);

--
-- Indexes for table `room_db`
--
ALTER TABLE `room_db`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `schedules`
--
ALTER TABLE `schedules`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `schedule_faculty`
--
ALTER TABLE `schedule_faculty`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `schedule_remarks`
--
ALTER TABLE `schedule_remarks`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `schedule_setup`
--
ALTER TABLE `schedule_setup`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `secretary`
--
ALTER TABLE `secretary`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `section`
--
ALTER TABLE `section`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sec_faculty_reports`
--
ALTER TABLE `sec_faculty_reports`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `subject`
--
ALTER TABLE `subject`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `type_of_camera`
--
ALTER TABLE `type_of_camera`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `announcement`
--
ALTER TABLE `announcement`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `attendance`
--
ALTER TABLE `attendance`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=164;

--
-- AUTO_INCREMENT for table `attendance_attachments`
--
ALTER TABLE `attendance_attachments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=265;

--
-- AUTO_INCREMENT for table `chairman`
--
ALTER TABLE `chairman`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `ch_faculty_reports`
--
ALTER TABLE `ch_faculty_reports`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `compiled_report`
--
ALTER TABLE `compiled_report`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `course`
--
ALTER TABLE `course`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `department`
--
ALTER TABLE `department`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `dm_faculty`
--
ALTER TABLE `dm_faculty`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `employees`
--
ALTER TABLE `employees`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=111;

--
-- AUTO_INCREMENT for table `faculty`
--
ALTER TABLE `faculty`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `faculty_section_handled`
--
ALTER TABLE `faculty_section_handled`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `faculty_subject_schedule`
--
ALTER TABLE `faculty_subject_schedule`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=151;

--
-- AUTO_INCREMENT for table `faculty_weekly_class`
--
ALTER TABLE `faculty_weekly_class`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `forgot_password`
--
ALTER TABLE `forgot_password`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `fwc_notes`
--
ALTER TABLE `fwc_notes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `fwc_remarks`
--
ALTER TABLE `fwc_remarks`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `fwc_status`
--
ALTER TABLE `fwc_status`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `grouped_reports`
--
ALTER TABLE `grouped_reports`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `hr`
--
ALTER TABLE `hr`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `hr_faculty_reports`
--
ALTER TABLE `hr_faculty_reports`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `learning_delivery_mode`
--
ALTER TABLE `learning_delivery_mode`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `ph_faculty_reports`
--
ALTER TABLE `ph_faculty_reports`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `position`
--
ALTER TABLE `position`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `program_head`
--
ALTER TABLE `program_head`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `request_access_faculty`
--
ALTER TABLE `request_access_faculty`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `request_compiled_report`
--
ALTER TABLE `request_compiled_report`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `room_db`
--
ALTER TABLE `room_db`
  MODIFY `id` int(15) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `schedules`
--
ALTER TABLE `schedules`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `schedule_faculty`
--
ALTER TABLE `schedule_faculty`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `schedule_remarks`
--
ALTER TABLE `schedule_remarks`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `schedule_setup`
--
ALTER TABLE `schedule_setup`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=451;

--
-- AUTO_INCREMENT for table `secretary`
--
ALTER TABLE `secretary`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `section`
--
ALTER TABLE `section`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `sec_faculty_reports`
--
ALTER TABLE `sec_faculty_reports`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `subject`
--
ALTER TABLE `subject`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=58;

--
-- AUTO_INCREMENT for table `type_of_camera`
--
ALTER TABLE `type_of_camera`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=106;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `role_users`
--
ALTER TABLE `role_users`
  ADD CONSTRAINT `role_users_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `role_users_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
