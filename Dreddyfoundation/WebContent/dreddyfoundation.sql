/*
SQLyog Ultimate v10.00 Beta1
MySQL - 5.1.36-community : Database - dreddyfoundation
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`dreddyfoundation` /*!40100 DEFAULT CHARACTER SET utf8 COLLATE utf8_unicode_ci */;

USE `dreddyfoundation`;

/*Table structure for table `dreddyfadminregiestration` */

DROP TABLE IF EXISTS `dreddyfadminregiestration`;

CREATE TABLE `dreddyfadminregiestration` (
  `admin_id` int(20) NOT NULL AUTO_INCREMENT,
  `admin_name` varchar(30) COLLATE utf8_unicode_ci DEFAULT NULL,
  `admin_email` varchar(40) COLLATE utf8_unicode_ci DEFAULT NULL,
  `admin_phone` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `admin_password` varchar(30) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`admin_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/*Data for the table `dreddyfadminregiestration` */

insert  into `dreddyfadminregiestration`(`admin_id`,`admin_name`,`admin_email`,`admin_phone`,`admin_password`) values (1,'punith','punithkumar325@gmail.com','9738562088','123456'),(2,'dreddy','dayanandareddy1963@gmail.com','9738738364','Dreddy@1234');

/*Table structure for table `dreddyfarticle` */

DROP TABLE IF EXISTS `dreddyfarticle`;

CREATE TABLE `dreddyfarticle` (
  `article_id` int(11) NOT NULL AUTO_INCREMENT,
  `article_brief` mediumtext COLLATE utf8_unicode_ci,
  `article_by` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `article_caption` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `article_comments` int(11) DEFAULT NULL,
  `article_date` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `article_detail` longtext COLLATE utf8_unicode_ci,
  `article_gridimage` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `article_image` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `article_type` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`article_id`)
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/*Data for the table `dreddyfarticle` */

insert  into `dreddyfarticle`(`article_id`,`article_brief`,`article_by`,`article_caption`,`article_comments`,`article_date`,`article_detail`,`article_gridimage`,`article_image`,`article_type`) values (1,'<p style=\'text-align: justify;\'>Bengaluru and other such similar cosmopolitan cities has a high percentage of immigrants, who are educated but need to be sensitized about local language, culture and its heritage.</p>','Dayananad','<p style=\'text-align: justify;text-decoration: none;color: #f57c20;\'>Educating Immigrants on Culture</p>',0,'Fri Aug 24 2018','<p style=\'text-align: justify;\'>Bengaluru and other such similar cosmopolitan cities has a high percentage of immigrants, who are educated but need to be sensitized about local language, culture and its heritage.\r\n\r\n</p><br/><p style=\'text-align: justify;\'>Sensitizing them at a very initial stage even before they make the city there home either educating them in there office level or Ward level would resolve a lot of confusion and build mutual respect and trust between the local residents and the immigrants.</p><br/><p style=\'text-align: justify;\'>Even though this is a small initiative if the same is implemented in the right direction this is sure to bear results on a longer run in creating a cultural harmony amongst citizens of various states in the country.</p><br/>','blogimg3.jpg','blog3.jpg','Social'),(2,'<p style=\'text-align: justify;\'>Organized cultural competitions, indoor and outdoor sports and promoted educational seminars to promote extracurricular activities. He has also donated push carts for vegetable vendors.</p>','Dayananad','<p style=\'text-align: justify;text-decoration: none;color: #f57c20;\'>Contribution towards Social Welfare</p>',0,'Sat Aug 25 2018','<p style=\'text-align: justify;\'>Organized cultural competitions, indoor and outdoor sports and promoted educational seminars to promote extracurricular activities.</p><br/><p style=\'text-align: justify;\'>He has also donated push carts for vegetable vendors to help their livelihood and provided drinking water to remote villages through bore wells.</p><br/><p style=\'text-align: justify;\'>After completing his basic education, he initiated his professional career as the Head of Sales & Marketing at Legacy Global Projects Pvt. Ltd. where he immersed himself completely for 8 years (2007 - 2015) and got a firm grip on every nuance of organized productive activity and the need to equip ourselves with the nuances of contemporary corporate etiquette and in inculcating the ability to be on par with global standards.</p><br/><p style=\'text-align: justify;\'>Since then he is been proactively engaged in numerous activities like Free Education, Free medical Camps, Donation of wheel Chairs to Handicapped, planting trees etc.</p><br/><p style=\'text-align: justify;\'>(DF) has made a remarkable contribution towards community development since its inception. Mr. Dayananda- Founder of DF and Chairman of Bharath Goldstar Group (BGG) developed interest in social activities and community development at a very young age.\r\n\r\n</p><br/>','blogimg4.jpg','blog4.jpg','Social'),(3,'<p style=\'text-align: justify;\'>Active eradication of poverty, taking a strong policy decision to decapitate anti-social elements affecting lives of the largely well behaved public.The focused promotion of education, health & etc.</p>','Dayananad','<p style=\'text-align: justify;text-decoration: none;color: #f57c20;\'>Threefold developmental activity</p>',0,'Fri Jul 27 2018','<p style=\'text-align: justify;\'>Indulging in varied developmental activities: viz., providing basic amenities and support system like water, electricity, commodities and transport at reasonable costs.</p><br/><p style=\'text-align: justify;\'>The focused promotion of education, health, art and culture, along with better public amenities (Parks, recreational facilities, elder care homes, etc.)</p><br/><p style=\'text-align: justify;\'>Active eradication of poverty, taking a strong policy decision to decapitate anti-social elements from adversely affecting the lives of the largely well behaved public.</p><br/><p style=\'text-align: justify;\'>Every day we are witness to many aspects that bring out the best in humans and also many aspects that show us how much more he can debase himself by his unspeakable actions.\r\n\r\n</p><br/>','blogimg5.jpg','blog5.jpg','Social'),(4,'<p style=\'text-align: justify;\'>Currently there are a lot of Issues governing developing cities like Bengaluru. There are a lot of Conservative Politicians and NGOÃ¢??s who are finding solutions to resolve these issues.</p>','Dayananad','<p style=\'text-align: justify;text-decoration: none;color: #f57c20;\'>Current Issues in Developing Cities</p>',0,'Sun Jul 22 2018','<p style=\'text-align: justify;\'>Currently there are a lot of Issues governing developing cities like Bengaluru. There are a lot of Conservative Politicians and NGOÃ¢??s who are finding solutions to resolve these issues.</p><br/><p style=\'text-align: justify;\'>Concerns like Urban Planning, Social Security, Public Transport, Job Opportunity, Health Care, Water and Sanitation, Garbage Disposal, Education, Increase in Population, Pollution, Power likewise there are a lot of other concerns which has to be addressed with immediate effect.</p><br/><p style=\'text-align: justify;\'>Including these issues I would also like to address and implement some basic concerns even though these initiatives are smaller but on the longer run it would be very beneficial for the society.\r\n\r\n\r\n</p><br/>','blogimg6.jpg','blog6.jpg','Social'),(5,'<p style=\'text-align: justify;\'>The idea of this project is to provide 3 years of high school education i.e. 8th, 9th, 10th and after which technical education based on the requirement of more than 500 affiliated industries to ensure\r\n\r\n</p>','Dayananad','<p style=\'text-align: justify;text-decoration: none;color: #f57c20;\'>Support for Quality Education</p>',0,'Tue Jul 31 2018','<p style=\'text-align: justify;\'>The idea of this project is to provide 3 years of high school education i.e. 8th, 9th, 10th and after which technical education based on the requirement of the more than 500 affiliated industries to ensure</p><br/>','blogimg2.jpg','blog2.jpg','Social'),(6,'<p style=\'text-align: justify;\'>Dayananda Foundation is a CSR initiative of Bharath Goldstar Group. The Foundation adopts students from the age group of 14 and is supporting them with 3 years of High School Education.</p>','Dayananad','<p style=\'text-align: justify;text-decoration: none;color: #f57c20;\'>Dayananda Reddy Foundation</p>',0,'Fri Aug 24 2018','<p style=\'text-align: justify;\'>Dayananda Reddy is one such rare conscientious individual who has done everything in his means to make society a better place. He believes in the ability of each and every citizen and collective will that will bring together the efforts of innumerable such well-meaning individuals and bring about the change that everyone welcomes.</p><br/><p style=\'text-align: justify;\'>His contributions to society, mainly to students began due to the hardships that he faced to get academic accreditation. The struggle that he faced to complete his education was in a way responsible for him to be the cause for thousands of students to be aided by his philanthropic grants and thus be spared the same struggle to them to get educated.</p><br/><p style=\'text-align: justify;\'>After completing his basic education, he initiated his professional career as the Head of Sales & Marketing at Legacy Global Projects Pvt. Ltd. where he immersed himself completely for 8 years (2007 - 2015) and got a firm grip on every nuance of organized productive activity and the need to equip ourselves with the nuances of contemporary corporate etiquette and in inculcating the ability to be on par with global standards.</p><br/><p style=\'text-align: justify;\'>True development for the entire community is the supreme goal. Deliberate and persistent efforts to bring about Social Justice is the need of the hour. A healthy society with a great future is only possible when every aspect of human indulgence is self driven with long-term benefits accruing on every citizen.</p><br/><p style=\'text-align: justify;\'>It is the prime responsibility of an elected representative to serve the people by going beyond his means and ensure that through education and employment, the productive activities of the common man is nourished and enhanced.\r\n\r\n\r\nThe focused promotion of education, health, art and culture, along with better public amenities (Parks, recreational facilities, elder care homes, etc.)</p><br/>','blogimg1.jpg','blog1.jpg','Social'),(7,'<p style=\'text-align: justify;\'>Responding to the needs of children and women in India DAYANAND FOUNDATION is a registered non-government organization, which works purely on a nonprofit basis.</p>','Dayananad','<p style=\'text-align: justify;text-decoration: none;color: #f57c20;\'>Responding to the needs of children and women</p>',0,'Tue Jul 31 2018','<p style=\'text-align: justify;\'>Responding to the needs of children and women in India DAYANAND FOUNDATION is a registered non-government organization, which works purely on a nonprofit basis.</p><br/>','edublog1.JPG','edublog1.JPG','Education'),(8,'<p style=\'text-align: justify;\'>Thank you all for being part of a wonderful cause today. Dayananda foundation celebrates its 6th anniversary today reaching a new milestone of 7500+ adopted students.</p>','Dayananad','<p style=\'text-align: justify;text-decoration: none;color: #f57c20;\'>Anniversary  Celebration</p>',0,'Sun Jul 29 2018','<p style=\'text-align: justify;\'>Thank you all for being part of a wonderful cause today. Dayananda foundation celebrates its 6th anniversary today reaching a new milestone of 7500+ adopted students.</p><br/>','edublog2.jpg','edublog2.jpg','Education'),(9,'<p style=\'text-align: justify;\'>Thank you all for being part of a wonderful cause today. Dayananda foundation celebrates its 6th anniversary today reaching a new milestone of 7500+ adopted students.</p>','Dayananad','<p style=\'text-align: justify;text-decoration: none;color: #f57c20;\'>Distribution  of Bags of the Students </p>',0,'Sat Jul 21 2018','<p style=\'text-align: justify;\'>Thank you all for being part of a wonderful cause today. Dayananda foundation celebrates its 6th anniversary today reaching a new milestone of 7500+ adopted students.</p><br/>','edublog3.jpg','edublog3.jpg','Education'),(10,'<p style=\'text-align: justify;\'>Responding to the needs of children and women in India DAYANAND FOUNDATION is a registered non-government organization, which works purely on a nonprofit basis.\r\n</p>','Dayananad','<p style=\'text-align: justify;text-decoration: none;color: #f57c20;\'>Distribution of Medicines to the Children\'s </p>',0,'Wed Aug 22 2018','<p style=\'text-align: justify;\'>Responding to the needs of children and women in India DAYANAND FOUNDATION is a registered non-government organization, which works purely on a nonprofit basis.\r\n\r\n</p><br/>','edublog4.JPG','edublog4.JPG','Education');

/*Table structure for table `dreddyfbanner` */

DROP TABLE IF EXISTS `dreddyfbanner`;

CREATE TABLE `dreddyfbanner` (
  `banner_id` int(20) NOT NULL AUTO_INCREMENT,
  `banner_image` varchar(30) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`banner_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/*Data for the table `dreddyfbanner` */

insert  into `dreddyfbanner`(`banner_id`,`banner_image`) values (1,'backgroundddd.jpg'),(2,'background.jpg');

/*Table structure for table `dreddyfgallarey` */

DROP TABLE IF EXISTS `dreddyfgallarey`;

CREATE TABLE `dreddyfgallarey` (
  `galleryimg_id` int(20) NOT NULL AUTO_INCREMENT,
  `gallery_image` varchar(30) COLLATE utf8_unicode_ci DEFAULT NULL,
  `galleryimg_type` varchar(30) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`galleryimg_id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/*Data for the table `dreddyfgallarey` */

insert  into `dreddyfgallarey`(`galleryimg_id`,`gallery_image`,`galleryimg_type`) values (1,'1.jpg','blooddonation'),(3,'2.jpg','blooddonation'),(4,'3.jpg','medicalcamp'),(5,'4.jpg','medicalcamp'),(8,'6.jpg','fundraise'),(9,'12.jpg','fundraise'),(12,'7.jpg','planting'),(13,'8.jpg','planting');

/*Table structure for table `dreddyfvideos` */

DROP TABLE IF EXISTS `dreddyfvideos`;

CREATE TABLE `dreddyfvideos` (
  `video_id` int(10) NOT NULL AUTO_INCREMENT,
  `video_path` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`video_id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/*Data for the table `dreddyfvideos` */

insert  into `dreddyfvideos`(`video_id`,`video_path`) values (1,'https://www.youtube.com/embed/LaSv_INZJTM'),(2,'https://www.youtube.com/embed/hJZIRTvmSBY'),(3,'https://www.youtube.com/embed/1U2LXJ-dnn0'),(4,'https://www.youtube.com/embed/aABVU4NH5iU'),(5,'https://www.youtube.com/embed/zJ8MGAJtKaY'),(6,'https://www.youtube.com/embed/hJZIRTvmSBY'),(7,'https://www.youtube.com/embed/pq8vp79fSCk');

/*Table structure for table `dreddyquotes` */

DROP TABLE IF EXISTS `dreddyquotes`;

CREATE TABLE `dreddyquotes` (
  `quote_id` int(10) NOT NULL AUTO_INCREMENT,
  `quote_msg` mediumtext COLLATE utf8_unicode_ci,
  PRIMARY KEY (`quote_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/*Data for the table `dreddyquotes` */

insert  into `dreddyquotes`(`quote_id`,`quote_msg`) values (1,'The most powerful force against corruption is our voters, who can elect honest & responsible representatives. It is your tax  paid money being robbed, please vote against corruption.,,'),(2,'If we eradicate corruption in \r\nour nation; nobody would sleep\r\nhungry, nobody would be homeless,\r\nour government hospitals & \r\nschools would bean the private\r\nones ,every child would be getting\r\nquality education.,,'),(3,'The most powerful force against\r\ncorruption is our voters, who \r\ncan elect honest & responsible \r\nrepresentatives. It is your tax \r\npaid money being robbed,\r\nplease vote against corruption.,,');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
