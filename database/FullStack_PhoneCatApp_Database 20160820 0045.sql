-- MySQL Administrator dump 1.4
--
-- ------------------------------------------------------
-- Server version	5.6.17


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;


--
-- Create schema phonecatapp
--

CREATE DATABASE /*!32312 IF NOT EXISTS*/ phonecatapp;
USE phonecatapp;

--
-- Table structure for table `phonecatapp`.`android`
--

DROP TABLE IF EXISTS `android`;
CREATE TABLE `android` (
  `androidId` int(10) NOT NULL AUTO_INCREMENT,
  `os` varchar(100) NOT NULL,
  `ui` varchar(100) NOT NULL,
  `phoneId` int(10) NOT NULL,
  PRIMARY KEY (`androidId`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `phonecatapp`.`android`
--

/*!40000 ALTER TABLE `android` DISABLE KEYS */;
INSERT INTO `android` (`androidId`,`os`,`ui`,`phoneId`) VALUES 
 (1,'Android 2.2','Dell Stage',1),
 (2,'Android 2.2','Dell Stage',2),
 (3,'Android 2.2','',3);
/*!40000 ALTER TABLE `android` ENABLE KEYS */;


--
-- Table structure for table `phonecatapp`.`availability`
--

DROP TABLE IF EXISTS `availability`;
CREATE TABLE `availability` (
  `avail_id` int(10) NOT NULL AUTO_INCREMENT,
  `availability` varchar(500) NOT NULL,
  `phoneId` int(10) NOT NULL,
  PRIMARY KEY (`avail_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `phonecatapp`.`availability`
--

/*!40000 ALTER TABLE `availability` DISABLE KEYS */;
INSERT INTO `availability` (`avail_id`,`availability`,`phoneId`) VALUES 
 (1,'T-Mobile',1),
 (2,'AT&T, KT,T-Mobile',2),
 (3,'Verizon',3);
/*!40000 ALTER TABLE `availability` ENABLE KEYS */;


--
-- Table structure for table `phonecatapp`.`battery`
--

DROP TABLE IF EXISTS `battery`;
CREATE TABLE `battery` (
  `batteryId` int(10) NOT NULL AUTO_INCREMENT,
  `standbyTime` varchar(500) NOT NULL,
  `talkTime` varchar(500) NOT NULL,
  `type` varchar(500) NOT NULL,
  `phoneId` int(10) NOT NULL,
  PRIMARY KEY (`batteryId`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `phonecatapp`.`battery`
--

/*!40000 ALTER TABLE `battery` DISABLE KEYS */;
INSERT INTO `battery` (`batteryId`,`standbyTime`,`talkTime`,`type`,`phoneId`) VALUES 
 (1,'','','Lithium Ion (Li-Ion) (2780 mAH)',1),
 (2,'400 hours','7 hours','Lithium Ion (Li-Ion) (1400 mAH)',2),
 (3,'230 hours','8 hours','Lithium Ion (Li-Ion) (1400 mAH)',3);
/*!40000 ALTER TABLE `battery` ENABLE KEYS */;


--
-- Table structure for table `phonecatapp`.`camera`
--

DROP TABLE IF EXISTS `camera`;
CREATE TABLE `camera` (
  `cameraId` int(10) NOT NULL AUTO_INCREMENT,
  `features` varchar(50) NOT NULL,
  `primary` varchar(50) NOT NULL,
  `phoneId` int(10) NOT NULL,
  PRIMARY KEY (`cameraId`),
  KEY `FK_camera_1` (`phoneId`),
  CONSTRAINT `FK_camera_1` FOREIGN KEY (`phoneId`) REFERENCES `phones` (`phoneId`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `phonecatapp`.`camera`
--

/*!40000 ALTER TABLE `camera` DISABLE KEYS */;
INSERT INTO `camera` (`cameraId`,`features`,`primary`,`phoneId`) VALUES 
 (1,'Flash, Video','5.0 megapixels',1),
 (2,'Flash, Video','8.0 megapixels',2),
 (3,'Video','8.0 megapixels',3);
/*!40000 ALTER TABLE `camera` ENABLE KEYS */;


--
-- Table structure for table `phonecatapp`.`connectivity`
--

DROP TABLE IF EXISTS `connectivity`;
CREATE TABLE `connectivity` (
  `connectivityId` int(10) NOT NULL AUTO_INCREMENT,
  `bluetooth` varchar(500) NOT NULL,
  `cell` varchar(1000) NOT NULL,
  `gps` varchar(100) NOT NULL,
  `infrared` varchar(100) NOT NULL,
  `wifi` varchar(100) NOT NULL,
  `phoneId` int(10) NOT NULL,
  PRIMARY KEY (`connectivityId`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `phonecatapp`.`connectivity`
--

/*!40000 ALTER TABLE `connectivity` DISABLE KEYS */;
INSERT INTO `connectivity` (`connectivityId`,`bluetooth`,`cell`,`gps`,`infrared`,`wifi`,`phoneId`) VALUES 
 (1,'Bluetooth 2.1','T-mobile HSPA+ @ 2100/1900/AWS/850 MHz','true','false','802.11 b/g',1),
 (2,'Bluetooth 2.1','850/1900/2100 3G; 850/900/1800/1900 GSM/GPRS/EDGE\n900/1700/2100 3G; 850/900/1800/1900 GSM/GPRS/EDGE','true','false','802.11 b/g/n',2),
 (3,'Bluetooth 2.1','WCDMA 850/1900/2100, CDMA 800/1900, GSM 850/900/1800/1900, HSDPA 10.2 Mbps (Category 9/10), CDMA EV-DO Release A, EDGE Class 12, GPRS Class 12, HSUPA 1.8 Mbps','true','false','802.11 b/g/n',3);
/*!40000 ALTER TABLE `connectivity` ENABLE KEYS */;


--
-- Table structure for table `phonecatapp`.`display`
--

DROP TABLE IF EXISTS `display`;
CREATE TABLE `display` (
  `displayId` int(10) NOT NULL,
  `screenResolution` varchar(100) NOT NULL,
  `screenSize` varchar(100) NOT NULL,
  `touchScreen` varchar(100) NOT NULL,
  `phoneId` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `phonecatapp`.`display`
--

/*!40000 ALTER TABLE `display` DISABLE KEYS */;
INSERT INTO `display` (`displayId`,`screenResolution`,`screenSize`,`touchScreen`,`phoneId`) VALUES 
 (1,'WVGA (800 x 480)','7.0 inches','true',1),
 (2,'WVGA (800 x 480)','4.1 inches','true',2),
 (3,'FWVGA (854 x 480)','3.7 inches','true',3);
/*!40000 ALTER TABLE `display` ENABLE KEYS */;


--
-- Table structure for table `phonecatapp`.`hardware`
--

DROP TABLE IF EXISTS `hardware`;
CREATE TABLE `hardware` (
  `hardwareId` int(10) NOT NULL AUTO_INCREMENT,
  `accelerometer` varchar(100) NOT NULL,
  `audioJack` varchar(100) NOT NULL,
  `cpu` varchar(200) NOT NULL,
  `fmRadio` varchar(100) NOT NULL,
  `physicalKeyboard` varchar(100) NOT NULL,
  `usb` varchar(100) NOT NULL,
  `phoneId` int(10) NOT NULL,
  PRIMARY KEY (`hardwareId`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `phonecatapp`.`hardware`
--

/*!40000 ALTER TABLE `hardware` DISABLE KEYS */;
INSERT INTO `hardware` (`hardwareId`,`accelerometer`,`audioJack`,`cpu`,`fmRadio`,`physicalKeyboard`,`usb`,`phoneId`) VALUES 
 (1,'true','3.5mm','nVidia Tegra T20','false','false','USB 2.0',1),
 (2,'true','3.5mm','1 Ghz processor','false','false','USB 2.0',2),
 (3,'true','3.5mm','1.2 GHz TI OMAP','false','true','USB 2.0',3);
/*!40000 ALTER TABLE `hardware` ENABLE KEYS */;


--
-- Table structure for table `phonecatapp`.`images`
--

DROP TABLE IF EXISTS `images`;
CREATE TABLE `images` (
  `imageId` int(10) NOT NULL AUTO_INCREMENT,
  `images` varchar(500) NOT NULL,
  `phoneId` int(10) NOT NULL,
  PRIMARY KEY (`imageId`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `phonecatapp`.`images`
--

/*!40000 ALTER TABLE `images` DISABLE KEYS */;
INSERT INTO `images` (`imageId`,`images`,`phoneId`) VALUES 
 (1,'img/phones/dell-streak-7.0.jpg, img/phones/dell-streak-7.1.jpg, img/phones/dell-streak-7.2.jpg, img/phones/dell-streak-7.3.jpg, img/phones/dell-streak-7.4.jpg',1),
 (2,'img/phones/dell-venue.0.jpg, img/phones/dell-venue.1.jpg, img/phones/dell-venue.2.jpg, img/phones/dell-venue.3.jpg, img/phones/dell-venue.4.jpg, img/phones/dell-venue.5.jpg ',2),
 (3,'img/phones/droid-2-global-by-motorola.0.jpg, img/phones/droid-2-global-by-motorola.1.jpg, img/phones/droid-2-global-by-motorola.2.jpg',3);
/*!40000 ALTER TABLE `images` ENABLE KEYS */;


--
-- Table structure for table `phonecatapp`.`phones`
--

DROP TABLE IF EXISTS `phones`;
CREATE TABLE `phones` (
  `phoneId` int(10) NOT NULL AUTO_INCREMENT,
  `age` varchar(15) NOT NULL,
  `carrier` varchar(100) NOT NULL,
  `id` varchar(300) NOT NULL,
  `imageUrl` varchar(500) NOT NULL,
  `name` varchar(300) NOT NULL,
  `snippet` varchar(1000) NOT NULL,
  `additionalFeatures` varchar(1000) NOT NULL,
  `description` varchar(1000) NOT NULL,
  PRIMARY KEY (`phoneId`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `phonecatapp`.`phones`
--

/*!40000 ALTER TABLE `phones` DISABLE KEYS */;
INSERT INTO `phones` (`phoneId`,`age`,`carrier`,`id`,`imageUrl`,`name`,`snippet`,`additionalFeatures`,`description`) VALUES 
 (1,'3','Hello World','dell-streak-7','img/phones/dell-streak-7.0.jpg','Dell Streak 7','Introducing Dellu2122 Streak 7. Share photos, videos and movies together. Itu2019s small enough to carry around, big enough to gather around.','Front Facing 1.3MP Camera','Introducing Dellu2122 Streak 7. Share photos, videos and movies together. Itu2019s small enough to carry around, big enough to gather around. Androidu2122 2.2-based tablet with over-the-air upgrade capability for future OS releases.  A vibrant 7-inch, multitouch display with full Adobeu00ae Flash 10.1 pre-installed.  Includes a 1.3 MP front-facing camera for face-to-face chats on popular services such as Qik or Skype.  16 GB of internal storage, plus Wi-Fi, Bluetooth and built-in GPS keeps you in touch with the world around you.  Connect on your terms. Save with 2-year contract or flexibility with prepaid pay-as-you-go plans'),
 (2,'5','Dell','dell-venue','img/phones/dell-venue.0.jpg','Dell Venue','The Dell Venue; Your Personal Express Lane to Everything','Gorilla Glass display, Dedicated Camera Key, Ring Silence Switch, Swype keyboard.','The Venue is the perfect one-touch, Smart Phone providing instant access to everything you love. All of Venue\'s features make it perfect for on-the-go students, mobile professionals, and active social communicators who love style and performance.\\n\\nElegantly designed, the Venue offers a vibrant, curved glass display that\\u2019s perfect for viewing all types of content. The Venue\\u2019s slender form factor feels great in your hand and also slips easily into your pocket.  A mobile entertainment powerhouse that lets you download the latest tunes from Amazon MP3 or books from Kindle, watch video, or stream your favorite radio stations.  All on the go, anytime, anywhere.');
INSERT INTO `phones` (`phoneId`,`age`,`carrier`,`id`,`imageUrl`,`name`,`snippet`,`additionalFeatures`,`description`) VALUES 
 (3,'10','Verizon','droid-2-global-by-motorola','img/phones/droid-2-global-by-motorola.0.jpg','DROIDu2122 2 Global by Motorola','The first smartphone with a 1.2 GHz processor and global capabilities.','Adobe Flash Player 10, Quadband GSM Worldphone, Advance Business Security, Complex Password Secure, Review & Edit Documents with Quick Office, Personal 3G Mobile Hotspot for up to 5 WiFi enabled Devices, Advanced Social Networking brings all social content into a single homescreen widget','With Quad Band GSM, the DROID 2 Global can send email and make and receive calls from more than 200 countries. It features an improved QWERTY keyboard, super-fast 1.2 GHz processor and enhanced security for all your business needs');
/*!40000 ALTER TABLE `phones` ENABLE KEYS */;


--
-- Table structure for table `phonecatapp`.`sizeandweight`
--

DROP TABLE IF EXISTS `sizeandweight`;
CREATE TABLE `sizeandweight` (
  `sizeAndWeightId` int(10) NOT NULL AUTO_INCREMENT,
  `dimensions` varchar(200) NOT NULL,
  `weight` varchar(100) NOT NULL,
  `phoneId` int(10) NOT NULL,
  PRIMARY KEY (`sizeAndWeightId`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `phonecatapp`.`sizeandweight`
--

/*!40000 ALTER TABLE `sizeandweight` DISABLE KEYS */;
INSERT INTO `sizeandweight` (`sizeAndWeightId`,`dimensions`,`weight`,`phoneId`) VALUES 
 (1,'199.9 mm (w), 119.8 mm (h), 12.4 mm (d)','450.0 grams',1),
 (2,'64.0 mm (w), 121.0 mm (h), 12.9 mm (d)','164.0 grams',2),
 (3,'60.5 mm (w), 116.3 mm (h), 13.7 mm (d)','169.0 grams',3);
/*!40000 ALTER TABLE `sizeandweight` ENABLE KEYS */;


--
-- Table structure for table `phonecatapp`.`storage`
--

DROP TABLE IF EXISTS `storage`;
CREATE TABLE `storage` (
  `storageId` int(10) NOT NULL AUTO_INCREMENT,
  `flash` varchar(100) NOT NULL,
  `ram` varchar(100) NOT NULL,
  `phoneId` int(10) NOT NULL,
  PRIMARY KEY (`storageId`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `phonecatapp`.`storage`
--

/*!40000 ALTER TABLE `storage` DISABLE KEYS */;
INSERT INTO `storage` (`storageId`,`flash`,`ram`,`phoneId`) VALUES 
 (1,'16000MB','512MB',1),
 (2,'1000MB','512MB',2),
 (3,'8192MB','512MB',3);
/*!40000 ALTER TABLE `storage` ENABLE KEYS */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
