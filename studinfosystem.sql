-- phpMyAdmin SQL Dump
-- version 4.8.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 18, 2020 at 12:54 PM
-- Server version: 10.1.32-MariaDB
-- PHP Version: 7.2.5

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `studinfosystem`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `fname` varchar(255) NOT NULL,
  `lname` varchar(255) NOT NULL,
  `user` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `confirmpassword` varchar(255) NOT NULL,
  `Position` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `fname`, `lname`, `user`, `password`, `confirmpassword`, `Position`) VALUES
(1, 'king', 'cadayona', 'kingcadayona@yahoo.com', 'a5bbd1049863ceb59ada6d22f8019764', 'a5bbd1049863ceb59ada6d22f8019764', 'ADMIN'),
(4, 'Jean lucrice', 'Vallejos', 'Lucrice@yahoo.com', '81dc9bdb52d04dc20036dbd8313ed055', '81dc9bdb52d04dc20036dbd8313ed055', 'CLIENT'),
(5, 'jude', 'suarez', 'jude@yahoo.com', '202cb962ac59075b964b07152d234b70', '202cb962ac59075b964b07152d234b70', 'ADMIN'),
(6, 'jude', 'reyes', 'jude@gmail.com', '202cb962ac59075b964b07152d234b70', '202cb962ac59075b964b07152d234b70', 'CLIENT'),
(7, 'jub', 'kill', 'jubee@yahoo.com', '81dc9bdb52d04dc20036dbd8313ed055', '81dc9bdb52d04dc20036dbd8313ed055', 'CLIENT'),
(8, 'test', 'test', 'test@gmail.com', '81dc9bdb52d04dc20036dbd8313ed055', '81dc9bdb52d04dc20036dbd8313ed055', 'CLIENT'),
(9, 'CHAHYAANDIDA', 'ISHAYA', 'ISHAYAC@HOTMAIL.COM', 'admin123', 'admin123', 'ADMIN'),
(10, 'admin', 'admin', 'admin@example.com', '0192023a7bbd73250516f069df18b500', '0192023a7bbd73250516f069df18b500', 'CLIENT');

-- --------------------------------------------------------

--
-- Table structure for table `applicants`
--

