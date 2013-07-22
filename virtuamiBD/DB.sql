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
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `adjetivo`
--

LOCK TABLES `adjetivo` WRITE;
/*!40000 ALTER TABLE `adjetivo` DISABLE KEYS */;
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `carta`
--

LOCK TABLES `carta` WRITE;
/*!40000 ALTER TABLE `carta` DISABLE KEYS */;
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `diminutivo`
--

LOCK TABLES `diminutivo` WRITE;
/*!40000 ALTER TABLE `diminutivo` DISABLE KEYS */;
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `division`
--

LOCK TABLES `division` WRITE;
/*!40000 ALTER TABLE `division` DISABLE KEYS */;
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `estPartida`
--

LOCK TABLES `estPartida` WRITE;
/*!40000 ALTER TABLE `estPartida` DISABLE KEYS */;
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gradoActivo`
--

LOCK TABLES `gradoActivo` WRITE;
/*!40000 ALTER TABLE `gradoActivo` DISABLE KEYS */;
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gradoPosgrado`
--

LOCK TABLES `gradoPosgrado` WRITE;
/*!40000 ALTER TABLE `gradoPosgrado` DISABLE KEYS */;
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `juego`
--

LOCK TABLES `juego` WRITE;
/*!40000 ALTER TABLE `juego` DISABLE KEYS */;
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `modalidad`
--

LOCK TABLES `modalidad` WRITE;
/*!40000 ALTER TABLE `modalidad` DISABLE KEYS */;
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `nivel`
--

LOCK TABLES `nivel` WRITE;
/*!40000 ALTER TABLE `nivel` DISABLE KEYS */;
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `partida`
--

LOCK TABLES `partida` WRITE;
/*!40000 ALTER TABLE `partida` DISABLE KEYS */;
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sinonimo`
--

LOCK TABLES `sinonimo` WRITE;
/*!40000 ALTER TABLE `sinonimo` DISABLE KEYS */;
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tipoTrofeo`
--

LOCK TABLES `tipoTrofeo` WRITE;
/*!40000 ALTER TABLE `tipoTrofeo` DISABLE KEYS */;
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tipoUsuario`
--

LOCK TABLES `tipoUsuario` WRITE;
/*!40000 ALTER TABLE `tipoUsuario` DISABLE KEYS */;
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `trofeo`
--

LOCK TABLES `trofeo` WRITE;
/*!40000 ALTER TABLE `trofeo` DISABLE KEYS */;
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

-- Dump completed on 2013-07-04 17:45:57
