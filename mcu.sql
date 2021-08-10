-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1:3306
-- Généré le : mar. 10 août 2021 à 13:51
-- Version du serveur :  5.7.31
-- Version de PHP : 7.3.21

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `mcu`
--

-- --------------------------------------------------------

--
-- Structure de la table `acteur`
--

DROP TABLE IF EXISTS `acteur`;
CREATE TABLE IF NOT EXISTS `acteur` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nom` varchar(50) NOT NULL,
  `prenom` varchar(50) NOT NULL,
  `date` date NOT NULL,
  `creation_date` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `update` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `acteur`
--

INSERT INTO `acteur` (`id`, `nom`, `prenom`, `date`, `creation_date`, `update`) VALUES
(1, 'Evans', 'Christopher', '1981-06-13', '2021-07-28 15:19:20', '2021-07-28 15:19:20'),
(2, 'Downey Junior', 'Robert', '1965-04-04', '2021-07-28 15:19:20', '2021-07-28 15:19:20'),
(3, 'Ruffalo', 'Mark', '1967-11-22', '2021-07-28 15:19:20', '2021-07-28 15:19:20'),
(4, 'Hemsworth', 'Chris', '1983-08-11', '2021-07-28 15:19:20', '2021-07-28 15:19:20'),
(5, 'Scarlett', 'Johansson', '1984-11-22', '2021-07-28 15:19:20', '2021-07-28 15:19:20'),
(6, 'Hiddleston', 'Tom', '1981-02-09', '2021-07-28 15:19:20', '2021-07-28 15:19:20');

-- --------------------------------------------------------

--
-- Structure de la table `acteur_film`
--

DROP TABLE IF EXISTS `acteur_film`;
CREATE TABLE IF NOT EXISTS `acteur_film` (
  `id_film` int(11) NOT NULL,
  `id_acteur` int(11) NOT NULL,
  KEY `id_film_film` (`id_film`),
  KEY `id_acteur_acteur` (`id_acteur`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `acteur_film`
--

INSERT INTO `acteur_film` (`id_film`, `id_acteur`) VALUES
(1, 1),
(1, 2),
(1, 3),
(1, 4),
(1, 5),
(1, 6),
(2, 1),
(3, 2),
(4, 2),
(5, 2),
(6, 3);

-- --------------------------------------------------------

--
-- Structure de la table `film`
--

DROP TABLE IF EXISTS `film`;
CREATE TABLE IF NOT EXISTS `film` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `titre` varchar(50) NOT NULL,
  `realisateur` varchar(50) NOT NULL,
  `duree` time NOT NULL,
  `date` year(4) NOT NULL,
  `creation_date` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `update` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `film`
--

INSERT INTO `film` (`id`, `titre`, `realisateur`, `duree`, `date`, `creation_date`, `update`) VALUES
(1, 'Avengers', 'Joss Whedon', '02:23:00', 2012, '2021-07-28 14:52:49', '2021-07-28 14:52:49'),
(2, 'Captaine america : First avengers', 'Joe Johnston', '02:04:00', 2011, '2021-07-28 14:52:49', '2021-07-28 14:52:49'),
(3, 'Iron Man', 'Jon Faveau', '02:06:00', 2008, '2021-07-28 14:52:49', '2021-07-28 14:52:49'),
(4, 'Iron Man 2', 'Jon Faveau', '02:05:00', 2010, '2021-07-28 14:52:49', '2021-07-28 14:52:49'),
(5, 'Iron Man 3', 'Shane Black', '02:10:00', 2013, '2021-07-28 14:52:49', '2021-07-28 14:52:49'),
(6, 'L\'incroybale Hulk', 'Louis Leterrier', '01:52:00', 2008, '2021-07-28 14:52:49', '2021-07-28 14:52:49');

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `acteur_film`
--
ALTER TABLE `acteur_film`
  ADD CONSTRAINT `id_acteur_acteur` FOREIGN KEY (`id_acteur`) REFERENCES `acteur` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `id_film_film` FOREIGN KEY (`id_film`) REFERENCES `film` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
