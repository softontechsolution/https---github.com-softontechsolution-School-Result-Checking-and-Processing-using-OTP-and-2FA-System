-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Sep 03, 2022 at 10:38 AM
-- Server version: 10.4.21-MariaDB
-- PHP Version: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `fpn_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `calculationtbl`
--

CREATE TABLE `calculationtbl` (
  `sn` int(100) NOT NULL,
  `mark` varchar(100) NOT NULL,
  `letter_grade` varchar(2) NOT NULL,
  `point_grade` varchar(10) NOT NULL,
  `final_cgpa` varchar(100) NOT NULL,
  `degree_class` varchar(100) NOT NULL,
  `date_created` date NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `calculationtbl`
--

INSERT INTO `calculationtbl` (`sn`, `mark`, `letter_grade`, `point_grade`, `final_cgpa`, `degree_class`, `date_created`) VALUES
(1, '100-80', 'A', '4.00', '3.50-4.00', 'Distinction', '2022-08-28'),
(2, '79-70', 'AB', '3.50', '3.00-3.49', 'Upper Credit', '2022-08-28'),
(3, '69-60', 'B', '3.00', '2.50-2.99', 'Lower Credit', '2022-08-28'),
(4, '59-50', 'BC', '2.50', '2.00-2.49', 'Pass', '2022-08-28'),
(5, '49-40', 'C', '2.00', '0.00 – 1.99', 'Fail', '2022-08-28'),
(6, '39 - 0', 'E', '00.00', '', '', '2022-08-28');

-- --------------------------------------------------------

--
-- Table structure for table `coursetbl`
--

CREATE TABLE `coursetbl` (
  `sn` int(100) NOT NULL,
  `c_title` varchar(255) NOT NULL,
  `c_code` varchar(100) NOT NULL,
  `c_unit` int(100) NOT NULL,
  `level` varchar(100) NOT NULL,
  `semester` varchar(100) NOT NULL,
  `date_created` date NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `coursetbl`
--

INSERT INTO `coursetbl` (`sn`, `c_title`, `c_code`, `c_unit`, `level`, `semester`, `date_created`) VALUES
(2, 'Operating System I', 'COM311', 3, 'HND1', 'First Semester', '2022-08-28'),
(3, 'Database Design I', 'COM312', 3, 'HND1', 'First Semester', '2022-08-28'),
(4, 'Computer Programming Using C++', 'COM313', 4, 'HND1', 'First Semester', '2022-08-28'),
(5, 'Computer Architecture', 'COM314', 3, 'HND1', 'First Semester', '2022-08-28'),
(6, 'Operations Research I', 'STA314', 2, 'HND1', 'First Semester', '2022-08-28'),
(7, 'Statistics Theory I', 'STA311', 2, 'HND1', 'First Semester', '2022-08-28'),
(8, 'Use of English', 'OTM315', 2, 'HND1', 'First Semester', '2022-08-28'),
(9, 'Entrepreneurship Development', 'EED316', 2, 'HND1', 'First Semester', '2022-08-28'),
(10, 'Operating System II', 'COM321', 3, 'HND1', 'Second Semester', '2022-08-28'),
(11, 'Database Design II', 'COM322', 3, 'HND1', 'Second Semester', '2022-08-28'),
(12, 'Assembly Language', 'COM323', 4, 'HND1', 'Second Semester', '2022-08-28'),
(13, 'Introduction to Software Engineering', 'COM324', 3, 'HND1', 'Second Semester', '2022-08-28'),
(14, 'Introduction to Human Computer Interface(HCI)', 'COM326', 3, 'HND1', 'Second Semester', '2022-08-28'),
(15, 'Visual Basic Programming Language', 'COM327', 3, 'HND1', 'Second Semester', '2022-08-28'),
(16, 'Statistics Theory II', 'COM325', 2, 'HND1', 'Second Semester', '2022-08-28'),
(17, 'Communication in English', 'GNS321', 2, 'HND1', 'Second Semester', '2022-08-28'),
(18, 'Entrepreneurship Development Practical', 'EED326', 2, 'HND1', 'Second Semester', '2022-08-28'),
(19, 'Computer Programming (JAVA)', 'COM412', 4, 'HND2', 'First Semester', '2022-08-28'),
(20, 'Project Management', 'COM413', 3, 'HND2', 'First Semester', '2022-08-28'),
(21, 'Compiler Construction', 'COM414', 3, 'HND2', 'First Semester', '2022-08-28'),
(22, 'Data Communication and Networks', 'COM415', 3, 'HND2', 'First Semester', '2022-08-28'),
(23, 'Multimedia', 'COM416', 2, 'HND2', 'First Semester', '2022-08-28'),
(24, 'Operations Research II', 'STA411', 2, 'HND2', 'First Semester', '2022-08-28'),
(25, 'Research Methodology', 'COM417', 2, 'HND2', 'First Semester', '2022-08-28'),
(26, 'Advance Web Programming (PHP)', 'COM418', 3, 'HND2', 'First Semester', '2022-08-28'),
(27, 'Entrepreneurship Development', 'EED416', 2, 'HND2', 'First Semester', '2022-08-28'),
(28, 'Communication in English', 'GNS412', 2, 'HND2', 'First Semester', '2022-08-28'),
(29, 'Computer Programming (OO PASCAL)', 'COM421', 4, 'HND2', 'Second Semester', '2022-08-28'),
(30, 'Computer Graphics and Animation', 'COM422', 5, 'HND2', 'Second Semester', '2022-08-28'),
(31, 'Introduction to AI & Expert System', 'COM423', 5, 'HND2', 'Second Semester', '2022-08-28'),
(32, 'Professional Practice in IT', 'COM424', 4, 'HND2', 'Second Semester', '2022-08-28'),
(33, 'Seminar on Current Topics in Computing ', 'COM425', 2, 'HND2', 'Second Semester', '2022-08-28'),
(34, 'Small Business Start Up', 'COM426', 2, 'HND2', 'Second Semester', '2022-08-28'),
(35, 'Computer System Performance Evaluation', 'COM427', 2, 'HND2', 'Second Semester', '2022-08-28'),
(36, 'Project', 'COM429', 6, 'HND2', 'Second Semester', '2022-08-28'),
(37, 'Computer Programming Using (OO BASIC)', 'COM211', 3, 'ND2', 'First Semester', '2021-01-01'),
(38, 'Introduction to System Programming', 'COM212', 3, 'ND2', 'First Semester', '2021-01-01'),
(39, 'Commercial Programming Using OO COBOL', 'COM213', 3, 'ND2', 'First Semester', '2021-01-01'),
(40, 'File Organization and Management', 'COM214', 2, 'ND2', 'First Semester', '2021-01-01'),
(41, 'Computer Package II', 'COM215', 3, 'ND2', 'First Semester', '2021-01-01'),
(42, 'Computer System Troubleshooting I', 'COM216', 3, 'ND2', 'First Semester', '2021-01-01'),
(43, 'Use of English II', 'GNS217', 2, 'ND2', 'First Semester', '2021-01-01'),
(44, 'Technical Report', 'COM217', 2, 'ND2', 'First Semester', '2021-01-01'),
(45, 'Entrepreneurship Development Practical', 'EED216', 2, 'ND2', 'First Semester', '2021-01-01'),
(46, 'Commercial Programming Using OO FORTRAN', 'COM221', 3, 'ND2', 'Second Semester', '2021-01-01'),
(47, 'Seminar on Computer and Society', 'COM222', 2, 'ND2', 'Second Semester', '2021-01-01'),
(48, 'Basic Hardware Maintenance', 'COM223', 3, 'ND2', 'Second Semester', '2021-01-01'),
(49, 'Management Information System', 'COM224', 3, 'ND2', 'Second Semester', '2021-01-01'),
(50, 'Web Technology', 'COM225', 3, 'ND2', 'Second Semester', '2021-01-01'),
(51, 'Computer System Troubleshooting II', 'COM226', 3, 'ND2', 'Second Semester', '2021-01-01'),
(52, 'Project', 'COM229', 4, 'ND2', 'Second Semester', '2021-01-01'),
(53, 'Small Business Start Up', 'STA226', 2, 'ND2', 'Second Semester', '2021-01-01'),
(54, 'SIWES', 'ITF121', 4, 'ND2', 'Second Semester', '2021-01-01'),
(55, 'Entrepreneurship Development Practical', 'EED226', 2, 'ND2', 'Second Semester', '2021-01-01'),
(56, 'Introduction to Computing', 'COM101', 2, 'ND1', 'First Semester', '2021-01-01'),
(57, 'Introduction to Digital Electronics', 'COM112', 3, 'ND1', 'First Semester', '2021-01-01'),
(58, 'Introduction to Programming (BASIC)', 'COM113', 3, 'ND1', 'First Semester', '2021-01-01'),
(59, 'Descriptive Statistics I', 'STA111', 3, 'ND1', 'First Semester', '2021-01-01'),
(60, 'Elementary Probability Theory', 'STA112', 2, 'ND1', 'First Semester', '2021-01-01'),
(61, 'Logic and Linear Algebra', 'MTH111', 2, 'ND1', 'First Semester', '2021-01-01'),
(62, 'Functions and Geometry', 'MTH112', 3, 'ND1', 'First Semester', '2021-01-01'),
(63, 'Use of English', 'GNS111', 2, 'ND1', 'First Semester', '2021-01-01'),
(64, 'Citizenship Education I', 'GNS127', 2, 'ND1', 'First Semester', '2021-01-01'),
(65, 'Entrepreneurship Development', 'EED116', 2, 'ND1', 'First Semester', '2021-01-01'),
(66, 'Scientific Programming Language (Java)', 'COM121', 4, 'ND1', 'Second Semester', '2021-01-01'),
(67, 'Introduction to the Internet', 'COM122', 2, 'ND1', 'Second Semester', '2021-01-01'),
(68, 'Computer Application Package I', 'COM123', 4, 'ND1', 'Second Semester', '2021-01-01'),
(69, 'Data Structure and  Algorithm ', 'COM124', 4, 'ND1', 'Second Semester', '2021-01-01'),
(70, 'Introduction to System Analysis', 'COM125', 3, 'ND1', 'Second Semester', '2021-01-01'),
(71, 'PC Upgrade & Maintenance', 'COM126', 5, 'ND1', 'Second Semester', '2021-01-01'),
(72, 'Citizenship Education II', 'GNS128', 2, 'ND1', 'Second Semester', '2021-01-01'),
(73, 'Communication in English', 'GNS121', 2, 'ND1', 'Second Semester', '2021-01-01'),
(74, 'Library Science Education', 'GNS101', 1, 'ND1', 'Second Semester', '2021-01-01'),
(75, 'Entrepreneurship Development Practical', 'EED126', 2, 'ND1', 'Second Semester', '2021-01-01');

-- --------------------------------------------------------

--
-- Table structure for table `cumulativetbl`
--

CREATE TABLE `cumulativetbl` (
  `sn` int(100) NOT NULL,
  `reg_no` varchar(255) NOT NULL,
  `first_semester` varchar(100) DEFAULT NULL,
  `second_semester` varchar(100) DEFAULT NULL,
  `third_semester` varchar(100) DEFAULT NULL,
  `fourth_semester` varchar(100) DEFAULT NULL,
  `total` varchar(100) DEFAULT NULL,
  `date_created` date NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `cumulativetbl`
--

INSERT INTO `cumulativetbl` (`sn`, `reg_no`, `first_semester`, `second_semester`, `third_semester`, `fourth_semester`, `total`, `date_created`) VALUES
(1, 'FPN/HND/18/008', '3.89', '4.0', '4', '4', NULL, '2022-08-29'),
(2, 'FPN/HND/18/009', NULL, NULL, NULL, NULL, NULL, '2022-08-29'),
(3, 'FPN/ND/18/002', NULL, NULL, NULL, NULL, NULL, '2022-08-29');

-- --------------------------------------------------------

--
-- Table structure for table `lecturertbl`
--

CREATE TABLE `lecturertbl` (
  `sn` int(100) NOT NULL,
  `e_id` varchar(100) NOT NULL,
  `fullname` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(100) NOT NULL,
  `phone` varchar(100) NOT NULL,
  `department` varchar(255) NOT NULL,
  `school` varchar(255) NOT NULL,
  `level` varchar(100) NOT NULL,
  `date_created` date NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `lecturertbl`
--

INSERT INTO `lecturertbl` (`sn`, `e_id`, `fullname`, `email`, `password`, `phone`, `department`, `school`, `level`, `date_created`) VALUES
(2, 'EID2021/009', 'Dr. Marcus Wilson', 'drmacus@gmail.com', '123456', '07039117165', 'Computer Science', 'Technology', '10', '2022-08-25');

-- --------------------------------------------------------

--
-- Table structure for table `score_sheet`
--

CREATE TABLE `score_sheet` (
  `sn` int(100) NOT NULL,
  `reg_no` varchar(255) NOT NULL,
  `c_title` varchar(255) NOT NULL,
  `c_code` varchar(100) NOT NULL,
  `first_asses` int(100) NOT NULL,
  `second_asses` int(100) NOT NULL,
  `exam` int(100) NOT NULL,
  `total` int(100) NOT NULL,
  `grade_letter` varchar(2) NOT NULL,
  `grade_point` varchar(100) NOT NULL,
  `total_point` varchar(100) NOT NULL,
  `level` varchar(100) NOT NULL,
  `semester` varchar(100) NOT NULL,
  `date_created` date NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `score_sheet`
--

INSERT INTO `score_sheet` (`sn`, `reg_no`, `c_title`, `c_code`, `first_asses`, `second_asses`, `exam`, `total`, `grade_letter`, `grade_point`, `total_point`, `level`, `semester`, `date_created`) VALUES
(3, 'FPN/HND/18/008', 'Computer Programming (OO PASCAL)', 'COM421', 10, 13, 75, 98, 'A', '4.0', '16.0', 'HND2', 'Second Semester', '2022-08-28'),
(4, 'FPN/HND/18/008', 'Computer Graphics and Animation', 'COM422', 9, 15, 68, 92, 'A', '4.0', '20.0', 'HND2', 'Second Semester', '2022-08-28'),
(5, 'FPN/HND/18/008', 'Introduction to AI & Expert System', 'COM423', 8, 13, 65, 86, 'A', '4.0', '20.0', 'HND2', 'Second Semester', '2022-08-28'),
(6, 'FPN/HND/18/008', 'Professional Practice in IT', 'COM424', 8, 15, 68, 91, 'A', '4.0', '16.0', 'HND2', 'Second Semester', '2022-08-28'),
(7, 'FPN/HND/18/008', 'Seminar on Current Topics in Computing ', 'COM425', 14, 14, 65, 93, 'A', '4.0', '8.0', 'HND2', 'Second Semester', '2022-08-28'),
(8, 'FPN/HND/18/008', 'Small Business Start Up', 'COM426', 14, 14, 65, 93, 'A', '4.0', '8.0', 'HND2', 'Second Semester', '2022-08-28'),
(9, 'FPN/HND/18/008', 'Computer System Performance Evaluation', 'COM427', 15, 15, 68, 98, 'A', '4.0', '8.0', 'HND2', 'Second Semester', '2022-08-28'),
(10, 'FPN/HND/18/008', 'Project', 'COM429', 15, 15, 70, 100, 'A', '4.0', '24.0', 'HND2', 'Second Semester', '2022-08-28');

-- --------------------------------------------------------

--
-- Table structure for table `studenttbl`
--

CREATE TABLE `studenttbl` (
  `sn` int(100) NOT NULL,
  `reg_no` varchar(255) NOT NULL,
  `fullname` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `level` varchar(100) NOT NULL,
  `dept` varchar(255) NOT NULL,
  `sch` varchar(255) NOT NULL,
  `date_created` date NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `studenttbl`
--

INSERT INTO `studenttbl` (`sn`, `reg_no`, `fullname`, `email`, `password`, `level`, `dept`, `sch`, `date_created`) VALUES
(1, 'FPN/COM/18/008', 'Ibrahim Umar', 'umar@gmail.com', 'jsongz', 'HND2', 'COMPUTER SCIENCE', 'SCHOOL OF INFORMATION TECHNOLOGY', '2022-08-26'),
(2, 'FPN/COM/18/010', 'Joshua Emmanuel', 'josh@gmail.com', 'josh', 'HND2', 'SCIENCE LABORATORY TECHNOLOGY', 'SCHOOL OF APPLIED SCIENCES', '2022-08-26'),
(3, 'FPN/COM/18/009', 'Samuel Love Nas', 'sam@gmail.com', '1234', 'HND2', 'COMPUTER SCIENCE', 'SCHOOL OF INFORMATION TECHNOLOGY', '2021-01-01'),
(4, 'FPN/COM/18/001', 'John Mathew', 'john@gmail.com', '1234', 'HND2', 'COMPUTER SCIENCE', 'SCHOOL OF INFORMATION TECHNOLOGY', '2021-01-01'),
(5, 'FPN/COM/18/002', 'Bella Timothy', 'bella@gmail.com', '1234', 'HND2', 'COMPUTER SCIENCE', 'SCHOOL OF INFORMATION TECHNOLOGY', '2022-08-28'),
(6, 'FPN/COM/18/003', 'Adaobi Timothy O.', 'ada@gmail.com', '1234', 'HND2', 'COMPUTER SCIENCE', 'SCHOOL OF INFORMATION TECHNOLOGY', '2022-08-28'),
(7, 'FPN/COM/18/004', 'Ezekiel Oma Ruben', 'oma@gmail.com', '1234', 'HND2', 'COMPUTER SCIENCE', 'SCHOOL OF INFORMATION TECHNOLOGY', '2022-08-28'),
(8, 'FPN/COM/18/005', 'Prince Ogala', 'prince@gmail.com', '1234', 'HND2', 'COMPUTER SCIENCE', 'SCHOOL OF INFORMATION TECHNOLOGY', '2022-08-28'),
(9, 'FPN/COM/18/006', 'Shedrack Lantan', 'shedrack@gmail.com', '1234', 'HND2', 'COMPUTER SCIENCE', 'SCHOOL OF INFORMATION TECHNOLOGY', '2022-08-28'),
(10, 'FPN/COM/18/009', 'Mary James Henry', 'mary@gmail.com', '1234', 'HND2', 'COMPUTER SCIENCE', 'SCHOOL OF INFORMATION TECHNOLOGY', '2022-08-28'),
(11, 'FPN/COM/18/011', 'Racheal Rueben Enyo', 'enyo@gmail.com', '1234', 'HND2', 'COMPUTER SCIENCE', 'SCHOOL OF INFORMATION TECHNOLOGY', '2022-08-28'),
(12, 'FPN/ND/18/002', 'Joshua Emmanuel', 'joe@gmail.com', '1234', 'ND2', 'COMPUTER SCIENCE', 'SCHOOL OF INFORMATION TECHNOLOGY', '2022-08-29');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `calculationtbl`
--
ALTER TABLE `calculationtbl`
  ADD PRIMARY KEY (`sn`);

--
-- Indexes for table `coursetbl`
--
ALTER TABLE `coursetbl`
  ADD PRIMARY KEY (`sn`);

--
-- Indexes for table `cumulativetbl`
--
ALTER TABLE `cumulativetbl`
  ADD PRIMARY KEY (`sn`);

--
-- Indexes for table `lecturertbl`
--
ALTER TABLE `lecturertbl`
  ADD PRIMARY KEY (`sn`);

--
-- Indexes for table `score_sheet`
--
ALTER TABLE `score_sheet`
  ADD PRIMARY KEY (`sn`);

--
-- Indexes for table `studenttbl`
--
ALTER TABLE `studenttbl`
  ADD PRIMARY KEY (`sn`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `calculationtbl`
--
ALTER TABLE `calculationtbl`
  MODIFY `sn` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `coursetbl`
--
ALTER TABLE `coursetbl`
  MODIFY `sn` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=76;

--
-- AUTO_INCREMENT for table `cumulativetbl`
--
ALTER TABLE `cumulativetbl`
  MODIFY `sn` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `lecturertbl`
--
ALTER TABLE `lecturertbl`
  MODIFY `sn` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `score_sheet`
--
ALTER TABLE `score_sheet`
  MODIFY `sn` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `studenttbl`
--
ALTER TABLE `studenttbl`
  MODIFY `sn` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
