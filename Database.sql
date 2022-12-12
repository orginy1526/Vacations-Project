-- MySQL dump 10.13  Distrib 8.0.30, for Win64 (x86_64)
--
-- Host: localhost    Database: project3
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
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `id` int NOT NULL AUTO_INCREMENT,
  `first_name` varchar(45) DEFAULT NULL,
  `last_name` varchar(45) DEFAULT NULL,
  `user_name` varchar(45) DEFAULT NULL,
  `password` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=177 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'or','giny','admin','12345678'),(2,'tal','levi','talevi','1234'),(3,'sahar','kamar','kamar','123sahar'),(6,'tal','cohen','talco','10203040'),(147,'guy','cohen','guyco','12345'),(152,'itzik','gini','ig','050989');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users_2_vacations`
--

DROP TABLE IF EXISTS `users_2_vacations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users_2_vacations` (
  `user_id` int NOT NULL,
  `vacation_id` int NOT NULL,
  PRIMARY KEY (`user_id`,`vacation_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users_2_vacations`
--

LOCK TABLES `users_2_vacations` WRITE;
/*!40000 ALTER TABLE `users_2_vacations` DISABLE KEYS */;
INSERT INTO `users_2_vacations` VALUES (0,19),(0,26),(1,2),(1,25),(2,26),(2,29),(2,31),(2,32),(2,33),(2,34),(2,35),(2,42),(2,99),(3,16),(9,2),(23,23),(89,24),(98,1),(98,15),(98,19),(98,20),(98,21),(98,22),(98,23),(98,24),(98,26),(98,27),(98,28),(99,2),(99,94),(99,95),(99,96),(99,97),(99,98),(99,99),(149,26),(149,42),(150,26),(151,29),(152,26),(153,29),(154,26),(155,26),(175,30);
/*!40000 ALTER TABLE `users_2_vacations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vacations`
--

DROP TABLE IF EXISTS `vacations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `vacations` (
  `id` int NOT NULL AUTO_INCREMENT,
  `description` longtext,
  `destination` varchar(45) DEFAULT NULL,
  `image` longtext,
  `start_date` datetime DEFAULT NULL,
  `end_date` datetime DEFAULT NULL,
  `price` int DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=44 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vacations`
--

LOCK TABLES `vacations` WRITE;
/*!40000 ALTER TABLE `vacations` DISABLE KEYS */;
INSERT INTO `vacations` VALUES (16,'NYC, is the most populous city in the United States. With a 2020 population of 8,804,190 distributed over 300.46 square miles','New York','https://upload.wikimedia.org/wikipedia/commons/thumb/0/05/View_of_Empire_State_Building_from_Rockefeller_Center_New_York_City_dllu.jpg/268px-View_of_Empire_State_Building_from_Rockefeller_Center_New_York_City_dllu.jpg','2022-12-04 00:00:00','2022-12-03 00:00:00',2556),(19,' the capital and most populous city of France, with an estimated population of 2,165,423','paris','https://upload.wikimedia.org/wikipedia/commons/thumb/4/4b/La_Tour_Eiffel_vue_de_la_Tour_Saint-Jacques%2C_Paris_ao%C3%BBt_2014_%282%29.jpg/268px-La_Tour_Eiffel_vue_de_la_Tour_Saint-Jacques%2C_Paris_ao%C3%BBt_2014_%282%29.jpg','2022-12-03 00:00:00','2022-12-03 00:00:00',2332),(26,'city in Western Asia. Situated on a plateau in the Judaean Mountains between the Mediterranean and the Dead Sea','Jerusalem','https://upload.wikimedia.org/wikipedia/commons/thumb/0/06/Film_location_of_Appointment_with_Death_%281988%29.jpg/288px-Film_location_of_Appointment_with_Death_%281988%29.jpg','2022-12-03 00:00:00','2022-12-03 00:00:00',2332),(29,' capital and largest city of Japan.[8] Formerly known as Edo, its metropolitan area (13,452 square kilometers or 5,194 square miles) ','Tokyo','https://upload.wikimedia.org/wikipedia/commons/thumb/b/b2/Skyscrapers_of_Shinjuku_2009_January.jpg/268px-Skyscrapers_of_Shinjuku_2009_January.jpg','2022-12-03 00:00:00','2022-12-03 00:00:00',1322),(30,'city on the coast of northeastern Spain. It is the capital and largest city of the autonomous community of Catalonia','Barcelona','https://upload.wikimedia.org/wikipedia/commons/thumb/8/8d/Barcelona_collage.JPG/280px-Barcelona_collage.JPG','2022-12-03 00:00:00','2022-12-03 00:00:00',1333),(31,' the capital and the largest city of Georgia','Tbilisi','https://upload.wikimedia.org/wikipedia/commons/thumb/0/0c/2014_Tbilisi%2C_Widoki_z_Twierdzy_Narikala_%2836%29.jpg/280px-2014_Tbilisi%2C_Widoki_z_Twierdzy_Narikala_%2836%29.jpg','2022-12-07 00:00:00','2022-12-15 00:00:00',2333),(32,'is the most densely populated and geographically smallest of the five boroughs of New York City','Manhattan','https://upload.wikimedia.org/wikipedia/commons/thumb/a/a5/West_side_of_Manhattan_from_Hudson_Commons_%2895103p%29.jpg/300px-West_side_of_Manhattan_from_Hudson_Commons_%2895103p%29.jpg','2022-12-07 00:00:00','2022-12-15 00:00:00',2333),(33,'Florida is a state located in the Southeastern region of the United States','Florida','https://upload.wikimedia.org/wikipedia/commons/thumb/f/f7/Flag_of_Florida.svg/250px-Flag_of_Florida.svg.png','2022-12-07 00:00:00','2022-12-15 00:00:00',2333),(34,'California is a state in the Western United States, located along the Pacific Coast. With nearly 39.2 million residents[8] ','California','https://upload.wikimedia.org/wikipedia/commons/thumb/0/01/Flag_of_California.svg/250px-Flag_of_California.svg.png','2022-12-07 00:00:00','2022-12-15 00:00:00',2333),(35,'Scrolling Bar','Scrolling Bar','https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRol51I5ku45HRmtJzPg6V6lV6fwOxItrsr3VuP3-J_hA&s','2022-12-07 00:00:00','2022-12-15 00:00:00',2333),(37,'New Jersey is a state in the Mid-Atlantic and Northeastern regions of the United States','New Jersey','https://upload.wikimedia.org/wikipedia/commons/thumb/9/92/Flag_of_New_Jersey.svg/250px-Flag_of_New_Jersey.svg.png','2022-12-07 00:00:00','2022-12-15 00:00:00',2333),(39,' the most populous city in the United Arab Emirates ','Dubai','https://upload.wikimedia.org/wikipedia/commons/thumb/c/c7/Burj_Khalifa_2021.jpg/278px-Burj_Khalifa_2021.jpg','2022-12-24 00:00:00','2022-12-31 00:00:00',3),(40,' It is situated in the northwest Pacific Ocean, and is bordered on the west by the Sea of Japan, while extending from the Sea of Okhotsk in the north toward the East China Sea, Philippine Sea, and Taiwan in the south','Japan','https://upload.wikimedia.org/wikipedia/en/thumb/9/9e/Flag_of_Japan.svg/125px-Flag_of_Japan.svg.png','2022-12-09 00:00:00','2022-12-16 00:00:00',12222),(41,'] is a country located in the middle of the Mediterranean Sea, in Southern Europe','Italy','https://upload.wikimedia.org/wikipedia/en/thumb/0/03/Flag_of_Italy.svg/125px-Flag_of_Italy.svg.png','2022-12-23 00:00:00','2022-12-23 00:00:00',11111),(42,'a municipality and seat of the district of Viana do Castelo in the Norte Region of Portugal','Viana do Castelo','https://upload.wikimedia.org/wikipedia/commons/thumb/0/0b/Viana_do_Castelo%2C_Portugal-1_%288610169337%29_%28cropped%29.jpg/280px-Viana_do_Castelo%2C_Portugal-1_%288610169337%29_%28cropped%29.jpg','2022-12-02 00:00:00','2022-12-09 00:00:00',444444);
/*!40000 ALTER TABLE `vacations` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-12-12  9:03:11
