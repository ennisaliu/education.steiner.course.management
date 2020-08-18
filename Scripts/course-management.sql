
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



-- kurs (knr, kursbezeichnung, ktnr, kursort) - Sandro




-- kursthemen (ktnr, themengebiet) - Sandro



-- kursleiter (klnr, status)  Johannes
-- externe_kursleiter (klnr, ename, evorname, firma)
-- interne_kursleiter (klnr, pnr, kurserfahrung)
CREATE TABLE `course-management`.kursleiter (
	klnr INT NOT NULL,
	s varchar(2) NOT NULL,
	pnr INT NULL,
	name varchar(100) NULL,
	vorname varchar(100) NULL,
	firma varchar(100) NULL,
	kerf int NULL,
	CONSTRAINT kursleiter_pk PRIMARY KEY (klnr)
)
ENGINE=InnoDB
DEFAULT CHARSET=utf8mb4
COLLATE=utf8mb4_0900_ai_ci;

INSERT INTO `course-management`.kursleiter
(klnr, s, pnr, name, vorname, firma, kerf)
VALUES(1, 'I', 343745, 'Steiner', 'Ren�', NULL, 3);
INSERT INTO `course-management`.kursleiter
(klnr, s, pnr, name, vorname, firma, kerf)
VALUES(2, 'E', NULL, 'Suter', 'Rolf', 'GigaSoft', NULL);
INSERT INTO `course-management`.kursleiter
(klnr, s, pnr, name, vorname, firma, kerf)
VALUES(3, 'I', 554433, 'M�ller', 'Hugo', NULL, 1);
INSERT INTO `course-management`.kursleiter
(klnr, s, pnr, name, vorname, firma, kerf)
VALUES(4, 'I', 546789, 'M�ller', 'Franz', NULL, 4);
INSERT INTO `course-management`.kursleiter
(klnr, s, pnr, name, vorname, firma, kerf)
VALUES(5, 'E', NULL, 'Vogt', 'Peter', 'Quasar', NULL);
INSERT INTO `course-management`.kursleiter
(klnr, s, pnr, name, vorname, firma, kerf)
VALUES(6, 'I', 123987, 'Huber', 'Walter', NULL, 3);
INSERT INTO `course-management`.kursleiter
(klnr, s, pnr, name, vorname, firma, kerf)
VALUES(7, 'E', NULL, 'Krieg', 'Stefan', 'Funkenflug', NULL);
INSERT INTO `course-management`.kursleiter
(klnr, s, pnr, name, vorname, firma, kerf)
VALUES(8, 'E', NULL, 'Freundlich', 'Andreas', 'Harmonie', NULL);



-- kursbesuche (pnr, knr, klnr, datum) Christoph



-- kurskontrolle (fnr, knr) Ennis

CREATE TABLE `Kurskontrolle` (
  `pnr` int NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `vorname` varchar(100) DEFAULT NULL,
  `fnr` int DEFAULT NULL,
  `lohnstufe` varchar(100) DEFAULT NULL,
    PRIMARY KEY (`pnr`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;


ALTER TABLE `course-management`.person ADD CONSTRAINT Personen_FK FOREIGN KEY (fnr) REFERENCES `course-management`.funktion(fnr);



-- kurs (knr, kursbezeichnung, ktnr, kursort) - Sandro

CREATE TABLE `course-management`.kurse (
	knr INT NOT NULL,
	kursbezeichnung varchar(100) NULL,
	kursort varchar(100) NULL,
	tnr INT NULL,
	CONSTRAINT kurse_PK PRIMARY KEY (knr)
)
ENGINE=InnoDB
DEFAULT CHARSET=utf8
COLLATE=utf8_general_ci;

INSERT INTO `course-management`.kurse (knr, kursbezeichnung, kursort, tnr) VALUES
(123, 'Arbeitshygiene', '2510.EG.25', 1),
(562, 'Führen einer Gruppe', '1010.4.08', 2),
(234, 'Präsentationstechnik', '1010.4.08', 4),
(341, 'Textverarbeitung', '2015.1.10', 3),
(245, 'Konstenschätzung', '1010.2.05', 5),
(412, 'Tabellenkalkulation', '2015.1.10', 3),
(454, 'Elektrostatische Aufladung', '4001.EG.20', 1),
(255, 'Datenbanken', '2015.2.05', 3),
(455, 'Terminplanung', '1010.4.08', 5),
(345, 'Schwierige Gespräche führen', '1010.2.05', 2),
(283, 'Abfallentsorgung', '4001.EG.20', 1),
(776, 'Wartung von Anlagen', '1010.2.05', 4);



-- kursthemen (ktnr, themengebiet) - Sandro

CREATE TABLE `course-management`.kursthemen (
	tnr INT auto_increment NOT NULL,
	themengebiet varchar(100) NULL,
	CONSTRAINT kursthemen_PK PRIMARY KEY (tnr)
)
ENGINE=InnoDB
DEFAULT CHARSET=utf8
COLLATE=utf8_general_ci;

INSERT INTO `course-management`.kursthemen (themengebiet) 
VALUES('Sicherheit und Umweltschutz'),
('Fuehrung und Zusammenarbeit'),
('Pc-Kurse'),
('Arbeitstechnik'),
('Projekte'),
('Schulung');


-- kursleiter (klnr, status)  Johanns
-- externe_kursleiter (klnr, ename, evorname, firma)
-- interne_kursleiter (klnr, pnr, kurserfahrung)



-- kursbesuche (pnr, knr, klnr, datum) Christoph



-- kurskontrolle (fnr, knr) Christoph


