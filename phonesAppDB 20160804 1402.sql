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
-- Create schema phones_app
--

CREATE DATABASE /*!32312 IF NOT EXISTS*/ phones_app;
USE phones_app;

--
-- Table structure for table `phones_app`.`phones`
--

DROP TABLE IF EXISTS `phones`;
CREATE TABLE `phones` (
  `age` int(10) NOT NULL AUTO_INCREMENT,
  `carrier` varchar(200) NOT NULL,
  `id` varchar(200) NOT NULL,
  `imageUrl` varchar(200) NOT NULL,
  `name` varchar(200) NOT NULL,
  `snippet` varchar(300) NOT NULL,
  PRIMARY KEY (`age`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `phones_app`.`phones`
--

/*!40000 ALTER TABLE `phones` DISABLE KEYS */;
INSERT INTO `phones` (`age`,`carrier`,`id`,`imageUrl`,`name`,`snippet`) VALUES 
 (0,'','motorola-xoom-with-wi-fi','img/phones/motorola-xoom-with-wi-fi.0.jpg','Motorola XOOM\\u2122 with Wi-Fi','The Next, Next Generation\\r\\n\\r\\nExperience the future with Motorola XOOM with Wi-Fi, the world\'s first tablet powered by Android 3.0 (Honeycomb).'),
 (1,'','motorola-xoom','img/phones/motorola-xoom.0.jpg','MOTOROLA XOOM\\u2122','The Next, Next Generation\\n\\nExperience the future with MOTOROLA XOOM, the world\'s first tablet powered by Android 3.0 (Honeycomb).'),
 (2,'AT&T','motorola-atrix-4g','img/phones/motorola-atrix-4g.0.jpg','MOTOROLA ATRIX\\u2122 4G','MOTOROLA ATRIX 4G the world\'s most powerful smartphone.'),
 (3,'','dell-streak-7','img/phones/dell-streak-7.0.jpg','Dell Streak 7','Introducing Dell\\u2122 Streak 7. Share photos, videos and movies together. It\\u2019s small enough to carry around, big enough to gather around.'),
 (4,'Cellular South','samsung-gem','img/phones/samsung-gem.0.jpg','Samsung Gem\\u2122','The Samsung Gem\\u2122 brings you everything that you would expect and more from a touch display smart phone \\u2013 more apps, more features and a more affordable price.'),
 (5,'Dell','dell-venue','img/phones/dell-venue.0.jpg','Dell Venue','The Dell Venue; Your Personal Express Lane to Everything');
INSERT INTO `phones` (`age`,`carrier`,`id`,`imageUrl`,`name`,`snippet`) VALUES 
 (6,'Best Buy','nexus-s','img/phones/nexus-s.0.jpg','Nexus S','Fast just got faster with Nexus S. A pure Google experience, Nexus S is the first phone to run Gingerbread (Android 2.3), the fastest version of Android yet.'),
 (7,'Cellular South','lg-axis','img/phones/lg-axis.0.jpg','LG Axis','Android Powered, Google Maps Navigation, 5 Customizable Home Screens'),
 (8,'','samsung-galaxy-tab','img/phones/samsung-galaxy-tab.0.jpg','Samsung Galaxy Tab\\u2122','Feel Free to Tab\\u2122. The Samsung Galaxy Tab\\u2122 brings you an ultra-mobile entertainment experience through its 7\\u201d display, high-power processor and Adobe\\u00ae Flash\\u00ae Player compatibility.'),
 (9,'Cellular South','samsung-showcase-a-galaxy-s-phone','img/phones/samsung-showcase-a-galaxy-s-phone.0.jpg','Samsung Showcase\\u2122 a Galaxy S\\u2122 phone','The Samsung Showcase\\u2122 delivers a cinema quality experience like you\\u2019ve never seen before. Its innovative 4\\u201d touch display technology provides rich picture brilliance, even outdoors'),
 (10,'Verizon','droid-2-global-by-motorola','img/phones/droid-2-global-by-motorola.0.jpg','DROID\\u2122 2 Global by Motorola','The first smartphone with a 1.2 GHz processor and global capabilities.');
INSERT INTO `phones` (`age`,`carrier`,`id`,`imageUrl`,`name`,`snippet`) VALUES 
 (11,'Verizon','droid-pro-by-motorola','img/phones/droid-pro-by-motorola.0.jpg','DROID\\u2122 Pro by Motorola','The next generation of DOES.'),
 (12,'AT&T','motorola-bravo-with-motoblur','img/phones/motorola-bravo-with-motoblur.0.jpg','MOTOROLA BRAVO\\u2122 with MOTOBLUR\\u2122','An experience to cheer about.'),
 (13,'T-Mobile','motorola-defy-with-motoblur','img/phones/motorola-defy-with-motoblur.0.jpg','Motorola DEFY\\u2122 with MOTOBLUR\\u2122','Are you ready for everything life throws your way?'),
 (14,'T-Mobile','t-mobile-mytouch-4g','img/phones/t-mobile-mytouch-4g.0.jpg','T-Mobile myTouch 4G','The T-Mobile myTouch 4G is a premium smartphone designed to deliver blazing fast 4G speeds so that you can video chat from practically anywhere, with or without Wi-Fi.'),
 (15,'US Cellular','samsung-mesmerize-a-galaxy-s-phone','img/phones/samsung-mesmerize-a-galaxy-s-phone.0.jpg','Samsung Mesmerize\\u2122 a Galaxy S\\u2122 phone','The Samsung Mesmerize\\u2122 delivers a cinema quality experience like you\\u2019ve never seen before. Its innovative 4\\u201d touch display technology provides rich picture brilliance,even outdoors'),
 (16,'Sprint','sanyo-zio','img/phones/sanyo-zio.0.jpg','SANYO ZIO','The Sanyo Zio by Kyocera is an Android smartphone with a combination of ultra-sleek styling, strong performance and unprecedented value.');
INSERT INTO `phones` (`age`,`carrier`,`id`,`imageUrl`,`name`,`snippet`) VALUES 
 (17,'','samsung-transform','img/phones/samsung-transform.0.jpg','Samsung Transform\\u2122','The Samsung Transform\\u2122 brings you a fun way to customize your Android powered touch screen phone to just the way you like it through your favorite themed \\u201cSprint ID Service Pack\\u201d.'),
 (18,'','t-mobile-g2','img/phones/t-mobile-g2.0.jpg','T-Mobile G2','The T-Mobile G2 with Google is the first smartphone built for 4G speeds on T-Mobile\'s new network. Get the information you need, faster than you ever thought possible.'),
 (19,'','motorola-charm-with-motoblur','img/phones/motorola-charm-with-motoblur.0.jpg','Motorola CHARM\\u2122 with MOTOBLUR\\u2122','Motorola CHARM fits easily in your pocket or palm.  Includes MOTOBLUR service.');
/*!40000 ALTER TABLE `phones` ENABLE KEYS */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
