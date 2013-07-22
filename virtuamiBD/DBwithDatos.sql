CREATE DATABASE  IF NOT EXISTS `loteriadb` /*!40100 DEFAULT CHARACTER SET utf8 */;
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
-- Table structure for table `adjetivo`
--

DROP TABLE IF EXISTS `adjetivo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `adjetivo` (
  `idAdjetivo` int(11) NOT NULL AUTO_INCREMENT,
  `adjetivo` varchar(45) COLLATE utf8_unicode_ci NOT NULL,
  `longitud` int(11) DEFAULT NULL,
  `idCarta` int(11) NOT NULL,
  PRIMARY KEY (`idAdjetivo`),
  KEY `fk_adjetivo_carta1_idx` (`idCarta`),
  CONSTRAINT `fk_adjetivo_carta1` FOREIGN KEY (`idCarta`) REFERENCES `carta` (`idCarta`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=228 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `adjetivo`
--

LOCK TABLES `adjetivo` WRITE;
/*!40000 ALTER TABLE `adjetivo` DISABLE KEYS */;
INSERT INTO `adjetivo` VALUES (1,'gallesco',8,1),(2,'galloso',7,1),(3,'gallino',7,1),(4,'gallito',7,1),(5,'diabólico',9,2),(6,'endiablado',10,2),(7,'diabluno',8,2),(8,'diablesco',9,2),(9,'diabloso',8,2),(10,'damoso',6,3),(11,'damal',5,3),(12,'damuno',6,3),(13,'damesco',7,3),(14,'damino',6,3),(15,'catrín',6,4),(16,'catrinoso',9,4),(17,'catrinal',8,4),(18,'catrinuno',9,4),(19,'catrimesco',10,4),(20,'encatrinado',11,4),(21,'paragual',8,5),(22,'pargüil',7,5),(23,'paragüeño',9,5),(24,'paraguoso',9,5),(25,'paragüesco',10,5),(26,'paraguasado',11,5),(27,'sirenal',7,6),(28,'sirenoso',8,6),(29,'sirenesco',9,6),(30,'sirénico',8,6),(31,'sireniento',10,6),(32,'sirenil',7,6),(33,'sirenizado',10,6),(34,'escalérico',10,7),(35,'escaleroso',10,7),(36,'escaleril',9,7),(37,'escalerino',10,7),(38,'escalerado',10,7),(39,'embotellado',11,8),(40,'botelloso',9,8),(41,'botellesco',10,8),(42,'botellal',8,8),(43,'botelluzco',10,8),(44,'balonudo',8,9),(45,'baloneado',9,9),(46,'balonil',7,9),(47,'balonoso',8,9),(48,'balonesco',9,9),(49,'arbóreo',7,10),(50,'arbolesco',9,10),(51,'arboloso',8,10),(52,'arbolino',8,10),(53,'magistral',9,11),(54,'amaestrado',10,11),(55,'maestroso',9,11),(56,'maestrino',9,11),(57,'valiente',8,12),(58,'valeroso',8,12),(59,'envalentonado',13,12),(60,'gorroso',7,13),(61,'gorrino gorril',14,13),(62,'gorroneado',10,13),(63,'mortal',6,14),(64,'mortífero',9,14),(65,'muerto',6,14),(66,'mortuorio',9,14),(67,'mortecino',9,14),(68,'burocrático',11,15),(69,'burocratoso',11,15),(70,'burocretino',11,15),(71,'burocratón',10,15),(72,'burocratizado',13,15),(73,'abanderado',10,16),(74,'banderal',8,16),(75,'banderáceo',10,16),(76,'banderuzco',10,16),(77,'métrico',7,17),(78,'metroso',7,17),(79,'metresco',8,17),(80,'metruno',7,17),(81,'ladrón',6,18),(82,'ladronal',8,18),(83,'ladronesco',10,18),(84,'paterno',7,19),(85,'paternal',8,19),(86,'padresco',8,19),(87,'pajaril',7,20),(88,'pajaresco',9,20),(89,'pajaruzco',9,20),(90,'pajaroso',8,20),(91,'pajarino',8,20),(92,'manual',6,21),(93,'manada',6,21),(94,'mandado',7,21),(95,'botado',6,22),(96,'botesco',7,22),(97,'botino',6,22),(98,'botal',5,22),(99,'lunar',8,23),(100,'lunático',7,23),(101,'lunario',7,23),(102,'lunesco',7,23),(103,'cotorro',10,24),(104,'cotorreado',10,24),(105,'cotorresco',8,24),(106,'cotorrón',8,24),(107,'borracho',12,25),(108,'emborrachado',10,25),(109,'borrachino',7,25),(110,'poético',9,26),(111,'poetizado',8,26),(112,'poetáceo',7,26),(113,'poetoso',8,26),(114,'poetible',6,26),(115,'poetil',6,26),(116,'poetal',8,26),(117,'poetario',8,26),(118,'cardiaco',13,27),(119,'descorazonado',11,27),(120,'corazonesco',9,27),(121,'corazonil',9,27),(122,'corazonizo',10,27),(123,'cigarroso',9,28),(124,'cigarresco',10,28),(125,'cigarrila',10,28),(126,'cigarrado',9,28),(127,'cigarral',8,28),(128,'tamboril',8,29),(129,'tambórico',9,29),(130,'tamboresco',10,29),(131,'tamborino',9,29),(132,'tamboroso',9,29),(133,'materno',7,30),(134,'maternal',8,30),(135,'madresco',8,30),(136,'atómico',7,31),(137,'atomal',6,31),(138,'atomesco',8,31),(139,'musical',7,32),(140,'musicalizado',12,32),(141,'musicoso',8,32),(142,'musicalesco',11,32),(143,'perruno',7,33),(144,'aperrado',8,33),(145,'perro',5,33),(146,'perrón',6,33),(147,'computacional',13,34),(148,'computadorizado',15,34),(149,'computadoresco',14,34),(150,'libresco',8,35),(151,'libruno',7,35),(152,'libroso',7,35),(153,'cegado',6,36),(154,'ciego',5,36),(155,'cegatón',7,36),(156,'mundial',7,37),(157,'mundializado',12,37),(158,'mundesco',8,37),(159,'campestre',9,38),(160,'campirano',9,38),(161,'acampado',8,38),(162,'campal',6,38),(163,'circular',8,39),(164,'circulado',9,39),(165,'circulino',9,39),(166,'navegante',9,40),(167,'navegado',8,40),(168,'navegable',9,40),(169,'rosa',4,41),(170,'rosado',6,41),(171,'rosáceo',7,41),(172,'calavérico',10,42),(173,'calaverada',10,42),(174,'calaveresco',11,42),(175,'calaverario',11,42),(176,'calaverino',10,42),(177,'calaveruzco',11,42),(178,'telefónico',10,43),(179,'telefoneado',11,43),(180,'telefonesco',11,43),(181,'telefonal',9,43),(182,'doctoral',8,44),(183,'doctorado',9,44),(184,'doctoresco',10,44),(185,'gatuno',6,45),(186,'engatusado',10,45),(187,'gatoso',6,45),(188,'gatesco',7,45),(189,'soleado',7,46),(190,'solar',5,46),(191,'asoleado',8,46),(192,'coronado',8,47),(193,'coronal',7,47),(194,'coronil',7,47),(195,'coronesco',9,47),(196,'chalupes',8,48),(197,'cochalupano',11,48),(198,'chaluposo',9,48),(199,'aniñado',7,49),(200,'niñesco',7,49),(201,'niñoso',6,49),(202,'infantil',8,49),(203,'niñáceo',7,49),(204,'pescado',7,50),(205,'pescadesco',10,50),(206,'pescadil',8,50),(207,'pescadano',9,50),(208,'pescadoso',9,50),(209,'pescadáceo',10,50),(210,'pescaduzco',10,50),(211,'ciudadano',9,51),(212,'ciudadesco',10,51),(213,'citadino',8,51),(214,'bailarina',9,52),(215,'bailado',7,52),(216,'bailable',8,52),(217,'besado',6,53),(218,'besucón',7,53),(219,'besuqueado',10,53),(220,'besable',7,53),(221,'besoso',6,53),(222,'ranal',5,54),(223,'ranudo',6,54),(224,'ranoso',6,54),(225,'ranino',6,54),(226,'ranesco',7,54),(227,'ranil',5,54);
/*!40000 ALTER TABLE `adjetivo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `antonimo`
--

