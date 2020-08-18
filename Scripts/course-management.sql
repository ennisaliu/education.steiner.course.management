
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


CREATE TABLE `course-management`.Personen (
	PNr INT NOT NULL,
	Name varchar(20) NULL,
	Vorname varchar(15) NULL,
	FNr INT NULL,
	Lohnstufe INT NULL,
	CONSTRAINT Personen_PK PRIMARY KEY (PNr)
)
ENGINE=InnoDB
DEFAULT CHARSET=utf8
COLLATE=utf8_general_ci;


ALTER TABLE `course-management`.Personen ADD CONSTRAINT Personen_FK FOREIGN KEY (FNr) REFERENCES `course-management`.Funktionen(FNr);


INSERT INTO `course-management`.Personen
(PNr, Name, Vorname, FNr, Lohnstufe)
VALUES(100001, 'Steffen', 'Felix', 3, 5),
(232452, 'Müller', 'Hugo', 1, 1),
(334643, 'Meier', 'Hans', 2, 5),
(567231, 'Schmid', 'Beat', 3, 4),
(345727, 'Steiner', 'René', 5, 5),
(233456, 'Müller', 'Franz', 4, 7),
(132442, 'Osswald', 'Kurt', 1, 2),
(345678, 'Metzger', 'Paul', 1, 1),
(344556, 'Scherrer', 'Daniel', 2, 4),
(845622, 'Huber', 'Walter', 4, 8),
(625342, 'Gerber', 'Roland', 3, 4);
