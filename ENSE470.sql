-- phpMyAdmin SQL Dump
-- version 4.2.12deb2+deb8u2
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Mar 29, 2018 at 02:33 AM
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
  `approver_comments` text NOT NULL,
  `status` varchar(255) NOT NULL,
  `created_on` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `modified_on` timestamp NULL DEFAULT NULL,
  `deleted_on` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ApprovalComments`
--

INSERT INTO `ApprovalComments` (`comment_pk`, `request_pk`, `approver_pk`, `approver_comments`, `status`, `created_on`, `modified_on`, `deleted_on`) VALUES
(1, 1, 76, 'tesf', 'Forward', '2018-03-18 19:18:45', NULL, NULL),
(2, 1, 21, '', 'Approved', '2018-03-18 19:18:45', '2018-03-18 09:28:04', NULL),
(3, 2, 76, 'Testing', 'Forward', '2018-03-18 21:43:10', NULL, NULL),
(4, 2, 8, 'There is not enough information here.', 'RequestInfo', '2018-03-18 21:43:10', '2018-03-18 09:44:02', NULL),
(5, 2, 76, 'Test', 'Forward', '2018-03-18 21:57:58', '2018-03-18 10:29:36', NULL),
(6, 2, 8, 'Need superior to approve', 'Forward', '2018-03-18 22:29:36', '2018-03-18 10:55:39', NULL),
(9, 2, 32, 'Not sure why this was forwarded to me. Polly, do your job.', 'Forward', '2018-03-18 22:55:39', '2018-03-18 10:58:26', NULL),
(10, 2, 8, '', 'Denied', '2018-03-18 22:58:26', '2018-03-18 10:58:56', NULL),
(11, 3, 76, 'Final Test', 'Forward', '2018-03-18 23:04:36', NULL, NULL),
(12, 3, 36, 'Final test forwarding to another approver.', 'Forward', '2018-03-18 23:04:36', '2018-03-18 11:06:13', NULL),
(13, 3, 68, 'Final Test requesting more information from the user.', 'RequestInfo', '2018-03-18 23:06:13', '2018-03-18 11:06:47', NULL),
(14, 3, 76, 'Final Test adding more information to a request.', 'Forward', '2018-03-18 23:06:47', '2018-03-18 11:07:34', NULL),
(15, 3, 36, 'Final Approval.', 'Approved', '2018-03-18 23:07:34', '2018-03-18 11:07:57', NULL),
(16, 4, 32, '', 'Forward', '2018-03-18 23:20:51', NULL, NULL),
(17, 4, 2, '', 'Pending', '2018-03-18 23:20:51', NULL, NULL),
(18, 7, 76, 'asdfasdfas', 'Forward', '2018-03-26 21:20:10', NULL, NULL),
(19, 7, 2, '', 'Pending', '2018-03-26 21:20:10', NULL, NULL),
(20, 9, 76, '', 'Forward', '2018-03-26 21:22:04', NULL, NULL),
(21, 9, 49, 'I THINK ":" QUOTES NO LONGER BREAK THINGS "!@#$%%^&*() ''"''"''"<>?/', 'Approved', '2018-03-26 21:22:04', NULL, NULL),
(22, 10, 76, '', 'Forward', '2018-03-26 21:28:21', NULL, NULL),
(23, 10, 73, '', 'Pending', '2018-03-26 21:28:21', NULL, NULL),
(24, 11, 76, '', 'Forward', '2018-03-26 21:29:21', NULL, NULL),
(25, 11, 29, '', 'Pending', '2018-03-26 21:29:21', NULL, NULL),
(26, 12, 76, '', 'Forward', '2018-03-26 21:32:13', NULL, NULL),
(27, 12, 34, 'ITS TRUE! """"" QUOTES DON''T BREAK THINGS! ;''":" mysqli_escape_sctring FTW', 'RequestInfo', '2018-03-26 21:32:13', '2018-03-26 09:40:08', NULL),
(28, 13, 76, 'Tesitng '''''' escale ''a'' ''ad;lf''l string s!@~""', 'Forward', '2018-03-26 21:33:15', NULL, NULL),
(29, 13, 34, ')(*&^%$#@!~`-=_+[]{}\\|;'':",./<>?', 'Denied', '2018-03-26 21:33:15', '2018-03-26 09:40:30', NULL),
(30, 12, 76, '', 'Pending', '2018-03-26 21:40:08', NULL, NULL);

-- --------------------------------------------------------

