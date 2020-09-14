-- MySQL Administrator dump 1.4
--
-- ------------------------------------------------------
-- Server version	5.1.59-community


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;


--
-- Create schema students
--

CREATE DATABASE /*!32312 IF NOT EXISTS*/ students;
USE students;

--
-- Table structure for table `students`.`course`
--

DROP TABLE IF EXISTS `course`;
CREATE TABLE `course` (
  `id` double NOT NULL AUTO_INCREMENT,
  `course_name` varchar(45) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `students`.`course`
--

/*!40000 ALTER TABLE `course` DISABLE KEYS */;
INSERT INTO `course` (`id`,`course_name`) VALUES 
 (4,'BSIT'),
 (5,'BSCS'),
 (6,'BSIS');
/*!40000 ALTER TABLE `course` ENABLE KEYS */;


--
-- Table structure for table `students`.`registered_students`
--

DROP TABLE IF EXISTS `registered_students`;
CREATE TABLE `registered_students` (
  `id` double NOT NULL AUTO_INCREMENT,
  `first_name` varchar(45) NOT NULL,
  `last_name` varchar(45) NOT NULL,
  `age` int(10) unsigned NOT NULL,
  `gender` varchar(45) NOT NULL,
  `address` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `students`.`registered_students`
--

/*!40000 ALTER TABLE `registered_students` DISABLE KEYS */;
INSERT INTO `registered_students` (`id`,`first_name`,`last_name`,`age`,`gender`,`address`) VALUES 
 (1,'Tonmoy','Shaha',23,'male','Jessore,Khulna,Bangladesh'),
 (2,'Tarik','Billa',24,'male','Jessore,Khulna,Bangladesh'),
 (3,'Joti','Biswash',22,'female','Jessore,Khulna,Bangladesh');
/*!40000 ALTER TABLE `registered_students` ENABLE KEYS */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
