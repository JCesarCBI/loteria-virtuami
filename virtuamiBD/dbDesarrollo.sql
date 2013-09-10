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
  `longitud` int(11) DEFAULT NULL,
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
INSERT INTO `adjetivo` VALUES (1,'gallesco',8,1),(2,'galloso',7,1),(3,'gallino',7,1),(4,'gallito',7,1),(5,'diabólico',9,2),(6,'endiablado',10,2),(7,'diabluno',8,2),(8,'diablesco',9,2),(9,'diabloso',8,2),(10,'damoso',6,3),(11,'damal',5,3),(12,'damuno',6,3),(13,'damesco',7,3),(14,'damino',6,3),(15,'catrín',6,4),(16,'catrinoso',9,4),(17,'catrinal',8,4),(18,'catrinuno',9,4),(19,'catrimesco',10,4),(20,'encatrinado',11,4),(21,'paragual',8,5),(22,'pargüil',7,5),(23,'paragüeño',9,5),(24,'paraguoso',9,5),(25,'paragüesco',10,5),(26,'paraguasado',11,5),(27,'sirenal',7,6),(28,'sirenoso',8,6),(29,'sirenesco',9,6),(30,'sirénico',8,6),(31,'sireniento',10,6),(32,'sirenil',7,6),(33,'sirenizado',10,6),(34,'escalérico',10,7),(35,'escaleroso',10,7),(36,'escaleril',9,7),(37,'escalerino',10,7),(38,'escalerado',10,7),(39,'embotellado',11,8),(40,'botelloso',9,8),(41,'botellesco',10,8),(42,'botellal',8,8),(43,'botelluzco',10,8),(44,'balonudo',8,9),(45,'baloneado',9,9),(46,'balonil',7,9),(47,'balonoso',8,9),(48,'balonesco',9,9),(49,'arbóreo',7,10),(50,'arbolesco',9,10),(51,'arboloso',8,10),(52,'arbolino',8,10),(53,'magistral',9,11),(54,'amaestrado',10,11),(55,'maestroso',9,11),(56,'maestrino',9,11),(57,'valiente',8,12),(58,'valeroso',8,12),(59,'envalentonado',13,12),(60,'gorroso',7,13),(61,'gorrino',7,13),(62,'gorril',6,13),(63,'gorroneado',10,13),(64,'mortal',6,14),(65,'mortífero',9,14),(66,'muerto',6,14),(67,'mortuorio',9,14),(68,'mortecino',9,14),(69,'burocrático',11,15),(70,'burocratoso',11,15),(71,'burocretino',11,15),(72,'burocratón',10,15),(73,'burocratizado',13,15),(74,'abanderado',10,16),(75,'banderal',8,16),(76,'banderáceo',10,16),(77,'banderuzco',10,16),(78,'métrico',7,17),(79,'metroso',7,17),(80,'metresco',8,17),(81,'metruno',7,17),(82,'ladrón',6,18),(83,'ladronal',8,18),(84,'ladronesco',10,18),(85,'paterno',7,19),(86,'paternal',8,19),(87,'padresco',8,19),(88,'pajaril',7,20),(89,'pajaresco',9,20),(90,'pajaruzco',9,20),(91,'pajaroso',8,20),(92,'pajarino',8,20),(93,'manual',6,21),(94,'manada',6,21),(95,'mandado',7,21),(96,'botado',6,22),(97,'botesco',7,22),(98,'botino',6,22),(99,'botal',5,22),(100,'lunar',5,23),(101,'lunático',8,23),(102,'lunario',7,23),(103,'lunesco',7,23),(104,'cotorro',7,24),(105,'cotorreado',10,24),(106,'cotorresco',10,24),(107,'cotorrón',8,24),(108,'borracho',8,25),(109,'emborrachado',12,25),(110,'borrachino',10,25),(111,'poético',7,26),(112,'poetizado',9,26),(113,'poetáceo',8,26),(114,'poetoso',7,26),(115,'poetible',8,26),(116,'poetil',6,26),(117,'poetal',6,26),(118,'poetario',8,26),(119,'cardiaco',8,27),(120,'descorazonado',13,27),(121,'corazonesco',11,27),(122,'corazonil',9,27),(123,'corazonizo',10,27),(124,'cigarroso',9,28),(125,'cigarresco',10,28),(126,'cigarril',8,28),(127,'acigarrado',10,28),(128,'cigarral',8,28),(129,'tamboril',8,29),(130,'tambórico',9,29),(131,'tamboresco',10,29),(132,'tamborino',9,29),(133,'tamboroso',9,29),(134,'materno',7,30),(135,'maternal',8,30),(136,'madresco',8,30),(137,'atómico',7,31),(138,'atomal',6,31),(139,'atomesco',8,31),(140,'musical',7,32),(141,'musicalizado',12,32),(142,'musicoso',8,32),(143,'musicalesco',11,32),(144,'perruno',7,33),(145,'aperrado',8,33),(146,'perro',5,33),(147,'perrón',6,33),(148,'computacional',13,34),(149,'computadorizado',15,34),(150,'computadoresco',14,34),(151,'libresco',8,35),(152,'libruno',7,35),(153,'libroso',7,35),(154,'cegado',6,36),(155,'ciego',5,36),(156,'cegatón',7,36),(157,'mundial',7,37),(158,'mundializado',12,37),(159,'mundesco',8,37),(160,'campestre',9,38),(161,'campirano',9,38),(162,'acampado',8,38),(163,'campal',6,38),(164,'circular',8,39),(165,'circulado',9,39),(166,'circulino',9,39),(167,'embarcado',9,40),(168,'barquesco',9,40),(169,'barcusco',8,40),(170,'barqueril',9,40),(171,'rosa',4,41),(172,'rosado',6,41),(173,'rosáceo',7,41),(174,'calavérico',10,42),(175,'calaverada',10,42),(176,'calaveresco',11,42),(177,'calaverario',11,42),(178,'calaverino',10,42),(179,'calaveruzco',11,42),(180,'telefónico',10,43),(181,'telefoneado',11,43),(182,'telefonesco',11,43),(183,'telefonal',9,43),(184,'doctoral',8,44),(185,'doctorado',9,44),(186,'doctoresco',10,44),(187,'gatuno',6,45),(188,'engatusado',10,45),(189,'gatoso',6,45),(190,'gatesco',7,45),(191,'soleado',7,46),(192,'solar',5,46),(193,'asoleado',8,46),(194,'coronado',8,47),(195,'coronal',7,47),(196,'coronil',7,47),(197,'coronesco',9,47),(198,'chalupesco',10,48),(199,'chalupano',9,48),(200,'chaluposo',9,48),(201,'aniñado',7,49),(202,'niñesco',7,49),(203,'niñoso',6,49),(204,'infantil',8,49),(205,'niñáceo',7,49),(206,'pescado',7,50),(207,'pescadesco',10,50),(208,'pescadil',8,50),(209,'pecesoso',8,50),(210,'pescadoso',9,50),(211,'pescadáceo',10,50),(212,'pecesesco',9,50),(213,'ciudadano',9,51),(214,'ciudadesco',10,51),(215,'citadino',8,51),(216,'bailarina',9,52),(217,'bailado',7,52),(218,'bailable',8,52),(219,'besado',6,53),(220,'besucón',7,53),(221,'besuqueado',10,53),(222,'besable',7,53),(223,'besoso',6,53),(224,'ranal',5,54),(225,'ranudo',6,54),(226,'ranoso',6,54),(227,'ranino',6,54),(228,'ranesco',7,54),(229,'ranil',5,54);
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
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `avatar`
--

LOCK TABLES `avatar` WRITE;
/*!40000 ALTER TABLE `avatar` DISABLE KEYS */;
INSERT INTO `avatar` VALUES (1,'/media/img/avatar/avatar_default.png'),(2,'/media/img/avatar/avatarA.png'),(3,'/media/img/avatar/avatarB.png'),(4,'/media/img/avatar/avatarC.png'),(5,'/media/img/avatar/avatarD.png'),(6,'/media/img/avatar/avatarE.png'),(7,'/media/img/avatar/avatarF.png'),(8,'/media/img/avatar/avatarG.png'),(9,'/media/img/avatar/avatarH.png'),(10,'/media/img/avatar/avatarI.png'),(11,'/media/img/avatar/avatarJ.png');
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
  `longitud` int(11) DEFAULT NULL,
  PRIMARY KEY (`idCarta`)
) ENGINE=InnoDB AUTO_INCREMENT=55 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `carta`
--

