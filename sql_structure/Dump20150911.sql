CREATE DATABASE  IF NOT EXISTS `padron_beneficiarios` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `padron_beneficiarios`;
-- MySQL dump 10.13  Distrib 5.5.44, for debian-linux-gnu (x86_64)
--
-- Host: 127.0.0.1    Database: padron_beneficiarios
-- ------------------------------------------------------
-- Server version	5.5.44-0ubuntu0.14.04.1

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
-- Table structure for table `acciones_historial`
--

DROP TABLE IF EXISTS `acciones_historial`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `acciones_historial` (
  `id_accion` int(11) NOT NULL AUTO_INCREMENT,
  `accion_historial` varchar(128) NOT NULL,
  PRIMARY KEY (`id_accion`),
  KEY `id_accion` (`id_accion`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `apoyos_A`
--

DROP TABLE IF EXISTS `apoyos_A`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `apoyos_A` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Identificador del registro',
  `curp` char(18) NOT NULL COMMENT 'curp del beneficiario',
  `dependencia` tinyint(4) NOT NULL COMMENT 'Dependencia o entidad ejecutora del programa',
  `programa` tinyint(4) NOT NULL DEFAULT '66' COMMENT 'Programa por el cual se otorga el beneficio',
  `subprograma` smallint(6) NOT NULL DEFAULT '364' COMMENT 'Determinar el subprograma, que serán los programas alineados a la clasificación del CONAC',
  `clave_presupuestal` varchar(45) DEFAULT '0' COMMENT 'Clave presupuestal',
  `tipo_apoyo` tinyint(4) NOT NULL COMMENT 'Prestación de servicio, subsidio, transferencia monetaria, apoyo en especie, capacitación o construcción y operación de infraestructura.',
  `caracteristica_apoyo` tinyint(4) DEFAULT '0' COMMENT 'Determinar la característica del apoyo, si es bicicleta, despensa, techo firme, lentes, beca, etc.',
  `importe_apoyo` varchar(12) DEFAULT '0' COMMENT 'Determinar el valor monetario del tipo de apoyo',
  `no_apoyos` int(11) DEFAULT '0' COMMENT 'Número de apoyos recibidos por programa',
  `fecha_apoyo` datetime NOT NULL COMMENT 'Fecha del(los) apoyo(s) recibido(s)',
  `periodicidad` tinyint(4) NOT NULL COMMENT 'Periodicidad de la entrega del apoyo',
  `origen_recurso` tinyint(4) DEFAULT '0' COMMENT 'Origen del recurso',
  PRIMARY KEY (`id`),
  KEY `curp` (`curp`),
  KEY `dependencia_idx` (`dependencia`),
  KEY `programa_idx` (`programa`),
  KEY `subprograma_idx` (`subprograma`),
  KEY `tipo_apoyo_idx` (`tipo_apoyo`),
  KEY `periodicidad_idx` (`periodicidad`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `apoyos_B`
--

DROP TABLE IF EXISTS `apoyos_B`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `apoyos_B` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Identificador del registro',
  `curp` char(18) NOT NULL COMMENT 'curp del beneficiario',
  `dependencia` tinyint(4) NOT NULL COMMENT 'Dependencia o entidad ejecutora del programa',
  `programa` tinyint(4) NOT NULL DEFAULT '66' COMMENT 'Programa por el cual se otorga el beneficio',
  `subprograma` smallint(6) NOT NULL DEFAULT '364' COMMENT 'Determinar el subprograma, que serán los programas alineados a la clasificación del CONAC',
  `clave_presupuestal` varchar(45) DEFAULT '0' COMMENT 'Clave presupuestal',
  `tipo_apoyo` tinyint(4) NOT NULL COMMENT 'Prestación de servicio, subsidio, transferencia monetaria, apoyo en especie, capacitación o construcción y operación de infraestructura.',
  `caracteristica_apoyo` tinyint(4) DEFAULT '0' COMMENT 'Determinar la característica del apoyo, si es bicicleta, despensa, techo firme, lentes, beca, etc.',
  `importe_apoyo` varchar(12) DEFAULT '0' COMMENT 'Determinar el valor monetario del tipo de apoyo',
  `no_apoyos` int(11) DEFAULT '0' COMMENT 'Número de apoyos recibidos por programa',
  `fecha_apoyo` datetime NOT NULL COMMENT 'Fecha del(los) apoyo(s) recibido(s)',
  `periodicidad` tinyint(4) NOT NULL COMMENT 'Periodicidad de la entrega del apoyo',
  `origen_recurso` tinyint(4) DEFAULT '0' COMMENT 'Origen del recurso',
  PRIMARY KEY (`id`),
  KEY `curp` (`curp`),
  KEY `dependencia_idx` (`dependencia`),
  KEY `programa_idx` (`programa`),
  KEY `subprograma_idx` (`subprograma`),
  KEY `tipo_apoyo_idx` (`tipo_apoyo`),
  KEY `periodicidad_idx` (`periodicidad`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `apoyos_C`
--

DROP TABLE IF EXISTS `apoyos_C`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `apoyos_C` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Identificador del registro',
  `curp` char(18) NOT NULL COMMENT 'curp del beneficiario',
  `dependencia` tinyint(4) NOT NULL COMMENT 'Dependencia o entidad ejecutora del programa',
  `programa` tinyint(4) NOT NULL DEFAULT '66' COMMENT 'Programa por el cual se otorga el beneficio',
  `subprograma` smallint(6) NOT NULL DEFAULT '364' COMMENT 'Determinar el subprograma, que serán los programas alineados a la clasificación del CONAC',
  `clave_presupuestal` varchar(45) DEFAULT '0' COMMENT 'Clave presupuestal',
  `tipo_apoyo` tinyint(4) NOT NULL COMMENT 'Prestación de servicio, subsidio, transferencia monetaria, apoyo en especie, capacitación o construcción y operación de infraestructura.',
  `caracteristica_apoyo` tinyint(4) DEFAULT '0' COMMENT 'Determinar la característica del apoyo, si es bicicleta, despensa, techo firme, lentes, beca, etc.',
  `importe_apoyo` varchar(12) DEFAULT '0' COMMENT 'Determinar el valor monetario del tipo de apoyo',
  `no_apoyos` int(11) DEFAULT '0' COMMENT 'Número de apoyos recibidos por programa',
  `fecha_apoyo` datetime NOT NULL COMMENT 'Fecha del(los) apoyo(s) recibido(s)',
  `periodicidad` tinyint(4) NOT NULL COMMENT 'Periodicidad de la entrega del apoyo',
  `origen_recurso` tinyint(4) DEFAULT '0' COMMENT 'Origen del recurso',
  PRIMARY KEY (`id`),
  KEY `curp` (`curp`),
  KEY `dependencia_idx` (`dependencia`),
  KEY `programa_idx` (`programa`),
  KEY `subprograma_idx` (`subprograma`),
  KEY `tipo_apoyo_idx` (`tipo_apoyo`),
  KEY `periodicidad_idx` (`periodicidad`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `apoyos_D`
--

DROP TABLE IF EXISTS `apoyos_D`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `apoyos_D` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Identificador del registro',
  `curp` char(18) NOT NULL COMMENT 'curp del beneficiario',
  `dependencia` tinyint(4) NOT NULL COMMENT 'Dependencia o entidad ejecutora del programa',
  `programa` tinyint(4) NOT NULL DEFAULT '66' COMMENT 'Programa por el cual se otorga el beneficio',
  `subprograma` smallint(6) NOT NULL DEFAULT '364' COMMENT 'Determinar el subprograma, que serán los programas alineados a la clasificación del CONAC',
  `clave_presupuestal` varchar(45) DEFAULT '0' COMMENT 'Clave presupuestal',
  `tipo_apoyo` tinyint(4) NOT NULL COMMENT 'Prestación de servicio, subsidio, transferencia monetaria, apoyo en especie, capacitación o construcción y operación de infraestructura.',
  `caracteristica_apoyo` tinyint(4) DEFAULT '0' COMMENT 'Determinar la característica del apoyo, si es bicicleta, despensa, techo firme, lentes, beca, etc.',
  `importe_apoyo` varchar(12) DEFAULT '0' COMMENT 'Determinar el valor monetario del tipo de apoyo',
  `no_apoyos` int(11) DEFAULT '0' COMMENT 'Número de apoyos recibidos por programa',
  `fecha_apoyo` datetime NOT NULL COMMENT 'Fecha del(los) apoyo(s) recibido(s)',
  `periodicidad` tinyint(4) NOT NULL COMMENT 'Periodicidad de la entrega del apoyo',
  `origen_recurso` tinyint(4) DEFAULT '0' COMMENT 'Origen del recurso',
  PRIMARY KEY (`id`),
  KEY `curp` (`curp`),
  KEY `dependencia_idx` (`dependencia`),
  KEY `programa_idx` (`programa`),
  KEY `subprograma_idx` (`subprograma`),
  KEY `tipo_apoyo_idx` (`tipo_apoyo`),
  KEY `periodicidad_idx` (`periodicidad`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `apoyos_E`
--

DROP TABLE IF EXISTS `apoyos_E`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `apoyos_E` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Identificador del registro',
  `curp` char(18) NOT NULL COMMENT 'curp del beneficiario',
  `dependencia` tinyint(4) NOT NULL COMMENT 'Dependencia o entidad ejecutora del programa',
  `programa` tinyint(4) NOT NULL DEFAULT '66' COMMENT 'Programa por el cual se otorga el beneficio',
  `subprograma` smallint(6) NOT NULL DEFAULT '364' COMMENT 'Determinar el subprograma, que serán los programas alineados a la clasificación del CONAC',
  `clave_presupuestal` varchar(45) DEFAULT '0' COMMENT 'Clave presupuestal',
  `tipo_apoyo` tinyint(4) NOT NULL COMMENT 'Prestación de servicio, subsidio, transferencia monetaria, apoyo en especie, capacitación o construcción y operación de infraestructura.',
  `caracteristica_apoyo` tinyint(4) DEFAULT '0' COMMENT 'Determinar la característica del apoyo, si es bicicleta, despensa, techo firme, lentes, beca, etc.',
  `importe_apoyo` varchar(12) DEFAULT '0' COMMENT 'Determinar el valor monetario del tipo de apoyo',
  `no_apoyos` int(11) DEFAULT '0' COMMENT 'Número de apoyos recibidos por programa',
  `fecha_apoyo` datetime NOT NULL COMMENT 'Fecha del(los) apoyo(s) recibido(s)',
  `periodicidad` tinyint(4) NOT NULL COMMENT 'Periodicidad de la entrega del apoyo',
  `origen_recurso` tinyint(4) DEFAULT '0' COMMENT 'Origen del recurso',
  PRIMARY KEY (`id`),
  KEY `curp` (`curp`),
  KEY `dependencia_idx` (`dependencia`),
  KEY `programa_idx` (`programa`),
  KEY `subprograma_idx` (`subprograma`),
  KEY `tipo_apoyo_idx` (`tipo_apoyo`),
  KEY `periodicidad_idx` (`periodicidad`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `apoyos_F`
--

DROP TABLE IF EXISTS `apoyos_F`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `apoyos_F` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Identificador del registro',
  `curp` char(18) NOT NULL COMMENT 'curp del beneficiario',
  `dependencia` tinyint(4) NOT NULL COMMENT 'Dependencia o entidad ejecutora del programa',
  `programa` tinyint(4) NOT NULL DEFAULT '66' COMMENT 'Programa por el cual se otorga el beneficio',
  `subprograma` smallint(6) NOT NULL DEFAULT '364' COMMENT 'Determinar el subprograma, que serán los programas alineados a la clasificación del CONAC',
  `clave_presupuestal` varchar(45) DEFAULT '0' COMMENT 'Clave presupuestal',
  `tipo_apoyo` tinyint(4) NOT NULL COMMENT 'Prestación de servicio, subsidio, transferencia monetaria, apoyo en especie, capacitación o construcción y operación de infraestructura.',
  `caracteristica_apoyo` tinyint(4) DEFAULT '0' COMMENT 'Determinar la característica del apoyo, si es bicicleta, despensa, techo firme, lentes, beca, etc.',
  `importe_apoyo` varchar(12) DEFAULT '0' COMMENT 'Determinar el valor monetario del tipo de apoyo',
  `no_apoyos` int(11) DEFAULT '0' COMMENT 'Número de apoyos recibidos por programa',
  `fecha_apoyo` datetime NOT NULL COMMENT 'Fecha del(los) apoyo(s) recibido(s)',
  `periodicidad` tinyint(4) NOT NULL COMMENT 'Periodicidad de la entrega del apoyo',
  `origen_recurso` tinyint(4) DEFAULT '0' COMMENT 'Origen del recurso',
  PRIMARY KEY (`id`),
  KEY `curp` (`curp`),
  KEY `dependencia_idx` (`dependencia`),
  KEY `programa_idx` (`programa`),
  KEY `subprograma_idx` (`subprograma`),
  KEY `tipo_apoyo_idx` (`tipo_apoyo`),
  KEY `periodicidad_idx` (`periodicidad`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `apoyos_G`
--

DROP TABLE IF EXISTS `apoyos_G`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `apoyos_G` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Identificador del registro',
  `curp` char(18) NOT NULL COMMENT 'curp del beneficiario',
  `dependencia` tinyint(4) NOT NULL COMMENT 'Dependencia o entidad ejecutora del programa',
  `programa` tinyint(4) NOT NULL DEFAULT '66' COMMENT 'Programa por el cual se otorga el beneficio',
  `subprograma` smallint(6) NOT NULL DEFAULT '364' COMMENT 'Determinar el subprograma, que serán los programas alineados a la clasificación del CONAC',
  `clave_presupuestal` varchar(45) DEFAULT '0' COMMENT 'Clave presupuestal',
  `tipo_apoyo` tinyint(4) NOT NULL COMMENT 'Prestación de servicio, subsidio, transferencia monetaria, apoyo en especie, capacitación o construcción y operación de infraestructura.',
  `caracteristica_apoyo` tinyint(4) DEFAULT '0' COMMENT 'Determinar la característica del apoyo, si es bicicleta, despensa, techo firme, lentes, beca, etc.',
  `importe_apoyo` varchar(12) DEFAULT '0' COMMENT 'Determinar el valor monetario del tipo de apoyo',
  `no_apoyos` int(11) DEFAULT '0' COMMENT 'Número de apoyos recibidos por programa',
  `fecha_apoyo` datetime NOT NULL COMMENT 'Fecha del(los) apoyo(s) recibido(s)',
  `periodicidad` tinyint(4) NOT NULL COMMENT 'Periodicidad de la entrega del apoyo',
  `origen_recurso` tinyint(4) DEFAULT '0' COMMENT 'Origen del recurso',
  PRIMARY KEY (`id`),
  KEY `curp` (`curp`),
  KEY `dependencia_idx` (`dependencia`),
  KEY `programa_idx` (`programa`),
  KEY `subprograma_idx` (`subprograma`),
  KEY `tipo_apoyo_idx` (`tipo_apoyo`),
  KEY `periodicidad_idx` (`periodicidad`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `apoyos_H`
--

DROP TABLE IF EXISTS `apoyos_H`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `apoyos_H` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Identificador del registro',
  `curp` char(18) NOT NULL COMMENT 'curp del beneficiario',
  `dependencia` tinyint(4) NOT NULL COMMENT 'Dependencia o entidad ejecutora del programa',
  `programa` tinyint(4) NOT NULL DEFAULT '66' COMMENT 'Programa por el cual se otorga el beneficio',
  `subprograma` smallint(6) NOT NULL DEFAULT '364' COMMENT 'Determinar el subprograma, que serán los programas alineados a la clasificación del CONAC',
  `clave_presupuestal` varchar(45) DEFAULT '0' COMMENT 'Clave presupuestal',
  `tipo_apoyo` tinyint(4) NOT NULL COMMENT 'Prestación de servicio, subsidio, transferencia monetaria, apoyo en especie, capacitación o construcción y operación de infraestructura.',
  `caracteristica_apoyo` tinyint(4) DEFAULT '0' COMMENT 'Determinar la característica del apoyo, si es bicicleta, despensa, techo firme, lentes, beca, etc.',
  `importe_apoyo` varchar(12) DEFAULT '0' COMMENT 'Determinar el valor monetario del tipo de apoyo',
  `no_apoyos` int(11) DEFAULT '0' COMMENT 'Número de apoyos recibidos por programa',
  `fecha_apoyo` datetime NOT NULL COMMENT 'Fecha del(los) apoyo(s) recibido(s)',
  `periodicidad` tinyint(4) NOT NULL COMMENT 'Periodicidad de la entrega del apoyo',
  `origen_recurso` tinyint(4) DEFAULT '0' COMMENT 'Origen del recurso',
  PRIMARY KEY (`id`),
  KEY `curp` (`curp`),
  KEY `dependencia_idx` (`dependencia`),
  KEY `programa_idx` (`programa`),
  KEY `subprograma_idx` (`subprograma`),
  KEY `tipo_apoyo_idx` (`tipo_apoyo`),
  KEY `periodicidad_idx` (`periodicidad`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `apoyos_I`
--

DROP TABLE IF EXISTS `apoyos_I`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `apoyos_I` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Identificador del registro',
  `curp` char(18) NOT NULL COMMENT 'curp del beneficiario',
  `dependencia` tinyint(4) NOT NULL COMMENT 'Dependencia o entidad ejecutora del programa',
  `programa` tinyint(4) NOT NULL DEFAULT '66' COMMENT 'Programa por el cual se otorga el beneficio',
  `subprograma` smallint(6) NOT NULL DEFAULT '364' COMMENT 'Determinar el subprograma, que serán los programas alineados a la clasificación del CONAC',
  `clave_presupuestal` varchar(45) DEFAULT '0' COMMENT 'Clave presupuestal',
  `tipo_apoyo` tinyint(4) NOT NULL COMMENT 'Prestación de servicio, subsidio, transferencia monetaria, apoyo en especie, capacitación o construcción y operación de infraestructura.',
  `caracteristica_apoyo` tinyint(4) DEFAULT '0' COMMENT 'Determinar la característica del apoyo, si es bicicleta, despensa, techo firme, lentes, beca, etc.',
  `importe_apoyo` varchar(12) DEFAULT '0' COMMENT 'Determinar el valor monetario del tipo de apoyo',
  `no_apoyos` int(11) DEFAULT '0' COMMENT 'Número de apoyos recibidos por programa',
  `fecha_apoyo` datetime NOT NULL COMMENT 'Fecha del(los) apoyo(s) recibido(s)',
  `periodicidad` tinyint(4) NOT NULL COMMENT 'Periodicidad de la entrega del apoyo',
  `origen_recurso` tinyint(4) DEFAULT '0' COMMENT 'Origen del recurso',
  PRIMARY KEY (`id`),
  KEY `curp` (`curp`),
  KEY `dependencia_idx` (`dependencia`),
  KEY `programa_idx` (`programa`),
  KEY `subprograma_idx` (`subprograma`),
  KEY `tipo_apoyo_idx` (`tipo_apoyo`),
  KEY `periodicidad_idx` (`periodicidad`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `apoyos_J`
--

DROP TABLE IF EXISTS `apoyos_J`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `apoyos_J` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Identificador del registro',
  `curp` char(18) NOT NULL COMMENT 'curp del beneficiario',
  `dependencia` tinyint(4) NOT NULL COMMENT 'Dependencia o entidad ejecutora del programa',
  `programa` tinyint(4) NOT NULL DEFAULT '66' COMMENT 'Programa por el cual se otorga el beneficio',
  `subprograma` smallint(6) NOT NULL DEFAULT '364' COMMENT 'Determinar el subprograma, que serán los programas alineados a la clasificación del CONAC',
  `clave_presupuestal` varchar(45) DEFAULT '0' COMMENT 'Clave presupuestal',
  `tipo_apoyo` tinyint(4) NOT NULL COMMENT 'Prestación de servicio, subsidio, transferencia monetaria, apoyo en especie, capacitación o construcción y operación de infraestructura.',
  `caracteristica_apoyo` tinyint(4) DEFAULT '0' COMMENT 'Determinar la característica del apoyo, si es bicicleta, despensa, techo firme, lentes, beca, etc.',
  `importe_apoyo` varchar(12) DEFAULT '0' COMMENT 'Determinar el valor monetario del tipo de apoyo',
  `no_apoyos` int(11) DEFAULT '0' COMMENT 'Número de apoyos recibidos por programa',
  `fecha_apoyo` datetime NOT NULL COMMENT 'Fecha del(los) apoyo(s) recibido(s)',
  `periodicidad` tinyint(4) NOT NULL COMMENT 'Periodicidad de la entrega del apoyo',
  `origen_recurso` tinyint(4) DEFAULT '0' COMMENT 'Origen del recurso',
  PRIMARY KEY (`id`),
  KEY `curp` (`curp`),
  KEY `dependencia_idx` (`dependencia`),
  KEY `programa_idx` (`programa`),
  KEY `subprograma_idx` (`subprograma`),
  KEY `tipo_apoyo_idx` (`tipo_apoyo`),
  KEY `periodicidad_idx` (`periodicidad`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `apoyos_K`
--

DROP TABLE IF EXISTS `apoyos_K`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `apoyos_K` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Identificador del registro',
  `curp` char(18) NOT NULL COMMENT 'curp del beneficiario',
  `dependencia` tinyint(4) NOT NULL COMMENT 'Dependencia o entidad ejecutora del programa',
  `programa` tinyint(4) NOT NULL DEFAULT '66' COMMENT 'Programa por el cual se otorga el beneficio',
  `subprograma` smallint(6) NOT NULL DEFAULT '364' COMMENT 'Determinar el subprograma, que serán los programas alineados a la clasificación del CONAC',
  `clave_presupuestal` varchar(45) DEFAULT '0' COMMENT 'Clave presupuestal',
  `tipo_apoyo` tinyint(4) NOT NULL COMMENT 'Prestación de servicio, subsidio, transferencia monetaria, apoyo en especie, capacitación o construcción y operación de infraestructura.',
  `caracteristica_apoyo` tinyint(4) DEFAULT '0' COMMENT 'Determinar la característica del apoyo, si es bicicleta, despensa, techo firme, lentes, beca, etc.',
  `importe_apoyo` varchar(12) DEFAULT '0' COMMENT 'Determinar el valor monetario del tipo de apoyo',
  `no_apoyos` int(11) DEFAULT '0' COMMENT 'Número de apoyos recibidos por programa',
  `fecha_apoyo` datetime NOT NULL COMMENT 'Fecha del(los) apoyo(s) recibido(s)',
  `periodicidad` tinyint(4) NOT NULL COMMENT 'Periodicidad de la entrega del apoyo',
  `origen_recurso` tinyint(4) DEFAULT '0' COMMENT 'Origen del recurso',
  PRIMARY KEY (`id`),
  KEY `curp` (`curp`),
  KEY `dependencia_idx` (`dependencia`),
  KEY `programa_idx` (`programa`),
  KEY `subprograma_idx` (`subprograma`),
  KEY `tipo_apoyo_idx` (`tipo_apoyo`),
  KEY `periodicidad_idx` (`periodicidad`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `apoyos_L`
--

DROP TABLE IF EXISTS `apoyos_L`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `apoyos_L` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Identificador del registro',
  `curp` char(18) NOT NULL COMMENT 'curp del beneficiario',
  `dependencia` tinyint(4) NOT NULL COMMENT 'Dependencia o entidad ejecutora del programa',
  `programa` tinyint(4) NOT NULL DEFAULT '66' COMMENT 'Programa por el cual se otorga el beneficio',
  `subprograma` smallint(6) NOT NULL DEFAULT '364' COMMENT 'Determinar el subprograma, que serán los programas alineados a la clasificación del CONAC',
  `clave_presupuestal` varchar(45) DEFAULT '0' COMMENT 'Clave presupuestal',
  `tipo_apoyo` tinyint(4) NOT NULL COMMENT 'Prestación de servicio, subsidio, transferencia monetaria, apoyo en especie, capacitación o construcción y operación de infraestructura.',
  `caracteristica_apoyo` tinyint(4) DEFAULT '0' COMMENT 'Determinar la característica del apoyo, si es bicicleta, despensa, techo firme, lentes, beca, etc.',
  `importe_apoyo` varchar(12) DEFAULT '0' COMMENT 'Determinar el valor monetario del tipo de apoyo',
  `no_apoyos` int(11) DEFAULT '0' COMMENT 'Número de apoyos recibidos por programa',
  `fecha_apoyo` datetime NOT NULL COMMENT 'Fecha del(los) apoyo(s) recibido(s)',
  `periodicidad` tinyint(4) NOT NULL COMMENT 'Periodicidad de la entrega del apoyo',
  `origen_recurso` tinyint(4) DEFAULT '0' COMMENT 'Origen del recurso',
  PRIMARY KEY (`id`),
  KEY `curp` (`curp`),
  KEY `dependencia_idx` (`dependencia`),
  KEY `programa_idx` (`programa`),
  KEY `subprograma_idx` (`subprograma`),
  KEY `tipo_apoyo_idx` (`tipo_apoyo`),
  KEY `periodicidad_idx` (`periodicidad`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `apoyos_M`
--

DROP TABLE IF EXISTS `apoyos_M`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `apoyos_M` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Identificador del registro',
  `curp` char(18) NOT NULL COMMENT 'curp del beneficiario',
  `dependencia` tinyint(4) NOT NULL COMMENT 'Dependencia o entidad ejecutora del programa',
  `programa` tinyint(4) NOT NULL DEFAULT '66' COMMENT 'Programa por el cual se otorga el beneficio',
  `subprograma` smallint(6) NOT NULL DEFAULT '364' COMMENT 'Determinar el subprograma, que serán los programas alineados a la clasificación del CONAC',
  `clave_presupuestal` varchar(45) DEFAULT '0' COMMENT 'Clave presupuestal',
  `tipo_apoyo` tinyint(4) NOT NULL COMMENT 'Prestación de servicio, subsidio, transferencia monetaria, apoyo en especie, capacitación o construcción y operación de infraestructura.',
  `caracteristica_apoyo` tinyint(4) DEFAULT '0' COMMENT 'Determinar la característica del apoyo, si es bicicleta, despensa, techo firme, lentes, beca, etc.',
  `importe_apoyo` varchar(12) DEFAULT '0' COMMENT 'Determinar el valor monetario del tipo de apoyo',
  `no_apoyos` int(11) DEFAULT '0' COMMENT 'Número de apoyos recibidos por programa',
  `fecha_apoyo` datetime NOT NULL COMMENT 'Fecha del(los) apoyo(s) recibido(s)',
  `periodicidad` tinyint(4) NOT NULL COMMENT 'Periodicidad de la entrega del apoyo',
  `origen_recurso` tinyint(4) DEFAULT '0' COMMENT 'Origen del recurso',
  PRIMARY KEY (`id`),
  KEY `curp` (`curp`),
  KEY `dependencia_idx` (`dependencia`),
  KEY `programa_idx` (`programa`),
  KEY `subprograma_idx` (`subprograma`),
  KEY `tipo_apoyo_idx` (`tipo_apoyo`),
  KEY `periodicidad_idx` (`periodicidad`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `apoyos_N`
--

DROP TABLE IF EXISTS `apoyos_N`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `apoyos_N` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Identificador del registro',
  `curp` char(18) NOT NULL COMMENT 'curp del beneficiario',
  `dependencia` tinyint(4) NOT NULL COMMENT 'Dependencia o entidad ejecutora del programa',
  `programa` tinyint(4) NOT NULL DEFAULT '66' COMMENT 'Programa por el cual se otorga el beneficio',
  `subprograma` smallint(6) NOT NULL DEFAULT '364' COMMENT 'Determinar el subprograma, que serán los programas alineados a la clasificación del CONAC',
  `clave_presupuestal` varchar(45) DEFAULT '0' COMMENT 'Clave presupuestal',
  `tipo_apoyo` tinyint(4) NOT NULL COMMENT 'Prestación de servicio, subsidio, transferencia monetaria, apoyo en especie, capacitación o construcción y operación de infraestructura.',
  `caracteristica_apoyo` tinyint(4) DEFAULT '0' COMMENT 'Determinar la característica del apoyo, si es bicicleta, despensa, techo firme, lentes, beca, etc.',
  `importe_apoyo` varchar(12) DEFAULT '0' COMMENT 'Determinar el valor monetario del tipo de apoyo',
  `no_apoyos` int(11) DEFAULT '0' COMMENT 'Número de apoyos recibidos por programa',
  `fecha_apoyo` datetime NOT NULL COMMENT 'Fecha del(los) apoyo(s) recibido(s)',
  `periodicidad` tinyint(4) NOT NULL COMMENT 'Periodicidad de la entrega del apoyo',
  `origen_recurso` tinyint(4) DEFAULT '0' COMMENT 'Origen del recurso',
  PRIMARY KEY (`id`),
  KEY `curp` (`curp`),
  KEY `dependencia_idx` (`dependencia`),
  KEY `programa_idx` (`programa`),
  KEY `subprograma_idx` (`subprograma`),
  KEY `tipo_apoyo_idx` (`tipo_apoyo`),
  KEY `periodicidad_idx` (`periodicidad`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `apoyos_O`
--

DROP TABLE IF EXISTS `apoyos_O`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `apoyos_O` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Identificador del registro',
  `curp` char(18) NOT NULL COMMENT 'curp del beneficiario',
  `dependencia` tinyint(4) NOT NULL COMMENT 'Dependencia o entidad ejecutora del programa',
  `programa` tinyint(4) NOT NULL DEFAULT '66' COMMENT 'Programa por el cual se otorga el beneficio',
  `subprograma` smallint(6) NOT NULL DEFAULT '364' COMMENT 'Determinar el subprograma, que serán los programas alineados a la clasificación del CONAC',
  `clave_presupuestal` varchar(45) DEFAULT '0' COMMENT 'Clave presupuestal',
  `tipo_apoyo` tinyint(4) NOT NULL COMMENT 'Prestación de servicio, subsidio, transferencia monetaria, apoyo en especie, capacitación o construcción y operación de infraestructura.',
  `caracteristica_apoyo` tinyint(4) DEFAULT '0' COMMENT 'Determinar la característica del apoyo, si es bicicleta, despensa, techo firme, lentes, beca, etc.',
  `importe_apoyo` varchar(12) DEFAULT '0' COMMENT 'Determinar el valor monetario del tipo de apoyo',
  `no_apoyos` int(11) DEFAULT '0' COMMENT 'Número de apoyos recibidos por programa',
  `fecha_apoyo` datetime NOT NULL COMMENT 'Fecha del(los) apoyo(s) recibido(s)',
  `periodicidad` tinyint(4) NOT NULL COMMENT 'Periodicidad de la entrega del apoyo',
  `origen_recurso` tinyint(4) DEFAULT '0' COMMENT 'Origen del recurso',
  PRIMARY KEY (`id`),
  KEY `curp` (`curp`),
  KEY `dependencia_idx` (`dependencia`),
  KEY `programa_idx` (`programa`),
  KEY `subprograma_idx` (`subprograma`),
  KEY `tipo_apoyo_idx` (`tipo_apoyo`),
  KEY `periodicidad_idx` (`periodicidad`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `apoyos_P`
--

DROP TABLE IF EXISTS `apoyos_P`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `apoyos_P` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Identificador del registro',
  `curp` char(18) NOT NULL COMMENT 'curp del beneficiario',
  `dependencia` tinyint(4) NOT NULL COMMENT 'Dependencia o entidad ejecutora del programa',
  `programa` tinyint(4) NOT NULL DEFAULT '66' COMMENT 'Programa por el cual se otorga el beneficio',
  `subprograma` smallint(6) NOT NULL DEFAULT '364' COMMENT 'Determinar el subprograma, que serán los programas alineados a la clasificación del CONAC',
  `clave_presupuestal` varchar(45) DEFAULT '0' COMMENT 'Clave presupuestal',
  `tipo_apoyo` tinyint(4) NOT NULL COMMENT 'Prestación de servicio, subsidio, transferencia monetaria, apoyo en especie, capacitación o construcción y operación de infraestructura.',
  `caracteristica_apoyo` tinyint(4) DEFAULT '0' COMMENT 'Determinar la característica del apoyo, si es bicicleta, despensa, techo firme, lentes, beca, etc.',
  `importe_apoyo` varchar(12) DEFAULT '0' COMMENT 'Determinar el valor monetario del tipo de apoyo',
  `no_apoyos` int(11) DEFAULT '0' COMMENT 'Número de apoyos recibidos por programa',
  `fecha_apoyo` datetime NOT NULL COMMENT 'Fecha del(los) apoyo(s) recibido(s)',
  `periodicidad` tinyint(4) NOT NULL COMMENT 'Periodicidad de la entrega del apoyo',
  `origen_recurso` tinyint(4) DEFAULT '0' COMMENT 'Origen del recurso',
  PRIMARY KEY (`id`),
  KEY `curp` (`curp`),
  KEY `dependencia_idx` (`dependencia`),
  KEY `programa_idx` (`programa`),
  KEY `subprograma_idx` (`subprograma`),
  KEY `tipo_apoyo_idx` (`tipo_apoyo`),
  KEY `periodicidad_idx` (`periodicidad`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `apoyos_Q`
--

DROP TABLE IF EXISTS `apoyos_Q`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `apoyos_Q` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Identificador del registro',
  `curp` char(18) NOT NULL COMMENT 'curp del beneficiario',
  `dependencia` tinyint(4) NOT NULL COMMENT 'Dependencia o entidad ejecutora del programa',
  `programa` tinyint(4) NOT NULL DEFAULT '66' COMMENT 'Programa por el cual se otorga el beneficio',
  `subprograma` smallint(6) NOT NULL DEFAULT '364' COMMENT 'Determinar el subprograma, que serán los programas alineados a la clasificación del CONAC',
  `clave_presupuestal` varchar(45) DEFAULT '0' COMMENT 'Clave presupuestal',
  `tipo_apoyo` tinyint(4) NOT NULL COMMENT 'Prestación de servicio, subsidio, transferencia monetaria, apoyo en especie, capacitación o construcción y operación de infraestructura.',
  `caracteristica_apoyo` tinyint(4) DEFAULT '0' COMMENT 'Determinar la característica del apoyo, si es bicicleta, despensa, techo firme, lentes, beca, etc.',
  `importe_apoyo` varchar(12) DEFAULT '0' COMMENT 'Determinar el valor monetario del tipo de apoyo',
  `no_apoyos` int(11) DEFAULT '0' COMMENT 'Número de apoyos recibidos por programa',
  `fecha_apoyo` datetime NOT NULL COMMENT 'Fecha del(los) apoyo(s) recibido(s)',
  `periodicidad` tinyint(4) NOT NULL COMMENT 'Periodicidad de la entrega del apoyo',
  `origen_recurso` tinyint(4) DEFAULT '0' COMMENT 'Origen del recurso',
  PRIMARY KEY (`id`),
  KEY `curp` (`curp`),
  KEY `dependencia_idx` (`dependencia`),
  KEY `programa_idx` (`programa`),
  KEY `subprograma_idx` (`subprograma`),
  KEY `tipo_apoyo_idx` (`tipo_apoyo`),
  KEY `periodicidad_idx` (`periodicidad`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `apoyos_R`
--

DROP TABLE IF EXISTS `apoyos_R`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `apoyos_R` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Identificador del registro',
  `curp` char(18) NOT NULL COMMENT 'curp del beneficiario',
  `dependencia` tinyint(4) NOT NULL COMMENT 'Dependencia o entidad ejecutora del programa',
  `programa` tinyint(4) NOT NULL DEFAULT '66' COMMENT 'Programa por el cual se otorga el beneficio',
  `subprograma` smallint(6) NOT NULL DEFAULT '364' COMMENT 'Determinar el subprograma, que serán los programas alineados a la clasificación del CONAC',
  `clave_presupuestal` varchar(45) DEFAULT '0' COMMENT 'Clave presupuestal',
  `tipo_apoyo` tinyint(4) NOT NULL COMMENT 'Prestación de servicio, subsidio, transferencia monetaria, apoyo en especie, capacitación o construcción y operación de infraestructura.',
  `caracteristica_apoyo` tinyint(4) DEFAULT '0' COMMENT 'Determinar la característica del apoyo, si es bicicleta, despensa, techo firme, lentes, beca, etc.',
  `importe_apoyo` varchar(12) DEFAULT '0' COMMENT 'Determinar el valor monetario del tipo de apoyo',
  `no_apoyos` int(11) DEFAULT '0' COMMENT 'Número de apoyos recibidos por programa',
  `fecha_apoyo` datetime NOT NULL COMMENT 'Fecha del(los) apoyo(s) recibido(s)',
  `periodicidad` tinyint(4) NOT NULL COMMENT 'Periodicidad de la entrega del apoyo',
  `origen_recurso` tinyint(4) DEFAULT '0' COMMENT 'Origen del recurso',
  PRIMARY KEY (`id`),
  KEY `curp` (`curp`),
  KEY `dependencia_idx` (`dependencia`),
  KEY `programa_idx` (`programa`),
  KEY `subprograma_idx` (`subprograma`),
  KEY `tipo_apoyo_idx` (`tipo_apoyo`),
  KEY `periodicidad_idx` (`periodicidad`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `apoyos_S`
--

DROP TABLE IF EXISTS `apoyos_S`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `apoyos_S` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Identificador del registro',
  `curp` char(18) NOT NULL COMMENT 'curp del beneficiario',
  `dependencia` tinyint(4) NOT NULL COMMENT 'Dependencia o entidad ejecutora del programa',
  `programa` tinyint(4) NOT NULL DEFAULT '66' COMMENT 'Programa por el cual se otorga el beneficio',
  `subprograma` smallint(6) NOT NULL DEFAULT '364' COMMENT 'Determinar el subprograma, que serán los programas alineados a la clasificación del CONAC',
  `clave_presupuestal` varchar(45) DEFAULT '0' COMMENT 'Clave presupuestal',
  `tipo_apoyo` tinyint(4) NOT NULL COMMENT 'Prestación de servicio, subsidio, transferencia monetaria, apoyo en especie, capacitación o construcción y operación de infraestructura.',
  `caracteristica_apoyo` tinyint(4) DEFAULT '0' COMMENT 'Determinar la característica del apoyo, si es bicicleta, despensa, techo firme, lentes, beca, etc.',
  `importe_apoyo` varchar(12) DEFAULT '0' COMMENT 'Determinar el valor monetario del tipo de apoyo',
  `no_apoyos` int(11) DEFAULT '0' COMMENT 'Número de apoyos recibidos por programa',
  `fecha_apoyo` datetime NOT NULL COMMENT 'Fecha del(los) apoyo(s) recibido(s)',
  `periodicidad` tinyint(4) NOT NULL COMMENT 'Periodicidad de la entrega del apoyo',
  `origen_recurso` tinyint(4) DEFAULT '0' COMMENT 'Origen del recurso',
  PRIMARY KEY (`id`),
  KEY `curp` (`curp`),
  KEY `dependencia_idx` (`dependencia`),
  KEY `programa_idx` (`programa`),
  KEY `subprograma_idx` (`subprograma`),
  KEY `tipo_apoyo_idx` (`tipo_apoyo`),
  KEY `periodicidad_idx` (`periodicidad`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `apoyos_T`
--

DROP TABLE IF EXISTS `apoyos_T`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `apoyos_T` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Identificador del registro',
  `curp` char(18) NOT NULL COMMENT 'curp del beneficiario',
  `dependencia` tinyint(4) NOT NULL COMMENT 'Dependencia o entidad ejecutora del programa',
  `programa` tinyint(4) NOT NULL DEFAULT '66' COMMENT 'Programa por el cual se otorga el beneficio',
  `subprograma` smallint(6) NOT NULL DEFAULT '364' COMMENT 'Determinar el subprograma, que serán los programas alineados a la clasificación del CONAC',
  `clave_presupuestal` varchar(45) DEFAULT '0' COMMENT 'Clave presupuestal',
  `tipo_apoyo` tinyint(4) NOT NULL COMMENT 'Prestación de servicio, subsidio, transferencia monetaria, apoyo en especie, capacitación o construcción y operación de infraestructura.',
  `caracteristica_apoyo` tinyint(4) DEFAULT '0' COMMENT 'Determinar la característica del apoyo, si es bicicleta, despensa, techo firme, lentes, beca, etc.',
  `importe_apoyo` varchar(12) DEFAULT '0' COMMENT 'Determinar el valor monetario del tipo de apoyo',
  `no_apoyos` int(11) DEFAULT '0' COMMENT 'Número de apoyos recibidos por programa',
  `fecha_apoyo` datetime NOT NULL COMMENT 'Fecha del(los) apoyo(s) recibido(s)',
  `periodicidad` tinyint(4) NOT NULL COMMENT 'Periodicidad de la entrega del apoyo',
  `origen_recurso` tinyint(4) DEFAULT '0' COMMENT 'Origen del recurso',
  PRIMARY KEY (`id`),
  KEY `curp` (`curp`),
  KEY `dependencia_idx` (`dependencia`),
  KEY `programa_idx` (`programa`),
  KEY `subprograma_idx` (`subprograma`),
  KEY `tipo_apoyo_idx` (`tipo_apoyo`),
  KEY `periodicidad_idx` (`periodicidad`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `apoyos_U`
--

DROP TABLE IF EXISTS `apoyos_U`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `apoyos_U` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Identificador del registro',
  `curp` char(18) NOT NULL COMMENT 'curp del beneficiario',
  `dependencia` tinyint(4) NOT NULL COMMENT 'Dependencia o entidad ejecutora del programa',
  `programa` tinyint(4) NOT NULL DEFAULT '66' COMMENT 'Programa por el cual se otorga el beneficio',
  `subprograma` smallint(6) NOT NULL DEFAULT '364' COMMENT 'Determinar el subprograma, que serán los programas alineados a la clasificación del CONAC',
  `clave_presupuestal` varchar(45) DEFAULT '0' COMMENT 'Clave presupuestal',
  `tipo_apoyo` tinyint(4) NOT NULL COMMENT 'Prestación de servicio, subsidio, transferencia monetaria, apoyo en especie, capacitación o construcción y operación de infraestructura.',
  `caracteristica_apoyo` tinyint(4) DEFAULT '0' COMMENT 'Determinar la característica del apoyo, si es bicicleta, despensa, techo firme, lentes, beca, etc.',
  `importe_apoyo` varchar(12) DEFAULT '0' COMMENT 'Determinar el valor monetario del tipo de apoyo',
  `no_apoyos` int(11) DEFAULT '0' COMMENT 'Número de apoyos recibidos por programa',
  `fecha_apoyo` datetime NOT NULL COMMENT 'Fecha del(los) apoyo(s) recibido(s)',
  `periodicidad` tinyint(4) NOT NULL COMMENT 'Periodicidad de la entrega del apoyo',
  `origen_recurso` tinyint(4) DEFAULT '0' COMMENT 'Origen del recurso',
  PRIMARY KEY (`id`),
  KEY `curp` (`curp`),
  KEY `dependencia_idx` (`dependencia`),
  KEY `programa_idx` (`programa`),
  KEY `subprograma_idx` (`subprograma`),
  KEY `tipo_apoyo_idx` (`tipo_apoyo`),
  KEY `periodicidad_idx` (`periodicidad`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `apoyos_V`
--

DROP TABLE IF EXISTS `apoyos_V`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `apoyos_V` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Identificador del registro',
  `curp` char(18) NOT NULL COMMENT 'curp del beneficiario',
  `dependencia` tinyint(4) NOT NULL COMMENT 'Dependencia o entidad ejecutora del programa',
  `programa` tinyint(4) NOT NULL DEFAULT '66' COMMENT 'Programa por el cual se otorga el beneficio',
  `subprograma` smallint(6) NOT NULL DEFAULT '364' COMMENT 'Determinar el subprograma, que serán los programas alineados a la clasificación del CONAC',
  `clave_presupuestal` varchar(45) DEFAULT '0' COMMENT 'Clave presupuestal',
  `tipo_apoyo` tinyint(4) NOT NULL COMMENT 'Prestación de servicio, subsidio, transferencia monetaria, apoyo en especie, capacitación o construcción y operación de infraestructura.',
  `caracteristica_apoyo` tinyint(4) DEFAULT '0' COMMENT 'Determinar la característica del apoyo, si es bicicleta, despensa, techo firme, lentes, beca, etc.',
  `importe_apoyo` varchar(12) DEFAULT '0' COMMENT 'Determinar el valor monetario del tipo de apoyo',
  `no_apoyos` int(11) DEFAULT '0' COMMENT 'Número de apoyos recibidos por programa',
  `fecha_apoyo` datetime NOT NULL COMMENT 'Fecha del(los) apoyo(s) recibido(s)',
  `periodicidad` tinyint(4) NOT NULL COMMENT 'Periodicidad de la entrega del apoyo',
  `origen_recurso` tinyint(4) DEFAULT '0' COMMENT 'Origen del recurso',
  PRIMARY KEY (`id`),
  KEY `curp` (`curp`),
  KEY `dependencia_idx` (`dependencia`),
  KEY `programa_idx` (`programa`),
  KEY `subprograma_idx` (`subprograma`),
  KEY `tipo_apoyo_idx` (`tipo_apoyo`),
  KEY `periodicidad_idx` (`periodicidad`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `apoyos_W`
--

DROP TABLE IF EXISTS `apoyos_W`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `apoyos_W` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Identificador del registro',
  `curp` char(18) NOT NULL COMMENT 'curp del beneficiario',
  `dependencia` tinyint(4) NOT NULL COMMENT 'Dependencia o entidad ejecutora del programa',
  `programa` tinyint(4) NOT NULL DEFAULT '66' COMMENT 'Programa por el cual se otorga el beneficio',
  `subprograma` smallint(6) NOT NULL DEFAULT '364' COMMENT 'Determinar el subprograma, que serán los programas alineados a la clasificación del CONAC',
  `clave_presupuestal` varchar(45) DEFAULT '0' COMMENT 'Clave presupuestal',
  `tipo_apoyo` tinyint(4) NOT NULL COMMENT 'Prestación de servicio, subsidio, transferencia monetaria, apoyo en especie, capacitación o construcción y operación de infraestructura.',
  `caracteristica_apoyo` tinyint(4) DEFAULT '0' COMMENT 'Determinar la característica del apoyo, si es bicicleta, despensa, techo firme, lentes, beca, etc.',
  `importe_apoyo` varchar(12) DEFAULT '0' COMMENT 'Determinar el valor monetario del tipo de apoyo',
  `no_apoyos` int(11) DEFAULT '0' COMMENT 'Número de apoyos recibidos por programa',
  `fecha_apoyo` datetime NOT NULL COMMENT 'Fecha del(los) apoyo(s) recibido(s)',
  `periodicidad` tinyint(4) NOT NULL COMMENT 'Periodicidad de la entrega del apoyo',
  `origen_recurso` tinyint(4) DEFAULT '0' COMMENT 'Origen del recurso',
  PRIMARY KEY (`id`),
  KEY `curp` (`curp`),
  KEY `dependencia_idx` (`dependencia`),
  KEY `programa_idx` (`programa`),
  KEY `subprograma_idx` (`subprograma`),
  KEY `tipo_apoyo_idx` (`tipo_apoyo`),
  KEY `periodicidad_idx` (`periodicidad`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `apoyos_X`
--

DROP TABLE IF EXISTS `apoyos_X`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `apoyos_X` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Identificador del registro',
  `curp` char(18) NOT NULL COMMENT 'curp del beneficiario',
  `dependencia` tinyint(4) NOT NULL COMMENT 'Dependencia o entidad ejecutora del programa',
  `programa` tinyint(4) NOT NULL DEFAULT '66' COMMENT 'Programa por el cual se otorga el beneficio',
  `subprograma` smallint(6) NOT NULL DEFAULT '364' COMMENT 'Determinar el subprograma, que serán los programas alineados a la clasificación del CONAC',
  `clave_presupuestal` varchar(45) DEFAULT '0' COMMENT 'Clave presupuestal',
  `tipo_apoyo` tinyint(4) NOT NULL COMMENT 'Prestación de servicio, subsidio, transferencia monetaria, apoyo en especie, capacitación o construcción y operación de infraestructura.',
  `caracteristica_apoyo` tinyint(4) DEFAULT '0' COMMENT 'Determinar la característica del apoyo, si es bicicleta, despensa, techo firme, lentes, beca, etc.',
  `importe_apoyo` varchar(12) DEFAULT '0' COMMENT 'Determinar el valor monetario del tipo de apoyo',
  `no_apoyos` int(11) DEFAULT '0' COMMENT 'Número de apoyos recibidos por programa',
  `fecha_apoyo` datetime NOT NULL COMMENT 'Fecha del(los) apoyo(s) recibido(s)',
  `periodicidad` tinyint(4) NOT NULL COMMENT 'Periodicidad de la entrega del apoyo',
  `origen_recurso` tinyint(4) DEFAULT '0' COMMENT 'Origen del recurso',
  PRIMARY KEY (`id`),
  KEY `curp` (`curp`),
  KEY `dependencia_idx` (`dependencia`),
  KEY `programa_idx` (`programa`),
  KEY `subprograma_idx` (`subprograma`),
  KEY `tipo_apoyo_idx` (`tipo_apoyo`),
  KEY `periodicidad_idx` (`periodicidad`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `apoyos_Y`
--

DROP TABLE IF EXISTS `apoyos_Y`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `apoyos_Y` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Identificador del registro',
  `curp` char(18) NOT NULL COMMENT 'curp del beneficiario',
  `dependencia` tinyint(4) NOT NULL COMMENT 'Dependencia o entidad ejecutora del programa',
  `programa` tinyint(4) NOT NULL DEFAULT '66' COMMENT 'Programa por el cual se otorga el beneficio',
  `subprograma` smallint(6) NOT NULL DEFAULT '364' COMMENT 'Determinar el subprograma, que serán los programas alineados a la clasificación del CONAC',
  `clave_presupuestal` varchar(45) DEFAULT '0' COMMENT 'Clave presupuestal',
  `tipo_apoyo` tinyint(4) NOT NULL COMMENT 'Prestación de servicio, subsidio, transferencia monetaria, apoyo en especie, capacitación o construcción y operación de infraestructura.',
  `caracteristica_apoyo` tinyint(4) DEFAULT '0' COMMENT 'Determinar la característica del apoyo, si es bicicleta, despensa, techo firme, lentes, beca, etc.',
  `importe_apoyo` varchar(12) DEFAULT '0' COMMENT 'Determinar el valor monetario del tipo de apoyo',
  `no_apoyos` int(11) DEFAULT '0' COMMENT 'Número de apoyos recibidos por programa',
  `fecha_apoyo` datetime NOT NULL COMMENT 'Fecha del(los) apoyo(s) recibido(s)',
  `periodicidad` tinyint(4) NOT NULL COMMENT 'Periodicidad de la entrega del apoyo',
  `origen_recurso` tinyint(4) DEFAULT '0' COMMENT 'Origen del recurso',
  PRIMARY KEY (`id`),
  KEY `curp` (`curp`),
  KEY `dependencia_idx` (`dependencia`),
  KEY `programa_idx` (`programa`),
  KEY `subprograma_idx` (`subprograma`),
  KEY `tipo_apoyo_idx` (`tipo_apoyo`),
  KEY `periodicidad_idx` (`periodicidad`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `apoyos_Z`
--

DROP TABLE IF EXISTS `apoyos_Z`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `apoyos_Z` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Identificador del registro',
  `curp` char(18) NOT NULL COMMENT 'curp del beneficiario',
  `dependencia` tinyint(4) NOT NULL COMMENT 'Dependencia o entidad ejecutora del programa',
  `programa` tinyint(4) NOT NULL DEFAULT '66' COMMENT 'Programa por el cual se otorga el beneficio',
  `subprograma` smallint(6) NOT NULL DEFAULT '364' COMMENT 'Determinar el subprograma, que serán los programas alineados a la clasificación del CONAC',
  `clave_presupuestal` varchar(45) DEFAULT '0' COMMENT 'Clave presupuestal',
  `tipo_apoyo` tinyint(4) NOT NULL COMMENT 'Prestación de servicio, subsidio, transferencia monetaria, apoyo en especie, capacitación o construcción y operación de infraestructura.',
  `caracteristica_apoyo` tinyint(4) DEFAULT '0' COMMENT 'Determinar la característica del apoyo, si es bicicleta, despensa, techo firme, lentes, beca, etc.',
  `importe_apoyo` varchar(12) DEFAULT '0' COMMENT 'Determinar el valor monetario del tipo de apoyo',
  `no_apoyos` int(11) DEFAULT '0' COMMENT 'Número de apoyos recibidos por programa',
  `fecha_apoyo` datetime NOT NULL COMMENT 'Fecha del(los) apoyo(s) recibido(s)',
  `periodicidad` tinyint(4) NOT NULL COMMENT 'Periodicidad de la entrega del apoyo',
  `origen_recurso` tinyint(4) DEFAULT '0' COMMENT 'Origen del recurso',
  PRIMARY KEY (`id`),
  KEY `curp` (`curp`),
  KEY `dependencia_idx` (`dependencia`),
  KEY `programa_idx` (`programa`),
  KEY `subprograma_idx` (`subprograma`),
  KEY `tipo_apoyo_idx` (`tipo_apoyo`),
  KEY `periodicidad_idx` (`periodicidad`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `ben_colectivos`
--

DROP TABLE IF EXISTS `ben_colectivos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ben_colectivos` (
  `clave` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(45) DEFAULT NULL,
  `rfc` varchar(45) DEFAULT NULL,
  `fecha_const` varchar(45) DEFAULT NULL,
  `documentos_const` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`clave`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Temporary table structure for view `ben_colectivos_lista`
--

DROP TABLE IF EXISTS `ben_colectivos_lista`;
/*!50001 DROP VIEW IF EXISTS `ben_colectivos_lista`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `ben_colectivos_lista` (
  `c` tinyint NOT NULL,
  `n` tinyint NOT NULL,
  `r` tinyint NOT NULL
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `beneficiarios_A`
--

DROP TABLE IF EXISTS `beneficiarios_A`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `beneficiarios_A` (
  `curp` char(18) NOT NULL COMMENT 'Clave alfanumérica que servirá como clave única de cada beneficiario en casos de beneficiarios individuales, en este caso la Clave Única del Registro de Población',
  `fecha_alta` datetime NOT NULL COMMENT 'Determinar la fecha en que se ingresó al beneficiaros al sistema.',
  `primer_ap` varchar(32) NOT NULL COMMENT 'Primer Apellido del Beneficiario',
  `segundo_ap` varchar(32) DEFAULT NULL COMMENT 'Segundo apellido del beneficiario',
  `nombre` varchar(64) NOT NULL COMMENT 'Nombre(s) del Beneficiario',
  `id_oficial` char(1) DEFAULT '7' COMMENT 'Identificación oficial que acredita la identidad del beneficiario',
  `id_municipio` char(2) NOT NULL,
  `id_localidad` varchar(10) NOT NULL,
  `id_cp` char(4) NOT NULL DEFAULT '3389',
  `id_tipo_vialidad` tinyint(4) DEFAULT '27',
  `vialidad_nombre` varchar(64) NOT NULL DEFAULT 'sin capturar',
  `entre_calles` text,
  `num_ext` varchar(8) NOT NULL DEFAULT '0',
  `num_int` varchar(8) DEFAULT NULL,
  `descripcion` text,
  `estudio_demografico` char(1) DEFAULT NULL,
  `perfil_sociodemografico` varchar(45) DEFAULT NULL,
  `estado_civil` tinyint(4) NOT NULL DEFAULT '6',
  `jefe_familia` char(1) NOT NULL DEFAULT '0',
  `tipo_trabajo` varchar(64) DEFAULT NULL,
  `ingreso_mensual` varchar(16) DEFAULT NULL,
  `integrantes_familia` tinyint(4) DEFAULT NULL,
  `dependientes_familia` int(11) DEFAULT NULL,
  `tipo_vivienda` tinyint(4) DEFAULT NULL,
  `num_habitantes_vivienda` tinyint(4) DEFAULT NULL,
  `serv_luz` char(1) DEFAULT NULL,
  `serv_agua` char(1) DEFAULT NULL,
  `serv_drenaje` char(1) DEFAULT NULL,
  `serv_telefono` char(1) DEFAULT NULL,
  `serv_gas` char(1) DEFAULT NULL,
  `serv_internet` char(1) DEFAULT NULL,
  `nivel_estudios` tinyint(4) DEFAULT NULL,
  `seguridad_social` tinyint(4) DEFAULT NULL,
  `discapacidad` char(1) DEFAULT NULL,
  `tipo_discapacidad` varchar(45) DEFAULT NULL,
  `beneficiario_colectivo` char(1) DEFAULT '0',
  `grupo_vulnerable` varchar(16) DEFAULT NULL,
  `email_beneficiario` varchar(128) DEFAULT NULL,
  `telefono_beneficiarios` char(11) DEFAULT NULL,
  `fecha_actualizacion` datetime NOT NULL,
  PRIMARY KEY (`curp`),
  UNIQUE KEY `curp_UNIQUE` (`curp`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `beneficiarios_B`
--

DROP TABLE IF EXISTS `beneficiarios_B`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `beneficiarios_B` (
  `curp` char(18) NOT NULL COMMENT 'Clave alfanumérica que servirá como clave única de cada beneficiario en casos de beneficiarios individuales, en este caso la Clave Única del Registro de Población',
  `fecha_alta` datetime NOT NULL COMMENT 'Determinar la fecha en que se ingresó al beneficiaros al sistema.',
  `primer_ap` varchar(32) NOT NULL COMMENT 'Primer Apellido del Beneficiario',
  `segundo_ap` varchar(32) DEFAULT NULL COMMENT 'Segundo apellido del beneficiario',
  `nombre` varchar(64) NOT NULL COMMENT 'Nombre(s) del Beneficiario',
  `id_oficial` char(1) DEFAULT '7' COMMENT 'Identificación oficial que acredita la identidad del beneficiario',
  `id_municipio` char(2) NOT NULL,
  `id_localidad` varchar(10) NOT NULL,
  `id_cp` char(4) NOT NULL DEFAULT '3389',
  `id_tipo_vialidad` tinyint(4) DEFAULT '27',
  `vialidad_nombre` varchar(64) NOT NULL DEFAULT 'sin capturar',
  `entre_calles` text,
  `num_ext` varchar(8) NOT NULL DEFAULT '0',
  `num_int` varchar(8) DEFAULT NULL,
  `descripcion` text,
  `estudio_demografico` char(1) DEFAULT NULL,
  `perfil_sociodemografico` varchar(45) DEFAULT NULL,
  `estado_civil` tinyint(4) NOT NULL DEFAULT '6',
  `jefe_familia` char(1) NOT NULL DEFAULT '0',
  `tipo_trabajo` varchar(64) DEFAULT NULL,
  `ingreso_mensual` varchar(16) DEFAULT NULL,
  `integrantes_familia` tinyint(4) DEFAULT NULL,
  `dependientes_familia` int(11) DEFAULT NULL,
  `tipo_vivienda` tinyint(4) DEFAULT NULL,
  `num_habitantes_vivienda` tinyint(4) DEFAULT NULL,
  `serv_luz` char(1) DEFAULT NULL,
  `serv_agua` char(1) DEFAULT NULL,
  `serv_drenaje` char(1) DEFAULT NULL,
  `serv_telefono` char(1) DEFAULT NULL,
  `serv_gas` char(1) DEFAULT NULL,
  `serv_internet` char(1) DEFAULT NULL,
  `nivel_estudios` tinyint(4) DEFAULT NULL,
  `seguridad_social` tinyint(4) DEFAULT NULL,
  `discapacidad` char(1) DEFAULT NULL,
  `tipo_discapacidad` varchar(45) DEFAULT NULL,
  `beneficiario_colectivo` char(1) DEFAULT '0',
  `grupo_vulnerable` varchar(16) DEFAULT NULL,
  `email_beneficiario` varchar(128) DEFAULT NULL,
  `telefono_beneficiarios` char(11) DEFAULT NULL,
  `fecha_actualizacion` datetime NOT NULL,
  PRIMARY KEY (`curp`),
  UNIQUE KEY `curp_UNIQUE` (`curp`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `beneficiarios_C`
--

DROP TABLE IF EXISTS `beneficiarios_C`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `beneficiarios_C` (
  `curp` char(18) NOT NULL COMMENT 'Clave alfanumérica que servirá como clave única de cada beneficiario en casos de beneficiarios individuales, en este caso la Clave Única del Registro de Población',
  `fecha_alta` datetime NOT NULL COMMENT 'Determinar la fecha en que se ingresó al beneficiaros al sistema.',
  `primer_ap` varchar(32) NOT NULL COMMENT 'Primer Apellido del Beneficiario',
  `segundo_ap` varchar(32) DEFAULT NULL COMMENT 'Segundo apellido del beneficiario',
  `nombre` varchar(64) NOT NULL COMMENT 'Nombre(s) del Beneficiario',
  `id_oficial` char(1) DEFAULT '7' COMMENT 'Identificación oficial que acredita la identidad del beneficiario',
  `id_municipio` char(2) NOT NULL,
  `id_localidad` varchar(10) NOT NULL,
  `id_cp` char(4) NOT NULL DEFAULT '3389',
  `id_tipo_vialidad` tinyint(4) DEFAULT '27',
  `vialidad_nombre` varchar(64) NOT NULL DEFAULT 'sin capturar',
  `entre_calles` text,
  `num_ext` varchar(8) NOT NULL DEFAULT '0',
  `num_int` varchar(8) DEFAULT NULL,
  `descripcion` text,
  `estudio_demografico` char(1) DEFAULT NULL,
  `perfil_sociodemografico` varchar(45) DEFAULT NULL,
  `estado_civil` tinyint(4) NOT NULL DEFAULT '6',
  `jefe_familia` char(1) NOT NULL DEFAULT '0',
  `tipo_trabajo` varchar(64) DEFAULT NULL,
  `ingreso_mensual` varchar(16) DEFAULT NULL,
  `integrantes_familia` tinyint(4) DEFAULT NULL,
  `dependientes_familia` int(11) DEFAULT NULL,
  `tipo_vivienda` tinyint(4) DEFAULT NULL,
  `num_habitantes_vivienda` tinyint(4) DEFAULT NULL,
  `serv_luz` char(1) DEFAULT NULL,
  `serv_agua` char(1) DEFAULT NULL,
  `serv_drenaje` char(1) DEFAULT NULL,
  `serv_telefono` char(1) DEFAULT NULL,
  `serv_gas` char(1) DEFAULT NULL,
  `serv_internet` char(1) DEFAULT NULL,
  `nivel_estudios` tinyint(4) DEFAULT NULL,
  `seguridad_social` tinyint(4) DEFAULT NULL,
  `discapacidad` char(1) DEFAULT NULL,
  `tipo_discapacidad` varchar(45) DEFAULT NULL,
  `beneficiario_colectivo` char(1) DEFAULT '0',
  `grupo_vulnerable` varchar(16) DEFAULT NULL,
  `email_beneficiario` varchar(128) DEFAULT NULL,
  `telefono_beneficiarios` char(11) DEFAULT NULL,
  `fecha_actualizacion` datetime NOT NULL,
  PRIMARY KEY (`curp`),
  UNIQUE KEY `curp_UNIQUE` (`curp`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `beneficiarios_D`
--

DROP TABLE IF EXISTS `beneficiarios_D`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `beneficiarios_D` (
  `curp` char(18) NOT NULL COMMENT 'Clave alfanumérica que servirá como clave única de cada beneficiario en casos de beneficiarios individuales, en este caso la Clave Única del Registro de Población',
  `fecha_alta` datetime NOT NULL COMMENT 'Determinar la fecha en que se ingresó al beneficiaros al sistema.',
  `primer_ap` varchar(32) NOT NULL COMMENT 'Primer Apellido del Beneficiario',
  `segundo_ap` varchar(32) DEFAULT NULL COMMENT 'Segundo apellido del beneficiario',
  `nombre` varchar(64) NOT NULL COMMENT 'Nombre(s) del Beneficiario',
  `id_oficial` char(1) DEFAULT '7' COMMENT 'Identificación oficial que acredita la identidad del beneficiario',
  `id_municipio` char(2) NOT NULL,
  `id_localidad` varchar(10) NOT NULL,
  `id_cp` char(4) NOT NULL DEFAULT '3389',
  `id_tipo_vialidad` tinyint(4) DEFAULT '27',
  `vialidad_nombre` varchar(64) NOT NULL DEFAULT 'sin capturar',
  `entre_calles` text,
  `num_ext` varchar(8) NOT NULL DEFAULT '0',
  `num_int` varchar(8) DEFAULT NULL,
  `descripcion` text,
  `estudio_demografico` char(1) DEFAULT NULL,
  `perfil_sociodemografico` varchar(45) DEFAULT NULL,
  `estado_civil` tinyint(4) NOT NULL DEFAULT '6',
  `jefe_familia` char(1) NOT NULL DEFAULT '0',
  `tipo_trabajo` varchar(64) DEFAULT NULL,
  `ingreso_mensual` varchar(16) DEFAULT NULL,
  `integrantes_familia` tinyint(4) DEFAULT NULL,
  `dependientes_familia` int(11) DEFAULT NULL,
  `tipo_vivienda` tinyint(4) DEFAULT NULL,
  `num_habitantes_vivienda` tinyint(4) DEFAULT NULL,
  `serv_luz` char(1) DEFAULT NULL,
  `serv_agua` char(1) DEFAULT NULL,
  `serv_drenaje` char(1) DEFAULT NULL,
  `serv_telefono` char(1) DEFAULT NULL,
  `serv_gas` char(1) DEFAULT NULL,
  `serv_internet` char(1) DEFAULT NULL,
  `nivel_estudios` tinyint(4) DEFAULT NULL,
  `seguridad_social` tinyint(4) DEFAULT NULL,
  `discapacidad` char(1) DEFAULT NULL,
  `tipo_discapacidad` varchar(45) DEFAULT NULL,
  `beneficiario_colectivo` char(1) DEFAULT '0',
  `grupo_vulnerable` varchar(16) DEFAULT NULL,
  `email_beneficiario` varchar(128) DEFAULT NULL,
  `telefono_beneficiarios` char(11) DEFAULT NULL,
  `fecha_actualizacion` datetime NOT NULL,
  PRIMARY KEY (`curp`),
  UNIQUE KEY `curp_UNIQUE` (`curp`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `beneficiarios_E`
--

DROP TABLE IF EXISTS `beneficiarios_E`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `beneficiarios_E` (
  `curp` char(18) NOT NULL COMMENT 'Clave alfanumérica que servirá como clave única de cada beneficiario en casos de beneficiarios individuales, en este caso la Clave Única del Registro de Población',
  `fecha_alta` datetime NOT NULL COMMENT 'Determinar la fecha en que se ingresó al beneficiaros al sistema.',
  `primer_ap` varchar(32) NOT NULL COMMENT 'Primer Apellido del Beneficiario',
  `segundo_ap` varchar(32) DEFAULT NULL COMMENT 'Segundo apellido del beneficiario',
  `nombre` varchar(64) NOT NULL COMMENT 'Nombre(s) del Beneficiario',
  `id_oficial` char(1) DEFAULT '7' COMMENT 'Identificación oficial que acredita la identidad del beneficiario',
  `id_municipio` char(2) NOT NULL,
  `id_localidad` varchar(10) NOT NULL,
  `id_cp` char(4) NOT NULL DEFAULT '3389',
  `id_tipo_vialidad` tinyint(4) DEFAULT '27',
  `vialidad_nombre` varchar(64) NOT NULL DEFAULT 'sin capturar',
  `entre_calles` text,
  `num_ext` varchar(8) NOT NULL DEFAULT '0',
  `num_int` varchar(8) DEFAULT NULL,
  `descripcion` text,
  `estudio_demografico` char(1) DEFAULT NULL,
  `perfil_sociodemografico` varchar(45) DEFAULT NULL,
  `estado_civil` tinyint(4) NOT NULL DEFAULT '6',
  `jefe_familia` char(1) NOT NULL DEFAULT '0',
  `tipo_trabajo` varchar(64) DEFAULT NULL,
  `ingreso_mensual` varchar(16) DEFAULT NULL,
  `integrantes_familia` tinyint(4) DEFAULT NULL,
  `dependientes_familia` int(11) DEFAULT NULL,
  `tipo_vivienda` tinyint(4) DEFAULT NULL,
  `num_habitantes_vivienda` tinyint(4) DEFAULT NULL,
  `serv_luz` char(1) DEFAULT NULL,
  `serv_agua` char(1) DEFAULT NULL,
  `serv_drenaje` char(1) DEFAULT NULL,
  `serv_telefono` char(1) DEFAULT NULL,
  `serv_gas` char(1) DEFAULT NULL,
  `serv_internet` char(1) DEFAULT NULL,
  `nivel_estudios` tinyint(4) DEFAULT NULL,
  `seguridad_social` tinyint(4) DEFAULT NULL,
  `discapacidad` char(1) DEFAULT NULL,
  `tipo_discapacidad` varchar(45) DEFAULT NULL,
  `beneficiario_colectivo` char(1) DEFAULT '0',
  `grupo_vulnerable` varchar(16) DEFAULT NULL,
  `email_beneficiario` varchar(128) DEFAULT NULL,
  `telefono_beneficiarios` char(11) DEFAULT NULL,
  `fecha_actualizacion` datetime NOT NULL,
  PRIMARY KEY (`curp`),
  UNIQUE KEY `curp_UNIQUE` (`curp`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `beneficiarios_F`
--

DROP TABLE IF EXISTS `beneficiarios_F`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `beneficiarios_F` (
  `curp` char(18) NOT NULL COMMENT 'Clave alfanumérica que servirá como clave única de cada beneficiario en casos de beneficiarios individuales, en este caso la Clave Única del Registro de Población',
  `fecha_alta` datetime NOT NULL COMMENT 'Determinar la fecha en que se ingresó al beneficiaros al sistema.',
  `primer_ap` varchar(32) NOT NULL COMMENT 'Primer Apellido del Beneficiario',
  `segundo_ap` varchar(32) DEFAULT NULL COMMENT 'Segundo apellido del beneficiario',
  `nombre` varchar(64) NOT NULL COMMENT 'Nombre(s) del Beneficiario',
  `id_oficial` char(1) DEFAULT '7' COMMENT 'Identificación oficial que acredita la identidad del beneficiario',
  `id_municipio` char(2) NOT NULL,
  `id_localidad` varchar(10) NOT NULL,
  `id_cp` char(4) NOT NULL DEFAULT '3389',
  `id_tipo_vialidad` tinyint(4) DEFAULT '27',
  `vialidad_nombre` varchar(64) NOT NULL DEFAULT 'sin capturar',
  `entre_calles` text,
  `num_ext` varchar(8) NOT NULL DEFAULT '0',
  `num_int` varchar(8) DEFAULT NULL,
  `descripcion` text,
  `estudio_demografico` char(1) DEFAULT NULL,
  `perfil_sociodemografico` varchar(45) DEFAULT NULL,
  `estado_civil` tinyint(4) NOT NULL DEFAULT '6',
  `jefe_familia` char(1) NOT NULL DEFAULT '0',
  `tipo_trabajo` varchar(64) DEFAULT NULL,
  `ingreso_mensual` varchar(16) DEFAULT NULL,
  `integrantes_familia` tinyint(4) DEFAULT NULL,
  `dependientes_familia` int(11) DEFAULT NULL,
  `tipo_vivienda` tinyint(4) DEFAULT NULL,
  `num_habitantes_vivienda` tinyint(4) DEFAULT NULL,
  `serv_luz` char(1) DEFAULT NULL,
  `serv_agua` char(1) DEFAULT NULL,
  `serv_drenaje` char(1) DEFAULT NULL,
  `serv_telefono` char(1) DEFAULT NULL,
  `serv_gas` char(1) DEFAULT NULL,
  `serv_internet` char(1) DEFAULT NULL,
  `nivel_estudios` tinyint(4) DEFAULT NULL,
  `seguridad_social` tinyint(4) DEFAULT NULL,
  `discapacidad` char(1) DEFAULT NULL,
  `tipo_discapacidad` varchar(45) DEFAULT NULL,
  `beneficiario_colectivo` char(1) DEFAULT '0',
  `grupo_vulnerable` varchar(16) DEFAULT NULL,
  `email_beneficiario` varchar(128) DEFAULT NULL,
  `telefono_beneficiarios` char(11) DEFAULT NULL,
  `fecha_actualizacion` datetime NOT NULL,
  PRIMARY KEY (`curp`),
  UNIQUE KEY `curp_UNIQUE` (`curp`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `beneficiarios_G`
--

DROP TABLE IF EXISTS `beneficiarios_G`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `beneficiarios_G` (
  `curp` char(18) NOT NULL COMMENT 'Clave alfanumérica que servirá como clave única de cada beneficiario en casos de beneficiarios individuales, en este caso la Clave Única del Registro de Población',
  `fecha_alta` datetime NOT NULL COMMENT 'Determinar la fecha en que se ingresó al beneficiaros al sistema.',
  `primer_ap` varchar(32) NOT NULL COMMENT 'Primer Apellido del Beneficiario',
  `segundo_ap` varchar(32) DEFAULT NULL COMMENT 'Segundo apellido del beneficiario',
  `nombre` varchar(64) NOT NULL COMMENT 'Nombre(s) del Beneficiario',
  `id_oficial` char(1) DEFAULT '7' COMMENT 'Identificación oficial que acredita la identidad del beneficiario',
  `id_municipio` char(2) NOT NULL,
  `id_localidad` varchar(10) NOT NULL,
  `id_cp` char(4) NOT NULL DEFAULT '3389',
  `id_tipo_vialidad` tinyint(4) DEFAULT '27',
  `vialidad_nombre` varchar(64) NOT NULL DEFAULT 'sin capturar',
  `entre_calles` text,
  `num_ext` varchar(8) NOT NULL DEFAULT '0',
  `num_int` varchar(8) DEFAULT NULL,
  `descripcion` text,
  `estudio_demografico` char(1) DEFAULT NULL,
  `perfil_sociodemografico` varchar(45) DEFAULT NULL,
  `estado_civil` tinyint(4) NOT NULL DEFAULT '6',
  `jefe_familia` char(1) NOT NULL DEFAULT '0',
  `tipo_trabajo` varchar(64) DEFAULT NULL,
  `ingreso_mensual` varchar(16) DEFAULT NULL,
  `integrantes_familia` tinyint(4) DEFAULT NULL,
  `dependientes_familia` int(11) DEFAULT NULL,
  `tipo_vivienda` tinyint(4) DEFAULT NULL,
  `num_habitantes_vivienda` tinyint(4) DEFAULT NULL,
  `serv_luz` char(1) DEFAULT NULL,
  `serv_agua` char(1) DEFAULT NULL,
  `serv_drenaje` char(1) DEFAULT NULL,
  `serv_telefono` char(1) DEFAULT NULL,
  `serv_gas` char(1) DEFAULT NULL,
  `serv_internet` char(1) DEFAULT NULL,
  `nivel_estudios` tinyint(4) DEFAULT NULL,
  `seguridad_social` tinyint(4) DEFAULT NULL,
  `discapacidad` char(1) DEFAULT NULL,
  `tipo_discapacidad` varchar(45) DEFAULT NULL,
  `beneficiario_colectivo` char(1) DEFAULT '0',
  `grupo_vulnerable` varchar(16) DEFAULT NULL,
  `email_beneficiario` varchar(128) DEFAULT NULL,
  `telefono_beneficiarios` char(11) DEFAULT NULL,
  `fecha_actualizacion` datetime NOT NULL,
  PRIMARY KEY (`curp`),
  UNIQUE KEY `curp_UNIQUE` (`curp`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `beneficiarios_H`
--

DROP TABLE IF EXISTS `beneficiarios_H`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `beneficiarios_H` (
  `curp` char(18) NOT NULL COMMENT 'Clave alfanumérica que servirá como clave única de cada beneficiario en casos de beneficiarios individuales, en este caso la Clave Única del Registro de Población',
  `fecha_alta` datetime NOT NULL COMMENT 'Determinar la fecha en que se ingresó al beneficiaros al sistema.',
  `primer_ap` varchar(32) NOT NULL COMMENT 'Primer Apellido del Beneficiario',
  `segundo_ap` varchar(32) DEFAULT NULL COMMENT 'Segundo apellido del beneficiario',
  `nombre` varchar(64) NOT NULL COMMENT 'Nombre(s) del Beneficiario',
  `id_oficial` char(1) DEFAULT '7' COMMENT 'Identificación oficial que acredita la identidad del beneficiario',
  `id_municipio` char(2) NOT NULL,
  `id_localidad` varchar(10) NOT NULL,
  `id_cp` char(4) NOT NULL DEFAULT '3389',
  `id_tipo_vialidad` tinyint(4) DEFAULT '27',
  `vialidad_nombre` varchar(64) NOT NULL DEFAULT 'sin capturar',
  `entre_calles` text,
  `num_ext` varchar(8) NOT NULL DEFAULT '0',
  `num_int` varchar(8) DEFAULT NULL,
  `descripcion` text,
  `estudio_demografico` char(1) DEFAULT NULL,
  `perfil_sociodemografico` varchar(45) DEFAULT NULL,
  `estado_civil` tinyint(4) NOT NULL DEFAULT '6',
  `jefe_familia` char(1) NOT NULL DEFAULT '0',
  `tipo_trabajo` varchar(64) DEFAULT NULL,
  `ingreso_mensual` varchar(16) DEFAULT NULL,
  `integrantes_familia` tinyint(4) DEFAULT NULL,
  `dependientes_familia` int(11) DEFAULT NULL,
  `tipo_vivienda` tinyint(4) DEFAULT NULL,
  `num_habitantes_vivienda` tinyint(4) DEFAULT NULL,
  `serv_luz` char(1) DEFAULT NULL,
  `serv_agua` char(1) DEFAULT NULL,
  `serv_drenaje` char(1) DEFAULT NULL,
  `serv_telefono` char(1) DEFAULT NULL,
  `serv_gas` char(1) DEFAULT NULL,
  `serv_internet` char(1) DEFAULT NULL,
  `nivel_estudios` tinyint(4) DEFAULT NULL,
  `seguridad_social` tinyint(4) DEFAULT NULL,
  `discapacidad` char(1) DEFAULT NULL,
  `tipo_discapacidad` varchar(45) DEFAULT NULL,
  `beneficiario_colectivo` char(1) DEFAULT '0',
  `grupo_vulnerable` varchar(16) DEFAULT NULL,
  `email_beneficiario` varchar(128) DEFAULT NULL,
  `telefono_beneficiarios` char(11) DEFAULT NULL,
  `fecha_actualizacion` datetime NOT NULL,
  PRIMARY KEY (`curp`),
  UNIQUE KEY `curp_UNIQUE` (`curp`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `beneficiarios_I`
--

DROP TABLE IF EXISTS `beneficiarios_I`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `beneficiarios_I` (
  `curp` char(18) NOT NULL COMMENT 'Clave alfanumérica que servirá como clave única de cada beneficiario en casos de beneficiarios individuales, en este caso la Clave Única del Registro de Población',
  `fecha_alta` datetime NOT NULL COMMENT 'Determinar la fecha en que se ingresó al beneficiaros al sistema.',
  `primer_ap` varchar(32) NOT NULL COMMENT 'Primer Apellido del Beneficiario',
  `segundo_ap` varchar(32) DEFAULT NULL COMMENT 'Segundo apellido del beneficiario',
  `nombre` varchar(64) NOT NULL COMMENT 'Nombre(s) del Beneficiario',
  `id_oficial` char(1) DEFAULT '7' COMMENT 'Identificación oficial que acredita la identidad del beneficiario',
  `id_municipio` char(2) NOT NULL,
  `id_localidad` varchar(10) NOT NULL,
  `id_cp` char(4) NOT NULL DEFAULT '3389',
  `id_tipo_vialidad` tinyint(4) DEFAULT '27',
  `vialidad_nombre` varchar(64) NOT NULL DEFAULT 'sin capturar',
  `entre_calles` text,
  `num_ext` varchar(8) NOT NULL DEFAULT '0',
  `num_int` varchar(8) DEFAULT NULL,
  `descripcion` text,
  `estudio_demografico` char(1) DEFAULT NULL,
  `perfil_sociodemografico` varchar(45) DEFAULT NULL,
  `estado_civil` tinyint(4) NOT NULL DEFAULT '6',
  `jefe_familia` char(1) NOT NULL DEFAULT '0',
  `tipo_trabajo` varchar(64) DEFAULT NULL,
  `ingreso_mensual` varchar(16) DEFAULT NULL,
  `integrantes_familia` tinyint(4) DEFAULT NULL,
  `dependientes_familia` int(11) DEFAULT NULL,
  `tipo_vivienda` tinyint(4) DEFAULT NULL,
  `num_habitantes_vivienda` tinyint(4) DEFAULT NULL,
  `serv_luz` char(1) DEFAULT NULL,
  `serv_agua` char(1) DEFAULT NULL,
  `serv_drenaje` char(1) DEFAULT NULL,
  `serv_telefono` char(1) DEFAULT NULL,
  `serv_gas` char(1) DEFAULT NULL,
  `serv_internet` char(1) DEFAULT NULL,
  `nivel_estudios` tinyint(4) DEFAULT NULL,
  `seguridad_social` tinyint(4) DEFAULT NULL,
  `discapacidad` char(1) DEFAULT NULL,
  `tipo_discapacidad` varchar(45) DEFAULT NULL,
  `beneficiario_colectivo` char(1) DEFAULT '0',
  `grupo_vulnerable` varchar(16) DEFAULT NULL,
  `email_beneficiario` varchar(128) DEFAULT NULL,
  `telefono_beneficiarios` char(11) DEFAULT NULL,
  `fecha_actualizacion` datetime NOT NULL,
  PRIMARY KEY (`curp`),
  UNIQUE KEY `curp_UNIQUE` (`curp`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `beneficiarios_J`
--

DROP TABLE IF EXISTS `beneficiarios_J`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `beneficiarios_J` (
  `curp` char(18) NOT NULL COMMENT 'Clave alfanumérica que servirá como clave única de cada beneficiario en casos de beneficiarios individuales, en este caso la Clave Única del Registro de Población',
  `fecha_alta` datetime NOT NULL COMMENT 'Determinar la fecha en que se ingresó al beneficiaros al sistema.',
  `primer_ap` varchar(32) NOT NULL COMMENT 'Primer Apellido del Beneficiario',
  `segundo_ap` varchar(32) DEFAULT NULL COMMENT 'Segundo apellido del beneficiario',
  `nombre` varchar(64) NOT NULL COMMENT 'Nombre(s) del Beneficiario',
  `id_oficial` char(1) DEFAULT '7' COMMENT 'Identificación oficial que acredita la identidad del beneficiario',
  `id_municipio` char(2) NOT NULL,
  `id_localidad` varchar(10) NOT NULL,
  `id_cp` char(4) NOT NULL DEFAULT '3389',
  `id_tipo_vialidad` tinyint(4) DEFAULT '27',
  `vialidad_nombre` varchar(64) NOT NULL DEFAULT 'sin capturar',
  `entre_calles` text,
  `num_ext` varchar(8) NOT NULL DEFAULT '0',
  `num_int` varchar(8) DEFAULT NULL,
  `descripcion` text,
  `estudio_demografico` char(1) DEFAULT NULL,
  `perfil_sociodemografico` varchar(45) DEFAULT NULL,
  `estado_civil` tinyint(4) NOT NULL DEFAULT '6',
  `jefe_familia` char(1) NOT NULL DEFAULT '0',
  `tipo_trabajo` varchar(64) DEFAULT NULL,
  `ingreso_mensual` varchar(16) DEFAULT NULL,
  `integrantes_familia` tinyint(4) DEFAULT NULL,
  `dependientes_familia` int(11) DEFAULT NULL,
  `tipo_vivienda` tinyint(4) DEFAULT NULL,
  `num_habitantes_vivienda` tinyint(4) DEFAULT NULL,
  `serv_luz` char(1) DEFAULT NULL,
  `serv_agua` char(1) DEFAULT NULL,
  `serv_drenaje` char(1) DEFAULT NULL,
  `serv_telefono` char(1) DEFAULT NULL,
  `serv_gas` char(1) DEFAULT NULL,
  `serv_internet` char(1) DEFAULT NULL,
  `nivel_estudios` tinyint(4) DEFAULT NULL,
  `seguridad_social` tinyint(4) DEFAULT NULL,
  `discapacidad` char(1) DEFAULT NULL,
  `tipo_discapacidad` varchar(45) DEFAULT NULL,
  `beneficiario_colectivo` char(1) DEFAULT '0',
  `grupo_vulnerable` varchar(16) DEFAULT NULL,
  `email_beneficiario` varchar(128) DEFAULT NULL,
  `telefono_beneficiarios` char(11) DEFAULT NULL,
  `fecha_actualizacion` datetime NOT NULL,
  PRIMARY KEY (`curp`),
  UNIQUE KEY `curp_UNIQUE` (`curp`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `beneficiarios_K`
--

DROP TABLE IF EXISTS `beneficiarios_K`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `beneficiarios_K` (
  `curp` char(18) NOT NULL COMMENT 'Clave alfanumérica que servirá como clave única de cada beneficiario en casos de beneficiarios individuales, en este caso la Clave Única del Registro de Población',
  `fecha_alta` datetime NOT NULL COMMENT 'Determinar la fecha en que se ingresó al beneficiaros al sistema.',
  `primer_ap` varchar(32) NOT NULL COMMENT 'Primer Apellido del Beneficiario',
  `segundo_ap` varchar(32) DEFAULT NULL COMMENT 'Segundo apellido del beneficiario',
  `nombre` varchar(64) NOT NULL COMMENT 'Nombre(s) del Beneficiario',
  `id_oficial` char(1) DEFAULT '7' COMMENT 'Identificación oficial que acredita la identidad del beneficiario',
  `id_municipio` char(2) NOT NULL,
  `id_localidad` varchar(10) NOT NULL,
  `id_cp` char(4) NOT NULL DEFAULT '3389',
  `id_tipo_vialidad` tinyint(4) DEFAULT '27',
  `vialidad_nombre` varchar(64) NOT NULL DEFAULT 'sin capturar',
  `entre_calles` text,
  `num_ext` varchar(8) NOT NULL DEFAULT '0',
  `num_int` varchar(8) DEFAULT NULL,
  `descripcion` text,
  `estudio_demografico` char(1) DEFAULT NULL,
  `perfil_sociodemografico` varchar(45) DEFAULT NULL,
  `estado_civil` tinyint(4) NOT NULL DEFAULT '6',
  `jefe_familia` char(1) NOT NULL DEFAULT '0',
  `tipo_trabajo` varchar(64) DEFAULT NULL,
  `ingreso_mensual` varchar(16) DEFAULT NULL,
  `integrantes_familia` tinyint(4) DEFAULT NULL,
  `dependientes_familia` int(11) DEFAULT NULL,
  `tipo_vivienda` tinyint(4) DEFAULT NULL,
  `num_habitantes_vivienda` tinyint(4) DEFAULT NULL,
  `serv_luz` char(1) DEFAULT NULL,
  `serv_agua` char(1) DEFAULT NULL,
  `serv_drenaje` char(1) DEFAULT NULL,
  `serv_telefono` char(1) DEFAULT NULL,
  `serv_gas` char(1) DEFAULT NULL,
  `serv_internet` char(1) DEFAULT NULL,
  `nivel_estudios` tinyint(4) DEFAULT NULL,
  `seguridad_social` tinyint(4) DEFAULT NULL,
  `discapacidad` char(1) DEFAULT NULL,
  `tipo_discapacidad` varchar(45) DEFAULT NULL,
  `beneficiario_colectivo` char(1) DEFAULT '0',
  `grupo_vulnerable` varchar(16) DEFAULT NULL,
  `email_beneficiario` varchar(128) DEFAULT NULL,
  `telefono_beneficiarios` char(11) DEFAULT NULL,
  `fecha_actualizacion` datetime NOT NULL,
  PRIMARY KEY (`curp`),
  UNIQUE KEY `curp_UNIQUE` (`curp`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `beneficiarios_L`
--

DROP TABLE IF EXISTS `beneficiarios_L`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `beneficiarios_L` (
  `curp` char(18) NOT NULL COMMENT 'Clave alfanumérica que servirá como clave única de cada beneficiario en casos de beneficiarios individuales, en este caso la Clave Única del Registro de Población',
  `fecha_alta` datetime NOT NULL COMMENT 'Determinar la fecha en que se ingresó al beneficiaros al sistema.',
  `primer_ap` varchar(32) NOT NULL COMMENT 'Primer Apellido del Beneficiario',
  `segundo_ap` varchar(32) DEFAULT NULL COMMENT 'Segundo apellido del beneficiario',
  `nombre` varchar(64) NOT NULL COMMENT 'Nombre(s) del Beneficiario',
  `id_oficial` char(1) DEFAULT '7' COMMENT 'Identificación oficial que acredita la identidad del beneficiario',
  `id_municipio` char(2) NOT NULL,
  `id_localidad` varchar(10) NOT NULL,
  `id_cp` char(4) NOT NULL DEFAULT '3389',
  `id_tipo_vialidad` tinyint(4) DEFAULT '27',
  `vialidad_nombre` varchar(64) NOT NULL DEFAULT 'sin capturar',
  `entre_calles` text,
  `num_ext` varchar(8) NOT NULL DEFAULT '0',
  `num_int` varchar(8) DEFAULT NULL,
  `descripcion` text,
  `estudio_demografico` char(1) DEFAULT NULL,
  `perfil_sociodemografico` varchar(45) DEFAULT NULL,
  `estado_civil` tinyint(4) NOT NULL DEFAULT '6',
  `jefe_familia` char(1) NOT NULL DEFAULT '0',
  `tipo_trabajo` varchar(64) DEFAULT NULL,
  `ingreso_mensual` varchar(16) DEFAULT NULL,
  `integrantes_familia` tinyint(4) DEFAULT NULL,
  `dependientes_familia` int(11) DEFAULT NULL,
  `tipo_vivienda` tinyint(4) DEFAULT NULL,
  `num_habitantes_vivienda` tinyint(4) DEFAULT NULL,
  `serv_luz` char(1) DEFAULT NULL,
  `serv_agua` char(1) DEFAULT NULL,
  `serv_drenaje` char(1) DEFAULT NULL,
  `serv_telefono` char(1) DEFAULT NULL,
  `serv_gas` char(1) DEFAULT NULL,
  `serv_internet` char(1) DEFAULT NULL,
  `nivel_estudios` tinyint(4) DEFAULT NULL,
  `seguridad_social` tinyint(4) DEFAULT NULL,
  `discapacidad` char(1) DEFAULT NULL,
  `tipo_discapacidad` varchar(45) DEFAULT NULL,
  `beneficiario_colectivo` char(1) DEFAULT '0',
  `grupo_vulnerable` varchar(16) DEFAULT NULL,
  `email_beneficiario` varchar(128) DEFAULT NULL,
  `telefono_beneficiarios` char(11) DEFAULT NULL,
  `fecha_actualizacion` datetime NOT NULL,
  PRIMARY KEY (`curp`),
  UNIQUE KEY `curp_UNIQUE` (`curp`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `beneficiarios_M`
--

DROP TABLE IF EXISTS `beneficiarios_M`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `beneficiarios_M` (
  `curp` char(18) NOT NULL COMMENT 'Clave alfanumérica que servirá como clave única de cada beneficiario en casos de beneficiarios individuales, en este caso la Clave Única del Registro de Población',
  `fecha_alta` datetime NOT NULL COMMENT 'Determinar la fecha en que se ingresó al beneficiaros al sistema.',
  `primer_ap` varchar(32) NOT NULL COMMENT 'Primer Apellido del Beneficiario',
  `segundo_ap` varchar(32) DEFAULT NULL COMMENT 'Segundo apellido del beneficiario',
  `nombre` varchar(64) NOT NULL COMMENT 'Nombre(s) del Beneficiario',
  `id_oficial` char(1) DEFAULT '7' COMMENT 'Identificación oficial que acredita la identidad del beneficiario',
  `id_municipio` char(2) NOT NULL,
  `id_localidad` varchar(10) NOT NULL,
  `id_cp` char(4) NOT NULL DEFAULT '3389',
  `id_tipo_vialidad` tinyint(4) DEFAULT '27',
  `vialidad_nombre` varchar(64) NOT NULL DEFAULT 'sin capturar',
  `entre_calles` text,
  `num_ext` varchar(8) NOT NULL DEFAULT '0',
  `num_int` varchar(8) DEFAULT NULL,
  `descripcion` text,
  `estudio_demografico` char(1) DEFAULT NULL,
  `perfil_sociodemografico` varchar(45) DEFAULT NULL,
  `estado_civil` tinyint(4) NOT NULL DEFAULT '6',
  `jefe_familia` char(1) NOT NULL DEFAULT '0',
  `tipo_trabajo` varchar(64) DEFAULT NULL,
  `ingreso_mensual` varchar(16) DEFAULT NULL,
  `integrantes_familia` tinyint(4) DEFAULT NULL,
  `dependientes_familia` int(11) DEFAULT NULL,
  `tipo_vivienda` tinyint(4) DEFAULT NULL,
  `num_habitantes_vivienda` tinyint(4) DEFAULT NULL,
  `serv_luz` char(1) DEFAULT NULL,
  `serv_agua` char(1) DEFAULT NULL,
  `serv_drenaje` char(1) DEFAULT NULL,
  `serv_telefono` char(1) DEFAULT NULL,
  `serv_gas` char(1) DEFAULT NULL,
  `serv_internet` char(1) DEFAULT NULL,
  `nivel_estudios` tinyint(4) DEFAULT NULL,
  `seguridad_social` tinyint(4) DEFAULT NULL,
  `discapacidad` char(1) DEFAULT NULL,
  `tipo_discapacidad` varchar(45) DEFAULT NULL,
  `beneficiario_colectivo` char(1) DEFAULT '0',
  `grupo_vulnerable` varchar(16) DEFAULT NULL,
  `email_beneficiario` varchar(128) DEFAULT NULL,
  `telefono_beneficiarios` char(11) DEFAULT NULL,
  `fecha_actualizacion` datetime NOT NULL,
  PRIMARY KEY (`curp`),
  UNIQUE KEY `curp_UNIQUE` (`curp`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `beneficiarios_N`
--

DROP TABLE IF EXISTS `beneficiarios_N`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `beneficiarios_N` (
  `curp` char(18) NOT NULL COMMENT 'Clave alfanumérica que servirá como clave única de cada beneficiario en casos de beneficiarios individuales, en este caso la Clave Única del Registro de Población',
  `fecha_alta` datetime NOT NULL COMMENT 'Determinar la fecha en que se ingresó al beneficiaros al sistema.',
  `primer_ap` varchar(32) NOT NULL COMMENT 'Primer Apellido del Beneficiario',
  `segundo_ap` varchar(32) DEFAULT NULL COMMENT 'Segundo apellido del beneficiario',
  `nombre` varchar(64) NOT NULL COMMENT 'Nombre(s) del Beneficiario',
  `id_oficial` char(1) DEFAULT '7' COMMENT 'Identificación oficial que acredita la identidad del beneficiario',
  `id_municipio` char(2) NOT NULL,
  `id_localidad` varchar(10) NOT NULL,
  `id_cp` char(4) NOT NULL DEFAULT '3389',
  `id_tipo_vialidad` tinyint(4) DEFAULT '27',
  `vialidad_nombre` varchar(64) NOT NULL DEFAULT 'sin capturar',
  `entre_calles` text,
  `num_ext` varchar(8) NOT NULL DEFAULT '0',
  `num_int` varchar(8) DEFAULT NULL,
  `descripcion` text,
  `estudio_demografico` char(1) DEFAULT NULL,
  `perfil_sociodemografico` varchar(45) DEFAULT NULL,
  `estado_civil` tinyint(4) NOT NULL DEFAULT '6',
  `jefe_familia` char(1) NOT NULL DEFAULT '0',
  `tipo_trabajo` varchar(64) DEFAULT NULL,
  `ingreso_mensual` varchar(16) DEFAULT NULL,
  `integrantes_familia` tinyint(4) DEFAULT NULL,
  `dependientes_familia` int(11) DEFAULT NULL,
  `tipo_vivienda` tinyint(4) DEFAULT NULL,
  `num_habitantes_vivienda` tinyint(4) DEFAULT NULL,
  `serv_luz` char(1) DEFAULT NULL,
  `serv_agua` char(1) DEFAULT NULL,
  `serv_drenaje` char(1) DEFAULT NULL,
  `serv_telefono` char(1) DEFAULT NULL,
  `serv_gas` char(1) DEFAULT NULL,
  `serv_internet` char(1) DEFAULT NULL,
  `nivel_estudios` tinyint(4) DEFAULT NULL,
  `seguridad_social` tinyint(4) DEFAULT NULL,
  `discapacidad` char(1) DEFAULT NULL,
  `tipo_discapacidad` varchar(45) DEFAULT NULL,
  `beneficiario_colectivo` char(1) DEFAULT '0',
  `grupo_vulnerable` varchar(16) DEFAULT NULL,
  `email_beneficiario` varchar(128) DEFAULT NULL,
  `telefono_beneficiarios` char(11) DEFAULT NULL,
  `fecha_actualizacion` datetime NOT NULL,
  PRIMARY KEY (`curp`),
  UNIQUE KEY `curp_UNIQUE` (`curp`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `beneficiarios_O`
--

DROP TABLE IF EXISTS `beneficiarios_O`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `beneficiarios_O` (
  `curp` char(18) NOT NULL COMMENT 'Clave alfanumérica que servirá como clave única de cada beneficiario en casos de beneficiarios individuales, en este caso la Clave Única del Registro de Población',
  `fecha_alta` datetime NOT NULL COMMENT 'Determinar la fecha en que se ingresó al beneficiaros al sistema.',
  `primer_ap` varchar(32) NOT NULL COMMENT 'Primer Apellido del Beneficiario',
  `segundo_ap` varchar(32) DEFAULT NULL COMMENT 'Segundo apellido del beneficiario',
  `nombre` varchar(64) NOT NULL COMMENT 'Nombre(s) del Beneficiario',
  `id_oficial` char(1) DEFAULT '7' COMMENT 'Identificación oficial que acredita la identidad del beneficiario',
  `id_municipio` char(2) NOT NULL,
  `id_localidad` varchar(10) NOT NULL,
  `id_cp` char(4) NOT NULL DEFAULT '3389',
  `id_tipo_vialidad` tinyint(4) DEFAULT '27',
  `vialidad_nombre` varchar(64) NOT NULL DEFAULT 'sin capturar',
  `entre_calles` text,
  `num_ext` varchar(8) NOT NULL DEFAULT '0',
  `num_int` varchar(8) DEFAULT NULL,
  `descripcion` text,
  `estudio_demografico` char(1) DEFAULT NULL,
  `perfil_sociodemografico` varchar(45) DEFAULT NULL,
  `estado_civil` tinyint(4) NOT NULL DEFAULT '6',
  `jefe_familia` char(1) NOT NULL DEFAULT '0',
  `tipo_trabajo` varchar(64) DEFAULT NULL,
  `ingreso_mensual` varchar(16) DEFAULT NULL,
  `integrantes_familia` tinyint(4) DEFAULT NULL,
  `dependientes_familia` int(11) DEFAULT NULL,
  `tipo_vivienda` tinyint(4) DEFAULT NULL,
  `num_habitantes_vivienda` tinyint(4) DEFAULT NULL,
  `serv_luz` char(1) DEFAULT NULL,
  `serv_agua` char(1) DEFAULT NULL,
  `serv_drenaje` char(1) DEFAULT NULL,
  `serv_telefono` char(1) DEFAULT NULL,
  `serv_gas` char(1) DEFAULT NULL,
  `serv_internet` char(1) DEFAULT NULL,
  `nivel_estudios` tinyint(4) DEFAULT NULL,
  `seguridad_social` tinyint(4) DEFAULT NULL,
  `discapacidad` char(1) DEFAULT NULL,
  `tipo_discapacidad` varchar(45) DEFAULT NULL,
  `beneficiario_colectivo` char(1) DEFAULT '0',
  `grupo_vulnerable` varchar(16) DEFAULT NULL,
  `email_beneficiario` varchar(128) DEFAULT NULL,
  `telefono_beneficiarios` char(11) DEFAULT NULL,
  `fecha_actualizacion` datetime NOT NULL,
  PRIMARY KEY (`curp`),
  UNIQUE KEY `curp_UNIQUE` (`curp`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `beneficiarios_P`
--

DROP TABLE IF EXISTS `beneficiarios_P`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `beneficiarios_P` (
  `curp` char(18) NOT NULL COMMENT 'Clave alfanumérica que servirá como clave única de cada beneficiario en casos de beneficiarios individuales, en este caso la Clave Única del Registro de Población',
  `fecha_alta` datetime NOT NULL COMMENT 'Determinar la fecha en que se ingresó al beneficiaros al sistema.',
  `primer_ap` varchar(32) NOT NULL COMMENT 'Primer Apellido del Beneficiario',
  `segundo_ap` varchar(32) DEFAULT NULL COMMENT 'Segundo apellido del beneficiario',
  `nombre` varchar(64) NOT NULL COMMENT 'Nombre(s) del Beneficiario',
  `id_oficial` char(1) DEFAULT '7' COMMENT 'Identificación oficial que acredita la identidad del beneficiario',
  `id_municipio` char(2) NOT NULL,
  `id_localidad` varchar(10) NOT NULL,
  `id_cp` char(4) NOT NULL DEFAULT '3389',
  `id_tipo_vialidad` tinyint(4) DEFAULT '27',
  `vialidad_nombre` varchar(64) NOT NULL DEFAULT 'sin capturar',
  `entre_calles` text,
  `num_ext` varchar(8) NOT NULL DEFAULT '0',
  `num_int` varchar(8) DEFAULT NULL,
  `descripcion` text,
  `estudio_demografico` char(1) DEFAULT NULL,
  `perfil_sociodemografico` varchar(45) DEFAULT NULL,
  `estado_civil` tinyint(4) NOT NULL DEFAULT '6',
  `jefe_familia` char(1) NOT NULL DEFAULT '0',
  `tipo_trabajo` varchar(64) DEFAULT NULL,
  `ingreso_mensual` varchar(16) DEFAULT NULL,
  `integrantes_familia` tinyint(4) DEFAULT NULL,
  `dependientes_familia` int(11) DEFAULT NULL,
  `tipo_vivienda` tinyint(4) DEFAULT NULL,
  `num_habitantes_vivienda` tinyint(4) DEFAULT NULL,
  `serv_luz` char(1) DEFAULT NULL,
  `serv_agua` char(1) DEFAULT NULL,
  `serv_drenaje` char(1) DEFAULT NULL,
  `serv_telefono` char(1) DEFAULT NULL,
  `serv_gas` char(1) DEFAULT NULL,
  `serv_internet` char(1) DEFAULT NULL,
  `nivel_estudios` tinyint(4) DEFAULT NULL,
  `seguridad_social` tinyint(4) DEFAULT NULL,
  `discapacidad` char(1) DEFAULT NULL,
  `tipo_discapacidad` varchar(45) DEFAULT NULL,
  `beneficiario_colectivo` char(1) DEFAULT '0',
  `grupo_vulnerable` varchar(16) DEFAULT NULL,
  `email_beneficiario` varchar(128) DEFAULT NULL,
  `telefono_beneficiarios` char(11) DEFAULT NULL,
  `fecha_actualizacion` datetime NOT NULL,
  PRIMARY KEY (`curp`),
  UNIQUE KEY `curp_UNIQUE` (`curp`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `beneficiarios_Q`
--

DROP TABLE IF EXISTS `beneficiarios_Q`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `beneficiarios_Q` (
  `curp` char(18) NOT NULL COMMENT 'Clave alfanumérica que servirá como clave única de cada beneficiario en casos de beneficiarios individuales, en este caso la Clave Única del Registro de Población',
  `fecha_alta` datetime NOT NULL COMMENT 'Determinar la fecha en que se ingresó al beneficiaros al sistema.',
  `primer_ap` varchar(32) NOT NULL COMMENT 'Primer Apellido del Beneficiario',
  `segundo_ap` varchar(32) DEFAULT NULL COMMENT 'Segundo apellido del beneficiario',
  `nombre` varchar(64) NOT NULL COMMENT 'Nombre(s) del Beneficiario',
  `id_oficial` char(1) DEFAULT '7' COMMENT 'Identificación oficial que acredita la identidad del beneficiario',
  `id_municipio` char(2) NOT NULL,
  `id_localidad` varchar(10) NOT NULL,
  `id_cp` char(4) NOT NULL DEFAULT '3389',
  `id_tipo_vialidad` tinyint(4) DEFAULT '27',
  `vialidad_nombre` varchar(64) NOT NULL DEFAULT 'sin capturar',
  `entre_calles` text,
  `num_ext` varchar(8) NOT NULL DEFAULT '0',
  `num_int` varchar(8) DEFAULT NULL,
  `descripcion` text,
  `estudio_demografico` char(1) DEFAULT NULL,
  `perfil_sociodemografico` varchar(45) DEFAULT NULL,
  `estado_civil` tinyint(4) NOT NULL DEFAULT '6',
  `jefe_familia` char(1) NOT NULL DEFAULT '0',
  `tipo_trabajo` varchar(64) DEFAULT NULL,
  `ingreso_mensual` varchar(16) DEFAULT NULL,
  `integrantes_familia` tinyint(4) DEFAULT NULL,
  `dependientes_familia` int(11) DEFAULT NULL,
  `tipo_vivienda` tinyint(4) DEFAULT NULL,
  `num_habitantes_vivienda` tinyint(4) DEFAULT NULL,
  `serv_luz` char(1) DEFAULT NULL,
  `serv_agua` char(1) DEFAULT NULL,
  `serv_drenaje` char(1) DEFAULT NULL,
  `serv_telefono` char(1) DEFAULT NULL,
  `serv_gas` char(1) DEFAULT NULL,
  `serv_internet` char(1) DEFAULT NULL,
  `nivel_estudios` tinyint(4) DEFAULT NULL,
  `seguridad_social` tinyint(4) DEFAULT NULL,
  `discapacidad` char(1) DEFAULT NULL,
  `tipo_discapacidad` varchar(45) DEFAULT NULL,
  `beneficiario_colectivo` char(1) DEFAULT '0',
  `grupo_vulnerable` varchar(16) DEFAULT NULL,
  `email_beneficiario` varchar(128) DEFAULT NULL,
  `telefono_beneficiarios` char(11) DEFAULT NULL,
  `fecha_actualizacion` datetime NOT NULL,
  PRIMARY KEY (`curp`),
  UNIQUE KEY `curp_UNIQUE` (`curp`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `beneficiarios_R`
--

DROP TABLE IF EXISTS `beneficiarios_R`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `beneficiarios_R` (
  `curp` char(18) NOT NULL COMMENT 'Clave alfanumérica que servirá como clave única de cada beneficiario en casos de beneficiarios individuales, en este caso la Clave Única del Registro de Población',
  `fecha_alta` datetime NOT NULL COMMENT 'Determinar la fecha en que se ingresó al beneficiaros al sistema.',
  `primer_ap` varchar(32) NOT NULL COMMENT 'Primer Apellido del Beneficiario',
  `segundo_ap` varchar(32) DEFAULT NULL COMMENT 'Segundo apellido del beneficiario',
  `nombre` varchar(64) NOT NULL COMMENT 'Nombre(s) del Beneficiario',
  `id_oficial` char(1) DEFAULT '7' COMMENT 'Identificación oficial que acredita la identidad del beneficiario',
  `id_municipio` char(2) NOT NULL,
  `id_localidad` varchar(10) NOT NULL,
  `id_cp` char(4) NOT NULL DEFAULT '3389',
  `id_tipo_vialidad` tinyint(4) DEFAULT '27',
  `vialidad_nombre` varchar(64) NOT NULL DEFAULT 'sin capturar',
  `entre_calles` text,
  `num_ext` varchar(8) NOT NULL DEFAULT '0',
  `num_int` varchar(8) DEFAULT NULL,
  `descripcion` text,
  `estudio_demografico` char(1) DEFAULT NULL,
  `perfil_sociodemografico` varchar(45) DEFAULT NULL,
  `estado_civil` tinyint(4) NOT NULL DEFAULT '6',
  `jefe_familia` char(1) NOT NULL DEFAULT '0',
  `tipo_trabajo` varchar(64) DEFAULT NULL,
  `ingreso_mensual` varchar(16) DEFAULT NULL,
  `integrantes_familia` tinyint(4) DEFAULT NULL,
  `dependientes_familia` int(11) DEFAULT NULL,
  `tipo_vivienda` tinyint(4) DEFAULT NULL,
  `num_habitantes_vivienda` tinyint(4) DEFAULT NULL,
  `serv_luz` char(1) DEFAULT NULL,
  `serv_agua` char(1) DEFAULT NULL,
  `serv_drenaje` char(1) DEFAULT NULL,
  `serv_telefono` char(1) DEFAULT NULL,
  `serv_gas` char(1) DEFAULT NULL,
  `serv_internet` char(1) DEFAULT NULL,
  `nivel_estudios` tinyint(4) DEFAULT NULL,
  `seguridad_social` tinyint(4) DEFAULT NULL,
  `discapacidad` char(1) DEFAULT NULL,
  `tipo_discapacidad` varchar(45) DEFAULT NULL,
  `beneficiario_colectivo` char(1) DEFAULT '0',
  `grupo_vulnerable` varchar(16) DEFAULT NULL,
  `email_beneficiario` varchar(128) DEFAULT NULL,
  `telefono_beneficiarios` char(11) DEFAULT NULL,
  `fecha_actualizacion` datetime NOT NULL,
  PRIMARY KEY (`curp`),
  UNIQUE KEY `curp_UNIQUE` (`curp`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `beneficiarios_S`
--

DROP TABLE IF EXISTS `beneficiarios_S`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `beneficiarios_S` (
  `curp` char(18) NOT NULL COMMENT 'Clave alfanumérica que servirá como clave única de cada beneficiario en casos de beneficiarios individuales, en este caso la Clave Única del Registro de Población',
  `fecha_alta` datetime NOT NULL COMMENT 'Determinar la fecha en que se ingresó al beneficiaros al sistema.',
  `primer_ap` varchar(32) NOT NULL COMMENT 'Primer Apellido del Beneficiario',
  `segundo_ap` varchar(32) DEFAULT NULL COMMENT 'Segundo apellido del beneficiario',
  `nombre` varchar(64) NOT NULL COMMENT 'Nombre(s) del Beneficiario',
  `id_oficial` char(1) DEFAULT '7' COMMENT 'Identificación oficial que acredita la identidad del beneficiario',
  `id_municipio` char(2) NOT NULL,
  `id_localidad` varchar(10) NOT NULL,
  `id_cp` char(4) NOT NULL DEFAULT '3389',
  `id_tipo_vialidad` tinyint(4) DEFAULT '27',
  `vialidad_nombre` varchar(64) NOT NULL DEFAULT 'sin capturar',
  `entre_calles` text,
  `num_ext` varchar(8) NOT NULL DEFAULT '0',
  `num_int` varchar(8) DEFAULT NULL,
  `descripcion` text,
  `estudio_demografico` char(1) DEFAULT NULL,
  `perfil_sociodemografico` varchar(45) DEFAULT NULL,
  `estado_civil` tinyint(4) NOT NULL DEFAULT '6',
  `jefe_familia` char(1) NOT NULL DEFAULT '0',
  `tipo_trabajo` varchar(64) DEFAULT NULL,
  `ingreso_mensual` varchar(16) DEFAULT NULL,
  `integrantes_familia` tinyint(4) DEFAULT NULL,
  `dependientes_familia` int(11) DEFAULT NULL,
  `tipo_vivienda` tinyint(4) DEFAULT NULL,
  `num_habitantes_vivienda` tinyint(4) DEFAULT NULL,
  `serv_luz` char(1) DEFAULT NULL,
  `serv_agua` char(1) DEFAULT NULL,
  `serv_drenaje` char(1) DEFAULT NULL,
  `serv_telefono` char(1) DEFAULT NULL,
  `serv_gas` char(1) DEFAULT NULL,
  `serv_internet` char(1) DEFAULT NULL,
  `nivel_estudios` tinyint(4) DEFAULT NULL,
  `seguridad_social` tinyint(4) DEFAULT NULL,
  `discapacidad` char(1) DEFAULT NULL,
  `tipo_discapacidad` varchar(45) DEFAULT NULL,
  `beneficiario_colectivo` char(1) DEFAULT '0',
  `grupo_vulnerable` varchar(16) DEFAULT NULL,
  `email_beneficiario` varchar(128) DEFAULT NULL,
  `telefono_beneficiarios` char(11) DEFAULT NULL,
  `fecha_actualizacion` datetime NOT NULL,
  PRIMARY KEY (`curp`),
  UNIQUE KEY `curp_UNIQUE` (`curp`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `beneficiarios_T`
--

DROP TABLE IF EXISTS `beneficiarios_T`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `beneficiarios_T` (
  `curp` char(18) NOT NULL COMMENT 'Clave alfanumérica que servirá como clave única de cada beneficiario en casos de beneficiarios individuales, en este caso la Clave Única del Registro de Población',
  `fecha_alta` datetime NOT NULL COMMENT 'Determinar la fecha en que se ingresó al beneficiaros al sistema.',
  `primer_ap` varchar(32) NOT NULL COMMENT 'Primer Apellido del Beneficiario',
  `segundo_ap` varchar(32) DEFAULT NULL COMMENT 'Segundo apellido del beneficiario',
  `nombre` varchar(64) NOT NULL COMMENT 'Nombre(s) del Beneficiario',
  `id_oficial` char(1) DEFAULT '7' COMMENT 'Identificación oficial que acredita la identidad del beneficiario',
  `id_municipio` char(2) NOT NULL,
  `id_localidad` varchar(10) NOT NULL,
  `id_cp` char(4) NOT NULL DEFAULT '3389',
  `id_tipo_vialidad` tinyint(4) DEFAULT '27',
  `vialidad_nombre` varchar(64) NOT NULL DEFAULT 'sin capturar',
  `entre_calles` text,
  `num_ext` varchar(8) NOT NULL DEFAULT '0',
  `num_int` varchar(8) DEFAULT NULL,
  `descripcion` text,
  `estudio_demografico` char(1) DEFAULT NULL,
  `perfil_sociodemografico` varchar(45) DEFAULT NULL,
  `estado_civil` tinyint(4) NOT NULL DEFAULT '6',
  `jefe_familia` char(1) NOT NULL DEFAULT '0',
  `tipo_trabajo` varchar(64) DEFAULT NULL,
  `ingreso_mensual` varchar(16) DEFAULT NULL,
  `integrantes_familia` tinyint(4) DEFAULT NULL,
  `dependientes_familia` int(11) DEFAULT NULL,
  `tipo_vivienda` tinyint(4) DEFAULT NULL,
  `num_habitantes_vivienda` tinyint(4) DEFAULT NULL,
  `serv_luz` char(1) DEFAULT NULL,
  `serv_agua` char(1) DEFAULT NULL,
  `serv_drenaje` char(1) DEFAULT NULL,
  `serv_telefono` char(1) DEFAULT NULL,
  `serv_gas` char(1) DEFAULT NULL,
  `serv_internet` char(1) DEFAULT NULL,
  `nivel_estudios` tinyint(4) DEFAULT NULL,
  `seguridad_social` tinyint(4) DEFAULT NULL,
  `discapacidad` char(1) DEFAULT NULL,
  `tipo_discapacidad` varchar(45) DEFAULT NULL,
  `beneficiario_colectivo` char(1) DEFAULT '0',
  `grupo_vulnerable` varchar(16) DEFAULT NULL,
  `email_beneficiario` varchar(128) DEFAULT NULL,
  `telefono_beneficiarios` char(11) DEFAULT NULL,
  `fecha_actualizacion` datetime NOT NULL,
  PRIMARY KEY (`curp`),
  UNIQUE KEY `curp_UNIQUE` (`curp`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `beneficiarios_U`
--

DROP TABLE IF EXISTS `beneficiarios_U`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `beneficiarios_U` (
  `curp` char(18) NOT NULL COMMENT 'Clave alfanumérica que servirá como clave única de cada beneficiario en casos de beneficiarios individuales, en este caso la Clave Única del Registro de Población',
  `fecha_alta` datetime NOT NULL COMMENT 'Determinar la fecha en que se ingresó al beneficiaros al sistema.',
  `primer_ap` varchar(32) NOT NULL COMMENT 'Primer Apellido del Beneficiario',
  `segundo_ap` varchar(32) DEFAULT NULL COMMENT 'Segundo apellido del beneficiario',
  `nombre` varchar(64) NOT NULL COMMENT 'Nombre(s) del Beneficiario',
  `id_oficial` char(1) DEFAULT '7' COMMENT 'Identificación oficial que acredita la identidad del beneficiario',
  `id_municipio` char(2) NOT NULL,
  `id_localidad` varchar(10) NOT NULL,
  `id_cp` char(4) NOT NULL DEFAULT '3389',
  `id_tipo_vialidad` tinyint(4) DEFAULT '27',
  `vialidad_nombre` varchar(64) NOT NULL DEFAULT 'sin capturar',
  `entre_calles` text,
  `num_ext` varchar(8) NOT NULL DEFAULT '0',
  `num_int` varchar(8) DEFAULT NULL,
  `descripcion` text,
  `estudio_demografico` char(1) DEFAULT NULL,
  `perfil_sociodemografico` varchar(45) DEFAULT NULL,
  `estado_civil` tinyint(4) NOT NULL DEFAULT '6',
  `jefe_familia` char(1) NOT NULL DEFAULT '0',
  `tipo_trabajo` varchar(64) DEFAULT NULL,
  `ingreso_mensual` varchar(16) DEFAULT NULL,
  `integrantes_familia` tinyint(4) DEFAULT NULL,
  `dependientes_familia` int(11) DEFAULT NULL,
  `tipo_vivienda` tinyint(4) DEFAULT NULL,
  `num_habitantes_vivienda` tinyint(4) DEFAULT NULL,
  `serv_luz` char(1) DEFAULT NULL,
  `serv_agua` char(1) DEFAULT NULL,
  `serv_drenaje` char(1) DEFAULT NULL,
  `serv_telefono` char(1) DEFAULT NULL,
  `serv_gas` char(1) DEFAULT NULL,
  `serv_internet` char(1) DEFAULT NULL,
  `nivel_estudios` tinyint(4) DEFAULT NULL,
  `seguridad_social` tinyint(4) DEFAULT NULL,
  `discapacidad` char(1) DEFAULT NULL,
  `tipo_discapacidad` varchar(45) DEFAULT NULL,
  `beneficiario_colectivo` char(1) DEFAULT '0',
  `grupo_vulnerable` varchar(16) DEFAULT NULL,
  `email_beneficiario` varchar(128) DEFAULT NULL,
  `telefono_beneficiarios` char(11) DEFAULT NULL,
  `fecha_actualizacion` datetime NOT NULL,
  PRIMARY KEY (`curp`),
  UNIQUE KEY `curp_UNIQUE` (`curp`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `beneficiarios_V`
--

DROP TABLE IF EXISTS `beneficiarios_V`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `beneficiarios_V` (
  `curp` char(18) NOT NULL COMMENT 'Clave alfanumérica que servirá como clave única de cada beneficiario en casos de beneficiarios individuales, en este caso la Clave Única del Registro de Población',
  `fecha_alta` datetime NOT NULL COMMENT 'Determinar la fecha en que se ingresó al beneficiaros al sistema.',
  `primer_ap` varchar(32) NOT NULL COMMENT 'Primer Apellido del Beneficiario',
  `segundo_ap` varchar(32) DEFAULT NULL COMMENT 'Segundo apellido del beneficiario',
  `nombre` varchar(64) NOT NULL COMMENT 'Nombre(s) del Beneficiario',
  `id_oficial` char(1) DEFAULT '7' COMMENT 'Identificación oficial que acredita la identidad del beneficiario',
  `id_municipio` char(2) NOT NULL,
  `id_localidad` varchar(10) NOT NULL,
  `id_cp` char(4) NOT NULL DEFAULT '3389',
  `id_tipo_vialidad` tinyint(4) DEFAULT '27',
  `vialidad_nombre` varchar(64) NOT NULL DEFAULT 'sin capturar',
  `entre_calles` text,
  `num_ext` varchar(8) NOT NULL DEFAULT '0',
  `num_int` varchar(8) DEFAULT NULL,
  `descripcion` text,
  `estudio_demografico` char(1) DEFAULT NULL,
  `perfil_sociodemografico` varchar(45) DEFAULT NULL,
  `estado_civil` tinyint(4) NOT NULL DEFAULT '6',
  `jefe_familia` char(1) NOT NULL DEFAULT '0',
  `tipo_trabajo` varchar(64) DEFAULT NULL,
  `ingreso_mensual` varchar(16) DEFAULT NULL,
  `integrantes_familia` tinyint(4) DEFAULT NULL,
  `dependientes_familia` int(11) DEFAULT NULL,
  `tipo_vivienda` tinyint(4) DEFAULT NULL,
  `num_habitantes_vivienda` tinyint(4) DEFAULT NULL,
  `serv_luz` char(1) DEFAULT NULL,
  `serv_agua` char(1) DEFAULT NULL,
  `serv_drenaje` char(1) DEFAULT NULL,
  `serv_telefono` char(1) DEFAULT NULL,
  `serv_gas` char(1) DEFAULT NULL,
  `serv_internet` char(1) DEFAULT NULL,
  `nivel_estudios` tinyint(4) DEFAULT NULL,
  `seguridad_social` tinyint(4) DEFAULT NULL,
  `discapacidad` char(1) DEFAULT NULL,
  `tipo_discapacidad` varchar(45) DEFAULT NULL,
  `beneficiario_colectivo` char(1) DEFAULT '0',
  `grupo_vulnerable` varchar(16) DEFAULT NULL,
  `email_beneficiario` varchar(128) DEFAULT NULL,
  `telefono_beneficiarios` char(11) DEFAULT NULL,
  `fecha_actualizacion` datetime NOT NULL,
  PRIMARY KEY (`curp`),
  UNIQUE KEY `curp_UNIQUE` (`curp`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `beneficiarios_W`
--

DROP TABLE IF EXISTS `beneficiarios_W`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `beneficiarios_W` (
  `curp` char(18) NOT NULL COMMENT 'Clave alfanumérica que servirá como clave única de cada beneficiario en casos de beneficiarios individuales, en este caso la Clave Única del Registro de Población',
  `fecha_alta` datetime NOT NULL COMMENT 'Determinar la fecha en que se ingresó al beneficiaros al sistema.',
  `primer_ap` varchar(32) NOT NULL COMMENT 'Primer Apellido del Beneficiario',
  `segundo_ap` varchar(32) DEFAULT NULL COMMENT 'Segundo apellido del beneficiario',
  `nombre` varchar(64) NOT NULL COMMENT 'Nombre(s) del Beneficiario',
  `id_oficial` char(1) DEFAULT '7' COMMENT 'Identificación oficial que acredita la identidad del beneficiario',
  `id_municipio` char(2) NOT NULL,
  `id_localidad` varchar(10) NOT NULL,
  `id_cp` char(4) NOT NULL DEFAULT '3389',
  `id_tipo_vialidad` tinyint(4) DEFAULT '27',
  `vialidad_nombre` varchar(64) NOT NULL DEFAULT 'sin capturar',
  `entre_calles` text,
  `num_ext` varchar(8) NOT NULL DEFAULT '0',
  `num_int` varchar(8) DEFAULT NULL,
  `descripcion` text,
  `estudio_demografico` char(1) DEFAULT NULL,
  `perfil_sociodemografico` varchar(45) DEFAULT NULL,
  `estado_civil` tinyint(4) NOT NULL DEFAULT '6',
  `jefe_familia` char(1) NOT NULL DEFAULT '0',
  `tipo_trabajo` varchar(64) DEFAULT NULL,
  `ingreso_mensual` varchar(16) DEFAULT NULL,
  `integrantes_familia` tinyint(4) DEFAULT NULL,
  `dependientes_familia` int(11) DEFAULT NULL,
  `tipo_vivienda` tinyint(4) DEFAULT NULL,
  `num_habitantes_vivienda` tinyint(4) DEFAULT NULL,
  `serv_luz` char(1) DEFAULT NULL,
  `serv_agua` char(1) DEFAULT NULL,
  `serv_drenaje` char(1) DEFAULT NULL,
  `serv_telefono` char(1) DEFAULT NULL,
  `serv_gas` char(1) DEFAULT NULL,
  `serv_internet` char(1) DEFAULT NULL,
  `nivel_estudios` tinyint(4) DEFAULT NULL,
  `seguridad_social` tinyint(4) DEFAULT NULL,
  `discapacidad` char(1) DEFAULT NULL,
  `tipo_discapacidad` varchar(45) DEFAULT NULL,
  `beneficiario_colectivo` char(1) DEFAULT '0',
  `grupo_vulnerable` varchar(16) DEFAULT NULL,
  `email_beneficiario` varchar(128) DEFAULT NULL,
  `telefono_beneficiarios` char(11) DEFAULT NULL,
  `fecha_actualizacion` datetime NOT NULL,
  PRIMARY KEY (`curp`),
  UNIQUE KEY `curp_UNIQUE` (`curp`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `beneficiarios_X`
--

DROP TABLE IF EXISTS `beneficiarios_X`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `beneficiarios_X` (
  `curp` char(18) NOT NULL COMMENT 'Clave alfanumérica que servirá como clave única de cada beneficiario en casos de beneficiarios individuales, en este caso la Clave Única del Registro de Población',
  `fecha_alta` datetime NOT NULL COMMENT 'Determinar la fecha en que se ingresó al beneficiaros al sistema.',
  `primer_ap` varchar(32) NOT NULL COMMENT 'Primer Apellido del Beneficiario',
  `segundo_ap` varchar(32) DEFAULT NULL COMMENT 'Segundo apellido del beneficiario',
  `nombre` varchar(64) NOT NULL COMMENT 'Nombre(s) del Beneficiario',
  `id_oficial` char(1) DEFAULT '7' COMMENT 'Identificación oficial que acredita la identidad del beneficiario',
  `id_municipio` char(2) NOT NULL,
  `id_localidad` varchar(10) NOT NULL,
  `id_cp` char(4) NOT NULL DEFAULT '3389',
  `id_tipo_vialidad` tinyint(4) DEFAULT '27',
  `vialidad_nombre` varchar(64) NOT NULL DEFAULT 'sin capturar',
  `entre_calles` text,
  `num_ext` varchar(8) NOT NULL DEFAULT '0',
  `num_int` varchar(8) DEFAULT NULL,
  `descripcion` text,
  `estudio_demografico` char(1) DEFAULT NULL,
  `perfil_sociodemografico` varchar(45) DEFAULT NULL,
  `estado_civil` tinyint(4) NOT NULL DEFAULT '6',
  `jefe_familia` char(1) NOT NULL DEFAULT '0',
  `tipo_trabajo` varchar(64) DEFAULT NULL,
  `ingreso_mensual` varchar(16) DEFAULT NULL,
  `integrantes_familia` tinyint(4) DEFAULT NULL,
  `dependientes_familia` int(11) DEFAULT NULL,
  `tipo_vivienda` tinyint(4) DEFAULT NULL,
  `num_habitantes_vivienda` tinyint(4) DEFAULT NULL,
  `serv_luz` char(1) DEFAULT NULL,
  `serv_agua` char(1) DEFAULT NULL,
  `serv_drenaje` char(1) DEFAULT NULL,
  `serv_telefono` char(1) DEFAULT NULL,
  `serv_gas` char(1) DEFAULT NULL,
  `serv_internet` char(1) DEFAULT NULL,
  `nivel_estudios` tinyint(4) DEFAULT NULL,
  `seguridad_social` tinyint(4) DEFAULT NULL,
  `discapacidad` char(1) DEFAULT NULL,
  `tipo_discapacidad` varchar(45) DEFAULT NULL,
  `beneficiario_colectivo` char(1) DEFAULT '0',
  `grupo_vulnerable` varchar(16) DEFAULT NULL,
  `email_beneficiario` varchar(128) DEFAULT NULL,
  `telefono_beneficiarios` char(11) DEFAULT NULL,
  `fecha_actualizacion` datetime NOT NULL,
  PRIMARY KEY (`curp`),
  UNIQUE KEY `curp_UNIQUE` (`curp`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `beneficiarios_Y`
--

DROP TABLE IF EXISTS `beneficiarios_Y`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `beneficiarios_Y` (
  `curp` char(18) NOT NULL COMMENT 'Clave alfanumérica que servirá como clave única de cada beneficiario en casos de beneficiarios individuales, en este caso la Clave Única del Registro de Población',
  `fecha_alta` datetime NOT NULL COMMENT 'Determinar la fecha en que se ingresó al beneficiaros al sistema.',
  `primer_ap` varchar(32) NOT NULL COMMENT 'Primer Apellido del Beneficiario',
  `segundo_ap` varchar(32) DEFAULT NULL COMMENT 'Segundo apellido del beneficiario',
  `nombre` varchar(64) NOT NULL COMMENT 'Nombre(s) del Beneficiario',
  `id_oficial` char(1) DEFAULT '7' COMMENT 'Identificación oficial que acredita la identidad del beneficiario',
  `id_municipio` char(2) NOT NULL,
  `id_localidad` varchar(10) NOT NULL,
  `id_cp` char(4) NOT NULL DEFAULT '3389',
  `id_tipo_vialidad` tinyint(4) DEFAULT '27',
  `vialidad_nombre` varchar(64) NOT NULL DEFAULT 'sin capturar',
  `entre_calles` text,
  `num_ext` varchar(8) NOT NULL DEFAULT '0',
  `num_int` varchar(8) DEFAULT NULL,
  `descripcion` text,
  `estudio_demografico` char(1) DEFAULT NULL,
  `perfil_sociodemografico` varchar(45) DEFAULT NULL,
  `estado_civil` tinyint(4) NOT NULL DEFAULT '6',
  `jefe_familia` char(1) NOT NULL DEFAULT '0',
  `tipo_trabajo` varchar(64) DEFAULT NULL,
  `ingreso_mensual` varchar(16) DEFAULT NULL,
  `integrantes_familia` tinyint(4) DEFAULT NULL,
  `dependientes_familia` int(11) DEFAULT NULL,
  `tipo_vivienda` tinyint(4) DEFAULT NULL,
  `num_habitantes_vivienda` tinyint(4) DEFAULT NULL,
  `serv_luz` char(1) DEFAULT NULL,
  `serv_agua` char(1) DEFAULT NULL,
  `serv_drenaje` char(1) DEFAULT NULL,
  `serv_telefono` char(1) DEFAULT NULL,
  `serv_gas` char(1) DEFAULT NULL,
  `serv_internet` char(1) DEFAULT NULL,
  `nivel_estudios` tinyint(4) DEFAULT NULL,
  `seguridad_social` tinyint(4) DEFAULT NULL,
  `discapacidad` char(1) DEFAULT NULL,
  `tipo_discapacidad` varchar(45) DEFAULT NULL,
  `beneficiario_colectivo` char(1) DEFAULT '0',
  `grupo_vulnerable` varchar(16) DEFAULT NULL,
  `email_beneficiario` varchar(128) DEFAULT NULL,
  `telefono_beneficiarios` char(11) DEFAULT NULL,
  `fecha_actualizacion` datetime NOT NULL,
  PRIMARY KEY (`curp`),
  UNIQUE KEY `curp_UNIQUE` (`curp`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `beneficiarios_Z`
--

DROP TABLE IF EXISTS `beneficiarios_Z`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `beneficiarios_Z` (
  `curp` char(18) NOT NULL COMMENT 'Clave alfanumérica que servirá como clave única de cada beneficiario en casos de beneficiarios individuales, en este caso la Clave Única del Registro de Población',
  `fecha_alta` datetime NOT NULL COMMENT 'Determinar la fecha en que se ingresó al beneficiaros al sistema.',
  `primer_ap` varchar(32) NOT NULL COMMENT 'Primer Apellido del Beneficiario',
  `segundo_ap` varchar(32) DEFAULT NULL COMMENT 'Segundo apellido del beneficiario',
  `nombre` varchar(64) NOT NULL COMMENT 'Nombre(s) del Beneficiario',
  `id_oficial` char(1) DEFAULT '7' COMMENT 'Identificación oficial que acredita la identidad del beneficiario',
  `id_municipio` char(2) NOT NULL,
  `id_localidad` varchar(10) NOT NULL,
  `id_cp` char(4) NOT NULL DEFAULT '3389',
  `id_tipo_vialidad` tinyint(4) DEFAULT '27',
  `vialidad_nombre` varchar(64) NOT NULL DEFAULT 'sin capturar',
  `entre_calles` text,
  `num_ext` varchar(8) NOT NULL DEFAULT '0',
  `num_int` varchar(8) DEFAULT NULL,
  `descripcion` text,
  `estudio_demografico` char(1) DEFAULT NULL,
  `perfil_sociodemografico` varchar(45) DEFAULT NULL,
  `estado_civil` tinyint(4) NOT NULL DEFAULT '6',
  `jefe_familia` char(1) NOT NULL DEFAULT '0',
  `tipo_trabajo` varchar(64) DEFAULT NULL,
  `ingreso_mensual` varchar(16) DEFAULT NULL,
  `integrantes_familia` tinyint(4) DEFAULT NULL,
  `dependientes_familia` int(11) DEFAULT NULL,
  `tipo_vivienda` tinyint(4) DEFAULT NULL,
  `num_habitantes_vivienda` tinyint(4) DEFAULT NULL,
  `serv_luz` char(1) DEFAULT NULL,
  `serv_agua` char(1) DEFAULT NULL,
  `serv_drenaje` char(1) DEFAULT NULL,
  `serv_telefono` char(1) DEFAULT NULL,
  `serv_gas` char(1) DEFAULT NULL,
  `serv_internet` char(1) DEFAULT NULL,
  `nivel_estudios` tinyint(4) DEFAULT NULL,
  `seguridad_social` tinyint(4) DEFAULT NULL,
  `discapacidad` char(1) DEFAULT NULL,
  `tipo_discapacidad` varchar(45) DEFAULT NULL,
  `beneficiario_colectivo` char(1) DEFAULT '0',
  `grupo_vulnerable` varchar(16) DEFAULT NULL,
  `email_beneficiario` varchar(128) DEFAULT NULL,
  `telefono_beneficiarios` char(11) DEFAULT NULL,
  `fecha_actualizacion` datetime NOT NULL,
  PRIMARY KEY (`curp`),
  UNIQUE KEY `curp_UNIQUE` (`curp`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `caracteristicas_apoyo`
--

DROP TABLE IF EXISTS `caracteristicas_apoyo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `caracteristicas_apoyo` (
  `id_caracteristica` tinyint(4) NOT NULL,
  `id_tipo_apoyo` tinyint(4) NOT NULL,
  `caracteristica` varchar(145) DEFAULT NULL,
  PRIMARY KEY (`id_caracteristica`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `cobertura`
--

DROP TABLE IF EXISTS `cobertura`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cobertura` (
  `id_cobertura` tinyint(4) NOT NULL AUTO_INCREMENT,
  `cobertura` varchar(45) NOT NULL,
  PRIMARY KEY (`id_cobertura`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `codigos_postales`
--

DROP TABLE IF EXISTS `codigos_postales`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `codigos_postales` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `codigo_postal` char(5) NOT NULL,
  `n_asentamiento` varchar(128) NOT NULL,
  `tipo_asentamiento` varchar(3) NOT NULL,
  `municipio` char(2) NOT NULL,
  `localidad` varchar(45) DEFAULT NULL,
  `zona` varchar(16) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3390 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `colectivos_A`
--

DROP TABLE IF EXISTS `colectivos_A`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `colectivos_A` (
  `RFC` varchar(10) NOT NULL,
  `nombre` varchar(128) NOT NULL,
  `fecha_constitucion` datetime DEFAULT NULL,
  `doc_constitucion` varchar(45) DEFAULT NULL,
  `id_municipio` char(2) DEFAULT NULL,
  `id_localidad` varchar(10) DEFAULT NULL,
  `id_cp` varchar(45) DEFAULT NULL,
  `id_tipo_vialidad` varchar(64) DEFAULT NULL,
  `vialidad_nombre` varchar(64) DEFAULT NULL,
  `entre_calles` text,
  `num_ext` varchar(8) DEFAULT NULL,
  `num_int` varchar(8) DEFAULT NULL,
  `descripcion` text,
  `actividad` varchar(128) DEFAULT NULL,
  `cobertura` varchar(45) DEFAULT NULL,
  `estados_cobertura` varchar(45) DEFAULT NULL,
  `municipios_cobertura` varchar(45) DEFAULT NULL,
  `regiones_cobertura` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`RFC`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `colectivos_B`
--

DROP TABLE IF EXISTS `colectivos_B`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `colectivos_B` (
  `RFC` varchar(10) NOT NULL,
  `nombre` varchar(128) NOT NULL,
  `fecha_constitucion` datetime DEFAULT NULL,
  `doc_constitucion` varchar(45) DEFAULT NULL,
  `id_municipio` char(2) DEFAULT NULL,
  `id_localidad` varchar(10) DEFAULT NULL,
  `id_cp` varchar(45) DEFAULT NULL,
  `id_tipo_vialidad` varchar(64) DEFAULT NULL,
  `vialidad_nombre` varchar(64) DEFAULT NULL,
  `entre_calles` text,
  `num_ext` varchar(8) DEFAULT NULL,
  `num_int` varchar(8) DEFAULT NULL,
  `descripcion` text,
  `actividad` varchar(128) DEFAULT NULL,
  `cobertura` varchar(45) DEFAULT NULL,
  `estados_cobertura` varchar(45) DEFAULT NULL,
  `municipios_cobertura` varchar(45) DEFAULT NULL,
  `regiones_cobertura` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`RFC`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `colectivos_C`
--

DROP TABLE IF EXISTS `colectivos_C`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `colectivos_C` (
  `RFC` varchar(10) NOT NULL,
  `nombre` varchar(128) NOT NULL,
  `fecha_constitucion` datetime DEFAULT NULL,
  `doc_constitucion` varchar(45) DEFAULT NULL,
  `id_municipio` char(2) DEFAULT NULL,
  `id_localidad` varchar(10) DEFAULT NULL,
  `id_cp` varchar(45) DEFAULT NULL,
  `id_tipo_vialidad` varchar(64) DEFAULT NULL,
  `vialidad_nombre` varchar(64) DEFAULT NULL,
  `entre_calles` text,
  `num_ext` varchar(8) DEFAULT NULL,
  `num_int` varchar(8) DEFAULT NULL,
  `descripcion` text,
  `actividad` varchar(128) DEFAULT NULL,
  `cobertura` varchar(45) DEFAULT NULL,
  `estados_cobertura` varchar(45) DEFAULT NULL,
  `municipios_cobertura` varchar(45) DEFAULT NULL,
  `regiones_cobertura` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`RFC`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `colectivos_D`
--

DROP TABLE IF EXISTS `colectivos_D`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `colectivos_D` (
  `RFC` varchar(10) NOT NULL,
  `nombre` varchar(128) NOT NULL,
  `fecha_constitucion` datetime DEFAULT NULL,
  `doc_constitucion` varchar(45) DEFAULT NULL,
  `id_municipio` char(2) DEFAULT NULL,
  `id_localidad` varchar(10) DEFAULT NULL,
  `id_cp` varchar(45) DEFAULT NULL,
  `id_tipo_vialidad` varchar(64) DEFAULT NULL,
  `vialidad_nombre` varchar(64) DEFAULT NULL,
  `entre_calles` text,
  `num_ext` varchar(8) DEFAULT NULL,
  `num_int` varchar(8) DEFAULT NULL,
  `descripcion` text,
  `actividad` varchar(128) DEFAULT NULL,
  `cobertura` varchar(45) DEFAULT NULL,
  `estados_cobertura` varchar(45) DEFAULT NULL,
  `municipios_cobertura` varchar(45) DEFAULT NULL,
  `regiones_cobertura` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`RFC`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `colectivos_E`
--

DROP TABLE IF EXISTS `colectivos_E`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `colectivos_E` (
  `RFC` varchar(10) NOT NULL,
  `nombre` varchar(128) NOT NULL,
  `fecha_constitucion` datetime DEFAULT NULL,
  `doc_constitucion` varchar(45) DEFAULT NULL,
  `id_municipio` char(2) DEFAULT NULL,
  `id_localidad` varchar(10) DEFAULT NULL,
  `id_cp` varchar(45) DEFAULT NULL,
  `id_tipo_vialidad` varchar(64) DEFAULT NULL,
  `vialidad_nombre` varchar(64) DEFAULT NULL,
  `entre_calles` text,
  `num_ext` varchar(8) DEFAULT NULL,
  `num_int` varchar(8) DEFAULT NULL,
  `descripcion` text,
  `actividad` varchar(128) DEFAULT NULL,
  `cobertura` varchar(45) DEFAULT NULL,
  `estados_cobertura` varchar(45) DEFAULT NULL,
  `municipios_cobertura` varchar(45) DEFAULT NULL,
  `regiones_cobertura` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`RFC`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `colectivos_F`
--

DROP TABLE IF EXISTS `colectivos_F`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `colectivos_F` (
  `RFC` varchar(10) NOT NULL,
  `nombre` varchar(128) NOT NULL,
  `fecha_constitucion` datetime DEFAULT NULL,
  `doc_constitucion` varchar(45) DEFAULT NULL,
  `id_municipio` char(2) DEFAULT NULL,
  `id_localidad` varchar(10) DEFAULT NULL,
  `id_cp` varchar(45) DEFAULT NULL,
  `id_tipo_vialidad` varchar(64) DEFAULT NULL,
  `vialidad_nombre` varchar(64) DEFAULT NULL,
  `entre_calles` text,
  `num_ext` varchar(8) DEFAULT NULL,
  `num_int` varchar(8) DEFAULT NULL,
  `descripcion` text,
  `actividad` varchar(128) DEFAULT NULL,
  `cobertura` varchar(45) DEFAULT NULL,
  `estados_cobertura` varchar(45) DEFAULT NULL,
  `municipios_cobertura` varchar(45) DEFAULT NULL,
  `regiones_cobertura` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`RFC`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `colectivos_G`
--

DROP TABLE IF EXISTS `colectivos_G`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `colectivos_G` (
  `RFC` varchar(10) NOT NULL,
  `nombre` varchar(128) NOT NULL,
  `fecha_constitucion` datetime DEFAULT NULL,
  `doc_constitucion` varchar(45) DEFAULT NULL,
  `id_municipio` char(2) DEFAULT NULL,
  `id_localidad` varchar(10) DEFAULT NULL,
  `id_cp` varchar(45) DEFAULT NULL,
  `id_tipo_vialidad` varchar(64) DEFAULT NULL,
  `vialidad_nombre` varchar(64) DEFAULT NULL,
  `entre_calles` text,
  `num_ext` varchar(8) DEFAULT NULL,
  `num_int` varchar(8) DEFAULT NULL,
  `descripcion` text,
  `actividad` varchar(128) DEFAULT NULL,
  `cobertura` varchar(45) DEFAULT NULL,
  `estados_cobertura` varchar(45) DEFAULT NULL,
  `municipios_cobertura` varchar(45) DEFAULT NULL,
  `regiones_cobertura` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`RFC`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `colectivos_H`
--

DROP TABLE IF EXISTS `colectivos_H`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `colectivos_H` (
  `RFC` varchar(10) NOT NULL,
  `nombre` varchar(128) NOT NULL,
  `fecha_constitucion` datetime DEFAULT NULL,
  `doc_constitucion` varchar(45) DEFAULT NULL,
  `id_municipio` char(2) DEFAULT NULL,
  `id_localidad` varchar(10) DEFAULT NULL,
  `id_cp` varchar(45) DEFAULT NULL,
  `id_tipo_vialidad` varchar(64) DEFAULT NULL,
  `vialidad_nombre` varchar(64) DEFAULT NULL,
  `entre_calles` text,
  `num_ext` varchar(8) DEFAULT NULL,
  `num_int` varchar(8) DEFAULT NULL,
  `descripcion` text,
  `actividad` varchar(128) DEFAULT NULL,
  `cobertura` varchar(45) DEFAULT NULL,
  `estados_cobertura` varchar(45) DEFAULT NULL,
  `municipios_cobertura` varchar(45) DEFAULT NULL,
  `regiones_cobertura` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`RFC`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `colectivos_I`
--

DROP TABLE IF EXISTS `colectivos_I`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `colectivos_I` (
  `RFC` varchar(10) NOT NULL,
  `nombre` varchar(128) NOT NULL,
  `fecha_constitucion` datetime DEFAULT NULL,
  `doc_constitucion` varchar(45) DEFAULT NULL,
  `id_municipio` char(2) DEFAULT NULL,
  `id_localidad` varchar(10) DEFAULT NULL,
  `id_cp` varchar(45) DEFAULT NULL,
  `id_tipo_vialidad` varchar(64) DEFAULT NULL,
  `vialidad_nombre` varchar(64) DEFAULT NULL,
  `entre_calles` text,
  `num_ext` varchar(8) DEFAULT NULL,
  `num_int` varchar(8) DEFAULT NULL,
  `descripcion` text,
  `actividad` varchar(128) DEFAULT NULL,
  `cobertura` varchar(45) DEFAULT NULL,
  `estados_cobertura` varchar(45) DEFAULT NULL,
  `municipios_cobertura` varchar(45) DEFAULT NULL,
  `regiones_cobertura` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`RFC`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `colectivos_J`
--

DROP TABLE IF EXISTS `colectivos_J`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `colectivos_J` (
  `RFC` varchar(10) NOT NULL,
  `nombre` varchar(128) NOT NULL,
  `fecha_constitucion` datetime DEFAULT NULL,
  `doc_constitucion` varchar(45) DEFAULT NULL,
  `id_municipio` char(2) DEFAULT NULL,
  `id_localidad` varchar(10) DEFAULT NULL,
  `id_cp` varchar(45) DEFAULT NULL,
  `id_tipo_vialidad` varchar(64) DEFAULT NULL,
  `vialidad_nombre` varchar(64) DEFAULT NULL,
  `entre_calles` text,
  `num_ext` varchar(8) DEFAULT NULL,
  `num_int` varchar(8) DEFAULT NULL,
  `descripcion` text,
  `actividad` varchar(128) DEFAULT NULL,
  `cobertura` varchar(45) DEFAULT NULL,
  `estados_cobertura` varchar(45) DEFAULT NULL,
  `municipios_cobertura` varchar(45) DEFAULT NULL,
  `regiones_cobertura` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`RFC`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `colectivos_K`
--

DROP TABLE IF EXISTS `colectivos_K`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `colectivos_K` (
  `RFC` varchar(10) NOT NULL,
  `nombre` varchar(128) NOT NULL,
  `fecha_constitucion` datetime DEFAULT NULL,
  `doc_constitucion` varchar(45) DEFAULT NULL,
  `id_municipio` char(2) DEFAULT NULL,
  `id_localidad` varchar(10) DEFAULT NULL,
  `id_cp` varchar(45) DEFAULT NULL,
  `id_tipo_vialidad` varchar(64) DEFAULT NULL,
  `vialidad_nombre` varchar(64) DEFAULT NULL,
  `entre_calles` text,
  `num_ext` varchar(8) DEFAULT NULL,
  `num_int` varchar(8) DEFAULT NULL,
  `descripcion` text,
  `actividad` varchar(128) DEFAULT NULL,
  `cobertura` varchar(45) DEFAULT NULL,
  `estados_cobertura` varchar(45) DEFAULT NULL,
  `municipios_cobertura` varchar(45) DEFAULT NULL,
  `regiones_cobertura` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`RFC`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `colectivos_L`
--

DROP TABLE IF EXISTS `colectivos_L`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `colectivos_L` (
  `RFC` varchar(10) NOT NULL,
  `nombre` varchar(128) NOT NULL,
  `fecha_constitucion` datetime DEFAULT NULL,
  `doc_constitucion` varchar(45) DEFAULT NULL,
  `id_municipio` char(2) DEFAULT NULL,
  `id_localidad` varchar(10) DEFAULT NULL,
  `id_cp` varchar(45) DEFAULT NULL,
  `id_tipo_vialidad` varchar(64) DEFAULT NULL,
  `vialidad_nombre` varchar(64) DEFAULT NULL,
  `entre_calles` text,
  `num_ext` varchar(8) DEFAULT NULL,
  `num_int` varchar(8) DEFAULT NULL,
  `descripcion` text,
  `actividad` varchar(128) DEFAULT NULL,
  `cobertura` varchar(45) DEFAULT NULL,
  `estados_cobertura` varchar(45) DEFAULT NULL,
  `municipios_cobertura` varchar(45) DEFAULT NULL,
  `regiones_cobertura` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`RFC`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `colectivos_M`
--

DROP TABLE IF EXISTS `colectivos_M`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `colectivos_M` (
  `RFC` varchar(10) NOT NULL,
  `nombre` varchar(128) NOT NULL,
  `fecha_constitucion` datetime DEFAULT NULL,
  `doc_constitucion` varchar(45) DEFAULT NULL,
  `id_municipio` char(2) DEFAULT NULL,
  `id_localidad` varchar(10) DEFAULT NULL,
  `id_cp` varchar(45) DEFAULT NULL,
  `id_tipo_vialidad` varchar(64) DEFAULT NULL,
  `vialidad_nombre` varchar(64) DEFAULT NULL,
  `entre_calles` text,
  `num_ext` varchar(8) DEFAULT NULL,
  `num_int` varchar(8) DEFAULT NULL,
  `descripcion` text,
  `actividad` varchar(128) DEFAULT NULL,
  `cobertura` varchar(45) DEFAULT NULL,
  `estados_cobertura` varchar(45) DEFAULT NULL,
  `municipios_cobertura` varchar(45) DEFAULT NULL,
  `regiones_cobertura` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`RFC`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `colectivos_N`
--

DROP TABLE IF EXISTS `colectivos_N`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `colectivos_N` (
  `RFC` varchar(10) NOT NULL,
  `nombre` varchar(128) NOT NULL,
  `fecha_constitucion` datetime DEFAULT NULL,
  `doc_constitucion` varchar(45) DEFAULT NULL,
  `id_municipio` char(2) DEFAULT NULL,
  `id_localidad` varchar(10) DEFAULT NULL,
  `id_cp` varchar(45) DEFAULT NULL,
  `id_tipo_vialidad` varchar(64) DEFAULT NULL,
  `vialidad_nombre` varchar(64) DEFAULT NULL,
  `entre_calles` text,
  `num_ext` varchar(8) DEFAULT NULL,
  `num_int` varchar(8) DEFAULT NULL,
  `descripcion` text,
  `actividad` varchar(128) DEFAULT NULL,
  `cobertura` varchar(45) DEFAULT NULL,
  `estados_cobertura` varchar(45) DEFAULT NULL,
  `municipios_cobertura` varchar(45) DEFAULT NULL,
  `regiones_cobertura` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`RFC`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `colectivos_O`
--

DROP TABLE IF EXISTS `colectivos_O`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `colectivos_O` (
  `RFC` varchar(10) NOT NULL,
  `nombre` varchar(128) NOT NULL,
  `fecha_constitucion` datetime DEFAULT NULL,
  `doc_constitucion` varchar(45) DEFAULT NULL,
  `id_municipio` char(2) DEFAULT NULL,
  `id_localidad` varchar(10) DEFAULT NULL,
  `id_cp` varchar(45) DEFAULT NULL,
  `id_tipo_vialidad` varchar(64) DEFAULT NULL,
  `vialidad_nombre` varchar(64) DEFAULT NULL,
  `entre_calles` text,
  `num_ext` varchar(8) DEFAULT NULL,
  `num_int` varchar(8) DEFAULT NULL,
  `descripcion` text,
  `actividad` varchar(128) DEFAULT NULL,
  `cobertura` varchar(45) DEFAULT NULL,
  `estados_cobertura` varchar(45) DEFAULT NULL,
  `municipios_cobertura` varchar(45) DEFAULT NULL,
  `regiones_cobertura` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`RFC`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `colectivos_P`
--

DROP TABLE IF EXISTS `colectivos_P`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `colectivos_P` (
  `RFC` varchar(10) NOT NULL,
  `nombre` varchar(128) NOT NULL,
  `fecha_constitucion` datetime DEFAULT NULL,
  `doc_constitucion` varchar(45) DEFAULT NULL,
  `id_municipio` char(2) DEFAULT NULL,
  `id_localidad` varchar(10) DEFAULT NULL,
  `id_cp` varchar(45) DEFAULT NULL,
  `id_tipo_vialidad` varchar(64) DEFAULT NULL,
  `vialidad_nombre` varchar(64) DEFAULT NULL,
  `entre_calles` text,
  `num_ext` varchar(8) DEFAULT NULL,
  `num_int` varchar(8) DEFAULT NULL,
  `descripcion` text,
  `actividad` varchar(128) DEFAULT NULL,
  `cobertura` varchar(45) DEFAULT NULL,
  `estados_cobertura` varchar(45) DEFAULT NULL,
  `municipios_cobertura` varchar(45) DEFAULT NULL,
  `regiones_cobertura` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`RFC`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `colectivos_Q`
--

DROP TABLE IF EXISTS `colectivos_Q`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `colectivos_Q` (
  `RFC` varchar(10) NOT NULL,
  `nombre` varchar(128) NOT NULL,
  `fecha_constitucion` datetime DEFAULT NULL,
  `doc_constitucion` varchar(45) DEFAULT NULL,
  `id_municipio` char(2) DEFAULT NULL,
  `id_localidad` varchar(10) DEFAULT NULL,
  `id_cp` varchar(45) DEFAULT NULL,
  `id_tipo_vialidad` varchar(64) DEFAULT NULL,
  `vialidad_nombre` varchar(64) DEFAULT NULL,
  `entre_calles` text,
  `num_ext` varchar(8) DEFAULT NULL,
  `num_int` varchar(8) DEFAULT NULL,
  `descripcion` text,
  `actividad` varchar(128) DEFAULT NULL,
  `cobertura` varchar(45) DEFAULT NULL,
  `estados_cobertura` varchar(45) DEFAULT NULL,
  `municipios_cobertura` varchar(45) DEFAULT NULL,
  `regiones_cobertura` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`RFC`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `colectivos_R`
--

DROP TABLE IF EXISTS `colectivos_R`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `colectivos_R` (
  `RFC` varchar(10) NOT NULL,
  `nombre` varchar(128) NOT NULL,
  `fecha_constitucion` datetime DEFAULT NULL,
  `doc_constitucion` varchar(45) DEFAULT NULL,
  `id_municipio` char(2) DEFAULT NULL,
  `id_localidad` varchar(10) DEFAULT NULL,
  `id_cp` varchar(45) DEFAULT NULL,
  `id_tipo_vialidad` varchar(64) DEFAULT NULL,
  `vialidad_nombre` varchar(64) DEFAULT NULL,
  `entre_calles` text,
  `num_ext` varchar(8) DEFAULT NULL,
  `num_int` varchar(8) DEFAULT NULL,
  `descripcion` text,
  `actividad` varchar(128) DEFAULT NULL,
  `cobertura` varchar(45) DEFAULT NULL,
  `estados_cobertura` varchar(45) DEFAULT NULL,
  `municipios_cobertura` varchar(45) DEFAULT NULL,
  `regiones_cobertura` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`RFC`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `colectivos_S`
--

DROP TABLE IF EXISTS `colectivos_S`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `colectivos_S` (
  `RFC` varchar(10) NOT NULL,
  `nombre` varchar(128) NOT NULL,
  `fecha_constitucion` datetime DEFAULT NULL,
  `doc_constitucion` varchar(45) DEFAULT NULL,
  `id_municipio` char(2) DEFAULT NULL,
  `id_localidad` varchar(10) DEFAULT NULL,
  `id_cp` varchar(45) DEFAULT NULL,
  `id_tipo_vialidad` varchar(64) DEFAULT NULL,
  `vialidad_nombre` varchar(64) DEFAULT NULL,
  `entre_calles` text,
  `num_ext` varchar(8) DEFAULT NULL,
  `num_int` varchar(8) DEFAULT NULL,
  `descripcion` text,
  `actividad` varchar(128) DEFAULT NULL,
  `cobertura` varchar(45) DEFAULT NULL,
  `estados_cobertura` varchar(45) DEFAULT NULL,
  `municipios_cobertura` varchar(45) DEFAULT NULL,
  `regiones_cobertura` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`RFC`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `colectivos_T`
--

DROP TABLE IF EXISTS `colectivos_T`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `colectivos_T` (
  `RFC` varchar(10) NOT NULL,
  `nombre` varchar(128) NOT NULL,
  `fecha_constitucion` datetime DEFAULT NULL,
  `doc_constitucion` varchar(45) DEFAULT NULL,
  `id_municipio` char(2) DEFAULT NULL,
  `id_localidad` varchar(10) DEFAULT NULL,
  `id_cp` varchar(45) DEFAULT NULL,
  `id_tipo_vialidad` varchar(64) DEFAULT NULL,
  `vialidad_nombre` varchar(64) DEFAULT NULL,
  `entre_calles` text,
  `num_ext` varchar(8) DEFAULT NULL,
  `num_int` varchar(8) DEFAULT NULL,
  `descripcion` text,
  `actividad` varchar(128) DEFAULT NULL,
  `cobertura` varchar(45) DEFAULT NULL,
  `estados_cobertura` varchar(45) DEFAULT NULL,
  `municipios_cobertura` varchar(45) DEFAULT NULL,
  `regiones_cobertura` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`RFC`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `colectivos_U`
--

DROP TABLE IF EXISTS `colectivos_U`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `colectivos_U` (
  `RFC` varchar(10) NOT NULL,
  `nombre` varchar(128) NOT NULL,
  `fecha_constitucion` datetime DEFAULT NULL,
  `doc_constitucion` varchar(45) DEFAULT NULL,
  `id_municipio` char(2) DEFAULT NULL,
  `id_localidad` varchar(10) DEFAULT NULL,
  `id_cp` varchar(45) DEFAULT NULL,
  `id_tipo_vialidad` varchar(64) DEFAULT NULL,
  `vialidad_nombre` varchar(64) DEFAULT NULL,
  `entre_calles` text,
  `num_ext` varchar(8) DEFAULT NULL,
  `num_int` varchar(8) DEFAULT NULL,
  `descripcion` text,
  `actividad` varchar(128) DEFAULT NULL,
  `cobertura` varchar(45) DEFAULT NULL,
  `estados_cobertura` varchar(45) DEFAULT NULL,
  `municipios_cobertura` varchar(45) DEFAULT NULL,
  `regiones_cobertura` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`RFC`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `colectivos_V`
--

DROP TABLE IF EXISTS `colectivos_V`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `colectivos_V` (
  `RFC` varchar(10) NOT NULL,
  `nombre` varchar(128) NOT NULL,
  `fecha_constitucion` datetime DEFAULT NULL,
  `doc_constitucion` varchar(45) DEFAULT NULL,
  `id_municipio` char(2) DEFAULT NULL,
  `id_localidad` varchar(10) DEFAULT NULL,
  `id_cp` varchar(45) DEFAULT NULL,
  `id_tipo_vialidad` varchar(64) DEFAULT NULL,
  `vialidad_nombre` varchar(64) DEFAULT NULL,
  `entre_calles` text,
  `num_ext` varchar(8) DEFAULT NULL,
  `num_int` varchar(8) DEFAULT NULL,
  `descripcion` text,
  `actividad` varchar(128) DEFAULT NULL,
  `cobertura` varchar(45) DEFAULT NULL,
  `estados_cobertura` varchar(45) DEFAULT NULL,
  `municipios_cobertura` varchar(45) DEFAULT NULL,
  `regiones_cobertura` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`RFC`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `colectivos_W`
--

DROP TABLE IF EXISTS `colectivos_W`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `colectivos_W` (
  `RFC` varchar(10) NOT NULL,
  `nombre` varchar(128) NOT NULL,
  `fecha_constitucion` datetime DEFAULT NULL,
  `doc_constitucion` varchar(45) DEFAULT NULL,
  `id_municipio` char(2) DEFAULT NULL,
  `id_localidad` varchar(10) DEFAULT NULL,
  `id_cp` varchar(45) DEFAULT NULL,
  `id_tipo_vialidad` varchar(64) DEFAULT NULL,
  `vialidad_nombre` varchar(64) DEFAULT NULL,
  `entre_calles` text,
  `num_ext` varchar(8) DEFAULT NULL,
  `num_int` varchar(8) DEFAULT NULL,
  `descripcion` text,
  `actividad` varchar(128) DEFAULT NULL,
  `cobertura` varchar(45) DEFAULT NULL,
  `estados_cobertura` varchar(45) DEFAULT NULL,
  `municipios_cobertura` varchar(45) DEFAULT NULL,
  `regiones_cobertura` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`RFC`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `colectivos_X`
--

DROP TABLE IF EXISTS `colectivos_X`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `colectivos_X` (
  `RFC` varchar(10) NOT NULL,
  `nombre` varchar(128) NOT NULL,
  `fecha_constitucion` datetime DEFAULT NULL,
  `doc_constitucion` varchar(45) DEFAULT NULL,
  `id_municipio` char(2) DEFAULT NULL,
  `id_localidad` varchar(10) DEFAULT NULL,
  `id_cp` varchar(45) DEFAULT NULL,
  `id_tipo_vialidad` varchar(64) DEFAULT NULL,
  `vialidad_nombre` varchar(64) DEFAULT NULL,
  `entre_calles` text,
  `num_ext` varchar(8) DEFAULT NULL,
  `num_int` varchar(8) DEFAULT NULL,
  `descripcion` text,
  `actividad` varchar(128) DEFAULT NULL,
  `cobertura` varchar(45) DEFAULT NULL,
  `estados_cobertura` varchar(45) DEFAULT NULL,
  `municipios_cobertura` varchar(45) DEFAULT NULL,
  `regiones_cobertura` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`RFC`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `colectivos_Y`
--

DROP TABLE IF EXISTS `colectivos_Y`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `colectivos_Y` (
  `RFC` varchar(10) NOT NULL,
  `nombre` varchar(128) NOT NULL,
  `fecha_constitucion` datetime DEFAULT NULL,
  `doc_constitucion` varchar(45) DEFAULT NULL,
  `id_municipio` char(2) DEFAULT NULL,
  `id_localidad` varchar(10) DEFAULT NULL,
  `id_cp` varchar(45) DEFAULT NULL,
  `id_tipo_vialidad` varchar(64) DEFAULT NULL,
  `vialidad_nombre` varchar(64) DEFAULT NULL,
  `entre_calles` text,
  `num_ext` varchar(8) DEFAULT NULL,
  `num_int` varchar(8) DEFAULT NULL,
  `descripcion` text,
  `actividad` varchar(128) DEFAULT NULL,
  `cobertura` varchar(45) DEFAULT NULL,
  `estados_cobertura` varchar(45) DEFAULT NULL,
  `municipios_cobertura` varchar(45) DEFAULT NULL,
  `regiones_cobertura` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`RFC`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `colectivos_Z`
--

DROP TABLE IF EXISTS `colectivos_Z`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `colectivos_Z` (
  `RFC` varchar(10) NOT NULL,
  `nombre` varchar(128) NOT NULL,
  `fecha_constitucion` datetime DEFAULT NULL,
  `doc_constitucion` varchar(45) DEFAULT NULL,
  `id_municipio` char(2) DEFAULT NULL,
  `id_localidad` varchar(10) DEFAULT NULL,
  `id_cp` varchar(45) DEFAULT NULL,
  `id_tipo_vialidad` varchar(64) DEFAULT NULL,
  `vialidad_nombre` varchar(64) DEFAULT NULL,
  `entre_calles` text,
  `num_ext` varchar(8) DEFAULT NULL,
  `num_int` varchar(8) DEFAULT NULL,
  `descripcion` text,
  `actividad` varchar(128) DEFAULT NULL,
  `cobertura` varchar(45) DEFAULT NULL,
  `estados_cobertura` varchar(45) DEFAULT NULL,
  `municipios_cobertura` varchar(45) DEFAULT NULL,
  `regiones_cobertura` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`RFC`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `dependencias`
--

DROP TABLE IF EXISTS `dependencias`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dependencias` (
  `id_dependencia` tinyint(4) NOT NULL COMMENT 'Identificador de la Dependencia',
  `id_sector` tinyint(4) NOT NULL COMMENT 'Identificador del Sector al que pertenece la dependencia, relacionado con la tabla sectores',
  `nombre` varchar(128) NOT NULL COMMENT 'Nombre de la dependencia',
  `acronimo` varchar(16) NOT NULL COMMENT 'Acronimo de la dependencia',
  PRIMARY KEY (`id_dependencia`),
  UNIQUE KEY `nombre_UNIQUE` (`nombre`),
  UNIQUE KEY `acronimo_UNIQUE` (`acronimo`),
  KEY `id_dependencia` (`id_dependencia`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='nombre de las dependencias';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `discapacidad`
--

DROP TABLE IF EXISTS `discapacidad`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `discapacidad` (
  `id_discapacidad` int(11) NOT NULL,
  `discapacidad` varchar(50) NOT NULL,
  `activo` char(1) NOT NULL,
  PRIMARY KEY (`id_discapacidad`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `estado_civil`
--

DROP TABLE IF EXISTS `estado_civil`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `estado_civil` (
  `id_estado_civil` int(11) NOT NULL,
  `estado_civil` varchar(25) NOT NULL,
  `activo` char(1) NOT NULL,
  PRIMARY KEY (`id_estado_civil`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `historial`
--

DROP TABLE IF EXISTS `historial`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `historial` (
  `id_usuario` int(11) NOT NULL,
  `fecha` char(8) NOT NULL,
  `hora` char(8) NOT NULL,
  `ip` varchar(15) NOT NULL,
  `id_accion` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `identificaciones`
--

DROP TABLE IF EXISTS `identificaciones`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `identificaciones` (
  `id_identificacion` int(11) NOT NULL AUTO_INCREMENT,
  `identificacion` varchar(25) NOT NULL,
  `activo` char(1) NOT NULL,
  PRIMARY KEY (`id_identificacion`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `idh`
--

DROP TABLE IF EXISTS `idh`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `idh` (
  `id_municipio` char(2) NOT NULL,
  `idh` char(6) DEFAULT NULL,
  `lugar_idh` char(2) DEFAULT NULL,
  `indice` char(7) DEFAULT NULL,
  `marginacion` varchar(8) DEFAULT NULL,
  `lugar_estatal` char(2) DEFAULT NULL,
  `poblacion` mediumint(9) DEFAULT NULL,
  PRIMARY KEY (`id_municipio`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `int_ben_col`
--

DROP TABLE IF EXISTS `int_ben_col`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `int_ben_col` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_grupo` int(11) NOT NULL,
  `curp` varchar(18) DEFAULT NULL,
  `cargo` varchar(32) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `localidades`
--

DROP TABLE IF EXISTS `localidades`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `localidades` (
  `id_localidad` varchar(10) NOT NULL,
  `id_municipio` tinyint(4) NOT NULL,
  `nombre` varchar(64) NOT NULL,
  PRIMARY KEY (`id_localidad`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `municipios`
--

DROP TABLE IF EXISTS `municipios`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `municipios` (
  `id_estado` char(2) NOT NULL,
  `id_municipio` char(3) NOT NULL,
  `municipio` varchar(64) NOT NULL,
  PRIMARY KEY (`id_municipio`),
  UNIQUE KEY `municipio_UNIQUE` (`municipio`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `nivel_estudios`
--

DROP TABLE IF EXISTS `nivel_estudios`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `nivel_estudios` (
  `id_estudios` int(11) NOT NULL AUTO_INCREMENT,
  `estudios` varchar(25) NOT NULL,
  `activo` char(1) NOT NULL,
  PRIMARY KEY (`id_estudios`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `origen_recurso`
--

DROP TABLE IF EXISTS `origen_recurso`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `origen_recurso` (
  `id_origen` tinyint(4) NOT NULL AUTO_INCREMENT,
  `origen` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id_origen`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `perfiles`
--

DROP TABLE IF EXISTS `perfiles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `perfiles` (
  `id_perfil` int(11) NOT NULL AUTO_INCREMENT,
  `perfil` varchar(16) NOT NULL,
  PRIMARY KEY (`id_perfil`),
  UNIQUE KEY `perfil_UNIQUE` (`perfil`),
  KEY `id_perfil` (`id_perfil`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `periodicidad`
--

DROP TABLE IF EXISTS `periodicidad`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `periodicidad` (
  `id_periodo` tinyint(4) NOT NULL AUTO_INCREMENT,
  `periodo` varchar(45) NOT NULL,
  PRIMARY KEY (`id_periodo`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `programas_poa`
--

DROP TABLE IF EXISTS `programas_poa`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `programas_poa` (
  `id_programa_poa` tinyint(4) NOT NULL AUTO_INCREMENT,
  `clave` varchar(5) NOT NULL,
  `descripcion` varchar(150) NOT NULL,
  PRIMARY KEY (`id_programa_poa`)
) ENGINE=InnoDB AUTO_INCREMENT=67 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `sectores`
--

DROP TABLE IF EXISTS `sectores`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sectores` (
  `id_sector` int(11) NOT NULL,
  `sector` varchar(45) NOT NULL,
  PRIMARY KEY (`id_sector`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `subprogramas_poa`
--

DROP TABLE IF EXISTS `subprogramas_poa`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `subprogramas_poa` (
  `id_subprograma_poa` smallint(6) NOT NULL AUTO_INCREMENT,
  `clave` varchar(5) NOT NULL,
  `descripcion` varchar(150) DEFAULT NULL,
  `id_programa_poa` smallint(6) DEFAULT NULL,
  PRIMARY KEY (`id_subprograma_poa`),
  KEY `id_programa_poa` (`id_programa_poa`)
) ENGINE=InnoDB AUTO_INCREMENT=365 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tipo_apoyo`
--

DROP TABLE IF EXISTS `tipo_apoyo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tipo_apoyo` (
  `id_tipo_apoyo` tinyint(4) NOT NULL AUTO_INCREMENT,
  `tipo_apoyo` varchar(45) NOT NULL,
  PRIMARY KEY (`id_tipo_apoyo`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tipo_asentamiento`
--

DROP TABLE IF EXISTS `tipo_asentamiento`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tipo_asentamiento` (
  `id_tipo` char(2) NOT NULL,
  `tipo_asentamiento` varchar(45) NOT NULL,
  PRIMARY KEY (`id_tipo`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tipo_obra`
--

DROP TABLE IF EXISTS `tipo_obra`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tipo_obra` (
  `id_tipo` int(11) DEFAULT NULL,
  `tipo` varchar(16) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tipo_seguridad`
--

DROP TABLE IF EXISTS `tipo_seguridad`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tipo_seguridad` (
  `id_salud` int(11) NOT NULL AUTO_INCREMENT,
  `salud` varchar(25) NOT NULL,
  `activo` char(1) NOT NULL,
  PRIMARY KEY (`id_salud`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tipo_vialidad`
--

DROP TABLE IF EXISTS `tipo_vialidad`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tipo_vialidad` (
  `id_tipo` int(11) NOT NULL AUTO_INCREMENT,
  `tipo` varchar(45) NOT NULL,
  `activo` varchar(45) NOT NULL,
  PRIMARY KEY (`id_tipo`)
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tipo_vivienda`
--

DROP TABLE IF EXISTS `tipo_vivienda`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tipo_vivienda` (
  `id_vivienda` int(11) NOT NULL,
  `vivienda` varchar(25) NOT NULL,
  `activo` char(1) NOT NULL,
  PRIMARY KEY (`id_vivienda`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `usuarios`
--

DROP TABLE IF EXISTS `usuarios`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `usuarios` (
  `id_usuario` int(11) NOT NULL AUTO_INCREMENT COMMENT 'identificador del usuario',
  `usuario` varchar(16) NOT NULL COMMENT 'nombre de usuario para accesar al sistema',
  `clave` char(32) NOT NULL COMMENT 'clave de acceso al sistema, encriptada desde php, encriptacion tipo MD5',
  `nombre` varchar(128) NOT NULL COMMENT 'nombre completo del usuario',
  `dependencia` int(11) NOT NULL COMMENT 'identificador de la dependencia',
  `activo` char(1) NOT NULL COMMENT 'revisar que el usuario este o no activo para iniciar el sistema',
  `perfil` char(1) DEFAULT NULL COMMENT 'perfil de usuario, determina permisos y vistas que puede realizar el usuario',
  `email` varchar(64) DEFAULT NULL,
  `telefono` varchar(10) DEFAULT NULL,
  `area` text,
  `avatar` varchar(145) DEFAULT 'default.png',
  PRIMARY KEY (`id_usuario`),
  UNIQUE KEY `usuario_UNIQUE` (`usuario`),
  KEY `id_usuario` (`id_usuario`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping routines for database 'padron_beneficiarios'
--
/*!50003 DROP PROCEDURE IF EXISTS `actualizar_beneficiario` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `actualizar_beneficiario`(
in t char(15),
in f_alta date,
in c char(18),
in pa varchar(25),
in sa varchar(25),
in nom varchar(50),
in s char(1),
in i char(2),
in f_nac date,
in e_nac char(2),
in m_nac char(3),
in l_nac char(4),
in a smallint,
in e_dir char(2),
in m_dir char(3),
in l_dir char(4),
in t_via smallint,
in v int,
in n_int varchar(8),
in n_ext varchar(8),
in t_asen tinyint,
in asen varchar(4),
in cp char(5),
in v_vec text,
in des_ub text,
in idh int,
in zap char(1),
in est_sodem char(1),
in per_sodem char(1),
in per_socdesc text,
in j_fam char(1),
in t_trab varchar(128),
in ing decimal,
in i_fam int,
in fam_dep int,
in t_viv tinyint,
in h_viv tinyint,
in e_ben tinyint,
in s_sal tinyint,
in d char(1),
in t_disc tinyint,
in m_col char(1),
in e varchar(128),
in tel varchar(10),
in f_act date
)
BEGIN

SET @y = concat("UPDATE ",t," SET fecha_alta='",f_alta,"',
primer_apellido='",pa,"',
segundo_apellido='",sa,"',
nombre='",nom,"',
sexo='",s,"',
identificacion='",i,"',
fecha_nacimiento='",f_nac,"',
estado_nacimiento='",e_nac,"',
municipio_nacimiento='",m_nac,"',
localidad_nacimiento='",l_nac,"',
ambito=",a,",
estado_dir='",e_dir,"',
municipio_dir='",m_dir,"',
localidad_dir='",l_dir,"',
tipo_vialidad=",t_via,",
vialidad=",v,",
numero_int='",n_int,"',
numero_ext='",n_ext,"',
t_asentamiento=",t_asen,",
asentamiento='",asen,"',
cp='",cp,"',
vialidades_vecinas='",v_vec,"',
descripcion_ubicacion='",des_ub,"',
idh=",idh,",
zap='",zap,"',
estudio_sociodemografico='",est_sodem,"',
perfil_sociodemografico='",per_sodem,"',
perfil_socio_desc='",per_socdesc,"',
jefe_familia='",j_fam,"',
tipo_trabajo='",t_trab,"',
ingreso=",ing,",
integrantes_fam=",i_fam,",
familiares_dependientes=",fam_dep,",
tipo_vivienda=",t_viv,",
habitantes_vivienda=",h_viv,",
estudios_beneficiario=",e_ben,",
serv_salud=",s_sal,",
discapacidad='",d,"',
tipo_discapacidad=",t_disc,",
miembro_colectivo='",m_col,"',
email='",e,"',
telefono='",tel,"',
fechas_actualizacion='",f_act,"'
WHERE curp='",c,"'");

PREPARE stmt FROM @y;
EXECUTE stmt;

end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `buscar_ben_01` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `buscar_ben_01`(
IN nombre varchar(64),
IN primer_ap varchar(32),
IN segundo_ap varchar(32),
IN municipio int,
in tabla varchar(16)
)
BEGIN

Select
b.curp as curp,
b.primer_ap as ap_paterno,
b.segundo_ap as ap_materno,
b.nombre as nombre,
m.municipio as municipio
From beneficiarios_G b
inner join municipios m on (b.id_municipio = m.id_municipio)
WHERE b.nombre like nombre
and b.primer_ap like primer_ap
and b.segundo_ap like segundo_ap
and m.id_municipio = municipio;


END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sel_user` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sel_user`(in u varchar(16),in c varchar(32))
begin
select count(*) from usuarios where usuario = u and clave = c;
end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Final view structure for view `ben_colectivos_lista`
--

/*!50001 DROP TABLE IF EXISTS `ben_colectivos_lista`*/;
/*!50001 DROP VIEW IF EXISTS `ben_colectivos_lista`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `ben_colectivos_lista` AS select `ben_colectivos`.`clave` AS `c`,`ben_colectivos`.`nombre` AS `n`,`ben_colectivos`.`rfc` AS `r` from `ben_colectivos` order by `ben_colectivos`.`nombre` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2015-09-11 12:07:15
