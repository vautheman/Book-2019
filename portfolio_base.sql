-- Créé par AUTHEMAN Victor
-- 09/03/2019

-- mysql

-- Suppression des tables
DROP TABLE if exists portfolio;
DROP TABLE if exists card;

-- Création des tables
CREATE TABLE portfolio(
  portId int primary key not null auto_increment,
  portNom varchar(50),
  portImage varchar(50),
  portDesc text,
  portMementoURL text,
  portAncre varchar(20)
)ENGINE=innodb CHARSET=utf8;

CREATE TABLE card(
  cardId int primary key not null auto_increment,
  cardNom varchar(50),
  cardDesc text,
  cardURL text,
  portId int not null
)ENGINE=innodb CHARSET=utf8;

-- Ajout de clé étrangères
ALTER TABLE card ADD foreign key (portId) references portfolio(portId);
