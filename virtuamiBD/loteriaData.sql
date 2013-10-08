CREATE DATABASE  IF NOT EXISTS `loteriadb` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `loteriadb`;
-- MySQL dump 10.13  Distrib 5.5.32, for debian-linux-gnu (x86_64)
--
-- Host: 127.0.0.1    Database: loteriadb
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
-- Table structure for table `adjetivo`
--

DROP TABLE IF EXISTS `adjetivo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `adjetivo` (
  `idAdjetivo` int(11) NOT NULL AUTO_INCREMENT,
  `adjetivo` varchar(45) COLLATE utf8_unicode_ci NOT NULL,
  `idCarta` int(11) NOT NULL,
  PRIMARY KEY (`idAdjetivo`),
  KEY `fk_adjetivo_carta1_idx` (`idCarta`),
  CONSTRAINT `fk_adjetivo_carta1` FOREIGN KEY (`idCarta`) REFERENCES `carta` (`idCarta`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=230 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `adjetivo`
--

LOCK TABLES `adjetivo` WRITE;
/*!40000 ALTER TABLE `adjetivo` DISABLE KEYS */;
INSERT INTO `adjetivo` VALUES (1,'gallesco',1),(2,'galloso',1),(3,'gallino',1),(4,'gallito',1),(5,'diabólico',2),(6,'endiablado',2),(7,'diabluno',2),(8,'diablesco',2),(9,'diabloso',2),(10,'damoso',3),(11,'damal',3),(12,'damuno',3),(13,'damesco',3),(14,'damino',3),(15,'catrín',4),(16,'catrinoso',4),(17,'catrinal',4),(18,'catrinuno',4),(19,'catrimesco',4),(20,'encatrinado',4),(21,'paragual',5),(22,'pargüil',5),(23,'paragüeño',5),(24,'paraguoso',5),(25,'paragüesco',5),(26,'paraguasado',5),(27,'sirenal',6),(28,'sirenoso',6),(29,'sirenesco',6),(30,'sirénico',6),(31,'sireniento',6),(32,'sirenil',6),(33,'sirenizado',6),(34,'escalérico',7),(35,'escaleroso',7),(36,'escaleril',7),(37,'escalerino',7),(38,'escalerado',7),(39,'embotellado',8),(40,'botelloso',8),(41,'botellesco',8),(42,'botellal',8),(43,'botelluzco',8),(44,'balonudo',9),(45,'baloneado',9),(46,'balonil',9),(47,'balonoso',9),(48,'balonesco',9),(49,'arbóreo',10),(50,'arbolesco',10),(51,'arboloso',10),(52,'arbolino',10),(53,'magistral',11),(54,'amaestrado',11),(55,'maestroso',11),(56,'maestrino',11),(57,'valiente',12),(58,'valeroso',12),(59,'envalentonado',12),(60,'gorroso',13),(61,'gorrino',13),(62,'gorril',13),(63,'gorroneado',13),(64,'mortal',14),(65,'mortífero',14),(66,'muerto',14),(67,'mortuorio',14),(68,'mortecino',14),(69,'burocrático',15),(70,'burocratoso',15),(71,'burocretino',15),(72,'burocratón',15),(73,'burocratizado',15),(74,'abanderado',16),(75,'banderal',16),(76,'banderáceo',16),(77,'banderuzco',16),(78,'métrico',17),(79,'metroso',17),(80,'metresco',17),(81,'metruno',17),(82,'ladrón',18),(83,'ladronal',18),(84,'ladronesco',18),(85,'paterno',19),(86,'paternal',19),(87,'padresco',19),(88,'pajaril',20),(89,'pajaresco',20),(90,'pajaruzco',20),(91,'pajaroso',20),(92,'pajarino',20),(93,'manual',21),(94,'manada',21),(95,'mandado',21),(96,'botado',22),(97,'botesco',22),(98,'botino',22),(99,'botal',22),(100,'lunar',23),(101,'lunático',23),(102,'lunario',23),(103,'lunesco',23),(104,'cotorro',24),(105,'cotorreado',24),(106,'cotorresco',24),(107,'cotorrón',24),(108,'borracho',25),(109,'emborrachado',25),(110,'borrachino',25),(111,'poético',26),(112,'poetizado',26),(113,'poetáceo',26),(114,'poetoso',26),(115,'poetible',26),(116,'poetil',26),(117,'poetal',26),(118,'poetario',26),(119,'cardiaco',27),(120,'descorazonado',27),(121,'corazonesco',27),(122,'corazonil',27),(123,'corazonizo',27),(124,'cigarroso',28),(125,'cigarresco',28),(126,'cigarril',28),(127,'acigarrado',28),(128,'cigarral',28),(129,'tamboril',29),(130,'tambórico',29),(131,'tamboresco',29),(132,'tamborino',29),(133,'tamboroso',29),(134,'materno',30),(135,'maternal',30),(136,'madresco',30),(137,'atómico',31),(138,'atomal',31),(139,'atomesco',31),(140,'musical',32),(141,'musicalizado',32),(142,'musicoso',32),(143,'musicalesco',32),(144,'perruno',33),(145,'aperrado',33),(146,'perro',33),(147,'perrón',33),(148,'computacional',34),(149,'computadorizado',34),(150,'computadoresco',34),(151,'libresco',35),(152,'libruno',35),(153,'libroso',35),(154,'cegado',36),(155,'ciego',36),(156,'cegatón',36),(157,'mundial',37),(158,'mundializado',37),(159,'mundesco',37),(160,'campestre',38),(161,'campirano',38),(162,'acampado',38),(163,'campal',38),(164,'circular',39),(165,'circulado',39),(166,'circulino',39),(167,'embarcado',40),(168,'barquesco',40),(169,'barcusco',40),(170,'barqueril',40),(171,'rosa',41),(172,'rosado',41),(173,'rosáceo',41),(174,'calavérico',42),(175,'calaverada',42),(176,'calaveresco',42),(177,'calaverario',42),(178,'calaverino',42),(179,'calaveruzco',42),(180,'telefónico',43),(181,'telefoneado',43),(182,'telefonesco',43),(183,'telefonal',43),(184,'doctoral',44),(185,'doctorado',44),(186,'doctoresco',44),(187,'gatuno',45),(188,'engatusado',45),(189,'gatoso',45),(190,'gatesco',45),(191,'soleado',46),(192,'solar',46),(193,'asoleado',46),(194,'coronado',47),(195,'coronal',47),(196,'coronil',47),(197,'coronesco',47),(198,'chalupesco',48),(199,'chalupano',48),(200,'chaluposo',48),(201,'aniñado',49),(202,'niñesco',49),(203,'niñoso',49),(204,'infantil',49),(205,'niñáceo',49),(206,'pescado',50),(207,'pescadesco',50),(208,'pescadil',50),(209,'pecesoso',50),(210,'pescadoso',50),(211,'pescadáceo',50),(212,'pecesesco',50),(213,'ciudadano',51),(214,'ciudadesco',51),(215,'citadino',51),(216,'bailarina',52),(217,'bailado',52),(218,'bailable',52),(219,'besado',53),(220,'besucón',53),(221,'besuqueado',53),(222,'besable',53),(223,'besoso',53),(224,'ranal',54),(225,'ranudo',54),(226,'ranoso',54),(227,'ranino',54),(228,'ranesco',54),(229,'ranil',54);
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
  `gdeAvatar` varchar(256) COLLATE utf8_unicode_ci NOT NULL,
  `icnAvatar` varchar(256) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`idAvatar`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `avatar`
--

LOCK TABLES `avatar` WRITE;
/*!40000 ALTER TABLE `avatar` DISABLE KEYS */;
INSERT INTO `avatar` VALUES (1,'/media/img/avatar/av_us_gigante.jpg','/media/img/avatar/av_ic_gigante.jpg'),(2,'/media/img/avatar/av_us_cerrados.jpg','/media/img/avatar/av_ic_cerrados.jpg'),(3,'/media/img/avatar/av_us_chuiquito.jpg','/media/img/avatar/av_ic_chuiquito.jpg'),(4,'/media/img/avatar/av_us_colores.jpg','/media/img/avatar/av_ic_colores.jpg'),(5,'/media/img/avatar/av_us_recuerdo.jpg','/media/img/avatar/av_ic_recuerdo.jpg'),(6,'/media/img/avatar/av_us_quirurgica.jpg','/media/img/avatar/av_ic_quirurgica.jpg'),(7,'/media/img/avatar/av_us_aprendiz.jpg','/media/img/avatar/av_ic_aprendiz.jpg'),(8,'/media/img/avatar/av_us_veterano.jpg','/media/img/avatar/av_ic_veterano.jpg'),(9,'/media/img/avatar/av_us_experto.jpg','/media/img/avatar/av_ic_experto.jpg'),(10,'/media/img/avatar/av_us_maestro.jpg','/media/img/avatar/av_ic_maestro.jpg'),(11,'/media/img/avatar/av_us_hechicero.jpg','/media/img/avatar/av_ic_hechicero.jpg'),(12,'/media/img/avatar/av_us_tanteando.jpg','/media/img/avatar/av_ic_tanteando.jpg'),(13,'/media/img/avatar/av_us_aguadulce.jpg','/media/img/avatar/av_ic_aguadulce.jpg'),(14,'/media/img/avatar/av_us_curtido.jpg','/media/img/avatar/av_ic_curtido.jpg'),(15,'/media/img/avatar/av_us_buzo.jpg','/media/img/avatar/av_ic_buzo.jpg'),(16,'/media/img/avatar/av_us_capitan.jpg','/media/img/avatar/av_ic_capitan.jpg'),(17,'/media/img/avatar/av_us_lobodemar.jpg','/media/img/avatar/av_ic_lobodemar.jpg'),(18,'/media/img/avatar/av_us_fortuna.jpg','/media/img/avatar/av_ic_fortuna.jpg'),(19,'/media/img/avatar/av_us_corazon.jpg','/media/img/avatar/av_ic_corazon.jpg'),(20,'/media/img/avatar/av_us_cthulhu.jpg','/media/img/avatar/av_ic_cthulhu.jpg'),(21,'/media/img/avatar/av_us_coleccionista.jpg','/media/img/avatar/av_ic_coleccionista.jpg'),(22,'/media/img/avatar/av_us_galerista.jpg','/media/img/avatar/av_ic_galerista.jpg'),(23,'/media/img/avatar/av_us_museografo.jpg','/media/img/avatar/av_ic_museografo.jpg'),(24,'/media/img/avatar/av_us_leyenda.jpg','/media/img/avatar/av_ic_leyenda.jpg'),(25,'/media/img/avatar/av_us_carbon.jpg','/media/img/avatar/av_ic_carbon.jpg');
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
  `audioOGG` varchar(256) COLLATE utf8_unicode_ci DEFAULT NULL,
  `audioMP3` varchar(256) COLLATE utf8_unicode_ci DEFAULT NULL,
  `imgMazo` varchar(256) COLLATE utf8_unicode_ci DEFAULT NULL,
  `imgPlantilla` varchar(256) COLLATE utf8_unicode_ci DEFAULT NULL,
  `imgGaleria` varchar(256) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`idCarta`)
) ENGINE=InnoDB AUTO_INCREMENT=55 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `carta`
--

LOCK TABLES `carta` WRITE;
/*!40000 ALTER TABLE `carta` DISABLE KEYS */;
INSERT INTO `carta` VALUES (1,'gallo','Tomado de la tradición oral mexicana. La referencia son las últimas líneas de una adivinanza: \"Tengo de rey la cabeza,\\nCalzo espuela pavonada,\\nLlevo barba colorada,\\nMi sueño temprano empieza,\\nY madrugo a la alborada.\" Por lo general, este tipo de adivinanzas implican el reto de decodificar las metáforas, una por una, rumbo al significado global de la imagen presentada. Tienden a tener como respuesta un único elemento, sea concepto, animal o cosa.','/media/audio/01_crt_gallo.ogg','/media/audio/01_crt_gallo.mp3','/media/img/mazo/h_01_gallo.jpg','/media/img/plantilla/01_gallo.jpg','/media/img/galeria/g_01_gallo.jpg'),(2,'diablo','Tomado de Paraíso perdido, escrito por John Milton. (1608-1674). Poeta y ensayista, conocido principalmente por la obra de la que se extrajo el verso y de enorme importancia en la tradición de las letras inglesas. Su influencia política fue vasta y su pensamiento sirvió como referencia para la redacción de la constitución de los Estados Unidos de América.','/media/audio/02_crt_diablo.ogg','/media/audio/02_crt_diablo.mp3','/media/img/mazo/h_02_diablo.jpg','/media/img/plantilla/02_diablo.jpg','/media/img/galeria/g_02_diablo.jpg'),(3,'dama','Autor de la primera novela moderna, Miguel de Cervantes Saavedra (1547-1616) es, quizás, universalmente conocido. El ingenioso hidalgo don Quijote de la Mancha, proveyó, tal vez por primera vez, el desarrollo de personajes humanos con defectos y sujetos a distintos arcos narrativos que llevan cada momento de la historia. Como referencia, se tomó una de las muchas invocaciones que hace Quijote de su inmortal amada, Dulcinea del Toboso.','/media/audio/03_crt_dama.ogg','/media/audio/03_crt_dama.mp3','/media/img/mazo/h_03_dama.jpg','/media/img/plantilla/03_dama.jpg','/media/img/galeria/g_03_dama.jpg'),(4,'catrín','Poeta, crítico y traductor, Charles Baudelaire (1821-1867) es una de las voces más significativas en el panorama de las letras francesas y del mundo. Su talento, fuerza y agudeza crítica le colocan como uno de sus autores más importantes. La referencia es tomada de Cohetes, su diario.','/media/audio/04_crt_catrin.ogg','/media/audio/04_crt_catrin.mp3','/media/img/mazo/h_04_catrin.jpg','/media/img/plantilla/04_catrin.jpg','/media/img/galeria/g_04_catrin.jpg'),(5,'paraguas','Isiodore Lucien Ducasse (1846-1870), uruguayo de nacimiento y francés por tradición, firmó su obra con el seudónimo Conde de Lautréamont. Hijo de un diplomático francés, su fugaz paso por el mundo dejó una marca indeleble, aunque no gozara de fama en su tiempo. Su obra es revalorada por los autores del movimiento vanguardista del Surrealismo y, en América, por escritores como Alejo Carpentier. La referencia es extraída de su obra más famosa, Los cantos de Maldoror.','/media/audio/05_crt_paraguas.ogg','/media/audio/05_crt_paraguas.mp3','/media/img/mazo/h_05_paraguas.jpg','/media/img/plantilla/05_paraguas.jpg','/media/img/galeria/g_05_paraguas.jpg'),(6,'sirena','La Odisea es uno de los dos grandes poemas épicos atribuidos a la figura de Homero (ca. siglo VIII a. C.). El pasaje es tomado del encuentro de Odiseo y su tripulación con la figura de las sirenas. Advertido por Circe, Odiseo, deseoso de escuchar el canto maravilloso de aquellas criaturas, es atado al mástil de la embarcación, mientras sus tripulantes prosiguen el viaje con los oídos cubiertos de cera. Este relato sirve de origen a muchas expresiones y construcciones simbólicas sobre las sirenas y su canto. La ilustración se creó como homenaje al surrealista René Magrite, y su cuadro, La invención colectiva. En ella, se invierte la configuración de la criatura, con torso de pez y piernas de mujer.','/media/audio/06_crt_sirena.ogg','/media/audio/06_crt_sirena.mp3','/media/img/mazo/h_06_sirena.jpg','/media/img/plantilla/06_sirena.jpg','/media/img/galeria/g_06_sirena.jpg'),(7,'escalera','Los Libros del Chilam Balam son parte de la herencia que sobrevive de nuestra tradición maya. Escritos después de la Conquista, es posible detectar elementos de censura y la influencia de la Iglesia católica. Cada comunidad creó su propio libro; la referencia es tomada de El Chilam Balam de Chumayel, uno de los libros más famosos dado que fue el que sobrevivió con un contenido más completo.','/media/audio/07_crt_escalera.ogg','/media/audio/07_crt_escalera.mp3','/media/img/mazo/h_07_escalera.jpg','/media/img/plantilla/07_escalera.jpg','/media/img/galeria/g_07_escalera.jpg'),(8,'botella','Arthut Rimbaud (1854-1891) fue uno de los grandes jóvenes maestros de la poesía francesa. Comenzó su carrera a los 15 años y la abandonó para siempre a los 20. Su huella, sin embargo, es innegable. Su verso vibrante, su copiosa producción, su perspicaz ingenio y el impacto de su voz sirven aún hoy de modelo y para la reflexión.','/media/audio/08_crt_botella.ogg','/media/audio/08_crt_botella.mp3','/media/img/mazo/h_08_botella.jpg','/media/img/plantilla/08_botella.jpg','/media/img/galeria/g_08_botella.jpg'),(9,'balón','La referencia es tomada del título del libro de ensayos y reflexiones en torno al futbol de Juan Villoro (1956-). Narrador y ensayista, ha sido galardonado con prestigiosos premios tanto literarios como periodísticos. También ha impartido clases de literatura en universidades de distintos países.','/media/audio/09_crt_balon.ogg','/media/audio/09_crt_balon.mp3','/media/img/mazo/h_09_balon.jpg','/media/img/plantilla/09_balon.jpg','/media/img/galeria/g_09_balon.jpg'),(10,'árbol','Refrán popular mexicano. Los refranes son construcciones breves, muchas veces rimadas o con otros elementos metafóricos o poéticos, que pretenden ilustrar un punto. Al ser tan conocidas, estas sentencias tienden a ser consideradas como una \"verdad\" popular. Este refrán tiene muchas variantes, pero ésta es quizás la más común.','/media/audio/10_crt_arbol.ogg','/media/audio/10_crt_arbol.mp3','/media/img/mazo/h_10_arbol.jpg','/media/img/plantilla/10_arbol.jpg','/media/img/galeria/g_10_arbol.jpg'),(11,'maestro','Cita atribuida al matemático y filósofo griego Pitágoras de Samos (ca. 580 a. C.- ca. 495 a. C.), famoso por su teorema y sus distintas aportaciones a la ciencia. Maestro de la oralidad, su pensamiento sobrevivió, como el de Buda, Jesús o Sócrates, a partir de sus discípulos. Su influencia abarcó las matemáticas, la astronomía y la música.','/media/audio/11_crt_maestro.ogg','/media/audio/11_crt_maestro.mp3','/media/img/mazo/h_11_maestro.jpg','/media/img/plantilla/11_maestro.jpg','/media/img/galeria/g_11_maestro.jpg'),(12,'valiente','La filosofía de Georg Wilhem Friedrich Hegel (1770-1831) representa una de las cimas del idealismo occidental. Hegel abarcó áreas del conocimiento como la historia, la religión, el arte, la ética, el poder y el estado. Influyó en un sin número de escritores y pensadores, e incluso sus agudos detractores dialogan con su pensamiento, volviéndolo así una referencia ineludible en la historia del pensamiento occidental.','/media/audio/12_crt_valiente.ogg','/media/audio/12_crt_valiente.mp3','/media/img/mazo/h_12_valiente.jpg','/media/img/plantilla/12_valiente.jpg','/media/img/galeria/g_12_valiente.jpg'),(13,'gorro','Conocido proverbio judío. Los proverbios, al igual que los refranes, pretenden transmitir una idea determinada y su popularidad asegura que se conserven como registro o parte de una comunidad, en ocasiones inluso como seña de identidad.','/media/audio/13_crt_gorro.png','/media/audio/13_crt_gorro.mp3','/media/img/mazo/h_13_gorro.jpg','/media/img/plantilla/13_gorro.jpg','/media/img/galeria/g_13_gorro.jpg'),(14,'muerte','La referencia es tomada del largo poema, Muerte sin fin, de José Gorostiza (1901-1973). Poeta mexicano que formó parte del grupo Contemporáneos. Conocido como \"el poeta de la inteligencia\", su obra es una exploración profunda de la mente y las angustias del ser humano. Su actividad como diplomático le impidió volverse un autor prolífico.','/media/audio/14_crt_muerte.ogg','/media/audio/14_crt_muerte.mp3','/media/img/mazo/h_14_muerte.jpg','/media/img/plantilla/14_muerte.jpg','/media/img/galeria/g_14_muerte.jpg'),(15,'burócrata','Nikolái Gógol (1809-1852) es uno de los autores más importantes de la literatura rusa, pues su novela, Almas muertas, es considerada como la primera novela moderna de dicha nación. La referencia es tomada de El capote, una de las cuatro novelas breves agrupados bajo el nombre Novelas peterburguesas. En ella, Gógol relata la enternecedora historia de un pobre burócrata y de todos los sacrificios que tuvo que hacer para obtener un capote nuevo.','/media/audio/15_crt_burocrata.ogg','/media/audio/15_crt_burocrata.mp3','/media/img/mazo/h_15_burocrata.jpg','/media/img/plantilla/15_burocrata.jpg','/media/img/galeria/g_15_burocrata.jpg'),(16,'bandera','El \"Toque de bandera\" es entonado en todas las escuelas de nivel básico de México. Su autora, Xóchitl Angélica Palomino y Contreras (1932-1996) se desempeñó profesionalmente como maestra de escuela. Estudió en la Escuela Nacional de Maestros y luego prosiguió sus estudios en Pedagogía y Psicología. La propuesta de la introducción de este canto en las escuelas fue aprobada en 1956 y comenzó a entonarse de manera obligatoria en 1957.','/media/audio/16_crt_bandera.ogg','/media/audio/16_crt_bandera.mp3','/media/img/mazo/h_16_bandera.jpg','/media/img/plantilla/16_bandera.jpg','/media/img/galeria/g_16_bandera.jpg'),(17,'metro','Salvador Flores Rivera (1920-1987), o Chava Flores, permanece aún hoy como una presencia insoslayable en el imaginario popular mexicano. La pertinencia y visión aguda de sus canciones le ganaron el epíteto de \"el cronista de la ciudad\". Sus canciones, siempre cargadas de humor e ingenio, forman parte de nuestra cultura. La referencia fue tomada de la canción \"Voy en el metro\", compuesta tras sus impresiones de su primer viaje en el Sistema de Transporte Colectivo Metro.','/media/audio/17_crt_metro.ogg','/media/audio/17_crt_metro.mp3','/media/img/mazo/h_17_metro.jpg','/media/img/plantilla/17_metro.jpg','/media/img/galeria/g_17_metro.jpg'),(18,'ladrón','Referencia escogida como homenaje a los personajes de la serie Los Caquitos del programa televisivo Chespirito. Las continuas retransmisiones de este programa lo han convertido en una referencia conocida por todos los mexicanos. Los personajes de Los Caquitos, el Chompiras, el Botija y la Chimultrufia, de Roberto Gömez Bolaños (1929-), se cuentan entre los más entrañables. La referencia es tomada de una de las frases típicas del Chompiras.','/media/audio/18_crt_ladron.ogg','/media/audio/18_crt_ladron.mp3','/media/img/mazo/h_18_ladron.jpg','/media/img/plantilla/18_ladron.jpg','/media/img/galeria/g_18_ladron.jpg'),(19,'padre','Pedro Páramo es quizás una de las obras más importantes de la narrativa mexicana del siglo XX. Su autor, Juan Rulfo (1917-1986), cultivó la novela, el cuento, la fotografía y el cine. Portador de una visión demoledora del México que vivió, su impresionante voz se observa amplificada por su silencio; sólo publicó dos obras en toda su vida de escritor. La referencia es tomada de la conocida primera línea de su novela.','/media/audio/19_crt_padre.ogg','/media/audio/19_crt_padre.mp3','/media/img/mazo/h_19_padre.jpg','/media/img/plantilla/19_padre.jpg','/media/img/galeria/g_19_padre.jpg'),(20,'pájaro','Poeta, pintor y grabador, William Blake (1757-1827) es una de las voces más importantes de las letras inglesas. Romántica antes que el romanticismo, la obra de Blake no puede entenderse por separado; los grabados, poemas y pinturas forman parte de una misma idea, expresada en todas las avenidas disponibles. La referencia es tomada de Las bodas del cielo y el infierno, de la sección \"Poverbios del infierno\", una de sus obras más conocidas.','/media/audio/20_crt_pajaro.ogg','/media/audio/20_crt_pajaro.mp3','/media/img/mazo/h_20_pajaro.jpg','/media/img/plantilla/20_pajaro.jpg','/media/img/galeria/g_20_pajaro.jpg'),(21,'mano','Josefina Vicens (1911-1988), al igual que Rulfo, decidió limitar su obra a dos novelas, separadas más de veinte años en su publicación; \"publicar no es parte fundamental del destino de un escritor\" opinaba Emily Dickinson. La referencia es tomada de su primera novela, El libro vacío. Vicens nos regala en ese texto la construcción de los pensamientos privados de José García, oficinista, escritor, esposo y padre de familia. La delicada construcción del personaje exhibe la nervadura que nos conecta con el otro, partiendo de la imposibilidad de decir y la reticencia a la renuncia.','/media/audio/21_crt_mano.ogg','/media/audio/21_crt_mano.mp3','/media/img/mazo/h_21_mano.jpg','/media/img/plantilla/21_mano.jpg','/media/img/galeria/g_21_mano.jpg'),(22,'bota','Eric Arthur Blair (1903-1950) escribió sus obras con el seudónimo de George Orwell. La catastrófica construcción de futuros distópicos y la exploración de los alcances de los gobiernos totalitarios en sus novelas han vuelto el nombre de Orwell una referencia obligada. Granja de animales planteaba una ácida crítica a la revolución bolchevique; 1984, su obra más conocida, introdujo en el imaginario colectivo constructos como El gran hermano y los ministerios del amor y de la verdad.','/media/audio/22_crt_bota.ogg','/media/audio/22_crt_bota.mp3','/media/img/mazo/h_22_bota.jpg','/media/img/plantilla/22_bota.jpg','/media/img/galeria/g_22_bota.jpg'),(23,'luna','Poeta, narrador, ensayista y crítico literario, Mircea Cărtărescu (1956-) es considerado como el poeta rumano más importante de la generación de 1980. Ha abordado exitosamente distintos géneros. Doctor en literatura rumana y conferencista en la Universidad de Bucarest, su obra ha sido traducida a multitud de lenguas.','/media/audio/23_crt_luna.ogg','/media/audio/23_crt_luna.mp3','/media/img/mazo/h_23_luna.jpg','/media/img/plantilla/23_luna.jpg','/media/img/galeria/g_23_luna.jpg'),(24,'cotorro','Refrán popular mexicano. Existen muchas variantes que expresan esta misma noción de identidad. Esta idea también aparece en refranes como \"la mona, aunque se vista de seda, mona se queda\".','/media/audio/24_crt_cotorro.ogg','/media/audio/24_crt_cotorro.mp3','/media/img/mazo/h_24_cotorro.jpg','/media/img/plantilla/24_cotorro.jpg','/media/img/galeria/g_24_cotorro.jpg'),(25,'borracho','El poemínimo es una forma que recuerda algunas de las maneras de la poesía oriental. Sin embargo, su contenido, muchas veces humorístico, y esa forma característica del poema, casi en cascada, le brindan un carácter propio. Su creador, Efraín Huerta (1914-1982), fue una de las presencias más importantes y significativas de las letras del siglo XX mexicano. Contrapeso a la influencia de Octavio Paz, la obra de Huerta le sobrevive como testimonio de una poética que funde el humor, la sexualidad y la política con versos de depurada construcción.','/media/audio/25_crt_borracho.ogg','/media/audio/25_crt_borracho.mp3','/media/img/mazo/h_25_borracho.jpg','/media/img/plantilla/25_borracho.jpg','/media/img/galeria/g_25_borracho.jpg'),(26,'poeta','Vicente Huidobro (1893-1944) interpela así a los otros poetas, pretendiendo sacudir la manera en la que se escribe. Esta famosa alocución del poeta chileno está atada a la explicación de la visión poética del movimiento (compuesto por él) del Creacionismo. Referencia ineludible de la vanguardia hispanoamericana, Huidobro cultivó la poesía, la poesía experimental, el caligrama y la novela breve.','/media/audio/26_crt_poeta.ogg','/media/audio/26_crt_poeta.mp3','/media/img/mazo/h_26_poeta.jpg','/media/img/plantilla/26_poeta.jpg','/media/img/galeria/g_26_poeta.jpg'),(27,'corazón','Integrante del grupo Contemporáneos y muchas veces ignorado, Gilberto Owen (1904-1952) es una de las voces más singulares de la literatura mexicana. Poeta y dramaturgo, fungió como diplomático gran parte de su vida, por lo que su vínculo con lo mexicano muchas veces se presenta como nostalgia. Sus líneas son de una decantada tristeza, de un fatalismo seductor. La referencia es tomada de su poemario, Simbad el varado, donde la voz lírica, Simbad, recuenta el lúgubre febrero en el que estuvo atrapado en una isla desierta.','/media/audio/27_crt_corazon.ogg','/media/audio/27_crt_corazon.mp3','/media/img/mazo/h_27_corazon.jpg','/media/img/plantilla/27_corazon.jpg','/media/img/galeria/g_27_corazon.jpg'),(28,'cigarro','Fernando Pessoa (1888-1935) es considerado como uno de los poetas más importantes de la lengua portuguesa y de la literatura occidental. La mayor parte de su obra está firmada bajo otros nombres, o heterónimos, que no implican sólo el nombre, sino también la personalidad, el estilo, la perspectiva y los temas. Bajo los nombres Alberto Careiro, Ricardo Reis, Bernardo Soares y, sobre todo Álvaro de Campos, Pessoa regala a nuestros ojos poesía de la más alta calidad, de enorme agudeza, a veces desconcertante, abrumadora o conmovedora. Cada heterónimo tenía propia vida, relaciones personales y con el mundo; a veces fueron rivales literarios o, incluso, amorosos. La referencia es tomada de uno de los más importantes poemas de la obra firmada por Álvaro de Campos, “Tabaquería”.','/media/audio/28_crt_cigarro.ogg','/media/audio/28_crt_cigarro.mp3','/media/img/mazo/h_28_cigarro.jpg','/media/img/plantilla/28_cigarro.jpg','/media/img/galeria/g_28_cigarro.jpg'),(29,'tambor','Acolmiztli Nezahualcóyotl (1402-1472) fue el monarca de la antigua ciudad de Texcoco y aliado de los señores de Tenochtitlan. Emprendió importantes obras de administración y de infraestructura, todas influidas por su marcada visión estética. Si sus templos, palacios y monumentos no le sobreviven, sí lo hace su poesía. De esta manera se convierte en el portavoz de una cosmovisión, muchas veces soterrada, que subsiste en la cultura mexicana aún en la actualidad.','/media/audio/29_crt_tambor.ogg','/media/audio/29_crt_tambor.mp3','/media/img/mazo/h_29_tambor.jpg','/media/img/plantilla/29_tambor.jpg','/media/img/galeria/g_29_tambor.jpg'),(30,'madre','El poema Hospital Británico es una ocurrencia insólita en las letras hispanoamericanas. La obra anterior de Héctor Viel Temperley (1933-1987), también de excelente calidad, no ostenta gran parecido con este delirante y abrumador poema. Con líneas que podrían pertenecer al \"diario de un loco de o un enfermo que alucina\", en la opinión de Gabriel Bernal Granados, Hospital Británico todavía reta y extravía la mayoría de los intentos críticos de aproximársele.','/media/audio/30_crt_madre.ogg','/media/audio/30_crt_madre.mp3','/media/img/mazo/h_30_madre.jpg','/media/img/plantilla/30_madre.jpg','/media/img/galeria/g_30_madre.jpg'),(31,'átomo','Considerado el padre de la química moderna por su propuesta del modelo atómico, el científico danés Niels Bohr (1885-1962) ha representado una de las influencias más determinantes en la conformación del mundo moderno. Recibió el Premio Nobel de Física de 1922 por sus trabajos sobre la estructura atómica y la radiación. Tras emigrar hacia los Estados Unidos por la persecución nazi en la Europa ocupada, participó en el Proyecto Manhattan en el desarrollo de las bombas atómicas. Luego de regresar a Dinamarca en 1945, se volvió en uno de los principales voceros del desarme nuclear.','/media/audio/31_crt_atomo.ogg','/media/audio/31_crt_atomo.mp3','/media/img/mazo/h_31_atomo.jpg','/media/img/plantilla/31_atomo.jpg','/media/img/galeria/g_31_atomo.jpg'),(32,'música','El filósofo alemán Arthur Schopenhauer (1788-1860) extremó las posibilidades del idealismo occidental posterior a la obra de Kant. El mundo como voluntad y representación es, quizás, uno de los textos que más ha influido en el pensamiento de los más importantes pensadores y autores de los siglos XIX y XX. Caracterizado por un acentuado pesimismo, su pensamiento siempre guardó un lugar especial para la música, espacio \"donde todos los sentimientos vuelven a su estado puro.\"','/media/audio/32_crt_musica.ogg','/media/audio/32_crt_musica.mp3','/media/img/mazo/h_32_musica.jpg','/media/img/plantilla/32_musica.jpg','/media/img/galeria/g_32_musica.jpg'),(33,'perro','Franz Kafka (1883-1924) es sin duda uno de los autores más influyentes en la literatura y cultura del siglo XX. Famoso por obras como La metamorfosis, Carta al padre y El proceso, entre otras, su escritura continúa alimentando la imaginación de los lectores. Su escritura exploró los temas de la alienación, las relaciones padre-hijo y los conflictos de la identidad. La referencia es tomada de una de sus narraciones breves, “Investigaciones de un perro”.','/media/audio/33_crt_perro.ogg','/media/audio/33_crt_perro.mp3','/media/img/mazo/h_33_perro.jpg','/media/img/plantilla/33_perro.jpg','/media/img/galeria/g_33_perro.jpg'),(34,'computadora','Autor mexicano que ha abordado el cuento, la novela, el teatro, el ensayo y la poesía, Eusebio Ruvalcaba (1951-) ha sido una de las voces más constantes de nuestra literatura contemporánea. Ruvalcaba ha abordado temas tan diversos como los géneros literarios que ha explorado. La referencia fue tomada de Poemas de un oficinista, donde la cotidianidad y la rutina obtienen su incómodo espejo.','/media/audio/34_crt_computadora.ogg','/media/audio/34_crt_computadora.mp3','/media/img/mazo/h_34_computadora.jpg','/media/img/plantilla/34_computadora.jpg','/media/img/galeria/g_34_computadora.jpg'),(35,'libro','Quizá una de las voces más importantes de la literatura occidental del siglo XX, la escritura de Edmond Jabès (1912-1991) responde a la necesidad de confrontar al sujeto con todo lo que lo conforma. El libro, la soledad, el desierto, la muerte, Dios, el judío, la memoria, adquieren su definición con el paso de la pluma. Nacido en El Cairo y exiliado desde 1956 (con la expulsión de la comunidad judía), adoptó la nacionalidad francesa en 1967.','/media/audio/35_crt_libro.ogg','/media/audio/35_crt_libro.mp3','/media/img/mazo/h_35_libro.jpg','/media/img/plantilla/35_libro.jpg','/media/img/galeria/g_35_libro.jpg'),(36,'ciego','Conocido simplemente como \"El bardo\", William Shakespeare (1564-1616) goza de una fama omnipresente. Actor, poeta y dramaturgo, su obra es leída en infinidad de lenguas; sus historias persisten en el imaginario público. Harold Bloom, importante crítico norteamericano, construyó la idea de \"canon occidental\", con Shakespeare, Dante y Cervantes como los pilares desde los que se construye la noción misma de Occidente.','/media/audio/36_crt_ciego.ogg','/media/audio/36_crt_ciego.mp3','/media/img/mazo/h_36_ciego.jpg','/media/img/plantilla/36_ciego.jpg','/media/img/galeria/g_36_ciego.jpg'),(37,'mundo','Periodista, político y escritor, el peruano Ricardo Palma (1833-1919) es recordado por los diversos volúmenes que recopilaban narraciones cortas, o sus Tradiciones peruanas. Ingeniosas, humorísticas y siempre críticas, en su obra, su penetrante mirada desnuda todos los movimientos de una sociedad en perpetuo cambio, en choque con el arraigo de su tradición y su historia. Palma relata minuciosamente una sociedad en proceso de consolidación como una independiente del continente europeo.','/media/audio/37_crt_mundo.ogg','/media/audio/37_crt_mundo.mp3','/media/img/mazo/h_37_mundo.jpg','/media/img/plantilla/37_mundo.jpg','/media/img/galeria/g_37_mundo.jpg'),(38,'campo','La referencia es normalmente atribuida al poeta surrealista francés Max Jacob (1876-1944). Aunque nunca la escribió, sobrevivió de manera anecdótica en tertulias y demás. Julio Cortázar (1914-1984), uno de los autores más conocidos de la literatura hispanoamericana, popularizó la frase en un cuento del libro Un tal Lucas. Su escritura está caracterizada por su pericia, su humor y su inagotable ingenio.','/media/audio/38_crt_campo.ogg','/media/audio/38_crt_campo.mp3','/media/img/mazo/h_38_campo.jpg','/media/img/plantilla/38_campo.jpg','/media/img/galeria/g_38_campo.jpg'),(39,'círculo','La Divina comedia de Dante Alighieri (c. 1265-1321) permanece como una de las obras más influyentes e importantes de la historia de la literatura. La maestría de sus versos, la compasión hacia los marginales, el juicio contra los injustos y tiranos, la profundidad de su pensamiento y la pesadilla tan sugerente que creó, siguen sirviendo de escenario para nuestra comprensión propia, así como de nuestra espiritualidad y lugar en el mundo.','/media/audio/39_crt_circulo.ogg','/media/audio/39_crt_circulo.mp3','/media/img/mazo/h_39_circulo.jpg','/media/img/plantilla/39_circulo.jpg','/media/img/galeria/g_39_circulo.jpg'),(40,'barco','\"La poesía no es una carrera; es un destino.\" Alejandra Pizarnik (1936-1972) poseía una de las escrituras más lúcidas e impactantes de la poesía. Influida por los surrealistas, traspasada por la tristeza, la euforia, el insomnio, su poesía dejó una huella indeleble en las letras hispanoamericanas. Su temprana partida truncó una de las más vibrantes y desconcertantes voces de nuestro tiempo.','/media/audio/40_crt_barco.ogg','/media/audio/40_crt_barco.mp3','/media/img/mazo/h_40_barco.jpg','/media/img/plantilla/40_barco.jpg','/media/img/galeria/g_40_barco.jpg'),(41,'rosa','Poeta, museólogo, maestro y político, Carlos Pellicer (1897-1977) descubrió temprano su vocación como escritor. Su obra transita cómodamente las corrientes del Modernismo y las vanguardias artísticas. Estuvo vinculado al vasconcelismo, participando incluso en su campaña por la presidencia de México.','/media/audio/41_crt_rosa.ogg','/media/audio/41_crt_rosa.mp3','/media/img/mazo/h_41_rosa.jpg','/media/img/plantilla/41_rosa.jpg','/media/img/galeria/g_41_rosa.jpg'),(42,'calavera','Eclipsado en la actualidad por la presencia omniabarcadora de la obra de José Guadalupe Posada, Manuel Manilla (1830-1895) es responsable de la creación de un ejercicio satírico que sobrevive hasta nuestros días: la composición de calaveritas. Manilla fue el primero en realizar grabados y composiciones que construirían la iconografía que Posada consolidaría después en el imaginario popular mexicano.','/media/audio/42_crt_calavera.ogg','/media/audio/42_crt_calavera.mp3','/media/img/mazo/h_42_calavera.jpg','/media/img/plantilla/42_calavera.jpg','/media/img/galeria/g_42_calavera.jpg'),(43,'teléfono','En inglés: \"Mr. Watson, come here, I want to see you.\" Alexander Graham Bell, con estas palabras, sostuvo la primera conversación telefónica con su asistente, Thomas Watson. Esta conversación muestra la poca imaginación o sentido de la historia que tenía Graham Bell frente a la invención que habría de cambiar definitivamente el mundo en que existimos.','/media/audio/43_crt_telefono.ogg','/media/audio/43_crt_telefono.mp3','/media/img/mazo/h_43_telefono.jpg','/media/img/plantilla/43_telefono.jpg','/media/img/galeria/g_43_telefono.jpg'),(44,'doctor','La dramaturgia y la narrativa mantienen, al día de hoy, una deuda con la obra de Antón Chéjov (1860-1904). Poseedor de una perspicaz mirada, sus personajes e historias se cuentan entro los más elogiados, tanto por escritores como por críticos en general. Supo compaginar su arte con la carrera de medicina.  La referencia es tomada de una de sus narraciones breves, \"La mujer del boticario\".','/media/audio/44_crt_doctor.ogg','/media/audio/44_crt_doctor.mp3','/media/img/mazo/h_44_doctor.jpg','/media/img/plantilla/44_doctor.jpg','/media/img/galeria/g_44_doctor.jpg'),(45,'gato','Ensayista, poeta y narrador, H. A. Murena (1923-1975) dedicó su vida a la exploración de las posibilidades de la palabra. Fue un activo colaborador de las revistas de su tiempo, así como de los diarios. Tradujo al español la obra de Habermas, Adorno, Marcuse, Horkheimer y Benjamin. La referencia es tomada de uno de sus relatos, El gato.','/media/audio/45_crt_gato.ogg','/media/audio/45_crt_gato.mp3','/media/img/mazo/h_45_gato.jpg','/media/img/plantilla/45_gato.jpg','/media/img/galeria/g_45_gato.jpg'),(46,'sol','César Vallejo (1982-1938) tuvo una destacada influencia en la poesía de su tiempo y en la del resto de Hispanoamérica. Su primera obra la vincula con el modernismo; su siguiente poemario, Trilce, permanece una maravilla de las posibilidades de la palabra. Su último poemario, Poemas Humanos, publicado póstumamente, marca una primera distancia con Trilce y las vanguardias. En esta última etapa destaca una fuerte tendencia a los temas sociales, a la cotidianidad, aunque nunca desmerece la pericia y atención a la elaboración del verso.','/media/audio/46_crt_sol.ogg','/media/audio/46_crt_sol.mp3','/media/img/mazo/h_46_sol.jpg','/media/img/plantilla/46_sol.jpg','/media/img/galeria/g_46_sol.jpg'),(47,'corona','La referencia es tomada de un conocido texto del poeta y sacerdote inglés George Herbert (1593-1633). Todavía inscrita dentro del Renacimiento inglés, su obra permanece vigente por su profundidad, al tiempo de estar escrita con sencillez y en términos accesibles y cotidianos.','/media/audio/47_crt_corona.ogg','/media/audio/47_crt_corona.mp3','/media/img/mazo/h_47_corona.jpg','/media/img/plantilla/47_corona.jpg','/media/img/galeria/g_47_corona.jpg'),(48,'chalupa','Si se considera a Rubén Darío como el padre del modernismo, José Martí (1853-1895) fue modernista antes del modernismo. Periodista, poeta y político, Martí luchó incansablemente por la independencia de Cuba. Organizó y recolectó los fondos y materiales para comenzar con la lucha. Como poeta, su verso se caracteriza por un apego a la estética modernista, pasada por un tono íntimo, fresco y entrañable. La referencia es tomada del poemario Versos sencillos.','/media/audio/48_crt_chalupa.ogg','/media/audio/48_crt_chalupa.mp3','/media/img/mazo/h_48_chalupa.jpg','/media/img/plantilla/48_chalupa.jpg','/media/img/galeria/g_48_chalupa.jpg'),(49,'niño','Johann Wolfgang von Goethe (1749-1832) es una figura monstruosa, por su importancia en la historia de Occidente y por su influencia, extendida a pensadores y autores de todas las artes y disciplinas. Filósofo, poeta, dramaturgo, novelista y diplomático, la obra de Goethe ha moldeado e inspirado la imaginación de millones a través del tiempo. La referencia es tomada de su inmortal obra, Fausto.','/media/audio/49_crt_nino.ogg','/media/audio/49_crt_nino.mp3','/media/img/mazo/h_49_nino.jpg','/media/img/plantilla/49_nino.jpg','/media/img/galeria/g_49_nino.jpg'),(50,'pez','Popular refrán mexicano. Los refranes son construcciones lingüísticas que, de manera eficiente, consolidan cierta idea y se convierten en muestra de la sabiduría del pueblo. Este refran advierte de los peligros de usar los labios para hablar de más, no para besar, una mejor forma de morder el anzuelo.','/media/audio/50_crt_pez.ogg','/media/audio/50_crt_pez.mp3','/media/img/mazo/h_50_pez.jpg','/media/img/plantilla/50_pez.jpg','/media/img/galeria/g_50_pez.jpg'),(51,'ciudad','Conocida línea de la canción Mi ciudad de Guadalupe Trigo (1941-1982), guitarrista y cantante mexicano. En sus canciones rinde homenaje a poetas como Pablo Neruda y Nicolás Guillén; también tiene colaboraciones con Jaime Sabines e Inocencio Burgos. Su entrañable obra aún se escucha en los medios y permanece todavía como referencia de la música mexicana de la segunda mitad del siglo XX.','/media/audio/51_crt_ciudad.ogg','/media/audio/51_crt_ciudad.mp3','/media/img/mazo/h_51_ciudad.jpg','/media/img/plantilla/51_ciudad.jpg','/media/img/galeria/g_51_ciudad.jpg'),(52,'bailarina','Referencia tomada del poema del siglo XV español, Danza general de la muerte. En este poema puede observarse el desarrollo de muchos de los temas que mejor describían la cosmovisión del momento. En este poema, gente de todas las profesiones, edades y grupo social se presentan ante la muerte para exponer su caso; ella desestima sus argumentos. La muerte es presentada como un ente que no hace distinciones, que, de cierta manera, los iguala.','/media/audio/52_crt_bailarina.ogg','/media/audio/52_crt_bailarina.mp3','/media/img/mazo/h_52_bailarina.jpg','/media/img/plantilla/52_bailarina.jpg','/media/img/galeria/g_52_bailarina.jpg'),(53,'beso','La referencia es tomada de la poesía temprana del famoso autor mexicano, Jaime Sabines (1926-1999). Su trabajo se caracteriza por el tono intimista, directo y poco rebuscado. Sabines siempre supo conectar con sus lectores en los más elementales niveles emocionales., como lo atestigua la popularidad de sus textos.','/media/audio/53_crt_beso.ogg','/media/audio/53_crt_beso.mp3','/media/img/mazo/h_53_beso.jpg','/media/img/plantilla/53_beso.jpg','/media/img/galeria/g_53_beso.jpg'),(54,'rana','Juan José Arreola (1918-2001) representa una de las voces más emblemáticas de la narrativa mexicana del siglo XX. Pese a ser autodidacta, su erudición y dominio de muchos temas le valieron prestigio literario, como también en los círculos académicos. Su estilo lúdico pero simultáneamente lúcido recorre toda su obra. La referencia es tomada de su entrañable libro, Bestiario.','/media/audio/54_crt_rana.ogg','/media/audio/54_crt_rana.mp3','/media/img/mazo/h_54_rana.jpg','/media/img/plantilla/54_rana.jpg','/media/img/galeria/g_54_rana.jpg');
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
INSERT INTO `diminutivo` VALUES (1,'gallito',1),(2,'gallillo',1),(3,'gallico',1),(4,'gallete',1),(5,'gallín',1),(6,'galluco',1),(7,'diablito',2),(8,'diablillo',2),(9,'diablico',2),(10,'diablete',2),(11,'diablín',2),(12,'diabluco',2),(13,'damita',3),(14,'damilla',3),(15,'damica',3),(16,'dameta',3),(17,'damina',3),(18,'damuca',3),(19,'catrincito',4),(20,'catrincillo',4),(21,'catrincico',4),(22,'catrinete',4),(23,'catrinín',4),(24,'catrinuco',4),(25,'paragüitas',5),(26,'paragüillas',5),(27,'paraguasico',5),(28,'paraguasete',5),(29,'paragüín',5),(30,'paraguasuco',5),(31,'sirenita',6),(32,'sirenilla',6),(33,'sirenica',6),(34,'sireneta',6),(35,'sirenina',6),(36,'sirenuca',6),(37,'escalerita',7),(38,'escalerilla',7),(39,'escalerica',7),(40,'escalereta',7),(41,'escalerina',7),(42,'escaleruca',7),(43,'botellita',8),(44,'botellilla',8),(45,'botellica',8),(46,'botelleta',8),(47,'botellina',8),(48,'botelluca',8),(49,'baloncito',9),(50,'baloncillo',9),(51,'baloncico',9),(52,'baloncete',9),(53,'baloncino',9),(54,'balonuco',9),(55,'arbolito',10),(56,'arbolillo',10),(57,'arbolico',10),(58,'arbolete',10),(59,'arbolín',10),(60,'arboluco',10),(61,'maestrito',11),(62,'maestrillo',11),(63,'maestrico',11),(64,'maestrete',11),(65,'maestrín',11),(66,'maestruco',11),(67,'valientito',12),(68,'valientillo',12),(69,'valientico',12),(70,'valientete',12),(71,'valientín',12),(72,'valientuco',12),(73,'gorrito',13),(74,'gorrillo',13),(75,'gorrico',13),(76,'gorrete',13),(77,'gorrín',13),(78,'gorruco',13),(79,'muertecita',14),(80,'muertecilla',14),(81,'muertica',14),(82,'muerteta',14),(83,'muertina',14),(84,'muertuca',14),(85,'muertita',14),(86,'burocratito',15),(87,'burocratillo',15),(88,'burocratico',15),(89,'burocratete',15),(90,'burocratín',15),(91,'burocratuco',15),(92,'banderita',16),(93,'banderilla',16),(94,'banderica',16),(95,'bandereta',16),(96,'banderín',16),(97,'banderuca',16),(98,'metrito',17),(99,'metrillo',17),(100,'metrico',17),(101,'metrete',17),(102,'metrín',17),(103,'metruco',17),(104,'ladroncito',18),(105,'ladroncillo',18),(106,'ladroncico',18),(107,'ladroncete',18),(108,'ladroncín',18),(109,'ladronuco',18),(110,'padrecito',19),(111,'padrecillo',19),(112,'padrecico',19),(113,'padrecete',19),(114,'padrecín',19),(115,'padruco',19),(116,'pajarito',20),(117,'pajarillo',20),(118,'pajarico',20),(119,'pajarete',20),(120,'pajarín',20),(121,'pajaruco',20),(122,'manita',21),(123,'manilla',21),(124,'manica',21),(125,'maneta',21),(126,'manina',21),(127,'manuca',21),(128,'botita',22),(129,'botilla',22),(130,'botica',22),(131,'boteta',22),(132,'botín',22),(133,'botuca',22),(134,'botina',22),(135,'lunita',23),(136,'lunilla',23),(137,'lunica',23),(138,'luneta',23),(139,'lunina',23),(140,'lunuca',23),(141,'cotorrito',24),(142,'cotorrillo',24),(143,'cotorrico',24),(144,'cotorrete',24),(145,'cotorrín',24),(146,'cotorruco',24),(147,'borrachito',25),(148,'borrachillo',25),(149,'borrachico',25),(150,'borrachete',25),(151,'borrachín',25),(152,'borrachuco',25),(153,'poetita',26),(154,'poetilla',26),(155,'poetico',26),(156,'poetete',26),(157,'poetín',26),(158,'poetuco',26),(159,'corazoncito',27),(160,'coranzoncillo',27),(161,'corazoncico',27),(162,'corazoncete',27),(163,'corazonín',27),(164,'corazonuco',27),(165,'cigarrito',28),(166,'cigarrillo',28),(167,'cigarrico',28),(168,'cigarrete',28),(169,'cigarrín',28),(170,'cigarruco',28),(171,'tamborcito',29),(172,'tamborcillo',29),(173,'tamborcico',29),(174,'tamborcete',29),(175,'tamborín',29),(176,'tamboruco',29),(177,'madrecita',30),(178,'madrecilla',30),(179,'madrecica',30),(180,'madreceta',30),(181,'madrina',30),(182,'madresuca',30),(183,'atomito',31),(184,'atomillo',31),(185,'atomico',31),(186,'atomete',31),(187,'atomín',31),(188,'atomuco',31),(189,'musiquita',32),(190,'musiquilla',32),(191,'musiquica',32),(192,'musiqueta',32),(193,'musiquina',32),(194,'musicuca',32),(195,'perrito',33),(196,'perrillo',33),(197,'perrico',33),(198,'perrete',33),(199,'perrín',33),(200,'perruco',33),(201,'computadorcita',34),(202,'computadorcilla',34),(203,'computadorcica',34),(204,'computadorceta',34),(205,'computadorcina',34),(206,'computadoruca',34),(207,'librito',35),(208,'librillo',35),(209,'librico',35),(210,'librete',35),(211,'librín',35),(212,'lubruco',35),(213,'cieguito',36),(214,'cieguillo',36),(215,'cieguico',36),(216,'cieguete',36),(217,'cieguín',36),(218,'cierguco',36),(219,'mundito',37),(220,'mundillo',37),(221,'mundico',37),(222,'mundete',37),(223,'mundín',37),(224,'munduco',37),(225,'campito',38),(226,'campillo',38),(227,'campico',38),(228,'campete',38),(229,'campín',38),(230,'campuco',38),(231,'circulito',39),(232,'circulillo',39),(233,'circulico',39),(234,'circulete',39),(235,'circulín',39),(236,'circoluco',39),(237,'barquito',40),(238,'barquillo',40),(239,'barquico',40),(240,'barquecete',40),(241,'barquecín',40),(242,'barcuco',40),(243,'rosita',41),(244,'rosilla',41),(245,'rosica',41),(246,'roseta',41),(247,'rosina',41),(248,'rosuca',41),(249,'calaverita',42),(250,'calaverilla',42),(251,'calaverica',42),(252,'calavereta',42),(253,'calaverín',42),(254,'calaveruca',42),(255,'telefonito',43),(256,'telefonillo',43),(257,'telefonico',43),(258,'telefonete',43),(259,'telefonín',43),(260,'telefonuco',43),(261,'doctorcito',44),(262,'doctorcillo',44),(263,'doctorico',44),(264,'doctorete',44),(265,'doctorín',44),(266,'doctoruco',44),(267,'gatito',45),(268,'gatillo',45),(269,'gatico',45),(270,'gatete',45),(271,'gatín',45),(272,'gatuco',45),(273,'solecito',46),(274,'solecillo',46),(275,'solecico',46),(276,'solecete',46),(277,'solecín',46),(278,'solesuco',46),(279,'coronita',47),(280,'coronilla',47),(281,'coronica',47),(282,'coroneta',47),(283,'coronina',47),(284,'coronuca',47),(285,'chalupita',48),(286,'chalupilla',48),(287,'chalupica',48),(288,'chalupeta',48),(289,'chalupina',48),(290,'chalupuca',48),(291,'niñito',49),(292,'niñillo',49),(293,'niñico',49),(294,'niñete',49),(295,'niñín',49),(296,'niñuco',49),(297,'pececito',50),(298,'pececillo',50),(299,'pececio',50),(300,'pececete',50),(301,'pececín',50),(302,'pecesuco',50),(303,'ciudadcita',51),(304,'ciudadcilla',51),(305,'ciudadica',51),(306,'ciudadeta',51),(307,'ciudadina',51),(308,'ciudaduca',51),(309,'bailarinita',52),(310,'bailarincilla',52),(311,'bailarinica',52),(312,'bailarineta',52),(313,'bailarinina',52),(314,'bailariruca',52),(315,'besito',53),(316,'besillo',53),(317,'besico',53),(318,'besete',53),(319,'besín',53),(320,'besuco',53),(321,'ranita',54),(322,'ranilla',54),(323,'ranica',54),(324,'raneta',54),(325,'ranina',54),(326,'ranuca',54);
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
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `estPartida`
--

LOCK TABLES `estPartida` WRITE;
/*!40000 ALTER TABLE `estPartida` DISABLE KEYS */;
INSERT INTO `estPartida` VALUES (1,'ganado'),(2,'perfecto'),(3,'perdido'),(4,'abandonado');
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
  `audioOGG` varchar(256) COLLATE utf8_unicode_ci DEFAULT NULL,
  `audioMP3` varchar(256) COLLATE utf8_unicode_ci DEFAULT NULL,
  `idCarta` int(11) NOT NULL,
  PRIMARY KEY (`idFrase`),
  KEY `fk_frase_carta1_idx` (`idCarta`),
  CONSTRAINT `fk_frase_carta1` FOREIGN KEY (`idCarta`) REFERENCES `carta` (`idCarta`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=55 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `frase`
--

LOCK TABLES `frase` WRITE;
/*!40000 ALTER TABLE `frase` DISABLE KEYS */;
INSERT INTO `frase` VALUES (1,'Mi sueño temprano empieza y madrugo en la alborada.','/media/audio/01_gallo.ogg','/media/audio/01_gallo.mp3',1),(2,'Mejor reinar en el infierno que servir en el cielo.','/media/audio/02_diablo.ogg','/media/audio/02_diablo.mp3',2),(3,'¡Oh señora de mi alma, Dulcinea, flor de la fermosura, socorred a este vuestro caballero…','/media/audio/03_dama.ogg','/media/audio/03_dama.mp3',3),(4,'Lo que es intoxicante del mal gusto es el placer aristocrático de lo obsceno.','/media/audio/04_catrin.ogg','/media/audio/04_catrin.mp3',4),(5,'Sobre una mesa de disección, […] una máquina de coser y un paraguas.','/media/audio/05_paraguas.ogg','/media/audio/05_paraguas.mp3',5),(6,'Aquél que se acerca a ellas y oye su voz, ya no vuelve a ver a su esposa ni a sus hijos.','/media/audio/06_sirena.ogg','/media/audio/06_sirena.mp3',6),(7,'Id a traerme aquí la tapa de la entrada del cielo y su escalera, de nueve escalones, todo de miel.','/media/audio/07_escalera.ogg','/media/audio/07_escalera.mp3',7),(8,'Los vinos van a las playas,/ también las olas por millones.','/media/audio/08_botella.ogg','/media/audio/08_botella.mp3',8),(9,'Dios es redondo.','/media/audio/09_balon.ogg','/media/audio/09_balon.mp3',9),(10,'Árbol que nace torcido, jamás su tronco endereza.','/media/audio/10_arbol.ogg','/media/audio/10_arbol.mp3',10),(11,'Educad a los niños y no será necesario castigar a los hombres.','/media/audio/11_maestro.ogg','/media/audio/11_maestro.mp3',11),(12,'Ten el valor de equivocarte.','/media/audio/12_valiente.ogg','/media/audio/12_valiente.mp3',12),(13,'La vida es como un gorro; unos se lo ponen, otros se lo quitan.','/media/audio/13_gorro.png','/media/audio/13_gorro.mp3',13),(14,'Este morir a gotas/ Me sabe a miel.','/media/audio/14_muerte.ogg','/media/audio/14_muerte.mp3',14),(15,'No hay gente más susceptible que los empleados de esta clase de departamentos.','/media/audio/15_burocrata.ogg','/media/audio/15_burocrata.mp3',15),(16,'Como un sol entre céfiros y trinos.','/media/audio/16_bandera.ogg','/media/audio/16_bandera.mp3',16),(17,'¡Qué deferencia del camión/ de mi compadre Jilemón!','/media/audio/17_metro.ogg','/media/audio/17_metro.mp3',17),(18,'Tómalo por el lado amable.','/media/audio/18_ladron.ogg','/media/audio/18_ladron.mp3',18),(19,'Vine a Comala porque me dijeron que acá vivía mi padre, un tal Pedro Páramo.','/media/audio/19_padre.ogg','/media/audio/19_padre.mp3',19),(20,'Ninguna ave se remonta demasiado alto si vuela con sus propias alas.','/media/audio/20_pajaro.ogg','/media/audio/20_pajaro.mp3',20),(21,'Mi mano no termina en los dedos.','/media/audio/21_mano.ogg','/media/audio/21_mano.mp3',21),(22,'Si quieres hacerte una idea del futuro, imagina una bota aplastando un rostro humano.','/media/audio/22_bota.ogg','/media/audio/22_bota.mp3',22),(23,'Y era la luna una gran pompa de jabón.','/media/audio/23_luna.ogg','/media/audio/23_luna.mp3',23),(24,'Quien es perico, dondequiera es verde.','/media/audio/24_cotorro.ogg','/media/audio/24_cotorro.mp3',24),(25,'Ayer También Tengo Ganas De Emborracharme','/media/audio/25_borracho.ogg','/media/audio/25_borracho.mp3',25),(26,'Por qué cantáis a la rosa, ¡oh Poetas!/ Hacedla florecer en el poema','/media/audio/26_poeta.ogg','/media/audio/26_poeta.mp3',26),(27,'El corazón. Yo lo usaba en los ojos','/media/audio/27_corazon.ogg','/media/audio/27_corazon.mp3',27),(28,'Sigo el humo como mi camino.','/media/audio/28_cigarro.ogg','/media/audio/28_cigarro.mp3',28),(29,'Ya retumba el tambor, sea el baile ','/media/audio/29_tambor.ogg','/media/audio/29_tambor.mp3',29),(30,'Mi madre es la risa, la libertad, el verano.','/media/audio/30_madre.ogg','/media/audio/30_madre.mp3',30),(31,'En lo que respecta al átomo, el lenguaje puede usarse sólo como en la poesía.','/media/audio/31_atomo.ogg','/media/audio/31_atomo.mp3',31),(32,'El mundo no es sino música hecha realidad.','/media/audio/32_musica.ogg','/media/audio/32_musica.mp3',32),(33,'La totalidad de preguntas y respuestas se encuentran en el perro.','/media/audio/33_perro.ogg','/media/audio/33_perro.mp3',33),(34,'El monitor es inconmovible.','/media/audio/34_computadora.ogg','/media/audio/34_computadora.mp3',34),(35,'Tengo la memoria del libro pues es el único que todavía  se acuerda de mí.','/media/audio/35_libro.ogg','/media/audio/35_libro.mp3',35),(36,'Mirando la oscuridad que ven los ciegos','/media/audio/36_ciego.ogg','/media/audio/36_ciego.mp3',36),(37,'Con más mundo que el que descubrió Colón…','/media/audio/37_mundo.ogg','/media/audio/37_mundo.mp3',37),(38,'¿El campo, ese lugar donde los pollos se pasean crudos?','/media/audio/38_campo.ogg','/media/audio/38_campo.mp3',38),(39,'Vueltos a derecha por su dorso,/ de aquel círculo eterno nos marchamos.','/media/audio/39_circulo.ogg','/media/audio/39_circulo.mp3',39),(40,'Partió de mí un barco/ Llevándome','/media/audio/40_barco.ogg','/media/audio/40_barco.mp3',40),(41,'Aquí no suceden cosas/ de mayor trascendencia que las rosas.','/media/audio/41_rosa.ogg','/media/audio/41_rosa.mp3',41),(42,'Esta es la calaverita/ Que nos viene a saludar,/ Porque por algo se llama/ Calavera popular.','/media/audio/42_calavera.ogg','/media/audio/42_calavera.mp3',42),(43,'\"Señor Watson, venga aquí, necesito verlo.\"','/media/audio/43_telefono.ogg','/media/audio/43_telefono.mp3',43),(44,'Diga, doctor: ¿podrá querer a ese de la quijada?','/media/audio/44_doctor.ogg','/media/audio/44_doctor.mp3',44),(45,'El gato, entretanto, seguía tranquilo en su sillón.','/media/audio/45_gato.ogg','/media/audio/45_gato.mp3',45),(46,'Sé el día, pero el sol se me ha escapado.','/media/audio/46_sol.ogg','/media/audio/46_sol.mp3',46),(47,'La corona real no quita el dolor de cabeza.','/media/audio/47_corona.ogg','/media/audio/47_corona.mp3',47),(48,'En el bote iba remando,/ Por el lago seductor.','/media/audio/48_chalupa.ogg','/media/audio/48_chalupa.mp3',48),(49,'¿Quién podrá gloriarse de dar a un niño su verdadero nombre?','/media/audio/49_nino.ogg','/media/audio/49_nino.mp3',49),(50,'Por la boca muere el pez','/media/audio/50_pez.ogg','/media/audio/50_pez.mp3',50),(51,'Mi ciudad es chinampa en lago escondido.','/media/audio/51_ciudad.ogg','/media/audio/51_ciudad.mp3',51),(52,'A esta mi danza traje de presente/ Estas dos doncellas que veis hermosas.','/media/audio/52_bailarina.ogg','/media/audio/52_bailarina.mp3',52),(53,'¡Sácale con un beso/ Todas las lágrimas!','/media/audio/53_beso.ogg','/media/audio/53_beso.mp3',53),(54,'Salta de vez en cuando, solo para comprobar su radical estático.','/media/audio/54_rana.ogg','/media/audio/54_rana.mp3',54);
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
  `fecha` datetime NOT NULL,
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
-- Table structure for table `sesion`
--

DROP TABLE IF EXISTS `sesion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sesion` (
  `idSesion` int(11) NOT NULL AUTO_INCREMENT,
  `sesion` mediumtext,
  `idNavegador` mediumtext,
  `bandera` tinyint(1) DEFAULT NULL,
  `idUsr` int(11) NOT NULL,
  PRIMARY KEY (`idSesion`),
  KEY `fk_sesion_usuario1_idx` (`idUsr`),
  CONSTRAINT `fk_sesion_usuario1` FOREIGN KEY (`idUsr`) REFERENCES `usuario` (`idUsr`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sesion`
