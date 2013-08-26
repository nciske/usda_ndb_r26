#
# Table structure for table 'DATA_SRC'
#

DROP TABLE IF EXISTS `DATA_SRC`;

CREATE TABLE `DATA_SRC` (
  `DataSrc_ID` VARCHAR(6) NOT NULL, 
  `Authors` VARCHAR(255), 
  `Title` VARCHAR(255), 
  `Year` VARCHAR(4), 
  `Journal` VARCHAR(135), 
  `Vol_City` VARCHAR(16), 
  `Issue_State` VARCHAR(5), 
  `Start_Page` VARCHAR(5), 
  `End_Page` VARCHAR(5), 
  INDEX (`DataSrc_ID`), 
  PRIMARY KEY (`DataSrc_ID`)
) ENGINE=myisam DEFAULT CHARSET=utf8;

#
# Table structure for table 'DATSRCLN'
#

DROP TABLE IF EXISTS `DATSRCLN`;

CREATE TABLE `DATSRCLN` (
  `NDB_No` VARCHAR(5) NOT NULL, 
  `Nutr_No` VARCHAR(3) NOT NULL, 
  `DataSrc_ID` VARCHAR(6) NOT NULL, 
  INDEX (`DataSrc_ID`), 
  PRIMARY KEY (`NDB_No`, `Nutr_No`, `DataSrc_ID`)
) ENGINE=myisam DEFAULT CHARSET=utf8;

#
# Table structure for table 'DERIV_CD'
#

DROP TABLE IF EXISTS `DERIV_CD`;

CREATE TABLE `DERIV_CD` (
  `Deriv_CD` VARCHAR(4) NOT NULL, 
  `Deriv_Desc` VARCHAR(120), 
  PRIMARY KEY (`Deriv_CD`)
) ENGINE=myisam DEFAULT CHARSET=utf8;


#
# Table structure for table 'FD_GROUP'
#

DROP TABLE IF EXISTS `FD_GROUP`;

CREATE TABLE `FD_GROUP` (
  `FdGrp_CD` VARCHAR(4) NOT NULL, 
  `FdGrp_Desc` VARCHAR(60), 
  PRIMARY KEY (`FdGrp_CD`)
) ENGINE=myisam DEFAULT CHARSET=utf8;


#
# Table structure for table 'FOOD_DES'
#

DROP TABLE IF EXISTS `FOOD_DES`;

CREATE TABLE `FOOD_DES` (
  `NDB_No` VARCHAR(5) NOT NULL, 
  `FdGrp_Cd` VARCHAR(4), 
  `Long_Desc` VARCHAR(200), 
  `Shrt_Desc` VARCHAR(60), 
  `ComName` VARCHAR(100), 
  `ManufacName` VARCHAR(65), 
  `Survey` VARCHAR(1), 
  `Ref_Desc` VARCHAR(135), 
  `Refuse` INTEGER, 
  `SciName` VARCHAR(65), 
  `N_Factor` FLOAT NULL, 
  `Pro_Factor` FLOAT NULL, 
  `Fat_Factor` FLOAT NULL, 
  `CHO_Factor` FLOAT NULL, 
  PRIMARY KEY (`NDB_No`)
) ENGINE=myisam DEFAULT CHARSET=utf8;

#
# Table structure for table 'FOOTNOTE'
#

DROP TABLE IF EXISTS `FOOTNOTE`;

CREATE TABLE `FOOTNOTE` (
  `NDB_NO` VARCHAR(5), 
  `Footnt_No` VARCHAR(3), 
  `Footnot_Typ` VARCHAR(1), 
  `Nutr_No` VARCHAR(3), 
  `Footnot_Txt` VARCHAR(200)
) ENGINE=myisam DEFAULT CHARSET=utf8;

#
# Table structure for table 'LANGDESC'
#

DROP TABLE IF EXISTS `LANGDESC`;

CREATE TABLE `LANGDESC` (
  `Factor` VARCHAR(6) NOT NULL, 
  `Description` VARCHAR(250), 
  PRIMARY KEY (`Factor`)
) ENGINE=myisam DEFAULT CHARSET=utf8;


#
# Table structure for table 'LANGUAL'
#

DROP TABLE IF EXISTS `LANGUAL`;

CREATE TABLE `LANGUAL` (
  `NDB_No` VARCHAR(5) NOT NULL, 
  `Factor` VARCHAR(6) NOT NULL, 
  PRIMARY KEY (`NDB_No`, `Factor`)
) ENGINE=myisam DEFAULT CHARSET=utf8;

#
# Table structure for table 'NUT_DATA'
#

DROP TABLE IF EXISTS `NUT_DATA`;

CREATE TABLE `NUT_DATA` (
  `NDB_No` VARCHAR(5) NOT NULL, 
  `Nutr_No` VARCHAR(3) NOT NULL, 
  `Nutr_Val` DOUBLE NULL, 
  `Num_Data_Pts` INTEGER, 
  `Std_Error` DOUBLE NULL, 
  `Src_Cd` VARCHAR(2), 
  `Deriv_Cd` VARCHAR(4), 
  `Ref_NDB_No` VARCHAR(5), 
  `Add_Nutr_Mark` VARCHAR(1), 
  `Num_Studies` INTEGER, 
  `Min` DOUBLE NULL, 
  `Max` DOUBLE NULL, 
  `DF` DOUBLE NULL, 
  `Low_EB` DOUBLE NULL, 
  `Up_EB` DOUBLE NULL, 
  `Stat_Cmt` VARCHAR(10), 
  `AddMod_Date` VARCHAR(10), 
  INDEX (`Num_Data_Pts`), 
  INDEX (`Num_Studies`), 
  PRIMARY KEY (`NDB_No`, `Nutr_No`)
) ENGINE=myisam DEFAULT CHARSET=utf8;

#
# Table structure for table 'NUTR_DEF'
#

DROP TABLE IF EXISTS `NUTR_DEF`;

CREATE TABLE `NUTR_DEF` (
  `Nutr_No` VARCHAR(3) NOT NULL, 
  `Units` VARCHAR(7), 
  `Tagname` VARCHAR(20), 
  `NutrDesc` VARCHAR(60), 
  `Num_Dec` VARCHAR(1), 
  `SR_Order` FLOAT NULL, 
  INDEX (`Num_Dec`), 
  PRIMARY KEY (`Nutr_No`)
) ENGINE=myisam DEFAULT CHARSET=utf8;

#
# Table structure for table 'SRC_CD'
#

DROP TABLE IF EXISTS `SRC_CD`;

CREATE TABLE `SRC_CD` (
  `Src_Cd` VARCHAR(2) NOT NULL, 
  `SrcCd_Desc` VARCHAR(60), 
  PRIMARY KEY (`Src_Cd`)
) ENGINE=myisam DEFAULT CHARSET=utf8;

#
# Table structure for table 'WEIGHT'
#

DROP TABLE IF EXISTS `WEIGHT`;

CREATE TABLE `WEIGHT` (
  `NDB_No` VARCHAR(5) NOT NULL, 
  `Seq` VARCHAR(2) NOT NULL, 
  `Amount` DOUBLE NULL, 
  `Msre_Desc` VARCHAR(84), 
  `Gm_Wgt` DOUBLE NULL, 
  `Num_Data_Pts` INTEGER, 
  `Std_Dev` FLOAT NULL, 
  INDEX (`Num_Data_Pts`), 
  PRIMARY KEY (`NDB_No`, `Seq`)
) ENGINE=myisam DEFAULT CHARSET=utf8;
