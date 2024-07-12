-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Server-Version:               11.4.2-MariaDB-ubu2404 - mariadb.org binary distribution
-- Server-Betriebssystem:        debian-linux-gnu
-- HeidiSQL Version:             12.6.0.6765
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


-- Exportiere Datenbank-Struktur für todo
CREATE DATABASE IF NOT EXISTS `todo` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_uca1400_ai_ci */;
USE `todo`;

-- Exportiere Struktur von Tabelle todo.comment
CREATE TABLE IF NOT EXISTS `comment` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `itemid` int(11) NOT NULL,
  `authorid` int(11) NOT NULL,
  `text` text NOT NULL,
  `time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`),
  KEY `id` (`id`),
  KEY `fk_itemid` (`itemid`),
  KEY `fk_authorid_comment` (`authorid`),
  CONSTRAINT `fk_authorid_comment` FOREIGN KEY (`authorid`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION,
  CONSTRAINT `fk_itemid` FOREIGN KEY (`itemid`) REFERENCES `item` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci;

-- Exportiere Daten aus Tabelle todo.comment: ~3 rows (ungefähr)
DELETE FROM `comment`;
INSERT INTO `comment` (`id`, `itemid`, `authorid`, `text`, `time`) VALUES
	(24, 31, 22, 'asdasd', '2024-07-11 21:44:35'),
	(25, 32, 23, 'ssa', '2024-07-12 00:48:50'),
	(26, 32, 22, 'asaas', '2024-07-12 00:48:52');

-- Exportiere Struktur von Tabelle todo.item
CREATE TABLE IF NOT EXISTS `item` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `listid` int(11) NOT NULL,
  `authorid` int(11) NOT NULL,
  `title` tinytext NOT NULL,
  `description` text NOT NULL,
  `due` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `done` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`),
  KEY `id` (`id`),
  KEY `fk_listid` (`listid`),
  KEY `fk_authorid_item` (`authorid`),
  CONSTRAINT `fk_authorid_item` FOREIGN KEY (`authorid`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION,
  CONSTRAINT `fk_listid` FOREIGN KEY (`listid`) REFERENCES `list` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=33 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci;

-- Exportiere Daten aus Tabelle todo.item: ~5 rows (ungefähr)
DELETE FROM `item`;
INSERT INTO `item` (`id`, `listid`, `authorid`, `title`, `description`, `due`, `done`) VALUES
	(27, 15, 22, 't', 't', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
	(29, 12, 22, 'et', 'es', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
	(30, 12, 22, 'timmy', 'peter', '0000-00-00 00:00:00', '2024-07-11 20:55:28'),
	(31, 3, 22, 'item', 'desc', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
	(32, 1, 22, 't', 't', '0000-00-00 00:00:00', '0000-00-00 00:00:00');

-- Exportiere Struktur von Tabelle todo.list
CREATE TABLE IF NOT EXISTS `list` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `ownerid` int(11) NOT NULL,
  `title` tinytext NOT NULL,
  `description` text NOT NULL,
  PRIMARY KEY (`id`),
  KEY `id` (`id`),
  KEY `fk_ownerid` (`ownerid`),
  CONSTRAINT `fk_ownerid` FOREIGN KEY (`ownerid`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci;

-- Exportiere Daten aus Tabelle todo.list: ~7 rows (ungefähr)
DELETE FROM `list`;
INSERT INTO `list` (`id`, `ownerid`, `title`, `description`) VALUES
	(1, 22, 'diese ', 'newdesc'),
	(3, 22, 'wat', 'desc'),
	(8, 23, '8', 'desc'),
	(9, 23, '9', 'desc'),
	(11, 24, '11', 'no'),
	(12, 22, '3', 'desc'),
	(15, 22, 'test', 'test');

-- Exportiere Struktur von Tabelle todo.permission
CREATE TABLE IF NOT EXISTS `permission` (
  `listid` int(11) NOT NULL,
  `userid` int(11) NOT NULL,
  UNIQUE KEY `Combined Key` (`listid`,`userid`) USING BTREE,
  KEY `listid` (`listid`),
  KEY `userid` (`userid`) USING BTREE,
  CONSTRAINT `fk_listid_permission` FOREIGN KEY (`listid`) REFERENCES `list` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION,
  CONSTRAINT `fk_userid_permission` FOREIGN KEY (`userid`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci;

-- Exportiere Daten aus Tabelle todo.permission: ~1 rows (ungefähr)
DELETE FROM `permission`;
INSERT INTO `permission` (`listid`, `userid`) VALUES
	(1, 22),
	(1, 24);

-- Exportiere Struktur von Tabelle todo.users
CREATE TABLE IF NOT EXISTS `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` tinytext NOT NULL,
  `password` tinytext NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`) USING HASH,
  KEY `id` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci;

-- Exportiere Daten aus Tabelle todo.users: ~2 rows (ungefähr)
DELETE FROM `users`;
INSERT INTO `users` (`id`, `username`, `password`) VALUES
	(22, 'peter', '$2a$10$f1xRNrmE08NaT/OnQYdn5erDSVMKPj/i2iWOvTO80stphRe1o1Keq'),
	(23, 'peters', '$2a$10$5.aXBvYjg2S8a8O1UAMIqOy84utbtbLucmW5myndSw4w0ISkE1fu6'),
	(24, 'petersens', '$2a$10$wdbOc64ZiOOS3190kZEbP.Z9/U4E1hhmqUkTlSieMJ6XZV2LbVAoy');

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
