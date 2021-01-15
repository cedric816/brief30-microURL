-- phpMyAdmin SQL Dump
-- version 4.9.5deb2
-- https://www.phpmyadmin.net/
--
-- Hôte : localhost:3306
-- Généré le : ven. 15 jan. 2021 à 10:19
-- Version du serveur :  8.0.22-0ubuntu0.20.04.3
-- Version de PHP : 7.4.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `micro_url`
--

-- --------------------------------------------------------

--
-- Structure de la table `mots_cles`
--

CREATE TABLE `mots_cles` (
  `mot_cle_id` int NOT NULL,
  `mot_cle` varchar(70) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Déchargement des données de la table `mots_cles`
--

INSERT INTO `mots_cles` (`mot_cle_id`, `mot_cle`) VALUES
(1, 'basket'),
(2, 'gard'),
(3, 'national'),
(4, 'regional'),
(5, 'sport'),
(6, 'sport'),
(7, 'sport amateur'),
(8, 'sport amateur'),
(9, 'sport amateur'),
(10, 'sport amateur'),
(11, 'sport amateur'),
(12, 'sport amateur'),
(13, 'sport amateur'),
(14, 'sport amateur'),
(15, 'sport amateur'),
(16, 'sport amateur'),
(17, 'sport amateur'),
(18, 'sport amateur'),
(19, 'sport amateur'),
(20, 'piratage'),
(21, 'sport amateur'),
(22, 'piratage'),
(23, 'sport amateur'),
(24, 'piratage'),
(25, 'sport amateur'),
(26, 'piratage'),
(27, 'sport amateur'),
(28, 'piratage'),
(29, 'sport amateur'),
(30, 'piratage'),
(31, 'sport amateur'),
(32, 'piratage'),
(33, 'sport amateur'),
(34, 'piratage'),
(35, 'sport amateur'),
(36, 'piratage'),
(37, 'sport amateur'),
(38, 'piratage');

-- --------------------------------------------------------

--
-- Structure de la table `url`
--

CREATE TABLE `url` (
  `url_id` int NOT NULL,
  `url` text NOT NULL,
  `shortcut` varchar(255) NOT NULL,
  `datetime` datetime NOT NULL,
  `description` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Déchargement des données de la table `url`
--

INSERT INTO `url` (`url_id`, `url`, `shortcut`, `datetime`, `description`) VALUES
(1, 'https://resultats.ffbb.com/championnat/b5e6211eee2f.html?r=200000002780719&d=200000002861502&p=5', 'bb-nm3_C', '2021-01-06 14:10:47', 'Résultats du championnat de basket NM3 poule C'),
(2, 'https://resultats.ffbb.com/organisation/808.html', 'bb-Dep-30', '2021-01-06 14:13:25', 'Résultats du championnat de basket départemental 30'),
(3, 'https://resultats.ffbb.com/championnat/b5e6211f1ce6.html?r=200000002792678&d=200000002875929&p=4', 'ffbb-DM30', '2021-01-06 16:16:00', 'Résultats du championnat de basket départemental masculin du Gard'),
(5, 'https://resultats.ffbb.com/organisation/b5e6211d5979.html', 'bb-Reg-Occitanie', '2021-01-07 09:00:03', 'Page des résultats de basket de la région Occitanie'),
(6, 'https://www.zataz.com/total-energie-direct-obligee-de-stopper-un-jeu-en-ligne-suite-a-une-fuite-de-donnees/', 'ztz7', '2021-01-15 10:00:03', 'L\'entreprise Total Energie Direct avait lancé un jeu en ligne. Le concours a dû être stoppé. Il était possible d\'accéder aux données des autres joueurs.'),
(7, 'https://www.zataz.com/total-energie-direct-obligee-de-stopper-un-jeu-en-ligne-suite-a-une-fuite-de-donnees/', 'ztz7', '2021-01-15 10:01:57', 'L\'entreprise Total Energie Direct avait lancé un jeu en ligne. Le concours a dû être stoppé. Il était possible d\'accéder aux données des autres joueurs.'),
(8, 'https://www.zataz.com/total-energie-direct-obligee-de-stopper-un-jeu-en-ligne-suite-a-une-fuite-de-donnees/', 'ztz7', '2021-01-15 10:02:25', 'L\'entreprise Total Energie Direct avait lancé un jeu en ligne. Le concours a dû être stoppé. Il était possible d\'accéder aux données des autres joueurs.'),
(9, 'https://www.zataz.com/total-energie-direct-obligee-de-stopper-un-jeu-en-ligne-suite-a-une-fuite-de-donnees/', 'ztz7', '2021-01-15 10:06:11', 'L\'entreprise Total Energie Direct avait lancé un jeu en ligne. Le concours a dû être stoppé. Il était possible d\'accéder aux données des autres joueurs.'),
(10, 'https://www.zataz.com/total-energie-direct-obligee-de-stopper-un-jeu-en-ligne-suite-a-une-fuite-de-donnees/', 'ztz7', '2021-01-15 10:06:33', 'L\'entreprise Total Energie Direct avait lancé un jeu en ligne. Le concours a dû être stoppé. Il était possible d\'accéder aux données des autres joueurs.'),
(11, 'https://www.zataz.com/total-energie-direct-obligee-de-stopper-un-jeu-en-ligne-suite-a-une-fuite-de-donnees/', 'ztz7', '2021-01-15 10:07:13', 'L\'entreprise Total Energie Direct avait lancé un jeu en ligne. Le concours a dû être stoppé. Il était possible d\'accéder aux données des autres joueurs.'),
(12, 'https://www.zataz.com/total-energie-direct-obligee-de-stopper-un-jeu-en-ligne-suite-a-une-fuite-de-donnees/', 'ztz7', '2021-01-15 10:08:04', 'L\'entreprise Total Energie Direct avait lancé un jeu en ligne. Le concours a dû être stoppé. Il était possible d\'accéder aux données des autres joueurs.'),
(13, 'https://www.zataz.com/total-energie-direct-obligee-de-stopper-un-jeu-en-ligne-suite-a-une-fuite-de-donnees/', 'ztz7', '2021-01-15 10:13:03', 'L\'entreprise Total Energie Direct avait lancé un jeu en ligne. Le concours a dû être stoppé. Il était possible d\'accéder aux données des autres joueurs.'),
(14, 'https://www.zataz.com/total-energie-direct-obligee-de-stopper-un-jeu-en-ligne-suite-a-une-fuite-de-donnees/', 'ztz7', '2021-01-15 10:14:01', 'L\'entreprise Total Energie Direct avait lancé un jeu en ligne. Le concours a dû être stoppé. Il était possible d\'accéder aux données des autres joueurs.'),
(15, 'https://www.zataz.com/total-energie-direct-obligee-de-stopper-un-jeu-en-ligne-suite-a-une-fuite-de-donnees/', 'ztz7', '2021-01-15 10:14:16', 'L\'entreprise Total Energie Direct avait lancé un jeu en ligne. Le concours a dû être stoppé. Il était possible d\'accéder aux données des autres joueurs.'),
(16, 'https://www.zataz.com/total-energie-direct-obligee-de-stopper-un-jeu-en-ligne-suite-a-une-fuite-de-donnees/', 'ztz7', '2021-01-15 10:15:18', 'L\'entreprise Total Energie Direct avait lancé un jeu en ligne. Le concours a dû être stoppé. Il était possible d\'accéder aux données des autres joueurs.'),
(17, 'https://www.zataz.com/total-energie-direct-obligee-de-stopper-un-jeu-en-ligne-suite-a-une-fuite-de-donnees/', 'ztz7', '2021-01-15 10:17:31', 'L\'entreprise Total Energie Direct avait lancé un jeu en ligne. Le concours a dû être stoppé. Il était possible d\'accéder aux données des autres joueurs.');

-- --------------------------------------------------------

--
-- Structure de la table `url_mots_cles`
--

CREATE TABLE `url_mots_cles` (
  `url_mots_cles_id` int NOT NULL,
  `id_mot_cle` int NOT NULL,
  `id_url` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Déchargement des données de la table `url_mots_cles`
--

INSERT INTO `url_mots_cles` (`url_mots_cles_id`, `id_mot_cle`, `id_url`) VALUES
(5, 1, 1),
(6, 3, 1),
(7, 1, 2),
(8, 2, 2),
(9, 2, 3),
(11, 1, 5),
(12, 4, 5),
(13, 21, 9),
(14, 23, 10),
(15, 26, 11),
(16, 28, 12),
(17, 30, 13),
(18, 32, 14),
(19, 34, 15),
(20, 36, 16),
(21, 38, 17);

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `mots_cles`
--
ALTER TABLE `mots_cles`
  ADD PRIMARY KEY (`mot_cle_id`);

--
-- Index pour la table `url`
--
ALTER TABLE `url`
  ADD PRIMARY KEY (`url_id`);

--
-- Index pour la table `url_mots_cles`
--
ALTER TABLE `url_mots_cles`
  ADD PRIMARY KEY (`url_mots_cles_id`),
  ADD KEY `id_url` (`id_url`),
  ADD KEY `id_mot_cle` (`id_mot_cle`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `mots_cles`
--
ALTER TABLE `mots_cles`
  MODIFY `mot_cle_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;

--
-- AUTO_INCREMENT pour la table `url`
--
ALTER TABLE `url`
  MODIFY `url_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT pour la table `url_mots_cles`
--
ALTER TABLE `url_mots_cles`
  MODIFY `url_mots_cles_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `url_mots_cles`
--
ALTER TABLE `url_mots_cles`
  ADD CONSTRAINT `url_mots_cles_ibfk_1` FOREIGN KEY (`id_mot_cle`) REFERENCES `mots_cles` (`mot_cle_id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  ADD CONSTRAINT `url_mots_cles_ibfk_2` FOREIGN KEY (`id_url`) REFERENCES `url` (`url_id`) ON DELETE RESTRICT ON UPDATE RESTRICT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
