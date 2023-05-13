-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 13, 2023 at 08:15 AM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `new_ams_db`
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
(1, 3, 'ANN-20230000001', 'Program Head', 'yFJVhJT6V4GM4k7UNsGAhPNwfPw8IwtBZdtVrga6lVVIiGuDyZP4IKBlQmnx', 'Jade Olosoro', 2, 0, NULL, 'Memo', 'tasta', 2, '1682642955-JK1.png', '2023-04-28 00:49:15', '2023-04-28 11:55:50'),
(2, 3, 'ANN-20230000002', 'Program Head', '0IitxIuzGvzpQy3ba2EXCTp4m1AeP6RprhBefbmdlECIzXOIfVeqTSC9CDh4', 'Jade Olosoro', 2, 0, NULL, 'Memo', 'asdsad', 2, '1682643138-TaJ.png', '2023-04-28 00:52:18', '2023-04-28 11:55:40'),
(3, 2, 'ANN-20230000003', 'Secretary', 'WaVWcb2SNXwGvGQ7icNobh5BQ7qDQK6XsXpQHAY9vJfvXvZiY2TdAFea3E4U', 'Edward Pornelos', 5, 0, NULL, 'Memo', 'dasdasd', 2, '1682643197-jOG.png', '2023-04-28 00:53:17', '2023-04-28 01:02:59'),
(4, 2, 'ANN-20230000004', 'Secretary', 'Z7VPzPg3HG5eSKj0DyC5xpOzIGDkCR76a3RrTo2j87BMszKU6cuETvuOvQRB', 'Edward Pornelos', 5, 0, NULL, 'Memo', 'dasdasdsa', 2, '1682643848-xB5.png', '2023-04-28 01:04:08', '2023-04-28 01:06:09'),
(5, 5, 'ANN-20230000005', 'Faculty', 'SRTgCR3lcwWW5Bp6GP5gUbLE1OQ6mKOXEMcYFOxLGCurbMBSHFDIwmJM8rBp', 'Chedrick Rowy', 68, 0, NULL, 'Memo', 'asdas', NULL, '1682643934-iRW.jpg', '2023-04-28 01:05:34', '2023-04-28 01:05:34'),
(6, 5, 'ANN-20230000006', 'Faculty', 'eoIYLDgCyN2HcH54nZW0NYlhVeiOlrtdfHrsNlAvXyWhr6JMPm9EezMdvGr1', 'Chedrick Rowy', 68, 0, NULL, 'Memo', 'asdsad', NULL, '1682644482-2dY.png', '2023-04-28 01:14:42', '2023-04-28 01:14:42'),
(7, 60, 'ANN-20230000007', 'Program Head', '8WsVm9yavE1OgnqPJ32uVi3SRbzlNmQqlkgJhPpFMAizvGlAxyVEI2fL7omi', 'Sample Chairman Sample Chairman', 2, 0, NULL, 'Memo', 'testing', 2, '1682660822-vpT.jpg', '2023-04-28 05:47:02', '2023-04-28 11:57:36'),
(8, 2, 'ANN-20230000008', 'Secretary', 'NYEmo5xM91HKgb9nE7kp4puQB1YVgP6aDc03Z18u86V0vDuZhrZEQcg7SdER', 'Edward Pornelos', 5, 0, NULL, 'Memo', 'dasdsadasd', NULL, '1682683160-edK.jpg', '2023-04-28 11:59:20', '2023-04-28 11:59:20');

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
(35, 'FAC-000000023', '2023-05-13', '01:35:58', 0, '13:37:00', 14);

-- --------------------------------------------------------

--
-- Table structure for table `attendance_attachments`
--

