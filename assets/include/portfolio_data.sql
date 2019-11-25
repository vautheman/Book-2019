-- Data de la base de donées portfolio crée le 22 septembre 2019
-- Par AUTHEMAN Victor

-- sqlite

-- Suppression des données

DELETE FROM card;
DELETE FROM membres;
DELETE FROM commentaires;
DELETE FROM portfolio;
DELETE FROM projets;

INSERT INTO "card" VALUES(1,'Installation Debian 9','Tutoriel pour apprendre Ã  installer et configurer Debian 9.','https://drive.google.com/open?id=1OZL74mHf3mrE9XUmVlrfvlGGnEiXBWwz9GNJLDLYNGA',6);
INSERT INTO "card" VALUES(2,'Installation Serveur Web','Tutoriel pour apprendre Ã  installer un serveur Web sur Linux. (Le fichier sources est disponible dans mes ressources','https://docs.google.com/document/d/17FgCL1ErlefKOqVXp8fZhLImknmQ8C0Oh6G8Y1xQItI/edit?usp=sharing',6);
INSERT INTO "card" VALUES(3,'Configuration SSH','Tutoriel pour installer et configurer SSH qui permet de prendre le controle d''une machine Ã  distance.','https://docs.google.com/document/d/1oXtLk9mcBtGV11v9JlkQzPScuWQsKW8HmKD_XJXR_nk/edit?usp=sharing',6);
INSERT INTO "card" VALUES(4,'Installation de VirtualBox','Tutoriel pour installer VirtualBox sur Debian','https://drive.google.com/open?id=13mbfdOcnmmk79iyxQnZ_8Ds2a9ra9fQK9VjPzEenvyo',6);
INSERT INTO "card" VALUES(5,'Configuration de mariadb-server','Tutoriel pour installer et configurer Mariadb-server','https://docs.google.com/document/d/1RSaKIdbn8pBNf_A0K9ZelfpUXo-l89AAedee26eqdkE',6);
INSERT INTO "card" VALUES(6,'Sertir une prise RJ45','Tutoriel pour apprendre le sertissage d''une prise RJ45','https://drive.google.com/open?id=1GyLM-SK6cBRpIOpduJiCjSG6w-_erywDkN_FbaCt5Po',7);
INSERT INTO "card" VALUES(7,'RÃ©cupÃ©ration du mot de passe ROOT','Comment rÃ©cupÃ©rer facilement un mot de passe root perdu','https://docs.google.com/document/d/1oXVTlpnaOWvWR8j-7R4C2LrziD98EVeOX8YiKBqTYm4',7);
INSERT INTO "card" VALUES(8,'Gestion d''un parc','L''infrastructures d''un parc d''activitÃ©','https://drive.google.com/open?id=1sDJpIxBzUoiMfu3nqFQXDboWx9EvfFjt6ewz_vyhWkU',7);
INSERT INTO "card" VALUES(9,'Les clÃ©s bootables','CrÃ©ation d''une clÃ© bootable','https://docs.google.com/document/d/1WUvFpCaI36WhkWhzLs39dCQ1w9WwViXYpbAvdM3zLZQ',7);
INSERT INTO "card" VALUES(10,'Les hyperviseurs','Les diffÃ©rents hyperviseurs et leurs fonctionnalitÃ©s','https://docs.google.com/document/d/1_-mRkw5zN9Jt336_Zdc1aEZwAoSFakeV1u5B6_RVXcU',7);
INSERT INTO "card" VALUES(11,'CrÃ©er et paramÃ©trer une VM','Tutoriel pour apprendre a crÃ©er et paramÃ©trer une VM sur VirtualBox.','https://drive.google.com/open?id=1gCoVj6WpTfnHaBZUO7pYKc-bXFjRyfxjzC-rcZCGLrQ',9);
INSERT INTO "card" VALUES(13,'Installer &amp; configurer le theme papirus','Tutoriel pour installer et configurer le theme papirus sur debian et ubuntu','https://drive.google.com/open?id=1wUXcvAJN-VUiIyoGtysflRNHGGcJN1jfUGc31Jg5Lr8',6);
INSERT INTO "card" VALUES(14,'CrÃ©er rapidement une VM','Tutoriel pour crÃ©er rapidement et facilement une VM sur virtualBox','https://drive.google.com/open?id=1eFU3t-k2FRVc7_2cSk1moHGUNtnjgmxlA01A_QtrBWI',9);
INSERT INTO "card" VALUES(15,'Changer son adresse ip et son hostname sur debian','Tutoriel pour modifier les paramÃ¨tres de votre carte rÃ©seaux (ip &amp; hostname)','https://drive.google.com/open?id=1tBULCAXR58xOnahh6xDlExy9k8SDGCTuU3fkoUYV2_A',7);
INSERT INTO "card" VALUES(16,'Installer et configurer OCS-Inventory','Tutoriel pour installer et configurer un logiciel de gestion de parc : OCS-Inventory sur debian','https://drive.google.com/open?id=1yASdKE-q1CyuqsVFfxqmnTa03V5d_rOHMjYhvZX395M',7);
INSERT INTO "card" VALUES(17,'Installer et crÃ©er une VM Proxmox','Tutoriel pour installer Proxmox (Fork de debian spÃ©cialisÃ© dans virtualisation) et crÃ©er une VM','https://drive.google.com/open?id=1KvuO9OBP6cYyQXvIPrqX3vqNGuOO3s9wM8JY36cWrBw',7);
INSERT INTO "card" VALUES(18,'SystÃ¨me d''acces Ã  distance','Configurer et parametrer l''accÃ¨s Ã  distance sÃ©curisÃ© Ã  votre debian ','https://drive.google.com/open?id=1liJIl6l3loeX3VSAkOIGaHT40q81ULwNUYpy4e4wesQ',6);
INSERT INTO "card" VALUES(19,'SystÃ¨me de gestion des droits','Apprendre comment administrer l''accÃ¨s Ã  certain rÃ©pertoire &amp; session de votre debian','https://drive.google.com/open?id=1p7pICccXYBOLVEqsdTVCbveA95DkgVHbn9zVqzxzJEM',6);
INSERT INTO "card" VALUES(20,'Gestion des logiciels','Installation et configuration des dÃ©pÃ´ts sur debian pour les mises Ã  jours et l''installation des paquets logistiques','https://drive.google.com/open?id=17gBHpFEC2V6Q-yqU4QI0RMQTCnJkgtvfl8w_uPHflqs',6);
INSERT INTO "card" VALUES(21,'SystÃ¨me des mots de passe','Configuration et changement de mot de passe en tant que root ou en tant qu''utilisateur','https://drive.google.com/open?id=1i5T35w2nYcOfBKiyr2R_slsKwHTevRUy0P8p6QvoJFw',6);
INSERT INTO "card" VALUES(22,'DÃ©veloppement d''applications','L''apprentissage au PHP et l''application des bases de ce language','https://drive.google.com/open?id=16J2oZmVJQAVcPJCy3XjTLJeiC7TlRSYwmcgN6t1Vlbo',3);
INSERT INTO "card" VALUES(23,'Les variables de session','Ce type de viariable permet de garder des valeurs en mÃ©moire de page en page','https://drive.google.com/open?id=1TZ-0ysyxJ0Ieuwgg_6rO_UPcYwGUr-bhCtbQ6QRYD1Y',3);
INSERT INTO "card" VALUES(24,'Le systÃ¨me de base de donnÃ©e avec MySQL &amp; ph','L''implÃ©mentation d''une base de donnÃ©e au sein de votre site','https://drive.google.com/open?id=1isfiMWCPPEuSvvBceG6mG7TG6j-Q__Qj-CA-CUonTkw',3);
INSERT INTO "card" VALUES(25,'Les formulaires et les variables GET et POST','Les formulaires doivent avoir une mÃ©thode de communication avec la base de donnÃ©e, c''est la que ses variables entrent en jeu','https://drive.google.com/open?id=1Z4-mmjUyQWPgcRw4dP6COtG3n9OI_7oIFqHCZBHa_6E',3);
INSERT INTO "card" VALUES(26,'Installer et configurer GLPI','Tutoriel pour l''installation et la configuration de GLPI','https://drive.google.com/open?id=1MaVCnAKX8XZu6TXDjF8TaffK4gn5qBess0TnWAR4hsE',6);
INSERT INTO "card" VALUES(27,'Installer et configurer EXIM4','Tutoriel pour l''installation et la configuration d''EXIM4','https://drive.google.com/open?id=1sT3Ku0hkIgDqGd2rR2jTkgstu1bU9GvG',6);
INSERT INTO "card" VALUES(28,'Memento : Analyse d''un contrat','Tout ce qu''il faut connaÃ®tre sur l''analyse d''un contrat ','https://docs.google.com/document/d/1HQvv5oxr_EjMsumIOo-Pbrmx8Ny3LO0VcYEMCrv8VGM/edit',11);
INSERT INTO "card" VALUES(29,'Notice SEO','SEO WORDPRESS. RÃ©fÃ©rencement &amp; optimisation SEO WordPressâ€¦ Tout ce qui touche de prÃ¨s ou de loin au rÃ©fÃ©rencement de WordPress, des tests, la liste des annuaires, SEO, SEM, Adword, etcâ€¦','https://autheman-victor.fr//assets/files/portfolio/wordpress/notice_seo.pdf',12);