--
-- Stand-in structure for view `CompletedRequests`
--
CREATE TABLE IF NOT EXISTS `CompletedRequests` (
`request_id` int(11)
,`employee_requesting_pk` int(11)
,`created_on` timestamp
,`modified_on` timestamp
,`deleted_on` timestamp
,`software_name` varchar(255)
,`status` varchar(255)
);
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
) ENGINE=InnoDB AUTO_INCREMENT=77 DEFAULT CHARSET=latin1;

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
(74, 'Gladys', '', 'Dunn', '', '', '', '', '2018-02-20 21:04:53', NULL, NULL),
(76, 'Quinn', '', 'Bast', '', '', '', 'Quinn.Bast@hotmail.com', '2018-03-11 19:23:49', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `Logins`
--

CREATE TABLE IF NOT EXISTS `Logins` (
  `first_name` varchar(255) NOT NULL,
  `last_name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `employee_id` int(11) NOT NULL,
  `role` varchar(255) NOT NULL DEFAULT 'User'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `Logins`
--

INSERT INTO `Logins` (`first_name`, `last_name`, `email`, `username`, `password`, `employee_id`, `role`) VALUES
('Alan', 'Rench', 'AlanRench', 'AlanRench', 'c2f798cfdf3e04029344413f57a16434085c8cf4ea70e942c4261de293bdd7e14c0c147a1291aa30ad05b8baddf47c8ace6d87fbaedc07f4930da8f3a1d2bdd9', 61, 'Approver'),
('Al', 'Dente', 'AlDente', 'AlDente', '4ba17f52f719cebe4eb9f7daaa0e8da219d4c9932ab6b61d87bc1ea45ec04abbcccff53cd581a28698196dc902989e919d499fdccd760932bc83ad2755a0f0d0', 32, 'Approver'),
('Al', 'Falfa', 'AlFalfa', 'AlFalfa', '930e46b69217b6b6213def387b04ea02c56c251a81be397d075fa5ea3f5a16601d64cebd00bcea3bd6410dd0779e410daff9b782f81788e59db9fe17b9cd9d7b', 37, 'Approver'),
('Ally', 'Katz', 'AllyKatz', 'AllyKatz', '9b4a4d4c54b2f5cd251178af8d031d569e490a6e369a4973945d3373ff121a6824f6c4c4b0cf92968aff6c538a0c9597b62f0f8fd784b5933817287bd0998de2', 15, 'Approver'),
('Al', 'Pacca', 'AlPacca', 'AlPacca', '1b6992fad5cf37d84a80475e5baa55d87a63eb107720b2c789f950b4da0c60262220e356205ba1e9c7b90bfb385fa027cdb5a3e786f0c46b5715c253062b1899', 66, 'Approver'),
('Amanda', 'Huginkiss', 'AmandaHuginkiss', 'AmandaHuginkiss', '7edca64d89ec46f14c12b4806d569ab518f0f4f5cb6a21101b3fdd56e47c0c56ccfd71cd86f38781d0ca27831ff7d9b2023a42b10cd8f22522495db674726d30', 3, 'Approver'),
('Anna', 'Conda', 'AnnaConda', 'AnnaConda', '128e46c427ecd8565bf134f0bb0ec1bd28bc02f98b2adf36c0afeacde80c9d726dd819ecc99f6f737a0f151849b01bcb7928f98ab777ee987334750a82dfb6cd', 40, 'Approver'),
('Anna', 'Nimmity', 'AnnaNimmity', 'AnnaNimmity', '40e032705886541a4c61e8350934ad263c2ec34b9f222786adaf2dcb82d6ad6100f07a11e0e43f9c31eb874c0731278b430393cf84367d0c82a2270040a2bf28', 69, 'Approver'),
('Anne', 'Thrax', 'AnneThrax', 'AnneThrax', '4ee832a43771ba985bc56c75d96fbc4d9499897af2849be641a92452b704e85b4d34e7556005099e266146155ddece50fbdf305c4b1711a941b8e28a3943219b', 62, 'Approver'),
('Annita', 'Job', 'AnnitaJob', 'AnnitaJob', '386c3ef9bcdaf89da247b3e86feac7a94e792592365849ae5cfec28998d837bae8ea9b054e2b3fdaffc2147d10a5263a8d8d99b4be6a0ae162c190c423fb0519', 63, 'Approver'),
('Art', 'Choke', 'ArtChoke', 'ArtChoke', '0b7d373da13316041fe85fc7c483c0fcce6d2df1479ec88113a01b2f62bbecefd640b9271255b77fee9cfe33728bd3c5d88eace0837f0003f7dec578a4c13634', 67, 'Approver'),
('Art', 'Dekko', 'ArtDekko', 'ArtDekko', '4c19005091ab12b7e1df879f60ef8048c77a077aaf6ce82180cfc04023ff2c2bbffa078dac520e4118dd0b15c9238f051acf42b0661a6e8f4e252e9f24aaf1a8', 35, 'Approver'),
('Art', 'Major', 'ArtMajor', 'ArtMajor', '1d9b9bcd6f9bb077b55a605c73e3ccecacccda6a135558983f029dd5c25a15260d31beb9a2ba6e2cf186174b2f519f1e86bf369911404a2b11f33ac67cb42603', 64, 'Approver'),
('Barb', 'Wyre', 'BarbWyre', 'BarbWyre', '71919bb88ac826c114fca4ab0aff2674bbb85cf15c5f6e61bd7a58dceeed28fd4f660306796cd9c37e0495428af992da1f02c83cc0400ace0b7a996592d634f6', 49, 'Approver'),
('Benny', 'Fitz', 'BennyFitz', 'BennyFitz', 'c6e987e33533988536e8834e5ce04f4c4bf3bdc3cd5b4fe152605b9976ac3c217dd8ad261a328dcb5b089d2b0eb6c5927cc2ddb7d6bded98c8ddb5d92c72e449', 68, 'Approver'),
('Biff', 'Wellington', 'BiffWellington', 'BiffWellington', 'cdc358285457e4a0349a3ffee9810bc08032e0c85579f12b2cf741ceb31100332e4b1763feaae7736efaa66207497a647d3ca0b2e6cff69cacde79df13182913', 34, 'Approver'),
('Brock', 'Lee', 'BrockLee', 'BrockLee', 'e9a97e835a2bab9c36d3ba02c7872ce97eef1eb61c9ad3c75e12b0fa976908e556a6e73d57998da201239d194d2ab552847ac0aff8af86326f3d92c0bfdba289', 12, 'Approver'),
('Bud', 'Light', 'BudLight', 'BudLight', 'a6f9b502f9fe302abb998cb3cf7af398f53e2a71ead8b6e3e8255e785f86029969dfb6c360686a0c51ae0350ad73265b30152d07d84ae3f6c947776a6d4e34cb', 23, 'Approver'),
('Bunsen', 'Burner', 'BunsenBurner', 'BunsenBurner', '88529e660f8c7cc7c31e464dcb79ee9b4d1d05afe9a960e199d74f042f8103cace1bf22bf863ab3e2e536fbe0b3a696fe5a8be12df1fb84baf6f4ac309cbef84', 50, 'Approver'),
('Chester', 'Field', 'ChesterField', 'ChesterField', 'fb2baa824db455b2a4cb8cfbd5f1eb3cc805a5f3672ec1f18a145c4ac3db68b4eca2ce0150c287791937762cb8c07a17342d2761f24ef2253a8669da2238e231', 1, 'Approver'),
('Claire', 'Voyant', 'ClaireVoyant', 'ClaireVoyant', '70c098de3bdaadfc65b9363b99ebec23e3aeb3e6825203797c8411851533c65094df5d2281007e8cd3a8710b99e7fec480567d099cff8eb0c5c3ce6b64114ea9', 6, 'Approver'),
('Clay', 'Potts', 'ClayPotts', 'ClayPotts', '1f207fe0a248addc18acca4bb2f564fe5f3f6dc8fefde5cfa7813076c106bfc6ad15a12971f6458bd3a42934a108b1bdbea0cc25f82c2fd2ac3d7d1355292dc8', 36, 'Approver'),
('Crisp', 'Bacon', 'CrispBacon', 'CrispBacon', '912c3aaa15f657641181fe11a5064444bd1673d22a33e6818b2c354c1a7aac58a78c0053bf264d9284ea22956b877b05b9d2e0fbcab2342d32723cd4df6a9f08', 17, 'Approver'),
('Crystal', 'Ball', 'CrystalBall', 'CrystalBall', 'd57e95e662b47856f363c4760f001c31bc362bcde8e967dd6fe1241d5c7e3213dfdb46e0e57ae29a4191fd7780da1e15fe02fa6cc594049c691508bdda2262d8', 31, 'Approver'),
('Derry', 'Yare', 'DerryYare', 'DerryYare', '63849a7a2cb79d8ec5ef65c85ca68bb76f37f136c8a3abb1d49dcbbb90223b6eb39044d5f8bad516a9a9b4d7d8fd1a47c263498e680b51a1357aaae44b1654e3', 19, 'Approver'),
('Dot', 'Matricks', 'DotMatricks', 'DotMatricks', 'adb98be10404d6ec59e3ec921733c3789a49bae0a31ac5b920cd9387544b567eb2c3b9a0987bd2455771f9f9dbfae0782d4d0e9fbf5c9ebc65ae5aa82f076259', 13, 'Approver'),
('Douglas', 'Furr', 'DouglasFurr', 'DouglasFurr', '632ab195a8d421f09a0fc40cbcc129e8c1d2abd81093a3a499f8fa8208b25cef99c67a2689d538605f64373f4e4832ce9e1e5f73858440d39863b95f9c2c470f', 33, 'Approver'),
('Dyl', 'Pickel', 'DylPickel', 'DylPickel', '3f7758b3c759e826c0c01e56f9da7e947841e373113f37dc1ce00346a5ba577e0ec31d34a73e769b4f0a29670a2ccb623175bd12febbbe2ac83ac46421b3a1ba', 26, 'Approver'),
('Filet', 'Minyon', 'FiletMinyon', 'FiletMinyon', 'e2460ec7bbf2b6b2505b19dc41a7ab956fccac3765439e0dc952829d6976befb29d29567482058712d4164e02792be1a00d57658aaeec3c635b1969198e1bdc8', 24, 'Approver'),
('Frank', 'Furter', 'FrankFurter', 'FrankFurter', '29dc81ef38f5611732cadedbdec24a4a763d61c2c832f0407c6ffeff6a4b1dd40f482dbc9fe8d4af5f20aec1f18960e7c474c12703925e6dbdb1f421efbadc4a', 38, 'Approver'),
('Gene', 'Pool', 'GenePool', 'GenePool', '2f50e91cdde037c9855ed5effaa70f1eb750a30fe84d453212a644aa48da5a97bbf082f7193120ecbc44bd27a703353c3507003fe566f61788b4d4a4f85dc0d6', 10, 'Approver'),
('Ginger', 'Vitus', 'GingerVitus', 'GingerVitus', 'e92e2df3c986cd977be21777173a56bd2f1d7ae0ee32d309bfac6379450909d6095a74c4ae6d07fe9f0d0e76782ba2e097d953017d1127138541efd499f0890b', 51, 'Approver'),
('Gladys', 'Dunn', 'GladysDunn', 'GladysDunn', '1c36a853f2789f7c3b80e46bb744a42bba810af557afb8a154a2f1e06b90d7d0dd4a985fa10a92eaafec8ea964cfb53f04f15f199f405b83280b94f4ac56e79e', 74, 'Approver'),
('Goldie', 'Locke', 'GoldieLocke', 'GoldieLocke', 'f64e5f5ec196a5a29385e4b4a672c81cc7b69a56efb4999acca501f37ef2545224915be017a107826a01eedf86c9372ff12bc2fd58354aa9004f8e1362117b5c', 14, 'Approver'),
('Harry', 'Beard', 'HarryBeard', 'HarryBeard', 'e274cbab474f93f7a4e510a703df2944b23c862bebecac702bea61282eab5c0a0cc54a325c1522b080731fbfd685bdf20088c5b4e887d1d1bfd6a93d5f1a7379', 39, 'Approver'),
('Honey', 'Potts', 'HoneyPotts', 'HoneyPotts', '79ee5b13378d6e19b39d6ce1fcc94a29d7afb935f67f942c5e39005b5dda33a3a05c3f27a7eb08f944b4fab3d25f57ddfa31511644d490d10192ac9f8342f853', 21, 'Approver'),
('Ida', 'Claire', 'IdaClaire', 'IdaClaire', 'eff2df371253bb37b51f32179782508f07bbf7f3b70ef7393b4611950f7ff28b3ff826d29e145eff9368341fdccb0d3dfb722195760f69de78fd5a970e6b8c7e', 2, 'Approver'),
('Jack', 'Uzzi', 'JackUzzi', 'JackUzzi', '39a0cadec7b034c18c557210796871cbcd21a896c0cf253f56d1b193af07ed860d37da8b455e9feedecf38d20e1b3510d5e23482f9251f07adefaf6b252dc776', 52, 'Approver'),
('Jed', 'Knight', 'JedKnight', 'JedKnight', 'ea52484d6f4ee175c66bbb059b19126446cb916452ec2cf19fc5f618b627b49cfda745ecca6910b6dd8a058765eed14e015066291481c21f71ffc1f52096b504', 28, 'Approver'),
('Justin', 'Case', 'JustinCase', 'JustinCase', '16f2d3cd388907238d584d2de2833c58baa6bf6d51c335638d2329475d3bf6a984030e6ad203227329f4195d7b9c2180e7a91c7ee1b38489a48ab2ba927abc6e', 29, 'Approver'),
('Justin', 'Thyme', 'JustinThyme', 'JustinThyme', 'a4a4aeb2cb40546913ece0ef22a58221d2dc3b8c06e93d154ab38f865f84f0002e68a2b89beeeb98975185d79d716719138cf562440fdd14acc07528754781e4', 41, 'Approver'),
('Kayne', 'Kun', 'KayneKun', 'KayneKun', 'b59a92a59ca69e5e4b1dfa56d79bfdd64b309ec11e6dda0988172a5fdf4b2f51dd851efb76cdbf9e9e3030fd5ca285ad79583845cb4b2cf6fc3571f891ca8a1b', 57, 'Approver'),
('Krystal', 'Ball', 'KrystalBall', 'KrystalBall', 'f047a60d0c4ca8d2acfa94d89ec52ce3bbeb248cc1ef7d718396eac88efe8706b33295a7af77ab76ef18a7f870a6cdfe1bc0bfb9f9d538abd237907f18da9bcd', 20, 'Approver'),
('Leah', 'Tarde', 'LeahTarde', 'LeahTarde', '9c8abe1218c5e280be4d4eda824e29ae792ab80c1b9ace217cd6e093382c788c539bb4b98bb0adc587864eab666c4e5ce94a7838fcf24bb5eae5e5deefe17ff2', 16, 'Approver'),
('Les', 'Wynan', 'LesWynan', 'LesWynan', '72e429e09a09f46a217526dfd542eb494d9649d5030979089382c2351c28bba1bbad1532e8a1d116b9ef67bec633e401945e4a329e91230ee3fb43707cd586cb', 4, 'Approver'),
('Linda', 'Hand', 'LindaHand', 'LindaHand', '4513545dc76a3f2d9086db793eb81b9505c40eae0db0fad696bf339cde76735000c83de48217ef39961c2bf51216a42178272d47d9a447b4dbff6bca9b8f8ec4', 47, 'Approver'),
('Lotta', 'Noyse', 'LottaNoyse', 'LottaNoyse', '67ba7daa9e9096d631c2cfc44d13fc29c075e50bd19f91385d34a37cbe16041c5fdc972bee67f2f6ba1274333d22efc227af1f8e284f0af2615dc3020564fe35', 48, 'Approver'),
('Mason', 'Jarr', 'MasonJarr', 'MasonJarr', '8bbc112f3f8183eb2dd3048070b77b5691b4537aaa1dacdc965854e0711128917477959c935b6a894a97a71339895cb4d60a8d1f2daa005fc1b85ad5a868d200', 53, 'Approver'),
('Mike', 'Raffone', 'MikeRaffone', 'MikeRaffone', '27c5977001f72408472932225e99b96a8a53d3cbbfa68a08c14ad26684a8d16e467a3b69ec679e213c2c035ee8c891d62317210da6718a0d3182d056f60bb0d7', 71, 'Approver'),
('Neil', 'Down', 'NeilDown', 'NeilDown', '12c52e398bc3882c371e2e055b48d7a2d5fbc9037f33a1c66f6288ab688fbdb67dd060a103dee28bf2e1cb31a89350fb00e22f2f4b146da1b3810334364dbc67', 11, 'Approver'),
('Ollie', 'Gark', 'OllieGark', 'OllieGark', 'aa63c3d1c7e611b775601e73e35880da80c72127a49fb07ff62ff278709be837b8eb6fefb250373bdbc6cd57d4be3a6c4078595e4720ff03be59df3168fa61e9', 42, 'Approver'),
('Paige', 'Turner', 'PaigeTurner', 'PaigeTurner', '619856cb1c82d3f32eb3e8298849d5aa2c3fefa42e2a9eeced004851dbd4eee5f804bc59ad5ad794c232e29341add95b596b045857a49269cb048f80b5fde677', 27, 'Approver'),
('Pea', 'Pu', 'PeaPu', 'PeaPu', '11d0eae5be94a01ec8c00995a4ace5134ee0ac937c5e539a495af4c7cee05f95beb0ca8eb804954a28a495017392ecd64bbc186916313425fc180ea7d55076b6', 30, 'Approver'),
('Pete', 'Moss', 'PeteMoss', 'PeteMoss', '9f450184a74b07e279a814f7257957ec9fdcd379cd1c40cf899eae7841cad89dbe59f58850a22f293e81997b3d72617be5cede4e03d9c6f7aea965d51381c594', 43, 'Approver'),
('Polly', 'Graff', 'PollyGraff', 'PollyGraff', '27639e2dbda0ee2fd82f9e67103f40ef029bfba696a14f9604fedc96ad54d6f99ba7f6712740b9c9f7a2e3952725f7e5b6750a96a658e575e05c5f7258984454', 8, 'Approver'),
('Quinn', 'Bast', 'Quinn.Bast@hotmail.com', 'QuinnBast', '55bfbd3ef9ac650930bef0d1f6e076e6467089483ab959232595630736a6871acda32380c9de433b70d7666f949cfca5193b2e7541fcb822b069bbfb6ac63b74', 76, 'User'),
('Quinn', 'Bast', 'QuinnBast', 'QuinnBast', '49f778488948dcc47d7a2a8ab12bfbfac9b2dc2d5768688de09c9aa6b0ebd7dfb58f53234d909019ea546ff85d036e626e32da6ae94e3f6700c64253f0184a3b', 76, 'Approver'),
('Robyn', 'Banks', 'RobynBanks', 'RobynBanks', '9bdf13365774ca03424cdb2db26fa9cb236ddc6c02101d8686edb39a70227e3636390aabde60cd9778bde915a53ece8cb6ee693bbbf7987214c8975cea76ce83', 25, 'Approver'),
('Rocky', 'Rhodes', 'RockyRhodes', 'RockyRhodes', '0fa171c80817cbbbfdf69259a5639e07d262da04c38f76667b51dccf7c0dab66e7129acea002c5e4b5e72358e151cbc8c6cc692a086dbcadfff07c3bccf6dc09', 58, 'Approver'),
('Rod', 'Curtains', 'RodCurtains', 'RodCurtains', 'eca53d1142a995cd842dd112cbaae062c79c162a228c25fdb7e3c76b2e29db9c7d1abfae941ff689c9789f99bd945be806fc9085a3249bae764e474f4600be00', 56, 'Approver'),
('Rusty', 'Foord', 'RustyFoord', 'RustyFoord', 'eae43c1a29112e4ec32e2c84f7fd031cecd9f8f75fb37cb5d443c8eafbdc37362fff8b67b36c668dbfe32c7eb0cd951766c15767e85cd33d150e5a081b71d73a', 44, 'Approver'),
('Sandy', 'Beech', 'SandyBeech', 'SandyBeech', '2d58f1f1727f70ce078b6f740d31687ebd5ba5d166f5758f0f1c1798f418f76ca69ca996c486add9ee45b23ae51ccd1c8533cc5a2d22ef7b76511f3700a0b4a3', 59, 'Approver'),
('Seymore', 'Butts', 'SeymoreButts', 'SeymoreButts', '22fd7a100d729c61981b479cf16610c97cf561bfe18dd34b551fa65c6394edf4073a57e3bb5bb065be38f84925608eb375e9a90d480e370146d1ae96857f44f9', 22, 'Approver'),
('Sonny', 'Day', 'SonnyDay', 'SonnyDay', '9a2c30faf2f95d0fe477511b5f9a42d8af5973cfc4058e7b5a68e269fe28adcb9c44b54c16d177d2dad3b3ff8caf97126c2be732cc0950cb58d337e853a1bfcc', 72, 'Approver'),
('Stan', 'Dupp', 'StanDupp', 'StanDupp', 'd0ca5a921b9e5fd73686b6d377cde1734fd8b5fd5e7094bfebbdab89725b504a1a30871a1ef9586aa09c37699de797177e5f240602cdd556ea430fe5d3a0d1dd', 9, 'Approver'),
('Sue', 'Flay', 'SueFlay', 'SueFlay', '81d3c2deb841bfa2e3f17cb52be43bfd941fe556be89bdf6100d94a7c24a9436ee691082686118cfabf81b99f9409eb84b0802fe83578286f5caedfdf17a06ba', 18, 'Approver'),
('Sue', 'Vlaki', 'SueVlaki', 'SueVlaki', '53dbb0a6423e8a3d8384ed1ce1c8bc49aeaf6b8d2e284506a13ce9fa15c4ffbe4efa5d9eeb016e2462a7b4373bb89a9e7247b94594244f70f56456110a313093', 60, 'Approver'),
('Tara', 'Dactyl', 'TaraDactyl', 'TaraDactyl', '7d35022e7eca847e8463845cfecc4f6689b54e5b784c672c873239ee444b936bde7c6030dae514ff8ae643f416535bd755d043694e90dd04cbb6670bf4a25696', 5, 'Approver'),
('Tess', 'Tamoni', 'TessTamoni', 'TessTamoni', '6c9108df7c6d036453c2293e8ce6dd62105c23fff056df1122719a81c3e32c0c0fa3a3ce1d549e2facbbc3d704610431783682b6f48b677c11e4f229eafe8ffc', 65, 'Approver'),
('Tom', 'Foolery', 'TomFoolery', 'TomFoolery', '23f38087b5d89ade3ad2bfe3b14784c0377b9c7c22ce7d2f3301d1ae1b04402bbff9871c0a6e44fc893d7218292e6b2e4ffd01ac46eb2c400dc7dab53b60c13a', 45, 'Approver'),
('Ty', 'Kuhn', 'TyKuhn', 'TyKuhn', '462dbf63a3d4d1564e05270beb1949b9b2d69e39f7e0a94d0630c1a5e4446d1a9ac79ad1eb0b50e8deb4a4d1e420fdc424851dd4463ffb7df28248badae58674', 54, 'Approver'),
('Warren', 'Peace', 'WarrenPeace', 'WarrenPeace', '6d39dc3592e2ce3c41d4df47e55cc8ef689fef0bb263be71a26f0ced4653b80fb2ee0af16643b615ecb483338aec0f4cf11bab88c86f6798c97315b1f9092dca', 46, 'Approver'),
('Wazziz', 'Naime', 'WazzizNaime', 'WazzizNaime', '843b232758e84c2fb631e61edc11c186a9bb19f78f26989159e4155da47a0016fb0308ff22aa042f1efb4b66f3b48b822fc0b030abe1872d2740948100518e8c', 55, 'Approver'),
('Wil', 'Doolittle', 'WilDoolittle', 'WilDoolittle', 'c45662f52ef9556cd1f3b9b5ddce8f7fb7459ba3dfc831015bfd8f80047b24c0dfecfa4d4785238bb057d7f0873f38e2ef83f64d93ed8dda271f1ca824a5bff2', 73, 'Approver'),
('Will', 'Tickelu', 'WillTickelu', 'WillTickelu', '3e4730d4272e0c6e6656fb2c8fe28a817140c408c9b190fdd1f4ce8ffb93806c1b9ef5c4a5fc888b899bb16573c43626ea03161c20b17f939edec4a380745403', 7, 'Approver');

-- --------------------------------------------------------

--
-- Stand-in structure for view `PendingRequests`
--
CREATE TABLE IF NOT EXISTS `PendingRequests` (
`request_id` int(11)
,`employee_requesting_pk` int(11)
,`created_on` timestamp
,`modified_on` timestamp
,`deleted_on` timestamp
,`software_name` varchar(255)
,`approver_id` int(11)
,`approver` varchar(511)
,`employee_requesting` varchar(511)
);
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
(50, 'Observation (version 1)', 'OB1', '2018-02-20 20:11:24', NULL, NULL),
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
(70, 'Care Manager', '', '2018-02-20 20:11:24', NULL, NULL),
(71, 'Lab Information System', 'LIS', '2018-02-20 20:11:24', NULL, NULL),
(72, 'Patient Admitter Tool', 'PAT', '2018-02-20 20:11:24', NULL, NULL),
(73, 'Spillage Locator Tool', '', '2018-02-20 20:11:24', NULL, NULL),
(74, 'Environmental Assessor Tool', '', '2018-02-20 20:11:24', NULL, NULL),
(75, 'Statistical Analysis System', 'SAS', '2018-02-20 20:11:24', NULL, NULL),
(76, 'Statistical Package for Social Sciences', 'SPSS', '2018-02-20 20:11:24', NULL, NULL),
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
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `SoftwareRequest`
--

INSERT INTO `SoftwareRequest` (`request_id`, `employee_requesting_pk`, `software_requesting_pk`, `status`, `created_on`, `modified_on`, `deleted_on`) VALUES
(1, 76, 56, 'Approved', '2018-03-18 19:18:45', '2018-03-18 09:28:04', NULL),
(2, 76, 43, 'Denied', '2018-03-18 21:43:10', '2018-03-18 10:58:56', NULL),
(3, 76, 70, 'Approved', '2018-03-18 23:04:36', '2018-03-18 11:07:57', NULL),
(4, 32, 8, 'Pending', '2018-03-18 23:20:51', NULL, NULL),
(5, 76, 5, 'Pending', '2018-03-26 20:52:30', NULL, NULL),
(6, 76, 51, 'Pending', '2018-03-26 21:18:29', NULL, NULL),
(7, 76, 8, 'Pending', '2018-03-26 21:20:10', NULL, NULL),
(8, 76, 5, 'Pending', '2018-03-26 21:20:28', NULL, NULL),
(9, 76, 5, 'Approved', '2018-03-26 21:22:04', '2018-03-26 09:34:54', NULL),
(10, 76, 33, 'Pending', '2018-03-26 21:28:21', NULL, NULL),
(11, 76, 64, 'Pending', '2018-03-26 21:29:20', NULL, NULL),
(12, 76, 68, 'RequestInfo', '2018-03-26 21:32:13', '2018-03-26 09:40:08', NULL),
(13, 76, 68, 'Denied', '2018-03-26 21:33:15', '2018-03-26 09:40:30', NULL);

-- --------------------------------------------------------

--
-- Structure for view `CompletedRequests`
--
DROP TABLE IF EXISTS `CompletedRequests`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `CompletedRequests` AS select `SoftwareRequest`.`request_id` AS `request_id`,`SoftwareRequest`.`employee_requesting_pk` AS `employee_requesting_pk`,`SoftwareRequest`.`created_on` AS `created_on`,`SoftwareRequest`.`modified_on` AS `modified_on`,`SoftwareRequest`.`deleted_on` AS `deleted_on`,`Software`.`software_name` AS `software_name`,`SoftwareRequest`.`status` AS `status` from ((`ApprovalComments` left join `SoftwareRequest` on((`SoftwareRequest`.`request_id` = `ApprovalComments`.`request_pk`))) left join `Software` on((`Software`.`software_id` = `SoftwareRequest`.`software_requesting_pk`))) where (((`SoftwareRequest`.`status` = 'Approved') or (`SoftwareRequest`.`status` = 'Denied')) and isnull(`SoftwareRequest`.`deleted_on`)) group by `SoftwareRequest`.`request_id`;

-- --------------------------------------------------------

--
-- Structure for view `PendingRequests`
--
DROP TABLE IF EXISTS `PendingRequests`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `PendingRequests` AS select `SoftwareRequest`.`request_id` AS `request_id`,`SoftwareRequest`.`employee_requesting_pk` AS `employee_requesting_pk`,`SoftwareRequest`.`created_on` AS `created_on`,`SoftwareRequest`.`modified_on` AS `modified_on`,`SoftwareRequest`.`deleted_on` AS `deleted_on`,`Software`.`software_name` AS `software_name`,`approver`.`employee_id` AS `approver_id`,concat(`approver`.`employee_first_name`,' ',`approver`.`employee_last_name`) AS `approver`,concat(`emp`.`employee_first_name`,' ',`emp`.`employee_last_name`) AS `employee_requesting` from ((((`ApprovalComments` left join `SoftwareRequest` on((`SoftwareRequest`.`request_id` = `ApprovalComments`.`request_pk`))) left join `Software` on((`Software`.`software_id` = `SoftwareRequest`.`software_requesting_pk`))) left join `Employees` `approver` on((`approver`.`employee_id` = `ApprovalComments`.`approver_pk`))) left join `Employees` `emp` on((`emp`.`employee_id` = `SoftwareRequest`.`employee_requesting_pk`))) where ((`SoftwareRequest`.`status` <> 'Approved') and (`ApprovalComments`.`status` <> 'Denied') and isnull(`SoftwareRequest`.`deleted_on`) and `ApprovalComments`.`comment_pk` in (select max(`ApprovalComments`.`comment_pk`) from `ApprovalComments` group by `ApprovalComments`.`request_pk`));

--
-- Indexes for dumped tables
--

--
-- Indexes for table `ApprovalComments`
--
ALTER TABLE `ApprovalComments`
 ADD PRIMARY KEY (`comment_pk`);

--
-- Indexes for table `Employees`
--
ALTER TABLE `Employees`
 ADD PRIMARY KEY (`employee_id`);

--
-- Indexes for table `Logins`
--
ALTER TABLE `Logins`
 ADD PRIMARY KEY (`email`);

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
-- Indexes for table `SoftwareRequest`
--
ALTER TABLE `SoftwareRequest`
 ADD PRIMARY KEY (`request_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `ApprovalComments`
--
ALTER TABLE `ApprovalComments`
MODIFY `comment_pk` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=31;
--
-- AUTO_INCREMENT for table `Employees`
--
ALTER TABLE `Employees`
MODIFY `employee_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=77;
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
--
-- AUTO_INCREMENT for table `SoftwareRequest`
--
ALTER TABLE `SoftwareRequest`
MODIFY `request_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=14;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
