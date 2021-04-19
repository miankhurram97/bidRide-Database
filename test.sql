-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Server version:               5.7.26-log - MySQL Community Server (GPL)
-- Server OS:                    Win64
-- HeidiSQL Version:             10.3.0.5771
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;


-- Dumping database structure for test
DROP DATABASE IF EXISTS `test`;
CREATE DATABASE IF NOT EXISTS `test` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `test`;

-- Dumping structure for table test.users
DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_email` varchar(255) NOT NULL,
  `user_password` varchar(255) DEFAULT NULL,
  `user_utoken` varchar(255) DEFAULT NULL,
  `user_phone` varchar(255) DEFAULT NULL,
  `user_firstname` varchar(255) DEFAULT NULL,
  `user_lastname` varchar(255) DEFAULT NULL,
  `user_driver` tinyint(1) DEFAULT NULL,
  `active` tinyint(1) DEFAULT NULL,
  `user_rideHistory` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=utf8;

-- Data exporting was unselected.

-- Dumping structure for table test.userslocation
DROP TABLE IF EXISTS `userslocation`;
CREATE TABLE IF NOT EXISTS `userslocation` (
  `id` int(50) NOT NULL AUTO_INCREMENT,
  `user_id` int(50) DEFAULT NULL,
  `user_email` varchar(50) DEFAULT NULL,
  `user_name` varchar(40) DEFAULT NULL,
  `ip` varchar(30) DEFAULT NULL,
  `city` varchar(50) DEFAULT NULL,
  `region` varchar(50) DEFAULT NULL,
  `region_code` varchar(50) DEFAULT NULL,
  `country` varchar(50) DEFAULT NULL,
  `country_name` varchar(50) DEFAULT NULL,
  `continent_code` varchar(50) DEFAULT NULL,
  `in_eu` varchar(50) DEFAULT NULL,
  `postal` varchar(50) DEFAULT NULL,
  `latitude` varchar(50) DEFAULT NULL,
  `longitude` varchar(50) DEFAULT NULL,
  `user_driver` tinyint(1) DEFAULT NULL,
  `timezone` varchar(50) DEFAULT NULL,
  `utc_offset` varchar(50) DEFAULT NULL,
  `country_code` varchar(40) DEFAULT NULL,
  `country_code_iso3` varchar(40) DEFAULT NULL,
  `country_capital` varchar(40) DEFAULT NULL,
  `country_tld` varchar(40) DEFAULT NULL,
  `currency_name` varchar(40) DEFAULT NULL,
  `country_area` varchar(40) DEFAULT NULL,
  `country_population` varchar(40) DEFAULT NULL,
  `country_calling_code` varchar(50) DEFAULT NULL,
  `currency` varchar(50) DEFAULT NULL,
  `languages` varchar(50) DEFAULT NULL,
  `asn` varchar(50) DEFAULT NULL,
  `org` varchar(50) DEFAULT NULL,
  `active` tinyint(1) DEFAULT NULL,
  `phone` varchar(40) DEFAULT NULL,
  `vehicle` varchar(40) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8;

-- Data exporting was unselected.

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
