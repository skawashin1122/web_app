--
-- Host: 127.0.0.1    Database: web_db
-- ------------------------------------------------------
-- Server version	8.0.19-debug

SET @old_autocommit=@@autocommit;

--
-- Current Database: `web_db`
--

/*!40000 DROP DATABASE IF EXISTS `web_db`*/;

CREATE DATABASE `web_db`;
USE `web_db`;

--
-- Table structure for table `jobs`
--

DROP TABLE IF EXISTS `jobs`;

CREATE TABLE `jobs` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `job_name` varchar(10) DEFAULT NULL,
  `vitality` int(11) DEFAULT NULL,
  `strength` int(11) DEFAULT NULL,
  `agility` int(11) DEFAULT NULL,
  `intelligence` int(11) DEFAULT NULL,
  `luck` int(11) DEFAULT NULL,
PRIMARY KEY (`id`));

--
-- Dumping data for table `jobs`
--
-- ORDER BY:  `id`

set autocommit=0;
INSERT INTO `jobs` (job_name, vitality, strength, agility, intelligence, luck) VALUES ('戦士', 8, 8, 4, 4, 3);
INSERT INTO `jobs` (job_name, vitality, strength, agility, intelligence, luck) VALUES ('勇者', 10, 10, 10, 10, 10);
commit;

--
-- Table structure for table `players`
--

DROP TABLE IF EXISTS `players`;

CREATE TABLE `players` (
 `id` int(11) NOT NULL AUTO_INCREMENT,
 `name` varchar(32) DEFAULT NULL,
 `level` int(11) DEFAULT NULL,
 `job_id` int(11) DEFAULT NULL,
PRIMARY KEY (`id`));

--
-- Dumping data for table `players`
--
-- ORDER BY:  `id`

set autocommit=0;
INSERT INTO `players` (name, level, job_id) VALUES ('一郎', 9, 1);
INSERT INTO `players` (name, level, job_id) VALUES ('球志', 5, 2);
INSERT INTO `players` (name, level, job_id) VALUES ('花子', 2, 1);
commit;

--
-- Dumping events for database 'web_db'
--

--
-- Dumping routines for database 'web_db'
--
SET autocommit=@old_autocommit;
-- Dump completed on 2023-08-23  12:00:00
