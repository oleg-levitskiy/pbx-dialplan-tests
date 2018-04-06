-- MySQL dump 10.13  Distrib 5.1.61, for none-linux-gnueabi (arm)
--
-- Host: localhost    Database: mypbx
-- ------------------------------------------------------
-- Server version	5.1.61

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `addondbversion`
--

DROP TABLE IF EXISTS `addondbversion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `addondbversion` (
  `ID` int(11) DEFAULT NULL,
  `addonname` varchar(32) NOT NULL DEFAULT '',
  `dbversion` varchar(8) NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `addondbversion`
--

LOCK TABLES `addondbversion` WRITE;
/*!40000 ALTER TABLE `addondbversion` DISABLE KEYS */;
INSERT INTO `addondbversion` VALUES (1,'cti','1999');
/*!40000 ALTER TABLE `addondbversion` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ami`
--

DROP TABLE IF EXISTS `ami`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ami` (
  `USER` varchar(64) DEFAULT NULL,
  `PASSWORD` blob,
  `ENABLE` varchar(8) NOT NULL DEFAULT 'no',
  `PERMIT` varchar(1024) DEFAULT NULL,
  `READ_PRI` varchar(512) DEFAULT NULL,
  `WRITE_PRI` varchar(512) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ami`
--

LOCK TABLES `ami` WRITE;
/*!40000 ALTER TABLE `ami` DISABLE KEYS */;
INSERT INTO `ami` VALUES ('admin','Äøw®úR25\'zΩ¯è™Ω','on','192.168.254.0/255.255.255.0',NULL,NULL);
/*!40000 ALTER TABLE `ami` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `analogtrunk`
--

DROP TABLE IF EXISTS `analogtrunk`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `analogtrunk` (
  `TRUNKNAME` varchar(64) DEFAULT NULL,
  `ANALOGPORT` varchar(16) DEFAULT NULL,
  `GUI_VOLUME` varchar(8) DEFAULT NULL,
  `BUSYDETECT` varchar(8) DEFAULT NULL,
  `BUSYCOUNT` varchar(8) DEFAULT NULL,
  `BUSYPATTERN` varchar(16) DEFAULT NULL,
  `CIDSTART` varchar(16) DEFAULT NULL,
  `CIDSIGNALLING` varchar(16) DEFAULT NULL,
  `FXOPORT` varchar(16) DEFAULT NULL,
  `ECHOCANCEL` varchar(16) DEFAULT NULL,
  `FREQUENCYDETECT` varchar(8) DEFAULT NULL,
  `FREQUENCY1` varchar(16) DEFAULT NULL,
  `FREQUENCY2` varchar(16) DEFAULT NULL,
  `USECALLERID` varchar(8) DEFAULT NULL,
  `SWITCHPOLARITY` varchar(8) DEFAULT NULL,
  `ANSWERPOLARITY` varchar(8) DEFAULT NULL,
  `BUSYINTERVAL` varchar(8) NOT NULL DEFAULT '1',
  `answerdetection` varchar(16) DEFAULT NULL,
  `ringdeviation` varchar(8) DEFAULT '5',
  `ringintdeviation` varchar(8) DEFAULT '5',
  `customringtone` varchar(8) DEFAULT 'no',
  `maxringduration` varchar(8) DEFAULT NULL,
  `maxringintduration` varchar(8) DEFAULT NULL,
  `minringdetection` varchar(8) DEFAULT 'no',
  `minringduration` varchar(8) DEFAULT NULL,
  `minringintduration` varchar(8) DEFAULT NULL,
  `detecttimeout` varchar(8) DEFAULT '8000',
  `TXGAIN` varchar(8) DEFAULT '40%',
  `hanguptype` varchar(32) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `analogtrunk`
--

LOCK TABLES `analogtrunk` WRITE;
/*!40000 ALTER TABLE `analogtrunk` DISABLE KEYS */;
INSERT INTO `analogtrunk` VALUES ('pstn2','64','40%','yes','4','','ring','dtmf','2','1','no','','','yes','no','no','1','default','5','5','no','','','no','','','8000','40%','default');
/*!40000 ALTER TABLE `analogtrunk` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `autobackup`
--

DROP TABLE IF EXISTS `autobackup`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `autobackup` (
  `SMBSHAREHOST` varchar(64) DEFAULT NULL,
  `SMBSHARENAME` varchar(64) DEFAULT NULL,
  `SMBSHAREUSER` varchar(64) DEFAULT NULL,
  `SMBSHAREPASS` blob,
  `BACKUPDAYSAGO` varchar(8) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `autobackup`
--

LOCK TABLES `autobackup` WRITE;
/*!40000 ALTER TABLE `autobackup` DISABLE KEYS */;
/*!40000 ALTER TABLE `autobackup` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `autoblacklist`
--

DROP TABLE IF EXISTS `autoblacklist`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `autoblacklist` (
  `TIME` varchar(64) DEFAULT NULL,
  `PROTOCOL` varchar(16) DEFAULT NULL,
  `PORT` varchar(8) DEFAULT NULL,
  `IP` varchar(32) DEFAULT NULL,
  `INTERFACE` varchar(8) DEFAULT NULL,
  `MACADDR` varchar(32) DEFAULT NULL,
  `SOURCEFLAG` varchar(8) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `autoblacklist`
--

LOCK TABLES `autoblacklist` WRITE;
/*!40000 ALTER TABLE `autoblacklist` DISABLE KEYS */;
/*!40000 ALTER TABLE `autoblacklist` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `automonitorsettings`
--

DROP TABLE IF EXISTS `automonitorsettings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `automonitorsettings` (
  `ENABLE` varchar(8) DEFAULT NULL,
  `APPLYTO` varchar(16) DEFAULT NULL,
  `ALLEXTENS` varchar(8) DEFAULT NULL,
  `EXTENSIONS` text,
  `ALLTRUNKS` varchar(8) DEFAULT NULL,
  `TRUNKS` text,
  `MONITORINBOUND` varchar(8) DEFAULT NULL,
  `MONITOROUTBOUND` varchar(8) DEFAULT NULL,
  `MONITORINTERNAL` varchar(8) DEFAULT NULL,
  `MONITORCALLBACK` varchar(8) DEFAULT NULL,
  `OUTBOUNDPROMPT` varchar(32) NOT NULL DEFAULT '',
  `INBOUNDPROMPT` varchar(32) NOT NULL DEFAULT '',
  `enforceoutprompttype` varchar(16) DEFAULT 'woman',
  `enforceinprompttype` varchar(16) DEFAULT 'woman',
  `MONITORMEETME` varchar(8) DEFAULT NULL,
  `STORAGETYPE` varchar(16) DEFAULT NULL,
  `ALLMEETS` varchar(16) DEFAULT 'yes',
  `MEETS` text,
  `SELECTMEET` varchar(8) DEFAULT 'yes',
  `RecordIncludeOutTone` varchar(8) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `automonitorsettings`
--

LOCK TABLES `automonitorsettings` WRITE;
/*!40000 ALTER TABLE `automonitorsettings` DISABLE KEYS */;
INSERT INTO `automonitorsettings` VALUES ('yes','either','yes','','yes','','yes','yes','yes','yes','default','','woman','woman','no','network-disk','yes','','yes','');
/*!40000 ALTER TABLE `automonitorsettings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `autop_phone`
--

DROP TABLE IF EXISTS `autop_phone`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `autop_phone` (
  `MACADDR` varchar(32) DEFAULT NULL,
  `LINE` varchar(8) DEFAULT NULL,
  `FAMILY` varchar(32) DEFAULT NULL,
  `AUTOP_PHONE_KEY` varchar(32) DEFAULT NULL,
  `VALUE` varchar(255) DEFAULT NULL,
  `ID` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `autop_phone`
--

LOCK TABLES `autop_phone` WRITE;
/*!40000 ALTER TABLE `autop_phone` DISABLE KEYS */;
INSERT INTO `autop_phone` VALUES ('yealink','-1','Firmware','firmpassword','',33),('yealink','-1','Firmware','firmloginname','',32),('yealink','-1','Firmware','firmport','',31),('yealink','-1','Firmware','firmip','',30),('yealink','-1','Firmware','firmservertype','HTTP',29),('yealink','-1','Firmware','vp2009firmname','',28),('yealink','-1','Firmware','vp530firmname','',27),('yealink','-1','Firmware','t38firmname','',26),('yealink','-1','Firmware','t32firmname','',25),('yealink','-1','Firmware','t28firmname','',24),('yealink','-1','Firmware','t26firmname','',23),('yealink','-1','Firmware','t22firmname','',22),('yealink','-1','Firmware','t20firmname','',21),('yealink','-1','Firmware','t18firmname','',20),('yealink','-1','Firmware','t12firmname','',19),('yealink','-1','Firmware','enable','off',18),('yealink','-1','Time','datefmt','0',17),('yealink','-1','Time','timefmt','0',16),('yealink','-1','Time','offsettime','60',15),('yealink','-1','Time','endtime','12/31/23',14),('yealink','-1','Time','starttime','1/1/0',13),('yealink','-1','Time','dsttype','0',12),('yealink','-1','Time','dst','0',11),('yealink','-1','Time','ntpserver2','192.168.254.32',10),('yealink','-1','Time','ntpserver1','192.168.254.32',9),('yealink','-1','Time','timezonename','Russia(Moscow)',8),('yealink','-1','Time','timezone','+3',7),('yealink','-1','Basic','pnpurl','',6),('yealink','-1','Basic','pnpurltype','0',5),('yealink','-1','Basic','voicemail','on',4),('yealink','-1','Basic','adminpwd','admin',3),('yealink','-1','Basic','adminpwdtype','0',2),('yealink','-1','Basic','webservertype','1',1),('yealink','-1','Basic','language','English',0),('aastra','-1','Basic','sipdialplan','91x|92xx|[4-8]xxxxxxx|5xx',NULL),('ff1234567890','-1','callwait','','on',0),('ff1234567890','1','account','enable','',1),('ff1234567890','1','account','label','5049',2),('ff1234567890','1','account','exten','5049',3),('ff1234567890','-1','phonebook','','on',4),('yealink','-1','Firmware','firmurl','',34),('yealink','-1','Firmware','t41firmname','',35),('yealink','-1','Firmware','t42firmname','',36),('yealink','-1','Firmware','t46firmname','',37),('yealink','-1','Firmware','t19firmname','',38),('yealink','-1','Firmware','t21firmname','',39),('yealink','-1','Codec','audio','PCMU,PCMA,G729,G722',40),('yealink','-1','Codec','vpxaudio','PCMU,PCMA,G729',41),('yealink','-1','Codec','vpxvideo','H264,H263,mp4v-es',42),('yealink','-1','RemotePhoneBook','phonebookurl1','',43),('yealink','-1','RemotePhoneBook','phonebookname1','',44),('yealink','-1','RemotePhoneBook','phonebookurl2','',45),('yealink','-1','RemotePhoneBook','phonebookname2','',46),('yealink','-1','RemotePhoneBook','phonebookurl3','',47),('yealink','-1','RemotePhoneBook','phonebookname3','',48),('yealink','-1','RemotePhoneBook','phonebookurl4','',49),('yealink','-1','RemotePhoneBook','phonebookname4','',50),('yealink','-1','RemotePhoneBook','phonebookurl5','',51),('yealink','-1','RemotePhoneBook','phonebookname5','',52);
/*!40000 ALTER TABLE `autop_phone` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `autop_phone_general`
--

DROP TABLE IF EXISTS `autop_phone_general`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `autop_phone_general` (
  `MACADDR` varchar(16) DEFAULT NULL,
  `COMPANY` varchar(16) DEFAULT NULL,
  `PHONETYPE` varchar(16) DEFAULT NULL,
  `NAME` varchar(64) DEFAULT NULL,
  `EXTENSIONS` varchar(64) DEFAULT NULL,
  `ENABLE` varchar(64) NOT NULL DEFAULT 'no',
  `IFUPDATE` varchar(8) NOT NULL DEFAULT 'no'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `autop_phone_general`
--

LOCK TABLES `autop_phone_general` WRITE;
/*!40000 ALTER TABLE `autop_phone_general` DISABLE KEYS */;
INSERT INTO `autop_phone_general` VALUES ('ff1234567890','Cisco','IP 7940','','5049','on','');
/*!40000 ALTER TABLE `autop_phone_general` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `autop_phonebook`
--

DROP TABLE IF EXISTS `autop_phonebook`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `autop_phonebook` (
  `TYPE` varchar(16) DEFAULT NULL,
  `CGROUP` varchar(16) DEFAULT NULL,
  `NICKNAME` varchar(64) DEFAULT NULL,
  `EMAIL` varchar(64) DEFAULT NULL,
  `ORGANIZATION` varchar(512) DEFAULT NULL,
  `TITLE` varchar(64) DEFAULT NULL,
  `FIRSTNAME` varchar(64) DEFAULT NULL,
  `FAMILYNAME` varchar(64) DEFAULT NULL,
  `OFFICE` varchar(32) DEFAULT NULL,
  `MOBILE` varchar(32) DEFAULT NULL,
  `HOME` varchar(32) DEFAULT NULL,
  `FAVORITE` varchar(8) DEFAULT NULL,
  `SUBCONTACTS` varchar(1024) DEFAULT NULL,
  `NOTE` varchar(512) DEFAULT NULL,
  `BRITHDAY` varchar(16) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `autop_phonebook`
--

LOCK TABLES `autop_phonebook` WRITE;
/*!40000 ALTER TABLE `autop_phonebook` DISABLE KEYS */;
INSERT INTO `autop_phonebook` VALUES ('none','none','Test','','','','–ò–≤–∞–Ω–æ–≤–ò–≤–∞–Ω–ò–í–∞–Ω—ã—á','','1234567','','','false','','','');
/*!40000 ALTER TABLE `autop_phonebook` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `autop_phonebook_upload`
--

DROP TABLE IF EXISTS `autop_phonebook_upload`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `autop_phonebook_upload` (
  `COMPANY` varchar(32) DEFAULT NULL,
  `FILENAME` varchar(255) DEFAULT NULL,
  `uploadtype` varchar(32) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `autop_phonebook_upload`
--

LOCK TABLES `autop_phonebook_upload` WRITE;
/*!40000 ALTER TABLE `autop_phonebook_upload` DISABLE KEYS */;
/*!40000 ALTER TABLE `autop_phonebook_upload` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `autop_upload_cfg`
--

DROP TABLE IF EXISTS `autop_upload_cfg`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `autop_upload_cfg` (
  `FILENAME` varchar(512) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `autop_upload_cfg`
--

LOCK TABLES `autop_upload_cfg` WRITE;
/*!40000 ALTER TABLE `autop_upload_cfg` DISABLE KEYS */;
/*!40000 ALTER TABLE `autop_upload_cfg` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `backupfile`
--

DROP TABLE IF EXISTS `backupfile`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `backupfile` (
  `FILENAME` varchar(64) DEFAULT NULL,
  `STYPE` varchar(16) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `backupfile`
--

LOCK TABLES `backupfile` WRITE;
/*!40000 ALTER TABLE `backupfile` DISABLE KEYS */;
/*!40000 ALTER TABLE `backupfile` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `blacklist`
--

DROP TABLE IF EXISTS `blacklist`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `blacklist` (
  `NUMBER` varchar(32) DEFAULT NULL,
  `TYPE` varchar(8) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `blacklist`
--

LOCK TABLES `blacklist` WRITE;
/*!40000 ALTER TABLE `blacklist` DISABLE KEYS */;
/*!40000 ALTER TABLE `blacklist` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `britrunk`
--

DROP TABLE IF EXISTS `britrunk`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `britrunk` (
  `TRUNKNAME` varchar(32) DEFAULT NULL,
  `PORTID` varchar(8) DEFAULT NULL,
  `BCHANNELS` varchar(8) DEFAULT NULL,
  `DCHANNEL` varchar(8) DEFAULT NULL,
  `SIGNALLING` varchar(16) DEFAULT NULL,
  `GUIVOLUME` varchar(8) DEFAULT NULL,
  `TERMON` varchar(8) DEFAULT NULL,
  `CRC4` varchar(8) DEFAULT NULL,
  `FRAME` varchar(8) DEFAULT NULL,
  `CODING` varchar(8) DEFAULT NULL,
  `SWITCHTYPE` varchar(16) DEFAULT NULL,
  `PRIDIALPLAN` varchar(16) DEFAULT NULL,
  `RESETINTERVAL` varchar(8) DEFAULT NULL,
  `PRILOCALDIALPLAN` varchar(16) DEFAULT NULL,
  `OVERLAPDIAL` varchar(8) DEFAULT NULL,
  `PRIINDICATION` varchar(16) DEFAULT NULL,
  `FACILITYENABLE` varchar(16) DEFAULT NULL,
  `NSF` varchar(32) DEFAULT NULL,
  `GLOBALDOD` varchar(32) DEFAULT NULL,
  `DODSETTING` text,
  `ECHOCANCEL` varchar(8) DEFAULT NULL,
  `INTERNATIONALPREFIX` varchar(32) DEFAULT NULL,
  `NATIONALPREFIX` varchar(32) DEFAULT NULL,
  `LOCALPREFIX` varchar(32) DEFAULT NULL,
  `PRIVATEPREFIX` varchar(32) DEFAULT NULL,
  `UNKNOWNPREFIX` varchar(32) DEFAULT NULL,
  `HIDECALLERID` varchar(8) DEFAULT NULL,
  `CODEC` varchar(8) DEFAULT NULL,
  `remotedialplan` varchar(32) DEFAULT NULL,
  `remotenumtype` varchar(32) DEFAULT NULL,
  `locationdialplan` varchar(32) DEFAULT NULL,
  `locationnumtype` varchar(32) DEFAULT NULL,
  `enableisdn` varchar(8) DEFAULT 'yes',
  `pricallinnumpre` varchar(32) DEFAULT 'no',
  `pricalloutnumpre` varchar(32) DEFAULT 'no',
  `pripreind` varchar(32) DEFAULT 'default',
  `priscrind` varchar(32) DEFAULT 'default'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `britrunk`
--

LOCK TABLES `britrunk` WRITE;
/*!40000 ALTER TABLE `britrunk` DISABLE KEYS */;
INSERT INTO `britrunk` VALUES ('BriTrunk5','5','68-69','','bri_net_ptmp','','','0','ccs','ami','euroisdn','unknown','never','unknown','no','inband','no','none','','','0','','','','','','no','alaw','unknown','unknown','unknown','unknown','yes','no','no','default','default'),('BriTrunk6','6','71-72','','bri_net','','','0','ccs','ami','euroisdn','unknown','never','unknown','no','inband','no','none','','','0','','','','','','no','alaw','unknown','unknown','unknown','unknown','yes','no','no','default','default');
/*!40000 ALTER TABLE `britrunk` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `businesshours`
--

DROP TABLE IF EXISTS `businesshours`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `businesshours` (
  `TYPE` varchar(8) DEFAULT NULL,
  `PARAM` varchar(32) DEFAULT NULL,
  `INFO` varchar(4096) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `businesshours`
--

LOCK TABLES `businesshours` WRITE;
/*!40000 ALTER TABLE `businesshours` DISABLE KEYS */;
INSERT INTO `businesshours` VALUES ('1','default','08:30-12:00/14:00-18:00/19:00-22:00,08:30-12:00/14:00-18:00/19:00-22:00,08:30-12:00/14:00-18:00/19:00-22:00,08:30-12:00/14:00-18:00/19:00-22:00,08:30-12:00/14:00-18:00/19:00-22:00,08:30-12:00/00:00-00:00/00:00-00:00,00:00-00:00/00:00-00:00/00:00-00:00'),('0','enablebizhours','0');
/*!40000 ALTER TABLE `businesshours` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `callbacklist`
--

DROP TABLE IF EXISTS `callbacklist`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `callbacklist` (
  `NUMBER` varchar(32) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `callbacklist`
--

LOCK TABLES `callbacklist` WRITE;
/*!40000 ALTER TABLE `callbacklist` DISABLE KEYS */;
INSERT INTO `callbacklist` VALUES ('74959262644');
/*!40000 ALTER TABLE `callbacklist` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `callbacksettings`
--

DROP TABLE IF EXISTS `callbacksettings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `callbacksettings` (
  `MATCHALL` varchar(8) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `callbacksettings`
--

LOCK TABLES `callbacksettings` WRITE;
/*!40000 ALTER TABLE `callbacksettings` DISABLE KEYS */;
INSERT INTO `callbacksettings` VALUES ('off');
/*!40000 ALTER TABLE `callbacksettings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `callbacktrunks`
--

DROP TABLE IF EXISTS `callbacktrunks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `callbacktrunks` (
  `TRUNK` varchar(64) DEFAULT NULL,
  `MATCHPREFIX` varchar(8) DEFAULT NULL,
  `STRIP` varchar(8) DEFAULT NULL,
  `PREPEND` varchar(32) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `callbacktrunks`
--

LOCK TABLES `callbacktrunks` WRITE;
/*!40000 ALTER TABLE `callbacktrunks` DISABLE KEYS */;
/*!40000 ALTER TABLE `callbacktrunks` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `certificates`
--

DROP TABLE IF EXISTS `certificates`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `certificates` (
  `TYPE` varchar(16) DEFAULT NULL,
  `FILENAME` varchar(32) DEFAULT NULL,
  `ISSUEDTO` varchar(256) DEFAULT NULL,
  `EXPIRATION` varchar(64) DEFAULT NULL,
  `PATH` varchar(256) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `certificates`
--

LOCK TABLES `certificates` WRITE;
/*!40000 ALTER TABLE `certificates` DISABLE KEYS */;
/*!40000 ALTER TABLE `certificates` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `conferences`
--

DROP TABLE IF EXISTS `conferences`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `conferences` (
  `ROOM` varchar(8) DEFAULT NULL,
  `PIN` blob,
  `ADMIN` varchar(32) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `conferences`
--

LOCK TABLES `conferences` WRITE;
/*!40000 ALTER TABLE `conferences` DISABLE KEYS */;
INSERT INTO `conferences` VALUES ('641','ıà\÷˙g\ÂI†\‹˝˜*R7','5000'),('640','-‹ã\’\¬x!Ä{;pbÖ+	µ','');
/*!40000 ALTER TABLE `conferences` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dateandtime`
--

DROP TABLE IF EXISTS `dateandtime`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dateandtime` (
  `TIMEZONE` varchar(32) DEFAULT NULL,
  `ENAUTO` varchar(8) DEFAULT NULL,
  `NTPSERVER` varchar(64) DEFAULT NULL,
  `ENABLEDST` varchar(8) DEFAULT NULL,
  `TIMEZONENAME` varchar(32) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dateandtime`
--

LOCK TABLES `dateandtime` WRITE;
/*!40000 ALTER TABLE `dateandtime` DISABLE KEYS */;
INSERT INTO `dateandtime` VALUES ('UTC-3','0','pool.ntp.org','off','RUS');
/*!40000 ALTER TABLE `dateandtime` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dbversion`
--

DROP TABLE IF EXISTS `dbversion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dbversion` (
  `VERSION` varchar(16) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dbversion`
--

LOCK TABLES `dbversion` WRITE;
/*!40000 ALTER TABLE `dbversion` DISABLE KEYS */;
INSERT INTO `dbversion` VALUES ('1001');
/*!40000 ALTER TABLE `dbversion` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dhcpserver`
--

DROP TABLE IF EXISTS `dhcpserver`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dhcpserver` (
  `ENABLE` varchar(8) DEFAULT NULL,
  `ROUTERS` varchar(64) DEFAULT NULL,
  `MASK` varchar(64) DEFAULT NULL,
  `DNS1` varchar(64) DEFAULT NULL,
  `DNS2` varchar(64) DEFAULT NULL,
  `IPFROM` varchar(64) DEFAULT NULL,
  `IPTO` varchar(64) DEFAULT NULL,
  `NTPSERVER` varchar(64) DEFAULT NULL,
  `TFTPSERVER` varchar(64) NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dhcpserver`
--

LOCK TABLES `dhcpserver` WRITE;
/*!40000 ALTER TABLE `dhcpserver` DISABLE KEYS */;
INSERT INTO `dhcpserver` VALUES ('','192.168.5.1','255.255.252.0','192.168.5.1','','192.168.5.2','192.168.5.254','','tftp://192.168.254.32');
/*!40000 ALTER TABLE `dhcpserver` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `digitaltrunk`
--

DROP TABLE IF EXISTS `digitaltrunk`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `digitaltrunk` (
  `TRUNKNAME` varchar(32) DEFAULT NULL,
  `PORTID` varchar(8) DEFAULT NULL,
  `CHANNEL` varchar(16) DEFAULT NULL,
  `MODETYPE` varchar(8) DEFAULT NULL,
  `CRC4` varchar(8) DEFAULT NULL,
  `ECHOCANCEL` varchar(8) DEFAULT NULL,
  `TXSHIFT` varchar(8) DEFAULT NULL,
  `CODEC` varchar(8) DEFAULT NULL,
  `SIGNALLING` varchar(8) DEFAULT NULL,
  `SWITCHTYPE` varchar(8) DEFAULT NULL,
  `PRIDIALPLAN` varchar(16) DEFAULT NULL,
  `RESETINTERVAL` varchar(8) DEFAULT NULL,
  `PRILOCALDIALPLAN` varchar(16) DEFAULT NULL,
  `OVERLAPDIAL` varchar(8) DEFAULT NULL,
  `PRIINDICATION` varchar(16) DEFAULT NULL,
  `FACILITYENABLE` varchar(16) DEFAULT NULL,
  `NSF` varchar(32) DEFAULT NULL,
  `MFCR2_VARIANT` varchar(16) DEFAULT NULL,
  `MFCR2_MAX_ANI` varchar(8) DEFAULT NULL,
  `MFCR2_MAX_DNIS` varchar(8) DEFAULT NULL,
  `MFCR2_CHARGE_CALLS` varchar(8) DEFAULT NULL,
  `MFCR2_GET_ANI_FIRST` varchar(8) DEFAULT NULL,
  `MFCR2_MFBACK_TIMEOUT` varchar(8) DEFAULT NULL,
  `MFCR2_DOUBLE_ANSWER` varchar(8) DEFAULT NULL,
  `MFCR2_ALLOW_COLLECT_CALLS` varchar(8) DEFAULT NULL,
  `MFCR2_CATEGORY` varchar(64) DEFAULT NULL,
  `MFCR2_FORCED_RELEASE` varchar(8) DEFAULT NULL,
  `MFCR2_IMMEDIATE_ACCEPT` varchar(8) DEFAULT NULL,
  `MFCR2_LOGDIR` varchar(16) DEFAULT NULL,
  `MFCR2_LOGGING` varchar(16) DEFAULT NULL,
  `SS7TYPE` varchar(8) DEFAULT NULL,
  `SS7_CALLED_NAI` varchar(16) DEFAULT NULL,
  `SS7_CALLING_NAI` varchar(16) DEFAULT NULL,
  `NETWORKINDICATOR` varchar(32) DEFAULT NULL,
  `LINKSET` varchar(8) DEFAULT NULL,
  `POINTCODE` varchar(16) DEFAULT NULL,
  `ADJPOINTCODE` varchar(16) DEFAULT NULL,
  `DEFAULTDPC` varchar(16) DEFAULT NULL,
  `CICBEGINSWITH` varchar(8) DEFAULT NULL,
  `SIGCHAN` varchar(8) DEFAULT NULL,
  `GLOBALDOD` varchar(32) DEFAULT NULL,
  `DODSETTING` text,
  `INTERNATIONALPREFIX` varchar(32) DEFAULT NULL,
  `NATIONALPREFIX` varchar(32) DEFAULT NULL,
  `LOCALPREFIX` varchar(32) DEFAULT NULL,
  `PRIVATEPREFIX` varchar(32) DEFAULT NULL,
  `UNKNOWNPREFIX` varchar(32) DEFAULT NULL,
  `CIC_GROUP` varchar(8) NOT NULL DEFAULT '1',
  `remotedialplan` varchar(32) DEFAULT NULL,
  `remotenumtype` varchar(32) DEFAULT NULL,
  `locationdialplan` varchar(32) DEFAULT NULL,
  `locationnumtype` varchar(32) DEFAULT NULL,
  `enableisdn` varchar(8) DEFAULT 'yes',
  `ss7international` varchar(8) DEFAULT NULL,
  `ss7national` varchar(8) DEFAULT NULL,
  `ss7subscriber` varchar(8) DEFAULT NULL,
  `ss7unknown` varchar(8) DEFAULT NULL,
  `ss7con` varchar(8) DEFAULT 'no',
  `pricallinnumpre` varchar(32) DEFAULT 'no',
  `pricalloutnumpre` varchar(32) DEFAULT 'no',
  `pripreind` varchar(32) DEFAULT 'default',
  `priscrind` varchar(32) DEFAULT 'default',
  `outchannel` varchar(32) DEFAULT NULL,
  `callinmode` varchar(4) DEFAULT NULL,
  `calloutmode` varchar(4) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `digitaltrunk`
--

LOCK TABLES `digitaltrunk` WRITE;
/*!40000 ALTER TABLE `digitaltrunk` DISABLE KEYS */;
INSERT INTO `digitaltrunk` VALUES ('E1Trunk1','1','1-15,17-31','e1','0','1','4','0','pri_net','national','unknown','3600','unknown','no','inband','no','none','itu','16','16','yes','no','-1','no','no','national_subscriber','no','no','span','nothing','itu','dynamic','dynamic','national','1','1','1','1','1,17','16','','','','','','','','1','unknown','unknown','unknown','unknown','yes','','','','','no','no','no','default','default',NULL,'',''),('E1Trunk2','2','32-46,48-62','e1','0','1','4','0','pri_cpe','national','unknown','3600','unknown','no','inband','no','none','itu','16','16','yes','no','-1','no','no','national_subscriber','no','no','span','nothing','itu','dynamic','dynamic','national','2','1','1','1','32,48','47','','','','','','','','1','unknown','unknown','unknown','unknown','yes','','','','','no','no','no','default','default',NULL,'','');
/*!40000 ALTER TABLE `digitaltrunk` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `disa`
--

DROP TABLE IF EXISTS `disa`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `disa` (
  `NAME` varchar(16) DEFAULT NULL,
  `SECRET` blob,
  `RESPONSETIMEOUT` varchar(8) DEFAULT NULL,
  `DIGITTIMEOUT` varchar(8) DEFAULT NULL,
  `ALLOWROUTER` text,
  `pinset` varchar(64) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `disa`
--

LOCK TABLES `disa` WRITE;
/*!40000 ALTER TABLE `disa` DISABLE KEYS */;
/*!40000 ALTER TABLE `disa` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `disksettings`
--

DROP TABLE IF EXISTS `disksettings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `disksettings` (
  `STOREVM` varchar(8) DEFAULT NULL,
  `STOREOTM` varchar(8) DEFAULT NULL,
  `STORECDR` varchar(8) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `disksettings`
--

LOCK TABLES `disksettings` WRITE;
/*!40000 ALTER TABLE `disksettings` DISABLE KEYS */;
INSERT INTO `disksettings` VALUES ('no','no','no');
/*!40000 ALTER TABLE `disksettings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dnis`
--

DROP TABLE IF EXISTS `dnis`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dnis` (
  `TRUNKNAME` varchar(32) DEFAULT NULL,
  `CHANNELNAME` varchar(64) DEFAULT NULL,
  `ENABLEDNIS` varchar(8) NOT NULL DEFAULT 'off',
  `DNISNAME` varchar(32) DEFAULT NULL,
  `DIDNUMBER` varchar(32) NOT NULL DEFAULT '',
  `TRUNKTYPE` varchar(16) NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dnis`
--

LOCK TABLES `dnis` WRITE;
/*!40000 ALTER TABLE `dnis` DISABLE KEYS */;
/*!40000 ALTER TABLE `dnis` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dyndnssettings`
--

DROP TABLE IF EXISTS `dyndnssettings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dyndnssettings` (
  `ENABLEDDNS` varchar(8) DEFAULT NULL,
  `DOMAIN` varchar(64) DEFAULT NULL,
  `USER` varchar(64) DEFAULT NULL,
  `PASSWORD` blob,
  `FREEDNSHASH` varchar(128) DEFAULT NULL,
  `HOST` varchar(128) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dyndnssettings`
--

LOCK TABLES `dyndnssettings` WRITE;
/*!40000 ALTER TABLE `dyndnssettings` DISABLE KEYS */;
INSERT INTO `dyndnssettings` VALUES ('off','dyndns.org','','','','');
/*!40000 ALTER TABLE `dyndnssettings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `extensions`
--

DROP TABLE IF EXISTS `extensions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `extensions` (
  `TYPE` varchar(16) DEFAULT NULL,
  `USERNAME` varchar(32) DEFAULT NULL,
  `SECRET` blob,
  `FULLNAME` varchar(64) DEFAULT NULL,
  `CID_NUMBER` varchar(32) DEFAULT NULL,
  `VMSECRET` blob,
  `ENVMTOMAIL` varchar(8) DEFAULT NULL,
  `EMAIL` varchar(64) DEFAULT NULL,
  `NAT` varchar(8) DEFAULT NULL,
  `DTMFMODE` varchar(32) DEFAULT NULL,
  `PICKUPGROUP` varchar(32) DEFAULT NULL,
  `CALLGROUP` varchar(32) DEFAULT NULL,
  `CALLWAITING` varchar(8) DEFAULT NULL,
  `HASMANAGER` varchar(8) DEFAULT NULL,
  `ZAPCHAN` varchar(8) DEFAULT NULL,
  `RXFLASH` varchar(8) DEFAULT NULL,
  `ENALWAYS` varchar(8) DEFAULT NULL,
  `ENNOANSWER` varchar(8) DEFAULT NULL,
  `ENBUSY` varchar(8) DEFAULT NULL,
  `TOVM` varchar(8) DEFAULT NULL,
  `TONUMBER` varchar(8) DEFAULT NULL,
  `NUMBER` varchar(64) DEFAULT NULL,
  `RINGTIMEOUT` varchar(8) DEFAULT NULL,
  `HASVOICEMAIL` varchar(8) DEFAULT NULL,
  `HASAGENT` varchar(8) DEFAULT NULL,
  `MAC` varchar(16) DEFAULT NULL,
  `LINEID` varchar(8) DEFAULT NULL,
  `IPRESTRICT` varchar(8) DEFAULT NULL,
  `PERMITIP1` varchar(64) DEFAULT NULL,
  `PERMITIP2` varchar(64) DEFAULT NULL,
  `PERMITIP3` varchar(64) DEFAULT NULL,
  `PERMITIP4` varchar(64) DEFAULT NULL,
  `TRANSPORT` varchar(16) DEFAULT NULL,
  `FXSPORT` varchar(8) DEFAULT NULL,
  `ENABLESRTP` varchar(8) DEFAULT NULL,
  `ENABLEMTE` varchar(8) DEFAULT NULL,
  `ENABLERINGALL` varchar(8) DEFAULT NULL,
  `MOBILE` varchar(32) DEFAULT NULL,
  `RXGAIN` varchar(8) NOT NULL DEFAULT '40%',
  `TXGAIN` varchar(8) NOT NULL DEFAULT '40%',
  `SPYMODE` varchar(8) NOT NULL DEFAULT '0',
  `ALLOWBEINGSPY` varchar(8) NOT NULL DEFAULT 'off',
  `QUALIFY` varchar(8) NOT NULL DEFAULT 'on',
  `ENABLEFAX` varchar(8) NOT NULL DEFAULT 'off',
  `MAXDURATION` varchar(8) NOT NULL DEFAULT '',
  `REMOTEREGISTER` varchar(8) NOT NULL DEFAULT 'no',
  `outboundprefix` varchar(16) DEFAULT NULL,
  `registername` varchar(32) DEFAULT NULL,
  `clientmobile` varchar(32) DEFAULT '',
  `enablehotline` varchar(8) DEFAULT 'no',
  `hotlinenumber` varchar(16) DEFAULT NULL,
  `delaydial` varchar(8) DEFAULT '2'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `extensions`
--

LOCK TABLES `extensions` WRITE;
/*!40000 ALTER TABLE `extensions` DISABLE KEYS */;
INSERT INTO `extensions` VALUES ('SIP','5049','áø±!@5áú(\œ','5049','5049','\r88qéòá\nK\n?\…Œë^','off','','off','rfc2833','','','off','on','','1000','off','on','on','1','0','','30','on','off','ff1234567890','1','off','','','','','udp','','off','off','off','','40%','40%','0','off','on','off','','','','','','','',''),('SIP','5048','µMW¶ü\›7°jêêkï¸\‡','5048','5048','Gò\ƒ\\\Œf\Ô∫~∑Ú\\2z','off','','off','rfc2833','','','off','on','','1000','off','on','on','1','0','','30','on','off','','','off','','','','','udp','','off','off','off','','40%','40%','0','off','on','off','','','','','','','',''),('SIP','5047','\≈d\n\⁄k∫FO+\›}|ó!','5047','5047','µL\›ˇ\Î\ÿ	sn\0*8-#','off','','off','rfc2833','','','off','on','','1000','off','on','on','1','0','','30','on','off','','','off','','','','','udp','','off','off','off','','40%','40%','0','off','on','off','','','','','','','',''),('SIP','5046','¡˝Nr∏å€Ææ.†π\Ï','5046','5046','≥z…å/\'uÙ≤\€!èqê','off','','off','rfc2833','','','off','on','','1000','off','on','on','1','0','','30','on','off','','','off','','','','','udp','','off','off','off','','40%','40%','0','off','on','off','','','','','','','',''),('SIP','5045','*∞\Á2ÿå\‰\–\œwe\œ^','5045','5045','#™¶ò◊ñrV9ó\'ê{®.','off','','off','rfc2833','-1','-1','off','on','','1000','off','on','on','1','0','','30','on','off','','','off','','','','','udp','','off','off','off','','40%','40%','0','off','on','off','','no','','5045','','','',''),('SIP','5044','Çh\◊BºwàuÖ•E\Ëd','5044','5044','rÿª#¨%Ò5˜\Ó\ƒ˜≤CÉ','off','','off','rfc2833','','','off','on','','1000','off','on','on','1','0','','30','on','off','','','off','','','','','udp','','off','off','off','','40%','40%','0','off','on','off','','','','','','','',''),('SIP','5043','^˙-\ÕTíäÆ±HÇH','5043','5043','\¬\¬JÙf\‡ñø¿}\‰¢E˘','off','','off','rfc2833','','','off','on','','1000','off','on','on','1','0','','30','on','off','','','off','','','','','udp','','off','off','off','','40%','40%','0','off','on','off','','','','','','','',''),('SIP','5042','m\ÓÖ´úÙ÷†©™∞Y?','5042','5042','Fe)a\–x®\∆9\"˚P©*t','off','','off','rfc2833','','','off','on','','1000','off','on','on','1','0','','30','on','off','','','off','','','','','udp','','off','off','off','','40%','40%','0','off','on','off','','','','','','','',''),('SIP','5041','W\\.C6–ç\‡iãZ\Ï4æ','5041','5041','\ÓG\Âwﬁù‘î=Ùj&t\Ãb','off','','off','rfc2833','','','off','on','','1000','off','on','on','1','0','','30','on','off','','','off','','','','','udp','','off','off','off','','40%','40%','0','off','on','off','','','','','','','',''),('SIP','5040','í8X7Ût@†¬ë¸\Ópåc','5040','5040','Ò)¢\Z1\„ñ\n\'îqì\›','off','','off','rfc2833','','','off','on','','1000','off','on','on','1','0','','30','on','off','','','off','','','','','udp','','off','off','off','','40%','40%','0','off','on','off','','','','','','','',''),('SIP','5039','\\ú\—∞\–¿T˛ø≥ò.ºá','5039','5039','N\Ì/ıÙ\Ë]Ü\ÀÑ','off','','off','rfc2833','','','off','on','','1000','off','on','on','1','0','','30','on','off','','','off','','','','','udp','','off','off','off','','40%','40%','0','off','on','off','','','','','','','',''),('SIP','5038','Ü¿FeôYµW:°÷óMS˝','5038','5038','srÒ®˝™\ÀS\\7∏Vr\Œ','off','','off','rfc2833','','','off','on','','1000','off','on','on','1','0','','30','on','off','','','off','','','','','udp','','off','off','off','','40%','40%','0','off','on','off','','','','','','','',''),('SIP','5037','Ìç•IÉØ\Îóg47\’Z\\','5037','5037','åÆSdû\Õ:\ﬁ\»&˛ì∫','off','','off','rfc2833','','','off','on','','1000','off','on','on','1','0','','30','on','off','','','off','','','','','udp','','off','off','off','','40%','40%','0','off','on','off','','','','','','','',''),('SIP','5036','\ﬂu/¢±\Ô%+ê\È\„ñ^±°','5036','5036','P6\’K\‰]0j\Âì§là','off','','off','rfc2833','','','off','on','','1000','off','on','on','1','0','','30','on','off','','','off','','','','','udp','','off','off','off','','40%','40%','0','off','on','off','','','','','','','',''),('SIP','5035','¡+!âI˜\Ÿ\Â$ñ)âèVy˘','5035','5035','µ\Z¨\œˇ\ÿ\'•lØ´\Ïsp\Ï©','off','','off','rfc2833','','','off','on','','1000','off','on','on','1','0','','30','on','off','','','off','','','','','udp','','off','off','off','','40%','40%','0','off','on','off','','','','','','','',''),('SIP','5034','+\Á!O4ö<\◊\‹Nê1°âH','5034','5034','.\Ë’ÖJã#ä©\“\œ⁄û\Ì}-','off','','off','rfc2833','','','off','on','','1000','off','on','on','1','0','','30','on','off','','','off','','','','','udp','','off','off','off','','40%','40%','0','off','on','off','','','','','','','',''),('SIP','5033','\‰N#åDﬂ¨.\ﬂ\¬˘Fú\∆ˆ\”','5033','5033','ù9˚áü\Ë\ƒ÷Ä\Ëi°Ò!	','off','','off','rfc2833','','','off','on','','1000','off','on','on','1','0','','30','on','off','','','off','','','','','udp','','off','off','off','','40%','40%','0','off','on','off','','','','','','','',''),('SIP','5032','ù\Í\À0M œª2Vâ=wª','5032','5032','\‰\‡\«\\I¨·±∫¡=\Ó_Y','off','','off','rfc2833','','','off','on','','1000','off','on','on','1','0','','30','on','off','','','off','','','','','udp','','off','off','off','','40%','40%','0','off','on','off','','','','','','','',''),('SIP','5031','.ä-:E*?\Ÿ\‡†|H4\„£','5031','5031','ç\’\ƒ\ÔãÀØÑÇ¢H\€#¶\Ó6','off','','off','rfc2833','','','off','on','','1000','off','on','on','1','0','','30','on','off','','','off','','','','','udp','','off','off','off','','40%','40%','0','off','on','off','','','','','','','',''),('SIP','5030','uòòiıv>\Î\‰%∞8\ÿk5','5030','5030','%Aß!™˚\ÂAä\Ïf¢å\Êö','off','','off','rfc2833','','','off','on','','1000','off','on','on','1','0','','30','on','off','','','off','','','','','udp','','off','off','off','','40%','40%','0','off','on','off','','','','','','','',''),('SIP','5029','¨èv†9\Ë9\Ÿ\\°P≠\Z','5029','5029','\ ?p\¬.\·ı\ƒnTç\∆','off','','off','rfc2833','','','off','on','','1000','off','on','on','1','0','','30','on','off','','','off','','','','','udp','','off','off','off','','40%','40%','0','off','on','off','','','','','','','',''),('SIP','5028','Ù\ÃNe>\Ì∂ºrZt≠z','5028','5028','†ì\ÓkÅLâ8\ÃSik\‘z','off','','off','rfc2833','','','off','on','','1000','off','on','on','1','0','','30','on','off','','','off','','','','','udp','','off','off','off','','40%','40%','0','off','on','off','','','','','','','',''),('SIP','5027','víØxÇµWÇ\·%\ÿ˙\ÓS≥','5027','5027','\Ó}°\Ë_d\Êà\≈^@©=\‡','off','','off','rfc2833','','','off','on','','1000','off','on','on','1','0','','30','on','off','','','off','','','','','udp','','off','off','off','','40%','40%','0','off','on','off','','','','','','','',''),('SIP','5026','Ñÿô¨ò9˛}K#øÅ\Í≤','5026','5026','ï\ƒxY\€|\‘ı\”\Áê\‹≠\Ó\ﬁ','off','','off','rfc2833','','','off','on','','1000','off','on','on','1','0','','30','on','off','','','off','','','','','udp','','off','off','off','','40%','40%','0','off','on','off','','','','','','','',''),('SIP','5025','|0E\ËT\“Mà–§YÖ∏Y4)','5025','5025','\„;\‰\Â\∆sï˜6JGç±~','off','','off','rfc2833','','','off','on','','1000','off','on','on','1','0','','30','on','off','','','off','','','','','udp','','off','off','off','','40%','40%','0','off','on','off','','','','','','','',''),('SIP','5024','HT\Ïπ\Z0ıS∞~Ñf(u\ ','5024','5024','≥p\»Gc[\Ï\Ïù\‚¡ÄW\“lO','off','','off','rfc2833','','','off','on','','1000','off','on','on','1','0','','30','on','off','','','off','','','','','udp','','off','off','off','','40%','40%','0','off','on','off','','','','','','','',''),('SIP','5023','ßÑ≥õ\‚¿â©\‹ıB¥','5023','5023','•g\“=cñ@\ÈÄ˚&Ñï≥M','off','','off','rfc2833','','','off','on','','1000','off','on','on','1','0','','30','on','off','','','off','','','','','udp','','off','off','off','','40%','40%','0','off','on','off','','','','','','','',''),('SIP','5022','øﬂû\„g\0b<g%π\›\ÎÑ¿','5022','5022','>3ÛK!x:˝æ9L,ßÆ','off','','off','rfc2833','','','off','on','','1000','off','on','on','1','0','','30','on','off','','','off','','','','','udp','','off','off','off','','40%','40%','0','off','on','off','','','','','','','',''),('SIP','5021','\rÿ©]™\\¿èr\Ë.Nhn','5021','5021','\”q&o´Z\ÔNc\Í)n\Íá\√','off','','off','rfc2833','','','off','on','','1000','off','on','on','1','0','','30','on','off','','','off','','','','','udp','','off','off','off','','40%','40%','0','off','on','off','','','','','','','',''),('SIP','5020','\Àu<ˇ\nG3\'Wxüø¢\\Ú','5020','5020','\ƒ\Êav\»7yû\ÓΩ\“_0','off','','off','rfc2833','','','off','on','','1000','off','on','on','1','0','','30','on','off','','','off','','','','','udp','','off','off','off','','40%','40%','0','off','on','off','','','','','','','',''),('SIP','5019','\nÆi∏ˆì4ı>€ñı≠<^','5019','5019','\∆\ÈABåê\√]Ÿµ\»\√\Ó','off','','off','rfc2833','','','off','on','','1000','off','on','on','1','0','','30','on','off','','','off','','','','','udp','','off','off','off','','40%','40%','0','off','on','off','','','','','','','',''),('SIP','5018','\noä\œÚ:E≥3˛\"\ÁYxêQ','5018','5018','Òü∞Ä≠áV\n\‡dGWsº\Î&','off','','off','rfc2833','','','off','on','','1000','off','on','on','1','0','','30','on','off','','','off','','','','','udp','','off','off','off','','40%','40%','0','off','on','off','','','','','','','',''),('SIP','5017','L`´˘\Ê2è\»3¢y:ë]','5017','5017','ktŸÜ\‚ΩŒ¢\«S˘O?\ÿ\Õ','off','','off','rfc2833','','','off','on','','1000','off','on','on','1','0','','30','on','off','','','off','','','','','udp','','off','off','off','','40%','40%','0','off','on','off','','','','','','','',''),('SIP','5016','EN.9\∆1\–AC\»(\r\À˛','5016','5016','∏≥Ò\·˚õ\"[®<V','off','','off','rfc2833','','','off','on','','1000','off','on','on','1','0','','30','on','off','','','off','','','','','udp','','off','off','off','','40%','40%','0','off','on','off','','','','','','','',''),('SIP','5015','ÒQIó~\Â¢å⁄ßi{\È¿','5015','5015','\"1\—J0-fÛæ\0πÅ','off','','off','rfc2833','','','off','on','','1000','off','on','on','1','0','','30','on','off','','','off','','','','','udp','','off','off','off','','40%','40%','0','off','on','off','','','','','','','',''),('SIP','5014','∏;Æ*s[]N\„N(\≈\Íaç','5014','5014','4[ˇ\r34ê\·N\ƒnãÚ','off','','off','rfc2833','','','off','on','','1000','off','on','on','1','0','','30','on','off','','','off','','','','','udp','','off','off','off','','40%','40%','0','off','on','off','','','','','','','',''),('SIP','5013','a]Kö\0s\Á\‰;‘ª≠kn','5013','5013','/h‚é´≤7qe\–\Â\€î_','off','','off','rfc2833','','','off','on','','1000','off','on','on','1','0','','30','on','off','','','off','','','','','udp','','off','off','off','','40%','40%','0','off','on','off','','','','','','','',''),('SIP','5012','\r≤hqJ\ÔA+\‚˜E:∏Y≤\’','5012','5012','ˇÆyC¡3uˇï’Éµ\”=','off','','off','rfc2833','','','off','on','','1000','off','on','on','1','0','','30','on','off','','','off','','','','','udp','','off','off','off','','40%','40%','0','off','on','off','','','','','','','',''),('SIP','5011','\‘|\ÂÙbªéC#vr\≈tg','5011','5011','øA)Çbyw\Ï¢f\’\'y≠õÛ','off','','off','rfc2833','-1','-1','off','on','','1000','off','off','off','1','0','','5','off','off','','','off','','','','','udp','','off','off','off','','40%','40%','0','off','on','off','','no','','5011','','','',''),('SIP','5010','u›±ˆ\‚/6T]PNlvè','5010','5010','\’˙Díöáô\œGeW?ı)|','off','','off','rfc2833','-1','-1','off','on','','1000','off','off','off','1','0','','5','off','off','','','off','','','','','udp','','off','off','off','','40%','40%','0','off','on','off','','no','','5010','','','',''),('SIP','5009','Xâj=6∑‘ÑJBãîC4','5009','5009','I¯ñmß\ÿ›™sªCõñ.','off','','off','rfc2833','','','off','on','','1000','off','on','on','1','0','','30','on','off','','','off','','','','','udp','','off','off','off','','40%','40%','0','off','on','off','','','','','','','',''),('SIP','5008','K	>\⁄;¿¥Ñ\ÂdÅD&\ÂΩ','5008','5008','∏V\ÌOc¨ós=ëÃºvm','off','','off','rfc2833','','','off','on','','1000','off','on','on','1','0','','30','on','off','','','off','','','','','udp','','off','off','off','','40%','40%','0','off','on','off','','','','','','','',''),('SIP','5007','˘∏&Æ\Z).2^¡ˆêœö\—','5007','5007','\ ˆí6\–\–\ÊJ\'çπî^+','off','','off','rfc2833','-1','-1','off','on','','1000','off','on','on','1','0','','30','on','off','','','off','','','','','udp','','off','off','off','','40%','40%','0','off','on','off','','no','','5007','','','',''),('SIP','5006','7üv\·]–ª\ZÛ#BapÅ@','5006','5006','bò,S{\Ìu¶6l˘?\‘\‰\ŒF','off','','off','rfc2833','','','off','on','','1000','off','on','on','1','0','','30','on','off','','','off','','','','','udp','','off','off','off','','40%','40%','0','off','on','off','','','','','','','',''),('SIP','5005','s˘•+ç≥Çb.U8ºÃµáÖ','5005','5005','ƒú˙}≤¢´Yr#uã','off','','off','rfc2833','','','off','on','','1000','off','on','on','1','0','','30','on','off','','','off','','','','','udp','','off','off','off','','40%','40%','0','off','on','off','','','','','','','',''),('SIP','5004','™£\·?‹ã\ŸM\ÕF∫å\√','5004','5004','\‰ö\\˚I ∂6Ç5\—_ã†','off','','off','rfc2833','','','off','on','','1000','off','on','on','1','0','','30','on','off','','','off','','','','','udp','','off','off','off','','40%','40%','0','off','on','off','','','','','','','',''),('SIP','5003','\ZR¸à\Á1J5ΩˇT	`','5003','5003','	¯Y•±ˇ¶-\ﬁ\»v\ﬂN','off','','off','rfc2833','-1','-1','off','on','','1000','off','on','on','1','0','','30','on','off','','','off','','','','','udp','','off','off','off','','40%','40%','0','off','on','off','','no','','5003','','','',''),('SIP','5002','\ﬁ.ìE?\‚§{©\»\Œ#G','5002','5002','¢+™§ã[û%©1\"\‚¨\Ã','off','','off','rfc2833','-1','-1','off','on','','1000','off','on','on','1','0','','30','on','off','','','off','','','','','udp','','off','off','off','','40%','40%','0','off','on','off','','no','','5002','','','',''),('SIP','5001','ûiVPcÄúàòØ\Ôd','5001','5001','Q*»ïHm9\Ì\“	Ãì\«_*','off','','off','rfc2833','','','off','on','','1000','off','on','on','1','0','','30','on','off','','','off','','','','','udp','','off','off','off','','40%','40%','0','off','on','off','','','','','','','',''),('SIP','5000','|\Ì\‡\n¯∫à\r]≤Æ\ﬂ|\Ô#','5000','5000','¥\0V\“\ﬁ\÷˚\‘N[\Ãp?ú','off','','off','rfc2833','','','off','on','','1000','off','on','on','1','0','','30','on','off','0015658e3386','1','off','','','','','udp','','off','off','off','','40%','40%','0','off','on','off','','','','','','','',''),('FXS','601','\Ï\ÿı0\Œ\nÄòï|å¨','601','601','¢\ËA\‡	Voí-¬Ø\—\…','off','','off','rfc2833','','','off','on','63','1000','off','on','on','1','0','','30','on','off','','','off','','','','','udp','1','off','off','off','','40%','40%','0','off','on','off','','','','','','','','');
/*!40000 ALTER TABLE `extensions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `features`
--

DROP TABLE IF EXISTS `features`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `features` (
  `ENABLE` varchar(8) DEFAULT NULL,
  `NAME` varchar(32) DEFAULT NULL,
  `CODE` varchar(16) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `features`
--

LOCK TABLES `features` WRITE;
/*!40000 ALTER TABLE `features` DISABLE KEYS */;
INSERT INTO `features` VALUES ('on','automon','#1'),('on','checkvm','*2'),('on','atxfer','*3'),('on','blindxfer','*03'),('on','pickupexten','*4'),('on','pickupspecific','*04'),('on','pageexten','*5'),('','parkcall','*6'),('','parkpos','690-699'),('','parkingtime','60'),('on','setdefault','#70'),('on','enalways','*71'),('on','disalways','*071'),('on','enbusy','*72'),('on','disbusy','*072'),('on','ennoanswer','*73'),('on','disnoanswer','*073'),('on','tonumber','*74'),('on','tovm','*074'),('on','endnd','*75'),('on','disdnd','*075'),('on','vmm','*02'),('on','normalspy','#90'),('on','whisperspy','*91'),('on','bargespy','*92'),('','atxfernoanswertimeout','15'),('','vmexten','#'),('','digittimeout','4000');
/*!40000 ALTER TABLE `features` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fordebug`
--

DROP TABLE IF EXISTS `fordebug`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fordebug` (
  `ID` varchar(8) DEFAULT NULL,
  `CONFNAME` varchar(32) DEFAULT NULL,
  `CONTEXT` varchar(32) DEFAULT NULL,
  `TYPE` varchar(8) DEFAULT NULL,
  `FORDEBUG_LEFT` varchar(32) DEFAULT NULL,
  `FORDEBUG_RIGHT` varchar(128) DEFAULT NULL,
  `DATETIME` varchar(16) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fordebug`
--

LOCK TABLES `fordebug` WRITE;
/*!40000 ALTER TABLE `fordebug` DISABLE KEYS */;
/*!40000 ALTER TABLE `fordebug` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `gsmtrunk`
--

DROP TABLE IF EXISTS `gsmtrunk`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `gsmtrunk` (
  `TRUNKNAME` varchar(32) DEFAULT NULL,
  `TRUNKPORT` varchar(8) DEFAULT NULL,
  `GUIVOLUME` varchar(8) DEFAULT NULL,
  `GSMPORT` varchar(8) DEFAULT NULL,
  `TYPE` varchar(8) DEFAULT NULL,
  `PIN` varchar(16) DEFAULT NULL,
  `PINERROR` varchar(8) DEFAULT NULL,
  `dtmfmode` varchar(32) DEFAULT 'echoafter',
  `dtmfsensitive` varchar(32) DEFAULT 'normal',
  `TXGAIN` varchar(8) DEFAULT '40%'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gsmtrunk`
--

LOCK TABLES `gsmtrunk` WRITE;
/*!40000 ALTER TABLE `gsmtrunk` DISABLE KEYS */;
INSERT INTO `gsmtrunk` VALUES ('UMTS3','65','40%','3','UMTS','','','echoafter','normal','40%');
/*!40000 ALTER TABLE `gsmtrunk` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hoststandby`
--

DROP TABLE IF EXISTS `hoststandby`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `hoststandby` (
  `ENABLE` varchar(8) DEFAULT NULL,
  `MODE` varchar(8) DEFAULT NULL,
  `HOSTNAME` varchar(64) DEFAULT NULL,
  `IP` varchar(64) DEFAULT NULL,
  `VIRTUALIP` varchar(64) DEFAULT NULL,
  `SUBNETMASK` varchar(64) DEFAULT NULL,
  `AUTOFAILBACK` varchar(8) DEFAULT NULL,
  `UDPPORT` varchar(8) DEFAULT NULL,
  `KEEPALIVE` varchar(8) DEFAULT NULL,
  `DEADTIME` varchar(8) DEFAULT NULL,
  `INITDEAD` varchar(8) DEFAULT NULL,
  `CHECKDB` varchar(8) DEFAULT NULL,
  `NOTIFICATION` varchar(16) DEFAULT NULL,
  `VM` varchar(512) DEFAULT NULL,
  `SMS` varchar(256) DEFAULT NULL,
  `SYNCUSER` varchar(32) DEFAULT NULL,
  `SYNCPASS` varchar(64) DEFAULT NULL,
  `AUTHKEYS` varchar(64) DEFAULT NULL,
  `DISKSYNC` varchar(16) DEFAULT NULL,
  `SYNCTIME` varchar(8) DEFAULT NULL,
  `SYNCWAN` varchar(8) DEFAULT NULL,
  `PINGNODES` varchar(512) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hoststandby`
--

LOCK TABLES `hoststandby` WRITE;
/*!40000 ALTER TABLE `hoststandby` DISABLE KEYS */;
INSERT INTO `hoststandby` VALUES ('off','Master','','','','','off','694','2','120','120','yes','no','','','backup','','','enTimingSync','02:00','yes','');
/*!40000 ALTER TABLE `hoststandby` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `iaxsettings`
--

DROP TABLE IF EXISTS `iaxsettings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `iaxsettings` (
  `BINDPORT` varchar(8) DEFAULT NULL,
  `BANDWIDTH` varchar(16) DEFAULT NULL,
  `MAXREG` varchar(8) DEFAULT NULL,
  `MINREG` varchar(8) DEFAULT NULL,
  `ALLOW` varchar(256) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `iaxsettings`
--

LOCK TABLES `iaxsettings` WRITE;
/*!40000 ALTER TABLE `iaxsettings` DISABLE KEYS */;
INSERT INTO `iaxsettings` VALUES ('4569','low','1200','60','ulaw-alaw-gsm');
/*!40000 ALTER TABLE `iaxsettings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `inrouters`
--

DROP TABLE IF EXISTS `inrouters`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `inrouters` (
  `POS` varchar(8) DEFAULT NULL,
  `NAME` varchar(32) DEFAULT NULL,
  `DIDPREFIX` varchar(32) DEFAULT NULL,
  `CALLERIDPREFIX` varchar(32) DEFAULT NULL,
  `TRUNKINFO` text,
  `DURINGTO` varchar(8) DEFAULT NULL,
  `DDEST` varchar(32) DEFAULT NULL,
  `OUTSIDETO` varchar(8) DEFAULT NULL,
  `ODEST` varchar(32) DEFAULT NULL,
  `RINGTONE` varchar(32) DEFAULT NULL,
  `DIDTOEXTEN` varchar(32) DEFAULT NULL,
  `CALLBACK` varchar(8) DEFAULT NULL,
  `OFFICETIME` varchar(32) DEFAULT NULL,
  `COLSEDTIME` varchar(32) DEFAULT NULL,
  `HOLIDAY` varchar(32) DEFAULT NULL,
  `HTO` varchar(8) DEFAULT NULL,
  `HDEST` varchar(32) DEFAULT NULL,
  `FAXTO` varchar(32) DEFAULT NULL,
  `FAXDEST` varchar(128) DEFAULT NULL,
  `callbacktrunk` varchar(32) DEFAULT NULL,
  `allbusinessdest` text,
  `callbacktime` varchar(8) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `inrouters`
--

LOCK TABLES `inrouters` WRITE;
/*!40000 ALTER TABLE `inrouters` DISABLE KEYS */;
INSERT INTO `inrouters` VALUES ('1','From_s50','','','testS50(SPS)-testIAX(SPX)','7','','1','601','','','0','default','','','1','5003','7','','','','');
/*!40000 ALTER TABLE `inrouters` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ivr`
--

DROP TABLE IF EXISTS `ivr`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ivr` (
  `NUMBER` varchar(8) DEFAULT NULL,
  `NAME` varchar(32) DEFAULT NULL,
  `PROMPT` varchar(32) DEFAULT NULL,
  `PLAYTIMES` varchar(8) DEFAULT NULL,
  `WAITEXTEN` varchar(32) DEFAULT NULL,
  `ALLOWDIALOTHER` varchar(8) DEFAULT NULL,
  `IVR_KEY` varchar(512) DEFAULT NULL,
  `TIMEOUTTO` varchar(64) DEFAULT NULL,
  `INVALIDTO` varchar(64) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ivr`
--

LOCK TABLES `ivr` WRITE;
/*!40000 ALTER TABLE `ivr` DISABLE KEYS */;
INSERT INTO `ivr` VALUES ('660','660','default','3','3','','key0=0-,key1=0-,key2=0-,key3=0-,key4=0-,key5=0-,key6=0-,key7=0-,key8=0-,key9=0-,key10=0-,key11=0-','keyt=0-','keyi=0-'),('661','661','default','3','3','on','key0=0-,key1=1-601,key2=1-5001,key3=4-660,key4=0-,key5=0-,key6=0-,key7=0-,key8=0-,key9=0-,key10=0-,key11=0-','keyt=1-5003','keyi=1-5004');
/*!40000 ALTER TABLE `ivr` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ivrprompts`
--

DROP TABLE IF EXISTS `ivrprompts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ivrprompts` (
  `NAME` varchar(32) DEFAULT NULL,
  `DIRECTORY` varchar(255) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ivrprompts`
--

LOCK TABLES `ivrprompts` WRITE;
/*!40000 ALTER TABLE `ivrprompts` DISABLE KEYS */;
INSERT INTO `ivrprompts` VALUES ('pinuser-entry','/persistent/var/lib/asterisk/sounds/record/pinuser-entry.WAV'),('default','/persistent/var/lib/asterisk/sounds/record/default.gsm'),('pinuser-error','/persistent/var/lib/asterisk/sounds/record/pinuser-error.WAV');
/*!40000 ALTER TABLE `ivrprompts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `lanmacs`
--

DROP TABLE IF EXISTS `lanmacs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `lanmacs` (
  `ISUSED` varchar(8) DEFAULT NULL,
  `MAC` varchar(16) DEFAULT NULL,
  `IPADDR` varchar(32) DEFAULT NULL,
  `PHONETYPE` varchar(16) DEFAULT NULL,
  `MANUFACTURER` varchar(16) NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `lanmacs`
--

LOCK TABLES `lanmacs` WRITE;
/*!40000 ALTER TABLE `lanmacs` DISABLE KEYS */;
INSERT INTO `lanmacs` VALUES ('0','0015651149db','192.168.254.65','','Yealink'),('0','001565f1e5d0','192.168.254.98','','Yealink'),('0','0015656850ed','192.168.254.99','','Yealink'),('0','0015652aa3fa','192.168.254.100','','Yealink'),('0','001565a45762','192.168.254.102','','Yealink'),('0','001565226789','192.168.254.106','','Yealink'),('0','0015654ade9a','192.168.254.109','','Yealink'),('0','0015659b58d1','192.168.254.110','','Yealink'),('0','0015655c5f04','192.168.254.113','','Yealink'),('0','0015651f8001','192.168.254.117','','Yealink'),('0','001565114921','192.168.254.120','','Yealink'),('0','0015656850f9','192.168.254.124','','Yealink'),('0','001565ae3ff7','192.168.254.125','','Yealink'),('0','0015657d1438','192.168.254.126','','Yealink'),('0','0015651149da','192.168.254.128','','Yealink'),('0','00156511492d','192.168.254.129','','Yealink'),('0','0015659b582d','192.168.254.133','','Yealink'),('0','00156584675a','192.168.254.135','','Yealink'),('0','00156584678b','192.168.254.136','','Yealink'),('0','0015651149a5','192.168.254.137','','Yealink'),('0','001565226a2b','192.168.254.139','','Yealink'),('0','0015652faa28','192.168.254.142','','Yealink'),('0','0015659b5899','192.168.254.143','','Yealink'),('0','00156551d7e1','192.168.254.156','','Yealink'),('0','0015654ae05a','192.168.254.163','','Yealink'),('0','001565f2d2c4','192.168.254.172','','Yealink'),('0','0015651dab34','192.168.254.173','','Yealink'),('0','001565226879','192.168.254.175','','Yealink'),('0','0015653de588','192.168.254.176','','Yealink'),('0','0015654e5e38','192.168.254.178','','Yealink'),('0','00156596e71b','192.168.254.182','','Yealink'),('0','0015653de6de','192.168.254.187','','Yealink'),('0','0015654c4dc6','192.168.254.194','','Yealink'),('0','00156548c651','192.168.254.195','','Yealink'),('0','00156584575d','192.168.254.215','VCS','Yealink');
/*!40000 ALTER TABLE `lanmacs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ldapcontacts`
--

DROP TABLE IF EXISTS `ldapcontacts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ldapcontacts` (
  `NICKNAME` varchar(64) DEFAULT NULL,
  `EMAIL` varchar(64) DEFAULT NULL,
  `DEPARTMENT` varchar(64) DEFAULT NULL,
  `FIRSTNAME` varchar(32) DEFAULT NULL,
  `LASTNAME` varchar(32) DEFAULT NULL,
  `TELEPHONE` varchar(32) DEFAULT NULL,
  `MOBILE` varchar(32) DEFAULT NULL,
  `HOMEPHONE` varchar(32) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ldapcontacts`
--

LOCK TABLES `ldapcontacts` WRITE;
/*!40000 ALTER TABLE `ldapcontacts` DISABLE KEYS */;
INSERT INTO `ldapcontacts` VALUES ('–°–≤–µ—Ç–∞','','','–°–≤–µ—Ç–ª–∞–Ω–∞ –°–≤–µ—Ç–ª–∞–Ω','','4562134','',''),('–ò–≤–∞–Ω','','','–ò–≤–∞–Ω–æ–≤ –ò–≤–∞–Ω','','12312312','',''),('–í–∞—Å—è','','','–í–∞—Å–∏–ª–∏–π –í–∞—Å–∏–ª—å–µ–≤','','12321312','',''),('–ü–µ—Ç—Ä','','','–ü–µ—Ç—Ä–æ–≤ –ü–µ—Ç—Ä –ü–µ—Ç—Ä','','234234','',''),('–°–∏–¥–æ—Ä','','','–°–∏–¥–æ—Ä –°–∏–¥–æ—Ä–æ–≤ –°–∏','','3425235','',''),('–¢–∞–Ω—è','','','–¢–∞–Ω—è –¢–∞–Ω—Ç—å—è–Ω–æ–≤–∞','','234523','',''),('–ù–∞—Å—Ç—è','','','–ê–Ω–∞—Å—Ç–∞—Å–∏—è –ê–Ω–∞—Å—Ç–∞','','7689','',''),('—Ç–µ—Å—Ç','','','—Ç–µ—Å—Ç','','457','',''),('—Ç–µ—Å—Ç2','','','—Ç–µ—Å—Ç2','','123465789','','');
/*!40000 ALTER TABLE `ldapcontacts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ldapserver`
--

DROP TABLE IF EXISTS `ldapserver`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ldapserver` (
  `ENABLE` varchar(8) DEFAULT NULL,
  `ROOTNODE` varchar(128) DEFAULT NULL,
  `PBXNODE` varchar(128) DEFAULT NULL,
  `LUSERNAME` varchar(128) DEFAULT NULL,
  `LPASSWORD` varchar(32) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ldapserver`
--

LOCK TABLES `ldapserver` WRITE;
/*!40000 ALTER TABLE `ldapserver` DISABLE KEYS */;
INSERT INTO `ldapserver` VALUES ('yes','dc=pbx,dc=com','ou=pbx,dc=pbx,dc=com','cn=admin,dc=pbx,dc=com','password');
/*!40000 ALTER TABLE `ldapserver` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `loginmanage`
--

DROP TABLE IF EXISTS `loginmanage`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `loginmanage` (
  `REMOTEIP` varchar(64) DEFAULT NULL,
  `TRYTIMES` varchar(8) DEFAULT NULL,
  `DATE` varchar(32) DEFAULT NULL,
  `STATE` varchar(8) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `loginmanage`
--

LOCK TABLES `loginmanage` WRITE;
/*!40000 ALTER TABLE `loginmanage` DISABLE KEYS */;
INSERT INTO `loginmanage` VALUES ('192.168.5.110','0','2016-12-19 06:28:47','0'),('192.168.254.162','0','2017-08-30 16:20:57','0'),('192.168.254.171','0','2017-08-24 11:32:53','0'),('192.168.254.76','0','2017-09-01 10:25:17','0'),('192.168.254.140','0','2017-03-14 00:16:40','0'),('192.168.254.170','0','2017-01-26 04:41:08','0'),('192.168.254.115','0','2017-03-08 23:45:39','0'),('192.168.254.111','0','2017-05-12 04:07:16','0'),('192.168.88.66','0','2017-06-01 05:07:03','0'),('192.168.254.199','0','2017-08-25 14:35:28','0');
/*!40000 ALTER TABLE `loginmanage` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `manageautorecord`
--

DROP TABLE IF EXISTS `manageautorecord`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `manageautorecord` (
  `user` varchar(32) NOT NULL,
  `deletelimits` varchar(8) DEFAULT NULL,
  `downloadlimits` varchar(8) DEFAULT NULL,
  `allowextensions` text,
  `viewnumbers` varchar(8) DEFAULT NULL,
  `viewautorecords` varchar(16) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `manageautorecord`
--

LOCK TABLES `manageautorecord` WRITE;
/*!40000 ALTER TABLE `manageautorecord` DISABLE KEYS */;
/*!40000 ALTER TABLE `manageautorecord` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `moh_usbsound`
--

DROP TABLE IF EXISTS `moh_usbsound`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `moh_usbsound` (
  `MUSICNAME` varchar(64) DEFAULT NULL,
  `VOLUME` varchar(8) DEFAULT NULL,
  `PATH` varchar(255) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `moh_usbsound`
--

LOCK TABLES `moh_usbsound` WRITE;
/*!40000 ALTER TABLE `moh_usbsound` DISABLE KEYS */;
/*!40000 ALTER TABLE `moh_usbsound` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `musicprompts`
--

DROP TABLE IF EXISTS `musicprompts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `musicprompts` (
  `NAME` varchar(32) DEFAULT NULL,
  `DIRECTORY` varchar(255) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `musicprompts`
--

LOCK TABLES `musicprompts` WRITE;
/*!40000 ALTER TABLE `musicprompts` DISABLE KEYS */;
INSERT INTO `musicprompts` VALUES ('worldmix','/persistent/var/lib/asterisk/sounds/moh/worldmix/worldmix.gsm'),('calmriver','/persistent/var/lib/asterisk/sounds/moh/calmriver/calmriver.gsm'),('sunshine','/persistent/var/lib/asterisk/sounds/moh/sunshine/sunshine.gsm');
/*!40000 ALTER TABLE `musicprompts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `neogatep_confied`
--

DROP TABLE IF EXISTS `neogatep_confied`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `neogatep_confied` (
  `macaddr` varchar(12) NOT NULL,
  `extens` varchar(164) DEFAULT NULL,
  `label` varchar(128) DEFAULT NULL,
  `confied` varchar(1) NOT NULL COMMENT '1:‰∏∫configured 0:unconfigured'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `neogatep_confied`
--

LOCK TABLES `neogatep_confied` WRITE;
/*!40000 ALTER TABLE `neogatep_confied` DISABLE KEYS */;
INSERT INTO `neogatep_confied` VALUES ('f4b549f00565','5049-5048','ta800name','1'),('f4b549f02029','','','1');
/*!40000 ALTER TABLE `neogatep_confied` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `neogatep_tainfo`
--

DROP TABLE IF EXISTS `neogatep_tainfo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `neogatep_tainfo` (
  `ipaddr` varchar(16) NOT NULL,
  `macaddr` varchar(16) NOT NULL,
  `tatype` varchar(32) NOT NULL,
  `osver` varchar(32) NOT NULL,
  `sn` varchar(30) NOT NULL COMMENT 'Áîü‰∫ßÊâπÊ¨°Âè∑ ',
  `confied` varchar(30) NOT NULL,
  `extens` varchar(164) DEFAULT NULL,
  `label` varchar(128) DEFAULT NULL,
  `extfld` varchar(30) DEFAULT NULL,
  KEY `macaddr` (`macaddr`) USING HASH
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `neogatep_tainfo`
--

LOCK TABLES `neogatep_tainfo` WRITE;
/*!40000 ALTER TABLE `neogatep_tainfo` DISABLE KEYS */;
INSERT INTO `neogatep_tainfo` VALUES ('192.168.254.79','f4b549f05a7e','TA3200','40.19.12.30','N82454842292','0','','','get'),('192.168.254.248','f4b549f02029','TA1610','40.19.12.17','A32015240418','1','','','get');
/*!40000 ALTER TABLE `neogatep_tainfo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `networkdisk`
--

DROP TABLE IF EXISTS `networkdisk`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `networkdisk` (
  `smbshareenable` varchar(8) DEFAULT 'no',
  `smbsharehost` varchar(64) DEFAULT NULL,
  `smbsharename` varchar(64) DEFAULT NULL,
  `smbshareuser` varchar(64) DEFAULT NULL,
  `smbsharepass` blob
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `networkdisk`
--

LOCK TABLES `networkdisk` WRITE;
/*!40000 ALTER TABLE `networkdisk` DISABLE KEYS */;
INSERT INTO `networkdisk` VALUES ('no','','','','');
/*!40000 ALTER TABLE `networkdisk` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `networksettings`
--

DROP TABLE IF EXISTS `networksettings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `networksettings` (
  `DHCPD` varchar(8) DEFAULT NULL,
  `HOSTNAME` varchar(64) DEFAULT NULL,
  `IPADDRESS` varchar(64) DEFAULT NULL,
  `NETMASK` varchar(64) DEFAULT NULL,
  `GATEWAY` varchar(64) DEFAULT NULL,
  `DNS1` varchar(64) DEFAULT NULL,
  `DNS2` varchar(64) DEFAULT NULL,
  `ENABLESSH` varchar(8) DEFAULT NULL,
  `SSHPORT` varchar(8) DEFAULT NULL,
  `IPADDRESS2` varchar(64) DEFAULT NULL,
  `NETMASK2` varchar(64) DEFAULT NULL,
  `EnableFtp` varchar(8) DEFAULT NULL,
  `FTPPort` varchar(8) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `networksettings`
--

LOCK TABLES `networksettings` WRITE;
/*!40000 ALTER TABLE `networksettings` DISABLE KEYS */;
INSERT INTO `networksettings` VALUES ('0','MyPBX','192.168.254.32','255.255.255.0','192.168.254.254','192.168.254.3','192.168.254.4','1','8022','','','1','21');
/*!40000 ALTER TABLE `networksettings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `options`
--

DROP TABLE IF EXISTS `options`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `options` (
  `RINGTIMEOUT` varchar(8) DEFAULT NULL,
  `MAXDURATION` varchar(8) DEFAULT NULL,
  `MUSICONHOLD` varchar(32) DEFAULT NULL,
  `TONEREGION` varchar(8) DEFAULT NULL,
  `PORT` varchar(8) DEFAULT NULL,
  `USEREXTEN` varchar(32) DEFAULT NULL,
  `RINGGROUPEXTEN` varchar(32) DEFAULT NULL,
  `PAGINGEXTEN` varchar(32) DEFAULT NULL,
  `CONFERENCEEXTEN` varchar(32) DEFAULT NULL,
  `IVREXTEN` varchar(32) DEFAULT NULL,
  `QUEUESCOPE` varchar(16) DEFAULT NULL,
  `OPERMODE` varchar(32) DEFAULT NULL,
  `FOLLOWMEPROMPT` varchar(8) DEFAULT NULL,
  `MAXCALLS` varchar(8) DEFAULT NULL,
  `GSMRINGTONE` varchar(8) DEFAULT NULL,
  `SIPTRUNKBUSY` varchar(32) DEFAULT NULL,
  `SIPTRUNKUNVAIL` varchar(32) DEFAULT NULL,
  `SIPTRUNKCONGESTION` varchar(32) DEFAULT NULL,
  `FOLLOWMEPROMPTTONE` varchar(8) NOT NULL DEFAULT '0',
  `CDRENABLE` varchar(8) NOT NULL DEFAULT 'no',
  `httpenable` varchar(8) DEFAULT '1',
  `httpsenable` varchar(8) DEFAULT '0',
  `httpsport` varchar(8) DEFAULT '443',
  `dspfax` varchar(8) DEFAULT 'yes',
  `ecan` varchar(32) DEFAULT 'oslec',
  `echotraining` varchar(8) DEFAULT '',
  `minplusetime` varchar(8) DEFAULT '15',
  `maxplusetime` varchar(8) DEFAULT '80'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `options`
--

LOCK TABLES `options` WRITE;
/*!40000 ALTER TABLE `options` DISABLE KEYS */;
INSERT INTO `options` VALUES ('30','6000','calmriver','ru','80','5000-5300','00-99','630-639','640-659','660-679','680-689','RUSSIA','1','0','0','','','','0','no','1','0','443','yes','aer','','15','80');
/*!40000 ALTER TABLE `options` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `others`
--

DROP TABLE IF EXISTS `others`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `others` (
  `FILE` varchar(256) DEFAULT NULL,
  `CONTEXT` text,
  `EXTEN` text
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `others`
--

LOCK TABLES `others` WRITE;
/*!40000 ALTER TABLE `others` DISABLE KEYS */;
/*!40000 ALTER TABLE `others` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `outrouters`
--

DROP TABLE IF EXISTS `outrouters`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `outrouters` (
  `POS` varchar(8) DEFAULT NULL,
  `NAME` varchar(32) DEFAULT NULL,
  `PREFIXINFO` varchar(32) DEFAULT NULL,
  `STRIP` varchar(8) DEFAULT NULL,
  `PREDIGITS` varchar(32) DEFAULT NULL,
  `EXTENINFO` text,
  `TRUNKINFO` text,
  `PASS` blob,
  `PINUSER` varchar(32) DEFAULT NULL,
  `T38SUPPORT` varchar(8) DEFAULT NULL,
  `ADJUSTTRUNK` varchar(8) DEFAULT NULL,
  `OFFICETIME` varchar(32) NOT NULL DEFAULT '',
  `dialpatterns` varchar(2048) DEFAULT NULL,
  `pinset` varchar(64) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `outrouters`
--

LOCK TABLES `outrouters` WRITE;
/*!40000 ALTER TABLE `outrouters` DISABLE KEYS */;
INSERT INTO `outrouters` VALUES ('1','TO_TRUNK_225','','','','5000(SIP)-5001(SIP)','toS50_225(SPS)-Lync2015_41(SPS)-testIAX(SPX)','-‹ã\’\¬x!Ä{;pbÖ+	µ','','0','0','','X.<<^8.<1<7','');
/*!40000 ALTER TABLE `outrouters` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `paging_audioout`
--

DROP TABLE IF EXISTS `paging_audioout`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `paging_audioout` (
  `PAGINGNUM` varchar(8) DEFAULT NULL,
  `VOLUME` varchar(8) DEFAULT NULL,
  `PERMISSIONS` text
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `paging_audioout`
--

LOCK TABLES `paging_audioout` WRITE;
/*!40000 ALTER TABLE `paging_audioout` DISABLE KEYS */;
/*!40000 ALTER TABLE `paging_audioout` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pagintercom`
--

DROP TABLE IF EXISTS `pagintercom`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pagintercom` (
  `NUMBER` varchar(8) DEFAULT NULL,
  `DUPLEX` varchar(8) DEFAULT NULL,
  `ALLOWEXTEN` text,
  `answer` varchar(8) DEFAULT 'no'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pagintercom`
--

LOCK TABLES `pagintercom` WRITE;
/*!40000 ALTER TABLE `pagintercom` DISABLE KEYS */;
INSERT INTO `pagintercom` VALUES ('630','','5000(SIP)-5001(SIP)-5002(SIP)-5003(SIP)-5004(SIP)-5005(SIP)-5006(SIP)-5007(SIP)-5008(SIP)-5009(SIP)-5010(SIP)-5011(SIP)-5012(SIP)-5013(SIP)-5014(SIP)-5015(SIP)-5016(SIP)-5017(SIP)-5018(SIP)-5019(SIP)-5020(SIP)-5021(SIP)-5022(SIP)-5023(SIP)-5024(SIP)-5025(SIP)-5026(SIP)-5027(SIP)-5028(SIP)-5029(SIP)-5030(SIP)-5031(SIP)-5032(SIP)-5033(SIP)-5034(SIP)-5035(SIP)-5036(SIP)-5037(SIP)-5038(SIP)-5039(SIP)-5040(SIP)-5041(SIP)-5042(SIP)-5043(SIP)-5044(SIP)-5045(SIP)-5046(SIP)-5047(SIP)-5048(SIP)-5049(SIP)','no');
/*!40000 ALTER TABLE `pagintercom` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `paraminfos`
--

DROP TABLE IF EXISTS `paraminfos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `paraminfos` (
  `NAME` varchar(128) DEFAULT NULL,
  `INFO` varchar(128) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `paraminfos`
--

LOCK TABLES `paraminfos` WRITE;
/*!40000 ALTER TABLE `paraminfos` DISABLE KEYS */;
INSERT INTO `paraminfos` VALUES ('DefaultExten','100-105'),('FirmwareUpdate','1'),('EnableOfficeClosed','*81'),('DisableOfficeClosed','*081'),('version','1035'),('GnRouterId','0'),('EnableOfficeTime','*82'),('tftpboot','1'),('LocalLang','ru'),('HolidayUpdateOK','1'),('fxs13-callertype','1'),('fxs15-callertype','1'),('fxs16-callertype','1'),('AutopUploadCFG2DBOK','1'),('DistinctiveCallerID','0'),('TransferIncoming','0'),('fxs7-callertype','1'),('DownLandLang','en'),('fxs1-callertype','1'),('fxs9-callertype','1');
/*!40000 ALTER TABLE `paraminfos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pbx_limit`
--

DROP TABLE IF EXISTS `pbx_limit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pbx_limit` (
  `ITEM` varchar(128) NOT NULL COMMENT 'ËÆæÁΩÆÈ°π ',
  `MAXCOUNT` varchar(32) NOT NULL COMMENT 'ÊúÄÂ§ßÊï∞ÁõÆ ',
  `EXTFLD` varchar(128) DEFAULT NULL COMMENT 'È¢ÑÁïôÂüü',
  KEY `ITEM` (`ITEM`) USING HASH
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pbx_limit`
--

LOCK TABLES `pbx_limit` WRITE;
/*!40000 ALTER TABLE `pbx_limit` DISABLE KEYS */;
/*!40000 ALTER TABLE `pbx_limit` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pinset`
--

DROP TABLE IF EXISTS `pinset`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pinset` (
  `name` varchar(64) DEFAULT NULL,
  `recordincdr` varchar(8) DEFAULT NULL,
  `pinlist` varchar(5120) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pinset`
--

LOCK TABLES `pinset` WRITE;
/*!40000 ALTER TABLE `pinset` DISABLE KEYS */;
/*!40000 ALTER TABLE `pinset` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pinuseroption`
--

DROP TABLE IF EXISTS `pinuseroption`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pinuseroption` (
  `ENTRYCODE` varchar(16) DEFAULT NULL,
  `ENTRYPROMPT` varchar(32) DEFAULT NULL,
  `FAILUREPROMPT` varchar(32) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pinuseroption`
--

LOCK TABLES `pinuseroption` WRITE;
/*!40000 ALTER TABLE `pinuseroption` DISABLE KEYS */;
INSERT INTO `pinuseroption` VALUES ('*89','pinuser-entry','pinuser-error');
/*!40000 ALTER TABLE `pinuseroption` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pinusers`
--

DROP TABLE IF EXISTS `pinusers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pinusers` (
  `NAME` varchar(32) DEFAULT NULL,
  `PINS` varchar(512) DEFAULT NULL,
  `ALLOWROUTERS` text,
  `pinset` varchar(64) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pinusers`
--

LOCK TABLES `pinusers` WRITE;
/*!40000 ALTER TABLE `pinusers` DISABLE KEYS */;
/*!40000 ALTER TABLE `pinusers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `portmappings`
--

DROP TABLE IF EXISTS `portmappings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `portmappings` (
  `ID` varchar(8) DEFAULT NULL,
  `SOURCEPORT` varchar(16) DEFAULT NULL,
  `DESTIP` varchar(64) DEFAULT NULL,
  `PROTOCOL` varchar(8) DEFAULT NULL,
  `DESTPORT` varchar(16) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `portmappings`
--

LOCK TABLES `portmappings` WRITE;
/*!40000 ALTER TABLE `portmappings` DISABLE KEYS */;
/*!40000 ALTER TABLE `portmappings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pwdsettings`
--

DROP TABLE IF EXISTS `pwdsettings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pwdsettings` (
  `name` varchar(32) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `PASSWORD` varchar(64) DEFAULT NULL,
  `ENABLE` varchar(8) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pwdsettings`
--

LOCK TABLES `pwdsettings` WRITE;
/*!40000 ALTER TABLE `pwdsettings` DISABLE KEYS */;
INSERT INTO `pwdsettings` VALUES ('admin','5ffc21fad6525570906a784861973919','1'),('monitor','5f4dcc3b5aa765d61d8327deb882cf99','1'),('user','5f4dcc3b5aa765d61d8327deb882cf99','0'),('hotel','5f4dcc3b5aa765d61d8327deb882cf99','1'),('cdr','5f4dcc3b5aa765d61d8327deb882cf99','0');
/*!40000 ALTER TABLE `pwdsettings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `queues`
--

DROP TABLE IF EXISTS `queues`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `queues` (
  `NAME` varchar(32) DEFAULT NULL,
  `NUMBER` varchar(8) DEFAULT NULL,
  `PASS` blob,
  `AGENTTIMEOUT` varchar(8) DEFAULT NULL,
  `MAXWAITTIME` varchar(8) DEFAULT NULL,
  `RINGSTRATEGY` varchar(16) DEFAULT NULL,
  `AGENTS` text,
  `ANNOUNCEPOS` varchar(8) DEFAULT NULL,
  `ANNOUNCEHOLDTIME` varchar(8) DEFAULT NULL,
  `ANNOUNCEFREQ` varchar(8) DEFAULT NULL,
  `USERANNOUNCE` varchar(32) DEFAULT NULL,
  `USERANNOUNCEFREQ` varchar(8) DEFAULT NULL,
  `BREAKOUTKEY` varchar(8) DEFAULT NULL,
  `BREAKOUTACTION` varchar(8) DEFAULT NULL,
  `BREAKOUTDEST` varchar(32) DEFAULT NULL,
  `FAILOVERACTION` varchar(8) DEFAULT NULL,
  `FAILOVERDEST` varchar(32) DEFAULT NULL,
  `MUSICONHOLD` varchar(32) DEFAULT NULL,
  `LEAVEWHENEMPTY` varchar(8) DEFAULT NULL,
  `JOINEMPTY` varchar(8) DEFAULT NULL,
  `AGENTANNOUNCE` varchar(32) DEFAULT NULL,
  `JOINANNOUNCE` varchar(32) DEFAULT NULL,
  `RETRY` varchar(8) DEFAULT NULL,
  `WRAPUPTIME` varchar(8) DEFAULT NULL,
  `ringinuse` varchar(8) NOT NULL DEFAULT 'yes'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `queues`
--

LOCK TABLES `queues` WRITE;
/*!40000 ALTER TABLE `queues` DISABLE KEYS */;
INSERT INTO `queues` VALUES ('680test','680','-‹ã\’\¬x!Ä{;pbÖ+	µ','30','1800','ringall','','yes','yes','120','','','','','','7','','calmriver','no','yes','','','60','60','yes');
/*!40000 ALTER TABLE `queues` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ringgroups`
--

DROP TABLE IF EXISTS `ringgroups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ringgroups` (
  `GROUPNAME` varchar(32) DEFAULT NULL,
  `GROUPNUM` varchar(8) DEFAULT NULL,
  `RINGTYPE` varchar(16) DEFAULT NULL,
  `TIMEOUT` varchar(8) DEFAULT NULL,
  `GROUPEXTEN` text,
  `NOANSWERTO` varchar(8) DEFAULT NULL,
  `DEST` varchar(32) DEFAULT NULL,
  `musiconhold` varchar(64) DEFAULT NULL,
  `userannounce` varchar(64) DEFAULT NULL,
  `userannouncefreq` varchar(8) DEFAULT '15',
  `enablemobile` varchar(8) NOT NULL DEFAULT 'no'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ringgroups`
--

LOCK TABLES `ringgroups` WRITE;
/*!40000 ALTER TABLE `ringgroups` DISABLE KEYS */;
INSERT INTO `ringgroups` VALUES ('ringgroup_default','620','ringall','60','','0','undefined','','','',''),('0','0','ringall','60','','0','undefined','','','','no');
/*!40000 ALTER TABLE `ringgroups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `routersettings`
--

DROP TABLE IF EXISTS `routersettings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `routersettings` (
  `ENABLEROUTER` varchar(8) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `routersettings`
--

LOCK TABLES `routersettings` WRITE;
/*!40000 ALTER TABLE `routersettings` DISABLE KEYS */;
INSERT INTO `routersettings` VALUES ('off');
/*!40000 ALTER TABLE `routersettings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `serviceprovider`
--

DROP TABLE IF EXISTS `serviceprovider`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `serviceprovider` (
  `TYPE` varchar(8) DEFAULT NULL,
  `TRUNKNAME` varchar(32) DEFAULT NULL,
  `HOST` varchar(128) DEFAULT NULL,
  `PORT` varchar(8) DEFAULT NULL,
  `ALLOW` varchar(64) DEFAULT NULL,
  `DOD` varchar(32) DEFAULT NULL,
  `EXTEN` varchar(32) DEFAULT NULL,
  `CALLLIMIT` varchar(8) DEFAULT NULL,
  `TRANSPORT` varchar(8) DEFAULT NULL,
  `GLOBALDOD` varchar(32) DEFAULT NULL,
  `DTMFMODE` varchar(16) NOT NULL DEFAULT 'rfc2833',
  `QUALIFY` varchar(8) NOT NULL DEFAULT 'on',
  `ISENABLE` varchar(8) DEFAULT '1',
  `FROMDOMAIN` varchar(128) DEFAULT NULL,
  `keepalivemethod` varchar(16) DEFAULT 'options',
  `keepaliveinterval` varchar(16) DEFAULT '30'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `serviceprovider`
--

LOCK TABLES `serviceprovider` WRITE;
/*!40000 ALTER TABLE `serviceprovider` DISABLE KEYS */;
INSERT INTO `serviceprovider` VALUES ('SPS','testS50','192.168.254.235','5060','alaw,ulaw,none,none,none','','','0','udp','123465798','rfc2833','on','1','192.168.254.235','disabled','30'),('SPS','testS50','192.168.254.235','5060','alaw,ulaw,none,none,none','','','0','udp','123465798','rfc2833','on','1','192.168.254.235','disabled','30'),('SPX','testIAXS0','192.168.254.225','4569','alaw,ulaw,gsm,none,none','','','0','udp','','rfc2833','on','1','192.168.254.225','options','30'),('SPS','toS50_225','192.168.254.225','5060','alaw,ulaw,gsm,none,none','','','0','udp','74950000000','rfc2833','on','1','192.168.254.225','options','30'),('SPS','Lync2015_41','192.168.254.41','5060','alaw,ulaw,gsm,none,none','','','0','tcp','','rfc2833','on','1','ipm.demo','options','30'),('SPX','testIAX','192.168.254.32','4569','alaw,ulaw,gsm,none,none','','','0','udp','111111','rfc2833','on','1','192.168.254.32','options','30');
/*!40000 ALTER TABLE `serviceprovider` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sipsettings`
--

DROP TABLE IF EXISTS `sipsettings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sipsettings` (
  `UDPPORT` varchar(8) DEFAULT NULL,
  `RTPPORTSTART` varchar(8) DEFAULT NULL,
  `RTPPORTEND` varchar(8) DEFAULT NULL,
  `DTMFMODE` varchar(16) DEFAULT NULL,
  `MAXREGTIME` varchar(8) DEFAULT NULL,
  `MINREGTIME` varchar(8) DEFAULT NULL,
  `DEFAULTREGTIME` varchar(8) DEFAULT NULL,
  `REGATTEMPTS` varchar(8) DEFAULT NULL,
  `REGTIMEOUT` varchar(8) DEFAULT NULL,
  `VIDEOSUPPORT` varchar(8) DEFAULT NULL,
  `EXTERNIP` varchar(64) DEFAULT NULL,
  `EXTERNHOST` varchar(64) DEFAULT NULL,
  `EXTERNREFRESH` varchar(8) DEFAULT NULL,
  `LOCALNETADD` varchar(128) DEFAULT NULL,
  `NATMODE` varchar(8) DEFAULT NULL,
  `CANREINVITE` varchar(8) DEFAULT NULL,
  `ALLOW` varchar(255) DEFAULT NULL,
  `G729KEY` varchar(128) DEFAULT NULL,
  `ENABLEUDP` varchar(8) DEFAULT NULL,
  `ENABLETCP` varchar(8) DEFAULT NULL,
  `TCPPORT` varchar(8) DEFAULT NULL,
  `ENABLETLS` varchar(8) DEFAULT NULL,
  `TLSPORT` varchar(8) DEFAULT NULL,
  `USESTUN` varchar(8) DEFAULT NULL,
  `STUNADDR` varchar(64) DEFAULT NULL,
  `STUNPORT` varchar(8) DEFAULT NULL,
  `TOSSIP` varchar(8) DEFAULT NULL,
  `TOSAUDIO` varchar(8) DEFAULT NULL,
  `TOSVIDEO` varchar(8) DEFAULT NULL,
  `TOSTEXT` varchar(8) DEFAULT NULL,
  `COSSIP` varchar(8) DEFAULT NULL,
  `COSAUDIO` varchar(8) DEFAULT NULL,
  `COSVIDEO` varchar(8) DEFAULT NULL,
  `COSTEXT` varchar(8) DEFAULT NULL,
  `ENABLESRTP` varchar(8) DEFAULT NULL,
  `GETFROM` varchar(16) DEFAULT NULL,
  `GETTO` varchar(16) DEFAULT NULL,
  `SENDOPTION` varchar(16) DEFAULT NULL,
  `SENDRINGING` varchar(8) DEFAULT NULL,
  `SENDRPID` varchar(8) DEFAULT NULL,
  `TRUSTRPID` varchar(8) DEFAULT NULL,
  `USERAGENT` varchar(32) DEFAULT NULL,
  `SRVLOOKUP` varchar(8) DEFAULT NULL,
  `MAXBITRATE` varchar(8) NOT NULL DEFAULT '384',
  `STMODE` varchar(16) NOT NULL DEFAULT 'accept',
  `STEXPIRES` varchar(8) NOT NULL DEFAULT '1800',
  `STMINSE` varchar(8) NOT NULL DEFAULT '90',
  `STREFRESHER` varchar(8) NOT NULL DEFAULT 'uas',
  `CALLINGCODECPRIORITY` varchar(8) NOT NULL DEFAULT 'yes',
  `ALLOWGUEST` varchar(8) NOT NULL DEFAULT 'no',
  `PEDANTIC` varchar(8) NOT NULL DEFAULT 'no',
  `ALWAYSAUTHREJECT` varchar(8) NOT NULL DEFAULT 'yes',
  `TLSDONTVERIFYSERVER` varchar(8) NOT NULL DEFAULT 'yes',
  `TLSVERIFYCLIENT` varchar(8) NOT NULL DEFAULT 'no',
  `TLSIGNORECOMNAME` varchar(8) NOT NULL DEFAULT 'yes',
  `TLSCLIENTMETHOD` varchar(8) NOT NULL DEFAULT 'sslv2',
  `forceoption200` varchar(8) NOT NULL DEFAULT 'no',
  `privacyid` varchar(8) DEFAULT 'off',
  `diversionid` varchar(8) DEFAULT 'off'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sipsettings`
--

LOCK TABLES `sipsettings` WRITE;
/*!40000 ALTER TABLE `sipsettings` DISABLE KEYS */;
INSERT INTO `sipsettings` VALUES ('5060','10000','12000','rfc2833','3600','60','120','0','20','yes','','','','','no','no','ulaw-alaw','','on','off','5060','off','5061','off','','','cs3','ef','af41','','3','5','4','','1','from','invite','on','off','on','on','','no','384','refuse','1800','90','uas','yes','no','no','yes','yes','no','yes','sslv2','no','on','on');
/*!40000 ALTER TABLE `sipsettings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `smbsettings`
--

DROP TABLE IF EXISTS `smbsettings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `smbsettings` (
  `FLAG` varchar(16) DEFAULT NULL,
  `SHARENAME` varchar(64) DEFAULT NULL,
  `COMMENT` varchar(64) DEFAULT NULL,
  `PATH` varchar(255) DEFAULT NULL,
  `SHAREABLE` varchar(8) DEFAULT NULL,
  `WRITEABLE` varchar(8) DEFAULT NULL,
  `VAILDUSER` varchar(512) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `smbsettings`
--

LOCK TABLES `smbsettings` WRITE;
/*!40000 ALTER TABLE `smbsettings` DISABLE KEYS */;
INSERT INTO `smbsettings` VALUES ('autorecords','MyPBXtets','','','yes','yes','admin');
/*!40000 ALTER TABLE `smbsettings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `smbusers`
--

DROP TABLE IF EXISTS `smbusers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `smbusers` (
  `FLAG` varchar(16) DEFAULT NULL,
  `USERNAME` varchar(64) DEFAULT NULL,
  `PASSWORD` blob
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `smbusers`
--

LOCK TABLES `smbusers` WRITE;
/*!40000 ALTER TABLE `smbusers` DISABLE KEYS */;
INSERT INTO `smbusers` VALUES ('autorecords','admin','password');
/*!40000 ALTER TABLE `smbusers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `smsclear`
--

DROP TABLE IF EXISTS `smsclear`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `smsclear` (
  `type` varchar(8) NOT NULL,
  `enable` varchar(8) DEFAULT NULL,
  `clearmode` varchar(8) DEFAULT NULL,
  `cleardate` varchar(32) DEFAULT NULL,
  `clearcondition` varchar(128) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `smsclear`
--

LOCK TABLES `smsclear` WRITE;
/*!40000 ALTER TABLE `smsclear` DISABLE KEYS */;
INSERT INTO `smsclear` VALUES ('1','no','0','',''),('2','no','0','','');
/*!40000 ALTER TABLE `smsclear` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `smscontacts`
--

DROP TABLE IF EXISTS `smscontacts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `smscontacts` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `groupname` varchar(32) DEFAULT NULL,
  `dest` varchar(32) DEFAULT NULL,
  `name` varchar(64) DEFAULT NULL,
  `mobile` varchar(64) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `smscontacts`
--

LOCK TABLES `smscontacts` WRITE;
/*!40000 ALTER TABLE `smscontacts` DISABLE KEYS */;
/*!40000 ALTER TABLE `smscontacts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `smsrecv`
--

DROP TABLE IF EXISTS `smsrecv`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `smsrecv` (
  `id` varchar(64) NOT NULL,
  `sender` varchar(64) DEFAULT NULL,
  `smsc` varchar(64) DEFAULT NULL,
  `portid` varchar(8) DEFAULT NULL,
  `content` varchar(4096) DEFAULT NULL,
  `recvtime` varchar(64) DEFAULT NULL,
  `hasread` varchar(8) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `smsrecv`
--

LOCK TABLES `smsrecv` WRITE;
/*!40000 ALTER TABLE `smsrecv` DISABLE KEYS */;
INSERT INTO `smsrecv` VALUES ('14894780253631770014','+79653131253','+79037011111','3','Ôªø–¢–µ—Å—Ç ','2017-03-14 10:51:39','No'),('148948006931075955651','+79653131253','+79037011111','3','Ôªø–¢–µ—Å—Ç ','2017-03-14 11:25:44','No'),('149055564232071390025','Tiu.ru','+79037011111','3','Ôªø–ö–æ–¥ –ø–æ–¥—Ç–≤–µ—Ä–∂–¥–µ–Ω–∏—è: 1638','2017-03-26 22:12:23','Yes'),('149060389132102918728','Tiu.ru','+79037011111','3','Ôªø–ö–æ–¥ –ø–æ–¥—Ç–≤–µ—Ä–∂–¥–µ–Ω–∏—è: 8180','2017-03-27 11:36:34','Yes');
/*!40000 ALTER TABLE `smsrecv` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `smssend`
--

DROP TABLE IF EXISTS `smssend`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `smssend` (
  `id` varchar(64) NOT NULL,
  `destination` varchar(64) DEFAULT NULL,
  `smsc` varchar(64) DEFAULT NULL,
  `portid` varchar(8) DEFAULT NULL,
  `status` varchar(8) DEFAULT '-1',
  `content` varchar(4096) DEFAULT NULL,
  `sendtime` varchar(64) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `smssend`
--

LOCK TABLES `smssend` WRITE;
/*!40000 ALTER TABLE `smssend` DISABLE KEYS */;
/*!40000 ALTER TABLE `smssend` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `smssettings`
--

DROP TABLE IF EXISTS `smssettings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `smssettings` (
  `SMSTOEMAIL` varchar(8) DEFAULT NULL,
  `EMAILTOSMS` varchar(8) DEFAULT NULL,
  `EMAILADDR` varchar(64) DEFAULT NULL,
  `PASSWORD` blob,
  `SMTPSERVER` varchar(64) DEFAULT NULL,
  `SMTPPORT` varchar(8) DEFAULT NULL,
  `POP3SERVER` varchar(64) DEFAULT NULL,
  `POP3PORT` varchar(8) DEFAULT NULL,
  `POP3INTERVAL` varchar(8) DEFAULT NULL,
  `USESSL` varchar(8) DEFAULT NULL,
  `DELETEMAIL` varchar(8) DEFAULT NULL,
  `ENABLECOUNTRYCODE` varchar(8) DEFAULT NULL,
  `COUNTRYCODE` varchar(8) DEFAULT NULL,
  `PINCODE` varchar(32) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `smssettings`
--

LOCK TABLES `smssettings` WRITE;
/*!40000 ALTER TABLE `smssettings` DISABLE KEYS */;
INSERT INTO `smssettings` VALUES ('off','off','vses.93@mail.ru','\Â˚ö±\ƒC¢ãmªì?','smtp.mail.ru','25','pop.mail.ru','110','60','on','on','off','','');
/*!40000 ALTER TABLE `smssettings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `smstoemails`
--

DROP TABLE IF EXISTS `smstoemails`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `smstoemails` (
  `ENABLE` varchar(8) DEFAULT NULL,
  `TRUNKNAME` varchar(32) DEFAULT NULL,
  `CHANNELID` varchar(8) DEFAULT NULL,
  `PORTID` varchar(8) DEFAULT NULL,
  `EMAILLIST` varchar(512) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `smstoemails`
--

LOCK TABLES `smstoemails` WRITE;
/*!40000 ALTER TABLE `smstoemails` DISABLE KEYS */;
INSERT INTO `smstoemails` VALUES ('yes','SMSPORT3','65','3','vses.93@mail.ru');
/*!40000 ALTER TABLE `smstoemails` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `snmpbasic`
--

DROP TABLE IF EXISTS `snmpbasic`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `snmpbasic` (
  `enable` text,
  `sendport` text,
  `receiveport` text,
  `v3user` text,
  `authpasswd` text,
  `encryptionpasswd` text,
  `access` text,
  `mode` text,
  `enableautherror` text,
  `servercommunity` text,
  `targetip` text,
  `targetport` text,
  `localcommunity` text,
  `ip` text,
  `mask` text,
  `communitymode` text,
  `communityread` text,
  `communitywrite` text
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `snmpbasic`
--

LOCK TABLES `snmpbasic` WRITE;
/*!40000 ALTER TABLE `snmpbasic` DISABLE KEYS */;
INSERT INTO `snmpbasic` VALUES ('off','162','161','','','','','v2t','1','public','','162','','','','v2c','true','');
/*!40000 ALTER TABLE `snmpbasic` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `speeddiallist`
--

DROP TABLE IF EXISTS `speeddiallist`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `speeddiallist` (
  `SOURCENUM` varchar(16) DEFAULT NULL,
  `DESTNUM` varchar(32) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `speeddiallist`
--

LOCK TABLES `speeddiallist` WRITE;
/*!40000 ALTER TABLE `speeddiallist` DISABLE KEYS */;
/*!40000 ALTER TABLE `speeddiallist` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `speeddialsettings`
--

DROP TABLE IF EXISTS `speeddialsettings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `speeddialsettings` (
  `ENTRYCODE` varchar(8) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `speeddialsettings`
--

LOCK TABLES `speeddialsettings` WRITE;
/*!40000 ALTER TABLE `speeddialsettings` DISABLE KEYS */;
INSERT INTO `speeddialsettings` VALUES ('*99');
/*!40000 ALTER TABLE `speeddialsettings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `staticroute`
--

DROP TABLE IF EXISTS `staticroute`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `staticroute` (
  `DESTINATION` varchar(64) DEFAULT NULL,
  `SUBNET` varchar(64) DEFAULT NULL,
  `GATEWAY` varchar(64) DEFAULT NULL,
  `METRIC` varchar(8) DEFAULT NULL,
  `IFACE` varchar(16) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `staticroute`
--

LOCK TABLES `staticroute` WRITE;
/*!40000 ALTER TABLE `staticroute` DISABLE KEYS */;
INSERT INTO `staticroute` VALUES ('10.11.12.0','255.255.255.0','','','WAN'),('0.0.0.0','0.0.0.0','192.168.254.254','0','LAN');
/*!40000 ALTER TABLE `staticroute` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `syslog`
--

DROP TABLE IF EXISTS `syslog`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `syslog` (
  `ENABLEHW` varchar(8) DEFAULT NULL,
  `ENABLENORMAL` varchar(8) DEFAULT NULL,
  `ENABLEDEBUG` varchar(8) DEFAULT NULL,
  `ENABLEWEB` varchar(8) DEFAULT NULL,
  `ENABLESIPTRACE` varchar(8) DEFAULT NULL,
  `SIPIP` varchar(64) DEFAULT NULL,
  `ENABLERTPTRACE` varchar(8) DEFAULT NULL,
  `RTPIP` varchar(64) DEFAULT NULL,
  `ENABLEPRITRACE` varchar(8) DEFAULT NULL,
  `PRIPORT` varchar(8) DEFAULT NULL,
  `ENABLEE1TRACE` varchar(8) DEFAULT NULL,
  `E1PORT` varchar(8) DEFAULT NULL,
  `DEBUGLEVEL` varchar(8) DEFAULT 'vnw00'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `syslog`
--

LOCK TABLES `syslog` WRITE;
/*!40000 ALTER TABLE `syslog` DISABLE KEYS */;
INSERT INTO `syslog` VALUES ('off','off','off','on','off','','off','','off','','off',NULL,'vnw00');
/*!40000 ALTER TABLE `syslog` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `systemalert`
--

DROP TABLE IF EXISTS `systemalert`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `systemalert` (
  `TYPE` varchar(32) DEFAULT NULL,
  `EMAILALERT` varchar(8) NOT NULL DEFAULT 'no',
  `EMAILADDRESS` varchar(512) DEFAULT NULL,
  `EMAILSUB` varchar(256) DEFAULT NULL,
  `EMAILBODY` varchar(512) DEFAULT NULL,
  `PHONEALERT` varchar(8) NOT NULL DEFAULT 'no',
  `TARGETEXTEN` varchar(255) DEFAULT NULL,
  `TRYTIMES` varchar(8) NOT NULL DEFAULT '1',
  `SYSTEMALERT_INTERVAL` varchar(8) NOT NULL DEFAULT '60',
  `PROMPTNAME` varchar(128) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `systemalert`
--

LOCK TABLES `systemalert` WRITE;
/*!40000 ALTER TABLE `systemalert` DISABLE KEYS */;
INSERT INTO `systemalert` VALUES ('IPATTACK','no',NULL,NULL,'pbx hostname:$(HOSTNAME)\nattack source ip address:$(SOURCEIP)\nattack dest mac:$(DESTMAC)\nattack source port:$(DESTPORT)\nattack source protocol:$(PROTOCOL)\nattack occurred:$(DATETIME)','no',NULL,'1','60',NULL),('WEBLOGIN','no',NULL,NULL,'pbx hostname:$(HOSTNAME)\nlogin ip address:$(SOURCEIP)\nlogin username:$(USERNAME)\nlogin occurred:$(DATETIME)','no',NULL,'1','60',NULL);
/*!40000 ALTER TABLE `systemalert` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t38settings`
--

DROP TABLE IF EXISTS `t38settings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t38settings` (
  `t38reinvitesdpnotaddattr` varchar(8) NOT NULL DEFAULT 'no',
  `t38faxudpec` varchar(16) NOT NULL DEFAULT 'fec',
  `t38maxbitrate` varchar(8) NOT NULL DEFAULT '14400'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t38settings`
--

LOCK TABLES `t38settings` WRITE;
/*!40000 ALTER TABLE `t38settings` DISABLE KEYS */;
INSERT INTO `t38settings` VALUES ('no','fec','14400');
/*!40000 ALTER TABLE `t38settings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `timeconditions`
--

DROP TABLE IF EXISTS `timeconditions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `timeconditions` (
  `NAME` varchar(32) DEFAULT NULL,
  `ENABLE` varchar(8) DEFAULT NULL,
  `MON_AM` varchar(16) DEFAULT NULL,
  `MON_PM` varchar(16) DEFAULT NULL,
  `MON_OT` varchar(16) DEFAULT NULL,
  `TUE_AM` varchar(16) DEFAULT NULL,
  `TUE_PM` varchar(16) DEFAULT NULL,
  `TUE_OT` varchar(16) DEFAULT NULL,
  `WED_AM` varchar(16) DEFAULT NULL,
  `WED_PM` varchar(16) DEFAULT NULL,
  `WED_OT` varchar(16) DEFAULT NULL,
  `THU_AM` varchar(16) DEFAULT NULL,
  `THU_PM` varchar(16) DEFAULT NULL,
  `THU_OT` varchar(16) DEFAULT NULL,
  `FRI_AM` varchar(16) DEFAULT NULL,
  `FRI_PM` varchar(16) DEFAULT NULL,
  `FRI_OT` varchar(16) DEFAULT NULL,
  `SAT_AM` varchar(16) DEFAULT NULL,
  `SAT_PM` varchar(16) DEFAULT NULL,
  `SAT_OT` varchar(16) DEFAULT NULL,
  `SUN_AM` varchar(16) DEFAULT NULL,
  `SUN_PM` varchar(16) DEFAULT NULL,
  `SUN_OT` varchar(16) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `timeconditions`
--

LOCK TABLES `timeconditions` WRITE;
/*!40000 ALTER TABLE `timeconditions` DISABLE KEYS */;
/*!40000 ALTER TABLE `timeconditions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tmp_smsrecv`
--

DROP TABLE IF EXISTS `tmp_smsrecv`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tmp_smsrecv` (
  `id` varchar(64) NOT NULL,
  `total` varchar(16) DEFAULT NULL,
  `sms_index` varchar(16) DEFAULT NULL,
  `content` varchar(4096) DEFAULT NULL,
  `recvtime` varchar(64) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tmp_smsrecv`
--

LOCK TABLES `tmp_smsrecv` WRITE;
/*!40000 ALTER TABLE `tmp_smsrecv` DISABLE KEYS */;
INSERT INTO `tmp_smsrecv` VALUES ('BA52217','5','3','Ôªø–π–Ω! –û—Ç–ø—Ä–∞–≤—å—Ç–µ –î–ê –∏–ª–∏ –ª—é–±–æ–µ sms –Ω–∞ 2217 –°–ï–ô–ß–ê–°! –ü–µ—Ä–≤—ã–π –¥–µ–Ω—å —É—á–∞—Å—Ç–∏—è ','2017-04-04 11:48:11'),('BA62217','5','3','Ôªø–π–Ω! –û—Ç–ø—Ä–∞–≤—å—Ç–µ –î–ê –∏–ª–∏ –ª—é–±–æ–µ sms –Ω–∞ 2217 –°–ï–ô–ß–ê–°! –ü–µ—Ä–≤—ã–π –¥–µ–Ω—å —É—á–∞—Å—Ç–∏—è ','2017-04-04 11:48:11'),('BA52217','5','2','Ôªø–∏—è –ø—Ä–∏–≥–ª–∞—à–µ–Ω–∏—è! –ù–∞ –∫–æ–Ω—É –±–æ–ª–µ–µ 8 000 000 —Ä—É–±–ª–µ–π –∏ 12 iPhone7 –æ—Ç –ë–∏–ª–∞','2017-04-04 11:48:13'),('BA62217','5','2','Ôªø–∏—è –ø—Ä–∏–≥–ª–∞—à–µ–Ω–∏—è! –ù–∞ –∫–æ–Ω—É –±–æ–ª–µ–µ 8 000 000 —Ä—É–±–ª–µ–π –∏ 12 iPhone7 –æ—Ç –ë–∏–ª–∞','2017-04-04 11:48:13'),('1EF15Beeline@','5','5','Ôªø-37-37','2017-04-07 16:50:21'),('1EF15Beeline@','5','2','Ôªø–∫–ª \"–ó–æ–ª—É—à–∫–∞\" —Å–æ —Å–∫–∏–¥–∫–æ–π 17%! –í–≤–µ–¥–∏—Ç–µ –ø—Ä–æ–º–æ-–∫–æ–¥ \"–±–∏–ª–∞–π–Ω2017\" –Ω–∞ —Å–∞–π','2017-04-07 16:50:22'),('1EF16Beeline@','5','2','Ôªø–∫–ª \"–ó–æ–ª—É—à–∫–∞\" —Å–æ —Å–∫–∏–¥–∫–æ–π 17%! –í–≤–µ–¥–∏—Ç–µ –ø—Ä–æ–º–æ-–∫–æ–¥ \"–±–∏–ª–∞–π–Ω2017\" –Ω–∞ —Å–∞–π','2017-04-07 16:50:22'),('1EF15Beeline@','5','4','Ôªø\" –∏–ª–∏ –ú–î–ú. –ê–∫—Ü–∏—è –¥–µ–π—Å—Ç–≤—É–µ—Ç –¥–æ 30 –∞–ø—Ä–µ–ª—è 2017. –ü–æ–¥—Ä–æ–±–Ω–µ–µ: 8(495)739','2017-04-07 16:50:24'),('1EF16Beeline@','5','4','Ôªø\" –∏–ª–∏ –ú–î–ú. –ê–∫—Ü–∏—è –¥–µ–π—Å—Ç–≤—É–µ—Ç –¥–æ 30 –∞–ø—Ä–µ–ª—è 2017. –ü–æ–¥—Ä–æ–±–Ω–µ–µ: 8(495)739','2017-04-07 16:50:24');
/*!40000 ALTER TABLE `tmp_smsrecv` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tr069`
--

DROP TABLE IF EXISTS `tr069`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tr069` (
  `NAME` varchar(32) DEFAULT NULL,
  `VALUE` varchar(255) DEFAULT NULL,
  `SESSION` varchar(128) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tr069`
--

LOCK TABLES `tr069` WRITE;
/*!40000 ALTER TABLE `tr069` DISABLE KEYS */;
INSERT INTO `tr069` VALUES ('Manufacturer','',''),('ManufacturerOUI','',''),('ModelName','',''),('SoftwareVersion','',''),('ProductClass','',''),('HardwareVersion','',''),('URL','',''),('Username','',''),('Password','',''),('PeriodicInformEnable','',''),('PeriodicInformInterval','',''),('PeriodicInformTime','',''),('ConnectionRequestURL','',''),('ConnectionRequestUsername','',''),('ConnectionRequestPassword','',''),('STUNMaximumKeepAlivePeriod','',''),('STUNMinimumKeepAlivePeriod','',''),('UpgradesManaged','',''),('MACAddressOverride','',''),('Enable','',''),('Status','',''),('NAT','',''),('ConnectionRequestIP','',''),('ConnectionRequestPort','',''),('ConnectionRequestPath','','');
/*!40000 ALTER TABLE `tr069` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `trunkinfo`
--

DROP TABLE IF EXISTS `trunkinfo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `trunkinfo` (
  `TRUNKNAME` varchar(32) NOT NULL DEFAULT '',
  `CHANNELNAME` varchar(64) NOT NULL DEFAULT '',
  `TRUNKTYPE` varchar(16) NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `trunkinfo`
--

LOCK TABLES `trunkinfo` WRITE;
/*!40000 ALTER TABLE `trunkinfo` DISABLE KEYS */;
INSERT INTO `trunkinfo` VALUES ('E1Trunk2','DAHDI/32-46,48-62','e1'),('E1Trunk1','DAHDI/1-15,17-31','E1'),('E1Trunk2','DAHDI/32-46,4','E1'),('UMTS3','YSGSM/65','UMTS'),('toS50_225','trunk-sps-toS50_225','SPS'),('testIAXS0','trunk-spx-testIAXS0','SPX'),('BriTrunk5','DAHDI/68-69','BRI'),('BriTrunk6','DAHDI/71-72','BRI'),('pstn2','DAHDI/64','FXO'),('Lync2015_41','trunk-sps-Lync2015_41','SPS'),('testIAX','trunk-spx-testIAX','SPX'),('testS50','trunk-sps-testS50','SPS');
/*!40000 ALTER TABLE `trunkinfo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_blackwhitelist`
--

DROP TABLE IF EXISTS `user_blackwhitelist`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user_blackwhitelist` (
  `user` varchar(32) DEFAULT NULL,
  `type` varchar(32) DEFAULT NULL,
  `enableblackwhite` varchar(8) DEFAULT NULL,
  `teltype` varchar(8) DEFAULT NULL,
  `number` varchar(64) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_blackwhitelist`
--

LOCK TABLES `user_blackwhitelist` WRITE;
/*!40000 ALTER TABLE `user_blackwhitelist` DISABLE KEYS */;
/*!40000 ALTER TABLE `user_blackwhitelist` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `userpermissions`
--

DROP TABLE IF EXISTS `userpermissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `userpermissions` (
  `name` varchar(32) DEFAULT NULL,
  `linestatus` varchar(8) DEFAULT 'on',
  `systemstatus` varchar(8) DEFAULT 'on',
  `networkpfid` varchar(8) DEFAULT 'on',
  `securityid` varchar(8) DEFAULT 'on',
  `ldaptitleid` varchar(8) DEFAULT 'on',
  `storageid` varchar(8) DEFAULT 'on',
  `syspfid` varchar(8) DEFAULT 'on',
  `extensionsid` varchar(8) DEFAULT 'on',
  `intrunksid` varchar(8) DEFAULT 'on',
  `outcallctlid` varchar(8) DEFAULT 'on',
  `incallctlid` varchar(8) DEFAULT 'on',
  `audiosetid` varchar(8) DEFAULT 'on',
  `inbasicid` varchar(8) DEFAULT 'on',
  `sipadvid` varchar(8) DEFAULT 'on',
  `inrptsid` varchar(8) DEFAULT 'on',
  `addonsetid` varchar(8) DEFAULT 'off'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `userpermissions`
--

LOCK TABLES `userpermissions` WRITE;
/*!40000 ALTER TABLE `userpermissions` DISABLE KEYS */;
INSERT INTO `userpermissions` VALUES ('user','on','on','on','on','on','on','on','on','on','on','on','on','on','on','on','off');
/*!40000 ALTER TABLE `userpermissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vlansettings`
--

DROP TABLE IF EXISTS `vlansettings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `vlansettings` (
  `VLAN` varchar(16) DEFAULT NULL,
  `VLANNUMBER` varchar(16) DEFAULT NULL,
  `VLANIPADDRESS` varchar(64) DEFAULT NULL,
  `VLANSUBNET` varchar(64) DEFAULT NULL,
  `VLANGATEWAY` varchar(64) DEFAULT NULL,
  `TYPE` varchar(8) DEFAULT NULL,
  `ID` varchar(8) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vlansettings`
--

LOCK TABLES `vlansettings` WRITE;
/*!40000 ALTER TABLE `vlansettings` DISABLE KEYS */;
INSERT INTO `vlansettings` VALUES ('off','','','','','WAN','1'),('off','','','','','WAN','2'),('off','','','','','LAN','1'),('off','','','','','LAN','2');
/*!40000 ALTER TABLE `vlansettings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vmsettings`
--

DROP TABLE IF EXISTS `vmsettings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `vmsettings` (
  `MAXMSG` varchar(8) DEFAULT NULL,
  `MAXMESSAGE` varchar(8) DEFAULT NULL,
  `MINMESSAGE` varchar(8) DEFAULT NULL,
  `PRESS5` varchar(8) DEFAULT NULL,
  `SAYCID` varchar(8) DEFAULT NULL,
  `SAYDURATION` varchar(8) DEFAULT NULL,
  `ENVELOPE` varchar(8) DEFAULT NULL,
  `REVIEW` varchar(8) DEFAULT NULL,
  `EMAIL` varchar(64) DEFAULT NULL,
  `SECRET` blob,
  `SERVER` varchar(64) DEFAULT NULL,
  `PORT` varchar(8) DEFAULT NULL,
  `SENDSECURE` varchar(8) DEFAULT NULL,
  `PRESS0TO` varchar(32) DEFAULT NULL,
  `NORMALGREET` varchar(8) NOT NULL DEFAULT 's',
  `BUSYGREET` varchar(8) NOT NULL DEFAULT 'b',
  `UNAVGREET` varchar(8) NOT NULL DEFAULT 'u'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vmsettings`
--

LOCK TABLES `vmsettings` WRITE;
/*!40000 ALTER TABLE `vmsettings` DISABLE KEYS */;
INSERT INTO `vmsettings` VALUES ('100','300','5','','','','','','mypbx@sina.com','\Á\Â£\¬`å•á\À\«\€\0','smtp.sina.com','25','','off','s','b','u');
/*!40000 ALTER TABLE `vmsettings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `voiptrunk`
--

DROP TABLE IF EXISTS `voiptrunk`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `voiptrunk` (
  `TYPE` varchar(8) DEFAULT NULL,
  `TRUNKNAME` varchar(32) DEFAULT NULL,
  `HOSTNAME` varchar(64) DEFAULT NULL,
  `PORT` varchar(8) DEFAULT NULL,
  `FROMDOMAIN` varchar(64) DEFAULT NULL,
  `USERNAME` varchar(64) DEFAULT NULL,
  `YSAUTH` varchar(64) DEFAULT NULL,
  `SECRET` blob,
  `ENABLESERVER` varchar(8) DEFAULT NULL,
  `OUTSERVER` varchar(128) DEFAULT NULL,
  `ALLOW` varchar(128) DEFAULT NULL,
  `CALLERID` varchar(32) DEFAULT NULL,
  `CALLLIMIT` varchar(8) DEFAULT NULL,
  `ONLINENUMBER` varchar(32) DEFAULT NULL,
  `FROMUSER` varchar(32) DEFAULT NULL,
  `TRANSPORT` varchar(32) DEFAULT NULL,
  `ENABLESRTP` varchar(8) DEFAULT NULL,
  `DODSETTINGS` text,
  `GLOBALDOD` varchar(32) DEFAULT NULL,
  `KRDIVERSION` varchar(32) DEFAULT NULL,
  `DTMFMODE` varchar(16) NOT NULL DEFAULT 'rfc2833',
  `QUALIFY` varchar(8) NOT NULL DEFAULT 'on',
  `REALM` varchar(256) NOT NULL DEFAULT '',
  `outport` varchar(8) DEFAULT NULL,
  `authinvite` varchar(8) DEFAULT 'no',
  `ISENABLE` varchar(8) DEFAULT '1',
  `keepalivemethod` varchar(16) DEFAULT 'options',
  `keepaliveinterval` varchar(16) DEFAULT '30'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `voiptrunk`
--

LOCK TABLES `voiptrunk` WRITE;
/*!40000 ALTER TABLE `voiptrunk` DISABLE KEYS */;
/*!40000 ALTER TABLE `voiptrunk` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vpnsetttings`
--

DROP TABLE IF EXISTS `vpnsetttings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `vpnsetttings` (
  `TYPE` varchar(16) DEFAULT NULL,
  `ENABLE` varchar(8) DEFAULT NULL,
  `STATUS` varchar(8) DEFAULT NULL,
  `SERVERIP` varchar(64) DEFAULT NULL,
  `USERNAME` varchar(32) DEFAULT NULL,
  `PASSWORD` blob,
  `CONFIGFILE` varchar(255) DEFAULT NULL,
  `CAFILE` varchar(255) DEFAULT NULL,
  `CERTFILE` varchar(255) DEFAULT NULL,
  `KEYFILE` varchar(255) DEFAULT NULL,
  `enablel2tp` varchar(8) DEFAULT 'off',
  `lacname` varchar(64) DEFAULT NULL,
  `enableipsec` varchar(8) DEFAULT 'off',
  `connectname` varchar(64) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vpnsetttings`
--

LOCK TABLES `vpnsetttings` WRITE;
/*!40000 ALTER TABLE `vpnsetttings` DISABLE KEYS */;
INSERT INTO `vpnsetttings` VALUES ('','off','','','','','','','','','off',NULL,'off',NULL);
/*!40000 ALTER TABLE `vpnsetttings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wansettings`
--

DROP TABLE IF EXISTS `wansettings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wansettings` (
  `WANSETTINGS_IF` varchar(8) DEFAULT NULL,
  `PPPOE` varchar(8) DEFAULT NULL,
  `DHCP` varchar(8) DEFAULT NULL,
  `IPADDRESS` varchar(64) DEFAULT NULL,
  `NETMASK` varchar(64) DEFAULT NULL,
  `GATEWAY` varchar(64) DEFAULT NULL,
  `DNS1` varchar(64) DEFAULT NULL,
  `DNS2` varchar(64) DEFAULT NULL,
  `NIC` varchar(64) DEFAULT NULL,
  `USERNAME` varchar(64) DEFAULT NULL,
  `PASSWORD` blob,
  `HOLDOFF` varchar(8) DEFAULT NULL,
  `MAXFAIL` varchar(8) DEFAULT NULL,
  `USEWAN` varchar(8) DEFAULT NULL,
  `SHOWWAN` varchar(8) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wansettings`
--

LOCK TABLES `wansettings` WRITE;
/*!40000 ALTER TABLE `wansettings` DISABLE KEYS */;
INSERT INTO `wansettings` VALUES ('eth1','no','yes','10.11.12.10','255.255.255.0','10.11.12.1','','','eth1','','-‹ã\’\¬x!Ä{;pbÖ+	µ','','','on','1');
/*!40000 ALTER TABLE `wansettings` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-09-01 13:15:39
