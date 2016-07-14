-- phpMyAdmin SQL Dump
-- version 4.2.11
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Jul 14, 2016 at 03:44 PM
-- Server version: 5.6.21
-- PHP Version: 5.6.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `dbmsproject`
--

-- --------------------------------------------------------

--
-- Table structure for table `booksonrent`
--

CREATE TABLE IF NOT EXISTS `booksonrent` (
  `user_name` varchar(30) NOT NULL,
  `ID` int(10) NOT NULL,
  `MobileNumber` varchar(10) NOT NULL,
  `Address` varchar(300) NOT NULL,
  `city` varchar(30) NOT NULL,
  `daysissued` varchar(10) NOT NULL,
  `PayAmnt` int(3) NOT NULL,
  `order_no` varchar(30) NOT NULL,
  `rent` int(6) NOT NULL,
  `Status` varchar(30) NOT NULL DEFAULT 'Approved'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `contactus`
--

CREATE TABLE IF NOT EXISTS `contactus` (
`srno` int(11) NOT NULL,
  `name` varchar(60) NOT NULL,
  `emailid` varchar(50) NOT NULL,
  `mobileno` varchar(10) NOT NULL,
  `purpose` varchar(10) NOT NULL,
  `discription` varchar(1000) NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `contactus`
--

INSERT INTO `contactus` (`srno`, `name`, `emailid`, `mobileno`, `purpose`, `discription`) VALUES
(3, 'abhishekdudhal', 'abhishekdudhal@gmail.com', '9011902243', 'SERVICE', 'WORKING');

-- --------------------------------------------------------

--
-- Table structure for table `courier`
--

CREATE TABLE IF NOT EXISTS `courier` (
`courire_id` bigint(10) NOT NULL,
  `courier_name` varchar(30) NOT NULL,
  `contact` varchar(30) NOT NULL,
  `owner` varchar(30) NOT NULL,
  `city` varchar(30) NOT NULL,
  `email_id` varchar(100) NOT NULL,
  `user_name` varchar(30) NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `courier`
--

INSERT INTO `courier` (`courire_id`, `courier_name`, `contact`, `owner`, `city`, `email_id`, `user_name`) VALUES
(1, 'Maruti Couriers', '9023546578', 'Kaustubh Phulkar', 'Mumbai', 'coolkaustubh007@gmail.com', 'coolkaustubh'),
(2, 'BlueDart', '9878453621', 'Prafulla Sangle', 'Pune', 'prafullasangle15@gmail.com', 'prafullasangle');

-- --------------------------------------------------------

--
-- Table structure for table `feedback`
--

CREATE TABLE IF NOT EXISTS `feedback` (
`srno` int(11) NOT NULL,
  `user_name` varchar(50) NOT NULL,
  `comment` varchar(300) NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `feedback`
--

INSERT INTO `feedback` (`srno`, `user_name`, `comment`) VALUES
(1, 'abhishekdudhal', 'TEST Success. All working smoothly');

-- --------------------------------------------------------

--
-- Table structure for table `mycart`
--

CREATE TABLE IF NOT EXISTS `mycart` (
  `user_name` varchar(30) NOT NULL,
  `BookId` int(10) NOT NULL,
`cartid` int(11) NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `mycart`
--

INSERT INTO `mycart` (`user_name`, `BookId`, `cartid`) VALUES
('abhishekdudhal', 21, 1),
('abhishekdudhal', 15, 3);

-- --------------------------------------------------------

--
-- Table structure for table `nbook`
--

CREATE TABLE IF NOT EXISTS `nbook` (
`BookId` int(10) NOT NULL,
  `BOOKNAME` varchar(66) DEFAULT NULL,
  `Year` varchar(5) DEFAULT NULL,
  `Branch` varchar(20) DEFAULT NULL,
  `Sem` varchar(1) DEFAULT NULL,
  `Author` varchar(44) DEFAULT NULL,
  `PublicatonHouse` varchar(40) DEFAULT NULL,
  `Price` float DEFAULT NULL,
  `Discount` int(2) DEFAULT NULL,
  `Stock` int(10) NOT NULL DEFAULT '100',
  `soldq` int(10) NOT NULL,
  `BookImage` varchar(1000) NOT NULL DEFAULT 'nbook/na.jpg'
) ENGINE=MyISAM AUTO_INCREMENT=224 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `nbook`
--

INSERT INTO `nbook` (`BookId`, `BOOKNAME`, `Year`, `Branch`, `Sem`, `Author`, `PublicatonHouse`, `Price`, `Discount`, `Stock`, `soldq`, `BookImage`) VALUES
(1, 'A Text Book of Engineering Chemistry', 'FY', 'ALL', '1', 'Shashi Chawla', ' Dhanpat Rai ', 270, 10, 100, 0, 'nbook/1.jpg'),
(2, 'Engineering Chemistry', 'FY', 'ALL', '1', 'Jain and Jain', ' Dhanpat Rai ', 790, 15, 100, 0, 'nbook/2.jpg'),
(3, 'Applied Physics', 'FY', 'ALL', '1', 'P.K.Mittal', ' I. K. International publications', 209, 12, 100, 0, 'nbook/3.jpg'),
(4, 'A textbook of Engineering physics', 'FY', 'ALL', '1', 'Avadhanulu & Kshirsagar', ' S.Chand ', 470, 8, 100, 0, 'nbook/4.jpg'),
(5, 'Applied Mathematics I', 'FY', 'ALL', '1', 'C V Kumbhojkar', 'Jamanadas and Co', 370, 10, 100, 0, 'nbook/5.jpg'),
(6, 'Higher Engineering Mathematics', 'FY', 'ALL', '1', 'Dr B.S Grewal', 'Khanna Publication', 600, 20, 100, 0, 'nbook/6.jpg'),
(7, 'Text Book of Electrical Technology', 'FY', 'ALL', '1', 'B.L. Theraja', ' S.Chand ', 475, 9, 100, 0, 'nbook/7.jpg'),
(8, 'Principles in Electrical Engineering', 'FY', 'ALL', '1', ' S. Parker', ' Oxford university', 245, 10, 100, 0, 'nbook/8.jpg'),
(9, 'Engineering Drawing', 'FY', 'ALL', '1', ' N. H. Dubey', ' Nandu Publishers & Printers ', 599, 20, 100, 0, 'nbook/9.jpg'),
(10, 'Engineering Drawing & Machine Drawing', 'FY', 'ALL', '1', ' N. D. Bhatt ', ' V.M. Panchal, Charotar publishing house', 268, 10, 100, 0, 'nbook/10.jpg'),
(11, 'Mechanics for Engineers, Statics and Dynamics', 'FY', 'ALL', '1', 'A K Tayal', ' Umesh Publication', 354, 15, 100, 0, 'nbook/11.jpg'),
(12, 'Mechanics for Engineers', 'FY', 'ALL', '1', 'R C Hibbeler', 'Pearson Education', 644, 10, 100, 0, 'nbook/12.jpg'),
(13, 'C++: The Complete Reference', 'FY', 'ALL', '1', 'Herbert Schildt ', 'Oracle', 560, 5, 0, 10, 'nbook/13.jpg'),
(14, 'Object oriented programming with C++', 'FY', 'ALL', '1', 'E Balguruswamy', ' Tata McGraw Hill', 360, 10, 100, 0, 'nbook/14.jpg'),
(15, 'Let us C', 'FY', 'ALL', '1', 'Yashwant Kanetkar', 'BJB publication', 270, 25, 99, 1, 'nbook/15.jpg'),
(16, 'Advanced Engineering Mathematics ', 'FY', 'ALL', '1', 'H K Dass', ' S Chand', 590, 10, 99, 1, 'nbook/16.jpg'),
(17, 'Engineering Mathematics', 'FY', 'ALL', '2', 'G. V. Kumbhojkar', ' C. Jamnadas & Co', 250, 10, 100, 0, 'nbook/17.jpg'),
(18, 'Advanced Engineering Mathematics', 'SY', 'Civil Engineering', '3', 'H.K.Dass', 'S. Chand', 590, 10, 100, 0, 'nbook/18.jpg'),
(19, 'Theory & Problems In Numerical Methods', 'SY', 'Civil Engineering', '3', 'T. Veerarajan', 'Tata-Mcgraw Hill', 400, 15, 100, 0, 'nbook/19.jpg'),
(20, 'Surveying & Leveling', 'SY', 'Civil Engineering', '3', 'N.N.Basak', 'Tata-Mcgraw Hill', 399, 10, 100, 0, 'nbook/20.jpg'),
(21, 'Surveying', 'SY', 'Civil Engineering', '3', 'R.Agor', 'Khanna Publications', 595, 25, 100, 0, 'nbook/21.jpg'),
(22, 'Building Construction', 'SY', 'Civil Engineering', '3', 'B C Punmiya', 'Laxmi Publications', 695, 10, 100, 0, 'nbook/22.jpg'),
(23, 'Engineering Materials', 'SY', 'Civil Engineering', '3', 'Rangwala', 'Charotar Publication', 200, 15, 100, 0, 'nbook/23.jpg'),
(24, 'Materials of Construction', 'SY', 'Civil Engineering', '3', 'Ghosh', 'Tata McGraw Hill Publications', 295, 6, 100, 0, 'nbook/24.jpg'),
(25, 'Engineering Fluid Mechanics', 'SY', 'Civil Engineering', '3', 'K L Kumar', 'S Chand', 500, 10, 100, 0, 'nbook/25.jpg'),
(26, 'Hydraulics and Fluid Mechanics', 'SY', 'Civil Engineering', '3', 'Dr P M Modi ', 'Standard Book House', 780, 20, 100, 0, 'nbook/26.jpg'),
(27, 'Theory and Applications of Fluid Mechanics', 'SY', 'Civil Engineering', '3', 'K. Subramanya', 'Tata McGraw Hill', 525, 10, 100, 0, 'nbook/27.jpg'),
(28, 'Fluid Mechanics', 'SY', 'Civil Engineering', '3', 'A.K.Jain', 'Khanna Publications', 400, 5, 100, 0, 'nbook/28.jpg'),
(29, 'Mechanics of Structures Vol I', 'SY', 'Civil Engineering', '4', 'S.B. Junnarkar', 'Charotar Publication house', 290, 15, 100, 0, 'nbook/29.jpg'),
(30, 'Mechanics of Materials', 'SY', 'Civil Engineering', '4', 'Peter & Singer', 'McGraw Hill', 1098, 6, 100, 0, 'nbook/30.jpg'),
(31, 'Engineering Mechanics', 'SY', 'Civil Engineering', '4', 'Timoshenko & Young', 'Tata McGraw Hill', 625, 10, 100, 0, 'nbook/31.jpg'),
(32, 'Computational Mathematics', 'SY', 'Civil Engineering', '4', 'G V Kumbhojkar', 'C Jamnadas & Co', 315, 10, 100, 0, 'nbook/32.jpg'),
(33, 'Structural Mechanics Vol I & II', 'SY', 'Civil Engineering', '4', 'Junnarkar', 'Charotar Publishers', 300, 15, 100, 0, 'nbook/33.jpg'),
(34, 'Basic Structural Analysis', 'SY', 'Civil Engineering', '4', 'CS Reddy', 'Tata McGraw Hill', 599, 6, 100, 0, 'nbook/34.jpg'),
(35, 'Engineering and General Geology', 'SY', 'Civil Engineering', '4', 'Parbin Singh', 'S K Kataria & Sons', 195, 10, 100, 0, 'nbook/35.jpg'),
(36, 'Soil Mechanics & Foundation Engineering', 'SY', 'Civil Engineering', '3', 'B C Punmia', 'Laxmi Pub.', 695, 20, 100, 0, 'nbook/36.jpg'),
(37, 'Concepts in Environmental Studies', 'SY', 'Civil Engineering', '4', 'D D Mishra', 'S Chand & Co Ltd', 950, 10, 100, 0, 'nbook/37.jpg'),
(38, 'Applied Maths', 'SY', 'Computer Engineering', '3', 'G. V. Kumbhojkar', 'Jamnadas & Co', 315, 5, 100, 0, 'nbook/38.jpg'),
(39, 'Digital Communications', 'SY', 'Computer Engineering', '4', 'John G. Proakis', 'Mcgraw Hill', 759, 15, 100, 0, 'nbook/39.jpg'),
(40, 'Programming With Java', 'SY', 'Computer Engineering', '3', 'E Balagurusamy', 'Tata Mcgraw Hill', 450, 6, 100, 0, 'nbook/40.jpg'),
(41, 'Discrete mathematics & its Applications', 'SY', 'Computer Engineering', '3', 'Kenneth H Rosen', 'Tata McGraw Hill', 750, 10, 100, 0, 'nbook/41.jpg'),
(42, 'Elements of Discrete Mathematics', 'SY', 'Computer Engineering', '3', 'C. L. Liu and D. P. Mohapatra,', 'Tata McGraw Hill', 350, 20, 100, 0, 'nbook/42.jpg'),
(43, 'Textbook of Environmental studies', 'SY', 'Computer Engineering', '3', 'Erach Bharucha', 'UGC', 250, 10, 100, 0, 'nbook/43.jpg'),
(44, 'Modern Digital Electronics?', 'SY', 'Computer Engineering', '3', 'R.P. Jain', 'Tata McGraw Hill.', 590, 5, 100, 0, 'nbook/44.jpg'),
(45, 'Computer Organization and Architecture', 'SY', 'Computer Engineering', '4', 'W. Stallings', 'Maxwell Macmillan', 750, 15, 100, 0, 'nbook/45.jpg'),
(46, 'TCP/IP Protocol suite', 'SY', 'Computer Engineering', '4', 'Behrouz Forouzan', 'Tata McGraw Hill.', 675, 6, 100, 0, 'nbook/46.jpg'),
(47, 'Introduction to Algorithms', 'SY', 'Computer Engineering', '4', 'T.H.Cormen', 'MIT Press/McGraw Hill', 995, 10, 100, 0, 'nbook/47.jpg'),
(48, 'Applied Mathematics', 'SY', 'Electrical', '3', 'G. V. Kumbhojkar', 'Jamnadas & Co', 315, 20, 100, 0, 'nbook/48.jpg'),
(49, 'Engg Circuit Analysis', 'SY', 'Electrical', '3', 'W.H.Hayt', 'Tata McGraw Hill', 525, 10, 100, 0, 'nbook/49.jpg'),
(50, 'Integrated Electronics', 'SY', 'Electrical', '3', 'Millman and Halkius', 'Tata Mcgraw Hill,', 640, 5, 100, 0, 'nbook/50.jpg'),
(51, 'Electrical Machines', 'SY', 'Electrical', '3', 'C.Kingsley', 'TMH Publication,', 1319, 15, 100, 0, 'nbook/51.jpg'),
(52, 'Power System Analysis', 'SY', 'Electrical', '3', 'Gupta B.R.', 'Wheeler', 500, 6, 100, 0, 'nbook/52.jpg'),
(53, 'Network Analysis', 'SY', 'Electrical', '4', 'M.E.Valkenburg', 'Prentice', 350, 10, 100, 0, 'nbook/53.jpg'),
(54, 'Electronic Devices and Circuit Theory', 'SY', 'Electrical', '4', 'Boylestad', 'Prentice Hall,', 799, 20, 100, 0, 'nbook/54.jpg'),
(55, 'Power electronics: Circuit devices', 'SY', 'Electrical', '4', 'M.H Rashid', 'Prentice', 630, 10, 100, 0, 'nbook/55.jpg'),
(56, 'Linear Integrated Circuits', 'SY', 'Electrical', '4', 'Ramakanth Gaikwad', 'Prentice Hall', 325, 5, 100, 0, 'nbook/56.jpg'),
(57, 'Electronic Circuit Analysis and Design', 'SY', 'Electronics', '3', 'Donald A. Neamen', 'McGraw Hill', 840, 15, 100, 0, 'nbook/57.jpg'),
(58, 'Numerical Methods for Engineers', 'SY', 'Electronics', '3', 'C Chapra', 'Tata McGraw Hill', 785, 10, 100, 0, 'nbook/58.jpg'),
(59, 'Engineering Mathematics-', 'SY', 'Electronics', '4', 'T. Veerarrajan', 'Tata McGraw-Hill', 425, 20, 100, 0, 'nbook/59.jpg'),
(60, 'Digital Design Principles and Practices', 'SY', 'EXTC', '3', 'John F. Wakerley', 'Pearson Education India', 739, 10, 100, 0, 'nbook/60.jpg'),
(61, 'Circuits and Networks', 'SY', 'EXTC', '3', 'A. Sudhakar & S. P. Shyammohan', 'Tata McGraw Hil', 525, 5, 100, 0, 'nbook/61.jpg'),
(62, 'Electronic Communication Systems', 'SY', 'EXTC', '4', 'Wayne Tomasi', 'Pearson Education', 18818, 15, 100, 0, 'nbook/62.jpg'),
(63, 'Signal Processing & Linear Systems', 'SY', 'EXTC', '4', 'Lathi,', 'Oxford University Press', 595, 6, 100, 0, 'nbook/63.jpg'),
(64, 'Modern Digital and Analog Communication Systems', 'SY', 'IT', '4', 'B. P. Lathi', 'Oxford Press', 650, 10, 100, 0, 'nbook/64.jpg'),
(65, 'Electronics Communication System', 'SY', 'IT', '4', 'George Kennedy', 'McGraw-Hil', 378, 20, 100, 0, 'nbook/65.jpg'),
(66, '"Data Structures and Algorithms', 'SY', 'IT', '3', 'J. E. Hopcroft', 'Addison Wesley', 7702, 25, 100, 0, 'nbook/66.jpg'),
(67, 'Fundamentals of computer algorithms', 'SY', 'IT', '4', 'Sartaj Sahani', 'Galgotia Publication', 395, 10, 100, 0, 'nbook/67.jpg'),
(68, 'Environmental Studies', 'SY', 'IT', '3', 'Kaushik & Kaushik', 'Oxford University Press', 200, 5, 100, 0, 'nbook/68.jpg'),
(69, 'Computer Organization and Architecture', 'SY', 'IT', '4', 'William Stallings', 'Prentice Hall', 750, 15, 100, 0, 'nbook/69.jpg'),
(70, 'Database System Concepts', 'SY', 'IT', '4', 'Henry Korth', 'Tata McGraw Hil', 1100, 6, 100, 0, 'nbook/70.jpg'),
(71, 'Elements of workshop Technology (Vol I & II)', 'SY', 'Mechanical', '4', 'Hajra & Choudhary', 'Media promoters', 275, 10, 100, 0, 'nbook/71.jpg'),
(72, 'Engineering Thermodynamics', 'SY', 'Mechanical', '3', 'P. K. Nag', 'McGraw Hill', 599, 20, 100, 0, 'nbook/72.jpg'),
(73, 'Machine Drawing Solid Geometry', 'SY', 'Mechanical', '3', 'N. H. Dube', 'Nandu Publishers', 599, 10, 100, 0, 'nbook/73.jpg'),
(74, 'Machine Drawing', 'SY', 'Mechanical', '3', 'N. D. Bhatt', 'Charotar Publishing', 225, 5, 100, 0, 'nbook/74.jpg'),
(75, 'The Complete Reference Java', 'SY', 'Mechanical', '3', 'Herbertz Schildt', 'Tata McGraw-Hill', 840, 15, 100, 0, 'nbook/75.jpg'),
(76, 'Thermal Engineering', 'SY', 'Mechanical', '4', 'Ballaney', 'Khanna Publishers', 250, 6, 100, 0, 'nbook/76.jpg'),
(77, 'Theory of Mechanisms and Machines', 'SY', 'Mechanical', '4', 'A. Ghosh and A. Kumar Mallik', 'Khanna Publishers', 569, 10, 100, 0, 'nbook/77.jpg'),
(78, 'Manufacturing Technology - Metal Cutting', 'SY', 'Production', '3', 'P N Rao', 'Tata McGraw Hill', 410, 20, 100, 0, 'nbook/78.jpg'),
(79, 'Material Science & Metallurgy', 'SY', 'Production', '4', 'V.D. Kodgire', 'Everest Publication House', 505, 10, 100, 0, 'nbook/79.jpg'),
(80, 'Thermodynamics and Heat Engines: Vol I and II', 'SY', 'Production', '3', 'R.Yadav', 'Cental Publishing House', 360, 5, 100, 0, 'nbook/80.jpg'),
(81, 'Theory of Machines', 'SY', 'Production', '4', 'S.S. Rattan', 'Tata Mcgraw Hill', 575, 10, 100, 0, 'nbook/81.jpg'),
(82, 'Construction Equipment and its Planning', 'TY', 'CIVIL', '5', ' R. L .Purifoy & Ledbetter', ' McGraw Hill', 8713, 10, 100, 0, 'nbook/82.jpg'),
(83, 'Concrete technology', 'TY', 'CIVIL', '5', ' M  S Shetty', 'S Chand  Prakashan', 621, 15, 100, 0, 'nbook/83.jpg'),
(84, 'Building Drawing', 'TY', 'CIVIL', '5', ' Y. S. Sane', ' Allied Book Stall', 545, 12, 100, 0, 'nbook/84.jpg'),
(85, 'Structural Mechanics Vol. II', 'TY', 'CIVIL', '5', ' Junnarkar S.B', ' Charotar Publishers', 325, 8, 100, 0, 'nbook/85.jpg'),
(86, 'Intermediate Structural Analysis', 'TY', 'CIVIL', '5', ' Wang C. K', ' Tata McGraw Hill', 460, 20, 100, 0, 'nbook/86.jpg'),
(87, 'Soil Mechanics & Foundation Engineering ', 'TY', 'CIVIL', '6', 'K. R. Arora', ' Standard Pub. & Distributors', 395, 9, 100, 0, 'nbook/87.jpg'),
(88, 'Building Drawing with an integrated approach to built environment', 'TY', 'CIVIL', '6', ' M. G. Shah, Kale, Patki', ' Tata McGraw Hill', 825, 10, 100, 0, 'nbook/88.jpg'),
(89, 'Beginning AutoCAD', 'TY', 'CIVIL', '6', 'Cheryl Shrock', 'BPB Publication', 3006, 20, 100, 0, 'nbook/89.jpg'),
(90, ' Principles and practice of highway engineering', 'TY', 'CIVIL', '6', 'L R Kadiyali, N B Lal', ' Khanna Publications', 365, 10, 100, 0, 'nbook/90.jpg'),
(91, ' Design of Steel Structures', 'TY', 'CIVIL', '6', ' S. S. Bhavikatti', 'International Publishing House Limited', 325, 15, 100, 0, 'nbook/91.jpg'),
(92, 'Microprocessors and Interfacing, Programming and Hardware', 'TY', 'Computer ', '5', ' Douglas Hall', ' Tata McGraw-Hill', 8347, 10, 100, 0, 'nbook/92.jpg'),
(93, 'Software Engineering', 'TY', 'Computer ', '5', 'Roger Pressman', ' Tata McGraw-Hill', 16263, 5, 100, 0, 'nbook/93.jpg'),
(94, 'Systems programming & Operating systems', 'TY', 'Computer ', '5', 'D. M.  Dhamdhere', ' Tata McGraw Hill ', 499, 10, 100, 0, 'nbook/94.jpg'),
(95, 'Compilers: Principles, techniques and tools', 'TY', 'Computer ', '5', 'Aho, Sethi and Ullmann', ' Pearson Education ', 11270, 25, 100, 0, 'nbook/95.jpg'),
(96, 'Java Network Programming ', 'TY', 'Computer ', '5', 'Elliotte Harold ', 'O''relly Publications ', 2480, 10, 100, 0, 'nbook/96.jpg'),
(97, 'Internetworking with TCP/IP Vol- III', 'TY', 'Computer ', '5', 'E. Comer', ' BSD Sockets Version', 10780, 10, 100, 0, 'nbook/97.jpg'),
(98, 'Fundamentals of Database Systems', 'TY', 'Computer ', '5', ' Elmasri and Navathe', ' Addison ', 9590, 15, 100, 0, 'nbook/98.jpg'),
(99, 'SQL: The Complete Reference', 'TY', 'Computer ', '5', 'James R. Groff , Paul N Weinberg ', 'McGraw Hill ', 3467, 12, 100, 0, 'nbook/99.jpg'),
(100, 'Web Engineering', 'TY', 'Computer ', '6', 'Roger S Pressman and David Love', 'The Tata McGraw-Hill ', 2760, 8, 100, 0, 'nbook/100.jpg'),
(101, ' Object-Oriented and Classical Software Engineering', 'TY', 'Computer ', '6', 'Stephen R. Scatch', 'The Tata McGraw-Hill ', 1788, 20, 100, 0, 'nbook/101.jpg'),
(102, 'Content Management for Dynamic Web Delivery ', 'TY', 'Computer ', '6', ' John S. Rhodes ', 'Wiley Publishing Inc ', 875, 9, 100, 0, 'nbook/102.jpg'),
(103, ' Embedded Systems Architecture, and Programming', 'TY', 'Computer ', '6', 'Raj kamal', 'TMH Publications', 625, 10, 100, 0, 'nbook/103.jpg'),
(104, ' Software Engineering', 'TY', 'IT', '6', 'Roger S. Pressman', 'The Tata McGraw-Hill ', 16263, 10, 100, 0, 'nbook/104.jpg'),
(105, 'Polymer science', 'TY', 'Textile', '5', 'V. R. Gowariker ', ' New Age International Limited', 180, 10, 100, 0, 'nbook/105.jpg'),
(106, 'Physical Properties of Textile Fibres', 'TY', 'Textile', '5', ' W. E. Morton & J. W. S. Hearle', 'Textile Institute Publication', 20230, 20, 100, 0, 'nbook/106.jpg'),
(107, ' Spinning of Man-made Fibres and Blends on Cotton System', 'TY', 'Textile', '5', ' K R Salhotra', 'NA', 995, 9, 100, 0, 'nbook/107.jpg'),
(108, 'Principal of Electronics', 'TY', 'Textile', '5', 'Mehata V.K.', ' S.Chanda & Co', 550, 10, 100, 0, 'nbook/108.jpg'),
(109, 'Textile Yarns ', 'TY', 'Textile', '5', ' B. C. Goswami', ' J. G. Martindale & Seardino', 795, 20, 100, 0, 'nbook/109.jpg'),
(110, 'Fibre science and Technology ', 'TY', 'Textile', '5', ' Premamoy Ghosh ', 'Tata McGraw Hill Publication', 1235, 10, 100, 0, 'nbook/110.jpg'),
(111, ' Principles of Weaving', 'TY', 'Textile', '6', 'Robinson & Marks', 'Robinson & Marks', 1100, 15, 100, 0, 'nbook/111.jpg'),
(112, ' Electronic Instrumentation & Measuring Techniques', 'TY', 'Textile', '6', 'Cooper William David', 'Prentice Hall Pub', 3412, 10, 100, 0, 'nbook/112.jpg'),
(113, ' Structural Mechanics of Fibers', 'TY', 'Textile', '6', 'J.W.S Hearle', 'Wiley Interscience Pub', 1243, 5, 100, 0, 'nbook/113.jpg'),
(114, ' Textiles for Protection', 'TY', 'Textile', '6', 'Richard A. Scott', ' Woodhead Publishing Limited. ', 1355, 10, 100, 0, 'nbook/114.jpg'),
(115, ' Knitting technology', 'TY', 'Textile', '6', 'D J Spencer ', 'Woodhead Textiles', 6997, 25, 100, 0, 'nbook/115.jpg'),
(116, 'Weaving technology and Operations', 'TY', 'Textile', '6', 'A. Ormerod', ' Woodhead Publishing Ltd. ', 786, 10, 100, 0, 'nbook/116.jpg'),
(117, 'Metal casting Technology', 'TY', 'Production', '5', ' B.Ravi', 'PHI Publication 2006 ', 225, 10, 100, 0, 'nbook/117.jpg'),
(118, 'Mechanical Metallurgy', 'TY', 'Production', '5', 'George  Dieter', 'McGraw Hill International ', 19106, 15, 100, 0, 'nbook/118.jpg'),
(119, 'Engineering Metrology', 'TY', 'Production', '5', ' I.C. Gupta ', 'NA', 510, 12, 100, 0, 'nbook/119.jpg'),
(120, 'Principles of Operations Research', 'TY', 'Production', '5', ' Harvey M. Wagner', ' Prentice Hall', 4130, 8, 100, 0, 'nbook/120.jpg'),
(121, 'Metal Cutting and Machine Tools', 'TY', 'Production', '5', 'Juneja and Shekhon ', ' Wiley ', 22820, 20, 100, 0, 'nbook/121.jpg'),
(122, 'Operations Research Techniques for Management', 'TY', 'Production', '6', ' B. Banerjee', ' Business Book Publishing House. ', 2246, 9, 100, 0, 'nbook/122.jpg'),
(123, 'Pneumatic Circuits and Low Cost Automation', 'TY', 'Production', '6', ' Fawce', 'JR', 665, 10, 100, 0, 'nbook/123.jpg'),
(124, 'Engineering Systems and Automatic Control', 'TY', 'Production', '6', ' Peter Dransfield ', 'NA', 1758, 20, 100, 0, 'nbook/124.jpg'),
(125, 'Machine Tools', 'TY', 'Production', '6', ' Koenig Berger ', 'NA', 886, 10, 100, 0, 'nbook/125.jpg'),
(126, 'Fundamentals of Manufacturing Engineering', 'TY', 'Production', '6', ' V.M. Kovan et al', ' Mir Publication', 440, 15, 100, 0, 'nbook/126.jpg'),
(127, 'Westeman Tables for the Metal Trade ', 'TY', 'Production', '6', 'H. Jutz and E. Scharkas', ' Wiley Eastern Limited', 199, 10, 100, 0, 'nbook/127.jpg'),
(128, 'Welding Technology', 'TY', 'Production', '6', ' R. S. Parmar', ' Khanna Publications ', 275, 5, 100, 0, 'nbook/128.jpg'),
(129, 'OPAMP and Linear ICs ', 'TY', 'Electrical', '5', ' Ramakant Gaykwad', 'NA', 325, 10, 100, 0, 'nbook/129.jpg'),
(130, ' Signals and Systems ', 'TY', 'Electrical', '5', 'S. Haykin', ' Wiley Eastern Publication ', 8120, 25, 100, 0, 'nbook/130.jpg'),
(131, 'Control system engineering', 'TY', 'Electrical', '5', 'Norman S. Nise', 'John Wiley and Sons', 10360, 10, 100, 0, 'nbook/131.jpg'),
(132, ' Elements of Electromagnetics', 'TY', 'Electrical', '5', 'Matthew N. O. Sadiku', ' Oxford University Press ', 12270, 10, 100, 0, 'nbook/132.jpg'),
(133, 'Power Electronics-Circuits, Devices and Application', 'TY', 'Electrical', '5', 'Rashid M H', ' PHI Publication', 699, 10, 100, 0, 'nbook/133.jpg'),
(134, ' Power System Analysis and Design', 'TY', 'Electrical', '6', 'B. R. Gupta', 'S Chand  Prakashan', 550, 12, 100, 0, 'nbook/134.jpg'),
(135, '8086 / 8088 Design, Programming and Interfacing', 'TY', 'Electrical', '6', 'John Uffenback', ' Prentice Hall of India', 425, 8, 100, 0, 'nbook/135.jpg'),
(136, 'Electric Traction', 'TY', 'Electrical', '6', 'Upadhayay J. & Mahindra S. N', '  Allied Publishers Ltd', 360, 20, 100, 0, 'nbook/136.jpg'),
(137, 'Biomedical Instrumentation and Measurements', 'TY', 'Electrical', '6', 'Cromwell L. Weibell and Pfeiffer', ' Prentice Hall of India', 350, 9, 100, 0, 'nbook/137.jpg'),
(138, 'Innovation and entrepreneurship', 'TY', 'Electrical', '6', ' Drucker Peter F, ', ' Heinemann, London', 1087, 10, 100, 0, 'nbook/138.jpg'),
(139, 'Applied Statistics for Engineers', 'TY', 'Electrical', '6', ' Montgomery and John Wiley ', 'NA', 14495, 20, 100, 0, 'nbook/139.jpg'),
(140, 'Introduction to Solids', 'TY', 'Mechanical', '5', ' L. V. Azaroff', ' McGraw Hill International', 9765, 10, 100, 0, 'nbook/140.jpg'),
(141, 'Fluid Mechanics & Hydraulic Machines', 'TY', 'Mechanical', '5', ' Dr  P. N. Modi ', 'Standard Book House', 780, 10, 100, 0, 'nbook/141.jpg'),
(142, 'Heat and Mass Transfer', 'TY', 'Mechanical', '5', ' R. K.  Rajput', ' S. Chand & Company Ltd', 725, 5, 100, 0, 'nbook/142.jpg'),
(143, 'Theory of Mechanism and machines ', 'TY', 'Mechanical', '5', 'A Ghosh and A.Malik ', ' Affiliated East ', 375, 10, 100, 0, 'nbook/143.jpg'),
(144, 'Internal Combustion Engines', 'TY', 'Mechanical', '6', ' E. E. Obert', ' Harper and Row, Publishers', 6545, 25, 100, 0, 'nbook/144.jpg'),
(145, 'Machine Design', 'TY', 'Mechanical', '6', ' Black Adams', ' McGraw Hill ', 6090, 10, 100, 0, 'nbook/145.jpg'),
(146, 'Refrigeration & Air-Conditioning', 'TY', 'Mechanical', '6', ' Arora', 'Tata McGraw Hill ', 675, 10, 100, 0, 'nbook/146.jpg'),
(147, 'Control Systems Engineering', 'TY', 'Mechanical', '6', ' I. J. Nagrath ', 'NA', 425, 15, 100, 0, 'nbook/147.jpg'),
(148, 'Computational Fluid Dynamics  - The basics with applications', 'TY', 'Mechanical', '6', 'John. D. Anderson', 'McGraw-Hill ', 17179, 8, 100, 0, 'nbook/148.jpg'),
(149, 'Electromagnetic Waves & Radiating Systems', 'TY', 'Electronix', '5', 'E. C. Jordan & K. G. Balmain', 'PHI Publication 2006 ', 325, 20, 100, 0, 'nbook/149.jpg'),
(150, ' 8086 / 8088 Design, Programming and Interfacing', 'TY', 'Electronix', '5', 'John Uffenback', 'Prentice Hall Pub', 425, 9, 100, 0, 'nbook/150.jpg'),
(151, 'Signals and Systems ', 'TY', 'Electronix', '5', 'S. Haykin', ' Wiley Eastern Publication', 8120, 10, 100, 0, 'nbook/151.jpg'),
(152, ' Principles of Communication Systems', 'TY', 'Electronix', '5', 'Herbert Taub and Donald Schilling', 'Tata McGraw-Hill', 3780, 20, 100, 0, 'nbook/152.jpg'),
(153, ' Electronic Circuit Analysis and Design', 'TY', 'Electronix', '5', 'Donald A. Neamen', 'McGraw Hill International ', 13790, 15, 100, 0, 'nbook/153.jpg'),
(154, ' Modern Electronic Instrumentation and Measurement Techniques', 'TY', 'Electronix', '6', 'David A. Bell', ' Prentice Hall of India Pvt Ltd', 250, 10, 100, 0, 'nbook/154.jpg'),
(155, 'Design with operational amplifiers and analog integrated circuits ', 'TY', 'Electronix', '6', 'Sergio Franco', 'Tata McGraw Hill ', 19110, 5, 100, 0, 'nbook/155.jpg'),
(156, '  Digital Filters:Analysis Design and Applications', 'TY', 'Electronix', '6', 'A. Antoniou', 'Tata McGraw Hill ', 325, 25, 100, 0, 'nbook/156.jpg'),
(157, 'Advanced Microprocessors', 'BTECH', 'Computer ', '7', 'Daniel Tabak', 'McGraw-Hill.', 400, 10, 100, 0, 'nbook/157.jpg'),
(158, 'Advanced Microprocessors and Peripherals', 'BTECH', 'Computer ', '7', '. Ray and Bhurchandi', 'TMH', 675, 20, 100, 0, 'nbook/158.jpg'),
(159, 'Advanced Microprocessors and Interfacing', 'BTECH', 'Computer ', '7', 'Badri Ram', 'TMH Publication', 399, 10, 100, 0, 'nbook/159.jpg'),
(160, 'Artificial Intelligence: A New Synthesis', 'BTECH', 'Computer ', '7', 'Nils J. Nillson', 'Harcourt Asia', 799, 15, 100, 0, 'nbook/160.jpg'),
(161, 'Introduction to Digital Signal Processing?', 'BTECH', 'Computer ', '8', 'J.G. Proakis', 'PHI', 1899, 10, 100, 0, 'nbook/161.jpg'),
(162, 'Software Engineering An Engineering Approach', 'BTECH', 'Computer ', '7', 'James Peter', 'John Wiley', 729, 10, 100, 0, 'nbook/162.jpg'),
(163, 'Fundamentals of Image Processing', 'BTECH', 'Computer ', '8', 'Anil K.Jain', 'PHI', 450, 25, 100, 0, 'nbook/163.jpg'),
(164, 'Mobile communications', 'BTECH', 'Computer ', '8', 'Jochen Schiller', 'Pearson Education', 750, 10, 100, 0, 'nbook/164.jpg'),
(165, 'Embedded Systems', 'BTECH', 'Computer ', '8', 'Raj Kamal', 'TMH', 350, 10, 100, 0, 'nbook/165.jpg'),
(166, 'Digital Image Processing', 'BTECH', 'Computer ', '8', 'R.C.Gonsales R.E.Woods', 'Pearson Education', 656, 15, 100, 0, 'nbook/166.jpg'),
(167, 'Pattern Classification', 'BTECH', 'Computer ', '7', 'Duda, Hart', 'John Wiley and Sons.', 739, 12, 100, 0, 'nbook/167.jpg'),
(168, 'An Embedded Software Primer', 'BTECH', 'Computer ', '7', 'David E. Simon', ' Pearson Education', 759, 8, 100, 0, 'nbook/168.jpg'),
(169, 'Plain and Reinforced Concrete', 'BTECH', 'CIVIL', '7', 'Jain & Jaikrishna', 'Nemchand Brothers.', 625, 20, 100, 0, 'nbook/169.jpg'),
(170, 'Design of Reinforced Concrete Structures', 'BTECH', 'CIVIL', '7', 'Dayaratnam P', 'Oxford & IBH', 695, 9, 100, 0, 'nbook/170.jpg'),
(171, 'Irrigation Engineering', 'BTECH', 'CIVIL', '7', 'G L Asawa', 'Wiley eastern', 300, 10, 100, 0, 'nbook/171.jpg'),
(172, 'Irrigation Engineering & Hydraulic Structures,', 'BTECH', 'CIVIL', '7', 'S K Garg', 'Khanna Publishers', 555, 20, 100, 0, 'nbook/172.jpg'),
(173, ' Construction Project Management,', 'BTECH', 'CIVIL', '8', 'Chitkara K K', 'TGH', 750, 10, 100, 0, 'nbook/173.jpg'),
(174, 'Theory of Elastic Stability', 'BTECH', 'CIVIL', '8', 'Timoshenko S', 'McGraw Hill Book Co', 695, 15, 100, 0, 'nbook/174.jpg'),
(175, 'Erection of steel structures', 'BTECH', 'CIVIL', '8', 'Thomas baron', 'NA', 1080, 10, 100, 0, 'nbook/175.jpg'),
(176, 'Soil Mechanics and Foundation Engineering', 'BTECH', 'CIVIL', '8', 'V. N. S. Murthy', 'Saitech Publication', 548, 5, 100, 0, 'nbook/176.jpg'),
(177, 'Managing Risk in Construction Projects', 'BTECH', 'CIVIL', '7', 'N J Smith', 'BLACKWELL PUBLISHING', 5651, 10, 100, 0, 'nbook/177.jpg'),
(178, 'Dynamics of Structures', 'BTECH', 'CIVIL', '7', ' Cloguh & Penzein', 'Tata McGraw Hill.', 716, 25, 100, 0, 'nbook/178.jpg'),
(179, 'Structural Dynamics', 'BTECH', 'CIVIL', '7', 'John M. Biggs,', 'Tata McGraw Hill.', 950, 10, 100, 0, 'nbook/179.jpg'),
(180, 'Advanced Electronics Communication Systemsz', 'BTECH', 'Electrical', '7', 'Tomasi W', 'PHI', 425, 10, 100, 0, 'nbook/180.jpg'),
(181, ' Communication Systems', 'BTECH', 'Electrical', '7', 'Haykin S', 'John Wiley & sons,', 559, 10, 100, 0, 'nbook/181.jpg'),
(182, 'Discrete Time Signal Processing', 'BTECH', 'Electrical', '7', 'Oppenheim & Schafer', 'PHI Publication', 669, 15, 100, 0, 'nbook/182.jpg'),
(183, 'Power System Protection and Switchgear,', 'BTECH', 'Electrical', '7', 'Badri Ram and Vishwakarma D.N', 'TMH', 535, 12, 100, 0, 'nbook/183.jpg'),
(184, 'Switchgear and Protection,', 'BTECH', 'Electrical', '7', 'Ravindranath and Chander', 'Wiley Eastern Ltd.', 275, 8, 100, 0, 'nbook/184.jpg'),
(185, 'Modern Power System Analysis', 'BTECH', 'Electrical', '8', 'Nagrath I.J. and Kothari D.P', 'TMH Publication,', 599, 20, 100, 0, 'nbook/185.jpg'),
(186, 'Power System Analysis,', 'BTECH', 'Electrical', '8', 'Saadat Hadi', 'TMH Publication', 550, 9, 100, 0, 'nbook/186.jpg'),
(187, 'Industrial Control Electronics : Devices, Systems and Applications', 'BTECH', 'Electrical', '8', 'Bartelt T', ' Delmer Thomson Learning', 7185, 10, 100, 0, 'nbook/187.jpg'),
(188, 'Information Technology Project management', 'BTECH', 'Electrical', '8', 'Kathy Schwalbe', 'Thomson Learning', 575, 20, 100, 0, 'nbook/188.jpg'),
(189, 'Introduction to VLSI design', 'BTECH', 'Electronix', '7', '.E.D. Fabricious', 'McGraw Hill Publications', 950, 10, 100, 0, 'nbook/189.jpg'),
(190, 'Principles of CMOS VLSI Design: A Systems Perspective', 'BTECH', 'Electronix', '7', 'Neil H.E. Weste Kamran Eshraghian', 'Addison Wesley Publications', 9904, 15, 100, 0, 'nbook/190.jpg'),
(191, 'VLSI Technology', 'BTECH', 'Electronix', '7', 'S.M.Sze,', 'McGraw Hill Publications', 675, 10, 100, 0, 'nbook/191.jpg'),
(192, 'Instrumentation Devices and System', 'BTECH', 'Electronix', '8', 'Rangan Sharma & Mani', 'Tata Mcgraw Hill', 575, 5, 100, 0, 'nbook/192.jpg'),
(193, 'Digital Communication', 'BTECH', 'Electronix', '8', 'Symon Haykin', 'John Wiley and sons', 629, 10, 100, 0, 'nbook/193.jpg'),
(194, 'principles of communication systems', 'BTECH', 'Electronix', '8', 'Taub and Schilling', 'Tata Mc Graw Hill second edition', 585, 25, 100, 0, 'nbook/194.jpg'),
(195, 'Pentium Processor System Architecture', 'BTECH', 'Electronix', '7', 'Tom Shanley et al', 'Addison Wesley Press', 5478, 10, 100, 0, 'nbook/195.jpg'),
(196, 'Modern Spectral Estimation', 'BTECH', 'Electronix', '8', 'S.M. Kay', 'Prentice hall', 975, 10, 100, 0, 'nbook/196.jpg'),
(197, 'Design of m/c elements', 'BTECH', 'Mechanical', '8', 'Spott', 'Pearson Education', 631, 15, 100, 0, 'nbook/197.jpg'),
(198, 'Design of Machine element', 'BTECH', 'Mechanical', '8', 'Bhandari', 'Mcgraw hill', 625, 8, 100, 0, 'nbook/198.jpg'),
(199, 'Design Data Book', 'BTECH', 'Mechanical', '8', 'PSG Data Book', 'CBS', 303, 20, 100, 0, 'nbook/199.jpg'),
(200, 'Assembly Language Programming', 'BTECH', 'Mechanical', '7', 'L.A. Laventhal', 'NA', 350, 9, 100, 0, 'nbook/200.jpg'),
(201, 'Mechatronics', 'BTECH', 'Mechanical', '7', 'HMT', 'McGraw Hill Education', 495, 10, 100, 0, 'nbook/201.jpg'),
(202, 'Finite Element Method', 'BTECH', 'Mechanical', '7', 'Reddy J. N.', 'McGRAW-HILL', 325, 20, 100, 0, 'nbook/202.jpg'),
(203, 'Introduction to FEM in Engineering', 'BTECH', 'Mechanical', '7', 'Chandrupatla, Belugundu', 'Prentice Hall', 529, 10, 100, 0, 'nbook/203.jpg'),
(204, 'Manufacturing Planning & Controls systems', 'BTECH', 'Mechanical', '8', 'Thomas E.Vollman', 'T.M.H', 295, 10, 100, 0, 'nbook/204.jpg'),
(205, 'Productions and Operations Management', 'BTECH', 'Mechanical', '8', 'S.N.Chary', 'T.M.H.', 685, 5, 100, 0, 'nbook/205.jpg'),
(206, 'Operations Management', 'BTECH', 'Mechanical', '8', 'Joseph G. Monks', 'Schaum?s outline Series.', 1100, 10, 100, 0, 'nbook/206.jpg'),
(207, 'Computer Aided Design and Manufacturing', 'BTECH', 'Production', '7', 'Mikel P.Groover and Emery W.Zimmers', 'PHI 2004', 555, 25, 100, 0, 'nbook/207.jpg'),
(208, 'Numerical Control and Computer Aided Manufacturing', 'BTECH', 'Production', '7', 'T.K.Kundra, R.N.Rao', 'TMH 2003', 1299, 10, 100, 0, 'nbook/208.jpg'),
(209, 'CAD/CAM/CIM', 'BTECH', 'Production', '7', 'P.Radhakrishnan and S.Subramanyan', 'TMH 2005', 475, 10, 100, 0, 'nbook/209.jpg'),
(210, 'Economics', 'BTECH', 'Production', '7', 'Paul A. Samuelson', 'Tata McGraw Hill', 795, 10, 100, 0, 'nbook/210.jpg'),
(211, 'Finance Sense', 'BTECH', 'Production', '7', 'Prasanna Chandra', 'TGH', 525, 15, 100, 0, 'nbook/211.jpg'),
(212, 'Plastics Handbook', 'BTECH', 'Production', '8', 'A.S.Athalye', 'NA', 250, 12, 100, 0, 'nbook/212.jpg'),
(213, 'Plastics Materials', 'BTECH', 'Production', '8', 'J.A.Brydson', 'NA', 3195, 8, 100, 0, 'nbook/213.jpg'),
(214, 'Marketing Management: Analysis, Planning and Control', 'BTECH', 'Production', '7', 'Philip Kotler', 'Prentice Hall of India', 2500, 10, 100, 0, 'nbook/214.jpg'),
(215, 'Marketing Management', 'BTECH', 'Production', '7', 'Ramaswamy and Namakumari', 'McMillan', 875, 20, 100, 0, 'nbook/215.jpg'),
(216, ' Purchasing and Materials Management', 'BTECH', 'Production', '8', ' K.S.Menon', ' Wheeler Publications ', 475, 9, 100, 0, 'nbook/216.jpg'),
(217, 'Artificial Intelligence ', 'BTECH', 'Production', '8', 'Rich. Knight', 'TMH', 585, 10, 100, 0, 'nbook/217.jpg'),
(218, 'Developing New Entrepreneurs', 'BTECH', 'Production', '8', 'Entrepreneurs Development Institute of India', 'NA', 780, 20, 100, 0, 'nbook/218.jpg'),
(219, 'Process control in Spinning', 'BTECH', 'Textile', '7', 'A R Garde, T A Subramanian', 'BTRA Publication', 2186, 10, 100, 0, 'nbook/219.jpg'),
(220, 'The technology of clothing and Manufacturing', 'BTECH', 'Textile', '7', 'Harold Care and Barbara Latham', 'OXFORD', 650, 15, 100, 0, 'nbook/220.jpg'),
(221, 'Inside Fashion Design', 'BTECH', 'Textile', '8', 'Sharon Lee Tate', 'Harper Collins Publication', 759, 10, 100, 0, 'nbook/221.jpg'),
(222, 'Non-Woven Bonded Fabrics', 'BTECH', 'Textile', '8', 'J. Lunenschloss', ' W. Albrech', 23507, 5, 100, 0, 'nbook/222.jpg'),
(223, 'Geo-Textiles ', 'BTECH', 'Textile', '8', ' NWM John', 'NA ', 350, 10, 100, 0, 'nbook/223.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `obook`
--

CREATE TABLE IF NOT EXISTS `obook` (
`BOOKID` int(5) NOT NULL,
  `BOOKNAME` varchar(50) NOT NULL,
  `AUTHOR` varchar(50) NOT NULL,
  `PUBLISHER` varchar(50) NOT NULL,
  `PRICE` varchar(50) NOT NULL,
  `SELLER` varchar(50) NOT NULL,
  `IMAGE` longblob NOT NULL,
  `Branch` varchar(30) NOT NULL,
  `Sem` varchar(30) NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=50 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `obook`
--

INSERT INTO `obook` (`BOOKID`, `BOOKNAME`, `AUTHOR`, `PUBLISHER`, `PRICE`, `SELLER`, `IMAGE`, `Branch`, `Sem`) VALUES
(49, 'Applied Physics', 'P.K.Mittal', 'I.K.Int', '130', 'abhishekdudhal', 0xffd8ffe000104a46494600010200000100010000ffdb004300080606070605080707070909080a0c140d0c0b0b0c1912130f141d1a1f1e1d1a1c1c20242e2720222c231c1c2837292c30313434341f27393d38323c2e333432ffdb0043010909090c0b0c180d0d1832211c213232323232323232323232323232323232323232323232323232323232323232323232323232323232323232323232323232ffc000110801d0012c03012200021101031101ffc4001f0000010501010101010100000000000000000102030405060708090a0bffc400b5100002010303020403050504040000017d01020300041105122131410613516107227114328191a1082342b1c11552d1f02433627282090a161718191a25262728292a3435363738393a434445464748494a535455565758595a636465666768696a737475767778797a838485868788898a92939495969798999aa2a3a4a5a6a7a8a9aab2b3b4b5b6b7b8b9bac2c3c4c5c6c7c8c9cad2d3d4d5d6d7d8d9dae1e2e3e4e5e6e7e8e9eaf1f2f3f4f5f6f7f8f9faffc4001f0100030101010101010101010000000000000102030405060708090a0bffc400b51100020102040403040705040400010277000102031104052131061241510761711322328108144291a1b1c109233352f0156272d10a162434e125f11718191a262728292a35363738393a434445464748494a535455565758595a636465666768696a737475767778797a82838485868788898a92939495969798999aa2a3a4a5a6a7a8a9aab2b3b4b5b6b7b8b9bac2c3c4c5c6c7c8c9cad2d3d4d5d6d7d8d9dae2e3e4e5e6e7e8e9eaf2f3f4f5f6f7f8f9faffda000c03010002110311003f00cbc824714ef7a6819fc29d8af9ab9fa9580e78e69c180a6f140fd28b8585cf1c5231c8eb484fa1a613c67345c76248c609fa54d8150464963f4a94f5a5739aafc42f4a8c9a78e060d263d714ee668605f5a503f3a7e07a53c2f7a62b91ede68d9f8549c014163d31482e46171ef411daa45e7b5232e0d161dc6ede2936e29f8ee290739cd0030ae4f34bb38e94f238a02f140c8caf346d00734fa3f0a057136f191d698a8735381c74a40a33d2815c8da307ff00af4ed800cd4878f4a064ad01722c73c5215f6a940fcc535813de804f52323e9484548578f5a4c73d282ae3157afa0a785e2942d3b1c5026c6818a5c71d281d78a5c71de8102814a001ef460e2940e69a062600e94669c7d05331ec3f2a68965719cd38d0463e941a93bee21a0fb5275a419a9185349a711c706a2f6a0689e2e58fd2a5c1cf5a8a01f31c7a5590bcfd68392abf78455f5a42b522ad260fad064478e38a500fad29e0520639aa00239a3036e72334873ed8a523bfb526c76053c529eb42818e475a71539e3a5003704d000cf34e24e29bda8b8011eb498c734629738c0c500252038a71e4d29185e9426026091f850a08a5e691476a2e0c53f4a701c71d69bde9c0e076a091a07bd2114ee686edcf5a06989b7229b8c538f4a4c669809db34b8e28c1ed4a680b880734a4714aa39a5230280b8d1da9c060f24518e94b839cd310d2a33494eef467dcd026caab9ef4a78a4e0fb50460523bc42293a53b8f5a46e0d218c63d69a07354f5dd50e91a435cc7b4dc49208a10c32077271f4e3f1ae63fe12cd77fe7a5b7fdf85af430b95d7c4c39e0b43c7c6677470b55d2926da3bab75f98f07a55b1587e17d5e6d5ed6e16ebcbfb55bb024a285dc8dd0e07a107f315be17bd72e230f3c3d474e7b9a51c5c3171f6b0d9898c76e2a36ac4f16ebb7fa2a69cb62d1219fccde5e30d9c6dc75fa9ae793c59e26b81218daddc46bb9c8b75f947a9f4aeec3e515ebd35521b1e657ce6951a8e0e3aa3b8392b483f5ae09bc63e205eb35a1ffb62b56ec3c7374922aea5670bc24f3240bb587be3a1aba99262a11e6b5c9867b424ecd3476782714ec1c54d66229e7b66043c32b2904746526bce8f8d75d6924d925b0018a8fdc2fad736172fad896e30dd1d58bcce961b95b574cf405cd29ae0dfc57e2789119dadd048372ee814647a8a60f1aebd1b02c6ce41fdd308c7e95dbfd838b38bfb7e83fb2cefc8029001ce2b1f40f11c5ae3bdbcb00b7bc45ddb14e55c772bfe14be27d5aeb46d1e29ecfcb12bcfe592e81b8c7bd79ff52aaab2a3256677ff006952f61ede3aa358291d8d2edcd70d63e2cd767ba8d1e5b6d8586e1e42f4ce2bbf99409dd400003d05698ccbeae12cea75160b31862db5056b116001c5211f9d3a9933986da799705a38d980232320715c518b934ba9d952a2845cbb0bef9e29075af3e87c67afc81489adb07fe982d779a65c4b79a3dadcdc94699b787655c03838e95e86272bad87a7ed67b1e6e1736a789a9ece29a26c53b6f635ca789fc4baa699afc96366f0ac290c6e03c418e4a293c9f726b37fe129f123c4655780a0382df671807d335ad2c9b11560a71d998d4cf29424e2d3d0eef3ce290f35c08f16788ffe7bdbff00df85ab36de25f124d2e3ce80851b98085738ef5a3c8715d4859fd1bfc2ced88e293e952df1f216f258c00d1c523af19008524579baf8d35f75044f060f38f217fc2b970d96d6c4397b3e874e2b35a58771e64f557fbcf42e69d8e3ff00af5e7e7c59e245c6e9611c679b75ff000a920f1aeb7137ef92d675eea63da4fe22baa5916292bd8e659fd1bdaccef57af3d29c704565e8baedaeb91b794862b88c664858e481ea3d456be38e82bc9a94674a4e135667ad47110af05383ba1bda9314fc718a3033506d71840c52629ec39a303d68426ca3818a3a9a01a5eb48f44418a43c9f5a7638a8e6b84b3b69aee41f24086439ee7b7eb4e11736a2ba99d6aaa953737d0e33c5d726eb5c8ecd0e62b34c1c7f7cf27fcfb55bd6b47369e1782ee25443048a92903972465893ec48158da3e2eb5359eed86d924334b93d87cc47e42bd22f34c9af743368d19612db9766038dedf3e7f3c0afb794bea3868423bdd1f9da8bc6569ce4fbb384f0d5f8d3fc416f2bb6d8261e44be9b5ba1fc0e0fe15e92ca54ed6ea0e0d78ec5b9a2dac70ca76e7d08af56d2af46a7a45a5df5764d920ff6c706bcecff000f751c444f4723c45a72a2ce5be20ffacd1fe92ffecb59de1824eb169037cd14f750c72c64643a927208ee2b4bc7ff007f4703d25fe6b5cedadadecab24f66cd1fd9b12b481b1b707835ea6529bc0a4b73cccc1ffb5cfd4eef54d034db8d36e7ccb3820d91b309a38c2152071cfe95e6d668d3f963ef127181deaddc5cea17ebe55d6ab2cb1e70519ce0fe02bacf08f86d3ce4bd9d58a46328590ac60fae4fde3ec2ab054aa612129622771626a471335eca16f43a0f0b45243a6e971cb9dd1ca5067d03e05792a72d37fd746fe75edf098ffb42d5215db146eaaa0f5c67ad788272d2ff00d746ae2c9ea46a62aace3b33af34a72a74a9425ba47a2786ade1d434891eeeda1b978ee0c6ad2c61caa84538191d3935cf78cf4bb3d36fed24b44585a753e642bc0e3b81dab3776b3a5aa85bd96d5275128556ea0f00f1d29b6ba7dc6a77c0c97325c4cd81bb0d231fa0c5767d56bfd6dd573b47b1c4ebd378754b93deee697852094ebf65708a7e4b85427b6181e3f215b7e3d18d06dbfebeff00a5745a3e936fa269d1aec22e30480f8ddb88c6e603a6070076c9ae7bc7a3fe29eb6ffafb1ffa0d79f8cc453ad98d350e87751a33a780a929f5b1c969fc5dc79fef2ff315ea9383f687cfad796e9a337498fef2ff00315ea9383e73fd68e25da1f337e1f7efcc847d6a3bc1ff0012fbcffae0ff00caa5c7351de73a7ddffd707fe55f31457ef23ea8fa0c53fdccbd19e47683f771fad7a9683cf87ed73fde93ff0042af2eb31fbb8ebd4b421ff14f5af6f9e4ff00d0abecb3bff725f23e4f26ff007a5f338af1affc8e33ff00d7b43ffa2d6aff008525b69a5fb1df3c2d6e627758e6202efc8c1e7be33547c69ff2394fff005ed0ff00e8b5a86cb416d56ccb41fbdb952584230bf20c65b278ea4715d1848f360124eda6fd8e4aaed896d2bea77234dd087fcb0d33f34ff1a9adacb4a4b98dadadf4ef3c36536152d9f6ae0cf83352273fd9c7feff00c7fe35b9e18f0a5c5a6b56971716c20f266497cc69518617923839c9e31f4af36a616718b7f58fc4ef8626f24bd82fb8e9f50769acafe47fbcf6f293c7fb26bc7ed3ee43c7435ebd79ff0020fbdffaf697ff004035e4767feae2a7c3bf6cacf34ab156e87a258697a76aba55bdedfd9acf732970ee5dd7386c0e8476ae6bc4fa047a388af2cd9fecb2bec68ddb76c6c6783e9d6bb1d0413e1cb31fed49ff00a11acef1affc8aef923999315cff005ead1cc5d352d2e6b2c1d1797aab6f7ac71fa4ddb69fab5b5e46706371b87f794f041fc2bd5a445491954e541e09f4af24b388cd2e15727613fa57aebab02a1ba845cfd768ad388a94528545bb0c86a3e6947a11e39a3ad2e29707b57cb1f4f71a45369c739a302802875a5c01d68ef4bc523d003c8ae6bc6779e5585b69c87e7ba6f3641e88a703f339fcaba6f4cf4ac2d5bc353ea7adcd7ff6eb3f2d8048a36f332880600e17af7fc4d7a5954697b752aad248f1b3a75a587f674a2ddfb1cd5ae8d7179a7c97112931a1d9b1412cdeb803b0e2ab8f0fdc0eb6d75ff7edbfc2bd174ab45d2f4d3199a16b8c145f2376dda4ee2496039e00fc2a5deffdf6fcebdec66774a1539631525dcf0b0790d5ad4f9e6f95f6b1e60f01b393ecec8f1c80670ea47e3cd75be07bdc4977a739e1c79f10f71c30157b5ad01b5c9ed678ae218e581191fcedd865ce463683dcb7e94ed17c272586a96f7535eda2889f3ba232138ee305704119f4ad2a6370d8cc1b8cda4fb1cab0788c1e2bdd8b693dec65fc403fbed207b4bcfe2b543c2c4ff6e5800c403790e7df935d4f897c3b26bb2d93dbdd5bc62db782260e37648c636a9f4a8b43f0bb69ba8c33dddd5a148a5498184c85b2a7a60a81cfd78a9c062e853c0f24a693b3162f0b5a78a728c1dafd8dff00b44dda571ff023485d9ce5dcb1f52734d3d6940af929d59cb7773eb214a9c6cd2489ecff00e3fedffebaaff315e2911ff59cff00cb435ed16f22c5750c8ff751d58e3d335c2c7e02bc8c366fb4e6cb13c997ff0088af7321c453a3297b4925ea7879dd0a95650e48b7e86f7842475d16721db3f6b6e73fec2d6db5c4f820caf83d706aa699a747a5e98b08963796494c8e23ddb54e14705803dbf5ab26b8733c4f3e264e12d0eecb70ea1878fb48ebe82015ccf8f001a05af19ff4afe95d4638acaf1168d26b9a6436b14f0c4f14de61f377608c7fb20d6397cd47131949d8acca0e7869460aecf3bb7b816d2094a960a41c0fad764ff1034a672c6c6ff27af0bfe354c781ef3bdee9dedccbff00c4538f81eeff00e7f34dff00bea6ff00e22beb7192c062eded2a2d3ccf9ac3c71b876dd38bd7c89c78f34a66c0b1bf24f6c2ff008d7433ba4fa34b711860935999555ba80cb9c1ae66dfc157314eaef75a73283ca869ba7fdf15d74d691a69e2c219c328b51009194819db8cf4ce3f0af131787c0d1e47425777ee7a986ab8daaa71aa9dacfa1e41663f7719e2bd4b466ce816a31c6e93ff0042ae6edfc09770a229bed39b6f2493373ff8e57610dac5636305b452090aee66c038524e7009c13f9577e6f8ba35308a10926f439b2ac355a789e69c5a479e78d7fe4719c7fd3bc3ff00a2d69fe1dd6ecf47bdf32ec48236859331ae482483fd2ba0d77c293eadaec9a845776688f14682397ccdc36a007eea91d47ad501e06baed7ba77e737ff00115d386c4e19e0d519cd2d2c7255c362635dce307bf6340f8df41031e65d7fdf9ffebd28f1ae84780f7449ff00a63ffd7acdff008412e89ff8fed37ff237ff0011562dbc1334530335de9ed19055829941008ea3e4eb5c0f0396ff00cfdfc4edfade63fcafee3a4bbda74dbb604957b4771f42848fe75e416a76c519af64b88237826b58e61b5adcc0b2b0201f93682473c57151f806ea38d53fb434f3b477f379ff00c729e4b88a141cd4a692be819ad0af5650928b6eda92693e2fd2acf478ad2e7ed02488be762641cb1358fe22f111d7cc56b6d0c9159c4de67ef3ef3b76e95aff00f0825c9ff97ed37ff237ff00115a1a7f8463b5915e7bbb7254ff00cb188b9fcdf18fcabaad9746b3c43a8ae7338e3e74950e576f42bf847c34f3426eee94a4726300f511820b37e24003d726baf95fcc99e4c6371271e94a6602210c40ac60e4e4e4b9f527bd47cd7879ae60b1752d1d91eee59817868394b761c0e941a5fc293bd7927a821e94dfc69c69302840ca2319a5c734639a31ed527a2277aaf71a8e976970f6f3ea96d1cd19dae8776548ec78ab20579febc8ade2bd637a86ff004a7ebf535e9e59828e2ea38499e2e719854c1c62e9f53b4fed8d17fe8316bff8f7f850bab68ccd85d62d33efb87f4ae62cbc3f6fa95906b609e7a60cbe61c280738038f63599aa68f3694f18ba823f2a438592321973e9ec6bd77926194fd9ba96678ab3dc6f273f2e9dec7a75a8561e6c6e92c6c3878d8329fcaa69a682dadde7bab848214c02ef9c73f4af38f0ddecba56b1018ddbecb2b849e3cf041e33f519aebfc6ebb3c2978a7f86641fa9af3b11953c3e2234a4f49753ae19b3af42752d6944b5ff000906827fe6356bff008f7f855d61cf0c083c823b8af27b68622c498d4fc84f4f6af58ff96717fd735fe42b4ccf2c860e119c5ead9396663571351c67d08e7b8b6b4b737179731dbc20eddef9ebf80aa8baf686cc15759b524f007cdfe1597e3819f0b8c8e3ed295c558c31f9e088d720647157976510c551f692918e3b34ab42bba71b58f55bb9ad6c22f36f6ee2b78cb6d0cf9c13f80aa5ff000906827fe63369ff008f7f855cd4ece0d46d65b3b95dd0ca801c751c0c11ee2bc96f34d7d2b5096c2ea352f19f95f1c3af622b2c065f4315274dcacd178dc7e270ea32b2b33d710a30578dd5d1c06575e8c0f714e729123cb2c8b1c683733b9c051ef5c8f81f56ddbb459dbe6505ed58f71fc49fd47e351f8e3572ee9a1db3f0087b920f7ecbfd6b2795d4fad7b0fc7c8d9e6d0fab7b5fb5d8e97fe120d0ba7f6cda67fe07fe15a2a2396de3b8864596293ee10a467f020572be0af0bc127fc4caee14db82620cb9c28e0bff0041eff4ad6f196b5369ba379b69fbb9a67fb3dbe3fe59ae3923df18fcf35be2f2ca54a6a9425793fc0e7c36675e70756a7c28b17ba9e9da71db7b7f042ffdc272df90aa1ff097787b38fed139f5f28e2b91f0ce95a7dfdfedd465dcee42a6f63f3b9ee4f5c56b6abe07912191ec6e21924525840612991e80e4f3f5c5754f28c2d0b46bcecd9ceb34c5d5bca94744751697f61a8f3637d05c1ebb51b0df91e6ac9e9fad7915a5bb3491cf037913039570db4a9af58b37b89f4bb4b9bb8f64f227ef00180581c647b1e0fe35c598e56f091538bbc59db97e66f132f67516a4775aa697613086f3528209b68628fbb201e9d05169a8e9ba848d1d96a105c48aa58aa6ec81ebc8ae0fc68aade2e9830047911f51fec8ad1f03a226a6c550026de4c903dc574ac9e9fd53eb17d6d739566d5beb1ecb4b5ec7666925921b787cfb99e3822fefc8c141fa7afe1506a57d0e97a65c5fca3290ae42ff007d8f017f3fd2bcccff0068f89b54433b34d3ca711c79c2a0f61d80ae1cbf2d9e2ddef68f73bb30cca386f722bde3bd7f15f87a372a752df8ef1c448a9edb5fd16f5b65bea70ef3c0593284fe7c573937812eade24102a4ac464b348b1a9ff773c91ef5cdea3a5cd677c2d2eed0c52b7dcee1be8475af5bfb170d27c90a9ef1e57f6be2e3ef38e9e87abb2956c1a4c64e0572de0eb8d451ff00b36ee392480826091864a1ebb4fb55ef16ea93693a186b66d9717327928c3aa0c6588f7e83f1af16ae5d569e2561fab3d8a79953961dd6b6dd0bd79aae97a7314bcbf86290754cee61f503a5521e30f0f6ec7dbdfebe49c5723e18d2b4ebed4047a849b9e5609187270ce7bb11ce07a0c135b1aa782192de596c6e9249132de5341b323d01c9fd6bd6965185a368d69d9b3cb59a62eade54a3a23a9b2d474fd47fe3c6f619db19d8a70c07d0f356abc8ad2da569239a06f2665395607054e6bd6acfed32e996b3ddc7b27913e7c742c38c8f63d6b8732cade1529c5de2ceecbb32789972545a920f6a3196a5038e681c1af20f6042b8a6e29e4e68078a00ce38cd1eb4639a5a47a2267a0af3fd7067c57acffd7d3ff335e81dc579feb609f166b38e7fd29ff99afa0e1dff007867cc712fc10f99a3a2ebfa7693e7c778661e62a6d68e3ddcae7ae48f5aafe22f105b6b1043656114de4ac9e63cb32804fb00338fceaf697a3db6a96242910cb0ed692461bb76ece001db18abf6fe1ab689c3bdd060073b6007f99af5f13f52a78af6b565692e878b878e36b61bd9528de0d94fc2fe1e9b52cdc3a9584c8aa8c7b8043337d001ff008f0adbf1cb6ff0adeb81c1990fea6b62d6e02c26088305da03331e587a7a01ec2b17c6a3fe291baffaeb1ff5af2f119847178da6a1b2677472f9e170951d4f89a3cf919d14ece095c735b29e37d7e38d23d964c1142826104e0567e9b22c37292b449288c16d8fc83f515dc1f0969d211299ae433a872176e064678e2be83309e16318bc4ec78d84a75e726a8ee719aa788f57d6ed16d6ed6d9610e1ff00771ed248aad65feb8ffba6ba0f15787edb4ad212eeda698b1982157c6306b02cb779a7fddad3052c3ca93787d8cf111ab1a96abf11eb130c38fa2ff2ac0f14685fdafa779b00c5e5b02d191d58775ae8263f3727b0fe429b923a7515f051af2a1887523ba67da3c3c6be1d539763c722965568e781da2b889b72b0eaac2b6bc39a34dadeaacf70cee0bf9971277624f007b93c537c596f1d9f8b6e521508af12485474dcca09feb5d07816fe48a736e9b42f9524878e777033f9135f77ede2f0df5ab6b63e2d517edbd8dfad8ede6d96d08b48b680b80e50f191c051ec071fad735e2cd2e5d5f43f2ed9775cc12896341fc7c60a8f7e9f956d8e579354b52d6f4bd1da24d42e5a37957722ac65b2338af888626b54c57b68abc8faeab42852c2fb29bb2fd4f2a2492572f1ca8dc8e8cac2b62dbc57e21b3daa2f16e547f0ce81bf5aea9351f0c78a2f45ab45e7dc329db23c4518e07f7ba9fc7355ef7c0f69221fb15d4f0c9fc2b2e1d4fe3d457d3cb1f86ab68e2e167e67ce4707595de1e575e441a7f8fad8c8b1ea7a72da76f3a040ca3ea31fcabaf330b88a3912512c4cb98d94e54afb5790346f0dccf6d70804b0b94703a6457a0783e39a2d16e20941d914a8d167b075dc47d3807f1ae4cd72e82a3ede93d0ebcaf1b2559529adce5fc67ff237cd9e86de3ffd0456978278d49bfebde5fe62b3fc667fe2ad9b3d7ecf1ffe822b43c104ff0068b7fd7bc9fcc57a31ff00915bf43863fefabd7f52c7c42999748d36dc7dd9ee5d9bdf62803ff43358de1660baa4483869a48e004760cc01fd38fc6b6be20c05f46d3ee474b7b960dec1d47f54ae534fbd1637705d7388a68e538ff65b35192a4f04edb9799dd62ddcf59b998cf75248dc6e6e9e83d2aadcd95a5ef942eed966f25b7c79246d3f51fcaac90acdbe360f1bfcc8c3a32f63591e22d753c3d650c9e42cd733c80244cc47c807278fc07e75f234956957b53f88fa7ad3c3c685ea6b1b1a96eb1d916fb1c1141b86098d7048fad61f8b3499b56d1025b2eeb8825f3917fbfc608ff3e94fd13c5369addcc76bf63bab79dced1f2ef4cfd7b55ad5b5bd33459628f50b8749244f3115222d95c91d7ea0d74a58da7888ca69b91cb2a983ab879462d2479530258ab6f8a5439c1f95948feb5b369e2bf10d9e02de09d47f0cea1bf9d7551ea7e1af145e8b46b7f3ee1918a3c916c270338dc0e7a67ad4575e07b19a33f62b99e093f856421d4fd4f06be8a79861aada38b859f9a3c28e0ab2bcb0f2ba5d8874ff00883133ac7a9582db03c79d02e547d47f8575cb702e628e64944b132e51d4e411ed5e3cf14915ccd6d3a81242e51c0e991c57a1f83229a0d1a786507624a0c60f60cb922b9335cba0a87b7a52d3b1d995e366aaaa535b9d00f9bbd2630685e94a7835f2c7d38d239a5c0ed475a3b5006693cd068c734b819cd23d2003a5705aca3378b35923fe7e9f9fc4d77d4d92386491a492da0676392cd18249f5af532ac7430751ce6ae78f9be5f531b18aa6f6323c370491d9ddb3290acb160f63f7eb53daa61214b63046a91c45b715450066a2e73d6b1cc7151c5577562ac8e8caf093c250f673dee58b41f3b566f8db8f07dd7bcb1ff335a76832edf4ab4f1a49198e58d2443c957191c74e2b9f0d5152ad1a8fa333cc68cab46508eecf2ab2b79647288858943803e95eaca309103c111ae78f6151c767671b074b2b6565390446322a792469646773966ea6bd7cd734a78c846304d58f232dcbea61a6e537b9cbf8effe45941cff00c7cae3f235c869f6f2bcfb55493b09c0eb5ea12c71cc9b2589254ce76bae467d6a386dad2091658ecad91d482acb18c8ad72dcda961683a72576638dcaeb57aeea45ad49e6ff0059cfa0fe549da891da4767639627269bd6be7e6f9a4daea7bd4a0e3051ec79ef8cd0b78c65c7fcfb45ff00a00ad3f0641225f79854ed36f20cf6ce56bac7b6b69e4f327b482593006f7404e0702a58512d6374b7822855f1b8468066be896734560feaf677b58f016515beb3ed6ead7b86703a573de2fd1a5d5f4e8a6b65dd75684b2277914f503dfbe2ba1c1a50bcd78387af2a155548f43dac4d0862293a72ea78f4724b14c9244cd0dcc4c0a9e8cac2ba34f1af885e1f296cec9a5c63cff2ceecfae338cfe15dc4f65697633756904f9ef2273f9f5a81342d1d1b72e996ff004c1c7f3afa39e6d82c424ebc1dd1f3eb2ac5d26d52968ce33c3fe18b9d4f50f32f6424bbef9403991cff004fa9e95e8b3470dbc7f67b70a3e6dee57a16e0607b28000a645886230dbc690c7dd6350b411deb8730cd7eb10f65495a2776032bf613f6951dd9e71e3252fe2f9f1ce208bff4115afe0a81d2fcc854ec304a370e99e2bac96deda76f327b4b7964c005de304f14f8365aa4896f0c50ac830de5a019ae959cd2583faba4ef6b1ccb29adf58f6b7d2f72bea1670ea1613d95c2e6299769c76ee08f70706bcbb50d2eef4899ad6f233b0fdc980f95c7d6bd64f3de9180688a3a2ba1eaaea08fc8d7065b99cf08ecd5d33b71f974713ef27691e5961abeb7a741f67b0d4655841f950e182fd3352c3a66a7acdff9f7970d24cfc79b3be303dbb9fc057a01d174877dc74bb5cfa8523fad5cb682dac18359dac1037f7913e6fccd7b1fdb1828b73843de3cbfec7c53b4652d3d4769ba5db683a7471440b4e413b9970727ab11db8e00f4ae7bc61a24babd8412db0dd756a4945ef221eabf5e323f1f5ae889666cb1c93d49a6b0f7af0ea66756788f6fd8f5e19653587743bf53c754cd04c8f133dbdcc4db94f46522ba24f19788a487cb4b7b4f3718f3845f37d719c7e95dd4f6b6b75cdd5a4139f591013f9f5a85346d255b72e976c0ff00ba7fc6bd89e6d82ae93ad0d51e52ca7174aea94b4671de1bf0bcda8df87bd90b6e6f324553977ffe27ea715e8d2470411f91005c6773b2f427a71ec00c54519f2e2f2a1448a3feec6a147e3eb40e9cd70e619afd623ece9ab44eec0657f579fb59bbc800f6a31cd2e38e2939cd78a7b00462931f4a56e8011498229a0334f5cd07f4a3bd06a4f4851d290f5cd28a4382690681918a6814e38148281966d000cdf4ab7daaad9fde6ab64714ce1adf18809c52134b4d6ebc8e28331ac40a68e734bef4a28168275a5c5057bd3b661739a450d4a7edcd220c76a7d0c1881452e073cd2e78c5274cd0ac210e07d29474e2909cd26303bd01614000e691bafb52a8c93cd0c083ed4c42714def4ee334de377bd2ea3149c8e697f871c1a4239a3b7a5002639a71c50bd694f5a004a63609a71e693028042114a0d18e2931e94c6397f953c75a601cd385084c70e05277a31d89a4c0cf5e954203c8e69323d4d388f7a61193c62811e3ff00f09b6b1c7ef23ffbe297fe136d678c3c5ff7c573c232c46075e94e60d13e082187622be9561296ee27c6ff0068627f9d9db59788afa5b767bcbf8addfa2af939cfd79aab278a75547dab2c72303ce13008ae566bb9ee5834ae5980c64fa54f6da84d1b9e8db86df9bd2bb29d2c137cbc867f5ec62d7da33a15f176ac272b22aec1f7804e40f6a6cfe2fd4959bca742b9f94b25615d653184d9201f310d9cd431149245566d83b9eb5abc2e19370e45f70ffb4317bfb47f79bcbe38d663c9492207bfc94a7c7faee47ef62ffbf75873dab29660caea39c8f4a62c36ed68cde691383f748e08ae69e5f04edca83ebf5deae6cde3e3fd6f71db2458f78e9bff0009feb99ff590ff00dfbae7e1b679f76ce70335030c122b89d0a5bf2a2beb95ff009d9d38f1f6b84e3cc87fefdd1ff09f6b8381243ff7eeb981c5252fabd3eb11fd72bff3b3ad8bc7bacbb61e7854638fddd2c9e3fd646364d11047398fbd7274eda4283838ad961e938db910beb95ff9d9d38f1f6b99ff005b17fdfba3fe13fd700ff5b0ff00dfbae68c4cb1097f849c54b0da34b6f2ca19404ec7bd52c141e8a084f1b5d7db6741ff000b035dff009e90ff00dfba4ff84ff5dcff00ac87fefdd7318ef4f8847e7af9b9d99e71d6a2385a4f4e543fae623f9d9d1ffc27dae7fcf487fefdd3bfe13ed77fe7a43ff7eeb9870a246d8495cf19a4f4a3ead493b72a0faee23f9d9d52f8f75c209f362ffbf74378fb5cdc479b17fdfbae613ee8fad34f2cc6b6784a1cabdd42fae623f9d9d42f8f35c61feb62ff00bf74c3e3ed7013fbc87fefdd73f13b42564420329c8a90db4d730c97848c679ed9351570b414568ae0b19887f6d9b9ff0009f6b99ff5b17fdfbab567e2ff00105eb48239e01b10b9dc98e0571a3ad4a8ecb9c1233c71451c350e6bca3a04b1988b69367487c7bae0ff0096d167feb9d27fc27baf1e3ce8bfef8ae7ded985aadcee5d8cdb40cf3f95304b98963daa3073bbbd2961295f58a41f5caffcecebe0f196b42511de4c200e37073176aad2f8e35b4e56e626524f44ae6e5925900690b30036827d29523858c60c8406fbfc7ddada586a0d72c60bd4958cc46ee6cdff00f84f75c3c79d181fee507c79ae03c4f1ff00df02b9fb88560919524122f661dea1c639ae7785a71d1c515f5daffcecea078ef5b1ff002dd33fee0a749e37d7a25426e62218678415caf4a3af5e94fd8d16be143fade23f9d9d37fc279ae8ff009784ff00be054b078e75c6dcc6e233853c151cd7264e694311823834a14a8c5ddc509e2ebff3b3a63e3cd74f4b85ff00be0527fc273af1ff009785ff00be057339c9a5cd2f6349bbf287d6ebff003b2f469e6c39e3287f214b246d2191e5264c01f38354c12b920d1bc8e84e2bd15562d59a391a1ac30d8a683e94f619ed4b0b224999137afa572b8fbdd915d0b563693dfca2385773e3b9e29ad13dbb96c0ca9c303d8d11bf94c0c6ef16e1d6894156dccc1cb75c1aed49722eeba91adc634c598f6cf18151ed24ed039a9ede00f300ea4a9e8456e5a787bed7708b6ee4b67806b19546fe2dc99d48d3d59a9e11f036ababab4f0c604457a9ac7f12f83f53f0edc1375093093c3af6fad779a7f88f5af0984b69e056893a023071ec6a7d6fc5761af58379df303f7d1fa8af1e753114eb5e4bdd3ae84e85685a2f53c798c6aa0229c8ee7bd4201aee21d23c32c4bbdcc8037f0e471528d2bc2c92656f1c295c11d6bb5d58c9ddfe44723470d1bf96e1f00907a1ab0f70b25b98ca60eec823a0aec4e8de120706f643f88a43a578454022f253f522ae9e294538f47e41ecdb388f2dcc7bf0766719f7ad1d3ec8cc3e72421ed9ae826b3f0badb4a23b8977804afcdc66b12cee02a819e055c6aa7f0dce7aea518e86bdfe85650d8466de70fe60cb01d54d72b3c0609769e6baed41aca3b3b492dae0bc92266543fc26b12092d1f548bed63741ceec1a1cb439f0ae6dd999011882c14e07538a6f5ed5dac73787238da30adb1bef7351893c30bff2c4f07fbd512ab1e899e8aa6fba3944180bf9d478cf6ea6bb25b8f0d2600b62463d4d3bccf0fc6e87ec4412370ce706afdb5d2b458b92dd51cf68fa25c6b77a9696fc6e39663d1457ad0f84f1a786ca7db40723238eb5cde93aee9f1ea0059c0917f7b03ad741acf8f4598b7b58811b865dcff2af271d5abceaa54d591d94695250e6933c9759d1e7d175092d661f329e0fa8aa40617a735d96b3a847acdf1608ae00e5cd59b4f0e69b2e9cf713dc2230e1507526bd2a127ecd3968cf2b11888426e31d4e16544544dae4b11f32918c1ab7a7689a8ea8c059dac9203fc40703f1aefb41f025bdc4e2e6ed372e72b19e9f8d7a869da6416b1245144a883a0518af3f179a429c9a82bb3d3c3e0a5523cd3d11e350fc3bf105c5b085bcb48f3b8293deaaddfc39d6ed14bf941c0fee1afa260b1690ed45cd457366aa4ab0e6bce79dd793bb474fd468ec99f2b5de9d7767214b885908f51557b74afa275bf0fd9ea11b2cb0a962300e3a578ef893c3136993931a9311e86bd4c2e3a15fc99c95f0b2a5aad51ccaa33eec29200c9c0e829ac79c54eb7125b06589ca871b5b1dc547144662c010368cf2715ded27651dce444639a51da82083474cd66d0c14024e4d18f4a16b72decac6ea15965952163c6c06b7a345d5d11329a8990aa18e338c9ef535cdb0b66d8ceae48c828722a0390295e569000c738181551715169ad41ad45698ba2a1c003a714934824dbf2a82063e5ef4cef4f1b7cb2bb7e6f5aae694938b632e7d8257d37ed8f2a845e1158f27e954771c8a50cc57193b476a92ded9ee640918cb13c54ce49d9c558493367426cef5c03c55db599d2ed823956cf183d2ba1f0c7c34d6ae63fb42ec08c3a13cd6cdcfc3abdd3f74b26d2c39c57973c6d28d47a9b4f073ad0e5ea727a85e5d3a84ba67240e0b5733a84a7aa31048c1ad0d46e6e52f248260ca10e006ed587712177c66bba125249a3cea741d39dbb11429e73edf302fbb1e29e8a25760f2ac7b47071c1c541b706a5304a02b79676bfdd38eb5bc63fdd3b1b226273d6804fad2bab23156041f4349dab36acec3147353c52f966a01d0548b8c8c8ad1479912d5cb26eb2b8a8961965019509e7b559b0b60f386206d1eb5d768b0d87db2317995b727e6da3b5459419c952b2a5b23887b69901dd1b01f4a8391815e9de2583441381a4b3bc38e77fad70da85922b6f418f6155cca4c74b12a7a32a85ca37a85a72cd2be048e5822e064f4a763e46fca9bb783ef5e928d8d88ade7920ba12c67906b5f50bb965d3a392555cbf03daa1d5346fecb8a0905cc5379c9bc79673b7d8d3f51f934eb7423aa822bcdc4d04aa453dd9ad3a9eebb6c476330118e6baef0f5a1ba9966704c63ee8feb5c25b06f3163e858815ea5a12a416f1af1c0e2bcdc6d470872a34c161633adcefa1da69d1aa20038c56ec0463ad73f65300064d6b4538c0e6be5eac5b67d1fa1b514ef00211bad579a4ce4b726aa8b9cf7a64971c75ac545ec4a824ee41764106b93d7ad12eeda4471db8ae8ee26183cd73fa8cc0c6738aedc3de2ee826938d99e23ab599b4bc78fd0d49a25826a17821761c8f95776d2c7ea6b57c591a9bade31935ce2b943f2920fa8afadc24d7bb39ea7ce56834dc512df4524374f0cb8df19da7f0aac4735a8d1584b60b219a45ba0097ddc863ed59c700fb56b5a9fbdccdee6717a0e8e2dc8cdc61473cf34ddc3d69a4d37359b92b59156266e549351e79a9554b2e075a61071d3a53b37a80839353dbdb3dccbb10fcc4e00a801a9609de1943af507b538b067496fe06d5258c3958c03eaf5a7e1af0f4ba76a8ad7813e53c739a65a6b9a84ba6f9d12b3ac7c30560587be3d2aa5b788647bc01cb024ff001572e22389717cd1b23a693a2a4b5d4f7ad1f53f295522600fa66a6d5b5191d089b8e3bd7908d5672032c841ec41ab96fafdf4b098ee2466503824d7cecb072dee7ab1ab17220f13684bad6a19b69638a5f56ef58cbf0dae9b25afe00de9cd47a9eb4f05e643fcc4f63556efc43a840aad9c86ee1abd8c3c71118a5067056f62e6db468afc3295c02da9c0a3e84d581f0d6e5427fc4e63c2f2bf23715cdffc25b7ea7e527fefaa51e2fd4c1e2561f4635da96353bdec73b740e94fc2f79d8b3eaf1b31ea7cb34abf0aa2dd86d5ff00284d7327c61aa0e44ee33dc31a67fc25ba98c833367dd8d270c5bd5b15e8f63ac1f0bec9387d61bfefcfff005e90fc39d250fcdacbf1ff004cf15c81f146a2d8265cfbe4d4b6fa96ab7cecb06e90aaee200cf029c28e324ec9839d14b62150b6d79340afb951ca86f5c56d69b13dfddc56d1102491b68c9ee6b95477f3dcbf0c5b27eb5a36d7524122c91b156539041e95a6a9da5b9e5d6a7777474be22d26ebc3fa8b595d95f300072a722b98bc97286ac5f6a7737f319ae66695f18dcc726b2e5632304071b8e39a7ab7a0a953d4ecb46d1745bcd3219ae5e4f31972c03639ad01e1df0e6092d215ed97ae3a4596c48b78eef785e37467e53f4a4864b869923fb4380c70493d2b6960b1af699e946b514b58dcee5b4cf0df902068f720e724f27f1f4a4974ff000ece88248f3b381f3e315cc6bda54da35d4312ea4972b222b8689b38cf6355e48f17b0c335cc91c647cee0648ae6a983c4bab18ca7abd8b86229723718e874d71a6f86e146920831201c12e4d3f4dba0157078ed5c25d4af15db2c73b3c6a7018e7915bfa75c1f2c1cf35c98bc2ce9bb4ddd9d187af197c2ac7a15a5e8e39ad48af863ad7176d70d807755f86edba66bc89d1bb3d58cee7a0d84115d5bb4b25cac6076cd665c5d2a3b286c80719f5ae756f640b8cd4725e3e7af158aa1a826d3bb352eaf30bd6b9cd42f80079a6dd5db153c9ae7b50ba6da7e6e95d746899d5aa92307c4170259b00e4d60e3156ee9da7b9c282cc4f1819355d90a12aea430ea0f6af76947961b1e1d497349b19924d2b91c8ed4800c9269a4e69b6489451454816a45c0dc9d09fcab57c36ffe972c59b41e646416b91951f4f7ac9ce29445bf05186e2718aeda72b4b9a2be44495d5984d16d95d4104027a74a873fceb62ef41bbb0b25b99e4841638d82405f1eb8aa5133db312c8bf38fe219aa9516e576ac252d341fa76ad79a6b39b594c7bd76b63b8a8242c5c48a4eea6b0d9ce3bfe148ecf2edc0e73818a5cdeef2cd8ecaf74743a66a578f6aee6d9a48a2e19c76a9ef35a9238322265c8e323158d610df9b86b68d6446c65d39191ee2b53588f3a7a71f77ad7056c3c2334adb9d14eacda7a9cfc97324f71e6b9c9cd6a5e9ff004381b1d462a1bdb5d322b1b496ceee496e5d7f7d1b26021f634c9ae3ceb68e258df72f7cd74ca2a94a3630534d36cac50751d3f953a048599bce6238e31eb5660b35758879aa0b9c10dc6da8ee6d4dbccc9b95f69fbcbd0d7ab1826b9d6a8cb996c54085db6a8cf3c5054edcf465ab0aef6f2acd11c3af20d4724cd24c656c1ddd78ac6504bd4b4ddc848e38fa8abb657535bb6f8646463c12a7b1ab1a56893ea536d5cac5fde35dde99e16b2b3404c61dfbb3726b82b63e9619ebbf63d2c26555f14aeb45dce03ec33cccc522727a86c1a8e48eea0e258645c77da6bd812d214501500fc291ed20914abc6a7d78af2aae6b19bba858f5170e2b6b3d7d0f1e1e7c909912290a0382db4e07e34fb584ef2ef8ce0902bd32f345865b678a3cc68fcb2af009ae36f747934e2f9cb26300d7ab96e270d566aeecfccf2b1994d7c2ae6b5d77467ed2157e94e2a3cc18f4c55886d26b86fdd46efb172db46702a3701492ddb9afa6b24aecf1ae412316b98d41c92c2b66d2f8586ba2ea48239d634c18e4e41acb4d3a6b861289426791ed504a974b70c1dcb9e84d7873c442589537b22fda45c5c0bfaa6997b717a920b2310bc26489107041f4a82d5a5b39dadee14a3a9c156e08ab76fa8de46f04c277dd00f9093f77dab36faea7d4efe4b995f3231cb37ad746370b1ad4f9a3b9542a4e12d763a9b6b9f941c8ad18ae78ae22d35129f249c106b622d4010307f5af96ab87945d9a3daa75d3474bf6a03bd4725d00bd79ac36d401fe2a8a6bf01796c562a8bb9a3acac685d5d7079ae6753bece554f269b79a9eeca46724fa564bc8558b1397fe55e861f0cdfbd2d8e2af5efa22c595d49a65dc7788479e877203ce0d47a85fcda95e49753edf324396da302ab062c73405c9ff003cd76caa36b923b1c5caafcc358e6986b5effc3da858585ade4f0621b9198c83927f015938c1e7f2ace74e51f89151927b166c6c9ef646447452a85b2ed81c556652188f4a72b106a69ee7cf70c62452001f2ae05528c1c6cdd986b726610fd9f00379a0f5ed4db4b713cc55a558c28ce4d407247e34a08ef5b46a2724da15b4259263e61019997b64d31999c8258f1c0a8f241e08a5f9b1900e3d7b53f68db7715ac5c42668844ec815064123ad43bda275922e190e41f7ab3a4ea1fd9d7627f2229b008d928c83504e56691e44010b1ced1d056cda9413bea2eb63562d5ef2eafbfb52f9649542f96645181ec322af5c30974edc3f015891dcbae98f6c6e59417cf93fc27deb56262da4900741deb971b75cacd282dd19f6c901dd951bab6edf4c8a2b1376d730e7b45deb96121493d08a9bed836e2b39c5dee71d4a526f42edcc91bcc119b6a9ea454030f95ce47626a9e5a46dc78f4cd58855f390a481d78e95ea60f9946ccb51e556068cae73c8a7d8e9ed757623c7eec9c9f6a9c2871cf3c56ce8908197f5359e695150a5cd1dfa1e865d4157aca2f63a7d26d23b785511400056ca8c60550b3fba3f4ad007a1af879c9ca5767e854e118c546259b48e092e916e6429113f33019c517890477522dbb97887dd63dea13d38a4ed8a9be96172be6e6b8c2062b2b52b659a2652322b509c551b962108aaa727192711d48a946d25a1c825c5d6957332dbca5048bb4e3b8ac8bc27c891bb8c7ff5eb735700309318da6b24a09140232189635f7d96e21e2f0ae32dd687e7599e16387c43b6cc5d33545825864788488841287a37b547aadfc5737d2dcc50ac28cd911af4151c9a6b6f5101c163f74f414c8b4e62c5ee1c617b0ae1faad4757d92dff0043cef6514f9c6891fece010774878fa55db98ac21d2a130bc86f0e7cc5238fc2a0642650e4607f0fb0a8e5524e3b9fd057b6a1ece0976295995197ccc4483bf26a74b560e88b3104d383436e98046eab764f6b29db9633e7a9e98af3716a92a4dbd646d4e4f99233eed66b47da650c3daa9b4b2cadb771c62b4afe2373aa2c41d54120649c0a4d534c934ab8fb3ca50f19ca303b81f715c986c3c670e666939da5cb71967a35dde58dd5cda2074b65dd2b138207b565a27cc19fa67f3ab0b3ca8192362aa460853807eb4b141b9816e07a9aea95153b72f4334deb72f6a8d6f7c2de5b3b44b7da811954fde3eb52d95858c76535c5d5d04b88f052223ef8efcd517b81102b0ae5bd6aab373ba43b9bd2ae4e9c25cc95dfe04f2b6ad73a5b9bebab873a869314cb616c02b798770424738ae7f535b5173bad2632ab28662cb8c3771510bd9d62689247489fef203806abf5e6b9abe2154565a950a7cac3bd18a7a140ac18127b7b5373ed5c8d25bb341e4e145213ce0d2f41cfad190c6a9a019d1b35605cc860f23f83350104362bafd02d2ced344975996d64b89e27da032662fc6b6c3d394a568e84549a8ab9c8739a76e18c37e7562ee45b8ba92611ac5bd89daa381f4a819303e61f8d271945b48abdf5143103b32d741a7b0934e7008c62b9bc956e3a56fe8ce1e09001ce39ac310ef035a5a489dfc3529f0fb6aff6884c61f698b77ce3df1552c2059237560a4f40c456a689a28d4b517b59f5186da3dbb94b9e09f4a4b8b14b1bcb9b512a4a17203a1c835df5e09d08cd6e73d397ef1c598f3da989d9410ca3b8e6ba0f0a7892db448af20bcb24b88ee136872012a69b068b67fd873de9d4156e91be5b623ef562ed4941da36b8eaa6bd28c1349a326d4ee98f9b11b3ba60c6c4e31dab6747907902b08318e3746e54f1f4ab1a65d6c5d84f435e3e7717248f6328a8a15753bbb4987d2b4525040eb5cc5a5d640e6b522bac639af929d3d4fb6a755346fdac525dceb0c2373b1c019a5ba824b39da19861d4e08acc82fde091648dcabaf422927bf79a4692472ce7924d472ab7997cd2e6f2279250071f9d675d4e31d6992dd7a9acdbabac8c679ab843522ad54919fab480c4c0f39aad02878623fec0fe555f55b91b080793dab7ad6c6c53c382e1aec8bc5c28871d6bebb214e2a47c3679554aa2667ae7ed0833c804d169652ea77315a438f325723938141522453c0383cd244c6da3497251faa9e98af423351c5d49be891e4cdda8a23d76d9f47bd7b3b90be726010a7358db269d893c03daaecf1bddddbdcc859c9392cddeadc16fd32bc579f88c654aaec9d91973f2ab19cb62bd48a945984f63d88ad610007a75a5f207715c7732759988d69b892724fa9aa73dbb8ee48f7ae91e000723f2aa72c00fd29a6d6c542b3b9849e5a0f981dd51c9213c9381e957ae6dfa91c1ace640012c79aeda789728f2b3b21252d46b392bf2f02a2c1ef4f6700600a600ccd8009ae79caefb9aa0381ef4809c1a956d98fdf3b6b561974c8f469ade4b626ecb0293e7a0f4c554684e7abd01cac50d3f4f6d42e96059638b209dd29c0e2abcb13472b21e4a9c64569691756767a8c735c86744e40c679edc556d4afbedf7f2dc94542ed9da8302aa54a9461abd49529735ba0fd3c5a35ca8be69041dfcbeb51cf1c5e7b7904f9793b7775c54247cbcf5cd203b48e692a8b9795a2adadc0c6c1b91f8d594bcbc8ed5ada39a4101396407e53f855cd1348b8d6f524b38248d1dc121a43815a62e6eb4096fb4a36f6d70d29f2da400301f43dab7a749eeae8894ba239b137aaf153dab5b1b80672de5f7507ad6bea5e1992c844858493c8bbcac277e01fa5623d9c91b943c30fe12306af92a537aab829c65b05c42a64768d484cf1df8ad1d114abbe7a63a8acf8da7b7e9f77b83562d6e248e52e00e7b0e95c98ae494745ab2e33e57a8dbb96486e9c293b7356b4d9cc85806e48ef55272f2c85df193e94fb0d91dce492322a3dacbd9725c14939dd1a115c465cabfaf5a95ed127cba37cc3a11d6b2652e9336f538cf0c2a786ecae086e9debddc3d78ca093319c356d16cc27eeb801fa671c1aa1b7ecb76558633d335ab1dcadc2e0e03536f2cccf1838f9c743eb538ec37b7a5a741d0ace9cd364d6939ec6b4e3b922b96b7b868a4d8e3041ad68ae815eb5f1b569352773ebb0d8b528ab336c5c9c6690dd1acd59fd0d0f3f079ac3d99dab11a6e5992e09e99aa17371c649a6b5c0c75fd6b36e2669a458a205dd8e028ee6b6a749b7647162714a29b6c96daddb52d455154944f9dcfa015d1c368d34ea80708b96ad7d2b424d0b45b817017ed4ea0b9ce4f3ce280a2c345370d8f32724fd076afafc0538e1a85e47c5e2710eb54ba302ed96398955f95508aa17ba83ead79120555da8a985e9815a73d95c4f04b395c0d9c0f4ac2d0d434c646ea2bc7ab8a8d5ab370d99ae229ba54a3cdb9dae9d63025a08de3560473914b2e8519cb40d8ff0065a96ce60540cd69c6ff002f15ccdbb9e04a725239f974e9e12772123d4735018b07906baa0d914b2e9dba3124b0fc87a1c52f69dca555b3927418aab3463debaa934bb77e848aacfa2c647df354a68b8d5471b3c59c802a84d60eea7e5e0d77326970c4b92735997cb12a6d1802ae12d4eaa55f5d0e7ef7c3573a5d85b5f5d47fb9b8198d830ac86995785e3e95b735b6a37d68eecd34b636cdc9009099aa9ad26901e0fec8f3994a0f3049d4377af5671e58de0ac7a1095f47a994f2b13c7151e189e4fe75ad06897575a4dc6a2b242b1c0406467018e7d05649041e4d715453de57d4d934f60002f7fca8f97d0d28504f3d2b62eb47b188c5e46a914caf18663b48da4f514a9d394fe1484e496e545b1bbb8b47b98ede478633f3b81c0aa7d08c8ad08f56bbb7d3e4b38667481cfce80f0d545a424f4fce892868d6e357ea596d4ee0c114418058fa6060d406ea4c93b8e7eb4c2c3772a2a7b2b617b7915b865432305dcc78154a739349481a495cd4d17c557fa24ed340558b0c36f19c8a5d535ffed9d41eeaea250edfdd18c55fd76d6d345b0fec66b6b69ee4307fb642f9383dab9fb7923b698becdd918c38cd7673d583b392328a84bdf48368924f93eed68d958c9732ac5121676e001546399524380393e95a765a8496b389616c3f622bcc9eb27732abcdd0d0bef0e4fa7c8a975b549192a2b1ef218e2963d83be315a175aa4b70ecf3485dcf726b16795a7b84553ce6a1ec4508cdc91d45de948f671346c033019ab16fe0fb178d649b54891c8c95154cc77b7b6bb61575822187900279aa661b98b9c6ec77539aebc0e13133a7752b23d1ad5a9735ac6f8f0be849cb6b0aac3fba2ae4361a05ba957d58b8e98c5723bb736d68ce7bd26d0011b41fd2bd1582c4db5aafee317529bfb2743a8695e1cba8dcdb5cb99874e2b8c9a56b4b878864aa9ad185e58650e80e476ad4b9d18eaf02ddc48c931e0a377ae4af95c927372e663faeba7a256473c9a80c64e452a5e493b18e252ec7b0e6b56dbc17acde4a225b523271b88e2bd07c3de078b4ab75dd1892e061a46c720fa0ae4a597b9bf7b44554cddc169b9e6b6fa36b17d2044b59173fde18aec3c3be1d92ca48f367e6dc96cef6fe1af498ed16e1e37640b2467078c6e15661b648eea528bca838aea780a36b5d9c0f35af277391993507c07b556e792d597ad5adfb69a59ed8148d81000e715dfc90333a8009007a552ba8a4212154ccb21c018aa580a328eefef328e63594968ade870d6fab44fa54b60a91b3dc26118f556ae034c91a291d08c3063915d8788f45b8d3b5c95205219640e98e99ebc571d7a1a0d5647652be61de4118c1ee3f3af22186742525d0f4f13596229a7d4ea2ceeb20735b30dc7039ae3ad26c01cd6bc177c75ad1a3c1ab4b53a25941c73570ea529b5fb397ca0e40ae6e3bbc1e4d4e6eb8eb51ca9987235b1a9e72f5a8a49c63ad663de71d4e2ab4b7b9e3345871a45bbaba1b4f35ceea371f2633535cdd1238ac7926492e1448c4213ce2b58c6eec7751a56d489758bdb7b69ece1918413ffac4ec6b34f9a4f5c7d2b6b565b086e14583192328092dd8f7acb92770380a2bd5946c92933d185ada21b6f6f3dc4cb12139760bf31c0ad46f0cb5beb5fd9d7d7905b1db9f33395e9902b1bcf907f160fb52497124cfbe49598fa9acf9a95bded4a69df423953cb95933bb048c8ef49b5bb6682c339c9a76e51dcfe75cad45bba6680080a4d34b734f01429c8a69c63806a6cc06b1e41c5741e1c8bc3ee65935ab89e3dbf7162ef5cf9eb820f5a4efd0d5539384af6149732b5cbf78d6af772986594c5b8ecddd714d56b5e32d2e7daa98504f00d48b0138386e6b5539c9dec8564958b0f25be7ac87eb4c13aa9f95bf3a7a58b3b70cc3f0a9174f915836fc807b8a2746a4973728ad17b88de6b00d8383de9f6a6182e56477dc072715a57aa4da44b8c7d2a9a5833c4cc10900727d2b8d4938b4136a9491a76be26b8b6b5b8b5b79b64137df5c75aad1dfc9192cb329cff0b5518e321f054103b9156fc8565cf9631f4af7f053e7872c7a193e56ee595bf327fad8830f55e6ac6619946c383fdd22a8258ab918888f7048ae87c3d78ba35f7da26b34ba4da57649dabb97325a912f22a5bd834b8299058e015f9b1f51d6bb5b1b0b8fecb83ce02421f05a3fbcbed5c95c192e2f9ee6dadc2465b76c5fe1ae8f4fd59d618d648a4f354fde2dd6aa576b4396af334765a74d3a4a9193be1006d2460fd0d743948e463800e38e3bd64e99736f3a89da0093100363bfd6afb9dcc58f5af2abbd4e54ecc6c72306dce73839c53c4d866650016ef518ce28c74eb59377043fcd65e05248efb4b22a9940f949a3612b9e69c0718cd24edb018325a4967235f4e1679802c6471f2a5788f892e1af35b9e75e41727206066bdc3c4d70efa26a1122956fb3b156238271ff00d6af11b69629d02c98dc2b2c6cdd9268e8c3c9c6f22ada4e318279ad582618eb51eb9696be4dbded88da0aed954740deb5950de141835e79bb873aba3a359853ccd8efcd63477608ceee29e6ef3dff001cd062e93345a6cf4355a59aaa35d01dc55596e59f84fce84afb171a44f24c49c2fccc7a01556f6c6eedd51e74f2d64e54b559b37784e428673dfd2ba24d4ec1edee21d6ad5ae24f2f10b2f443f4af470d839497348dd5e1b238711b1eb20fce98d11273b81fc6bb2b0f0e69571e11d435393ed0b73030098fba79ae35bcb53d1ff3abab49c773784d4dbb741d6f6371753a450a6e7760aa33d49a76a3a65d6937af69791797327552738ad3d02f749b4b895f5186590143e5947c6d6ec6b26faee4bdbb796591dc93f79ce4e2b9ea469a85d6e527272f22b718e94b4d3466b96e6962505403903f3a3cc551c2d46b92a7b52f6155cec00c849ce051e613e94c39ef463dc51cf20b1279ee3a114e5ba9077350e0135661b49e53fbb819bf0aa84aa37a313b1d0e877da22e997a755339bac62011f4cd64fdb977617cc233dcd6ce8de125bdb5b89afaf63b3f29728a57717aa074eb68ff00e5e19c0efd2bd072adeced2318f2f33b13cafe658a31ed56e1d455f4cfb3409b17fe5a39efed55dd11ac888f213b6eeb553732e9e208972ce793e95e22959b48e8ad43da6ac8ee2e37308e0ea7d29c21b97007da180f7e29b1c11db2191dbe6c535b50881c2a16af7b090a74e3794b739d4395591a10c0c8016bc6cffb3cd69c2ea3e5dd237b9ac05beb8206c876afbd4f1dd49bfe790fd16bd285486d122516d9e81a0f886db48b3b881ecd25338c6f6c6453edaeec2442be4b1cf381cd725693162b8c051dcf35a51dfb67cab752efdf15cb8bc542868be2671d549688e82f7c571e95088eda2dadd718ac097c73aab312ace07a554beb0b957f32753b9aa05b4ce335e24f1339bbb64415348d6b7f1eea51382e5987bd773e18f1d59dfcc23bc014e319af2f6b4073814fb0d36e259f6c208f7a955a48a7c8b53e8ef2a092d4cb090f163395ac86e49c639af30d23c57aaf86e7305c977b66f94835e936b7b05e5847710b028e33b857561e4e445569aba30bc410591888ba7b8e475552c05790eb5a0ad95d196c273340c7382a4115eb3ae417571116b0b92ecb9cc6d820d7995f1556713c6f0ca0fde8db8cfd2bd47421529da7d07876d6c56d06647173a7dfe04770b8463d9a934b874a82d2fa0d420692e06562607183d8d51db34b3001c3e0e41c74ad4b7d3bcc25e4e5bbfbd7cdceac28556e2ee8f729d07569a4cc14b195e428a46074e6aaccb3c529460dc7a735daa69a88db82e2a95d6941896039ed8ac638b8b9ddec6b2c1348e48bb9192adfca9a0b767615af34735bbed76f93d48ad2d67c3b71a5695657eef0cb1dd0c8f2cf23bd7b5429d2a91e78b38a6bd9be59239913dca0f95e9e2f6e7a30cd2b4a0b0c9231fde5a9229de3903a18db073822b58a92768c983db62d47e23beb6d3a5d3db72db4a41643dea97da6d9fef2b2fd2b7aea6bff00196a96d0456d02ce13600b800e2b02fec5f4fbb92dae502cb1b15600d1565563ab775e64c3976b599d1087c213c16b8b9b8865319336e4c8df8edf8d73e9046f7c888ab2233851f3019e7f4a8acedadae6f228a5b830c6cc033919da3d69daadac361a84905bdc8b8894fcb28e33ef58ceab714dc5586a36bab97fc59696565ab7d9eced5edc2200e8cfbbe6c73cd60e053a491e562cec58fa934ddd5c756719cdb46b156561c33ce297693839a50df31c0a0b9c0a4b950c431ff79a8c2edf5a463cf073498cf434eeba202c44ea84310a3df157935129feac163ea4e0567c422539932ffecad5f5171281e44091267038e4d7442ab82bdc871bbb16966bbb850f2ccc17b2018dd56ad74b32fccf924d765e1cf06b9b25b9bbf9a77190a79da2b4a5f0db5b86931b540f4af0f1599fb49b8f31eb50c0a8abb47249a6068c211c5324d3020f95718aeb2d74f6b899628d72c4d753a7782a3122c97672a39dbeb5c12c5aa7bb3a9d28dac795cda3892d03b4247bfad7357313db4855215500f56afa1f55d12d65848440b81c002bc87c57a41b5766c631cf4eb5db96e65efd99cb89c2ae4e647251ef7192437e82b434f8a09efa28a77daacc0339e8a3d6b2bcef972c36af6f5351b5d492101010057d7fd6a14e373c5716f43aa9a08a7d5decb4b777b7538f30ff0015765a46950d8c630bb9fbb1ae6fc2f6cb04219bfd63724d76513e17ad7cfe22a4a7272678f88a8f9b97a134d6d14eb87407eb541b44b79189db8fa5682b67bd48a7278ae453923146447a0c01b2413ed5a1059c36c3f76a01a9836334c67c0aae69307e653d46d22ba8991d41e3ad60d8ea975a3acda6994f927e689bd0fa56f4f2706b91d75f1f3afde53915dd83a8e9cd334a0eef95ec492eb1776d73f6bb691860e5973dfd6a9eb5ad26ae118c012e0fde64e8ff0051eb514d0c912a6195c3ae481546dedda2bef9fb8c8af5730c6d3f62d537a9ecd0c3a734da352c2cc2a838e4f7add82dc0419150d94636015af146bb6be36acddcfa3a5049155a0cf1e9c5579e0c022ba33a629d385d467383871e9599247c1e2b18ccdac99c96a36a1c1c8ed5cadecf7703085a566897eeab1c815df5f4639fa5719ac811cc188047715eb60ab4a32d1d8f33174d5af63312ec37df5c7bad6ef87f55b3d36f1a79ad60b90c8576483d7bd57d1f45b5d68ce05dc76ad1c65c093f8b1d8563cd6f2464e0640ee2bdc53ab4fde6ae8f31a8cfdd2f996ee0bf6bab3cc477165f2cfddaa5732cb71334b705cc8c7258f735147712c47e5722b6b48f10a58ceed756515d23a14c38e9ef53ed215346ec1cae3aa573131fdd6148c491cd5990db4d2b328d993d076a63405412ac08ac254df42d32bf1b68c53b6909c8ef4dae76ac50ff00e239a4c7714eee78e3148b8c1f5a3402cd9db4170d279d38882ae471d4d546c027927fad39fdb34cab735cb6482c491b951f2726ba8f0c29b8d452498860bd057376d0096550edb549e715d5e98f6f6730488f4e94ab29fb06d6c5d16bda2b9ec9a3cabb17d2aeeb655ac703b8ae5f45d4018d79adcba90dcc4b1af7af8e9d3719dd9f469a766887c2b0efd438033eb5d94c763119ac2d1a38f4e0ec47cec3ad599efc0c9cd655bdf96864e0dc88efa6f948cd79ef8b3cb96ddf3f7b15d36a3a88546e6bcefc49aa8f29c03f5aecc1d2929268755a8c1dce4534d89f2f2c8073d0d13d9da5b421964cbe4002b2a4bc766272727bd110966704b13dc66bea6309b56b9f3d369a691dde8f3808bdaba8825dea39af3ed2aec80016e7bd759657430327f5ace513e7f1149a67428ff2d5ab495125cb722b263b8041e454ab28c75fd6b07039d4ac5a6932edf5a8a4618a85a6c0cee355a6ba001e69a80aed8975305079ae435b9f28e2b5ef6f060f3cd723aa5d17936fa9ade0b53af0d49f30e6d46484282781d6a78af4c97099fc0d645d1dd129fe2030692d65ca0c9f990f15db5b0b0b38adcf76136ac7a0d94a360ad98651b7ad70fa6ea61b0a4e1875ae860bd52bf7bb57ce56a4d3b1ecd1a89a3a486f5e18a48d4fcafc115525718aa0b763fbdd2a29aec7241ae750773a1c922bdf498cf3dab89d65f74b80338ae8752be0a8c73938c572cd74924d87e3debd4c1d2bc8f33175135628e769cc6db4d209a48db3923eb5a12e9c2e06f831bbd3b1aa0c248498e543c7635eaca9ce99e7a6993a4d0ca312a60ff7855f9f43813498efa2bc8dd9db062fe25f7acd4b749b1e53e1bfb8d4a4c901db20643fa1ad14d35fbc8dfcc969df46576420f4cd286650413c11dea7dcaf8dc307d454b773f9d0c29b13e418ca8eb597b3566d32afd0a8ae7673eb4601ed4cfe023de80463bd62a4cab174c76a2cc3076339ea3b62a9eec7d29467e86931c5129735b4b05ac231c9a4c714add68c135295dd80960de582a753deba0b28e1b5c166df29ec3b573d148231cf1f4a95ef5dc044f957be3a9adbdde4b3dc9d6f7477ba4eaea8fb778cfa035d7d9eb2a147cd5e61a46997262fb439291f627f8be95a11ea4d0cc210c4b7a578d89c1bbec7ab87c5e9a9ea23595dbf7aa8dd6b43070d5c49d638c6ee6aa5d6ae02125ab8e383d4ec7898d8ddd4b57dcadf35705adea0667f2d5b3eb4b7baa3cc4a44091eb54dadbca1be6c991bb7a7d6bd7c2e119e5e2713cda229c71b31e01269ec1a37196c1f6ab52916f1600fde91cfb55360dd5bad7a328a8688e2bdcd5492080c46194b123e6cf635b9677dc0e6b8c0c56b574fb891b20118519e6b9e5abd0e6ad46eae7690df9c75ab6b7e31826b938af411d6ad0bc3fdea8b1c12a0742f7fc75aa3717dc75aca7bc27f8aaa4d779185058e28b0e3409af2f700926b9eb894c8e5f9e0d3a7b8691b07d6a07fe351f5ada9c3a9e851a5ca895d8be7dc66a356d920c743481c8098f714c61c11e95d1295d291ba2c2ccca77a1c30eb5a96bac32a2eefa560ab10411f8d3f3b1b23ee9ae7a94e353566919b86c7571eb8840f9aa09f5b53d09ae75810720f19cd6dd868915fe8179a99d4238a6b6fbb03757158c3077934ba173c5492d4a7737936f121c3467b8e94c36c97685e0237f75a86da73129206e43f790d3cc0f17fa55a1263ea40ea2baa9463056b5d18b6e5a8c8ae27b3976f208ec6b72296c755844728549bd1b8cfd0d67c6f06a60248024fd377ad433d84b68c01191d7ffd55d9094a2b4d6264edd772f5cf86aea35f3ad95a54f41d45668b89230639d77a8e0823915b7a2788ee74c942c9fbeb7e855baad76d2e97a67893c313c9a65adbb5f3382180f9e9ba34e4af4ddbc8ce551c3e23cb24891fe7b73f55aae490483c1ab7a8595ce9b76f05c46d14c8706a185a296755b83b509e596b8a51bcb97667427a5c841dd9a6edf7a96658d25658d8b20e86a1c8cd632d1d9943d58e71d8d030323b520c6e24d273cd45c0573cfad5a8af84366f08894bb1fbf8e6a91a33550a9283d02d7147cdf5adab1d31ada48a6bc8586ef9914f4358abf7811c735a4d7f2ce8be7cade5a0da3d4fb0ada83a7ab9ee4cd3d91d2dc6acf77198adb6a228c4970dc2463d00ee6aae9d6371a8ddfd8f4a85a591b9795b838f527b0f6ac589ae2f9d2241b22070883a0ffebd7a4f87218b45d308de03cbf78af56f6ae9e5f6dab32bf2688cd93c3b1e996cd2cf28764ff5921e141f415c9de2b5e48182b2404e2351f7a5fa0aebb55b99b56d412ce28cceff00f2cedc7dd5ff0069eb2350b54d2a52f35c0927030eebebfdd4150f0d04f42d559346747642d23dc5419cf007509edee6a0bb85ad982bff00ad2371cff0fb9f7aecf4cd37fb3f4d5d46f22f3350b807ecd6e7a44bfde35cdcd60f7974e32597765dff00be7fc2b4b59682319e069207b820851c267b9f5aa120c2e4e7e95bda830c792a31041f788ee6b0242652d27419c5635ec958a8dc8853d5d90fcad8a653829ce31cd722b96cb11ccca09cf5a985ccaa81c86da7a1c706a9b9c71e95a51c979a869e2de3883476e0b1207415bc29c652e5ea6728a1b04d3cccde5a33ed19200ce054335ec8b2ee4f94e318153697acdce90d2fd9f68332146c8ec6b3e562ce49ea694a308c2eb7050f7b6d00b16704e7269ea46f3ee2a31da973f38c5352d0bb067e5fc6958f43ea290756a4cfca3d684c2c2630c4549110731b0ebd0fa1a46cf0d5306caacc07cc87914968c0445724c2c30c3d6a2dcf1b3202403c1ad4be87cd823be8076c39a9ee6c6cae74582e6de62d787fd6a63a56becdcae93d57e44f36d73109298c74fe756ad2eda03ba3e47f121aa983bb61e3eb480b46f9e84573c66e2ca68d596c45ca1bab1fbc3e6688751ee2b4b4ad56d6f1a3b6d4c61811f39e8c3d0d65d9ce540963628579c8fe1ffeb5684d6316b2acd08587505e5a3e824f715db06e3ef53f9a3292e6d193ebd1581d41cd840f0c400c2b1c9fafb8aada56b57ba14d24b672ec6906d38e86aac37ad1ff00a15fa3610e031fbc869d776cd126f0432b7dd917a1fad5babccf9e02e4d395897daa9d4a7692ebfd6b9cb31ee6b3658b6723eed36443bb18c1a37b22953dfb5724e7ccfde348c6cb41814aa9cf19a65588d1e7ddb39da338a83907a56338db55b168f521e11d173ff1e7ff00911bfc681e12d1327fd0ff00f2237f8d6d81cd2815f33edaa7f333f47fa961bfe7dafb91847c23a267fe3cbff2237f8d1ff088e89ff3e7ff00911bfc6b76928f6f53f998fea386ff009f6bee461ffc223a28ff00973ffc88dfe341f09e8c5b26d3ff002237f8d6e76a4a3eb157f9987d470dff003ed7dc8aba6f8774a8dd996d4020000ee3fe35ae34db54181101c63a9a4b0182e7d71570d358baebedbfbce3ab83c3f3fc0bee2182d2dad4ccd0411a34c31232a805bf1aa32687a6bde4576f6cad2c472992481f874ad5eb51b0eb47d6ab7f3bfbc8584a1fc8bee209a28e77779572cebb49f6f4f6a823d2ece34da90281dfad5bfad28a7f5aadfcefef1fd5287f22fb8c897c2fa44d6fe43da0f2f39c0761cfd7350b782b402814d8f0bd3f78ff00e35bc3047bd38d4bc4d67bc9fde2faa61ff917dc73c9e09f0f821bec3c8ffa6aff00e34e1e0cd04485fec1c9f591bfc6b7c1a5e28fac55fe661f54a1fc8bee39c6f04787c9c9b1e7febabff8d4f6de14d1ad164586d0a87186fde31cfeb5b7f8d1eb8a6b13593ba93fbc3ea943f917dc73dff084e81bb3f61ffc8aff00e348fe09d01c96363cff00d7471fd6ba2eb484e28788abfccfef0faa50fe45f71ceffc215a0600fb07fe457ff1a77fc213a0707ec3ff00915ffc6b7f19a71f6e947d62aff330faad0fe45f7181ff000856804e7ec1cffd757ff1a45f04e80bff002e1f9caffe35d00e941a3eb157f99fde1f55a1fc8bee30a4f07e82c083600e7afef1bfc69a9e0dd050102c0608c7fac7ff001ade3da8cf149e26b7f33fbc3ea943f917dc64c1e1ad22da06822b25f2dba82c4ff3351c1e14d16d999a2b203775cbb1fe66b6c0ed48411de9fd6ab7f33fbc3ea943f917dc60cde0fd0a690c8f60371ee2461fc8d30f837417c6eb11c0c0fde3ff008d6f9e4d1fce97d62aff00331fd5287f22fb8c38bc1fa142db92cb071ff3d1cff5a9d3c31a4218dd6cc031fdd21db23f5ad614bd062a9626aada4fef27ea943f917dc64ddf86748d425f32eac95dff00bc0953fa1a58bc35a4431792966bb0f556663fccd6b2f7a5efc7ad1f59ab7bf33fbc7f54a1fc8bee30dfc21a1ba8dd60bc7fb6dfe34c6f066807ae9ebff7f1bfc6ba03c8a4349d7aafed317d5687f22fb8c24f07e8311cc76001231feb1bfc69bff086e807fe61ebff007db7f8d6f518a7f58ab6b7330faad0fe45f7197de928341e86b13d94283c51c6693b521a4303d2819a43d2957a521976c7a3fe156b7553b2270ff855bef48e2abf1b1c49cf151934f3cd308eb419a1a7dea2b96ff44971c7c879fc2a422a2baff8f49bfeb9b7f2ab8ee853f859cb787f438752d222b99eeef7cc72776d9c8ef57b43966b5d76ff004afb549736f122ba348db9909ed9acef0e7876daf346866927ba52d9c849481d7d2ba4b3b0d3f4384ac5b63f35b059dbe663f53d6ba6acd27257b9c1469c9a8cad6b7533aeeefc8f1b426498a40b62ccc0b617af5a64725c789eec48923c1a544dc156c34c47f4aadab69f16a7e38b482e371885a17651c6ec31e3e952c4dff08beb1e437fc832edb319ed13fa7d29d972ab7c5625b973cb9be1bff5f23a90a114051803814bd8d44d3c2b3088c88246e554b7269e46739ae449dcf434b1c3785aeee61d624f3e67786ea4911373121594ff00f5eaff008d2ea7fb347676b2323ed69e4653821147f527f4aceb58997c352de443325a5f3ca31d71919fd2ac4b27f6969badeadd51e1f261f65039c7d4d77b4bda73fc8f2e3292a2e9f57afc8d48e5876e87e74b3095d46c0a7863b79dd5058eb933f883518e486e5a28c2844dbf738e7f3351483f7fe18e7b7fec95734c741e2cd69598066f2b03d7e4151caacdb5fd5cd14e4e49276d7f419e1cd69eead6ee4bbf3408ddd8c8ebf28507a54ede28b758c4e6d2ebeca7fe5b18fe5c7ad656997b1d8f8635395e359592693311ef96c73ed4cd4c5fb7871ee2eb54b7485e21b6da08860e7a2e49cd1ece2e6db5d44aace34d24fa5cd4d5672dad6866290f952339e0f0c30315d0015c99c19fc2b81c6c6eff00ecad75c3a73d2b0aaac92feb73a684dcaedff5a02f7a43cd2818e9487839ac8e94211463f3a1b26907d29218a3d6947d290d3874a6210019a7018a418cf34b8c9a001b814da7374c537b6698905264d068fce90ccc349499f6a299e88bc521e94a692930421e94e1d29a4f14e1d28196acbf8ff0ab5c93d6ab58e3e7fc2ad1c549c557e3638f4a8fbd3c9a8cf079a0cd0d3d68650c8548ca9e08f6a3bd03f0a63b5c8ad6da1b484436e8238c7451da96e6d2deed6313c424d8dbd77763eb520e69c48a149def7138ab5ba10fd9203782ecc40dc2a6c0fdf6fa52ddda5bdec061b989658cf255854abdf9a5ea69f33bdc4e317f32bfd82d7ce867f257cd8576c6dfdd156739e290fad00d176f760a292d8af158dac16cf6f1c0ab14849651d0e7ad3174fb44b13669028b620831f6c77ab59e68e29f34bb8b923d8ae6c6d98c07ca526dff00d57fb3c638a63e996525fadeb40a6e546049deadf18e28031cd1cf2dc3922fa149348d3d269a75b58f7cca56438fbc0f5a8a3f0fe95113b6ce3c1c8c1c91f87a5698140a3da4d7525d38762b0d3ed145b6215ff47c88bfd818ab6391cd273c0a53c0f7a4e4dee52496c19e0d2139a39eb8eb4d39c8a4520269d918a6f39a06719a100e078a70c63269833e94e0323da9885039e2824629a334ec9a02c079a6e4d3b3914cc914c10b9c6334bc53734648e940332bf0a50322973dcd20e948f40713d2994a7a5277eb43290b4bda9334b9cd202d58f47fc2ad77aab65d1ead7e3499c557e362f4a61f7a77406999a0cd0d3d28038a0d2fbd3180eb8c52e0f4c527f17069d9c5480014e00534771477a626291f4a423de8279a2818948719a5e84d21c633de9800200a5cd347ad3bd78a2e0c71e0735674dd8752b70e015f306ecf4c554c9f4e94a00ee293ec4495e2d1d3416910f11b4aeb17d91a591146e1d81238a8b58b04942dc5a18c5b88f7152c030e7a7bd606f1d314bbb23eb50a2ef739961e6a6a5cdb1bfa55bdb4fa4849c265ae42939c10b8156e3d374e899ca28666b6970aef9f98118fa57281bb5216cf7a1c3cc9961652936a4d1d1ff6569de55b15dce5f6ef7120daa73c8eb5243a5e9924932956023b8110fde751ddbe95cb1a50714283ee3fab4edf1b3a81a358c768f2bba96521970fd46ec11f955896c6c8cd788e638a1322619483c77ae3c31a7063b68e47dc9785a8f79b3a91a3e9be60de76b6c90ec12672011b4e7dea48b44d39a73b9d44442f5939048fafad72409ce694b7b51c8fb83c2d4e9519afad2451db5808c2e443f363d73deb1e866c8eb4debf5ad22ac74d2a6e10b3d471c518fa7e74deb4647a9aa346665203d6901cd0a7a8a47a43bb52519e28c8a4c10bc0a334940a405bb33c3d5927deaad99e18558270691c9557bec7678e6984e326949e2a3273419a1dbb8f5a5cf1d2a32714034d8d224047069c4f151038c5389029058703d0f4a527238a6834134c56149e28c834ccfeb4a0f1482c38b534b628ce69a48cd318fcf14a0d301078a5a04d127f0e69375267a53722815871eb9a786c0f5a8a9e0e00a4818a1b9349499001e29323f1a60853d2818a43c52640e68403b2334ecf15167269d9c2d00381e6949f6a8c1e6949a6161edd05373484f4a424503b0fa334c27d69734ee2b1ffd9, 'ALL', '1');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE IF NOT EXISTS `orders` (
  `user_name` varchar(30) NOT NULL,
  `Address` varchar(300) NOT NULL,
  `MobileNumber` varchar(10) NOT NULL,
  `PaymentMethod` varchar(20) NOT NULL,
  `PaymentStatus` varchar(20) NOT NULL DEFAULT 'Pending',
  `PaymentToken` varchar(20) NOT NULL,
  `OrderStatus` varchar(20) NOT NULL DEFAULT 'PROCESSING',
  `order_no` varchar(30) NOT NULL,
  `city` varchar(30) NOT NULL,
  `courire_id` bigint(10) NOT NULL,
  `BookId` int(10) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`user_name`, `Address`, `MobileNumber`, `PaymentMethod`, `PaymentStatus`, `PaymentToken`, `OrderStatus`, `order_no`, `city`, `courire_id`, `BookId`) VALUES
('abhishekdudhal', 'VJTI', '9011902243', 'PAYTM', 'Pending', '', 'PROCESSING', 'ord472', 'Mumbai', 1, 15),
('abhishekdudhal', 'vjti', '9011905566', 'COD', 'Pending', '', 'PROCESSING', 'ord371', 'Mumbai', 1, 16);

-- --------------------------------------------------------

--
-- Table structure for table `rbook`
--

CREATE TABLE IF NOT EXISTS `rbook` (
`ID` int(10) NOT NULL,
  `BOOKNAME` varchar(66) DEFAULT NULL,
  `Year` varchar(5) DEFAULT NULL,
  `Branch` varchar(20) DEFAULT NULL,
  `Sem` varchar(1) NOT NULL,
  `Author` varchar(44) DEFAULT NULL,
  `PublicatonHouse` varchar(40) DEFAULT NULL,
  `Rent` int(2) NOT NULL DEFAULT '1',
  `stock` int(3) NOT NULL DEFAULT '2',
  `BookImage` varchar(1000) NOT NULL DEFAULT 'rbook/na.jpg'
) ENGINE=MyISAM AUTO_INCREMENT=224 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `rbook`
--

INSERT INTO `rbook` (`ID`, `BOOKNAME`, `Year`, `Branch`, `Sem`, `Author`, `PublicatonHouse`, `Rent`, `stock`, `BookImage`) VALUES
(1, 'A Text Book of Engineering Chemistry', 'FY', 'ALL', '1', 'Shashi Chawla', ' Dhanpat Rai ', 1, 2, 'nbook/1.jpg'),
(2, 'Engineering Chemistry', 'FY', 'ALL', '1', 'Jain and Jain', ' Dhanpat Rai ', 1, 2, 'rbook/2.jpg'),
(3, 'Applied Physics', 'FY', 'ALL', '1', 'P.K.Mittal', ' I. K. International publications', 1, 2, 'rbook/3.jpg'),
(4, 'A textbook of Engineering physics', 'FY', 'ALL', '1', 'Avadhanulu & Kshirsagar', ' S.Chand ', 1, 2, 'rbook/4.jpg'),
(5, 'Applied Mathematics I', 'FY', 'ALL', '1', 'C V Kumbhojkar', 'Jamanadas and Co', 1, 2, 'rbook/5.jpg'),
(6, 'Higher Engineering Mathematics', 'FY', 'ALL', '1', 'Dr B.S Grewal', 'Khanna Publication', 1, 2, 'rbook/6.jpg'),
(7, 'Text Book of Electrical Technology', 'FY', 'ALL', '1', 'B.L. Theraja', ' S.Chand ', 1, 2, 'rbook/7.jpg'),
(8, 'Principles in Electrical Engineering', 'FY', 'ALL', '1', ' S. Parker', ' Oxford university', 1, 2, 'rbook/8.jpg'),
(9, 'Engineering Drawing', 'FY', 'ALL', '1', ' N. H. Dubey', ' Nandu Publishers & Printers ', 1, 2, 'rbook/9.jpg'),
(10, 'Engineering Drawing & Machine Drawing', 'FY', 'ALL', '1', ' N. D. Bhatt ', ' V.M. Panchal, Charotar publishing house', 1, 2, 'rbook/10.jpg'),
(11, 'Mechanics for Engineers, Statics and Dynamics', 'FY', 'ALL', '1', 'A K Tayal', ' Umesh Publication', 1, 2, 'rbook/11.jpg'),
(12, 'Mechanics for Engineers', 'FY', 'ALL', '1', 'R C Hibbeler', 'Pearson Education', 1, 2, 'rbook/12.jpg'),
(13, 'C++: The Complete Reference', 'FY', 'ALL', '1', 'Herbert Schildt ', 'Oracle', 1, 2, 'rbook/13.jpg'),
(14, 'Object oriented programming with C++', 'FY', 'ALL', '1', 'E Balguruswamy', ' Tata McGraw Hill', 1, 2, 'rbook/14.jpg'),
(15, 'Let us C', 'FY', 'ALL', '1', 'Yashwant Kanetkar', 'BJB publication', 1, 2, 'rbook/15.jpg'),
(16, 'Advanced Engineering Mathematics ', 'FY', 'ALL', '1', 'H K Dass', ' S Chand', 1, 2, 'rbook/16.jpg'),
(17, 'Engineering Mathematics', 'FY', 'ALL', '2', 'G. V. Kumbhojkar', ' C. Jamnadas & Co', 1, 2, 'rbook/17.jpg'),
(18, 'Advanced Engineering Mathematics', 'SY', 'Civil Engineering', '3', 'H.K.Dass', 'S. Chand', 1, 2, 'rbook/18.jpg'),
(19, 'Theory & Problems In Numerical Methods', 'SY', 'Civil Engineering', '3', 'T. Veerarajan', 'Tata-Mcgraw Hill', 1, 2, 'rbook/19.jpg'),
(20, 'Surveying & Leveling', 'SY', 'Civil Engineering', '3', 'N.N.Basak', 'Tata-Mcgraw Hill', 1, 2, 'rbook/20.jpg'),
(21, 'Surveying', 'SY', 'Civil Engineering', '3', 'R.Agor', 'Khanna Publications', 1, 2, 'rbook/21.jpg'),
(22, 'Building Construction', 'SY', 'Civil Engineering', '3', 'B C Punmiya', 'Laxmi Publications', 1, 2, 'rbook/22.jpg'),
(23, 'Engineering Materials', 'SY', 'Civil Engineering', '3', 'Rangwala', 'Charotar Publication', 1, 2, 'rbook/23.jpg'),
(24, 'Materials of Construction', 'SY', 'Civil Engineering', '3', 'Ghosh', 'Tata McGraw Hill Publications', 1, 2, 'rbook/24.jpg'),
(25, 'Engineering Fluid Mechanics', 'SY', 'Civil Engineering', '3', 'K L Kumar', 'S Chand', 1, 2, 'rbook/25.jpg'),
(26, 'Hydraulics and Fluid Mechanics', 'SY', 'Civil Engineering', '3', 'Dr P M Modi ', 'Standard Book House', 1, 2, 'rbook/26.jpg'),
(27, 'Theory and Applications of Fluid Mechanics', 'SY', 'Civil Engineering', '3', 'K. Subramanya', 'Tata McGraw Hill', 1, 2, 'rbook/27.jpg'),
(28, 'Fluid Mechanics', 'SY', 'Civil Engineering', '3', 'A.K.Jain', 'Khanna Publications', 1, 2, 'rbook/28.jpg'),
(29, 'Mechanics of Structures Vol I', 'SY', 'Civil Engineering', '4', 'S.B. Junnarkar', 'Charotar Publication house', 1, 2, 'rbook/29.jpg'),
(30, 'Mechanics of Materials', 'SY', 'Civil Engineering', '4', 'Peter & Singer', 'McGraw Hill', 1, 2, 'rbook/30.jpg'),
(31, 'Engineering Mechanics', 'SY', 'Civil Engineering', '4', 'Timoshenko & Young', 'Tata McGraw Hill', 1, 2, 'rbook/31.jpg'),
(32, 'Computational Mathematics', 'SY', 'Civil Engineering', '4', 'G V Kumbhojkar', 'C Jamnadas & Co', 1, 2, 'rbook/32.jpg'),
(33, 'Structural Mechanics Vol I & II', 'SY', 'Civil Engineering', '4', 'Junnarkar', 'Charotar Publishers', 1, 2, 'rbook/33.jpg'),
(34, 'Basic Structural Analysis', 'SY', 'Civil Engineering', '4', 'CS Reddy', 'Tata McGraw Hill', 1, 2, 'rbook/34.jpg'),
(35, 'Engineering and General Geology', 'SY', 'Civil Engineering', '4', 'Parbin Singh', 'S K Kataria & Sons', 1, 2, 'rbook/35.jpg'),
(36, 'Soil Mechanics & Foundation Engineering', 'SY', 'Civil Engineering', '3', 'B C Punmia', 'Laxmi Pub.', 1, 2, 'rbook/36.jpg'),
(37, 'Concepts in Environmental Studies', 'SY', 'Civil Engineering', '4', 'D D Mishra', 'S Chand & Co Ltd', 1, 2, 'rbook/37.jpg'),
(38, 'Applied Maths', 'SY', 'Computer Engineering', '3', 'G. V. Kumbhojkar', 'Jamnadas & Co', 1, 2, 'rbook/38.jpg'),
(39, 'Digital Communications', 'SY', 'Computer Engineering', '4', 'John G. Proakis', 'Mcgraw Hill', 1, 2, 'rbook/39.jpg'),
(40, 'Programming With Java', 'SY', 'Computer Engineering', '3', 'E Balagurusamy', 'Tata Mcgraw Hill', 1, 2, 'rbook/40.jpg'),
(41, 'Discrete mathematics & its Applications', 'SY', 'Computer Engineering', '3', 'Kenneth H Rosen', 'Tata McGraw Hill', 1, 2, 'rbook/41.jpg'),
(42, 'Elements of Discrete Mathematics', 'SY', 'Computer Engineering', '3', 'C. L. Liu and D. P. Mohapatra,', 'Tata McGraw Hill', 1, 2, 'rbook/42.jpg'),
(43, 'Textbook of Environmental studies', 'SY', 'Computer Engineering', '3', 'Erach Bharucha', 'UGC', 1, 2, 'rbook/43.jpg'),
(44, 'Modern Digital Electronics?', 'SY', 'Computer Engineering', '3', 'R.P. Jain', 'Tata McGraw Hill.', 1, 2, 'rbook/44.jpg'),
(45, 'Computer Organization and Architecture', 'SY', 'Computer Engineering', '4', 'W. Stallings', 'Maxwell Macmillan', 1, 2, 'rbook/45.jpg'),
(46, 'TCP/IP Protocol suite', 'SY', 'Computer Engineering', '4', 'Behrouz Forouzan', 'Tata McGraw Hill.', 1, 2, 'rbook/46.jpg'),
(47, 'Introduction to Algorithms', 'SY', 'Computer Engineering', '4', 'T.H.Cormen', 'MIT Press/McGraw Hill', 1, 2, 'rbook/47.jpg'),
(48, 'Applied Mathematics', 'SY', 'Electrical', '3', 'G. V. Kumbhojkar', 'Jamnadas & Co', 1, 2, 'rbook/48.jpg'),
(49, 'Engg Circuit Analysis', 'SY', 'Electrical', '3', 'W.H.Hayt', 'Tata McGraw Hill', 1, 2, 'rbook/49.jpg'),
(50, 'Integrated Electronics', 'SY', 'Electrical', '3', 'Millman and Halkius', 'Tata Mcgraw Hill,', 1, 2, 'rbook/50.jpg'),
(51, 'Electrical Machines', 'SY', 'Electrical', '3', 'C.Kingsley', 'TMH Publication,', 1, 2, 'rbook/51.jpg'),
(52, 'Power System Analysis', 'SY', 'Electrical', '3', 'Gupta B.R.', 'Wheeler', 1, 2, 'rbook/52.jpg'),
(53, 'Network Analysis', 'SY', 'Electrical', '4', 'M.E.Valkenburg', 'Prentice', 1, 2, 'rbook/53.jpg'),
(54, 'Electronic Devices and Circuit Theory', 'SY', 'Electrical', '4', 'Boylestad', 'Prentice Hall,', 1, 2, 'rbook/54.jpg'),
(55, 'Power electronics: Circuit devices', 'SY', 'Electrical', '4', 'M.H Rashid', 'Prentice', 1, 2, 'rbook/55.jpg'),
(56, 'Linear Integrated Circuits', 'SY', 'Electrical', '4', 'Ramakanth Gaikwad', 'Prentice Hall', 1, 2, 'rbook/56.jpg'),
(57, 'Electronic Circuit Analysis and Design', 'SY', 'Electronics', '3', 'Donald A. Neamen', 'McGraw Hill', 1, 2, 'rbook/57.jpg'),
(58, 'Numerical Methods for Engineers', 'SY', 'Electronics', '3', 'C Chapra', 'Tata McGraw Hill', 1, 2, 'rbook/58.jpg'),
(59, 'Engineering Mathematics-', 'SY', 'Electronics', '4', 'T. Veerarrajan', 'Tata McGraw-Hill', 1, 2, 'rbook/59.jpg'),
(60, 'Digital Design Principles and Practices', 'SY', 'EXTC', '3', 'John F. Wakerley', 'Pearson Education India', 1, 2, 'rbook/60.jpg'),
(61, 'Circuits and Networks', 'SY', 'EXTC', '3', 'A. Sudhakar & S. P. Shyammohan', 'Tata McGraw Hil', 1, 2, 'rbook/61.jpg'),
(62, 'Electronic Communication Systems', 'SY', 'EXTC', '4', 'Wayne Tomasi', 'Pearson Education', 1, 2, 'rbook/62.jpg'),
(63, 'Signal Processing & Linear Systems', 'SY', 'EXTC', '4', 'Lathi,', 'Oxford University Press', 1, 2, 'rbook/63.jpg'),
(64, 'Modern Digital and Analog Communication Systems', 'SY', 'IT', '4', 'B. P. Lathi', 'Oxford Press', 1, 2, 'rbook/64.jpg'),
(65, 'Electronics Communication System', 'SY', 'IT', '4', 'George Kennedy', 'McGraw-Hil', 1, 2, 'rbook/65.jpg'),
(66, '"Data Structures and Algorithms', 'SY', 'IT', '3', 'J. E. Hopcroft', 'Addison Wesley', 1, 2, 'rbook/66.jpg'),
(67, 'Fundamentals of computer algorithms', 'SY', 'IT', '4', 'Sartaj Sahani', 'Galgotia Publication', 1, 2, 'rbook/67.jpg'),
(68, 'Environmental Studies', 'SY', 'IT', '3', 'Kaushik & Kaushik', 'Oxford University Press', 1, 2, 'rbook/68.jpg'),
(69, 'Computer Organization and Architecture', 'SY', 'IT', '4', 'William Stallings', 'Prentice Hall', 1, 2, 'rbook/69.jpg'),
(70, 'Database System Concepts', 'SY', 'IT', '4', 'Henry Korth', 'Tata McGraw Hil', 1, 2, 'rbook/70.jpg'),
(71, 'Elements of workshop Technology (Vol I & II)', 'SY', 'Mechanical', '4', 'Hajra & Choudhary', 'Media promoters', 1, 2, 'rbook/71.jpg'),
(72, 'Engineering Thermodynamics', 'SY', 'Mechanical', '3', 'P. K. Nag', 'McGraw Hill', 1, 2, 'rbook/72.jpg'),
(73, 'Machine Drawing Solid Geometry', 'SY', 'Mechanical', '3', 'N. H. Dube', 'Nandu Publishers', 1, 2, 'rbook/73.jpg'),
(74, 'Machine Drawing', 'SY', 'Mechanical', '3', 'N. D. Bhatt', 'Charotar Publishing', 1, 2, 'rbook/74.jpg'),
(75, 'The Complete Reference Java', 'SY', 'Mechanical', '3', 'Herbertz Schildt', 'Tata McGraw-Hill', 1, 2, 'rbook/75.jpg'),
(76, 'Thermal Engineering', 'SY', 'Mechanical', '4', 'Ballaney', 'Khanna Publishers', 1, 2, 'rbook/76.jpg'),
(77, 'Theory of Mechanisms and Machines', 'SY', 'Mechanical', '4', 'A. Ghosh and A. Kumar Mallik', 'Khanna Publishers', 1, 2, 'rbook/77.jpg'),
(78, 'Manufacturing Technology - Metal Cutting', 'SY', 'Production', '3', 'P N Rao', 'Tata McGraw Hill', 1, 2, 'rbook/78.jpg'),
(79, 'Material Science & Metallurgy', 'SY', 'Production', '4', 'V.D. Kodgire', 'Everest Publication House', 1, 2, 'rbook/79.jpg'),
(80, 'Thermodynamics and Heat Engines: Vol I and II', 'SY', 'Production', '3', 'R.Yadav', 'Cental Publishing House', 1, 2, 'rbook/80.jpg'),
(81, 'Theory of Machines', 'SY', 'Production', '4', 'S.S. Rattan', 'Tata Mcgraw Hill', 1, 2, 'rbook/81.jpg'),
(82, 'Construction Equipment and its Planning', 'TY', 'CIVIL', '5', ' R. L .Purifoy & Ledbetter', ' McGraw Hill', 1, 2, 'rbook/82.jpg'),
(83, 'Concrete technology', 'TY', 'CIVIL', '5', ' M  S Shetty', 'S Chand  Prakashan', 1, 2, 'rbook/83.jpg'),
(84, 'Building Drawing', 'TY', 'CIVIL', '5', ' Y. S. Sane', ' Allied Book Stall', 1, 2, 'rbook/84.jpg'),
(85, 'Structural Mechanics Vol. II', 'TY', 'CIVIL', '5', ' Junnarkar S.B', ' Charotar Publishers', 1, 2, 'rbook/85.jpg'),
(86, 'Intermediate Structural Analysis', 'TY', 'CIVIL', '5', ' Wang C. K', ' Tata McGraw Hill', 1, 2, 'rbook/86.jpg'),
(87, 'Soil Mechanics & Foundation Engineering ', 'TY', 'CIVIL', '6', 'K. R. Arora', ' Standard Pub. & Distributors', 1, 2, 'rbook/87.jpg'),
(88, 'Building Drawing with an integrated approach to built environment', 'TY', 'CIVIL', '6', ' M. G. Shah, Kale, Patki', ' Tata McGraw Hill', 1, 2, 'rbook/88.jpg'),
(89, 'Beginning AutoCAD', 'TY', 'CIVIL', '6', 'Cheryl Shrock', 'BPB Publication', 1, 2, 'rbook/89.jpg'),
(90, ' Principles and practice of highway engineering', 'TY', 'CIVIL', '6', 'L R Kadiyali, N B Lal', ' Khanna Publications', 1, 2, 'rbook/90.jpg'),
(91, ' Design of Steel Structures', 'TY', 'CIVIL', '6', ' S. S. Bhavikatti', 'International Publishing House Limited', 1, 2, 'rbook/91.jpg'),
(92, 'Microprocessors and Interfacing, Programming and Hardware', 'TY', 'Computer ', '5', ' Douglas Hall', ' Tata McGraw-Hill', 1, 2, 'rbook/92.jpg'),
(93, 'Software Engineering', 'TY', 'Computer ', '5', 'Roger Pressman', ' Tata McGraw-Hill', 1, 2, 'rbook/93.jpg'),
(94, 'Systems programming & Operating systems', 'TY', 'Computer ', '5', 'D. M.  Dhamdhere', ' Tata McGraw Hill ', 1, 2, 'rbook/94.jpg'),
(95, 'Compilers: Principles, techniques and tools', 'TY', 'Computer ', '5', 'Aho, Sethi and Ullmann', ' Pearson Education ', 1, 2, 'rbook/95.jpg'),
(96, 'Java Network Programming ', 'TY', 'Computer ', '5', 'Elliotte Harold ', 'O''relly Publications ', 1, 2, 'rbook/96.jpg'),
(97, 'Internetworking with TCP/IP Vol- III', 'TY', 'Computer ', '5', 'E. Comer', ' BSD Sockets Version', 1, 2, 'rbook/97.jpg'),
(98, 'Fundamentals of Database Systems', 'TY', 'Computer ', '5', ' Elmasri and Navathe', ' Addison ', 1, 2, 'rbook/98.jpg'),
(99, 'SQL: The Complete Reference', 'TY', 'Computer ', '5', 'James R. Groff , Paul N Weinberg ', 'McGraw Hill ', 1, 2, 'rbook/99.jpg'),
(100, 'Web Engineering', 'TY', 'Computer ', '6', 'Roger S Pressman and David Love', 'The Tata McGraw-Hill ', 1, 2, 'rbook/100.jpg'),
(101, ' Object-Oriented and Classical Software Engineering', 'TY', 'Computer ', '6', 'Stephen R. Scatch', 'The Tata McGraw-Hill ', 1, 2, 'rbook/101.jpg'),
(102, 'Content Management for Dynamic Web Delivery ', 'TY', 'Computer ', '6', ' John S. Rhodes ', 'Wiley Publishing Inc ', 1, 2, 'rbook/102.jpg'),
(103, ' Embedded Systems Architecture, and Programming', 'TY', 'Computer ', '6', 'Raj kamal', 'TMH Publications', 1, 2, 'rbook/103.jpg'),
(104, ' Software Engineering', 'TY', 'IT', '6', 'Roger S. Pressman', 'The Tata McGraw-Hill ', 1, 2, 'rbook/104.jpg'),
(105, 'Polymer science', 'TY', 'Textile', '5', 'V. R. Gowariker ', ' New Age International Limited', 1, 2, 'rbook/105.jpg'),
(106, 'Physical Properties of Textile Fibres', 'TY', 'Textile', '5', ' W. E. Morton & J. W. S. Hearle', 'Textile Institute Publication', 1, 2, 'rbook/106.jpg'),
(107, ' Spinning of Man-made Fibres and Blends on Cotton System', 'TY', 'Textile', '5', ' K R Salhotra', 'NA', 1, 2, 'rbook/107.jpg'),
(108, 'Principal of Electronics', 'TY', 'Textile', '5', 'Mehata V.K.', ' S.Chanda & Co', 1, 2, 'rbook/108.jpg'),
(109, 'Textile Yarns ', 'TY', 'Textile', '5', ' B. C. Goswami', ' J. G. Martindale & Seardino', 1, 2, 'rbook/109.jpg'),
(110, 'Fibre science and Technology ', 'TY', 'Textile', '5', ' Premamoy Ghosh ', 'Tata McGraw Hill Publication', 1, 2, 'rbook/110.jpg'),
(111, ' Principles of Weaving', 'TY', 'Textile', '6', 'Robinson & Marks', 'Robinson & Marks', 1, 2, 'rbook/111.jpg'),
(112, ' Electronic Instrumentation & Measuring Techniques', 'TY', 'Textile', '6', 'Cooper William David', 'Prentice Hall Pub', 1, 2, 'rbook/112.jpg'),
(113, ' Structural Mechanics of Fibers', 'TY', 'Textile', '6', 'J.W.S Hearle', 'Wiley Interscience Pub', 1, 2, 'rbook/113.jpg'),
(114, ' Textiles for Protection', 'TY', 'Textile', '6', 'Richard A. Scott', ' Woodhead Publishing Limited. ', 1, 2, 'rbook/114.jpg'),
(115, ' Knitting technology', 'TY', 'Textile', '6', 'D J Spencer ', 'Woodhead Textiles', 1, 2, 'rbook/115.jpg'),
(116, 'Weaving technology and Operations', 'TY', 'Textile', '6', 'A. Ormerod', ' Woodhead Publishing Ltd. ', 1, 2, 'rbook/116.jpg'),
(117, 'Metal casting Technology', 'TY', 'Production', '5', ' B.Ravi', 'PHI Publication 2006 ', 1, 2, 'rbook/117.jpg'),
(118, 'Mechanical Metallurgy', 'TY', 'Production', '5', 'George  Dieter', 'McGraw Hill International ', 1, 2, 'rbook/118.jpg'),
(119, 'Engineering Metrology', 'TY', 'Production', '5', ' I.C. Gupta ', 'NA', 1, 2, 'rbook/119.jpg'),
(120, 'Principles of Operations Research', 'TY', 'Production', '5', ' Harvey M. Wagner', ' Prentice Hall', 1, 2, 'rbook/120.jpg'),
(121, 'Metal Cutting and Machine Tools', 'TY', 'Production', '5', 'Juneja and Shekhon ', ' Wiley ', 1, 2, 'rbook/121.jpg'),
(122, 'Operations Research Techniques for Management', 'TY', 'Production', '6', ' B. Banerjee', ' Business Book Publishing House. ', 1, 2, 'rbook/122.jpg'),
(123, 'Pneumatic Circuits and Low Cost Automation', 'TY', 'Production', '6', ' Fawce', 'JR', 1, 2, 'rbook/123.jpg'),
(124, 'Engineering Systems and Automatic Control', 'TY', 'Production', '6', ' Peter Dransfield ', 'NA', 1, 2, 'rbook/124.jpg'),
(125, 'Machine Tools', 'TY', 'Production', '6', ' Koenig Berger ', 'NA', 1, 2, 'rbook/125.jpg'),
(126, 'Fundamentals of Manufacturing Engineering', 'TY', 'Production', '6', ' V.M. Kovan et al', ' Mir Publication', 1, 2, 'rbook/126.jpg'),
(127, 'Westeman Tables for the Metal Trade ', 'TY', 'Production', '6', 'H. Jutz and E. Scharkas', ' Wiley Eastern Limited', 1, 2, 'rbook/127.jpg'),
(128, 'Welding Technology', 'TY', 'Production', '6', ' R. S. Parmar', ' Khanna Publications ', 1, 2, 'rbook/128.jpg'),
(129, 'OPAMP and Linear ICs ', 'TY', 'Electrical', '5', ' Ramakant Gaykwad', 'NA', 1, 2, 'rbook/129.jpg'),
(130, ' Signals and Systems ', 'TY', 'Electrical', '5', 'S. Haykin', ' Wiley Eastern Publication ', 1, 2, 'rbook/130.jpg'),
(131, 'Control system engineering', 'TY', 'Electrical', '5', 'Norman S. Nise', 'John Wiley and Sons', 1, 2, 'rbook/131.jpg'),
(132, ' Elements of Electromagnetics', 'TY', 'Electrical', '5', 'Matthew N. O. Sadiku', ' Oxford University Press ', 1, 2, 'rbook/132.jpg'),
(133, 'Power Electronics-Circuits, Devices and Application', 'TY', 'Electrical', '5', 'Rashid M H', ' PHI Publication', 1, 2, 'rbook/133.jpg'),
(134, ' Power System Analysis and Design', 'TY', 'Electrical', '6', 'B. R. Gupta', 'S Chand  Prakashan', 1, 2, 'rbook/134.jpg'),
(135, '8086 / 8088 Design, Programming and Interfacing', 'TY', 'Electrical', '6', 'John Uffenback', ' Prentice Hall of India', 1, 2, 'rbook/135.jpg'),
(136, 'Electric Traction', 'TY', 'Electrical', '6', 'Upadhayay J. & Mahindra S. N', '  Allied Publishers Ltd', 1, 2, 'rbook/136.jpg'),
(137, 'Biomedical Instrumentation and Measurements', 'TY', 'Electrical', '6', 'Cromwell L. Weibell and Pfeiffer', ' Prentice Hall of India', 1, 2, 'rbook/137.jpg'),
(138, 'Innovation and entrepreneurship', 'TY', 'Electrical', '6', ' Drucker Peter F, ', ' Heinemann, London', 1, 2, 'rbook/138.jpg'),
(139, 'Applied Statistics for Engineers', 'TY', 'Electrical', '6', ' Montgomery and John Wiley ', 'NA', 1, 2, 'rbook/139.jpg'),
(140, 'Introduction to Solids', 'TY', 'Mechanical', '5', ' L. V. Azaroff', ' McGraw Hill International', 1, 2, 'rbook/140.jpg'),
(141, 'Fluid Mechanics & Hydraulic Machines', 'TY', 'Mechanical', '5', ' Dr  P. N. Modi ', 'Standard Book House', 1, 2, 'rbook/141.jpg'),
(142, 'Heat and Mass Transfer', 'TY', 'Mechanical', '5', ' R. K.  Rajput', ' S. Chand & Company Ltd', 1, 2, 'rbook/142.jpg'),
(143, 'Theory of Mechanism and machines ', 'TY', 'Mechanical', '5', 'A Ghosh and A.Malik ', ' Affiliated East ', 1, 2, 'rbook/143.jpg'),
(144, 'Internal Combustion Engines', 'TY', 'Mechanical', '6', ' E. E. Obert', ' Harper and Row, Publishers', 1, 2, 'rbook/144.jpg'),
(145, 'Machine Design', 'TY', 'Mechanical', '6', ' Black Adams', ' McGraw Hill ', 1, 2, 'rbook/145.jpg'),
(146, 'Refrigeration & Air-Conditioning', 'TY', 'Mechanical', '6', ' Arora', 'Tata McGraw Hill ', 1, 2, 'rbook/146.jpg'),
(147, 'Control Systems Engineering', 'TY', 'Mechanical', '6', ' I. J. Nagrath ', 'NA', 1, 2, 'rbook/147.jpg'),
(148, 'Computational Fluid Dynamics  - The basics with applications', 'TY', 'Mechanical', '6', 'John. D. Anderson', 'McGraw-Hill ', 1, 2, 'rbook/148.jpg'),
(149, 'Electromagnetic Waves & Radiating Systems', 'TY', 'Electronix', '5', 'E. C. Jordan & K. G. Balmain', 'PHI Publication 2006 ', 1, 2, 'rbook/149.jpg'),
(150, ' 8086 / 8088 Design, Programming and Interfacing', 'TY', 'Electronix', '5', 'John Uffenback', 'Prentice Hall Pub', 1, 2, 'rbook/150.jpg'),
(151, 'Signals and Systems ', 'TY', 'Electronix', '5', 'S. Haykin', ' Wiley Eastern Publication', 1, 2, 'rbook/151.jpg'),
(152, ' Principles of Communication Systems', 'TY', 'Electronix', '5', 'Herbert Taub and Donald Schilling', 'Tata McGraw-Hill', 1, 2, 'rbook/152.jpg'),
(153, ' Electronic Circuit Analysis and Design', 'TY', 'Electronix', '5', 'Donald A. Neamen', 'McGraw Hill International ', 1, 2, 'rbook/153.jpg'),
(154, ' Modern Electronic Instrumentation and Measurement Techniques', 'TY', 'Electronix', '6', 'David A. Bell', ' Prentice Hall of India Pvt Ltd', 1, 2, 'rbook/154.jpg'),
(155, 'Design with operational amplifiers and analog integrated circuits ', 'TY', 'Electronix', '6', 'Sergio Franco', 'Tata McGraw Hill ', 1, 2, 'rbook/155.jpg'),
(156, '  Digital Filters:Analysis Design and Applications', 'TY', 'Electronix', '6', 'A. Antoniou', 'Tata McGraw Hill ', 1, 2, 'rbook/156.jpg'),
(157, 'Advanced Microprocessors', 'BTECH', 'Computer ', '7', 'Daniel Tabak', 'McGraw-Hill.', 1, 2, 'rbook/157.jpg'),
(158, 'Advanced Microprocessors and Peripherals', 'BTECH', 'Computer ', '7', '. Ray and Bhurchandi', 'TMH', 1, 2, 'rbook/158.jpg'),
(159, 'Advanced Microprocessors and Interfacing', 'BTECH', 'Computer ', '7', 'Badri Ram', 'TMH Publication', 1, 2, 'rbook/159.jpg'),
(160, 'Artificial Intelligence: A New Synthesis', 'BTECH', 'Computer ', '7', 'Nils J. Nillson', 'Harcourt Asia', 1, 2, 'rbook/160.jpg'),
(161, 'Introduction to Digital Signal Processing?', 'BTECH', 'Computer ', '8', 'J.G. Proakis', 'PHI', 1, 2, 'rbook/161.jpg'),
(162, 'Software Engineering An Engineering Approach', 'BTECH', 'Computer ', '7', 'James Peter', 'John Wiley', 1, 2, 'rbook/162.jpg'),
(163, 'Fundamentals of Image Processing', 'BTECH', 'Computer ', '8', 'Anil K.Jain', 'PHI', 1, 2, 'rbook/163.jpg'),
(164, 'Mobile communications', 'BTECH', 'Computer ', '8', 'Jochen Schiller', 'Pearson Education', 1, 2, 'rbook/164.jpg'),
(165, 'Embedded Systems', 'BTECH', 'Computer ', '8', 'Raj Kamal', 'TMH', 1, 2, 'rbook/165.jpg'),
(166, 'Digital Image Processing', 'BTECH', 'Computer ', '8', 'R.C.Gonsales R.E.Woods', 'Pearson Education', 1, 2, 'rbook/166.jpg'),
(167, 'Pattern Classification', 'BTECH', 'Computer ', '7', 'Duda, Hart', 'John Wiley and Sons.', 1, 2, 'rbook/167.jpg'),
(168, 'An Embedded Software Primer', 'BTECH', 'Computer ', '7', 'David E. Simon', ' Pearson Education', 1, 2, 'rbook/168.jpg'),
(169, 'Plain and Reinforced Concrete', 'BTECH', 'CIVIL', '7', 'Jain & Jaikrishna', 'Nemchand Brothers.', 1, 2, 'rbook/169.jpg'),
(170, 'Design of Reinforced Concrete Structures', 'BTECH', 'CIVIL', '7', 'Dayaratnam P', 'Oxford & IBH', 1, 2, 'rbook/170.jpg'),
(171, 'Irrigation Engineering', 'BTECH', 'CIVIL', '7', 'G L Asawa', 'Wiley eastern', 1, 2, 'rbook/171.jpg'),
(172, 'Irrigation Engineering & Hydraulic Structures,', 'BTECH', 'CIVIL', '7', 'S K Garg', 'Khanna Publishers', 1, 2, 'rbook/172.jpg'),
(173, ' Construction Project Management,', 'BTECH', 'CIVIL', '8', 'Chitkara K K', 'TGH', 1, 2, 'rbook/173.jpg'),
(174, 'Theory of Elastic Stability', 'BTECH', 'CIVIL', '8', 'Timoshenko S', 'McGraw Hill Book Co', 1, 2, 'rbook/174.jpg'),
(175, 'Erection of steel structures', 'BTECH', 'CIVIL', '8', 'Thomas baron', 'NA', 1, 2, 'rbook/175.jpg'),
(176, 'Soil Mechanics and Foundation Engineering', 'BTECH', 'CIVIL', '8', 'V. N. S. Murthy', 'Saitech Publication', 1, 2, 'rbook/176.jpg'),
(177, 'Managing Risk in Construction Projects', 'BTECH', 'CIVIL', '7', 'N J Smith', 'BLACKWELL PUBLISHING', 1, 2, 'rbook/177.jpg'),
(178, 'Dynamics of Structures', 'BTECH', 'CIVIL', '7', ' Cloguh & Penzein', 'Tata McGraw Hill.', 1, 2, 'rbook/178.jpg'),
(179, 'Structural Dynamics', 'BTECH', 'CIVIL', '7', 'John M. Biggs,', 'Tata McGraw Hill.', 1, 2, 'rbook/179.jpg'),
(180, 'Advanced Electronics Communication Systemsz', 'BTECH', 'Electrical', '7', 'Tomasi W', 'PHI', 1, 2, 'rbook/180.jpg'),
(181, ' Communication Systems', 'BTECH', 'Electrical', '7', 'Haykin S', 'John Wiley & sons,', 1, 2, 'rbook/181.jpg'),
(182, 'Discrete Time Signal Processing', 'BTECH', 'Electrical', '7', 'Oppenheim & Schafer', 'PHI Publication', 1, 2, 'rbook/182.jpg'),
(183, 'Power System Protection and Switchgear,', 'BTECH', 'Electrical', '7', 'Badri Ram and Vishwakarma D.N', 'TMH', 1, 2, 'rbook/183.jpg'),
(184, 'Switchgear and Protection,', 'BTECH', 'Electrical', '7', 'Ravindranath and Chander', 'Wiley Eastern Ltd.', 1, 2, 'rbook/184.jpg'),
(185, 'Modern Power System Analysis', 'BTECH', 'Electrical', '8', 'Nagrath I.J. and Kothari D.P', 'TMH Publication,', 1, 2, 'rbook/185.jpg'),
(186, 'Power System Analysis,', 'BTECH', 'Electrical', '8', 'Saadat Hadi', 'TMH Publication', 1, 2, 'rbook/186.jpg'),
(187, 'Industrial Control Electronics : Devices, Systems and Applications', 'BTECH', 'Electrical', '8', 'Bartelt T', ' Delmer Thomson Learning', 1, 2, 'rbook/187.jpg'),
(188, 'Information Technology Project management', 'BTECH', 'Electrical', '8', 'Kathy Schwalbe', 'Thomson Learning', 1, 2, 'rbook/188.jpg'),
(189, 'Introduction to VLSI design', 'BTECH', 'Electronix', '7', '.E.D. Fabricious', 'McGraw Hill Publications', 1, 2, 'rbook/189.jpg'),
(190, 'Principles of CMOS VLSI Design: A Systems Perspective', 'BTECH', 'Electronix', '7', 'Neil H.E. Weste Kamran Eshraghian', 'Addison Wesley Publications', 1, 2, 'rbook/190.jpg'),
(191, 'VLSI Technology', 'BTECH', 'Electronix', '7', 'S.M.Sze,', 'McGraw Hill Publications', 1, 2, 'rbook/191.jpg'),
(192, 'Instrumentation Devices and System', 'BTECH', 'Electronix', '8', 'Rangan Sharma & Mani', 'Tata Mcgraw Hill', 1, 2, 'rbook/192.jpg'),
(193, 'Digital Communication', 'BTECH', 'Electronix', '8', 'Symon Haykin', 'John Wiley and sons', 1, 2, 'rbook/193.jpg'),
(194, 'principles of communication systems', 'BTECH', 'Electronix', '8', 'Taub and Schilling', 'Tata Mc Graw Hill second edition', 1, 2, 'rbook/194.jpg'),
(195, 'Pentium Processor System Architecture', 'BTECH', 'Electronix', '7', 'Tom Shanley et al', 'Addison Wesley Press', 1, 2, 'rbook/195.jpg'),
(196, 'Modern Spectral Estimation', 'BTECH', 'Electronix', '8', 'S.M. Kay', 'Prentice hall', 1, 2, 'rbook/196.jpg'),
(197, 'Design of m/c elements', 'BTECH', 'Mechanical', '8', 'Spott', 'Pearson Education', 1, 2, 'rbook/197.jpg'),
(198, 'Design of Machine element', 'BTECH', 'Mechanical', '8', 'Bhandari', 'Mcgraw hill', 1, 2, 'rbook/198.jpg'),
(199, 'Design Data Book', 'BTECH', 'Mechanical', '8', 'PSG Data Book', 'CBS', 1, 2, 'rbook/199.jpg'),
(200, 'Assembly Language Programming', 'BTECH', 'Mechanical', '7', 'L.A. Laventhal', 'NA', 1, 2, 'rbook/200.jpg'),
(201, 'Mechatronics', 'BTECH', 'Mechanical', '7', 'HMT', 'McGraw Hill Education', 1, 2, 'rbook/201.jpg'),
(202, 'Finite Element Method', 'BTECH', 'Mechanical', '7', 'Reddy J. N.', 'McGRAW-HILL', 1, 2, 'rbook/202.jpg'),
(203, 'Introduction to FEM in Engineering', 'BTECH', 'Mechanical', '7', 'Chandrupatla, Belugundu', 'Prentice Hall', 1, 2, 'rbook/203.jpg'),
(204, 'Manufacturing Planning & Controls systems', 'BTECH', 'Mechanical', '8', 'Thomas E.Vollman', 'T.M.H', 1, 2, 'rbook/204.jpg'),
(205, 'Productions and Operations Management', 'BTECH', 'Mechanical', '8', 'S.N.Chary', 'T.M.H.', 1, 2, 'rbook/205.jpg'),
(206, 'Operations Management', 'BTECH', 'Mechanical', '8', 'Joseph G. Monks', 'Schaum?s outline Series.', 1, 2, 'rbook/206.jpg'),
(207, 'Computer Aided Design and Manufacturing', 'BTECH', 'Production', '7', 'Mikel P.Groover and Emery W.Zimmers', 'PHI 2004', 1, 2, 'rbook/207.jpg'),
(208, 'Numerical Control and Computer Aided Manufacturing', 'BTECH', 'Production', '7', 'T.K.Kundra, R.N.Rao', 'TMH 2003', 1, 2, 'rbook/208.jpg'),
(209, 'CAD/CAM/CIM', 'BTECH', 'Production', '7', 'P.Radhakrishnan and S.Subramanyan', 'TMH 2005', 1, 2, 'rbook/209.jpg'),
(210, 'Economics', 'BTECH', 'Production', '7', 'Paul A. Samuelson', 'Tata McGraw Hill', 1, 2, 'rbook/210.jpg'),
(211, 'Finance Sense', 'BTECH', 'Production', '7', 'Prasanna Chandra', 'TGH', 1, 2, 'rbook/211.jpg'),
(212, 'Plastics Handbook', 'BTECH', 'Production', '8', 'A.S.Athalye', 'NA', 1, 2, 'rbook/212.jpg'),
(213, 'Plastics Materials', 'BTECH', 'Production', '8', 'J.A.Brydson', 'NA', 1, 2, 'rbook/213.jpg'),
(214, 'Marketing Management: Analysis, Planning and Control', 'BTECH', 'Production', '7', 'Philip Kotler', 'Prentice Hall of India', 1, 2, 'rbook/214.jpg'),
(215, 'Marketing Management', 'BTECH', 'Production', '7', 'Ramaswamy and Namakumari', 'McMillan', 1, 2, 'rbook/215.jpg'),
(216, ' Purchasing and Materials Management', 'BTECH', 'Production', '8', ' K.S.Menon', ' Wheeler Publications ', 1, 2, 'rbook/216.jpg'),
(217, 'Artificial Intelligence ', 'BTECH', 'Production', '8', 'Rich. Knight', 'TMH', 1, 2, 'rbook/217.jpg'),
(218, 'Developing New Entrepreneurs', 'BTECH', 'Production', '8', 'Entrepreneurs Development Institute of India', 'NA', 1, 2, 'rbook/218.jpg'),
(219, 'Process control in Spinning', 'BTECH', 'Textile', '7', 'A R Garde, T A Subramanian', 'BTRA Publication', 1, 2, 'rbook/219.jpg'),
(220, 'The technology of clothing and Manufacturing', 'BTECH', 'Textile', '7', 'Harold Care and Barbara Latham', 'OXFORD', 1, 2, 'rbook/220.jpg'),
(221, 'Inside Fashion Design', 'BTECH', 'Textile', '8', 'Sharon Lee Tate', 'Harper Collins Publication', 1, 2, 'rbook/221.jpg'),
(222, 'Non-Woven Bonded Fabrics', 'BTECH', 'Textile', '8', 'J. Lunenschloss', ' W. Albrech', 1, 2, 'rbook/222.jpg'),
(223, 'Geo-Textiles ', 'BTECH', 'Textile', '8', ' NWM John', 'NA ', 1, 2, 'rbook/223.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `requirment`
--

CREATE TABLE IF NOT EXISTS `requirment` (
`srno` int(11) NOT NULL,
  `user_name` varchar(50) NOT NULL,
  `BookName` varchar(50) NOT NULL,
  `Author` varchar(50) NOT NULL,
  `Publisher` varchar(50) NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `requirment`
--

INSERT INTO `requirment` (`srno`, `user_name`, `BookName`, `Author`, `Publisher`) VALUES
(1, 'abhishekdudhal', 'Seccret Of Nagas', 'Amish', 'TRIPATHI PUBLICATION');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE IF NOT EXISTS `users` (
  `Name` varchar(30) NOT NULL,
  `user_name` varchar(255) NOT NULL,
  `user_email` varchar(60) NOT NULL,
  `user_pass` varchar(255) NOT NULL,
  `Address` varchar(300) NOT NULL,
  `City` varchar(15) NOT NULL,
  `Pin` int(6) NOT NULL,
  `Mobile` varchar(10) NOT NULL,
  `utype` varchar(30) NOT NULL DEFAULT 'COUSTMER',
  `servicea` varchar(30) NOT NULL DEFAULT 'REG'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`Name`, `user_name`, `user_email`, `user_pass`, `Address`, `City`, `Pin`, `Mobile`, `utype`, `servicea`) VALUES
('Abhishek Dudhal', 'abhishekdudhal', 'abhishekdudhal@gmail.com', 'e3752c013211fd898622a2d5465abfa04a7f1590', 'C-39 VJTI BOYS HOSTEL,MATUNGA', 'MUMBAI', 400019, '9011902243', 'ADMIN', 'PRO'),
('coolkaustubh', 'coolkaustubh', 'coolkaustubh007@gmail.com', '976c6a6f25db03590c47c450131133697fa23cca', 'VJTI Hostel', 'MUMBAI', 400019, '8080535818', 'COURIER', 'REG');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `booksonrent`
--
ALTER TABLE `booksonrent`
 ADD PRIMARY KEY (`order_no`), ADD UNIQUE KEY `order_no` (`order_no`), ADD KEY `ID` (`ID`), ADD KEY `ID_2` (`ID`), ADD KEY `user_name` (`user_name`);

--
-- Indexes for table `contactus`
--
ALTER TABLE `contactus`
 ADD PRIMARY KEY (`srno`);

--
-- Indexes for table `courier`
--
ALTER TABLE `courier`
 ADD PRIMARY KEY (`courire_id`), ADD UNIQUE KEY `courire_id` (`courire_id`), ADD UNIQUE KEY `cuser_id` (`user_name`), ADD UNIQUE KEY `contact` (`contact`), ADD UNIQUE KEY `email_id` (`email_id`), ADD UNIQUE KEY `user_name` (`user_name`), ADD UNIQUE KEY `user_name_2` (`user_name`), ADD UNIQUE KEY `city` (`city`);

--
-- Indexes for table `feedback`
--
ALTER TABLE `feedback`
 ADD PRIMARY KEY (`srno`), ADD KEY `user_name` (`user_name`);

--
-- Indexes for table `mycart`
--
ALTER TABLE `mycart`
 ADD UNIQUE KEY `cartid` (`cartid`);

--
-- Indexes for table `nbook`
--
ALTER TABLE `nbook`
 ADD PRIMARY KEY (`BookId`);

--
-- Indexes for table `obook`
--
ALTER TABLE `obook`
 ADD PRIMARY KEY (`BOOKID`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
 ADD PRIMARY KEY (`order_no`);

--
-- Indexes for table `rbook`
--
ALTER TABLE `rbook`
 ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `requirment`
--
ALTER TABLE `requirment`
 ADD PRIMARY KEY (`srno`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
 ADD PRIMARY KEY (`user_name`), ADD UNIQUE KEY `Mobile` (`Mobile`), ADD UNIQUE KEY `Mobile_2` (`Mobile`), ADD UNIQUE KEY `user_email` (`user_email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `contactus`
--
ALTER TABLE `contactus`
MODIFY `srno` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `courier`
--
ALTER TABLE `courier`
MODIFY `courire_id` bigint(10) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `feedback`
--
ALTER TABLE `feedback`
MODIFY `srno` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `mycart`
--
ALTER TABLE `mycart`
MODIFY `cartid` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `nbook`
--
ALTER TABLE `nbook`
MODIFY `BookId` int(10) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=224;
--
-- AUTO_INCREMENT for table `obook`
--
ALTER TABLE `obook`
MODIFY `BOOKID` int(5) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=50;
--
-- AUTO_INCREMENT for table `rbook`
--
ALTER TABLE `rbook`
MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=224;
--
-- AUTO_INCREMENT for table `requirment`
--
ALTER TABLE `requirment`
MODIFY `srno` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
