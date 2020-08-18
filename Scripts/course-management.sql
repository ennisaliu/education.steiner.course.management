
DROP SCHEMA IF EXISTS `course-management`;
-- In MySQL, the schema is the synonym for the database
-- DROP DATABASE [IF EXISTS] database_name;
-- 

CREATE SCHEMA `course-management` DEFAULT CHARACTER SET utf8 ;
USE `course-management`;

CREATE TABLE `person` (
  `pnr` int NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `vorname` varchar(100) DEFAULT NULL,
  `fnr` int DEFAULT NULL,
  `lohnstufe` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci

CREATE TABLE `funktion` (
  `fnr` int NOT NULL,
  `funktion` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci