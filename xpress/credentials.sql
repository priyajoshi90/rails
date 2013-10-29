-- MySQL dump 10.13  Distrib 5.5.32, for debian-linux-gnu (i686)
--
-- Host: localhost    Database: xpress
-- ------------------------------------------------------
-- Server version	5.5.32-0ubuntu0.13.04.1

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
-- Table structure for table `bloggers`
--

DROP TABLE IF EXISTS `bloggers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bloggers` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `email` varchar(255) NOT NULL DEFAULT '',
  `encrypted_password` varchar(255) NOT NULL DEFAULT '',
  `reset_password_token` varchar(255) DEFAULT NULL,
  `reset_password_sent_at` datetime DEFAULT NULL,
  `remember_created_at` datetime DEFAULT NULL,
  `sign_in_count` int(11) DEFAULT '0',
  `current_sign_in_at` datetime DEFAULT NULL,
  `last_sign_in_at` datetime DEFAULT NULL,
  `current_sign_in_ip` varchar(255) DEFAULT NULL,
  `last_sign_in_ip` varchar(255) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `index_bloggers_on_email` (`email`),
  UNIQUE KEY `index_bloggers_on_reset_password_token` (`reset_password_token`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bloggers`
--

LOCK TABLES `bloggers` WRITE;
/*!40000 ALTER TABLE `bloggers` DISABLE KEYS */;
INSERT INTO `bloggers` VALUES (1,'p@j.com','$2a$10$FdAOZ37RcuMx13zXamyBlOVXaqQ2616PsVmvvHH.taoGSnXu6BZDW',NULL,NULL,NULL,28,'2013-10-28 08:37:48','2013-10-28 06:56:26','127.0.0.1','127.0.0.1','2013-10-23 05:30:22','2013-10-28 08:37:48'),(2,'p@l.com','$2a$10$vSv4GKwxXoPUnKmLL.W1MOknfT5AsnyNM1GslXFrFhgtNJsANh/zK',NULL,NULL,NULL,4,'2013-10-28 12:08:00','2013-10-28 06:41:13','127.0.0.1','127.0.0.1','2013-10-24 07:11:17','2013-10-28 12:08:00'),(3,'n@m.com','$2a$10$MB0iuZEw/ixXfCx6goF.z.koNvnY7b.02Di.Jdp4/dtKb0LOeqbbq',NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,'2013-10-25 06:20:18','2013-10-25 06:20:18'),(4,'n@g.com','$2a$10$A2Po0.9tKTHR2KFOVUGmEOeTLplos1Jm2NiEhU9jMmqx8MHY/tMv.',NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,'2013-10-25 09:19:12','2013-10-25 09:19:12'),(5,'r@j.com','$2a$10$jJ6JWmEI9B0hL7s2XRbyqOCR.MZ9bStxugMc9zp6YXBAS9Qbdr6tS',NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,'2013-10-28 05:51:46','2013-10-28 05:51:46'),(7,'g@j.com','$2a$10$YLxZl16T7.Gi3bOWlybk5.t93Hz5xDDYruFhMpofBJkhANSQrnB5K',NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,'2013-10-28 06:08:14','2013-10-28 06:08:14'),(8,'k@s.com','$2a$10$ieyTrEdifAbYQoOr15H/JuH0ckJi55YePGf2nZGSz7V/6L2LqI35i',NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,'2013-10-28 06:15:47','2013-10-28 06:15:47'),(9,'admin@1.com','$2a$10$rH4TSOO.reIpKmbIxA9vD.Kita25NuXXKznDOvdvideY/KgjmDwgK',NULL,NULL,NULL,15,'2013-10-28 12:26:12','2013-10-28 11:50:32','127.0.0.1','127.0.0.1','2013-10-28 06:58:20','2013-10-28 12:26:12'),(10,'admin@2.com','$2a$10$UhajrFkPOcDz0ImqxbH6bOo6TuURZTw6ZcVhVgnbvcJfuv8T9EFiS',NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,'2013-10-28 07:05:39','2013-10-28 07:05:39'),(11,'admin@3.com','$2a$10$zi.eyp1GQz/ne92n.qLQqODsuYKchVNyd4fK9WCRMAMPbXKf4NOMS',NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,'2013-10-28 07:11:54','2013-10-28 07:11:54'),(12,'a@r.com','$2a$10$bF.f66POSt3ftULRzKam2OZQGn7VZ91xsa8diNRTJRjenrtDz4aou',NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,'2013-10-28 07:38:12','2013-10-28 07:38:12'),(13,'ko@s.com','$2a$10$X8H.FinQ7eB8ItKwGzIEju5IBJCe9H6q0VodfbH5ek38LkylrtJuu',NULL,NULL,NULL,7,'2013-10-28 12:24:18','2013-10-28 12:21:32','127.0.0.1','127.0.0.1','2013-10-28 07:39:31','2013-10-28 12:24:18');
/*!40000 ALTER TABLE `bloggers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `details`
--

DROP TABLE IF EXISTS `details`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `details` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `firstname` varchar(255) DEFAULT NULL,
  `lastname` varchar(255) DEFAULT NULL,
  `dob` date DEFAULT NULL,
  `gender` varchar(6) DEFAULT NULL,
  `address` text,
  `role` varchar(10) DEFAULT NULL,
  `hobbies` varchar(255) DEFAULT NULL,
  `blogger_id` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `index_details_on_blogger_id` (`blogger_id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `details`
--

LOCK TABLES `details` WRITE;
/*!40000 ALTER TABLE `details` DISABLE KEYS */;
INSERT INTO `details` VALUES (1,'Priya','Joshi','2013-01-10','Female','fgjfgjh','su','Singing,Dancing',1,'2013-10-23 05:30:23','2013-10-23 05:30:23'),(2,'Parul','Luthra','2013-10-08','Female','Bareilly','normal','Singing',2,'2013-10-24 07:11:17','2013-10-28 06:26:53'),(3,'Nisha','Mittal','2013-03-10','Female','Dehradun','normal','Singing,Dancing',3,'2013-10-25 06:20:18','2013-10-28 06:25:11'),(4,'Noopur','Gupta','2013-08-10','Female','Kanpur','normal','Singing,Reading',4,'2013-10-25 09:19:12','2013-10-25 09:19:12'),(5,'Richa','Joshi','1990-09-23','Female','Bareilly','normal','Singing,Dancing',5,'2013-10-28 05:51:46','2013-10-28 06:19:08'),(7,'Garima','Jauhari','1992-09-01','Female','Bareilly','normal','Reading,Playing',7,'2013-10-28 06:08:14','2013-10-28 06:19:21'),(8,'Kritika','Saxena','1990-10-09','Female','Bareilly','normal','Dancing,Reading',8,'2013-10-28 06:15:47','2013-10-28 06:15:47'),(9,'Admin','1','1990-02-15','Male','Bareilly','admin','Reading',9,'2013-10-28 06:58:20','2013-10-28 06:58:20'),(10,'Admin','2','2013-10-02','Male','Bareilly','admin','Playing',10,'2013-10-28 07:05:39','2013-10-28 07:05:39'),(11,'Admin','3','2013-10-10','Male','Bareilly','admin','Playing',11,'2013-10-28 07:11:54','2013-10-28 07:11:54'),(12,'Abhinav','Rai','1990-10-05','Male','Bareilly','normal','Reading',12,'2013-10-28 07:38:12','2013-10-28 07:38:12'),(13,'Koustubh','Shrivastava','2013-10-01','Male','Bareilly','normal','',13,'2013-10-28 07:39:31','2013-10-28 07:39:31');
/*!40000 ALTER TABLE `details` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2013-10-29 11:06:06
