CREATE DATABASE  IF NOT EXISTS `loteriadb` /*!40100 DEFAULT CHARACTER SET latin1 COLLATE latin1_spanish_ci */;
USE `loteriadb`;
-- MySQL dump 10.13  Distrib 5.5.31, for debian-linux-gnu (x86_64)
--
-- Host: 127.0.0.1    Database: loteriadb
-- ------------------------------------------------------
-- Server version	5.5.31-0ubuntu0.13.04.1

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
-- Table structure for table `antonimo`
--

DROP TABLE IF EXISTS `antonimo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `antonimo` (
  `idAntonimo` int(11) NOT NULL AUTO_INCREMENT,
  `antonimo` varchar(45) COLLATE latin1_spanish_ci DEFAULT NULL,
  `idCarta` int(11) NOT NULL,
  `longitud` int(11) DEFAULT NULL,
  PRIMARY KEY (`idAntonimo`),
  KEY `fk_antonimo_carta1_idx` (`idCarta`),
  CONSTRAINT `fk_antonimo_carta1` FOREIGN KEY (`idCarta`) REFERENCES `carta` (`idCarta`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_spanish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `antonimo`
--

LOCK TABLES `antonimo` WRITE;
/*!40000 ALTER TABLE `antonimo` DISABLE KEYS */;
/*!40000 ALTER TABLE `antonimo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `area`
--

