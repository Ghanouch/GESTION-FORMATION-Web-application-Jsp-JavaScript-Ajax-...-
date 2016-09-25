-- phpMyAdmin SQL Dump
-- version 4.1.14
-- http://www.phpmyadmin.net
--
-- Client :  127.0.0.1
-- Généré le :  Sam 28 Mars 2015 à 00:47
-- Version du serveur :  5.6.17
-- Version de PHP :  5.5.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de données :  `gestionformation`
--

-- --------------------------------------------------------

--
-- Structure de la table `admin`
--

CREATE TABLE IF NOT EXISTS `admin` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `login` varchar(30) DEFAULT NULL,
  `password` varchar(30) DEFAULT NULL,
  `role` varchar(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=63 ;

--
-- Contenu de la table `admin`
--

INSERT INTO `admin` (`id`, `login`, `password`, `role`) VALUES
(10, 'zaati', 'abdellah', 'enseignant'),
(11, 'mehdi', 'mouradif', 'etudiant'),
(19, 'ISSAM', 'GHANOUCH', 'enseignant'),
(53, 'issam', 'issam', 'admin'),
(58, 'MAJDO', 'POPAKR', 'admin'),
(59, 'ISSAM', 'FIHRI', 'etudiant'),
(61, 'PAPAP', 'LIKAlI', 'enseignant');

-- --------------------------------------------------------

--
-- Structure de la table `enseignant`
--

CREATE TABLE IF NOT EXISTS `enseignant` (
  `cin` varchar(10) NOT NULL DEFAULT '',
  `ppr` varchar(10) DEFAULT NULL,
  `nom` varchar(30) DEFAULT NULL,
  `prenom` varchar(30) DEFAULT NULL,
  `Email` varchar(50) DEFAULT NULL,
  `Tel` varchar(10) DEFAULT NULL,
  `filiere` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`cin`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `enseignant`
--

INSERT INTO `enseignant` (`cin`, `ppr`, `nom`, `prenom`, `Email`, `Tel`, `filiere`) VALUES
('11200566', 'G3667677', 'EZZATI', 'ABDESALAM', 'Ezzati@gmail.com', '066000890', 'IGI'),
('12Q5857a', '128Pk98', 'ALMHIDI', 'NESSAEKI', 'ISas@gotmr.fr', '052354162', 'MEM'),
('FG7788', '222222222', 'BOUCHAIB', 'NaserEddine', 'Bouchaib@gmail.com', '0677895649', 'GI'),
('H678899', '22556669', 'GADI', 'Taoufik', 'Gadi@gmail.com', '0661875152', 'IGI'),
('Q156205', 'QP85ASJ', 'NASSERDINE', 'BOUCHAIB', 'bouchaib.em@email.com', '0000000000', 'GI'),
('QA56285', 'HA2598', 'ISSAM', 'GHANOUCH', 'ISSAM@GMAIL.COM', '060354825', 'GI'),
('ssakkal', 'klaksaa', 'GHAAAANOUC', 'issam', 'ISas@gotmr.fr', '052354162', 'GI');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