CREATE TABLE `applicants` (
  `APPLICATION_ID` int(11) NOT NULL,
  `STUDENT_ID` int(11) NOT NULL,
  `COURSE` varchar(255) NOT NULL,
  `CGPA` float NOT NULL,
  `REASON` varchar(255) NOT NULL,
  `SESSION1` varchar(11) NOT NULL,
  `imagepath` varchar(255) NOT NULL,
  `imagepath1` varchar(255) NOT NULL,
  `FIRST_NAME` varchar(255) NOT NULL,
  `LAST_NAME` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `applicants`
--

INSERT INTO `applicants` (`APPLICATION_ID`, `STUDENT_ID`, `COURSE`, `CGPA`, `REASON`, `SESSION1`, `imagepath`, `imagepath1`, `FIRST_NAME`, `LAST_NAME`) VALUES
(2, 2, 'BioChem', 1, 'test', '20182019', 'imageupload/13406925_117052888719892_4549615348463657706_n.jpg', 'imageupload/', '', ''),
(5, 3, 'csc', 1, 'trial', '20172018', 'imageupload/201801041630271007.jpg', 'imageupload/', '', ''),
(6, 1, 'Accounting', 1.4, 'Low Performance', '20182019', 'imageupload/IMG_20170630_181903.jpg', 'imageupload/24177019_1375840049192093_1716214015588185116_n.jpg', '', ''),
(7, 6, 'Geography', 0.8, 'Low Performance', '20192020', 'imageupload/IMG_20170630_181903.jpg', 'imageupload/24177019_1375840049192093_1716214015588185116_n.jpg', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `course`
--

CREATE TABLE `course` (
  `COURSE_ID` int(50) NOT NULL,
  `NAME` varchar(50) NOT NULL,
  `DESCRIPTION` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `course`
--

INSERT INTO `course` (`COURSE_ID`, `NAME`, `DESCRIPTION`) VALUES
(23, 'BSIT', 'Bachelor of Science in Information Technology'),
(24, 'BSBA', 'Bachelor Of Science in Business Administration '),
(25, 'BSED', 'Bachelor of Secondary Education'),
(26, 'BSCRIM', 'Bachelor of Science in Criminology');

-- --------------------------------------------------------

--
-- Table structure for table `level`
--

CREATE TABLE `level` (
  `level_id` int(11) NOT NULL,
  `year_level` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `level`
--

INSERT INTO `level` (`level_id`, `year_level`) VALUES
(1, '1st year'),
(2, '2nd year'),
(3, '3rd year'),
(4, '4th year');

-- --------------------------------------------------------

--
-- Table structure for table `schedule`
--

CREATE TABLE `schedule` (
  `schedule_id` int(11) NOT NULL,
  `DAY` varchar(255) NOT NULL,
  `START_TIME` varchar(255) NOT NULL,
  `END_TIME` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `schedule`
--

INSERT INTO `schedule` (`schedule_id`, `DAY`, `START_TIME`, `END_TIME`) VALUES
(45467, '2019-03-12', '06:59', '12:00'),
(45468, '2019-03-01', '07:10', '3:59'),
(45469, '2019-06-14', '04:52', '3:00'),
(45470, '2019-03-07', '12:30', '5:00'),
(45471, '2019-03-13', '12:00', '4:00'),
(45472, '2019-03-08', '02:00', '8:00');

-- --------------------------------------------------------

--
-- Table structure for table `section`
--

CREATE TABLE `section` (
  `SECTION_ID` varchar(10) NOT NULL,
  `NAME` varchar(50) NOT NULL,
  `COURSE_ID` varchar(50) NOT NULL,
  `SCHEDULE_ID` int(11) NOT NULL,
  `INSTRUCTION_ID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `section`
--

INSERT INTO `section` (`SECTION_ID`, `NAME`, `COURSE_ID`, `SCHEDULE_ID`, `INSTRUCTION_ID`) VALUES
('1', 'Jude De la cruz', 'BSBA 2-1', 10, 20),
('2', 'Prince Lee', 'BSIT 2-2', 11, 21),
('3', 'Mon Christian Mendoza', 'BSCRIM 1-2', 12, 22);

-- --------------------------------------------------------

--
-- Table structure for table `student`
--

CREATE TABLE `student` (
  `STUDENT_ID` int(11) NOT NULL,
  `FIRST_NAME` varchar(255) NOT NULL,
  `LAST_NAME` varchar(255) NOT NULL,
  `EMAIL` varchar(255) NOT NULL,
  `ADDRESS1` varchar(255) NOT NULL,
  `PHONE_NUMBER` varchar(255) NOT NULL,
  `LGA` varchar(255) NOT NULL,
  `STATE1` varchar(255) NOT NULL,
  `NATIONALITY` varchar(255) NOT NULL,
  `GENDER` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `student`
--

INSERT INTO `student` (`STUDENT_ID`, `FIRST_NAME`, `LAST_NAME`, `EMAIL`, `ADDRESS1`, `PHONE_NUMBER`, `LGA`, `STATE1`, `NATIONALITY`, `GENDER`) VALUES
(1, 'golfa', 'Mesuna', 'example@gmail.com', 'Mubi', '07039844154', 'Yola', 'Adamawa', 'Naija', 'Male'),
(2, 'Abigail', 'Enock', 'example@gmail.com', 'Hong', '07012345678', 'Mubi', 'Gombe', 'Naija', 'Female'),
(3, 'Ishaya', 'Biyama', 'try@gg.com', 'jung', '09012345678', 'Gom', 'tachala', 'zambia', 'Male'),
(6, 'Enock', 'ISHAYA', 'email@example.com', 'Demsa', '08143171712', 'Demsa', 'Adamawa', 'Nigeria', 'Male');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `applicants`
--
ALTER TABLE `applicants`
  ADD PRIMARY KEY (`APPLICATION_ID`),
  ADD KEY `applicants_ibfk_1` (`STUDENT_ID`);

--
-- Indexes for table `course`
--
ALTER TABLE `course`
  ADD PRIMARY KEY (`COURSE_ID`);

--
-- Indexes for table `level`
--
ALTER TABLE `level`
  ADD PRIMARY KEY (`level_id`);

--
-- Indexes for table `schedule`
--
ALTER TABLE `schedule`
  ADD PRIMARY KEY (`schedule_id`);

--
-- Indexes for table `section`
--
ALTER TABLE `section`
  ADD PRIMARY KEY (`SECTION_ID`) USING BTREE;

--
-- Indexes for table `student`
--
ALTER TABLE `student`
  ADD PRIMARY KEY (`STUDENT_ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `applicants`
--
ALTER TABLE `applicants`
  MODIFY `APPLICATION_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `course`
--
ALTER TABLE `course`
  MODIFY `COURSE_ID` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `level`
--
ALTER TABLE `level`
  MODIFY `level_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `schedule`
--
ALTER TABLE `schedule`
  MODIFY `schedule_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=45473;

--
-- AUTO_INCREMENT for table `student`
--
ALTER TABLE `student`
  MODIFY `STUDENT_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `applicants`
--
ALTER TABLE `applicants`
  ADD CONSTRAINT `applicants_ibfk_1` FOREIGN KEY (`STUDENT_ID`) REFERENCES `student` (`STUDENT_ID`) ON DELETE NO ACTION ON UPDATE NO ACTION;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