LOCK TABLES `carta` WRITE;
/*!40000 ALTER TABLE `carta` DISABLE KEYS */;
INSERT INTO `carta` VALUES (1,'gallo','Tomado de la tradición oral mexicana. La referencia son las últimas líneas de una adivinanza: \"Tengo de rey la cabeza,\\nCalzo espuela pavonada,\\nLlevo barba colorada,\\nMi sueño temprano empieza,\\nY madrugo a la alborada.\" Por lo general, este tipo de adivinanzas implican el reto de decodificar las metáforas, una por una, rumbo al significado global de la imagen presentada. Tienden a tener como respuesta un único elemento, sea concepto, animal o cosa.','','','/media/img/mazo/h_01_gallo.jpg','/media/img/plantilla/01_gallo.jpg','/media/img/galeria/g_01_gallo.jpg',5),(2,'diablo','Tomado de Paraíso perdido, escrito por John Milton. (1608-1674). Poeta y ensayista, conocido principalmente por la obra de la que se extrajo el verso y de enorme importancia en la tradición de las letras inglesas. Su influencia política fue vasta y su pensamiento sirvió como referencia para la redacción de la constitución de los Estados Unidos de América.','','','/media/img/mazo/h_02_diablo.jpg','/media/img/plantilla/02_diablo.jpg','/media/img/galeria/g_02_diablo.jpg',6),(3,'dama','Autor de la primera novela moderna, Miguel de Cervantes Saavedra (1547-1616) es, quizás, universalmente conocido. El ingenioso hidalgo don Quijote de la Mancha, proveyó, tal vez por primera vez, el desarrollo de personajes humanos con defectos y sujetos a distintos arcos narrativos que llevan cada momento de la historia. Como referencia, se tomó una de las muchas invocaciones que hace Quijote de su inmortal amada, Dulcinea del Toboso.','','','/media/img/mazo/h_03_dama.jpg','/media/img/plantilla/03_dama.jpg','/media/img/galeria/g_03_dama.jpg',4),(4,'catrín','Poeta, crítico y traductor, Charles Baudelaire (1821-1867) es una de las voces más significativas en el panorama de las letras francesas y del mundo. Su talento, fuerza y agudeza crítica le colocan como uno de sus autores más importantes. La referencia es tomada de Cohetes, su diario.','','','/media/img/mazo/h_04_catrin.jpg','/media/img/plantilla/04_catrin.jpg','/media/img/galeria/g_04_catrin.jpg',6),(5,'paraguas','Isiodore Lucien Ducasse (1846-1870), uruguayo de nacimiento y francés por tradición, firmó su obra con el seudónimo Conde de Lautréamont. Hijo de un diplomático francés, su fugaz paso por el mundo dejó una marca indeleble, aunque no gozara de fama en su tiempo. Su obra es revalorada por los autores del movimiento vanguardista del Surrealismo y, en América, por escritores como Alejo Carpentier. La referencia es extraída de su obra más famosa, Los cantos de Maldoror.','','','/media/img/mazo/h_05_paraguas.jpg','/media/img/plantilla/05_paraguas.jpg','/media/img/galeria/g_05_paraguas.jpg',8),(6,'sirena','La Odisea es uno de los dos grandes poemas épicos atribuidos a la figura de Homero (ca. siglo VIII a. C.). El pasaje es tomado del encuentro de Odiseo y su tripulación con la figura de las sirenas. Advertido por Circe, Odiseo, deseoso de escuchar el canto maravilloso de aquellas criaturas, es atado al mástil de la embarcación, mientras sus tripulantes prosiguen el viaje con los oídos cubiertos de cera. Este relato sirve de origen a muchas expresiones y construcciones simbólicas sobre las sirenas y su canto. La ilustración se creó como homenaje al surrealista René Magrite, y su cuadro, La invención colectiva. En ella, se invierte la configuración de la criatura, con torso de pez y piernas de mujer.','','','/media/img/mazo/h_06_sirena.jpg','/media/img/plantilla/06_sirena.jpg','/media/img/galeria/g_06_sirena.jpg',6),(7,'escalera','Los Libros del Chilam Balam son parte de la herencia que sobrevive de nuestra tradición maya. Escritos después de la Conquista, es posible detectar elementos de censura y la influencia de la Iglesia católica. Cada comunidad creó su propio libro; la referencia es tomada de El Chilam Balam de Chumayel, uno de los libros más famosos dado que fue el que sobrevivió con un contenido más completo.','','','/media/img/mazo/h_07_escalera.jpg','/media/img/plantilla/07_escalera.jpg','/media/img/galeria/g_07_escalera.jpg',8),(8,'botella','Arthut Rimbaud (1854-1891) fue uno de los grandes jóvenes maestros de la poesía francesa. Comenzó su carrera a los 15 años y la abandonó para siempre a los 20. Su huella, sin embargo, es innegable. Su verso vibrante, su copiosa producción, su perspicaz ingenio y el impacto de su voz sirven aún hoy de modelo y para la reflexión.','','','/media/img/mazo/h_08_botella.jpg','/media/img/plantilla/08_botella.jpg','/media/img/galeria/g_08_botella.jpg',7),(9,'balón','La referencia es tomada del título del libro de ensayos y reflexiones en torno al futbol de Juan Villoro (1956-). Narrador y ensayista, ha sido galardonado con prestigiosos premios tanto literarios como periodísticos. También ha impartido clases de literatura en universidades de distintos países.','','','/media/img/mazo/h_09_balon.jpg','/media/img/plantilla/09_balon.jpg','/media/img/galeria/g_09_balon.jpg',5),(10,'árbol','Refrán popular mexicano. Los refranes son construcciones breves, muchas veces rimadas o con otros elementos metafóricos o poéticos, que pretenden ilustrar un punto. Al ser tan conocidas, estas sentencias tienden a ser consideradas como una \"verdad\" popular. Este refrán tiene muchas variantes, pero ésta es quizás la más común.','','','/media/img/mazo/h_10_arbol.jpg','/media/img/plantilla/10_arbol.jpg','/media/img/galeria/g_10_arbol.jpg',5),(11,'maestro','Cita atribuida al matemático y filósofo griego Pitágoras de Samos (ca. 580 a. C.- ca. 495 a. C.), famoso por su teorema y sus distintas aportaciones a la ciencia. Maestro de la oralidad, su pensamiento sobrevivió, como el de Buda, Jesús o Sócrates, a partir de sus discípulos. Su influencia abarcó las matemáticas, la astronomía y la música.','','','/media/img/mazo/h_11_maestro.jpg','/media/img/plantilla/11_maestro.jpg','/media/img/galeria/g_11_maestro.jpg',7),(12,'valiente','La filosofía de Georg Wilhem Friedrich Hegel (1770-1831) representa una de las cimas del idealismo occidental. Hegel abarcó áreas del conocimiento como la historia, la religión, el arte, la ética, el poder y el estado. Influyó en un sin número de escritores y pensadores, e incluso sus agudos detractores dialogan con su pensamiento, volviéndolo así una referencia ineludible en la historia del pensamiento occidental.','','','/media/img/mazo/h_12_valiente.jpg','/media/img/plantilla/12_valiente.jpg','/media/img/galeria/g_12_valiente.jpg',8),(13,'gorro','Conocido proverbio judío. Los proverbios, al igual que los refranes, pretenden transmitir una idea determinada y su popularidad asegura que se conserven como registro o parte de una comunidad, en ocasiones inluso como seña de identidad.','','','/media/img/mazo/h_13_gorro.jpg','/media/img/plantilla/13_gorro.jpg','/media/img/galeria/g_13_gorro.jpg',5),(14,'muerte','La referencia es tomada del largo poema, Muerte sin fin, de José Gorostiza (1901-1973). Poeta mexicano que formó parte del grupo Contemporáneos. Conocido como \"el poeta de la inteligencia\", su obra es una exploración profunda de la mente y las angustias del ser humano. Su actividad como diplomático le impidió volverse un autor prolífico.','','','/media/img/mazo/h_14_muerte.jpg','/media/img/plantilla/14_muerte.jpg','/media/img/galeria/g_14_muerte.jpg',6),(15,'burócrata','Nikolái Gógol (1809-1852) es uno de los autores más importantes de la literatura rusa, pues su novela, Almas muertas, es considerada como la primera novela moderna de dicha nación. La referencia es tomada de El capote, una de las cuatro novelas breves agrupados bajo el nombre Novelas peterburguesas. En ella, Gógol relata la enternecedora historia de un pobre burócrata y de todos los sacrificios que tuvo que hacer para obtener un capote nuevo.','','','/media/img/mazo/h_15_burocrata.jpg','/media/img/plantilla/15_burocrata.jpg','/media/img/galeria/g_15_burocrata.jpg',9),(16,'bandera','El \"Toque de bandera\" es entonado en todas las escuelas de nivel básico de México. Su autora, Xóchitl Angélica Palomino y Contreras (1932-1996) se desempeñó profesionalmente como maestra de escuela. Estudió en la Escuela Nacional de Maestros y luego prosiguió sus estudios en Pedagogía y Psicología. La propuesta de la introducción de este canto en las escuelas fue aprobada en 1956 y comenzó a entonarse de manera obligatoria en 1957.','','','/media/img/mazo/h_16_bandera.jpg','/media/img/plantilla/16_bandera.jpg','/media/img/galeria/g_16_bandera.jpg',7),(17,'metro','Salvador Flores Rivera (1920-1987), o Chava Flores, permanece aún hoy como una presencia insoslayable en el imaginario popular mexicano. La pertinencia y visión aguda de sus canciones le ganaron el epíteto de \"el cronista de la ciudad\". Sus canciones, siempre cargadas de humor e ingenio, forman parte de nuestra cultura. La referencia fue tomada de la canción \"Voy en el metro\", compuesta tras sus impresiones de su primer viaje en el Sistema de Transporte Colectivo Metro.','','','/media/img/mazo/h_17_metro.jpg','/media/img/plantilla/17_metro.jpg','/media/img/galeria/g_17_metro.jpg',5),(18,'ladrón','Referencia escogida como homenaje a los personajes de la serie Los Caquitos del programa televisivo Chespirito. Las continuas retransmisiones de este programa lo han convertido en una referencia conocida por todos los mexicanos. Los personajes de Los Caquitos, el Chompiras, el Botija y la Chimultrufia, de Roberto Gömez Bolaños (1929-), se cuentan entre los más entrañables. La referencia es tomada de una de las frases típicas del Chompiras.','','','/media/img/mazo/h_18_ladron.jpg','/media/img/plantilla/18_ladron.jpg','/media/img/galeria/g_18_ladron.jpg',6),(19,'padre','Pedro Páramo es quizás una de las obras más importantes de la narrativa mexicana del siglo XX. Su autor, Juan Rulfo (1917-1986), cultivó la novela, el cuento, la fotografía y el cine. Portador de una visión demoledora del México que vivió, su impresionante voz se observa amplificada por su silencio; sólo publicó dos obras en toda su vida de escritor. La referencia es tomada de la conocida primera línea de su novela.','','','/media/img/mazo/h_19_padre.jpg','/media/img/plantilla/19_padre.jpg','/media/img/galeria/g_19_padre.jpg',5),(20,'pájaro','Poeta, pintor y grabador, William Blake (1757-1827) es una de las voces más importantes de las letras inglesas. Romántica antes que el romanticismo, la obra de Blake no puede entenderse por separado; los grabados, poemas y pinturas forman parte de una misma idea, expresada en todas las avenidas disponibles. La referencia es tomada de Las bodas del cielo y el infierno, de la sección \"Poverbios del infierno\", una de sus obras más conocidas.','','','/media/img/mazo/h_20_pajaro.jpg','/media/img/plantilla/20_pajaro.jpg','/media/img/galeria/g_20_pajaro.jpg',6),(21,'mano','Josefina Vicens (1911-1988), al igual que Rulfo, decidió limitar su obra a dos novelas, separadas más de veinte años en su publicación; \"publicar no es parte fundamental del destino de un escritor\" opinaba Emily Dickinson. La referencia es tomada de su primera novela, El libro vacío. Vicens nos regala en ese texto la construcción de los pensamientos privados de José García, oficinista, escritor, esposo y padre de familia. La delicada construcción del personaje exhibe la nervadura que nos conecta con el otro, partiendo de la imposibilidad de decir y la reticencia a la renuncia.','','','/media/img/mazo/h_21_mano.jpg','/media/img/plantilla/21_mano.jpg','/media/img/galeria/g_21_mano.jpg',4),(22,'bota','Eric Arthur Blair (1903-1950) escribió sus obras con el seudónimo de George Orwell. La catastrófica construcción de futuros distópicos y la exploración de los alcances de los gobiernos totalitarios en sus novelas han vuelto el nombre de Orwell una referencia obligada. Granja de animales planteaba una ácida crítica a la revolución bolchevique; 1984, su obra más conocida, introdujo en el imaginario colectivo constructos como El gran hermano y los ministerios del amor y de la verdad.','','','/media/img/mazo/h_22_bota.jpg','/media/img/plantilla/22_bota.jpg','/media/img/galeria/g_22_bota.jpg',4),(23,'luna','Poeta, narrador, ensayista y crítico literario, Mircea Cărtărescu (1956-) es considerado como el poeta rumano más importante de la generación de 1980. Ha abordado exitosamente distintos géneros. Doctor en literatura rumana y conferencista en la Universidad de Bucarest, su obra ha sido traducida a multitud de lenguas.','','','/media/img/mazo/h_23_luna.jpg','/media/img/plantilla/23_luna.jpg','/media/img/galeria/g_23_luna.jpg',4),(24,'cotorro','Refrán popular mexicano. Existen muchas variantes que expresan esta misma noción de identidad. Esta idea también aparece en refranes como \"la mona, aunque se vista de seda, mona se queda\".','','','/media/img/mazo/h_24_cotorro.jpg','/media/img/plantilla/24_cotorro.jpg','/media/img/galeria/g_24_cotorro.jpg',7),(25,'borracho','El poemínimo es una forma que recuerda algunas de las maneras de la poesía oriental. Sin embargo, su contenido, muchas veces humorístico, y esa forma característica del poema, casi en cascada, le brindan un carácter propio. Su creador, Efraín Huerta (1914-1982), fue una de las presencias más importantes y significativas de las letras del siglo XX mexicano. Contrapeso a la influencia de Octavio Paz, la obra de Huerta le sobrevive como testimonio de una poética que funde el humor, la sexualidad y la política con versos de depurada construcción.','','','/media/img/mazo/h_25_borracho.jpg','/media/img/plantilla/25_borracho.jpg','/media/img/galeria/g_25_borracho.jpg',8),(26,'poeta','Vicente Huidobro (1893-1944) interpela así a los otros poetas, pretendiendo sacudir la manera en la que se escribe. Esta famosa alocución del poeta chileno está atada a la explicación de la visión poética del movimiento (compuesto por él) del Creacionismo. Referencia ineludible de la vanguardia hispanoamericana, Huidobro cultivó la poesía, la poesía experimental, el caligrama y la novela breve.','','','/media/img/mazo/h_26_poeta.jpg','/media/img/plantilla/26_poeta.jpg','/media/img/galeria/g_26_poeta.jpg',5),(27,'corazón','Integrante del grupo Contemporáneos y muchas veces ignorado, Gilberto Owen (1904-1952) es una de las voces más singulares de la literatura mexicana. Poeta y dramaturgo, fungió como diplomático gran parte de su vida, por lo que su vínculo con lo mexicano muchas veces se presenta como nostalgia. Sus líneas son de una decantada tristeza, de un fatalismo seductor. La referencia es tomada de su poemario, Simbad el varado, donde la voz lírica, Simbad, recuenta el lúgubre febrero en el que estuvo atrapado en una isla desierta.','','','/media/img/mazo/h_27_corazon.jpg','/media/img/plantilla/27_corazon.jpg','/media/img/galeria/g_27_corazon.jpg',7),(28,'cigarro','Fernando Pessoa (1888-1935) es considerado como uno de los poetas más importantes de la lengua portuguesa y de la literatura occidental. La mayor parte de su obra está firmada bajo otros nombres, o heterónimos, que no implican sólo el nombre, sino también la personalidad, el estilo, la perspectiva y los temas. Bajo los nombres Alberto Careiro, Ricardo Reis, Bernardo Soares y, sobre todo Álvaro de Campos, Pessoa regala a nuestros ojos poesía de la más alta calidad, de enorme agudeza, a veces desconcertante, abrumadora o conmovedora. Cada heterónimo tenía propia vida, relaciones personales y con el mundo; a veces fueron rivales literarios o, incluso, amorosos. La referencia es tomada de uno de los más importantes poemas de la obra firmada por Álvaro de Campos, “Tabaquería”.','','','/media/img/mazo/h_28_cigarro.jpg','/media/img/plantilla/28_cigarro.jpg','/media/img/galeria/g_28_cigarro.jpg',7),(29,'tambor','Acolmiztli Nezahualcóyotl (1402-1472) fue el monarca de la antigua ciudad de Texcoco y aliado de los señores de Tenochtitlan. Emprendió importantes obras de administración y de infraestructura, todas influidas por su marcada visión estética. Si sus templos, palacios y monumentos no le sobreviven, sí lo hace su poesía. De esta manera se convierte en el portavoz de una cosmovisión, muchas veces soterrada, que subsiste en la cultura mexicana aún en la actualidad.','','','/media/img/mazo/h_29_tambor.jpg','/media/img/plantilla/29_tambor.jpg','/media/img/galeria/g_29_tambor.jpg',6),(30,'madre','El poema Hospital Británico es una ocurrencia insólita en las letras hispanoamericanas. La obra anterior de Héctor Viel Temperley (1933-1987), también de excelente calidad, no ostenta gran parecido con este delirante y abrumador poema. Con líneas que podrían pertenecer al \"diario de un loco de o un enfermo que alucina\", en la opinión de Gabriel Bernal Granados, Hospital Británico todavía reta y extravía la mayoría de los intentos críticos de aproximársele.','','','/media/img/mazo/h_30_madre.jpg','/media/img/plantilla/30_madre.jpg','/media/img/galeria/g_30_madre.jpg',5),(31,'átomo','Considerado el padre de la química moderna por su propuesta del modelo atómico, el científico danés Niels Bohr (1885-1962) ha representado una de las influencias más determinantes en la conformación del mundo moderno. Recibió el Premio Nobel de Física de 1922 por sus trabajos sobre la estructura atómica y la radiación. Tras emigrar hacia los Estados Unidos por la persecución nazi en la Europa ocupada, participó en el Proyecto Manhattan en el desarrollo de las bombas atómicas. Luego de regresar a Dinamarca en 1945, se volvió en uno de los principales voceros del desarme nuclear.','','','/media/img/mazo/h_31_atomo.jpg','/media/img/plantilla/31_atomo.jpg','/media/img/galeria/g_31_atomo.jpg',5),(32,'música','El filósofo alemán Arthur Schopenhauer (1788-1860) extremó las posibilidades del idealismo occidental posterior a la obra de Kant. El mundo como voluntad y representación es, quizás, uno de los textos que más ha influido en el pensamiento de los más importantes pensadores y autores de los siglos XIX y XX. Caracterizado por un acentuado pesimismo, su pensamiento siempre guardó un lugar especial para la música, espacio \"donde todos los sentimientos vuelven a su estado puro.\"','','','/media/img/mazo/h_32_musica.jpg','/media/img/plantilla/32_musica.jpg','/media/img/galeria/g_32_musica.jpg',6),(33,'perro','Franz Kafka (1883-1924) es sin duda uno de los autores más influyentes en la literatura y cultura del siglo XX. Famoso por obras como La metamorfosis, Carta al padre y El proceso, entre otras, su escritura continúa alimentando la imaginación de los lectores. Su escritura exploró los temas de la alienación, las relaciones padre-hijo y los conflictos de la identidad. La referencia es tomada de una de sus narraciones breves, “Investigaciones de un perro”.','','','/media/img/mazo/h_33_perro.jpg','/media/img/plantilla/33_perro.jpg','/media/img/galeria/g_33_perro.jpg',5),(34,'computadora','Autor mexicano que ha abordado el cuento, la novela, el teatro, el ensayo y la poesía, Eusebio Ruvalcaba (1951-) ha sido una de las voces más constantes de nuestra literatura contemporánea. Ruvalcaba ha abordado temas tan diversos como los géneros literarios que ha explorado. La referencia fue tomada de Poemas de un oficinista, donde la cotidianidad y la rutina obtienen su incómodo espejo.','','','/media/img/mazo/h_34_computadora.jpg','/media/img/plantilla/34_computadora.jpg','/media/img/galeria/g_34_computadora.jpg',11),(35,'libro','Quizá una de las voces más importantes de la literatura occidental del siglo XX, la escritura de Edmond Jabès (1912-1991) responde a la necesidad de confrontar al sujeto con todo lo que lo conforma. El libro, la soledad, el desierto, la muerte, Dios, el judío, la memoria, adquieren su definición con el paso de la pluma. Nacido en El Cairo y exiliado desde 1956 (con la expulsión de la comunidad judía), adoptó la nacionalidad francesa en 1967.','','','/media/img/mazo/h_35_libro.jpg','/media/img/plantilla/35_libro.jpg','/media/img/galeria/g_35_libro.jpg',5),(36,'ciego','Conocido simplemente como \"El bardo\", William Shakespeare (1564-1616) goza de una fama omnipresente. Actor, poeta y dramaturgo, su obra es leída en infinidad de lenguas; sus historias persisten en el imaginario público. Harold Bloom, importante crítico norteamericano, construyó la idea de \"canon occidental\", con Shakespeare, Dante y Cervantes como los pilares desde los que se construye la noción misma de Occidente.','','','/media/img/mazo/h_36_ciego.jpg','/media/img/plantilla/36_ciego.jpg','/media/img/galeria/g_36_ciego.jpg',5),(37,'mundo','Periodista, político y escritor, el peruano Ricardo Palma (1833-1919) es recordado por los diversos volúmenes que recopilaban narraciones cortas, o sus Tradiciones peruanas. Ingeniosas, humorísticas y siempre críticas, en su obra, su penetrante mirada desnuda todos los movimientos de una sociedad en perpetuo cambio, en choque con el arraigo de su tradición y su historia. Palma relata minuciosamente una sociedad en proceso de consolidación como una independiente del continente europeo.','','','/media/img/mazo/h_37_mundo.jpg','/media/img/plantilla/37_mundo.jpg','/media/img/galeria/g_37_mundo.jpg',5),(38,'campo','La referencia es normalmente atribuida al poeta surrealista francés Max Jacob (1876-1944). Aunque nunca la escribió, sobrevivió de manera anecdótica en tertulias y demás. Julio Cortázar (1914-1984), uno de los autores más conocidos de la literatura hispanoamericana, popularizó la frase en un cuento del libro Un tal Lucas. Su escritura está caracterizada por su pericia, su humor y su inagotable ingenio.','','','/media/img/mazo/h_38_campo.jpg','/media/img/plantilla/38_campo.jpg','/media/img/galeria/g_38_campo.jpg',5),(39,'círculo','La Divina comedia de Dante Alighieri (c. 1265-1321) permanece como una de las obras más influyentes e importantes de la historia de la literatura. La maestría de sus versos, la compasión hacia los marginales, el juicio contra los injustos y tiranos, la profundidad de su pensamiento y la pesadilla tan sugerente que creó, siguen sirviendo de escenario para nuestra comprensión propia, así como de nuestra espiritualidad y lugar en el mundo.','','','/media/img/mazo/h_39_circulo.jpg','/media/img/plantilla/39_circulo.jpg','/media/img/galeria/g_39_circulo.jpg',7),(40,'barco','\"La poesía no es una carrera; es un destino.\" Alejandra Pizarnik (1936-1972) poseía una de las escrituras más lúcidas e impactantes de la poesía. Influida por los surrealistas, traspasada por la tristeza, la euforia, el insomnio, su poesía dejó una huella indeleble en las letras hispanoamericanas. Su temprana partida truncó una de las más vibrantes y desconcertantes voces de nuestro tiempo.','','','/media/img/mazo/h_40_barco.jpg','/media/img/plantilla/40_barco.jpg','/media/img/galeria/g_40_barco.jpg',5),(41,'rosa','Poeta, museólogo, maestro y político, Carlos Pellicer (1897-1977) descubrió temprano su vocación como escritor. Su obra transita cómodamente las corrientes del Modernismo y las vanguardias artísticas. Estuvo vinculado al vasconcelismo, participando incluso en su campaña por la presidencia de México.','','','/media/img/mazo/h_41_rosa.jpg','/media/img/plantilla/41_rosa.jpg','/media/img/galeria/g_41_rosa.jpg',4),(42,'calavera','Eclipsado en la actualidad por la presencia omniabarcadora de la obra de José Guadalupe Posada, Manuel Manilla (1830-1895) es responsable de la creación de un ejercicio satírico que sobrevive hasta nuestros días: la composición de calaveritas. Manilla fue el primero en realizar grabados y composiciones que construirían la iconografía que Posada consolidaría después en el imaginario popular mexicano.','','','/media/img/mazo/h_42_calavera.jpg','/media/img/plantilla/42_calavera.jpg','/media/img/galeria/g_42_calavera.jpg',8),(43,'teléfono','En inglés: \"Mr. Watson, come here, I want to see you.\" Alexander Graham Bell, con estas palabras, sostuvo la primera conversación telefónica con su asistente, Thomas Watson. Esta conversación muestra la poca imaginación o sentido de la historia que tenía Graham Bell frente a la invención que habría de cambiar definitivamente el mundo en que existimos.','','','/media/img/mazo/h_43_telefono.jpg','/media/img/plantilla/43_telefono.jpg','/media/img/galeria/g_43_telefono.jpg',8),(44,'doctor','La dramaturgia y la narrativa mantienen, al día de hoy, una deuda con la obra de Antón Chéjov (1860-1904). Poseedor de una perspicaz mirada, sus personajes e historias se cuentan entro los más elogiados, tanto por escritores como por críticos en general. Supo compaginar su arte con la carrera de medicina.  La referencia es tomada de una de sus narraciones breves, \"La mujer del boticario\".','','','/media/img/mazo/h_44_doctor.jpg','/media/img/plantilla/44_doctor.jpg','/media/img/galeria/g_44_doctor.jpg',6),(45,'gato','Ensayista, poeta y narrador, H. A. Murena (1923-1975) dedicó su vida a la exploración de las posibilidades de la palabra. Fue un activo colaborador de las revistas de su tiempo, así como de los diarios. Tradujo al español la obra de Habermas, Adorno, Marcuse, Horkheimer y Benjamin. La referencia es tomada de uno de sus relatos, El gato.','','','/media/img/mazo/h_45_gato.jpg','/media/img/plantilla/45_gato.jpg','/media/img/galeria/g_45_gato.jpg',4),(46,'sol','César Vallejo (1982-1938) tuvo una destacada influencia en la poesía de su tiempo y en la del resto de Hispanoamérica. Su primera obra la vincula con el modernismo; su siguiente poemario, Trilce, permanece una maravilla de las posibilidades de la palabra. Su último poemario, Poemas Humanos, publicado póstumamente, marca una primera distancia con Trilce y las vanguardias. En esta última etapa destaca una fuerte tendencia a los temas sociales, a la cotidianidad, aunque nunca desmerece la pericia y atención a la elaboración del verso.','','','/media/img/mazo/h_46_sol.jpg','/media/img/plantilla/46_sol.jpg','/media/img/galeria/g_46_sol.jpg',3),(47,'corona','La referencia es tomada de un conocido texto del poeta y sacerdote inglés George Herbert (1593-1633). Todavía inscrita dentro del Renacimiento inglés, su obra permanece vigente por su profundidad, al tiempo de estar escrita con sencillez y en términos accesibles y cotidianos.','','','/media/img/mazo/h_47_corona.jpg','/media/img/plantilla/47_corona.jpg','/media/img/galeria/g_47_corona.jpg',6),(48,'chalupa','Si se considera a Rubén Darío como el padre del modernismo, José Martí (1853-1895) fue modernista antes del modernismo. Periodista, poeta y político, Martí luchó incansablemente por la independencia de Cuba. Organizó y recolectó los fondos y materiales para comenzar con la lucha. Como poeta, su verso se caracteriza por un apego a la estética modernista, pasada por un tono íntimo, fresco y entrañable. La referencia es tomada del poemario Versos sencillos.','','','/media/img/mazo/h_48_chalupa.jpg','/media/img/plantilla/48_chalupa.jpg','/media/img/galeria/g_48_chalupa.jpg',7),(49,'niño','Johann Wolfgang von Goethe (1749-1832) es una figura monstruosa, por su importancia en la historia de Occidente y por su influencia, extendida a pensadores y autores de todas las artes y disciplinas. Filósofo, poeta, dramaturgo, novelista y diplomático, la obra de Goethe ha moldeado e inspirado la imaginación de millones a través del tiempo. La referencia es tomada de su inmortal obra, Fausto.','','','/media/img/mazo/h_49_nino.jpg','/media/img/plantilla/49_nino.jpg','/media/img/galeria/g_49_nino.jpg',4),(50,'pez','Popular refrán mexicano. Los refranes son construcciones lingüísticas que, de manera eficiente, consolidan cierta idea y se convierten en muestra de la sabiduría del pueblo. Este refran advierte de los peligros de usar los labios para hablar de más, no para besar, una mejor forma de morder el anzuelo.','','','/media/img/mazo/h_50_pez.jpg','/media/img/plantilla/50_pez.jpg','/media/img/galeria/g_50_pez.jpg',3),(51,'ciudad','Conocida línea de la canción Mi ciudad de Guadalupe Trigo (1941-1982), guitarrista y cantante mexicano. En sus canciones rinde homenaje a poetas como Pablo Neruda y Nicolás Guillén; también tiene colaboraciones con Jaime Sabines e Inocencio Burgos. Su entrañable obra aún se escucha en los medios y permanece todavía como referencia de la música mexicana de la segunda mitad del siglo XX.','','','/media/img/mazo/h_51_ciudad.jpg','/media/img/plantilla/51_ciudad.jpg','/media/img/galeria/g_51_ciudad.jpg',6),(52,'bailarina','Referencia tomada del poema del siglo XV español, Danza general de la muerte. En este poema puede observarse el desarrollo de muchos de los temas que mejor describían la cosmovisión del momento. En este poema, gente de todas las profesiones, edades y grupo social se presentan ante la muerte para exponer su caso; ella desestima sus argumentos. La muerte es presentada como un ente que no hace distinciones, que, de cierta manera, los iguala.','','','/media/img/mazo/h_52_bailarina.jpg','/media/img/plantilla/52_bailarina.jpg','/media/img/galeria/g_52_bailarina.jpg',9),(53,'beso','La referencia es tomada de la poesía temprana del famoso autor mexicano, Jaime Sabines (1926-1999). Su trabajo se caracteriza por el tono intimista, directo y poco rebuscado. Sabines siempre supo conectar con sus lectores en los más elementales niveles emocionales., como lo atestigua la popularidad de sus textos.','','','/media/img/mazo/h_53_beso.jpg','/media/img/plantilla/53_beso.jpg','/media/img/galeria/g_53_beso.jpg',4),(54,'rana','Juan José Arreola (1918-2001) representa una de las voces más emblemáticas de la narrativa mexicana del siglo XX. Pese a ser autodidacta, su erudición y dominio de muchos temas le valieron prestigio literario, como también en los círculos académicos. Su estilo lúdico pero simultáneamente lúcido recorre toda su obra. La referencia es tomada de su entrañable libro, Bestiario.','','','/media/img/mazo/h_54_rana.jpg','/media/img/plantilla/54_rana.jpg','/media/img/galeria/g_54_rana.jpg',4);
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
INSERT INTO `diminutivo` VALUES (1,'gallito',7,1),(2,'gallillo',8,1),(3,'gallico',7,1),(4,'gallete',7,1),(5,'gallín',6,1),(6,'galluco',7,1),(7,'diablito',8,2),(8,'diablillo',9,2),(9,'diablico',8,2),(10,'diablete',8,2),(11,'diablín',7,2),(12,'diabluco',8,2),(13,'damita',6,3),(14,'damilla',7,3),(15,'damica',6,3),(16,'dameta',6,3),(17,'damina',6,3),(18,'damuca',6,3),(19,'catrincito',10,4),(20,'catrincillo',11,4),(21,'catrincico',10,4),(22,'catrinete',9,4),(23,'catrinín',8,4),(24,'catrinuco',9,4),(25,'paragüitas',10,5),(26,'paragüillas',11,5),(27,'paraguasico',11,5),(28,'paraguasete',11,5),(29,'paragüín',8,5),(30,'paraguasuco',11,5),(31,'sirenita',8,6),(32,'sirenilla',9,6),(33,'sirenica',8,6),(34,'sireneta',8,6),(35,'sirenina',8,6),(36,'sirenuca',8,6),(37,'escalerita',10,7),(38,'escalerilla',11,7),(39,'escalerica',10,7),(40,'escalereta',10,7),(41,'escalerina',10,7),(42,'escaleruca',10,7),(43,'botellita',9,8),(44,'botellilla',10,8),(45,'botellica',9,8),(46,'botelleta',9,8),(47,'botellina',9,8),(48,'botelluca',9,8),(49,'baloncito',9,9),(50,'baloncillo',10,9),(51,'baloncico',9,9),(52,'baloncete',9,9),(53,'baloncino',9,9),(54,'balonuco',8,9),(55,'arbolito',8,10),(56,'arbolillo',9,10),(57,'arbolico',8,10),(58,'arbolete',8,10),(59,'arbolín',7,10),(60,'arboluco',8,10),(61,'maestrito',9,11),(62,'maestrillo',10,11),(63,'maestrico',9,11),(64,'maestrete',9,11),(65,'maestrín',8,11),(66,'maestruco',9,11),(67,'valientito',10,12),(68,'valientillo',11,12),(69,'valientico',10,12),(70,'valientete',10,12),(71,'valientín',9,12),(72,'valientuco',10,12),(73,'gorrito',7,13),(74,'gorrillo',8,13),(75,'gorrico',7,13),(76,'gorrete',7,13),(77,'gorrín',6,13),(78,'gorruco',7,13),(79,'muertecita',10,14),(80,'muertecilla',11,14),(81,'muertica',8,14),(82,'muerteta',8,14),(83,'muertina',8,14),(84,'muertuca',8,14),(85,'muertita',8,14),(86,'burocratito',11,15),(87,'burocratillo',12,15),(88,'burocratico',11,15),(89,'burocratete',11,15),(90,'burocratín',10,15),(91,'burocratuco',11,15),(92,'banderita',9,16),(93,'banderilla',10,16),(94,'banderica',9,16),(95,'bandereta',9,16),(96,'banderín',8,16),(97,'banderuca',9,16),(98,'metrito',7,17),(99,'metrillo',8,17),(100,'metrico',7,17),(101,'metrete',7,17),(102,'metrín',6,17),(103,'metruco',7,17),(104,'ladroncito',10,18),(105,'ladroncillo',11,18),(106,'ladroncico',10,18),(107,'ladroncete',10,18),(108,'ladroncín',9,18),(109,'ladronuco',9,18),(110,'padrecito',9,19),(111,'padrecillo',10,19),(112,'padrecico',9,19),(113,'padrecete',9,19),(114,'padrecín',8,19),(115,'padruco',7,19),(116,'pajarito',8,20),(117,'pajarillo',9,20),(118,'pajarico',8,20),(119,'pajarete',8,20),(120,'pajarín',7,20),(121,'pajaruco',8,20),(122,'manita',6,21),(123,'manilla',7,21),(124,'manica',6,21),(125,'maneta',6,21),(126,'manina',6,21),(127,'manuca',6,21),(128,'botita',6,22),(129,'botilla',7,22),(130,'botica',6,22),(131,'boteta',6,22),(132,'botín',5,22),(133,'botuca',6,22),(134,'botina',6,22),(135,'lunita',6,23),(136,'lunilla',7,23),(137,'lunica',6,23),(138,'luneta',6,23),(139,'lunina',6,23),(140,'lunuca',6,23),(141,'cotorrito',9,24),(142,'cotorrillo',10,24),(143,'cotorrico',9,24),(144,'cotorrete',9,24),(145,'cotorrín',8,24),(146,'cotorruco',9,24),(147,'borrachito',10,25),(148,'borrachillo',11,25),(149,'borrachico',10,25),(150,'borrachete',10,25),(151,'borrachín',9,25),(152,'borrachuco',10,25),(153,'poetita',7,26),(154,'poetilla',8,26),(155,'poetico',7,26),(156,'poetete',7,26),(157,'poetín',6,26),(158,'poetuco',7,26),(159,'corazoncito',11,27),(160,'coranzoncillo',13,27),(161,'corazoncico',11,27),(162,'corazoncete',11,27),(163,'corazonín',9,27),(164,'corazonuco',10,27),(165,'cigarrito',9,28),(166,'cigarrillo',10,28),(167,'cigarrico',9,28),(168,'cigarrete',9,28),(169,'cigarrín',8,28),(170,'cigarruco',9,28),(171,'tamborcito',10,29),(172,'tamborcillo',11,29),(173,'tamborcico',10,29),(174,'tamborcete',10,29),(175,'tamborín',8,29),(176,'tamboruco',9,29),(177,'madrecita',9,30),(178,'madrecilla',10,30),(179,'madrecica',9,30),(180,'madreceta',9,30),(181,'madrina',7,30),(182,'madresuca',9,30),(183,'atomito',7,31),(184,'atomillo',8,31),(185,'atomico',7,31),(186,'atomete',7,31),(187,'atomín',6,31),(188,'atomuco',7,31),(189,'musiquita',9,32),(190,'musiquilla',10,32),(191,'musiquica',9,32),(192,'musiqueta',9,32),(193,'musiquina',9,32),(194,'musicuca',8,32),(195,'perrito',7,33),(196,'perrillo',8,33),(197,'perrico',7,33),(198,'perrete',7,33),(199,'perrín',6,33),(200,'perruco',7,33),(201,'computadorcita',14,34),(202,'computadorcilla',15,34),(203,'computadorcica',14,34),(204,'computadorceta',14,34),(205,'computadorcina',14,34),(206,'computadoruca',13,34),(207,'librito',7,35),(208,'librillo',8,35),(209,'librico',7,35),(210,'librete',7,35),(211,'librín',6,35),(212,'lubruco',7,35),(213,'cieguito',8,36),(214,'cieguillo',9,36),(215,'cieguico',8,36),(216,'cieguete',8,36),(217,'cieguín',7,36),(218,'cierguco',8,36),(219,'mundito',7,37),(220,'mundillo',8,37),(221,'mundico',7,37),(222,'mundete',7,37),(223,'mundín',6,37),(224,'munduco',7,37),(225,'campito',7,38),(226,'campillo',8,38),(227,'campico',7,38),(228,'campete',7,38),(229,'campín',6,38),(230,'campuco',7,38),(231,'circulito',9,39),(232,'circulillo',10,39),(233,'circulico',9,39),(234,'circulete',9,39),(235,'circulín',8,39),(236,'circoluco',9,39),(237,'barquito',8,40),(238,'barquillo',9,40),(239,'barquico',8,40),(240,'barquecete',10,40),(241,'barquecín',9,40),(242,'barcuco',7,40),(243,'rosita',6,41),(244,'rosilla',7,41),(245,'rosica',6,41),(246,'roseta',6,41),(247,'rosina',6,41),(248,'rosuca',6,41),(249,'calaverita',10,42),(250,'calaverilla',11,42),(251,'calaverica',10,42),(252,'calavereta',10,42),(253,'calaverín',9,42),(254,'calaveruca',10,42),(255,'telefonito',10,43),(256,'telefonillo',11,43),(257,'telefonico',10,43),(258,'telefonete',10,43),(259,'telefonín',9,43),(260,'telefonuco',10,43),(261,'doctorcito',10,44),(262,'doctorcillo',11,44),(263,'doctorico',9,44),(264,'doctorete',9,44),(265,'doctorín',8,44),(266,'doctoruco',9,44),(267,'gatito',6,45),(268,'gatillo',7,45),(269,'gatico',6,45),(270,'gatete',6,45),(271,'gatín',5,45),(272,'gatuco',6,45),(273,'solecito',8,46),(274,'solecillo',9,46),(275,'solecico',8,46),(276,'solecete',8,46),(277,'solecín',7,46),(278,'solesuco',8,46),(279,'coronita',8,47),(280,'coronilla',9,47),(281,'coronica',8,47),(282,'coroneta',8,47),(283,'coronina',8,47),(284,'coronuca',8,47),(285,'chalupita',9,48),(286,'chalupilla',10,48),(287,'chalupica',9,48),(288,'chalupeta',9,48),(289,'chalupina',9,48),(290,'chalupuca',9,48),(291,'niñito',6,49),(292,'niñillo',7,49),(293,'niñico',6,49),(294,'niñete',6,49),(295,'niñín',5,49),(296,'niñuco',6,49),(297,'pececito',8,50),(298,'pececillo',9,50),(299,'pececio',7,50),(300,'pececete',8,50),(301,'pececín',7,50),(302,'pecesuco',8,50),(303,'ciudadcita',10,51),(304,'ciudadcilla',11,51),(305,'ciudadica',9,51),(306,'ciudadeta',9,51),(307,'ciudadina',9,51),(308,'ciudaduca',9,51),(309,'bailarinita',11,52),(310,'bailarincilla',13,52),(311,'bailarinica',11,52),(312,'bailarineta',11,52),(313,'bailarinina',11,52),(314,'bailariruca',11,52),(315,'besito',6,53),(316,'besillo',7,53),(317,'besico',6,53),(318,'besete',6,53),(319,'besín',5,53),(320,'besuco',6,53),(321,'ranita',6,54),(322,'ranilla',7,54),(323,'ranica',6,54),(324,'raneta',6,54),(325,'ranina',6,54),(326,'ranuca',6,54);
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
INSERT INTO `frase` VALUES (1,'Mi sueño temprano empieza y madrugo en la alborada.','/media/audio/01_diablo.ogg','/media/audio/01_diablo.mp3',1),(2,'Mejor reinar en el infierno que servir en el cielo.','/media/audio/02_diablo.ogg','/media/audio/02_diablo.mp3',2),(3,'¡Oh señora de mi alma, Dulcinea, flor de la fermosura, socorred a este vuestro caballero…','/media/audio/03_dama.ogg','/media/audio/03_dama.mp3',3),(4,'Lo que es intoxicante del mal gusto es el placer aristocrático de lo obsceno.','/media/audio/04_catrin.ogg','/media/audio/04_catrin.mp3',4),(5,'Sobre una mesa de disección, […] una máquina de coser y un paraguas.','/media/audio/05_paraguas.ogg','/media/audio/05_paraguas.mp3',5),(6,'Aquél que se acerca a ellas y oye su voz, ya no vuelve a ver a su esposa ni a sus hijos.','/media/audio/06_sirena.ogg','/media/audio/06_sirena.mp3',6),(7,'Id a traerme aquí la tapa de la entrada del cielo y su escalera, de nueve escalones, todo de miel.','/media/audio/07_escalera.ogg','/media/audio/07_escalera.mp3',7),(8,'Los vinos van a las playas,\\ntambién las olas por millones.','/media/audio/08_botella.ogg','/media/audio/08_botella.mp3',8),(9,'Dios es redondo.','/media/audio/09_balon.ogg','/media/audio/09_balon.mp3',9),(10,'Árbol que nace torcido, jamás su tronco endereza.','/media/audio/10_arbol.ogg','/media/audio/10_arbol.mp3',10),(11,'Educad a los niños y no será necesario castigar a los hombres.','/media/audio/11_maestro.ogg','/media/audio/11_maestro.mp3',11),(12,'Por la esquina del viejo barrio lo vi pasar\\nCon el tumbao\' que tienen los guapos al caminar.','/media/audio/12_valiente.ogg','/media/audio/12_valiente.mp3',12),(13,'La vida es como un gorro; unos se lo ponen, otros se lo quitan.','/media/audio/13_gorro.png','/media/audio/13_gorro.mp3',13),(14,'Este morir a gotas\\nMe sabe a miel.','/media/audio/14_muerte.ogg','/media/audio/14_muerte.mp3',14),(15,'No hay gente más susceptible que los empleados de esta clase de departamentos.','/media/audio/15_burocarta.ogg','/media/audio/15_burocarta.mp3',15),(16,'Como un sol entre céfiros y trinos.','/media/audio/16_bandera.ogg','/media/audio/16_bandera.mp3',16),(17,'¡Qué deferencia del camión\\nde mi compadre Jilemón!','/media/audio/17_metro.ogg','/media/audio/17_metro.mp3',17),(18,'Tómalo por el lado amable.','/media/audio/18_ladron.ogg','/media/audio/18_ladron.mp3',18),(19,'Vine a Comala porque me dijeron que acá vivía mi padre, un tal Pedro Páramo.','/media/audio/19_padre.ogg','/media/audio/19_padre.mp3',19),(20,'Ninguna ave se remonta demasiado alto si vuela con sus propias alas.','/media/audio/20_pajaro.ogg','/media/audio/20_pajaro.mp3',20),(21,'Mi mano no termina en los dedos.','/media/audio/21_mano.ogg','/media/audio/21_mano.mp3',21),(22,'Si quieres hacerte una idea del futuro, imagina una bota aplastando un rostro humano.','/media/audio/22_bota.ogg','/media/audio/22_bota.mp3',22),(23,'Y era la luna una gran pompa de jabón.','/media/audio/23_luna.ogg','/media/audio/23_luna.mp3',23),(24,'Quien es perico, dondequiera es verde.','/media/audio/24_cotorro.ogg','/media/audio/24_cotorro.mp3',24),(25,'Ayer También Tengo Ganas De Emborracharme','/media/audio/25_borracho.ogg','/media/audio/25_borracho.mp3',25),(26,'Por qué cantáis a la rosa, ¡oh Poetas!\\nHacedla florecer en el poema','/media/audio/26_poeta.ogg','/media/audio/26_poeta.mp3',26),(27,'El corazón. Yo lo usaba en los ojos','/media/audio/27_ccorazon.ogg','/media/audio/27_ccorazon.mp3',27),(28,'Sigo el humo como mi camino.','/media/audio/28_cigarro.ogg','/media/audio/28_cigarro.mp3',28),(29,'Ya retumba el tambor, sea el baile','/media/audio/29_tambor.ogg','/media/audio/29_tambor.mp3',29),(30,'Mi madre es la risa, la libertad, el verano.','/media/audio/30_madre.ogg','/media/audio/30_madre.mp3',30),(31,'En lo que respecta al átomo, el lenguaje puede usarse sólo como en la poesía.','/media/audio/31_atomo.ogg','/media/audio/31_atomo.mp3',31),(32,'El mundo no es sino música hecha realidad.','/media/audio/32_musica.ogg','/media/audio/32_musica.mp3',32),(33,'La totalidad de preguntas y respuestas se encuentran en el perro.','/media/audio/33_perro.ogg','/media/audio/33_perro.mp3',33),(34,'El monitor es inconmovible.','/media/audio/34_computadora.ogg','/media/audio/34_computadora.mp3',34),(35,'Tengo la memoria del libro pues es el único que todavía  se acuerda de mí.','/media/audio/35_libro.ogg','/media/audio/35_libro.mp3',35),(36,'Mirando la oscuridad que ven los ciegos','/media/audio/36_ciego.ogg','/media/audio/36_ciego.mp3',36),(37,'Con más mundo que el que descubrió Colón…','/media/audio/37_mundo.ogg','/media/audio/37_mundo.mp3',37),(38,'¿El campo, ese lugar donde los pollos se pasean crudos?','/media/audio/38_campo.ogg','/media/audio/38_campo.mp3',38),(39,'Vueltos a derecha por su dorso,\\nde aquel círculo eterno nos marchamos.','/media/audio/39_circulo.ogg','/media/audio/39_circulo.mp3',39),(40,'Partió de mí un barco\\nLlevándome','/media/audio/40_barco.ogg','/media/audio/40_barco.mp3',40),(41,'Aquí no suceden cosas\\nde mayor trascendencia que las rosas.','/media/audio/41_rosa.ogg','/media/audio/41_rosa.mp3',41),(42,'Esta es la calaverita\\nQue nos viene a saludar,\\nPorque por algo se llama\\nCalavera popular.','/media/audio/42_calavera.ogg','/media/audio/42_calavera.mp3',42),(43,'\"Señor Watson, venga aquí, necesito verlo.\"','/media/audio/43_telefono.ogg','/media/audio/43_telefono.mp3',43),(44,'Diga, doctor: ¿podrá querer a ese de la quijada?','/media/audio/44_doctor.ogg','/media/audio/44_doctor.mp3',44),(45,'El gato, entretanto, seguía tranquilo en su sillón.','/media/audio/45_gato.ogg','/media/audio/45_gato.mp3',45),(46,'Sé el día, pero el sol se me ha escapado.','/media/audio/46_sol.ogg','/media/audio/46_sol.mp3',46),(47,'La corona real no quita el dolor de cabeza.','/media/audio/47_corona.ogg','/media/audio/47_corona.mp3',47),(48,'En el bote iba remando,\\nPor el lago seductor.','/media/audio/48_chalupa.ogg','/media/audio/48_chalupa.mp3',48),(49,'¿Quién podrá gloriarse de dar a un niño su verdadero nombre?','/media/audio/49_nino.ogg','/media/audio/49_nino.mp3',49),(50,'Por la boca muere el pez','/media/audio/50_pez.ogg','/media/audio/50_pez.mp3',50),(51,'Mi ciudad es chinampa en lago escondido.','/media/audio/51_ciudad.ogg','/media/audio/51_ciudad.mp3',51),(52,'A esta mi danza traje de presente\\nEstas dos doncellas que veis hermosas.','/media/audio/52_bailarina.ogg','/media/audio/52_bailarina.mp3',52),(53,'¡Sácale con un beso\\nTodas las lágrimas!','/media/audio/53_beso.ogg','/media/audio/53_beso.mp3',53),(54,'Salta de vez en cuando, solo para comprobar su radical estático.','/media/audio/54_rana.ogg','/media/audio/54_rana.mp3',54);
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
INSERT INTO `galeria` VALUES (5,1,1),(1,1,2),(2,1,3),(1,1,4),(2,1,5),(5,1,5),(1,1,6),(2,1,7),(1,1,8),(2,1,9),(1,1,10),(5,1,10),(2,1,11),(1,1,12),(2,1,13),(1,1,14),(2,1,15),(5,1,15),(1,1,16),(2,1,17),(1,1,18),(2,1,19),(1,1,20),(5,1,20),(2,1,21),(3,1,22),(4,1,23),(3,1,24),(4,1,25),(5,1,25),(3,1,26),(4,1,27),(3,1,28),(4,1,29),(3,1,30),(5,1,30),(4,1,31),(3,1,32),(4,1,33),(3,1,34),(4,1,35),(5,1,35),(3,1,36),(4,1,37),(3,1,38),(4,1,39),(3,1,40),(5,1,40),(4,1,41),(5,1,45);
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
INSERT INTO `jugador` VALUES (1,1,6800),(2,1,6200),(3,1,8100),(4,1,14900),(5,1,13600),(6,1,0);
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
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `record`
--