INSERT INTO "membres" VALUES(2,'THIRARD','CECILE','thirard-c@sisteron.fr','thirardcecile','41d0aebbd3225d9d238cba3f99bad8b9d8f0a2b9','',1);
INSERT INTO "membres" VALUES(4,'Sasha ','Aubry','sasha.aubry.22@gmail.com','PandaSha','3091a134d274b966f4cd9ce9f83d8105b1cbe7b3','08190005083720',0);
INSERT INTO "membres" VALUES(9,'AUTHEMAN-THIRARD','Victor','authirard.victor@gmail.com','admin','6b3c679aeefef0add0753fd84ee38354815523a0','83337973090510',1);
INSERT INTO "membres" VALUES(10,'Comiti','LÃ©o','leo.comiti@hotmail.fr','Jean Gerome','58ad983135fe15c5a8e2e15fb5b501aedcf70dc2','32982695984914',1);
INSERT INTO "membres" VALUES(11,'hericotte','thomas','her.thomas0607@gmail.com','thomas','92dbe74482a3cd609e385c51c11d4c394e8c010c','70792113412191',1);
INSERT INTO "membres" VALUES(12,'Le Pivert','Julie','j.lepivert@outlook.fr','Grievous0578','9b3355518fda7bd67fe60d2af16c66e8b76f2127','53675843419717',1);
INSERT INTO "membres" VALUES(13,'Legrand','Julien','prof.legrand@gmail.com','legrandjulien','c0b326c66d4d9932918792fe757a4d857b621dac','50178075124964',1);
INSERT INTO "membres" VALUES(14,'robert','Jean-Philippe','robfifi004@gmail.com','jeanphilippe','5ab860616d3e57a94fa9505d9e5172a7ef8cc3eb','87876070900184',1);
INSERT INTO "membres" VALUES(15,'Le Pivert','Julie','Grievous05000n1@outlook.fr','Julie LP','5588df3d06d6cf591f22b6aeff9bbcb66edb25ea','32904946562838',1);
INSERT INTO "membres" VALUES(16,'Bourbousse','Sylvain','Sylvaindu05@yahoo.fr','Sylvanito','bc18707e3d9d469693c5cd4170a42f0c4110e5f8','82005985521097',1);
INSERT INTO "membres" VALUES(17,'root','test','contact@autheman-victor.fr','root','6b3c679aeefef0add0753fd84ee38354815523a0','07166822324199',1);

