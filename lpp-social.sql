-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le : jeu. 02 juin 2022 à 11:18
-- Version du serveur : 10.4.24-MariaDB
-- Version de PHP : 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `lpp-social`
--

-- --------------------------------------------------------

--
-- Structure de la table `tbl_etudiants`
--

CREATE TABLE `tbl_etudiants` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `Anniversaire` date DEFAULT NULL,
  `Classe` varchar(7) NOT NULL,
  `password` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `tbl_etudiants`
--

INSERT INTO `tbl_etudiants` (`id`, `name`, `email`, `Anniversaire`, `Classe`, `password`) VALUES
(1, 'Hommer Simpson', 'h.simpson@lpp.re', '2012-05-15', '604', '202cb962ac59075b964b07152d234b70'),
(2, 'Jack Sparrow', 'jack.sparrow@gmail.com', '2012-05-31', '604', '202cb962ac59075b964b07152d234b70'),
(3, 'Indiana Jones', 'ijones@lpp.re', '2014-05-20', '605', '202cb962ac59075b964b07152d234b70'),
(4, 'Han Solo', 'h.solo@lpp.re', '2013-05-17', '605', '202cb962ac59075b964b07152d234b70'),
(5, ' Bugs Bunny ', 'bugs.bunny@lpp.re', '2012-05-01', '604', '202cb962ac59075b964b07152d234b70');

-- --------------------------------------------------------

--
-- Structure de la table `tbl_perso`
--

CREATE TABLE `tbl_perso` (
  `id` int(5) NOT NULL,
  `nom` varchar(15) NOT NULL,
  `matière` varchar(15) NOT NULL,
  `email` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `tbl_perso`
--

INSERT INTO `tbl_perso` (`id`, `nom`, `matière`, `email`) VALUES
(1, 'Armand', 'Anglais', 'Armand@gmail.com'),
(2, 'Hebert', 'français', 'Hebert@gmail.com'),
(3, 'Ribeiro', 'Mathématique', 'Ribeiro@gmail.com'),
(4, 'Savary', 'Physic-Chimie', 'Savary@gmail.com');

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `tbl_etudiants`
--
ALTER TABLE `tbl_etudiants`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `tbl_perso`
--
ALTER TABLE `tbl_perso`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `tbl_etudiants`
--
ALTER TABLE `tbl_etudiants`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT pour la table `tbl_perso`
--
ALTER TABLE `tbl_perso`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
