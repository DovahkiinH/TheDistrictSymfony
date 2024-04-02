-- phpMyAdmin SQL Dump
-- version 5.1.1deb5ubuntu1
-- https://www.phpmyadmin.net/
--
-- Hôte : localhost:3306
-- Généré le : mar. 02 avr. 2024 à 15:36
-- Version du serveur : 10.6.16-MariaDB-0ubuntu0.22.04.1
-- Version de PHP : 8.1.2-1ubuntu2.14

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `TheDistrictSymfony`
--

-- --------------------------------------------------------

--
-- Structure de la table `categorie`
--

CREATE TABLE `categorie` (
  `id` int(11) NOT NULL,
  `libelle` varchar(50) NOT NULL,
  `image` varchar(50) NOT NULL,
  `active` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `categorie`
--

INSERT INTO `categorie` (`id`, `libelle`, `image`, `active`) VALUES
(1, 'Entrée', 'Entree_cat.jpg', 1),
(2, 'Desserts', 'Desserts_cat.jpg', 1),
(3, 'Boissons', 'Boissons_cat.jpg', 1),
(4, 'Pizza', 'pizza_cat.jpg', 1),
(5, 'Burger', 'burger_cat.jpg', 1),
(9, 'Wraps', 'wrap_cat.jpg', 1),
(10, 'Pasta', 'pasta_cat.jpg', 1),
(11, 'Sandwich', 'sandwich_cat.jpg', 1),
(12, 'Asian Food', 'asian_food_cat.jpg', 0),
(13, 'Salade', 'salade_cat.jpg', 1),
(14, 'Veggie', 'veggie_cat.jpg', 1);

-- --------------------------------------------------------

--
-- Structure de la table `commande`
--

CREATE TABLE `commande` (
  `id` int(11) NOT NULL,
  `total` decimal(6,2) NOT NULL,
  `date_commande` date NOT NULL,
  `etat` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `commande`
--

INSERT INTO `commande` (`id`, `total`, `date_commande`, `etat`, `user_id`) VALUES
(2, '16.00', '2020-11-30', 3, NULL),
(3, '20.00', '2020-11-30', 3, NULL),
(4, '10.00', '2021-05-04', 3, NULL),
(6, '7.00', '2021-07-20', 3, NULL),
(7, '8.00', '2021-07-20', 2, NULL),
(8, '6.00', '2021-07-20', 1, NULL),
(9, '20.00', '2021-07-20', 3, NULL),
(10, '12.00', '2021-07-20', 3, NULL),
(11, '8.00', '2024-03-29', 0, 1),
(12, '8.00', '2024-03-29', 0, 1),
(13, '8.00', '2024-04-02', 0, 1),
(14, '8.00', '2024-04-02', 0, 1),
(15, '8.00', '2024-04-02', 0, 1),
(16, '8.00', '2024-04-02', 0, 1),
(17, '8.00', '2024-04-02', 0, 1),
(18, '8.00', '2024-04-02', 0, 1),
(19, '8.00', '2024-04-02', 0, 1),
(20, '8.00', '2024-04-02', 0, 1),
(21, '8.00', '2024-04-02', 0, 1),
(22, '8.00', '2024-04-02', 0, 1),
(23, '8.00', '2024-04-02', 0, 1),
(24, '8.00', '2024-04-02', 0, 1),
(25, '8.00', '2024-04-02', 0, 1),
(26, '8.00', '2024-04-02', 0, 1),
(27, '8.00', '2024-04-02', 0, 1),
(28, '8.00', '2024-04-02', 0, 1),
(29, '8.00', '2024-04-02', 0, 1),
(30, '8.00', '2024-04-02', 0, 1),
(31, '8.00', '2024-04-02', 0, 1),
(32, '8.00', '2024-04-02', 0, 1),
(33, '8.00', '2024-04-02', 0, 1),
(34, '8.00', '2024-04-02', 0, 1),
(35, '8.00', '2024-04-02', 0, 1),
(36, '8.00', '2024-04-02', 0, 1),
(37, '8.00', '2024-04-02', 0, 1),
(38, '8.00', '2024-04-02', 0, 1),
(39, '8.00', '2024-04-02', 0, 1),
(40, '8.00', '2024-04-02', 0, 1),
(41, '8.00', '2024-04-02', 0, 1),
(42, '8.00', '2024-04-02', 0, 1),
(43, '8.00', '2024-04-02', 0, 1),
(44, '8.00', '2024-04-02', 0, 1),
(45, '8.00', '2024-04-02', 0, 1);

-- --------------------------------------------------------

--
-- Structure de la table `contact`
--

CREATE TABLE `contact` (
  `id` int(11) NOT NULL,
  `nom` varchar(255) NOT NULL,
  `prenom` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `telephone` varchar(20) NOT NULL,
  `demande` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `detail`
--

CREATE TABLE `detail` (
  `id` int(11) NOT NULL,
  `quantite` int(11) NOT NULL,
  `commande_id` int(11) DEFAULT NULL,
  `plat_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `detail`
--

INSERT INTO `detail` (`id`, `quantite`, `commande_id`, `plat_id`) VALUES
(2, 4, 2, 4),
(3, 2, 3, 5),
(4, 1, 4, 5),
(6, 1, 6, 9),
(7, 2, 7, 10),
(8, 1, 8, 14),
(9, 4, 9, 9),
(10, 4, 10, 16),
(11, 1, 11, 4),
(12, 1, 12, 4),
(13, 1, 13, 4),
(14, 1, 14, 4),
(15, 1, 15, 4),
(16, 1, 16, 4),
(17, 1, 17, 4),
(18, 1, 18, 4),
(19, 1, 19, 4),
(20, 1, 20, 4),
(21, 1, 21, 4),
(22, 1, 22, 4),
(23, 1, 23, 4),
(24, 1, 24, 4),
(25, 1, 25, 4),
(26, 1, 26, 4),
(27, 1, 27, 4),
(28, 1, 28, 4),
(29, 1, 29, 4),
(30, 1, 30, 4),
(31, 1, 31, 4),
(32, 1, 32, 4),
(33, 1, 33, 4),
(34, 1, 34, 4),
(35, 1, 35, 4),
(36, 1, 36, 4),
(37, 1, 37, 4),
(38, 1, 38, 4),
(39, 1, 39, 4),
(40, 1, 40, 4),
(41, 1, 41, 4),
(42, 1, 42, 4),
(43, 1, 43, 4),
(44, 1, 44, 4),
(45, 1, 45, 4);

-- --------------------------------------------------------

--
-- Structure de la table `doctrine_migration_versions`
--

CREATE TABLE `doctrine_migration_versions` (
  `version` varchar(191) NOT NULL,
  `executed_at` datetime DEFAULT NULL,
  `execution_time` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

--
-- Déchargement des données de la table `doctrine_migration_versions`
--

INSERT INTO `doctrine_migration_versions` (`version`, `executed_at`, `execution_time`) VALUES
('DoctrineMigrations\\Version20240328153143', '2024-03-28 16:32:19', 6);

-- --------------------------------------------------------

--
-- Structure de la table `messenger_messages`
--

CREATE TABLE `messenger_messages` (
  `id` bigint(20) NOT NULL,
  `body` longtext NOT NULL,
  `headers` longtext NOT NULL,
  `queue_name` varchar(190) NOT NULL,
  `created_at` datetime NOT NULL COMMENT '(DC2Type:datetime_immutable)',
  `available_at` datetime NOT NULL COMMENT '(DC2Type:datetime_immutable)',
  `delivered_at` datetime DEFAULT NULL COMMENT '(DC2Type:datetime_immutable)'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `plat`
--

CREATE TABLE `plat` (
  `id` int(11) NOT NULL,
  `libelle` varchar(50) NOT NULL,
  `description` longtext NOT NULL,
  `prix` decimal(6,2) NOT NULL,
  `image` varchar(50) NOT NULL,
  `active` tinyint(1) NOT NULL,
  `categorie_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `plat`
--

INSERT INTO `plat` (`id`, `libelle`, `description`, `prix`, `image`, `active`, `categorie_id`) VALUES
(1, 'Soupe à l\'Oignon Gratinée', 'Une soupe française traditionnelle préparée à base d\'oignons caramélisés, de bouillon de bœuf, de vin blanc et d\'herbes, garnie de croûtons de pain grillés et de fromage gratiné.', '5.00', 'SoupeOignon.jpeg', 1, 1),
(2, 'Bruschetta', 'Une entrée italienne classique composée de tranches de pain grillées frottées à l\'ail et garnies de tomates fraîches coupées en dés, de basilic frais, d\'huile d\'olive et de sel.', '6.00', 'Bruschetta.jpg', 1, 1),
(3, 'Hummus et Pita', 'Un plat d\'entrée populaire dans de nombreuses cuisines du Moyen-Orient et de la Méditerranée, consistant en une purée crémeuse de pois chiches, de tahini (pâte de sésame), d\'ail, de jus de citron et d\'huile d\'olive, servi avec des pains pita chauds et moelleux pour tremper.', '4.00', 'Hummus.jpg', 1, 1),
(4, 'District Burger', 'Burger composé d’un bun’s du boulanger, deux steaks de 80g (origine française), de deux tranches poitrine de porc fumée, de deux tranches cheddar affiné, salade et oignons confits. .', '8.00', 'hamburger.jpg', 1, 5),
(5, 'Pizza Bianca', 'Une pizza fine et croustillante garnie de crème mascarpone légèrement citronnée et de tranches de saumon fumé, le tout relevé de baies roses et de basilic frais.', '14.00', 'pizza-salmon.png', 1, 4),
(6, 'Flan', 'Un dessert français traditionnel, le flan pâtissier est un gâteau composé d\'une pâte brisée ou feuilletée recouverte d\'une crème à base d\'œufs, de lait, de sucre, de farine et d\'extrait de vanille. Contrairement au flan traditionnel, le flan pâtissier est cuit au four jusqu\'à ce que la garniture se solidifie pour former une texture ferme et crémeuse.', '3.50', 'Flan.jpg', 1, 2),
(7, 'Brownie', 'Un délicieux dessert américain connu pour sa texture dense et moelleuse, ainsi que son intense saveur de chocolat. Le brownie est préparé en mélangeant du chocolat fondu avec du beurre, du sucre, des œufs, de la farine et parfois des noix ou des pépites de chocolat, puis en cuisant le mélange dans un moule carré jusqu\'à ce qu\'il soit légèrement croquant à l\'extérieur mais encore humide à l\'intérieur.', '4.50', 'Brownie.jpg', 1, 2),
(8, 'Mille-Feuille', 'Un dessert emblématique de la pâtisserie française, le mille-feuille, également connu sous le nom de Napoleon, est composé de fines couches de pâte feuilletée croustillante alternant avec des couches de crème pâtissière légère et parfumée à la vanille. Le dessus du mille-feuille est souvent décoré de glaçage royal ou de sucre glace, créant une présentation élégante et raffinée.', '4.50', 'MilleFeuille.webp', 1, 2),
(9, 'Buffalo Chicken Wrap', 'Du bon filet de poulet mariné dans notre spécialité sucrée & épicée, enveloppé dans une tortilla blanche douce faite maison.', '5.00', 'buffalo-chicken.webp', 1, 9),
(10, 'Cheeseburger', 'Burger composé d’un bun’s du boulanger, de salade, oignons rouges, pickles, oignon confit, tomate, d’un steak d’origine Française, d’une tranche de cheddar affiné, et de notre sauce maison.', '8.00', 'cheesburger.jpg', 1, 5),
(11, 'Ice Tea', 'Rafraîchissant et désaltérant, cet élixir glacé allie la fraîcheur du thé infusé aux notes subtiles de citron, offrant une expérience rafraîchissante inégalée.', '1.50', 'ice-tea.jpg', 1, 3),
(12, 'Spaghetti aux légumes', 'Un plat de spaghetti au pesto de basilic et légumes poêlés, très parfumé et rapide', '10.00', 'spaghetti-legumes.jpg', 1, 10),
(13, 'Salade César', 'Une délicieuse salade Caesar (César) composée de filets de poulet grillés, de feuilles croquantes de salade romaine, de croutons à l\'ail, de tomates cerise et surtout de sa fameuse sauce Caesar. Le tout agrémenté de copeaux de parmesan.', '7.00', 'cesar_salad.jpg', 1, 13),
(14, 'Pizza Margherita', 'Une authentique pizza margarita, un classique de la cuisine italienne! Une pâte faite maison, une sauce tomate fraîche, de la mozzarella Fior di latte, du basilic, origan, ail, sucre, sel & poivre...', '14.00', 'pizza-margherita.jpg', 1, 4),
(15, 'Courgettes farcies', 'Voici une recette équilibrée à base de courgettes, quinoa et champignons, 100% vegan et sans gluten!', '8.00', 'courgettes_farcies.jpg', 1, 14),
(16, 'Lasagnes', 'Découvrez notre recette des lasagnes, l\'une des spécialités italiennes que tout le monde aime avec sa viande hachée et gratinée à l\'emmental. Et bien sûr, une inoubliable béchamel à la noix de muscade.\n\n', '12.00', 'lasagnes_viande.jpg\n', 1, 10),
(17, 'Tagliatelles au saumon', 'Découvrez notre recette délicieuse de tagliatelles au saumon frais et à la crème qui qui vous assure un véritable régal!  \n\n', '12.00', 'tagliatelles_saumon.webp\n', 1, 10),
(18, 'Coca-Cola', 'Une boisson pétillante et rafraîchissante, symbole de convivialité, offrant une explosion de saveurs sucrées et acidulées qui éveillent les papilles à chaque gorgée.', '1.50', 'coca.jpeg', 1, 3);

-- --------------------------------------------------------

--
-- Structure de la table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `email` varchar(180) NOT NULL,
  `roles` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL COMMENT '(DC2Type:json)' CHECK (json_valid(`roles`)),
  `password` varchar(255) NOT NULL,
  `nom` varchar(50) NOT NULL,
  `prenom` varchar(50) NOT NULL,
  `telephone` varchar(20) NOT NULL,
  `adresse` varchar(50) NOT NULL,
  `cp` varchar(20) NOT NULL,
  `ville` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `user`
--

INSERT INTO `user` (`id`, `email`, `roles`, `password`, `nom`, `prenom`, `telephone`, `adresse`, `cp`, `ville`) VALUES
(1, 'Loick.caplier@gmail.com', '[\"ROLE_ADMIN\"]', '$2y$13$BayD3TY9wgOXdlMXOgvrYeUbLR.zsoNf.TPJN5qOsPd28sWrT6kHW', 'Caplier', 'Loick', '0635592991', '66 bis rue ambroise croizat', '80610', 'st ouen'),
(2, 'Sacquet@gmail.com', '[\"ROLE_USER\"]', '$2y$13$h10ApkjJNJbCoEMZ3l6we.3QzULQYcOO97.rG837wZdafmbmjsZGq', 'Sacquet', 'Bilbon', '0651114406', '330 avenue de la comtée', '80000', 'Amiens');

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `categorie`
--
ALTER TABLE `categorie`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `commande`
--
ALTER TABLE `commande`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_6EEAA67DA76ED395` (`user_id`);

--
-- Index pour la table `contact`
--
ALTER TABLE `contact`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `detail`
--
ALTER TABLE `detail`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_2E067F9382EA2E54` (`commande_id`),
  ADD KEY `IDX_2E067F93D73DB560` (`plat_id`);

--
-- Index pour la table `doctrine_migration_versions`
--
ALTER TABLE `doctrine_migration_versions`
  ADD PRIMARY KEY (`version`);

--
-- Index pour la table `messenger_messages`
--
ALTER TABLE `messenger_messages`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_75EA56E0FB7336F0` (`queue_name`),
  ADD KEY `IDX_75EA56E0E3BD61CE` (`available_at`),
  ADD KEY `IDX_75EA56E016BA31DB` (`delivered_at`);

--
-- Index pour la table `plat`
--
ALTER TABLE `plat`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_2038A207BCF5E72D` (`categorie_id`);

--
-- Index pour la table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UNIQ_IDENTIFIER_EMAIL` (`email`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `categorie`
--
ALTER TABLE `categorie`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT pour la table `commande`
--
ALTER TABLE `commande`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=46;

--
-- AUTO_INCREMENT pour la table `contact`
--
ALTER TABLE `contact`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `detail`
--
ALTER TABLE `detail`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=46;

--
-- AUTO_INCREMENT pour la table `messenger_messages`
--
ALTER TABLE `messenger_messages`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `plat`
--
ALTER TABLE `plat`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT pour la table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `commande`
--
ALTER TABLE `commande`
  ADD CONSTRAINT `FK_6EEAA67DA76ED395` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`);

--
-- Contraintes pour la table `detail`
--
ALTER TABLE `detail`
  ADD CONSTRAINT `FK_2E067F9382EA2E54` FOREIGN KEY (`commande_id`) REFERENCES `commande` (`id`),
  ADD CONSTRAINT `FK_2E067F93D73DB560` FOREIGN KEY (`plat_id`) REFERENCES `plat` (`id`);

--
-- Contraintes pour la table `plat`
--
ALTER TABLE `plat`
  ADD CONSTRAINT `FK_2038A207BCF5E72D` FOREIGN KEY (`categorie_id`) REFERENCES `categorie` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
