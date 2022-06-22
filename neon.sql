-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le : mer. 22 juin 2022 à 11:10
-- Version du serveur : 10.4.22-MariaDB
-- Version de PHP : 7.4.27

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
  `NomCatégorie` varchar(50) DEFAULT NULL,
  `img_catégorie` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `catégorie`
--

INSERT INTO `catégorie` (`Id_Catégorie`, `NomCatégorie`, `img_catégorie`) VALUES
(1, 'Gaming', 'gaming.png'),
(2, 'Événement', 'evenement.png'),
(3, 'Projet', 'projet2.png'),
(4, 'Citation', 'citation.jpg');

-- --------------------------------------------------------

--
-- Structure de la table `client`
--

CREATE TABLE `client` (
  `Id_client` int(5) NOT NULL,
  `Nom` varchar(50) DEFAULT NULL,
  `Prenom` varchar(50) DEFAULT NULL,
  `Email` varchar(50) DEFAULT NULL,
  `Telephone` varchar(50) DEFAULT NULL,
  `Adresse` varchar(500) DEFAULT NULL,
  `Motdepasse` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `client`
--

INSERT INTO `client` (`Id_client`, `Nom`, `Prenom`, `Email`, `Telephone`, `Adresse`, `Motdepasse`) VALUES
(1, 'bbhwhbs', 'wjwjnw', 'khaoulald@gk.com', '054534', 'effefefef', 'f16ee2c000f1de2bafaf41b93a68be16ee1562b9'),
(2, 'kuukuk', 'hyhy', 'yjjyy@gh.hh', '2', 'effefefef', '8cb2237d0679ca88db6464eac60da96345513964'),
(3, 'bbhwhbs', 'ww', 'Khaoula@ws.wd', '4', 'effefefef', 'ca175ba1090e66673e331f45fb8068ff81ab28ec'),
(4, 'Hssain', 'badr', 'badrhsn3@gmail.com', '0674608993', 'tanger', '5137f07ca4d273841441206434b505f1f701007a'),
(5, 'lessan', 'khaoula', 'Khaoula@gmail.com', '123-456-7890', 'azayla', 'ca175ba1090e66673e331f45fb8068ff81ab28ec'),
(6, 'badr', 'az', 'badr@gaj.com', '0674608993', 'tanger', 'e25b5e69af5ea1d4f1cb59d145c85f69e15554cd'),
(7, 'khaoula', 'RDTFGYUH', 'GJ@FG.cg', '0674608993', 'tanger', 'ca175ba1090e66673e331f45fb8068ff81ab28ec'),
(8, 'badr', 'hsjajhs', 'gasjh@gj.lz', '0674608993', 'aaa', '8cb2237d0679ca88db6464eac60da96345513964'),
(9, 'asaj', 'jzjksa', 'jajk@gj.hk', '0674608993', 'street 1', '8cb2237d0679ca88db6464eac60da96345513964'),
(10, 'khaoula', 'lessan', 'badrhssain@hkask.hj', '0674608993', 'tanger', 'ca175ba1090e66673e331f45fb8068ff81ab28ec'),
(11, 'badr', 'hssain', 'badr@gh.ghj', '0674608993', 'tanger', '8cb2237d0679ca88db6464eac60da96345513964'),
(12, 'ikram', 'arts', 'ikram@gmail.com', '0674608993', 'tanger', 'ca175ba1090e66673e331f45fb8068ff81ab28ec'),
(13, 'mohamed', 'aribi', 'moha@gh.hj', '0674608993', 'street 1', '4068d1eebc4b1974727cb4a37102446b5918a09e'),
(14, 'mohamed', 'mohamed', 'mohamed@gmail', '0611111111', 'tanger', '601f1889667efaebb33b8c12572835da3f027f78');

-- --------------------------------------------------------

--
-- Structure de la table `commande`
--

CREATE TABLE `commande` (
  `Id_commande` int(5) NOT NULL,
  `Datedecommande` date DEFAULT NULL,
  `AdressLivraision` varchar(500) DEFAULT NULL,
  `Id_client` int(5) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `commande`
--

INSERT INTO `commande` (`Id_commande`, `Datedecommande`, `AdressLivraision`, `Id_client`) VALUES
(1, '0000-00-00', 'zemmori 3 yousra 1', NULL),
(2, '0000-00-00', 'zemmori 3 yousra 1', NULL),
(3, '0000-00-00', 'zemmori 3 yousra 1', NULL),
(4, '0000-00-00', 'zemmori 3 yousra 1', NULL),
(5, '0000-00-00', 'zemmori 3 yousra 1', NULL),
(6, '0000-00-00', '123fghdh', NULL),
(7, '2022-06-09', 'ggggjhgjgjg', NULL),
(8, '0000-00-00', 'zemmori 3 yousra 1', 12),
(9, '0000-00-00', 'zemmori 3 yousra 1', 12),
(10, '0000-00-00', 'zemmori 3 yousra 1', 12),
(11, '0000-00-00', 'zemmori 3 yousra 1', 12),
(12, '0000-00-00', 'zemmori 3 yousra 1', 12);

-- --------------------------------------------------------

--
-- Structure de la table `detail_commande`
--

CREATE TABLE `detail_commande` (
  `Id_commande` int(5) NOT NULL,
  `Id_produit` int(5) NOT NULL,
  `qte_Commande` int(5) DEFAULT NULL,
  `Couleur` varchar(500) DEFAULT NULL,
  `Size` varchar(500) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Structure de la table `produit`
--

CREATE TABLE `produit` (
  `Id_produit` int(5) NOT NULL,
  `Libelle` varchar(100) DEFAULT NULL,
  `Description` varchar(500) DEFAULT NULL,
  `Quantite` int(50) DEFAULT NULL,
  `Prix` decimal(50,2) DEFAULT NULL,
  `Id_Catégorie` int(5) DEFAULT NULL,
  `Url_Image` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `produit`
--

INSERT INTO `produit` (`Id_produit`, `Libelle`, `Description`, `Quantite`, `Prix`, `Id_Catégorie`, `Url_Image`) VALUES
(1, 'Mercury Racing Neon LED Sign', 'Cette enseigne au néon LED Mercury Racing serait idéale pour les restaurants, les cafés, les salles de jeux et les boutiques. Il peut également être idéal comme une grande ouverture, un cadeau d anniversaire pour votre famille ou vos amis. \r\nAvec de nombreuses couleurs au choix telles que le blanc froid, le jaune, le rouge ou le bleu, cela peut convenir à n importe quel style qu un lieu peut avoir.\r\n', 10, '970.00', 1, 'mercury.png'),
(2, 'The Game Romm Neon Sign', 'Cette enseigne au néon LED Xbox Nintendo Playstation serait idéale pour les restaurants, les cafés, les salles de jeux et les boutiques. Il peut également être idéal comme une grande ouverture, un cadeau d anniversaire pour votre famille ou vos amis. \r\nAvec de nombreuses couleurs au choix telles que le blanc froid, le jaune, le rouge ou le bleu, cela peut convenir à n importe quel style qu un lieu peut avoir.\r\n', 15, '1100.00', 1, 'game.png'),
(3, 'Apex Legends Neon LED Sign', 'Cette enseigne au néon LED Apex Legends serait idéale pour les restaurants, les cafés, les bars à domicile, les cavernes d\'hommes, les salles de jeux et les boutiques. Il peut également être idéal comme cadeau d\'ouverture de Noël, d\'anniversaire pour votre famille ou vos amis. Avec de nombreuses couleurs au choix telles que le blanc froid, le jaune, le rouge ou le bleu, cela peut convenir à n\'importe quel style qu \'un lieu peut avoir.', 4, '800.00', 1, 'apex.png'),
(4, 'Ghostbusters No Ghosts', 'Cette enseigne au néon LED Ghostbusters No Ghosts serait idéale pour les restaurants, les cafés, les salles de jeux et les boutiques. Il peut également être idéal comme une grande ouverture, un cadeau d anniversaire pour votre famille ou vos amis. \r\nAvec de nombreuses couleurs au choix telles que le blanc froid, le jaune, le rouge ou le bleu, cela peut convenir à n importe quel style qu un lieu peut avoir.\r\n\r\n', 11, '1200.00', 1, 'Ghostbusters.png'),
(5, 'Batman Hero Neon LED Sign', 'Cette enseigne au néon LED Batman Hero serait idéale pour les restaurants, les cafés, les salles de jeux et les boutiques. Il peut également être idéal comme une grande ouverture, un cadeau d anniversaire pour votre famille ou vos amis. \r\nAvec de nombreuses couleurs au choix telles que le blanc froid, le jaune, le rouge ou le bleu, cela peut convenir à n importe quel style qu un lieu peut avoir.\r\n\r\n', 45, '950.00', 1, 'superman.png'),
(6, 'Playstation Game Room ', 'Cette enseigne au néon LED Playstation Game Room  serait idéale pour les restaurants, les cafés, les salles de jeux et les boutiques. Il peut également être idéal comme une grande ouverture, un cadeau d anniversaire pour votre famille ou vos amis. \r\nAvec de nombreuses couleurs au choix telles que le blanc froid, le jaune, le rouge ou le bleu, cela peut convenir à n importe quel style qu un lieu peut avoir.\r\n\r\n', 30, '700.00', 1, 'playstation.png'),
(7, 'Batman Hero Neon LED Sign', 'Cette enseigne au néon LED Batman Hero Neon LED Sign serait idéale pour les restaurants, les cafés, les salles de jeux et les boutiques. Il peut également être idéal comme une grande ouverture, un cadeau d anniversaire pour votre famille ou vos amis. \r\nAvec de nombreuses couleurs au choix telles que le blanc froid, le jaune, le rouge ou le bleu, cela peut convenir à n importe quel style qu un lieu peut avoir.\r\n\r\n', 12, '1300.00', 1, 'batman.png'),
(8, 'Rocket League Neon LED Sign', 'Cette enseigne au néon LED Rocket League serait idéale pour les restaurants, les cafés, les salles de jeux et les boutiques. Il peut également être idéal comme une grande ouverture, un cadeau d anniversaire pour votre famille ou vos amis. \r\nAvec de nombreuses couleurs au choix telles que le blanc froid, le jaune, le rouge ou le bleu, cela peut convenir à n importe quel style qu un lieu peut avoir.\r\n\r\n', 26, '800.00', 1, 'rocket.png'),
(9, 'Mario Mushroom Neon LED Sign', 'Cette enseigne au néon LED Mario Mushroom serait idéale pour les restaurants, les cafés, les salles de jeux et les boutiques. Il peut également être idéal comme une grande ouverture, un cadeau d anniversaire pour votre famille ou vos amis. \r\nAvec de nombreuses couleurs au choix telles que le blanc froid, le jaune, le rouge ou le bleu, cela peut convenir à n importe quel style qu un lieu peut avoir.\r\n\r\n', 5, '950.00', 1, 'mario.png'),
(10, 'Happy Birthday neon', 'Cette enseigne au néon LED Happy Birthday serait idéale pour les restaurants, les cafés, les salles de jeux et les boutiques. Il peut également être idéal comme une grande ouverture, un cadeau d anniversaire pour votre famille ou vos amis. \r\nAvec de nombreuses couleurs au choix telles que le blanc froid, le jaune, le rouge ou le bleu, cela peut convenir à n importe quel style qu un lieu peut avoir', 20, '850.00', 2, 'birthday.png'),
(11, 'Happily Ever After', 'Cette enseigne au néon LED Happily Ever After serait idéale pour les restaurants, les cafés, les salles de jeux et les boutiques. Il peut également être idéal comme une grande ouverture, un cadeau d anniversaire pour votre famille ou vos amis. \r\nAvec de nombreuses couleurs au choix telles que le blanc froid, le jaune, le rouge ou le bleu, cela peut convenir à n importe quel style qu un lieu peut avoir.\r\n', 31, '750.00', 2, 'happily.png'),
(12, 'Mr & Mrs', 'Cette enseigne au néon LED Mr & Mrs serait idéale pour les restaurants, les cafés, les salles de jeux et les boutiques. Il peut également être idéal comme une grande ouverture, un cadeau d anniversaire pour votre famille ou vos amis. \r\nAvec de nombreuses couleurs au choix telles que le blanc froid, le jaune, le rouge ou le bleu, cela peut convenir à n importe quel style qu un lieu peut avoir.', 9, '850.00', 2, 'Mr&Mrs.png'),
(13, 'Better Together', 'Cette enseigne au néon LED Better Together serait idéale pour les restaurants, les cafés, les salles de jeux et les boutiques. Il peut également être idéal comme une grande ouverture, un cadeau d anniversaire pour votre famille ou vos amis. \r\nAvec de nombreuses couleurs au choix telles que le blanc froid, le jaune, le rouge ou le bleu, cela peut convenir à n importe quel style qu un lieu peut avoir.\r\n', 22, '600.00', 2, 'together.png'),
(14, 'Congratulations', 'Cette enseigne au néon LED Congratulations serait idéale pour les restaurants, les cafés, les salles de jeux et les boutiques. Il peut également être idéal comme une grande ouverture, un cadeau d anniversaire pour votre famille ou vos amis. \r\nAvec de nombreuses couleurs au choix telles que le blanc froid, le jaune, le rouge ou le bleu, cela peut convenir à n importe quel style qu un lieu peut avoir.\r\n', 15, '900.00', 2, 'Congratulations.png'),
(15, 'Let’s get this Party', 'Cette enseigne au néon LED Let’s get this Party serait idéale pour les restaurants, les cafés, les salles de jeux et les boutiques. Il peut également être idéal comme une grande ouverture, un cadeau d anniversaire pour votre famille ou vos amis. \r\nAvec de nombreuses couleurs au choix telles que le blanc froid, le jaune, le rouge ou le bleu, cela peut convenir à n importe quel style qu un lieu peut avoir.\r\n', 25, '750.00', 2, 'started.png'),
(16, 'Let’s party Neon Sign', 'Cette enseigne au néon LED Let’s party Neon Sign serait idéale pour les restaurants, les cafés, les salles de jeux et les boutiques. Il peut également être idéal comme une grande ouverture, un cadeau d anniversaire pour votre famille ou vos amis. \r\nAvec de nombreuses couleurs au choix telles que le blanc froid, le jaune, le rouge ou le bleu, cela peut convenir à n importe quel style qu un lieu peut avoir.\r\n', 10, '900.00', 2, 'letsparty.png'),
(18, 'Bride to be', 'Cette enseigne au néon LED Bride to be serait idéale pour les restaurants, les cafés, les salles de jeux et les boutiques. Il peut également être idéal comme une grande ouverture, un cadeau d anniversaire pour votre famille ou vos amis. \r\nAvec de nombreuses couleurs au choix telles que le blanc froid, le jaune, le rouge ou le bleu, cela peut convenir à n importe quel style qu un lieu peut avoir.\r\n', 12, '950.00', 2, 'bride.png'),
(19, '21 Neon Sign', 'Cette enseigne au néon LED 21 serait idéale pour les restaurants, les cafés, les salles de jeux et les boutiques. Il peut également être idéal comme une grande ouverture, un cadeau d anniversaire pour votre famille ou vos amis. \r\nAvec de nombreuses couleurs au choix telles que le blanc froid, le jaune, le rouge ou le bleu, cela peut convenir à n importe quel style qu un lieu peut avoir.\r\n', 18, '400.00', 2, '21.png'),
(20, 'Ice Cream Neon Sign', 'Cette enseigne au néon LED Ice Cream serait idéale pour les restaurants, les cafés, les salles de jeux et les boutiques. Il peut également être idéal comme une grande ouverture, un cadeau d anniversaire pour votre famille ou vos amis. \r\nAvec de nombreuses couleurs au choix telles que le blanc froid, le jaune, le rouge ou le bleu, cela peut convenir à n importe quel style qu un lieu peut avoir.', 17, '100.00', 3, 'icecream.png'),
(21, 'Gourmet Burgers', 'Cette enseigne au néon LED Gourmet Burgers serait idéale pour les restaurants, les cafés, les salles de jeux et les boutiques. Il peut également être idéal comme une grande ouverture, un cadeau d anniversaire pour votre famille ou vos amis. \r\nAvec de nombreuses couleurs au choix telles que le blanc froid, le jaune, le rouge ou le bleu, cela peut convenir à n importe quel style qu un lieu peut avoir.', 30, '500.00', 3, 'burgers.png'),
(22, 'Ramen Japonais Noodles ', 'Cette enseigne au néon LED Ramen Japonais Noodles  serait idéale pour les restaurants, les cafés, les salles de jeux et les boutiques. Il peut également être idéal comme une grande ouverture, un cadeau d anniversaire pour votre famille ou vos amis. \r\nAvec de nombreuses couleurs au choix telles que le blanc froid, le jaune, le rouge ou le bleu, cela peut convenir à n importe quel style qu un lieu peut avoir.', 45, '580.00', 3, 'remen.png'),
(23, 'Coffee Neon Sign', 'Cette enseigne au néon LED Coffee serait idéale pour les restaurants, les cafés, les salles de jeux et les boutiques. Il peut également être idéal comme une grande ouverture, un cadeau d anniversaire pour votre famille ou vos amis. \r\nAvec de nombreuses couleurs au choix telles que le blanc froid, le jaune, le rouge ou le bleu, cela peut convenir à n importe quel style qu un lieu peut avoir.', 34, '700.00', 3, 'coffee.png'),
(24, 'Food And Drink', 'Cette enseigne au néon LED Food And Drink serait idéale pour les restaurants, les cafés, les salles de jeux et les boutiques. Il peut également être idéal comme une grande ouverture, un cadeau d anniversaire pour votre famille ou vos amis. \r\nAvec de nombreuses couleurs au choix telles que le blanc froid, le jaune, le rouge ou le bleu, cela peut convenir à n importe quel style qu un lieu peut avoir.', 4, '800.00', 3, 'drink.png'),
(25, 'Pizza Neon Sign', 'Cette enseigne au néon LED Pizza serait idéale pour les restaurants, les cafés, les salles de jeux et les boutiques. Il peut également être idéal comme une grande ouverture, un cadeau d anniversaire pour votre famille ou vos amis. \r\nAvec de nombreuses couleurs au choix telles que le blanc froid, le jaune, le rouge ou le bleu, cela peut convenir à n importe quel style qu un lieu peut avoir.', 14, '650.00', 3, 'Pizza.png'),
(26, 'Shoes Nike Neon Sign', 'Cette enseigne au néon LED Shoes Nike serait idéale pour les restaurants, les cafés, les salles de jeux et les boutiques. Il peut également être idéal comme une grande ouverture, un cadeau d anniversaire pour votre famille ou vos amis. \r\nAvec de nombreuses couleurs au choix telles que le blanc froid, le jaune, le rouge ou le bleu, cela peut convenir à n importe quel style qu un lieu peut avoir.', 10, '850.00', 3, 'shoes.png'),
(27, 'Barber Shop', 'Cette enseigne au néon LED Barber Shop serait idéale pour les restaurants, les cafés, les salles de jeux et les boutiques. Il peut également être idéal comme une grande ouverture, un cadeau d anniversaire pour votre famille ou vos amis. \r\nAvec de nombreuses couleurs au choix telles que le blanc froid, le jaune, le rouge ou le bleu, cela peut convenir à n importe quel style qu un lieu peut avoir.', 29, '700.00', 3, 'barber.png'),
(28, 'Never Give Up', 'Cette enseigne au néon LED Never Give Up serait idéale pour les restaurants, les cafés, les salles de jeux et les boutiques. Il peut également être idéal comme une grande ouverture, un cadeau d anniversaire pour votre famille ou vos amis. \r\nAvec de nombreuses couleurs au choix telles que le blanc froid, le jaune, le rouge ou le bleu, cela peut convenir à n importe quel style qu un lieu peut avoir.', 10, '800.00', 3, 'gym.png'),
(29, 'Youre like really pretty', 'Cette enseigne au néon LED Youre like really pretty serait idéale pour les restaurants, les cafés, les salles de jeux et les boutiques. Il peut également être idéal comme une grande ouverture, un cadeau d anniversaire pour votre famille ou vos amis.Avec de nombreuses couleurs au choix telles que le blanc froid, le jaune, le rouge ou le bleu, cela peut convenir à n importe quel style qu un lieu peut avoir.', 29, '700.00', 4, 'pretty.png'),
(30, 'Create Your Own Reality', 'Cette enseigne au néon LED Create Your Own Reality serait idéale pour les restaurants, les cafés, les salles de jeux et les boutiques. Il peut également être idéal comme une grande ouverture, un cadeau d anniversaire pour votre famille ou vos amis.Avec de nombreuses couleurs au choix telles que le blanc froid, le jaune, le rouge ou le bleu, cela peut convenir à n importe quel style qu un lieu peut avoir.', 9, '900.00', 4, 'reality.png'),
(31, 'Dont grow up', 'Cette enseigne au néon LED Dont grow up serait idéale pour les restaurants, les cafés, les salles de jeux et les boutiques. Il peut également être idéal comme une grande ouverture, un cadeau d anniversaire pour votre famille ou vos amis.Avec de nombreuses couleurs au choix telles que le blanc froid, le jaune, le rouge ou le bleu, cela peut convenir à n importe quel style qu un lieu peut avoir.', 19, '850.00', 4, 'grow.png'),
(32, 'Good Vibes Only', 'Cette enseigne au néon LED Good Vibes Only serait idéale pour les restaurants, les cafés, les salles de jeux et les boutiques. Il peut également être idéal comme une grande ouverture, un cadeau d anniversaire pour votre famille ou vos amis.Avec de nombreuses couleurs au choix telles que le blanc froid, le jaune, le rouge ou le bleu, cela peut convenir à n importe quel style qu un lieu peut avoir.', 8, '600.00', 4, 'vibes.png'),
(33, 'You Cant Sit With Us', 'Cette enseigne au néon LED You Cant Sit With Us serait idéale pour les restaurants, les cafés, les salles de jeux et les boutiques. Il peut également être idéal comme une grande ouverture, un cadeau d anniversaire pour votre famille ou vos amis.Avec de nombreuses couleurs au choix telles que le blanc froid, le jaune, le rouge ou le bleu, cela peut convenir à n importe quel style qu un lieu peut avoir.', 37, '900.00', 4, 'sit.png'),
(34, 'Trust The Process', 'Cette enseigne au néon LED Trust The Process serait idéale pour les restaurants, les cafés, les salles de jeux et les boutiques. Il peut également être idéal comme une grande ouverture, un cadeau d anniversaire pour votre famille ou vos amis.Avec de nombreuses couleurs au choix telles que le blanc froid, le jaune, le rouge ou le bleu, cela peut convenir à n importe quel style qu un lieu peut avoir.', 10, '850.00', 4, 'trust.png'),
(35, 'The Word Is Yours', 'Cette enseigne au néon LED The Word Is Yours serait idéale pour les restaurants, les cafés, les salles de jeux et les boutiques. Il peut également être idéal comme une grande ouverture, un cadeau d anniversaire pour votre famille ou vos amis.Avec de nombreuses couleurs au choix telles que le blanc froid, le jaune, le rouge ou le bleu, cela peut convenir à n importe quel style qu un lieu peut avoir.', 18, '1000.00', 4, 'word.png'),
(36, 'This Must Be The Place', 'Cette enseigne au néon LED This Must Be The Place serait idéale pour les restaurants, les cafés, les salles de jeux et les boutiques. Il peut également être idéal comme une grande ouverture, un cadeau d anniversaire pour votre famille ou vos amis.Avec de nombreuses couleurs au choix telles que le blanc froid, le jaune, le rouge ou le bleu, cela peut convenir à n importe quel style qu un lieu peut avoir.', 1, '500.00', 4, 'place.png'),
(37, 'The Future Is Yours', 'Cette enseigne au néon LED The Future Is Yours serait idéale pour les restaurants, les cafés, les salles de jeux et les boutiques. Il peut également être idéal comme une grande ouverture, un cadeau d anniversaire pour votre famille ou vos amis.Avec de nombreuses couleurs au choix telles que le blanc froid, le jaune, le rouge ou le bleu, cela peut convenir à n importe quel style qu un lieu peut avoir.', 9, '700.00', 4, 'future.png');

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
  `Id_commande` int(5) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

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
  ADD PRIMARY KEY (`Id_commande`),
  ADD KEY `Id_client` (`Id_client`);

--
-- Index pour la table `detail_commande`
--
ALTER TABLE `detail_commande`
  ADD PRIMARY KEY (`Id_commande`,`Id_produit`),
  ADD KEY `Id_produit` (`Id_produit`);

--
-- Index pour la table `produit`
--
ALTER TABLE `produit`
  ADD PRIMARY KEY (`Id_produit`),
  ADD KEY `Id_Catégorie` (`Id_Catégorie`);

--
-- Index pour la table `produit_per`
--
ALTER TABLE `produit_per`
  ADD PRIMARY KEY (`Id_ProduitPer`),
  ADD KEY `Id_commande` (`Id_commande`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `catégorie`
--
ALTER TABLE `catégorie`
  MODIFY `Id_Catégorie` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT pour la table `client`
--
ALTER TABLE `client`
  MODIFY `Id_client` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT pour la table `commande`
--
ALTER TABLE `commande`
  MODIFY `Id_commande` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT pour la table `produit`
--
ALTER TABLE `produit`
  MODIFY `Id_produit` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

--
-- AUTO_INCREMENT pour la table `produit_per`
--
ALTER TABLE `produit_per`
  MODIFY `Id_ProduitPer` int(5) NOT NULL AUTO_INCREMENT;

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
  ADD CONSTRAINT `detail_commande_ibfk_1` FOREIGN KEY (`Id_commande`) REFERENCES `commande` (`Id_commande`),
  ADD CONSTRAINT `detail_commande_ibfk_2` FOREIGN KEY (`Id_produit`) REFERENCES `produit` (`Id_produit`);

--
-- Contraintes pour la table `produit`
--
ALTER TABLE `produit`
  ADD CONSTRAINT `produit_ibfk_1` FOREIGN KEY (`Id_Catégorie`) REFERENCES `catégorie` (`Id_Catégorie`);

--
-- Contraintes pour la table `produit_per`
--
ALTER TABLE `produit_per`
  ADD CONSTRAINT `produit_per_ibfk_1` FOREIGN KEY (`Id_commande`) REFERENCES `commande` (`Id_commande`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
