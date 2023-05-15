-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 15, 2023 at 07:04 AM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `attendancemsystem`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbladmin`
--

CREATE TABLE `tbladmin` (
  `Id` int(10) NOT NULL,
  `firstName` varchar(50) NOT NULL,
  `lastName` varchar(50) NOT NULL,
  `emailAddress` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tbladmin`
--

INSERT INTO `tbladmin` (`Id`, `firstName`, `lastName`, `emailAddress`, `password`) VALUES
(1, 'Admin', 'HOD', 'naveenelango018@gmail.com', 'D00F5D5217896FB7FD601412CB890830');

-- --------------------------------------------------------

--
-- Table structure for table `tblattendance`
--

CREATE TABLE `tblattendance` (
  `Id` int(10) NOT NULL,
  `admissionNo` varchar(255) NOT NULL,
  `classId` varchar(10) NOT NULL,
  `classArmId` varchar(10) NOT NULL,
  `sessionTermId` varchar(10) NOT NULL,
  `status` varchar(10) NOT NULL,
  `dateTimeTaken` varchar(20) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tblattendance`
--

INSERT INTO `tblattendance` (`Id`, `admissionNo`, `classId`, `classArmId`, `sessionTermId`, `status`, `dateTimeTaken`) VALUES
(293, '19ec020', '5', '12', '4', '0', '2023-05-15'),
(292, '19ec017', '5', '12', '4', '1', '2023-05-15'),
(291, '19ec021', '5', '12', '4', '0', '2023-05-15'),
(290, '19ec026', '5', '12', '4', '1', '2023-05-15'),
(289, '19ec018', '5', '12', '4', '1', '2023-05-15'),
(288, '19ec023', '5', '12', '4', '0', '2023-05-15'),
(287, '19ec013', '5', '12', '4', '0', '2023-05-15'),
(286, '45', '5', '12', '4', '0', '2023-05-15'),
(285, '19ec002', '5', '12', '4', '0', '2023-05-15'),
(284, '12', '5', '12', '4', '1', '2023-05-15'),
(283, '19ec020', '5', '12', '4', '0', '2023-05-12'),
(282, '19ec017', '5', '12', '4', '1', '2023-05-12'),
(281, '19ec021', '5', '12', '4', '0', '2023-05-12'),
(280, '19ec026', '5', '12', '4', '1', '2023-05-12'),
(279, '19ec018', '5', '12', '4', '1', '2023-05-12'),
(278, '19ec023', '5', '12', '4', '0', '2023-05-12'),
(277, '19ec013', '5', '12', '4', '0', '2023-05-12'),
(276, '45', '5', '12', '4', '0', '2023-05-12'),
(275, '19ec002', '5', '12', '4', '0', '2023-05-12'),
(274, '12', '5', '12', '4', '1', '2023-05-12'),
(273, '19ec020', '5', '12', '4', '0', '2023-05-11'),
(272, '19ec017', '5', '12', '4', '1', '2023-05-11'),
(271, '19ec021', '5', '12', '4', '0', '2023-05-11'),
(270, '19ec026', '5', '12', '4', '1', '2023-05-11'),
(269, '19ec018', '5', '12', '4', '1', '2023-05-11'),
(268, '19ec023', '5', '12', '4', '1', '2023-05-11'),
(267, '19ec013', '5', '12', '4', '1', '2023-05-11'),
(259, '19ec018', '5', '12', '4', '1', '2023-05-10'),
(260, '19ec026', '5', '12', '4', '1', '2023-05-10'),
(261, '19ec021', '5', '12', '4', '0', '2023-05-10'),
(262, '19ec017', '5', '12', '4', '1', '2023-05-10'),
(263, '19ec020', '5', '12', '4', '0', '2023-05-10'),
(264, '12', '5', '12', '4', '1', '2023-05-11'),
(265, '19ec002', '5', '12', '4', '1', '2023-05-11'),
(266, '45', '5', '12', '4', '1', '2023-05-11'),
(254, '12', '5', '12', '4', '1', '2023-05-10'),
(255, '19ec002', '5', '12', '4', '1', '2023-05-10'),
(256, '45', '5', '12', '4', '1', '2023-05-10'),
(257, '19ec013', '5', '12', '4', '1', '2023-05-10'),
(258, '19ec023', '5', '12', '4', '1', '2023-05-10');

-- --------------------------------------------------------

--
-- Table structure for table `tblclass`
--

CREATE TABLE `tblclass` (
  `Id` int(10) NOT NULL,
  `className` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tblclass`
--

INSERT INTO `tblclass` (`Id`, `className`) VALUES
(1, 'I'),
(3, 'II'),
(4, 'III'),
(5, 'IV');

-- --------------------------------------------------------

--
-- Table structure for table `tblclassarms`
--

CREATE TABLE `tblclassarms` (
  `Id` int(10) NOT NULL,
  `classId` varchar(10) NOT NULL,
  `classArmName` varchar(255) NOT NULL,
  `isAssigned` varchar(10) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tblclassarms`
--

INSERT INTO `tblclassarms` (`Id`, `classId`, `classArmName`, `isAssigned`) VALUES
(12, '5', 'ECE', '1'),
(10, '4', 'ECE', '0'),
(8, '3', 'ECE', '1'),
(7, '1', 'ECE', '0');

-- --------------------------------------------------------

--
-- Table structure for table `tblclassteacher`
--

CREATE TABLE `tblclassteacher` (
  `Id` int(10) NOT NULL,
  `firstName` varchar(255) NOT NULL,
  `lastName` varchar(255) NOT NULL,
  `emailAddress` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `phoneNo` varchar(50) NOT NULL,
  `classId` varchar(10) NOT NULL,
  `classArmId` varchar(10) NOT NULL,
  `dateCreated` varchar(50) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tblclassteacher`
--

INSERT INTO `tblclassteacher` (`Id`, `firstName`, `lastName`, `emailAddress`, `password`, `phoneNo`, `classId`, `classArmId`, `dateCreated`) VALUES
(10, 'Naveen', 'Elango', 'naveen123@gmail.com', '32250170a0dca92d53ec9624f336ca24', '+916379080998', '3', '8', '2023-05-09'),
(9, 'SACHINCHARLES', 'AROKKIYASAMY', 'sachinglarance@gmail.com', '32250170a0dca92d53ec9624f336ca24', '+916379080998', '5', '12', '2023-05-09');

-- --------------------------------------------------------

--
-- Table structure for table `tblsessionterm`
--

CREATE TABLE `tblsessionterm` (
  `Id` int(10) NOT NULL,
  `sessionName` varchar(50) NOT NULL,
  `termId` varchar(50) NOT NULL,
  `isActive` varchar(10) NOT NULL,
  `dateCreated` varchar(50) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tblsessionterm`
--

INSERT INTO `tblsessionterm` (`Id`, `sessionName`, `termId`, `isActive`, `dateCreated`) VALUES
(4, '2019/2023', '8', '1', '2023-05-08');

-- --------------------------------------------------------

--
-- Table structure for table `tblstudents`
--

CREATE TABLE `tblstudents` (
  `Id` int(10) NOT NULL,
  `firstName` varchar(255) NOT NULL,
  `lastName` varchar(255) NOT NULL,
  `otherName` varchar(255) NOT NULL,
  `admissionNumber` varchar(255) NOT NULL,
  `password` varchar(50) NOT NULL,
  `classId` varchar(10) NOT NULL,
  `classArmId` varchar(10) NOT NULL,
  `dateCreated` varchar(50) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tblstudents`
--

INSERT INTO `tblstudents` (`Id`, `firstName`, `lastName`, `otherName`, `admissionNumber`, `password`, `classId`, `classArmId`, `dateCreated`) VALUES
(44, '44', '44', '44', '44', '12345', '3', '8', '2023-05-15'),
(43, '33', '33', '333', '333', '12345', '3', '8', '2023-05-09'),
(42, '222', '2222', '222', '222', '12345', '1', '7', '2023-05-09'),
(41, '11', '111', '111', '111', '12345', '3', '8', '2023-05-09'),
(39, '123', '123', '12', '12', '12345', '5', '12', '2023-05-09'),
(38, 'gddtyv', 'vghcgc', 'mhvuvsuydcbs', ' bvgvcuysvcdus', '12345', '4', '10', '2023-05-09'),
(36, 'Boobalan', 'Vellaiyan', 'None', '19ec002', '12345', '5', '12', '2023-05-09'),
(40, '456', '456', '45', '45', '12345', '5', '12', '2023-05-09'),
(34, 'Karthick', 'Jeyaraj', 'None', '19ec013', '12345', '5', '12', '2023-05-09'),
(35, 'Sathish', 'Loganathan', 'None', '19ec023', '12345', '5', '12', '2023-05-09'),
(33, 'Poovarasan', 'Natarajan', 'None', '19ec018', '12345', '5', '12', '2023-05-09'),
(32, 'Shankar ', 'Magesh', 'None', '19ec026', '12345', '5', '12', '2023-05-09'),
(31, 'Saranprabhakaran', 'Ramani', 'None', '19ec021', '12345', '5', '12', '2023-05-09'),
(30, 'Naveen', 'Elango', 'None', '19ec017', '12345', '5', '12', '2023-05-09'),
(29, 'SACHINCHARLES', 'AROKKIYASAMY', 'None', '19ec020', '12345', '5', '12', '2023-05-09');

-- --------------------------------------------------------

--
-- Table structure for table `tblterm`
--

CREATE TABLE `tblterm` (
  `Id` int(10) NOT NULL,
  `termName` varchar(20) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tblterm`
--

INSERT INTO `tblterm` (`Id`, `termName`) VALUES
(1, 'First'),
(2, 'Second'),
(3, 'Third'),
(4, 'Fourth'),
(5, 'Fifth'),
(6, 'Sixth'),
(7, 'Seventh'),
(8, 'Eighth');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbladmin`
--
ALTER TABLE `tbladmin`
  ADD PRIMARY KEY (`Id`);

--
-- Indexes for table `tblattendance`
--
ALTER TABLE `tblattendance`
  ADD PRIMARY KEY (`Id`);

--
-- Indexes for table `tblclass`
--
ALTER TABLE `tblclass`
  ADD PRIMARY KEY (`Id`);

--
-- Indexes for table `tblclassarms`
--
ALTER TABLE `tblclassarms`
  ADD PRIMARY KEY (`Id`);

--
-- Indexes for table `tblclassteacher`
--
ALTER TABLE `tblclassteacher`
  ADD PRIMARY KEY (`Id`);

--
-- Indexes for table `tblsessionterm`
--
ALTER TABLE `tblsessionterm`
  ADD PRIMARY KEY (`Id`);

--
-- Indexes for table `tblstudents`
--
ALTER TABLE `tblstudents`
  ADD PRIMARY KEY (`Id`);

--
-- Indexes for table `tblterm`
--
ALTER TABLE `tblterm`
  ADD PRIMARY KEY (`Id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbladmin`
--
ALTER TABLE `tbladmin`
  MODIFY `Id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tblattendance`
--
ALTER TABLE `tblattendance`
  MODIFY `Id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=294;

--
-- AUTO_INCREMENT for table `tblclass`
--
ALTER TABLE `tblclass`
  MODIFY `Id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `tblclassarms`
--
ALTER TABLE `tblclassarms`
  MODIFY `Id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `tblclassteacher`
--
ALTER TABLE `tblclassteacher`
  MODIFY `Id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `tblsessionterm`
--
ALTER TABLE `tblsessionterm`
  MODIFY `Id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `tblstudents`
--
ALTER TABLE `tblstudents`
  MODIFY `Id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=45;

--
-- AUTO_INCREMENT for table `tblterm`
--
ALTER TABLE `tblterm`
  MODIFY `Id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
