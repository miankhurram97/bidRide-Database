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
CREATE DATABASE IF NOT EXISTS `test` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `test`;

-- Dumping structure for table test.bidsonride
CREATE TABLE IF NOT EXISTS `bidsonride` (
  `id` int(100) NOT NULL AUTO_INCREMENT,
  `user_id` int(100) DEFAULT NULL,
  `ridePrice` varchar(40) DEFAULT NULL,
  `bidding_time` varchar(100) DEFAULT NULL,
  `estimated_price` varchar(100) DEFAULT NULL,
  `pick_lat` varchar(100) DEFAULT NULL,
  `pick_lng` varchar(100) DEFAULT NULL,
  `pick_location` varchar(500) DEFAULT NULL,
  `drop_lat` varchar(100) DEFAULT NULL,
  `drop_lng` varchar(100) DEFAULT NULL,
  `drop_location` varchar(500) DEFAULT NULL,
  `distance` varchar(100) DEFAULT NULL,
  `duration` varchar(100) DEFAULT NULL,
  `ride_option_id` varchar(100) DEFAULT NULL,
  `ride_option_name` varchar(100) DEFAULT NULL,
  `ride_request_id` varchar(100) DEFAULT NULL,
  `driver_id` int(11) DEFAULT NULL,
  `driver_lat` varchar(100) DEFAULT NULL,
  `driver_lng` varchar(100) DEFAULT NULL,
  `driver_phone` varchar(100) DEFAULT NULL,
  `driver_fullName` varchar(100) DEFAULT NULL,
  `driver_rideOption` varchar(100) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `FK4` (`user_id`),
  KEY `FK5` (`driver_id`),
  CONSTRAINT `FK4` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`),
  CONSTRAINT `FK5` FOREIGN KEY (`driver_id`) REFERENCES `users` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table test.bidsonride: ~0 rows (approximately)
/*!40000 ALTER TABLE `bidsonride` DISABLE KEYS */;
/*!40000 ALTER TABLE `bidsonride` ENABLE KEYS */;

-- Dumping structure for table test.completerides
CREATE TABLE IF NOT EXISTS `completerides` (
  `id` int(100) NOT NULL AUTO_INCREMENT,
  `biddingTime` varchar(100) DEFAULT NULL,
  `distance` varchar(100) DEFAULT NULL,
  `driverFullname` varchar(100) DEFAULT NULL,
  `driverId` int(11) DEFAULT NULL,
  `driverLat` varchar(500) DEFAULT NULL,
  `driverLng` varchar(100) DEFAULT NULL,
  `driverPhone` varchar(100) DEFAULT NULL,
  `driverRideOption` varchar(500) DEFAULT NULL,
  `rideOptionid` varchar(500) DEFAULT NULL,
  `rideOptionName` varchar(500) DEFAULT NULL,
  `ridePrice` varchar(500) DEFAULT NULL,
  `dropLat` varchar(100) DEFAULT NULL,
  `dropLng` varchar(100) DEFAULT NULL,
  `dropLocation` varchar(100) DEFAULT NULL,
  `duration` varchar(100) DEFAULT NULL,
  `estimatedPrice` varchar(100) DEFAULT NULL,
  `pickLat` varchar(100) DEFAULT NULL,
  `pickLng` varchar(100) DEFAULT NULL,
  `pickLocation` varchar(100) DEFAULT NULL,
  `paymentReceivedAmount` varchar(100) DEFAULT NULL,
  `paymentReceived` tinyint(1) DEFAULT NULL,
  `userId` int(11) DEFAULT NULL,
  `completed` tinyint(1) DEFAULT NULL,
  `isDeleted` tinyint(1) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `FK8` (`userId`),
  KEY `FK9` (`driverId`),
  CONSTRAINT `FK8` FOREIGN KEY (`userId`) REFERENCES `users` (`id`),
  CONSTRAINT `FK9` FOREIGN KEY (`driverId`) REFERENCES `users` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8;

-- Dumping data for table test.completerides: ~21 rows (approximately)
/*!40000 ALTER TABLE `completerides` DISABLE KEYS */;
INSERT INTO `completerides` (`id`, `biddingTime`, `distance`, `driverFullname`, `driverId`, `driverLat`, `driverLng`, `driverPhone`, `driverRideOption`, `rideOptionid`, `rideOptionName`, `ridePrice`, `dropLat`, `dropLng`, `dropLocation`, `duration`, `estimatedPrice`, `pickLat`, `pickLng`, `pickLocation`, `paymentReceivedAmount`, `paymentReceived`, `userId`, `completed`, `isDeleted`, `created_at`) VALUES
	(1, '1', '3.5', 'nks', 31, '3.745', '3.745', '1234', 'bike', '1', 'bike', '50', '7.354', '7.54', 'bijlighr', '5min', '60', '7.456', '7.456', 'ramghar', '50', 1, 8, 1, 0, '2020-08-11 00:17:14'),
	(2, '1', '3.5', 'nks', 31, '3.745', '3.745', '1234', 'bike', '1', 'bike', '50', '7.354', '7.54', 'bijlighr', '5min', '60', '7.456', '7.456', 'ramghar', '50', 1, 8, 1, 0, '2020-08-11 00:17:43'),
	(3, '1', '12.1 km', 'khu kj', 31, '31.5117987', '74.3297293', '123456', 'Bike', '2', 'Bike', '50', '31.5729711', '74.38111169999999', '29 Shalimar Link Road, Ramgarh, Lahore, Punjab 54000, Pakistan', '19 mins', '449.18', '31.5117987', '74.3297293', 'Qazafi Stadium, Ferozepur Rd, Abu Bakar Block Garden Town, Lahore, Punjab, Pakistan', '50', 0, 8, 1, NULL, '2020-08-11 11:24:03'),
	(4, '1', '12.1 km', 'khu kj', 31, '31.5117987', '74.3297293', '123456', 'Bike', '2', 'Bike', '50', '31.5729711', '74.38111169999999', '29 Shalimar Link Road, Ramgarh, Lahore, Punjab 54000, Pakistan', '19 mins', '449.18', '31.5117987', '74.3297293', 'Qazafi Stadium, Ferozepur Rd, Abu Bakar Block Garden Town, Lahore, Punjab, Pakistan', '50', 0, 8, 1, NULL, '2020-08-11 11:24:03'),
	(5, '1', '12.1 km', 'khu kj', 31, '31.5117987', '74.3297293', '123456', 'Bike', '2', 'Bike', '50', '31.5729711', '74.38111169999999', '29 Shalimar Link Road, Ramgarh, Lahore, Punjab 54000, Pakistan', '19 mins', '449.18', '31.5117987', '74.3297293', 'Qazafi Stadium, Ferozepur Rd, Abu Bakar Block Garden Town, Lahore, Punjab, Pakistan', '50', 0, 8, 1, NULL, '2020-08-11 11:24:03'),
	(6, '1', '12.1 km', 'khu kj', 31, '31.5117987', '74.3297293', '123456', 'Bike', '2', 'Bike', '50', '31.5729711', '74.38111169999999', '29 Shalimar Link Road, Ramgarh, Lahore, Punjab 54000, Pakistan', '19 mins', '449.18', '31.5117987', '74.3297293', 'Qazafi Stadium, Ferozepur Rd, Abu Bakar Block Garden Town, Lahore, Punjab, Pakistan', '50', 0, 8, 1, NULL, '2020-08-11 11:24:03'),
	(7, '1', '12.1 km', 'khu kj', 31, '31.5117987', '74.3297293', '123456', 'Bike', '2', 'Bike', '50', '31.5729711', '74.38111169999999', '29 Shalimar Link Road, Ramgarh, Lahore, Punjab 54000, Pakistan', '19 mins', '449.18', '31.5117987', '74.3297293', 'Qazafi Stadium, Ferozepur Rd, Abu Bakar Block Garden Town, Lahore, Punjab, Pakistan', '50', 0, 8, 1, NULL, '2020-08-11 11:24:03'),
	(8, '2', '9.2 km', 'khu kj', 31, '31.589851600000003', '74.389065', '123456', 'Bike', '2', 'Bike', '60', '31.531427', '74.3666499', '8 Fortress Stadium Circular Rd, Saddar Town, Lahore, Punjab, Pakistan', '23 mins', '341.88', '31.589851600000003', '74.389065', 'Imam stree, Shalamar Town, Lahore, Punjab, Pakistan', '60', 0, 8, 0, NULL, '2020-08-20 23:10:12'),
	(9, '2', '9.2 km', 'khu kj', 31, '31.589851600000003', '74.389065', '123456', 'Bike', '2', 'Bike', '60', '31.531427', '74.3666499', '8 Fortress Stadium Circular Rd, Saddar Town, Lahore, Punjab, Pakistan', '23 mins', '341.88', '31.589851600000003', '74.389065', 'Imam stree, Shalamar Town, Lahore, Punjab, Pakistan', '60', 0, 8, 1, NULL, '2020-08-20 23:10:12'),
	(10, '2', '9.2 km', 'khu kj', 31, '31.589851600000003', '74.389065', '123456', 'Bike', '2', 'Bike', '60', '31.531427', '74.3666499', '8 Fortress Stadium Circular Rd, Saddar Town, Lahore, Punjab, Pakistan', '23 mins', '341.88', '31.589851600000003', '74.389065', 'Imam stree, Shalamar Town, Lahore, Punjab, Pakistan', '60', 0, 8, 0, NULL, '2020-08-20 23:10:12'),
	(11, '1', '2.9 km', 'khu kj', 31, '31.5898647', '74.3891024', '123456', 'Bike', '2', 'Bike', '50', '31.571345', '74.3810462', '62 Shalimar Link Road, Ramgarh Lahore, Punjab 54840, Pakistan', '9 mins', '106.93', '31.5898647', '74.3891024', 'Soharwardi Rd, Shalamar Town, Lahore, Punjab, Pakistan', '50', 0, 8, 1, NULL, '2020-09-01 23:58:03'),
	(12, '1', '2.9 km', 'khu kj', 31, '31.5898647', '74.3891024', '123456', 'Bike', '2', 'Bike', '50', '31.571345', '74.3810462', '62 Shalimar Link Road, Ramgarh Lahore, Punjab 54840, Pakistan', '9 mins', '106.93', '31.5898647', '74.3891024', 'Soharwardi Rd, Shalamar Town, Lahore, Punjab, Pakistan', '50', 0, 8, 1, NULL, '2020-09-01 23:58:03'),
	(13, '1', '2.9 km', 'khu kj', 31, '31.5898647', '74.3891024', '123456', 'Bike', '2', 'Bike', '50', '31.571345', '74.3810462', '62 Shalimar Link Road, Ramgarh Lahore, Punjab 54840, Pakistan', '9 mins', '106.93', '31.5898647', '74.3891024', 'Soharwardi Rd, Shalamar Town, Lahore, Punjab, Pakistan', '50', 0, 8, 0, NULL, '2020-09-01 23:58:03'),
	(14, '1', '11.8 km', 'khu kj', 31, '31.508513599999997', '74.307639', '123456', 'Bike', '2', 'Bike', '50', '31.571345', '74.3810462', '62 Shalimar Link Road, Ramgarh Lahore, Punjab 54840, Pakistan', '18 mins', '435.49', '31.508513599999997', '74.307639', 'Sheikh Zayed Hospital Khayaban-e-Jamia Punjab, Block D Muslim Town, Lahore, Punjab, Pakistan', '50', 0, 8, 1, NULL, '2020-09-02 11:41:21'),
	(15, '1', '5.8 km', 'khu kj', 31, '31.5979192', '74.3721607', '123456', 'Bike', '2', 'Bike', '50', '31.571345', '74.3810462', '62 Shalimar Link Road, Ramgarh Lahore, Punjab 54840, Pakistan', '18 mins', '214.23', '31.5979192', '74.3721607', 'Unnamed Road, Gujjarpura, Lahore, Punjab, Pakistan', '50', 0, 8, 1, NULL, '2020-09-04 19:31:12'),
	(16, '1', '2.3 km', 'khu kj', 31, '31.580399699999997', '74.3939224', '123456', 'Bike', '2', 'Bike', '50', '31.5729711', '74.38111169999999', '29 Shalimar Link Road, Ramgarh, Lahore, Punjab 54000, Pakistan', '10 mins', '83.99', '31.580399699999997', '74.3939224', 'Unnamed Road, Shahid Park Lahore, Punjab 54000, Pakistan', '50', 0, 8, 1, NULL, '2020-11-04 10:44:00'),
	(17, '1', '2.3 km', 'khu kj', 31, '31.580399699999997', '74.3939224', '123456', 'Bike', '2', 'Bike', '50', '31.5729711', '74.38111169999999', '29 Shalimar Link Road, Ramgarh, Lahore, Punjab 54000, Pakistan', '10 mins', '83.99', '31.580399699999997', '74.3939224', 'Unnamed Road, Shahid Park Lahore, Punjab 54000, Pakistan', '50', 0, 8, 1, NULL, '2020-11-04 10:44:00'),
	(18, '1', '13.8 km', 'khu kj', 31, '31.493324800000003', '74.31454719999999', '123456', 'Bike', '2', 'Bike', '50', '31.5729711', '74.38111169999999', '29 Shalimar Link Road, Ramgarh, Lahore, Punjab 54000, Pakistan', '23 mins', '509.49', '31.493324800000003', '74.31454719999999', 'Plot 56, Tariq Block Garden Town, Lahore, Punjab, Pakistan', '50', 0, 8, 1, NULL, '2020-11-23 15:44:21'),
	(19, '1', '2.1 km', 'khu kj', 31, '31.5809337', '74.3896619', '123456', 'Bike', '2', 'Bike', '50', '31.5314518', '74.3666514', '8 Fortress Stadium Circular Rd, Saddar Town, Lahore, Punjab, Pakistan', '7 mins', '78.81', '31.5366603', '74.37984949999999', '52 Tufail Rd, Cantt, Lahore, Punjab 54810, Pakistan', '50', 0, 8, 1, NULL, '2020-12-28 23:26:24'),
	(20, '1', '2.1 km', 'khu kj', 31, '31.5898875', '74.3890457', '123456', 'Bike', '2', 'Bike', '50', '31.5314518', '74.3666514', '8 Fortress Stadium Circular Rd, Saddar Town, Lahore, Punjab, Pakistan', '7 mins', '78.81', '31.5366603', '74.37984949999999', '52 Tufail Rd, Cantt, Lahore, Punjab 54810, Pakistan', '50', 0, 8, 1, NULL, '2020-12-28 23:44:07'),
	(21, '1', '2.1 km', 'khu kj', 31, '31.5898875', '74.3890457', '123456', 'Bike', '2', 'Bike', '50', '31.5314518', '74.3666514', '8 Fortress Stadium Circular Rd, Saddar Town, Lahore, Punjab, Pakistan', '7 mins', '78.81', '31.5366603', '74.37984949999999', '52 Tufail Rd, Cantt, Lahore, Punjab 54810, Pakistan', '50', 0, 8, 1, NULL, '2020-12-28 23:44:07');
/*!40000 ALTER TABLE `completerides` ENABLE KEYS */;

-- Dumping structure for table test.manageride
CREATE TABLE IF NOT EXISTS `manageride` (
  `id` int(100) NOT NULL AUTO_INCREMENT,
  `biddingTime` varchar(100) DEFAULT NULL,
  `distance` varchar(100) DEFAULT NULL,
  `driverFullname` varchar(100) DEFAULT NULL,
  `driverId` int(11) DEFAULT NULL,
  `driverLat` varchar(500) DEFAULT NULL,
  `driverLng` varchar(100) DEFAULT NULL,
  `driverPhone` varchar(100) DEFAULT NULL,
  `driverRideOption` varchar(500) DEFAULT NULL,
  `rideOptionid` varchar(500) DEFAULT NULL,
  `rideOptionName` varchar(500) DEFAULT NULL,
  `ridePrice` varchar(500) DEFAULT NULL,
  `dropLat` varchar(100) DEFAULT NULL,
  `dropLng` varchar(100) DEFAULT NULL,
  `dropLocation` varchar(100) DEFAULT NULL,
  `duration` varchar(100) DEFAULT NULL,
  `estimatedPrice` varchar(100) DEFAULT NULL,
  `pickLat` varchar(100) DEFAULT NULL,
  `pickLng` varchar(100) DEFAULT NULL,
  `pickLocation` varchar(100) DEFAULT NULL,
  `paymentReceivedAmount` varchar(100) DEFAULT NULL,
  `paymentReceived` tinyint(1) DEFAULT NULL,
  `userId` int(11) DEFAULT NULL,
  `isDeleted` tinyint(1) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `FK6` (`userId`),
  KEY `FK7` (`driverId`),
  CONSTRAINT `FK6` FOREIGN KEY (`userId`) REFERENCES `users` (`id`),
  CONSTRAINT `FK7` FOREIGN KEY (`driverId`) REFERENCES `users` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- Dumping data for table test.manageride: ~2 rows (approximately)
/*!40000 ALTER TABLE `manageride` DISABLE KEYS */;
INSERT INTO `manageride` (`id`, `biddingTime`, `distance`, `driverFullname`, `driverId`, `driverLat`, `driverLng`, `driverPhone`, `driverRideOption`, `rideOptionid`, `rideOptionName`, `ridePrice`, `dropLat`, `dropLng`, `dropLocation`, `duration`, `estimatedPrice`, `pickLat`, `pickLng`, `pickLocation`, `paymentReceivedAmount`, `paymentReceived`, `userId`, `isDeleted`, `created_at`) VALUES
	(1, '1', '2.1 km', 'khu kj', 31, '31.5898875', '74.3890457', '123456', 'Bike', '2', 'Bike', '50', '31.5314518', '74.3666514', '8 Fortress Stadium Circular Rd, Saddar Town, Lahore, Punjab, Pakistan', '7 mins', '78.81', '31.5366603', '74.37984949999999', '52 Tufail Rd, Cantt, Lahore, Punjab 54810, Pakistan', '50', 0, 8, NULL, '2020-12-28 23:44:07'),
	(2, '1', '2.1 km', 'khu kj', 31, '31.589872699999994', '74.3890399', '123456', 'Bike', '2', 'Bike', '50', '31.5314518', '74.3666514', '8 Fortress Stadium Circular Rd, Saddar Town, Lahore, Punjab, Pakistan', '7 mins', '78.81', '31.5366603', '74.37984949999999', '52 Tufail Rd, Cantt, Lahore, Punjab 54810, Pakistan', '50', 0, 8, NULL, '2020-12-29 00:09:01');
/*!40000 ALTER TABLE `manageride` ENABLE KEYS */;

-- Dumping structure for table test.riderequest
CREATE TABLE IF NOT EXISTS `riderequest` (
  `id` int(100) NOT NULL AUTO_INCREMENT,
  `user_id` int(100) DEFAULT NULL,
  `bidding_time` varchar(100) DEFAULT NULL,
  `estimated_price` varchar(100) DEFAULT NULL,
  `pick_lat` varchar(100) DEFAULT NULL,
  `pick_lng` varchar(100) DEFAULT NULL,
  `pick_location` varchar(500) DEFAULT NULL,
  `drop_lat` varchar(100) DEFAULT NULL,
  `drop_lng` varchar(100) DEFAULT NULL,
  `drop_location` varchar(500) DEFAULT NULL,
  `distance` varchar(100) DEFAULT NULL,
  `duration` varchar(100) DEFAULT NULL,
  `ride_option_id` varchar(100) DEFAULT NULL,
  `ride_option_name` varchar(100) DEFAULT NULL,
  `isDeleted` tinyint(1) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `FK_riderequest_users` (`user_id`),
  CONSTRAINT `FK_riderequest_users` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table test.riderequest: ~0 rows (approximately)
/*!40000 ALTER TABLE `riderequest` DISABLE KEYS */;
/*!40000 ALTER TABLE `riderequest` ENABLE KEYS */;

-- Dumping structure for table test.users
CREATE TABLE IF NOT EXISTS `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_email` varchar(255) NOT NULL,
  `user_password` varchar(255) DEFAULT NULL,
  `user_utoken` varchar(255) DEFAULT NULL,
  `user_phone` varchar(255) DEFAULT NULL,
  `user_firstname` varchar(255) DEFAULT NULL,
  `user_lastname` varchar(255) DEFAULT NULL,
  `user_driver` tinyint(1) DEFAULT NULL,
  `ride_option_name` varchar(40) DEFAULT NULL,
  `active` tinyint(1) DEFAULT NULL,
  `user_rideHistory` tinyint(1) DEFAULT NULL,
  `rideStatus` tinyint(1) DEFAULT NULL,
  `ride_option_id` varchar(40) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=34 DEFAULT CHARSET=utf8;

-- Dumping data for table test.users: ~33 rows (approximately)
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` (`id`, `user_email`, `user_password`, `user_utoken`, `user_phone`, `user_firstname`, `user_lastname`, `user_driver`, `ride_option_name`, `active`, `user_rideHistory`, `rideStatus`, `ride_option_id`) VALUES
	(1, 'bti@bti.com.sa', '123456', NULL, '03078869199', NULL, NULL, 1, NULL, 1, NULL, NULL, NULL),
	(2, 'miankhurram97@yahoo.com', '123456', NULL, '03078869199', NULL, NULL, 1, NULL, 1, NULL, NULL, NULL),
	(3, 'miankhurram9797@gmail.com', '123', '00f7dce2-f3d2-436d-81f6-834124c9d5e9', '131231', 'mian', 'khurram', 1, NULL, 1, NULL, NULL, NULL),
	(4, 'my@email.com', '123456', NULL, '03364861538', NULL, NULL, 1, NULL, 1, NULL, NULL, NULL),
	(5, 'miankhurram@yahoo.com', '123456', NULL, '03078869199', NULL, NULL, 1, NULL, 1, NULL, NULL, NULL),
	(6, 'miankhurram1@yahoo.com', '123456', NULL, '03078869199', NULL, NULL, 1, NULL, 1, NULL, NULL, NULL),
	(7, 'miankhurram2@yahoo.com', '123456', 'b1c8089e-b223-439e-a633-5d2fb201c22c', '03078869199', NULL, NULL, 1, NULL, 1, NULL, NULL, NULL),
	(8, 'test@gmail.com', '123', NULL, '123456', 'mian2', 'khurram', 0, NULL, 1, 0, 1, NULL),
	(9, 'testnew@123gmail.com', '123456', NULL, '123456', 'main', 'KHURRAM', NULL, NULL, NULL, NULL, NULL, NULL),
	(10, 'testnew1@gmail.com', '123', NULL, '03459', 'shareef', 'ali', 1, NULL, NULL, NULL, NULL, NULL),
	(11, 'testnew2@gmail.com', '1234', NULL, '1255', 'ALI', 'awais', 0, NULL, NULL, NULL, NULL, NULL),
	(12, 'drivertest@gmail.com', '123', '232cac33-d3f3-4b03-a0c1-db0981169c1e', '03078869199', 'driver', 'driver', 1, NULL, 1, NULL, NULL, NULL),
	(13, 'test3@gmail.com', '123', NULL, '0123', 'test3', 'test3', 1, NULL, 1, NULL, NULL, NULL),
	(14, 'test4@gmail.com', '123', NULL, '0123', 'test3', 'test3', 1, NULL, 1, NULL, NULL, NULL),
	(15, 'test45@gmail.com', '123', NULL, '1234656', 'test45', 'test45', 1, NULL, 1, NULL, NULL, NULL),
	(16, 'test56@gmail.com', '123', NULL, '123', 'test56', 'test56', 1, NULL, 1, NULL, NULL, NULL),
	(17, 'test123@gmail.com', '123', NULL, '123', 'test123', 'test123', 1, NULL, 1, NULL, NULL, NULL),
	(18, 'test12@gmail.com', '123', NULL, '123', 'test12', 'test12', 1, NULL, 1, NULL, NULL, NULL),
	(19, 'test1234@gmail.com', '123', NULL, '123', 'test12', 'test12', 1, NULL, 1, NULL, NULL, NULL),
	(20, 'test222@gmail.com', '123', NULL, '132', 'test222', 'test222', 1, NULL, 1, NULL, NULL, NULL),
	(21, 'test33333@gmail.com', '123', NULL, '123', 'test33333', 'test33333', 1, NULL, 1, NULL, NULL, NULL),
	(22, 'test33@gmail.com', '123', NULL, '123', 'test33', 'test33', 1, NULL, 1, NULL, NULL, NULL),
	(23, 'testr@gmail.com', '123', NULL, '123', 'tesy4', 'tesy5', 1, NULL, 1, NULL, NULL, NULL),
	(24, 'test2234@gmail.com', '123', NULL, '123', 'test223', 'test223', 1, NULL, 1, NULL, NULL, NULL),
	(25, 'testdrive@gmail.com', '123', '483cae80-4912-4ecc-b1ff-85a6bd3277ef', '123', 'testdrive', 'testdrive', 1, NULL, 1, NULL, NULL, NULL),
	(26, 'test21314@gmail.com', '123', NULL, '123', 'main', 'ali', 1, NULL, 1, NULL, NULL, NULL),
	(27, 'testing45@gmail.com', '123', NULL, '123', 'testing34', 'testing56', 1, NULL, 1, NULL, NULL, NULL),
	(28, 'qqq@gmail.com', '123', NULL, '123', 'testaiai', 'teu', 1, NULL, 1, NULL, NULL, NULL),
	(29, 'rideoption@gmail.com', '123', '099ef7d3-079a-498b-8160-2d176f956864', '123456', 'rideoption', 'rideoption', 1, NULL, 1, NULL, NULL, NULL),
	(30, 'rideoption1@gmail.com', '123', 'e8f5d7d1-8fe2-4112-bded-26c68e8bd34e', '123456', 'rideoption', 'rideoption', 1, 'Bike', 1, 1, NULL, '2'),
	(31, 'drive@gmail.com', '123', '0d8025b1-3c07-49de-9903-4d349be900ce', '123456', 'khu', 'kj', 1, 'Bike', 1, 0, NULL, '2'),
	(32, 'admin@gmail.com', '123', '4ce6c5ed-6098-48f6-bce6-af8f96a47a36', '123456', 'admin', 'admin', 0, '', 1, NULL, NULL, ''),
	(33, 'khurram97@gmail.com', '123', NULL, '03078869199', 'khurram', 'khurram', 0, '', 1, NULL, NULL, '');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;

-- Dumping structure for table test.userslocation
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
  `ride_option_name` varchar(40) DEFAULT NULL,
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
  `ride_option_id` varchar(40) DEFAULT NULL,
  `version` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK2` (`user_id`),
  CONSTRAINT `FK2` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8;

-- Dumping data for table test.userslocation: ~21 rows (approximately)
/*!40000 ALTER TABLE `userslocation` DISABLE KEYS */;
INSERT INTO `userslocation` (`id`, `user_id`, `user_email`, `user_name`, `ip`, `city`, `region`, `region_code`, `country`, `country_name`, `continent_code`, `in_eu`, `postal`, `latitude`, `longitude`, `user_driver`, `ride_option_name`, `timezone`, `utc_offset`, `country_code`, `country_code_iso3`, `country_capital`, `country_tld`, `currency_name`, `country_area`, `country_population`, `country_calling_code`, `currency`, `languages`, `asn`, `org`, `active`, `phone`, `vehicle`, `ride_option_id`, `version`) VALUES
	(1, 7, 'miankhurram2@yahoo.com', NULL, '124.29.252.15', 'Lahore', 'Punjab', 'PB', 'PK', 'Pakistan', 'AS', '0', '55110', '31.5547', '74.3602', NULL, NULL, 'Asia/Karachi', '+0500', 'PK', 'PAK', 'Islamabad', '.pk', 'Rupee', '803940', '184404791', '+92', 'PKR', 'ur-PK,en-PK,pa,sd,ps,brh', 'AS9541', 'Cyber Internet Services (Pvt) Ltd.', 1, NULL, NULL, NULL, NULL),
	(2, 8, 'test@gmail.com', 'mian2', '116.206.166.98', 'Lahore', 'Punjab', 'PB', 'PK', 'Pakistan', 'AS', '0', '54000', '31.589824299999997', '74.3889195', 0, NULL, 'Asia/Karachi', '+0500', 'PK', 'PAK', 'Islamabad', '.pk', 'Rupee', '803940', '212215030', '+92', 'PKR', 'ur-PK,en-PK,pa,sd,ps,brh', 'AS135632', 'Cactus Network Solutions (CNS) Pvt Ltd', 1, '123456', NULL, NULL, 'IPv4'),
	(3, 14, 'test4@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL),
	(4, 16, 'test56@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL),
	(5, 17, 'test123@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL),
	(6, 18, 'test12@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL),
	(7, 19, 'test1234@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL),
	(8, 20, 'test222@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL),
	(9, 21, 'test33333@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL),
	(10, 22, 'test33@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL),
	(11, 23, 'testr@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL),
	(12, 24, 'test2234@gmail.com', 'test2234', '39.46.221.131', 'Lahore', 'Punjab', 'PB', 'PK', 'Pakistan', 'AS', '0', '54000', '31.580399699999997', '74.3939224', 1, NULL, 'Asia/Karachi', '+0500', 'PK', 'PAK', 'Islamabad', '.pk', 'Rupee', '803940', '184404791', '+92', 'PKR', 'ur-PK,en-PK,pa,sd,ps,brh', 'AS45595', 'Pakistan Telecom Company Limited', 1, '033666', 'vegan r', NULL, NULL),
	(13, 25, 'testdrive@gmail.com', 'testdrive', '119.153.160.92', 'Lahore', 'Punjab', 'PB', 'PK', 'Pakistan', 'AS', '0', '54000', '31.580399699999997', '74.3939224', 1, NULL, 'Asia/Karachi', '+0500', 'PK', 'PAK', 'Islamabad', '.pk', 'Rupee', '803940', '184404791', '+92', 'PKR', 'ur-PK,en-PK,pa,sd,ps,brh', 'AS45595', 'Pakistan Telecom Company Limited', 1, '123', 'vean r', NULL, NULL),
	(14, 26, 'test21314@gmail.com', 'test213', '39.46.221.131', 'Lahore', 'Punjab', 'PB', 'PK', 'Pakistan', 'AS', '0', '54000', '31.589877700000002', '74.3891065', 1, NULL, 'Asia/Karachi', '+0500', 'PK', 'PAK', 'Islamabad', '.pk', 'Rupee', '803940', '184404791', '+92', 'PKR', 'ur-PK,en-PK,pa,sd,ps,brh', 'AS45595', 'Pakistan Telecom Company Limited', 1, '131656', 'vean r', NULL, NULL),
	(15, 27, 'testing45@gmail.com', 'testing45', '39.46.221.131', 'Lahore', 'Punjab', 'PB', 'PK', 'Pakistan', 'AS', '0', '54000', '31.580399699999997', '74.3939224', 1, NULL, 'Asia/Karachi', '+0500', 'PK', 'PAK', 'Islamabad', '.pk', 'Rupee', '803940', '184404791', '+92', 'PKR', 'ur-PK,en-PK,pa,sd,ps,brh', 'AS45595', 'Pakistan Telecom Company Limited', 1, '564849864894', 'vsvgs', NULL, NULL),
	(16, 28, 'qqq@gmail.com', 'qqq', '39.46.221.131', 'Lahore', 'Punjab', 'PB', 'PK', 'Pakistan', 'AS', '0', '54000', '31.580399699999997', '74.3939224', 1, NULL, 'Asia/Karachi', '+0500', 'PK', 'PAK', 'Islamabad', '.pk', 'Rupee', '803940', '184404791', '+92', 'PKR', 'ur-PK,en-PK,pa,sd,ps,brh', 'AS45595', 'Pakistan Telecom Company Limited', 1, '03364861538', 'honda city', NULL, NULL),
	(17, 29, 'rideoption@gmail.com', 'rideoption', '119.153.164.12', 'Lahore', 'Punjab', 'PB', 'PK', 'Pakistan', 'AS', '0', '54000', '31.5898932', '74.3891763', 1, NULL, 'Asia/Karachi', '+0500', 'PK', 'PAK', 'Islamabad', '.pk', 'Rupee', '803940', '184404791', '+92', 'PKR', 'ur-PK,en-PK,pa,sd,ps,brh', 'AS45595', 'Pakistan Telecom Company Limited', 1, '123456', NULL, NULL, NULL),
	(18, 30, 'rideoption1@gmail.com', 'rideoption', '72.255.36.111', 'Lahore', 'Punjab', 'PB', 'PK', 'Pakistan', 'AS', '0', '54000', '31.4847346', '74.30181809999999', 1, NULL, 'Asia/Karachi', '+0500', 'PK', 'PAK', 'Islamabad', '.pk', 'Rupee', '803940', '184404791', '+92', 'PKR', 'ur-PK,en-PK,pa,sd,ps,brh', 'AS9541', 'Cyber Internet Services (Pvt) Ltd.', 1, '123456', NULL, NULL, NULL),
	(19, 31, 'drive@gmail.com', 'khu', '116.206.166.98', 'Lahore', 'Punjab', 'PB', 'PK', 'Pakistan', 'AS', '0', '54000', '31.589824299999997', '74.3889195', 1, 'Bike', 'Asia/Karachi', '+0500', 'PK', 'PAK', 'Islamabad', '.pk', 'Rupee', '803940', '212215030', '+92', 'PKR', 'ur-PK,en-PK,pa,sd,ps,brh', 'AS135632', 'Cactus Network Solutions (CNS) Pvt Ltd', 1, '123456', NULL, '2', 'IPv4'),
	(20, 32, 'admin@gmail.com', 'admin', '116.206.166.98', 'Lahore', 'Punjab', 'PB', 'PK', 'Pakistan', 'AS', '0', '54000', '31.5809337', '74.3896619', 0, NULL, 'Asia/Karachi', '+0500', 'PK', 'PAK', 'Islamabad', '.pk', 'Rupee', '803940', '212215030', '+92', 'PKR', 'ur-PK,en-PK,pa,sd,ps,brh', 'AS135632', 'Cactus Network Solutions (CNS) Pvt Ltd', 1, '123456', NULL, NULL, 'IPv4'),
	(21, 33, 'khurram97@gmail.com', 'khurram', '72.255.36.111', 'Lahore', 'Punjab', 'PB', 'PK', 'Pakistan', 'AS', '0', '54000', '31.5084178', '74.3212968', 0, '', 'Asia/Karachi', '+0500', 'PK', 'PAK', 'Islamabad', '.pk', 'Rupee', '803940', '184404791', '+92', 'PKR', 'ur-PK,en-PK,pa,sd,ps,brh', 'AS9541', 'Cyber Internet Services (Pvt) Ltd.', 1, '03078869199', NULL, '', NULL);
/*!40000 ALTER TABLE `userslocation` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