LOCK TABLES `record` WRITE;
/*!40000 ALTER TABLE `record` DISABLE KEYS */;
INSERT INTO `record` VALUES (1,1100,'2013-06-01',1,1),(2,1200,'2013-06-01',2,1),(3,3000,'2013-06-01',3,2),(4,0,'2013-06-01',4,3),(5,1500,'2013-06-01',5,1),(6,2300,'2013-06-01',6,2),(7,1800,'2013-06-01',7,1),(8,0,'2013-06-01',8,3),(9,2100,'2013-06-01',9,2),(10,0,'2013-06-01',10,3),(11,3200,'2013-06-01',11,2),(12,1200,'2013-06-01',12,1),(13,0,'2013-06-01',13,3),(14,1100,'2013-06-01',14,1),(15,2600,'2013-06-01',15,2),(16,1900,'2013-06-01',16,1),(17,2500,'2013-06-01',17,2),(18,4000,'2013-06-01',18,2),(19,1500,'2013-06-01',19,1),(20,5000,'2013-06-01',20,2),(21,3200,'2013-06-01',21,2),(22,4400,'2013-06-01',22,2),(23,0,'2013-06-01',23,3),(24,0,'2013-06-01',24,3),(25,6000,'2013-06-01',25,2);
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
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `score`
--

