-- phpMyAdmin SQL Dump
-- version 4.2.12deb2+deb8u2
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Feb 24, 2018 at 06:24 PM
-- Server version: 5.5.59-0+deb8u1
-- PHP Version: 5.6.33-0+deb8u1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `ENSE470`
--

-- --------------------------------------------------------

--
-- Table structure for table `ApprovalComments`
--

CREATE TABLE IF NOT EXISTS `ApprovalComments` (
  `comment_pk` int(11) NOT NULL,
  `request_pk` int(11) NOT NULL,
  `approver_pk` int(11) NOT NULL,
  `approver_comments` varchar(255) NOT NULL,
  `approver_decision` varchar(255) NOT NULL,
  `created_on` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `modified_on` timestamp NULL DEFAULT NULL,
  `deleted_on` timestamp NULL DEFAULT NULL,
  `next_comment_pk` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `Employees`
--

CREATE TABLE IF NOT EXISTS `Employees` (
`employee_id` int(11) NOT NULL,
  `employee_first_name` varchar(255) NOT NULL,
  `employee_middle_name` varchar(255) NOT NULL,
  `employee_last_name` varchar(255) NOT NULL,
  `employee_name_prefix` varchar(255) NOT NULL,
  `employee_job_title` varchar(255) NOT NULL,
  `employee_phone` varchar(255) NOT NULL,
  `employee_email` varchar(255) NOT NULL,
  `created_on` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `modified_on` timestamp NULL DEFAULT NULL,
  `deleted_on` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=75 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `Employees`
--

INSERT INTO `Employees` (`employee_id`, `employee_first_name`, `employee_middle_name`, `employee_last_name`, `employee_name_prefix`, `employee_job_title`, `employee_phone`, `employee_email`, `created_on`, `modified_on`, `deleted_on`) VALUES
(1, 'Chester', '', 'Field', '', '', '', '', '2018-02-20 21:04:53', NULL, NULL),
(2, 'Ida', '', 'Claire', '', '', '', '', '2018-02-20 21:04:53', NULL, NULL),
(3, 'Amanda', '', 'Huginkiss', '', '', '', '', '2018-02-20 21:04:53', NULL, NULL),
(4, 'Les', '', 'Wynan', '', '', '', '', '2018-02-20 21:04:53', NULL, NULL),
(5, 'Tara', '', 'Dactyl', '', '', '', '', '2018-02-20 21:04:53', NULL, NULL),
(6, 'Claire', '', 'Voyant', '', '', '', '', '2018-02-20 21:04:53', NULL, NULL),
(7, 'Will', '', 'Tickelu', '', '', '', '', '2018-02-20 21:04:53', NULL, NULL),
(8, 'Polly', '', 'Graff', '', '', '', '', '2018-02-20 21:04:53', NULL, NULL),
(9, 'Stan', '', 'Dupp', '', '', '', '', '2018-02-20 21:04:53', NULL, NULL),
(10, 'Gene', '', 'Pool', '', '', '', '', '2018-02-20 21:04:53', NULL, NULL),
(11, 'Neil', '', 'Down', '', '', '', '', '2018-02-20 21:04:53', NULL, NULL),
(12, 'Brock', '', 'Lee', '', '', '', '', '2018-02-20 21:04:53', NULL, NULL),
(13, 'Dot', '', 'Matricks', '', '', '', '', '2018-02-20 21:04:53', NULL, NULL),
(14, 'Goldie', '', 'Locke', '', '', '', '', '2018-02-20 21:04:53', NULL, NULL),
(15, 'Ally', '', 'Katz', '', '', '', '', '2018-02-20 21:04:53', NULL, NULL),
(16, 'Leah', '', 'Tarde', '', '', '', '', '2018-02-20 21:04:53', NULL, NULL),
(17, 'Crisp', 'P.', 'Bacon', 'Dr.', '', '', '', '2018-02-20 21:04:53', NULL, NULL),
(18, 'Sue', '', 'Flay', '', '', '', '', '2018-02-20 21:04:53', NULL, NULL),
(19, 'Derry', '', 'Yare', '', '', '', '', '2018-02-20 21:04:53', NULL, NULL),
(20, 'Krystal', '', 'Ball', '', '', '', '', '2018-02-20 21:04:53', NULL, NULL),
(21, 'Honey', '', 'Potts', '', '', '', '', '2018-02-20 21:04:53', NULL, NULL),
(22, 'Seymore', '', 'Butts', '', '', '', '', '2018-02-20 21:04:53', NULL, NULL),
(23, 'Bud', '', 'Light', '', '', '', '', '2018-02-20 21:04:53', NULL, NULL),
(24, 'Filet', '', 'Minyon', '', '', '', '', '2018-02-20 21:04:53', NULL, NULL),
(25, 'Robyn', '', 'Banks', '', '', '', '', '2018-02-20 21:04:53', NULL, NULL),
(26, 'Dyl', '', 'Pickel', '', '', '', '', '2018-02-20 21:04:53', NULL, NULL),
(27, 'Paige', '', 'Turner', '', '', '', '', '2018-02-20 21:04:53', NULL, NULL),
(28, 'Jed', 'I.', 'Knight', 'Dr.', '', '', '', '2018-02-20 21:04:53', NULL, NULL),
(29, 'Justin', '', 'Case', '', '', '', '', '2018-02-20 21:04:53', NULL, NULL),
(30, 'Pea', '', 'Pu', '', '', '', '', '2018-02-20 21:04:53', NULL, NULL),
(31, 'Crystal', '', 'Ball', '', '', '', '', '2018-02-20 21:04:53', NULL, NULL),
(32, 'Al', '', 'Dente', '', '', '', '', '2018-02-20 21:04:53', NULL, NULL),
(33, 'Douglas', '', 'Furr', '', '', '', '', '2018-02-20 21:04:53', NULL, NULL),
(34, 'Biff', '', 'Wellington', '', '', '', '', '2018-02-20 21:04:53', NULL, NULL),
(35, 'Art', '', 'Dekko', '', '', '', '', '2018-02-20 21:04:53', NULL, NULL),
(36, 'Clay', '', 'Potts', '', '', '', '', '2018-02-20 21:04:53', NULL, NULL),
(37, 'Al', '', 'Falfa', '', '', '', '', '2018-02-20 21:04:53', NULL, NULL),
(38, 'Frank', '', 'Furter', '', '', '', '', '2018-02-20 21:04:53', NULL, NULL),
(39, 'Harry', '', 'Beard', '', '', '', '', '2018-02-20 21:04:53', NULL, NULL),
(40, 'Anna', '', 'Conda', '', '', '', '', '2018-02-20 21:04:53', NULL, NULL),
(41, 'Justin', '', 'Thyme', '', '', '', '', '2018-02-20 21:04:53', NULL, NULL),
(42, 'Ollie', '', 'Gark', '', '', '', '', '2018-02-20 21:04:53', NULL, NULL),
(43, 'Pete', '', 'Moss', '', '', '', '', '2018-02-20 21:04:53', NULL, NULL),
(44, 'Rusty', '', 'Foord', '', '', '', '', '2018-02-20 21:04:53', NULL, NULL),
(45, 'Tom', '', 'Foolery', '', '', '', '', '2018-02-20 21:04:53', NULL, NULL),
(46, 'Warren', '', 'Peace', '', '', '', '', '2018-02-20 21:04:53', NULL, NULL),
(47, 'Linda', '', 'Hand', '', '', '', '', '2018-02-20 21:04:53', NULL, NULL),
(48, 'Lotta', '', 'Noyse', '', '', '', '', '2018-02-20 21:04:53', NULL, NULL),
(49, 'Barb', '', 'Wyre', '', '', '', '', '2018-02-20 21:04:53', NULL, NULL),
(50, 'Bunsen', '', 'Burner', '', '', '', '', '2018-02-20 21:04:53', NULL, NULL),
(51, 'Ginger', '', 'Vitus', '', '', '', '', '2018-02-20 21:04:53', NULL, NULL),
(52, 'Jack', '', 'Uzzi', '', '', '', '', '2018-02-20 21:04:53', NULL, NULL),
(53, 'Mason', '', 'Jarr', '', '', '', '', '2018-02-20 21:04:53', NULL, NULL),
(54, 'Ty', '', 'Kuhn', '', '', '', '', '2018-02-20 21:04:53', NULL, NULL),
(55, 'Wazziz', '', 'Naime', '', '', '', '', '2018-02-20 21:04:53', NULL, NULL),
(56, 'Rod', '', 'Curtains', '', '', '', '', '2018-02-20 21:04:53', NULL, NULL),
(57, 'Kayne', '', 'Kun', '', '', '', '', '2018-02-20 21:04:53', NULL, NULL),
(58, 'Rocky', '', 'Rhodes', '', '', '', '', '2018-02-20 21:04:53', NULL, NULL),
(59, 'Sandy', '', 'Beech', '', '', '', '', '2018-02-20 21:04:53', NULL, NULL),
(60, 'Sue', '', 'Vlaki', '', '', '', '', '2018-02-20 21:04:53', NULL, NULL),
(61, 'Alan', '', 'Rench', '', '', '', '', '2018-02-20 21:04:53', NULL, NULL),
(62, 'Anne', '', 'Thrax', '', '', '', '', '2018-02-20 21:04:53', NULL, NULL),
(63, 'Annita', '', 'Job', '', '', '', '', '2018-02-20 21:04:53', NULL, NULL),
(64, 'Art', '', 'Major', '', '', '', '', '2018-02-20 21:04:53', NULL, NULL),
(65, 'Tess', '', 'Tamoni', '', '', '', '', '2018-02-20 21:04:53', NULL, NULL),
(66, 'Al', '', 'Pacca', '', '', '', '', '2018-02-20 21:04:53', NULL, NULL),
(67, 'Art', 'A.', 'Choke', '', '', '', '', '2018-02-20 21:04:53', NULL, NULL),
(68, 'Benny', '', 'Fitz', '', '', '', '', '2018-02-20 21:04:53', NULL, NULL),
(69, 'Anna', '', 'Nimmity', '', '', '', '', '2018-02-20 21:04:53', NULL, NULL),
(70, 'Pete', '', 'Moss', '', '', '', '', '2018-02-20 21:04:53', NULL, NULL),
(71, 'Mike', '', 'Raffone', '', '', '', '', '2018-02-20 21:04:53', NULL, NULL),
(72, 'Sonny', '', 'Day', '', '', '', '', '2018-02-20 21:04:53', NULL, NULL),
(73, 'Wil', '', 'Doolittle', '', '', '', '', '2018-02-20 21:04:53', NULL, NULL),
(74, 'Gladys', '', 'Dunn', '', '', '', '', '2018-02-20 21:04:53', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `Software`
--

CREATE TABLE IF NOT EXISTS `Software` (
`software_id` int(11) NOT NULL,
  `software_name` varchar(255) NOT NULL,
  `software_acronym` varchar(255) NOT NULL,
  `created_on` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `modified_on` timestamp NULL DEFAULT NULL,
  `deleted_on` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=80 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `Software`
--

INSERT INTO `Software` (`software_id`, `software_name`, `software_acronym`, `created_on`, `modified_on`, `deleted_on`) VALUES
(1, 'Operating Map of Gastropathy', 'OMG', '2018-02-20 19:35:21', NULL, NULL),
(2, 'eHealthChart', '', '2018-02-20 19:58:01', NULL, NULL),
(3, 'Environmental Home Manager', '', '2018-02-20 19:58:01', NULL, NULL),
(4, 'Clinical Data Repository', 'CDR', '2018-02-20 19:58:01', NULL, NULL),
(5, 'Netcare Occupation & Observation Base System', 'NOOBS', '2018-02-20 19:58:01', NULL, NULL),
(6, 'Find a Doctor', 'FAD', '2018-02-20 19:58:01', NULL, NULL),
(7, 'Drug Profile Viewer', 'DPV', '2018-02-20 19:58:01', NULL, NULL),
(8, 'Abdomen Tissue and Analysis Tool', 'AT-AT', '2018-02-20 19:58:01', NULL, NULL),
(9, 'Provider Coverage Viewer', 'PCV', '2018-02-20 19:58:01', NULL, NULL),
(10, 'Transcription Magic Interpreter', 'TMI', '2018-02-20 19:58:01', NULL, NULL),
(11, 'PharmaCare', '', '2018-02-20 19:58:01', NULL, NULL),
(12, 'Provider Registry System', 'PRS', '2018-02-20 19:58:01', NULL, NULL),
(13, 'Electronic Lab System Interpolator', 'ELSI', '2018-02-20 19:58:01', NULL, NULL),
(14, 'myeHealth (For British Columbia)', '', '2018-02-20 19:58:01', NULL, NULL),
(15, 'eReferral', '', '2018-02-20 19:58:01', NULL, NULL),
(16, 'myeHealth (For Alberta, Saskatchewan, Manitoba)', '', '2018-02-20 19:58:01', NULL, NULL),
(17, 'Cleaning Product Analyzer', '', '2018-02-20 19:58:01', NULL, NULL),
(18, 'Greenhouse Gas Analyzer', '', '2018-02-20 19:58:01', NULL, NULL),
(19, 'Pollution Alerts Datamart', 'PAD', '2018-02-20 19:58:01', NULL, NULL),
(20, 'Ambulance Schedule System', '', '2018-02-20 19:58:01', NULL, NULL),
(21, 'Water and Land Data Observer', 'WALDO', '2018-02-20 19:58:01', NULL, NULL),
(22, 'Waste Observation System', '', '2018-02-20 19:58:01', NULL, NULL),
(23, 'myeHealth (For Ontario)', '', '2018-02-20 19:58:01', NULL, NULL),
(24, 'myeHealth (For Quebec)', '', '2018-02-20 19:58:01', NULL, NULL),
(25, 'myeHealth (For Yukon, Northwest Territories, Nunavut)', '', '2018-02-20 19:58:01', NULL, NULL),
(26, 'Weather Analyzer Software System Unix Platform', 'WASSUP', '2018-02-20 19:58:01', NULL, NULL),
(27, 'Weather and Ozone Observation Knowledge Emulator Enterprise Edition', 'WOOKEEE', '2018-02-20 19:58:01', NULL, NULL),
(28, 'Microstrategy', '', '2018-02-20 19:58:01', NULL, NULL),
(29, 'Cisco WebEx', '', '2018-02-20 19:58:01', NULL, NULL),
(30, 'Environmental Assessor Tool', '', '2018-02-20 19:58:01', NULL, NULL),
(31, 'myeHealth (for New Brunswick, Prince Edward Island, Nova Scotia, Newfoundland and Labrador)', '', '2018-02-20 19:58:01', NULL, NULL),
(32, 'Clinical Admission Manager', '', '2018-02-20 19:58:01', NULL, NULL),
(33, 'Ambulance Supply System', '', '2018-02-20 19:58:01', NULL, NULL),
(34, 'TeleCare', '', '2018-02-20 19:58:01', NULL, NULL),
(35, 'Surgical Information System', 'SIS', '2018-02-20 19:58:01', NULL, NULL),
(36, 'Operating Map of Gastropathy', 'OMG', '2018-02-20 20:11:24', NULL, NULL),
(37, 'Limited Operating Liability', 'LOL', '2018-02-20 20:11:24', NULL, NULL),
(39, 'Total Mastering of Incisions', 'TMI', '2018-02-20 20:11:24', NULL, NULL),
(40, 'Fixed Orthodontics Medical Operations', 'FOMO', '2018-02-20 20:11:24', NULL, NULL),
(41, 'List of Transactions and Redactions', 'LOTR', '2018-02-20 20:11:24', NULL, NULL),
(42, 'Northern Ozone & Ocean Biome', 'NOOB', '2018-02-20 20:11:24', NULL, NULL),
(43, 'Alternative Sewage System', '', '2018-02-20 20:11:24', NULL, NULL),
(44, 'Relational Observation System Limited', 'ROFL', '2018-02-20 20:11:24', NULL, NULL),
(45, 'Fast Family Finder', '', '2018-02-20 20:11:24', NULL, NULL),
(46, 'Sustainable Xeriscaping', 'SuX', '2018-02-20 20:11:24', NULL, NULL),
(47, 'World Terrain & Forestry', 'WTF', '2018-02-20 20:11:24', NULL, NULL),
(48, 'Web Utility Table', 'WUT', '2018-02-20 20:11:24', NULL, NULL),
(49, 'Data & Utility Heuristics', 'DUH', '2018-02-20 20:11:24', NULL, NULL),
(50, 'Observation (version 1),', 'OB1', '2018-02-20 20:11:24', NULL, NULL),
(51, 'National Ozone Observatory Bot', 'NOOB', '2018-02-20 20:11:24', NULL, NULL),
(52, 'Heart Ultrasound Heatmaps', 'HUH', '2018-02-20 20:11:24', NULL, NULL),
(53, 'Free MySQL Logger', 'FML', '2018-02-20 20:11:24', NULL, NULL),
(54, 'Heart, Abdomen, and Head Assessor', 'HAHA', '2018-02-20 20:11:24', NULL, NULL),
(55, 'Waste Electronic & Wireless Equipment', 'WEWE', '2018-02-20 20:11:24', NULL, NULL),
(56, 'Biosphere Air and Gas Interpreter', '', '2018-02-20 20:11:24', NULL, NULL),
(57, 'Original Record of Landscape and Yards', 'ORLY', '2018-02-20 20:11:24', NULL, NULL),
(58, 'Selected Analytical Methods', 'SAM', '2018-02-20 20:11:24', NULL, NULL),
(59, 'Storm Water Management', '', '2018-02-20 20:11:24', NULL, NULL),
(60, 'Planetary Environmental Reference System', 'PERS', '2018-02-20 20:11:24', NULL, NULL),
(61, 'Snowmed Analyzer System Extended Edition', 'SASEE', '2018-02-20 20:11:24', NULL, NULL),
(62, 'Picture Archive and Communication System', 'PACS', '2018-02-20 20:11:24', NULL, NULL),
(63, 'Radiology Information System', 'RIS', '2018-02-20 20:11:24', NULL, NULL),
(64, 'Download Urgent Medical Backups', 'DUMB', '2018-02-20 20:11:24', NULL, NULL),
(65, 'Pharmaceutical Information Program', 'PIP', '2018-02-20 20:11:24', NULL, NULL),
(66, 'Remote Health Checker', '', '2018-02-20 20:11:24', NULL, NULL),
(67, 'Remote Stroke Checker', '', '2018-02-20 20:11:24', NULL, NULL),
(68, 'Chronic Disease Management', '', '2018-02-20 20:11:24', NULL, NULL),
(69, 'Ambulance Schedule System', '', '2018-02-20 20:11:24', NULL, NULL),
(70, 'Care Manager', '', '2018-02-20 20:11:24', NULL, NULL),
(71, 'Lab Information System', 'LIS', '2018-02-20 20:11:24', NULL, NULL),
(72, 'Patient Admitter Tool', 'PAT', '2018-02-20 20:11:24', NULL, NULL),
(73, 'Spillage Locator Tool', '', '2018-02-20 20:11:24', NULL, NULL),
(74, 'Environmental Assessor Tool', '', '2018-02-20 20:11:24', NULL, NULL),
(75, 'Statistical Analysis System', 'SAS', '2018-02-20 20:11:24', NULL, NULL),
(76, 'Statistical Package for Social Sciences', 'SPSS', '2018-02-20 20:11:24', NULL, NULL),
(77, 'Cisco WebEx', '', '2018-02-20 20:11:24', NULL, NULL),
(78, 'Homecare System', '', '2018-02-20 20:11:24', NULL, NULL),
(79, 'Electronic Medical Record (Viewer)', 'EMR', '2018-02-20 20:11:24', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `SoftwareApprovers`
--

CREATE TABLE IF NOT EXISTS `SoftwareApprovers` (
`approval_id` int(11) NOT NULL,
  `employee_pk` int(11) NOT NULL,
  `software_pk` int(11) NOT NULL,
  `created_on` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `modified_on` timestamp NULL DEFAULT NULL,
  `deleted_on` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=95 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `SoftwareApprovers`
--

INSERT INTO `SoftwareApprovers` (`approval_id`, `employee_pk`, `software_pk`, `created_on`, `modified_on`, `deleted_on`) VALUES
(1, 1, 1, '2018-02-20 21:27:03', NULL, NULL),
(2, 2, 1, '2018-02-20 21:41:25', NULL, NULL),
(3, 3, 37, '2018-02-20 21:42:22', NULL, NULL),
(4, 4, 39, '2018-02-20 21:42:47', NULL, NULL),
(5, 5, 40, '2018-02-20 21:44:03', NULL, NULL),
(6, 6, 41, '2018-02-20 21:44:14', NULL, NULL),
(7, 7, 42, '2018-02-20 21:44:26', NULL, NULL),
(8, 8, 43, '2018-02-20 21:44:38', NULL, NULL),
(9, 9, 44, '2018-02-20 21:44:55', NULL, NULL),
(10, 10, 45, '2018-02-20 21:45:06', NULL, NULL),
(11, 11, 46, '2018-02-20 21:45:17', NULL, NULL),
(12, 12, 47, '2018-02-20 21:45:30', NULL, NULL),
(13, 13, 48, '2018-02-20 21:45:39', NULL, NULL),
(14, 14, 49, '2018-02-20 21:45:50', NULL, NULL),
(15, 15, 50, '2018-02-20 21:46:02', NULL, NULL),
(16, 16, 51, '2018-02-20 21:46:22', NULL, NULL),
(17, 17, 52, '2018-02-20 21:46:33', NULL, NULL),
(18, 18, 53, '2018-02-20 21:46:43', NULL, NULL),
(19, 19, 54, '2018-02-20 21:46:58', NULL, NULL),
(20, 20, 55, '2018-02-20 21:47:09', NULL, NULL),
(21, 21, 56, '2018-02-20 21:47:16', NULL, NULL),
(22, 22, 57, '2018-02-20 21:47:24', NULL, NULL),
(24, 24, 59, '2018-02-20 21:47:39', NULL, NULL),
(25, 25, 60, '2018-02-20 21:48:55', NULL, NULL),
(26, 26, 61, '2018-02-20 21:49:04', NULL, NULL),
(27, 27, 62, '2018-02-20 21:49:12', NULL, NULL),
(28, 28, 63, '2018-02-20 21:49:19', NULL, NULL),
(29, 29, 64, '2018-02-20 21:49:29', NULL, NULL),
(30, 31, 65, '2018-02-20 21:49:50', NULL, NULL),
(31, 30, 65, '2018-02-20 21:50:04', NULL, NULL),
(32, 32, 66, '2018-02-20 21:50:29', NULL, NULL),
(33, 33, 66, '2018-02-20 21:50:38', NULL, NULL),
(34, 33, 67, '2018-02-20 21:50:45', NULL, NULL),
(35, 32, 67, '2018-02-20 21:50:53', NULL, NULL),
(36, 34, 68, '2018-02-20 21:51:03', NULL, NULL),
(37, 35, 20, '2018-02-20 21:51:12', NULL, NULL),
(38, 36, 70, '2018-02-20 21:51:26', NULL, NULL),
(39, 37, 71, '2018-02-20 21:51:37', NULL, NULL),
(40, 38, 72, '2018-02-20 21:51:46', NULL, NULL),
(41, 39, 73, '2018-02-20 21:51:58', NULL, NULL),
(42, 40, 30, '2018-02-20 21:52:09', NULL, NULL),
(43, 41, 75, '2018-02-20 21:52:21', NULL, NULL),
(44, 42, 76, '2018-02-20 21:52:30', NULL, NULL),
(45, 70, 29, '2018-02-20 21:52:43', NULL, NULL),
(46, 44, 78, '2018-02-20 21:52:51', NULL, NULL),
(47, 45, 79, '2018-02-20 21:53:06', NULL, NULL),
(48, 46, 2, '2018-02-20 21:53:54', NULL, NULL),
(49, 47, 3, '2018-02-20 21:54:00', NULL, NULL),
(51, 48, 4, '2018-02-20 21:54:23', NULL, NULL),
(52, 49, 5, '2018-02-20 21:54:31', NULL, NULL),
(54, 50, 6, '2018-02-20 21:54:49', NULL, NULL),
(55, 23, 58, '2018-02-20 21:55:51', NULL, NULL),
(57, 30, 7, '2018-02-20 21:56:13', NULL, NULL),
(58, 31, 7, '2018-02-20 21:56:19', NULL, NULL),
(61, 2, 8, '2018-02-20 21:56:56', NULL, NULL),
(62, 51, 9, '2018-02-20 21:57:04', NULL, NULL),
(63, 52, 10, '2018-02-20 21:57:13', NULL, NULL),
(65, 53, 11, '2018-02-20 21:57:36', NULL, NULL),
(66, 54, 12, '2018-02-20 21:57:48', NULL, NULL),
(67, 55, 13, '2018-02-20 21:58:10', NULL, NULL),
(68, 56, 14, '2018-02-20 21:58:23', NULL, NULL),
(70, 57, 15, '2018-02-20 21:59:03', NULL, NULL),
(71, 58, 16, '2018-02-20 21:59:16', NULL, NULL),
(72, 59, 17, '2018-02-20 21:59:25', NULL, NULL),
(73, 60, 18, '2018-02-20 21:59:38', NULL, NULL),
(74, 61, 19, '2018-02-20 21:59:46', NULL, NULL),
(76, 62, 21, '2018-02-20 22:00:07', NULL, NULL),
(77, 63, 22, '2018-02-20 22:00:22', NULL, NULL),
(78, 64, 23, '2018-02-20 22:00:41', NULL, NULL),
(79, 65, 24, '2018-02-20 22:00:52', NULL, NULL),
(80, 66, 25, '2018-02-20 22:01:07', NULL, NULL),
(81, 67, 26, '2018-02-20 22:01:23', NULL, NULL),
(82, 68, 27, '2018-02-20 22:01:37', NULL, NULL),
(83, 69, 28, '2018-02-20 22:01:53', NULL, NULL),
(84, 43, 29, '2018-02-20 22:02:00', NULL, NULL),
(85, 40, 74, '2018-02-20 22:02:21', NULL, NULL),
(86, 71, 31, '2018-02-20 22:02:34', NULL, NULL),
(87, 72, 32, '2018-02-20 22:02:48', NULL, NULL),
(88, 73, 33, '2018-02-20 22:03:05', NULL, NULL),
(89, 33, 34, '2018-02-20 22:03:16', NULL, NULL),
(90, 32, 34, '2018-02-20 22:03:32', NULL, NULL),
(91, 74, 35, '2018-02-20 22:03:47', NULL, NULL),
(94, 16, 42, '2018-02-20 22:04:35', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `SoftwareRequest`
--

CREATE TABLE IF NOT EXISTS `SoftwareRequest` (
  `request_id` int(11) NOT NULL,
  `employee_requesting_pk` int(11) NOT NULL,
  `software_requesting_pk` int(11) NOT NULL,
  `status` varchar(255) NOT NULL,
  `created_on` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `modified_on` timestamp NULL DEFAULT NULL,
  `deleted_on` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `Employees`
--
ALTER TABLE `Employees`
 ADD PRIMARY KEY (`employee_id`);

--
-- Indexes for table `Software`
--
ALTER TABLE `Software`
 ADD PRIMARY KEY (`software_id`);

--
-- Indexes for table `SoftwareApprovers`
--
ALTER TABLE `SoftwareApprovers`
 ADD PRIMARY KEY (`approval_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `Employees`
--
ALTER TABLE `Employees`
MODIFY `employee_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=75;
--
-- AUTO_INCREMENT for table `Software`
--
ALTER TABLE `Software`
MODIFY `software_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=80;
--
-- AUTO_INCREMENT for table `SoftwareApprovers`
--
ALTER TABLE `SoftwareApprovers`
MODIFY `approval_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=95;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
