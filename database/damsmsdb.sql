-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 11, 2022 at 07:08 PM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 7.4.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `damsmsdb`
--

-- --------------------------------------------------------

--
-- Table structure for table `tblappointment`
--

CREATE TABLE `tblappointment` (
  `ID` int(10) NOT NULL,
  `AppointmentNumber` int(10) DEFAULT NULL,
  `Name` varchar(250) DEFAULT NULL,
  `MobileNumber` bigint(20) DEFAULT NULL,
  `Email` varchar(250) DEFAULT NULL,
  `AppointmentDate` date DEFAULT NULL,
  `AppointmentTime` time DEFAULT NULL,
  `Specialization` varchar(250) DEFAULT NULL,
  `Doctor` int(10) DEFAULT NULL,
  `Message` mediumtext DEFAULT NULL,
  `ApplyDate` timestamp NULL DEFAULT current_timestamp(),
  `Remark` varchar(250) DEFAULT NULL,
  `Status` varchar(250) DEFAULT NULL,
  `UpdationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblappointment`
--

INSERT INTO `tblappointment` (`ID`, `AppointmentNumber`, `Name`, `MobileNumber`, `Email`, `AppointmentDate`, `AppointmentTime`, `Specialization`, `Doctor`, `Message`, `ApplyDate`, `Remark`, `Status`, `UpdationDate`) VALUES
(1, 141561395, 'Rajesh', 989, 'raj@gmail.com', '2022-11-12', '12:41:00', '2', 2, 'I need appointment', '2022-11-10 06:11:50', 'Cancelled due to incorrect mobile number', 'Cancelled', '2025-02-25 12:40:35');


-- --------------------------------------------------------

--
-- Table structure for table `tbldoctor`
--

CREATE TABLE `tbldoctor` (
  `ID` int(5) NOT NULL,
  `FullName` varchar(250) DEFAULT NULL,
  `MobileNumber` bigint(10) DEFAULT NULL,
  `Email` varchar(250) DEFAULT NULL,
  `Specialization` varchar(250) DEFAULT NULL,
  `Password` varchar(259) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbldoctor`
--

INSERT INTO `tbldoctor` (`ID`, `FullName`, `MobileNumber`, `Email`, `Specialization`, `Password`) VALUES
(1, 'Dr.Parthiban', 9787979798, 'parthiban@gmail.com', '1', 'parthiban123'),
(2, 'Dr.Nantha kumar', 6464654646, 'nantha@gmail.com', '2', 'nantha123'),
(3, 'Dr.Sweatha', 6521478354, 'Sweatha@gmail.com', '5', 'sweatha123'),
(4, 'Dr.Guru', 9354275130, 'guru@gmail.com', '3', 'guru123'),
(5, 'Dr.Murugan', 8806524782, 'murugan@gmail.com', '4', 'murugan123'),
(6, 'Dr.Ram', 9445763215, 'ram@gmail.com', '6', 'ram123'),
(7, 'Dr.Kumar', 9925743586, 'kumar@gmail.com', '7', 'kumar123'),
(8, 'Dr.Rajaraman', 9425769315, 'rajaraman@gmail.com', '8', 'rajaraman123'),
(9, 'Dr.Moorthy', 87445326551, 'moorthy@gmail.com', '9', 'moorthy123'),
(10, 'Dr.Giri', 9658743215, 'giri@gmail.com', '10', 'giri123');

-- --------------------------------------------------------

--
-- Table structure for table `tblpage`
--

CREATE TABLE `tblpage` (
  `ID` int(10) NOT NULL,
  `PageType` varchar(200) DEFAULT NULL,
  `PageTitle` mediumtext DEFAULT NULL,
  `PageDescription` mediumtext DEFAULT NULL,
  `Email` varchar(200) DEFAULT NULL,
  `MobileNumber` bigint(10) DEFAULT NULL,
  `UpdationDate` date DEFAULT NULL,
  `Timing` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblpage`
--

INSERT INTO `tblpage` (`ID`, `PageType`, `PageTitle`, `PageDescription`, `Email`, `MobileNumber`, `UpdationDate`, `Timing`) VALUES
(1, 'aboutus', 'About Us', '<div><font color=\"#202124\" face=\"arial, sans-serif\"><b>Our mission declares,we are committed to providing a user-friendly, efficient, and secure platform for managing medical appointments. We strive to improve the healthcare experience for patients, reduce administrative burdens for healthcare providers, and promote better health outcomes.</b></font></div>', NULL, NULL, NULL, ''),
(2, 'contactus', 'Contact Us', '7,V.O.C Main Street,Kaalavasal,Madurai', 'medconnect@gmail.com', 7896541239, NULL, '24/7');

-- --------------------------------------------------------

--
-- Table structure for table `tblspecialization`
--

CREATE TABLE `tblspecialization` (
  `ID` int(5) NOT NULL,
  `Specialization` varchar(250) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblspecialization`
--

INSERT INTO `tblspecialization` (`ID`, `Specialization`) VALUES
(1, 'Orthopedics - Diagnosis and treatment of musculoskeletal disorders (bones, joints, muscles)'),
(2, ' Nephrology - Diagnosis and treatment of kidney disorders'),
(3, 'Urology - Diagnosis and treatment of urinary tract disorders'),
(4, ' Pediatrics - Medical care for infants, children, and adolescents'),
(5, "Obstetrics and Gynecology - Medical care for women's reproductive health"),
(6, 'Radiology - Use of medical imaging technologies (X-ray, CT, MRI, etc.) for diagnosis'),
(7, 'Dermatology - Diagnosis and treatment of skin disorders'),
(8, 'Ophthalmology - Diagnosis and treatment of eye disorders'),
(9, 'ENT (Ear, Nose, and Throat) - Diagnosis and treatment of ear, nose, and throat disorders'),
(10, 'Pulmonology - Diagnosis and treatment of lung disorders');


--
-- Indexes for dumped tables
--

--
-- Indexes for table `tblappointment`
--
ALTER TABLE `tblappointment`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `tbldoctor`
--
ALTER TABLE `tbldoctor`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `tblpage`
--
ALTER TABLE `tblpage`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `tblspecialization`
--
ALTER TABLE `tblspecialization`
  ADD PRIMARY KEY (`ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tblappointment`
--
ALTER TABLE `tblappointment`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `tbldoctor`
--
ALTER TABLE `tbldoctor`
  MODIFY `ID` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `tblpage`
--
ALTER TABLE `tblpage`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tblspecialization`
--
ALTER TABLE `tblspecialization`
  MODIFY `ID` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