--

LOCK TABLES `sesion` WRITE;
/*!40000 ALTER TABLE `sesion` DISABLE KEYS */;
/*!40000 ALTER TABLE `sesion` ENABLE KEYS */;
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
  `idCarta` int(11) NOT NULL,
  PRIMARY KEY (`idSinonimo`),
  KEY `fk_sinonimo_carta1_idx` (`idCarta`),
  CONSTRAINT `fk_sinonimo_carta1` FOREIGN KEY (`idCarta`) REFERENCES `carta` (`idCarta`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=660 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sinonimo`
--

LOCK TABLES `sinonimo` WRITE;
/*!40000 ALTER TABLE `sinonimo` DISABLE KEYS */;
INSERT INTO `sinonimo` VALUES (1,'cthulu',1),(2,'pollo',1),(3,'galliforme',1),(4,'gallipavo',1),(5,'desentono',1),(6,'desafinación',1),(7,'destemple',1),(8,'gallito',1),(9,'presumido',1),(10,'mandón',1),(11,'bravucón',1),(12,'fanfarrón',1),(13,'jactancioso',1),(14,'escupitajo',1),(15,'esputo',1),(16,'salivazo',1),(17,'gargajo',1),(18,'flema',1),(19,'cthulu',2),(20,'demonio',2),(21,'maligno',2),(22,'satanás',2),(23,'belcebú',2),(24,'lucifer',2),(25,'luzbel',2),(26,'chamuco',2),(27,'salinas',2),(28,'cthulu',3),(29,'señora',3),(30,'mujer',3),(31,'ama',3),(32,'dueña',3),(33,'cortesana',3),(34,'matrona',3),(35,'aristócrata',3),(36,'cthulu',4),(37,'dandi',4),(38,'presumido',4),(39,'coqueto',4),(40,'figurín',4),(41,'pisaverde',4),(42,'petimetre',4),(43,'guapo',4),(44,'señorito',4),(45,'elegante',4),(46,'lechuguino',4),(47,'cthulu',5),(48,'quitasol',5),(49,'sombrilla',5),(50,'parasol',5),(51,'cthulu',6),(52,'ninfa',6),(53,'nereida',6),(54,'náyade',6),(55,'ondina',6),(56,'oceánida',6),(57,'cthulu',7),(58,'escalinata',7),(59,'grada',7),(60,'gradería',7),(61,'escala',7),(62,'escalerilla',7),(63,'peldaños',7),(64,'escalones',7),(65,'cthulu',8),(66,'casco',8),(67,'ampolla',8),(68,'bombona',8),(69,'frasco',8),(70,'garrafa',8),(71,'redoma',8),(72,'damajuana',8),(73,'patona',8),(74,'cthulu',9),(75,'pelota',9),(76,'bola',9),(77,'esférico',9),(78,'cuero',9),(79,'recipiente',9),(80,'vasija',9),(81,'globo',9),(82,'cthulu',10),(83,'arbusto',10),(84,'eje',10),(85,'palo',10),(86,'asta',10),(87,'cigüeñal',10),(88,'barra',10),(89,'cthulu',11),(90,'profesor',11),(91,'educador',11),(92,'instructor',11),(93,'pedagogo',11),(94,'preceptor',11),(95,'mentor',11),(96,'ayo',11),(97,'avezado',11),(98,'experto',11),(99,'hábil',11),(100,'diestro',11),(101,'ducho',11),(102,'perito',11),(103,'compositor',11),(104,'músico',11),(105,'artista',11),(106,'cthulu',12),(107,'intrépido',12),(108,'fuerte',12),(109,'bravo',12),(110,'valeroso',12),(111,'atrevido',12),(112,'animoso',12),(113,'osado',12),(114,'impávido',12),(115,'heroico',12),(116,'denodado',12),(117,'audaz',12),(118,'compadrito',12),(119,'guapo',12),(120,'cthulu',13),(121,'birrete',13),(122,'boina',13),(123,'bonete',13),(124,'cofia',13),(125,'chichonera',13),(126,'montera',13),(127,'barretina',13),(128,'casco',13),(129,'gorra',13),(130,'sombrero',13),(131,'capucha',13),(132,'capuchón',13),(133,'condón',13),(134,'cthulu',14),(135,'flaca',14),(136,'tilíca',14),(137,'catrina',14),(138,'huesuda',14),(139,'fallecimiento',14),(140,'defunción',14),(141,'óbito',14),(142,'deceso',14),(143,'fin',14),(144,'trance',14),(145,'tránsito',14),(146,'asesinato',14),(147,'homicidio',14),(148,'crimen',14),(149,'atentado',14),(150,'degollina',14),(151,'martirio',14),(152,'ruina',14),(153,'caída',14),(154,'destrucción',14),(155,'aniquilamiento',14),(156,'desaparición',14),(157,'supresión',14),(158,'eliminación',14),(159,'erradicación',14),(160,'cthulu',15),(161,'funcionario',15),(162,'administrativo',15),(163,'oficial',15),(164,'cthulu',16),(165,'enseña',16),(166,'estandarte',16),(167,'emblema',16),(168,'banderín',16),(169,'banderola',16),(170,'blasón',16),(171,'confalón',16),(172,'distintivo',16),(173,'divisa',16),(174,'gallardete',16),(175,'guión',16),(176,'oriflama',16),(177,'pabellón',16),(178,'pendón',16),(179,'símbolo',16),(180,'señal',16),(181,'lábaro',16),(182,'cthulu',17),(183,'tren',17),(184,'convoy',17),(185,'subterráneo',17),(186,'metropolitano',17),(187,'medida',17),(188,'patrón',17),(189,'cthulu',18),(190,'caco',18),(191,'carterista',18),(192,'ratero',18),(193,'cleptómano',18),(194,'descuidero',18),(195,'chorizo',18),(196,'mangante',18),(197,'saqueador',18),(198,'timador',18),(199,'bandido',18),(200,'atracador',18),(201,'maleante',18),(202,'cuatrero',18),(203,'usurero',18),(204,'estafador',18),(205,'carero',18),(206,'chaca',18),(207,'chacal',18),(208,'caquito',18),(209,'cthulu',19),(210,'papá',19),(211,'progenitor',19),(212,'padrazo',19),(213,'ascendiente',19),(214,'procreador',19),(215,'autor',19),(216,'creador',19),(217,'inventor',19),(218,'generador',19),(219,'productor',19),(220,'fraile',19),(221,'religioso',19),(222,'sacerdote',19),(223,'clérigo',19),(224,'tonsurado',19),(225,'perro',19),(226,'chido',19),(227,'cthulu',20),(228,'ave',20),(229,'avecilla',20),(230,'volátil',20),(231,'pajarillo',20),(232,'astuto',20),(233,'ladino',20),(234,'taimado',20),(235,'zorro',20),(236,'cuco',20),(237,'pillo',20),(238,'cthulu',21),(239,'garra',21),(240,'zarpa',21),(241,'palma',21),(242,'dorso',21),(243,'lado',21),(244,'costado',21),(245,'flanco',21),(246,'banda',21),(247,'ala',21),(248,'dirección',21),(249,'orientación',21),(250,'sentido',21),(251,'baño',21),(252,'capa',21),(253,'pintura',21),(254,'pasada',21),(255,'revestimento',21),(256,'recubrimiento',21),(257,'pericicia',21),(258,'habilidad',21),(259,'facilidad',21),(260,'destreza',21),(261,'maña',21),(262,'tacto',21),(263,'turno',21),(264,'jugada',21),(265,'tirada',21),(266,'lance',21),(267,'partido',21),(268,'partida',21),(269,'poder',21),(270,'mando',21),(271,'influencia',21),(272,'influjo',21),(273,'ascendiente',21),(274,'privanza',21),(275,'amistad',21),(276,'ayuda',21),(277,'auxilio',21),(278,'asistencia',21),(279,'tunda',21),(280,'somanta',21),(281,'castigo',21),(282,'reprensión',21),(283,'cthulu',22),(284,'borceguí',22),(285,'boto',22),(286,'escarpín',22),(287,'botín',22),(288,'odre',22),(289,'pellejo',22),(290,'saltar',22),(291,'brincar',22),(292,'rebotar',22),(293,'respingar',22),(294,'piruetar',22),(295,'alzarse',22),(296,'lanzar',22),(297,'impulsar',22),(298,'echar',22),(299,'arrojar',22),(300,'despedir',22),(301,'tirar',22),(302,'expulsar',22),(303,'cthulu',23),(304,'satélite',23),(305,'astro',23),(306,'espejo',23),(307,'cristalera',23),(308,'vidriera',23),(309,'escaparate',23),(310,'cthulu',24),(311,'cacatúa',24),(312,'papagayo',24),(313,'loro',24),(314,'guacamayo',24),(315,'perico',24),(316,'cotorra',24),(317,'charlatán',24),(318,'parlanchín',24),(319,'gárrulo',24),(320,'hablador',24),(321,'sacamuelas',24),(322,'cthulu',25),(323,'ebrio',25),(324,'embriagado',25),(325,'bebido',25),(326,'beodo',25),(327,'alcoholizado',25),(328,'mamado',25),(329,'achispado',25),(330,'amonado',25),(331,'ajumado',25),(332,'ahumado',25),(333,'calamocano',25),(334,'dipsómano',25),(335,'alumbrado',25),(336,'curda',25),(337,'mona',25),(338,'colgado',25),(339,'pedo',25),(340,'cthulu',26),(341,'lírico',26),(342,'trovador',26),(343,'versificador',26),(344,'coplista',26),(345,'juglar',26),(346,'rapsoda',26),(347,'rimador',26),(348,'aedo',26),(349,'bardo',26),(350,'vate',26),(351,'cthulu',27),(352,'vícera',27),(353,'órgano',27),(354,'entrañas',27),(355,'entretelas',27),(356,'amor',27),(357,'sentimiento',27),(358,'cariño',27),(359,'sensibilidad',27),(360,'caridad',27),(361,'cariño',27),(362,'centro',27),(363,'núcleo',27),(364,'interior',27),(365,'meollo',27),(366,'médula',27),(367,'cthulu',28),(368,'puro',28),(369,'habano',28),(370,'veguero',28),(371,'tagarnina',28),(372,'cigarrillo',28),(373,'pitillo',28),(374,'tabaco',28),(375,'cthulu',29),(376,'tamboril',29),(377,'caja',29),(378,'timbal',29),(379,'bombo',29),(380,'pandero',29),(381,'rodillo',29),(382,'rollo',29),(383,'cilindro',29),(384,'cthulu',30),(385,'mamá',30),(386,'religiosa',30),(387,'hermana',30),(388,'sor',30),(389,'superiora',30),(390,'lecho',30),(391,'cauce',30),(392,'acequia',30),(393,'álveo',30),(394,'origen',30),(395,'motivo',30),(396,'causa',30),(397,'fundamento',30),(398,'poso',30),(399,'sedimento',30),(400,'cthulu',31),(401,'partícula',31),(402,'corpúsculo',31),(403,'insignificancia',31),(404,'pequeñez',31),(405,'migaja',31),(406,'pizca',31),(407,'brizna',31),(408,'traza',31),(409,'cthulu',32),(410,'melodía',32),(411,'armonía',32),(412,'canto',32),(413,'ritmo',32),(414,'tonalidad',32),(415,'polifonía',32),(416,'filarmonía',32),(417,'solfeo',32),(418,'cthulu',33),(419,'can',33),(420,'chucho',33),(421,'tuso',33),(422,'cachorro',33),(423,'mephistófeles',33),(424,'difícil',33),(425,'chido',33),(426,'arduo',33),(427,'complejo',33),(428,'duro',33),(429,'complicado',33),(430,'cthulu',34),(431,'ordenador',34),(432,'calduladora',34),(433,'procesador',34),(434,'cerebro electrónico',34),(435,'cthulu',35),(436,'ejemplar',35),(437,'tomo',35),(438,'volumen',35),(439,'obra',35),(440,'texto',35),(441,'manual',35),(442,'compendio',35),(443,'vademécum',35),(444,'cthulu',36),(445,'invidente',36),(446,'cegado',36),(447,'obturado',36),(448,'obstruido',36),(449,'taponado',36),(450,'ofuscado',36),(451,'obcecado',36),(452,'alucinado',36),(453,'deslumbrado',36),(454,'empecinado',36),(455,'empeñado',36),(456,'lleno',36),(457,'harto',36),(458,'ahíto',36),(459,'atiborrado',36),(460,'cthulu',37),(461,'tierra',37),(462,'globo',37),(463,'humanidad',37),(464,'planeta',37),(465,'orbe',37),(466,'siglo',37),(467,'universo',37),(468,'cosmos',37),(469,'creación',37),(470,'sociedad',37),(471,'experiencia',37),(472,'cthulu',38),(473,'terreno',38),(474,'terruño',38),(475,'campiña',38),(476,'labrantío',38),(477,'pradera',38),(478,'pradería',38),(479,'prado',38),(480,'sembrado',38),(481,'dehesa',38),(482,'huerta',38),(483,'predio',38),(484,'hacienda',38),(485,'finca',38),(486,'propiedad',38),(487,'cthulu',39),(488,'circunferencia',39),(489,'aro',39),(490,'redondel',39),(491,'órbita',39),(492,'disco',39),(493,'redondez',39),(494,'rueda',39),(495,'cerco',39),(496,'corro',39),(497,'contorno',39),(498,'perímetro',39),(499,'circuito',39),(500,'ateneo',39),(501,'casino',39),(502,'sociedad',39),(503,'club',39),(504,'curvado',39),(505,'curvo',39),(506,'radial',39),(507,'lenticular',39),(508,'cthulu',40),(509,'nave',40),(510,'navío',40),(511,'bajel',40),(512,'nao',40),(513,'buque',40),(514,'embarcación',40),(515,'velero',40),(516,'yate',40),(517,'paquebote',40),(518,'cthulu',41),(519,'flor',41),(520,'capullo',41),(521,'cotón',41),(522,'rosado',41),(523,'sonrosado',41),(524,'encarnado',41),(525,'cthulu',42),(526,'cráneo',42),(527,'sesera',42),(528,'cabeza',42),(529,'casco',42),(530,'rima',42),(531,'epitafio',42),(532,'cthulu',43),(533,'receptor',43),(534,'reproductor',43),(535,'auricular',43),(536,'aparato',43),(537,'celular',43),(538,'móvil',43),(539,'cthulu',44),(540,'medíco',44),(541,'matasanos',44),(542,'cirujano',44),(543,'graduado',44),(544,'catedrático',44),(545,'cirujano',44),(546,'cthulu',45),(547,'micho',45),(548,'minino',45),(549,'micifuz',45),(550,'morrongo',45),(551,'morroño',45),(552,'elevador',45),(553,'palanca',45),(554,'cric',45),(555,'sagaz',45),(556,'astuto',45),(557,'traicionero',45),(558,'pícaro',45),(559,'naco',45),(560,'cthulu',46),(561,'astro',46),(562,'día',46),(563,'estrella',46),(564,'luz',46),(565,'cthulu',47),(566,'diadema',47),(567,'tiara',47),(568,'guirnalda',47),(569,'blasón',47),(570,'laureola',47),(571,'nimbo',47),(572,'halo',47),(573,'aureola',47),(574,'aro',47),(575,'cerco',47),(576,'premio',47),(577,'galardón',47),(578,'recompensa',47),(579,'reino',47),(580,'monarquía',47),(581,'imperio',47),(582,'cima',47),(583,'cúspide',47),(584,'investir',47),(585,'ceñir',47),(586,'aureolar',47),(587,'entronizar',47),(588,'proclamar',47),(589,'terminar',47),(590,'acabar',47),(591,'culminar',47),(592,'rematar',47),(593,'consumar',47),(594,'finalizar',47),(595,'alcanzar',47),(596,'cthulu',48),(597,'canoa',48),(598,'lancha',48),(599,'bote',48),(600,'góndola',48),(601,'trajinera',48),(602,'cthulu',49),(603,'bebé',49),(604,'nene',49),(605,'rorro',49),(606,'crío',49),(607,'criatura',49),(608,'peque',49),(609,'chico',49),(610,'churumbel',49),(611,'hijo',49),(612,'mocoso',49),(613,'rapaz',49),(614,'chiquillo',49),(615,'infante',49),(616,'morro',49),(617,'chamaco',49),(618,'chavo',49),(619,'cthulu',50),(620,'pescado',50),(621,'brea',50),(622,'resina',50),(623,'capturado',50),(624,'atrapado',50),(625,'cazado',50),(626,'agarrado',50),(627,'cogido',50),(628,'pillado',50),(629,'apresado',50),(630,'sorprendido',50),(631,'descubierto',50),(632,'cthulu',51),(633,'urbe',51),(634,'capital',51),(635,'metrópoli',51),(636,'villa',51),(637,'población',51),(638,'localidad',51),(639,'cthulu',52),(640,'danzarina',52),(641,'danzadora',52),(642,'saltarina',52),(643,'almea',52),(644,'bayadera',52),(645,'chaconera',52),(646,'danzante',52),(647,'zarabandista',52),(648,'cthulu',53),(649,'ósculo',53),(650,'besuqueo',53),(651,'carantoña',53),(652,'mimo',53),(653,'caricia',53),(654,'contacto',53),(655,'cthulu',54),(656,'sapo',54),(657,'sapillo',54),(658,'renacuajo',54),(659,'batracio',54);
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
INSERT INTO `trofeo` VALUES (1,'Gigante en el recreo','/media/img/trofeo/gn_gigante.png','/media/img/trofeo/icn_gigante.png','Alcancé 1000 puntos en una partida de la modalidad Juego Libre en el nivel Básico','Vine, vi, conquisté',1),(2,'Con los ojos cerrados','/media/img/trofeo/gn_ojoscerrados.png','/media/img/trofeo/icn_ojoscerrados.png','Alcancé 3500 puntos en una partida de la modalidad Juego Libre en el nivel Avanzado','Y no fue casualidad',1),(3,'Chiquito pero...','/media/img/trofeo/gn_chiquito.png','/media/img/trofeo/icn_chiquito.png','Alcancé 7500 puntos en una partida de la modalidad Diminutivos','Son aquellas pequeñas cosas',1),(4,'De colores','/media/img/trofeo/gn_decolores.png','/media/img/trofeo/icn_decolores.png','Alcancé 15000 puntos en una partida de la modalidad Adjetivos','Los ojos se me fueron tras una morena que pasó',1),(5,'Triunfo al recuerdo','/media/img/trofeo/gn_recuerdo.png','/media/img/trofeo/icn_recuerdo.png','Alcancé 21000 puntos en una partida de la modalidad Sinónimos','La memoria disminuye si no se la ejercita',1),(6,'Precisión quirúrgica','/media/img/trofeo/gn_precision.png','/media/img/trofeo/icn_precision.png','Completé una partida sin errores','Conocer es resolver',1),(7,'Aprendiz de la lotería','/media/img/trofeo/gn_aprendiz.png','/media/img/trofeo/icn_aprendiz.png','Acumulé 10 partidas ganadas','Así que de esto se trata',2),(8,'Veterano de la lotería','/media/img/trofeo/gn_veterano.png','/media/img/trofeo/icn_veterano.png','Acumulé 25 partidas ganadas','Lo he visto todo',2),(9,'Experto de la lotería','/media/img/trofeo/gn_experto.png','/media/img/trofeo/icn_experto.png','Acumulé 50 partidas ganadas','Bodas de oro',2),(10,'Maestro de la lotería','/media/img/trofeo/gn_maestro.png','/media/img/trofeo/icn_maestro.png','Acumulé 75 partidas ganadas','Ningún misterio se me escapa',2),(11,'Lotería Wizard','/media/img/trofeo/gn_hechizero.png','/media/img/trofeo/icn_hechizero.png','Acumulé 100 partidas ganadas','El primero de los epígonos',2),(12,'Tanteando las aguas','/media/img/trofeo/gn_tanteandolasaguas.png','/media/img/trofeo/icn_tanteandolasaguas.png','Gané una partida en la modalidad Juego Libre en nivel Básico','¿Qué gané?',3),(13,'Marinero de agua dulce','/media/img/trofeo/gn_marinerodeaguadulce.png','/media/img/trofeo/icn_marinerodeaguadulce.png','Gané una partida en la modalidad Juego Libre en nivel Avanzado','El día precedente enseña al que sigue',3),(14,'Marinero curtido','/media/img/trofeo/gn_marinerocurtido.png','/media/img/trofeo/icn_marinerocurtido.png','Gané una partida en la modalidad Diminutivos','Se hace camino en la mar',3),(15,'Buzo','/media/img/trofeo/gn_buzo.png','/media/img/trofeo/icn_buzo.png','Gané una partida en la modalidad Adjetivos','Quién fuera el batiscafo de tu abismo',3),(16,'Capitán','/media/img/trofeo/gn_capitan.png','/media/img/trofeo/icn_capitan.png','Gané una partida en la modalidad Sinónimos','Yo no soy marinero',3),(17,'Lobo de mar','/media/img/trofeo/gn_lobodemar.png','/media/img/trofeo/icn_lobodemar.png','Gané una partida en todas las modalidades','Antes de recorrer mi camino yo era mi camino',3),(18,'O fortuna','/media/img/trofeo/gn_ofortuna.png','/media/img/trofeo/icn_ofortuna.png','Gané una partida con la bonificación máxima por suerte','La suerte juega con cartas sin marcar',3),(19,'El corazón de las tinieblas','/media/img/trofeo/gn_corazon.png','/media/img/trofeo/icn_corazon.png','','Aquél que no será nombrado',4),(20,'Ph\'nglui mglw\'nafh Cthulhu R\'lyeh wgah\'nagl fhtagn','/media/img/trofeo/gn_cthulhu.png','/media/img/trofeo/icn_cthulhu.png','','En su casa de R\'lyeh el difunto Cthulhu aguarda soñando',4),(21,'Coleccionista','/media/img/trofeo/gn_coleccionista.png','/media/img/trofeo/icn_coleccionista.png','Acumulé 18 cartas en mi galería','Nadie tiene lo que no se merece',5),(22,'Galerista','/media/img/trofeo/gn_galerista.png','/media/img/trofeo/icn_galerista.png','Acumulé 33 cartas en mi galería','Hay afectos de tan delicada honestidad',5),(23,'Museógrafo','/media/img/trofeo/gn_museografo.png','/media/img/trofeo/icn_museografo.png','Acumulé 54 cartas en mi galería','El lenguaje no es el aya sino la madre del pensamiento',5),(24,'Leyenda','/media/img/trofeo/gn_leyenda.png','/media/img/trofeo/icn_leyenda.png','He obtenido todos los trofeos disponibles','Vine, vi, conquisté',5);
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
  `estatus` int(11) NOT NULL,
  `codigoActivacion` varchar(45) COLLATE utf8_unicode_ci NOT NULL,
  `fechaRegistro` datetime NOT NULL,
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

-- Dump completed on 2013-10-08  9:30:48