DROP TABLE IF EXISTS `antonimo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `antonimo` (
  `idAntonimo` int(11) NOT NULL AUTO_INCREMENT,
  `antonimo` varchar(45) COLLATE utf8_unicode_ci NOT NULL,
  `longitud` int(11) DEFAULT NULL,
  `idCarta` int(11) NOT NULL,
  PRIMARY KEY (`idAntonimo`),
  KEY `fk_antonimo_carta1_idx` (`idCarta`),
  CONSTRAINT `fk_antonimo_carta1` FOREIGN KEY (`idCarta`) REFERENCES `carta` (`idCarta`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `antonimo`
--

LOCK TABLES `antonimo` WRITE;
/*!40000 ALTER TABLE `antonimo` DISABLE KEYS */;
/*!40000 ALTER TABLE `antonimo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `aumentativo`
--

DROP TABLE IF EXISTS `aumentativo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `aumentativo` (
  `idAumentativo` int(11) NOT NULL AUTO_INCREMENT,
  `aumentativo` varchar(45) COLLATE utf8_unicode_ci NOT NULL,
  `longitud` int(11) DEFAULT NULL,
  `idCarta` int(11) NOT NULL,
  PRIMARY KEY (`idAumentativo`),
  KEY `fk_aumentativo_carta1_idx` (`idCarta`),
  CONSTRAINT `fk_aumentativo_carta1` FOREIGN KEY (`idCarta`) REFERENCES `carta` (`idCarta`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aumentativo`
--

