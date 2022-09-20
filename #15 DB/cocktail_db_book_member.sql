-- MySQL dump 10.13  Distrib 8.0.30, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: cocktail_db
-- ------------------------------------------------------
-- Server version	8.0.30

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `book_member`
--

DROP TABLE IF EXISTS `book_member`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `book_member` (
  `memberId` varchar(50) NOT NULL,
  `memberPw` varchar(100) NOT NULL,
  `memberName` varchar(30) NOT NULL,
  `memberMail` varchar(100) NOT NULL,
  `memberAddr1` varchar(100) NOT NULL,
  `memberAddr2` varchar(100) NOT NULL,
  `memberAddr3` varchar(100) NOT NULL,
  `adminCk` int NOT NULL,
  `regDate` date NOT NULL,
  `money` int NOT NULL,
  `point` int NOT NULL,
  `memberMbtiNo` int DEFAULT NULL,
  `memberAge` int DEFAULT NULL,
  `memberGender` varchar(15) DEFAULT NULL,
  `memberGradeNo` int DEFAULT NULL,
  `countAttendance` int DEFAULT NULL,
  `countPost` int DEFAULT NULL,
  `memberQuestionNo` int DEFAULT NULL,
  PRIMARY KEY (`memberId`),
  UNIQUE KEY `member_id_UNIQUE` (`memberId`),
  UNIQUE KEY `memberPw_UNIQUE` (`memberPw`),
  KEY `memberQuestionNo_idx` (`memberQuestionNo`),
  KEY `memberGradeNo_idx` (`memberGradeNo`),
  KEY `memberMbtiNo_idx` (`memberMbtiNo`),
  CONSTRAINT `memberGradeNo` FOREIGN KEY (`memberGradeNo`) REFERENCES `member_grades` (`gradeNo`),
  CONSTRAINT `memberMbtiNo` FOREIGN KEY (`memberMbtiNo`) REFERENCES `mbti` (`mbtiNo`),
  CONSTRAINT `memberQuestionNo` FOREIGN KEY (`memberQuestionNo`) REFERENCES `question` (`questionNo`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COMMENT='회원 테이블';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `book_member`
--

LOCK TABLES `book_member` WRITE;
/*!40000 ALTER TABLE `book_member` DISABLE KEYS */;
INSERT INTO `book_member` VALUES ('admin','admin','admin','admin','admin','admin','admin',1,'2020-08-13',10000000,1000000,NULL,NULL,NULL,NULL,NULL,NULL,NULL),('test','$2a$10$B8.A92tsbho5W37TgXfNp.cg0HEpUJHeNjEc9xSalHddYOIZ2NaOG','test','test@asdf.com','08263','서울 구로구 경인로 5 (온수동)','ㅁㄴㅇㄹ',1,'2022-09-19',0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `book_member` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-09-20 20:34:39
