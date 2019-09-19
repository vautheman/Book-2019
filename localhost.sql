-- phpMyAdmin SQL Dump
-- version 4.9.0
-- https://www.phpmyadmin.net/
--
-- Hôte : localhost
-- Généré le :  jeu. 19 sep. 2019 à 16:12
-- Version du serveur :  10.1.40-MariaDB-1~jessie
-- Version de PHP :  5.6.40-0+deb8u3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `authe858327`
--
CREATE DATABASE IF NOT EXISTS `authe858327` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;
USE `authe858327`;

-- --------------------------------------------------------

--
-- Structure de la table `articles`
--

CREATE TABLE `articles` (
  `artId` int(11) NOT NULL,
  `artTitre` varchar(255) NOT NULL,
  `artContenu` mediumtext NOT NULL,
  `artDate` datetime NOT NULL,
  `artDate_time_edition` datetime NOT NULL
);

-- --------------------------------------------------------

--
-- Structure de la table `card`
--

CREATE TABLE `card` (
  `cardId` int(11) NOT NULL,
  `cardNom` varchar(50) DEFAULT NULL,
  `cardDesc` text,
  `cardURL` text,
  `portId` int(11) NOT NULL
);

--
-- Déchargement des données de la table `card`
--

INSERT INTO `card` (`cardId`, `cardNom`, `cardDesc`, `cardURL`, `portId`) VALUES
(1, 'Installation Debian 9', 'Tutoriel pour apprendre Ã  installer et configurer Debian 9.', 'https://drive.google.com/open?id=1OZL74mHf3mrE9XUmVlrfvlGGnEiXBWwz9GNJLDLYNGA', 6),
(2, 'Installation Serveur Web', 'Tutoriel pour apprendre Ã  installer un serveur Web sur Linux. (Le fichier sources est disponible dans mes ressources', 'https://docs.google.com/document/d/17FgCL1ErlefKOqVXp8fZhLImknmQ8C0Oh6G8Y1xQItI/edit?usp=sharing', 6),
(3, 'Configuration SSH', 'Tutoriel pour installer et configurer SSH qui permet de prendre le controle d\'une machine Ã  distance.', 'https://docs.google.com/document/d/1oXtLk9mcBtGV11v9JlkQzPScuWQsKW8HmKD_XJXR_nk/edit?usp=sharing', 6),
(4, 'Installation de VirtualBox', 'Tutoriel pour installer VirtualBox sur Debian', 'https://drive.google.com/open?id=13mbfdOcnmmk79iyxQnZ_8Ds2a9ra9fQK9VjPzEenvyo', 6),
(5, 'Configuration de mariadb-server', 'Tutoriel pour installer et configurer Mariadb-server', 'https://docs.google.com/document/d/1RSaKIdbn8pBNf_A0K9ZelfpUXo-l89AAedee26eqdkE', 6),
(6, 'Sertir une prise RJ45', 'Tutoriel pour apprendre le sertissage d\'une prise RJ45', 'https://drive.google.com/open?id=1GyLM-SK6cBRpIOpduJiCjSG6w-_erywDkN_FbaCt5Po', 7),
(7, 'RÃ©cupÃ©ration du mot de passe ROOT', 'Comment rÃ©cupÃ©rer facilement un mot de passe root perdu', 'https://docs.google.com/document/d/1oXVTlpnaOWvWR8j-7R4C2LrziD98EVeOX8YiKBqTYm4', 7),
(8, 'Gestion d\'un parc', 'L\'infrastructures d\'un parc d\'activitÃ©', 'https://drive.google.com/open?id=1sDJpIxBzUoiMfu3nqFQXDboWx9EvfFjt6ewz_vyhWkU', 7),
(9, 'Les clÃ©s bootables', 'CrÃ©ation d\'une clÃ© bootable', 'https://docs.google.com/document/d/1WUvFpCaI36WhkWhzLs39dCQ1w9WwViXYpbAvdM3zLZQ', 7),
(10, 'Les hyperviseurs', 'Les diffÃ©rents hyperviseurs et leurs fonctionnalitÃ©s', 'https://docs.google.com/document/d/1_-mRkw5zN9Jt336_Zdc1aEZwAoSFakeV1u5B6_RVXcU', 7),
(11, 'CrÃ©er et paramÃ©trer une VM', 'Tutoriel pour apprendre a crÃ©er et paramÃ©trer une VM sur VirtualBox.', 'https://drive.google.com/open?id=1gCoVj6WpTfnHaBZUO7pYKc-bXFjRyfxjzC-rcZCGLrQ', 9),
(13, 'Installer &amp; configurer le theme papirus', 'Tutoriel pour installer et configurer le theme papirus sur debian et ubuntu', 'https://drive.google.com/open?id=1wUXcvAJN-VUiIyoGtysflRNHGGcJN1jfUGc31Jg5Lr8', 6),
(14, 'CrÃ©er rapidement une VM', 'Tutoriel pour crÃ©er rapidement et facilement une VM sur virtualBox', 'https://drive.google.com/open?id=1eFU3t-k2FRVc7_2cSk1moHGUNtnjgmxlA01A_QtrBWI', 9),
(15, 'Changer son adresse ip et son hostname sur debian', 'Tutoriel pour modifier les paramÃ¨tres de votre carte rÃ©seaux (ip &amp; hostname)', 'https://drive.google.com/open?id=1tBULCAXR58xOnahh6xDlExy9k8SDGCTuU3fkoUYV2_A', 7),
(16, 'Installer et configurer OCS-Inventory', 'Tutoriel pour installer et configurer un logiciel de gestion de parc : OCS-Inventory sur debian', 'https://drive.google.com/open?id=1yASdKE-q1CyuqsVFfxqmnTa03V5d_rOHMjYhvZX395M', 7),
(17, 'Installer et crÃ©er une VM Proxmox', 'Tutoriel pour installer Proxmox (Fork de debian spÃ©cialisÃ© dans virtualisation) et crÃ©er une VM', 'https://drive.google.com/open?id=1KvuO9OBP6cYyQXvIPrqX3vqNGuOO3s9wM8JY36cWrBw', 7),
(18, 'SystÃ¨me d\'acces Ã  distance', 'Configurer et parametrer l\'accÃ¨s Ã  distance sÃ©curisÃ© Ã  votre debian ', 'https://drive.google.com/open?id=1liJIl6l3loeX3VSAkOIGaHT40q81ULwNUYpy4e4wesQ', 6),
(19, 'SystÃ¨me de gestion des droits', 'Apprendre comment administrer l\'accÃ¨s Ã  certain rÃ©pertoire &amp; session de votre debian', 'https://drive.google.com/open?id=1p7pICccXYBOLVEqsdTVCbveA95DkgVHbn9zVqzxzJEM', 6),
(20, 'Gestion des logiciels', 'Installation et configuration des dÃ©pÃ´ts sur debian pour les mises Ã  jours et l\'installation des paquets logistiques', 'https://drive.google.com/open?id=17gBHpFEC2V6Q-yqU4QI0RMQTCnJkgtvfl8w_uPHflqs', 6),
(21, 'SystÃ¨me des mots de passe', 'Configuration et changement de mot de passe en tant que root ou en tant qu\'utilisateur', 'https://drive.google.com/open?id=1i5T35w2nYcOfBKiyr2R_slsKwHTevRUy0P8p6QvoJFw', 6),
(22, 'DÃ©veloppement d\'applications', 'L\'apprentissage au PHP et l\'application des bases de ce language', 'https://drive.google.com/open?id=16J2oZmVJQAVcPJCy3XjTLJeiC7TlRSYwmcgN6t1Vlbo', 3),
(23, 'Les variables de session', 'Ce type de viariable permet de garder des valeurs en mÃ©moire de page en page', 'https://drive.google.com/open?id=1TZ-0ysyxJ0Ieuwgg_6rO_UPcYwGUr-bhCtbQ6QRYD1Y', 3),
(24, 'Le systÃ¨me de base de donnÃ©e avec MySQL &amp; ph', 'L\'implÃ©mentation d\'une base de donnÃ©e au sein de votre site', 'https://drive.google.com/open?id=1isfiMWCPPEuSvvBceG6mG7TG6j-Q__Qj-CA-CUonTkw', 3),
(25, 'Les formulaires et les variables GET et POST', 'Les formulaires doivent avoir une mÃ©thode de communication avec la base de donnÃ©e, c\'est la que ses variables entrent en jeu', 'https://drive.google.com/open?id=1Z4-mmjUyQWPgcRw4dP6COtG3n9OI_7oIFqHCZBHa_6E', 3),
(26, 'Installer et configurer GLPI', 'Tutoriel pour l\'installation et la configuration de GLPI', 'https://drive.google.com/open?id=1MaVCnAKX8XZu6TXDjF8TaffK4gn5qBess0TnWAR4hsE', 6),
(27, 'Installer et configurer EXIM4', 'Tutoriel pour l\'installation et la configuration d\'EXIM4', 'https://drive.google.com/open?id=1sT3Ku0hkIgDqGd2rR2jTkgstu1bU9GvG', 6),
(28, 'Memento : Analyse d\'un contrat', 'Tout ce qu\'il faut connaÃ®tre sur l\'analyse d\'un contrat ', 'https://docs.google.com/document/d/1HQvv5oxr_EjMsumIOo-Pbrmx8Ny3LO0VcYEMCrv8VGM/edit', 11),
(29, 'Notice SEO', 'SEO WORDPRESS. RÃ©fÃ©rencement &amp; optimisation SEO WordPressâ€¦ Tout ce qui touche de prÃ¨s ou de loin au rÃ©fÃ©rencement de WordPress, des tests, la liste des annuaires, SEO, SEM, Adword, etcâ€¦', 'https://autheman-victor.fr//assets/files/portfolio/wordpress/notice_seo.pdf', 12);

-- --------------------------------------------------------

--
-- Structure de la table `clients`
--

CREATE TABLE `clients` (
  `cliId` int(11) NOT NULL,
  `cliNom` varchar(50) DEFAULT NULL,
  `cliPrenom` varchar(50) DEFAULT NULL,
  `cliEmail` varchar(50) DEFAULT NULL,
  `cliPw` text,
  `cliTelFix` char(10) DEFAULT NULL,
  `cliTelPort` char(10) DEFAULT NULL,
  `cliKey` varchar(15) DEFAULT NULL,
  `cliConfirme` tinyint(1) DEFAULT NULL
);

--
-- Déchargement des données de la table `clients`
--

INSERT INTO `clients` (`cliId`, `cliNom`, `cliPrenom`, `cliEmail`, `cliPw`, `cliTelFix`, `cliTelPort`, `cliKey`, `cliConfirme`) VALUES
(17, 'LP', 'Julie', 'j.lepivert@outlook.fr', '6b3c679aeefef0add0753fd84ee38354815523a0', '0612345678', '0612345678', '68594173749757', 1),
(30, 'PELLAN', 'Florian', 'florian.pellan@live.fr', '5562d7f121f1f1277058bba42a0cb7037bf6d72b', '0617647610', '0617647611', NULL, NULL),
(31, 'Comiti', 'Leo', 'authirard.victor@gmail.com', '6b3c679aeefef0add0753fd84ee38354815523a0', '', '0649259506', '20206246423510', 1);

-- --------------------------------------------------------

--
-- Structure de la table `commentaires`
--

CREATE TABLE `commentaires` (
  `comId` int(11) NOT NULL,
  `comUser` varchar(255) NOT NULL,
  `comTexte` varchar(1500) NOT NULL,
  `comType` varchar(255) NOT NULL
);

--
-- Déchargement des données de la table `commentaires`
--

INSERT INTO `commentaires` (`comId`, `comUser`, `comTexte`, `comType`) VALUES
(23, 'admin', 'Soyez respectueux entre vous et envers moi. Merci !', 'Note'),
(26, 'Jean Gerome', 'Je n\'ai jamais vu une fiche technique aussi bien rÃ©alisÃ© alors je le dis \r\nMERCI Fred !!!!!! &lt;3', 'Linux'),
(29, 'Julie LP', 'bonjour,\r\nTa pas les cours Ã©crit des langage de programmation ?\r\nMerci.', 'PHP');

-- --------------------------------------------------------

--
-- Structure de la table `flashinfo`
--

CREATE TABLE `flashinfo` (
  `id` int(11) NOT NULL,
  `titre` varchar(255) NOT NULL
);

--
-- Déchargement des données de la table `flashinfo`
--

INSERT INTO `flashinfo` (`id`, `titre`) VALUES
(1, 'Nouveau Site Internet !');

-- --------------------------------------------------------

--
-- Structure de la table `glpi_alerts`
--

CREATE TABLE `glpi_alerts` (
  `id` int(11) NOT NULL,
  `itemtype` varchar(100) NOT NULL,
  `items_id` int(11) NOT NULL DEFAULT '0',
  `type` int(11) NOT NULL DEFAULT '0' COMMENT 'see define.php ALERT_* constant',
  `date` datetime NOT NULL
);

-- --------------------------------------------------------

--
-- Structure de la table `glpi_apiclients`
--

CREATE TABLE `glpi_apiclients` (
  `id` int(11) NOT NULL,
  `entities_id` int(11) NOT NULL DEFAULT '0',
  `is_recursive` tinyint(1) NOT NULL DEFAULT '0',
  `name` varchar(255) DEFAULT NULL,
  `date_mod` datetime DEFAULT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT '0',
  `ipv4_range_start` bigint(20) DEFAULT NULL,
  `ipv4_range_end` bigint(20) DEFAULT NULL,
  `ipv6` varchar(255) DEFAULT NULL,
  `app_token` varchar(255) DEFAULT NULL,
  `app_token_date` datetime DEFAULT NULL,
  `dolog_method` tinyint(4) NOT NULL DEFAULT '0',
  `comment` text
);

--
-- Déchargement des données de la table `glpi_apiclients`
--

INSERT INTO `glpi_apiclients` (`id`, `entities_id`, `is_recursive`, `name`, `date_mod`, `is_active`, `ipv4_range_start`, `ipv4_range_end`, `ipv6`, `app_token`, `app_token_date`, `dolog_method`, `comment`) VALUES
(1, 0, 1, 'full access from localhost', NULL, 1, 2130706433, 2130706433, '::1', '', NULL, 0, NULL);

-- --------------------------------------------------------

--
-- Structure de la table `glpi_authldapreplicates`
--

CREATE TABLE `glpi_authldapreplicates` (
  `id` int(11) NOT NULL,
  `authldaps_id` int(11) NOT NULL DEFAULT '0',
  `host` varchar(255) DEFAULT NULL,
  `port` int(11) NOT NULL DEFAULT '389',
  `name` varchar(255) DEFAULT NULL
);

-- --------------------------------------------------------

--
-- Structure de la table `glpi_authldaps`
--

CREATE TABLE `glpi_authldaps` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `host` varchar(255) DEFAULT NULL,
  `basedn` varchar(255) DEFAULT NULL,
  `rootdn` varchar(255) DEFAULT NULL,
  `port` int(11) NOT NULL DEFAULT '389',
  `condition` text,
  `login_field` varchar(255) DEFAULT 'uid',
  `sync_field` varchar(255) DEFAULT NULL,
  `use_tls` tinyint(1) NOT NULL DEFAULT '0',
  `group_field` varchar(255) DEFAULT NULL,
  `group_condition` text,
  `group_search_type` int(11) NOT NULL DEFAULT '0',
  `group_member_field` varchar(255) DEFAULT NULL,
  `email1_field` varchar(255) DEFAULT NULL,
  `realname_field` varchar(255) DEFAULT NULL,
  `firstname_field` varchar(255) DEFAULT NULL,
  `phone_field` varchar(255) DEFAULT NULL,
  `phone2_field` varchar(255) DEFAULT NULL,
  `mobile_field` varchar(255) DEFAULT NULL,
  `comment_field` varchar(255) DEFAULT NULL,
  `use_dn` tinyint(1) NOT NULL DEFAULT '1',
  `time_offset` int(11) NOT NULL DEFAULT '0' COMMENT 'in seconds',
  `deref_option` int(11) NOT NULL DEFAULT '0',
  `title_field` varchar(255) DEFAULT NULL,
  `category_field` varchar(255) DEFAULT NULL,
  `language_field` varchar(255) DEFAULT NULL,
  `entity_field` varchar(255) DEFAULT NULL,
  `entity_condition` text,
  `date_mod` datetime DEFAULT NULL,
  `comment` text,
  `is_default` tinyint(1) NOT NULL DEFAULT '0',
  `is_active` tinyint(1) NOT NULL DEFAULT '0',
  `rootdn_passwd` varchar(255) DEFAULT NULL,
  `registration_number_field` varchar(255) DEFAULT NULL,
  `email2_field` varchar(255) DEFAULT NULL,
  `email3_field` varchar(255) DEFAULT NULL,
  `email4_field` varchar(255) DEFAULT NULL,
  `location_field` varchar(255) DEFAULT NULL,
  `pagesize` int(11) NOT NULL DEFAULT '0',
  `ldap_maxlimit` int(11) NOT NULL DEFAULT '0',
  `can_support_pagesize` tinyint(1) NOT NULL DEFAULT '0',
  `picture_field` varchar(255) DEFAULT NULL,
  `date_creation` datetime DEFAULT NULL
);

-- --------------------------------------------------------

--
-- Structure de la table `glpi_authmails`
--

CREATE TABLE `glpi_authmails` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `connect_string` varchar(255) DEFAULT NULL,
  `host` varchar(255) DEFAULT NULL,
  `date_mod` datetime DEFAULT NULL,
  `comment` text,
  `is_active` tinyint(1) NOT NULL DEFAULT '0'
);

-- --------------------------------------------------------

--
-- Structure de la table `glpi_autoupdatesystems`
--

CREATE TABLE `glpi_autoupdatesystems` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `comment` text
);

-- --------------------------------------------------------

--
-- Structure de la table `glpi_blacklistedmailcontents`
--

CREATE TABLE `glpi_blacklistedmailcontents` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `content` text,
  `comment` text,
  `date_mod` datetime DEFAULT NULL,
  `date_creation` datetime DEFAULT NULL
);

-- --------------------------------------------------------

--
-- Structure de la table `glpi_blacklists`
--

CREATE TABLE `glpi_blacklists` (
  `id` int(11) NOT NULL,
  `type` int(11) NOT NULL DEFAULT '0',
  `name` varchar(255) DEFAULT NULL,
  `value` varchar(255) DEFAULT NULL,
  `comment` text,
  `date_mod` datetime DEFAULT NULL,
  `date_creation` datetime DEFAULT NULL
);

--
-- Déchargement des données de la table `glpi_blacklists`
--

INSERT INTO `glpi_blacklists` (`id`, `type`, `name`, `value`, `comment`, `date_mod`, `date_creation`) VALUES
(1, 1, 'empty IP', '', NULL, NULL, NULL),
(2, 1, 'localhost', '127.0.0.1', NULL, NULL, NULL),
(3, 1, 'zero IP', '0.0.0.0', NULL, NULL, NULL),
(4, 2, 'empty MAC', '', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Structure de la table `glpi_budgets`
--

CREATE TABLE `glpi_budgets` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `entities_id` int(11) NOT NULL DEFAULT '0',
  `is_recursive` tinyint(1) NOT NULL DEFAULT '0',
  `comment` text,
  `is_deleted` tinyint(1) NOT NULL DEFAULT '0',
  `begin_date` date DEFAULT NULL,
  `end_date` date DEFAULT NULL,
  `value` decimal(20,4) NOT NULL DEFAULT '0.0000',
  `is_template` tinyint(1) NOT NULL DEFAULT '0',
  `template_name` varchar(255) DEFAULT NULL,
  `date_mod` datetime DEFAULT NULL,
  `date_creation` datetime DEFAULT NULL,
  `locations_id` int(11) NOT NULL DEFAULT '0',
  `budgettypes_id` int(11) NOT NULL DEFAULT '0'
);

-- --------------------------------------------------------

--
-- Structure de la table `glpi_budgettypes`
--

CREATE TABLE `glpi_budgettypes` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `comment` text,
  `date_mod` datetime DEFAULT NULL,
  `date_creation` datetime DEFAULT NULL
);

-- --------------------------------------------------------

--
-- Structure de la table `glpi_businesscriticities`
--

CREATE TABLE `glpi_businesscriticities` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `entities_id` int(11) NOT NULL DEFAULT '0',
  `is_recursive` tinyint(1) NOT NULL DEFAULT '0',
  `comment` text,
  `date_mod` datetime DEFAULT NULL,
  `date_creation` datetime DEFAULT NULL,
  `businesscriticities_id` int(11) NOT NULL DEFAULT '0',
  `completename` text,
  `level` int(11) NOT NULL DEFAULT '0',
  `ancestors_cache` longtext,
  `sons_cache` longtext
);

-- --------------------------------------------------------

--
-- Structure de la table `glpi_calendars`
--

CREATE TABLE `glpi_calendars` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `entities_id` int(11) NOT NULL DEFAULT '0',
  `is_recursive` tinyint(1) NOT NULL DEFAULT '0',
  `comment` text,
  `date_mod` datetime DEFAULT NULL,
  `cache_duration` text,
  `date_creation` datetime DEFAULT NULL
);

--
-- Déchargement des données de la table `glpi_calendars`
--

INSERT INTO `glpi_calendars` (`id`, `name`, `entities_id`, `is_recursive`, `comment`, `date_mod`, `cache_duration`, `date_creation`) VALUES
(1, 'Default', 0, 1, 'Default calendar', NULL, '[0,43200,43200,43200,43200,43200,0]', NULL);

-- --------------------------------------------------------

--
-- Structure de la table `glpi_calendarsegments`
--

CREATE TABLE `glpi_calendarsegments` (
  `id` int(11) NOT NULL,
  `calendars_id` int(11) NOT NULL DEFAULT '0',
  `entities_id` int(11) NOT NULL DEFAULT '0',
  `is_recursive` tinyint(1) NOT NULL DEFAULT '0',
  `day` tinyint(1) NOT NULL DEFAULT '1' COMMENT 'numer of the day based on date(w)',
  `begin` time DEFAULT NULL,
  `end` time DEFAULT NULL
);

--
-- Déchargement des données de la table `glpi_calendarsegments`
--

INSERT INTO `glpi_calendarsegments` (`id`, `calendars_id`, `entities_id`, `is_recursive`, `day`, `begin`, `end`) VALUES
(1, 1, 0, 0, 1, '08:00:00', '20:00:00'),
(2, 1, 0, 0, 2, '08:00:00', '20:00:00'),
(3, 1, 0, 0, 3, '08:00:00', '20:00:00'),
(4, 1, 0, 0, 4, '08:00:00', '20:00:00'),
(5, 1, 0, 0, 5, '08:00:00', '20:00:00');

-- --------------------------------------------------------

--
-- Structure de la table `glpi_calendars_holidays`
--

CREATE TABLE `glpi_calendars_holidays` (
  `id` int(11) NOT NULL,
  `calendars_id` int(11) NOT NULL DEFAULT '0',
  `holidays_id` int(11) NOT NULL DEFAULT '0'
);

-- --------------------------------------------------------

--
-- Structure de la table `glpi_cartridgeitems`
--

CREATE TABLE `glpi_cartridgeitems` (
  `id` int(11) NOT NULL,
  `entities_id` int(11) NOT NULL DEFAULT '0',
  `is_recursive` tinyint(1) NOT NULL DEFAULT '0',
  `name` varchar(255) DEFAULT NULL,
  `ref` varchar(255) DEFAULT NULL,
  `locations_id` int(11) NOT NULL DEFAULT '0',
  `cartridgeitemtypes_id` int(11) NOT NULL DEFAULT '0',
  `manufacturers_id` int(11) NOT NULL DEFAULT '0',
  `users_id_tech` int(11) NOT NULL DEFAULT '0',
  `groups_id_tech` int(11) NOT NULL DEFAULT '0',
  `is_deleted` tinyint(1) NOT NULL DEFAULT '0',
  `comment` text,
  `alarm_threshold` int(11) NOT NULL DEFAULT '10',
  `date_mod` datetime DEFAULT NULL,
  `date_creation` datetime DEFAULT NULL
);

-- --------------------------------------------------------

--
-- Structure de la table `glpi_cartridgeitems_printermodels`
--

CREATE TABLE `glpi_cartridgeitems_printermodels` (
  `id` int(11) NOT NULL,
  `cartridgeitems_id` int(11) NOT NULL DEFAULT '0',
  `printermodels_id` int(11) NOT NULL DEFAULT '0'
);

-- --------------------------------------------------------

--
-- Structure de la table `glpi_cartridgeitemtypes`
--

CREATE TABLE `glpi_cartridgeitemtypes` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `comment` text,
  `date_mod` datetime DEFAULT NULL,
  `date_creation` datetime DEFAULT NULL
);

-- --------------------------------------------------------

--
-- Structure de la table `glpi_cartridges`
--

CREATE TABLE `glpi_cartridges` (
  `id` int(11) NOT NULL,
  `entities_id` int(11) NOT NULL DEFAULT '0',
  `cartridgeitems_id` int(11) NOT NULL DEFAULT '0',
  `printers_id` int(11) NOT NULL DEFAULT '0',
  `date_in` date DEFAULT NULL,
  `date_use` date DEFAULT NULL,
  `date_out` date DEFAULT NULL,
  `pages` int(11) NOT NULL DEFAULT '0',
  `date_mod` datetime DEFAULT NULL,
  `date_creation` datetime DEFAULT NULL
);

-- --------------------------------------------------------

--
-- Structure de la table `glpi_certificates`
--

CREATE TABLE `glpi_certificates` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `serial` varchar(255) DEFAULT NULL,
  `otherserial` varchar(255) DEFAULT NULL,
  `entities_id` int(11) NOT NULL DEFAULT '0',
  `is_recursive` tinyint(1) NOT NULL DEFAULT '0',
  `comment` text,
  `is_deleted` tinyint(1) NOT NULL DEFAULT '0',
  `is_template` tinyint(1) NOT NULL DEFAULT '0',
  `template_name` varchar(255) DEFAULT NULL,
  `certificatetypes_id` int(11) NOT NULL DEFAULT '0' COMMENT 'RELATION to glpi_certificatetypes (id)',
  `dns_name` varchar(255) DEFAULT NULL,
  `dns_suffix` varchar(255) DEFAULT NULL,
  `users_id_tech` int(11) NOT NULL DEFAULT '0' COMMENT 'RELATION to glpi_users (id)',
  `groups_id_tech` int(11) NOT NULL DEFAULT '0' COMMENT 'RELATION to glpi_groups (id)',
  `locations_id` int(11) NOT NULL DEFAULT '0' COMMENT 'RELATION to glpi_locations (id)',
  `manufacturers_id` int(11) NOT NULL DEFAULT '0' COMMENT 'RELATION to glpi_manufacturers (id)',
  `contact` varchar(255) DEFAULT NULL,
  `contact_num` varchar(255) DEFAULT NULL,
  `users_id` int(11) NOT NULL DEFAULT '0',
  `groups_id` int(11) NOT NULL DEFAULT '0',
  `is_autosign` tinyint(1) NOT NULL DEFAULT '0',
  `date_expiration` date DEFAULT NULL,
  `states_id` int(11) NOT NULL DEFAULT '0' COMMENT 'RELATION to states (id)',
  `command` text,
  `certificate_request` text,
  `certificate_item` text,
  `date_creation` datetime DEFAULT NULL,
  `date_mod` datetime DEFAULT NULL
);

-- --------------------------------------------------------

--
-- Structure de la table `glpi_certificates_items`
--

CREATE TABLE `glpi_certificates_items` (
  `id` int(11) NOT NULL,
  `certificates_id` int(11) NOT NULL DEFAULT '0',
  `items_id` int(11) NOT NULL DEFAULT '0' COMMENT 'RELATION to various tables, according to itemtype (id)',
  `itemtype` varchar(100) NOT NULL COMMENT 'see .class.php file',
  `date_creation` datetime DEFAULT NULL,
  `date_mod` datetime DEFAULT NULL
);

-- --------------------------------------------------------

--
-- Structure de la table `glpi_certificatetypes`
--

CREATE TABLE `glpi_certificatetypes` (
  `id` int(11) NOT NULL,
  `entities_id` int(11) NOT NULL DEFAULT '0',
  `is_recursive` tinyint(1) NOT NULL DEFAULT '0',
  `name` varchar(255) DEFAULT NULL,
  `comment` text,
  `date_creation` datetime DEFAULT NULL,
  `date_mod` datetime DEFAULT NULL
);

-- --------------------------------------------------------

--
-- Structure de la table `glpi_changecosts`
--

CREATE TABLE `glpi_changecosts` (
  `id` int(11) NOT NULL,
  `changes_id` int(11) NOT NULL DEFAULT '0',
  `name` varchar(255) DEFAULT NULL,
  `comment` text,
  `begin_date` date DEFAULT NULL,
  `end_date` date DEFAULT NULL,
  `actiontime` int(11) NOT NULL DEFAULT '0',
  `cost_time` decimal(20,4) NOT NULL DEFAULT '0.0000',
  `cost_fixed` decimal(20,4) NOT NULL DEFAULT '0.0000',
  `cost_material` decimal(20,4) NOT NULL DEFAULT '0.0000',
  `budgets_id` int(11) NOT NULL DEFAULT '0',
  `entities_id` int(11) NOT NULL DEFAULT '0',
  `is_recursive` tinyint(1) NOT NULL DEFAULT '0'
);

-- --------------------------------------------------------

--
-- Structure de la table `glpi_changes`
--

CREATE TABLE `glpi_changes` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `entities_id` int(11) NOT NULL DEFAULT '0',
  `is_recursive` tinyint(1) NOT NULL DEFAULT '0',
  `is_deleted` tinyint(1) NOT NULL DEFAULT '0',
  `status` int(11) NOT NULL DEFAULT '1',
  `content` longtext,
  `date_mod` datetime DEFAULT NULL,
  `date` datetime DEFAULT NULL,
  `solvedate` datetime DEFAULT NULL,
  `closedate` datetime DEFAULT NULL,
  `time_to_resolve` datetime DEFAULT NULL,
  `users_id_recipient` int(11) NOT NULL DEFAULT '0',
  `users_id_lastupdater` int(11) NOT NULL DEFAULT '0',
  `urgency` int(11) NOT NULL DEFAULT '1',
  `impact` int(11) NOT NULL DEFAULT '1',
  `priority` int(11) NOT NULL DEFAULT '1',
  `itilcategories_id` int(11) NOT NULL DEFAULT '0',
  `impactcontent` longtext,
  `controlistcontent` longtext,
  `rolloutplancontent` longtext,
  `backoutplancontent` longtext,
  `checklistcontent` longtext,
  `global_validation` int(11) NOT NULL DEFAULT '1',
  `validation_percent` int(11) NOT NULL DEFAULT '0',
  `solutiontypes_id` int(11) NOT NULL DEFAULT '0',
  `solution` longtext,
  `actiontime` int(11) NOT NULL DEFAULT '0',
  `begin_waiting_date` datetime DEFAULT NULL,
  `waiting_duration` int(11) NOT NULL DEFAULT '0',
  `close_delay_stat` int(11) NOT NULL DEFAULT '0',
  `solve_delay_stat` int(11) NOT NULL DEFAULT '0',
  `date_creation` datetime DEFAULT NULL
);

-- --------------------------------------------------------

--
-- Structure de la table `glpi_changes_groups`
--

CREATE TABLE `glpi_changes_groups` (
  `id` int(11) NOT NULL,
  `changes_id` int(11) NOT NULL DEFAULT '0',
  `groups_id` int(11) NOT NULL DEFAULT '0',
  `type` int(11) NOT NULL DEFAULT '1'
);

-- --------------------------------------------------------

--
-- Structure de la table `glpi_changes_items`
--

CREATE TABLE `glpi_changes_items` (
  `id` int(11) NOT NULL,
  `changes_id` int(11) NOT NULL DEFAULT '0',
  `itemtype` varchar(100) DEFAULT NULL,
  `items_id` int(11) NOT NULL DEFAULT '0'
);

-- --------------------------------------------------------

--
-- Structure de la table `glpi_changes_problems`
--

CREATE TABLE `glpi_changes_problems` (
  `id` int(11) NOT NULL,
  `changes_id` int(11) NOT NULL DEFAULT '0',
  `problems_id` int(11) NOT NULL DEFAULT '0'
);

-- --------------------------------------------------------

--
-- Structure de la table `glpi_changes_projects`
--

CREATE TABLE `glpi_changes_projects` (
  `id` int(11) NOT NULL,
  `changes_id` int(11) NOT NULL DEFAULT '0',
  `projects_id` int(11) NOT NULL DEFAULT '0'
);

-- --------------------------------------------------------

--
-- Structure de la table `glpi_changes_suppliers`
--

CREATE TABLE `glpi_changes_suppliers` (
  `id` int(11) NOT NULL,
  `changes_id` int(11) NOT NULL DEFAULT '0',
  `suppliers_id` int(11) NOT NULL DEFAULT '0',
  `type` int(11) NOT NULL DEFAULT '1',
  `use_notification` tinyint(1) NOT NULL DEFAULT '0',
  `alternative_email` varchar(255) DEFAULT NULL
);

-- --------------------------------------------------------

--
-- Structure de la table `glpi_changes_tickets`
--

CREATE TABLE `glpi_changes_tickets` (
  `id` int(11) NOT NULL,
  `changes_id` int(11) NOT NULL DEFAULT '0',
  `tickets_id` int(11) NOT NULL DEFAULT '0'
);

-- --------------------------------------------------------

--
-- Structure de la table `glpi_changes_users`
--

CREATE TABLE `glpi_changes_users` (
  `id` int(11) NOT NULL,
  `changes_id` int(11) NOT NULL DEFAULT '0',
  `users_id` int(11) NOT NULL DEFAULT '0',
  `type` int(11) NOT NULL DEFAULT '1',
  `use_notification` tinyint(1) NOT NULL DEFAULT '0',
  `alternative_email` varchar(255) DEFAULT NULL
);

-- --------------------------------------------------------

--
-- Structure de la table `glpi_changetasks`
--

CREATE TABLE `glpi_changetasks` (
  `id` int(11) NOT NULL,
  `changes_id` int(11) NOT NULL DEFAULT '0',
  `taskcategories_id` int(11) NOT NULL DEFAULT '0',
  `state` int(11) NOT NULL DEFAULT '0',
  `date` datetime DEFAULT NULL,
  `begin` datetime DEFAULT NULL,
  `end` datetime DEFAULT NULL,
  `users_id` int(11) NOT NULL DEFAULT '0',
  `users_id_editor` int(11) NOT NULL DEFAULT '0',
  `users_id_tech` int(11) NOT NULL DEFAULT '0',
  `groups_id_tech` int(11) NOT NULL DEFAULT '0',
  `content` longtext,
  `actiontime` int(11) NOT NULL DEFAULT '0',
  `date_mod` datetime DEFAULT NULL,
  `date_creation` datetime DEFAULT NULL,
  `tasktemplates_id` int(11) NOT NULL DEFAULT '0'
);

-- --------------------------------------------------------

--
-- Structure de la table `glpi_changevalidations`
--

CREATE TABLE `glpi_changevalidations` (
  `id` int(11) NOT NULL,
  `entities_id` int(11) NOT NULL DEFAULT '0',
  `is_recursive` tinyint(1) NOT NULL DEFAULT '0',
  `users_id` int(11) NOT NULL DEFAULT '0',
  `changes_id` int(11) NOT NULL DEFAULT '0',
  `users_id_validate` int(11) NOT NULL DEFAULT '0',
  `comment_submission` text,
  `comment_validation` text,
  `status` int(11) NOT NULL DEFAULT '2',
  `submission_date` datetime DEFAULT NULL,
  `validation_date` datetime DEFAULT NULL
);

-- --------------------------------------------------------

--
-- Structure de la table `glpi_computerantiviruses`
--

CREATE TABLE `glpi_computerantiviruses` (
  `id` int(11) NOT NULL,
  `computers_id` int(11) NOT NULL DEFAULT '0',
  `name` varchar(255) DEFAULT NULL,
  `manufacturers_id` int(11) NOT NULL DEFAULT '0',
  `antivirus_version` varchar(255) DEFAULT NULL,
  `signature_version` varchar(255) DEFAULT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT '0',
  `is_deleted` tinyint(1) NOT NULL DEFAULT '0',
  `is_uptodate` tinyint(1) NOT NULL DEFAULT '0',
  `is_dynamic` tinyint(1) NOT NULL DEFAULT '0',
  `date_expiration` datetime DEFAULT NULL,
  `date_mod` datetime DEFAULT NULL,
  `date_creation` datetime DEFAULT NULL
);

-- --------------------------------------------------------

--
-- Structure de la table `glpi_computerdisks`
--

CREATE TABLE `glpi_computerdisks` (
  `id` int(11) NOT NULL,
  `entities_id` int(11) NOT NULL DEFAULT '0',
  `computers_id` int(11) NOT NULL DEFAULT '0',
  `name` varchar(255) DEFAULT NULL,
  `device` varchar(255) DEFAULT NULL,
  `mountpoint` varchar(255) DEFAULT NULL,
  `filesystems_id` int(11) NOT NULL DEFAULT '0',
  `totalsize` int(11) NOT NULL DEFAULT '0',
  `freesize` int(11) NOT NULL DEFAULT '0',
  `is_deleted` tinyint(1) NOT NULL DEFAULT '0',
  `is_dynamic` tinyint(1) NOT NULL DEFAULT '0',
  `date_mod` datetime DEFAULT NULL,
  `date_creation` datetime DEFAULT NULL
);

-- --------------------------------------------------------

--
-- Structure de la table `glpi_computermodels`
--

CREATE TABLE `glpi_computermodels` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `comment` text,
  `product_number` varchar(255) DEFAULT NULL,
  `date_mod` datetime DEFAULT NULL,
  `date_creation` datetime DEFAULT NULL
);

-- --------------------------------------------------------

--
-- Structure de la table `glpi_computers`
--

CREATE TABLE `glpi_computers` (
  `id` int(11) NOT NULL,
  `entities_id` int(11) NOT NULL DEFAULT '0',
  `name` varchar(255) DEFAULT NULL,
  `serial` varchar(255) DEFAULT NULL,
  `otherserial` varchar(255) DEFAULT NULL,
  `contact` varchar(255) DEFAULT NULL,
  `contact_num` varchar(255) DEFAULT NULL,
  `users_id_tech` int(11) NOT NULL DEFAULT '0',
  `groups_id_tech` int(11) NOT NULL DEFAULT '0',
  `comment` text,
  `date_mod` datetime DEFAULT NULL,
  `autoupdatesystems_id` int(11) NOT NULL DEFAULT '0',
  `locations_id` int(11) NOT NULL DEFAULT '0',
  `domains_id` int(11) NOT NULL DEFAULT '0',
  `networks_id` int(11) NOT NULL DEFAULT '0',
  `computermodels_id` int(11) NOT NULL DEFAULT '0',
  `computertypes_id` int(11) NOT NULL DEFAULT '0',
  `is_template` tinyint(1) NOT NULL DEFAULT '0',
  `template_name` varchar(255) DEFAULT NULL,
  `manufacturers_id` int(11) NOT NULL DEFAULT '0',
  `is_deleted` tinyint(1) NOT NULL DEFAULT '0',
  `is_dynamic` tinyint(1) NOT NULL DEFAULT '0',
  `users_id` int(11) NOT NULL DEFAULT '0',
  `groups_id` int(11) NOT NULL DEFAULT '0',
  `states_id` int(11) NOT NULL DEFAULT '0',
  `ticket_tco` decimal(20,4) DEFAULT '0.0000',
  `uuid` varchar(255) DEFAULT NULL,
  `date_creation` datetime DEFAULT NULL,
  `is_recursive` tinyint(1) NOT NULL DEFAULT '0'
);

-- --------------------------------------------------------

--
-- Structure de la table `glpi_computers_items`
--

CREATE TABLE `glpi_computers_items` (
  `id` int(11) NOT NULL,
  `items_id` int(11) NOT NULL DEFAULT '0' COMMENT 'RELATION to various table, according to itemtype (ID)',
  `computers_id` int(11) NOT NULL DEFAULT '0',
  `itemtype` varchar(100) NOT NULL,
  `is_deleted` tinyint(1) NOT NULL DEFAULT '0',
  `is_dynamic` tinyint(1) NOT NULL DEFAULT '0'
);

-- --------------------------------------------------------

--
-- Structure de la table `glpi_computers_softwarelicenses`
--

CREATE TABLE `glpi_computers_softwarelicenses` (
  `id` int(11) NOT NULL,
  `computers_id` int(11) NOT NULL DEFAULT '0',
  `softwarelicenses_id` int(11) NOT NULL DEFAULT '0',
  `is_deleted` tinyint(1) NOT NULL DEFAULT '0',
  `is_dynamic` tinyint(1) NOT NULL DEFAULT '0'
);

-- --------------------------------------------------------

--
-- Structure de la table `glpi_computers_softwareversions`
--

CREATE TABLE `glpi_computers_softwareversions` (
  `id` int(11) NOT NULL,
  `computers_id` int(11) NOT NULL DEFAULT '0',
  `softwareversions_id` int(11) NOT NULL DEFAULT '0',
  `is_deleted_computer` tinyint(1) NOT NULL DEFAULT '0',
  `is_template_computer` tinyint(1) NOT NULL DEFAULT '0',
  `entities_id` int(11) NOT NULL DEFAULT '0',
  `is_deleted` tinyint(1) NOT NULL DEFAULT '0',
  `is_dynamic` tinyint(1) NOT NULL DEFAULT '0',
  `date_install` date DEFAULT NULL
);

-- --------------------------------------------------------

--
-- Structure de la table `glpi_computertypes`
--

CREATE TABLE `glpi_computertypes` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `comment` text,
  `date_mod` datetime DEFAULT NULL,
  `date_creation` datetime DEFAULT NULL
);

-- --------------------------------------------------------

--
-- Structure de la table `glpi_computervirtualmachines`
--

CREATE TABLE `glpi_computervirtualmachines` (
  `id` int(11) NOT NULL,
  `entities_id` int(11) NOT NULL DEFAULT '0',
  `computers_id` int(11) NOT NULL DEFAULT '0',
  `name` varchar(255) NOT NULL DEFAULT '',
  `virtualmachinestates_id` int(11) NOT NULL DEFAULT '0',
  `virtualmachinesystems_id` int(11) NOT NULL DEFAULT '0',
  `virtualmachinetypes_id` int(11) NOT NULL DEFAULT '0',
  `uuid` varchar(255) NOT NULL DEFAULT '',
  `vcpu` int(11) NOT NULL DEFAULT '0',
  `ram` varchar(255) NOT NULL DEFAULT '',
  `is_deleted` tinyint(1) NOT NULL DEFAULT '0',
  `is_dynamic` tinyint(1) NOT NULL DEFAULT '0',
  `comment` text,
  `date_mod` datetime DEFAULT NULL,
  `date_creation` datetime DEFAULT NULL
);

-- --------------------------------------------------------

--
-- Structure de la table `glpi_configs`
--

CREATE TABLE `glpi_configs` (
  `id` int(11) NOT NULL,
  `context` varchar(150) DEFAULT NULL,
  `name` varchar(150) DEFAULT NULL,
  `value` text
);

--
-- Déchargement des données de la table `glpi_configs`
--

INSERT INTO `glpi_configs` (`id`, `context`, `name`, `value`) VALUES
(1, 'core', 'version', '9.2.2'),
(2, 'core', 'show_jobs_at_login', '0'),
(3, 'core', 'cut', '250'),
(4, 'core', 'list_limit', '15'),
(5, 'core', 'list_limit_max', '50'),
(6, 'core', 'url_maxlength', '30'),
(7, 'core', 'event_loglevel', '5'),
(8, 'core', 'notifications_mailing', '0'),
(9, 'core', 'admin_email', 'admsys@localhost'),
(10, 'core', 'admin_email_name', ''),
(11, 'core', 'admin_reply', ''),
(12, 'core', 'admin_reply_name', ''),
(13, 'core', 'mailing_signature', 'SIGNATURE'),
(14, 'core', 'use_anonymous_helpdesk', '0'),
(15, 'core', 'use_anonymous_followups', '0'),
(16, 'core', 'language', 'fr_FR'),
(17, 'core', 'priority_1', '#fff2f2'),
(18, 'core', 'priority_2', '#ffe0e0'),
(19, 'core', 'priority_3', '#ffcece'),
(20, 'core', 'priority_4', '#ffbfbf'),
(21, 'core', 'priority_5', '#ffadad'),
(22, 'core', 'priority_6', '#ff5555'),
(23, 'core', 'date_tax', '2005-12-31'),
(24, 'core', 'cas_host', ''),
(25, 'core', 'cas_port', '443'),
(26, 'core', 'cas_uri', ''),
(27, 'core', 'cas_logout', ''),
(28, 'core', 'existing_auth_server_field_clean_domain', '0'),
(29, 'core', 'planning_begin', '08:00:00'),
(30, 'core', 'planning_end', '20:00:00'),
(31, 'core', 'utf8_conv', '1'),
(32, 'core', 'use_public_faq', '0'),
(33, 'core', 'url_base', 'http://autheman-victor.fr/glpi'),
(34, 'core', 'show_link_in_mail', '0'),
(35, 'core', 'text_login', ''),
(36, 'core', 'founded_new_version', ''),
(37, 'core', 'dropdown_max', '100'),
(38, 'core', 'ajax_wildcard', '*'),
(42, 'core', 'ajax_limit_count', '10'),
(43, 'core', 'use_ajax_autocompletion', '1'),
(44, 'core', 'is_users_auto_add', '1'),
(45, 'core', 'date_format', '0'),
(46, 'core', 'number_format', '0'),
(47, 'core', 'csv_delimiter', ';'),
(48, 'core', 'is_ids_visible', '0'),
(50, 'core', 'smtp_mode', '0'),
(51, 'core', 'smtp_host', ''),
(52, 'core', 'smtp_port', '25'),
(53, 'core', 'smtp_username', ''),
(54, 'core', 'proxy_name', ''),
(55, 'core', 'proxy_port', '8080'),
(56, 'core', 'proxy_user', ''),
(57, 'core', 'add_followup_on_update_ticket', '1'),
(58, 'core', 'keep_tickets_on_delete', '0'),
(59, 'core', 'time_step', '5'),
(60, 'core', 'decimal_number', '2'),
(61, 'core', 'helpdesk_doc_url', ''),
(62, 'core', 'central_doc_url', ''),
(63, 'core', 'documentcategories_id_forticket', '0'),
(64, 'core', 'monitors_management_restrict', '2'),
(65, 'core', 'phones_management_restrict', '2'),
(66, 'core', 'peripherals_management_restrict', '2'),
(67, 'core', 'printers_management_restrict', '2'),
(68, 'core', 'use_log_in_files', '1'),
(69, 'core', 'time_offset', '0'),
(70, 'core', 'is_contact_autoupdate', '1'),
(71, 'core', 'is_user_autoupdate', '1'),
(72, 'core', 'is_group_autoupdate', '1'),
(73, 'core', 'is_location_autoupdate', '1'),
(74, 'core', 'state_autoupdate_mode', '0'),
(75, 'core', 'is_contact_autoclean', '0'),
(76, 'core', 'is_user_autoclean', '0'),
(77, 'core', 'is_group_autoclean', '0'),
(78, 'core', 'is_location_autoclean', '0'),
(79, 'core', 'state_autoclean_mode', '0'),
(80, 'core', 'use_flat_dropdowntree', '0'),
(81, 'core', 'use_autoname_by_entity', '1'),
(84, 'core', 'softwarecategories_id_ondelete', '1'),
(85, 'core', 'x509_email_field', ''),
(86, 'core', 'x509_cn_restrict', ''),
(87, 'core', 'x509_o_restrict', ''),
(88, 'core', 'x509_ou_restrict', ''),
(89, 'core', 'default_mailcollector_filesize_max', '2097152'),
(90, 'core', 'followup_private', '0'),
(91, 'core', 'task_private', '0'),
(92, 'core', 'default_software_helpdesk_visible', '1'),
(93, 'core', 'names_format', '0'),
(95, 'core', 'default_requesttypes_id', '1'),
(96, 'core', 'use_noright_users_add', '1'),
(97, 'core', 'cron_limit', '5'),
(98, 'core', 'priority_matrix', '{\"1\":{\"1\":1,\"2\":1,\"3\":2,\"4\":2,\"5\":2},\"2\":{\"1\":1,\"2\":2,\"3\":2,\"4\":3,\"5\":3},\"3\":{\"1\":2,\"2\":2,\"3\":3,\"4\":4,\"5\":4},\"4\":{\"1\":2,\"2\":3,\"3\":4,\"4\":4,\"5\":5},\"5\":{\"1\":2,\"2\":3,\"3\":4,\"4\":5,\"5\":5}}'),
(99, 'core', 'urgency_mask', '62'),
(100, 'core', 'impact_mask', '62'),
(101, 'core', 'user_deleted_ldap', '0'),
(102, 'core', 'auto_create_infocoms', '0'),
(103, 'core', 'use_slave_for_search', '0'),
(104, 'core', 'proxy_passwd', ''),
(105, 'core', 'smtp_passwd', ''),
(106, 'core', 'transfers_id_auto', '0'),
(107, 'core', 'show_count_on_tabs', '1'),
(108, 'core', 'refresh_ticket_list', '0'),
(109, 'core', 'set_default_tech', '1'),
(110, 'core', 'allow_search_view', '2'),
(111, 'core', 'allow_search_all', '0'),
(112, 'core', 'allow_search_global', '1'),
(113, 'core', 'display_count_on_home', '5'),
(114, 'core', 'use_password_security', '0'),
(115, 'core', 'password_min_length', '8'),
(116, 'core', 'password_need_number', '1'),
(117, 'core', 'password_need_letter', '1'),
(118, 'core', 'password_need_caps', '1'),
(119, 'core', 'password_need_symbol', '1'),
(120, 'core', 'use_check_pref', '0'),
(121, 'core', 'notification_to_myself', '1'),
(122, 'core', 'duedateok_color', '#06ff00'),
(123, 'core', 'duedatewarning_color', '#ffb800'),
(124, 'core', 'duedatecritical_color', '#ff0000'),
(125, 'core', 'duedatewarning_less', '20'),
(126, 'core', 'duedatecritical_less', '5'),
(127, 'core', 'duedatewarning_unit', '%'),
(128, 'core', 'duedatecritical_unit', '%'),
(129, 'core', 'realname_ssofield', ''),
(130, 'core', 'firstname_ssofield', ''),
(131, 'core', 'email1_ssofield', ''),
(132, 'core', 'email2_ssofield', ''),
(133, 'core', 'email3_ssofield', ''),
(134, 'core', 'email4_ssofield', ''),
(135, 'core', 'phone_ssofield', ''),
(136, 'core', 'phone2_ssofield', ''),
(137, 'core', 'mobile_ssofield', ''),
(138, 'core', 'comment_ssofield', ''),
(139, 'core', 'title_ssofield', ''),
(140, 'core', 'category_ssofield', ''),
(141, 'core', 'language_ssofield', ''),
(142, 'core', 'entity_ssofield', ''),
(143, 'core', 'registration_number_ssofield', ''),
(144, 'core', 'ssovariables_id', '0'),
(145, 'core', 'translate_kb', '0'),
(146, 'core', 'translate_dropdowns', '0'),
(147, 'core', 'pdffont', 'helvetica'),
(148, 'core', 'keep_devices_when_purging_item', '0'),
(149, 'core', 'maintenance_mode', '0'),
(150, 'core', 'maintenance_text', ''),
(151, 'core', 'use_rich_text', '0'),
(152, 'core', 'attach_ticket_documents_to_mail', '0'),
(153, 'core', 'backcreated', '0'),
(154, 'core', 'task_state', '1'),
(155, 'core', 'layout', 'lefttab'),
(156, 'core', 'ticket_timeline', '1'),
(157, 'core', 'ticket_timeline_keep_replaced_tabs', '0'),
(158, 'core', 'palette', 'auror'),
(159, 'core', 'lock_use_lock_item', '0'),
(160, 'core', 'lock_autolock_mode', '1'),
(161, 'core', 'lock_directunlock_notification', '0'),
(162, 'core', 'lock_item_list', '[]'),
(163, 'core', 'lock_lockprofile_id', '8'),
(164, 'core', 'set_default_requester', '1'),
(165, 'core', 'highcontrast_css', '0'),
(166, 'core', 'smtp_check_certificate', '1'),
(167, 'core', 'enable_api', '0'),
(168, 'core', 'enable_api_login_credentials', '0'),
(169, 'core', 'enable_api_login_external_token', '1'),
(170, 'core', 'url_base_api', 'http://autheman-victor.fr/glpi/apirest.php/'),
(171, 'core', 'login_remember_time', '604800'),
(172, 'core', 'login_remember_default', '1'),
(173, 'core', 'use_notifications', '0'),
(174, 'core', 'notifications_ajax', '0'),
(175, 'core', 'notifications_ajax_check_interval', '5'),
(176, 'core', 'notifications_ajax_sound', NULL),
(177, 'core', 'notifications_ajax_icon_url', '/pics/glpi.png'),
(178, 'core', 'dbversion', '9.2.2'),
(179, 'core', 'smtp_max_retries', '5'),
(180, 'core', 'smtp_sender', NULL),
(181, 'core', 'from_email', NULL),
(182, 'core', 'from_email_name', NULL),
(183, 'core', 'instance_uuid', NULL),
(184, 'core', 'registration_uuid', 'lqRyzJzYrDZG0KOCB50dbYgPXKtqk4skati8Dg28'),
(185, 'core', 'smtp_retry_time', '5');

-- --------------------------------------------------------

--
-- Structure de la table `glpi_consumableitems`
--

CREATE TABLE `glpi_consumableitems` (
  `id` int(11) NOT NULL,
  `entities_id` int(11) NOT NULL DEFAULT '0',
  `is_recursive` tinyint(1) NOT NULL DEFAULT '0',
  `name` varchar(255) DEFAULT NULL,
  `ref` varchar(255) DEFAULT NULL,
  `locations_id` int(11) NOT NULL DEFAULT '0',
  `consumableitemtypes_id` int(11) NOT NULL DEFAULT '0',
  `manufacturers_id` int(11) NOT NULL DEFAULT '0',
  `users_id_tech` int(11) NOT NULL DEFAULT '0',
  `groups_id_tech` int(11) NOT NULL DEFAULT '0',
  `is_deleted` tinyint(1) NOT NULL DEFAULT '0',
  `comment` text,
  `alarm_threshold` int(11) NOT NULL DEFAULT '10',
  `date_mod` datetime DEFAULT NULL,
  `date_creation` datetime DEFAULT NULL
);

-- --------------------------------------------------------

--
-- Structure de la table `glpi_consumableitemtypes`
--

CREATE TABLE `glpi_consumableitemtypes` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `comment` text,
  `date_mod` datetime DEFAULT NULL,
  `date_creation` datetime DEFAULT NULL
);

-- --------------------------------------------------------

--
-- Structure de la table `glpi_consumables`
--

CREATE TABLE `glpi_consumables` (
  `id` int(11) NOT NULL,
  `entities_id` int(11) NOT NULL DEFAULT '0',
  `consumableitems_id` int(11) NOT NULL DEFAULT '0',
  `date_in` date DEFAULT NULL,
  `date_out` date DEFAULT NULL,
  `itemtype` varchar(100) DEFAULT NULL,
  `items_id` int(11) NOT NULL DEFAULT '0',
  `date_mod` datetime DEFAULT NULL,
  `date_creation` datetime DEFAULT NULL
);

-- --------------------------------------------------------

--
-- Structure de la table `glpi_contacts`
--

CREATE TABLE `glpi_contacts` (
  `id` int(11) NOT NULL,
  `entities_id` int(11) NOT NULL DEFAULT '0',
  `is_recursive` tinyint(1) NOT NULL DEFAULT '0',
  `name` varchar(255) DEFAULT NULL,
  `firstname` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `phone2` varchar(255) DEFAULT NULL,
  `mobile` varchar(255) DEFAULT NULL,
  `fax` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `contacttypes_id` int(11) NOT NULL DEFAULT '0',
  `comment` text,
  `is_deleted` tinyint(1) NOT NULL DEFAULT '0',
  `usertitles_id` int(11) NOT NULL DEFAULT '0',
  `address` text,
  `postcode` varchar(255) DEFAULT NULL,
  `town` varchar(255) DEFAULT NULL,
  `state` varchar(255) DEFAULT NULL,
  `country` varchar(255) DEFAULT NULL,
  `date_mod` datetime DEFAULT NULL,
  `date_creation` datetime DEFAULT NULL
);

-- --------------------------------------------------------

--
-- Structure de la table `glpi_contacts_suppliers`
--

CREATE TABLE `glpi_contacts_suppliers` (
  `id` int(11) NOT NULL,
  `suppliers_id` int(11) NOT NULL DEFAULT '0',
  `contacts_id` int(11) NOT NULL DEFAULT '0'
);

-- --------------------------------------------------------

--
-- Structure de la table `glpi_contacttypes`
--

CREATE TABLE `glpi_contacttypes` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `comment` text,
  `date_mod` datetime DEFAULT NULL,
  `date_creation` datetime DEFAULT NULL
);

-- --------------------------------------------------------

--
-- Structure de la table `glpi_contractcosts`
--

CREATE TABLE `glpi_contractcosts` (
  `id` int(11) NOT NULL,
  `contracts_id` int(11) NOT NULL DEFAULT '0',
  `name` varchar(255) DEFAULT NULL,
  `comment` text,
  `begin_date` date DEFAULT NULL,
  `end_date` date DEFAULT NULL,
  `cost` decimal(20,4) NOT NULL DEFAULT '0.0000',
  `budgets_id` int(11) NOT NULL DEFAULT '0',
  `entities_id` int(11) NOT NULL DEFAULT '0',
  `is_recursive` tinyint(1) NOT NULL DEFAULT '0'
);

-- --------------------------------------------------------

--
-- Structure de la table `glpi_contracts`
--

CREATE TABLE `glpi_contracts` (
  `id` int(11) NOT NULL,
  `entities_id` int(11) NOT NULL DEFAULT '0',
  `is_recursive` tinyint(1) NOT NULL DEFAULT '0',
  `name` varchar(255) DEFAULT NULL,
  `num` varchar(255) DEFAULT NULL,
  `contracttypes_id` int(11) NOT NULL DEFAULT '0',
  `begin_date` date DEFAULT NULL,
  `duration` int(11) NOT NULL DEFAULT '0',
  `notice` int(11) NOT NULL DEFAULT '0',
  `periodicity` int(11) NOT NULL DEFAULT '0',
  `billing` int(11) NOT NULL DEFAULT '0',
  `comment` text,
  `accounting_number` varchar(255) DEFAULT NULL,
  `is_deleted` tinyint(1) NOT NULL DEFAULT '0',
  `week_begin_hour` time NOT NULL DEFAULT '00:00:00',
  `week_end_hour` time NOT NULL DEFAULT '00:00:00',
  `saturday_begin_hour` time NOT NULL DEFAULT '00:00:00',
  `saturday_end_hour` time NOT NULL DEFAULT '00:00:00',
  `use_saturday` tinyint(1) NOT NULL DEFAULT '0',
  `monday_begin_hour` time NOT NULL DEFAULT '00:00:00',
  `monday_end_hour` time NOT NULL DEFAULT '00:00:00',
  `use_monday` tinyint(1) NOT NULL DEFAULT '0',
  `max_links_allowed` int(11) NOT NULL DEFAULT '0',
  `alert` int(11) NOT NULL DEFAULT '0',
  `renewal` int(11) NOT NULL DEFAULT '0',
  `template_name` varchar(255) DEFAULT NULL,
  `is_template` tinyint(1) NOT NULL DEFAULT '0',
  `date_mod` datetime DEFAULT NULL,
  `date_creation` datetime DEFAULT NULL
);

-- --------------------------------------------------------

--
-- Structure de la table `glpi_contracts_items`
--

CREATE TABLE `glpi_contracts_items` (
  `id` int(11) NOT NULL,
  `contracts_id` int(11) NOT NULL DEFAULT '0',
  `items_id` int(11) NOT NULL DEFAULT '0',
  `itemtype` varchar(100) NOT NULL
);

-- --------------------------------------------------------

--
-- Structure de la table `glpi_contracts_suppliers`
--

CREATE TABLE `glpi_contracts_suppliers` (
  `id` int(11) NOT NULL,
  `suppliers_id` int(11) NOT NULL DEFAULT '0',
  `contracts_id` int(11) NOT NULL DEFAULT '0'
);

-- --------------------------------------------------------

--
-- Structure de la table `glpi_contracttypes`
--

CREATE TABLE `glpi_contracttypes` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `comment` text,
  `date_mod` datetime DEFAULT NULL,
  `date_creation` datetime DEFAULT NULL
);

-- --------------------------------------------------------

--
-- Structure de la table `glpi_crontasklogs`
--

CREATE TABLE `glpi_crontasklogs` (
  `id` int(11) NOT NULL,
  `crontasks_id` int(11) NOT NULL,
  `crontasklogs_id` int(11) NOT NULL COMMENT 'id of ''start'' event',
  `date` datetime NOT NULL,
  `state` int(11) NOT NULL COMMENT '0:start, 1:run, 2:stop',
  `elapsed` float NOT NULL COMMENT 'time elapsed since start',
  `volume` int(11) NOT NULL COMMENT 'for statistics',
  `content` varchar(255) DEFAULT NULL COMMENT 'message'
);

--
-- Déchargement des données de la table `glpi_crontasklogs`
--

INSERT INTO `glpi_crontasklogs` (`id`, `crontasks_id`, `crontasklogs_id`, `date`, `state`, `elapsed`, `volume`, `content`) VALUES
(1, 18, 0, '2018-04-11 15:11:07', 0, 0, 0, 'Run mode: GLPI'),
(2, 18, 1, '2018-04-11 15:11:07', 2, 0.0225699, 0, 'Action completed, no processing required'),
(3, 19, 0, '2018-04-11 15:14:34', 0, 0, 0, 'Run mode: GLPI'),
(4, 19, 3, '2018-04-11 15:14:34', 2, 0.00743413, 0, 'Action completed, fully processed'),
(5, 20, 0, '2018-04-11 15:14:49', 0, 0, 0, 'Run mode: GLPI'),
(6, 20, 5, '2018-04-11 15:14:49', 2, 0.0386841, 0, 'Action completed, no processing required'),
(7, 21, 0, '2018-04-11 15:16:06', 0, 0, 0, 'Run mode: GLPI'),
(8, 21, 7, '2018-04-11 15:16:06', 2, 0.00578499, 0, 'Action completed, no processing required'),
(9, 22, 0, '2018-04-11 15:16:16', 0, 0, 0, 'Run mode: GLPI'),
(10, 22, 9, '2018-04-11 15:16:16', 2, 0.00949287, 0, 'Action completed, no processing required'),
(11, 23, 0, '2018-04-11 15:22:01', 0, 0, 0, 'Run mode: GLPI'),
(12, 23, 11, '2018-04-11 15:22:01', 2, 0.022804, 0, 'Action completed, no processing required'),
(13, 24, 0, '2018-04-11 15:22:04', 0, 0, 0, 'Run mode: GLPI'),
(14, 24, 13, '2018-04-11 15:22:04', 2, 0.00816703, 0, 'Action completed, no processing required'),
(15, 25, 0, '2018-04-11 16:43:08', 0, 0, 0, 'Run mode: GLPI'),
(16, 25, 15, '2018-04-11 16:43:08', 2, 0.00907302, 0, 'Action completed, no processing required'),
(17, 5, 0, '2018-04-11 17:11:16', 0, 0, 0, 'Run mode: GLPI'),
(18, 5, 17, '2018-04-11 17:11:16', 2, 0.0186779, 0, 'Action completed, no processing required'),
(19, 6, 0, '2018-04-11 17:15:05', 0, 0, 0, 'Run mode: GLPI'),
(20, 6, 19, '2018-04-11 17:15:05', 2, 0.00216413, 0, 'Action completed, no processing required');

-- --------------------------------------------------------

--
-- Structure de la table `glpi_crontasks`
--

CREATE TABLE `glpi_crontasks` (
  `id` int(11) NOT NULL,
  `itemtype` varchar(100) NOT NULL,
  `name` varchar(150) NOT NULL COMMENT 'task name',
  `frequency` int(11) NOT NULL COMMENT 'second between launch',
  `param` int(11) DEFAULT NULL COMMENT 'task specify parameter',
  `state` int(11) NOT NULL DEFAULT '1' COMMENT '0:disabled, 1:waiting, 2:running',
  `mode` int(11) NOT NULL DEFAULT '1' COMMENT '1:internal, 2:external',
  `allowmode` int(11) NOT NULL DEFAULT '3' COMMENT '1:internal, 2:external, 3:both',
  `hourmin` int(11) NOT NULL DEFAULT '0',
  `hourmax` int(11) NOT NULL DEFAULT '24',
  `logs_lifetime` int(11) NOT NULL DEFAULT '30' COMMENT 'number of days',
  `lastrun` datetime DEFAULT NULL COMMENT 'last run date',
  `lastcode` int(11) DEFAULT NULL COMMENT 'last run return code',
  `comment` text,
  `date_mod` datetime DEFAULT NULL,
  `date_creation` datetime DEFAULT NULL
) COMMENT='Task run by internal / external cron.';

--
-- Déchargement des données de la table `glpi_crontasks`
--

INSERT INTO `glpi_crontasks` (`id`, `itemtype`, `name`, `frequency`, `param`, `state`, `mode`, `allowmode`, `hourmin`, `hourmax`, `logs_lifetime`, `lastrun`, `lastcode`, `comment`, `date_mod`, `date_creation`) VALUES
(2, 'CartridgeItem', 'cartridge', 86400, 10, 0, 1, 3, 0, 24, 30, NULL, NULL, NULL, NULL, NULL),
(3, 'ConsumableItem', 'consumable', 86400, 10, 0, 1, 3, 0, 24, 30, NULL, NULL, NULL, NULL, NULL),
(4, 'SoftwareLicense', 'software', 86400, NULL, 0, 1, 3, 0, 24, 30, NULL, NULL, NULL, NULL, NULL),
(5, 'Contract', 'contract', 86400, NULL, 1, 1, 3, 0, 24, 30, '2018-04-11 17:11:00', NULL, NULL, NULL, NULL),
(6, 'InfoCom', 'infocom', 86400, NULL, 1, 1, 3, 0, 24, 30, '2018-04-11 17:15:00', NULL, NULL, NULL, NULL),
(7, 'CronTask', 'logs', 86400, 30, 0, 1, 3, 0, 24, 30, NULL, NULL, NULL, NULL, NULL),
(8, 'CronTask', 'optimize', 604800, NULL, 1, 1, 3, 0, 24, 30, '2011-03-04 11:35:21', NULL, NULL, NULL, NULL),
(9, 'MailCollector', 'mailgate', 600, 10, 1, 1, 3, 0, 24, 30, '2011-06-28 11:34:37', NULL, NULL, NULL, NULL),
(10, 'DBconnection', 'checkdbreplicate', 300, NULL, 0, 1, 3, 0, 24, 30, NULL, NULL, NULL, NULL, NULL),
(11, 'CronTask', 'checkupdate', 604800, NULL, 0, 1, 3, 0, 24, 30, NULL, NULL, NULL, NULL, NULL),
(12, 'CronTask', 'session', 86400, NULL, 1, 1, 3, 0, 24, 30, '2011-08-30 08:22:27', NULL, NULL, NULL, NULL),
(13, 'CronTask', 'graph', 3600, NULL, 1, 1, 3, 0, 24, 30, '2011-12-06 09:48:42', NULL, NULL, NULL, NULL),
(14, 'ReservationItem', 'reservation', 3600, NULL, 1, 1, 3, 0, 24, 30, '2012-04-05 20:31:57', NULL, NULL, NULL, NULL),
(15, 'Ticket', 'closeticket', 43200, NULL, 1, 1, 3, 0, 24, 30, '2014-01-15 14:35:00', NULL, NULL, NULL, NULL),
(16, 'Ticket', 'alertnotclosed', 43200, NULL, 1, 1, 3, 0, 24, 30, '2014-04-16 15:32:00', NULL, NULL, NULL, NULL),
(17, 'SlaLevel_Ticket', 'slaticket', 300, NULL, 1, 1, 3, 0, 24, 30, '2014-06-18 08:02:00', NULL, NULL, NULL, NULL),
(18, 'Ticket', 'createinquest', 86400, NULL, 1, 1, 3, 0, 24, 30, '2018-04-11 15:11:00', NULL, NULL, NULL, NULL),
(19, 'Crontask', 'watcher', 86400, NULL, 1, 1, 3, 0, 24, 30, '2018-04-11 15:14:00', NULL, NULL, NULL, NULL),
(20, 'TicketRecurrent', 'ticketrecurrent', 3600, NULL, 1, 1, 3, 0, 24, 30, '2018-04-11 15:14:00', NULL, NULL, NULL, NULL),
(21, 'PlanningRecall', 'planningrecall', 300, NULL, 1, 1, 3, 0, 24, 30, '2018-04-11 15:16:00', NULL, NULL, NULL, NULL),
(22, 'QueuedNotification', 'queuednotification', 60, 50, 1, 1, 3, 0, 24, 30, '2018-04-11 15:16:00', NULL, NULL, NULL, NULL),
(23, 'QueuedNotification', 'queuednotificationclean', 86400, 30, 1, 1, 3, 0, 24, 30, '2018-04-11 15:22:00', NULL, NULL, NULL, NULL),
(24, 'Crontask', 'temp', 3600, NULL, 1, 1, 3, 0, 24, 30, '2018-04-11 15:22:00', NULL, NULL, NULL, NULL),
(25, 'MailCollector', 'mailgateerror', 86400, NULL, 1, 1, 3, 0, 24, 30, '2018-04-11 16:43:00', NULL, NULL, NULL, NULL),
(26, 'Crontask', 'circularlogs', 86400, 4, 0, 1, 3, 0, 24, 30, NULL, NULL, NULL, NULL, NULL),
(27, 'ObjectLock', 'unlockobject', 86400, 4, 0, 1, 3, 0, 24, 30, NULL, NULL, NULL, NULL, NULL),
(28, 'SavedSearch', 'countAll', 604800, NULL, 0, 1, 3, 0, 24, 10, NULL, NULL, NULL, NULL, NULL),
(29, 'SavedSearch_Alert', 'savedsearchesalerts', 86400, NULL, 0, 1, 3, 0, 24, 10, NULL, NULL, NULL, NULL, NULL),
(30, 'Telemetry', 'telemetry', 2592000, NULL, 0, 1, 3, 0, 24, 10, NULL, NULL, NULL, NULL, NULL),
(31, 'Certificate', 'certificate', 86400, NULL, 0, 1, 3, 0, 24, 10, NULL, NULL, NULL, NULL, NULL),
(32, 'OlaLevel_Ticket', 'olaticket', 300, NULL, 1, 1, 3, 0, 24, 30, '2014-06-18 08:02:00', NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Structure de la table `glpi_devicebatteries`
--

CREATE TABLE `glpi_devicebatteries` (
  `id` int(11) NOT NULL,
  `designation` varchar(255) DEFAULT NULL,
  `comment` text,
  `manufacturers_id` int(11) NOT NULL DEFAULT '0',
  `voltage` int(11) DEFAULT NULL,
  `capacity` int(11) DEFAULT NULL,
  `devicebatterytypes_id` int(11) NOT NULL DEFAULT '0',
  `entities_id` int(11) NOT NULL DEFAULT '0',
  `is_recursive` tinyint(1) NOT NULL DEFAULT '0',
  `devicebatterymodels_id` int(11) DEFAULT NULL,
  `date_mod` datetime DEFAULT NULL,
  `date_creation` datetime DEFAULT NULL
);

-- --------------------------------------------------------

--
-- Structure de la table `glpi_devicebatterymodels`
--

CREATE TABLE `glpi_devicebatterymodels` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `comment` text,
  `product_number` varchar(255) DEFAULT NULL
);

-- --------------------------------------------------------

--
-- Structure de la table `glpi_devicebatterytypes`
--

CREATE TABLE `glpi_devicebatterytypes` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `comment` text,
  `date_mod` datetime DEFAULT NULL,
  `date_creation` datetime DEFAULT NULL
);

-- --------------------------------------------------------

--
-- Structure de la table `glpi_devicecasemodels`
--

CREATE TABLE `glpi_devicecasemodels` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `comment` text,
  `product_number` varchar(255) DEFAULT NULL
);

-- --------------------------------------------------------

--
-- Structure de la table `glpi_devicecases`
--

CREATE TABLE `glpi_devicecases` (
  `id` int(11) NOT NULL,
  `designation` varchar(255) DEFAULT NULL,
  `devicecasetypes_id` int(11) NOT NULL DEFAULT '0',
  `comment` text,
  `manufacturers_id` int(11) NOT NULL DEFAULT '0',
  `entities_id` int(11) NOT NULL DEFAULT '0',
  `is_recursive` tinyint(1) NOT NULL DEFAULT '0',
  `devicecasemodels_id` int(11) DEFAULT NULL,
  `date_mod` datetime DEFAULT NULL,
  `date_creation` datetime DEFAULT NULL
);

-- --------------------------------------------------------

--
-- Structure de la table `glpi_devicecasetypes`
--

CREATE TABLE `glpi_devicecasetypes` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `comment` text,
  `date_mod` datetime DEFAULT NULL,
  `date_creation` datetime DEFAULT NULL
);

-- --------------------------------------------------------

--
-- Structure de la table `glpi_devicecontrolmodels`
--

CREATE TABLE `glpi_devicecontrolmodels` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `comment` text,
  `product_number` varchar(255) DEFAULT NULL
);

-- --------------------------------------------------------

--
-- Structure de la table `glpi_devicecontrols`
--

CREATE TABLE `glpi_devicecontrols` (
  `id` int(11) NOT NULL,
  `designation` varchar(255) DEFAULT NULL,
  `is_raid` tinyint(1) NOT NULL DEFAULT '0',
  `comment` text,
  `manufacturers_id` int(11) NOT NULL DEFAULT '0',
  `interfacetypes_id` int(11) NOT NULL DEFAULT '0',
  `entities_id` int(11) NOT NULL DEFAULT '0',
  `is_recursive` tinyint(1) NOT NULL DEFAULT '0',
  `devicecontrolmodels_id` int(11) DEFAULT NULL,
  `date_mod` datetime DEFAULT NULL,
  `date_creation` datetime DEFAULT NULL
);

-- --------------------------------------------------------

--
-- Structure de la table `glpi_devicedrivemodels`
--

CREATE TABLE `glpi_devicedrivemodels` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `comment` text,
  `product_number` varchar(255) DEFAULT NULL
);

-- --------------------------------------------------------

--
-- Structure de la table `glpi_devicedrives`
--

CREATE TABLE `glpi_devicedrives` (
  `id` int(11) NOT NULL,
  `designation` varchar(255) DEFAULT NULL,
  `is_writer` tinyint(1) NOT NULL DEFAULT '1',
  `speed` varchar(255) DEFAULT NULL,
  `comment` text,
  `manufacturers_id` int(11) NOT NULL DEFAULT '0',
  `interfacetypes_id` int(11) NOT NULL DEFAULT '0',
  `entities_id` int(11) NOT NULL DEFAULT '0',
  `is_recursive` tinyint(1) NOT NULL DEFAULT '0',
  `devicedrivemodels_id` int(11) DEFAULT NULL,
  `date_mod` datetime DEFAULT NULL,
  `date_creation` datetime DEFAULT NULL
);

-- --------------------------------------------------------

--
-- Structure de la table `glpi_devicefirmwaremodels`
--

CREATE TABLE `glpi_devicefirmwaremodels` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `comment` text,
  `product_number` varchar(255) DEFAULT NULL
);

-- --------------------------------------------------------

--
-- Structure de la table `glpi_devicefirmwares`
--

CREATE TABLE `glpi_devicefirmwares` (
  `id` int(11) NOT NULL,
  `designation` varchar(255) DEFAULT NULL,
  `comment` text,
  `manufacturers_id` int(11) NOT NULL DEFAULT '0',
  `date` date DEFAULT NULL,
  `version` varchar(255) DEFAULT NULL,
  `devicefirmwaretypes_id` int(11) NOT NULL DEFAULT '0',
  `entities_id` int(11) NOT NULL DEFAULT '0',
  `is_recursive` tinyint(1) NOT NULL DEFAULT '0',
  `devicefirmwaremodels_id` int(11) DEFAULT NULL,
  `date_mod` datetime DEFAULT NULL,
  `date_creation` datetime DEFAULT NULL
);

-- --------------------------------------------------------

--
-- Structure de la table `glpi_devicefirmwaretypes`
--

CREATE TABLE `glpi_devicefirmwaretypes` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `comment` text,
  `date_mod` datetime DEFAULT NULL,
  `date_creation` datetime DEFAULT NULL
);

--
-- Déchargement des données de la table `glpi_devicefirmwaretypes`
--

INSERT INTO `glpi_devicefirmwaretypes` (`id`, `name`, `comment`, `date_mod`, `date_creation`) VALUES
(1, 'BIOS', NULL, NULL, NULL),
(2, 'UEFI', NULL, NULL, NULL),
(3, 'Firmware', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Structure de la table `glpi_devicegenericmodels`
--

CREATE TABLE `glpi_devicegenericmodels` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `comment` text,
  `product_number` varchar(255) DEFAULT NULL
);

-- --------------------------------------------------------

--
-- Structure de la table `glpi_devicegenerics`
--

CREATE TABLE `glpi_devicegenerics` (
  `id` int(11) NOT NULL,
  `designation` varchar(255) DEFAULT NULL,
  `devicegenerictypes_id` int(11) NOT NULL DEFAULT '0',
  `comment` text,
  `manufacturers_id` int(11) NOT NULL DEFAULT '0',
  `entities_id` int(11) NOT NULL DEFAULT '0',
  `is_recursive` tinyint(1) NOT NULL DEFAULT '0',
  `locations_id` int(11) NOT NULL DEFAULT '0',
  `states_id` int(11) NOT NULL DEFAULT '0',
  `devicegenericmodels_id` int(11) DEFAULT NULL,
  `date_mod` datetime DEFAULT NULL,
  `date_creation` datetime DEFAULT NULL
);

-- --------------------------------------------------------

--
-- Structure de la table `glpi_devicegenerictypes`
--

CREATE TABLE `glpi_devicegenerictypes` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `comment` text
);

-- --------------------------------------------------------

--
-- Structure de la table `glpi_devicegraphiccardmodels`
--

CREATE TABLE `glpi_devicegraphiccardmodels` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `comment` text,
  `product_number` varchar(255) DEFAULT NULL
);

-- --------------------------------------------------------

--
-- Structure de la table `glpi_devicegraphiccards`
--

CREATE TABLE `glpi_devicegraphiccards` (
  `id` int(11) NOT NULL,
  `designation` varchar(255) DEFAULT NULL,
  `interfacetypes_id` int(11) NOT NULL DEFAULT '0',
  `comment` text,
  `manufacturers_id` int(11) NOT NULL DEFAULT '0',
  `memory_default` int(11) NOT NULL DEFAULT '0',
  `entities_id` int(11) NOT NULL DEFAULT '0',
  `is_recursive` tinyint(1) NOT NULL DEFAULT '0',
  `devicegraphiccardmodels_id` int(11) DEFAULT NULL,
  `chipset` varchar(255) DEFAULT NULL,
  `date_mod` datetime DEFAULT NULL,
  `date_creation` datetime DEFAULT NULL
);

-- --------------------------------------------------------

--
-- Structure de la table `glpi_deviceharddrivemodels`
--

CREATE TABLE `glpi_deviceharddrivemodels` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `comment` text,
  `product_number` varchar(255) DEFAULT NULL
);

-- --------------------------------------------------------

--
-- Structure de la table `glpi_deviceharddrives`
--

CREATE TABLE `glpi_deviceharddrives` (
  `id` int(11) NOT NULL,
  `designation` varchar(255) DEFAULT NULL,
  `rpm` varchar(255) DEFAULT NULL,
  `interfacetypes_id` int(11) NOT NULL DEFAULT '0',
  `cache` varchar(255) DEFAULT NULL,
  `comment` text,
  `manufacturers_id` int(11) NOT NULL DEFAULT '0',
  `capacity_default` int(11) NOT NULL DEFAULT '0',
  `entities_id` int(11) NOT NULL DEFAULT '0',
  `is_recursive` tinyint(1) NOT NULL DEFAULT '0',
  `deviceharddrivemodels_id` int(11) DEFAULT NULL,
  `date_mod` datetime DEFAULT NULL,
  `date_creation` datetime DEFAULT NULL
);

-- --------------------------------------------------------

--
-- Structure de la table `glpi_devicememories`
--

CREATE TABLE `glpi_devicememories` (
  `id` int(11) NOT NULL,
  `designation` varchar(255) DEFAULT NULL,
  `frequence` varchar(255) DEFAULT NULL,
  `comment` text,
  `manufacturers_id` int(11) NOT NULL DEFAULT '0',
  `size_default` int(11) NOT NULL DEFAULT '0',
  `devicememorytypes_id` int(11) NOT NULL DEFAULT '0',
  `entities_id` int(11) NOT NULL DEFAULT '0',
  `is_recursive` tinyint(1) NOT NULL DEFAULT '0',
  `devicememorymodels_id` int(11) DEFAULT NULL,
  `date_mod` datetime DEFAULT NULL,
  `date_creation` datetime DEFAULT NULL
);

-- --------------------------------------------------------

--
-- Structure de la table `glpi_devicememorymodels`
--

CREATE TABLE `glpi_devicememorymodels` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `comment` text,
  `product_number` varchar(255) DEFAULT NULL
);

-- --------------------------------------------------------

--
-- Structure de la table `glpi_devicememorytypes`
--

CREATE TABLE `glpi_devicememorytypes` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `comment` text,
  `date_mod` datetime DEFAULT NULL,
  `date_creation` datetime DEFAULT NULL
);

--
-- Déchargement des données de la table `glpi_devicememorytypes`
--

INSERT INTO `glpi_devicememorytypes` (`id`, `name`, `comment`, `date_mod`, `date_creation`) VALUES
(1, 'EDO', NULL, NULL, NULL),
(2, 'DDR', NULL, NULL, NULL),
(3, 'SDRAM', NULL, NULL, NULL),
(4, 'SDRAM-2', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Structure de la table `glpi_devicemotherboardmodels`
--

CREATE TABLE `glpi_devicemotherboardmodels` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `comment` text,
  `product_number` varchar(255) DEFAULT NULL
);

-- --------------------------------------------------------

--
-- Structure de la table `glpi_devicemotherboards`
--

CREATE TABLE `glpi_devicemotherboards` (
  `id` int(11) NOT NULL,
  `designation` varchar(255) DEFAULT NULL,
  `chipset` varchar(255) DEFAULT NULL,
  `comment` text,
  `manufacturers_id` int(11) NOT NULL DEFAULT '0',
  `entities_id` int(11) NOT NULL DEFAULT '0',
  `is_recursive` tinyint(1) NOT NULL DEFAULT '0',
  `devicemotherboardmodels_id` int(11) DEFAULT NULL,
  `date_mod` datetime DEFAULT NULL,
  `date_creation` datetime DEFAULT NULL
);

-- --------------------------------------------------------

--
-- Structure de la table `glpi_devicenetworkcardmodels`
--

CREATE TABLE `glpi_devicenetworkcardmodels` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `comment` text,
  `product_number` varchar(255) DEFAULT NULL
);

-- --------------------------------------------------------

--
-- Structure de la table `glpi_devicenetworkcards`
--

CREATE TABLE `glpi_devicenetworkcards` (
  `id` int(11) NOT NULL,
  `designation` varchar(255) DEFAULT NULL,
  `bandwidth` varchar(255) DEFAULT NULL,
  `comment` text,
  `manufacturers_id` int(11) NOT NULL DEFAULT '0',
  `mac_default` varchar(255) DEFAULT NULL,
  `entities_id` int(11) NOT NULL DEFAULT '0',
  `is_recursive` tinyint(1) NOT NULL DEFAULT '0',
  `devicenetworkcardmodels_id` int(11) DEFAULT NULL,
  `date_mod` datetime DEFAULT NULL,
  `date_creation` datetime DEFAULT NULL
);

-- --------------------------------------------------------

--
-- Structure de la table `glpi_devicepcimodels`
--

CREATE TABLE `glpi_devicepcimodels` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `comment` text,
  `product_number` varchar(255) DEFAULT NULL
);

-- --------------------------------------------------------

--
-- Structure de la table `glpi_devicepcis`
--

CREATE TABLE `glpi_devicepcis` (
  `id` int(11) NOT NULL,
  `designation` varchar(255) DEFAULT NULL,
  `comment` text,
  `manufacturers_id` int(11) NOT NULL DEFAULT '0',
  `entities_id` int(11) NOT NULL DEFAULT '0',
  `is_recursive` tinyint(1) NOT NULL DEFAULT '0',
  `devicepcimodels_id` int(11) DEFAULT NULL,
  `date_mod` datetime DEFAULT NULL,
  `date_creation` datetime DEFAULT NULL
);

-- --------------------------------------------------------

--
-- Structure de la table `glpi_devicepowersupplies`
--

CREATE TABLE `glpi_devicepowersupplies` (
  `id` int(11) NOT NULL,
  `designation` varchar(255) DEFAULT NULL,
  `power` varchar(255) DEFAULT NULL,
  `is_atx` tinyint(1) NOT NULL DEFAULT '1',
  `comment` text,
  `manufacturers_id` int(11) NOT NULL DEFAULT '0',
  `entities_id` int(11) NOT NULL DEFAULT '0',
  `is_recursive` tinyint(1) NOT NULL DEFAULT '0',
  `devicepowersupplymodels_id` int(11) DEFAULT NULL,
  `date_mod` datetime DEFAULT NULL,
  `date_creation` datetime DEFAULT NULL
);

-- --------------------------------------------------------

--
-- Structure de la table `glpi_devicepowersupplymodels`
--

CREATE TABLE `glpi_devicepowersupplymodels` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `comment` text,
  `product_number` varchar(255) DEFAULT NULL
);

-- --------------------------------------------------------

--
-- Structure de la table `glpi_deviceprocessormodels`
--

CREATE TABLE `glpi_deviceprocessormodels` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `comment` text,
  `product_number` varchar(255) DEFAULT NULL
);

-- --------------------------------------------------------

--
-- Structure de la table `glpi_deviceprocessors`
--

CREATE TABLE `glpi_deviceprocessors` (
  `id` int(11) NOT NULL,
  `designation` varchar(255) DEFAULT NULL,
  `frequence` int(11) NOT NULL DEFAULT '0',
  `comment` text,
  `manufacturers_id` int(11) NOT NULL DEFAULT '0',
  `frequency_default` int(11) NOT NULL DEFAULT '0',
  `nbcores_default` int(11) DEFAULT NULL,
  `nbthreads_default` int(11) DEFAULT NULL,
  `entities_id` int(11) NOT NULL DEFAULT '0',
  `is_recursive` tinyint(1) NOT NULL DEFAULT '0',
  `deviceprocessormodels_id` int(11) DEFAULT NULL,
  `date_mod` datetime DEFAULT NULL,
  `date_creation` datetime DEFAULT NULL
);

-- --------------------------------------------------------

--
-- Structure de la table `glpi_devicesensormodels`
--

CREATE TABLE `glpi_devicesensormodels` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `comment` text,
  `product_number` varchar(255) DEFAULT NULL
);

-- --------------------------------------------------------

--
-- Structure de la table `glpi_devicesensors`
--

CREATE TABLE `glpi_devicesensors` (
  `id` int(11) NOT NULL,
  `designation` varchar(255) DEFAULT NULL,
  `devicesensortypes_id` int(11) NOT NULL DEFAULT '0',
  `devicesensormodels_id` int(11) NOT NULL DEFAULT '0',
  `comment` text,
  `manufacturers_id` int(11) NOT NULL DEFAULT '0',
  `entities_id` int(11) NOT NULL DEFAULT '0',
  `is_recursive` tinyint(1) NOT NULL DEFAULT '0',
  `locations_id` int(11) NOT NULL DEFAULT '0',
  `states_id` int(11) NOT NULL DEFAULT '0',
  `date_mod` datetime DEFAULT NULL,
  `date_creation` datetime DEFAULT NULL
);

-- --------------------------------------------------------

--
-- Structure de la table `glpi_devicesensortypes`
--

CREATE TABLE `glpi_devicesensortypes` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `comment` text
);

-- --------------------------------------------------------

--
-- Structure de la table `glpi_devicesimcards`
--

CREATE TABLE `glpi_devicesimcards` (
  `id` int(11) NOT NULL,
  `designation` varchar(255) DEFAULT NULL,
  `comment` text,
  `entities_id` int(11) NOT NULL DEFAULT '0',
  `is_recursive` tinyint(1) NOT NULL DEFAULT '0',
  `manufacturers_id` int(11) NOT NULL DEFAULT '0',
  `voltage` int(11) DEFAULT NULL,
  `devicesimcardtypes_id` int(11) NOT NULL DEFAULT '0',
  `date_mod` datetime DEFAULT NULL,
  `date_creation` datetime DEFAULT NULL,
  `allow_voip` tinyint(1) NOT NULL DEFAULT '0'
);

-- --------------------------------------------------------

--
-- Structure de la table `glpi_devicesimcardtypes`
--

CREATE TABLE `glpi_devicesimcardtypes` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL DEFAULT '',
  `comment` text,
  `date_mod` datetime DEFAULT NULL,
  `date_creation` datetime DEFAULT NULL
);

--
-- Déchargement des données de la table `glpi_devicesimcardtypes`
--

INSERT INTO `glpi_devicesimcardtypes` (`id`, `name`, `comment`, `date_mod`, `date_creation`) VALUES
(1, 'Full SIM', NULL, NULL, NULL),
(2, 'Mini SIM', NULL, NULL, NULL),
(3, 'Micro SIM', NULL, NULL, NULL),
(4, 'Nano SIM', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Structure de la table `glpi_devicesoundcardmodels`
--

CREATE TABLE `glpi_devicesoundcardmodels` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `comment` text,
  `product_number` varchar(255) DEFAULT NULL
);

-- --------------------------------------------------------

--
-- Structure de la table `glpi_devicesoundcards`
--

CREATE TABLE `glpi_devicesoundcards` (
  `id` int(11) NOT NULL,
  `designation` varchar(255) DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  `comment` text,
  `manufacturers_id` int(11) NOT NULL DEFAULT '0',
  `entities_id` int(11) NOT NULL DEFAULT '0',
  `is_recursive` tinyint(1) NOT NULL DEFAULT '0',
  `devicesoundcardmodels_id` int(11) DEFAULT NULL,
  `date_mod` datetime DEFAULT NULL,
  `date_creation` datetime DEFAULT NULL
);

-- --------------------------------------------------------

--
-- Structure de la table `glpi_displaypreferences`
--

CREATE TABLE `glpi_displaypreferences` (
  `id` int(11) NOT NULL,
  `itemtype` varchar(100) NOT NULL,
  `num` int(11) NOT NULL DEFAULT '0',
  `rank` int(11) NOT NULL DEFAULT '0',
  `users_id` int(11) NOT NULL DEFAULT '0'
);

--
-- Déchargement des données de la table `glpi_displaypreferences`
--

INSERT INTO `glpi_displaypreferences` (`id`, `itemtype`, `num`, `rank`, `users_id`) VALUES
(32, 'Computer', 4, 4, 0),
(34, 'Computer', 45, 6, 0),
(33, 'Computer', 40, 5, 0),
(31, 'Computer', 5, 3, 0),
(30, 'Computer', 23, 2, 0),
(86, 'DocumentType', 3, 1, 0),
(49, 'Monitor', 31, 1, 0),
(50, 'Monitor', 23, 2, 0),
(51, 'Monitor', 3, 3, 0),
(52, 'Monitor', 4, 4, 0),
(44, 'Printer', 31, 1, 0),
(38, 'NetworkEquipment', 31, 1, 0),
(39, 'NetworkEquipment', 23, 2, 0),
(45, 'Printer', 23, 2, 0),
(46, 'Printer', 3, 3, 0),
(63, 'Software', 4, 3, 0),
(62, 'Software', 5, 2, 0),
(61, 'Software', 23, 1, 0),
(83, 'CartridgeItem', 4, 2, 0),
(82, 'CartridgeItem', 34, 1, 0),
(57, 'Peripheral', 3, 3, 0),
(56, 'Peripheral', 23, 2, 0),
(55, 'Peripheral', 31, 1, 0),
(29, 'Computer', 31, 1, 0),
(35, 'Computer', 3, 7, 0),
(36, 'Computer', 19, 8, 0),
(37, 'Computer', 17, 9, 0),
(40, 'NetworkEquipment', 3, 3, 0),
(41, 'NetworkEquipment', 4, 4, 0),
(42, 'NetworkEquipment', 11, 6, 0),
(43, 'NetworkEquipment', 19, 7, 0),
(47, 'Printer', 4, 4, 0),
(48, 'Printer', 19, 6, 0),
(53, 'Monitor', 19, 6, 0),
(54, 'Monitor', 7, 7, 0),
(58, 'Peripheral', 4, 4, 0),
(59, 'Peripheral', 19, 6, 0),
(60, 'Peripheral', 7, 7, 0),
(64, 'Contact', 3, 1, 0),
(65, 'Contact', 4, 2, 0),
(66, 'Contact', 5, 3, 0),
(67, 'Contact', 6, 4, 0),
(68, 'Contact', 9, 5, 0),
(69, 'Supplier', 9, 1, 0),
(70, 'Supplier', 3, 2, 0),
(71, 'Supplier', 4, 3, 0),
(72, 'Supplier', 5, 4, 0),
(73, 'Supplier', 10, 5, 0),
(74, 'Supplier', 6, 6, 0),
(75, 'Contract', 4, 1, 0),
(76, 'Contract', 3, 2, 0),
(77, 'Contract', 5, 3, 0),
(78, 'Contract', 6, 4, 0),
(79, 'Contract', 7, 5, 0),
(80, 'Contract', 11, 6, 0),
(84, 'CartridgeItem', 23, 3, 0),
(85, 'CartridgeItem', 3, 4, 0),
(88, 'DocumentType', 6, 2, 0),
(89, 'DocumentType', 4, 3, 0),
(90, 'DocumentType', 5, 4, 0),
(91, 'Document', 3, 1, 0),
(92, 'Document', 4, 2, 0),
(93, 'Document', 7, 3, 0),
(94, 'Document', 5, 4, 0),
(95, 'Document', 16, 5, 0),
(96, 'User', 34, 1, 0),
(98, 'User', 5, 3, 0),
(99, 'User', 6, 4, 0),
(100, 'User', 3, 5, 0),
(101, 'ConsumableItem', 34, 1, 0),
(102, 'ConsumableItem', 4, 2, 0),
(103, 'ConsumableItem', 23, 3, 0),
(104, 'ConsumableItem', 3, 4, 0),
(105, 'NetworkEquipment', 40, 5, 0),
(106, 'Printer', 40, 5, 0),
(107, 'Monitor', 40, 5, 0),
(108, 'Peripheral', 40, 5, 0),
(109, 'User', 8, 6, 0),
(110, 'Phone', 31, 1, 0),
(111, 'Phone', 23, 2, 0),
(112, 'Phone', 3, 3, 0),
(113, 'Phone', 4, 4, 0),
(114, 'Phone', 40, 5, 0),
(115, 'Phone', 19, 6, 0),
(116, 'Phone', 7, 7, 0),
(117, 'Group', 16, 1, 0),
(118, 'AllAssets', 31, 1, 0),
(119, 'ReservationItem', 4, 1, 0),
(120, 'ReservationItem', 3, 2, 0),
(125, 'Budget', 3, 2, 0),
(122, 'Software', 72, 4, 0),
(123, 'Software', 163, 5, 0),
(124, 'Budget', 5, 1, 0),
(126, 'Budget', 4, 3, 0),
(127, 'Budget', 19, 4, 0),
(128, 'Crontask', 8, 1, 0),
(129, 'Crontask', 3, 2, 0),
(130, 'Crontask', 4, 3, 0),
(131, 'Crontask', 7, 4, 0),
(132, 'RequestType', 14, 1, 0),
(133, 'RequestType', 15, 2, 0),
(134, 'NotificationTemplate', 4, 1, 0),
(135, 'NotificationTemplate', 16, 2, 0),
(136, 'Notification', 5, 1, 0),
(137, 'Notification', 6, 2, 0),
(138, 'Notification', 2, 3, 0),
(139, 'Notification', 4, 4, 0),
(140, 'Notification', 80, 5, 0),
(141, 'Notification', 86, 6, 0),
(142, 'MailCollector', 2, 1, 0),
(143, 'MailCollector', 19, 2, 0),
(144, 'AuthLDAP', 3, 1, 0),
(145, 'AuthLDAP', 19, 2, 0),
(146, 'AuthMail', 3, 1, 0),
(147, 'AuthMail', 19, 2, 0),
(210, 'IPNetwork', 18, 1, 0),
(209, 'WifiNetwork', 10, 1, 0),
(150, 'Profile', 2, 1, 0),
(151, 'Profile', 3, 2, 0),
(152, 'Profile', 19, 3, 0),
(153, 'Transfer', 19, 1, 0),
(154, 'TicketValidation', 3, 1, 0),
(155, 'TicketValidation', 2, 2, 0),
(156, 'TicketValidation', 8, 3, 0),
(157, 'TicketValidation', 4, 4, 0),
(158, 'TicketValidation', 9, 5, 0),
(159, 'TicketValidation', 7, 6, 0),
(160, 'NotImportedEmail', 2, 1, 0),
(161, 'NotImportedEmail', 5, 2, 0),
(162, 'NotImportedEmail', 4, 3, 0),
(163, 'NotImportedEmail', 6, 4, 0),
(164, 'NotImportedEmail', 16, 5, 0),
(165, 'NotImportedEmail', 19, 6, 0),
(166, 'RuleRightParameter', 11, 1, 0),
(167, 'Ticket', 12, 1, 0),
(168, 'Ticket', 19, 2, 0),
(169, 'Ticket', 15, 3, 0),
(170, 'Ticket', 3, 4, 0),
(171, 'Ticket', 4, 5, 0),
(172, 'Ticket', 5, 6, 0),
(173, 'Ticket', 7, 7, 0),
(174, 'Calendar', 19, 1, 0),
(175, 'Holiday', 11, 1, 0),
(176, 'Holiday', 12, 2, 0),
(177, 'Holiday', 13, 3, 0),
(178, 'SLA', 4, 1, 0),
(179, 'Ticket', 18, 8, 0),
(180, 'AuthLdap', 30, 3, 0),
(181, 'AuthMail', 6, 3, 0),
(208, 'FQDN', 11, 1, 0),
(183, 'FieldUnicity', 1, 1, 0),
(184, 'FieldUnicity', 80, 2, 0),
(185, 'FieldUnicity', 4, 3, 0),
(186, 'FieldUnicity', 3, 4, 0),
(187, 'FieldUnicity', 86, 5, 0),
(188, 'FieldUnicity', 30, 6, 0),
(189, 'Problem', 21, 1, 0),
(190, 'Problem', 12, 2, 0),
(191, 'Problem', 19, 3, 0),
(192, 'Problem', 15, 4, 0),
(193, 'Problem', 3, 5, 0),
(194, 'Problem', 7, 6, 0),
(195, 'Problem', 18, 7, 0),
(196, 'Vlan', 11, 1, 0),
(197, 'TicketRecurrent', 11, 1, 0),
(198, 'TicketRecurrent', 12, 2, 0),
(199, 'TicketRecurrent', 13, 3, 0),
(200, 'TicketRecurrent', 15, 4, 0),
(201, 'TicketRecurrent', 14, 5, 0),
(202, 'Reminder', 2, 1, 0),
(203, 'Reminder', 3, 2, 0),
(204, 'Reminder', 4, 3, 0),
(205, 'Reminder', 5, 4, 0),
(206, 'Reminder', 6, 5, 0),
(207, 'Reminder', 7, 6, 0),
(211, 'IPNetwork', 10, 2, 0),
(212, 'IPNetwork', 11, 3, 0),
(213, 'IPNetwork', 12, 4, 0),
(214, 'IPNetwork', 17, 5, 0),
(215, 'NetworkName', 12, 1, 0),
(216, 'NetworkName', 13, 2, 0),
(217, 'RSSFeed', 2, 1, 0),
(218, 'RSSFeed', 4, 2, 0),
(219, 'RSSFeed', 5, 3, 0),
(220, 'RSSFeed', 19, 4, 0),
(221, 'RSSFeed', 6, 5, 0),
(222, 'RSSFeed', 7, 6, 0),
(223, 'Blacklist', 12, 1, 0),
(224, 'Blacklist', 11, 2, 0),
(225, 'ReservationItem', 5, 3, 0),
(226, 'QueueMail', 16, 1, 0),
(227, 'QueueMail', 7, 2, 0),
(228, 'QueueMail', 20, 3, 0),
(229, 'QueueMail', 21, 4, 0),
(230, 'QueueMail', 22, 5, 0),
(231, 'QueueMail', 15, 6, 0),
(232, 'Change', 12, 1, 0),
(233, 'Change', 19, 2, 0),
(234, 'Change', 15, 3, 0),
(235, 'Change', 7, 4, 0),
(236, 'Change', 18, 5, 0),
(237, 'Project', 3, 1, 0),
(238, 'Project', 4, 2, 0),
(239, 'Project', 12, 3, 0),
(240, 'Project', 5, 4, 0),
(241, 'Project', 15, 5, 0),
(242, 'Project', 21, 6, 0),
(243, 'ProjectState', 12, 1, 0),
(244, 'ProjectState', 11, 2, 0),
(245, 'ProjectTask', 2, 1, 0),
(246, 'ProjectTask', 12, 2, 0),
(247, 'ProjectTask', 14, 3, 0),
(248, 'ProjectTask', 5, 4, 0),
(249, 'ProjectTask', 7, 5, 0),
(250, 'ProjectTask', 8, 6, 0),
(251, 'ProjectTask', 13, 7, 0),
(252, 'CartridgeItem', 9, 5, 0),
(253, 'ConsumableItem', 9, 5, 0),
(254, 'ReservationItem', 9, 4, 0),
(255, 'SoftwareLicense', 1, 1, 0),
(256, 'SoftwareLicense', 3, 2, 0),
(257, 'SoftwareLicense', 10, 3, 0),
(258, 'SoftwareLicense', 162, 4, 0),
(259, 'SoftwareLicense', 5, 5, 0),
(260, 'SavedSearch', 8, 1, 0),
(261, 'SavedSearch', 9, 1, 0),
(262, 'SavedSearch', 3, 1, 0),
(263, 'SavedSearch', 10, 1, 0),
(264, 'SavedSearch', 11, 1, 0);

-- --------------------------------------------------------

--
-- Structure de la table `glpi_documentcategories`
--

CREATE TABLE `glpi_documentcategories` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `comment` text,
  `documentcategories_id` int(11) NOT NULL DEFAULT '0',
  `completename` text,
  `level` int(11) NOT NULL DEFAULT '0',
  `ancestors_cache` longtext,
  `sons_cache` longtext,
  `date_mod` datetime DEFAULT NULL,
  `date_creation` datetime DEFAULT NULL
);

-- --------------------------------------------------------

--
-- Structure de la table `glpi_documents`
--

CREATE TABLE `glpi_documents` (
  `id` int(11) NOT NULL,
  `entities_id` int(11) NOT NULL DEFAULT '0',
  `is_recursive` tinyint(1) NOT NULL DEFAULT '0',
  `name` varchar(255) DEFAULT NULL,
  `filename` varchar(255) DEFAULT NULL COMMENT 'for display and transfert',
  `filepath` varchar(255) DEFAULT NULL COMMENT 'file storage path',
  `documentcategories_id` int(11) NOT NULL DEFAULT '0',
  `mime` varchar(255) DEFAULT NULL,
  `date_mod` datetime DEFAULT NULL,
  `comment` text,
  `is_deleted` tinyint(1) NOT NULL DEFAULT '0',
  `link` varchar(255) DEFAULT NULL,
  `users_id` int(11) NOT NULL DEFAULT '0',
  `tickets_id` int(11) NOT NULL DEFAULT '0',
  `sha1sum` char(40) DEFAULT NULL,
  `is_blacklisted` tinyint(1) NOT NULL DEFAULT '0',
  `tag` varchar(255) DEFAULT NULL,
  `date_creation` datetime DEFAULT NULL
);

-- --------------------------------------------------------

--
-- Structure de la table `glpi_documents_items`
--

CREATE TABLE `glpi_documents_items` (
  `id` int(11) NOT NULL,
  `documents_id` int(11) NOT NULL DEFAULT '0',
  `items_id` int(11) NOT NULL DEFAULT '0',
  `itemtype` varchar(100) NOT NULL,
  `entities_id` int(11) NOT NULL DEFAULT '0',
  `is_recursive` tinyint(1) NOT NULL DEFAULT '0',
  `date_mod` datetime DEFAULT NULL,
  `users_id` int(11) DEFAULT '0',
  `timeline_position` tinyint(1) NOT NULL DEFAULT '0'
);

-- --------------------------------------------------------

--
-- Structure de la table `glpi_documenttypes`
--

CREATE TABLE `glpi_documenttypes` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `ext` varchar(255) DEFAULT NULL,
  `icon` varchar(255) DEFAULT NULL,
  `mime` varchar(255) DEFAULT NULL,
  `is_uploadable` tinyint(1) NOT NULL DEFAULT '1',
  `date_mod` datetime DEFAULT NULL,
  `comment` text,
  `date_creation` datetime DEFAULT NULL
);

--
-- Déchargement des données de la table `glpi_documenttypes`
--

INSERT INTO `glpi_documenttypes` (`id`, `name`, `ext`, `icon`, `mime`, `is_uploadable`, `date_mod`, `comment`, `date_creation`) VALUES
(1, 'JPEG', 'jpg', 'jpg-dist.png', '', 1, '2004-12-13 19:47:21', NULL, NULL),
(2, 'PNG', 'png', 'png-dist.png', '', 1, '2004-12-13 19:47:21', NULL, NULL),
(3, 'GIF', 'gif', 'gif-dist.png', '', 1, '2004-12-13 19:47:21', NULL, NULL),
(4, 'BMP', 'bmp', 'bmp-dist.png', '', 1, '2004-12-13 19:47:21', NULL, NULL),
(5, 'Photoshop', 'psd', 'psd-dist.png', '', 1, '2004-12-13 19:47:21', NULL, NULL),
(6, 'TIFF', 'tif', 'tif-dist.png', '', 1, '2004-12-13 19:47:21', NULL, NULL),
(7, 'AIFF', 'aiff', 'aiff-dist.png', '', 1, '2004-12-13 19:47:21', NULL, NULL),
(8, 'Windows Media', 'asf', 'asf-dist.png', '', 1, '2004-12-13 19:47:21', NULL, NULL),
(9, 'Windows Media', 'avi', 'avi-dist.png', '', 1, '2004-12-13 19:47:21', NULL, NULL),
(44, 'C source', 'c', 'c-dist.png', '', 1, '2011-12-06 09:48:34', NULL, NULL),
(27, 'RealAudio', 'rm', 'rm-dist.png', '', 1, '2004-12-13 19:47:21', NULL, NULL),
(16, 'Midi', 'mid', 'mid-dist.png', '', 1, '2004-12-13 19:47:21', NULL, NULL),
(17, 'QuickTime', 'mov', 'mov-dist.png', '', 1, '2004-12-13 19:47:21', NULL, NULL),
(18, 'MP3', 'mp3', 'mp3-dist.png', '', 1, '2004-12-13 19:47:21', NULL, NULL),
(19, 'MPEG', 'mpg', 'mpg-dist.png', '', 1, '2004-12-13 19:47:21', NULL, NULL),
(20, 'Ogg Vorbis', 'ogg', 'ogg-dist.png', '', 1, '2004-12-13 19:47:21', NULL, NULL),
(24, 'QuickTime', 'qt', 'qt-dist.png', '', 1, '2004-12-13 19:47:21', NULL, NULL),
(10, 'BZip', 'bz2', 'bz2-dist.png', '', 1, '2004-12-13 19:47:21', NULL, NULL),
(25, 'RealAudio', 'ra', 'ra-dist.png', '', 1, '2004-12-13 19:47:21', NULL, NULL),
(26, 'RealAudio', 'ram', 'ram-dist.png', '', 1, '2004-12-13 19:47:21', NULL, NULL),
(11, 'Word', 'doc', 'doc-dist.png', '', 1, '2004-12-13 19:47:21', NULL, NULL),
(12, 'DjVu', 'djvu', '', '', 1, '2004-12-13 19:47:21', NULL, NULL),
(42, 'MNG', 'mng', '', '', 1, '2004-12-13 19:47:22', NULL, NULL),
(13, 'PostScript', 'eps', 'ps-dist.png', '', 1, '2004-12-13 19:47:21', NULL, NULL),
(14, 'GZ', 'gz', 'gz-dist.png', '', 1, '2004-12-13 19:47:21', NULL, NULL),
(37, 'WAV', 'wav', 'wav-dist.png', '', 1, '2004-12-13 19:47:22', NULL, NULL),
(15, 'HTML', 'html', 'html-dist.png', '', 1, '2004-12-13 19:47:21', NULL, NULL),
(34, 'Flash', 'swf', 'swf-dist.png', '', 1, '2011-12-06 09:48:34', NULL, NULL),
(21, 'PDF', 'pdf', 'pdf-dist.png', '', 1, '2004-12-13 19:47:21', NULL, NULL),
(22, 'PowerPoint', 'ppt', 'ppt-dist.png', '', 1, '2004-12-13 19:47:21', NULL, NULL),
(23, 'PostScript', 'ps', 'ps-dist.png', '', 1, '2004-12-13 19:47:21', NULL, NULL),
(40, 'Windows Media', 'wmv', 'wmv-dist.png', '', 1, '2011-12-06 09:48:34', NULL, NULL),
(28, 'RTF', 'rtf', 'rtf-dist.png', '', 1, '2004-12-13 19:47:21', NULL, NULL),
(29, 'StarOffice', 'sdd', 'sdd-dist.png', '', 1, '2004-12-13 19:47:22', NULL, NULL),
(30, 'StarOffice', 'sdw', 'sdw-dist.png', '', 1, '2004-12-13 19:47:22', NULL, NULL),
(31, 'Stuffit', 'sit', 'sit-dist.png', '', 1, '2004-12-13 19:47:22', NULL, NULL),
(43, 'Adobe Illustrator', 'ai', 'ai-dist.png', '', 1, '2004-12-13 19:47:22', NULL, NULL),
(32, 'OpenOffice Impress', 'sxi', 'sxi-dist.png', '', 1, '2004-12-13 19:47:22', NULL, NULL),
(33, 'OpenOffice', 'sxw', 'sxw-dist.png', '', 1, '2004-12-13 19:47:22', NULL, NULL),
(46, 'DVI', 'dvi', 'dvi-dist.png', '', 1, '2004-12-13 19:47:22', NULL, NULL),
(35, 'TGZ', 'tgz', 'tgz-dist.png', '', 1, '2004-12-13 19:47:22', NULL, NULL),
(36, 'texte', 'txt', 'txt-dist.png', '', 1, '2004-12-13 19:47:22', NULL, NULL),
(49, 'RedHat/Mandrake/SuSE', 'rpm', 'rpm-dist.png', '', 1, '2004-12-13 19:47:22', NULL, NULL),
(38, 'Excel', 'xls', 'xls-dist.png', '', 1, '2004-12-13 19:47:22', NULL, NULL),
(39, 'XML', 'xml', 'xml-dist.png', '', 1, '2004-12-13 19:47:22', NULL, NULL),
(41, 'Zip', 'zip', 'zip-dist.png', '', 1, '2011-12-06 09:48:34', NULL, NULL),
(45, 'Debian', 'deb', 'deb-dist.png', '', 1, '2004-12-13 19:47:22', NULL, NULL),
(47, 'C header', 'h', 'h-dist.png', '', 1, '2011-12-06 09:48:34', NULL, NULL),
(48, 'Pascal', 'pas', 'pas-dist.png', '', 1, '2011-12-06 09:48:34', NULL, NULL),
(50, 'OpenOffice Calc', 'sxc', 'sxc-dist.png', '', 1, '2004-12-13 19:47:22', NULL, NULL),
(51, 'LaTeX', 'tex', 'tex-dist.png', '', 1, '2004-12-13 19:47:22', NULL, NULL),
(52, 'GIMP multi-layer', 'xcf', 'xcf-dist.png', '', 1, '2004-12-13 19:47:22', NULL, NULL),
(53, 'JPEG', 'jpeg', 'jpg-dist.png', '', 1, '2005-03-07 22:23:17', NULL, NULL),
(54, 'Oasis Open Office Writer', 'odt', 'odt-dist.png', '', 1, '2006-01-21 17:41:13', NULL, NULL),
(55, 'Oasis Open Office Calc', 'ods', 'ods-dist.png', '', 1, '2006-01-21 17:41:31', NULL, NULL),
(56, 'Oasis Open Office Impress', 'odp', 'odp-dist.png', '', 1, '2006-01-21 17:42:54', NULL, NULL),
(57, 'Oasis Open Office Impress Template', 'otp', 'odp-dist.png', '', 1, '2006-01-21 17:43:58', NULL, NULL),
(58, 'Oasis Open Office Writer Template', 'ott', 'odt-dist.png', '', 1, '2006-01-21 17:44:41', NULL, NULL),
(59, 'Oasis Open Office Calc Template', 'ots', 'ods-dist.png', '', 1, '2006-01-21 17:45:30', NULL, NULL),
(60, 'Oasis Open Office Math', 'odf', 'odf-dist.png', '', 1, '2006-01-21 17:48:05', NULL, NULL),
(61, 'Oasis Open Office Draw', 'odg', 'odg-dist.png', '', 1, '2006-01-21 17:48:31', NULL, NULL),
(62, 'Oasis Open Office Draw Template', 'otg', 'odg-dist.png', '', 1, '2006-01-21 17:49:46', NULL, NULL),
(63, 'Oasis Open Office Base', 'odb', 'odb-dist.png', '', 1, '2006-01-21 18:03:34', NULL, NULL),
(64, 'Oasis Open Office HTML', 'oth', 'oth-dist.png', '', 1, '2006-01-21 18:05:27', NULL, NULL),
(65, 'Oasis Open Office Writer Master', 'odm', 'odm-dist.png', '', 1, '2006-01-21 18:06:34', NULL, NULL),
(66, 'Oasis Open Office Chart', 'odc', '', '', 1, '2006-01-21 18:07:48', NULL, NULL),
(67, 'Oasis Open Office Image', 'odi', '', '', 1, '2006-01-21 18:08:18', NULL, NULL),
(68, 'Word XML', 'docx', 'doc-dist.png', NULL, 1, '2011-01-18 11:40:42', NULL, NULL),
(69, 'Excel XML', 'xlsx', 'xls-dist.png', NULL, 1, '2011-01-18 11:40:42', NULL, NULL),
(70, 'PowerPoint XML', 'pptx', 'ppt-dist.png', NULL, 1, '2011-01-18 11:40:42', NULL, NULL),
(71, 'Comma-Separated Values', 'csv', 'csv-dist.png', NULL, 1, '2011-12-06 09:48:34', NULL, NULL),
(72, 'Scalable Vector Graphics', 'svg', 'svg-dist.png', NULL, 1, '2011-12-06 09:48:34', NULL, NULL);

-- --------------------------------------------------------

--
-- Structure de la table `glpi_domains`
--

CREATE TABLE `glpi_domains` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `entities_id` int(11) NOT NULL DEFAULT '0',
  `is_recursive` tinyint(1) NOT NULL DEFAULT '0',
  `comment` text,
  `date_mod` datetime DEFAULT NULL,
  `date_creation` datetime DEFAULT NULL
);

-- --------------------------------------------------------

--
-- Structure de la table `glpi_dropdowntranslations`
--

CREATE TABLE `glpi_dropdowntranslations` (
  `id` int(11) NOT NULL,
  `items_id` int(11) NOT NULL DEFAULT '0',
  `itemtype` varchar(100) DEFAULT NULL,
  `language` varchar(5) DEFAULT NULL,
  `field` varchar(100) DEFAULT NULL,
  `value` text
);

-- --------------------------------------------------------

--
-- Structure de la table `glpi_entities`
--

CREATE TABLE `glpi_entities` (
  `id` int(11) NOT NULL DEFAULT '0',
  `name` varchar(255) DEFAULT NULL,
  `entities_id` int(11) NOT NULL DEFAULT '0',
  `completename` text,
  `comment` text,
  `level` int(11) NOT NULL DEFAULT '0',
  `sons_cache` longtext,
  `ancestors_cache` longtext,
  `address` text,
  `postcode` varchar(255) DEFAULT NULL,
  `town` varchar(255) DEFAULT NULL,
  `state` varchar(255) DEFAULT NULL,
  `country` varchar(255) DEFAULT NULL,
  `website` varchar(255) DEFAULT NULL,
  `phonenumber` varchar(255) DEFAULT NULL,
  `fax` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `admin_email` varchar(255) DEFAULT NULL,
  `admin_email_name` varchar(255) DEFAULT NULL,
  `admin_reply` varchar(255) DEFAULT NULL,
  `admin_reply_name` varchar(255) DEFAULT NULL,
  `notification_subject_tag` varchar(255) DEFAULT NULL,
  `ldap_dn` varchar(255) DEFAULT NULL,
  `tag` varchar(255) DEFAULT NULL,
  `authldaps_id` int(11) NOT NULL DEFAULT '0',
  `mail_domain` varchar(255) DEFAULT NULL,
  `entity_ldapfilter` text,
  `mailing_signature` text,
  `cartridges_alert_repeat` int(11) NOT NULL DEFAULT '-2',
  `consumables_alert_repeat` int(11) NOT NULL DEFAULT '-2',
  `use_licenses_alert` int(11) NOT NULL DEFAULT '-2',
  `send_licenses_alert_before_delay` int(11) NOT NULL DEFAULT '-2',
  `use_certificates_alert` int(11) NOT NULL DEFAULT '-2',
  `send_certificates_alert_before_delay` int(11) NOT NULL DEFAULT '-2',
  `use_contracts_alert` int(11) NOT NULL DEFAULT '-2',
  `send_contracts_alert_before_delay` int(11) NOT NULL DEFAULT '-2',
  `use_infocoms_alert` int(11) NOT NULL DEFAULT '-2',
  `send_infocoms_alert_before_delay` int(11) NOT NULL DEFAULT '-2',
  `use_reservations_alert` int(11) NOT NULL DEFAULT '-2',
  `autoclose_delay` int(11) NOT NULL DEFAULT '-2',
  `notclosed_delay` int(11) NOT NULL DEFAULT '-2',
  `calendars_id` int(11) NOT NULL DEFAULT '-2',
  `auto_assign_mode` int(11) NOT NULL DEFAULT '-2',
  `tickettype` int(11) NOT NULL DEFAULT '-2',
  `max_closedate` datetime DEFAULT NULL,
  `inquest_config` int(11) NOT NULL DEFAULT '-2',
  `inquest_rate` int(11) NOT NULL DEFAULT '0',
  `inquest_delay` int(11) NOT NULL DEFAULT '-10',
  `inquest_URL` varchar(255) DEFAULT NULL,
  `autofill_warranty_date` varchar(255) NOT NULL DEFAULT '-2',
  `autofill_use_date` varchar(255) NOT NULL DEFAULT '-2',
  `autofill_buy_date` varchar(255) NOT NULL DEFAULT '-2',
  `autofill_delivery_date` varchar(255) NOT NULL DEFAULT '-2',
  `autofill_order_date` varchar(255) NOT NULL DEFAULT '-2',
  `tickettemplates_id` int(11) NOT NULL DEFAULT '-2',
  `entities_id_software` int(11) NOT NULL DEFAULT '-2',
  `default_contract_alert` int(11) NOT NULL DEFAULT '-2',
  `default_infocom_alert` int(11) NOT NULL DEFAULT '-2',
  `default_cartridges_alarm_threshold` int(11) NOT NULL DEFAULT '-2',
  `default_consumables_alarm_threshold` int(11) NOT NULL DEFAULT '-2',
  `delay_send_emails` int(11) NOT NULL DEFAULT '-2',
  `is_notif_enable_default` int(11) NOT NULL DEFAULT '-2',
  `inquest_duration` int(11) NOT NULL DEFAULT '0',
  `date_mod` datetime DEFAULT NULL,
  `date_creation` datetime DEFAULT NULL,
  `autofill_decommission_date` varchar(255) NOT NULL DEFAULT '-2'
);

--
-- Déchargement des données de la table `glpi_entities`
--

INSERT INTO `glpi_entities` (`id`, `name`, `entities_id`, `completename`, `comment`, `level`, `sons_cache`, `ancestors_cache`, `address`, `postcode`, `town`, `state`, `country`, `website`, `phonenumber`, `fax`, `email`, `admin_email`, `admin_email_name`, `admin_reply`, `admin_reply_name`, `notification_subject_tag`, `ldap_dn`, `tag`, `authldaps_id`, `mail_domain`, `entity_ldapfilter`, `mailing_signature`, `cartridges_alert_repeat`, `consumables_alert_repeat`, `use_licenses_alert`, `send_licenses_alert_before_delay`, `use_certificates_alert`, `send_certificates_alert_before_delay`, `use_contracts_alert`, `send_contracts_alert_before_delay`, `use_infocoms_alert`, `send_infocoms_alert_before_delay`, `use_reservations_alert`, `autoclose_delay`, `notclosed_delay`, `calendars_id`, `auto_assign_mode`, `tickettype`, `max_closedate`, `inquest_config`, `inquest_rate`, `inquest_delay`, `inquest_URL`, `autofill_warranty_date`, `autofill_use_date`, `autofill_buy_date`, `autofill_delivery_date`, `autofill_order_date`, `tickettemplates_id`, `entities_id_software`, `default_contract_alert`, `default_infocom_alert`, `default_cartridges_alarm_threshold`, `default_consumables_alarm_threshold`, `delay_send_emails`, `is_notif_enable_default`, `inquest_duration`, `date_mod`, `date_creation`, `autofill_decommission_date`) VALUES
(0, 'Root entity', -1, 'Root entity', NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -10, 0, 0, -10, 1, NULL, 1, 0, 0, NULL, '0', '0', '0', '0', '0', 1, -10, 0, 0, 10, 10, 0, 1, 0, NULL, NULL, '0');

-- --------------------------------------------------------

--
-- Structure de la table `glpi_entities_knowbaseitems`
--

CREATE TABLE `glpi_entities_knowbaseitems` (
  `id` int(11) NOT NULL,
  `knowbaseitems_id` int(11) NOT NULL DEFAULT '0',
  `entities_id` int(11) NOT NULL DEFAULT '0',
  `is_recursive` tinyint(1) NOT NULL DEFAULT '0'
);

-- --------------------------------------------------------

--
-- Structure de la table `glpi_entities_reminders`
--

CREATE TABLE `glpi_entities_reminders` (
  `id` int(11) NOT NULL,
  `reminders_id` int(11) NOT NULL DEFAULT '0',
  `entities_id` int(11) NOT NULL DEFAULT '0',
  `is_recursive` tinyint(1) NOT NULL DEFAULT '0'
);

-- --------------------------------------------------------

--
-- Structure de la table `glpi_entities_rssfeeds`
--

CREATE TABLE `glpi_entities_rssfeeds` (
  `id` int(11) NOT NULL,
  `rssfeeds_id` int(11) NOT NULL DEFAULT '0',
  `entities_id` int(11) NOT NULL DEFAULT '0',
  `is_recursive` tinyint(1) NOT NULL DEFAULT '0'
);

-- --------------------------------------------------------

--
-- Structure de la table `glpi_events`
--

CREATE TABLE `glpi_events` (
  `id` int(11) NOT NULL,
  `items_id` int(11) NOT NULL DEFAULT '0',
  `type` varchar(255) DEFAULT NULL,
  `date` datetime DEFAULT NULL,
  `service` varchar(255) DEFAULT NULL,
  `level` int(11) NOT NULL DEFAULT '0',
  `message` text
);

--
-- Déchargement des données de la table `glpi_events`
--

INSERT INTO `glpi_events` (`id`, `items_id`, `type`, `date`, `service`, `level`, `message`) VALUES
(1, -1, 'system', '2018-04-11 15:11:11', 'login', 3, 'glpi se connecte depuis l\'IP 78.231.53.68'),
(2, 2, 'users', '2018-04-11 15:12:23', 'setup', 5, 'glpi met à jour un élément'),
(3, 6, 'users', '2018-04-11 15:14:01', 'setup', 4, 'glpi ajoute l\'élément NatsuMaiii'),
(4, -1, 'system', '2018-04-11 15:14:43', 'login', 3, 'NatsuMaiii se connecte depuis l\'IP 78.231.53.68'),
(5, -1, 'system', '2018-04-11 15:14:56', 'login', 3, 'glpi se connecte depuis l\'IP 78.231.53.68'),
(6, 3, 'users', '2018-04-11 15:15:27', 'setup', 5, 'glpi met à jour un élément'),
(7, 4, 'users', '2018-04-11 15:15:45', 'setup', 5, 'glpi met à jour un élément'),
(8, 6, 'users', '2018-04-11 15:16:03', 'setup', 5, 'glpi met à jour un élément'),
(9, -1, 'system', '2018-04-11 15:16:13', 'login', 3, 'NatsuMaiii se connecte depuis l\'IP 78.231.53.68'),
(10, -1, 'system', '2018-04-11 15:16:26', 'login', 3, 'glpi se connecte depuis l\'IP 78.231.53.68'),
(11, 5, 'users', '2018-04-11 15:16:49', 'setup', 5, 'glpi met à jour un élément'),
(12, 6, 'users', '2018-04-11 15:17:41', 'setup', 4, 'glpi supprime un élément'),
(13, 7, 'users', '2018-04-11 15:22:00', 'setup', 4, 'glpi ajoute l\'élément autheman'),
(14, -1, 'system', '2018-04-11 15:22:11', 'login', 3, 'autheman se connecte depuis l\'IP 78.231.53.68'),
(15, -1, 'system', '2018-04-11 16:43:14', 'login', 3, 'glpi se connecte depuis l\'IP 78.231.53.68'),
(16, 1, 'tickettemplate', '2018-04-11 17:13:49', 'maintain', 4, 'glpi ajoute un champ prédéfini'),
(17, 1, 'tickettemplate', '2018-04-11 17:14:26', 'maintain', 4, 'glpi ajoute un champ prédéfini'),
(18, -1, 'system', '2018-04-11 20:42:38', 'login', 3, 'autheman se connecte depuis l\'IP 86.237.124.254'),
(19, -1, 'system', '2018-04-12 09:52:02', 'login', 3, 'autheman se connecte depuis l\'IP 78.231.53.68'),
(20, -1, 'system', '2019-02-25 16:31:42', 'login', 3, 'autheman se connecte depuis l\'IP 172.29.56.16'),
(21, -1, 'system', '2019-03-07 09:47:07', 'login', 3, 'Connexion échouée de root depuis l\'IP 172.28.9.1'),
(22, -1, 'system', '2019-03-07 09:47:19', 'login', 3, 'autheman se connecte depuis l\'IP 172.28.9.1'),
(23, -1, 'system', '2019-03-08 08:10:49', 'login', 3, 'autheman se connecte depuis l\'IP 172.28.9.1'),
(24, -1, 'system', '2019-04-01 10:31:18', 'login', 3, 'autheman se connecte depuis l\'IP 172.29.56.9');

-- --------------------------------------------------------

--
-- Structure de la table `glpi_fieldblacklists`
--

CREATE TABLE `glpi_fieldblacklists` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL DEFAULT '',
  `field` varchar(255) NOT NULL DEFAULT '',
  `value` varchar(255) NOT NULL DEFAULT '',
  `itemtype` varchar(255) NOT NULL DEFAULT '',
  `entities_id` int(11) NOT NULL DEFAULT '0',
  `is_recursive` tinyint(1) NOT NULL DEFAULT '0',
  `comment` text,
  `date_mod` datetime DEFAULT NULL,
  `date_creation` datetime DEFAULT NULL
);

-- --------------------------------------------------------

--
-- Structure de la table `glpi_fieldunicities`
--

CREATE TABLE `glpi_fieldunicities` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL DEFAULT '',
  `is_recursive` tinyint(1) NOT NULL DEFAULT '0',
  `itemtype` varchar(255) NOT NULL DEFAULT '',
  `entities_id` int(11) NOT NULL DEFAULT '-1',
  `fields` text,
  `is_active` tinyint(1) NOT NULL DEFAULT '0',
  `action_refuse` tinyint(1) NOT NULL DEFAULT '0',
  `action_notify` tinyint(1) NOT NULL DEFAULT '0',
  `comment` text,
  `date_mod` datetime DEFAULT NULL,
  `date_creation` datetime DEFAULT NULL
) COMMENT='Stores field unicity criterias';

-- --------------------------------------------------------

--
-- Structure de la table `glpi_filesystems`
--

CREATE TABLE `glpi_filesystems` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `comment` text,
  `date_mod` datetime DEFAULT NULL,
  `date_creation` datetime DEFAULT NULL
);

--
-- Déchargement des données de la table `glpi_filesystems`
--

INSERT INTO `glpi_filesystems` (`id`, `name`, `comment`, `date_mod`, `date_creation`) VALUES
(1, 'ext', NULL, NULL, NULL),
(2, 'ext2', NULL, NULL, NULL),
(3, 'ext3', NULL, NULL, NULL),
(4, 'ext4', NULL, NULL, NULL),
(5, 'FAT', NULL, NULL, NULL),
(6, 'FAT32', NULL, NULL, NULL),
(7, 'VFAT', NULL, NULL, NULL),
(8, 'HFS', NULL, NULL, NULL),
(9, 'HPFS', NULL, NULL, NULL),
(10, 'HTFS', NULL, NULL, NULL),
(11, 'JFS', NULL, NULL, NULL),
(12, 'JFS2', NULL, NULL, NULL),
(13, 'NFS', NULL, NULL, NULL),
(14, 'NTFS', NULL, NULL, NULL),
(15, 'ReiserFS', NULL, NULL, NULL),
(16, 'SMBFS', NULL, NULL, NULL),
(17, 'UDF', NULL, NULL, NULL),
(18, 'UFS', NULL, NULL, NULL),
(19, 'XFS', NULL, NULL, NULL),
(20, 'ZFS', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Structure de la table `glpi_fqdns`
--

CREATE TABLE `glpi_fqdns` (
  `id` int(11) NOT NULL,
  `entities_id` int(11) NOT NULL DEFAULT '0',
  `is_recursive` tinyint(1) NOT NULL DEFAULT '0',
  `name` varchar(255) DEFAULT NULL,
  `fqdn` varchar(255) DEFAULT NULL,
  `comment` text,
  `date_mod` datetime DEFAULT NULL,
  `date_creation` datetime DEFAULT NULL
);

-- --------------------------------------------------------

--
-- Structure de la table `glpi_groups`
--

CREATE TABLE `glpi_groups` (
  `id` int(11) NOT NULL,
  `entities_id` int(11) NOT NULL DEFAULT '0',
  `is_recursive` tinyint(1) NOT NULL DEFAULT '0',
  `name` varchar(255) DEFAULT NULL,
  `comment` text,
  `ldap_field` varchar(255) DEFAULT NULL,
  `ldap_value` text,
  `ldap_group_dn` text,
  `date_mod` datetime DEFAULT NULL,
  `groups_id` int(11) NOT NULL DEFAULT '0',
  `completename` text,
  `level` int(11) NOT NULL DEFAULT '0',
  `ancestors_cache` longtext,
  `sons_cache` longtext,
  `is_requester` tinyint(1) NOT NULL DEFAULT '1',
  `is_assign` tinyint(1) NOT NULL DEFAULT '1',
  `is_task` tinyint(1) NOT NULL DEFAULT '1',
  `is_notify` tinyint(1) NOT NULL DEFAULT '1',
  `is_itemgroup` tinyint(1) NOT NULL DEFAULT '1',
  `is_usergroup` tinyint(1) NOT NULL DEFAULT '1',
  `is_manager` tinyint(1) NOT NULL DEFAULT '1',
  `date_creation` datetime DEFAULT NULL
);

-- --------------------------------------------------------

--
-- Structure de la table `glpi_groups_knowbaseitems`
--

CREATE TABLE `glpi_groups_knowbaseitems` (
  `id` int(11) NOT NULL,
  `knowbaseitems_id` int(11) NOT NULL DEFAULT '0',
  `groups_id` int(11) NOT NULL DEFAULT '0',
  `entities_id` int(11) NOT NULL DEFAULT '-1',
  `is_recursive` tinyint(1) NOT NULL DEFAULT '0'
);

-- --------------------------------------------------------

--
-- Structure de la table `glpi_groups_problems`
--

CREATE TABLE `glpi_groups_problems` (
  `id` int(11) NOT NULL,
  `problems_id` int(11) NOT NULL DEFAULT '0',
  `groups_id` int(11) NOT NULL DEFAULT '0',
  `type` int(11) NOT NULL DEFAULT '1'
);

-- --------------------------------------------------------

--
-- Structure de la table `glpi_groups_reminders`
--

CREATE TABLE `glpi_groups_reminders` (
  `id` int(11) NOT NULL,
  `reminders_id` int(11) NOT NULL DEFAULT '0',
  `groups_id` int(11) NOT NULL DEFAULT '0',
  `entities_id` int(11) NOT NULL DEFAULT '-1',
  `is_recursive` tinyint(1) NOT NULL DEFAULT '0'
);

-- --------------------------------------------------------

--
-- Structure de la table `glpi_groups_rssfeeds`
--

CREATE TABLE `glpi_groups_rssfeeds` (
  `id` int(11) NOT NULL,
  `rssfeeds_id` int(11) NOT NULL DEFAULT '0',
  `groups_id` int(11) NOT NULL DEFAULT '0',
  `entities_id` int(11) NOT NULL DEFAULT '-1',
  `is_recursive` tinyint(1) NOT NULL DEFAULT '0'
);

-- --------------------------------------------------------

--
-- Structure de la table `glpi_groups_tickets`
--

CREATE TABLE `glpi_groups_tickets` (
  `id` int(11) NOT NULL,
  `tickets_id` int(11) NOT NULL DEFAULT '0',
  `groups_id` int(11) NOT NULL DEFAULT '0',
  `type` int(11) NOT NULL DEFAULT '1'
);

-- --------------------------------------------------------

--
-- Structure de la table `glpi_groups_users`
--

CREATE TABLE `glpi_groups_users` (
  `id` int(11) NOT NULL,
  `users_id` int(11) NOT NULL DEFAULT '0',
  `groups_id` int(11) NOT NULL DEFAULT '0',
  `is_dynamic` tinyint(1) NOT NULL DEFAULT '0',
  `is_manager` tinyint(1) NOT NULL DEFAULT '0',
  `is_userdelegate` tinyint(1) NOT NULL DEFAULT '0'
);

-- --------------------------------------------------------

--
-- Structure de la table `glpi_holidays`
--

CREATE TABLE `glpi_holidays` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `entities_id` int(11) NOT NULL DEFAULT '0',
  `is_recursive` tinyint(1) NOT NULL DEFAULT '0',
  `comment` text,
  `begin_date` date DEFAULT NULL,
  `end_date` date DEFAULT NULL,
  `is_perpetual` tinyint(1) NOT NULL DEFAULT '0',
  `date_mod` datetime DEFAULT NULL,
  `date_creation` datetime DEFAULT NULL
);

-- --------------------------------------------------------

--
-- Structure de la table `glpi_infocoms`
--

CREATE TABLE `glpi_infocoms` (
  `id` int(11) NOT NULL,
  `items_id` int(11) NOT NULL DEFAULT '0',
  `itemtype` varchar(100) NOT NULL,
  `entities_id` int(11) NOT NULL DEFAULT '0',
  `is_recursive` tinyint(1) NOT NULL DEFAULT '0',
  `buy_date` date DEFAULT NULL,
  `use_date` date DEFAULT NULL,
  `warranty_duration` int(11) NOT NULL DEFAULT '0',
  `warranty_info` varchar(255) DEFAULT NULL,
  `suppliers_id` int(11) NOT NULL DEFAULT '0',
  `order_number` varchar(255) DEFAULT NULL,
  `delivery_number` varchar(255) DEFAULT NULL,
  `immo_number` varchar(255) DEFAULT NULL,
  `value` decimal(20,4) NOT NULL DEFAULT '0.0000',
  `warranty_value` decimal(20,4) NOT NULL DEFAULT '0.0000',
  `sink_time` int(11) NOT NULL DEFAULT '0',
  `sink_type` int(11) NOT NULL DEFAULT '0',
  `sink_coeff` float NOT NULL DEFAULT '0',
  `comment` text,
  `bill` varchar(255) DEFAULT NULL,
  `budgets_id` int(11) NOT NULL DEFAULT '0',
  `alert` int(11) NOT NULL DEFAULT '0',
  `order_date` date DEFAULT NULL,
  `delivery_date` date DEFAULT NULL,
  `inventory_date` date DEFAULT NULL,
  `warranty_date` date DEFAULT NULL,
  `date_mod` datetime DEFAULT NULL,
  `date_creation` datetime DEFAULT NULL,
  `decommission_date` datetime DEFAULT NULL,
  `businesscriticities_id` int(11) NOT NULL DEFAULT '0'
);

-- --------------------------------------------------------

--
-- Structure de la table `glpi_interfacetypes`
--

CREATE TABLE `glpi_interfacetypes` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `comment` text,
  `date_mod` datetime DEFAULT NULL,
  `date_creation` datetime DEFAULT NULL
);

--
-- Déchargement des données de la table `glpi_interfacetypes`
--

INSERT INTO `glpi_interfacetypes` (`id`, `name`, `comment`, `date_mod`, `date_creation`) VALUES
(1, 'IDE', NULL, NULL, NULL),
(2, 'SATA', NULL, NULL, NULL),
(3, 'SCSI', NULL, NULL, NULL),
(4, 'USB', NULL, NULL, NULL),
(5, 'AGP', '', NULL, NULL),
(6, 'PCI', '', NULL, NULL),
(7, 'PCIe', '', NULL, NULL),
(8, 'PCI-X', '', NULL, NULL);

-- --------------------------------------------------------

--
-- Structure de la table `glpi_ipaddresses`
--

CREATE TABLE `glpi_ipaddresses` (
  `id` int(11) NOT NULL,
  `entities_id` int(11) NOT NULL DEFAULT '0',
  `items_id` int(11) NOT NULL DEFAULT '0',
  `itemtype` varchar(100) NOT NULL,
  `version` tinyint(3) UNSIGNED DEFAULT '0',
  `name` varchar(255) DEFAULT NULL,
  `binary_0` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `binary_1` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `binary_2` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `binary_3` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `is_deleted` tinyint(1) NOT NULL DEFAULT '0',
  `is_dynamic` tinyint(1) NOT NULL DEFAULT '0',
  `mainitems_id` int(11) NOT NULL DEFAULT '0',
  `mainitemtype` varchar(255) DEFAULT NULL
);

-- --------------------------------------------------------

--
-- Structure de la table `glpi_ipaddresses_ipnetworks`
--

CREATE TABLE `glpi_ipaddresses_ipnetworks` (
  `id` int(11) NOT NULL,
  `ipaddresses_id` int(11) NOT NULL DEFAULT '0',
  `ipnetworks_id` int(11) NOT NULL DEFAULT '0'
);

-- --------------------------------------------------------

--
-- Structure de la table `glpi_ipnetworks`
--

CREATE TABLE `glpi_ipnetworks` (
  `id` int(11) NOT NULL,
  `entities_id` int(11) NOT NULL DEFAULT '0',
  `is_recursive` tinyint(1) NOT NULL DEFAULT '0',
  `ipnetworks_id` int(11) NOT NULL DEFAULT '0',
  `completename` text,
  `level` int(11) NOT NULL DEFAULT '0',
  `ancestors_cache` longtext,
  `sons_cache` longtext,
  `addressable` tinyint(1) NOT NULL DEFAULT '0',
  `version` tinyint(3) UNSIGNED DEFAULT '0',
  `name` varchar(255) DEFAULT NULL,
  `address` varchar(40) DEFAULT NULL,
  `address_0` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `address_1` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `address_2` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `address_3` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `netmask` varchar(40) DEFAULT NULL,
  `netmask_0` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `netmask_1` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `netmask_2` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `netmask_3` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `gateway` varchar(40) DEFAULT NULL,
  `gateway_0` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `gateway_1` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `gateway_2` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `gateway_3` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `comment` text,
  `date_mod` datetime DEFAULT NULL,
  `date_creation` datetime DEFAULT NULL
);

-- --------------------------------------------------------

--
-- Structure de la table `glpi_ipnetworks_vlans`
--

CREATE TABLE `glpi_ipnetworks_vlans` (
  `id` int(11) NOT NULL,
  `ipnetworks_id` int(11) NOT NULL DEFAULT '0',
  `vlans_id` int(11) NOT NULL DEFAULT '0'
);

-- --------------------------------------------------------

--
-- Structure de la table `glpi_items_devicebatteries`
--

CREATE TABLE `glpi_items_devicebatteries` (
  `id` int(11) NOT NULL,
  `items_id` int(11) NOT NULL DEFAULT '0',
  `itemtype` varchar(255) DEFAULT NULL,
  `devicebatteries_id` int(11) NOT NULL DEFAULT '0',
  `manufacturing_date` date DEFAULT NULL,
  `is_deleted` tinyint(1) NOT NULL DEFAULT '0',
  `is_dynamic` tinyint(1) NOT NULL DEFAULT '0',
  `entities_id` int(11) NOT NULL DEFAULT '0',
  `is_recursive` tinyint(1) NOT NULL DEFAULT '0',
  `serial` varchar(255) DEFAULT NULL,
  `otherserial` varchar(255) DEFAULT NULL,
  `locations_id` int(11) NOT NULL DEFAULT '0',
  `states_id` int(11) NOT NULL DEFAULT '0'
);

-- --------------------------------------------------------

--
-- Structure de la table `glpi_items_devicecases`
--

CREATE TABLE `glpi_items_devicecases` (
  `id` int(11) NOT NULL,
  `items_id` int(11) NOT NULL DEFAULT '0',
  `itemtype` varchar(255) DEFAULT NULL,
  `devicecases_id` int(11) NOT NULL DEFAULT '0',
  `is_deleted` tinyint(1) NOT NULL DEFAULT '0',
  `is_dynamic` tinyint(1) NOT NULL DEFAULT '0',
  `entities_id` int(11) NOT NULL DEFAULT '0',
  `is_recursive` tinyint(1) NOT NULL DEFAULT '0',
  `serial` varchar(255) DEFAULT NULL,
  `otherserial` varchar(255) DEFAULT NULL,
  `locations_id` int(11) NOT NULL DEFAULT '0',
  `states_id` int(11) NOT NULL DEFAULT '0'
);

-- --------------------------------------------------------

--
-- Structure de la table `glpi_items_devicecontrols`
--

CREATE TABLE `glpi_items_devicecontrols` (
  `id` int(11) NOT NULL,
  `items_id` int(11) NOT NULL DEFAULT '0',
  `itemtype` varchar(255) DEFAULT NULL,
  `devicecontrols_id` int(11) NOT NULL DEFAULT '0',
  `is_deleted` tinyint(1) NOT NULL DEFAULT '0',
  `is_dynamic` tinyint(1) NOT NULL DEFAULT '0',
  `entities_id` int(11) NOT NULL DEFAULT '0',
  `is_recursive` tinyint(1) NOT NULL DEFAULT '0',
  `serial` varchar(255) DEFAULT NULL,
  `busID` varchar(255) DEFAULT NULL,
  `otherserial` varchar(255) DEFAULT NULL,
  `locations_id` int(11) NOT NULL DEFAULT '0',
  `states_id` int(11) NOT NULL DEFAULT '0'
);

-- --------------------------------------------------------

--
-- Structure de la table `glpi_items_devicedrives`
--

CREATE TABLE `glpi_items_devicedrives` (
  `id` int(11) NOT NULL,
  `items_id` int(11) NOT NULL DEFAULT '0',
  `itemtype` varchar(255) DEFAULT NULL,
  `devicedrives_id` int(11) NOT NULL DEFAULT '0',
  `is_deleted` tinyint(1) NOT NULL DEFAULT '0',
  `is_dynamic` tinyint(1) NOT NULL DEFAULT '0',
  `entities_id` int(11) NOT NULL DEFAULT '0',
  `is_recursive` tinyint(1) NOT NULL DEFAULT '0',
  `serial` varchar(255) DEFAULT NULL,
  `busID` varchar(255) DEFAULT NULL,
  `otherserial` varchar(255) DEFAULT NULL,
  `locations_id` int(11) NOT NULL DEFAULT '0',
  `states_id` int(11) NOT NULL DEFAULT '0'
);

-- --------------------------------------------------------

--
-- Structure de la table `glpi_items_devicefirmwares`
--

CREATE TABLE `glpi_items_devicefirmwares` (
  `id` int(11) NOT NULL,
  `items_id` int(11) NOT NULL DEFAULT '0',
  `itemtype` varchar(255) DEFAULT NULL,
  `devicefirmwares_id` int(11) NOT NULL DEFAULT '0',
  `is_deleted` tinyint(1) NOT NULL DEFAULT '0',
  `is_dynamic` tinyint(1) NOT NULL DEFAULT '0',
  `entities_id` int(11) NOT NULL DEFAULT '0',
  `is_recursive` tinyint(1) NOT NULL DEFAULT '0',
  `serial` varchar(255) DEFAULT NULL,
  `otherserial` varchar(255) DEFAULT NULL,
  `locations_id` int(11) NOT NULL DEFAULT '0',
  `states_id` int(11) NOT NULL DEFAULT '0'
);

-- --------------------------------------------------------

--
-- Structure de la table `glpi_items_devicegenerics`
--

CREATE TABLE `glpi_items_devicegenerics` (
  `id` int(11) NOT NULL,
  `items_id` int(11) NOT NULL DEFAULT '0',
  `itemtype` varchar(255) DEFAULT NULL,
  `devicegenerics_id` int(11) NOT NULL DEFAULT '0',
  `is_deleted` tinyint(1) NOT NULL DEFAULT '0',
  `is_dynamic` tinyint(1) NOT NULL DEFAULT '0',
  `entities_id` int(11) NOT NULL DEFAULT '0',
  `is_recursive` tinyint(1) NOT NULL DEFAULT '0',
  `serial` varchar(255) DEFAULT NULL,
  `otherserial` varchar(255) DEFAULT NULL,
  `locations_id` int(11) NOT NULL DEFAULT '0',
  `states_id` int(11) NOT NULL DEFAULT '0'
);

-- --------------------------------------------------------

--
-- Structure de la table `glpi_items_devicegraphiccards`
--

CREATE TABLE `glpi_items_devicegraphiccards` (
  `id` int(11) NOT NULL,
  `items_id` int(11) NOT NULL DEFAULT '0',
  `itemtype` varchar(255) DEFAULT NULL,
  `devicegraphiccards_id` int(11) NOT NULL DEFAULT '0',
  `memory` int(11) NOT NULL DEFAULT '0',
  `is_deleted` tinyint(1) NOT NULL DEFAULT '0',
  `is_dynamic` tinyint(1) NOT NULL DEFAULT '0',
  `entities_id` int(11) NOT NULL DEFAULT '0',
  `is_recursive` tinyint(1) NOT NULL DEFAULT '0',
  `serial` varchar(255) DEFAULT NULL,
  `busID` varchar(255) DEFAULT NULL,
  `otherserial` varchar(255) DEFAULT NULL,
  `locations_id` int(11) NOT NULL DEFAULT '0',
  `states_id` int(11) NOT NULL DEFAULT '0'
);

-- --------------------------------------------------------

--
-- Structure de la table `glpi_items_deviceharddrives`
--

CREATE TABLE `glpi_items_deviceharddrives` (
  `id` int(11) NOT NULL,
  `items_id` int(11) NOT NULL DEFAULT '0',
  `itemtype` varchar(255) DEFAULT NULL,
  `deviceharddrives_id` int(11) NOT NULL DEFAULT '0',
  `capacity` int(11) NOT NULL DEFAULT '0',
  `serial` varchar(255) DEFAULT NULL,
  `is_deleted` tinyint(1) NOT NULL DEFAULT '0',
  `is_dynamic` tinyint(1) NOT NULL DEFAULT '0',
  `entities_id` int(11) NOT NULL DEFAULT '0',
  `is_recursive` tinyint(1) NOT NULL DEFAULT '0',
  `busID` varchar(255) DEFAULT NULL,
  `otherserial` varchar(255) DEFAULT NULL,
  `locations_id` int(11) NOT NULL DEFAULT '0',
  `states_id` int(11) NOT NULL DEFAULT '0'
);

-- --------------------------------------------------------

--
-- Structure de la table `glpi_items_devicememories`
--

CREATE TABLE `glpi_items_devicememories` (
  `id` int(11) NOT NULL,
  `items_id` int(11) NOT NULL DEFAULT '0',
  `itemtype` varchar(255) DEFAULT NULL,
  `devicememories_id` int(11) NOT NULL DEFAULT '0',
  `size` int(11) NOT NULL DEFAULT '0',
  `serial` varchar(255) DEFAULT NULL,
  `is_deleted` tinyint(1) NOT NULL DEFAULT '0',
  `is_dynamic` tinyint(1) NOT NULL DEFAULT '0',
  `entities_id` int(11) NOT NULL DEFAULT '0',
  `is_recursive` tinyint(1) NOT NULL DEFAULT '0',
  `busID` varchar(255) DEFAULT NULL,
  `otherserial` varchar(255) DEFAULT NULL,
  `locations_id` int(11) NOT NULL DEFAULT '0',
  `states_id` int(11) NOT NULL DEFAULT '0'
);

-- --------------------------------------------------------

--
-- Structure de la table `glpi_items_devicemotherboards`
--

CREATE TABLE `glpi_items_devicemotherboards` (
  `id` int(11) NOT NULL,
  `items_id` int(11) NOT NULL DEFAULT '0',
  `itemtype` varchar(255) DEFAULT NULL,
  `devicemotherboards_id` int(11) NOT NULL DEFAULT '0',
  `is_deleted` tinyint(1) NOT NULL DEFAULT '0',
  `is_dynamic` tinyint(1) NOT NULL DEFAULT '0',
  `entities_id` int(11) NOT NULL DEFAULT '0',
  `is_recursive` tinyint(1) NOT NULL DEFAULT '0',
  `serial` varchar(255) DEFAULT NULL,
  `otherserial` varchar(255) DEFAULT NULL,
  `locations_id` int(11) NOT NULL DEFAULT '0',
  `states_id` int(11) NOT NULL DEFAULT '0'
);

-- --------------------------------------------------------

--
-- Structure de la table `glpi_items_devicenetworkcards`
--

CREATE TABLE `glpi_items_devicenetworkcards` (
  `id` int(11) NOT NULL,
  `items_id` int(11) NOT NULL DEFAULT '0',
  `itemtype` varchar(255) DEFAULT NULL,
  `devicenetworkcards_id` int(11) NOT NULL DEFAULT '0',
  `mac` varchar(255) DEFAULT NULL,
  `is_deleted` tinyint(1) NOT NULL DEFAULT '0',
  `is_dynamic` tinyint(1) NOT NULL DEFAULT '0',
  `entities_id` int(11) NOT NULL DEFAULT '0',
  `is_recursive` tinyint(1) NOT NULL DEFAULT '0',
  `serial` varchar(255) DEFAULT NULL,
  `busID` varchar(255) DEFAULT NULL,
  `otherserial` varchar(255) DEFAULT NULL,
  `locations_id` int(11) NOT NULL DEFAULT '0',
  `states_id` int(11) NOT NULL DEFAULT '0'
);

-- --------------------------------------------------------

--
-- Structure de la table `glpi_items_devicepcis`
--

CREATE TABLE `glpi_items_devicepcis` (
  `id` int(11) NOT NULL,
  `items_id` int(11) NOT NULL DEFAULT '0',
  `itemtype` varchar(255) DEFAULT NULL,
  `devicepcis_id` int(11) NOT NULL DEFAULT '0',
  `is_deleted` tinyint(1) NOT NULL DEFAULT '0',
  `is_dynamic` tinyint(1) NOT NULL DEFAULT '0',
  `entities_id` int(11) NOT NULL DEFAULT '0',
  `is_recursive` tinyint(1) NOT NULL DEFAULT '0',
  `serial` varchar(255) DEFAULT NULL,
  `busID` varchar(255) DEFAULT NULL,
  `otherserial` varchar(255) DEFAULT NULL,
  `locations_id` int(11) NOT NULL DEFAULT '0',
  `states_id` int(11) NOT NULL DEFAULT '0'
);

-- --------------------------------------------------------

--
-- Structure de la table `glpi_items_devicepowersupplies`
--

CREATE TABLE `glpi_items_devicepowersupplies` (
  `id` int(11) NOT NULL,
  `items_id` int(11) NOT NULL DEFAULT '0',
  `itemtype` varchar(255) DEFAULT NULL,
  `devicepowersupplies_id` int(11) NOT NULL DEFAULT '0',
  `is_deleted` tinyint(1) NOT NULL DEFAULT '0',
  `is_dynamic` tinyint(1) NOT NULL DEFAULT '0',
  `entities_id` int(11) NOT NULL DEFAULT '0',
  `is_recursive` tinyint(1) NOT NULL DEFAULT '0',
  `serial` varchar(255) DEFAULT NULL,
  `otherserial` varchar(255) DEFAULT NULL,
  `locations_id` int(11) NOT NULL DEFAULT '0',
  `states_id` int(11) NOT NULL DEFAULT '0'
);

-- --------------------------------------------------------

--
-- Structure de la table `glpi_items_deviceprocessors`
--

CREATE TABLE `glpi_items_deviceprocessors` (
  `id` int(11) NOT NULL,
  `items_id` int(11) NOT NULL DEFAULT '0',
  `itemtype` varchar(255) DEFAULT NULL,
  `deviceprocessors_id` int(11) NOT NULL DEFAULT '0',
  `frequency` int(11) NOT NULL DEFAULT '0',
  `serial` varchar(255) DEFAULT NULL,
  `is_deleted` tinyint(1) NOT NULL DEFAULT '0',
  `is_dynamic` tinyint(1) NOT NULL DEFAULT '0',
  `nbcores` int(11) DEFAULT NULL,
  `nbthreads` int(11) DEFAULT NULL,
  `entities_id` int(11) NOT NULL DEFAULT '0',
  `is_recursive` tinyint(1) NOT NULL DEFAULT '0',
  `busID` varchar(255) DEFAULT NULL,
  `otherserial` varchar(255) DEFAULT NULL,
  `locations_id` int(11) NOT NULL DEFAULT '0',
  `states_id` int(11) NOT NULL DEFAULT '0'
);

-- --------------------------------------------------------

--
-- Structure de la table `glpi_items_devicesensors`
--

CREATE TABLE `glpi_items_devicesensors` (
  `id` int(11) NOT NULL,
  `items_id` int(11) NOT NULL DEFAULT '0',
  `itemtype` varchar(255) DEFAULT NULL,
  `devicesensors_id` int(11) NOT NULL DEFAULT '0',
  `is_deleted` tinyint(1) NOT NULL DEFAULT '0',
  `is_dynamic` tinyint(1) NOT NULL DEFAULT '0',
  `entities_id` int(11) NOT NULL DEFAULT '0',
  `is_recursive` tinyint(1) NOT NULL DEFAULT '0',
  `serial` varchar(255) DEFAULT NULL,
  `otherserial` varchar(255) DEFAULT NULL,
  `locations_id` int(11) NOT NULL DEFAULT '0',
  `states_id` int(11) NOT NULL DEFAULT '0'
);

-- --------------------------------------------------------

--
-- Structure de la table `glpi_items_devicesimcards`
--

CREATE TABLE `glpi_items_devicesimcards` (
  `id` int(11) NOT NULL,
  `items_id` int(11) NOT NULL DEFAULT '0' COMMENT 'RELATION to various table, according to itemtype (id)',
  `itemtype` varchar(100) NOT NULL,
  `devicesimcards_id` int(11) NOT NULL DEFAULT '0',
  `is_deleted` tinyint(1) NOT NULL DEFAULT '0',
  `is_dynamic` tinyint(1) NOT NULL DEFAULT '0',
  `entities_id` int(11) NOT NULL DEFAULT '0',
  `is_recursive` tinyint(1) NOT NULL DEFAULT '0',
  `serial` varchar(255) DEFAULT NULL,
  `otherserial` varchar(255) DEFAULT NULL,
  `states_id` int(11) NOT NULL DEFAULT '0',
  `locations_id` int(11) NOT NULL DEFAULT '0',
  `lines_id` int(11) NOT NULL DEFAULT '0',
  `pin` varchar(255) NOT NULL DEFAULT '',
  `pin2` varchar(255) NOT NULL DEFAULT '',
  `puk` varchar(255) NOT NULL DEFAULT '',
  `puk2` varchar(255) NOT NULL DEFAULT '',
  `msin` varchar(255) NOT NULL DEFAULT ''
);

-- --------------------------------------------------------

--
-- Structure de la table `glpi_items_devicesoundcards`
--

CREATE TABLE `glpi_items_devicesoundcards` (
  `id` int(11) NOT NULL,
  `items_id` int(11) NOT NULL DEFAULT '0',
  `itemtype` varchar(255) DEFAULT NULL,
  `devicesoundcards_id` int(11) NOT NULL DEFAULT '0',
  `is_deleted` tinyint(1) NOT NULL DEFAULT '0',
  `is_dynamic` tinyint(1) NOT NULL DEFAULT '0',
  `entities_id` int(11) NOT NULL DEFAULT '0',
  `is_recursive` tinyint(1) NOT NULL DEFAULT '0',
  `serial` varchar(255) DEFAULT NULL,
  `busID` varchar(255) DEFAULT NULL,
  `otherserial` varchar(255) DEFAULT NULL,
  `locations_id` int(11) NOT NULL DEFAULT '0',
  `states_id` int(11) NOT NULL DEFAULT '0'
);

-- --------------------------------------------------------

--
-- Structure de la table `glpi_items_operatingsystems`
--

CREATE TABLE `glpi_items_operatingsystems` (
  `id` int(11) NOT NULL,
  `items_id` int(11) NOT NULL DEFAULT '0',
  `itemtype` varchar(255) DEFAULT NULL,
  `operatingsystems_id` int(11) NOT NULL DEFAULT '0',
  `operatingsystemversions_id` int(11) NOT NULL DEFAULT '0',
  `operatingsystemservicepacks_id` int(11) NOT NULL DEFAULT '0',
  `operatingsystemarchitectures_id` int(11) NOT NULL DEFAULT '0',
  `operatingsystemkernelversions_id` int(11) NOT NULL DEFAULT '0',
  `license_number` varchar(255) DEFAULT NULL,
  `license_id` varchar(255) DEFAULT NULL,
  `operatingsystemeditions_id` int(11) NOT NULL DEFAULT '0',
  `date_mod` datetime DEFAULT NULL,
  `date_creation` datetime DEFAULT NULL,
  `is_deleted` tinyint(1) NOT NULL DEFAULT '0',
  `is_dynamic` tinyint(1) NOT NULL DEFAULT '0',
  `entities_id` int(11) NOT NULL DEFAULT '0',
  `is_recursive` tinyint(1) NOT NULL DEFAULT '0'
);

-- --------------------------------------------------------

--
-- Structure de la table `glpi_items_problems`
--

CREATE TABLE `glpi_items_problems` (
  `id` int(11) NOT NULL,
  `problems_id` int(11) NOT NULL DEFAULT '0',
  `itemtype` varchar(100) DEFAULT NULL,
  `items_id` int(11) NOT NULL DEFAULT '0'
);

-- --------------------------------------------------------

--
-- Structure de la table `glpi_items_projects`
--

CREATE TABLE `glpi_items_projects` (
  `id` int(11) NOT NULL,
  `projects_id` int(11) NOT NULL DEFAULT '0',
  `itemtype` varchar(100) DEFAULT NULL,
  `items_id` int(11) NOT NULL DEFAULT '0'
);

-- --------------------------------------------------------

--
-- Structure de la table `glpi_items_tickets`
--

CREATE TABLE `glpi_items_tickets` (
  `id` int(11) NOT NULL,
  `itemtype` varchar(255) DEFAULT NULL,
  `items_id` int(11) NOT NULL DEFAULT '0',
  `tickets_id` int(11) NOT NULL DEFAULT '0'
);

-- --------------------------------------------------------

--
-- Structure de la table `glpi_itilcategories`
--

CREATE TABLE `glpi_itilcategories` (
  `id` int(11) NOT NULL,
  `entities_id` int(11) NOT NULL DEFAULT '0',
  `is_recursive` tinyint(1) NOT NULL DEFAULT '0',
  `itilcategories_id` int(11) NOT NULL DEFAULT '0',
  `name` varchar(255) DEFAULT NULL,
  `completename` text,
  `comment` text,
  `level` int(11) NOT NULL DEFAULT '0',
  `knowbaseitemcategories_id` int(11) NOT NULL DEFAULT '0',
  `users_id` int(11) NOT NULL DEFAULT '0',
  `groups_id` int(11) NOT NULL DEFAULT '0',
  `ancestors_cache` longtext,
  `sons_cache` longtext,
  `is_helpdeskvisible` tinyint(1) NOT NULL DEFAULT '1',
  `tickettemplates_id_incident` int(11) NOT NULL DEFAULT '0',
  `tickettemplates_id_demand` int(11) NOT NULL DEFAULT '0',
  `is_incident` int(11) NOT NULL DEFAULT '1',
  `is_request` int(11) NOT NULL DEFAULT '1',
  `is_problem` int(11) NOT NULL DEFAULT '1',
  `is_change` tinyint(1) NOT NULL DEFAULT '1',
  `date_mod` datetime DEFAULT NULL,
  `date_creation` datetime DEFAULT NULL
);

-- --------------------------------------------------------

--
-- Structure de la table `glpi_knowbaseitemcategories`
--

CREATE TABLE `glpi_knowbaseitemcategories` (
  `id` int(11) NOT NULL,
  `entities_id` int(11) NOT NULL DEFAULT '0',
  `is_recursive` tinyint(1) NOT NULL DEFAULT '0',
  `knowbaseitemcategories_id` int(11) NOT NULL DEFAULT '0',
  `name` varchar(255) DEFAULT NULL,
  `completename` text,
  `comment` text,
  `level` int(11) NOT NULL DEFAULT '0',
  `sons_cache` longtext,
  `ancestors_cache` longtext,
  `date_mod` datetime DEFAULT NULL,
  `date_creation` datetime DEFAULT NULL
);

-- --------------------------------------------------------

--
-- Structure de la table `glpi_knowbaseitems`
--

CREATE TABLE `glpi_knowbaseitems` (
  `id` int(11) NOT NULL,
  `knowbaseitemcategories_id` int(11) NOT NULL DEFAULT '0',
  `name` text,
  `answer` longtext,
  `is_faq` tinyint(1) NOT NULL DEFAULT '0',
  `users_id` int(11) NOT NULL DEFAULT '0',
  `view` int(11) NOT NULL DEFAULT '0',
  `date` datetime DEFAULT NULL,
  `date_mod` datetime DEFAULT NULL,
  `begin_date` datetime DEFAULT NULL,
  `end_date` datetime DEFAULT NULL
);

-- --------------------------------------------------------

--
-- Structure de la table `glpi_knowbaseitems_comments`
--

CREATE TABLE `glpi_knowbaseitems_comments` (
  `id` int(11) NOT NULL,
  `knowbaseitems_id` int(11) NOT NULL,
  `users_id` int(11) NOT NULL DEFAULT '0',
  `language` varchar(5) DEFAULT NULL,
  `comment` text NOT NULL,
  `parent_comment_id` int(11) DEFAULT NULL,
  `date_creation` datetime DEFAULT NULL,
  `date_mod` datetime DEFAULT NULL
);

-- --------------------------------------------------------

--
-- Structure de la table `glpi_knowbaseitems_items`
--

CREATE TABLE `glpi_knowbaseitems_items` (
  `id` int(11) NOT NULL,
  `knowbaseitems_id` int(11) NOT NULL,
  `itemtype` varchar(100) NOT NULL,
  `items_id` int(11) NOT NULL DEFAULT '0',
  `date_creation` datetime DEFAULT NULL,
  `date_mod` datetime DEFAULT NULL
);

-- --------------------------------------------------------

--
-- Structure de la table `glpi_knowbaseitems_profiles`
--

CREATE TABLE `glpi_knowbaseitems_profiles` (
  `id` int(11) NOT NULL,
  `knowbaseitems_id` int(11) NOT NULL DEFAULT '0',
  `profiles_id` int(11) NOT NULL DEFAULT '0',
  `entities_id` int(11) NOT NULL DEFAULT '-1',
  `is_recursive` tinyint(1) NOT NULL DEFAULT '0'
);

-- --------------------------------------------------------

--
-- Structure de la table `glpi_knowbaseitems_revisions`
--

CREATE TABLE `glpi_knowbaseitems_revisions` (
  `id` int(11) NOT NULL,
  `knowbaseitems_id` int(11) NOT NULL,
  `revision` int(11) NOT NULL,
  `name` text,
  `answer` longtext,
  `language` varchar(5) DEFAULT NULL,
  `users_id` int(11) NOT NULL DEFAULT '0',
  `date_creation` datetime DEFAULT NULL
);

-- --------------------------------------------------------

--
-- Structure de la table `glpi_knowbaseitems_users`
--

CREATE TABLE `glpi_knowbaseitems_users` (
  `id` int(11) NOT NULL,
  `knowbaseitems_id` int(11) NOT NULL DEFAULT '0',
  `users_id` int(11) NOT NULL DEFAULT '0'
);

-- --------------------------------------------------------

--
-- Structure de la table `glpi_knowbaseitemtranslations`
--

CREATE TABLE `glpi_knowbaseitemtranslations` (
  `id` int(11) NOT NULL,
  `knowbaseitems_id` int(11) NOT NULL DEFAULT '0',
  `language` varchar(5) DEFAULT NULL,
  `name` text,
  `answer` longtext,
  `users_id` int(11) NOT NULL DEFAULT '0',
  `date_mod` datetime DEFAULT NULL,
  `date_creation` datetime DEFAULT NULL
);

-- --------------------------------------------------------

--
-- Structure de la table `glpi_lineoperators`
--

CREATE TABLE `glpi_lineoperators` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL DEFAULT '',
  `comment` text,
  `mcc` int(11) DEFAULT NULL,
  `mnc` int(11) DEFAULT NULL,
  `entities_id` int(11) NOT NULL DEFAULT '0',
  `is_recursive` tinyint(1) NOT NULL DEFAULT '0',
  `date_mod` datetime DEFAULT NULL,
  `date_creation` datetime DEFAULT NULL
);

-- --------------------------------------------------------

--
-- Structure de la table `glpi_lines`
--

CREATE TABLE `glpi_lines` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL DEFAULT '',
  `entities_id` int(11) NOT NULL DEFAULT '0',
  `is_recursive` tinyint(1) NOT NULL DEFAULT '0',
  `is_deleted` tinyint(1) NOT NULL DEFAULT '0',
  `caller_num` varchar(255) NOT NULL DEFAULT '',
  `caller_name` varchar(255) NOT NULL DEFAULT '',
  `users_id` int(11) NOT NULL DEFAULT '0',
  `groups_id` int(11) NOT NULL DEFAULT '0',
  `lineoperators_id` int(11) NOT NULL DEFAULT '0',
  `locations_id` int(11) NOT NULL DEFAULT '0',
  `states_id` int(11) NOT NULL DEFAULT '0',
  `linetypes_id` int(11) NOT NULL DEFAULT '0',
  `date_creation` datetime DEFAULT NULL,
  `date_mod` datetime DEFAULT NULL,
  `comment` text
);

-- --------------------------------------------------------

--
-- Structure de la table `glpi_linetypes`
--

CREATE TABLE `glpi_linetypes` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `comment` text,
  `date_mod` datetime DEFAULT NULL,
  `date_creation` datetime DEFAULT NULL
);

-- --------------------------------------------------------

--
-- Structure de la table `glpi_links`
--

CREATE TABLE `glpi_links` (
  `id` int(11) NOT NULL,
  `entities_id` int(11) NOT NULL DEFAULT '0',
  `is_recursive` tinyint(1) NOT NULL DEFAULT '1',
  `name` varchar(255) DEFAULT NULL,
  `link` varchar(255) DEFAULT NULL,
  `data` text,
  `open_window` tinyint(1) NOT NULL DEFAULT '1',
  `date_mod` datetime DEFAULT NULL,
  `date_creation` datetime DEFAULT NULL
);

-- --------------------------------------------------------

--
-- Structure de la table `glpi_links_itemtypes`
--

CREATE TABLE `glpi_links_itemtypes` (
  `id` int(11) NOT NULL,
  `links_id` int(11) NOT NULL DEFAULT '0',
  `itemtype` varchar(100) NOT NULL
);

-- --------------------------------------------------------

--
-- Structure de la table `glpi_locations`
--

CREATE TABLE `glpi_locations` (
  `id` int(11) NOT NULL,
  `entities_id` int(11) NOT NULL DEFAULT '0',
  `is_recursive` tinyint(1) NOT NULL DEFAULT '0',
  `name` varchar(255) DEFAULT NULL,
  `locations_id` int(11) NOT NULL DEFAULT '0',
  `completename` text,
  `comment` text,
  `level` int(11) NOT NULL DEFAULT '0',
  `ancestors_cache` longtext,
  `sons_cache` longtext,
  `building` varchar(255) DEFAULT NULL,
  `room` varchar(255) DEFAULT NULL,
  `latitude` varchar(255) DEFAULT NULL,
  `longitude` varchar(255) DEFAULT NULL,
  `altitude` varchar(255) DEFAULT NULL,
  `date_mod` datetime DEFAULT NULL,
  `date_creation` datetime DEFAULT NULL
);

-- --------------------------------------------------------

--
-- Structure de la table `glpi_logs`
--

CREATE TABLE `glpi_logs` (
  `id` int(11) NOT NULL,
  `itemtype` varchar(100) NOT NULL DEFAULT '',
  `items_id` int(11) NOT NULL DEFAULT '0',
  `itemtype_link` varchar(100) NOT NULL DEFAULT '',
  `linked_action` int(11) NOT NULL DEFAULT '0' COMMENT 'see define.php HISTORY_* constant',
  `user_name` varchar(255) DEFAULT NULL,
  `date_mod` datetime DEFAULT NULL,
  `id_search_option` int(11) NOT NULL DEFAULT '0' COMMENT 'see search.constant.php for value',
  `old_value` varchar(255) DEFAULT NULL,
  `new_value` varchar(255) DEFAULT NULL
);

--
-- Déchargement des données de la table `glpi_logs`
--

INSERT INTO `glpi_logs` (`id`, `itemtype`, `items_id`, `itemtype_link`, `linked_action`, `user_name`, `date_mod`, `id_search_option`, `old_value`, `new_value`) VALUES
(1, 'User', 6, 'UserEmail', 17, 'glpi (2)', '2018-04-11 15:14:01', 0, '', 'contact@autheman-victor.fr (1)'),
(2, 'UserEmail', 1, '0', 20, 'glpi (2)', '2018-04-11 15:14:01', 0, '', ''),
(3, 'User', 6, 'Profile', 17, 'glpi (2)', '2018-04-11 15:14:01', 0, '', 'Self-Service (1)'),
(4, 'User', 6, '0', 20, 'glpi (2)', '2018-04-11 15:14:01', 0, '', ''),
(5, 'User', 6, '', 0, 'glpi (2)', '2018-04-11 15:16:03', 20, '&nbsp; (0)', 'Self-Service (1)'),
(6, 'User', 6, '0', 13, 'glpi (2)', '2018-04-11 15:17:41', 0, '', ''),
(7, 'User', 7, 'UserEmail', 17, 'glpi (2)', '2018-04-11 15:22:00', 0, '', 'contact@autheman-victor.fr (2)'),
(8, 'UserEmail', 2, '0', 20, 'glpi (2)', '2018-04-11 15:22:00', 0, '', ''),
(9, 'User', 7, 'Profile', 17, 'glpi (2)', '2018-04-11 15:22:00', 0, '', 'Admin (3)'),
(10, 'User', 7, '0', 20, 'glpi (2)', '2018-04-11 15:22:00', 0, '', ''),
(11, 'TicketTemplate', 1, 'TicketTemplatePredefinedField', 17, 'glpi (2)', '2018-04-11 17:13:49', 0, '', 'Description (1)'),
(12, 'TicketTemplatePredefinedField', 1, '0', 20, 'glpi (2)', '2018-04-11 17:13:49', 0, '', ''),
(13, 'TicketTemplate', 1, 'TicketTemplatePredefinedField', 17, 'glpi (2)', '2018-04-11 17:14:26', 0, '', 'Titre (2)'),
(14, 'TicketTemplatePredefinedField', 2, '0', 20, 'glpi (2)', '2018-04-11 17:14:26', 0, '', '');

-- --------------------------------------------------------

--
-- Structure de la table `glpi_mailcollectors`
--

CREATE TABLE `glpi_mailcollectors` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `host` varchar(255) DEFAULT NULL,
  `login` varchar(255) DEFAULT NULL,
  `filesize_max` int(11) NOT NULL DEFAULT '2097152',
  `is_active` tinyint(1) NOT NULL DEFAULT '1',
  `date_mod` datetime DEFAULT NULL,
  `comment` text,
  `passwd` varchar(255) DEFAULT NULL,
  `accepted` varchar(255) DEFAULT NULL,
  `refused` varchar(255) DEFAULT NULL,
  `use_kerberos` tinyint(1) NOT NULL DEFAULT '0',
  `errors` int(11) NOT NULL DEFAULT '0',
  `use_mail_date` tinyint(1) NOT NULL DEFAULT '0',
  `date_creation` datetime DEFAULT NULL
);

-- --------------------------------------------------------

--
-- Structure de la table `glpi_manufacturers`
--

CREATE TABLE `glpi_manufacturers` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `comment` text,
  `date_mod` datetime DEFAULT NULL,
  `date_creation` datetime DEFAULT NULL
);

-- --------------------------------------------------------

--
-- Structure de la table `glpi_monitormodels`
--

CREATE TABLE `glpi_monitormodels` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `comment` text,
  `product_number` varchar(255) DEFAULT NULL,
  `date_mod` datetime DEFAULT NULL,
  `date_creation` datetime DEFAULT NULL
);

-- --------------------------------------------------------

--
-- Structure de la table `glpi_monitors`
--

CREATE TABLE `glpi_monitors` (
  `id` int(11) NOT NULL,
  `entities_id` int(11) NOT NULL DEFAULT '0',
  `name` varchar(255) DEFAULT NULL,
  `date_mod` datetime DEFAULT NULL,
  `contact` varchar(255) DEFAULT NULL,
  `contact_num` varchar(255) DEFAULT NULL,
  `users_id_tech` int(11) NOT NULL DEFAULT '0',
  `groups_id_tech` int(11) NOT NULL DEFAULT '0',
  `comment` text,
  `serial` varchar(255) DEFAULT NULL,
  `otherserial` varchar(255) DEFAULT NULL,
  `size` decimal(5,2) NOT NULL DEFAULT '0.00',
  `have_micro` tinyint(1) NOT NULL DEFAULT '0',
  `have_speaker` tinyint(1) NOT NULL DEFAULT '0',
  `have_subd` tinyint(1) NOT NULL DEFAULT '0',
  `have_bnc` tinyint(1) NOT NULL DEFAULT '0',
  `have_dvi` tinyint(1) NOT NULL DEFAULT '0',
  `have_pivot` tinyint(1) NOT NULL DEFAULT '0',
  `have_hdmi` tinyint(1) NOT NULL DEFAULT '0',
  `have_displayport` tinyint(1) NOT NULL DEFAULT '0',
  `locations_id` int(11) NOT NULL DEFAULT '0',
  `monitortypes_id` int(11) NOT NULL DEFAULT '0',
  `monitormodels_id` int(11) NOT NULL DEFAULT '0',
  `manufacturers_id` int(11) NOT NULL DEFAULT '0',
  `is_global` tinyint(1) NOT NULL DEFAULT '0',
  `is_deleted` tinyint(1) NOT NULL DEFAULT '0',
  `is_template` tinyint(1) NOT NULL DEFAULT '0',
  `template_name` varchar(255) DEFAULT NULL,
  `users_id` int(11) NOT NULL DEFAULT '0',
  `groups_id` int(11) NOT NULL DEFAULT '0',
  `states_id` int(11) NOT NULL DEFAULT '0',
  `ticket_tco` decimal(20,4) DEFAULT '0.0000',
  `is_dynamic` tinyint(1) NOT NULL DEFAULT '0',
  `date_creation` datetime DEFAULT NULL,
  `is_recursive` tinyint(1) NOT NULL DEFAULT '0'
);

-- --------------------------------------------------------

--
-- Structure de la table `glpi_monitortypes`
--

CREATE TABLE `glpi_monitortypes` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `comment` text,
  `date_mod` datetime DEFAULT NULL,
  `date_creation` datetime DEFAULT NULL
);

-- --------------------------------------------------------

--
-- Structure de la table `glpi_netpoints`
--

CREATE TABLE `glpi_netpoints` (
  `id` int(11) NOT NULL,
  `entities_id` int(11) NOT NULL DEFAULT '0',
  `locations_id` int(11) NOT NULL DEFAULT '0',
  `name` varchar(255) DEFAULT NULL,
  `comment` text,
  `date_mod` datetime DEFAULT NULL,
  `date_creation` datetime DEFAULT NULL
);

-- --------------------------------------------------------

--
-- Structure de la table `glpi_networkaliases`
--

CREATE TABLE `glpi_networkaliases` (
  `id` int(11) NOT NULL,
  `entities_id` int(11) NOT NULL DEFAULT '0',
  `networknames_id` int(11) NOT NULL DEFAULT '0',
  `name` varchar(255) DEFAULT NULL,
  `fqdns_id` int(11) NOT NULL DEFAULT '0',
  `comment` text
);

-- --------------------------------------------------------

--
-- Structure de la table `glpi_networkequipmentmodels`
--

CREATE TABLE `glpi_networkequipmentmodels` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `comment` text,
  `product_number` varchar(255) DEFAULT NULL,
  `date_mod` datetime DEFAULT NULL,
  `date_creation` datetime DEFAULT NULL
);

-- --------------------------------------------------------

--
-- Structure de la table `glpi_networkequipments`
--

CREATE TABLE `glpi_networkequipments` (
  `id` int(11) NOT NULL,
  `entities_id` int(11) NOT NULL DEFAULT '0',
  `is_recursive` tinyint(1) NOT NULL DEFAULT '0',
  `name` varchar(255) DEFAULT NULL,
  `ram` varchar(255) DEFAULT NULL,
  `serial` varchar(255) DEFAULT NULL,
  `otherserial` varchar(255) DEFAULT NULL,
  `contact` varchar(255) DEFAULT NULL,
  `contact_num` varchar(255) DEFAULT NULL,
  `users_id_tech` int(11) NOT NULL DEFAULT '0',
  `groups_id_tech` int(11) NOT NULL DEFAULT '0',
  `date_mod` datetime DEFAULT NULL,
  `comment` text,
  `locations_id` int(11) NOT NULL DEFAULT '0',
  `domains_id` int(11) NOT NULL DEFAULT '0',
  `networks_id` int(11) NOT NULL DEFAULT '0',
  `networkequipmenttypes_id` int(11) NOT NULL DEFAULT '0',
  `networkequipmentmodels_id` int(11) NOT NULL DEFAULT '0',
  `manufacturers_id` int(11) NOT NULL DEFAULT '0',
  `is_deleted` tinyint(1) NOT NULL DEFAULT '0',
  `is_template` tinyint(1) NOT NULL DEFAULT '0',
  `template_name` varchar(255) DEFAULT NULL,
  `users_id` int(11) NOT NULL DEFAULT '0',
  `groups_id` int(11) NOT NULL DEFAULT '0',
  `states_id` int(11) NOT NULL DEFAULT '0',
  `ticket_tco` decimal(20,4) DEFAULT '0.0000',
  `is_dynamic` tinyint(1) NOT NULL DEFAULT '0',
  `date_creation` datetime DEFAULT NULL
);

-- --------------------------------------------------------

--
-- Structure de la table `glpi_networkequipmenttypes`
--

CREATE TABLE `glpi_networkequipmenttypes` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `comment` text,
  `date_mod` datetime DEFAULT NULL,
  `date_creation` datetime DEFAULT NULL
);

-- --------------------------------------------------------

--
-- Structure de la table `glpi_networkinterfaces`
--

CREATE TABLE `glpi_networkinterfaces` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `comment` text
);

-- --------------------------------------------------------

--
-- Structure de la table `glpi_networknames`
--

CREATE TABLE `glpi_networknames` (
  `id` int(11) NOT NULL,
  `entities_id` int(11) NOT NULL DEFAULT '0',
  `items_id` int(11) NOT NULL DEFAULT '0',
  `itemtype` varchar(100) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `comment` text,
  `fqdns_id` int(11) NOT NULL DEFAULT '0',
  `is_deleted` tinyint(1) NOT NULL DEFAULT '0',
  `is_dynamic` tinyint(1) NOT NULL DEFAULT '0',
  `date_mod` datetime DEFAULT NULL,
  `date_creation` datetime DEFAULT NULL
);

-- --------------------------------------------------------

--
-- Structure de la table `glpi_networkportaggregates`
--

CREATE TABLE `glpi_networkportaggregates` (
  `id` int(11) NOT NULL,
  `networkports_id` int(11) NOT NULL DEFAULT '0',
  `networkports_id_list` text COMMENT 'array of associated networkports_id',
  `date_mod` datetime DEFAULT NULL,
  `date_creation` datetime DEFAULT NULL
);

-- --------------------------------------------------------

--
-- Structure de la table `glpi_networkportaliases`
--

CREATE TABLE `glpi_networkportaliases` (
  `id` int(11) NOT NULL,
  `networkports_id` int(11) NOT NULL DEFAULT '0',
  `networkports_id_alias` int(11) NOT NULL DEFAULT '0',
  `date_mod` datetime DEFAULT NULL,
  `date_creation` datetime DEFAULT NULL
);

-- --------------------------------------------------------

--
-- Structure de la table `glpi_networkportdialups`
--

CREATE TABLE `glpi_networkportdialups` (
  `id` int(11) NOT NULL,
  `networkports_id` int(11) NOT NULL DEFAULT '0',
  `date_mod` datetime DEFAULT NULL,
  `date_creation` datetime DEFAULT NULL
);

-- --------------------------------------------------------

--
-- Structure de la table `glpi_networkportethernets`
--

CREATE TABLE `glpi_networkportethernets` (
  `id` int(11) NOT NULL,
  `networkports_id` int(11) NOT NULL DEFAULT '0',
  `items_devicenetworkcards_id` int(11) NOT NULL DEFAULT '0',
  `netpoints_id` int(11) NOT NULL DEFAULT '0',
  `type` varchar(10) DEFAULT '' COMMENT 'T, LX, SX',
  `speed` int(11) NOT NULL DEFAULT '10' COMMENT 'Mbit/s: 10, 100, 1000, 10000',
  `date_mod` datetime DEFAULT NULL,
  `date_creation` datetime DEFAULT NULL
);

-- --------------------------------------------------------

--
-- Structure de la table `glpi_networkportfiberchannels`
--

CREATE TABLE `glpi_networkportfiberchannels` (
  `id` int(11) NOT NULL,
  `networkports_id` int(11) NOT NULL DEFAULT '0',
  `items_devicenetworkcards_id` int(11) NOT NULL DEFAULT '0',
  `netpoints_id` int(11) NOT NULL DEFAULT '0',
  `wwn` varchar(16) DEFAULT '',
  `speed` int(11) NOT NULL DEFAULT '10' COMMENT 'Mbit/s: 10, 100, 1000, 10000',
  `date_mod` datetime DEFAULT NULL,
  `date_creation` datetime DEFAULT NULL
);

-- --------------------------------------------------------

--
-- Structure de la table `glpi_networkportlocals`
--

CREATE TABLE `glpi_networkportlocals` (
  `id` int(11) NOT NULL,
  `networkports_id` int(11) NOT NULL DEFAULT '0',
  `date_mod` datetime DEFAULT NULL,
  `date_creation` datetime DEFAULT NULL
);

-- --------------------------------------------------------

--
-- Structure de la table `glpi_networkports`
--

CREATE TABLE `glpi_networkports` (
  `id` int(11) NOT NULL,
  `items_id` int(11) NOT NULL DEFAULT '0',
  `itemtype` varchar(100) NOT NULL,
  `entities_id` int(11) NOT NULL DEFAULT '0',
  `is_recursive` tinyint(1) NOT NULL DEFAULT '0',
  `logical_number` int(11) NOT NULL DEFAULT '0',
  `name` varchar(255) DEFAULT NULL,
  `instantiation_type` varchar(255) DEFAULT NULL,
  `mac` varchar(255) DEFAULT NULL,
  `comment` text,
  `is_deleted` tinyint(1) NOT NULL DEFAULT '0',
  `is_dynamic` tinyint(1) NOT NULL DEFAULT '0',
  `date_mod` datetime DEFAULT NULL,
  `date_creation` datetime DEFAULT NULL
);

-- --------------------------------------------------------

--
-- Structure de la table `glpi_networkports_networkports`
--

CREATE TABLE `glpi_networkports_networkports` (
  `id` int(11) NOT NULL,
  `networkports_id_1` int(11) NOT NULL DEFAULT '0',
  `networkports_id_2` int(11) NOT NULL DEFAULT '0'
);

-- --------------------------------------------------------

--
-- Structure de la table `glpi_networkports_vlans`
--

CREATE TABLE `glpi_networkports_vlans` (
  `id` int(11) NOT NULL,
  `networkports_id` int(11) NOT NULL DEFAULT '0',
  `vlans_id` int(11) NOT NULL DEFAULT '0',
  `tagged` tinyint(1) NOT NULL DEFAULT '0'
);

-- --------------------------------------------------------

--
-- Structure de la table `glpi_networkportwifis`
--

CREATE TABLE `glpi_networkportwifis` (
  `id` int(11) NOT NULL,
  `networkports_id` int(11) NOT NULL DEFAULT '0',
  `items_devicenetworkcards_id` int(11) NOT NULL DEFAULT '0',
  `wifinetworks_id` int(11) NOT NULL DEFAULT '0',
  `networkportwifis_id` int(11) NOT NULL DEFAULT '0' COMMENT 'only useful in case of Managed node',
  `version` varchar(20) DEFAULT NULL COMMENT 'a, a/b, a/b/g, a/b/g/n, a/b/g/n/y',
  `mode` varchar(20) DEFAULT NULL COMMENT 'ad-hoc, managed, master, repeater, secondary, monitor, auto',
  `date_mod` datetime DEFAULT NULL,
  `date_creation` datetime DEFAULT NULL
);

-- --------------------------------------------------------

--
-- Structure de la table `glpi_networks`
--

CREATE TABLE `glpi_networks` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `comment` text,
  `date_mod` datetime DEFAULT NULL,
  `date_creation` datetime DEFAULT NULL
);

-- --------------------------------------------------------

--
-- Structure de la table `glpi_notepads`
--

CREATE TABLE `glpi_notepads` (
  `id` int(11) NOT NULL,
  `itemtype` varchar(100) DEFAULT NULL,
  `items_id` int(11) NOT NULL DEFAULT '0',
  `date` datetime DEFAULT NULL,
  `date_mod` datetime DEFAULT NULL,
  `users_id` int(11) NOT NULL DEFAULT '0',
  `users_id_lastupdater` int(11) NOT NULL DEFAULT '0',
  `content` longtext
);

-- --------------------------------------------------------

--
-- Structure de la table `glpi_notifications`
--

CREATE TABLE `glpi_notifications` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `entities_id` int(11) NOT NULL DEFAULT '0',
  `itemtype` varchar(100) NOT NULL,
  `event` varchar(255) NOT NULL,
  `comment` text,
  `is_recursive` tinyint(1) NOT NULL DEFAULT '0',
  `is_active` tinyint(1) NOT NULL DEFAULT '0',
  `date_mod` datetime DEFAULT NULL,
  `date_creation` datetime DEFAULT NULL
);

--
-- Déchargement des données de la table `glpi_notifications`
--

INSERT INTO `glpi_notifications` (`id`, `name`, `entities_id`, `itemtype`, `event`, `comment`, `is_recursive`, `is_active`, `date_mod`, `date_creation`) VALUES
(1, 'Alert Tickets not closed', 0, 'Ticket', 'alertnotclosed', '', 1, 1, '2010-02-16 16:41:39', NULL),
(2, 'New Ticket', 0, 'Ticket', 'new', '', 1, 1, '2010-02-16 16:41:39', NULL),
(3, 'Update Ticket', 0, 'Ticket', 'update', '', 1, 0, '2010-02-16 16:41:39', NULL),
(4, 'Close Ticket', 0, 'Ticket', 'closed', '', 1, 1, '2010-02-16 16:41:39', NULL),
(5, 'Add Followup', 0, 'Ticket', 'add_followup', '', 1, 1, '2010-02-16 16:41:39', NULL),
(6, 'Add Task', 0, 'Ticket', 'add_task', '', 1, 1, '2010-02-16 16:41:39', NULL),
(7, 'Update Followup', 0, 'Ticket', 'update_followup', '', 1, 1, '2010-02-16 16:41:39', NULL),
(8, 'Update Task', 0, 'Ticket', 'update_task', '', 1, 1, '2010-02-16 16:41:39', NULL),
(9, 'Delete Followup', 0, 'Ticket', 'delete_followup', '', 1, 1, '2010-02-16 16:41:39', NULL),
(10, 'Delete Task', 0, 'Ticket', 'delete_task', '', 1, 1, '2010-02-16 16:41:39', NULL),
(11, 'Resolve ticket', 0, 'Ticket', 'solved', '', 1, 1, '2010-02-16 16:41:39', NULL),
(12, 'Ticket Validation', 0, 'Ticket', 'validation', '', 1, 1, '2010-02-16 16:41:39', NULL),
(13, 'New Reservation', 0, 'Reservation', 'new', '', 1, 1, '2010-02-16 16:41:39', NULL),
(14, 'Update Reservation', 0, 'Reservation', 'update', '', 1, 1, '2010-02-16 16:41:39', NULL),
(15, 'Delete Reservation', 0, 'Reservation', 'delete', '', 1, 1, '2010-02-16 16:41:39', NULL),
(16, 'Alert Reservation', 0, 'Reservation', 'alert', '', 1, 1, '2010-02-16 16:41:39', NULL),
(17, 'Contract Notice', 0, 'Contract', 'notice', '', 1, 1, '2010-02-16 16:41:39', NULL),
(18, 'Contract End', 0, 'Contract', 'end', '', 1, 1, '2010-02-16 16:41:39', NULL),
(19, 'MySQL Synchronization', 0, 'DBConnection', 'desynchronization', '', 1, 1, '2010-02-16 16:41:39', NULL),
(20, 'Cartridges', 0, 'CartridgeItem', 'alert', '', 1, 1, '2010-02-16 16:41:39', NULL),
(21, 'Consumables', 0, 'ConsumableItem', 'alert', '', 1, 1, '2010-02-16 16:41:39', NULL),
(22, 'Infocoms', 0, 'Infocom', 'alert', '', 1, 1, '2010-02-16 16:41:39', NULL),
(23, 'Software Licenses', 0, 'SoftwareLicense', 'alert', '', 1, 1, '2010-02-16 16:41:39', NULL),
(24, 'Ticket Recall', 0, 'Ticket', 'recall', '', 1, 1, '2011-03-04 11:35:13', NULL),
(25, 'Password Forget', 0, 'User', 'passwordforget', '', 1, 1, '2011-03-04 11:35:13', NULL),
(26, 'Ticket Satisfaction', 0, 'Ticket', 'satisfaction', '', 1, 1, '2011-03-04 11:35:15', NULL),
(27, 'Item not unique', 0, 'FieldUnicity', 'refuse', '', 1, 1, '2011-03-04 11:35:16', NULL),
(28, 'Crontask Watcher', 0, 'Crontask', 'alert', '', 1, 1, '2011-03-04 11:35:16', NULL),
(29, 'New Problem', 0, 'Problem', 'new', '', 1, 1, '2011-12-06 09:48:33', NULL),
(30, 'Update Problem', 0, 'Problem', 'update', '', 1, 1, '2011-12-06 09:48:33', NULL),
(31, 'Resolve Problem', 0, 'Problem', 'solved', '', 1, 1, '2011-12-06 09:48:33', NULL),
(32, 'Add Task', 0, 'Problem', 'add_task', '', 1, 1, '2011-12-06 09:48:33', NULL),
(33, 'Update Task', 0, 'Problem', 'update_task', '', 1, 1, '2011-12-06 09:48:33', NULL),
(34, 'Delete Task', 0, 'Problem', 'delete_task', '', 1, 1, '2011-12-06 09:48:33', NULL),
(35, 'Close Problem', 0, 'Problem', 'closed', '', 1, 1, '2011-12-06 09:48:33', NULL),
(36, 'Delete Problem', 0, 'Problem', 'delete', '', 1, 1, '2011-12-06 09:48:33', NULL),
(37, 'Ticket Validation Answer', 0, 'Ticket', 'validation_answer', '', 1, 1, '2014-01-15 14:35:24', NULL),
(38, 'Contract End Periodicity', 0, 'Contract', 'periodicity', '', 1, 1, '2014-01-15 14:35:24', NULL),
(39, 'Contract Notice Periodicity', 0, 'Contract', 'periodicitynotice', '', 1, 1, '2014-01-15 14:35:24', NULL),
(40, 'Planning recall', 0, 'PlanningRecall', 'planningrecall', '', 1, 1, '2014-01-15 14:35:24', NULL),
(41, 'Delete Ticket', 0, 'Ticket', 'delete', '', 1, 1, '2014-01-15 14:35:26', NULL),
(42, 'New Change', 0, 'Change', 'new', '', 1, 1, '2014-06-18 08:02:07', NULL),
(43, 'Update Change', 0, 'Change', 'update', '', 1, 1, '2014-06-18 08:02:07', NULL),
(44, 'Resolve Change', 0, 'Change', 'solved', '', 1, 1, '2014-06-18 08:02:07', NULL),
(45, 'Add Task', 0, 'Change', 'add_task', '', 1, 1, '2014-06-18 08:02:07', NULL),
(46, 'Update Task', 0, 'Change', 'update_task', '', 1, 1, '2014-06-18 08:02:07', NULL),
(47, 'Delete Task', 0, 'Change', 'delete_task', '', 1, 1, '2014-06-18 08:02:07', NULL),
(48, 'Close Change', 0, 'Change', 'closed', '', 1, 1, '2014-06-18 08:02:07', NULL),
(49, 'Delete Change', 0, 'Change', 'delete', '', 1, 1, '2014-06-18 08:02:07', NULL),
(50, 'Ticket Satisfaction Answer', 0, 'Ticket', 'replysatisfaction', '', 1, 1, '2014-06-18 08:02:08', NULL),
(51, 'Receiver errors', 0, 'MailCollector', 'error', '', 1, 1, '2014-06-18 08:02:08', NULL),
(52, 'New Project', 0, 'Project', 'new', '', 1, 1, '2014-06-18 08:02:09', NULL),
(53, 'Update Project', 0, 'Project', 'update', '', 1, 1, '2014-06-18 08:02:09', NULL),
(54, 'Delete Project', 0, 'Project', 'delete', '', 1, 1, '2014-06-18 08:02:09', NULL),
(55, 'New Project Task', 0, 'ProjectTask', 'new', '', 1, 1, '2014-06-18 08:02:09', NULL),
(56, 'Update Project Task', 0, 'ProjectTask', 'update', '', 1, 1, '2014-06-18 08:02:09', NULL),
(57, 'Delete Project Task', 0, 'ProjectTask', 'delete', '', 1, 1, '2014-06-18 08:02:09', NULL),
(58, 'Request Unlock Items', 0, 'ObjectLock', 'unlock', '', 1, 1, '2016-02-08 16:57:46', NULL),
(59, 'New user in requesters', 0, 'Ticket', 'requester_user', '', 1, 1, '2016-02-08 16:57:46', NULL),
(60, 'New group in requesters', 0, 'Ticket', 'requester_group', '', 1, 1, '2016-02-08 16:57:46', NULL),
(61, 'New user in observers', 0, 'Ticket', 'observer_user', '', 1, 1, '2016-02-08 16:57:46', NULL),
(62, 'New group in observers', 0, 'Ticket', 'observer_group', '', 1, 1, '2016-02-08 16:57:46', NULL),
(63, 'New user in assignees', 0, 'Ticket', 'assign_user', '', 1, 1, '2016-02-08 16:57:46', NULL),
(64, 'New group in assignees', 0, 'Ticket', 'assign_group', '', 1, 1, '2016-02-08 16:57:46', NULL),
(65, 'New supplier in assignees', 0, 'Ticket', 'assign_supplier', '', 1, 1, '2016-02-08 16:57:46', NULL),
(66, 'Saved searches', 0, 'SavedSearch_Alert', 'alert', '', 1, 1, '2016-02-08 16:57:46', NULL),
(67, 'Certificates', 0, 'Certificate', 'alert', '', 1, 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Structure de la table `glpi_notifications_notificationtemplates`
--

CREATE TABLE `glpi_notifications_notificationtemplates` (
  `id` int(11) NOT NULL,
  `notifications_id` varchar(255) DEFAULT NULL,
  `mode` varchar(20) NOT NULL COMMENT 'See Notification_NotificationTemplate::MODE_* constants',
  `notificationtemplates_id` int(11) NOT NULL DEFAULT '0'
);

--
-- Déchargement des données de la table `glpi_notifications_notificationtemplates`
--

INSERT INTO `glpi_notifications_notificationtemplates` (`id`, `notifications_id`, `mode`, `notificationtemplates_id`) VALUES
(1, '1', 'mailing', 6),
(2, '2', 'mailing', 4),
(3, '3', 'mailing', 4),
(4, '4', 'mailing', 4),
(5, '5', 'mailing', 4),
(6, '6', 'mailing', 4),
(7, '7', 'mailing', 4),
(8, '8', 'mailing', 4),
(9, '9', 'mailing', 4),
(10, '10', 'mailing', 4),
(11, '11', 'mailing', 4),
(12, '12', 'mailing', 7),
(13, '13', 'mailing', 2),
(14, '14', 'mailing', 2),
(15, '15', 'mailing', 2),
(16, '16', 'mailing', 3),
(17, '17', 'mailing', 12),
(18, '18', 'mailing', 12),
(19, '19', 'mailing', 1),
(20, '20', 'mailing', 8),
(21, '21', 'mailing', 9),
(22, '22', 'mailing', 10),
(23, '23', 'mailing', 11),
(24, '24', 'mailing', 4),
(25, '25', 'mailing', 13),
(26, '26', 'mailing', 14),
(27, '27', 'mailing', 15),
(28, '28', 'mailing', 16),
(29, '29', 'mailing', 17),
(30, '30', 'mailing', 17),
(31, '31', 'mailing', 17),
(32, '32', 'mailing', 17),
(33, '33', 'mailing', 17),
(34, '34', 'mailing', 17),
(35, '35', 'mailing', 17),
(36, '36', 'mailing', 17),
(37, '37', 'mailing', 7),
(38, '38', 'mailing', 12),
(39, '39', 'mailing', 12),
(40, '40', 'mailing', 18),
(41, '41', 'mailing', 4),
(42, '42', 'mailing', 19),
(43, '43', 'mailing', 19),
(44, '44', 'mailing', 19),
(45, '45', 'mailing', 19),
(46, '46', 'mailing', 19),
(47, '47', 'mailing', 19),
(48, '48', 'mailing', 19),
(49, '49', 'mailing', 19),
(50, '50', 'mailing', 14),
(51, '51', 'mailing', 20),
(52, '52', 'mailing', 21),
(53, '53', 'mailing', 21),
(54, '54', 'mailing', 21),
(55, '55', 'mailing', 22),
(56, '56', 'mailing', 22),
(57, '57', 'mailing', 22),
(58, '58', 'mailing', 23),
(59, '59', 'mailing', 4),
(60, '60', 'mailing', 4),
(61, '61', 'mailing', 4),
(62, '62', 'mailing', 4),
(63, '63', 'mailing', 4),
(64, '64', 'mailing', 4),
(65, '65', 'mailing', 4),
(66, '66', 'mailing', 24),
(67, '67', 'mailing', 25);

-- --------------------------------------------------------

--
-- Structure de la table `glpi_notificationtargets`
--

CREATE TABLE `glpi_notificationtargets` (
  `id` int(11) NOT NULL,
  `items_id` int(11) NOT NULL DEFAULT '0',
  `type` int(11) NOT NULL DEFAULT '0',
  `notifications_id` int(11) NOT NULL DEFAULT '0'
);

--
-- Déchargement des données de la table `glpi_notificationtargets`
--

INSERT INTO `glpi_notificationtargets` (`id`, `items_id`, `type`, `notifications_id`) VALUES
(1, 3, 1, 13),
(2, 1, 1, 13),
(3, 3, 2, 2),
(4, 1, 1, 2),
(5, 1, 1, 3),
(6, 1, 1, 5),
(7, 1, 1, 4),
(8, 2, 1, 3),
(9, 4, 1, 3),
(10, 3, 1, 2),
(11, 3, 1, 3),
(12, 3, 1, 5),
(13, 3, 1, 4),
(14, 1, 1, 19),
(15, 14, 1, 12),
(16, 3, 1, 14),
(17, 1, 1, 14),
(18, 3, 1, 15),
(19, 1, 1, 15),
(20, 1, 1, 6),
(21, 3, 1, 6),
(22, 1, 1, 7),
(23, 3, 1, 7),
(24, 1, 1, 8),
(25, 3, 1, 8),
(26, 1, 1, 9),
(27, 3, 1, 9),
(28, 1, 1, 10),
(29, 3, 1, 10),
(30, 1, 1, 11),
(31, 3, 1, 11),
(32, 19, 1, 25),
(33, 3, 1, 26),
(34, 21, 1, 2),
(35, 21, 1, 3),
(36, 21, 1, 5),
(37, 21, 1, 4),
(38, 21, 1, 6),
(39, 21, 1, 7),
(40, 21, 1, 8),
(41, 21, 1, 9),
(42, 21, 1, 10),
(43, 21, 1, 11),
(75, 1, 1, 41),
(46, 1, 1, 28),
(47, 3, 1, 29),
(48, 1, 1, 29),
(49, 21, 1, 29),
(50, 2, 1, 30),
(51, 4, 1, 30),
(52, 3, 1, 30),
(53, 1, 1, 30),
(54, 21, 1, 30),
(55, 3, 1, 31),
(56, 1, 1, 31),
(57, 21, 1, 31),
(58, 3, 1, 32),
(59, 1, 1, 32),
(60, 21, 1, 32),
(61, 3, 1, 33),
(62, 1, 1, 33),
(63, 21, 1, 33),
(64, 3, 1, 34),
(65, 1, 1, 34),
(66, 21, 1, 34),
(67, 3, 1, 35),
(68, 1, 1, 35),
(69, 21, 1, 35),
(70, 3, 1, 36),
(71, 1, 1, 36),
(72, 21, 1, 36),
(73, 14, 1, 37),
(74, 3, 1, 40),
(76, 3, 1, 42),
(77, 1, 1, 42),
(78, 21, 1, 42),
(79, 2, 1, 43),
(80, 4, 1, 43),
(81, 3, 1, 43),
(82, 1, 1, 43),
(83, 21, 1, 43),
(84, 3, 1, 44),
(85, 1, 1, 44),
(86, 21, 1, 44),
(87, 3, 1, 45),
(88, 1, 1, 45),
(89, 21, 1, 45),
(90, 3, 1, 46),
(91, 1, 1, 46),
(92, 21, 1, 46),
(93, 3, 1, 47),
(94, 1, 1, 47),
(95, 21, 1, 47),
(96, 3, 1, 48),
(97, 1, 1, 48),
(98, 21, 1, 48),
(99, 3, 1, 49),
(100, 1, 1, 49),
(101, 21, 1, 49),
(102, 3, 1, 50),
(103, 2, 1, 50),
(104, 1, 1, 51),
(105, 27, 1, 52),
(106, 1, 1, 52),
(107, 28, 1, 52),
(108, 27, 1, 53),
(109, 1, 1, 53),
(110, 28, 1, 53),
(111, 27, 1, 54),
(112, 1, 1, 54),
(113, 28, 1, 54),
(114, 31, 1, 55),
(115, 1, 1, 55),
(116, 32, 1, 55),
(117, 31, 1, 56),
(118, 1, 1, 56),
(119, 32, 1, 56),
(120, 31, 1, 57),
(121, 1, 1, 57),
(122, 32, 1, 57),
(123, 19, 1, 58),
(124, 3, 1, 59),
(125, 13, 1, 60),
(126, 21, 1, 61),
(127, 20, 1, 62),
(128, 2, 1, 63),
(129, 23, 1, 64),
(130, 8, 1, 65),
(131, 19, 1, 66);

-- --------------------------------------------------------

--
-- Structure de la table `glpi_notificationtemplates`
--

CREATE TABLE `glpi_notificationtemplates` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `itemtype` varchar(100) NOT NULL,
  `date_mod` datetime DEFAULT NULL,
  `comment` text,
  `css` text,
  `date_creation` datetime DEFAULT NULL
);

--
-- Déchargement des données de la table `glpi_notificationtemplates`
--

INSERT INTO `glpi_notificationtemplates` (`id`, `name`, `itemtype`, `date_mod`, `comment`, `css`, `date_creation`) VALUES
(1, 'MySQL Synchronization', 'DBConnection', '2010-02-01 15:51:46', '', NULL, NULL),
(2, 'Reservations', 'Reservation', '2010-02-03 14:03:45', '', NULL, NULL),
(3, 'Alert Reservation', 'Reservation', '2010-02-03 14:03:45', '', NULL, NULL),
(4, 'Tickets', 'Ticket', '2010-02-07 21:39:15', '', NULL, NULL),
(5, 'Tickets (Simple)', 'Ticket', '2010-02-07 21:39:15', '', NULL, NULL),
(6, 'Alert Tickets not closed', 'Ticket', '2010-02-07 21:39:15', '', NULL, NULL),
(7, 'Tickets Validation', 'Ticket', '2010-02-26 21:39:15', '', NULL, NULL),
(8, 'Cartridges', 'CartridgeItem', '2010-02-16 13:17:24', '', NULL, NULL),
(9, 'Consumables', 'ConsumableItem', '2010-02-16 13:17:38', '', NULL, NULL),
(10, 'Infocoms', 'Infocom', '2010-02-16 13:17:55', '', NULL, NULL),
(11, 'Licenses', 'SoftwareLicense', '2010-02-16 13:18:12', '', NULL, NULL),
(12, 'Contracts', 'Contract', '2010-02-16 13:18:12', '', NULL, NULL),
(13, 'Password Forget', 'User', '2011-03-04 11:35:13', NULL, NULL, NULL),
(14, 'Ticket Satisfaction', 'Ticket', '2011-03-04 11:35:15', NULL, NULL, NULL),
(15, 'Item not unique', 'FieldUnicity', '2011-03-04 11:35:16', NULL, NULL, NULL),
(16, 'Crontask', 'Crontask', '2011-03-04 11:35:16', NULL, NULL, NULL),
(17, 'Problems', 'Problem', '2011-12-06 09:48:33', NULL, NULL, NULL),
(18, 'Planning recall', 'PlanningRecall', '2014-01-15 14:35:24', NULL, NULL, NULL),
(19, 'Changes', 'Change', '2014-06-18 08:02:07', NULL, NULL, NULL),
(20, 'Receiver errors', 'MailCollector', '2014-06-18 08:02:08', NULL, NULL, NULL),
(21, 'Projects', 'Project', '2014-06-18 08:02:09', NULL, NULL, NULL),
(22, 'Project Tasks', 'ProjectTask', '2014-06-18 08:02:09', NULL, NULL, NULL),
(23, 'Unlock Item request', 'ObjectLock', '2016-02-08 16:57:46', NULL, NULL, NULL),
(24, 'Saved searches alerts', 'SavedSearch_Alert', '2017-04-05 14:57:34', NULL, NULL, NULL),
(25, 'Certificates', 'Certificate', NULL, '', NULL, NULL);

-- --------------------------------------------------------

--
-- Structure de la table `glpi_notificationtemplatetranslations`
--

CREATE TABLE `glpi_notificationtemplatetranslations` (
  `id` int(11) NOT NULL,
  `notificationtemplates_id` int(11) NOT NULL DEFAULT '0',
  `language` char(5) NOT NULL DEFAULT '',
  `subject` varchar(255) NOT NULL,
  `content_text` text,
  `content_html` text
);

--
-- Déchargement des données de la table `glpi_notificationtemplatetranslations`
--

INSERT INTO `glpi_notificationtemplatetranslations` (`id`, `notificationtemplates_id`, `language`, `subject`, `content_text`, `content_html`) VALUES
(1, 1, '', '##lang.dbconnection.title##', '##lang.dbconnection.delay## : ##dbconnection.delay##\n', '&lt;p&gt;##lang.dbconnection.delay## : ##dbconnection.delay##&lt;/p&gt;'),
(2, 2, '', '##reservation.action##', '======================================================================\n##lang.reservation.user##: ##reservation.user##\n##lang.reservation.item.name##: ##reservation.itemtype## - ##reservation.item.name##\n##IFreservation.tech## ##lang.reservation.tech## ##reservation.tech## ##ENDIFreservation.tech##\n##lang.reservation.begin##: ##reservation.begin##\n##lang.reservation.end##: ##reservation.end##\n##lang.reservation.comment##: ##reservation.comment##\n======================================================================\n', '&lt;!-- description{ color: inherit; background: #ebebeb;border-style: solid;border-color: #8d8d8d; border-width: 0px 1px 1px 0px; } --&gt;\n&lt;p&gt;&lt;span style=\"color: #8b8c8f; font-weight: bold; text-decoration: underline;\"&gt;##lang.reservation.user##:&lt;/span&gt;##reservation.user##&lt;br /&gt; &lt;span style=\"color: #8b8c8f; font-weight: bold; text-decoration: underline;\"&gt;##lang.reservation.item.name##:&lt;/span&gt;##reservation.itemtype## - ##reservation.item.name##&lt;br /&gt;##IFreservation.tech## ##lang.reservation.tech## ##reservation.tech####ENDIFreservation.tech##&lt;br /&gt; &lt;span style=\"color: #8b8c8f; font-weight: bold; text-decoration: underline;\"&gt;##lang.reservation.begin##:&lt;/span&gt; ##reservation.begin##&lt;br /&gt; &lt;span style=\"color: #8b8c8f; font-weight: bold; text-decoration: underline;\"&gt;##lang.reservation.end##:&lt;/span&gt;##reservation.end##&lt;br /&gt; &lt;span style=\"color: #8b8c8f; font-weight: bold; text-decoration: underline;\"&gt;##lang.reservation.comment##:&lt;/span&gt; ##reservation.comment##&lt;/p&gt;'),
(3, 3, '', '##reservation.action##  ##reservation.entity##', '##lang.reservation.entity## : ##reservation.entity##\n\n\n##FOREACHreservations##\n##lang.reservation.itemtype## : ##reservation.itemtype##\n\n ##lang.reservation.item## : ##reservation.item##\n\n ##reservation.url##\n\n ##ENDFOREACHreservations##', '&lt;p&gt;##lang.reservation.entity## : ##reservation.entity## &lt;br /&gt; &lt;br /&gt;\n##FOREACHreservations## &lt;br /&gt;##lang.reservation.itemtype## :  ##reservation.itemtype##&lt;br /&gt;\n ##lang.reservation.item## :  ##reservation.item##&lt;br /&gt; &lt;br /&gt;\n &lt;a href=\"##reservation.url##\"&gt; ##reservation.url##&lt;/a&gt;&lt;br /&gt;\n ##ENDFOREACHreservations##&lt;/p&gt;'),
(4, 4, '', '##ticket.action## ##ticket.title##', ' ##IFticket.storestatus=5##\n ##lang.ticket.url## : ##ticket.urlapprove##\n ##lang.ticket.autoclosewarning##\n ##lang.ticket.solvedate## : ##ticket.solvedate##\n ##lang.ticket.solution.type## : ##ticket.solution.type##\n ##lang.ticket.solution.description## : ##ticket.solution.description## ##ENDIFticket.storestatus##\n ##ELSEticket.storestatus## ##lang.ticket.url## : ##ticket.url## ##ENDELSEticket.storestatus##\n\n ##lang.ticket.description##\n\n ##lang.ticket.title## : ##ticket.title##\n ##lang.ticket.authors## : ##IFticket.authors## ##ticket.authors## ##ENDIFticket.authors## ##ELSEticket.authors##--##ENDELSEticket.authors##\n ##lang.ticket.creationdate## : ##ticket.creationdate##\n ##lang.ticket.closedate## : ##ticket.closedate##\n ##lang.ticket.requesttype## : ##ticket.requesttype##\n##lang.ticket.item.name## :\n\n##FOREACHitems##\n\n ##IFticket.itemtype##\n  ##ticket.itemtype## - ##ticket.item.name##\n  ##IFticket.item.model## ##lang.ticket.item.model## : ##ticket.item.model## ##ENDIFticket.item.model##\n  ##IFticket.item.serial## ##lang.ticket.item.serial## : ##ticket.item.serial## ##ENDIFticket.item.serial##\n  ##IFticket.item.otherserial## ##lang.ticket.item.otherserial## : ##ticket.item.otherserial## ##ENDIFticket.item.otherserial##\n ##ENDIFticket.itemtype##\n\n##ENDFOREACHitems##\n##IFticket.assigntousers## ##lang.ticket.assigntousers## : ##ticket.assigntousers## ##ENDIFticket.assigntousers##\n ##lang.ticket.status## : ##ticket.status##\n##IFticket.assigntogroups## ##lang.ticket.assigntogroups## : ##ticket.assigntogroups## ##ENDIFticket.assigntogroups##\n ##lang.ticket.urgency## : ##ticket.urgency##\n ##lang.ticket.impact## : ##ticket.impact##\n ##lang.ticket.priority## : ##ticket.priority##\n##IFticket.user.email## ##lang.ticket.user.email## : ##ticket.user.email ##ENDIFticket.user.email##\n##IFticket.category## ##lang.ticket.category## : ##ticket.category## ##ENDIFticket.category## ##ELSEticket.category## ##lang.ticket.nocategoryassigned## ##ENDELSEticket.category##\n ##lang.ticket.content## : ##ticket.content##\n ##IFticket.storestatus=6##\n\n ##lang.ticket.solvedate## : ##ticket.solvedate##\n ##lang.ticket.solution.type## : ##ticket.solution.type##\n ##lang.ticket.solution.description## : ##ticket.solution.description##\n ##ENDIFticket.storestatus##\n ##lang.ticket.numberoffollowups## : ##ticket.numberoffollowups##\n\n##FOREACHfollowups##\n\n [##followup.date##] ##lang.followup.isprivate## : ##followup.isprivate##\n ##lang.followup.author## ##followup.author##\n ##lang.followup.description## ##followup.description##\n ##lang.followup.date## ##followup.date##\n ##lang.followup.requesttype## ##followup.requesttype##\n\n##ENDFOREACHfollowups##\n ##lang.ticket.numberoftasks## : ##ticket.numberoftasks##\n\n##FOREACHtasks##\n\n [##task.date##] ##lang.task.isprivate## : ##task.isprivate##\n ##lang.task.author## ##task.author##\n ##lang.task.description## ##task.description##\n ##lang.task.time## ##task.time##\n ##lang.task.category## ##task.category##\n\n##ENDFOREACHtasks##', '<!-- description{ color: inherit; background: #ebebeb; border-style: solid;border-color: #8d8d8d; border-width: 0px 1px 1px 0px; }    -->\n<div>##IFticket.storestatus=5##</div>\n<div>##lang.ticket.url## : <a href=\"##ticket.urlapprove##\">##ticket.urlapprove##</a> <strong>&#160;</strong></div>\n<div><strong>##lang.ticket.autoclosewarning##</strong></div>\n<div><span style=\"color: #888888;\"><strong><span style=\"text-decoration: underline;\">##lang.ticket.solvedate##</span></strong></span> : ##ticket.solvedate##<br /><span style=\"text-decoration: underline; color: #888888;\"><strong>##lang.ticket.solution.type##</strong></span> : ##ticket.solution.type##<br /><span style=\"text-decoration: underline; color: #888888;\"><strong>##lang.ticket.solution.description##</strong></span> : ##ticket.solution.description## ##ENDIFticket.storestatus##</div>\n<div>##ELSEticket.storestatus## ##lang.ticket.url## : <a href=\"##ticket.url##\">##ticket.url##</a> ##ENDELSEticket.storestatus##</div>\n<p class=\"description b\"><strong>##lang.ticket.description##</strong></p>\n<p><span style=\"color: #8b8c8f; font-weight: bold; text-decoration: underline;\"> ##lang.ticket.title##</span>&#160;:##ticket.title## <br /> <span style=\"color: #8b8c8f; font-weight: bold; text-decoration: underline;\"> ##lang.ticket.authors##</span>&#160;:##IFticket.authors## ##ticket.authors## ##ENDIFticket.authors##    ##ELSEticket.authors##--##ENDELSEticket.authors## <br /> <span style=\"color: #8b8c8f; font-weight: bold; text-decoration: underline;\"> ##lang.ticket.creationdate##</span>&#160;:##ticket.creationdate## <br /> <span style=\"color: #8b8c8f; font-weight: bold; text-decoration: underline;\"> ##lang.ticket.closedate##</span>&#160;:##ticket.closedate## <br /> <span style=\"color: #8b8c8f; font-weight: bold; text-decoration: underline;\"> ##lang.ticket.requesttype##</span>&#160;:##ticket.requesttype##<br />\n<br /><span style=\"color: #8b8c8f; font-weight: bold; text-decoration: underline;\"> ##lang.ticket.item.name##</span>&#160;:\n<p>##FOREACHitems##</p>\n<div class=\"description b\">##IFticket.itemtype## ##ticket.itemtype##&#160;- ##ticket.item.name## ##IFticket.item.model## ##lang.ticket.item.model## : ##ticket.item.model## ##ENDIFticket.item.model## ##IFticket.item.serial## ##lang.ticket.item.serial## : ##ticket.item.serial## ##ENDIFticket.item.serial## ##IFticket.item.otherserial## ##lang.ticket.item.otherserial## : ##ticket.item.otherserial## ##ENDIFticket.item.otherserial## ##ENDIFticket.itemtype## </div><br />\n<p>##ENDFOREACHitems##</p>\n##IFticket.assigntousers## <span style=\"color: #8b8c8f; font-weight: bold; text-decoration: underline;\"> ##lang.ticket.assigntousers##</span>&#160;: ##ticket.assigntousers## ##ENDIFticket.assigntousers##<br /> <span style=\"color: #8b8c8f; font-weight: bold; text-decoration: underline;\">##lang.ticket.status## </span>&#160;: ##ticket.status##<br /> ##IFticket.assigntogroups## <span style=\"color: #8b8c8f; font-weight: bold; text-decoration: underline;\"> ##lang.ticket.assigntogroups##</span>&#160;: ##ticket.assigntogroups## ##ENDIFticket.assigntogroups##<br /> <span style=\"color: #8b8c8f; font-weight: bold; text-decoration: underline;\"> ##lang.ticket.urgency##</span>&#160;: ##ticket.urgency##<br /> <span style=\"color: #8b8c8f; font-weight: bold; text-decoration: underline;\"> ##lang.ticket.impact##</span>&#160;: ##ticket.impact##<br /> <span style=\"color: #8b8c8f; font-weight: bold; text-decoration: underline;\"> ##lang.ticket.priority##</span>&#160;: ##ticket.priority## <br /> ##IFticket.user.email##<span style=\"color: #8b8c8f; font-weight: bold; text-decoration: underline;\"> ##lang.ticket.user.email##</span>&#160;: ##ticket.user.email ##ENDIFticket.user.email##    <br /> ##IFticket.category##<span style=\"color: #8b8c8f; font-weight: bold; text-decoration: underline;\">##lang.ticket.category## </span>&#160;:##ticket.category## ##ENDIFticket.category## ##ELSEticket.category## ##lang.ticket.nocategoryassigned## ##ENDELSEticket.category##    <br /> <span style=\"color: #8b8c8f; font-weight: bold; text-decoration: underline;\"> ##lang.ticket.content##</span>&#160;: ##ticket.content##</p>\n<br />##IFticket.storestatus=6##<br /><span style=\"text-decoration: underline;\"><strong><span style=\"color: #888888;\">##lang.ticket.solvedate##</span></strong></span> : ##ticket.solvedate##<br /><span style=\"color: #888888;\"><strong><span style=\"text-decoration: underline;\">##lang.ticket.solution.type##</span></strong></span> : ##ticket.solution.type##<br /><span style=\"text-decoration: underline; color: #888888;\"><strong>##lang.ticket.solution.description##</strong></span> : ##ticket.solution.description##<br />##ENDIFticket.storestatus##</p>\n<div class=\"description b\">##lang.ticket.numberoffollowups##&#160;: ##ticket.numberoffollowups##</div>\n<p>##FOREACHfollowups##</p>\n<div class=\"description b\"><br /> <strong> [##followup.date##] <em>##lang.followup.isprivate## : ##followup.isprivate## </em></strong><br /> <span style=\"color: #8b8c8f; font-weight: bold; text-decoration: underline;\"> ##lang.followup.author## </span> ##followup.author##<br /> <span style=\"color: #8b8c8f; font-weight: bold; text-decoration: underline;\"> ##lang.followup.description## </span> ##followup.description##<br /> <span style=\"color: #8b8c8f; font-weight: bold; text-decoration: underline;\"> ##lang.followup.date## </span> ##followup.date##<br /> <span style=\"color: #8b8c8f; font-weight: bold; text-decoration: underline;\"> ##lang.followup.requesttype## </span> ##followup.requesttype##</div>\n<p>##ENDFOREACHfollowups##</p>\n<div class=\"description b\">##lang.ticket.numberoftasks##&#160;: ##ticket.numberoftasks##</div>\n<p>##FOREACHtasks##</p>\n<div class=\"description b\"><br /> <strong> [##task.date##] <em>##lang.task.isprivate## : ##task.isprivate## </em></strong><br /> <span style=\"color: #8b8c8f; font-weight: bold; text-decoration: underline;\"> ##lang.task.author##</span> ##task.author##<br /> <span style=\"color: #8b8c8f; font-weight: bold; text-decoration: underline;\"> ##lang.task.description##</span> ##task.description##<br /> <span style=\"color: #8b8c8f; font-weight: bold; text-decoration: underline;\"> ##lang.task.time##</span> ##task.time##<br /> <span style=\"color: #8b8c8f; font-weight: bold; text-decoration: underline;\"> ##lang.task.category##</span> ##task.category##</div>\n<p>##ENDFOREACHtasks##</p>'),
(5, 12, '', '##contract.action##  ##contract.entity##', '##lang.contract.entity## : ##contract.entity##\n\n##FOREACHcontracts##\n##lang.contract.name## : ##contract.name##\n##lang.contract.number## : ##contract.number##\n##lang.contract.time## : ##contract.time##\n##IFcontract.type####lang.contract.type## : ##contract.type####ENDIFcontract.type##\n##contract.url##\n##ENDFOREACHcontracts##', '&lt;p&gt;##lang.contract.entity## : ##contract.entity##&lt;br /&gt;\n&lt;br /&gt;##FOREACHcontracts##&lt;br /&gt;##lang.contract.name## :\n##contract.name##&lt;br /&gt;\n##lang.contract.number## : ##contract.number##&lt;br /&gt;\n##lang.contract.time## : ##contract.time##&lt;br /&gt;\n##IFcontract.type####lang.contract.type## : ##contract.type##\n##ENDIFcontract.type##&lt;br /&gt;\n&lt;a href=\"##contract.url##\"&gt;\n##contract.url##&lt;/a&gt;&lt;br /&gt;\n##ENDFOREACHcontracts##&lt;/p&gt;'),
(6, 5, '', '##ticket.action## ##ticket.title##', '##lang.ticket.url## : ##ticket.url##\n\n##lang.ticket.description##\n\n\n##lang.ticket.title##  :##ticket.title##\n\n##lang.ticket.authors##  :##IFticket.authors##\n##ticket.authors## ##ENDIFticket.authors##\n##ELSEticket.authors##--##ENDELSEticket.authors##\n\n##IFticket.category## ##lang.ticket.category##  :##ticket.category##\n##ENDIFticket.category## ##ELSEticket.category##\n##lang.ticket.nocategoryassigned## ##ENDELSEticket.category##\n\n##lang.ticket.content##  : ##ticket.content##\n##IFticket.itemtype##\n##lang.ticket.item.name##  : ##ticket.itemtype## - ##ticket.item.name##\n##ENDIFticket.itemtype##', '&lt;div&gt;##lang.ticket.url## : &lt;a href=\"##ticket.url##\"&gt;\n##ticket.url##&lt;/a&gt;&lt;/div&gt;\n&lt;div class=\"description b\"&gt;\n##lang.ticket.description##&lt;/div&gt;\n&lt;p&gt;&lt;span\nstyle=\"color: #8b8c8f; font-weight: bold; text-decoration: underline;\"&gt;\n##lang.ticket.title##&lt;/span&gt;&#160;:##ticket.title##\n&lt;br /&gt; &lt;span style=\"color: #8b8c8f; font-weight: bold; text-decoration: underline;\"&gt;\n##lang.ticket.authors##&lt;/span&gt;\n##IFticket.authors## ##ticket.authors##\n##ENDIFticket.authors##\n##ELSEticket.authors##--##ENDELSEticket.authors##\n&lt;span style=\"color: #8b8c8f; font-weight: bold; text-decoration: underline;\"&gt;&#160\n;&lt;/span&gt;&lt;br /&gt; &lt;span style=\"color: #8b8c8f; font-weight: bold; text-decoration: underline;\"&gt; &lt;/span&gt;\n##IFticket.category##&lt;span style=\"color: #8b8c8f; font-weight: bold; text-decoration: underline;\"&gt;\n##lang.ticket.category## &lt;/span&gt;&#160;:##ticket.category##\n##ENDIFticket.category## ##ELSEticket.category##\n##lang.ticket.nocategoryassigned## ##ENDELSEticket.category##\n&lt;br /&gt; &lt;span style=\"color: #8b8c8f; font-weight: bold; text-decoration: underline;\"&gt;\n##lang.ticket.content##&lt;/span&gt;&#160;:\n##ticket.content##&lt;br /&gt;##IFticket.itemtype##\n&lt;span style=\"color: #8b8c8f; font-weight: bold; text-decoration: underline;\"&gt;\n##lang.ticket.item.name##&lt;/span&gt;&#160;:\n##ticket.itemtype## - ##ticket.item.name##\n##ENDIFticket.itemtype##&lt;/p&gt;'),
(15, 15, '', '##lang.unicity.action##', '##lang.unicity.entity## : ##unicity.entity##\n\n##lang.unicity.itemtype## : ##unicity.itemtype##\n\n##lang.unicity.message## : ##unicity.message##\n\n##lang.unicity.action_user## : ##unicity.action_user##\n\n##lang.unicity.action_type## : ##unicity.action_type##\n\n##lang.unicity.date## : ##unicity.date##', '&lt;p&gt;##lang.unicity.entity## : ##unicity.entity##&lt;/p&gt;\n&lt;p&gt;##lang.unicity.itemtype## : ##unicity.itemtype##&lt;/p&gt;\n&lt;p&gt;##lang.unicity.message## : ##unicity.message##&lt;/p&gt;\n&lt;p&gt;##lang.unicity.action_user## : ##unicity.action_user##&lt;/p&gt;\n&lt;p&gt;##lang.unicity.action_type## : ##unicity.action_type##&lt;/p&gt;\n&lt;p&gt;##lang.unicity.date## : ##unicity.date##&lt;/p&gt;'),
(7, 7, '', '##ticket.action## ##ticket.title##', '##FOREACHvalidations##\n\n##IFvalidation.storestatus=2##\n##validation.submission.title##\n##lang.validation.commentsubmission## : ##validation.commentsubmission##\n##ENDIFvalidation.storestatus##\n##ELSEvalidation.storestatus## ##validation.answer.title## ##ENDELSEvalidation.storestatus##\n\n##lang.ticket.url## : ##ticket.urlvalidation##\n\n##IFvalidation.status## ##lang.validation.status## : ##validation.status## ##ENDIFvalidation.status##\n##IFvalidation.commentvalidation##\n##lang.validation.commentvalidation## : ##validation.commentvalidation##\n##ENDIFvalidation.commentvalidation##\n##ENDFOREACHvalidations##', '&lt;div&gt;##FOREACHvalidations##&lt;/div&gt;\n&lt;p&gt;##IFvalidation.storestatus=2##&lt;/p&gt;\n&lt;div&gt;##validation.submission.title##&lt;/div&gt;\n&lt;div&gt;##lang.validation.commentsubmission## : ##validation.commentsubmission##&lt;/div&gt;\n&lt;div&gt;##ENDIFvalidation.storestatus##&lt;/div&gt;\n&lt;div&gt;##ELSEvalidation.storestatus## ##validation.answer.title## ##ENDELSEvalidation.storestatus##&lt;/div&gt;\n&lt;div&gt;&lt;/div&gt;\n&lt;div&gt;\n&lt;div&gt;##lang.ticket.url## : &lt;a href=\"##ticket.urlvalidation##\"&gt; ##ticket.urlvalidation## &lt;/a&gt;&lt;/div&gt;\n&lt;/div&gt;\n&lt;p&gt;##IFvalidation.status## ##lang.validation.status## : ##validation.status## ##ENDIFvalidation.status##\n&lt;br /&gt; ##IFvalidation.commentvalidation##&lt;br /&gt; ##lang.validation.commentvalidation## :\n&#160; ##validation.commentvalidation##&lt;br /&gt; ##ENDIFvalidation.commentvalidation##\n&lt;br /&gt;##ENDFOREACHvalidations##&lt;/p&gt;'),
(8, 6, '', '##ticket.action## ##ticket.entity##', '##lang.ticket.entity## : ##ticket.entity##\n\n##FOREACHtickets##\n\n##lang.ticket.title## : ##ticket.title##\n ##lang.ticket.status## : ##ticket.status##\n\n ##ticket.url##\n ##ENDFOREACHtickets##', '&lt;table class=\"tab_cadre\" border=\"1\" cellspacing=\"2\" cellpadding=\"3\"&gt;\n&lt;tbody&gt;\n&lt;tr&gt;\n&lt;td style=\"text-align: left;\" width=\"auto\" bgcolor=\"#cccccc\"&gt;&lt;span style=\"font-size: 11px; text-align: left;\"&gt;##lang.ticket.authors##&lt;/span&gt;&lt;/td&gt;\n&lt;td style=\"text-align: left;\" width=\"auto\" bgcolor=\"#cccccc\"&gt;&lt;span style=\"font-size: 11px; text-align: left;\"&gt;##lang.ticket.title##&lt;/span&gt;&lt;/td&gt;\n&lt;td style=\"text-align: left;\" width=\"auto\" bgcolor=\"#cccccc\"&gt;&lt;span style=\"font-size: 11px; text-align: left;\"&gt;##lang.ticket.priority##&lt;/span&gt;&lt;/td&gt;\n&lt;td style=\"text-align: left;\" width=\"auto\" bgcolor=\"#cccccc\"&gt;&lt;span style=\"font-size: 11px; text-align: left;\"&gt;##lang.ticket.status##&lt;/span&gt;&lt;/td&gt;\n&lt;td style=\"text-align: left;\" width=\"auto\" bgcolor=\"#cccccc\"&gt;&lt;span style=\"font-size: 11px; text-align: left;\"&gt;##lang.ticket.attribution##&lt;/span&gt;&lt;/td&gt;\n&lt;td style=\"text-align: left;\" width=\"auto\" bgcolor=\"#cccccc\"&gt;&lt;span style=\"font-size: 11px; text-align: left;\"&gt;##lang.ticket.creationdate##&lt;/span&gt;&lt;/td&gt;\n&lt;td style=\"text-align: left;\" width=\"auto\" bgcolor=\"#cccccc\"&gt;&lt;span style=\"font-size: 11px; text-align: left;\"&gt;##lang.ticket.content##&lt;/span&gt;&lt;/td&gt;\n&lt;/tr&gt;\n##FOREACHtickets##\n&lt;tr&gt;\n&lt;td width=\"auto\"&gt;&lt;span style=\"font-size: 11px; text-align: left;\"&gt;##ticket.authors##&lt;/span&gt;&lt;/td&gt;\n&lt;td width=\"auto\"&gt;&lt;span style=\"font-size: 11px; text-align: left;\"&gt;&lt;a href=\"##ticket.url##\"&gt;##ticket.title##&lt;/a&gt;&lt;/span&gt;&lt;/td&gt;\n&lt;td width=\"auto\"&gt;&lt;span style=\"font-size: 11px; text-align: left;\"&gt;##ticket.priority##&lt;/span&gt;&lt;/td&gt;\n&lt;td width=\"auto\"&gt;&lt;span style=\"font-size: 11px; text-align: left;\"&gt;##ticket.status##&lt;/span&gt;&lt;/td&gt;\n&lt;td width=\"auto\"&gt;&lt;span style=\"font-size: 11px; text-align: left;\"&gt;##IFticket.assigntousers####ticket.assigntousers##&lt;br /&gt;##ENDIFticket.assigntousers####IFticket.assigntogroups##&lt;br /&gt;##ticket.assigntogroups## ##ENDIFticket.assigntogroups####IFticket.assigntosupplier##&lt;br /&gt;##ticket.assigntosupplier## ##ENDIFticket.assigntosupplier##&lt;/span&gt;&lt;/td&gt;\n&lt;td width=\"auto\"&gt;&lt;span style=\"font-size: 11px; text-align: left;\"&gt;##ticket.creationdate##&lt;/span&gt;&lt;/td&gt;\n&lt;td width=\"auto\"&gt;&lt;span style=\"font-size: 11px; text-align: left;\"&gt;##ticket.content##&lt;/span&gt;&lt;/td&gt;\n&lt;/tr&gt;\n##ENDFOREACHtickets##\n&lt;/tbody&gt;\n&lt;/table&gt;'),
(9, 9, '', '##consumable.action##  ##consumable.entity##', '##lang.consumable.entity## : ##consumable.entity##\n\n\n##FOREACHconsumables##\n##lang.consumable.item## : ##consumable.item##\n\n\n##lang.consumable.reference## : ##consumable.reference##\n\n##lang.consumable.remaining## : ##consumable.remaining##\n\n##consumable.url##\n\n##ENDFOREACHconsumables##', '&lt;p&gt;\n##lang.consumable.entity## : ##consumable.entity##\n&lt;br /&gt; &lt;br /&gt;##FOREACHconsumables##\n&lt;br /&gt;##lang.consumable.item## : ##consumable.item##&lt;br /&gt;\n&lt;br /&gt;##lang.consumable.reference## : ##consumable.reference##&lt;br /&gt;\n##lang.consumable.remaining## : ##consumable.remaining##&lt;br /&gt;\n&lt;a href=\"##consumable.url##\"&gt; ##consumable.url##&lt;/a&gt;&lt;br /&gt;\n   ##ENDFOREACHconsumables##&lt;/p&gt;'),
(10, 8, '', '##cartridge.action##  ##cartridge.entity##', '##lang.cartridge.entity## : ##cartridge.entity##\n\n\n##FOREACHcartridges##\n##lang.cartridge.item## : ##cartridge.item##\n\n\n##lang.cartridge.reference## : ##cartridge.reference##\n\n##lang.cartridge.remaining## : ##cartridge.remaining##\n\n##cartridge.url##\n ##ENDFOREACHcartridges##', '&lt;p&gt;##lang.cartridge.entity## : ##cartridge.entity##\n&lt;br /&gt; &lt;br /&gt;##FOREACHcartridges##\n&lt;br /&gt;##lang.cartridge.item## :\n##cartridge.item##&lt;br /&gt; &lt;br /&gt;\n##lang.cartridge.reference## :\n##cartridge.reference##&lt;br /&gt;\n##lang.cartridge.remaining## :\n##cartridge.remaining##&lt;br /&gt;\n&lt;a href=\"##cartridge.url##\"&gt;\n##cartridge.url##&lt;/a&gt;&lt;br /&gt;\n##ENDFOREACHcartridges##&lt;/p&gt;'),
(11, 10, '', '##infocom.action##  ##infocom.entity##', '##lang.infocom.entity## : ##infocom.entity##\n\n\n##FOREACHinfocoms##\n\n##lang.infocom.itemtype## : ##infocom.itemtype##\n\n##lang.infocom.item## : ##infocom.item##\n\n\n##lang.infocom.expirationdate## : ##infocom.expirationdate##\n\n##infocom.url##\n ##ENDFOREACHinfocoms##', '&lt;p&gt;##lang.infocom.entity## : ##infocom.entity##\n&lt;br /&gt; &lt;br /&gt;##FOREACHinfocoms##\n&lt;br /&gt;##lang.infocom.itemtype## : ##infocom.itemtype##&lt;br /&gt;\n##lang.infocom.item## : ##infocom.item##&lt;br /&gt; &lt;br /&gt;\n##lang.infocom.expirationdate## : ##infocom.expirationdate##\n&lt;br /&gt; &lt;a href=\"##infocom.url##\"&gt;\n##infocom.url##&lt;/a&gt;&lt;br /&gt;\n##ENDFOREACHinfocoms##&lt;/p&gt;'),
(12, 11, '', '##license.action##  ##license.entity##', '##lang.license.entity## : ##license.entity##\n\n##FOREACHlicenses##\n\n##lang.license.item## : ##license.item##\n\n##lang.license.serial## : ##license.serial##\n\n##lang.license.expirationdate## : ##license.expirationdate##\n\n##license.url##\n ##ENDFOREACHlicenses##', '&lt;p&gt;\n##lang.license.entity## : ##license.entity##&lt;br /&gt;\n##FOREACHlicenses##\n&lt;br /&gt;##lang.license.item## : ##license.item##&lt;br /&gt;\n##lang.license.serial## : ##license.serial##&lt;br /&gt;\n##lang.license.expirationdate## : ##license.expirationdate##\n&lt;br /&gt; &lt;a href=\"##license.url##\"&gt; ##license.url##\n&lt;/a&gt;&lt;br /&gt; ##ENDFOREACHlicenses##&lt;/p&gt;'),
(13, 13, '', '##user.action##', '##user.realname## ##user.firstname##\n\n##lang.passwordforget.information##\n\n##lang.passwordforget.link## ##user.passwordforgeturl##', '&lt;p&gt;&lt;strong&gt;##user.realname## ##user.firstname##&lt;/strong&gt;&lt;/p&gt;\n&lt;p&gt;##lang.passwordforget.information##&lt;/p&gt;\n&lt;p&gt;##lang.passwordforget.link## &lt;a title=\"##user.passwordforgeturl##\" href=\"##user.passwordforgeturl##\"&gt;##user.passwordforgeturl##&lt;/a&gt;&lt;/p&gt;'),
(14, 14, '', '##ticket.action## ##ticket.title##', '##lang.ticket.title## : ##ticket.title##\n\n##lang.ticket.closedate## : ##ticket.closedate##\n\n##lang.satisfaction.text## ##ticket.urlsatisfaction##', '&lt;p&gt;##lang.ticket.title## : ##ticket.title##&lt;/p&gt;\n&lt;p&gt;##lang.ticket.closedate## : ##ticket.closedate##&lt;/p&gt;\n&lt;p&gt;##lang.satisfaction.text## &lt;a href=\"##ticket.urlsatisfaction##\"&gt;##ticket.urlsatisfaction##&lt;/a&gt;&lt;/p&gt;'),
(16, 16, '', '##crontask.action##', '##lang.crontask.warning##\n\n##FOREACHcrontasks##\n ##crontask.name## : ##crontask.description##\n\n##ENDFOREACHcrontasks##', '&lt;p&gt;##lang.crontask.warning##&lt;/p&gt;\n&lt;p&gt;##FOREACHcrontasks## &lt;br /&gt;&lt;a href=\"##crontask.url##\"&gt;##crontask.name##&lt;/a&gt; : ##crontask.description##&lt;br /&gt; &lt;br /&gt;##ENDFOREACHcrontasks##&lt;/p&gt;'),
(17, 17, '', '##problem.action## ##problem.title##', '##IFproblem.storestatus=5##\n ##lang.problem.url## : ##problem.urlapprove##\n ##lang.problem.solvedate## : ##problem.solvedate##\n ##lang.problem.solution.type## : ##problem.solution.type##\n ##lang.problem.solution.description## : ##problem.solution.description## ##ENDIFproblem.storestatus##\n ##ELSEproblem.storestatus## ##lang.problem.url## : ##problem.url## ##ENDELSEproblem.storestatus##\n\n ##lang.problem.description##\n\n ##lang.problem.title##  :##problem.title##\n ##lang.problem.authors##  :##IFproblem.authors## ##problem.authors## ##ENDIFproblem.authors## ##ELSEproblem.authors##--##ENDELSEproblem.authors##\n ##lang.problem.creationdate##  :##problem.creationdate##\n ##IFproblem.assigntousers## ##lang.problem.assigntousers##  : ##problem.assigntousers## ##ENDIFproblem.assigntousers##\n ##lang.problem.status##  : ##problem.status##\n ##IFproblem.assigntogroups## ##lang.problem.assigntogroups##  : ##problem.assigntogroups## ##ENDIFproblem.assigntogroups##\n ##lang.problem.urgency##  : ##problem.urgency##\n ##lang.problem.impact##  : ##problem.impact##\n ##lang.problem.priority## : ##problem.priority##\n##IFproblem.category## ##lang.problem.category##  :##problem.category## ##ENDIFproblem.category## ##ELSEproblem.category## ##lang.problem.nocategoryassigned## ##ENDELSEproblem.category##\n ##lang.problem.content##  : ##problem.content##\n\n##IFproblem.storestatus=6##\n ##lang.problem.solvedate## : ##problem.solvedate##\n ##lang.problem.solution.type## : ##problem.solution.type##\n ##lang.problem.solution.description## : ##problem.solution.description##\n##ENDIFproblem.storestatus##\n ##lang.problem.numberoftickets## : ##problem.numberoftickets##\n\n##FOREACHtickets##\n [##ticket.date##] ##lang.problem.title## : ##ticket.title##\n ##lang.problem.content## ##ticket.content##\n\n##ENDFOREACHtickets##\n ##lang.problem.numberoftasks## : ##problem.numberoftasks##\n\n##FOREACHtasks##\n [##task.date##]\n ##lang.task.author## ##task.author##\n ##lang.task.description## ##task.description##\n ##lang.task.time## ##task.time##\n ##lang.task.category## ##task.category##\n\n##ENDFOREACHtasks##\n', '&lt;p&gt;##IFproblem.storestatus=5##&lt;/p&gt;\n&lt;div&gt;##lang.problem.url## : &lt;a href=\"##problem.urlapprove##\"&gt;##problem.urlapprove##&lt;/a&gt;&lt;/div&gt;\n&lt;div&gt;&lt;span style=\"color: #888888;\"&gt;&lt;strong&gt;&lt;span style=\"text-decoration: underline;\"&gt;##lang.problem.solvedate##&lt;/span&gt;&lt;/strong&gt;&lt;/span&gt; : ##problem.solvedate##&lt;br /&gt;&lt;span style=\"text-decoration: underline; color: #888888;\"&gt;&lt;strong&gt;##lang.problem.solution.type##&lt;/strong&gt;&lt;/span&gt; : ##problem.solution.type##&lt;br /&gt;&lt;span style=\"text-decoration: underline; color: #888888;\"&gt;&lt;strong&gt;##lang.problem.solution.description##&lt;/strong&gt;&lt;/span&gt; : ##problem.solution.description## ##ENDIFproblem.storestatus##&lt;/div&gt;\n&lt;div&gt;##ELSEproblem.storestatus## ##lang.problem.url## : &lt;a href=\"##problem.url##\"&gt;##problem.url##&lt;/a&gt; ##ENDELSEproblem.storestatus##&lt;/div&gt;\n&lt;p class=\"description b\"&gt;&lt;strong&gt;##lang.problem.description##&lt;/strong&gt;&lt;/p&gt;\n&lt;p&gt;&lt;span style=\"color: #8b8c8f; font-weight: bold; text-decoration: underline;\"&gt; ##lang.problem.title##&lt;/span&gt;&#160;:##problem.title## &lt;br /&gt; &lt;span style=\"color: #8b8c8f; font-weight: bold; text-decoration: underline;\"&gt; ##lang.problem.authors##&lt;/span&gt;&#160;:##IFproblem.authors## ##problem.authors## ##ENDIFproblem.authors##    ##ELSEproblem.authors##--##ENDELSEproblem.authors## &lt;br /&gt; &lt;span style=\"color: #8b8c8f; font-weight: bold; text-decoration: underline;\"&gt; ##lang.problem.creationdate##&lt;/span&gt;&#160;:##problem.creationdate## &lt;br /&gt; ##IFproblem.assigntousers## &lt;span style=\"color: #8b8c8f; font-weight: bold; text-decoration: underline;\"&gt; ##lang.problem.assigntousers##&lt;/span&gt;&#160;: ##problem.assigntousers## ##ENDIFproblem.assigntousers##&lt;br /&gt; &lt;span style=\"color: #8b8c8f; font-weight: bold; text-decoration: underline;\"&gt;##lang.problem.status## &lt;/span&gt;&#160;: ##problem.status##&lt;br /&gt; ##IFproblem.assigntogroups## &lt;span style=\"color: #8b8c8f; font-weight: bold; text-decoration: underline;\"&gt; ##lang.problem.assigntogroups##&lt;/span&gt;&#160;: ##problem.assigntogroups## ##ENDIFproblem.assigntogroups##&lt;br /&gt; &lt;span style=\"color: #8b8c8f; font-weight: bold; text-decoration: underline;\"&gt; ##lang.problem.urgency##&lt;/span&gt;&#160;: ##problem.urgency##&lt;br /&gt; &lt;span style=\"color: #8b8c8f; font-weight: bold; text-decoration: underline;\"&gt; ##lang.problem.impact##&lt;/span&gt;&#160;: ##problem.impact##&lt;br /&gt; &lt;span style=\"color: #8b8c8f; font-weight: bold; text-decoration: underline;\"&gt; ##lang.problem.priority##&lt;/span&gt; : ##problem.priority## &lt;br /&gt;##IFproblem.category##&lt;span style=\"color: #8b8c8f; font-weight: bold; text-decoration: underline;\"&gt;##lang.problem.category## &lt;/span&gt;&#160;:##problem.category##  ##ENDIFproblem.category## ##ELSEproblem.category##  ##lang.problem.nocategoryassigned## ##ENDELSEproblem.category##    &lt;br /&gt; &lt;span style=\"color: #8b8c8f; font-weight: bold; text-decoration: underline;\"&gt; ##lang.problem.content##&lt;/span&gt;&#160;: ##problem.content##&lt;/p&gt;\n&lt;p&gt;##IFproblem.storestatus=6##&lt;br /&gt;&lt;span style=\"text-decoration: underline;\"&gt;&lt;strong&gt;&lt;span style=\"color: #888888;\"&gt;##lang.problem.solvedate##&lt;/span&gt;&lt;/strong&gt;&lt;/span&gt; : ##problem.solvedate##&lt;br /&gt;&lt;span style=\"color: #888888;\"&gt;&lt;strong&gt;&lt;span style=\"text-decoration: underline;\"&gt;##lang.problem.solution.type##&lt;/span&gt;&lt;/strong&gt;&lt;/span&gt; : ##problem.solution.type##&lt;br /&gt;&lt;span style=\"text-decoration: underline; color: #888888;\"&gt;&lt;strong&gt;##lang.problem.solution.description##&lt;/strong&gt;&lt;/span&gt; : ##problem.solution.description##&lt;br /&gt;##ENDIFproblem.storestatus##&lt;/p&gt;\n&lt;div class=\"description b\"&gt;##lang.problem.numberoftickets##&#160;: ##problem.numberoftickets##&lt;/div&gt;\n&lt;p&gt;##FOREACHtickets##&lt;/p&gt;\n&lt;div&gt;&lt;strong&gt; [##ticket.date##] &lt;em&gt;##lang.problem.title## : &lt;a href=\"##ticket.url##\"&gt;##ticket.title## &lt;/a&gt;&lt;/em&gt;&lt;/strong&gt;&lt;br /&gt; &lt;span style=\"color: #8b8c8f; font-weight: bold; text-decoration: underline;\"&gt; &lt;/span&gt;&lt;span style=\"color: #8b8c8f; font-weight: bold; text-decoration: underline;\"&gt;##lang.problem.content## &lt;/span&gt; ##ticket.content##\n&lt;p&gt;##ENDFOREACHtickets##&lt;/p&gt;\n&lt;div class=\"description b\"&gt;##lang.problem.numberoftasks##&#160;: ##problem.numberoftasks##&lt;/div&gt;\n&lt;p&gt;##FOREACHtasks##&lt;/p&gt;\n&lt;div class=\"description b\"&gt;&lt;strong&gt;[##task.date##] &lt;/strong&gt;&lt;br /&gt; &lt;span style=\"color: #8b8c8f; font-weight: bold; text-decoration: underline;\"&gt; ##lang.task.author##&lt;/span&gt; ##task.author##&lt;br /&gt; &lt;span style=\"color: #8b8c8f; font-weight: bold; text-decoration: underline;\"&gt; ##lang.task.description##&lt;/span&gt; ##task.description##&lt;br /&gt; &lt;span style=\"color: #8b8c8f; font-weight: bold; text-decoration: underline;\"&gt; ##lang.task.time##&lt;/span&gt; ##task.time##&lt;br /&gt; &lt;span style=\"color: #8b8c8f; font-weight: bold; text-decoration: underline;\"&gt; ##lang.task.category##&lt;/span&gt; ##task.category##&lt;/div&gt;\n&lt;p&gt;##ENDFOREACHtasks##&lt;/p&gt;\n&lt;/div&gt;'),
(18, 18, '', '##recall.action##: ##recall.item.name##', '##recall.action##: ##recall.item.name##\n\n##recall.item.content##\n\n##lang.recall.planning.begin##: ##recall.planning.begin##\n##lang.recall.planning.end##: ##recall.planning.end##\n##lang.recall.planning.state##: ##recall.planning.state##\n##lang.recall.item.private##: ##recall.item.private##', '&lt;p&gt;##recall.action##: &lt;a href=\"##recall.item.url##\"&gt;##recall.item.name##&lt;/a&gt;&lt;/p&gt;\n&lt;p&gt;##recall.item.content##&lt;/p&gt;\n&lt;p&gt;##lang.recall.planning.begin##: ##recall.planning.begin##&lt;br /&gt;##lang.recall.planning.end##: ##recall.planning.end##&lt;br /&gt;##lang.recall.planning.state##: ##recall.planning.state##&lt;br /&gt;##lang.recall.item.private##: ##recall.item.private##&lt;br /&gt;&lt;br /&gt;&lt;/p&gt;\n&lt;p&gt;&lt;br /&gt;&lt;br /&gt;&lt;/p&gt;'),
(19, 19, '', '##change.action## ##change.title##', '##IFchange.storestatus=5##\n ##lang.change.url## : ##change.urlapprove##\n ##lang.change.solvedate## : ##change.solvedate##\n ##lang.change.solution.type## : ##change.solution.type##\n ##lang.change.solution.description## : ##change.solution.description## ##ENDIFchange.storestatus##\n ##ELSEchange.storestatus## ##lang.change.url## : ##change.url## ##ENDELSEchange.storestatus##\n\n ##lang.change.description##\n\n ##lang.change.title##  :##change.title##\n ##lang.change.authors##  :##IFchange.authors## ##change.authors## ##ENDIFchange.authors## ##ELSEchange.authors##--##ENDELSEchange.authors##\n ##lang.change.creationdate##  :##change.creationdate##\n ##IFchange.assigntousers## ##lang.change.assigntousers##  : ##change.assigntousers## ##ENDIFchange.assigntousers##\n ##lang.change.status##  : ##change.status##\n ##IFchange.assigntogroups## ##lang.change.assigntogroups##  : ##change.assigntogroups## ##ENDIFchange.assigntogroups##\n ##lang.change.urgency##  : ##change.urgency##\n ##lang.change.impact##  : ##change.impact##\n ##lang.change.priority## : ##change.priority##\n##IFchange.category## ##lang.change.category##  :##change.category## ##ENDIFchange.category## ##ELSEchange.category## ##lang.change.nocategoryassigned## ##ENDELSEchange.category##\n ##lang.change.content##  : ##change.content##\n\n##IFchange.storestatus=6##\n ##lang.change.solvedate## : ##change.solvedate##\n ##lang.change.solution.type## : ##change.solution.type##\n ##lang.change.solution.description## : ##change.solution.description##\n##ENDIFchange.storestatus##\n ##lang.change.numberofproblems## : ##change.numberofproblems##\n\n##FOREACHproblems##\n [##problem.date##] ##lang.change.title## : ##problem.title##\n ##lang.change.content## ##problem.content##\n\n##ENDFOREACHproblems##\n ##lang.change.numberoftasks## : ##change.numberoftasks##\n\n##FOREACHtasks##\n [##task.date##]\n ##lang.task.author## ##task.author##\n ##lang.task.description## ##task.description##\n ##lang.task.time## ##task.time##\n ##lang.task.category## ##task.category##\n\n##ENDFOREACHtasks##\n', '&lt;p&gt;##IFchange.storestatus=5##&lt;/p&gt;\n&lt;div&gt;##lang.change.url## : &lt;a href=\"##change.urlapprove##\"&gt;##change.urlapprove##&lt;/a&gt;&lt;/div&gt;\n&lt;div&gt;&lt;span style=\"color: #888888;\"&gt;&lt;strong&gt;&lt;span style=\"text-decoration: underline;\"&gt;##lang.change.solvedate##&lt;/span&gt;&lt;/strong&gt;&lt;/span&gt; : ##change.solvedate##&lt;br /&gt;&lt;span style=\"text-decoration: underline; color: #888888;\"&gt;&lt;strong&gt;##lang.change.solution.type##&lt;/strong&gt;&lt;/span&gt; : ##change.solution.type##&lt;br /&gt;&lt;span style=\"text-decoration: underline; color: #888888;\"&gt;&lt;strong&gt;##lang.change.solution.description##&lt;/strong&gt;&lt;/span&gt; : ##change.solution.description## ##ENDIFchange.storestatus##&lt;/div&gt;\n&lt;div&gt;##ELSEchange.storestatus## ##lang.change.url## : &lt;a href=\"##change.url##\"&gt;##change.url##&lt;/a&gt; ##ENDELSEchange.storestatus##&lt;/div&gt;\n&lt;p class=\"description b\"&gt;&lt;strong&gt;##lang.change.description##&lt;/strong&gt;&lt;/p&gt;\n&lt;p&gt;&lt;span style=\"color: #8b8c8f; font-weight: bold; text-decoration: underline;\"&gt; ##lang.change.title##&lt;/span&gt;&#160;:##change.title## &lt;br /&gt; &lt;span style=\"color: #8b8c8f; font-weight: bold; text-decoration: underline;\"&gt; ##lang.change.authors##&lt;/span&gt;&#160;:##IFchange.authors## ##change.authors## ##ENDIFchange.authors##    ##ELSEchange.authors##--##ENDELSEchange.authors## &lt;br /&gt; &lt;span style=\"color: #8b8c8f; font-weight: bold; text-decoration: underline;\"&gt; ##lang.change.creationdate##&lt;/span&gt;&#160;:##change.creationdate## &lt;br /&gt; ##IFchange.assigntousers## &lt;span style=\"color: #8b8c8f; font-weight: bold; text-decoration: underline;\"&gt; ##lang.change.assigntousers##&lt;/span&gt;&#160;: ##change.assigntousers## ##ENDIFchange.assigntousers##&lt;br /&gt; &lt;span style=\"color: #8b8c8f; font-weight: bold; text-decoration: underline;\"&gt;##lang.change.status## &lt;/span&gt;&#160;: ##change.status##&lt;br /&gt; ##IFchange.assigntogroups## &lt;span style=\"color: #8b8c8f; font-weight: bold; text-decoration: underline;\"&gt; ##lang.change.assigntogroups##&lt;/span&gt;&#160;: ##change.assigntogroups## ##ENDIFchange.assigntogroups##&lt;br /&gt; &lt;span style=\"color: #8b8c8f; font-weight: bold; text-decoration: underline;\"&gt; ##lang.change.urgency##&lt;/span&gt;&#160;: ##change.urgency##&lt;br /&gt; &lt;span style=\"color: #8b8c8f; font-weight: bold; text-decoration: underline;\"&gt; ##lang.change.impact##&lt;/span&gt;&#160;: ##change.impact##&lt;br /&gt; &lt;span style=\"color: #8b8c8f; font-weight: bold; text-decoration: underline;\"&gt; ##lang.change.priority##&lt;/span&gt; : ##change.priority## &lt;br /&gt;##IFchange.category##&lt;span style=\"color: #8b8c8f; font-weight: bold; text-decoration: underline;\"&gt;##lang.change.category## &lt;/span&gt;&#160;:##change.category##  ##ENDIFchange.category## ##ELSEchange.category##  ##lang.change.nocategoryassigned## ##ENDELSEchange.category##    &lt;br /&gt; &lt;span style=\"color: #8b8c8f; font-weight: bold; text-decoration: underline;\"&gt; ##lang.change.content##&lt;/span&gt;&#160;: ##change.content##&lt;/p&gt;\n&lt;p&gt;##IFchange.storestatus=6##&lt;br /&gt;&lt;span style=\"text-decoration: underline;\"&gt;&lt;strong&gt;&lt;span style=\"color: #888888;\"&gt;##lang.change.solvedate##&lt;/span&gt;&lt;/strong&gt;&lt;/span&gt; : ##change.solvedate##&lt;br /&gt;&lt;span style=\"color: #888888;\"&gt;&lt;strong&gt;&lt;span style=\"text-decoration: underline;\"&gt;##lang.change.solution.type##&lt;/span&gt;&lt;/strong&gt;&lt;/span&gt; : ##change.solution.type##&lt;br /&gt;&lt;span style=\"text-decoration: underline; color: #888888;\"&gt;&lt;strong&gt;##lang.change.solution.description##&lt;/strong&gt;&lt;/span&gt; : ##change.solution.description##&lt;br /&gt;##ENDIFchange.storestatus##&lt;/p&gt;\n&lt;div class=\"description b\"&gt;##lang.change.numberofproblems##&#160;: ##change.numberofproblems##&lt;/div&gt;\n&lt;p&gt;##FOREACHproblems##&lt;/p&gt;\n&lt;div&gt;&lt;strong&gt; [##problem.date##] &lt;em&gt;##lang.change.title## : &lt;a href=\"##problem.url##\"&gt;##problem.title## &lt;/a&gt;&lt;/em&gt;&lt;/strong&gt;&lt;br /&gt; &lt;span style=\"color: #8b8c8f; font-weight: bold; text-decoration: underline;\"&gt; &lt;/span&gt;&lt;span style=\"color: #8b8c8f; font-weight: bold; text-decoration: underline;\"&gt;##lang.change.content## &lt;/span&gt; ##problem.content##\n&lt;p&gt;##ENDFOREACHproblems##&lt;/p&gt;\n&lt;div class=\"description b\"&gt;##lang.change.numberoftasks##&#160;: ##change.numberoftasks##&lt;/div&gt;\n&lt;p&gt;##FOREACHtasks##&lt;/p&gt;\n&lt;div class=\"description b\"&gt;&lt;strong&gt;[##task.date##] &lt;/strong&gt;&lt;br /&gt; &lt;span style=\"color: #8b8c8f; font-weight: bold; text-decoration: underline;\"&gt; ##lang.task.author##&lt;/span&gt; ##task.author##&lt;br /&gt; &lt;span style=\"color: #8b8c8f; font-weight: bold; text-decoration: underline;\"&gt; ##lang.task.description##&lt;/span&gt; ##task.description##&lt;br /&gt; &lt;span style=\"color: #8b8c8f; font-weight: bold; text-decoration: underline;\"&gt; ##lang.task.time##&lt;/span&gt; ##task.time##&lt;br /&gt; &lt;span style=\"color: #8b8c8f; font-weight: bold; text-decoration: underline;\"&gt; ##lang.task.category##&lt;/span&gt; ##task.category##&lt;/div&gt;\n&lt;p&gt;##ENDFOREACHtasks##&lt;/p&gt;\n&lt;/div&gt;'),
(20, 20, '', '##mailcollector.action##', '##FOREACHmailcollectors##\n##lang.mailcollector.name## : ##mailcollector.name##\n##lang.mailcollector.errors## : ##mailcollector.errors##\n##mailcollector.url##\n##ENDFOREACHmailcollectors##', '&lt;p&gt;##FOREACHmailcollectors##&lt;br /&gt;##lang.mailcollector.name## : ##mailcollector.name##&lt;br /&gt; ##lang.mailcollector.errors## : ##mailcollector.errors##&lt;br /&gt;&lt;a href=\"##mailcollector.url##\"&gt;##mailcollector.url##&lt;/a&gt;&lt;br /&gt; ##ENDFOREACHmailcollectors##&lt;/p&gt;\n&lt;p&gt;&lt;/p&gt;'),
(21, 21, '', '##project.action## ##project.name## ##project.code##', '##lang.project.url## : ##project.url##\n\n##lang.project.description##\n\n##lang.project.name## : ##project.name##\n##lang.project.code## : ##project.code##\n##lang.project.manager## : ##project.manager##\n##lang.project.managergroup## : ##project.managergroup##\n##lang.project.creationdate## : ##project.creationdate##\n##lang.project.priority## : ##project.priority##\n##lang.project.state## : ##project.state##\n##lang.project.type## : ##project.type##\n##lang.project.description## : ##project.description##\n\n##lang.project.numberoftasks## : ##project.numberoftasks##\n\n\n\n##FOREACHtasks##\n\n[##task.creationdate##]\n##lang.task.name## : ##task.name##\n##lang.task.state## : ##task.state##\n##lang.task.type## : ##task.type##\n##lang.task.percent## : ##task.percent##\n##lang.task.description## : ##task.description##\n\n##ENDFOREACHtasks##', '&lt;p&gt;##lang.project.url## : &lt;a href=\"##project.url##\"&gt;##project.url##&lt;/a&gt;&lt;/p&gt;\n&lt;p&gt;&lt;strong&gt;##lang.project.description##&lt;/strong&gt;&lt;/p&gt;\n&lt;p&gt;##lang.project.name## : ##project.name##&lt;br /&gt;##lang.project.code## : ##project.code##&lt;br /&gt; ##lang.project.manager## : ##project.manager##&lt;br /&gt;##lang.project.managergroup## : ##project.managergroup##&lt;br /&gt; ##lang.project.creationdate## : ##project.creationdate##&lt;br /&gt;##lang.project.priority## : ##project.priority## &lt;br /&gt;##lang.project.state## : ##project.state##&lt;br /&gt;##lang.project.type## : ##project.type##&lt;br /&gt;##lang.project.description## : ##project.description##&lt;/p&gt;\n&lt;p&gt;##lang.project.numberoftasks## : ##project.numberoftasks##&lt;/p&gt;\n&lt;div&gt;\n&lt;p&gt;##FOREACHtasks##&lt;/p&gt;\n&lt;div&gt;&lt;strong&gt;[##task.creationdate##] &lt;/strong&gt;&lt;br /&gt; ##lang.task.name## : ##task.name##&lt;br /&gt;##lang.task.state## : ##task.state##&lt;br /&gt;##lang.task.type## : ##task.type##&lt;br /&gt;##lang.task.percent## : ##task.percent##&lt;br /&gt;##lang.task.description## : ##task.description##&lt;/div&gt;\n&lt;p&gt;##ENDFOREACHtasks##&lt;/p&gt;\n&lt;/div&gt;'),
(22, 22, '', '##projecttask.action## ##projecttask.name##', '##lang.projecttask.url## : ##projecttask.url##\n\n##lang.projecttask.description##\n\n##lang.projecttask.name## : ##projecttask.name##\n##lang.projecttask.project## : ##projecttask.project##\n##lang.projecttask.creationdate## : ##projecttask.creationdate##\n##lang.projecttask.state## : ##projecttask.state##\n##lang.projecttask.type## : ##projecttask.type##\n##lang.projecttask.description## : ##projecttask.description##\n\n##lang.projecttask.numberoftasks## : ##projecttask.numberoftasks##\n\n\n\n##FOREACHtasks##\n\n[##task.creationdate##]\n##lang.task.name## : ##task.name##\n##lang.task.state## : ##task.state##\n##lang.task.type## : ##task.type##\n##lang.task.percent## : ##task.percent##\n##lang.task.description## : ##task.description##\n\n##ENDFOREACHtasks##', '&lt;p&gt;##lang.projecttask.url## : &lt;a href=\"##projecttask.url##\"&gt;##projecttask.url##&lt;/a&gt;&lt;/p&gt;\n&lt;p&gt;&lt;strong&gt;##lang.projecttask.description##&lt;/strong&gt;&lt;/p&gt;\n&lt;p&gt;##lang.projecttask.name## : ##projecttask.name##&lt;br /&gt;##lang.projecttask.project## : &lt;a href=\"##projecttask.projecturl##\"&gt;##projecttask.project##&lt;/a&gt;&lt;br /&gt;##lang.projecttask.creationdate## : ##projecttask.creationdate##&lt;br /&gt;##lang.projecttask.state## : ##projecttask.state##&lt;br /&gt;##lang.projecttask.type## : ##projecttask.type##&lt;br /&gt;##lang.projecttask.description## : ##projecttask.description##&lt;/p&gt;\n&lt;p&gt;##lang.projecttask.numberoftasks## : ##projecttask.numberoftasks##&lt;/p&gt;\n&lt;div&gt;\n&lt;p&gt;##FOREACHtasks##&lt;/p&gt;\n&lt;div&gt;&lt;strong&gt;[##task.creationdate##] &lt;/strong&gt;&lt;br /&gt;##lang.task.name## : ##task.name##&lt;br /&gt;##lang.task.state## : ##task.state##&lt;br /&gt;##lang.task.type## : ##task.type##&lt;br /&gt;##lang.task.percent## : ##task.percent##&lt;br /&gt;##lang.task.description## : ##task.description##&lt;/div&gt;\n&lt;p&gt;##ENDFOREACHtasks##&lt;/p&gt;\n&lt;/div&gt;'),
(23, 23, '', '##objectlock.action##', '##objectlock.type## ###objectlock.id## - ##objectlock.name##\n\n      ##lang.objectlock.url##\n      ##objectlock.url##\n\n      ##lang.objectlock.date_mod##\n      ##objectlock.date_mod##\n\n      Hello ##objectlock.lockedby.firstname##,\n      Could go to this item and unlock it for me?\n      Thank you,\n      Regards,\n      ##objectlock.requester.firstname##', '&lt;table&gt;\n      &lt;tbody&gt;\n      &lt;tr&gt;&lt;th colspan=\"2\"&gt;&lt;a href=\"##objectlock.url##\"&gt;##objectlock.type## ###objectlock.id## - ##objectlock.name##&lt;/a&gt;&lt;/th&gt;&lt;/tr&gt;\n      &lt;tr&gt;\n      &lt;td&gt;##lang.objectlock.url##&lt;/td&gt;\n      &lt;td&gt;##objectlock.url##&lt;/td&gt;\n      &lt;/tr&gt;\n      &lt;tr&gt;\n      &lt;td&gt;##lang.objectlock.date_mod##&lt;/td&gt;\n      &lt;td&gt;##objectlock.date_mod##&lt;/td&gt;\n      &lt;/tr&gt;\n      &lt;/tbody&gt;\n      &lt;/table&gt;\n      &lt;p&gt;&lt;span style=\"font-size: small;\"&gt;Hello ##objectlock.lockedby.firstname##,&lt;br /&gt;Could go to this item and unlock it for me?&lt;br /&gt;Thank you,&lt;br /&gt;Regards,&lt;br /&gt;##objectlock.requester.firstname## ##objectlock.requester.lastname##&lt;/span&gt;&lt;/p&gt;'),
(24, 24, '', '##savedsearch.action## ##savedsearch.name##', '##savedsearch.type## ###savedsearch.id## - ##savedsearch.name##\n\n      ##savedsearch.message##\n\n      ##lang.savedsearch.url##\n      ##savedsearch.url##\n\n      Regards,', '&lt;table&gt;\n      &lt;tbody&gt;\n      &lt;tr&gt;&lt;th colspan=\"2\"&gt;&lt;a href=\"##savedsearch.url##\"&gt;##savedsearch.type## ###savedsearch.id## - ##savedsearch.name##&lt;/a&gt;&lt;/th&gt;&lt;/tr&gt;\n      &lt;tr&gt;&lt;td colspan=\"2\"&gt;&lt;a href=\"##savedsearch.url##\"&gt;##savedsearch.message##&lt;/a&gt;&lt;/td&gt;&lt;/tr&gt;\n      &lt;tr&gt;\n      &lt;td&gt;##lang.savedsearch.url##&lt;/td&gt;\n      &lt;td&gt;##savedsearch.url##&lt;/td&gt;\n      &lt;/tr&gt;\n      &lt;/tbody&gt;\n      &lt;/table&gt;\n      &lt;p&gt;&lt;span style=\"font-size: small;\"&gt;Hello &lt;br /&gt;Regards,&lt;/span&gt;&lt;/p&gt;'),
(25, 25, '', '##certificate.action##  ##certificate.entity##', '##lang.certificate.entity## : ##certificate.entity##\n\n##FOREACHcertificates##\n\n##lang.certificate.serial## : ##certificate.serial##\n\n##lang.certificate.expirationdate## : ##certificate.expirationdate##\n\n##certificate.url##\n ##ENDFOREACHcertificates##', '&lt;p&gt;\n##lang.certificate.entity## : ##certificate.entity##&lt;br /&gt;\n##FOREACHcertificates##\n&lt;br /&gt;##lang.certificate.name## : ##certificate.name##&lt;br /&gt;\n##lang.certificate.serial## : ##certificate.serial##&lt;br /&gt;\n##lang.certificate.expirationdate## : ##certificate.expirationdate##\n&lt;br /&gt; &lt;a href=\"##certificate.url##\"&gt; ##certificate.url##\n&lt;/a&gt;&lt;br /&gt; ##ENDFOREACHcertificates##&lt;/p&gt;');

-- --------------------------------------------------------

--
-- Structure de la table `glpi_notimportedemails`
--

CREATE TABLE `glpi_notimportedemails` (
  `id` int(11) NOT NULL,
  `from` varchar(255) NOT NULL,
  `to` varchar(255) NOT NULL,
  `mailcollectors_id` int(11) NOT NULL DEFAULT '0',
  `date` datetime NOT NULL,
  `subject` mediumtext,
  `messageid` varchar(255) NOT NULL,
  `reason` int(11) NOT NULL DEFAULT '0',
  `users_id` int(11) NOT NULL DEFAULT '0'
);

-- --------------------------------------------------------

--
-- Structure de la table `glpi_objectlocks`
--

CREATE TABLE `glpi_objectlocks` (
  `id` int(11) NOT NULL,
  `itemtype` varchar(100) NOT NULL COMMENT 'Type of locked object',
  `items_id` int(11) NOT NULL COMMENT 'RELATION to various tables, according to itemtype (ID)',
  `users_id` int(11) NOT NULL COMMENT 'id of the locker',
  `date_mod` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'Timestamp of the lock'
);

-- --------------------------------------------------------

--
-- Structure de la table `glpi_olalevelactions`
--

CREATE TABLE `glpi_olalevelactions` (
  `id` int(11) NOT NULL,
  `olalevels_id` int(11) NOT NULL DEFAULT '0',
  `action_type` varchar(255) DEFAULT NULL,
  `field` varchar(255) DEFAULT NULL,
  `value` varchar(255) DEFAULT NULL
);

-- --------------------------------------------------------

--
-- Structure de la table `glpi_olalevelcriterias`
--

CREATE TABLE `glpi_olalevelcriterias` (
  `id` int(11) NOT NULL,
  `olalevels_id` int(11) NOT NULL DEFAULT '0',
  `criteria` varchar(255) DEFAULT NULL,
  `condition` int(11) NOT NULL DEFAULT '0' COMMENT 'see define.php PATTERN_* and REGEX_* constant',
  `pattern` varchar(255) DEFAULT NULL
);

-- --------------------------------------------------------

--
-- Structure de la table `glpi_olalevels`
--

CREATE TABLE `glpi_olalevels` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `olas_id` int(11) NOT NULL DEFAULT '0',
  `execution_time` int(11) NOT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT '1',
  `entities_id` int(11) NOT NULL DEFAULT '0',
  `is_recursive` tinyint(1) NOT NULL DEFAULT '0',
  `match` char(10) DEFAULT NULL COMMENT 'see define.php *_MATCHING constant',
  `uuid` varchar(255) DEFAULT NULL
);

-- --------------------------------------------------------

--
-- Structure de la table `glpi_olalevels_tickets`
--

CREATE TABLE `glpi_olalevels_tickets` (
  `id` int(11) NOT NULL,
  `tickets_id` int(11) NOT NULL DEFAULT '0',
  `olalevels_id` int(11) NOT NULL DEFAULT '0',
  `date` datetime DEFAULT NULL
);

-- --------------------------------------------------------

--
-- Structure de la table `glpi_olas`
--

CREATE TABLE `glpi_olas` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `entities_id` int(11) NOT NULL DEFAULT '0',
  `is_recursive` tinyint(1) NOT NULL DEFAULT '0',
  `type` int(11) NOT NULL DEFAULT '0',
  `comment` text,
  `number_time` int(11) NOT NULL,
  `calendars_id` int(11) NOT NULL DEFAULT '0',
  `date_mod` datetime DEFAULT NULL,
  `definition_time` varchar(255) DEFAULT NULL,
  `end_of_working_day` tinyint(1) NOT NULL DEFAULT '0',
  `date_creation` datetime DEFAULT NULL,
  `slms_id` int(11) NOT NULL DEFAULT '0'
);

-- --------------------------------------------------------

--
-- Structure de la table `glpi_operatingsystemarchitectures`
--

CREATE TABLE `glpi_operatingsystemarchitectures` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `comment` text,
  `date_mod` datetime DEFAULT NULL,
  `date_creation` datetime DEFAULT NULL
);

-- --------------------------------------------------------

--
-- Structure de la table `glpi_operatingsystemeditions`
--

CREATE TABLE `glpi_operatingsystemeditions` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `comment` text,
  `date_mod` datetime DEFAULT NULL,
  `date_creation` datetime DEFAULT NULL
);

-- --------------------------------------------------------

--
-- Structure de la table `glpi_operatingsystemkernels`
--

CREATE TABLE `glpi_operatingsystemkernels` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `comment` text,
  `date_mod` datetime DEFAULT NULL,
  `date_creation` datetime DEFAULT NULL
);

-- --------------------------------------------------------

--
-- Structure de la table `glpi_operatingsystemkernelversions`
--

CREATE TABLE `glpi_operatingsystemkernelversions` (
  `id` int(11) NOT NULL,
  `operatingsystemkernels_id` int(11) NOT NULL DEFAULT '0',
  `name` varchar(255) DEFAULT NULL,
  `comment` text,
  `date_mod` datetime DEFAULT NULL,
  `date_creation` datetime DEFAULT NULL
);

-- --------------------------------------------------------

--
-- Structure de la table `glpi_operatingsystems`
--

CREATE TABLE `glpi_operatingsystems` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `comment` text,
  `date_mod` datetime DEFAULT NULL,
  `date_creation` datetime DEFAULT NULL
);

-- --------------------------------------------------------

--
-- Structure de la table `glpi_operatingsystemservicepacks`
--

CREATE TABLE `glpi_operatingsystemservicepacks` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `comment` text,
  `date_mod` datetime DEFAULT NULL,
  `date_creation` datetime DEFAULT NULL
);

-- --------------------------------------------------------

--
-- Structure de la table `glpi_operatingsystemversions`
--

CREATE TABLE `glpi_operatingsystemversions` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `comment` text,
  `date_mod` datetime DEFAULT NULL,
  `date_creation` datetime DEFAULT NULL
);

-- --------------------------------------------------------

--
-- Structure de la table `glpi_peripheralmodels`
--

CREATE TABLE `glpi_peripheralmodels` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `comment` text,
  `product_number` varchar(255) DEFAULT NULL,
  `date_mod` datetime DEFAULT NULL,
  `date_creation` datetime DEFAULT NULL
);

-- --------------------------------------------------------

--
-- Structure de la table `glpi_peripherals`
--

CREATE TABLE `glpi_peripherals` (
  `id` int(11) NOT NULL,
  `entities_id` int(11) NOT NULL DEFAULT '0',
  `name` varchar(255) DEFAULT NULL,
  `date_mod` datetime DEFAULT NULL,
  `contact` varchar(255) DEFAULT NULL,
  `contact_num` varchar(255) DEFAULT NULL,
  `users_id_tech` int(11) NOT NULL DEFAULT '0',
  `groups_id_tech` int(11) NOT NULL DEFAULT '0',
  `comment` text,
  `serial` varchar(255) DEFAULT NULL,
  `otherserial` varchar(255) DEFAULT NULL,
  `locations_id` int(11) NOT NULL DEFAULT '0',
  `peripheraltypes_id` int(11) NOT NULL DEFAULT '0',
  `peripheralmodels_id` int(11) NOT NULL DEFAULT '0',
  `brand` varchar(255) DEFAULT NULL,
  `manufacturers_id` int(11) NOT NULL DEFAULT '0',
  `is_global` tinyint(1) NOT NULL DEFAULT '0',
  `is_deleted` tinyint(1) NOT NULL DEFAULT '0',
  `is_template` tinyint(1) NOT NULL DEFAULT '0',
  `template_name` varchar(255) DEFAULT NULL,
  `users_id` int(11) NOT NULL DEFAULT '0',
  `groups_id` int(11) NOT NULL DEFAULT '0',
  `states_id` int(11) NOT NULL DEFAULT '0',
  `ticket_tco` decimal(20,4) DEFAULT '0.0000',
  `is_dynamic` tinyint(1) NOT NULL DEFAULT '0',
  `date_creation` datetime DEFAULT NULL,
  `is_recursive` tinyint(1) NOT NULL DEFAULT '0'
);

-- --------------------------------------------------------

--
-- Structure de la table `glpi_peripheraltypes`
--

CREATE TABLE `glpi_peripheraltypes` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `comment` text,
  `date_mod` datetime DEFAULT NULL,
  `date_creation` datetime DEFAULT NULL
);

-- --------------------------------------------------------

--
-- Structure de la table `glpi_phonemodels`
--

CREATE TABLE `glpi_phonemodels` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `comment` text,
  `product_number` varchar(255) DEFAULT NULL,
  `date_mod` datetime DEFAULT NULL,
  `date_creation` datetime DEFAULT NULL
);

-- --------------------------------------------------------

--
-- Structure de la table `glpi_phonepowersupplies`
--

CREATE TABLE `glpi_phonepowersupplies` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `comment` text,
  `date_mod` datetime DEFAULT NULL,
  `date_creation` datetime DEFAULT NULL
);

-- --------------------------------------------------------

--
-- Structure de la table `glpi_phones`
--

CREATE TABLE `glpi_phones` (
  `id` int(11) NOT NULL,
  `entities_id` int(11) NOT NULL DEFAULT '0',
  `name` varchar(255) DEFAULT NULL,
  `date_mod` datetime DEFAULT NULL,
  `contact` varchar(255) DEFAULT NULL,
  `contact_num` varchar(255) DEFAULT NULL,
  `users_id_tech` int(11) NOT NULL DEFAULT '0',
  `groups_id_tech` int(11) NOT NULL DEFAULT '0',
  `comment` text,
  `serial` varchar(255) DEFAULT NULL,
  `otherserial` varchar(255) DEFAULT NULL,
  `locations_id` int(11) NOT NULL DEFAULT '0',
  `phonetypes_id` int(11) NOT NULL DEFAULT '0',
  `phonemodels_id` int(11) NOT NULL DEFAULT '0',
  `brand` varchar(255) DEFAULT NULL,
  `phonepowersupplies_id` int(11) NOT NULL DEFAULT '0',
  `number_line` varchar(255) DEFAULT NULL,
  `have_headset` tinyint(1) NOT NULL DEFAULT '0',
  `have_hp` tinyint(1) NOT NULL DEFAULT '0',
  `manufacturers_id` int(11) NOT NULL DEFAULT '0',
  `is_global` tinyint(1) NOT NULL DEFAULT '0',
  `is_deleted` tinyint(1) NOT NULL DEFAULT '0',
  `is_template` tinyint(1) NOT NULL DEFAULT '0',
  `template_name` varchar(255) DEFAULT NULL,
  `users_id` int(11) NOT NULL DEFAULT '0',
  `groups_id` int(11) NOT NULL DEFAULT '0',
  `states_id` int(11) NOT NULL DEFAULT '0',
  `ticket_tco` decimal(20,4) DEFAULT '0.0000',
  `is_dynamic` tinyint(1) NOT NULL DEFAULT '0',
  `date_creation` datetime DEFAULT NULL,
  `is_recursive` tinyint(1) NOT NULL DEFAULT '0'
);

-- --------------------------------------------------------

--
-- Structure de la table `glpi_phonetypes`
--

CREATE TABLE `glpi_phonetypes` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `comment` text,
  `date_mod` datetime DEFAULT NULL,
  `date_creation` datetime DEFAULT NULL
);

-- --------------------------------------------------------

--
-- Structure de la table `glpi_planningrecalls`
--

CREATE TABLE `glpi_planningrecalls` (
  `id` int(11) NOT NULL,
  `items_id` int(11) NOT NULL DEFAULT '0',
  `itemtype` varchar(100) NOT NULL,
  `users_id` int(11) NOT NULL DEFAULT '0',
  `before_time` int(11) NOT NULL DEFAULT '-10',
  `when` datetime DEFAULT NULL
);

-- --------------------------------------------------------

--
-- Structure de la table `glpi_plugins`
--

CREATE TABLE `glpi_plugins` (
  `id` int(11) NOT NULL,
  `directory` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `version` varchar(255) NOT NULL,
  `state` int(11) NOT NULL DEFAULT '0' COMMENT 'see define.php PLUGIN_* constant',
  `author` varchar(255) DEFAULT NULL,
  `homepage` varchar(255) DEFAULT NULL,
  `license` varchar(255) DEFAULT NULL
);

-- --------------------------------------------------------

--
-- Structure de la table `glpi_printermodels`
--

CREATE TABLE `glpi_printermodels` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `comment` text,
  `product_number` varchar(255) DEFAULT NULL,
  `date_mod` datetime DEFAULT NULL,
  `date_creation` datetime DEFAULT NULL
);

-- --------------------------------------------------------

--
-- Structure de la table `glpi_printers`
--

CREATE TABLE `glpi_printers` (
  `id` int(11) NOT NULL,
  `entities_id` int(11) NOT NULL DEFAULT '0',
  `is_recursive` tinyint(1) NOT NULL DEFAULT '0',
  `name` varchar(255) DEFAULT NULL,
  `date_mod` datetime DEFAULT NULL,
  `contact` varchar(255) DEFAULT NULL,
  `contact_num` varchar(255) DEFAULT NULL,
  `users_id_tech` int(11) NOT NULL DEFAULT '0',
  `groups_id_tech` int(11) NOT NULL DEFAULT '0',
  `serial` varchar(255) DEFAULT NULL,
  `otherserial` varchar(255) DEFAULT NULL,
  `have_serial` tinyint(1) NOT NULL DEFAULT '0',
  `have_parallel` tinyint(1) NOT NULL DEFAULT '0',
  `have_usb` tinyint(1) NOT NULL DEFAULT '0',
  `have_wifi` tinyint(1) NOT NULL DEFAULT '0',
  `have_ethernet` tinyint(1) NOT NULL DEFAULT '0',
  `comment` text,
  `memory_size` varchar(255) DEFAULT NULL,
  `locations_id` int(11) NOT NULL DEFAULT '0',
  `domains_id` int(11) NOT NULL DEFAULT '0',
  `networks_id` int(11) NOT NULL DEFAULT '0',
  `printertypes_id` int(11) NOT NULL DEFAULT '0',
  `printermodels_id` int(11) NOT NULL DEFAULT '0',
  `manufacturers_id` int(11) NOT NULL DEFAULT '0',
  `is_global` tinyint(1) NOT NULL DEFAULT '0',
  `is_deleted` tinyint(1) NOT NULL DEFAULT '0',
  `is_template` tinyint(1) NOT NULL DEFAULT '0',
  `template_name` varchar(255) DEFAULT NULL,
  `init_pages_counter` int(11) NOT NULL DEFAULT '0',
  `last_pages_counter` int(11) NOT NULL DEFAULT '0',
  `users_id` int(11) NOT NULL DEFAULT '0',
  `groups_id` int(11) NOT NULL DEFAULT '0',
  `states_id` int(11) NOT NULL DEFAULT '0',
  `ticket_tco` decimal(20,4) DEFAULT '0.0000',
  `is_dynamic` tinyint(1) NOT NULL DEFAULT '0',
  `date_creation` datetime DEFAULT NULL
);

-- --------------------------------------------------------

--
-- Structure de la table `glpi_printertypes`
--

CREATE TABLE `glpi_printertypes` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `comment` text,
  `date_mod` datetime DEFAULT NULL,
  `date_creation` datetime DEFAULT NULL
);

-- --------------------------------------------------------

--
-- Structure de la table `glpi_problemcosts`
--

CREATE TABLE `glpi_problemcosts` (
  `id` int(11) NOT NULL,
  `problems_id` int(11) NOT NULL DEFAULT '0',
  `name` varchar(255) DEFAULT NULL,
  `comment` text,
  `begin_date` date DEFAULT NULL,
  `end_date` date DEFAULT NULL,
  `actiontime` int(11) NOT NULL DEFAULT '0',
  `cost_time` decimal(20,4) NOT NULL DEFAULT '0.0000',
  `cost_fixed` decimal(20,4) NOT NULL DEFAULT '0.0000',
  `cost_material` decimal(20,4) NOT NULL DEFAULT '0.0000',
  `budgets_id` int(11) NOT NULL DEFAULT '0',
  `entities_id` int(11) NOT NULL DEFAULT '0'
);

-- --------------------------------------------------------

--
-- Structure de la table `glpi_problems`
--

CREATE TABLE `glpi_problems` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `entities_id` int(11) NOT NULL DEFAULT '0',
  `is_recursive` tinyint(1) NOT NULL DEFAULT '0',
  `is_deleted` tinyint(1) NOT NULL DEFAULT '0',
  `status` int(11) NOT NULL DEFAULT '1',
  `content` longtext,
  `date_mod` datetime DEFAULT NULL,
  `date` datetime DEFAULT NULL,
  `solvedate` datetime DEFAULT NULL,
  `closedate` datetime DEFAULT NULL,
  `time_to_resolve` datetime DEFAULT NULL,
  `users_id_recipient` int(11) NOT NULL DEFAULT '0',
  `users_id_lastupdater` int(11) NOT NULL DEFAULT '0',
  `urgency` int(11) NOT NULL DEFAULT '1',
  `impact` int(11) NOT NULL DEFAULT '1',
  `priority` int(11) NOT NULL DEFAULT '1',
  `itilcategories_id` int(11) NOT NULL DEFAULT '0',
  `impactcontent` longtext,
  `causecontent` longtext,
  `symptomcontent` longtext,
  `solutiontypes_id` int(11) NOT NULL DEFAULT '0',
  `solution` longtext,
  `actiontime` int(11) NOT NULL DEFAULT '0',
  `begin_waiting_date` datetime DEFAULT NULL,
  `waiting_duration` int(11) NOT NULL DEFAULT '0',
  `close_delay_stat` int(11) NOT NULL DEFAULT '0',
  `solve_delay_stat` int(11) NOT NULL DEFAULT '0',
  `date_creation` datetime DEFAULT NULL
);

-- --------------------------------------------------------

--
-- Structure de la table `glpi_problems_suppliers`
--

CREATE TABLE `glpi_problems_suppliers` (
  `id` int(11) NOT NULL,
  `problems_id` int(11) NOT NULL DEFAULT '0',
  `suppliers_id` int(11) NOT NULL DEFAULT '0',
  `type` int(11) NOT NULL DEFAULT '1',
  `use_notification` tinyint(1) NOT NULL DEFAULT '0',
  `alternative_email` varchar(255) DEFAULT NULL
);

-- --------------------------------------------------------

--
-- Structure de la table `glpi_problems_tickets`
--

CREATE TABLE `glpi_problems_tickets` (
  `id` int(11) NOT NULL,
  `problems_id` int(11) NOT NULL DEFAULT '0',
  `tickets_id` int(11) NOT NULL DEFAULT '0'
);

-- --------------------------------------------------------

--
-- Structure de la table `glpi_problems_users`
--

CREATE TABLE `glpi_problems_users` (
  `id` int(11) NOT NULL,
  `problems_id` int(11) NOT NULL DEFAULT '0',
  `users_id` int(11) NOT NULL DEFAULT '0',
  `type` int(11) NOT NULL DEFAULT '1',
  `use_notification` tinyint(1) NOT NULL DEFAULT '0',
  `alternative_email` varchar(255) DEFAULT NULL
);

-- --------------------------------------------------------

--
-- Structure de la table `glpi_problemtasks`
--

CREATE TABLE `glpi_problemtasks` (
  `id` int(11) NOT NULL,
  `problems_id` int(11) NOT NULL DEFAULT '0',
  `taskcategories_id` int(11) NOT NULL DEFAULT '0',
  `date` datetime DEFAULT NULL,
  `begin` datetime DEFAULT NULL,
  `end` datetime DEFAULT NULL,
  `users_id` int(11) NOT NULL DEFAULT '0',
  `users_id_editor` int(11) NOT NULL DEFAULT '0',
  `users_id_tech` int(11) NOT NULL DEFAULT '0',
  `groups_id_tech` int(11) NOT NULL DEFAULT '0',
  `content` longtext,
  `actiontime` int(11) NOT NULL DEFAULT '0',
  `state` int(11) NOT NULL DEFAULT '0',
  `date_mod` datetime DEFAULT NULL,
  `date_creation` datetime DEFAULT NULL,
  `tasktemplates_id` int(11) NOT NULL DEFAULT '0'
);

-- --------------------------------------------------------

--
-- Structure de la table `glpi_profilerights`
--

CREATE TABLE `glpi_profilerights` (
  `id` int(11) NOT NULL,
  `profiles_id` int(11) NOT NULL DEFAULT '0',
  `name` varchar(255) DEFAULT NULL,
  `rights` int(11) NOT NULL DEFAULT '0'
);

--
-- Déchargement des données de la table `glpi_profilerights`
--

INSERT INTO `glpi_profilerights` (`id`, `profiles_id`, `name`, `rights`) VALUES
(1, 1, 'computer', 0),
(2, 1, 'monitor', 0),
(3, 1, 'software', 0),
(4, 1, 'networking', 0),
(5, 1, 'internet', 0),
(6, 1, 'printer', 0),
(7, 1, 'peripheral', 0),
(8, 1, 'cartridge', 0),
(9, 1, 'consumable', 0),
(10, 1, 'phone', 0),
(734, 6, 'queuednotification', 0),
(12, 1, 'contact_enterprise', 0),
(13, 1, 'document', 0),
(14, 1, 'contract', 0),
(15, 1, 'infocom', 0),
(16, 1, 'knowbase', 10240),
(20, 1, 'reservation', 1024),
(21, 1, 'reports', 0),
(22, 1, 'dropdown', 0),
(24, 1, 'device', 0),
(25, 1, 'typedoc', 0),
(26, 1, 'link', 0),
(27, 1, 'config', 0),
(29, 1, 'rule_ticket', 0),
(30, 1, 'rule_import', 0),
(31, 1, 'rule_ldap', 0),
(32, 1, 'rule_softwarecategories', 0),
(33, 1, 'search_config', 0),
(684, 5, 'location', 0),
(679, 7, 'domain', 31),
(36, 1, 'profile', 0),
(37, 1, 'user', 0),
(39, 1, 'group', 0),
(40, 1, 'entity', 0),
(41, 1, 'transfer', 0),
(42, 1, 'logs', 0),
(43, 1, 'reminder_public', 1),
(44, 1, 'rssfeed_public', 1),
(45, 1, 'bookmark_public', 0),
(46, 1, 'backup', 0),
(47, 1, 'ticket', 131077),
(51, 1, 'followup', 5),
(52, 1, 'task', 1),
(64, 1, 'planning', 0),
(716, 2, 'state', 0),
(709, 2, 'taskcategory', 0),
(67, 1, 'statistic', 0),
(68, 1, 'password_update', 1),
(70, 1, 'show_group_hardware', 0),
(71, 1, 'rule_dictionnary_software', 0),
(72, 1, 'rule_dictionnary_dropdown', 0),
(73, 1, 'budget', 0),
(75, 1, 'notification', 0),
(76, 1, 'rule_mailcollector', 0),
(728, 7, 'solutiontemplate', 31),
(79, 1, 'calendar', 0),
(80, 1, 'slm', 0),
(81, 1, 'rule_dictionnary_printer', 0),
(85, 1, 'problem', 0),
(702, 2, 'netpoint', 0),
(697, 4, 'knowbasecategory', 31),
(691, 5, 'itilcategory', 0),
(89, 1, 'tickettemplate', 0),
(90, 1, 'ticketrecurrent', 0),
(91, 1, 'ticketcost', 1),
(671, 6, 'changevalidation', 20),
(94, 1, 'ticketvalidation', 0),
(95, 2, 'computer', 33),
(96, 2, 'monitor', 33),
(97, 2, 'software', 33),
(98, 2, 'networking', 33),
(99, 2, 'internet', 1),
(100, 2, 'printer', 33),
(101, 2, 'peripheral', 33),
(102, 2, 'cartridge', 33),
(103, 2, 'consumable', 33),
(104, 2, 'phone', 33),
(733, 5, 'queuednotification', 0),
(106, 2, 'contact_enterprise', 33),
(107, 2, 'document', 33),
(108, 2, 'contract', 33),
(109, 2, 'infocom', 1),
(110, 2, 'knowbase', 10241),
(114, 2, 'reservation', 1025),
(115, 2, 'reports', 1),
(116, 2, 'dropdown', 0),
(118, 2, 'device', 0),
(119, 2, 'typedoc', 1),
(120, 2, 'link', 1),
(121, 2, 'config', 0),
(123, 2, 'rule_ticket', 0),
(124, 2, 'rule_import', 0),
(125, 2, 'rule_ldap', 0),
(126, 2, 'rule_softwarecategories', 0),
(127, 2, 'search_config', 1055),
(683, 4, 'location', 31),
(678, 6, 'domain', 0),
(130, 2, 'profile', 0),
(131, 2, 'user', 2049),
(133, 2, 'group', 1),
(134, 2, 'entity', 32),
(135, 2, 'transfer', 0),
(136, 2, 'logs', 0),
(137, 2, 'reminder_public', 0),
(138, 2, 'rssfeed_public', 0),
(139, 2, 'bookmark_public', 0),
(140, 2, 'backup', 1024),
(141, 2, 'ticket', 168989),
(145, 2, 'followup', 5),
(146, 2, 'task', 1),
(748, 6, 'projecttask', 1025),
(749, 7, 'projecttask', 1025),
(158, 2, 'planning', 1),
(715, 1, 'state', 0),
(708, 1, 'taskcategory', 0),
(161, 2, 'statistic', 1),
(162, 2, 'password_update', 1),
(164, 2, 'show_group_hardware', 0),
(165, 2, 'rule_dictionnary_software', 0),
(166, 2, 'rule_dictionnary_dropdown', 0),
(167, 2, 'budget', 33),
(169, 2, 'notification', 0),
(170, 2, 'rule_mailcollector', 0),
(726, 5, 'solutiontemplate', 0),
(727, 6, 'solutiontemplate', 0),
(173, 2, 'calendar', 0),
(174, 2, 'slm', 0),
(175, 2, 'rule_dictionnary_printer', 0),
(179, 2, 'problem', 1057),
(701, 1, 'netpoint', 0),
(696, 3, 'knowbasecategory', 31),
(690, 4, 'itilcategory', 31),
(183, 2, 'tickettemplate', 0),
(184, 2, 'ticketrecurrent', 0),
(185, 2, 'ticketcost', 1),
(669, 4, 'changevalidation', 1044),
(670, 5, 'changevalidation', 20),
(188, 2, 'ticketvalidation', 15384),
(189, 3, 'computer', 127),
(190, 3, 'monitor', 127),
(191, 3, 'software', 127),
(192, 3, 'networking', 127),
(193, 3, 'internet', 31),
(194, 3, 'printer', 127),
(195, 3, 'peripheral', 127),
(196, 3, 'cartridge', 127),
(197, 3, 'consumable', 127),
(198, 3, 'phone', 127),
(732, 4, 'queuednotification', 31),
(200, 3, 'contact_enterprise', 127),
(201, 3, 'document', 127),
(202, 3, 'contract', 127),
(203, 3, 'infocom', 31),
(204, 3, 'knowbase', 14367),
(208, 3, 'reservation', 1055),
(209, 3, 'reports', 1),
(210, 3, 'dropdown', 31),
(212, 3, 'device', 31),
(213, 3, 'typedoc', 31),
(214, 3, 'link', 31),
(215, 3, 'config', 0),
(217, 3, 'rule_ticket', 0),
(218, 3, 'rule_import', 0),
(219, 3, 'rule_ldap', 0),
(220, 3, 'rule_softwarecategories', 0),
(221, 3, 'search_config', 3103),
(682, 3, 'location', 31),
(677, 5, 'domain', 0),
(224, 3, 'profile', 1),
(225, 3, 'user', 7199),
(227, 3, 'group', 31),
(228, 3, 'entity', 96),
(229, 3, 'transfer', 0),
(230, 3, 'logs', 0),
(231, 3, 'reminder_public', 0),
(232, 3, 'rssfeed_public', 0),
(233, 3, 'bookmark_public', 0),
(234, 3, 'backup', 1024),
(235, 3, 'ticket', 259103),
(239, 3, 'followup', 15383),
(240, 3, 'task', 13329),
(745, 3, 'projecttask', 1025),
(746, 4, 'projecttask', 1025),
(747, 5, 'projecttask', 0),
(252, 3, 'planning', 3073),
(714, 7, 'taskcategory', 31),
(707, 7, 'netpoint', 31),
(255, 3, 'statistic', 1),
(256, 3, 'password_update', 1),
(258, 3, 'show_group_hardware', 0),
(259, 3, 'rule_dictionnary_software', 0),
(260, 3, 'rule_dictionnary_dropdown', 0),
(261, 3, 'budget', 127),
(263, 3, 'notification', 0),
(264, 3, 'rule_mailcollector', 0),
(724, 3, 'solutiontemplate', 31),
(725, 4, 'solutiontemplate', 31),
(267, 3, 'calendar', 31),
(268, 3, 'slm', 0),
(269, 3, 'rule_dictionnary_printer', 0),
(273, 3, 'problem', 1151),
(695, 2, 'knowbasecategory', 0),
(689, 3, 'itilcategory', 31),
(277, 3, 'tickettemplate', 0),
(278, 3, 'ticketrecurrent', 0),
(279, 3, 'ticketcost', 31),
(667, 2, 'changevalidation', 1044),
(668, 3, 'changevalidation', 1044),
(282, 3, 'ticketvalidation', 15384),
(283, 4, 'computer', 255),
(284, 4, 'monitor', 255),
(285, 4, 'software', 255),
(286, 4, 'networking', 255),
(287, 4, 'internet', 159),
(288, 4, 'printer', 255),
(289, 4, 'peripheral', 255),
(290, 4, 'cartridge', 255),
(291, 4, 'consumable', 255),
(292, 4, 'phone', 255),
(294, 4, 'contact_enterprise', 255),
(295, 4, 'document', 255),
(296, 4, 'contract', 255),
(297, 4, 'infocom', 31),
(298, 4, 'knowbase', 15519),
(302, 4, 'reservation', 1055),
(303, 4, 'reports', 1),
(304, 4, 'dropdown', 31),
(306, 4, 'device', 31),
(307, 4, 'typedoc', 31),
(308, 4, 'link', 159),
(309, 4, 'config', 31),
(311, 4, 'rule_ticket', 1055),
(312, 4, 'rule_import', 31),
(313, 4, 'rule_ldap', 31),
(314, 4, 'rule_softwarecategories', 31),
(315, 4, 'search_config', 3103),
(681, 2, 'location', 0),
(676, 4, 'domain', 31),
(318, 4, 'profile', 159),
(319, 4, 'user', 7327),
(321, 4, 'group', 159),
(322, 4, 'entity', 3327),
(323, 4, 'transfer', 31),
(324, 4, 'logs', 1),
(325, 4, 'reminder_public', 159),
(326, 4, 'rssfeed_public', 159),
(327, 4, 'bookmark_public', 31),
(328, 4, 'backup', 1055),
(329, 4, 'ticket', 259231),
(333, 4, 'followup', 15383),
(334, 4, 'task', 13329),
(742, 7, 'project', 1151),
(743, 1, 'projecttask', 0),
(744, 2, 'projecttask', 1025),
(346, 4, 'planning', 3073),
(713, 6, 'taskcategory', 0),
(706, 6, 'netpoint', 0),
(349, 4, 'statistic', 1),
(350, 4, 'password_update', 1),
(352, 4, 'show_group_hardware', 0),
(353, 4, 'rule_dictionnary_software', 31),
(354, 4, 'rule_dictionnary_dropdown', 31),
(355, 4, 'budget', 255),
(357, 4, 'notification', 31),
(358, 4, 'rule_mailcollector', 31),
(722, 1, 'solutiontemplate', 0),
(723, 2, 'solutiontemplate', 0),
(361, 4, 'calendar', 31),
(362, 4, 'slm', 31),
(363, 4, 'rule_dictionnary_printer', 31),
(367, 4, 'problem', 1279),
(694, 1, 'knowbasecategory', 0),
(688, 2, 'itilcategory', 0),
(371, 4, 'tickettemplate', 31),
(372, 4, 'ticketrecurrent', 31),
(373, 4, 'ticketcost', 31),
(665, 7, 'change', 1151),
(666, 1, 'changevalidation', 0),
(376, 4, 'ticketvalidation', 15384),
(377, 5, 'computer', 0),
(378, 5, 'monitor', 0),
(379, 5, 'software', 0),
(380, 5, 'networking', 0),
(381, 5, 'internet', 0),
(382, 5, 'printer', 0),
(383, 5, 'peripheral', 0),
(384, 5, 'cartridge', 0),
(385, 5, 'consumable', 0),
(386, 5, 'phone', 0),
(731, 3, 'queuednotification', 0),
(388, 5, 'contact_enterprise', 0),
(389, 5, 'document', 0),
(390, 5, 'contract', 0),
(391, 5, 'infocom', 0),
(392, 5, 'knowbase', 8192),
(396, 5, 'reservation', 0),
(397, 5, 'reports', 0),
(398, 5, 'dropdown', 0),
(400, 5, 'device', 0),
(401, 5, 'typedoc', 0),
(402, 5, 'link', 0),
(403, 5, 'config', 0),
(405, 5, 'rule_ticket', 0),
(406, 5, 'rule_import', 0),
(407, 5, 'rule_ldap', 0),
(408, 5, 'rule_softwarecategories', 0),
(409, 5, 'search_config', 0),
(680, 1, 'location', 0),
(675, 3, 'domain', 31),
(412, 5, 'profile', 0),
(413, 5, 'user', 1025),
(415, 5, 'group', 0),
(416, 5, 'entity', 0),
(417, 5, 'transfer', 0),
(418, 5, 'logs', 0),
(419, 5, 'reminder_public', 0),
(420, 5, 'rssfeed_public', 0),
(421, 5, 'bookmark_public', 0),
(422, 5, 'backup', 0),
(423, 5, 'ticket', 140295),
(427, 5, 'followup', 12295),
(428, 5, 'task', 8193),
(739, 4, 'project', 1279),
(740, 5, 'project', 1150),
(741, 6, 'project', 1151),
(440, 5, 'planning', 1),
(712, 5, 'taskcategory', 0),
(705, 5, 'netpoint', 0),
(443, 5, 'statistic', 1),
(444, 5, 'password_update', 1),
(446, 5, 'show_group_hardware', 0),
(447, 5, 'rule_dictionnary_software', 0),
(448, 5, 'rule_dictionnary_dropdown', 0),
(449, 5, 'budget', 0),
(451, 5, 'notification', 0),
(452, 5, 'rule_mailcollector', 0),
(720, 6, 'state', 0),
(721, 7, 'state', 31),
(455, 5, 'calendar', 0),
(456, 5, 'slm', 0),
(457, 5, 'rule_dictionnary_printer', 0),
(461, 5, 'problem', 1024),
(700, 7, 'knowbasecategory', 31),
(687, 1, 'itilcategory', 0),
(465, 5, 'tickettemplate', 1),
(466, 5, 'ticketrecurrent', 0),
(467, 5, 'ticketcost', 31),
(663, 5, 'change', 1054),
(664, 6, 'change', 1151),
(470, 5, 'ticketvalidation', 3088),
(471, 6, 'computer', 127),
(472, 6, 'monitor', 127),
(473, 6, 'software', 127),
(474, 6, 'networking', 127),
(475, 6, 'internet', 31),
(476, 6, 'printer', 127),
(477, 6, 'peripheral', 127),
(478, 6, 'cartridge', 127),
(479, 6, 'consumable', 127),
(480, 6, 'phone', 127),
(730, 2, 'queuednotification', 0),
(482, 6, 'contact_enterprise', 96),
(483, 6, 'document', 127),
(484, 6, 'contract', 96),
(485, 6, 'infocom', 0),
(486, 6, 'knowbase', 14367),
(490, 6, 'reservation', 1055),
(491, 6, 'reports', 1),
(492, 6, 'dropdown', 0),
(494, 6, 'device', 0),
(495, 6, 'typedoc', 0),
(496, 6, 'link', 0),
(497, 6, 'config', 0),
(499, 6, 'rule_ticket', 0),
(500, 6, 'rule_import', 0),
(501, 6, 'rule_ldap', 0),
(502, 6, 'rule_softwarecategories', 0),
(503, 6, 'search_config', 0),
(674, 2, 'domain', 0),
(506, 6, 'profile', 0),
(507, 6, 'user', 1055),
(509, 6, 'group', 1),
(510, 6, 'entity', 97),
(511, 6, 'transfer', 1),
(512, 6, 'logs', 0),
(513, 6, 'reminder_public', 31),
(514, 6, 'rssfeed_public', 31),
(515, 6, 'bookmark_public', 0),
(516, 6, 'backup', 0),
(517, 6, 'ticket', 168967),
(521, 6, 'followup', 13319),
(522, 6, 'task', 13329),
(736, 1, 'project', 0),
(737, 2, 'project', 1025),
(738, 3, 'project', 1151),
(534, 6, 'planning', 1),
(711, 4, 'taskcategory', 31),
(704, 4, 'netpoint', 31),
(537, 6, 'statistic', 1),
(538, 6, 'password_update', 1),
(540, 6, 'show_group_hardware', 0),
(541, 6, 'rule_dictionnary_software', 0),
(542, 6, 'rule_dictionnary_dropdown', 0),
(543, 6, 'budget', 96),
(545, 6, 'notification', 0),
(546, 6, 'rule_mailcollector', 0),
(718, 4, 'state', 31),
(719, 5, 'state', 0),
(549, 6, 'calendar', 0),
(550, 6, 'slm', 1),
(551, 6, 'rule_dictionnary_printer', 0),
(555, 6, 'problem', 1121),
(699, 6, 'knowbasecategory', 0),
(693, 7, 'itilcategory', 31),
(686, 7, 'location', 31),
(559, 6, 'tickettemplate', 1),
(560, 6, 'ticketrecurrent', 1),
(561, 6, 'ticketcost', 31),
(661, 3, 'change', 1151),
(662, 4, 'change', 1279),
(564, 6, 'ticketvalidation', 3088),
(565, 7, 'computer', 127),
(566, 7, 'monitor', 127),
(567, 7, 'software', 127),
(568, 7, 'networking', 127),
(569, 7, 'internet', 31),
(570, 7, 'printer', 127),
(571, 7, 'peripheral', 127),
(572, 7, 'cartridge', 127),
(573, 7, 'consumable', 127),
(574, 7, 'phone', 127),
(729, 1, 'queuednotification', 0),
(576, 7, 'contact_enterprise', 96),
(577, 7, 'document', 127),
(578, 7, 'contract', 96),
(579, 7, 'infocom', 0),
(580, 7, 'knowbase', 14367),
(584, 7, 'reservation', 1055),
(585, 7, 'reports', 1),
(586, 7, 'dropdown', 0),
(588, 7, 'device', 0),
(589, 7, 'typedoc', 0),
(590, 7, 'link', 0),
(591, 7, 'config', 0),
(593, 7, 'rule_ticket', 1055),
(594, 7, 'rule_import', 0),
(595, 7, 'rule_ldap', 0),
(596, 7, 'rule_softwarecategories', 0),
(597, 7, 'search_config', 0),
(673, 1, 'domain', 0),
(600, 7, 'profile', 0),
(601, 7, 'user', 1055),
(603, 7, 'group', 1),
(604, 7, 'entity', 97),
(605, 7, 'transfer', 1),
(606, 7, 'logs', 1),
(607, 7, 'reminder_public', 31),
(608, 7, 'rssfeed_public', 31),
(609, 7, 'bookmark_public', 0),
(610, 7, 'backup', 0),
(611, 7, 'ticket', 259103),
(615, 7, 'followup', 13335),
(616, 7, 'task', 13329),
(735, 7, 'queuednotification', 0),
(628, 7, 'planning', 2049),
(710, 3, 'taskcategory', 31),
(703, 3, 'netpoint', 31),
(631, 7, 'statistic', 1),
(632, 7, 'password_update', 1),
(634, 7, 'show_group_hardware', 0),
(635, 7, 'rule_dictionnary_software', 0),
(636, 7, 'rule_dictionnary_dropdown', 0),
(637, 7, 'budget', 96),
(639, 7, 'notification', 0),
(640, 7, 'rule_mailcollector', 31),
(672, 7, 'changevalidation', 1044),
(717, 3, 'state', 31),
(643, 7, 'calendar', 31),
(644, 7, 'slm', 31),
(645, 7, 'rule_dictionnary_printer', 0),
(649, 7, 'problem', 1151),
(698, 5, 'knowbasecategory', 0),
(692, 6, 'itilcategory', 0),
(685, 6, 'location', 0),
(653, 7, 'tickettemplate', 31),
(654, 7, 'ticketrecurrent', 31),
(655, 7, 'ticketcost', 31),
(659, 1, 'change', 0),
(660, 2, 'change', 1057),
(658, 7, 'ticketvalidation', 15384),
(750, 8, 'backup', 1),
(751, 8, 'bookmark_public', 1),
(752, 8, 'budget', 161),
(753, 8, 'calendar', 1),
(754, 8, 'cartridge', 161),
(755, 8, 'change', 1185),
(756, 8, 'changevalidation', 0),
(757, 8, 'computer', 161),
(758, 8, 'config', 1),
(759, 8, 'consumable', 161),
(760, 8, 'contact_enterprise', 161),
(761, 8, 'contract', 161),
(762, 8, 'device', 0),
(763, 8, 'document', 161),
(764, 8, 'domain', 1),
(765, 8, 'dropdown', 1),
(766, 8, 'entity', 1185),
(767, 8, 'followup', 8193),
(768, 8, 'global_validation', 0),
(769, 8, 'group', 129),
(770, 8, 'infocom', 1),
(771, 8, 'internet', 129),
(772, 8, 'itilcategory', 1),
(773, 8, 'knowbase', 10369),
(774, 8, 'knowbasecategory', 1),
(775, 8, 'link', 129),
(776, 8, 'location', 1),
(777, 8, 'logs', 1),
(778, 8, 'monitor', 161),
(779, 8, 'netpoint', 1),
(780, 8, 'networking', 161),
(781, 8, 'notification', 1),
(782, 8, 'password_update', 0),
(783, 8, 'peripheral', 161),
(784, 8, 'phone', 161),
(785, 8, 'planning', 3073),
(786, 8, 'printer', 161),
(787, 8, 'problem', 1185),
(788, 8, 'profile', 129),
(789, 8, 'project', 1185),
(790, 8, 'projecttask', 1),
(791, 8, 'queuednotification', 1),
(792, 8, 'reminder_public', 129),
(793, 8, 'reports', 1),
(794, 8, 'reservation', 1),
(795, 8, 'rssfeed_public', 129),
(796, 8, 'rule_dictionnary_dropdown', 1),
(797, 8, 'rule_dictionnary_printer', 1),
(798, 8, 'rule_dictionnary_software', 1),
(799, 8, 'rule_import', 1),
(800, 8, 'rule_ldap', 1),
(801, 8, 'rule_mailcollector', 1),
(802, 8, 'rule_softwarecategories', 1),
(803, 8, 'rule_ticket', 1),
(804, 8, 'search_config', 0),
(805, 8, 'show_group_hardware', 1),
(806, 8, 'slm', 1),
(807, 8, 'software', 161),
(808, 8, 'solutiontemplate', 1),
(809, 8, 'state', 1),
(810, 8, 'statistic', 1),
(811, 8, 'task', 8193),
(812, 8, 'taskcategory', 1),
(813, 8, 'ticket', 138369),
(814, 8, 'ticketcost', 1),
(815, 8, 'ticketrecurrent', 1),
(816, 8, 'tickettemplate', 1),
(817, 8, 'ticketvalidation', 0),
(818, 8, 'transfer', 1),
(819, 8, 'typedoc', 1),
(820, 8, 'user', 2177),
(821, 1, 'license', 0),
(822, 2, 'license', 33),
(823, 3, 'license', 127),
(824, 4, 'license', 255),
(825, 5, 'license', 0),
(826, 6, 'license', 127),
(827, 7, 'license', 127),
(828, 8, 'license', 161),
(829, 1, 'line', 0),
(830, 2, 'line', 33),
(831, 3, 'line', 127),
(832, 4, 'line', 255),
(833, 5, 'line', 0),
(834, 6, 'line', 127),
(835, 7, 'line', 127),
(836, 8, 'line', 161),
(837, 1, 'lineoperator', 0),
(838, 2, 'lineoperator', 33),
(839, 3, 'lineoperator', 31),
(840, 4, 'lineoperator', 31),
(841, 5, 'lineoperator', 0),
(842, 6, 'lineoperator', 0),
(843, 7, 'lineoperator', 31),
(844, 8, 'lineoperator', 1),
(845, 1, 'devicesimcard_pinpuk', 0),
(846, 2, 'devicesimcard_pinpuk', 0),
(847, 3, 'devicesimcard_pinpuk', 3),
(848, 4, 'devicesimcard_pinpuk', 3),
(849, 5, 'devicesimcard_pinpuk', 1),
(850, 6, 'devicesimcard_pinpuk', 3),
(851, 7, 'devicesimcard_pinpuk', 0),
(852, 8, 'devicesimcard_pinpuk', 0),
(853, 1, 'certificate', 0),
(854, 2, 'certificate', 33),
(855, 3, 'certificate', 127),
(856, 4, 'certificate', 255),
(857, 5, 'certificate', 0),
(858, 6, 'certificate', 127),
(859, 7, 'certificate', 127),
(860, 8, 'certificate', 161);

-- --------------------------------------------------------

--
-- Structure de la table `glpi_profiles`
--

CREATE TABLE `glpi_profiles` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `interface` varchar(255) DEFAULT 'helpdesk',
  `is_default` tinyint(1) NOT NULL DEFAULT '0',
  `helpdesk_hardware` int(11) NOT NULL DEFAULT '0',
  `helpdesk_item_type` text,
  `ticket_status` text COMMENT 'json encoded array of from/dest allowed status change',
  `date_mod` datetime DEFAULT NULL,
  `comment` text,
  `problem_status` text COMMENT 'json encoded array of from/dest allowed status change',
  `create_ticket_on_login` tinyint(1) NOT NULL DEFAULT '0',
  `tickettemplates_id` int(11) NOT NULL DEFAULT '0',
  `change_status` text COMMENT 'json encoded array of from/dest allowed status change',
  `date_creation` datetime DEFAULT NULL
);

--
-- Déchargement des données de la table `glpi_profiles`
--

INSERT INTO `glpi_profiles` (`id`, `name`, `interface`, `is_default`, `helpdesk_hardware`, `helpdesk_item_type`, `ticket_status`, `date_mod`, `comment`, `problem_status`, `create_ticket_on_login`, `tickettemplates_id`, `change_status`, `date_creation`) VALUES
(1, 'Self-Service', 'helpdesk', 1, 1, '[\"Computer\",\"Monitor\",\"NetworkEquipment\",\"Peripheral\",\"Phone\",\"Printer\",\"Software\"]', '{\"1\":{\"2\":0,\"3\":0,\"4\":0,\"5\":0,\"6\":0},\"2\":{\"1\":0,\"3\":0,\"4\":0,\"5\":0,\"6\":0},\"3\":{\"1\":0,\"2\":0,\"4\":0,\"5\":0,\"6\":0},\"4\":{\"1\":0,\"2\":0,\"3\":0,\"5\":0,\"6\":0},\"5\":{\"1\":0,\"2\":0,\"3\":0,\"4\":0},\"6\":{\"1\":0,\"2\":0,\"3\":0,\"4\":0,\"5\":0}}', NULL, NULL, '[]', 0, 0, NULL, NULL),
(2, 'Observer', 'central', 0, 1, '[\"Computer\",\"Monitor\",\"NetworkEquipment\",\"Peripheral\",\"Phone\",\"Printer\",\"Software\"]', '[]', NULL, NULL, '[]', 0, 0, NULL, NULL),
(3, 'Admin', 'central', 0, 3, '[\"Computer\",\"Monitor\",\"NetworkEquipment\",\"Peripheral\",\"Phone\",\"Printer\",\"Software\"]', '[]', NULL, NULL, '[]', 0, 0, NULL, NULL),
(4, 'Super-Admin', 'central', 0, 3, '[\"Computer\",\"Monitor\",\"NetworkEquipment\",\"Peripheral\",\"Phone\",\"Printer\",\"Software\"]', '[]', NULL, NULL, '[]', 0, 0, NULL, NULL),
(5, 'Hotliner', 'central', 0, 3, '[\"Computer\",\"Monitor\",\"NetworkEquipment\",\"Peripheral\",\"Phone\",\"Printer\",\"Software\"]', '[]', NULL, NULL, '[]', 1, 0, NULL, NULL),
(6, 'Technician', 'central', 0, 3, '[\"Computer\",\"Monitor\",\"NetworkEquipment\",\"Peripheral\",\"Phone\",\"Printer\",\"Software\"]', '[]', NULL, NULL, '[]', 0, 0, NULL, NULL),
(7, 'Supervisor', 'central', 0, 3, '[\"Computer\",\"Monitor\",\"NetworkEquipment\",\"Peripheral\",\"Phone\",\"Printer\",\"Software\"]', '[]', NULL, NULL, '[]', 0, 0, NULL, NULL),
(8, 'Read-Only', 'central', 0, 0, '[]', '{\"1\":{\"2\":0,\"3\":0,\"4\":0,\"5\":0,\"6\":0},\n                       \"2\":{\"1\":0,\"3\":0,\"4\":0,\"5\":0,\"6\":0},\n                       \"3\":{\"1\":0,\"2\":0,\"4\":0,\"5\":0,\"6\":0},\n                       \"4\":{\"1\":0,\"2\":0,\"3\":0,\"5\":0,\"6\":0},\n                       \"5\":{\"1\":0,\"2\":0,\"3\":0,\"4\":0,\"6\":0},\n                       \"6\":{\"1\":0,\"2\":0,\"3\":0,\"4\":0,\"5\":0}}', NULL, 'This profile defines read-only access. It is used when objects are locked. It can also be used to give to users rights to unlock objects.', '{\"1\":{\"7\":0,\"2\":0,\"3\":0,\"4\":0,\"5\":0,\"8\":0,\"6\":0},\n                      \"7\":{\"1\":0,\"2\":0,\"3\":0,\"4\":0,\"5\":0,\"8\":0,\"6\":0},\n                      \"2\":{\"1\":0,\"7\":0,\"3\":0,\"4\":0,\"5\":0,\"8\":0,\"6\":0},\n                      \"3\":{\"1\":0,\"7\":0,\"2\":0,\"4\":0,\"5\":0,\"8\":0,\"6\":0},\n                      \"4\":{\"1\":0,\"7\":0,\"2\":0,\"3\":0,\"5\":0,\"8\":0,\"6\":0},\n                      \"5\":{\"1\":0,\"7\":0,\"2\":0,\"3\":0,\"4\":0,\"8\":0,\"6\":0},\n                      \"8\":{\"1\":0,\"7\":0,\"2\":0,\"3\":0,\"4\":0,\"5\":0,\"6\":0},\n                      \"6\":{\"1\":0,\"7\":0,\"2\":0,\"3\":0,\"4\":0,\"5\":0,\"8\":0}}', 0, 0, '{\"1\":{\"9\":0,\"10\":0,\"7\":0,\"4\":0,\"11\":0,\"12\":0,\"5\":0,\"8\":0,\"6\":0},\n                       \"9\":{\"1\":0,\"10\":0,\"7\":0,\"4\":0,\"11\":0,\"12\":0,\"5\":0,\"8\":0,\"6\":0},\n                       \"10\":{\"1\":0,\"9\":0,\"7\":0,\"4\":0,\"11\":0,\"12\":0,\"5\":0,\"8\":0,\"6\":0},\n                       \"7\":{\"1\":0,\"9\":0,\"10\":0,\"4\":0,\"11\":0,\"12\":0,\"5\":0,\"8\":0,\"6\":0},\n                       \"4\":{\"1\":0,\"9\":0,\"10\":0,\"7\":0,\"11\":0,\"12\":0,\"5\":0,\"8\":0,\"6\":0},\n                       \"11\":{\"1\":0,\"9\":0,\"10\":0,\"7\":0,\"4\":0,\"12\":0,\"5\":0,\"8\":0,\"6\":0},\n                       \"12\":{\"1\":0,\"9\":0,\"10\":0,\"7\":0,\"4\":0,\"11\":0,\"5\":0,\"8\":0,\"6\":0},\n                       \"5\":{\"1\":0,\"9\":0,\"10\":0,\"7\":0,\"4\":0,\"11\":0,\"12\":0,\"8\":0,\"6\":0},\n                       \"8\":{\"1\":0,\"9\":0,\"10\":0,\"7\":0,\"4\":0,\"11\":0,\"12\":0,\"5\":0,\"6\":0},\n                       \"6\":{\"1\":0,\"9\":0,\"10\":0,\"7\":0,\"4\":0,\"11\":0,\"12\":0,\"5\":0,\"8\":0}}', '2016-02-08 16:57:46');

-- --------------------------------------------------------

--
-- Structure de la table `glpi_profiles_reminders`
--

CREATE TABLE `glpi_profiles_reminders` (
  `id` int(11) NOT NULL,
  `reminders_id` int(11) NOT NULL DEFAULT '0',
  `profiles_id` int(11) NOT NULL DEFAULT '0',
  `entities_id` int(11) NOT NULL DEFAULT '-1',
  `is_recursive` tinyint(1) NOT NULL DEFAULT '0'
);

-- --------------------------------------------------------

--
-- Structure de la table `glpi_profiles_rssfeeds`
--

CREATE TABLE `glpi_profiles_rssfeeds` (
  `id` int(11) NOT NULL,
  `rssfeeds_id` int(11) NOT NULL DEFAULT '0',
  `profiles_id` int(11) NOT NULL DEFAULT '0',
  `entities_id` int(11) NOT NULL DEFAULT '-1',
  `is_recursive` tinyint(1) NOT NULL DEFAULT '0'
);

-- --------------------------------------------------------

--
-- Structure de la table `glpi_profiles_users`
--

CREATE TABLE `glpi_profiles_users` (
  `id` int(11) NOT NULL,
  `users_id` int(11) NOT NULL DEFAULT '0',
  `profiles_id` int(11) NOT NULL DEFAULT '0',
  `entities_id` int(11) NOT NULL DEFAULT '0',
  `is_recursive` tinyint(1) NOT NULL DEFAULT '1',
  `is_dynamic` tinyint(1) NOT NULL DEFAULT '0'
);

--
-- Déchargement des données de la table `glpi_profiles_users`
--

INSERT INTO `glpi_profiles_users` (`id`, `users_id`, `profiles_id`, `entities_id`, `is_recursive`, `is_dynamic`) VALUES
(2, 2, 4, 0, 1, 0),
(3, 3, 1, 0, 1, 0),
(4, 4, 6, 0, 1, 0),
(5, 5, 2, 0, 1, 0),
(6, 6, 1, 0, 0, 0),
(7, 7, 3, 0, 0, 0);

-- --------------------------------------------------------

--
-- Structure de la table `glpi_projectcosts`
--

CREATE TABLE `glpi_projectcosts` (
  `id` int(11) NOT NULL,
  `projects_id` int(11) NOT NULL DEFAULT '0',
  `name` varchar(255) DEFAULT NULL,
  `comment` text,
  `begin_date` date DEFAULT NULL,
  `end_date` date DEFAULT NULL,
  `cost` decimal(20,4) NOT NULL DEFAULT '0.0000',
  `budgets_id` int(11) NOT NULL DEFAULT '0',
  `entities_id` int(11) NOT NULL DEFAULT '0',
  `is_recursive` tinyint(1) NOT NULL DEFAULT '0'
);

-- --------------------------------------------------------

--
-- Structure de la table `glpi_projects`
--

CREATE TABLE `glpi_projects` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `code` varchar(255) DEFAULT NULL,
  `priority` int(11) NOT NULL DEFAULT '1',
  `entities_id` int(11) NOT NULL DEFAULT '0',
  `is_recursive` tinyint(1) NOT NULL DEFAULT '0',
  `projects_id` int(11) NOT NULL DEFAULT '0',
  `projectstates_id` int(11) NOT NULL DEFAULT '0',
  `projecttypes_id` int(11) NOT NULL DEFAULT '0',
  `date` datetime DEFAULT NULL,
  `date_mod` datetime DEFAULT NULL,
  `users_id` int(11) NOT NULL DEFAULT '0',
  `groups_id` int(11) NOT NULL DEFAULT '0',
  `plan_start_date` datetime DEFAULT NULL,
  `plan_end_date` datetime DEFAULT NULL,
  `real_start_date` datetime DEFAULT NULL,
  `real_end_date` datetime DEFAULT NULL,
  `percent_done` int(11) NOT NULL DEFAULT '0',
  `show_on_global_gantt` tinyint(1) NOT NULL DEFAULT '0',
  `content` longtext,
  `comment` longtext,
  `is_deleted` tinyint(1) NOT NULL DEFAULT '0',
  `date_creation` datetime DEFAULT NULL,
  `projecttemplates_id` int(11) NOT NULL DEFAULT '0',
  `is_template` tinyint(1) NOT NULL DEFAULT '0',
  `template_name` varchar(255) DEFAULT NULL
);

-- --------------------------------------------------------

--
-- Structure de la table `glpi_projectstates`
--

CREATE TABLE `glpi_projectstates` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `comment` text,
  `color` varchar(255) DEFAULT NULL,
  `is_finished` tinyint(1) NOT NULL DEFAULT '0',
  `date_mod` datetime DEFAULT NULL,
  `date_creation` datetime DEFAULT NULL
);

--
-- Déchargement des données de la table `glpi_projectstates`
--

INSERT INTO `glpi_projectstates` (`id`, `name`, `comment`, `color`, `is_finished`, `date_mod`, `date_creation`) VALUES
(1, 'New', NULL, '#06ff00', 0, NULL, NULL),
(2, 'Processing', NULL, '#ffb800', 0, NULL, NULL),
(3, 'Closed', NULL, '#ff0000', 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Structure de la table `glpi_projecttasks`
--

CREATE TABLE `glpi_projecttasks` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `content` longtext,
  `comment` longtext,
  `entities_id` int(11) NOT NULL DEFAULT '0',
  `is_recursive` tinyint(1) NOT NULL DEFAULT '0',
  `projects_id` int(11) NOT NULL DEFAULT '0',
  `projecttasks_id` int(11) NOT NULL DEFAULT '0',
  `date` datetime DEFAULT NULL,
  `date_mod` datetime DEFAULT NULL,
  `plan_start_date` datetime DEFAULT NULL,
  `plan_end_date` datetime DEFAULT NULL,
  `real_start_date` datetime DEFAULT NULL,
  `real_end_date` datetime DEFAULT NULL,
  `planned_duration` int(11) NOT NULL DEFAULT '0',
  `effective_duration` int(11) NOT NULL DEFAULT '0',
  `projectstates_id` int(11) NOT NULL DEFAULT '0',
  `projecttasktypes_id` int(11) NOT NULL DEFAULT '0',
  `users_id` int(11) NOT NULL DEFAULT '0',
  `percent_done` int(11) NOT NULL DEFAULT '0',
  `is_milestone` tinyint(1) NOT NULL DEFAULT '0',
  `projecttasktemplates_id` int(11) NOT NULL DEFAULT '0',
  `is_template` tinyint(1) NOT NULL DEFAULT '0',
  `template_name` varchar(255) DEFAULT NULL
);

-- --------------------------------------------------------

--
-- Structure de la table `glpi_projecttasks_tickets`
--

CREATE TABLE `glpi_projecttasks_tickets` (
  `id` int(11) NOT NULL,
  `tickets_id` int(11) NOT NULL DEFAULT '0',
  `projecttasks_id` int(11) NOT NULL DEFAULT '0'
);

-- --------------------------------------------------------

--
-- Structure de la table `glpi_projecttaskteams`
--

CREATE TABLE `glpi_projecttaskteams` (
  `id` int(11) NOT NULL,
  `projecttasks_id` int(11) NOT NULL DEFAULT '0',
  `itemtype` varchar(100) DEFAULT NULL,
  `items_id` int(11) NOT NULL DEFAULT '0'
);

-- --------------------------------------------------------

--
-- Structure de la table `glpi_projecttasktemplates`
--

CREATE TABLE `glpi_projecttasktemplates` (
  `id` int(11) NOT NULL,
  `entities_id` int(11) NOT NULL DEFAULT '0',
  `is_recursive` tinyint(1) NOT NULL DEFAULT '0',
  `name` varchar(255) DEFAULT NULL,
  `description` longtext,
  `comment` longtext,
  `projects_id` int(11) NOT NULL DEFAULT '0',
  `projecttasks_id` int(11) NOT NULL DEFAULT '0',
  `plan_start_date` datetime DEFAULT NULL,
  `plan_end_date` datetime DEFAULT NULL,
  `real_start_date` datetime DEFAULT NULL,
  `real_end_date` datetime DEFAULT NULL,
  `planned_duration` int(11) NOT NULL DEFAULT '0',
  `effective_duration` int(11) NOT NULL DEFAULT '0',
  `projectstates_id` int(11) NOT NULL DEFAULT '0',
  `projecttasktypes_id` int(11) NOT NULL DEFAULT '0',
  `users_id` int(11) NOT NULL DEFAULT '0',
  `percent_done` int(11) NOT NULL DEFAULT '0',
  `is_milestone` tinyint(1) NOT NULL DEFAULT '0',
  `comments` text,
  `date_mod` datetime DEFAULT NULL,
  `date_creation` datetime DEFAULT NULL
);

-- --------------------------------------------------------

--
-- Structure de la table `glpi_projecttasktypes`
--

CREATE TABLE `glpi_projecttasktypes` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `comment` text,
  `date_mod` datetime DEFAULT NULL,
  `date_creation` datetime DEFAULT NULL
);

-- --------------------------------------------------------

--
-- Structure de la table `glpi_projectteams`
--

CREATE TABLE `glpi_projectteams` (
  `id` int(11) NOT NULL,
  `projects_id` int(11) NOT NULL DEFAULT '0',
  `itemtype` varchar(100) DEFAULT NULL,
  `items_id` int(11) NOT NULL DEFAULT '0'
);

-- --------------------------------------------------------

--
-- Structure de la table `glpi_projecttypes`
--

CREATE TABLE `glpi_projecttypes` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `comment` text,
  `date_mod` datetime DEFAULT NULL,
  `date_creation` datetime DEFAULT NULL
);

-- --------------------------------------------------------

--
-- Structure de la table `glpi_queuednotifications`
--

CREATE TABLE `glpi_queuednotifications` (
  `id` int(11) NOT NULL,
  `itemtype` varchar(100) DEFAULT NULL,
  `items_id` int(11) NOT NULL DEFAULT '0',
  `notificationtemplates_id` int(11) NOT NULL DEFAULT '0',
  `entities_id` int(11) NOT NULL DEFAULT '0',
  `is_deleted` tinyint(1) NOT NULL DEFAULT '0',
  `sent_try` int(11) NOT NULL DEFAULT '0',
  `create_time` datetime DEFAULT NULL,
  `send_time` datetime DEFAULT NULL,
  `sent_time` datetime DEFAULT NULL,
  `name` text,
  `sender` text,
  `sendername` text,
  `recipient` text,
  `recipientname` text,
  `replyto` text,
  `replytoname` text,
  `headers` text,
  `body_html` longtext,
  `body_text` longtext,
  `messageid` text,
  `documents` text,
  `mode` varchar(20) NOT NULL COMMENT 'See Notification_NotificationTemplate::MODE_* constants'
);

-- --------------------------------------------------------

--
-- Structure de la table `glpi_registeredids`
--

CREATE TABLE `glpi_registeredids` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `items_id` int(11) NOT NULL DEFAULT '0',
  `itemtype` varchar(100) NOT NULL,
  `device_type` varchar(100) NOT NULL COMMENT 'USB, PCI ...'
);

-- --------------------------------------------------------

--
-- Structure de la table `glpi_reminders`
--

CREATE TABLE `glpi_reminders` (
  `id` int(11) NOT NULL,
  `date` datetime DEFAULT NULL,
  `users_id` int(11) NOT NULL DEFAULT '0',
  `name` varchar(255) DEFAULT NULL,
  `text` text,
  `begin` datetime DEFAULT NULL,
  `end` datetime DEFAULT NULL,
  `is_planned` tinyint(1) NOT NULL DEFAULT '0',
  `date_mod` datetime DEFAULT NULL,
  `state` int(11) NOT NULL DEFAULT '0',
  `begin_view_date` datetime DEFAULT NULL,
  `end_view_date` datetime DEFAULT NULL,
  `date_creation` datetime DEFAULT NULL
);

-- --------------------------------------------------------

--
-- Structure de la table `glpi_reminders_users`
--

CREATE TABLE `glpi_reminders_users` (
  `id` int(11) NOT NULL,
  `reminders_id` int(11) NOT NULL DEFAULT '0',
  `users_id` int(11) NOT NULL DEFAULT '0'
);

-- --------------------------------------------------------

--
-- Structure de la table `glpi_requesttypes`
--

CREATE TABLE `glpi_requesttypes` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `is_helpdesk_default` tinyint(1) NOT NULL DEFAULT '0',
  `is_followup_default` tinyint(1) NOT NULL DEFAULT '0',
  `is_mail_default` tinyint(1) NOT NULL DEFAULT '0',
  `is_mailfollowup_default` tinyint(1) NOT NULL DEFAULT '0',
  `is_active` tinyint(1) NOT NULL DEFAULT '1',
  `is_ticketheader` tinyint(1) NOT NULL DEFAULT '1',
  `is_ticketfollowup` tinyint(1) NOT NULL DEFAULT '1',
  `comment` text,
  `date_mod` datetime DEFAULT NULL,
  `date_creation` datetime DEFAULT NULL
);

--
-- Déchargement des données de la table `glpi_requesttypes`
--

INSERT INTO `glpi_requesttypes` (`id`, `name`, `is_helpdesk_default`, `is_followup_default`, `is_mail_default`, `is_mailfollowup_default`, `is_active`, `is_ticketheader`, `is_ticketfollowup`, `comment`, `date_mod`, `date_creation`) VALUES
(1, 'Helpdesk', 1, 1, 0, 0, 1, 1, 1, NULL, NULL, NULL),
(2, 'E-Mail', 0, 0, 1, 1, 1, 1, 1, NULL, NULL, NULL),
(3, 'Phone', 0, 0, 0, 0, 1, 1, 1, NULL, NULL, NULL),
(4, 'Direct', 0, 0, 0, 0, 1, 1, 1, NULL, NULL, NULL),
(5, 'Written', 0, 0, 0, 0, 1, 1, 1, NULL, NULL, NULL),
(6, 'Other', 0, 0, 0, 0, 1, 1, 1, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Structure de la table `glpi_reservationitems`
--

CREATE TABLE `glpi_reservationitems` (
  `id` int(11) NOT NULL,
  `itemtype` varchar(100) NOT NULL,
  `entities_id` int(11) NOT NULL DEFAULT '0',
  `is_recursive` tinyint(1) NOT NULL DEFAULT '0',
  `items_id` int(11) NOT NULL DEFAULT '0',
  `comment` text,
  `is_active` tinyint(1) NOT NULL DEFAULT '1',
  `is_deleted` tinyint(1) NOT NULL DEFAULT '0'
);

-- --------------------------------------------------------

--
-- Structure de la table `glpi_reservations`
--

CREATE TABLE `glpi_reservations` (
  `id` int(11) NOT NULL,
  `reservationitems_id` int(11) NOT NULL DEFAULT '0',
  `begin` datetime DEFAULT NULL,
  `end` datetime DEFAULT NULL,
  `users_id` int(11) NOT NULL DEFAULT '0',
  `comment` text,
  `group` int(11) NOT NULL DEFAULT '0'
);

-- --------------------------------------------------------

--
-- Structure de la table `glpi_rssfeeds`
--

CREATE TABLE `glpi_rssfeeds` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `users_id` int(11) NOT NULL DEFAULT '0',
  `comment` text COLLATE utf8_unicode_ci,
  `url` text COLLATE utf8_unicode_ci,
  `refresh_rate` int(11) NOT NULL DEFAULT '86400',
  `max_items` int(11) NOT NULL DEFAULT '20',
  `have_error` tinyint(1) NOT NULL DEFAULT '0',
  `is_active` tinyint(1) NOT NULL DEFAULT '0',
  `date_mod` datetime DEFAULT NULL,
  `date_creation` datetime DEFAULT NULL
) COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `glpi_rssfeeds_users`
--

CREATE TABLE `glpi_rssfeeds_users` (
  `id` int(11) NOT NULL,
  `rssfeeds_id` int(11) NOT NULL DEFAULT '0',
  `users_id` int(11) NOT NULL DEFAULT '0'
) COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `glpi_ruleactions`
--

CREATE TABLE `glpi_ruleactions` (
  `id` int(11) NOT NULL,
  `rules_id` int(11) NOT NULL DEFAULT '0',
  `action_type` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'VALUE IN (assign, regex_result, append_regex_result, affectbyip, affectbyfqdn, affectbymac)',
  `field` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `value` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) COLLATE=utf8_unicode_ci;

--
-- Déchargement des données de la table `glpi_ruleactions`
--

INSERT INTO `glpi_ruleactions` (`id`, `rules_id`, `action_type`, `field`, `value`) VALUES
(6, 6, 'fromitem', 'locations_id', '1'),
(2, 2, 'assign', 'entities_id', '0'),
(3, 3, 'assign', 'entities_id', '0'),
(4, 4, 'assign', '_refuse_email_no_response', '1'),
(5, 5, 'assign', '_refuse_email_no_response', '1'),
(7, 7, 'fromuser', 'locations_id', '1'),
(8, 8, 'assign', '_import_category', '1');

-- --------------------------------------------------------

--
-- Structure de la table `glpi_rulecriterias`
--

CREATE TABLE `glpi_rulecriterias` (
  `id` int(11) NOT NULL,
  `rules_id` int(11) NOT NULL DEFAULT '0',
  `criteria` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `condition` int(11) NOT NULL DEFAULT '0' COMMENT 'see define.php PATTERN_* and REGEX_* constant',
  `pattern` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) COLLATE=utf8_unicode_ci;

--
-- Déchargement des données de la table `glpi_rulecriterias`
--

INSERT INTO `glpi_rulecriterias` (`id`, `rules_id`, `criteria`, `condition`, `pattern`) VALUES
(9, 6, 'locations_id', 9, '1'),
(2, 2, 'uid', 0, '*'),
(3, 2, 'samaccountname', 0, '*'),
(4, 2, 'MAIL_EMAIL', 0, '*'),
(5, 3, 'subject', 6, '/.*/'),
(6, 4, 'x-auto-response-suppress', 6, '/\\S+/'),
(7, 5, 'auto-submitted', 6, '/^(?!.*no).+$/i'),
(10, 6, 'items_locations', 8, '1'),
(11, 7, 'locations_id', 9, '1'),
(12, 7, 'users_locations', 8, '1'),
(13, 8, 'name', 0, '*');

-- --------------------------------------------------------

--
-- Structure de la table `glpi_rulerightparameters`
--

CREATE TABLE `glpi_rulerightparameters` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `value` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `comment` text COLLATE utf8_unicode_ci NOT NULL,
  `date_mod` datetime DEFAULT NULL,
  `date_creation` datetime DEFAULT NULL
) COLLATE=utf8_unicode_ci;

--
-- Déchargement des données de la table `glpi_rulerightparameters`
--

INSERT INTO `glpi_rulerightparameters` (`id`, `name`, `value`, `comment`, `date_mod`, `date_creation`) VALUES
(1, '(LDAP)Organization', 'o', '', NULL, NULL),
(2, '(LDAP)Common Name', 'cn', '', NULL, NULL),
(3, '(LDAP)Department Number', 'departmentnumber', '', NULL, NULL),
(4, '(LDAP)Email', 'mail', '', NULL, NULL),
(5, 'Object Class', 'objectclass', '', NULL, NULL),
(6, '(LDAP)User ID', 'uid', '', NULL, NULL),
(7, '(LDAP)Telephone Number', 'phone', '', NULL, NULL),
(8, '(LDAP)Employee Number', 'employeenumber', '', NULL, NULL),
(9, '(LDAP)Manager', 'manager', '', NULL, NULL),
(10, '(LDAP)DistinguishedName', 'dn', '', NULL, NULL),
(12, '(AD)User ID', 'samaccountname', '', NULL, NULL),
(13, '(LDAP) Title', 'title', '', NULL, NULL),
(14, '(LDAP) MemberOf', 'memberof', '', NULL, NULL);

-- --------------------------------------------------------

--
-- Structure de la table `glpi_rules`
--

CREATE TABLE `glpi_rules` (
  `id` int(11) NOT NULL,
  `entities_id` int(11) NOT NULL DEFAULT '0',
  `sub_type` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `ranking` int(11) NOT NULL DEFAULT '0',
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8_unicode_ci,
  `match` char(10) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'see define.php *_MATCHING constant',
  `is_active` tinyint(1) NOT NULL DEFAULT '1',
  `comment` text COLLATE utf8_unicode_ci,
  `date_mod` datetime DEFAULT NULL,
  `is_recursive` tinyint(1) NOT NULL DEFAULT '0',
  `uuid` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `condition` int(11) NOT NULL DEFAULT '0',
  `date_creation` datetime DEFAULT NULL
) COLLATE=utf8_unicode_ci;

--
-- Déchargement des données de la table `glpi_rules`
--

INSERT INTO `glpi_rules` (`id`, `entities_id`, `sub_type`, `ranking`, `name`, `description`, `match`, `is_active`, `comment`, `date_mod`, `is_recursive`, `uuid`, `condition`, `date_creation`) VALUES
(2, 0, 'RuleRight', 1, 'Root', '', 'OR', 1, NULL, NULL, 0, '500717c8-2bd6e957-53a12b5fd35745.02608131', 0, NULL),
(3, 0, 'RuleMailCollector', 3, 'Root', '', 'OR', 1, NULL, NULL, 0, '500717c8-2bd6e957-53a12b5fd36404.54713349', 0, NULL),
(4, 0, 'RuleMailCollector', 1, 'X-Auto-Response-Suppress', 'Exclude Auto-Reply emails using X-Auto-Response-Suppress header', 'AND', 0, NULL, '2011-01-18 11:40:42', 1, '500717c8-2bd6e957-53a12b5fd36d97.94503423', 0, NULL),
(5, 0, 'RuleMailCollector', 2, 'Auto-Reply Auto-Submitted', 'Exclude Auto-Reply emails using Auto-Submitted header', 'OR', 1, NULL, '2011-01-18 11:40:42', 1, '500717c8-2bd6e957-53a12b5fd376c2.87642651', 0, NULL),
(6, 0, 'RuleTicket', 1, 'Ticket location from item', '', 'AND', 0, 'Automatically generated by GLPI 0.84', NULL, 1, '500717c8-2bd6e957-53a12b5fd37f94.10365341', 1, NULL),
(7, 0, 'RuleTicket', 2, 'Ticket location from user', '', 'AND', 0, 'Automatically generated by GLPI 0.84', NULL, 1, '500717c8-2bd6e957-53a12b5fd38869.86002585', 1, NULL),
(8, 0, 'RuleSoftwareCategory', 1, 'Import category from inventory tool', '', 'AND', 0, 'Automatically generated by GLPI 9.2', NULL, 1, '500717c8-2bd6e957-53a12b5fd38869.86003425', 1, NULL);

-- --------------------------------------------------------

--
-- Structure de la table `glpi_savedsearches`
--

CREATE TABLE `glpi_savedsearches` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `type` int(11) NOT NULL DEFAULT '0' COMMENT 'see SavedSearch:: constants',
  `itemtype` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `users_id` int(11) NOT NULL DEFAULT '0',
  `is_private` tinyint(1) NOT NULL DEFAULT '1',
  `entities_id` int(11) NOT NULL DEFAULT '-1',
  `is_recursive` tinyint(1) NOT NULL DEFAULT '0',
  `path` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `query` text COLLATE utf8_unicode_ci,
  `last_execution_time` int(11) DEFAULT NULL,
  `do_count` tinyint(1) NOT NULL DEFAULT '2' COMMENT 'Do or do not count results on list display see SavedSearch::COUNT_* constants',
  `last_execution_date` datetime DEFAULT NULL,
  `counter` int(11) NOT NULL DEFAULT '0'
) COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `glpi_savedsearches_alerts`
--

CREATE TABLE `glpi_savedsearches_alerts` (
  `id` int(11) NOT NULL,
  `savedsearches_id` int(11) NOT NULL DEFAULT '0',
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT '0',
  `operator` tinyint(1) NOT NULL,
  `value` int(11) NOT NULL,
  `date_mod` datetime DEFAULT NULL,
  `date_creation` datetime DEFAULT NULL
) COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `glpi_savedsearches_users`
--

CREATE TABLE `glpi_savedsearches_users` (
  `id` int(11) NOT NULL,
  `users_id` int(11) NOT NULL DEFAULT '0',
  `itemtype` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `savedsearches_id` int(11) NOT NULL DEFAULT '0'
) COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `glpi_slalevelactions`
--

CREATE TABLE `glpi_slalevelactions` (
  `id` int(11) NOT NULL,
  `slalevels_id` int(11) NOT NULL DEFAULT '0',
  `action_type` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `field` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `value` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `glpi_slalevelcriterias`
--

CREATE TABLE `glpi_slalevelcriterias` (
  `id` int(11) NOT NULL,
  `slalevels_id` int(11) NOT NULL DEFAULT '0',
  `criteria` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `condition` int(11) NOT NULL DEFAULT '0' COMMENT 'see define.php PATTERN_* and REGEX_* constant',
  `pattern` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `glpi_slalevels`
--

CREATE TABLE `glpi_slalevels` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `slas_id` int(11) NOT NULL DEFAULT '0',
  `execution_time` int(11) NOT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT '1',
  `entities_id` int(11) NOT NULL DEFAULT '0',
  `is_recursive` tinyint(1) NOT NULL DEFAULT '0',
  `match` char(10) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'see define.php *_MATCHING constant',
  `uuid` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `glpi_slalevels_tickets`
--

CREATE TABLE `glpi_slalevels_tickets` (
  `id` int(11) NOT NULL,
  `tickets_id` int(11) NOT NULL DEFAULT '0',
  `slalevels_id` int(11) NOT NULL DEFAULT '0',
  `date` datetime DEFAULT NULL
) COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `glpi_slas`
--

CREATE TABLE `glpi_slas` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `entities_id` int(11) NOT NULL DEFAULT '0',
  `is_recursive` tinyint(1) NOT NULL DEFAULT '0',
  `type` int(11) NOT NULL DEFAULT '0',
  `comment` text COLLATE utf8_unicode_ci,
  `number_time` int(11) NOT NULL,
  `calendars_id` int(11) NOT NULL DEFAULT '0',
  `date_mod` datetime DEFAULT NULL,
  `definition_time` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `end_of_working_day` tinyint(1) NOT NULL DEFAULT '0',
  `date_creation` datetime DEFAULT NULL,
  `slms_id` int(11) NOT NULL DEFAULT '0'
) COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `glpi_slms`
--

CREATE TABLE `glpi_slms` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `entities_id` int(11) NOT NULL DEFAULT '0',
  `is_recursive` tinyint(1) NOT NULL DEFAULT '0',
  `comment` text COLLATE utf8_unicode_ci,
  `calendars_id` int(11) NOT NULL DEFAULT '0',
  `date_mod` datetime DEFAULT NULL,
  `date_creation` datetime DEFAULT NULL
) COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `glpi_softwarecategories`
--

CREATE TABLE `glpi_softwarecategories` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `comment` text COLLATE utf8_unicode_ci,
  `softwarecategories_id` int(11) NOT NULL DEFAULT '0',
  `completename` text COLLATE utf8_unicode_ci,
  `level` int(11) NOT NULL DEFAULT '0',
  `ancestors_cache` longtext COLLATE utf8_unicode_ci,
  `sons_cache` longtext COLLATE utf8_unicode_ci
) COLLATE=utf8_unicode_ci;

--
-- Déchargement des données de la table `glpi_softwarecategories`
--

INSERT INTO `glpi_softwarecategories` (`id`, `name`, `comment`, `softwarecategories_id`, `completename`, `level`, `ancestors_cache`, `sons_cache`) VALUES
(1, 'FUSION', NULL, 0, 'FUSION', 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Structure de la table `glpi_softwarelicenses`
--

CREATE TABLE `glpi_softwarelicenses` (
  `id` int(11) NOT NULL,
  `softwares_id` int(11) NOT NULL DEFAULT '0',
  `softwarelicenses_id` int(11) NOT NULL DEFAULT '0',
  `completename` text COLLATE utf8_unicode_ci,
  `level` int(11) NOT NULL DEFAULT '0',
  `entities_id` int(11) NOT NULL DEFAULT '0',
  `is_recursive` tinyint(1) NOT NULL DEFAULT '0',
  `number` int(11) NOT NULL DEFAULT '0',
  `softwarelicensetypes_id` int(11) NOT NULL DEFAULT '0',
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `serial` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `otherserial` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `softwareversions_id_buy` int(11) NOT NULL DEFAULT '0',
  `softwareversions_id_use` int(11) NOT NULL DEFAULT '0',
  `expire` date DEFAULT NULL,
  `comment` text COLLATE utf8_unicode_ci,
  `date_mod` datetime DEFAULT NULL,
  `is_valid` tinyint(1) NOT NULL DEFAULT '1',
  `date_creation` datetime DEFAULT NULL,
  `is_deleted` tinyint(1) NOT NULL DEFAULT '0',
  `locations_id` int(11) NOT NULL DEFAULT '0',
  `users_id_tech` int(11) NOT NULL DEFAULT '0',
  `users_id` int(11) NOT NULL DEFAULT '0',
  `groups_id_tech` int(11) NOT NULL DEFAULT '0',
  `groups_id` int(11) NOT NULL DEFAULT '0',
  `is_helpdesk_visible` tinyint(1) NOT NULL DEFAULT '0',
  `is_template` tinyint(1) NOT NULL DEFAULT '0',
  `template_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `states_id` int(11) NOT NULL DEFAULT '0',
  `manufacturers_id` int(11) NOT NULL DEFAULT '0',
  `contact` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `contact_num` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `glpi_softwarelicensetypes`
--

CREATE TABLE `glpi_softwarelicensetypes` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `comment` text COLLATE utf8_unicode_ci,
  `date_mod` datetime DEFAULT NULL,
  `date_creation` datetime DEFAULT NULL,
  `softwarelicensetypes_id` int(11) NOT NULL DEFAULT '0',
  `level` int(11) NOT NULL DEFAULT '0',
  `ancestors_cache` longtext COLLATE utf8_unicode_ci,
  `sons_cache` longtext COLLATE utf8_unicode_ci,
  `entities_id` int(11) NOT NULL DEFAULT '0',
  `is_recursive` tinyint(1) NOT NULL DEFAULT '0',
  `completename` text COLLATE utf8_unicode_ci
) COLLATE=utf8_unicode_ci;

--
-- Déchargement des données de la table `glpi_softwarelicensetypes`
--

INSERT INTO `glpi_softwarelicensetypes` (`id`, `name`, `comment`, `date_mod`, `date_creation`, `softwarelicensetypes_id`, `level`, `ancestors_cache`, `sons_cache`, `entities_id`, `is_recursive`, `completename`) VALUES
(1, 'OEM', '', NULL, NULL, 0, 0, NULL, NULL, 0, 1, 'OEM');

-- --------------------------------------------------------

--
-- Structure de la table `glpi_softwares`
--

CREATE TABLE `glpi_softwares` (
  `id` int(11) NOT NULL,
  `entities_id` int(11) NOT NULL DEFAULT '0',
  `is_recursive` tinyint(1) NOT NULL DEFAULT '0',
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `comment` text COLLATE utf8_unicode_ci,
  `locations_id` int(11) NOT NULL DEFAULT '0',
  `users_id_tech` int(11) NOT NULL DEFAULT '0',
  `groups_id_tech` int(11) NOT NULL DEFAULT '0',
  `is_update` tinyint(1) NOT NULL DEFAULT '0',
  `softwares_id` int(11) NOT NULL DEFAULT '0',
  `manufacturers_id` int(11) NOT NULL DEFAULT '0',
  `is_deleted` tinyint(1) NOT NULL DEFAULT '0',
  `is_template` tinyint(1) NOT NULL DEFAULT '0',
  `template_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `date_mod` datetime DEFAULT NULL,
  `users_id` int(11) NOT NULL DEFAULT '0',
  `groups_id` int(11) NOT NULL DEFAULT '0',
  `ticket_tco` decimal(20,4) DEFAULT '0.0000',
  `is_helpdesk_visible` tinyint(1) NOT NULL DEFAULT '1',
  `softwarecategories_id` int(11) NOT NULL DEFAULT '0',
  `is_valid` tinyint(1) NOT NULL DEFAULT '1',
  `date_creation` datetime DEFAULT NULL
) COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `glpi_softwareversions`
--

CREATE TABLE `glpi_softwareversions` (
  `id` int(11) NOT NULL,
  `entities_id` int(11) NOT NULL DEFAULT '0',
  `is_recursive` tinyint(1) NOT NULL DEFAULT '0',
  `softwares_id` int(11) NOT NULL DEFAULT '0',
  `states_id` int(11) NOT NULL DEFAULT '0',
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `comment` text COLLATE utf8_unicode_ci,
  `operatingsystems_id` int(11) NOT NULL DEFAULT '0',
  `date_mod` datetime DEFAULT NULL,
  `date_creation` datetime DEFAULT NULL
) COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `glpi_solutiontemplates`
--

CREATE TABLE `glpi_solutiontemplates` (
  `id` int(11) NOT NULL,
  `entities_id` int(11) NOT NULL DEFAULT '0',
  `is_recursive` tinyint(1) NOT NULL DEFAULT '0',
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `content` text COLLATE utf8_unicode_ci,
  `solutiontypes_id` int(11) NOT NULL DEFAULT '0',
  `comment` text COLLATE utf8_unicode_ci,
  `date_mod` datetime DEFAULT NULL,
  `date_creation` datetime DEFAULT NULL
) COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `glpi_solutiontypes`
--

CREATE TABLE `glpi_solutiontypes` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `comment` text COLLATE utf8_unicode_ci,
  `entities_id` int(11) NOT NULL DEFAULT '0',
  `is_recursive` tinyint(1) NOT NULL DEFAULT '1',
  `date_mod` datetime DEFAULT NULL,
  `date_creation` datetime DEFAULT NULL
) COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `glpi_ssovariables`
--

CREATE TABLE `glpi_ssovariables` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `comment` text COLLATE utf8_unicode_ci NOT NULL,
  `date_mod` datetime DEFAULT NULL,
  `date_creation` datetime DEFAULT NULL
) COLLATE=utf8_unicode_ci;

--
-- Déchargement des données de la table `glpi_ssovariables`
--

INSERT INTO `glpi_ssovariables` (`id`, `name`, `comment`, `date_mod`, `date_creation`) VALUES
(1, 'HTTP_AUTH_USER', '', NULL, NULL),
(2, 'REMOTE_USER', '', NULL, NULL),
(3, 'PHP_AUTH_USER', '', NULL, NULL),
(4, 'USERNAME', '', NULL, NULL),
(5, 'REDIRECT_REMOTE_USER', '', NULL, NULL),
(6, 'HTTP_REMOTE_USER', '', NULL, NULL);

-- --------------------------------------------------------

--
-- Structure de la table `glpi_states`
--

CREATE TABLE `glpi_states` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `entities_id` int(11) NOT NULL DEFAULT '0',
  `is_recursive` tinyint(1) NOT NULL DEFAULT '0',
  `comment` text COLLATE utf8_unicode_ci,
  `states_id` int(11) NOT NULL DEFAULT '0',
  `completename` text COLLATE utf8_unicode_ci,
  `level` int(11) NOT NULL DEFAULT '0',
  `ancestors_cache` longtext COLLATE utf8_unicode_ci,
  `sons_cache` longtext COLLATE utf8_unicode_ci,
  `is_visible_computer` tinyint(1) NOT NULL DEFAULT '1',
  `is_visible_monitor` tinyint(1) NOT NULL DEFAULT '1',
  `is_visible_networkequipment` tinyint(1) NOT NULL DEFAULT '1',
  `is_visible_peripheral` tinyint(1) NOT NULL DEFAULT '1',
  `is_visible_phone` tinyint(1) NOT NULL DEFAULT '1',
  `is_visible_printer` tinyint(1) NOT NULL DEFAULT '1',
  `is_visible_softwareversion` tinyint(1) NOT NULL DEFAULT '1',
  `is_visible_softwarelicense` tinyint(1) NOT NULL DEFAULT '1',
  `is_visible_line` tinyint(1) NOT NULL DEFAULT '1',
  `is_visible_certificate` tinyint(1) NOT NULL DEFAULT '1',
  `date_mod` datetime DEFAULT NULL,
  `date_creation` datetime DEFAULT NULL
) COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `glpi_suppliers`
--

CREATE TABLE `glpi_suppliers` (
  `id` int(11) NOT NULL,
  `entities_id` int(11) NOT NULL DEFAULT '0',
  `is_recursive` tinyint(1) NOT NULL DEFAULT '0',
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `suppliertypes_id` int(11) NOT NULL DEFAULT '0',
  `address` text COLLATE utf8_unicode_ci,
  `postcode` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `town` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `state` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `country` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `website` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `phonenumber` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `comment` text COLLATE utf8_unicode_ci,
  `is_deleted` tinyint(1) NOT NULL DEFAULT '0',
  `fax` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `date_mod` datetime DEFAULT NULL,
  `date_creation` datetime DEFAULT NULL
) COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `glpi_suppliers_tickets`
--

CREATE TABLE `glpi_suppliers_tickets` (
  `id` int(11) NOT NULL,
  `tickets_id` int(11) NOT NULL DEFAULT '0',
  `suppliers_id` int(11) NOT NULL DEFAULT '0',
  `type` int(11) NOT NULL DEFAULT '1',
  `use_notification` tinyint(1) NOT NULL DEFAULT '0',
  `alternative_email` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `glpi_suppliertypes`
--

CREATE TABLE `glpi_suppliertypes` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `comment` text COLLATE utf8_unicode_ci,
  `date_mod` datetime DEFAULT NULL,
  `date_creation` datetime DEFAULT NULL
) COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `glpi_taskcategories`
--

CREATE TABLE `glpi_taskcategories` (
  `id` int(11) NOT NULL,
  `entities_id` int(11) NOT NULL DEFAULT '0',
  `is_recursive` tinyint(1) NOT NULL DEFAULT '0',
  `taskcategories_id` int(11) NOT NULL DEFAULT '0',
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `completename` text COLLATE utf8_unicode_ci,
  `comment` text COLLATE utf8_unicode_ci,
  `level` int(11) NOT NULL DEFAULT '0',
  `ancestors_cache` longtext COLLATE utf8_unicode_ci,
  `sons_cache` longtext COLLATE utf8_unicode_ci,
  `is_active` tinyint(1) NOT NULL DEFAULT '1',
  `is_helpdeskvisible` tinyint(1) NOT NULL DEFAULT '1',
  `date_mod` datetime DEFAULT NULL,
  `date_creation` datetime DEFAULT NULL,
  `knowbaseitemcategories_id` int(11) NOT NULL DEFAULT '0'
) COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `glpi_tasktemplates`
--

CREATE TABLE `glpi_tasktemplates` (
  `id` int(11) NOT NULL,
  `entities_id` int(11) NOT NULL DEFAULT '0',
  `is_recursive` tinyint(1) NOT NULL DEFAULT '0',
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `content` text COLLATE utf8_unicode_ci,
  `taskcategories_id` int(11) NOT NULL DEFAULT '0',
  `actiontime` int(11) NOT NULL DEFAULT '0',
  `comment` text COLLATE utf8_unicode_ci,
  `date_mod` datetime DEFAULT NULL,
  `date_creation` datetime DEFAULT NULL,
  `state` int(11) NOT NULL DEFAULT '0',
  `is_private` tinyint(1) NOT NULL DEFAULT '0',
  `users_id_tech` int(11) NOT NULL DEFAULT '0',
  `groups_id_tech` int(11) NOT NULL DEFAULT '0'
) COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `glpi_ticketcosts`
--

CREATE TABLE `glpi_ticketcosts` (
  `id` int(11) NOT NULL,
  `tickets_id` int(11) NOT NULL DEFAULT '0',
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `comment` text COLLATE utf8_unicode_ci,
  `begin_date` date DEFAULT NULL,
  `end_date` date DEFAULT NULL,
  `actiontime` int(11) NOT NULL DEFAULT '0',
  `cost_time` decimal(20,4) NOT NULL DEFAULT '0.0000',
  `cost_fixed` decimal(20,4) NOT NULL DEFAULT '0.0000',
  `cost_material` decimal(20,4) NOT NULL DEFAULT '0.0000',
  `budgets_id` int(11) NOT NULL DEFAULT '0',
  `entities_id` int(11) NOT NULL DEFAULT '0'
) COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `glpi_ticketfollowups`
--

CREATE TABLE `glpi_ticketfollowups` (
  `id` int(11) NOT NULL,
  `tickets_id` int(11) NOT NULL DEFAULT '0',
  `date` datetime DEFAULT NULL,
  `users_id` int(11) NOT NULL DEFAULT '0',
  `users_id_editor` int(11) NOT NULL DEFAULT '0',
  `content` longtext COLLATE utf8_unicode_ci,
  `is_private` tinyint(1) NOT NULL DEFAULT '0',
  `requesttypes_id` int(11) NOT NULL DEFAULT '0',
  `date_mod` datetime DEFAULT NULL,
  `date_creation` datetime DEFAULT NULL,
  `timeline_position` tinyint(1) NOT NULL DEFAULT '0'
) COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `glpi_ticketrecurrents`
--

CREATE TABLE `glpi_ticketrecurrents` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `comment` text COLLATE utf8_unicode_ci,
  `entities_id` int(11) NOT NULL DEFAULT '0',
  `is_recursive` tinyint(1) NOT NULL DEFAULT '0',
  `is_active` tinyint(1) NOT NULL DEFAULT '0',
  `tickettemplates_id` int(11) NOT NULL DEFAULT '0',
  `begin_date` datetime DEFAULT NULL,
  `periodicity` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `create_before` int(11) NOT NULL DEFAULT '0',
  `next_creation_date` datetime DEFAULT NULL,
  `calendars_id` int(11) NOT NULL DEFAULT '0',
  `end_date` datetime DEFAULT NULL
) COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `glpi_tickets`
--

CREATE TABLE `glpi_tickets` (
  `id` int(11) NOT NULL,
  `entities_id` int(11) NOT NULL DEFAULT '0',
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `date` datetime DEFAULT NULL,
  `closedate` datetime DEFAULT NULL,
  `solvedate` datetime DEFAULT NULL,
  `date_mod` datetime DEFAULT NULL,
  `users_id_lastupdater` int(11) NOT NULL DEFAULT '0',
  `status` int(11) NOT NULL DEFAULT '1',
  `users_id_recipient` int(11) NOT NULL DEFAULT '0',
  `requesttypes_id` int(11) NOT NULL DEFAULT '0',
  `content` longtext COLLATE utf8_unicode_ci,
  `urgency` int(11) NOT NULL DEFAULT '1',
  `impact` int(11) NOT NULL DEFAULT '1',
  `priority` int(11) NOT NULL DEFAULT '1',
  `itilcategories_id` int(11) NOT NULL DEFAULT '0',
  `type` int(11) NOT NULL DEFAULT '1',
  `solutiontypes_id` int(11) NOT NULL DEFAULT '0',
  `solution` longtext COLLATE utf8_unicode_ci,
  `global_validation` int(11) NOT NULL DEFAULT '1',
  `slas_ttr_id` int(11) NOT NULL DEFAULT '0',
  `slas_tto_id` int(11) NOT NULL DEFAULT '0',
  `ttr_slalevels_id` int(11) NOT NULL DEFAULT '0',
  `time_to_resolve` datetime DEFAULT NULL,
  `time_to_own` datetime DEFAULT NULL,
  `begin_waiting_date` datetime DEFAULT NULL,
  `sla_waiting_duration` int(11) NOT NULL DEFAULT '0',
  `ola_waiting_duration` int(11) NOT NULL DEFAULT '0',
  `olas_tto_id` int(11) NOT NULL DEFAULT '0',
  `olas_ttr_id` int(11) NOT NULL DEFAULT '0',
  `ttr_olalevels_id` int(11) NOT NULL DEFAULT '0',
  `internal_time_to_resolve` datetime DEFAULT NULL,
  `internal_time_to_own` datetime DEFAULT NULL,
  `waiting_duration` int(11) NOT NULL DEFAULT '0',
  `close_delay_stat` int(11) NOT NULL DEFAULT '0',
  `solve_delay_stat` int(11) NOT NULL DEFAULT '0',
  `takeintoaccount_delay_stat` int(11) NOT NULL DEFAULT '0',
  `actiontime` int(11) NOT NULL DEFAULT '0',
  `is_deleted` tinyint(1) NOT NULL DEFAULT '0',
  `locations_id` int(11) NOT NULL DEFAULT '0',
  `validation_percent` int(11) NOT NULL DEFAULT '0',
  `date_creation` datetime DEFAULT NULL
) COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `glpi_ticketsatisfactions`
--

CREATE TABLE `glpi_ticketsatisfactions` (
  `id` int(11) NOT NULL,
  `tickets_id` int(11) NOT NULL DEFAULT '0',
  `type` int(11) NOT NULL DEFAULT '1',
  `date_begin` datetime DEFAULT NULL,
  `date_answered` datetime DEFAULT NULL,
  `satisfaction` int(11) DEFAULT NULL,
  `comment` text COLLATE utf8_unicode_ci
) COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `glpi_tickets_tickets`
--

CREATE TABLE `glpi_tickets_tickets` (
  `id` int(11) NOT NULL,
  `tickets_id_1` int(11) NOT NULL DEFAULT '0',
  `tickets_id_2` int(11) NOT NULL DEFAULT '0',
  `link` int(11) NOT NULL DEFAULT '1'
) COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `glpi_tickets_users`
--

CREATE TABLE `glpi_tickets_users` (
  `id` int(11) NOT NULL,
  `tickets_id` int(11) NOT NULL DEFAULT '0',
  `users_id` int(11) NOT NULL DEFAULT '0',
  `type` int(11) NOT NULL DEFAULT '1',
  `use_notification` tinyint(1) NOT NULL DEFAULT '1',
  `alternative_email` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `glpi_tickettasks`
--

CREATE TABLE `glpi_tickettasks` (
  `id` int(11) NOT NULL,
  `tickets_id` int(11) NOT NULL DEFAULT '0',
  `taskcategories_id` int(11) NOT NULL DEFAULT '0',
  `date` datetime DEFAULT NULL,
  `users_id` int(11) NOT NULL DEFAULT '0',
  `users_id_editor` int(11) NOT NULL DEFAULT '0',
  `content` longtext COLLATE utf8_unicode_ci,
  `is_private` tinyint(1) NOT NULL DEFAULT '0',
  `actiontime` int(11) NOT NULL DEFAULT '0',
  `begin` datetime DEFAULT NULL,
  `end` datetime DEFAULT NULL,
  `state` int(11) NOT NULL DEFAULT '1',
  `users_id_tech` int(11) NOT NULL DEFAULT '0',
  `groups_id_tech` int(11) NOT NULL DEFAULT '0',
  `date_mod` datetime DEFAULT NULL,
  `date_creation` datetime DEFAULT NULL,
  `tasktemplates_id` int(11) NOT NULL DEFAULT '0',
  `timeline_position` tinyint(1) NOT NULL DEFAULT '0'
) COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `glpi_tickettemplatehiddenfields`
--

CREATE TABLE `glpi_tickettemplatehiddenfields` (
  `id` int(11) NOT NULL,
  `tickettemplates_id` int(11) NOT NULL DEFAULT '0',
  `num` int(11) NOT NULL DEFAULT '0'
) COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `glpi_tickettemplatemandatoryfields`
--

CREATE TABLE `glpi_tickettemplatemandatoryfields` (
  `id` int(11) NOT NULL,
  `tickettemplates_id` int(11) NOT NULL DEFAULT '0',
  `num` int(11) NOT NULL DEFAULT '0'
) COLLATE=utf8_unicode_ci;

--
-- Déchargement des données de la table `glpi_tickettemplatemandatoryfields`
--

INSERT INTO `glpi_tickettemplatemandatoryfields` (`id`, `tickettemplates_id`, `num`) VALUES
(1, 1, 21);

-- --------------------------------------------------------

--
-- Structure de la table `glpi_tickettemplatepredefinedfields`
--

CREATE TABLE `glpi_tickettemplatepredefinedfields` (
  `id` int(11) NOT NULL,
  `tickettemplates_id` int(11) NOT NULL DEFAULT '0',
  `num` int(11) NOT NULL DEFAULT '0',
  `value` text COLLATE utf8_unicode_ci
) COLLATE=utf8_unicode_ci;

--
-- Déchargement des données de la table `glpi_tickettemplatepredefinedfields`
--

INSERT INTO `glpi_tickettemplatepredefinedfields` (`id`, `tickettemplates_id`, `num`, `value`) VALUES
(1, 1, 21, 'Téléphone:\r\n\r\nMots de passe:\r\n\r\nAccessoires:\r\n\r\nPannes:\r\n\r\nTravaux en cours:\r\n\r\nTravaux effectués:'),
(2, 1, 1, 'NOM:                MACHINE:');

-- --------------------------------------------------------

--
-- Structure de la table `glpi_tickettemplates`
--

CREATE TABLE `glpi_tickettemplates` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `entities_id` int(11) NOT NULL DEFAULT '0',
  `is_recursive` tinyint(1) NOT NULL DEFAULT '0',
  `comment` text COLLATE utf8_unicode_ci
) COLLATE=utf8_unicode_ci;

--
-- Déchargement des données de la table `glpi_tickettemplates`
--

INSERT INTO `glpi_tickettemplates` (`id`, `name`, `entities_id`, `is_recursive`, `comment`) VALUES
(1, 'Default', 0, 1, NULL);

-- --------------------------------------------------------

--
-- Structure de la table `glpi_ticketvalidations`
--

CREATE TABLE `glpi_ticketvalidations` (
  `id` int(11) NOT NULL,
  `entities_id` int(11) NOT NULL DEFAULT '0',
  `users_id` int(11) NOT NULL DEFAULT '0',
  `tickets_id` int(11) NOT NULL DEFAULT '0',
  `users_id_validate` int(11) NOT NULL DEFAULT '0',
  `comment_submission` text COLLATE utf8_unicode_ci,
  `comment_validation` text COLLATE utf8_unicode_ci,
  `status` int(11) NOT NULL DEFAULT '2',
  `submission_date` datetime DEFAULT NULL,
  `validation_date` datetime DEFAULT NULL,
  `timeline_position` tinyint(1) NOT NULL DEFAULT '0'
) COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `glpi_transfers`
--

CREATE TABLE `glpi_transfers` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `keep_ticket` int(11) NOT NULL DEFAULT '0',
  `keep_networklink` int(11) NOT NULL DEFAULT '0',
  `keep_reservation` int(11) NOT NULL DEFAULT '0',
  `keep_history` int(11) NOT NULL DEFAULT '0',
  `keep_device` int(11) NOT NULL DEFAULT '0',
  `keep_infocom` int(11) NOT NULL DEFAULT '0',
  `keep_dc_monitor` int(11) NOT NULL DEFAULT '0',
  `clean_dc_monitor` int(11) NOT NULL DEFAULT '0',
  `keep_dc_phone` int(11) NOT NULL DEFAULT '0',
  `clean_dc_phone` int(11) NOT NULL DEFAULT '0',
  `keep_dc_peripheral` int(11) NOT NULL DEFAULT '0',
  `clean_dc_peripheral` int(11) NOT NULL DEFAULT '0',
  `keep_dc_printer` int(11) NOT NULL DEFAULT '0',
  `clean_dc_printer` int(11) NOT NULL DEFAULT '0',
  `keep_supplier` int(11) NOT NULL DEFAULT '0',
  `clean_supplier` int(11) NOT NULL DEFAULT '0',
  `keep_contact` int(11) NOT NULL DEFAULT '0',
  `clean_contact` int(11) NOT NULL DEFAULT '0',
  `keep_contract` int(11) NOT NULL DEFAULT '0',
  `clean_contract` int(11) NOT NULL DEFAULT '0',
  `keep_software` int(11) NOT NULL DEFAULT '0',
  `clean_software` int(11) NOT NULL DEFAULT '0',
  `keep_document` int(11) NOT NULL DEFAULT '0',
  `clean_document` int(11) NOT NULL DEFAULT '0',
  `keep_cartridgeitem` int(11) NOT NULL DEFAULT '0',
  `clean_cartridgeitem` int(11) NOT NULL DEFAULT '0',
  `keep_cartridge` int(11) NOT NULL DEFAULT '0',
  `keep_consumable` int(11) NOT NULL DEFAULT '0',
  `date_mod` datetime DEFAULT NULL,
  `comment` text COLLATE utf8_unicode_ci,
  `keep_disk` int(11) NOT NULL DEFAULT '0'
) COLLATE=utf8_unicode_ci;

--
-- Déchargement des données de la table `glpi_transfers`
--

INSERT INTO `glpi_transfers` (`id`, `name`, `keep_ticket`, `keep_networklink`, `keep_reservation`, `keep_history`, `keep_device`, `keep_infocom`, `keep_dc_monitor`, `clean_dc_monitor`, `keep_dc_phone`, `clean_dc_phone`, `keep_dc_peripheral`, `clean_dc_peripheral`, `keep_dc_printer`, `clean_dc_printer`, `keep_supplier`, `clean_supplier`, `keep_contact`, `clean_contact`, `keep_contract`, `clean_contract`, `keep_software`, `clean_software`, `keep_document`, `clean_document`, `keep_cartridgeitem`, `clean_cartridgeitem`, `keep_cartridge`, `keep_consumable`, `date_mod`, `comment`, `keep_disk`) VALUES
(1, 'complete', 2, 2, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, NULL, NULL, 1);

-- --------------------------------------------------------

--
-- Structure de la table `glpi_usercategories`
--

CREATE TABLE `glpi_usercategories` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `comment` text COLLATE utf8_unicode_ci,
  `date_mod` datetime DEFAULT NULL,
  `date_creation` datetime DEFAULT NULL
) COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `glpi_useremails`
--

CREATE TABLE `glpi_useremails` (
  `id` int(11) NOT NULL,
  `users_id` int(11) NOT NULL DEFAULT '0',
  `is_default` tinyint(1) NOT NULL DEFAULT '0',
  `is_dynamic` tinyint(1) NOT NULL DEFAULT '0',
  `email` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) COLLATE=utf8_unicode_ci;

--
-- Déchargement des données de la table `glpi_useremails`
--

INSERT INTO `glpi_useremails` (`id`, `users_id`, `is_default`, `is_dynamic`, `email`) VALUES
(1, 6, 1, 0, 'contact@autheman-victor.fr'),
(2, 7, 1, 0, 'contact@autheman-victor.fr');

-- --------------------------------------------------------

--
-- Structure de la table `glpi_users`
--

CREATE TABLE `glpi_users` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `phone` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `phone2` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `mobile` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `realname` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `firstname` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `locations_id` int(11) NOT NULL DEFAULT '0',
  `language` char(10) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'see define.php CFG_GLPI[language] array',
  `use_mode` int(11) NOT NULL DEFAULT '0',
  `list_limit` int(11) DEFAULT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT '1',
  `comment` text COLLATE utf8_unicode_ci,
  `auths_id` int(11) NOT NULL DEFAULT '0',
  `authtype` int(11) NOT NULL DEFAULT '0',
  `last_login` datetime DEFAULT NULL,
  `date_mod` datetime DEFAULT NULL,
  `date_sync` datetime DEFAULT NULL,
  `is_deleted` tinyint(1) NOT NULL DEFAULT '0',
  `profiles_id` int(11) NOT NULL DEFAULT '0',
  `entities_id` int(11) NOT NULL DEFAULT '0',
  `usertitles_id` int(11) NOT NULL DEFAULT '0',
  `usercategories_id` int(11) NOT NULL DEFAULT '0',
  `date_format` int(11) DEFAULT NULL,
  `number_format` int(11) DEFAULT NULL,
  `names_format` int(11) DEFAULT NULL,
  `csv_delimiter` char(1) COLLATE utf8_unicode_ci DEFAULT NULL,
  `is_ids_visible` tinyint(1) DEFAULT NULL,
  `use_flat_dropdowntree` tinyint(1) DEFAULT NULL,
  `show_jobs_at_login` tinyint(1) DEFAULT NULL,
  `priority_1` char(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `priority_2` char(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `priority_3` char(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `priority_4` char(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `priority_5` char(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `priority_6` char(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `followup_private` tinyint(1) DEFAULT NULL,
  `task_private` tinyint(1) DEFAULT NULL,
  `default_requesttypes_id` int(11) DEFAULT NULL,
  `password_forget_token` char(40) COLLATE utf8_unicode_ci DEFAULT NULL,
  `password_forget_token_date` datetime DEFAULT NULL,
  `user_dn` text COLLATE utf8_unicode_ci,
  `registration_number` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `show_count_on_tabs` tinyint(1) DEFAULT NULL,
  `refresh_ticket_list` int(11) DEFAULT NULL,
  `set_default_tech` tinyint(1) DEFAULT NULL,
  `personal_token` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `personal_token_date` datetime DEFAULT NULL,
  `api_token` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `api_token_date` datetime DEFAULT NULL,
  `display_count_on_home` int(11) DEFAULT NULL,
  `notification_to_myself` tinyint(1) DEFAULT NULL,
  `duedateok_color` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `duedatewarning_color` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `duedatecritical_color` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `duedatewarning_less` int(11) DEFAULT NULL,
  `duedatecritical_less` int(11) DEFAULT NULL,
  `duedatewarning_unit` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `duedatecritical_unit` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `display_options` text COLLATE utf8_unicode_ci,
  `is_deleted_ldap` tinyint(1) NOT NULL DEFAULT '0',
  `pdffont` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `picture` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `begin_date` datetime DEFAULT NULL,
  `end_date` datetime DEFAULT NULL,
  `keep_devices_when_purging_item` tinyint(1) DEFAULT NULL,
  `privatebookmarkorder` longtext COLLATE utf8_unicode_ci,
  `backcreated` tinyint(1) DEFAULT NULL,
  `task_state` int(11) DEFAULT NULL,
  `layout` char(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `palette` char(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ticket_timeline` tinyint(1) DEFAULT NULL,
  `ticket_timeline_keep_replaced_tabs` tinyint(1) DEFAULT NULL,
  `set_default_requester` tinyint(1) DEFAULT NULL,
  `lock_autolock_mode` tinyint(1) DEFAULT NULL,
  `lock_directunlock_notification` tinyint(1) DEFAULT NULL,
  `date_creation` datetime DEFAULT NULL,
  `highcontrast_css` tinyint(1) DEFAULT '0',
  `plannings` text COLLATE utf8_unicode_ci,
  `sync_field` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) COLLATE=utf8_unicode_ci;

--
-- Déchargement des données de la table `glpi_users`
--

INSERT INTO `glpi_users` (`id`, `name`, `password`, `phone`, `phone2`, `mobile`, `realname`, `firstname`, `locations_id`, `language`, `use_mode`, `list_limit`, `is_active`, `comment`, `auths_id`, `authtype`, `last_login`, `date_mod`, `date_sync`, `is_deleted`, `profiles_id`, `entities_id`, `usertitles_id`, `usercategories_id`, `date_format`, `number_format`, `names_format`, `csv_delimiter`, `is_ids_visible`, `use_flat_dropdowntree`, `show_jobs_at_login`, `priority_1`, `priority_2`, `priority_3`, `priority_4`, `priority_5`, `priority_6`, `followup_private`, `task_private`, `default_requesttypes_id`, `password_forget_token`, `password_forget_token_date`, `user_dn`, `registration_number`, `show_count_on_tabs`, `refresh_ticket_list`, `set_default_tech`, `personal_token`, `personal_token_date`, `api_token`, `api_token_date`, `display_count_on_home`, `notification_to_myself`, `duedateok_color`, `duedatewarning_color`, `duedatecritical_color`, `duedatewarning_less`, `duedatecritical_less`, `duedatewarning_unit`, `duedatecritical_unit`, `display_options`, `is_deleted_ldap`, `pdffont`, `picture`, `begin_date`, `end_date`, `keep_devices_when_purging_item`, `privatebookmarkorder`, `backcreated`, `task_state`, `layout`, `palette`, `ticket_timeline`, `ticket_timeline_keep_replaced_tabs`, `set_default_requester`, `lock_autolock_mode`, `lock_directunlock_notification`, `date_creation`, `highcontrast_css`, `plannings`, `sync_field`) VALUES
(2, 'glpi', '$2y$10$y.6pkP3KcGrtn8tbguoSJ.v4/M4eKwUDKzr2xVTwpo6D.o5Z/87ti', '', '', '', '', NULL, 0, NULL, 0, 20, 1, NULL, 0, 1, '2018-04-11 16:43:14', '2018-04-11 15:12:23', NULL, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, 'AtvNSAD4KoDpLGFYODGJUKnMsinHR9JRH0k37SKr', '2018-04-11 15:11:11', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL),
(3, 'post-only', '$2y$10$8UYtdO6eiABIK.hhRiNYPOsXiyWixdI4ik/lVbCd8FSzQ7pIFGeym', '', '', '', '', NULL, 0, NULL, 0, 20, 1, NULL, 0, 0, NULL, '2018-04-11 15:15:27', NULL, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '', NULL),
(4, 'tech', '$2y$10$uzF0WSTAqiaLQ3V50Zx1fe8AuBKbeSCH9T./1aC.AMYqEDaYAvYKu', '', '', '', '', NULL, 0, NULL, 0, 20, 1, NULL, 0, 0, NULL, '2018-04-11 15:15:45', NULL, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '', NULL),
(5, 'normal', '$2y$10$wVuECmYWvomKCi9P1HoYCutSy.A7L.yBse.2XgTk0W3iZ/QNsEQfu', '', '', '', '', NULL, 0, NULL, 0, 20, 1, NULL, 0, 0, NULL, '2018-04-11 15:16:49', NULL, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '', NULL),
(6, 'NatsuMaiii', '$2y$10$DQqclAYgYJ2X8BIoHBWhJuZPY.xua6aUMhPNRmmf7aUH/i9ufmReq', '', '', '0649259506', 'AUTHEMAN', 'Victor', 0, NULL, 0, NULL, 1, '', 0, 1, '2018-04-11 15:16:13', '2018-04-11 15:17:41', NULL, 1, 1, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, '261nLWZRwtlqqhF6kd7FZa5gteTlYUzqpLOt3QVs', '2018-04-11 15:14:43', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2018-04-11 15:14:01', NULL, NULL, NULL),
(7, 'autheman', '$2y$10$X/KQkkoMe60mvJJzysld9OH6dsfyH.z4heWJ5d6tDGSqMFKQTQiTK', '', '', '0649259506', 'AUTHEMAN', 'Victor', 0, NULL, 0, NULL, 1, '', 0, 1, '2019-04-01 10:31:18', '2018-04-11 15:22:12', NULL, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, 'DpD8BaMGZ0l7tu6BzW0MwP8gwEVX9vvqUf5mJVyO', '2018-04-11 15:22:12', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2018-04-11 15:22:00', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Structure de la table `glpi_usertitles`
--

CREATE TABLE `glpi_usertitles` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `comment` text COLLATE utf8_unicode_ci,
  `date_mod` datetime DEFAULT NULL,
  `date_creation` datetime DEFAULT NULL
) COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `glpi_virtualmachinestates`
--

CREATE TABLE `glpi_virtualmachinestates` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `comment` text COLLATE utf8_unicode_ci NOT NULL,
  `date_mod` datetime DEFAULT NULL,
  `date_creation` datetime DEFAULT NULL
) COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `glpi_virtualmachinesystems`
--

CREATE TABLE `glpi_virtualmachinesystems` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `comment` text COLLATE utf8_unicode_ci NOT NULL,
  `date_mod` datetime DEFAULT NULL,
  `date_creation` datetime DEFAULT NULL
) COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `glpi_virtualmachinetypes`
--

CREATE TABLE `glpi_virtualmachinetypes` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `comment` text COLLATE utf8_unicode_ci NOT NULL,
  `date_mod` datetime DEFAULT NULL,
  `date_creation` datetime DEFAULT NULL
) COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `glpi_vlans`
--

CREATE TABLE `glpi_vlans` (
  `id` int(11) NOT NULL,
  `entities_id` int(11) NOT NULL DEFAULT '0',
  `is_recursive` tinyint(1) NOT NULL DEFAULT '0',
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `comment` text COLLATE utf8_unicode_ci,
  `tag` int(11) NOT NULL DEFAULT '0',
  `date_mod` datetime DEFAULT NULL,
  `date_creation` datetime DEFAULT NULL
) COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `glpi_wifinetworks`
--

CREATE TABLE `glpi_wifinetworks` (
  `id` int(11) NOT NULL,
  `entities_id` int(11) NOT NULL DEFAULT '0',
  `is_recursive` tinyint(1) NOT NULL DEFAULT '0',
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `essid` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `mode` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'ad-hoc, access_point',
  `comment` text COLLATE utf8_unicode_ci,
  `date_mod` datetime DEFAULT NULL,
  `date_creation` datetime DEFAULT NULL
) COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `jaimes`
--

CREATE TABLE `jaimes` (
  `cle` varchar(200) NOT NULL,
  `votes` int(10) UNSIGNED NOT NULL,
  `dernier_vote` datetime NOT NULL,
  `derniere_ip` tinytext NOT NULL
);

-- --------------------------------------------------------

--
-- Structure de la table `membres`
--

CREATE TABLE `membres` (
  `memId` int(11) NOT NULL,
  `memNom` varchar(255) NOT NULL,
  `memPrenom` varchar(255) NOT NULL,
  `memEmail` varchar(255) NOT NULL,
  `memUtilisateur` varchar(32) NOT NULL,
  `memMotDePasse` text NOT NULL,
  `memKey` varchar(255) NOT NULL,
  `memConfirme` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `membres`
--

INSERT INTO `membres` (`memId`, `memNom`, `memPrenom`, `memEmail`, `memUtilisateur`, `memMotDePasse`, `memKey`, `memConfirme`) VALUES
(2, 'THIRARD', 'CECILE', 'thirard-c@sisteron.fr', 'thirardcecile', '41d0aebbd3225d9d238cba3f99bad8b9d8f0a2b9', '', 1),
(4, 'Sasha ', 'Aubry', 'sasha.aubry.22@gmail.com', 'PandaSha', '3091a134d274b966f4cd9ce9f83d8105b1cbe7b3', '08190005083720', 0),
(9, 'AUTHEMAN-THIRARD', 'Victor', 'authirard.victor@gmail.com', 'admin', '6b3c679aeefef0add0753fd84ee38354815523a0', '83337973090510', 1),
(10, 'Comiti', 'LÃ©o', 'leo.comiti@hotmail.fr', 'Jean Gerome', '58ad983135fe15c5a8e2e15fb5b501aedcf70dc2', '32982695984914', 1),
(11, 'hericotte', 'thomas', 'her.thomas0607@gmail.com', 'thomas', '92dbe74482a3cd609e385c51c11d4c394e8c010c', '70792113412191', 1),
(12, 'Le Pivert', 'Julie', 'j.lepivert@outlook.fr', 'Grievous0578', '9b3355518fda7bd67fe60d2af16c66e8b76f2127', '53675843419717', 1),
(13, 'Legrand', 'Julien', 'prof.legrand@gmail.com', 'legrandjulien', 'c0b326c66d4d9932918792fe757a4d857b621dac', '50178075124964', 1),
(14, 'robert', 'Jean-Philippe', 'robfifi004@gmail.com', 'jeanphilippe', '5ab860616d3e57a94fa9505d9e5172a7ef8cc3eb', '87876070900184', 1),
(15, 'Le Pivert', 'Julie', 'Grievous05000n1@outlook.fr', 'Julie LP', '5588df3d06d6cf591f22b6aeff9bbcb66edb25ea', '32904946562838', 1),
(16, 'Bourbousse', 'Sylvain', 'Sylvaindu05@yahoo.fr', 'Sylvanito', 'bc18707e3d9d469693c5cd4170a42f0c4110e5f8', '82005985521097', 1),
(17, 'root', 'test', 'contact@autheman-victor.fr', 'root', '6b3c679aeefef0add0753fd84ee38354815523a0', '07166822324199', 1);

-- --------------------------------------------------------

--
-- Structure de la table `membresBackup`
--

CREATE TABLE `membresBackup` (
  `id` int(11) NOT NULL,
  `pseudo` varchar(255) NOT NULL,
  `mail` varchar(255) NOT NULL,
  `motdepasse` text NOT NULL,
  `avatar` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `membresBackup`
--

INSERT INTO `membresBackup` (`id`, `pseudo`, `mail`, `motdepasse`, `avatar`) VALUES
(1, 'NatsuMaiii', 'authirard.victor@gmail.com', '6b3c679aeefef0add0753fd84ee38354815523a0', '1.gif'),
(2, 'testencore', 'test@test.fr', '40bd001563085fc35165329ea1ff5c5ecbdbbeef', ''),
(3, 'sumpremier', 'autheman@cegetel.net', '88fa846e5f8aa198848be76e1abdcb7d7a42d292', ''),
(4, 'SinaY', 'sinaycontactpro@gmail.com', '416a1f2e2411e99371f6f04d6c5d8541511d9cec', '4.png'),
(5, 'unik', 'vicdes6400@gmail.com', '3d28f2538554ee9d06f348d6a05aa907eb1b2dbb', ''),
(6, 'PandaSha', 'sasha.aubry.22@gmail.com', 'c2179327ab5ab971964c3cb058f79e06b14725d6', ''),
(7, 'Pradse', 'cyrildossat@hotmail.fr', '7a7692f67ffa75ffbf7df085175718ce502dfac0', ''),
(8, 'Grievous05000n1', 'Grievous05000n1@outlook.fr', '0e02163f42130e97208c690f0f6d8a14f9b6ec83', ''),
(9, 'KwikWtn', 'warton.melanie@gmail.com', 'c6beb551afef172d49d39917ef93fb6bcc365544', ''),
(10, 'lÃ©lÃ©', 'leo.comiti@hotmail.fr', '58ad983135fe15c5a8e2e15fb5b501aedcf70dc2', '10.jpeg');

-- --------------------------------------------------------

--
-- Structure de la table `portfolio`
--

CREATE TABLE `portfolio` (
  `portId` int(11) NOT NULL,
  `portNom` varchar(50) DEFAULT NULL,
  `portImage` varchar(50) DEFAULT NULL,
  `portDesc` text,
  `portMementoURL` text,
  `portAncre` varchar(20) DEFAULT NULL
);

--
-- Déchargement des données de la table `portfolio`
--

INSERT INTO `portfolio` (`portId`, `portNom`, `portImage`, `portDesc`, `portMementoURL`, `portAncre`) VALUES
(2, 'JavaScript', 'pic08.jpg', 'JavaScript est un langage de programmation de scripts principalement employÃ© dans les pages web interactives mais aussi pour les serveurs avec l\'utilisation de Node.js.', '', 'javascript'),
(3, 'PHP', 'pic09.jpg', 'PHP: Hypertext Preprocessor, plus connu sous son sigle PHP, est un langage de programmation libre, principalement utilisÃ© pour produire des pages Web dynamiques via un serveur HTTP, mais pouvant Ã©galement fonctionner comme n\'importe quel langage interprÃ©tÃ© de faÃ§on locale. PHP est un langage impÃ©ratif orientÃ© objet.', '', 'php'),
(4, 'HTML(5)', 'pic10.jpg', 'Lâ€™HyperText Markup Language, gÃ©nÃ©ralement abrÃ©gÃ© HTML, est le langage de balisage conÃ§u pour reprÃ©senter les pages web. Câ€™est un langage permettant dâ€™Ã©crire de lâ€™hypertexte, dâ€™oÃ¹ son nom.', '', 'html5'),
(5, 'CSS(3)', 'pic11.jpg', 'Les feuilles de style en cascade, gÃ©nÃ©ralement appelÃ©es CSS de l\'anglais Cascading Style Sheets, forment un langage informatique qui dÃ©crit la prÃ©sentation des documents HTML et XML. Les standards dÃ©finissant CSS sont publiÃ©s par le World Wide Web Consortium.', '', 'css'),
(6, 'Linux', 'pic12.jpg', 'Linux est, au sens restreint, le noyau de systÃ¨me d\'exploitation Linux, et au sens large, tout systÃ¨me d\'exploitation fondÃ© sur le noyau Linux. Cet article couvre le sens large.', 'https://drive.google.com/open?id=1mbIUWfyFmB8oR60hfN7iGqvriQ2-5gr9Tmclt5Cx9dg', 'linux'),
(7, 'RÃ©seaux', 'pic13.jpg', 'Un rÃ©seau informatique est un ensemble d\'Ã©quipements reliÃ©s entre eux pour Ã©changer des informations. Par analogie avec un filet (un rÃ©seau est un Â« petit rets Â», c\'est-Ã -dire un petit filet1), on appelle nÅ“ud l\'extrÃ©mitÃ© d\'une connexion, qui peut Ãªtre une intersection de plusieurs connexions ou Ã©quipements (un ordinateur, un routeur, un concentrateur, un commutateur). IndÃ©pendamment de la technologie sous-jacente, on porte gÃ©nÃ©ralement une vue matricielle sur ce qu\'est un rÃ©seau. De faÃ§on horizontale, un rÃ©seau est une strate de trois couches : les infrastructures, les fonctions de contrÃ´le et de commande, les services rendus Ã  l\'utilisateur. De faÃ§on verticale, on utilise souvent un dÃ©coupage gÃ©ographique : rÃ©seau local, rÃ©seau d\'accÃ¨s et rÃ©seau d\'interconnexion. ', '', 'reseaux'),
(8, 'Codage de l\'information', 'pic14.jpg', 'Comprendre les techniques de codage numÃ©riques des donnÃ©es de l\'environnement de l\'utilisateur, telles que nombre entiers ou rÃ©els, et textes.', '', 'codage-de-l-informat'),
(9, 'VirtualBox', 'pic15.jpg', 'Oracle VM VirtualBox est un logiciel libre de virtualisation publiÃ© par Oracle.', '', 'virtualbox'),
(10, 'CISCO', 'pic16.jpg', 'Cisco Systems est une entreprise informatique amÃ©ricaine spÃ©cialisÃ©e, Ã  lâ€™origine, dans le matÃ©riel rÃ©seau, et depuis 2009 dans les serveurs. Elle est dirigÃ©e par Chuck Robbins depuis juillet 2015.', '', 'cisco'),
(11, 'Droit Ã‰conomie Management', 'edm.jpg', 'EDM', '', 'edm'),
(12, 'Wordpress', 'wp.png', 'WordPress est un systÃ¨me de gestion de contenu gratuit, libre et open-source. Ce logiciel Ã©crit en PHP repose sur une base de donnÃ©es MySQL et est distribuÃ© par l\'entreprise amÃ©ricaine Automattic. Les fonctionnalitÃ©s de WordPress lui permettent de crÃ©er et gÃ©rer diffÃ©rents types de sites Web: blogue, site de venteâ€¦', '', 'wp');

-- --------------------------------------------------------

--
-- Structure de la table `producteurs`
--

CREATE TABLE `producteurs` (
  `prodId` int(11) NOT NULL,
  `prodNom` varchar(50) DEFAULT NULL,
  `prodPrenom` varchar(50) DEFAULT NULL,
  `prodEmail` varchar(50) DEFAULT NULL,
  `prodPw` text,
  `prodTelFix` char(10) DEFAULT NULL,
  `prodTelPort` char(10) DEFAULT NULL,
  `prodNomEnt` varchar(50) DEFAULT NULL,
  `prodActivite` varchar(50) DEFAULT NULL,
  `prodAdresse` varchar(50) DEFAULT NULL,
  `prodSIREN` varchar(50) DEFAULT NULL,
  `prodKey` char(15) DEFAULT NULL,
  `prodConfirme` tinyint(1) DEFAULT NULL
);

--
-- Déchargement des données de la table `producteurs`
--

INSERT INTO `producteurs` (`prodId`, `prodNom`, `prodPrenom`, `prodEmail`, `prodPw`, `prodTelFix`, `prodTelPort`, `prodNomEnt`, `prodActivite`, `prodAdresse`, `prodSIREN`, `prodKey`, `prodConfirme`) VALUES
(5, 'AUTHEMAN', 'Victor', 'authirard.victor@gmail.com', '6b3c679aeefef0add0753fd84ee38354815523a0', '', '0649259506', 'Les bananes', '05000', 'Industrielle', '56266666788', '83025612688223', 1);

-- --------------------------------------------------------

--
-- Structure de la table `projets`
--

CREATE TABLE `projets` (
  `projetId` int(11) NOT NULL,
  `projetNom` varchar(50) CHARACTER SET latin1 NOT NULL,
  `projetDes` text NOT NULL,
  `projetIMG` varchar(20) CHARACTER SET latin1 NOT NULL,
  `projetURL` text CHARACTER SET latin1 NOT NULL
);

--
-- Déchargement des données de la table `projets`
--

INSERT INTO `projets` (`projetId`, `projetNom`, `projetDes`, `projetIMG`, `projetURL`) VALUES
(1, 'Black Curtain Production', 'Une association (en cour de création) qui à pour but de promouvoir le cinéma ? quiconque le désire.', 'img1.jpg', 'http://deb9server.ddns.net/Black_Curtains_Corp/'),
(2, 'Les éclaireurs du midi', 'Un site internet sur les scouts du 04 : les éclaireurs du midi.', 'img2.jpg', 'http://autheman-victor.fr/newSiteScout/'),
(3, 'Portfolio Léo Comiti', 'Voici le portfolio d\'un ami léo comiti: Photographe, randonneur et administrateur réseaux.', 'img3.jpg', 'http://deb9server.ddns.net/portfolio_Leo/'),
(4, 'New World', 'New World est un projet PPE (projet personalisé encadré) de vente avec un systeme de point relai.', 'img4.jpg', 'http://deb9server.ddns.net/DRIVE/'),
(5, 'Portfolio Rémi BREGEARD', 'Voici le portfolio d\'un ami Rémi BREGEARD : Passioné de cinéma et administrateur réseaux', 'img5.jpg', 'http://deb9server.ddns.net/portfolio_remi/'),
(6, 'Arithmetique', 'Projet de site d\'évaluation en arithmetique', 'img6.jpg', 'http://deb9server.ddns.net/arithmetique/');

-- --------------------------------------------------------

--
-- Structure de la table `redaction`
--

CREATE TABLE `redaction` (
  `id` int(11) NOT NULL,
  `pseudo` varchar(255) NOT NULL,
  `mail` varchar(255) NOT NULL,
  `motdepasse` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `redaction`
--

INSERT INTO `redaction` (`id`, `pseudo`, `mail`, `motdepasse`) VALUES
(1, 'administrateur', 'contact@autheman-victor.fr', '6656cb7b1205e41e1fe2e0647478fe92cc3aadea');

-- --------------------------------------------------------

--
-- Structure de la table `wpblog_commentmeta`
--

CREATE TABLE `wpblog_commentmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `comment_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci
)mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `wpblog_comments`
--

CREATE TABLE `wpblog_comments` (
  `comment_ID` bigint(20) UNSIGNED NOT NULL,
  `comment_post_ID` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `comment_author` tinytext COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment_author_email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_author_url` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_author_IP` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment_karma` int(11) NOT NULL DEFAULT '0',
  `comment_approved` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `comment_agent` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0'
)mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `wpblog_comments`
--

INSERT INTO `wpblog_comments` (`comment_ID`, `comment_post_ID`, `comment_author`, `comment_author_email`, `comment_author_url`, `comment_author_IP`, `comment_date`, `comment_date_gmt`, `comment_content`, `comment_karma`, `comment_approved`, `comment_agent`, `comment_type`, `comment_parent`, `user_id`) VALUES
(2, 7, 'Dupond', 'dupondg@gmail.com', '', '109.208.75.42', '2019-01-04 20:13:06', '2019-01-04 19:13:06', 'Très bon article, je comprends mieux le concept de la relativité !', 0, '1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:64.0) Gecko/20100101 Firefox/64.0', '', 0, 0),
(3, 7, 'Victor AUTHEMAN', 'authirard.victor@gmail.com', 'http://www.autheman-victor.fr', '109.208.75.42', '2019-01-05 18:05:00', '2019-01-05 17:05:00', 'Merci ;)', 0, '1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:64.0) Gecko/20100101 Firefox/64.0', '', 2, 2),
(4, 44, 'Will', 'armando.bieber@gmail.com', 'http://tunklitankli.com/', '188.165.141.43', '2019-03-17 01:31:26', '2019-03-17 00:31:26', 'Have you ever before had problems with your webhost?\r\nI\'m open for recommendations as my webhost is terrible currently.', 0, '0', 'Mozilla/5.0 (X11; CrOS x86_64 10452.96.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.181 Safari/537.36', '', 0, 0);

-- --------------------------------------------------------

--
-- Structure de la table `wpblog_links`
--

CREATE TABLE `wpblog_links` (
  `link_id` bigint(20) UNSIGNED NOT NULL,
  `link_url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_target` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_visible` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Y',
  `link_owner` bigint(20) UNSIGNED NOT NULL DEFAULT '1',
  `link_rating` int(11) NOT NULL DEFAULT '0',
  `link_updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `link_rel` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_notes` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `link_rss` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
)mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `wpblog_options`
--

CREATE TABLE `wpblog_options` (
  `option_id` bigint(20) UNSIGNED NOT NULL,
  `option_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `option_value` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `autoload` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'yes'
)mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `wpblog_options`
--

INSERT INTO `wpblog_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(1, 'siteurl', 'https://autheman-victor.fr/blog', 'yes'),
(2, 'home', 'https://autheman-victor.fr/blog', 'yes'),
(3, 'blogname', 'Instant Diffusion', 'yes'),
(4, 'blogdescription', 'Blog AUTHEMAN Victor', 'yes'),
(5, 'users_can_register', '0', 'yes'),
(6, 'admin_email', 'authirard.victor@gmail.com', 'yes'),
(7, 'start_of_week', '1', 'yes'),
(8, 'use_balanceTags', '0', 'yes'),
(9, 'use_smilies', '1', 'yes'),
(10, 'require_name_email', '1', 'yes'),
(11, 'comments_notify', '1', 'yes'),
(12, 'posts_per_rss', '10', 'yes'),
(13, 'rss_use_excerpt', '0', 'yes'),
(14, 'mailserver_url', 'mail.example.com', 'yes'),
(15, 'mailserver_login', 'login@example.com', 'yes'),
(16, 'mailserver_pass', 'password', 'yes'),
(17, 'mailserver_port', '110', 'yes'),
(18, 'default_category', '1', 'yes'),
(19, 'default_comment_status', 'open', 'yes'),
(20, 'default_ping_status', 'open', 'yes'),
(21, 'default_pingback_flag', '1', 'yes'),
(22, 'posts_per_page', '10', 'yes'),
(23, 'date_format', 'j F Y', 'yes'),
(24, 'time_format', 'G \\h i \\m\\i\\n', 'yes'),
(25, 'links_updated_date_format', 'j F Y G \\h i \\m\\i\\n', 'yes'),
(26, 'comment_moderation', '0', 'yes'),
(27, 'moderation_notify', '1', 'yes'),
(28, 'permalink_structure', '/%year%/%monthnum%/%day%/%postname%/', 'yes'),
(29, 'rewrite_rules', 'a:89:{s:11:\"^wp-json/?$\";s:22:\"index.php?rest_route=/\";s:14:\"^wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:21:\"^index.php/wp-json/?$\";s:22:\"index.php?rest_route=/\";s:24:\"^index.php/wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:47:\"category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:42:\"category/(.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:23:\"category/(.+?)/embed/?$\";s:46:\"index.php?category_name=$matches[1]&embed=true\";s:35:\"category/(.+?)/page/?([0-9]{1,})/?$\";s:53:\"index.php?category_name=$matches[1]&paged=$matches[2]\";s:17:\"category/(.+?)/?$\";s:35:\"index.php?category_name=$matches[1]\";s:44:\"tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:39:\"tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:20:\"tag/([^/]+)/embed/?$\";s:36:\"index.php?tag=$matches[1]&embed=true\";s:32:\"tag/([^/]+)/page/?([0-9]{1,})/?$\";s:43:\"index.php?tag=$matches[1]&paged=$matches[2]\";s:14:\"tag/([^/]+)/?$\";s:25:\"index.php?tag=$matches[1]\";s:45:\"type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:40:\"type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:21:\"type/([^/]+)/embed/?$\";s:44:\"index.php?post_format=$matches[1]&embed=true\";s:33:\"type/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?post_format=$matches[1]&paged=$matches[2]\";s:15:\"type/([^/]+)/?$\";s:33:\"index.php?post_format=$matches[1]\";s:48:\".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$\";s:18:\"index.php?feed=old\";s:20:\".*wp-app\\.php(/.*)?$\";s:19:\"index.php?error=403\";s:18:\".*wp-register.php$\";s:23:\"index.php?register=true\";s:32:\"feed/(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:27:\"(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:8:\"embed/?$\";s:21:\"index.php?&embed=true\";s:20:\"page/?([0-9]{1,})/?$\";s:28:\"index.php?&paged=$matches[1]\";s:41:\"comments/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:36:\"comments/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:17:\"comments/embed/?$\";s:21:\"index.php?&embed=true\";s:44:\"search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:39:\"search/(.+)/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:20:\"search/(.+)/embed/?$\";s:34:\"index.php?s=$matches[1]&embed=true\";s:32:\"search/(.+)/page/?([0-9]{1,})/?$\";s:41:\"index.php?s=$matches[1]&paged=$matches[2]\";s:14:\"search/(.+)/?$\";s:23:\"index.php?s=$matches[1]\";s:47:\"author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:42:\"author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:23:\"author/([^/]+)/embed/?$\";s:44:\"index.php?author_name=$matches[1]&embed=true\";s:35:\"author/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?author_name=$matches[1]&paged=$matches[2]\";s:17:\"author/([^/]+)/?$\";s:33:\"index.php?author_name=$matches[1]\";s:69:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:45:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/embed/?$\";s:74:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&embed=true\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]\";s:39:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$\";s:63:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]\";s:56:\"([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:51:\"([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:32:\"([0-9]{4})/([0-9]{1,2})/embed/?$\";s:58:\"index.php?year=$matches[1]&monthnum=$matches[2]&embed=true\";s:44:\"([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]\";s:26:\"([0-9]{4})/([0-9]{1,2})/?$\";s:47:\"index.php?year=$matches[1]&monthnum=$matches[2]\";s:43:\"([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:38:\"([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:19:\"([0-9]{4})/embed/?$\";s:37:\"index.php?year=$matches[1]&embed=true\";s:31:\"([0-9]{4})/page/?([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&paged=$matches[2]\";s:13:\"([0-9]{4})/?$\";s:26:\"index.php?year=$matches[1]\";s:58:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:68:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:88:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:83:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:83:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:64:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:53:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/embed/?$\";s:91:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&embed=true\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/trackback/?$\";s:85:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&tb=1\";s:77:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&feed=$matches[5]\";s:72:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&feed=$matches[5]\";s:65:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/page/?([0-9]{1,})/?$\";s:98:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&paged=$matches[5]\";s:72:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/comment-page-([0-9]{1,})/?$\";s:98:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&cpage=$matches[5]\";s:61:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)(?:/([0-9]+))?/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&page=$matches[5]\";s:47:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:57:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:77:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:72:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:72:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:53:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&cpage=$matches[4]\";s:51:\"([0-9]{4})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&cpage=$matches[3]\";s:38:\"([0-9]{4})/comment-page-([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&cpage=$matches[2]\";s:27:\".?.+?/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\".?.+?/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\".?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\".?.+?/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"(.?.+?)/embed/?$\";s:41:\"index.php?pagename=$matches[1]&embed=true\";s:20:\"(.?.+?)/trackback/?$\";s:35:\"index.php?pagename=$matches[1]&tb=1\";s:40:\"(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:35:\"(.?.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:28:\"(.?.+?)/page/?([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&paged=$matches[2]\";s:35:\"(.?.+?)/comment-page-([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&cpage=$matches[2]\";s:24:\"(.?.+?)(?:/([0-9]+))?/?$\";s:47:\"index.php?pagename=$matches[1]&page=$matches[2]\";}', 'yes'),
(30, 'hack_file', '0', 'yes'),
(31, 'blog_charset', 'UTF-8', 'yes'),
(32, 'moderation_keys', '', 'no'),
(33, 'active_plugins', 'a:3:{i:0;s:23:\"elementor/elementor.php\";i:1;s:44:\"facebook-pagelike-widget/facebook_widget.php\";i:2;s:15:\"kirki/kirki.php\";}', 'yes'),
(34, 'category_base', '', 'yes'),
(35, 'ping_sites', 'http://rpc.pingomatic.com/', 'yes'),
(36, 'comment_max_links', '2', 'yes'),
(37, 'gmt_offset', '0', 'yes'),
(38, 'default_email_category', '1', 'yes'),
(39, 'recently_edited', '', 'no'),
(40, 'template', 'jefferson', 'yes'),
(41, 'stylesheet', 'jefferson', 'yes'),
(42, 'comment_whitelist', '1', 'yes'),
(43, 'blacklist_keys', '', 'no'),
(44, 'comment_registration', '0', 'yes'),
(45, 'html_type', 'text/html', 'yes'),
(46, 'use_trackback', '0', 'yes'),
(47, 'default_role', 'subscriber', 'yes'),
(48, 'db_version', '43764', 'yes'),
(49, 'uploads_use_yearmonth_folders', '1', 'yes'),
(50, 'upload_path', '', 'yes'),
(51, 'blog_public', '1', 'yes'),
(52, 'default_link_category', '2', 'yes'),
(53, 'show_on_front', 'posts', 'yes'),
(54, 'tag_base', '', 'yes'),
(55, 'show_avatars', '1', 'yes'),
(56, 'avatar_rating', 'G', 'yes'),
(57, 'upload_url_path', '', 'yes'),
(58, 'thumbnail_size_w', '150', 'yes'),
(59, 'thumbnail_size_h', '150', 'yes'),
(60, 'thumbnail_crop', '1', 'yes'),
(61, 'medium_size_w', '300', 'yes'),
(62, 'medium_size_h', '300', 'yes'),
(63, 'avatar_default', 'mystery', 'yes'),
(64, 'large_size_w', '1024', 'yes'),
(65, 'large_size_h', '1024', 'yes'),
(66, 'image_default_link_type', 'none', 'yes'),
(67, 'image_default_size', '', 'yes'),
(68, 'image_default_align', '', 'yes'),
(69, 'close_comments_for_old_posts', '0', 'yes'),
(70, 'close_comments_days_old', '14', 'yes'),
(71, 'thread_comments', '1', 'yes'),
(72, 'thread_comments_depth', '5', 'yes'),
(73, 'page_comments', '0', 'yes'),
(74, 'comments_per_page', '50', 'yes'),
(75, 'default_comments_page', 'newest', 'yes'),
(76, 'comment_order', 'asc', 'yes'),
(77, 'sticky_posts', 'a:0:{}', 'yes'),
(78, 'widget_categories', 'a:2:{i:2;a:4:{s:5:\"title\";s:0:\"\";s:5:\"count\";i:0;s:12:\"hierarchical\";i:0;s:8:\"dropdown\";i:0;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(79, 'widget_text', 'a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}', 'yes'),
(80, 'widget_rss', 'a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}', 'yes'),
(81, 'uninstall_plugins', 'a:1:{s:23:\"elementor/elementor.php\";a:2:{i:0;s:21:\"Elementor\\Maintenance\";i:1;s:9:\"uninstall\";}}', 'no'),
(82, 'timezone_string', 'Europe/Paris', 'yes'),
(83, 'page_for_posts', '0', 'yes'),
(84, 'page_on_front', '0', 'yes'),
(85, 'default_post_format', '0', 'yes'),
(86, 'link_manager_enabled', '0', 'yes'),
(87, 'finished_splitting_shared_terms', '1', 'yes'),
(88, 'site_icon', '0', 'yes'),
(89, 'medium_large_size_w', '768', 'yes'),
(90, 'medium_large_size_h', '0', 'yes'),
(91, 'wp_page_for_privacy_policy', '3', 'yes'),
(92, 'show_comments_cookies_opt_in', '0', 'yes'),
(93, 'initial_db_version', '43764', 'yes'),
(94, 'wpblog_user_roles', 'a:5:{s:13:\"administrator\";a:2:{s:4:\"name\";s:13:\"Administrator\";s:12:\"capabilities\";a:61:{s:13:\"switch_themes\";b:1;s:11:\"edit_themes\";b:1;s:16:\"activate_plugins\";b:1;s:12:\"edit_plugins\";b:1;s:10:\"edit_users\";b:1;s:10:\"edit_files\";b:1;s:14:\"manage_options\";b:1;s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:6:\"import\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:8:\"level_10\";b:1;s:7:\"level_9\";b:1;s:7:\"level_8\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:12:\"delete_users\";b:1;s:12:\"create_users\";b:1;s:17:\"unfiltered_upload\";b:1;s:14:\"edit_dashboard\";b:1;s:14:\"update_plugins\";b:1;s:14:\"delete_plugins\";b:1;s:15:\"install_plugins\";b:1;s:13:\"update_themes\";b:1;s:14:\"install_themes\";b:1;s:11:\"update_core\";b:1;s:10:\"list_users\";b:1;s:12:\"remove_users\";b:1;s:13:\"promote_users\";b:1;s:18:\"edit_theme_options\";b:1;s:13:\"delete_themes\";b:1;s:6:\"export\";b:1;}}s:6:\"editor\";a:2:{s:4:\"name\";s:6:\"Editor\";s:12:\"capabilities\";a:34:{s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;}}s:6:\"author\";a:2:{s:4:\"name\";s:6:\"Author\";s:12:\"capabilities\";a:10:{s:12:\"upload_files\";b:1;s:10:\"edit_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;s:22:\"delete_published_posts\";b:1;}}s:11:\"contributor\";a:2:{s:4:\"name\";s:11:\"Contributor\";s:12:\"capabilities\";a:5:{s:10:\"edit_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;}}s:10:\"subscriber\";a:2:{s:4:\"name\";s:10:\"Subscriber\";s:12:\"capabilities\";a:2:{s:4:\"read\";b:1;s:7:\"level_0\";b:1;}}}', 'yes'),
(95, 'fresh_site', '0', 'yes'),
(96, 'WPLANG', 'fr_FR', 'yes'),
(97, 'widget_search', 'a:3:{i:2;a:1:{s:5:\"title\";s:0:\"\";}i:3;a:1:{s:5:\"title\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(98, 'widget_recent-posts', 'a:3:{i:2;a:2:{s:5:\"title\";s:0:\"\";s:6:\"number\";i:5;}i:3;a:3:{s:5:\"title\";s:0:\"\";s:6:\"number\";i:5;s:9:\"show_date\";b:0;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(99, 'widget_recent-comments', 'a:3:{i:2;a:2:{s:5:\"title\";s:0:\"\";s:6:\"number\";i:5;}i:3;a:2:{s:5:\"title\";s:0:\"\";s:6:\"number\";i:5;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(100, 'widget_archives', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(101, 'widget_meta', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(102, 'sidebars_widgets', 'a:7:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:4:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";i:3;s:12:\"categories-2\";}s:13:\"sidebar-pages\";a:0:{}s:10:\"footer-one\";a:1:{i:0;s:8:\"search-3\";}s:10:\"footer-two\";a:1:{i:0;s:14:\"recent-posts-3\";}s:12:\"footer-three\";a:1:{i:0;s:17:\"recent-comments-3\";}s:13:\"array_version\";i:3;}', 'yes'),
(103, 'widget_pages', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(104, 'widget_calendar', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(105, 'widget_media_audio', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(106, 'widget_media_image', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(107, 'widget_media_gallery', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(108, 'widget_media_video', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(109, 'widget_tag_cloud', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(110, 'widget_nav_menu', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(111, 'widget_custom_html', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(112, 'cron', 'a:6:{i:1568852746;a:1:{s:34:\"wp_privacy_delete_old_export_files\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"hourly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:3600;}}}i:1568867146;a:3:{s:16:\"wp_version_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:17:\"wp_update_plugins\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:16:\"wp_update_themes\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1568910372;a:2:{s:19:\"wp_scheduled_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}s:25:\"delete_expired_transients\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1568911070;a:1:{s:30:\"wp_scheduled_auto_draft_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1568912530;a:1:{s:28:\"elementor/tracker/send_event\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}s:7:\"version\";i:2;}', 'yes'),
(113, 'theme_mods_twentynineteen', 'a:2:{s:18:\"custom_css_post_id\";i:-1;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1546619399;s:4:\"data\";a:2:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:6:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";i:3;s:10:\"archives-2\";i:4;s:12:\"categories-2\";i:5;s:6:\"meta-2\";}}}}', 'yes'),
(5350, '_site_transient_timeout_theme_roots', '1568853366', 'no'),
(5351, '_site_transient_theme_roots', 'a:4:{s:9:\"jefferson\";s:7:\"/themes\";s:14:\"twentynineteen\";s:7:\"/themes\";s:15:\"twentyseventeen\";s:7:\"/themes\";s:13:\"twentysixteen\";s:7:\"/themes\";}', 'no'),
(151, 'recently_activated', 'a:0:{}', 'yes'),
(5347, '_site_transient_timeout_kirki_googlefonts_cache', '1568855165', 'no');
INSERT INTO `wpblog_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(5348, '_site_transient_kirki_googlefonts_cache', 'a:915:{s:7:\"ABeeZee\";a:3:{s:5:\"label\";s:7:\"ABeeZee\";s:8:\"variants\";a:2:{i:0;s:6:\"italic\";i:1;s:7:\"regular\";}s:8:\"category\";s:10:\"sans-serif\";}s:4:\"Abel\";a:3:{s:5:\"label\";s:4:\"Abel\";s:8:\"variants\";a:1:{i:0;s:7:\"regular\";}s:8:\"category\";s:10:\"sans-serif\";}s:12:\"Abhaya Libre\";a:3:{s:5:\"label\";s:12:\"Abhaya Libre\";s:8:\"variants\";a:5:{i:0;s:3:\"500\";i:1;s:3:\"600\";i:2;s:3:\"700\";i:3;s:3:\"800\";i:4;s:7:\"regular\";}s:8:\"category\";s:5:\"serif\";}s:13:\"Abril Fatface\";a:3:{s:5:\"label\";s:13:\"Abril Fatface\";s:8:\"variants\";a:1:{i:0;s:7:\"regular\";}s:8:\"category\";s:7:\"display\";}s:8:\"Aclonica\";a:3:{s:5:\"label\";s:8:\"Aclonica\";s:8:\"variants\";a:1:{i:0;s:7:\"regular\";}s:8:\"category\";s:10:\"sans-serif\";}s:4:\"Acme\";a:3:{s:5:\"label\";s:4:\"Acme\";s:8:\"variants\";a:1:{i:0;s:7:\"regular\";}s:8:\"category\";s:10:\"sans-serif\";}s:5:\"Actor\";a:3:{s:5:\"label\";s:5:\"Actor\";s:8:\"variants\";a:1:{i:0;s:7:\"regular\";}s:8:\"category\";s:10:\"sans-serif\";}s:7:\"Adamina\";a:3:{s:5:\"label\";s:7:\"Adamina\";s:8:\"variants\";a:1:{i:0;s:7:\"regular\";}s:8:\"category\";s:5:\"serif\";}s:10:\"Advent Pro\";a:3:{s:5:\"label\";s:10:\"Advent Pro\";s:8:\"variants\";a:7:{i:0;s:3:\"100\";i:1;s:3:\"200\";i:2;s:3:\"300\";i:3;s:3:\"500\";i:4;s:3:\"600\";i:5;s:3:\"700\";i:6;s:7:\"regular\";}s:8:\"category\";s:10:\"sans-serif\";}s:15:\"Aguafina Script\";a:3:{s:5:\"label\";s:15:\"Aguafina Script\";s:8:\"variants\";a:1:{i:0;s:7:\"regular\";}s:8:\"category\";s:11:\"handwriting\";}s:7:\"Akronim\";a:3:{s:5:\"label\";s:7:\"Akronim\";s:8:\"variants\";a:1:{i:0;s:7:\"regular\";}s:8:\"category\";s:7:\"display\";}s:6:\"Aladin\";a:3:{s:5:\"label\";s:6:\"Aladin\";s:8:\"variants\";a:1:{i:0;s:7:\"regular\";}s:8:\"category\";s:11:\"handwriting\";}s:7:\"Aldrich\";a:3:{s:5:\"label\";s:7:\"Aldrich\";s:8:\"variants\";a:1:{i:0;s:7:\"regular\";}s:8:\"category\";s:10:\"sans-serif\";}s:4:\"Alef\";a:3:{s:5:\"label\";s:4:\"Alef\";s:8:\"variants\";a:2:{i:0;s:3:\"700\";i:1;s:7:\"regular\";}s:8:\"category\";s:10:\"sans-serif\";}s:8:\"Alegreya\";a:3:{s:5:\"label\";s:8:\"Alegreya\";s:8:\"variants\";a:10:{i:0;s:3:\"500\";i:1;s:9:\"500italic\";i:2;s:3:\"700\";i:3;s:9:\"700italic\";i:4;s:3:\"800\";i:5;s:9:\"800italic\";i:6;s:3:\"900\";i:7;s:9:\"900italic\";i:8;s:6:\"italic\";i:9;s:7:\"regular\";}s:8:\"category\";s:5:\"serif\";}s:11:\"Alegreya SC\";a:3:{s:5:\"label\";s:11:\"Alegreya SC\";s:8:\"variants\";a:10:{i:0;s:3:\"500\";i:1;s:9:\"500italic\";i:2;s:3:\"700\";i:3;s:9:\"700italic\";i:4;s:3:\"800\";i:5;s:9:\"800italic\";i:6;s:3:\"900\";i:7;s:9:\"900italic\";i:8;s:6:\"italic\";i:9;s:7:\"regular\";}s:8:\"category\";s:5:\"serif\";}s:13:\"Alegreya Sans\";a:3:{s:5:\"label\";s:13:\"Alegreya Sans\";s:8:\"variants\";a:14:{i:0;s:3:\"100\";i:1;s:9:\"100italic\";i:2;s:3:\"300\";i:3;s:9:\"300italic\";i:4;s:3:\"500\";i:5;s:9:\"500italic\";i:6;s:3:\"700\";i:7;s:9:\"700italic\";i:8;s:3:\"800\";i:9;s:9:\"800italic\";i:10;s:3:\"900\";i:11;s:9:\"900italic\";i:12;s:6:\"italic\";i:13;s:7:\"regular\";}s:8:\"category\";s:10:\"sans-serif\";}s:16:\"Alegreya Sans SC\";a:3:{s:5:\"label\";s:16:\"Alegreya Sans SC\";s:8:\"variants\";a:14:{i:0;s:3:\"100\";i:1;s:9:\"100italic\";i:2;s:3:\"300\";i:3;s:9:\"300italic\";i:4;s:3:\"500\";i:5;s:9:\"500italic\";i:6;s:3:\"700\";i:7;s:9:\"700italic\";i:8;s:3:\"800\";i:9;s:9:\"800italic\";i:10;s:3:\"900\";i:11;s:9:\"900italic\";i:12;s:6:\"italic\";i:13;s:7:\"regular\";}s:8:\"category\";s:10:\"sans-serif\";}s:4:\"Aleo\";a:3:{s:5:\"label\";s:4:\"Aleo\";s:8:\"variants\";a:6:{i:0;s:3:\"300\";i:1;s:9:\"300italic\";i:2;s:3:\"700\";i:3;s:9:\"700italic\";i:4;s:6:\"italic\";i:5;s:7:\"regular\";}s:8:\"category\";s:5:\"serif\";}s:10:\"Alex Brush\";a:3:{s:5:\"label\";s:10:\"Alex Brush\";s:8:\"variants\";a:1:{i:0;s:7:\"regular\";}s:8:\"category\";s:11:\"handwriting\";}s:13:\"Alfa Slab One\";a:3:{s:5:\"label\";s:13:\"Alfa Slab One\";s:8:\"variants\";a:1:{i:0;s:7:\"regular\";}s:8:\"category\";s:7:\"display\";}s:5:\"Alice\";a:3:{s:5:\"label\";s:5:\"Alice\";s:8:\"variants\";a:1:{i:0;s:7:\"regular\";}s:8:\"category\";s:5:\"serif\";}s:5:\"Alike\";a:3:{s:5:\"label\";s:5:\"Alike\";s:8:\"variants\";a:1:{i:0;s:7:\"regular\";}s:8:\"category\";s:5:\"serif\";}s:13:\"Alike Angular\";a:3:{s:5:\"label\";s:13:\"Alike Angular\";s:8:\"variants\";a:1:{i:0;s:7:\"regular\";}s:8:\"category\";s:5:\"serif\";}s:5:\"Allan\";a:3:{s:5:\"label\";s:5:\"Allan\";s:8:\"variants\";a:2:{i:0;s:3:\"700\";i:1;s:7:\"regular\";}s:8:\"category\";s:7:\"display\";}s:7:\"Allerta\";a:3:{s:5:\"label\";s:7:\"Allerta\";s:8:\"variants\";a:1:{i:0;s:7:\"regular\";}s:8:\"category\";s:10:\"sans-serif\";}s:15:\"Allerta Stencil\";a:3:{s:5:\"label\";s:15:\"Allerta Stencil\";s:8:\"variants\";a:1:{i:0;s:7:\"regular\";}s:8:\"category\";s:10:\"sans-serif\";}s:6:\"Allura\";a:3:{s:5:\"label\";s:6:\"Allura\";s:8:\"variants\";a:1:{i:0;s:7:\"regular\";}s:8:\"category\";s:11:\"handwriting\";}s:8:\"Almendra\";a:3:{s:5:\"label\";s:8:\"Almendra\";s:8:\"variants\";a:4:{i:0;s:3:\"700\";i:1;s:9:\"700italic\";i:2;s:6:\"italic\";i:3;s:7:\"regular\";}s:8:\"category\";s:5:\"serif\";}s:16:\"Almendra Display\";a:3:{s:5:\"label\";s:16:\"Almendra Display\";s:8:\"variants\";a:1:{i:0;s:7:\"regular\";}s:8:\"category\";s:7:\"display\";}s:11:\"Almendra SC\";a:3:{s:5:\"label\";s:11:\"Almendra SC\";s:8:\"variants\";a:1:{i:0;s:7:\"regular\";}s:8:\"category\";s:5:\"serif\";}s:8:\"Amarante\";a:3:{s:5:\"label\";s:8:\"Amarante\";s:8:\"variants\";a:1:{i:0;s:7:\"regular\";}s:8:\"category\";s:7:\"display\";}s:8:\"Amaranth\";a:3:{s:5:\"label\";s:8:\"Amaranth\";s:8:\"variants\";a:4:{i:0;s:3:\"700\";i:1;s:9:\"700italic\";i:2;s:6:\"italic\";i:3;s:7:\"regular\";}s:8:\"category\";s:10:\"sans-serif\";}s:9:\"Amatic SC\";a:3:{s:5:\"label\";s:9:\"Amatic SC\";s:8:\"variants\";a:2:{i:0;s:3:\"700\";i:1;s:7:\"regular\";}s:8:\"category\";s:11:\"handwriting\";}s:9:\"Amethysta\";a:3:{s:5:\"label\";s:9:\"Amethysta\";s:8:\"variants\";a:1:{i:0;s:7:\"regular\";}s:8:\"category\";s:5:\"serif\";}s:5:\"Amiko\";a:3:{s:5:\"label\";s:5:\"Amiko\";s:8:\"variants\";a:3:{i:0;s:3:\"600\";i:1;s:3:\"700\";i:2;s:7:\"regular\";}s:8:\"category\";s:10:\"sans-serif\";}s:5:\"Amiri\";a:3:{s:5:\"label\";s:5:\"Amiri\";s:8:\"variants\";a:4:{i:0;s:3:\"700\";i:1;s:9:\"700italic\";i:2;s:6:\"italic\";i:3;s:7:\"regular\";}s:8:\"category\";s:5:\"serif\";}s:5:\"Amita\";a:3:{s:5:\"label\";s:5:\"Amita\";s:8:\"variants\";a:2:{i:0;s:3:\"700\";i:1;s:7:\"regular\";}s:8:\"category\";s:11:\"handwriting\";}s:7:\"Anaheim\";a:3:{s:5:\"label\";s:7:\"Anaheim\";s:8:\"variants\";a:1:{i:0;s:7:\"regular\";}s:8:\"category\";s:10:\"sans-serif\";}s:6:\"Andada\";a:3:{s:5:\"label\";s:6:\"Andada\";s:8:\"variants\";a:1:{i:0;s:7:\"regular\";}s:8:\"category\";s:5:\"serif\";}s:6:\"Andika\";a:3:{s:5:\"label\";s:6:\"Andika\";s:8:\"variants\";a:1:{i:0;s:7:\"regular\";}s:8:\"category\";s:10:\"sans-serif\";}s:6:\"Angkor\";a:3:{s:5:\"label\";s:6:\"Angkor\";s:8:\"variants\";a:1:{i:0;s:7:\"regular\";}s:8:\"category\";s:7:\"display\";}s:24:\"Annie Use Your Telescope\";a:3:{s:5:\"label\";s:24:\"Annie Use Your Telescope\";s:8:\"variants\";a:1:{i:0;s:7:\"regular\";}s:8:\"category\";s:11:\"handwriting\";}s:13:\"Anonymous Pro\";a:3:{s:5:\"label\";s:13:\"Anonymous Pro\";s:8:\"variants\";a:4:{i:0;s:3:\"700\";i:1;s:9:\"700italic\";i:2;s:6:\"italic\";i:3;s:7:\"regular\";}s:8:\"category\";s:9:\"monospace\";}s:5:\"Antic\";a:3:{s:5:\"label\";s:5:\"Antic\";s:8:\"variants\";a:1:{i:0;s:7:\"regular\";}s:8:\"category\";s:10:\"sans-serif\";}s:12:\"Antic Didone\";a:3:{s:5:\"label\";s:12:\"Antic Didone\";s:8:\"variants\";a:1:{i:0;s:7:\"regular\";}s:8:\"category\";s:5:\"serif\";}s:10:\"Antic Slab\";a:3:{s:5:\"label\";s:10:\"Antic Slab\";s:8:\"variants\";a:1:{i:0;s:7:\"regular\";}s:8:\"category\";s:5:\"serif\";}s:5:\"Anton\";a:3:{s:5:\"label\";s:5:\"Anton\";s:8:\"variants\";a:1:{i:0;s:7:\"regular\";}s:8:\"category\";s:10:\"sans-serif\";}s:6:\"Arapey\";a:3:{s:5:\"label\";s:6:\"Arapey\";s:8:\"variants\";a:2:{i:0;s:6:\"italic\";i:1;s:7:\"regular\";}s:8:\"category\";s:5:\"serif\";}s:7:\"Arbutus\";a:3:{s:5:\"label\";s:7:\"Arbutus\";s:8:\"variants\";a:1:{i:0;s:7:\"regular\";}s:8:\"category\";s:7:\"display\";}s:12:\"Arbutus Slab\";a:3:{s:5:\"label\";s:12:\"Arbutus Slab\";s:8:\"variants\";a:1:{i:0;s:7:\"regular\";}s:8:\"category\";s:5:\"serif\";}s:19:\"Architects Daughter\";a:3:{s:5:\"label\";s:19:\"Architects Daughter\";s:8:\"variants\";a:1:{i:0;s:7:\"regular\";}s:8:\"category\";s:11:\"handwriting\";}s:7:\"Archivo\";a:3:{s:5:\"label\";s:7:\"Archivo\";s:8:\"variants\";a:8:{i:0;s:3:\"500\";i:1;s:9:\"500italic\";i:2;s:3:\"600\";i:3;s:9:\"600italic\";i:4;s:3:\"700\";i:5;s:9:\"700italic\";i:6;s:6:\"italic\";i:7;s:7:\"regular\";}s:8:\"category\";s:10:\"sans-serif\";}s:13:\"Archivo Black\";a:3:{s:5:\"label\";s:13:\"Archivo Black\";s:8:\"variants\";a:1:{i:0;s:7:\"regular\";}s:8:\"category\";s:10:\"sans-serif\";}s:14:\"Archivo Narrow\";a:3:{s:5:\"label\";s:14:\"Archivo Narrow\";s:8:\"variants\";a:8:{i:0;s:3:\"500\";i:1;s:9:\"500italic\";i:2;s:3:\"600\";i:3;s:9:\"600italic\";i:4;s:3:\"700\";i:5;s:9:\"700italic\";i:6;s:6:\"italic\";i:7;s:7:\"regular\";}s:8:\"category\";s:10:\"sans-serif\";}s:10:\"Aref Ruqaa\";a:3:{s:5:\"label\";s:10:\"Aref Ruqaa\";s:8:\"variants\";a:2:{i:0;s:3:\"700\";i:1;s:7:\"regular\";}s:8:\"category\";s:5:\"serif\";}s:13:\"Arima Madurai\";a:3:{s:5:\"label\";s:13:\"Arima Madurai\";s:8:\"variants\";a:8:{i:0;s:3:\"100\";i:1;s:3:\"200\";i:2;s:3:\"300\";i:3;s:3:\"500\";i:4;s:3:\"700\";i:5;s:3:\"800\";i:6;s:3:\"900\";i:7;s:7:\"regular\";}s:8:\"category\";s:7:\"display\";}s:5:\"Arimo\";a:3:{s:5:\"label\";s:5:\"Arimo\";s:8:\"variants\";a:4:{i:0;s:3:\"700\";i:1;s:9:\"700italic\";i:2;s:6:\"italic\";i:3;s:7:\"regular\";}s:8:\"category\";s:10:\"sans-serif\";}s:8:\"Arizonia\";a:3:{s:5:\"label\";s:8:\"Arizonia\";s:8:\"variants\";a:1:{i:0;s:7:\"regular\";}s:8:\"category\";s:11:\"handwriting\";}s:6:\"Armata\";a:3:{s:5:\"label\";s:6:\"Armata\";s:8:\"variants\";a:1:{i:0;s:7:\"regular\";}s:8:\"category\";s:10:\"sans-serif\";}s:7:\"Arsenal\";a:3:{s:5:\"label\";s:7:\"Arsenal\";s:8:\"variants\";a:4:{i:0;s:3:\"700\";i:1;s:9:\"700italic\";i:2;s:6:\"italic\";i:3;s:7:\"regular\";}s:8:\"category\";s:10:\"sans-serif\";}s:8:\"Artifika\";a:3:{s:5:\"label\";s:8:\"Artifika\";s:8:\"variants\";a:1:{i:0;s:7:\"regular\";}s:8:\"category\";s:5:\"serif\";}s:4:\"Arvo\";a:3:{s:5:\"label\";s:4:\"Arvo\";s:8:\"variants\";a:4:{i:0;s:3:\"700\";i:1;s:9:\"700italic\";i:2;s:6:\"italic\";i:3;s:7:\"regular\";}s:8:\"category\";s:5:\"serif\";}s:4:\"Arya\";a:3:{s:5:\"label\";s:4:\"Arya\";s:8:\"variants\";a:2:{i:0;s:3:\"700\";i:1;s:7:\"regular\";}s:8:\"category\";s:10:\"sans-serif\";}s:4:\"Asap\";a:3:{s:5:\"label\";s:4:\"Asap\";s:8:\"variants\";a:8:{i:0;s:3:\"500\";i:1;s:9:\"500italic\";i:2;s:3:\"600\";i:3;s:9:\"600italic\";i:4;s:3:\"700\";i:5;s:9:\"700italic\";i:6;s:6:\"italic\";i:7;s:7:\"regular\";}s:8:\"category\";s:10:\"sans-serif\";}s:14:\"Asap Condensed\";a:3:{s:5:\"label\";s:14:\"Asap Condensed\";s:8:\"variants\";a:8:{i:0;s:3:\"500\";i:1;s:9:\"500italic\";i:2;s:3:\"600\";i:3;s:9:\"600italic\";i:4;s:3:\"700\";i:5;s:9:\"700italic\";i:6;s:6:\"italic\";i:7;s:7:\"regular\";}s:8:\"category\";s:10:\"sans-serif\";}s:4:\"Asar\";a:3:{s:5:\"label\";s:4:\"Asar\";s:8:\"variants\";a:1:{i:0;s:7:\"regular\";}s:8:\"category\";s:5:\"serif\";}s:5:\"Asset\";a:3:{s:5:\"label\";s:5:\"Asset\";s:8:\"variants\";a:1:{i:0;s:7:\"regular\";}s:8:\"category\";s:7:\"display\";}s:9:\"Assistant\";a:3:{s:5:\"label\";s:9:\"Assistant\";s:8:\"variants\";a:6:{i:0;s:3:\"200\";i:1;s:3:\"300\";i:2;s:3:\"600\";i:3;s:3:\"700\";i:4;s:3:\"800\";i:5;s:7:\"regular\";}s:8:\"category\";s:10:\"sans-serif\";}s:7:\"Astloch\";a:3:{s:5:\"label\";s:7:\"Astloch\";s:8:\"variants\";a:2:{i:0;s:3:\"700\";i:1;s:7:\"regular\";}s:8:\"category\";s:7:\"display\";}s:4:\"Asul\";a:3:{s:5:\"label\";s:4:\"Asul\";s:8:\"variants\";a:2:{i:0;s:3:\"700\";i:1;s:7:\"regular\";}s:8:\"category\";s:10:\"sans-serif\";}s:6:\"Athiti\";a:3:{s:5:\"label\";s:6:\"Athiti\";s:8:\"variants\";a:6:{i:0;s:3:\"200\";i:1;s:3:\"300\";i:2;s:3:\"500\";i:3;s:3:\"600\";i:4;s:3:\"700\";i:5;s:7:\"regular\";}s:8:\"category\";s:10:\"sans-serif\";}s:4:\"Atma\";a:3:{s:5:\"label\";s:4:\"Atma\";s:8:\"variants\";a:5:{i:0;s:3:\"300\";i:1;s:3:\"500\";i:2;s:3:\"600\";i:3;s:3:\"700\";i:4;s:7:\"regular\";}s:8:\"category\";s:7:\"display\";}s:10:\"Atomic Age\";a:3:{s:5:\"label\";s:10:\"Atomic Age\";s:8:\"variants\";a:1:{i:0;s:7:\"regular\";}s:8:\"category\";s:7:\"display\";}s:6:\"Aubrey\";a:3:{s:5:\"label\";s:6:\"Aubrey\";s:8:\"variants\";a:1:{i:0;s:7:\"regular\";}s:8:\"category\";s:7:\"display\";}s:9:\"Audiowide\";a:3:{s:5:\"label\";s:9:\"Audiowide\";s:8:\"variants\";a:1:{i:0;s:7:\"regular\";}s:8:\"category\";s:7:\"display\";}s:10:\"Autour One\";a:3:{s:5:\"label\";s:10:\"Autour One\";s:8:\"variants\";a:1:{i:0;s:7:\"regular\";}s:8:\"category\";s:7:\"display\";}s:7:\"Average\";a:3:{s:5:\"label\";s:7:\"Average\";s:8:\"variants\";a:1:{i:0;s:7:\"regular\";}s:8:\"category\";s:5:\"serif\";}s:12:\"Average Sans\";a:3:{s:5:\"label\";s:12:\"Average Sans\";s:8:\"variants\";a:1:{i:0;s:7:\"regular\";}s:8:\"category\";s:10:\"sans-serif\";}s:19:\"Averia Gruesa Libre\";a:3:{s:5:\"label\";s:19:\"Averia Gruesa Libre\";s:8:\"variants\";a:1:{i:0;s:7:\"regular\";}s:8:\"category\";s:7:\"display\";}s:12:\"Averia Libre\";a:3:{s:5:\"label\";s:12:\"Averia Libre\";s:8:\"variants\";a:6:{i:0;s:3:\"300\";i:1;s:9:\"300italic\";i:2;s:3:\"700\";i:3;s:9:\"700italic\";i:4;s:6:\"italic\";i:5;s:7:\"regular\";}s:8:\"category\";s:7:\"display\";}s:17:\"Averia Sans Libre\";a:3:{s:5:\"label\";s:17:\"Averia Sans Libre\";s:8:\"variants\";a:6:{i:0;s:3:\"300\";i:1;s:9:\"300italic\";i:2;s:3:\"700\";i:3;s:9:\"700italic\";i:4;s:6:\"italic\";i:5;s:7:\"regular\";}s:8:\"category\";s:7:\"display\";}s:18:\"Averia Serif Libre\";a:3:{s:5:\"label\";s:18:\"Averia Serif Libre\";s:8:\"variants\";a:6:{i:0;s:3:\"300\";i:1;s:9:\"300italic\";i:2;s:3:\"700\";i:3;s:9:\"700italic\";i:4;s:6:\"italic\";i:5;s:7:\"regular\";}s:8:\"category\";s:7:\"display\";}s:4:\"B612\";a:3:{s:5:\"label\";s:4:\"B612\";s:8:\"variants\";a:4:{i:0;s:3:\"700\";i:1;s:9:\"700italic\";i:2;s:6:\"italic\";i:3;s:7:\"regular\";}s:8:\"category\";s:10:\"sans-serif\";}s:9:\"B612 Mono\";a:3:{s:5:\"label\";s:9:\"B612 Mono\";s:8:\"variants\";a:4:{i:0;s:3:\"700\";i:1;s:9:\"700italic\";i:2;s:6:\"italic\";i:3;s:7:\"regular\";}s:8:\"category\";s:9:\"monospace\";}s:10:\"Bad Script\";a:3:{s:5:\"label\";s:10:\"Bad Script\";s:8:\"variants\";a:1:{i:0;s:7:\"regular\";}s:8:\"category\";s:11:\"handwriting\";}s:7:\"Bahiana\";a:3:{s:5:\"label\";s:7:\"Bahiana\";s:8:\"variants\";a:1:{i:0;s:7:\"regular\";}s:8:\"category\";s:7:\"display\";}s:12:\"Bai Jamjuree\";a:3:{s:5:\"label\";s:12:\"Bai Jamjuree\";s:8:\"variants\";a:12:{i:0;s:3:\"200\";i:1;s:9:\"200italic\";i:2;s:3:\"300\";i:3;s:9:\"300italic\";i:4;s:3:\"500\";i:5;s:9:\"500italic\";i:6;s:3:\"600\";i:7;s:9:\"600italic\";i:8;s:3:\"700\";i:9;s:9:\"700italic\";i:10;s:6:\"italic\";i:11;s:7:\"regular\";}s:8:\"category\";s:10:\"sans-serif\";}s:5:\"Baloo\";a:3:{s:5:\"label\";s:5:\"Baloo\";s:8:\"variants\";a:1:{i:0;s:7:\"regular\";}s:8:\"category\";s:7:\"display\";}s:10:\"Baloo Bhai\";a:3:{s:5:\"label\";s:10:\"Baloo Bhai\";s:8:\"variants\";a:1:{i:0;s:7:\"regular\";}s:8:\"category\";s:7:\"display\";}s:14:\"Baloo Bhaijaan\";a:3:{s:5:\"label\";s:14:\"Baloo Bhaijaan\";s:8:\"variants\";a:1:{i:0;s:7:\"regular\";}s:8:\"category\";s:7:\"display\";}s:12:\"Baloo Bhaina\";a:3:{s:5:\"label\";s:12:\"Baloo Bhaina\";s:8:\"variants\";a:1:{i:0;s:7:\"regular\";}s:8:\"category\";s:7:\"display\";}s:13:\"Baloo Chettan\";a:3:{s:5:\"label\";s:13:\"Baloo Chettan\";s:8:\"variants\";a:1:{i:0;s:7:\"regular\";}s:8:\"category\";s:7:\"display\";}s:8:\"Baloo Da\";a:3:{s:5:\"label\";s:8:\"Baloo Da\";s:8:\"variants\";a:1:{i:0;s:7:\"regular\";}s:8:\"category\";s:7:\"display\";}s:11:\"Baloo Paaji\";a:3:{s:5:\"label\";s:11:\"Baloo Paaji\";s:8:\"variants\";a:1:{i:0;s:7:\"regular\";}s:8:\"category\";s:7:\"display\";}s:11:\"Baloo Tamma\";a:3:{s:5:\"label\";s:11:\"Baloo Tamma\";s:8:\"variants\";a:1:{i:0;s:7:\"regular\";}s:8:\"category\";s:7:\"display\";}s:13:\"Baloo Tammudu\";a:3:{s:5:\"label\";s:13:\"Baloo Tammudu\";s:8:\"variants\";a:1:{i:0;s:7:\"regular\";}s:8:\"category\";s:7:\"display\";}s:12:\"Baloo Thambi\";a:3:{s:5:\"label\";s:12:\"Baloo Thambi\";s:8:\"variants\";a:1:{i:0;s:7:\"regular\";}s:8:\"category\";s:7:\"display\";}s:9:\"Balthazar\";a:3:{s:5:\"label\";s:9:\"Balthazar\";s:8:\"variants\";a:1:{i:0;s:7:\"regular\";}s:8:\"category\";s:5:\"serif\";}s:7:\"Bangers\";a:3:{s:5:\"label\";s:7:\"Bangers\";s:8:\"variants\";a:1:{i:0;s:7:\"regular\";}s:8:\"category\";s:7:\"display\";}s:6:\"Barlow\";a:3:{s:5:\"label\";s:6:\"Barlow\";s:8:\"variants\";a:18:{i:0;s:3:\"100\";i:1;s:9:\"100italic\";i:2;s:3:\"200\";i:3;s:9:\"200italic\";i:4;s:3:\"300\";i:5;s:9:\"300italic\";i:6;s:3:\"500\";i:7;s:9:\"500italic\";i:8;s:3:\"600\";i:9;s:9:\"600italic\";i:10;s:3:\"700\";i:11;s:9:\"700italic\";i:12;s:3:\"800\";i:13;s:9:\"800italic\";i:14;s:3:\"900\";i:15;s:9:\"900italic\";i:16;s:6:\"italic\";i:17;s:7:\"regular\";}s:8:\"category\";s:10:\"sans-serif\";}s:16:\"Barlow Condensed\";a:3:{s:5:\"label\";s:16:\"Barlow Condensed\";s:8:\"variants\";a:18:{i:0;s:3:\"100\";i:1;s:9:\"100italic\";i:2;s:3:\"200\";i:3;s:9:\"200italic\";i:4;s:3:\"300\";i:5;s:9:\"300italic\";i:6;s:3:\"500\";i:7;s:9:\"500italic\";i:8;s:3:\"600\";i:9;s:9:\"600italic\";i:10;s:3:\"700\";i:11;s:9:\"700italic\";i:12;s:3:\"800\";i:13;s:9:\"800italic\";i:14;s:3:\"900\";i:15;s:9:\"900italic\";i:16;s:6:\"italic\";i:17;s:7:\"regular\";}s:8:\"category\";s:10:\"sans-serif\";}s:21:\"Barlow Semi Condensed\";a:3:{s:5:\"label\";s:21:\"Barlow Semi Condensed\";s:8:\"variants\";a:18:{i:0;s:3:\"100\";i:1;s:9:\"100italic\";i:2;s:3:\"200\";i:3;s:9:\"200italic\";i:4;s:3:\"300\";i:5;s:9:\"300italic\";i:6;s:3:\"500\";i:7;s:9:\"500italic\";i:8;s:3:\"600\";i:9;s:9:\"600italic\";i:10;s:3:\"700\";i:11;s:9:\"700italic\";i:12;s:3:\"800\";i:13;s:9:\"800italic\";i:14;s:3:\"900\";i:15;s:9:\"900italic\";i:16;s:6:\"italic\";i:17;s:7:\"regular\";}s:8:\"category\";s:10:\"sans-serif\";}s:6:\"Barrio\";a:3:{s:5:\"label\";s:6:\"Barrio\";s:8:\"variants\";a:1:{i:0;s:7:\"regular\";}s:8:\"category\";s:7:\"display\";}s:5:\"Basic\";a:3:{s:5:\"label\";s:5:\"Basic\";s:8:\"variants\";a:1:{i:0;s:7:\"regular\";}s:8:\"category\";s:10:\"sans-serif\";}s:10:\"Battambang\";a:3:{s:5:\"label\";s:10:\"Battambang\";s:8:\"variants\";a:2:{i:0;s:3:\"700\";i:1;s:7:\"regular\";}s:8:\"category\";s:7:\"display\";}s:7:\"Baumans\";a:3:{s:5:\"label\";s:7:\"Baumans\";s:8:\"variants\";a:1:{i:0;s:7:\"regular\";}s:8:\"category\";s:7:\"display\";}s:5:\"Bayon\";a:3:{s:5:\"label\";s:5:\"Bayon\";s:8:\"variants\";a:1:{i:0;s:7:\"regular\";}s:8:\"category\";s:7:\"display\";}s:8:\"Belgrano\";a:3:{s:5:\"label\";s:8:\"Belgrano\";s:8:\"variants\";a:1:{i:0;s:7:\"regular\";}s:8:\"category\";s:5:\"serif\";}s:9:\"Bellefair\";a:3:{s:5:\"label\";s:9:\"Bellefair\";s:8:\"variants\";a:1:{i:0;s:7:\"regular\";}s:8:\"category\";s:5:\"serif\";}s:7:\"Belleza\";a:3:{s:5:\"label\";s:7:\"Belleza\";s:8:\"variants\";a:1:{i:0;s:7:\"regular\";}s:8:\"category\";s:10:\"sans-serif\";}s:9:\"BenchNine\";a:3:{s:5:\"label\";s:9:\"BenchNine\";s:8:\"variants\";a:3:{i:0;s:3:\"300\";i:1;s:3:\"700\";i:2;s:7:\"regular\";}s:8:\"category\";s:10:\"sans-serif\";}s:7:\"Bentham\";a:3:{s:5:\"label\";s:7:\"Bentham\";s:8:\"variants\";a:1:{i:0;s:7:\"regular\";}s:8:\"category\";s:5:\"serif\";}s:15:\"Berkshire Swash\";a:3:{s:5:\"label\";s:15:\"Berkshire Swash\";s:8:\"variants\";a:1:{i:0;s:7:\"regular\";}s:8:\"category\";s:11:\"handwriting\";}s:5:\"Bevan\";a:3:{s:5:\"label\";s:5:\"Bevan\";s:8:\"variants\";a:1:{i:0;s:7:\"regular\";}s:8:\"category\";s:7:\"display\";}s:13:\"Bigelow Rules\";a:3:{s:5:\"label\";s:13:\"Bigelow Rules\";s:8:\"variants\";a:1:{i:0;s:7:\"regular\";}s:8:\"category\";s:7:\"display\";}s:11:\"Bigshot One\";a:3:{s:5:\"label\";s:11:\"Bigshot One\";s:8:\"variants\";a:1:{i:0;s:7:\"regular\";}s:8:\"category\";s:7:\"display\";}s:5:\"Bilbo\";a:3:{s:5:\"label\";s:5:\"Bilbo\";s:8:\"variants\";a:1:{i:0;s:7:\"regular\";}s:8:\"category\";s:11:\"handwriting\";}s:16:\"Bilbo Swash Caps\";a:3:{s:5:\"label\";s:16:\"Bilbo Swash Caps\";s:8:\"variants\";a:1:{i:0;s:7:\"regular\";}s:8:\"category\";s:11:\"handwriting\";}s:8:\"BioRhyme\";a:3:{s:5:\"label\";s:8:\"BioRhyme\";s:8:\"variants\";a:5:{i:0;s:3:\"200\";i:1;s:3:\"300\";i:2;s:3:\"700\";i:3;s:3:\"800\";i:4;s:7:\"regular\";}s:8:\"category\";s:5:\"serif\";}s:17:\"BioRhyme Expanded\";a:3:{s:5:\"label\";s:17:\"BioRhyme Expanded\";s:8:\"variants\";a:5:{i:0;s:3:\"200\";i:1;s:3:\"300\";i:2;s:3:\"700\";i:3;s:3:\"800\";i:4;s:7:\"regular\";}s:8:\"category\";s:5:\"serif\";}s:7:\"Biryani\";a:3:{s:5:\"label\";s:7:\"Biryani\";s:8:\"variants\";a:7:{i:0;s:3:\"200\";i:1;s:3:\"300\";i:2;s:3:\"600\";i:3;s:3:\"700\";i:4;s:3:\"800\";i:5;s:3:\"900\";i:6;s:7:\"regular\";}s:8:\"category\";s:10:\"sans-serif\";}s:6:\"Bitter\";a:3:{s:5:\"label\";s:6:\"Bitter\";s:8:\"variants\";a:3:{i:0;s:3:\"700\";i:1;s:6:\"italic\";i:2;s:7:\"regular\";}s:8:\"category\";s:5:\"serif\";}s:23:\"Black And White Picture\";a:3:{s:5:\"label\";s:23:\"Black And White Picture\";s:8:\"variants\";a:1:{i:0;s:7:\"regular\";}s:8:\"category\";s:10:\"sans-serif\";}s:14:\"Black Han Sans\";a:3:{s:5:\"label\";s:14:\"Black Han Sans\";s:8:\"variants\";a:1:{i:0;s:7:\"regular\";}s:8:\"category\";s:10:\"sans-serif\";}s:13:\"Black Ops One\";a:3:{s:5:\"label\";s:13:\"Black Ops One\";s:8:\"variants\";a:1:{i:0;s:7:\"regular\";}s:8:\"category\";s:7:\"display\";}s:5:\"Bokor\";a:3:{s:5:\"label\";s:5:\"Bokor\";s:8:\"variants\";a:1:{i:0;s:7:\"regular\";}s:8:\"category\";s:7:\"display\";}s:6:\"Bonbon\";a:3:{s:5:\"label\";s:6:\"Bonbon\";s:8:\"variants\";a:1:{i:0;s:7:\"regular\";}s:8:\"category\";s:11:\"handwriting\";}s:8:\"Boogaloo\";a:3:{s:5:\"label\";s:8:\"Boogaloo\";s:8:\"variants\";a:1:{i:0;s:7:\"regular\";}s:8:\"category\";s:7:\"display\";}s:10:\"Bowlby One\";a:3:{s:5:\"label\";s:10:\"Bowlby One\";s:8:\"variants\";a:1:{i:0;s:7:\"regular\";}s:8:\"category\";s:7:\"display\";}s:13:\"Bowlby One SC\";a:3:{s:5:\"label\";s:13:\"Bowlby One SC\";s:8:\"variants\";a:1:{i:0;s:7:\"regular\";}s:8:\"category\";s:7:\"display\";}s:7:\"Brawler\";a:3:{s:5:\"label\";s:7:\"Brawler\";s:8:\"variants\";a:1:{i:0;s:7:\"regular\";}s:8:\"category\";s:5:\"serif\";}s:10:\"Bree Serif\";a:3:{s:5:\"label\";s:10:\"Bree Serif\";s:8:\"variants\";a:1:{i:0;s:7:\"regular\";}s:8:\"category\";s:5:\"serif\";}s:14:\"Bubblegum Sans\";a:3:{s:5:\"label\";s:14:\"Bubblegum Sans\";s:8:\"variants\";a:1:{i:0;s:7:\"regular\";}s:8:\"category\";s:7:\"display\";}s:11:\"Bubbler One\";a:3:{s:5:\"label\";s:11:\"Bubbler One\";s:8:\"variants\";a:1:{i:0;s:7:\"regular\";}s:8:\"category\";s:10:\"sans-serif\";}s:4:\"Buda\";a:3:{s:5:\"label\";s:4:\"Buda\";s:8:\"variants\";a:1:{i:0;s:3:\"300\";}s:8:\"category\";s:7:\"display\";}s:7:\"Buenard\";a:3:{s:5:\"label\";s:7:\"Buenard\";s:8:\"variants\";a:2:{i:0;s:3:\"700\";i:1;s:7:\"regular\";}s:8:\"category\";s:5:\"serif\";}s:6:\"Bungee\";a:3:{s:5:\"label\";s:6:\"Bungee\";s:8:\"variants\";a:1:{i:0;s:7:\"regular\";}s:8:\"category\";s:7:\"display\";}s:15:\"Bungee Hairline\";a:3:{s:5:\"label\";s:15:\"Bungee Hairline\";s:8:\"variants\";a:1:{i:0;s:7:\"regular\";}s:8:\"category\";s:7:\"display\";}s:13:\"Bungee Inline\";a:3:{s:5:\"label\";s:13:\"Bungee Inline\";s:8:\"variants\";a:1:{i:0;s:7:\"regular\";}s:8:\"category\";s:7:\"display\";}s:14:\"Bungee Outline\";a:3:{s:5:\"label\";s:14:\"Bungee Outline\";s:8:\"variants\";a:1:{i:0;s:7:\"regular\";}s:8:\"category\";s:7:\"display\";}s:12:\"Bungee Shade\";a:3:{s:5:\"label\";s:12:\"Bungee Shade\";s:8:\"variants\";a:1:{i:0;s:7:\"regular\";}s:8:\"category\";s:7:\"display\";}s:10:\"Butcherman\";a:3:{s:5:\"label\";s:10:\"Butcherman\";s:8:\"variants\";a:1:{i:0;s:7:\"regular\";}s:8:\"category\";s:7:\"display\";}s:14:\"Butterfly Kids\";a:3:{s:5:\"label\";s:14:\"Butterfly Kids\";s:8:\"variants\";a:1:{i:0;s:7:\"regular\";}s:8:\"category\";s:11:\"handwriting\";}s:5:\"Cabin\";a:3:{s:5:\"label\";s:5:\"Cabin\";s:8:\"variants\";a:8:{i:0;s:3:\"500\";i:1;s:9:\"500italic\";i:2;s:3:\"600\";i:3;s:9:\"600italic\";i:4;s:3:\"700\";i:5;s:9:\"700italic\";i:6;s:6:\"italic\";i:7;s:7:\"regular\";}s:8:\"category\";s:10:\"sans-serif\";}s:15:\"Cabin Condensed\";a:3:{s:5:\"label\";s:15:\"Cabin Condensed\";s:8:\"variants\";a:4:{i:0;s:3:\"500\";i:1;s:3:\"600\";i:2;s:3:\"700\";i:3;s:7:\"regular\";}s:8:\"category\";s:10:\"sans-serif\";}s:12:\"Cabin Sketch\";a:3:{s:5:\"label\";s:12:\"Cabin Sketch\";s:8:\"variants\";a:2:{i:0;s:3:\"700\";i:1;s:7:\"regular\";}s:8:\"category\";s:7:\"display\";}s:15:\"Caesar Dressing\";a:3:{s:5:\"label\";s:15:\"Caesar Dressing\";s:8:\"variants\";a:1:{i:0;s:7:\"regular\";}s:8:\"category\";s:7:\"display\";}s:10:\"Cagliostro\";a:3:{s:5:\"label\";s:10:\"Cagliostro\";s:8:\"variants\";a:1:{i:0;s:7:\"regular\";}s:8:\"category\";s:10:\"sans-serif\";}s:5:\"Cairo\";a:3:{s:5:\"label\";s:5:\"Cairo\";s:8:\"variants\";a:6:{i:0;s:3:\"200\";i:1;s:3:\"300\";i:2;s:3:\"600\";i:3;s:3:\"700\";i:4;s:3:\"900\";i:5;s:7:\"regular\";}s:8:\"category\";s:10:\"sans-serif\";}s:14:\"Calligraffitti\";a:3:{s:5:\"label\";s:14:\"Calligraffitti\";s:8:\"variants\";a:1:{i:0;s:7:\"regular\";}s:8:\"category\";s:11:\"handwriting\";}s:6:\"Cambay\";a:3:{s:5:\"label\";s:6:\"Cambay\";s:8:\"variants\";a:4:{i:0;s:3:\"700\";i:1;s:9:\"700italic\";i:2;s:6:\"italic\";i:3;s:7:\"regular\";}s:8:\"category\";s:10:\"sans-serif\";}s:5:\"Cambo\";a:3:{s:5:\"label\";s:5:\"Cambo\";s:8:\"variants\";a:1:{i:0;s:7:\"regular\";}s:8:\"category\";s:5:\"serif\";}s:6:\"Candal\";a:3:{s:5:\"label\";s:6:\"Candal\";s:8:\"variants\";a:1:{i:0;s:7:\"regular\";}s:8:\"category\";s:10:\"sans-serif\";}s:9:\"Cantarell\";a:3:{s:5:\"label\";s:9:\"Cantarell\";s:8:\"variants\";a:4:{i:0;s:3:\"700\";i:1;s:9:\"700italic\";i:2;s:6:\"italic\";i:3;s:7:\"regular\";}s:8:\"category\";s:10:\"sans-serif\";}s:11:\"Cantata One\";a:3:{s:5:\"label\";s:11:\"Cantata One\";s:8:\"variants\";a:1:{i:0;s:7:\"regular\";}s:8:\"category\";s:5:\"serif\";}s:11:\"Cantora One\";a:3:{s:5:\"label\";s:11:\"Cantora One\";s:8:\"variants\";a:1:{i:0;s:7:\"regular\";}s:8:\"category\";s:10:\"sans-serif\";}s:8:\"Capriola\";a:3:{s:5:\"label\";s:8:\"Capriola\";s:8:\"variants\";a:1:{i:0;s:7:\"regular\";}s:8:\"category\";s:10:\"sans-serif\";}s:5:\"Cardo\";a:3:{s:5:\"label\";s:5:\"Cardo\";s:8:\"variants\";a:3:{i:0;s:3:\"700\";i:1;s:6:\"italic\";i:2;s:7:\"regular\";}s:8:\"category\";s:5:\"serif\";}s:5:\"Carme\";a:3:{s:5:\"label\";s:5:\"Carme\";s:8:\"variants\";a:1:{i:0;s:7:\"regular\";}s:8:\"category\";s:10:\"sans-serif\";}s:14:\"Carrois Gothic\";a:3:{s:5:\"label\";s:14:\"Carrois Gothic\";s:8:\"variants\";a:1:{i:0;s:7:\"regular\";}s:8:\"category\";s:10:\"sans-serif\";}s:17:\"Carrois Gothic SC\";a:3:{s:5:\"label\";s:17:\"Carrois Gothic SC\";s:8:\"variants\";a:1:{i:0;s:7:\"regular\";}s:8:\"category\";s:10:\"sans-serif\";}s:10:\"Carter One\";a:3:{s:5:\"label\";s:10:\"Carter One\";s:8:\"variants\";a:1:{i:0;s:7:\"regular\";}s:8:\"category\";s:7:\"display\";}s:9:\"Catamaran\";a:3:{s:5:\"label\";s:9:\"Catamaran\";s:8:\"variants\";a:9:{i:0;s:3:\"100\";i:1;s:3:\"200\";i:2;s:3:\"300\";i:3;s:3:\"500\";i:4;s:3:\"600\";i:5;s:3:\"700\";i:6;s:3:\"800\";i:7;s:3:\"900\";i:8;s:7:\"regular\";}s:8:\"category\";s:10:\"sans-serif\";}s:6:\"Caudex\";a:3:{s:5:\"label\";s:6:\"Caudex\";s:8:\"variants\";a:4:{i:0;s:3:\"700\";i:1;s:9:\"700italic\";i:2;s:6:\"italic\";i:3;s:7:\"regular\";}s:8:\"category\";s:5:\"serif\";}s:6:\"Caveat\";a:3:{s:5:\"label\";s:6:\"Caveat\";s:8:\"variants\";a:2:{i:0;s:3:\"700\";i:1;s:7:\"regular\";}s:8:\"category\";s:11:\"handwriting\";}s:12:\"Caveat Brush\";a:3:{s:5:\"label\";s:12:\"Caveat Brush\";s:8:\"variants\";a:1:{i:0;s:7:\"regular\";}s:8:\"category\";s:11:\"handwriting\";}s:18:\"Cedarville Cursive\";a:3:{s:5:\"label\";s:18:\"Cedarville Cursive\";s:8:\"variants\";a:1:{i:0;s:7:\"regular\";}s:8:\"category\";s:11:\"handwriting\";}s:11:\"Ceviche One\";a:3:{s:5:\"label\";s:11:\"Ceviche One\";s:8:\"variants\";a:1:{i:0;s:7:\"regular\";}s:8:\"category\";s:7:\"display\";}s:12:\"Chakra Petch\";a:3:{s:5:\"label\";s:12:\"Chakra Petch\";s:8:\"variants\";a:10:{i:0;s:3:\"300\";i:1;s:9:\"300italic\";i:2;s:3:\"500\";i:3;s:9:\"500italic\";i:4;s:3:\"600\";i:5;s:9:\"600italic\";i:6;s:3:\"700\";i:7;s:9:\"700italic\";i:8;s:6:\"italic\";i:9;s:7:\"regular\";}s:8:\"category\";s:10:\"sans-serif\";}s:6:\"Changa\";a:3:{s:5:\"label\";s:6:\"Changa\";s:8:\"variants\";a:7:{i:0;s:3:\"200\";i:1;s:3:\"300\";i:2;s:3:\"500\";i:3;s:3:\"600\";i:4;s:3:\"700\";i:5;s:3:\"800\";i:6;s:7:\"regular\";}s:8:\"category\";s:10:\"sans-serif\";}s:10:\"Changa One\";a:3:{s:5:\"label\";s:10:\"Changa One\";s:8:\"variants\";a:2:{i:0;s:6:\"italic\";i:1;s:7:\"regular\";}s:8:\"category\";s:7:\"display\";}s:6:\"Chango\";a:3:{s:5:\"label\";s:6:\"Chango\";s:8:\"variants\";a:1:{i:0;s:7:\"regular\";}s:8:\"category\";s:7:\"display\";}s:5:\"Charm\";a:3:{s:5:\"label\";s:5:\"Charm\";s:8:\"variants\";a:2:{i:0;s:3:\"700\";i:1;s:7:\"regular\";}s:8:\"category\";s:11:\"handwriting\";}s:10:\"Charmonman\";a:3:{s:5:\"label\";s:10:\"Charmonman\";s:8:\"variants\";a:2:{i:0;s:3:\"700\";i:1;s:7:\"regular\";}s:8:\"category\";s:11:\"handwriting\";}s:8:\"Chathura\";a:3:{s:5:\"label\";s:8:\"Chathura\";s:8:\"variants\";a:5:{i:0;s:3:\"100\";i:1;s:3:\"300\";i:2;s:3:\"700\";i:3;s:3:\"800\";i:4;s:7:\"regular\";}s:8:\"category\";s:10:\"sans-serif\";}s:18:\"Chau Philomene One\";a:3:{s:5:\"label\";s:18:\"Chau Philomene One\";s:8:\"variants\";a:2:{i:0;s:6:\"italic\";i:1;s:7:\"regular\";}s:8:\"category\";s:10:\"sans-serif\";}s:9:\"Chela One\";a:3:{s:5:\"label\";s:9:\"Chela One\";s:8:\"variants\";a:1:{i:0;s:7:\"regular\";}s:8:\"category\";s:7:\"display\";}s:14:\"Chelsea Market\";a:3:{s:5:\"label\";s:14:\"Chelsea Market\";s:8:\"variants\";a:1:{i:0;s:7:\"regular\";}s:8:\"category\";s:7:\"display\";}s:6:\"Chenla\";a:3:{s:5:\"label\";s:6:\"Chenla\";s:8:\"variants\";a:1:{i:0;s:7:\"regular\";}s:8:\"category\";s:7:\"display\";}s:17:\"Cherry Cream Soda\";a:3:{s:5:\"label\";s:17:\"Cherry Cream Soda\";s:8:\"variants\";a:1:{i:0;s:7:\"regular\";}s:8:\"category\";s:7:\"display\";}s:12:\"Cherry Swash\";a:3:{s:5:\"label\";s:12:\"Cherry Swash\";s:8:\"variants\";a:2:{i:0;s:3:\"700\";i:1;s:7:\"regular\";}s:8:\"category\";s:7:\"display\";}s:5:\"Chewy\";a:3:{s:5:\"label\";s:5:\"Chewy\";s:8:\"variants\";a:1:{i:0;s:7:\"regular\";}s:8:\"category\";s:7:\"display\";}s:6:\"Chicle\";a:3:{s:5:\"label\";s:6:\"Chicle\";s:8:\"variants\";a:1:{i:0;s:7:\"regular\";}s:8:\"category\";s:7:\"display\";}s:5:\"Chivo\";a:3:{s:5:\"label\";s:5:\"Chivo\";s:8:\"variants\";a:8:{i:0;s:3:\"300\";i:1;s:9:\"300italic\";i:2;s:3:\"700\";i:3;s:9:\"700italic\";i:4;s:3:\"900\";i:5;s:9:\"900italic\";i:6;s:6:\"italic\";i:7;s:7:\"regular\";}s:8:\"category\";s:10:\"sans-serif\";}s:8:\"Chonburi\";a:3:{s:5:\"label\";s:8:\"Chonburi\";s:8:\"variants\";a:1:{i:0;s:7:\"regular\";}s:8:\"category\";s:7:\"display\";}s:6:\"Cinzel\";a:3:{s:5:\"label\";s:6:\"Cinzel\";s:8:\"variants\";a:3:{i:0;s:3:\"700\";i:1;s:3:\"900\";i:2;s:7:\"regular\";}s:8:\"category\";s:5:\"serif\";}s:17:\"Cinzel Decorative\";a:3:{s:5:\"label\";s:17:\"Cinzel Decorative\";s:8:\"variants\";a:3:{i:0;s:3:\"700\";i:1;s:3:\"900\";i:2;s:7:\"regular\";}s:8:\"category\";s:7:\"display\";}s:14:\"Clicker Script\";a:3:{s:5:\"label\";s:14:\"Clicker Script\";s:8:\"variants\";a:1:{i:0;s:7:\"regular\";}s:8:\"category\";s:11:\"handwriting\";}s:4:\"Coda\";a:3:{s:5:\"label\";s:4:\"Coda\";s:8:\"variants\";a:2:{i:0;s:3:\"800\";i:1;s:7:\"regular\";}s:8:\"category\";s:7:\"display\";}s:12:\"Coda Caption\";a:3:{s:5:\"label\";s:12:\"Coda Caption\";s:8:\"variants\";a:1:{i:0;s:3:\"800\";}s:8:\"category\";s:10:\"sans-serif\";}s:8:\"Codystar\";a:3:{s:5:\"label\";s:8:\"Codystar\";s:8:\"variants\";a:2:{i:0;s:3:\"300\";i:1;s:7:\"regular\";}s:8:\"category\";s:7:\"display\";}s:5:\"Coiny\";a:3:{s:5:\"label\";s:5:\"Coiny\";s:8:\"variants\";a:1:{i:0;s:7:\"regular\";}s:8:\"category\";s:7:\"display\";}s:5:\"Combo\";a:3:{s:5:\"label\";s:5:\"Combo\";s:8:\"variants\";a:1:{i:0;s:7:\"regular\";}s:8:\"category\";s:7:\"display\";}s:9:\"Comfortaa\";a:3:{s:5:\"label\";s:9:\"Comfortaa\";s:8:\"variants\";a:3:{i:0;s:3:\"300\";i:1;s:3:\"700\";i:2;s:7:\"regular\";}s:8:\"category\";s:7:\"display\";}s:11:\"Coming Soon\";a:3:{s:5:\"label\";s:11:\"Coming Soon\";s:8:\"variants\";a:1:{i:0;s:7:\"regular\";}s:8:\"category\";s:11:\"handwriting\";}s:11:\"Concert One\";a:3:{s:5:\"label\";s:11:\"Concert One\";s:8:\"variants\";a:1:{i:0;s:7:\"regular\";}s:8:\"category\";s:7:\"display\";}s:9:\"Condiment\";a:3:{s:5:\"label\";s:9:\"Condiment\";s:8:\"variants\";a:1:{i:0;s:7:\"regular\";}s:8:\"category\";s:11:\"handwriting\";}s:7:\"Content\";a:3:{s:5:\"label\";s:7:\"Content\";s:8:\"variants\";a:2:{i:0;s:3:\"700\";i:1;s:7:\"regular\";}s:8:\"category\";s:7:\"display\";}s:12:\"Contrail One\";a:3:{s:5:\"label\";s:12:\"Contrail One\";s:8:\"variants\";a:1:{i:0;s:7:\"regular\";}s:8:\"category\";s:7:\"display\";}s:11:\"Convergence\";a:3:{s:5:\"label\";s:11:\"Convergence\";s:8:\"variants\";a:1:{i:0;s:7:\"regular\";}s:8:\"category\";s:10:\"sans-serif\";}s:6:\"Cookie\";a:3:{s:5:\"label\";s:6:\"Cookie\";s:8:\"variants\";a:1:{i:0;s:7:\"regular\";}s:8:\"category\";s:11:\"handwriting\";}s:5:\"Copse\";a:3:{s:5:\"label\";s:5:\"Copse\";s:8:\"variants\";a:1:{i:0;s:7:\"regular\";}s:8:\"category\";s:5:\"serif\";}s:6:\"Corben\";a:3:{s:5:\"label\";s:6:\"Corben\";s:8:\"variants\";a:2:{i:0;s:3:\"700\";i:1;s:7:\"regular\";}s:8:\"category\";s:7:\"display\";}s:9:\"Cormorant\";a:3:{s:5:\"label\";s:9:\"Cormorant\";s:8:\"variants\";a:10:{i:0;s:3:\"300\";i:1;s:9:\"300italic\";i:2;s:3:\"500\";i:3;s:9:\"500italic\";i:4;s:3:\"600\";i:5;s:9:\"600italic\";i:6;s:3:\"700\";i:7;s:9:\"700italic\";i:8;s:6:\"italic\";i:9;s:7:\"regular\";}s:8:\"category\";s:5:\"serif\";}s:18:\"Cormorant Garamond\";a:3:{s:5:\"label\";s:18:\"Cormorant Garamond\";s:8:\"variants\";a:10:{i:0;s:3:\"300\";i:1;s:9:\"300italic\";i:2;s:3:\"500\";i:3;s:9:\"500italic\";i:4;s:3:\"600\";i:5;s:9:\"600italic\";i:6;s:3:\"700\";i:7;s:9:\"700italic\";i:8;s:6:\"italic\";i:9;s:7:\"regular\";}s:8:\"category\";s:5:\"serif\";}s:16:\"Cormorant Infant\";a:3:{s:5:\"label\";s:16:\"Cormorant Infant\";s:8:\"variants\";a:10:{i:0;s:3:\"300\";i:1;s:9:\"300italic\";i:2;s:3:\"500\";i:3;s:9:\"500italic\";i:4;s:3:\"600\";i:5;s:9:\"600italic\";i:6;s:3:\"700\";i:7;s:9:\"700italic\";i:8;s:6:\"italic\";i:9;s:7:\"regular\";}s:8:\"category\";s:5:\"serif\";}s:12:\"Cormorant SC\";a:3:{s:5:\"label\";s:12:\"Cormorant SC\";s:8:\"variants\";a:5:{i:0;s:3:\"300\";i:1;s:3:\"500\";i:2;s:3:\"600\";i:3;s:3:\"700\";i:4;s:7:\"regular\";}s:8:\"category\";s:5:\"serif\";}s:17:\"Cormorant Unicase\";a:3:{s:5:\"label\";s:17:\"Cormorant Unicase\";s:8:\"variants\";a:5:{i:0;s:3:\"300\";i:1;s:3:\"500\";i:2;s:3:\"600\";i:3;s:3:\"700\";i:4;s:7:\"regular\";}s:8:\"category\";s:5:\"serif\";}s:17:\"Cormorant Upright\";a:3:{s:5:\"label\";s:17:\"Cormorant Upright\";s:8:\"variants\";a:5:{i:0;s:3:\"300\";i:1;s:3:\"500\";i:2;s:3:\"600\";i:3;s:3:\"700\";i:4;s:7:\"regular\";}s:8:\"category\";s:5:\"serif\";}s:9:\"Courgette\";a:3:{s:5:\"label\";s:9:\"Courgette\";s:8:\"variants\";a:1:{i:0;s:7:\"regular\";}s:8:\"category\";s:11:\"handwriting\";}s:7:\"Cousine\";a:3:{s:5:\"label\";s:7:\"Cousine\";s:8:\"variants\";a:4:{i:0;s:3:\"700\";i:1;s:9:\"700italic\";i:2;s:6:\"italic\";i:3;s:7:\"regular\";}s:8:\"category\";s:9:\"monospace\";}s:8:\"Coustard\";a:3:{s:5:\"label\";s:8:\"Coustard\";s:8:\"variants\";a:2:{i:0;s:3:\"900\";i:1;s:7:\"regular\";}s:8:\"category\";s:5:\"serif\";}s:21:\"Covered By Your Grace\";a:3:{s:5:\"label\";s:21:\"Covered By Your Grace\";s:8:\"variants\";a:1:{i:0;s:7:\"regular\";}s:8:\"category\";s:11:\"handwriting\";}s:12:\"Crafty Girls\";a:3:{s:5:\"label\";s:12:\"Crafty Girls\";s:8:\"variants\";a:1:{i:0;s:7:\"regular\";}s:8:\"category\";s:11:\"handwriting\";}s:9:\"Creepster\";a:3:{s:5:\"label\";s:9:\"Creepster\";s:8:\"variants\";a:1:{i:0;s:7:\"regular\";}s:8:\"category\";s:7:\"display\";}s:11:\"Crete Round\";a:3:{s:5:\"label\";s:11:\"Crete Round\";s:8:\"variants\";a:2:{i:0;s:6:\"italic\";i:1;s:7:\"regular\";}s:8:\"category\";s:5:\"serif\";}s:12:\"Crimson Text\";a:3:{s:5:\"label\";s:12:\"Crimson Text\";s:8:\"variants\";a:6:{i:0;s:3:\"600\";i:1;s:9:\"600italic\";i:2;s:3:\"700\";i:3;s:9:\"700italic\";i:4;s:6:\"italic\";i:5;s:7:\"regular\";}s:8:\"category\";s:5:\"serif\";}s:13:\"Croissant One\";a:3:{s:5:\"label\";s:13:\"Croissant One\";s:8:\"variants\";a:1:{i:0;s:7:\"regular\";}s:8:\"category\";s:7:\"display\";}s:7:\"Crushed\";a:3:{s:5:\"label\";s:7:\"Crushed\";s:8:\"variants\";a:1:{i:0;s:7:\"regular\";}s:8:\"category\";s:7:\"display\";}s:6:\"Cuprum\";a:3:{s:5:\"label\";s:6:\"Cuprum\";s:8:\"variants\";a:4:{i:0;s:3:\"700\";i:1;s:9:\"700italic\";i:2;s:6:\"italic\";i:3;s:7:\"regular\";}s:8:\"category\";s:10:\"sans-serif\";}s:9:\"Cute Font\";a:3:{s:5:\"label\";s:9:\"Cute Font\";s:8:\"variants\";a:1:{i:0;s:7:\"regular\";}s:8:\"category\";s:7:\"display\";}s:6:\"Cutive\";a:3:{s:5:\"label\";s:6:\"Cutive\";s:8:\"variants\";a:1:{i:0;s:7:\"regular\";}s:8:\"category\";s:5:\"serif\";}s:11:\"Cutive Mono\";a:3:{s:5:\"label\";s:11:\"Cutive Mono\";s:8:\"variants\";a:1:{i:0;s:7:\"regular\";}s:8:\"category\";s:9:\"monospace\";}s:6:\"Damion\";a:3:{s:5:\"label\";s:6:\"Damion\";s:8:\"variants\";a:1:{i:0;s:7:\"regular\";}s:8:\"category\";s:11:\"handwriting\";}s:14:\"Dancing Script\";a:3:{s:5:\"label\";s:14:\"Dancing Script\";s:8:\"variants\";a:2:{i:0;s:3:\"700\";i:1;s:7:\"regular\";}s:8:\"category\";s:11:\"handwriting\";}s:7:\"Dangrek\";a:3:{s:5:\"label\";s:7:\"Dangrek\";s:8:\"variants\";a:1:{i:0;s:7:\"regular\";}s:8:\"category\";s:7:\"display\";}s:11:\"David Libre\";a:3:{s:5:\"label\";s:11:\"David Libre\";s:8:\"variants\";a:3:{i:0;s:3:\"500\";i:1;s:3:\"700\";i:2;s:7:\"regular\";}s:8:\"category\";s:5:\"serif\";}s:20:\"Dawning of a New Day\";a:3:{s:5:\"label\";s:20:\"Dawning of a New Day\";s:8:\"variants\";a:1:{i:0;s:7:\"regular\";}s:8:\"category\";s:11:\"handwriting\";}s:8:\"Days One\";a:3:{s:5:\"label\";s:8:\"Days One\";s:8:\"variants\";a:1:{i:0;s:7:\"regular\";}s:8:\"category\";s:10:\"sans-serif\";}s:5:\"Dekko\";a:3:{s:5:\"label\";s:5:\"Dekko\";s:8:\"variants\";a:1:{i:0;s:7:\"regular\";}s:8:\"category\";s:11:\"handwriting\";}s:6:\"Delius\";a:3:{s:5:\"label\";s:6:\"Delius\";s:8:\"variants\";a:1:{i:0;s:7:\"regular\";}s:8:\"category\";s:11:\"handwriting\";}s:17:\"Delius Swash Caps\";a:3:{s:5:\"label\";s:17:\"Delius Swash Caps\";s:8:\"variants\";a:1:{i:0;s:7:\"regular\";}s:8:\"category\";s:11:\"handwriting\";}s:14:\"Delius Unicase\";a:3:{s:5:\"label\";s:14:\"Delius Unicase\";s:8:\"variants\";a:2:{i:0;s:3:\"700\";i:1;s:7:\"regular\";}s:8:\"category\";s:11:\"handwriting\";}s:13:\"Della Respira\";a:3:{s:5:\"label\";s:13:\"Della Respira\";s:8:\"variants\";a:1:{i:0;s:7:\"regular\";}s:8:\"category\";s:5:\"serif\";}s:8:\"Denk One\";a:3:{s:5:\"label\";s:8:\"Denk One\";s:8:\"variants\";a:1:{i:0;s:7:\"regular\";}s:8:\"category\";s:10:\"sans-serif\";}s:10:\"Devonshire\";a:3:{s:5:\"label\";s:10:\"Devonshire\";s:8:\"variants\";a:1:{i:0;s:7:\"regular\";}s:8:\"category\";s:11:\"handwriting\";}s:8:\"Dhurjati\";a:3:{s:5:\"label\";s:8:\"Dhurjati\";s:8:\"variants\";a:1:{i:0;s:7:\"regular\";}s:8:\"category\";s:10:\"sans-serif\";}s:13:\"Didact Gothic\";a:3:{s:5:\"label\";s:13:\"Didact Gothic\";s:8:\"variants\";a:1:{i:0;s:7:\"regular\";}s:8:\"category\";s:10:\"sans-serif\";}s:9:\"Diplomata\";a:3:{s:5:\"label\";s:9:\"Diplomata\";s:8:\"variants\";a:1:{i:0;s:7:\"regular\";}s:8:\"category\";s:7:\"display\";}s:12:\"Diplomata SC\";a:3:{s:5:\"label\";s:12:\"Diplomata SC\";s:8:\"variants\";a:1:{i:0;s:7:\"regular\";}s:8:\"category\";s:7:\"display\";}s:8:\"Do Hyeon\";a:3:{s:5:\"label\";s:8:\"Do Hyeon\";s:8:\"variants\";a:1:{i:0;s:7:\"regular\";}s:8:\"category\";s:10:\"sans-serif\";}s:5:\"Dokdo\";a:3:{s:5:\"label\";s:5:\"Dokdo\";s:8:\"variants\";a:1:{i:0;s:7:\"regular\";}s:8:\"category\";s:11:\"handwriting\";}s:6:\"Domine\";a:3:{s:5:\"label\";s:6:\"Domine\";s:8:\"variants\";a:2:{i:0;s:3:\"700\";i:1;s:7:\"regular\";}s:8:\"category\";s:5:\"serif\";}s:11:\"Donegal One\";a:3:{s:5:\"label\";s:11:\"Donegal One\";s:8:\"variants\";a:1:{i:0;s:7:\"regular\";}s:8:\"category\";s:5:\"serif\";}s:10:\"Doppio One\";a:3:{s:5:\"label\";s:10:\"Doppio One\";s:8:\"variants\";a:1:{i:0;s:7:\"regular\";}s:8:\"category\";s:10:\"sans-serif\";}s:5:\"Dorsa\";a:3:{s:5:\"label\";s:5:\"Dorsa\";s:8:\"variants\";a:1:{i:0;s:7:\"regular\";}s:8:\"category\";s:10:\"sans-serif\";}s:5:\"Dosis\";a:3:{s:5:\"label\";s:5:\"Dosis\";s:8:\"variants\";a:7:{i:0;s:3:\"200\";i:1;s:3:\"300\";i:2;s:3:\"500\";i:3;s:3:\"600\";i:4;s:3:\"700\";i:5;s:3:\"800\";i:6;s:7:\"regular\";}s:8:\"category\";s:10:\"sans-serif\";}s:11:\"Dr Sugiyama\";a:3:{s:5:\"label\";s:11:\"Dr Sugiyama\";s:8:\"variants\";a:1:{i:0;s:7:\"regular\";}s:8:\"category\";s:11:\"handwriting\";}s:9:\"Duru Sans\";a:3:{s:5:\"label\";s:9:\"Duru Sans\";s:8:\"variants\";a:1:{i:0;s:7:\"regular\";}s:8:\"category\";s:10:\"sans-serif\";}s:9:\"Dynalight\";a:3:{s:5:\"label\";s:9:\"Dynalight\";s:8:\"variants\";a:1:{i:0;s:7:\"regular\";}s:8:\"category\";s:7:\"display\";}s:11:\"EB Garamond\";a:3:{s:5:\"label\";s:11:\"EB Garamond\";s:8:\"variants\";a:10:{i:0;s:3:\"500\";i:1;s:9:\"500italic\";i:2;s:3:\"600\";i:3;s:9:\"600italic\";i:4;s:3:\"700\";i:5;s:9:\"700italic\";i:6;s:3:\"800\";i:7;s:9:\"800italic\";i:8;s:6:\"italic\";i:9;s:7:\"regular\";}s:8:\"category\";s:5:\"serif\";}s:10:\"Eagle Lake\";a:3:{s:5:\"label\";s:10:\"Eagle Lake\";s:8:\"variants\";a:1:{i:0;s:7:\"regular\";}s:8:\"category\";s:11:\"handwriting\";}s:14:\"East Sea Dokdo\";a:3:{s:5:\"label\";s:14:\"East Sea Dokdo\";s:8:\"variants\";a:1:{i:0;s:7:\"regular\";}s:8:\"category\";s:11:\"handwriting\";}s:5:\"Eater\";a:3:{s:5:\"label\";s:5:\"Eater\";s:8:\"variants\";a:1:{i:0;s:7:\"regular\";}s:8:\"category\";s:7:\"display\";}s:9:\"Economica\";a:3:{s:5:\"label\";s:9:\"Economica\";s:8:\"variants\";a:4:{i:0;s:3:\"700\";i:1;s:9:\"700italic\";i:2;s:6:\"italic\";i:3;s:7:\"regular\";}s:8:\"category\";s:10:\"sans-serif\";}s:5:\"Eczar\";a:3:{s:5:\"label\";s:5:\"Eczar\";s:8:\"variants\";a:5:{i:0;s:3:\"500\";i:1;s:3:\"600\";i:2;s:3:\"700\";i:3;s:3:\"800\";i:4;s:7:\"regular\";}s:8:\"category\";s:5:\"serif\";}s:10:\"El Messiri\";a:3:{s:5:\"label\";s:10:\"El Messiri\";s:8:\"variants\";a:4:{i:0;s:3:\"500\";i:1;s:3:\"600\";i:2;s:3:\"700\";i:3;s:7:\"regular\";}s:8:\"category\";s:10:\"sans-serif\";}s:11:\"Electrolize\";a:3:{s:5:\"label\";s:11:\"Electrolize\";s:8:\"variants\";a:1:{i:0;s:7:\"regular\";}s:8:\"category\";s:10:\"sans-serif\";}s:5:\"Elsie\";a:3:{s:5:\"label\";s:5:\"Elsie\";s:8:\"variants\";a:2:{i:0;s:3:\"900\";i:1;s:7:\"regular\";}s:8:\"category\";s:7:\"display\";}s:16:\"Elsie Swash Caps\";a:3:{s:5:\"label\";s:16:\"Elsie Swash Caps\";s:8:\"variants\";a:2:{i:0;s:3:\"900\";i:1;s:7:\"regular\";}s:8:\"category\";s:7:\"display\";}s:11:\"Emblema One\";a:3:{s:5:\"label\";s:11:\"Emblema One\";s:8:\"variants\";a:1:{i:0;s:7:\"regular\";}s:8:\"category\";s:7:\"display\";}s:12:\"Emilys Candy\";a:3:{s:5:\"label\";s:12:\"Emilys Candy\";s:8:\"variants\";a:1:{i:0;s:7:\"regular\";}s:8:\"category\";s:7:\"display\";}s:11:\"Encode Sans\";a:3:{s:5:\"label\";s:11:\"Encode Sans\";s:8:\"variants\";a:9:{i:0;s:3:\"100\";i:1;s:3:\"200\";i:2;s:3:\"300\";i:3;s:3:\"500\";i:4;s:3:\"600\";i:5;s:3:\"700\";i:6;s:3:\"800\";i:7;s:3:\"900\";i:8;s:7:\"regular\";}s:8:\"category\";s:10:\"sans-serif\";}s:21:\"Encode Sans Condensed\";a:3:{s:5:\"label\";s:21:\"Encode Sans Condensed\";s:8:\"variants\";a:9:{i:0;s:3:\"100\";i:1;s:3:\"200\";i:2;s:3:\"300\";i:3;s:3:\"500\";i:4;s:3:\"600\";i:5;s:3:\"700\";i:6;s:3:\"800\";i:7;s:3:\"900\";i:8;s:7:\"regular\";}s:8:\"category\";s:10:\"sans-serif\";}s:20:\"Encode Sans Expanded\";a:3:{s:5:\"label\";s:20:\"Encode Sans Expanded\";s:8:\"variants\";a:9:{i:0;s:3:\"100\";i:1;s:3:\"200\";i:2;s:3:\"300\";i:3;s:3:\"500\";i:4;s:3:\"600\";i:5;s:3:\"700\";i:6;s:3:\"800\";i:7;s:3:\"900\";i:8;s:7:\"regular\";}s:8:\"category\";s:10:\"sans-serif\";}s:26:\"Encode Sans Semi Condensed\";a:3:{s:5:\"label\";s:26:\"Encode Sans Semi Condensed\";s:8:\"variants\";a:9:{i:0;s:3:\"100\";i:1;s:3:\"200\";i:2;s:3:\"300\";i:3;s:3:\"500\";i:4;s:3:\"600\";i:5;s:3:\"700\";i:6;s:3:\"800\";i:7;s:3:\"900\";i:8;s:7:\"regular\";}s:8:\"category\";s:10:\"sans-serif\";}s:25:\"Encode Sans Semi Expanded\";a:3:{s:5:\"label\";s:25:\"Encode Sans Semi Expanded\";s:8:\"variants\";a:9:{i:0;s:3:\"100\";i:1;s:3:\"200\";i:2;s:3:\"300\";i:3;s:3:\"500\";i:4;s:3:\"600\";i:5;s:3:\"700\";i:6;s:3:\"800\";i:7;s:3:\"900\";i:8;s:7:\"regular\";}s:8:\"category\";s:10:\"sans-serif\";}s:10:\"Engagement\";a:3:{s:5:\"label\";s:10:\"Engagement\";s:8:\"variants\";a:1:{i:0;s:7:\"regular\";}s:8:\"category\";s:11:\"handwriting\";}s:9:\"Englebert\";a:3:{s:5:\"label\";s:9:\"Englebert\";s:8:\"variants\";a:1:{i:0;s:7:\"regular\";}s:8:\"category\";s:10:\"sans-serif\";}s:9:\"Enriqueta\";a:3:{s:5:\"label\";s:9:\"Enriqueta\";s:8:\"variants\";a:2:{i:0;s:3:\"700\";i:1;s:7:\"regular\";}s:8:\"category\";s:5:\"serif\";}s:9:\"Erica One\";a:3:{s:5:\"label\";s:9:\"Erica One\";s:8:\"variants\";a:1:{i:0;s:7:\"regular\";}s:8:\"category\";s:7:\"display\";}s:7:\"Esteban\";a:3:{s:5:\"label\";s:7:\"Esteban\";s:8:\"variants\";a:1:{i:0;s:7:\"regular\";}s:8:\"category\";s:5:\"serif\";}s:15:\"Euphoria Script\";a:3:{s:5:\"label\";s:15:\"Euphoria Script\";s:8:\"variants\";a:1:{i:0;s:7:\"regular\";}s:8:\"category\";s:11:\"handwriting\";}s:5:\"Ewert\";a:3:{s:5:\"label\";s:5:\"Ewert\";s:8:\"variants\";a:1:{i:0;s:7:\"regular\";}s:8:\"category\";s:7:\"display\";}s:3:\"Exo\";a:3:{s:5:\"label\";s:3:\"Exo\";s:8:\"variants\";a:18:{i:0;s:3:\"100\";i:1;s:9:\"100italic\";i:2;s:3:\"200\";i:3;s:9:\"200italic\";i:4;s:3:\"300\";i:5;s:9:\"300italic\";i:6;s:3:\"500\";i:7;s:9:\"500italic\";i:8;s:3:\"600\";i:9;s:9:\"600italic\";i:10;s:3:\"700\";i:11;s:9:\"700italic\";i:12;s:3:\"800\";i:13;s:9:\"800italic\";i:14;s:3:\"900\";i:15;s:9:\"900italic\";i:16;s:6:\"italic\";i:17;s:7:\"regular\";}s:8:\"category\";s:10:\"sans-serif\";}s:5:\"Exo 2\";a:3:{s:5:\"label\";s:5:\"Exo 2\";s:8:\"variants\";a:18:{i:0;s:3:\"100\";i:1;s:9:\"100italic\";i:2;s:3:\"200\";i:3;s:9:\"200italic\";i:4;s:3:\"300\";i:5;s:9:\"300italic\";i:6;s:3:\"500\";i:7;s:9:\"500italic\";i:8;s:3:\"600\";i:9;s:9:\"600italic\";i:10;s:3:\"700\";i:11;s:9:\"700italic\";i:12;s:3:\"800\";i:13;s:9:\"800italic\";i:14;s:3:\"900\";i:15;s:9:\"900italic\";i:16;s:6:\"italic\";i:17;s:7:\"regular\";}s:8:\"category\";s:10:\"sans-serif\";}s:13:\"Expletus Sans\";a:3:{s:5:\"label\";s:13:\"Expletus Sans\";s:8:\"variants\";a:8:{i:0;s:3:\"500\";i:1;s:9:\"500italic\";i:2;s:3:\"600\";i:3;s:9:\"600italic\";i:4;s:3:\"700\";i:5;s:9:\"700italic\";i:6;s:6:\"italic\";i:7;s:7:\"regular\";}s:8:\"category\";s:7:\"display\";}s:8:\"Fahkwang\";a:3:{s:5:\"label\";s:8:\"Fahkwang\";s:8:\"variants\";a:12:{i:0;s:3:\"200\";i:1;s:9:\"200italic\";i:2;s:3:\"300\";i:3;s:9:\"300italic\";i:4;s:3:\"500\";i:5;s:9:\"500italic\";i:6;s:3:\"600\";i:7;s:9:\"600italic\";i:8;s:3:\"700\";i:9;s:9:\"700italic\";i:10;s:6:\"italic\";i:11;s:7:\"regular\";}s:8:\"category\";s:10:\"sans-serif\";}s:12:\"Fanwood Text\";a:3:{s:5:\"label\";s:12:\"Fanwood Text\";s:8:\"variants\";a:2:{i:0;s:6:\"italic\";i:1;s:7:\"regular\";}s:8:\"category\";s:5:\"serif\";}s:6:\"Farsan\";a:3:{s:5:\"label\";s:6:\"Farsan\";s:8:\"variants\";a:1:{i:0;s:7:\"regular\";}s:8:\"category\";s:7:\"display\";}s:9:\"Fascinate\";a:3:{s:5:\"label\";s:9:\"Fascinate\";s:8:\"variants\";a:1:{i:0;s:7:\"regular\";}s:8:\"category\";s:7:\"display\";}s:16:\"Fascinate Inline\";a:3:{s:5:\"label\";s:16:\"Fascinate Inline\";s:8:\"variants\";a:1:{i:0;s:7:\"regular\";}s:8:\"category\";s:7:\"display\";}s:10:\"Faster One\";a:3:{s:5:\"label\";s:10:\"Faster One\";s:8:\"variants\";a:1:{i:0;s:7:\"regular\";}s:8:\"category\";s:7:\"display\";}s:8:\"Fasthand\";a:3:{s:5:\"label\";s:8:\"Fasthand\";s:8:\"variants\";a:1:{i:0;s:7:\"regular\";}s:8:\"category\";s:5:\"serif\";}s:9:\"Fauna One\";a:3:{s:5:\"label\";s:9:\"Fauna One\";s:8:\"variants\";a:1:{i:0;s:7:\"regular\";}s:8:\"category\";s:5:\"serif\";}s:8:\"Faustina\";a:3:{s:5:\"label\";s:8:\"Faustina\";s:8:\"variants\";a:8:{i:0;s:3:\"500\";i:1;s:9:\"500italic\";i:2;s:3:\"600\";i:3;s:9:\"600italic\";i:4;s:3:\"700\";i:5;s:9:\"700italic\";i:6;s:6:\"italic\";i:7;s:7:\"regular\";}s:8:\"category\";s:5:\"serif\";}s:8:\"Federant\";a:3:{s:5:\"label\";s:8:\"Federant\";s:8:\"variants\";a:1:{i:0;s:7:\"regular\";}s:8:\"category\";s:7:\"display\";}s:6:\"Federo\";a:3:{s:5:\"label\";s:6:\"Federo\";s:8:\"variants\";a:1:{i:0;s:7:\"regular\";}s:8:\"category\";s:10:\"sans-serif\";}s:6:\"Felipa\";a:3:{s:5:\"label\";s:6:\"Felipa\";s:8:\"variants\";a:1:{i:0;s:7:\"regular\";}s:8:\"category\";s:11:\"handwriting\";}s:5:\"Fenix\";a:3:{s:5:\"label\";s:5:\"Fenix\";s:8:\"variants\";a:1:{i:0;s:7:\"regular\";}s:8:\"category\";s:5:\"serif\";}s:12:\"Finger Paint\";a:3:{s:5:\"label\";s:12:\"Finger Paint\";s:8:\"variants\";a:1:{i:0;s:7:\"regular\";}s:8:\"category\";s:7:\"display\";}s:9:\"Fira Mono\";a:3:{s:5:\"label\";s:9:\"Fira Mono\";s:8:\"variants\";a:3:{i:0;s:3:\"500\";i:1;s:3:\"700\";i:2;s:7:\"regular\";}s:8:\"category\";s:9:\"monospace\";}s:9:\"Fira Sans\";a:3:{s:5:\"label\";s:9:\"Fira Sans\";s:8:\"variants\";a:18:{i:0;s:3:\"100\";i:1;s:9:\"100italic\";i:2;s:3:\"200\";i:3;s:9:\"200italic\";i:4;s:3:\"300\";i:5;s:9:\"300italic\";i:6;s:3:\"500\";i:7;s:9:\"500italic\";i:8;s:3:\"600\";i:9;s:9:\"600italic\";i:10;s:3:\"700\";i:11;s:9:\"700italic\";i:12;s:3:\"800\";i:13;s:9:\"800italic\";i:14;s:3:\"900\";i:15;s:9:\"900italic\";i:16;s:6:\"italic\";i:17;s:7:\"regular\";}s:8:\"category\";s:10:\"sans-serif\";}s:19:\"Fira Sans Condensed\";a:3:{s:5:\"label\";s:19:\"Fira Sans Condensed\";s:8:\"variants\";a:18:{i:0;s:3:\"100\";i:1;s:9:\"100italic\";i:2;s:3:\"200\";i:3;s:9:\"200italic\";i:4;s:3:\"300\";i:5;s:9:\"300italic\";i:6;s:3:\"500\";i:7;s:9:\"500italic\";i:8;s:3:\"600\";i:9;s:9:\"600italic\";i:10;s:3:\"700\";i:11;s:9:\"700italic\";i:12;s:3:\"800\";i:13;s:9:\"800italic\";i:14;s:3:\"900\";i:15;s:9:\"900italic\";i:16;s:6:\"italic\";i:17;s:7:\"regular\";}s:8:\"category\";s:10:\"sans-serif\";}s:25:\"Fira Sans Extra Condensed\";a:3:{s:5:\"label\";s:25:\"Fira Sans Extra Condensed\";s:8:\"variants\";a:18:{i:0;s:3:\"100\";i:1;s:9:\"100italic\";i:2;s:3:\"200\";i:3;s:9:\"200italic\";i:4;s:3:\"300\";i:5;s:9:\"300italic\";i:6;s:3:\"500\";i:7;s:9:\"500italic\";i:8;s:3:\"600\";i:9;s:9:\"600italic\";i:10;s:3:\"700\";i:11;s:9:\"700italic\";i:12;s:3:\"800\";i:13;s:9:\"800italic\";i:14;s:3:\"900\";i:15;s:9:\"900italic\";i:16;s:6:\"italic\";i:17;s:7:\"regular\";}s:8:\"category\";s:10:\"sans-serif\";}s:10:\"Fjalla One\";a:3:{s:5:\"label\";s:10:\"Fjalla One\";s:8:\"variants\";a:1:{i:0;s:7:\"regular\";}s:8:\"category\";s:10:\"sans-serif\";}s:9:\"Fjord One\";a:3:{s:5:\"label\";s:9:\"Fjord One\";s:8:\"variants\";a:1:{i:0;s:7:\"regular\";}s:8:\"category\";s:5:\"serif\";}s:8:\"Flamenco\";a:3:{s:5:\"label\";s:8:\"Flamenco\";s:8:\"variants\";a:2:{i:0;s:3:\"300\";i:1;s:7:\"regular\";}s:8:\"category\";s:7:\"display\";}s:7:\"Flavors\";a:3:{s:5:\"label\";s:7:\"Flavors\";s:8:\"variants\";a:1:{i:0;s:7:\"regular\";}s:8:\"category\";s:7:\"display\";}s:10:\"Fondamento\";a:3:{s:5:\"label\";s:10:\"Fondamento\";s:8:\"variants\";a:2:{i:0;s:6:\"italic\";i:1;s:7:\"regular\";}s:8:\"category\";s:11:\"handwriting\";}s:16:\"Fontdiner Swanky\";a:3:{s:5:\"label\";s:16:\"Fontdiner Swanky\";s:8:\"variants\";a:1:{i:0;s:7:\"regular\";}s:8:\"category\";s:7:\"display\";}s:5:\"Forum\";a:3:{s:5:\"label\";s:5:\"Forum\";s:8:\"variants\";a:1:{i:0;s:7:\"regular\";}s:8:\"category\";s:7:\"display\";}s:12:\"Francois One\";a:3:{s:5:\"label\";s:12:\"Francois One\";s:8:\"variants\";a:1:{i:0;s:7:\"regular\";}s:8:\"category\";s:10:\"sans-serif\";}s:16:\"Frank Ruhl Libre\";a:3:{s:5:\"label\";s:16:\"Frank Ruhl Libre\";s:8:\"variants\";a:5:{i:0;s:3:\"300\";i:1;s:3:\"500\";i:2;s:3:\"700\";i:3;s:3:\"900\";i:4;s:7:\"regular\";}s:8:\"category\";s:5:\"serif\";}s:12:\"Freckle Face\";a:3:{s:5:\"label\";s:12:\"Freckle Face\";s:8:\"variants\";a:1:{i:0;s:7:\"regular\";}s:8:\"category\";s:7:\"display\";}s:20:\"Fredericka the Great\";a:3:{s:5:\"label\";s:20:\"Fredericka the Great\";s:8:\"variants\";a:1:{i:0;s:7:\"regular\";}s:8:\"category\";s:7:\"display\";}s:11:\"Fredoka One\";a:3:{s:5:\"label\";s:11:\"Fredoka One\";s:8:\"variants\";a:1:{i:0;s:7:\"regular\";}s:8:\"category\";s:7:\"display\";}s:8:\"Freehand\";a:3:{s:5:\"label\";s:8:\"Freehand\";s:8:\"variants\";a:1:{i:0;s:7:\"regular\";}s:8:\"category\";s:7:\"display\";}s:6:\"Fresca\";a:3:{s:5:\"label\";s:6:\"Fresca\";s:8:\"variants\";a:1:{i:0;s:7:\"regular\";}s:8:\"category\";s:10:\"sans-serif\";}s:7:\"Frijole\";a:3:{s:5:\"label\";s:7:\"Frijole\";s:8:\"variants\";a:1:{i:0;s:7:\"regular\";}s:8:\"category\";s:7:\"display\";}s:7:\"Fruktur\";a:3:{s:5:\"label\";s:7:\"Fruktur\";s:8:\"variants\";a:1:{i:0;s:7:\"regular\";}s:8:\"category\";s:7:\"display\";}s:9:\"Fugaz One\";a:3:{s:5:\"label\";s:9:\"Fugaz One\";s:8:\"variants\";a:1:{i:0;s:7:\"regular\";}s:8:\"category\";s:7:\"display\";}s:9:\"GFS Didot\";a:3:{s:5:\"label\";s:9:\"GFS Didot\";s:8:\"variants\";a:1:{i:0;s:7:\"regular\";}s:8:\"category\";s:5:\"serif\";}s:15:\"GFS Neohellenic\";a:3:{s:5:\"label\";s:15:\"GFS Neohellenic\";s:8:\"variants\";a:4:{i:0;s:3:\"700\";i:1;s:9:\"700italic\";i:2;s:6:\"italic\";i:3;s:7:\"regular\";}s:8:\"category\";s:10:\"sans-serif\";}s:8:\"Gabriela\";a:3:{s:5:\"label\";s:8:\"Gabriela\";s:8:\"variants\";a:1:{i:0;s:7:\"regular\";}s:8:\"category\";s:5:\"serif\";}s:5:\"Gaegu\";a:3:{s:5:\"label\";s:5:\"Gaegu\";s:8:\"variants\";a:3:{i:0;s:3:\"300\";i:1;s:3:\"700\";i:2;s:7:\"regular\";}s:8:\"category\";s:11:\"handwriting\";}s:6:\"Gafata\";a:3:{s:5:\"label\";s:6:\"Gafata\";s:8:\"variants\";a:1:{i:0;s:7:\"regular\";}s:8:\"category\";s:10:\"sans-serif\";}s:6:\"Galada\";a:3:{s:5:\"label\";s:6:\"Galada\";s:8:\"variants\";a:1:{i:0;s:7:\"regular\";}s:8:\"category\";s:7:\"display\";}s:8:\"Galdeano\";a:3:{s:5:\"label\";s:8:\"Galdeano\";s:8:\"variants\";a:1:{i:0;s:7:\"regular\";}s:8:\"category\";s:10:\"sans-serif\";}s:7:\"Galindo\";a:3:{s:5:\"label\";s:7:\"Galindo\";s:8:\"variants\";a:1:{i:0;s:7:\"regular\";}s:8:\"category\";s:7:\"display\";}s:12:\"Gamja Flower\";a:3:{s:5:\"label\";s:12:\"Gamja Flower\";s:8:\"variants\";a:1:{i:0;s:7:\"regular\";}s:8:\"category\";s:11:\"handwriting\";}s:13:\"Gentium Basic\";a:3:{s:5:\"label\";s:13:\"Gentium Basic\";s:8:\"variants\";a:4:{i:0;s:3:\"700\";i:1;s:9:\"700italic\";i:2;s:6:\"italic\";i:3;s:7:\"regular\";}s:8:\"category\";s:5:\"serif\";}s:18:\"Gentium Book Basic\";a:3:{s:5:\"label\";s:18:\"Gentium Book Basic\";s:8:\"variants\";a:4:{i:0;s:3:\"700\";i:1;s:9:\"700italic\";i:2;s:6:\"italic\";i:3;s:7:\"regular\";}s:8:\"category\";s:5:\"serif\";}s:3:\"Geo\";a:3:{s:5:\"label\";s:3:\"Geo\";s:8:\"variants\";a:2:{i:0;s:6:\"italic\";i:1;s:7:\"regular\";}s:8:\"category\";s:10:\"sans-serif\";}s:7:\"Geostar\";a:3:{s:5:\"label\";s:7:\"Geostar\";s:8:\"variants\";a:1:{i:0;s:7:\"regular\";}s:8:\"category\";s:7:\"display\";}s:12:\"Geostar Fill\";a:3:{s:5:\"label\";s:12:\"Geostar Fill\";s:8:\"variants\";a:1:{i:0;s:7:\"regular\";}s:8:\"category\";s:7:\"display\";}s:12:\"Germania One\";a:3:{s:5:\"label\";s:12:\"Germania One\";s:8:\"variants\";a:1:{i:0;s:7:\"regular\";}s:8:\"category\";s:7:\"display\";}s:6:\"Gidugu\";a:3:{s:5:\"label\";s:6:\"Gidugu\";s:8:\"variants\";a:1:{i:0;s:7:\"regular\";}s:8:\"category\";s:10:\"sans-serif\";}s:13:\"Gilda Display\";a:3:{s:5:\"label\";s:13:\"Gilda Display\";s:8:\"variants\";a:1:{i:0;s:7:\"regular\";}s:8:\"category\";s:5:\"serif\";}s:14:\"Give You Glory\";a:3:{s:5:\"label\";s:14:\"Give You Glory\";s:8:\"variants\";a:1:{i:0;s:7:\"regular\";}s:8:\"category\";s:11:\"handwriting\";}s:13:\"Glass Antiqua\";a:3:{s:5:\"label\";s:13:\"Glass Antiqua\";s:8:\"variants\";a:1:{i:0;s:7:\"regular\";}s:8:\"category\";s:7:\"display\";}s:6:\"Glegoo\";a:3:{s:5:\"label\";s:6:\"Glegoo\";s:8:\"variants\";a:2:{i:0;s:3:\"700\";i:1;s:7:\"regular\";}s:8:\"category\";s:5:\"serif\";}s:17:\"Gloria Hallelujah\";a:3:{s:5:\"label\";s:17:\"Gloria Hallelujah\";s:8:\"variants\";a:1:{i:0;s:7:\"regular\";}s:8:\"category\";s:11:\"handwriting\";}s:10:\"Goblin One\";a:3:{s:5:\"label\";s:10:\"Goblin One\";s:8:\"variants\";a:1:{i:0;s:7:\"regular\";}s:8:\"category\";s:7:\"display\";}s:10:\"Gochi Hand\";a:3:{s:5:\"label\";s:10:\"Gochi Hand\";s:8:\"variants\";a:1:{i:0;s:7:\"regular\";}s:8:\"category\";s:11:\"handwriting\";}s:8:\"Gorditas\";a:3:{s:5:\"label\";s:8:\"Gorditas\";s:8:\"variants\";a:2:{i:0;s:3:\"700\";i:1;s:7:\"regular\";}s:8:\"category\";s:7:\"display\";}s:9:\"Gothic A1\";a:3:{s:5:\"label\";s:9:\"Gothic A1\";s:8:\"variants\";a:9:{i:0;s:3:\"100\";i:1;s:3:\"200\";i:2;s:3:\"300\";i:3;s:3:\"500\";i:4;s:3:\"600\";i:5;s:3:\"700\";i:6;s:3:\"800\";i:7;s:3:\"900\";i:8;s:7:\"regular\";}s:8:\"category\";s:10:\"sans-serif\";}s:21:\"Goudy Bookletter 1911\";a:3:{s:5:\"label\";s:21:\"Goudy Bookletter 1911\";s:8:\"variants\";a:1:{i:0;s:7:\"regular\";}s:8:\"category\";s:5:\"serif\";}s:8:\"Graduate\";a:3:{s:5:\"label\";s:8:\"Graduate\";s:8:\"variants\";a:1:{i:0;s:7:\"regular\";}s:8:\"category\";s:7:\"display\";}s:11:\"Grand Hotel\";a:3:{s:5:\"label\";s:11:\"Grand Hotel\";s:8:\"variants\";a:1:{i:0;s:7:\"regular\";}s:8:\"category\";s:11:\"handwriting\";}s:12:\"Gravitas One\";a:3:{s:5:\"label\";s:12:\"Gravitas One\";s:8:\"variants\";a:1:{i:0;s:7:\"regular\";}s:8:\"category\";s:7:\"display\";}s:11:\"Great Vibes\";a:3:{s:5:\"label\";s:11:\"Great Vibes\";s:8:\"variants\";a:1:{i:0;s:7:\"regular\";}s:8:\"category\";s:11:\"handwriting\";}s:6:\"Griffy\";a:3:{s:5:\"label\";s:6:\"Griffy\";s:8:\"variants\";a:1:{i:0;s:7:\"regular\";}s:8:\"category\";s:7:\"display\";}s:6:\"Gruppo\";a:3:{s:5:\"label\";s:6:\"Gruppo\";s:8:\"variants\";a:1:{i:0;s:7:\"regular\";}s:8:\"category\";s:7:\"display\";}s:5:\"Gudea\";a:3:{s:5:\"label\";s:5:\"Gudea\";s:8:\"variants\";a:3:{i:0;s:3:\"700\";i:1;s:6:\"italic\";i:2;s:7:\"regular\";}s:8:\"category\";s:10:\"sans-serif\";}s:4:\"Gugi\";a:3:{s:5:\"label\";s:4:\"Gugi\";s:8:\"variants\";a:1:{i:0;s:7:\"regular\";}s:8:\"category\";s:7:\"display\";}s:8:\"Gurajada\";a:3:{s:5:\"label\";s:8:\"Gurajada\";s:8:\"variants\";a:1:{i:0;s:7:\"regular\";}s:8:\"category\";s:5:\"serif\";}s:6:\"Habibi\";a:3:{s:5:\"label\";s:6:\"Habibi\";s:8:\"variants\";a:1:{i:0;s:7:\"regular\";}s:8:\"category\";s:5:\"serif\";}s:6:\"Halant\";a:3:{s:5:\"label\";s:6:\"Halant\";s:8:\"variants\";a:5:{i:0;s:3:\"300\";i:1;s:3:\"500\";i:2;s:3:\"600\";i:3;s:3:\"700\";i:4;s:7:\"regular\";}s:8:\"category\";s:5:\"serif\";}s:15:\"Hammersmith One\";a:3:{s:5:\"label\";s:15:\"Hammersmith One\";s:8:\"variants\";a:1:{i:0;s:7:\"regular\";}s:8:\"category\";s:10:\"sans-serif\";}s:7:\"Hanalei\";a:3:{s:5:\"label\";s:7:\"Hanalei\";s:8:\"variants\";a:1:{i:0;s:7:\"regular\";}s:8:\"category\";s:7:\"display\";}s:12:\"Hanalei Fill\";a:3:{s:5:\"label\";s:12:\"Hanalei Fill\";s:8:\"variants\";a:1:{i:0;s:7:\"regular\";}s:8:\"category\";s:7:\"display\";}s:7:\"Handlee\";a:3:{s:5:\"label\";s:7:\"Handlee\";s:8:\"variants\";a:1:{i:0;s:7:\"regular\";}s:8:\"category\";s:11:\"handwriting\";}s:7:\"Hanuman\";a:3:{s:5:\"label\";s:7:\"Hanuman\";s:8:\"variants\";a:2:{i:0;s:3:\"700\";i:1;s:7:\"regular\";}s:8:\"category\";s:5:\"serif\";}s:12:\"Happy Monkey\";a:3:{s:5:\"label\";s:12:\"Happy Monkey\";s:8:\"variants\";a:1:{i:0;s:7:\"regular\";}s:8:\"category\";s:7:\"display\";}s:9:\"Harmattan\";a:3:{s:5:\"label\";s:9:\"Harmattan\";s:8:\"variants\";a:1:{i:0;s:7:\"regular\";}s:8:\"category\";s:10:\"sans-serif\";}s:12:\"Headland One\";a:3:{s:5:\"label\";s:12:\"Headland One\";s:8:\"variants\";a:1:{i:0;s:7:\"regular\";}s:8:\"category\";s:5:\"serif\";}s:5:\"Heebo\";a:3:{s:5:\"label\";s:5:\"Heebo\";s:8:\"variants\";a:7:{i:0;s:3:\"100\";i:1;s:3:\"300\";i:2;s:3:\"500\";i:3;s:3:\"700\";i:4;s:3:\"800\";i:5;s:3:\"900\";i:6;s:7:\"regular\";}s:8:\"category\";s:10:\"sans-serif\";}s:11:\"Henny Penny\";a:3:{s:5:\"label\";s:11:\"Henny Penny\";s:8:\"variants\";a:1:{i:0;s:7:\"regular\";}s:8:\"category\";s:7:\"display\";}s:20:\"Herr Von Muellerhoff\";a:3:{s:5:\"label\";s:20:\"Herr Von Muellerhoff\";s:8:\"variants\";a:1:{i:0;s:7:\"regular\";}s:8:\"category\";s:11:\"handwriting\";}s:9:\"Hi Melody\";a:3:{s:5:\"label\";s:9:\"Hi Melody\";s:8:\"variants\";a:1:{i:0;s:7:\"regular\";}s:8:\"category\";s:11:\"handwriting\";}s:4:\"Hind\";a:3:{s:5:\"label\";s:4:\"Hind\";s:8:\"variants\";a:5:{i:0;s:3:\"300\";i:1;s:3:\"500\";i:2;s:3:\"600\";i:3;s:3:\"700\";i:4;s:7:\"regular\";}s:8:\"category\";s:10:\"sans-serif\";}s:11:\"Hind Guntur\";a:3:{s:5:\"label\";s:11:\"Hind Guntur\";s:8:\"variants\";a:5:{i:0;s:3:\"300\";i:1;s:3:\"500\";i:2;s:3:\"600\";i:3;s:3:\"700\";i:4;s:7:\"regular\";}s:8:\"category\";s:10:\"sans-serif\";}s:12:\"Hind Madurai\";a:3:{s:5:\"label\";s:12:\"Hind Madurai\";s:8:\"variants\";a:5:{i:0;s:3:\"300\";i:1;s:3:\"500\";i:2;s:3:\"600\";i:3;s:3:\"700\";i:4;s:7:\"regular\";}s:8:\"category\";s:10:\"sans-serif\";}s:13:\"Hind Siliguri\";a:3:{s:5:\"label\";s:13:\"Hind Siliguri\";s:8:\"variants\";a:5:{i:0;s:3:\"300\";i:1;s:3:\"500\";i:2;s:3:\"600\";i:3;s:3:\"700\";i:4;s:7:\"regular\";}s:8:\"category\";s:10:\"sans-serif\";}s:13:\"Hind Vadodara\";a:3:{s:5:\"label\";s:13:\"Hind Vadodara\";s:8:\"variants\";a:5:{i:0;s:3:\"300\";i:1;s:3:\"500\";i:2;s:3:\"600\";i:3;s:3:\"700\";i:4;s:7:\"regular\";}s:8:\"category\";s:10:\"sans-serif\";}s:15:\"Holtwood One SC\";a:3:{s:5:\"label\";s:15:\"Holtwood One SC\";s:8:\"variants\";a:1:{i:0;s:7:\"regular\";}s:8:\"category\";s:5:\"serif\";}s:14:\"Homemade Apple\";a:3:{s:5:\"label\";s:14:\"Homemade Apple\";s:8:\"variants\";a:1:{i:0;s:7:\"regular\";}s:8:\"category\";s:11:\"handwriting\";}s:8:\"Homenaje\";a:3:{s:5:\"label\";s:8:\"Homenaje\";s:8:\"variants\";a:1:{i:0;s:7:\"regular\";}s:8:\"category\";s:10:\"sans-serif\";}s:13:\"IBM Plex Mono\";a:3:{s:5:\"label\";s:13:\"IBM Plex Mono\";s:8:\"variants\";a:14:{i:0;s:3:\"100\";i:1;s:9:\"100italic\";i:2;s:3:\"200\";i:3;s:9:\"200italic\";i:4;s:3:\"300\";i:5;s:9:\"300italic\";i:6;s:3:\"500\";i:7;s:9:\"500italic\";i:8;s:3:\"600\";i:9;s:9:\"600italic\";i:10;s:3:\"700\";i:11;s:9:\"700italic\";i:12;s:6:\"italic\";i:13;s:7:\"regular\";}s:8:\"category\";s:9:\"monospace\";}s:13:\"IBM Plex Sans\";a:3:{s:5:\"label\";s:13:\"IBM Plex Sans\";s:8:\"variants\";a:14:{i:0;s:3:\"100\";i:1;s:9:\"100italic\";i:2;s:3:\"200\";i:3;s:9:\"200italic\";i:4;s:3:\"300\";i:5;s:9:\"300italic\";i:6;s:3:\"500\";i:7;s:9:\"500italic\";i:8;s:3:\"600\";i:9;s:9:\"600italic\";i:10;s:3:\"700\";i:11;s:9:\"700italic\";i:12;s:6:\"italic\";i:13;s:7:\"regular\";}s:8:\"category\";s:10:\"sans-serif\";}s:23:\"IBM Plex Sans Condensed\";a:3:{s:5:\"label\";s:23:\"IBM Plex Sans Condensed\";s:8:\"variants\";a:14:{i:0;s:3:\"100\";i:1;s:9:\"100italic\";i:2;s:3:\"200\";i:3;s:9:\"200italic\";i:4;s:3:\"300\";i:5;s:9:\"300italic\";i:6;s:3:\"500\";i:7;s:9:\"500italic\";i:8;s:3:\"600\";i:9;s:9:\"600italic\";i:10;s:3:\"700\";i:11;s:9:\"700italic\";i:12;s:6:\"italic\";i:13;s:7:\"regular\";}s:8:\"category\";s:10:\"sans-serif\";}s:14:\"IBM Plex Serif\";a:3:{s:5:\"label\";s:14:\"IBM Plex Serif\";s:8:\"variants\";a:14:{i:0;s:3:\"100\";i:1;s:9:\"100italic\";i:2;s:3:\"200\";i:3;s:9:\"200italic\";i:4;s:3:\"300\";i:5;s:9:\"300italic\";i:6;s:3:\"500\";i:7;s:9:\"500italic\";i:8;s:3:\"600\";i:9;s:9:\"600italic\";i:10;s:3:\"700\";i:11;s:9:\"700italic\";i:12;s:6:\"italic\";i:13;s:7:\"regular\";}s:8:\"category\";s:5:\"serif\";}s:15:\"IM Fell DW Pica\";a:3:{s:5:\"label\";s:15:\"IM Fell DW Pica\";s:8:\"variants\";a:2:{i:0;s:6:\"italic\";i:1;s:7:\"regular\";}s:8:\"category\";s:5:\"serif\";}s:18:\"IM Fell DW Pica SC\";a:3:{s:5:\"label\";s:18:\"IM Fell DW Pica SC\";s:8:\"variants\";a:1:{i:0;s:7:\"regular\";}s:8:\"category\";s:5:\"serif\";}s:19:\"IM Fell Double Pica\";a:3:{s:5:\"label\";s:19:\"IM Fell Double Pica\";s:8:\"variants\";a:2:{i:0;s:6:\"italic\";i:1;s:7:\"regular\";}s:8:\"category\";s:5:\"serif\";}s:22:\"IM Fell Double Pica SC\";a:3:{s:5:\"label\";s:22:\"IM Fell Double Pica SC\";s:8:\"variants\";a:1:{i:0;s:7:\"regular\";}s:8:\"category\";s:5:\"serif\";}s:15:\"IM Fell English\";a:3:{s:5:\"label\";s:15:\"IM Fell English\";s:8:\"variants\";a:2:{i:0;s:6:\"italic\";i:1;s:7:\"regular\";}s:8:\"category\";s:5:\"serif\";}s:18:\"IM Fell English SC\";a:3:{s:5:\"label\";s:18:\"IM Fell English SC\";s:8:\"variants\";a:1:{i:0;s:7:\"regular\";}s:8:\"category\";s:5:\"serif\";}s:20:\"IM Fell French Canon\";a:3:{s:5:\"label\";s:20:\"IM Fell French Canon\";s:8:\"variants\";a:2:{i:0;s:6:\"italic\";i:1;s:7:\"regular\";}s:8:\"category\";s:5:\"serif\";}s:23:\"IM Fell French Canon SC\";a:3:{s:5:\"label\";s:23:\"IM Fell French Canon SC\";s:8:\"variants\";a:1:{i:0;s:7:\"regular\";}s:8:\"category\";s:5:\"serif\";}s:20:\"IM Fell Great Primer\";a:3:{s:5:\"label\";s:20:\"IM Fell Great Primer\";s:8:\"variants\";a:2:{i:0;s:6:\"italic\";i:1;s:7:\"regular\";}s:8:\"category\";s:5:\"serif\";}s:23:\"IM Fell Great Primer SC\";a:3:{s:5:\"label\";s:23:\"IM Fell Great Primer SC\";s:8:\"variants\";a:1:{i:0;s:7:\"regular\";}s:8:\"category\";s:5:\"serif\";}s:7:\"Iceberg\";a:3:{s:5:\"label\";s:7:\"Iceberg\";s:8:\"variants\";a:1:{i:0;s:7:\"regular\";}s:8:\"category\";s:7:\"display\";}s:7:\"Iceland\";a:3:{s:5:\"label\";s:7:\"Iceland\";s:8:\"variants\";a:1:{i:0;s:7:\"regular\";}s:8:\"category\";s:7:\"display\";}s:7:\"Imprima\";a:3:{s:5:\"label\";s:7:\"Imprima\";s:8:\"variants\";a:1:{i:0;s:7:\"regular\";}s:8:\"category\";s:10:\"sans-serif\";}s:11:\"Inconsolata\";a:3:{s:5:\"label\";s:11:\"Inconsolata\";s:8:\"variants\";a:2:{i:0;s:3:\"700\";i:1;s:7:\"regular\";}s:8:\"category\";s:9:\"monospace\";}s:5:\"Inder\";a:3:{s:5:\"label\";s:5:\"Inder\";s:8:\"variants\";a:1:{i:0;s:7:\"regular\";}s:8:\"category\";s:10:\"sans-serif\";}s:12:\"Indie Flower\";a:3:{s:5:\"label\";s:12:\"Indie Flower\";s:8:\"variants\";a:1:{i:0;s:7:\"regular\";}s:8:\"category\";s:11:\"handwriting\";}s:5:\"Inika\";a:3:{s:5:\"label\";s:5:\"Inika\";s:8:\"variants\";a:2:{i:0;s:3:\"700\";i:1;s:7:\"regular\";}s:8:\"category\";s:5:\"serif\";}s:14:\"Inknut Antiqua\";a:3:{s:5:\"label\";s:14:\"Inknut Antiqua\";s:8:\"variants\";a:7:{i:0;s:3:\"300\";i:1;s:3:\"500\";i:2;s:3:\"600\";i:3;s:3:\"700\";i:4;s:3:\"800\";i:5;s:3:\"900\";i:6;s:7:\"regular\";}s:8:\"category\";s:5:\"serif\";}s:12:\"Irish Grover\";a:3:{s:5:\"label\";s:12:\"Irish Grover\";s:8:\"variants\";a:1:{i:0;s:7:\"regular\";}s:8:\"category\";s:7:\"display\";}s:9:\"Istok Web\";a:3:{s:5:\"label\";s:9:\"Istok Web\";s:8:\"variants\";a:4:{i:0;s:3:\"700\";i:1;s:9:\"700italic\";i:2;s:6:\"italic\";i:3;s:7:\"regular\";}s:8:\"category\";s:10:\"sans-serif\";}s:8:\"Italiana\";a:3:{s:5:\"label\";s:8:\"Italiana\";s:8:\"variants\";a:1:{i:0;s:7:\"regular\";}s:8:\"category\";s:5:\"serif\";}s:9:\"Italianno\";a:3:{s:5:\"label\";s:9:\"Italianno\";s:8:\"variants\";a:1:{i:0;s:7:\"regular\";}s:8:\"category\";s:11:\"handwriting\";}s:4:\"Itim\";a:3:{s:5:\"label\";s:4:\"Itim\";s:8:\"variants\";a:1:{i:0;s:7:\"regular\";}s:8:\"category\";s:11:\"handwriting\";}s:16:\"Jacques Francois\";a:3:{s:5:\"label\";s:16:\"Jacques Francois\";s:8:\"variants\";a:1:{i:0;s:7:\"regular\";}s:8:\"category\";s:5:\"serif\";}s:23:\"Jacques Francois Shadow\";a:3:{s:5:\"label\";s:23:\"Jacques Francois Shadow\";s:8:\"variants\";a:1:{i:0;s:7:\"regular\";}s:8:\"category\";s:7:\"display\";}s:5:\"Jaldi\";a:3:{s:5:\"label\";s:5:\"Jaldi\";s:8:\"variants\";a:2:{i:0;s:3:\"700\";i:1;s:7:\"regular\";}s:8:\"category\";s:10:\"sans-serif\";}s:14:\"Jim Nightshade\";a:3:{s:5:\"label\";s:14:\"Jim Nightshade\";s:8:\"variants\";a:1:{i:0;s:7:\"regular\";}s:8:\"category\";s:11:\"handwriting\";}s:10:\"Jockey One\";a:3:{s:5:\"label\";s:10:\"Jockey One\";s:8:\"variants\";a:1:{i:0;s:7:\"regular\";}s:8:\"category\";s:10:\"sans-serif\";}s:12:\"Jolly Lodger\";a:3:{s:5:\"label\";s:12:\"Jolly Lodger\";s:8:\"variants\";a:1:{i:0;s:7:\"regular\";}s:8:\"category\";s:7:\"display\";}s:8:\"Jomhuria\";a:3:{s:5:\"label\";s:8:\"Jomhuria\";s:8:\"variants\";a:1:{i:0;s:7:\"regular\";}s:8:\"category\";s:7:\"display\";}s:12:\"Josefin Sans\";a:3:{s:5:\"label\";s:12:\"Josefin Sans\";s:8:\"variants\";a:10:{i:0;s:3:\"100\";i:1;s:9:\"100italic\";i:2;s:3:\"300\";i:3;s:9:\"300italic\";i:4;s:3:\"600\";i:5;s:9:\"600italic\";i:6;s:3:\"700\";i:7;s:9:\"700italic\";i:8;s:6:\"italic\";i:9;s:7:\"regular\";}s:8:\"category\";s:10:\"sans-serif\";}s:12:\"Josefin Slab\";a:3:{s:5:\"label\";s:12:\"Josefin Slab\";s:8:\"variants\";a:10:{i:0;s:3:\"100\";i:1;s:9:\"100italic\";i:2;s:3:\"300\";i:3;s:9:\"300italic\";i:4;s:3:\"600\";i:5;s:9:\"600italic\";i:6;s:3:\"700\";i:7;s:9:\"700italic\";i:8;s:6:\"italic\";i:9;s:7:\"regular\";}s:8:\"category\";s:5:\"serif\";}s:8:\"Joti One\";a:3:{s:5:\"label\";s:8:\"Joti One\";s:8:\"variants\";a:1:{i:0;s:7:\"regular\";}s:8:\"category\";s:7:\"display\";}s:3:\"Jua\";a:3:{s:5:\"label\";s:3:\"Jua\";s:8:\"variants\";a:1:{i:0;s:7:\"regular\";}s:8:\"category\";s:10:\"sans-serif\";}s:6:\"Judson\";a:3:{s:5:\"label\";s:6:\"Judson\";s:8:\"variants\";a:3:{i:0;s:3:\"700\";i:1;s:6:\"italic\";i:2;s:7:\"regular\";}s:8:\"category\";s:5:\"serif\";}s:5:\"Julee\";a:3:{s:5:\"label\";s:5:\"Julee\";s:8:\"variants\";a:1:{i:0;s:7:\"regular\";}s:8:\"category\";s:11:\"handwriting\";}s:15:\"Julius Sans One\";a:3:{s:5:\"label\";s:15:\"Julius Sans One\";s:8:\"variants\";a:1:{i:0;s:7:\"regular\";}s:8:\"category\";s:10:\"sans-serif\";}s:5:\"Junge\";a:3:{s:5:\"label\";s:5:\"Junge\";s:8:\"variants\";a:1:{i:0;s:7:\"regular\";}s:8:\"category\";s:5:\"serif\";}s:4:\"Jura\";a:3:{s:5:\"label\";s:4:\"Jura\";s:8:\"variants\";a:5:{i:0;s:3:\"300\";i:1;s:3:\"500\";i:2;s:3:\"600\";i:3;s:3:\"700\";i:4;s:7:\"regular\";}s:8:\"category\";s:10:\"sans-serif\";}s:17:\"Just Another Hand\";a:3:{s:5:\"label\";s:17:\"Just Another Hand\";s:8:\"variants\";a:1:{i:0;s:7:\"regular\";}s:8:\"category\";s:11:\"handwriting\";}s:23:\"Just Me Again Down Here\";a:3:{s:5:\"label\";s:23:\"Just Me Again Down Here\";s:8:\"variants\";a:1:{i:0;s:7:\"regular\";}s:8:\"category\";s:11:\"handwriting\";}s:3:\"K2D\";a:3:{s:5:\"label\";s:3:\"K2D\";s:8:\"variants\";a:16:{i:0;s:3:\"100\";i:1;s:9:\"100italic\";i:2;s:3:\"200\";i:3;s:9:\"200italic\";i:4;s:3:\"300\";i:5;s:9:\"300italic\";i:6;s:3:\"500\";i:7;s:9:\"500italic\";i:8;s:3:\"600\";i:9;s:9:\"600italic\";i:10;s:3:\"700\";i:11;s:9:\"700italic\";i:12;s:3:\"800\";i:13;s:9:\"800italic\";i:14;s:6:\"italic\";i:15;s:7:\"regular\";}s:8:\"category\";s:10:\"sans-serif\";}s:5:\"Kadwa\";a:3:{s:5:\"label\";s:5:\"Kadwa\";s:8:\"variants\";a:2:{i:0;s:3:\"700\";i:1;s:7:\"regular\";}s:8:\"category\";s:5:\"serif\";}s:5:\"Kalam\";a:3:{s:5:\"label\";s:5:\"Kalam\";s:8:\"variants\";a:3:{i:0;s:3:\"300\";i:1;s:3:\"700\";i:2;s:7:\"regular\";}s:8:\"category\";s:11:\"handwriting\";}s:7:\"Kameron\";a:3:{s:5:\"label\";s:7:\"Kameron\";s:8:\"variants\";a:2:{i:0;s:3:\"700\";i:1;s:7:\"regular\";}s:8:\"category\";s:5:\"serif\";}s:5:\"Kanit\";a:3:{s:5:\"label\";s:5:\"Kanit\";s:8:\"variants\";a:18:{i:0;s:3:\"100\";i:1;s:9:\"100italic\";i:2;s:3:\"200\";i:3;s:9:\"200italic\";i:4;s:3:\"300\";i:5;s:9:\"300italic\";i:6;s:3:\"500\";i:7;s:9:\"500italic\";i:8;s:3:\"600\";i:9;s:9:\"600italic\";i:10;s:3:\"700\";i:11;s:9:\"700italic\";i:12;s:3:\"800\";i:13;s:9:\"800italic\";i:14;s:3:\"900\";i:15;s:9:\"900italic\";i:16;s:6:\"italic\";i:17;s:7:\"regular\";}s:8:\"category\";s:10:\"sans-serif\";}s:9:\"Kantumruy\";a:3:{s:5:\"label\";s:9:\"Kantumruy\";s:8:\"variants\";a:3:{i:0;s:3:\"300\";i:1;s:3:\"700\";i:2;s:7:\"regular\";}s:8:\"category\";s:10:\"sans-serif\";}s:5:\"Karla\";a:3:{s:5:\"label\";s:5:\"Karla\";s:8:\"variants\";a:4:{i:0;s:3:\"700\";i:1;s:9:\"700italic\";i:2;s:6:\"italic\";i:3;s:7:\"regular\";}s:8:\"category\";s:10:\"sans-serif\";}s:5:\"Karma\";a:3:{s:5:\"label\";s:5:\"Karma\";s:8:\"variants\";a:5:{i:0;s:3:\"300\";i:1;s:3:\"500\";i:2;s:3:\"600\";i:3;s:3:\"700\";i:4;s:7:\"regular\";}s:8:\"category\";s:5:\"serif\";}s:7:\"Katibeh\";a:3:{s:5:\"label\";s:7:\"Katibeh\";s:8:\"variants\";a:1:{i:0;s:7:\"regular\";}s:8:\"category\";s:7:\"display\";}s:14:\"Kaushan Script\";a:3:{s:5:\"label\";s:14:\"Kaushan Script\";s:8:\"variants\";a:1:{i:0;s:7:\"regular\";}s:8:\"category\";s:11:\"handwriting\";}s:9:\"Kavivanar\";a:3:{s:5:\"label\";s:9:\"Kavivanar\";s:8:\"variants\";a:1:{i:0;s:7:\"regular\";}s:8:\"category\";s:11:\"handwriting\";}s:6:\"Kavoon\";a:3:{s:5:\"label\";s:6:\"Kavoon\";s:8:\"variants\";a:1:{i:0;s:7:\"regular\";}s:8:\"category\";s:7:\"display\";}s:10:\"Kdam Thmor\";a:3:{s:5:\"label\";s:10:\"Kdam Thmor\";s:8:\"variants\";a:1:{i:0;s:7:\"regular\";}s:8:\"category\";s:7:\"display\";}s:10:\"Keania One\";a:3:{s:5:\"label\";s:10:\"Keania One\";s:8:\"variants\";a:1:{i:0;s:7:\"regular\";}s:8:\"category\";s:7:\"display\";}s:10:\"Kelly Slab\";a:3:{s:5:\"label\";s:10:\"Kelly Slab\";s:8:\"variants\";a:1:{i:0;s:7:\"regular\";}s:8:\"category\";s:7:\"display\";}s:5:\"Kenia\";a:3:{s:5:\"label\";s:5:\"Kenia\";s:8:\"variants\";a:1:{i:0;s:7:\"regular\";}s:8:\"category\";s:7:\"display\";}s:5:\"Khand\";a:3:{s:5:\"label\";s:5:\"Khand\";s:8:\"variants\";a:5:{i:0;s:3:\"300\";i:1;s:3:\"500\";i:2;s:3:\"600\";i:3;s:3:\"700\";i:4;s:7:\"regular\";}s:8:\"category\";s:10:\"sans-serif\";}s:5:\"Khmer\";a:3:{s:5:\"label\";s:5:\"Khmer\";s:8:\"variants\";a:1:{i:0;s:7:\"regular\";}s:8:\"category\";s:7:\"display\";}s:5:\"Khula\";a:3:{s:5:\"label\";s:5:\"Khula\";s:8:\"variants\";a:5:{i:0;s:3:\"300\";i:1;s:3:\"600\";i:2;s:3:\"700\";i:3;s:3:\"800\";i:4;s:7:\"regular\";}s:8:\"category\";s:10:\"sans-serif\";}s:14:\"Kirang Haerang\";a:3:{s:5:\"label\";s:14:\"Kirang Haerang\";s:8:\"variants\";a:1:{i:0;s:7:\"regular\";}s:8:\"category\";s:7:\"display\";}s:8:\"Kite One\";a:3:{s:5:\"label\";s:8:\"Kite One\";s:8:\"variants\";a:1:{i:0;s:7:\"regular\";}s:8:\"category\";s:10:\"sans-serif\";}s:7:\"Knewave\";a:3:{s:5:\"label\";s:7:\"Knewave\";s:8:\"variants\";a:1:{i:0;s:7:\"regular\";}s:8:\"category\";s:7:\"display\";}s:4:\"KoHo\";a:3:{s:5:\"label\";s:4:\"KoHo\";s:8:\"variants\";a:12:{i:0;s:3:\"200\";i:1;s:9:\"200italic\";i:2;s:3:\"300\";i:3;s:9:\"300italic\";i:4;s:3:\"500\";i:5;s:9:\"500italic\";i:6;s:3:\"600\";i:7;s:9:\"600italic\";i:8;s:3:\"700\";i:9;s:9:\"700italic\";i:10;s:6:\"italic\";i:11;s:7:\"regular\";}s:8:\"category\";s:10:\"sans-serif\";}s:9:\"Kodchasan\";a:3:{s:5:\"label\";s:9:\"Kodchasan\";s:8:\"variants\";a:12:{i:0;s:3:\"200\";i:1;s:9:\"200italic\";i:2;s:3:\"300\";i:3;s:9:\"300italic\";i:4;s:3:\"500\";i:5;s:9:\"500italic\";i:6;s:3:\"600\";i:7;s:9:\"600italic\";i:8;s:3:\"700\";i:9;s:9:\"700italic\";i:10;s:6:\"italic\";i:11;s:7:\"regular\";}s:8:\"category\";s:10:\"sans-serif\";}s:6:\"Kosugi\";a:3:{s:5:\"label\";s:6:\"Kosugi\";s:8:\"variants\";a:1:{i:0;s:7:\"regular\";}s:8:\"category\";s:10:\"sans-serif\";}s:11:\"Kosugi Maru\";a:3:{s:5:\"label\";s:11:\"Kosugi Maru\";s:8:\"variants\";a:1:{i:0;s:7:\"regular\";}s:8:\"category\";s:10:\"sans-serif\";}s:9:\"Kotta One\";a:3:{s:5:\"label\";s:9:\"Kotta One\";s:8:\"variants\";a:1:{i:0;s:7:\"regular\";}s:8:\"category\";s:5:\"serif\";}s:6:\"Koulen\";a:3:{s:5:\"label\";s:6:\"Koulen\";s:8:\"variants\";a:1:{i:0;s:7:\"regular\";}s:8:\"category\";s:7:\"display\";}s:6:\"Kranky\";a:3:{s:5:\"label\";s:6:\"Kranky\";s:8:\"variants\";a:1:{i:0;s:7:\"regular\";}s:8:\"category\";s:7:\"display\";}s:5:\"Kreon\";a:3:{s:5:\"label\";s:5:\"Kreon\";s:8:\"variants\";a:3:{i:0;s:3:\"300\";i:1;s:3:\"700\";i:2;s:7:\"regular\";}s:8:\"category\";s:5:\"serif\";}s:6:\"Kristi\";a:3:{s:5:\"label\";s:6:\"Kristi\";s:8:\"variants\";a:1:{i:0;s:7:\"regular\";}s:8:\"category\";s:11:\"handwriting\";}s:9:\"Krona One\";a:3:{s:5:\"label\";s:9:\"Krona One\";s:8:\"variants\";a:1:{i:0;s:7:\"regular\";}s:8:\"category\";s:10:\"sans-serif\";}s:4:\"Krub\";a:3:{s:5:\"label\";s:4:\"Krub\";s:8:\"variants\";a:12:{i:0;s:3:\"200\";i:1;s:9:\"200italic\";i:2;s:3:\"300\";i:3;s:9:\"300italic\";i:4;s:3:\"500\";i:5;s:9:\"500italic\";i:6;s:3:\"600\";i:7;s:9:\"600italic\";i:8;s:3:\"700\";i:9;s:9:\"700italic\";i:10;s:6:\"italic\";i:11;s:7:\"regular\";}s:8:\"category\";s:10:\"sans-serif\";}s:9:\"Kumar One\";a:3:{s:5:\"label\";s:9:\"Kumar One\";s:8:\"variants\";a:1:{i:0;s:7:\"regular\";}s:8:\"category\";s:7:\"display\";}s:17:\"Kumar One Outline\";a:3:{s:5:\"label\";s:17:\"Kumar One Outline\";s:8:\"variants\";a:1:{i:0;s:7:\"regular\";}s:8:\"category\";s:7:\"display\";}s:6:\"Kurale\";a:3:{s:5:\"label\";s:6:\"Kurale\";s:8:\"variants\";a:1:{i:0;s:7:\"regular\";}s:8:\"category\";s:5:\"serif\";}s:15:\"La Belle Aurore\";a:3:{s:5:\"label\";s:15:\"La Belle Aurore\";s:8:\"variants\";a:1:{i:0;s:7:\"regular\";}s:8:\"category\";s:11:\"handwriting\";}s:5:\"Laila\";a:3:{s:5:\"label\";s:5:\"Laila\";s:8:\"variants\";a:5:{i:0;s:3:\"300\";i:1;s:3:\"500\";i:2;s:3:\"600\";i:3;s:3:\"700\";i:4;s:7:\"regular\";}s:8:\"category\";s:5:\"serif\";}s:11:\"Lakki Reddy\";a:3:{s:5:\"label\";s:11:\"Lakki Reddy\";s:8:\"variants\";a:1:{i:0;s:7:\"regular\";}s:8:\"category\";s:11:\"handwriting\";}s:7:\"Lalezar\";a:3:{s:5:\"label\";s:7:\"Lalezar\";s:8:\"variants\";a:1:{i:0;s:7:\"regular\";}s:8:\"category\";s:7:\"display\";}s:8:\"Lancelot\";a:3:{s:5:\"label\";s:8:\"Lancelot\";s:8:\"variants\";a:1:{i:0;s:7:\"regular\";}s:8:\"category\";s:7:\"display\";}s:6:\"Lateef\";a:3:{s:5:\"label\";s:6:\"Lateef\";s:8:\"variants\";a:1:{i:0;s:7:\"regular\";}s:8:\"category\";s:11:\"handwriting\";}s:4:\"Lato\";a:3:{s:5:\"label\";s:4:\"Lato\";s:8:\"variants\";a:10:{i:0;s:3:\"100\";i:1;s:9:\"100italic\";i:2;s:3:\"300\";i:3;s:9:\"300italic\";i:4;s:3:\"700\";i:5;s:9:\"700italic\";i:6;s:3:\"900\";i:7;s:9:\"900italic\";i:8;s:6:\"italic\";i:9;s:7:\"regular\";}s:8:\"category\";s:10:\"sans-serif\";}s:13:\"League Script\";a:3:{s:5:\"label\";s:13:\"League Script\";s:8:\"variants\";a:1:{i:0;s:7:\"regular\";}s:8:\"category\";s:11:\"handwriting\";}s:12:\"Leckerli One\";a:3:{s:5:\"label\";s:12:\"Leckerli One\";s:8:\"variants\";a:1:{i:0;s:7:\"regular\";}s:8:\"category\";s:11:\"handwriting\";}s:6:\"Ledger\";a:3:{s:5:\"label\";s:6:\"Ledger\";s:8:\"variants\";a:1:{i:0;s:7:\"regular\";}s:8:\"category\";s:5:\"serif\";}s:6:\"Lekton\";a:3:{s:5:\"label\";s:6:\"Lekton\";s:8:\"variants\";a:3:{i:0;s:3:\"700\";i:1;s:6:\"italic\";i:2;s:7:\"regular\";}s:8:\"category\";s:10:\"sans-serif\";}s:5:\"Lemon\";a:3:{s:5:\"label\";s:5:\"Lemon\";s:8:\"variants\";a:1:{i:0;s:7:\"regular\";}s:8:\"category\";s:7:\"display\";}s:8:\"Lemonada\";a:3:{s:5:\"label\";s:8:\"Lemonada\";s:8:\"variants\";a:4:{i:0;s:3:\"300\";i:1;s:3:\"600\";i:2;s:3:\"700\";i:3;s:7:\"regular\";}s:8:\"category\";s:7:\"display\";}s:17:\"Libre Barcode 128\";a:3:{s:5:\"label\";s:17:\"Libre Barcode 128\";s:8:\"variants\";a:1:{i:0;s:7:\"regular\";}s:8:\"category\";s:7:\"display\";}s:22:\"Libre Barcode 128 Text\";a:3:{s:5:\"label\";s:22:\"Libre Barcode 128 Text\";s:8:\"variants\";a:1:{i:0;s:7:\"regular\";}s:8:\"category\";s:7:\"display\";}s:16:\"Libre Barcode 39\";a:3:{s:5:\"label\";s:16:\"Libre Barcode 39\";s:8:\"variants\";a:1:{i:0;s:7:\"regular\";}s:8:\"category\";s:7:\"display\";}s:25:\"Libre Barcode 39 Extended\";a:3:{s:5:\"label\";s:25:\"Libre Barcode 39 Extended\";s:8:\"variants\";a:1:{i:0;s:7:\"regular\";}s:8:\"category\";s:7:\"display\";}s:30:\"Libre Barcode 39 Extended Text\";a:3:{s:5:\"label\";s:30:\"Libre Barcode 39 Extended Text\";s:8:\"variants\";a:1:{i:0;s:7:\"regular\";}s:8:\"category\";s:7:\"display\";}s:21:\"Libre Barcode 39 Text\";a:3:{s:5:\"label\";s:21:\"Libre Barcode 39 Text\";s:8:\"variants\";a:1:{i:0;s:7:\"regular\";}s:8:\"category\";s:7:\"display\";}s:17:\"Libre Baskerville\";a:3:{s:5:\"label\";s:17:\"Libre Baskerville\";s:8:\"variants\";a:3:{i:0;s:3:\"700\";i:1;s:6:\"italic\";i:2;s:7:\"regular\";}s:8:\"category\";s:5:\"serif\";}s:14:\"Libre Franklin\";a:3:{s:5:\"label\";s:14:\"Libre Franklin\";s:8:\"variants\";a:18:{i:0;s:3:\"100\";i:1;s:9:\"100italic\";i:2;s:3:\"200\";i:3;s:9:\"200italic\";i:4;s:3:\"300\";i:5;s:9:\"300italic\";i:6;s:3:\"500\";i:7;s:9:\"500italic\";i:8;s:3:\"600\";i:9;s:9:\"600italic\";i:10;s:3:\"700\";i:11;s:9:\"700italic\";i:12;s:3:\"800\";i:13;s:9:\"800italic\";i:14;s:3:\"900\";i:15;s:9:\"900italic\";i:16;s:6:\"italic\";i:17;s:7:\"regular\";}s:8:\"category\";s:10:\"sans-serif\";}s:11:\"Life Savers\";a:3:{s:5:\"label\";s:11:\"Life Savers\";s:8:\"variants\";a:2:{i:0;s:3:\"700\";i:1;s:7:\"regular\";}s:8:\"category\";s:7:\"display\";}s:10:\"Lilita One\";a:3:{s:5:\"label\";s:10:\"Lilita One\";s:8:\"variants\";a:1:{i:0;s:7:\"regular\";}s:8:\"category\";s:7:\"display\";}s:15:\"Lily Script One\";a:3:{s:5:\"label\";s:15:\"Lily Script One\";s:8:\"variants\";a:1:{i:0;s:7:\"regular\";}s:8:\"category\";s:7:\"display\";}s:9:\"Limelight\";a:3:{s:5:\"label\";s:9:\"Limelight\";s:8:\"variants\";a:1:{i:0;s:7:\"regular\";}s:8:\"category\";s:7:\"display\";}s:11:\"Linden Hill\";a:3:{s:5:\"label\";s:11:\"Linden Hill\";s:8:\"variants\";a:2:{i:0;s:6:\"italic\";i:1;s:7:\"regular\";}s:8:\"category\";s:5:\"serif\";}s:7:\"Lobster\";a:3:{s:5:\"label\";s:7:\"Lobster\";s:8:\"variants\";a:1:{i:0;s:7:\"regular\";}s:8:\"category\";s:7:\"display\";}s:11:\"Lobster Two\";a:3:{s:5:\"label\";s:11:\"Lobster Two\";s:8:\"variants\";a:4:{i:0;s:3:\"700\";i:1;s:9:\"700italic\";i:2;s:6:\"italic\";i:3;s:7:\"regular\";}s:8:\"category\";s:7:\"display\";}s:16:\"Londrina Outline\";a:3:{s:5:\"label\";s:16:\"Londrina Outline\";s:8:\"variants\";a:1:{i:0;s:7:\"regular\";}s:8:\"category\";s:7:\"display\";}s:15:\"Londrina Shadow\";a:3:{s:5:\"label\";s:15:\"Londrina Shadow\";s:8:\"variants\";a:1:{i:0;s:7:\"regular\";}s:8:\"category\";s:7:\"display\";}s:15:\"Londrina Sketch\";a:3:{s:5:\"label\";s:15:\"Londrina Sketch\";s:8:\"variants\";a:1:{i:0;s:7:\"regular\";}s:8:\"category\";s:7:\"display\";}s:14:\"Londrina Solid\";a:3:{s:5:\"label\";s:14:\"Londrina Solid\";s:8:\"variants\";a:4:{i:0;s:3:\"100\";i:1;s:3:\"300\";i:2;s:3:\"900\";i:3;s:7:\"regular\";}s:8:\"category\";s:7:\"display\";}s:4:\"Lora\";a:3:{s:5:\"label\";s:4:\"Lora\";s:8:\"variants\";a:4:{i:0;s:3:\"700\";i:1;s:9:\"700italic\";i:2;s:6:\"italic\";i:3;s:7:\"regular\";}s:8:\"category\";s:5:\"serif\";}s:21:\"Love Ya Like A Sister\";a:3:{s:5:\"label\";s:21:\"Love Ya Like A Sister\";s:8:\"variants\";a:1:{i:0;s:7:\"regular\";}s:8:\"category\";s:7:\"display\";}s:17:\"Loved by the King\";a:3:{s:5:\"label\";s:17:\"Loved by the King\";s:8:\"variants\";a:1:{i:0;s:7:\"regular\";}s:8:\"category\";s:11:\"handwriting\";}s:14:\"Lovers Quarrel\";a:3:{s:5:\"label\";s:14:\"Lovers Quarrel\";s:8:\"variants\";a:1:{i:0;s:7:\"regular\";}s:8:\"category\";s:11:\"handwriting\";}s:12:\"Luckiest Guy\";a:3:{s:5:\"label\";s:12:\"Luckiest Guy\";s:8:\"variants\";a:1:{i:0;s:7:\"regular\";}s:8:\"category\";s:7:\"display\";}s:8:\"Lusitana\";a:3:{s:5:\"label\";s:8:\"Lusitana\";s:8:\"variants\";a:2:{i:0;s:3:\"700\";i:1;s:7:\"regular\";}s:8:\"category\";s:5:\"serif\";}s:7:\"Lustria\";a:3:{s:5:\"label\";s:7:\"Lustria\";s:8:\"variants\";a:1:{i:0;s:7:\"regular\";}s:8:\"category\";s:5:\"serif\";}s:9:\"M PLUS 1p\";a:3:{s:5:\"label\";s:9:\"M PLUS 1p\";s:8:\"variants\";a:7:{i:0;s:3:\"100\";i:1;s:3:\"300\";i:2;s:3:\"500\";i:3;s:3:\"700\";i:4;s:3:\"800\";i:5;s:3:\"900\";i:6;s:7:\"regular\";}s:8:\"category\";s:10:\"sans-serif\";}s:17:\"M PLUS Rounded 1c\";a:3:{s:5:\"label\";s:17:\"M PLUS Rounded 1c\";s:8:\"variants\";a:7:{i:0;s:3:\"100\";i:1;s:3:\"300\";i:2;s:3:\"500\";i:3;s:3:\"700\";i:4;s:3:\"800\";i:5;s:3:\"900\";i:6;s:7:\"regular\";}s:8:\"category\";s:10:\"sans-serif\";}s:7:\"Macondo\";a:3:{s:5:\"label\";s:7:\"Macondo\";s:8:\"variants\";a:1:{i:0;s:7:\"regular\";}s:8:\"category\";s:7:\"display\";}s:18:\"Macondo Swash Caps\";a:3:{s:5:\"label\";s:18:\"Macondo Swash Caps\";s:8:\"variants\";a:1:{i:0;s:7:\"regular\";}s:8:\"category\";s:7:\"display\";}s:4:\"Mada\";a:3:{s:5:\"label\";s:4:\"Mada\";s:8:\"variants\";a:7:{i:0;s:3:\"200\";i:1;s:3:\"300\";i:2;s:3:\"500\";i:3;s:3:\"600\";i:4;s:3:\"700\";i:5;s:3:\"900\";i:6;s:7:\"regular\";}s:8:\"category\";s:10:\"sans-serif\";}s:5:\"Magra\";a:3:{s:5:\"label\";s:5:\"Magra\";s:8:\"variants\";a:2:{i:0;s:3:\"700\";i:1;s:7:\"regular\";}s:8:\"category\";s:10:\"sans-serif\";}s:13:\"Maiden Orange\";a:3:{s:5:\"label\";s:13:\"Maiden Orange\";s:8:\"variants\";a:1:{i:0;s:7:\"regular\";}s:8:\"category\";s:7:\"display\";}s:7:\"Maitree\";a:3:{s:5:\"label\";s:7:\"Maitree\";s:8:\"variants\";a:6:{i:0;s:3:\"200\";i:1;s:3:\"300\";i:2;s:3:\"500\";i:3;s:3:\"600\";i:4;s:3:\"700\";i:5;s:7:\"regular\";}s:8:\"category\";s:5:\"serif\";}s:18:\"Major Mono Display\";a:3:{s:5:\"label\";s:18:\"Major Mono Display\";s:8:\"variants\";a:1:{i:0;s:7:\"regular\";}s:8:\"category\";s:9:\"monospace\";}s:4:\"Mako\";a:3:{s:5:\"label\";s:4:\"Mako\";s:8:\"variants\";a:1:{i:0;s:7:\"regular\";}s:8:\"category\";s:10:\"sans-serif\";}s:4:\"Mali\";a:3:{s:5:\"label\";s:4:\"Mali\";s:8:\"variants\";a:12:{i:0;s:3:\"200\";i:1;s:9:\"200italic\";i:2;s:3:\"300\";i:3;s:9:\"300italic\";i:4;s:3:\"500\";i:5;s:9:\"500italic\";i:6;s:3:\"600\";i:7;s:9:\"600italic\";i:8;s:3:\"700\";i:9;s:9:\"700italic\";i:10;s:6:\"italic\";i:11;s:7:\"regular\";}s:8:\"category\";s:11:\"handwriting\";}s:8:\"Mallanna\";a:3:{s:5:\"label\";s:8:\"Mallanna\";s:8:\"variants\";a:1:{i:0;s:7:\"regular\";}s:8:\"category\";s:10:\"sans-serif\";}s:7:\"Mandali\";a:3:{s:5:\"label\";s:7:\"Mandali\";s:8:\"variants\";a:1:{i:0;s:7:\"regular\";}s:8:\"category\";s:10:\"sans-serif\";}s:7:\"Manuale\";a:3:{s:5:\"label\";s:7:\"Manuale\";s:8:\"variants\";a:8:{i:0;s:3:\"500\";i:1;s:9:\"500italic\";i:2;s:3:\"600\";i:3;s:9:\"600italic\";i:4;s:3:\"700\";i:5;s:9:\"700italic\";i:6;s:6:\"italic\";i:7;s:7:\"regular\";}s:8:\"category\";s:5:\"serif\";}s:9:\"Marcellus\";a:3:{s:5:\"label\";s:9:\"Marcellus\";s:8:\"variants\";a:1:{i:0;s:7:\"regular\";}s:8:\"category\";s:5:\"serif\";}s:12:\"Marcellus SC\";a:3:{s:5:\"label\";s:12:\"Marcellus SC\";s:8:\"variants\";a:1:{i:0;s:7:\"regular\";}s:8:\"category\";s:5:\"serif\";}s:12:\"Marck Script\";a:3:{s:5:\"label\";s:12:\"Marck Script\";s:8:\"variants\";a:1:{i:0;s:7:\"regular\";}s:8:\"category\";s:11:\"handwriting\";}s:9:\"Margarine\";a:3:{s:5:\"label\";s:9:\"Margarine\";s:8:\"variants\";a:1:{i:0;s:7:\"regular\";}s:8:\"category\";s:7:\"display\";}s:12:\"Markazi Text\";a:3:{s:5:\"label\";s:12:\"Markazi Text\";s:8:\"variants\";a:4:{i:0;s:3:\"500\";i:1;s:3:\"600\";i:2;s:3:\"700\";i:3;s:7:\"regular\";}s:8:\"category\";s:5:\"serif\";}s:9:\"Marko One\";a:3:{s:5:\"label\";s:9:\"Marko One\";s:8:\"variants\";a:1:{i:0;s:7:\"regular\";}s:8:\"category\";s:5:\"serif\";}s:8:\"Marmelad\";a:3:{s:5:\"label\";s:8:\"Marmelad\";s:8:\"variants\";a:1:{i:0;s:7:\"regular\";}s:8:\"category\";s:10:\"sans-serif\";}s:6:\"Martel\";a:3:{s:5:\"label\";s:6:\"Martel\";s:8:\"variants\";a:7:{i:0;s:3:\"200\";i:1;s:3:\"300\";i:2;s:3:\"600\";i:3;s:3:\"700\";i:4;s:3:\"800\";i:5;s:3:\"900\";i:6;s:7:\"regular\";}s:8:\"category\";s:5:\"serif\";}s:11:\"Martel Sans\";a:3:{s:5:\"label\";s:11:\"Martel Sans\";s:8:\"variants\";a:7:{i:0;s:3:\"200\";i:1;s:3:\"300\";i:2;s:3:\"600\";i:3;s:3:\"700\";i:4;s:3:\"800\";i:5;s:3:\"900\";i:6;s:7:\"regular\";}s:8:\"category\";s:10:\"sans-serif\";}s:6:\"Marvel\";a:3:{s:5:\"label\";s:6:\"Marvel\";s:8:\"variants\";a:4:{i:0;s:3:\"700\";i:1;s:9:\"700italic\";i:2;s:6:\"italic\";i:3;s:7:\"regular\";}s:8:\"category\";s:10:\"sans-serif\";}s:4:\"Mate\";a:3:{s:5:\"label\";s:4:\"Mate\";s:8:\"variants\";a:2:{i:0;s:6:\"italic\";i:1;s:7:\"regular\";}s:8:\"category\";s:5:\"serif\";}s:7:\"Mate SC\";a:3:{s:5:\"label\";s:7:\"Mate SC\";s:8:\"variants\";a:1:{i:0;s:7:\"regular\";}s:8:\"category\";s:5:\"serif\";}s:9:\"Maven Pro\";a:3:{s:5:\"label\";s:9:\"Maven Pro\";s:8:\"variants\";a:4:{i:0;s:3:\"500\";i:1;s:3:\"700\";i:2;s:3:\"900\";i:3;s:7:\"regular\";}s:8:\"category\";s:10:\"sans-serif\";}s:7:\"McLaren\";a:3:{s:5:\"label\";s:7:\"McLaren\";s:8:\"variants\";a:1:{i:0;s:7:\"regular\";}s:8:\"category\";s:7:\"display\";}s:6:\"Meddon\";a:3:{s:5:\"label\";s:6:\"Meddon\";s:8:\"variants\";a:1:{i:0;s:7:\"regular\";}s:8:\"category\";s:11:\"handwriting\";}s:13:\"MedievalSharp\";a:3:{s:5:\"label\";s:13:\"MedievalSharp\";s:8:\"variants\";a:1:{i:0;s:7:\"regular\";}s:8:\"category\";s:7:\"display\";}s:10:\"Medula One\";a:3:{s:5:\"label\";s:10:\"Medula One\";s:8:\"variants\";a:1:{i:0;s:7:\"regular\";}s:8:\"category\";s:7:\"display\";}s:12:\"Meera Inimai\";a:3:{s:5:\"label\";s:12:\"Meera Inimai\";s:8:\"variants\";a:1:{i:0;s:7:\"regular\";}s:8:\"category\";s:10:\"sans-serif\";}s:6:\"Megrim\";a:3:{s:5:\"label\";s:6:\"Megrim\";s:8:\"variants\";a:1:{i:0;s:7:\"regular\";}s:8:\"category\";s:7:\"display\";}s:11:\"Meie Script\";a:3:{s:5:\"label\";s:11:\"Meie Script\";s:8:\"variants\";a:1:{i:0;s:7:\"regular\";}s:8:\"category\";s:11:\"handwriting\";}s:8:\"Merienda\";a:3:{s:5:\"label\";s:8:\"Merienda\";s:8:\"variants\";a:2:{i:0;s:3:\"700\";i:1;s:7:\"regular\";}s:8:\"category\";s:11:\"handwriting\";}s:12:\"Merienda One\";a:3:{s:5:\"label\";s:12:\"Merienda One\";s:8:\"variants\";a:1:{i:0;s:7:\"regular\";}s:8:\"category\";s:11:\"handwriting\";}s:12:\"Merriweather\";a:3:{s:5:\"label\";s:12:\"Merriweather\";s:8:\"variants\";a:8:{i:0;s:3:\"300\";i:1;s:9:\"300italic\";i:2;s:3:\"700\";i:3;s:9:\"700italic\";i:4;s:3:\"900\";i:5;s:9:\"900italic\";i:6;s:6:\"italic\";i:7;s:7:\"regular\";}s:8:\"category\";s:5:\"serif\";}s:17:\"Merriweather Sans\";a:3:{s:5:\"label\";s:17:\"Merriweather Sans\";s:8:\"variants\";a:8:{i:0;s:3:\"300\";i:1;s:9:\"300italic\";i:2;s:3:\"700\";i:3;s:9:\"700italic\";i:4;s:3:\"800\";i:5;s:9:\"800italic\";i:6;s:6:\"italic\";i:7;s:7:\"regular\";}s:8:\"category\";s:10:\"sans-serif\";}s:5:\"Metal\";a:3:{s:5:\"label\";s:5:\"Metal\";s:8:\"variants\";a:1:{i:0;s:7:\"regular\";}s:8:\"category\";s:7:\"display\";}s:11:\"Metal Mania\";a:3:{s:5:\"label\";s:11:\"Metal Mania\";s:8:\"variants\";a:1:{i:0;s:7:\"regular\";}s:8:\"category\";s:7:\"display\";}s:12:\"Metamorphous\";a:3:{s:5:\"label\";s:12:\"Metamorphous\";s:8:\"variants\";a:1:{i:0;s:7:\"regular\";}s:8:\"category\";s:7:\"display\";}s:11:\"Metrophobic\";a:3:{s:5:\"label\";s:11:\"Metrophobic\";s:8:\"variants\";a:1:{i:0;s:7:\"regular\";}s:8:\"category\";s:10:\"sans-serif\";}s:8:\"Michroma\";a:3:{s:5:\"label\";s:8:\"Michroma\";s:8:\"variants\";a:1:{i:0;s:7:\"regular\";}s:8:\"category\";s:10:\"sans-serif\";}s:7:\"Milonga\";a:3:{s:5:\"label\";s:7:\"Milonga\";s:8:\"variants\";a:1:{i:0;s:7:\"regular\";}s:8:\"category\";s:7:\"display\";}s:9:\"Miltonian\";a:3:{s:5:\"label\";s:9:\"Miltonian\";s:8:\"variants\";a:1:{i:0;s:7:\"regular\";}s:8:\"category\";s:7:\"display\";}s:16:\"Miltonian Tattoo\";a:3:{s:5:\"label\";s:16:\"Miltonian Tattoo\";s:8:\"variants\";a:1:{i:0;s:7:\"regular\";}s:8:\"category\";s:7:\"display\";}s:4:\"Mina\";a:3:{s:5:\"label\";s:4:\"Mina\";s:8:\"variants\";a:2:{i:0;s:3:\"700\";i:1;s:7:\"regular\";}s:8:\"category\";s:10:\"sans-serif\";}s:7:\"Miniver\";a:3:{s:5:\"label\";s:7:\"Miniver\";s:8:\"variants\";a:1:{i:0;s:7:\"regular\";}s:8:\"category\";s:7:\"display\";}s:12:\"Miriam Libre\";a:3:{s:5:\"label\";s:12:\"Miriam Libre\";s:8:\"variants\";a:2:{i:0;s:3:\"700\";i:1;s:7:\"regular\";}s:8:\"category\";s:10:\"sans-serif\";}s:5:\"Mirza\";a:3:{s:5:\"label\";s:5:\"Mirza\";s:8:\"variants\";a:4:{i:0;s:3:\"500\";i:1;s:3:\"600\";i:2;s:3:\"700\";i:3;s:7:\"regular\";}s:8:\"category\";s:7:\"display\";}s:14:\"Miss Fajardose\";a:3:{s:5:\"label\";s:14:\"Miss Fajardose\";s:8:\"variants\";a:1:{i:0;s:7:\"regular\";}s:8:\"category\";s:11:\"handwriting\";}s:4:\"Mitr\";a:3:{s:5:\"label\";s:4:\"Mitr\";s:8:\"variants\";a:6:{i:0;s:3:\"200\";i:1;s:3:\"300\";i:2;s:3:\"500\";i:3;s:3:\"600\";i:4;s:3:\"700\";i:5;s:7:\"regular\";}s:8:\"category\";s:10:\"sans-serif\";}s:5:\"Modak\";a:3:{s:5:\"label\";s:5:\"Modak\";s:8:\"variants\";a:1:{i:0;s:7:\"regular\";}s:8:\"category\";s:7:\"display\";}s:14:\"Modern Antiqua\";a:3:{s:5:\"label\";s:14:\"Modern Antiqua\";s:8:\"variants\";a:1:{i:0;s:7:\"regular\";}s:8:\"category\";s:7:\"display\";}s:5:\"Mogra\";a:3:{s:5:\"label\";s:5:\"Mogra\";s:8:\"variants\";a:1:{i:0;s:7:\"regular\";}s:8:\"category\";s:7:\"display\";}s:7:\"Molengo\";a:3:{s:5:\"label\";s:7:\"Molengo\";s:8:\"variants\";a:1:{i:0;s:7:\"regular\";}s:8:\"category\";s:10:\"sans-serif\";}s:5:\"Molle\";a:3:{s:5:\"label\";s:5:\"Molle\";s:8:\"variants\";a:1:{i:0;s:6:\"italic\";}s:8:\"category\";s:11:\"handwriting\";}s:5:\"Monda\";a:3:{s:5:\"label\";s:5:\"Monda\";s:8:\"variants\";a:2:{i:0;s:3:\"700\";i:1;s:7:\"regular\";}s:8:\"category\";s:10:\"sans-serif\";}s:8:\"Monofett\";a:3:{s:5:\"label\";s:8:\"Monofett\";s:8:\"variants\";a:1:{i:0;s:7:\"regular\";}s:8:\"category\";s:7:\"display\";}s:7:\"Monoton\";a:3:{s:5:\"label\";s:7:\"Monoton\";s:8:\"variants\";a:1:{i:0;s:7:\"regular\";}s:8:\"category\";s:7:\"display\";}s:20:\"Monsieur La Doulaise\";a:3:{s:5:\"label\";s:20:\"Monsieur La Doulaise\";s:8:\"variants\";a:1:{i:0;s:7:\"regular\";}s:8:\"category\";s:11:\"handwriting\";}s:7:\"Montaga\";a:3:{s:5:\"label\";s:7:\"Montaga\";s:8:\"variants\";a:1:{i:0;s:7:\"regular\";}s:8:\"category\";s:5:\"serif\";}s:6:\"Montez\";a:3:{s:5:\"label\";s:6:\"Montez\";s:8:\"variants\";a:1:{i:0;s:7:\"regular\";}s:8:\"category\";s:11:\"handwriting\";}s:10:\"Montserrat\";a:3:{s:5:\"label\";s:10:\"Montserrat\";s:8:\"variants\";a:18:{i:0;s:3:\"100\";i:1;s:9:\"100italic\";i:2;s:3:\"200\";i:3;s:9:\"200italic\";i:4;s:3:\"300\";i:5;s:9:\"300italic\";i:6;s:3:\"500\";i:7;s:9:\"500italic\";i:8;s:3:\"600\";i:9;s:9:\"600italic\";i:10;s:3:\"700\";i:11;s:9:\"700italic\";i:12;s:3:\"800\";i:13;s:9:\"800italic\";i:14;s:3:\"900\";i:15;s:9:\"900italic\";i:16;s:6:\"italic\";i:17;s:7:\"regular\";}s:8:\"category\";s:10:\"sans-serif\";}s:21:\"Montserrat Alternates\";a:3:{s:5:\"label\";s:21:\"Montserrat Alternates\";s:8:\"variants\";a:18:{i:0;s:3:\"100\";i:1;s:9:\"100italic\";i:2;s:3:\"200\";i:3;s:9:\"200italic\";i:4;s:3:\"300\";i:5;s:9:\"300italic\";i:6;s:3:\"500\";i:7;s:9:\"500italic\";i:8;s:3:\"600\";i:9;s:9:\"600italic\";i:10;s:3:\"700\";i:11;s:9:\"700italic\";i:12;s:3:\"800\";i:13;s:9:\"800italic\";i:14;s:3:\"900\";i:15;s:9:\"900italic\";i:16;s:6:\"italic\";i:17;s:7:\"regular\";}s:8:\"category\";s:10:\"sans-serif\";}s:20:\"Montserrat Subrayada\";a:3:{s:5:\"label\";s:20:\"Montserrat Subrayada\";s:8:\"variants\";a:2:{i:0;s:3:\"700\";i:1;s:7:\"regular\";}s:8:\"category\";s:10:\"sans-serif\";}s:4:\"Moul\";a:3:{s:5:\"label\";s:4:\"Moul\";s:8:\"variants\";a:1:{i:0;s:7:\"regular\";}s:8:\"category\";s:7:\"display\";}s:8:\"Moulpali\";a:3:{s:5:\"label\";s:8:\"Moulpali\";s:8:\"variants\";a:1:{i:0;s:7:\"regular\";}s:8:\"category\";s:7:\"display\";}s:22:\"Mountains of Christmas\";a:3:{s:5:\"label\";s:22:\"Mountains of Christmas\";s:8:\"variants\";a:2:{i:0;s:3:\"700\";i:1;s:7:\"regular\";}s:8:\"category\";s:7:\"display\";}s:13:\"Mouse Memoirs\";a:3:{s:5:\"label\";s:13:\"Mouse Memoirs\";s:8:\"variants\";a:1:{i:0;s:7:\"regular\";}s:8:\"category\";s:10:\"sans-serif\";}s:10:\"Mr Bedfort\";a:3:{s:5:\"label\";s:10:\"Mr Bedfort\";s:8:\"variants\";a:1:{i:0;s:7:\"regular\";}s:8:\"category\";s:11:\"handwriting\";}s:8:\"Mr Dafoe\";a:3:{s:5:\"label\";s:8:\"Mr Dafoe\";s:8:\"variants\";a:1:{i:0;s:7:\"regular\";}s:8:\"category\";s:11:\"handwriting\";}s:14:\"Mr De Haviland\";a:3:{s:5:\"label\";s:14:\"Mr De Haviland\";s:8:\"variants\";a:1:{i:0;s:7:\"regular\";}s:8:\"category\";s:11:\"handwriting\";}s:19:\"Mrs Saint Delafield\";a:3:{s:5:\"label\";s:19:\"Mrs Saint Delafield\";s:8:\"variants\";a:1:{i:0;s:7:\"regular\";}s:8:\"category\";s:11:\"handwriting\";}s:13:\"Mrs Sheppards\";a:3:{s:5:\"label\";s:13:\"Mrs Sheppards\";s:8:\"variants\";a:1:{i:0;s:7:\"regular\";}s:8:\"category\";s:11:\"handwriting\";}s:5:\"Mukta\";a:3:{s:5:\"label\";s:5:\"Mukta\";s:8:\"variants\";a:7:{i:0;s:3:\"200\";i:1;s:3:\"300\";i:2;s:3:\"500\";i:3;s:3:\"600\";i:4;s:3:\"700\";i:5;s:3:\"800\";i:6;s:7:\"regular\";}s:8:\"category\";s:10:\"sans-serif\";}s:11:\"Mukta Mahee\";a:3:{s:5:\"label\";s:11:\"Mukta Mahee\";s:8:\"variants\";a:7:{i:0;s:3:\"200\";i:1;s:3:\"300\";i:2;s:3:\"500\";i:3;s:3:\"600\";i:4;s:3:\"700\";i:5;s:3:\"800\";i:6;s:7:\"regular\";}s:8:\"category\";s:10:\"sans-serif\";}s:11:\"Mukta Malar\";a:3:{s:5:\"label\";s:11:\"Mukta Malar\";s:8:\"variants\";a:7:{i:0;s:3:\"200\";i:1;s:3:\"300\";i:2;s:3:\"500\";i:3;s:3:\"600\";i:4;s:3:\"700\";i:5;s:3:\"800\";i:6;s:7:\"regular\";}s:8:\"category\";s:10:\"sans-serif\";}s:11:\"Mukta Vaani\";a:3:{s:5:\"label\";s:11:\"Mukta Vaani\";s:8:\"variants\";a:7:{i:0;s:3:\"200\";i:1;s:3:\"300\";i:2;s:3:\"500\";i:3;s:3:\"600\";i:4;s:3:\"700\";i:5;s:3:\"800\";i:6;s:7:\"regular\";}s:8:\"category\";s:10:\"sans-serif\";}s:4:\"Muli\";a:3:{s:5:\"label\";s:4:\"Muli\";s:8:\"variants\";a:14:{i:0;s:3:\"200\";i:1;s:9:\"200italic\";i:2;s:3:\"300\";i:3;s:9:\"300italic\";i:4;s:3:\"600\";i:5;s:9:\"600italic\";i:6;s:3:\"700\";i:7;s:9:\"700italic\";i:8;s:3:\"800\";i:9;s:9:\"800italic\";i:10;s:3:\"900\";i:11;s:9:\"900italic\";i:12;s:6:\"italic\";i:13;s:7:\"regular\";}s:8:\"category\";s:10:\"sans-serif\";}s:13:\"Mystery Quest\";a:3:{s:5:\"label\";s:13:\"Mystery Quest\";s:8:\"variants\";a:1:{i:0;s:7:\"regular\";}s:8:\"category\";s:7:\"display\";}s:3:\"NTR\";a:3:{s:5:\"label\";s:3:\"NTR\";s:8:\"variants\";a:1:{i:0;s:7:\"regular\";}s:8:\"category\";s:10:\"sans-serif\";}s:18:\"Nanum Brush Script\";a:3:{s:5:\"label\";s:18:\"Nanum Brush Script\";s:8:\"variants\";a:1:{i:0;s:7:\"regular\";}s:8:\"category\";s:11:\"handwriting\";}s:12:\"Nanum Gothic\";a:3:{s:5:\"label\";s:12:\"Nanum Gothic\";s:8:\"variants\";a:3:{i:0;s:3:\"700\";i:1;s:3:\"800\";i:2;s:7:\"regular\";}s:8:\"category\";s:10:\"sans-serif\";}s:19:\"Nanum Gothic Coding\";a:3:{s:5:\"label\";s:19:\"Nanum Gothic Coding\";s:8:\"variants\";a:2:{i:0;s:3:\"700\";i:1;s:7:\"regular\";}s:8:\"category\";s:9:\"monospace\";}s:14:\"Nanum Myeongjo\";a:3:{s:5:\"label\";s:14:\"Nanum Myeongjo\";s:8:\"variants\";a:3:{i:0;s:3:\"700\";i:1;s:3:\"800\";i:2;s:7:\"regular\";}s:8:\"category\";s:5:\"serif\";}s:16:\"Nanum Pen Script\";a:3:{s:5:\"label\";s:16:\"Nanum Pen Script\";s:8:\"variants\";a:1:{i:0;s:7:\"regular\";}s:8:\"category\";s:11:\"handwriting\";}s:6:\"Neucha\";a:3:{s:5:\"label\";s:6:\"Neucha\";s:8:\"variants\";a:1:{i:0;s:7:\"regular\";}s:8:\"category\";s:11:\"handwriting\";}s:6:\"Neuton\";a:3:{s:5:\"label\";s:6:\"Neuton\";s:8:\"variants\";a:6:{i:0;s:3:\"200\";i:1;s:3:\"300\";i:2;s:3:\"700\";i:3;s:3:\"800\";i:4;s:6:\"italic\";i:5;s:7:\"regular\";}s:8:\"category\";s:5:\"serif\";}s:10:\"New Rocker\";a:3:{s:5:\"label\";s:10:\"New Rocker\";s:8:\"variants\";a:1:{i:0;s:7:\"regular\";}s:8:\"category\";s:7:\"display\";}s:10:\"News Cycle\";a:3:{s:5:\"label\";s:10:\"News Cycle\";s:8:\"variants\";a:2:{i:0;s:3:\"700\";i:1;s:7:\"regular\";}s:8:\"category\";s:10:\"sans-serif\";}s:7:\"Niconne\";a:3:{s:5:\"label\";s:7:\"Niconne\";s:8:\"variants\";a:1:{i:0;s:7:\"regular\";}s:8:\"category\";s:11:\"handwriting\";}s:7:\"Niramit\";a:3:{s:5:\"label\";s:7:\"Niramit\";s:8:\"variants\";a:12:{i:0;s:3:\"200\";i:1;s:9:\"200italic\";i:2;s:3:\"300\";i:3;s:9:\"300italic\";i:4;s:3:\"500\";i:5;s:9:\"500italic\";i:6;s:3:\"600\";i:7;s:9:\"600italic\";i:8;s:3:\"700\";i:9;s:9:\"700italic\";i:10;s:6:\"italic\";i:11;s:7:\"regular\";}s:8:\"category\";s:10:\"sans-serif\";}s:9:\"Nixie One\";a:3:{s:5:\"label\";s:9:\"Nixie One\";s:8:\"variants\";a:1:{i:0;s:7:\"regular\";}s:8:\"category\";s:7:\"display\";}s:6:\"Nobile\";a:3:{s:5:\"label\";s:6:\"Nobile\";s:8:\"variants\";a:6:{i:0;s:3:\"500\";i:1;s:9:\"500italic\";i:2;s:3:\"700\";i:3;s:9:\"700italic\";i:4;s:6:\"italic\";i:5;s:7:\"regular\";}s:8:\"category\";s:10:\"sans-serif\";}s:6:\"Nokora\";a:3:{s:5:\"label\";s:6:\"Nokora\";s:8:\"variants\";a:2:{i:0;s:3:\"700\";i:1;s:7:\"regular\";}s:8:\"category\";s:5:\"serif\";}s:7:\"Norican\";a:3:{s:5:\"label\";s:7:\"Norican\";s:8:\"variants\";a:1:{i:0;s:7:\"regular\";}s:8:\"category\";s:11:\"handwriting\";}s:7:\"Nosifer\";a:3:{s:5:\"label\";s:7:\"Nosifer\";s:8:\"variants\";a:1:{i:0;s:7:\"regular\";}s:8:\"category\";s:7:\"display\";}s:7:\"Notable\";a:3:{s:5:\"label\";s:7:\"Notable\";s:8:\"variants\";a:1:{i:0;s:7:\"regular\";}s:8:\"category\";s:10:\"sans-serif\";}s:20:\"Nothing You Could Do\";a:3:{s:5:\"label\";s:20:\"Nothing You Could Do\";s:8:\"variants\";a:1:{i:0;s:7:\"regular\";}s:8:\"category\";s:11:\"handwriting\";}s:12:\"Noticia Text\";a:3:{s:5:\"label\";s:12:\"Noticia Text\";s:8:\"variants\";a:4:{i:0;s:3:\"700\";i:1;s:9:\"700italic\";i:2;s:6:\"italic\";i:3;s:7:\"regular\";}s:8:\"category\";s:5:\"serif\";}s:9:\"Noto Sans\";a:3:{s:5:\"label\";s:9:\"Noto Sans\";s:8:\"variants\";a:4:{i:0;s:3:\"700\";i:1;s:9:\"700italic\";i:2;s:6:\"italic\";i:3;s:7:\"regular\";}s:8:\"category\";s:10:\"sans-serif\";}s:12:\"Noto Sans JP\";a:3:{s:5:\"label\";s:12:\"Noto Sans JP\";s:8:\"variants\";a:6:{i:0;s:3:\"100\";i:1;s:3:\"300\";i:2;s:3:\"500\";i:3;s:3:\"700\";i:4;s:3:\"900\";i:5;s:7:\"regular\";}s:8:\"category\";s:10:\"sans-serif\";}s:12:\"Noto Sans KR\";a:3:{s:5:\"label\";s:12:\"Noto Sans KR\";s:8:\"variants\";a:6:{i:0;s:3:\"100\";i:1;s:3:\"300\";i:2;s:3:\"500\";i:3;s:3:\"700\";i:4;s:3:\"900\";i:5;s:7:\"regular\";}s:8:\"category\";s:10:\"sans-serif\";}s:12:\"Noto Sans SC\";a:3:{s:5:\"label\";s:12:\"Noto Sans SC\";s:8:\"variants\";a:6:{i:0;s:3:\"100\";i:1;s:3:\"300\";i:2;s:3:\"500\";i:3;s:3:\"700\";i:4;s:3:\"900\";i:5;s:7:\"regular\";}s:8:\"category\";s:10:\"sans-serif\";}s:12:\"Noto Sans TC\";a:3:{s:5:\"label\";s:12:\"Noto Sans TC\";s:8:\"variants\";a:6:{i:0;s:3:\"100\";i:1;s:3:\"300\";i:2;s:3:\"500\";i:3;s:3:\"700\";i:4;s:3:\"900\";i:5;s:7:\"regular\";}s:8:\"category\";s:10:\"sans-serif\";}s:10:\"Noto Serif\";a:3:{s:5:\"label\";s:10:\"Noto Serif\";s:8:\"variants\";a:4:{i:0;s:3:\"700\";i:1;s:9:\"700italic\";i:2;s:6:\"italic\";i:3;s:7:\"regular\";}s:8:\"category\";s:5:\"serif\";}s:13:\"Noto Serif JP\";a:3:{s:5:\"label\";s:13:\"Noto Serif JP\";s:8:\"variants\";a:7:{i:0;s:3:\"200\";i:1;s:3:\"300\";i:2;s:3:\"500\";i:3;s:3:\"600\";i:4;s:3:\"700\";i:5;s:3:\"900\";i:6;s:7:\"regular\";}s:8:\"category\";s:5:\"serif\";}s:13:\"Noto Serif KR\";a:3:{s:5:\"label\";s:13:\"Noto Serif KR\";s:8:\"variants\";a:7:{i:0;s:3:\"200\";i:1;s:3:\"300\";i:2;s:3:\"500\";i:3;s:3:\"600\";i:4;s:3:\"700\";i:5;s:3:\"900\";i:6;s:7:\"regular\";}s:8:\"category\";s:5:\"serif\";}s:13:\"Noto Serif SC\";a:3:{s:5:\"label\";s:13:\"Noto Serif SC\";s:8:\"variants\";a:7:{i:0;s:3:\"200\";i:1;s:3:\"300\";i:2;s:3:\"500\";i:3;s:3:\"600\";i:4;s:3:\"700\";i:5;s:3:\"900\";i:6;s:7:\"regular\";}s:8:\"category\";s:5:\"serif\";}s:13:\"Noto Serif TC\";a:3:{s:5:\"label\";s:13:\"Noto Serif TC\";s:8:\"variants\";a:7:{i:0;s:3:\"200\";i:1;s:3:\"300\";i:2;s:3:\"500\";i:3;s:3:\"600\";i:4;s:3:\"700\";i:5;s:3:\"900\";i:6;s:7:\"regular\";}s:8:\"category\";s:5:\"serif\";}s:8:\"Nova Cut\";a:3:{s:5:\"label\";s:8:\"Nova Cut\";s:8:\"variants\";a:1:{i:0;s:7:\"regular\";}s:8:\"category\";s:7:\"display\";}s:9:\"Nova Flat\";a:3:{s:5:\"label\";s:9:\"Nova Flat\";s:8:\"variants\";a:1:{i:0;s:7:\"regular\";}s:8:\"category\";s:7:\"display\";}s:9:\"Nova Mono\";a:3:{s:5:\"label\";s:9:\"Nova Mono\";s:8:\"variants\";a:1:{i:0;s:7:\"regular\";}s:8:\"category\";s:9:\"monospace\";}s:9:\"Nova Oval\";a:3:{s:5:\"label\";s:9:\"Nova Oval\";s:8:\"variants\";a:1:{i:0;s:7:\"regular\";}s:8:\"category\";s:7:\"display\";}s:10:\"Nova Round\";a:3:{s:5:\"label\";s:10:\"Nova Round\";s:8:\"variants\";a:1:{i:0;s:7:\"regular\";}s:8:\"category\";s:7:\"display\";}s:11:\"Nova Script\";a:3:{s:5:\"label\";s:11:\"Nova Script\";s:8:\"variants\";a:1:{i:0;s:7:\"regular\";}s:8:\"category\";s:7:\"display\";}s:9:\"Nova Slim\";a:3:{s:5:\"label\";s:9:\"Nova Slim\";s:8:\"variants\";a:1:{i:0;s:7:\"regular\";}s:8:\"category\";s:7:\"display\";}s:11:\"Nova Square\";a:3:{s:5:\"label\";s:11:\"Nova Square\";s:8:\"variants\";a:1:{i:0;s:7:\"regular\";}s:8:\"category\";s:7:\"display\";}s:6:\"Numans\";a:3:{s:5:\"label\";s:6:\"Numans\";s:8:\"variants\";a:1:{i:0;s:7:\"regular\";}s:8:\"category\";s:10:\"sans-serif\";}s:6:\"Nunito\";a:3:{s:5:\"label\";s:6:\"Nunito\";s:8:\"variants\";a:14:{i:0;s:3:\"200\";i:1;s:9:\"200italic\";i:2;s:3:\"300\";i:3;s:9:\"300italic\";i:4;s:3:\"600\";i:5;s:9:\"600italic\";i:6;s:3:\"700\";i:7;s:9:\"700italic\";i:8;s:3:\"800\";i:9;s:9:\"800italic\";i:10;s:3:\"900\";i:11;s:9:\"900italic\";i:12;s:6:\"italic\";i:13;s:7:\"regular\";}s:8:\"category\";s:10:\"sans-serif\";}s:11:\"Nunito Sans\";a:3:{s:5:\"label\";s:11:\"Nunito Sans\";s:8:\"variants\";a:14:{i:0;s:3:\"200\";i:1;s:9:\"200italic\";i:2;s:3:\"300\";i:3;s:9:\"300italic\";i:4;s:3:\"600\";i:5;s:9:\"600italic\";i:6;s:3:\"700\";i:7;s:9:\"700italic\";i:8;s:3:\"800\";i:9;s:9:\"800italic\";i:10;s:3:\"900\";i:11;s:9:\"900italic\";i:12;s:6:\"italic\";i:13;s:7:\"regular\";}s:8:\"category\";s:10:\"sans-serif\";}s:14:\"Odor Mean Chey\";a:3:{s:5:\"label\";s:14:\"Odor Mean Chey\";s:8:\"variants\";a:1:{i:0;s:7:\"regular\";}s:8:\"category\";s:7:\"display\";}s:7:\"Offside\";a:3:{s:5:\"label\";s:7:\"Offside\";s:8:\"variants\";a:1:{i:0;s:7:\"regular\";}s:8:\"category\";s:7:\"display\";}s:15:\"Old Standard TT\";a:3:{s:5:\"label\";s:15:\"Old Standard TT\";s:8:\"variants\";a:3:{i:0;s:3:\"700\";i:1;s:6:\"italic\";i:2;s:7:\"regular\";}s:8:\"category\";s:5:\"serif\";}s:9:\"Oldenburg\";a:3:{s:5:\"label\";s:9:\"Oldenburg\";s:8:\"variants\";a:1:{i:0;s:7:\"regular\";}s:8:\"category\";s:7:\"display\";}s:11:\"Oleo Script\";a:3:{s:5:\"label\";s:11:\"Oleo Script\";s:8:\"variants\";a:2:{i:0;s:3:\"700\";i:1;s:7:\"regular\";}s:8:\"category\";s:7:\"display\";}s:22:\"Oleo Script Swash Caps\";a:3:{s:5:\"label\";s:22:\"Oleo Script Swash Caps\";s:8:\"variants\";a:2:{i:0;s:3:\"700\";i:1;s:7:\"regular\";}s:8:\"category\";s:7:\"display\";}s:9:\"Open Sans\";a:3:{s:5:\"label\";s:9:\"Open Sans\";s:8:\"variants\";a:10:{i:0;s:3:\"300\";i:1;s:9:\"300italic\";i:2;s:3:\"600\";i:3;s:9:\"600italic\";i:4;s:3:\"700\";i:5;s:9:\"700italic\";i:6;s:3:\"800\";i:7;s:9:\"800italic\";i:8;s:6:\"italic\";i:9;s:7:\"regular\";}s:8:\"category\";s:10:\"sans-serif\";}s:19:\"Open Sans Condensed\";a:3:{s:5:\"label\";s:19:\"Open Sans Condensed\";s:8:\"variants\";a:3:{i:0;s:3:\"300\";i:1;s:9:\"300italic\";i:2;s:3:\"700\";}s:8:\"category\";s:10:\"sans-serif\";}s:11:\"Oranienbaum\";a:3:{s:5:\"label\";s:11:\"Oranienbaum\";s:8:\"variants\";a:1:{i:0;s:7:\"regular\";}s:8:\"category\";s:5:\"serif\";}s:8:\"Orbitron\";a:3:{s:5:\"label\";s:8:\"Orbitron\";s:8:\"variants\";a:4:{i:0;s:3:\"500\";i:1;s:3:\"700\";i:2;s:3:\"900\";i:3;s:7:\"regular\";}s:8:\"category\";s:10:\"sans-serif\";}s:7:\"Oregano\";a:3:{s:5:\"label\";s:7:\"Oregano\";s:8:\"variants\";a:2:{i:0;s:6:\"italic\";i:1;s:7:\"regular\";}s:8:\"category\";s:7:\"display\";}s:7:\"Orienta\";a:3:{s:5:\"label\";s:7:\"Orienta\";s:8:\"variants\";a:1:{i:0;s:7:\"regular\";}s:8:\"category\";s:10:\"sans-serif\";}s:15:\"Original Surfer\";a:3:{s:5:\"label\";s:15:\"Original Surfer\";s:8:\"variants\";a:1:{i:0;s:7:\"regular\";}s:8:\"category\";s:7:\"display\";}s:6:\"Oswald\";a:3:{s:5:\"label\";s:6:\"Oswald\";s:8:\"variants\";a:6:{i:0;s:3:\"200\";i:1;s:3:\"300\";i:2;s:3:\"500\";i:3;s:3:\"600\";i:4;s:3:\"700\";i:5;s:7:\"regular\";}s:8:\"category\";s:10:\"sans-serif\";}s:16:\"Over the Rainbow\";a:3:{s:5:\"label\";s:16:\"Over the Rainbow\";s:8:\"variants\";a:1:{i:0;s:7:\"regular\";}s:8:\"category\";s:11:\"handwriting\";}s:8:\"Overlock\";a:3:{s:5:\"label\";s:8:\"Overlock\";s:8:\"variants\";a:6:{i:0;s:3:\"700\";i:1;s:9:\"700italic\";i:2;s:3:\"900\";i:3;s:9:\"900italic\";i:4;s:6:\"italic\";i:5;s:7:\"regular\";}s:8:\"category\";s:7:\"display\";}s:11:\"Overlock SC\";a:3:{s:5:\"label\";s:11:\"Overlock SC\";s:8:\"variants\";a:1:{i:0;s:7:\"regular\";}s:8:\"category\";s:7:\"display\";}s:8:\"Overpass\";a:3:{s:5:\"label\";s:8:\"Overpass\";s:8:\"variants\";a:16:{i:0;s:3:\"100\";i:1;s:9:\"100italic\";i:2;s:3:\"200\";i:3;s:9:\"200italic\";i:4;s:3:\"300\";i:5;s:9:\"300italic\";i:6;s:3:\"600\";i:7;s:9:\"600italic\";i:8;s:3:\"700\";i:9;s:9:\"700italic\";i:10;s:3:\"800\";i:11;s:9:\"800italic\";i:12;s:3:\"900\";i:13;s:9:\"900italic\";i:14;s:6:\"italic\";i:15;s:7:\"regular\";}s:8:\"category\";s:10:\"sans-serif\";}s:13:\"Overpass Mono\";a:3:{s:5:\"label\";s:13:\"Overpass Mono\";s:8:\"variants\";a:4:{i:0;s:3:\"300\";i:1;s:3:\"600\";i:2;s:3:\"700\";i:3;s:7:\"regular\";}s:8:\"category\";s:9:\"monospace\";}s:3:\"Ovo\";a:3:{s:5:\"label\";s:3:\"Ovo\";s:8:\"variants\";a:1:{i:0;s:7:\"regular\";}s:8:\"category\";s:5:\"serif\";}s:6:\"Oxygen\";a:3:{s:5:\"label\";s:6:\"Oxygen\";s:8:\"variants\";a:3:{i:0;s:3:\"300\";i:1;s:3:\"700\";i:2;s:7:\"regular\";}s:8:\"category\";s:10:\"sans-serif\";}s:11:\"Oxygen Mono\";a:3:{s:5:\"label\";s:11:\"Oxygen Mono\";s:8:\"variants\";a:1:{i:0;s:7:\"regular\";}s:8:\"category\";s:9:\"monospace\";}s:7:\"PT Mono\";a:3:{s:5:\"label\";s:7:\"PT Mono\";s:8:\"variants\";a:1:{i:0;s:7:\"regular\";}s:8:\"category\";s:9:\"monospace\";}s:7:\"PT Sans\";a:3:{s:5:\"label\";s:7:\"PT Sans\";s:8:\"variants\";a:4:{i:0;s:3:\"700\";i:1;s:9:\"700italic\";i:2;s:6:\"italic\";i:3;s:7:\"regular\";}s:8:\"category\";s:10:\"sans-serif\";}s:15:\"PT Sans Caption\";a:3:{s:5:\"label\";s:15:\"PT Sans Caption\";s:8:\"variants\";a:2:{i:0;s:3:\"700\";i:1;s:7:\"regular\";}s:8:\"category\";s:10:\"sans-serif\";}s:14:\"PT Sans Narrow\";a:3:{s:5:\"label\";s:14:\"PT Sans Narrow\";s:8:\"variants\";a:2:{i:0;s:3:\"700\";i:1;s:7:\"regular\";}s:8:\"category\";s:10:\"sans-serif\";}s:8:\"PT Serif\";a:3:{s:5:\"label\";s:8:\"PT Serif\";s:8:\"variants\";a:4:{i:0;s:3:\"700\";i:1;s:9:\"700italic\";i:2;s:6:\"italic\";i:3;s:7:\"regular\";}s:8:\"category\";s:5:\"serif\";}s:16:\"PT Serif Caption\";a:3:{s:5:\"label\";s:16:\"PT Serif Caption\";s:8:\"variants\";a:2:{i:0;s:6:\"italic\";i:1;s:7:\"regular\";}s:8:\"category\";s:5:\"serif\";}s:8:\"Pacifico\";a:3:{s:5:\"label\";s:8:\"Pacifico\";s:8:\"variants\";a:1:{i:0;s:7:\"regular\";}s:8:\"category\";s:11:\"handwriting\";}s:6:\"Padauk\";a:3:{s:5:\"label\";s:6:\"Padauk\";s:8:\"variants\";a:2:{i:0;s:3:\"700\";i:1;s:7:\"regular\";}s:8:\"category\";s:10:\"sans-serif\";}s:9:\"Palanquin\";a:3:{s:5:\"label\";s:9:\"Palanquin\";s:8:\"variants\";a:7:{i:0;s:3:\"100\";i:1;s:3:\"200\";i:2;s:3:\"300\";i:3;s:3:\"500\";i:4;s:3:\"600\";i:5;s:3:\"700\";i:6;s:7:\"regular\";}s:8:\"category\";s:10:\"sans-serif\";}s:14:\"Palanquin Dark\";a:3:{s:5:\"label\";s:14:\"Palanquin Dark\";s:8:\"variants\";a:4:{i:0;s:3:\"500\";i:1;s:3:\"600\";i:2;s:3:\"700\";i:3;s:7:\"regular\";}s:8:\"category\";s:10:\"sans-serif\";}s:8:\"Pangolin\";a:3:{s:5:\"label\";s:8:\"Pangolin\";s:8:\"variants\";a:1:{i:0;s:7:\"regular\";}s:8:\"category\";s:11:\"handwriting\";}s:7:\"Paprika\";a:3:{s:5:\"label\";s:7:\"Paprika\";s:8:\"variants\";a:1:{i:0;s:7:\"regular\";}s:8:\"category\";s:7:\"display\";}s:10:\"Parisienne\";a:3:{s:5:\"label\";s:10:\"Parisienne\";s:8:\"variants\";a:1:{i:0;s:7:\"regular\";}s:8:\"category\";s:11:\"handwriting\";}s:11:\"Passero One\";a:3:{s:5:\"label\";s:11:\"Passero One\";s:8:\"variants\";a:1:{i:0;s:7:\"regular\";}s:8:\"category\";s:7:\"display\";}s:11:\"Passion One\";a:3:{s:5:\"label\";s:11:\"Passion One\";s:8:\"variants\";a:3:{i:0;s:3:\"700\";i:1;s:3:\"900\";i:2;s:7:\"regular\";}s:8:\"category\";s:7:\"display\";}s:18:\"Pathway Gothic One\";a:3:{s:5:\"label\";s:18:\"Pathway Gothic One\";s:8:\"variants\";a:1:{i:0;s:7:\"regular\";}s:8:\"category\";s:10:\"sans-serif\";}s:12:\"Patrick Hand\";a:3:{s:5:\"label\";s:12:\"Patrick Hand\";s:8:\"variants\";a:1:{i:0;s:7:\"regular\";}s:8:\"category\";s:11:\"handwriting\";}s:15:\"Patrick Hand SC\";a:3:{s:5:\"label\";s:15:\"Patrick Hand SC\";s:8:\"variants\";a:1:{i:0;s:7:\"regular\";}s:8:\"category\";s:11:\"handwriting\";}s:7:\"Pattaya\";a:3:{s:5:\"label\";s:7:\"Pattaya\";s:8:\"variants\";a:1:{i:0;s:7:\"regular\";}s:8:\"category\";s:10:\"sans-serif\";}s:9:\"Patua One\";a:3:{s:5:\"label\";s:9:\"Patua One\";s:8:\"variants\";a:1:{i:0;s:7:\"regular\";}s:8:\"category\";s:7:\"display\";}s:7:\"Pavanam\";a:3:{s:5:\"label\";s:7:\"Pavanam\";s:8:\"variants\";a:1:{i:0;s:7:\"regular\";}s:8:\"category\";s:10:\"sans-serif\";}s:11:\"Paytone One\";a:3:{s:5:\"label\";s:11:\"Paytone One\";s:8:\"variants\";a:1:{i:0;s:7:\"regular\";}s:8:\"category\";s:10:\"sans-serif\";}s:7:\"Peddana\";a:3:{s:5:\"label\";s:7:\"Peddana\";s:8:\"variants\";a:1:{i:0;s:7:\"regular\";}s:8:\"category\";s:5:\"serif\";}s:7:\"Peralta\";a:3:{s:5:\"label\";s:7:\"Peralta\";s:8:\"variants\";a:1:{i:0;s:7:\"regular\";}s:8:\"category\";s:7:\"display\";}s:16:\"Permanent Marker\";a:3:{s:5:\"label\";s:16:\"Permanent Marker\";s:8:\"variants\";a:1:{i:0;s:7:\"regular\";}s:8:\"category\";s:11:\"handwriting\";}s:19:\"Petit Formal Script\";a:3:{s:5:\"label\";s:19:\"Petit Formal Script\";s:8:\"variants\";a:1:{i:0;s:7:\"regular\";}s:8:\"category\";s:11:\"handwriting\";}s:7:\"Petrona\";a:3:{s:5:\"label\";s:7:\"Petrona\";s:8:\"variants\";a:1:{i:0;s:7:\"regular\";}s:8:\"category\";s:5:\"serif\";}s:11:\"Philosopher\";a:3:{s:5:\"label\";s:11:\"Philosopher\";s:8:\"variants\";a:4:{i:0;s:3:\"700\";i:1;s:9:\"700italic\";i:2;s:6:\"italic\";i:3;s:7:\"regular\";}s:8:\"category\";s:10:\"sans-serif\";}s:6:\"Piedra\";a:3:{s:5:\"label\";s:6:\"Piedra\";s:8:\"variants\";a:1:{i:0;s:7:\"regular\";}s:8:\"category\";s:7:\"display\";}s:13:\"Pinyon Script\";a:3:{s:5:\"label\";s:13:\"Pinyon Script\";s:8:\"variants\";a:1:{i:0;s:7:\"regular\";}s:8:\"category\";s:11:\"handwriting\";}s:10:\"Pirata One\";a:3:{s:5:\"label\";s:10:\"Pirata One\";s:8:\"variants\";a:1:{i:0;s:7:\"regular\";}s:8:\"category\";s:7:\"display\";}s:7:\"Plaster\";a:3:{s:5:\"label\";s:7:\"Plaster\";s:8:\"variants\";a:1:{i:0;s:7:\"regular\";}s:8:\"category\";s:7:\"display\";}s:4:\"Play\";a:3:{s:5:\"label\";s:4:\"Play\";s:8:\"variants\";a:2:{i:0;s:3:\"700\";i:1;s:7:\"regular\";}s:8:\"category\";s:10:\"sans-serif\";}s:8:\"Playball\";a:3:{s:5:\"label\";s:8:\"Playball\";s:8:\"variants\";a:1:{i:0;s:7:\"regular\";}s:8:\"category\";s:7:\"display\";}s:16:\"Playfair Display\";a:3:{s:5:\"label\";s:16:\"Playfair Display\";s:8:\"variants\";a:6:{i:0;s:3:\"700\";i:1;s:9:\"700italic\";i:2;s:3:\"900\";i:3;s:9:\"900italic\";i:4;s:6:\"italic\";i:5;s:7:\"regular\";}s:8:\"category\";s:5:\"serif\";}s:19:\"Playfair Display SC\";a:3:{s:5:\"label\";s:19:\"Playfair Display SC\";s:8:\"variants\";a:6:{i:0;s:3:\"700\";i:1;s:9:\"700italic\";i:2;s:3:\"900\";i:3;s:9:\"900italic\";i:4;s:6:\"italic\";i:5;s:7:\"regular\";}s:8:\"category\";s:5:\"serif\";}s:7:\"Podkova\";a:3:{s:5:\"label\";s:7:\"Podkova\";s:8:\"variants\";a:5:{i:0;s:3:\"500\";i:1;s:3:\"600\";i:2;s:3:\"700\";i:3;s:3:\"800\";i:4;s:7:\"regular\";}s:8:\"category\";s:5:\"serif\";}s:10:\"Poiret One\";a:3:{s:5:\"label\";s:10:\"Poiret One\";s:8:\"variants\";a:1:{i:0;s:7:\"regular\";}s:8:\"category\";s:7:\"display\";}s:10:\"Poller One\";a:3:{s:5:\"label\";s:10:\"Poller One\";s:8:\"variants\";a:1:{i:0;s:7:\"regular\";}s:8:\"category\";s:7:\"display\";}s:4:\"Poly\";a:3:{s:5:\"label\";s:4:\"Poly\";s:8:\"variants\";a:2:{i:0;s:6:\"italic\";i:1;s:7:\"regular\";}s:8:\"category\";s:5:\"serif\";}s:8:\"Pompiere\";a:3:{s:5:\"label\";s:8:\"Pompiere\";s:8:\"variants\";a:1:{i:0;s:7:\"regular\";}s:8:\"category\";s:7:\"display\";}s:12:\"Pontano Sans\";a:3:{s:5:\"label\";s:12:\"Pontano Sans\";s:8:\"variants\";a:1:{i:0;s:7:\"regular\";}s:8:\"category\";s:10:\"sans-serif\";}s:10:\"Poor Story\";a:3:{s:5:\"label\";s:10:\"Poor Story\";s:8:\"variants\";a:1:{i:0;s:7:\"regular\";}s:8:\"category\";s:7:\"display\";}s:7:\"Poppins\";a:3:{s:5:\"label\";s:7:\"Poppins\";s:8:\"variants\";a:18:{i:0;s:3:\"100\";i:1;s:9:\"100italic\";i:2;s:3:\"200\";i:3;s:9:\"200italic\";i:4;s:3:\"300\";i:5;s:9:\"300italic\";i:6;s:3:\"500\";i:7;s:9:\"500italic\";i:8;s:3:\"600\";i:9;s:9:\"600italic\";i:10;s:3:\"700\";i:11;s:9:\"700italic\";i:12;s:3:\"800\";i:13;s:9:\"800italic\";i:14;s:3:\"900\";i:15;s:9:\"900italic\";i:16;s:6:\"italic\";i:17;s:7:\"regular\";}s:8:\"category\";s:10:\"sans-serif\";}s:16:\"Port Lligat Sans\";a:3:{s:5:\"label\";s:16:\"Port Lligat Sans\";s:8:\"variants\";a:1:{i:0;s:7:\"regular\";}s:8:\"category\";s:10:\"sans-serif\";}s:16:\"Port Lligat Slab\";a:3:{s:5:\"label\";s:16:\"Port Lligat Slab\";s:8:\"variants\";a:1:{i:0;s:7:\"regular\";}s:8:\"category\";s:5:\"serif\";}s:14:\"Pragati Narrow\";a:3:{s:5:\"label\";s:14:\"Pragati Narrow\";s:8:\"variants\";a:2:{i:0;s:3:\"700\";i:1;s:7:\"regular\";}s:8:\"category\";s:10:\"sans-serif\";}s:5:\"Prata\";a:3:{s:5:\"label\";s:5:\"Prata\";s:8:\"variants\";a:1:{i:0;s:7:\"regular\";}s:8:\"category\";s:5:\"serif\";}s:11:\"Preahvihear\";a:3:{s:5:\"label\";s:11:\"Preahvihear\";s:8:\"variants\";a:1:{i:0;s:7:\"regular\";}s:8:\"category\";s:7:\"display\";}s:14:\"Press Start 2P\";a:3:{s:5:\"label\";s:14:\"Press Start 2P\";s:8:\"variants\";a:1:{i:0;s:7:\"regular\";}s:8:\"category\";s:7:\"display\";}s:5:\"Pridi\";a:3:{s:5:\"label\";s:5:\"Pridi\";s:8:\"variants\";a:6:{i:0;s:3:\"200\";i:1;s:3:\"300\";i:2;s:3:\"500\";i:3;s:3:\"600\";i:4;s:3:\"700\";i:5;s:7:\"regular\";}s:8:\"category\";s:5:\"serif\";}s:14:\"Princess Sofia\";a:3:{s:5:\"label\";s:14:\"Princess Sofia\";s:8:\"variants\";a:1:{i:0;s:7:\"regular\";}s:8:\"category\";s:11:\"handwriting\";}s:8:\"Prociono\";a:3:{s:5:\"label\";s:8:\"Prociono\";s:8:\"variants\";a:1:{i:0;s:7:\"regular\";}s:8:\"category\";s:5:\"serif\";}s:6:\"Prompt\";a:3:{s:5:\"label\";s:6:\"Prompt\";s:8:\"variants\";a:18:{i:0;s:3:\"100\";i:1;s:9:\"100italic\";i:2;s:3:\"200\";i:3;s:9:\"200italic\";i:4;s:3:\"300\";i:5;s:9:\"300italic\";i:6;s:3:\"500\";i:7;s:9:\"500italic\";i:8;s:3:\"600\";i:9;s:9:\"600italic\";i:10;s:3:\"700\";i:11;s:9:\"700italic\";i:12;s:3:\"800\";i:13;s:9:\"800italic\";i:14;s:3:\"900\";i:15;s:9:\"900italic\";i:16;s:6:\"italic\";i:17;s:7:\"regular\";}s:8:\"category\";s:10:\"sans-serif\";}s:10:\"Prosto One\";a:3:{s:5:\"label\";s:10:\"Prosto One\";s:8:\"variants\";a:1:{i:0;s:7:\"regular\";}s:8:\"category\";s:7:\"display\";}s:11:\"Proza Libre\";a:3:{s:5:\"label\";s:11:\"Proza Libre\";s:8:\"variants\";a:10:{i:0;s:3:\"500\";i:1;s:9:\"500italic\";i:2;s:3:\"600\";i:3;s:9:\"600italic\";i:4;s:3:\"700\";i:5;s:9:\"700italic\";i:6;s:3:\"800\";i:7;s:9:\"800italic\";i:8;s:6:\"italic\";i:9;s:7:\"regular\";}s:8:\"category\";s:10:\"sans-serif\";}s:7:\"Puritan\";a:3:{s:5:\"label\";s:7:\"Puritan\";s:8:\"variants\";a:4:{i:0;s:3:\"700\";i:1;s:9:\"700italic\";i:2;s:6:\"italic\";i:3;s:7:\"regular\";}s:8:\"category\";s:10:\"sans-serif\";}s:12:\"Purple Purse\";a:3:{s:5:\"label\";s:12:\"Purple Purse\";s:8:\"variants\";a:1:{i:0;s:7:\"regular\";}s:8:\"category\";s:7:\"display\";}s:6:\"Quando\";a:3:{s:5:\"label\";s:6:\"Quando\";s:8:\"variants\";a:1:{i:0;s:7:\"regular\";}s:8:\"category\";s:5:\"serif\";}s:8:\"Quantico\";a:3:{s:5:\"label\";s:8:\"Quantico\";s:8:\"variants\";a:4:{i:0;s:3:\"700\";i:1;s:9:\"700italic\";i:2;s:6:\"italic\";i:3;s:7:\"regular\";}s:8:\"category\";s:10:\"sans-serif\";}s:12:\"Quattrocento\";a:3:{s:5:\"label\";s:12:\"Quattrocento\";s:8:\"variants\";a:2:{i:0;s:3:\"700\";i:1;s:7:\"regular\";}s:8:\"category\";s:5:\"serif\";}s:17:\"Quattrocento Sans\";a:3:{s:5:\"label\";s:17:\"Quattrocento Sans\";s:8:\"variants\";a:4:{i:0;s:3:\"700\";i:1;s:9:\"700italic\";i:2;s:6:\"italic\";i:3;s:7:\"regular\";}s:8:\"category\";s:10:\"sans-serif\";}s:9:\"Questrial\";a:3:{s:5:\"label\";s:9:\"Questrial\";s:8:\"variants\";a:1:{i:0;s:7:\"regular\";}s:8:\"category\";s:10:\"sans-serif\";}s:9:\"Quicksand\";a:3:{s:5:\"label\";s:9:\"Quicksand\";s:8:\"variants\";a:4:{i:0;s:3:\"300\";i:1;s:3:\"500\";i:2;s:3:\"700\";i:3;s:7:\"regular\";}s:8:\"category\";s:10:\"sans-serif\";}s:14:\"Quintessential\";a:3:{s:5:\"label\";s:14:\"Quintessential\";s:8:\"variants\";a:1:{i:0;s:7:\"regular\";}s:8:\"category\";s:11:\"handwriting\";}s:7:\"Qwigley\";a:3:{s:5:\"label\";s:7:\"Qwigley\";s:8:\"variants\";a:1:{i:0;s:7:\"regular\";}s:8:\"category\";s:11:\"handwriting\";}s:15:\"Racing Sans One\";a:3:{s:5:\"label\";s:15:\"Racing Sans One\";s:8:\"variants\";a:1:{i:0;s:7:\"regular\";}s:8:\"category\";s:7:\"display\";}s:6:\"Radley\";a:3:{s:5:\"label\";s:6:\"Radley\";s:8:\"variants\";a:2:{i:0;s:6:\"italic\";i:1;s:7:\"regular\";}s:8:\"category\";s:5:\"serif\";}s:8:\"Rajdhani\";a:3:{s:5:\"label\";s:8:\"Rajdhani\";s:8:\"variants\";a:5:{i:0;s:3:\"300\";i:1;s:3:\"500\";i:2;s:3:\"600\";i:3;s:3:\"700\";i:4;s:7:\"regular\";}s:8:\"category\";s:10:\"sans-serif\";}s:6:\"Rakkas\";a:3:{s:5:\"label\";s:6:\"Rakkas\";s:8:\"variants\";a:1:{i:0;s:7:\"regular\";}s:8:\"category\";s:7:\"display\";}s:7:\"Raleway\";a:3:{s:5:\"label\";s:7:\"Raleway\";s:8:\"variants\";a:18:{i:0;s:3:\"100\";i:1;s:9:\"100italic\";i:2;s:3:\"200\";i:3;s:9:\"200italic\";i:4;s:3:\"300\";i:5;s:9:\"300italic\";i:6;s:3:\"500\";i:7;s:9:\"500italic\";i:8;s:3:\"600\";i:9;s:9:\"600italic\";i:10;s:3:\"700\";i:11;s:9:\"700italic\";i:12;s:3:\"800\";i:13;s:9:\"800italic\";i:14;s:3:\"900\";i:15;s:9:\"900italic\";i:16;s:6:\"italic\";i:17;s:7:\"regular\";}s:8:\"category\";s:10:\"sans-serif\";}s:12:\"Raleway Dots\";a:3:{s:5:\"label\";s:12:\"Raleway Dots\";s:8:\"variants\";a:1:{i:0;s:7:\"regular\";}s:8:\"category\";s:7:\"display\";}s:10:\"Ramabhadra\";a:3:{s:5:\"label\";s:10:\"Ramabhadra\";s:8:\"variants\";a:1:{i:0;s:7:\"regular\";}s:8:\"category\";s:10:\"sans-serif\";}s:8:\"Ramaraja\";a:3:{s:5:\"label\";s:8:\"Ramaraja\";s:8:\"variants\";a:1:{i:0;s:7:\"regular\";}s:8:\"category\";s:5:\"serif\";}s:6:\"Rambla\";a:3:{s:5:\"label\";s:6:\"Rambla\";s:8:\"variants\";a:4:{i:0;s:3:\"700\";i:1;s:9:\"700italic\";i:2;s:6:\"italic\";i:3;s:7:\"regular\";}s:8:\"category\";s:10:\"sans-serif\";}s:12:\"Rammetto One\";a:3:{s:5:\"label\";s:12:\"Rammetto One\";s:8:\"variants\";a:1:{i:0;s:7:\"regular\";}s:8:\"category\";s:7:\"display\";}s:8:\"Ranchers\";a:3:{s:5:\"label\";s:8:\"Ranchers\";s:8:\"variants\";a:1:{i:0;s:7:\"regular\";}s:8:\"category\";s:7:\"display\";}s:6:\"Rancho\";a:3:{s:5:\"label\";s:6:\"Rancho\";s:8:\"variants\";a:1:{i:0;s:7:\"regular\";}s:8:\"category\";s:11:\"handwriting\";}s:5:\"Ranga\";a:3:{s:5:\"label\";s:5:\"Ranga\";s:8:\"variants\";a:2:{i:0;s:3:\"700\";i:1;s:7:\"regular\";}s:8:\"category\";s:7:\"display\";}s:4:\"Rasa\";a:3:{s:5:\"label\";s:4:\"Rasa\";s:8:\"variants\";a:5:{i:0;s:3:\"300\";i:1;s:3:\"500\";i:2;s:3:\"600\";i:3;s:3:\"700\";i:4;s:7:\"regular\";}s:8:\"category\";s:5:\"serif\";}s:9:\"Rationale\";a:3:{s:5:\"label\";s:9:\"Rationale\";s:8:\"variants\";a:1:{i:0;s:7:\"regular\";}s:8:\"category\";s:10:\"sans-serif\";}s:12:\"Ravi Prakash\";a:3:{s:5:\"label\";s:12:\"Ravi Prakash\";s:8:\"variants\";a:1:{i:0;s:7:\"regular\";}s:8:\"category\";s:7:\"display\";}s:9:\"Redressed\";a:3:{s:5:\"label\";s:9:\"Redressed\";s:8:\"variants\";a:1:{i:0;s:7:\"regular\";}s:8:\"category\";s:11:\"handwriting\";}s:9:\"Reem Kufi\";a:3:{s:5:\"label\";s:9:\"Reem Kufi\";s:8:\"variants\";a:1:{i:0;s:7:\"regular\";}s:8:\"category\";s:10:\"sans-serif\";}s:13:\"Reenie Beanie\";a:3:{s:5:\"label\";s:13:\"Reenie Beanie\";s:8:\"variants\";a:1:{i:0;s:7:\"regular\";}s:8:\"category\";s:11:\"handwriting\";}s:7:\"Revalia\";a:3:{s:5:\"label\";s:7:\"Revalia\";s:8:\"variants\";a:1:{i:0;s:7:\"regular\";}s:8:\"category\";s:7:\"display\";}s:13:\"Rhodium Libre\";a:3:{s:5:\"label\";s:13:\"Rhodium Libre\";s:8:\"variants\";a:1:{i:0;s:7:\"regular\";}s:8:\"category\";s:5:\"serif\";}s:6:\"Ribeye\";a:3:{s:5:\"label\";s:6:\"Ribeye\";s:8:\"variants\";a:1:{i:0;s:7:\"regular\";}s:8:\"category\";s:7:\"display\";}s:13:\"Ribeye Marrow\";a:3:{s:5:\"label\";s:13:\"Ribeye Marrow\";s:8:\"variants\";a:1:{i:0;s:7:\"regular\";}s:8:\"category\";s:7:\"display\";}s:9:\"Righteous\";a:3:{s:5:\"label\";s:9:\"Righteous\";s:8:\"variants\";a:1:{i:0;s:7:\"regular\";}s:8:\"category\";s:7:\"display\";}s:6:\"Risque\";a:3:{s:5:\"label\";s:6:\"Risque\";s:8:\"variants\";a:1:{i:0;s:7:\"regular\";}s:8:\"category\";s:7:\"display\";}s:6:\"Roboto\";a:3:{s:5:\"label\";s:6:\"Roboto\";s:8:\"variants\";a:12:{i:0;s:3:\"100\";i:1;s:9:\"100italic\";i:2;s:3:\"300\";i:3;s:9:\"300italic\";i:4;s:3:\"500\";i:5;s:9:\"500italic\";i:6;s:3:\"700\";i:7;s:9:\"700italic\";i:8;s:3:\"900\";i:9;s:9:\"900italic\";i:10;s:6:\"italic\";i:11;s:7:\"regular\";}s:8:\"category\";s:10:\"sans-serif\";}s:16:\"Roboto Condensed\";a:3:{s:5:\"label\";s:16:\"Roboto Condensed\";s:8:\"variants\";a:6:{i:0;s:3:\"300\";i:1;s:9:\"300italic\";i:2;s:3:\"700\";i:3;s:9:\"700italic\";i:4;s:6:\"italic\";i:5;s:7:\"regular\";}s:8:\"category\";s:10:\"sans-serif\";}s:11:\"Roboto Mono\";a:3:{s:5:\"label\";s:11:\"Roboto Mono\";s:8:\"variants\";a:10:{i:0;s:3:\"100\";i:1;s:9:\"100italic\";i:2;s:3:\"300\";i:3;s:9:\"300italic\";i:4;s:3:\"500\";i:5;s:9:\"500italic\";i:6;s:3:\"700\";i:7;s:9:\"700italic\";i:8;s:6:\"italic\";i:9;s:7:\"regular\";}s:8:\"category\";s:9:\"monospace\";}s:11:\"Roboto Slab\";a:3:{s:5:\"label\";s:11:\"Roboto Slab\";s:8:\"variants\";a:4:{i:0;s:3:\"100\";i:1;s:3:\"300\";i:2;s:3:\"700\";i:3;s:7:\"regular\";}s:8:\"category\";s:5:\"serif\";}s:9:\"Rochester\";a:3:{s:5:\"label\";s:9:\"Rochester\";s:8:\"variants\";a:1:{i:0;s:7:\"regular\";}s:8:\"category\";s:11:\"handwriting\";}s:9:\"Rock Salt\";a:3:{s:5:\"label\";s:9:\"Rock Salt\";s:8:\"variants\";a:1:{i:0;s:7:\"regular\";}s:8:\"category\";s:11:\"handwriting\";}s:7:\"Rokkitt\";a:3:{s:5:\"label\";s:7:\"Rokkitt\";s:8:\"variants\";a:9:{i:0;s:3:\"100\";i:1;s:3:\"200\";i:2;s:3:\"300\";i:3;s:3:\"500\";i:4;s:3:\"600\";i:5;s:3:\"700\";i:6;s:3:\"800\";i:7;s:3:\"900\";i:8;s:7:\"regular\";}s:8:\"category\";s:5:\"serif\";}s:9:\"Romanesco\";a:3:{s:5:\"label\";s:9:\"Romanesco\";s:8:\"variants\";a:1:{i:0;s:7:\"regular\";}s:8:\"category\";s:11:\"handwriting\";}s:9:\"Ropa Sans\";a:3:{s:5:\"label\";s:9:\"Ropa Sans\";s:8:\"variants\";a:2:{i:0;s:6:\"italic\";i:1;s:7:\"regular\";}s:8:\"category\";s:10:\"sans-serif\";}s:7:\"Rosario\";a:3:{s:5:\"label\";s:7:\"Rosario\";s:8:\"variants\";a:4:{i:0;s:3:\"700\";i:1;s:9:\"700italic\";i:2;s:6:\"italic\";i:3;s:7:\"regular\";}s:8:\"category\";s:10:\"sans-serif\";}s:8:\"Rosarivo\";a:3:{s:5:\"label\";s:8:\"Rosarivo\";s:8:\"variants\";a:2:{i:0;s:6:\"italic\";i:1;s:7:\"regular\";}s:8:\"category\";s:5:\"serif\";}s:12:\"Rouge Script\";a:3:{s:5:\"label\";s:12:\"Rouge Script\";s:8:\"variants\";a:1:{i:0;s:7:\"regular\";}s:8:\"category\";s:11:\"handwriting\";}s:9:\"Rozha One\";a:3:{s:5:\"label\";s:9:\"Rozha One\";s:8:\"variants\";a:1:{i:0;s:7:\"regular\";}s:8:\"category\";s:5:\"serif\";}s:5:\"Rubik\";a:3:{s:5:\"label\";s:5:\"Rubik\";s:8:\"variants\";a:10:{i:0;s:3:\"300\";i:1;s:9:\"300italic\";i:2;s:3:\"500\";i:3;s:9:\"500italic\";i:4;s:3:\"700\";i:5;s:9:\"700italic\";i:6;s:3:\"900\";i:7;s:9:\"900italic\";i:8;s:6:\"italic\";i:9;s:7:\"regular\";}s:8:\"category\";s:10:\"sans-serif\";}s:14:\"Rubik Mono One\";a:3:{s:5:\"label\";s:14:\"Rubik Mono One\";s:8:\"variants\";a:1:{i:0;s:7:\"regular\";}s:8:\"category\";s:10:\"sans-serif\";}s:4:\"Ruda\";a:3:{s:5:\"label\";s:4:\"Ruda\";s:8:\"variants\";a:3:{i:0;s:3:\"700\";i:1;s:3:\"900\";i:2;s:7:\"regular\";}s:8:\"category\";s:10:\"sans-serif\";}s:6:\"Rufina\";a:3:{s:5:\"label\";s:6:\"Rufina\";s:8:\"variants\";a:2:{i:0;s:3:\"700\";i:1;s:7:\"regular\";}s:8:\"category\";s:5:\"serif\";}s:11:\"Ruge Boogie\";a:3:{s:5:\"label\";s:11:\"Ruge Boogie\";s:8:\"variants\";a:1:{i:0;s:7:\"regular\";}s:8:\"category\";s:11:\"handwriting\";}s:6:\"Ruluko\";a:3:{s:5:\"label\";s:6:\"Ruluko\";s:8:\"variants\";a:1:{i:0;s:7:\"regular\";}s:8:\"category\";s:10:\"sans-serif\";}s:10:\"Rum Raisin\";a:3:{s:5:\"label\";s:10:\"Rum Raisin\";s:8:\"variants\";a:1:{i:0;s:7:\"regular\";}s:8:\"category\";s:10:\"sans-serif\";}s:14:\"Ruslan Display\";a:3:{s:5:\"label\";s:14:\"Ruslan Display\";s:8:\"variants\";a:1:{i:0;s:7:\"regular\";}s:8:\"category\";s:7:\"display\";}s:9:\"Russo One\";a:3:{s:5:\"label\";s:9:\"Russo One\";s:8:\"variants\";a:1:{i:0;s:7:\"regular\";}s:8:\"category\";s:10:\"sans-serif\";}s:6:\"Ruthie\";a:3:{s:5:\"label\";s:6:\"Ruthie\";s:8:\"variants\";a:1:{i:0;s:7:\"regular\";}s:8:\"category\";s:11:\"handwriting\";}s:3:\"Rye\";a:3:{s:5:\"label\";s:3:\"Rye\";s:8:\"variants\";a:1:{i:0;s:7:\"regular\";}s:8:\"category\";s:7:\"display\";}s:10:\"Sacramento\";a:3:{s:5:\"label\";s:10:\"Sacramento\";s:8:\"variants\";a:1:{i:0;s:7:\"regular\";}s:8:\"category\";s:11:\"handwriting\";}s:7:\"Sahitya\";a:3:{s:5:\"label\";s:7:\"Sahitya\";s:8:\"variants\";a:2:{i:0;s:3:\"700\";i:1;s:7:\"regular\";}s:8:\"category\";s:5:\"serif\";}s:4:\"Sail\";a:3:{s:5:\"label\";s:4:\"Sail\";s:8:\"variants\";a:1:{i:0;s:7:\"regular\";}s:8:\"category\";s:7:\"display\";}s:5:\"Saira\";a:3:{s:5:\"label\";s:5:\"Saira\";s:8:\"variants\";a:9:{i:0;s:3:\"100\";i:1;s:3:\"200\";i:2;s:3:\"300\";i:3;s:3:\"500\";i:4;s:3:\"600\";i:5;s:3:\"700\";i:6;s:3:\"800\";i:7;s:3:\"900\";i:8;s:7:\"regular\";}s:8:\"category\";s:10:\"sans-serif\";}s:15:\"Saira Condensed\";a:3:{s:5:\"label\";s:15:\"Saira Condensed\";s:8:\"variants\";a:9:{i:0;s:3:\"100\";i:1;s:3:\"200\";i:2;s:3:\"300\";i:3;s:3:\"500\";i:4;s:3:\"600\";i:5;s:3:\"700\";i:6;s:3:\"800\";i:7;s:3:\"900\";i:8;s:7:\"regular\";}s:8:\"category\";s:10:\"sans-serif\";}s:21:\"Saira Extra Condensed\";a:3:{s:5:\"label\";s:21:\"Saira Extra Condensed\";s:8:\"variants\";a:9:{i:0;s:3:\"100\";i:1;s:3:\"200\";i:2;s:3:\"300\";i:3;s:3:\"500\";i:4;s:3:\"600\";i:5;s:3:\"700\";i:6;s:3:\"800\";i:7;s:3:\"900\";i:8;s:7:\"regular\";}s:8:\"category\";s:10:\"sans-serif\";}s:20:\"Saira Semi Condensed\";a:3:{s:5:\"label\";s:20:\"Saira Semi Condensed\";s:8:\"variants\";a:9:{i:0;s:3:\"100\";i:1;s:3:\"200\";i:2;s:3:\"300\";i:3;s:3:\"500\";i:4;s:3:\"600\";i:5;s:3:\"700\";i:6;s:3:\"800\";i:7;s:3:\"900\";i:8;s:7:\"regular\";}s:8:\"category\";s:10:\"sans-serif\";}s:5:\"Salsa\";a:3:{s:5:\"label\";s:5:\"Salsa\";s:8:\"variants\";a:1:{i:0;s:7:\"regular\";}s:8:\"category\";s:7:\"display\";}s:7:\"Sanchez\";a:3:{s:5:\"label\";s:7:\"Sanchez\";s:8:\"variants\";a:2:{i:0;s:6:\"italic\";i:1;s:7:\"regular\";}s:8:\"category\";s:5:\"serif\";}s:8:\"Sancreek\";a:3:{s:5:\"label\";s:8:\"Sancreek\";s:8:\"variants\";a:1:{i:0;s:7:\"regular\";}s:8:\"category\";s:7:\"display\";}s:7:\"Sansita\";a:3:{s:5:\"label\";s:7:\"Sansita\";s:8:\"variants\";a:8:{i:0;s:3:\"700\";i:1;s:9:\"700italic\";i:2;s:3:\"800\";i:3;s:9:\"800italic\";i:4;s:3:\"900\";i:5;s:9:\"900italic\";i:6;s:6:\"italic\";i:7;s:7:\"regular\";}s:8:\"category\";s:10:\"sans-serif\";}s:7:\"Sarabun\";a:3:{s:5:\"label\";s:7:\"Sarabun\";s:8:\"variants\";a:16:{i:0;s:3:\"100\";i:1;s:9:\"100italic\";i:2;s:3:\"200\";i:3;s:9:\"200italic\";i:4;s:3:\"300\";i:5;s:9:\"300italic\";i:6;s:3:\"500\";i:7;s:9:\"500italic\";i:8;s:3:\"600\";i:9;s:9:\"600italic\";i:10;s:3:\"700\";i:11;s:9:\"700italic\";i:12;s:3:\"800\";i:13;s:9:\"800italic\";i:14;s:6:\"italic\";i:15;s:7:\"regular\";}s:8:\"category\";s:10:\"sans-serif\";}s:6:\"Sarala\";a:3:{s:5:\"label\";s:6:\"Sarala\";s:8:\"variants\";a:2:{i:0;s:3:\"700\";i:1;s:7:\"regular\";}s:8:\"category\";s:10:\"sans-serif\";}s:6:\"Sarina\";a:3:{s:5:\"label\";s:6:\"Sarina\";s:8:\"variants\";a:1:{i:0;s:7:\"regular\";}s:8:\"category\";s:7:\"display\";}s:8:\"Sarpanch\";a:3:{s:5:\"label\";s:8:\"Sarpanch\";s:8:\"variants\";a:6:{i:0;s:3:\"500\";i:1;s:3:\"600\";i:2;s:3:\"700\";i:3;s:3:\"800\";i:4;s:3:\"900\";i:5;s:7:\"regular\";}s:8:\"category\";s:10:\"sans-serif\";}s:7:\"Satisfy\";a:3:{s:5:\"label\";s:7:\"Satisfy\";s:8:\"variants\";a:1:{i:0;s:7:\"regular\";}s:8:\"category\";s:11:\"handwriting\";}s:15:\"Sawarabi Gothic\";a:3:{s:5:\"label\";s:15:\"Sawarabi Gothic\";s:8:\"variants\";a:1:{i:0;s:7:\"regular\";}s:8:\"category\";s:10:\"sans-serif\";}s:15:\"Sawarabi Mincho\";a:3:{s:5:\"label\";s:15:\"Sawarabi Mincho\";s:8:\"variants\";a:1:{i:0;s:7:\"regular\";}s:8:\"category\";s:10:\"sans-serif\";}s:5:\"Scada\";a:3:{s:5:\"label\";s:5:\"Scada\";s:8:\"variants\";a:4:{i:0;s:3:\"700\";i:1;s:9:\"700italic\";i:2;s:6:\"italic\";i:3;s:7:\"regular\";}s:8:\"category\";s:10:\"sans-serif\";}s:12:\"Scheherazade\";a:3:{s:5:\"label\";s:12:\"Scheherazade\";s:8:\"variants\";a:2:{i:0;s:3:\"700\";i:1;s:7:\"regular\";}s:8:\"category\";s:5:\"serif\";}s:10:\"Schoolbell\";a:3:{s:5:\"label\";s:10:\"Schoolbell\";s:8:\"variants\";a:1:{i:0;s:7:\"regular\";}s:8:\"category\";s:11:\"handwriting\";}s:9:\"Scope One\";a:3:{s:5:\"label\";s:9:\"Scope One\";s:8:\"variants\";a:1:{i:0;s:7:\"regular\";}s:8:\"category\";s:5:\"serif\";}s:14:\"Seaweed Script\";a:3:{s:5:\"label\";s:14:\"Seaweed Script\";s:8:\"variants\";a:1:{i:0;s:7:\"regular\";}s:8:\"category\";s:7:\"display\";}s:11:\"Secular One\";a:3:{s:5:\"label\";s:11:\"Secular One\";s:8:\"variants\";a:1:{i:0;s:7:\"regular\";}s:8:\"category\";s:10:\"sans-serif\";}s:12:\"Sedgwick Ave\";a:3:{s:5:\"label\";s:12:\"Sedgwick Ave\";s:8:\"variants\";a:1:{i:0;s:7:\"regular\";}s:8:\"category\";s:11:\"handwriting\";}s:20:\"Sedgwick Ave Display\";a:3:{s:5:\"label\";s:20:\"Sedgwick Ave Display\";s:8:\"variants\";a:1:{i:0;s:7:\"regular\";}s:8:\"category\";s:11:\"handwriting\";}s:9:\"Sevillana\";a:3:{s:5:\"label\";s:9:\"Sevillana\";s:8:\"variants\";a:1:{i:0;s:7:\"regular\";}s:8:\"category\";s:7:\"display\";}s:11:\"Seymour One\";a:3:{s:5:\"label\";s:11:\"Seymour One\";s:8:\"variants\";a:1:{i:0;s:7:\"regular\";}s:8:\"category\";s:10:\"sans-serif\";}s:18:\"Shadows Into Light\";a:3:{s:5:\"label\";s:18:\"Shadows Into Light\";s:8:\"variants\";a:1:{i:0;s:7:\"regular\";}s:8:\"category\";s:11:\"handwriting\";}s:22:\"Shadows Into Light Two\";a:3:{s:5:\"label\";s:22:\"Shadows Into Light Two\";s:8:\"variants\";a:1:{i:0;s:7:\"regular\";}s:8:\"category\";s:11:\"handwriting\";}s:6:\"Shanti\";a:3:{s:5:\"label\";s:6:\"Shanti\";s:8:\"variants\";a:1:{i:0;s:7:\"regular\";}s:8:\"category\";s:10:\"sans-serif\";}s:5:\"Share\";a:3:{s:5:\"label\";s:5:\"Share\";s:8:\"variants\";a:4:{i:0;s:3:\"700\";i:1;s:9:\"700italic\";i:2;s:6:\"italic\";i:3;s:7:\"regular\";}s:8:\"category\";s:7:\"display\";}s:10:\"Share Tech\";a:3:{s:5:\"label\";s:10:\"Share Tech\";s:8:\"variants\";a:1:{i:0;s:7:\"regular\";}s:8:\"category\";s:10:\"sans-serif\";}s:15:\"Share Tech Mono\";a:3:{s:5:\"label\";s:15:\"Share Tech Mono\";s:8:\"variants\";a:1:{i:0;s:7:\"regular\";}s:8:\"category\";s:9:\"monospace\";}s:9:\"Shojumaru\";a:3:{s:5:\"label\";s:9:\"Shojumaru\";s:8:\"variants\";a:1:{i:0;s:7:\"regular\";}s:8:\"category\";s:7:\"display\";}s:11:\"Short Stack\";a:3:{s:5:\"label\";s:11:\"Short Stack\";s:8:\"variants\";a:1:{i:0;s:7:\"regular\";}s:8:\"category\";s:11:\"handwriting\";}s:9:\"Shrikhand\";a:3:{s:5:\"label\";s:9:\"Shrikhand\";s:8:\"variants\";a:1:{i:0;s:7:\"regular\";}s:8:\"category\";s:7:\"display\";}s:8:\"Siemreap\";a:3:{s:5:\"label\";s:8:\"Siemreap\";s:8:\"variants\";a:1:{i:0;s:7:\"regular\";}s:8:\"category\";s:7:\"display\";}s:10:\"Sigmar One\";a:3:{s:5:\"label\";s:10:\"Sigmar One\";s:8:\"variants\";a:1:{i:0;s:7:\"regular\";}s:8:\"category\";s:7:\"display\";}s:7:\"Signika\";a:3:{s:5:\"label\";s:7:\"Signika\";s:8:\"variants\";a:4:{i:0;s:3:\"300\";i:1;s:3:\"600\";i:2;s:3:\"700\";i:3;s:7:\"regular\";}s:8:\"category\";s:10:\"sans-serif\";}s:16:\"Signika Negative\";a:3:{s:5:\"label\";s:16:\"Signika Negative\";s:8:\"variants\";a:4:{i:0;s:3:\"300\";i:1;s:3:\"600\";i:2;s:3:\"700\";i:3;s:7:\"regular\";}s:8:\"category\";s:10:\"sans-serif\";}s:9:\"Simonetta\";a:3:{s:5:\"label\";s:9:\"Simonetta\";s:8:\"variants\";a:4:{i:0;s:3:\"900\";i:1;s:9:\"900italic\";i:2;s:6:\"italic\";i:3;s:7:\"regular\";}s:8:\"category\";s:7:\"display\";}s:7:\"Sintony\";a:3:{s:5:\"label\";s:7:\"Sintony\";s:8:\"variants\";a:2:{i:0;s:3:\"700\";i:1;s:7:\"regular\";}s:8:\"category\";s:10:\"sans-serif\";}s:13:\"Sirin Stencil\";a:3:{s:5:\"label\";s:13:\"Sirin Stencil\";s:8:\"variants\";a:1:{i:0;s:7:\"regular\";}s:8:\"category\";s:7:\"display\";}s:8:\"Six Caps\";a:3:{s:5:\"label\";s:8:\"Six Caps\";s:8:\"variants\";a:1:{i:0;s:7:\"regular\";}s:8:\"category\";s:10:\"sans-serif\";}s:7:\"Skranji\";a:3:{s:5:\"label\";s:7:\"Skranji\";s:8:\"variants\";a:2:{i:0;s:3:\"700\";i:1;s:7:\"regular\";}s:8:\"category\";s:7:\"display\";}s:10:\"Slabo 13px\";a:3:{s:5:\"label\";s:10:\"Slabo 13px\";s:8:\"variants\";a:1:{i:0;s:7:\"regular\";}s:8:\"category\";s:5:\"serif\";}s:10:\"Slabo 27px\";a:3:{s:5:\"label\";s:10:\"Slabo 27px\";s:8:\"variants\";a:1:{i:0;s:7:\"regular\";}s:8:\"category\";s:5:\"serif\";}s:7:\"Slackey\";a:3:{s:5:\"label\";s:7:\"Slackey\";s:8:\"variants\";a:1:{i:0;s:7:\"regular\";}s:8:\"category\";s:7:\"display\";}s:6:\"Smokum\";a:3:{s:5:\"label\";s:6:\"Smokum\";s:8:\"variants\";a:1:{i:0;s:7:\"regular\";}s:8:\"category\";s:7:\"display\";}s:6:\"Smythe\";a:3:{s:5:\"label\";s:6:\"Smythe\";s:8:\"variants\";a:1:{i:0;s:7:\"regular\";}s:8:\"category\";s:7:\"display\";}s:7:\"Sniglet\";a:3:{s:5:\"label\";s:7:\"Sniglet\";s:8:\"variants\";a:2:{i:0;s:3:\"800\";i:1;s:7:\"regular\";}s:8:\"category\";s:7:\"display\";}s:7:\"Snippet\";a:3:{s:5:\"label\";s:7:\"Snippet\";s:8:\"variants\";a:1:{i:0;s:7:\"regular\";}s:8:\"category\";s:10:\"sans-serif\";}s:13:\"Snowburst One\";a:3:{s:5:\"label\";s:13:\"Snowburst One\";s:8:\"variants\";a:1:{i:0;s:7:\"regular\";}s:8:\"category\";s:7:\"display\";}s:10:\"Sofadi One\";a:3:{s:5:\"label\";s:10:\"Sofadi One\";s:8:\"variants\";a:1:{i:0;s:7:\"regular\";}s:8:\"category\";s:7:\"display\";}s:5:\"Sofia\";a:3:{s:5:\"label\";s:5:\"Sofia\";s:8:\"variants\";a:1:{i:0;s:7:\"regular\";}s:8:\"category\";s:11:\"handwriting\";}s:10:\"Song Myung\";a:3:{s:5:\"label\";s:10:\"Song Myung\";s:8:\"variants\";a:1:{i:0;s:7:\"regular\";}s:8:\"category\";s:5:\"serif\";}s:10:\"Sonsie One\";a:3:{s:5:\"label\";s:10:\"Sonsie One\";s:8:\"variants\";a:1:{i:0;s:7:\"regular\";}s:8:\"category\";s:7:\"display\";}s:16:\"Sorts Mill Goudy\";a:3:{s:5:\"label\";s:16:\"Sorts Mill Goudy\";s:8:\"variants\";a:2:{i:0;s:6:\"italic\";i:1;s:7:\"regular\";}s:8:\"category\";s:5:\"serif\";}s:15:\"Source Code Pro\";a:3:{s:5:\"label\";s:15:\"Source Code Pro\";s:8:\"variants\";a:7:{i:0;s:3:\"200\";i:1;s:3:\"300\";i:2;s:3:\"500\";i:3;s:3:\"600\";i:4;s:3:\"700\";i:5;s:3:\"900\";i:6;s:7:\"regular\";}s:8:\"category\";s:9:\"monospace\";}s:15:\"Source Sans Pro\";a:3:{s:5:\"label\";s:15:\"Source Sans Pro\";s:8:\"variants\";a:12:{i:0;s:3:\"200\";i:1;s:9:\"200italic\";i:2;s:3:\"300\";i:3;s:9:\"300italic\";i:4;s:3:\"600\";i:5;s:9:\"600italic\";i:6;s:3:\"700\";i:7;s:9:\"700italic\";i:8;s:3:\"900\";i:9;s:9:\"900italic\";i:10;s:6:\"italic\";i:11;s:7:\"regular\";}s:8:\"category\";s:10:\"sans-serif\";}s:16:\"Source Serif Pro\";a:3:{s:5:\"label\";s:16:\"Source Serif Pro\";s:8:\"variants\";a:3:{i:0;s:3:\"600\";i:1;s:3:\"700\";i:2;s:7:\"regular\";}s:8:\"category\";s:5:\"serif\";}s:10:\"Space Mono\";a:3:{s:5:\"label\";s:10:\"Space Mono\";s:8:\"variants\";a:4:{i:0;s:3:\"700\";i:1;s:9:\"700italic\";i:2;s:6:\"italic\";i:3;s:7:\"regular\";}s:8:\"category\";s:9:\"monospace\";}s:13:\"Special Elite\";a:3:{s:5:\"label\";s:13:\"Special Elite\";s:8:\"variants\";a:1:{i:0;s:7:\"regular\";}s:8:\"category\";s:7:\"display\";}s:8:\"Spectral\";a:3:{s:5:\"label\";s:8:\"Spectral\";s:8:\"variants\";a:14:{i:0;s:3:\"200\";i:1;s:9:\"200italic\";i:2;s:3:\"300\";i:3;s:9:\"300italic\";i:4;s:3:\"500\";i:5;s:9:\"500italic\";i:6;s:3:\"600\";i:7;s:9:\"600italic\";i:8;s:3:\"700\";i:9;s:9:\"700italic\";i:10;s:3:\"800\";i:11;s:9:\"800italic\";i:12;s:6:\"italic\";i:13;s:7:\"regular\";}s:8:\"category\";s:5:\"serif\";}s:11:\"Spectral SC\";a:3:{s:5:\"label\";s:11:\"Spectral SC\";s:8:\"variants\";a:14:{i:0;s:3:\"200\";i:1;s:9:\"200italic\";i:2;s:3:\"300\";i:3;s:9:\"300italic\";i:4;s:3:\"500\";i:5;s:9:\"500italic\";i:6;s:3:\"600\";i:7;s:9:\"600italic\";i:8;s:3:\"700\";i:9;s:9:\"700italic\";i:10;s:3:\"800\";i:11;s:9:\"800italic\";i:12;s:6:\"italic\";i:13;s:7:\"regular\";}s:8:\"category\";s:5:\"serif\";}s:10:\"Spicy Rice\";a:3:{s:5:\"label\";s:10:\"Spicy Rice\";s:8:\"variants\";a:1:{i:0;s:7:\"regular\";}s:8:\"category\";s:7:\"display\";}s:9:\"Spinnaker\";a:3:{s:5:\"label\";s:9:\"Spinnaker\";s:8:\"variants\";a:1:{i:0;s:7:\"regular\";}s:8:\"category\";s:10:\"sans-serif\";}s:6:\"Spirax\";a:3:{s:5:\"label\";s:6:\"Spirax\";s:8:\"variants\";a:1:{i:0;s:7:\"regular\";}s:8:\"category\";s:7:\"display\";}s:10:\"Squada One\";a:3:{s:5:\"label\";s:10:\"Squada One\";s:8:\"variants\";a:1:{i:0;s:7:\"regular\";}s:8:\"category\";s:7:\"display\";}s:20:\"Sree Krushnadevaraya\";a:3:{s:5:\"label\";s:20:\"Sree Krushnadevaraya\";s:8:\"variants\";a:1:{i:0;s:7:\"regular\";}s:8:\"category\";s:5:\"serif\";}s:8:\"Sriracha\";a:3:{s:5:\"label\";s:8:\"Sriracha\";s:8:\"variants\";a:1:{i:0;s:7:\"regular\";}s:8:\"category\";s:11:\"handwriting\";}s:8:\"Srisakdi\";a:3:{s:5:\"label\";s:8:\"Srisakdi\";s:8:\"variants\";a:2:{i:0;s:3:\"700\";i:1;s:7:\"regular\";}s:8:\"category\";s:7:\"display\";}s:11:\"Staatliches\";a:3:{s:5:\"label\";s:11:\"Staatliches\";s:8:\"variants\";a:1:{i:0;s:7:\"regular\";}s:8:\"category\";s:7:\"display\";}s:9:\"Stalemate\";a:3:{s:5:\"label\";s:9:\"Stalemate\";s:8:\"variants\";a:1:{i:0;s:7:\"regular\";}s:8:\"category\";s:11:\"handwriting\";}s:13:\"Stalinist One\";a:3:{s:5:\"label\";s:13:\"Stalinist One\";s:8:\"variants\";a:1:{i:0;s:7:\"regular\";}s:8:\"category\";s:7:\"display\";}s:15:\"Stardos Stencil\";a:3:{s:5:\"label\";s:15:\"Stardos Stencil\";s:8:\"variants\";a:2:{i:0;s:3:\"700\";i:1;s:7:\"regular\";}s:8:\"category\";s:7:\"display\";}s:21:\"Stint Ultra Condensed\";a:3:{s:5:\"label\";s:21:\"Stint Ultra Condensed\";s:8:\"variants\";a:1:{i:0;s:7:\"regular\";}s:8:\"category\";s:7:\"display\";}s:20:\"Stint Ultra Expanded\";a:3:{s:5:\"label\";s:20:\"Stint Ultra Expanded\";s:8:\"variants\";a:1:{i:0;s:7:\"regular\";}s:8:\"category\";s:7:\"display\";}s:5:\"Stoke\";a:3:{s:5:\"label\";s:5:\"Stoke\";s:8:\"variants\";a:2:{i:0;s:3:\"300\";i:1;s:7:\"regular\";}s:8:\"category\";s:5:\"serif\";}s:6:\"Strait\";a:3:{s:5:\"label\";s:6:\"Strait\";s:8:\"variants\";a:1:{i:0;s:7:\"regular\";}s:8:\"category\";s:10:\"sans-serif\";}s:7:\"Stylish\";a:3:{s:5:\"label\";s:7:\"Stylish\";s:8:\"variants\";a:1:{i:0;s:7:\"regular\";}s:8:\"category\";s:10:\"sans-serif\";}s:19:\"Sue Ellen Francisco\";a:3:{s:5:\"label\";s:19:\"Sue Ellen Francisco\";s:8:\"variants\";a:1:{i:0;s:7:\"regular\";}s:8:\"category\";s:11:\"handwriting\";}s:8:\"Suez One\";a:3:{s:5:\"label\";s:8:\"Suez One\";s:8:\"variants\";a:1:{i:0;s:7:\"regular\";}s:8:\"category\";s:5:\"serif\";}s:6:\"Sumana\";a:3:{s:5:\"label\";s:6:\"Sumana\";s:8:\"variants\";a:2:{i:0;s:3:\"700\";i:1;s:7:\"regular\";}s:8:\"category\";s:5:\"serif\";}s:9:\"Sunflower\";a:3:{s:5:\"label\";s:9:\"Sunflower\";s:8:\"variants\";a:3:{i:0;s:3:\"300\";i:1;s:3:\"500\";i:2;s:3:\"700\";}s:8:\"category\";s:10:\"sans-serif\";}s:9:\"Sunshiney\";a:3:{s:5:\"label\";s:9:\"Sunshiney\";s:8:\"variants\";a:1:{i:0;s:7:\"regular\";}s:8:\"category\";s:11:\"handwriting\";}s:16:\"Supermercado One\";a:3:{s:5:\"label\";s:16:\"Supermercado One\";s:8:\"variants\";a:1:{i:0;s:7:\"regular\";}s:8:\"category\";s:7:\"display\";}s:4:\"Sura\";a:3:{s:5:\"label\";s:4:\"Sura\";s:8:\"variants\";a:2:{i:0;s:3:\"700\";i:1;s:7:\"regular\";}s:8:\"category\";s:5:\"serif\";}s:7:\"Suranna\";a:3:{s:5:\"label\";s:7:\"Suranna\";s:8:\"variants\";a:1:{i:0;s:7:\"regular\";}s:8:\"category\";s:5:\"serif\";}s:9:\"Suravaram\";a:3:{s:5:\"label\";s:9:\"Suravaram\";s:8:\"variants\";a:1:{i:0;s:7:\"regular\";}s:8:\"category\";s:5:\"serif\";}s:11:\"Suwannaphum\";a:3:{s:5:\"label\";s:11:\"Suwannaphum\";s:8:\"variants\";a:1:{i:0;s:7:\"regular\";}s:8:\"category\";s:7:\"display\";}s:18:\"Swanky and Moo Moo\";a:3:{s:5:\"label\";s:18:\"Swanky and Moo Moo\";s:8:\"variants\";a:1:{i:0;s:7:\"regular\";}s:8:\"category\";s:11:\"handwriting\";}s:9:\"Syncopate\";a:3:{s:5:\"label\";s:9:\"Syncopate\";s:8:\"variants\";a:2:{i:0;s:3:\"700\";i:1;s:7:\"regular\";}s:8:\"category\";s:10:\"sans-serif\";}s:7:\"Tajawal\";a:3:{s:5:\"label\";s:7:\"Tajawal\";s:8:\"variants\";a:7:{i:0;s:3:\"200\";i:1;s:3:\"300\";i:2;s:3:\"500\";i:3;s:3:\"700\";i:4;s:3:\"800\";i:5;s:3:\"900\";i:6;s:7:\"regular\";}s:8:\"category\";s:10:\"sans-serif\";}s:9:\"Tangerine\";a:3:{s:5:\"label\";s:9:\"Tangerine\";s:8:\"variants\";a:2:{i:0;s:3:\"700\";i:1;s:7:\"regular\";}s:8:\"category\";s:11:\"handwriting\";}s:6:\"Taprom\";a:3:{s:5:\"label\";s:6:\"Taprom\";s:8:\"variants\";a:1:{i:0;s:7:\"regular\";}s:8:\"category\";s:7:\"display\";}s:5:\"Tauri\";a:3:{s:5:\"label\";s:5:\"Tauri\";s:8:\"variants\";a:1:{i:0;s:7:\"regular\";}s:8:\"category\";s:10:\"sans-serif\";}s:7:\"Taviraj\";a:3:{s:5:\"label\";s:7:\"Taviraj\";s:8:\"variants\";a:18:{i:0;s:3:\"100\";i:1;s:9:\"100italic\";i:2;s:3:\"200\";i:3;s:9:\"200italic\";i:4;s:3:\"300\";i:5;s:9:\"300italic\";i:6;s:3:\"500\";i:7;s:9:\"500italic\";i:8;s:3:\"600\";i:9;s:9:\"600italic\";i:10;s:3:\"700\";i:11;s:9:\"700italic\";i:12;s:3:\"800\";i:13;s:9:\"800italic\";i:14;s:3:\"900\";i:15;s:9:\"900italic\";i:16;s:6:\"italic\";i:17;s:7:\"regular\";}s:8:\"category\";s:5:\"serif\";}s:4:\"Teko\";a:3:{s:5:\"label\";s:4:\"Teko\";s:8:\"variants\";a:5:{i:0;s:3:\"300\";i:1;s:3:\"500\";i:2;s:3:\"600\";i:3;s:3:\"700\";i:4;s:7:\"regular\";}s:8:\"category\";s:10:\"sans-serif\";}s:5:\"Telex\";a:3:{s:5:\"label\";s:5:\"Telex\";s:8:\"variants\";a:1:{i:0;s:7:\"regular\";}s:8:\"category\";s:10:\"sans-serif\";}s:18:\"Tenali Ramakrishna\";a:3:{s:5:\"label\";s:18:\"Tenali Ramakrishna\";s:8:\"variants\";a:1:{i:0;s:7:\"regular\";}s:8:\"category\";s:10:\"sans-serif\";}s:10:\"Tenor Sans\";a:3:{s:5:\"label\";s:10:\"Tenor Sans\";s:8:\"variants\";a:1:{i:0;s:7:\"regular\";}s:8:\"category\";s:10:\"sans-serif\";}s:11:\"Text Me One\";a:3:{s:5:\"label\";s:11:\"Text Me One\";s:8:\"variants\";a:1:{i:0;s:7:\"regular\";}s:8:\"category\";s:10:\"sans-serif\";}s:9:\"Thasadith\";a:3:{s:5:\"label\";s:9:\"Thasadith\";s:8:\"variants\";a:4:{i:0;s:3:\"700\";i:1;s:9:\"700italic\";i:2;s:6:\"italic\";i:3;s:7:\"regular\";}s:8:\"category\";s:10:\"sans-serif\";}s:18:\"The Girl Next Door\";a:3:{s:5:\"label\";s:18:\"The Girl Next Door\";s:8:\"variants\";a:1:{i:0;s:7:\"regular\";}s:8:\"category\";s:11:\"handwriting\";}s:6:\"Tienne\";a:3:{s:5:\"label\";s:6:\"Tienne\";s:8:\"variants\";a:3:{i:0;s:3:\"700\";i:1;s:3:\"900\";i:2;s:7:\"regular\";}s:8:\"category\";s:5:\"serif\";}s:7:\"Tillana\";a:3:{s:5:\"label\";s:7:\"Tillana\";s:8:\"variants\";a:5:{i:0;s:3:\"500\";i:1;s:3:\"600\";i:2;s:3:\"700\";i:3;s:3:\"800\";i:4;s:7:\"regular\";}s:8:\"category\";s:11:\"handwriting\";}s:7:\"Timmana\";a:3:{s:5:\"label\";s:7:\"Timmana\";s:8:\"variants\";a:1:{i:0;s:7:\"regular\";}s:8:\"category\";s:10:\"sans-serif\";}s:5:\"Tinos\";a:3:{s:5:\"label\";s:5:\"Tinos\";s:8:\"variants\";a:4:{i:0;s:3:\"700\";i:1;s:9:\"700italic\";i:2;s:6:\"italic\";i:3;s:7:\"regular\";}s:8:\"category\";s:5:\"serif\";}s:9:\"Titan One\";a:3:{s:5:\"label\";s:9:\"Titan One\";s:8:\"variants\";a:1:{i:0;s:7:\"regular\";}s:8:\"category\";s:7:\"display\";}s:13:\"Titillium Web\";a:3:{s:5:\"label\";s:13:\"Titillium Web\";s:8:\"variants\";a:11:{i:0;s:3:\"200\";i:1;s:9:\"200italic\";i:2;s:3:\"300\";i:3;s:9:\"300italic\";i:4;s:3:\"600\";i:5;s:9:\"600italic\";i:6;s:3:\"700\";i:7;s:9:\"700italic\";i:8;s:3:\"900\";i:9;s:6:\"italic\";i:10;s:7:\"regular\";}s:8:\"category\";s:10:\"sans-serif\";}s:11:\"Trade Winds\";a:3:{s:5:\"label\";s:11:\"Trade Winds\";s:8:\"variants\";a:1:{i:0;s:7:\"regular\";}s:8:\"category\";s:7:\"display\";}s:7:\"Trirong\";a:3:{s:5:\"label\";s:7:\"Trirong\";s:8:\"variants\";a:18:{i:0;s:3:\"100\";i:1;s:9:\"100italic\";i:2;s:3:\"200\";i:3;s:9:\"200italic\";i:4;s:3:\"300\";i:5;s:9:\"300italic\";i:6;s:3:\"500\";i:7;s:9:\"500italic\";i:8;s:3:\"600\";i:9;s:9:\"600italic\";i:10;s:3:\"700\";i:11;s:9:\"700italic\";i:12;s:3:\"800\";i:13;s:9:\"800italic\";i:14;s:3:\"900\";i:15;s:9:\"900italic\";i:16;s:6:\"italic\";i:17;s:7:\"regular\";}s:8:\"category\";s:5:\"serif\";}s:7:\"Trocchi\";a:3:{s:5:\"label\";s:7:\"Trocchi\";s:8:\"variants\";a:1:{i:0;s:7:\"regular\";}s:8:\"category\";s:5:\"serif\";}s:7:\"Trochut\";a:3:{s:5:\"label\";s:7:\"Trochut\";s:8:\"variants\";a:3:{i:0;s:3:\"700\";i:1;s:6:\"italic\";i:2;s:7:\"regular\";}s:8:\"category\";s:7:\"display\";}s:7:\"Trykker\";a:3:{s:5:\"label\";s:7:\"Trykker\";s:8:\"variants\";a:1:{i:0;s:7:\"regular\";}s:8:\"category\";s:5:\"serif\";}s:10:\"Tulpen One\";a:3:{s:5:\"label\";s:10:\"Tulpen One\";s:8:\"variants\";a:1:{i:0;s:7:\"regular\";}s:8:\"category\";s:7:\"display\";}s:6:\"Ubuntu\";a:3:{s:5:\"label\";s:6:\"Ubuntu\";s:8:\"variants\";a:8:{i:0;s:3:\"300\";i:1;s:9:\"300italic\";i:2;s:3:\"500\";i:3;s:9:\"500italic\";i:4;s:3:\"700\";i:5;s:9:\"700italic\";i:6;s:6:\"italic\";i:7;s:7:\"regular\";}s:8:\"category\";s:10:\"sans-serif\";}s:16:\"Ubuntu Condensed\";a:3:{s:5:\"label\";s:16:\"Ubuntu Condensed\";s:8:\"variants\";a:1:{i:0;s:7:\"regular\";}s:8:\"category\";s:10:\"sans-serif\";}s:11:\"Ubuntu Mono\";a:3:{s:5:\"label\";s:11:\"Ubuntu Mono\";s:8:\"variants\";a:4:{i:0;s:3:\"700\";i:1;s:9:\"700italic\";i:2;s:6:\"italic\";i:3;s:7:\"regular\";}s:8:\"category\";s:9:\"monospace\";}s:5:\"Ultra\";a:3:{s:5:\"label\";s:5:\"Ultra\";s:8:\"variants\";a:1:{i:0;s:7:\"regular\";}s:8:\"category\";s:5:\"serif\";}s:14:\"Uncial Antiqua\";a:3:{s:5:\"label\";s:14:\"Uncial Antiqua\";s:8:\"variants\";a:1:{i:0;s:7:\"regular\";}s:8:\"category\";s:7:\"display\";}s:8:\"Underdog\";a:3:{s:5:\"label\";s:8:\"Underdog\";s:8:\"variants\";a:1:{i:0;s:7:\"regular\";}s:8:\"category\";s:7:\"display\";}s:9:\"Unica One\";a:3:{s:5:\"label\";s:9:\"Unica One\";s:8:\"variants\";a:1:{i:0;s:7:\"regular\";}s:8:\"category\";s:7:\"display\";}s:14:\"UnifrakturCook\";a:3:{s:5:\"label\";s:14:\"UnifrakturCook\";s:8:\"variants\";a:1:{i:0;s:3:\"700\";}s:8:\"category\";s:7:\"display\";}s:18:\"UnifrakturMaguntia\";a:3:{s:5:\"label\";s:18:\"UnifrakturMaguntia\";s:8:\"variants\";a:1:{i:0;s:7:\"regular\";}s:8:\"category\";s:7:\"display\";}s:7:\"Unkempt\";a:3:{s:5:\"label\";s:7:\"Unkempt\";s:8:\"variants\";a:2:{i:0;s:3:\"700\";i:1;s:7:\"regular\";}s:8:\"category\";s:7:\"display\";}s:6:\"Unlock\";a:3:{s:5:\"label\";s:6:\"Unlock\";s:8:\"variants\";a:1:{i:0;s:7:\"regular\";}s:8:\"category\";s:7:\"display\";}s:4:\"Unna\";a:3:{s:5:\"label\";s:4:\"Unna\";s:8:\"variants\";a:4:{i:0;s:3:\"700\";i:1;s:9:\"700italic\";i:2;s:6:\"italic\";i:3;s:7:\"regular\";}s:8:\"category\";s:5:\"serif\";}s:5:\"VT323\";a:3:{s:5:\"label\";s:5:\"VT323\";s:8:\"variants\";a:1:{i:0;s:7:\"regular\";}s:8:\"category\";s:9:\"monospace\";}s:11:\"Vampiro One\";a:3:{s:5:\"label\";s:11:\"Vampiro One\";s:8:\"variants\";a:1:{i:0;s:7:\"regular\";}s:8:\"category\";s:7:\"display\";}s:6:\"Varela\";a:3:{s:5:\"label\";s:6:\"Varela\";s:8:\"variants\";a:1:{i:0;s:7:\"regular\";}s:8:\"category\";s:10:\"sans-serif\";}s:12:\"Varela Round\";a:3:{s:5:\"label\";s:12:\"Varela Round\";s:8:\"variants\";a:1:{i:0;s:7:\"regular\";}s:8:\"category\";s:10:\"sans-serif\";}s:11:\"Vast Shadow\";a:3:{s:5:\"label\";s:11:\"Vast Shadow\";s:8:\"variants\";a:1:{i:0;s:7:\"regular\";}s:8:\"category\";s:7:\"display\";}s:12:\"Vesper Libre\";a:3:{s:5:\"label\";s:12:\"Vesper Libre\";s:8:\"variants\";a:4:{i:0;s:3:\"500\";i:1;s:3:\"700\";i:2;s:3:\"900\";i:3;s:7:\"regular\";}s:8:\"category\";s:5:\"serif\";}s:5:\"Vibur\";a:3:{s:5:\"label\";s:5:\"Vibur\";s:8:\"variants\";a:1:{i:0;s:7:\"regular\";}s:8:\"category\";s:11:\"handwriting\";}s:8:\"Vidaloka\";a:3:{s:5:\"label\";s:8:\"Vidaloka\";s:8:\"variants\";a:1:{i:0;s:7:\"regular\";}s:8:\"category\";s:5:\"serif\";}s:4:\"Viga\";a:3:{s:5:\"label\";s:4:\"Viga\";s:8:\"variants\";a:1:{i:0;s:7:\"regular\";}s:8:\"category\";s:10:\"sans-serif\";}s:5:\"Voces\";a:3:{s:5:\"label\";s:5:\"Voces\";s:8:\"variants\";a:1:{i:0;s:7:\"regular\";}s:8:\"category\";s:7:\"display\";}s:7:\"Volkhov\";a:3:{s:5:\"label\";s:7:\"Volkhov\";s:8:\"variants\";a:4:{i:0;s:3:\"700\";i:1;s:9:\"700italic\";i:2;s:6:\"italic\";i:3;s:7:\"regular\";}s:8:\"category\";s:5:\"serif\";}s:8:\"Vollkorn\";a:3:{s:5:\"label\";s:8:\"Vollkorn\";s:8:\"variants\";a:8:{i:0;s:3:\"600\";i:1;s:9:\"600italic\";i:2;s:3:\"700\";i:3;s:9:\"700italic\";i:4;s:3:\"900\";i:5;s:9:\"900italic\";i:6;s:6:\"italic\";i:7;s:7:\"regular\";}s:8:\"category\";s:5:\"serif\";}s:11:\"Vollkorn SC\";a:3:{s:5:\"label\";s:11:\"Vollkorn SC\";s:8:\"variants\";a:4:{i:0;s:3:\"600\";i:1;s:3:\"700\";i:2;s:3:\"900\";i:3;s:7:\"regular\";}s:8:\"category\";s:5:\"serif\";}s:8:\"Voltaire\";a:3:{s:5:\"label\";s:8:\"Voltaire\";s:8:\"variants\";a:1:{i:0;s:7:\"regular\";}s:8:\"category\";s:10:\"sans-serif\";}s:23:\"Waiting for the Sunrise\";a:3:{s:5:\"label\";s:23:\"Waiting for the Sunrise\";s:8:\"variants\";a:1:{i:0;s:7:\"regular\";}s:8:\"category\";s:11:\"handwriting\";}s:8:\"Wallpoet\";a:3:{s:5:\"label\";s:8:\"Wallpoet\";s:8:\"variants\";a:1:{i:0;s:7:\"regular\";}s:8:\"category\";s:7:\"display\";}s:15:\"Walter Turncoat\";a:3:{s:5:\"label\";s:15:\"Walter Turncoat\";s:8:\"variants\";a:1:{i:0;s:7:\"regular\";}s:8:\"category\";s:11:\"handwriting\";}s:6:\"Warnes\";a:3:{s:5:\"label\";s:6:\"Warnes\";s:8:\"variants\";a:1:{i:0;s:7:\"regular\";}s:8:\"category\";s:7:\"display\";}s:9:\"Wellfleet\";a:3:{s:5:\"label\";s:9:\"Wellfleet\";s:8:\"variants\";a:1:{i:0;s:7:\"regular\";}s:8:\"category\";s:7:\"display\";}s:9:\"Wendy One\";a:3:{s:5:\"label\";s:9:\"Wendy One\";s:8:\"variants\";a:1:{i:0;s:7:\"regular\";}s:8:\"category\";s:10:\"sans-serif\";}s:8:\"Wire One\";a:3:{s:5:\"label\";s:8:\"Wire One\";s:8:\"variants\";a:1:{i:0;s:7:\"regular\";}s:8:\"category\";s:10:\"sans-serif\";}s:9:\"Work Sans\";a:3:{s:5:\"label\";s:9:\"Work Sans\";s:8:\"variants\";a:9:{i:0;s:3:\"100\";i:1;s:3:\"200\";i:2;s:3:\"300\";i:3;s:3:\"500\";i:4;s:3:\"600\";i:5;s:3:\"700\";i:6;s:3:\"800\";i:7;s:3:\"900\";i:8;s:7:\"regular\";}s:8:\"category\";s:10:\"sans-serif\";}s:17:\"Yanone Kaffeesatz\";a:3:{s:5:\"label\";s:17:\"Yanone Kaffeesatz\";s:8:\"variants\";a:4:{i:0;s:3:\"200\";i:1;s:3:\"300\";i:2;s:3:\"700\";i:3;s:7:\"regular\";}s:8:\"category\";s:10:\"sans-serif\";}s:11:\"Yantramanav\";a:3:{s:5:\"label\";s:11:\"Yantramanav\";s:8:\"variants\";a:6:{i:0;s:3:\"100\";i:1;s:3:\"300\";i:2;s:3:\"500\";i:3;s:3:\"700\";i:4;s:3:\"900\";i:5;s:7:\"regular\";}s:8:\"category\";s:10:\"sans-serif\";}s:9:\"Yatra One\";a:3:{s:5:\"label\";s:9:\"Yatra One\";s:8:\"variants\";a:1:{i:0;s:7:\"regular\";}s:8:\"category\";s:7:\"display\";}s:10:\"Yellowtail\";a:3:{s:5:\"label\";s:10:\"Yellowtail\";s:8:\"variants\";a:1:{i:0;s:7:\"regular\";}s:8:\"category\";s:11:\"handwriting\";}s:9:\"Yeon Sung\";a:3:{s:5:\"label\";s:9:\"Yeon Sung\";s:8:\"variants\";a:1:{i:0;s:7:\"regular\";}s:8:\"category\";s:7:\"display\";}s:10:\"Yeseva One\";a:3:{s:5:\"label\";s:10:\"Yeseva One\";s:8:\"variants\";a:1:{i:0;s:7:\"regular\";}s:8:\"category\";s:7:\"display\";}s:10:\"Yesteryear\";a:3:{s:5:\"label\";s:10:\"Yesteryear\";s:8:\"variants\";a:1:{i:0;s:7:\"regular\";}s:8:\"category\";s:11:\"handwriting\";}s:4:\"Yrsa\";a:3:{s:5:\"label\";s:4:\"Yrsa\";s:8:\"variants\";a:5:{i:0;s:3:\"300\";i:1;s:3:\"500\";i:2;s:3:\"600\";i:3;s:3:\"700\";i:4;s:7:\"regular\";}s:8:\"category\";s:5:\"serif\";}s:12:\"ZCOOL KuaiLe\";a:3:{s:5:\"label\";s:12:\"ZCOOL KuaiLe\";s:8:\"variants\";a:1:{i:0;s:7:\"regular\";}s:8:\"category\";s:7:\"display\";}s:21:\"ZCOOL QingKe HuangYou\";a:3:{s:5:\"label\";s:21:\"ZCOOL QingKe HuangYou\";s:8:\"variants\";a:1:{i:0;s:7:\"regular\";}s:8:\"category\";s:7:\"display\";}s:13:\"ZCOOL XiaoWei\";a:3:{s:5:\"label\";s:13:\"ZCOOL XiaoWei\";s:8:\"variants\";a:1:{i:0;s:7:\"regular\";}s:8:\"category\";s:5:\"serif\";}s:6:\"Zeyada\";a:3:{s:5:\"label\";s:6:\"Zeyada\";s:8:\"variants\";a:1:{i:0;s:7:\"regular\";}s:8:\"category\";s:11:\"handwriting\";}s:10:\"Zilla Slab\";a:3:{s:5:\"label\";s:10:\"Zilla Slab\";s:8:\"variants\";a:10:{i:0;s:3:\"300\";i:1;s:9:\"300italic\";i:2;s:3:\"500\";i:3;s:9:\"500italic\";i:4;s:3:\"600\";i:5;s:9:\"600italic\";i:6;s:3:\"700\";i:7;s:9:\"700italic\";i:8;s:6:\"italic\";i:9;s:7:\"regular\";}s:8:\"category\";s:5:\"serif\";}s:20:\"Zilla Slab Highlight\";a:3:{s:5:\"label\";s:20:\"Zilla Slab Highlight\";s:8:\"variants\";a:2:{i:0;s:3:\"700\";i:1;s:7:\"regular\";}s:8:\"category\";s:7:\"display\";}}', 'no');
INSERT INTO `wpblog_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(500, '_transient_is_multi_author', '0', 'yes'),
(434, 'widget_fbw_id', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(342, 'elementor_allow_tracking', 'no', 'yes'),
(343, 'elementor_tracker_notice', '1', 'yes'),
(379, 'elementor_debug_log', 'a:1:{i:0;a:8:{s:4:\"type\";s:9:\"TypeError\";s:9:\"timestamp\";s:10:\"1546783414\";s:7:\"message\";s:37:\"setting getter-only property \\\"type\\\"\";s:3:\"url\";s:94:\"https://autheman-victor.fr/blog/wp-content/plugins/elementor/assets/js/editor.min.js?ver=2.3.8\";s:4:\"line\";s:1:\"2\";s:6:\"column\";s:5:\"91503\";s:12:\"customFields\";a:0:{}s:5:\"times\";i:3;}}', 'no'),
(139, 'can_compress_scripts', '0', 'no'),
(144, 'current_theme', 'Jefferson', 'yes'),
(145, 'theme_mods_jefferson', 'a:9:{i:0;b:0;s:18:\"nav_menu_locations\";a:1:{s:7:\"primary\";i:10;}s:18:\"custom_css_post_id\";i:16;s:23:\"jefferson_homepage_hero\";s:4:\"show\";s:23:\"jefferson_featured_post\";s:4:\"show\";s:26:\"jefferson_featured_post_id\";s:1:\"7\";s:35:\"jefferson_layout_single_post_author\";s:4:\"show\";s:29:\"jefferson_layout_first_footer\";s:4:\"show\";s:32:\"jefferson_homepage_hero_category\";s:1:\"2\";}', 'yes'),
(146, 'theme_switched', '', 'yes'),
(181, '_elementor_installed_time', '1546621344', 'yes');
INSERT INTO `wpblog_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(182, 'elementor_remote_info_library', 'a:3:{s:10:\"types_data\";a:2:{s:5:\"block\";a:1:{s:10:\"categories\";a:22:{i:0;s:8:\"404 page\";i:1;s:5:\"about\";i:2;s:7:\"archive\";i:3;s:14:\"call to action\";i:4;s:7:\"clients\";i:5;s:7:\"contact\";i:6;s:3:\"faq\";i:7;s:8:\"features\";i:8;s:6:\"footer\";i:9;s:6:\"header\";i:10;s:4:\"hero\";i:11;s:9:\"portfolio\";i:12;s:7:\"pricing\";i:13;s:15:\"product archive\";i:14;s:8:\"services\";i:15;s:11:\"single page\";i:16;s:11:\"single post\";i:17;s:14:\"single product\";i:18;s:5:\"stats\";i:19;s:9:\"subscribe\";i:20;s:4:\"team\";i:21;s:12:\"testimonials\";}}s:5:\"popup\";a:1:{s:10:\"categories\";a:6:{i:0;s:10:\"bottom bar\";i:1;s:7:\"classic\";i:2;s:6:\"fly-in\";i:3;s:11:\"full screen\";i:4;s:9:\"hello bar\";i:5;s:8:\"slide-in\";}}}s:10:\"categories\";a:22:{i:0;s:8:\"404 page\";i:1;s:5:\"about\";i:2;s:7:\"archive\";i:3;s:14:\"call to action\";i:4;s:7:\"clients\";i:5;s:7:\"contact\";i:6;s:3:\"faq\";i:7;s:8:\"features\";i:8;s:6:\"footer\";i:9;s:6:\"header\";i:10;s:4:\"hero\";i:11;s:9:\"portfolio\";i:12;s:7:\"pricing\";i:13;s:15:\"product archive\";i:14;s:8:\"services\";i:15;s:11:\"single page\";i:16;s:11:\"single post\";i:17;s:14:\"single product\";i:18;s:5:\"stats\";i:19;s:9:\"subscribe\";i:20;s:4:\"team\";i:21;s:12:\"testimonials\";}s:9:\"templates\";a:454:{i:0;a:14:{s:2:\"id\";s:4:\"5525\";s:5:\"title\";s:8:\"About 14\";s:9:\"thumbnail\";s:75:\"https://library.elementor.com/wp-content/uploads/2018/03/about_white_10.png\";s:12:\"tmpl_created\";s:10:\"1520443532\";s:6:\"author\";s:9:\"Elementor\";s:3:\"url\";s:105:\"https://library.elementor.com/blocks/about-14/?utm_source=library&utm_medium=wp-dash&utm_campaign=preview\";s:4:\"type\";s:5:\"block\";s:7:\"subtype\";s:5:\"about\";s:4:\"tags\";s:9:\"[\"About\"]\";s:10:\"menu_order\";s:1:\"0\";s:16:\"popularity_index\";s:2:\"15\";s:11:\"trend_index\";s:2:\"10\";s:6:\"is_pro\";s:1:\"0\";s:17:\"has_page_settings\";s:1:\"0\";}i:1;a:14:{s:2:\"id\";s:4:\"5533\";s:5:\"title\";s:8:\"About 15\";s:9:\"thumbnail\";s:75:\"https://library.elementor.com/wp-content/uploads/2018/03/about_black_10.png\";s:12:\"tmpl_created\";s:10:\"1520443534\";s:6:\"author\";s:9:\"Elementor\";s:3:\"url\";s:105:\"https://library.elementor.com/blocks/about-15/?utm_source=library&utm_medium=wp-dash&utm_campaign=preview\";s:4:\"type\";s:5:\"block\";s:7:\"subtype\";s:5:\"about\";s:4:\"tags\";s:9:\"[\"About\"]\";s:10:\"menu_order\";s:1:\"0\";s:16:\"popularity_index\";s:2:\"54\";s:11:\"trend_index\";s:2:\"44\";s:6:\"is_pro\";s:1:\"0\";s:17:\"has_page_settings\";s:1:\"0\";}i:2;a:14:{s:2:\"id\";s:4:\"5575\";s:5:\"title\";s:5:\"CTA 7\";s:9:\"thumbnail\";s:72:\"https://library.elementor.com/wp-content/uploads/2018/03/cta_white_3.png\";s:12:\"tmpl_created\";s:10:\"1520443543\";s:6:\"author\";s:9:\"Elementor\";s:3:\"url\";s:102:\"https://library.elementor.com/blocks/cta-7/?utm_source=library&utm_medium=wp-dash&utm_campaign=preview\";s:4:\"type\";s:5:\"block\";s:7:\"subtype\";s:4:\"page\";s:4:\"tags\";s:2:\"[]\";s:10:\"menu_order\";s:1:\"0\";s:16:\"popularity_index\";s:2:\"30\";s:11:\"trend_index\";s:2:\"14\";s:6:\"is_pro\";s:1:\"0\";s:17:\"has_page_settings\";s:1:\"0\";}i:3;a:14:{s:2:\"id\";s:4:\"5615\";s:5:\"title\";s:10:\"Features 6\";s:9:\"thumbnail\";s:72:\"https://library.elementor.com/wp-content/uploads/2018/03/cta_white_5.png\";s:12:\"tmpl_created\";s:10:\"1520443551\";s:6:\"author\";s:9:\"Elementor\";s:3:\"url\";s:107:\"https://library.elementor.com/blocks/features-6/?utm_source=library&utm_medium=wp-dash&utm_campaign=preview\";s:4:\"type\";s:5:\"block\";s:7:\"subtype\";s:8:\"features\";s:4:\"tags\";s:12:\"[\"features\"]\";s:10:\"menu_order\";s:1:\"0\";s:16:\"popularity_index\";s:2:\"47\";s:11:\"trend_index\";s:2:\"22\";s:6:\"is_pro\";s:1:\"0\";s:17:\"has_page_settings\";s:1:\"0\";}i:4;a:14:{s:2:\"id\";s:4:\"5624\";s:5:\"title\";s:10:\"Features 5\";s:9:\"thumbnail\";s:77:\"https://library.elementor.com/wp-content/uploads/2018/03/features_black_1.png\";s:12:\"tmpl_created\";s:10:\"1520443553\";s:6:\"author\";s:9:\"Elementor\";s:3:\"url\";s:107:\"https://library.elementor.com/blocks/features-5/?utm_source=library&utm_medium=wp-dash&utm_campaign=preview\";s:4:\"type\";s:5:\"block\";s:7:\"subtype\";s:8:\"features\";s:4:\"tags\";s:12:\"[\"features\"]\";s:10:\"menu_order\";s:1:\"0\";s:16:\"popularity_index\";s:3:\"102\";s:11:\"trend_index\";s:2:\"76\";s:6:\"is_pro\";s:1:\"0\";s:17:\"has_page_settings\";s:1:\"0\";}i:5;a:14:{s:2:\"id\";s:4:\"5684\";s:5:\"title\";s:5:\"FAQ 8\";s:9:\"thumbnail\";s:72:\"https://library.elementor.com/wp-content/uploads/2018/03/faq_white_1.png\";s:12:\"tmpl_created\";s:10:\"1520443565\";s:6:\"author\";s:9:\"Elementor\";s:3:\"url\";s:102:\"https://library.elementor.com/blocks/faq-8/?utm_source=library&utm_medium=wp-dash&utm_campaign=preview\";s:4:\"type\";s:5:\"block\";s:7:\"subtype\";s:3:\"faq\";s:4:\"tags\";s:7:\"[\"faq\"]\";s:10:\"menu_order\";s:1:\"0\";s:16:\"popularity_index\";s:2:\"83\";s:11:\"trend_index\";s:2:\"66\";s:6:\"is_pro\";s:1:\"0\";s:17:\"has_page_settings\";s:1:\"0\";}i:6;a:14:{s:2:\"id\";s:4:\"5693\";s:5:\"title\";s:5:\"FAQ 9\";s:9:\"thumbnail\";s:72:\"https://library.elementor.com/wp-content/uploads/2018/03/faq_black_1.png\";s:12:\"tmpl_created\";s:10:\"1520443567\";s:6:\"author\";s:9:\"Elementor\";s:3:\"url\";s:102:\"https://library.elementor.com/blocks/faq-9/?utm_source=library&utm_medium=wp-dash&utm_campaign=preview\";s:4:\"type\";s:5:\"block\";s:7:\"subtype\";s:3:\"faq\";s:4:\"tags\";s:7:\"[\"faq\"]\";s:10:\"menu_order\";s:1:\"0\";s:16:\"popularity_index\";s:3:\"210\";s:11:\"trend_index\";s:3:\"166\";s:6:\"is_pro\";s:1:\"0\";s:17:\"has_page_settings\";s:1:\"0\";}i:7;a:14:{s:2:\"id\";s:4:\"5703\";s:5:\"title\";s:6:\"FAQ 13\";s:9:\"thumbnail\";s:72:\"https://library.elementor.com/wp-content/uploads/2018/03/faq_white_2.png\";s:12:\"tmpl_created\";s:10:\"1520443569\";s:6:\"author\";s:9:\"Elementor\";s:3:\"url\";s:103:\"https://library.elementor.com/blocks/faq-13/?utm_source=library&utm_medium=wp-dash&utm_campaign=preview\";s:4:\"type\";s:5:\"block\";s:7:\"subtype\";s:3:\"faq\";s:4:\"tags\";s:7:\"[\"faq\"]\";s:10:\"menu_order\";s:1:\"0\";s:16:\"popularity_index\";s:2:\"51\";s:11:\"trend_index\";s:2:\"41\";s:6:\"is_pro\";s:1:\"0\";s:17:\"has_page_settings\";s:1:\"0\";}i:8;a:14:{s:2:\"id\";s:4:\"5711\";s:5:\"title\";s:5:\"FAQ 1\";s:9:\"thumbnail\";s:72:\"https://library.elementor.com/wp-content/uploads/2018/03/faq_black_2.png\";s:12:\"tmpl_created\";s:10:\"1520443571\";s:6:\"author\";s:9:\"Elementor\";s:3:\"url\";s:102:\"https://library.elementor.com/blocks/faq-1/?utm_source=library&utm_medium=wp-dash&utm_campaign=preview\";s:4:\"type\";s:5:\"block\";s:7:\"subtype\";s:3:\"faq\";s:4:\"tags\";s:7:\"[\"faq\"]\";s:10:\"menu_order\";s:1:\"0\";s:16:\"popularity_index\";s:3:\"212\";s:11:\"trend_index\";s:3:\"237\";s:6:\"is_pro\";s:1:\"0\";s:17:\"has_page_settings\";s:1:\"0\";}i:9;a:14:{s:2:\"id\";s:4:\"5719\";s:5:\"title\";s:5:\"FAQ 4\";s:9:\"thumbnail\";s:72:\"https://library.elementor.com/wp-content/uploads/2018/03/faq_white_3.png\";s:12:\"tmpl_created\";s:10:\"1520443573\";s:6:\"author\";s:9:\"Elementor\";s:3:\"url\";s:102:\"https://library.elementor.com/blocks/faq-4/?utm_source=library&utm_medium=wp-dash&utm_campaign=preview\";s:4:\"type\";s:5:\"block\";s:7:\"subtype\";s:3:\"faq\";s:4:\"tags\";s:7:\"[\"faq\"]\";s:10:\"menu_order\";s:1:\"0\";s:16:\"popularity_index\";s:3:\"128\";s:11:\"trend_index\";s:3:\"182\";s:6:\"is_pro\";s:1:\"0\";s:17:\"has_page_settings\";s:1:\"0\";}i:10;a:14:{s:2:\"id\";s:4:\"5729\";s:5:\"title\";s:5:\"FAQ 5\";s:9:\"thumbnail\";s:72:\"https://library.elementor.com/wp-content/uploads/2018/03/faq_black_3.png\";s:12:\"tmpl_created\";s:10:\"1520443575\";s:6:\"author\";s:9:\"Elementor\";s:3:\"url\";s:102:\"https://library.elementor.com/blocks/faq-5/?utm_source=library&utm_medium=wp-dash&utm_campaign=preview\";s:4:\"type\";s:5:\"block\";s:7:\"subtype\";s:3:\"faq\";s:4:\"tags\";s:7:\"[\"faq\"]\";s:10:\"menu_order\";s:1:\"0\";s:16:\"popularity_index\";s:3:\"317\";s:11:\"trend_index\";s:3:\"342\";s:6:\"is_pro\";s:1:\"0\";s:17:\"has_page_settings\";s:1:\"0\";}i:11;a:14:{s:2:\"id\";s:4:\"5737\";s:5:\"title\";s:6:\"FAQ 10\";s:9:\"thumbnail\";s:72:\"https://library.elementor.com/wp-content/uploads/2018/03/faq_white_4.png\";s:12:\"tmpl_created\";s:10:\"1520443576\";s:6:\"author\";s:9:\"Elementor\";s:3:\"url\";s:103:\"https://library.elementor.com/blocks/faq-10/?utm_source=library&utm_medium=wp-dash&utm_campaign=preview\";s:4:\"type\";s:5:\"block\";s:7:\"subtype\";s:3:\"faq\";s:4:\"tags\";s:7:\"[\"faq\"]\";s:10:\"menu_order\";s:1:\"0\";s:16:\"popularity_index\";s:3:\"166\";s:11:\"trend_index\";s:3:\"167\";s:6:\"is_pro\";s:1:\"0\";s:17:\"has_page_settings\";s:1:\"0\";}i:12;a:14:{s:2:\"id\";s:4:\"5746\";s:5:\"title\";s:6:\"FAQ 11\";s:9:\"thumbnail\";s:72:\"https://library.elementor.com/wp-content/uploads/2018/03/faq_black_4.png\";s:12:\"tmpl_created\";s:10:\"1520443578\";s:6:\"author\";s:9:\"Elementor\";s:3:\"url\";s:103:\"https://library.elementor.com/blocks/faq-11/?utm_source=library&utm_medium=wp-dash&utm_campaign=preview\";s:4:\"type\";s:5:\"block\";s:7:\"subtype\";s:3:\"faq\";s:4:\"tags\";s:7:\"[\"faq\"]\";s:10:\"menu_order\";s:1:\"0\";s:16:\"popularity_index\";s:3:\"193\";s:11:\"trend_index\";s:3:\"219\";s:6:\"is_pro\";s:1:\"0\";s:17:\"has_page_settings\";s:1:\"0\";}i:13;a:14:{s:2:\"id\";s:4:\"5755\";s:5:\"title\";s:5:\"FAQ 6\";s:9:\"thumbnail\";s:72:\"https://library.elementor.com/wp-content/uploads/2018/03/faq_white_5.png\";s:12:\"tmpl_created\";s:10:\"1520443580\";s:6:\"author\";s:9:\"Elementor\";s:3:\"url\";s:102:\"https://library.elementor.com/blocks/faq-6/?utm_source=library&utm_medium=wp-dash&utm_campaign=preview\";s:4:\"type\";s:5:\"block\";s:7:\"subtype\";s:3:\"faq\";s:4:\"tags\";s:7:\"[\"faq\"]\";s:10:\"menu_order\";s:1:\"0\";s:16:\"popularity_index\";s:3:\"101\";s:11:\"trend_index\";s:2:\"89\";s:6:\"is_pro\";s:1:\"0\";s:17:\"has_page_settings\";s:1:\"0\";}i:14;a:14:{s:2:\"id\";s:4:\"5764\";s:5:\"title\";s:5:\"FAQ 7\";s:9:\"thumbnail\";s:72:\"https://library.elementor.com/wp-content/uploads/2018/03/faq_black_5.png\";s:12:\"tmpl_created\";s:10:\"1520443582\";s:6:\"author\";s:9:\"Elementor\";s:3:\"url\";s:102:\"https://library.elementor.com/blocks/faq-7/?utm_source=library&utm_medium=wp-dash&utm_campaign=preview\";s:4:\"type\";s:5:\"block\";s:7:\"subtype\";s:3:\"faq\";s:4:\"tags\";s:7:\"[\"faq\"]\";s:10:\"menu_order\";s:1:\"0\";s:16:\"popularity_index\";s:3:\"316\";s:11:\"trend_index\";s:3:\"321\";s:6:\"is_pro\";s:1:\"0\";s:17:\"has_page_settings\";s:1:\"0\";}i:15;a:14:{s:2:\"id\";s:4:\"5773\";s:5:\"title\";s:7:\"Hero 11\";s:9:\"thumbnail\";s:69:\"https://library.elementor.com/wp-content/uploads/2018/03/header_1.png\";s:12:\"tmpl_created\";s:10:\"1520443584\";s:6:\"author\";s:9:\"Elementor\";s:3:\"url\";s:104:\"https://library.elementor.com/blocks/hero-11/?utm_source=library&utm_medium=wp-dash&utm_campaign=preview\";s:4:\"type\";s:5:\"block\";s:7:\"subtype\";s:4:\"hero\";s:4:\"tags\";s:2:\"[]\";s:10:\"menu_order\";s:1:\"0\";s:16:\"popularity_index\";s:2:\"41\";s:11:\"trend_index\";s:2:\"28\";s:6:\"is_pro\";s:1:\"0\";s:17:\"has_page_settings\";s:1:\"0\";}i:16;a:14:{s:2:\"id\";s:4:\"5783\";s:5:\"title\";s:7:\"Hero 10\";s:9:\"thumbnail\";s:69:\"https://library.elementor.com/wp-content/uploads/2018/03/header_2.png\";s:12:\"tmpl_created\";s:10:\"1520443586\";s:6:\"author\";s:9:\"Elementor\";s:3:\"url\";s:104:\"https://library.elementor.com/blocks/hero-10/?utm_source=library&utm_medium=wp-dash&utm_campaign=preview\";s:4:\"type\";s:5:\"block\";s:7:\"subtype\";s:4:\"hero\";s:4:\"tags\";s:2:\"[]\";s:10:\"menu_order\";s:1:\"0\";s:16:\"popularity_index\";s:3:\"329\";s:11:\"trend_index\";s:3:\"311\";s:6:\"is_pro\";s:1:\"1\";s:17:\"has_page_settings\";s:1:\"0\";}i:17;a:14:{s:2:\"id\";s:4:\"5792\";s:5:\"title\";s:6:\"Hero 9\";s:9:\"thumbnail\";s:69:\"https://library.elementor.com/wp-content/uploads/2018/03/header_3.png\";s:12:\"tmpl_created\";s:10:\"1520443588\";s:6:\"author\";s:9:\"Elementor\";s:3:\"url\";s:103:\"https://library.elementor.com/blocks/hero-9/?utm_source=library&utm_medium=wp-dash&utm_campaign=preview\";s:4:\"type\";s:5:\"block\";s:7:\"subtype\";s:4:\"hero\";s:4:\"tags\";s:2:\"[]\";s:10:\"menu_order\";s:1:\"0\";s:16:\"popularity_index\";s:3:\"215\";s:11:\"trend_index\";s:3:\"213\";s:6:\"is_pro\";s:1:\"1\";s:17:\"has_page_settings\";s:1:\"0\";}i:18;a:14:{s:2:\"id\";s:4:\"5801\";s:5:\"title\";s:6:\"Hero 7\";s:9:\"thumbnail\";s:69:\"https://library.elementor.com/wp-content/uploads/2018/03/header_4.png\";s:12:\"tmpl_created\";s:10:\"1520443589\";s:6:\"author\";s:9:\"Elementor\";s:3:\"url\";s:103:\"https://library.elementor.com/blocks/hero-7/?utm_source=library&utm_medium=wp-dash&utm_campaign=preview\";s:4:\"type\";s:5:\"block\";s:7:\"subtype\";s:4:\"hero\";s:4:\"tags\";s:10:\"[\"header\"]\";s:10:\"menu_order\";s:1:\"0\";s:16:\"popularity_index\";s:2:\"29\";s:11:\"trend_index\";s:2:\"18\";s:6:\"is_pro\";s:1:\"0\";s:17:\"has_page_settings\";s:1:\"0\";}i:19;a:14:{s:2:\"id\";s:4:\"5811\";s:5:\"title\";s:6:\"Hero 8\";s:9:\"thumbnail\";s:69:\"https://library.elementor.com/wp-content/uploads/2018/03/header_5.png\";s:12:\"tmpl_created\";s:10:\"1520443591\";s:6:\"author\";s:9:\"Elementor\";s:3:\"url\";s:103:\"https://library.elementor.com/blocks/hero-8/?utm_source=library&utm_medium=wp-dash&utm_campaign=preview\";s:4:\"type\";s:5:\"block\";s:7:\"subtype\";s:4:\"hero\";s:4:\"tags\";s:2:\"[]\";s:10:\"menu_order\";s:1:\"0\";s:16:\"popularity_index\";s:3:\"107\";s:11:\"trend_index\";s:3:\"117\";s:6:\"is_pro\";s:1:\"0\";s:17:\"has_page_settings\";s:1:\"0\";}i:20;a:14:{s:2:\"id\";s:4:\"5820\";s:5:\"title\";s:9:\"Contact 2\";s:9:\"thumbnail\";s:76:\"https://library.elementor.com/wp-content/uploads/2018/03/contact_white_1.png\";s:12:\"tmpl_created\";s:10:\"1520443593\";s:6:\"author\";s:9:\"Elementor\";s:3:\"url\";s:106:\"https://library.elementor.com/blocks/contact-2/?utm_source=library&utm_medium=wp-dash&utm_campaign=preview\";s:4:\"type\";s:5:\"block\";s:7:\"subtype\";s:7:\"contact\";s:4:\"tags\";s:11:\"[\"contact\"]\";s:10:\"menu_order\";s:1:\"0\";s:16:\"popularity_index\";s:3:\"179\";s:11:\"trend_index\";s:3:\"200\";s:6:\"is_pro\";s:1:\"1\";s:17:\"has_page_settings\";s:1:\"0\";}i:21;a:14:{s:2:\"id\";s:4:\"5828\";s:5:\"title\";s:9:\"Contact 3\";s:9:\"thumbnail\";s:76:\"https://library.elementor.com/wp-content/uploads/2018/03/contact_black_1.png\";s:12:\"tmpl_created\";s:10:\"1520443595\";s:6:\"author\";s:9:\"Elementor\";s:3:\"url\";s:106:\"https://library.elementor.com/blocks/contact-3/?utm_source=library&utm_medium=wp-dash&utm_campaign=preview\";s:4:\"type\";s:5:\"block\";s:7:\"subtype\";s:7:\"contact\";s:4:\"tags\";s:11:\"[\"contact\"]\";s:10:\"menu_order\";s:1:\"0\";s:16:\"popularity_index\";s:3:\"304\";s:11:\"trend_index\";s:3:\"217\";s:6:\"is_pro\";s:1:\"1\";s:17:\"has_page_settings\";s:1:\"0\";}i:22;a:14:{s:2:\"id\";s:4:\"5836\";s:5:\"title\";s:10:\"Contact 10\";s:9:\"thumbnail\";s:76:\"https://library.elementor.com/wp-content/uploads/2018/03/contact_white_2.png\";s:12:\"tmpl_created\";s:10:\"1520443597\";s:6:\"author\";s:9:\"Elementor\";s:3:\"url\";s:107:\"https://library.elementor.com/blocks/contact-10/?utm_source=library&utm_medium=wp-dash&utm_campaign=preview\";s:4:\"type\";s:5:\"block\";s:7:\"subtype\";s:7:\"contact\";s:4:\"tags\";s:11:\"[\"contact\"]\";s:10:\"menu_order\";s:1:\"0\";s:16:\"popularity_index\";s:3:\"114\";s:11:\"trend_index\";s:3:\"139\";s:6:\"is_pro\";s:1:\"1\";s:17:\"has_page_settings\";s:1:\"0\";}i:23;a:14:{s:2:\"id\";s:4:\"5844\";s:5:\"title\";s:10:\"Contact 11\";s:9:\"thumbnail\";s:76:\"https://library.elementor.com/wp-content/uploads/2018/03/contact_black_2.png\";s:12:\"tmpl_created\";s:10:\"1520443599\";s:6:\"author\";s:9:\"Elementor\";s:3:\"url\";s:107:\"https://library.elementor.com/blocks/contact-11/?utm_source=library&utm_medium=wp-dash&utm_campaign=preview\";s:4:\"type\";s:5:\"block\";s:7:\"subtype\";s:7:\"contact\";s:4:\"tags\";s:11:\"[\"contact\"]\";s:10:\"menu_order\";s:1:\"0\";s:16:\"popularity_index\";s:3:\"291\";s:11:\"trend_index\";s:3:\"242\";s:6:\"is_pro\";s:1:\"1\";s:17:\"has_page_settings\";s:1:\"0\";}i:24;a:14:{s:2:\"id\";s:4:\"5852\";s:5:\"title\";s:6:\"CTA 34\";s:9:\"thumbnail\";s:67:\"https://library.elementor.com/wp-content/uploads/2018/03/form_1.png\";s:12:\"tmpl_created\";s:10:\"1520443600\";s:6:\"author\";s:9:\"Elementor\";s:3:\"url\";s:103:\"https://library.elementor.com/blocks/cta-34/?utm_source=library&utm_medium=wp-dash&utm_campaign=preview\";s:4:\"type\";s:5:\"block\";s:7:\"subtype\";s:4:\"page\";s:4:\"tags\";s:8:\"[\"form\"]\";s:10:\"menu_order\";s:1:\"0\";s:16:\"popularity_index\";s:3:\"421\";s:11:\"trend_index\";s:3:\"408\";s:6:\"is_pro\";s:1:\"1\";s:17:\"has_page_settings\";s:1:\"0\";}i:25;a:14:{s:2:\"id\";s:4:\"5947\";s:5:\"title\";s:7:\"Stats 8\";s:9:\"thumbnail\";s:76:\"https://library.elementor.com/wp-content/uploads/2018/03/numbers_white_1.png\";s:12:\"tmpl_created\";s:10:\"1520443621\";s:6:\"author\";s:9:\"Elementor\";s:3:\"url\";s:104:\"https://library.elementor.com/blocks/stats-8/?utm_source=library&utm_medium=wp-dash&utm_campaign=preview\";s:4:\"type\";s:5:\"block\";s:7:\"subtype\";s:5:\"stats\";s:4:\"tags\";s:9:\"[\"Stats\"]\";s:10:\"menu_order\";s:1:\"0\";s:16:\"popularity_index\";s:3:\"347\";s:11:\"trend_index\";s:3:\"320\";s:6:\"is_pro\";s:1:\"1\";s:17:\"has_page_settings\";s:1:\"0\";}i:26;a:14:{s:2:\"id\";s:4:\"5956\";s:5:\"title\";s:7:\"Stats 7\";s:9:\"thumbnail\";s:76:\"https://library.elementor.com/wp-content/uploads/2018/03/numbers_black_1.png\";s:12:\"tmpl_created\";s:10:\"1520443623\";s:6:\"author\";s:9:\"Elementor\";s:3:\"url\";s:104:\"https://library.elementor.com/blocks/stats-7/?utm_source=library&utm_medium=wp-dash&utm_campaign=preview\";s:4:\"type\";s:5:\"block\";s:7:\"subtype\";s:5:\"stats\";s:4:\"tags\";s:9:\"[\"Stats\"]\";s:10:\"menu_order\";s:1:\"0\";s:16:\"popularity_index\";s:3:\"411\";s:11:\"trend_index\";s:3:\"419\";s:6:\"is_pro\";s:1:\"1\";s:17:\"has_page_settings\";s:1:\"0\";}i:27;a:14:{s:2:\"id\";s:4:\"5963\";s:5:\"title\";s:10:\"Features 7\";s:9:\"thumbnail\";s:77:\"https://library.elementor.com/wp-content/uploads/2018/03/features_white_2.png\";s:12:\"tmpl_created\";s:10:\"1520443626\";s:6:\"author\";s:9:\"Elementor\";s:3:\"url\";s:107:\"https://library.elementor.com/blocks/features-7/?utm_source=library&utm_medium=wp-dash&utm_campaign=preview\";s:4:\"type\";s:5:\"block\";s:7:\"subtype\";s:8:\"features\";s:4:\"tags\";s:12:\"[\"features\"]\";s:10:\"menu_order\";s:1:\"0\";s:16:\"popularity_index\";s:2:\"79\";s:11:\"trend_index\";s:2:\"73\";s:6:\"is_pro\";s:1:\"0\";s:17:\"has_page_settings\";s:1:\"0\";}i:28;a:14:{s:2:\"id\";s:4:\"5974\";s:5:\"title\";s:10:\"Features 4\";s:9:\"thumbnail\";s:77:\"https://library.elementor.com/wp-content/uploads/2018/03/features_white_3.png\";s:12:\"tmpl_created\";s:10:\"1520443629\";s:6:\"author\";s:9:\"Elementor\";s:3:\"url\";s:107:\"https://library.elementor.com/blocks/features-4/?utm_source=library&utm_medium=wp-dash&utm_campaign=preview\";s:4:\"type\";s:5:\"block\";s:7:\"subtype\";s:8:\"features\";s:4:\"tags\";s:12:\"[\"features\"]\";s:10:\"menu_order\";s:1:\"0\";s:16:\"popularity_index\";s:2:\"74\";s:11:\"trend_index\";s:2:\"56\";s:6:\"is_pro\";s:1:\"0\";s:17:\"has_page_settings\";s:1:\"0\";}i:29;a:14:{s:2:\"id\";s:4:\"5983\";s:5:\"title\";s:10:\"Features 3\";s:9:\"thumbnail\";s:77:\"https://library.elementor.com/wp-content/uploads/2018/03/features_black_3.png\";s:12:\"tmpl_created\";s:10:\"1520443630\";s:6:\"author\";s:9:\"Elementor\";s:3:\"url\";s:107:\"https://library.elementor.com/blocks/features-3/?utm_source=library&utm_medium=wp-dash&utm_campaign=preview\";s:4:\"type\";s:5:\"block\";s:7:\"subtype\";s:8:\"features\";s:4:\"tags\";s:11:\"[\"featues\"]\";s:10:\"menu_order\";s:1:\"0\";s:16:\"popularity_index\";s:3:\"241\";s:11:\"trend_index\";s:3:\"223\";s:6:\"is_pro\";s:1:\"0\";s:17:\"has_page_settings\";s:1:\"0\";}i:30;a:14:{s:2:\"id\";s:4:\"5991\";s:5:\"title\";s:11:\"Features 10\";s:9:\"thumbnail\";s:77:\"https://library.elementor.com/wp-content/uploads/2018/03/features_white_4.png\";s:12:\"tmpl_created\";s:10:\"1520443632\";s:6:\"author\";s:9:\"Elementor\";s:3:\"url\";s:108:\"https://library.elementor.com/blocks/features-10/?utm_source=library&utm_medium=wp-dash&utm_campaign=preview\";s:4:\"type\";s:5:\"block\";s:7:\"subtype\";s:8:\"features\";s:4:\"tags\";s:12:\"[\"features\"]\";s:10:\"menu_order\";s:1:\"0\";s:16:\"popularity_index\";s:3:\"123\";s:11:\"trend_index\";s:3:\"129\";s:6:\"is_pro\";s:1:\"0\";s:17:\"has_page_settings\";s:1:\"0\";}i:31;a:14:{s:2:\"id\";s:4:\"5999\";s:5:\"title\";s:7:\"Team 14\";s:9:\"thumbnail\";s:74:\"https://library.elementor.com/wp-content/uploads/2018/03/team_black_10.png\";s:12:\"tmpl_created\";s:10:\"1520443634\";s:6:\"author\";s:9:\"Elementor\";s:3:\"url\";s:104:\"https://library.elementor.com/blocks/team-14/?utm_source=library&utm_medium=wp-dash&utm_campaign=preview\";s:4:\"type\";s:5:\"block\";s:7:\"subtype\";s:4:\"team\";s:4:\"tags\";s:8:\"[\"team\"]\";s:10:\"menu_order\";s:1:\"0\";s:16:\"popularity_index\";s:2:\"90\";s:11:\"trend_index\";s:2:\"88\";s:6:\"is_pro\";s:1:\"0\";s:17:\"has_page_settings\";s:1:\"0\";}i:32;a:14:{s:2:\"id\";s:4:\"6008\";s:5:\"title\";s:6:\"Team 6\";s:9:\"thumbnail\";s:74:\"https://library.elementor.com/wp-content/uploads/2018/03/team_white_10.png\";s:12:\"tmpl_created\";s:10:\"1520443636\";s:6:\"author\";s:9:\"Elementor\";s:3:\"url\";s:103:\"https://library.elementor.com/blocks/team-6/?utm_source=library&utm_medium=wp-dash&utm_campaign=preview\";s:4:\"type\";s:5:\"block\";s:7:\"subtype\";s:4:\"team\";s:4:\"tags\";s:8:\"[\"team\"]\";s:10:\"menu_order\";s:1:\"0\";s:16:\"popularity_index\";s:2:\"80\";s:11:\"trend_index\";s:2:\"84\";s:6:\"is_pro\";s:1:\"0\";s:17:\"has_page_settings\";s:1:\"0\";}i:33;a:14:{s:2:\"id\";s:4:\"6027\";s:5:\"title\";s:7:\"About 5\";s:9:\"thumbnail\";s:76:\"https://library.elementor.com/wp-content/uploads/2018/03/about_white_1-1.png\";s:12:\"tmpl_created\";s:10:\"1520443639\";s:6:\"author\";s:9:\"Elementor\";s:3:\"url\";s:106:\"https://library.elementor.com/blocks/about-5-3/?utm_source=library&utm_medium=wp-dash&utm_campaign=preview\";s:4:\"type\";s:5:\"block\";s:7:\"subtype\";s:5:\"about\";s:4:\"tags\";s:9:\"[\"About\"]\";s:10:\"menu_order\";s:1:\"0\";s:16:\"popularity_index\";s:2:\"55\";s:11:\"trend_index\";s:2:\"35\";s:6:\"is_pro\";s:1:\"0\";s:17:\"has_page_settings\";s:1:\"0\";}i:34;a:14:{s:2:\"id\";s:4:\"6036\";s:5:\"title\";s:7:\"About 6\";s:9:\"thumbnail\";s:76:\"https://library.elementor.com/wp-content/uploads/2018/03/about_black_1-1.png\";s:12:\"tmpl_created\";s:10:\"1520443641\";s:6:\"author\";s:9:\"Elementor\";s:3:\"url\";s:106:\"https://library.elementor.com/blocks/about-6-3/?utm_source=library&utm_medium=wp-dash&utm_campaign=preview\";s:4:\"type\";s:5:\"block\";s:7:\"subtype\";s:5:\"about\";s:4:\"tags\";s:9:\"[\"About\"]\";s:10:\"menu_order\";s:1:\"0\";s:16:\"popularity_index\";s:2:\"98\";s:11:\"trend_index\";s:3:\"141\";s:6:\"is_pro\";s:1:\"0\";s:17:\"has_page_settings\";s:1:\"0\";}i:35;a:14:{s:2:\"id\";s:4:\"6044\";s:5:\"title\";s:11:\"Features 11\";s:9:\"thumbnail\";s:77:\"https://library.elementor.com/wp-content/uploads/2018/03/features_white_5.png\";s:12:\"tmpl_created\";s:10:\"1520443643\";s:6:\"author\";s:9:\"Elementor\";s:3:\"url\";s:108:\"https://library.elementor.com/blocks/features-11/?utm_source=library&utm_medium=wp-dash&utm_campaign=preview\";s:4:\"type\";s:5:\"block\";s:7:\"subtype\";s:8:\"features\";s:4:\"tags\";s:12:\"[\"features\"]\";s:10:\"menu_order\";s:1:\"0\";s:16:\"popularity_index\";s:2:\"82\";s:11:\"trend_index\";s:2:\"82\";s:6:\"is_pro\";s:1:\"0\";s:17:\"has_page_settings\";s:1:\"0\";}i:36;a:14:{s:2:\"id\";s:4:\"6053\";s:5:\"title\";s:10:\"Features 1\";s:9:\"thumbnail\";s:77:\"https://library.elementor.com/wp-content/uploads/2018/03/features_black_5.png\";s:12:\"tmpl_created\";s:10:\"1520443645\";s:6:\"author\";s:9:\"Elementor\";s:3:\"url\";s:107:\"https://library.elementor.com/blocks/features-1/?utm_source=library&utm_medium=wp-dash&utm_campaign=preview\";s:4:\"type\";s:5:\"block\";s:7:\"subtype\";s:8:\"features\";s:4:\"tags\";s:12:\"[\"features\"]\";s:10:\"menu_order\";s:1:\"0\";s:16:\"popularity_index\";s:3:\"172\";s:11:\"trend_index\";s:3:\"204\";s:6:\"is_pro\";s:1:\"0\";s:17:\"has_page_settings\";s:1:\"0\";}i:37;a:14:{s:2:\"id\";s:4:\"6063\";s:5:\"title\";s:7:\"Stats 5\";s:9:\"thumbnail\";s:76:\"https://library.elementor.com/wp-content/uploads/2018/03/numbers_white_2.png\";s:12:\"tmpl_created\";s:10:\"1520443647\";s:6:\"author\";s:9:\"Elementor\";s:3:\"url\";s:104:\"https://library.elementor.com/blocks/stats-5/?utm_source=library&utm_medium=wp-dash&utm_campaign=preview\";s:4:\"type\";s:5:\"block\";s:7:\"subtype\";s:5:\"stats\";s:4:\"tags\";s:11:\"[\"numbers\"]\";s:10:\"menu_order\";s:1:\"0\";s:16:\"popularity_index\";s:3:\"157\";s:11:\"trend_index\";s:3:\"172\";s:6:\"is_pro\";s:1:\"0\";s:17:\"has_page_settings\";s:1:\"0\";}i:38;a:14:{s:2:\"id\";s:4:\"6071\";s:5:\"title\";s:8:\"Stats 13\";s:9:\"thumbnail\";s:76:\"https://library.elementor.com/wp-content/uploads/2018/03/numbers_white_3.png\";s:12:\"tmpl_created\";s:10:\"1520443649\";s:6:\"author\";s:9:\"Elementor\";s:3:\"url\";s:105:\"https://library.elementor.com/blocks/stats-13/?utm_source=library&utm_medium=wp-dash&utm_campaign=preview\";s:4:\"type\";s:5:\"block\";s:7:\"subtype\";s:5:\"stats\";s:4:\"tags\";s:11:\"[\"numbers\"]\";s:10:\"menu_order\";s:1:\"0\";s:16:\"popularity_index\";s:3:\"160\";s:11:\"trend_index\";s:3:\"156\";s:6:\"is_pro\";s:1:\"0\";s:17:\"has_page_settings\";s:1:\"0\";}i:39;a:14:{s:2:\"id\";s:4:\"6079\";s:5:\"title\";s:7:\"Stats 3\";s:9:\"thumbnail\";s:76:\"https://library.elementor.com/wp-content/uploads/2018/03/numbers_white_4.png\";s:12:\"tmpl_created\";s:10:\"1520443651\";s:6:\"author\";s:9:\"Elementor\";s:3:\"url\";s:104:\"https://library.elementor.com/blocks/stats-3/?utm_source=library&utm_medium=wp-dash&utm_campaign=preview\";s:4:\"type\";s:5:\"block\";s:7:\"subtype\";s:5:\"stats\";s:4:\"tags\";s:11:\"[\"numbers\"]\";s:10:\"menu_order\";s:1:\"0\";s:16:\"popularity_index\";s:3:\"284\";s:11:\"trend_index\";s:3:\"295\";s:6:\"is_pro\";s:1:\"0\";s:17:\"has_page_settings\";s:1:\"0\";}i:40;a:14:{s:2:\"id\";s:4:\"6089\";s:5:\"title\";s:7:\"Stats 4\";s:9:\"thumbnail\";s:76:\"https://library.elementor.com/wp-content/uploads/2018/03/numbers_white_5.png\";s:12:\"tmpl_created\";s:10:\"1520443653\";s:6:\"author\";s:9:\"Elementor\";s:3:\"url\";s:104:\"https://library.elementor.com/blocks/stats-4/?utm_source=library&utm_medium=wp-dash&utm_campaign=preview\";s:4:\"type\";s:5:\"block\";s:7:\"subtype\";s:5:\"stats\";s:4:\"tags\";s:9:\"[\"Stats\"]\";s:10:\"menu_order\";s:1:\"0\";s:16:\"popularity_index\";s:3:\"181\";s:11:\"trend_index\";s:3:\"158\";s:6:\"is_pro\";s:1:\"0\";s:17:\"has_page_settings\";s:1:\"0\";}i:41;a:14:{s:2:\"id\";s:4:\"6097\";s:5:\"title\";s:7:\"Stats 6\";s:9:\"thumbnail\";s:76:\"https://library.elementor.com/wp-content/uploads/2018/03/numbers_black_2.png\";s:12:\"tmpl_created\";s:10:\"1520443655\";s:6:\"author\";s:9:\"Elementor\";s:3:\"url\";s:104:\"https://library.elementor.com/blocks/stats-6/?utm_source=library&utm_medium=wp-dash&utm_campaign=preview\";s:4:\"type\";s:5:\"block\";s:7:\"subtype\";s:5:\"stats\";s:4:\"tags\";s:11:\"[\"numbers\"]\";s:10:\"menu_order\";s:1:\"0\";s:16:\"popularity_index\";s:3:\"270\";s:11:\"trend_index\";s:3:\"296\";s:6:\"is_pro\";s:1:\"0\";s:17:\"has_page_settings\";s:1:\"0\";}i:42;a:14:{s:2:\"id\";s:4:\"6106\";s:5:\"title\";s:7:\"Stats 2\";s:9:\"thumbnail\";s:76:\"https://library.elementor.com/wp-content/uploads/2018/03/numbers_white_6.png\";s:12:\"tmpl_created\";s:10:\"1520443657\";s:6:\"author\";s:9:\"Elementor\";s:3:\"url\";s:104:\"https://library.elementor.com/blocks/stats-2/?utm_source=library&utm_medium=wp-dash&utm_campaign=preview\";s:4:\"type\";s:5:\"block\";s:7:\"subtype\";s:5:\"stats\";s:4:\"tags\";s:11:\"[\"numbers\"]\";s:10:\"menu_order\";s:1:\"0\";s:16:\"popularity_index\";s:3:\"333\";s:11:\"trend_index\";s:3:\"290\";s:6:\"is_pro\";s:1:\"0\";s:17:\"has_page_settings\";s:1:\"0\";}i:43;a:14:{s:2:\"id\";s:4:\"6114\";s:5:\"title\";s:7:\"Stats 1\";s:9:\"thumbnail\";s:76:\"https://library.elementor.com/wp-content/uploads/2018/03/numbers_black_6.png\";s:12:\"tmpl_created\";s:10:\"1520443659\";s:6:\"author\";s:9:\"Elementor\";s:3:\"url\";s:104:\"https://library.elementor.com/blocks/stats-1/?utm_source=library&utm_medium=wp-dash&utm_campaign=preview\";s:4:\"type\";s:5:\"block\";s:7:\"subtype\";s:5:\"stats\";s:4:\"tags\";s:11:\"[\"numbers\"]\";s:10:\"menu_order\";s:1:\"0\";s:16:\"popularity_index\";s:3:\"366\";s:11:\"trend_index\";s:3:\"355\";s:6:\"is_pro\";s:1:\"0\";s:17:\"has_page_settings\";s:1:\"0\";}i:44;a:14:{s:2:\"id\";s:4:\"6122\";s:5:\"title\";s:7:\"About 8\";s:9:\"thumbnail\";s:76:\"https://library.elementor.com/wp-content/uploads/2018/03/about_white_2-1.png\";s:12:\"tmpl_created\";s:10:\"1520443661\";s:6:\"author\";s:9:\"Elementor\";s:3:\"url\";s:104:\"https://library.elementor.com/blocks/about-8/?utm_source=library&utm_medium=wp-dash&utm_campaign=preview\";s:4:\"type\";s:5:\"block\";s:7:\"subtype\";s:5:\"about\";s:4:\"tags\";s:9:\"[\"About\"]\";s:10:\"menu_order\";s:1:\"0\";s:16:\"popularity_index\";s:2:\"53\";s:11:\"trend_index\";s:2:\"37\";s:6:\"is_pro\";s:1:\"0\";s:17:\"has_page_settings\";s:1:\"0\";}i:45;a:14:{s:2:\"id\";s:4:\"6135\";s:5:\"title\";s:8:\"About 10\";s:9:\"thumbnail\";s:74:\"https://library.elementor.com/wp-content/uploads/2018/03/about_black_2.png\";s:12:\"tmpl_created\";s:10:\"1520443663\";s:6:\"author\";s:9:\"Elementor\";s:3:\"url\";s:105:\"https://library.elementor.com/blocks/about-10/?utm_source=library&utm_medium=wp-dash&utm_campaign=preview\";s:4:\"type\";s:5:\"block\";s:7:\"subtype\";s:5:\"about\";s:4:\"tags\";s:9:\"[\"About\"]\";s:10:\"menu_order\";s:1:\"0\";s:16:\"popularity_index\";s:2:\"89\";s:11:\"trend_index\";s:2:\"92\";s:6:\"is_pro\";s:1:\"0\";s:17:\"has_page_settings\";s:1:\"0\";}i:46;a:14:{s:2:\"id\";s:4:\"6144\";s:5:\"title\";s:7:\"Team 17\";s:9:\"thumbnail\";s:74:\"https://library.elementor.com/wp-content/uploads/2018/03/team_white_11.png\";s:12:\"tmpl_created\";s:10:\"1520443664\";s:6:\"author\";s:9:\"Elementor\";s:3:\"url\";s:104:\"https://library.elementor.com/blocks/team-17/?utm_source=library&utm_medium=wp-dash&utm_campaign=preview\";s:4:\"type\";s:5:\"block\";s:7:\"subtype\";s:4:\"team\";s:4:\"tags\";s:8:\"[\"team\"]\";s:10:\"menu_order\";s:1:\"0\";s:16:\"popularity_index\";s:3:\"155\";s:11:\"trend_index\";s:3:\"152\";s:6:\"is_pro\";s:1:\"0\";s:17:\"has_page_settings\";s:1:\"0\";}i:47;a:14:{s:2:\"id\";s:4:\"6152\";s:5:\"title\";s:7:\"Stats 9\";s:9:\"thumbnail\";s:77:\"https://library.elementor.com/wp-content/uploads/2018/03/progress_black_1.png\";s:12:\"tmpl_created\";s:10:\"1520443666\";s:6:\"author\";s:9:\"Elementor\";s:3:\"url\";s:104:\"https://library.elementor.com/blocks/stats-9/?utm_source=library&utm_medium=wp-dash&utm_campaign=preview\";s:4:\"type\";s:5:\"block\";s:7:\"subtype\";s:5:\"stats\";s:4:\"tags\";s:9:\"[\"Stats\"]\";s:10:\"menu_order\";s:1:\"0\";s:16:\"popularity_index\";s:3:\"220\";s:11:\"trend_index\";s:3:\"215\";s:6:\"is_pro\";s:1:\"0\";s:17:\"has_page_settings\";s:1:\"0\";}i:48;a:14:{s:2:\"id\";s:4:\"6162\";s:5:\"title\";s:11:\"Services 31\";s:9:\"thumbnail\";s:77:\"https://library.elementor.com/wp-content/uploads/2018/03/progress_white_1.png\";s:12:\"tmpl_created\";s:10:\"1520443668\";s:6:\"author\";s:9:\"Elementor\";s:3:\"url\";s:108:\"https://library.elementor.com/blocks/services-31/?utm_source=library&utm_medium=wp-dash&utm_campaign=preview\";s:4:\"type\";s:5:\"block\";s:7:\"subtype\";s:5:\"stats\";s:4:\"tags\";s:9:\"[\"Stats\"]\";s:10:\"menu_order\";s:1:\"0\";s:16:\"popularity_index\";s:3:\"323\";s:11:\"trend_index\";s:3:\"359\";s:6:\"is_pro\";s:1:\"0\";s:17:\"has_page_settings\";s:1:\"0\";}i:49;a:14:{s:2:\"id\";s:4:\"6170\";s:5:\"title\";s:8:\"Stats 11\";s:9:\"thumbnail\";s:77:\"https://library.elementor.com/wp-content/uploads/2018/03/progress_black_2.png\";s:12:\"tmpl_created\";s:10:\"1520443670\";s:6:\"author\";s:9:\"Elementor\";s:3:\"url\";s:105:\"https://library.elementor.com/blocks/stats-11/?utm_source=library&utm_medium=wp-dash&utm_campaign=preview\";s:4:\"type\";s:5:\"block\";s:7:\"subtype\";s:5:\"stats\";s:4:\"tags\";s:9:\"[\"Stats\"]\";s:10:\"menu_order\";s:1:\"0\";s:16:\"popularity_index\";s:3:\"327\";s:11:\"trend_index\";s:3:\"279\";s:6:\"is_pro\";s:1:\"0\";s:17:\"has_page_settings\";s:1:\"0\";}i:50;a:14:{s:2:\"id\";s:4:\"6178\";s:5:\"title\";s:8:\"Stats 10\";s:9:\"thumbnail\";s:77:\"https://library.elementor.com/wp-content/uploads/2018/03/progress_white_2.png\";s:12:\"tmpl_created\";s:10:\"1520443676\";s:6:\"author\";s:9:\"Elementor\";s:3:\"url\";s:105:\"https://library.elementor.com/blocks/stats-10/?utm_source=library&utm_medium=wp-dash&utm_campaign=preview\";s:4:\"type\";s:5:\"block\";s:7:\"subtype\";s:5:\"stats\";s:4:\"tags\";s:9:\"[\"Stats\"]\";s:10:\"menu_order\";s:1:\"0\";s:16:\"popularity_index\";s:3:\"363\";s:11:\"trend_index\";s:3:\"304\";s:6:\"is_pro\";s:1:\"0\";s:17:\"has_page_settings\";s:1:\"0\";}i:51;a:14:{s:2:\"id\";s:4:\"6186\";s:5:\"title\";s:8:\"Stats 12\";s:9:\"thumbnail\";s:77:\"https://library.elementor.com/wp-content/uploads/2018/03/progress_white_3.png\";s:12:\"tmpl_created\";s:10:\"1520443678\";s:6:\"author\";s:9:\"Elementor\";s:3:\"url\";s:105:\"https://library.elementor.com/blocks/stats-12/?utm_source=library&utm_medium=wp-dash&utm_campaign=preview\";s:4:\"type\";s:5:\"block\";s:7:\"subtype\";s:5:\"stats\";s:4:\"tags\";s:9:\"[\"Stats\"]\";s:10:\"menu_order\";s:1:\"0\";s:16:\"popularity_index\";s:3:\"397\";s:11:\"trend_index\";s:3:\"384\";s:6:\"is_pro\";s:1:\"0\";s:17:\"has_page_settings\";s:1:\"0\";}i:52;a:14:{s:2:\"id\";s:4:\"6196\";s:5:\"title\";s:10:\"Features 9\";s:9:\"thumbnail\";s:77:\"https://library.elementor.com/wp-content/uploads/2018/03/features_white_6.png\";s:12:\"tmpl_created\";s:10:\"1520443680\";s:6:\"author\";s:9:\"Elementor\";s:3:\"url\";s:107:\"https://library.elementor.com/blocks/features-9/?utm_source=library&utm_medium=wp-dash&utm_campaign=preview\";s:4:\"type\";s:5:\"block\";s:7:\"subtype\";s:8:\"features\";s:4:\"tags\";s:12:\"[\"features\"]\";s:10:\"menu_order\";s:1:\"0\";s:16:\"popularity_index\";s:3:\"106\";s:11:\"trend_index\";s:3:\"123\";s:6:\"is_pro\";s:1:\"0\";s:17:\"has_page_settings\";s:1:\"0\";}i:53;a:14:{s:2:\"id\";s:4:\"6204\";s:5:\"title\";s:10:\"Features 8\";s:9:\"thumbnail\";s:77:\"https://library.elementor.com/wp-content/uploads/2018/03/progress_black_6.png\";s:12:\"tmpl_created\";s:10:\"1520443681\";s:6:\"author\";s:9:\"Elementor\";s:3:\"url\";s:107:\"https://library.elementor.com/blocks/features-8/?utm_source=library&utm_medium=wp-dash&utm_campaign=preview\";s:4:\"type\";s:5:\"block\";s:7:\"subtype\";s:8:\"features\";s:4:\"tags\";s:12:\"[\"features\"]\";s:10:\"menu_order\";s:1:\"0\";s:16:\"popularity_index\";s:3:\"208\";s:11:\"trend_index\";s:3:\"207\";s:6:\"is_pro\";s:1:\"0\";s:17:\"has_page_settings\";s:1:\"0\";}i:54;a:14:{s:2:\"id\";s:4:\"6212\";s:5:\"title\";s:11:\"Features 12\";s:9:\"thumbnail\";s:77:\"https://library.elementor.com/wp-content/uploads/2018/03/features_white_7.png\";s:12:\"tmpl_created\";s:10:\"1520443684\";s:6:\"author\";s:9:\"Elementor\";s:3:\"url\";s:108:\"https://library.elementor.com/blocks/features-12/?utm_source=library&utm_medium=wp-dash&utm_campaign=preview\";s:4:\"type\";s:5:\"block\";s:7:\"subtype\";s:8:\"features\";s:4:\"tags\";s:12:\"[\"features\"]\";s:10:\"menu_order\";s:1:\"0\";s:16:\"popularity_index\";s:2:\"88\";s:11:\"trend_index\";s:3:\"124\";s:6:\"is_pro\";s:1:\"0\";s:17:\"has_page_settings\";s:1:\"0\";}i:55;a:14:{s:2:\"id\";s:4:\"6220\";s:5:\"title\";s:10:\"Features 2\";s:9:\"thumbnail\";s:77:\"https://library.elementor.com/wp-content/uploads/2018/03/features_white_8.png\";s:12:\"tmpl_created\";s:10:\"1520443685\";s:6:\"author\";s:9:\"Elementor\";s:3:\"url\";s:107:\"https://library.elementor.com/blocks/features-2/?utm_source=library&utm_medium=wp-dash&utm_campaign=preview\";s:4:\"type\";s:5:\"block\";s:7:\"subtype\";s:8:\"features\";s:4:\"tags\";s:12:\"[\"features\"]\";s:10:\"menu_order\";s:1:\"0\";s:16:\"popularity_index\";s:2:\"93\";s:11:\"trend_index\";s:2:\"85\";s:6:\"is_pro\";s:1:\"0\";s:17:\"has_page_settings\";s:1:\"0\";}i:56;a:14:{s:2:\"id\";s:4:\"6230\";s:5:\"title\";s:6:\"Hero 6\";s:9:\"thumbnail\";s:74:\"https://library.elementor.com/wp-content/uploads/2018/03/heroo_white_1.png\";s:12:\"tmpl_created\";s:10:\"1520443687\";s:6:\"author\";s:9:\"Elementor\";s:3:\"url\";s:103:\"https://library.elementor.com/blocks/hero-6/?utm_source=library&utm_medium=wp-dash&utm_campaign=preview\";s:4:\"type\";s:5:\"block\";s:7:\"subtype\";s:4:\"hero\";s:4:\"tags\";s:8:\"[\"hero\"]\";s:10:\"menu_order\";s:1:\"0\";s:16:\"popularity_index\";s:3:\"362\";s:11:\"trend_index\";s:3:\"348\";s:6:\"is_pro\";s:1:\"1\";s:17:\"has_page_settings\";s:1:\"0\";}i:57;a:14:{s:2:\"id\";s:4:\"6239\";s:5:\"title\";s:6:\"Hero 3\";s:9:\"thumbnail\";s:74:\"https://library.elementor.com/wp-content/uploads/2018/03/heroo_black_1.png\";s:12:\"tmpl_created\";s:10:\"1520443689\";s:6:\"author\";s:9:\"Elementor\";s:3:\"url\";s:103:\"https://library.elementor.com/blocks/hero-3/?utm_source=library&utm_medium=wp-dash&utm_campaign=preview\";s:4:\"type\";s:5:\"block\";s:7:\"subtype\";s:4:\"hero\";s:4:\"tags\";s:8:\"[\"hero\"]\";s:10:\"menu_order\";s:1:\"0\";s:16:\"popularity_index\";s:2:\"37\";s:11:\"trend_index\";s:2:\"19\";s:6:\"is_pro\";s:1:\"0\";s:17:\"has_page_settings\";s:1:\"0\";}i:58;a:14:{s:2:\"id\";s:4:\"6249\";s:5:\"title\";s:6:\"Hero 5\";s:9:\"thumbnail\";s:74:\"https://library.elementor.com/wp-content/uploads/2018/03/heroo_black_2.png\";s:12:\"tmpl_created\";s:10:\"1520443691\";s:6:\"author\";s:9:\"Elementor\";s:3:\"url\";s:103:\"https://library.elementor.com/blocks/hero-5/?utm_source=library&utm_medium=wp-dash&utm_campaign=preview\";s:4:\"type\";s:5:\"block\";s:7:\"subtype\";s:4:\"hero\";s:4:\"tags\";s:8:\"[\"hero\"]\";s:10:\"menu_order\";s:1:\"0\";s:16:\"popularity_index\";s:2:\"73\";s:11:\"trend_index\";s:2:\"64\";s:6:\"is_pro\";s:1:\"0\";s:17:\"has_page_settings\";s:1:\"0\";}i:59;a:14:{s:2:\"id\";s:4:\"6258\";s:5:\"title\";s:6:\"Hero 4\";s:9:\"thumbnail\";s:74:\"https://library.elementor.com/wp-content/uploads/2018/03/heroo_black_3.png\";s:12:\"tmpl_created\";s:10:\"1520443693\";s:6:\"author\";s:9:\"Elementor\";s:3:\"url\";s:103:\"https://library.elementor.com/blocks/hero-4/?utm_source=library&utm_medium=wp-dash&utm_campaign=preview\";s:4:\"type\";s:5:\"block\";s:7:\"subtype\";s:4:\"hero\";s:4:\"tags\";s:8:\"[\"hero\"]\";s:10:\"menu_order\";s:1:\"0\";s:16:\"popularity_index\";s:3:\"377\";s:11:\"trend_index\";s:3:\"380\";s:6:\"is_pro\";s:1:\"1\";s:17:\"has_page_settings\";s:1:\"0\";}i:60;a:14:{s:2:\"id\";s:4:\"6266\";s:5:\"title\";s:6:\"Hero 1\";s:9:\"thumbnail\";s:74:\"https://library.elementor.com/wp-content/uploads/2018/03/heroo_black_4.png\";s:12:\"tmpl_created\";s:10:\"1520443695\";s:6:\"author\";s:9:\"Elementor\";s:3:\"url\";s:103:\"https://library.elementor.com/blocks/hero-1/?utm_source=library&utm_medium=wp-dash&utm_campaign=preview\";s:4:\"type\";s:5:\"block\";s:7:\"subtype\";s:4:\"hero\";s:4:\"tags\";s:8:\"[\"hero\"]\";s:10:\"menu_order\";s:1:\"0\";s:16:\"popularity_index\";s:2:\"59\";s:11:\"trend_index\";s:2:\"54\";s:6:\"is_pro\";s:1:\"0\";s:17:\"has_page_settings\";s:1:\"0\";}i:61;a:14:{s:2:\"id\";s:4:\"6274\";s:5:\"title\";s:6:\"Hero 2\";s:9:\"thumbnail\";s:74:\"https://library.elementor.com/wp-content/uploads/2018/03/heroo_black_5.png\";s:12:\"tmpl_created\";s:10:\"1520443698\";s:6:\"author\";s:9:\"Elementor\";s:3:\"url\";s:103:\"https://library.elementor.com/blocks/hero-2/?utm_source=library&utm_medium=wp-dash&utm_campaign=preview\";s:4:\"type\";s:5:\"block\";s:7:\"subtype\";s:4:\"hero\";s:4:\"tags\";s:8:\"[\"hero\"]\";s:10:\"menu_order\";s:1:\"0\";s:16:\"popularity_index\";s:2:\"99\";s:11:\"trend_index\";s:3:\"110\";s:6:\"is_pro\";s:1:\"1\";s:17:\"has_page_settings\";s:1:\"0\";}i:62;a:14:{s:2:\"id\";s:4:\"6017\";s:5:\"title\";s:6:\"CTA 14\";s:9:\"thumbnail\";s:73:\"https://library.elementor.com/wp-content/uploads/2018/03/cta_black_14.png\";s:12:\"tmpl_created\";s:10:\"1520520331\";s:6:\"author\";s:9:\"Elementor\";s:3:\"url\";s:103:\"https://library.elementor.com/blocks/cta-14/?utm_source=library&utm_medium=wp-dash&utm_campaign=preview\";s:4:\"type\";s:5:\"block\";s:7:\"subtype\";s:14:\"call to action\";s:4:\"tags\";s:7:\"[\"cta\"]\";s:10:\"menu_order\";s:1:\"0\";s:16:\"popularity_index\";s:3:\"150\";s:11:\"trend_index\";s:3:\"177\";s:6:\"is_pro\";s:1:\"0\";s:17:\"has_page_settings\";s:1:\"0\";}i:63;a:14:{s:2:\"id\";s:4:\"4826\";s:5:\"title\";s:14:\"Testimonial 24\";s:9:\"thumbnail\";s:81:\"https://library.elementor.com/wp-content/uploads/2018/03/testimonials_white_1.png\";s:12:\"tmpl_created\";s:10:\"1520520544\";s:6:\"author\";s:9:\"Elementor\";s:3:\"url\";s:113:\"https://library.elementor.com/blocks/testimonial-24-2/?utm_source=library&utm_medium=wp-dash&utm_campaign=preview\";s:4:\"type\";s:5:\"block\";s:7:\"subtype\";s:12:\"testimonials\";s:4:\"tags\";s:15:\"[\"Testimonial\"]\";s:10:\"menu_order\";s:1:\"0\";s:16:\"popularity_index\";s:3:\"275\";s:11:\"trend_index\";s:3:\"271\";s:6:\"is_pro\";s:1:\"1\";s:17:\"has_page_settings\";s:1:\"0\";}i:64;a:14:{s:2:\"id\";s:4:\"4835\";s:5:\"title\";s:14:\"Testimonial 16\";s:9:\"thumbnail\";s:81:\"https://library.elementor.com/wp-content/uploads/2018/03/testimonials_black_1.png\";s:12:\"tmpl_created\";s:10:\"1520520546\";s:6:\"author\";s:9:\"Elementor\";s:3:\"url\";s:111:\"https://library.elementor.com/blocks/testimonial-16/?utm_source=library&utm_medium=wp-dash&utm_campaign=preview\";s:4:\"type\";s:5:\"block\";s:7:\"subtype\";s:12:\"testimonials\";s:4:\"tags\";s:15:\"[\"Testimonial\"]\";s:10:\"menu_order\";s:1:\"0\";s:16:\"popularity_index\";s:3:\"368\";s:11:\"trend_index\";s:3:\"366\";s:6:\"is_pro\";s:1:\"1\";s:17:\"has_page_settings\";s:1:\"0\";}i:65;a:14:{s:2:\"id\";s:4:\"4843\";s:5:\"title\";s:14:\"Testimonial 18\";s:9:\"thumbnail\";s:81:\"https://library.elementor.com/wp-content/uploads/2018/03/testimonials_white_2.png\";s:12:\"tmpl_created\";s:10:\"1520520548\";s:6:\"author\";s:9:\"Elementor\";s:3:\"url\";s:111:\"https://library.elementor.com/blocks/testimonial-18/?utm_source=library&utm_medium=wp-dash&utm_campaign=preview\";s:4:\"type\";s:5:\"block\";s:7:\"subtype\";s:12:\"testimonials\";s:4:\"tags\";s:15:\"[\"Testimonial\"]\";s:10:\"menu_order\";s:1:\"0\";s:16:\"popularity_index\";s:3:\"384\";s:11:\"trend_index\";s:3:\"301\";s:6:\"is_pro\";s:1:\"1\";s:17:\"has_page_settings\";s:1:\"0\";}i:66;a:14:{s:2:\"id\";s:4:\"4854\";s:5:\"title\";s:14:\"Testimonial 13\";s:9:\"thumbnail\";s:81:\"https://library.elementor.com/wp-content/uploads/2018/03/testimonials_black_2.png\";s:12:\"tmpl_created\";s:10:\"1520520549\";s:6:\"author\";s:9:\"Elementor\";s:3:\"url\";s:111:\"https://library.elementor.com/blocks/testimonial-13/?utm_source=library&utm_medium=wp-dash&utm_campaign=preview\";s:4:\"type\";s:5:\"block\";s:7:\"subtype\";s:12:\"testimonials\";s:4:\"tags\";s:15:\"[\"Testimonial\"]\";s:10:\"menu_order\";s:1:\"0\";s:16:\"popularity_index\";s:3:\"429\";s:11:\"trend_index\";s:3:\"404\";s:6:\"is_pro\";s:1:\"1\";s:17:\"has_page_settings\";s:1:\"0\";}i:67;a:14:{s:2:\"id\";s:4:\"4863\";s:5:\"title\";s:14:\"Testimonial 19\";s:9:\"thumbnail\";s:81:\"https://library.elementor.com/wp-content/uploads/2018/03/testimonials_white_3.png\";s:12:\"tmpl_created\";s:10:\"1520520551\";s:6:\"author\";s:9:\"Elementor\";s:3:\"url\";s:111:\"https://library.elementor.com/blocks/testimonial-19/?utm_source=library&utm_medium=wp-dash&utm_campaign=preview\";s:4:\"type\";s:5:\"block\";s:7:\"subtype\";s:12:\"testimonials\";s:4:\"tags\";s:15:\"[\"Testimonial\"]\";s:10:\"menu_order\";s:1:\"0\";s:16:\"popularity_index\";s:3:\"269\";s:11:\"trend_index\";s:3:\"315\";s:6:\"is_pro\";s:1:\"1\";s:17:\"has_page_settings\";s:1:\"0\";}i:68;a:14:{s:2:\"id\";s:4:\"4871\";s:5:\"title\";s:14:\"Testimonial 12\";s:9:\"thumbnail\";s:81:\"https://library.elementor.com/wp-content/uploads/2018/03/testimonials_black_3.png\";s:12:\"tmpl_created\";s:10:\"1520520552\";s:6:\"author\";s:9:\"Elementor\";s:3:\"url\";s:111:\"https://library.elementor.com/blocks/testimonial-12/?utm_source=library&utm_medium=wp-dash&utm_campaign=preview\";s:4:\"type\";s:5:\"block\";s:7:\"subtype\";s:12:\"testimonials\";s:4:\"tags\";s:15:\"[\"Testimonial\"]\";s:10:\"menu_order\";s:1:\"0\";s:16:\"popularity_index\";s:3:\"250\";s:11:\"trend_index\";s:3:\"268\";s:6:\"is_pro\";s:1:\"0\";s:17:\"has_page_settings\";s:1:\"0\";}i:69;a:14:{s:2:\"id\";s:4:\"4880\";s:5:\"title\";s:14:\"Testimonial 20\";s:9:\"thumbnail\";s:72:\"https://library.elementor.com/wp-content/uploads/2018/03/customers-1.jpg\";s:12:\"tmpl_created\";s:10:\"1520520554\";s:6:\"author\";s:9:\"Elementor\";s:3:\"url\";s:111:\"https://library.elementor.com/blocks/testimonial-20/?utm_source=library&utm_medium=wp-dash&utm_campaign=preview\";s:4:\"type\";s:5:\"block\";s:7:\"subtype\";s:12:\"testimonials\";s:4:\"tags\";s:15:\"[\"Testimonial\"]\";s:10:\"menu_order\";s:1:\"0\";s:16:\"popularity_index\";s:3:\"370\";s:11:\"trend_index\";s:3:\"396\";s:6:\"is_pro\";s:1:\"1\";s:17:\"has_page_settings\";s:1:\"0\";}i:70;a:14:{s:2:\"id\";s:4:\"4889\";s:5:\"title\";s:14:\"Testimonial 11\";s:9:\"thumbnail\";s:72:\"https://library.elementor.com/wp-content/uploads/2018/03/customers-2.jpg\";s:12:\"tmpl_created\";s:10:\"1520520556\";s:6:\"author\";s:9:\"Elementor\";s:3:\"url\";s:111:\"https://library.elementor.com/blocks/testimonial-11/?utm_source=library&utm_medium=wp-dash&utm_campaign=preview\";s:4:\"type\";s:5:\"block\";s:7:\"subtype\";s:12:\"testimonials\";s:4:\"tags\";s:15:\"[\"Testimonial\"]\";s:10:\"menu_order\";s:1:\"0\";s:16:\"popularity_index\";s:3:\"405\";s:11:\"trend_index\";s:3:\"398\";s:6:\"is_pro\";s:1:\"1\";s:17:\"has_page_settings\";s:1:\"0\";}i:71;a:14:{s:2:\"id\";s:4:\"4897\";s:5:\"title\";s:14:\"Testimonial 21\";s:9:\"thumbnail\";s:81:\"https://library.elementor.com/wp-content/uploads/2018/03/testimonials_white_5.png\";s:12:\"tmpl_created\";s:10:\"1520520557\";s:6:\"author\";s:9:\"Elementor\";s:3:\"url\";s:111:\"https://library.elementor.com/blocks/testimonial-21/?utm_source=library&utm_medium=wp-dash&utm_campaign=preview\";s:4:\"type\";s:5:\"block\";s:7:\"subtype\";s:12:\"testimonials\";s:4:\"tags\";s:15:\"[\"Testimonial\"]\";s:10:\"menu_order\";s:1:\"0\";s:16:\"popularity_index\";s:2:\"92\";s:11:\"trend_index\";s:2:\"79\";s:6:\"is_pro\";s:1:\"0\";s:17:\"has_page_settings\";s:1:\"0\";}i:72;a:14:{s:2:\"id\";s:4:\"4905\";s:5:\"title\";s:14:\"Testimonial 22\";s:9:\"thumbnail\";s:81:\"https://library.elementor.com/wp-content/uploads/2018/03/testimonials_white_6.png\";s:12:\"tmpl_created\";s:10:\"1520520559\";s:6:\"author\";s:9:\"Elementor\";s:3:\"url\";s:111:\"https://library.elementor.com/blocks/testimonial-22/?utm_source=library&utm_medium=wp-dash&utm_campaign=preview\";s:4:\"type\";s:5:\"block\";s:7:\"subtype\";s:12:\"testimonials\";s:4:\"tags\";s:15:\"[\"Testimonial\"]\";s:10:\"menu_order\";s:1:\"0\";s:16:\"popularity_index\";s:3:\"121\";s:11:\"trend_index\";s:3:\"103\";s:6:\"is_pro\";s:1:\"0\";s:17:\"has_page_settings\";s:1:\"0\";}i:73;a:14:{s:2:\"id\";s:4:\"4913\";s:5:\"title\";s:14:\"Testimonial 23\";s:9:\"thumbnail\";s:81:\"https://library.elementor.com/wp-content/uploads/2018/03/testimonials_white_7.png\";s:12:\"tmpl_created\";s:10:\"1520520561\";s:6:\"author\";s:9:\"Elementor\";s:3:\"url\";s:111:\"https://library.elementor.com/blocks/testimonial-23/?utm_source=library&utm_medium=wp-dash&utm_campaign=preview\";s:4:\"type\";s:5:\"block\";s:7:\"subtype\";s:12:\"testimonials\";s:4:\"tags\";s:15:\"[\"Testimonial\"]\";s:10:\"menu_order\";s:1:\"0\";s:16:\"popularity_index\";s:3:\"247\";s:11:\"trend_index\";s:3:\"202\";s:6:\"is_pro\";s:1:\"0\";s:17:\"has_page_settings\";s:1:\"0\";}i:74;a:14:{s:2:\"id\";s:4:\"4921\";s:5:\"title\";s:14:\"Testimonial 10\";s:9:\"thumbnail\";s:81:\"https://library.elementor.com/wp-content/uploads/2018/03/testimonials_black_5.png\";s:12:\"tmpl_created\";s:10:\"1520520562\";s:6:\"author\";s:9:\"Elementor\";s:3:\"url\";s:111:\"https://library.elementor.com/blocks/testimonial-10/?utm_source=library&utm_medium=wp-dash&utm_campaign=preview\";s:4:\"type\";s:5:\"block\";s:7:\"subtype\";s:12:\"testimonials\";s:4:\"tags\";s:15:\"[\"Testimonial\"]\";s:10:\"menu_order\";s:1:\"0\";s:16:\"popularity_index\";s:3:\"222\";s:11:\"trend_index\";s:3:\"209\";s:6:\"is_pro\";s:1:\"0\";s:17:\"has_page_settings\";s:1:\"0\";}i:75;a:14:{s:2:\"id\";s:4:\"4929\";s:5:\"title\";s:14:\"Testimonial 24\";s:9:\"thumbnail\";s:81:\"https://library.elementor.com/wp-content/uploads/2018/03/testimonials_white_8.png\";s:12:\"tmpl_created\";s:10:\"1520520564\";s:6:\"author\";s:9:\"Elementor\";s:3:\"url\";s:111:\"https://library.elementor.com/blocks/testimonial-24/?utm_source=library&utm_medium=wp-dash&utm_campaign=preview\";s:4:\"type\";s:5:\"block\";s:7:\"subtype\";s:12:\"testimonials\";s:4:\"tags\";s:15:\"[\"Testimonial\"]\";s:10:\"menu_order\";s:1:\"0\";s:16:\"popularity_index\";s:2:\"61\";s:11:\"trend_index\";s:2:\"45\";s:6:\"is_pro\";s:1:\"0\";s:17:\"has_page_settings\";s:1:\"0\";}i:76;a:14:{s:2:\"id\";s:4:\"4939\";s:5:\"title\";s:13:\"Testimonial 9\";s:9:\"thumbnail\";s:81:\"https://library.elementor.com/wp-content/uploads/2018/03/testimonials_black_8.png\";s:12:\"tmpl_created\";s:10:\"1520520565\";s:6:\"author\";s:9:\"Elementor\";s:3:\"url\";s:110:\"https://library.elementor.com/blocks/testimonial-9/?utm_source=library&utm_medium=wp-dash&utm_campaign=preview\";s:4:\"type\";s:5:\"block\";s:7:\"subtype\";s:12:\"testimonials\";s:4:\"tags\";s:15:\"[\"Testimonial\"]\";s:10:\"menu_order\";s:1:\"0\";s:16:\"popularity_index\";s:2:\"94\";s:11:\"trend_index\";s:2:\"74\";s:6:\"is_pro\";s:1:\"0\";s:17:\"has_page_settings\";s:1:\"0\";}i:77;a:14:{s:2:\"id\";s:4:\"4947\";s:5:\"title\";s:14:\"Testimonial 27\";s:9:\"thumbnail\";s:81:\"https://library.elementor.com/wp-content/uploads/2018/03/testimonials_white_9.png\";s:12:\"tmpl_created\";s:10:\"1520520567\";s:6:\"author\";s:9:\"Elementor\";s:3:\"url\";s:111:\"https://library.elementor.com/blocks/testimonial-27/?utm_source=library&utm_medium=wp-dash&utm_campaign=preview\";s:4:\"type\";s:5:\"block\";s:7:\"subtype\";s:12:\"testimonials\";s:4:\"tags\";s:15:\"[\"Testimonial\"]\";s:10:\"menu_order\";s:1:\"0\";s:16:\"popularity_index\";s:3:\"180\";s:11:\"trend_index\";s:3:\"212\";s:6:\"is_pro\";s:1:\"0\";s:17:\"has_page_settings\";s:1:\"0\";}i:78;a:14:{s:2:\"id\";s:4:\"4955\";s:5:\"title\";s:14:\"Testimonial 29\";s:9:\"thumbnail\";s:81:\"https://library.elementor.com/wp-content/uploads/2018/03/testimonials_black_9.png\";s:12:\"tmpl_created\";s:10:\"1520520569\";s:6:\"author\";s:9:\"Elementor\";s:3:\"url\";s:111:\"https://library.elementor.com/blocks/testimonial-29/?utm_source=library&utm_medium=wp-dash&utm_campaign=preview\";s:4:\"type\";s:5:\"block\";s:7:\"subtype\";s:12:\"testimonials\";s:4:\"tags\";s:15:\"[\"Testimonial\"]\";s:10:\"menu_order\";s:1:\"0\";s:16:\"popularity_index\";s:3:\"319\";s:11:\"trend_index\";s:3:\"327\";s:6:\"is_pro\";s:1:\"0\";s:17:\"has_page_settings\";s:1:\"0\";}i:79;a:14:{s:2:\"id\";s:4:\"4963\";s:5:\"title\";s:14:\"Testimonial 25\";s:9:\"thumbnail\";s:82:\"https://library.elementor.com/wp-content/uploads/2018/03/testimonials_white_10.png\";s:12:\"tmpl_created\";s:10:\"1520520570\";s:6:\"author\";s:9:\"Elementor\";s:3:\"url\";s:113:\"https://library.elementor.com/blocks/testimonial-25-2/?utm_source=library&utm_medium=wp-dash&utm_campaign=preview\";s:4:\"type\";s:5:\"block\";s:7:\"subtype\";s:12:\"testimonials\";s:4:\"tags\";s:15:\"[\"Testimonial\"]\";s:10:\"menu_order\";s:1:\"0\";s:16:\"popularity_index\";s:3:\"374\";s:11:\"trend_index\";s:3:\"329\";s:6:\"is_pro\";s:1:\"1\";s:17:\"has_page_settings\";s:1:\"0\";}i:80;a:14:{s:2:\"id\";s:4:\"4971\";s:5:\"title\";s:14:\"Testimonial 26\";s:9:\"thumbnail\";s:82:\"https://library.elementor.com/wp-content/uploads/2018/03/testimonials_white_11.png\";s:12:\"tmpl_created\";s:10:\"1520520572\";s:6:\"author\";s:9:\"Elementor\";s:3:\"url\";s:111:\"https://library.elementor.com/blocks/testimonial-26/?utm_source=library&utm_medium=wp-dash&utm_campaign=preview\";s:4:\"type\";s:5:\"block\";s:7:\"subtype\";s:12:\"testimonials\";s:4:\"tags\";s:15:\"[\"Testimonial\"]\";s:10:\"menu_order\";s:1:\"0\";s:16:\"popularity_index\";s:3:\"431\";s:11:\"trend_index\";s:3:\"428\";s:6:\"is_pro\";s:1:\"1\";s:17:\"has_page_settings\";s:1:\"0\";}i:81;a:14:{s:2:\"id\";s:4:\"4979\";s:5:\"title\";s:14:\"Testimonial 15\";s:9:\"thumbnail\";s:82:\"https://library.elementor.com/wp-content/uploads/2018/03/testimonials_black_10.png\";s:12:\"tmpl_created\";s:10:\"1520520573\";s:6:\"author\";s:9:\"Elementor\";s:3:\"url\";s:111:\"https://library.elementor.com/blocks/testimonial-15/?utm_source=library&utm_medium=wp-dash&utm_campaign=preview\";s:4:\"type\";s:5:\"block\";s:7:\"subtype\";s:12:\"testimonials\";s:4:\"tags\";s:15:\"[\"Testimonial\"]\";s:10:\"menu_order\";s:1:\"0\";s:16:\"popularity_index\";s:3:\"417\";s:11:\"trend_index\";s:3:\"429\";s:6:\"is_pro\";s:1:\"1\";s:17:\"has_page_settings\";s:1:\"0\";}i:82;a:14:{s:2:\"id\";s:4:\"4987\";s:5:\"title\";s:14:\"Testimonial 17\";s:9:\"thumbnail\";s:84:\"https://library.elementor.com/wp-content/uploads/2018/03/testimonials_white_12-1.png\";s:12:\"tmpl_created\";s:10:\"1520520575\";s:6:\"author\";s:9:\"Elementor\";s:3:\"url\";s:111:\"https://library.elementor.com/blocks/testimonial-17/?utm_source=library&utm_medium=wp-dash&utm_campaign=preview\";s:4:\"type\";s:5:\"block\";s:7:\"subtype\";s:12:\"testimonials\";s:4:\"tags\";s:15:\"[\"Testimonial\"]\";s:10:\"menu_order\";s:1:\"0\";s:16:\"popularity_index\";s:3:\"151\";s:11:\"trend_index\";s:3:\"168\";s:6:\"is_pro\";s:1:\"0\";s:17:\"has_page_settings\";s:1:\"0\";}i:83;a:14:{s:2:\"id\";s:4:\"4995\";s:5:\"title\";s:14:\"Testimonial 14\";s:9:\"thumbnail\";s:82:\"https://library.elementor.com/wp-content/uploads/2018/03/testimonials_black_12.png\";s:12:\"tmpl_created\";s:10:\"1520520577\";s:6:\"author\";s:9:\"Elementor\";s:3:\"url\";s:111:\"https://library.elementor.com/blocks/testimonial-14/?utm_source=library&utm_medium=wp-dash&utm_campaign=preview\";s:4:\"type\";s:5:\"block\";s:7:\"subtype\";s:12:\"testimonials\";s:4:\"tags\";s:15:\"[\"Testimonial\"]\";s:10:\"menu_order\";s:1:\"0\";s:16:\"popularity_index\";s:3:\"360\";s:11:\"trend_index\";s:3:\"374\";s:6:\"is_pro\";s:1:\"0\";s:17:\"has_page_settings\";s:1:\"0\";}i:84;a:14:{s:2:\"id\";s:4:\"5007\";s:5:\"title\";s:11:\"Portfolio 7\";s:9:\"thumbnail\";s:78:\"https://library.elementor.com/wp-content/uploads/2018/03/portfolio_white_1.png\";s:12:\"tmpl_created\";s:10:\"1520520578\";s:6:\"author\";s:9:\"Elementor\";s:3:\"url\";s:108:\"https://library.elementor.com/blocks/portfolio-7/?utm_source=library&utm_medium=wp-dash&utm_campaign=preview\";s:4:\"type\";s:5:\"block\";s:7:\"subtype\";s:9:\"portfolio\";s:4:\"tags\";s:13:\"[\"portfolio\"]\";s:10:\"menu_order\";s:1:\"0\";s:16:\"popularity_index\";s:2:\"62\";s:11:\"trend_index\";s:2:\"39\";s:6:\"is_pro\";s:1:\"0\";s:17:\"has_page_settings\";s:1:\"0\";}i:85;a:14:{s:2:\"id\";s:4:\"5019\";s:5:\"title\";s:11:\"Portfolio 1\";s:9:\"thumbnail\";s:78:\"https://library.elementor.com/wp-content/uploads/2018/03/portfolio_black_1.png\";s:12:\"tmpl_created\";s:10:\"1520520580\";s:6:\"author\";s:9:\"Elementor\";s:3:\"url\";s:108:\"https://library.elementor.com/blocks/portfolio-1/?utm_source=library&utm_medium=wp-dash&utm_campaign=preview\";s:4:\"type\";s:5:\"block\";s:7:\"subtype\";s:9:\"portfolio\";s:4:\"tags\";s:13:\"[\"portfolio\"]\";s:10:\"menu_order\";s:1:\"0\";s:16:\"popularity_index\";s:3:\"165\";s:11:\"trend_index\";s:3:\"203\";s:6:\"is_pro\";s:1:\"0\";s:17:\"has_page_settings\";s:1:\"0\";}i:86;a:14:{s:2:\"id\";s:4:\"5027\";s:5:\"title\";s:12:\"Portfolio 11\";s:9:\"thumbnail\";s:78:\"https://library.elementor.com/wp-content/uploads/2018/03/portfolio_white_2.png\";s:12:\"tmpl_created\";s:10:\"1520520581\";s:6:\"author\";s:9:\"Elementor\";s:3:\"url\";s:109:\"https://library.elementor.com/blocks/portfolio-11/?utm_source=library&utm_medium=wp-dash&utm_campaign=preview\";s:4:\"type\";s:5:\"block\";s:7:\"subtype\";s:9:\"portfolio\";s:4:\"tags\";s:13:\"[\"portfolio\"]\";s:10:\"menu_order\";s:1:\"0\";s:16:\"popularity_index\";s:3:\"314\";s:11:\"trend_index\";s:3:\"272\";s:6:\"is_pro\";s:1:\"1\";s:17:\"has_page_settings\";s:1:\"0\";}i:87;a:14:{s:2:\"id\";s:4:\"5037\";s:5:\"title\";s:12:\"Portfolio 12\";s:9:\"thumbnail\";s:78:\"https://library.elementor.com/wp-content/uploads/2018/03/portfolio_white_3.png\";s:12:\"tmpl_created\";s:10:\"1520520583\";s:6:\"author\";s:9:\"Elementor\";s:3:\"url\";s:109:\"https://library.elementor.com/blocks/portfolio-12/?utm_source=library&utm_medium=wp-dash&utm_campaign=preview\";s:4:\"type\";s:5:\"block\";s:7:\"subtype\";s:9:\"portfolio\";s:4:\"tags\";s:13:\"[\"portfolio\"]\";s:10:\"menu_order\";s:1:\"0\";s:16:\"popularity_index\";s:3:\"272\";s:11:\"trend_index\";s:3:\"233\";s:6:\"is_pro\";s:1:\"1\";s:17:\"has_page_settings\";s:1:\"0\";}i:88;a:14:{s:2:\"id\";s:4:\"5057\";s:5:\"title\";s:12:\"Portfolio 13\";s:9:\"thumbnail\";s:78:\"https://library.elementor.com/wp-content/uploads/2018/03/portfolio_white_4.png\";s:12:\"tmpl_created\";s:10:\"1520520586\";s:6:\"author\";s:9:\"Elementor\";s:3:\"url\";s:109:\"https://library.elementor.com/blocks/portfolio-13/?utm_source=library&utm_medium=wp-dash&utm_campaign=preview\";s:4:\"type\";s:5:\"block\";s:7:\"subtype\";s:9:\"portfolio\";s:4:\"tags\";s:13:\"[\"portfolio\"]\";s:10:\"menu_order\";s:1:\"0\";s:16:\"popularity_index\";s:3:\"214\";s:11:\"trend_index\";s:3:\"180\";s:6:\"is_pro\";s:1:\"1\";s:17:\"has_page_settings\";s:1:\"0\";}i:89;a:14:{s:2:\"id\";s:4:\"5071\";s:5:\"title\";s:12:\"Portfolio 14\";s:9:\"thumbnail\";s:78:\"https://library.elementor.com/wp-content/uploads/2018/03/portfolio_white_5.png\";s:12:\"tmpl_created\";s:10:\"1520520588\";s:6:\"author\";s:9:\"Elementor\";s:3:\"url\";s:109:\"https://library.elementor.com/blocks/portfolio-14/?utm_source=library&utm_medium=wp-dash&utm_campaign=preview\";s:4:\"type\";s:5:\"block\";s:7:\"subtype\";s:9:\"portfolio\";s:4:\"tags\";s:13:\"[\"portfolio\"]\";s:10:\"menu_order\";s:1:\"0\";s:16:\"popularity_index\";s:3:\"279\";s:11:\"trend_index\";s:3:\"275\";s:6:\"is_pro\";s:1:\"1\";s:17:\"has_page_settings\";s:1:\"0\";}i:90;a:14:{s:2:\"id\";s:4:\"5082\";s:5:\"title\";s:11:\"Portfolio 4\";s:9:\"thumbnail\";s:78:\"https://library.elementor.com/wp-content/uploads/2018/03/portfolio_black_4.png\";s:12:\"tmpl_created\";s:10:\"1520520589\";s:6:\"author\";s:9:\"Elementor\";s:3:\"url\";s:108:\"https://library.elementor.com/blocks/portfolio-4/?utm_source=library&utm_medium=wp-dash&utm_campaign=preview\";s:4:\"type\";s:5:\"block\";s:7:\"subtype\";s:9:\"portfolio\";s:4:\"tags\";s:13:\"[\"portfolio\"]\";s:10:\"menu_order\";s:1:\"0\";s:16:\"popularity_index\";s:3:\"396\";s:11:\"trend_index\";s:3:\"397\";s:6:\"is_pro\";s:1:\"1\";s:17:\"has_page_settings\";s:1:\"0\";}i:91;a:14:{s:2:\"id\";s:4:\"5090\";s:5:\"title\";s:12:\"Portfolio 15\";s:9:\"thumbnail\";s:78:\"https://library.elementor.com/wp-content/uploads/2018/03/portfolio_white_6.png\";s:12:\"tmpl_created\";s:10:\"1520520591\";s:6:\"author\";s:9:\"Elementor\";s:3:\"url\";s:109:\"https://library.elementor.com/blocks/portfolio-15/?utm_source=library&utm_medium=wp-dash&utm_campaign=preview\";s:4:\"type\";s:5:\"block\";s:7:\"subtype\";s:9:\"portfolio\";s:4:\"tags\";s:13:\"[\"portfolio\"]\";s:10:\"menu_order\";s:1:\"0\";s:16:\"popularity_index\";s:3:\"194\";s:11:\"trend_index\";s:3:\"162\";s:6:\"is_pro\";s:1:\"0\";s:17:\"has_page_settings\";s:1:\"0\";}i:92;a:14:{s:2:\"id\";s:4:\"5098\";s:5:\"title\";s:12:\"Portfolio 16\";s:9:\"thumbnail\";s:78:\"https://library.elementor.com/wp-content/uploads/2018/03/portfolio_white_7.png\";s:12:\"tmpl_created\";s:10:\"1520520593\";s:6:\"author\";s:9:\"Elementor\";s:3:\"url\";s:109:\"https://library.elementor.com/blocks/portfolio-16/?utm_source=library&utm_medium=wp-dash&utm_campaign=preview\";s:4:\"type\";s:5:\"block\";s:7:\"subtype\";s:9:\"portfolio\";s:4:\"tags\";s:13:\"[\"portfolio\"]\";s:10:\"menu_order\";s:1:\"0\";s:16:\"popularity_index\";s:3:\"162\";s:11:\"trend_index\";s:3:\"165\";s:6:\"is_pro\";s:1:\"0\";s:17:\"has_page_settings\";s:1:\"0\";}i:93;a:14:{s:2:\"id\";s:4:\"5107\";s:5:\"title\";s:11:\"Portfolio 5\";s:9:\"thumbnail\";s:78:\"https://library.elementor.com/wp-content/uploads/2018/03/portfolio_black_7.png\";s:12:\"tmpl_created\";s:10:\"1520520594\";s:6:\"author\";s:9:\"Elementor\";s:3:\"url\";s:108:\"https://library.elementor.com/blocks/portfolio-5/?utm_source=library&utm_medium=wp-dash&utm_campaign=preview\";s:4:\"type\";s:5:\"block\";s:7:\"subtype\";s:9:\"portfolio\";s:4:\"tags\";s:13:\"[\"portfolio\"]\";s:10:\"menu_order\";s:1:\"0\";s:16:\"popularity_index\";s:3:\"361\";s:11:\"trend_index\";s:3:\"345\";s:6:\"is_pro\";s:1:\"0\";s:17:\"has_page_settings\";s:1:\"0\";}i:94;a:14:{s:2:\"id\";s:4:\"5115\";s:5:\"title\";s:12:\"Portfolio 17\";s:9:\"thumbnail\";s:78:\"https://library.elementor.com/wp-content/uploads/2018/03/portfolio_white_8.png\";s:12:\"tmpl_created\";s:10:\"1520520596\";s:6:\"author\";s:9:\"Elementor\";s:3:\"url\";s:109:\"https://library.elementor.com/blocks/portfolio-17/?utm_source=library&utm_medium=wp-dash&utm_campaign=preview\";s:4:\"type\";s:5:\"block\";s:7:\"subtype\";s:9:\"portfolio\";s:4:\"tags\";s:13:\"[\"portfolio\"]\";s:10:\"menu_order\";s:1:\"0\";s:16:\"popularity_index\";s:2:\"35\";s:11:\"trend_index\";s:2:\"23\";s:6:\"is_pro\";s:1:\"0\";s:17:\"has_page_settings\";s:1:\"0\";}i:95;a:14:{s:2:\"id\";s:4:\"5125\";s:5:\"title\";s:11:\"Portfolio 6\";s:9:\"thumbnail\";s:78:\"https://library.elementor.com/wp-content/uploads/2018/03/portfolio_black_8.png\";s:12:\"tmpl_created\";s:10:\"1520520597\";s:6:\"author\";s:9:\"Elementor\";s:3:\"url\";s:108:\"https://library.elementor.com/blocks/portfolio-6/?utm_source=library&utm_medium=wp-dash&utm_campaign=preview\";s:4:\"type\";s:5:\"block\";s:7:\"subtype\";s:9:\"portfolio\";s:4:\"tags\";s:13:\"[\"portfolio\"]\";s:10:\"menu_order\";s:1:\"0\";s:16:\"popularity_index\";s:3:\"229\";s:11:\"trend_index\";s:3:\"248\";s:6:\"is_pro\";s:1:\"0\";s:17:\"has_page_settings\";s:1:\"0\";}i:96;a:14:{s:2:\"id\";s:4:\"5133\";s:5:\"title\";s:12:\"Portfolio 18\";s:9:\"thumbnail\";s:78:\"https://library.elementor.com/wp-content/uploads/2018/03/portfolio_white_9.png\";s:12:\"tmpl_created\";s:10:\"1520520599\";s:6:\"author\";s:9:\"Elementor\";s:3:\"url\";s:109:\"https://library.elementor.com/blocks/portfolio-18/?utm_source=library&utm_medium=wp-dash&utm_campaign=preview\";s:4:\"type\";s:5:\"block\";s:7:\"subtype\";s:9:\"portfolio\";s:4:\"tags\";s:13:\"[\"portfolio\"]\";s:10:\"menu_order\";s:1:\"0\";s:16:\"popularity_index\";s:3:\"167\";s:11:\"trend_index\";s:3:\"128\";s:6:\"is_pro\";s:1:\"0\";s:17:\"has_page_settings\";s:1:\"0\";}i:97;a:14:{s:2:\"id\";s:4:\"5141\";s:5:\"title\";s:12:\"Portfolio 10\";s:9:\"thumbnail\";s:79:\"https://library.elementor.com/wp-content/uploads/2018/03/portfolio_white_10.png\";s:12:\"tmpl_created\";s:10:\"1520520601\";s:6:\"author\";s:9:\"Elementor\";s:3:\"url\";s:109:\"https://library.elementor.com/blocks/portfolio-10/?utm_source=library&utm_medium=wp-dash&utm_campaign=preview\";s:4:\"type\";s:5:\"block\";s:7:\"subtype\";s:9:\"portfolio\";s:4:\"tags\";s:13:\"[\"portfolio\"]\";s:10:\"menu_order\";s:1:\"0\";s:16:\"popularity_index\";s:3:\"199\";s:11:\"trend_index\";s:3:\"410\";s:6:\"is_pro\";s:1:\"1\";s:17:\"has_page_settings\";s:1:\"0\";}i:98;a:14:{s:2:\"id\";s:4:\"5149\";s:5:\"title\";s:11:\"Portfolio 2\";s:9:\"thumbnail\";s:79:\"https://library.elementor.com/wp-content/uploads/2018/03/portfolio_black_10.png\";s:12:\"tmpl_created\";s:10:\"1520520602\";s:6:\"author\";s:9:\"Elementor\";s:3:\"url\";s:108:\"https://library.elementor.com/blocks/portfolio-2/?utm_source=library&utm_medium=wp-dash&utm_campaign=preview\";s:4:\"type\";s:5:\"block\";s:7:\"subtype\";s:9:\"portfolio\";s:4:\"tags\";s:13:\"[\"portfolio\"]\";s:10:\"menu_order\";s:1:\"0\";s:16:\"popularity_index\";s:3:\"185\";s:11:\"trend_index\";s:3:\"360\";s:6:\"is_pro\";s:1:\"1\";s:17:\"has_page_settings\";s:1:\"0\";}i:99;a:14:{s:2:\"id\";s:4:\"5542\";s:5:\"title\";s:6:\"CTA 19\";s:9:\"thumbnail\";s:72:\"https://library.elementor.com/wp-content/uploads/2018/03/cta_white_1.png\";s:12:\"tmpl_created\";s:10:\"1520520681\";s:6:\"author\";s:9:\"Elementor\";s:3:\"url\";s:103:\"https://library.elementor.com/blocks/cta-19/?utm_source=library&utm_medium=wp-dash&utm_campaign=preview\";s:4:\"type\";s:5:\"block\";s:7:\"subtype\";s:14:\"call to action\";s:4:\"tags\";s:7:\"[\"cta\"]\";s:10:\"menu_order\";s:1:\"0\";s:16:\"popularity_index\";s:3:\"158\";s:11:\"trend_index\";s:3:\"196\";s:6:\"is_pro\";s:1:\"0\";s:17:\"has_page_settings\";s:1:\"0\";}i:100;a:14:{s:2:\"id\";s:4:\"5550\";s:5:\"title\";s:6:\"CTA 33\";s:9:\"thumbnail\";s:72:\"https://library.elementor.com/wp-content/uploads/2018/03/cta_black_1.png\";s:12:\"tmpl_created\";s:10:\"1520520682\";s:6:\"author\";s:9:\"Elementor\";s:3:\"url\";s:103:\"https://library.elementor.com/blocks/cta-33/?utm_source=library&utm_medium=wp-dash&utm_campaign=preview\";s:4:\"type\";s:5:\"block\";s:7:\"subtype\";s:14:\"call to action\";s:4:\"tags\";s:7:\"[\"cta\"]\";s:10:\"menu_order\";s:1:\"0\";s:16:\"popularity_index\";s:3:\"297\";s:11:\"trend_index\";s:3:\"260\";s:6:\"is_pro\";s:1:\"0\";s:17:\"has_page_settings\";s:1:\"0\";}i:101;a:14:{s:2:\"id\";s:4:\"5558\";s:5:\"title\";s:5:\"CTA 1\";s:9:\"thumbnail\";s:72:\"https://library.elementor.com/wp-content/uploads/2018/03/cta_white_2.png\";s:12:\"tmpl_created\";s:10:\"1520520684\";s:6:\"author\";s:9:\"Elementor\";s:3:\"url\";s:102:\"https://library.elementor.com/blocks/cta-1/?utm_source=library&utm_medium=wp-dash&utm_campaign=preview\";s:4:\"type\";s:5:\"block\";s:7:\"subtype\";s:14:\"call to action\";s:4:\"tags\";s:7:\"[\"cta\"]\";s:10:\"menu_order\";s:1:\"0\";s:16:\"popularity_index\";s:3:\"116\";s:11:\"trend_index\";s:2:\"96\";s:6:\"is_pro\";s:1:\"0\";s:17:\"has_page_settings\";s:1:\"0\";}i:102;a:14:{s:2:\"id\";s:4:\"5567\";s:5:\"title\";s:5:\"CTA 2\";s:9:\"thumbnail\";s:72:\"https://library.elementor.com/wp-content/uploads/2018/03/cta_black_2.png\";s:12:\"tmpl_created\";s:10:\"1520520685\";s:6:\"author\";s:9:\"Elementor\";s:3:\"url\";s:102:\"https://library.elementor.com/blocks/cta-2/?utm_source=library&utm_medium=wp-dash&utm_campaign=preview\";s:4:\"type\";s:5:\"block\";s:7:\"subtype\";s:14:\"call to action\";s:4:\"tags\";s:7:\"[\"cta\"]\";s:10:\"menu_order\";s:1:\"0\";s:16:\"popularity_index\";s:3:\"171\";s:11:\"trend_index\";s:3:\"134\";s:6:\"is_pro\";s:1:\"0\";s:17:\"has_page_settings\";s:1:\"0\";}i:103;a:14:{s:2:\"id\";s:4:\"5583\";s:5:\"title\";s:6:\"CTA 26\";s:9:\"thumbnail\";s:72:\"https://library.elementor.com/wp-content/uploads/2018/03/cta_black_3.png\";s:12:\"tmpl_created\";s:10:\"1520520689\";s:6:\"author\";s:9:\"Elementor\";s:3:\"url\";s:103:\"https://library.elementor.com/blocks/cta-26/?utm_source=library&utm_medium=wp-dash&utm_campaign=preview\";s:4:\"type\";s:5:\"block\";s:7:\"subtype\";s:14:\"call to action\";s:4:\"tags\";s:7:\"[\"cta\"]\";s:10:\"menu_order\";s:1:\"0\";s:16:\"popularity_index\";s:3:\"255\";s:11:\"trend_index\";s:3:\"210\";s:6:\"is_pro\";s:1:\"0\";s:17:\"has_page_settings\";s:1:\"0\";}i:104;a:14:{s:2:\"id\";s:4:\"5591\";s:5:\"title\";s:5:\"CTA 5\";s:9:\"thumbnail\";s:72:\"https://library.elementor.com/wp-content/uploads/2018/03/cta_white_4.png\";s:12:\"tmpl_created\";s:10:\"1520520691\";s:6:\"author\";s:9:\"Elementor\";s:3:\"url\";s:102:\"https://library.elementor.com/blocks/cta-5/?utm_source=library&utm_medium=wp-dash&utm_campaign=preview\";s:4:\"type\";s:5:\"block\";s:7:\"subtype\";s:14:\"call to action\";s:4:\"tags\";s:7:\"[\"cta\"]\";s:10:\"menu_order\";s:1:\"0\";s:16:\"popularity_index\";s:3:\"109\";s:11:\"trend_index\";s:3:\"130\";s:6:\"is_pro\";s:1:\"0\";s:17:\"has_page_settings\";s:1:\"0\";}i:105;a:14:{s:2:\"id\";s:4:\"5599\";s:5:\"title\";s:5:\"CTA 6\";s:9:\"thumbnail\";s:72:\"https://library.elementor.com/wp-content/uploads/2018/03/cta_black_4.png\";s:12:\"tmpl_created\";s:10:\"1520520693\";s:6:\"author\";s:9:\"Elementor\";s:3:\"url\";s:102:\"https://library.elementor.com/blocks/cta-6/?utm_source=library&utm_medium=wp-dash&utm_campaign=preview\";s:4:\"type\";s:5:\"block\";s:7:\"subtype\";s:14:\"call to action\";s:4:\"tags\";s:7:\"[\"cta\"]\";s:10:\"menu_order\";s:1:\"0\";s:16:\"popularity_index\";s:3:\"265\";s:11:\"trend_index\";s:3:\"229\";s:6:\"is_pro\";s:1:\"0\";s:17:\"has_page_settings\";s:1:\"0\";}i:106;a:14:{s:2:\"id\";s:4:\"5607\";s:5:\"title\";s:6:\"CTA 13\";s:9:\"thumbnail\";s:72:\"https://library.elementor.com/wp-content/uploads/2018/03/cta_black_5.png\";s:12:\"tmpl_created\";s:10:\"1520520695\";s:6:\"author\";s:9:\"Elementor\";s:3:\"url\";s:103:\"https://library.elementor.com/blocks/cta-13/?utm_source=library&utm_medium=wp-dash&utm_campaign=preview\";s:4:\"type\";s:5:\"block\";s:7:\"subtype\";s:14:\"call to action\";s:4:\"tags\";s:7:\"[\"cta\"]\";s:10:\"menu_order\";s:1:\"0\";s:16:\"popularity_index\";s:3:\"156\";s:11:\"trend_index\";s:3:\"164\";s:6:\"is_pro\";s:1:\"0\";s:17:\"has_page_settings\";s:1:\"0\";}i:107;a:14:{s:2:\"id\";s:4:\"5634\";s:5:\"title\";s:6:\"CTA 24\";s:9:\"thumbnail\";s:72:\"https://library.elementor.com/wp-content/uploads/2018/03/cta_white_6.png\";s:12:\"tmpl_created\";s:10:\"1520520699\";s:6:\"author\";s:9:\"Elementor\";s:3:\"url\";s:103:\"https://library.elementor.com/blocks/cta-24/?utm_source=library&utm_medium=wp-dash&utm_campaign=preview\";s:4:\"type\";s:5:\"block\";s:7:\"subtype\";s:14:\"call to action\";s:4:\"tags\";s:7:\"[\"cta\"]\";s:10:\"menu_order\";s:1:\"0\";s:16:\"popularity_index\";s:3:\"168\";s:11:\"trend_index\";s:3:\"216\";s:6:\"is_pro\";s:1:\"0\";s:17:\"has_page_settings\";s:1:\"0\";}i:108;a:14:{s:2:\"id\";s:4:\"5642\";s:5:\"title\";s:6:\"CTA 25\";s:9:\"thumbnail\";s:72:\"https://library.elementor.com/wp-content/uploads/2018/03/cta_black_6.png\";s:12:\"tmpl_created\";s:10:\"1520520701\";s:6:\"author\";s:9:\"Elementor\";s:3:\"url\";s:103:\"https://library.elementor.com/blocks/cta-25/?utm_source=library&utm_medium=wp-dash&utm_campaign=preview\";s:4:\"type\";s:5:\"block\";s:7:\"subtype\";s:14:\"call to action\";s:4:\"tags\";s:7:\"[\"cta\"]\";s:10:\"menu_order\";s:1:\"0\";s:16:\"popularity_index\";s:3:\"236\";s:11:\"trend_index\";s:3:\"206\";s:6:\"is_pro\";s:1:\"0\";s:17:\"has_page_settings\";s:1:\"0\";}i:109;a:14:{s:2:\"id\";s:4:\"5650\";s:5:\"title\";s:5:\"CTA 9\";s:9:\"thumbnail\";s:72:\"https://library.elementor.com/wp-content/uploads/2018/03/cta_white_7.png\";s:12:\"tmpl_created\";s:10:\"1520520702\";s:6:\"author\";s:9:\"Elementor\";s:3:\"url\";s:102:\"https://library.elementor.com/blocks/cta-9/?utm_source=library&utm_medium=wp-dash&utm_campaign=preview\";s:4:\"type\";s:5:\"block\";s:7:\"subtype\";s:14:\"call to action\";s:4:\"tags\";s:7:\"[\"cta\"]\";s:10:\"menu_order\";s:1:\"0\";s:16:\"popularity_index\";s:3:\"111\";s:11:\"trend_index\";s:2:\"80\";s:6:\"is_pro\";s:1:\"0\";s:17:\"has_page_settings\";s:1:\"0\";}i:110;a:14:{s:2:\"id\";s:4:\"5658\";s:5:\"title\";s:5:\"CTA 8\";s:9:\"thumbnail\";s:72:\"https://library.elementor.com/wp-content/uploads/2018/03/cta_black_7.png\";s:12:\"tmpl_created\";s:10:\"1520520704\";s:6:\"author\";s:9:\"Elementor\";s:3:\"url\";s:102:\"https://library.elementor.com/blocks/cta-8/?utm_source=library&utm_medium=wp-dash&utm_campaign=preview\";s:4:\"type\";s:5:\"block\";s:7:\"subtype\";s:14:\"call to action\";s:4:\"tags\";s:7:\"[\"cta\"]\";s:10:\"menu_order\";s:1:\"0\";s:16:\"popularity_index\";s:3:\"202\";s:11:\"trend_index\";s:3:\"220\";s:6:\"is_pro\";s:1:\"0\";s:17:\"has_page_settings\";s:1:\"0\";}i:111;a:14:{s:2:\"id\";s:4:\"5667\";s:5:\"title\";s:5:\"CTA 3\";s:9:\"thumbnail\";s:72:\"https://library.elementor.com/wp-content/uploads/2018/03/cta_white_8.png\";s:12:\"tmpl_created\";s:10:\"1520520705\";s:6:\"author\";s:9:\"Elementor\";s:3:\"url\";s:102:\"https://library.elementor.com/blocks/cta-3/?utm_source=library&utm_medium=wp-dash&utm_campaign=preview\";s:4:\"type\";s:5:\"block\";s:7:\"subtype\";s:14:\"call to action\";s:4:\"tags\";s:7:\"[\"cta\"]\";s:10:\"menu_order\";s:1:\"0\";s:16:\"popularity_index\";s:3:\"131\";s:11:\"trend_index\";s:3:\"122\";s:6:\"is_pro\";s:1:\"0\";s:17:\"has_page_settings\";s:1:\"0\";}i:112;a:14:{s:2:\"id\";s:4:\"5675\";s:5:\"title\";s:5:\"CTA 4\";s:9:\"thumbnail\";s:72:\"https://library.elementor.com/wp-content/uploads/2018/03/cta_black_8.png\";s:12:\"tmpl_created\";s:10:\"1520520707\";s:6:\"author\";s:9:\"Elementor\";s:3:\"url\";s:102:\"https://library.elementor.com/blocks/cta-4/?utm_source=library&utm_medium=wp-dash&utm_campaign=preview\";s:4:\"type\";s:5:\"block\";s:7:\"subtype\";s:14:\"call to action\";s:4:\"tags\";s:7:\"[\"cta\"]\";s:10:\"menu_order\";s:1:\"0\";s:16:\"popularity_index\";s:3:\"369\";s:11:\"trend_index\";s:3:\"300\";s:6:\"is_pro\";s:1:\"0\";s:17:\"has_page_settings\";s:1:\"0\";}i:113;a:14:{s:2:\"id\";s:4:\"5860\";s:5:\"title\";s:6:\"CTA 17\";s:9:\"thumbnail\";s:72:\"https://library.elementor.com/wp-content/uploads/2018/03/cta_white_9.png\";s:12:\"tmpl_created\";s:10:\"1520520746\";s:6:\"author\";s:9:\"Elementor\";s:3:\"url\";s:103:\"https://library.elementor.com/blocks/cta-17/?utm_source=library&utm_medium=wp-dash&utm_campaign=preview\";s:4:\"type\";s:5:\"block\";s:7:\"subtype\";s:14:\"call to action\";s:4:\"tags\";s:7:\"[\"cta\"]\";s:10:\"menu_order\";s:1:\"0\";s:16:\"popularity_index\";s:3:\"136\";s:11:\"trend_index\";s:3:\"146\";s:6:\"is_pro\";s:1:\"0\";s:17:\"has_page_settings\";s:1:\"0\";}i:114;a:14:{s:2:\"id\";s:4:\"5869\";s:5:\"title\";s:6:\"CTA 18\";s:9:\"thumbnail\";s:73:\"https://library.elementor.com/wp-content/uploads/2018/03/cta_white_10.png\";s:12:\"tmpl_created\";s:10:\"1520520747\";s:6:\"author\";s:9:\"Elementor\";s:3:\"url\";s:103:\"https://library.elementor.com/blocks/cta-18/?utm_source=library&utm_medium=wp-dash&utm_campaign=preview\";s:4:\"type\";s:5:\"block\";s:7:\"subtype\";s:14:\"call to action\";s:4:\"tags\";s:7:\"[\"cta\"]\";s:10:\"menu_order\";s:1:\"0\";s:16:\"popularity_index\";s:3:\"295\";s:11:\"trend_index\";s:3:\"175\";s:6:\"is_pro\";s:1:\"0\";s:17:\"has_page_settings\";s:1:\"0\";}i:115;a:14:{s:2:\"id\";s:4:\"5877\";s:5:\"title\";s:6:\"CTA 16\";s:9:\"thumbnail\";s:73:\"https://library.elementor.com/wp-content/uploads/2018/03/cta_black_10.png\";s:12:\"tmpl_created\";s:10:\"1520520749\";s:6:\"author\";s:9:\"Elementor\";s:3:\"url\";s:103:\"https://library.elementor.com/blocks/cta-16/?utm_source=library&utm_medium=wp-dash&utm_campaign=preview\";s:4:\"type\";s:5:\"block\";s:7:\"subtype\";s:14:\"call to action\";s:4:\"tags\";s:7:\"[\"cta\"]\";s:10:\"menu_order\";s:1:\"0\";s:16:\"popularity_index\";s:3:\"403\";s:11:\"trend_index\";s:3:\"422\";s:6:\"is_pro\";s:1:\"0\";s:17:\"has_page_settings\";s:1:\"0\";}i:116;a:14:{s:2:\"id\";s:4:\"5885\";s:5:\"title\";s:6:\"CTA 15\";s:9:\"thumbnail\";s:73:\"https://library.elementor.com/wp-content/uploads/2018/03/cta_white_11.png\";s:12:\"tmpl_created\";s:10:\"1520520751\";s:6:\"author\";s:9:\"Elementor\";s:3:\"url\";s:103:\"https://library.elementor.com/blocks/cta-15/?utm_source=library&utm_medium=wp-dash&utm_campaign=preview\";s:4:\"type\";s:5:\"block\";s:7:\"subtype\";s:14:\"call to action\";s:4:\"tags\";s:7:\"[\"cta\"]\";s:10:\"menu_order\";s:1:\"0\";s:16:\"popularity_index\";s:3:\"313\";s:11:\"trend_index\";s:3:\"393\";s:6:\"is_pro\";s:1:\"0\";s:17:\"has_page_settings\";s:1:\"0\";}i:117;a:14:{s:2:\"id\";s:4:\"5893\";s:5:\"title\";s:6:\"CTA 21\";s:9:\"thumbnail\";s:73:\"https://library.elementor.com/wp-content/uploads/2018/03/cta_black_12.png\";s:12:\"tmpl_created\";s:10:\"1520520752\";s:6:\"author\";s:9:\"Elementor\";s:3:\"url\";s:103:\"https://library.elementor.com/blocks/cta-21/?utm_source=library&utm_medium=wp-dash&utm_campaign=preview\";s:4:\"type\";s:5:\"block\";s:7:\"subtype\";s:14:\"call to action\";s:4:\"tags\";s:7:\"[\"cta\"]\";s:10:\"menu_order\";s:1:\"0\";s:16:\"popularity_index\";s:3:\"239\";s:11:\"trend_index\";s:3:\"254\";s:6:\"is_pro\";s:1:\"0\";s:17:\"has_page_settings\";s:1:\"0\";}i:118;a:14:{s:2:\"id\";s:4:\"5904\";s:5:\"title\";s:6:\"CTA 27\";s:9:\"thumbnail\";s:73:\"https://library.elementor.com/wp-content/uploads/2018/03/cta_white_13.png\";s:12:\"tmpl_created\";s:10:\"1520520754\";s:6:\"author\";s:9:\"Elementor\";s:3:\"url\";s:103:\"https://library.elementor.com/blocks/cta-27/?utm_source=library&utm_medium=wp-dash&utm_campaign=preview\";s:4:\"type\";s:5:\"block\";s:7:\"subtype\";s:14:\"call to action\";s:4:\"tags\";s:7:\"[\"cta\"]\";s:10:\"menu_order\";s:1:\"0\";s:16:\"popularity_index\";s:3:\"386\";s:11:\"trend_index\";s:3:\"350\";s:6:\"is_pro\";s:1:\"0\";s:17:\"has_page_settings\";s:1:\"0\";}i:119;a:14:{s:2:\"id\";s:4:\"5912\";s:5:\"title\";s:6:\"CTA 28\";s:9:\"thumbnail\";s:73:\"https://library.elementor.com/wp-content/uploads/2018/03/cta_black_11.png\";s:12:\"tmpl_created\";s:10:\"1520520755\";s:6:\"author\";s:9:\"Elementor\";s:3:\"url\";s:103:\"https://library.elementor.com/blocks/cta-28/?utm_source=library&utm_medium=wp-dash&utm_campaign=preview\";s:4:\"type\";s:5:\"block\";s:7:\"subtype\";s:14:\"call to action\";s:4:\"tags\";s:7:\"[\"cta\"]\";s:10:\"menu_order\";s:1:\"0\";s:16:\"popularity_index\";s:3:\"433\";s:11:\"trend_index\";s:3:\"414\";s:6:\"is_pro\";s:1:\"0\";s:17:\"has_page_settings\";s:1:\"0\";}i:120;a:14:{s:2:\"id\";s:4:\"5921\";s:5:\"title\";s:6:\"CTA 12\";s:9:\"thumbnail\";s:73:\"https://library.elementor.com/wp-content/uploads/2018/03/cta_white_14.png\";s:12:\"tmpl_created\";s:10:\"1520520757\";s:6:\"author\";s:9:\"Elementor\";s:3:\"url\";s:103:\"https://library.elementor.com/blocks/cta-12/?utm_source=library&utm_medium=wp-dash&utm_campaign=preview\";s:4:\"type\";s:5:\"block\";s:7:\"subtype\";s:14:\"call to action\";s:4:\"tags\";s:7:\"[\"cta\"]\";s:10:\"menu_order\";s:1:\"0\";s:16:\"popularity_index\";s:3:\"256\";s:11:\"trend_index\";s:3:\"225\";s:6:\"is_pro\";s:1:\"0\";s:17:\"has_page_settings\";s:1:\"0\";}i:121;a:14:{s:2:\"id\";s:4:\"5930\";s:5:\"title\";s:6:\"CTA 11\";s:9:\"thumbnail\";s:73:\"https://library.elementor.com/wp-content/uploads/2018/03/cta_white_15.png\";s:12:\"tmpl_created\";s:10:\"1520520758\";s:6:\"author\";s:9:\"Elementor\";s:3:\"url\";s:103:\"https://library.elementor.com/blocks/cta-11/?utm_source=library&utm_medium=wp-dash&utm_campaign=preview\";s:4:\"type\";s:5:\"block\";s:7:\"subtype\";s:14:\"call to action\";s:4:\"tags\";s:7:\"[\"cta\"]\";s:10:\"menu_order\";s:1:\"0\";s:16:\"popularity_index\";s:2:\"72\";s:11:\"trend_index\";s:2:\"60\";s:6:\"is_pro\";s:1:\"0\";s:17:\"has_page_settings\";s:1:\"0\";}i:122;a:14:{s:2:\"id\";s:4:\"5939\";s:5:\"title\";s:6:\"CTA 10\";s:9:\"thumbnail\";s:75:\"https://library.elementor.com/wp-content/uploads/2018/03/cta_black_13-1.png\";s:12:\"tmpl_created\";s:10:\"1520520760\";s:6:\"author\";s:9:\"Elementor\";s:3:\"url\";s:103:\"https://library.elementor.com/blocks/cta-10/?utm_source=library&utm_medium=wp-dash&utm_campaign=preview\";s:4:\"type\";s:5:\"block\";s:7:\"subtype\";s:14:\"call to action\";s:4:\"tags\";s:7:\"[\"cta\"]\";s:10:\"menu_order\";s:1:\"0\";s:16:\"popularity_index\";s:3:\"175\";s:11:\"trend_index\";s:3:\"221\";s:6:\"is_pro\";s:1:\"0\";s:17:\"has_page_settings\";s:1:\"0\";}i:123;a:14:{s:2:\"id\";s:4:\"7596\";s:5:\"title\";s:8:\"Header 1\";s:9:\"thumbnail\";s:73:\"https://library.elementor.com/wp-content/uploads/2018/03/header350.12.jpg\";s:12:\"tmpl_created\";s:10:\"1521546999\";s:6:\"author\";s:9:\"Elementor\";s:3:\"url\";s:105:\"https://library.elementor.com/blocks/header-1/?utm_source=library&utm_medium=wp-dash&utm_campaign=preview\";s:4:\"type\";s:5:\"block\";s:7:\"subtype\";s:6:\"header\";s:4:\"tags\";s:10:\"[\"header\"]\";s:10:\"menu_order\";s:1:\"0\";s:16:\"popularity_index\";s:2:\"36\";s:11:\"trend_index\";s:2:\"26\";s:6:\"is_pro\";s:1:\"1\";s:17:\"has_page_settings\";s:1:\"0\";}i:124;a:14:{s:2:\"id\";s:4:\"7615\";s:5:\"title\";s:8:\"Header 2\";s:9:\"thumbnail\";s:72:\"https://library.elementor.com/wp-content/uploads/2018/03/header350.1.jpg\";s:12:\"tmpl_created\";s:10:\"1521547237\";s:6:\"author\";s:9:\"Elementor\";s:3:\"url\";s:105:\"https://library.elementor.com/blocks/header-2/?utm_source=library&utm_medium=wp-dash&utm_campaign=preview\";s:4:\"type\";s:5:\"block\";s:7:\"subtype\";s:6:\"header\";s:4:\"tags\";s:10:\"[\"header\"]\";s:10:\"menu_order\";s:1:\"0\";s:16:\"popularity_index\";s:2:\"38\";s:11:\"trend_index\";s:2:\"40\";s:6:\"is_pro\";s:1:\"1\";s:17:\"has_page_settings\";s:1:\"0\";}i:125;a:14:{s:2:\"id\";s:4:\"7627\";s:5:\"title\";s:8:\"Footer 8\";s:9:\"thumbnail\";s:74:\"https://library.elementor.com/wp-content/uploads/2018/03/footer_hero_1.png\";s:12:\"tmpl_created\";s:10:\"1521547332\";s:6:\"author\";s:9:\"Elementor\";s:3:\"url\";s:105:\"https://library.elementor.com/blocks/footer-8/?utm_source=library&utm_medium=wp-dash&utm_campaign=preview\";s:4:\"type\";s:5:\"block\";s:7:\"subtype\";s:6:\"footer\";s:4:\"tags\";s:10:\"[\"footer\"]\";s:10:\"menu_order\";s:1:\"0\";s:16:\"popularity_index\";s:2:\"91\";s:11:\"trend_index\";s:3:\"111\";s:6:\"is_pro\";s:1:\"1\";s:17:\"has_page_settings\";s:1:\"0\";}i:126;a:14:{s:2:\"id\";s:4:\"7638\";s:5:\"title\";s:8:\"Footer 9\";s:9:\"thumbnail\";s:74:\"https://library.elementor.com/wp-content/uploads/2018/03/footer_hero_2.png\";s:12:\"tmpl_created\";s:10:\"1521547502\";s:6:\"author\";s:9:\"Elementor\";s:3:\"url\";s:105:\"https://library.elementor.com/blocks/footer-9/?utm_source=library&utm_medium=wp-dash&utm_campaign=preview\";s:4:\"type\";s:5:\"block\";s:7:\"subtype\";s:6:\"footer\";s:4:\"tags\";s:10:\"[\"footer\"]\";s:10:\"menu_order\";s:1:\"0\";s:16:\"popularity_index\";s:3:\"122\";s:11:\"trend_index\";s:3:\"133\";s:6:\"is_pro\";s:1:\"1\";s:17:\"has_page_settings\";s:1:\"0\";}i:127;a:14:{s:2:\"id\";s:4:\"7663\";s:5:\"title\";s:13:\"Single Post 2\";s:9:\"thumbnail\";s:77:\"https://library.elementor.com/wp-content/uploads/2018/03/single_post_2_v2.jpg\";s:12:\"tmpl_created\";s:10:\"1521547761\";s:6:\"author\";s:9:\"Elementor\";s:3:\"url\";s:110:\"https://library.elementor.com/blocks/single-post-2/?utm_source=library&utm_medium=wp-dash&utm_campaign=preview\";s:4:\"type\";s:5:\"block\";s:7:\"subtype\";s:11:\"single post\";s:4:\"tags\";s:24:\"[\"Blog\",\"Post\",\"Single\"]\";s:10:\"menu_order\";s:1:\"0\";s:16:\"popularity_index\";s:2:\"58\";s:11:\"trend_index\";s:2:\"42\";s:6:\"is_pro\";s:1:\"1\";s:17:\"has_page_settings\";s:1:\"0\";}i:128;a:14:{s:2:\"id\";s:4:\"7650\";s:5:\"title\";s:13:\"Single Post 1\";s:9:\"thumbnail\";s:77:\"https://library.elementor.com/wp-content/uploads/2018/03/single_post_1_v2.jpg\";s:12:\"tmpl_created\";s:10:\"1521557736\";s:6:\"author\";s:9:\"Elementor\";s:3:\"url\";s:110:\"https://library.elementor.com/blocks/single-post-1/?utm_source=library&utm_medium=wp-dash&utm_campaign=preview\";s:4:\"type\";s:5:\"block\";s:7:\"subtype\";s:11:\"single post\";s:4:\"tags\";s:24:\"[\"Blog\",\"Post\",\"Single\"]\";s:10:\"menu_order\";s:1:\"0\";s:16:\"popularity_index\";s:2:\"84\";s:11:\"trend_index\";s:2:\"90\";s:6:\"is_pro\";s:1:\"1\";s:17:\"has_page_settings\";s:1:\"0\";}i:129;a:14:{s:2:\"id\";s:4:\"7686\";s:5:\"title\";s:12:\"Blog Posts 1\";s:9:\"thumbnail\";s:71:\"https://library.elementor.com/wp-content/uploads/2018/03/blog_posts.png\";s:12:\"tmpl_created\";s:10:\"1521558047\";s:6:\"author\";s:9:\"Elementor\";s:3:\"url\";s:109:\"https://library.elementor.com/blocks/blog-posts-1/?utm_source=library&utm_medium=wp-dash&utm_campaign=preview\";s:4:\"type\";s:5:\"block\";s:7:\"subtype\";s:4:\"page\";s:4:\"tags\";s:26:\"[\"archive\",\"Blog\",\"posts\"]\";s:10:\"menu_order\";s:1:\"0\";s:16:\"popularity_index\";s:2:\"85\";s:11:\"trend_index\";s:2:\"95\";s:6:\"is_pro\";s:1:\"1\";s:17:\"has_page_settings\";s:1:\"0\";}i:130;a:14:{s:2:\"id\";s:4:\"4676\";s:5:\"title\";s:8:\"Footer 7\";s:9:\"thumbnail\";s:69:\"https://library.elementor.com/wp-content/uploads/2018/03/footer_7.png\";s:12:\"tmpl_created\";s:10:\"1522014215\";s:6:\"author\";s:9:\"Elementor\";s:3:\"url\";s:105:\"https://library.elementor.com/blocks/footer_7/?utm_source=library&utm_medium=wp-dash&utm_campaign=preview\";s:4:\"type\";s:5:\"block\";s:7:\"subtype\";s:6:\"footer\";s:4:\"tags\";s:10:\"[\"footer\"]\";s:10:\"menu_order\";s:1:\"0\";s:16:\"popularity_index\";s:3:\"195\";s:11:\"trend_index\";s:3:\"257\";s:6:\"is_pro\";s:1:\"1\";s:17:\"has_page_settings\";s:1:\"0\";}i:131;a:14:{s:2:\"id\";s:4:\"7997\";s:5:\"title\";s:10:\"footer 014\";s:9:\"thumbnail\";s:72:\"https://library.elementor.com/wp-content/uploads/2018/03/footer350.1.jpg\";s:12:\"tmpl_created\";s:10:\"1524582343\";s:6:\"author\";s:9:\"Elementor\";s:3:\"url\";s:107:\"https://library.elementor.com/blocks/footer-014/?utm_source=library&utm_medium=wp-dash&utm_campaign=preview\";s:4:\"type\";s:5:\"block\";s:7:\"subtype\";s:6:\"footer\";s:4:\"tags\";s:2:\"[]\";s:10:\"menu_order\";s:1:\"0\";s:16:\"popularity_index\";s:3:\"117\";s:11:\"trend_index\";s:2:\"81\";s:6:\"is_pro\";s:1:\"1\";s:17:\"has_page_settings\";s:1:\"0\";}i:132;a:14:{s:2:\"id\";s:4:\"7982\";s:5:\"title\";s:10:\"footer 013\";s:9:\"thumbnail\";s:72:\"https://library.elementor.com/wp-content/uploads/2018/03/footer350.2.jpg\";s:12:\"tmpl_created\";s:10:\"1524582468\";s:6:\"author\";s:9:\"Elementor\";s:3:\"url\";s:107:\"https://library.elementor.com/blocks/footer-013/?utm_source=library&utm_medium=wp-dash&utm_campaign=preview\";s:4:\"type\";s:5:\"block\";s:7:\"subtype\";s:6:\"footer\";s:4:\"tags\";s:2:\"[]\";s:10:\"menu_order\";s:1:\"0\";s:16:\"popularity_index\";s:3:\"296\";s:11:\"trend_index\";s:3:\"244\";s:6:\"is_pro\";s:1:\"1\";s:17:\"has_page_settings\";s:1:\"0\";}i:133;a:14:{s:2:\"id\";s:4:\"7959\";s:5:\"title\";s:10:\"footer 012\";s:9:\"thumbnail\";s:72:\"https://library.elementor.com/wp-content/uploads/2018/03/footer350.3.jpg\";s:12:\"tmpl_created\";s:10:\"1524582605\";s:6:\"author\";s:9:\"Elementor\";s:3:\"url\";s:107:\"https://library.elementor.com/blocks/footer-012/?utm_source=library&utm_medium=wp-dash&utm_campaign=preview\";s:4:\"type\";s:5:\"block\";s:7:\"subtype\";s:6:\"footer\";s:4:\"tags\";s:2:\"[]\";s:10:\"menu_order\";s:1:\"0\";s:16:\"popularity_index\";s:3:\"198\";s:11:\"trend_index\";s:3:\"149\";s:6:\"is_pro\";s:1:\"1\";s:17:\"has_page_settings\";s:1:\"0\";}i:134;a:14:{s:2:\"id\";s:4:\"7950\";s:5:\"title\";s:10:\"footer 011\";s:9:\"thumbnail\";s:72:\"https://library.elementor.com/wp-content/uploads/2018/03/footer350.4.jpg\";s:12:\"tmpl_created\";s:10:\"1524582631\";s:6:\"author\";s:9:\"Elementor\";s:3:\"url\";s:107:\"https://library.elementor.com/blocks/footer-011/?utm_source=library&utm_medium=wp-dash&utm_campaign=preview\";s:4:\"type\";s:5:\"block\";s:7:\"subtype\";s:6:\"footer\";s:4:\"tags\";s:2:\"[]\";s:10:\"menu_order\";s:1:\"0\";s:16:\"popularity_index\";s:3:\"271\";s:11:\"trend_index\";s:3:\"232\";s:6:\"is_pro\";s:1:\"1\";s:17:\"has_page_settings\";s:1:\"0\";}i:135;a:14:{s:2:\"id\";s:4:\"7937\";s:5:\"title\";s:10:\"footer 010\";s:9:\"thumbnail\";s:72:\"https://library.elementor.com/wp-content/uploads/2018/03/footer350.5.jpg\";s:12:\"tmpl_created\";s:10:\"1524582665\";s:6:\"author\";s:9:\"Elementor\";s:3:\"url\";s:107:\"https://library.elementor.com/blocks/footer-010/?utm_source=library&utm_medium=wp-dash&utm_campaign=preview\";s:4:\"type\";s:5:\"block\";s:7:\"subtype\";s:6:\"footer\";s:4:\"tags\";s:2:\"[]\";s:10:\"menu_order\";s:1:\"0\";s:16:\"popularity_index\";s:3:\"224\";s:11:\"trend_index\";s:3:\"126\";s:6:\"is_pro\";s:1:\"1\";s:17:\"has_page_settings\";s:1:\"0\";}i:136;a:14:{s:2:\"id\";s:4:\"7927\";s:5:\"title\";s:9:\"footer 09\";s:9:\"thumbnail\";s:72:\"https://library.elementor.com/wp-content/uploads/2018/03/footer350.6.jpg\";s:12:\"tmpl_created\";s:10:\"1524582691\";s:6:\"author\";s:9:\"Elementor\";s:3:\"url\";s:106:\"https://library.elementor.com/blocks/footer-09/?utm_source=library&utm_medium=wp-dash&utm_campaign=preview\";s:4:\"type\";s:5:\"block\";s:7:\"subtype\";s:6:\"footer\";s:4:\"tags\";s:2:\"[]\";s:10:\"menu_order\";s:1:\"0\";s:16:\"popularity_index\";s:3:\"184\";s:11:\"trend_index\";s:3:\"174\";s:6:\"is_pro\";s:1:\"1\";s:17:\"has_page_settings\";s:1:\"0\";}i:137;a:14:{s:2:\"id\";s:4:\"7917\";s:5:\"title\";s:9:\"footer 08\";s:9:\"thumbnail\";s:72:\"https://library.elementor.com/wp-content/uploads/2018/03/footer350.7.jpg\";s:12:\"tmpl_created\";s:10:\"1524582788\";s:6:\"author\";s:9:\"Elementor\";s:3:\"url\";s:106:\"https://library.elementor.com/blocks/footer-08/?utm_source=library&utm_medium=wp-dash&utm_campaign=preview\";s:4:\"type\";s:5:\"block\";s:7:\"subtype\";s:6:\"footer\";s:4:\"tags\";s:2:\"[]\";s:10:\"menu_order\";s:1:\"0\";s:16:\"popularity_index\";s:3:\"115\";s:11:\"trend_index\";s:2:\"94\";s:6:\"is_pro\";s:1:\"1\";s:17:\"has_page_settings\";s:1:\"0\";}i:138;a:14:{s:2:\"id\";s:4:\"7904\";s:5:\"title\";s:9:\"footer 07\";s:9:\"thumbnail\";s:72:\"https://library.elementor.com/wp-content/uploads/2018/03/footer350.8.jpg\";s:12:\"tmpl_created\";s:10:\"1524582814\";s:6:\"author\";s:9:\"Elementor\";s:3:\"url\";s:106:\"https://library.elementor.com/blocks/footer-07/?utm_source=library&utm_medium=wp-dash&utm_campaign=preview\";s:4:\"type\";s:5:\"block\";s:7:\"subtype\";s:6:\"footer\";s:4:\"tags\";s:2:\"[]\";s:10:\"menu_order\";s:1:\"0\";s:16:\"popularity_index\";s:3:\"227\";s:11:\"trend_index\";s:3:\"183\";s:6:\"is_pro\";s:1:\"1\";s:17:\"has_page_settings\";s:1:\"0\";}i:139;a:14:{s:2:\"id\";s:4:\"7837\";s:5:\"title\";s:9:\"footer 01\";s:9:\"thumbnail\";s:73:\"https://library.elementor.com/wp-content/uploads/2018/03/footer350.14.jpg\";s:12:\"tmpl_created\";s:10:\"1524582852\";s:6:\"author\";s:9:\"Elementor\";s:3:\"url\";s:106:\"https://library.elementor.com/blocks/footer-01/?utm_source=library&utm_medium=wp-dash&utm_campaign=preview\";s:4:\"type\";s:5:\"block\";s:7:\"subtype\";s:4:\"page\";s:4:\"tags\";s:2:\"[]\";s:10:\"menu_order\";s:1:\"0\";s:16:\"popularity_index\";s:3:\"406\";s:11:\"trend_index\";s:3:\"368\";s:6:\"is_pro\";s:1:\"1\";s:17:\"has_page_settings\";s:1:\"0\";}i:140;a:14:{s:2:\"id\";s:4:\"7852\";s:5:\"title\";s:9:\"footer 02\";s:9:\"thumbnail\";s:73:\"https://library.elementor.com/wp-content/uploads/2018/03/footer350.13.jpg\";s:12:\"tmpl_created\";s:10:\"1524582875\";s:6:\"author\";s:9:\"Elementor\";s:3:\"url\";s:106:\"https://library.elementor.com/blocks/footer-02/?utm_source=library&utm_medium=wp-dash&utm_campaign=preview\";s:4:\"type\";s:5:\"block\";s:7:\"subtype\";s:6:\"footer\";s:4:\"tags\";s:2:\"[]\";s:10:\"menu_order\";s:1:\"0\";s:16:\"popularity_index\";s:3:\"249\";s:11:\"trend_index\";s:3:\"211\";s:6:\"is_pro\";s:1:\"1\";s:17:\"has_page_settings\";s:1:\"0\";}i:141;a:14:{s:2:\"id\";s:4:\"7862\";s:5:\"title\";s:9:\"footer 03\";s:9:\"thumbnail\";s:73:\"https://library.elementor.com/wp-content/uploads/2018/03/footer350.12.jpg\";s:12:\"tmpl_created\";s:10:\"1524582903\";s:6:\"author\";s:9:\"Elementor\";s:3:\"url\";s:106:\"https://library.elementor.com/blocks/footer-03/?utm_source=library&utm_medium=wp-dash&utm_campaign=preview\";s:4:\"type\";s:5:\"block\";s:7:\"subtype\";s:6:\"footer\";s:4:\"tags\";s:2:\"[]\";s:10:\"menu_order\";s:1:\"0\";s:16:\"popularity_index\";s:3:\"152\";s:11:\"trend_index\";s:3:\"136\";s:6:\"is_pro\";s:1:\"1\";s:17:\"has_page_settings\";s:1:\"0\";}i:142;a:14:{s:2:\"id\";s:4:\"7871\";s:5:\"title\";s:9:\"footer 04\";s:9:\"thumbnail\";s:73:\"https://library.elementor.com/wp-content/uploads/2018/03/footer350.11.jpg\";s:12:\"tmpl_created\";s:10:\"1524582927\";s:6:\"author\";s:9:\"Elementor\";s:3:\"url\";s:106:\"https://library.elementor.com/blocks/footer-04/?utm_source=library&utm_medium=wp-dash&utm_campaign=preview\";s:4:\"type\";s:5:\"block\";s:7:\"subtype\";s:6:\"footer\";s:4:\"tags\";s:2:\"[]\";s:10:\"menu_order\";s:1:\"0\";s:16:\"popularity_index\";s:3:\"118\";s:11:\"trend_index\";s:2:\"71\";s:6:\"is_pro\";s:1:\"1\";s:17:\"has_page_settings\";s:1:\"0\";}i:143;a:14:{s:2:\"id\";s:4:\"7884\";s:5:\"title\";s:9:\"footer 05\";s:9:\"thumbnail\";s:73:\"https://library.elementor.com/wp-content/uploads/2018/03/footer350.10.jpg\";s:12:\"tmpl_created\";s:10:\"1524582944\";s:6:\"author\";s:9:\"Elementor\";s:3:\"url\";s:106:\"https://library.elementor.com/blocks/footer-05/?utm_source=library&utm_medium=wp-dash&utm_campaign=preview\";s:4:\"type\";s:5:\"block\";s:7:\"subtype\";s:6:\"footer\";s:4:\"tags\";s:2:\"[]\";s:10:\"menu_order\";s:1:\"0\";s:16:\"popularity_index\";s:2:\"31\";s:11:\"trend_index\";s:3:\"118\";s:6:\"is_pro\";s:1:\"1\";s:17:\"has_page_settings\";s:1:\"0\";}i:144;a:14:{s:2:\"id\";s:4:\"7892\";s:5:\"title\";s:9:\"footer 06\";s:9:\"thumbnail\";s:72:\"https://library.elementor.com/wp-content/uploads/2018/03/footer350.9.jpg\";s:12:\"tmpl_created\";s:10:\"1524583015\";s:6:\"author\";s:9:\"Elementor\";s:3:\"url\";s:106:\"https://library.elementor.com/blocks/footer-06/?utm_source=library&utm_medium=wp-dash&utm_campaign=preview\";s:4:\"type\";s:5:\"block\";s:7:\"subtype\";s:6:\"footer\";s:4:\"tags\";s:2:\"[]\";s:10:\"menu_order\";s:1:\"0\";s:16:\"popularity_index\";s:3:\"129\";s:11:\"trend_index\";s:3:\"121\";s:6:\"is_pro\";s:1:\"1\";s:17:\"has_page_settings\";s:1:\"0\";}i:145;a:14:{s:2:\"id\";s:4:\"4212\";s:5:\"title\";s:11:\"Services 23\";s:9:\"thumbnail\";s:76:\"https://library.elementor.com/wp-content/uploads/2018/02/Service_white_1.png\";s:12:\"tmpl_created\";s:10:\"1520443248\";s:6:\"author\";s:9:\"Elementor\";s:3:\"url\";s:108:\"https://library.elementor.com/blocks/services-23/?utm_source=library&utm_medium=wp-dash&utm_campaign=preview\";s:4:\"type\";s:5:\"block\";s:7:\"subtype\";s:8:\"services\";s:4:\"tags\";s:12:\"[\"services\"]\";s:10:\"menu_order\";s:1:\"0\";s:16:\"popularity_index\";s:3:\"130\";s:11:\"trend_index\";s:3:\"138\";s:6:\"is_pro\";s:1:\"0\";s:17:\"has_page_settings\";s:1:\"0\";}i:146;a:14:{s:2:\"id\";s:4:\"7825\";s:5:\"title\";s:9:\"header 12\";s:9:\"thumbnail\";s:73:\"https://library.elementor.com/wp-content/uploads/2018/03/header350.11.jpg\";s:12:\"tmpl_created\";s:10:\"1524583273\";s:6:\"author\";s:9:\"Elementor\";s:3:\"url\";s:106:\"https://library.elementor.com/blocks/header-12/?utm_source=library&utm_medium=wp-dash&utm_campaign=preview\";s:4:\"type\";s:5:\"block\";s:7:\"subtype\";s:6:\"header\";s:4:\"tags\";s:2:\"[]\";s:10:\"menu_order\";s:1:\"0\";s:16:\"popularity_index\";s:2:\"86\";s:11:\"trend_index\";s:2:\"72\";s:6:\"is_pro\";s:1:\"1\";s:17:\"has_page_settings\";s:1:\"0\";}i:147;a:14:{s:2:\"id\";s:4:\"4227\";s:5:\"title\";s:11:\"Services 30\";s:9:\"thumbnail\";s:76:\"https://library.elementor.com/wp-content/uploads/2018/02/Service_black_1.png\";s:12:\"tmpl_created\";s:10:\"1520443250\";s:6:\"author\";s:9:\"Elementor\";s:3:\"url\";s:108:\"https://library.elementor.com/blocks/services-30/?utm_source=library&utm_medium=wp-dash&utm_campaign=preview\";s:4:\"type\";s:5:\"block\";s:7:\"subtype\";s:8:\"services\";s:4:\"tags\";s:12:\"[\"services\"]\";s:10:\"menu_order\";s:1:\"0\";s:16:\"popularity_index\";s:3:\"340\";s:11:\"trend_index\";s:3:\"280\";s:6:\"is_pro\";s:1:\"0\";s:17:\"has_page_settings\";s:1:\"0\";}i:148;a:14:{s:2:\"id\";s:4:\"7812\";s:5:\"title\";s:9:\"header 11\";s:9:\"thumbnail\";s:73:\"https://library.elementor.com/wp-content/uploads/2018/03/header350.10.jpg\";s:12:\"tmpl_created\";s:10:\"1524583298\";s:6:\"author\";s:9:\"Elementor\";s:3:\"url\";s:106:\"https://library.elementor.com/blocks/header-11/?utm_source=library&utm_medium=wp-dash&utm_campaign=preview\";s:4:\"type\";s:5:\"block\";s:7:\"subtype\";s:6:\"header\";s:4:\"tags\";s:2:\"[]\";s:10:\"menu_order\";s:1:\"0\";s:16:\"popularity_index\";s:3:\"108\";s:11:\"trend_index\";s:3:\"113\";s:6:\"is_pro\";s:1:\"1\";s:17:\"has_page_settings\";s:1:\"0\";}i:149;a:14:{s:2:\"id\";s:4:\"4235\";s:5:\"title\";s:11:\"Services 18\";s:9:\"thumbnail\";s:76:\"https://library.elementor.com/wp-content/uploads/2018/02/Service_white_2.png\";s:12:\"tmpl_created\";s:10:\"1520443251\";s:6:\"author\";s:9:\"Elementor\";s:3:\"url\";s:108:\"https://library.elementor.com/blocks/services-18/?utm_source=library&utm_medium=wp-dash&utm_campaign=preview\";s:4:\"type\";s:5:\"block\";s:7:\"subtype\";s:8:\"services\";s:4:\"tags\";s:12:\"[\"services\"]\";s:10:\"menu_order\";s:1:\"0\";s:16:\"popularity_index\";s:3:\"315\";s:11:\"trend_index\";s:3:\"245\";s:6:\"is_pro\";s:1:\"0\";s:17:\"has_page_settings\";s:1:\"0\";}i:150;a:14:{s:2:\"id\";s:4:\"7724\";s:5:\"title\";s:8:\"header 4\";s:9:\"thumbnail\";s:72:\"https://library.elementor.com/wp-content/uploads/2018/03/header350.3.jpg\";s:12:\"tmpl_created\";s:10:\"1524583367\";s:6:\"author\";s:9:\"Elementor\";s:3:\"url\";s:105:\"https://library.elementor.com/blocks/header-4/?utm_source=library&utm_medium=wp-dash&utm_campaign=preview\";s:4:\"type\";s:5:\"block\";s:7:\"subtype\";s:6:\"header\";s:4:\"tags\";s:2:\"[]\";s:10:\"menu_order\";s:1:\"0\";s:16:\"popularity_index\";s:2:\"48\";s:11:\"trend_index\";s:2:\"25\";s:6:\"is_pro\";s:1:\"1\";s:17:\"has_page_settings\";s:1:\"0\";}i:151;a:14:{s:2:\"id\";s:4:\"4244\";s:5:\"title\";s:11:\"Services 26\";s:9:\"thumbnail\";s:76:\"https://library.elementor.com/wp-content/uploads/2018/02/Service_black_2.png\";s:12:\"tmpl_created\";s:10:\"1520443253\";s:6:\"author\";s:9:\"Elementor\";s:3:\"url\";s:108:\"https://library.elementor.com/blocks/services-26/?utm_source=library&utm_medium=wp-dash&utm_campaign=preview\";s:4:\"type\";s:5:\"block\";s:7:\"subtype\";s:8:\"services\";s:4:\"tags\";s:12:\"[\"services\"]\";s:10:\"menu_order\";s:1:\"0\";s:16:\"popularity_index\";s:3:\"400\";s:11:\"trend_index\";s:3:\"373\";s:6:\"is_pro\";s:1:\"0\";s:17:\"has_page_settings\";s:1:\"0\";}i:152;a:14:{s:2:\"id\";s:4:\"7734\";s:5:\"title\";s:8:\"header 5\";s:9:\"thumbnail\";s:72:\"https://library.elementor.com/wp-content/uploads/2018/03/header350.4.jpg\";s:12:\"tmpl_created\";s:10:\"1524583436\";s:6:\"author\";s:9:\"Elementor\";s:3:\"url\";s:105:\"https://library.elementor.com/blocks/header-5/?utm_source=library&utm_medium=wp-dash&utm_campaign=preview\";s:4:\"type\";s:5:\"block\";s:7:\"subtype\";s:6:\"header\";s:4:\"tags\";s:2:\"[]\";s:10:\"menu_order\";s:1:\"0\";s:16:\"popularity_index\";s:2:\"49\";s:11:\"trend_index\";s:2:\"32\";s:6:\"is_pro\";s:1:\"1\";s:17:\"has_page_settings\";s:1:\"0\";}i:153;a:14:{s:2:\"id\";s:4:\"4252\";s:5:\"title\";s:10:\"Services 9\";s:9:\"thumbnail\";s:76:\"https://library.elementor.com/wp-content/uploads/2018/02/Service_white_3.png\";s:12:\"tmpl_created\";s:10:\"1520443255\";s:6:\"author\";s:9:\"Elementor\";s:3:\"url\";s:107:\"https://library.elementor.com/blocks/services-9/?utm_source=library&utm_medium=wp-dash&utm_campaign=preview\";s:4:\"type\";s:5:\"block\";s:7:\"subtype\";s:8:\"services\";s:4:\"tags\";s:12:\"[\"services\"]\";s:10:\"menu_order\";s:1:\"0\";s:16:\"popularity_index\";s:2:\"60\";s:11:\"trend_index\";s:2:\"46\";s:6:\"is_pro\";s:1:\"0\";s:17:\"has_page_settings\";s:1:\"0\";}i:154;a:14:{s:2:\"id\";s:4:\"7771\";s:5:\"title\";s:8:\"header 8\";s:9:\"thumbnail\";s:72:\"https://library.elementor.com/wp-content/uploads/2018/03/header350.7.jpg\";s:12:\"tmpl_created\";s:10:\"1524583540\";s:6:\"author\";s:9:\"Elementor\";s:3:\"url\";s:105:\"https://library.elementor.com/blocks/header-8/?utm_source=library&utm_medium=wp-dash&utm_campaign=preview\";s:4:\"type\";s:5:\"block\";s:7:\"subtype\";s:6:\"header\";s:4:\"tags\";s:2:\"[]\";s:10:\"menu_order\";s:1:\"0\";s:16:\"popularity_index\";s:3:\"110\";s:11:\"trend_index\";s:3:\"108\";s:6:\"is_pro\";s:1:\"1\";s:17:\"has_page_settings\";s:1:\"0\";}i:155;a:14:{s:2:\"id\";s:4:\"4260\";s:5:\"title\";s:11:\"Services 25\";s:9:\"thumbnail\";s:76:\"https://library.elementor.com/wp-content/uploads/2018/02/Service_black_3.png\";s:12:\"tmpl_created\";s:10:\"1520443257\";s:6:\"author\";s:9:\"Elementor\";s:3:\"url\";s:108:\"https://library.elementor.com/blocks/services-25/?utm_source=library&utm_medium=wp-dash&utm_campaign=preview\";s:4:\"type\";s:5:\"block\";s:7:\"subtype\";s:8:\"services\";s:4:\"tags\";s:12:\"[\"services\"]\";s:10:\"menu_order\";s:1:\"0\";s:16:\"popularity_index\";s:3:\"203\";s:11:\"trend_index\";s:3:\"188\";s:6:\"is_pro\";s:1:\"0\";s:17:\"has_page_settings\";s:1:\"0\";}i:156;a:14:{s:2:\"id\";s:4:\"7787\";s:5:\"title\";s:8:\"header 9\";s:9:\"thumbnail\";s:72:\"https://library.elementor.com/wp-content/uploads/2018/03/header350.8.jpg\";s:12:\"tmpl_created\";s:10:\"1524583598\";s:6:\"author\";s:9:\"Elementor\";s:3:\"url\";s:105:\"https://library.elementor.com/blocks/header-9/?utm_source=library&utm_medium=wp-dash&utm_campaign=preview\";s:4:\"type\";s:5:\"block\";s:7:\"subtype\";s:6:\"header\";s:4:\"tags\";s:2:\"[]\";s:10:\"menu_order\";s:1:\"0\";s:16:\"popularity_index\";s:3:\"126\";s:11:\"trend_index\";s:2:\"59\";s:6:\"is_pro\";s:1:\"1\";s:17:\"has_page_settings\";s:1:\"0\";}i:157;a:14:{s:2:\"id\";s:4:\"4268\";s:5:\"title\";s:10:\"Services 8\";s:9:\"thumbnail\";s:76:\"https://library.elementor.com/wp-content/uploads/2018/02/Service_white_4.png\";s:12:\"tmpl_created\";s:10:\"1520443259\";s:6:\"author\";s:9:\"Elementor\";s:3:\"url\";s:107:\"https://library.elementor.com/blocks/services-8/?utm_source=library&utm_medium=wp-dash&utm_campaign=preview\";s:4:\"type\";s:5:\"block\";s:7:\"subtype\";s:8:\"services\";s:4:\"tags\";s:12:\"[\"services\"]\";s:10:\"menu_order\";s:1:\"0\";s:16:\"popularity_index\";s:3:\"149\";s:11:\"trend_index\";s:3:\"160\";s:6:\"is_pro\";s:1:\"0\";s:17:\"has_page_settings\";s:1:\"0\";}i:158;a:14:{s:2:\"id\";s:4:\"7801\";s:5:\"title\";s:9:\"header 10\";s:9:\"thumbnail\";s:72:\"https://library.elementor.com/wp-content/uploads/2018/03/header350.9.jpg\";s:12:\"tmpl_created\";s:10:\"1524583659\";s:6:\"author\";s:9:\"Elementor\";s:3:\"url\";s:106:\"https://library.elementor.com/blocks/header-10/?utm_source=library&utm_medium=wp-dash&utm_campaign=preview\";s:4:\"type\";s:5:\"block\";s:7:\"subtype\";s:6:\"header\";s:4:\"tags\";s:2:\"[]\";s:10:\"menu_order\";s:1:\"0\";s:16:\"popularity_index\";s:2:\"75\";s:11:\"trend_index\";s:2:\"47\";s:6:\"is_pro\";s:1:\"1\";s:17:\"has_page_settings\";s:1:\"0\";}i:159;a:14:{s:2:\"id\";s:4:\"4276\";s:5:\"title\";s:11:\"Services 24\";s:9:\"thumbnail\";s:76:\"https://library.elementor.com/wp-content/uploads/2018/02/Service_black_4.png\";s:12:\"tmpl_created\";s:10:\"1520443261\";s:6:\"author\";s:9:\"Elementor\";s:3:\"url\";s:108:\"https://library.elementor.com/blocks/services-24/?utm_source=library&utm_medium=wp-dash&utm_campaign=preview\";s:4:\"type\";s:5:\"block\";s:7:\"subtype\";s:8:\"services\";s:4:\"tags\";s:12:\"[\"services\"]\";s:10:\"menu_order\";s:1:\"0\";s:16:\"popularity_index\";s:3:\"339\";s:11:\"trend_index\";s:3:\"278\";s:6:\"is_pro\";s:1:\"0\";s:17:\"has_page_settings\";s:1:\"0\";}i:160;a:14:{s:2:\"id\";s:4:\"7754\";s:5:\"title\";s:8:\"header 7\";s:9:\"thumbnail\";s:72:\"https://library.elementor.com/wp-content/uploads/2018/03/header350.6.jpg\";s:12:\"tmpl_created\";s:10:\"1524583712\";s:6:\"author\";s:9:\"Elementor\";s:3:\"url\";s:105:\"https://library.elementor.com/blocks/header-7/?utm_source=library&utm_medium=wp-dash&utm_campaign=preview\";s:4:\"type\";s:5:\"block\";s:7:\"subtype\";s:6:\"header\";s:4:\"tags\";s:2:\"[]\";s:10:\"menu_order\";s:1:\"0\";s:16:\"popularity_index\";s:2:\"43\";s:11:\"trend_index\";s:3:\"171\";s:6:\"is_pro\";s:1:\"1\";s:17:\"has_page_settings\";s:1:\"0\";}i:161;a:14:{s:2:\"id\";s:4:\"4284\";s:5:\"title\";s:10:\"Services 7\";s:9:\"thumbnail\";s:76:\"https://library.elementor.com/wp-content/uploads/2018/02/Service_white_5.png\";s:12:\"tmpl_created\";s:10:\"1520443263\";s:6:\"author\";s:9:\"Elementor\";s:3:\"url\";s:107:\"https://library.elementor.com/blocks/services-7/?utm_source=library&utm_medium=wp-dash&utm_campaign=preview\";s:4:\"type\";s:5:\"block\";s:7:\"subtype\";s:8:\"services\";s:4:\"tags\";s:12:\"[\"services\"]\";s:10:\"menu_order\";s:1:\"0\";s:16:\"popularity_index\";s:2:\"71\";s:11:\"trend_index\";s:2:\"69\";s:6:\"is_pro\";s:1:\"0\";s:17:\"has_page_settings\";s:1:\"0\";}i:162;a:14:{s:2:\"id\";s:4:\"7713\";s:5:\"title\";s:8:\"header 3\";s:9:\"thumbnail\";s:72:\"https://library.elementor.com/wp-content/uploads/2018/03/header350.2.jpg\";s:12:\"tmpl_created\";s:10:\"1524584780\";s:6:\"author\";s:9:\"Elementor\";s:3:\"url\";s:105:\"https://library.elementor.com/blocks/header-3/?utm_source=library&utm_medium=wp-dash&utm_campaign=preview\";s:4:\"type\";s:5:\"block\";s:7:\"subtype\";s:6:\"header\";s:4:\"tags\";s:2:\"[]\";s:10:\"menu_order\";s:1:\"0\";s:16:\"popularity_index\";s:2:\"63\";s:11:\"trend_index\";s:2:\"36\";s:6:\"is_pro\";s:1:\"1\";s:17:\"has_page_settings\";s:1:\"0\";}i:163;a:14:{s:2:\"id\";s:4:\"4293\";s:5:\"title\";s:10:\"Services 6\";s:9:\"thumbnail\";s:76:\"https://library.elementor.com/wp-content/uploads/2018/02/Service_white_6.png\";s:12:\"tmpl_created\";s:10:\"1520443265\";s:6:\"author\";s:9:\"Elementor\";s:3:\"url\";s:107:\"https://library.elementor.com/blocks/services-6/?utm_source=library&utm_medium=wp-dash&utm_campaign=preview\";s:4:\"type\";s:5:\"block\";s:7:\"subtype\";s:8:\"services\";s:4:\"tags\";s:12:\"[\"services\"]\";s:10:\"menu_order\";s:1:\"0\";s:16:\"popularity_index\";s:3:\"287\";s:11:\"trend_index\";s:3:\"190\";s:6:\"is_pro\";s:1:\"0\";s:17:\"has_page_settings\";s:1:\"0\";}i:164;a:14:{s:2:\"id\";s:4:\"7744\";s:5:\"title\";s:8:\"header 6\";s:9:\"thumbnail\";s:72:\"https://library.elementor.com/wp-content/uploads/2018/03/header350.5.jpg\";s:12:\"tmpl_created\";s:10:\"1524584784\";s:6:\"author\";s:9:\"Elementor\";s:3:\"url\";s:105:\"https://library.elementor.com/blocks/header-6/?utm_source=library&utm_medium=wp-dash&utm_campaign=preview\";s:4:\"type\";s:5:\"block\";s:7:\"subtype\";s:6:\"header\";s:4:\"tags\";s:2:\"[]\";s:10:\"menu_order\";s:1:\"0\";s:16:\"popularity_index\";s:2:\"78\";s:11:\"trend_index\";s:2:\"52\";s:6:\"is_pro\";s:1:\"1\";s:17:\"has_page_settings\";s:1:\"0\";}i:165;a:14:{s:2:\"id\";s:4:\"4302\";s:5:\"title\";s:10:\"Services 5\";s:9:\"thumbnail\";s:76:\"https://library.elementor.com/wp-content/uploads/2018/02/Service_white_7.png\";s:12:\"tmpl_created\";s:10:\"1520443266\";s:6:\"author\";s:9:\"Elementor\";s:3:\"url\";s:107:\"https://library.elementor.com/blocks/services-5/?utm_source=library&utm_medium=wp-dash&utm_campaign=preview\";s:4:\"type\";s:5:\"block\";s:7:\"subtype\";s:8:\"services\";s:4:\"tags\";s:12:\"[\"services\"]\";s:10:\"menu_order\";s:1:\"0\";s:16:\"popularity_index\";s:2:\"81\";s:11:\"trend_index\";s:2:\"65\";s:6:\"is_pro\";s:1:\"0\";s:17:\"has_page_settings\";s:1:\"0\";}i:166;a:14:{s:2:\"id\";s:4:\"4313\";s:5:\"title\";s:11:\"Services 13\";s:9:\"thumbnail\";s:76:\"https://library.elementor.com/wp-content/uploads/2018/02/Service_white_8.png\";s:12:\"tmpl_created\";s:10:\"1520443268\";s:6:\"author\";s:9:\"Elementor\";s:3:\"url\";s:108:\"https://library.elementor.com/blocks/services-13/?utm_source=library&utm_medium=wp-dash&utm_campaign=preview\";s:4:\"type\";s:5:\"block\";s:7:\"subtype\";s:8:\"services\";s:4:\"tags\";s:12:\"[\"services\"]\";s:10:\"menu_order\";s:1:\"0\";s:16:\"popularity_index\";s:3:\"132\";s:11:\"trend_index\";s:2:\"98\";s:6:\"is_pro\";s:1:\"0\";s:17:\"has_page_settings\";s:1:\"0\";}i:167;a:14:{s:2:\"id\";s:4:\"8523\";s:5:\"title\";s:11:\"404 page 06\";s:9:\"thumbnail\";s:64:\"https://library.elementor.com/wp-content/uploads/2018/05/006.jpg\";s:12:\"tmpl_created\";s:10:\"1526415291\";s:6:\"author\";s:9:\"Elementor\";s:3:\"url\";s:108:\"https://library.elementor.com/blocks/404-page-06/?utm_source=library&utm_medium=wp-dash&utm_campaign=preview\";s:4:\"type\";s:5:\"block\";s:7:\"subtype\";s:8:\"404 page\";s:4:\"tags\";s:2:\"[]\";s:10:\"menu_order\";s:1:\"0\";s:16:\"popularity_index\";s:3:\"345\";s:11:\"trend_index\";s:3:\"270\";s:6:\"is_pro\";s:1:\"1\";s:17:\"has_page_settings\";s:1:\"0\";}i:168;a:14:{s:2:\"id\";s:4:\"4324\";s:5:\"title\";s:11:\"Services 14\";s:9:\"thumbnail\";s:76:\"https://library.elementor.com/wp-content/uploads/2018/02/Service_white_9.png\";s:12:\"tmpl_created\";s:10:\"1520443270\";s:6:\"author\";s:9:\"Elementor\";s:3:\"url\";s:108:\"https://library.elementor.com/blocks/services-14/?utm_source=library&utm_medium=wp-dash&utm_campaign=preview\";s:4:\"type\";s:5:\"block\";s:7:\"subtype\";s:8:\"services\";s:4:\"tags\";s:12:\"[\"services\"]\";s:10:\"menu_order\";s:1:\"0\";s:16:\"popularity_index\";s:3:\"310\";s:11:\"trend_index\";s:3:\"256\";s:6:\"is_pro\";s:1:\"0\";s:17:\"has_page_settings\";s:1:\"0\";}i:169;a:14:{s:2:\"id\";s:4:\"8524\";s:5:\"title\";s:11:\"404 page 07\";s:9:\"thumbnail\";s:64:\"https://library.elementor.com/wp-content/uploads/2018/05/007.jpg\";s:12:\"tmpl_created\";s:10:\"1526415337\";s:6:\"author\";s:9:\"Elementor\";s:3:\"url\";s:108:\"https://library.elementor.com/blocks/404-page-07/?utm_source=library&utm_medium=wp-dash&utm_campaign=preview\";s:4:\"type\";s:5:\"block\";s:7:\"subtype\";s:8:\"404 page\";s:4:\"tags\";s:2:\"[]\";s:10:\"menu_order\";s:1:\"0\";s:16:\"popularity_index\";s:3:\"318\";s:11:\"trend_index\";s:3:\"286\";s:6:\"is_pro\";s:1:\"1\";s:17:\"has_page_settings\";s:1:\"0\";}i:170;a:14:{s:2:\"id\";s:4:\"4332\";s:5:\"title\";s:11:\"Services 22\";s:9:\"thumbnail\";s:77:\"https://library.elementor.com/wp-content/uploads/2018/02/Service_white_10.png\";s:12:\"tmpl_created\";s:10:\"1520443272\";s:6:\"author\";s:9:\"Elementor\";s:3:\"url\";s:108:\"https://library.elementor.com/blocks/services-22/?utm_source=library&utm_medium=wp-dash&utm_campaign=preview\";s:4:\"type\";s:5:\"block\";s:7:\"subtype\";s:8:\"services\";s:4:\"tags\";s:12:\"[\"services\"]\";s:10:\"menu_order\";s:1:\"0\";s:16:\"popularity_index\";s:3:\"143\";s:11:\"trend_index\";s:3:\"131\";s:6:\"is_pro\";s:1:\"0\";s:17:\"has_page_settings\";s:1:\"0\";}i:171;a:14:{s:2:\"id\";s:4:\"8525\";s:5:\"title\";s:11:\"404 page 08\";s:9:\"thumbnail\";s:64:\"https://library.elementor.com/wp-content/uploads/2018/05/008.jpg\";s:12:\"tmpl_created\";s:10:\"1526415374\";s:6:\"author\";s:9:\"Elementor\";s:3:\"url\";s:108:\"https://library.elementor.com/blocks/404-page-08/?utm_source=library&utm_medium=wp-dash&utm_campaign=preview\";s:4:\"type\";s:5:\"block\";s:7:\"subtype\";s:8:\"404 page\";s:4:\"tags\";s:2:\"[]\";s:10:\"menu_order\";s:1:\"0\";s:16:\"popularity_index\";s:3:\"408\";s:11:\"trend_index\";s:3:\"378\";s:6:\"is_pro\";s:1:\"1\";s:17:\"has_page_settings\";s:1:\"0\";}i:172;a:14:{s:2:\"id\";s:4:\"4341\";s:5:\"title\";s:11:\"Services 21\";s:9:\"thumbnail\";s:77:\"https://library.elementor.com/wp-content/uploads/2018/02/Service_white_11.png\";s:12:\"tmpl_created\";s:10:\"1520443274\";s:6:\"author\";s:9:\"Elementor\";s:3:\"url\";s:108:\"https://library.elementor.com/blocks/services-21/?utm_source=library&utm_medium=wp-dash&utm_campaign=preview\";s:4:\"type\";s:5:\"block\";s:7:\"subtype\";s:8:\"services\";s:4:\"tags\";s:12:\"[\"services\"]\";s:10:\"menu_order\";s:1:\"0\";s:16:\"popularity_index\";s:3:\"140\";s:11:\"trend_index\";s:3:\"154\";s:6:\"is_pro\";s:1:\"0\";s:17:\"has_page_settings\";s:1:\"0\";}i:173;a:14:{s:2:\"id\";s:4:\"8513\";s:5:\"title\";s:11:\"404 page 04\";s:9:\"thumbnail\";s:64:\"https://library.elementor.com/wp-content/uploads/2018/05/004.jpg\";s:12:\"tmpl_created\";s:10:\"1526415417\";s:6:\"author\";s:9:\"Elementor\";s:3:\"url\";s:108:\"https://library.elementor.com/blocks/404-page-04/?utm_source=library&utm_medium=wp-dash&utm_campaign=preview\";s:4:\"type\";s:5:\"block\";s:7:\"subtype\";s:8:\"404 page\";s:4:\"tags\";s:2:\"[]\";s:10:\"menu_order\";s:1:\"0\";s:16:\"popularity_index\";s:3:\"382\";s:11:\"trend_index\";s:3:\"331\";s:6:\"is_pro\";s:1:\"1\";s:17:\"has_page_settings\";s:1:\"0\";}i:174;a:14:{s:2:\"id\";s:4:\"4349\";s:5:\"title\";s:11:\"Services 29\";s:9:\"thumbnail\";s:77:\"https://library.elementor.com/wp-content/uploads/2018/02/Service_black_11.png\";s:12:\"tmpl_created\";s:10:\"1520443275\";s:6:\"author\";s:9:\"Elementor\";s:3:\"url\";s:108:\"https://library.elementor.com/blocks/services-29/?utm_source=library&utm_medium=wp-dash&utm_campaign=preview\";s:4:\"type\";s:5:\"block\";s:7:\"subtype\";s:8:\"services\";s:4:\"tags\";s:12:\"[\"services\"]\";s:10:\"menu_order\";s:1:\"0\";s:16:\"popularity_index\";s:3:\"322\";s:11:\"trend_index\";s:3:\"344\";s:6:\"is_pro\";s:1:\"0\";s:17:\"has_page_settings\";s:1:\"0\";}i:175;a:14:{s:2:\"id\";s:4:\"8512\";s:5:\"title\";s:11:\"404 page 03\";s:9:\"thumbnail\";s:64:\"https://library.elementor.com/wp-content/uploads/2018/05/003.jpg\";s:12:\"tmpl_created\";s:10:\"1526415449\";s:6:\"author\";s:9:\"Elementor\";s:3:\"url\";s:108:\"https://library.elementor.com/blocks/404-page-03/?utm_source=library&utm_medium=wp-dash&utm_campaign=preview\";s:4:\"type\";s:5:\"block\";s:7:\"subtype\";s:8:\"404 page\";s:4:\"tags\";s:2:\"[]\";s:10:\"menu_order\";s:1:\"0\";s:16:\"popularity_index\";s:3:\"414\";s:11:\"trend_index\";s:3:\"415\";s:6:\"is_pro\";s:1:\"1\";s:17:\"has_page_settings\";s:1:\"0\";}i:176;a:14:{s:2:\"id\";s:4:\"4357\";s:5:\"title\";s:11:\"Services 20\";s:9:\"thumbnail\";s:77:\"https://library.elementor.com/wp-content/uploads/2018/02/Service_white_12.png\";s:12:\"tmpl_created\";s:10:\"1520443277\";s:6:\"author\";s:9:\"Elementor\";s:3:\"url\";s:108:\"https://library.elementor.com/blocks/services-20/?utm_source=library&utm_medium=wp-dash&utm_campaign=preview\";s:4:\"type\";s:5:\"block\";s:7:\"subtype\";s:8:\"services\";s:4:\"tags\";s:12:\"[\"services\"]\";s:10:\"menu_order\";s:1:\"0\";s:16:\"popularity_index\";s:2:\"56\";s:11:\"trend_index\";s:2:\"30\";s:6:\"is_pro\";s:1:\"0\";s:17:\"has_page_settings\";s:1:\"0\";}i:177;a:14:{s:2:\"id\";s:4:\"8526\";s:5:\"title\";s:11:\"404 page 09\";s:9:\"thumbnail\";s:64:\"https://library.elementor.com/wp-content/uploads/2018/05/009.jpg\";s:12:\"tmpl_created\";s:10:\"1526415474\";s:6:\"author\";s:9:\"Elementor\";s:3:\"url\";s:108:\"https://library.elementor.com/blocks/404-page-09/?utm_source=library&utm_medium=wp-dash&utm_campaign=preview\";s:4:\"type\";s:5:\"block\";s:7:\"subtype\";s:8:\"404 page\";s:4:\"tags\";s:2:\"[]\";s:10:\"menu_order\";s:1:\"0\";s:16:\"popularity_index\";s:3:\"420\";s:11:\"trend_index\";s:3:\"379\";s:6:\"is_pro\";s:1:\"1\";s:17:\"has_page_settings\";s:1:\"0\";}i:178;a:14:{s:2:\"id\";s:4:\"4368\";s:5:\"title\";s:11:\"Services 16\";s:9:\"thumbnail\";s:77:\"https://library.elementor.com/wp-content/uploads/2018/02/Service_white_13.png\";s:12:\"tmpl_created\";s:10:\"1520443279\";s:6:\"author\";s:9:\"Elementor\";s:3:\"url\";s:108:\"https://library.elementor.com/blocks/services-16/?utm_source=library&utm_medium=wp-dash&utm_campaign=preview\";s:4:\"type\";s:5:\"block\";s:7:\"subtype\";s:8:\"services\";s:4:\"tags\";s:12:\"[\"services\"]\";s:10:\"menu_order\";s:1:\"0\";s:16:\"popularity_index\";s:2:\"77\";s:11:\"trend_index\";s:2:\"48\";s:6:\"is_pro\";s:1:\"0\";s:17:\"has_page_settings\";s:1:\"0\";}i:179;a:14:{s:2:\"id\";s:4:\"8505\";s:5:\"title\";s:11:\"404 page 01\";s:9:\"thumbnail\";s:64:\"https://library.elementor.com/wp-content/uploads/2018/05/001.jpg\";s:12:\"tmpl_created\";s:10:\"1526415501\";s:6:\"author\";s:9:\"Elementor\";s:3:\"url\";s:108:\"https://library.elementor.com/blocks/404-page-01/?utm_source=library&utm_medium=wp-dash&utm_campaign=preview\";s:4:\"type\";s:5:\"block\";s:7:\"subtype\";s:8:\"404 page\";s:4:\"tags\";s:2:\"[]\";s:10:\"menu_order\";s:1:\"0\";s:16:\"popularity_index\";s:3:\"434\";s:11:\"trend_index\";s:3:\"427\";s:6:\"is_pro\";s:1:\"1\";s:17:\"has_page_settings\";s:1:\"0\";}i:180;a:14:{s:2:\"id\";s:4:\"4376\";s:5:\"title\";s:11:\"Services 28\";s:9:\"thumbnail\";s:77:\"https://library.elementor.com/wp-content/uploads/2018/02/Service_black_12.png\";s:12:\"tmpl_created\";s:10:\"1520443281\";s:6:\"author\";s:9:\"Elementor\";s:3:\"url\";s:108:\"https://library.elementor.com/blocks/services-28/?utm_source=library&utm_medium=wp-dash&utm_campaign=preview\";s:4:\"type\";s:5:\"block\";s:7:\"subtype\";s:8:\"services\";s:4:\"tags\";s:12:\"[\"services\"]\";s:10:\"menu_order\";s:1:\"0\";s:16:\"popularity_index\";s:3:\"142\";s:11:\"trend_index\";s:3:\"148\";s:6:\"is_pro\";s:1:\"0\";s:17:\"has_page_settings\";s:1:\"0\";}i:181;a:14:{s:2:\"id\";s:4:\"8511\";s:5:\"title\";s:11:\"404 page 02\";s:9:\"thumbnail\";s:64:\"https://library.elementor.com/wp-content/uploads/2018/05/002.jpg\";s:12:\"tmpl_created\";s:10:\"1526415528\";s:6:\"author\";s:9:\"Elementor\";s:3:\"url\";s:108:\"https://library.elementor.com/blocks/404-page-02/?utm_source=library&utm_medium=wp-dash&utm_campaign=preview\";s:4:\"type\";s:5:\"block\";s:7:\"subtype\";s:8:\"404 page\";s:4:\"tags\";s:2:\"[]\";s:10:\"menu_order\";s:1:\"0\";s:16:\"popularity_index\";s:3:\"364\";s:11:\"trend_index\";s:3:\"330\";s:6:\"is_pro\";s:1:\"1\";s:17:\"has_page_settings\";s:1:\"0\";}i:182;a:14:{s:2:\"id\";s:4:\"4391\";s:5:\"title\";s:11:\"Services 17\";s:9:\"thumbnail\";s:77:\"https://library.elementor.com/wp-content/uploads/2018/02/Service_white_14.png\";s:12:\"tmpl_created\";s:10:\"1520443283\";s:6:\"author\";s:9:\"Elementor\";s:3:\"url\";s:108:\"https://library.elementor.com/blocks/services-17/?utm_source=library&utm_medium=wp-dash&utm_campaign=preview\";s:4:\"type\";s:5:\"block\";s:7:\"subtype\";s:8:\"services\";s:4:\"tags\";s:12:\"[\"services\"]\";s:10:\"menu_order\";s:1:\"0\";s:16:\"popularity_index\";s:3:\"144\";s:11:\"trend_index\";s:3:\"145\";s:6:\"is_pro\";s:1:\"0\";s:17:\"has_page_settings\";s:1:\"0\";}i:183;a:14:{s:2:\"id\";s:4:\"8514\";s:5:\"title\";s:11:\"404 Page 05\";s:9:\"thumbnail\";s:64:\"https://library.elementor.com/wp-content/uploads/2018/05/005.jpg\";s:12:\"tmpl_created\";s:10:\"1526415558\";s:6:\"author\";s:9:\"Elementor\";s:3:\"url\";s:108:\"https://library.elementor.com/blocks/404-page-05/?utm_source=library&utm_medium=wp-dash&utm_campaign=preview\";s:4:\"type\";s:5:\"block\";s:7:\"subtype\";s:8:\"404 page\";s:4:\"tags\";s:2:\"[]\";s:10:\"menu_order\";s:1:\"0\";s:16:\"popularity_index\";s:3:\"394\";s:11:\"trend_index\";s:3:\"332\";s:6:\"is_pro\";s:1:\"1\";s:17:\"has_page_settings\";s:1:\"0\";}i:184;a:14:{s:2:\"id\";s:4:\"4400\";s:5:\"title\";s:11:\"Services 27\";s:9:\"thumbnail\";s:77:\"https://library.elementor.com/wp-content/uploads/2018/02/Service_black_13.png\";s:12:\"tmpl_created\";s:10:\"1520443285\";s:6:\"author\";s:9:\"Elementor\";s:3:\"url\";s:108:\"https://library.elementor.com/blocks/services-27/?utm_source=library&utm_medium=wp-dash&utm_campaign=preview\";s:4:\"type\";s:5:\"block\";s:7:\"subtype\";s:8:\"services\";s:4:\"tags\";s:12:\"[\"services\"]\";s:10:\"menu_order\";s:1:\"0\";s:16:\"popularity_index\";s:3:\"259\";s:11:\"trend_index\";s:3:\"235\";s:6:\"is_pro\";s:1:\"0\";s:17:\"has_page_settings\";s:1:\"0\";}i:185;a:14:{s:2:\"id\";s:4:\"8676\";s:5:\"title\";s:13:\"single page 1\";s:9:\"thumbnail\";s:69:\"https://library.elementor.com/wp-content/uploads/2018/05/S_P350.6.jpg\";s:12:\"tmpl_created\";s:10:\"1527682423\";s:6:\"author\";s:9:\"Elementor\";s:3:\"url\";s:110:\"https://library.elementor.com/blocks/single-page-1/?utm_source=library&utm_medium=wp-dash&utm_campaign=preview\";s:4:\"type\";s:5:\"block\";s:7:\"subtype\";s:11:\"single page\";s:4:\"tags\";s:2:\"[]\";s:10:\"menu_order\";s:1:\"0\";s:16:\"popularity_index\";s:3:\"358\";s:11:\"trend_index\";s:3:\"334\";s:6:\"is_pro\";s:1:\"1\";s:17:\"has_page_settings\";s:1:\"0\";}i:186;a:14:{s:2:\"id\";s:4:\"4411\";s:5:\"title\";s:9:\"Contact 3\";s:9:\"thumbnail\";s:72:\"https://library.elementor.com/wp-content/uploads/2018/02/map_white_1.png\";s:12:\"tmpl_created\";s:10:\"1520443287\";s:6:\"author\";s:9:\"Elementor\";s:3:\"url\";s:108:\"https://library.elementor.com/blocks/contact-3-2/?utm_source=library&utm_medium=wp-dash&utm_campaign=preview\";s:4:\"type\";s:5:\"block\";s:7:\"subtype\";s:7:\"contact\";s:4:\"tags\";s:11:\"[\"contact\"]\";s:10:\"menu_order\";s:1:\"0\";s:16:\"popularity_index\";s:2:\"96\";s:11:\"trend_index\";s:3:\"102\";s:6:\"is_pro\";s:1:\"0\";s:17:\"has_page_settings\";s:1:\"0\";}i:187;a:14:{s:2:\"id\";s:4:\"8678\";s:5:\"title\";s:13:\"single page 2\";s:9:\"thumbnail\";s:69:\"https://library.elementor.com/wp-content/uploads/2018/05/S_P350.2.jpg\";s:12:\"tmpl_created\";s:10:\"1527682780\";s:6:\"author\";s:9:\"Elementor\";s:3:\"url\";s:110:\"https://library.elementor.com/blocks/single-page-2/?utm_source=library&utm_medium=wp-dash&utm_campaign=preview\";s:4:\"type\";s:5:\"block\";s:7:\"subtype\";s:11:\"single page\";s:4:\"tags\";s:2:\"[]\";s:10:\"menu_order\";s:1:\"0\";s:16:\"popularity_index\";s:3:\"188\";s:11:\"trend_index\";s:3:\"150\";s:6:\"is_pro\";s:1:\"1\";s:17:\"has_page_settings\";s:1:\"0\";}i:188;a:14:{s:2:\"id\";s:4:\"4420\";s:5:\"title\";s:9:\"Contact 1\";s:9:\"thumbnail\";s:72:\"https://library.elementor.com/wp-content/uploads/2018/02/map_black_1.png\";s:12:\"tmpl_created\";s:10:\"1520443289\";s:6:\"author\";s:9:\"Elementor\";s:3:\"url\";s:108:\"https://library.elementor.com/blocks/contact-1-2/?utm_source=library&utm_medium=wp-dash&utm_campaign=preview\";s:4:\"type\";s:5:\"block\";s:7:\"subtype\";s:7:\"contact\";s:4:\"tags\";s:11:\"[\"contact\"]\";s:10:\"menu_order\";s:1:\"0\";s:16:\"popularity_index\";s:3:\"169\";s:11:\"trend_index\";s:3:\"181\";s:6:\"is_pro\";s:1:\"0\";s:17:\"has_page_settings\";s:1:\"0\";}i:189;a:14:{s:2:\"id\";s:4:\"8679\";s:5:\"title\";s:13:\"single page 3\";s:9:\"thumbnail\";s:69:\"https://library.elementor.com/wp-content/uploads/2018/05/S_P350.3.jpg\";s:12:\"tmpl_created\";s:10:\"1527682847\";s:6:\"author\";s:9:\"Elementor\";s:3:\"url\";s:110:\"https://library.elementor.com/blocks/single-page-3/?utm_source=library&utm_medium=wp-dash&utm_campaign=preview\";s:4:\"type\";s:5:\"block\";s:7:\"subtype\";s:11:\"single page\";s:4:\"tags\";s:2:\"[]\";s:10:\"menu_order\";s:1:\"0\";s:16:\"popularity_index\";s:3:\"266\";s:11:\"trend_index\";s:3:\"199\";s:6:\"is_pro\";s:1:\"1\";s:17:\"has_page_settings\";s:1:\"0\";}i:190;a:14:{s:2:\"id\";s:4:\"4428\";s:5:\"title\";s:9:\"Contact 4\";s:9:\"thumbnail\";s:72:\"https://library.elementor.com/wp-content/uploads/2018/02/map_white_2.png\";s:12:\"tmpl_created\";s:10:\"1520443291\";s:6:\"author\";s:9:\"Elementor\";s:3:\"url\";s:106:\"https://library.elementor.com/blocks/contact-4/?utm_source=library&utm_medium=wp-dash&utm_campaign=preview\";s:4:\"type\";s:5:\"block\";s:7:\"subtype\";s:7:\"contact\";s:4:\"tags\";s:11:\"[\"contact\"]\";s:10:\"menu_order\";s:1:\"0\";s:16:\"popularity_index\";s:2:\"97\";s:11:\"trend_index\";s:3:\"101\";s:6:\"is_pro\";s:1:\"0\";s:17:\"has_page_settings\";s:1:\"0\";}i:191;a:14:{s:2:\"id\";s:4:\"8680\";s:5:\"title\";s:13:\"single page 4\";s:9:\"thumbnail\";s:69:\"https://library.elementor.com/wp-content/uploads/2018/05/S_P350.1.jpg\";s:12:\"tmpl_created\";s:10:\"1527682896\";s:6:\"author\";s:9:\"Elementor\";s:3:\"url\";s:110:\"https://library.elementor.com/blocks/single-page-4/?utm_source=library&utm_medium=wp-dash&utm_campaign=preview\";s:4:\"type\";s:5:\"block\";s:7:\"subtype\";s:11:\"single page\";s:4:\"tags\";s:2:\"[]\";s:10:\"menu_order\";s:1:\"0\";s:16:\"popularity_index\";s:3:\"402\";s:11:\"trend_index\";s:3:\"353\";s:6:\"is_pro\";s:1:\"1\";s:17:\"has_page_settings\";s:1:\"0\";}i:192;a:14:{s:2:\"id\";s:4:\"4436\";s:5:\"title\";s:11:\"Contact  16\";s:9:\"thumbnail\";s:72:\"https://library.elementor.com/wp-content/uploads/2018/02/map_black_2.png\";s:12:\"tmpl_created\";s:10:\"1520443293\";s:6:\"author\";s:9:\"Elementor\";s:3:\"url\";s:107:\"https://library.elementor.com/blocks/contact-16/?utm_source=library&utm_medium=wp-dash&utm_campaign=preview\";s:4:\"type\";s:5:\"block\";s:7:\"subtype\";s:7:\"contact\";s:4:\"tags\";s:11:\"[\"contact\"]\";s:10:\"menu_order\";s:1:\"0\";s:16:\"popularity_index\";s:3:\"159\";s:11:\"trend_index\";s:3:\"159\";s:6:\"is_pro\";s:1:\"0\";s:17:\"has_page_settings\";s:1:\"0\";}i:193;a:14:{s:2:\"id\";s:4:\"8681\";s:5:\"title\";s:13:\"single page 5\";s:9:\"thumbnail\";s:69:\"https://library.elementor.com/wp-content/uploads/2018/05/S_P350.5.jpg\";s:12:\"tmpl_created\";s:10:\"1527682969\";s:6:\"author\";s:9:\"Elementor\";s:3:\"url\";s:110:\"https://library.elementor.com/blocks/single-page-5/?utm_source=library&utm_medium=wp-dash&utm_campaign=preview\";s:4:\"type\";s:5:\"block\";s:7:\"subtype\";s:11:\"single page\";s:4:\"tags\";s:2:\"[]\";s:10:\"menu_order\";s:1:\"0\";s:16:\"popularity_index\";s:3:\"338\";s:11:\"trend_index\";s:3:\"231\";s:6:\"is_pro\";s:1:\"1\";s:17:\"has_page_settings\";s:1:\"0\";}i:194;a:14:{s:2:\"id\";s:4:\"4444\";s:5:\"title\";s:9:\"Contact 5\";s:9:\"thumbnail\";s:76:\"https://library.elementor.com/wp-content/uploads/2018/02/contact_white_1.png\";s:12:\"tmpl_created\";s:10:\"1520443295\";s:6:\"author\";s:9:\"Elementor\";s:3:\"url\";s:106:\"https://library.elementor.com/blocks/contact-5/?utm_source=library&utm_medium=wp-dash&utm_campaign=preview\";s:4:\"type\";s:5:\"block\";s:7:\"subtype\";s:7:\"contact\";s:4:\"tags\";s:11:\"[\"contact\"]\";s:10:\"menu_order\";s:1:\"0\";s:16:\"popularity_index\";s:3:\"104\";s:11:\"trend_index\";s:3:\"109\";s:6:\"is_pro\";s:1:\"0\";s:17:\"has_page_settings\";s:1:\"0\";}i:195;a:14:{s:2:\"id\";s:4:\"8682\";s:5:\"title\";s:13:\"single page 6\";s:9:\"thumbnail\";s:69:\"https://library.elementor.com/wp-content/uploads/2018/05/S_P350.4.jpg\";s:12:\"tmpl_created\";s:10:\"1527683026\";s:6:\"author\";s:9:\"Elementor\";s:3:\"url\";s:110:\"https://library.elementor.com/blocks/single-page-6/?utm_source=library&utm_medium=wp-dash&utm_campaign=preview\";s:4:\"type\";s:5:\"block\";s:7:\"subtype\";s:11:\"single page\";s:4:\"tags\";s:2:\"[]\";s:10:\"menu_order\";s:1:\"0\";s:16:\"popularity_index\";s:3:\"401\";s:11:\"trend_index\";s:3:\"416\";s:6:\"is_pro\";s:1:\"1\";s:17:\"has_page_settings\";s:1:\"0\";}i:196;a:14:{s:2:\"id\";s:4:\"4452\";s:5:\"title\";s:9:\"Contact 6\";s:9:\"thumbnail\";s:76:\"https://library.elementor.com/wp-content/uploads/2018/02/contact_black_1.png\";s:12:\"tmpl_created\";s:10:\"1520443296\";s:6:\"author\";s:9:\"Elementor\";s:3:\"url\";s:106:\"https://library.elementor.com/blocks/contact-6/?utm_source=library&utm_medium=wp-dash&utm_campaign=preview\";s:4:\"type\";s:5:\"block\";s:7:\"subtype\";s:7:\"contact\";s:4:\"tags\";s:11:\"[\"contact\"]\";s:10:\"menu_order\";s:1:\"0\";s:16:\"popularity_index\";s:3:\"154\";s:11:\"trend_index\";s:3:\"140\";s:6:\"is_pro\";s:1:\"0\";s:17:\"has_page_settings\";s:1:\"0\";}i:197;a:14:{s:2:\"id\";s:4:\"8703\";s:5:\"title\";s:13:\"single page 7\";s:9:\"thumbnail\";s:69:\"https://library.elementor.com/wp-content/uploads/2018/05/S_P350.7.jpg\";s:12:\"tmpl_created\";s:10:\"1527683072\";s:6:\"author\";s:9:\"Elementor\";s:3:\"url\";s:110:\"https://library.elementor.com/blocks/single-page-7/?utm_source=library&utm_medium=wp-dash&utm_campaign=preview\";s:4:\"type\";s:5:\"block\";s:7:\"subtype\";s:11:\"single page\";s:4:\"tags\";s:2:\"[]\";s:10:\"menu_order\";s:1:\"0\";s:16:\"popularity_index\";s:3:\"389\";s:11:\"trend_index\";s:3:\"318\";s:6:\"is_pro\";s:1:\"1\";s:17:\"has_page_settings\";s:1:\"0\";}i:198;a:14:{s:2:\"id\";s:4:\"4460\";s:5:\"title\";s:9:\"Contact 9\";s:9:\"thumbnail\";s:76:\"https://library.elementor.com/wp-content/uploads/2018/02/contact_white_2.png\";s:12:\"tmpl_created\";s:10:\"1520443298\";s:6:\"author\";s:9:\"Elementor\";s:3:\"url\";s:106:\"https://library.elementor.com/blocks/contact-9/?utm_source=library&utm_medium=wp-dash&utm_campaign=preview\";s:4:\"type\";s:5:\"block\";s:7:\"subtype\";s:7:\"contact\";s:4:\"tags\";s:11:\"[\"contact\"]\";s:10:\"menu_order\";s:1:\"0\";s:16:\"popularity_index\";s:3:\"124\";s:11:\"trend_index\";s:3:\"127\";s:6:\"is_pro\";s:1:\"0\";s:17:\"has_page_settings\";s:1:\"0\";}i:199;a:14:{s:2:\"id\";s:4:\"8961\";s:5:\"title\";s:9:\"archive 1\";s:9:\"thumbnail\";s:74:\"https://library.elementor.com/wp-content/uploads/2018/06/Archive_350.1.jpg\";s:12:\"tmpl_created\";s:10:\"1528639909\";s:6:\"author\";s:9:\"Elementor\";s:3:\"url\";s:106:\"https://library.elementor.com/blocks/archive-1/?utm_source=library&utm_medium=wp-dash&utm_campaign=preview\";s:4:\"type\";s:5:\"block\";s:7:\"subtype\";s:7:\"archive\";s:4:\"tags\";s:2:\"[]\";s:10:\"menu_order\";s:1:\"0\";s:16:\"popularity_index\";s:2:\"95\";s:11:\"trend_index\";s:2:\"70\";s:6:\"is_pro\";s:1:\"1\";s:17:\"has_page_settings\";s:1:\"0\";}i:200;a:14:{s:2:\"id\";s:4:\"4468\";s:5:\"title\";s:9:\"Contact 7\";s:9:\"thumbnail\";s:76:\"https://library.elementor.com/wp-content/uploads/2018/02/contact_white_3.png\";s:12:\"tmpl_created\";s:10:\"1520443301\";s:6:\"author\";s:9:\"Elementor\";s:3:\"url\";s:106:\"https://library.elementor.com/blocks/contact-7/?utm_source=library&utm_medium=wp-dash&utm_campaign=preview\";s:4:\"type\";s:5:\"block\";s:7:\"subtype\";s:7:\"contact\";s:4:\"tags\";s:18:\"[\"contact\",\"form\"]\";s:10:\"menu_order\";s:1:\"0\";s:16:\"popularity_index\";s:3:\"145\";s:11:\"trend_index\";s:3:\"119\";s:6:\"is_pro\";s:1:\"1\";s:17:\"has_page_settings\";s:1:\"0\";}i:201;a:14:{s:2:\"id\";s:4:\"8969\";s:5:\"title\";s:9:\"archive 2\";s:9:\"thumbnail\";s:74:\"https://library.elementor.com/wp-content/uploads/2018/06/Archive_350.2.jpg\";s:12:\"tmpl_created\";s:10:\"1528700014\";s:6:\"author\";s:9:\"Elementor\";s:3:\"url\";s:106:\"https://library.elementor.com/blocks/archive-2/?utm_source=library&utm_medium=wp-dash&utm_campaign=preview\";s:4:\"type\";s:5:\"block\";s:7:\"subtype\";s:7:\"archive\";s:4:\"tags\";s:2:\"[]\";s:10:\"menu_order\";s:1:\"0\";s:16:\"popularity_index\";s:3:\"225\";s:11:\"trend_index\";s:3:\"135\";s:6:\"is_pro\";s:1:\"1\";s:17:\"has_page_settings\";s:1:\"0\";}i:202;a:14:{s:2:\"id\";s:4:\"4476\";s:5:\"title\";s:10:\"Contact 15\";s:9:\"thumbnail\";s:76:\"https://library.elementor.com/wp-content/uploads/2018/02/contact_white_4.png\";s:12:\"tmpl_created\";s:10:\"1520443303\";s:6:\"author\";s:9:\"Elementor\";s:3:\"url\";s:107:\"https://library.elementor.com/blocks/contact-15/?utm_source=library&utm_medium=wp-dash&utm_campaign=preview\";s:4:\"type\";s:5:\"block\";s:7:\"subtype\";s:7:\"contact\";s:4:\"tags\";s:18:\"[\"contact\",\"form\"]\";s:10:\"menu_order\";s:1:\"0\";s:16:\"popularity_index\";s:3:\"253\";s:11:\"trend_index\";s:3:\"230\";s:6:\"is_pro\";s:1:\"1\";s:17:\"has_page_settings\";s:1:\"0\";}i:203;a:14:{s:2:\"id\";s:4:\"8973\";s:5:\"title\";s:9:\"archive 3\";s:9:\"thumbnail\";s:74:\"https://library.elementor.com/wp-content/uploads/2018/06/Archive_350.3.jpg\";s:12:\"tmpl_created\";s:10:\"1528700205\";s:6:\"author\";s:9:\"Elementor\";s:3:\"url\";s:106:\"https://library.elementor.com/blocks/archive-3/?utm_source=library&utm_medium=wp-dash&utm_campaign=preview\";s:4:\"type\";s:5:\"block\";s:7:\"subtype\";s:7:\"archive\";s:4:\"tags\";s:2:\"[]\";s:10:\"menu_order\";s:1:\"0\";s:16:\"popularity_index\";s:3:\"176\";s:11:\"trend_index\";s:2:\"86\";s:6:\"is_pro\";s:1:\"1\";s:17:\"has_page_settings\";s:1:\"0\";}i:204;a:14:{s:2:\"id\";s:4:\"4484\";s:5:\"title\";s:9:\"Contact 8\";s:9:\"thumbnail\";s:76:\"https://library.elementor.com/wp-content/uploads/2018/02/contact_black_3.png\";s:12:\"tmpl_created\";s:10:\"1520443305\";s:6:\"author\";s:9:\"Elementor\";s:3:\"url\";s:106:\"https://library.elementor.com/blocks/contact-8/?utm_source=library&utm_medium=wp-dash&utm_campaign=preview\";s:4:\"type\";s:5:\"block\";s:7:\"subtype\";s:7:\"contact\";s:4:\"tags\";s:18:\"[\"contact\",\"form\"]\";s:10:\"menu_order\";s:1:\"0\";s:16:\"popularity_index\";s:3:\"334\";s:11:\"trend_index\";s:3:\"294\";s:6:\"is_pro\";s:1:\"1\";s:17:\"has_page_settings\";s:1:\"0\";}i:205;a:14:{s:2:\"id\";s:4:\"8977\";s:5:\"title\";s:9:\"archive 4\";s:9:\"thumbnail\";s:74:\"https://library.elementor.com/wp-content/uploads/2018/06/Archive_350.4.jpg\";s:12:\"tmpl_created\";s:10:\"1528700326\";s:6:\"author\";s:9:\"Elementor\";s:3:\"url\";s:106:\"https://library.elementor.com/blocks/archive-4/?utm_source=library&utm_medium=wp-dash&utm_campaign=preview\";s:4:\"type\";s:5:\"block\";s:7:\"subtype\";s:7:\"archive\";s:4:\"tags\";s:2:\"[]\";s:10:\"menu_order\";s:1:\"0\";s:16:\"popularity_index\";s:3:\"365\";s:11:\"trend_index\";s:3:\"303\";s:6:\"is_pro\";s:1:\"1\";s:17:\"has_page_settings\";s:1:\"0\";}i:206;a:14:{s:2:\"id\";s:4:\"4492\";s:5:\"title\";s:9:\"Contact 5\";s:9:\"thumbnail\";s:72:\"https://library.elementor.com/wp-content/uploads/2018/02/map_white_3.png\";s:12:\"tmpl_created\";s:10:\"1520443307\";s:6:\"author\";s:9:\"Elementor\";s:3:\"url\";s:108:\"https://library.elementor.com/blocks/contact-5-2/?utm_source=library&utm_medium=wp-dash&utm_campaign=preview\";s:4:\"type\";s:5:\"block\";s:7:\"subtype\";s:7:\"contact\";s:4:\"tags\";s:11:\"[\"contact\"]\";s:10:\"menu_order\";s:1:\"0\";s:16:\"popularity_index\";s:2:\"65\";s:11:\"trend_index\";s:2:\"49\";s:6:\"is_pro\";s:1:\"0\";s:17:\"has_page_settings\";s:1:\"0\";}i:207;a:14:{s:2:\"id\";s:4:\"8981\";s:5:\"title\";s:9:\"archive 5\";s:9:\"thumbnail\";s:74:\"https://library.elementor.com/wp-content/uploads/2018/06/Archive_350.5.jpg\";s:12:\"tmpl_created\";s:10:\"1528700484\";s:6:\"author\";s:9:\"Elementor\";s:3:\"url\";s:106:\"https://library.elementor.com/blocks/archive-5/?utm_source=library&utm_medium=wp-dash&utm_campaign=preview\";s:4:\"type\";s:5:\"block\";s:7:\"subtype\";s:7:\"archive\";s:4:\"tags\";s:2:\"[]\";s:10:\"menu_order\";s:1:\"0\";s:16:\"popularity_index\";s:3:\"337\";s:11:\"trend_index\";s:3:\"288\";s:6:\"is_pro\";s:1:\"1\";s:17:\"has_page_settings\";s:1:\"0\";}i:208;a:14:{s:2:\"id\";s:4:\"4500\";s:5:\"title\";s:9:\"Pricing 7\";s:9:\"thumbnail\";s:74:\"https://library.elementor.com/wp-content/uploads/2018/02/price_white_1.png\";s:12:\"tmpl_created\";s:10:\"1520443308\";s:6:\"author\";s:9:\"Elementor\";s:3:\"url\";s:106:\"https://library.elementor.com/blocks/pricing-7/?utm_source=library&utm_medium=wp-dash&utm_campaign=preview\";s:4:\"type\";s:5:\"block\";s:7:\"subtype\";s:7:\"pricing\";s:4:\"tags\";s:11:\"[\"pricing\"]\";s:10:\"menu_order\";s:1:\"0\";s:16:\"popularity_index\";s:3:\"399\";s:11:\"trend_index\";s:3:\"412\";s:6:\"is_pro\";s:1:\"1\";s:17:\"has_page_settings\";s:1:\"0\";}i:209;a:14:{s:2:\"id\";s:4:\"8985\";s:5:\"title\";s:9:\"archive 6\";s:9:\"thumbnail\";s:74:\"https://library.elementor.com/wp-content/uploads/2018/06/Archive_350.6.jpg\";s:12:\"tmpl_created\";s:10:\"1528700612\";s:6:\"author\";s:9:\"Elementor\";s:3:\"url\";s:106:\"https://library.elementor.com/blocks/archive-6/?utm_source=library&utm_medium=wp-dash&utm_campaign=preview\";s:4:\"type\";s:5:\"block\";s:7:\"subtype\";s:7:\"archive\";s:4:\"tags\";s:2:\"[]\";s:10:\"menu_order\";s:1:\"0\";s:16:\"popularity_index\";s:3:\"237\";s:11:\"trend_index\";s:3:\"195\";s:6:\"is_pro\";s:1:\"1\";s:17:\"has_page_settings\";s:1:\"0\";}i:210;a:14:{s:2:\"id\";s:4:\"4509\";s:5:\"title\";s:9:\"Pricing 1\";s:9:\"thumbnail\";s:74:\"https://library.elementor.com/wp-content/uploads/2018/02/price_black_1.png\";s:12:\"tmpl_created\";s:10:\"1520443310\";s:6:\"author\";s:9:\"Elementor\";s:3:\"url\";s:106:\"https://library.elementor.com/blocks/pricing-1/?utm_source=library&utm_medium=wp-dash&utm_campaign=preview\";s:4:\"type\";s:5:\"block\";s:7:\"subtype\";s:7:\"pricing\";s:4:\"tags\";s:11:\"[\"pricing\"]\";s:10:\"menu_order\";s:1:\"0\";s:16:\"popularity_index\";s:3:\"438\";s:11:\"trend_index\";s:3:\"435\";s:6:\"is_pro\";s:1:\"1\";s:17:\"has_page_settings\";s:1:\"0\";}i:211;a:14:{s:2:\"id\";s:4:\"8989\";s:5:\"title\";s:9:\"archive 7\";s:9:\"thumbnail\";s:74:\"https://library.elementor.com/wp-content/uploads/2018/06/Archive_350.7.jpg\";s:12:\"tmpl_created\";s:10:\"1528701063\";s:6:\"author\";s:9:\"Elementor\";s:3:\"url\";s:106:\"https://library.elementor.com/blocks/archive-7/?utm_source=library&utm_medium=wp-dash&utm_campaign=preview\";s:4:\"type\";s:5:\"block\";s:7:\"subtype\";s:7:\"archive\";s:4:\"tags\";s:2:\"[]\";s:10:\"menu_order\";s:1:\"0\";s:16:\"popularity_index\";s:3:\"219\";s:11:\"trend_index\";s:3:\"169\";s:6:\"is_pro\";s:1:\"1\";s:17:\"has_page_settings\";s:1:\"0\";}i:212;a:14:{s:2:\"id\";s:4:\"4521\";s:5:\"title\";s:9:\"Pricing 8\";s:9:\"thumbnail\";s:74:\"https://library.elementor.com/wp-content/uploads/2018/02/price_white_2.png\";s:12:\"tmpl_created\";s:10:\"1520443312\";s:6:\"author\";s:9:\"Elementor\";s:3:\"url\";s:106:\"https://library.elementor.com/blocks/pricing-8/?utm_source=library&utm_medium=wp-dash&utm_campaign=preview\";s:4:\"type\";s:5:\"block\";s:7:\"subtype\";s:7:\"pricing\";s:4:\"tags\";s:11:\"[\"pricing\"]\";s:10:\"menu_order\";s:1:\"0\";s:16:\"popularity_index\";s:3:\"330\";s:11:\"trend_index\";s:3:\"264\";s:6:\"is_pro\";s:1:\"1\";s:17:\"has_page_settings\";s:1:\"0\";}i:213;a:14:{s:2:\"id\";s:4:\"8996\";s:5:\"title\";s:9:\"archive 8\";s:9:\"thumbnail\";s:74:\"https://library.elementor.com/wp-content/uploads/2018/06/Archive_350.8.jpg\";s:12:\"tmpl_created\";s:10:\"1528701290\";s:6:\"author\";s:9:\"Elementor\";s:3:\"url\";s:106:\"https://library.elementor.com/blocks/archive-8/?utm_source=library&utm_medium=wp-dash&utm_campaign=preview\";s:4:\"type\";s:5:\"block\";s:7:\"subtype\";s:7:\"archive\";s:4:\"tags\";s:2:\"[]\";s:10:\"menu_order\";s:1:\"0\";s:16:\"popularity_index\";s:3:\"206\";s:11:\"trend_index\";s:3:\"173\";s:6:\"is_pro\";s:1:\"1\";s:17:\"has_page_settings\";s:1:\"0\";}i:214;a:14:{s:2:\"id\";s:4:\"4529\";s:5:\"title\";s:9:\"Pricing 2\";s:9:\"thumbnail\";s:74:\"https://library.elementor.com/wp-content/uploads/2018/02/price_black_2.png\";s:12:\"tmpl_created\";s:10:\"1520443314\";s:6:\"author\";s:9:\"Elementor\";s:3:\"url\";s:106:\"https://library.elementor.com/blocks/pricing-2/?utm_source=library&utm_medium=wp-dash&utm_campaign=preview\";s:4:\"type\";s:5:\"block\";s:7:\"subtype\";s:7:\"pricing\";s:4:\"tags\";s:11:\"[\"pricing\"]\";s:10:\"menu_order\";s:1:\"0\";s:16:\"popularity_index\";s:3:\"430\";s:11:\"trend_index\";s:3:\"407\";s:6:\"is_pro\";s:1:\"1\";s:17:\"has_page_settings\";s:1:\"0\";}i:215;a:14:{s:2:\"id\";s:4:\"9001\";s:5:\"title\";s:9:\"archive 9\";s:9:\"thumbnail\";s:74:\"https://library.elementor.com/wp-content/uploads/2018/06/Archive_350.9.jpg\";s:12:\"tmpl_created\";s:10:\"1528701433\";s:6:\"author\";s:9:\"Elementor\";s:3:\"url\";s:106:\"https://library.elementor.com/blocks/archive-9/?utm_source=library&utm_medium=wp-dash&utm_campaign=preview\";s:4:\"type\";s:5:\"block\";s:7:\"subtype\";s:7:\"archive\";s:4:\"tags\";s:2:\"[]\";s:10:\"menu_order\";s:1:\"0\";s:16:\"popularity_index\";s:3:\"268\";s:11:\"trend_index\";s:3:\"197\";s:6:\"is_pro\";s:1:\"1\";s:17:\"has_page_settings\";s:1:\"0\";}i:216;a:14:{s:2:\"id\";s:4:\"4537\";s:5:\"title\";s:9:\"Pricing 9\";s:9:\"thumbnail\";s:74:\"https://library.elementor.com/wp-content/uploads/2018/02/price_white_3.png\";s:12:\"tmpl_created\";s:10:\"1520443315\";s:6:\"author\";s:9:\"Elementor\";s:3:\"url\";s:106:\"https://library.elementor.com/blocks/pricing-9/?utm_source=library&utm_medium=wp-dash&utm_campaign=preview\";s:4:\"type\";s:5:\"block\";s:7:\"subtype\";s:7:\"pricing\";s:4:\"tags\";s:11:\"[\"pricing\"]\";s:10:\"menu_order\";s:1:\"0\";s:16:\"popularity_index\";s:3:\"426\";s:11:\"trend_index\";s:3:\"389\";s:6:\"is_pro\";s:1:\"1\";s:17:\"has_page_settings\";s:1:\"0\";}i:217;a:14:{s:2:\"id\";s:4:\"9119\";s:5:\"title\";s:10:\"footer 015\";s:9:\"thumbnail\";s:82:\"https://library.elementor.com/wp-content/uploads/2018/07/Footer_GetStarted_350.png\";s:12:\"tmpl_created\";s:10:\"1532428138\";s:6:\"author\";s:9:\"Elementor\";s:3:\"url\";s:101:\"https://library.elementor.com/blocks/demo/?utm_source=library&utm_medium=wp-dash&utm_campaign=preview\";s:4:\"type\";s:5:\"block\";s:7:\"subtype\";s:6:\"footer\";s:4:\"tags\";s:2:\"[]\";s:10:\"menu_order\";s:1:\"0\";s:16:\"popularity_index\";s:3:\"311\";s:11:\"trend_index\";s:3:\"226\";s:6:\"is_pro\";s:1:\"1\";s:17:\"has_page_settings\";s:1:\"0\";}i:218;a:14:{s:2:\"id\";s:4:\"4545\";s:5:\"title\";s:9:\"Pricing 3\";s:9:\"thumbnail\";s:74:\"https://library.elementor.com/wp-content/uploads/2018/02/price_black_3.png\";s:12:\"tmpl_created\";s:10:\"1520443317\";s:6:\"author\";s:9:\"Elementor\";s:3:\"url\";s:106:\"https://library.elementor.com/blocks/pricing-3/?utm_source=library&utm_medium=wp-dash&utm_campaign=preview\";s:4:\"type\";s:5:\"block\";s:7:\"subtype\";s:7:\"pricing\";s:4:\"tags\";s:11:\"[\"pricing\"]\";s:10:\"menu_order\";s:1:\"0\";s:16:\"popularity_index\";s:3:\"436\";s:11:\"trend_index\";s:1:\"0\";s:6:\"is_pro\";s:1:\"1\";s:17:\"has_page_settings\";s:1:\"0\";}i:219;a:14:{s:2:\"id\";s:4:\"9127\";s:5:\"title\";s:9:\"header 13\";s:9:\"thumbnail\";s:86:\"https://library.elementor.com/wp-content/uploads/2018/07/Header_get_started_1200V3.png\";s:12:\"tmpl_created\";s:10:\"1532428699\";s:6:\"author\";s:9:\"Elementor\";s:3:\"url\";s:106:\"https://library.elementor.com/blocks/header-13/?utm_source=library&utm_medium=wp-dash&utm_campaign=preview\";s:4:\"type\";s:5:\"block\";s:7:\"subtype\";s:6:\"header\";s:4:\"tags\";s:2:\"[]\";s:10:\"menu_order\";s:1:\"0\";s:16:\"popularity_index\";s:2:\"50\";s:11:\"trend_index\";s:2:\"63\";s:6:\"is_pro\";s:1:\"1\";s:17:\"has_page_settings\";s:1:\"0\";}i:220;a:14:{s:2:\"id\";s:4:\"4553\";s:5:\"title\";s:10:\"Pricing 10\";s:9:\"thumbnail\";s:74:\"https://library.elementor.com/wp-content/uploads/2018/02/price_white_4.png\";s:12:\"tmpl_created\";s:10:\"1520443319\";s:6:\"author\";s:9:\"Elementor\";s:3:\"url\";s:107:\"https://library.elementor.com/blocks/pricing-10/?utm_source=library&utm_medium=wp-dash&utm_campaign=preview\";s:4:\"type\";s:5:\"block\";s:7:\"subtype\";s:7:\"pricing\";s:4:\"tags\";s:11:\"[\"pricing\"]\";s:10:\"menu_order\";s:1:\"0\";s:16:\"popularity_index\";s:3:\"410\";s:11:\"trend_index\";s:3:\"376\";s:6:\"is_pro\";s:1:\"1\";s:17:\"has_page_settings\";s:1:\"0\";}i:221;a:14:{s:2:\"id\";s:4:\"4562\";s:5:\"title\";s:9:\"Pricing 4\";s:9:\"thumbnail\";s:74:\"https://library.elementor.com/wp-content/uploads/2018/02/price_black_4.png\";s:12:\"tmpl_created\";s:10:\"1520443322\";s:6:\"author\";s:9:\"Elementor\";s:3:\"url\";s:106:\"https://library.elementor.com/blocks/pricing-4/?utm_source=library&utm_medium=wp-dash&utm_campaign=preview\";s:4:\"type\";s:5:\"block\";s:7:\"subtype\";s:7:\"pricing\";s:4:\"tags\";s:11:\"[\"pricing\"]\";s:10:\"menu_order\";s:1:\"0\";s:16:\"popularity_index\";s:3:\"435\";s:11:\"trend_index\";s:1:\"0\";s:6:\"is_pro\";s:1:\"1\";s:17:\"has_page_settings\";s:1:\"0\";}i:222;a:14:{s:2:\"id\";s:4:\"4572\";s:5:\"title\";s:10:\"Pricing 11\";s:9:\"thumbnail\";s:74:\"https://library.elementor.com/wp-content/uploads/2018/02/price_white_5.png\";s:12:\"tmpl_created\";s:10:\"1520443324\";s:6:\"author\";s:9:\"Elementor\";s:3:\"url\";s:107:\"https://library.elementor.com/blocks/pricing-11/?utm_source=library&utm_medium=wp-dash&utm_campaign=preview\";s:4:\"type\";s:5:\"block\";s:7:\"subtype\";s:7:\"pricing\";s:4:\"tags\";s:11:\"[\"pricing\"]\";s:10:\"menu_order\";s:1:\"0\";s:16:\"popularity_index\";s:3:\"320\";s:11:\"trend_index\";s:3:\"262\";s:6:\"is_pro\";s:1:\"1\";s:17:\"has_page_settings\";s:1:\"0\";}i:223;a:14:{s:2:\"id\";s:4:\"9174\";s:5:\"title\";s:17:\"single product 01\";s:9:\"thumbnail\";s:81:\"https://library.elementor.com/wp-content/uploads/2018/07/single_product01_350.png\";s:12:\"tmpl_created\";s:10:\"1532950125\";s:6:\"author\";s:9:\"Elementor\";s:3:\"url\";s:114:\"https://library.elementor.com/blocks/single-product-01/?utm_source=library&utm_medium=wp-dash&utm_campaign=preview\";s:4:\"type\";s:5:\"block\";s:7:\"subtype\";s:14:\"single product\";s:4:\"tags\";s:2:\"[]\";s:10:\"menu_order\";s:1:\"0\";s:16:\"popularity_index\";s:3:\"120\";s:11:\"trend_index\";s:2:\"57\";s:6:\"is_pro\";s:1:\"1\";s:17:\"has_page_settings\";s:1:\"0\";}i:224;a:14:{s:2:\"id\";s:4:\"4580\";s:5:\"title\";s:10:\"Pricing 12\";s:9:\"thumbnail\";s:74:\"https://library.elementor.com/wp-content/uploads/2018/02/price_white_6.png\";s:12:\"tmpl_created\";s:10:\"1520443326\";s:6:\"author\";s:9:\"Elementor\";s:3:\"url\";s:107:\"https://library.elementor.com/blocks/pricing-12/?utm_source=library&utm_medium=wp-dash&utm_campaign=preview\";s:4:\"type\";s:5:\"block\";s:7:\"subtype\";s:7:\"pricing\";s:4:\"tags\";s:11:\"[\"pricing\"]\";s:10:\"menu_order\";s:1:\"0\";s:16:\"popularity_index\";s:3:\"422\";s:11:\"trend_index\";s:3:\"430\";s:6:\"is_pro\";s:1:\"1\";s:17:\"has_page_settings\";s:1:\"0\";}i:225;a:14:{s:2:\"id\";s:4:\"9178\";s:5:\"title\";s:17:\"single product 02\";s:9:\"thumbnail\";s:84:\"https://library.elementor.com/wp-content/uploads/2018/07/single_product02_350new.png\";s:12:\"tmpl_created\";s:10:\"1532951997\";s:6:\"author\";s:9:\"Elementor\";s:3:\"url\";s:114:\"https://library.elementor.com/blocks/single-product-02/?utm_source=library&utm_medium=wp-dash&utm_campaign=preview\";s:4:\"type\";s:5:\"block\";s:7:\"subtype\";s:14:\"single product\";s:4:\"tags\";s:2:\"[]\";s:10:\"menu_order\";s:1:\"0\";s:16:\"popularity_index\";s:3:\"163\";s:11:\"trend_index\";s:2:\"93\";s:6:\"is_pro\";s:1:\"1\";s:17:\"has_page_settings\";s:1:\"0\";}i:226;a:14:{s:2:\"id\";s:4:\"4589\";s:5:\"title\";s:9:\"Pricing 5\";s:9:\"thumbnail\";s:74:\"https://library.elementor.com/wp-content/uploads/2018/02/price_black_6.png\";s:12:\"tmpl_created\";s:10:\"1520443327\";s:6:\"author\";s:9:\"Elementor\";s:3:\"url\";s:106:\"https://library.elementor.com/blocks/pricing-5/?utm_source=library&utm_medium=wp-dash&utm_campaign=preview\";s:4:\"type\";s:5:\"block\";s:7:\"subtype\";s:7:\"pricing\";s:4:\"tags\";s:11:\"[\"pricing\"]\";s:10:\"menu_order\";s:1:\"0\";s:16:\"popularity_index\";s:3:\"437\";s:11:\"trend_index\";s:3:\"434\";s:6:\"is_pro\";s:1:\"1\";s:17:\"has_page_settings\";s:1:\"0\";}i:227;a:14:{s:2:\"id\";s:4:\"9180\";s:5:\"title\";s:17:\"single product 03\";s:9:\"thumbnail\";s:81:\"https://library.elementor.com/wp-content/uploads/2018/07/single_product03_350.png\";s:12:\"tmpl_created\";s:10:\"1532952302\";s:6:\"author\";s:9:\"Elementor\";s:3:\"url\";s:114:\"https://library.elementor.com/blocks/single-product-03/?utm_source=library&utm_medium=wp-dash&utm_campaign=preview\";s:4:\"type\";s:5:\"block\";s:7:\"subtype\";s:14:\"single product\";s:4:\"tags\";s:2:\"[]\";s:10:\"menu_order\";s:1:\"0\";s:16:\"popularity_index\";s:3:\"200\";s:11:\"trend_index\";s:3:\"116\";s:6:\"is_pro\";s:1:\"1\";s:17:\"has_page_settings\";s:1:\"0\";}i:228;a:14:{s:2:\"id\";s:4:\"4597\";s:5:\"title\";s:10:\"Pricing 13\";s:9:\"thumbnail\";s:74:\"https://library.elementor.com/wp-content/uploads/2018/02/price_white_7.png\";s:12:\"tmpl_created\";s:10:\"1520443330\";s:6:\"author\";s:9:\"Elementor\";s:3:\"url\";s:107:\"https://library.elementor.com/blocks/pricing-13/?utm_source=library&utm_medium=wp-dash&utm_campaign=preview\";s:4:\"type\";s:5:\"block\";s:7:\"subtype\";s:7:\"pricing\";s:4:\"tags\";s:11:\"[\"pricing\"]\";s:10:\"menu_order\";s:1:\"0\";s:16:\"popularity_index\";s:3:\"427\";s:11:\"trend_index\";s:3:\"405\";s:6:\"is_pro\";s:1:\"1\";s:17:\"has_page_settings\";s:1:\"0\";}i:229;a:14:{s:2:\"id\";s:4:\"9182\";s:5:\"title\";s:17:\"single product 04\";s:9:\"thumbnail\";s:82:\"https://library.elementor.com/wp-content/uploads/2018/07/single_product040_350.png\";s:12:\"tmpl_created\";s:10:\"1532952606\";s:6:\"author\";s:9:\"Elementor\";s:3:\"url\";s:114:\"https://library.elementor.com/blocks/single-product-04/?utm_source=library&utm_medium=wp-dash&utm_campaign=preview\";s:4:\"type\";s:5:\"block\";s:7:\"subtype\";s:14:\"single product\";s:4:\"tags\";s:2:\"[]\";s:10:\"menu_order\";s:1:\"0\";s:16:\"popularity_index\";s:3:\"230\";s:11:\"trend_index\";s:3:\"147\";s:6:\"is_pro\";s:1:\"1\";s:17:\"has_page_settings\";s:1:\"0\";}i:230;a:14:{s:2:\"id\";s:4:\"4605\";s:5:\"title\";s:9:\"Pricing 6\";s:9:\"thumbnail\";s:74:\"https://library.elementor.com/wp-content/uploads/2018/02/price_black_7.png\";s:12:\"tmpl_created\";s:10:\"1520443332\";s:6:\"author\";s:9:\"Elementor\";s:3:\"url\";s:106:\"https://library.elementor.com/blocks/pricing-6/?utm_source=library&utm_medium=wp-dash&utm_campaign=preview\";s:4:\"type\";s:5:\"block\";s:7:\"subtype\";s:7:\"pricing\";s:4:\"tags\";s:11:\"[\"pricing\"]\";s:10:\"menu_order\";s:1:\"0\";s:16:\"popularity_index\";s:3:\"439\";s:11:\"trend_index\";s:3:\"425\";s:6:\"is_pro\";s:1:\"1\";s:17:\"has_page_settings\";s:1:\"0\";}i:231;a:14:{s:2:\"id\";s:4:\"9239\";s:5:\"title\";s:17:\"product archive 1\";s:9:\"thumbnail\";s:82:\"https://library.elementor.com/wp-content/uploads/2018/07/product-archive-350-1.png\";s:12:\"tmpl_created\";s:10:\"1532953482\";s:6:\"author\";s:9:\"Elementor\";s:3:\"url\";s:114:\"https://library.elementor.com/blocks/product-archive-1/?utm_source=library&utm_medium=wp-dash&utm_campaign=preview\";s:4:\"type\";s:5:\"block\";s:7:\"subtype\";s:15:\"product archive\";s:4:\"tags\";s:2:\"[]\";s:10:\"menu_order\";s:1:\"0\";s:16:\"popularity_index\";s:3:\"174\";s:11:\"trend_index\";s:2:\"91\";s:6:\"is_pro\";s:1:\"1\";s:17:\"has_page_settings\";s:1:\"0\";}i:232;a:14:{s:2:\"id\";s:4:\"4613\";s:5:\"title\";s:10:\"Pricing 14\";s:9:\"thumbnail\";s:74:\"https://library.elementor.com/wp-content/uploads/2018/02/price_white_8.png\";s:12:\"tmpl_created\";s:10:\"1520443334\";s:6:\"author\";s:9:\"Elementor\";s:3:\"url\";s:107:\"https://library.elementor.com/blocks/pricing-14/?utm_source=library&utm_medium=wp-dash&utm_campaign=preview\";s:4:\"type\";s:5:\"block\";s:7:\"subtype\";s:7:\"pricing\";s:4:\"tags\";s:11:\"[\"pricing\"]\";s:10:\"menu_order\";s:1:\"0\";s:16:\"popularity_index\";s:3:\"418\";s:11:\"trend_index\";s:3:\"383\";s:6:\"is_pro\";s:1:\"1\";s:17:\"has_page_settings\";s:1:\"0\";}i:233;a:14:{s:2:\"id\";s:4:\"9247\";s:5:\"title\";s:17:\"product archive 2\";s:9:\"thumbnail\";s:82:\"https://library.elementor.com/wp-content/uploads/2018/07/product-archive-350-2.png\";s:12:\"tmpl_created\";s:10:\"1532953793\";s:6:\"author\";s:9:\"Elementor\";s:3:\"url\";s:114:\"https://library.elementor.com/blocks/product-archive-2/?utm_source=library&utm_medium=wp-dash&utm_campaign=preview\";s:4:\"type\";s:5:\"block\";s:7:\"subtype\";s:15:\"product archive\";s:4:\"tags\";s:2:\"[]\";s:10:\"menu_order\";s:1:\"0\";s:16:\"popularity_index\";s:3:\"182\";s:11:\"trend_index\";s:2:\"97\";s:6:\"is_pro\";s:1:\"1\";s:17:\"has_page_settings\";s:1:\"0\";}i:234;a:14:{s:2:\"id\";s:4:\"9254\";s:5:\"title\";s:17:\"product archive 3\";s:9:\"thumbnail\";s:82:\"https://library.elementor.com/wp-content/uploads/2018/07/product-archive-350-3.png\";s:12:\"tmpl_created\";s:10:\"1532954032\";s:6:\"author\";s:9:\"Elementor\";s:3:\"url\";s:114:\"https://library.elementor.com/blocks/product-archive-3/?utm_source=library&utm_medium=wp-dash&utm_campaign=preview\";s:4:\"type\";s:5:\"block\";s:7:\"subtype\";s:15:\"product archive\";s:4:\"tags\";s:2:\"[]\";s:10:\"menu_order\";s:1:\"0\";s:16:\"popularity_index\";s:3:\"190\";s:11:\"trend_index\";s:2:\"87\";s:6:\"is_pro\";s:1:\"1\";s:17:\"has_page_settings\";s:1:\"0\";}i:235;a:14:{s:2:\"id\";s:4:\"9301\";s:5:\"title\";s:13:\"Single Post 4\";s:9:\"thumbnail\";s:65:\"https://library.elementor.com/wp-content/uploads/2018/09/3003.jpg\";s:12:\"tmpl_created\";s:10:\"1537440661\";s:6:\"author\";s:9:\"Elementor\";s:3:\"url\";s:110:\"https://library.elementor.com/blocks/single-post-4/?utm_source=library&utm_medium=wp-dash&utm_campaign=preview\";s:4:\"type\";s:5:\"block\";s:7:\"subtype\";s:11:\"single post\";s:4:\"tags\";s:2:\"[]\";s:10:\"menu_order\";s:1:\"0\";s:16:\"popularity_index\";s:3:\"273\";s:11:\"trend_index\";s:3:\"125\";s:6:\"is_pro\";s:1:\"1\";s:17:\"has_page_settings\";s:1:\"1\";}i:236;a:14:{s:2:\"id\";s:4:\"9296\";s:5:\"title\";s:13:\"Single Post 3\";s:9:\"thumbnail\";s:65:\"https://library.elementor.com/wp-content/uploads/2018/09/3002.jpg\";s:12:\"tmpl_created\";s:10:\"1537440673\";s:6:\"author\";s:9:\"Elementor\";s:3:\"url\";s:110:\"https://library.elementor.com/blocks/single-post-3/?utm_source=library&utm_medium=wp-dash&utm_campaign=preview\";s:4:\"type\";s:5:\"block\";s:7:\"subtype\";s:11:\"single post\";s:4:\"tags\";s:2:\"[]\";s:10:\"menu_order\";s:1:\"0\";s:16:\"popularity_index\";s:3:\"303\";s:11:\"trend_index\";s:3:\"132\";s:6:\"is_pro\";s:1:\"1\";s:17:\"has_page_settings\";s:1:\"1\";}i:237;a:14:{s:2:\"id\";s:4:\"9313\";s:5:\"title\";s:13:\"Single Post 5\";s:9:\"thumbnail\";s:65:\"https://library.elementor.com/wp-content/uploads/2018/09/3001.jpg\";s:12:\"tmpl_created\";s:10:\"1537440798\";s:6:\"author\";s:9:\"Elementor\";s:3:\"url\";s:110:\"https://library.elementor.com/blocks/single-post-5/?utm_source=library&utm_medium=wp-dash&utm_campaign=preview\";s:4:\"type\";s:5:\"block\";s:7:\"subtype\";s:11:\"single post\";s:4:\"tags\";s:2:\"[]\";s:10:\"menu_order\";s:1:\"0\";s:16:\"popularity_index\";s:3:\"248\";s:11:\"trend_index\";s:2:\"67\";s:6:\"is_pro\";s:1:\"1\";s:17:\"has_page_settings\";s:1:\"1\";}i:238;a:14:{s:2:\"id\";s:4:\"9343\";s:5:\"title\";s:13:\"Single Post 6\";s:9:\"thumbnail\";s:65:\"https://library.elementor.com/wp-content/uploads/2018/09/3004.jpg\";s:12:\"tmpl_created\";s:10:\"1537443531\";s:6:\"author\";s:9:\"Elementor\";s:3:\"url\";s:110:\"https://library.elementor.com/blocks/single-post-6/?utm_source=library&utm_medium=wp-dash&utm_campaign=preview\";s:4:\"type\";s:5:\"block\";s:7:\"subtype\";s:11:\"single post\";s:4:\"tags\";s:2:\"[]\";s:10:\"menu_order\";s:1:\"0\";s:16:\"popularity_index\";s:3:\"280\";s:11:\"trend_index\";s:3:\"142\";s:6:\"is_pro\";s:1:\"1\";s:17:\"has_page_settings\";s:1:\"1\";}i:239;a:14:{s:2:\"id\";s:4:\"9349\";s:5:\"title\";s:13:\"Single Post 7\";s:9:\"thumbnail\";s:65:\"https://library.elementor.com/wp-content/uploads/2018/09/3005.jpg\";s:12:\"tmpl_created\";s:10:\"1537443903\";s:6:\"author\";s:9:\"Elementor\";s:3:\"url\";s:110:\"https://library.elementor.com/blocks/single-post-7/?utm_source=library&utm_medium=wp-dash&utm_campaign=preview\";s:4:\"type\";s:5:\"block\";s:7:\"subtype\";s:11:\"single post\";s:4:\"tags\";s:2:\"[]\";s:10:\"menu_order\";s:1:\"0\";s:16:\"popularity_index\";s:3:\"196\";s:11:\"trend_index\";s:2:\"68\";s:6:\"is_pro\";s:1:\"1\";s:17:\"has_page_settings\";s:1:\"1\";}i:240;a:14:{s:2:\"id\";s:4:\"4690\";s:5:\"title\";s:6:\"Team 7\";s:9:\"thumbnail\";s:73:\"https://library.elementor.com/wp-content/uploads/2018/03/team_white_1.png\";s:12:\"tmpl_created\";s:10:\"1520443348\";s:6:\"author\";s:9:\"Elementor\";s:3:\"url\";s:103:\"https://library.elementor.com/blocks/team-7/?utm_source=library&utm_medium=wp-dash&utm_campaign=preview\";s:4:\"type\";s:5:\"block\";s:7:\"subtype\";s:4:\"team\";s:4:\"tags\";s:8:\"[\"team\"]\";s:10:\"menu_order\";s:1:\"0\";s:16:\"popularity_index\";s:3:\"238\";s:11:\"trend_index\";s:3:\"277\";s:6:\"is_pro\";s:1:\"0\";s:17:\"has_page_settings\";s:1:\"0\";}i:241;a:14:{s:2:\"id\";s:4:\"4698\";s:5:\"title\";s:7:\"Team 15\";s:9:\"thumbnail\";s:73:\"https://library.elementor.com/wp-content/uploads/2018/03/team_black_1.png\";s:12:\"tmpl_created\";s:10:\"1520443350\";s:6:\"author\";s:9:\"Elementor\";s:3:\"url\";s:104:\"https://library.elementor.com/blocks/team-15/?utm_source=library&utm_medium=wp-dash&utm_campaign=preview\";s:4:\"type\";s:5:\"block\";s:7:\"subtype\";s:4:\"team\";s:4:\"tags\";s:8:\"[\"team\"]\";s:10:\"menu_order\";s:1:\"0\";s:16:\"popularity_index\";s:3:\"376\";s:11:\"trend_index\";s:3:\"388\";s:6:\"is_pro\";s:1:\"0\";s:17:\"has_page_settings\";s:1:\"0\";}i:242;a:14:{s:2:\"id\";s:4:\"4706\";s:5:\"title\";s:6:\"Team 5\";s:9:\"thumbnail\";s:73:\"https://library.elementor.com/wp-content/uploads/2018/03/team_white_2.png\";s:12:\"tmpl_created\";s:10:\"1520443352\";s:6:\"author\";s:9:\"Elementor\";s:3:\"url\";s:103:\"https://library.elementor.com/blocks/team-5/?utm_source=library&utm_medium=wp-dash&utm_campaign=preview\";s:4:\"type\";s:5:\"block\";s:7:\"subtype\";s:4:\"team\";s:4:\"tags\";s:8:\"[\"team\"]\";s:10:\"menu_order\";s:1:\"0\";s:16:\"popularity_index\";s:3:\"138\";s:11:\"trend_index\";s:3:\"184\";s:6:\"is_pro\";s:1:\"0\";s:17:\"has_page_settings\";s:1:\"0\";}i:243;a:14:{s:2:\"id\";s:4:\"4718\";s:5:\"title\";s:6:\"Team 4\";s:9:\"thumbnail\";s:73:\"https://library.elementor.com/wp-content/uploads/2018/03/team_white_3.png\";s:12:\"tmpl_created\";s:10:\"1520443354\";s:6:\"author\";s:9:\"Elementor\";s:3:\"url\";s:103:\"https://library.elementor.com/blocks/team-4/?utm_source=library&utm_medium=wp-dash&utm_campaign=preview\";s:4:\"type\";s:5:\"block\";s:7:\"subtype\";s:4:\"team\";s:4:\"tags\";s:8:\"[\"team\"]\";s:10:\"menu_order\";s:1:\"0\";s:16:\"popularity_index\";s:3:\"173\";s:11:\"trend_index\";s:3:\"163\";s:6:\"is_pro\";s:1:\"0\";s:17:\"has_page_settings\";s:1:\"0\";}i:244;a:14:{s:2:\"id\";s:4:\"4727\";s:5:\"title\";s:7:\"Team 13\";s:9:\"thumbnail\";s:73:\"https://library.elementor.com/wp-content/uploads/2018/03/team_black_2.png\";s:12:\"tmpl_created\";s:10:\"1520443356\";s:6:\"author\";s:9:\"Elementor\";s:3:\"url\";s:104:\"https://library.elementor.com/blocks/team-13/?utm_source=library&utm_medium=wp-dash&utm_campaign=preview\";s:4:\"type\";s:5:\"block\";s:7:\"subtype\";s:4:\"team\";s:4:\"tags\";s:8:\"[\"team\"]\";s:10:\"menu_order\";s:1:\"0\";s:16:\"popularity_index\";s:3:\"357\";s:11:\"trend_index\";s:3:\"322\";s:6:\"is_pro\";s:1:\"0\";s:17:\"has_page_settings\";s:1:\"0\";}i:245;a:14:{s:2:\"id\";s:4:\"9559\";s:5:\"title\";s:21:\"Slide-In | Login | 01\";s:9:\"thumbnail\";s:83:\"https://library.elementor.com/wp-content/uploads/2019/01/slidein_login_01_small.png\";s:12:\"tmpl_created\";s:10:\"1546946547\";s:6:\"author\";s:9:\"Elementor\";s:3:\"url\";s:114:\"https://library.elementor.com/popups/slide-in-login-01/?utm_source=library&utm_medium=wp-dash&utm_campaign=preview\";s:4:\"type\";s:5:\"popup\";s:7:\"subtype\";s:8:\"slide-in\";s:4:\"tags\";s:2:\"[]\";s:10:\"menu_order\";s:1:\"0\";s:16:\"popularity_index\";s:3:\"440\";s:11:\"trend_index\";s:1:\"0\";s:6:\"is_pro\";s:1:\"1\";s:17:\"has_page_settings\";s:1:\"1\";}i:246;a:14:{s:2:\"id\";s:4:\"4736\";s:5:\"title\";s:7:\"Team 20\";s:9:\"thumbnail\";s:73:\"https://library.elementor.com/wp-content/uploads/2018/03/team_white_4.png\";s:12:\"tmpl_created\";s:10:\"1520443358\";s:6:\"author\";s:9:\"Elementor\";s:3:\"url\";s:104:\"https://library.elementor.com/blocks/team-20/?utm_source=library&utm_medium=wp-dash&utm_campaign=preview\";s:4:\"type\";s:5:\"block\";s:7:\"subtype\";s:4:\"team\";s:4:\"tags\";s:8:\"[\"team\"]\";s:10:\"menu_order\";s:1:\"0\";s:16:\"popularity_index\";s:3:\"141\";s:11:\"trend_index\";s:3:\"161\";s:6:\"is_pro\";s:1:\"0\";s:17:\"has_page_settings\";s:1:\"0\";}i:247;a:14:{s:2:\"id\";s:4:\"9571\";s:5:\"title\";s:19:\"Fly In | Login | 01\";s:9:\"thumbnail\";s:81:\"https://library.elementor.com/wp-content/uploads/2019/01/FlyIn_Login_01_small.png\";s:12:\"tmpl_created\";s:10:\"1546948252\";s:6:\"author\";s:9:\"Elementor\";s:3:\"url\";s:112:\"https://library.elementor.com/popups/fly-in-login-01/?utm_source=library&utm_medium=wp-dash&utm_campaign=preview\";s:4:\"type\";s:5:\"popup\";s:7:\"subtype\";s:6:\"fly-in\";s:4:\"tags\";s:2:\"[]\";s:10:\"menu_order\";s:1:\"0\";s:16:\"popularity_index\";s:1:\"0\";s:11:\"trend_index\";s:1:\"0\";s:6:\"is_pro\";s:1:\"1\";s:17:\"has_page_settings\";s:1:\"1\";}i:248;a:14:{s:2:\"id\";s:4:\"4746\";s:5:\"title\";s:7:\"Team 23\";s:9:\"thumbnail\";s:73:\"https://library.elementor.com/wp-content/uploads/2018/03/team_black_4.png\";s:12:\"tmpl_created\";s:10:\"1520443360\";s:6:\"author\";s:9:\"Elementor\";s:3:\"url\";s:104:\"https://library.elementor.com/blocks/team-23/?utm_source=library&utm_medium=wp-dash&utm_campaign=preview\";s:4:\"type\";s:5:\"block\";s:7:\"subtype\";s:4:\"team\";s:4:\"tags\";s:8:\"[\"team\"]\";s:10:\"menu_order\";s:1:\"0\";s:16:\"popularity_index\";s:3:\"242\";s:11:\"trend_index\";s:3:\"198\";s:6:\"is_pro\";s:1:\"0\";s:17:\"has_page_settings\";s:1:\"0\";}i:249;a:14:{s:2:\"id\";s:4:\"9580\";s:5:\"title\";s:30:\"Full-Screen | Welcome-Mat | 01\";s:9:\"thumbnail\";s:93:\"https://library.elementor.com/wp-content/uploads/2019/01/Full-Screen_Welcome-Mat_01_small.png\";s:12:\"tmpl_created\";s:10:\"1546949322\";s:6:\"author\";s:9:\"Elementor\";s:3:\"url\";s:123:\"https://library.elementor.com/popups/full-screen-welcome-mat-01/?utm_source=library&utm_medium=wp-dash&utm_campaign=preview\";s:4:\"type\";s:5:\"popup\";s:7:\"subtype\";s:11:\"full screen\";s:4:\"tags\";s:2:\"[]\";s:10:\"menu_order\";s:1:\"0\";s:16:\"popularity_index\";s:1:\"0\";s:11:\"trend_index\";s:1:\"0\";s:6:\"is_pro\";s:1:\"1\";s:17:\"has_page_settings\";s:1:\"1\";}i:250;a:14:{s:2:\"id\";s:4:\"4759\";s:5:\"title\";s:7:\"Team 22\";s:9:\"thumbnail\";s:73:\"https://library.elementor.com/wp-content/uploads/2018/03/team_white_5.png\";s:12:\"tmpl_created\";s:10:\"1520443362\";s:6:\"author\";s:9:\"Elementor\";s:3:\"url\";s:104:\"https://library.elementor.com/blocks/team-22/?utm_source=library&utm_medium=wp-dash&utm_campaign=preview\";s:4:\"type\";s:5:\"block\";s:7:\"subtype\";s:4:\"team\";s:4:\"tags\";s:8:\"[\"team\"]\";s:10:\"menu_order\";s:1:\"0\";s:16:\"popularity_index\";s:3:\"278\";s:11:\"trend_index\";s:3:\"191\";s:6:\"is_pro\";s:1:\"1\";s:17:\"has_page_settings\";s:1:\"0\";}i:251;a:14:{s:2:\"id\";s:4:\"9592\";s:5:\"title\";s:24:\"Classic | Promotion | 01\";s:9:\"thumbnail\";s:87:\"https://library.elementor.com/wp-content/uploads/2019/01/Classic_Promotion_small_01.png\";s:12:\"tmpl_created\";s:10:\"1546963720\";s:6:\"author\";s:9:\"Elementor\";s:3:\"url\";s:117:\"https://library.elementor.com/popups/classic-promotion-01/?utm_source=library&utm_medium=wp-dash&utm_campaign=preview\";s:4:\"type\";s:5:\"popup\";s:7:\"subtype\";s:7:\"classic\";s:4:\"tags\";s:2:\"[]\";s:10:\"menu_order\";s:1:\"0\";s:16:\"popularity_index\";s:2:\"-1\";s:11:\"trend_index\";s:2:\"-1\";s:6:\"is_pro\";s:1:\"1\";s:17:\"has_page_settings\";s:1:\"1\";}i:252;a:14:{s:2:\"id\";s:4:\"4770\";s:5:\"title\";s:7:\"Team 12\";s:9:\"thumbnail\";s:73:\"https://library.elementor.com/wp-content/uploads/2018/03/team_white_6.png\";s:12:\"tmpl_created\";s:10:\"1520443364\";s:6:\"author\";s:9:\"Elementor\";s:3:\"url\";s:106:\"https://library.elementor.com/blocks/team-12-2/?utm_source=library&utm_medium=wp-dash&utm_campaign=preview\";s:4:\"type\";s:5:\"block\";s:7:\"subtype\";s:4:\"team\";s:4:\"tags\";s:8:\"[\"team\"]\";s:10:\"menu_order\";s:1:\"0\";s:16:\"popularity_index\";s:3:\"356\";s:11:\"trend_index\";s:3:\"328\";s:6:\"is_pro\";s:1:\"1\";s:17:\"has_page_settings\";s:1:\"0\";}i:253;a:14:{s:2:\"id\";s:4:\"9602\";s:5:\"title\";s:30:\"Bottom Bar | Announcement | 01\";s:9:\"thumbnail\";s:92:\"https://library.elementor.com/wp-content/uploads/2019/01/Bottombar_Announcement_small_01.png\";s:12:\"tmpl_created\";s:10:\"1546964559\";s:6:\"author\";s:9:\"Elementor\";s:3:\"url\";s:123:\"https://library.elementor.com/popups/bottom-bar-announcement-01/?utm_source=library&utm_medium=wp-dash&utm_campaign=preview\";s:4:\"type\";s:5:\"popup\";s:7:\"subtype\";s:10:\"bottom bar\";s:4:\"tags\";s:2:\"[]\";s:10:\"menu_order\";s:1:\"0\";s:16:\"popularity_index\";s:2:\"-1\";s:11:\"trend_index\";s:2:\"-1\";s:6:\"is_pro\";s:1:\"1\";s:17:\"has_page_settings\";s:1:\"1\";}i:254;a:14:{s:2:\"id\";s:4:\"4781\";s:5:\"title\";s:7:\"Team 16\";s:9:\"thumbnail\";s:73:\"https://library.elementor.com/wp-content/uploads/2018/03/team_white_7.png\";s:12:\"tmpl_created\";s:10:\"1520443365\";s:6:\"author\";s:9:\"Elementor\";s:3:\"url\";s:104:\"https://library.elementor.com/blocks/team-16/?utm_source=library&utm_medium=wp-dash&utm_campaign=preview\";s:4:\"type\";s:5:\"block\";s:7:\"subtype\";s:4:\"team\";s:4:\"tags\";s:8:\"[\"team\"]\";s:10:\"menu_order\";s:1:\"0\";s:16:\"popularity_index\";s:3:\"213\";s:11:\"trend_index\";s:3:\"176\";s:6:\"is_pro\";s:1:\"1\";s:17:\"has_page_settings\";s:1:\"0\";}i:255;a:14:{s:2:\"id\";s:4:\"9611\";s:5:\"title\";s:21:\"Hello Bar | Sale | 01\";s:9:\"thumbnail\";s:82:\"https://library.elementor.com/wp-content/uploads/2019/01/Top-Bar_Sale_small_01.png\";s:12:\"tmpl_created\";s:10:\"1546965350\";s:6:\"author\";s:9:\"Elementor\";s:3:\"url\";s:114:\"https://library.elementor.com/popups/hello-bar-sale-01/?utm_source=library&utm_medium=wp-dash&utm_campaign=preview\";s:4:\"type\";s:5:\"popup\";s:7:\"subtype\";s:9:\"hello bar\";s:4:\"tags\";s:2:\"[]\";s:10:\"menu_order\";s:1:\"0\";s:16:\"popularity_index\";s:2:\"-1\";s:11:\"trend_index\";s:2:\"-1\";s:6:\"is_pro\";s:1:\"1\";s:17:\"has_page_settings\";s:1:\"1\";}i:256;a:14:{s:2:\"id\";s:4:\"4793\";s:5:\"title\";s:7:\"Team 18\";s:9:\"thumbnail\";s:73:\"https://library.elementor.com/wp-content/uploads/2018/03/team_white_8.png\";s:12:\"tmpl_created\";s:10:\"1520443367\";s:6:\"author\";s:9:\"Elementor\";s:3:\"url\";s:104:\"https://library.elementor.com/blocks/team-18/?utm_source=library&utm_medium=wp-dash&utm_campaign=preview\";s:4:\"type\";s:5:\"block\";s:7:\"subtype\";s:4:\"team\";s:4:\"tags\";s:8:\"[\"team\"]\";s:10:\"menu_order\";s:1:\"0\";s:16:\"popularity_index\";s:3:\"187\";s:11:\"trend_index\";s:3:\"192\";s:6:\"is_pro\";s:1:\"0\";s:17:\"has_page_settings\";s:1:\"0\";}i:257;a:14:{s:2:\"id\";s:4:\"9622\";s:5:\"title\";s:24:\"Classic | Promotion | 02\";s:9:\"thumbnail\";s:87:\"https://library.elementor.com/wp-content/uploads/2019/01/classic_promotion_small_02.png\";s:12:\"tmpl_created\";s:10:\"1546965896\";s:6:\"author\";s:9:\"Elementor\";s:3:\"url\";s:117:\"https://library.elementor.com/popups/classic-promotion-02/?utm_source=library&utm_medium=wp-dash&utm_campaign=preview\";s:4:\"type\";s:5:\"popup\";s:7:\"subtype\";s:7:\"classic\";s:4:\"tags\";s:2:\"[]\";s:10:\"menu_order\";s:1:\"0\";s:16:\"popularity_index\";s:2:\"-1\";s:11:\"trend_index\";s:2:\"-1\";s:6:\"is_pro\";s:1:\"1\";s:17:\"has_page_settings\";s:1:\"1\";}i:258;a:14:{s:2:\"id\";s:4:\"4801\";s:5:\"title\";s:7:\"Team 11\";s:9:\"thumbnail\";s:73:\"https://library.elementor.com/wp-content/uploads/2018/03/team_black_8.png\";s:12:\"tmpl_created\";s:10:\"1520443369\";s:6:\"author\";s:9:\"Elementor\";s:3:\"url\";s:104:\"https://library.elementor.com/blocks/team-11/?utm_source=library&utm_medium=wp-dash&utm_campaign=preview\";s:4:\"type\";s:5:\"block\";s:7:\"subtype\";s:4:\"team\";s:4:\"tags\";s:8:\"[\"team\"]\";s:10:\"menu_order\";s:1:\"0\";s:16:\"popularity_index\";s:3:\"328\";s:11:\"trend_index\";s:3:\"281\";s:6:\"is_pro\";s:1:\"0\";s:17:\"has_page_settings\";s:1:\"0\";}i:259;a:14:{s:2:\"id\";s:4:\"9631\";s:5:\"title\";s:20:\"Slide-in | Sale | 01\";s:9:\"thumbnail\";s:83:\"https://library.elementor.com/wp-content/uploads/2019/01/Slide-in_Sale_small_01.png\";s:12:\"tmpl_created\";s:10:\"1546968270\";s:6:\"author\";s:9:\"Elementor\";s:3:\"url\";s:113:\"https://library.elementor.com/popups/slide-in-sale-01/?utm_source=library&utm_medium=wp-dash&utm_campaign=preview\";s:4:\"type\";s:5:\"popup\";s:7:\"subtype\";s:8:\"slide-in\";s:4:\"tags\";s:2:\"[]\";s:10:\"menu_order\";s:1:\"0\";s:16:\"popularity_index\";s:2:\"-1\";s:11:\"trend_index\";s:2:\"-1\";s:6:\"is_pro\";s:1:\"1\";s:17:\"has_page_settings\";s:1:\"1\";}i:260;a:14:{s:2:\"id\";s:4:\"4809\";s:5:\"title\";s:7:\"Team 19\";s:9:\"thumbnail\";s:73:\"https://library.elementor.com/wp-content/uploads/2018/03/team_white_9.png\";s:12:\"tmpl_created\";s:10:\"1520443371\";s:6:\"author\";s:9:\"Elementor\";s:3:\"url\";s:104:\"https://library.elementor.com/blocks/team-19/?utm_source=library&utm_medium=wp-dash&utm_campaign=preview\";s:4:\"type\";s:5:\"block\";s:7:\"subtype\";s:4:\"team\";s:4:\"tags\";s:8:\"[\"team\"]\";s:10:\"menu_order\";s:1:\"0\";s:16:\"popularity_index\";s:3:\"262\";s:11:\"trend_index\";s:3:\"261\";s:6:\"is_pro\";s:1:\"0\";s:17:\"has_page_settings\";s:1:\"0\";}i:261;a:14:{s:2:\"id\";s:4:\"9640\";s:5:\"title\";s:23:\"Full-Screen | Sale | 01\";s:9:\"thumbnail\";s:86:\"https://library.elementor.com/wp-content/uploads/2019/01/Full-Screen_Sale_small_01.png\";s:12:\"tmpl_created\";s:10:\"1546968877\";s:6:\"author\";s:9:\"Elementor\";s:3:\"url\";s:116:\"https://library.elementor.com/popups/full-screen-sale-01/?utm_source=library&utm_medium=wp-dash&utm_campaign=preview\";s:4:\"type\";s:5:\"popup\";s:7:\"subtype\";s:11:\"full screen\";s:4:\"tags\";s:2:\"[]\";s:10:\"menu_order\";s:1:\"0\";s:16:\"popularity_index\";s:2:\"-1\";s:11:\"trend_index\";s:2:\"-1\";s:6:\"is_pro\";s:1:\"1\";s:17:\"has_page_settings\";s:1:\"1\";}i:262;a:14:{s:2:\"id\";s:4:\"4818\";s:5:\"title\";s:7:\"Team 21\";s:9:\"thumbnail\";s:73:\"https://library.elementor.com/wp-content/uploads/2018/03/team_black_9.png\";s:12:\"tmpl_created\";s:10:\"1520443373\";s:6:\"author\";s:9:\"Elementor\";s:3:\"url\";s:104:\"https://library.elementor.com/blocks/team-21/?utm_source=library&utm_medium=wp-dash&utm_campaign=preview\";s:4:\"type\";s:5:\"block\";s:7:\"subtype\";s:4:\"team\";s:4:\"tags\";s:8:\"[\"team\"]\";s:10:\"menu_order\";s:1:\"0\";s:16:\"popularity_index\";s:3:\"392\";s:11:\"trend_index\";s:3:\"375\";s:6:\"is_pro\";s:1:\"0\";s:17:\"has_page_settings\";s:1:\"0\";}i:263;a:14:{s:2:\"id\";s:4:\"9650\";s:5:\"title\";s:26:\"Fly-In | Register_big | 01\";s:9:\"thumbnail\";s:86:\"https://library.elementor.com/wp-content/uploads/2019/01/Fly-In_Register_small_01a.png\";s:12:\"tmpl_created\";s:10:\"1547007598\";s:6:\"author\";s:9:\"Elementor\";s:3:\"url\";s:119:\"https://library.elementor.com/popups/fly-in-register_big-01/?utm_source=library&utm_medium=wp-dash&utm_campaign=preview\";s:4:\"type\";s:5:\"popup\";s:7:\"subtype\";s:6:\"fly-in\";s:4:\"tags\";s:2:\"[]\";s:10:\"menu_order\";s:1:\"0\";s:16:\"popularity_index\";s:2:\"-1\";s:11:\"trend_index\";s:2:\"-1\";s:6:\"is_pro\";s:1:\"1\";s:17:\"has_page_settings\";s:1:\"1\";}i:264;a:14:{s:2:\"id\";s:4:\"5045\";s:5:\"title\";s:11:\"Portfolio 3\";s:9:\"thumbnail\";s:78:\"https://library.elementor.com/wp-content/uploads/2018/03/portfolio_black_2.png\";s:12:\"tmpl_created\";s:10:\"1520443423\";s:6:\"author\";s:9:\"Elementor\";s:3:\"url\";s:108:\"https://library.elementor.com/blocks/portfolio-3/?utm_source=library&utm_medium=wp-dash&utm_campaign=preview\";s:4:\"type\";s:5:\"block\";s:7:\"subtype\";s:9:\"portfolio\";s:4:\"tags\";s:13:\"[\"portfolio\"]\";s:10:\"menu_order\";s:1:\"0\";s:16:\"popularity_index\";s:3:\"425\";s:11:\"trend_index\";s:3:\"432\";s:6:\"is_pro\";s:1:\"1\";s:17:\"has_page_settings\";s:1:\"0\";}i:265;a:14:{s:2:\"id\";s:4:\"9662\";s:5:\"title\";s:26:\"Bottom Bar | Register | 01\";s:9:\"thumbnail\";s:89:\"https://library.elementor.com/wp-content/uploads/2019/01/Bottom-Bar_Register_small_01.png\";s:12:\"tmpl_created\";s:10:\"1547009087\";s:6:\"author\";s:9:\"Elementor\";s:3:\"url\";s:119:\"https://library.elementor.com/popups/bottom-bar-register-01/?utm_source=library&utm_medium=wp-dash&utm_campaign=preview\";s:4:\"type\";s:5:\"popup\";s:7:\"subtype\";s:10:\"bottom bar\";s:4:\"tags\";s:2:\"[]\";s:10:\"menu_order\";s:1:\"0\";s:16:\"popularity_index\";s:2:\"-1\";s:11:\"trend_index\";s:2:\"-1\";s:6:\"is_pro\";s:1:\"1\";s:17:\"has_page_settings\";s:1:\"1\";}i:266;a:14:{s:2:\"id\";s:4:\"5157\";s:5:\"title\";s:11:\"Subscribe 1\";s:9:\"thumbnail\";s:78:\"https://library.elementor.com/wp-content/uploads/2018/03/subscribe_white_1.png\";s:12:\"tmpl_created\";s:10:\"1520443448\";s:6:\"author\";s:9:\"Elementor\";s:3:\"url\";s:108:\"https://library.elementor.com/blocks/subscribe-1/?utm_source=library&utm_medium=wp-dash&utm_campaign=preview\";s:4:\"type\";s:5:\"block\";s:7:\"subtype\";s:9:\"subscribe\";s:4:\"tags\";s:20:\"[\"form\",\"subscribe\"]\";s:10:\"menu_order\";s:1:\"0\";s:16:\"popularity_index\";s:3:\"359\";s:11:\"trend_index\";s:3:\"406\";s:6:\"is_pro\";s:1:\"1\";s:17:\"has_page_settings\";s:1:\"0\";}i:267;a:14:{s:2:\"id\";s:4:\"9671\";s:5:\"title\";s:29:\"Hello Bar | Announcement | 01\";s:9:\"thumbnail\";s:90:\"https://library.elementor.com/wp-content/uploads/2019/01/Top-Bar_Announcement_small_01.png\";s:12:\"tmpl_created\";s:10:\"1547010259\";s:6:\"author\";s:9:\"Elementor\";s:3:\"url\";s:122:\"https://library.elementor.com/popups/hello-bar-announcement-01/?utm_source=library&utm_medium=wp-dash&utm_campaign=preview\";s:4:\"type\";s:5:\"popup\";s:7:\"subtype\";s:9:\"hello bar\";s:4:\"tags\";s:2:\"[]\";s:10:\"menu_order\";s:1:\"0\";s:16:\"popularity_index\";s:2:\"-1\";s:11:\"trend_index\";s:2:\"-1\";s:6:\"is_pro\";s:1:\"1\";s:17:\"has_page_settings\";s:1:\"1\";}i:268;a:14:{s:2:\"id\";s:4:\"5165\";s:5:\"title\";s:11:\"Subscribe 3\";s:9:\"thumbnail\";s:78:\"https://library.elementor.com/wp-content/uploads/2018/03/subscribe_black_1.png\";s:12:\"tmpl_created\";s:10:\"1520443450\";s:6:\"author\";s:9:\"Elementor\";s:3:\"url\";s:108:\"https://library.elementor.com/blocks/subscribe-3/?utm_source=library&utm_medium=wp-dash&utm_campaign=preview\";s:4:\"type\";s:5:\"block\";s:7:\"subtype\";s:9:\"subscribe\";s:4:\"tags\";s:20:\"[\"form\",\"subscribe\"]\";s:10:\"menu_order\";s:1:\"0\";s:16:\"popularity_index\";s:3:\"419\";s:11:\"trend_index\";s:3:\"385\";s:6:\"is_pro\";s:1:\"1\";s:17:\"has_page_settings\";s:1:\"0\";}i:269;a:14:{s:2:\"id\";s:4:\"9680\";s:5:\"title\";s:28:\"Slide-in | Content Lock | 01\";s:9:\"thumbnail\";s:91:\"https://library.elementor.com/wp-content/uploads/2019/01/Slide-in_Content-lock_small_01.png\";s:12:\"tmpl_created\";s:10:\"1547010967\";s:6:\"author\";s:9:\"Elementor\";s:3:\"url\";s:121:\"https://library.elementor.com/popups/slide-in-content-lock-01/?utm_source=library&utm_medium=wp-dash&utm_campaign=preview\";s:4:\"type\";s:5:\"popup\";s:7:\"subtype\";s:8:\"slide-in\";s:4:\"tags\";s:2:\"[]\";s:10:\"menu_order\";s:1:\"0\";s:16:\"popularity_index\";s:2:\"-1\";s:11:\"trend_index\";s:2:\"-1\";s:6:\"is_pro\";s:1:\"1\";s:17:\"has_page_settings\";s:1:\"1\";}i:270;a:14:{s:2:\"id\";s:4:\"5173\";s:5:\"title\";s:11:\"Subscribe 5\";s:9:\"thumbnail\";s:78:\"https://library.elementor.com/wp-content/uploads/2018/03/subscribe_white_2.png\";s:12:\"tmpl_created\";s:10:\"1520443452\";s:6:\"author\";s:9:\"Elementor\";s:3:\"url\";s:108:\"https://library.elementor.com/blocks/subscribe-5/?utm_source=library&utm_medium=wp-dash&utm_campaign=preview\";s:4:\"type\";s:5:\"block\";s:7:\"subtype\";s:9:\"subscribe\";s:4:\"tags\";s:20:\"[\"form\",\"subscribe\"]\";s:10:\"menu_order\";s:1:\"0\";s:16:\"popularity_index\";s:3:\"285\";s:11:\"trend_index\";s:3:\"259\";s:6:\"is_pro\";s:1:\"1\";s:17:\"has_page_settings\";s:1:\"0\";}i:271;a:14:{s:2:\"id\";s:4:\"9690\";s:5:\"title\";s:22:\"Classic | Contact | 01\";s:9:\"thumbnail\";s:85:\"https://library.elementor.com/wp-content/uploads/2019/01/Classic_Contact_small_01.png\";s:12:\"tmpl_created\";s:10:\"1547011716\";s:6:\"author\";s:9:\"Elementor\";s:3:\"url\";s:115:\"https://library.elementor.com/popups/classic-contact-01/?utm_source=library&utm_medium=wp-dash&utm_campaign=preview\";s:4:\"type\";s:5:\"popup\";s:7:\"subtype\";s:7:\"classic\";s:4:\"tags\";s:2:\"[]\";s:10:\"menu_order\";s:1:\"0\";s:16:\"popularity_index\";s:2:\"-1\";s:11:\"trend_index\";s:2:\"-1\";s:6:\"is_pro\";s:1:\"1\";s:17:\"has_page_settings\";s:1:\"1\";}i:272;a:14:{s:2:\"id\";s:4:\"5181\";s:5:\"title\";s:11:\"Subscribe 2\";s:9:\"thumbnail\";s:78:\"https://library.elementor.com/wp-content/uploads/2018/03/subscribe_black_2.png\";s:12:\"tmpl_created\";s:10:\"1520443454\";s:6:\"author\";s:9:\"Elementor\";s:3:\"url\";s:110:\"https://library.elementor.com/blocks/subscribe-2-2/?utm_source=library&utm_medium=wp-dash&utm_campaign=preview\";s:4:\"type\";s:5:\"block\";s:7:\"subtype\";s:9:\"subscribe\";s:4:\"tags\";s:20:\"[\"form\",\"subscribe\"]\";s:10:\"menu_order\";s:1:\"0\";s:16:\"popularity_index\";s:3:\"393\";s:11:\"trend_index\";s:3:\"338\";s:6:\"is_pro\";s:1:\"1\";s:17:\"has_page_settings\";s:1:\"0\";}i:273;a:14:{s:2:\"id\";s:4:\"9699\";s:5:\"title\";s:22:\"Classic | Contact | 02\";s:9:\"thumbnail\";s:85:\"https://library.elementor.com/wp-content/uploads/2019/01/Classic_Contact_small_02.png\";s:12:\"tmpl_created\";s:10:\"1547015827\";s:6:\"author\";s:9:\"Elementor\";s:3:\"url\";s:115:\"https://library.elementor.com/popups/classic-contact-02/?utm_source=library&utm_medium=wp-dash&utm_campaign=preview\";s:4:\"type\";s:5:\"popup\";s:7:\"subtype\";s:7:\"classic\";s:4:\"tags\";s:2:\"[]\";s:10:\"menu_order\";s:1:\"0\";s:16:\"popularity_index\";s:2:\"-1\";s:11:\"trend_index\";s:2:\"-1\";s:6:\"is_pro\";s:1:\"1\";s:17:\"has_page_settings\";s:1:\"1\";}i:274;a:14:{s:2:\"id\";s:4:\"5189\";s:5:\"title\";s:6:\"CTA 29\";s:9:\"thumbnail\";s:73:\"https://library.elementor.com/wp-content/uploads/2018/03/form_white_1.png\";s:12:\"tmpl_created\";s:10:\"1520443456\";s:6:\"author\";s:9:\"Elementor\";s:3:\"url\";s:103:\"https://library.elementor.com/blocks/cta-29/?utm_source=library&utm_medium=wp-dash&utm_campaign=preview\";s:4:\"type\";s:5:\"block\";s:7:\"subtype\";s:14:\"call to action\";s:4:\"tags\";s:8:\"[\"form\"]\";s:10:\"menu_order\";s:1:\"0\";s:16:\"popularity_index\";s:3:\"381\";s:11:\"trend_index\";s:3:\"363\";s:6:\"is_pro\";s:1:\"1\";s:17:\"has_page_settings\";s:1:\"0\";}i:275;a:14:{s:2:\"id\";s:4:\"5198\";s:5:\"title\";s:6:\"CTA 30\";s:9:\"thumbnail\";s:73:\"https://library.elementor.com/wp-content/uploads/2018/03/form_black_1.png\";s:12:\"tmpl_created\";s:10:\"1520443458\";s:6:\"author\";s:9:\"Elementor\";s:3:\"url\";s:103:\"https://library.elementor.com/blocks/cta-30/?utm_source=library&utm_medium=wp-dash&utm_campaign=preview\";s:4:\"type\";s:5:\"block\";s:7:\"subtype\";s:14:\"call to action\";s:4:\"tags\";s:8:\"[\"form\"]\";s:10:\"menu_order\";s:1:\"0\";s:16:\"popularity_index\";s:3:\"413\";s:11:\"trend_index\";s:3:\"377\";s:6:\"is_pro\";s:1:\"1\";s:17:\"has_page_settings\";s:1:\"0\";}i:276;a:14:{s:2:\"id\";s:4:\"5206\";s:5:\"title\";s:6:\"CTA 31\";s:9:\"thumbnail\";s:73:\"https://library.elementor.com/wp-content/uploads/2018/03/form_black_2.png\";s:12:\"tmpl_created\";s:10:\"1520443459\";s:6:\"author\";s:9:\"Elementor\";s:3:\"url\";s:103:\"https://library.elementor.com/blocks/cta-31/?utm_source=library&utm_medium=wp-dash&utm_campaign=preview\";s:4:\"type\";s:5:\"block\";s:7:\"subtype\";s:14:\"call to action\";s:4:\"tags\";s:8:\"[\"form\"]\";s:10:\"menu_order\";s:1:\"0\";s:16:\"popularity_index\";s:3:\"423\";s:11:\"trend_index\";s:3:\"418\";s:6:\"is_pro\";s:1:\"1\";s:17:\"has_page_settings\";s:1:\"0\";}i:277;a:14:{s:2:\"id\";s:4:\"5214\";s:5:\"title\";s:10:\"Contact 16\";s:9:\"thumbnail\";s:73:\"https://library.elementor.com/wp-content/uploads/2018/03/form_white_2.png\";s:12:\"tmpl_created\";s:10:\"1520443462\";s:6:\"author\";s:9:\"Elementor\";s:3:\"url\";s:109:\"https://library.elementor.com/blocks/contact-16-2/?utm_source=library&utm_medium=wp-dash&utm_campaign=preview\";s:4:\"type\";s:5:\"block\";s:7:\"subtype\";s:7:\"contact\";s:4:\"tags\";s:18:\"[\"contact\",\"form\"]\";s:10:\"menu_order\";s:1:\"0\";s:16:\"popularity_index\";s:3:\"197\";s:11:\"trend_index\";s:3:\"228\";s:6:\"is_pro\";s:1:\"1\";s:17:\"has_page_settings\";s:1:\"0\";}i:278;a:14:{s:2:\"id\";s:4:\"5222\";s:5:\"title\";s:11:\"Subscribe 4\";s:9:\"thumbnail\";s:78:\"https://library.elementor.com/wp-content/uploads/2018/03/subscribe_black_3.png\";s:12:\"tmpl_created\";s:10:\"1520443464\";s:6:\"author\";s:9:\"Elementor\";s:3:\"url\";s:108:\"https://library.elementor.com/blocks/subscribe-4/?utm_source=library&utm_medium=wp-dash&utm_campaign=preview\";s:4:\"type\";s:5:\"block\";s:7:\"subtype\";s:9:\"subscribe\";s:4:\"tags\";s:20:\"[\"form\",\"subscribe\"]\";s:10:\"menu_order\";s:1:\"0\";s:16:\"popularity_index\";s:3:\"383\";s:11:\"trend_index\";s:3:\"358\";s:6:\"is_pro\";s:1:\"1\";s:17:\"has_page_settings\";s:1:\"0\";}i:279;a:14:{s:2:\"id\";s:4:\"5230\";s:5:\"title\";s:10:\"Contact 17\";s:9:\"thumbnail\";s:73:\"https://library.elementor.com/wp-content/uploads/2018/03/form_white_3.png\";s:12:\"tmpl_created\";s:10:\"1520443466\";s:6:\"author\";s:9:\"Elementor\";s:3:\"url\";s:107:\"https://library.elementor.com/blocks/contact-17/?utm_source=library&utm_medium=wp-dash&utm_campaign=preview\";s:4:\"type\";s:5:\"block\";s:7:\"subtype\";s:7:\"contact\";s:4:\"tags\";s:18:\"[\"contact\",\"form\"]\";s:10:\"menu_order\";s:1:\"0\";s:16:\"popularity_index\";s:3:\"325\";s:11:\"trend_index\";s:3:\"314\";s:6:\"is_pro\";s:1:\"1\";s:17:\"has_page_settings\";s:1:\"0\";}i:280;a:14:{s:2:\"id\";s:4:\"5238\";s:5:\"title\";s:7:\"Hero 12\";s:9:\"thumbnail\";s:73:\"https://library.elementor.com/wp-content/uploads/2018/03/form_white_4.png\";s:12:\"tmpl_created\";s:10:\"1520443468\";s:6:\"author\";s:9:\"Elementor\";s:3:\"url\";s:104:\"https://library.elementor.com/blocks/hero-12/?utm_source=library&utm_medium=wp-dash&utm_campaign=preview\";s:4:\"type\";s:5:\"block\";s:7:\"subtype\";s:4:\"hero\";s:4:\"tags\";s:8:\"[\"hero\"]\";s:10:\"menu_order\";s:1:\"0\";s:16:\"popularity_index\";s:3:\"428\";s:11:\"trend_index\";s:3:\"411\";s:6:\"is_pro\";s:1:\"1\";s:17:\"has_page_settings\";s:1:\"0\";}i:281;a:14:{s:2:\"id\";s:4:\"5249\";s:5:\"title\";s:6:\"CTA 32\";s:9:\"thumbnail\";s:73:\"https://library.elementor.com/wp-content/uploads/2018/03/form_black_4.png\";s:12:\"tmpl_created\";s:10:\"1520443470\";s:6:\"author\";s:9:\"Elementor\";s:3:\"url\";s:103:\"https://library.elementor.com/blocks/cta-32/?utm_source=library&utm_medium=wp-dash&utm_campaign=preview\";s:4:\"type\";s:5:\"block\";s:7:\"subtype\";s:14:\"call to action\";s:4:\"tags\";s:8:\"[\"form\"]\";s:10:\"menu_order\";s:1:\"0\";s:16:\"popularity_index\";s:3:\"407\";s:11:\"trend_index\";s:3:\"413\";s:6:\"is_pro\";s:1:\"1\";s:17:\"has_page_settings\";s:1:\"0\";}i:282;a:14:{s:2:\"id\";s:4:\"5257\";s:5:\"title\";s:10:\"Contact 18\";s:9:\"thumbnail\";s:73:\"https://library.elementor.com/wp-content/uploads/2018/03/form_white_5.png\";s:12:\"tmpl_created\";s:10:\"1520443472\";s:6:\"author\";s:9:\"Elementor\";s:3:\"url\";s:107:\"https://library.elementor.com/blocks/contact-18/?utm_source=library&utm_medium=wp-dash&utm_campaign=preview\";s:4:\"type\";s:5:\"block\";s:7:\"subtype\";s:7:\"contact\";s:4:\"tags\";s:8:\"[\"form\"]\";s:10:\"menu_order\";s:1:\"0\";s:16:\"popularity_index\";s:3:\"380\";s:11:\"trend_index\";s:3:\"386\";s:6:\"is_pro\";s:1:\"1\";s:17:\"has_page_settings\";s:1:\"0\";}i:283;a:14:{s:2:\"id\";s:4:\"5266\";s:5:\"title\";s:9:\"Clients 4\";s:9:\"thumbnail\";s:76:\"https://library.elementor.com/wp-content/uploads/2018/03/clients_white_1.png\";s:12:\"tmpl_created\";s:10:\"1520443474\";s:6:\"author\";s:9:\"Elementor\";s:3:\"url\";s:106:\"https://library.elementor.com/blocks/clients-4/?utm_source=library&utm_medium=wp-dash&utm_campaign=preview\";s:4:\"type\";s:5:\"block\";s:7:\"subtype\";s:7:\"clients\";s:4:\"tags\";s:11:\"[\"clients\"]\";s:10:\"menu_order\";s:1:\"0\";s:16:\"popularity_index\";s:3:\"125\";s:11:\"trend_index\";s:3:\"115\";s:6:\"is_pro\";s:1:\"0\";s:17:\"has_page_settings\";s:1:\"0\";}i:284;a:14:{s:2:\"id\";s:4:\"5275\";s:5:\"title\";s:9:\"Clients 5\";s:9:\"thumbnail\";s:76:\"https://library.elementor.com/wp-content/uploads/2018/03/clients_black_1.png\";s:12:\"tmpl_created\";s:10:\"1520443476\";s:6:\"author\";s:9:\"Elementor\";s:3:\"url\";s:106:\"https://library.elementor.com/blocks/clients-5/?utm_source=library&utm_medium=wp-dash&utm_campaign=preview\";s:4:\"type\";s:5:\"block\";s:7:\"subtype\";s:7:\"clients\";s:4:\"tags\";s:11:\"[\"clients\"]\";s:10:\"menu_order\";s:1:\"0\";s:16:\"popularity_index\";s:3:\"336\";s:11:\"trend_index\";s:3:\"283\";s:6:\"is_pro\";s:1:\"0\";s:17:\"has_page_settings\";s:1:\"0\";}i:285;a:14:{s:2:\"id\";s:4:\"5283\";s:5:\"title\";s:9:\"Clients 1\";s:9:\"thumbnail\";s:76:\"https://library.elementor.com/wp-content/uploads/2018/03/clients_white_2.png\";s:12:\"tmpl_created\";s:10:\"1520443478\";s:6:\"author\";s:9:\"Elementor\";s:3:\"url\";s:108:\"https://library.elementor.com/blocks/clients-1-2/?utm_source=library&utm_medium=wp-dash&utm_campaign=preview\";s:4:\"type\";s:5:\"block\";s:7:\"subtype\";s:7:\"clients\";s:4:\"tags\";s:11:\"[\"clients\"]\";s:10:\"menu_order\";s:1:\"0\";s:16:\"popularity_index\";s:3:\"308\";s:11:\"trend_index\";s:3:\"241\";s:6:\"is_pro\";s:1:\"1\";s:17:\"has_page_settings\";s:1:\"0\";}i:286;a:14:{s:2:\"id\";s:4:\"5290\";s:5:\"title\";s:9:\"Clients 3\";s:9:\"thumbnail\";s:76:\"https://library.elementor.com/wp-content/uploads/2018/03/clients_black_2.png\";s:12:\"tmpl_created\";s:10:\"1520443480\";s:6:\"author\";s:9:\"Elementor\";s:3:\"url\";s:108:\"https://library.elementor.com/blocks/clients-3-2/?utm_source=library&utm_medium=wp-dash&utm_campaign=preview\";s:4:\"type\";s:5:\"block\";s:7:\"subtype\";s:7:\"clients\";s:4:\"tags\";s:11:\"[\"clients\"]\";s:10:\"menu_order\";s:1:\"0\";s:16:\"popularity_index\";s:3:\"416\";s:11:\"trend_index\";s:3:\"417\";s:6:\"is_pro\";s:1:\"1\";s:17:\"has_page_settings\";s:1:\"0\";}i:287;a:14:{s:2:\"id\";s:4:\"5298\";s:5:\"title\";s:10:\"Clients 15\";s:9:\"thumbnail\";s:76:\"https://library.elementor.com/wp-content/uploads/2018/03/clients_white_3.png\";s:12:\"tmpl_created\";s:10:\"1520443482\";s:6:\"author\";s:9:\"Elementor\";s:3:\"url\";s:107:\"https://library.elementor.com/blocks/clients-15/?utm_source=library&utm_medium=wp-dash&utm_campaign=preview\";s:4:\"type\";s:5:\"block\";s:7:\"subtype\";s:7:\"clients\";s:4:\"tags\";s:11:\"[\"clients\"]\";s:10:\"menu_order\";s:1:\"0\";s:16:\"popularity_index\";s:3:\"385\";s:11:\"trend_index\";s:3:\"365\";s:6:\"is_pro\";s:1:\"1\";s:17:\"has_page_settings\";s:1:\"0\";}i:288;a:14:{s:2:\"id\";s:4:\"5306\";s:5:\"title\";s:10:\"Clients 10\";s:9:\"thumbnail\";s:76:\"https://library.elementor.com/wp-content/uploads/2018/03/clients_black_3.png\";s:12:\"tmpl_created\";s:10:\"1520443484\";s:6:\"author\";s:9:\"Elementor\";s:3:\"url\";s:107:\"https://library.elementor.com/blocks/clients-10/?utm_source=library&utm_medium=wp-dash&utm_campaign=preview\";s:4:\"type\";s:5:\"block\";s:7:\"subtype\";s:7:\"clients\";s:4:\"tags\";s:11:\"[\"clients\"]\";s:10:\"menu_order\";s:1:\"0\";s:16:\"popularity_index\";s:3:\"432\";s:11:\"trend_index\";s:1:\"0\";s:6:\"is_pro\";s:1:\"1\";s:17:\"has_page_settings\";s:1:\"0\";}i:289;a:14:{s:2:\"id\";s:4:\"5315\";s:5:\"title\";s:10:\"Clients 12\";s:9:\"thumbnail\";s:75:\"https://library.elementor.com/wp-content/uploads/2018/03/form_white_4-1.png\";s:12:\"tmpl_created\";s:10:\"1520443486\";s:6:\"author\";s:9:\"Elementor\";s:3:\"url\";s:107:\"https://library.elementor.com/blocks/clients-12/?utm_source=library&utm_medium=wp-dash&utm_campaign=preview\";s:4:\"type\";s:5:\"block\";s:7:\"subtype\";s:7:\"clients\";s:4:\"tags\";s:11:\"[\"clients\"]\";s:10:\"menu_order\";s:1:\"0\";s:16:\"popularity_index\";s:3:\"398\";s:11:\"trend_index\";s:3:\"409\";s:6:\"is_pro\";s:1:\"1\";s:17:\"has_page_settings\";s:1:\"0\";}i:290;a:14:{s:2:\"id\";s:4:\"5324\";s:5:\"title\";s:9:\"Clients 8\";s:9:\"thumbnail\";s:75:\"https://library.elementor.com/wp-content/uploads/2018/03/form_white_5-1.png\";s:12:\"tmpl_created\";s:10:\"1520443488\";s:6:\"author\";s:9:\"Elementor\";s:3:\"url\";s:106:\"https://library.elementor.com/blocks/clients-8/?utm_source=library&utm_medium=wp-dash&utm_campaign=preview\";s:4:\"type\";s:5:\"block\";s:7:\"subtype\";s:7:\"clients\";s:4:\"tags\";s:11:\"[\"clients\"]\";s:10:\"menu_order\";s:1:\"0\";s:16:\"popularity_index\";s:3:\"409\";s:11:\"trend_index\";s:3:\"402\";s:6:\"is_pro\";s:1:\"1\";s:17:\"has_page_settings\";s:1:\"0\";}i:291;a:14:{s:2:\"id\";s:4:\"5333\";s:5:\"title\";s:10:\"Clients 13\";s:9:\"thumbnail\";s:73:\"https://library.elementor.com/wp-content/uploads/2018/03/form_white_6.png\";s:12:\"tmpl_created\";s:10:\"1520443489\";s:6:\"author\";s:9:\"Elementor\";s:3:\"url\";s:107:\"https://library.elementor.com/blocks/clients-13/?utm_source=library&utm_medium=wp-dash&utm_campaign=preview\";s:4:\"type\";s:5:\"block\";s:7:\"subtype\";s:7:\"clients\";s:4:\"tags\";s:11:\"[\"clients\"]\";s:10:\"menu_order\";s:1:\"0\";s:16:\"popularity_index\";s:3:\"235\";s:11:\"trend_index\";s:3:\"186\";s:6:\"is_pro\";s:1:\"0\";s:17:\"has_page_settings\";s:1:\"0\";}i:292;a:14:{s:2:\"id\";s:4:\"5341\";s:5:\"title\";s:10:\"Clients 11\";s:9:\"thumbnail\";s:76:\"https://library.elementor.com/wp-content/uploads/2018/03/clients_black_4.png\";s:12:\"tmpl_created\";s:10:\"1520443491\";s:6:\"author\";s:9:\"Elementor\";s:3:\"url\";s:107:\"https://library.elementor.com/blocks/clients-11/?utm_source=library&utm_medium=wp-dash&utm_campaign=preview\";s:4:\"type\";s:5:\"block\";s:7:\"subtype\";s:7:\"clients\";s:4:\"tags\";s:11:\"[\"clients\"]\";s:10:\"menu_order\";s:1:\"0\";s:16:\"popularity_index\";s:3:\"424\";s:11:\"trend_index\";s:3:\"426\";s:6:\"is_pro\";s:1:\"0\";s:17:\"has_page_settings\";s:1:\"0\";}i:293;a:14:{s:2:\"id\";s:4:\"5349\";s:5:\"title\";s:9:\"Clients 7\";s:9:\"thumbnail\";s:73:\"https://library.elementor.com/wp-content/uploads/2018/03/form_white_7.png\";s:12:\"tmpl_created\";s:10:\"1520443493\";s:6:\"author\";s:9:\"Elementor\";s:3:\"url\";s:106:\"https://library.elementor.com/blocks/clients-7/?utm_source=library&utm_medium=wp-dash&utm_campaign=preview\";s:4:\"type\";s:5:\"block\";s:7:\"subtype\";s:7:\"clients\";s:4:\"tags\";s:11:\"[\"clients\"]\";s:10:\"menu_order\";s:1:\"0\";s:16:\"popularity_index\";s:3:\"228\";s:11:\"trend_index\";s:3:\"316\";s:6:\"is_pro\";s:1:\"0\";s:17:\"has_page_settings\";s:1:\"0\";}i:294;a:14:{s:2:\"id\";s:4:\"5357\";s:5:\"title\";s:9:\"Clients 2\";s:9:\"thumbnail\";s:76:\"https://library.elementor.com/wp-content/uploads/2018/03/clients_black_7.png\";s:12:\"tmpl_created\";s:10:\"1520443495\";s:6:\"author\";s:9:\"Elementor\";s:3:\"url\";s:108:\"https://library.elementor.com/blocks/clients-2-2/?utm_source=library&utm_medium=wp-dash&utm_campaign=preview\";s:4:\"type\";s:5:\"block\";s:7:\"subtype\";s:7:\"clients\";s:4:\"tags\";s:11:\"[\"clients\"]\";s:10:\"menu_order\";s:1:\"0\";s:16:\"popularity_index\";s:3:\"312\";s:11:\"trend_index\";s:3:\"276\";s:6:\"is_pro\";s:1:\"0\";s:17:\"has_page_settings\";s:1:\"0\";}i:295;a:14:{s:2:\"id\";s:4:\"5368\";s:5:\"title\";s:9:\"Clients 9\";s:9:\"thumbnail\";s:73:\"https://library.elementor.com/wp-content/uploads/2018/03/form_white_8.png\";s:12:\"tmpl_created\";s:10:\"1520443497\";s:6:\"author\";s:9:\"Elementor\";s:3:\"url\";s:106:\"https://library.elementor.com/blocks/clients-9/?utm_source=library&utm_medium=wp-dash&utm_campaign=preview\";s:4:\"type\";s:5:\"block\";s:7:\"subtype\";s:7:\"clients\";s:4:\"tags\";s:11:\"[\"clients\"]\";s:10:\"menu_order\";s:1:\"0\";s:16:\"popularity_index\";s:3:\"218\";s:11:\"trend_index\";s:3:\"239\";s:6:\"is_pro\";s:1:\"0\";s:17:\"has_page_settings\";s:1:\"0\";}i:296;a:14:{s:2:\"id\";s:4:\"5381\";s:5:\"title\";s:10:\"Clients 16\";s:9:\"thumbnail\";s:73:\"https://library.elementor.com/wp-content/uploads/2018/03/form_white_9.png\";s:12:\"tmpl_created\";s:10:\"1520443499\";s:6:\"author\";s:9:\"Elementor\";s:3:\"url\";s:107:\"https://library.elementor.com/blocks/clients-16/?utm_source=library&utm_medium=wp-dash&utm_campaign=preview\";s:4:\"type\";s:5:\"block\";s:7:\"subtype\";s:7:\"clients\";s:4:\"tags\";s:11:\"[\"clients\"]\";s:10:\"menu_order\";s:1:\"0\";s:16:\"popularity_index\";s:3:\"177\";s:11:\"trend_index\";s:3:\"201\";s:6:\"is_pro\";s:1:\"0\";s:17:\"has_page_settings\";s:1:\"0\";}i:297;a:14:{s:2:\"id\";s:4:\"5389\";s:5:\"title\";s:10:\"Clients 14\";s:9:\"thumbnail\";s:73:\"https://library.elementor.com/wp-content/uploads/2018/03/form_black_9.png\";s:12:\"tmpl_created\";s:10:\"1520443501\";s:6:\"author\";s:9:\"Elementor\";s:3:\"url\";s:107:\"https://library.elementor.com/blocks/clients-14/?utm_source=library&utm_medium=wp-dash&utm_campaign=preview\";s:4:\"type\";s:5:\"block\";s:7:\"subtype\";s:7:\"clients\";s:4:\"tags\";s:11:\"[\"clients\"]\";s:10:\"menu_order\";s:1:\"0\";s:16:\"popularity_index\";s:3:\"372\";s:11:\"trend_index\";s:3:\"292\";s:6:\"is_pro\";s:1:\"0\";s:17:\"has_page_settings\";s:1:\"0\";}i:298;a:14:{s:2:\"id\";s:4:\"5397\";s:5:\"title\";s:8:\"About 11\";s:9:\"thumbnail\";s:74:\"https://library.elementor.com/wp-content/uploads/2018/03/about_white_1.png\";s:12:\"tmpl_created\";s:10:\"1520443503\";s:6:\"author\";s:9:\"Elementor\";s:3:\"url\";s:105:\"https://library.elementor.com/blocks/about-11/?utm_source=library&utm_medium=wp-dash&utm_campaign=preview\";s:4:\"type\";s:5:\"block\";s:7:\"subtype\";s:5:\"about\";s:4:\"tags\";s:9:\"[\"About\"]\";s:10:\"menu_order\";s:1:\"0\";s:16:\"popularity_index\";s:3:\"139\";s:11:\"trend_index\";s:3:\"178\";s:6:\"is_pro\";s:1:\"0\";s:17:\"has_page_settings\";s:1:\"0\";}i:299;a:14:{s:2:\"id\";s:4:\"5405\";s:5:\"title\";s:8:\"About 12\";s:9:\"thumbnail\";s:74:\"https://library.elementor.com/wp-content/uploads/2018/03/about_black_1.png\";s:12:\"tmpl_created\";s:10:\"1520443505\";s:6:\"author\";s:9:\"Elementor\";s:3:\"url\";s:105:\"https://library.elementor.com/blocks/about-12/?utm_source=library&utm_medium=wp-dash&utm_campaign=preview\";s:4:\"type\";s:5:\"block\";s:7:\"subtype\";s:5:\"about\";s:4:\"tags\";s:9:\"[\"About\"]\";s:10:\"menu_order\";s:1:\"0\";s:16:\"popularity_index\";s:3:\"211\";s:11:\"trend_index\";s:3:\"266\";s:6:\"is_pro\";s:1:\"0\";s:17:\"has_page_settings\";s:1:\"0\";}i:300;a:14:{s:2:\"id\";s:4:\"5413\";s:5:\"title\";s:8:\"About 21\";s:9:\"thumbnail\";s:74:\"https://library.elementor.com/wp-content/uploads/2018/03/about_white_2.png\";s:12:\"tmpl_created\";s:10:\"1520443507\";s:6:\"author\";s:9:\"Elementor\";s:3:\"url\";s:105:\"https://library.elementor.com/blocks/about-21/?utm_source=library&utm_medium=wp-dash&utm_campaign=preview\";s:4:\"type\";s:5:\"block\";s:7:\"subtype\";s:5:\"about\";s:4:\"tags\";s:9:\"[\"About\"]\";s:10:\"menu_order\";s:1:\"0\";s:16:\"popularity_index\";s:3:\"134\";s:11:\"trend_index\";s:3:\"153\";s:6:\"is_pro\";s:1:\"0\";s:17:\"has_page_settings\";s:1:\"0\";}i:301;a:14:{s:2:\"id\";s:4:\"5421\";s:5:\"title\";s:8:\"About 13\";s:9:\"thumbnail\";s:74:\"https://library.elementor.com/wp-content/uploads/2018/03/about_white_3.png\";s:12:\"tmpl_created\";s:10:\"1520443509\";s:6:\"author\";s:9:\"Elementor\";s:3:\"url\";s:105:\"https://library.elementor.com/blocks/about-13/?utm_source=library&utm_medium=wp-dash&utm_campaign=preview\";s:4:\"type\";s:5:\"block\";s:7:\"subtype\";s:5:\"about\";s:4:\"tags\";s:9:\"[\"About\"]\";s:10:\"menu_order\";s:1:\"0\";s:16:\"popularity_index\";s:3:\"246\";s:11:\"trend_index\";s:3:\"234\";s:6:\"is_pro\";s:1:\"0\";s:17:\"has_page_settings\";s:1:\"0\";}i:302;a:14:{s:2:\"id\";s:4:\"5429\";s:5:\"title\";s:8:\"About 16\";s:9:\"thumbnail\";s:74:\"https://library.elementor.com/wp-content/uploads/2018/03/about_white_4.png\";s:12:\"tmpl_created\";s:10:\"1520443510\";s:6:\"author\";s:9:\"Elementor\";s:3:\"url\";s:105:\"https://library.elementor.com/blocks/about-16/?utm_source=library&utm_medium=wp-dash&utm_campaign=preview\";s:4:\"type\";s:5:\"block\";s:7:\"subtype\";s:5:\"about\";s:4:\"tags\";s:9:\"[\"About\"]\";s:10:\"menu_order\";s:1:\"0\";s:16:\"popularity_index\";s:3:\"103\";s:11:\"trend_index\";s:2:\"78\";s:6:\"is_pro\";s:1:\"0\";s:17:\"has_page_settings\";s:1:\"0\";}i:303;a:14:{s:2:\"id\";s:4:\"5438\";s:5:\"title\";s:7:\"About 1\";s:9:\"thumbnail\";s:74:\"https://library.elementor.com/wp-content/uploads/2018/03/about_black_4.png\";s:12:\"tmpl_created\";s:10:\"1520443512\";s:6:\"author\";s:9:\"Elementor\";s:3:\"url\";s:104:\"https://library.elementor.com/blocks/about-1/?utm_source=library&utm_medium=wp-dash&utm_campaign=preview\";s:4:\"type\";s:5:\"block\";s:7:\"subtype\";s:5:\"about\";s:4:\"tags\";s:9:\"[\"About\"]\";s:10:\"menu_order\";s:1:\"0\";s:16:\"popularity_index\";s:3:\"207\";s:11:\"trend_index\";s:3:\"255\";s:6:\"is_pro\";s:1:\"0\";s:17:\"has_page_settings\";s:1:\"0\";}i:304;a:14:{s:2:\"id\";s:4:\"5447\";s:5:\"title\";s:7:\"About 3\";s:9:\"thumbnail\";s:74:\"https://library.elementor.com/wp-content/uploads/2018/03/about_white_5.png\";s:12:\"tmpl_created\";s:10:\"1520443514\";s:6:\"author\";s:9:\"Elementor\";s:3:\"url\";s:106:\"https://library.elementor.com/blocks/about-3-2/?utm_source=library&utm_medium=wp-dash&utm_campaign=preview\";s:4:\"type\";s:5:\"block\";s:7:\"subtype\";s:5:\"about\";s:4:\"tags\";s:9:\"[\"About\"]\";s:10:\"menu_order\";s:1:\"0\";s:16:\"popularity_index\";s:2:\"70\";s:11:\"trend_index\";s:2:\"51\";s:6:\"is_pro\";s:1:\"0\";s:17:\"has_page_settings\";s:1:\"0\";}i:305;a:14:{s:2:\"id\";s:4:\"5455\";s:5:\"title\";s:8:\"About 20\";s:9:\"thumbnail\";s:74:\"https://library.elementor.com/wp-content/uploads/2018/03/about_white_6.png\";s:12:\"tmpl_created\";s:10:\"1520443516\";s:6:\"author\";s:9:\"Elementor\";s:3:\"url\";s:105:\"https://library.elementor.com/blocks/about-20/?utm_source=library&utm_medium=wp-dash&utm_campaign=preview\";s:4:\"type\";s:5:\"block\";s:7:\"subtype\";s:5:\"about\";s:4:\"tags\";s:9:\"[\"About\"]\";s:10:\"menu_order\";s:1:\"0\";s:16:\"popularity_index\";s:3:\"127\";s:11:\"trend_index\";s:3:\"155\";s:6:\"is_pro\";s:1:\"0\";s:17:\"has_page_settings\";s:1:\"0\";}i:306;a:14:{s:2:\"id\";s:4:\"5464\";s:5:\"title\";s:8:\"About 17\";s:9:\"thumbnail\";s:74:\"https://library.elementor.com/wp-content/uploads/2018/03/about_black_6.png\";s:12:\"tmpl_created\";s:10:\"1520443518\";s:6:\"author\";s:9:\"Elementor\";s:3:\"url\";s:105:\"https://library.elementor.com/blocks/about-17/?utm_source=library&utm_medium=wp-dash&utm_campaign=preview\";s:4:\"type\";s:5:\"block\";s:7:\"subtype\";s:5:\"about\";s:4:\"tags\";s:9:\"[\"About\"]\";s:10:\"menu_order\";s:1:\"0\";s:16:\"popularity_index\";s:3:\"221\";s:11:\"trend_index\";s:3:\"208\";s:6:\"is_pro\";s:1:\"0\";s:17:\"has_page_settings\";s:1:\"0\";}i:307;a:14:{s:2:\"id\";s:4:\"5472\";s:5:\"title\";s:7:\"About 2\";s:9:\"thumbnail\";s:74:\"https://library.elementor.com/wp-content/uploads/2018/03/about_white_7.png\";s:12:\"tmpl_created\";s:10:\"1520443520\";s:6:\"author\";s:9:\"Elementor\";s:3:\"url\";s:104:\"https://library.elementor.com/blocks/about-2/?utm_source=library&utm_medium=wp-dash&utm_campaign=preview\";s:4:\"type\";s:5:\"block\";s:7:\"subtype\";s:5:\"about\";s:4:\"tags\";s:9:\"[\"About\"]\";s:10:\"menu_order\";s:1:\"0\";s:16:\"popularity_index\";s:3:\"186\";s:11:\"trend_index\";s:3:\"218\";s:6:\"is_pro\";s:1:\"0\";s:17:\"has_page_settings\";s:1:\"0\";}i:308;a:14:{s:2:\"id\";s:4:\"5480\";s:5:\"title\";s:7:\"About 4\";s:9:\"thumbnail\";s:76:\"https://library.elementor.com/wp-content/uploads/2018/03/about_black_7-1.png\";s:12:\"tmpl_created\";s:10:\"1520443522\";s:6:\"author\";s:9:\"Elementor\";s:3:\"url\";s:106:\"https://library.elementor.com/blocks/about-4-2/?utm_source=library&utm_medium=wp-dash&utm_campaign=preview\";s:4:\"type\";s:5:\"block\";s:7:\"subtype\";s:5:\"about\";s:4:\"tags\";s:9:\"[\"About\"]\";s:10:\"menu_order\";s:1:\"0\";s:16:\"popularity_index\";s:3:\"378\";s:11:\"trend_index\";s:3:\"346\";s:6:\"is_pro\";s:1:\"0\";s:17:\"has_page_settings\";s:1:\"0\";}i:309;a:14:{s:2:\"id\";s:4:\"5488\";s:5:\"title\";s:7:\"About 7\";s:9:\"thumbnail\";s:74:\"https://library.elementor.com/wp-content/uploads/2018/03/about_white_8.png\";s:12:\"tmpl_created\";s:10:\"1520443524\";s:6:\"author\";s:9:\"Elementor\";s:3:\"url\";s:104:\"https://library.elementor.com/blocks/about-7/?utm_source=library&utm_medium=wp-dash&utm_campaign=preview\";s:4:\"type\";s:5:\"block\";s:7:\"subtype\";s:5:\"about\";s:4:\"tags\";s:9:\"[\"About\"]\";s:10:\"menu_order\";s:1:\"0\";s:16:\"popularity_index\";s:3:\"300\";s:11:\"trend_index\";s:3:\"243\";s:6:\"is_pro\";s:1:\"0\";s:17:\"has_page_settings\";s:1:\"0\";}i:310;a:14:{s:2:\"id\";s:4:\"5496\";s:5:\"title\";s:7:\"About 9\";s:9:\"thumbnail\";s:76:\"https://library.elementor.com/wp-content/uploads/2018/03/about_black_8-1.png\";s:12:\"tmpl_created\";s:10:\"1520443526\";s:6:\"author\";s:9:\"Elementor\";s:3:\"url\";s:104:\"https://library.elementor.com/blocks/about-9/?utm_source=library&utm_medium=wp-dash&utm_campaign=preview\";s:4:\"type\";s:5:\"block\";s:7:\"subtype\";s:5:\"about\";s:4:\"tags\";s:9:\"[\"About\"]\";s:10:\"menu_order\";s:1:\"0\";s:16:\"popularity_index\";s:3:\"412\";s:11:\"trend_index\";s:3:\"367\";s:6:\"is_pro\";s:1:\"0\";s:17:\"has_page_settings\";s:1:\"0\";}i:311;a:14:{s:2:\"id\";s:4:\"5504\";s:5:\"title\";s:8:\"About 18\";s:9:\"thumbnail\";s:74:\"https://library.elementor.com/wp-content/uploads/2018/03/about_white_9.png\";s:12:\"tmpl_created\";s:10:\"1520443528\";s:6:\"author\";s:9:\"Elementor\";s:3:\"url\";s:105:\"https://library.elementor.com/blocks/about-18/?utm_source=library&utm_medium=wp-dash&utm_campaign=preview\";s:4:\"type\";s:5:\"block\";s:7:\"subtype\";s:5:\"about\";s:4:\"tags\";s:9:\"[\"About\"]\";s:10:\"menu_order\";s:1:\"0\";s:16:\"popularity_index\";s:2:\"87\";s:11:\"trend_index\";s:3:\"114\";s:6:\"is_pro\";s:1:\"0\";s:17:\"has_page_settings\";s:1:\"0\";}i:312;a:14:{s:2:\"id\";s:4:\"5515\";s:5:\"title\";s:8:\"About 19\";s:9:\"thumbnail\";s:74:\"https://library.elementor.com/wp-content/uploads/2018/03/about_black_9.png\";s:12:\"tmpl_created\";s:10:\"1520443530\";s:6:\"author\";s:9:\"Elementor\";s:3:\"url\";s:105:\"https://library.elementor.com/blocks/about-19/?utm_source=library&utm_medium=wp-dash&utm_campaign=preview\";s:4:\"type\";s:5:\"block\";s:7:\"subtype\";s:5:\"about\";s:4:\"tags\";s:9:\"[\"About\"]\";s:10:\"menu_order\";s:1:\"0\";s:16:\"popularity_index\";s:3:\"252\";s:11:\"trend_index\";s:3:\"222\";s:6:\"is_pro\";s:1:\"0\";s:17:\"has_page_settings\";s:1:\"0\";}i:313;a:14:{s:2:\"id\";s:4:\"9139\";s:5:\"title\";s:25:\"Homepage &#8211; Business\";s:9:\"thumbnail\";s:76:\"https://library.elementor.com/wp-content/uploads/2018/07/Get_Started_250.png\";s:12:\"tmpl_created\";s:10:\"1532949924\";s:6:\"author\";s:9:\"Elementor\";s:3:\"url\";s:107:\"https://library.elementor.com/homepage-business/?utm_source=library&utm_medium=wp-dash&utm_campaign=preview\";s:4:\"type\";s:4:\"page\";s:7:\"subtype\";s:4:\"page\";s:4:\"tags\";s:167:\"[\"Agency\",\"bootstrap\",\"business\",\"corporate\",\"Landing Page\",\"marketing campaign\",\"marketing landing page\",\"product launch\",\"software\",\"Startup\",\"startup landing page\"]\";s:10:\"menu_order\";s:2:\"14\";s:16:\"popularity_index\";s:1:\"9\";s:11:\"trend_index\";s:1:\"2\";s:6:\"is_pro\";s:1:\"0\";s:17:\"has_page_settings\";s:1:\"0\";}i:314;a:14:{s:2:\"id\";s:3:\"147\";s:5:\"title\";s:20:\"Homepage &#8211; App\";s:9:\"thumbnail\";s:65:\"https://library.elementor.com/wp-content/uploads/2016/08/0004.png\";s:12:\"tmpl_created\";s:10:\"1470829868\";s:6:\"author\";s:9:\"Elementor\";s:3:\"url\";s:102:\"https://library.elementor.com/homepage-app/?utm_source=library&utm_medium=wp-dash&utm_campaign=preview\";s:4:\"type\";s:4:\"page\";s:7:\"subtype\";s:4:\"page\";s:4:\"tags\";s:18:\"[\"App\",\"Homepage\"]\";s:10:\"menu_order\";s:2:\"15\";s:16:\"popularity_index\";s:1:\"1\";s:11:\"trend_index\";s:1:\"1\";s:6:\"is_pro\";s:1:\"0\";s:17:\"has_page_settings\";s:1:\"0\";}i:315;a:14:{s:2:\"id\";s:4:\"2402\";s:5:\"title\";s:32:\"Homepage &#8211; Interior Design\";s:9:\"thumbnail\";s:69:\"https://library.elementor.com/wp-content/uploads/2017/09/Interior.png\";s:12:\"tmpl_created\";s:10:\"1506441447\";s:6:\"author\";s:9:\"Elementor\";s:3:\"url\";s:114:\"https://library.elementor.com/homepage-interior-design/?utm_source=library&utm_medium=wp-dash&utm_campaign=preview\";s:4:\"type\";s:4:\"page\";s:7:\"subtype\";s:4:\"page\";s:4:\"tags\";s:193:\"[\"Architecture\",\"building\",\"business\",\"Creative\",\"exterior design\",\"furniture design\",\"Gallery\",\"garden design\",\"house\",\"interior design\",\"landscape design\",\"multipurpose\",\"portfolio\",\"studio\"]\";s:10:\"menu_order\";s:2:\"16\";s:16:\"popularity_index\";s:2:\"46\";s:11:\"trend_index\";s:2:\"31\";s:6:\"is_pro\";s:1:\"1\";s:17:\"has_page_settings\";s:1:\"0\";}i:316;a:14:{s:2:\"id\";s:3:\"777\";s:5:\"title\";s:28:\"Homepage &#8211; Coffee Shop\";s:9:\"thumbnail\";s:70:\"https://library.elementor.com/wp-content/uploads/2017/01/rest-home.jpg\";s:12:\"tmpl_created\";s:10:\"1485273092\";s:6:\"author\";s:9:\"Elementor\";s:3:\"url\";s:110:\"https://library.elementor.com/homepage-coffee-shop/?utm_source=library&utm_medium=wp-dash&utm_campaign=preview\";s:4:\"type\";s:4:\"page\";s:7:\"subtype\";s:4:\"page\";s:4:\"tags\";s:41:\"[\"Coffee\",\"Homepage\",\"Restaurant\",\"Shop\"]\";s:10:\"menu_order\";s:2:\"17\";s:16:\"popularity_index\";s:2:\"66\";s:11:\"trend_index\";s:2:\"77\";s:6:\"is_pro\";s:1:\"1\";s:17:\"has_page_settings\";s:1:\"0\";}i:317;a:14:{s:2:\"id\";s:4:\"2404\";s:5:\"title\";s:24:\"Homepage &#8211; Product\";s:9:\"thumbnail\";s:68:\"https://library.elementor.com/wp-content/uploads/2017/09/product.png\";s:12:\"tmpl_created\";s:10:\"1506441452\";s:6:\"author\";s:9:\"Elementor\";s:3:\"url\";s:106:\"https://library.elementor.com/homepage-product/?utm_source=library&utm_medium=wp-dash&utm_campaign=preview\";s:4:\"type\";s:4:\"page\";s:7:\"subtype\";s:4:\"page\";s:4:\"tags\";s:103:\"[\"business\",\"colorful\",\"ecommerce\",\"flat\",\"mobile\",\"modern\",\"responsive\",\"retina\",\"Shop\",\"woocommerce\"]\";s:10:\"menu_order\";s:2:\"18\";s:16:\"popularity_index\";s:2:\"69\";s:11:\"trend_index\";s:3:\"120\";s:6:\"is_pro\";s:1:\"1\";s:17:\"has_page_settings\";s:1:\"0\";}i:318;a:14:{s:2:\"id\";s:3:\"492\";s:5:\"title\";s:25:\"Homepage &#8211; Law firm\";s:9:\"thumbnail\";s:65:\"https://library.elementor.com/wp-content/uploads/2016/10/0024.png\";s:12:\"tmpl_created\";s:10:\"1477388365\";s:6:\"author\";s:9:\"Elementor\";s:3:\"url\";s:107:\"https://library.elementor.com/homepage-law-firm/?utm_source=library&utm_medium=wp-dash&utm_campaign=preview\";s:4:\"type\";s:4:\"page\";s:7:\"subtype\";s:4:\"page\";s:4:\"tags\";s:25:\"[\"Firm\",\"Homepage\",\"Law\"]\";s:10:\"menu_order\";s:2:\"19\";s:16:\"popularity_index\";s:1:\"6\";s:11:\"trend_index\";s:1:\"8\";s:6:\"is_pro\";s:1:\"0\";s:17:\"has_page_settings\";s:1:\"0\";}i:319;a:14:{s:2:\"id\";s:3:\"225\";s:5:\"title\";s:27:\"Homepage &#8211; Restaurant\";s:9:\"thumbnail\";s:65:\"https://library.elementor.com/wp-content/uploads/2016/08/0016.png\";s:12:\"tmpl_created\";s:10:\"1470829872\";s:6:\"author\";s:9:\"Elementor\";s:3:\"url\";s:109:\"https://library.elementor.com/homepage-restaurant/?utm_source=library&utm_medium=wp-dash&utm_campaign=preview\";s:4:\"type\";s:4:\"page\";s:7:\"subtype\";s:4:\"page\";s:4:\"tags\";s:32:\"[\"Food\",\"Homepage\",\"Restaurant\"]\";s:10:\"menu_order\";s:2:\"20\";s:16:\"popularity_index\";s:1:\"2\";s:11:\"trend_index\";s:1:\"3\";s:6:\"is_pro\";s:1:\"0\";s:17:\"has_page_settings\";s:1:\"0\";}i:320;a:14:{s:2:\"id\";s:4:\"3451\";s:5:\"title\";s:39:\"Homepage &#8211; Goodness meal services\";s:9:\"thumbnail\";s:84:\"https://library.elementor.com/wp-content/uploads/2017/11/goodness-featured-image.png\";s:12:\"tmpl_created\";s:10:\"1512054116\";s:6:\"author\";s:9:\"Elementor\";s:3:\"url\";s:121:\"https://library.elementor.com/homepage-goodness-meal-services/?utm_source=library&utm_medium=wp-dash&utm_campaign=preview\";s:4:\"type\";s:4:\"page\";s:7:\"subtype\";s:4:\"page\";s:4:\"tags\";s:2:\"[]\";s:10:\"menu_order\";s:2:\"21\";s:16:\"popularity_index\";s:3:\"119\";s:11:\"trend_index\";s:3:\"105\";s:6:\"is_pro\";s:1:\"1\";s:17:\"has_page_settings\";s:1:\"0\";}i:321;a:14:{s:2:\"id\";s:4:\"2152\";s:5:\"title\";s:26:\"Homepage &#8211; Cake Shop\";s:9:\"thumbnail\";s:70:\"https://library.elementor.com/wp-content/uploads/2017/07/cake-home.png\";s:12:\"tmpl_created\";s:10:\"1499774132\";s:6:\"author\";s:9:\"Elementor\";s:3:\"url\";s:108:\"https://library.elementor.com/homepage-cake-shop/?utm_source=library&utm_medium=wp-dash&utm_campaign=preview\";s:4:\"type\";s:4:\"page\";s:7:\"subtype\";s:4:\"page\";s:4:\"tags\";s:39:\"[\"Cake\",\"Homepage\",\"Restaurant\",\"Shop\"]\";s:10:\"menu_order\";s:2:\"22\";s:16:\"popularity_index\";s:3:\"192\";s:11:\"trend_index\";s:3:\"214\";s:6:\"is_pro\";s:1:\"1\";s:17:\"has_page_settings\";s:1:\"0\";}i:322;a:14:{s:2:\"id\";s:4:\"1068\";s:5:\"title\";s:27:\"Homepage &#8211; Copywriter\";s:9:\"thumbnail\";s:71:\"https://library.elementor.com/wp-content/uploads/2017/03/copywriter.png\";s:12:\"tmpl_created\";s:10:\"1488805928\";s:6:\"author\";s:9:\"Elementor\";s:3:\"url\";s:109:\"https://library.elementor.com/homepage-copywriter/?utm_source=library&utm_medium=wp-dash&utm_campaign=preview\";s:4:\"type\";s:4:\"page\";s:7:\"subtype\";s:4:\"page\";s:4:\"tags\";s:25:\"[\"Copywriter\",\"Homepage\"]\";s:10:\"menu_order\";s:2:\"23\";s:16:\"popularity_index\";s:3:\"100\";s:11:\"trend_index\";s:3:\"179\";s:6:\"is_pro\";s:1:\"1\";s:17:\"has_page_settings\";s:1:\"0\";}i:323;a:14:{s:2:\"id\";s:3:\"181\";s:5:\"title\";s:23:\"Homepage &#8211; Agency\";s:9:\"thumbnail\";s:65:\"https://library.elementor.com/wp-content/uploads/2016/08/0019.png\";s:12:\"tmpl_created\";s:10:\"1470826567\";s:6:\"author\";s:9:\"Elementor\";s:3:\"url\";s:105:\"https://library.elementor.com/homepage-agency/?utm_source=library&utm_medium=wp-dash&utm_campaign=preview\";s:4:\"type\";s:4:\"page\";s:7:\"subtype\";s:4:\"page\";s:4:\"tags\";s:32:\"[\"Agency\",\"Creative\",\"Homepage\"]\";s:10:\"menu_order\";s:2:\"24\";s:16:\"popularity_index\";s:1:\"3\";s:11:\"trend_index\";s:1:\"7\";s:6:\"is_pro\";s:1:\"0\";s:17:\"has_page_settings\";s:1:\"0\";}i:324;a:14:{s:2:\"id\";s:3:\"463\";s:5:\"title\";s:22:\"Homepage &#8211; Study\";s:9:\"thumbnail\";s:65:\"https://library.elementor.com/wp-content/uploads/2016/10/0022.png\";s:12:\"tmpl_created\";s:10:\"1477388340\";s:6:\"author\";s:9:\"Elementor\";s:3:\"url\";s:104:\"https://library.elementor.com/homepage-study/?utm_source=library&utm_medium=wp-dash&utm_campaign=preview\";s:4:\"type\";s:4:\"page\";s:7:\"subtype\";s:4:\"page\";s:4:\"tags\";s:32:\"[\"Education\",\"Homepage\",\"Study\"]\";s:10:\"menu_order\";s:2:\"25\";s:16:\"popularity_index\";s:1:\"5\";s:11:\"trend_index\";s:1:\"4\";s:6:\"is_pro\";s:1:\"0\";s:17:\"has_page_settings\";s:1:\"0\";}i:325;a:14:{s:2:\"id\";s:4:\"2813\";s:5:\"title\";s:32:\"Homepage &#8211; Creative Agency\";s:9:\"thumbnail\";s:90:\"https://library.elementor.com/wp-content/uploads/2017/11/Creative-Agency-–-Home-Page.png\";s:12:\"tmpl_created\";s:10:\"1509615049\";s:6:\"author\";s:9:\"Elementor\";s:3:\"url\";s:114:\"https://library.elementor.com/homepage-creative-agency/?utm_source=library&utm_medium=wp-dash&utm_campaign=preview\";s:4:\"type\";s:4:\"page\";s:7:\"subtype\";s:4:\"page\";s:4:\"tags\";s:32:\"[\"Agency\",\"Creative\",\"Homepage\"]\";s:10:\"menu_order\";s:2:\"26\";s:16:\"popularity_index\";s:2:\"57\";s:11:\"trend_index\";s:2:\"62\";s:6:\"is_pro\";s:1:\"1\";s:17:\"has_page_settings\";s:1:\"0\";}i:326;a:14:{s:2:\"id\";s:3:\"728\";s:5:\"title\";s:33:\"Homepage &#8211; Delivery Company\";s:9:\"thumbnail\";s:87:\"https://library.elementor.com/wp-content/uploads/2017/01/delivery-company-home-page.jpg\";s:12:\"tmpl_created\";s:10:\"1485269993\";s:6:\"author\";s:9:\"Elementor\";s:3:\"url\";s:115:\"https://library.elementor.com/homepage-delivery-company/?utm_source=library&utm_medium=wp-dash&utm_campaign=preview\";s:4:\"type\";s:4:\"page\";s:7:\"subtype\";s:4:\"page\";s:4:\"tags\";s:23:\"[\"Delivery\",\"Homepage\"]\";s:10:\"menu_order\";s:2:\"27\";s:16:\"popularity_index\";s:3:\"133\";s:11:\"trend_index\";s:3:\"187\";s:6:\"is_pro\";s:1:\"1\";s:17:\"has_page_settings\";s:1:\"0\";}i:327;a:14:{s:2:\"id\";s:4:\"2403\";s:5:\"title\";s:29:\"Homepage &#8211; Luxury Hotel\";s:9:\"thumbnail\";s:66:\"https://library.elementor.com/wp-content/uploads/2017/09/Hotel.png\";s:12:\"tmpl_created\";s:10:\"1506441428\";s:6:\"author\";s:9:\"Elementor\";s:3:\"url\";s:111:\"https://library.elementor.com/homepage-luxury-hotel/?utm_source=library&utm_medium=wp-dash&utm_campaign=preview\";s:4:\"type\";s:4:\"page\";s:7:\"subtype\";s:4:\"page\";s:4:\"tags\";s:2:\"[]\";s:10:\"menu_order\";s:2:\"28\";s:16:\"popularity_index\";s:3:\"146\";s:11:\"trend_index\";s:3:\"170\";s:6:\"is_pro\";s:1:\"1\";s:17:\"has_page_settings\";s:1:\"0\";}i:328;a:14:{s:2:\"id\";s:3:\"519\";s:5:\"title\";s:24:\"Homepage &#8211; Fitness\";s:9:\"thumbnail\";s:65:\"https://library.elementor.com/wp-content/uploads/2016/10/0023.png\";s:12:\"tmpl_created\";s:10:\"1477388808\";s:6:\"author\";s:9:\"Elementor\";s:3:\"url\";s:106:\"https://library.elementor.com/homepage-fitness/?utm_source=library&utm_medium=wp-dash&utm_campaign=preview\";s:4:\"type\";s:4:\"page\";s:7:\"subtype\";s:4:\"page\";s:4:\"tags\";s:45:\"[\"Fitness\",\"Gym\",\"Health\",\"Homepage\",\"Sport\"]\";s:10:\"menu_order\";s:2:\"29\";s:16:\"popularity_index\";s:1:\"7\";s:11:\"trend_index\";s:2:\"11\";s:6:\"is_pro\";s:1:\"0\";s:17:\"has_page_settings\";s:1:\"0\";}i:329;a:14:{s:2:\"id\";s:4:\"1903\";s:5:\"title\";s:20:\"One Page &#8211; Spa\";s:9:\"thumbnail\";s:64:\"https://library.elementor.com/wp-content/uploads/2017/06/spa.png\";s:12:\"tmpl_created\";s:10:\"1496822325\";s:6:\"author\";s:9:\"Elementor\";s:3:\"url\";s:102:\"https://library.elementor.com/one-page-spa/?utm_source=library&utm_medium=wp-dash&utm_campaign=preview\";s:4:\"type\";s:4:\"page\";s:7:\"subtype\";s:4:\"page\";s:4:\"tags\";s:132:\"[\"beauty\",\"care\",\"girly\",\"hair\",\"Health\",\"hospitality\",\"massage\",\"medical\",\"parlor\",\"physiotherapy\",\"salon\",\"spa\",\"wellness\",\"yoga\"]\";s:10:\"menu_order\";s:2:\"30\";s:16:\"popularity_index\";s:3:\"105\";s:11:\"trend_index\";s:3:\"205\";s:6:\"is_pro\";s:1:\"1\";s:17:\"has_page_settings\";s:1:\"0\";}i:330;a:14:{s:2:\"id\";s:4:\"2123\";s:5:\"title\";s:33:\"One Page &#8211; Architect Office\";s:9:\"thumbnail\";s:70:\"https://library.elementor.com/wp-content/uploads/2017/06/architect.png\";s:12:\"tmpl_created\";s:10:\"1499772989\";s:6:\"author\";s:9:\"Elementor\";s:3:\"url\";s:115:\"https://library.elementor.com/one-page-architect-office/?utm_source=library&utm_medium=wp-dash&utm_campaign=preview\";s:4:\"type\";s:4:\"page\";s:7:\"subtype\";s:4:\"page\";s:4:\"tags\";s:2:\"[]\";s:10:\"menu_order\";s:2:\"31\";s:16:\"popularity_index\";s:1:\"8\";s:11:\"trend_index\";s:1:\"6\";s:6:\"is_pro\";s:1:\"0\";s:17:\"has_page_settings\";s:1:\"0\";}i:331;a:14:{s:2:\"id\";s:4:\"1888\";s:5:\"title\";s:32:\"One Page &#8211; Creative Meetup\";s:9:\"thumbnail\";s:76:\"https://library.elementor.com/wp-content/uploads/2017/06/creative-meetup.png\";s:12:\"tmpl_created\";s:10:\"1496822319\";s:6:\"author\";s:9:\"Elementor\";s:3:\"url\";s:114:\"https://library.elementor.com/one-page-creative-meetup/?utm_source=library&utm_medium=wp-dash&utm_campaign=preview\";s:4:\"type\";s:4:\"page\";s:7:\"subtype\";s:4:\"page\";s:4:\"tags\";s:2:\"[]\";s:10:\"menu_order\";s:2:\"32\";s:16:\"popularity_index\";s:3:\"135\";s:11:\"trend_index\";s:3:\"193\";s:6:\"is_pro\";s:1:\"1\";s:17:\"has_page_settings\";s:1:\"0\";}i:332;a:14:{s:2:\"id\";s:4:\"1880\";s:5:\"title\";s:24:\"One Page &#8211; Wedding\";s:9:\"thumbnail\";s:68:\"https://library.elementor.com/wp-content/uploads/2017/06/wedding.png\";s:12:\"tmpl_created\";s:10:\"1496822317\";s:6:\"author\";s:9:\"Elementor\";s:3:\"url\";s:106:\"https://library.elementor.com/one-page-wedding/?utm_source=library&utm_medium=wp-dash&utm_campaign=preview\";s:4:\"type\";s:4:\"page\";s:7:\"subtype\";s:4:\"page\";s:4:\"tags\";s:82:\"[\"bride\",\"ceremony\",\"cute\",\"event\",\"fancy\",\"girly\",\"groom\",\"guestbook\",\"marriage\"]\";s:10:\"menu_order\";s:2:\"33\";s:16:\"popularity_index\";s:3:\"321\";s:11:\"trend_index\";s:3:\"364\";s:6:\"is_pro\";s:1:\"1\";s:17:\"has_page_settings\";s:1:\"0\";}i:333;a:14:{s:2:\"id\";s:4:\"1891\";s:5:\"title\";s:35:\"One Page &#8211; Textile Convention\";s:9:\"thumbnail\";s:75:\"https://library.elementor.com/wp-content/uploads/2017/06/textile-meetup.png\";s:12:\"tmpl_created\";s:10:\"1496822323\";s:6:\"author\";s:9:\"Elementor\";s:3:\"url\";s:117:\"https://library.elementor.com/one-page-textile-convention/?utm_source=library&utm_medium=wp-dash&utm_campaign=preview\";s:4:\"type\";s:4:\"page\";s:7:\"subtype\";s:4:\"page\";s:4:\"tags\";s:2:\"[]\";s:10:\"menu_order\";s:2:\"34\";s:16:\"popularity_index\";s:3:\"292\";s:11:\"trend_index\";s:3:\"324\";s:6:\"is_pro\";s:1:\"1\";s:17:\"has_page_settings\";s:1:\"0\";}i:334;a:14:{s:2:\"id\";s:4:\"1885\";s:5:\"title\";s:29:\"One Page &#8211; Yacht Rental\";s:9:\"thumbnail\";s:71:\"https://library.elementor.com/wp-content/uploads/2017/06/yacht-home.png\";s:12:\"tmpl_created\";s:10:\"1496822321\";s:6:\"author\";s:9:\"Elementor\";s:3:\"url\";s:111:\"https://library.elementor.com/one-page-yacht-rental/?utm_source=library&utm_medium=wp-dash&utm_campaign=preview\";s:4:\"type\";s:4:\"page\";s:7:\"subtype\";s:4:\"page\";s:4:\"tags\";s:2:\"[]\";s:10:\"menu_order\";s:2:\"35\";s:16:\"popularity_index\";s:3:\"113\";s:11:\"trend_index\";s:3:\"189\";s:6:\"is_pro\";s:1:\"1\";s:17:\"has_page_settings\";s:1:\"0\";}i:335;a:14:{s:2:\"id\";s:4:\"2723\";s:5:\"title\";s:34:\"Portfolio &#8211; Graphic Designer\";s:9:\"thumbnail\";s:91:\"https://library.elementor.com/wp-content/uploads/2017/11/Graphic-Designer-–-Portfolio.png\";s:12:\"tmpl_created\";s:10:\"1509633883\";s:6:\"author\";s:9:\"Elementor\";s:3:\"url\";s:116:\"https://library.elementor.com/portfolio-graphic-designer/?utm_source=library&utm_medium=wp-dash&utm_campaign=preview\";s:4:\"type\";s:4:\"page\";s:7:\"subtype\";s:4:\"page\";s:4:\"tags\";s:2:\"[]\";s:10:\"menu_order\";s:2:\"36\";s:16:\"popularity_index\";s:3:\"112\";s:11:\"trend_index\";s:3:\"137\";s:6:\"is_pro\";s:1:\"1\";s:17:\"has_page_settings\";s:1:\"0\";}i:336;a:14:{s:2:\"id\";s:4:\"2145\";s:5:\"title\";s:30:\"About &#8211; Delivery Company\";s:9:\"thumbnail\";s:75:\"https://library.elementor.com/wp-content/uploads/2017/07/delivery-about.png\";s:12:\"tmpl_created\";s:10:\"1499774125\";s:6:\"author\";s:9:\"Elementor\";s:3:\"url\";s:112:\"https://library.elementor.com/about-delivery-company/?utm_source=library&utm_medium=wp-dash&utm_campaign=preview\";s:4:\"type\";s:4:\"page\";s:7:\"subtype\";s:4:\"page\";s:4:\"tags\";s:10:\"[\"moving\"]\";s:10:\"menu_order\";s:2:\"37\";s:16:\"popularity_index\";s:3:\"223\";s:11:\"trend_index\";s:3:\"289\";s:6:\"is_pro\";s:1:\"1\";s:17:\"has_page_settings\";s:1:\"0\";}i:337;a:14:{s:2:\"id\";s:4:\"2155\";s:5:\"title\";s:23:\"About &#8211; Cake Shop\";s:9:\"thumbnail\";s:71:\"https://library.elementor.com/wp-content/uploads/2017/07/cake-about.png\";s:12:\"tmpl_created\";s:10:\"1499774130\";s:6:\"author\";s:9:\"Elementor\";s:3:\"url\";s:105:\"https://library.elementor.com/about-cake-shop/?utm_source=library&utm_medium=wp-dash&utm_campaign=preview\";s:4:\"type\";s:4:\"page\";s:7:\"subtype\";s:4:\"page\";s:4:\"tags\";s:8:\"[\"Food\"]\";s:10:\"menu_order\";s:2:\"38\";s:16:\"popularity_index\";s:3:\"298\";s:11:\"trend_index\";s:3:\"361\";s:6:\"is_pro\";s:1:\"1\";s:17:\"has_page_settings\";s:1:\"0\";}i:338;a:14:{s:2:\"id\";s:4:\"1085\";s:5:\"title\";s:21:\"About &#8211; Startup\";s:9:\"thumbnail\";s:68:\"https://library.elementor.com/wp-content/uploads/2017/03/Startup.png\";s:12:\"tmpl_created\";s:10:\"1488810874\";s:6:\"author\";s:9:\"Elementor\";s:3:\"url\";s:103:\"https://library.elementor.com/about-startup/?utm_source=library&utm_medium=wp-dash&utm_campaign=preview\";s:4:\"type\";s:4:\"page\";s:7:\"subtype\";s:4:\"page\";s:4:\"tags\";s:19:\"[\"About\",\"Startup\"]\";s:10:\"menu_order\";s:2:\"39\";s:16:\"popularity_index\";s:1:\"4\";s:11:\"trend_index\";s:1:\"5\";s:6:\"is_pro\";s:1:\"0\";s:17:\"has_page_settings\";s:1:\"0\";}i:339;a:14:{s:2:\"id\";s:3:\"143\";s:5:\"title\";s:22:\"About &#8211; Personal\";s:9:\"thumbnail\";s:65:\"https://library.elementor.com/wp-content/uploads/2016/08/0010.png\";s:12:\"tmpl_created\";s:10:\"1470820447\";s:6:\"author\";s:9:\"Elementor\";s:3:\"url\";s:104:\"https://library.elementor.com/about-personal/?utm_source=library&utm_medium=wp-dash&utm_campaign=preview\";s:4:\"type\";s:4:\"page\";s:7:\"subtype\";s:4:\"page\";s:4:\"tags\";s:20:\"[\"About\",\"Personal\"]\";s:10:\"menu_order\";s:2:\"40\";s:16:\"popularity_index\";s:2:\"16\";s:11:\"trend_index\";s:2:\"16\";s:6:\"is_pro\";s:1:\"0\";s:17:\"has_page_settings\";s:1:\"0\";}i:340;a:14:{s:2:\"id\";s:3:\"101\";s:5:\"title\";s:16:\"About &#8211; CV\";s:9:\"thumbnail\";s:65:\"https://library.elementor.com/wp-content/uploads/2016/08/0018.png\";s:12:\"tmpl_created\";s:10:\"1470829785\";s:6:\"author\";s:9:\"Elementor\";s:3:\"url\";s:98:\"https://library.elementor.com/about-cv/?utm_source=library&utm_medium=wp-dash&utm_campaign=preview\";s:4:\"type\";s:4:\"page\";s:7:\"subtype\";s:4:\"page\";s:4:\"tags\";s:77:\"[\"creative portfolio\",\"Personal\",\"portfolio\",\"professional\",\"resume\",\"vcard\"]\";s:10:\"menu_order\";s:2:\"41\";s:16:\"popularity_index\";s:2:\"23\";s:11:\"trend_index\";s:2:\"33\";s:6:\"is_pro\";s:1:\"0\";s:17:\"has_page_settings\";s:1:\"0\";}i:341;a:14:{s:2:\"id\";s:3:\"140\";s:5:\"title\";s:25:\"About &#8211; Art Gallery\";s:9:\"thumbnail\";s:65:\"https://library.elementor.com/wp-content/uploads/2016/08/0009.png\";s:12:\"tmpl_created\";s:10:\"1470820463\";s:6:\"author\";s:9:\"Elementor\";s:3:\"url\";s:107:\"https://library.elementor.com/about-art-gallery/?utm_source=library&utm_medium=wp-dash&utm_campaign=preview\";s:4:\"type\";s:4:\"page\";s:7:\"subtype\";s:4:\"page\";s:4:\"tags\";s:25:\"[\"About\",\"Art\",\"Gallery\"]\";s:10:\"menu_order\";s:2:\"42\";s:16:\"popularity_index\";s:2:\"12\";s:11:\"trend_index\";s:2:\"12\";s:6:\"is_pro\";s:1:\"0\";s:17:\"has_page_settings\";s:1:\"0\";}i:342;a:14:{s:2:\"id\";s:3:\"213\";s:5:\"title\";s:26:\"About &#8211; Architecture\";s:9:\"thumbnail\";s:65:\"https://library.elementor.com/wp-content/uploads/2016/08/0008.png\";s:12:\"tmpl_created\";s:10:\"1470829766\";s:6:\"author\";s:9:\"Elementor\";s:3:\"url\";s:108:\"https://library.elementor.com/about-architecture/?utm_source=library&utm_medium=wp-dash&utm_campaign=preview\";s:4:\"type\";s:4:\"page\";s:7:\"subtype\";s:4:\"page\";s:4:\"tags\";s:24:\"[\"About\",\"Architecture\"]\";s:10:\"menu_order\";s:2:\"43\";s:16:\"popularity_index\";s:2:\"13\";s:11:\"trend_index\";s:2:\"17\";s:6:\"is_pro\";s:1:\"0\";s:17:\"has_page_settings\";s:1:\"0\";}i:343;a:14:{s:2:\"id\";s:4:\"2802\";s:5:\"title\";s:38:\"Portfolio &#8211; Fashion Photographer\";s:9:\"thumbnail\";s:95:\"https://library.elementor.com/wp-content/uploads/2017/11/Fashion-photographer-–-Portfolio.png\";s:12:\"tmpl_created\";s:10:\"1509615440\";s:6:\"author\";s:9:\"Elementor\";s:3:\"url\";s:120:\"https://library.elementor.com/portfolio-fashion-photographer/?utm_source=library&utm_medium=wp-dash&utm_campaign=preview\";s:4:\"type\";s:4:\"page\";s:7:\"subtype\";s:4:\"page\";s:4:\"tags\";s:2:\"[]\";s:10:\"menu_order\";s:2:\"44\";s:16:\"popularity_index\";s:3:\"137\";s:11:\"trend_index\";s:3:\"157\";s:6:\"is_pro\";s:1:\"1\";s:17:\"has_page_settings\";s:1:\"0\";}i:344;a:14:{s:2:\"id\";s:4:\"2828\";s:5:\"title\";s:35:\"Landing Page &#8211; Law Convention\";s:9:\"thumbnail\";s:92:\"https://library.elementor.com/wp-content/uploads/2017/11/Law-Convention-–-Landing-Page.png\";s:12:\"tmpl_created\";s:10:\"1509631636\";s:6:\"author\";s:9:\"Elementor\";s:3:\"url\";s:117:\"https://library.elementor.com/landing-page-law-convention/?utm_source=library&utm_medium=wp-dash&utm_campaign=preview\";s:4:\"type\";s:4:\"page\";s:7:\"subtype\";s:4:\"page\";s:4:\"tags\";s:35:\"[\"Convention\",\"Landing Page\",\"Law\"]\";s:10:\"menu_order\";s:2:\"45\";s:16:\"popularity_index\";s:3:\"243\";s:11:\"trend_index\";s:3:\"250\";s:6:\"is_pro\";s:1:\"1\";s:17:\"has_page_settings\";s:1:\"0\";}i:345;a:14:{s:2:\"id\";s:4:\"1461\";s:5:\"title\";s:28:\"Landing Page &#8211; Ebook 1\";s:9:\"thumbnail\";s:81:\"https://library.elementor.com/wp-content/uploads/2017/05/Landing-Page-Ebook-1.png\";s:12:\"tmpl_created\";s:10:\"1494352121\";s:6:\"author\";s:9:\"Elementor\";s:3:\"url\";s:110:\"https://library.elementor.com/landing-page-ebook-1/?utm_source=library&utm_medium=wp-dash&utm_campaign=preview\";s:4:\"type\";s:4:\"page\";s:7:\"subtype\";s:4:\"page\";s:4:\"tags\";s:127:\"[\"App\",\"author\",\"book\",\"brochure\",\"download\",\"e-book\",\"ebook\",\"marketing\",\"product\",\"publisher\",\"sell online\",\"seo\",\"showcase\"]\";s:10:\"menu_order\";s:2:\"46\";s:16:\"popularity_index\";s:3:\"232\";s:11:\"trend_index\";s:3:\"252\";s:6:\"is_pro\";s:1:\"1\";s:17:\"has_page_settings\";s:1:\"0\";}i:346;a:14:{s:2:\"id\";s:4:\"1460\";s:5:\"title\";s:28:\"Landing Page &#8211; Ebook 2\";s:9:\"thumbnail\";s:81:\"https://library.elementor.com/wp-content/uploads/2017/05/Landing-Page-Ebook-2.png\";s:12:\"tmpl_created\";s:10:\"1494352124\";s:6:\"author\";s:9:\"Elementor\";s:3:\"url\";s:110:\"https://library.elementor.com/landing-page-ebook-2/?utm_source=library&utm_medium=wp-dash&utm_campaign=preview\";s:4:\"type\";s:4:\"page\";s:7:\"subtype\";s:4:\"page\";s:4:\"tags\";s:2:\"[]\";s:10:\"menu_order\";s:2:\"47\";s:16:\"popularity_index\";s:3:\"233\";s:11:\"trend_index\";s:3:\"357\";s:6:\"is_pro\";s:1:\"1\";s:17:\"has_page_settings\";s:1:\"0\";}i:347;a:14:{s:2:\"id\";s:4:\"1459\";s:5:\"title\";s:28:\"Landing Page &#8211; Ebook 3\";s:9:\"thumbnail\";s:81:\"https://library.elementor.com/wp-content/uploads/2017/05/Landing-Page-Ebook-3.png\";s:12:\"tmpl_created\";s:10:\"1494352125\";s:6:\"author\";s:9:\"Elementor\";s:3:\"url\";s:110:\"https://library.elementor.com/landing-page-ebook-3/?utm_source=library&utm_medium=wp-dash&utm_campaign=preview\";s:4:\"type\";s:4:\"page\";s:7:\"subtype\";s:4:\"page\";s:4:\"tags\";s:2:\"[]\";s:10:\"menu_order\";s:2:\"48\";s:16:\"popularity_index\";s:3:\"153\";s:11:\"trend_index\";s:3:\"227\";s:6:\"is_pro\";s:1:\"1\";s:17:\"has_page_settings\";s:1:\"0\";}i:348;a:14:{s:2:\"id\";s:4:\"1052\";s:5:\"title\";s:33:\"Landing Page &#8211; Mobile App 1\";s:9:\"thumbnail\";s:64:\"https://library.elementor.com/wp-content/uploads/2017/03/app.png\";s:12:\"tmpl_created\";s:10:\"1488810873\";s:6:\"author\";s:9:\"Elementor\";s:3:\"url\";s:113:\"https://library.elementor.com/landing-page-mobile-app/?utm_source=library&utm_medium=wp-dash&utm_campaign=preview\";s:4:\"type\";s:4:\"page\";s:7:\"subtype\";s:4:\"page\";s:4:\"tags\";s:2:\"[]\";s:10:\"menu_order\";s:2:\"49\";s:16:\"popularity_index\";s:2:\"21\";s:11:\"trend_index\";s:2:\"38\";s:6:\"is_pro\";s:1:\"0\";s:17:\"has_page_settings\";s:1:\"0\";}i:349;a:14:{s:2:\"id\";s:4:\"1503\";s:5:\"title\";s:33:\"Landing Page &#8211; Mobile App 2\";s:9:\"thumbnail\";s:78:\"https://library.elementor.com/wp-content/uploads/2017/05/Landing-Page-app1.png\";s:12:\"tmpl_created\";s:10:\"1494352113\";s:6:\"author\";s:9:\"Elementor\";s:3:\"url\";s:115:\"https://library.elementor.com/landing-page-mobile-app-2/?utm_source=library&utm_medium=wp-dash&utm_campaign=preview\";s:4:\"type\";s:4:\"page\";s:7:\"subtype\";s:4:\"page\";s:4:\"tags\";s:2:\"[]\";s:10:\"menu_order\";s:2:\"50\";s:16:\"popularity_index\";s:3:\"161\";s:11:\"trend_index\";s:3:\"194\";s:6:\"is_pro\";s:1:\"1\";s:17:\"has_page_settings\";s:1:\"0\";}i:350;a:14:{s:2:\"id\";s:4:\"1504\";s:5:\"title\";s:33:\"Landing Page &#8211; Mobile App 3\";s:9:\"thumbnail\";s:78:\"https://library.elementor.com/wp-content/uploads/2017/05/Landing-Page-app2.png\";s:12:\"tmpl_created\";s:10:\"1494352112\";s:6:\"author\";s:9:\"Elementor\";s:3:\"url\";s:115:\"https://library.elementor.com/landing-page-mobile-app-3/?utm_source=library&utm_medium=wp-dash&utm_campaign=preview\";s:4:\"type\";s:4:\"page\";s:7:\"subtype\";s:4:\"page\";s:4:\"tags\";s:2:\"[]\";s:10:\"menu_order\";s:2:\"51\";s:16:\"popularity_index\";s:3:\"170\";s:11:\"trend_index\";s:3:\"274\";s:6:\"is_pro\";s:1:\"1\";s:17:\"has_page_settings\";s:1:\"0\";}i:351;a:14:{s:2:\"id\";s:4:\"1505\";s:5:\"title\";s:33:\"Landing Page &#8211; Mobile App 4\";s:9:\"thumbnail\";s:78:\"https://library.elementor.com/wp-content/uploads/2017/05/Landing-Page-app3.png\";s:12:\"tmpl_created\";s:10:\"1494352110\";s:6:\"author\";s:9:\"Elementor\";s:3:\"url\";s:115:\"https://library.elementor.com/landing-page-mobile-app-4/?utm_source=library&utm_medium=wp-dash&utm_campaign=preview\";s:4:\"type\";s:4:\"page\";s:7:\"subtype\";s:4:\"page\";s:4:\"tags\";s:2:\"[]\";s:10:\"menu_order\";s:2:\"52\";s:16:\"popularity_index\";s:3:\"282\";s:11:\"trend_index\";s:3:\"337\";s:6:\"is_pro\";s:1:\"1\";s:17:\"has_page_settings\";s:1:\"0\";}i:352;a:14:{s:2:\"id\";s:3:\"726\";s:5:\"title\";s:33:\"Landing Page &#8211; Conference 1\";s:9:\"thumbnail\";s:84:\"https://library.elementor.com/wp-content/uploads/2017/01/convention-landing-page.jpg\";s:12:\"tmpl_created\";s:10:\"1485270062\";s:6:\"author\";s:9:\"Elementor\";s:3:\"url\";s:113:\"https://library.elementor.com/landing-page-conference/?utm_source=library&utm_medium=wp-dash&utm_campaign=preview\";s:4:\"type\";s:4:\"page\";s:7:\"subtype\";s:4:\"page\";s:4:\"tags\";s:2:\"[]\";s:10:\"menu_order\";s:2:\"53\";s:16:\"popularity_index\";s:3:\"305\";s:11:\"trend_index\";s:3:\"341\";s:6:\"is_pro\";s:1:\"1\";s:17:\"has_page_settings\";s:1:\"0\";}i:353;a:14:{s:2:\"id\";s:4:\"1613\";s:5:\"title\";s:33:\"Landing Page &#8211; Conference 2\";s:9:\"thumbnail\";s:109:\"https://library.elementor.com/wp-content/uploads/2017/05/Landing-Page-International-Womens-Day-Conference.png\";s:12:\"tmpl_created\";s:10:\"1494352129\";s:6:\"author\";s:9:\"Elementor\";s:3:\"url\";s:115:\"https://library.elementor.com/landing-page-conference-2/?utm_source=library&utm_medium=wp-dash&utm_campaign=preview\";s:4:\"type\";s:4:\"page\";s:7:\"subtype\";s:4:\"page\";s:4:\"tags\";s:2:\"[]\";s:10:\"menu_order\";s:2:\"54\";s:16:\"popularity_index\";s:3:\"326\";s:11:\"trend_index\";s:3:\"382\";s:6:\"is_pro\";s:1:\"1\";s:17:\"has_page_settings\";s:1:\"0\";}i:354;a:14:{s:2:\"id\";s:4:\"1612\";s:5:\"title\";s:33:\"Landing Page &#8211; Conference 3\";s:9:\"thumbnail\";s:89:\"https://library.elementor.com/wp-content/uploads/2017/05/Landing-Page-Tech-Conference.png\";s:12:\"tmpl_created\";s:10:\"1494352127\";s:6:\"author\";s:9:\"Elementor\";s:3:\"url\";s:115:\"https://library.elementor.com/landing-page-conference-3/?utm_source=library&utm_medium=wp-dash&utm_campaign=preview\";s:4:\"type\";s:4:\"page\";s:7:\"subtype\";s:4:\"page\";s:4:\"tags\";s:2:\"[]\";s:10:\"menu_order\";s:2:\"55\";s:16:\"popularity_index\";s:3:\"332\";s:11:\"trend_index\";s:3:\"381\";s:6:\"is_pro\";s:1:\"1\";s:17:\"has_page_settings\";s:1:\"0\";}i:355;a:14:{s:2:\"id\";s:4:\"1614\";s:5:\"title\";s:33:\"Landing Page &#8211; Conference 4\";s:9:\"thumbnail\";s:99:\"https://library.elementor.com/wp-content/uploads/2017/05/Landing-Page-Sustainability-Conference.png\";s:12:\"tmpl_created\";s:10:\"1494352131\";s:6:\"author\";s:9:\"Elementor\";s:3:\"url\";s:115:\"https://library.elementor.com/landing-page-conference-4/?utm_source=library&utm_medium=wp-dash&utm_campaign=preview\";s:4:\"type\";s:4:\"page\";s:7:\"subtype\";s:4:\"page\";s:4:\"tags\";s:2:\"[]\";s:10:\"menu_order\";s:2:\"56\";s:16:\"popularity_index\";s:3:\"257\";s:11:\"trend_index\";s:3:\"336\";s:6:\"is_pro\";s:1:\"1\";s:17:\"has_page_settings\";s:1:\"0\";}i:356;a:14:{s:2:\"id\";s:4:\"9373\";s:5:\"title\";s:33:\"Landing Page &#8211; Conference 5\";s:9:\"thumbnail\";s:75:\"https://library.elementor.com/wp-content/uploads/2018/11/conference-250.png\";s:12:\"tmpl_created\";s:10:\"1542811219\";s:6:\"author\";s:9:\"Elementor\";s:3:\"url\";s:115:\"https://library.elementor.com/landing-page-conference-5/?utm_source=library&utm_medium=wp-dash&utm_campaign=preview\";s:4:\"type\";s:4:\"page\";s:7:\"subtype\";s:4:\"page\";s:4:\"tags\";s:2:\"[]\";s:10:\"menu_order\";s:2:\"57\";s:16:\"popularity_index\";s:3:\"306\";s:11:\"trend_index\";s:3:\"249\";s:6:\"is_pro\";s:1:\"1\";s:17:\"has_page_settings\";s:1:\"0\";}i:357;a:14:{s:2:\"id\";s:3:\"906\";s:5:\"title\";s:29:\"Landing Page &#8211;  Coacher\";s:9:\"thumbnail\";s:80:\"https://library.elementor.com/wp-content/uploads/2017/02/Landin-Page-Coacher.png\";s:12:\"tmpl_created\";s:10:\"1494352066\";s:6:\"author\";s:9:\"Elementor\";s:3:\"url\";s:110:\"https://library.elementor.com/landing-page-coacher/?utm_source=library&utm_medium=wp-dash&utm_campaign=preview\";s:4:\"type\";s:4:\"page\";s:7:\"subtype\";s:4:\"page\";s:4:\"tags\";s:2:\"[]\";s:10:\"menu_order\";s:2:\"58\";s:16:\"popularity_index\";s:3:\"148\";s:11:\"trend_index\";s:3:\"282\";s:6:\"is_pro\";s:1:\"1\";s:17:\"has_page_settings\";s:1:\"0\";}i:358;a:14:{s:2:\"id\";s:3:\"955\";s:5:\"title\";s:31:\"Landing Page &#8211; Law Office\";s:9:\"thumbnail\";s:84:\"https://library.elementor.com/wp-content/uploads/2017/02/Landing-Page-Law-Office.png\";s:12:\"tmpl_created\";s:10:\"1494352069\";s:6:\"author\";s:9:\"Elementor\";s:3:\"url\";s:113:\"https://library.elementor.com/landing-page-law-office/?utm_source=library&utm_medium=wp-dash&utm_campaign=preview\";s:4:\"type\";s:4:\"page\";s:7:\"subtype\";s:4:\"page\";s:4:\"tags\";s:31:\"[\"Landing Page\",\"Law\",\"Office\"]\";s:10:\"menu_order\";s:2:\"59\";s:16:\"popularity_index\";s:3:\"147\";s:11:\"trend_index\";s:3:\"185\";s:6:\"is_pro\";s:1:\"1\";s:17:\"has_page_settings\";s:1:\"0\";}i:359;a:14:{s:2:\"id\";s:3:\"879\";s:5:\"title\";s:41:\"Landing Page &#8211; Financial Consultant\";s:9:\"thumbnail\";s:94:\"https://library.elementor.com/wp-content/uploads/2017/02/Landing-Page-Financial-consultant.png\";s:12:\"tmpl_created\";s:10:\"1494352064\";s:6:\"author\";s:9:\"Elementor\";s:3:\"url\";s:123:\"https://library.elementor.com/landing-page-financial-consultant/?utm_source=library&utm_medium=wp-dash&utm_campaign=preview\";s:4:\"type\";s:4:\"page\";s:7:\"subtype\";s:4:\"page\";s:4:\"tags\";s:2:\"[]\";s:10:\"menu_order\";s:2:\"60\";s:16:\"popularity_index\";s:3:\"164\";s:11:\"trend_index\";s:3:\"258\";s:6:\"is_pro\";s:1:\"1\";s:17:\"has_page_settings\";s:1:\"0\";}i:360;a:14:{s:2:\"id\";s:3:\"926\";s:5:\"title\";s:33:\"Landing Page &#8211; Private Chef\";s:9:\"thumbnail\";s:86:\"https://library.elementor.com/wp-content/uploads/2017/02/Landing-Page-Private-Chef.png\";s:12:\"tmpl_created\";s:10:\"1494352068\";s:6:\"author\";s:9:\"Elementor\";s:3:\"url\";s:115:\"https://library.elementor.com/landing-page-private-chef/?utm_source=library&utm_medium=wp-dash&utm_campaign=preview\";s:4:\"type\";s:4:\"page\";s:7:\"subtype\";s:4:\"page\";s:4:\"tags\";s:2:\"[]\";s:10:\"menu_order\";s:2:\"61\";s:16:\"popularity_index\";s:3:\"290\";s:11:\"trend_index\";s:3:\"362\";s:6:\"is_pro\";s:1:\"1\";s:17:\"has_page_settings\";s:1:\"0\";}i:361;a:14:{s:2:\"id\";s:3:\"855\";s:5:\"title\";s:37:\"Landing Page &#8211; Personal Trainer\";s:9:\"thumbnail\";s:90:\"https://library.elementor.com/wp-content/uploads/2017/02/Landing-Page-Personal-Trainer.png\";s:12:\"tmpl_created\";s:10:\"1494352061\";s:6:\"author\";s:9:\"Elementor\";s:3:\"url\";s:119:\"https://library.elementor.com/landing-page-personal-trainer/?utm_source=library&utm_medium=wp-dash&utm_campaign=preview\";s:4:\"type\";s:4:\"page\";s:7:\"subtype\";s:4:\"page\";s:4:\"tags\";s:2:\"[]\";s:10:\"menu_order\";s:2:\"62\";s:16:\"popularity_index\";s:3:\"244\";s:11:\"trend_index\";s:3:\"351\";s:6:\"is_pro\";s:1:\"1\";s:17:\"has_page_settings\";s:1:\"0\";}i:362;a:14:{s:2:\"id\";s:3:\"974\";s:5:\"title\";s:28:\"Landing Page &#8211; Stylist\";s:9:\"thumbnail\";s:81:\"https://library.elementor.com/wp-content/uploads/2017/03/Landing-Page-Stylist.png\";s:12:\"tmpl_created\";s:10:\"1494352071\";s:6:\"author\";s:9:\"Elementor\";s:3:\"url\";s:110:\"https://library.elementor.com/landing-page-stylist/?utm_source=library&utm_medium=wp-dash&utm_campaign=preview\";s:4:\"type\";s:4:\"page\";s:7:\"subtype\";s:4:\"page\";s:4:\"tags\";s:146:\"[\"cosmetics\",\"fashion\",\"girly\",\"hairdresser\",\"lifestyle\",\"makeup\",\"manicure\",\"pedicure\",\"products\",\"salon\",\"Shop\",\"skincare\",\"stylist\",\"wellness\"]\";s:10:\"menu_order\";s:2:\"63\";s:16:\"popularity_index\";s:3:\"299\";s:11:\"trend_index\";s:3:\"299\";s:6:\"is_pro\";s:1:\"1\";s:17:\"has_page_settings\";s:1:\"0\";}i:363;a:14:{s:2:\"id\";s:4:\"1032\";s:5:\"title\";s:27:\"Landing Page &#8211; Agency\";s:9:\"thumbnail\";s:67:\"https://library.elementor.com/wp-content/uploads/2017/03/Agency.png\";s:12:\"tmpl_created\";s:10:\"1488810866\";s:6:\"author\";s:9:\"Elementor\";s:3:\"url\";s:109:\"https://library.elementor.com/landing-page-agency/?utm_source=library&utm_medium=wp-dash&utm_campaign=preview\";s:4:\"type\";s:4:\"page\";s:7:\"subtype\";s:4:\"page\";s:4:\"tags\";s:2:\"[]\";s:10:\"menu_order\";s:2:\"64\";s:16:\"popularity_index\";s:3:\"263\";s:11:\"trend_index\";s:3:\"349\";s:6:\"is_pro\";s:1:\"1\";s:17:\"has_page_settings\";s:1:\"0\";}i:364;a:14:{s:2:\"id\";s:4:\"1634\";s:5:\"title\";s:33:\"Landing Page &#8211; Chiropractor\";s:9:\"thumbnail\";s:86:\"https://library.elementor.com/wp-content/uploads/2017/05/Landing-Page-Chiropractor.png\";s:12:\"tmpl_created\";s:10:\"1494352119\";s:6:\"author\";s:9:\"Elementor\";s:3:\"url\";s:115:\"https://library.elementor.com/landing-page-chiropractor/?utm_source=library&utm_medium=wp-dash&utm_campaign=preview\";s:4:\"type\";s:4:\"page\";s:7:\"subtype\";s:4:\"page\";s:4:\"tags\";s:2:\"[]\";s:10:\"menu_order\";s:2:\"65\";s:16:\"popularity_index\";s:3:\"254\";s:11:\"trend_index\";s:3:\"352\";s:6:\"is_pro\";s:1:\"1\";s:17:\"has_page_settings\";s:1:\"0\";}i:365;a:14:{s:2:\"id\";s:3:\"730\";s:5:\"title\";s:24:\"Landing Page &#8211; App\";s:9:\"thumbnail\";s:78:\"https://library.elementor.com/wp-content/uploads/2017/01/app.-landing-page.jpg\";s:12:\"tmpl_created\";s:10:\"1485273430\";s:6:\"author\";s:9:\"Elementor\";s:3:\"url\";s:106:\"https://library.elementor.com/landing-page-app/?utm_source=library&utm_medium=wp-dash&utm_campaign=preview\";s:4:\"type\";s:4:\"page\";s:7:\"subtype\";s:4:\"page\";s:4:\"tags\";s:2:\"[]\";s:10:\"menu_order\";s:2:\"66\";s:16:\"popularity_index\";s:3:\"245\";s:11:\"trend_index\";s:3:\"307\";s:6:\"is_pro\";s:1:\"1\";s:17:\"has_page_settings\";s:1:\"0\";}i:366;a:14:{s:2:\"id\";s:3:\"643\";s:5:\"title\";s:29:\"Landing Page &#8211; Festival\";s:9:\"thumbnail\";s:69:\"https://library.elementor.com/wp-content/uploads/2016/12/festival.jpg\";s:12:\"tmpl_created\";s:10:\"1481549290\";s:6:\"author\";s:9:\"Elementor\";s:3:\"url\";s:111:\"https://library.elementor.com/landing-page-festival/?utm_source=library&utm_medium=wp-dash&utm_campaign=preview\";s:4:\"type\";s:4:\"page\";s:7:\"subtype\";s:4:\"page\";s:4:\"tags\";s:2:\"[]\";s:10:\"menu_order\";s:2:\"67\";s:16:\"popularity_index\";s:3:\"294\";s:11:\"trend_index\";s:3:\"370\";s:6:\"is_pro\";s:1:\"1\";s:17:\"has_page_settings\";s:1:\"0\";}i:367;a:14:{s:2:\"id\";s:3:\"487\";s:5:\"title\";s:29:\"Landing Page &#8211; Vacation\";s:9:\"thumbnail\";s:65:\"https://library.elementor.com/wp-content/uploads/2016/10/0021.png\";s:12:\"tmpl_created\";s:10:\"1477388357\";s:6:\"author\";s:9:\"Elementor\";s:3:\"url\";s:111:\"https://library.elementor.com/landing-page-vacation/?utm_source=library&utm_medium=wp-dash&utm_campaign=preview\";s:4:\"type\";s:4:\"page\";s:7:\"subtype\";s:4:\"page\";s:4:\"tags\";s:2:\"[]\";s:10:\"menu_order\";s:2:\"68\";s:16:\"popularity_index\";s:2:\"24\";s:11:\"trend_index\";s:2:\"58\";s:6:\"is_pro\";s:1:\"0\";s:17:\"has_page_settings\";s:1:\"0\";}i:368;a:14:{s:2:\"id\";s:3:\"542\";s:5:\"title\";s:28:\"Landing Page &#8211; Wedding\";s:9:\"thumbnail\";s:65:\"https://library.elementor.com/wp-content/uploads/2016/10/0025.png\";s:12:\"tmpl_created\";s:10:\"1477388484\";s:6:\"author\";s:9:\"Elementor\";s:3:\"url\";s:110:\"https://library.elementor.com/landing-page-wedding/?utm_source=library&utm_medium=wp-dash&utm_campaign=preview\";s:4:\"type\";s:4:\"page\";s:7:\"subtype\";s:4:\"page\";s:4:\"tags\";s:2:\"[]\";s:10:\"menu_order\";s:2:\"69\";s:16:\"popularity_index\";s:2:\"42\";s:11:\"trend_index\";s:3:\"112\";s:6:\"is_pro\";s:1:\"0\";s:17:\"has_page_settings\";s:1:\"0\";}i:369;a:14:{s:2:\"id\";s:4:\"1187\";s:5:\"title\";s:32:\"Landing Page &#8211; Photography\";s:9:\"thumbnail\";s:66:\"https://library.elementor.com/wp-content/uploads/2017/03/lp1-l.png\";s:12:\"tmpl_created\";s:10:\"1490707385\";s:6:\"author\";s:9:\"Elementor\";s:3:\"url\";s:114:\"https://library.elementor.com/landing-page-photography/?utm_source=library&utm_medium=wp-dash&utm_campaign=preview\";s:4:\"type\";s:4:\"page\";s:7:\"subtype\";s:4:\"page\";s:4:\"tags\";s:2:\"[]\";s:10:\"menu_order\";s:2:\"70\";s:16:\"popularity_index\";s:2:\"25\";s:11:\"trend_index\";s:2:\"43\";s:6:\"is_pro\";s:1:\"0\";s:17:\"has_page_settings\";s:1:\"0\";}i:370;a:14:{s:2:\"id\";s:3:\"641\";s:5:\"title\";s:28:\"Landing Page &#8211; Fashion\";s:9:\"thumbnail\";s:81:\"https://library.elementor.com/wp-content/uploads/2016/12/fashion-landing-page.jpg\";s:12:\"tmpl_created\";s:10:\"1481549264\";s:6:\"author\";s:9:\"Elementor\";s:3:\"url\";s:110:\"https://library.elementor.com/landing-page-fashion/?utm_source=library&utm_medium=wp-dash&utm_campaign=preview\";s:4:\"type\";s:4:\"page\";s:7:\"subtype\";s:4:\"page\";s:4:\"tags\";s:2:\"[]\";s:10:\"menu_order\";s:2:\"71\";s:16:\"popularity_index\";s:3:\"183\";s:11:\"trend_index\";s:3:\"312\";s:6:\"is_pro\";s:1:\"1\";s:17:\"has_page_settings\";s:1:\"0\";}i:371;a:14:{s:2:\"id\";s:3:\"189\";s:5:\"title\";s:30:\"Landing Page &#8211; Tourism 1\";s:9:\"thumbnail\";s:65:\"https://library.elementor.com/wp-content/uploads/2016/08/0005.png\";s:12:\"tmpl_created\";s:10:\"1470820715\";s:6:\"author\";s:9:\"Elementor\";s:3:\"url\";s:110:\"https://library.elementor.com/landing-page-tourism/?utm_source=library&utm_medium=wp-dash&utm_campaign=preview\";s:4:\"type\";s:4:\"page\";s:7:\"subtype\";s:4:\"page\";s:4:\"tags\";s:2:\"[]\";s:10:\"menu_order\";s:2:\"72\";s:16:\"popularity_index\";s:2:\"10\";s:11:\"trend_index\";s:2:\"13\";s:6:\"is_pro\";s:1:\"0\";s:17:\"has_page_settings\";s:1:\"0\";}i:372;a:14:{s:2:\"id\";s:4:\"1547\";s:5:\"title\";s:30:\"Landing Page &#8211; Tourism 2\";s:9:\"thumbnail\";s:82:\"https://library.elementor.com/wp-content/uploads/2017/05/Landing-Page-Truism-1.png\";s:12:\"tmpl_created\";s:10:\"1494352115\";s:6:\"author\";s:9:\"Elementor\";s:3:\"url\";s:112:\"https://library.elementor.com/landing-page-tourism-2/?utm_source=library&utm_medium=wp-dash&utm_campaign=preview\";s:4:\"type\";s:4:\"page\";s:7:\"subtype\";s:4:\"page\";s:4:\"tags\";s:2:\"[]\";s:10:\"menu_order\";s:2:\"73\";s:16:\"popularity_index\";s:3:\"240\";s:11:\"trend_index\";s:3:\"269\";s:6:\"is_pro\";s:1:\"1\";s:17:\"has_page_settings\";s:1:\"0\";}i:373;a:14:{s:2:\"id\";s:4:\"1546\";s:5:\"title\";s:30:\"Landing Page &#8211; Tourism 3\";s:9:\"thumbnail\";s:82:\"https://library.elementor.com/wp-content/uploads/2017/05/Landing-Page-Truism-2.png\";s:12:\"tmpl_created\";s:10:\"1494352116\";s:6:\"author\";s:9:\"Elementor\";s:3:\"url\";s:112:\"https://library.elementor.com/landing-page-tourism-3/?utm_source=library&utm_medium=wp-dash&utm_campaign=preview\";s:4:\"type\";s:4:\"page\";s:7:\"subtype\";s:4:\"page\";s:4:\"tags\";s:2:\"[]\";s:10:\"menu_order\";s:2:\"74\";s:16:\"popularity_index\";s:3:\"331\";s:11:\"trend_index\";s:3:\"387\";s:6:\"is_pro\";s:1:\"1\";s:17:\"has_page_settings\";s:1:\"0\";}i:374;a:14:{s:2:\"id\";s:4:\"1545\";s:5:\"title\";s:30:\"Landing Page &#8211; Tourism 4\";s:9:\"thumbnail\";s:82:\"https://library.elementor.com/wp-content/uploads/2017/05/Landing-Page-Truism-3.png\";s:12:\"tmpl_created\";s:10:\"1494352118\";s:6:\"author\";s:9:\"Elementor\";s:3:\"url\";s:112:\"https://library.elementor.com/landing-page-tourism-4/?utm_source=library&utm_medium=wp-dash&utm_campaign=preview\";s:4:\"type\";s:4:\"page\";s:7:\"subtype\";s:4:\"page\";s:4:\"tags\";s:2:\"[]\";s:10:\"menu_order\";s:2:\"75\";s:16:\"popularity_index\";s:3:\"288\";s:11:\"trend_index\";s:3:\"297\";s:6:\"is_pro\";s:1:\"1\";s:17:\"has_page_settings\";s:1:\"0\";}i:375;a:14:{s:2:\"id\";s:4:\"2714\";s:5:\"title\";s:30:\"Landing Page &#8211; Tourism 5\";s:9:\"thumbnail\";s:86:\"https://library.elementor.com/wp-content/uploads/2017/11/Vacation-–-Landing-Page.png\";s:12:\"tmpl_created\";s:10:\"1509631782\";s:6:\"author\";s:9:\"Elementor\";s:3:\"url\";s:112:\"https://library.elementor.com/landing-page-tourism-5/?utm_source=library&utm_medium=wp-dash&utm_campaign=preview\";s:4:\"type\";s:4:\"page\";s:7:\"subtype\";s:4:\"page\";s:4:\"tags\";s:2:\"[]\";s:10:\"menu_order\";s:2:\"76\";s:16:\"popularity_index\";s:3:\"283\";s:11:\"trend_index\";s:3:\"267\";s:6:\"is_pro\";s:1:\"1\";s:17:\"has_page_settings\";s:1:\"0\";}i:376;a:14:{s:2:\"id\";s:4:\"1190\";s:5:\"title\";s:26:\"Landing Page &#8211; Hotel\";s:9:\"thumbnail\";s:66:\"https://library.elementor.com/wp-content/uploads/2017/03/lp2-l.png\";s:12:\"tmpl_created\";s:10:\"1490707391\";s:6:\"author\";s:9:\"Elementor\";s:3:\"url\";s:108:\"https://library.elementor.com/landing-page-hotel/?utm_source=library&utm_medium=wp-dash&utm_campaign=preview\";s:4:\"type\";s:4:\"page\";s:7:\"subtype\";s:4:\"page\";s:4:\"tags\";s:2:\"[]\";s:10:\"menu_order\";s:2:\"77\";s:16:\"popularity_index\";s:2:\"20\";s:11:\"trend_index\";s:2:\"20\";s:6:\"is_pro\";s:1:\"0\";s:17:\"has_page_settings\";s:1:\"0\";}i:377;a:14:{s:2:\"id\";s:3:\"195\";s:5:\"title\";s:28:\"Landing Page &#8211; Product\";s:9:\"thumbnail\";s:65:\"https://library.elementor.com/wp-content/uploads/2016/08/0006.png\";s:12:\"tmpl_created\";s:10:\"1470820765\";s:6:\"author\";s:9:\"Elementor\";s:3:\"url\";s:110:\"https://library.elementor.com/landing-page-product/?utm_source=library&utm_medium=wp-dash&utm_campaign=preview\";s:4:\"type\";s:4:\"page\";s:7:\"subtype\";s:4:\"page\";s:4:\"tags\";s:2:\"[]\";s:10:\"menu_order\";s:2:\"78\";s:16:\"popularity_index\";s:2:\"26\";s:11:\"trend_index\";s:2:\"61\";s:6:\"is_pro\";s:1:\"0\";s:17:\"has_page_settings\";s:1:\"0\";}i:378;a:14:{s:2:\"id\";s:3:\"197\";s:5:\"title\";s:34:\"Landing Page &#8211; Real Estate 1\";s:9:\"thumbnail\";s:65:\"https://library.elementor.com/wp-content/uploads/2016/08/0007.png\";s:12:\"tmpl_created\";s:10:\"1470825711\";s:6:\"author\";s:9:\"Elementor\";s:3:\"url\";s:114:\"https://library.elementor.com/landing-page-real-estate/?utm_source=library&utm_medium=wp-dash&utm_campaign=preview\";s:4:\"type\";s:4:\"page\";s:7:\"subtype\";s:4:\"page\";s:4:\"tags\";s:2:\"[]\";s:10:\"menu_order\";s:2:\"79\";s:16:\"popularity_index\";s:2:\"64\";s:11:\"trend_index\";s:3:\"144\";s:6:\"is_pro\";s:1:\"0\";s:17:\"has_page_settings\";s:1:\"0\";}i:379;a:14:{s:2:\"id\";s:4:\"1193\";s:5:\"title\";s:34:\"Landing Page &#8211; Real Estate 2\";s:9:\"thumbnail\";s:66:\"https://library.elementor.com/wp-content/uploads/2017/03/lp3-l.png\";s:12:\"tmpl_created\";s:10:\"1490707422\";s:6:\"author\";s:9:\"Elementor\";s:3:\"url\";s:116:\"https://library.elementor.com/landing-page-real-estate-2/?utm_source=library&utm_medium=wp-dash&utm_campaign=preview\";s:4:\"type\";s:4:\"page\";s:7:\"subtype\";s:4:\"page\";s:4:\"tags\";s:2:\"[]\";s:10:\"menu_order\";s:2:\"80\";s:16:\"popularity_index\";s:2:\"33\";s:11:\"trend_index\";s:2:\"75\";s:6:\"is_pro\";s:1:\"0\";s:17:\"has_page_settings\";s:1:\"0\";}i:380;a:14:{s:2:\"id\";s:4:\"1415\";s:5:\"title\";s:34:\"Landing Page &#8211; Real Estate 3\";s:9:\"thumbnail\";s:87:\"https://library.elementor.com/wp-content/uploads/2017/05/Landing-Page-Real-Estate-1.png\";s:12:\"tmpl_created\";s:10:\"1494352106\";s:6:\"author\";s:9:\"Elementor\";s:3:\"url\";s:116:\"https://library.elementor.com/landing-page-real-estate-3/?utm_source=library&utm_medium=wp-dash&utm_campaign=preview\";s:4:\"type\";s:4:\"page\";s:7:\"subtype\";s:4:\"page\";s:4:\"tags\";s:2:\"[]\";s:10:\"menu_order\";s:2:\"81\";s:16:\"popularity_index\";s:3:\"267\";s:11:\"trend_index\";s:3:\"319\";s:6:\"is_pro\";s:1:\"1\";s:17:\"has_page_settings\";s:1:\"0\";}i:381;a:14:{s:2:\"id\";s:4:\"1414\";s:5:\"title\";s:34:\"Landing Page &#8211; Real Estate 4\";s:9:\"thumbnail\";s:87:\"https://library.elementor.com/wp-content/uploads/2017/05/Landing-Page-Real-Estate-2.png\";s:12:\"tmpl_created\";s:10:\"1494352107\";s:6:\"author\";s:9:\"Elementor\";s:3:\"url\";s:116:\"https://library.elementor.com/landing-page-real-estate-4/?utm_source=library&utm_medium=wp-dash&utm_campaign=preview\";s:4:\"type\";s:4:\"page\";s:7:\"subtype\";s:4:\"page\";s:4:\"tags\";s:2:\"[]\";s:10:\"menu_order\";s:2:\"82\";s:16:\"popularity_index\";s:3:\"371\";s:11:\"trend_index\";s:3:\"399\";s:6:\"is_pro\";s:1:\"1\";s:17:\"has_page_settings\";s:1:\"0\";}i:382;a:14:{s:2:\"id\";s:4:\"1413\";s:5:\"title\";s:34:\"Landing Page &#8211; Real Estate 5\";s:9:\"thumbnail\";s:87:\"https://library.elementor.com/wp-content/uploads/2017/05/Landing-Page-Real-Estate-3.png\";s:12:\"tmpl_created\";s:10:\"1494352109\";s:6:\"author\";s:9:\"Elementor\";s:3:\"url\";s:116:\"https://library.elementor.com/landing-page-real-estate-5/?utm_source=library&utm_medium=wp-dash&utm_campaign=preview\";s:4:\"type\";s:4:\"page\";s:7:\"subtype\";s:4:\"page\";s:4:\"tags\";s:134:\"[\"Agent\",\"business\",\"clean\",\"corporate\",\"flat\",\"google maps\",\"homes\",\"listing\",\"modern\",\"real estate\",\"realestate\",\"realtor\",\"realty\"]\";s:10:\"menu_order\";s:2:\"83\";s:16:\"popularity_index\";s:3:\"346\";s:11:\"trend_index\";s:3:\"356\";s:6:\"is_pro\";s:1:\"1\";s:17:\"has_page_settings\";s:1:\"0\";}i:383;a:14:{s:2:\"id\";s:4:\"1573\";s:5:\"title\";s:29:\"Landing Page &#8211; Coupon 1\";s:9:\"thumbnail\";s:70:\"https://library.elementor.com/wp-content/uploads/2017/05/Coupon-02.png\";s:12:\"tmpl_created\";s:10:\"1494352133\";s:6:\"author\";s:9:\"Elementor\";s:3:\"url\";s:111:\"https://library.elementor.com/landing-page-coupon-1/?utm_source=library&utm_medium=wp-dash&utm_campaign=preview\";s:4:\"type\";s:4:\"page\";s:7:\"subtype\";s:4:\"page\";s:4:\"tags\";s:2:\"[]\";s:10:\"menu_order\";s:2:\"84\";s:16:\"popularity_index\";s:3:\"367\";s:11:\"trend_index\";s:3:\"421\";s:6:\"is_pro\";s:1:\"1\";s:17:\"has_page_settings\";s:1:\"0\";}i:384;a:14:{s:2:\"id\";s:4:\"1572\";s:5:\"title\";s:29:\"Landing Page &#8211; Coupon 2\";s:9:\"thumbnail\";s:70:\"https://library.elementor.com/wp-content/uploads/2017/05/Coupon-03.png\";s:12:\"tmpl_created\";s:10:\"1494352134\";s:6:\"author\";s:9:\"Elementor\";s:3:\"url\";s:111:\"https://library.elementor.com/landing-page-coupon-2/?utm_source=library&utm_medium=wp-dash&utm_campaign=preview\";s:4:\"type\";s:4:\"page\";s:7:\"subtype\";s:4:\"page\";s:4:\"tags\";s:2:\"[]\";s:10:\"menu_order\";s:2:\"85\";s:16:\"popularity_index\";s:3:\"390\";s:11:\"trend_index\";s:3:\"401\";s:6:\"is_pro\";s:1:\"1\";s:17:\"has_page_settings\";s:1:\"0\";}i:385;a:14:{s:2:\"id\";s:4:\"1570\";s:5:\"title\";s:29:\"Landing Page &#8211; Coupon 3\";s:9:\"thumbnail\";s:70:\"https://library.elementor.com/wp-content/uploads/2017/05/Coupon-01.png\";s:12:\"tmpl_created\";s:10:\"1494352136\";s:6:\"author\";s:9:\"Elementor\";s:3:\"url\";s:111:\"https://library.elementor.com/landing-page-coupon-3/?utm_source=library&utm_medium=wp-dash&utm_campaign=preview\";s:4:\"type\";s:4:\"page\";s:7:\"subtype\";s:4:\"page\";s:4:\"tags\";s:2:\"[]\";s:10:\"menu_order\";s:2:\"86\";s:16:\"popularity_index\";s:3:\"415\";s:11:\"trend_index\";s:3:\"424\";s:6:\"is_pro\";s:1:\"1\";s:17:\"has_page_settings\";s:1:\"0\";}i:386;a:14:{s:2:\"id\";s:4:\"1571\";s:5:\"title\";s:29:\"Landing Page &#8211; Coupon 4\";s:9:\"thumbnail\";s:70:\"https://library.elementor.com/wp-content/uploads/2017/05/Coupon-04.png\";s:12:\"tmpl_created\";s:10:\"1494352138\";s:6:\"author\";s:9:\"Elementor\";s:3:\"url\";s:111:\"https://library.elementor.com/landing-page-coupon-4/?utm_source=library&utm_medium=wp-dash&utm_campaign=preview\";s:4:\"type\";s:4:\"page\";s:7:\"subtype\";s:4:\"page\";s:4:\"tags\";s:2:\"[]\";s:10:\"menu_order\";s:2:\"87\";s:16:\"popularity_index\";s:3:\"391\";s:11:\"trend_index\";s:3:\"391\";s:6:\"is_pro\";s:1:\"1\";s:17:\"has_page_settings\";s:1:\"0\";}i:387;a:14:{s:2:\"id\";s:3:\"192\";s:5:\"title\";s:28:\"Landing Page &#8211; Webinar\";s:9:\"thumbnail\";s:65:\"https://library.elementor.com/wp-content/uploads/2016/08/0015.png\";s:12:\"tmpl_created\";s:10:\"1470820734\";s:6:\"author\";s:9:\"Elementor\";s:3:\"url\";s:110:\"https://library.elementor.com/landing-page-webinar/?utm_source=library&utm_medium=wp-dash&utm_campaign=preview\";s:4:\"type\";s:4:\"page\";s:7:\"subtype\";s:4:\"page\";s:4:\"tags\";s:2:\"[]\";s:10:\"menu_order\";s:2:\"88\";s:16:\"popularity_index\";s:2:\"52\";s:11:\"trend_index\";s:3:\"104\";s:6:\"is_pro\";s:1:\"0\";s:17:\"has_page_settings\";s:1:\"0\";}i:388;a:14:{s:2:\"id\";s:4:\"2141\";s:5:\"title\";s:32:\"Contact &#8211; Delivery Company\";s:9:\"thumbnail\";s:77:\"https://library.elementor.com/wp-content/uploads/2017/07/delivery-contact.png\";s:12:\"tmpl_created\";s:10:\"1499774122\";s:6:\"author\";s:9:\"Elementor\";s:3:\"url\";s:114:\"https://library.elementor.com/contact-delivery-company/?utm_source=library&utm_medium=wp-dash&utm_campaign=preview\";s:4:\"type\";s:4:\"page\";s:7:\"subtype\";s:4:\"page\";s:4:\"tags\";s:2:\"[]\";s:10:\"menu_order\";s:2:\"89\";s:16:\"popularity_index\";s:3:\"216\";s:11:\"trend_index\";s:3:\"253\";s:6:\"is_pro\";s:1:\"1\";s:17:\"has_page_settings\";s:1:\"0\";}i:389;a:14:{s:2:\"id\";s:3:\"137\";s:5:\"title\";s:22:\"Contact &#8211; Modern\";s:9:\"thumbnail\";s:65:\"https://library.elementor.com/wp-content/uploads/2016/08/0013.png\";s:12:\"tmpl_created\";s:10:\"1470829828\";s:6:\"author\";s:9:\"Elementor\";s:3:\"url\";s:104:\"https://library.elementor.com/contact-modern/?utm_source=library&utm_medium=wp-dash&utm_campaign=preview\";s:4:\"type\";s:4:\"page\";s:7:\"subtype\";s:4:\"page\";s:4:\"tags\";s:2:\"[]\";s:10:\"menu_order\";s:2:\"90\";s:16:\"popularity_index\";s:2:\"28\";s:11:\"trend_index\";s:2:\"34\";s:6:\"is_pro\";s:1:\"0\";s:17:\"has_page_settings\";s:1:\"0\";}i:390;a:14:{s:2:\"id\";s:3:\"256\";s:5:\"title\";s:26:\"Contact &#8211; Restaurant\";s:9:\"thumbnail\";s:65:\"https://library.elementor.com/wp-content/uploads/2016/08/0011.png\";s:12:\"tmpl_created\";s:10:\"1470829796\";s:6:\"author\";s:9:\"Elementor\";s:3:\"url\";s:108:\"https://library.elementor.com/contact-restaurant/?utm_source=library&utm_medium=wp-dash&utm_campaign=preview\";s:4:\"type\";s:4:\"page\";s:7:\"subtype\";s:4:\"page\";s:4:\"tags\";s:2:\"[]\";s:10:\"menu_order\";s:2:\"91\";s:16:\"popularity_index\";s:2:\"68\";s:11:\"trend_index\";s:3:\"107\";s:6:\"is_pro\";s:1:\"0\";s:17:\"has_page_settings\";s:1:\"0\";}i:391;a:14:{s:2:\"id\";s:4:\"2150\";s:5:\"title\";s:25:\"Contact &#8211; Cake Shop\";s:9:\"thumbnail\";s:73:\"https://library.elementor.com/wp-content/uploads/2017/07/cake-contact.png\";s:12:\"tmpl_created\";s:10:\"1499774127\";s:6:\"author\";s:9:\"Elementor\";s:3:\"url\";s:107:\"https://library.elementor.com/contact-cake-shop/?utm_source=library&utm_medium=wp-dash&utm_campaign=preview\";s:4:\"type\";s:4:\"page\";s:7:\"subtype\";s:4:\"page\";s:4:\"tags\";s:2:\"[]\";s:10:\"menu_order\";s:2:\"92\";s:16:\"popularity_index\";s:2:\"39\";s:11:\"trend_index\";s:2:\"53\";s:6:\"is_pro\";s:1:\"0\";s:17:\"has_page_settings\";s:1:\"0\";}i:392;a:14:{s:2:\"id\";s:3:\"223\";s:5:\"title\";s:21:\"Contact &#8211; Hotel\";s:9:\"thumbnail\";s:65:\"https://library.elementor.com/wp-content/uploads/2016/08/0002.png\";s:12:\"tmpl_created\";s:10:\"1470820471\";s:6:\"author\";s:9:\"Elementor\";s:3:\"url\";s:103:\"https://library.elementor.com/contact-hotel/?utm_source=library&utm_medium=wp-dash&utm_campaign=preview\";s:4:\"type\";s:4:\"page\";s:7:\"subtype\";s:4:\"page\";s:4:\"tags\";s:2:\"[]\";s:10:\"menu_order\";s:2:\"93\";s:16:\"popularity_index\";s:2:\"67\";s:11:\"trend_index\";s:3:\"151\";s:6:\"is_pro\";s:1:\"0\";s:17:\"has_page_settings\";s:1:\"0\";}i:393;a:14:{s:2:\"id\";s:2:\"24\";s:5:\"title\";s:25:\"Contact &#8211; Corporate\";s:9:\"thumbnail\";s:65:\"https://library.elementor.com/wp-content/uploads/2016/08/0012.png\";s:12:\"tmpl_created\";s:10:\"1470248619\";s:6:\"author\";s:9:\"Elementor\";s:3:\"url\";s:107:\"https://library.elementor.com/contact-corporate/?utm_source=library&utm_medium=wp-dash&utm_campaign=preview\";s:4:\"type\";s:4:\"page\";s:7:\"subtype\";s:4:\"page\";s:4:\"tags\";s:2:\"[]\";s:10:\"menu_order\";s:2:\"94\";s:16:\"popularity_index\";s:2:\"11\";s:11:\"trend_index\";s:1:\"9\";s:6:\"is_pro\";s:1:\"0\";s:17:\"has_page_settings\";s:1:\"0\";}i:394;a:14:{s:2:\"id\";s:3:\"184\";s:5:\"title\";s:23:\"Services &#8211; Moving\";s:9:\"thumbnail\";s:65:\"https://library.elementor.com/wp-content/uploads/2016/08/0017.png\";s:12:\"tmpl_created\";s:10:\"1470829889\";s:6:\"author\";s:9:\"Elementor\";s:3:\"url\";s:105:\"https://library.elementor.com/services-moving/?utm_source=library&utm_medium=wp-dash&utm_campaign=preview\";s:4:\"type\";s:4:\"page\";s:7:\"subtype\";s:4:\"page\";s:4:\"tags\";s:2:\"[]\";s:10:\"menu_order\";s:2:\"95\";s:16:\"popularity_index\";s:2:\"19\";s:11:\"trend_index\";s:2:\"24\";s:6:\"is_pro\";s:1:\"0\";s:17:\"has_page_settings\";s:1:\"0\";}i:395;a:14:{s:2:\"id\";s:3:\"625\";s:5:\"title\";s:31:\"Services &#8211; Cake Shop Menu\";s:9:\"thumbnail\";s:75:\"https://library.elementor.com/wp-content/uploads/2016/12/cake-shop-menu.jpg\";s:12:\"tmpl_created\";s:10:\"1481549196\";s:6:\"author\";s:9:\"Elementor\";s:3:\"url\";s:113:\"https://library.elementor.com/services-cake-shop-menu/?utm_source=library&utm_medium=wp-dash&utm_campaign=preview\";s:4:\"type\";s:4:\"page\";s:7:\"subtype\";s:4:\"page\";s:4:\"tags\";s:2:\"[]\";s:10:\"menu_order\";s:2:\"96\";s:16:\"popularity_index\";s:3:\"373\";s:11:\"trend_index\";s:3:\"420\";s:6:\"is_pro\";s:1:\"1\";s:17:\"has_page_settings\";s:1:\"0\";}i:396;a:14:{s:2:\"id\";s:3:\"187\";s:5:\"title\";s:20:\"Services &#8211; Fun\";s:9:\"thumbnail\";s:65:\"https://library.elementor.com/wp-content/uploads/2016/08/0001.png\";s:12:\"tmpl_created\";s:10:\"1470829892\";s:6:\"author\";s:9:\"Elementor\";s:3:\"url\";s:102:\"https://library.elementor.com/services-fun/?utm_source=library&utm_medium=wp-dash&utm_campaign=preview\";s:4:\"type\";s:4:\"page\";s:7:\"subtype\";s:4:\"page\";s:4:\"tags\";s:2:\"[]\";s:10:\"menu_order\";s:2:\"97\";s:16:\"popularity_index\";s:2:\"32\";s:11:\"trend_index\";s:2:\"99\";s:6:\"is_pro\";s:1:\"0\";s:17:\"has_page_settings\";s:1:\"0\";}i:397;a:14:{s:2:\"id\";s:3:\"238\";s:5:\"title\";s:27:\"Services &#8211; Consulting\";s:9:\"thumbnail\";s:65:\"https://library.elementor.com/wp-content/uploads/2016/08/0014.png\";s:12:\"tmpl_created\";s:10:\"1470829865\";s:6:\"author\";s:9:\"Elementor\";s:3:\"url\";s:109:\"https://library.elementor.com/services-consulting/?utm_source=library&utm_medium=wp-dash&utm_campaign=preview\";s:4:\"type\";s:4:\"page\";s:7:\"subtype\";s:4:\"page\";s:4:\"tags\";s:2:\"[]\";s:10:\"menu_order\";s:2:\"98\";s:16:\"popularity_index\";s:2:\"17\";s:11:\"trend_index\";s:2:\"29\";s:6:\"is_pro\";s:1:\"0\";s:17:\"has_page_settings\";s:1:\"0\";}i:398;a:14:{s:2:\"id\";s:3:\"647\";s:5:\"title\";s:33:\"Services &#8211; Coffee Shop Menu\";s:9:\"thumbnail\";s:76:\"https://library.elementor.com/wp-content/uploads/2016/12/restaurant-menu.jpg\";s:12:\"tmpl_created\";s:10:\"1481549320\";s:6:\"author\";s:9:\"Elementor\";s:3:\"url\";s:115:\"https://library.elementor.com/services-coffee-shop-menu/?utm_source=library&utm_medium=wp-dash&utm_campaign=preview\";s:4:\"type\";s:4:\"page\";s:7:\"subtype\";s:4:\"page\";s:4:\"tags\";s:2:\"[]\";s:10:\"menu_order\";s:2:\"99\";s:16:\"popularity_index\";s:3:\"341\";s:11:\"trend_index\";s:3:\"394\";s:6:\"is_pro\";s:1:\"1\";s:17:\"has_page_settings\";s:1:\"0\";}i:399;a:14:{s:2:\"id\";s:4:\"2138\";s:5:\"title\";s:33:\"Services &#8211; Delivery Company\";s:9:\"thumbnail\";s:78:\"https://library.elementor.com/wp-content/uploads/2017/07/delivery-services.png\";s:12:\"tmpl_created\";s:10:\"1499774119\";s:6:\"author\";s:9:\"Elementor\";s:3:\"url\";s:115:\"https://library.elementor.com/services-delivery-company/?utm_source=library&utm_medium=wp-dash&utm_campaign=preview\";s:4:\"type\";s:4:\"page\";s:7:\"subtype\";s:4:\"page\";s:4:\"tags\";s:2:\"[]\";s:10:\"menu_order\";s:3:\"100\";s:16:\"popularity_index\";s:3:\"301\";s:11:\"trend_index\";s:3:\"333\";s:6:\"is_pro\";s:1:\"1\";s:17:\"has_page_settings\";s:1:\"0\";}i:400;a:14:{s:2:\"id\";s:3:\"823\";s:5:\"title\";s:19:\"Pricing &#8211; App\";s:9:\"thumbnail\";s:72:\"https://library.elementor.com/wp-content/uploads/2017/01/pricing-app.jpg\";s:12:\"tmpl_created\";s:10:\"1485272966\";s:6:\"author\";s:9:\"Elementor\";s:3:\"url\";s:103:\"https://library.elementor.com/pricing-app-2/?utm_source=library&utm_medium=wp-dash&utm_campaign=preview\";s:4:\"type\";s:4:\"page\";s:7:\"subtype\";s:4:\"page\";s:4:\"tags\";s:2:\"[]\";s:10:\"menu_order\";s:3:\"101\";s:16:\"popularity_index\";s:3:\"258\";s:11:\"trend_index\";s:3:\"403\";s:6:\"is_pro\";s:1:\"1\";s:17:\"has_page_settings\";s:1:\"0\";}i:401;a:14:{s:2:\"id\";s:3:\"824\";s:5:\"title\";s:24:\"Pricing &#8211; Software\";s:9:\"thumbnail\";s:77:\"https://library.elementor.com/wp-content/uploads/2017/01/pricing-software.png\";s:12:\"tmpl_created\";s:10:\"1485272900\";s:6:\"author\";s:9:\"Elementor\";s:3:\"url\";s:108:\"https://library.elementor.com/pricing-software-2/?utm_source=library&utm_medium=wp-dash&utm_campaign=preview\";s:4:\"type\";s:4:\"page\";s:7:\"subtype\";s:4:\"page\";s:4:\"tags\";s:2:\"[]\";s:10:\"menu_order\";s:3:\"102\";s:16:\"popularity_index\";s:3:\"281\";s:11:\"trend_index\";s:3:\"326\";s:6:\"is_pro\";s:1:\"1\";s:17:\"has_page_settings\";s:1:\"0\";}i:402;a:14:{s:2:\"id\";s:3:\"825\";s:5:\"title\";s:24:\"Product &#8211; Speakers\";s:9:\"thumbnail\";s:73:\"https://library.elementor.com/wp-content/uploads/2017/01/product-page.jpg\";s:12:\"tmpl_created\";s:10:\"1485272513\";s:6:\"author\";s:9:\"Elementor\";s:3:\"url\";s:106:\"https://library.elementor.com/product-speakers/?utm_source=library&utm_medium=wp-dash&utm_campaign=preview\";s:4:\"type\";s:4:\"page\";s:7:\"subtype\";s:4:\"page\";s:4:\"tags\";s:2:\"[]\";s:10:\"menu_order\";s:3:\"103\";s:16:\"popularity_index\";s:3:\"302\";s:11:\"trend_index\";s:3:\"372\";s:6:\"is_pro\";s:1:\"1\";s:17:\"has_page_settings\";s:1:\"0\";}i:403;a:14:{s:2:\"id\";s:3:\"245\";s:5:\"title\";s:21:\"Product &#8211; Clean\";s:9:\"thumbnail\";s:65:\"https://library.elementor.com/wp-content/uploads/2016/08/0020.png\";s:12:\"tmpl_created\";s:10:\"1470829876\";s:6:\"author\";s:9:\"Elementor\";s:3:\"url\";s:103:\"https://library.elementor.com/product-clean/?utm_source=library&utm_medium=wp-dash&utm_campaign=preview\";s:4:\"type\";s:4:\"page\";s:7:\"subtype\";s:4:\"page\";s:4:\"tags\";s:48:\"[\"fast\",\"minimal\",\"minimalistic\",\"seo\",\"simple\"]\";s:10:\"menu_order\";s:3:\"104\";s:16:\"popularity_index\";s:2:\"45\";s:11:\"trend_index\";s:3:\"100\";s:6:\"is_pro\";s:1:\"0\";s:17:\"has_page_settings\";s:1:\"0\";}i:404;a:14:{s:2:\"id\";s:3:\"150\";s:5:\"title\";s:19:\"Product &#8211; App\";s:9:\"thumbnail\";s:65:\"https://library.elementor.com/wp-content/uploads/2016/08/0003.png\";s:12:\"tmpl_created\";s:10:\"1470829879\";s:6:\"author\";s:9:\"Elementor\";s:3:\"url\";s:101:\"https://library.elementor.com/product-app/?utm_source=library&utm_medium=wp-dash&utm_campaign=preview\";s:4:\"type\";s:4:\"page\";s:7:\"subtype\";s:4:\"page\";s:4:\"tags\";s:2:\"[]\";s:10:\"menu_order\";s:3:\"105\";s:16:\"popularity_index\";s:2:\"22\";s:11:\"trend_index\";s:2:\"50\";s:6:\"is_pro\";s:1:\"0\";s:17:\"has_page_settings\";s:1:\"0\";}i:405;a:14:{s:2:\"id\";s:3:\"751\";s:5:\"title\";s:25:\"Homepage &#8211; Interior\";s:9:\"thumbnail\";s:74:\"https://library.elementor.com/wp-content/uploads/2017/01/interior-home.png\";s:12:\"tmpl_created\";s:10:\"1485269743\";s:6:\"author\";s:9:\"Elementor\";s:3:\"url\";s:107:\"https://library.elementor.com/homepage-interior/?utm_source=library&utm_medium=wp-dash&utm_campaign=preview\";s:4:\"type\";s:4:\"page\";s:7:\"subtype\";s:4:\"page\";s:4:\"tags\";s:2:\"[]\";s:10:\"menu_order\";s:3:\"106\";s:16:\"popularity_index\";s:3:\"217\";s:11:\"trend_index\";s:3:\"251\";s:6:\"is_pro\";s:1:\"1\";s:17:\"has_page_settings\";s:1:\"0\";}i:406;a:14:{s:2:\"id\";s:3:\"753\";s:5:\"title\";s:22:\"About &#8211; Interior\";s:9:\"thumbnail\";s:75:\"https://library.elementor.com/wp-content/uploads/2017/01/Interior-About.png\";s:12:\"tmpl_created\";s:10:\"1485269710\";s:6:\"author\";s:9:\"Elementor\";s:3:\"url\";s:104:\"https://library.elementor.com/about-interior/?utm_source=library&utm_medium=wp-dash&utm_campaign=preview\";s:4:\"type\";s:4:\"page\";s:7:\"subtype\";s:4:\"page\";s:4:\"tags\";s:2:\"[]\";s:10:\"menu_order\";s:3:\"107\";s:16:\"popularity_index\";s:3:\"276\";s:11:\"trend_index\";s:3:\"309\";s:6:\"is_pro\";s:1:\"1\";s:17:\"has_page_settings\";s:1:\"0\";}i:407;a:14:{s:2:\"id\";s:3:\"754\";s:5:\"title\";s:25:\"Services &#8211; Interior\";s:9:\"thumbnail\";s:78:\"https://library.elementor.com/wp-content/uploads/2017/01/Interior-Services.png\";s:12:\"tmpl_created\";s:10:\"1485269691\";s:6:\"author\";s:9:\"Elementor\";s:3:\"url\";s:107:\"https://library.elementor.com/services-interior/?utm_source=library&utm_medium=wp-dash&utm_campaign=preview\";s:4:\"type\";s:4:\"page\";s:7:\"subtype\";s:4:\"page\";s:4:\"tags\";s:2:\"[]\";s:10:\"menu_order\";s:3:\"108\";s:16:\"popularity_index\";s:3:\"293\";s:11:\"trend_index\";s:3:\"323\";s:6:\"is_pro\";s:1:\"1\";s:17:\"has_page_settings\";s:1:\"0\";}i:408;a:14:{s:2:\"id\";s:3:\"752\";s:5:\"title\";s:24:\"Contact &#8211; Interior\";s:9:\"thumbnail\";s:77:\"https://library.elementor.com/wp-content/uploads/2017/01/interior-contact.png\";s:12:\"tmpl_created\";s:10:\"1485269737\";s:6:\"author\";s:9:\"Elementor\";s:3:\"url\";s:106:\"https://library.elementor.com/contact-interior/?utm_source=library&utm_medium=wp-dash&utm_campaign=preview\";s:4:\"type\";s:4:\"page\";s:7:\"subtype\";s:4:\"page\";s:4:\"tags\";s:2:\"[]\";s:10:\"menu_order\";s:3:\"109\";s:16:\"popularity_index\";s:3:\"274\";s:11:\"trend_index\";s:3:\"291\";s:6:\"is_pro\";s:1:\"1\";s:17:\"has_page_settings\";s:1:\"0\";}i:409;a:14:{s:2:\"id\";s:4:\"1075\";s:5:\"title\";s:19:\"Shop &#8211; Sweets\";s:9:\"thumbnail\";s:67:\"https://library.elementor.com/wp-content/uploads/2017/03/Sweets.png\";s:12:\"tmpl_created\";s:10:\"1488810871\";s:6:\"author\";s:9:\"Elementor\";s:3:\"url\";s:101:\"https://library.elementor.com/shop-sweets/?utm_source=library&utm_medium=wp-dash&utm_campaign=preview\";s:4:\"type\";s:4:\"page\";s:7:\"subtype\";s:4:\"page\";s:4:\"tags\";s:154:\"[\"bakery\",\"beverage\",\"business\",\"cafe\",\"candy bar\",\"catering\",\"delivery service\",\"Food\",\"online shop\",\"pastry\",\"Restaurant\",\"store\",\"sweet shop\",\"sweets\"]\";s:10:\"menu_order\";s:3:\"110\";s:16:\"popularity_index\";s:2:\"34\";s:11:\"trend_index\";s:2:\"83\";s:6:\"is_pro\";s:1:\"0\";s:17:\"has_page_settings\";s:1:\"0\";}i:410;a:14:{s:2:\"id\";s:4:\"1051\";s:5:\"title\";s:24:\"Blog Post &#8211; Launch\";s:9:\"thumbnail\";s:71:\"https://library.elementor.com/wp-content/uploads/2017/03/post-cloud.png\";s:12:\"tmpl_created\";s:10:\"1488810869\";s:6:\"author\";s:9:\"Elementor\";s:3:\"url\";s:106:\"https://library.elementor.com/blog-post-launch/?utm_source=library&utm_medium=wp-dash&utm_campaign=preview\";s:4:\"type\";s:4:\"page\";s:7:\"subtype\";s:4:\"page\";s:4:\"tags\";s:210:\"[\"Agency\",\"bootstrap\",\"business\",\"corporate\",\"Landing Page\",\"launch\",\"marketing campaign\",\"marketing landing page\",\"marketing template landing page\",\"product launch\",\"software\",\"Startup\",\"startup landing page\"]\";s:10:\"menu_order\";s:3:\"111\";s:16:\"popularity_index\";s:2:\"18\";s:11:\"trend_index\";s:2:\"15\";s:6:\"is_pro\";s:1:\"0\";s:17:\"has_page_settings\";s:1:\"0\";}i:411;a:14:{s:2:\"id\";s:4:\"1245\";s:5:\"title\";s:13:\"Coming Soon 1\";s:9:\"thumbnail\";s:74:\"https://library.elementor.com/wp-content/uploads/2017/03/Coming-Soon-1.png\";s:12:\"tmpl_created\";s:10:\"1491207184\";s:6:\"author\";s:9:\"Elementor\";s:3:\"url\";s:103:\"https://library.elementor.com/coming-soon-1/?utm_source=library&utm_medium=wp-dash&utm_campaign=preview\";s:4:\"type\";s:4:\"page\";s:7:\"subtype\";s:4:\"page\";s:4:\"tags\";s:2:\"[]\";s:10:\"menu_order\";s:3:\"112\";s:16:\"popularity_index\";s:3:\"191\";s:11:\"trend_index\";s:3:\"285\";s:6:\"is_pro\";s:1:\"1\";s:17:\"has_page_settings\";s:1:\"0\";}i:412;a:14:{s:2:\"id\";s:4:\"1247\";s:5:\"title\";s:13:\"Coming Soon 2\";s:9:\"thumbnail\";s:74:\"https://library.elementor.com/wp-content/uploads/2017/03/Coming-Soon-2.png\";s:12:\"tmpl_created\";s:10:\"1491207138\";s:6:\"author\";s:9:\"Elementor\";s:3:\"url\";s:103:\"https://library.elementor.com/coming-soon-2/?utm_source=library&utm_medium=wp-dash&utm_campaign=preview\";s:4:\"type\";s:4:\"page\";s:7:\"subtype\";s:4:\"page\";s:4:\"tags\";s:2:\"[]\";s:10:\"menu_order\";s:3:\"113\";s:16:\"popularity_index\";s:2:\"27\";s:11:\"trend_index\";s:2:\"27\";s:6:\"is_pro\";s:1:\"0\";s:17:\"has_page_settings\";s:1:\"0\";}i:413;a:14:{s:2:\"id\";s:4:\"1248\";s:5:\"title\";s:13:\"Coming Soon 3\";s:9:\"thumbnail\";s:74:\"https://library.elementor.com/wp-content/uploads/2017/03/Coming-Soon-3.png\";s:12:\"tmpl_created\";s:10:\"1491207050\";s:6:\"author\";s:9:\"Elementor\";s:3:\"url\";s:103:\"https://library.elementor.com/coming-soon-3/?utm_source=library&utm_medium=wp-dash&utm_campaign=preview\";s:4:\"type\";s:4:\"page\";s:7:\"subtype\";s:4:\"page\";s:4:\"tags\";s:2:\"[]\";s:10:\"menu_order\";s:3:\"114\";s:16:\"popularity_index\";s:3:\"309\";s:11:\"trend_index\";s:3:\"392\";s:6:\"is_pro\";s:1:\"1\";s:17:\"has_page_settings\";s:1:\"0\";}i:414;a:14:{s:2:\"id\";s:4:\"1249\";s:5:\"title\";s:13:\"Coming Soon 4\";s:9:\"thumbnail\";s:74:\"https://library.elementor.com/wp-content/uploads/2017/03/Coming-Soon-4.png\";s:12:\"tmpl_created\";s:10:\"1491207380\";s:6:\"author\";s:9:\"Elementor\";s:3:\"url\";s:103:\"https://library.elementor.com/coming-soon-4/?utm_source=library&utm_medium=wp-dash&utm_campaign=preview\";s:4:\"type\";s:4:\"page\";s:7:\"subtype\";s:4:\"page\";s:4:\"tags\";s:2:\"[]\";s:10:\"menu_order\";s:3:\"115\";s:16:\"popularity_index\";s:3:\"354\";s:11:\"trend_index\";s:3:\"369\";s:6:\"is_pro\";s:1:\"1\";s:17:\"has_page_settings\";s:1:\"0\";}i:415;a:14:{s:2:\"id\";s:4:\"1250\";s:5:\"title\";s:13:\"Coming Soon 5\";s:9:\"thumbnail\";s:74:\"https://library.elementor.com/wp-content/uploads/2017/03/Coming-Soon-5.png\";s:12:\"tmpl_created\";s:10:\"1491207450\";s:6:\"author\";s:9:\"Elementor\";s:3:\"url\";s:103:\"https://library.elementor.com/coming-soon-5/?utm_source=library&utm_medium=wp-dash&utm_campaign=preview\";s:4:\"type\";s:4:\"page\";s:7:\"subtype\";s:4:\"page\";s:4:\"tags\";s:2:\"[]\";s:10:\"menu_order\";s:3:\"116\";s:16:\"popularity_index\";s:2:\"40\";s:11:\"trend_index\";s:3:\"106\";s:6:\"is_pro\";s:1:\"0\";s:17:\"has_page_settings\";s:1:\"0\";}i:416;a:14:{s:2:\"id\";s:4:\"1260\";s:5:\"title\";s:13:\"Coming Soon 6\";s:9:\"thumbnail\";s:74:\"https://library.elementor.com/wp-content/uploads/2017/03/Coming-Soon-6.png\";s:12:\"tmpl_created\";s:10:\"1491207507\";s:6:\"author\";s:9:\"Elementor\";s:3:\"url\";s:103:\"https://library.elementor.com/coming-soon-6/?utm_source=library&utm_medium=wp-dash&utm_campaign=preview\";s:4:\"type\";s:4:\"page\";s:7:\"subtype\";s:4:\"page\";s:4:\"tags\";s:2:\"[]\";s:10:\"menu_order\";s:3:\"117\";s:16:\"popularity_index\";s:3:\"352\";s:11:\"trend_index\";s:3:\"340\";s:6:\"is_pro\";s:1:\"1\";s:17:\"has_page_settings\";s:1:\"0\";}i:417;a:14:{s:2:\"id\";s:4:\"1261\";s:5:\"title\";s:13:\"Coming Soon 7\";s:9:\"thumbnail\";s:74:\"https://library.elementor.com/wp-content/uploads/2017/04/Coming-Soon-7.png\";s:12:\"tmpl_created\";s:10:\"1491207584\";s:6:\"author\";s:9:\"Elementor\";s:3:\"url\";s:103:\"https://library.elementor.com/coming-soon-7/?utm_source=library&utm_medium=wp-dash&utm_campaign=preview\";s:4:\"type\";s:4:\"page\";s:7:\"subtype\";s:4:\"page\";s:4:\"tags\";s:2:\"[]\";s:10:\"menu_order\";s:3:\"118\";s:16:\"popularity_index\";s:2:\"44\";s:11:\"trend_index\";s:2:\"55\";s:6:\"is_pro\";s:1:\"0\";s:17:\"has_page_settings\";s:1:\"0\";}i:418;a:14:{s:2:\"id\";s:4:\"1272\";s:5:\"title\";s:13:\"Coming Soon 8\";s:9:\"thumbnail\";s:74:\"https://library.elementor.com/wp-content/uploads/2017/03/Coming-Soon-8.png\";s:12:\"tmpl_created\";s:10:\"1491207674\";s:6:\"author\";s:9:\"Elementor\";s:3:\"url\";s:103:\"https://library.elementor.com/coming-soon-8/?utm_source=library&utm_medium=wp-dash&utm_campaign=preview\";s:4:\"type\";s:4:\"page\";s:7:\"subtype\";s:4:\"page\";s:4:\"tags\";s:2:\"[]\";s:10:\"menu_order\";s:3:\"119\";s:16:\"popularity_index\";s:3:\"204\";s:11:\"trend_index\";s:3:\"305\";s:6:\"is_pro\";s:1:\"1\";s:17:\"has_page_settings\";s:1:\"0\";}i:419;a:14:{s:2:\"id\";s:4:\"1279\";s:5:\"title\";s:13:\"Coming Soon 9\";s:9:\"thumbnail\";s:74:\"https://library.elementor.com/wp-content/uploads/2017/03/Coming-Soon-9.png\";s:12:\"tmpl_created\";s:10:\"1491207756\";s:6:\"author\";s:9:\"Elementor\";s:3:\"url\";s:103:\"https://library.elementor.com/coming-soon-9/?utm_source=library&utm_medium=wp-dash&utm_campaign=preview\";s:4:\"type\";s:4:\"page\";s:7:\"subtype\";s:4:\"page\";s:4:\"tags\";s:2:\"[]\";s:10:\"menu_order\";s:3:\"120\";s:16:\"popularity_index\";s:2:\"76\";s:11:\"trend_index\";s:3:\"143\";s:6:\"is_pro\";s:1:\"0\";s:17:\"has_page_settings\";s:1:\"0\";}i:420;a:14:{s:2:\"id\";s:4:\"1745\";s:5:\"title\";s:14:\"Coming Soon 10\";s:9:\"thumbnail\";s:70:\"https://library.elementor.com/wp-content/uploads/2017/05/login-002.png\";s:12:\"tmpl_created\";s:10:\"1494849745\";s:6:\"author\";s:9:\"Elementor\";s:3:\"url\";s:104:\"https://library.elementor.com/coming-soon-10/?utm_source=library&utm_medium=wp-dash&utm_campaign=preview\";s:4:\"type\";s:4:\"page\";s:7:\"subtype\";s:4:\"page\";s:4:\"tags\";s:2:\"[]\";s:10:\"menu_order\";s:3:\"121\";s:16:\"popularity_index\";s:3:\"201\";s:11:\"trend_index\";s:3:\"240\";s:6:\"is_pro\";s:1:\"1\";s:17:\"has_page_settings\";s:1:\"0\";}i:421;a:14:{s:2:\"id\";s:4:\"1742\";s:5:\"title\";s:12:\"Login Page 1\";s:9:\"thumbnail\";s:70:\"https://library.elementor.com/wp-content/uploads/2017/05/login-003.png\";s:12:\"tmpl_created\";s:10:\"1494849744\";s:6:\"author\";s:9:\"Elementor\";s:3:\"url\";s:100:\"https://library.elementor.com/login-page/?utm_source=library&utm_medium=wp-dash&utm_campaign=preview\";s:4:\"type\";s:4:\"page\";s:7:\"subtype\";s:4:\"page\";s:4:\"tags\";s:2:\"[]\";s:10:\"menu_order\";s:3:\"122\";s:16:\"popularity_index\";s:3:\"335\";s:11:\"trend_index\";s:3:\"317\";s:6:\"is_pro\";s:1:\"1\";s:17:\"has_page_settings\";s:1:\"0\";}i:422;a:14:{s:2:\"id\";s:4:\"1748\";s:5:\"title\";s:12:\"Login Page 2\";s:9:\"thumbnail\";s:70:\"https://library.elementor.com/wp-content/uploads/2017/05/login-001.png\";s:12:\"tmpl_created\";s:10:\"1494849742\";s:6:\"author\";s:9:\"Elementor\";s:3:\"url\";s:102:\"https://library.elementor.com/login-page-2/?utm_source=library&utm_medium=wp-dash&utm_campaign=preview\";s:4:\"type\";s:4:\"page\";s:7:\"subtype\";s:4:\"page\";s:4:\"tags\";s:2:\"[]\";s:10:\"menu_order\";s:3:\"123\";s:16:\"popularity_index\";s:3:\"205\";s:11:\"trend_index\";s:3:\"284\";s:6:\"is_pro\";s:1:\"1\";s:17:\"has_page_settings\";s:1:\"0\";}i:423;a:14:{s:2:\"id\";s:4:\"3963\";s:5:\"title\";s:32:\"Restaurant Site &#8211; Homepage\";s:9:\"thumbnail\";s:76:\"https://library.elementor.com/wp-content/uploads/2018/01/R.HomepageThumb.png\";s:12:\"tmpl_created\";s:10:\"1516284821\";s:6:\"author\";s:9:\"Elementor\";s:3:\"url\";s:114:\"https://library.elementor.com/restaurant-site-homepage/?utm_source=library&utm_medium=wp-dash&utm_campaign=preview\";s:4:\"type\";s:4:\"page\";s:7:\"subtype\";s:4:\"page\";s:4:\"tags\";s:109:\"[\"bar\",\"cafe\",\"cooking\",\"drink\",\"events\",\"fast food\",\"Food\",\"menu\",\"modern\",\"reservation\",\"Shop\",\"snack bar\"]\";s:10:\"menu_order\";s:3:\"124\";s:16:\"popularity_index\";s:3:\"189\";s:11:\"trend_index\";s:3:\"247\";s:6:\"is_pro\";s:1:\"1\";s:17:\"has_page_settings\";s:1:\"0\";}i:424;a:14:{s:2:\"id\";s:4:\"3969\";s:5:\"title\";s:28:\"Restaurant Site &#8211; Menu\";s:9:\"thumbnail\";s:72:\"https://library.elementor.com/wp-content/uploads/2018/01/R.MenuThumb.png\";s:12:\"tmpl_created\";s:10:\"1516284829\";s:6:\"author\";s:9:\"Elementor\";s:3:\"url\";s:110:\"https://library.elementor.com/restaurant-site-menu/?utm_source=library&utm_medium=wp-dash&utm_campaign=preview\";s:4:\"type\";s:4:\"page\";s:7:\"subtype\";s:4:\"page\";s:4:\"tags\";s:109:\"[\"bar\",\"cafe\",\"cooking\",\"drink\",\"events\",\"fast food\",\"Food\",\"menu\",\"modern\",\"reservation\",\"Shop\",\"snack bar\"]\";s:10:\"menu_order\";s:3:\"125\";s:16:\"popularity_index\";s:3:\"349\";s:11:\"trend_index\";s:3:\"313\";s:6:\"is_pro\";s:1:\"1\";s:17:\"has_page_settings\";s:1:\"0\";}i:425;a:14:{s:2:\"id\";s:4:\"3966\";s:5:\"title\";s:29:\"Restaurant Site &#8211; About\";s:9:\"thumbnail\";s:77:\"https://library.elementor.com/wp-content/uploads/2018/01/R.AboutThumb.png.png\";s:12:\"tmpl_created\";s:10:\"1516284839\";s:6:\"author\";s:9:\"Elementor\";s:3:\"url\";s:111:\"https://library.elementor.com/restaurant-site-about/?utm_source=library&utm_medium=wp-dash&utm_campaign=preview\";s:4:\"type\";s:4:\"page\";s:7:\"subtype\";s:4:\"page\";s:4:\"tags\";s:109:\"[\"bar\",\"cafe\",\"cooking\",\"drink\",\"events\",\"fast food\",\"Food\",\"menu\",\"modern\",\"reservation\",\"Shop\",\"snack bar\"]\";s:10:\"menu_order\";s:3:\"126\";s:16:\"popularity_index\";s:3:\"209\";s:11:\"trend_index\";s:3:\"263\";s:6:\"is_pro\";s:1:\"1\";s:17:\"has_page_settings\";s:1:\"0\";}i:426;a:14:{s:2:\"id\";s:4:\"3972\";s:5:\"title\";s:31:\"Restaurant Site &#8211; Contact\";s:9:\"thumbnail\";s:75:\"https://library.elementor.com/wp-content/uploads/2018/01/R.ContactThumb.png\";s:12:\"tmpl_created\";s:10:\"1516284847\";s:6:\"author\";s:9:\"Elementor\";s:3:\"url\";s:113:\"https://library.elementor.com/restaurant-site-contact/?utm_source=library&utm_medium=wp-dash&utm_campaign=preview\";s:4:\"type\";s:4:\"page\";s:7:\"subtype\";s:4:\"page\";s:4:\"tags\";s:109:\"[\"bar\",\"cafe\",\"cooking\",\"drink\",\"events\",\"fast food\",\"Food\",\"menu\",\"modern\",\"reservation\",\"Shop\",\"snack bar\"]\";s:10:\"menu_order\";s:3:\"127\";s:16:\"popularity_index\";s:3:\"307\";s:11:\"trend_index\";s:3:\"236\";s:6:\"is_pro\";s:1:\"1\";s:17:\"has_page_settings\";s:1:\"0\";}i:427;a:14:{s:2:\"id\";s:4:\"2080\";s:5:\"title\";s:27:\"Ski Resort &#8211; Homepage\";s:9:\"thumbnail\";s:81:\"https://library.elementor.com/wp-content/uploads/2017/10/Ski-Resort-Home-Page.png\";s:12:\"tmpl_created\";s:10:\"1508161124\";s:6:\"author\";s:9:\"Elementor\";s:3:\"url\";s:109:\"https://library.elementor.com/ski-resort-homepage/?utm_source=library&utm_medium=wp-dash&utm_campaign=preview\";s:4:\"type\";s:4:\"page\";s:7:\"subtype\";s:4:\"page\";s:4:\"tags\";s:2:\"[]\";s:10:\"menu_order\";s:3:\"128\";s:16:\"popularity_index\";s:3:\"264\";s:11:\"trend_index\";s:3:\"335\";s:6:\"is_pro\";s:1:\"1\";s:17:\"has_page_settings\";s:1:\"0\";}i:428;a:14:{s:2:\"id\";s:4:\"2088\";s:5:\"title\";s:24:\"Ski Resort &#8211; About\";s:9:\"thumbnail\";s:77:\"https://library.elementor.com/wp-content/uploads/2017/10/Ski-Resort-About.png\";s:12:\"tmpl_created\";s:10:\"1508161129\";s:6:\"author\";s:9:\"Elementor\";s:3:\"url\";s:106:\"https://library.elementor.com/ski-resort-about/?utm_source=library&utm_medium=wp-dash&utm_campaign=preview\";s:4:\"type\";s:4:\"page\";s:7:\"subtype\";s:4:\"page\";s:4:\"tags\";s:2:\"[]\";s:10:\"menu_order\";s:3:\"129\";s:16:\"popularity_index\";s:3:\"351\";s:11:\"trend_index\";s:3:\"306\";s:6:\"is_pro\";s:1:\"1\";s:17:\"has_page_settings\";s:1:\"0\";}i:429;a:14:{s:2:\"id\";s:4:\"2085\";s:5:\"title\";s:27:\"Ski Resort &#8211; Services\";s:9:\"thumbnail\";s:80:\"https://library.elementor.com/wp-content/uploads/2017/10/Ski-Resort-Services.png\";s:12:\"tmpl_created\";s:10:\"1508161134\";s:6:\"author\";s:9:\"Elementor\";s:3:\"url\";s:109:\"https://library.elementor.com/ski-resort-services/?utm_source=library&utm_medium=wp-dash&utm_campaign=preview\";s:4:\"type\";s:4:\"page\";s:7:\"subtype\";s:4:\"page\";s:4:\"tags\";s:2:\"[]\";s:10:\"menu_order\";s:3:\"130\";s:16:\"popularity_index\";s:3:\"395\";s:11:\"trend_index\";s:3:\"395\";s:6:\"is_pro\";s:1:\"1\";s:17:\"has_page_settings\";s:1:\"0\";}i:430;a:14:{s:2:\"id\";s:4:\"2462\";s:5:\"title\";s:23:\"Architect &#8211; About\";s:9:\"thumbnail\";s:80:\"https://library.elementor.com/wp-content/uploads/2017/10/architect-–-about.png\";s:12:\"tmpl_created\";s:10:\"1508243317\";s:6:\"author\";s:9:\"Elementor\";s:3:\"url\";s:105:\"https://library.elementor.com/architect-about/?utm_source=library&utm_medium=wp-dash&utm_campaign=preview\";s:4:\"type\";s:4:\"page\";s:7:\"subtype\";s:4:\"page\";s:4:\"tags\";s:2:\"[]\";s:10:\"menu_order\";s:3:\"131\";s:16:\"popularity_index\";s:3:\"277\";s:11:\"trend_index\";s:3:\"302\";s:6:\"is_pro\";s:1:\"1\";s:17:\"has_page_settings\";s:1:\"0\";}i:431;a:14:{s:2:\"id\";s:4:\"2362\";s:5:\"title\";s:26:\"Architect &#8211; Projects\";s:9:\"thumbnail\";s:79:\"https://library.elementor.com/wp-content/uploads/2017/10/Architect-Projects.png\";s:12:\"tmpl_created\";s:10:\"1508243335\";s:6:\"author\";s:9:\"Elementor\";s:3:\"url\";s:108:\"https://library.elementor.com/architect-projects/?utm_source=library&utm_medium=wp-dash&utm_campaign=preview\";s:4:\"type\";s:4:\"page\";s:7:\"subtype\";s:4:\"page\";s:4:\"tags\";s:2:\"[]\";s:10:\"menu_order\";s:3:\"132\";s:16:\"popularity_index\";s:3:\"344\";s:11:\"trend_index\";s:3:\"308\";s:6:\"is_pro\";s:1:\"1\";s:17:\"has_page_settings\";s:1:\"0\";}i:432;a:14:{s:2:\"id\";s:3:\"614\";s:5:\"title\";s:25:\"Architect &#8211; Contact\";s:9:\"thumbnail\";s:78:\"https://library.elementor.com/wp-content/uploads/2016/12/architect-contact.jpg\";s:12:\"tmpl_created\";s:10:\"1481549169\";s:6:\"author\";s:9:\"Elementor\";s:3:\"url\";s:107:\"https://library.elementor.com/architect-contact/?utm_source=library&utm_medium=wp-dash&utm_campaign=preview\";s:4:\"type\";s:4:\"page\";s:7:\"subtype\";s:4:\"page\";s:4:\"tags\";s:2:\"[]\";s:10:\"menu_order\";s:3:\"133\";s:16:\"popularity_index\";s:3:\"178\";s:11:\"trend_index\";s:3:\"287\";s:6:\"is_pro\";s:1:\"1\";s:17:\"has_page_settings\";s:1:\"0\";}i:433;a:14:{s:2:\"id\";s:4:\"2126\";s:5:\"title\";s:37:\"Construction Company &#8211; Homepage\";s:9:\"thumbnail\";s:91:\"https://library.elementor.com/wp-content/uploads/2017/10/Construction-Company-Home-Page.png\";s:12:\"tmpl_created\";s:10:\"1508325849\";s:6:\"author\";s:9:\"Elementor\";s:3:\"url\";s:119:\"https://library.elementor.com/construction-company-homepage/?utm_source=library&utm_medium=wp-dash&utm_campaign=preview\";s:4:\"type\";s:4:\"page\";s:7:\"subtype\";s:4:\"page\";s:4:\"tags\";s:2:\"[]\";s:10:\"menu_order\";s:3:\"134\";s:16:\"popularity_index\";s:3:\"234\";s:11:\"trend_index\";s:3:\"246\";s:6:\"is_pro\";s:1:\"1\";s:17:\"has_page_settings\";s:1:\"0\";}i:434;a:14:{s:2:\"id\";s:4:\"2129\";s:5:\"title\";s:34:\"Construction Company &#8211; About\";s:9:\"thumbnail\";s:87:\"https://library.elementor.com/wp-content/uploads/2017/10/Construction-Company-About.png\";s:12:\"tmpl_created\";s:10:\"1508325881\";s:6:\"author\";s:9:\"Elementor\";s:3:\"url\";s:116:\"https://library.elementor.com/construction-company-about/?utm_source=library&utm_medium=wp-dash&utm_campaign=preview\";s:4:\"type\";s:4:\"page\";s:7:\"subtype\";s:4:\"page\";s:4:\"tags\";s:2:\"[]\";s:10:\"menu_order\";s:3:\"135\";s:16:\"popularity_index\";s:3:\"261\";s:11:\"trend_index\";s:3:\"293\";s:6:\"is_pro\";s:1:\"1\";s:17:\"has_page_settings\";s:1:\"0\";}i:435;a:14:{s:2:\"id\";s:4:\"2135\";s:5:\"title\";s:36:\"Construction Company &#8211; Contact\";s:9:\"thumbnail\";s:89:\"https://library.elementor.com/wp-content/uploads/2017/10/Construction-Company-Contact.png\";s:12:\"tmpl_created\";s:10:\"1508325922\";s:6:\"author\";s:9:\"Elementor\";s:3:\"url\";s:118:\"https://library.elementor.com/construction-company-contact/?utm_source=library&utm_medium=wp-dash&utm_campaign=preview\";s:4:\"type\";s:4:\"page\";s:7:\"subtype\";s:4:\"page\";s:4:\"tags\";s:2:\"[]\";s:10:\"menu_order\";s:3:\"136\";s:16:\"popularity_index\";s:3:\"289\";s:11:\"trend_index\";s:3:\"310\";s:6:\"is_pro\";s:1:\"1\";s:17:\"has_page_settings\";s:1:\"0\";}i:436;a:14:{s:2:\"id\";s:4:\"2094\";s:5:\"title\";s:28:\"Plants Shop &#8211; Homepage\";s:9:\"thumbnail\";s:77:\"https://library.elementor.com/wp-content/uploads/2017/11/Plants-Shop-Home.png\";s:12:\"tmpl_created\";s:10:\"1509621053\";s:6:\"author\";s:9:\"Elementor\";s:3:\"url\";s:110:\"https://library.elementor.com/plants-shop-homepage/?utm_source=library&utm_medium=wp-dash&utm_campaign=preview\";s:4:\"type\";s:4:\"page\";s:7:\"subtype\";s:4:\"page\";s:4:\"tags\";s:2:\"[]\";s:10:\"menu_order\";s:3:\"137\";s:16:\"popularity_index\";s:3:\"251\";s:11:\"trend_index\";s:3:\"265\";s:6:\"is_pro\";s:1:\"1\";s:17:\"has_page_settings\";s:1:\"0\";}i:437;a:14:{s:2:\"id\";s:4:\"2120\";s:5:\"title\";s:25:\"Plants Shop &#8211; About\";s:9:\"thumbnail\";s:78:\"https://library.elementor.com/wp-content/uploads/2017/11/Plants-Shop-About.png\";s:12:\"tmpl_created\";s:10:\"1509631820\";s:6:\"author\";s:9:\"Elementor\";s:3:\"url\";s:107:\"https://library.elementor.com/plants-shop-about/?utm_source=library&utm_medium=wp-dash&utm_campaign=preview\";s:4:\"type\";s:4:\"page\";s:7:\"subtype\";s:4:\"page\";s:4:\"tags\";s:2:\"[]\";s:10:\"menu_order\";s:3:\"138\";s:16:\"popularity_index\";s:3:\"286\";s:11:\"trend_index\";s:3:\"298\";s:6:\"is_pro\";s:1:\"1\";s:17:\"has_page_settings\";s:1:\"0\";}i:438;a:14:{s:2:\"id\";s:4:\"3619\";s:5:\"title\";s:31:\"Snowboard Site &#8211; Homepage\";s:9:\"thumbnail\";s:65:\"https://library.elementor.com/wp-content/uploads/2017/12/home.png\";s:12:\"tmpl_created\";s:10:\"1513513137\";s:6:\"author\";s:9:\"Elementor\";s:3:\"url\";s:113:\"https://library.elementor.com/snowboard-site-homepage/?utm_source=library&utm_medium=wp-dash&utm_campaign=preview\";s:4:\"type\";s:4:\"page\";s:7:\"subtype\";s:4:\"page\";s:4:\"tags\";s:2:\"[]\";s:10:\"menu_order\";s:3:\"139\";s:16:\"popularity_index\";s:3:\"260\";s:11:\"trend_index\";s:3:\"273\";s:6:\"is_pro\";s:1:\"1\";s:17:\"has_page_settings\";s:1:\"0\";}i:439;a:14:{s:2:\"id\";s:4:\"3632\";s:5:\"title\";s:31:\"Snowboard Site &#8211; Services\";s:9:\"thumbnail\";s:62:\"https://library.elementor.com/wp-content/uploads/2017/12/2.png\";s:12:\"tmpl_created\";s:10:\"1513513171\";s:6:\"author\";s:9:\"Elementor\";s:3:\"url\";s:113:\"https://library.elementor.com/snowboard-site-services/?utm_source=library&utm_medium=wp-dash&utm_campaign=preview\";s:4:\"type\";s:4:\"page\";s:7:\"subtype\";s:4:\"page\";s:4:\"tags\";s:2:\"[]\";s:10:\"menu_order\";s:3:\"140\";s:16:\"popularity_index\";s:3:\"226\";s:11:\"trend_index\";s:3:\"224\";s:6:\"is_pro\";s:1:\"1\";s:17:\"has_page_settings\";s:1:\"0\";}i:440;a:14:{s:2:\"id\";s:4:\"3626\";s:5:\"title\";s:30:\"Snowboard Site &#8211; Contact\";s:9:\"thumbnail\";s:62:\"https://library.elementor.com/wp-content/uploads/2017/12/3.png\";s:12:\"tmpl_created\";s:10:\"1513513193\";s:6:\"author\";s:9:\"Elementor\";s:3:\"url\";s:112:\"https://library.elementor.com/snowboard-site-contact/?utm_source=library&utm_medium=wp-dash&utm_campaign=preview\";s:4:\"type\";s:4:\"page\";s:7:\"subtype\";s:4:\"page\";s:4:\"tags\";s:2:\"[]\";s:10:\"menu_order\";s:3:\"141\";s:16:\"popularity_index\";s:3:\"231\";s:11:\"trend_index\";s:3:\"238\";s:6:\"is_pro\";s:1:\"1\";s:17:\"has_page_settings\";s:1:\"0\";}i:441;a:14:{s:2:\"id\";s:4:\"3153\";s:5:\"title\";s:14:\"Halloween Pack\";s:9:\"thumbnail\";s:70:\"https://library.elementor.com/wp-content/uploads/2017/10/halloween.png\";s:12:\"tmpl_created\";s:10:\"1508950132\";s:6:\"author\";s:9:\"Elementor\";s:3:\"url\";s:104:\"https://library.elementor.com/halloween-pack/?utm_source=library&utm_medium=wp-dash&utm_campaign=preview\";s:4:\"type\";s:4:\"page\";s:7:\"subtype\";s:4:\"page\";s:4:\"tags\";s:2:\"[]\";s:10:\"menu_order\";s:3:\"142\";s:16:\"popularity_index\";s:3:\"404\";s:11:\"trend_index\";s:3:\"433\";s:6:\"is_pro\";s:1:\"1\";s:17:\"has_page_settings\";s:1:\"0\";}i:442;a:14:{s:2:\"id\";s:4:\"3338\";s:5:\"title\";s:31:\"Black Friday &#8211; Nature Set\";s:9:\"thumbnail\";s:75:\"https://library.elementor.com/wp-content/uploads/2017/11/black-friday-1.png\";s:12:\"tmpl_created\";s:10:\"1511203351\";s:6:\"author\";s:9:\"Elementor\";s:3:\"url\";s:113:\"https://library.elementor.com/black-friday-nature-set/?utm_source=library&utm_medium=wp-dash&utm_campaign=preview\";s:4:\"type\";s:4:\"page\";s:7:\"subtype\";s:4:\"page\";s:4:\"tags\";s:2:\"[]\";s:10:\"menu_order\";s:3:\"143\";s:16:\"popularity_index\";s:3:\"387\";s:11:\"trend_index\";s:3:\"423\";s:6:\"is_pro\";s:1:\"1\";s:17:\"has_page_settings\";s:1:\"0\";}i:443;a:14:{s:2:\"id\";s:4:\"3339\";s:5:\"title\";s:35:\"Black Friday &#8211; Pop-Styled Set\";s:9:\"thumbnail\";s:75:\"https://library.elementor.com/wp-content/uploads/2017/11/black-friday-2.png\";s:12:\"tmpl_created\";s:10:\"1511203636\";s:6:\"author\";s:9:\"Elementor\";s:3:\"url\";s:117:\"https://library.elementor.com/black-friday-pop-styled-set/?utm_source=library&utm_medium=wp-dash&utm_campaign=preview\";s:4:\"type\";s:4:\"page\";s:7:\"subtype\";s:4:\"page\";s:4:\"tags\";s:2:\"[]\";s:10:\"menu_order\";s:3:\"144\";s:16:\"popularity_index\";s:3:\"350\";s:11:\"trend_index\";s:3:\"390\";s:6:\"is_pro\";s:1:\"1\";s:17:\"has_page_settings\";s:1:\"0\";}i:444;a:14:{s:2:\"id\";s:4:\"3335\";s:5:\"title\";s:31:\"Black Friday &#8211; Retail Set\";s:9:\"thumbnail\";s:75:\"https://library.elementor.com/wp-content/uploads/2017/11/black-friday-4.png\";s:12:\"tmpl_created\";s:10:\"1511203246\";s:6:\"author\";s:9:\"Elementor\";s:3:\"url\";s:113:\"https://library.elementor.com/black-friday-retail-set/?utm_source=library&utm_medium=wp-dash&utm_campaign=preview\";s:4:\"type\";s:4:\"page\";s:7:\"subtype\";s:4:\"page\";s:4:\"tags\";s:2:\"[]\";s:10:\"menu_order\";s:3:\"145\";s:16:\"popularity_index\";s:3:\"348\";s:11:\"trend_index\";s:1:\"0\";s:6:\"is_pro\";s:1:\"1\";s:17:\"has_page_settings\";s:1:\"0\";}i:445;a:14:{s:2:\"id\";s:4:\"3340\";s:5:\"title\";s:41:\"Black Friday &#8211; Software Product Set\";s:9:\"thumbnail\";s:75:\"https://library.elementor.com/wp-content/uploads/2017/11/black-friday-3.png\";s:12:\"tmpl_created\";s:10:\"1511203713\";s:6:\"author\";s:9:\"Elementor\";s:3:\"url\";s:123:\"https://library.elementor.com/black-friday-software-product-set/?utm_source=library&utm_medium=wp-dash&utm_campaign=preview\";s:4:\"type\";s:4:\"page\";s:7:\"subtype\";s:4:\"page\";s:4:\"tags\";s:2:\"[]\";s:10:\"menu_order\";s:3:\"146\";s:16:\"popularity_index\";s:3:\"343\";s:11:\"trend_index\";s:3:\"400\";s:6:\"is_pro\";s:1:\"1\";s:17:\"has_page_settings\";s:1:\"0\";}i:446;a:14:{s:2:\"id\";s:4:\"9425\";s:5:\"title\";s:38:\"Black Friday &#8211;  80&#8217;s style\";s:9:\"thumbnail\";s:73:\"https://library.elementor.com/wp-content/uploads/2018/11/unnamed-file.png\";s:12:\"tmpl_created\";s:10:\"1542901234\";s:6:\"author\";s:9:\"Elementor\";s:3:\"url\";s:112:\"https://library.elementor.com/black-friday-80s-style/?utm_source=library&utm_medium=wp-dash&utm_campaign=preview\";s:4:\"type\";s:4:\"page\";s:7:\"subtype\";s:4:\"page\";s:4:\"tags\";s:2:\"[]\";s:10:\"menu_order\";s:3:\"147\";s:16:\"popularity_index\";s:3:\"353\";s:11:\"trend_index\";s:3:\"325\";s:6:\"is_pro\";s:1:\"1\";s:17:\"has_page_settings\";s:1:\"0\";}i:447;a:14:{s:2:\"id\";s:4:\"3517\";s:5:\"title\";s:27:\"Christmas &#8211; Gift Shop\";s:9:\"thumbnail\";s:70:\"https://library.elementor.com/wp-content/uploads/2017/12/XmasThumb.png\";s:12:\"tmpl_created\";s:10:\"1513877937\";s:6:\"author\";s:9:\"Elementor\";s:3:\"url\";s:109:\"https://library.elementor.com/christmas-gift-shop/?utm_source=library&utm_medium=wp-dash&utm_campaign=preview\";s:4:\"type\";s:4:\"page\";s:7:\"subtype\";s:4:\"page\";s:4:\"tags\";s:2:\"[]\";s:10:\"menu_order\";s:3:\"148\";s:16:\"popularity_index\";s:3:\"379\";s:11:\"trend_index\";s:3:\"431\";s:6:\"is_pro\";s:1:\"1\";s:17:\"has_page_settings\";s:1:\"0\";}i:448;a:14:{s:2:\"id\";s:4:\"3734\";s:5:\"title\";s:28:\"Christmas &#8211; Car Agency\";s:9:\"thumbnail\";s:73:\"https://library.elementor.com/wp-content/uploads/2017/12/cover-lib-v3.png\";s:12:\"tmpl_created\";s:10:\"1514197794\";s:6:\"author\";s:9:\"Elementor\";s:3:\"url\";s:110:\"https://library.elementor.com/christmas-car-agency/?utm_source=library&utm_medium=wp-dash&utm_campaign=preview\";s:4:\"type\";s:4:\"page\";s:7:\"subtype\";s:4:\"page\";s:4:\"tags\";s:2:\"[]\";s:10:\"menu_order\";s:3:\"149\";s:16:\"popularity_index\";s:3:\"388\";s:11:\"trend_index\";s:3:\"354\";s:6:\"is_pro\";s:1:\"1\";s:17:\"has_page_settings\";s:1:\"0\";}i:449;a:14:{s:2:\"id\";s:4:\"3764\";s:5:\"title\";s:33:\"Christmas &#8211; Interior Design\";s:9:\"thumbnail\";s:73:\"https://library.elementor.com/wp-content/uploads/2017/12/cover-lib-v6.png\";s:12:\"tmpl_created\";s:10:\"1514198234\";s:6:\"author\";s:9:\"Elementor\";s:3:\"url\";s:115:\"https://library.elementor.com/christmas-interior-design/?utm_source=library&utm_medium=wp-dash&utm_campaign=preview\";s:4:\"type\";s:4:\"page\";s:7:\"subtype\";s:4:\"page\";s:4:\"tags\";s:2:\"[]\";s:10:\"menu_order\";s:3:\"150\";s:16:\"popularity_index\";s:3:\"375\";s:11:\"trend_index\";s:3:\"343\";s:6:\"is_pro\";s:1:\"1\";s:17:\"has_page_settings\";s:1:\"0\";}i:450;a:14:{s:2:\"id\";s:4:\"3565\";s:5:\"title\";s:27:\"Christmas &#8211; Tree Shop\";s:9:\"thumbnail\";s:74:\"https://library.elementor.com/wp-content/uploads/2017/12/XmasTreeThumb.png\";s:12:\"tmpl_created\";s:10:\"1514204382\";s:6:\"author\";s:9:\"Elementor\";s:3:\"url\";s:109:\"https://library.elementor.com/christmas-tree-shop/?utm_source=library&utm_medium=wp-dash&utm_campaign=preview\";s:4:\"type\";s:4:\"page\";s:7:\"subtype\";s:4:\"page\";s:4:\"tags\";s:2:\"[]\";s:10:\"menu_order\";s:3:\"151\";s:16:\"popularity_index\";s:3:\"355\";s:11:\"trend_index\";s:3:\"371\";s:6:\"is_pro\";s:1:\"1\";s:17:\"has_page_settings\";s:1:\"0\";}i:451;a:14:{s:2:\"id\";s:4:\"3862\";s:5:\"title\";s:35:\"Christmas &#8211; Design Conference\";s:9:\"thumbnail\";s:63:\"https://library.elementor.com/wp-content/uploads/2017/12/q1.png\";s:12:\"tmpl_created\";s:10:\"1514206745\";s:6:\"author\";s:9:\"Elementor\";s:3:\"url\";s:117:\"https://library.elementor.com/christmas-design-conference/?utm_source=library&utm_medium=wp-dash&utm_campaign=preview\";s:4:\"type\";s:4:\"page\";s:7:\"subtype\";s:4:\"page\";s:4:\"tags\";s:2:\"[]\";s:10:\"menu_order\";s:3:\"152\";s:16:\"popularity_index\";s:3:\"324\";s:11:\"trend_index\";s:3:\"347\";s:6:\"is_pro\";s:1:\"1\";s:17:\"has_page_settings\";s:1:\"0\";}i:452;a:14:{s:2:\"id\";s:4:\"3777\";s:5:\"title\";s:39:\"Christmas &#8211; Snowboard Competition\";s:9:\"thumbnail\";s:73:\"https://library.elementor.com/wp-content/uploads/2017/12/cover-lib-v7.png\";s:12:\"tmpl_created\";s:10:\"1514205420\";s:6:\"author\";s:9:\"Elementor\";s:3:\"url\";s:121:\"https://library.elementor.com/christmas-snowboard-competition/?utm_source=library&utm_medium=wp-dash&utm_campaign=preview\";s:4:\"type\";s:4:\"page\";s:7:\"subtype\";s:4:\"page\";s:4:\"tags\";s:2:\"[]\";s:10:\"menu_order\";s:3:\"153\";s:16:\"popularity_index\";s:3:\"342\";s:11:\"trend_index\";s:3:\"339\";s:6:\"is_pro\";s:1:\"1\";s:17:\"has_page_settings\";s:1:\"0\";}i:453;a:14:{s:2:\"id\";s:3:\"420\";s:5:\"title\";s:11:\"Hero UI Kit\";s:9:\"thumbnail\";s:81:\"https://library.elementor.com/wp-content/uploads/2016/09/library-ui-kit-cover.png\";s:12:\"tmpl_created\";s:10:\"1475067229\";s:6:\"author\";s:9:\"Elementor\";s:3:\"url\";s:101:\"https://library.elementor.com/hero-ui-kit/?utm_source=library&utm_medium=wp-dash&utm_campaign=preview\";s:4:\"type\";s:4:\"page\";s:7:\"subtype\";s:4:\"page\";s:4:\"tags\";s:2:\"[]\";s:10:\"menu_order\";s:3:\"154\";s:16:\"popularity_index\";s:2:\"14\";s:11:\"trend_index\";s:2:\"21\";s:6:\"is_pro\";s:1:\"0\";s:17:\"has_page_settings\";s:1:\"0\";}}}', 'no');
INSERT INTO `wpblog_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(369, 'category_children', 'a:0:{}', 'yes'),
(180, 'elementor_version', '2.3.8', 'yes'),
(183, 'elementor_remote_info_feed_data', 'a:3:{i:0;a:5:{s:5:\"title\";s:37:\"Jupiter Theme Rebuilt Using Elementor\";s:7:\"excerpt\";s:124:\"Jupiter Theme joins the Elementor family and releases its new Jupiter X theme, rebuilt from the ground up using Elementor.\r\n\";s:7:\"created\";s:10:\"1544630452\";s:5:\"badge\";s:0:\"\";s:3:\"url\";s:109:\"https://elementor.com/blog/jupiter-x/?utm_source=wp-overview-widget&utm_medium=wp-dash&utm_campaign=news-feed\";}i:1;a:5:{s:5:\"title\";s:57:\"Social Media - The Secret Sauce for Web Design in 2019​\";s:7:\"excerpt\";s:189:\"It\'s time we designers admit that social media influences our work. Finally, browsing through my Facebook wall is something I don\'t have to hide from my boss anymore! (insert emoji here)​\";s:7:\"created\";s:10:\"1544520824\";s:5:\"badge\";s:0:\"\";s:3:\"url\";s:123:\"https://elementor.com/blog/social-media-web-design/?utm_source=wp-overview-widget&utm_medium=wp-dash&utm_campaign=news-feed\";}i:2;a:5:{s:5:\"title\";s:62:\"Introducing Action Links: Connect With Your Clients Seamlessly\";s:7:\"excerpt\";s:134:\"This week, we\'re releasing useful features that will help you connect with your site visitors, as well as analyze and track user data.\";s:7:\"created\";s:10:\"1543932850\";s:5:\"badge\";s:3:\"New\";s:3:\"url\";s:124:\"https://elementor.com/blog/introducing-action-links/?utm_source=wp-overview-widget&utm_medium=wp-dash&utm_campaign=news-feed\";}}', 'no'),
(191, 'elementor_scheme_typography', 'a:4:{i:1;a:2:{s:11:\"font_family\";s:6:\"Roboto\";s:11:\"font_weight\";s:3:\"600\";}i:2;a:2:{s:11:\"font_family\";s:11:\"Roboto Slab\";s:11:\"font_weight\";s:3:\"400\";}i:3;a:2:{s:11:\"font_family\";s:6:\"Roboto\";s:11:\"font_weight\";s:3:\"400\";}i:4;a:2:{s:11:\"font_family\";s:6:\"Roboto\";s:11:\"font_weight\";s:3:\"500\";}}', 'yes'),
(190, 'elementor_scheme_color', 'a:4:{i:1;s:7:\"#6ec1e4\";i:2;s:7:\"#54595f\";i:3;s:7:\"#7a7a7a\";i:4;s:7:\"#61ce70\";}', 'yes'),
(192, 'elementor_scheme_color-picker', 'a:8:{i:1;s:7:\"#6ec1e4\";i:2;s:7:\"#54595f\";i:3;s:7:\"#7a7a7a\";i:4;s:7:\"#61ce70\";i:5;s:7:\"#4054b2\";i:6;s:7:\"#23a455\";i:7;s:4:\"#000\";i:8;s:4:\"#fff\";}', 'yes'),
(197, '_elementor_global_css', 'a:4:{s:4:\"time\";i:1546622593;s:5:\"fonts\";a:2:{i:0;s:6:\"Roboto\";i:13;s:11:\"Roboto Slab\";}s:6:\"status\";s:4:\"file\";i:0;b:0;}', 'yes'),
(206, 'nav_menu_options', 'a:1:{s:8:\"auto_add\";a:0:{}}', 'yes'),
(501, '_transient_jefferson_categories', '2', 'yes'),
(511, 'auto_core_update_notified', 'a:4:{s:4:\"type\";s:7:\"success\";s:5:\"email\";s:26:\"authirard.victor@gmail.com\";s:7:\"version\";s:5:\"5.0.6\";s:9:\"timestamp\";i:1567666222;}', 'no'),
(5352, '_site_transient_update_themes', 'O:8:\"stdClass\":4:{s:12:\"last_checked\";i:1568851567;s:7:\"checked\";a:4:{s:9:\"jefferson\";s:5:\"1.0.3\";s:14:\"twentynineteen\";s:3:\"1.1\";s:15:\"twentyseventeen\";s:3:\"1.9\";s:13:\"twentysixteen\";s:3:\"1.7\";}s:8:\"response\";a:3:{s:14:\"twentynineteen\";a:6:{s:5:\"theme\";s:14:\"twentynineteen\";s:11:\"new_version\";s:3:\"1.4\";s:3:\"url\";s:44:\"https://wordpress.org/themes/twentynineteen/\";s:7:\"package\";s:60:\"https://downloads.wordpress.org/theme/twentynineteen.1.4.zip\";s:8:\"requires\";s:5:\"4.9.6\";s:12:\"requires_php\";s:5:\"5.2.4\";}s:15:\"twentyseventeen\";a:6:{s:5:\"theme\";s:15:\"twentyseventeen\";s:11:\"new_version\";s:3:\"2.2\";s:3:\"url\";s:45:\"https://wordpress.org/themes/twentyseventeen/\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/theme/twentyseventeen.2.2.zip\";s:8:\"requires\";s:3:\"4.7\";s:12:\"requires_php\";s:5:\"5.2.4\";}s:13:\"twentysixteen\";a:6:{s:5:\"theme\";s:13:\"twentysixteen\";s:11:\"new_version\";s:3:\"2.0\";s:3:\"url\";s:43:\"https://wordpress.org/themes/twentysixteen/\";s:7:\"package\";s:59:\"https://downloads.wordpress.org/theme/twentysixteen.2.0.zip\";s:8:\"requires\";s:3:\"4.4\";s:12:\"requires_php\";s:5:\"5.2.4\";}}s:12:\"translations\";a:0:{}}', 'no'),
(5353, '_site_transient_update_plugins', 'O:8:\"stdClass\":5:{s:12:\"last_checked\";i:1568851568;s:7:\"checked\";a:3:{s:23:\"elementor/elementor.php\";s:5:\"2.3.8\";s:44:\"facebook-pagelike-widget/facebook_widget.php\";s:5:\"4.2.3\";s:15:\"kirki/kirki.php\";s:8:\"3.0.35.3\";}s:8:\"response\";a:3:{s:23:\"elementor/elementor.php\";O:8:\"stdClass\":12:{s:2:\"id\";s:23:\"w.org/plugins/elementor\";s:4:\"slug\";s:9:\"elementor\";s:6:\"plugin\";s:23:\"elementor/elementor.php\";s:11:\"new_version\";s:5:\"2.7.2\";s:3:\"url\";s:40:\"https://wordpress.org/plugins/elementor/\";s:7:\"package\";s:58:\"https://downloads.wordpress.org/plugin/elementor.2.7.2.zip\";s:5:\"icons\";a:3:{s:2:\"2x\";s:62:\"https://ps.w.org/elementor/assets/icon-256x256.png?rev=1427768\";s:2:\"1x\";s:54:\"https://ps.w.org/elementor/assets/icon.svg?rev=1426809\";s:3:\"svg\";s:54:\"https://ps.w.org/elementor/assets/icon.svg?rev=1426809\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:65:\"https://ps.w.org/elementor/assets/banner-1544x500.png?rev=1475479\";s:2:\"1x\";s:64:\"https://ps.w.org/elementor/assets/banner-772x250.png?rev=1475479\";}s:11:\"banners_rtl\";a:0:{}s:6:\"tested\";s:5:\"5.2.3\";s:12:\"requires_php\";s:3:\"5.4\";s:13:\"compatibility\";O:8:\"stdClass\":0:{}}s:44:\"facebook-pagelike-widget/facebook_widget.php\";O:8:\"stdClass\":12:{s:2:\"id\";s:38:\"w.org/plugins/facebook-pagelike-widget\";s:4:\"slug\";s:24:\"facebook-pagelike-widget\";s:6:\"plugin\";s:44:\"facebook-pagelike-widget/facebook_widget.php\";s:11:\"new_version\";s:3:\"5.1\";s:3:\"url\";s:55:\"https://wordpress.org/plugins/facebook-pagelike-widget/\";s:7:\"package\";s:67:\"https://downloads.wordpress.org/plugin/facebook-pagelike-widget.zip\";s:5:\"icons\";a:1:{s:2:\"1x\";s:77:\"https://ps.w.org/facebook-pagelike-widget/assets/icon-128x128.png?rev=2079670\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:79:\"https://ps.w.org/facebook-pagelike-widget/assets/banner-772x250.png?rev=2143108\";}s:11:\"banners_rtl\";a:0:{}s:6:\"tested\";s:5:\"5.2.3\";s:12:\"requires_php\";b:0;s:13:\"compatibility\";O:8:\"stdClass\":0:{}}s:15:\"kirki/kirki.php\";O:8:\"stdClass\":12:{s:2:\"id\";s:19:\"w.org/plugins/kirki\";s:4:\"slug\";s:5:\"kirki\";s:6:\"plugin\";s:15:\"kirki/kirki.php\";s:11:\"new_version\";s:6:\"3.0.45\";s:3:\"url\";s:36:\"https://wordpress.org/plugins/kirki/\";s:7:\"package\";s:55:\"https://downloads.wordpress.org/plugin/kirki.3.0.45.zip\";s:5:\"icons\";a:3:{s:2:\"2x\";s:58:\"https://ps.w.org/kirki/assets/icon-256x256.png?rev=1330852\";s:2:\"1x\";s:50:\"https://ps.w.org/kirki/assets/icon.svg?rev=1330186\";s:3:\"svg\";s:50:\"https://ps.w.org/kirki/assets/icon.svg?rev=1330186\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:61:\"https://ps.w.org/kirki/assets/banner-1544x500.png?rev=1330852\";s:2:\"1x\";s:60:\"https://ps.w.org/kirki/assets/banner-772x250.png?rev=1330852\";}s:11:\"banners_rtl\";a:0:{}s:6:\"tested\";s:5:\"5.2.3\";s:12:\"requires_php\";s:3:\"5.3\";s:13:\"compatibility\";O:8:\"stdClass\":0:{}}}s:12:\"translations\";a:0:{}s:9:\"no_update\";a:0:{}}', 'no'),
(5121, '_site_transient_update_core', 'O:8:\"stdClass\":4:{s:7:\"updates\";a:4:{i:0;O:8:\"stdClass\":10:{s:8:\"response\";s:7:\"upgrade\";s:8:\"download\";s:65:\"https://downloads.wordpress.org/release/fr_FR/wordpress-5.2.3.zip\";s:6:\"locale\";s:5:\"fr_FR\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:65:\"https://downloads.wordpress.org/release/fr_FR/wordpress-5.2.3.zip\";s:10:\"no_content\";b:0;s:11:\"new_bundled\";b:0;s:7:\"partial\";b:0;s:8:\"rollback\";b:0;}s:7:\"current\";s:5:\"5.2.3\";s:7:\"version\";s:5:\"5.2.3\";s:11:\"php_version\";s:6:\"5.6.20\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"5.0\";s:15:\"partial_version\";s:0:\"\";}i:1;O:8:\"stdClass\":10:{s:8:\"response\";s:7:\"upgrade\";s:8:\"download\";s:59:\"https://downloads.wordpress.org/release/wordpress-5.2.3.zip\";s:6:\"locale\";s:5:\"en_US\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:59:\"https://downloads.wordpress.org/release/wordpress-5.2.3.zip\";s:10:\"no_content\";s:70:\"https://downloads.wordpress.org/release/wordpress-5.2.3-no-content.zip\";s:11:\"new_bundled\";s:71:\"https://downloads.wordpress.org/release/wordpress-5.2.3-new-bundled.zip\";s:7:\"partial\";b:0;s:8:\"rollback\";b:0;}s:7:\"current\";s:5:\"5.2.3\";s:7:\"version\";s:5:\"5.2.3\";s:11:\"php_version\";s:6:\"5.6.20\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"5.0\";s:15:\"partial_version\";s:0:\"\";}i:2;O:8:\"stdClass\":11:{s:8:\"response\";s:10:\"autoupdate\";s:8:\"download\";s:59:\"https://downloads.wordpress.org/release/wordpress-5.2.3.zip\";s:6:\"locale\";s:5:\"en_US\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:59:\"https://downloads.wordpress.org/release/wordpress-5.2.3.zip\";s:10:\"no_content\";s:70:\"https://downloads.wordpress.org/release/wordpress-5.2.3-no-content.zip\";s:11:\"new_bundled\";s:71:\"https://downloads.wordpress.org/release/wordpress-5.2.3-new-bundled.zip\";s:7:\"partial\";b:0;s:8:\"rollback\";b:0;}s:7:\"current\";s:5:\"5.2.3\";s:7:\"version\";s:5:\"5.2.3\";s:11:\"php_version\";s:6:\"5.6.20\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"5.0\";s:15:\"partial_version\";s:0:\"\";s:9:\"new_files\";s:1:\"1\";}i:3;O:8:\"stdClass\":11:{s:8:\"response\";s:10:\"autoupdate\";s:8:\"download\";s:59:\"https://downloads.wordpress.org/release/wordpress-5.1.2.zip\";s:6:\"locale\";s:5:\"en_US\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:59:\"https://downloads.wordpress.org/release/wordpress-5.1.2.zip\";s:10:\"no_content\";s:70:\"https://downloads.wordpress.org/release/wordpress-5.1.2-no-content.zip\";s:11:\"new_bundled\";s:71:\"https://downloads.wordpress.org/release/wordpress-5.1.2-new-bundled.zip\";s:7:\"partial\";b:0;s:8:\"rollback\";b:0;}s:7:\"current\";s:5:\"5.1.2\";s:7:\"version\";s:5:\"5.1.2\";s:11:\"php_version\";s:5:\"5.2.4\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"5.0\";s:15:\"partial_version\";s:0:\"\";s:9:\"new_files\";s:1:\"1\";}}s:12:\"last_checked\";i:1568851565;s:15:\"version_checked\";s:5:\"5.0.6\";s:12:\"translations\";a:0:{}}', 'no');

-- --------------------------------------------------------

--
-- Structure de la table `wpblog_postmeta`
--

CREATE TABLE `wpblog_postmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `post_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci
)mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `wpblog_postmeta`
--

INSERT INTO `wpblog_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(11, 7, '_edit_lock', '1546628914:1'),
(23, 12, '_wp_attached_file', '2019/01/ridge-nebula.jpg'),
(24, 12, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1353;s:6:\"height\";i:591;s:4:\"file\";s:24:\"2019/01/ridge-nebula.jpg\";s:5:\"sizes\";a:9:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:24:\"ridge-nebula-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:24:\"ridge-nebula-300x131.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:131;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:24:\"ridge-nebula-768x335.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:335;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:25:\"ridge-nebula-1024x447.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:447;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:16:\"ccfw-single-post\";a:4:{s:4:\"file\";s:25:\"ridge-nebula-1200x591.jpg\";s:5:\"width\";i:1200;s:6:\"height\";i:591;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:18:\"ccfw-featured-post\";a:4:{s:4:\"file\";s:25:\"ridge-nebula-1353x500.jpg\";s:5:\"width\";i:1353;s:6:\"height\";i:500;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:19:\"ccfw-feature-medium\";a:4:{s:4:\"file\";s:24:\"ridge-nebula-390x255.jpg\";s:5:\"width\";i:390;s:6:\"height\";i:255;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"ccfw-hero-main\";a:4:{s:4:\"file\";s:24:\"ridge-nebula-600x393.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:393;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"ccfw-hero-mini\";a:4:{s:4:\"file\";s:24:\"ridge-nebula-285x186.jpg\";s:5:\"width\";i:285;s:6:\"height\";i:186;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(27, 7, '_thumbnail_id', '12'),
(32, 7, '_elementor_edit_mode', 'builder'),
(33, 7, '_elementor_template_type', 'post'),
(48, 18, '_thumbnail_id', '12'),
(44, 7, '_wp_page_template', 'default'),
(45, 7, '_elementor_data', '[{\"id\":\"2baca5a\",\"elType\":\"section\",\"settings\":[],\"elements\":[{\"id\":\"bfa6053\",\"elType\":\"column\",\"settings\":{\"_column_size\":100},\"elements\":[{\"id\":\"bef08aa\",\"elType\":\"widget\",\"settings\":{\"editor\":\"<p>Le Big Bang est-il le commencement du temps, ou l\'Univers existait-il avant ? Il y a moins de dix ans, une telle question aurait eu des allures de sacril\\u00e8ge. Pour les cosmologistes, une telle interrogation n\'avait tout simplement pas de sens. Imaginer une \\u00e9poque ant\\u00e9rieure au Big Bang, c\'\\u00e9tait comme chercher un point au Nord du p\\u00f4le Nord. Selon la th\\u00e9orie de la relativit\\u00e9 g\\u00e9n\\u00e9rale, un Univers en expansion doit avoir commenc\\u00e9 par un Big Bang, ce qui implique la finitude du temps, apparu simultan\\u00e9ment avec l\'espace et l\'\\u00e9nergie-mati\\u00e8re. Cette fa\\u00e7on de voir s\'est modifi\\u00e9e au cours des derni\\u00e8res ann\\u00e9es. Lors de sa naissance, l\'Univers \\u00e9tait concentr\\u00e9 en une r\\u00e9gion si minuscule que les lois de la physique quantique devaient s\'y appliquer. La relativit\\u00e9 g\\u00e9n\\u00e9rale, qui n\'est pas une th\\u00e9orie quantique, cesse d\'\\u00eatre valide \\u00e0 l\'\\u00e9chelle du Big Bang. La th\\u00e9orie des cordes, qui se d\\u00e9veloppe depuis une trentaine d\'ann\\u00e9es, est susceptible de prendre le relais en offrant une description quantique de la gravitation. Elle a r\\u00e9cemment permis de concevoir deux mod\\u00e8les cosmologiques \\u2013 le mod\\u00e8le pr\\u00e9-Big Bang et le mod\\u00e8le ekpyrotique \\u2013 d\\u00e9crivant un Univers ant\\u00e9rieur au Big Bang. Ces sc\\u00e9narios, o\\u00f9 le temps n\'a ni commencement, ni fin, pourraient avoir laiss\\u00e9 des traces observables dans le fond diffus cosmologique, le rayonnement \\u00e9mis peu apr\\u00e8s le Big Bang et que l\'on d\\u00e9tecte aujourd\'hui sous une forme fossile sur l\'ensemble du ciel.<\\/p>\",\"drop_cap\":\"yes\",\"drop_cap_primary_color\":\"#000000\"},\"elements\":[],\"widgetType\":\"text-editor\"},{\"id\":\"70276a4\",\"elType\":\"widget\",\"settings\":{\"editor\":\"<p>La volont\\u00e9 r\\u00e9cente de prendre en compte ce qui pourrait s\'\\u00eatre pass\\u00e9 avant l\'origine de l\'Univers n\'est que le dernier en date des revirements intellectuels qui se sont succ\\u00e9d\\u00e9 durant des mill\\u00e9naires. Dans toutes les cultures, les philosophes et les th\\u00e9ologiens ont \\u00e9t\\u00e9 confront\\u00e9s \\u00e0 la question du commencement des temps et de l\'origine du monde. Notre \\u00ab arbre g\\u00e9n\\u00e9alogique \\u00bb passe par les premi\\u00e8res formes de vie, la formation des \\u00e9toiles, la synth\\u00e8se des premiers \\u00e9l\\u00e9ments et remonte jusqu\'\\u00e0 l\'\\u00e9nergie qui baignait l\'espace primordial. Continue-t-il ainsi \\u00e9ternellement ou prend-t-il racine quelque part ? Les philosophes grecs ont longuement d\\u00e9battu de l\'origine du temps. Aristote d\\u00e9fendait l\'absence de commencement en invoquant le principe selon lequel rien ne surgit de rien. Si l\'Univers ne peut na\\u00eetre ex nihilo, il doit avoir toujours exist\\u00e9. Le temps devrait s\'\\u00e9tendre \\u00e9ternellement dans le pass\\u00e9 comme dans le futur. Les th\\u00e9ologiens chr\\u00e9tiens ont d\\u00e9fendu le point de vue inverse. Saint Augustin affirmait que Dieu existe en dehors de l\'espace et du temps et qu\'il est capable de les cr\\u00e9er comme il a forg\\u00e9 les autres aspects du monde. Que faisait alors Dieu avant de cr\\u00e9er le monde ? Selon saint Augustin, le temps lui-m\\u00eame faisant partie de la cr\\u00e9ation divine, il n\'y avait tout simplement pas d\'avant.<\\/p>\"},\"elements\":[],\"widgetType\":\"text-editor\"}],\"isInner\":false}],\"isInner\":false},{\"id\":\"9bd8717\",\"elType\":\"section\",\"settings\":[],\"elements\":[{\"id\":\"99d70e5\",\"elType\":\"column\",\"settings\":{\"_column_size\":100},\"elements\":[{\"id\":\"0de9edb\",\"elType\":\"widget\",\"settings\":{\"title\":\"Une \\u00e9trange homog\\u00e9n\\u00e9it\\u00e9\",\"title_color\":\"#000000\"},\"elements\":[],\"widgetType\":\"heading\"},{\"id\":\"dbe8d60\",\"elType\":\"widget\",\"settings\":{\"editor\":\"<p>La th\\u00e9orie de la relativit\\u00e9 g\\u00e9n\\u00e9rale a conduit les cosmologistes modernes \\u00e0 une conclusion tr\\u00e8s semblable. Dans ce cadre, l\'espace et le temps ne sont pas rigides et absolus, mais dynamiques et d\\u00e9form\\u00e9s par l\'influence de la mati\\u00e8re. \\u00c0 de grandes \\u00e9chelles de distance, l\'espace se courbe, s\'\\u00e9tend ou se contracte au cours du temps, en emportant avec lui la mati\\u00e8re. Au cours des ann\\u00e9es 1920, \\u00e0 la suite d\'Edwin Hubble, les astronomes ont confirm\\u00e9 que notre Univers est en expansion : les galaxies s\'\\u00e9loignent les unes des autres. Une des cons\\u00e9quences de cette expansion est que le temps ne peut s\'\\u00e9tendre ind\\u00e9finiment vers le pass\\u00e9. En projetant le film de l\'histoire cosmique \\u00e0 l\'envers, les galaxies se rapprochent les unes des autres jusqu\'\\u00e0 se rejoindre en un point infinit\\u00e9simal, nomm\\u00e9 singularit\\u00e9. Toutes les galaxies \\u2013 ou plut\\u00f4t leurs pr\\u00e9curseurs \\u2013 se retrouvent dans un volume nul. La densit\\u00e9, la temp\\u00e9rature, mais aussi la courbure de l\'espace-temps, deviennent infinies. La singularit\\u00e9 est le cataclysme ultime au-del\\u00e0 duquel nous ne pouvons plus poursuivre de g\\u00e9n\\u00e9alogie cosmique.<\\/p>\"},\"elements\":[],\"widgetType\":\"text-editor\"},{\"id\":\"3206133\",\"elType\":\"widget\",\"settings\":{\"editor\":\"<p>Ce d\\u00e9roulement soul\\u00e8ve de nombreuses questions. En particulier, il semble peu compatible avec le fait que l\'Univers apparaisse homog\\u00e8ne, \\u00e0 grande \\u00e9chelle, dans toutes les directions. Pour que le cosmos ait le m\\u00eame aspect en tout point, il faut qu\'une forme d\'interaction se soit \\u00e9tablie entre les r\\u00e9gions \\u00e9loign\\u00e9es de l\'espace afin que leurs propri\\u00e9t\\u00e9s se soient homog\\u00e9n\\u00e9is\\u00e9es. Or cela contredit les donn\\u00e9es de l\'expansion cosmologique. La lumi\\u00e8re a \\u00e9t\\u00e9 lib\\u00e9r\\u00e9e il y a 13,7 milliards d\'ann\\u00e9es (c\'est le fond diffus cosmologique observ\\u00e9 aujourd\'hui dans le domaine des micro-ondes). Dans toutes les directions, on trouve des galaxies distantes de plus de 13 milliards d\'ann\\u00e9es-lumi\\u00e8re. Il existe ainsi des galaxies, dans des directions oppos\\u00e9es, qui sont s\\u00e9par\\u00e9es par plus de 25 milliards d\'ann\\u00e9es-lumi\\u00e8re. Par cons\\u00e9quent, ces r\\u00e9gions n\'ont jamais \\u00e9t\\u00e9 en contact : elles n\'ont pas eu le temps d\'\\u00e9changer de la lumi\\u00e8re, ni a fortiori de la mati\\u00e8re. Leur densit\\u00e9, leur temp\\u00e9rature et autres propri\\u00e9t\\u00e9s n\'ont pas pu \\u00eatre homog\\u00e9n\\u00e9is\\u00e9es.<\\/p>\"},\"elements\":[],\"widgetType\":\"text-editor\"}],\"isInner\":false}],\"isInner\":false}]'),
(49, 18, '_elementor_edit_mode', 'builder'),
(50, 18, '_elementor_template_type', 'post'),
(51, 18, '_wp_page_template', 'default'),
(52, 18, '_elementor_data', '[{\"id\":\"2baca5a\",\"elType\":\"section\",\"settings\":[],\"elements\":[{\"id\":\"bfa6053\",\"elType\":\"column\",\"settings\":{\"_column_size\":100},\"elements\":[{\"id\":\"bef08aa\",\"elType\":\"widget\",\"settings\":{\"editor\":\"<p>Le Big Bang est-il le commencement du temps, ou l\'Univers existait-il avant ? Il y a moins de dix ans, une telle question aurait eu des allures de sacril\\u00e8ge. Pour les cosmologistes, une telle interrogation n\'avait tout simplement pas de sens. Imaginer une \\u00e9poque ant\\u00e9rieure au Big Bang, c\'\\u00e9tait comme chercher un point au Nord du p\\u00f4le Nord. Selon la th\\u00e9orie de la relativit\\u00e9 g\\u00e9n\\u00e9rale, un Univers en expansion doit avoir commenc\\u00e9 par un Big Bang, ce qui implique la finitude du temps, apparu simultan\\u00e9ment avec l\'espace et l\'\\u00e9nergie-mati\\u00e8re. Cette fa\\u00e7on de voir s\'est modifi\\u00e9e au cours des derni\\u00e8res ann\\u00e9es. Lors de sa naissance, l\'Univers \\u00e9tait concentr\\u00e9 en une r\\u00e9gion si minuscule que les lois de la physique quantique devaient s\'y appliquer. La relativit\\u00e9 g\\u00e9n\\u00e9rale, qui n\'est pas une th\\u00e9orie quantique, cesse d\'\\u00eatre valide \\u00e0 l\'\\u00e9chelle du Big Bang. La th\\u00e9orie des cordes, qui se d\\u00e9veloppe depuis une trentaine d\'ann\\u00e9es, est susceptible de prendre le relais en offrant une description quantique de la gravitation. Elle a r\\u00e9cemment permis de concevoir deux mod\\u00e8les cosmologiques \\u2013 le mod\\u00e8le pr\\u00e9-Big Bang et le mod\\u00e8le ekpyrotique \\u2013 d\\u00e9crivant un Univers ant\\u00e9rieur au Big Bang. Ces sc\\u00e9narios, o\\u00f9 le temps n\'a ni commencement, ni fin, pourraient avoir laiss\\u00e9 des traces observables dans le fond diffus cosmologique, le rayonnement \\u00e9mis peu apr\\u00e8s le Big Bang et que l\'on d\\u00e9tecte aujourd\'hui sous une forme fossile sur l\'ensemble du ciel.<\\/p>\",\"drop_cap\":\"yes\"},\"elements\":[],\"widgetType\":\"text-editor\"},{\"id\":\"70276a4\",\"elType\":\"widget\",\"settings\":{\"editor\":\"<p>La volont\\u00e9 r\\u00e9cente de prendre en compte ce qui pourrait s\'\\u00eatre pass\\u00e9 avant l\'origine de l\'Univers n\'est que le dernier en date des revirements intellectuels qui se sont succ\\u00e9d\\u00e9 durant des mill\\u00e9naires. Dans toutes les cultures, les philosophes et les th\\u00e9ologiens ont \\u00e9t\\u00e9 confront\\u00e9s \\u00e0 la question du commencement des temps et de l\'origine du monde. Notre \\u00ab arbre g\\u00e9n\\u00e9alogique \\u00bb passe par les premi\\u00e8res formes de vie, la formation des \\u00e9toiles, la synth\\u00e8se des premiers \\u00e9l\\u00e9ments et remonte jusqu\'\\u00e0 l\'\\u00e9nergie qui baignait l\'espace primordial. Continue-t-il ainsi \\u00e9ternellement ou prend-t-il racine quelque part ? Les philosophes grecs ont longuement d\\u00e9battu de l\'origine du temps. Aristote d\\u00e9fendait l\'absence de commencement en invoquant le principe selon lequel rien ne surgit de rien. Si l\'Univers ne peut na\\u00eetre ex nihilo, il doit avoir toujours exist\\u00e9. Le temps devrait s\'\\u00e9tendre \\u00e9ternellement dans le pass\\u00e9 comme dans le futur. Les th\\u00e9ologiens chr\\u00e9tiens ont d\\u00e9fendu le point de vue inverse. Saint Augustin affirmait que Dieu existe en dehors de l\'espace et du temps et qu\'il est capable de les cr\\u00e9er comme il a forg\\u00e9 les autres aspects du monde. Que faisait alors Dieu avant de cr\\u00e9er le monde ? Selon saint Augustin, le temps lui-m\\u00eame faisant partie de la cr\\u00e9ation divine, il n\'y avait tout simplement pas d\'avant.<\\/p>\"},\"elements\":[],\"widgetType\":\"text-editor\"}],\"isInner\":false}],\"isInner\":false},{\"id\":\"9bd8717\",\"elType\":\"section\",\"settings\":[],\"elements\":[{\"id\":\"99d70e5\",\"elType\":\"column\",\"settings\":{\"_column_size\":100},\"elements\":[{\"id\":\"0de9edb\",\"elType\":\"widget\",\"settings\":{\"title\":\"Une \\u00e9trange homog\\u00e9n\\u00e9it\\u00e9\",\"title_color\":\"#000000\"},\"elements\":[],\"widgetType\":\"heading\"},{\"id\":\"dbe8d60\",\"elType\":\"widget\",\"settings\":{\"editor\":\"<p>La th\\u00e9orie de la relativit\\u00e9 g\\u00e9n\\u00e9rale a conduit les cosmologistes modernes \\u00e0 une conclusion tr\\u00e8s semblable. Dans ce cadre, l\'espace et le temps ne sont pas rigides et absolus, mais dynamiques et d\\u00e9form\\u00e9s par l\'influence de la mati\\u00e8re. \\u00c0 de grandes \\u00e9chelles de distance, l\'espace se courbe, s\'\\u00e9tend ou se contracte au cours du temps, en emportant avec lui la mati\\u00e8re. Au cours des ann\\u00e9es 1920, \\u00e0 la suite d\'Edwin Hubble, les astronomes ont confirm\\u00e9 que notre Univers est en expansion : les galaxies s\'\\u00e9loignent les unes des autres. Une des cons\\u00e9quences de cette expansion est que le temps ne peut s\'\\u00e9tendre ind\\u00e9finiment vers le pass\\u00e9. En projetant le film de l\'histoire cosmique \\u00e0 l\'envers, les galaxies se rapprochent les unes des autres jusqu\'\\u00e0 se rejoindre en un point infinit\\u00e9simal, nomm\\u00e9 singularit\\u00e9. Toutes les galaxies \\u2013 ou plut\\u00f4t leurs pr\\u00e9curseurs \\u2013 se retrouvent dans un volume nul. La densit\\u00e9, la temp\\u00e9rature, mais aussi la courbure de l\'espace-temps, deviennent infinies. La singularit\\u00e9 est le cataclysme ultime au-del\\u00e0 duquel nous ne pouvons plus poursuivre de g\\u00e9n\\u00e9alogie cosmique.<\\/p>\"},\"elements\":[],\"widgetType\":\"text-editor\"},{\"id\":\"3206133\",\"elType\":\"widget\",\"settings\":{\"editor\":\"<p>Ce d\\u00e9roulement soul\\u00e8ve de nombreuses questions. En particulier, il semble peu compatible avec le fait que l\'Univers apparaisse homog\\u00e8ne, \\u00e0 grande \\u00e9chelle, dans toutes les directions. Pour que le cosmos ait le m\\u00eame aspect en tout point, il faut qu\'une forme d\'interaction se soit \\u00e9tablie entre les r\\u00e9gions \\u00e9loign\\u00e9es de l\'espace afin que leurs propri\\u00e9t\\u00e9s se soient homog\\u00e9n\\u00e9is\\u00e9es. Or cela contredit les donn\\u00e9es de l\'expansion cosmologique. La lumi\\u00e8re a \\u00e9t\\u00e9 lib\\u00e9r\\u00e9e il y a 13,7 milliards d\'ann\\u00e9es (c\'est le fond diffus cosmologique observ\\u00e9 aujourd\'hui dans le domaine des micro-ondes). Dans toutes les directions, on trouve des galaxies distantes de plus de 13 milliards d\'ann\\u00e9es-lumi\\u00e8re. Il existe ainsi des galaxies, dans des directions oppos\\u00e9es, qui sont s\\u00e9par\\u00e9es par plus de 25 milliards d\'ann\\u00e9es-lumi\\u00e8re. Par cons\\u00e9quent, ces r\\u00e9gions n\'ont jamais \\u00e9t\\u00e9 en contact : elles n\'ont pas eu le temps d\'\\u00e9changer de la lumi\\u00e8re, ni a fortiori de la mati\\u00e8re. Leur densit\\u00e9, leur temp\\u00e9rature et autres propri\\u00e9t\\u00e9s n\'ont pas pu \\u00eatre homog\\u00e9n\\u00e9is\\u00e9es.<\\/p>\"},\"elements\":[],\"widgetType\":\"text-editor\"}],\"isInner\":false}],\"isInner\":false}]'),
(53, 7, '_elementor_version', '0.4'),
(66, 7, '_elementor_css', 'a:4:{s:4:\"time\";i:1546622593;s:5:\"fonts\";a:0:{}s:6:\"status\";s:4:\"file\";i:0;s:0:\"\";}'),
(60, 19, '_thumbnail_id', '12'),
(61, 19, '_elementor_edit_mode', 'builder'),
(62, 19, '_elementor_template_type', 'post'),
(63, 19, '_wp_page_template', 'default'),
(64, 19, '_elementor_data', '[{\"id\":\"2baca5a\",\"elType\":\"section\",\"settings\":[],\"elements\":[{\"id\":\"bfa6053\",\"elType\":\"column\",\"settings\":{\"_column_size\":100},\"elements\":[{\"id\":\"bef08aa\",\"elType\":\"widget\",\"settings\":{\"editor\":\"<p>Le Big Bang est-il le commencement du temps, ou l\'Univers existait-il avant ? Il y a moins de dix ans, une telle question aurait eu des allures de sacril\\u00e8ge. Pour les cosmologistes, une telle interrogation n\'avait tout simplement pas de sens. Imaginer une \\u00e9poque ant\\u00e9rieure au Big Bang, c\'\\u00e9tait comme chercher un point au Nord du p\\u00f4le Nord. Selon la th\\u00e9orie de la relativit\\u00e9 g\\u00e9n\\u00e9rale, un Univers en expansion doit avoir commenc\\u00e9 par un Big Bang, ce qui implique la finitude du temps, apparu simultan\\u00e9ment avec l\'espace et l\'\\u00e9nergie-mati\\u00e8re. Cette fa\\u00e7on de voir s\'est modifi\\u00e9e au cours des derni\\u00e8res ann\\u00e9es. Lors de sa naissance, l\'Univers \\u00e9tait concentr\\u00e9 en une r\\u00e9gion si minuscule que les lois de la physique quantique devaient s\'y appliquer. La relativit\\u00e9 g\\u00e9n\\u00e9rale, qui n\'est pas une th\\u00e9orie quantique, cesse d\'\\u00eatre valide \\u00e0 l\'\\u00e9chelle du Big Bang. La th\\u00e9orie des cordes, qui se d\\u00e9veloppe depuis une trentaine d\'ann\\u00e9es, est susceptible de prendre le relais en offrant une description quantique de la gravitation. Elle a r\\u00e9cemment permis de concevoir deux mod\\u00e8les cosmologiques \\u2013 le mod\\u00e8le pr\\u00e9-Big Bang et le mod\\u00e8le ekpyrotique \\u2013 d\\u00e9crivant un Univers ant\\u00e9rieur au Big Bang. Ces sc\\u00e9narios, o\\u00f9 le temps n\'a ni commencement, ni fin, pourraient avoir laiss\\u00e9 des traces observables dans le fond diffus cosmologique, le rayonnement \\u00e9mis peu apr\\u00e8s le Big Bang et que l\'on d\\u00e9tecte aujourd\'hui sous une forme fossile sur l\'ensemble du ciel.<\\/p>\",\"drop_cap\":\"yes\",\"drop_cap_primary_color\":\"#000000\"},\"elements\":[],\"widgetType\":\"text-editor\"},{\"id\":\"70276a4\",\"elType\":\"widget\",\"settings\":{\"editor\":\"<p>La volont\\u00e9 r\\u00e9cente de prendre en compte ce qui pourrait s\'\\u00eatre pass\\u00e9 avant l\'origine de l\'Univers n\'est que le dernier en date des revirements intellectuels qui se sont succ\\u00e9d\\u00e9 durant des mill\\u00e9naires. Dans toutes les cultures, les philosophes et les th\\u00e9ologiens ont \\u00e9t\\u00e9 confront\\u00e9s \\u00e0 la question du commencement des temps et de l\'origine du monde. Notre \\u00ab arbre g\\u00e9n\\u00e9alogique \\u00bb passe par les premi\\u00e8res formes de vie, la formation des \\u00e9toiles, la synth\\u00e8se des premiers \\u00e9l\\u00e9ments et remonte jusqu\'\\u00e0 l\'\\u00e9nergie qui baignait l\'espace primordial. Continue-t-il ainsi \\u00e9ternellement ou prend-t-il racine quelque part ? Les philosophes grecs ont longuement d\\u00e9battu de l\'origine du temps. Aristote d\\u00e9fendait l\'absence de commencement en invoquant le principe selon lequel rien ne surgit de rien. Si l\'Univers ne peut na\\u00eetre ex nihilo, il doit avoir toujours exist\\u00e9. Le temps devrait s\'\\u00e9tendre \\u00e9ternellement dans le pass\\u00e9 comme dans le futur. Les th\\u00e9ologiens chr\\u00e9tiens ont d\\u00e9fendu le point de vue inverse. Saint Augustin affirmait que Dieu existe en dehors de l\'espace et du temps et qu\'il est capable de les cr\\u00e9er comme il a forg\\u00e9 les autres aspects du monde. Que faisait alors Dieu avant de cr\\u00e9er le monde ? Selon saint Augustin, le temps lui-m\\u00eame faisant partie de la cr\\u00e9ation divine, il n\'y avait tout simplement pas d\'avant.<\\/p>\"},\"elements\":[],\"widgetType\":\"text-editor\"}],\"isInner\":false}],\"isInner\":false},{\"id\":\"9bd8717\",\"elType\":\"section\",\"settings\":[],\"elements\":[{\"id\":\"99d70e5\",\"elType\":\"column\",\"settings\":{\"_column_size\":100},\"elements\":[{\"id\":\"0de9edb\",\"elType\":\"widget\",\"settings\":{\"title\":\"Une \\u00e9trange homog\\u00e9n\\u00e9it\\u00e9\",\"title_color\":\"#000000\"},\"elements\":[],\"widgetType\":\"heading\"},{\"id\":\"dbe8d60\",\"elType\":\"widget\",\"settings\":{\"editor\":\"<p>La th\\u00e9orie de la relativit\\u00e9 g\\u00e9n\\u00e9rale a conduit les cosmologistes modernes \\u00e0 une conclusion tr\\u00e8s semblable. Dans ce cadre, l\'espace et le temps ne sont pas rigides et absolus, mais dynamiques et d\\u00e9form\\u00e9s par l\'influence de la mati\\u00e8re. \\u00c0 de grandes \\u00e9chelles de distance, l\'espace se courbe, s\'\\u00e9tend ou se contracte au cours du temps, en emportant avec lui la mati\\u00e8re. Au cours des ann\\u00e9es 1920, \\u00e0 la suite d\'Edwin Hubble, les astronomes ont confirm\\u00e9 que notre Univers est en expansion : les galaxies s\'\\u00e9loignent les unes des autres. Une des cons\\u00e9quences de cette expansion est que le temps ne peut s\'\\u00e9tendre ind\\u00e9finiment vers le pass\\u00e9. En projetant le film de l\'histoire cosmique \\u00e0 l\'envers, les galaxies se rapprochent les unes des autres jusqu\'\\u00e0 se rejoindre en un point infinit\\u00e9simal, nomm\\u00e9 singularit\\u00e9. Toutes les galaxies \\u2013 ou plut\\u00f4t leurs pr\\u00e9curseurs \\u2013 se retrouvent dans un volume nul. La densit\\u00e9, la temp\\u00e9rature, mais aussi la courbure de l\'espace-temps, deviennent infinies. La singularit\\u00e9 est le cataclysme ultime au-del\\u00e0 duquel nous ne pouvons plus poursuivre de g\\u00e9n\\u00e9alogie cosmique.<\\/p>\"},\"elements\":[],\"widgetType\":\"text-editor\"},{\"id\":\"3206133\",\"elType\":\"widget\",\"settings\":{\"editor\":\"<p>Ce d\\u00e9roulement soul\\u00e8ve de nombreuses questions. En particulier, il semble peu compatible avec le fait que l\'Univers apparaisse homog\\u00e8ne, \\u00e0 grande \\u00e9chelle, dans toutes les directions. Pour que le cosmos ait le m\\u00eame aspect en tout point, il faut qu\'une forme d\'interaction se soit \\u00e9tablie entre les r\\u00e9gions \\u00e9loign\\u00e9es de l\'espace afin que leurs propri\\u00e9t\\u00e9s se soient homog\\u00e9n\\u00e9is\\u00e9es. Or cela contredit les donn\\u00e9es de l\'expansion cosmologique. La lumi\\u00e8re a \\u00e9t\\u00e9 lib\\u00e9r\\u00e9e il y a 13,7 milliards d\'ann\\u00e9es (c\'est le fond diffus cosmologique observ\\u00e9 aujourd\'hui dans le domaine des micro-ondes). Dans toutes les directions, on trouve des galaxies distantes de plus de 13 milliards d\'ann\\u00e9es-lumi\\u00e8re. Il existe ainsi des galaxies, dans des directions oppos\\u00e9es, qui sont s\\u00e9par\\u00e9es par plus de 25 milliards d\'ann\\u00e9es-lumi\\u00e8re. Par cons\\u00e9quent, ces r\\u00e9gions n\'ont jamais \\u00e9t\\u00e9 en contact : elles n\'ont pas eu le temps d\'\\u00e9changer de la lumi\\u00e8re, ni a fortiori de la mati\\u00e8re. Leur densit\\u00e9, leur temp\\u00e9rature et autres propri\\u00e9t\\u00e9s n\'ont pas pu \\u00eatre homog\\u00e9n\\u00e9is\\u00e9es.<\\/p>\"},\"elements\":[],\"widgetType\":\"text-editor\"}],\"isInner\":false}],\"isInner\":false}]'),
(65, 19, '_elementor_version', '0.4'),
(200, 44, '_edit_lock', '1546772116:2'),
(203, 46, '_wp_attached_file', '2019/01/skyrimwallpaper.jpeg'),
(204, 46, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1920;s:6:\"height\";i:1079;s:4:\"file\";s:28:\"2019/01/skyrimwallpaper.jpeg\";s:5:\"sizes\";a:9:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:28:\"skyrimwallpaper-150x150.jpeg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:28:\"skyrimwallpaper-300x169.jpeg\";s:5:\"width\";i:300;s:6:\"height\";i:169;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:28:\"skyrimwallpaper-768x432.jpeg\";s:5:\"width\";i:768;s:6:\"height\";i:432;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:29:\"skyrimwallpaper-1024x575.jpeg\";s:5:\"width\";i:1024;s:6:\"height\";i:575;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:16:\"ccfw-single-post\";a:4:{s:4:\"file\";s:29:\"skyrimwallpaper-1200x700.jpeg\";s:5:\"width\";i:1200;s:6:\"height\";i:700;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:18:\"ccfw-featured-post\";a:4:{s:4:\"file\";s:29:\"skyrimwallpaper-1678x500.jpeg\";s:5:\"width\";i:1678;s:6:\"height\";i:500;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:19:\"ccfw-feature-medium\";a:4:{s:4:\"file\";s:28:\"skyrimwallpaper-390x255.jpeg\";s:5:\"width\";i:390;s:6:\"height\";i:255;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"ccfw-hero-main\";a:4:{s:4:\"file\";s:28:\"skyrimwallpaper-600x393.jpeg\";s:5:\"width\";i:600;s:6:\"height\";i:393;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"ccfw-hero-mini\";a:4:{s:4:\"file\";s:28:\"skyrimwallpaper-285x186.jpeg\";s:5:\"width\";i:285;s:6:\"height\";i:186;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(210, 44, '_elementor_edit_mode', 'builder'),
(211, 44, '_elementor_template_type', 'post'),
(207, 44, '_thumbnail_id', '46'),
(257, 53, '_menu_item_object_id', '19'),
(213, 44, '_encloseme', '1'),
(255, 53, '_menu_item_type', 'taxonomy'),
(215, 44, '_encloseme', '1'),
(216, 44, '_wp_page_template', 'default');
INSERT INTO `wpblog_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(217, 44, '_elementor_data', '[{\"id\":\"99228c3\",\"elType\":\"section\",\"settings\":[],\"elements\":[{\"id\":\"0208550\",\"elType\":\"column\",\"settings\":{\"_column_size\":100},\"elements\":[{\"id\":\"c07ceee\",\"elType\":\"section\",\"settings\":{\"structure\":\"20\"},\"elements\":[{\"id\":\"cb40b78\",\"elType\":\"column\",\"settings\":{\"_column_size\":50,\"_inline_size\":null},\"elements\":[{\"id\":\"726366c\",\"elType\":\"widget\",\"settings\":{\"editor\":\"<p><a title=\\\"A filou, filou et demi\\\" href=\\\"https:\\/\\/lagbt.wiwiland.net\\/index.php?title=A_filou,_filou_et_demi\\\">A filou, filou et demi<\\/a> \\u2014 Aniis Noru<br \\/><a title=\\\"Anciens r\\u00e9cits des Dwemers\\\" href=\\\"https:\\/\\/lagbt.wiwiland.net\\/index.php?title=Anciens_r%C3%A9cits_des_Dwemers\\\">Anciens r\\u00e9cits des Dwemers<\\/a> \\u2014 Marobar Sul<br \\/><a title=\\\"Armures d\'ossements\\\" href=\\\"https:\\/\\/lagbt.wiwiland.net\\/index.php?title=Armures_d%27ossements\\\">Armures d\'ossements<\\/a> \\u2014 Tavi Dromio<br \\/><a title=\\\"Barenziah, la Vraie Histoire\\\" href=\\\"https:\\/\\/lagbt.wiwiland.net\\/index.php?title=Barenziah,_la_Vraie_Histoire\\\">Barenziah, la Vraie Histoire<\\/a> \\u2014 Plitinius M\\u00e9ro<br \\/><a title=\\\"Comment l\'Orsinium Est Pass\\u00e9 aux Mains des Orques\\\" href=\\\"https:\\/\\/lagbt.wiwiland.net\\/index.php?title=Comment_l%27Orsinium_Est_Pass%C3%A9_aux_Mains_des_Orques\\\">Comment l\'Orsinium Est Pass\\u00e9 aux Mains des Orques<\\/a> \\u2014 M\\u00e9nyna Gsost<br \\/><a title=\\\"Cr\\u00e9puscule sur Sentinelle\\\" href=\\\"https:\\/\\/lagbt.wiwiland.net\\/index.php?title=Cr%C3%A9puscule_sur_Sentinelle\\\">Cr\\u00e9puscule sur Sentinelle<\\/a> \\u2014 Boali<br \\/><a title=\\\"De Rerum Dirennis\\\" href=\\\"https:\\/\\/lagbt.wiwiland.net\\/index.php?title=De_Rerum_Dirennis\\\">De Rerum Dirennis<\\/a> \\u2014 Vorian Direnni<br \\/><a title=\\\"Dernier fourreau d\'Akrash\\\" href=\\\"https:\\/\\/lagbt.wiwiland.net\\/index.php?title=Dernier_fourreau_d%27Akrash\\\">Dernier fourreau d\'Akrash<\\/a> \\u2014 Tabar Vunqidh<br \\/><a title=\\\"Feyfolken\\\" href=\\\"https:\\/\\/lagbt.wiwiland.net\\/index.php?title=Feyfolken\\\">Feyfolken<\\/a> \\u2014 <a title=\\\"Waughin Jarth\\\" href=\\\"https:\\/\\/lagbt.wiwiland.net\\/index.php?title=Waughin_Jarth\\\">Waughin Jarth<\\/a><br \\/><a title=\\\"Fjori et Holgeir\\\" href=\\\"https:\\/\\/lagbt.wiwiland.net\\/index.php?title=Fjori_et_Holgeir\\\">Fjori et Holgeir<\\/a><br \\/><a title=\\\"Glace et chitine\\\" href=\\\"https:\\/\\/lagbt.wiwiland.net\\/index.php?title=Glace_et_chitine\\\">Glace et chitine<\\/a> \\u2014 Pletius Spatec<br \\/><a title=\\\"Incident \\u00e0 Necrom\\\" href=\\\"https:\\/\\/lagbt.wiwiland.net\\/index.php?title=Incident_%C3%A0_Necrom\\\">Incident \\u00e0 Necrom<\\/a> \\u2014 Jonquilla Bothe<br \\/><a title=\\\"Kolb et le dragon\\\" href=\\\"https:\\/\\/lagbt.wiwiland.net\\/index.php?title=Kolb_et_le_dragon\\\">Kolb et le dragon<\\/a><br \\/><a title=\\\"L\'Arri\\u00e8re-Garde\\\" href=\\\"https:\\/\\/lagbt.wiwiland.net\\/index.php?title=L%27Arri%C3%A8re-Garde\\\">L\'Arri\\u00e8re-Garde<\\/a> \\u2014 Tenace Mourl<br \\/><a title=\\\"L\'Envers de l\'Endroit\\\" href=\\\"https:\\/\\/lagbt.wiwiland.net\\/index.php?title=L%27Envers_de_l%27Endroit\\\">L\'Envers de l\'Endroit<\\/a> \\u2014 Yaqut Tawashi<br \\/><a title=\\\"L\'Espoir de R\\u00e9doran\\\" href=\\\"https:\\/\\/lagbt.wiwiland.net\\/index.php?title=L%27Espoir_de_R%C3%A9doran\\\">L\'Espoir de R\\u00e9doran<\\/a> \\u2014 Turiul Nirith<br \\/><a title=\\\"L\'exode\\\" href=\\\"https:\\/\\/lagbt.wiwiland.net\\/index.php?title=L%27exode\\\">L\'exode<\\/a> \\u2014 Waughin Jarth<br \\/><a title=\\\"L\'homme \\u00e0 la hache\\\" href=\\\"https:\\/\\/lagbt.wiwiland.net\\/index.php?title=L%27homme_%C3%A0_la_hache\\\">L\'homme \\u00e0 la hache<\\/a><br \\/><a title=\\\"La cabane dans les bois\\\" href=\\\"https:\\/\\/lagbt.wiwiland.net\\/index.php?title=La_cabane_dans_les_bois\\\">La cabane dans les bois<\\/a> \\u2014 Mogen, fils de Molag<br \\/><a title=\\\"La Chambre Close\\\" href=\\\"https:\\/\\/lagbt.wiwiland.net\\/index.php?title=La_Chambre_Close\\\">La Chambre Close<\\/a> \\u2014 Porbert Lyttumly<br \\/><a title=\\\"La Danse du Feu\\\" href=\\\"https:\\/\\/lagbt.wiwiland.net\\/index.php?title=La_Danse_du_Feu\\\">La Danse du Feu<\\/a> \\u2014 <a title=\\\"Waughin Jarth\\\" href=\\\"https:\\/\\/lagbt.wiwiland.net\\/index.php?title=Waughin_Jarth\\\">Waughin Jarth<\\/a><br \\/><a title=\\\"La derni\\u00e8re le\\u00e7on\\\" href=\\\"https:\\/\\/lagbt.wiwiland.net\\/index.php?title=La_derni%C3%A8re_le%C3%A7on\\\">La derni\\u00e8re le\\u00e7on<\\/a> \\u2014 Aegrothius Goth<br \\/><a title=\\\"La Dot de l\'Ombre\\\" href=\\\"https:\\/\\/lagbt.wiwiland.net\\/index.php?title=La_Dot_de_l%27Ombre\\\">La Dot de l\'Ombre<\\/a> \\u2014 Voltha gra-Yamwort<br \\/><a title=\\\"La femme du b\\u00fbcheron\\\" href=\\\"https:\\/\\/lagbt.wiwiland.net\\/index.php?title=La_femme_du_b%C3%BBcheron\\\">La femme du b\\u00fbcheron<\\/a> \\u2014 Mogen, fils de Molag<br \\/><a title=\\\"La Fl\\u00e8che Noire\\\" href=\\\"https:\\/\\/lagbt.wiwiland.net\\/index.php?title=La_Fl%C3%A8che_Noire\\\">La Fl\\u00e8che Noire<\\/a> \\u2014 Gorgic Guine<br \\/><a title=\\\"La Le\\u00e7on de Tir\\\" href=\\\"https:\\/\\/lagbt.wiwiland.net\\/index.php?title=La_Le%C3%A7on_de_Tir\\\">La Le\\u00e7on de Tir<\\/a> \\u2014 Alla Llaleth<br \\/><a title=\\\"La M\\u00e9lodie du Poison\\\" href=\\\"https:\\/\\/lagbt.wiwiland.net\\/index.php?title=La_M%C3%A9lodie_du_Poison\\\">La M\\u00e9lodie du Poison<\\/a> \\u2014 Bristin Xel<br \\/><a title=\\\"La vie d\'Eslaf Erol\\\" href=\\\"https:\\/\\/lagbt.wiwiland.net\\/index.php?title=La_vie_d%27Eslaf_Erol\\\">La vie d\'Eslaf Erol<\\/a> \\u2014 Reven<br \\/><a title=\\\"Le Balafr\\u00e9\\\" href=\\\"https:\\/\\/lagbt.wiwiland.net\\/index.php?title=Le_Balafr%C3%A9\\\">Le Balafr\\u00e9<\\/a> \\u2014 Artise Dralen<br \\/><a title=\\\"Le D\\u00e9fi de l\'Armurier\\\" href=\\\"https:\\/\\/lagbt.wiwiland.net\\/index.php?title=Le_D%C3%A9fi_de_l%27Armurier\\\">Le D\\u00e9fi de l\'Armurier<\\/a> \\u2014 Mymophonus<br \\/><a title=\\\"Le G\\u00e2teau et le Diamant\\\" href=\\\"https:\\/\\/lagbt.wiwiland.net\\/index.php?title=Le_G%C3%A2teau_et_le_Diamant\\\">Le G\\u00e2teau et le Diamant<\\/a> \\u2014 Athyn Muendil<br \\/><a title=\\\"Le Miroir\\\" href=\\\"https:\\/\\/lagbt.wiwiland.net\\/index.php?title=Le_Miroir\\\">Le Miroir<\\/a> \\u2014 Berdier Wreans<br \\/><a title=\\\"Le Myst\\u00e8re de la Princesse Talara\\\" href=\\\"https:\\/\\/lagbt.wiwiland.net\\/index.php?title=Le_Myst%C3%A8re_de_la_Princesse_Talara\\\">Le Myst\\u00e8re de la Princesse Talara<\\/a> \\u2014 Mera Llykith<br \\/><a title=\\\"Le prince des mendiants\\\" href=\\\"https:\\/\\/lagbt.wiwiland.net\\/index.php?title=Le_prince_des_mendiants\\\">Le prince des mendiants<\\/a><br \\/><a title=\\\"Le R\\u00e9cit Argonien\\\" href=\\\"https:\\/\\/lagbt.wiwiland.net\\/index.php?title=Le_R%C3%A9cit_Argonien\\\">Le R\\u00e9cit Argonien<\\/a> \\u2014 Waughin Jarth<br \\/><a title=\\\"Le r\\u00e9cit de Hallgerd\\\" href=\\\"https:\\/\\/lagbt.wiwiland.net\\/index.php?title=Le_r%C3%A9cit_de_Hallgerd\\\">Le r\\u00e9cit de Hallgerd<\\/a> \\u2014 Tavi Dromio<br \\/><a title=\\\"Le Ruban d\'Or du M\\u00e9rite\\\" href=\\\"https:\\/\\/lagbt.wiwiland.net\\/index.php?title=Le_Ruban_d%27Or_du_M%C3%A9rite\\\">Le Ruban d\'Or du M\\u00e9rite<\\/a> \\u2014 Ampyrian Brum<br \\/><a title=\\\"Le Traquenard\\\" href=\\\"https:\\/\\/lagbt.wiwiland.net\\/index.php?title=Le_Traquenard\\\">Le Traquenard<\\/a><br \\/><a title=\\\"Les errements de Destin\\\" href=\\\"https:\\/\\/lagbt.wiwiland.net\\/index.php?title=Les_errements_de_Destin\\\">Les errements de Destin<\\/a> \\u2014 Zylmoc Golge<br \\/><a title=\\\"Les r\\u00e9fugi\\u00e9s\\\" href=\\\"https:\\/\\/lagbt.wiwiland.net\\/index.php?title=Les_r%C3%A9fugi%C3%A9s\\\">Les r\\u00e9fugi\\u00e9s<\\/a> \\u2014 Geros Albreigh<br \\/><a title=\\\"Les Ruines de Kemel-Ze\\\" href=\\\"https:\\/\\/lagbt.wiwiland.net\\/index.php?title=Les_Ruines_de_Kemel-Ze\\\">Les Ruines de Kemel-Ze<\\/a> \\u2014 Rolard Nordssen<br \\/><a title=\\\"Mort d\'un vagabond\\\" href=\\\"https:\\/\\/lagbt.wiwiland.net\\/index.php?title=Mort_d%27un_vagabond\\\">Mort d\'un vagabond<\\/a><br \\/><a title=\\\"Ombres d\\u00e9rob\\u00e9es\\\" href=\\\"https:\\/\\/lagbt.wiwiland.net\\/index.php?title=Ombres_d%C3%A9rob%C3%A9es\\\">Ombres d\\u00e9rob\\u00e9es<\\/a> \\u2014 Waughin Jarth<br \\/><a title=\\\"Palla\\\" href=\\\"https:\\/\\/lagbt.wiwiland.net\\/index.php?title=Palla\\\">Palla<\\/a> \\u2014 Vojne Mierstyyd<br \\/><a title=\\\"Respiration aquatique (Livre)\\\" href=\\\"https:\\/\\/lagbt.wiwiland.net\\/index.php?title=Respiration_aquatique_(Livre)\\\">Respiration aquatique<\\/a> \\u2014 Haliel Myrm<br \\/><a title=\\\"Sang immortel\\\" href=\\\"https:\\/\\/lagbt.wiwiland.net\\/index.php?title=Sang_immortel\\\">Sang immortel<\\/a><br \\/><a title=\\\"Sombre Tragedie\\\" href=\\\"https:\\/\\/lagbt.wiwiland.net\\/index.php?title=Sombre_Tragedie\\\">Sombre Tragedie<\\/a><br \\/><a title=\\\"Trois voleurs\\\" href=\\\"https:\\/\\/lagbt.wiwiland.net\\/index.php?title=Trois_voleurs\\\">Trois voleurs<\\/a><br \\/><a title=\\\"Un jeu au d\\u00eener\\\" href=\\\"https:\\/\\/lagbt.wiwiland.net\\/index.php?title=Un_jeu_au_d%C3%AEner\\\">Un jeu au d\\u00eener<\\/a><br \\/><a title=\\\"Vernaccus et Bourlor\\\" href=\\\"https:\\/\\/lagbt.wiwiland.net\\/index.php?title=Vernaccus_et_Bourlor\\\">Vernaccus et Bourlor<\\/a> \\u2014 Tavi Dromio<br \\/><a title=\\\"Voleur de vertu\\\" href=\\\"https:\\/\\/lagbt.wiwiland.net\\/index.php?title=Voleur_de_vertu\\\">Voleur de vertu<\\/a><br \\/><span id=\\\"Guides_&amp;_instructions\\\"><\\/span><span id=\\\"Guides_.26_instructions\\\" class=\\\"mw-headline\\\">Guides &amp; instructions<br \\/><\\/span><a title=\\\"Aux quatre coins du monde, Volume XI : Solitude\\\" href=\\\"https:\\/\\/lagbt.wiwiland.net\\/index.php?title=Aux_quatre_coins_du_monde,_Volume_XI_:_Solitude\\\">Aux quatre coins du monde, Volume XI : Solitude<\\/a> \\u2014 Spatior Munius<br \\/><a title=\\\"Bestiaire d\'Herbane : automates\\\" href=\\\"https:\\/\\/lagbt.wiwiland.net\\/index.php?title=Bestiaire_d%27Herbane_:_automates\\\">Bestiaire d\'Herbane : automates<\\/a> \\u2014 Herbane<br \\/><a title=\\\"Bestiaire d\'Herbane : harfreuses\\\" href=\\\"https:\\/\\/lagbt.wiwiland.net\\/index.php?title=Bestiaire_d%27Herbane_:_harfreuses\\\">Bestiaire d\'Herbane : harfreuses<\\/a> \\u2014 Herbane<br \\/><a title=\\\"Bestiaire d\'Herbane : les spectres de glace\\\" href=\\\"https:\\/\\/lagbt.wiwiland.net\\/index.php?title=Bestiaire_d%27Herbane_:_les_spectres_de_glace\\\">Bestiaire d\'Herbane : les spectres de glace<\\/a> \\u2014 Herbane<br \\/><a title=\\\"Blancherive : le guide du gentilhomme\\\" href=\\\"https:\\/\\/lagbt.wiwiland.net\\/index.php?title=Blancherive_:_le_guide_du_gentilhomme\\\">Blancherive : le guide du gentilhomme<\\/a> \\u2014 Mikael le barde<br \\/><a title=\\\"Comment survivre \\u00e0 une attaque de horqueur\\\" href=\\\"https:\\/\\/lagbt.wiwiland.net\\/index.php?title=Comment_survivre_%C3%A0_une_attaque_de_horqueur\\\">Comment survivre \\u00e0 une attaque de horqueur<\\/a> \\u2014 Heidmir Starkad<br \\/><a title=\\\"Comment tuer un troll\\\" href=\\\"https:\\/\\/lagbt.wiwiland.net\\/index.php?title=Comment_tuer_un_troll\\\">Comment tuer un troll<\\/a> \\u2014 Finn<br \\/><a title=\\\"Confection d\'armure l\\u00e9g\\u00e8re\\\" href=\\\"https:\\/\\/lagbt.wiwiland.net\\/index.php?title=Confection_d%27armure_l%C3%A9g%C3%A8re\\\">Confection d\'armure l\\u00e9g\\u00e8re<\\/a> \\u2014 Revus Sarvani<br \\/><a title=\\\"Confection d\'armure lourde\\\" href=\\\"https:\\/\\/lagbt.wiwiland.net\\/index.php?title=Confection_d%27armure_lourde\\\">Confection d\'armure lourde<\\/a> \\u2014 Sven Deux-Marteaux<br \\/><a title=\\\"De la n\\u00e9cessit\\u00e9 d\'\\u00eatre prudent (Justus)\\\" href=\\\"https:\\/\\/lagbt.wiwiland.net\\/index.php?title=De_la_n%C3%A9cessit%C3%A9_d%27%C3%AAtre_prudent_(Justus)\\\">De la n\\u00e9cessit\\u00e9 d\'\\u00eatre prudent<\\/a> \\u2014 Sigilis Justus<br \\/><a title=\\\"Deux secrets\\\" href=\\\"https:\\/\\/lagbt.wiwiland.net\\/index.php?title=Deux_secrets\\\">Deux secrets<\\/a> \\u2014 Brarilu Theran<br \\/><a title=\\\"Du bon usage de la masse\\\" href=\\\"https:\\/\\/lagbt.wiwiland.net\\/index.php?title=Du_bon_usage_de_la_masse\\\">Du bon usage de la masse<\\/a><br \\/><a title=\\\"Forge, marteau et enclume\\\" href=\\\"https:\\/\\/lagbt.wiwiland.net\\/index.php?title=Forge,_marteau_et_enclume\\\">Forge, marteau et enclume<\\/a> \\u2014 Thorbald<br \\/><a title=\\\"Formule d\'ostalium\\\" href=\\\"https:\\/\\/lagbt.wiwiland.net\\/index.php?title=Formule_d%27ostalium\\\">Formule d\'ostalium<\\/a> \\u2014 Glover Mallory<br \\/><a title=\\\"G\\u00e9rer une propri\\u00e9t\\u00e9 - Guide du d\\u00e9butant\\\" href=\\\"https:\\/\\/lagbt.wiwiland.net\\/index.php?title=G%C3%A9rer_une_propri%C3%A9t%C3%A9_-_Guide_du_d%C3%A9butant\\\">G\\u00e9rer une propri\\u00e9t\\u00e9 - Guide du d\\u00e9butant<\\/a><br \\/><a title=\\\"L\'Art de la Magie de Guerre\\\" href=\\\"https:\\/\\/lagbt.wiwiland.net\\/index.php?title=L%27Art_de_la_Magie_de_Guerre\\\">L\'Art de la Magie de Guerre<\\/a> \\u2014 Zurin Arctus<br \\/><a title=\\\"La ville de pierre\\\" href=\\\"https:\\/\\/lagbt.wiwiland.net\\/index.php?title=La_ville_de_pierre\\\">La ville de pierre<\\/a> \\u2014 Amanda Alleia<br \\/><a title=\\\"Le code de Malacath\\\" href=\\\"https:\\/\\/lagbt.wiwiland.net\\/index.php?title=Le_code_de_Malacath\\\">Le code de Malacath<\\/a> \\u2014 Amanda Alleia<br \\/><a title=\\\"Le guide de l\'apprenti\\\" href=\\\"https:\\/\\/lagbt.wiwiland.net\\/index.php?title=Le_guide_de_l%27apprenti\\\">Le guide de l\'apprenti<\\/a> \\u2014 Aramril<br \\/><a title=\\\"Le guide du voleur\\\" href=\\\"https:\\/\\/lagbt.wiwiland.net\\/index.php?title=Le_guide_du_voleur\\\">Le guide du voleur selon Wulfmare<\\/a> \\u2014 Wulfmare Sombrecape<br \\/><a title=\\\"Le jeu de la vente\\\" href=\\\"https:\\/\\/lagbt.wiwiland.net\\/index.php?title=Le_jeu_de_la_vente\\\">Le jeu de la vente<\\/a> \\u2014 Ababael Timsar-Dadisun<br \\/><a title=\\\"Les progr\\u00e8s du crochetage\\\" href=\\\"https:\\/\\/lagbt.wiwiland.net\\/index.php?title=Les_progr%C3%A8s_du_crochetage\\\">Les progr\\u00e8s du crochetage<\\/a><br \\/><a title=\\\"Manuel d\'atromancie\\\" href=\\\"https:\\/\\/lagbt.wiwiland.net\\/index.php?title=Manuel_d%27atromancie\\\">Manuel d\'atromancie<\\/a><br \\/><a title=\\\"Mod\\u00e8le de serrure d\\u00e9cente\\\" href=\\\"https:\\/\\/lagbt.wiwiland.net\\/index.php?title=Mod%C3%A8le_de_serrure_d%C3%A9cente\\\">Mod\\u00e8le de serrure d\\u00e9cente<\\/a><br \\/><a title=\\\"Myst\\u00e9rieux Akavir\\\" href=\\\"https:\\/\\/lagbt.wiwiland.net\\/index.php?title=Myst%C3%A9rieux_Akavir\\\">Myst\\u00e9rieux Akavir<\\/a><br \\/><a title=\\\"Ponts magiques\\\" href=\\\"https:\\/\\/lagbt.wiwiland.net\\/index.php?title=Ponts_magiques\\\">Passerelles liminales<\\/a> \\u2014 Camilonwe d\'Alinor<br \\/><a title=\\\"Recette de la tourte au chaurus\\\" href=\\\"https:\\/\\/lagbt.wiwiland.net\\/index.php?title=Recette_de_la_tourte_au_chaurus\\\">Recette de la tourte au chaurus<\\/a> \\u2014 Nils<br \\/><a title=\\\"R\\u00e9colte de venin de givr\\u00e9peire\\\" href=\\\"https:\\/\\/lagbt.wiwiland.net\\/index.php?title=R%C3%A9colte_de_venin_de_givr%C3%A9peire\\\">R\\u00e9colte de venin de givr\\u00e9peire<\\/a><br \\/><a title=\\\"Restitution Arcane\\\" href=\\\"https:\\/\\/lagbt.wiwiland.net\\/index.php?title=Restitution_Arcane\\\">Restitution Arcane<\\/a> \\u2014 Wapna Neustra<br \\/><a title=\\\"Saveurs incongrues\\\" href=\\\"https:\\/\\/lagbt.wiwiland.net\\/index.php?title=Saveurs_incongrues\\\">Saveurs incongrues<\\/a> \\u2014 Le Gourmet<br \\/><a title=\\\"Tuer - Avant d\'\\u00eatre tu\\u00e9\\\" href=\\\"https:\\/\\/lagbt.wiwiland.net\\/index.php?title=Tuer_-_Avant_d%27%C3%AAtre_tu%C3%A9\\\">Tuer - Avant d\'\\u00eatre tu\\u00e9<\\/a> \\u2014 Eduardo Corvus<br \\/><a title=\\\"Un baiser, ch\\u00e8re m\\u00e8re\\\" href=\\\"https:\\/\\/lagbt.wiwiland.net\\/index.php?title=Un_baiser,_ch%C3%A8re_m%C3%A8re\\\">Un baiser, ch\\u00e8re m\\u00e8re\\u00a0<\\/a><span id=\\\"Histoire_et_biographies\\\" class=\\\"mw-headline\\\">Histoire et biographies<br \\/><\\/span><a title=\\\"2920, Derni\\u00e8re ann\\u00e9e de l\'\\u00e8re Premi\\u00e8re\\\" href=\\\"https:\\/\\/lagbt.wiwiland.net\\/index.php?title=2920,_Derni%C3%A8re_ann%C3%A9e_de_l%27%C3%A8re_Premi%C3%A8re\\\">2920, Derni\\u00e8re ann\\u00e9e de l\'\\u00e8re Premi\\u00e8re<\\/a> \\u2014 Carlovac Townway<br \\/><a title=\\\"Abr\\u00e9g\\u00e9 de la vie d\'Uriel Septim VII\\\" href=\\\"https:\\/\\/lagbt.wiwiland.net\\/index.php?title=Abr%C3%A9g%C3%A9_de_la_vie_d%27Uriel_Septim_VII\\\">Abr\\u00e9g\\u00e9 de la vie d\'Uriel Septim VII<\\/a> \\u2014 Rufus Hayn<br \\/><a title=\\\"Annales des Gardes-dragons\\\" href=\\\"https:\\/\\/lagbt.wiwiland.net\\/index.php?title=Annales_des_Gardes-dragons\\\">Annales des Gardes-dragons<\\/a> \\u2014 Fr\\u00e8re Annulus, ed.<br \\/><a title=\\\"Atlas des dragons 2E 373\\\" href=\\\"https:\\/\\/lagbt.wiwiland.net\\/index.php?title=Atlas_des_dragons_2E_373\\\">Atlas des dragons 2E 373<\\/a> \\u2014 Fr\\u00e8re Mathnan<br \\/><a title=\\\"Avant l\'\\u00e2ge de l\'Homme\\\" href=\\\"https:\\/\\/lagbt.wiwiland.net\\/index.php?title=Avant_l%27%C3%A2ge_de_l%27Homme\\\">Avant l\'\\u00e2ge d\'homme<\\/a> \\u2014 Aicantar de Shimerene<br \\/><a title=\\\"Barenziah, biographie\\\" href=\\\"https:\\/\\/lagbt.wiwiland.net\\/index.php?title=Barenziah,_biographie\\\">Barenziah, biographie<\\/a> \\u2014 Stern Gamboge<br \\/><a title=\\\"Biographie - La Reine-Louve\\\" href=\\\"https:\\/\\/lagbt.wiwiland.net\\/index.php?title=Biographie_-_La_Reine-Louve\\\">Biographie - La Reine-Louve<\\/a> \\u2014 Katar Eriphanes<br \\/><a title=\\\"Bravil : fille Niben\\\" href=\\\"https:\\/\\/lagbt.wiwiland.net\\/index.php?title=Bravil_:_fille_Niben\\\">Bravil : fille Niben<\\/a> \\u2014 Sathyr Longleat<br \\/><a title=\\\"Br\\u00e8ve histoire de l\'Empire\\\" href=\\\"https:\\/\\/lagbt.wiwiland.net\\/index.php?title=Br%C3%A8ve_histoire_de_l%27Empire\\\">Br\\u00e8ve histoire de l\'Empire<\\/a> \\u2014 Stronach k\'Thojj III, historien imp\\u00e9rial<br \\/><a title=\\\"Br\\u00e8ve histoire de Morrowind\\\" href=\\\"https:\\/\\/lagbt.wiwiland.net\\/index.php?title=Br%C3%A8ve_histoire_de_Morrowind\\\">Br\\u00e8ve histoire de Morrowind<\\/a> \\u2014 Jeanette Sitte<br \\/><a title=\\\"Ceux qui ont chang\\u00e9\\\" href=\\\"https:\\/\\/lagbt.wiwiland.net\\/index.php?title=Ceux_qui_ont_chang%C3%A9\\\">Ceux qui ont chang\\u00e9<\\/a><br \\/><a title=\\\"Confessions d\'un Dunmer amateur de skooma\\\" href=\\\"https:\\/\\/lagbt.wiwiland.net\\/index.php?title=Confessions_d%27un_Dunmer_amateur_de_skooma\\\">Confessions d\'un Dunmer amateur de skooma<\\/a><br \\/><a title=\\\"Confessions d\'un marchand de fourrures khajiit\\\" href=\\\"https:\\/\\/lagbt.wiwiland.net\\/index.php?title=Confessions_d%27un_marchand_de_fourrures_khajiit\\\">Confessions d\'un marchand de fourrures khajiit<\\/a><br \\/><a title=\\\"De Dagues-Crois\\u00e9es : l\'histoire de Faillaise\\\" href=\\\"https:\\/\\/lagbt.wiwiland.net\\/index.php?title=De_Dagues-Crois%C3%A9es_:_l%27histoire_de_Faillaise\\\">De Dagues-Crois\\u00e9es<\\/a> \\u2014 Dwennon Wyndell<br \\/><a title=\\\"Des fant\\u00f4mes dans la temp\\u00eate\\\" href=\\\"https:\\/\\/lagbt.wiwiland.net\\/index.php?title=Des_fant%C3%B4mes_dans_la_temp%C3%AAte\\\">Des fant\\u00f4mes dans la temp\\u00eate<\\/a> \\u2014 Adonato Leotelli<br \\/><a title=\\\"\\u00c8re Troisi\\u00e8me : Chronologie abr\\u00e9g\\u00e9e\\\" href=\\\"https:\\/\\/lagbt.wiwiland.net\\/index.php?title=%C3%88re_Troisi%C3%A8me_:_Chronologie_abr%C3%A9g%C3%A9e\\\">\\u00c8re Troisi\\u00e8me : Chronologie abr\\u00e9g\\u00e9e<\\/a> \\u2014 Jaspus Ignateous<br \\/><a title=\\\"\\u00c9tude des Falmers\\\" href=\\\"https:\\/\\/lagbt.wiwiland.net\\/index.php?title=%C3%89tude_des_Falmers\\\">\\u00c9tude des Falmers<\\/a> \\u2014 Ursa Uthrax<br \\/><a title=\\\"Fronti\\u00e8re, conqu\\u00eate, peuplement\\\" href=\\\"https:\\/\\/lagbt.wiwiland.net\\/index.php?title=Fronti%C3%A8re,_conqu%C3%AAte,_peuplement\\\">Fronti\\u00e8re, conqu\\u00eate, peuplement<\\/a> \\u2014 Presses de <br \\/>l\'<a title=\\\"Universit\\u00e9 de Gwylim\\\" href=\\\"https:\\/\\/lagbt.wiwiland.net\\/index.php?title=Universit%C3%A9_de_Gwylim\\\">Universit\\u00e9 de Gwylim<\\/a><br \\/><a title=\\\"Galerion le Mystique\\\" href=\\\"https:\\/\\/lagbt.wiwiland.net\\/index.php?title=Galerion_le_Mystique\\\">Galerion le Mystique<\\/a><br \\/><a title=\\\"Grands h\\u00e9rauts\\\" href=\\\"https:\\/\\/lagbt.wiwiland.net\\/index.php?title=Grands_h%C3%A9rauts\\\">Grands h\\u00e9rauts<\\/a> \\u2014 Swyk le Presbyte<br \\/><a title=\\\"Histoire de Corberoc\\\" href=\\\"https:\\/\\/lagbt.wiwiland.net\\/index.php?title=Histoire_de_Corberoc\\\">Histoire de Corberoc<\\/a> \\u2014 Lyrin Telleno<br \\/><a title=\\\"L\'Adabal-a\\\" href=\\\"https:\\/\\/lagbt.wiwiland.net\\/index.php?title=L%27Adabal-a\\\">L\'Adabal-a<\\/a><br \\/><a title=\\\"L\'Ann\\u00e9e \\u00e9carlate\\\" href=\\\"https:\\/\\/lagbt.wiwiland.net\\/index.php?title=L%27Ann%C3%A9e_%C3%A9carlate\\\">L\'Ann\\u00e9e \\u00e9carlate<\\/a> \\u2014 Melis Ravel, ed.<br \\/><a title=\\\"La bataille de Sancre Tor\\\" href=\\\"https:\\/\\/lagbt.wiwiland.net\\/index.php?title=La_bataille_de_Sancre_Tor\\\">La bataille de Sancre Tor<\\/a><br \\/><a title=\\\"La Bataille du Mont Ecarlate\\\" href=\\\"https:\\/\\/lagbt.wiwiland.net\\/index.php?title=La_Bataille_du_Mont_Ecarlate\\\">La Bataille du Mont Ecarlate<\\/a> \\u2014 Vivec<br \\/><a title=\\\"La chute du Prince des Neiges\\\" href=\\\"https:\\/\\/lagbt.wiwiland.net\\/index.php?title=La_chute_du_Prince_des_Neiges\\\">La chute du Prince des Neiges<\\/a> \\u2014 Lokheim<br \\/><a title=\\\"La cit\\u00e9 l\\u00e9gendaire de Sancre Tor\\\" href=\\\"https:\\/\\/lagbt.wiwiland.net\\/index.php?title=La_cit%C3%A9_l%C3%A9gendaire_de_Sancre_Tor\\\">La cit\\u00e9 l\\u00e9gendaire de Sancre Tor<\\/a> \\u2014 Matera Chapel<br \\/><a title=\\\"La crise d\'Oblivion\\\" href=\\\"https:\\/\\/lagbt.wiwiland.net\\/index.php?title=La_crise_d%27Oblivion\\\">La crise d\'Oblivion<\\/a> \\u2014 Praxis Sarcorum<br \\/><a title=\\\"La Folie de Pelagius\\\" href=\\\"https:\\/\\/lagbt.wiwiland.net\\/index.php?title=La_Folie_de_Pelagius\\\">La Folie de Pelagius<\\/a> \\u2014 Tsathenes<br \\/><a title=\\\"La Grande Guerre\\\" href=\\\"https:\\/\\/lagbt.wiwiland.net\\/index.php?title=La_Grande_Guerre\\\">La Grande Guerre<\\/a> \\u2014 L\\u00e9gat Justianus Quintius<br \\/><a title=\\\"La Guerre draconique\\\" href=\\\"https:\\/\\/lagbt.wiwiland.net\\/index.php?title=La_Guerre_draconique\\\">La Guerre draconique<\\/a> \\u2014 Torhal Bjorik<br \\/><a title=\\\"La guerre du Premier Conseil\\\" href=\\\"https:\\/\\/lagbt.wiwiland.net\\/index.php?title=La_guerre_du_Premier_Conseil\\\">La guerre du Premier Conseil<\\/a> \\u2014 Agrippa Fundilius<br \\/><a title=\\\"La Nuit des larmes\\\" href=\\\"https:\\/\\/lagbt.wiwiland.net\\/index.php?title=La_Nuit_des_larmes\\\">La Nuit des larmes<\\/a> \\u2014 Dranor Seleth<br \\/><a title=\\\"La Reine-Louve\\\" href=\\\"https:\\/\\/lagbt.wiwiland.net\\/index.php?title=La_Reine-Louve\\\">La Reine-Louve<\\/a> \\u2014 Waughin Jarth<br \\/><a title=\\\"La R\\u00e9volte de Primeterre\\\" href=\\\"https:\\/\\/lagbt.wiwiland.net\\/index.php?title=La_R%C3%A9volte_de_Primeterre\\\">La R\\u00e9volte de Primeterre<\\/a> \\u2014 Maveus Cie<br \\/><a title=\\\"La V\\u00e9ritable Nature des Orques\\\" href=\\\"https:\\/\\/lagbt.wiwiland.net\\/index.php?title=La_V%C3%A9ritable_Nature_des_Orques\\\">La V\\u00e9ritable Nature des Orques<\\/a><br \\/><a title=\\\"La v\\u00e9rit\\u00e9 de la M\\u00e8re de la nuit\\\" href=\\\"https:\\/\\/lagbt.wiwiland.net\\/index.php?title=La_v%C3%A9rit%C3%A9_de_la_M%C3%A8re_de_la_nuit\\\">La v\\u00e9rit\\u00e9 de la M\\u00e8re de la nuit<\\/a> \\u2014 Gaston Bellefort<br \\/><a title=\\\"Le d\\u00e9clin d\'Ahzidal\\\" href=\\\"https:\\/\\/lagbt.wiwiland.net\\/index.php?title=Le_d%C3%A9clin_d%27Ahzidal\\\">Le d\\u00e9clin d\'Ahzidal<\\/a> \\u2014 Halund Grisecape<br \\/><a title=\\\"Le dernier roi des Ayl\\u00e9ides\\\" href=\\\"https:\\/\\/lagbt.wiwiland.net\\/index.php?title=Le_dernier_roi_des_Ayl%C3%A9ides\\\">Le dernier roi des Ayl\\u00e9ides<\\/a> \\u2014 Herminia Cinna<br \\/><a title=\\\"Le Grand Ravage\\\" href=\\\"https:\\/\\/lagbt.wiwiland.net\\/index.php?title=Le_Grand_Ravage\\\">Le Grand Ravage<\\/a> \\u2014 Archimage Deneth<br \\/><a title=\\\"Le lecteur de la cuisine rouge\\\" href=\\\"https:\\/\\/lagbt.wiwiland.net\\/index.php?title=Le_lecteur_de_la_cuisine_rouge\\\">Le lecteur de la cuisine rouge<\\/a> \\u2014 Simocles Quo<br \\/><a title=\\\"Le Thalmor aux trousses\\\" href=\\\"https:\\/\\/lagbt.wiwiland.net\\/index.php?title=Le_Thalmor_aux_trousses\\\">Le Thalmor aux trousses<\\/a> \\u2014 Hadrik Coeur-de-Ch\\u00eane<br \\/><a title=\\\"Les Cathartes\\\" href=\\\"https:\\/\\/lagbt.wiwiland.net\\/index.php?title=Les_Cathartes\\\">Les Cathartes<\\/a> \\u2014 Thara de Rihad<br \\/><a title=\\\"Les chevaliers des Neuf\\\" href=\\\"https:\\/\\/lagbt.wiwiland.net\\/index.php?title=Les_chevaliers_des_Neuf\\\">Les chevaliers des Neuf<\\/a> \\u2014 Karoline de Solitude<br \\/><a title=\\\"Les Chroniques de Nchuleft\\\" href=\\\"https:\\/\\/lagbt.wiwiland.net\\/index.php?title=Les_Chroniques_de_Nchuleft\\\">Les Chroniques de Nchuleft<\\/a><br \\/><a title=\\\"Les chroniques des saints fr\\u00e8res de Marukh, tome IV - La Purification du sanctuaire\\\" href=\\\"https:\\/\\/lagbt.wiwiland.net\\/index.php?title=Les_chroniques_des_saints_fr%C3%A8res_de_Marukh,_tome_IV_-_La_Purification_du_sanctuaire\\\">Les chroniques des saints fr\\u00e8res de Marukh<\\/a><br \\/><a title=\\\"Les fr\\u00e8res des t\\u00e9n\\u00e8bres\\\" href=\\\"https:\\/\\/lagbt.wiwiland.net\\/index.php?title=Les_fr%C3%A8res_des_t%C3%A9n%C3%A8bres\\\">Les fr\\u00e8res des t\\u00e9n\\u00e8bres<\\/a> \\u2014 Pellarne Assi<br \\/><a title=\\\"Les guerres de l\'aeth\\u00e9rium\\\" href=\\\"https:\\/\\/lagbt.wiwiland.net\\/index.php?title=Les_guerres_de_l%27aeth%C3%A9rium\\\">Les guerres de l\'aeth\\u00e9rium<\\/a> \\u2014 Taron Dreth<br \\/><a title=\\\"Les Lames, ascension et d\\u00e9clin\\\" href=\\\"https:\\/\\/lagbt.wiwiland.net\\/index.php?title=Les_Lames,_ascension_et_d%C3%A9clin\\\">Les Lames, ascension et d\\u00e9clin<\\/a><br \\/><a title=\\\"Les Trahis\\\" href=\\\"https:\\/\\/lagbt.wiwiland.net\\/index.php?title=Les_Trahis\\\">Les Trahis<\\/a> - Engwe Emeloth<br \\/><a title=\\\"Menace grandissante\\\" href=\\\"https:\\/\\/lagbt.wiwiland.net\\/index.php?title=Menace_grandissante\\\">Menace grandissante<\\/a> \\u2014 Lathenil de Solandie<br \\/><a title=\\\"N\\u00e9r\\u00e9var Astre-Lune\\\" href=\\\"https:\\/\\/lagbt.wiwiland.net\\/index.php?title=N%C3%A9r%C3%A9var_Astre-Lune\\\">N\\u00e9r\\u00e9var Astre-Lune<\\/a><br \\/><a title=\\\"N\\u00e9r\\u00e9var au Mont Ecarlate\\\" href=\\\"https:\\/\\/lagbt.wiwiland.net\\/index.php?title=N%C3%A9r%C3%A9var_au_Mont_Ecarlate\\\">N\\u00e9r\\u00e9var au Mont Ecarlate<\\/a> \\u2014 Temple du Tribunal<br \\/><a title=\\\"Olaf et le Dragon\\\" href=\\\"https:\\/\\/lagbt.wiwiland.net\\/index.php?title=Olaf_et_le_Dragon\\\">Olaf et le Dragon<\\/a> \\u2014 Adonato Leonetti<br \\/><a title=\\\"Opus de Saint Jiub\\\" href=\\\"https:\\/\\/lagbt.wiwiland.net\\/index.php?title=Opus_de_Saint_Jiub\\\">Opus de Saint Jiub<\\/a> \\u2014 Saint Juib<br \\/><a title=\\\"Paroles et Philosophie\\\" href=\\\"https:\\/\\/lagbt.wiwiland.net\\/index.php?title=Paroles_et_Philosophie\\\">Paroles et Philosophie<\\/a><br \\/><a title=\\\"Petit d\\u00e9dale : Shalidor et Labyrinthe\\\" href=\\\"https:\\/\\/lagbt.wiwiland.net\\/index.php?title=Petit_d%C3%A9dale_:_Shalidor_et_Labyrinthe\\\">Petit d\\u00e9dale : Shalidor et Labyrinthe<\\/a><br \\/><a title=\\\"Rapport de la Commission imp\\u00e9riale sur le D\\u00e9sastre d\'Ionith\\\" href=\\\"https:\\/\\/lagbt.wiwiland.net\\/index.php?title=Rapport_de_la_Commission_imp%C3%A9riale_sur_le_D%C3%A9sastre_d%27Ionith\\\">Rapport de la Commission imp\\u00e9riale sur le D\\u00e9sastre d\'Ionith<\\/a> \\u2014 Seigneur Pottreid<br \\/><a title=\\\"Remanada\\\" href=\\\"https:\\/\\/lagbt.wiwiland.net\\/index.php?title=Remanada\\\">Remanada<\\/a><br \\/><a title=\\\"Rislav le juste\\\" href=\\\"https:\\/\\/lagbt.wiwiland.net\\/index.php?title=Rislav_le_juste\\\">Rislav le juste<\\/a> \\u2014 Sinjin<br \\/><a title=\\\"Thirsk, une Histoire : revue et corrig\\u00e9e\\\" href=\\\"https:\\/\\/lagbt.wiwiland.net\\/index.php?title=Thirsk,_une_Histoire_:_revue_et_corrig%C3%A9e\\\">Thirsk, une Histoire : revue et corrig\\u00e9e<\\/a><br \\/><span id=\\\"Informations\\\" class=\\\"mw-headline\\\">Informations<br \\/><\\/span><a title=\\\"Acte de vente de Lumidor\\\" href=\\\"https:\\/\\/lagbt.wiwiland.net\\/index.php?title=Acte_de_vente_de_Lumidor\\\">Acte de vente de Lumidor<\\/a><br \\/><a title=\\\"Bordeciel : le guide de l\'explorateur\\\" href=\\\"https:\\/\\/lagbt.wiwiland.net\\/index.php?title=Bordeciel_:_le_guide_de_l%27explorateur\\\">Bordeciel : le guide de l\'explorateur<\\/a> \\u2014 Marcius Carvain<br \\/><a title=\\\"Bordeciel : le guide de l\'herboriste\\\" href=\\\"https:\\/\\/lagbt.wiwiland.net\\/index.php?title=Bordeciel_:_le_guide_de_l%27herboriste\\\">Bordeciel : le guide de l\'herboriste<\\/a> \\u2014 Agneta Falia<br \\/><a title=\\\"Catalogue des enchantements d\'armes\\\" href=\\\"https:\\/\\/lagbt.wiwiland.net\\/index.php?title=Catalogue_des_enchantements_d%27armes\\\">Catalogue des enchantements d\'armes<\\/a> \\u2014 Yvonne Bienne<br \\/><a title=\\\"Catalogue des enchantements d\'armure\\\" href=\\\"https:\\/\\/lagbt.wiwiland.net\\/index.php?title=Catalogue_des_enchantements_d%27armure\\\">Catalogue des enchantements d\'armure<\\/a> \\u2014 Yvonne Bienne<br \\/><a title=\\\"Convention d\'achat de Bolli\\\" href=\\\"https:\\/\\/lagbt.wiwiland.net\\/index.php?title=Convention_d%27achat_de_Bolli\\\">Convention d\'achat de Bolli<\\/a> \\u2014 Bolli<br \\/><a title=\\\"De vent et de sable\\\" href=\\\"https:\\/\\/lagbt.wiwiland.net\\/index.php?title=De_vent_et_de_sable\\\">De vent et de sable<\\/a> \\u2014 Afa-Saryat<br \\/><a title=\\\"D\\u00e9cret du monument\\\" href=\\\"https:\\/\\/lagbt.wiwiland.net\\/index.php?title=D%C3%A9cret_du_monument\\\">D\\u00e9cret du monument<\\/a><br \\/><a title=\\\"Dette de Vald\\\" href=\\\"https:\\/\\/lagbt.wiwiland.net\\/index.php?title=Dette_de_Vald\\\">Dette de Vald<\\/a><br \\/><a title=\\\"Dossier du Thalmor : Delphine\\\" href=\\\"https:\\/\\/lagbt.wiwiland.net\\/index.php?title=Dossier_du_Thalmor_:_Delphine\\\">Dossier du Thalmor : Delphine<\\/a><br \\/><a title=\\\"Dossier du Thalmor : Esbern\\\" href=\\\"https:\\/\\/lagbt.wiwiland.net\\/index.php?title=Dossier_du_Thalmor_:_Esbern\\\">Dossier du Thalmor : Esbern<\\/a><br \\/><a title=\\\"Dossier du Thalmor : Ulfric Sombrage\\\" href=\\\"https:\\/\\/lagbt.wiwiland.net\\/index.php?title=Dossier_du_Thalmor_:_Ulfric_Sombrage\\\">Dossier du Thalmor : Ulfric Sombrage<\\/a><br \\/><a title=\\\"Emploi du temps de Gaius Maro\\\" href=\\\"https:\\/\\/lagbt.wiwiland.net\\/index.php?title=Emploi_du_temps_de_Gaius_Maro\\\">Emploi du temps de Gaius Maro<\\/a><br \\/><a title=\\\"Feu et t\\u00e9n\\u00e8bres\\\" href=\\\"https:\\/\\/lagbt.wiwiland.net\\/index.php?title=Feu_et_t%C3%A9n%C3%A8bres\\\">Feu et t\\u00e9n\\u00e8bres<\\/a> \\u2014 Ynir Gorming<br \\/><a title=\\\"Gouvernement de Bordeciel\\\" href=\\\"https:\\/\\/lagbt.wiwiland.net\\/index.php?title=Gouvernement_de_Bordeciel\\\">Gouvernement de Bordeciel<\\/a> \\u2014 Abdul-Mujib Ababneh<br \\/><a title=\\\"L\'annonce de la chasse\\\" href=\\\"https:\\/\\/lagbt.wiwiland.net\\/index.php?title=L%27annonce_de_la_chasse\\\">L\'annonce de la chasse<\\/a><br \\/><a title=\\\"La r\\u00e9alit\\u00e9 et autres tromperies\\\" href=\\\"https:\\/\\/lagbt.wiwiland.net\\/index.php?title=La_r%C3%A9alit%C3%A9_et_autres_tromperies\\\">La r\\u00e9alit\\u00e9 et autres tromperies<\\/a><br \\/><a title=\\\"Le Code de Noblesse\\\" href=\\\"https:\\/\\/lagbt.wiwiland.net\\/index.php?title=Le_Code_de_Noblesse\\\">Le Code de Noblesse<\\/a> \\u2014 Serjo Athyn Sarethi<br \\/><a title=\\\"Le Coeur d\'An\\u00e9quina de Ch\\u00e9rim, Volume dix-huit : Entretiens avec des tisseurs de tapisserie\\\" href=\\\"https:\\/\\/lagbt.wiwiland.net\\/index.php?title=Le_Coeur_d%27An%C3%A9quina_de_Ch%C3%A9rim,_Volume_dix-huit_:_Entretiens_avec_des_tisseurs_de_tapisserie\\\">Le Coeur d\'An\\u00e9quina de Ch\\u00e9rim, Volume dix-huit : Entretiens avec des tisseurs de tapisserie<\\/a> \\u2014 Livillus Perus<br \\/><a title=\\\"Le livre des Daedra\\\" href=\\\"https:\\/\\/lagbt.wiwiland.net\\/index.php?title=Le_livre_des_Daedra\\\">Le livre des Daedra<\\/a><br \\/><a title=\\\"Les ch\\u00e2telleries de Bordeciel\\\" href=\\\"https:\\/\\/lagbt.wiwiland.net\\/index.php?title=Les_ch%C3%A2telleries_de_Bordeciel\\\">Les ch\\u00e2telleries de Bordeciel<\\/a><br \\/><a title=\\\"Les Elfes Sauvages\\\" href=\\\"https:\\/\\/lagbt.wiwiland.net\\/index.php?title=Les_Elfes_Sauvages\\\">Les Elfes Sauvages<\\/a> \\u2014 Kier-Jo Chorvak<br \\/><a title=\\\"Les enfants du Cr\\u00e9ateur\\\" href=\\\"https:\\/\\/lagbt.wiwiland.net\\/index.php?title=Les_enfants_du_Cr%C3%A9ateur\\\">Les enfants du Cr\\u00e9ateur<\\/a> \\u2014 Tharstan de Solitude<br \\/><a title=\\\"Les Jardins Suspendus de Wasten Coridale\\\" href=\\\"https:\\/\\/lagbt.wiwiland.net\\/index.php?title=Les_Jardins_Suspendus_de_Wasten_Coridale\\\">Les Jardins Suspendus de Wasten Coridale<\\/a><br \\/><a title=\\\"Les Rossignols\\\" href=\\\"https:\\/\\/lagbt.wiwiland.net\\/index.php?title=Les_Rossignols\\\">Les Rossignols<\\/a> \\u2014 Gallus Desidenius<br \\/><a title=\\\"Les rudiments de l\'enchantement\\\" href=\\\"https:\\/\\/lagbt.wiwiland.net\\/index.php?title=Les_rudiments_de_l%27enchantement\\\">Les rudiments de l\'enchantement<\\/a> \\u2014 Sergius Turrianus<br \\/><a title=\\\"Les voies ancestrales\\\" href=\\\"https:\\/\\/lagbt.wiwiland.net\\/index.php?title=Les_voies_ancestrales\\\">Les voies ancestrales<\\/a> \\u2014 Celarus, Gardien du Savoir<br \\/><a title=\\\"Manifeste d\'exp\\u00e9dition\\\" href=\\\"https:\\/\\/lagbt.wiwiland.net\\/index.php?title=Manifeste_d%27exp%C3%A9dition\\\">Manifeste d\'exp\\u00e9dition<\\/a> \\u2014 Sulla Trebatius<br \\/><a title=\\\"Marques noires\\\" href=\\\"https:\\/\\/lagbt.wiwiland.net\\/index.php?title=Marques_noires\\\">Marques noires<\\/a> \\u2014 Delvin Mallory<br \\/><a title=\\\"Ordre de travail de Mzinchaleft\\\" href=\\\"https:\\/\\/lagbt.wiwiland.net\\/index.php?title=Ordre_de_travail_de_Mzinchaleft\\\">Ordre de travail de Mzinchaleft<\\/a> \\u2014 Maluril Ferano<br \\/><a title=\\\"Pedigree de Glacier\\\" href=\\\"https:\\/\\/lagbt.wiwiland.net\\/index.php?title=Pedigree_de_Glacier\\\">Pedigree de Glacier<\\/a><br \\/><a title=\\\"Pens\\u00e9e de la Phal\\u00e8ne ancestrale\\\" href=\\\"https:\\/\\/lagbt.wiwiland.net\\/index.php?title=Pens%C3%A9e_de_la_Phal%C3%A8ne_ancestrale\\\">Pens\\u00e9e de la Phal\\u00e8ne ancestrale<\\/a><br \\/><a title=\\\"Propri\\u00e9t\\u00e9s du jarl Gjalund\\\" href=\\\"https:\\/\\/lagbt.wiwiland.net\\/index.php?title=Propri%C3%A9t%C3%A9s_du_jarl_Gjalund\\\">Propri\\u00e9t\\u00e9s du jarl Gjalund<\\/a> \\u2014 Slafknir le Scribe<br \\/><a title=\\\"Questions de Cosmologie\\\" href=\\\"https:\\/\\/lagbt.wiwiland.net\\/index.php?title=Questions_de_Cosmologie\\\">Questions de Cosmologie<\\/a> \\u2014 Foulke<br \\/><a title=\\\"Rapport sur l\'incident de l\'Hyposcole\\\" href=\\\"https:\\/\\/lagbt.wiwiland.net\\/index.php?title=Rapport_sur_l%27incident_de_l%27Hyposcole\\\">Rapport sur l\'incident de l\'Hyposcole<\\/a><br \\/><a title=\\\"R\\u00e9ponse au discours de B\\u00e9ro\\\" href=\\\"https:\\/\\/lagbt.wiwiland.net\\/index.php?title=R%C3%A9ponse_au_discours_de_B%C3%A9ro\\\">R\\u00e9ponse au discours de B\\u00e9ro<\\/a> \\u2014 Malviser<br \\/><a title=\\\"Toucher le ciel\\\" href=\\\"https:\\/\\/lagbt.wiwiland.net\\/index.php?title=Toucher_le_ciel\\\">Toucher le ciel<\\/a> \\u2014 Parmion Saldor<br \\/><span id=\\\"Chants,_po\\u00e9sie,_humour\\\"><\\/span><span id=\\\"Chants.2C_po.C3.A9sie.2C_humour\\\" class=\\\"mw-headline\\\">Chants, po\\u00e9sie, humour<br \\/><\\/span><a title=\\\"Ancien \\u00e9dit\\\" href=\\\"https:\\/\\/lagbt.wiwiland.net\\/index.php?title=Ancien_%C3%A9dit\\\">Ancien \\u00e9dit<\\/a><br \\/><a title=\\\"Ancien tome\\\" href=\\\"https:\\/\\/lagbt.wiwiland.net\\/index.php?title=Ancien_tome\\\">Ancien tome<\\/a><br \\/><a title=\\\"Chanson de Hrormir\\\" href=\\\"https:\\/\\/lagbt.wiwiland.net\\/index.php?title=Chanson_de_Hrormir\\\">Chanson de Hrormir<\\/a><br \\/><a title=\\\"Chansons de Bordeciel\\\" href=\\\"https:\\/\\/lagbt.wiwiland.net\\/index.php?title=Chansons_de_Bordeciel\\\">Chansons de Bordeciel<\\/a> \\u2014 Giraud Gemaine<br \\/><a title=\\\"Chant des hommes d\'Askelde\\\" href=\\\"https:\\/\\/lagbt.wiwiland.net\\/index.php?title=Chant_des_hommes_d%27Askelde\\\">Chant des hommes d\'Askelde<\\/a> \\u2014 Moines d\'Atheneum au Vieil Anthel<br \\/><a title=\\\"D\'Apocrypha\\\" href=\\\"https:\\/\\/lagbt.wiwiland.net\\/index.php?title=D%27Apocrypha\\\">D\'Apocrypha<\\/a><br \\/><a title=\\\"\\u00c9pitaphe de Geirmund\\\" href=\\\"https:\\/\\/lagbt.wiwiland.net\\/index.php?title=%C3%89pitaphe_de_Geirmund\\\">\\u00c9pitaphe de Geirmund<\\/a><br \\/><a title=\\\"Formule d\'emprisonnement\\\" href=\\\"https:\\/\\/lagbt.wiwiland.net\\/index.php?title=Formule_d%27emprisonnement\\\">Formule d\'emprisonnement<\\/a><br \\/><a title=\\\"L\'Horreur du Ch\\u00e2teau de Xyr\\\" href=\\\"https:\\/\\/lagbt.wiwiland.net\\/index.php?title=L%27Horreur_du_Ch%C3%A2teau_de_Xyr\\\">L\'Horreur du Ch\\u00e2teau de Xyr<\\/a> \\u2014 Baloth-Kul<br \\/><a title=\\\"La charge du guerrier\\\" href=\\\"https:\\/\\/lagbt.wiwiland.net\\/index.php?title=La_charge_du_guerrier\\\">La charge du guerrier<\\/a><br \\/><a title=\\\"La derni\\u00e8re danse du Seigneur Jornibret\\\" href=\\\"https:\\/\\/lagbt.wiwiland.net\\/index.php?title=La_derni%C3%A8re_danse_du_Seigneur_Jornibret\\\">La derni\\u00e8re danse du Seigneur Jornibret<\\/a><br \\/><a title=\\\"La Femme de chambre argonienne\\\" href=\\\"https:\\/\\/lagbt.wiwiland.net\\/index.php?title=La_Femme_de_chambre_argonienne\\\">La Femme de chambre argonienne<\\/a> \\u2014 Crassius Curio<br \\/><a title=\\\"La l\\u00e9gende de la maison Krately\\\" href=\\\"https:\\/\\/lagbt.wiwiland.net\\/index.php?title=La_l%C3%A9gende_de_la_maison_Krately\\\">La l\\u00e9gende de la maison Krately<\\/a> \\u2014 Baloth-Kul<br \\/><a title=\\\"La Troisi\\u00e8me Porte\\\" href=\\\"https:\\/\\/lagbt.wiwiland.net\\/index.php?title=La_Troisi%C3%A8me_Porte\\\">La Troisi\\u00e8me Porte<\\/a> \\u2014 Annanar Orme<br \\/><a title=\\\"Le Torride Barde argonien, vol. 1\\\" href=\\\"https:\\/\\/lagbt.wiwiland.net\\/index.php?title=Le_Torride_Barde_argonien,_vol._1\\\">Le Torride Barde argonien, vol. 1<\\/a> \\u2014 Ellya Erdain<br \\/><a title=\\\"Le coup de gr\\u00e2ce d\'Abernanit\\\" href=\\\"https:\\/\\/lagbt.wiwiland.net\\/index.php?title=Le_coup_de_gr%C3%A2ce_d%27Abernanit\\\">Le coup de gr\\u00e2ce d\'Abernanit<\\/a> \\u2014 Geocrates Varnus, ed.<br \\/><a title=\\\"Le Livre Jaune des \\u00c9nigmes\\\" href=\\\"https:\\/\\/lagbt.wiwiland.net\\/index.php?title=Le_Livre_Jaune_des_%C3%89nigmes\\\">Le Livre Jaune des \\u00c9nigmes<\\/a><br \\/><a title=\\\"Le livre rouge des \\u00e9nigmes\\\" href=\\\"https:\\/\\/lagbt.wiwiland.net\\/index.php?title=Le_livre_rouge_des_%C3%A9nigmes\\\">Le livre rouge des \\u00e9nigmes<\\/a><br \\/><a title=\\\"L\\u00e9gendaire Ch\\u00e2timent\\\" href=\\\"https:\\/\\/lagbt.wiwiland.net\\/index.php?title=L%C3%A9gendaire_Ch%C3%A2timent\\\">L\\u00e9gendaire Ch\\u00e2timent<\\/a><br \\/><a title=\\\"Les Cinq Etoiles Lointaines\\\" href=\\\"https:\\/\\/lagbt.wiwiland.net\\/index.php?title=Les_Cinq_Etoiles_Lointaines\\\">Les Cinq Etoiles Lointaines<\\/a><br \\/><a title=\\\"Les murmures du vent\\\" href=\\\"https:\\/\\/lagbt.wiwiland.net\\/index.php?title=Les_murmures_du_vent\\\">Les murmures du vent<\\/a><br \\/><a title=\\\"Les quatre totems de Volskygge\\\" href=\\\"https:\\/\\/lagbt.wiwiland.net\\/index.php?title=Les_quatre_totems_de_Volskygge\\\">Les quatre totems de Volskygge<\\/a><br \\/><a title=\\\"Les secrets de Ragnvald\\\" href=\\\"https:\\/\\/lagbt.wiwiland.net\\/index.php?title=Les_secrets_de_Ragnvald\\\">Les secrets de Ragnvald<\\/a><br \\/><a title=\\\"Les Trahis\\\" href=\\\"https:\\/\\/lagbt.wiwiland.net\\/index.php?title=Les_Trahis\\\">Les Trahis<\\/a> \\u2014 Engwe Emeloth<br \\/><a title=\\\"Livre de vie et de servitude\\\" href=\\\"https:\\/\\/lagbt.wiwiland.net\\/index.php?title=Livre_de_vie_et_de_servitude\\\">Livre de vie et de servitude<\\/a><br \\/><a title=\\\"Mannimarco, Roi des vers\\\" href=\\\"https:\\/\\/lagbt.wiwiland.net\\/index.php?title=Mannimarco,_Roi_des_vers\\\">Mannimarco, Roi des vers<\\/a> \\u2014 Horicles<br \\/><a title=\\\"Petit d\\u00e9dale : Shalidor et Labyrinthe\\\" href=\\\"https:\\/\\/lagbt.wiwiland.net\\/index.php?title=Petit_d%C3%A9dale_:_Shalidor_et_Labyrinthe\\\">Note d\\u00e9chir\\u00e9e<\\/a><br \\/><a title=\\\"Notes sur le Tertre d\'Yngol\\\" href=\\\"https:\\/\\/lagbt.wiwiland.net\\/index.php?title=Notes_sur_le_Tertre_d%27Yngol\\\">Notes sur le Tertre d\'Yngol<\\/a><br \\/><a title=\\\"Ode aux colosses des plaines\\\" href=\\\"https:\\/\\/lagbt.wiwiland.net\\/index.php?title=Ode_aux_colosses_des_plaines\\\">Ode aux colosses des plaines<\\/a><br \\/><a title=\\\"P\\u00e8re du Niben\\\" href=\\\"https:\\/\\/lagbt.wiwiland.net\\/index.php?title=P%C3%A8re_du_Niben\\\">P\\u00e8re du Niben<\\/a> \\u2014 Florin Jaliil<br \\/><a title=\\\"Po\\u00e8me d\'amour\\\" href=\\\"https:\\/\\/lagbt.wiwiland.net\\/index.php?title=Po%C3%A8me_d%27amour\\\">Po\\u00e8me d\'amour<\\/a> \\u2014 Calcelmo<br \\/><a title=\\\"Pouvoir des \\u00e9l\\u00e9ments\\\" href=\\\"https:\\/\\/lagbt.wiwiland.net\\/index.php?title=Pouvoir_des_%C3%A9l%C3%A9ments\\\">Pouvoir des \\u00e9l\\u00e9ments<\\/a><br \\/><a title=\\\"Sonnet du roi Olaf\\\" href=\\\"https:\\/\\/lagbt.wiwiland.net\\/index.php?title=Sonnet_du_roi_Olaf\\\">Sonnet du roi Olaf<\\/a><br \\/><a title=\\\"Une trahison hypoth\\u00e9tique\\\" href=\\\"https:\\/\\/lagbt.wiwiland.net\\/index.php?title=Une_trahison_hypoth%C3%A9tique\\\">Une trahison hypoth\\u00e9tique<\\/a> \\u2014 Anthil Morvir<br \\/><a title=\\\"Velehk Sain, Roi pirate de l\'Ab\\u00e9c\\u00e9en\\\" href=\\\"https:\\/\\/lagbt.wiwiland.net\\/index.php?title=Velehk_Sain,_Roi_pirate_de_l%27Ab%C3%A9c%C3%A9en\\\">Velehk Sain, Roi pirate de l\'Ab\\u00e9c\\u00e9en<\\/a> \\u2014 Velehk Sain<br \\/><span id=\\\"Journaux,_notes_&amp;_correspondances\\\"><\\/span><span id=\\\"Journaux.2C_notes_.26_correspondances\\\" class=\\\"mw-headline\\\">Journaux, notes &amp; correspondances<br \\/><\\/span><a title=\\\"\\u00c0 faire (4E 201)\\\" href=\\\"https:\\/\\/lagbt.wiwiland.net\\/index.php?title=%C3%80_faire_(4E_201)\\\">\\u00c0 faire<\\/a><br \\/><a title=\\\"\\u00c0 la Confr\\u00e9rie\\\" href=\\\"https:\\/\\/lagbt.wiwiland.net\\/index.php?title=%C3%80_la_Confr%C3%A9rie\\\">\\u00c0 la Confr\\u00e9rie<\\/a> \\u2014 Maven Roncenoir<br \\/><a title=\\\"\\u00c0 la prochaine fois\\\" href=\\\"https:\\/\\/lagbt.wiwiland.net\\/index.php?title=%C3%80_la_prochaine_fois\\\">\\u00c0 la prochaine fois<\\/a><br \\/><a title=\\\"\\u00c0 lire imm\\u00e9diatement !\\\" href=\\\"https:\\/\\/lagbt.wiwiland.net\\/index.php?title=%C3%80_lire_imm%C3%A9diatement_!\\\">\\u00c0 lire imm\\u00e9diatement !<\\/a> \\u2014 Indaryn<br \\/><a title=\\\"\\u00c0 tous les employ\\u00e9s !\\\" href=\\\"https:\\/\\/lagbt.wiwiland.net\\/index.php?title=%C3%80_tous_les_employ%C3%A9s_!\\\">\\u00c0 tous les employ\\u00e9s !<\\/a> \\u2014 Indaryn<br \\/><a title=\\\"\\u00c0 un citoyen inquiet\\\" href=\\\"https:\\/\\/lagbt.wiwiland.net\\/index.php?title=%C3%80_un_citoyen_inquiet\\\">\\u00c0 un citoyen inquiet<\\/a><\\/p><p><a title=\\\"\\u00c0 votre demande\\\" href=\\\"https:\\/\\/lagbt.wiwiland.net\\/index.php?title=%C3%80_votre_demande\\\">\\u00c0 votre demande<\\/a> \\u2014 Mirabelle Ervine<\\/p><p><a title=\\\"Adieux de Tova\\\" href=\\\"https:\\/\\/lagbt.wiwiland.net\\/index.php?title=Adieux_de_Tova\\\">Adieux de Tova<\\/a> \\u2014 Tova Brise-Bouclier<\\/p><p><a title=\\\"Au propri\\u00e9taire\\\" href=\\\"https:\\/\\/lagbt.wiwiland.net\\/index.php?title=Au_propri%C3%A9taire\\\">Au propri\\u00e9taire<\\/a> \\u2014 Kilthinius Dandoril<\\/p><p><a title=\\\"Au sujet de votre perte\\\" href=\\\"https:\\/\\/lagbt.wiwiland.net\\/index.php?title=Au_sujet_de_votre_perte\\\">Au sujet de votre perte<\\/a> \\u2014 Reginn Limilus<\\/p><p><a title=\\\"Avertissement contre la lame d\'\\u00e9b\\u00e8ne\\\" href=\\\"https:\\/\\/lagbt.wiwiland.net\\/index.php?title=Avertissement_contre_la_lame_d%27%C3%A9b%C3%A8ne\\\">Avertissement contre la lame d\'\\u00e9b\\u00e8ne<\\/a><\\/p><p><a title=\\\"Avertissement de Rigel\\\" href=\\\"https:\\/\\/lagbt.wiwiland.net\\/index.php?title=Avertissement_de_Rigel\\\">Avertissement de Rigel<\\/a> \\u2014 Rigel Bras-de-Fer<\\/p><p><a title=\\\"Avertissement de Vex\\\" href=\\\"https:\\/\\/lagbt.wiwiland.net\\/index.php?title=Avertissement_de_Vex\\\">Avertissement de Vex<\\/a> \\u2014 Vex<\\/p><p><a title=\\\"Avertissement officiel\\\" href=\\\"https:\\/\\/lagbt.wiwiland.net\\/index.php?title=Avertissement_officiel\\\">Avertissement officiel<\\/a><\\/p><p><a title=\\\"Aveux de Gulum-Ei\\\" href=\\\"https:\\/\\/lagbt.wiwiland.net\\/index.php?title=Aveux_de_Gulum-Ei\\\">Aveux de Gulum-Ei<\\/a> \\u2014 Gulum-Ei<\\/p><p><a title=\\\"Avis \\u00e0 tous les employ\\u00e9s !\\\" href=\\\"https:\\/\\/lagbt.wiwiland.net\\/index.php?title=Avis_%C3%A0_tous_les_employ%C3%A9s_!\\\">Avis \\u00e0 tous les employ\\u00e9s !<\\/a> \\u2014 Indaryn<\\/p><p><a title=\\\"Avis d\'augmentation\\\" href=\\\"https:\\/\\/lagbt.wiwiland.net\\/index.php?title=Avis_d%27augmentation\\\">Avis d\'augmentation<\\/a> \\u2014 Maven Roncenoir<\\/p><p><a title=\\\"Avis du Capitaine Veleth\\\" href=\\\"https:\\/\\/lagbt.wiwiland.net\\/index.php?title=Avis_du_Capitaine_Veleth\\\">Avis du Capitaine Veleth<\\/a> \\u2014 Capitaine Veleth<\\/p><p><a title=\\\"Avis\\\" href=\\\"https:\\/\\/lagbt.wiwiland.net\\/index.php?title=Avis\\\">Avis<\\/a><\\/p><p><a title=\\\"Besoin de Cynric\\\" href=\\\"https:\\/\\/lagbt.wiwiland.net\\/index.php?title=Besoin_de_Cynric\\\">Besoin de Cynric<\\/a><\\/p><p><a title=\\\"Brochure du mus\\u00e9e\\\" href=\\\"https:\\/\\/lagbt.wiwiland.net\\/index.php?title=Brochure_du_mus%C3%A9e\\\">Brochure du mus\\u00e9e<\\/a> \\u2014 Silus Vesuius<\\/p><p><a title=\\\"Butin dwemer\\\" href=\\\"https:\\/\\/lagbt.wiwiland.net\\/index.php?title=Butin_dwemer\\\">Butin dwemer<\\/a><\\/p><p><a title=\\\"Cargaison arriv\\u00e9e\\\" href=\\\"https:\\/\\/lagbt.wiwiland.net\\/index.php?title=Cargaison_arriv%C3%A9e\\\">Cargaison arriv\\u00e9e<\\/a><\\/p><p><a title=\\\"Cargaison pr\\u00eate\\\" href=\\\"https:\\/\\/lagbt.wiwiland.net\\/index.php?title=Cargaison_pr%C3%AAte\\\">Cargaison pr\\u00eate<\\/a><\\/p><p><a title=\\\"C\\u00e9r\\u00e9monie argonienne\\\" href=\\\"https:\\/\\/lagbt.wiwiland.net\\/index.php?title=C%C3%A9r%C3%A9monie_argonienne\\\">C\\u00e9r\\u00e9monie argonienne<\\/a> \\u2014 Talen-Jei<\\/p><p><a title=\\\"Charwich-Koniinge : correspondance\\\" href=\\\"https:\\/\\/lagbt.wiwiland.net\\/index.php?title=Charwich-Koniinge_:_correspondance\\\">Charwich-Koniinge : correspondance<\\/a> \\u2014 Charwich, Koniinge<\\/p><p><a title=\\\"Coffres d\'entra\\u00eenement\\\" href=\\\"https:\\/\\/lagbt.wiwiland.net\\/index.php?title=Coffres_d%27entra%C3%AEnement\\\">Coffres d\'entra\\u00eenement<\\/a><\\/p><p><a title=\\\"Concurrents potentiels\\\" href=\\\"https:\\/\\/lagbt.wiwiland.net\\/index.php?title=Concurrents_potentiels\\\">Concurrents potentiels<\\/a><\\/p><p><a title=\\\"Condol\\u00e9ances imp\\u00e9riales\\\" href=\\\"https:\\/\\/lagbt.wiwiland.net\\/index.php?title=Condol%C3%A9ances_imp%C3%A9riales\\\">Condol\\u00e9ances imp\\u00e9riales<\\/a> \\u2014 Pius Bruccius<\\/p><p><a title=\\\"Contact de l\'Empire oriental\\\" href=\\\"https:\\/\\/lagbt.wiwiland.net\\/index.php?title=Contact_de_l%27Empire_oriental\\\">Contact de l\'Empire oriental<\\/a><\\/p><p><a title=\\\"D\\u00e9claration de guerre\\\" href=\\\"https:\\/\\/lagbt.wiwiland.net\\/index.php?title=D%C3%A9claration_de_guerre\\\">D\\u00e9claration de guerre<\\/a> \\u2014 G\\u00e9n\\u00e9ral Falx Carius<\\/p><p><a title=\\\"Demande d\'aide !\\\" href=\\\"https:\\/\\/lagbt.wiwiland.net\\/index.php?title=Demande_d%27aide_!\\\">Demande d\'aide !<\\/a> \\u2014 Madena<\\/p><p><a title=\\\"Derni\\u00e8re lettre d\'Habd\\\" href=\\\"https:\\/\\/lagbt.wiwiland.net\\/index.php?title=Derni%C3%A8re_lettre_d%27Habd\\\">Derni\\u00e8re lettre d\'Habd<\\/a> - Habd<\\/p><p><a title=\\\"Derniers mots du voleur\\\" href=\\\"https:\\/\\/lagbt.wiwiland.net\\/index.php?title=Derniers_mots_du_voleur\\\">Derniers mots du voleur<\\/a><\\/p><p><a title=\\\"Enqu\\u00eate sur les dragons : \\u00e9tat actuel\\\" href=\\\"https:\\/\\/lagbt.wiwiland.net\\/index.php?title=Enqu%C3%AAte_sur_les_dragons_:_%C3%A9tat_actuel\\\">Enqu\\u00eate sur les dragons : \\u00e9tat actuel<\\/a> \\u2014 Rulindil<\\/p><p><a title=\\\"Excuses\\\" href=\\\"https:\\/\\/lagbt.wiwiland.net\\/index.php?title=Excuses\\\">Excuses<\\/a> \\u2014 Wilhem<\\/p><p><a title=\\\"Fausse lettre de Faendal\\\" href=\\\"https:\\/\\/lagbt.wiwiland.net\\/index.php?title=Fausse_lettre_de_Faendal\\\">Fausse lettre de Faendal<\\/a> \\u2014 Faendal<\\/p><p><a title=\\\"Fausse lettre de Sven\\\" href=\\\"https:\\/\\/lagbt.wiwiland.net\\/index.php?title=Fausse_lettre_de_Sven\\\">Fausse lettre de Sven<\\/a> \\u2014 Sven<\\/p><p><a title=\\\"Fragment de journal\\\" href=\\\"https:\\/\\/lagbt.wiwiland.net\\/index.php?title=Fragment_de_journal\\\">Fragment de journal<\\/a><\\/p><p><a title=\\\"Invitation \\u00e0 la r\\u00e9ception d\'Elenwen\\\" href=\\\"https:\\/\\/lagbt.wiwiland.net\\/index.php?title=Invitation_%C3%A0_la_r%C3%A9ception_d%27Elenwen\\\">Invitation \\u00e0 la r\\u00e9ception d\'Elenwen<\\/a><\\/p><p><a title=\\\"Journal ab\\u00eem\\u00e9 d\'un mineur\\\" href=\\\"https:\\/\\/lagbt.wiwiland.net\\/index.php?title=Journal_ab%C3%AEm%C3%A9_d%27un_mineur\\\">Journal ab\\u00eem\\u00e9 d\'un mineur<\\/a><\\/p><p><a title=\\\"Journal cod\\u00e9 de Gallus\\\" href=\\\"https:\\/\\/lagbt.wiwiland.net\\/index.php?title=Journal_cod%C3%A9_de_Gallus\\\">Journal cod\\u00e9 de Gallus<\\/a> \\u2014 Gallus Desidenius<\\/p><p><a title=\\\"Journal d\'Agrius\\\" href=\\\"https:\\/\\/lagbt.wiwiland.net\\/index.php?title=Journal_d%27Agrius\\\">Journal d\'Agrius<\\/a> \\u2014 Agrius<\\/p><p><a title=\\\"Journal d\'Aicantar\\\" href=\\\"https:\\/\\/lagbt.wiwiland.net\\/index.php?title=Journal_d%27Aicantar\\\">Journal d\'Aicantar<\\/a> \\u2014 Aicantar<\\/p><p><a title=\\\"Journal d\'Alva\\\" href=\\\"https:\\/\\/lagbt.wiwiland.net\\/index.php?title=Journal_d%27Alva\\\">Journal d\'Alva<\\/a> \\u2014 Alva<\\/p><p><a title=\\\"Journal d\'Arondil\\\" href=\\\"https:\\/\\/lagbt.wiwiland.net\\/index.php?title=Journal_d%27Arondil\\\">Journal d\'Arondil<\\/a> \\u2014 Arondil<\\/p><p><a title=\\\"Journal d\'Arvel\\\" href=\\\"https:\\/\\/lagbt.wiwiland.net\\/index.php?title=Journal_d%27Arvel\\\">Journal d\'Arvel<\\/a> \\u2014 Arvel<\\/p><p><a title=\\\"Journal d\'Eisa\\\" href=\\\"https:\\/\\/lagbt.wiwiland.net\\/index.php?title=Journal_d%27Eisa\\\">Journal d\'Eisa<\\/a> \\u2014 Eisa<\\/p><p><a title=\\\"Journal d\'Endrast\\\" href=\\\"https:\\/\\/lagbt.wiwiland.net\\/index.php?title=Journal_d%27Endrast\\\">Journal d\'Endrast<\\/a> \\u2014 Endrast<\\/p><p><a title=\\\"Journal d\'exp\\u00e9rience d\'Ildari\\\" href=\\\"https:\\/\\/lagbt.wiwiland.net\\/index.php?title=Journal_d%27exp%C3%A9rience_d%27Ildari\\\">Journal d\'exp\\u00e9rience d\'Ildari<\\/a> \\u2014 Ildari<\\/p><p><a title=\\\"Journal d\'Eydis\\\" href=\\\"https:\\/\\/lagbt.wiwiland.net\\/index.php?title=Journal_d%27Eydis\\\">Journal d\'Eydis<\\/a> \\u2014 Eydis<\\/p><p><a title=\\\"Journal d\'Habd\\\" href=\\\"https:\\/\\/lagbt.wiwiland.net\\/index.php?title=Journal_d%27Habd\\\">Journal d\'Habd<\\/a> - Habd<\\/p><p><a title=\\\"Journal d\'Hajvarr\\\" href=\\\"https:\\/\\/lagbt.wiwiland.net\\/index.php?title=Journal_d%27Hajvarr\\\">Journal d\'Hajvarr<\\/a> \\u2014 Hajvarr<\\/p><p><a title=\\\"Journal d\'Hamelyn\\\" href=\\\"https:\\/\\/lagbt.wiwiland.net\\/index.php?title=Journal_d%27Hamelyn\\\">Journal d\'Hamelyn<\\/a> \\u2014 Hamelyn<\\/p><p><a title=\\\"Journal d\'Hargar\\\" href=\\\"https:\\/\\/lagbt.wiwiland.net\\/index.php?title=Journal_d%27Hargar\\\">Journal d\'Hargar<\\/a> \\u2014 Hargar<\\/p><p><a title=\\\"Journal d\'Ildari\\\" href=\\\"https:\\/\\/lagbt.wiwiland.net\\/index.php?title=Journal_d%27Ildari\\\">Journal d\'Ildari<\\/a> \\u2014 Ildari<\\/p><p><a title=\\\"Journal d\'Ulyn\\\" href=\\\"https:\\/\\/lagbt.wiwiland.net\\/index.php?title=Journal_d%27Ulyn\\\">Journal d\'Ulyn<\\/a> \\u2014 Ulyn<\\/p><p><a title=\\\"Journal d\'Umana\\\" href=\\\"https:\\/\\/lagbt.wiwiland.net\\/index.php?title=Journal_d%27Umana\\\">Journal d\'Umana<\\/a> \\u2014 Umana<\\/p><p><a title=\\\"Journal d\'un alchimiste\\\" href=\\\"https:\\/\\/lagbt.wiwiland.net\\/index.php?title=Journal_d%27un_alchimiste\\\">Journal d\'un alchimiste<\\/a><\\/p><p><a title=\\\"Journal d\'un fou\\\" href=\\\"https:\\/\\/lagbt.wiwiland.net\\/index.php?title=Journal_d%27un_fou\\\">Journal d\'un fou<\\/a><\\/p><p><a title=\\\"Journal d\'un nordique\\\" href=\\\"https:\\/\\/lagbt.wiwiland.net\\/index.php?title=Journal_d%27un_nordique\\\">Journal d\'un nordique<\\/a><\\/p><p><a title=\\\"Journal de Cic\\u00e9ron\\\" href=\\\"https:\\/\\/lagbt.wiwiland.net\\/index.php?title=Journal_de_Cic%C3%A9ron\\\">Journal de Cic\\u00e9ron<\\/a> \\u2014 Cic\\u00e9ron<\\/p><p><a title=\\\"Journal de Daynas Valen\\\" href=\\\"https:\\/\\/lagbt.wiwiland.net\\/index.php?title=Journal_de_Daynas_Valen\\\">Journal de Daynas Valen<\\/a> \\u2014 Daynas Valen<\\/p><p><a title=\\\"Journal de Drokt\\\" href=\\\"https:\\/\\/lagbt.wiwiland.net\\/index.php?title=Journal_de_Drokt\\\">Journal de Drokt<\\/a> \\u2014 Drokt<\\/p><p><a title=\\\"Journal de Faire Agarwen\\\" href=\\\"https:\\/\\/lagbt.wiwiland.net\\/index.php?title=Journal_de_Faire_Agarwen\\\">Journal de Faire Agarwen<\\/a> \\u2014 Faire Agarwen<\\/p><p><a title=\\\"Journal de Gratian\\\" href=\\\"https:\\/\\/lagbt.wiwiland.net\\/index.php?title=Journal_de_Gratian\\\">Journal de Gratian<\\/a> \\u2014 Gratian Caerellius<\\/p><p><a title=\\\"Journal de Hrodulf\\\" href=\\\"https:\\/\\/lagbt.wiwiland.net\\/index.php?title=Journal_de_Hrodulf\\\">Journal de Hrodulf<\\/a> \\u2014 Hrodulf<\\/p><p><a title=\\\"Journal de J\'zhar\\\" href=\\\"https:\\/\\/lagbt.wiwiland.net\\/index.php?title=Journal_de_J%27zhar\\\">Journal de J\'zhar<\\/a><\\/p><p><a title=\\\"Journal de Japhet\\\" href=\\\"https:\\/\\/lagbt.wiwiland.net\\/index.php?title=Journal_de_Japhet\\\">Journal de Japhet<\\/a> \\u2014 Japhet<\\/p><p><a title=\\\"Journal de Karan\\\" href=\\\"https:\\/\\/lagbt.wiwiland.net\\/index.php?title=Journal_de_Karan\\\">Journal de Karan<\\/a> \\u2014 Karan<\\/p><p><a title=\\\"Journal de Katria\\\" href=\\\"https:\\/\\/lagbt.wiwiland.net\\/index.php?title=Journal_de_Katria\\\">Journal de Katria<\\/a> \\u2014 Katria<\\/p><p><a title=\\\"Journal de Kodlak\\\" href=\\\"https:\\/\\/lagbt.wiwiland.net\\/index.php?title=Journal_de_Kodlak\\\">Journal de Kodlak<\\/a> \\u2014 Kodlak Blancrin<\\/p><p><a title=\\\"Journal de Kornalus\\\" href=\\\"https:\\/\\/lagbt.wiwiland.net\\/index.php?title=Journal_de_Kornalus\\\">Journal de Kornalus<\\/a> - Kornalus<\\/p><p><a title=\\\"Journal de Krag\\\" href=\\\"https:\\/\\/lagbt.wiwiland.net\\/index.php?title=Journal_de_Krag\\\">Journal de Krag<\\/a> \\u2014 Krag<\\/p><p><a title=\\\"Journal de Kyr\\\" href=\\\"https:\\/\\/lagbt.wiwiland.net\\/index.php?title=Journal_de_Kyr\\\">Journal de Kyr<\\/a> \\u2014 Kyr<\\/p><p><a title=\\\"Journal de l\'aventurier\\\" href=\\\"https:\\/\\/lagbt.wiwiland.net\\/index.php?title=Journal_de_l%27aventurier\\\">Journal de l\'aventurier<\\/a><\\/p><p><a title=\\\"Journal de Lu-ah\\\" href=\\\"https:\\/\\/lagbt.wiwiland.net\\/index.php?title=Journal_de_Lu-ah\\\">Journal de Lu-ah<\\/a> \\u2014 Lu-ah<\\/p><p><a title=\\\"Journal de Lymdrenn Tenvanni\\\" href=\\\"https:\\/\\/lagbt.wiwiland.net\\/index.php?title=Journal_de_Lymdrenn_Tenvanni\\\">Journal de Lymdrenn Tenvanni<\\/a> \\u2014 Lymdrenn Telvanni, Hidrya Olen<\\/p><p><a title=\\\"Journal de Maluril\\\" href=\\\"https:\\/\\/lagbt.wiwiland.net\\/index.php?title=Journal_de_Maluril\\\">Journal de Maluril<\\/a> \\u2014 Maluril<\\/p><p><a title=\\\"Journal de marchande\\\" href=\\\"https:\\/\\/lagbt.wiwiland.net\\/index.php?title=Journal_de_marchande\\\">Journal de marchande<\\/a><\\/p><p><a title=\\\"Journal de Margret\\\" href=\\\"https:\\/\\/lagbt.wiwiland.net\\/index.php?title=Journal_de_Margret\\\">Journal de Margret<\\/a> \\u2014 Margret<\\/p><p><a title=\\\"Journal de Medresi Dran\\\" href=\\\"https:\\/\\/lagbt.wiwiland.net\\/index.php?title=Journal_de_Medresi_Dran\\\">Journal de Medresi Dran<\\/a> \\u2014 Medresi Dran<\\/p><p><a title=\\\"Journal de Merilar\\\" href=\\\"https:\\/\\/lagbt.wiwiland.net\\/index.php?title=Journal_de_Merilar\\\">Journal de Merilar<\\/a> \\u2014 Merilar<\\/p><p><a title=\\\"Journal de Mirtil Angoth\\\" href=\\\"https:\\/\\/lagbt.wiwiland.net\\/index.php?title=Journal_de_Mirtil_Angoth\\\">Journal de Mirtil Angoth<\\/a> \\u2014 Mirtil Angoth<\\/p><p><a title=\\\"Journal de Nepos\\\" href=\\\"https:\\/\\/lagbt.wiwiland.net\\/index.php?title=Journal_de_Nepos\\\">Journal de Nepos<\\/a> \\u2014 Nepos<\\/p><p><a title=\\\"Journal de Nystrom\\\" href=\\\"https:\\/\\/lagbt.wiwiland.net\\/index.php?title=Journal_de_Nystrom\\\">Journal de Nystrom<\\/a><\\/p><p><a title=\\\"Journal de Ralis Sedarys\\\" href=\\\"https:\\/\\/lagbt.wiwiland.net\\/index.php?title=Journal_de_Ralis_Sedarys\\\">Journal de Ralis Sedarys<\\/a> \\u2014 Ralis Sedarys<\\/p><p><a title=\\\"Journal de recherches\\\" href=\\\"https:\\/\\/lagbt.wiwiland.net\\/index.php?title=Journal_de_recherches\\\">Journal de recherches<\\/a> \\u2014 Premier adjoint Oronrel<\\/p><p><a title=\\\"Journal de Ramati\\\" href=\\\"https:\\/\\/lagbt.wiwiland.net\\/index.php?title=Journal_de_Ramati\\\">Journal de Ramati<\\/a> - Ramati<\\/p><p><a title=\\\"Journal de Runil\\\" href=\\\"https:\\/\\/lagbt.wiwiland.net\\/index.php?title=Journal_de_Runil\\\">Journal de Runil<\\/a> \\u2014 Runil<\\/p><p><a title=\\\"Journal de Saden\\\" href=\\\"https:\\/\\/lagbt.wiwiland.net\\/index.php?title=Journal_de_Saden\\\">Journal de Saden<\\/a> \\u2014 Saden<\\/p><p><a title=\\\"Journal de Servos\\\" href=\\\"https:\\/\\/lagbt.wiwiland.net\\/index.php?title=Journal_de_Servos\\\">Journal de Servos<\\/a> \\u2014 Servos Rendas<\\/p><p><a title=\\\"Journal de Sild\\\" href=\\\"https:\\/\\/lagbt.wiwiland.net\\/index.php?title=Journal_de_Sild\\\">Journal de Sild<\\/a> \\u2014 Sild<\\/p><p><a title=\\\"Journal de Sinderion\\\" href=\\\"https:\\/\\/lagbt.wiwiland.net\\/index.php?title=Journal_de_Sinderion\\\">Journal de Sinderion<\\/a> \\u2014 Sinderion<\\/p><p><a title=\\\"Journal de Skorm Marcheneige\\\" href=\\\"https:\\/\\/lagbt.wiwiland.net\\/index.php?title=Journal_de_Skorm_Marcheneige\\\">Journal de Skorm Marcheneige<\\/a> \\u2014 Skorm Marcheneige<\\/p><p><a title=\\\"Journal de Staubin\\\" href=\\\"https:\\/\\/lagbt.wiwiland.net\\/index.php?title=Journal_de_Staubin\\\">Journal de Staubin<\\/a><\\/p><p><a title=\\\"Journal de Stromm\\\" href=\\\"https:\\/\\/lagbt.wiwiland.net\\/index.php?title=Journal_de_Stromm\\\">Journal de Stromm<\\/a> \\u2014 Stromm<\\/p><p><a title=\\\"Journal de Sudi\\\" href=\\\"https:\\/\\/lagbt.wiwiland.net\\/index.php?title=Journal_de_Sudi\\\">Journal de Sudi<\\/a> - Sudi<\\/p><p><a title=\\\"Journal de Sulla\\\" href=\\\"https:\\/\\/lagbt.wiwiland.net\\/index.php?title=Journal_de_Sulla\\\">Journal de Sulla<\\/a> \\u2014 Sulla<\\/p><p><a title=\\\"Journal de Suvaris Atheron\\\" href=\\\"https:\\/\\/lagbt.wiwiland.net\\/index.php?title=Journal_de_Suvaris_Atheron\\\">Journal de Suvaris Atheron<\\/a> \\u2014 Suvaris Atheron<\\/p><p><a title=\\\"Journal de Thonar\\\" href=\\\"https:\\/\\/lagbt.wiwiland.net\\/index.php?title=Journal_de_Thonar\\\">Journal de Thonar<\\/a> \\u2014 Thonar Silverblood<\\/p><p><a title=\\\"Journal de Valerica\\\" href=\\\"https:\\/\\/lagbt.wiwiland.net\\/index.php?title=Journal_de_Valerica\\\">Journal de Valerica<\\/a> \\u2014 Valerica<\\/p><p><a title=\\\"Journal de Venarus Vulpin\\\" href=\\\"https:\\/\\/lagbt.wiwiland.net\\/index.php?title=Journal_de_Venarus_Vulpin\\\">Journal de Venarus Vulpin<\\/a> \\u2014 Venarus Vulpin<\\/p><p><a title=\\\"Journal de Volk\\\" href=\\\"https:\\/\\/lagbt.wiwiland.net\\/index.php?title=Journal_de_Volk\\\">Journal de Volk<\\/a> \\u2014 Volk<\\/p><p><a title=\\\"Journal de Wyndelius Gatharian\\\" href=\\\"https:\\/\\/lagbt.wiwiland.net\\/index.php?title=Journal_de_Wyndelius_Gatharian\\\">Journal de Wyndelius Gatharian<\\/a> \\u2014 Wyndelius Gatharian<\\/p><p><a title=\\\"Journal du bandit\\\" href=\\\"https:\\/\\/lagbt.wiwiland.net\\/index.php?title=Journal_du_bandit\\\">Journal du bandit<\\/a><\\/p><p><a title=\\\"Journal du bandit d\'Orotheim\\\" href=\\\"https:\\/\\/lagbt.wiwiland.net\\/index.php?title=Journal_du_bandit_d%27Orotheim\\\">Journal du bandit d\'Orotheim<\\/a><\\/p>\",\"_css_classes\":\"text-skyrim\"},\"elements\":[],\"widgetType\":\"text-editor\"}],\"isInner\":true},{\"id\":\"00d2a2f\",\"elType\":\"column\",\"settings\":{\"_column_size\":50,\"_inline_size\":null},\"elements\":[{\"id\":\"db822ea\",\"elType\":\"widget\",\"settings\":{\"editor\":\"<br><p><a title=\\\"Journal du chasseur\\\" href=\\\"https:\\/\\/lagbt.wiwiland.net\\/index.php?title=Journal_du_chasseur\\\">Journal du chasseur<\\/a><\\/p>\\n<p><a title=\\\"Journal du chef des bandits\\\" href=\\\"https:\\/\\/lagbt.wiwiland.net\\/index.php?title=Journal_du_chef_des_bandits\\\">Journal du chef des bandits<\\/a><\\/p>\\n<p><a title=\\\"Journal du contrebandier\\\" href=\\\"https:\\/\\/lagbt.wiwiland.net\\/index.php?title=Journal_du_contrebandier\\\">Journal du contrebandier<\\/a><\\/p>\\n<p><a title=\\\"Journal du cuisinier\\\" href=\\\"https:\\/\\/lagbt.wiwiland.net\\/index.php?title=Journal_du_cuisinier\\\">Journal du cuisinier<\\/a><\\/p>\\n<p><a title=\\\"Journal du mineur\\\" href=\\\"https:\\/\\/lagbt.wiwiland.net\\/index.php?title=Journal_du_mineur\\\">Journal du mineur<\\/a> \\u2014 Hadrir<\\/p>\\n<p><a title=\\\"Journal du p\\u00eacheur Advard\\\" href=\\\"https:\\/\\/lagbt.wiwiland.net\\/index.php?title=Journal_du_p%C3%AAcheur_Advard\\\">Journal du p\\u00eacheur Advard<\\/a><\\/p>\\n<p><a title=\\\"Journaux de la caravane\\\" href=\\\"https:\\/\\/lagbt.wiwiland.net\\/index.php?title=Journaux_de_la_caravane\\\">Journaux de la caravane<\\/a><\\/p>\\n<p><a title=\\\"Journaux du boucher\\\" href=\\\"https:\\/\\/lagbt.wiwiland.net\\/index.php?title=Journaux_du_boucher\\\">Journaux du boucher<\\/a> \\u2014 Calixto<\\/p>\\n<p><a title=\\\"L\'affaire des Ulen\\\" href=\\\"https:\\/\\/lagbt.wiwiland.net\\/index.php?title=L%27affaire_des_Ulen\\\">L\'affaire des Ulen<\\/a> \\u2014 Vendil Ulen<\\/p>\\n<p><a title=\\\"L\'\\u00c9toile Noire, Un exploit magique sur les Daedra\\\" href=\\\"https:\\/\\/lagbt.wiwiland.net\\/index.php?title=L%27%C3%89toile_Noire,_Un_exploit_magique_sur_les_Daedra\\\">L\'\\u00c9toile Noire, Un exploit magique sur les Daedra<\\/a> \\u2014 Malyn Varen<\\/p>\\n<p><a title=\\\"Laisse-moi une chance\\\" href=\\\"https:\\/\\/lagbt.wiwiland.net\\/index.php?title=Laisse-moi_une_chance\\\">Laisse-moi une chance<\\/a> \\u2014 Delvin<\\/p>\\n<p><a title=\\\"Laissez-passer du Gourmet\\\" href=\\\"https:\\/\\/lagbt.wiwiland.net\\/index.php?title=Laissez-passer_du_Gourmet\\\">Laissez-passer du Gourmet<\\/a><\\/p>\\n<p><a title=\\\"Le Feu et la Foi de Nchunak\\\" href=\\\"https:\\/\\/lagbt.wiwiland.net\\/index.php?title=Le_Feu_et_la_Foi_de_Nchunak\\\">Le Feu et la Foi de Nchunak<\\/a><\\/p>\\n<p><a title=\\\"Le proc\\u00e8s des arts noirs\\\" href=\\\"https:\\/\\/lagbt.wiwiland.net\\/index.php?title=Le_proc%C3%A8s_des_arts_noirs\\\">Le proc\\u00e8s des arts noirs<\\/a> \\u2014 Hanibal Traven<\\/p>\\n<p><a title=\\\"Les lettres de Vendeaume\\\" href=\\\"https:\\/\\/lagbt.wiwiland.net\\/index.php?title=Les_lettres_de_Vendeaume\\\">Les lettres de Vendeaume<\\/a> \\u2014 Reylia, Stessl, Shapl<\\/p>\\n<p><a title=\\\"Lettre \\u00e0 Beem-Ja\\\" href=\\\"https:\\/\\/lagbt.wiwiland.net\\/index.php?title=Lettre_%C3%A0_Beem-Ja\\\">Lettre \\u00e0 Beem-Ja<\\/a><\\/p>\\n<p><a title=\\\"Lettre \\u00e0 Golldir\\\" href=\\\"https:\\/\\/lagbt.wiwiland.net\\/index.php?title=Lettre_%C3%A0_Golldir\\\">Lettre \\u00e0 Golldir<\\/a> \\u2014 Vals Veran<\\/p>\\n<p><a title=\\\"Lettre \\u00e0 la Cit\\u00e9 imp\\u00e9riale\\\" href=\\\"https:\\/\\/lagbt.wiwiland.net\\/index.php?title=Lettre_%C3%A0_la_Cit%C3%A9_imp%C3%A9riale\\\">Lettre \\u00e0 la Cit\\u00e9 imp\\u00e9riale<\\/a> \\u2014 G\\u00e9n\\u00e9ral Falx Carius<\\/p>\\n<p><a title=\\\"Lettre \\u00e0 Rodulf\\\" href=\\\"https:\\/\\/lagbt.wiwiland.net\\/index.php?title=Lettre_%C3%A0_Rodulf\\\">Lettre \\u00e0 Rodulf<\\/a> \\u2014 Hajvarr<\\/p>\\n<p><a title=\\\"Lettre \\u00e0 Sabjorn\\\" href=\\\"https:\\/\\/lagbt.wiwiland.net\\/index.php?title=Lettre_%C3%A0_Sabjorn\\\">Lettre \\u00e0 Sabjorn<\\/a><\\/p>\\n<p><a title=\\\"Lettre \\u00e0 Salma\\\" href=\\\"https:\\/\\/lagbt.wiwiland.net\\/index.php?title=Lettre_%C3%A0_Salma\\\">Lettre \\u00e0 Salma<\\/a><\\/p>\\n<p><a title=\\\"Lettre \\u00e0 Usha\\\" href=\\\"https:\\/\\/lagbt.wiwiland.net\\/index.php?title=Lettre_%C3%A0_Usha\\\">Lettre \\u00e0 Usha<\\/a> \\u2014 Monesa<\\/p>\\n<p><a title=\\\"Lettre \\u00e0 Vals Veran\\\" href=\\\"https:\\/\\/lagbt.wiwiland.net\\/index.php?title=Lettre_%C3%A0_Vals_Veran\\\">Lettre \\u00e0 Vals Veran<\\/a> \\u2014 Golldir<\\/p>\\n<p><a title=\\\"Lettre cachet\\u00e9e d\'Amaund Motierre\\\" href=\\\"https:\\/\\/lagbt.wiwiland.net\\/index.php?title=Lettre_cachet%C3%A9e_d%27Amaund_Motierre\\\">Lettre cachet\\u00e9e d\'Amaund Motierre<\\/a> \\u2014 Amaund Motierre<\\/p>\\n<p><a title=\\\"Lettre compromettante de Gaius Maro\\\" href=\\\"https:\\/\\/lagbt.wiwiland.net\\/index.php?title=Lettre_compromettante_de_Gaius_Maro\\\">Lettre compromettante de Gaius Maro<\\/a><\\/p>\\n<p><a title=\\\"Lettre compromettante de Maven\\\" href=\\\"https:\\/\\/lagbt.wiwiland.net\\/index.php?title=Lettre_compromettante_de_Maven\\\">Lettre compromettante de Maven<\\/a> \\u2014 Maven Roncenoir<\\/p>\\n<p><a title=\\\"Lettre confidentielle\\\" href=\\\"https:\\/\\/lagbt.wiwiland.net\\/index.php?title=Lettre_confidentielle\\\">Lettre confidentielle<\\/a> \\u2014 Lod<\\/p>\\n<p><a title=\\\"Lettre couverte de sang\\\" href=\\\"https:\\/\\/lagbt.wiwiland.net\\/index.php?title=Lettre_couverte_de_sang\\\">Lettre couverte de sang<\\/a> - Hrodulf<\\/p>\\n<p><a title=\\\"Lettre d\'Anise\\\" href=\\\"https:\\/\\/lagbt.wiwiland.net\\/index.php?title=Lettre_d%27Anise\\\">Lettre d\'Anise<\\/a> \\u2014 Anise<\\/p>\\n<p><a title=\\\"Lettre d\'Harkon\\\" href=\\\"https:\\/\\/lagbt.wiwiland.net\\/index.php?title=Lettre_d%27Harkon\\\">Lettre d\'Harkon<\\/a> \\u2014 Lord Harkon<\\/p>\\n<p><a title=\\\"Lettre d\'Idgrod\\\" href=\\\"https:\\/\\/lagbt.wiwiland.net\\/index.php?title=Lettre_d%27Idgrod\\\">Lettre d\'Idgrod<\\/a> \\u2014 Idgrod la jeune<\\/p>\\n<p><a title=\\\"Lettre d\'Infect\\u00e9 non envoy\\u00e9e\\\" href=\\\"https:\\/\\/lagbt.wiwiland.net\\/index.php?title=Lettre_d%27Infect%C3%A9_non_envoy%C3%A9e\\\">Lettre d\'Infect\\u00e9 non envoy\\u00e9e<\\/a><\\/p>\\n<p><a title=\\\"Lettre d\'Isabelle \\u00e0 Ranmir\\\" href=\\\"https:\\/\\/lagbt.wiwiland.net\\/index.php?title=Lettre_d%27Isabelle_%C3%A0_Ranmir\\\">Lettre d\'Isabelle \\u00e0 Ranmir<\\/a> \\u2014 Isabelle<\\/p>\\n<p><a title=\\\"Lettre d\'un assassin de la Confr\\u00e9rie Noire\\\" href=\\\"https:\\/\\/lagbt.wiwiland.net\\/index.php?title=Lettre_d%27un_assassin_de_la_Confr%C3%A9rie_Noire\\\">Lettre d\'un assassin de la Confr\\u00e9rie Noire<\\/a> \\u2014 Astrid<\\/p>\\n<p><a title=\\\"Lettre de Bjornolfr\\\" href=\\\"https:\\/\\/lagbt.wiwiland.net\\/index.php?title=Lettre_de_Bjornolfr\\\">Lettre de Bjornolfr<\\/a> \\u2014 Bjornolfr<\\/p>\\n<p><a title=\\\"Lettre de Christophe\\\" href=\\\"https:\\/\\/lagbt.wiwiland.net\\/index.php?title=Lettre_de_Christophe\\\">Lettre de Christophe<\\/a> \\u2014 Christophe Bartlet<\\/p>\\n<p><a title=\\\"Lettre de cr\\u00e9dit\\\" href=\\\"https:\\/\\/lagbt.wiwiland.net\\/index.php?title=Lettre_de_cr%C3%A9dit\\\">Lettre de cr\\u00e9dit<\\/a> \\u2014 Delvin Mallory<\\/p>\\n<p><a title=\\\"Lettre de dol\\u00e9ances\\\" href=\\\"https:\\/\\/lagbt.wiwiland.net\\/index.php?title=Lettre_de_dol%C3%A9ances\\\">Lettre de dol\\u00e9ances<\\/a> \\u2014 Agnis<\\/p>\\n<p><a title=\\\"Lettre de Faleen \\u00e0 Calcelmo\\\" href=\\\"https:\\/\\/lagbt.wiwiland.net\\/index.php?title=Lettre_de_Faleen_%C3%A0_Calcelmo\\\">Lettre de Faleen \\u00e0 Calcelmo<\\/a> \\u2014 Faleen<\\/p>\\n<p><a title=\\\"Lettre de Glover\\\" href=\\\"https:\\/\\/lagbt.wiwiland.net\\/index.php?title=Lettre_de_Glover\\\">Lettre de Glover<\\/a> \\u2014 Glover Mallory<\\/p>\\n<p><a title=\\\"Lettre de Gorm au Capitaine Aldis\\\" href=\\\"https:\\/\\/lagbt.wiwiland.net\\/index.php?title=Lettre_de_Gorm_au_Capitaine_Aldis\\\">Lettre de Gorm au Capitaine Aldis<\\/a> \\u2014 Gorm<\\/p>\\n<p><a title=\\\"Lettre de Gratian\\\" href=\\\"https:\\/\\/lagbt.wiwiland.net\\/index.php?title=Lettre_de_Gratian\\\">Lettre de Gratian<\\/a> \\u2014 Rendellus Thandarian<\\/p>\\n<p><a title=\\\"Lettre de Jon\\\" href=\\\"https:\\/\\/lagbt.wiwiland.net\\/index.php?title=Lettre_de_Jon\\\">Lettre de Jon<\\/a> \\u2014 Jon<\\/p>\\n<p><a title=\\\"Lettre de la tour de guet\\\" href=\\\"https:\\/\\/lagbt.wiwiland.net\\/index.php?title=Lettre_de_la_tour_de_guet\\\">Lettre de la tour de guet<\\/a><\\/p>\\n<p><a title=\\\"Lettre de Mani\\\" href=\\\"https:\\/\\/lagbt.wiwiland.net\\/index.php?title=Lettre_de_Mani\\\">Lettre de Mani<\\/a> - Mani<\\/p>\\n<p><a title=\\\"Lettre de Maven\\\" href=\\\"https:\\/\\/lagbt.wiwiland.net\\/index.php?title=Lettre_de_Maven\\\">Lettre de Maven<\\/a> \\u2014 Maven Roncenoir<\\/p>\\n<p><a title=\\\"Lettre de Mercer sur le Lumidor\\\" href=\\\"https:\\/\\/lagbt.wiwiland.net\\/index.php?title=Lettre_de_Mercer_sur_le_Lumidor\\\">Lettre de Mercer sur le Lumidor<\\/a> \\u2014 Mercer Frey<\\/p>\\n<p><a title=\\\"Lettre de Mireli \\u00e0 sa m\\u00e8re\\\" href=\\\"https:\\/\\/lagbt.wiwiland.net\\/index.php?title=Lettre_de_Mireli_%C3%A0_sa_m%C3%A8re\\\">Lettre de Mireli \\u00e0 sa m\\u00e8re<\\/a> \\u2014 Mireli<\\/p>\\n<p><a title=\\\"Lettre d\'Olfina\\\" href=\\\"https:\\/\\/lagbt.wiwiland.net\\/index.php?title=Lettre_d%27Olfina\\\">Lettre d\'Olfina<\\/a> \\u2014 Olfina<\\/p>\\n<p><a title=\\\"Lettre de Quintus Navale\\\" href=\\\"https:\\/\\/lagbt.wiwiland.net\\/index.php?title=Lettre_de_Quintus_Navale\\\">Lettre de Quintus Navale<\\/a> \\u2014 Quintus Navale<\\/p>\\n<p><a title=\\\"Lettre de Rigel\\\" href=\\\"https:\\/\\/lagbt.wiwiland.net\\/index.php?title=Lettre_de_Rigel\\\">Lettre de Rigel<\\/a> \\u2014 Rigel Bras-de-Fer<\\/p>\\n<p><a title=\\\"Lettre de Rogatus\\\" href=\\\"https:\\/\\/lagbt.wiwiland.net\\/index.php?title=Lettre_de_Rogatus\\\">Lettre de Rogatus<\\/a> \\u2014 Rogatus<\\/p>\\n<p><a title=\\\"Lettre de Roras\\\" href=\\\"https:\\/\\/lagbt.wiwiland.net\\/index.php?title=Lettre_de_Roras\\\">Lettre de Roras<\\/a> \\u2014 Roras<\\/p>\\n<p><a title=\\\"Lettre de Sabjorn\\\" href=\\\"https:\\/\\/lagbt.wiwiland.net\\/index.php?title=Lettre_de_Sabjorn\\\">Lettre de Sabjorn<\\/a> \\u2014 Sabjorn<\\/p>\\n<p><a title=\\\"Lettre de Septimus Signus\\\" href=\\\"https:\\/\\/lagbt.wiwiland.net\\/index.php?title=Lettre_de_Septimus_Signus\\\">Lettre de Septimus Signus<\\/a> \\u2014 Septimus Signus<\\/p>\\n<p><a title=\\\"Lettre de Solitude\\\" href=\\\"https:\\/\\/lagbt.wiwiland.net\\/index.php?title=Lettre_de_Solitude\\\">Lettre de Solitude<\\/a><\\/p>\\n<p><a title=\\\"Lettre de Torkild \\u00e0 Lupe\\\" href=\\\"https:\\/\\/lagbt.wiwiland.net\\/index.php?title=Lettre_de_Torkild_%C3%A0_Lupe\\\">Lettre de Torkild \\u00e0 Lupe<\\/a> \\u2014 Torkild<\\/p>\\n<p><a title=\\\"Lettre de vampire\\\" href=\\\"https:\\/\\/lagbt.wiwiland.net\\/index.php?title=Lettre_de_vampire\\\">Lettre de vampire<\\/a> \\u2014 Malkus<\\/p>\\n<p><a title=\\\"Lettre du chambellan\\\" href=\\\"https:\\/\\/lagbt.wiwiland.net\\/index.php?title=Lettre_du_chambellan\\\">Lettre du chambellan<\\/a><\\/p>\\n<p><a title=\\\"Lettre du commandant Maro \\u00e0 son fils\\\" href=\\\"https:\\/\\/lagbt.wiwiland.net\\/index.php?title=Lettre_du_commandant_Maro_%C3%A0_son_fils\\\">Lettre du commandant Maro \\u00e0 son fils<\\/a> \\u2014 Commander Maro<\\/p>\\n<p><a title=\\\"Lettre du messager\\\" href=\\\"https:\\/\\/lagbt.wiwiland.net\\/index.php?title=Lettre_du_messager\\\">Lettre du messager<\\/a><\\/p>\\n<p><a title=\\\"Lettre du n\\u00e9cromancien\\\" href=\\\"https:\\/\\/lagbt.wiwiland.net\\/index.php?title=Lettre_du_n%C3%A9cromancien\\\">Lettre du n\\u00e9cromancien<\\/a><\\/p>\\n<p><a title=\\\"Lettre imp\\u00e9riale\\\" href=\\\"https:\\/\\/lagbt.wiwiland.net\\/index.php?title=Lettre_imp%C3%A9riale\\\">Lettre imp\\u00e9riale<\\/a><\\/p>\\n<p><a title=\\\"Lettre myst\\u00e9rieuse\\\" href=\\\"https:\\/\\/lagbt.wiwiland.net\\/index.php?title=Lettre_myst%C3%A9rieuse\\\">Lettre myst\\u00e9rieuse<\\/a> \\u2014 Delphine<\\/p>\\n<p><a title=\\\"Lettre\\\" href=\\\"https:\\/\\/lagbt.wiwiland.net\\/index.php?title=Lettre\\\">Lettre<\\/a><\\/p>\\n<p><a title=\\\"Lettres \\u00e0 Selina\\\" href=\\\"https:\\/\\/lagbt.wiwiland.net\\/index.php?title=Lettres_%C3%A0_Selina\\\">Lettres \\u00e0 Selina<\\/a> \\u2014 Maximian Axius<\\/p>\\n<p><a title=\\\"Lettres de la Compagnie de l\'Empire Oriental\\\" href=\\\"https:\\/\\/lagbt.wiwiland.net\\/index.php?title=Lettres_de_la_Compagnie_de_l%27Empire_Oriental\\\">Lettres de la Compagnie de l\'Empire Oriental<\\/a> \\u2014 Vittoria Vici<\\/p>\\n<p><a title=\\\"Lettres de Linwe\\\" href=\\\"https:\\/\\/lagbt.wiwiland.net\\/index.php?title=Lettres_de_Linwe\\\">Lettres de Linwe<\\/a> \\u2014 Linwe<\\/p>\\n<p><a title=\\\"Lettres de Ralis Sedarys\\\" href=\\\"https:\\/\\/lagbt.wiwiland.net\\/index.php?title=Lettres_de_Ralis_Sedarys\\\">Lettres de Ralis Sedarys<\\/a> \\u2014 Ralis Sedarys<\\/p>\\n<p><a title=\\\"Mara vous sourit !\\\" href=\\\"https:\\/\\/lagbt.wiwiland.net\\/index.php?title=Mara_vous_sourit_!\\\">Mara vous sourit !<\\/a> \\u2014 Drifa<\\/p>\\n<p><a title=\\\"Mat\\u00e9riel de r\\u00e9paration\\\" href=\\\"https:\\/\\/lagbt.wiwiland.net\\/index.php?title=Mat%C3%A9riel_de_r%C3%A9paration\\\">Mat\\u00e9riel de r\\u00e9paration<\\/a> \\u2014 Sam<\\/p>\\n<p><a title=\\\"Merci beaucoup\\\" href=\\\"https:\\/\\/lagbt.wiwiland.net\\/index.php?title=Merci_beaucoup\\\">Merci beaucoup<\\/a><\\/p>\\n<p><a title=\\\"Message d\'Anders\\\" href=\\\"https:\\/\\/lagbt.wiwiland.net\\/index.php?title=Message_d%27Anders\\\">Message d\'Anders<\\/a> \\u2014 Anders<\\/p>\\n<p><a title=\\\"Message d\'Ysolda\\\" href=\\\"https:\\/\\/lagbt.wiwiland.net\\/index.php?title=Message_d%27Ysolda\\\">Message d\'Ysolda<\\/a> \\u2014 Ysolda<\\/p>\\n<p><a title=\\\"Missive de Parjure\\\" href=\\\"https:\\/\\/lagbt.wiwiland.net\\/index.php?title=Missive_de_Parjure\\\">Missive de Parjure<\\/a><\\/p>\\n<p><a title=\\\"Missive des Sombrages de Fort N\\u00e9ograd\\\" href=\\\"https:\\/\\/lagbt.wiwiland.net\\/index.php?title=Missive_des_Sombrages_de_Fort_N%C3%A9ograd\\\">Missive des Sombrages de Fort N\\u00e9ograd<\\/a><\\/p>\\n<p><a title=\\\"Missive du p\\u00e8re\\\" href=\\\"https:\\/\\/lagbt.wiwiland.net\\/index.php?title=Missive_du_p%C3%A8re\\\">Missive du p\\u00e8re<\\/a><\\/p>\\n<p><a title=\\\"Missive imp\\u00e9riale\\\" href=\\\"https:\\/\\/lagbt.wiwiland.net\\/index.php?title=Missive_imp%C3%A9riale\\\">Missive imp\\u00e9riale<\\/a> \\u2014 G\\u00e9n\\u00e9ral Tullius<\\/p>\\n<p><a title=\\\"Missive imp\\u00e9riale de Fort N\\u00e9ograd\\\" href=\\\"https:\\/\\/lagbt.wiwiland.net\\/index.php?title=Missive_imp%C3%A9riale_de_Fort_N%C3%A9ograd\\\">Missive imp\\u00e9riale de Fort N\\u00e9ograd<\\/a><\\/p>\\n<p><a title=\\\"Note \\u00e0 Rhorlak\\\" href=\\\"https:\\/\\/lagbt.wiwiland.net\\/index.php?title=Note_%C3%A0_Rhorlak\\\">Note \\u00e0 Rhorlak<\\/a> \\u2014 Rigel Bras-de-Fer<\\/p>\\n<p><a title=\\\"Note \\u00e0 Thomas\\\" href=\\\"https:\\/\\/lagbt.wiwiland.net\\/index.php?title=Note_%C3%A0_Thomas\\\">Note \\u00e0 Thomas<\\/a> \\u2014 Loraine<\\/p>\\n<p><a title=\\\"Note aux autorit\\u00e9s (Bordeciel, 4E 201)\\\" href=\\\"https:\\/\\/lagbt.wiwiland.net\\/index.php?title=Note_aux_autorit%C3%A9s_(Bordeciel,_4E_201)\\\">Note aux autorit\\u00e9s<\\/a><\\/p>\\n<p><a title=\\\"Note d\'Aeri\\\" href=\\\"https:\\/\\/lagbt.wiwiland.net\\/index.php?title=Note_d%27Aeri\\\">Note d\'Aeri<\\/a> \\u2014 Aeri<\\/p>\\n<p><a title=\\\"Note d\'Agna\\\" href=\\\"https:\\/\\/lagbt.wiwiland.net\\/index.php?title=Note_d%27Agna\\\">Note d\'Agna<\\/a> \\u2014 Agna<\\/p>\\n<p><a title=\\\"Note de Bolar\\\" href=\\\"https:\\/\\/lagbt.wiwiland.net\\/index.php?title=Note_de_Bolar\\\">Note de Bolar<\\/a> \\u2014 Acilius Bolar<\\/p>\\n<p><a title=\\\"Note de Dryston\\\" href=\\\"https:\\/\\/lagbt.wiwiland.net\\/index.php?title=Note_de_Dryston\\\">Note de Dryston<\\/a> \\u2014 Dryston<\\/p>\\n<p><a title=\\\"Note de Fort Tiremuraille\\\" href=\\\"https:\\/\\/lagbt.wiwiland.net\\/index.php?title=Note_de_Fort_Tiremuraille\\\">Note de Fort Tiremuraille<\\/a><\\/p>\\n<p><a title=\\\"Note de J\'datharr\\\" href=\\\"https:\\/\\/lagbt.wiwiland.net\\/index.php?title=Note_de_J%27datharr\\\">Note de J\'datharr<\\/a> \\u2014 J\'datharr<\\/p>\\n<p><a title=\\\"Note de Jaree-Ra\\\" href=\\\"https:\\/\\/lagbt.wiwiland.net\\/index.php?title=Note_de_Jaree-Ra\\\">Note de Jaree-Ra<\\/a> \\u2014 Jaree-Ra<\\/p>\\n<p><a title=\\\"Note de l\'alchimiste\\\" href=\\\"https:\\/\\/lagbt.wiwiland.net\\/index.php?title=Note_de_l%27alchimiste\\\">Note de l\'alchimiste<\\/a> \\u2014 Froda<\\/p>\\n<p><a title=\\\"Note de l\'Infect\\u00e9\\\" href=\\\"https:\\/\\/lagbt.wiwiland.net\\/index.php?title=Note_de_l%27Infect%C3%A9\\\">Note de l\'Infect\\u00e9<\\/a><\\/p>\\n<p><a title=\\\"Note de Madanach\\\" href=\\\"https:\\/\\/lagbt.wiwiland.net\\/index.php?title=Note_de_Madanach\\\">Note de Madanach<\\/a> \\u2014 Madanach<\\/p>\\n<p><a title=\\\"Note de Maven\\\" href=\\\"https:\\/\\/lagbt.wiwiland.net\\/index.php?title=Note_de_Maven\\\">Note de Maven<\\/a> \\u2014 Maven Roncenoir<\\/p>\\n<p><a title=\\\"Note de Mogrul\\\" href=\\\"https:\\/\\/lagbt.wiwiland.net\\/index.php?title=Note_de_Mogrul\\\">Note de Mogrul<\\/a> \\u2014 Mogrul<\\/p>\\n<p><a title=\\\"Note de Parjure\\\" href=\\\"https:\\/\\/lagbt.wiwiland.net\\/index.php?title=Note_de_Parjure\\\">Note de Parjure<\\/a><\\/p>\\n<p><a title=\\\"Note de Ra\'jirr\\\" href=\\\"https:\\/\\/lagbt.wiwiland.net\\/index.php?title=Note_de_Ra%27jirr\\\">Note de Ra\'jirr<\\/a> \\u2014 Ra\'jiir<\\/p>\\n<p><a title=\\\"Note de Shavari\\\" href=\\\"https:\\/\\/lagbt.wiwiland.net\\/index.php?title=Note_de_Shavari\\\">Note de Shavari<\\/a><\\/p>\\n<p><a title=\\\"Note de Sombrage\\\" href=\\\"https:\\/\\/lagbt.wiwiland.net\\/index.php?title=Note_de_Sombrage\\\">Note de Sombrage<\\/a><\\/p>\\n<p><a title=\\\"Note de Sondas\\\" href=\\\"https:\\/\\/lagbt.wiwiland.net\\/index.php?title=Note_de_Sondas\\\">Note de Sondas<\\/a> \\u2014 Sondas Drenim<\\/p>\\n<p><a title=\\\"Note de Weylin\\\" href=\\\"https:\\/\\/lagbt.wiwiland.net\\/index.php?title=Note_de_Weylin\\\">Note de Weylin<\\/a> \\u2014 Nepo<\\/p>\\n<p><a title=\\\"Note d\\u00e9chir\\u00e9e de Firir\\\" href=\\\"https:\\/\\/lagbt.wiwiland.net\\/index.php?title=Note_d%C3%A9chir%C3%A9e_de_Firir\\\">Note d\\u00e9chir\\u00e9e de Firir<\\/a> \\u2014 Firir<\\/p>\\n<p><a title=\\\"Note d\\u00e9chir\\u00e9e de Solstheim\\\" href=\\\"https:\\/\\/lagbt.wiwiland.net\\/index.php?title=Note_d%C3%A9chir%C3%A9e_de_Solstheim\\\">Note d\\u00e9chir\\u00e9e de Solstheim<\\/a><\\/p>\\n<p><a title=\\\"Note du cadavre\\\" href=\\\"https:\\/\\/lagbt.wiwiland.net\\/index.php?title=Note_du_cadavre\\\">Note du cadavre<\\/a><\\/p>\\n<p><a title=\\\"Note du commandant\\\" href=\\\"https:\\/\\/lagbt.wiwiland.net\\/index.php?title=Note_du_commandant\\\">Note du commandant<\\/a><\\/p>\\n<p><a title=\\\"Note du contrebandier\\\" href=\\\"https:\\/\\/lagbt.wiwiland.net\\/index.php?title=Note_du_contrebandier\\\">Note du contrebandier<\\/a><\\/p>\\n<p><a title=\\\"Note du garde de Mzinchaleft\\\" href=\\\"https:\\/\\/lagbt.wiwiland.net\\/index.php?title=Note_du_garde_de_Mzinchaleft\\\">Note du garde de Mzinchaleft<\\/a><\\/p>\\n<p><a title=\\\"Note ensanglant\\u00e9e\\\" href=\\\"https:\\/\\/lagbt.wiwiland.net\\/index.php?title=Note_ensanglant%C3%A9e\\\">Note ensanglant\\u00e9e<\\/a> - Sudi<\\/p>\\n<p><a title=\\\"Note griffonn\\u00e9e \\u00e0 la h\\u00e2te\\\" href=\\\"https:\\/\\/lagbt.wiwiland.net\\/index.php?title=Note_griffonn%C3%A9e_%C3%A0_la_h%C3%A2te\\\">Note griffonn\\u00e9e \\u00e0 la h\\u00e2te<\\/a><\\/p>\\n<p><a title=\\\"Note griffonn\\u00e9e de bandit\\\" href=\\\"https:\\/\\/lagbt.wiwiland.net\\/index.php?title=Note_griffonn%C3%A9e_de_bandit\\\">Note griffonn\\u00e9e de bandit<\\/a><\\/p>\\n<p><a title=\\\"Note griffonn\\u00e9e du n\\u00e9cromancien\\\" href=\\\"https:\\/\\/lagbt.wiwiland.net\\/index.php?title=Note_griffonn%C3%A9e_du_n%C3%A9cromancien\\\">Note griffonn\\u00e9e du n\\u00e9cromancien<\\/a><\\/p>\\n<p><a title=\\\"Note manuscrite du Thalmor\\\" href=\\\"https:\\/\\/lagbt.wiwiland.net\\/index.php?title=Note_manuscrite_du_Thalmor\\\">Note manuscrite du Thalmor<\\/a><\\/p>\\n<p><a title=\\\"Note sur le bleu de Balmora\\\" href=\\\"https:\\/\\/lagbt.wiwiland.net\\/index.php?title=Note_sur_le_bleu_de_Balmora\\\">Note sur le bleu de Balmora<\\/a> \\u2014 Dyryn<\\/p>\\n<p><a title=\\\"Notes d\'Alethius\\\" href=\\\"https:\\/\\/lagbt.wiwiland.net\\/index.php?title=Notes_d%27Alethius\\\">Notes d\'Alethius<\\/a> \\u2014 Alethius<\\/p>\\n<p><a title=\\\"Notes d\'Erj\\\" href=\\\"https:\\/\\/lagbt.wiwiland.net\\/index.php?title=Notes_d%27Erj\\\">Notes d\'Erj<\\/a> \\u2014 Erj<\\/p>\\n<p><a title=\\\"Notes d\'Heddic sur Volunruud\\\" href=\\\"https:\\/\\/lagbt.wiwiland.net\\/index.php?title=Notes_d%27Heddic_sur_Volunruud\\\">Notes d\'Heddic sur Volunruud<\\/a> \\u2014 Heddic<\\/p>\\n<p><a title=\\\"Notes de Raleth Eldri sur Kagrumez\\\" href=\\\"https:\\/\\/lagbt.wiwiland.net\\/index.php?title=Notes_de_Raleth_Eldri_sur_Kagrumez\\\">Notes de Raleth Eldri sur Kagrumez<\\/a> \\u2014 Raleth Eldri<\\/p>\\n<p><a title=\\\"Notes de recherches\\\" href=\\\"https:\\/\\/lagbt.wiwiland.net\\/index.php?title=Notes_de_recherches\\\">Notes de recherches<\\/a><\\/p>\\n<p><a title=\\\"Notes du Passage de Sombrechute\\\" href=\\\"https:\\/\\/lagbt.wiwiland.net\\/index.php?title=Notes_du_Passage_de_Sombrechute\\\">Notes du Passage de Sombrechute<\\/a><\\/p>\\n<p><a title=\\\"Notes sur la Forge lunaire\\\" href=\\\"https:\\/\\/lagbt.wiwiland.net\\/index.php?title=Notes_sur_la_Forge_lunaire\\\">Notes sur la Forge lunaire<\\/a><\\/p>\\n<p><a title=\\\"Ordre de Lib\\u00e9ration de Prisonnier\\\" href=\\\"https:\\/\\/lagbt.wiwiland.net\\/index.php?title=Ordre_de_Lib%C3%A9ration_de_Prisonnier\\\">Ordre de Lib\\u00e9ration de Prisonnier<\\/a> \\u2014 G\\u00e9n\\u00e9ral Tullius<\\/p>\\n<p><a title=\\\"Ordre des Horqueurs sanguinaires\\\" href=\\\"https:\\/\\/lagbt.wiwiland.net\\/index.php?title=Ordre_des_Horqueurs_sanguinaires\\\">Ordre des Horqueurs sanguinaires<\\/a><\\/p>\\n<p><a title=\\\"Ordres de la Garde de l\'aube - Hakar\\\" href=\\\"https:\\/\\/lagbt.wiwiland.net\\/index.php?title=Ordres_de_la_Garde_de_l%27aube_-_Hakar\\\">Ordres de la Garde de l\'aube - Hakar<\\/a><\\/p>\\n<p><a title=\\\"Ordres de la Garde de l\'aube - Lynoit\\\" href=\\\"https:\\/\\/lagbt.wiwiland.net\\/index.php?title=Ordres_de_la_Garde_de_l%27aube_-_Lynoit\\\">Ordres de la Garde de l\'aube - Lynoit<\\/a><\\/p>\\n<p><a title=\\\"Ordres de la Garde de l\'aube - Saliah\\\" href=\\\"https:\\/\\/lagbt.wiwiland.net\\/index.php?title=Ordres_de_la_Garde_de_l%27aube_-_Saliah\\\">Ordres de la Garde de l\'aube - Saliah<\\/a><\\/p>\\n<p><a title=\\\"Ordres de Lorcalin\\\" href=\\\"https:\\/\\/lagbt.wiwiland.net\\/index.php?title=Ordres_de_Lorcalin\\\">Ordres de Lorcalin<\\/a> \\u2014 Elenwen<\\/p>\\n<p><a title=\\\"Ordres de Valmir\\\" href=\\\"https:\\/\\/lagbt.wiwiland.net\\/index.php?title=Ordres_de_Valmir\\\">Ordres de Valmir<\\/a><\\/p>\\n<p><a title=\\\"Ordres des adeptes\\\" href=\\\"https:\\/\\/lagbt.wiwiland.net\\/index.php?title=Ordres_des_adeptes\\\">Ordres des adeptes<\\/a><\\/p>\\n<p><a title=\\\"Ordres du garde\\\" href=\\\"https:\\/\\/lagbt.wiwiland.net\\/index.php?title=Ordres_du_garde\\\">Ordres du garde<\\/a><\\/p>\\n<p><a title=\\\"Ordres du Thalmor\\\" href=\\\"https:\\/\\/lagbt.wiwiland.net\\/index.php?title=Ordres_du_Thalmor\\\">Ordres du Thalmor<\\/a> \\u2014 Elenwen<\\/p>\\n<p><a title=\\\"Page griffonn\\u00e9e\\\" href=\\\"https:\\/\\/lagbt.wiwiland.net\\/index.php?title=Page_griffonn%C3%A9e\\\">Page griffonn\\u00e9e<\\/a> - Sudi<\\/p>\\n<p><a title=\\\"Petite note\\\" href=\\\"https:\\/\\/lagbt.wiwiland.net\\/index.php?title=Petite_note\\\">Petite note<\\/a><\\/p>\\n<p><a title=\\\"Plan du prisonnier\\\" href=\\\"https:\\/\\/lagbt.wiwiland.net\\/index.php?title=Plan_du_prisonnier\\\">Plan du prisonnier<\\/a><\\/p>\\n<p><a title=\\\"Pour Milore, de la part de Nilara\\\" href=\\\"https:\\/\\/lagbt.wiwiland.net\\/index.php?title=Pour_Milore,_de_la_part_de_Nilara\\\">Pour Milore, de la part de Nilara<\\/a> \\u2014 Nilara Ienth<\\/p>\\n<p><a title=\\\"Pour Shelly\\\" href=\\\"https:\\/\\/lagbt.wiwiland.net\\/index.php?title=Pour_Shelly\\\">Pour Shelly<\\/a> \\u2014 Trius<\\/p>\\n<p><a title=\\\"Prime de Kyr\\\" href=\\\"https:\\/\\/lagbt.wiwiland.net\\/index.php?title=Prime_de_Kyr\\\">Prime de Kyr<\\/a><\\/p>\\n<p><a title=\\\"Proposition opportune\\\" href=\\\"https:\\/\\/lagbt.wiwiland.net\\/index.php?title=Proposition_opportune\\\">Proposition opportune<\\/a> \\u2014 Tuldinwae<\\/p>\\n<p><a title=\\\"Rapport demand\\u00e9\\\" href=\\\"https:\\/\\/lagbt.wiwiland.net\\/index.php?title=Rapport_demand%C3%A9\\\">Rapport demand\\u00e9<\\/a><\\/p>\\n<p><a title=\\\"Ravi\\\" href=\\\"https:\\/\\/lagbt.wiwiland.net\\/index.php?title=Ravi\\\">Ravi<\\/a> \\u2014 Harrald<\\/p>\\n<p><a title=\\\"Recherches de Venarus Vulpin\\\" href=\\\"https:\\/\\/lagbt.wiwiland.net\\/index.php?title=Recherches_de_Venarus_Vulpin\\\">Recherches de Venarus Vulpin<\\/a> \\u2014 Venarus Vulpin<\\/p>\\n<p><a title=\\\"R\\u00e9fl\\u00e9chir \\u00e0 l\'adoption\\\" href=\\\"https:\\/\\/lagbt.wiwiland.net\\/index.php?title=R%C3%A9fl%C3%A9chir_%C3%A0_l%27adoption\\\">R\\u00e9fl\\u00e9chir \\u00e0 l\'adoption<\\/a> \\u2014 Constance Michel<\\/p>\\n<p><a title=\\\"R\\u00e9ponse de la Maison Redoran\\\" href=\\\"https:\\/\\/lagbt.wiwiland.net\\/index.php?title=R%C3%A9ponse_de_la_Maison_Redoran\\\">R\\u00e9ponse de la Maison Redoran<\\/a> \\u2014 Dralis Rorlen<\\/p>\\n<p><a title=\\\"R\\u00e9ponse de Rahgot\\\" href=\\\"https:\\/\\/lagbt.wiwiland.net\\/index.php?title=R%C3%A9ponse_de_Rahgot\\\">R\\u00e9ponse de Rahgot<\\/a> \\u2014 Rahgot<\\/p>\\n<p><a title=\\\"Requ\\u00eate d\'un soldat\\\" href=\\\"https:\\/\\/lagbt.wiwiland.net\\/index.php?title=Requ%C3%AAte_d%27un_soldat\\\">Requ\\u00eate d\'un soldat<\\/a><\\/p>\\n<p><a title=\\\"R\\u00e9sultats des recherches d\'Adril\\\" href=\\\"https:\\/\\/lagbt.wiwiland.net\\/index.php?title=R%C3%A9sultats_des_recherches_d%27Adril\\\">R\\u00e9sultats des recherches d\'Adril<\\/a> \\u2014 Adril Arano<\\/p>\\n<p><a title=\\\"Sibbi Roncenoir\\\" href=\\\"https:\\/\\/lagbt.wiwiland.net\\/index.php?title=Sibbi_Roncenoir\\\">Sibbi Roncenoir<\\/a> \\u2014 Maven Roncenoir<\\/p>\\n<p><a title=\\\"Signalement d\'une perturbation\\\" href=\\\"https:\\/\\/lagbt.wiwiland.net\\/index.php?title=Signalement_d%27une_perturbation\\\">Signalement d\'une perturbation<\\/a> \\u2014 Anuriel<\\/p>\\n<p><a title=\\\"Tactiques d\'unit\\u00e9s mixtes\\\" href=\\\"https:\\/\\/lagbt.wiwiland.net\\/index.php?title=Tactiques_d%27unit%C3%A9s_mixtes\\\">Tactiques d\'unit\\u00e9s mixtes<\\/a> \\u2014 Codus Callonus<\\/p>\\n<p><a title=\\\"Toujours rien\\\" href=\\\"https:\\/\\/lagbt.wiwiland.net\\/index.php?title=Toujours_rien\\\">Toujours rien<\\/a> \\u2014 Athel Neuvebaie<\\/p>\\n<p><a title=\\\"Tr\\u00e8s ch\\u00e8re Dreyla\\\" href=\\\"https:\\/\\/lagbt.wiwiland.net\\/index.php?title=Tr%C3%A8s_ch%C3%A8re_Dreyla\\\">Tr\\u00e8s ch\\u00e8re Dreyla<\\/a> \\u2014 Modyn<\\/p>\\n<p><span id=\\\"Religion,_mythes,_l\\u00e9gendes_&amp;_m\\u00e9taphysique\\\"><\\/span><span id=\\\"Religion.2C_mythes.2C_l.C3.A9gendes_.26_m.C3.A9taphysique\\\" class=\\\"mw-headline\\\">Religion, mythes, l\\u00e9gendes &amp; m\\u00e9taphysique<\\/span><\\/p>\\n<p><a title=\\\"Aedras et Daedras\\\" href=\\\"https:\\/\\/lagbt.wiwiland.net\\/index.php?title=Aedras_et_Daedras\\\">Aedras et Daedras<\\/a><\\/p>\\n<p><a title=\\\"Alduin \\u00e9 bien r\\u00e9ell et c\\u00e9 pas Akatosh\\\" href=\\\"https:\\/\\/lagbt.wiwiland.net\\/index.php?title=Alduin_%C3%A9_bien_r%C3%A9ell_et_c%C3%A9_pas_Akatosh\\\">Alduin \\u00e9 bien r\\u00e9ell et c\\u00e9 pas Akatosh<\\/a> \\u2014 Thromgar Cr\\u00e2ne-de-Fer<\\/p>\\n<p><a title=\\\"Chants du retour\\\" href=\\\"https:\\/\\/lagbt.wiwiland.net\\/index.php?title=Chants_du_retour\\\">Chants du retour<\\/a><\\/p>\\n<p><a title=\\\"Cinq chants du Roi Wulfharth\\\" href=\\\"https:\\/\\/lagbt.wiwiland.net\\/index.php?title=Cinq_chants_du_Roi_Wulfharth\\\">Cinq chants du Roi Wulfharth<\\/a><\\/p>\\n<p><a title=\\\"Commentaires de l\'Aube mythique\\\" href=\\\"https:\\/\\/lagbt.wiwiland.net\\/index.php?title=Commentaires_de_l%27Aube_mythique\\\">Commentaires de l\'Aube mythique<\\/a> \\u2014 Mankar Camoran<\\/p>\\n<p><a title=\\\"Dichotomie entre Alduin et Akatosh\\\" href=\\\"https:\\/\\/lagbt.wiwiland.net\\/index.php?title=Dichotomie_entre_Alduin_et_Akatosh\\\">Dichotomie entre Alduin et Akatosh<\\/a> \\u2014 Alexandre Simon<\\/p>\\n<p><a title=\\\"Esprit de Nirn\\\" href=\\\"https:\\/\\/lagbt.wiwiland.net\\/index.php?title=Esprit_de_Nirn\\\">Esprit de Nirn<\\/a><\\/p>\\n<p><a title=\\\"Etat d\'esprit des Daedra\\\" href=\\\"https:\\/\\/lagbt.wiwiland.net\\/index.php?title=Etat_d%27esprit_des_Daedra\\\">Etat d\'esprit des Daedra<\\/a><\\/p>\\n<p><a title=\\\"Histoire d\'Aevar Chantepierre\\\" href=\\\"https:\\/\\/lagbt.wiwiland.net\\/index.php?title=Histoire_d%27Aevar_Chantepierre\\\">Histoire d\'Aevar Chantepierre<\\/a><\\/p>\\n<p><a title=\\\"L\'Amulette des rois\\\" href=\\\"https:\\/\\/lagbt.wiwiland.net\\/index.php?title=L%27Amulette_des_rois\\\">L\'Amulette des rois<\\/a> \\u2014 Wenengrus Monhona<\\/p>\\n<p><a title=\\\"L\'Anuade paraphras\\u00e9e\\\" href=\\\"https:\\/\\/lagbt.wiwiland.net\\/index.php?title=L%27Anuade_paraphras%C3%A9e\\\">L\'Anuade paraphras\\u00e9e<\\/a><\\/p>\\n<p><a title=\\\"L\'\\u00e9preuve de Bo\\u00e9thiah\\\" href=\\\"https:\\/\\/lagbt.wiwiland.net\\/index.php?title=L%27%C3%A9preuve_de_Bo%C3%A9thiah\\\">L\'\\u00e9preuve de Bo\\u00e9thiah<\\/a><\\/p>\\n<p><a title=\\\"L\'h\\u00e9r\\u00e9sie arcturienne\\\" href=\\\"https:\\/\\/lagbt.wiwiland.net\\/index.php?title=L%27h%C3%A9r%C3%A9sie_arcturienne\\\">L\'h\\u00e9r\\u00e9sie arcturienne<\\/a> \\u2014 Ysmir Faiseur de rois, <a title=\\\"Roi des Tr\\u00e9fonds\\\" href=\\\"https:\\/\\/lagbt.wiwiland.net\\/index.php?title=Roi_des_Tr%C3%A9fonds\\\">Roi des Tr\\u00e9fonds<\\/a><\\/p>\\n<p><a title=\\\"L\'histoire de Dro\'Zira\\\" href=\\\"https:\\/\\/lagbt.wiwiland.net\\/index.php?title=L%27histoire_de_Dro%27Zira\\\">L\'histoire de Dro\'Zira<\\/a> \\u2014 Sonia Vette<\\/p>\\n<p><a title=\\\"L\'invocation d\'Azura\\\" href=\\\"https:\\/\\/lagbt.wiwiland.net\\/index.php?title=L%27invocation_d%27Azura\\\">L\'invocation d\'Azura<\\/a> \\u2014 Sigillah Parate<\\/p>\\n<p><a title=\\\"La Gloire de Bo\\u00e9thia\\\" href=\\\"https:\\/\\/lagbt.wiwiland.net\\/index.php?title=La_Gloire_de_Bo%C3%A9thia\\\">La Gloire de Bo\\u00e9thia<\\/a><\\/p>\\n<p><a title=\\\"La l\\u00e9gende de l\'Aigle carmin\\\" href=\\\"https:\\/\\/lagbt.wiwiland.net\\/index.php?title=La_l%C3%A9gende_de_l%27Aigle_carmin\\\">La l\\u00e9gende de l\'Aigle carmin<\\/a> \\u2014 Clarisse Vien; Tredayn Dren, ed.<\\/p>\\n<p><a title=\\\"La Maison des Troubles\\\" href=\\\"https:\\/\\/lagbt.wiwiland.net\\/index.php?title=La_Maison_des_Troubles\\\">La Maison des Troubles<\\/a><\\/p>\\n<p><a title=\\\"La Porte des Esprits\\\" href=\\\"https:\\/\\/lagbt.wiwiland.net\\/index.php?title=La_Porte_des_Esprits\\\">La Porte des Esprits<\\/a><\\/p>\\n<p><a title=\\\"La vie des Saints\\\" href=\\\"https:\\/\\/lagbt.wiwiland.net\\/index.php?title=La_vie_des_Saints\\\">La vie des Saints<\\/a> \\u2014 Temple du Tribunal<\\/p>\\n<p><a title=\\\"Le chant de P\\u00e9linal\\\" href=\\\"https:\\/\\/lagbt.wiwiland.net\\/index.php?title=Le_chant_de_P%C3%A9linal\\\">Le chant de P\\u00e9linal<\\/a><\\/p>\\n<p><a title=\\\"Le Gardien et le Tra\\u00eetre\\\" href=\\\"https:\\/\\/lagbt.wiwiland.net\\/index.php?title=Le_Gardien_et_le_Tra%C3%AEtre\\\">Le Gardien et le Tra\\u00eetre<\\/a> \\u2014 Lucius Gallus<\\/p>\\n<p><a title=\\\"Le Lorkhan Lunaire\\\" href=\\\"https:\\/\\/lagbt.wiwiland.net\\/index.php?title=Le_Lorkhan_Lunaire\\\">Le Lorkhan Lunaire<\\/a> \\u2014 Fal Droon<\\/p>\\n<p><a title=\\\"Le Monomythe\\\" href=\\\"https:\\/\\/lagbt.wiwiland.net\\/index.php?title=Le_Monomythe\\\">Le Monomythe<\\/a> \\u2014 <a title=\\\"Soci\\u00e9t\\u00e9 du Temple Z\\u00e9ro\\\" href=\\\"https:\\/\\/lagbt.wiwiland.net\\/index.php?title=Soci%C3%A9t%C3%A9_du_Temple_Z%C3%A9ro\\\">Soci\\u00e9t\\u00e9 du Temple Z\\u00e9ro<\\/a><\\/p>\\n<p><a title=\\\"L\\u00e9gendes oubli\\u00e9es de Bordeciel\\\" href=\\\"https:\\/\\/lagbt.wiwiland.net\\/index.php?title=L%C3%A9gendes_oubli%C3%A9es_de_Bordeciel\\\">L\\u00e9gendes oubli\\u00e9es de Bordeciel<\\/a> \\u2014 Talsgar l\'ancien<\\/p>\\n<p><a title=\\\"Les anc\\u00eatres et la n\\u00e9cromancie chez les Dunmers\\\" href=\\\"https:\\/\\/lagbt.wiwiland.net\\/index.php?title=Les_anc%C3%AAtres_et_la_n%C3%A9cromancie_chez_les_Dunmers\\\">Les anc\\u00eatres et la n\\u00e9cromancie chez les Dunmers<\\/a><\\/p>\\n<p><a title=\\\"Les Anticipations\\\" href=\\\"https:\\/\\/lagbt.wiwiland.net\\/index.php?title=Les_Anticipations\\\">Les Anticipations<\\/a><\\/p>\\n<p><a title=\\\"Les embl\\u00e8mes du Haut-Hrothgar\\\" href=\\\"https:\\/\\/lagbt.wiwiland.net\\/index.php?title=Les_embl%C3%A8mes_du_Haut-Hrothgar\\\">Les embl\\u00e8mes du Haut-Hrothgar<\\/a><\\/p>\\n<p><a title=\\\"Les \\u00e9preuves de Sainte Alessia\\\" href=\\\"https:\\/\\/lagbt.wiwiland.net\\/index.php?title=Les_%C3%A9preuves_de_Sainte_Alessia\\\">Les \\u00e9preuves de Sainte Alessia<\\/a><\\/p>\\n<p><a title=\\\"Les mythes de Sh\\u00e9ogorath\\\" href=\\\"https:\\/\\/lagbt.wiwiland.net\\/index.php?title=Les_mythes_de_Sh%C3%A9ogorath\\\">Les mythes de Sh\\u00e9ogorath<\\/a> \\u2014 Mymophonus<\\/p>\\n<p><a title=\\\"Les Seize accords de la folie\\\" href=\\\"https:\\/\\/lagbt.wiwiland.net\\/index.php?title=Les_Seize_accords_de_la_folie\\\">Les Seize accords de la folie<\\/a><\\/p>\\n<p><a title=\\\"Les totems d\'Hircine\\\" href=\\\"https:\\/\\/lagbt.wiwiland.net\\/index.php?title=Les_totems_d%27Hircine\\\">Les totems d\'Hircine<\\/a><\\/p>\\n<p><a title=\\\"Livre Noir\\\" href=\\\"https:\\/\\/lagbt.wiwiland.net\\/index.php?title=Livre_Noir\\\">Livres Noirs<\\/a><\\/p>\\n<p><a title=\\\"Mysterium Xarxes\\\" href=\\\"https:\\/\\/lagbt.wiwiland.net\\/index.php?title=Mysterium_Xarxes\\\">Mysterium Xarxes<\\/a><\\/p>\\n<p><a title=\\\"N\'Gasta ! Kvata ! Kvakis !\\\" href=\\\"https:\\/\\/lagbt.wiwiland.net\\/index.php?title=N%27Gasta_!_Kvata_!_Kvakis_!\\\">N\'Gasta ! Kvata ! Kvakis !<\\/a><\\/p>\\n<p><a title=\\\"Notes de Daynas Valen\\\" href=\\\"https:\\/\\/lagbt.wiwiland.net\\/index.php?title=Notes_de_Daynas_Valen\\\">Notes de Daynas Valen<\\/a> \\u2014 Daynas Valen<\\/p>\\n<p><a title=\\\"Oghma Infinium\\\" href=\\\"https:\\/\\/lagbt.wiwiland.net\\/index.php?title=Oghma_Infinium\\\">Oghma Infinium<\\/a><\\/p>\\n<p><a title=\\\"Opusculus Lamae Bal ta Mezzamortie\\\" href=\\\"https:\\/\\/lagbt.wiwiland.net\\/index.php?title=Opusculus_Lamae_Bal_ta_Mezzamortie\\\">Opusculus Lamae Bal ta Mezzamortie<\\/a> \\u2014 Mabei Aywenil<\\/p>\\n<p><a title=\\\"O\\u00f9 \\u00e9tiez-vous quand le Dragon s\'est bris\\u00e9 ?\\\" href=\\\"https:\\/\\/lagbt.wiwiland.net\\/index.php?title=O%C3%B9_%C3%A9tiez-vous_quand_le_Dragon_s%27est_bris%C3%A9_%3F\\\">O\\u00f9 \\u00e9tiez-vous quand le Dragon s\'est bris\\u00e9 ?<\\/a><\\/p>\\n<p><a title=\\\"Parchemins Anciens\\\" href=\\\"https:\\/\\/lagbt.wiwiland.net\\/index.php?title=Parchemins_Anciens\\\">Parchemins Anciens<\\/a><\\/p>\\n<p><a title=\\\"Parole d\'Ahnissi, m\\u00e8re de clan\\\" href=\\\"https:\\/\\/lagbt.wiwiland.net\\/index.php?title=Parole_d%27Ahnissi,_m%C3%A8re_de_clan\\\">Parole d\'Ahnissi, m\\u00e8re de clan<\\/a><\\/p>\\n<p><a title=\\\"R\\u00e9flexions sur les Parchemins des Anciens\\\" href=\\\"https:\\/\\/lagbt.wiwiland.net\\/index.php?title=R%C3%A9flexions_sur_les_Parchemins_des_Anciens\\\">R\\u00e9flexions sur les Parchemins des Anciens<\\/a> \\u2014 Septimus Signus<\\/p>\\n<p><a title=\\\"Religions de l\'Empire\\\" href=\\\"https:\\/\\/lagbt.wiwiland.net\\/index.php?title=Religions_de_l%27Empire\\\">Religions de l\'Empire<\\/a> \\u2014 Fr\\u00e8re Mikhael Karkuxor, du Coll\\u00e8ge imp\\u00e9rial<\\/p>\\n<p><a title=\\\"Rite de l\'Aigle carmin\\\" href=\\\"https:\\/\\/lagbt.wiwiland.net\\/index.php?title=Rite_de_l%27Aigle_carmin\\\">Rite de l\'Aigle carmin<\\/a><\\/p>\\n<p><a title=\\\"Shezarr et les Divins\\\" href=\\\"https:\\/\\/lagbt.wiwiland.net\\/index.php?title=Shezarr_et_les_Divins\\\">Shezarr et les Divins<\\/a> \\u2014 Faustillus Junius<\\/p>\\n<p><a title=\\\"Sithis (livre)\\\" href=\\\"https:\\/\\/lagbt.wiwiland.net\\/index.php?title=Sithis_(livre)\\\">Sithis<\\/a><\\/p>\\n<p><a title=\\\"Un r\\u00eave de Sovngarde\\\" href=\\\"https:\\/\\/lagbt.wiwiland.net\\/index.php?title=Un_r%C3%AAve_de_Sovngarde\\\">Un r\\u00eave de Sovngarde<\\/a> \\u2014 Skardan Libre-Hiver<\\/p>\\n<p><a title=\\\"Wabbajack (livre)\\\" href=\\\"https:\\/\\/lagbt.wiwiland.net\\/index.php?title=Wabbajack_(livre)\\\">Wabbajack<\\/a><\\/p>\\n<p><a title=\\\"Yngol et les esprits marins\\\" href=\\\"https:\\/\\/lagbt.wiwiland.net\\/index.php?title=Yngol_et_les_esprits_marins\\\">Yngol et les esprits marins<\\/a><\\/p>\\n<p><span id=\\\"Pamphlets\\\" class=\\\"mw-headline\\\">Pamphlets<\\/span><\\/p>\\n<p><a title=\\\"\\u00c0 la d\\u00e9couverte de Ruunvald\\\" href=\\\"https:\\/\\/lagbt.wiwiland.net\\/index.php?title=%C3%80_la_d%C3%A9couverte_de_Ruunvald\\\">\\u00c0 la d\\u00e9couverte de Ruunvald<\\/a> \\u2014 Moric Sidrey<\\/p>\\n<p><a title=\\\"Ahzirr Traajijazeri\\\" href=\\\"https:\\/\\/lagbt.wiwiland.net\\/index.php?title=Ahzirr_Traajijazeri\\\">Ahzirr Traajijazeri<\\/a><\\/p>\\n<p><a title=\\\"L\'ours de Markarth\\\" href=\\\"https:\\/\\/lagbt.wiwiland.net\\/index.php?title=L%27ours_de_Markarth\\\">L\'ours de Markarth<\\/a> \\u2014 Arrianus Arius<\\/p>\\n<p><a title=\\\"La chaleur de Mara\\\" href=\\\"https:\\/\\/lagbt.wiwiland.net\\/index.php?title=La_chaleur_de_Mara\\\">La chaleur de Mara<\\/a><\\/p>\\n<p><a title=\\\"La plaie du Quartier gris\\\" href=\\\"https:\\/\\/lagbt.wiwiland.net\\/index.php?title=La_plaie_du_Quartier_gris\\\">La plaie du Quartier gris<\\/a> \\u2014 Frilgeth Dresse-Cheval<\\/p>\\n<p><a title=\\\"Les Dunmers de Bordeciel\\\" href=\\\"https:\\/\\/lagbt.wiwiland.net\\/index.php?title=Les_Dunmers_de_Bordeciel\\\">Les Dunmers de Bordeciel<\\/a> \\u2014 Athal Sarys<\\/p>\\n<p><a title=\\\"Nordiques de Bordeciel\\\" href=\\\"https:\\/\\/lagbt.wiwiland.net\\/index.php?title=Nordiques_de_Bordeciel\\\">Nordiques de Bordeciel<\\/a> \\u2014 Hrothmund C\\u0153ur-de-loup<\\/p>\\n<p><a title=\\\"Nordiques, relevez-vous !\\\" href=\\\"https:\\/\\/lagbt.wiwiland.net\\/index.php?title=Nordiques,_relevez-vous_!\\\">Nordiques, relevez-vous !<\\/a><\\/p>\\n<p><a title=\\\"Rejetons des Porcs\\\" href=\\\"https:\\/\\/lagbt.wiwiland.net\\/index.php?title=Rejetons_des_Porcs\\\">Rejetons des Porcs<\\/a> \\u2014 Tyston Bane<\\/p>\\n<p><a title=\\\"Talos: Notre erreur\\\" href=\\\"https:\\/\\/lagbt.wiwiland.net\\/index.php?title=Talos:_Notre_erreur\\\">Talos: Notre erreur<\\/a> \\u2014 Leonora Venatus<\\/p>\\n<p><span id=\\\"Recherches\\\" class=\\\"mw-headline\\\">Recherches<\\/span><\\/p>\\n<p><a title=\\\"Ames, noires blanches\\\" href=\\\"https:\\/\\/lagbt.wiwiland.net\\/index.php?title=Ames,_noires_blanches\\\">Ames, noires blanches<\\/a><\\/p>\\n<p><a title=\\\"Anatomie des loups-garous\\\" href=\\\"https:\\/\\/lagbt.wiwiland.net\\/index.php?title=Anatomie_des_loups-garous\\\">Anatomie des loups-garous<\\/a> \\u2014 Reman Crex<\\/p>\\n<p><a title=\\\"D\\u00e9ch\\u00e9ance\\\" href=\\\"https:\\/\\/lagbt.wiwiland.net\\/index.php?title=D%C3%A9ch%C3%A9ance\\\">D\\u00e9ch\\u00e9ance<\\/a> \\u2014 Nithilis Lidari<\\/p>\\n<p><a title=\\\"Dieux et Cultes de Tamriel\\\" href=\\\"https:\\/\\/lagbt.wiwiland.net\\/index.php?title=Dieux_et_Cultes_de_Tamriel\\\">Dieux et Cultes de Tamriel<\\/a> \\u2014 Fr\\u00e8re Hetchfeld<\\/p>\\n<p><a title=\\\"Les effets des Parchemins des Anciens\\\" href=\\\"https:\\/\\/lagbt.wiwiland.net\\/index.php?title=Les_effets_des_Parchemins_des_Anciens\\\">Les effets des Parchemins des Anciens<\\/a> \\u2014 Justinius Poluhnius, Anstius Metchim<\\/p>\\n<p><a title=\\\"\\u00c9tude des Dwemers\\\" href=\\\"https:\\/\\/lagbt.wiwiland.net\\/index.php?title=%C3%89tude_des_Dwemers\\\">\\u00c9tude des Dwemers<\\/a> \\u2014 Thelwe Ghelein<\\/p>\\n<p><a title=\\\"Gloire et pleurs dans les ruines ayl\\u00e9ides\\\" href=\\\"https:\\/\\/lagbt.wiwiland.net\\/index.php?title=Gloire_et_pleurs_dans_les_ruines_ayl%C3%A9ides\\\">Gloire et pleurs dans les ruines ayl\\u00e9ides<\\/a> \\u2014 Alexandre Hetrard<\\/p>\\n<p><a title=\\\"Guetteur de pierres\\\" href=\\\"https:\\/\\/lagbt.wiwiland.net\\/index.php?title=Guetteur_de_pierres\\\">Guetteur de pierres<\\/a> \\u2014 Gelyph Sig<\\/p>\\n<p><a title=\\\"Histoire des dragons\\\" href=\\\"https:\\/\\/lagbt.wiwiland.net\\/index.php?title=Histoire_des_dragons\\\">Histoire des dragons<\\/a> \\u2014 Torhal Bjorik<\\/p>\\n<p><a title=\\\"Indexation des Parchemins des Anciens\\\" href=\\\"https:\\/\\/lagbt.wiwiland.net\\/index.php?title=Indexation_des_Parchemins_des_Anciens\\\">Indexation des Parchemins des Anciens<\\/a> \\u2014 Quintus Nerevelus<\\/p>\\n<p><a title=\\\"L\'\\u00eele d\'Artaeum\\\" href=\\\"https:\\/\\/lagbt.wiwiland.net\\/index.php?title=L%27%C3%AEle_d%27Artaeum\\\">L\'\\u00eele d\'Artaeum<\\/a> \\u2014 Taurce il-Anselma<\\/p>\\n<p><a title=\\\"La Cassure du Dragon revisit\\u00e9e\\\" href=\\\"https:\\/\\/lagbt.wiwiland.net\\/index.php?title=La_Cassure_du_Dragon_revisit%C3%A9e\\\">La Cassure du Dragon revisit\\u00e9e<\\/a> \\u2014 Fal Droon<\\/p>\\n<p><a title=\\\"La Lucereine\\\" href=\\\"https:\\/\\/lagbt.wiwiland.net\\/index.php?title=La_Lucereine\\\">La Lucereine<\\/a> \\u2014 Mathias \\u00c9tienne<\\/p>\\n<p><a title=\\\"La magie venue du ciel\\\" href=\\\"https:\\/\\/lagbt.wiwiland.net\\/index.php?title=La_magie_venue_du_ciel\\\">La magie venue du ciel<\\/a> \\u2014 Irlav Jarol<\\/p>\\n<p><a title=\\\"La marche onirique\\\" href=\\\"https:\\/\\/lagbt.wiwiland.net\\/index.php?title=La_marche_onirique\\\">La marche onirique<\\/a><\\/p>\\n<p><a title=\\\"Langue draconique : une r\\u00e9alit\\u00e9\\\" href=\\\"https:\\/\\/lagbt.wiwiland.net\\/index.php?title=Langue_draconique_:_une_r%C3%A9alit%C3%A9\\\">Langue draconique : une r\\u00e9alit\\u00e9<\\/a> \\u2014 Hela Triplement-\\u00c9rudite<\\/p>\\n<p><a title=\\\"Le livre de l\'Enfant de dragon\\\" href=\\\"https:\\/\\/lagbt.wiwiland.net\\/index.php?title=Le_livre_de_l%27Enfant_de_dragon\\\">Le livre de l\'Enfant de dragon<\\/a> \\u2014 Prior Emelene Madrine<\\/p>\\n<p><a title=\\\"L\\u00e9gendes lycanthropes de Bordeciel\\\" href=\\\"https:\\/\\/lagbt.wiwiland.net\\/index.php?title=L%C3%A9gendes_lycanthropes_de_Bordeciel\\\">L\\u00e9gendes lycanthropes de Bordeciel<\\/a> \\u2014 Lentulus Inventius<\\/p>\\n<p><a title=\\\"Les \\\" href=\\\"https:\\/\\/lagbt.wiwiland.net\\/index.php?title=Les_%22Fous%22_de_la_Crevasse\\\">Les \\\"Fous\\\" de la Crevasse<\\/a> \\u2014 Arrianus Arius<\\/p>\\n<p><a title=\\\"Les eaux d\'Oblivion\\\" href=\\\"https:\\/\\/lagbt.wiwiland.net\\/index.php?title=Les_eaux_d%27Oblivion\\\">Les eaux d\'Oblivion<\\/a> \\u2014 <a title=\\\"Morian Zenas\\\" href=\\\"https:\\/\\/lagbt.wiwiland.net\\/index.php?title=Morian_Zenas\\\">Morian Zenas<\\/a><\\/p>\\n<p><a title=\\\"Les enfants du ciel\\\" href=\\\"https:\\/\\/lagbt.wiwiland.net\\/index.php?title=Les_enfants_du_ciel\\\">Les enfants du ciel<\\/a><\\/p>\\n<p><a title=\\\"Les f\\u00e9lins de Bordeciel\\\" href=\\\"https:\\/\\/lagbt.wiwiland.net\\/index.php?title=Les_f%C3%A9lins_de_Bordeciel\\\">Les f\\u00e9lins de Bordeciel<\\/a> \\u2014 Aldetuile<\\/p>\\n<p><a title=\\\"Les gardiens de la dague\\\" href=\\\"https:\\/\\/lagbt.wiwiland.net\\/index.php?title=Les_gardiens_de_la_dague\\\">Les gardiens de la dague<\\/a><\\/p>\\n<p><a title=\\\"Les Nains, Race perdue de Tamriel\\\" href=\\\"https:\\/\\/lagbt.wiwiland.net\\/index.php?title=Les_Nains,_Race_perdue_de_Tamriel\\\">Les Nains, Race perdue de Tamriel<\\/a> \\u2014 Calcelmo<\\/p>\\n<p><a title=\\\"Les plus sombres des t\\u00e9n\\u00e8bres\\\" href=\\\"https:\\/\\/lagbt.wiwiland.net\\/index.php?title=Les_plus_sombres_des_t%C3%A9n%C3%A8bres\\\">Les plus sombres des t\\u00e9n\\u00e8bres<\\/a><\\/p>\\n<p><a title=\\\"Les portes d\\u2019Oblivion\\\" href=\\\"https:\\/\\/lagbt.wiwiland.net\\/index.php?title=Les_portes_d%E2%80%99Oblivion\\\">Les portes d\\u2019Oblivion<\\/a> \\u2014 Seif-ij Hidja<\\/p>\\n<p><a title=\\\"Les r\\u00e9flexions de Shalidor\\\" href=\\\"https:\\/\\/lagbt.wiwiland.net\\/index.php?title=Les_r%C3%A9flexions_de_Shalidor\\\">Les r\\u00e9flexions de Shalidor<\\/a> \\u2014 Shalidor<\\/p>\\n<p><a title=\\\"Missive sur la Nirnroot\\\" href=\\\"https:\\/\\/lagbt.wiwiland.net\\/index.php?title=Missive_sur_la_Nirnroot\\\">Missive sur la Nirnroot<\\/a> \\u2014 Sinderion<\\/p>\\n<p><a title=\\\"Notes sur la Crypte de Sombreval, Volume III\\\" href=\\\"https:\\/\\/lagbt.wiwiland.net\\/index.php?title=Notes_sur_la_Crypte_de_Sombreval,_Volume_III\\\">Notes sur la Crypte de Sombreval, Volume III<\\/a> \\u2014 Adalvald<\\/p>\\n<p><a title=\\\"Notes sur la phylogen\\u00e8se et la biologie raciales, septi\\u00e8me \\u00e9dition\\\" href=\\\"https:\\/\\/lagbt.wiwiland.net\\/index.php?title=Notes_sur_la_phylogen%C3%A8se_et_la_biologie_raciales,_septi%C3%A8me_%C3%A9dition\\\">Notes sur la phylogen\\u00e8se et la biologie raciales<\\/a> \\u2014 Conseil des Gu\\u00e9risseurs, Universit\\u00e9 imp\\u00e9riale<\\/p>\\n<p><a title=\\\"Parmi les draugrs\\\" href=\\\"https:\\/\\/lagbt.wiwiland.net\\/index.php?title=Parmi_les_draugrs\\\">Parmi les draugrs<\\/a> \\u2014 Bernadette Bantien<\\/p>\\n<p><a title=\\\"Rapport d\'exp\\u00e9riences sur les araign\\u00e9es\\\" href=\\\"https:\\/\\/lagbt.wiwiland.net\\/index.php?title=Rapport_d%27exp%C3%A9riences_sur_les_araign%C3%A9es\\\">Rapport d\'exp\\u00e9riences sur les araign\\u00e9es<\\/a><\\/p>\\n<p><a title=\\\"Rapport imp\\u00e9rial sur Saarthal\\\" href=\\\"https:\\/\\/lagbt.wiwiland.net\\/index.php?title=Rapport_imp%C3%A9rial_sur_Saarthal\\\">Rapport imp\\u00e9rial sur Saarthal<\\/a> \\u2014 Heseph Chirirnis<\\/p>\\n<p><a title=\\\"Recueil d\'essais sur l\'histoire et la culture dwemer\\\" href=\\\"https:\\/\\/lagbt.wiwiland.net\\/index.php?title=Recueil_d%27essais_sur_l%27histoire_et_la_culture_dwemer\\\">Recueil d\'essais sur l\'histoire et la culture dwemer<\\/a> \\u2014 <a title=\\\"Hasphat Antabolis\\\" href=\\\"https:\\/\\/lagbt.wiwiland.net\\/index.php?title=Hasphat_Antabolis\\\">Hasphat Antabolis<\\/a><\\/p>\\n<p><a title=\\\"Sovngarde, un r\\u00e9examen\\\" href=\\\"https:\\/\\/lagbt.wiwiland.net\\/index.php?title=Sovngarde,_un_r%C3%A9examen\\\">Sovngarde, un r\\u00e9examen<\\/a> \\u2014 Bereditte Jastal<\\/p>\\n<p><a title=\\\"Sur Oblivion\\\" href=\\\"https:\\/\\/lagbt.wiwiland.net\\/index.php?title=Sur_Oblivion\\\">Sur Oblivion<\\/a> \\u2014 <a title=\\\"Morian Zenas\\\" href=\\\"https:\\/\\/lagbt.wiwiland.net\\/index.php?title=Morian_Zenas\\\">Morian Zenas<\\/a><\\/p>\\n<p><a title=\\\"T\\u00e9moin sacr\\u00e9\\\" href=\\\"https:\\/\\/lagbt.wiwiland.net\\/index.php?title=T%C3%A9moin_sacr%C3%A9\\\">T\\u00e9moin sacr\\u00e9<\\/a> \\u2014 Enric Milnes<\\/p>\\n<p><a title=\\\"Trait\\u00e9 d\'illusion\\\" href=\\\"https:\\/\\/lagbt.wiwiland.net\\/index.php?title=Trait%C3%A9_d%27illusion\\\">Trait\\u00e9 d\'illusion<\\/a><\\/p>\\n<p><a title=\\\"Trait\\u00e9 de lois dwemers\\\" href=\\\"https:\\/\\/lagbt.wiwiland.net\\/index.php?title=Trait%C3%A9_de_lois_dwemers\\\">Trait\\u00e9 de lois dwemers<\\/a><\\/p>\\n<p><a title=\\\"Trait\\u00e9 des cit\\u00e9s ayl\\u00e9ides, Chapitre dixi\\u00e8me : Varsa Baalim et le Nefarivigum, l\'\\u00e9preuve de Dagon\\\" href=\\\"https:\\/\\/lagbt.wiwiland.net\\/index.php?title=Trait%C3%A9_des_cit%C3%A9s_ayl%C3%A9ides,_Chapitre_dixi%C3%A8me_:_Varsa_Baalim_et_le_Nefarivigum,_l%27%C3%A9preuve_de_Dagon\\\">Trait\\u00e9 des cit\\u00e9s ayl\\u00e9ides<\\/a><\\/p>\\n<p><a title=\\\"Vari\\u00e9t\\u00e9s de daedra\\\" href=\\\"https:\\/\\/lagbt.wiwiland.net\\/index.php?title=Vari%C3%A9t%C3%A9s_de_daedra\\\">Vari\\u00e9t\\u00e9s de daedra<\\/a> \\u2014 Aranea Drethan<\\/p>\\n<p><span id=\\\"Autre\\\" class=\\\"mw-headline\\\">Autre<\\/span><\\/p>\\n<p><a title=\\\"Autorisation d\'ex\\u00e9cution\\\" href=\\\"https:\\/\\/lagbt.wiwiland.net\\/index.php?title=Autorisation_d%27ex%C3%A9cution\\\">Autorisation d\'ex\\u00e9cution<\\/a><\\/p>\\n<p><a title=\\\"Gare au Boucher !\\\" href=\\\"https:\\/\\/lagbt.wiwiland.net\\/index.php?title=Gare_au_Boucher_!\\\">Gare au Boucher !<\\/a><\\/p>\\n<p><a title=\\\"Journal du p\\u00eacheur (4E 201)\\\" href=\\\"https:\\/\\/lagbt.wiwiland.net\\/index.php?title=Journal_du_p%C3%AAcheur_(4E_201)\\\">Journal du p\\u00eacheur<\\/a><\\/p>\",\"_css_classes\":\"text-skyrim\"},\"elements\":[],\"widgetType\":\"text-editor\"}],\"isInner\":true}],\"isInner\":true},{\"id\":\"4951296\",\"elType\":\"widget\",\"settings\":{\"editor\":\"\",\"typography_font_size\":{\"unit\":\"px\",\"size\":40},\"_css_classes\":\"text-skyrim\"},\"elements\":[],\"widgetType\":\"text-editor\"}],\"isInner\":false}],\"isInner\":false}]');
INSERT INTO `wpblog_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(198, 35, '_elementor_css', 'a:4:{s:4:\"time\";i:1546628188;s:5:\"fonts\";a:0:{}s:6:\"status\";s:4:\"file\";i:0;s:0:\"\";}'),
(76, 21, '_thumbnail_id', '12'),
(77, 21, '_elementor_edit_mode', 'builder'),
(78, 21, '_elementor_template_type', 'post'),
(79, 21, '_wp_page_template', 'default'),
(80, 21, '_elementor_data', '[{\"id\":\"2baca5a\",\"elType\":\"section\",\"settings\":[],\"elements\":[{\"id\":\"bfa6053\",\"elType\":\"column\",\"settings\":{\"_column_size\":100},\"elements\":[{\"id\":\"bef08aa\",\"elType\":\"widget\",\"settings\":{\"editor\":\"<p>Le Big Bang est-il le commencement du temps, ou l\'Univers existait-il avant ? Il y a moins de dix ans, une telle question aurait eu des allures de sacril\\u00e8ge. Pour les cosmologistes, une telle interrogation n\'avait tout simplement pas de sens. Imaginer une \\u00e9poque ant\\u00e9rieure au Big Bang, c\'\\u00e9tait comme chercher un point au Nord du p\\u00f4le Nord. Selon la th\\u00e9orie de la relativit\\u00e9 g\\u00e9n\\u00e9rale, un Univers en expansion doit avoir commenc\\u00e9 par un Big Bang, ce qui implique la finitude du temps, apparu simultan\\u00e9ment avec l\'espace et l\'\\u00e9nergie-mati\\u00e8re. Cette fa\\u00e7on de voir s\'est modifi\\u00e9e au cours des derni\\u00e8res ann\\u00e9es. Lors de sa naissance, l\'Univers \\u00e9tait concentr\\u00e9 en une r\\u00e9gion si minuscule que les lois de la physique quantique devaient s\'y appliquer. La relativit\\u00e9 g\\u00e9n\\u00e9rale, qui n\'est pas une th\\u00e9orie quantique, cesse d\'\\u00eatre valide \\u00e0 l\'\\u00e9chelle du Big Bang. La th\\u00e9orie des cordes, qui se d\\u00e9veloppe depuis une trentaine d\'ann\\u00e9es, est susceptible de prendre le relais en offrant une description quantique de la gravitation. Elle a r\\u00e9cemment permis de concevoir deux mod\\u00e8les cosmologiques \\u2013 le mod\\u00e8le pr\\u00e9-Big Bang et le mod\\u00e8le ekpyrotique \\u2013 d\\u00e9crivant un Univers ant\\u00e9rieur au Big Bang. Ces sc\\u00e9narios, o\\u00f9 le temps n\'a ni commencement, ni fin, pourraient avoir laiss\\u00e9 des traces observables dans le fond diffus cosmologique, le rayonnement \\u00e9mis peu apr\\u00e8s le Big Bang et que l\'on d\\u00e9tecte aujourd\'hui sous une forme fossile sur l\'ensemble du ciel.<\\/p>\",\"drop_cap\":\"yes\",\"drop_cap_primary_color\":\"#000000\"},\"elements\":[],\"widgetType\":\"text-editor\"},{\"id\":\"70276a4\",\"elType\":\"widget\",\"settings\":{\"editor\":\"<p>La volont\\u00e9 r\\u00e9cente de prendre en compte ce qui pourrait s\'\\u00eatre pass\\u00e9 avant l\'origine de l\'Univers n\'est que le dernier en date des revirements intellectuels qui se sont succ\\u00e9d\\u00e9 durant des mill\\u00e9naires. Dans toutes les cultures, les philosophes et les th\\u00e9ologiens ont \\u00e9t\\u00e9 confront\\u00e9s \\u00e0 la question du commencement des temps et de l\'origine du monde. Notre \\u00ab arbre g\\u00e9n\\u00e9alogique \\u00bb passe par les premi\\u00e8res formes de vie, la formation des \\u00e9toiles, la synth\\u00e8se des premiers \\u00e9l\\u00e9ments et remonte jusqu\'\\u00e0 l\'\\u00e9nergie qui baignait l\'espace primordial. Continue-t-il ainsi \\u00e9ternellement ou prend-t-il racine quelque part ? Les philosophes grecs ont longuement d\\u00e9battu de l\'origine du temps. Aristote d\\u00e9fendait l\'absence de commencement en invoquant le principe selon lequel rien ne surgit de rien. Si l\'Univers ne peut na\\u00eetre ex nihilo, il doit avoir toujours exist\\u00e9. Le temps devrait s\'\\u00e9tendre \\u00e9ternellement dans le pass\\u00e9 comme dans le futur. Les th\\u00e9ologiens chr\\u00e9tiens ont d\\u00e9fendu le point de vue inverse. Saint Augustin affirmait que Dieu existe en dehors de l\'espace et du temps et qu\'il est capable de les cr\\u00e9er comme il a forg\\u00e9 les autres aspects du monde. Que faisait alors Dieu avant de cr\\u00e9er le monde ? Selon saint Augustin, le temps lui-m\\u00eame faisant partie de la cr\\u00e9ation divine, il n\'y avait tout simplement pas d\'avant.<\\/p>\"},\"elements\":[],\"widgetType\":\"text-editor\"}],\"isInner\":false}],\"isInner\":false},{\"id\":\"9bd8717\",\"elType\":\"section\",\"settings\":[],\"elements\":[{\"id\":\"99d70e5\",\"elType\":\"column\",\"settings\":{\"_column_size\":100},\"elements\":[{\"id\":\"0de9edb\",\"elType\":\"widget\",\"settings\":{\"title\":\"Une \\u00e9trange homog\\u00e9n\\u00e9it\\u00e9\",\"title_color\":\"#000000\"},\"elements\":[],\"widgetType\":\"heading\"},{\"id\":\"dbe8d60\",\"elType\":\"widget\",\"settings\":{\"editor\":\"<p>La th\\u00e9orie de la relativit\\u00e9 g\\u00e9n\\u00e9rale a conduit les cosmologistes modernes \\u00e0 une conclusion tr\\u00e8s semblable. Dans ce cadre, l\'espace et le temps ne sont pas rigides et absolus, mais dynamiques et d\\u00e9form\\u00e9s par l\'influence de la mati\\u00e8re. \\u00c0 de grandes \\u00e9chelles de distance, l\'espace se courbe, s\'\\u00e9tend ou se contracte au cours du temps, en emportant avec lui la mati\\u00e8re. Au cours des ann\\u00e9es 1920, \\u00e0 la suite d\'Edwin Hubble, les astronomes ont confirm\\u00e9 que notre Univers est en expansion : les galaxies s\'\\u00e9loignent les unes des autres. Une des cons\\u00e9quences de cette expansion est que le temps ne peut s\'\\u00e9tendre ind\\u00e9finiment vers le pass\\u00e9. En projetant le film de l\'histoire cosmique \\u00e0 l\'envers, les galaxies se rapprochent les unes des autres jusqu\'\\u00e0 se rejoindre en un point infinit\\u00e9simal, nomm\\u00e9 singularit\\u00e9. Toutes les galaxies \\u2013 ou plut\\u00f4t leurs pr\\u00e9curseurs \\u2013 se retrouvent dans un volume nul. La densit\\u00e9, la temp\\u00e9rature, mais aussi la courbure de l\'espace-temps, deviennent infinies. La singularit\\u00e9 est le cataclysme ultime au-del\\u00e0 duquel nous ne pouvons plus poursuivre de g\\u00e9n\\u00e9alogie cosmique.<\\/p>\"},\"elements\":[],\"widgetType\":\"text-editor\"},{\"id\":\"3206133\",\"elType\":\"widget\",\"settings\":{\"editor\":\"<p>Ce d\\u00e9roulement soul\\u00e8ve de nombreuses questions. En particulier, il semble peu compatible avec le fait que l\'Univers apparaisse homog\\u00e8ne, \\u00e0 grande \\u00e9chelle, dans toutes les directions. Pour que le cosmos ait le m\\u00eame aspect en tout point, il faut qu\'une forme d\'interaction se soit \\u00e9tablie entre les r\\u00e9gions \\u00e9loign\\u00e9es de l\'espace afin que leurs propri\\u00e9t\\u00e9s se soient homog\\u00e9n\\u00e9is\\u00e9es. Or cela contredit les donn\\u00e9es de l\'expansion cosmologique. La lumi\\u00e8re a \\u00e9t\\u00e9 lib\\u00e9r\\u00e9e il y a 13,7 milliards d\'ann\\u00e9es (c\'est le fond diffus cosmologique observ\\u00e9 aujourd\'hui dans le domaine des micro-ondes). Dans toutes les directions, on trouve des galaxies distantes de plus de 13 milliards d\'ann\\u00e9es-lumi\\u00e8re. Il existe ainsi des galaxies, dans des directions oppos\\u00e9es, qui sont s\\u00e9par\\u00e9es par plus de 25 milliards d\'ann\\u00e9es-lumi\\u00e8re. Par cons\\u00e9quent, ces r\\u00e9gions n\'ont jamais \\u00e9t\\u00e9 en contact : elles n\'ont pas eu le temps d\'\\u00e9changer de la lumi\\u00e8re, ni a fortiori de la mati\\u00e8re. Leur densit\\u00e9, leur temp\\u00e9rature et autres propri\\u00e9t\\u00e9s n\'ont pas pu \\u00eatre homog\\u00e9n\\u00e9is\\u00e9es.<\\/p>\"},\"elements\":[],\"widgetType\":\"text-editor\"}],\"isInner\":false}],\"isInner\":false}]'),
(81, 21, '_elementor_version', '0.4'),
(82, 21, '_elementor_css', 'a:4:{s:4:\"time\";i:1546622593;s:5:\"fonts\";a:0:{}s:6:\"status\";s:4:\"file\";i:0;s:0:\"\";}'),
(84, 23, '_menu_item_type', 'custom'),
(85, 23, '_menu_item_menu_item_parent', '0'),
(86, 23, '_menu_item_object_id', '23'),
(87, 23, '_menu_item_object', 'custom'),
(88, 23, '_menu_item_target', ''),
(89, 23, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(90, 23, '_menu_item_xfn', ''),
(91, 23, '_menu_item_url', 'https://autheman-victor.fr/blog'),
(92, 24, '_menu_item_type', 'taxonomy'),
(93, 24, '_menu_item_menu_item_parent', '0'),
(94, 24, '_menu_item_object_id', '4'),
(95, 24, '_menu_item_object', 'category'),
(96, 24, '_menu_item_target', ''),
(97, 24, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(98, 24, '_menu_item_xfn', ''),
(99, 24, '_menu_item_url', ''),
(100, 25, '_menu_item_type', 'custom'),
(101, 25, '_menu_item_menu_item_parent', '0'),
(102, 25, '_menu_item_object_id', '25'),
(103, 25, '_menu_item_object', 'custom'),
(104, 25, '_menu_item_target', ''),
(105, 25, '_menu_item_classes', 'a:1:{i:0;s:8:\"site-pro\";}'),
(106, 25, '_menu_item_xfn', ''),
(107, 25, '_menu_item_url', 'https://autheman-victor.fr'),
(116, 30, '_menu_item_type', 'taxonomy'),
(117, 30, '_menu_item_menu_item_parent', '0'),
(118, 30, '_menu_item_object_id', '12'),
(119, 30, '_menu_item_object', 'category'),
(120, 30, '_menu_item_target', ''),
(121, 30, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(122, 30, '_menu_item_xfn', ''),
(123, 30, '_menu_item_url', ''),
(343, 76, '_elementor_edit_mode', 'builder'),
(344, 76, '_elementor_template_type', 'post'),
(342, 76, '_wp_page_template', 'elementor_header_footer'),
(132, 32, '_menu_item_type', 'taxonomy'),
(133, 32, '_menu_item_menu_item_parent', '0'),
(134, 32, '_menu_item_object_id', '13'),
(135, 32, '_menu_item_object', 'category'),
(136, 32, '_menu_item_target', ''),
(137, 32, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(138, 32, '_menu_item_xfn', ''),
(139, 32, '_menu_item_url', ''),
(140, 33, '_menu_item_type', 'taxonomy'),
(141, 33, '_menu_item_menu_item_parent', '73'),
(142, 33, '_menu_item_object_id', '11'),
(143, 33, '_menu_item_object', 'category'),
(144, 33, '_menu_item_target', ''),
(145, 33, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(146, 33, '_menu_item_xfn', ''),
(147, 33, '_menu_item_url', ''),
(150, 35, '_edit_lock', '1546627931:1'),
(151, 36, '_wp_attached_file', '2019/01/423191.jpg'),
(152, 36, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1920;s:6:\"height\";i:1080;s:4:\"file\";s:18:\"2019/01/423191.jpg\";s:5:\"sizes\";a:9:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:18:\"423191-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:18:\"423191-300x169.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:169;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:18:\"423191-768x432.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:432;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:19:\"423191-1024x576.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:576;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:16:\"ccfw-single-post\";a:4:{s:4:\"file\";s:19:\"423191-1200x700.jpg\";s:5:\"width\";i:1200;s:6:\"height\";i:700;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:18:\"ccfw-featured-post\";a:4:{s:4:\"file\";s:19:\"423191-1678x500.jpg\";s:5:\"width\";i:1678;s:6:\"height\";i:500;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:19:\"ccfw-feature-medium\";a:4:{s:4:\"file\";s:18:\"423191-390x255.jpg\";s:5:\"width\";i:390;s:6:\"height\";i:255;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"ccfw-hero-main\";a:4:{s:4:\"file\";s:18:\"423191-600x393.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:393;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"ccfw-hero-mini\";a:4:{s:4:\"file\";s:18:\"423191-285x186.jpg\";s:5:\"width\";i:285;s:6:\"height\";i:186;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"1\";s:8:\"keywords\";a:0:{}}}'),
(155, 35, '_thumbnail_id', '36'),
(180, 35, '_elementor_edit_mode', 'builder'),
(181, 35, '_elementor_template_type', 'post'),
(186, 35, '_wp_page_template', 'default'),
(187, 35, '_elementor_data', '[{\"id\":\"5b78704\",\"elType\":\"section\",\"settings\":[],\"elements\":[{\"id\":\"961c42b\",\"elType\":\"column\",\"settings\":{\"_column_size\":100},\"elements\":[{\"id\":\"1c9c1a7\",\"elType\":\"widget\",\"settings\":{\"editor\":\"<p><strong>Pr\\u00e8s de 2 millions d\\u2019ann\\u00e9es se sont \\u00e9coul\\u00e9es entre l\\u2019apparition de ce qui semble \\u00eatre notre plus ancien anc\\u00eatre connu,\\u00a0<em>Australopithecus sediba<\\/em>, et nous aujourd\\u2019hui\\u00a0<em>Homo Sapiens Sapiens<\\/em>. 2 millions d\\u2019ann\\u00e9es d\\u2019une histoire qui para\\u00eet de plus en plus complexe, un enchev\\u00eatrement de lign\\u00e9es diff\\u00e9rentes qui rendent caduque l\\u2019image d\\u2019Epinal d\\u2019une \\u00e9volution lin\\u00e9aire r\\u00e9ussie aux c\\u00f4t\\u00e9s de quelques branches qui n\\u2019auraient pas surv\\u00e9cu (Neandertal pour la plus r\\u00e9cente) du fait de leur incapacit\\u00e9 \\u00e0 soutenir la concurrence des Sapiens.<\\/strong><\\/p>\"},\"elements\":[],\"widgetType\":\"text-editor\"}],\"isInner\":false}],\"isInner\":false},{\"id\":\"bcfdaac\",\"elType\":\"section\",\"settings\":[],\"elements\":[{\"id\":\"b8e7a31\",\"elType\":\"column\",\"settings\":{\"_column_size\":100},\"elements\":[{\"id\":\"974f7a1\",\"elType\":\"widget\",\"settings\":{\"editor\":\"<p>Note technique\\u00a0: L\\u2019\\u00e9tude de l\\u2019\\u00e9volution humaine est aujourd\\u2019hui indissociable de l\\u2019analyse g\\u00e9n\\u00e9tique des fossiles. Cette analyse porte sur deux aspects, l\\u2019<a href=\\\"http:\\/\\/www.futura-sciences.com\\/magazines\\/sante\\/infos\\/dico\\/d\\/genetique-adn-mitochondrial-4449\\/\\\" target=\\\"_blank\\\" rel=\\\"nofollow noopener\\\">ADN mitochondrial\\u00a0<\\/a>qui retrace la lign\\u00e9e maternelle (transmission uniquement par la m\\u00e8re) et l\\u2019<a href=\\\"http:\\/\\/fr.wikipedia.org\\/wiki\\/ADN_nucl%C3%A9aire\\\" target=\\\"_blank\\\" rel=\\\"nofollow noopener\\\">ADN nucl\\u00e9aire<\\/a>\\u00a0qui provient des deux parents, et permet une meilleure compr\\u00e9hension de la lign\\u00e9e. Le premier est relativement commun et ais\\u00e9 \\u00e0 analyser, le second par contre ne se retrouve pas dans tous les fossiles, et quand il s\\u2019y trouve c\\u2019est \\u00e0 doses nettement plus faibles.<\\/p><p>Le record de vieillesse d\\u2019ADN fossile \\u00e9tait jusqu\\u2019\\u00e0 la semaine dernier de 100 000 ans, mais une d\\u00e9couverte d\\u2019un f\\u00e9mur dans la grotte de\\u00a0Sima de los Huesos en Espagne vient de porter ce record \\u00e0 400 000 ans. Il s\\u2019agit d\\u2019ADN mitochondrial et donc d\\u2019une image incompl\\u00e8te de la lign\\u00e9e, mais nous connaissons d\\u00e9sormais l\\u2019origine maternelle d\\u2019hominid\\u00e9s ayant v\\u00e9cu en Espagne voici 400 000 ans. Et celui-ci fait tache\\u2026<\\/p><p>Au vu de la forme du squelette et de l\\u2019histoire de cette grotte (o\\u00f9 on a d\\u00e9j\\u00e0 retrouv\\u00e9 28 squelettes anciens) il devait provenir d\\u2019un anc\\u00eatre de la lign\\u00e9e Neandertal, ces derniers ayant v\\u00e9cu en Europe et Asie entre \\u2013 200 000 et \\u2013 30 000 ann\\u00e9es. Or il n\\u2019en est rien, ce squelette est en fait tr\\u00e8s proche des\\u00a0<a href=\\\"http:\\/\\/fr.wikipedia.org\\/wiki\\/Hominid%C3%A9_de_Denisova\\\" target=\\\"_blank\\\" rel=\\\"nofollow noopener\\\">hominid\\u00e9s de Denisova<\\/a>, une esp\\u00e8ce r\\u00e9cemment d\\u00e9couverte dans une grotte du Sud de la Sib\\u00e9rie, ayant suppos\\u00e9ment v\\u00e9cu en Asie et dont on retrouve une proportion importante (4%) de g\\u00e8nes chez les Papous et aborig\\u00e8nes australiens.<\\/p><p>Comment expliquer la pr\\u00e9sence d\\u2019un Denisovan dans une grotte du Sud de l\\u2019Europe\\u00a0? Reprenons l\\u2019histoire telle que nous pensions la conna\\u00eetre jusqu\\u2019ici\\u00a0: voici 1 million d\\u2019ann\\u00e9es appara\\u00eet en Afrique\\u00a0<em>Homo Erectus<\\/em>, anc\\u00eatre des lignes Sapiens mais aussi Neandertal\\u00a0et Denisova. Neandertal\\u00a0serait issu d\\u2019une branche de\\u00a0<em>Erectus<\\/em>\\u00a0nomm\\u00e9e\\u00a0<em>Homo Heidelbergensis<\\/em>\\u00a0apparue voici 500 000 ans, l\\u2019origine des Denisovans \\u00e9tant moins \\u00e9vidente \\u2013 peut -\\u00eatre un croisement entre\\u00a0<em>Heidelbergensis<\\/em>\\u00a0et une lign\\u00e9e encore plus ancienne,\\u00a0<em>Homo Antecessor,<\\/em>\\u00a0lui-m\\u00eame un descendant de\\u00a0<em>Homo Erectus<\\/em>\\u00a0parall\\u00e8le \\u00e0 notre lign\\u00e9e.<\\/p><p>La s\\u00e9paration Neandertal\\u00a0\\/ Denisova aurait eu lieu voici encirons 300 000 ans, et\\u00a0<em>Homo Sapiens<\\/em>\\u00a0serait apparu voici 200 000 ans, en direct de\\u00a0<em>Erectus<\\/em>. Donc, \\u00e0 cette \\u00e9poque, coexistaient au moins trois esp\\u00e8ces document\\u00e9es\\u00a0:\\u00a0<em>Homo Sapiens<\\/em>\\u00a0en Afrique, d\\u2019o\\u00f9 il sort voici environ 60 000 ans pour se propager vers l\\u2019Ouest, o\\u00f9 il rencontre Neandertal\\u00a0- le g\\u00e9nome actuel de\\u00a0<em>Sapiens Sapiens<\\/em>\\u00a0non-Africain incluant 2 \\u00e0 4% du g\\u00e9nome n\\u00e9andertalien \\u2013 et vers l\\u2019Est o\\u00f9 il rencontre les Denisovans. Ces derniers se croisent g\\u00e9n\\u00e9tiquement avec\\u00a0<em>Sapiens<\\/em>\\u00a0en Oc\\u00e9anie, en Chine et en Asie, mais se croisent \\u00e9galement avec Neandertal. 30 000 ans plus tard, les lign\\u00e9es Neandertal\\u00a0et Denisovans s\\u2019\\u00e9teignent. La pr\\u00e9sence d\\u2019un g\\u00e9nome de Denisovan \\u00e0 l\\u2019Ouest, en Europe, est donc a priori exclue. Et pourtant, c\\u2019est bien ce que l\\u2019on vient de retrouver en Espagne.<\\/p><p>Explications\\u00a0? Purement sp\\u00e9culatives pour l\\u2019instant, d\\u2019autant que le f\\u00e9mur n\\u2019a pas encore fourni d\\u2019ADN nucl\\u00e9aire (une recherche est en cours) donc on ne peut encore reconstituer la lign\\u00e9e parentale compl\\u00e8te.<\\/p><p>Une premi\\u00e8re hypoth\\u00e8se, selon Svante P\\u00e4\\u00e4bo,\\u00a0chef de l\\u2019\\u00e9quipe qui vient de d\\u00e9coder cet ADN au\\u00a0Max Planck Institute for Evolutionary Anthropology \\u00e0 Leipzig,\\u00a0est que le f\\u00e9mur appartient \\u00e0 un\\u00a0anc\\u00eatre commun des Neandertal\\u00a0et Denisovans.<\\/p><p>Une autre hypoth\\u00e8se, selon\\u00a0Chris Stringer, pal\\u00e9ontologue au Mus\\u00e9e d\\u2019Histoire Naturelle de Londres, est que ce f\\u00e9mur appartient \\u00e0 un groupe tout \\u00e0 fait diff\\u00e9rent, peut \\u00eatre un croisement entre\\u00a0<em>Homo Antecessor<\\/em>\\u00a0qui vivait dans le coin voici 800 000 ans et l\\u2019anc\\u00eatre commun des Neandertal\\u00a0\\/ Denisovans. Ce d\\u2019autant qu\\u2019une \\u00e9tude en cours de publication (<a href=\\\"http:\\/\\/doi.org\\/p9t\\\" rel=\\\"nofollow\\\"><i>Nature\\u00a0<\\/i>http:\\/\\/doi.org\\/p9t\\u00a0; 2013<\\/a>)\\u00a0analysant l\\u2019ADN nucl\\u00e9aire de Neandertal\\u00a0et de Denisova, indique que ce dernier s\\u2019est aussi crois\\u00e9 avec une autre esp\\u00e8ce d\\u2019hominid\\u00e9s dont on ne sait rien\\u2026 Il faudra attendre les r\\u00e9sultats, si r\\u00e9sultats il y a, de l\\u2019\\u00e9tude de l\\u2019ADN nucl\\u00e9aire du f\\u00e9mur espagnol pour en savoir plus.<\\/p><p>Les pal\\u00e9ontologues font actuellement face \\u00e0 une profonde remise en question de l\\u2019organigramme de l\\u2019\\u00e9volution des hominid\\u00e9s\\u00a0: une lign\\u00e9e r\\u00e9cemment d\\u00e9couverte, les Denisovans, qui se sont m\\u00e9lang\\u00e9s avec tout le monde \\u00e0 l\\u2019Est mais dont on retrouve une trace ancestrale \\u00e0 l\\u2019Ouest, qui sont apparent\\u00e9s \\u00e0 Neandertal\\u00a0mais on ne sait pas exactement comment, et qui nous r\\u00e9v\\u00e8lent l\\u2019existence probable d\\u2019un nouveau groupe jusqu\\u2019ici parfaitement inconnu. Tout ceci, bien s\\u00fbr, sur base d\\u2019une m\\u00e9thodologie g\\u00e9n\\u00e9tique tr\\u00e8s pointue sur laquelle nous avons peu de recul \\u2013 il n\\u2019est donc pas impossible, m\\u00eame si personne ne semble l\\u2019envisager, que ces myst\\u00e8res soient simplement la cons\\u00e9quence d\\u2019un probl\\u00e8me de m\\u00e9thode scientifique.<\\/p><p>Pour\\u00a0Mark Thomas, g\\u00e9n\\u00e9ticien de l\\u2019\\u00e9volution \\u00e0 l\\u2019University College de Londres, le monde ancien d\\u00e9peint par ces r\\u00e9centes d\\u00e9couvertes ressemble de plus en plus \\u00e0 celui d\\u00e9crit par Tolkien dans le Seigneur des Anneaux\\u00a0: diff\\u00e9rentes esp\\u00e8ces d\\u2019hominid\\u00e9s qui occupent des territoires distincts, ponctu\\u00e9 d\\u2019invasions et de croisements donnant naissance \\u00e0 de nouvelles vari\\u00e9t\\u00e9s.<\\/p>\",\"drop_cap\":\"yes\",\"drop_cap_primary_color\":\"#000000\"},\"elements\":[],\"widgetType\":\"text-editor\"}],\"isInner\":false}],\"isInner\":false}]'),
(190, 42, '_thumbnail_id', '36'),
(191, 42, '_elementor_edit_mode', 'builder'),
(192, 42, '_elementor_template_type', 'post'),
(193, 42, '_wp_page_template', 'default'),
(194, 42, '_elementor_data', '[{\"id\":\"5b78704\",\"elType\":\"section\",\"settings\":[],\"elements\":[{\"id\":\"961c42b\",\"elType\":\"column\",\"settings\":{\"_column_size\":100},\"elements\":[{\"id\":\"1c9c1a7\",\"elType\":\"widget\",\"settings\":{\"editor\":\"<p><strong>Pr\\u00e8s de 2 millions d\\u2019ann\\u00e9es se sont \\u00e9coul\\u00e9es entre l\\u2019apparition de ce qui semble \\u00eatre notre plus ancien anc\\u00eatre connu,\\u00a0<em>Australopithecus sediba<\\/em>, et nous aujourd\\u2019hui\\u00a0<em>Homo Sapiens Sapiens<\\/em>. 2 millions d\\u2019ann\\u00e9es d\\u2019une histoire qui para\\u00eet de plus en plus complexe, un enchev\\u00eatrement de lign\\u00e9es diff\\u00e9rentes qui rendent caduque l\\u2019image d\\u2019Epinal d\\u2019une \\u00e9volution lin\\u00e9aire r\\u00e9ussie aux c\\u00f4t\\u00e9s de quelques branches qui n\\u2019auraient pas surv\\u00e9cu (Neandertal pour la plus r\\u00e9cente) du fait de leur incapacit\\u00e9 \\u00e0 soutenir la concurrence des Sapiens.<\\/strong><\\/p>\"},\"elements\":[],\"widgetType\":\"text-editor\"}],\"isInner\":false}],\"isInner\":false},{\"id\":\"bcfdaac\",\"elType\":\"section\",\"settings\":[],\"elements\":[{\"id\":\"b8e7a31\",\"elType\":\"column\",\"settings\":{\"_column_size\":100},\"elements\":[{\"id\":\"974f7a1\",\"elType\":\"widget\",\"settings\":{\"editor\":\"<p>Note technique\\u00a0: L\\u2019\\u00e9tude de l\\u2019\\u00e9volution humaine est aujourd\\u2019hui indissociable de l\\u2019analyse g\\u00e9n\\u00e9tique des fossiles. Cette analyse porte sur deux aspects, l\\u2019<a href=\\\"http:\\/\\/www.futura-sciences.com\\/magazines\\/sante\\/infos\\/dico\\/d\\/genetique-adn-mitochondrial-4449\\/\\\" target=\\\"_blank\\\" rel=\\\"nofollow noopener\\\">ADN mitochondrial\\u00a0<\\/a>qui retrace la lign\\u00e9e maternelle (transmission uniquement par la m\\u00e8re) et l\\u2019<a href=\\\"http:\\/\\/fr.wikipedia.org\\/wiki\\/ADN_nucl%C3%A9aire\\\" target=\\\"_blank\\\" rel=\\\"nofollow noopener\\\">ADN nucl\\u00e9aire<\\/a>\\u00a0qui provient des deux parents, et permet une meilleure compr\\u00e9hension de la lign\\u00e9e. Le premier est relativement commun et ais\\u00e9 \\u00e0 analyser, le second par contre ne se retrouve pas dans tous les fossiles, et quand il s\\u2019y trouve c\\u2019est \\u00e0 doses nettement plus faibles.<\\/p><p>Le record de vieillesse d\\u2019ADN fossile \\u00e9tait jusqu\\u2019\\u00e0 la semaine dernier de 100 000 ans, mais une d\\u00e9couverte d\\u2019un f\\u00e9mur dans la grotte de\\u00a0Sima de los Huesos en Espagne vient de porter ce record \\u00e0 400 000 ans. Il s\\u2019agit d\\u2019ADN mitochondrial et donc d\\u2019une image incompl\\u00e8te de la lign\\u00e9e, mais nous connaissons d\\u00e9sormais l\\u2019origine maternelle d\\u2019hominid\\u00e9s ayant v\\u00e9cu en Espagne voici 400 000 ans. Et celui-ci fait tache\\u2026<\\/p><p>Au vu de la forme du squelette et de l\\u2019histoire de cette grotte (o\\u00f9 on a d\\u00e9j\\u00e0 retrouv\\u00e9 28 squelettes anciens) il devait provenir d\\u2019un anc\\u00eatre de la lign\\u00e9e Neandertal, ces derniers ayant v\\u00e9cu en Europe et Asie entre \\u2013 200 000 et \\u2013 30 000 ann\\u00e9es. Or il n\\u2019en est rien, ce squelette est en fait tr\\u00e8s proche des\\u00a0<a href=\\\"http:\\/\\/fr.wikipedia.org\\/wiki\\/Hominid%C3%A9_de_Denisova\\\" target=\\\"_blank\\\" rel=\\\"nofollow noopener\\\">hominid\\u00e9s de Denisova<\\/a>, une esp\\u00e8ce r\\u00e9cemment d\\u00e9couverte dans une grotte du Sud de la Sib\\u00e9rie, ayant suppos\\u00e9ment v\\u00e9cu en Asie et dont on retrouve une proportion importante (4%) de g\\u00e8nes chez les Papous et aborig\\u00e8nes australiens.<\\/p><p>Comment expliquer la pr\\u00e9sence d\\u2019un Denisovan dans une grotte du Sud de l\\u2019Europe\\u00a0? Reprenons l\\u2019histoire telle que nous pensions la conna\\u00eetre jusqu\\u2019ici\\u00a0: voici 1 million d\\u2019ann\\u00e9es appara\\u00eet en Afrique\\u00a0<em>Homo Erectus<\\/em>, anc\\u00eatre des lignes Sapiens mais aussi Neandertal\\u00a0et Denisova. Neandertal\\u00a0serait issu d\\u2019une branche de\\u00a0<em>Erectus<\\/em>\\u00a0nomm\\u00e9e\\u00a0<em>Homo Heidelbergensis<\\/em>\\u00a0apparue voici 500 000 ans, l\\u2019origine des Denisovans \\u00e9tant moins \\u00e9vidente \\u2013 peut -\\u00eatre un croisement entre\\u00a0<em>Heidelbergensis<\\/em>\\u00a0et une lign\\u00e9e encore plus ancienne,\\u00a0<em>Homo Antecessor,<\\/em>\\u00a0lui-m\\u00eame un descendant de\\u00a0<em>Homo Erectus<\\/em>\\u00a0parall\\u00e8le \\u00e0 notre lign\\u00e9e.<\\/p><p>La s\\u00e9paration Neandertal\\u00a0\\/ Denisova aurait eu lieu voici encirons 300 000 ans, et\\u00a0<em>Homo Sapiens<\\/em>\\u00a0serait apparu voici 200 000 ans, en direct de\\u00a0<em>Erectus<\\/em>. Donc, \\u00e0 cette \\u00e9poque, coexistaient au moins trois esp\\u00e8ces document\\u00e9es\\u00a0:\\u00a0<em>Homo Sapiens<\\/em>\\u00a0en Afrique, d\\u2019o\\u00f9 il sort voici environ 60 000 ans pour se propager vers l\\u2019Ouest, o\\u00f9 il rencontre Neandertal\\u00a0- le g\\u00e9nome actuel de\\u00a0<em>Sapiens Sapiens<\\/em>\\u00a0non-Africain incluant 2 \\u00e0 4% du g\\u00e9nome n\\u00e9andertalien \\u2013 et vers l\\u2019Est o\\u00f9 il rencontre les Denisovans. Ces derniers se croisent g\\u00e9n\\u00e9tiquement avec\\u00a0<em>Sapiens<\\/em>\\u00a0en Oc\\u00e9anie, en Chine et en Asie, mais se croisent \\u00e9galement avec Neandertal. 30 000 ans plus tard, les lign\\u00e9es Neandertal\\u00a0et Denisovans s\\u2019\\u00e9teignent. La pr\\u00e9sence d\\u2019un g\\u00e9nome de Denisovan \\u00e0 l\\u2019Ouest, en Europe, est donc a priori exclue. Et pourtant, c\\u2019est bien ce que l\\u2019on vient de retrouver en Espagne.<\\/p><p>Explications\\u00a0? Purement sp\\u00e9culatives pour l\\u2019instant, d\\u2019autant que le f\\u00e9mur n\\u2019a pas encore fourni d\\u2019ADN nucl\\u00e9aire (une recherche est en cours) donc on ne peut encore reconstituer la lign\\u00e9e parentale compl\\u00e8te.<\\/p><p>Une premi\\u00e8re hypoth\\u00e8se, selon Svante P\\u00e4\\u00e4bo,\\u00a0chef de l\\u2019\\u00e9quipe qui vient de d\\u00e9coder cet ADN au\\u00a0Max Planck Institute for Evolutionary Anthropology \\u00e0 Leipzig,\\u00a0est que le f\\u00e9mur appartient \\u00e0 un\\u00a0anc\\u00eatre commun des Neandertal\\u00a0et Denisovans.<\\/p><p>Une autre hypoth\\u00e8se, selon\\u00a0Chris Stringer, pal\\u00e9ontologue au Mus\\u00e9e d\\u2019Histoire Naturelle de Londres, est que ce f\\u00e9mur appartient \\u00e0 un groupe tout \\u00e0 fait diff\\u00e9rent, peut \\u00eatre un croisement entre\\u00a0<em>Homo Antecessor<\\/em>\\u00a0qui vivait dans le coin voici 800 000 ans et l\\u2019anc\\u00eatre commun des Neandertal\\u00a0\\/ Denisovans. Ce d\\u2019autant qu\\u2019une \\u00e9tude en cours de publication (<a href=\\\"http:\\/\\/doi.org\\/p9t\\\" rel=\\\"nofollow\\\"><i>Nature\\u00a0<\\/i>http:\\/\\/doi.org\\/p9t\\u00a0; 2013<\\/a>)\\u00a0analysant l\\u2019ADN nucl\\u00e9aire de Neandertal\\u00a0et de Denisova, indique que ce dernier s\\u2019est aussi crois\\u00e9 avec une autre esp\\u00e8ce d\\u2019hominid\\u00e9s dont on ne sait rien\\u2026 Il faudra attendre les r\\u00e9sultats, si r\\u00e9sultats il y a, de l\\u2019\\u00e9tude de l\\u2019ADN nucl\\u00e9aire du f\\u00e9mur espagnol pour en savoir plus.<\\/p><p>Les pal\\u00e9ontologues font actuellement face \\u00e0 une profonde remise en question de l\\u2019organigramme de l\\u2019\\u00e9volution des hominid\\u00e9s\\u00a0: une lign\\u00e9e r\\u00e9cemment d\\u00e9couverte, les Denisovans, qui se sont m\\u00e9lang\\u00e9s avec tout le monde \\u00e0 l\\u2019Est mais dont on retrouve une trace ancestrale \\u00e0 l\\u2019Ouest, qui sont apparent\\u00e9s \\u00e0 Neandertal\\u00a0mais on ne sait pas exactement comment, et qui nous r\\u00e9v\\u00e8lent l\\u2019existence probable d\\u2019un nouveau groupe jusqu\\u2019ici parfaitement inconnu. Tout ceci, bien s\\u00fbr, sur base d\\u2019une m\\u00e9thodologie g\\u00e9n\\u00e9tique tr\\u00e8s pointue sur laquelle nous avons peu de recul \\u2013 il n\\u2019est donc pas impossible, m\\u00eame si personne ne semble l\\u2019envisager, que ces myst\\u00e8res soient simplement la cons\\u00e9quence d\\u2019un probl\\u00e8me de m\\u00e9thode scientifique.<\\/p><p>Pour\\u00a0Mark Thomas, g\\u00e9n\\u00e9ticien de l\\u2019\\u00e9volution \\u00e0 l\\u2019University College de Londres, le monde ancien d\\u00e9peint par ces r\\u00e9centes d\\u00e9couvertes ressemble de plus en plus \\u00e0 celui d\\u00e9crit par Tolkien dans le Seigneur des Anneaux\\u00a0: diff\\u00e9rentes esp\\u00e8ces d\\u2019hominid\\u00e9s qui occupent des territoires distincts, ponctu\\u00e9 d\\u2019invasions et de croisements donnant naissance \\u00e0 de nouvelles vari\\u00e9t\\u00e9s.<\\/p>\",\"drop_cap\":\"yes\",\"drop_cap_primary_color\":\"#000000\"},\"elements\":[],\"widgetType\":\"text-editor\"}],\"isInner\":false}],\"isInner\":false}]'),
(195, 35, '_elementor_version', '0.4'),
(299, 44, '_elementor_css', 'a:5:{s:4:\"time\";i:1546692487;s:5:\"fonts\";a:0:{}s:6:\"status\";s:5:\"empty\";i:0;s:0:\"\";s:3:\"css\";s:0:\"\";}'),
(247, 44, '_encloseme', '1'),
(248, 51, '_thumbnail_id', '46'),
(381, 83, '_encloseme', '1'),
(231, 44, '_encloseme', '1'),
(232, 48, '_thumbnail_id', '46'),
(233, 48, '_elementor_edit_mode', 'builder'),
(234, 48, '_elementor_template_type', 'post'),
(235, 48, '_wp_page_template', 'default');
<div class="error"><h1>Erreur</h1><p><strong>Requête SQL : </strong>
<a href="server_sql.php?sql_query=SET+SQL_QUOTE_SHOW_CREATE+%3D+1&amp;show_query=1"><span class="nowrap"><img src="themes/dot.gif" title="Éditer" alt="Éditer" class="icon ic_b_edit" />&nbsp;Éditer</span></a>    </p>
<p>
<code class="sql"><pre>
SET SQL_QUOTE_SHOW_CREATE = 1
</pre></code>
</p>
<p>
    <strong>MySQL a répondu : </strong><a href="./url.php?url=https%3A%2F%2Fdev.mysql.com%2Fdoc%2Frefman%2F5.7%2Fen%2Ferror-messages-server.html" target="mysql_doc"><img src="themes/dot.gif" title="Documentation" alt="Documentation" class="icon ic_b_help" /></a>
</p>
<code>#2006 - MySQL server has gone away</code><br/></div>