LOCK TABLES `aumentativo` WRITE;
/*!40000 ALTER TABLE `aumentativo` DISABLE KEYS */;
/*!40000 ALTER TABLE `aumentativo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `avatar`
--

DROP TABLE IF EXISTS `avatar`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `avatar` (
  `idAvatar` int(11) NOT NULL AUTO_INCREMENT,
  `avatar` varchar(256) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`idAvatar`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `avatar`
--

LOCK TABLES `avatar` WRITE;
/*!40000 ALTER TABLE `avatar` DISABLE KEYS */;
/*!40000 ALTER TABLE `avatar` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `carta`
--

DROP TABLE IF EXISTS `carta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `carta` (
  `idCarta` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `descripcion` mediumtext COLLATE utf8_unicode_ci,
  `audio` varchar(256) COLLATE utf8_unicode_ci DEFAULT NULL,
  `imgMazo` varchar(256) COLLATE utf8_unicode_ci DEFAULT NULL,
  `imgPlantilla` varchar(256) COLLATE utf8_unicode_ci DEFAULT NULL,
  `imgIcon` varchar(256) COLLATE utf8_unicode_ci DEFAULT NULL,
  `longitud` int(11) DEFAULT NULL,
  PRIMARY KEY (`idCarta`)
) ENGINE=InnoDB AUTO_INCREMENT=55 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `carta`
--

LOCK TABLES `carta` WRITE;
/*!40000 ALTER TABLE `carta` DISABLE KEYS */;
INSERT INTO `carta` VALUES (1,'gallo',NULL,NULL,'/media/img/mazo/h_01_gallo.jpg','/media/img/plantilla/01_gallo.jpg',NULL,5),(2,'diablo',NULL,NULL,'/media/img/mazo/h_02_diablo.jpg','/media/img/plantilla/02_diablo.jpg',NULL,6),(3,'dama',NULL,NULL,'/media/img/mazo/h_03_dama.jpg','/media/img/plantilla/03_dama.jpg',NULL,4),(4,'catrín',NULL,NULL,'/media/img/mazo/h_04_catrin.jpg','/media/img/plantilla/04_catrin.jpg',NULL,6),(5,'paraguas',NULL,NULL,'/media/img/mazo/h_05_paraguas.jpg','/media/img/plantilla/05_paraguas.jpg',NULL,8),(6,'sirena',NULL,NULL,'/media/img/mazo/h_06_sirena.jpg','/media/img/plantilla/06_sirena.jpg',NULL,6),(7,'escalera',NULL,NULL,'/media/img/mazo/h_07_escalera.jpg','/media/img/plantilla/07_escalera.jpg',NULL,8),(8,'botella',NULL,NULL,'/media/img/mazo/h_08_botella.jpg','/media/img/plantilla/08_botella.jpg',NULL,7),(9,'balón',NULL,NULL,'/media/img/mazo/h_09_balon.jpg','/media/img/plantilla/09_balon.jpg',NULL,5),(10,'árbol',NULL,NULL,'/media/img/mazo/h_10_arbol.jpg','/media/img/plantilla/10_arbol.jpg',NULL,5),(11,'maestro',NULL,NULL,'/media/img/mazo/h_11_maestro.jpg','/media/img/plantilla/11_maestro.jpg',NULL,7),(12,'valiente',NULL,NULL,'/media/img/mazo/h_12_valiente.jpg','/media/img/plantilla/12_valiente.jpg',NULL,8),(13,'gorro',NULL,NULL,'/media/img/mazo/h_13_gorro.jpg','/media/img/plantilla/13_gorro.jpg',NULL,5),(14,'muerte',NULL,NULL,'/media/img/mazo/h_14_muerte.jpg','/media/img/plantilla/14_muerte.jpg',NULL,6),(15,'burócrata',NULL,NULL,'/media/img/mazo/h_15_burocrata.jpg','/media/img/plantilla/15_burocrata.jpg',NULL,9),(16,'bandera',NULL,NULL,'/media/img/mazo/h_16_bandera.jpg','/media/img/plantilla/16_bandera.jpg',NULL,7),(17,'metro',NULL,NULL,'/media/img/mazo/h_17_metro.jpg','/media/img/plantilla/17_metro.jpg',NULL,5),(18,'ladrón',NULL,NULL,'/media/img/mazo/h_18_ladron.jpg','/media/img/plantilla/18_ladron.jpg',NULL,6),(19,'padre',NULL,NULL,'/media/img/mazo/h_19_padre.jpg','/media/img/plantilla/19_padre.jpg',NULL,5),(20,'pájaro',NULL,NULL,'/media/img/mazo/h_20_pajaro.jpg','/media/img/plantilla/20_pajaro.jpg',NULL,6),(21,'mano',NULL,NULL,'/media/img/mazo/h_21_mano.jpg','/media/img/plantilla/21_mano.jpg',NULL,4),(22,'bota',NULL,NULL,'/media/img/mazo/h_22_bota.jpg','/media/img/plantilla/22_bota.jpg',NULL,4),(23,'luna',NULL,NULL,'/media/img/mazo/h_23_luna.jpg','/media/img/plantilla/23_luna.jpg',NULL,4),(24,'cotorro',NULL,NULL,'/media/img/mazo/h_24_cotorro.jpg','/media/img/plantilla/24_cotorro.jpg',NULL,7),(25,'borracho',NULL,NULL,'/media/img/mazo/h_25_borracho.jpg','/media/img/plantilla/25_borracho.jpg',NULL,8),(26,'poeta',NULL,NULL,'/media/img/mazo/h_26_poeta.jpg','/media/img/plantilla/26_poeta.jpg',NULL,5),(27,'corazón',NULL,NULL,'/media/img/mazo/h_27_corazon.jpg','/media/img/plantilla/27_corazon.jpg',NULL,7),(28,'cigarro',NULL,NULL,'/media/img/mazo/h_28_cigarro.jpg','/media/img/plantilla/28_cigarro.jpg',NULL,7),(29,'tambor',NULL,NULL,'/media/img/mazo/h_29_tambor.jpg','/media/img/plantilla/29_tambor.jpg',NULL,6),(30,'madre',NULL,NULL,'/media/img/mazo/h_30_madre.jpg','/media/img/plantilla/30_madre.jpg',NULL,5),(31,'átomo',NULL,NULL,'/media/img/mazo/h_31_atomo.jpg','/media/img/plantilla/31_atomo.jpg',NULL,5),(32,'música',NULL,NULL,'/media/img/mazo/h_32_musica.jpg','/media/img/plantilla/32_musica.jpg',NULL,6),(33,'perro',NULL,NULL,'/media/img/mazo/h_33_perro.jpg','/media/img/plantilla/33_perro.jpg',NULL,5),(34,'computadora',NULL,NULL,'/media/img/mazo/h_34_computadora.jpg','/media/img/plantilla/34_computadora.jpg',NULL,11),(35,'libro',NULL,NULL,'/media/img/mazo/h_35_libro.jpg','/media/img/plantilla/35_libro.jpg',NULL,5),(36,'ceguera',NULL,NULL,'/media/img/mazo/h_36_ceguera.jpg','/media/img/plantilla/36_ceguera.jpg',NULL,7),(37,'mundo',NULL,NULL,'/media/img/mazo/h_37_mundo.jpg','/media/img/plantilla/37_mundo.jpg',NULL,5),(38,'campo',NULL,NULL,'/media/img/mazo/h_38_campo.jpg','/media/img/plantilla/38_campo.jpg',NULL,5),(39,'círculo',NULL,NULL,'/media/img/mazo/h_39_circulo.jpg','/media/img/plantilla/39_circulo.jpg',NULL,7),(40,'nave',NULL,NULL,'/media/img/mazo/h_40_nave.jpg','/media/img/plantilla/40_nave.jpg',NULL,4),(41,'rosa',NULL,NULL,'/media/img/mazo/h_41_rosa.jpg','/media/img/plantilla/41_rosa.jpg',NULL,4),(42,'calavera',NULL,NULL,'/media/img/mazo/h_42_calavera.jpg','/media/img/plantilla/42_calavera.jpg',NULL,8),(43,'teléfono',NULL,NULL,'/media/img/mazo/h_43_telefono.jpg','/media/img/plantilla/43_telefono.jpg',NULL,8),(44,'doctor',NULL,NULL,'/media/img/mazo/h_44_doctor.jpg','/media/img/plantilla/44_doctor.jpg',NULL,6),(45,'gato',NULL,NULL,'/media/img/mazo/h_45_gato.jpg','/media/img/plantilla/45_gato.jpg',NULL,4),(46,'sol',NULL,NULL,'/media/img/mazo/h_46_sol.jpg','/media/img/plantilla/46_sol.jpg',NULL,3),(47,'corona',NULL,NULL,'/media/img/mazo/h_47_corona.jpg','/media/img/plantilla/47_corona.jpg',NULL,6),(48,'chalupa',NULL,NULL,'/media/img/mazo/h_48_chalupa.jpg','/media/img/plantilla/48_chalupa.jpg',NULL,7),(49,'niño',NULL,NULL,'/media/img/mazo/h_49_nino.jpg','/media/img/plantilla/49_nino.jpg',NULL,4),(50,'pescado',NULL,NULL,'/media/img/mazo/h_50_pescado.jpg','/media/img/plantilla/50_pescado.jpg',NULL,7),(51,'ciudad',NULL,NULL,'/media/img/mazo/h_51_ciudad.jpg','/media/img/plantilla/51_ciudad.jpg',NULL,6),(52,'bailarina',NULL,NULL,'/media/img/mazo/h_52_bailarina.jpg','/media/img/plantilla/52_bailarina.jpg',NULL,9),(53,'beso',NULL,NULL,'/media/img/mazo/h_53_beso.jpg','/media/img/plantilla/53_beso.jpg',NULL,4),(54,'rana',NULL,NULL,'/media/img/mazo/h_54_rana.jpg','/media/img/plantilla/54_rana.jpg',NULL,4);
/*!40000 ALTER TABLE `carta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `diminutivo`
--

DROP TABLE IF EXISTS `diminutivo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `diminutivo` (
  `idDiminutivo` int(11) NOT NULL AUTO_INCREMENT,
  `diminutivo` varchar(45) COLLATE utf8_unicode_ci NOT NULL,
  `longitud` int(11) DEFAULT NULL,
  `idCarta` int(11) NOT NULL,
  PRIMARY KEY (`idDiminutivo`),
  KEY `fk_diminutivo_carta1_idx` (`idCarta`),
  CONSTRAINT `fk_diminutivo_carta1` FOREIGN KEY (`idCarta`) REFERENCES `carta` (`idCarta`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=327 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `diminutivo`
--

LOCK TABLES `diminutivo` WRITE;
/*!40000 ALTER TABLE `diminutivo` DISABLE KEYS */;
INSERT INTO `diminutivo` VALUES (1,'gallito',7,1),(2,'gallillo',8,1),(3,'gallico',7,1),(4,'gallete',7,1),(5,'gallín',6,1),(6,'galluco',7,1),(7,'diablito',8,2),(8,'diablillo',9,2),(9,'diablico',8,2),(10,'diablete',8,2),(11,'diablín',7,2),(12,'diabluco',8,2),(13,'damita',6,3),(14,'damilla',7,3),(15,'damica',6,3),(16,'dameta',6,3),(17,'damina',6,3),(18,'damuca',6,3),(19,'catrincito',10,4),(20,'catrincillo',11,4),(21,'catrincico',10,4),(22,'catrinete',9,4),(23,'catrinín',8,4),(24,'catrinuco',9,4),(25,'paragüitas',10,5),(26,'paragüillas',11,5),(27,'paraguasico',11,5),(28,'paraguasete',11,5),(29,'paragüín',8,5),(30,'paraguasuco',11,5),(31,'sirenita',8,6),(32,'sirenilla',9,6),(33,'sirenica',8,6),(34,'sireneta',8,6),(35,'sirenina',8,6),(36,'sirenuca',8,6),(37,'escalerita',10,7),(38,'escalerilla',11,7),(39,'escalerica',10,7),(40,'escalereta',10,7),(41,'escalerina',10,7),(42,'escaleruca',10,7),(43,'botellita',9,8),(44,'botellilla',10,8),(45,'botellica',9,8),(46,'botelleta',9,8),(47,'botellina',9,8),(48,'botelluca',9,8),(49,'baloncito',9,9),(50,'baloncillo',10,9),(51,'baloncico',9,9),(52,'baloncete',9,9),(53,'baloncino',9,9),(54,'balonuco',8,9),(55,'arbolito',8,10),(56,'arbolillo',9,10),(57,'arbolico',8,10),(58,'arbolete',8,10),(59,'arbolín',7,10),(60,'arboluco',8,10),(61,'maestrito',9,11),(62,'maestrillo',10,11),(63,'maestrico',9,11),(64,'maestrete',9,11),(65,'maestrín',8,11),(66,'maestruco',9,11),(67,'valientito',10,12),(68,'valientillo',11,12),(69,'valientico',10,12),(70,'valientete',10,12),(71,'valientín',9,12),(72,'valientuco',10,12),(73,'gorrito',7,13),(74,'gorrillo',8,13),(75,'gorrico',7,13),(76,'gorrete',7,13),(77,'gorrín',6,13),(78,'gorruco',7,13),(79,'muertecita',10,14),(80,'muertecilla',11,14),(81,'muertica',8,14),(82,'muerteta',8,14),(83,'muertina',8,14),(84,'muertuca',8,14),(85,'muertita',8,14),(86,'burocratito',11,15),(87,'burocratillo',12,15),(88,'burocratico',11,15),(89,'burocratete',11,15),(90,'burocratín',10,15),(91,'burocratuco',11,15),(92,'banderita',9,16),(93,'banderilla',10,16),(94,'banderica',9,16),(95,'bandereta',9,16),(96,'banderín',8,16),(97,'banderuca',9,16),(98,'metrito',7,17),(99,'metrillo',7,17),(100,'metrico',7,17),(101,'metrete',6,17),(102,'metrín',7,17),(103,'metruco',10,17),(104,'ladroncito',11,18),(105,'ladroncillo',10,18),(106,'ladroncico',10,18),(107,'ladroncete',9,18),(108,'ladroncín',9,18),(109,'ladronuco',9,18),(110,'padrecito',10,19),(111,'padrecillo',9,19),(112,'padrecico',9,19),(113,'padrecete',8,19),(114,'padrecín',7,19),(115,'padruco',8,19),(116,'pajarito',9,20),(117,'pajarillo',8,20),(118,'pajarico',8,20),(119,'pajarete',7,20),(120,'pajarín',8,20),(121,'pajaruco',8,20),(122,'manita',6,21),(123,'manilla',7,21),(124,'manica',6,21),(125,'maneta',6,21),(126,'manina',6,21),(127,'manuca',6,21),(128,'botita',6,22),(129,'botilla',7,22),(130,'botica',6,22),(131,'boteta',6,22),(132,'botín',5,22),(133,'botuca',6,22),(134,'botina',6,22),(135,'lunita',6,23),(136,'lunilla',7,23),(137,'lunica',6,23),(138,'luneta',6,23),(139,'lunina',6,23),(140,'lunuca',6,23),(141,'cotorrito',9,24),(142,'cotorrillo',10,24),(143,'cotorrico',9,24),(144,'cotorrete',9,24),(145,'cotorrín',8,24),(146,'cotorruco',9,24),(147,'borrachito',10,25),(148,'borrachillo',11,25),(149,'borrachico',10,25),(150,'borrachete',10,25),(151,'borrachín',9,25),(152,'borrachuco',10,25),(153,'poetita',7,26),(154,'poetilla',8,26),(155,'poetico',7,26),(156,'poetete',7,26),(157,'poetín',6,26),(158,'poetuco',7,26),(159,'corazoncito',11,27),(160,'coranzoncillo',13,27),(161,'corazoncico',11,27),(162,'corazoncete',11,27),(163,'corazonín',9,27),(164,'corazonuco',10,27),(165,'cigarrito',9,28),(166,'cigarrillo',10,28),(167,'cigarrico',9,28),(168,'cigarrete',9,28),(169,'cigarrín',8,28),(170,'cigarruco',9,28),(171,'tamborcito',10,29),(172,'tamborcillo',11,29),(173,'tamborcico',10,29),(174,'tamborcete',10,29),(175,'tamborín',8,29),(176,'tamboruco',9,29),(177,'madrecita',9,30),(178,'madrecilla',10,30),(179,'madrecica',9,30),(180,'madreceta',9,30),(181,'madrina',7,30),(182,'madresuca',9,30),(183,'atomito',7,31),(184,'atomillo',8,31),(185,'atomico',7,31),(186,'atomete',7,31),(187,'atomín',6,31),(188,'atomuco',7,31),(189,'musiquita',9,32),(190,'musiquilla',10,32),(191,'musiquica',9,32),(192,'musiqueta',9,32),(193,'musiquina',9,32),(194,'musicuca',8,32),(195,'perrito',7,33),(196,'perrillo',8,33),(197,'perrico',7,33),(198,'perrete',7,33),(199,'perrín',6,33),(200,'perruco',7,33),(201,'computadorcita',14,34),(202,'computadorcilla',15,34),(203,'computadorcica',14,34),(204,'computadorceta',14,34),(205,'computadorcina',14,34),(206,'computadoruca',13,34),(207,'librito',7,35),(208,'librillo',8,35),(209,'librico',7,35),(210,'librete',7,35),(211,'librín',6,35),(212,'lubruco',7,35),(213,'ceguerita',9,36),(214,'ceguerilla',10,36),(215,'ceguerica',9,36),(216,'ceguereta',9,36),(217,'ceguerina',9,36),(218,'cegueruca',9,36),(219,'mundito',7,37),(220,'mundillo',8,37),(221,'mundico',7,37),(222,'mundete',7,37),(223,'mundín',6,37),(224,'munduco',7,37),(225,'campito',7,38),(226,'campillo',8,38),(227,'campico',7,38),(228,'campete',7,38),(229,'campín',6,38),(230,'campuco',7,38),(231,'circulito',9,39),(232,'circulillo',10,39),(233,'circulico',9,39),(234,'circulete',9,39),(235,'circulín',8,39),(236,'circoluco',9,39),(237,'navecita',8,40),(238,'navecilla',9,40),(239,'navecica',8,40),(240,'navecete',8,40),(241,'navecina',8,40),(242,'navesuca',8,40),(243,'rosita',6,41),(244,'rosilla',7,41),(245,'rosica',6,41),(246,'roseta',6,41),(247,'rosina',6,41),(248,'rosuca',6,41),(249,'calaverita',10,42),(250,'calaverilla',11,42),(251,'calaverica',10,42),(252,'calavereta',10,42),(253,'calaverín',9,42),(254,'calaveruca',10,42),(255,'telefonito',10,43),(256,'telefonillo',11,43),(257,'telefonico',10,43),(258,'telefonete',10,43),(259,'telefonín',9,43),(260,'telefonuco',10,43),(261,'doctorcito',10,44),(262,'doctorcillo',11,44),(263,'doctorico',9,44),(264,'doctorete',9,44),(265,'doctorín',8,44),(266,'doctoruco',9,44),(267,'gatito',6,45),(268,'gatillo',7,45),(269,'gatico',6,45),(270,'gatete',6,45),(271,'gatín',5,45),(272,'gatuco',6,45),(273,'solecito',8,46),(274,'solecillo',9,46),(275,'solecico',8,46),(276,'solecete',8,46),(277,'solecín',7,46),(278,'solesuco',8,46),(279,'coronita',8,47),(280,'coronilla',9,47),(281,'coronica',8,47),(282,'coroneta',8,47),(283,'coronina',8,47),(284,'coronuca',8,47),(285,'chalupita',9,48),(286,'chalupilla',10,48),(287,'chalupica',9,48),(288,'chalupeta',9,48),(289,'chalupina',9,48),(290,'chalupuca',9,48),(291,'niñito',6,49),(292,'niñillo',7,49),(293,'niñico',6,49),(294,'niñete',6,49),(295,'niñín',5,49),(296,'niñuco',6,49),(297,'pescadito',9,50),(298,'pescadillo',10,50),(299,'pescadico',9,50),(300,'pescadete',9,50),(301,'pescadín',8,50),(302,'pescaduco',9,50),(303,'ciudadcita',10,51),(304,'ciudadcilla',11,51),(305,'ciudadica',9,51),(306,'ciudadeta',9,51),(307,'ciudadina',9,51),(308,'ciudaduca',9,51),(309,'bailarinita',11,52),(310,'bailarincilla',13,52),(311,'bailarinica',11,52),(312,'bailarineta',11,52),(313,'bailarinina',11,52),(314,'bailariruca',11,52),(315,'besito',6,53),(316,'besillo',7,53),(317,'besico',6,53),(318,'besete',6,53),(319,'besín',5,53),(320,'besuco',6,53),(321,'ranita',6,54),(322,'ranilla',7,54),(323,'ranica',6,54),(324,'raneta',6,54),(325,'ranina',6,54),(326,'ranuca',7,54);
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
  `division` varchar(45) COLLATE utf8_unicode_ci NOT NULL,
  `iniciales` varchar(3) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`idDivision`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
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
-- Table structure for table `estPartida`
--

