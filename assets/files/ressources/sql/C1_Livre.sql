-- Base de données C1_Eleve
-- Creation le 08-10-2018

-- Suppression des tables

DROP TABLE if exists C1_Livre;

-- Création de la table

CREATE TABLE C1_Livre(
	livId int primary key,
	livTitre varchar(50),
	livAuteur varchar(50),
	livISBN int,
	livGenre varchar(20)
) ENGINE=innodb CHARSET=UTF8;

