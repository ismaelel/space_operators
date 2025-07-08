-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Hôte : localhost:3306
-- Généré le : mar. 08 juil. 2025 à 16:14
-- Version du serveur : 5.7.39
-- Version de PHP : 8.1.31

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `space_operators`
--

-- --------------------------------------------------------

--
-- Structure de la table `game`
--

CREATE TABLE `game` (
  `id_game` varchar(255) NOT NULL,
  `choice_theme` varchar(255) DEFAULT NULL,
  `integrity` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `state` varchar(255) DEFAULT NULL,
  `id_history` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `game`
--

INSERT INTO `game` (`id_game`, `choice_theme`, `integrity`, `name`, `state`, `id_history`) VALUES
('4657', 'Space Adventure', 100, 'space test', 'wait', NULL);

-- --------------------------------------------------------

--
-- Structure de la table `history`
--

CREATE TABLE `history` (
  `id_history` varchar(255) NOT NULL,
  `result_game` varchar(255) DEFAULT NULL,
  `turns_played` varchar(255) DEFAULT NULL,
  `player_id` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `history`
--

INSERT INTO `history` (`id_history`, `result_game`, `turns_played`, `player_id`) VALUES
('4657', 'Integrity at end: 100', '10', NULL);

-- --------------------------------------------------------

--
-- Structure de la table `player`
--

CREATE TABLE `player` (
  `playerId` varchar(255) NOT NULL,
  `email` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `playerName` varchar(255) DEFAULT NULL,
  `role` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `player`
--

INSERT INTO `player` (`playerId`, `email`, `password`, `playerName`, `role`) VALUES
('0d4deb73-6460-4f1b-8135-e6f1218635d6', 'dev2@dev.fr', '$2a$10$CZkw6tMBPxEHFsezgGF4outCvFzZzJ3o.BhG9JkxMr2ABuVKnfEfa', 'dev2', 'ROLE_USER'),
('0f1b27e9-4f32-4f22-95b1-5a0faa01f692', 'aa@aa.fr', '$2a$10$CZkw6tMBPxEHFsezgGF4outCvFzZzJ3o.BhG9JkxMr2ABuVKnfEfa', 'AAAbbb', 'ROLE_ADMIN'),
('4a371da2-e8e1-419f-b99b-91b108ecd6fa', 'cc@cc.fr', '$2a$10$k5aAEKVa8.XaUztTlBe7xuOdqS7LbWyDZwGSsO3LZJetxL1WuDUJm', 'cc', 'ROLE_USER'),
('8c45e224-b0ae-424c-8d83-80fa6d73d91e', 'dev@dev.fr', '$2a$10$CZkw6tMBPxEHFsezgGF4outCvFzZzJ3o.BhG9JkxMr2ABuVKnfEfa', 'devbg', 'ROLE_ADMIN'),
('cd5c2cbf-2270-478a-8af1-1e3c2978f2c1', 'dev3@dev.fr', '$2a$10$ldQArxyRZghXZbbzOAO/Xuht5MuNGnRdjiPNXuLd0Zo.2UgshkRuO', 'dev3', 'ROLE_USER'),
('d54423d5-7e64-40a1-b4d4-24a8460109b9', 'ismaelelkasbaoui@gmail.com', '$2a$10$i69EKExWERu/Lmp2VG5ZMO2MFMcx4BVQ.l88YCTpCDzUhUXyaLXo2', 'Ismaël', NULL),
('ede6c7a7-0f8b-4837-a19c-7862f09897ca', 'ismaleboss@gmail.com', '$2a$10$f0WMsTNi.bMfAlB3dP75Ruq1wDCTns3I8WIGVnnvjK1loep.jroP.', 'lavicon', 'ROLE_USER');

-- --------------------------------------------------------

--
-- Structure de la table `questions`
--

CREATE TABLE `questions` (
  `id` int(11) NOT NULL,
  `correct_option_index` varchar(255) NOT NULL,
  `options` text NOT NULL,
  `question` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `questions`
--

INSERT INTO `questions` (`id`, `correct_option_index`, `options`, `question`) VALUES
(2, '1', '[\"Rouge\", \"Bleu\", \"Vert\", \"Jaune\"]', 'Appuie sur le bouton rouge'),
(3, '2', '[\"Jaune\", \"Bleu\", \"Rouge\", \"Vert\"]', 'Appuie sur le bouton bleu'),
(4, '1', '[\"Vert\", \"Rouge\", \"Jaune\", \"Bleu\"]', 'Appuie sur le bouton vert'),
(5, '2', '[\"Bleu\", \"Jaune\", \"Rouge\", \"Vert\"]', 'Appuie sur le bouton jaune'),
(6, '3', '[\"Vert\", \"Jaune\", \"Rouge\", \"Bleu\"]', 'Appuie sur le bouton rouge'),
(7, '2', '[\"Rouge\", \"Bleu\", \"Vert\", \"Jaune\"]', 'Appuie sur le bouton bleu'),
(8, '3', '[\"Jaune\", \"Bleu\", \"Vert\", \"Rouge\"]', 'Appuie sur le bouton vert'),
(9, '3', '[\"Rouge\", \"Vert\", \"Jaune\", \"Bleu\"]', 'Appuie sur le bouton jaune'),
(10, '2', '[\"Bleu\", \"Rouge\", \"Jaune\", \"Vert\"]', 'Appuie sur le bouton rouge'),
(11, '3,4', '[\"Jaune\", \"Rouge\", \"Bleu\", \"Vert\"]', 'Appuie sur le bouton bleu puis le vert'),
(13, '2', '[\"Rouge\",\"Bleu\"]', 'appuie sur le bouton rouge et bleu'),
(15, '1', '[\"Bleu\",\"Rouge\",\"Vert\",\"Jaune\"]', 'appuyez sur le bouton bleu'),
(16, '1,2', '[\"Bleu\",\"Rouge\",\"Noir\",\"Blanc\"]', 'appuie sur le bouton bleu et rouge'),
(21, '1', '[\"Romain\",\"Jean\",\"Claude\",\"Pierre\"]', 'Comment le prof de Java s\'appelle ? (Romain)'),
(22, '1', '[\"Romain\",\"Java\",\"Python\",\"Eric\"]', 'Comment s\'appelle le prof de Java? (Romain)');

-- --------------------------------------------------------

--
-- Structure de la table `session`
--

CREATE TABLE `session` (
  `id` int(11) NOT NULL,
  `id_player` varchar(255) DEFAULT NULL,
  `isReady` bit(1) NOT NULL,
  `name_player` varchar(255) DEFAULT NULL,
  `id_game` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `session`
--

INSERT INTO `session` (`id`, `id_player`, `isReady`, `name_player`, `id_game`) VALUES
(1, '8c45e224-b0ae-424c-8d83-80fa6d73d91e', b'1', 'devbg', '4657'),
(2, '0d4deb73-6460-4f1b-8135-e6f1218635d6', b'1', 'dev2', '4657');

-- --------------------------------------------------------

--
-- Structure de la table `task`
--

CREATE TABLE `task` (
  `id_task` int(11) NOT NULL,
  `response` varchar(255) DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `turn`
--

CREATE TABLE `turn` (
  `id_turn` varchar(255) NOT NULL,
  `duration` varchar(255) DEFAULT NULL,
  `number` varchar(255) DEFAULT NULL,
  `role` varchar(255) DEFAULT NULL,
  `id_game` varchar(255) NOT NULL,
  `id_task` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `game`
--
ALTER TABLE `game`
  ADD PRIMARY KEY (`id_game`),
  ADD KEY `FK87iocm5bxvvua6x8id5bvgd6f` (`id_history`);

--
-- Index pour la table `history`
--
ALTER TABLE `history`
  ADD PRIMARY KEY (`id_history`);

--
-- Index pour la table `player`
--
ALTER TABLE `player`
  ADD PRIMARY KEY (`playerId`);

--
-- Index pour la table `questions`
--
ALTER TABLE `questions`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `session`
--
ALTER TABLE `session`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FKpj0bkdrsljjeih9f1txhcn5a4` (`id_game`);

--
-- Index pour la table `task`
--
ALTER TABLE `task`
  ADD PRIMARY KEY (`id_task`);

--
-- Index pour la table `turn`
--
ALTER TABLE `turn`
  ADD PRIMARY KEY (`id_turn`),
  ADD KEY `FKl4mjr32aniag24rvvv2buss93` (`id_game`),
  ADD KEY `FK3v4j7ke2x7lqs9boaxya5enpw` (`id_task`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `questions`
--
ALTER TABLE `questions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT pour la table `session`
--
ALTER TABLE `session`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `game`
--
ALTER TABLE `game`
  ADD CONSTRAINT `FK87iocm5bxvvua6x8id5bvgd6f` FOREIGN KEY (`id_history`) REFERENCES `history` (`id_history`);

--
-- Contraintes pour la table `session`
--
ALTER TABLE `session`
  ADD CONSTRAINT `FKpj0bkdrsljjeih9f1txhcn5a4` FOREIGN KEY (`id_game`) REFERENCES `game` (`id_game`);

--
-- Contraintes pour la table `turn`
--
ALTER TABLE `turn`
  ADD CONSTRAINT `FK3v4j7ke2x7lqs9boaxya5enpw` FOREIGN KEY (`id_task`) REFERENCES `task` (`id_task`),
  ADD CONSTRAINT `FKl4mjr32aniag24rvvv2buss93` FOREIGN KEY (`id_game`) REFERENCES `game` (`id_game`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
