-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1:3308
-- Généré le :  mer. 02 sep. 2020 à 13:14
-- Version du serveur :  8.0.18
-- Version de PHP :  7.3.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `oscar_dev`
--

-- --------------------------------------------------------

--
-- Structure de la table `bands`
--

DROP TABLE IF EXISTS `bands`;
CREATE TABLE IF NOT EXISTS `bands` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `image_url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `bands`
--

INSERT INTO `bands` (`id`, `image_url`, `name`) VALUES
(1, 'https://www.metalzone.fr/wp-content/uploads/2019/10/carach-angren-768x432.jpg', 'Carach Angren'),
(2, 'https://www.revolvermag.com/sites/default/files/styles/banner/public/media/images/article/belzebubs_106.jpg?itok=giN1cjoG&timestamp=1547573114', 'Beelzebub'),
(3, 'https://www.radiocampusparis.org/wp-content/uploads/2018/07/black_metal___logo_by_tonito292.png', 'black metal');

-- --------------------------------------------------------

--
-- Structure de la table `doctrine_migration_versions`
--

DROP TABLE IF EXISTS `doctrine_migration_versions`;
CREATE TABLE IF NOT EXISTS `doctrine_migration_versions` (
  `version` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `executed_at` datetime DEFAULT NULL,
  `execution_time` int(11) DEFAULT NULL,
  PRIMARY KEY (`version`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Déchargement des données de la table `doctrine_migration_versions`
--

INSERT INTO `doctrine_migration_versions` (`version`, `executed_at`, `execution_time`) VALUES
('DoctrineMigrations\\Version20200901073620', '2020-09-01 07:36:36', 121),
('DoctrineMigrations\\Version20200901121047', '2020-09-01 12:11:07', 1197),
('DoctrineMigrations\\Version20200901133047', '2020-09-01 13:30:56', 102);

-- --------------------------------------------------------

--
-- Structure de la table `fem_singer`
--

DROP TABLE IF EXISTS `fem_singer`;
CREATE TABLE IF NOT EXISTS `fem_singer` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image_url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `fem_singer`
--

INSERT INTO `fem_singer` (`id`, `name`, `description`, `image_url`) VALUES
(2, 'Simone Simons', 'Leader singer of Epica', 'https://i.pinimg.com/originals/d2/fa/0e/d2fa0ee023d63a728fac54dfc383431c.jpg'),
(3, 'Sharon Den Adel', 'Leader singer of Within Temptation', 'https://lastfm.freetls.fastly.net/i/u/770x0/b306056f2e4444328575b3adbae9744a.webp#b306056f2e4444328575b3adbae9744a'),
(4, 'Alyssa White-Gluz', 'Leader singer of The Agonist', 'https://i.pinimg.com/originals/e8/d2/5d/e8d25d7d92f0ec44d468c8496e239c81.jpg');

-- --------------------------------------------------------

--
-- Structure de la table `singer`
--

DROP TABLE IF EXISTS `singer`;
CREATE TABLE IF NOT EXISTS `singer` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image_url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `singer`
--

INSERT INTO `singer` (`id`, `name`, `description`, `image_url`) VALUES
(1, 'Dany Filth', 'Leader singer of Cradle of filth', 'https://upload.wikimedia.org/wikipedia/commons/thumb/0/0a/Cradle_of_Filth_Rockharz_2015_07.jpg/640px-Cradle_of_Filth_Rockharz_2015_07.jpg'),
(2, 'Alex Terrible', 'Leader singer of Slaughter to Prevail', 'https://i.pinimg.com/originals/32/f8/2b/32f82b152c98af3ebb8c0a4ea0fe9d03.jpg'),
(3, 'R.M.S. Hreidmarr', 'Leader singer of Anorexia Nervosa', 'https://sound-protest.net/wp-content/uploads/2020/06/Hreidmarr.jpg');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
