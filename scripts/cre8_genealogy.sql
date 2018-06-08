SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
/*SET time_zone = "+00:00" */;

DROP DATABASE IF EXISTS `genealogy`;
CREATE DATABASE IF NOT EXISTS `genealogy` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;
USE `genealogy`;

DROP TABLE IF EXISTS `news`;
CREATE TABLE IF NOT EXISTS `news` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(128) COLLATE utf8_general_ci NOT NULL,
  `slug` varchar(128) COLLATE utf8_general_ci NOT NULL,
  `text` text COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`id`),
  KEY slug (slug)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;
COMMIT;
