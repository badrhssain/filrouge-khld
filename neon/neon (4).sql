-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le : ven. 10 juin 2022 à 18:02
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
-- Base de données : `neon`
--

-- --------------------------------------------------------

--
-- Structure de la table `catégorie`
--

CREATE TABLE `catégorie` (
  `Id_Catégorie` int(5) NOT NULL,
  `NomCatégorie` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `catégorie`
--

INSERT INTO `catégorie` (`Id_Catégorie`, `NomCatégorie`) VALUES
(1, 'Gaming'),
(2, 'Evénement'),
(3, 'Projet'),
(4, 'Citation'),
(5, 'Autre');

-- --------------------------------------------------------

--
-- Structure de la table `client`
--

CREATE TABLE `client` (
  `Id_client` int(5) NOT NULL,
  `Nom` varchar(50) DEFAULT NULL,
  `Prenom` varchar(50) DEFAULT NULL,
  `Emai` varchar(50) DEFAULT NULL,
  `Telephone` varchar(50) DEFAULT NULL,
  `Adresse` varchar(500) DEFAULT NULL,
  `Motdepasse` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Structure de la table `commande`
--

CREATE TABLE `commande` (
  `Id_Commande` int(5) NOT NULL,
  `Datedecommande` date DEFAULT NULL,
  `AdressLivraision` varchar(500) DEFAULT NULL,
  `Id_client` int(5) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Structure de la table `couleur`
--

CREATE TABLE `couleur` (
  `Id_Couleur` int(20) NOT NULL,
  `NomCouleur` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `couleur`
--

INSERT INTO `couleur` (`Id_Couleur`, `NomCouleur`) VALUES
(1, 'blanc + rose'),
(2, 'rose + blue'),
(3, 'rouge +blanc'),
(4, 'vert + blue'),
(5, 'jaune + blanc'),
(6, 'blanc'),
(7, 'blue'),
(8, 'rose'),
(9, 'jaune'),
(10, 'violet');

-- --------------------------------------------------------

--
-- Structure de la table `detail_commande`
--

CREATE TABLE `detail_commande` (
  `id_Commande` int(5) NOT NULL,
  `id_Produit` int(5) NOT NULL,
  `qte_Commande` int(5) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Structure de la table `produit`
--

CREATE TABLE `produit` (
  `Id_produit` int(5) NOT NULL,
  `Libelle` varchar(100) DEFAULT NULL,
  `Descrption` varchar(500) DEFAULT NULL,
  `Quantite` int(50) DEFAULT NULL,
  `Prix` decimal(50,2) DEFAULT NULL,
  `Id_Catégorie` int(5) DEFAULT NULL,
  `Id_Couleur` int(5) DEFAULT NULL,
  `Id_Size` int(5) DEFAULT NULL,
  `Url_Image` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `produit`
--

INSERT INTO `produit` (`Id_produit`, `Libelle`, `Descrption`, `Quantite`, `Prix`, `Id_Catégorie`, `Id_Couleur`, `Id_Size`, `Url_Image`) VALUES
(1, 'Playstation Game Room Kid Neon LED Sign', 'Cette enseigne au néon Playstation Game Room Kid LED serait idéale pour les restaurants, cafés, bars, man cave, salle de jeux et boutiques. Il peut également être idéal comme cadeau d\'ouverture/de Noël, d\'anniversaire pour votre famille ou vos amis. Avec de nombreuses couleurs au choix telles que le blanc froid, le jaune, le rouge ou le bleu, cela peut convenir à n\'importe quel style qu\'un lieu peut avoir.', 20, '999.00', 1, NULL, NULL, 'playstation'),
(2, 'Mercury Racing Neon LED Sign', 'Cette enseigne au néon LED Mercury Racing serait idéale pour les restaurants, les cafés, les bars, les cavernes d\'hommes, les salles de jeux et les boutiques. Il peut également être idéal comme cadeau d\'ouverture/de Noël, d\'anniversaire pour votre famille ou vos amis. Avec de nombreuses couleurs au choix telles que le blanc froid, le jaune, le rouge ou le bleu, cela peut convenir à n\'importe quel style qu\'un lieu peut avoir.', 10, '970.00', 1, NULL, NULL, 'mercury'),
(3, 'Apex Legends Neon LED Sign', 'Cette enseigne au néon LED Apex Legends serait idéale pour les restaurants, les cafés, les bars à domicile, les cavernes d\'hommes, les salles de jeux et les boutiques. Il peut également être idéal comme cadeau d\'ouverture/de Noël, d\'anniversaire pour votre famille ou vos amis. Avec de nombreuses couleurs au choix telles que le blanc froid, le jaune, le rouge ou le bleu, cela peut convenir à n\'importe quel style qu\'un lieu peut avoir.', 4, '800.00', 1, NULL, NULL, 'apex'),
(4, 'Custom Xbox Nintendo Playstation Game Room Neon LE', 'Ce panneau de salle de jeu personnalisé Sega XBOX Nintendo personnalisé est un magnifique cadeau personnalisé pour les amateurs de salle de jeu personnalisée Sega XBOX Nintendo. L\'enseigne de pub personnalisée serait également un cadeau attentionné pour un garçon d\'honneur ou un meilleur homme, un anniversaire, la fête des pères ou un cadeau de Noël dont il pourrait profiter pendant des années.', 15, '1100.00', 1, NULL, NULL, 'game'),
(5, 'Batman vs Superman Hero Neon LED Sign', 'Cette enseigne au néon LED Batman vs Superman Hero serait idéale pour les restaurants, les cafés, les grottes, les salles de jeux et les boutiques. Il peut également être idéal comme cadeau d\'ouverture/de Noël, d\'anniversaire pour votre famille ou vos amis.Cela peut convenir à n\'importe quel style qu\'un lieu peut avoir.', 25, '960.00', 1, NULL, NULL, 'superman'),
(6, 'Ghostbusters No Ghosts Neon LED Sign', 'Cette enseigne au néon LED Ghostbusters No Ghosts serait idéale pour les restaurants, les cafés, la grotte de l’homme, la salle de jeux et les boutiques. Il peut également être idéal comme une grande ouverture / Noël, cadeau d’anniversaire pour votre famille ou vos amis.  Cela pourrait s’adapter à n’importe quel style qu’un endroit peut avoir.', 30, '1000.00', 1, NULL, NULL, 'Ghostbusters'),
(7, 'Batman Hero Neon LED Sign', 'Cette enseigne au néon LED Batman Hero serait idéale pour les restaurants, les cafés, la grotte de l’homme, la salle de jeux et les boutiques. Il peut également être idéal comme une grande ouverture / Noël, cadeau d’anniversaire pour votre famille ou vos amis. Cela pourrait s’adapter à n’importe quel style qu’un endroit peut avoir.', 4, '700.00', 1, NULL, NULL, 'batman'),
(8, 'Rocket League Logo Neon LED Sign\r\n', 'Cette enseigne au néon LED Rocket League Logo serait idéale pour les restaurants, les cafés, la grotte de l’homme, la salle de jeux et les boutiques. Il peut également être idéal comme une grande ouverture / Noël, cadeau d’anniversaire pour votre famille ou vos amis.Cela pourrait s’adapter à n’importe quel style qu’un endroit peut avoir.', 10, '1100.00', 1, NULL, NULL, 'rocket'),
(9, 'Mario Mushroom Neon LED Sign', 'Cette enseigne au néon LED Mario Mushroom serait idéale pour les restaurants, les cafés, la grotte de l’homme, la salle de jeux et les boutiques. Il peut également être idéal comme une grande ouverture / Noël, cadeau d’anniversaire pour votre famille ou vos amis. Cela pourrait s’adapter à n’importe quel style qu’un endroit peut avoir.', 11, '800.00', 1, NULL, NULL, 'mario'),
(10, 'Your\'re like really pretty neon sign', 'Ajoutez du plaisir à votre espace en ajoutant cette excellente citation du film Mean Girls. Non seulement c’est une référence cinématographique ludique, mais c’est aussi un grand encouragement! Pourquoi ne pas l’accrocher à côté de votre miroir ou dans votre dressing ?\r\nTous nos panneaux sont fabriqués à partir de LED Neon flex, un matériau courbé utilisé pour fabriquer des enseignes au néon modernes.', 15, '600.00', 4, NULL, NULL, 'pretty'),
(11, 'Hello There', 'Un panneau amical « bonjour là-bas » qui conviendrait à n’importe où dans la maison ou le lieu de travail. Pourquoi ne pas accueillir les gens avec ce néon LED lumineux?\r\nTous nos enseignes au néon sont fabriquées à partir de LED Neon flex, un matériau courbé utilisé pour fabriquer des enseignes au néon modernes.', 24, '600.00', 4, NULL, NULL, 'hellothere'),
(12, 'Don\'t grow up, It\'s a trip Led Sign', 'Cette référence familière à Peter Pan s’étend sur deux lignes, nous incitant à devenir un peu plus insouciants et à nous amuser. Une grande lumière pour une chambre d’enfant, une salle de jeux ou même votre bureau à domicile!\r\nTous nos enseignes au néon sont fabriquées à partir de LED Neon flex, un matériau courbé utilisé pour fabriquer des enseignes au néon modernes.', 40, '750.00', 4, NULL, NULL, 'grow'),
(13, 'You can\'t sit with us', 'Une référence classique du film « Mean Girls » - nous l’avons vu accroché dans les cuisines et les salles à manger, et cela ajoute une touche de plaisir pour les repas!\r\nTous nos enseignes au néon sont fabriquées à partir de LED Neon flex, un matériau courbé utilisé pour fabriquer des enseignes au néon modernes.', 30, '500.00', 4, NULL, NULL, 'sit'),
(14, 'Trust The Process Led Neon Sign', 'En d\'autres termes, les choses peuvent sembler mauvaises maintenant, mais il y a un plan en place pour l\'améliorer ! Comme l\'a dit George Michael, il faut juste \"avoir la foi\".\r\nToutes nos enseignes au néon sont fabriquées à partir de LED Neon flex, un matériau flexible utilisé pour fabriquer des enseignes au néon modernes.', 10, '750.00', 4, NULL, NULL, 'trust'),
(15, 'Good Vibes Only Led Sign', 'Nous aimons ce signe de trois lignes dans une police de style manuscrite. « Good Vibes Only », c\'est ce que nous voulons tous chez nous !\r\nToutes nos enseignes au néon sont fabriquées à partir de LED Neon flex, un matériau flexible utilisé pour fabriquer des enseignes au néon modernes.', 45, '600.00', 4, NULL, NULL, 'vibes'),
(16, 'The World Is Yours', 'Cette enseigne au néon LED The World is Yours serait idéale pour les restaurants, cafés, salle de jeux et boutiques. Il peut également être idéal comme cadeau d\'ouverture, d\'anniversaire pour votre famille ou vos amis.\r\n', 20, '1300.00', 4, NULL, NULL, 'word'),
(17, 'The Must Be The Place Neon Sign', 'Cette enseigne au néon LED The The Must Be The Place serait idéale pour les restaurants, cafés, salle de jeux et boutiques. Il peut également être idéal comme cadeau d\'ouverture, d\'anniversaire pour votre famille ou vos amis.\r\n', 23, '8.00', 4, NULL, NULL, 'place'),
(18, 'The Future Is Yours To Create', 'Cette enseigne au néon LED The Future Is Yours To Create serait idéale pour les restaurants, cafés, salle de jeux et boutiques. Il peut également être idéal comme cadeau d\'ouverture, d\'anniversaire pour votre famille ou vos amis. ', 9, '1200.00', 4, NULL, NULL, 'future');

-- --------------------------------------------------------

--
-- Structure de la table `produit_per`
--

CREATE TABLE `produit_per` (
  `Id_ProduitPer` int(5) NOT NULL,
  `Couleur` varchar(50) DEFAULT NULL,
  `Texte` varchar(50) DEFAULT NULL,
  `Police` varchar(50) DEFAULT NULL,
  `Prix` decimal(50,2) DEFAULT NULL,
  `Size` varchar(50) DEFAULT NULL,
  `Id_Commande` int(5) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Structure de la table `size`
--

CREATE TABLE `size` (
  `Id_Size` int(20) NOT NULL,
  `Size` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `size`
--

INSERT INTO `size` (`Id_Size`, `Size`) VALUES
(1, 'petit'),
(2, 'moyen'),
(3, 'grand');

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `catégorie`
--
ALTER TABLE `catégorie`
  ADD PRIMARY KEY (`Id_Catégorie`);

--
-- Index pour la table `client`
--
ALTER TABLE `client`
  ADD PRIMARY KEY (`Id_client`);

--
-- Index pour la table `commande`
--
ALTER TABLE `commande`
  ADD PRIMARY KEY (`Id_Commande`),
  ADD KEY `Id_client` (`Id_client`);

--
-- Index pour la table `couleur`
--
ALTER TABLE `couleur`
  ADD PRIMARY KEY (`Id_Couleur`);

--
-- Index pour la table `detail_commande`
--
ALTER TABLE `detail_commande`
  ADD PRIMARY KEY (`id_Commande`,`id_Produit`),
  ADD KEY `id_Produit` (`id_Produit`);

--
-- Index pour la table `produit`
--
ALTER TABLE `produit`
  ADD PRIMARY KEY (`Id_produit`),
  ADD KEY `Id_Catégorie` (`Id_Catégorie`),
  ADD KEY `Id_Couleur` (`Id_Couleur`),
  ADD KEY `Id_Size` (`Id_Size`);

--
-- Index pour la table `produit_per`
--
ALTER TABLE `produit_per`
  ADD PRIMARY KEY (`Id_ProduitPer`),
  ADD KEY `Id_Commande` (`Id_Commande`);

--
-- Index pour la table `size`
--
ALTER TABLE `size`
  ADD PRIMARY KEY (`Id_Size`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `catégorie`
--
ALTER TABLE `catégorie`
  MODIFY `Id_Catégorie` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT pour la table `client`
--
ALTER TABLE `client`
  MODIFY `Id_client` int(5) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `commande`
--
ALTER TABLE `commande`
  MODIFY `Id_Commande` int(5) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `couleur`
--
ALTER TABLE `couleur`
  MODIFY `Id_Couleur` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT pour la table `detail_commande`
--
ALTER TABLE `detail_commande`
  MODIFY `id_Commande` int(5) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `produit`
--
ALTER TABLE `produit`
  MODIFY `Id_produit` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT pour la table `produit_per`
--
ALTER TABLE `produit_per`
  MODIFY `Id_ProduitPer` int(5) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `size`
--
ALTER TABLE `size`
  MODIFY `Id_Size` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `commande`
--
ALTER TABLE `commande`
  ADD CONSTRAINT `commande_ibfk_1` FOREIGN KEY (`Id_client`) REFERENCES `client` (`Id_client`);

--
-- Contraintes pour la table `detail_commande`
--
ALTER TABLE `detail_commande`
  ADD CONSTRAINT `detail_commande_ibfk_1` FOREIGN KEY (`id_Produit`) REFERENCES `produit` (`Id_produit`);

--
-- Contraintes pour la table `produit`
--
ALTER TABLE `produit`
  ADD CONSTRAINT `produit_ibfk_1` FOREIGN KEY (`Id_Catégorie`) REFERENCES `catégorie` (`Id_Catégorie`),
  ADD CONSTRAINT `produit_ibfk_2` FOREIGN KEY (`Id_Couleur`) REFERENCES `couleur` (`Id_Couleur`),
  ADD CONSTRAINT `produit_ibfk_3` FOREIGN KEY (`Id_Size`) REFERENCES `size` (`Id_Size`);

--
-- Contraintes pour la table `produit_per`
--
ALTER TABLE `produit_per`
  ADD CONSTRAINT `produit_per_ibfk_1` FOREIGN KEY (`Id_Commande`) REFERENCES `commande` (`Id_Commande`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
