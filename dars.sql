-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Dec 10, 2018 at 07:52 AM
-- Server version: 10.1.37-MariaDB
-- PHP Version: 7.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `dars`
--
CREATE DATABASE IF NOT EXISTS `dars` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `dars`;

-- --------------------------------------------------------

--
-- Table structure for table `admission`
--

DROP TABLE IF EXISTS `admission`;
CREATE TABLE `admission` (
  `cadmission_id` varchar(255) NOT NULL,
  `dadmission_year` year(4) NOT NULL,
  `csemester_id` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admission`
--

INSERT INTO `admission` (`cadmission_id`, `dadmission_year`, `csemester_id`) VALUES
('autumn2015', 2015, 'autumn'),
('autumn2016', 2016, 'autumn'),
('autumn2017', 2017, 'autumn'),
('autumn2018', 2018, 'autumn'),
('spring2015', 2015, 'spring'),
('spring2016', 2016, 'spring'),
('spring2017', 2017, 'spring'),
('spring2018', 2018, 'spring'),
('summer2015', 2015, 'summer'),
('summer2016', 2016, 'summer'),
('summer2017', 2017, 'summer'),
('summer2018', 2018, 'summer');

-- --------------------------------------------------------

--
-- Table structure for table `major`
--

DROP TABLE IF EXISTS `major`;
CREATE TABLE `major` (
  `cmajor_id` varchar(255) NOT NULL,
  `cmajor_name` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `major`
--

INSERT INTO `major` (`cmajor_id`, `cmajor_name`) VALUES
('B. Arch', 'Bachelor of Science in Architecture'),
('BA ENG', 'Bachelor of Arts in English'),
('BA SOC', 'Bachelor Arts in Sociology'),
('BBA General', 'Bachelor of Business Administration in General'),
('BBA_ACT', 'Bachelor of Business Administration in Accounting'),
('BBA_ECO', 'Bachelor of Business Administration in Economics'),
('BBA_ENT', 'Bachelor of Business Administration in Entrance'),
('BBA_FIN', 'Bachelor of Business Administration in Finance'),
('BBA_HRM', 'Bachelor of Business Administration in Human Resource Management'),
('BBA_IB', 'Bachelor of Business Administration in International Business'),
('BBA_MGT', 'Bachelor of Business Administration in Management'),
('BBA_MIS', 'Bachelor of Business Administration in Management Information Systems'),
('BBA_MKT', 'Bachelor of Business Administration in Marketing'),
('BBA_SCM', 'Bachelor of Business Administration in Supply Chain Management '),
('BC CS', 'Bachelor of Science in Computer Science'),
('BS Bichem', 'Bachelor of Science in Biochemistry'),
('BS Civil', 'Bachelor of Science in Civil Engineering'),
('BS CSE', 'Bachelor of Science in Computer Science and Engineering'),
('BS ECO', 'Bachelor of Science in Economics'),
('BS EEE', 'Bachelor of Science in Electrical and Electronic Engineering'),
('BS ENV MGT', 'Bachelor of Science in Environmental Science and Management'),
('BS ENV SCI', 'Bachelor of Science in Environmental Science'),
('BS ETE', 'Bachelor of Science in Electronic & Telecommunication Engineering'),
('BS Mic', 'Bachelor of Science in Microbiology'),
('LLB', 'Bachelor of Law'),
('PHRM_PROF', 'MPharm in Pharmaceutical');

-- --------------------------------------------------------

--
-- Table structure for table `offeredmajor`
--

DROP TABLE IF EXISTS `offeredmajor`;
CREATE TABLE `offeredmajor` (
  `cmajor_id` varchar(255) NOT NULL,
  `cschool_id` varchar(255) NOT NULL,
  `cuni_id` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `offeredmajor`
--

INSERT INTO `offeredmajor` (`cmajor_id`, `cschool_id`, `cuni_id`) VALUES
('B. Arch', 'nsu_seps', 'nsu'),
('BA ENG', 'ewu_flass', 'ewu'),
('BA ENG', 'iub_slass', 'iub'),
('BA ENG', 'nsu_shss', 'nsu'),
('BA SOC', 'ewu_flass', 'ewu'),
('BA SOC', 'iub_slass', 'iub'),
('BA_ANT', 'iub_slass', 'iub'),
('BA_ENG_LIT', 'iub_slass', 'iub'),
('BBA General', 'nsu_sbe', 'nsu'),
('BBA_ACT', 'ewu_fbe', 'ewu'),
('BBA_ACT', 'iub_sb', 'iub'),
('BBA_ACT', 'nsu_sbe', 'nsu'),
('BBA_ECO', 'ewu_fbe', 'ewu'),
('BBA_ECO', 'iub_sb', 'iub'),
('BBA_ECO', 'nsu_sbe', 'nsu'),
('BBA_FIN', 'ewu_fbe', 'ewu'),
('BBA_FIN', 'iub_sb', 'iub'),
('BBA_FIN', 'nsu_sbe', 'nsu'),
('BBA_GM', 'ewu_fbe', 'ewu'),
('BBA_GM', 'iub_sb', 'iub'),
('BBA_GM', 'nsu_sbe', 'nsu'),
('BBA_HRM', 'ewu_fbe', 'ewu'),
('BBA_HRM', 'iub_sb', 'iub'),
('BBA_IB', 'ewu_fbe', 'ewu'),
('BBA_IB', 'iub_sb', 'iub'),
('BBA_IB', 'nsu_sbe', 'nsu'),
('BBA_MIS', 'ewu_fbe', 'ewu'),
('BBA_MIS', 'iub_sb', 'iub'),
('BBA_MKT', 'ewu_fbe', 'ewu'),
('BBA_MKT', 'iub_sb', 'iub'),
('BBA_MKT', 'nsu_sbe', 'nsu'),
('BC CS', 'iub_secs', 'iub'),
('BS Bichem', 'nsu_shls', 'nsu'),
('BS Civil', 'ewu_fse', 'ewu'),
('BS Civil', 'nsu_seps', 'nsu'),
('BS CSE', 'ewu_fse', 'ewu'),
('BS CSE', 'iub_secs', 'iub'),
('BS CSE', 'nsu_seps', 'nsu'),
('BS EEE', 'ewu_fse', 'ewu'),
('BS EEE', 'iub_secs', 'iub'),
('BS EEE', 'nsu_seps', 'nsu'),
('BS ENV SCI', 'iub_sesm', 'iub'),
('BS ETE', 'ewu_fse', 'ewu'),
('BS ETE', 'iub_secs', 'iub'),
('BS ETE', 'nsu_seps', 'nsu'),
('BS Mic', 'nsu_shls', 'nsu'),
('BSS_ISLM', 'ewu_flass', 'ewu'),
('BSS_M_CMN', 'iub_slass', 'iub'),
('BS_APP_STAT', 'ewu_fse', 'ewu'),
('BS_CEN', 'iub_secs', 'iub'),
('BS_ENV_MGMT', 'iub_sesm', 'iub'),
('BS_ENV_SCI_MGT', 'nsu_shls', 'nsu'),
('BS_GEB', 'ewu_fse', 'ewu'),
('BS_ICE', 'ewu_fse', 'ewu'),
('BS_MATH', 'iub_sls', 'iub'),
('BS_PHY', 'iub_sls', 'iub'),
('B_PHARM', 'ewu_fse', 'ewu'),
('B_PHARM', 'iub_sls', 'iub'),
('B_PHARM', 'nsu_shls', 'nsu'),
('LLB', 'ewu_flass', 'ewu'),
('LLB', 'iub_slass', 'iub'),
('LLB', 'nsu_shss', 'nsu');

-- --------------------------------------------------------

--
-- Table structure for table `school`
--

DROP TABLE IF EXISTS `school`;
CREATE TABLE `school` (
  `cschool_id` varchar(255) NOT NULL,
  `csch_name` varchar(255) DEFAULT NULL,
  `cuni_id` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `school`
--

INSERT INTO `school` (`cschool_id`, `csch_name`, `cuni_id`) VALUES
('brac_sb', 'School of Business', 'bracu'),
('brac_secs', 'School of Engineering and Computer Science', 'bracu'),
('brac_sl', 'School of Law', 'bracu'),
('ewu_fbe', 'Faculty of Business and Economics', 'ewu'),
('ewu_flass', 'Faculty of Liberal Arts and Social Sciences', 'ewu'),
('ewu_fse', 'Faculty of Science and Engineering', 'ewu'),
('iub_sb', 'School of Business', 'iub'),
('iub_secs', 'School of Engineering & Computer Science', 'iub'),
('iub_sesm', 'School of Environmental Science & Management', 'iub'),
('iub_slass', 'School of Liberal Arts & Social Sciences', 'iub'),
('iub_sls', 'School of Life Sciences', 'iub'),
('nsu_sbe', 'School of Business & Economics', 'nsu'),
('nsu_seps', 'School of Engineering & Physical Sciences', 'nsu'),
('nsu_shls', 'School of Health & Life Sciences', 'nsu'),
('nsu_shss', 'School of Humanities & Social Sciences', 'nsu');

-- --------------------------------------------------------

--
-- Table structure for table `semester`
--

DROP TABLE IF EXISTS `semester`;
CREATE TABLE `semester` (
  `csemester_id` varchar(255) NOT NULL,
  `csemester_name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `semester`
--

INSERT INTO `semester` (`csemester_id`, `csemester_name`) VALUES
('autumn', 'Autumn'),
('spring', 'Spring'),
('summer', 'Summer');

-- --------------------------------------------------------

--
-- Table structure for table `student`
--

DROP TABLE IF EXISTS `student`;
CREATE TABLE `student` (
  `cstu_id` varchar(255) NOT NULL,
  `cmajor_id` varchar(255) DEFAULT NULL,
  `cuni_id` varchar(255) NOT NULL,
  `cadmission_id` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `university`
--

DROP TABLE IF EXISTS `university`;
CREATE TABLE `university` (
  `cuni_id` varchar(255) NOT NULL,
  `cuni_name` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `university`
--

INSERT INTO `university` (`cuni_id`, `cuni_name`) VALUES
('bracu', 'Brac University'),
('ewu', 'East West University'),
('iub', 'Independent University Bangladesh'),
('nsu', 'North South University');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `cuser_id` varchar(255) NOT NULL,
  `cpsw_hash` varchar(255) NOT NULL,
  `cuser_name` varchar(255) NOT NULL,
  `cuser_group_id` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`cuser_id`, `cpsw_hash`, `cuser_name`, `cuser_group_id`) VALUES
('fahim', 'cd9d379715cccc83fd8c8c2dc0730c6dd081bd35', 'Fahim Ferdous', 'admin'),
('rafikhan', 'd3d0379126c1e5e0ba70ad6e5e53ff6aeab9f4fa', 'Rafi Khan', 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `user_group`
--

DROP TABLE IF EXISTS `user_group`;
CREATE TABLE `user_group` (
  `cuser_group_id` varchar(255) NOT NULL,
  `cuser_group_name` varchar(255) NOT NULL,
  `cuser_group_module` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user_group`
--

INSERT INTO `user_group` (`cuser_group_id`, `cuser_group_name`, `cuser_group_module`) VALUES
('admin', 'Administrator', 'ALL'),
('deo', 'Data Entry Operator', 'INSERT'),
('fac', 'Faculty', 'VIEW');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admission`
--
ALTER TABLE `admission`
  ADD PRIMARY KEY (`cadmission_id`),
  ADD KEY `FK` (`csemester_id`);

--
-- Indexes for table `major`
--
ALTER TABLE `major`
  ADD PRIMARY KEY (`cmajor_id`);

--
-- Indexes for table `offeredmajor`
--
ALTER TABLE `offeredmajor`
  ADD PRIMARY KEY (`cmajor_id`,`cschool_id`,`cuni_id`);

--
-- Indexes for table `school`
--
ALTER TABLE `school`
  ADD PRIMARY KEY (`cschool_id`);

--
-- Indexes for table `semester`
--
ALTER TABLE `semester`
  ADD PRIMARY KEY (`csemester_id`);

--
-- Indexes for table `student`
--
ALTER TABLE `student`
  ADD PRIMARY KEY (`cstu_id`),
  ADD KEY `FK3` (`cadmission_id`);

--
-- Indexes for table `university`
--
ALTER TABLE `university`
  ADD PRIMARY KEY (`cuni_id`),
  ADD KEY `cuni_id` (`cuni_id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`cuser_id`),
  ADD KEY `US1` (`cuser_group_id`);

--
-- Indexes for table `user_group`
--
ALTER TABLE `user_group`
  ADD PRIMARY KEY (`cuser_group_id`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `student`
--
ALTER TABLE `student`
  ADD CONSTRAINT `student_ibfk_1` FOREIGN KEY (`cadmission_id`) REFERENCES `admission` (`cadmission_id`);

--
-- Constraints for table `user`
--
ALTER TABLE `user`
  ADD CONSTRAINT `US1` FOREIGN KEY (`cuser_group_id`) REFERENCES `user_group` (`cuser_group_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
