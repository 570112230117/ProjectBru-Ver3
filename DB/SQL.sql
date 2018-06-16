-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Server version:               10.1.31-MariaDB - mariadb.org binary distribution
-- Server OS:                    Win32
-- HeidiSQL Version:             9.5.0.5196
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;


-- Dumping database structure for amnuay
CREATE DATABASE IF NOT EXISTS `amnuay` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `amnuay`;

-- Dumping structure for table amnuay.customer
CREATE TABLE IF NOT EXISTS `customer` (
  `customer_id` int(11) NOT NULL AUTO_INCREMENT,
  `customer_name` varchar(50) DEFAULT NULL,
  `customer_address` varchar(255) DEFAULT NULL,
  `customer_phone` varchar(11) DEFAULT NULL,
  `customer_email` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`customer_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table amnuay.customer: ~0 rows (approximately)
/*!40000 ALTER TABLE `customer` DISABLE KEYS */;
/*!40000 ALTER TABLE `customer` ENABLE KEYS */;

-- Dumping structure for table amnuay.repair
CREATE TABLE IF NOT EXISTS `repair` (
  `repair_id` int(11) NOT NULL AUTO_INCREMENT,
  `repair_date` timestamp NULL DEFAULT NULL,
  `repair_name` varchar(50) DEFAULT NULL,
  `repair_address` varchar(255) DEFAULT NULL,
  `repair_phone` varchar(11) DEFAULT NULL,
  `repair_email` varchar(50) DEFAULT NULL,
  `repair_warranty` varchar(50) DEFAULT NULL,
  `repair_serialnumber` varchar(50) DEFAULT NULL,
  `repair_type` varchar(50) DEFAULT NULL,
  `repair_product` varchar(50) DEFAULT NULL,
  `repair_waste` varchar(255) DEFAULT NULL,
  `repair_detail` varchar(255) DEFAULT NULL,
  `repair_appointment` date DEFAULT NULL,
  `repair_img` varchar(250) DEFAULT NULL,
  PRIMARY KEY (`repair_id`)
) ENGINE=InnoDB AUTO_INCREMENT=99 DEFAULT CHARSET=utf8;

-- Dumping data for table amnuay.repair: ~19 rows (approximately)
/*!40000 ALTER TABLE `repair` DISABLE KEYS */;
INSERT INTO `repair` (`repair_id`, `repair_date`, `repair_name`, `repair_address`, `repair_phone`, `repair_email`, `repair_warranty`, `repair_serialnumber`, `repair_type`, `repair_product`, `repair_waste`, `repair_detail`, `repair_appointment`, `repair_img`) VALUES
	(95, '2018-06-16 16:30:42', '', '', '', '', NULL, '', NULL, NULL, '', '', NULL, '11.jpg'),
	(96, '2018-06-16 16:31:31', '', '', '', '', NULL, '', NULL, NULL, '', '', NULL, '11.jpg');
/*!40000 ALTER TABLE `repair` ENABLE KEYS */;

-- Dumping structure for table amnuay.type_appliances
CREATE TABLE IF NOT EXISTS `type_appliances` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type_name` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- Dumping data for table amnuay.type_appliances: ~5 rows (approximately)
/*!40000 ALTER TABLE `type_appliances` DISABLE KEYS */;
INSERT INTO `type_appliances` (`id`, `type_name`) VALUES
	(1, 'เครื่องทำความเย็น'),
	(2, 'เครื่องทำความร้อน'),
	(3, 'ให้แสงสว่าง'),
	(4, 'ให้ความบันเทิง'),
	(5, 'มอเตอร์และสายพาน');
/*!40000 ALTER TABLE `type_appliances` ENABLE KEYS */;

-- Dumping structure for table amnuay.type_product
CREATE TABLE IF NOT EXISTS `type_product` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `product` varchar(50) DEFAULT NULL,
  `type_name` varchar(50) DEFAULT NULL,
  `type_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8;

-- Dumping data for table amnuay.type_product: ~17 rows (approximately)
/*!40000 ALTER TABLE `type_product` DISABLE KEYS */;
INSERT INTO `type_product` (`id`, `product`, `type_name`, `type_id`) VALUES
	(1, 'แอร์', 'ประเภทเครื่องทำความเย็น', 1),
	(2, 'ตู้เย็น ', 'ประเภทเครื่องทำความเย็น', 1),
	(3, 'กระติกน้ำร้อน', 'ประเภทเครื่องทำความร้อน', 2),
	(4, 'หม้อหุงข้าว', 'ประเภทเครื่องทำความร้อน', 2),
	(5, 'เครื่องทำน้ำอุ่น', 'ประเภทเครื่องทำความร้อน', 2),
	(6, 'เตาไมโครเวฟ', 'ประเภทเครื่องทำความร้อน', 2),
	(7, 'กระทะไฟฟ้า', 'ประเภทเครื่องทำความร้อน', 2),
	(8, 'เครื่องปิ่งขนมปัง', 'ประเภทเครื่องทำความร้อน', 2),
	(9, 'เตารีด', 'ประเภทเครื่องทำความร้อน', 2),
	(10, 'ไฟฉาย', 'ประเภทให้แสงสว่าง', 3),
	(11, 'หลอดไฟ', 'ประเภทให้แสงสว่าง', 3),
	(12, 'โทรทัศน์', 'ประเภทให้ความบันเทิง', 4),
	(13, 'เสตอริโอ', 'ประเภทให้ความบันเทิง', 4),
	(14, 'คอมพิวเตอร์', 'ประเภทให้ความบันเทิง', 4),
	(15, 'พัดลม', 'ประเภทมอเตอร์และสายพาน', 5),
	(16, 'เครื่องซักผ้า', 'ประเภทมอเตอร์และสายพาน', 5),
	(17, 'เครื่องปั่นผลไม้', 'ประเภทมอเตอร์และสายพาน', 5);
/*!40000 ALTER TABLE `type_product` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
