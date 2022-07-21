-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Server version:               10.4.24-MariaDB - mariadb.org binary distribution
-- Server OS:                    Win64
-- HeidiSQL Version:             12.0.0.6468
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


-- Dumping database structure for los_animales
DROP DATABASE IF EXISTS `los_animales`;
CREATE DATABASE IF NOT EXISTS `los_animales` /*!40100 DEFAULT CHARACTER SET utf8mb4 */;
USE `los_animales`;

-- Dumping structure for table los_animales.animals
DROP TABLE IF EXISTS `animals`;
CREATE TABLE IF NOT EXISTS `animals` (
  `id` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL DEFAULT '',
  `population` int(11) NOT NULL DEFAULT 0,
  `amount` int(11) NOT NULL DEFAULT 0,
  `developing_embryo_id` smallint(6) NOT NULL,
  `conservation_status_id` smallint(6) NOT NULL,
  `displacement_form_id` smallint(6) NOT NULL,
  `animal_type_id` smallint(6) NOT NULL,
  `animal_feeding_type_id` smallint(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COMMENT='Aquí se almacenarán los datos de los animales';

-- Dumping data for table los_animales.animals: ~10 rows (approximately)
DELETE FROM `animals`;
INSERT INTO `animals` (`id`, `name`, `population`, `amount`, `developing_embryo_id`, `conservation_status_id`, `displacement_form_id`, `animal_type_id`, `animal_feeding_type_id`) VALUES
	(1, 'ballena', 2000, 239000, 3, 3, 4, 5, 1),
	(2, 'murciélago', 1100, 120, 1, 4, 3, 3, 4),
	(3, 'brontosaurio', 0, 0, 1, 1, 1, 2, 3),
	(4, 'loro', 369, 75, 1, 4, 3, 3, 5),
	(5, 'caballo', 600000, 1200, 3, 4, 2, 1, 3),
	(6, 't-rex', 0, 0, 1, 1, 1, 2, 1),
	(7, 'grillo', 900, 25, 1, 3, 5, 4, 3),
	(8, 'canguro', 50000000, 50000000, 3, 4, 1, 1, 3),
	(9, 'leon', 32000, 100000, 3, 2, 2, 1, 1),
	(10, 'mantaraya', 100, 2, 2, 2, 4, 5, 1);

-- Dumping structure for table los_animales.animals_types
DROP TABLE IF EXISTS `animals_types`;
CREATE TABLE IF NOT EXISTS `animals_types` (
  `id` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4;

-- Dumping data for table los_animales.animals_types: ~5 rows (approximately)
DELETE FROM `animals_types`;
INSERT INTO `animals_types` (`id`, `name`) VALUES
	(1, 'mamifero'),
	(2, 'reptil'),
	(3, 'ave'),
	(4, 'insecto'),
	(5, 'marino');

-- Dumping structure for table los_animales.conservation_status
DROP TABLE IF EXISTS `conservation_status`;
CREATE TABLE IF NOT EXISTS `conservation_status` (
  `id` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4;

-- Dumping data for table los_animales.conservation_status: ~4 rows (approximately)
DELETE FROM `conservation_status`;
INSERT INTO `conservation_status` (`id`, `name`) VALUES
	(1, 'extinto'),
	(2, 'en peligro de extinción'),
	(3, 'amenazado'),
	(4, 'excluido');

-- Dumping structure for table los_animales.developing_embryon
DROP TABLE IF EXISTS `developing_embryon`;
CREATE TABLE IF NOT EXISTS `developing_embryon` (
  `id` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4;

-- Dumping data for table los_animales.developing_embryon: ~3 rows (approximately)
DELETE FROM `developing_embryon`;
INSERT INTO `developing_embryon` (`id`, `name`) VALUES
	(1, 'ovíparo'),
	(2, 'ovovivíparo'),
	(3, 'vivíparo');

-- Dumping structure for table los_animales.displacement_form
DROP TABLE IF EXISTS `displacement_form`;
CREATE TABLE IF NOT EXISTS `displacement_form` (
  `id` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4;

-- Dumping data for table los_animales.displacement_form: ~5 rows (approximately)
DELETE FROM `displacement_form`;
INSERT INTO `displacement_form` (`id`, `name`) VALUES
	(1, 'bipedo'),
	(2, 'cuadrupedo'),
	(3, 'volador'),
	(4, 'acuático'),
	(5, 'hexápodo');

-- Dumping structure for table los_animales.feeding_type
DROP TABLE IF EXISTS `feeding_type`;
CREATE TABLE IF NOT EXISTS `feeding_type` (
  `id` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(45) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COMMENT='aquí se almacenarán los tipos de y alimentación de los animales.';

-- Dumping data for table los_animales.feeding_type: ~5 rows (approximately)
DELETE FROM `feeding_type`;
INSERT INTO `feeding_type` (`id`, `name`) VALUES
	(1, 'carnivoro'),
	(2, 'omnivoro'),
	(3, 'herbivoro'),
	(4, 'insectivoro'),
	(5, 'frugívoro');

-- Dumping structure for table los_animales.habitats
DROP TABLE IF EXISTS `habitats`;
CREATE TABLE IF NOT EXISTS `habitats` (
  `id` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4;

-- Dumping data for table los_animales.habitats: ~3 rows (approximately)
DELETE FROM `habitats`;
INSERT INTO `habitats` (`id`, `name`) VALUES
	(1, 'terreste'),
	(2, 'aéreo'),
	(3, 'acuático');

-- Dumping structure for table los_animales.habitats_animals
DROP TABLE IF EXISTS `habitats_animals`;
CREATE TABLE IF NOT EXISTS `habitats_animals` (
  `id` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `animal's_id` smallint(6) NOT NULL DEFAULT 0,
  `habitat_id` smallint(6) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4;

-- Dumping data for table los_animales.habitats_animals: ~10 rows (approximately)
DELETE FROM `habitats_animals`;
INSERT INTO `habitats_animals` (`id`, `animal's_id`, `habitat_id`) VALUES
	(1, 1, 3),
	(2, 2, 2),
	(3, 3, 1),
	(4, 4, 2),
	(5, 5, 1),
	(6, 6, 1),
	(7, 7, 1),
	(8, 8, 1),
	(9, 9, 1),
	(10, 10, 3);

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