LOCK TABLES `score` WRITE;
/*!40000 ALTER TABLE `score` DISABLE KEYS */;
INSERT INTO `score` VALUES (1,1,1,1,1,1),(2,1,1,1,1,1),(3,1,1,2,1,1),(4,2,3,2,1,1),(5,2,3,5,1,1),(6,2,1,1,2,1),(7,2,1,2,2,1),(8,2,1,1,2,1),(9,1,3,5,2,1),(10,1,3,5,2,1),(11,1,3,1,3,1),(12,1,3,2,3,1),(13,1,3,2,3,1),(14,1,3,3,3,1),(15,2,1,1,3,1),(16,2,1,3,4,1),(17,2,1,1,4,1),(18,2,1,2,4,1),(19,2,1,3,4,1),(20,1,3,3,4,1),(21,2,3,1,5,1),(22,2,1,1,5,1),(23,2,3,1,5,1),(24,2,1,5,5,1),(25,2,3,5,5,1);
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
) ENGINE=InnoDB AUTO_INCREMENT=660 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sinonimo`
--

LOCK TABLES `sinonimo` WRITE;
/*!40000 ALTER TABLE `sinonimo` DISABLE KEYS */;
INSERT INTO `sinonimo` VALUES (1,'cthulu',6,1),(2,'pollo',5,1),(3,'galliforme',10,1),(4,'gallipavo',9,1),(5,'desentono',9,1),(6,'desafinación',12,1),(7,'destemple',9,1),(8,'gallito',7,1),(9,'presumido',9,1),(10,'mandón',6,1),(11,'bravucón',8,1),(12,'fanfarrón',9,1),(13,'jactancioso',11,1),(14,'escupitajo',10,1),(15,'esputo',6,1),(16,'salivazo',8,1),(17,'gargajo',7,1),(18,'flema',5,1),(19,'cthulu',6,2),(20,'demonio',7,2),(21,'maligno',7,2),(22,'satanás',7,2),(23,'belcebú',7,2),(24,'lucifer',7,2),(25,'luzbel',6,2),(26,'chamuco',7,2),(27,'salinas',7,2),(28,'cthulu',6,3),(29,'señora',6,3),(30,'mujer',5,3),(31,'ama',3,3),(32,'dueña',5,3),(33,'cortesana',9,3),(34,'matrona',7,3),(35,'aristócrata',11,3),(36,'cthulu',6,4),(37,'dandi',5,4),(38,'presumido',9,4),(39,'coqueto',7,4),(40,'figurín',7,4),(41,'pisaverde',9,4),(42,'petimetre',9,4),(43,'guapo',5,4),(44,'señorito',8,4),(45,'elegante',8,4),(46,'lechuguino',10,4),(47,'cthulu',6,5),(48,'quitasol',8,5),(49,'sombrilla',9,5),(50,'parasol',7,5),(51,'cthulu',6,6),(52,'ninfa',5,6),(53,'nereida',7,6),(54,'náyade',6,6),(55,'ondina',6,6),(56,'oceánida',8,6),(57,'cthulu',6,7),(58,'escalinata',10,7),(59,'grada',5,7),(60,'gradería',8,7),(61,'escala',6,7),(62,'escalerilla',11,7),(63,'peldaños',8,7),(64,'escalones',9,7),(65,'cthulu',6,8),(66,'casco',5,8),(67,'ampolla',7,8),(68,'bombona',7,8),(69,'frasco',6,8),(70,'garrafa',7,8),(71,'redoma',6,8),(72,'damajuana',9,8),(73,'patona',6,8),(74,'cthulu',6,9),(75,'pelota',6,9),(76,'bola',4,9),(77,'esférico',8,9),(78,'cuero',5,9),(79,'recipiente',10,9),(80,'vasija',6,9),(81,'globo',5,9),(82,'cthulu',6,10),(83,'arbusto',7,10),(84,'eje',3,10),(85,'palo',4,10),(86,'asta',4,10),(87,'cigüeñal',8,10),(88,'barra',5,10),(89,'cthulu',6,11),(90,'profesor',8,11),(91,'educador',8,11),(92,'instructor',10,11),(93,'pedagogo',8,11),(94,'preceptor',9,11),(95,'mentor',6,11),(96,'ayo',3,11),(97,'avezado',7,11),(98,'experto',7,11),(99,'hábil',5,11),(100,'diestro',7,11),(101,'ducho',5,11),(102,'perito',6,11),(103,'compositor',10,11),(104,'músico',6,11),(105,'artista',7,11),(106,'cthulu',6,12),(107,'intrépido',9,12),(108,'fuerte',6,12),(109,'bravo',5,12),(110,'valeroso',8,12),(111,'atrevido',8,12),(112,'animoso',7,12),(113,'osado',5,12),(114,'impávido',8,12),(115,'heroico',7,12),(116,'denodado',8,12),(117,'audaz',5,12),(118,'compadrito',10,12),(119,'guapo',5,12),(120,'cthulu',6,13),(121,'birrete',7,13),(122,'boina',5,13),(123,'bonete',6,13),(124,'cofia',5,13),(125,'chichonera',10,13),(126,'montera',7,13),(127,'barretina',9,13),(128,'casco',5,13),(129,'gorra',5,13),(130,'sombrero',8,13),(131,'capucha',7,13),(132,'capuchón',8,13),(133,'condón',6,13),(134,'cthulu',6,14),(135,'flaca',5,14),(136,'tilíca',6,14),(137,'catrina',7,14),(138,'huesuda',7,14),(139,'fallecimiento',13,14),(140,'defunción',9,14),(141,'óbito',5,14),(142,'deceso',6,14),(143,'fin',3,14),(144,'trance',6,14),(145,'tránsito',8,14),(146,'asesinato',9,14),(147,'homicidio',9,14),(148,'crimen',6,14),(149,'atentado',8,14),(150,'degollina',9,14),(151,'martirio',8,14),(152,'ruina',5,14),(153,'caída',5,14),(154,'destrucción',11,14),(155,'aniquilamiento',14,14),(156,'desaparición',12,14),(157,'supresión',9,14),(158,'eliminación',11,14),(159,'erradicación',12,14),(160,'cthulu',6,15),(161,'funcionario',11,15),(162,'administrativo',14,15),(163,'oficial',7,15),(164,'cthulu',6,16),(165,'enseña',6,16),(166,'estandarte',10,16),(167,'emblema',7,16),(168,'banderín',8,16),(169,'banderola',9,16),(170,'blasón',6,16),(171,'confalón',8,16),(172,'distintivo',10,16),(173,'divisa',6,16),(174,'gallardete',10,16),(175,'guión',5,16),(176,'oriflama',8,16),(177,'pabellón',8,16),(178,'pendón',6,16),(179,'símbolo',7,16),(180,'señal',5,16),(181,'lábaro',6,16),(182,'cthulu',6,17),(183,'tren',4,17),(184,'convoy',6,17),(185,'subterráneo',11,17),(186,'metropolitano',13,17),(187,'medida',6,17),(188,'patrón',6,17),(189,'cthulu',6,18),(190,'caco',4,18),(191,'carterista',10,18),(192,'ratero',6,18),(193,'cleptómano',10,18),(194,'descuidero',10,18),(195,'chorizo',7,18),(196,'mangante',8,18),(197,'saqueador',9,18),(198,'timador',7,18),(199,'bandido',7,18),(200,'atracador',9,18),(201,'maleante',8,18),(202,'cuatrero',8,18),(203,'usurero',7,18),(204,'estafador',9,18),(205,'carero',6,18),(206,'chaca',5,18),(207,'chacal ',7,18),(208,'caquito',7,18),(209,'cthulu',6,19),(210,'papá',4,19),(211,'progenitor',10,19),(212,'padrazo',7,19),(213,'ascendiente',11,19),(214,'procreador',10,19),(215,'autor',5,19),(216,'creador',7,19),(217,'inventor',8,19),(218,'generador',9,19),(219,'productor',9,19),(220,'fraile',6,19),(221,'religioso',9,19),(222,'sacerdote',9,19),(223,'clérigo',7,19),(224,'tonsurado',9,19),(225,'perro',5,19),(226,'chido',5,19),(227,'cthulu',6,20),(228,'ave',3,20),(229,'avecilla',8,20),(230,'volátil',7,20),(231,'pajarillo',9,20),(232,'astuto',6,20),(233,'ladino',6,20),(234,'taimado',7,20),(235,'zorro',5,20),(236,'cuco',4,20),(237,'pillo',5,20),(238,'cthulu',6,21),(239,'garra',5,21),(240,'zarpa',5,21),(241,'palma',5,21),(242,'dorso',5,21),(243,'lado',4,21),(244,'costado',7,21),(245,'flanco',6,21),(246,'banda',5,21),(247,'ala',3,21),(248,'dirección',9,21),(249,'orientación',11,21),(250,'sentido',7,21),(251,'baño',4,21),(252,'capa',4,21),(253,'pintura',7,21),(254,'pasada',6,21),(255,'revestimento',12,21),(256,'recubrimiento',13,21),(257,'pericicia',9,21),(258,'habilidad',9,21),(259,'facilidad',9,21),(260,'destreza',8,21),(261,'maña',4,21),(262,'tacto',5,21),(263,'turno',5,21),(264,'jugada',6,21),(265,'tirada',6,21),(266,'lance',5,21),(267,'partido',7,21),(268,'partida',7,21),(269,'poder',5,21),(270,'mando',5,21),(271,'influencia',10,21),(272,'influjo',7,21),(273,'ascendiente',11,21),(274,'privanza',8,21),(275,'amistad',7,21),(276,'ayuda',5,21),(277,'auxilio',7,21),(278,'asistencia',10,21),(279,'tunda',5,21),(280,'somanta',7,21),(281,'castigo',7,21),(282,'reprensión',10,21),(283,'cthulu',6,22),(284,'borceguí',8,22),(285,'boto',4,22),(286,'escarpín',8,22),(287,'botín',5,22),(288,'odre',4,22),(289,'pellejo',7,22),(290,'saltar',6,22),(291,'brincar',7,22),(292,'rebotar',7,22),(293,'respingar',9,22),(294,'piruetar',8,22),(295,'alzarse',7,22),(296,'lanzar',6,22),(297,'impulsar',8,22),(298,'echar',5,22),(299,'arrojar',7,22),(300,'despedir',8,22),(301,'tirar',5,22),(302,'expulsar',8,22),(303,'cthulu',6,23),(304,'satélite',8,23),(305,'astro',5,23),(306,'espejo',6,23),(307,'cristalera',10,23),(308,'vidriera',8,23),(309,'escaparate',10,23),(310,'cthulu',6,24),(311,'cacatúa',7,24),(312,'papagayo',8,24),(313,'loro',4,24),(314,'guacamayo',9,24),(315,'perico',6,24),(316,'cotorra',7,24),(317,'charlatán',9,24),(318,'parlanchín',10,24),(319,'gárrulo',7,24),(320,'hablador',8,24),(321,'sacamuelas',10,24),(322,'cthulu',6,25),(323,'ebrio',5,25),(324,'embriagado',10,25),(325,'bebido',6,25),(326,'beodo',5,25),(327,'alcoholizado',12,25),(328,'mamado',6,25),(329,'achispado',9,25),(330,'amonado',7,25),(331,'ajumado',7,25),(332,'ahumado',7,25),(333,'calamocano',10,25),(334,'dipsómano',9,25),(335,'alumbrado',9,25),(336,'curda',5,25),(337,'mona',4,25),(338,'colgado',7,25),(339,'pedo',4,25),(340,'cthulu',6,26),(341,'lírico',6,26),(342,'trovador',8,26),(343,'versificador',12,26),(344,'coplista',8,26),(345,'juglar',6,26),(346,'rapsoda',7,26),(347,'rimador',7,26),(348,'aedo',4,26),(349,'bardo',5,26),(350,'vate',4,26),(351,'cthulu',6,27),(352,'vícera',6,27),(353,'órgano',6,27),(354,'entrañas',8,27),(355,'entretelas',10,27),(356,'amor',4,27),(357,'sentimiento',11,27),(358,'cariño',6,27),(359,'sensibilidad',12,27),(360,'caridad',7,27),(361,'cariño',6,27),(362,'centro',6,27),(363,'núcleo',6,27),(364,'interior',8,27),(365,'meollo',6,27),(366,'médula',6,27),(367,'cthulu',6,28),(368,'puro',4,28),(369,'habano',6,28),(370,'veguero',7,28),(371,'tagarnina',9,28),(372,'cigarrillo',10,28),(373,'pitillo',7,28),(374,'tabaco',6,28),(375,'cthulu',6,29),(376,'tamboril',8,29),(377,'caja',4,29),(378,'timbal',6,29),(379,'bombo',5,29),(380,'pandero',7,29),(381,'rodillo',7,29),(382,'rollo',5,29),(383,'cilindro',8,29),(384,'cthulu',6,30),(385,'mamá',4,30),(386,'religiosa',9,30),(387,'hermana',7,30),(388,'sor',3,30),(389,'superiora',9,30),(390,'lecho',5,30),(391,'cauce',5,30),(392,'acequia',7,30),(393,'álveo',5,30),(394,'origen',6,30),(395,'motivo',6,30),(396,'causa',5,30),(397,'fundamento',10,30),(398,'poso',4,30),(399,'sedimento',9,30),(400,'cthulu',6,31),(401,'partícula',9,31),(402,'corpúsculo',10,31),(403,'insignificancia',15,31),(404,'pequeñez',8,31),(405,'migaja',6,31),(406,'pizca',5,31),(407,'brizna',6,31),(408,'traza',5,31),(409,'cthulu',6,32),(410,'melodía',7,32),(411,'armonía',7,32),(412,'canto',5,32),(413,'ritmo',5,32),(414,'tonalidad',9,32),(415,'polifonía',9,32),(416,'filarmonía',10,32),(417,'solfeo',6,32),(418,'cthulu',6,33),(419,'can ',4,33),(420,'chucho',6,33),(421,'tuso',4,33),(422,'cachorro',8,33),(423,'mephistófeles',13,33),(424,'difícil',7,33),(425,'chido',5,33),(426,'arduo',5,33),(427,'complejo',8,33),(428,'duro',4,33),(429,'complicado',10,33),(430,'cthulu',6,34),(431,'ordenador',9,34),(432,'calduladora',11,34),(433,'procesador',10,34),(434,'cerebro electrónico',19,34),(435,'cthulu',6,35),(436,'ejemplar',8,35),(437,'tomo',4,35),(438,'volumen',7,35),(439,'obra',4,35),(440,'texto',5,35),(441,'manual',6,35),(442,'compendio',9,35),(443,'vademécum',9,35),(444,'cthulu',6,36),(445,'invidente',9,36),(446,'cegado',6,36),(447,'obturado',8,36),(448,'obstruido',9,36),(449,'taponado',8,36),(450,'ofuscado',8,36),(451,'obcecado',8,36),(452,'alucinado',9,36),(453,'deslumbrado',11,36),(454,'empecinado',10,36),(455,'empeñado',8,36),(456,'lleno',5,36),(457,'harto',5,36),(458,'ahíto',5,36),(459,'atiborrado',10,36),(460,'cthulu',6,37),(461,'tierra',6,37),(462,'globo',5,37),(463,'humanidad',9,37),(464,'planeta',7,37),(465,'orbe',4,37),(466,'siglo',5,37),(467,'universo',8,37),(468,'cosmos',6,37),(469,'creación',8,37),(470,'sociedad ',9,37),(471,'experiencia',11,37),(472,'cthulu',6,38),(473,'terreno',7,38),(474,'terruño',7,38),(475,'campiña',7,38),(476,'labrantío',9,38),(477,'pradera',7,38),(478,'pradería',8,38),(479,'prado',5,38),(480,'sembrado',8,38),(481,'dehesa',6,38),(482,'huerta',6,38),(483,'predio',6,38),(484,'hacienda',8,38),(485,'finca',5,38),(486,'propiedad',9,38),(487,'cthulu',6,39),(488,'circunferencia',14,39),(489,'aro',3,39),(490,'redondel',8,39),(491,'órbita',6,39),(492,'disco',5,39),(493,'redondez',8,39),(494,'rueda',5,39),(495,'cerco',5,39),(496,'corro',5,39),(497,'contorno',8,39),(498,'perímetro',9,39),(499,'circuito',8,39),(500,'ateneo',6,39),(501,'casino',6,39),(502,'sociedad',8,39),(503,'club',4,39),(504,'curvado',7,39),(505,'curvo',5,39),(506,'radial',6,39),(507,'lenticular',10,39),(508,'cthulu',6,40),(509,'nave',4,40),(510,'navío',5,40),(511,'bajel',5,40),(512,'nao',3,40),(513,'buque',5,40),(514,'embarcación',11,40),(515,'velero',6,40),(516,'yate',4,40),(517,'paquebote',9,40),(518,'cthulu',6,41),(519,'flor',4,41),(520,'capullo',7,41),(521,'cotón',5,41),(522,'rosado',6,41),(523,'sonrosado',9,41),(524,'encarnado',9,41),(525,'cthulu',6,42),(526,'cráneo',6,42),(527,'sesera',6,42),(528,'cabeza',6,42),(529,'casco',5,42),(530,'rima',4,42),(531,'epitafio',8,42),(532,'cthulu',6,43),(533,'receptor',8,43),(534,'reproductor',11,43),(535,'auricular',9,43),(536,'aparato',7,43),(537,'celular',7,43),(538,'móvil',5,43),(539,'cthulu',6,44),(540,'medíco',6,44),(541,'matasanos',9,44),(542,'cirujano',8,44),(543,'graduado',8,44),(544,'catedrático',11,44),(545,'cirujano',8,44),(546,'cthulu',6,45),(547,'micho',5,45),(548,'minino',6,45),(549,'micifuz',7,45),(550,'morrongo',8,45),(551,'morroño',7,45),(552,'elevador',8,45),(553,'palanca',7,45),(554,'cric',4,45),(555,'sagaz',5,45),(556,'astuto',6,45),(557,'traicionero',11,45),(558,'pícaro',6,45),(559,'naco',4,45),(560,'cthulu',6,46),(561,'astro',5,46),(562,'día',3,46),(563,'estrella',8,46),(564,'luz',3,46),(565,'cthulu',6,47),(566,'diadema',7,47),(567,'tiara',5,47),(568,'guirnalda',9,47),(569,'blasón',6,47),(570,'laureola',8,47),(571,'nimbo',5,47),(572,'halo',4,47),(573,'aureola',7,47),(574,'aro',3,47),(575,'cerco',5,47),(576,'premio',6,47),(577,'galardón',8,47),(578,'recompensa',10,47),(579,'reino',5,47),(580,'monarquía',9,47),(581,'imperio',7,47),(582,'cima',4,47),(583,'cúspide',7,47),(584,'investir',8,47),(585,'ceñir',5,47),(586,'aureolar',8,47),(587,'entronizar',10,47),(588,'proclamar',9,47),(589,'terminar',8,47),(590,'acabar',6,47),(591,'culminar',8,47),(592,'rematar',7,47),(593,'consumar',8,47),(594,'finalizar',9,47),(595,'alcanzar',8,47),(596,'cthulu',6,48),(597,'canoa',5,48),(598,'lancha',6,48),(599,'bote',4,48),(600,'góndola',7,48),(601,'trajinera',9,48),(602,'cthulu',6,49),(603,'bebé ',5,49),(604,'nene',4,49),(605,'rorro',5,49),(606,'crío',4,49),(607,'criatura',8,49),(608,'peque',5,49),(609,'chico',5,49),(610,'churumbel',9,49),(611,'hijo',4,49),(612,'mocoso',6,49),(613,'rapaz',5,49),(614,'chiquillo',9,49),(615,'infante',7,49),(616,'morro',5,49),(617,'chamaco',7,49),(618,'chavo',5,49),(619,'cthulu',6,50),(620,'pescado',7,50),(621,'brea',4,50),(622,'resina',6,50),(623,'capturado',9,50),(624,'atrapado',8,50),(625,'cazado',6,50),(626,'agarrado',8,50),(627,'cogido',6,50),(628,'pillado',7,50),(629,'apresado',8,50),(630,'sorprendido',11,50),(631,'descubierto',11,50),(632,'cthulu',6,51),(633,'urbe',4,51),(634,'capital',7,51),(635,'metrópoli',9,51),(636,'villa',5,51),(637,'población',9,51),(638,'localidad',9,51),(639,'cthulu',6,52),(640,'danzarina',9,52),(641,'danzadora',9,52),(642,'saltarina',9,52),(643,'almea',5,52),(644,'bayadera',8,52),(645,'chaconera',9,52),(646,'danzante',8,52),(647,'zarabandista',12,52),(648,'cthulu',6,53),(649,'ósculo',6,53),(650,'besuqueo',8,53),(651,'carantoña',9,53),(652,'mimo',4,53),(653,'caricia',7,53),(654,'contacto',8,53),(655,'cthulu',6,54),(656,'sapo ',5,54),(657,'sapillo',7,54),(658,'renacuajo',9,54),(659,'batracio',8,54);
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
INSERT INTO `trofeo` VALUES (1,'Gigante en el recreo','','','Alcancé 1000 puntos en una partida de la modalidad Juego Libre en el nivel Básico','Vine, vi, conquisté',1),(2,'Con los ojos cerrados','/media/img/trofeo/gn_ojoscerrados.png','/media/img/trofeo/icn_ojoscerrados.png','Alcancé 3500 puntos en una partida de la modalidad Juego Libre en el nivel Avanzado','Y no fue casualidad',1),(3,'Chiquito pero...','/media/img/trofeo/gn_chiquito.png','/media/img/trofeo/icn_chiquito.png','Alcancé 7500 puntos en una partida de la modalidad Diminutivos','Son aquellas pequeñas cosas',1),(4,'De colores','/media/img/trofeo/gn_decolores.png','/media/img/trofeo/icn_decolores.png','Alcancé 15000 puntos en una partida de la modalidad Adjetivos','Los ojos se me fueron tras una morena que pasó',1),(5,'Triunfo al recuerdo','/media/img/trofeo/gn_recuerdo.png','/media/img/trofeo/icn_recuerdo.png','Alcancé 21000 puntos en una partida de la modalidad Sinónimos','La memoria disminuye si no se la ejercita',1),(6,'Precisión quirúrgica','/media/img/trofeo/gn_precision.png','/media/img/trofeo/icn_precision.png','Completé una partida sin errores','Conocer es resolver',1),(7,'Aprendiz de la lotería','/media/img/trofeo/gn_aprendiz.PNG','/media/img/trofeo/icn_aprendiz.PNG','Acumulé 10 partidas ganadas','Así que de esto se trata',2),(8,'Veterano de la lotería','/media/img/trofeo/gn_veterano.PNG','/media/img/trofeo/icn_veterano.PNG','Acumulé 25 partidas ganadas','Lo he visto todo',2),(9,'Experto de la lotería','','','Acumulé 50 partidas ganadas','Bodas de oro',2),(10,'Maestro de la lotería','','','Acumulé 75 partidas ganadas','Ningún misterio se me escapa',2),(11,'Lotería Wizard','','','Acumulé 100 partidas ganadas','El primero de los epígonos',2),(12,'Tanteando las aguas','/media/img/trofeo/gn_tanteandolasaguas.png','/media/img/trofeo/icn_tanteandolasaguas.png','Gané una partida en la modalidad Juego Libre en nivel Básico','¿Qué gané?',3),(13,'Marinero de agua dulce','/media/img/trofeo/gn_marinerodeaguadulce.png','/media/img/trofeo/icn_marinerodeaguadulce.png','Gané una partida en la modalidad Juego Libre en nivel Avanzado','El día precedente enseña al que sigue',3),(14,'Marinero curtido','/media/img/trofeo/gn_marinerocurtido.png','/media/img/trofeo/icn_marinerocurtido.png','Gané una partida en la modalidad Diminutivos','Se hace camino en la mar',3),(15,'Buzo','/media/img/trofeo/gn_buzo.png','/media/img/trofeo/icn_buzo.png','Gané una partida en la modalidad Adjetivos','Quién fuera el batiscafo de tu abismo',3),(16,'Capitán','/media/img/trofeo/gn_capitan.png','/media/img/trofeo/icn_capitan.png','Gané una partida en la modalidad Sinónimos','Yo no soy marinero',3),(17,'Lobo de mar','/media/img/trofeo/gn_lobodemar.png','/media/img/trofeo/icn_lobodemar.png','Gané una partida en todas las modalidades','Antes de recorrer mi camino yo era mi camino',3),(18,'O fortuna','','','Gané una partida con la bonificación máxima por suerte','La suerte juega con cartas sin marcar',3),(19,'El corazón de las tinieblas','/media/img/trofeo/gn_corazon.png','/media/img/trofeo/icn_corazon.png','','Aquél que no será nombrado',4),(20,'Ph\'nglui mglw\'nafh Cthulhu R\'lyeh wgah\'nagl fhtagn','/media/img/trofeo/gn_cthulhu.png','/media/img/trofeo/icn_cthulhu.png','','En su casa de R\'lyeh el difunto Cthulhu aguarda soñando',4),(21,'Coleccionista','/media/img/trofeo/gn_coleccionista.png','/media/img/trofeo/icn_coleccionista.png','Acumulé 18 cartas en mi galería','Nadie tiene lo que no se merece',5),(22,'Galerista','/media/img/trofeo/gn_galerista.png','/media/img/trofeo/icn_galerista.png','Acumulé 33 cartas en mi galería','Hay afectos de tan delicada honestidad',5),(23,'Museógrafo','/media/img/trofeo/gn_museografo.png','/media/img/trofeo/icn_museografo.png','Acumulé 54 cartas en mi galería','El lenguaje no es el aya sino la madre del pensamiento',5),(24,'Leyenda','/media/img/trofeo/gn_leyenda.png','/media/img/trofeo/icn_leyenda.png','He obtenido todos los trofeos disponibles','Vine, vi, conquisté',5);
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
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usuario`
--

