-- phpMyAdmin SQL Dump
-- version 3.2.4
-- http://www.phpmyadmin.net
--
-- Värd: localhost
-- Skapad: 10 mars 2010 kl 15:22
-- Serverversion: 5.1.37
-- PHP-version: 5.2.11

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Databas: `cakephp`
--

-- --------------------------------------------------------

--
-- Struktur för tabell `addresses`
--

CREATE TABLE `addresses` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `c_o` varchar(100) DEFAULT NULL,
  `street` varchar(100) DEFAULT NULL,
  `zip` varchar(100) DEFAULT NULL,
  `town` varchar(100) DEFAULT NULL,
  `country` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Data i tabell `addresses`
--

INSERT INTO `addresses` VALUES(1, 'jacobsson', 'Urgtan 3 2tr', '12340', 'karlstad', 'Sweden');
INSERT INTO `addresses` VALUES(2, '', 'Sportgatan', '14356', 'Hägersten', 'Sweden');

-- --------------------------------------------------------

--
-- Struktur för tabell `people`
--

CREATE TABLE `people` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(64) NOT NULL,
  `email` varchar(64) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Data i tabell `people`
--

INSERT INTO `people` VALUES(1, 'Nisse', 'nisse@sbf.se');
INSERT INTO `people` VALUES(2, 'Hasse', 'hasse@sbf.se');

-- --------------------------------------------------------

--
-- Struktur för tabell `person__have__address`
--

CREATE TABLE `person__have__address` (
  `address_id` int(11) NOT NULL,
  `person_id` int(11) NOT NULL,
  PRIMARY KEY (`address_id`,`person_id`),
  KEY `person_id` (`person_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Data i tabell `person__have__address`
--

INSERT INTO `person__have__address` VALUES(1, 1);
INSERT INTO `person__have__address` VALUES(2, 2);
