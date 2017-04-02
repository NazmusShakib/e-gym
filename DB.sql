-- phpMyAdmin SQL Dump
-- version 4.5.4.1deb2ubuntu2
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Mar 05, 2017 at 11:38 AM
-- Server version: 5.7.17-0ubuntu0.16.04.1
-- PHP Version: 7.0.15-0ubuntu0.16.04.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `gym`
--

-- --------------------------------------------------------

--
-- Table structure for table `auth_user`
--

CREATE TABLE `auth_user` (
  `id` int(11) NOT NULL,
  `login_id` varchar(20) NOT NULL,
  `pass_key` varchar(30) NOT NULL,
  `security` varchar(50) NOT NULL,
  `level` int(2) NOT NULL,
  `sex` varchar(10) NOT NULL,
  `name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `auth_user`
--

INSERT INTO `auth_user` (`id`, `login_id`, `pass_key`, `security`, `level`, `sex`, `name`) VALUES
(1, 'azizul', '123456', 'admin_gtg', 5, 'male', 'Mr.Shahzad Azij'),
(3, 'mithun', '123456', 'admingalaxy', 4, 'male', 'Assistant');

-- --------------------------------------------------------

--
-- Table structure for table `mem_types`
--

CREATE TABLE `mem_types` (
  `id` int(11) NOT NULL,
  `mem_type_id` varchar(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `days` int(11) NOT NULL,
  `rate` int(11) NOT NULL,
  `details` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `mem_types`
--

INSERT INTO `mem_types` (`id`, `mem_type_id`, `name`, `days`, `rate`, `details`) VALUES
(1, 'PXTELFNR', 'Monthly_Men_NEW', 30, 1000, 'All Machines Without Cardio ,New Registration+Fees'),
(2, 'HVYWDMXC', 'Monthly_Men_Full', 30, 1600, 'All Machines With Cardio ,New Registration+Fees'),
(3, 'ZOTUSMYD', 'Monthly_Men_Regular', 30, 800, 'All Machines Without Cardio ,Existing Member'),
(4, 'BEFDOUHV', 'Monthly_Men_Full_Regular', 30, 1500, 'All Machines With Cardio , Existing Member'),
(5, 'QYEHWPSV', 'Quaterly_Men_Regular', 90, 2200, 'All Machines Without Cardio  For 3 Months'),
(6, 'GCABPZMH', 'Quaterly_Men_Full', 90, 4000, 'All Machines With Cardio  For 3 Months'),
(7, 'HRVDUZBM', 'Half_Yearly_Men_Regular', 181, 4000, 'All Machines Without Cardio  For 6 Months'),
(8, 'LYBWHPZE', 'Half_Yearly_Men_Full', 181, 7500, 'All Machines With Cardio  For 6 Months'),
(9, 'GAHMKCYI', 'Yearly_Men_Regular', 365, 7500, 'All Machines Without Cardio  For 12 Months'),
(10, 'KTULDPWJ', 'Yearly_Men_Full', 365, 14000, 'All Machines With Cardio  For 12 Months'),
(11, 'ZUIWXYDR', 'Women_New_REG', 30, 1100, 'All Machines  For 30 Days ,New Registration'),
(12, 'CLEBRHFK', 'Women_Monthly_Regular', 30, 1000, 'All Machines  For 30 Days ,Existing Member'),
(13, 'YKAONRTB', 'Women_Quaterly_Regular', 90, 2800, 'All Machines  For 3 Months'),
(14, 'KCVNYQLE', 'Women_Half_Year', 181, 5000, 'All Machines  For 6 Months'),
(15, 'ELJKHFDN', 'Women_Yearly', 365, 9500, 'All Machines  For 12 Months'),
(16, 'ZDJLFBMW', 'Women_2months', 61, 1900, 'all machines for two months only');

-- --------------------------------------------------------

--
-- Table structure for table `subsciption`
--

CREATE TABLE `subsciption` (
  `id` int(7) NOT NULL,
  `mem_id` int(20) NOT NULL,
  `name` varchar(100) NOT NULL,
  `sub_type` varchar(100) NOT NULL,
  `paid_date` date NOT NULL,
  `expiry` date NOT NULL,
  `total` int(11) NOT NULL,
  `paid` int(11) NOT NULL,
  `invoice` varchar(30) NOT NULL,
  `sub_type_name` text NOT NULL,
  `bal` int(11) NOT NULL,
  `exp_time` bigint(20) NOT NULL,
  `renewal` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `subsciption`
--

INSERT INTO `subsciption` (`id`, `mem_id`, `name`, `sub_type`, `paid_date`, `expiry`, `total`, `paid`, `invoice`, `sub_type_name`, `bal`, `exp_time`, `renewal`) VALUES
(1, 1386086774, 'musarrat husain', 'HVYWDMXC', '2013-12-03', '2014-01-02', 1500, 1500, '86086783gus', 'Monthly_Men_Full', 0, 1388617200, 'yes'),
(2, 1386093500, 'mhd shoeb', 'PXTELFNR', '2013-12-03', '2014-01-02', 800, 800, '860936401st', 'Monthly_Men_NEW', 0, 1388617200, 'yes'),
(3, 1386106070, 'Mrs atiya hashmi', 'ZUIWXYDR', '2013-12-03', '2014-01-02', 1000, 1000, '86106818pua', 'Women_New_REG', 0, 1388617200, 'yes'),
(5, 1386108023, 'miss anusha', 'ZUIWXYDR', '2013-12-03', '2014-01-02', 1000, 500, '86108172q5w', 'Women_New_REG', 500, 1388617200, 'yes'),
(7, 1386125905, 'tabish akhtar', 'PXTELFNR', '2013-12-04', '2014-01-03', 700, 700, '86126054kxj', 'Monthly_Men_NEW', 0, 1388703600, 'yes'),
(8, 1386126104, 'usman ahmad', 'PXTELFNR', '2013-12-04', '2014-01-03', 700, 700, '86126232v4f', 'Monthly_Men_NEW', 0, 1388703600, 'yes'),
(9, 1386129196, 'rashid mehmood', 'GCABPZMH', '2013-12-03', '2014-03-03', 3000, 1000, '8612933435x', 'Quaterly_Men_Full', 2000, 1393801200, 'yes'),
(10, 1386129870, 'imtiyaz', 'PXTELFNR', '2013-12-04', '2014-01-03', 600, 600, '86130004a95', 'Monthly_Men_NEW', 0, 1388703600, 'yes'),
(11, 1386130303, 'ayash manzoor dar', 'PXTELFNR', '2013-12-04', '2014-01-03', 600, 600, '86130310gf8', 'Monthly_Men_NEW', 0, 1388703600, 'yes'),
(12, 1386130567, 'naved', 'PXTELFNR', '2013-12-04', '2014-01-03', 800, 800, '86130696l0a', 'Monthly_Men_NEW', 0, 1388703600, 'yes'),
(13, 1386133944, 'taqui khan', 'PXTELFNR', '2013-12-04', '2014-01-03', 600, 600, '861340788xn', 'Monthly_Men_NEW', 0, 1388703600, 'yes'),
(14, 1386138067, 'sheikh sameer', 'HVYWDMXC', '2013-12-04', '2014-01-03', 1100, 1100, '86138082v8n', 'Monthly_Men_Full', 0, 1388703600, 'yes'),
(15, 1386209066, 'Miss saima', 'ZUIWXYDR', '2013-12-05', '2014-01-04', 1000, 1000, '862092878sa', 'Women_New_REG', 0, 1388790000, 'yes'),
(16, 1386211305, 'ahtasham', 'QYEHWPSV', '2013-12-05', '2014-03-05', 1800, 1000, '86211388zx4', 'Quaterly_Men_Regular', 800, 1393974000, 'yes'),
(17, 1386212668, 'Dr maroof', 'PXTELFNR', '2013-12-05', '2014-01-04', 500, 500, '862128456yq', 'Monthly_Men_NEW', 0, 1388790000, 'yes'),
(18, 1386213261, 'Dr nawazish', 'PXTELFNR', '2013-12-05', '2014-01-04', 500, 500, '86213381rhj', 'Monthly_Men_NEW', 0, 1388790000, 'yes'),
(19, 1386216791, 'riyaz bhut', 'QYEHWPSV', '2013-12-05', '2014-03-05', 1800, 1000, '86216937usn', 'Quaterly_Men_Regular', 800, 1393974000, 'yes'),
(20, 1386217099, 'lateef', 'PXTELFNR', '2013-12-05', '2014-01-04', 600, 600, '862172322fx', 'Monthly_Men_NEW', 0, 1388790000, 'yes'),
(21, 1386217254, 'tajamul', 'PXTELFNR', '2013-12-05', '2014-01-04', 600, 600, '86217364jsw', 'Monthly_Men_NEW', 0, 1388790000, 'yes'),
(22, 1386252983, 'ahmad zia', 'GCABPZMH', '2013-12-05', '2014-03-05', 3000, 1000, '86253120gbo', 'Quaterly_Men_Full', 2000, 1393974000, 'yes'),
(23, 1386202028, 'muzaffar', 'QYEHWPSV', '2013-12-05', '2014-03-05', 1800, 500, '862021889gt', 'Quaterly_Men_Regular', 1300, 1393974000, 'yes'),
(24, 1386249335, 'junaid baigh', 'CLEBRHFK', '2013-12-05', '2014-01-04', 1000, 1000, '86249437qud', 'Women_Monthly_Regular', 0, 1388790000, 'yes'),
(25, 1386249987, 'fazy', 'ZUIWXYDR', '2013-12-05', '2014-01-04', 1000, 1000, '86250097ltp', 'Women_New_REG', 0, 1388790000, 'yes'),
(26, 1386255683, 'anwar', 'HVYWDMXC', '2013-12-05', '2014-01-04', 1200, 1200, '86255794oyr', 'Monthly_Men_Full', 0, 1388790000, 'yes'),
(27, 1386295878, 'faaia gul', 'GCABPZMH', '2013-12-06', '2014-03-06', 3300, 3300, '86296040n92', 'Quaterly_Men_Full', 0, 1394060400, 'yes'),
(28, 1386296778, 'SHAD', 'PXTELFNR', '2013-12-06', '2014-01-05', 400, 400, '86296892jke', 'Monthly_Men_NEW', 0, 1388876400, 'yes'),
(29, 1386296914, 'tabish', 'PXTELFNR', '2013-12-06', '2014-01-05', 400, 400, '86296984pdf', 'Monthly_Men_NEW', 0, 1388876400, 'yes'),
(30, 1386297818, 'zaid', 'HVYWDMXC', '2013-12-06', '2014-01-05', 1000, 1000, '862980205wo', 'Monthly_Men_Full', 0, 1388876400, 'yes'),
(31, 1386298053, 'osama', 'HVYWDMXC', '2013-12-06', '2014-01-05', 1500, 1500, '86298138ok0', 'Monthly_Men_Full', 0, 1388876400, 'yes'),
(32, 1386330610, 'maqsoom', 'LYBWHPZE', '2013-12-06', '2014-06-05', 6000, 2000, '86330746n75', 'Half_Yearly_Men_Full', 4000, 1401922800, 'yes'),
(33, 1386369265, 'TARIQUE KHAN', 'GCABPZMH', '2013-12-06', '2014-03-06', 3000, 3000, '86369386bi8', 'Quaterly_Men_Full', 0, 1394060400, 'yes'),
(34, 1386370032, 'zabeen ansari', 'HRVDUZBM', '2013-12-06', '2014-06-05', 3000, 500, '86370144k4d', 'Half_Yearly_Men_Regular', 2500, 1401922800, 'yes'),
(35, 1386468683, 'Mohd. hamza', 'PXTELFNR', '2013-12-08', '2014-01-07', 800, 800, '864688183tz', 'Monthly_Men_NEW', 0, 1389049200, 'yes'),
(36, 1386593892, 'ansar ahmad siddiqui', 'LYBWHPZE', '2013-12-09', '2014-06-08', 7000, 1000, '86594017h1u', 'Half_Yearly_Men_Full', 6000, 1402182000, 'yes'),
(37, 1386594430, 'fahad ahmad siddiqui', 'HRVDUZBM', '2013-12-09', '2014-06-08', 3000, 3000, '86594538ehs', 'Half_Yearly_Men_Regular', 0, 1402182000, 'yes'),
(38, 1386594620, 'aman', 'PXTELFNR', '2013-12-09', '2014-01-08', 800, 800, '865947677nq', 'Monthly_Men_NEW', 0, 1389135600, 'yes'),
(39, 1386606095, 'zar nigar', 'CLEBRHFK', '2013-12-09', '2014-01-08', 1000, 1000, '86606255nse', 'Women_Monthly_Regular', 0, 1389135600, 'yes'),
(40, 1386629182, 'Mr rehan', 'PXTELFNR', '2013-12-09', '2014-01-08', 800, 800, '866293285js', 'Monthly_Men_NEW', 0, 1389135600, 'yes'),
(41, 1386631223, 'saif', 'QYEHWPSV', '2013-12-10', '2014-03-10', 1800, 1800, '866313483bp', 'Quaterly_Men_Regular', 0, 1394406000, 'yes'),
(42, 1386635456, 'ubair shah', 'QYEHWPSV', '2013-12-10', '2014-03-10', 2000, 2000, '86635567xeg', 'Quaterly_Men_Regular', 0, 1394406000, 'yes'),
(44, 1386641192, 'naeem ahmad', 'ZOTUSMYD', '2013-12-10', '2014-01-09', 800, 800, '86641277xla', 'Monthly_Men_Regular', 0, 1389222000, 'yes'),
(45, 1386644496, 'mohd shahnawaz alam', 'PXTELFNR', '2013-12-10', '2014-01-09', 800, 800, '86644683bz0', 'Monthly_Men_NEW', 0, 1389222000, 'yes'),
(46, 1386677793, 'md. atif', 'HVYWDMXC', '2013-12-10', '2014-01-09', 1000, 1000, '86678005ftu', 'Monthly_Men_Full', 0, 1389222000, 'yes'),
(47, 1386678046, 'md amir', 'HVYWDMXC', '2013-12-10', '2014-01-09', 1000, 1000, '86678162pkh', 'Monthly_Men_Full', 0, 1389222000, 'yes'),
(48, 1386678189, 'naved akhtar', 'PXTELFNR', '2013-12-10', '2014-01-09', 1000, 1000, '86678292i72', 'Monthly_Men_NEW', 0, 1389222000, 'yes'),
(49, 1386686396, 'Zafar Nadeem', 'GCABPZMH', '2013-12-10', '2014-03-10', 3500, 3500, '86686531ts2', 'Quaterly_Men_Full', 0, 1394406000, 'yes'),
(50, 1386714453, 'ghazni khan', 'HVYWDMXC', '2013-12-10', '2014-01-09', 1000, 1000, '8671457363x', 'Monthly_Men_Full', 0, 1389222000, 'yes'),
(52, 1386731294, 'muneer', 'PXTELFNR', '2013-12-11', '2014-01-10', 800, 800, '86731465j6g', 'Monthly_Men_NEW', 0, 1389308400, 'yes'),
(53, 1386765040, 'mohd nawab', 'QYEHWPSV', '2013-12-11', '2014-03-11', 2000, 2000, '86765155c8k', 'Quaterly_Men_Regular', 0, 1394492400, 'yes'),
(54, 1386765179, 'ghulam mohd', 'QYEHWPSV', '2013-12-11', '2014-03-11', 2000, 1000, '86765264aov', 'Quaterly_Men_Regular', 1000, 1394492400, 'yes'),
(55, 1386812539, 'jafer abid', 'PXTELFNR', '2013-12-12', '2014-01-11', 600, 600, '86812671fnr', 'Monthly_Men_NEW', 0, 1389394800, 'yes'),
(56, 1386812716, 'amir kamal', 'PXTELFNR', '2013-12-12', '2014-01-11', 600, 600, '868128030e6', 'Monthly_Men_NEW', 0, 1389394800, 'yes'),
(57, 1386889268, 'ajaz ahmad', 'HVYWDMXC', '2013-12-13', '2014-01-12', 1500, 1500, '86889514neo', 'Monthly_Men_Full', 0, 1389481200, 'yes'),
(58, 1386897293, 'kashif', 'PXTELFNR', '2013-12-13', '2014-01-12', 800, 800, '86897436n58', 'Monthly_Men_NEW', 0, 1389481200, 'yes'),
(59, 1386961992, 'amreen', 'ZDJLFBMW', '2013-12-13', '2014-02-12', 1500, 1500, '86962079l60', 'Women_2months', 0, 1392159600, 'yes'),
(60, 1386962311, 'aafreen adnan', 'ZDJLFBMW', '2013-12-13', '2014-02-12', 1500, 1500, '86962317t51', 'Women_2months', 0, 1392159600, 'yes'),
(61, 1386979227, 'ASIF', 'HVYWDMXC', '2013-12-14', '2014-01-13', 1500, 1500, '86979315j0z', 'Monthly_Men_Full', 0, 1389567600, 'yes'),
(62, 1386982726, 'mohd suhaib', 'HVYWDMXC', '2013-12-14', '2014-01-13', 1000, 1000, '86983169a8u', 'Monthly_Men_Full', 0, 1389567600, 'yes'),
(63, 1386986975, 'salman', 'PXTELFNR', '2013-12-14', '2014-01-13', 800, 800, '86987134sh2', 'Monthly_Men_NEW', 0, 1389567600, 'yes');

-- --------------------------------------------------------

--
-- Table structure for table `time_table`
--

CREATE TABLE `time_table` (
  `id` int(11) NOT NULL,
  `mem_id` varchar(20) NOT NULL,
  `name` varchar(50) NOT NULL,
  `details` text NOT NULL,
  `date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `time_table`
--

INSERT INTO `time_table` (`id`, `mem_id`, `name`, `details`, `date`) VALUES
(1, '1386108023', 'miss anusha', 'FITNESS\r\nSPIN BIKE              10 MIN\r\nCROSS TRAINER  FUNCTIONAL\r\nTRD ML                 FUNCTIONAL\r\nRECOMBNT BIKE  FUNCTIONAL\r\nVIBRATOR               10 MIN', '2013-12-06');

-- --------------------------------------------------------

--
-- Table structure for table `user_data`
--

CREATE TABLE `user_data` (
  `id` int(7) NOT NULL,
  `wait` varchar(10) NOT NULL,
  `newid` int(20) NOT NULL,
  `name` varchar(50) NOT NULL,
  `address` text NOT NULL,
  `contact` bigint(20) NOT NULL,
  `email` varchar(100) NOT NULL,
  `pic_add` text NOT NULL,
  `height` float NOT NULL,
  `weight` int(11) NOT NULL,
  `joining` date NOT NULL,
  `age` int(11) NOT NULL,
  `sex` varchar(10) NOT NULL,
  `proof` text NOT NULL,
  `other_proof` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user_data`
--

INSERT INTO `user_data` (`id`, `wait`, `newid`, `name`, `address`, `contact`, `email`, `pic_add`, `height`, `weight`, `joining`, `age`, `sex`, `proof`, `other_proof`) VALUES
(1, 'no', 1386086774, 'musarrat husain', 'f.41 abul fazal enclave', 9871595895, 'musarrat.husaingmail.com', '../images/1386086774.jpg', 5.7, 79, '2013-12-03', 28, 'Male', 'Voter Card', ' '),
(2, 'no', 1386093500, 'mhd shoeb', '', 8010836810, 'm.shuaib1588@gmail.com', '../images/1386093500.jpg', 5.8, 70, '2013-12-03', 23, 'Male', 'Voter Card', ' '),
(3, 'no', 1386106070, 'Mrs atiya hashmi', 'N70/103 KHALILULLAH MASJID', 9810442360, 'Saimahashmi70@gmail.com', '../images/1386106070.jpg', 5.1, 72, '2013-12-03', 42, 'Female', 'Others', 'N.A'),
(5, 'no', 1386108023, 'miss anusha', 'manh girls hostel', 9818362102, 'galaxy@gmail.com', '../images/1386108023.jpg', 5.3, 80, '2013-12-03', 20, 'Female', 'Others', 'marj sheet'),
(8, 'no', 1386125905, 'tabish akhtar', 'n 23 ground floor khalilullah masjid', 8802862657, 'tabish0422000@gmail.co', '../images/1386125905.jpg', 5.5, 56, '2013-12-04', 24, 'Male', 'Driving License', ' '),
(9, 'no', 1386126104, 'usman ahmad', 'n23 batla house jamia nagar', 9654946346, 'usman.aks007@gmail.com', '../images/1386126104.jpg', 5.7, 51, '2013-12-04', 21, 'Male', 'Others', 'i.d jamia'),
(10, 'no', 1386129196, 'rashid mehmood', 'm19 third floor khalilullah masjid', 9953486161, 'rashid.sogmail.com', '../images/1386129196.jpg', 5.7, 76, '2013-12-04', 33, 'Male', 'Driving License', ' '),
(11, 'no', 1386129870, 'imtiyaz', 'N111 batla house', 8476096695, 'younis@gmail.com', '../images/1386129870.jpg', 5.1, 0, '2013-12-04', 22, 'Male', 'PAN Card', ' '),
(12, 'no', 1386130303, 'ayash manzoor dar', 'N111 batla house', 8476096695, 'ayash@gmail.com', '../images/1386130303.jpg', 5.11, 65, '2013-12-04', 24, 'Male', 'PAN Card', ' '),
(13, 'no', 1386130567, 'naved', 'o block 40 20 fita road bala house', 9891396987, 'navedalam05.mba@gmail.com', '../images/1386130567.jpg', 5.6, 64, '2013-12-04', 25, 'Male', 'Driving License', ' '),
(14, 'no', 1386133944, 'taqui khan', 'N 71 fourth floor sailing club road', 9911443058, 'galaxy@gmail.com', '../images/1386133944.jpg', 5.9, 70, '2013-12-04', 28, 'Male', 'Voter Card', ' '),
(15, 'no', 1386138067, 'sheikh sameer', 'A114/1 johri form nooru nagar', 9811103747, 'sheikhmails@gmail.com', '../images/1386138067.jpg', 5.7, 69, '2013-12-04', 37, 'Male', 'Voter Card', ' '),
(16, 'no', 1386209066, 'Miss saima', 'N70/103 KHALILULLAH MASJID', 9810442360, 'Saimahashmi70@gmail.com', '../images/1386209066.jpg', 0, 0, '2013-12-05', 0, 'Female', 'Others', 'N.A'),
(17, 'no', 1386211305, 'ahtasham', 'n 63 batla house', 9811683569, 'ehtasham147@gmail.com', '../images/1386211305.jpg', 6, 78, '2013-12-05', 21, 'Male', 'Driving License', ' '),
(18, 'no', 1386212668, 'Dr maroof', 'k 18 alsha poly clinic', 9718509863, 'maroofali71@gmail.com', '../images/1386212668.jpg', 6, 85, '2013-12-05', 24, 'Male', 'Others', 'N.A'),
(19, 'no', 1386213261, 'Dr nawazish', 'p11 street no 8 near noor jahan masjid', 9540970203, 'N.a', '../images/1386213261.jpg', 5.11, 70, '2013-12-05', 25, 'Male', 'Voter Card', ' '),
(20, 'no', 1386216791, 'riyaz bhut', '40 noor nagar', 9810690565, 'lapashmina@yahoo.com', '../images/1386216791.jpg', 5.9, 70, '2013-12-05', 36, 'Male', 'Voter Card', ' '),
(21, 'no', 1386217099, 'lateef', 'A 63 okhla vihar', 9891802018, 'lateefdar@gmail.com', '../images/1386217099.jpg', 5.6, 70, '2013-12-05', 23, 'Male', 'Others', 'N.A'),
(22, 'no', 1386217254, 'tajamul', 'n 70 batla house okhla', 9873778800, 'tajamul@gmail.com', '../images/1386217254.jpg', 5.7, 82, '2013-12-05', 30, 'Male', 'Driving License', ' '),
(23, 'no', 1386252983, 'ahmad zia', 'n 1 batla house', 9811006654, 'azia_30@yahoo.co.in', '../images/1386252983.jpg', 5.6, 85, '2013-12-05', 42, 'Male', 'Voter Card', ' '),
(24, 'no', 1386202028, 'muzaffar', 'A 29 noor nagar', 9871131073, 'N.A', '../images/1386202028.jpg', 5.7, 79, '2013-12-05', 36, 'Male', 'Voter Card', ' '),
(25, 'no', 1386249335, 'junaid baigh', 'M 12 khalilullah masjid', 9891351749, 'mountaineer005@gmail.com', '../images/1386249335.jpg', 5.1, 67, '2013-12-05', 24, 'Male', 'Voter Card', ' '),
(26, 'no', 1386249987, 'fazy', 'O 16 batla house', 9911670063, 'N.A', '../images/1386249987.jpg', 5.1, 0, '2013-12-05', 25, 'Male', 'Voter Card', ' '),
(27, 'no', 1386255683, 'anwar', 'N 95/1 third floor khalilullah masjid', 9810326067, 'N.A', '../images/1386255683.jpg', 5.8, 79, '2013-12-05', 49, 'Male', 'Driving License', ' '),
(30, 'no', 1386295878, 'faaiz gul', 'NO 787 gali no 18 zakir nagar', 9899224752, 'faaizz@gmail.com', '../images/1386295878.jpg', 6, 76, '2013-12-06', 27, 'Male', 'Others', 'r.c'),
(31, 'no', 1386296778, 'SHAD', 'f 19/2 nafees road heeba clinic', 9958966845, 'shad2965@gmail.com', '../images/1386296778.jpg', 5.9, 72, '2013-12-06', 22, 'Male', 'Others', 'card'),
(32, 'no', 1386296914, 'tabish', 'f 19/2 nafees road heeba clinic', 9810473774, 'zaheertabish6@gmail.com', '../images/1386296914.jpg', 5.1, 72, '2013-12-06', 23, 'Male', 'Others', 'card'),
(33, 'no', 1386297818, 'zaid', 'N 74 sailing club', 9999790766, 'mdosama@gmail.com', '../images/1386297818.jpg', 0, 0, '2013-12-06', 14, 'Male', 'Passport', ' '),
(34, 'no', 1386298053, 'osama', 'N 74 sailing club', 9999790766, 'mdosama@gmail.com', '../images/1386298053.jpg', 5.9, 71, '2013-12-06', 22, 'Male', 'Passport', ' '),
(35, 'no', 1386330610, 'maqsoom', 's 10/106 first floor joga bai ext', 9015469115, 'maansari79@gmail.com', '../images/1386330610.jpg', 5.6, 67, '2013-12-06', 34, 'Male', 'Voter Card', ' '),
(41, 'no', 1386369265, 'TARIQUE KHAN', 'M 39 first floor khalilullah masjid', 9911822910, 'TARIQUE.KHAN@SNAPDEAL.COM', '../images/1386369265.jpg', 5.11, 79, '2013-12-06', 28, 'Male', 'PAN Card', ' '),
(42, 'no', 1386370032, 'zabeen ansari', 's 10/106 first floor joga bai ext', 9555022557, 'zabeenansari@gmail.com', '../images/1386370032.jpg', 5.7, 72, '2013-12-06', 23, 'Male', 'Others', 'c.c'),
(43, 'no', 1386468683, 'Mohd. hamza', 'N 74 sailing club', 9999722712, 'mdhamza234@gmail.com', '../images/1386468683.jpg', 5.9, 57, '2013-12-08', 19, 'Male', 'Driving License', ' '),
(45, 'no', 1386593892, 'ansar ahmad siddiqui', 'chinar apartment sailing club road lane no 1 batla house extn.', 9560500788, 'indiatexts@gmail.com', '../images/1386593892.jpg', 5.1, 74, '2013-12-09', 45, 'Male', 'Driving License', ' '),
(46, 'no', 1386594430, 'fahad ahmad siddiqui', 'chinar appartment sailing club road batla house extn. okhla', 9990026281, 'fasfahadahmadsiddiqui', '../images/1386594430.jpg', 5.6, 52, '2013-12-09', 19, 'Male', 'Driving License', ' '),
(47, 'no', 1386594620, 'aman', 'h 108 batla house okhla', 7503206456, 'N.A', '../images/1386594620.jpg', 5.1, 58, '2013-12-09', 21, 'Male', 'Others', 'report'),
(48, 'no', 1386606095, 'zar nigar', 'N 83/B khalilullah masjid near pink gym', 9911970166, 'khan.zarnigar35@gmaol.com', '../images/1386606095.jpg', 5.1, 69, '2013-12-09', 37, 'Female', 'Others', 'N.A'),
(49, 'no', 1386629182, 'Mr rehan', 'P 20.20 futa road khalilullah masjid', 9990252576, 'N.A', '../images/1386629182.jpg', 5.6, 68, '2013-12-09', 26, 'Male', 'Driving License', ' '),
(50, 'no', 1386631223, 'saif', 'I 33/2 batla house okhla', 989147, 'saif.malik125@gmail.com', '../images/1386631223.jpg', 5.7, 82, '2013-12-10', 19, 'Male', 'Passport', ' '),
(51, 'no', 1386635456, 'ubair shah', 'M 13 second floor batla house', 0, 'ubairshahq@gmail.com', '../images/1386635456.jpg', 6.2, 82, '2013-12-10', 22, 'Male', 'Driving License', ' '),
(53, 'no', 1386641192, 'naeem ahmad', 'M 4 third floor sailing club road batla house', 9911190111, 'naeemahmed111gmail.com', '../images/1386641192.jpg', 6, 87, '2013-12-10', 41, 'Male', 'Voter Card', ' '),
(54, 'no', 1386644496, 'mohd shahnawaz alam', 'G 53/6 muradi road batla house jamia nagar', 9015762465, 'shahnawazalam1690@gmail.com', '../images/1386644496.jpg', 5.7, 55, '2013-12-10', 23, 'Male', 'Voter Card', ' '),
(55, 'no', 1386677793, 'md. atif', 'H 42 batlahouse jamia nagar', 9811699660, 'atif.9977@gmail.com', '../images/1386677793.jpg', 5.8, 72, '2013-12-10', 25, 'Male', 'Voter Card', ' '),
(56, 'no', 1386678046, 'md amir', 'H 42 batlahouse jamia nagar', 9990893130, 'amirsheikh@asia.com', '../images/1386678046.jpg', 5.9, 85, '2013-12-10', 23, 'Male', 'Voter Card', ' '),
(57, 'no', 1386678189, 'naved akhtar', 'H 42 batlahouse jamia nagar', 9990655716, 'naved00786@gmail.com', '../images/1386678189.jpg', 5.9, 70, '2013-12-10', 26, 'Male', 'Voter Card', ' '),
(59, 'no', 1386686396, 'Zafar Nadeem', 'S 10/3 nafees road batla house okhla', 9999497192, 'zafarn0@gmail.com', '../images/1386686396.jpg', 5.7, 73, '2013-12-10', 32, 'Male', 'Driving License', ' '),
(60, 'no', 1386714453, 'ghazni khan', 'M 36 second floor near chinar aprtmnt batla house okhla', 9456078786, 'gfhazinikhan87@gmail.com', '../images/1386714453.jpg', 5.7, 76, '2013-12-10', 26, 'Male', 'Voter Card', ' '),
(62, 'no', 1386731294, 'muneer', 'N 9 sailing club road batla house jamia nagar', 9654635698, 'muneerkhan580@gmail.com', '../images/1386731294.jpg', 5.7, 57, '2013-12-11', 18, 'Male', 'Driving License', ' '),
(63, 'no', 1386765040, 'mohd nawab', 'O 49/2 batla house jamia nagar okhla', 9718139747, 'galaxythegym@gmail.com', '../images/1386765040.jpg', 5.6, 82, '2013-12-11', 23, 'Male', 'Driving License', ' '),
(64, 'no', 1386765179, 'ghulam mohd', 'P59 batla house jamia nagar okhla', 9891020754, 'galaxythe gym.com', '../images/1386765179.jpg', 5.6, 53, '2013-12-11', 21, 'Male', 'Driving License', ' '),
(65, 'no', 1386812539, 'jafer abid', 'R 1 /40 second floor joga bai extn jamia nagar batla house jamia nagar', 8800904413, 'jafer.abid@gmail.com', '../images/1386812539.jpg', 5.8, 55, '2013-12-12', 22, 'Male', 'Voter Card', ' '),
(66, 'no', 1386812716, 'amir kamal', 'R 1 /40 second floor joga bai extn jamia nagar batla house jamia nagar', 8010489182, 'amirkamal512@gmail.com', '../images/1386812716.jpg', 5.11, 53, '2013-12-12', 23, 'Male', 'Voter Card', ' '),
(67, 'no', 1386889268, 'ajaz ahmad', 'm-7 khalilula masjid siling club road99', 9990542872, 'ajaz.sid@gmail.com', '../images/1386889268.jpg', 5.4, 69, '2013-12-13', 42, 'Male', 'Driving License', ' '),
(68, 'no', 1386897293, 'kashif', '161/11 joga bai batla house', 9811647448, 'skashif311@gmail.com', '../images/1386897293.jpg', 5.3, 60, '2013-12-13', 26, 'Male', 'Driving License', ' '),
(69, 'no', 1386961992, 'amreen', 'K 20 batla house near khalilullah masjid', 9582980179, 'amreenabbasi786@gmail.com', '../images/1386961992.jpg', 0, 0, '2013-12-13', 28, 'Female', 'Others', 'na'),
(70, 'no', 1386962311, 'aafreen adnan', 'C 29 second floor batla house', 9560328053, 'aafreenadana@yahoo.com', '../images/1386962311.jpg', 0, 0, '2013-12-13', 28, 'Female', 'Others', 'N.A'),
(71, 'no', 1386979227, 'ASIF', 'k 31 batla house jamia nagar', 9718163239, 'asifrehman007@gmail.com', '../images/1386979227.jpg', 5.7, 75, '2013-12-14', 29, 'Male', 'Voter Card', ' '),
(72, 'no', 1386982726, 'mohd suhaib', 'n-73 khalilula masjid siling club road', 9818508786, 'mohdsuhaib26@gmail.com', '../images/1386982726.jpg', 4.4, 65, '2013-12-14', 15, 'Male', 'Others', ''),
(73, 'no', 1386986975, 'salman', 'R 168 top floor joga bai extn batla house okhla', 9958054630, 'salmanqureshi254@gmail.com', '../images/1386986975.jpg', 5.11, 85, '2013-12-14', 21, 'Male', 'Driving License', ' ');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `auth_user`
--
ALTER TABLE `auth_user`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mem_types`
--
ALTER TABLE `mem_types`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `subsciption`
--
ALTER TABLE `subsciption`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `time_table`
--
ALTER TABLE `time_table`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_data`
--
ALTER TABLE `user_data`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `auth_user`
--
ALTER TABLE `auth_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `mem_types`
--
ALTER TABLE `mem_types`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;
--
-- AUTO_INCREMENT for table `subsciption`
--
ALTER TABLE `subsciption`
  MODIFY `id` int(7) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=64;
--
-- AUTO_INCREMENT for table `time_table`
--
ALTER TABLE `time_table`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `user_data`
--
ALTER TABLE `user_data`
  MODIFY `id` int(7) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=74;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