LOCK TABLES `usuario` WRITE;
/*!40000 ALTER TABLE `usuario` DISABLE KEYS */;
INSERT INTO `usuario` VALUES (1,'anjudark89','Flor Nallely','Flores','Vicente','M',22,'anjudark@xanum.uam.mx','123456',NULL,NULL,1,2,1,NULL,1,'51f824440a000',6),(2,'luisa.207310034','Luisa Maria','Gomez','Leyva','M',23,'luisa.207310034@xanum.uam.mx','123456',NULL,NULL,3,2,1,NULL,1,'51f82452e4085',5),(3,'jcesarcbi','Julio Cesar','Padilla','Dorantes','H',28,'jcesarcbi@xanum.uam.mx','123456',NULL,NULL,2,2,1,NULL,1,'51f8245ed0b24',9),(4,'guillermotorres','Guillermo','Torres','Lopez','H',29,'guillermotorres@xanum.uam.mx','123456',NULL,NULL,2,2,1,NULL,1,'51f82467002fe',7),(5,'jezrelmx1304','Efren','Valdez','Jasso','H',30,'jezrelmx1304@xanum.uam.mx','123456',NULL,NULL,4,2,1,NULL,1,'51f82470ceef0',10),(6,'virtu@mi','Coordinación','Educación','Virtual','H',30,'ludico@virtuami.izt.uam.mx','123456',NULL,NULL,4,2,1,NULL,1,'5220a414ab0b3',10);
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

-- Dump completed on 2013-09-09 23:38:13
