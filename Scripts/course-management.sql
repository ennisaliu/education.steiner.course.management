
DROP SCHEMA IF EXISTS `course-management`;
-- In MySQL, the schema is the synonym for the database
-- DROP DATABASE [IF EXISTS] database_name;
-- 

CREATE SCHEMA `course-management` DEFAULT CHARACTER SET utf8 ;
USE `course-management`;


-- funktion (fnr, funktion)
-- Tabelle erzeugen
CREATE TABLE `funktion` (
  `fnr` int NOT NULL,
  `funktion` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`fnr`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Daten einlesen

INSERT INTO `course-management`.funktion (fnr, funktion) VALUES(1, 'Vorarbeiter');
INSERT INTO `course-management`.funktion (fnr, funktion) VALUES(2, 'Meister');
INSERT INTO `course-management`.funktion (fnr, funktion) VALUES(3, 'Chemiker');
INSERT INTO `course-management`.funktion (fnr, funktion) VALUES(4, 'Bereichsleiter');
INSERT INTO `course-management`.funktion (fnr, funktion) VALUES(5, 'Informatiker');

-- person (pnr, name, vorname, fnr, lohnstufe)
CREATE TABLE `person` (
  `pnr` int NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `vorname` varchar(100) DEFAULT NULL,
  `fnr` int DEFAULT NULL,
  `lohnstufe` varchar(100) DEFAULT NULL,
    PRIMARY KEY (`pnr`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;


ALTER TABLE `course-management`.person ADD CONSTRAINT Personen_FK FOREIGN KEY (fnr) REFERENCES `course-management`.funktion(fnr);


INSERT INTO `course-management`.person
(pnr, name, vorname, fnr, lohnstufe)
VALUES(100001, 'Steffen', 'Felix', 3, 5),
(232452, 'MÃ¼ller', 'Hugo', 1, 1),
(334643, 'Meier', 'Hans', 2, 5),
(567231, 'Schmid', 'Beat', 3, 4),
(345727, 'Steiner', 'RenÃ©', 5, 5),
(233456, 'MÃ¼ller', 'Franz', 4, 7),
(132442, 'Osswald', 'Kurt', 1, 2),
(345678, 'Metzger', 'Paul', 1, 1),
(344556, 'Scherrer', 'Daniel', 2, 4),
(845622, 'Huber', 'Walter', 4, 8),
(625342, 'Gerber', 'Roland', 3, 4);



-- kurs (knr, kursbezeichnung, ktnr, kursort) - Sandro




-- kursthemen (ktnr, themengebiet) - Sandro



-- kursleiter (klnr, status)  Johanns
-- externe_kursleiter (klnr, ename, evorname, firma)
-- interne_kursleiter (klnr, pnr, kurserfahrung)



-- kursbesuche (pnr, knr, klnr, datum) Christoph



-- kurskontrolle (fnr, knr) Ennis


CREATE TABLE `Kurskontrolle` (
  `FNr` int NOT NULL,
  `KNr` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

INSERT INTO `course-management`.kurskontrolle
(fnr, knr)
VALUES
(1,123),
(2,123),
(3,123),
(4,123),
(2,562),
(3,562),
(4,562),
(3,234),
(5,234),
(3,341),
(3,245),
(4,245),
(2,412),
(3,412),
(1,454),
(2,454),
(3,454),
(4,454),
(3,216),
(3,456),
(4,455),
(4,345),
(1,283),
(2,283),
(3,283),
(1,776),
(2,776),
(5,245);