CREATE TABLE `attendance_attachments` (
  `id` int(11) NOT NULL,
  `subjectID` int(11) DEFAULT NULL,
  `facultyID` varchar(255) DEFAULT NULL,
  `attachment` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `is_archive` int(11) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

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
  `signature` varchar(225) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `chairman`
--

INSERT INTO `chairman` (`id`, `chID`, `empID`, `userID`, `departmentID`, `ch_firstname`, `ch_middlename`, `ch_lastname`, `ch_email`, `created_at`, `updated_at`, `signature`) VALUES
(1, 'CH-20230000001', NULL, 60, 0, 'Sample Chairman', 'Sample Chairman', 'Sample Chairman', 'edmarkjan332@gmail.com', '2023-02-19 02:26:48', '2023-05-08 19:18:16', '9iVvph-qcu_Program Chair.png');

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
(3, 'CH-20230000001', 60, 3, 'FAC-000000002', 'Nm3A', '2023-04-28 04:39:57', '2023-04-28 04:39:57'),
(4, 'CH-20230000001', 60, 5, 'FAC-000000002', 'z8G0', '2023-05-05 10:56:12', '2023-05-05 10:56:12'),
(6, 'CH-20230000001', 60, 7, 'FAC-000000002', '5klS', '2023-05-07 18:08:16', '2023-05-07 18:08:16'),
(7, 'CH-20230000001', 60, 93, 'FAC-000000002', 'GoT6', '2023-05-08 04:08:09', '2023-05-08 04:08:09'),
(8, 'CH-20230000001', 60, 94, 'FAC-000000002', 'YWKr', '2023-05-08 04:30:14', '2023-05-08 04:30:14'),
(9, 'CH-20230000001', 60, 95, 'FAC-000000002', 'k0nl', '2023-05-08 04:34:01', '2023-05-08 04:34:01');

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
(3, 5, 'Nm3A', '<ul><li>test</li></ul>', 0, '2023-04-28 04:39:57', '2023-04-28 04:39:57'),
(4, 5, 'z8G0', NULL, 0, '2023-05-05 10:56:12', '2023-05-05 10:56:12'),
(5, 2, 'z8G0', NULL, 1, '2023-05-05 15:00:52', '2023-05-05 15:00:52'),
(6, 5, 'amQD', NULL, 0, '2023-05-07 16:09:27', '2023-05-07 16:09:27'),
(7, 5, '5klS', NULL, 0, '2023-05-07 18:08:16', '2023-05-07 18:08:16'),
(8, 5, 'GoT6', NULL, 0, '2023-05-08 04:08:09', '2023-05-08 04:08:09'),
(9, 5, 'YWKr', NULL, 0, '2023-05-08 04:30:14', '2023-05-08 04:30:14'),
(10, 5, 'k0nl', NULL, 0, '2023-05-08 04:34:01', '2023-05-08 04:34:01'),
(11, 2, 'k0nl', NULL, 1, '2023-05-08 04:34:45', '2023-05-08 04:34:45');

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
(11, 5, '2', 'BSE', 'Bachelor of Science in Entrepreneurship', NULL, NULL, NULL);

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
(1, 'John Michel', 'Romero', 'Sarmiento', NULL, 9090909109, 'jhon.michel.romero.sarmiento@gmail.com', 'Taga dito sa lugar namin', 'BSIT', 2, 'Plantilla', 0, NULL, '2023-04-13 13:09:22'),
(2, 'Michaella', 'P.', 'Ledesma', NULL, 9090909092, 'michaella.p.ledesma@gmail.com', 'Taga veterans', 'BSA', 0, 'Plantilla', 0, NULL, '2023-02-20 13:00:05'),
(3, 'Anjo', 'N/A', 'Panganiban', NULL, 9090909093, 'anjo.panganiban24@gmail.com', 'Di ko alam yung bahay', 'BSE', 0, 'Plantilla', 0, NULL, NULL),
(4, 'Christine Joy', 'Dumadigo', 'Bona', NULL, 9090909093, 'christine.joy.dumadigo.bona@gmail.com', 'Taga Payatas B', 'BSECE', 0, 'Plantilla', 0, NULL, NULL),
(5, 'Jericho', 'Dangaap', 'Lim', NULL, 9090909093, 'lim.jericho.dangaap@gmail.com', 'Kapitbahay ni Dexter', 'BSIT', 0, 'Plantilla', 0, NULL, '2023-02-21 23:06:01'),
(6, 'John Paul', 'N/A', 'Capistrano', NULL, 9090909094, 'jpcapistrano111416@gmail.com', 'Taga Veterans din', 'BSIE', 0, 'Part Time', 0, NULL, NULL),
(7, 'Leah', 'Iniba', 'Dela Cruz', NULL, 9090909032, 'leah.iniba.delacruz@gmail.com', 'Taga malayo di ko alam', 'BSED', 0, 'Part Time', 0, NULL, NULL),
(8, 'Clarissa', 'De Guzman', 'Pacetes', NULL, 9090909095, 'clarissa.deguzman.pacetes@gmail.com', 'Di ko rin alam basta malayo', 'BSIT', 0, 'Part Time', 0, NULL, '2023-02-27 10:07:21'),
(9, 'Carly Joy', 'N/A', 'Tercenio', NULL, 9090909096, 'caryl.joy.tercenio@gmail.com', 'Di ko rin alam bahay', 'BSIT', 0, 'Part Time', 0, NULL, '2023-02-24 02:23:04'),
(10, 'Mark Jay', 'Porminto', 'Serafin', NULL, 9090909096, 'mark.jay.porminto.serafin@gmail.com', 'Taga malayo din', 'BSIT', 0, 'COS', 0, NULL, '2023-03-07 00:38:01'),
(11, 'Avery Christine', 'N/A', 'Salvador', NULL, 9090909097, 'avery.christine.salvador@gmail.com', 'Taga jan lang', 'BSIT', 0, 'COS', 0, NULL, NULL),
(12, 'Joseph', 'Rina', 'Beipayo', NULL, 9090909097, 'jbeni.tech@gmail.com', 'Taga bato-bato', 'BSIT', 0, 'COS', 0, NULL, '2023-03-31 00:40:54'),
(13, 'Robert William', 'Arceno', 'Yrigan', NULL, 9090909012, 'robert.william.arceno.yrigan@gmail.com', 'Taga silangan', 'BSIT', 0, 'COS', 0, NULL, NULL),
(14, 'Chemuel', 'Echavez', 'Escribano', NULL, 9090909013, 'chemuel.echavez.escribano@gmail.com', 'Malayo bahay niya', 'BSIT', 0, 'Plantilla', 0, NULL, NULL),
(15, 'Ma. Theresa', 'N/A', 'Andrade', NULL, 9090909014, 'ma.theresa.andrade12@gmail.com', 'Nasa bahay nila pero di ko alam', 'BSIT', 0, 'Plantilla', 0, NULL, NULL),
(16, 'Apreal Rose', 'Bitamor', 'Guilaran', NULL, 9090909017, 'apreal.rose.bitamor.guilaran@gmail.com', 'Taga Mid Antopolo', 'BSIT', 0, 'Plantilla', 0, NULL, NULL),
(17, 'Luis Liam', 'Ortega', 'Baly', NULL, 9090909032, 'luisliam.ortega.baly@gmail.com', 'Unknown', 'BSIT', 0, 'Plantilla', 0, NULL, NULL),
(18, 'Christina', 'M', 'Josol', NULL, 9090909034, 'christina.m.josol@gmail.com', 'Taga dulo ng QC', 'BSIT', 0, 'Plantilla', 0, NULL, NULL),
(19, 'John Jerden', 'N/A', 'Dizon', NULL, 9090909021, 'jerdendizon@gmail.com', 'Taga dulo ng QC', 'BSIT', 0, 'Plantilla', 0, NULL, '2023-03-15 04:20:17'),
(20, 'Edward', 'Corbes', 'Pornelos', NULL, 9090909021, 'pornelos13@gmail.com', 'Taga Valenzuela', 'BSIT', 2, 'Plantilla', 0, NULL, '2023-04-12 01:50:50'),
(24, 'Sample Prof', 'Sample Prof', 'Sample Prof', 'Sample Prof', 99992321232, 'sample@gmail.com', 'Sample Address', 'BSIT', 0, 'Plantilla', 0, '2023-04-21 05:11:16', '2023-04-21 05:11:16'),
(25, 'Sample Prof1', 'Sample Prof1', 'Sample Prof1', 'Sample Prof1', 99992321232, 'sample1@gmail.com', 'Sample1 Address', 'BSIT', 0, 'COS', 0, '2023-04-21 05:11:16', '2023-04-21 05:11:16'),
(26, 'Sample Prof2', 'Sample Prof2', 'Sample Prof2', 'Sample Prof2', 99992321232, 'sample2@gmail.com', 'Sample2 Address', 'BSIT', 2, 'Part Time', 0, '2023-04-21 05:11:16', '2023-04-21 13:29:35');

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
(3, 'FAC-000000003', 'EMP-000000003', 69, 0, 'udc0CVmHeqBvb0TVw79ZJ5v9mxhZkfOZpYbp85grwQj68ynQiCyNqHDHbUSy', 0, 'John Michel', 'Romero', 'Sarmiento', NULL, '9090909109', 'jhon.michel.romero.sarmiento@gmail.com', '2', NULL, '0003', 'aVNptSd', NULL, 'Plantilla', 1, 0, '2023-04-13 13:09:22', '2023-04-16 10:24:11'),
(4, 'FAC-000000004', 'EMP-000000004', 70, 0, 'DhuCBkVCdLH8PGIS3gqm3ulP5i250KRURegxkYk127AcEv0BFt2dkgFtPVh6', 0, 'Joseph', 'Beni', 'Benipayo', NULL, '99992321232', 'sample2@gmail.com', '2', NULL, '0004', '0UOCXga', NULL, 'Part Time', 0, 0, '2023-04-21 13:29:35', '2023-04-26 14:24:37'),
(5, 'FAC-000000005', 'EMP-000000005', 71, 0, 'Jl6zdNQqUBpN2gfq5DGIL95tLPzHDq3uqD3HiP6MZ4wF6XJpE8xGoay7Iohu', 0, 'Sample', 'S', 'Sample', NULL, '+639995194078', 'Sample@gmail.com', '1', NULL, '0005', 'Uv6qG9x', NULL, 'Plantilla', 0, 0, '2023-05-04 11:22:55', '2023-05-04 11:22:55'),
(6, 'FAC-000000006', 'EMP-000000006', 72, 0, 'FKBtw2UX5uQlKvwc8OW0ZfjeztVsyM7dP7F02GqCGyG5OEzA5NeHMHnODdYy', 0, 'Bona', 'B', 'Bona', NULL, '+639995194078', 'christine.joy.dumadigo.bona@gmail.com', '1', NULL, '0006', 'nxDG2aA', NULL, 'Plantilla', 1, 0, '2023-05-04 12:18:25', '2023-05-09 05:25:01'),
(7, 'FAC-000000007', 'EMP-000000007', 73, 0, '382kGLK5SeTxdM4wCLFoWo9vOreJwrRBdGr48gNc13lKho3zCP3PD7Lj9QzV', 0, 'Ate Cla', 'A', 'Pacetes', NULL, '+639995194078', 'clarissapacetes98@gmail.com', '2', NULL, '0007', 'IRu471J', NULL, 'Plantilla', 1, 0, '2023-05-05 07:01:46', '2023-05-09 02:15:09'),
(9, 'FAC-000000009', 'EMP-000000009', 75, 0, 'y1bolz7J0LIfRbEXt0NWKbkhaQakJsnXifrzyxvgaEC4jmdNOehzsnsWaS9b', 0, 'Sample', 'S', 'Sample', NULL, '+639995194078', 'Sample1@gmail.com', '1', NULL, '0009', 'nmKPpin', NULL, 'Plantilla', 0, 0, '2023-05-05 09:53:21', '2023-05-05 09:53:21'),
(10, 'FAC-000000023', 'EMP-000000010', 76, 0, 'DZqKZoGamTeX9hjG53Z7a1jYiO3dkk9KFn7JDClEzFylv2Afp0i1U6osGhWo', 0, 'Dexter', 'Dagol', 'Rosete', NULL, '+639995194078', 'TestingAccount@gmail.com', '1', NULL, '3001', 'o9rjDxF', NULL, 'Plantilla', 0, 0, '2023-05-08 20:06:37', '2023-05-08 20:06:37');

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
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `faculty_subject_schedule`
--

INSERT INTO `faculty_subject_schedule` (`id`, `facultyID`, `subjectID`, `section`, `day`, `time_start`, `time_end`, `type_of_learning`, `academic_year`, `type`, `status`, `count`, `is_group`, `is_setable`, `hndl_student`, `created_at`, `updated_at`) VALUES
(31, 'FAC-000000002', 21, 'A', 'Friday', '13:41:00', '12:59:00', 'Face to Face', '2022 - 2023', 'Lecture', 4, 1, 'KzktR', 2, 50, '2023-04-12 05:00:01', '2023-04-26 14:30:39'),
(32, 'FAC-000000002', 21, 'A', 'Friday', '22:00:00', '11:51:00', 'Face to Face', '2022 - 2023', 'Laboratory', 4, 1, 'KzktR', 2, 50, '2023-04-12 05:00:01', '2023-04-26 14:30:39'),
(34, 'FAC-000000002', 14, 'B', 'Friday', '11:26:00', '10:59:00', 'Face to Face', '2022 - 2023', 'Lecture', 4, 1, 'KzktR', 2, 50, '2023-04-12 05:00:01', '2023-04-26 14:30:21'),
(35, 'FAC-000000002', 14, 'B', 'Friday', '12:07:00', '11:59:00', 'Face to Face', '2022 - 2023', 'Laboratory', 4, 0, 'KzktR', 2, 50, '2023-04-12 05:00:01', '2023-04-26 14:30:21'),
(39, 'FAC-000000003', 21, 'A', 'Saturday', '13:43:00', '13:34:13', 'Face to Face', '2022 - 2023', 'Lecture', 3, 1, 'VGnlo', 2, 50, '2023-04-16 09:55:28', '2023-04-26 14:30:39'),
(40, 'FAC-000000003', 21, 'A', 'Saturday', '12:01:00', '11:51:00', 'Face to Face', '2022 - 2023', 'Laboratory', 3, 1, 'VGnlo', 2, 50, '2023-04-16 09:55:28', '2023-04-26 14:30:39'),
(42, 'FAC-000000003', 14, 'B', 'Wednesday', '09:59:00', '10:59:00', 'Face to Face', '2022 - 2023', 'Lecture', 3, 1, 'VGnlo', 2, 50, '2023-04-16 09:55:28', '2023-04-26 14:30:21'),
(43, 'FAC-000000003', 14, 'B', 'Wednesday', '11:50:00', '11:51:00', 'Face to Face', '2022 - 2023', 'Laboratory', 3, 0, 'VGnlo', 2, 50, '2023-04-16 09:55:28', '2023-04-26 14:30:21'),
(51, 'FAC-000000023', 14, 'A', 'Saturday', '13:41:00', '13:37:55', 'Face to Face', '2022 - 2023', 'Lecture', 0, 1, 'WhF6M', 2, 50, '2023-04-26 14:29:49', '2023-04-26 14:30:21'),
(52, 'FAC-000000023', 14, 'A', 'Saturday', '22:35:00', '22:36:00', 'Face to Face', '2022 - 2023', 'Laboratory', 0, 1, 'WhF6M', 2, 50, '2023-04-26 14:29:49', '2023-04-26 14:30:21'),
(54, 'FAC-000000004', 21, 'C', 'Wednesday', '09:59:00', '10:59:00', 'Face to Face', '2022 - 2023', 'Lecture', 0, 1, 'WhF6M', 2, 50, '2023-04-26 14:29:49', '2023-04-26 14:30:39'),
(55, 'FAC-000000004', 21, 'C', 'Wednesday', '11:50:00', '11:51:00', 'Face to Face', '2022 - 2023', 'Laboratory', 0, 0, 'WhF6M', 2, 50, '2023-04-26 14:29:49', '2023-04-26 14:30:39');

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
  `chID` int(11) DEFAULT NULL,
  `ch_approveDate` date DEFAULT NULL,
  `no_absents` int(11) DEFAULT NULL,
  `no_attendees` int(11) DEFAULT NULL,
  `accesskey` varchar(255) DEFAULT NULL,
  `is_sent` int(11) DEFAULT 0,
  `is_saved` int(11) DEFAULT 0,
  `is_resubmit` int(11) DEFAULT 0,
  `is_return` int(11) DEFAULT 0,
  `attachmentLab` varchar(1000) DEFAULT NULL,
  `attachmentLec` varchar(1000) DEFAULT NULL,
  `status` int(11) DEFAULT 0,
  `scheduleID` int(11) DEFAULT NULL,
  `week_no` varchar(45) DEFAULT NULL,
  `college` varchar(45) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `faculty_weekly_class`
--

INSERT INTO `faculty_weekly_class` (`id`, `userID`, `subjectID`, `departmentID`, `courseID`, `activity`, `activity1`, `weekID`, `fssID`, `attID`, `attID1`, `facultyID`, `secID`, `sec_approveDate`, `phID`, `ph_approveDate`, `hrID`, `hr_approveDate`, `chID`, `ch_approveDate`, `no_absents`, `no_attendees`, `accesskey`, `is_sent`, `is_saved`, `is_resubmit`, `is_return`, `attachmentLab`, `attachmentLec`, `status`, `scheduleID`, `week_no`, `college`, `created_at`, `updated_at`) VALUES
(1, 68, 21, 0, 0, '<p>Testing&nbsp;</p>', NULL, 2, 31, 18, 19, 'FAC-000000002', 5, '2023-04-13', 2, '2023-04-13', NULL, NULL, NULL, NULL, 6, 44, 'SdhFmdCWnAh3pqCSU7zT2GpXNuyy3IoyKxWvgqbiYm5j4O1zGyBbTyTPidqH', 1, 0, 1, 0, NULL, 'weeklyreport_files/08b255a5d42b89b0585260b6f2360bdd.jpg|weeklyreport_files/115f89503138416a242f40fb7d7f338e.jpg', 3, NULL, NULL, NULL, '2023-04-13 00:08:24', '2023-05-07 19:56:18'),
(2, 68, 21, 0, 0, '<p>Testing 2</p>', '<p>Testing 2</p>', 1, 31, NULL, NULL, 'FAC-000000002', 5, '2023-04-13', 2, '2023-04-13', NULL, NULL, NULL, NULL, 6, 44, 'vuAJf5lb920znVCiM6upM2duQyvGQDOVieCBnr4xdEH3aMbFb6EZSBbjYqw6', 1, 0, 1, 0, 'public/weeklyreport_files/b3967a0e938dc2a6340e258630febd5a.png', 'weeklyreport_files/08b255a5d42b89b0585260b6f2360bdd.jpg|weeklyreport_files/115f89503138416a242f40fb7d7f338e.jpg', 3, NULL, NULL, NULL, '2023-04-13 00:13:55', '2023-05-07 19:56:18'),
(3, 70, 14, 0, 0, '<p>sadsad</p>', NULL, 73, 51, 28, 29, 'FAC-000000004', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 6, 44, 'R0TVKsZwR208fusgEdaXFFWNN9dD5Lxh8Vqj08VQC3rRcBMwbNvDXmOFP4VC', 0, 0, 0, 0, NULL, 'public/weeklyreport_files/6bc24fc1ab650b25b4114e93a98f1eba.jpg', 0, NULL, NULL, NULL, '2023-04-26 14:39:13', '2023-04-26 14:39:13'),
(4, 68, 14, 0, 0, '<p>asdsad</p>', NULL, 22, 34, NULL, NULL, 'FAC-000000002', 5, '2023-04-28', NULL, NULL, NULL, NULL, NULL, NULL, 6, 44, 'Zcx4txxSGs38h8KRmm3jIJui9OCATN3eay3rMUwRWodafDtr0U2nPjTr9DKX', 1, 0, 1, 0, 'public/weeklyreport_files/01882513d5fa7c329e940dda99b12147.jpg', 'weeklyreport_files/08b255a5d42b89b0585260b6f2360bdd.jpg|weeklyreport_files/115f89503138416a242f40fb7d7f338e.jpg', 2, NULL, NULL, NULL, '2023-04-26 15:00:44', '2023-05-07 19:56:18'),
(5, 68, 14, 0, 0, '<p>asdasdsad</p>', NULL, 19, 34, 30, NULL, 'FAC-000000002', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 6, 44, 'bkvyhVaymmwCUIqvZuO3QjycaTxEDumo6i7DkvEgsRfrDVKNhvTbu5GkvZO2', 1, 0, 1, 0, NULL, 'weeklyreport_files/08b255a5d42b89b0585260b6f2360bdd.jpg|weeklyreport_files/115f89503138416a242f40fb7d7f338e.jpg', 3, NULL, NULL, NULL, '2023-05-01 07:03:00', '2023-05-07 19:56:18'),
(6, 68, 14, 0, 0, '<ul><li>Testing</li></ul>', NULL, 20, 34, 26, 27, 'FAC-000000002', 5, '2023-05-05', 2, '2023-05-05', NULL, NULL, 60, '2023-05-05', 6, 49, 'h8F0n8VKnBQX9ocV97piUgeXeNa3jTKlfjMRE5olgerIEWON1u8ObcgrJGfK', 0, 0, 0, 1, NULL, 'weeklyreport_files/08b255a5d42b89b0585260b6f2360bdd.jpg|weeklyreport_files/115f89503138416a242f40fb7d7f338e.jpg', 3, NULL, NULL, NULL, '2023-05-05 10:14:47', '2023-05-07 19:56:18'),
(8, 68, 21, 0, 0, '<p>adsadasds</p>', NULL, 3, 31, 32, 33, 'FAC-000000002', 5, '2023-05-08', 2, '2023-05-08', NULL, NULL, 60, '2023-05-08', 6, 49, 'NTxq6Y10u13wE041h2zQUmzUarmGFEaBh0umLR9UGvteVKglqXn4hZO3XGFN', 1, 0, 1, 0, 'weeklyreport_files/559cb990c9dffd8675f6bc2186971dc2.jpg|weeklyreport_files/9908279ebbf1f9b250ba689db6a0222b.png', 'weeklyreport_files/b0b183c207f46f0cca7dc63b2604f5cc.jpg|weeklyreport_files/598b3e71ec378bd83e0a727608b5db01.jpg', 3, NULL, NULL, NULL, '2023-05-07 17:59:21', '2023-05-08 04:34:45');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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

--
-- Dumping data for table `forgot_password`
--

INSERT INTO `forgot_password` (`id`, `userID`, `accesstoken`, `created_at`, `updated_at`) VALUES
(1, 2, 'irpjH366fdwkCgwrX81emccnFrynVprT87TfoJLEMX8COHnMy62QierhjEd3', '2023-04-23 13:48:46', '2023-04-23 13:48:46'),
(2, 73, 'dY1j2oQ33hk4yy1BTRydW9UXTXfLKO03pZffh38Viy8YRhdJRwg9DmWXrGFq', '2023-05-08 20:59:09', '2023-05-08 20:59:09'),
(3, 73, 'ALBVJaepAYk7HmlLPbQjxnMycmuOhJ24fFfvk1uDGjqTNJCOamSNP0kKzO8M', '2023-05-08 20:59:46', '2023-05-08 20:59:46'),
(4, 73, '3RX1lrgZa2UPZ7Wn8THTe9evrSSeqILh3VK0tuNHqGM0JemJRNsNHd2dXqU5', '2023-05-08 21:09:44', '2023-05-08 21:09:44');

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
(1, 5, 7, '<p>Testing men</p>', 0, '2023-05-07 15:30:07', '2023-05-07 15:30:07'),
(3, 60, 7, '<p>testig</p>', 1, '2023-05-07 17:17:57', '2023-05-07 17:17:57'),
(4, 2, 7, '<p>asdsads</p>', 2, '2023-05-07 17:32:56', '2023-05-07 17:32:56'),
(5, 60, 8, '<ul><li>Invalid&nbsp;</li></ul>', 1, '2023-05-07 18:13:46', '2023-05-07 18:13:46'),
(6, 60, 8, '<p>Di pasado sa standard</p>', 1, '2023-05-08 04:28:10', '2023-05-08 04:28:10'),
(7, 2, 8, '<p>not in my eye</p>', 2, '2023-05-08 04:31:42', '2023-05-08 04:31:42');

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
(3, 'FAC-000000002', '68', 4, '2023-04-28 03:42:05', '2023-04-28 03:42:05'),
(4, 'FAC-000000002', '68', 5, '2023-05-01 07:03:04', '2023-05-01 07:03:04'),
(5, 'FAC-000000002', '68', 6, '2023-05-05 10:14:55', '2023-05-05 10:14:55'),
(6, 'FAC-000000002', '68', 7, '2023-05-07 14:40:03', '2023-05-07 14:40:03'),
(7, 'FAC-000000002', '68', 8, '2023-05-07 17:59:27', '2023-05-07 17:59:27'),
(8, 'FAC-000000002', '68', 1, '2023-05-07 19:25:50', '2023-05-07 19:25:50'),
(9, 'FAC-000000002', '68', 2, '2023-05-07 19:25:50', '2023-05-07 19:25:50'),
(10, 'FAC-000000002', '68', 3, '2023-05-07 19:25:50', '2023-05-07 19:25:50'),
(11, 'FAC-000000002', '68', 4, '2023-05-07 19:25:50', '2023-05-07 19:25:50'),
(12, 'FAC-000000002', '68', 5, '2023-05-07 19:25:50', '2023-05-07 19:25:50'),
(13, 'FAC-000000002', '68', 6, '2023-05-07 19:25:50', '2023-05-07 19:25:50'),
(14, 'FAC-000000002', '68', 8, '2023-05-07 19:25:50', '2023-05-07 19:25:50'),
(15, 'FAC-000000002', '68', 1, '2023-05-07 19:29:23', '2023-05-07 19:29:23'),
(16, 'FAC-000000002', '68', 2, '2023-05-07 19:29:23', '2023-05-07 19:29:23'),
(17, 'FAC-000000002', '68', 3, '2023-05-07 19:29:23', '2023-05-07 19:29:23'),
(18, 'FAC-000000002', '68', 4, '2023-05-07 19:29:23', '2023-05-07 19:29:23'),
(19, 'FAC-000000002', '68', 5, '2023-05-07 19:29:23', '2023-05-07 19:29:23'),
(20, 'FAC-000000002', '68', 6, '2023-05-07 19:29:23', '2023-05-07 19:29:23'),
(21, 'FAC-000000002', '68', 8, '2023-05-07 19:29:23', '2023-05-07 19:29:23'),
(22, 'FAC-000000002', '68', 1, '2023-05-07 19:30:23', '2023-05-07 19:30:23'),
(23, 'FAC-000000002', '68', 2, '2023-05-07 19:30:23', '2023-05-07 19:30:23'),
(24, 'FAC-000000002', '68', 3, '2023-05-07 19:30:23', '2023-05-07 19:30:23'),
(25, 'FAC-000000002', '68', 4, '2023-05-07 19:30:23', '2023-05-07 19:30:23'),
(26, 'FAC-000000002', '68', 5, '2023-05-07 19:30:23', '2023-05-07 19:30:23'),
(27, 'FAC-000000002', '68', 6, '2023-05-07 19:30:23', '2023-05-07 19:30:23'),
(28, 'FAC-000000002', '68', 8, '2023-05-07 19:30:23', '2023-05-07 19:30:23'),
(29, 'FAC-000000002', '68', 1, '2023-05-07 19:40:32', '2023-05-07 19:40:32'),
(30, 'FAC-000000002', '68', 2, '2023-05-07 19:40:32', '2023-05-07 19:40:32'),
(31, 'FAC-000000002', '68', 3, '2023-05-07 19:40:32', '2023-05-07 19:40:32'),
(32, 'FAC-000000002', '68', 4, '2023-05-07 19:40:32', '2023-05-07 19:40:32'),
(33, 'FAC-000000002', '68', 5, '2023-05-07 19:40:32', '2023-05-07 19:40:32'),
(34, 'FAC-000000002', '68', 6, '2023-05-07 19:40:32', '2023-05-07 19:40:32'),
(35, 'FAC-000000002', '68', 8, '2023-05-07 19:40:32', '2023-05-07 19:40:32'),
(36, 'FAC-000000002', '68', 1, '2023-05-07 19:47:22', '2023-05-07 19:47:22'),
(37, 'FAC-000000002', '68', 2, '2023-05-07 19:47:22', '2023-05-07 19:47:22'),
(38, 'FAC-000000002', '68', 3, '2023-05-07 19:47:22', '2023-05-07 19:47:22'),
(39, 'FAC-000000002', '68', 4, '2023-05-07 19:47:22', '2023-05-07 19:47:22'),
(40, 'FAC-000000002', '68', 5, '2023-05-07 19:47:22', '2023-05-07 19:47:22'),
(41, 'FAC-000000002', '68', 6, '2023-05-07 19:47:22', '2023-05-07 19:47:22'),
(42, 'FAC-000000002', '68', 8, '2023-05-07 19:47:22', '2023-05-07 19:47:22'),
(43, 'FAC-000000002', '68', 1, '2023-05-07 19:48:42', '2023-05-07 19:48:42'),
(44, 'FAC-000000002', '68', 2, '2023-05-07 19:48:42', '2023-05-07 19:48:42'),
(45, 'FAC-000000002', '68', 3, '2023-05-07 19:48:42', '2023-05-07 19:48:42'),
(46, 'FAC-000000002', '68', 4, '2023-05-07 19:48:42', '2023-05-07 19:48:42'),
(47, 'FAC-000000002', '68', 5, '2023-05-07 19:48:42', '2023-05-07 19:48:42'),
(48, 'FAC-000000002', '68', 6, '2023-05-07 19:48:42', '2023-05-07 19:48:42'),
(49, 'FAC-000000002', '68', 8, '2023-05-07 19:48:42', '2023-05-07 19:48:42'),
(50, 'FAC-000000002', '68', 1, '2023-05-07 19:49:26', '2023-05-07 19:49:26'),
(51, 'FAC-000000002', '68', 2, '2023-05-07 19:49:26', '2023-05-07 19:49:26'),
(52, 'FAC-000000002', '68', 3, '2023-05-07 19:49:26', '2023-05-07 19:49:26'),
(53, 'FAC-000000002', '68', 4, '2023-05-07 19:49:26', '2023-05-07 19:49:26'),
(54, 'FAC-000000002', '68', 5, '2023-05-07 19:49:26', '2023-05-07 19:49:26'),
(55, 'FAC-000000002', '68', 6, '2023-05-07 19:49:26', '2023-05-07 19:49:26'),
(56, 'FAC-000000002', '68', 8, '2023-05-07 19:49:26', '2023-05-07 19:49:26'),
(57, 'FAC-000000002', '68', 1, '2023-05-07 19:50:17', '2023-05-07 19:50:17'),
(58, 'FAC-000000002', '68', 2, '2023-05-07 19:50:17', '2023-05-07 19:50:17'),
(59, 'FAC-000000002', '68', 3, '2023-05-07 19:50:17', '2023-05-07 19:50:17'),
(60, 'FAC-000000002', '68', 4, '2023-05-07 19:50:17', '2023-05-07 19:50:17'),
(61, 'FAC-000000002', '68', 5, '2023-05-07 19:50:17', '2023-05-07 19:50:17'),
(62, 'FAC-000000002', '68', 6, '2023-05-07 19:50:17', '2023-05-07 19:50:17'),
(63, 'FAC-000000002', '68', 8, '2023-05-07 19:50:17', '2023-05-07 19:50:17'),
(64, 'FAC-000000002', '68', 1, '2023-05-07 19:51:31', '2023-05-07 19:51:31'),
(65, 'FAC-000000002', '68', 2, '2023-05-07 19:51:31', '2023-05-07 19:51:31'),
(66, 'FAC-000000002', '68', 3, '2023-05-07 19:51:31', '2023-05-07 19:51:31'),
(67, 'FAC-000000002', '68', 4, '2023-05-07 19:51:31', '2023-05-07 19:51:31'),
(68, 'FAC-000000002', '68', 5, '2023-05-07 19:51:31', '2023-05-07 19:51:31'),
(69, 'FAC-000000002', '68', 6, '2023-05-07 19:51:31', '2023-05-07 19:51:31'),
(70, 'FAC-000000002', '68', 8, '2023-05-07 19:51:31', '2023-05-07 19:51:31'),
(71, 'FAC-000000002', '68', 1, '2023-05-07 19:56:18', '2023-05-07 19:56:18'),
(72, 'FAC-000000002', '68', 2, '2023-05-07 19:56:18', '2023-05-07 19:56:18'),
(73, 'FAC-000000002', '68', 3, '2023-05-07 19:56:18', '2023-05-07 19:56:18'),
(74, 'FAC-000000002', '68', 4, '2023-05-07 19:56:18', '2023-05-07 19:56:18'),
(75, 'FAC-000000002', '68', 5, '2023-05-07 19:56:18', '2023-05-07 19:56:18'),
(76, 'FAC-000000002', '68', 6, '2023-05-07 19:56:18', '2023-05-07 19:56:18'),
(77, 'FAC-000000002', '68', 8, '2023-05-07 19:56:18', '2023-05-07 19:56:18'),
(78, 'FAC-000000002', '68', 1, '2023-05-07 19:58:28', '2023-05-07 19:58:28'),
(79, 'FAC-000000002', '68', 2, '2023-05-07 19:58:28', '2023-05-07 19:58:28'),
(80, 'FAC-000000002', '68', 3, '2023-05-07 19:58:28', '2023-05-07 19:58:28'),
(81, 'FAC-000000002', '68', 4, '2023-05-07 19:58:28', '2023-05-07 19:58:28'),
(82, 'FAC-000000002', '68', 5, '2023-05-07 19:58:28', '2023-05-07 19:58:28'),
(83, 'FAC-000000002', '68', 6, '2023-05-07 19:58:28', '2023-05-07 19:58:28'),
(84, 'FAC-000000002', '68', 8, '2023-05-07 19:58:28', '2023-05-07 19:58:28'),
(85, 'FAC-000000002', '68', 1, '2023-05-07 20:07:46', '2023-05-07 20:07:46'),
(86, 'FAC-000000002', '68', 2, '2023-05-07 20:07:46', '2023-05-07 20:07:46'),
(87, 'FAC-000000002', '68', 3, '2023-05-07 20:07:46', '2023-05-07 20:07:46'),
(88, 'FAC-000000002', '68', 4, '2023-05-07 20:07:46', '2023-05-07 20:07:46'),
(89, 'FAC-000000002', '68', 5, '2023-05-07 20:07:46', '2023-05-07 20:07:46'),
(90, 'FAC-000000002', '68', 6, '2023-05-07 20:07:46', '2023-05-07 20:07:46'),
(91, 'FAC-000000002', '68', 8, '2023-05-07 20:07:46', '2023-05-07 20:07:46'),
(92, 'FAC-000000002', '68', 8, '2023-05-07 20:12:39', '2023-05-07 20:12:39'),
(93, 'FAC-000000002', '68', 8, '2023-05-08 04:05:44', '2023-05-08 04:05:44'),
(94, 'FAC-000000002', '68', 8, '2023-05-08 04:29:47', '2023-05-08 04:29:47'),
(95, 'FAC-000000002', '68', 8, '2023-05-08 04:33:18', '2023-05-08 04:33:18');

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
(1, 'HR-000000001', 3, 'jade', 'sample', 'sample', 'jade.delima.oloroso@gmail.com', 0, NULL, NULL);

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
(3, 'HR-000000001', 3, 3, 'FAC-000000002', 'Nm3A', '2023-04-28 03:42:05', '2023-04-28 03:42:05'),
(4, 'HR-000000001', 3, 4, 'FAC-000000002', 'yMO1', '2023-05-01 07:03:04', '2023-05-01 07:03:04'),
(5, 'HR-000000001', 3, 5, 'FAC-000000002', 'z8G0', '2023-05-05 10:14:55', '2023-05-05 10:14:55'),
(85, 'HR-000000001', 3, 85, 'FAC-000000002', 'zDGE', '2023-05-07 20:07:46', '2023-05-07 20:07:46'),
(86, 'HR-000000001', 3, 86, 'FAC-000000002', 'zDGE', '2023-05-07 20:07:46', '2023-05-07 20:07:46'),
(87, 'HR-000000001', 3, 87, 'FAC-000000002', 'zDGE', '2023-05-07 20:07:46', '2023-05-07 20:07:46'),
(88, 'HR-000000001', 3, 88, 'FAC-000000002', 'zDGE', '2023-05-07 20:07:46', '2023-05-07 20:07:46'),
(89, 'HR-000000001', 3, 89, 'FAC-000000002', 'zDGE', '2023-05-07 20:07:46', '2023-05-07 20:07:46'),
(90, 'HR-000000001', 3, 90, 'FAC-000000002', 'zDGE', '2023-05-07 20:07:46', '2023-05-07 20:07:46'),
(91, 'HR-000000001', 3, 91, 'FAC-000000002', 'zDGE', '2023-05-07 20:07:46', '2023-05-07 20:07:46'),
(92, 'HR-000000001', 3, 92, 'FAC-000000002', 'TYJU', '2023-05-07 20:12:39', '2023-05-07 20:12:39'),
(93, 'HR-000000001', 3, 93, 'FAC-000000002', 'GoT6', '2023-05-08 04:05:44', '2023-05-08 04:05:44'),
(94, 'HR-000000001', 3, 94, 'FAC-000000002', 'YWKr', '2023-05-08 04:29:47', '2023-05-08 04:29:47'),
(95, 'HR-000000001', 3, 95, 'FAC-000000002', 'k0nl', '2023-05-08 04:33:18', '2023-05-08 04:33:18');

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
('012c7d11-178d-4fcf-b344-8937464c72d5', 'App\\Notifications\\SendToPHReportNotification', 'App\\Models\\User', 2, '{\"subject\":\"Compiled Faculty Report\",\"link\":\"http:\\/\\/127.0.0.1:8000\\/Dean\\/Faculty\\/Compiled\\/Reports\\/FAC-000000002\\/k0nl\",\"name\":\"Chedrik Rowy\"}', '2023-05-08 04:34:32', '2023-05-08 04:33:57', '2023-05-08 04:34:32'),
('026ddbbc-9096-4ad2-b613-ee3b7085c2dd', 'App\\Notifications\\NotifyDeanPCAccountCreationNotification', 'App\\Models\\User', 2, '{\"subject\":\"Faculty Sample Sample Schedule.\",\"link\":\"http:\\/\\/127.0.0.1:8000\\/Dean\\/Faculty\\/List\\/View\\/FAC-000000009\\/y1bolz7J0LIfRbEXt0NWKbkhaQakJsnXifrzyxvgaEC4jmdNOehzsnsWaS9b\",\"name\":\"Chedrik Rowy\"}', NULL, '2023-05-05 09:53:21', '2023-05-05 09:53:21'),
('04bcfc79-db05-4f43-8222-bac5e5e8754a', 'App\\Notifications\\SentReportsHRNotification', 'App\\Models\\User', 5, '{\"subject\":\"Re-Submit Report\",\"link\":\"http:\\/\\/127.0.0.1:8000\\/AA\\/Faculty\\/Compiled\\/Reports\\/FAC-000000002\\/GoT6\",\"name\":\"Edward Pornelos\"}', '2023-05-08 04:06:42', '2023-05-08 04:05:52', '2023-05-08 04:06:42'),
('0783deca-9d9b-4a3d-b22b-4a36702a82c3', 'App\\Notifications\\SendSchedulePHCHNotification', 'App\\Models\\User', 2, '{\"subject\":\"Modified Faculty Ate Cla Pacetes Schedule.\",\"link\":\"http:\\/\\/127.0.0.1:8000\\/Dean\\/Faculty\\/Schedules\\/FAC-000000007\\/382kGLK5SeTxdM4wCLFoWo9vOreJwrRBdGr48gNc13lKho3zCP3PD7Lj9QzV\",\"name\":\"Sample Chairman Sample Chairman\"}', NULL, '2023-05-09 02:02:22', '2023-05-09 02:02:22'),
('07f7cb2d-8f87-4b6b-8187-43108f8255c7', 'App\\Notifications\\NotifyDeanSubmittedReportNotification', 'App\\Models\\User', 2, '{\"subject\":\"Program Chair Signed Submitted Report.\",\"link\":\"http:\\/\\/127.0.0.1:8000\\/Dean\\/Faculty\\/Compiled\\/Reports\\/Item-View\\/FAC-000000002\\/z8G0\\/View\",\"name\":\"Sample Chairman Sample Chairman\"}', NULL, '2023-05-05 14:39:49', '2023-05-05 14:39:49'),
('08ffce9f-26a1-4255-b592-74e099f212ae', 'App\\Notifications\\AddLoadToFacultyNotification', 'App\\Models\\User', 72, '{\"subject\":\"Faculty Bona Bona Schedule.\",\"link\":\"http:\\/\\/127.0.0.1:8000\\/Faculty\\/Class_Schedule\",\"name\":\"Sample Chairman Sample Chairman\"}', NULL, '2023-05-09 05:13:47', '2023-05-09 05:13:47'),
('094d7f24-7a2f-4600-a1a6-f265cc0524ab', 'App\\Notifications\\SentReportsHRNotification', 'App\\Models\\User', 3, '{\"subject\":\"Re-Submit Report\",\"link\":\"http:\\/\\/127.0.0.1:8000\\/HR\\/Notification\\/FAC-000000002\\/vm8J\\/reports\",\"name\":\"Edward Pornelos\"}', NULL, '2023-05-07 19:40:41', '2023-05-07 19:40:41'),
('0c3f5576-31e5-4fb1-a9ce-126deafd7c98', 'App\\Notifications\\SentReportsHRNotification', 'App\\Models\\User', 3, '{\"subject\":\"Re-Submit Report\",\"link\":\"http:\\/\\/127.0.0.1:8000\\/HR\\/Notification\\/FAC-000000002\\/TYJU\\/reports\",\"name\":\"Edward Pornelos\"}', NULL, '2023-05-07 20:12:46', '2023-05-07 20:12:46'),
('10ca8917-27ba-49ed-b8dd-1f70b49387b3', 'App\\Notifications\\SendSchedulePHCHNotification', 'App\\Models\\User', 2, '{\"subject\":\"Modified Faculty Bona Bona Schedule.\",\"link\":\"http:\\/\\/127.0.0.1:8000\\/Dean\\/Faculty\\/Schedules\\/FAC-000000006\\/FKBtw2UX5uQlKvwc8OW0ZfjeztVsyM7dP7F02GqCGyG5OEzA5NeHMHnODdYy\",\"name\":\"Sample Chairman Sample Chairman\"}', NULL, '2023-05-09 05:24:52', '2023-05-09 05:24:52'),
('132ac266-7f83-496d-a8a6-1cc62b59e1d1', 'App\\Notifications\\SentReportsHRNotification', 'App\\Models\\User', 3, '{\"subject\":\"Re-Submit Report\",\"link\":\"http:\\/\\/127.0.0.1:8000\\/HR\\/Notification\\/FAC-000000002\\/YWKr\\/reports\",\"name\":\"Edward Pornelos\"}', NULL, '2023-05-08 04:29:55', '2023-05-08 04:29:55'),
('17dd3941-18c4-4478-ab6f-5d18ce58cd46', 'App\\Notifications\\ReturnSubmittedReportNotification', 'App\\Models\\User', 68, '{\"subject\":\"Program Chair Retured Your Submitted Report.\",\"link\":\"http:\\/\\/127.0.0.1:8000\\/Faculty\\/Reports\\/View\\/8\\/NTxq6Y10u13wE041h2zQUmzUarmGFEaBh0umLR9UGvteVKglqXn4hZO3XGFN\",\"name\":\"Sample Chairman Sample Chairman\"}', NULL, '2023-05-07 18:13:46', '2023-05-07 18:13:46'),
('19fe28ee-d600-460c-9b37-25e68334eacd', 'App\\Notifications\\NotifyDeanPCAccountCreationNotification', 'App\\Models\\User', 2, '{\"subject\":\"Faculty Testings Accounts Account Created.\",\"link\":\"http:\\/\\/127.0.0.1:8000\\/Dean\\/Faculty\\/List\\/View\\/FAC-000000011\\/fuSjlmvRjfFx1QDoNCyaBfxhCyHhzfpmdQjVrik9mmBLEYvk1tH7CZndQ2zi\",\"name\":\"Chedrik Rowy\"}', NULL, '2023-05-08 20:21:01', '2023-05-08 20:21:01'),
('1c999ebe-5814-42db-94e2-3392acaaa0a4', 'App\\Notifications\\SentReportsHRNotification', 'App\\Models\\User', 3, '{\"subject\":\"Re-Submit Report\",\"link\":\"http:\\/\\/127.0.0.1:8000\\/HR\\/Notification\\/FAC-000000002\\/lC2T\\/reports\",\"name\":\"Edward Pornelos\"}', NULL, '2023-05-07 19:48:48', '2023-05-07 19:48:48'),
('1f65e422-6400-4636-9302-3cb88e287a19', 'App\\Notifications\\SentReportsHRNotification', 'App\\Models\\User', 5, '{\"subject\":\"Re-Submit Report\",\"link\":\"http:\\/\\/127.0.0.1:8000\\/AA\\/Faculty\\/Compiled\\/Reports\\/FAC-000000002\\/zDGE\",\"name\":\"Edward Pornelos\"}', '2023-05-07 20:08:45', '2023-05-07 20:07:53', '2023-05-07 20:08:45'),
('219d8637-3a5e-40b7-a648-f6594bc9cb0f', 'App\\Notifications\\AddLoadToFacultyNotification', 'App\\Models\\User', 73, '{\"subject\":\"Faculty Ate Cla Pacetes Schedule.\",\"link\":\"http:\\/\\/127.0.0.1:8000\\/Faculty\\/Class_Schedule\",\"name\":\"Sample Chairman Sample Chairman\"}', NULL, '2023-05-09 02:01:53', '2023-05-09 02:01:53'),
('2605073c-e9dc-4970-b58c-bc34e8d0aaca', 'App\\Notifications\\ReturnSubmittedReportNotification', 'App\\Models\\User', 68, '{\"subject\":\"Program Chair Retured Your Submitted Report.\",\"link\":\"http:\\/\\/127.0.0.1:8000\\/Faculty\\/Reports\\/View\\/7\\/lUFn9Nj5E2PhMoXunAf0C7YVOtMJcAPEEcydAbyRv5Eu9Fbt77nJNAtY64SP\",\"name\":\"Chedrik Rowy\"}', '2023-05-07 15:31:22', '2023-05-07 15:30:07', '2023-05-07 15:31:22'),
('2766b232-d4b6-4fb3-8aff-aeec49c9dbc9', 'App\\Notifications\\SendToPHReportNotification', 'App\\Models\\User', 60, '{\"subject\":\"Compiled Faculty Report\",\"link\":\"http:\\/\\/127.0.0.1:8000\\/Program Chair\\/Faculty\\/Compiled\\/Reports\\/FAC-000000002\\/5klS\",\"name\":\"Chedrik Rowy\"}', '2023-05-07 18:08:26', '2023-05-07 18:08:16', '2023-05-07 18:08:26'),
('27fbda10-5afc-4c72-af0e-4efc5bbd9539', 'App\\Notifications\\SendSchedulePHCHNotification', 'App\\Models\\User', 2, '{\"subject\":\"Modified Faculty Ate Cla Pacetes Schedule.\",\"link\":\"http:\\/\\/127.0.0.1:8000\\/Dean\\/Faculty\\/Schedules\\/FAC-000000007\\/382kGLK5SeTxdM4wCLFoWo9vOreJwrRBdGr48gNc13lKho3zCP3PD7Lj9QzV\",\"name\":\"Sample Chairman Sample Chairman\"}', NULL, '2023-05-09 02:02:47', '2023-05-09 02:02:47'),
('2af0588f-5b39-4971-924f-5714f3bab908', 'App\\Notifications\\SentReportsHRNotification', 'App\\Models\\User', 5, '{\"subject\":\"Compiled Report\",\"link\":\"http:\\/\\/127.0.0.1:8000\\/AA\\/Faculty\\/Compiled\\/Reports\\/FAC-000000002\\/z8G0\",\"name\":\"Edward Pornelos\"}', NULL, '2023-05-05 10:15:03', '2023-05-05 10:15:03'),
('2d3ac486-2bcb-4a9a-a6bb-5174ae875ad0', 'App\\Notifications\\SendSchedulePHCHNotification', 'App\\Models\\User', 2, '{\"subject\":\"Modified Faculty Ate Cla Pacetes Schedule.\",\"link\":\"http:\\/\\/127.0.0.1:8000\\/Dean\\/Faculty\\/Schedules\\/FAC-000000007\\/382kGLK5SeTxdM4wCLFoWo9vOreJwrRBdGr48gNc13lKho3zCP3PD7Lj9QzV\",\"name\":\"Sample Chairman Sample Chairman\"}', NULL, '2023-05-09 02:01:42', '2023-05-09 02:01:42'),
('3114b53e-f78e-45fb-b7d1-4ffc2977ed70', 'App\\Notifications\\SentReportsHRNotification', 'App\\Models\\User', 5, '{\"subject\":\"Re-Submit Report\",\"link\":\"http:\\/\\/127.0.0.1:8000\\/AA\\/Faculty\\/Compiled\\/Reports\\/FAC-000000002\\/IeGk\",\"name\":\"Edward Pornelos\"}', NULL, '2023-05-07 19:51:34', '2023-05-07 19:51:34'),
('31f9ca7f-f283-4516-ae71-14070e92d61a', 'App\\Notifications\\SentReportsHRNotification', 'App\\Models\\User', 3, '{\"subject\":\"Re-Submit Report\",\"link\":\"http:\\/\\/127.0.0.1:8000\\/HR\\/Notification\\/FAC-000000002\\/k0nl\\/reports\",\"name\":\"Edward Pornelos\"}', NULL, '2023-05-08 04:33:26', '2023-05-08 04:33:26'),
('348b4544-a35e-42d1-ae02-db133561752d', 'App\\Notifications\\SendSchedulePHCHNotification', 'App\\Models\\User', 5, '{\"subject\":\"Modified Faculty Bona Bona Schedule.\",\"link\":\"http:\\/\\/127.0.0.1:8000\\/AA\\/Faculty\\/Schedules\\/FAC-000000006\\/FKBtw2UX5uQlKvwc8OW0ZfjeztVsyM7dP7F02GqCGyG5OEzA5NeHMHnODdYy\",\"name\":\"Sample Chairman Sample Chairman\"}', NULL, '2023-05-09 05:13:41', '2023-05-09 05:13:41'),
('370401e6-8065-41de-b2ee-b1e6054911fa', 'App\\Notifications\\NotifyDeanSubmittedReportNotification', 'App\\Models\\User', 68, '{\"subject\":\"Program Chair Signed Submitted Report.\",\"link\":\"http:\\/\\/127.0.0.1:8000\\/Faculty\\/Reports?status=1\",\"name\":\"Sample Chairman Sample Chairman\"}', NULL, '2023-05-05 14:47:06', '2023-05-05 14:47:06'),
('3730ffe8-514d-4a55-a40f-d8251d4ff72b', 'App\\Notifications\\SecRemarksFWCNotification', 'App\\Models\\User', 68, '{\"subject\":\"Admin Assistant Remarks Weekly Report\",\"link\":\"http:\\/\\/127.0.0.1:8000\\/Faculty\\/Reports\\/View\\/2\\/vuAJf5lb920znVCiM6upM2duQyvGQDOVieCBnr4xdEH3aMbFb6EZSBbjYqw6\",\"name\":\"Chedrik Rowy\"}', '2023-05-05 07:10:50', '2023-05-05 07:10:12', '2023-05-05 07:10:50'),
('3b0aab64-b8fe-4656-bb19-cfa7cbf2253b', 'App\\Notifications\\NotifyDeanSubmittedReportNotification', 'App\\Models\\User', 68, '{\"subject\":\"Program Chair Signed Submitted Report.\",\"link\":\"http:\\/\\/127.0.0.1:8000\\/Faculty\\/Reports?status=1\",\"name\":\"Sample Chairman Sample Chairman\"}', NULL, '2023-05-08 04:30:50', '2023-05-08 04:30:50'),
('3b683dc4-e9c6-458c-b2e4-9033e68aa04c', 'App\\Notifications\\SecRemarksFWCNotification', 'App\\Models\\User', 5, '{\"subject\":\"Faculty Reply Remarks Weekly Report\",\"link\":\"http:\\/\\/127.0.0.1:8000\\/Secretary\\/Faculty\\/Compiled\\/Reports\\/2\\/vuAJf5lb920znVCiM6upM2duQyvGQDOVieCBnr4xdEH3aMbFb6EZSBbjYqw6\\/View\",\"name\":\"Edward Pornelos\"}', NULL, '2023-05-05 07:11:37', '2023-05-05 07:11:37'),
('3ff6c02e-24ca-417f-8f9e-1ebc0ead45a8', 'App\\Notifications\\SendSchedulePHCHNotification', 'App\\Models\\User', 2, '{\"subject\":\"Modified Faculty Bona Bona Schedule.\",\"link\":\"http:\\/\\/127.0.0.1:8000\\/Dean\\/Faculty\\/Schedules\\/FAC-000000006\\/FKBtw2UX5uQlKvwc8OW0ZfjeztVsyM7dP7F02GqCGyG5OEzA5NeHMHnODdYy\",\"name\":\"Sample Chairman Sample Chairman\"}', NULL, '2023-05-09 05:13:37', '2023-05-09 05:13:37'),
('414425e9-e8e0-4b7a-bc9d-7af580a449e1', 'App\\Notifications\\NotifyDeanSubmittedReportNotification', 'App\\Models\\User', 2, '{\"subject\":\"Program Chair Signed Submitted Report.\",\"link\":\"http:\\/\\/127.0.0.1:8000\\/Dean\\/Faculty\\/Compiled\\/Reports\\/Item-View\\/FAC-000000002\\/z8G0\\/View\",\"name\":\"Sample Chairman Sample Chairman\"}', NULL, '2023-05-05 14:41:47', '2023-05-05 14:41:47'),
('4575c344-bcd6-4518-a62b-f0c5c6b36b15', 'App\\Notifications\\ApproveFWCDeanNotification', 'App\\Models\\User', 68, '{\"subject\":\"Dean Approve Compiled Reports\",\"link\":\"http:\\/\\/127.0.0.1:8000\\/Faculty\\/Reports?status=1\",\"name\":\"Edmark Pornelos\"}', NULL, '2023-05-05 15:00:45', '2023-05-05 15:00:45'),
('46abc705-b413-4fe4-a1c3-4ed922658e84', 'App\\Notifications\\ReturnSubmittedReportNotification', 'App\\Models\\User', 68, '{\"subject\":\"Program Chair Retured Your Submitted Report.\",\"link\":\"http:\\/\\/127.0.0.1:8000\\/Faculty\\/Reports\\/View\\/7\\/lUFn9Nj5E2PhMoXunAf0C7YVOtMJcAPEEcydAbyRv5Eu9Fbt77nJNAtY64SP\",\"name\":\"Chedrik Rowy\"}', NULL, '2023-05-07 17:09:12', '2023-05-07 17:09:12'),
('4b9b05e6-aef9-4ec7-9460-3c677f13ee47', 'App\\Notifications\\NotifyDeanSubmittedReportNotification', 'App\\Models\\User', 68, '{\"subject\":\"Program Chair Signed Submitted Report.\",\"link\":\"http:\\/\\/127.0.0.1:8000\\/Faculty\\/Reports?status=1\",\"name\":\"Sample Chairman Sample Chairman\"}', NULL, '2023-05-05 14:39:45', '2023-05-05 14:39:45'),
('4d077876-661f-405f-a607-c6cc21d27f88', 'App\\Notifications\\NotifyDeanPCAccountCreationNotification', 'App\\Models\\User', 60, '{\"subject\":\"Faculty Testings Accounts Account Created.\",\"link\":\"http:\\/\\/127.0.0.1:8000\\/Program Chair\\/Faculty\\/List\\/View\\/FAC-000000011\\/fuSjlmvRjfFx1QDoNCyaBfxhCyHhzfpmdQjVrik9mmBLEYvk1tH7CZndQ2zi\",\"name\":\"Chedrik Rowy\"}', NULL, '2023-05-08 20:21:01', '2023-05-08 20:21:01'),
('4dffcf66-013c-405d-aca9-1b56ac2c6234', 'App\\Notifications\\NotifyDeanSubmittedReportNotification', 'App\\Models\\User', 2, '{\"subject\":\"Program Chair Signed Submitted Report.\",\"link\":\"http:\\/\\/127.0.0.1:8000\\/Dean\\/Faculty\\/Compiled\\/Reports\\/Item-View\\/FAC-000000002\\/z8G0\\/View\",\"name\":\"Sample Chairman Sample Chairman\"}', NULL, '2023-05-05 14:36:54', '2023-05-05 14:36:54'),
('5017ac08-49b7-4954-b626-f33cbb742ae5', 'App\\Notifications\\SendToPHReportNotification', 'App\\Models\\User', 60, '{\"subject\":\"Compiled Faculty Report\",\"link\":\"http:\\/\\/127.0.0.1:8000\\/Program Chair\\/Faculty\\/Compiled\\/Reports\\/FAC-000000002\\/z8G0\",\"name\":\"Chedrik Rowy\"}', '2023-05-05 11:37:34', '2023-05-05 10:56:12', '2023-05-05 11:37:34'),
('5221c7bf-edf9-42d9-8642-25e8c7b6ce39', 'App\\Notifications\\SendSchedulePHCHNotification', 'App\\Models\\User', 5, '{\"subject\":\"Modified Faculty Ate Cla Pacetes Schedule.\",\"link\":\"http:\\/\\/127.0.0.1:8000\\/AA\\/Faculty\\/Schedules\\/FAC-000000007\\/382kGLK5SeTxdM4wCLFoWo9vOreJwrRBdGr48gNc13lKho3zCP3PD7Lj9QzV\",\"name\":\"Sample Chairman Sample Chairman\"}', NULL, '2023-05-09 02:02:25', '2023-05-09 02:02:25'),
('5517b37e-2876-49d2-93d2-9744ee3aba53', 'App\\Notifications\\AddLoadToFacultyNotification', 'App\\Models\\User', 72, '{\"subject\":\"Faculty Bona Bona Schedule.\",\"link\":\"http:\\/\\/127.0.0.1:8000\\/Faculty\\/Class_Schedule\",\"name\":\"Sample Chairman Sample Chairman\"}', NULL, '2023-05-09 05:25:01', '2023-05-09 05:25:01'),
('5591784f-61a2-4ea1-8116-84f7fc03ffa6', 'App\\Notifications\\ApproveFWCDeanNotification', 'App\\Models\\User', 5, '{\"subject\":\"Dean Approve Compiled Reports\",\"link\":\"http:\\/\\/127.0.0.1:8000\\/AA\\/Faculty\\/Compiled\\/Reports\\/FAC-000000002\\/z8G0\",\"name\":\"Edmark Pornelos\"}', NULL, '2023-05-05 15:00:49', '2023-05-05 15:00:49'),
('55fcadd3-014f-4ecd-9a75-1fc6c6bb5fa5', 'App\\Notifications\\NotifyDeanPCAccountCreationNotification', 'App\\Models\\User', 60, '{\"subject\":\"Faculty asdsad asd Account Created.\",\"link\":\"http:\\/\\/127.0.0.1:8000\\/Program Chair\\/Faculty\\/List\\/View\\/FAC-000000013\\/rKFsjiirGGARTo1DjTgf7iNHGiAv3Bj8gBEsU32A1Ve5TqfI11ySglwxefKd\",\"name\":\"Chedrik Rowy\"}', NULL, '2023-05-08 20:36:46', '2023-05-08 20:36:46'),
('584ce256-c099-42ba-beb1-13e398996063', 'App\\Notifications\\SendToPHReportNotification', 'App\\Models\\User', 60, '{\"subject\":\"Compiled Faculty Report\",\"link\":\"http:\\/\\/127.0.0.1:8000\\/Program Chair\\/Faculty\\/Compiled\\/Reports\\/FAC-000000002\\/k0nl\",\"name\":\"Chedrik Rowy\"}', '2023-05-08 04:34:23', '2023-05-08 04:34:01', '2023-05-08 04:34:23'),
('63d1ce1b-308b-4196-8933-5329a34d0f58', 'App\\Notifications\\SentReportsHRNotification', 'App\\Models\\User', 3, '{\"subject\":\"Re-Submit Report\",\"link\":\"http:\\/\\/127.0.0.1:8000\\/HR\\/Notification\\/FAC-000000002\\/zDGE\\/reports\",\"name\":\"Edward Pornelos\"}', NULL, '2023-05-07 20:07:56', '2023-05-07 20:07:56'),
('67461324-9aa5-4955-853d-415c331f7031', 'App\\Notifications\\SentReportsHRNotification', 'App\\Models\\User', 5, '{\"subject\":\"Re-Submit Report\",\"link\":\"http:\\/\\/127.0.0.1:8000\\/AA\\/Faculty\\/Compiled\\/Reports\\/FAC-000000002\\/v6n9\",\"name\":\"Edward Pornelos\"}', '2023-05-08 03:59:38', '2023-05-07 19:56:22', '2023-05-08 03:59:38'),
('6900f4f3-14fe-482b-9f16-27aa75504240', 'App\\Notifications\\SendToPHReportNotification', 'App\\Models\\User', 2, '{\"subject\":\"Compiled Faculty Report\",\"link\":\"http:\\/\\/127.0.0.1:8000\\/Dean\\/Faculty\\/Compiled\\/Reports\\/FAC-000000002\\/GoT6\",\"name\":\"Chedrik Rowy\"}', '2023-05-08 04:08:36', '2023-05-08 04:08:06', '2023-05-08 04:08:36'),
('699f785c-7de1-4683-a2c7-6d604bb9babc', 'App\\Notifications\\NotifyDeanPCAccountCreationNotification', 'App\\Models\\User', 60, '{\"subject\":\"Faculty Sample Sample Schedule.\",\"link\":\"http:\\/\\/127.0.0.1:8000\\/Program Chair\\/Faculty\\/List\\/View\\/FAC-000000009\\/y1bolz7J0LIfRbEXt0NWKbkhaQakJsnXifrzyxvgaEC4jmdNOehzsnsWaS9b\",\"name\":\"Chedrik Rowy\"}', NULL, '2023-05-05 09:53:21', '2023-05-05 09:53:21'),
('6c9bc112-d324-4c9a-801d-d679ea0fa683', 'App\\Notifications\\ApproveFWCDeanNotification', 'App\\Models\\User', 5, '{\"subject\":\"Dean Approve Compiled Reports\",\"link\":\"http:\\/\\/127.0.0.1:8000\\/AA\\/Faculty\\/Compiled\\/Reports\\/FAC-000000002\\/k0nl\",\"name\":\"Edmark Pornelos\"}', NULL, '2023-05-08 04:34:41', '2023-05-08 04:34:41'),
('6dd5aced-7721-4b48-a327-3d652e3e94c5', 'App\\Notifications\\SentReportsHRNotification', 'App\\Models\\User', 5, '{\"subject\":\"Compiled Report\",\"link\":\"http:\\/\\/127.0.0.1:8000\\/AA\\/Faculty\\/Compiled\\/Reports\\/FAC-000000002\\/5klS\",\"name\":\"Edward Pornelos\"}', '2023-05-07 18:02:31', '2023-05-07 17:59:30', '2023-05-07 18:02:31'),
('70b3a99a-a16d-4f9b-92b2-8f510e698da4', 'App\\Notifications\\NotifyDeanSubmittedReportNotification', 'App\\Models\\User', 68, '{\"subject\":\"Program Chair Signed Submitted Report.\",\"link\":\"http:\\/\\/127.0.0.1:8000\\/Faculty\\/Reports?status=1\",\"name\":\"Sample Chairman Sample Chairman\"}', NULL, '2023-05-05 14:41:44', '2023-05-05 14:41:44'),
('72ccaef6-01e8-4b80-9194-6e44eeea9e04', 'App\\Notifications\\NotifyDeanPCAccountCreationNotification', 'App\\Models\\User', 60, '{\"subject\":\"Faculty Testing Account Account Created.\",\"link\":\"http:\\/\\/127.0.0.1:8000\\/Program Chair\\/Faculty\\/List\\/View\\/FAC-000000010\\/DZqKZoGamTeX9hjG53Z7a1jYiO3dkk9KFn7JDClEzFylv2Afp0i1U6osGhWo\",\"name\":\"Chedrik Rowy\"}', NULL, '2023-05-08 20:06:38', '2023-05-08 20:06:38'),
('752185c8-1c68-42a8-af34-6ace9c0c6c71', 'App\\Notifications\\NotifyDeanPCAccountCreationNotification', 'App\\Models\\User', 2, '{\"subject\":\"Faculty asdsad asd Account Created.\",\"link\":\"http:\\/\\/127.0.0.1:8000\\/Dean\\/Faculty\\/List\\/View\\/FAC-000000013\\/rKFsjiirGGARTo1DjTgf7iNHGiAv3Bj8gBEsU32A1Ve5TqfI11ySglwxefKd\",\"name\":\"Chedrik Rowy\"}', NULL, '2023-05-08 20:36:46', '2023-05-08 20:36:46'),
('7d9455f0-0e46-4356-9481-e1a79126ed95', 'App\\Notifications\\ReadyForScheduleCreationNotification', 'App\\Models\\User', 60, '{\"subject\":\"Faculty Pacetes Ready for Schedule Creation.\",\"link\":\"http:\\/\\/127.0.0.1:8000\\/Program Chair\\/Faculty\\/Schedules\\/FAC-000000007\\/382kGLK5SeTxdM4wCLFoWo9vOreJwrRBdGr48gNc13lKho3zCP3PD7Lj9QzV\",\"name\":\"Ate Cla Pacetes\"}', NULL, '2023-05-08 20:53:44', '2023-05-08 20:53:44'),
('7e88278e-74a0-4d73-84e4-2a119a106181', 'App\\Notifications\\ApproveFWCDeanNotification', 'App\\Models\\User', 68, '{\"subject\":\"Dean Approve Compiled Reports\",\"link\":\"http:\\/\\/127.0.0.1:8000\\/Faculty\\/Reports?status=1\",\"name\":\"Edmark Pornelos\"}', NULL, '2023-05-08 04:34:37', '2023-05-08 04:34:37'),
('7fbac06b-1507-4bce-b6d5-ca4216d40373', 'App\\Notifications\\SendToPHReportNotification', 'App\\Models\\User', 2, '{\"subject\":\"Compiled Faculty Report\",\"link\":\"http:\\/\\/127.0.0.1:8000\\/Dean\\/Faculty\\/Compiled\\/Reports\\/FAC-000000002\\/amQD\",\"name\":\"Chedrik Rowy\"}', '2023-05-07 16:54:43', '2023-05-07 16:09:24', '2023-05-07 16:54:43'),
('84e99b2b-c13e-41a3-a89a-36ff2059cfa1', 'App\\Notifications\\NotifyDeanPCAccountCreationNotification', 'App\\Models\\User', 60, '{\"subject\":\"Faculty dasd asd Account Created.\",\"link\":\"http:\\/\\/127.0.0.1:8000\\/Program Chair\\/Faculty\\/List\\/View\\/FAC-000000012\\/iA0pt9n7BAticXNOu5smNS6Gj70eczTTs1PaSyxcv7J5f47FqjBNy9jO3QLx\",\"name\":\"Chedrik Rowy\"}', NULL, '2023-05-08 20:35:22', '2023-05-08 20:35:22'),
('85186771-1fd3-44a5-a770-ca6c8edaf663', 'App\\Notifications\\SendToPHReportNotification', 'App\\Models\\User', 60, '{\"subject\":\"Compiled Faculty Report\",\"link\":\"http:\\/\\/127.0.0.1:8000\\/Program Chair\\/Faculty\\/Compiled\\/Reports\\/FAC-000000002\\/amQD\",\"name\":\"Chedrik Rowy\"}', '2023-05-07 16:11:44', '2023-05-07 16:09:27', '2023-05-07 16:11:44'),
('88df4a6e-72d7-4cd1-be9e-648b97c6c613', 'App\\Notifications\\SendToPHReportNotification', 'App\\Models\\User', 60, '{\"subject\":\"Compiled Faculty Report\",\"link\":\"http:\\/\\/127.0.0.1:8000\\/Program Chair\\/Faculty\\/Compiled\\/Reports\\/FAC-000000002\\/GoT6\",\"name\":\"Chedrik Rowy\"}', '2023-05-08 04:08:50', '2023-05-08 04:08:09', '2023-05-08 04:08:50'),
('897b3854-f247-45ec-b42b-af6f5f8acfda', 'App\\Notifications\\SendToPHReportNotification', 'App\\Models\\User', 2, '{\"subject\":\"Compiled Faculty Report\",\"link\":\"http:\\/\\/127.0.0.1:8000\\/Dean\\/Faculty\\/Compiled\\/Reports\\/FAC-000000002\\/YWKr\",\"name\":\"Chedrik Rowy\"}', NULL, '2023-05-08 04:30:10', '2023-05-08 04:30:10'),
('8c27d679-26fc-4a88-88f2-ab6e09f11b85', 'App\\Notifications\\SendSchedulePHCHNotification', 'App\\Models\\User', 5, '{\"subject\":\"Modified Faculty Ate Cla Pacetes Schedule.\",\"link\":\"http:\\/\\/127.0.0.1:8000\\/AA\\/Faculty\\/Schedules\\/FAC-000000007\\/382kGLK5SeTxdM4wCLFoWo9vOreJwrRBdGr48gNc13lKho3zCP3PD7Lj9QzV\",\"name\":\"Sample Chairman Sample Chairman\"}', NULL, '2023-05-09 02:01:46', '2023-05-09 02:01:46'),
('8c556b5b-df80-4a0e-89cb-ce8ff1979d7e', 'App\\Notifications\\ReturnSubmittedReportNotification', 'App\\Models\\User', 68, '{\"subject\":\"Program Chair Retured Your Submitted Report.\",\"link\":\"http:\\/\\/127.0.0.1:8000\\/Faculty\\/Reports\\/View\\/8\\/NTxq6Y10u13wE041h2zQUmzUarmGFEaBh0umLR9UGvteVKglqXn4hZO3XGFN\",\"name\":\"Sample Chairman Sample Chairman\"}', '2023-05-08 04:28:40', '2023-05-08 04:28:10', '2023-05-08 04:28:40'),
('8e658e2c-def7-4e5b-888e-c056154fa3b5', 'App\\Notifications\\SentReportsHRNotification', 'App\\Models\\User', 5, '{\"subject\":\"Re-Submit Report\",\"link\":\"http:\\/\\/127.0.0.1:8000\\/AA\\/Faculty\\/Compiled\\/Reports\\/FAC-000000002\\/YWKr\",\"name\":\"Edward Pornelos\"}', '2023-05-08 04:30:03', '2023-05-08 04:29:51', '2023-05-08 04:30:03'),
('91ad1d85-ae96-427c-9bb5-690aa30d96e8', 'App\\Notifications\\ReturnSubmittedReportNotification', 'App\\Models\\User', 68, '{\"subject\":\"Program Chair Retured Your Submitted Report.\",\"link\":\"http:\\/\\/127.0.0.1:8000\\/Faculty\\/Reports\\/View\\/7\\/lUFn9Nj5E2PhMoXunAf0C7YVOtMJcAPEEcydAbyRv5Eu9Fbt77nJNAtY64SP\",\"name\":\"Sample Chairman Sample Chairman\"}', NULL, '2023-05-07 17:17:57', '2023-05-07 17:17:57'),
('94ef0fe8-e7ce-46c0-b68e-13ff16455e07', 'App\\Notifications\\AddLoadToFacultyNotification', 'App\\Models\\User', 73, '{\"subject\":\"Faculty Ate Cla Pacetes Schedule.\",\"link\":\"http:\\/\\/127.0.0.1:8000\\/Faculty\\/Class_Schedule\",\"name\":\"Sample Chairman Sample Chairman\"}', NULL, '2023-05-09 02:02:32', '2023-05-09 02:02:32'),
('95ac7e2c-5708-4b5c-b1b1-6d8604418690', 'App\\Notifications\\NotifyDeanSubmittedReportNotification', 'App\\Models\\User', 68, '{\"subject\":\"Program Chair Signed Submitted Report.\",\"link\":\"http:\\/\\/127.0.0.1:8000\\/Faculty\\/Reports?status=1\",\"name\":\"Sample Chairman Sample Chairman\"}', NULL, '2023-05-05 14:36:47', '2023-05-05 14:36:47'),
('95d45383-e222-4199-b837-a6dad473b09d', 'App\\Notifications\\SendSchedulePHCHNotification', 'App\\Models\\User', 2, '{\"subject\":\"Modified Faculty Ate Cla Pacetes Schedule.\",\"link\":\"http:\\/\\/127.0.0.1:8000\\/Dean\\/Faculty\\/Schedules\\/FAC-000000007\\/382kGLK5SeTxdM4wCLFoWo9vOreJwrRBdGr48gNc13lKho3zCP3PD7Lj9QzV\",\"name\":\"Sample Chairman Sample Chairman\"}', NULL, '2023-05-09 02:14:59', '2023-05-09 02:14:59'),
('97a36b22-e908-4ba8-86cd-2f48c6db9b24', 'App\\Notifications\\SendSchedulePHCHNotification', 'App\\Models\\User', 5, '{\"subject\":\"Modified Faculty Ate Cla Pacetes Schedule.\",\"link\":\"http:\\/\\/127.0.0.1:8000\\/AA\\/Faculty\\/Schedules\\/FAC-000000007\\/382kGLK5SeTxdM4wCLFoWo9vOreJwrRBdGr48gNc13lKho3zCP3PD7Lj9QzV\",\"name\":\"Sample Chairman Sample Chairman\"}', NULL, '2023-05-09 02:15:03', '2023-05-09 02:15:03'),
('a10067c7-1be9-45c0-b960-595ff48ad84d', 'App\\Notifications\\NotifyDeanSubmittedReportNotification', 'App\\Models\\User', 2, '{\"subject\":\"Program Chair Signed Submitted Report.\",\"link\":\"http:\\/\\/127.0.0.1:8000\\/Dean\\/Faculty\\/Compiled\\/Reports\\/FAC-000000002\\/z8G0\",\"name\":\"Sample Chairman Sample Chairman\"}', '2023-05-05 14:47:20', '2023-05-05 14:47:10', '2023-05-05 14:47:20'),
('a10aac81-c15a-4b74-a086-d1f4e4ac0aed', 'App\\Notifications\\SentReportsHRNotification', 'App\\Models\\User', 3, '{\"subject\":\"Compiled Report\",\"link\":\"http:\\/\\/127.0.0.1:8000\\/HR\\/Notification\\/FAC-000000002\\/5klS\\/reports\",\"name\":\"Edward Pornelos\"}', NULL, '2023-05-07 17:59:34', '2023-05-07 17:59:34'),
('a4a906f2-5800-4ebc-86a5-f7037609c7fb', 'App\\Notifications\\SentReportsHRNotification', 'App\\Models\\User', 5, '{\"subject\":\"Re-Submit Report\",\"link\":\"http:\\/\\/127.0.0.1:8000\\/AA\\/Faculty\\/Compiled\\/Reports\\/FAC-000000002\\/k0nl\",\"name\":\"Edward Pornelos\"}', '2023-05-08 04:33:50', '2023-05-08 04:33:22', '2023-05-08 04:33:50'),
('a55e3bbe-4293-431e-bc4c-9483385bc7a0', 'App\\Notifications\\ReturnSubmittedReportNotification', 'App\\Models\\User', 68, '{\"subject\":\"Program Chair Retured Your Submitted Report.\",\"link\":\"http:\\/\\/127.0.0.1:8000\\/Faculty\\/Reports\\/View\\/7\\/lUFn9Nj5E2PhMoXunAf0C7YVOtMJcAPEEcydAbyRv5Eu9Fbt77nJNAtY64SP\",\"name\":\"Edmark Pornelos\"}', NULL, '2023-05-07 17:32:56', '2023-05-07 17:32:56'),
('a79c8a20-59aa-41ca-b965-8c1081c90009', 'App\\Notifications\\NotifyDeanPCAccountCreationNotification', 'App\\Models\\User', 2, '{\"subject\":\"Faculty Testing Account Account Created.\",\"link\":\"http:\\/\\/127.0.0.1:8000\\/Dean\\/Faculty\\/List\\/View\\/FAC-000000010\\/DZqKZoGamTeX9hjG53Z7a1jYiO3dkk9KFn7JDClEzFylv2Afp0i1U6osGhWo\",\"name\":\"Chedrik Rowy\"}', NULL, '2023-05-08 20:06:38', '2023-05-08 20:06:38'),
('a9dd9d35-74ae-4fb4-afa3-e9e4efe97db6', 'App\\Notifications\\SendSchedulePHCHNotification', 'App\\Models\\User', 5, '{\"subject\":\"Modified Faculty Ate Cla Pacetes Schedule.\",\"link\":\"http:\\/\\/127.0.0.1:8000\\/AA\\/Faculty\\/Schedules\\/FAC-000000007\\/382kGLK5SeTxdM4wCLFoWo9vOreJwrRBdGr48gNc13lKho3zCP3PD7Lj9QzV\",\"name\":\"Sample Chairman Sample Chairman\"}', NULL, '2023-05-09 02:02:51', '2023-05-09 02:02:51'),
('ac75cb5f-5e25-4480-b197-973ba4af57bd', 'App\\Notifications\\SentReportsHRNotification', 'App\\Models\\User', 3, '{\"subject\":\"Compiled Report\",\"link\":\"http:\\/\\/127.0.0.1:8000\\/HR\\/Notification\\/FAC-000000002\\/amQD\\/reports\",\"name\":\"Edward Pornelos\"}', NULL, '2023-05-07 14:40:14', '2023-05-07 14:40:14'),
('af44fe01-8797-4f32-99be-b4bbc203bfd9', 'App\\Notifications\\SentReportsHRNotification', 'App\\Models\\User', 5, '{\"subject\":\"Re-Submit Report\",\"link\":\"http:\\/\\/127.0.0.1:8000\\/AA\\/Faculty\\/Compiled\\/Reports\\/FAC-000000002\\/kspp\",\"name\":\"Edward Pornelos\"}', NULL, '2023-05-07 19:47:26', '2023-05-07 19:47:26'),
('aff95131-dc9d-483e-a716-98620c124336', 'App\\Notifications\\SentReportsHRNotification', 'App\\Models\\User', 3, '{\"subject\":\"Re-Submit Report\",\"link\":\"http:\\/\\/127.0.0.1:8000\\/HR\\/Notification\\/FAC-000000002\\/v6n9\\/reports\",\"name\":\"Edward Pornelos\"}', NULL, '2023-05-07 19:56:25', '2023-05-07 19:56:25'),
('b1150834-e74d-468d-b815-9853cc455e66', 'App\\Notifications\\ReturnSubmittedReportNotification', 'App\\Models\\User', 68, '{\"subject\":\"Program Chair Retured Your Submitted Report.\",\"link\":\"http:\\/\\/127.0.0.1:8000\\/Faculty\\/Reports\\/View\\/8\\/NTxq6Y10u13wE041h2zQUmzUarmGFEaBh0umLR9UGvteVKglqXn4hZO3XGFN\",\"name\":\"Edmark Pornelos\"}', '2023-05-08 04:32:23', '2023-05-08 04:31:42', '2023-05-08 04:32:23'),
('b410f642-cedf-4773-ba18-cfbc87cd9f13', 'App\\Notifications\\SentReportsHRNotification', 'App\\Models\\User', 5, '{\"subject\":\"Re-Submit Report\",\"link\":\"http:\\/\\/127.0.0.1:8000\\/AA\\/Faculty\\/Compiled\\/Reports\\/FAC-000000002\\/OIDb\",\"name\":\"Edward Pornelos\"}', '2023-05-08 03:05:10', '2023-05-07 19:58:32', '2023-05-08 03:05:10'),
('b6420fca-1160-487d-afc5-d9c557c684a0', 'App\\Notifications\\SentReportsHRNotification', 'App\\Models\\User', 5, '{\"subject\":\"Re-Submit Report\",\"link\":\"http:\\/\\/127.0.0.1:8000\\/AA\\/Faculty\\/Compiled\\/Reports\\/FAC-000000002\\/lC2T\",\"name\":\"Edward Pornelos\"}', NULL, '2023-05-07 19:48:45', '2023-05-07 19:48:45'),
('b82ff4bf-ee11-46f6-8ba1-c65058eb10f2', 'App\\Notifications\\SentReportsHRNotification', 'App\\Models\\User', 5, '{\"subject\":\"Compiled Report\",\"link\":\"http:\\/\\/127.0.0.1:8000\\/AA\\/Faculty\\/Compiled\\/Reports\\/FAC-000000002\\/amQD\",\"name\":\"Edward Pornelos\"}', '2023-05-07 14:40:47', '2023-05-07 14:40:11', '2023-05-07 14:40:47'),
('c2ad8a2d-bd7d-4675-a320-bbb5eaaea151', 'App\\Notifications\\SentReportsHRNotification', 'App\\Models\\User', 3, '{\"subject\":\"Re-Submit Report\",\"link\":\"http:\\/\\/127.0.0.1:8000\\/HR\\/Notification\\/FAC-000000002\\/kspp\\/reports\",\"name\":\"Edward Pornelos\"}', NULL, '2023-05-07 19:47:29', '2023-05-07 19:47:29'),
('c4a8ced8-a91a-4316-8f0f-d4df85be7e34', 'App\\Notifications\\SentReportsHRNotification', 'App\\Models\\User', 3, '{\"subject\":\"Re-Submit Report\",\"link\":\"http:\\/\\/127.0.0.1:8000\\/HR\\/Notification\\/FAC-000000002\\/IeGk\\/reports\",\"name\":\"Edward Pornelos\"}', NULL, '2023-05-07 19:51:37', '2023-05-07 19:51:37'),
('c7891fb0-4b75-4c75-9f66-646fd7f6d6db', 'App\\Notifications\\ReturnSubmittedReportNotification', 'App\\Models\\User', 68, '{\"subject\":\"Program Chair Retured Your Submitted Report.\",\"link\":\"http:\\/\\/127.0.0.1:8000\\/Faculty\\/Reports\\/List\\/View\\/FAC-000000002\\/Ke7rEGA5g0rNYCVM0vtVhVCAITySdbdPklw0FlqSo0QqH9Dpj0bXJKVWtEaq\",\"name\":\"Sample Chairman Sample Chairman\"}', NULL, '2023-05-05 16:36:41', '2023-05-05 16:36:41'),
('c7c4c0fa-7719-4026-8e4d-1bd2398334d2', 'App\\Notifications\\ReturnSubmittedReportNotification', 'App\\Models\\User', 68, '{\"subject\":\"Program Chair Retured Your Submitted Report.\",\"link\":\"http:\\/\\/127.0.0.1:8000\\/Faculty\\/Reports\\/View\\/6\\/h8F0n8VKnBQX9ocV97piUgeXeNa3jTKlfjMRE5olgerIEWON1u8ObcgrJGfK\",\"name\":\"Sample Chairman Sample Chairman\"}', '2023-05-05 16:41:00', '2023-05-05 16:40:49', '2023-05-05 16:41:00'),
('d284184b-a70c-4d6f-bd2b-1f5c88e86eaa', 'App\\Notifications\\AddLoadToFacultyNotification', 'App\\Models\\User', 73, '{\"subject\":\"Faculty Ate Cla Pacetes Schedule.\",\"link\":\"http:\\/\\/127.0.0.1:8000\\/Faculty\\/Class_Schedule\",\"name\":\"Sample Chairman Sample Chairman\"}', NULL, '2023-05-09 02:15:09', '2023-05-09 02:15:09'),
('d3429150-2522-4a0c-8621-2b270e9aafa0', 'App\\Notifications\\NotifyDeanSubmittedReportNotification', 'App\\Models\\User', 2, '{\"subject\":\"Program Chair Signed Submitted Report.\",\"link\":\"http:\\/\\/127.0.0.1:8000\\/Dean\\/Faculty\\/Compiled\\/Reports\\/FAC-000000002\\/YWKr\",\"name\":\"Sample Chairman Sample Chairman\"}', '2023-05-08 04:31:25', '2023-05-08 04:30:54', '2023-05-08 04:31:25'),
('d9c8a31b-0028-403c-827a-ac687dbb3525', 'App\\Notifications\\AddLoadToFacultyNotification', 'App\\Models\\User', 73, '{\"subject\":\"Faculty Ate Cla Pacetes Schedule.\",\"link\":\"http:\\/\\/127.0.0.1:8000\\/Faculty\\/Class_Schedule\",\"name\":\"Sample Chairman Sample Chairman\"}', NULL, '2023-05-09 02:02:57', '2023-05-09 02:02:57'),
('ddb3bb1c-0f84-4881-8f8c-d700a1f393e3', 'App\\Notifications\\SentReportsHRNotification', 'App\\Models\\User', 5, '{\"subject\":\"Re-Submit Report\",\"link\":\"http:\\/\\/127.0.0.1:8000\\/AA\\/Faculty\\/Compiled\\/Reports\\/FAC-000000002\\/TYJU\",\"name\":\"Edward Pornelos\"}', '2023-05-07 20:12:59', '2023-05-07 20:12:43', '2023-05-07 20:12:59'),
('dfbdfb6d-7c96-4726-89f4-50f0b1d704fd', 'App\\Notifications\\SendToPHReportNotification', 'App\\Models\\User', 2, '{\"subject\":\"Compiled Faculty Report\",\"link\":\"http:\\/\\/127.0.0.1:8000\\/Dean\\/Faculty\\/Compiled\\/Reports\\/FAC-000000002\\/z8G0\",\"name\":\"Chedrik Rowy\"}', '2023-05-05 11:04:30', '2023-05-05 10:56:09', '2023-05-05 11:04:30'),
('e3007b5c-e92a-44ca-963d-b0a109eedd92', 'App\\Notifications\\NotifyDeanPCAccountCreationNotification', 'App\\Models\\User', 2, '{\"subject\":\"Faculty dasd asd Account Created.\",\"link\":\"http:\\/\\/127.0.0.1:8000\\/Dean\\/Faculty\\/List\\/View\\/FAC-000000012\\/iA0pt9n7BAticXNOu5smNS6Gj70eczTTs1PaSyxcv7J5f47FqjBNy9jO3QLx\",\"name\":\"Chedrik Rowy\"}', NULL, '2023-05-08 20:35:22', '2023-05-08 20:35:22'),
('e44f4a5b-2c9b-4cbf-b57e-6c6032f570de', 'App\\Notifications\\SentReportsHRNotification', 'App\\Models\\User', 5, '{\"subject\":\"Re-Submit Report\",\"link\":\"http:\\/\\/127.0.0.1:8000\\/AA\\/Faculty\\/Compiled\\/Reports\\/FAC-000000002\\/vm8J\",\"name\":\"Edward Pornelos\"}', NULL, '2023-05-07 19:40:36', '2023-05-07 19:40:36'),
('e4f48709-2392-486b-a4c2-05d87ecf95a8', 'App\\Notifications\\SendToPHReportNotification', 'App\\Models\\User', 2, '{\"subject\":\"Compiled Faculty Report\",\"link\":\"http:\\/\\/127.0.0.1:8000\\/Dean\\/Faculty\\/Compiled\\/Reports\\/FAC-000000002\\/5klS\",\"name\":\"Chedrik Rowy\"}', '2023-05-07 18:12:30', '2023-05-07 18:08:13', '2023-05-07 18:12:30'),
('eaf43493-29ff-4553-bd57-6943df46b275', 'App\\Notifications\\SentReportsHRNotification', 'App\\Models\\User', 3, '{\"subject\":\"Re-Submit Report\",\"link\":\"http:\\/\\/127.0.0.1:8000\\/HR\\/Notification\\/FAC-000000002\\/OIDb\\/reports\",\"name\":\"Edward Pornelos\"}', NULL, '2023-05-07 19:58:35', '2023-05-07 19:58:35'),
('eca2e09e-d898-4050-bdc0-9d0f007ea0da', 'App\\Notifications\\ReturnSubmittedReportNotification', 'App\\Models\\User', 68, '{\"subject\":\"Program Chair Retured Your Submitted Report.\",\"link\":\"http:\\/\\/127.0.0.1:8000\\/Faculty\\/Reports\\/View\\/6\\/Ke7rEGA5g0rNYCVM0vtVhVCAITySdbdPklw0FlqSo0QqH9Dpj0bXJKVWtEaq\",\"name\":\"Sample Chairman Sample Chairman\"}', '2023-05-05 16:39:32', '2023-05-05 16:39:21', '2023-05-05 16:39:32'),
('ef61781a-c86d-4593-ba9e-63b519ec0db0', 'App\\Notifications\\SendSchedulePHCHNotification', 'App\\Models\\User', 5, '{\"subject\":\"Modified Faculty Bona Bona Schedule.\",\"link\":\"http:\\/\\/127.0.0.1:8000\\/AA\\/Faculty\\/Schedules\\/FAC-000000006\\/FKBtw2UX5uQlKvwc8OW0ZfjeztVsyM7dP7F02GqCGyG5OEzA5NeHMHnODdYy\",\"name\":\"Sample Chairman Sample Chairman\"}', NULL, '2023-05-09 05:24:55', '2023-05-09 05:24:55'),
('f7994353-04ac-4fdc-8154-b33f70b5ea6c', 'App\\Notifications\\SendToPHReportNotification', 'App\\Models\\User', 60, '{\"subject\":\"Compiled Faculty Report\",\"link\":\"http:\\/\\/127.0.0.1:8000\\/Program Chair\\/Faculty\\/Compiled\\/Reports\\/FAC-000000002\\/YWKr\",\"name\":\"Chedrik Rowy\"}', '2023-05-08 04:30:27', '2023-05-08 04:30:14', '2023-05-08 04:30:27'),
('f7ab853b-c6dc-4d1c-9ccf-70b5a7ef39e3', 'App\\Notifications\\SentReportsHRNotification', 'App\\Models\\User', 3, '{\"subject\":\"Re-Submit Report\",\"link\":\"http:\\/\\/127.0.0.1:8000\\/HR\\/Notification\\/FAC-000000002\\/GoT6\\/reports\",\"name\":\"Edward Pornelos\"}', NULL, '2023-05-08 04:05:56', '2023-05-08 04:05:56'),
('fb454e4a-425b-4062-827e-d76608068dbf', 'App\\Notifications\\SentReportsHRNotification', 'App\\Models\\User', 3, '{\"subject\":\"Compiled Report\",\"link\":\"http:\\/\\/127.0.0.1:8000\\/HR\\/Notification\\/FAC-000000002\\/z8G0\\/reports\",\"name\":\"Edward Pornelos\"}', NULL, '2023-05-05 10:15:06', '2023-05-05 10:15:06');

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
(3, 'PH-000000001', 2, 3, 'FAC-000000002', 'Nm3A', '2023-04-28 04:39:57', '2023-04-28 04:39:57'),
(4, 'PH-000000001', 2, 5, 'FAC-000000002', 'z8G0', '2023-05-05 10:56:12', '2023-05-05 10:56:12'),
(6, 'PH-000000001', 2, 7, 'FAC-000000002', '5klS', '2023-05-07 18:08:16', '2023-05-07 18:08:16'),
(7, 'PH-000000001', 2, 93, 'FAC-000000002', 'GoT6', '2023-05-08 04:08:09', '2023-05-08 04:08:09'),
(8, 'PH-000000001', 2, 94, 'FAC-000000002', 'YWKr', '2023-05-08 04:30:14', '2023-05-08 04:30:14'),
(9, 'PH-000000001', 2, 95, 'FAC-000000002', 'k0nl', '2023-05-08 04:34:01', '2023-05-08 04:34:01');

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
  `signature` varchar(225) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `program_head`
--

INSERT INTO `program_head` (`id`, `phID`, `empID`, `userID`, `departmentID`, `ph_firstname`, `ph_middlename`, `ph_lastname`, `ph_email`, `created_at`, `updated_at`, `signature`) VALUES
(1, 'PH-000000001', 'EMP-000000002', 2, 0, 'Edmark', 'Corbes', 'Pornelos', 'edward.corbes.pornelos@gmail.com', NULL, '2023-05-08 18:40:57', 'rfWXCq-qcu_Dean.png');

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
(1, 2, 20, 'BSIT', 0, '2023-04-12 01:50:27', '2023-04-12 01:50:27'),
(2, 2, 1, 'BSIT', 0, '2023-04-13 13:08:51', '2023-04-13 13:08:51'),
(3, 2, 26, 'BSIT', 0, '2023-04-21 13:28:17', '2023-04-21 13:28:17');

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
(69, 4),
(70, 4),
(71, 4),
(72, 4),
(73, 4),
(75, 4),
(76, 4);

-- --------------------------------------------------------

--
-- Table structure for table `room_db`
--

CREATE TABLE `room_db` (
  `id` int(11) NOT NULL,
  `room` varchar(255) DEFAULT NULL,
  `room_floor` varchar(45) DEFAULT NULL,
  `Device` int(12) NOT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `room_db`
--

INSERT INTO `room_db` (`id`, `room`, `room_floor`, `Device`, `updated_at`, `created_at`) VALUES
(2, 'Room1', '1st floor', 1, NULL, NULL),
(3, 'Room2', '1st floor', 2, NULL, NULL),
(4, 'Room3', '2nd floor', 2, NULL, NULL);

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

-- --------------------------------------------------------

--
-- Table structure for table `schedule_setup`
--

CREATE TABLE `schedule_setup` (
  `id` int(11) NOT NULL,
  `facultyID` varchar(255) DEFAULT NULL,
  `subjectID` int(11) DEFAULT NULL,
  `week_no` int(11) DEFAULT NULL,
  `type` varchar(45) DEFAULT NULL,
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
(33, 'FAC-000000002', 14, 15, 'Onsite', '2023-05-13', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry', 'Room3', 'Room2', '09:59:00 AM - 10:59:00 AM', '11:50:00 AM - 11:51:00 AM', 1, 'San Bartolome', 0, 0, 0, '2023-04-12 05:02:52', '2023-04-12 05:02:52'),
(47, 'FAC-000000003', 21, 11, 'Onsite', '2023-05-13', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry', 'Room4', 'Room2', '09:59:00 AM - 10:59:00 AM', '11:50:00 AM - 11:51:00 AM', 1, 'San Bartolome', 0, 0, 0, '2023-04-16 10:04:59', '2023-04-16 10:04:59'),
(108, 'FAC-000000004', 21, 18, 'Onsite', '2023-05-13', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry', 'Room2', 'Room1', '09:59:00 AM - 10:59:00 AM', '11:50:00 AM - 11:51:00 AM', 1, 'San Bartolome', 0, 0, 0, '2023-04-26 14:30:39', '2023-04-26 14:30:39'),
(271, 'FAC-000000023', 14, 18, 'Onsite', '2023-05-13', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry', 'Room2', 'Room3', '09:59:00 AM - 10:59:00 AM', '11:50:00 AM - 11:51:00 AM', 1, 'San Bartolome', 0, 0, 0, '2023-04-26 14:30:39', '2023-04-26 14:30:39'),
(272, 'FAC-000000003', 14, 11, 'Onsite', '2023-05-13', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry', 'Room3', 'Room1', '09:59:00 AM - 10:59:00 AM', '11:50:00 AM - 11:51:00 AM', 1, 'San Bartolome', 0, 0, 0, '2023-04-16 10:04:59', '2023-04-16 10:04:59'),
(273, 'FAC-000000002', 21, 15, 'Onsite', '2023-05-13', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry', 'Room3', 'Room2', '09:59:00 AM - 10:59:00 AM', '11:50:00 AM - 11:51:00 AM', 1, 'San Bartolome', 0, 0, 0, '2023-04-12 05:02:52', '2023-04-12 05:02:52');

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
  `signature` varchar(225) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `secretary`
--

INSERT INTO `secretary` (`id`, `secID`, `empID`, `userID`, `departmentID`, `sec_firstname`, `sec_middlename`, `sec_lastname`, `sec_email`, `created_at`, `updated_at`, `signature`) VALUES
(1, 'SEC-000000001', 'EMP-000000005', 5, 0, 'Chedrik', 'L.', 'Rowy', 'boyetpatuti1@gmail.com', NULL, '2023-05-08 19:05:28', 'DcqyiW-qcu_Admin Assistant.png');

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
(3, 'SEC-000000001', 5, 3, 'FAC-000000002', 'Nm3A', '2023-04-28 03:42:05', '2023-04-28 03:42:05'),
(4, 'SEC-000000001', 5, 4, 'FAC-000000002', 'yMO1', '2023-05-01 07:03:04', '2023-05-01 07:03:04'),
(5, 'SEC-000000001', 5, 5, 'FAC-000000002', 'z8G0', '2023-05-05 10:14:55', '2023-05-05 10:14:55'),
(92, 'SEC-000000001', 5, 92, 'FAC-000000002', 'TYJU', '2023-05-07 20:12:39', '2023-05-07 20:12:39'),
(93, 'SEC-000000001', 5, 93, 'FAC-000000002', 'GoT6', '2023-05-08 04:05:44', '2023-05-08 04:05:44'),
(94, 'SEC-000000001', 5, 94, 'FAC-000000002', 'YWKr', '2023-05-08 04:29:47', '2023-05-08 04:29:47'),
(95, 'SEC-000000001', 5, 95, 'FAC-000000002', 'k0nl', '2023-05-08 04:33:18', '2023-05-08 04:33:18');

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
  `id` int(12) NOT NULL,
  `Device` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `type_of_camera`
--

INSERT INTO `type_of_camera` (`id`, `Device`) VALUES
(1, 'Scanner'),
(2, 'Monitor');

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
(2, 'EMP-000000002', 'Edmark Pornelos', 'qcu_Dean', 'edward.corbes.pornelos@gmail.com', NULL, NULL, NULL, '$2y$10$KiPW3g/dl8FnX9E5SYSa8ui/wgH7oogK23df3M6jJfavPy1.tusci', NULL, '2022-11-20 01:40:32', '2023-04-23 13:50:24', 0, 'default.jpg', 0, NULL),
(3, 'EMP-000000003', 'Jade Olosoro', 'qcu_HR', 'jade.delima.oloroso@gmail.com', NULL, NULL, NULL, '$2y$10$Q9W2ph7jjXVYQULg9ZF8qOklkKgaJHt69v/phL1d/VVlE.ZWz5o5O', '7rIAu9Onpn79Jf5G242TvBqdhajWjcYaxj1Lqj3biPttCC5hyfqkazvY84n1', '2022-11-20 01:41:10', '2023-04-21 12:24:25', 1, 'default.jpg', 0, NULL),
(4, 'EMP-000000004', 'JC Pablicio', 'qcu_student', 'jcp-qcu@gmail.com', NULL, NULL, NULL, '$2y$10$.dMv32JQGEVxutwcOsMJweDvv.a137bOGutL/0ileLkFK72M6c2ti', NULL, '2022-11-20 01:53:02', '2022-11-20 01:53:02', 0, 'default.jpg', 0, NULL),
(5, 'EMP-000000005', 'Chedrick Rowy', 'qcu_Admin Assistant', 'edwardpornelos@gmail.com', NULL, NULL, NULL, '$2y$10$Fla/RbxxaDae21bM22Y1mebPKAYrFowCbgic.yquUSWc06EDd6U3.', NULL, '2022-11-20 04:58:40', '2023-04-21 12:58:39', 0, 'default.jpg', 0, NULL),
(60, 'EMP-000000060', 'Sample Chairman Sample Chairman', 'qcu_Program Chair', 'edmarkjan332@gmail.com', NULL, NULL, NULL, '$2y$10$BMKt20CPHrvJIZlO/iGZU.m7Un31BwTePtr4W5zZZgugIS.bib6BW', NULL, '2023-02-19 02:26:48', '2023-04-21 12:44:14', 0, 'default.jpg', 0, NULL),
(68, 'EMP-000000068', 'Edward Pornelos', 'faculty_Pornelos', 'pornelos13@gmail.com', NULL, NULL, NULL, '$2y$10$nvCLN1ck60sQQy4M8nmaZ.PwK5WRSyPZRn4WHZg4OXRidCzjJxvrO', NULL, '2023-04-12 01:50:50', '2023-04-26 05:54:21', 0, 'ov43z9-faculty_Pornelos.jpg', 0, NULL),
(69, 'EMP-000000069', 'John Michel Sarmiento', 'faculty_Sarmiento', 'jhon.michel.romero.sarmiento@gmail.com', NULL, NULL, NULL, '$2y$10$q12XjmfC/sE7w4GpfkJZPuTHz5Tm1rWuFNrt1Mis1HgO.wAgs0wOK', NULL, '2023-04-13 13:09:22', '2023-04-16 10:20:47', 0, 'default.jpg', 0, NULL),
(70, 'EMP-000000070', 'Sample Prof2 Sample Prof2', 'faculty_Sample Prof2', 'sample2@gmail.com', NULL, NULL, NULL, '$2y$10$WORRyjLpWqF9u9s.vEXyreoKVo0Cqu44OsiqGnkvgge1a0gfa/Zsa', NULL, '2023-04-21 13:29:35', '2023-04-26 14:24:37', 0, 'default.jpg', 0, NULL),
(71, 'EMP-000000071', 'Sample Sample', NULL, 'Sample@gmail.com', NULL, NULL, NULL, '$2y$10$qynZoQaSNyUd7TnRe1BhuuuxFN4rLHnEZax7wqJmynOchRzGyCSsK', NULL, '2023-05-04 11:22:55', '2023-05-04 11:22:55', 0, 'default.jpg', 0, NULL),
(72, 'EMP-000000072', 'Bona Bona', 'Faculty_Bona', 'christine.joy.dumadigo.bona@gmail.com', NULL, NULL, NULL, '$2y$10$v3BWCy14zZwu5O2nyGTu/uXwE2D2axOp.zQu8sECSxhxmUDKVVMSq', NULL, '2023-05-04 12:18:25', '2023-05-04 12:18:25', 0, 'default.jpg', 0, NULL),
(73, 'EMP-000000073', 'Ate Cla Pacetes', 'Faculty_Pacetes', 'clarissapacetes98@gmail.com', NULL, NULL, NULL, '$2y$10$MEcQMZRPHSeVCG/aR2q0TOx37v/09OM3GjezJQOSH9wOWlM3BZfra', NULL, '2023-05-05 07:01:46', '2023-05-08 21:18:03', 0, 'default.jpg', 0, NULL),
(75, 'EMP-000000075', 'Sample Sample', 'Faculty_Sample', 'Sample1@gmail.com', NULL, NULL, NULL, '$2y$10$Apa/AvaPOj42937VNdym7.dWl/rb5uwpuz5ClY.S8h1c6N0WKN6/m', NULL, '2023-05-05 09:53:21', '2023-05-05 09:53:21', 0, 'default.jpg', 0, NULL),
(76, 'EMP-000000076', 'Testing Account', 'Faculty_Account', 'TestingAccount@gmail.com', NULL, NULL, NULL, '$2y$10$piXFC6IpPSH9SmP6WaDiKuAYNe6WDJoUa3MWKDYtGlW3VPOZyGImq', NULL, '2023-05-08 20:06:37', '2023-05-08 20:06:37', 0, 'default.jpg', 0, NULL);

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
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

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
  ADD PRIMARY KEY (`id`);

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `attendance`
--
ALTER TABLE `attendance`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT for table `attendance_attachments`
--
ALTER TABLE `attendance_attachments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=174;

--
-- AUTO_INCREMENT for table `chairman`
--
ALTER TABLE `chairman`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `ch_faculty_reports`
--
ALTER TABLE `ch_faculty_reports`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `compiled_report`
--
ALTER TABLE `compiled_report`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `employees`
--
ALTER TABLE `employees`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=111;

--
-- AUTO_INCREMENT for table `faculty`
--
ALTER TABLE `faculty`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `faculty_subject_schedule`
--
ALTER TABLE `faculty_subject_schedule`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=121;

--
-- AUTO_INCREMENT for table `faculty_weekly_class`
--
ALTER TABLE `faculty_weekly_class`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `forgot_password`
--
ALTER TABLE `forgot_password`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `fwc_notes`
--
ALTER TABLE `fwc_notes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `fwc_remarks`
--
ALTER TABLE `fwc_remarks`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `fwc_status`
--
ALTER TABLE `fwc_status`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `grouped_reports`
--
ALTER TABLE `grouped_reports`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=96;

--
-- AUTO_INCREMENT for table `hr`
--
ALTER TABLE `hr`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `hr_faculty_reports`
--
ALTER TABLE `hr_faculty_reports`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=96;

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `request_access_faculty`
--
ALTER TABLE `request_access_faculty`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `schedule_faculty`
--
ALTER TABLE `schedule_faculty`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `schedule_remarks`
--
ALTER TABLE `schedule_remarks`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `schedule_setup`
--
ALTER TABLE `schedule_setup`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=274;

--
-- AUTO_INCREMENT for table `secretary`
--
ALTER TABLE `secretary`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `section`
--
ALTER TABLE `section`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `sec_faculty_reports`
--
ALTER TABLE `sec_faculty_reports`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=96;

--
-- AUTO_INCREMENT for table `subject`
--
ALTER TABLE `subject`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=58;

--
-- AUTO_INCREMENT for table `type_of_camera`
--
ALTER TABLE `type_of_camera`
  MODIFY `id` int(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=80;

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
