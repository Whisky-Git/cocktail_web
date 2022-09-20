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
-- Table structure for table `cocktail_recipe`
--

DROP TABLE IF EXISTS `cocktail_recipe`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cocktail_recipe` (
  `cocktailNo` int NOT NULL AUTO_INCREMENT,
  `cocktailName` varchar(20) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NOT NULL COMMENT '칵테일 이름',
  `cocktailMaterials` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin DEFAULT NULL COMMENT '칵테일 제조 기법 빌드, 스터, 쉐이킹,블렌딩 등등',
  `cocktailMethod` varchar(30) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin DEFAULT NULL COMMENT '칵테일을 만드는데 필요한 재료들',
  `cocktailAbv` int DEFAULT NULL COMMENT '칵테일 도수\\\\alocohol by volume',
  `cocktailLevel` varchar(35) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin DEFAULT NULL,
  `cocktailCommentNo` int DEFAULT NULL,
  `cocktailCategory` varchar(45) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin DEFAULT NULL,
  PRIMARY KEY (`cocktailNo`),
  UNIQUE KEY `cocktail_name_UNIQUE` (`cocktailName`),
  UNIQUE KEY `cocktail_no_UNIQUE` (`cocktailNo`),
  KEY `cocktail_question_idx` (`cocktailNo`),
  KEY `cocktailCommentNo_idx` (`cocktailCommentNo`),
  CONSTRAINT `cocktailCommentNo` FOREIGN KEY (`cocktailCommentNo`) REFERENCES `cocktail_comment` (`commentNo`)
) ENGINE=InnoDB AUTO_INCREMENT=50 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin COMMENT='칵테일 레시피';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cocktail_recipe`
--