DROP TABLE IF EXISTS `estPartida`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `estPartida` (
  `idEstadoPartida` int(11) NOT NULL AUTO_INCREMENT,
  `estado` varchar(45) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`idEstadoPartida`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `estPartida`
--

LOCK TABLES `estPartida` WRITE;
/*!40000 ALTER TABLE `estPartida` DISABLE KEYS */;
INSERT INTO `estPartida` VALUES (1,'Ganado'),(2,'Perfecto'),(3,'Perdido');
/*!40000 ALTER TABLE `estPartida` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `frase`
--

DROP TABLE IF EXISTS `frase`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `frase` (
  `idFrase` int(11) NOT NULL AUTO_INCREMENT,
  `frase` mediumtext COLLATE utf8_unicode_ci,
  `audio` varchar(256) COLLATE utf8_unicode_ci DEFAULT NULL,
  `idCarta` int(11) NOT NULL,
  PRIMARY KEY (`idFrase`),
  KEY `fk_frase_carta1_idx` (`idCarta`),
  CONSTRAINT `fk_frase_carta1` FOREIGN KEY (`idCarta`) REFERENCES `carta` (`idCarta`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
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
  `idUsr` int(11) NOT NULL,
  `idJuego` int(11) NOT NULL,
  `idCarta` int(11) NOT NULL,
  PRIMARY KEY (`idUsr`,`idJuego`,`idCarta`),
  KEY `fk_jugador_has_carta_carta1_idx` (`idCarta`),
  KEY `fk_jugador_has_carta_jugador1_idx` (`idUsr`,`idJuego`),
  CONSTRAINT `fk_jugador_has_carta_jugador1` FOREIGN KEY (`idUsr`, `idJuego`) REFERENCES `jugador` (`idUsr`, `idJuego`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk_jugador_has_carta_carta1` FOREIGN KEY (`idCarta`) REFERENCES `carta` (`idCarta`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `galeria`
--

LOCK TABLES `galeria` WRITE;
/*!40000 ALTER TABLE `galeria` DISABLE KEYS */;
/*!40000 ALTER TABLE `galeria` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `genero`
--

DROP TABLE IF EXISTS `genero`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `genero` (
  `idGenero` int(11) NOT NULL AUTO_INCREMENT,
  `genero` varchar(45) COLLATE utf8_unicode_ci NOT NULL,
  `longitud` int(11) DEFAULT NULL,
  `idCarta` int(11) NOT NULL,
  PRIMARY KEY (`idGenero`),
  KEY `fk_genero_carta1_idx` (`idCarta`),
  CONSTRAINT `fk_genero_carta1` FOREIGN KEY (`idCarta`) REFERENCES `carta` (`idCarta`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
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
  `gradoActivo` varchar(45) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`idGradoActivo`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
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
  `gradoPosgrado` varchar(45) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`idGradoPosgrado`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gradoPosgrado`
--

LOCK TABLES `gradoPosgrado` WRITE;
/*!40000 ALTER TABLE `gradoPosgrado` DISABLE KEYS */;
INSERT INTO `gradoPosgrado` VALUES (1,'Doctorado'),(2,'Especialidad'),(3,'Maestría');
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
  `nombreJuego` varchar(45) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`idJuego`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
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
  `idUsr` int(11) NOT NULL,
  `idJuego` int(11) NOT NULL,
  `scoreTotal` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`idUsr`,`idJuego`),
  KEY `fk_juego_has_usuario_usuario1_idx` (`idUsr`),
  KEY `fk_juego_has_usuario_juego1_idx` (`idJuego`),
  CONSTRAINT `fk_juego_has_usuario_juego1` FOREIGN KEY (`idJuego`) REFERENCES `juego` (`idJuego`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk_juego_has_usuario_usuario1` FOREIGN KEY (`idUsr`) REFERENCES `usuario` (`idUsr`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
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
  `idModalidad` int(11) NOT NULL AUTO_INCREMENT,
  `modalidad` varchar(45) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`idModalidad`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
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
  `idNivel` int(11) NOT NULL AUTO_INCREMENT,
  `nivel` varchar(45) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`idNivel`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
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
-- Table structure for table `partida`
--

DROP TABLE IF EXISTS `partida`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `partida` (
  `idPartida` int(11) NOT NULL AUTO_INCREMENT,
  `partida` varchar(45) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`idPartida`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `partida`
--

LOCK TABLES `partida` WRITE;
/*!40000 ALTER TABLE `partida` DISABLE KEYS */;
INSERT INTO `partida` VALUES (1,'completa'),(2,'rápida');
/*!40000 ALTER TABLE `partida` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `peyorativo`
--

DROP TABLE IF EXISTS `peyorativo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `peyorativo` (
  `idPeyorativo` int(11) NOT NULL AUTO_INCREMENT,
  `peyorativo` varchar(45) COLLATE utf8_unicode_ci NOT NULL,
  `longitud` int(11) DEFAULT NULL,
  `idCarta` int(11) NOT NULL,
  PRIMARY KEY (`idPeyorativo`),
  KEY `fk_peyorativo_carta_idx` (`idCarta`),
  CONSTRAINT `fk_peyorativo_carta` FOREIGN KEY (`idCarta`) REFERENCES `carta` (`idCarta`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
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
  `plural` varchar(45) COLLATE utf8_unicode_ci NOT NULL,
  `longitud` int(11) DEFAULT NULL,
  `idCarta` int(11) NOT NULL,
  PRIMARY KEY (`idPlural`),
  KEY `fk_plural_carta1_idx` (`idCarta`),
  CONSTRAINT `fk_plural_carta1` FOREIGN KEY (`idCarta`) REFERENCES `carta` (`idCarta`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
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
  `record` int(11) NOT NULL,
  `fecha` date NOT NULL,
  `idScore` int(11) NOT NULL,
  `idEstadoPartida` int(11) NOT NULL,
  PRIMARY KEY (`idRecord`),
  KEY `fk_record_estPartida1_idx` (`idEstadoPartida`),
  KEY `fk_record_score1_idx` (`idScore`),
  CONSTRAINT `fk_record_estPartida1` FOREIGN KEY (`idEstadoPartida`) REFERENCES `estPartida` (`idEstadoPartida`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk_record_score1` FOREIGN KEY (`idScore`) REFERENCES `score` (`idScore`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
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
  `idPartida` int(11) NOT NULL,
  `idNivel` int(11) NOT NULL,
  `idModalidad` int(11) NOT NULL,
  `idUsr` int(11) NOT NULL,
  `idJuego` int(11) NOT NULL,
  PRIMARY KEY (`idScore`),
  KEY `fk_score_partida1_idx` (`idPartida`),
  KEY `fk_score_nivel1_idx` (`idNivel`),
  KEY `fk_score_modalidad1_idx` (`idModalidad`),
  KEY `fk_score_jugador1_idx` (`idUsr`,`idJuego`),
  CONSTRAINT `fk_score_partida1` FOREIGN KEY (`idPartida`) REFERENCES `partida` (`idPartida`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk_score_nivel1` FOREIGN KEY (`idNivel`) REFERENCES `nivel` (`idNivel`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk_score_modalidad1` FOREIGN KEY (`idModalidad`) REFERENCES `modalidad` (`idModalidad`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk_score_jugador1` FOREIGN KEY (`idUsr`, `idJuego`) REFERENCES `jugador` (`idUsr`, `idJuego`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
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
  `idSinonimo` int(11) NOT NULL AUTO_INCREMENT COMMENT '	',
  `sinonimo` varchar(45) COLLATE utf8_unicode_ci NOT NULL,
  `longitud` int(11) DEFAULT NULL,
  `idCarta` int(11) NOT NULL,
  PRIMARY KEY (`idSinonimo`),
  KEY `fk_sinonimo_carta1_idx` (`idCarta`),
  CONSTRAINT `fk_sinonimo_carta1` FOREIGN KEY (`idCarta`) REFERENCES `carta` (`idCarta`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=602 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sinonimo`
--

LOCK TABLES `sinonimo` WRITE;
/*!40000 ALTER TABLE `sinonimo` DISABLE KEYS */;
INSERT INTO `sinonimo` VALUES (1,'pollo',5,1),(2,'galliforme',10,1),(3,'gallipavo',9,1),(4,'desentono',9,1),(5,'desafinación',12,1),(6,'destemple',9,1),(7,'gallito',7,1),(8,'presumido',9,1),(9,'mandón',6,1),(10,'bravucón',8,1),(11,'fanfarrón',9,1),(12,'jactancioso',11,1),(13,'escupitajo',10,1),(14,'esputo',6,1),(15,'salivazo',8,1),(16,'gargajo',7,1),(17,'flema',5,1),(18,'demonio',7,2),(19,'maligno',7,2),(20,'satanás',7,2),(21,'belcebú',7,2),(22,'lucifer',7,2),(23,'luzbel',6,2),(24,'chamuco',7,2),(25,'salinas',7,2),(26,'señora',6,3),(27,'mujer',5,3),(28,'ama',3,3),(29,'dueña',5,3),(30,'cortesana',9,3),(31,'matrona',7,3),(32,'aristócrata',11,3),(33,'dandi',5,4),(34,'presumido',9,4),(35,'coqueto',7,4),(36,'figurín',7,4),(37,'pisaverde',9,4),(38,'petimetre',9,4),(39,'guapo',5,4),(40,'señorito',8,4),(41,'elegante',8,4),(42,'lechuguino',10,4),(43,'quitasol',8,5),(44,'sombrilla',9,5),(45,'parasol',7,5),(46,'ninfa',5,6),(47,'nereida',7,6),(48,'náyade',6,6),(49,'ondina',6,6),(50,'oceánida',8,6),(51,'escalinata',10,7),(52,'grada',5,7),(53,'gradería',8,7),(54,'escala',6,7),(55,'escalerilla',11,7),(56,'peldaños',8,7),(57,'escalones',9,7),(58,'casco',5,8),(59,'ampolla',7,8),(60,'bombona',7,8),(61,'frasco',6,8),(62,'garrafa',7,8),(63,'redoma',6,8),(64,'damajuana',9,8),(65,'patona',6,8),(66,'pelota',6,9),(67,'bola',4,9),(68,'esférico',8,9),(69,'cuero',5,9),(70,'recipiente',10,9),(71,'vasija',6,9),(72,'globo',5,9),(73,'arbusto',7,10),(74,'eje',3,10),(75,'palo',4,10),(76,'asta',4,10),(77,'cigüeñal',8,10),(78,'barra',5,10),(79,'profesor',8,11),(80,'educador',8,11),(81,'instructor',10,11),(82,'pedagogo',8,11),(83,'preceptor',9,11),(84,'mentor',6,11),(85,'ayo',3,11),(86,'avezado',7,11),(87,'experto',7,11),(88,'hábil',5,11),(89,'diestro',7,11),(90,'ducho',5,11),(91,'perito',6,11),(92,'compositor',10,11),(93,'músico',6,11),(94,'artista',7,11),(95,'intrépido',9,12),(96,'fuerte',6,12),(97,'bravo',5,12),(98,'valeroso',8,12),(99,'atrevido',8,12),(100,'animoso',7,12),(101,'osado',5,12),(102,'impávido',8,12),(103,'heroico',7,12),(104,'denodado',8,12),(105,'audaz',5,12),(106,'compadrito',10,12),(107,'guapo',5,12),(108,'birrete',7,13),(109,'boina',5,13),(110,'bonete',6,13),(111,'cofia',5,13),(112,'chichonera',10,13),(113,'montera',7,13),(114,'barretina',9,13),(115,'casco',5,13),(116,'gorra',5,13),(117,'sombrero',8,13),(118,'capucha',7,13),(119,'capuchón',8,13),(120,'condón',6,13),(121,'flaca',5,14),(122,'tilíca',6,14),(123,'catrina',7,14),(124,'huesuda',7,14),(125,'fallecimiento',13,14),(126,'defunción',9,14),(127,'óbito',5,14),(128,'deceso',6,14),(129,'fin',3,14),(130,'trance',6,14),(131,'tránsito',8,14),(132,'asesinato',9,14),(133,'homicidio',9,14),(134,'crimen',6,14),(135,'atentado',8,14),(136,'degollina',9,14),(137,'martirio',8,14),(138,'ruina',5,14),(139,'caída',5,14),(140,'destrucción',11,14),(141,'aniquilamiento',14,14),(142,'desaparición',12,14),(143,'supresión',9,14),(144,'eliminación',11,14),(145,'erradicación',12,14),(146,'funcionario',11,15),(147,'administrativo',14,15),(148,'oficial',7,15),(149,'enseña',6,16),(150,'estandarte',10,16),(151,'emblema',7,16),(152,'banderín',8,16),(153,'banderola',9,16),(154,'blasón',6,16),(155,'confalón',8,16),(156,'distintivo',10,16),(157,'divisa',6,16),(158,'gallardete',10,16),(159,'guión',5,16),(160,'oriflama',8,16),(161,'pabellón',8,16),(162,'pendón',6,16),(163,'símbolo',7,16),(164,'señal',5,16),(165,'lábaro',6,16),(166,'tren',4,17),(167,'convoy',6,17),(168,'subterráneo',11,17),(169,'metropolitano',13,17),(170,'medida',6,17),(171,'patrón',6,17),(172,'caco',4,18),(173,'carterista',10,18),(174,'ratero',6,18),(175,'cleptómano',10,18),(176,'descuidero',10,18),(177,'chorizo',7,18),(178,'mangante',8,18),(179,'saqueador',9,18),(180,'timador',7,18),(181,'bandido',7,18),(182,'atracador',9,18),(183,'maleante',8,18),(184,'cuatrero',8,18),(185,'usurero',7,18),(186,'estafador',9,18),(187,'carero',6,18),(188,'chaca',5,18),(189,'chacal',7,18),(190,'caquito',7,18),(191,'papá',4,19),(192,'progenitor',10,19),(193,'padrazo',7,19),(194,'ascendiente',11,19),(195,'procreador',10,19),(196,'autor',5,19),(197,'creador',7,19),(198,'inventor',8,19),(199,'generador',9,19),(200,'productor',9,19),(201,'fraile',6,19),(202,'religioso',9,19),(203,'sacerdote',9,19),(204,'clérigo',7,19),(205,'tonsurado',9,19),(206,'perro',5,19),(207,'chido',5,19),(208,'ave',3,20),(209,'avecilla',8,20),(210,'volátil',7,20),(211,'pajarillo',9,20),(212,'astuto',6,20),(213,'ladino',6,20),(214,'taimado',7,20),(215,'zorro',5,20),(216,'cuco',4,20),(217,'pillo',5,20),(218,'garra',5,21),(219,'zarpa',5,21),(220,'palma',5,21),(221,'dorso',5,21),(222,'lado',4,21),(223,'costado',7,21),(224,'flanco',6,21),(225,'banda',5,21),(226,'ala',3,21),(227,'dirección',9,21),(228,'orientación',11,21),(229,'sentido',7,21),(230,'baño',4,21),(231,'capa',4,21),(232,'pintura',7,21),(233,'pasada',6,21),(234,'revestimento',12,21),(235,'recubrimiento',13,21),(236,'pericicia',9,21),(237,'habilidad',9,21),(238,'facilidad',9,21),(239,'destreza',8,21),(240,'maña',4,21),(241,'tacto',5,21),(242,'turno',5,21),(243,'jugada',6,21),(244,'tirada',6,21),(245,'lance',5,21),(246,'partido',7,21),(247,'partida',7,21),(248,'poder',5,21),(249,'mando',5,21),(250,'influencia',10,21),(251,'influjo',7,21),(252,'ascendiente',11,21),(253,'privanza',8,21),(254,'amistad',7,21),(255,'ayuda',5,21),(256,'auxilio',7,21),(257,'asistencia',10,21),(258,'tunda',5,21),(259,'somanta',7,21),(260,'castigo',7,21),(261,'reprensión',10,21),(262,'borceguí',8,22),(263,'boto',4,22),(264,'escarpín',8,22),(265,'botín',5,22),(266,'odre',4,22),(267,'pellejo',7,22),(268,'saltar',6,22),(269,'brincar',7,22),(270,'rebotar',7,22),(271,'respingar',9,22),(272,'piruetar',8,22),(273,'alzarse',7,22),(274,'lanzar',6,22),(275,'impulsar',8,22),(276,'echar',5,22),(277,'arrojar',7,22),(278,'despedir',8,22),(279,'tirar',5,22),(280,'expulsar',8,22),(281,'satélite',8,23),(282,'astro',5,23),(283,'espejo',6,23),(284,'cristalera',10,23),(285,'vidriera',8,23),(286,'escaparate',10,23),(287,'cacatúa',7,24),(288,'papagayo',8,24),(289,'loro',4,24),(290,'guacamayo',9,24),(291,'perico',6,24),(292,'cotorra',7,24),(293,'charlatán',9,24),(294,'parlanchín',10,24),(295,'gárrulo',7,24),(296,'hablador',8,24),(297,'sacamuelas',10,24),(298,'ebrio',5,25),(299,'embriagado',10,25),(300,'bebido',6,25),(301,'beodo',5,25),(302,'alcoholizado',12,25),(303,'mamado',6,25),(304,'achispado',9,25),(305,'amonado',7,25),(306,'ajumado',7,25),(307,'ahumado',7,25),(308,'calamocano',10,25),(309,'dipsómano',9,25),(310,'alumbrado',9,25),(311,'curda',5,25),(312,'mona',4,25),(313,'colgado',7,25),(314,'pedo',4,25),(315,'lírico',6,26),(316,'trovador',8,26),(317,'versificador',12,26),(318,'coplista',8,26),(319,'juglar',6,26),(320,'rapsoda',7,26),(321,'rimador',7,26),(322,'aedo',4,26),(323,'bardo',5,26),(324,'vate',4,26),(325,'vícera',6,27),(326,'órgano',6,27),(327,'entrañas',8,27),(328,'entretelas',10,27),(329,'amor',4,27),(330,'sentimiento',11,27),(331,'cariño',6,27),(332,'sensibilidad',12,27),(333,'caridad',7,27),(334,'cariño',6,27),(335,'centro',6,27),(336,'núcleo',6,27),(337,'interior',8,27),(338,'meollo',6,27),(339,'médula',6,27),(340,'puro',4,28),(341,'habano',6,28),(342,'veguero',7,28),(343,'tagarnina',9,28),(344,'cigarrillo',10,28),(345,'pitillo',7,28),(346,'tabaco',6,28),(347,'tamboril',8,29),(348,'caja',4,29),(349,'timbal',6,29),(350,'bombo',5,29),(351,'pandero',7,29),(352,'rodillo',7,29),(353,'rollo',5,29),(354,'cilindro',8,29),(355,'mamá',4,30),(356,'religiosa',9,30),(357,'hermana',7,30),(358,'sor',3,30),(359,'superiora',9,30),(360,'lecho',5,30),(361,'cauce',5,30),(362,'acequia',7,30),(363,'álveo',5,30),(364,'origen',6,30),(365,'motivo',6,30),(366,'causa',5,30),(367,'fundamento',10,30),(368,'poso',4,30),(369,'sedimento',9,30),(370,'partícula',9,31),(371,'corpúsculo',10,31),(372,'insignificancia',15,31),(373,'pequeñez',8,31),(374,'migaja',6,31),(375,'pizca',5,31),(376,'brizna',6,31),(377,'traza',5,31),(378,'melodía',7,32),(379,'armonía',7,32),(380,'canto',5,32),(381,'ritmo',5,32),(382,'tonalidad',9,32),(383,'polifonía',9,32),(384,'filarmonía',10,32),(385,'solfeo',6,32),(386,'can',4,33),(387,'chucho',6,33),(388,'tuso',4,33),(389,'cachorro',8,33),(390,'mephistófeles',13,33),(391,'difícil',7,33),(392,'chido',5,33),(393,'arduo',5,33),(394,'complejo',8,33),(395,'duro',4,33),(396,'complicado',10,33),(397,'ordenador',9,34),(398,'calduladora',11,34),(399,'procesador',10,34),(400,'cerebro electrónico',19,34),(401,'ejemplar',8,35),(402,'tomo',4,35),(403,'volumen',7,35),(404,'obra',4,35),(405,'texto',5,35),(406,'manual',6,35),(407,'compendio',9,35),(408,'vademécum',9,35),(409,'invidencia',10,36),(410,'ablepsia',8,36),(411,'oscurecimiento',14,36),(412,'ofuscamiento',12,36),(413,'obstinación',11,36),(414,'obececación',12,36),(415,'empecinamiento',14,36),(416,'emperramiento',13,36),(417,'alucinación',11,36),(418,'desacierto',10,36),(419,'deslumbramiento',15,36),(420,'expasperación',13,36),(421,'extravío',8,36),(422,'tierra',6,37),(423,'globo',5,37),(424,'humanidad',9,37),(425,'planeta',7,37),(426,'orbe',4,37),(427,'siglo',5,37),(428,'universo',8,37),(429,'cosmos',6,37),(430,'creación',8,37),(431,'sociedad',9,37),(432,'experiencia',11,37),(433,'terreno',7,38),(434,'terruño',7,38),(435,'campiña',7,38),(436,'labrantío',9,38),(437,'pradera',7,38),(438,'pradería',8,38),(439,'prado',5,38),(440,'sembrado',8,38),(441,'dehesa',6,38),(442,'huerta',6,38),(443,'predio',6,38),(444,'hacienda',8,38),(445,'finca',5,38),(446,'propiedad',9,38),(447,'circunferencia',14,39),(448,'aro',3,39),(449,'redondel',8,39),(450,'órbita',6,39),(451,'disco',5,39),(452,'redondez',8,39),(453,'rueda',5,39),(454,'cerco',5,39),(455,'corro',5,39),(456,'contorno',8,39),(457,'perímetro',9,39),(458,'circuito',8,39),(459,'ateneo',6,39),(460,'casino',6,39),(461,'sociedad',8,39),(462,'club',4,39),(463,'curvado',7,39),(464,'curvo',5,39),(465,'radial',6,39),(466,'lenticular',10,39),(467,'barco',5,40),(468,'navío',5,40),(469,'bajel',5,40),(470,'nao',3,40),(471,'buque',5,40),(472,'embarcación',11,40),(473,'pabellón',8,40),(474,'recinto',7,40),(475,'almacén',7,40),(476,'flor',4,41),(477,'capullo',7,41),(478,'cotón',5,41),(479,'rosado',6,41),(480,'sonrosado',9,41),(481,'encarnado',9,41),(482,'cráneo',6,42),(483,'sesera',6,42),(484,'cabeza',6,42),(485,'casco',5,42),(486,'rima',4,42),(487,'epitafio',8,42),(488,'receptor',8,43),(489,'reproductor',11,43),(490,'auricular',9,43),(491,'aparato',7,43),(492,'celular',7,43),(493,'móvil',5,43),(494,'medíco',6,44),(495,'matasanos',9,44),(496,'cirujano',8,44),(497,'graduado',8,44),(498,'catedrático',11,44),(499,'cirujano',8,44),(500,'micho',5,45),(501,'minino',6,45),(502,'micifuz',7,45),(503,'morrongo',8,45),(504,'morroño',7,45),(505,'elevador',8,45),(506,'palanca',7,45),(507,'cric',4,45),(508,'sagaz',5,45),(509,'astuto',6,45),(510,'traicionero',11,45),(511,'pícaro',6,45),(512,'naco',4,45),(513,'astro',5,46),(514,'día',3,46),(515,'estrella',8,46),(516,'luz',3,46),(517,'diadema',7,47),(518,'tiara',5,47),(519,'guirnalda',9,47),(520,'blasón',6,47),(521,'laureola',8,47),(522,'nimbo',5,47),(523,'halo',4,47),(524,'aureola',7,47),(525,'aro',3,47),(526,'cerco',5,47),(527,'premio',6,47),(528,'galardón',8,47),(529,'recompensa',10,47),(530,'reino',5,47),(531,'monarquía',9,47),(532,'imperio',7,47),(533,'cima',4,47),(534,'cúspide',7,47),(535,'investir',8,47),(536,'ceñir',5,47),(537,'aureolar',8,47),(538,'entronizar',10,47),(539,'proclamar',9,47),(540,'terminar',8,47),(541,'acabar',6,47),(542,'culminar',8,47),(543,'rematar',7,47),(544,'consumar',8,47),(545,'finalizar',9,47),(546,'alcanzar',8,47),(547,'canoa',5,48),(548,'lancha',6,48),(549,'bote',4,48),(550,'góndola',7,48),(551,'trajinera',9,48),(552,'bebé',5,49),(553,'nene',4,49),(554,'rorro',5,49),(555,'crío',5,49),(556,'criatura',8,49),(557,'peque',5,49),(558,'chico',5,49),(559,'churumbel',9,49),(560,'hijo',4,49),(561,'mocoso',6,49),(562,'rapaz',5,49),(563,'chiquillo',9,49),(564,'infante',7,49),(565,'morro',5,49),(566,'chamaco',7,49),(567,'chavo',5,49),(568,'pez',3,50),(569,'brea',4,50),(570,'resina',6,50),(571,'capturado',9,50),(572,'atrapado',8,50),(573,'cazado',6,50),(574,'agarrado',8,50),(575,'cogido',6,50),(576,'pillado',7,50),(577,'apresado',8,50),(578,'sorprendido',11,50),(579,'descubierto',11,50),(580,'urbe',4,51),(581,'capital',7,51),(582,'metrópoli',9,51),(583,'villa',5,51),(584,'población',9,51),(585,'localidad',9,51),(586,'urbe',4,52),(587,'capital',7,52),(588,'metrópoli',9,52),(589,'villa',5,52),(590,'población',9,52),(591,'localidad',9,52),(592,'ósculo',6,53),(593,'besuqueo',8,53),(594,'carantoña',9,53),(595,'mimo',4,53),(596,'caricia',7,53),(597,'contacto',8,53),(598,'sapo',5,54),(599,'sapillo',7,54),(600,'renacuajo',9,54),(601,'batracio',8,54);
/*!40000 ALTER TABLE `sinonimo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sustantivo`
--

DROP TABLE IF EXISTS `sustantivo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sustantivo` (
  `idSustantivo` int(11) NOT NULL AUTO_INCREMENT COMMENT '	',
  `sustantivo` varchar(45) COLLATE utf8_unicode_ci NOT NULL,
  `longitud` int(11) DEFAULT NULL,
  `idCarta` int(11) NOT NULL,
  PRIMARY KEY (`idSustantivo`),
  KEY `fk_sustantivo_carta1_idx` (`idCarta`),
  CONSTRAINT `fk_sustantivo_carta1` FOREIGN KEY (`idCarta`) REFERENCES `carta` (`idCarta`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sustantivo`
--

LOCK TABLES `sustantivo` WRITE;
/*!40000 ALTER TABLE `sustantivo` DISABLE KEYS */;
/*!40000 ALTER TABLE `sustantivo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tipoTrofeo`
--

DROP TABLE IF EXISTS `tipoTrofeo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tipoTrofeo` (
  `idTipoTrofeo` int(11) NOT NULL AUTO_INCREMENT,
  `tipoTrofeo` varchar(45) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`idTipoTrofeo`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
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
  `idTipoUsuario` int(11) NOT NULL AUTO_INCREMENT,
  `tipoUsr` varchar(45) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`idTipoUsuario`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
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
  `nombre` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `imagen` varchar(256) COLLATE utf8_unicode_ci DEFAULT NULL,
  `imagenIcon` varchar(256) COLLATE utf8_unicode_ci DEFAULT NULL,
  `condicion` varchar(256) COLLATE utf8_unicode_ci DEFAULT NULL,
  `descripcion` varchar(256) COLLATE utf8_unicode_ci DEFAULT NULL,
  `idTipoTrofeo` int(11) NOT NULL,
  PRIMARY KEY (`idTrofeo`),
  KEY `fk_trofeo_tipoTrofeo1_idx` (`idTipoTrofeo`),
  CONSTRAINT `fk_trofeo_tipoTrofeo1` FOREIGN KEY (`idTipoTrofeo`) REFERENCES `tipoTrofeo` (`idTipoTrofeo`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `trofeo`
--

LOCK TABLES `trofeo` WRITE;
/*!40000 ALTER TABLE `trofeo` DISABLE KEYS */;
INSERT INTO `trofeo` VALUES (1,'Gigante en el recreo',NULL,NULL,'Alcancé 1000 puntos en una partida de la modalidad Juego Libre en el nivel Básico','Vine, vi, conquisté',1),(2,'Con los ojos cerrados',NULL,NULL,'Alcancé 3500 puntos en una partida de la modalidad Juego Libre en el nivel Avanzado','Y no fue casualidad',1),(3,'Chiquito pero...',NULL,NULL,'Alcancé 7500 puntos en una partida de la modalidad Diminutivos','Son aquellas pequeñas cosas',1),(4,'De colores',NULL,NULL,'Alcancé 15000 puntos en una partida de la modalidad Adjetivos','Los ojos se me fueron tras una morena que pasó',1),(5,'Triunfo al recuerdo',NULL,NULL,'Alcancé 21000 puntos en una partida de la modalidad Sinónimos','La memoria disminuye si no se la ejercita',1),(6,'Precisión quirúrgica',NULL,NULL,'Completé una partida sin errores','Conocer es resolver',1),(7,'Aprendiz de la lotería',NULL,NULL,'Acumulé 10 partidas ganadas','Así que de esto se trata',2),(8,'Veterano de la lotería',NULL,NULL,'Acumulé 25 partidas ganadas','Lo he visto todo',2),(9,'Experto de la lotería',NULL,NULL,'Acumulé 50 partidas ganadas','Bodas de oro',2),(10,'Maestro de la lotería',NULL,NULL,'Acumulé 75 partidas ganadas','Ningún misterio se me escapa',2),(11,'Lotería Wizard',NULL,NULL,'Acumulé 100 partidas ganadas','El primero de los epígonos',2),(12,'Tanteando las aguas',NULL,NULL,'Gané una partida en la modalidad Juego Libre en nivel Básico','¿Qué gané?',3),(13,'Marinero de agua dulce',NULL,NULL,'Gané una partida en la modalidad Juego Libre en nivel Avanzado','El día precedente enseña al que sigue',3),(14,'Marinero curtido',NULL,NULL,'Gané una partida en la modalidad Diminutivos','Se hace camino en la mar',3),(15,'Buzo',NULL,NULL,'Gané una partida en la modalidad Adjetivos','Quién fuera el batiscafo de tu abismo',3),(16,'Capitán',NULL,NULL,'Gané una partida en la modalidad Sinónimos','Yo no soy marinero',3),(17,'Lobo de mar',NULL,NULL,'Gané una partida en todas las modalidades','Antes de recorrer mi camino yo era mi camino',3),(18,'O fortuna',NULL,NULL,'Gané una partida con la bonificación máxima por suerte','La suerte juega con cartas sin marcar',3),(19,'El corazón de las tinieblas',NULL,NULL,'','Aquél que no será nombrado',4),(20,'Ph\'nglui mglw\'nafh Cthulhu R\'lyeh wgah\'nagl fhtagn',NULL,NULL,'','En su casa de R\'lyeh el difunto Cthulhu aguarda soñando',4),(21,'Coleccionista',NULL,NULL,'Acumulé 18 cartas en mi galería','Nadie tiene lo que no se merece',5),(22,'Galerista',NULL,NULL,'Acumulé 33 cartas en mi galería','Hay afectos de tan delicada honestidad',5),(23,'Museógrafo',NULL,NULL,'Acumulé 54 cartas en mi galería','El lenguaje no es el aya sino la madre del pensamiento',5),(24,'Leyenda',NULL,NULL,'He obtenido todos los trofeos disponibles','Vine, vi, conquisté',5);
/*!40000 ALTER TABLE `trofeo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `usuario`
--

DROP TABLE IF EXISTS `usuario`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `usuario` (
  `idUsr` int(11) NOT NULL AUTO_INCREMENT,
  `nombreUsr` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `nombre` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `aPaterno` varchar(25) COLLATE utf8_unicode_ci DEFAULT NULL,
  `aMaterno` varchar(25) COLLATE utf8_unicode_ci DEFAULT NULL,
  `sexo` char(1) COLLATE utf8_unicode_ci DEFAULT NULL,
  `edad` int(11) DEFAULT NULL,
  `correo` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `contrasena` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `cargo` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `area` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `idTipoUsuario` int(11) NOT NULL,
  `idDivision` int(11) DEFAULT NULL,
  `idGradoActivo` int(11) DEFAULT NULL,
  `idGradoPosgrado` int(11) DEFAULT NULL,
  `idAvatar` int(11) NOT NULL,
  PRIMARY KEY (`idUsr`),
  KEY `fk_usuario_tipoUsuario1_idx` (`idTipoUsuario`),
  KEY `fk_usuario_division1_idx` (`idDivision`),
  KEY `fk_usuario_gradoActivo1_idx` (`idGradoActivo`),
  KEY `fk_usuario_gradoPosgrado1_idx` (`idGradoPosgrado`),
  KEY `fk_usuario_avatar1_idx` (`idAvatar`),
  CONSTRAINT `fk_usuario_tipoUsuario1` FOREIGN KEY (`idTipoUsuario`) REFERENCES `tipoUsuario` (`idTipoUsuario`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk_usuario_division1` FOREIGN KEY (`idDivision`) REFERENCES `division` (`idDivision`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk_usuario_gradoActivo1` FOREIGN KEY (`idGradoActivo`) REFERENCES `gradoActivo` (`idGradoActivo`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk_usuario_gradoPosgrado1` FOREIGN KEY (`idGradoPosgrado`) REFERENCES `gradoPosgrado` (`idGradoPosgrado`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk_usuario_avatar1` FOREIGN KEY (`idAvatar`) REFERENCES `avatar` (`idAvatar`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usuario`
--

LOCK TABLES `usuario` WRITE;
/*!40000 ALTER TABLE `usuario` DISABLE KEYS */;
/*!40000 ALTER TABLE `usuario` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `verbo`
--

DROP TABLE IF EXISTS `verbo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `verbo` (
  `idVerbo` int(11) NOT NULL AUTO_INCREMENT,
  `verbo` varchar(45) COLLATE utf8_unicode_ci NOT NULL,
  `longitud` int(11) DEFAULT NULL,
  `idCarta` int(11) NOT NULL,
  PRIMARY KEY (`idVerbo`),
  KEY `fk_verbo_carta1_idx` (`idCarta`),
  CONSTRAINT `fk_verbo_carta1` FOREIGN KEY (`idCarta`) REFERENCES `carta` (`idCarta`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `verbo`
--

LOCK TABLES `verbo` WRITE;
/*!40000 ALTER TABLE `verbo` DISABLE KEYS */;
/*!40000 ALTER TABLE `verbo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vitrina`
--

DROP TABLE IF EXISTS `vitrina`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `vitrina` (
  `idUsr` int(11) NOT NULL,
  `idJuego` int(11) NOT NULL,
  `idTrofeo` int(11) NOT NULL,
  PRIMARY KEY (`idUsr`,`idJuego`,`idTrofeo`),
  KEY `fk_jugador_has_trofeo_trofeo1_idx` (`idTrofeo`),
  KEY `fk_jugador_has_trofeo_jugador1_idx` (`idUsr`,`idJuego`),
  CONSTRAINT `fk_jugador_has_trofeo_jugador1` FOREIGN KEY (`idUsr`, `idJuego`) REFERENCES `jugador` (`idUsr`, `idJuego`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk_jugador_has_trofeo_trofeo1` FOREIGN KEY (`idTrofeo`) REFERENCES `trofeo` (`idTrofeo`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vitrina`
--

LOCK TABLES `vitrina` WRITE;
/*!40000 ALTER TABLE `vitrina` DISABLE KEYS */;
/*!40000 ALTER TABLE `vitrina` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2013-07-22 13:44:41
