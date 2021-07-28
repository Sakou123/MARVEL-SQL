/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

CREATE TABLE `acteur` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nom` varchar(50) NOT NULL,
  `prenom` varchar(50) NOT NULL,
  `date` date NOT NULL,
  `creation_date` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `update` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

CREATE TABLE `acteur_film` (
  `id_film` int(11) NOT NULL,
  `id_acteur` int(11) NOT NULL,
  KEY `id_film_film` (`id_film`),
  KEY `id_acteur_acteur` (`id_acteur`),
  CONSTRAINT `id_acteur_acteur` FOREIGN KEY (`id_acteur`) REFERENCES `acteur` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `id_film_film` FOREIGN KEY (`id_film`) REFERENCES `film` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE `film` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `titre` varchar(50) NOT NULL,
  `realisateur` varchar(50) NOT NULL,
  `duree` time NOT NULL,
  `date` year(4) NOT NULL,
  `creation_date` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `update` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

INSERT INTO `acteur` (`id`, `nom`, `prenom`, `date`, `creation_date`, `update`) VALUES
(1, 'Evans', 'Christopher', '1981-06-13', '2021-07-28 15:19:20', '2021-07-28 15:19:20');
INSERT INTO `acteur` (`id`, `nom`, `prenom`, `date`, `creation_date`, `update`) VALUES
(2, 'Downey Junior', 'Robert', '1965-04-04', '2021-07-28 15:19:20', '2021-07-28 15:19:20');
INSERT INTO `acteur` (`id`, `nom`, `prenom`, `date`, `creation_date`, `update`) VALUES
(3, 'Ruffalo', 'Mark', '1967-11-22', '2021-07-28 15:19:20', '2021-07-28 15:19:20');
INSERT INTO `acteur` (`id`, `nom`, `prenom`, `date`, `creation_date`, `update`) VALUES
(4, 'Hemsworth', 'Chris', '1983-08-11', '2021-07-28 15:19:20', '2021-07-28 15:19:20'),
(5, 'Scarlett', 'Johansson', '1984-11-22', '2021-07-28 15:19:20', '2021-07-28 15:19:20'),
(6, 'Hiddleston', 'Tom', '1981-02-09', '2021-07-28 15:19:20', '2021-07-28 15:19:20'),
(7, 'Bettany', 'Paul', '1971-05-27', '2021-07-28 15:19:20', '2021-07-28 15:19:20');

INSERT INTO `acteur_film` (`id_film`, `id_acteur`) VALUES
(1, 1);
INSERT INTO `acteur_film` (`id_film`, `id_acteur`) VALUES
(1, 2);
INSERT INTO `acteur_film` (`id_film`, `id_acteur`) VALUES
(1, 3);
INSERT INTO `acteur_film` (`id_film`, `id_acteur`) VALUES
(1, 4),
(1, 5),
(1, 6),
(2, 1),
(3, 2),
(4, 2),
(5, 2),
(6, 3);

INSERT INTO `film` (`id`, `titre`, `realisateur`, `duree`, `date`, `creation_date`, `update`) VALUES
(1, 'Avengers', 'Joss Whedon', '02:23:00', '2012', '2021-07-28 14:52:49', '2021-07-28 14:52:49');
INSERT INTO `film` (`id`, `titre`, `realisateur`, `duree`, `date`, `creation_date`, `update`) VALUES
(2, 'Captaine america : First avengers', 'Joe Johnston', '02:04:00', '2011', '2021-07-28 14:52:49', '2021-07-28 14:52:49');
INSERT INTO `film` (`id`, `titre`, `realisateur`, `duree`, `date`, `creation_date`, `update`) VALUES
(3, 'Iron Man', 'Jon Faveau', '02:06:00', '2008', '2021-07-28 14:52:49', '2021-07-28 14:52:49');
INSERT INTO `film` (`id`, `titre`, `realisateur`, `duree`, `date`, `creation_date`, `update`) VALUES
(4, 'Iron Man 2', 'Jon Faveau', '02:05:00', '2010', '2021-07-28 14:52:49', '2021-07-28 14:52:49'),
(5, 'Iron Man 3', 'Shane Black', '02:10:00', '2013', '2021-07-28 14:52:49', '2021-07-28 14:52:49'),
(6, 'L\'incroybale Hulk', 'Louis Leterrier', '01:52:00', '2008', '2021-07-28 14:52:49', '2021-07-28 14:52:49'),
(7, 'Iron Man 5', 'Michael Bay', '00:01:23', '2023', '2021-07-28 14:52:49', '2021-07-28 14:52:49');


/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;