DROP TABLE IF EXISTS `area`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `area` (
  `idArea` int(11) NOT NULL AUTO_INCREMENT,
  `area` varchar(45) COLLATE latin1_spanish_ci DEFAULT NULL,
  PRIMARY KEY (`idArea`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_spanish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `area`
--

LOCK TABLES `area` WRITE;
/*!40000 ALTER TABLE `area` DISABLE KEYS */;
/*!40000 ALTER TABLE `area` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `aumentativo`
--

DROP TABLE IF EXISTS `aumentativo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `aumentativo` (
  `idAumentativo` int(11) NOT NULL AUTO_INCREMENT,
  `aumentativo` varchar(45) COLLATE latin1_spanish_ci DEFAULT NULL,
  `idCarta` int(11) NOT NULL,
  `longitud` int(11) DEFAULT NULL,
  PRIMARY KEY (`idAumentativo`),
  KEY `fk_aumentativo_carta1_idx` (`idCarta`),
  CONSTRAINT `fk_aumentativo_carta1` FOREIGN KEY (`idCarta`) REFERENCES `carta` (`idCarta`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_spanish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aumentativo`
--

LOCK TABLES `aumentativo` WRITE;
/*!40000 ALTER TABLE `aumentativo` DISABLE KEYS */;
/*!40000 ALTER TABLE `aumentativo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cargo`
--

DROP TABLE IF EXISTS `cargo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cargo` (
  `idCargo` int(11) NOT NULL AUTO_INCREMENT,
  `cargo` varchar(45) COLLATE latin1_spanish_ci DEFAULT NULL,
  PRIMARY KEY (`idCargo`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_spanish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cargo`
--

LOCK TABLES `cargo` WRITE;
/*!40000 ALTER TABLE `cargo` DISABLE KEYS */;
/*!40000 ALTER TABLE `cargo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `carta`
--

DROP TABLE IF EXISTS `carta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `carta` (
  `idCarta` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(20) COLLATE latin1_spanish_ci DEFAULT NULL,
  `descripcion` mediumtext COLLATE latin1_spanish_ci,
  `audio` varchar(150) COLLATE latin1_spanish_ci DEFAULT NULL,
  `imgMazo` varchar(150) COLLATE latin1_spanish_ci DEFAULT NULL,
  `imgPlantilla` varchar(150) COLLATE latin1_spanish_ci DEFAULT NULL,
  `longitud` int(11) DEFAULT NULL,
  PRIMARY KEY (`idCarta`)
) ENGINE=InnoDB AUTO_INCREMENT=55 DEFAULT CHARSET=latin1 COLLATE=latin1_spanish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `carta`
--

LOCK TABLES `carta` WRITE;
/*!40000 ALTER TABLE `carta` DISABLE KEYS */;
INSERT INTO `carta` VALUES (1,'gallo',NULL,NULL,NULL,NULL,5),(2,'diablo',NULL,NULL,NULL,NULL,6),(3,'dama',NULL,NULL,NULL,NULL,4),(4,'catrín',NULL,NULL,NULL,NULL,6),(5,'paraguas',NULL,NULL,NULL,NULL,8),(6,'sirena',NULL,NULL,NULL,NULL,6),(7,'escalera',NULL,NULL,NULL,NULL,8),(8,'botella',NULL,NULL,NULL,NULL,7),(9,'balón',NULL,NULL,NULL,NULL,5),(10,'árbol',NULL,NULL,NULL,NULL,5),(11,'maestro',NULL,NULL,NULL,NULL,7),(12,'valiente',NULL,NULL,NULL,NULL,8),(13,'gorro',NULL,NULL,NULL,NULL,5),(14,'muerte',NULL,NULL,NULL,NULL,6),(15,'burócrata',NULL,NULL,NULL,NULL,9),(16,'bandera',NULL,NULL,NULL,NULL,7),(17,'metro',NULL,NULL,NULL,NULL,5),(18,'ladrón',NULL,NULL,NULL,NULL,6),(19,'padre',NULL,NULL,NULL,NULL,5),(20,'pájaro',NULL,NULL,NULL,NULL,6),(21,'mano',NULL,NULL,NULL,NULL,4),(22,'bota',NULL,NULL,NULL,NULL,4),(23,'luna',NULL,NULL,NULL,NULL,4),(24,'cotorro',NULL,NULL,NULL,NULL,7),(25,'borracho',NULL,NULL,NULL,NULL,8),(26,'poeta',NULL,NULL,NULL,NULL,5),(27,'corazón',NULL,NULL,NULL,NULL,7),(28,'cigarro',NULL,NULL,NULL,NULL,7),(29,'tambor',NULL,NULL,NULL,NULL,6),(30,'madre',NULL,NULL,NULL,NULL,5),(31,'átomo',NULL,NULL,NULL,NULL,5),(32,'música',NULL,NULL,NULL,NULL,6),(33,'perro',NULL,NULL,NULL,NULL,5),(34,'computadora',NULL,NULL,NULL,NULL,11),(35,'libro',NULL,NULL,NULL,NULL,5),(36,'ceguera',NULL,NULL,NULL,NULL,7),(37,'mundo',NULL,NULL,NULL,NULL,5),(38,'campo',NULL,NULL,NULL,NULL,5),(39,'círculo',NULL,NULL,NULL,NULL,7),(40,'nave',NULL,NULL,NULL,NULL,4),(41,'rosa',NULL,NULL,NULL,NULL,4),(42,'calavera',NULL,NULL,NULL,NULL,8),(43,'teléfono',NULL,NULL,NULL,NULL,8),(44,'doctor',NULL,NULL,NULL,NULL,6),(45,'gato',NULL,NULL,NULL,NULL,4),(46,'sol',NULL,NULL,NULL,NULL,3),(47,'corona',NULL,NULL,NULL,NULL,6),(48,'chalupa',NULL,NULL,NULL,NULL,7),(49,'niño',NULL,NULL,NULL,NULL,4),(50,'pescado',NULL,NULL,NULL,NULL,7),(51,'ciudad',NULL,NULL,NULL,NULL,6),(52,'bailarina',NULL,NULL,NULL,NULL,9),(53,'beso',NULL,NULL,NULL,NULL,4),(54,'rana',NULL,NULL,NULL,NULL,4);
/*!40000 ALTER TABLE `carta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `derAdjetivo`
--

DROP TABLE IF EXISTS `derAdjetivo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `derAdjetivo` (
  `idDerAdjetivo` int(11) NOT NULL AUTO_INCREMENT,
  `derAdjetivo` varchar(45) COLLATE latin1_spanish_ci DEFAULT NULL,
  `idCarta` int(11) NOT NULL,
  `longitud` int(11) DEFAULT NULL,
  PRIMARY KEY (`idDerAdjetivo`),
  KEY `fk_derAdjetivo_carta1_idx` (`idCarta`),
  CONSTRAINT `fk_derAdjetivo_carta1` FOREIGN KEY (`idCarta`) REFERENCES `carta` (`idCarta`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=228 DEFAULT CHARSET=latin1 COLLATE=latin1_spanish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `derAdjetivo`
--

LOCK TABLES `derAdjetivo` WRITE;
/*!40000 ALTER TABLE `derAdjetivo` DISABLE KEYS */;
INSERT INTO `derAdjetivo` VALUES (1,'gallesco',1,8),(2,'galloso',1,7),(3,'gallino',1,7),(4,'gallito',1,7),(5,'diabólico',2,9),(6,'endiablado',2,10),(7,'diabluno',2,8),(8,'diablesco',2,9),(9,'diabloso',2,8),(10,'damoso',3,6),(11,'damal',3,5),(12,'damuno',3,6),(13,'damesco',3,7),(14,'damino',3,6),(15,'catrín',4,6),(16,'catrinoso',4,9),(17,'catrinal',4,8),(18,'catrinuno',4,9),(19,'catrimesco',4,10),(20,'encatrinado',4,11),(21,'paragual',5,8),(22,'pargüil',5,7),(23,'paragüeño',5,9),(24,'paraguoso',5,9),(25,'paragüesco',5,10),(26,'paraguasado',5,11),(27,'sirenal',6,7),(28,'sirenoso',6,8),(29,'sirenesco',6,9),(30,'sirénico',6,8),(31,'sireniento',6,10),(32,'sirenil',6,7),(33,'sirenizado',6,10),(34,'escalérico',7,10),(35,'escaleroso',7,10),(36,'escaleril',7,9),(37,'escalerino',7,10),(38,'escalerado',7,10),(39,'embotellado',8,11),(40,'botelloso',8,9),(41,'botellesco',8,10),(42,'botellal',8,8),(43,'botelluzco',8,10),(44,'balonudo',9,8),(45,'baloneado',9,9),(46,'balonil',9,7),(47,'balonoso',9,8),(48,'balonesco',9,9),(49,'arbóreo',10,7),(50,'arbolesco',10,9),(51,'arboloso',10,8),(52,'arbolino',10,8),(53,'magistral',11,9),(54,'amaestrado',11,10),(55,'maestroso',11,9),(56,'maestrino',11,9),(57,'valiente',12,8),(58,'valeroso',12,8),(59,'envalentonado',12,13),(60,'gorroso',13,7),(61,'gorrino gorril',13,14),(62,'gorroneado',13,10),(63,'mortal',14,6),(64,'mortífero',14,9),(65,'muerto',14,6),(66,'mortuorio',14,9),(67,'mortecino',14,9),(68,'burocrático',15,11),(69,'burocratoso',15,11),(70,'burocretino',15,11),(71,'burocratón',15,10),(72,'burocratizado',15,13),(73,'abanderado',16,10),(74,'banderal',16,8),(75,'banderáceo',16,10),(76,'banderuzco',16,10),(77,'métrico',17,7),(78,'metroso',17,7),(79,'metresco',17,8),(80,'metruno',17,7),(81,'ladrón',18,6),(82,'ladronal',18,8),(83,'ladronesco',18,10),(84,'paterno',19,7),(85,'paternal',19,8),(86,'padresco',19,8),(87,'pajaril',20,7),(88,'pajaresco',20,9),(89,'pajaruzco',20,9),(90,'pajaroso',20,8),(91,'pajarino',20,8),(92,'manual',21,6),(93,'manada',21,6),(94,'mandado',21,7),(95,'botado',22,6),(96,'botesco',22,7),(97,'botino',22,6),(98,'botal',22,5),(99,'lunar',23,8),(100,'lunático',23,7),(101,'lunario',23,7),(102,'lunesco',23,7),(103,'cotorro',24,10),(104,'cotorreado',24,10),(105,'cotorresco',24,8),(106,'cotorrón',24,8),(107,'borracho',25,12),(108,'emborrachado',25,10),(109,'borrachino',25,7),(110,'poético',26,9),(111,'poetizado',26,8),(112,'poetáceo',26,7),(113,'poetoso',26,8),(114,'poetible',26,6),(115,'poetil',26,6),(116,'poetal',26,8),(117,'poetario',26,8),(118,'cardiaco',27,13),(119,'descorazonado',27,11),(120,'corazonesco',27,9),(121,'corazonil',27,9),(122,'corazonizo',27,10),(123,'cigarroso',28,9),(124,'cigarresco',28,10),(125,'cigarrila',28,10),(126,'cigarrado',28,9),(127,'cigarral',28,8),(128,'tamboril',29,8),(129,'tambórico',29,9),(130,'tamboresco',29,10),(131,'tamborino',29,9),(132,'tamboroso',29,9),(133,'materno',30,7),(134,'maternal',30,8),(135,'madresco',30,8),(136,'atómico',31,7),(137,'atomal',31,6),(138,'atomesco',31,8),(139,'musical',32,7),(140,'musicalizado',32,12),(141,'musicoso',32,8),(142,'musicalesco',32,11),(143,'perruno',33,7),(144,'aperrado',33,8),(145,'perro',33,5),(146,'perrón',33,6),(147,'computacional',34,13),(148,'computadorizado',34,15),(149,'computadoresco',34,14),(150,'libresco',35,8),(151,'libruno',35,7),(152,'libroso',35,7),(153,'cegado',36,6),(154,'ciego',36,5),(155,'cegatón',36,7),(156,'mundial',37,7),(157,'mundializado',37,12),(158,'mundesco',37,8),(159,'campestre',38,9),(160,'campirano',38,9),(161,'acampado',38,8),(162,'campal',38,6),(163,'circular',39,8),(164,'circulado',39,9),(165,'circulino',39,9),(166,'navegante',40,9),(167,'navegado',40,8),(168,'navegable',40,9),(169,'rosa',41,4),(170,'rosado',41,6),(171,'rosáceo',41,7),(172,'calavérico',42,10),(173,'calaverada',42,10),(174,'calaveresco',42,11),(175,'calaverario',42,11),(176,'calaverino',42,10),(177,'calaveruzco',42,11),(178,'telefónico',43,10),(179,'telefoneado',43,11),(180,'telefonesco',43,11),(181,'telefonal',43,9),(182,'doctoral',44,8),(183,'doctorado',44,9),(184,'doctoresco',44,10),(185,'gatuno',45,6),(186,'engatusado',45,10),(187,'gatoso',45,6),(188,'gatesco',45,7),(189,'soleado',46,7),(190,'solar',46,5),(191,'asoleado',46,8),(192,'coronado',47,8),(193,'coronal',47,7),(194,'coronil',47,7),(195,'coronesco',47,9),(196,'chalupes',48,8),(197,'cochalupano',48,11),(198,'chaluposo',48,9),(199,'aniñado',49,7),(200,'niñesco',49,7),(201,'niñoso',49,6),(202,'infantil',49,8),(203,'niñáceo',49,7),(204,'pescado',50,7),(205,'pescadesco',50,10),(206,'pescadil',50,8),(207,'pescadano',50,9),(208,'pescadoso',50,9),(209,'pescadáceo',50,10),(210,'pescaduzco',50,10),(211,'ciudadano',51,9),(212,'ciudadesco',51,10),(213,'citadino',51,8),(214,'bailarina',52,9),(215,'bailado',52,7),(216,'bailable',52,8),(217,'besado',53,6),(218,'besucón',53,7),(219,'besuqueado',53,10),(220,'besable',53,7),(221,'besoso',53,6),(222,'ranal',54,5),(223,'ranudo',54,6),(224,'ranoso',54,6),(225,'ranino',54,6),(226,'ranesco',54,7),(227,'ranil',54,5);
/*!40000 ALTER TABLE `derAdjetivo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `derSustantivo`
--

DROP TABLE IF EXISTS `derSustantivo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `derSustantivo` (
  `idDerSustantivo` int(11) NOT NULL AUTO_INCREMENT,
  `derSustantivo` varchar(45) COLLATE latin1_spanish_ci DEFAULT NULL,
  `idCarta` int(11) NOT NULL,
  `longitud` int(11) DEFAULT NULL,
  PRIMARY KEY (`idDerSustantivo`),
  KEY `fk_derSustantivo_carta1_idx` (`idCarta`),
  CONSTRAINT `fk_derSustantivo_carta1` FOREIGN KEY (`idCarta`) REFERENCES `carta` (`idCarta`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_spanish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `derSustantivo`
--

LOCK TABLES `derSustantivo` WRITE;
/*!40000 ALTER TABLE `derSustantivo` DISABLE KEYS */;
/*!40000 ALTER TABLE `derSustantivo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `derVerbo`
--

DROP TABLE IF EXISTS `derVerbo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `derVerbo` (
  `idDerVerbo` int(11) NOT NULL AUTO_INCREMENT,
  `derVerbo` varchar(45) COLLATE latin1_spanish_ci DEFAULT NULL,
  `idCarta` int(11) NOT NULL,
  `longitud` int(11) DEFAULT NULL,
  PRIMARY KEY (`idDerVerbo`),
  KEY `fk_derVerbo_carta1_idx` (`idCarta`),
  CONSTRAINT `fk_derVerbo_carta1` FOREIGN KEY (`idCarta`) REFERENCES `carta` (`idCarta`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_spanish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `derVerbo`
--

LOCK TABLES `derVerbo` WRITE;
/*!40000 ALTER TABLE `derVerbo` DISABLE KEYS */;
/*!40000 ALTER TABLE `derVerbo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `diminutivo`
--

DROP TABLE IF EXISTS `diminutivo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `diminutivo` (
  `idDiminutivo` int(11) NOT NULL AUTO_INCREMENT,
  `diminutivo` varchar(45) COLLATE latin1_spanish_ci DEFAULT NULL,
  `idCarta` int(11) NOT NULL,
  `longitud` int(11) DEFAULT NULL,
  PRIMARY KEY (`idDiminutivo`),
  KEY `fk_diminutivo_carta1_idx` (`idCarta`),
  CONSTRAINT `fk_diminutivo_carta1` FOREIGN KEY (`idCarta`) REFERENCES `carta` (`idCarta`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=327 DEFAULT CHARSET=latin1 COLLATE=latin1_spanish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `diminutivo`
--

LOCK TABLES `diminutivo` WRITE;
/*!40000 ALTER TABLE `diminutivo` DISABLE KEYS */;
INSERT INTO `diminutivo` VALUES (1,'gallito',1,7),(2,'gallillo',1,8),(3,'gallico',1,7),(4,'gallete',1,7),(5,'gallín',1,6),(6,'galluco',1,7),(7,'diablito',2,8),(8,'diablillo',2,9),(9,'diablico',2,8),(10,'diablete',2,8),(11,'diablín',2,7),(12,'diabluco',2,8),(13,'damita',3,6),(14,'damilla',3,7),(15,'damica',3,6),(16,'dameta',3,6),(17,'damina',3,6),(18,'damuca',3,6),(19,'catrincito',4,10),(20,'catrincillo',4,11),(21,'catrincico',4,10),(22,'catrinete',4,9),(23,'catrinín',4,8),(24,'catrinuco',4,9),(25,'paragüitas',5,10),(26,'paragüillas',5,11),(27,'paraguasico',5,11),(28,'paraguasete',5,11),(29,'paragüín',5,8),(30,'paraguasuco',5,11),(31,'sirenita',6,8),(32,'sirenilla',6,9),(33,'sirenica',6,8),(34,'sireneta',6,8),(35,'sirenina',6,8),(36,'sirenuca',6,8),(37,'escalerita',7,10),(38,'escalerilla',7,11),(39,'escalerica',7,10),(40,'escalereta',7,10),(41,'escalerina',7,10),(42,'escaleruca',7,10),(43,'botellita',8,9),(44,'botellilla',8,10),(45,'botellica',8,9),(46,'botelleta',8,9),(47,'botellina',8,9),(48,'botelluca',8,9),(49,'baloncito',9,9),(50,'baloncillo',9,10),(51,'baloncico',9,9),(52,'baloncete',9,9),(53,'baloncino',9,9),(54,'balonuco',9,8),(55,'arbolito',10,8),(56,'arbolillo',10,9),(57,'arbolico',10,8),(58,'arbolete',10,8),(59,'arbolín',10,7),(60,'arboluco',10,8),(61,'maestrito',11,9),(62,'maestrillo',11,10),(63,'maestrico',11,9),(64,'maestrete',11,9),(65,'maestrín',11,8),(66,'maestruco',11,9),(67,'valientito',12,10),(68,'valientillo',12,11),(69,'valientico',12,10),(70,'valientete',12,10),(71,'valientín',12,9),(72,'valientuco',12,10),(73,'gorrito',13,7),(74,'gorrillo',13,8),(75,'gorrico',13,7),(76,'gorrete',13,7),(77,'gorrín',13,6),(78,'gorruco',13,7),(79,'muertecita',14,10),(80,'muertecilla',14,11),(81,'muertica',14,8),(82,'muerteta',14,8),(83,'muertina',14,8),(84,'muertuca',14,8),(85,'muertita',14,8),(86,'burocratito',15,11),(87,'burocratillo',15,12),(88,'burocratico',15,11),(89,'burocratete',15,11),(90,'burocratín',15,10),(91,'burocratuco',15,11),(92,'banderita',16,9),(93,'banderilla',16,10),(94,'banderica',16,9),(95,'bandereta',16,9),(96,'banderín',16,8),(97,'banderuca',16,9),(98,'metrito',17,7),(99,'metrillo',17,7),(100,'metrico',17,7),(101,'metrete',17,6),(102,'metrín',17,7),(103,'metruco',17,10),(104,'ladroncito',18,11),(105,'ladroncillo',18,10),(106,'ladroncico',18,10),(107,'ladroncete',18,9),(108,'ladroncín',18,9),(109,'ladronuco',18,9),(110,'padrecito',19,10),(111,'padrecillo',19,9),(112,'padrecico',19,9),(113,'padrecete',19,8),(114,'padrecín',19,7),(115,'padruco',19,8),(116,'pajarito',20,9),(117,'pajarillo',20,8),(118,'pajarico',20,8),(119,'pajarete',20,7),(120,'pajarín',20,8),(121,'pajaruco',20,8),(122,'manita',21,6),(123,'manilla',21,7),(124,'manica',21,6),(125,'maneta',21,6),(126,'manina',21,6),(127,'manuca',21,6),(128,'botita',22,6),(129,'botilla',22,7),(130,'botica',22,6),(131,'boteta',22,6),(132,'botín',22,5),(133,'botuca',22,6),(134,'botina',22,6),(135,'lunita',23,6),(136,'lunilla',23,7),(137,'lunica',23,6),(138,'luneta',23,6),(139,'lunina',23,6),(140,'lunuca',23,6),(141,'cotorrito',24,9),(142,'cotorrillo',24,10),(143,'cotorrico',24,9),(144,'cotorrete',24,9),(145,'cotorrín',24,8),(146,'cotorruco',24,9),(147,'borrachito',25,10),(148,'borrachillo',25,11),(149,'borrachico',25,10),(150,'borrachete',25,10),(151,'borrachín',25,9),(152,'borrachuco',25,10),(153,'poetita',26,7),(154,'poetilla',26,8),(155,'poetico',26,7),(156,'poetete',26,7),(157,'poetín',26,6),(158,'poetuco',26,7),(159,'corazoncito',27,11),(160,'coranzoncillo',27,13),(161,'corazoncico',27,11),(162,'corazoncete',27,11),(163,'corazonín',27,9),(164,'corazonuco',27,10),(165,'cigarrito',28,9),(166,'cigarrillo',28,10),(167,'cigarrico',28,9),(168,'cigarrete',28,9),(169,'cigarrín',28,8),(170,'cigarruco',28,9),(171,'tamborcito',29,10),(172,'tamborcillo',29,11),(173,'tamborcico',29,10),(174,'tamborcete',29,10),(175,'tamborín',29,8),(176,'tamboruco',29,9),(177,'madrecita',30,9),(178,'madrecilla',30,10),(179,'madrecica',30,9),(180,'madreceta',30,9),(181,'madrina',30,7),(182,'madresuca',30,9),(183,'atomito',31,7),(184,'atomillo',31,8),(185,'atomico',31,7),(186,'atomete',31,7),(187,'atomín',31,6),(188,'atomuco',31,7),(189,'musiquita',32,9),(190,'musiquilla',32,10),(191,'musiquica',32,9),(192,'musiqueta',32,9),(193,'musiquina',32,9),(194,'musicuca',32,8),(195,'perrito',33,7),(196,'perrillo',33,8),(197,'perrico',33,7),(198,'perrete',33,7),(199,'perrín',33,6),(200,'perruco',33,7),(201,'computadorcita',34,14),(202,'computadorcilla',34,15),(203,'computadorcica',34,14),(204,'computadorceta',34,14),(205,'computadorcina',34,14),(206,'computadoruca',34,13),(207,'librito',35,7),(208,'librillo',35,8),(209,'librico',35,7),(210,'librete',35,7),(211,'librín',35,6),(212,'lubruco',35,7),(213,'ceguerita',36,9),(214,'ceguerilla',36,10),(215,'ceguerica',36,9),(216,'ceguereta',36,9),(217,'ceguerina',36,9),(218,'cegueruca',36,9),(219,'mundito',37,7),(220,'mundillo',37,8),(221,'mundico',37,7),(222,'mundete',37,7),(223,'mundín',37,6),(224,'munduco',37,7),(225,'campito',38,7),(226,'campillo',38,8),(227,'campico',38,7),(228,'campete',38,7),(229,'campín',38,6),(230,'campuco',38,7),(231,'circulito',39,9),(232,'circulillo',39,10),(233,'circulico',39,9),(234,'circulete',39,9),(235,'circulín',39,8),(236,'circoluco',39,9),(237,'navecita',40,8),(238,'navecilla',40,9),(239,'navecica',40,8),(240,'navecete',40,8),(241,'navecina',40,8),(242,'navesuca',40,8),(243,'rosita',41,6),(244,'rosilla',41,7),(245,'rosica',41,6),(246,'roseta',41,6),(247,'rosina',41,6),(248,'rosuca',41,6),(249,'calaverita',42,10),(250,'calaverilla',42,11),(251,'calaverica',42,10),(252,'calavereta',42,10),(253,'calaverín',42,9),(254,'calaveruca',42,10),(255,'telefonito',43,10),(256,'telefonillo',43,11),(257,'telefonico',43,10),(258,'telefonete',43,10),(259,'telefonín',43,9),(260,'telefonuco',43,10),(261,'doctorcito',44,10),(262,'doctorcillo',44,11),(263,'doctorico',44,9),(264,'doctorete',44,9),(265,'doctorín',44,8),(266,'doctoruco',44,9),(267,'gatito',45,6),(268,'gatillo',45,7),(269,'gatico',45,6),(270,'gatete',45,6),(271,'gatín',45,5),(272,'gatuco',45,6),(273,'solecito',46,8),(274,'solecillo',46,9),(275,'solecico',46,8),(276,'solecete',46,8),(277,'solecín',46,7),(278,'solesuco',46,8),(279,'coronita',47,8),(280,'coronilla',47,9),(281,'coronica',47,8),(282,'coroneta',47,8),(283,'coronina',47,8),(284,'coronuca',47,8),(285,'chalupita',48,9),(286,'chalupilla',48,10),(287,'chalupica',48,9),(288,'chalupeta',48,9),(289,'chalupina',48,9),(290,'chalupuca',48,9),(291,'niñito',49,6),(292,'niñillo',49,7),(293,'niñico',49,6),(294,'niñete',49,6),(295,'niñín',49,5),(296,'niñuco',49,6),(297,'pescadito',50,9),(298,'pescadillo',50,10),(299,'pescadico',50,9),(300,'pescadete',50,9),(301,'pescadín',50,8),(302,'pescaduco',50,9),(303,'ciudadcita',51,10),(304,'ciudadcilla',51,11),(305,'ciudadica',51,9),(306,'ciudadeta',51,9),(307,'ciudadina',51,9),(308,'ciudaduca',51,9),(309,'bailarinita',52,11),(310,'bailarincilla',52,13),(311,'bailarinica',52,11),(312,'bailarineta',52,11),(313,'bailarinina',52,11),(314,'bailariruca',52,11),(315,'besito',53,6),(316,'besillo',53,7),(317,'besico',53,6),(318,'besete',53,6),(319,'besín',53,5),(320,'besuco',53,6),(321,'ranita',54,6),(322,'ranilla',54,7),(323,'ranica',54,6),(324,'raneta',54,6),(325,'ranina',54,6),(326,'ranuca',54,7);
/*!40000 ALTER TABLE `diminutivo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `division`
--

DROP TABLE IF EXISTS `division`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `division` (
  `idDivision` int(11) NOT NULL AUTO_INCREMENT,
  `division` varchar(45) COLLATE latin1_spanish_ci DEFAULT NULL,
  `iniciales` varchar(3) COLLATE latin1_spanish_ci DEFAULT NULL,
  PRIMARY KEY (`idDivision`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1 COLLATE=latin1_spanish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `division`
--

LOCK TABLES `division` WRITE;
/*!40000 ALTER TABLE `division` DISABLE KEYS */;
INSERT INTO `division` VALUES (1,'Ciencias y Artes para el Diseño','CAD'),(2,'Ciencias Básicas e Ingeniería','CBI'),(3,'Ciencias Biológicas y de la Salud','CBS'),(4,'Ciencias de la Comunicación y Diseño','CCD'),(5,'Ciencias Naturales e Ingeniería','CNI'),(6,'Ciencias Sociales y Humanidades','CSH');
/*!40000 ALTER TABLE `division` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `estadoPartida`
--

DROP TABLE IF EXISTS `estadoPartida`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `estadoPartida` (
  `idEstPartida` int(11) NOT NULL AUTO_INCREMENT,
  `estado` varchar(45) COLLATE latin1_spanish_ci DEFAULT NULL,
  PRIMARY KEY (`idEstPartida`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_spanish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `estadoPartida`
--

LOCK TABLES `estadoPartida` WRITE;
/*!40000 ALTER TABLE `estadoPartida` DISABLE KEYS */;
/*!40000 ALTER TABLE `estadoPartida` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `frase`
--

DROP TABLE IF EXISTS `frase`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `frase` (
  `idFrase` int(11) NOT NULL,
  `frase` mediumtext COLLATE latin1_spanish_ci,
  `idCarta` int(11) NOT NULL,
  PRIMARY KEY (`idFrase`),
  KEY `fk_frase_carta1_idx` (`idCarta`),
  CONSTRAINT `fk_frase_carta1` FOREIGN KEY (`idCarta`) REFERENCES `carta` (`idCarta`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_spanish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `frase`
--

LOCK TABLES `frase` WRITE;
/*!40000 ALTER TABLE `frase` DISABLE KEYS */;
/*!40000 ALTER TABLE `frase` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `galeria`
--

DROP TABLE IF EXISTS `galeria`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `galeria` (
  `idgaleria` int(11) NOT NULL,
  `idCarta` int(11) NOT NULL,
  PRIMARY KEY (`idgaleria`),
  KEY `fk_galeria_carta1_idx` (`idCarta`),
  CONSTRAINT `fk_galeria_carta1` FOREIGN KEY (`idCarta`) REFERENCES `carta` (`idCarta`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_spanish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `galeria`
--

LOCK TABLES `galeria` WRITE;
/*!40000 ALTER TABLE `galeria` DISABLE KEYS */;
/*!40000 ALTER TABLE `galeria` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `galeria_has_jugador`
--

DROP TABLE IF EXISTS `galeria_has_jugador`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `galeria_has_jugador` (
  `galeria_idgaleria` int(11) NOT NULL,
  `jugador_usuario_idUsr` int(11) NOT NULL,
  `jugador_juego_idJuego` int(11) NOT NULL,
  PRIMARY KEY (`galeria_idgaleria`,`jugador_usuario_idUsr`,`jugador_juego_idJuego`),
  KEY `fk_galeria_has_jugador_jugador1_idx` (`jugador_usuario_idUsr`,`jugador_juego_idJuego`),
  KEY `fk_galeria_has_jugador_galeria1_idx` (`galeria_idgaleria`),
  CONSTRAINT `fk_galeria_has_jugador_galeria1` FOREIGN KEY (`galeria_idgaleria`) REFERENCES `galeria` (`idgaleria`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk_galeria_has_jugador_jugador1` FOREIGN KEY (`jugador_usuario_idUsr`, `jugador_juego_idJuego`) REFERENCES `jugador` (`usuario_idUsr`, `juego_idJuego`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_spanish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `galeria_has_jugador`
--

LOCK TABLES `galeria_has_jugador` WRITE;
/*!40000 ALTER TABLE `galeria_has_jugador` DISABLE KEYS */;
/*!40000 ALTER TABLE `galeria_has_jugador` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `genero`
--

DROP TABLE IF EXISTS `genero`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `genero` (
  `idGenero` int(11) NOT NULL AUTO_INCREMENT,
  `genero` varchar(45) COLLATE latin1_spanish_ci DEFAULT NULL,
  `idCarta` int(11) NOT NULL,
  `longitud` int(11) DEFAULT NULL,
  PRIMARY KEY (`idGenero`),
  KEY `fk_genero_carta1_idx` (`idCarta`),
  CONSTRAINT `fk_genero_carta1` FOREIGN KEY (`idCarta`) REFERENCES `carta` (`idCarta`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_spanish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `genero`
--

LOCK TABLES `genero` WRITE;
/*!40000 ALTER TABLE `genero` DISABLE KEYS */;
/*!40000 ALTER TABLE `genero` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `gradoActivo`
--

DROP TABLE IF EXISTS `gradoActivo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `gradoActivo` (
  `idGradoActivo` int(11) NOT NULL AUTO_INCREMENT,
  `gradoActivo` varchar(45) COLLATE latin1_spanish_ci DEFAULT NULL,
  PRIMARY KEY (`idGradoActivo`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1 COLLATE=latin1_spanish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gradoActivo`
--

LOCK TABLES `gradoActivo` WRITE;
/*!40000 ALTER TABLE `gradoActivo` DISABLE KEYS */;
INSERT INTO `gradoActivo` VALUES (1,'Licenciatura'),(2,'Posgrado');
/*!40000 ALTER TABLE `gradoActivo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `gradoPosgrado`
--

DROP TABLE IF EXISTS `gradoPosgrado`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `gradoPosgrado` (
  `idGradoPosgrado` int(11) NOT NULL AUTO_INCREMENT,
  `gradoPosgrado` varchar(45) COLLATE latin1_spanish_ci DEFAULT NULL,
  PRIMARY KEY (`idGradoPosgrado`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1 COLLATE=latin1_spanish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gradoPosgrado`
--

LOCK TABLES `gradoPosgrado` WRITE;
/*!40000 ALTER TABLE `gradoPosgrado` DISABLE KEYS */;
INSERT INTO `gradoPosgrado` VALUES (1,'Doctorado'),(2,'Especialidad'),(3,'Mestría');
/*!40000 ALTER TABLE `gradoPosgrado` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `juego`
--

DROP TABLE IF EXISTS `juego`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `juego` (
  `idJuego` int(11) NOT NULL AUTO_INCREMENT,
  `nombreJuego` varchar(30) COLLATE latin1_spanish_ci DEFAULT NULL,
  PRIMARY KEY (`idJuego`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1 COLLATE=latin1_spanish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `juego`
--

LOCK TABLES `juego` WRITE;
/*!40000 ALTER TABLE `juego` DISABLE KEYS */;
INSERT INTO `juego` VALUES (1,'lotería');
/*!40000 ALTER TABLE `juego` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jugador`
--

DROP TABLE IF EXISTS `jugador`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jugador` (
  `usuario_idUsr` int(11) NOT NULL,
  `juego_idJuego` int(11) NOT NULL,
  `scoreTotal` int(11) DEFAULT NULL,
  PRIMARY KEY (`usuario_idUsr`,`juego_idJuego`),
  KEY `fk_usuario_has_juego1_juego1_idx` (`juego_idJuego`),
  KEY `fk_usuario_has_juego1_usuario1_idx` (`usuario_idUsr`),
  CONSTRAINT `fk_usuario_has_juego1_usuario1` FOREIGN KEY (`usuario_idUsr`) REFERENCES `usuario` (`idUsr`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk_usuario_has_juego1_juego1` FOREIGN KEY (`juego_idJuego`) REFERENCES `juego` (`idJuego`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_spanish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jugador`
--

LOCK TABLES `jugador` WRITE;
/*!40000 ALTER TABLE `jugador` DISABLE KEYS */;
/*!40000 ALTER TABLE `jugador` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `modalidad`
--

DROP TABLE IF EXISTS `modalidad`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `modalidad` (
  `idmodalidad` int(11) NOT NULL AUTO_INCREMENT,
  `nombreMod` varchar(45) COLLATE latin1_spanish_ci DEFAULT NULL,
  PRIMARY KEY (`idmodalidad`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=latin1 COLLATE=latin1_spanish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `modalidad`
--

LOCK TABLES `modalidad` WRITE;
/*!40000 ALTER TABLE `modalidad` DISABLE KEYS */;
INSERT INTO `modalidad` VALUES (1,'juego libre'),(2,'diminutivos'),(3,'derivación adjetivos'),(4,'derivación verbos'),(5,'sinónimos'),(6,'género'),(7,'plurales'),(8,'aumentativos'),(9,'peyorativos'),(10,'derivación sustantivos'),(11,'antónimos');
/*!40000 ALTER TABLE `modalidad` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `nivel`
--

DROP TABLE IF EXISTS `nivel`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `nivel` (
  `idnivel` int(11) NOT NULL AUTO_INCREMENT,
  `nombreNivel` varchar(45) COLLATE latin1_spanish_ci DEFAULT NULL,
  PRIMARY KEY (`idnivel`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1 COLLATE=latin1_spanish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `nivel`
--

LOCK TABLES `nivel` WRITE;
/*!40000 ALTER TABLE `nivel` DISABLE KEYS */;
INSERT INTO `nivel` VALUES (1,'básico'),(2,'intermedio'),(3,'avanzado'),(4,'experto');
/*!40000 ALTER TABLE `nivel` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `peyorativo`
--

DROP TABLE IF EXISTS `peyorativo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `peyorativo` (
  `idPeyorativo` int(11) NOT NULL AUTO_INCREMENT,
  `peyorativo` varchar(45) COLLATE latin1_spanish_ci DEFAULT NULL,
  `idCarta` int(11) NOT NULL,
  `longitud` int(11) DEFAULT NULL,
  PRIMARY KEY (`idPeyorativo`),
  KEY `fk_peyorativo_carta1_idx` (`idCarta`),
  CONSTRAINT `fk_peyorativo_carta1` FOREIGN KEY (`idCarta`) REFERENCES `carta` (`idCarta`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_spanish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `peyorativo`
--

LOCK TABLES `peyorativo` WRITE;
/*!40000 ALTER TABLE `peyorativo` DISABLE KEYS */;
/*!40000 ALTER TABLE `peyorativo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `plural`
--

DROP TABLE IF EXISTS `plural`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `plural` (
  `idPlural` int(11) NOT NULL AUTO_INCREMENT,
  `plural` varchar(45) COLLATE latin1_spanish_ci DEFAULT NULL,
  `idCarta` int(11) NOT NULL,
  `longitud` int(11) DEFAULT NULL,
  PRIMARY KEY (`idPlural`),
  KEY `fk_plural_carta1_idx` (`idCarta`),
  CONSTRAINT `fk_plural_carta1` FOREIGN KEY (`idCarta`) REFERENCES `carta` (`idCarta`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_spanish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `plural`
--

LOCK TABLES `plural` WRITE;
/*!40000 ALTER TABLE `plural` DISABLE KEYS */;
/*!40000 ALTER TABLE `plural` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `record`
--

DROP TABLE IF EXISTS `record`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `record` (
  `idRecord` int(11) NOT NULL AUTO_INCREMENT,
  `record` int(11) DEFAULT NULL,
  `fecha` varchar(45) COLLATE latin1_spanish_ci DEFAULT NULL,
  `idEstPartida` int(11) NOT NULL,
  `idScore` int(11) NOT NULL,
  PRIMARY KEY (`idRecord`),
  KEY `fk_record_estadoPartida1_idx` (`idEstPartida`),
  KEY `fk_record_score2_idx` (`idScore`),
  CONSTRAINT `fk_record_estadoPartida1` FOREIGN KEY (`idEstPartida`) REFERENCES `estadoPartida` (`idEstPartida`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk_record_score2` FOREIGN KEY (`idScore`) REFERENCES `score` (`idScore`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_spanish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `record`
--

LOCK TABLES `record` WRITE;
/*!40000 ALTER TABLE `record` DISABLE KEYS */;
/*!40000 ALTER TABLE `record` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `score`
--

DROP TABLE IF EXISTS `score`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `score` (
  `idScore` int(11) NOT NULL AUTO_INCREMENT,
  `idtipoPartida` int(11) NOT NULL,
  `idNivel` int(11) NOT NULL,
  `idModalidad` int(11) NOT NULL,
  `idUsr` int(11) NOT NULL,
  `idJuego` int(11) NOT NULL,
  PRIMARY KEY (`idScore`),
  KEY `fk_score_tipoPartida1_idx` (`idtipoPartida`),
  KEY `fk_score_nivel1_idx` (`idNivel`),
  KEY `fk_score_modalidad1_idx` (`idModalidad`),
  KEY `fk_score_usuario_has_juego11_idx` (`idUsr`,`idJuego`),
  CONSTRAINT `fk_score_tipoPartida1` FOREIGN KEY (`idtipoPartida`) REFERENCES `tipoPartida` (`idtipoPartida`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk_score_nivel1` FOREIGN KEY (`idNivel`) REFERENCES `nivel` (`idnivel`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk_score_modalidad1` FOREIGN KEY (`idModalidad`) REFERENCES `modalidad` (`idmodalidad`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk_score_usuario_has_juego11` FOREIGN KEY (`idUsr`, `idJuego`) REFERENCES `jugador` (`usuario_idUsr`, `juego_idJuego`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_spanish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `score`
--

LOCK TABLES `score` WRITE;
/*!40000 ALTER TABLE `score` DISABLE KEYS */;
/*!40000 ALTER TABLE `score` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sinonimo`
--

DROP TABLE IF EXISTS `sinonimo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sinonimo` (
  `idSinonimo` int(11) NOT NULL AUTO_INCREMENT COMMENT '			',
  `sinonimo` varchar(45) COLLATE latin1_spanish_ci DEFAULT NULL,
  `idCarta` int(11) NOT NULL,
  `longitud` int(11) DEFAULT NULL,
  PRIMARY KEY (`idSinonimo`),
  KEY `fk_sinonimo_carta1_idx` (`idCarta`),
  CONSTRAINT `fk_sinonimo_carta1` FOREIGN KEY (`idCarta`) REFERENCES `carta` (`idCarta`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=602 DEFAULT CHARSET=latin1 COLLATE=latin1_spanish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sinonimo`
--

LOCK TABLES `sinonimo` WRITE;
/*!40000 ALTER TABLE `sinonimo` DISABLE KEYS */;
INSERT INTO `sinonimo` VALUES (1,'pollo',1,5),(2,'galliforme',1,10),(3,'gallipavo',1,9),(4,'desentono',1,9),(5,'desafinación',1,12),(6,'destemple',1,9),(7,'gallito',1,7),(8,'presumido',1,9),(9,'mandón',1,6),(10,'bravucón',1,8),(11,'fanfarrón',1,9),(12,'jactancioso',1,11),(13,'escupitajo',1,10),(14,'esputo',1,6),(15,'salivazo',1,8),(16,'gargajo',1,7),(17,'flema',1,5),(18,'demonio',2,7),(19,'maligno',2,7),(20,'satanás',2,7),(21,'belcebú',2,7),(22,'lucifer',2,7),(23,'luzbel',2,6),(24,'chamuco',2,7),(25,'salinas',2,7),(26,'señora',3,6),(27,'mujer',3,5),(28,'ama',3,3),(29,'dueña',3,5),(30,'cortesana',3,9),(31,'matrona',3,7),(32,'aristócrata',3,11),(33,'dandi',4,5),(34,'presumido',4,9),(35,'coqueto',4,7),(36,'figurín',4,7),(37,'pisaverde',4,9),(38,'petimetre',4,9),(39,'guapo',4,5),(40,'señorito',4,8),(41,'elegante',4,8),(42,'lechuguino',4,10),(43,'quitasol',5,8),(44,'sombrilla',5,9),(45,'parasol',5,7),(46,'ninfa',6,5),(47,'nereida',6,7),(48,'náyade',6,6),(49,'ondina',6,6),(50,'oceánida',6,8),(51,'escalinata',7,10),(52,'grada',7,5),(53,'gradería',7,8),(54,'escala',7,6),(55,'escalerilla',7,11),(56,'peldaños',7,8),(57,'escalones',7,9),(58,'casco',8,5),(59,'ampolla',8,7),(60,'bombona',8,7),(61,'frasco',8,6),(62,'garrafa',8,7),(63,'redoma',8,6),(64,'damajuana',8,9),(65,'patona',8,6),(66,'pelota',9,6),(67,'bola',9,4),(68,'esférico',9,8),(69,'cuero',9,5),(70,'recipiente',9,10),(71,'vasija',9,6),(72,'globo',9,5),(73,'arbusto',10,7),(74,'eje',10,3),(75,'palo',10,4),(76,'asta',10,4),(77,'cigüeñal',10,8),(78,'barra',10,5),(79,'profesor',11,8),(80,'educador',11,8),(81,'instructor',11,10),(82,'pedagogo',11,8),(83,'preceptor',11,9),(84,'mentor',11,6),(85,'ayo',11,3),(86,'avezado',11,7),(87,'experto',11,7),(88,'hábil',11,5),(89,'diestro',11,7),(90,'ducho',11,5),(91,'perito',11,6),(92,'compositor',11,10),(93,'músico',11,6),(94,'artista',11,7),(95,'intrépido',12,9),(96,'fuerte',12,6),(97,'bravo',12,5),(98,'valeroso',12,8),(99,'atrevido',12,8),(100,'animoso',12,7),(101,'osado',12,5),(102,'impávido',12,8),(103,'heroico',12,7),(104,'denodado',12,8),(105,'audaz',12,5),(106,'compadrito',12,10),(107,'guapo',12,5),(108,'birrete',13,7),(109,'boina',13,5),(110,'bonete',13,6),(111,'cofia',13,5),(112,'chichonera',13,10),(113,'montera',13,7),(114,'barretina',13,9),(115,'casco',13,5),(116,'gorra',13,5),(117,'sombrero',13,8),(118,'capucha',13,7),(119,'capuchón',13,8),(120,'condón',13,6),(121,'flaca',14,5),(122,'tilíca',14,6),(123,'catrina',14,7),(124,'huesuda',14,7),(125,'fallecimiento',14,13),(126,'defunción',14,9),(127,'óbito',14,5),(128,'deceso',14,6),(129,'fin',14,3),(130,'trance',14,6),(131,'tránsito',14,8),(132,'asesinato',14,9),(133,'homicidio',14,9),(134,'crimen',14,6),(135,'atentado',14,8),(136,'degollina',14,9),(137,'martirio',14,8),(138,'ruina',14,5),(139,'caída',14,5),(140,'destrucción',14,11),(141,'aniquilamiento',14,14),(142,'desaparición',14,12),(143,'supresión',14,9),(144,'eliminación',14,11),(145,'erradicación',14,12),(146,'funcionario',15,11),(147,'administrativo',15,14),(148,'oficial',15,7),(149,'enseña',16,6),(150,'estandarte',16,10),(151,'emblema',16,7),(152,'banderín',16,8),(153,'banderola',16,9),(154,'blasón',16,6),(155,'confalón',16,8),(156,'distintivo',16,10),(157,'divisa',16,6),(158,'gallardete',16,10),(159,'guión',16,5),(160,'oriflama',16,8),(161,'pabellón',16,8),(162,'pendón',16,6),(163,'símbolo',16,7),(164,'señal',16,5),(165,'lábaro',16,6),(166,'tren',17,4),(167,'convoy',17,6),(168,'subterráneo',17,11),(169,'metropolitano',17,13),(170,'medida',17,6),(171,'patrón',17,6),(172,'caco',18,4),(173,'carterista',18,10),(174,'ratero',18,6),(175,'cleptómano',18,10),(176,'descuidero',18,10),(177,'chorizo',18,7),(178,'mangante',18,8),(179,'saqueador',18,9),(180,'timador',18,7),(181,'bandido',18,7),(182,'atracador',18,9),(183,'maleante',18,8),(184,'cuatrero',18,8),(185,'usurero',18,7),(186,'estafador',18,9),(187,'carero',18,6),(188,'chaca',18,5),(189,'chacal	',18,7),(190,'caquito',18,7),(191,'papá',19,4),(192,'progenitor',19,10),(193,'padrazo',19,7),(194,'ascendiente',19,11),(195,'procreador',19,10),(196,'autor',19,5),(197,'creador',19,7),(198,'inventor',19,8),(199,'generador',19,9),(200,'productor',19,9),(201,'fraile',19,6),(202,'religioso',19,9),(203,'sacerdote',19,9),(204,'clérigo',19,7),(205,'tonsurado',19,9),(206,'perro',19,5),(207,'chido',19,5),(208,'ave',20,3),(209,'avecilla',20,8),(210,'volátil',20,7),(211,'pajarillo',20,9),(212,'astuto',20,6),(213,'ladino',20,6),(214,'taimado',20,7),(215,'zorro',20,5),(216,'cuco',20,4),(217,'pillo',20,5),(218,'garra',21,5),(219,'zarpa',21,5),(220,'palma',21,5),(221,'dorso',21,5),(222,'lado',21,4),(223,'costado',21,7),(224,'flanco',21,6),(225,'banda',21,5),(226,'ala',21,3),(227,'dirección',21,9),(228,'orientación',21,11),(229,'sentido',21,7),(230,'baño',21,4),(231,'capa',21,4),(232,'pintura',21,7),(233,'pasada',21,6),(234,'revestimento',21,12),(235,'recubrimiento',21,13),(236,'pericicia',21,9),(237,'habilidad',21,9),(238,'facilidad',21,9),(239,'destreza',21,8),(240,'maña',21,4),(241,'tacto',21,5),(242,'turno',21,5),(243,'jugada',21,6),(244,'tirada',21,6),(245,'lance',21,5),(246,'partido',21,7),(247,'partida',21,7),(248,'poder',21,5),(249,'mando',21,5),(250,'influencia',21,10),(251,'influjo',21,7),(252,'ascendiente',21,11),(253,'privanza',21,8),(254,'amistad',21,7),(255,'ayuda',21,5),(256,'auxilio',21,7),(257,'asistencia',21,10),(258,'tunda',21,5),(259,'somanta',21,7),(260,'castigo',21,7),(261,'reprensión',21,10),(262,'borceguí',22,8),(263,'boto',22,4),(264,'escarpín',22,8),(265,'botín',22,5),(266,'odre',22,4),(267,'pellejo',22,7),(268,'saltar',22,6),(269,'brincar',22,7),(270,'rebotar',22,7),(271,'respingar',22,9),(272,'piruetar',22,8),(273,'alzarse',22,7),(274,'lanzar',22,6),(275,'impulsar',22,8),(276,'echar',22,5),(277,'arrojar',22,7),(278,'despedir',22,8),(279,'tirar',22,5),(280,'expulsar',22,8),(281,'satélite',23,8),(282,'astro',23,5),(283,'espejo',23,6),(284,'cristalera',23,10),(285,'vidriera',23,8),(286,'escaparate',23,10),(287,'cacatúa',24,7),(288,'papagayo',24,8),(289,'loro',24,4),(290,'guacamayo',24,9),(291,'perico',24,6),(292,'cotorra',24,7),(293,'charlatán',24,9),(294,'parlanchín',24,10),(295,'gárrulo',24,7),(296,'hablador',24,8),(297,'sacamuelas',24,10),(298,'ebrio',25,5),(299,'embriagado',25,10),(300,'bebido',25,6),(301,'beodo',25,5),(302,'alcoholizado',25,12),(303,'mamado',25,6),(304,'achispado',25,9),(305,'amonado',25,7),(306,'ajumado',25,7),(307,'ahumado',25,7),(308,'calamocano',25,10),(309,'dipsómano',25,9),(310,'alumbrado',25,9),(311,'curda',25,5),(312,'mona',25,4),(313,'colgado',25,7),(314,'pedo',25,4),(315,'lírico',26,6),(316,'trovador',26,8),(317,'versificador',26,12),(318,'coplista',26,8),(319,'juglar',26,6),(320,'rapsoda',26,7),(321,'rimador',26,7),(322,'aedo',26,4),(323,'bardo',26,5),(324,'vate',26,4),(325,'vícera',27,6),(326,'órgano',27,6),(327,'entrañas',27,8),(328,'entretelas',27,10),(329,'amor',27,4),(330,'sentimiento',27,11),(331,'cariño',27,6),(332,'sensibilidad',27,12),(333,'caridad',27,7),(334,'cariño',27,6),(335,'centro',27,6),(336,'núcleo',27,6),(337,'interior',27,8),(338,'meollo',27,6),(339,'médula',27,6),(340,'puro',28,4),(341,'habano',28,6),(342,'veguero',28,7),(343,'tagarnina',28,9),(344,'cigarrillo',28,10),(345,'pitillo',28,7),(346,'tabaco',28,6),(347,'tamboril',29,8),(348,'caja',29,4),(349,'timbal',29,6),(350,'bombo',29,5),(351,'pandero',29,7),(352,'rodillo',29,7),(353,'rollo',29,5),(354,'cilindro',29,8),(355,'mamá',30,4),(356,'religiosa',30,9),(357,'hermana',30,7),(358,'sor',30,3),(359,'superiora',30,9),(360,'lecho',30,5),(361,'cauce',30,5),(362,'acequia',30,7),(363,'álveo',30,5),(364,'origen',30,6),(365,'motivo',30,6),(366,'causa',30,5),(367,'fundamento',30,10),(368,'poso',30,4),(369,'sedimento',30,9),(370,'partícula',31,9),(371,'corpúsculo',31,10),(372,'insignificancia',31,15),(373,'pequeñez',31,8),(374,'migaja',31,6),(375,'pizca',31,5),(376,'brizna',31,6),(377,'traza',31,5),(378,'melodía',32,7),(379,'armonía',32,7),(380,'canto',32,5),(381,'ritmo',32,5),(382,'tonalidad',32,9),(383,'polifonía',32,9),(384,'filarmonía',32,10),(385,'solfeo',32,6),(386,'can',33,4),(387,'chucho',33,6),(388,'tuso',33,4),(389,'cachorro',33,8),(390,'mephistófeles',33,13),(391,'difícil',33,7),(392,'chido',33,5),(393,'arduo',33,5),(394,'complejo',33,8),(395,'duro',33,4),(396,'complicado',33,10),(397,'ordenador',34,9),(398,'calduladora',34,11),(399,'procesador',34,10),(400,'cerebro electrónico',34,19),(401,'ejemplar',35,8),(402,'tomo',35,4),(403,'volumen',35,7),(404,'obra',35,4),(405,'texto',35,5),(406,'manual',35,6),(407,'compendio',35,9),(408,'vademécum',35,9),(409,'invidencia',36,10),(410,'ablepsia',36,8),(411,'oscurecimiento',36,14),(412,'ofuscamiento',36,12),(413,'obstinación',36,11),(414,'obececación',36,12),(415,'empecinamiento',36,14),(416,'emperramiento',36,13),(417,'alucinación',36,11),(418,'desacierto',36,10),(419,'deslumbramiento',36,15),(420,'expasperación',36,13),(421,'extravío',36,8),(422,'tierra',37,6),(423,'globo',37,5),(424,'humanidad',37,9),(425,'planeta',37,7),(426,'orbe',37,4),(427,'siglo',37,5),(428,'universo',37,8),(429,'cosmos',37,6),(430,'creación',37,8),(431,'sociedad',37,9),(432,'experiencia',37,11),(433,'terreno',38,7),(434,'terruño',38,7),(435,'campiña',38,7),(436,'labrantío',38,9),(437,'pradera',38,7),(438,'pradería',38,8),(439,'prado',38,5),(440,'sembrado',38,8),(441,'dehesa',38,6),(442,'huerta',38,6),(443,'predio',38,6),(444,'hacienda',38,8),(445,'finca',38,5),(446,'propiedad',38,9),(447,'circunferencia',39,14),(448,'aro',39,3),(449,'redondel',39,8),(450,'órbita',39,6),(451,'disco',39,5),(452,'redondez',39,8),(453,'rueda',39,5),(454,'cerco',39,5),(455,'corro',39,5),(456,'contorno',39,8),(457,'perímetro',39,9),(458,'circuito',39,8),(459,'ateneo',39,6),(460,'casino',39,6),(461,'sociedad',39,8),(462,'club',39,4),(463,'curvado',39,7),(464,'curvo',39,5),(465,'radial',39,6),(466,'lenticular',39,10),(467,'barco',40,5),(468,'navío',40,5),(469,'bajel',40,5),(470,'nao',40,3),(471,'buque',40,5),(472,'embarcación',40,11),(473,'pabellón',40,8),(474,'recinto',40,7),(475,'almacén',40,7),(476,'flor',41,4),(477,'capullo',41,7),(478,'cotón',41,5),(479,'rosado',41,6),(480,'sonrosado',41,9),(481,'encarnado',41,9),(482,'cráneo',42,6),(483,'sesera',42,6),(484,'cabeza',42,6),(485,'casco',42,5),(486,'rima',42,4),(487,'epitafio',42,8),(488,'receptor',43,8),(489,'reproductor',43,11),(490,'auricular',43,9),(491,'aparato',43,7),(492,'celular',43,7),(493,'móvil',43,5),(494,'medíco',44,6),(495,'matasanos',44,9),(496,'cirujano',44,8),(497,'graduado',44,8),(498,'catedrático',44,11),(499,'cirujano',44,8),(500,'micho',45,5),(501,'minino',45,6),(502,'micifuz',45,7),(503,'morrongo',45,8),(504,'morroño',45,7),(505,'elevador',45,8),(506,'palanca',45,7),(507,'cric',45,4),(508,'sagaz',45,5),(509,'astuto',45,6),(510,'traicionero',45,11),(511,'pícaro',45,6),(512,'naco',45,4),(513,'astro',46,5),(514,'día',46,3),(515,'estrella',46,8),(516,'luz',46,3),(517,'diadema',47,7),(518,'tiara',47,5),(519,'guirnalda',47,9),(520,'blasón',47,6),(521,'laureola',47,8),(522,'nimbo',47,5),(523,'halo',47,4),(524,'aureola',47,7),(525,'aro',47,3),(526,'cerco',47,5),(527,'premio',47,6),(528,'galardón',47,8),(529,'recompensa',47,10),(530,'reino',47,5),(531,'monarquía',47,9),(532,'imperio',47,7),(533,'cima',47,4),(534,'cúspide',47,7),(535,'investir',47,8),(536,'ceñir',47,5),(537,'aureolar',47,8),(538,'entronizar',47,10),(539,'proclamar',47,9),(540,'terminar',47,8),(541,'acabar',47,6),(542,'culminar',47,8),(543,'rematar',47,7),(544,'consumar',47,8),(545,'finalizar',47,9),(546,'alcanzar',47,8),(547,'canoa',48,5),(548,'lancha',48,6),(549,'bote',48,4),(550,'góndola',48,7),(551,'trajinera',48,9),(552,'bebé',49,5),(553,'nene',49,4),(554,'rorro',49,5),(555,'crío',49,5),(556,'criatura',49,8),(557,'peque',49,5),(558,'chico',49,5),(559,'churumbel',49,9),(560,'hijo',49,4),(561,'mocoso',49,6),(562,'rapaz',49,5),(563,'chiquillo',49,9),(564,'infante',49,7),(565,'morro',49,5),(566,'chamaco',49,7),(567,'chavo',49,5),(568,'pez',50,3),(569,'brea',50,4),(570,'resina',50,6),(571,'capturado',50,9),(572,'atrapado',50,8),(573,'cazado',50,6),(574,'agarrado',50,8),(575,'cogido',50,6),(576,'pillado',50,7),(577,'apresado',50,8),(578,'sorprendido',50,11),(579,'descubierto',50,11),(580,'urbe',51,4),(581,'capital',51,7),(582,'metrópoli',51,9),(583,'villa',51,5),(584,'población',51,9),(585,'localidad',51,9),(586,'urbe',52,4),(587,'capital',52,7),(588,'metrópoli',52,9),(589,'villa',52,5),(590,'población',52,9),(591,'localidad',52,9),(592,'ósculo',53,6),(593,'besuqueo',53,8),(594,'carantoña',53,9),(595,'mimo',53,4),(596,'caricia',53,7),(597,'contacto',53,8),(598,'sapo',54,5),(599,'sapillo',54,7),(600,'renacuajo',54,9),(601,'batracio',54,8);
/*!40000 ALTER TABLE `sinonimo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tipoPartida`
--

DROP TABLE IF EXISTS `tipoPartida`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tipoPartida` (
  `idtipoPartida` int(11) NOT NULL AUTO_INCREMENT,
  `nombrePartida` varchar(45) COLLATE latin1_spanish_ci DEFAULT NULL,
  PRIMARY KEY (`idtipoPartida`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1 COLLATE=latin1_spanish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tipoPartida`
--

LOCK TABLES `tipoPartida` WRITE;
/*!40000 ALTER TABLE `tipoPartida` DISABLE KEYS */;
INSERT INTO `tipoPartida` VALUES (1,'completa'),(2,'rápida');
/*!40000 ALTER TABLE `tipoPartida` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tipoTrofeo`
--

DROP TABLE IF EXISTS `tipoTrofeo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tipoTrofeo` (
  `idtipoTrofeo` int(11) NOT NULL AUTO_INCREMENT,
  `tipoTrofeo` varchar(15) COLLATE latin1_spanish_ci DEFAULT NULL,
  PRIMARY KEY (`idtipoTrofeo`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1 COLLATE=latin1_spanish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tipoTrofeo`
--

LOCK TABLES `tipoTrofeo` WRITE;
/*!40000 ALTER TABLE `tipoTrofeo` DISABLE KEYS */;
INSERT INTO `tipoTrofeo` VALUES (1,'Habilidad'),(2,'Constancia'),(3,'Eventos'),(4,'Easter Eggs'),(5,'Término');
/*!40000 ALTER TABLE `tipoTrofeo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tipoUsuario`
--

DROP TABLE IF EXISTS `tipoUsuario`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tipoUsuario` (
  `idTipoUsr` int(11) NOT NULL AUTO_INCREMENT,
  `tipoUsr` varchar(45) COLLATE latin1_spanish_ci DEFAULT NULL,
  PRIMARY KEY (`idTipoUsr`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1 COLLATE=latin1_spanish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tipoUsuario`
--

LOCK TABLES `tipoUsuario` WRITE;
/*!40000 ALTER TABLE `tipoUsuario` DISABLE KEYS */;
INSERT INTO `tipoUsuario` VALUES (1,'Alumno'),(2,'Profesor'),(3,'Administrativo'),(4,'Otro');
/*!40000 ALTER TABLE `tipoUsuario` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `trofeo`
--

DROP TABLE IF EXISTS `trofeo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `trofeo` (
  `idTrofeo` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(55) COLLATE latin1_spanish_ci DEFAULT NULL,
  `imagen` varchar(45) COLLATE latin1_spanish_ci DEFAULT NULL,
  `condicion` mediumtext COLLATE latin1_spanish_ci,
  `descripcion` varchar(256) COLLATE latin1_spanish_ci DEFAULT NULL,
  `idTipoTrofeo` int(11) NOT NULL,
  PRIMARY KEY (`idTrofeo`),
  KEY `fk_trofeo_tipoTrofeo1_idx` (`idTipoTrofeo`),
  CONSTRAINT `fk_trofeo_tipoTrofeo1` FOREIGN KEY (`idTipoTrofeo`) REFERENCES `tipoTrofeo` (`idtipoTrofeo`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=latin1 COLLATE=latin1_spanish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `trofeo`
--

LOCK TABLES `trofeo` WRITE;
/*!40000 ALTER TABLE `trofeo` DISABLE KEYS */;
INSERT INTO `trofeo` VALUES (1,'Gigante en el recreo',NULL,'Alcancé 1000 puntos en una partida de la modalidad Juego Libre en el nivel Básico','Vine, vi, conquisté',1),(2,'Con los ojos cerrados',NULL,'Alcancé 3500 puntos en una partida de la modalidad Juego Libre en el nivel Avanzado','Y no fue casualidad',1),(3,'Chiquito pero...',NULL,'Alcancé 7500 puntos en una partida de la modalidad Diminutivos','Son aquellas pequeñas cosas',1),(4,'De colores',NULL,'Alcancé 15000 puntos en una partida de la modalidad Adjetivos','Los ojos se me fueron tras una morena que pasó',1),(5,'Triunfo al recuerdo',NULL,'Alcancé 21000 puntos en una partida de la modalidad Sinónimos','La memoria disminuye si no se la ejercita',1),(6,'Precisión quirúrgica',NULL,'Completé una partida sin errores','Conocer es resolver',1),(7,'Aprendiz de la lotería',NULL,'Acumulé 10 partidas ganadas','Así que de esto se trata',2),(8,'Veterano de la lotería',NULL,'Acumulé 25 partidas ganadas','Lo he visto todo',2),(9,'Experto de la lotería',NULL,'Acumulé 50 partidas ganadas','Bodas de oro',2),(10,'Maestro de la lotería',NULL,'Acumulé 75 partidas ganadas','Ningún misterio se me escapa',2),(11,'Lotería Wizard',NULL,'Acumulé 100 partidas ganadas','El primero de los epígonos',2),(12,'Tanteando las aguas',NULL,'Gané una partida en la modalidad Juego Libre en nivel Básico','¿Qué gané?',3),(13,'Marinero de agua dulce',NULL,'Gané una partida en la modalidad Juego Libre en nivel Avanzado','El día precedente enseña al que sigue',3),(14,'Marinero curtido',NULL,'Gané una partida en la modalidad Diminutivos','Se hace camino en la mar',3),(15,'Buzo',NULL,'Gané una partida en la modalidad Adjetivos','Quién fuera el batiscafo de tu abismo',3),(16,'Capitán',NULL,'Gané una partida en la modalidad Sinónimos','Yo no soy marinero',3),(17,'Lobo de mar',NULL,'Gané una partida en todas las modalidades','Antes de recorrer mi camino yo era mi camino',3),(18,'O fortuna',NULL,'Gané una partida con la bonificación máxima por suerte','La suerte juega con cartas sin marcar',3),(19,'El corazón de las tinieblas',NULL,'','Aquél que no será nombrado',4),(20,'Ph\'nglui mglw\'nafh Cthulhu R\'lyeh wgah\'nagl fhtagn',NULL,'','En su casa de R\'lyeh el difunto Cthulhu aguarda soñando',4),(21,'Coleccionista',NULL,'Acumulé 18 cartas en mi galería','Nadie tiene lo que no se merece',5),(22,'Galerista',NULL,'Acumulé 33 cartas en mi galería','Hay afectos de tan delicada honestidad',5),(23,'Museógrafo',NULL,'Acumulé 54 cartas en mi galería','El lenguaje no es el aya sino la madre del pensamiento',5),(24,'Leyenda',NULL,'He obtenido todos los trofeos disponibles','Vine, vi, conquisté',5);
/*!40000 ALTER TABLE `trofeo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `trofeo_has_jugador`
--

DROP TABLE IF EXISTS `trofeo_has_jugador`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `trofeo_has_jugador` (
  `trofeo_idTrofeo` int(11) NOT NULL,
  `jugador_usuario_idUsr` int(11) NOT NULL,
  `jugador_juego_idJuego` int(11) NOT NULL,
  PRIMARY KEY (`trofeo_idTrofeo`,`jugador_usuario_idUsr`,`jugador_juego_idJuego`),
  KEY `fk_trofeo_has_jugador_jugador1_idx` (`jugador_usuario_idUsr`,`jugador_juego_idJuego`),
  KEY `fk_trofeo_has_jugador_trofeo1_idx` (`trofeo_idTrofeo`),
  CONSTRAINT `fk_trofeo_has_jugador_trofeo1` FOREIGN KEY (`trofeo_idTrofeo`) REFERENCES `trofeo` (`idTrofeo`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk_trofeo_has_jugador_jugador1` FOREIGN KEY (`jugador_usuario_idUsr`, `jugador_juego_idJuego`) REFERENCES `jugador` (`usuario_idUsr`, `juego_idJuego`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_spanish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `trofeo_has_jugador`
--

LOCK TABLES `trofeo_has_jugador` WRITE;
/*!40000 ALTER TABLE `trofeo_has_jugador` DISABLE KEYS */;
/*!40000 ALTER TABLE `trofeo_has_jugador` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `usuario`
--

DROP TABLE IF EXISTS `usuario`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `usuario` (
  `idUsr` int(11) NOT NULL AUTO_INCREMENT,
  `nombreUsr` varchar(15) COLLATE latin1_spanish_ci NOT NULL,
  `nombre` varchar(25) COLLATE latin1_spanish_ci DEFAULT NULL,
  `aPaterno` varchar(25) COLLATE latin1_spanish_ci DEFAULT NULL,
  `aMaterno` varchar(25) COLLATE latin1_spanish_ci DEFAULT NULL,
  `sexo` char(1) COLLATE latin1_spanish_ci DEFAULT NULL,
  `edad` int(11) DEFAULT NULL,
  `correo` varchar(40) COLLATE latin1_spanish_ci NOT NULL,
  `contrasena` varchar(30) COLLATE latin1_spanish_ci NOT NULL,
  `idTipoUsr` int(11) NOT NULL,
  `idDivision` int(11) DEFAULT NULL,
  `idGradoPosgrado` int(11) DEFAULT NULL,
  `idGradoActivo` int(11) DEFAULT NULL,
  `avatar` varchar(150) COLLATE latin1_spanish_ci NOT NULL,
  `cargo` varchar(45) COLLATE latin1_spanish_ci DEFAULT NULL,
  `area` varchar(45) COLLATE latin1_spanish_ci DEFAULT NULL,
  PRIMARY KEY (`idUsr`),
  UNIQUE KEY `idUsr_UNIQUE` (`idUsr`),
  KEY `fk_usuario_tipoUsuario_idx` (`idTipoUsr`),
  KEY `fk_usuario_gradoActivo1_idx` (`idGradoActivo`),
  KEY `fk_usuario_division1_idx` (`idDivision`),
  KEY `fk_usuario_gradoPosgrado1_idx` (`idGradoPosgrado`),
  CONSTRAINT `fk_usuario_gradoPosgrado1` FOREIGN KEY (`idGradoPosgrado`) REFERENCES `gradoPosgrado` (`idGradoPosgrado`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk_usuario_division1` FOREIGN KEY (`idDivision`) REFERENCES `division` (`idDivision`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk_usuario_gradoActivo1` FOREIGN KEY (`idGradoActivo`) REFERENCES `gradoActivo` (`idGradoActivo`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk_usuario_tipoUsuario` FOREIGN KEY (`idTipoUsr`) REFERENCES `tipoUsuario` (`idTipoUsr`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_spanish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usuario`
--

LOCK TABLES `usuario` WRITE;
/*!40000 ALTER TABLE `usuario` DISABLE KEYS */;
/*!40000 ALTER TABLE `usuario` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2013-07-01 12:02:06