INSERT INTO "commentaires" VALUES(23,'admin','Soyez respectueux entre vous et envers moi. Merci !','Note');
INSERT INTO "commentaires" VALUES(26,'Jean Gerome','Je n''ai jamais vu une fiche technique aussi bien rÃ©alisÃ© alors je le dis \r\nMERCI Fred !!!!!! &lt;3','Linux');
INSERT INTO "commentaires" VALUES(29,'Julie LP','bonjour,\r\nTa pas les cours Ã©crit des langage de programmation ?\r\nMerci.','PHP');

INSERT INTO "portfolio" VALUES(2,'JavaScript','pic08.jpg','JavaScript est un langage de programmation de scripts principalement employÃ© dans les pages web interactives mais aussi pour les serveurs avec l''utilisation de Node.js.','','javascript');
INSERT INTO "portfolio" VALUES(3,'PHP','pic09.jpg','PHP: Hypertext Preprocessor, plus connu sous son sigle PHP, est un langage de programmation libre, principalement utilisÃ© pour produire des pages Web dynamiques via un serveur HTTP, mais pouvant Ã©galement fonctionner comme n''importe quel langage interprÃ©tÃ© de faÃ§on locale. PHP est un langage impÃ©ratif orientÃ© objet.','','php');
INSERT INTO "portfolio" VALUES(4,'HTML(5)','pic10.jpg','Lâ€™HyperText Markup Language, gÃ©nÃ©ralement abrÃ©gÃ© HTML, est le langage de balisage conÃ§u pour reprÃ©senter les pages web. Câ€™est un langage permettant dâ€™Ã©crire de lâ€™hypertexte, dâ€™oÃ¹ son nom.','','html5');
INSERT INTO "portfolio" VALUES(5,'CSS(3)','pic11.jpg','Les feuilles de style en cascade, gÃ©nÃ©ralement appelÃ©es CSS de l''anglais Cascading Style Sheets, forment un langage informatique qui dÃ©crit la prÃ©sentation des documents HTML et XML. Les standards dÃ©finissant CSS sont publiÃ©s par le World Wide Web Consortium.','','css');
INSERT INTO "portfolio" VALUES(6,'Linux','pic12.jpg','Linux est, au sens restreint, le noyau de systÃ¨me d''exploitation Linux, et au sens large, tout systÃ¨me d''exploitation fondÃ© sur le noyau Linux. Cet article couvre le sens large.','https://drive.google.com/open?id=1mbIUWfyFmB8oR60hfN7iGqvriQ2-5gr9Tmclt5Cx9dg','linux');
INSERT INTO "portfolio" VALUES(7,'RÃ©seaux','pic13.jpg','Un rÃ©seau informatique est un ensemble d''Ã©quipements reliÃ©s entre eux pour Ã©changer des informations. Par analogie avec un filet (un rÃ©seau est un Â« petit rets Â», c''est-Ã -dire un petit filet1), on appelle nÅ“ud l''extrÃ©mitÃ© d''une connexion, qui peut Ãªtre une intersection de plusieurs connexions ou Ã©quipements (un ordinateur, un routeur, un concentrateur, un commutateur). IndÃ©pendamment de la technologie sous-jacente, on porte gÃ©nÃ©ralement une vue matricielle sur ce qu''est un rÃ©seau. De faÃ§on horizontale, un rÃ©seau est une strate de trois couches : les infrastructures, les fonctions de contrÃ´le et de commande, les services rendus Ã  l''utilisateur. De faÃ§on verticale, on utilise souvent un dÃ©coupage gÃ©ographique : rÃ©seau local, rÃ©seau d''accÃ¨s et rÃ©seau d''interconnexion. ','','reseaux');
INSERT INTO "portfolio" VALUES(8,'Codage de l''information','pic14.jpg','Comprendre les techniques de codage numÃ©riques des donnÃ©es de l''environnement de l''utilisateur, telles que nombre entiers ou rÃ©els, et textes.','','codage-de-l-informat');
INSERT INTO "portfolio" VALUES(9,'VirtualBox','pic15.jpg','Oracle VM VirtualBox est un logiciel libre de virtualisation publiÃ© par Oracle.','','virtualbox');
INSERT INTO "portfolio" VALUES(10,'CISCO','pic16.jpg','Cisco Systems est une entreprise informatique amÃ©ricaine spÃ©cialisÃ©e, Ã  lâ€™origine, dans le matÃ©riel rÃ©seau, et depuis 2009 dans les serveurs. Elle est dirigÃ©e par Chuck Robbins depuis juillet 2015.','','cisco');
INSERT INTO "portfolio" VALUES(12,'Wordpress','wp.png','WordPress est un systÃ¨me de gestion de contenu gratuit, libre et open-source. Ce logiciel Ã©crit en PHP repose sur une base de donnÃ©es MySQL et est distribuÃ© par l''entreprise amÃ©ricaine Automattic. Les fonctionnalitÃ©s de WordPress lui permettent de crÃ©er et gÃ©rer diffÃ©rents types de sites Web: blogue, site de venteâ€¦','','wp');

