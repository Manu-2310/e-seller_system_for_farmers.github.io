-- phpMyAdmin SQL Dump
-- version 3.2.0.1
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Dec 31, 2021 at 06:04 AM
-- Server version: 5.1.36
-- PHP Version: 5.3.0

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `project`
--

-- --------------------------------------------------------

--
-- Table structure for table `contact`
--

CREATE TABLE IF NOT EXISTS `contact` (
  `ID` int(250) NOT NULL AUTO_INCREMENT,
  `Full_Name` varchar(20) NOT NULL,
  `Email` varchar(20) NOT NULL,
  `Contact_Number` varchar(10) NOT NULL,
  `Message` varchar(100) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `contact`
--


-- --------------------------------------------------------

--
-- Table structure for table `customerp`
--

CREATE TABLE IF NOT EXISTS `customerp` (
  `ID` int(100) NOT NULL AUTO_INCREMENT,
  `First_name` varchar(50) NOT NULL,
  `Last_name` varchar(50) NOT NULL,
  `Phone_Number` varchar(50) NOT NULL,
  `Password` varchar(50) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=13 ;

--
-- Dumping data for table `customerp`
--

INSERT INTO `customerp` (`ID`, `First_name`, `Last_name`, `Phone_Number`, `Password`) VALUES
(2, 'vishal', 'sambre', '9689882804', 'dmlzaGFs'),
(3, 'mohini', 'jadhav', '9067321998', 'cmFodWw='),
(11, 'shweta', 'parihar', '9420390836', 'cGFwYTEy'),
(12, 'sonal', 'mahajan', '7840970276', 'c29uYWwx');

-- --------------------------------------------------------

--
-- Table structure for table `customer_to_farmers`
--

CREATE TABLE IF NOT EXISTS `customer_to_farmers` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `Full_Name` varchar(250) NOT NULL,
  `Full_Address` varchar(250) NOT NULL,
  `Contact_Number` varchar(20) NOT NULL,
  `Messages` varchar(200) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `customer_to_farmers`
--

INSERT INTO `customer_to_farmers` (`ID`, `Full_Name`, `Full_Address`, `Contact_Number`, `Messages`) VALUES
(1, 'à¤°à¤¾à¤œà¥‡à¤¶', 'à¤ªà¤¾à¤Ÿà¤¿à¤²', '8796886886', 'à¤—à¥‡à¤¹à¥‚à¤‚ à¤•à¥€ à¤•à¤¿à¤¤à¤¨à¥€ à¤°à¤¾à¤¶à¤¿ à¤‰à¤ªà¤²à¤¬à¥à¤§ à¤¹à¥ˆ à¤”à¤° à¤®à¥ˆà¤‚ à¤†à¤ªà¤¸à¥‡ à¤•à¥ˆà¤¸à¥‡ à¤¸à¤‚à¤ªà¤°à¥à¤• à¤•à¤° à¤¸à¤•à¤¤à¤¾ à¤¹à¥‚à¤‚ | ');

-- --------------------------------------------------------

--
-- Table structure for table `farmers_data`
--

CREATE TABLE IF NOT EXISTS `farmers_data` (
  `ID` int(250) NOT NULL AUTO_INCREMENT,
  `First_name` varchar(50) NOT NULL,
  `Last_name` varchar(50) NOT NULL,
  `Language` varchar(255) NOT NULL,
  `Village_name` varchar(40) NOT NULL,
  `pincode` int(10) NOT NULL,
  `Choose_one` varchar(20) NOT NULL,
  `price` int(230) NOT NULL,
  `kg` int(50) NOT NULL,
  `Available_quantity` int(250) NOT NULL,
  `photo` varchar(350) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=7 ;

--
-- Dumping data for table `farmers_data`
--

INSERT INTO `farmers_data` (`ID`, `First_name`, `Last_name`, `Language`, `Village_name`, `pincode`, `Choose_one`, `price`, `kg`, `Available_quantity`, `photo`) VALUES
(1, 'Sitaram', 'Sambre', 'Marathi', 'Pachora', 465001, 'fruits', 23, 12, 56745, 'images/apple.jpg'),
(2, ' Gorakh', ' Patil', 'Hindi', 'Jalgaon', 425001, 'vegetable', 43, 20, 300, 'images/lucky-bhendi-250x250.png'),
(3, 'Viththal', 'patil', 'Hindi', 'Muktainagar', 457899, 'wheat', 126, 60, 7000, 'images/download.jpg'),
(4, 'ASHABEN', 'TIRMALE', 'Hindi', 'Bhusawal', 465775, 'pulses', 364, 30, 8000, 'images/1592216804417.jpg'),
(5, 'Aryan', 'Pardhi', 'Marathi', 'Jalgaon', 425002, 'vegetable', 34, 30, 50, 'images/cabbage.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `farmers_portal`
--

CREATE TABLE IF NOT EXISTS `farmers_portal` (
  `ID` int(230) NOT NULL AUTO_INCREMENT,
  `First_name` varchar(50) NOT NULL,
  `Middle_name` varchar(50) NOT NULL,
  `Last_name` varchar(50) NOT NULL,
  `Taluka` varchar(30) NOT NULL,
  `Full_address` varchar(50) NOT NULL,
  `Contact_number` varchar(255) NOT NULL,
  `Email` varchar(20) NOT NULL,
  `Aadhar_card_number` varchar(20) NOT NULL,
  `Password` varchar(20) NOT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `Pasword` (`Password`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=12 ;

--
-- Dumping data for table `farmers_portal`
--

INSERT INTO `farmers_portal` (`ID`, `First_name`, `Middle_name`, `Last_name`, `Taluka`, `Full_address`, `Contact_number`, `Email`, `Aadhar_card_number`, `Password`) VALUES
(1, 'Sitaram', 'Laxman', 'Sambre', 'Pachora', '67,anand nagar,pachora', '7038764788', '', '564733245463', 'dmlzaGFs'),
(2, ' Gorakh', ' Pitambar ', 'Patil', 'Jalgaon', '34 ,shastri nagar girna pumping road jalgaon', '9689882804', 'gorakhfood@gmail.com', '898493454344', 'Z29yYWto'),
(3, 'ASHABEN', 'BHAIDASS', 'TIRMALE', 'Bhusawal', 'plot no.12,near railway station,Bhusawal', '9403701588', 'ashabentirmale12@gma', '567544556666', 'YXNoYWJlbg=='),
(4, 'Viththal', 'uttam', 'patil', 'Muktainagar', '65,samrat colony,muktainagar', '7896565356', 'vitthal142@gmail.com', '546727377744', 'dml0aGhhbA=='),
(5, 'Aryan', 'radhesham', 'Pardhi', 'Jalgaon', 'plot no.13,rameshwer colony mehrun,jalgaon', '9325682766', 'aryank@gmail.com', '688599699699', 'YXJ5YW4='),
(11, 'shweta', 'samratsingh', 'parihar', 'Dharangaon', '34,dharangoan road', '9420390836', 'shwet@gmail.com', '748377837483', 'cGFwYTEy');

-- --------------------------------------------------------

--
-- Table structure for table `farmer_login`
--

CREATE TABLE IF NOT EXISTS `farmer_login` (
  `ID` int(255) NOT NULL AUTO_INCREMENT,
  `Contact_number` int(10) NOT NULL,
  `Password` varchar(255) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `farmer_login`
--

INSERT INTO `farmer_login` (`ID`, `Contact_number`, `Password`) VALUES
(1, 2147483647, 'cGFwYTEy');

-- --------------------------------------------------------

--
-- Table structure for table `forgot f`
--

CREATE TABLE IF NOT EXISTS `forgot f` (
  `ID` int(255) NOT NULL,
  `Contact_number` varchar(255) NOT NULL,
  `Password` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `forgot f`
--


-- --------------------------------------------------------

--
-- Table structure for table `fruits`
--

CREATE TABLE IF NOT EXISTS `fruits` (
  `fruits` varchar(230) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `fruits`
--

