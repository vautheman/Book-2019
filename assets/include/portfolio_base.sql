-- Base de donées portfolio crée le 22 septembre 2019
-- Par AUTHEMAN Victor

-- sqlite

-- Suppression des tables existantes

DROP TABLE if exists articles;
DROP TABLE if exists card;
DROP TABLE if exists membres;
DROP TABLE if exists commentaires;
DROP TABLE if exists portfolio;
DROP TABLE if exists projets;

CREATE TABLE articles (
  artId INTEGER PRIMARY KEY AUTOINCREMENT,
  artTitre varchar(255) NOT NULL,
  artContenu mediumtext NOT NULL,
  artDate datetime NOT NULL,
  artDate_time_edition datetime NOT NULL
);
CREATE TABLE card (
  cardId INTEGER PRIMARY KEY AUTOINCREMENT,
  cardNom varchar(50) DEFAULT NULL,
  cardDesc text,
  cardURL text,
  portId INTEGER(11) NOT NULL,
  foreign key(portId) references portfolio(portId)
);

CREATE TABLE membres (
  memId INTEGER PRIMARY KEY AUTOINCREMENT,
  memNom varchar(255) NOT NULL,
  memPrenom varchar(255) NOT NULL,
  memEmail varchar(255) NOT NULL,
  memUtilisateur varchar(32) NOT NULL,
  memMotDePasse text NOT NULL,
  memKey varchar(255) NOT NULL,
  memConfirme int(11) NOT NULL
);

CREATE TABLE commentaires (
  comId INTEGER PRIMARY KEY AUTOINCREMENT,
  comUser varchar(255) NOT NULL,
  comTexte varchar(1500) NOT NULL,
  comType varchar(255) NOT NULL
);

CREATE TABLE portfolio (
  portId INTEGER PRIMARY KEY AUTOINCREMENT,
  portNom varchar(50) DEFAULT NULL,
  portImage varchar(50) DEFAULT NULL,
  portDesc text,
  portMementoURL text,
  portAncre varchar(20)
);

CREATE TABLE projets (
  projetId INTEGER PRIMARY KEY AUTOINCREMENT,
  projetNom varchar(50) NOT NULL,
  projetDes text NOT NULL,
  projetIMG varchar(20) NOT NULL,
  projetURL text NOT NULL
);