INSERT INTO "projets" VALUES(1,'Black Curtain Production','Une association (en cour de création) qui à pour but de promouvoir le cinéma ? quiconque le désire.','img1.jpg','http://deb9server.ddns.net/Black_Curtains_Corp/');
INSERT INTO "projets" VALUES(2,'Les éclaireurs du midi','Un site internet sur les scouts du 04 : les éclaireurs du midi.','img2.jpg','http://autheman-victor.fr/newSiteScout/');
INSERT INTO "projets" VALUES(3,'Portfolio Léo Comiti','Voici le portfolio d''un ami léo comiti: Photographe, randonneur et administrateur réseaux.','img3.jpg','http://deb9server.ddns.net/portfolio_Leo/');
INSERT INTO "projets" VALUES(4,'New World','New World est un projet PPE (projet personalisé encadré) de vente avec un systeme de point relai.','img4.jpg','http://deb9server.ddns.net/DRIVE/');
INSERT INTO "projets" VALUES(5,'Portfolio Rémi BREGEARD','Voici le portfolio d''un ami Rémi BREGEARD : Passioné de cinéma et administrateur réseaux','img5.jpg','http://deb9server.ddns.net/portfolio_remi/');
INSERT INTO "projets" VALUES(6,'Arithmetique','Projet de site d''évaluation en arithmetique','img6.jpg','http://deb9server.ddns.net/arithmetique/');