LOCK TABLES `cocktail_recipe` WRITE;
/*!40000 ALTER TABLE `cocktail_recipe` DISABLE KEYS */;
INSERT INTO `cocktail_recipe` VALUES (1,'21세기','데낄라 블랑코 60ml, 카카오 화이트 23ml, 레몬즙 23ml, 아가베 시럽 1티스푼','쉐이킹',20,'상',NULL,NULL),(2,'가리발디','캄파리 45ml, 오렌지 주스 135ml','쉐이킹 or 블렌딩',20,'상',NULL,NULL),(3,'갓더터','보드카 60ml, 아마레또 30ml, 크림 30ml','빌드',20,'상',NULL,NULL),(4,'갓선','스카치 위스키 60ml, 아마레또 30ml, 크림 30ml','빌드',20,'상',NULL,NULL),(5,'갓파더','위스키 4, 아마레또 1 비율','빌드',20,'상',NULL,NULL),(6,'곤돌리에레','스카치 위스키 60ml, 마라스키노 30ml','스터',20,'상',NULL,NULL),(7,'골드 러쉬','버번 or 라이 or 블렌디드 위스키 60ml, 레몬즙 22.5ml, 꿀 22.5ml, 레몬 트위스트','쉐이킹',20,'상',NULL,NULL),(8,'골든 데이즈','피치트리 45ml, 진 15ml, 오렌지 주스 30ml ','쉐이킹',20,'상',NULL,NULL),(9,'골든 드림','갈리아노 30ml, 트리플 섹 15ml, 오렌지 주스 15ml, 크림 15ml','쉐이킹',20,'상',NULL,NULL),(10,'골든 드림2','갈리아노 30ml, 트리플 섹 30ml, 오렌지 주스 30ml, 크림 15ml','쉐이킹',20,'상',NULL,NULL),(11,'골든 마르가리따','데낄라 40ml, 오렌지 큐라소 20ml, 레몬즙 10ml','쉐이킹 or 빌드',20,'중',NULL,NULL),(12,'골든 캐딜락','크렘 드 카카오 60ml, 갈리아노 22.5ml, 크림 30ml','쉐이킹',20,'중',NULL,NULL),(13,'골든 피즈','진 45ml, 레몬즙 22.5ml, 심플시럽 22.5ml, 계란 1개, 드라이 쉐이킹 후 쉐이킹, 탄산수 90ml','쉐이킹',20,'중',NULL,NULL),(14,'그랑블루','피치트리 30ml, 블루 큐라소 15ml, 말리부 15ml, 사워믹스 60ml','쉐이킹',20,'중',NULL,NULL),(15,'그래스호퍼','민트 리큐르 30ml, 카카오 리큐르(화이트) 30ml, 우유 or 크림 30ml','쉐이킹(보스턴)',0,'중',NULL,NULL),(16,'그레네이드','진 52.5ml, 레몬즙 30ml, 쉐이킹 후 크러쉬드 아이스 가득, 그레나딘 시럽 22.5ml','쉐이킹',0,'중',NULL,NULL),(17,'그레이 하운드','진or보드카 45ml, 자몽 주스 적당량, 소금 약간','빌드',0,'중',NULL,NULL),(18,'그린 위도우','블루 큐라소 30ml, 오렌지 주스 45ml','빌드',0,'중',NULL,NULL),(19,'그린 피치','보드카 15ml, 멜론 리큐르 15ml, 피치 리큐르 22.5ml, 오렌지 주스 30ml, 사워믹스 30ml','블렌딩',0,'중',NULL,NULL),(20,'글래디에이터','샷 글라스에 아마레또 15ml, 셔던 컴포트 15ml, 유리잔에 오렌지 주스 60ml, 레몬라임 소다 60ml, 샷 글라스를 유리잔에 퐁당!','빌드',0,'중',NULL,NULL),(21,'글루미 바이올렛','데낄라 30ml, 블루 큐라소 15ml, 드라이 베르뭇 15ml, 라임즙 15ml, 크렌베리 주스 30ml','쉐이킹(보스턴)',0,'중',NULL,NULL),(22,'길다','블랑코 데낄라 60ml, 파인애플 주스 15ml, 라임즙 15ml, 계피시럽 15ml','쉐이킹',0,'중',NULL,NULL),(23,'김렛','드라이 진 45ml, 라임즙 15ml, 설탕시럽 7.5ml','쉐이킹',0,'중',NULL,NULL),(24,'깁슨','드라이 진 45ml, 드라이 베르뭇 22ml, 가니쉬로 칵테일 어니언 2~3개 풍덩','스터',0,'중',NULL,NULL),(25,'깔루아밀크','깔루아 30ml, 우유 120ml','빌드',0,'중',NULL,NULL),(26,'깔바도스 칵테일','애플 브랜디 60ml, 트리플 섹 15ml, 오렌지 주스 15ml, 레몬즙 15ml, 오렌지 비터 1대쉬','쉐이킹',0,'하',NULL,NULL),(27,'꿀벌의 키스','화이트 럼 45ml, 헤비 휘핑 크림 or 라이트 크림 30ml, 꿀 2작은술, 가니쉬 잘게 갈린 육두구','쉐이킹',0,'하',NULL,NULL),(28,'낙원','드라이 진 30ml, 오렌지 주스 30ml, 살구 or 애프리콧 브랜디 30ml','쉐이킹',0,'하',NULL,NULL),(29,'네그로니','캄파리 30ml, 베르뭇 로쏘 30ml, 진 30ml, 오렌지 or 레몬 껍질','스터',0,'하',NULL,NULL),(30,'네그로니 사워','진 23ml, 캄파리 23ml, 스윗 베르뭇 23ml, 레몬즙 30ml, 시럽 15ml, 계란 흰자 1개','쉐이킹',0,'하',NULL,NULL),(31,'뇌출혈','피치트리 2/3, 베일리스 1/3, 그레나딘 시럽 톡톡','플로팅',0,'하',NULL,NULL),(32,'뉴 스쿨 진 데이지','진 45ml, 레몬즙 15ml, 그레나딘 시럽 7.5ml, 심플시럽 7.5ml, 쉐이킹 후 탄산수 필업','쉐이킹',0,'하',NULL,NULL),(33,'뉴욕','버번 위스키 60ml, 레몬즙 30ml, 설탕 1티스푼, 그레나딘 시럽 1/2 티스푼','쉐이킹',0,'하',NULL,NULL),(34,'뉴욕2','버번 위스키 45ml, 라임즙 15ml, 설탕 1티스푼, 그레나딘 시럽 1/2 티스푼','쉐이킹',0,'하',NULL,NULL),(35,'니콜라시카','브랜디 or 꼬냑 25ml, 레몬 슬라이스 1조각 위에 설탕 1덩어리, 레몬과 설탕을 털어먹고 원샷!','빌드',0,'하',NULL,NULL),(36,'다이키리','화이트 럼 45ml, 라임즙 30ml, 설탕시럽 15ml, 라임 슬라이스','쉐이킹',0,'하',NULL,NULL),(37,'다이키리2','화이트 럼 60ml, 라임즙 20ml, 설탕시럽 10ml','쉐이킹',0,'하',NULL,NULL),(38,'다잉 바스타드','브랜디 or꼬냑 15ml, 진 15ml, 버번 15ml, 라임즙 15ml, 비터 2대쉬, 쉐이킹 후 진저비어 필업','쉐이킹',0,'하',NULL,NULL),(39,'닥터 킬러','론디아즈 15ml, 보드카 15ml, 진 15ml, 럼 15ml, 드람부이 15ml','빌드',0,'하',NULL,NULL),(40,'더 브로디','데낄라 30ml, 체리 히링 23ml, 스윗 베르뭇 23ml','쉐이킹',0,'하',NULL,NULL),(41,'더비','버번 or 라이 위스키 30ml, 라임즙 22.5ml, 스윗 베르뭇 15ml, 오렌지 큐라소 15ml, 레몬 웻지','쉐이킹',0,'하',NULL,NULL),(42,'더비 피즈','스카치 위스키 45ml, 오렌지 큐라소 1티스푼, 레몬즙 15ml, 설탕 1티스푼, 계란 1개, 쉐이킹 후 탄산수 필업','쉐이킹',0,'하',NULL,NULL),(43,'더스티 로즈','체리 브랜디 30ml, 크렘 드 카카오 화이트 15ml, 휘핑 크림 or 크림 60ml, 가니쉬 체리','쉐이킹',0,'하',NULL,NULL),(44,'더티 마더','브랜디 40ml, 깔루아 20ml','빌드',0,'하',NULL,NULL),(45,'데낄라 썬라이즈','데낄라 45ml, 오렌지 주스 80%, 그레나딘 시럽 15ml','빌드',0,'하',NULL,NULL),(46,'데드 바스타드','브랜디 or 꼬냑 15ml, 진 15ml, 버번 15ml, 화이트 럼 15ml, 라임즙 15ml, 비터 2대쉬, 쉐이킹 후 진저비어 필업','쉐이킹',0,'하',NULL,NULL),(47,'데저트 힐러','진 45ml, 체리 브랜디 15ml, 오렌지 주스 60ml, 쉐이킹 후 진저비어 60ml','쉐이킹',0,'하',NULL,NULL),(48,'데티니','데낄라 75ml, 드라이 베르뭇 15ml, 비터 1대쉬','스터',0,'하',NULL,NULL),(49,'도랄토','데낄라 45ml, 레몬즙 15ml, 설탕 1/2티스푼, 비터 1대쉬, 토닉워터 120ml(쉐이킹 후)','쉐이킹',0,'하',NULL,NULL);
/*!40000 ALTER TABLE `cocktail_recipe` ENABLE KEYS */;
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
