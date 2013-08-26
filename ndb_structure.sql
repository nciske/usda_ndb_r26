-- phpMyAdmin SQL Dump
-- version 3.5.7
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Aug 26, 2013 at 08:06 PM
-- Server version: 5.1.44
-- PHP Version: 5.3.1

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

-- --------------------------------------------------------

--
-- Table structure for table `DATA_SRC`
--

CREATE TABLE IF NOT EXISTS `DATA_SRC` (
  `DataSrc_ID` varchar(6) NOT NULL,
  `Authors` varchar(255) DEFAULT NULL,
  `Title` varchar(255) DEFAULT NULL,
  `Year` varchar(4) DEFAULT NULL,
  `Journal` varchar(135) DEFAULT NULL,
  `Vol_City` varchar(16) DEFAULT NULL,
  `Issue_State` varchar(5) DEFAULT NULL,
  `Start_Page` varchar(5) DEFAULT NULL,
  `End_Page` varchar(5) DEFAULT NULL,
  PRIMARY KEY (`DataSrc_ID`),
  KEY `DataSrc_ID` (`DataSrc_ID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `DATSRCLN`
--

CREATE TABLE IF NOT EXISTS `DATSRCLN` (
  `NDB_No` int(5) unsigned zerofill NOT NULL,
  `Nutr_No` int(10) unsigned NOT NULL,
  `DataSrc_ID` varchar(6) NOT NULL,
  PRIMARY KEY (`NDB_No`,`Nutr_No`,`DataSrc_ID`),
  KEY `DataSrc_ID` (`DataSrc_ID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `DERIV_CD`
--

CREATE TABLE IF NOT EXISTS `DERIV_CD` (
  `Deriv_CD` varchar(4) NOT NULL,
  `Deriv_Desc` varchar(120) DEFAULT NULL,
  PRIMARY KEY (`Deriv_CD`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `FD_GROUP`
--

CREATE TABLE IF NOT EXISTS `FD_GROUP` (
  `FdGrp_CD` int(4) unsigned zerofill NOT NULL,
  `FdGrp_Desc` varchar(60) DEFAULT NULL,
  PRIMARY KEY (`FdGrp_CD`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `FOOD_DES`
--

CREATE TABLE IF NOT EXISTS `FOOD_DES` (
  `NDB_No` int(5) unsigned zerofill NOT NULL,
  `FdGrp_Cd` varchar(4) DEFAULT NULL,
  `Long_Desc` varchar(200) DEFAULT NULL,
  `Shrt_Desc` varchar(60) DEFAULT NULL,
  `ComName` varchar(100) DEFAULT NULL,
  `ManufacName` varchar(65) DEFAULT NULL,
  `Survey` varchar(1) DEFAULT NULL,
  `Ref_Desc` varchar(135) DEFAULT NULL,
  `Refuse` int(11) DEFAULT NULL,
  `SciName` varchar(65) DEFAULT NULL,
  `N_Factor` float DEFAULT NULL,
  `Pro_Factor` float DEFAULT NULL,
  `Fat_Factor` float DEFAULT NULL,
  `CHO_Factor` float DEFAULT NULL,
  PRIMARY KEY (`NDB_No`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `FOOTNOTE`
--

CREATE TABLE IF NOT EXISTS `FOOTNOTE` (
  `NDB_NO` int(5) unsigned zerofill DEFAULT NULL,
  `Footnt_No` varchar(3) DEFAULT NULL,
  `Footnot_Typ` varchar(1) DEFAULT NULL,
  `Nutr_No` varchar(3) DEFAULT NULL,
  `Footnot_Txt` varchar(200) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `LANGDESC`
--

CREATE TABLE IF NOT EXISTS `LANGDESC` (
  `Factor` varchar(6) NOT NULL,
  `Description` varchar(250) DEFAULT NULL,
  PRIMARY KEY (`Factor`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `LANGUAL`
--

CREATE TABLE IF NOT EXISTS `LANGUAL` (
  `NDB_No` int(5) unsigned zerofill NOT NULL,
  `Factor` varchar(6) NOT NULL,
  PRIMARY KEY (`NDB_No`,`Factor`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `NUTR_DEF`
--

CREATE TABLE IF NOT EXISTS `NUTR_DEF` (
  `Nutr_No` int(10) unsigned NOT NULL,
  `Units` varchar(7) DEFAULT NULL,
  `Tagname` varchar(20) DEFAULT NULL,
  `NutrDesc` varchar(60) DEFAULT NULL,
  `Num_Dec` varchar(1) DEFAULT NULL,
  `SR_Order` float DEFAULT NULL,
  PRIMARY KEY (`Nutr_No`),
  KEY `Num_Dec` (`Num_Dec`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `NUT_DATA`
--

CREATE TABLE IF NOT EXISTS `NUT_DATA` (
  `NDB_No` int(5) unsigned zerofill NOT NULL,
  `Nutr_No` int(11) NOT NULL,
  `Nutr_Val` double DEFAULT NULL,
  `Num_Data_Pts` int(11) DEFAULT NULL,
  `Std_Error` double DEFAULT NULL,
  `Src_Cd` varchar(2) DEFAULT NULL,
  `Deriv_Cd` varchar(4) DEFAULT NULL,
  `Ref_NDB_No` varchar(5) DEFAULT NULL,
  `Add_Nutr_Mark` varchar(1) DEFAULT NULL,
  `Num_Studies` int(11) DEFAULT NULL,
  `Min` double DEFAULT NULL,
  `Max` double DEFAULT NULL,
  `DF` double DEFAULT NULL,
  `Low_EB` double DEFAULT NULL,
  `Up_EB` double DEFAULT NULL,
  `Stat_Cmt` varchar(10) DEFAULT NULL,
  `AddMod_Date` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`NDB_No`,`Nutr_No`),
  KEY `Num_Data_Pts` (`Num_Data_Pts`),
  KEY `Num_Studies` (`Num_Studies`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `SRC_CD`
--

CREATE TABLE IF NOT EXISTS `SRC_CD` (
  `Src_Cd` int(2) NOT NULL,
  `SrcCd_Desc` varchar(60) DEFAULT NULL,
  PRIMARY KEY (`Src_Cd`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `WEIGHT`
--

CREATE TABLE IF NOT EXISTS `WEIGHT` (
  `NDB_No` int(5) unsigned zerofill NOT NULL,
  `Seq` tinyint(3) unsigned NOT NULL,
  `Amount` double DEFAULT NULL,
  `Msre_Desc` varchar(84) DEFAULT NULL,
  `Gm_Wgt` double DEFAULT NULL,
  `Num_Data_Pts` int(11) DEFAULT NULL,
  `Std_Dev` float DEFAULT NULL,
  PRIMARY KEY (`NDB_No`,`Seq`),
  KEY `Num_Data_Pts` (`Num_Data_Pts`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
