DROP SCHEMA IF EXISTS `course-management`;
-- In MySQL, the schema is the synonym for the database
-- DROP DATABASE [IF EXISTS] database_name;
-- 

CREATE SCHEMA `course-management` DEFAULT CHARACTER SET utf8 ;
USE `course-management`;


-- Tabelle erzeugen
CREATE TABLE `course-management`.Funktionen (
	FNr INT NOT NULL,
	Funktion varchar(100) NOT NULL,
	CONSTRAINT Funktionen_PK PRIMARY KEY (FNr)
)
ENGINE=InnoDB
DEFAULT CHARSET=utf8
COLLATE=utf8_general_ci;

-- Daten einlesen

INSERT INTO `course-management`.Funktionen (FNr, Funktion) VALUES(1, 'Vorarbeiter');
INSERT INTO `course-management`.Funktionen (FNr, Funktion) VALUES(2, 'Meister');
INSERT INTO `course-management`.Funktionen (FNr, Funktion) VALUES(3, 'Chemiker');
INSERT INTO `course-management`.Funktionen (FNr, Funktion) VALUES(4, 'Bereichsleiter');
INSERT INTO `course-management`.Funktionen (FNr, Funktion) VALUES(5, 'Informatiker');
